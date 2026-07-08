import sys
import argparse
import copy
import re
from time import process_time
import Bio
from Bio.SeqFeature import FeatureLocation, ExactPosition
from Bio.SeqFeature import SeqFeature


def get_strand(feature):
    """Helper function to get strand from a feature in a backward-compatible way."""
    if hasattr(feature, 'strand'):
        return feature.strand
    elif hasattr(feature, 'location') and hasattr(feature.location, 'strand'):
        return feature.location.strand
    return None


class MySeqFeature(SeqFeature):
    @property
    def strand(self):
        """Get strand from location for compatibility with older code."""
        if hasattr(self.location, 'strand'):
            return self.location.strand
        return None
    
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
        if Bio.__version__ != '1.73':  # to avoid problems with diff biopython versions
            if not hasattr(self, "_sub_features"):
                self._sub_features = []
            if len(self._sub_features) != 0:
                out += "Sub-Features\n"
                for sub_feature in self._sub_features:
                    out += f"{sub_feature}\n"
        return out


class NhmmerTable:
    # Class creates custom object with fields defined in function nhmm_parser
    def __init__(self, **kwargs):
        self.__dict__.update(kwargs)


def wrong_promoter_strand(up_feature, hit_feature, down_feature):
    if 'regulatory_class' in hit_feature.qualifiers.keys() and \
       hit_feature.qualifiers['regulatory_class'][0] == 'promoter' and \
       up_feature.location.start < \
       hit_feature.location.start < \
       hit_feature.location.end < \
       down_feature.location.start:
        hit_strand = get_strand(hit_feature)
        up_strand = get_strand(up_feature)
        down_strand = get_strand(down_feature)
        if hit_strand == -1 and hit_strand != up_strand:
            return True
        elif hit_strand == 1 and hit_strand != down_strand:
            return True
        else:
            return False
    return False


def correct_location_within_either_features(some_hit, ignore_within_orf=False, *args):
    # 'index' is for feature's index within 'list_of_features'
    for feature in args:
        feature_strand = get_strand(feature)
        if feature_strand == +1 and ignore_within_orf:
            if enter.boundary + feature.location.start >= some_hit.location.end > feature.location.start:
                return True
        elif feature_strand == -1 and ignore_within_orf:
            if feature.location.end - enter.boundary <= some_hit.location.start < feature.location.end:
                return True
        elif not ignore_within_orf:
            if feature.location.start < some_hit.location.start < feature.location.end or \
                    feature.location.start < some_hit.location.end < feature.location.end:
                return True
    return False


def is_within_correct_intergenic_region(f_feature, s_feature, some_hit):
    def features_relative_location_correct(left_feature, right_feature):
        if right_feature.location.start - left_feature.location.end < enter.intergenic_distance:
            return False
        left_strand = get_strand(left_feature)
        right_strand = get_strand(right_feature)
        if left_strand == -1 and right_strand == -1:
            return True
        elif left_strand == -1 and right_strand == +1:
            return True
        elif left_strand == +1 and right_strand == +1:
            return True
        elif left_strand == +1 and right_strand == -1:
            return False
        return False

    if f_feature.location.start < s_feature.location.start:
        if features_relative_location_correct(left_feature=f_feature, right_feature=s_feature):
            if f_feature.location.end <= some_hit.location.start \
                    and some_hit.location.end <= s_feature.location.start:
                return True
            else:
                return False
        else:
            return False
    elif f_feature.location.start > s_feature.location.start:
        if features_relative_location_correct(left_feature=s_feature, right_feature=f_feature):
            if s_feature.location.end <= some_hit.location.start \
                    and some_hit.location.end <= f_feature.location.start:
                return True
            else:
                return False
        else:
            return False
    return False


def is_divergent(feature_1, feature_2):
    f1_strand = get_strand(feature_1)
    f2_strand = get_strand(feature_2)
    if f1_strand == -1 and f2_strand == +1:
        return True
    else:
        return False


def qualifiers_function(qualifiers, var):
    qual_var = []
    for some_qualifier in qualifiers:
        if any(symbol == '#' for symbol in some_qualifier):
            qual_var.append(some_qualifier.split('#'))
        else:
            sys.exit('Please check your general qualifiers typing')
    for number in range(len(qual_var)):
        value_list = []
        for index in range(len(qual_var)):
            if qual_var[number][0] == qual_var[index][0] and \
                            qual_var[index][1] not in value_list:
                value_list.append(qual_var[index][1])
                var[qual_var[number][0]] = value_list
    return var


