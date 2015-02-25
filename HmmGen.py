

import sys
import ast
import argparse
import time
from Bio.SeqFeature import FeatureLocation


def createParser():

    parser = argparse.ArgumentParser(
             prog = 'HmmGen',
             usage = '\n%(prog)s <report_file>  <input_file> <output_file> [options]',
             description = '''This script allows to add features to a genbank file according to nhmmer results.
    Requires Biopython 1.64 (or newer)''',
             epilog = '''(c) Aliaksandr Damienikan, 2014-2015.'''
            )
    parser.add_argument('report_file',
                        help='''path to nhmmer report file produced with -tblout option.''')
    parser.add_argument('input_file',
                        help= '''path to input Genbank file.''')
    parser.add_argument('output_file', help= '''path to output Genbank file.''')
    parser.add_argument('-L', '--length',
                        default=False,
                        help='''maximal and minimal allowed length of profile to genome alignment.''',
                        metavar='<integer> or <integer>:<integer>',
                        required=False,
                        type=str,
                        )
    parser.add_argument('-q', '--qual',
                        default='',
                        metavar='<key#"value">',
                        nargs='*',
                        dest='qual',
                        help='''add this qualifier to each annotated feature.''')
    parser.add_argument('-p', '--palindromic',
                        action='store_const',
                        const=True,
                        default=False,
                        help='''filter palindromic sites.''')
    parser.add_argument('-n', '--name',
                        action='store_const',
                        const=True,
                        default=False,
                        help='''don\'t pick \'locus_tag\' and \'gene\' qualifiers from the next CDS feature.''')
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
    parser.add_argument('-d', '--duplicate',
                        action='store_const',
                        const=True,
                        default=False,
                        help='''no duplicate features with the same location and the same protein_bind qualifier
                                value''')
    parser.add_argument('-v','--version', action='version', version='%(prog)s 2.4 (February 25, 2015)')
    parser.add_argument('-f', '--feature',
                        metavar='<"feature key">',
                        default='unknown type',
                        help='''feature key to add  (promoter, protein_bind etc.)''')
    return parser


args = createParser()
enter = args.parse_args()
arguments = sys.argv[1:0]
max_eval = enter.eval
if enter.length != False:
    enter.length = enter.length.split(':')
    if len(enter.length) == 1:
        enter.min_length = int(enter.length[0])
        enter.max_length = int(enter.length[0])
    else:
        enter.min_length = int(enter.length[0])
        enter.max_length = int(enter.length[1])
try:
    from Bio import SeqIO
except ImportError:
    sys.exit('\nYou have no Biopython module installed!\nYou can download it here for free: http://biopython.org/wiki/Download\n')

try:
    input_handle = open(enter.input_file, 'r')
except IOError:
    sys.exit('Open error! Please check your genbank input file!')

try:
    output_handle = open(enter.output_file, 'w')
except IOError:
    sys.exit('Open error! Please check your genbank output path!')


print '\nHmmGen 2.4 (February 25, 2015)'
print "="*50
print 'Options used:\n'
for arg in range(1, len(sys.argv)):
    print sys.argv[arg],

def qualifiers_function(qualifiers, var):
    qual_var = []
    for q in qualifiers:
        if any(symbol == '#' for symbol in q):
            qual_var.append(q.split('#'))
        else:
            sys.exit('Please check your general qualifiers typing')
    for n in range(len(qual_var)):
        value_list = []
        for i in range(len(qual_var)):
            if qual_var[n][0] == qual_var[i][0] and qual_var[i][1] not in value_list:
                value_list.append(qual_var[i][1])
                var[qual_var[n][0]] = value_list
    return var

def nhmm_parser(path_to_file, x):
    try:
        a = open(path_to_file, 'r')
    except IOError:
        sys.exit('Open error! Please check your nhmmer report input file!')
    r = a.readlines()
    b = []
    c = []
    e=[]
    for i in range(len(r)):
        c.append([])
        if r[i].startswith('#') is False or r[i].startswith('\n') is True:
            item = r[i].split(' ')
            if len(item) >= 2:
                for n in item:
                    if n != '' and len(n) != 0:
                        n = n.replace('\n', '')
                        c[i].append(n)
    for i in range(len(c)):
        if len(c[i]) != 0:
            b.append(c[i])
    for i in range(len(b)):
        if len(b[i]) <= 10:
            for n in range(len(b[i])):
                b[i+1].insert(n, b[i][n])
    for i in range(len(b)):
        if len(b[i]) > 10:
            e.append(b[i])
    b=[]
    for item in e:
        x.append([item[8], item[9], int(item[11]+'1'),
                  float(item[12]), float(item[13]), item[0],
                  item[1], int(item[4]), int(item[5]),
                  int(item[6]), int(item[7])])

