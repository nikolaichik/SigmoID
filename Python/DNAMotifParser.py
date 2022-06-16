import requests
from requests.adapters import HTTPAdapter
from urllib3.util import Retry
from Bio import SeqIO
from Bio.Seq import Seq
from subprocess import Popen, PIPE
import re
import wget
import pathlib


### The only input part
### Defining what sigma factor will be researched
sigma = 'RpoE'


def make_labels_for_ncbi_from_hmmer():
    ### Read download.fa file
    ### Extract uniprot_labels
    ### Convert empl labels to ncbi ones
    ### Build list of lists by 30 for requests
    with open('download.fa', 'r') as download_fa, open('proteins.fa', 'w') as output_prots:
        strings = download_fa.read().splitlines()
        ncbi, list_of_ids, prot_ids, processed = [], [], [], []
        for string in strings:
            if string.startswith('>') and '/' in string:
                prot_ids.append(string[1:string.find('/')])
            elif string.startswith('>') and '/' not in string:
                prot_ids.append(string[1:])
            elif len(prot_ids) >= 20:
                list_of_ids.append(prot_ids)
                prot_ids = []
        list_of_ids.append(prot_ids)

        ### Convert labels from Uniprot to NCBI
        ### Build uniprot - embl dictionary
        for ids in list_of_ids:
            session = requests.Session()
            retry = Retry(connect=3, backoff_factor=0.5)
            adapter = HTTPAdapter(max_retries=retry)
            session.mount('http://', adapter)
            session.mount('https://', adapter)
            id_converter = session.get(
                f"https://www.uniprot.org/uploadlists/?"
                f"&from=ACC&to=EMBL&format=tab&api_key=61157ac71c9c7b906c4a42b238d29992a008&query={','.join(ids)}")
            raw_ids = id_converter.text.splitlines()
            # Save response
            for id in raw_ids[1:]:
                print(id)
                uniprot, embl = id.split('\t')
                if uniprot not in processed:
                    ncbi.append(embl)
                    processed.append(uniprot)

        ### Write new proteins file, where would be only converted proteins
        for string in strings:
            if string.startswith('>') and '/' in string:
                if string[1:string.find('/')] in processed:
                    output_prots.write(f'>{string[1:string.find("/")]}\n')
                    write_prot = True
                else:
                    write_prot = False
            elif string.startswith('>') and '/' not in string:
                if string[1:] in processed:
                    output_prots.write(f'>{string[1:]}\n')
                    write_prot = True
                else:
                    write_prot = False
            else:
                if write_prot:
                    output_prots.write(f'{string}\n')

    return ncbi, processed


def download_ncbi_proteins(ncbi_labels):
    ### Download .gbk files about proteins
    with open('gb_prot.gbk', 'w') as pos_file, open('proteins.fa', 'r') as input_prot, open('proteins_2.fa', 'w') as output_prot:
        gbk_protein, proteins_delete, processed = [], [], []
        for idx, label in enumerate(ncbi_labels):
            session = requests.Session()
            retry = Retry(connect=3, backoff_factor=0.5)
            adapter = HTTPAdapter(max_retries=retry)
            session.mount('http://', adapter)
            session.mount('https://', adapter)
            final_position = session.get(
                f"https://eutils.ncbi.nlm.nih.gov/entrez/eutils/"
                f"efetch.fcgi?db=protein&rettype=gp&retmode=text&id={label}&api_key=61157ac71c9c7b906c4a42b238d29992a008")
            if '{' in final_position.text:
                proteins_delete.append(int(idx))
            gbk_protein.append(final_position.text)
            print(final_position.text)
        # Write gbk in file
        pos_file.write('\n'.join(gbk_protein))

        ### Process proteins file
        input_lines = input_prot.read().splitlines()
        id = 0
        for line in input_lines:
            if line.startswith('>'):
                if id in proteins_delete:
                    write_prot = False
                else:
                    output_prot.write(f'>{line[1:]}\n')
                    write_prot = True
                    processed.append(line[1:])
                id += 1
            else:
                if write_prot:
                    output_prot.write(f'{line}\n')

    return processed


