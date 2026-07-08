#!/usr/bin/env python3

# Change the number at the end of COLLECTION_URL (line 20) to get another collection

import os
import re
import sys
import logging
import requests
from bs4 import BeautifulSoup

# Setup logging
logging.basicConfig(level=logging.INFO, format='%(asctime)s - %(levelname)s - %(message)s')
error_logger = logging.getLogger("errors")
error_file_handler = logging.FileHandler("multiple_locus_tags_errors.log")
error_file_handler.setFormatter(logging.Formatter('%(message)s'))
error_logger.addHandler(error_file_handler)

BASE_URL = "https://regprecise.lbl.gov/"
COLLECTION_URL = "https://regprecise.lbl.gov/propagated_collection.jsp?pg_collection_id=1"

def get_uniprot_fasta(locus_tag):
    """
    Attempts to fetch protein FASTA sequence using the locus tag from UniProt.
    Falls back to UniParc search if direct query doesn't yield an exact match.
    """
    # 1. Try UniProt search
    uniprot_search_url = "https://rest.uniprot.org/uniprotkb/search"
    params = {"query": f"gene:{locus_tag}", "format": "json"}
    
    try:
        response = requests.get(uniprot_search_url, params=params, timeout=15)
        if response.status_code == 200:
            data = response.json()
            if data.get("results"):
                entry = data["results"][0]
                uniprot_id = entry["primaryAccession"]
                sequence = entry["sequence"]["value"]
                return uniprot_id, sequence
    except Exception as e:
        logging.warning(f"UniProt KB query failed for {locus_tag}: {e}")

    # 2. Fallback to UniParc search
    logging.info(f"Locus tag {locus_tag} not found in UniProt KB. Trying UniParc fallback...")
    uniparc_search_url = "https://rest.uniprot.org/uniparc/search"
    params = {"query": locus_tag, "format": "json"}
    try:
        response = requests.get(uniparc_search_url, params=params, timeout=15)
        if response.status_code == 200:
            data = response.json()
            if data.get("results"):
                entry = data["results"][0]
                uniparc_id = entry["uniParcId"]
                sequence = entry["sequence"]["value"]
                return uniparc_id, sequence
    except Exception as e:
        logging.error(f"UniParc query failed for {locus_tag}: {e}")

    return None, None

