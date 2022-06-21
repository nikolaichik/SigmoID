import sys
import argparse
import copy
import subprocess
import Bio
import re
from Bio.SeqFeature import FeatureLocation
from Bio.SeqFeature import SeqFeature

from time import process_time


class MySeqFeature(SeqFeature):
    def __str__(self):
        out = "type: {}\n".format(self.type)
        if self.strand == 1:
            out += "location: [{}:{}]({})\n".format(self.location.start+1,
                                                self.location.end, '+')
        if self.strand == -1:
            out += "location: [{}:{}]({})\n".format(self.location.start+1,
                                                self.location.end, '-')
        if self.id and self.id != "<unknown id>":
            out += "id: {}\n".self.id
        out += "qualifiers:\n"
        for qual_key in sorted(self.qualifiers):
            out += " Key: {}, Value: {}\n".format(qual_key,
                                              self.qualifiers[qual_key])
        if Bio.__version__ != '1.73': # to avoid problems with diff biopython versions
            if not hasattr(self, "_sub_features"):
                self._sub_features = []
            if len(self._sub_features) != 0:
                out += "Sub-Features\n"
                for sub_feature in self._sub_features:
                    out += "{}\n".sub_feature
        return out


class AlignmentFeature:
    def __init__(self, length_correction, warning=False):
        self.correction = length_correction
        self.warning = warning


def wrong_promoter_strand(up_feature, hit_feature, down_feature):
    if 'regulatory_class' in hit_feature.qualifiers.keys() and \
       hit_feature.qualifiers['regulatory_class'][0] == 'promoter' and \
       up_feature.location.start < \
       hit_feature.location.start < \
       hit_feature.location.end < \
       down_feature.location.start:
        if hit_feature.strand == -1 and \
           hit_feature.strand != up_feature.strand:
            return True
        elif hit_feature.strand == 1 and \
             hit_feature.strand != down_feature.strand:
            return True
        else:
            return False


def is_within_feature(list_of_features, index, some_hit):
    # 'index' is for feature's index within 'list_of_features'
    if (list_of_features[index].location.start <
        some_hit.location.start <
        list_of_features[index].location.end or
        list_of_features[index].location.start <
        some_hit.location.end <
        list_of_features[index].location.end) or \
        (list_of_features[index].location.start <
            some_hit.location.start <
             some_hit.location.end <
            list_of_features[index+1].location.start and \
            list_of_features[index].strand == +1 and \
            list_of_features[index].strand !=
                list_of_features[index+1].strand):
        # checking if hit is within other features or is between two convergent ones.
        return True
    else:
        return False


def is_within_boundary(list_of_features, index, some_hit):
    for feature in list_of_features[index:]:
        if (feature.location.start - list_of_features[index].location.end) < (enter.boundary+1):
            if (list_of_features[index].location.start+enter.boundary > \
                  some_hit.location.end > \
                  list_of_features[index].location.start and \
                  list_of_features[index].strand == +1) or \
                     (list_of_features[index].location.end-enter.boundary < \
                      some_hit.location.start < \
                      list_of_features[index].location.end and \
                      list_of_features[index].strand == -1):
                # check intergenic distance between feature and one located upstream on the same strand
                try:
                    if list_of_features[index].strand == +1:
                        if (list_of_features[index].location.start-list_of_features[index-1].location.end >= enter.intergenic_distance \
                            and list_of_features[index+1].strand == +1) \
                                or list_of_features[index+1].strand == -1:
                            return True
                        else:
                            return False
                    else:
                        if (list_of_features[index+1].location.start - list_of_features[index].location.end >= enter.intergenic_distance \
                                and list_of_features[index+1].strand == -1) \
                                or list_of_features[index+1].strand == +1:
                            return True
                        else:
                            return False
                except KeyError:
                    pass
            else:
                return False
        else:
            return False


def is_divergent(feature_1, feature_2):
    if feature_1.strand == -1 and \
       feature_1.strand != feature_2.strand:
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