def find_places():
    ### Extract information about place in genome of this protein
    with open('gb_prot.gbk', 'r') as handle:
        places = []
        seq_records = SeqIO.parse(handle, 'genbank')
        for record in seq_records.records:
            for feature in record.features:
                if feature.type == 'CDS':
                    places.append(feature.qualifiers['coded_by'][0])
    return places


def parce_dna(places, protein_labels):
    genomes_list, proteins_delete = [], []
    dictionary = {}
    ### Parsing id, start and end from place information
    for idx, place in enumerate(places):
        EntryID, coordinates = place.split(':')
        id = EntryID.replace('complement(', '')
        entryStart, entryEnd = coordinates.split('..')
        start = entryStart
        end = entryEnd
        if ')' in entryEnd:
            end = entryEnd.replace(')', '')

        ### Making dictionary of labels
        print(protein_labels[idx], id)
        dictionary[protein_labels[idx]] = id

        ### Request fasta dna sequence from NCBI
        session = requests.Session()
        retry = Retry(connect=3, backoff_factor=0.5)
        adapter = HTTPAdapter(max_retries=retry)
        session.mount('http://', adapter)
        session.mount('https://', adapter)
        dna = session.get(
            f'https://eutils.ncbi.nlm.nih.gov/entrez/eutils/efetch.fcgi?db=nuccore&id=+{id}+&rettype=fasta&retmode=text&api_key=61157ac71c9c7b906c4a42b238d29992a008&seq_start=+Str({start})+"&seq_stop="+Str({end})+DevInfo')
        if '{' in dna.text:
            proteins_delete.append(int(idx))
        else:
            genomes_list.append(dna.text)

    with open('proteins_2.fa', 'r') as input_prot, open('proteins_3.fa', 'w') as output_prot:
        ### Process proteins file
        input_lines = input_prot.read().splitlines()
        id = 0
        for line in input_lines:
            if line.startswith('>'):
                if id in proteins_delete:
                    write_prot = False
                else:
                    output_prot.write(f'>{line[1:]}\n')
                    write_prot = True
                id += 1
            else:
                if write_prot:
                    output_prot.write(f'{line}\n')


    ### Write sequences in file
    with open('dna_seq.fa', 'w') as dna_file:
        dna_file.write('\n'.join(genomes_list))

    with open('dictionary.txt', 'w') as dic:
    for key in dictionary:
        dic.write(f'{key}\t{dictionary[key]}\n')


def install_files(sigma):
    ### Download the necessary files form github repository
    directory_path = pathlib.Path(__file__).parent.resolve()

    try:
        with open('Sigma70_r2.hmm', 'r') as f:
            pass
    except IOError:
        Sigma70_r2 = "https://github.com/gromdimon/CRtagFinder/raw/main/Sigma70_r2.hmm"
        wget.download(Sigma70_r2, f'{directory_path}/Sigma70_r2.hmm')

    try:
        with open('Sigma70_r4.hmm', 'r') as f:
            pass
    except IOError:
        Sigma70_r4 = 'https://github.com/gromdimon/CRtagFinder/raw/main/Sigma70_r4.hmm'
        wget.download(Sigma70_r4, f'{directory_path}/Sigma70_r4.hmm')

    try:
        with open('model.hmm', 'r') as f:
            pass
    except IOError:
        model = f'https://github.com/gromdimon/CRtagFinder/raw/main/{sigma}.hmm'
        wget.download(model, f'{directory_path}/model.hmm')