def nhmm_parser(path_to_file):
    # parser expects columns in the following order:
    # target name, accession, query name, accession, hmmfrom, hmm to,
    # alifrom, ali to, envfrom, env to, sq len, strand,
    # E-value, score, bias, description of target
    keys = ("target_name", "accession", "query_name", "accession",
            "hmmfrom", "hmm_to", "alifrom", "ali_to", "envfrom",
            "env_to", "sq_len", "strand", "e_value", "score",
            "bias", "description"
            )
    int_pos = tuple(range(4, 11))  # convert to int: hmmfrom, hmm_to, alifrom, ali_to, envfrom, env_to, sq_len
    float_pos = (12, 13, 14)  # convert to float: e_value, score, bias
    out_list = []
    try:
        a = open(path_to_file, 'r')
    except IOError:
        sys.exit('Open error! Please check your nhmmer report input file!')
    line = a.readline().strip()
    while line:
        if not line.startswith("#"):
            fields = re.split(r"[\s]{1,}", line)
            for pos in int_pos:
                fields[pos] = int(fields[pos])
            for pos in float_pos:
                fields[pos] = float(fields[pos])
            if fields[11] == '+':
                fields[11] = +1
            elif fields[11] == '-':
                fields[11] = -1
            if len(fields) < 16:
                raise Exception
            dict_fields = {key: (fields[k] if k < 15 else " ".join(fields[k::])) for k, key in enumerate(keys)}
            out_list.append(NhmmerTable(**dict_fields))
        line = a.readline().strip()
    return out_list

def nhmm_prog(path_to_file, e):
    a = open(path_to_file, 'r')
    r = a.readlines()
    for prog_line in r:
        if prog_line.startswith('# Program:'):
            # Extract the program name (everything after '# Program: ')
            program_name = prog_line.replace('# Program:', '').strip()
            if program_name:
                e.append(program_name)
            break  # Only need the program name, ignore version
    return

def sorting_output_features(lst):
    bit_score_list = []
    for some_feature in lst:
        for key in some_feature.qualifiers.keys():
            if key == 'note':
                temp = some_feature.qualifiers[key]
                if isinstance(temp, list):
                    temp = temp[0] if temp else ""
                if temp:
                    temp = temp.split(' ')
                    if len(temp) >= 3:
                        bit_score_list.append(float(temp[-3]))
    return bit_score_list


def score_parser(some_feature):
    if "note" in some_feature.qualifiers:
        note_entry = some_feature.qualifiers["note"]
        score = None
        if isinstance(note_entry, str):
            parts = note_entry.split(' ')
            if len(parts) >= 3:
                score = parts[-3]
        elif isinstance(note_entry, list):
            for list_feature in some_feature.qualifiers['note']:
                if list_feature.startswith('nhmmer'):
                    parts = list_feature.split(' ')
                    if len(parts) >= 3:
                        score = parts[-3]
        if score:
            try:
                return float(score)
            except ValueError:
                return None
        else:
            return None
    else:
        return None


def remove_feature_with_lowest_score(feature_list, f1_index, f2_index):
    if score_parser(feature_list[f1_index]) and score_parser(feature_list[f2_index]):
        if score_parser(feature_list[f1_index]) > score_parser(feature_list[f2_index]):
            del feature_list[f2_index]
        else:
            del feature_list[f1_index]


def output(score_list, output_features):
    for val in score_list:
        for some_feature in output_features:
            if val == feature_score(some_feature):
                print(some_feature)
                output_features = [f for f in output_features if f != some_feature]


def feature_score(some_feature):
    for key in some_feature.qualifiers.keys():
        if key == 'note' and some_feature.qualifiers[key] != []:
            temp = some_feature.qualifiers[key]
            if isinstance(temp, list):
                temp = temp[0] if temp else ""
            if temp:
                parts = temp.split(' ')
                if len(parts) >= 3:
                    return float(parts[-3])
    return 0.0


def dna_topology(path, topo_list):
    # This function deals with with DNA topology problem in biopython
    # for more detail: https://github.com/biopython/biopython/issues/363
    infile = open(path, 'r')
    loci_counter = -1  # because 1 is 0 in python
    lines = infile.readlines()
    for numline in range(len(lines)):
        if lines[numline].startswith('LOCUS'):
            loci_counter += 1
            lines[numline] = topo_list[loci_counter]
    infile.close()
    return lines