def correction_from_alignments_nhmmer(nhmmer_output_path):
    alignments_correction_features = {}

    def process_entry(alignment_entry):
        '''
        we have written all entry's lines to list, have to process "alifrom" "ali to" (3rd line) as alignment id
        and check presence of chars '-' and '.' in  alignment sequences (lines 7 and 9, zero based count)
        nhmmer alignment entry example:
        >> CP024842  Pectobacterium carotovorum strain 3-2 chromosome, complete genome.
        score  bias    Evalue   hmmfrom    hmm to     alifrom    ali to      envfrom    env to       sq len      acc
       ------ ----- ---------   -------   -------    --------- ---------    --------- ---------    ---------    ----
         ?    7.6   0.0        16         2        30 ..    979114    979140 ..    979113    979140 ..   4977763    0.85

      Alignment:
      score: 7.6 bits
      1OA04_13340_Verified+originalNR+    2 gcggTGtCaCTTTTccttccTcgTTGCAC 30
                                            gcg+TG C CTTTTc+ttc   +TTGCAC
                            CP024842 979114 GCGCTGGCGCTTTTCTTTC--TATTGCAC 979140
                                            6899999*********998..48888876 PP
        '''
        values_list = re.split(r"\W+", alignment_entry[3])
        alifrom, ali_to = values_list[-8], values_list[-7]
        alignment_to_model = re.split(r"\W+", alignment_entry[7])[-2]
        alignment_to_target = re.split(r"\W+", alignment_entry[9])[-2]
        insertions_model_count = alignment_to_model.count('.')
        deletions_model_count = alignment_to_model.count('-')
        insertions_target_count = alignment_to_target.count('.')
        deletions_target_count = alignment_to_target.count('-')
        alignment_features = AlignmentFeature(0)
        # check if insertions/deletions count is greater than 1, in that case issue warning and
        # no further correction is needed
        if any(map(lambda value: value > 1, (insertions_model_count, deletions_model_count,
                                             insertions_target_count, deletions_target_count))):
            alignment_features.warning = True
        if not alignment_features.warning:
            if insertions_model_count == 1 and not (all(deletions_model_count,
                                                        insertions_target_count,
                                                        deletions_target_count)):
                alignment_features.correction = 1
            elif deletions_model_count == 1 and not (all(insertions_model_count,
                                                         insertions_target_count,
                                                         deletions_target_count)):
                alignment_features.correction = -1
        alignments_correction_features[f"{alifrom}-{ali_to}"] = alignment_features


    try:
        with open(nhmmer_output_path, 'r', encoding='UTF=8') as nhmmer_output_content:
            alignment_entry = []
            for line in nhmmer_output_content:
                if line.startswith('>>'):
                    if alignment_entry:
                        process_entry(alignment_entry)
                        alignment_entry = []
                    alignment_entry.append(line)
                if alignment_entry and alignment_entry[0] != line:
                    alignment_entry.append(line)
            process_entry(alignment_entry)
        return alignments_correction_features
    except IOError:
        print('nhmmer output parsing for alignment features failed')
        return none


def nhmm_parser(path_to_file, x):
    try:
        a = open(path_to_file, 'r')
    except IOError:
        sys.exit('Open error! Please check your nhmmer report input file!')
    r = a.readlines()
    b = []
    d = []
    e = []
    for index in range(len(r)):
        d.append([])
        if not r[index].startswith('#') or r[index].startswith('\n'):
            item = r[index].split(' ')
            if len(item) >= 2:
                for part in item:
                    if part != '' and len(part) != 0:
                        part = part.replace('\n', '')
                        d[index].append(part)
    for index in range(len(d)):
        if len(d[index]) != 0:
            b.append(d[index])
    for index in range(len(b)):
        if len(b[index]) <= 10:
            for number in range(len(b[index])):
                b[index+1].insert(number, b[index][number])
    for index in range(len(b)):
        if len(b[index]) > 10:
            e.append(b[index])
    for item in e:
        for num_of_spaces in range(len(e[0])):
            # to avoid problems with additional spaces... e[0] - firstly \
            # splitted string by ' '
            try:
                x.append([item[8+num_of_spaces],
                          item[9+num_of_spaces],
                          int(item[11+num_of_spaces]+'1'),
                          float(item[12+num_of_spaces]),
                          float(item[13+num_of_spaces]),
                          item[0+num_of_spaces],
                          item[1+num_of_spaces],
                          int(item[4+num_of_spaces]),
                          int(item[5+num_of_spaces]),
                          int(item[6+num_of_spaces]),
                          int(item[7+num_of_spaces])
                          ])
            except ValueError:
                pass
            else:
                break