def find_regions():
    '''
    The function extracts from input download.fa and dna_seq.fa files
    r2 and r4 domens in protein sequence and dna promotor with -10 & -35 motifs
    '''
    def parce_motifs():
        """
        The function uses HMM models for finding protein and DNA motifs
        :return:
        """
        # Proteins r2 domen
        process_prot_r2 = Popen(['hmmsearch', '-A', 'temp_protein_r2.txt', 'Sigma70_r2.hmm', 'temp_current_prot.fa'],
                                stdout=PIPE,
                                stderr=PIPE)
        stdout_r2, stderr_r2 = process_prot_r2.communicate()
        # Proteins r4 domen
        process_prot_r4 = Popen(['hmmsearch', '-A', 'temp_protein_r4.txt', 'Sigma70_r4.hmm', 'temp_current_prot.fa'],
                                stdout=PIPE,
                                stderr=PIPE)
        stdout_r4, stderr_r4 = process_prot_r4.communicate()
        # Dna regions
        process_dna_r2 = Popen(
            ['nhmmer', '-T', '6', '--tblout', 'temp_dna_r.txt', 'model.hmm', 'temp_current_dna.fa'],
            stdout=PIPE,
            stderr=PIPE)
        dnaout_r, dnaerr_r = process_dna_r2.communicate()

        # Error control
        if stderr_r2 or stderr_r4 or dnaerr_r:
            return None
        return stdout_r2, stdout_r4, dnaout_r

    def check_values(stdout):
        ### Checking if hmmer found anything
        search_results = stdout.decode('utf-8')
        if '[No hits detected that satisfy reporting thresholds]' in search_results:
            return True
        return False

    def byte_str_operating(protein_id, stdout_r2, stdout_r4, genome):
        '''
        Operating byte console output for extracting motifs
        '''

        ### Proteins r2 domen
        protein_out_2 = stdout_r2.decode('utf-8')
        lines_r2 = protein_out_2.split(f'  {protein_id} ')
        protein_r2_domen = ''
        for line in lines_r2[2:]:
            line_spis = line.split(' ')
            if line_spis[1].isnumeric():
                protein_r2_domen += str(line_spis[2])
            else:
                protein_r2_domen += str(line_spis[1])

        ### Proteins r4 domen
        protein_out_4 = stdout_r4.decode('utf-8')
        lines_r4 = protein_out_4.split(f'  {protein_id} ')
        protein_r4_domen = ''
        for line in lines_r4[2:]:
            line_spis = line.split(' ')
            if line_spis[1].isnumeric():
                protein_r2_domen += str(line_spis[2])
            else:
                protein_r4_domen += str(line_spis[1])

        ### Dna results
        with open('temp_dna_r.txt', 'r') as dna_out:
            dna_motif_list = []
            dna_r = dna_out.read().split('\n')
            for line in dna_r[:-1]:
                # Skip informational lines
                if line.startswith('#'):
                    continue
                # Split line for words
                single_line = re.sub('\ +', ' ', line)
                line_spis = single_line.split(' ')
                # Positions based on model
                start_pos = line_spis[4]
                end_pos = line_spis[5]
                trash.write(f'{line}\n')
                # Extract start and end place in genome
                # But don't forget, they are reversed in - strand
                start_potential = line_spis[6]
                end_potential = line_spis[7]
                actual_start = min(start_potential, end_potential)
                actual_end = max(start_potential, end_potential)
                # Find strand
                strand = line_spis[11]

                ### Find promoter in genome
                if strand == '+':
                    # Simply add positions to start and to end
                    motif = genome[int(actual_start) - int(start_pos): int(actual_end) + 38 - int(end_pos)]
                    dna_motif_list.append(motif)
                elif strand == '-':
                    # Add positions from end of the model to the beginning
                    # and start of the model to the end place in genome
                    # It is reversed way
                    motif = genome[int(actual_start) - (39 - int(end_pos)): int(actual_end) + int(start_pos) - 1]
                    # Find complement to the seq
                    motiv = Seq(motif)
                    mot = motiv.reverse_complement()
                    dna_motif_list.append(str(mot))

        return protein_r2_domen, protein_r4_domen, dna_motif_list

    def get_idseq(fasta):
        ### ID + seq from fasta file
        lines = fasta.split("\n")
        id = lines[0].split(" ")[0]
        seq = ''.join(lines[1:])

        return (id, seq)

    ### Open input files with different sequences
    with open('dna_seq.fa', 'r') as dna, open('proteins_3.fa', 'r') as prot, open('dictionary.txt', 'r') as dic:
        dic_lines = dic.read().splitlines()
        dictionary = {}
        for line in dic_lines:
            key, val = line.split('\t')
            dictionary[key] = val
            
        dna_list = dna.read().split('>')
        prot_list = prot.read().split('>')
        genomes_list = list(map(get_idseq, dna_list[1:]))
        proteins_list = list(map(get_idseq, prot_list[1:]))

        ### Make search and collect results
        with open('prot_r2.fa', 'w') as prot_r2, open('prot_r4.fa', 'w') as prot_r4, open('promoters.fa', 'w') as dna_r, open('temp_trash.txt', 'w') as trash:
            # Go throw each pair protein & genome
            for genome in genomes_list:
                gene_id, gene_seq = genome
                for protein in proteins_list:
                    protein_id, protein_seq = protein
                    if dictionary[protein_id] == gene_id:
                        break

                print(protein_id, gene_id)
                # Write sequences in separate files for hmmer search
                with open('temp_current_prot.fa', 'w') as prot_file:
                    prot_file.write(f'>{protein_id}\n')
                    prot_file.write(protein_seq)
                with open('temp_current_dna.fa', 'w') as prot_file:
                    prot_file.write(f'>{gene_id}\n')
                    prot_file.write(gene_seq)

                # Make search
                try:
                    stdout_r2, stdout_r4, dnaout_r = parce_motifs()
                except:
                    continue
                # Check search results
                if check_values(stdout_r2) or check_values(stdout_r4):
                    continue

                # Extract real sequences
                protein_r2, protein_r4, dna_r_list = byte_str_operating(protein_id, stdout_r2, stdout_r4, gene_seq)

                # Write corresponding files
                if dna_r_list:
                    prot_r2.write(f'>{protein_id}\n{protein_r2}\n')
                    prot_r4.write(f'>{protein_id}\n{protein_r4}\n')
                    for idx, motif in enumerate(dna_r_list):
                        dna_r.write(f'>{protein_id}_{idx}\n<{gene_id}\n{motif}\n')