def parse_propagated_regulon(regulon_url):
    """Parses a specific propagated regulon page."""
    logging.info(f"Parsing page: {regulon_url}")
    try:
        res = requests.get(regulon_url, timeout=15)
        if res.status_code != 200:
            logging.error(f"Failed to fetch {regulon_url}")
            return
    except Exception as e:
        logging.error(f"Error fetching {regulon_url}: {e}")
        return

    soup = BeautifulSoup(res.text, 'html.parser')

    # Extract Regulon ID from the end of the URL
    regulon_id_match = re.search(r'pg_regulon_id=(\d+)', regulon_url)
    regulon_id_str = f"regulon_id={regulon_id_match.group(1)}" if regulon_id_match else ""

    # Extract Orthologous TF(s), Target Genome, Regulator Family, and Regulog Name
    locus_tags = []
    target_genome = ""
    regulator_family = ""
    regulog_name = ""

    for tr in soup.find_all("tr"):
        text = tr.get_text()
        if "Orthologous TF(s)" in text:
            tds = tr.find_all("td")
            if len(tds) >= 2:
                tf_text = tds[1].get_text(strip=True)
                locus_tags = [tag.strip() for tag in re.split(r'[\s,]+', tf_text) if tag.strip()]
        elif "Target genome" in text:
            tds = tr.find_all("td")
            if len(tds) >= 2:
                target_genome = tds[1].get_text(strip=True)
        elif "Regulator family" in text:
            tds = tr.find_all("td")
            if len(tds) >= 2:
                regulator_family = tds[1].get_text(strip=True)
        elif "Source regulog:" in text:
            tds = tr.find_all("td")
            if len(tds) >= 2:
                a_tag = tds[1].find("a")
                if a_tag:
                    full_anchor = a_tag.get_text(strip=True)
                    # Split on the first dash and take everything to the left
                    if "-" in full_anchor:
                        regulog_name = full_anchor.split("-")[0].strip()
                    else:
                        regulog_name = full_anchor

    if not locus_tags:
        logging.warning(f"No locus tag found on page: {regulon_url}")
        return

    # Format strain name for path creation
    clean_genome_name = target_genome.lstrip('*').strip().replace(" ", "_")
    
    # Check if there are multiple TFs or a single TF
    is_multiple = len(locus_tags) > 1
    
    # Folder Name & Parent Directory Assembly
    locus_folder_part = "_".join(locus_tags)
    base_folder_name = f"{locus_folder_part}_{clean_genome_name}"
    
    if is_multiple:
        folder_name = os.path.join("MultipleTFs", base_folder_name)
    else:
        folder_name = base_folder_name

    # Fetch and prepare transcription factor(s) amino acid sequences
    tf_sequences_to_write = []
    for tag in locus_tags:
        uniprot_id, tf_sequence = get_uniprot_fasta(tag)
        if not tf_sequence:
            logging.error(f"Could not retrieve amino acid sequence for {tag} from UniProt/UniParc on page {regulon_url}")
            continue
        tf_sequences_to_write.append((tag, uniprot_id, tf_sequence))

    # If we couldn't fetch any sequences for the transcription factors, skip generation
    if not tf_sequences_to_write:
        return

    # Process individual Operator Sequences blocks
    dna_records = []
    target_table = soup.find("table", id="operontbl")

    if target_table:
        rows = target_table.find_all("tr")
        looking_for_topmost = True
        
        for row in rows:
            row_text = row.get_text()
            
            sep_td = row.find("td", attrs={"colspan": "5"})
            if sep_td and sep_td.get('style') and 'border-bottom' in sep_td.get('style') and '#AAA' in sep_td.get('style'):
                looking_for_topmost = True
                continue
                
            if "Supported by regulated orthologs from reference regulons" in row_text:
                looking_for_topmost = False
                continue

            if looking_for_topmost:
                tds = row.find_all("td")
                
                if len(tds) == 5:
                    first_cell = tds[0].get_text(strip=True)
                    
                    if first_cell == "":
                        a_tag = tds[1].find("a")
                        locus = a_tag.get_text(strip=True) if a_tag else tds[1].get_text(strip=True)
                        
                        position = tds[2].get_text(strip=True)
                        score = tds[3].get_text(strip=True)
                        sequence = tds[4].get_text(strip=True)
                        
                        if locus and sequence and "Locus tag" not in row_text and "Position" not in locus:
                            # Expand variable spacer lengths like -(11)- into Ns
                            expanded_seq = re.sub(r'-\((\d+)\)-', lambda m: 'N' * int(m.group(1)), sequence)
                            clean_seq = expanded_seq.replace('-', '').replace('(', '').replace(')', '')
                            
                            if clean_seq.isalpha() and len(clean_seq) > 4:
                                dna_records.append({
                                    "locus": locus,
                                    "position": position,
                                    "score": score,
                                    "sequence": expanded_seq.upper()
                                })
                                looking_for_topmost = False 

    # Create directories
    os.makedirs(folder_name, exist_ok=True)

    # 1) Write aa.fa
    with open(os.path.join(folder_name, "aa.fa"), "w") as aa_file:
        for tag, up_id, seq in tf_sequences_to_write:
            header_parts = [f">{tag}", up_id, target_genome]
            if regulator_family:
                header_parts.append(f"RegulatorFamily={regulator_family}")
            if regulog_name:
                header_parts.append(f"RegulogName={regulog_name}")
            if regulon_id_str:
                header_parts.append(regulon_id_str)
                
            header_line = " ".join(header_parts)
            aa_file.write(header_line + "\n")
            
            for i in range(0, len(seq), 60):
                aa_file.write(seq[i:i+60] + "\n")

    # 2) Write dna.fa
    if dna_records:
        with open(os.path.join(folder_name, "dna.fa"), "w") as dna_file:
            for rec in dna_records:
                dna_file.write(f">{rec['locus']}\tPosition={rec['position']}\tScore={rec['score']}\n")
                dna_file.write(f"{rec['sequence']}\n")
        logging.info(f"Successfully processed and saved files into folder: {folder_name}")
    else:
        logging.warning(f"No operator sequences captured for folder: {folder_name}")

def main():
    logging.info(f"Fetching links from collection: {COLLECTION_URL}")
    try:
        res = requests.get(COLLECTION_URL, timeout=15)
        if res.status_code != 200:
            logging.critical("Could not load collection home page.")
            return
    except Exception as e:
        logging.critical(f"Connection error: {e}")
        return

    soup = BeautifulSoup(res.text, 'html.parser')
    
    # Extract links targeting propagated_regulon.jsp
    regulon_links = []
    for a in soup.find_all('a', href=True):
        href = a['href']
        if "propagated_regulon.jsp?pg_regulon_id=" in href:
            full_link = href if href.startswith("http") else BASE_URL + href
            if full_link not in regulon_links:
                regulon_links.append(full_link)

    logging.info(f"Found {len(regulon_links)} unique propagated regulon links.")

    # Iterate and extract each regulon page
    for link in regulon_links:
        parse_propagated_regulon(link)

if __name__ == "__main__":
    main()