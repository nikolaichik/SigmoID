import Bio
import subprocess
import argparse
import re
import os
import sys
import secrets
import json
from Bio import SeqIO
from Bio.SeqFeature import FeatureLocation
from Bio.SeqFeature import SeqFeature
from Bio import SeqIO
from pathlib import Path


TAG_WRONG_LEN = "CR-tag incorrect, wrong length"
TAG_INDEL = "Indel within CR-tag region"
NHMMLIB_FAMILIES = {}


class MySeqFeature(SeqFeature):
    def __str__(self):
        out = "type: {}\n".format(self.type)
        if self.strand == 1:
            out += f"location: [{self.location.start + 1}:{self.location.end}](+)\n"
        if self.strand == -1:
            out += f"location: [{self.location.start+1}:{self.location.end}](-)\n"
        if self.id and self.id != "<unknown id>":
            out += f"id: {self.id}\n"
        out += "qualifiers:\n"
        for qual_key in sorted(self.qualifiers):
            out += f" Key: {qual_key}, Value: {self.qualifiers[qual_key]}\n"
        if Bio.__version__ != '1.73': # to avoid problems with diff biopython versions
            if not hasattr(self, "_sub_features"):
                self._sub_features = []
            if len(self._sub_features) != 0:
                out += "Sub-Features\n"
                for sub_feature in self._sub_features:
                    out += f"{sub_feature}\n"
        return out


class ScanEntry:
    def __init__(self, **kwargs):
        self.critical_residue_tag = ""
        self.accession = kwargs.get("accession", "-")
        self.left_tail = kwargs.get("left_tail", None)
        self.right_tail = kwargs.get("right_tail", None)
        self.hmm_align = kwargs.get('hmm_align', None)
        self.e_value = kwargs.get('e_value', None)
        self.score = kwargs.get('score', None)
        if "tf_dict" in kwargs:
            for key in ("protein_id", "gene", "locus_tag", "product", "translation"):
                if key in kwargs["tf_dict"]:
                    if key == "product":
                        setattr(self, "description", kwargs["tf_dict"][key][-1])
                    else:
                        if kwargs["tf_dict"].get(key, None):
                            setattr(self, key, kwargs["tf_dict"][key][-1])
                        else:
                            setattr(self, key, "-")
                else:
                    if key == "protein_id":
                        if "locus_tag" in kwargs["tf_dict"]:
                            setattr(self, "protein_id", kwargs["tf_dict"]["locus_tag"][-1])
                    setattr(self, key, "-")
        self.family = kwargs.get('family', None)

    def __iter__(self):
        self._attributes_list = list(self.__dict__.items())
        self._current_ind = 0
        self._last_ind = len(self._attributes_list)
        return self

    def __next__(self):
        if self._current_ind < self._last_ind:
            pair = self._attributes_list[self._current_ind]
            self._current_ind += 1
            return pair
        else:
            raise StopIteration


def decorate_exceptions(func):
    def wrapper(*args, **kwargs):
        try:
            print(json.dumps(func(*args, **kwargs)))
        except Exception as e:
            print(json.dumps([{"errorMessage": e.args[-1]}]))

    return wrapper


def filter_scan_object_fields(pair):
    key, value = pair
    if key in ("protein_id", "gene",
               "locus_tag", "description",
               "family", "accession",
               "e_value", "score",
               "critical_residue_tag"):
        return True
    else:
        return False