def nhmm_prog(path_to_file, e):

    a = open(path_to_file, 'r')
    r = a.readlines()
    prog_list = []
    for line in r:
        if line.startswith('# Program:') is True or line.startswith('# Version:') is True:
            prog_list.append(line)
    prog_list = [item.split(' ') for item in prog_list]
    for item in prog_list:
        for i in item:
            if i != '':
                e.append(i)
    return

def sorting_output_features(lst):
    bit_score_list = []
    for feature in lst:
        for key in feature.qualifiers.keys():
            if key == 'note':
                temp = feature.qualifiers[key]
                temp = temp.split(' ')
                bit_score_list.append(float(temp[-3]))
    return bit_score_list

def score_parser(feature):
    for key in feature.qualifiers.keys():
        if key == 'note' and type(feature.qualifiers['note']) != list:
            temp = feature.qualifiers[key]
            temp = temp.split(' ')
            bit_score = float(temp[-3])
            return bit_score
        elif key == 'note' and type(feature.qualifiers['note']) == list:
            for note in feature.qualifiers['note']:
                if note.startswith('nhmmer') == True:
                    temp = note
                    temp = temp.split(' ')
                    bit_score = float(temp[-3])
                    return bit_score

def output(score_list, output_features):
    for val in score_list:
        for feature in output_features:
            if val == feature_score(feature):
                print feature
                output_features = [f for f in output_features if f != feature]

def feature_score(feature):
    for key in feature.qualifiers.keys():
        if key == 'note' and type(feature.qualifiers[key]) != []:
            temp = feature.qualifiers[key]
            temp = temp.split(' ')
            return float(temp[-3])

file_path = enter.report_file
qualifier = {'CHECK':'CHECKED!'}
qualifiers_function(enter.qual, qualifier)
allign_list = []
prog = []
nhmm_parser(file_path, allign_list)
nhmm_prog(file_path, prog)
prog[2] = prog[2].replace('\r', '')
records = SeqIO.parse(input_handle, 'genbank')