def intergenic_distance_correct(featurelist, i):
    if len(featurelist) > 1:
        if i > 0:
            if featurelist[i].location.start-featurelist[i - 1].location.end >= enter.intergenic_distance:
                return True
            else:
                return False
        else:
            return True
    else:
        return False


def create_my_feature(location, feature_type, strand, qualifiers):
    """Create a SeqFeature with strand information embedded in the location."""
    # Create location with strand
    location_with_strand = FeatureLocation(location.start, location.end, strand=strand)
    return MySeqFeature(location=location_with_strand, type=feature_type, qualifiers=qualifiers)


def createparser():
    parser = argparse.ArgumentParser(
             prog='HmmGen',
             usage='\n%(prog)s <report_file> <input_file> <output_file> [options]',
             description='''This script allows to add features to a genbank \
                            file according to nhmmer results.\
                            Requires Biopython 1.73 (or newer)''',
             epilog='(c) Aliaksandr Damienikan, 2014-2017; original code was ported to Python3.x by /'
                    'Andrei Pleskunou and Pavel Vychyk.')
    parser.add_argument('report_file',
                        help='path to nhmmer report file produced with \
                              -tblout option.')
    parser.add_argument('input_file',
                        help='path to input Genbank file.')
    parser.add_argument('output_file', help='path to output Genbank file.')
    parser.add_argument('-L', '--length',
                        default=False,
                        help='final feature\'s length in genbank file',
                        metavar='<int>/<int:int>',
                        required=False,
                        type=str)
    parser.add_argument('-q', '--qual',
                        default='',
                        metavar='<key#"value">',
                        nargs='*',
                        dest='qual',
                        help='''add this qualifier to each annotated \
                                feature.''')
    parser.add_argument('-p', '--palindromic',
                        action='store_const',
                        const=True,
                        default=False,
                        help='''filter palindromic sites.''')
    parser.add_argument('-n', '--name',
                        action='store_const',
                        const=True,
                        default=False,
                        help='''don\'t pick \'locus_tag\' and \'gene\' \
                                qualifiers from the next CDS feature.''')
    parser.add_argument('-E', '--eval',
                        default=False,
                        type=float,
                        metavar='<float or integer>',
                        help='''threshold E-Value.''')
    parser.add_argument('-S', '--score',
                        default=False,
                        type=float,
                        metavar='<float or integer>',
                        help='''threshold Bit Score.''')
    parser.add_argument('-i', '--insert',
                        action='store_const',
                        const=True,
                        default=False,
                        help='''don't add features inside CDS''')
    parser.add_argument('-b', '--boundary',
                        type=int,
                        default=0,
                        metavar='<integer>',
                        help='''set allowed length boundary for hits being within features''')
    parser.add_argument('-d', '--duplicate',
                        action='store_const',
                        const=True,
                        default=False,
                        help='''no duplicate features with the same location \
                                and the same protein_bind qualifier
                                value''')
    parser.add_argument('-v', '--version',
                        action='version',
                        version=version)
    parser.add_argument('-f', '--feature',
                        metavar='<"feature key">',
                        default='unknown type',
                        help='''feature key to add  (promoter, protein_bind \
                                etc.)''')
    parser.add_argument('-s', '--intergenic_distance',
                        type=int,
                        default=50,
                        help='''defines average intergenic distance in annotated genome \'
                             to exclude senseless sites ''')
    return parser


version = 'HmmGen 2.28 (September, 2023)'
t_start = process_time()
arguments = createparser()
enter = arguments.parse_args()
arguments = sys.argv[1:0]
max_eval = enter.eval
if enter.length is not False:
    enter.length = enter.length.split(':')
    if len(enter.length) == 1:
        enter.min_length = False
        enter.max_length = int(enter.length[0])
    else:
        enter.min_length = int(enter.length[0])
        enter.max_length = int(enter.length[1])
try:
    from Bio import SeqIO
except ImportError:
    sys.exit('\nYou have no Biopython module installed!\n\
                You can download it here for free: \
                http://biopython.org/wiki/Download\n')

from Bio import SeqFeature
try:
    input_handle = open(enter.input_file, 'r')
except IOError:
    sys.exit('Open error! Please check your genbank input file!')
circular_vs_linear = []
for line in input_handle.readlines():
    if line.startswith('LOCUS'):
        circular_vs_linear.append(line)