def retrieve_sites_attributes(columns, check_tag, protein_dict, genome_record, shift):
    '''
    the function returns a list of dictionary/dictionaries which store key information
    about TF, which is supposed to bind the site found by nhmmscan.
    columns - string from nhmmscan table output file
    check_tag - flag, that requires to check the existence of the TF with corresponding CR-tag in the genome,
    in other case, the match will not be reported and None will be returned
    protein_dict - dictionary, which contains CR-tags of all TFs found in the genome by the classifier, CR-tag sequence
    is a key, ScanEntry object is a value
    genome_record - genome in GenBank format represented as SeqIO object
    shift - integer value (the left coordinate provided by user) used for correct DNA sequence retrieval

    we expect that nhmmerscan library entries have CR-tag with "_" sign in the NAME line
    i.e. NAME  SRVRQSNYSV_RhaR.hmm.
    '''

    def get_attributes_by_tag(cr_tag_seq, entries_array):
        def fields_to_dict(protein_entry):
            attributes = ("protein_id", "locus_tag", "gene")
            tf_fields_dict = {attribute:getattr(protein_entry, attribute, '-') for attribute in attributes}
            return tf_fields_dict

        if cr_tag_seq in entries_array:
            entry = entries_array[cr_tag_seq]
            output = []
            if type(entry) is list:
                for tf_entry in entry:
                    output.append(fields_to_dict(tf_entry))
            else:
                output.append(fields_to_dict(entry))
            return output
        else:
            cr_tag_info = "CR-tag isn't present in genome"
            return [{"protein_id": cr_tag_info, "locus_tag": cr_tag_info, "gene": cr_tag_info}]

    def get_match_seq(gbk_file, left_coord, right_coord, strand):
        if strand == "+":
            return str(gbk_file[left_coord - 1:right_coord].seq)
        elif strand == "-":
            return str(gbk_file[right_coord - 1:left_coord].seq.reverse_complement())
        else:
            return "can't recognize strand notation"

    try:
        left_coord, right_coord = int(columns[6]) + shift, int(columns[7]) + shift
    except ValueError:
        raise Exception("Incorrect nhmmscan table format - 7th and 8th column should be integer values")

    if (check_tag and columns[0].split('_')[0] in protein_dict) or not check_tag:
        protein_attributes = get_attributes_by_tag(columns[0].split('_')[0], protein_dict)
        strand = columns[11]
        output = []
        site_match = {"critical_residue_tag": str(columns[0].split('_')[0]),
                      "family": NHMMLIB_FAMILIES.get(columns[0], "-"),
                      "profile_name": str(columns[0].split('.')[0]),
                    "sequence": get_match_seq(genome_record, left_coord, right_coord, strand),
                    "coordinates": f"{left_coord}:{right_coord}",
                    "strand": columns[11],
                    "e-value": columns[12],
                    "bit_score": columns[13]}
        for attribute_record_dict in protein_attributes:
            output.append({**site_match, **attribute_record_dict})
        return output
    else:
        return None


def get_crtag(alignment, crtag_coordinates, protein_seq, left_dels=0, right_dels=0):
    if "|" in crtag_coordinates:
        # process cr-tag consisting from two parts due to large distance between coordinate blocks
        parts = [list(map(int, part.split(','))) for part in crtag_coordinates.split("|")]
    else:
        parts = [list(map(int, crtag_coordinates.split(',')))]
    dels_free_alignment = alignment.replace('.', '')
    # check sequence for internal deletions (gaps)
    # dels_coordinates = []
    if '-' in dels_free_alignment:
        # dels_coordinates = [index for index, char in enumerate(dels_free_alignment) if char == '-']
        no_internal_dels_alignment = dels_free_alignment.replace('-', '')
        substr_start = protein_seq.find(no_internal_dels_alignment.upper())
    else:
        substr_start = protein_seq.find(dels_free_alignment.upper())
    # extend left part
    extended_alignment = protein_seq[substr_start - left_dels:substr_start] + dels_free_alignment
    ext_start = substr_start + len(dels_free_alignment)
    ext_end = substr_start + len(dels_free_alignment) + right_dels
    # extend right part
    extended_alignment += protein_seq[ext_start:ext_end]
    cr_tag = ""
    for part_coordinates in parts:
        seq_before_first_residue = extended_alignment[:part_coordinates[0]]
        if seq_before_first_residue != seq_before_first_residue.upper():
            gaps_count = sum(True for residue in seq_before_first_residue if residue.islower())
            extended_alignment = extended_alignment[-(len(extended_alignment) - gaps_count):]
        alignment_within_cr_region = extended_alignment[part_coordinates[0] - 1: part_coordinates[-1]]
        if alignment_within_cr_region == alignment_within_cr_region.upper() and '-' not in alignment_within_cr_region:
            tag_part = ''
            try:
                tag_part = ''.join([extended_alignment[coordinate - 1] for coordinate in part_coordinates])
            except IndexError:
                pass
            if len(tag_part) != len(part_coordinates):
                return TAG_WRONG_LEN
            else:
                cr_tag += tag_part
        else:
            return TAG_INDEL
    return cr_tag