for record in records:
    print '\n' + "-"*50 + "\nCONTIG: " +  record.id
    print '\n   FEATURES ADDED: \n'
    global CDS_list
    CDS_list = []
    for feature in record.features:
        if feature.type == 'CDS':
            CDS_list.append(feature)

    cds_loc_start = CDS_list[0]
    cds_loc_end = CDS_list[-1]

    for allign in allign_list:
        from Bio import SeqFeature
        if allign[2] == +1:
            start = int(allign[0])
            end = int(allign[1])
            strnd = int(allign[2])
            e_value = float(allign[3])
            score = allign[4]
            feature_length = end - (start-1)
            locus = allign[5]
            version = allign[6]
            hmm_from = allign[7]
            hmm_to = allign[8]
            hmm_diff = hmm_to - hmm_from
            ali_from = allign[9]
            ali_to = allign[10]
            ali_diff = ali_to - ali_from
            if enter.length != False:
                if hmm_to < enter.max_length:
                    end = (enter.max_length-hmm_to)+ali_to
                else:
                    end = ali_to
                if hmm_from > 1:

                    start = ali_from-(hmm_from-1)
                else:
                    start = ali_from
        elif allign[2] == -1:
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
            if enter.length != False:
                if hmm_from > 1:
                    end = (hmm_from-1)+ali_to
                else:
                    end = ali_to
                if hmm_to < enter.max_length:
                    start = ali_from-(enter.max_length-hmm_to)
                else:
                    start = ali_from
        start_pos = SeqFeature.ExactPosition(start-1)
        end_pos = SeqFeature.ExactPosition(end)
        feature_location = FeatureLocation(start_pos, end_pos)
        feature_type = enter.feature
        from Bio.SeqFeature import SeqFeature
        note_qualifier = dict()
        note_qualifier['note'] = str('%s score %s E-value %s' % (prog[2].replace('\n', ''), score, e_value))
        my_feature = SeqFeature(location=feature_location, type=feature_type, strand=strnd,
                                qualifiers=dict(qualifier.items()+note_qualifier.items()))
        if (hmm_diff - ali_diff == 0 or hmm_diff - ali_diff == 1 or hmm_diff - ali_diff == (-1)) and \
            (score >= enter.score or enter.score == False):
            for i in reversed(xrange(len(record.features))):
                if record.features[i].location.start < my_feature.location.start and \
                        (enter.eval == False or e_value <= enter.eval or enter.score != False):
                    for c in xrange(len(CDS_list)-1):
                        if CDS_list[c].location.start < my_feature.location.start < CDS_list[c+1].location.start:
                            record.features.insert(i+1, my_feature)
                            break
                        elif i == 0 and record.features[i].location.start > my_feature.location.start:
                            record.features.insert(i+1, my_feature)
                            break
                        elif i == len(record.features)-1 and record.features[i].location.start < my_feature.location.start:
                            record.features.insert(i+1, my_feature)
                            break
                    break

    if enter.insert == True:
        hit_list = []
        for i in xrange(len(record.features)):
            if record.features[i].type == 'CDS':
                CDS_list.append(record.features[i])
            elif record.features[i].qualifiers.has_key('CHECK'):
                hit_list.append(record.features[i])

        for i in reversed(xrange(len(hit_list))):
            i = len(hit_list)-1-i
            for n in xrange(len(CDS_list)-1):
                if (CDS_list[n].location.start < hit_list[i].location.start < CDS_list[n].location.end or
                        CDS_list[n].location.start < hit_list[i].location.end < CDS_list[n].location.end) or \
                        (CDS_list[n].location.start < hit_list[i].location.start < CDS_list[n+1].location.start and
                         ((hit_list[i].strand == int('-1') and CDS_list[n].strand == +1) or
                         (hit_list[i].strand == int('+1') and CDS_list[n+1].strand == -1))):
                    hit_list.pop(i)
                    break

        for i in reversed(xrange(len(record.features))):
            if record.features[i].qualifiers.has_key('CHECK') and \
                    any(record.features[i] == hit for hit in hit_list) == False:
                record.features.pop(i)


    if enter.name == False:
        for i in xrange(len(record.features)):
            if record.features[i].qualifiers.has_key('CHECK'):
                individual_qualifiers = {}
                hit = record.features[i]
                for n in xrange(i+1, len(record.features)):
                    if record.features[n].type == 'CDS' and \
                            record.features[n].location.start > hit.location.end:
                        cds_up = record.features[n]
                        break
                for c in reversed(xrange(len(CDS_list))):
                    if CDS_list[c].location.end < hit.location.start:
                        cds_down = CDS_list[c]
                        break
                if (enter.palindromic is True and
                    cds_up.location.strand == cds_down.location.strand) or \
                    enter.palindromic is False:
                    if hit.strand == int('-1'):
                        try:
                            individual_qualifiers['gene'] = cds_down.qualifiers['gene']
                        except:
                            pass
                        try:
                            individual_qualifiers['locus_tag'] = cds_down.qualifiers['locus_tag']
                        except:
                            pass
                        individual_qualifiers.update(hit.qualifiers)
                        new_feature = SeqFeature(location=hit.location, type=hit.type, strand=hit.strand,
                                                 qualifiers=individual_qualifiers)
                        record.features.pop(i)
                        record.features.insert(i, new_feature)

                    elif hit.strand == int('+1'):
                        try:
                            individual_qualifiers['gene'] = cds_up.qualifiers['gene']
                        except:
                            pass
                        try:
                            individual_qualifiers['locus_tag'] = cds_up.qualifiers['locus_tag']
                        except:
                            pass

                        individual_qualifiers.update(hit.qualifiers)
                        new_feature = SeqFeature(location=hit.location, type=hit.type, strand=hit.strand,
                                                 qualifiers=individual_qualifiers)
                        record.features.pop(i)
                        record.features.insert(i, new_feature)

                elif enter.palindromic == True and cds_up.location.strand != cds_down.location.strand:
                    if hit.strand == int('-1'):
                        try:
                            individual_qualifiers['cds_down_gene'] = cds_down.qualifiers['gene']
                        except:
                            pass
                        try:
                            individual_qualifiers['cds_down_locus_tag'] = cds_down.qualifiers['locus_tag']
                        except:
                            pass
                        try:
                            individual_qualifiers['cds_up_gene'] = cds_up.qualifiers['gene']
                        except:
                            pass
                        try:
                            individual_qualifiers['cds_up_locus_tag'] = cds_up.qualifiers['locus_tag']
                        except:
                            pass
                        individual_qualifiers.update(hit.qualifiers)
                        new_feature = SeqFeature(location=hit.location, type=hit.type, strand=hit.strand,
                                                 qualifiers=individual_qualifiers)
                        record.features.pop(i)
                        record.features.insert(i, new_feature)


    if enter.palindromic is True:
        first_cds = CDS_list[0]
        last_cds = CDS_list[-1]
        for i in reversed(xrange(1, len(record.features))):
            i = len(record.features)-1-i
            if record.features[i].qualifiers.has_key('CHECK') and i < len(record.features):
                hit = record.features[i]
                for c in reversed(xrange(len(CDS_list))):
                    if CDS_list[c].location.end < hit.location.start:
                        cds_down = CDS_list[c]
                        break
                for c in xrange(len(CDS_list)):
                    if CDS_list[c].location.start > hit.location.end:
                        cds_up = CDS_list[c]
                        break
                if record.features[i+1].qualifiers.has_key('CHECK') and \
                        (hit.location.start == record.features[i+1].location.start and
                        hit.location.end == record.features[i+1].location.end):
                    left_distance = hit.location.start - cds_down.location.end
                    right_distance = cds_up.location.start - hit.location.end
                    if last_cds.location.start > hit.location.start > first_cds.location.start:
                        if left_distance > right_distance and hit.strand == (+1):
                            del record.features[i+1]
                        elif left_distance > right_distance and hit.strand == (-1):
                            del record.features[i]
                        elif left_distance < right_distance and hit.strand == (+1):
                            del record.features[i]
                        elif left_distance < right_distance and hit.strand == (-1):
                            del record.features[i+1]

    if enter.duplicate is True:
        for i in reversed(xrange(1, len(record.features))):
            i = len(record.features)-1-i
            if (record.features[i].type == 'promoter' or record.features[i].type == 'protein_bind') and \
                    record.features[i].type == record.features[i+1].type:
                if record.features[i].qualifiers.has_key('bound_moiety') and record.features[i+1].qualifiers.has_key('bound_moiety'):
                    bound_moiety_one =  record.features[i].qualifiers['bound_moiety']
                    bound_moiety_two =  record.features[i+1].qualifiers['bound_moiety']
                    if bound_moiety_one == bound_moiety_two and \
                         record.features[i].strand == record.features[i+1].strand and \
                         0 <= record.features[i+1].location.start - record.features[i].location.start <= 2:
                        if  score_parser(record.features[i]) > score_parser(record.features[i+1]):
                            del record.features[i+1]
                        elif score_parser(record.features[i]) < score_parser(record.features[i+1]):
                            del record.features[i]



    output_features = []
    for feature in record.features:
        if feature.qualifiers.has_key('CHECK'):
            del feature.qualifiers['CHECK']
            output_features.append(feature)
    score_list = sorting_output_features(output_features)
    score_list.sort()
    output(score_list, output_features)
    for feature in record.features:
        if feature.qualifiers.has_key('cds_down_locus_tag'):
            del feature.qualifiers['cds_down_locus_tag']
        if feature.qualifiers.has_key('cds_up_locus_tag'):
            del feature.qualifiers['cds_up_locus_tag']
        if feature.qualifiers.has_key('cds_down_gene'):
            del feature.qualifiers['cds_down_gene']
        if feature.qualifiers.has_key('cds_up_gene'):
            del feature.qualifiers['cds_up_gene']
    print '\n' + "-"*50
    SeqIO.write(record, output_handle, 'genbank')
    print 'Features added:', len(output_features)
output_handle.close()
input_handle.close()
print 'CPU time: ', time.clock()
print '\n' + "="*50