input_handle.close()
input_handle = open(enter.input_file, 'r')
if enter.input_file == enter.output_file:
    sys.exit('Sorry, but we can\'t edit input file. Please give another name \
              to output file!')
try:
    output_handle = open(enter.output_file, 'w')
except IOError:
    sys.exit('Open error! Please check your genbank output path!')


print(version)
print("="*50)
print('Options used:\n')
for arg in range(1, len(sys.argv)):
    print(sys.argv[arg], end=" ")
print()
file_path = enter.report_file
qualifier = {'CHECK': 'CHECKED!'}
if enter.qual:
    qualifiers_function(enter.qual, qualifier)
prog = []
align_list = nhmm_parser(file_path)
nhmm_prog(file_path, prog)
# prog should now contain only the program name (e.g., 'nhmmer') without version or # symbols
records = SeqIO.parse(input_handle, 'genbank')
allowed_types = ['CDS', 'ncRNA', 'sRNA', 'tRNA', 'misc_RNA']
total = 0
print('\nOnly first contig will be processed.\n')
for record in records:
    print('\n' + "-"*50 + "\nCONTIG: " + record.id)
    print('\n   FEATURES ADDED: \n')
    allowed_features_list = []
    replaced_location_features = []
    # first sort features by location start value
    record.features.sort(key=lambda f: f.location.start)
    for index, feature in enumerate(record.features):
        # check feature coordinates, replace coordinates for features with incorrect parts joining
        try:
            if feature.location.start == 0 and feature.location.end == len(record.seq) and feature.type != 'source':
                replaced_location_features.append(feature)
                edited_feature = SeqFeature()
                for property, value in feature.__dict__.items():
                    if property == 'location':
                        # Get strand from original location if available
                        orig_strand = None
                        if hasattr(value, 'strand'):
                            orig_strand = value.strand
                        edited_feature.location = FeatureLocation(value.parts[0].start, value.parts[0].end, strand=orig_strand)
                    else:
                        edited_feature.__dict__[property] = copy.deepcopy(value)
                record.features[index] = edited_feature
        except (AttributeError, KeyError):
            pass
    if len(replaced_location_features) > 0:
        record.features.sort(key=lambda f: f.location.start)
    for feature in record.features:
        if feature.type in allowed_types:
            allowed_features_list.append(feature)
    
    if len(allowed_features_list) == 0:
        print("Warning: No allowed features (CDS, ncRNA, etc.) found in the record.")
        # Still process but with empty allowed features list
    
    for align in align_list:
        hmm_diff = align.hmm_to - align.hmmfrom
        if align.strand == +1:
            start = align.alifrom
            end = align.ali_to
            ali_diff = align.ali_to - align.alifrom
            if enter.length and not enter.min_length:
                if align.hmm_to < enter.max_length:
                    end = enter.max_length - align.hmm_to + align.ali_to
                else:
                    end = align.ali_to
                if align.hmmfrom > 1:
                    start = align.alifrom - align.hmmfrom + 1
        else:
            start = align.ali_to
            end = align.alifrom
            ali_diff = align.alifrom - align.ali_to
            if enter.length and not enter.min_length:
                if align.hmmfrom > 1:
                    end = align.hmmfrom - 1 + align.alifrom
                if align.hmm_to < enter.max_length:
                    start = align.ali_to - enter.max_length + align.hmm_to
                else:
                    start = align.ali_to
            elif enter.length and enter.min_length:
                if align.hmmfrom > 1:
                    end = align.hmmfrom - 1 + align.alifrom
                else:
                    end = align.alifrom
                if enter.min_length < align.hmm_to < enter.max_length or \
                        align.hmm_to <= enter.min_length < enter.max_length:
                    start = align.ali_to - enter.max_length + align.hmm_to
                elif align.hmm_to <= enter.min_length:
                    start = align.ali_to - enter.min_length + align.hmm_to
        start_pos = ExactPosition(start - 1)
        end_pos = ExactPosition(end)
        feature_location = FeatureLocation(start_pos, end_pos)
        feature_type = enter.feature
        
        # Use only the program name (first item in prog) without version
        if prog and len(prog) > 0:
            prog_string = prog[0].replace('\n', '').replace('\r', '').strip()
        else:
            prog_string = 'nhmmer'
        note_text = f"{prog_string} score {align.score} E-value {align.e_value}"
        note_qualifier = {'note': note_text}
        
        # Merge qualifiers
        merged_qualifiers = dict(qualifier)
        merged_qualifiers.update(note_qualifier)
        
        # Create feature with strand in location for newer Biopython versions
        my_feature = create_my_feature(
                         location=feature_location,
                         feature_type=feature_type,
                         strand=align.strand,
                         qualifiers=merged_qualifiers
        )

        if (hmm_diff - ali_diff == 0 or
                hmm_diff - ali_diff == 1 or
                hmm_diff - ali_diff == (-1)) and \
                (enter.score is False or align.score >= enter.score):
            
            if len(allowed_features_list) > 0:
                # Binary search to find position
                l_index = 0
                r_index = len(allowed_features_list)
                while l_index < r_index:
                    mid_index = (l_index + r_index) // 2
                    if allowed_features_list[mid_index].location.start > my_feature.location.start:
                        r_index = mid_index
                    else:
                        l_index = mid_index + 1
                
                # Check if feature is in intergenic region
                if my_feature.location.start >= allowed_features_list[0].location.end \
                        and allowed_features_list[-1].location.start >= my_feature.location.end:
                    if l_index > 0 and r_index - 1 >= 0 and l_index < len(allowed_features_list) and r_index - 1 < len(allowed_features_list):
                        right_feature = allowed_features_list[l_index]
                        left_feature = allowed_features_list[r_index - 1]
                        # incorrectly positioned sites
                        if is_within_correct_intergenic_region(left_feature, right_feature, my_feature):
                            record.features.append(my_feature)
                        elif correct_location_within_either_features(my_feature, enter.insert, left_feature, right_feature):
                            record.features.append(my_feature)
                elif my_feature.location.start <= allowed_features_list[0].location.end:
                    if correct_location_within_either_features(my_feature, enter.insert, allowed_features_list[0]):
                        record.features.append(my_feature)
                    elif allowed_features_list[0].location.start - \
                            (my_feature.location.end - my_feature.location.start) > 0 \
                                and allowed_features_list[0].location.start > enter.boundary \
                                and get_strand(allowed_features_list[0]) == +1:
                        record.features.append(my_feature)
                elif my_feature.location.start >= allowed_features_list[-1].location.start:
                    if correct_location_within_either_features(my_feature, enter.insert, allowed_features_list[-1]):
                        record.features.append(my_feature)
                    elif len(record.features) > 0 and record.features[0].location.end - allowed_features_list[-1].location.end > enter.boundary \
                        and get_strand(allowed_features_list[-1]) == -1:
                        record.features.append(my_feature)
            else:
                # No allowed features, just append
                record.features.append(my_feature)
    
    if not enter.name:
        for i in reversed(range(len(record.features))):
            idx = len(record.features) - 1 - i
            if idx < len(record.features) and 'CHECK' in record.features[idx].qualifiers.keys():
                individual_qualifiers = {}
                hit = record.features[idx]
                hit_strand = get_strand(hit)
                cds_up = None
                cds_down = None
                
                # Find upstream and downstream CDS features
                for n in range(idx+1, len(record.features)):
                    if record.features[n].type in allowed_types and \
                       record.features[n].location.start > hit.location.end:
                        cds_up = record.features[n]
                        break
                
                if len(allowed_features_list) > 0:
                    if hit.location.start > allowed_features_list[-1].location.end:
                        cds_up = allowed_features_list[0]
                    for c in reversed(range(len(allowed_features_list))):
                        if allowed_features_list[c].location.end < hit.location.start:
                            cds_down = allowed_features_list[c]
                            break
                        elif hit.location.end < allowed_features_list[0].location.start:
                            cds_down = allowed_features_list[-1]
                            break
                
                if cds_up is None and len(allowed_features_list) > 0:
                    cds_up = allowed_features_list[0]
                if cds_down is None and len(allowed_features_list) > 0:
                    cds_down = allowed_features_list[-1]
                
                if not enter.palindromic:
                    if hit_strand == -1 and cds_down is not None:
                        try:
                            if 'gene' in cds_down.qualifiers:
                                individual_qualifiers['gene'] = cds_down.qualifiers['gene']
                        except (KeyError, AttributeError):
                            pass
                        try:
                            if 'locus_tag' in cds_down.qualifiers:
                                individual_qualifiers['locus_tag'] = cds_down.qualifiers['locus_tag']
                        except (KeyError, AttributeError):
                            pass
                        individual_qualifiers.update(hit.qualifiers)
                        new_feature = create_my_feature(
                                          location=hit.location,
                                          feature_type=hit.type,
                                          strand=hit_strand,
                                          qualifiers=individual_qualifiers)
                        record.features.pop(idx)
                        if cds_down is not None and hit_strand == get_strand(cds_down):
                            record.features.insert(idx, new_feature)

                    elif hit_strand == 1 and cds_up is not None:
                        try:
                            if 'gene' in cds_up.qualifiers:
                                individual_qualifiers['gene'] = cds_up.qualifiers['gene']
                        except (KeyError, AttributeError):
                            pass
                        try:
                            if 'locus_tag' in cds_up.qualifiers:
                                individual_qualifiers['locus_tag'] = cds_up.qualifiers['locus_tag']
                        except (KeyError, AttributeError):
                            pass
                        individual_qualifiers.update(hit.qualifiers)
                        new_feature = create_my_feature(
                                          location=hit.location,
                                          feature_type=hit.type,
                                          strand=hit_strand,
                                          qualifiers=individual_qualifiers)
                        record.features.pop(idx)
                        if cds_up is not None and hit_strand == get_strand(cds_up):
                            record.features.insert(idx, new_feature)

    if enter.duplicate or enter.palindromic:
        record.features.sort(key=lambda f: f.location.start)
        for i in reversed(range(1, len(record.features))):
            idx = len(record.features) - 1 - i
            if idx+1 < len(record.features) and (record.features[idx].type in ('protein_bind', 'promoter')) and \
                    record.features[idx].type == record.features[idx + 1].type:
                if 0 <= record.features[idx + 1].location.start - record.features[idx].location.start <= 2:
                    if enter.duplicate and enter.palindromic or enter.palindromic:
                        if 'bound_moiety' in record.features[idx].qualifiers and \
                           'bound_moiety' in record.features[idx + 1].qualifiers and \
                           record.features[idx].qualifiers['bound_moiety'] == \
                                record.features[idx + 1].qualifiers['bound_moiety']:
                            remove_feature_with_lowest_score(record.features, idx, idx + 1)
                    elif enter.duplicate:
                        if 'bound_moiety' in record.features[idx].qualifiers and \
                           'bound_moiety' in record.features[idx + 1].qualifiers and \
                           record.features[idx].qualifiers['bound_moiety'] == \
                                record.features[idx + 1].qualifiers['bound_moiety'] and \
                                get_strand(record.features[idx]) == get_strand(record.features[idx + 1]):
                            remove_feature_with_lowest_score(record.features, idx, idx + 1)
    
    output_features = []
    # if some features coordinates were replaced due to incorrect location parts joining, restore original values
    if len(replaced_location_features) > 0:
        for index, feature in enumerate(record.features):
            for edited_feature in replaced_location_features:
                # check locus_tag and db_xref attributes to find feature with replaced coordinates
                try:
                    if edited_feature.qualifiers.get('locus_tag') == feature.qualifiers.get('locus_tag') and \
                        edited_feature.qualifiers.get('db_xref') == feature.qualifiers.get('db_xref') and \
                            edited_feature.type == feature.type:
                        record.features[index] = edited_feature
                        break
                except KeyError:
                    pass
            if 'CHECK' in feature.qualifiers.keys():
                del feature.qualifiers['CHECK']
                output_features.append(feature)
    else:
        for feature in record.features:
            if 'CHECK' in feature.qualifiers.keys():
                del feature.qualifiers['CHECK']
                output_features.append(feature)
    
    if output_features:
        score_list = sorting_output_features(output_features)
        score_list.sort()
        output(score_list, output_features)
    
    # Clean up temporary qualifiers
    for feature in record.features:
        for key in ['cds_down_locus_tag', 'cds_up_locus_tag', 'cds_down_gene', 'cds_up_gene']:
            if key in feature.qualifiers:
                del feature.qualifiers[key]
    
    print('\nFeatures added:', len(output_features))
    print('\n' + "-"*50)
    SeqIO.write(record, output_handle, 'genbank')
    total += int(len(output_features))
    break

output_handle.close()
if circular_vs_linear:
    newlines = dna_topology(enter.output_file, circular_vs_linear)
    new_output_file = open(enter.output_file, 'w')
    new_output_file.writelines(newlines)
    new_output_file.close()
input_handle.close()
t_stop = process_time()
print('Total features: ', total)
print('CPU time: {0:.3f} sec'.format(t_stop-t_start))
print('\n' + "="*50)