def nhmm_prog(path_to_file, e):
    a = open(path_to_file, 'r')
    r = a.readlines()
    prog_list = []
    for prog_line in r:
        if prog_line.startswith('# Program:') or \
           prog_line.startswith('# Version:'):
            prog_list.append(prog_line)
    prog_list = [item.split(' ') for item in prog_list]
    for item in prog_list:
        for piece in item:
            if piece != '':
                e.append(piece)
    return


def sorting_output_features(lst):
    bit_score_list = []
    for some_feature in lst:
        for key in some_feature.qualifiers.keys():
            if key == 'note':
                temp = some_feature.qualifiers[key]
                temp = temp.split(' ')
                bit_score_list.append(float(temp[-3]))
    return bit_score_list


def score_parser(some_feature):
    for key in some_feature.qualifiers.keys():
        if key == 'note' and type(some_feature.qualifiers['note']) != list:
            temp = some_feature.qualifiers[key]
            temp = temp.split(' ')
            try:
                bit_score = float(temp[-3])
            except ValueError:
                bit_score = None
            return bit_score
        elif key == 'note' and type(some_feature.qualifiers['note']) == list:
            for note in some_feature.qualifiers['note']:
                if note.startswith('nhmmer'):
                    temp = note
                    temp = temp.split(' ')
                    try:
                        bit_score = float(temp[-3])
                    except ValueError:
                        bit_score = None
                    return bit_score


def output(score_list, output_features):
    for val in score_list:
        for some_feature in output_features:
            if val == feature_score(some_feature):
                print (some_feature)
                output_features = [f for f in output_features if f != some_feature]


def feature_score(some_feature):
    for key in some_feature.qualifiers.keys():
        if key == 'note' and type(some_feature.qualifiers[key]) != []:
            temp = some_feature.qualifiers[key]
            temp = temp.split(' ')
            return float(temp[-3])


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
            if featurelist[i].location.start-featurelist[i-1].location.end >= enter.intergenic_distance:
                return True
            else:
                return False
        else:
            return True
    else:
        return False



def createparser():
    parser = argparse.ArgumentParser(
             prog='HmmGen',
             usage='\n%(prog)s <report_file> <input_file> <output_file> [options]',
             description='''This script allows to add features to a genbank \
                            file according to nhmmer results.\
                            Requires Biopython 1.73 (or newer)''',
             epilog='(c) Aliaksandr Damienikan, 2014-2017; the original code was ported to Python3 by'
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
                        version='%(prog)s 2.25 (September 27, 2021)')
    parser.add_argument('-f', '--feature',
                        metavar='<"feature key">',
                        default='unknown type',
                        help='''feature key to add  (promoter, protein_bind \
                                etc.)''')
    parser.add_argument('-s', '--intergenic_distance',
                        type=int,
                        default=100,
                        help='''defines average intergenic distance in annotated genome \'
                             to exclude senseless sites ''')
    parser.add_argument('--nhmmer_output_path',
                        type=str,
                        required=False,
                        help='''path to file containing nhmmer alignments quality output''')
    parser.add_argument('--hmm_model_path',
                        type=str,
                        required='--nhmmer_output_path' in sys.argv,
                        help='''path to hmm model''')
    parser.add_argument('--model_fasta_path',
                        type=str,
                        required='--nhmmer_output_path' in sys.argv,
                        help='''path to fasta file containing sequences representig motif''')
    return parser

version='HmmGen 2.25 (September 27, 2021)'
t_start = process_time()
args = createparser()
enter = args.parse_args()
arguments = sys.argv[1:0]
max_eval = enter.eval
if enter.length and not enter.nhmmer_output_path:
    enter.length = enter.length.split(':')
    if len(enter.length) == 1:
        enter.min_length = False
        enter.max_length = int(enter.length[0])
    else:
        enter.min_length = int(enter.length[0])
        enter.max_length = int(enter.length[1])
