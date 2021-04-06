import sys
import argparse
from time import process_time
import Bio
from Bio.SeqFeature import FeatureLocation
from Bio.SeqFeature import SeqFeature
from decimal import *


class MySeqFeature(SeqFeature):
    def __str__(self):
        out = "type: %s\n" % self.type
        if self.strand == 1:
            out += "location: [%s:%s](%s)\n" % (self.location.start+1,
                                                self.location.end, '+')
        if self.strand == -1:
            out += "location: [%s:%s](%s)\n" % (self.location.start+1,
                                                self.location.end, '-')
        if self.id and self.id != "<unknown id>":
            out += "id: %s\n" % self.id
        out += "qualifiers:\n"
        for qual_key in sorted(self.qualifiers):
            out += " Key: %s, Value: %s\n" % (qual_key,
                                              self.qualifiers[qual_key])
        if Bio.__version__ != '1.68': # to avoid problems with diff biopython versions
            if not hasattr(self, "_sub_features"):
                self._sub_features = []
            if len(self._sub_features) != 0:
                out += "Sub-Features\n"
                for sub_feature in self._sub_features:
                    out += "%s\n" % sub_feature
        return out


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
                return True
            else:
                return False
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


def nhmm_parser(path_to_file, max_model_length):
    x = []
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
                if max_model_length is False:
                    max_model_length = int(item[5+num_of_spaces]) 
                elif max_model_length is not False and \
                 int(item[5+num_of_spaces]) > max_model_length:
                    max_model_length = int(item[5+num_of_spaces])
                else:
                    pass
                    
            except ValueError:
                pass
            else:
                break
    return [x, max_model_length]

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
            bit_score = float(temp[-3])
            return bit_score
        elif key == 'note' and type(some_feature.qualifiers['note']) == list:
            for note in some_feature.qualifiers['note']:
                if note.startswith('nhmmer'):
                    temp = note
                    temp = temp.split(' ')
                    bit_score = float(temp[-3])
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


def createparser():
    parser = argparse.ArgumentParser(
             prog='RepeatGen',
             usage='\n%(prog)s <report_file> <input_file> <output_file> [options]',
             description='''This script allows to add features to a genbank \
                            file according to nhmmer results.\
                            Requires Biopython 1.64 (or newer)''',
             epilog='(c) Aliaksandr Damienikan, 2018.')
    parser.add_argument('report_file',
                        help='path to nhmmer report file produced with \
                              -tblout option.')
    parser.add_argument('input_file',
                        help='path to input Genbank file.')
    parser.add_argument('output_file', help='path to output Genbank file.')
    parser.add_argument('-L', '--length',
                        default=False,
                        help='annotate features of specified length (range of lengths).',
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
                        help='''filter palindromic repeats.''')
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
    parser.add_argument('-c', '--coverage',
                        default=0.5,
                        type=float,
                        metavar='<float>',
                        help='''minimal coverage for input model (default is 0.5)''')
    parser.add_argument('-i', '--insert',
                        action='store_const',
                        const=True,
                        default=False,
                        help='''don't add features inside CDS.''')
    parser.add_argument('-a', '--alilen',
                        type=int,
                        default=False,
                        metavar='<integer>',
                        help='''set profile alignment length (the largest hmm_to if not specified).''')
    parser.add_argument('-b', '--boundary',
                        type=int,
                        default=0,
                        metavar='<integer>',
                        help='''set allowed length boundary for hits being within features.''')
    parser.add_argument('-d', '--duplicate',
                        action='store_const',
                        const=True,
                        default=False,
                        help='''no duplicate features with the same location \
                                and the same rpt_family qualifier
                                value.''')
    parser.add_argument('-v', '--version',
                        action='version',
                        version='%(prog)s 1.3 (April 6, 2021)')
    parser.add_argument('-f', '--feature',
                        metavar='<"feature key">',
                        default='unknown type',
                        help='''feature key to add  (promoter, protein_bind \
                                etc.)''')
    return parser