@decorate_exceptions
def tf_classify(**kwargs):
    gbk_file_path = kwargs.get("gbk_file", None)
    gbk_output_path = kwargs.get("gbk_out", None)
    temp_dir_path = kwargs.get("temp_dir", None)
    hmmlib_path = kwargs.get("hmmlib", None)
    nhmmlib = kwargs.get("nhmmlib", None)
    coords = kwargs.get("coords", None)
    filter_by_tag = kwargs.get("filter_by_tag", None)

    # create hmm's index
    PROTEOME = {}
    hmms_index = {}
    qualifiers = ("protein_id", "gene", "locus_tag", "product", "translation")
    # print(f"start scanning hmm folder path")
    with open(hmmlib_path, 'rt') as f:
        hmm_file = f.read()
        hmm_entries = re.split(r"^\/\/$", hmm_file, flags=re.MULTILINE)
        for hmm_entry in hmm_entries:
            hmm_dict = {"cr_tag_extractable": False}
            if len(hmm_entry.split("\n")) > 3:
                for line in hmm_entry.split("\n"):
                    line = line.strip()
                    if "NAME" in line:
                        hmm_dict["hmm_name"] = line.split(' ')[-1]
                    elif "ACC" in line:
                        hmm_dict["accession"] = line.split(' ')[-1]
                    elif "CRTAG" in line:
                        coordinate_string = line.split(' ')[-1]
                        if coordinate_string:
                            hmm_dict["coordinates"] = coordinate_string
                    elif "LENG" in line:
                        try:
                            hmm_dict["model_length"] = int(line.split(' ')[-1])
                        except ValueError:
                            pass
                    elif len(hmm_dict.items()) == 5:
                        break
                if len(hmm_dict.items()) != 5:
                    for key in ("accession", "coordinates", "accession", "coordinates"):
                        if key not in hmm_dict:
                            hmm_dict[key] = "-"
                if "hmm_name" in hmm_dict:
                    if hmm_dict["coordinates"] != "-" and hmm_dict["model_length"] != "-":
                        hmm_dict["cr_tag_extractable"] = True
                    hmms_index[hmm_dict["hmm_name"]] = hmm_dict
                else:
                    raise Exception(f"One model lacks NAME attribute, check the content of {hmmlib_path}")
    # parse genbank file in order to retrieve protein fasta and cds descriptions
    genome_record = SeqIO.read(gbk_file_path, "genbank")
    for feature in genome_record.features:
        if feature.type == "CDS":
            cds_entry = {qualifier: feature.qualifiers.get(qualifier, None) for qualifier in qualifiers}
            protein_id = cds_entry.get("protein_id", None)
            locus_tag = cds_entry.get("locus_tag", None)
            if protein_id and protein_id != ['']:
                if protein_id[-1] not in PROTEOME:
                    PROTEOME[protein_id[-1]] = cds_entry
            elif locus_tag and locus_tag != ['']:
                if locus_tag[-1] not in PROTEOME:
                    PROTEOME[locus_tag[-1]] = cds_entry
    # create file for hmmscan input
    proteome_file_name = f"{Path(gbk_file_path).name}_{secrets.token_urlsafe(8)}.fasta"
    proteome_file_path = Path(temp_dir_path).joinpath(proteome_file_name)
    try:
        with open(proteome_file_path, 'w') as f:
            output = []
            for key, entry in PROTEOME.items():
                seq = entry['translation']
                if seq and seq != ['']:
                    output.append(f">{key}")
                    output.append(f"{seq[-1]}")
            f.writelines('\n'.join(output))
    except IOError:
        raise Exception(f"Can't save file {proteome_file_path}")
    if proteome_file_path.exists():
        p = subprocess.run(f"hmmscan --cut_ga --notextw '{hmmlib_path}' '{proteome_file_path}'",
                           shell=True, capture_output=True, text=True)
        if p.returncode == 0:
            hmmscan_entries = [entry for entry in p.stdout.split("Internal pipeline statistics summary:")
                               if "No hits detected" not in entry]
        else:
            raise Exception(p.stderr.strip())
        try:
            proteome_file_path.unlink()
        except IOError:
            raise Exception(f"Can't delete temporary file {proteome_file_path.name}")
    else:
        raise Exception(f"file is missing: {proteome_file_path}")

    tf_entries = {}
    for entry in hmmscan_entries:
        res = re.findall(r"(?<=Query:).*(?=\[)", entry)
        if res:
            tf_name = res[0].strip()
            alignment = ''
            hmm_name = ''
            e_value = None
            bit_score = None
            align_from, align_to = None, None
            first_model_line = False
            for index, line in enumerate(entry.split("-----------\n")[-1].split('\n')):
                columns = re.split(r"[\s|\t]{1,}", line)
                if len(columns) >= 10 and index <= 3 and not first_model_line:
                    # process columns 4 (e-val) 5 (bit-score) 9  " ".join(columns[10:len(columns)]()
                    hmm_name = columns[9]
                    e_value = float(columns[4])
                    bit_score = float(columns[5])
                    first_model_line = True
                elif hmm_name in line and ">>" not in line:
                    model_align = re.split(r"[\s|\t]{1,}", line)
                    align_coords = [int(field) for field in model_align if field.isdigit()]
                    try:
                        align_from, align_to = align_coords[0], align_coords[-1]
                    except ValueError:
                        pass
                elif tf_name in line:
                    alignment = re.split(r"[\s|\t]{1,}", line)[-2]
                    break
            if tf_name and hmm_name and e_value and bit_score and alignment:
                dels_left, dels_right = 0, 0
                if align_from and align_to:
                    if hmms_index[hmm_name]["cr_tag_extractable"]:
                        model_length = hmms_index[hmm_name]["model_length"]
                        if align_from > 1:
                            dels_left = align_from - 1
                        if align_to != model_length:
                            dels_right = model_length - align_to
                if tf_name not in tf_entries:
                    tf_record = ScanEntry(tf_dict=PROTEOME[tf_name],
                                          accession=hmms_index[hmm_name]["accession"],
                                          e_value=e_value,
                                          score=bit_score,
                                          family=hmm_name,
                                          hmm_align=alignment,
                                          left_tail=dels_left,
                                          right_tail=dels_right
                                          )
                    tf_entries[tf_record.protein_id] = tf_record
                elif tf_record.e_value < tf_entries[tf_record.query_name].e_value:
                    tf_entries[tf_name].family = hmm_name
                    tf_entries[tf_name].e_value = e_value
                    tf_entries[tf_name].score = bit_score
                    tf_entries[tf_name].hmm_align = alignment
    # add cr_tags
    tagged_prots = {}
    for tf_entry in tf_entries:
        if hmms_index[tf_entries[tf_entry].family]["cr_tag_extractable"]:
            tf_entries[tf_entry].critical_residue_tag = get_crtag(tf_entries[tf_entry].hmm_align,
                                                                  hmms_index[tf_entries[tf_entry].family][
                                                                      "coordinates"],
                                                                  tf_entries[tf_entry].translation,
                                                                  tf_entries[tf_entry].left_tail,
                                                                  tf_entries[tf_entry].right_tail)
            if nhmmlib:
                if tf_entries[tf_entry].critical_residue_tag not in (TAG_INDEL, TAG_WRONG_LEN):
                    if tf_entries[tf_entry].critical_residue_tag not in tagged_prots:
                        tagged_prots[tf_entries[tf_entry].critical_residue_tag] = tf_entries[tf_entry]
                    else:
                        tagged_prots[tf_entries[tf_entry].critical_residue_tag] = [
                            tagged_prots[tf_entries[tf_entry].critical_residue_tag],
                            tf_entries[tf_entry]]
        else:
            tf_entries[tf_entry].critical_residue_tag = "-"

    if nhmmlib:
        with open(nhmmlib, 'rt') as f:
            library = ''.join(f.readlines())
            for lib_entry in library.split('//'):
                fam_name = re.findall(r'(?<=TFFAM\s).*', lib_entry)
                profile_name = re.findall(r'(?<=NAME\s).*', lib_entry)
                if fam_name and profile_name:
                    NHMMLIB_FAMILIES[profile_name[0].strip()] = fam_name[0].strip()
        search_output_name = f"{Path(gbk_file_path).name}_{secrets.token_urlsafe(8)}_nhmmscan_out"
        search_output = Path(temp_dir_path).joinpath(search_output_name)
        source_sequence_name = f"{Path(gbk_file_path).name}_{secrets.token_urlsafe(8)}_nhmmscan_input.fasta"
        search_sequence = Path(temp_dir_path).joinpath(source_sequence_name)
        site_matches = []
        left_coord, right_coord = map(int, coords.split(','))
        if 0 < left_coord < right_coord <= len(genome_record.seq):
            seq_region = str(genome_record[left_coord:right_coord].seq)
            with open(search_sequence, 'wt', encoding="UTF-8") as f:
                try:
                    f.writelines(f">{genome_record.name}\n{seq_region}")
                except IOError:
                    raise Exception("Can't save sequence for nhmmscan input")
            if seq_region and search_sequence.exists():
                p = subprocess.run(f"nhmmscan --cut_ga --tblout {search_output} --max --nonull2 '{nhmmlib}' '{search_sequence}'",
                                    shell=True, capture_output=True, text=True)
                if p.returncode == 0:
                    search_sequence.unlink()
                    sites_to_gbk = []
                    with open(search_output, 'rt') as f:
                        for line in f.readlines():
                            if not line.startswith("#"):
                                columns = re.split(r"[\s]{1,}", line.strip())
                                if columns:
                                    sites_list = retrieve_sites_attributes(columns,
                                                                           filter_by_tag,
                                                                           tagged_prots,
                                                                           genome_record,
                                                                           left_coord)
                                    if sites_list:
                                        site_matches.extend(sites_list)
                                    if gbk_output_path:
                                        sites_to_gbk.extend([])                                        
                                else:
                                    raise Exception("Incorrect search_output file format, check nhmmscan output")
                else:
                    raise Exception(p.stderr.strip())
                search_output.unlink()
                if site_matches:
                    return sorted(site_matches, key=lambda d: int(d["coordinates"].split(":")[0]))
                else:
                    raise Exception("No matches to profiles stored in BacRegDB")
        else:
            raise Exception("Coordinates are not within sequence length range")
    else:
        output = []
        for protein_id, entry_dictionary in tf_entries.items():
            output.append(dict(filter(filter_scan_object_fields, entry_dictionary)))
        return output