elif enter.nhmmer_output_path:
    p = subprocess.run(f"hmmemit -c '{enter.hmm_model_path}'",
                       shell=True,
                       capture_output=True,
                       text=True)
    enter.max_length = len(p.stdout.split('\n')[-2])
    min_length = 0
    with open(enter.model_fasta_path, 'r', encoding='UTF-8') as fasta_file:
        for line in fasta_file:
            if not line.startswith(">"):
                line = line.rstrip('\n')
                if '-' in line:
                    line = line.replace('-','')
                line_length = len(line)
                if not min_length:
                    min_length = line_length
                elif min_length > line_length:
                    min_length = line_length
    enter.min_length = min_length

try:
    from Bio import SeqIO
except ImportError:
    sys.exit('\nYou have no Biopython module installed!\n\
                You can download it here for free: \
                http://biopython.org/wiki/Download\n')
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
    sys.exit('Sorry, but we can\'t edit input file. Plese give another name \
              to output file!')
try:
    output_handle = open(enter.output_file, 'w')
except IOError:
    sys.exit('Open error! Please check your genbank output path!')

print (version)
print ("="*50)
print ('Options used:\n')
for arg in range(1, len(sys.argv)):
    print (sys.argv[arg], end = " ")
file_path = enter.report_file
qualifier = {'CHECK': 'CHECKED!'}
qualifiers_function(enter.qual, qualifier)
allign_list = []
prog = []
nhmm_parser(file_path, allign_list)
nhmm_prog(file_path, prog)
prog[2] = prog[2].replace('\r', '')
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
    record.features.sort(key = lambda SeqFeature:SeqFeature.location.start)
    for index, feature in enumerate(record.features):
        # check feature coordinates, replace coordinates for features with incorrect parts joining
        try:
            if (feature.location.start == 0
                    and feature.location.end == len(record.seq)
                    and feature.type != 'source'):
                replaced_location_features.append(feature)
                edited_feature = SeqFeature()
                for property, value in feature.__dict__.items():
                    if property == 'location':
                        edited_feature.location = FeatureLocation(value.parts[0].start,
                                                                  value.parts[0].end,
                                                                  strand = value.strand)
                    else:
                        edited_feature.__dict__[property] = copy.deepcopy(value)
                record.features[index] = edited_feature
        except AttributeError:
            pass
        except KeyError:
            pass
    if len(replaced_location_features) > 0:
        record.features.sort(key=lambda SeqFeature: SeqFeature.location.start)
    for feature in record.features:
        if feature.type in allowed_types:
            allowed_features_list.append(feature)
    try:
        cds_loc_start = allowed_features_list[0]
    except:
        cds_loc_start = record.features[0]
    try:
        cds_loc_end = allowed_features_list[-1]
    except:
        cds_loc_end = record.features[-1]
    alignment_features_dict = correction_from_alignments_nhmmer(enter.nhmmer_output_path)
    for allign in allign_list:
        from Bio import SeqFeature
        if allign[2] == +1:
            start = int(allign[0])
            end = int(allign[1])
            strnd = int(allign[2])
            e_value = float(allign[3])
            score = allign[4]
            feature_length = end - (start - 1)
            locus = allign[5]
            version = allign[6]
            hmm_from = allign[7]
            hmm_to = allign[8]
            hmm_diff = hmm_to - hmm_from
            ali_from = allign[9]
            ali_to = allign[10]
            ali_diff = ali_to - ali_from
            alignment_features = alignment_features_dict.get(f"{ali_from}-{ali_to}")
            # the problem lies here
            if enter.length and not enter.min_length:
                if hmm_to < enter.max_length:
                    end = (enter.max_length + alignment_features.correction - hmm_to) + ali_to
                else:
                    end = ali_to
                if hmm_from > 1:
                    start = ali_from - (hmm_from - 1)
                else:
                    start = ali_from
            elif enter.length and enter.min_length:
                if (enter.min_length < hmm_to < enter.max_length or
                        hmm_to <= enter.min_length < enter.max_length):
                    end = (enter.max_length + alignment_features.correction - hmm_to) + ali_to
                elif hmm_to <= enter.min_length:
                    end = (enter.min_length - hmm_to) + ali_to
                if hmm_from > 1:
                    start = ali_from - (hmm_from - 1)
                else:
                    start = ali_from
        else:
            start = int(allign[1])
            end = int(allign[0])
            strnd = int(allign[2])
            e_value = float(allign[3])
            score = allign[4]
            feature_length = end - (start-1)
            locus = allign[5]
            version = allign[6]
            hmm_from = allign[7]
            hmm_to = allign[8]
            hmm_diff = hmm_to - hmm_from
            ali_from = allign[10]
            ali_to = allign[9]
            ali_diff = ali_to - ali_from
            alignment_features = alignment_features_dict.get(f"{ali_from}-{ali_to}")
            # the problem lies here
            if enter.length and not enter.min_length:
                if hmm_from > 1:
                    end = (hmm_from - 1) + ali_to
                else:
                    end = ali_to
                if hmm_to < enter.max_length:
                    start = ali_from - (enter.max_length + alignment_features.correction - hmm_to)
                else:
                    start = ali_from
            elif enter.length and enter.min_length:
                if hmm_from > 1:
                    end = (hmm_from - 1) + ali_to
                else:
                    end = ali_to
                if enter.min_length < hmm_to < enter.max_length or \
                        hmm_to <= enter.min_length < enter.max_length:
                    start = ali_from - (enter.max_length + alignment_features.correction - hmm_to)
                elif hmm_to <= enter.min_length:
                    start = ali_from - (enter.min_length-hmm_to)
        start_pos = SeqFeature.ExactPosition(start-1)
        end_pos = SeqFeature.ExactPosition(end)
        feature_location = FeatureLocation(start_pos, end_pos)
        feature_type = enter.feature
        from Bio.SeqFeature import SeqFeature
        note_qualifier = dict()
        note_qualifier['note'] = str('{} score {} E-value {}'.format(prog[2].replace('\n', ''), score, e_value))
        my_feature = MySeqFeature(
                         location=feature_location,
                         type=feature_type,
                         strand=strnd,
                         qualifiers=dict(list(qualifier.items()) + list(note_qualifier.items())))

        if (hmm_diff - ali_diff == 0 or
                hmm_diff - ali_diff == 1 or
                hmm_diff - ali_diff == (-1)) and \
                (score >= enter.score or not enter.score):
            for i in reversed(range(len(record.features))):
                if record.features[i].location.start < \
                        my_feature.location.start and \
                   (not enter.eval or e_value <= enter.eval or
                   enter.score):
                    for c in range(len(allowed_features_list)-1):
                        if allowed_features_list[c].location.start <= \
                                my_feature.location.start <= \
                                allowed_features_list[c+1].location.start:
                            record.features.insert(i+1, my_feature)
                            break
                    break

                if i == 0 and \
                        record.features[i].location.start > \
                        my_feature.location.start:
                    record.features.insert(i, my_feature)
                    break
                if i == len(record.features) - 1 and \
                        record.features[i].location.start < \
                        my_feature.location.start:
                    record.features.insert(i + 1, my_feature)
                    break

    if enter.insert:
        hit_list = []
        for i in range(len(record.features)):
            if 'CHECK' in record.features[i].qualifiers.keys():
                hit_list.append(record.features[i])
        for i in reversed(range(len(hit_list))):
            i = len(hit_list) - 1 - i
            for n in range(len(allowed_features_list) - 1):
                if (
                    is_within_feature(allowed_features_list,
                                      n,
                                      hit_list[i]) and \
                    not is_within_boundary(allowed_features_list,
                                           n,
                                           hit_list[i])
                    ) or \
                    wrong_promoter_strand(allowed_features_list[n],
                                         hit_list[i],
                                         allowed_features_list[n + 1]):
                    hit_list.pop(i)
                    break
        for i in reversed(range(len(record.features))):
            if 'CHECK' in record.features[i].qualifiers.keys() and \
               not any(record.features[i] == hit for hit in hit_list):
                record.features.pop(i)

    if not enter.name:
        for i in reversed(range(len(record.features))):
            i = len(record.features) - 1 - i
            if 'CHECK' in record.features[i].qualifiers.keys():
                individual_qualifiers = {}
                hit = record.features[i]
                for n in range(i+1, len(record.features)):
                    if record.features[n].type in allowed_types and \
                       record.features[n].location.start > hit.location.end:
                        cds_up = record.features[n]
                        break
                if hit.location.start > \
                        allowed_features_list[-1].location.end:
                    cds_up = allowed_features_list[0]
                for c in reversed(range(len(allowed_features_list))):
                    if allowed_features_list[c].location.end < \
                            hit.location.start:
                        cds_down = allowed_features_list[c]
                        break
                    elif hit.location.end < \
                            allowed_features_list[0].location.start:
                        cds_down = allowed_features_list[-1]
                        break
                if not enter.palindromic:
                    if hit.strand == int('-1'):
                        try:
                            individual_qualifiers['gene'] = \
                                cds_down.qualifiers['gene']
                        except KeyError:
                            pass
                        try:
                            individual_qualifiers['locus_tag'] = \
                                cds_down.qualifiers['locus_tag']
                        except KeyError:
                            pass
                        individual_qualifiers.update(hit.qualifiers)
                        new_feature = MySeqFeature(
                                          location=hit.location,
                                          type=hit.type,
                                          strand=hit.strand,
                                          qualifiers=individual_qualifiers)
                        record.features.pop(i)
                        if hit.strand == cds_down.strand:
                            record.features.insert(i, new_feature)

                    elif hit.strand == int('+1'):
                        try:
                            individual_qualifiers['gene'] = \
                                cds_up.qualifiers['gene']
                        except KeyError:
                            pass
                        try:
                            individual_qualifiers['locus_tag'] = \
                                cds_up.qualifiers['locus_tag']
                        except KeyError:
                            pass

                        individual_qualifiers.update(hit.qualifiers)
                        new_feature = MySeqFeature(
                                          location=hit.location,
                                          type=hit.type,
                                          strand=hit.strand,
                                          qualifiers=individual_qualifiers)
                        record.features.pop(i)
                        if hit.strand == cds_up.strand:
                            record.features.insert(i, new_feature)
                elif enter.palindromic and \
                        cds_up.strand == cds_down.strand:
                    if cds_up.strand == 1: # then cds_down is (+) too and couldn't be regulated
                        try:
                            individual_qualifiers['gene'] = \
                                cds_up.qualifiers['gene']
                        except KeyError:
                            pass
                        try:
                            individual_qualifiers['locus_tag'] = \
                                cds_up.qualifiers['locus_tag']
                        except KeyError:
                            pass
                        individual_qualifiers.update(hit.qualifiers)
                        new_feature = MySeqFeature(
                                          location=hit.location,
                                          type=hit.type,
                                          strand=hit.strand,
                                          qualifiers=individual_qualifiers)
                        record.features.pop(i)
                        record.features.insert(i, new_feature)
                    if cds_down.strand == -1: # then cds_up is (-) too and couldn't be regulated
                        try:
                            individual_qualifiers['gene'] = \
                                cds_down.qualifiers['gene']
                        except KeyError:
                            pass
                        try:
                            individual_qualifiers['locus_tag'] = \
                                cds_down.qualifiers['locus_tag']
                        except KeyError:
                            pass
                        individual_qualifiers.update(hit.qualifiers)
                        new_feature = MySeqFeature(
                                          location=hit.location,
                                          type=hit.type,
                                          strand=hit.strand,
                                          qualifiers=individual_qualifiers)
                        record.features.pop(i)
                        record.features.insert(i, new_feature)
                elif enter.palindromic and cds_up.strand != cds_down.strand:
                    if hit.strand == int('-1'):
                        try:
                            individual_qualifiers['cds_down_gene'] =\
                                cds_down.qualifiers['gene']
                        except KeyError:
                            pass
                        try:
                            individual_qualifiers['cds_down_locus_tag'] = \
                                cds_down.qualifiers['locus_tag']
                        except KeyError:
                            pass
                        try:
                            individual_qualifiers['cds_up_gene'] = \
                                cds_up.qualifiers['gene']
                        except KeyError:
                            pass
                        try:
                            individual_qualifiers['cds_up_locus_tag'] = \
                                cds_up.qualifiers['locus_tag']
                        except KeyError:
                            pass
                        individual_qualifiers.update(hit.qualifiers)
                        new_feature = MySeqFeature(
                                          location=hit.location,
                                          type=hit.type,
                                          strand=hit.strand,
                                          qualifiers=individual_qualifiers)
                        record.features.pop(i)
                        if hit.strand == cds_down.strand or \
                           not enter.insert:
                            record.features.insert(i, new_feature)
                    if hit.strand == int('+1'):
                        try:
                            individual_qualifiers['cds_up_gene'] = \
                                cds_down.qualifiers['gene']
                        except KeyError:
                            pass
                        try:
                            individual_qualifiers['cds_up_locus_tag'] = \
                                cds_down.qualifiers['locus_tag']
                        except KeyError:
                            pass
                        try:
                            individual_qualifiers['cds_down_gene'] = \
                                cds_up.qualifiers['gene']
                        except KeyError:
                            pass
                        try:
                            individual_qualifiers['cds_down_locus_tag'] = \
                                cds_up.qualifiers['locus_tag']
                        except KeyError:
                            pass
                        individual_qualifiers.update(hit.qualifiers)
                        new_feature = MySeqFeature(
                                          location=hit.location,
                                          type=hit.type,
                                          strand=hit.strand,
                                          qualifiers=individual_qualifiers)
                        record.features.pop(i)
                        if hit.strand == cds_up.strand or \
                           not enter.insert:
                            record.features.insert(i, new_feature)
                if enter.boundary != 0:
                    for n in range(len(allowed_features_list)):
                        if is_within_boundary(allowed_features_list, n, hit) and \
                           (allowed_features_list[n].strand == hit.strand or \
                            (enter.palindromic and
                               ((hit.strand != cds_up.strand and hit.strand == -1) or \
                                 (hit.strand != cds_down.strand and hit.strand == +1)))):
                            try:
                                individual_qualifiers['gene'] = \
                                    allowed_features_list[n].qualifiers['gene']
                            except KeyError:
                                pass
                            try:
                                individual_qualifiers['locus_tag'] = \
                                allowed_features_list[n].qualifiers['locus_tag']
                            except KeyError:
                                pass
                            individual_qualifiers.update(hit.qualifiers)
                            new_feature = MySeqFeature(
                                              location=hit.location,
                                              type=hit.type,
                                              strand=hit.strand,
                                              qualifiers=individual_qualifiers)
                            record.features.pop(i)
                            record.features.insert(i, new_feature)
    if enter.palindromic:
        try:
            first_cds = allowed_features_list[0]
        except:
            first_cds = record.features[0]
        try:
            last_cds = allowed_features_list[-1]
        except:
            last_cds = record.features[-1]
        for i in reversed(range(1, len(record.features))):
            i = len(record.features)-1-i
            if 'CHECK' in record.features[i].qualifiers.keys() and \
                    i < len(record.features):
                hit = record.features[i]
                for c in reversed(range(len(allowed_features_list))):
                    if allowed_features_list[c].location.end < \
                            hit.location.start:
                        cds_down = allowed_features_list[c]
                        break
                    elif hit.location.end < \
                            allowed_features_list[0].location.start:
                        cds_down = allowed_features_list[-1] # for circular chromosomes
                        break
                for c in range(len(allowed_features_list)):
                    if allowed_features_list[c].location.start > \
                            hit.location.end:
                        cds_up = allowed_features_list[c]
                        break
                    elif hit.location.start > \
                            allowed_features_list[-1].location.end:
                        cds_up = allowed_features_list[0] # for circular chromosomes
                        break
                if 'CHECK' in record.features[i+1].qualifiers.keys() and \
                        (hit.location.start ==
                         record.features[i+1].location.start and
                         hit.location.end ==
                         record.features[i+1].location.end):
                    left_distance = hit.location.start - cds_down.location.end
                    right_distance = cds_up.location.start - hit.location.end
                    if is_divergent(cds_down, cds_up) and \
                       last_cds.location.start > hit.location.start > \
                            first_cds.location.start:
                        if left_distance > right_distance and \
                           hit.strand == (+1):
                            del record.features[i+1]
                        elif left_distance > right_distance and \
                                hit.strand == (-1):
                            del record.features[i]
                        elif left_distance < right_distance and \
                                hit.strand == (+1):
                            del record.features[i]
                        elif left_distance < right_distance and \
                                hit.strand == (-1):
                            del record.features[i+1]
                    elif not is_divergent(cds_down, cds_up) and \
                         cds_up.strand == cds_down.strand:
                        if hit.strand == cds_up.strand:
                            del record.features[i+1]
                        elif hit.strand != cds_up.strand:
                            del record.features[i]  # delets "hit"'''
                    elif not is_divergent(cds_down, cds_up) and \
                         cds_up.strand != cds_down.strand:
                         del record.features[i+1]

    if enter.duplicate is True:
        for i in reversed(range(1, len(record.features))):
            i = len(record.features)-1-i
            if (record.features[i].type in ['protein_bind', 'promoter']) and \
                    record.features[i].type == record.features[i+1].type:
                if 'bound_moiety' in record.features[i].qualifiers.keys() and \
                   'bound_moiety' in record.features[i+1].qualifiers.keys():
                    bound_moiety_one = \
                        record.features[i].qualifiers['bound_moiety']
                    bound_moiety_two = \
                        record.features[i+1].qualifiers['bound_moiety']
                    if bound_moiety_one == bound_moiety_two and \
                        record.features[i].strand == \
                            record.features[i+1].strand and \
                       0 <= record.features[i+1].location.start - \
                            record.features[i].location.start <= 2:
                        if score_parser(record.features[i]) != None and score_parser(record.features[i+1]) != None :
                            if score_parser(record.features[i]) > score_parser(record.features[i+1]):
                                del record.features[i+1]
                            elif score_parser(record.features[i]) < \
                                    score_parser(record.features[i+1]):
                                del record.features[i]
    output_features = []
    # if some features coordinates were replaced due to incorrect location parts joining, restore original values
    if len(replaced_location_features) > 0:
        for index,feature in enumerate(record.features):
            for ind, edited_feature in enumerate(replaced_location_features):
                # check locus_tag and db_xref attributes to find feature with replaced coordinates
                try:
                    if edited_feature.qualifiers['locus_tag'] == feature.qualifiers['locus_tag'] and \
                        edited_feature.qualifiers['db_xref'] == feature.qualifiers['db_xref'] and \
                            edited_feature.__dict__['type'] == feature.__dict__['type'] :
                        record.features[index] = replaced_location_features[ind]
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
    score_list = sorting_output_features(output_features)
    score_list.sort()
    output(score_list, output_features)
    for feature in record.features:
        if 'cds_down_locus_tag' in feature.qualifiers.keys():
            del feature.qualifiers['cds_down_locus_tag']
        if 'cds_up_locus_tag' in feature.qualifiers.keys():
            del feature.qualifiers['cds_up_locus_tag']
        if 'cds_down_gene' in feature.qualifiers.keys():
            del feature.qualifiers['cds_down_gene']
        if 'cds_up_gene' in feature.qualifiers.keys():
            del feature.qualifiers['cds_up_gene']
    print ('\nFeatures added:', len(output_features))
    print ('\n' + "-"*50)
    SeqIO.write(record, output_handle, 'genbank')
    total += int(len(output_features))
    break
output_handle.close()
newlines = dna_topology(enter.output_file, circular_vs_linear)
new_output_file = open(enter.output_file, 'w')
new_output_file.writelines(newlines)
new_output_file.close()
input_handle.close()
t_stop = process_time()
print ('Total features: ', total)
print ('CPU time: {0:.3f} sec'.format(t_stop-t_start))
print ('\n' + "="*50)