t_start = process_time()
args = createparser()
enter = args.parse_args()
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
if not 0 <= enter.coverage <= 1:
    sys.exit('Coverage value is invalid, please specify values in 0.0-1.0 range') 
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
print ('\nRepeatGen 1.0 (January 6, 2018)')
print ("="*50)
print ('Options used:\n')
for arg in range(1, len(sys.argv)):
    print (sys.argv[arg])
file_path = enter.report_file
qualifier = {'CHECK': 'CHECKED!'}
qualifiers_function(enter.qual, qualifier)
prog = []
maxlen = 0
parser_result = nhmm_parser(file_path, maxlen)
allign_list = parser_result[0]
if enter.alilen is False:
    model_length = parser_result[1]  # if allignment length is not specified, maximal observed hmm_to is used
else:
    model_length = enter.alilen
nhmm_prog(file_path, prog)
prog[2] = prog[2].replace('\r', '')
records = SeqIO.parse(input_handle, 'genbank')
allowed_types = ['CDS', 'ncRNA', 'sRNA', 'tRNA', 'misc_RNA']
total = 0
for record in records:
    print ('\n' + "-"*50 + "\nCONTIG: " + record.id)
    print ('\n   FEATURES ADDED: \n')
    allowed_features_list = []
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

    for allign in allign_list:
        from Bio import SeqFeature
        if allign[2] == +1:
            env_start = int(allign[0]) #env_from
            env_end = int(allign[1]) #env_to
            strnd = int(allign[2])
            e_value = float(allign[3])
            score = allign[4]
            locus = allign[5]
            version = allign[6]
            hmm_from = allign[7]
            hmm_to = allign[8]
            hmm_diff = hmm_to - hmm_from
            getcontext().prec = 4
            hmm_coverage = Decimal((hmm_diff+1))/Decimal(model_length)
            ali_start = allign[9]
            ali_end = allign[10]
            ali_diff = ali_end - ali_start
        else:
            env_start = int(allign[1]) #env_to
            env_end = int(allign[0]) #env_from
            strnd = int(allign[2])
            e_value = float(allign[3])
            score = allign[4]
            locus = allign[5]
            version = allign[6]
            hmm_from = allign[7]
            hmm_to = allign[8]
            hmm_diff = hmm_to - hmm_from
            getcontext().prec = 4
            hmm_coverage = Decimal((hmm_diff+1))/Decimal(model_length)
            ali_start = allign[10]
            ali_end = allign[9]
            ali_diff = ali_end - ali_start
        start_pos = SeqFeature.ExactPosition(env_start-1)
        end_pos = SeqFeature.ExactPosition(env_end)
        feature_length = env_end - (env_start-1)
        feature_location = FeatureLocation(start_pos, end_pos)
        feature_type = enter.feature
        from Bio.SeqFeature import SeqFeature
        note_qualifier = dict()
        note_qualifier['note'] = str('%s score %s E-value %s' %
                                     (prog[2].replace('\n', ''),
                                      score,
                                      e_value))
        my_feature = MySeqFeature(
                         location=feature_location,
                         type=feature_type,
                         strand=strnd,
                         qualifiers=dict(list(qualifier.items()) +
                                         list(note_qualifier.items())))
        if Decimal(hmm_coverage) >= Decimal(enter.coverage) and \
                (
                 (enter.min_length != 0 and enter.min_length <= feature_length <= enter.max_length) or \
                 (enter.min_length == False and feature_length == enter.max_length) \
                ) and \
                (score >= enter.score or enter.score is False):
            for i in reversed(range(len(record.features))):
                if record.features[i].location.start < \
                        my_feature.location.start and \
                   (enter.eval is False or e_value <= enter.eval or
                   enter.score is not False):
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
                if i == len(record.features)-1 and \
                        record.features[i].location.start < \
                        my_feature.location.start:
                    record.features.insert(i+1, my_feature)
                    break


    repeats = []
    for feature in record.features:
       if 'rpt_family' in feature.qualifiers.keys():
           if (feature.qualifiers['rpt_family'] == qualifier['rpt_family'] and \
              enter.duplicate is True) or enter.duplicate is False:
               repeats.append([feature, record.features.index(feature)])

    if enter.insert:
        hit_list = []
        for i in range(len(record.features)):
            if 'CHECK' in record.features[i].qualifiers.keys():
                hit_list.append(record.features[i])
        for i in reversed(range(len(hit_list))):
            i = len(hit_list)-1-i
            for n in range(len(allowed_features_list)-1):
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
                                         allowed_features_list[n+1]):
                    hit_list.pop(i)
                    break
        for i in reversed(range(len(record.features))):
            if 'CHECK' in record.features[i].qualifiers.keys() and \
               not any(record.features[i] == hit for hit in hit_list):
                record.features.pop(i)

    if enter.palindromic:
        del_counter = 0
        deleted = []
        for feature in repeats:
            if feature not in deleted:
                for n in range(repeats.index(feature)+1, len(repeats)):
                    further = repeats[n][0]
                    if further.location.strand != feature[0].location.strand and \
                     0 <= (further.location.start-feature[0].location.start) <= 2 and \
                     0 <= (further.location.end-feature[0].location.end) <= 2 and \
                     'CHECK' in record.features[feature[1]-del_counter].qualifiers.keys():
                       del record.features[feature[1]-del_counter]
                       del_counter += 1
                       deleted.append(feature)
                    elif enter.duplicate is True:
                        if further.location.strand != feature[0].location.strand and \
                         0 <= (further.location.start-feature[0].location.start) <= 2 and \
                         0 <= (further.location.end-feature[0].location.end) <= 2 and \
                         'CHECK' not in record.features[feature[1]-del_counter].qualifiers.keys() and \
                         'CHECK' in record.features[repeats[n][1]-del_counter].qualifiers.keys():
                            del record.features[repeats[n][1]-del_counter]
                            del_counter += 1
                            deleted.append(further)                   
                   
    if enter.duplicate is True and \
       'rpt_family' in qualifier.keys():
        repeats = []
        del_counter = 0
        for feature in record.features:
           if 'rpt_family' in feature.qualifiers.keys():
               if feature.qualifiers['rpt_family'] == qualifier['rpt_family']:
                   repeats.append([feature, record.features.index(feature)])
        for repeat in repeats:
            for n in range(repeats.index(repeat)+1, len(repeats)):
                further_repeat = repeats[n][0]
                if 0 <= (further_repeat.location.start - repeat[0].location.start) <= 2 and \
                   0 <= (further_repeat.location.end - repeat[0].location.end) <= 2 and \
                   repeat[0].qualifiers['rpt_family'] == further_repeat.qualifiers['rpt_family']:
                    if score_parser(repeat[0]) >= \
                                 score_parser(further_repeat):
                        del record.features[repeat[1]-del_counter]
                    elif score_parser(repeat[0]) < \
                                 score_parser(further_repeat):
                        del record.features[repeats[n][0]-del_counter]
                    del_counter += 1
                    break
                    
    output_features = []
    for feature in record.features:
        if 'CHECK' in feature.qualifiers.keys():
            del feature.qualifiers['CHECK']
            output_features.append(feature)
    score_list = sorting_output_features(output_features)
    score_list.sort()
    output(score_list, output_features)
    print ('\nFeatures added:', len(output_features))
    print ('\n' + "-"*50)
    SeqIO.write(record, output_handle, 'genbank')

    total += int(len(output_features))
output_handle.close()
newlines = dna_topology(enter.output_file, circular_vs_linear)
new_output_file = open(enter.output_file, 'w')
new_output_file.writelines(newlines)
new_output_file.close()
input_handle.close()
t_end = process_time()
print ('Total features: ', total)
print ('CPU time: {0:.3f} sec'.format(t_end-t_start))
print ('\n' + "="*50)