if __name__ == "__main__":
    parser = argparse.ArgumentParser()
    parser.add_argument("-g", "--gbk_file_path", required=True,
                        help="genome file in GenBank format")
    parser.add_argument("-f", action='store_true',
                        help="flag which indicates that result should be filtered"
                             "in accordance to CR-tag presence in the genome")
    parser.add_argument("--hmmlib_file_path", required=True,
                        help="path to the hmmscan library file .hmm, file's index must be present in the same folder")
    parser.add_argument("--nhmmlib_file_path",
                        help="path to the nhmmscan library file .hmm, file's index must be present in the same folder")
    parser.add_argument("--coordinates", required=True if "nhmmlib_file_path" in sys.argv else False,
                        help="genome sequence coordinates indicating the region for nhmmscan")
    parser.add_argument("--temp_dir_path", required=True,
                        help="path to the directory with read and write permissions in order to"
                             " store temporary files")
    parser.add_argument("--annotated_gbk_path", help="output for annotated GenBank file")

    args = parser.parse_args()
    if args:
        tf_classify(gbk_file=args.gbk_file_path,
                    temp_dir=args.temp_dir_path,
                    hmmlib=args.hmmlib_file_path,
                    nhmmlib=args.nhmmlib_file_path,
                    coords=args.coordinates,
                    filter_by_tag=args.f,
                    gbk_out = args.annotated_gbk_path)