def protdnakorr_adaptation():
    def return_idseq(fasta):
        ### ID + sequence from fasta file
        lines = fasta.split("\n")
        id = lines[0].split(" ")[0]
        seq = ''.join(lines[1:])
        return (id, seq)

    ### Prepare data for PDK
    with open('prot_r2_short.fa', 'r') as r2, open('prot_r4.fa', 'r') as r4, open('promoters.fa', 'r') as r, open('final_r2_short.txt', 'w') as f2, open('final_r4.txt', 'w') as f4:
        f2.write('sequences.AA						sequences.DNA\n')
        f4.write('sequences.AA						sequences.DNA\n')
        dna_list = r.read().split('>')
        prot_list_2 = r2.read().split('>')
        prot_list_4 = r4.read().split('>')
        genomes_list = list(map(return_idseq, dna_list[1:]))
        proteins_list_2 = list(map(return_idseq, prot_list_2[1:]))
        proteins_list_4 = list(map(return_idseq, prot_list_4[1:]))

        # R2 region
        for genome in genomes_list:
            for prot in proteins_list_2:
                if prot[0][:-7] in genome[0]:
                    f2.write(f'{prot[1]}\t{genome[1][-20:-8]}\n')

        # R4 region
        for genome in genomes_list:
            for prot in proteins_list_4:
                if prot[0][:-8] in genome[0]:
                    f4.write(f'{prot[1]}\t{genome[1][5:15]}\n')

#
# ncbi_labels, processed = make_labels_for_ncbi_from_hmmer()
#
# processed_2 = download_ncbi_proteins(ncbi_labels)
#
# places = find_places()
#
# dictionary = parce_dna(places, processed_2)
#
# install_files(sigma)
#
# find_regions()

protdnakorr_adaptation()
