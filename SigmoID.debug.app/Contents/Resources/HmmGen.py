
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
             epilog = '''(c) Aliaksandr Damienikan, 2014.'''
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
                        type=int,
                        metavar='<float or integer>',
                        help='''treshold E-Value.''')
    parser.add_argument('-i', '--insert',
                        action='store_const',
                        const=True,
                        default=False,
                        help='''don't add features inside CDS''')
    parser.add_argument('-v','--version', action='version', version='%(prog)s 1.2 (December 7, 2014)')
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


print '\nHmmGen 1.2 (December 7, 2014)'
print "="*50
print 'Options used:\n'
for arg in range(1, len(sys.argv)):
    print sys.argv[arg],

def naming_strand_minus(record, prog2, start_pos, score, qualifier, strnd, e_value, i, palindromic):
    cds_loc_minus = i
    try:
        while record.features[cds_loc_minus].type != 'CDS' and cds_loc_minus > 0:
            cds_loc_minus -= 1
    except:
        pass
        cds_loc_plus = i+1
    try:
        while record.features[cds_loc_plus].type != 'CDS' and cds_loc_plus < len(record.features):
            cds_loc_plus += 1
    except:
        pass
    cds_loc_end = record.features.index(record.features[-1])
    try:
        while record.features[cds_loc_end].type != 'CDS' and cds_loc_end > 0:
            cds_loc_end -= 1
    except:
        pass
    if record.features[cds_loc_minus].location.strand == strnd and start_pos < record.features[-1].location.start and \
            start_pos > record.features[1].location.start:
        try:
            if (palindromic is True and \
                    record.features[cds_loc_plus].location.strand == record.features[cds_loc_minus].location.strand) or \
                    palindromic is False:
                ind_qual = {'gene':record.features[cds_loc_minus].qualifiers['gene']}
                ind_qual['locus_tag'] = record.features[cds_loc_minus].qualifiers['locus_tag']
            if palindromic is True:
                ind_qual['palindromic_check'] = 'CHECKED'
            ind_qual['note'] = str('%s score %s E-value %s' % (prog2.replace('\n', ''), score, e_value))
            my_feature = SeqFeature(location=feature_location,
                                    type=feature_type,
                                    strand=strnd,
                                    qualifiers=dict(qualifier.items() + ind_qual.items()))
            record.features.insert(i+1, my_feature)
        except:
            try:
                if (palindromic is True and \
                        record.features[cds_loc_plus].location.strand == record.features[cds_loc_minus].location.strand) or \
                        palindromic is False:
                    ind_qual = {'locus_tag':record.features[cds_loc_minus].qualifiers['locus_tag']}
                if palindromic is True:
                    ind_qual['palindromic_check'] = 'CHECKED'
                ind_qual['note'] = str('%s score %s E-value %s' % (prog2.replace('\n', ''), score, e_value))
                my_feature = SeqFeature(location=feature_location,
                                        type=feature_type,
                                        strand=strnd,
                                        qualifiers=dict(qualifier.items() + ind_qual.items()))
                record.features.insert(i+1, my_feature)
            except:
                ind_qual={'note':str('%s score %s E-value %s' % (prog2.replace('\n', ''), score,  e_value))}
                if palindromic is True:
                    ind_qual['palindromic_check'] = 'CHECKED'
                my_feature = SeqFeature(location=feature_location,
                                        type=feature_type,
                                        strand=strnd,
                                        qualifiers=dict(qualifier.items() + ind_qual.items()))
                record.features.insert(i+1, my_feature)
    elif start_pos >= record.features[-1].location.start and strnd == record.features[cds_loc_end].strand:
        try:
            ind_qual = {'gene':record.features[cds_loc_end].qualifiers['gene']}
            ind_qual['locus_tag'] = record.features[cds_loc_end].qualifiers['locus_tag']
            if palindromic is True:
                ind_qual['palindromic_check'] = 'CHECKED'
            ind_qual['note'] = str('%s score %s E-value %s' % (prog2.replace('\n', ''), score, e_value))
            my_feature = SeqFeature(location=feature_location,
                                    type=feature_type,
                                    strand=strnd,
                                    qualifiers=dict(qualifier.items() + ind_qual.items()))
            record.features.insert(i+1, my_feature)
        except:
            try:
                ind_qual = {'locus_tag':record.features[cds_loc_end].qualifiers['locus_tag']}
                if palindromic is True:
                    ind_qual['palindromic_check'] = 'CHECKED'
                ind_qual['note'] = str('%s score %s E-value %s' % (prog2.replace('\n', ''), score, e_value))
                my_feature = SeqFeature(location=feature_location,
                                        type=feature_type,
                                        strand=strnd,
                                        qualifiers=dict(qualifier.items() + ind_qual.items()))
                record.features.insert(i+1, my_feature)
            except:
                ind_qual={'note':str('%s score %s E-value %s' % (prog2.replace('\n', ''), score,  e_value))}
                if palindromic is True:
                    ind_qual['palindromic_check'] = 'CHECKED'
                my_feature = SeqFeature(location=feature_location,
                                        type=feature_type,
                                        strand=strnd,
                                        qualifiers=dict(qualifier.items() + ind_qual.items()))
                record.features.insert(i+1, my_feature)
    elif start_pos <= record.features[1].location.start:
        ind_qual={'note':str('%s score %s E-value %s' % (prog2.replace('\n', ''), score,  e_value))}
        if palindromic is True:
            ind_qual['palindromic_check'] = 'CHECKED'
        my_feature = SeqFeature(location=feature_location,
                                type=feature_type,
                                strand=strnd,
                                qualifiers=dict(qualifier.items() + ind_qual.items()))
        record.features.insert(i+1, my_feature)
    return

def naming_strand_plus(record, prog2, end_pos, score, qualifier, strnd, e_value, i, palindromic, cds_loc_start):
    cds_loc_plus = i+1
    try:
        while record.features[cds_loc_plus].type != 'CDS' and cds_loc_plus < len(record.features) and \
                record.features[cds_loc_plus].location.start < end_pos:
            cds_loc_plus += 1
    except:
        pass
    cds_loc_minus = i
    try:
        while record.features[cds_loc_minus].type != 'CDS' and cds_loc_minus < len(record.features) and \
                start_pos < record.features[cds_loc_minus].location.end:
            cds_loc_minus -= 1
    except:
        pass
    cds_loc_end = record.features.index(record.features[-1])
    try:
        while record.features[cds_loc_end].type != 'CDS' and cds_loc_end > 0:
            cds_loc_end -= 1
    except:
        pass
    if record.features[cds_loc_plus].location.strand == strnd and start_pos < record.features[-1].location.start and \
            start_pos > record.features[0].location.start:
        try:
            if (palindromic is True and \
                    record.features[cds_loc_plus].location.strand == record.features[cds_loc_minus].location.strand) or \
                    palindromic is False:
                ind_qual = {'gene':record.features[cds_loc_plus].qualifiers['gene']}
                ind_qual['locus_tag'] = record.features[cds_loc_plus].qualifiers['locus_tag']
            if palindromic is True:
                    ind_qual['palindromic_check'] = 'CHECKED'
            ind_qual['note'] = str('%s score %s E-value %s' % (prog2.replace('\n', ''), score, e_value))
            my_feature = SeqFeature(location=feature_location,
                                    type=feature_type,
                                    strand=strnd,
                                    qualifiers=dict(qualifier.items() + ind_qual.items()))
            record.features.insert(i+1, my_feature)
        except:
            try:
                if (palindromic is True and \
                        record.features[cds_loc_plus].location.strand == record.features[cds_loc_minus].location.strand) or \
                        palindromic is False:
                    ind_qual = {'locus_tag':record.features[cds_loc_plus].qualifiers['locus_tag']}
                if palindromic is True:
                    ind_qual['palindromic_check'] = 'CHECKED'
                ind_qual['note'] = str('%s score %s E-value %s' % (prog2.replace('\n', ''), score, e_value))
                my_feature = SeqFeature(location=feature_location,
                                        type=feature_type,
                                        strand=strnd,
                                        qualifiers=dict(qualifier.items() + ind_qual.items()))
                record.features.insert(i+1, my_feature)
            except:
                ind_qual={'note':str('%s score %s E-value %s' % (prog2.replace('\n', ''), score,  e_value))}
                if palindromic is True:
                    ind_qual['palindromic_check'] = 'CHECKED'
                my_feature = SeqFeature(location=feature_location,
                                        type=feature_type,
                                        strand=strnd,
                                        qualifiers=dict(qualifier.items() + ind_qual.items()))
                record.features.insert(i+1, my_feature)
    elif start_pos > record.features[-1].location.start:
        try:
            ind_qual={'note':str('%s score %s E-value %s' % (prog2.replace('\n', ''), score,  e_value))}
            if palindromic is True:
                ind_qual['palindromic_check'] = 'CHECKED'
            my_feature = SeqFeature(location=feature_location,
                                    type=feature_type,
                                    strand=strnd,
                                    qualifiers=dict(qualifier.items() + ind_qual.items()))
            record.features.insert(i+1, my_feature)
        except:
            pass
    elif start_pos <= record.features[1].location.start and strnd == record.features[cds_loc_start].strand:
        try:
            ind_qual = {'gene':record.features[cds_loc_start].qualifiers['gene']}
            ind_qual['locus_tag'] = record.features[cds_loc_start].qualifiers['locus_tag']
            if palindromic is True:
                    ind_qual['palindromic_check'] = 'CHECKED'
            ind_qual['note'] = str('%s score %s E-value %s' % (prog2.replace('\n', ''), score, e_value))
            my_feature = SeqFeature(location=feature_location,
                                    type=feature_type,
                                    strand=strnd,
                                    qualifiers=dict(qualifier.items() + ind_qual.items()))
            record.features.insert(i+1, my_feature)
        except:
            try:
                ind_qual = {'locus_tag':record.features[cds_loc_start].qualifiers['locus_tag']}
                if palindromic is True:
                    ind_qual['palindromic_check'] = 'CHECKED'
                ind_qual['note'] = str('%s score %s E-value %s' % (prog2.replace('\n', ''), score, e_value))
                my_feature = SeqFeature(location=feature_location,
                                        type=feature_type,
                                        strand=strnd,
                                        qualifiers=dict(qualifier.items() + ind_qual.items()))
                record.features.insert(i+1, my_feature)
            except:
                ind_qual={'note':str('%s score %s E-value %s' % (prog2.replace('\n', ''), score,  e_value))}
                if palindromic is True:
                    ind_qual['palindromic_check'] = 'CHECKED'
                my_feature = SeqFeature(location=feature_location,
                                        type=feature_type,
                                        strand=strnd,
                                        qualifiers=dict(qualifier.items() + ind_qual.items()))
                record.features.insert(i+1, my_feature)

    return


def no_naming(record, prog2, prog5, score, qualifier, strnd, e_value, cds_loc1, cds_loc2, palindromic, start_pos, cds_loc_start):
    cds_loc_end = record.features.index(record.features[-1])
    try:
        while record.features[cds_loc_end].type != 'CDS' and cds_loc_end > 0:
            cds_loc_end -= 1
    except:
        pass
    if strnd == -1:
        if start_pos > record.features[0].location.start and start_pos < record.features[-1].location.start and \
                        record.features[cds_loc1].strand == -1:
            ind_qual={'note':str('%s %s score %s E-value %s' % (prog2.replace('\n', ''), prog5, score,  e_value))}
            if palindromic is True:
                    ind_qual['palindromic_check'] = 'CHECKED'
            my_feature = SeqFeature(location=feature_location,
                                    type=feature_type,
                                    strand=strnd,
                                    qualifiers=dict(qualifier.items() + ind_qual.items()))
            record.features.insert(i+1, my_feature)
        elif start_pos > record.features[-1].location.start and record.features[cds_loc_end].strand == strnd:
            ind_qual={'note':str('%s %s score %s E-value %s' % (prog2.replace('\n', ''), prog5, score,  e_value))}
            if palindromic is True:
                    ind_qual['palindromic_check'] = 'CHECKED'
            my_feature = SeqFeature(location=feature_location,
                                    type=feature_type,
                                    strand=strnd,
                                    qualifiers=dict(qualifier.items() + ind_qual.items()))
            record.features.insert(i+1, my_feature)
        elif start_pos <= record.features[1].location.start:
            ind_qual={'note':str('%s %s score %s E-value %s' % (prog2.replace('\n', ''), prog5, score,  e_value))}
            if palindromic is True:
                    ind_qual['palindromic_check'] = 'CHECKED'
            my_feature = SeqFeature(location=feature_location,
                                    type=feature_type,
                                    strand=strnd,
                                    qualifiers=dict(qualifier.items() + ind_qual.items()))
            record.features.insert(i+1, my_feature)
    elif strnd == +1:
        if start_pos > record.features[0].location.start and start_pos < record.features[-1].location.start and \
                        record.features[cds_loc2].strand == +1:
            ind_qual={'note':str('%s %s score %s E-value %s' % (prog2.replace('\n', ''), prog5, score,  e_value))}
            if palindromic is True:
                    ind_qual['palindromic_check'] = 'CHECKED'
            my_feature = SeqFeature(location=feature_location,
                                    type=feature_type,
                                    strand=strnd,
                                    qualifiers=dict(qualifier.items() + ind_qual.items()))
            record.features.insert(i+1, my_feature)
        elif start_pos > record.features[-1].location.start:
            ind_qual={'note':str('%s %s score %s E-value %s' % (prog2.replace('\n', ''), prog5, score,  e_value))}
            if palindromic is True:
                    ind_qual['palindromic_check'] = 'CHECKED'
            my_feature = SeqFeature(location=feature_location,
                                    type=feature_type,
                                    strand=strnd,
                                    qualifiers=dict(qualifier.items() + ind_qual.items()))
            record.features.insert(i+1, my_feature)
        elif start_pos <= record.features[1].location.start and strnd == record.features[cds_loc_start].strand:
            ind_qual={'note':str('%s %s score %s E-value %s' % (prog2.replace('\n', ''), prog5, score,  e_value))}
            if palindromic is True:
                    ind_qual['palindromic_check'] = 'CHECKED'
            my_feature = SeqFeature(location=feature_location,
                                    type=feature_type,
                                    strand=strnd,
                                    qualifiers=dict(qualifier.items() + ind_qual.items()))
            record.features.insert(i+1, my_feature)
    return

def naming(record, prog2, end_pos, score, qualifier, strnd, e_value, i, palindromic, start_pos, cds_loc_start):
    if strnd == -1:
        naming_strand_minus(record, prog2, start_pos, score, qualifier, strnd, e_value, i, palindromic)
    elif strnd == +1:
        naming_strand_plus(record, prog2, end_pos, score, qualifier, strnd, e_value, i, palindromic, cds_loc_start)
    return

def insert(name, record, prog2, prog5, score, qualifier, strnd, e_value, max_eval, cds_loc1, cds_loc2, i,
           start_pos, end_pos, palindromic, cds_loc_end, cds_loc_start):
    if record.features[cds_loc1].location.end < start_pos < record.features[cds_loc2].location.start and \
                            record.features[cds_loc1].location.end < end_pos < record.features[cds_loc2].location.start and \
            ((e_value <= max_eval and max_eval != False) or max_eval == False):
        if name is False:
            naming(record, prog2, prog5, score, qualifier, strnd, e_value, i, palindromic, start_pos, cds_loc_start)
            return True
        else:
            no_naming(record, prog2, prog5, score, qualifier, strnd, e_value, cds_loc1, cds_loc2, palindromic, start_pos, cds_loc_start)
            return True
    elif i == 0 and end_pos < record.features[cds_loc_start].location.start and \
            ((e_value <= max_eval and max_eval != False) or max_eval == False):
        if name is False:
            naming(record, prog2, prog5, score, qualifier, strnd, e_value, i, palindromic, start_pos, cds_loc_start)
            return True
        else:
            no_naming(record, prog2, prog5, score, qualifier, strnd, e_value, cds_loc1, cds_loc2, palindromic, start_pos, cds_loc_start)
            return True
    elif i == len(record.features)-3 and start_pos > record.features[cds_loc_end].location.end and \
            ((e_value <= max_eval and max_eval != False) or max_eval == False):
        if name is False:
            naming(record, prog2, prog5, score, qualifier, strnd, e_value, i, palindromic, start_pos, cds_loc_start)
            return True
        else:
            no_naming(record, prog2, prog5, score, qualifier, strnd, e_value, cds_loc1, cds_loc2, palindromic, start_pos, cds_loc_start)
            return True

    return

def no_insert(name, record, prog2, prog5, score, qualifier, strnd, e_value, max_eval, cds_loc1, cds_loc2, i, start, palindromic, cds_loc_start):
    if record.features[i].location.start < start -1 < record.features[i+1].location.start and \
            ((e_value <= max_eval and max_eval != False) or max_eval == False):
        if name is False:
            naming(record, prog2, prog5, score, qualifier, strnd, e_value, i, palindromic, start_pos, cds_loc_start)
            return True
        else:
            no_naming(record, prog2, prog5, score, qualifier, strnd, e_value, cds_loc1, cds_loc2, palindromic, start_pos, cds_loc_start)
            return True
    elif record.features[i-1].location.start <= start_pos <= record.features[i].location.start and \
                    ((e_value <= max_eval and max_eval != False) or max_eval == False):
        if name is False:
            naming(record, prog2, prog5, score, qualifier, strnd, e_value, i, palindromic, start_pos, cds_loc_start)
            return True
        else:
            no_naming(record, prog2, prog5, score, qualifier, strnd, e_value, cds_loc1, cds_loc2, palindromic, start_pos, cds_loc_start)
            return True
    elif i == 0 and start_pos < record.features[0].location.start and \
            ((e_value <= max_eval and max_eval != False) or max_eval == False):
        if name is False:
            naming(record, prog2, prog5, score, qualifier, strnd, e_value, i, palindromic, start_pos, cds_loc_start)
            return True
        else:
            no_naming(record, prog2, prog5, score, qualifier, strnd, e_value, cds_loc1, cds_loc2, palindromic, start_pos, cds_loc_start)
            return True
    elif i == len(record.features)-2 and start_pos > record.features[-1].location.start and \
            ((e_value <= max_eval and max_eval != False) or max_eval == False):
        if name is False:
            naming(record, prog2, prog5, score, qualifier, strnd, e_value, i, palindromic, start_pos, cds_loc_start)
            return True
        else:
            no_naming(record, prog2, prog5, score, qualifier, strnd, e_value, cds_loc1, cds_loc2, palindromic, start_pos, cds_loc_start)
            return True
    return

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

def eval_function(lst, e):
    e = lst

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
        x.append([item[8], item[9], int(item[11]+'1'), float(item[12]), float(item[13]), item[0], item[1], int(item[4]), int(item[5]), int(item[6]), int(item[7])])

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
    e_value_list = []
    for feature in lst:
        for key in feature.qualifiers.keys():
            if key == 'note':
                temp = feature.qualifiers[key]
                temp = temp.split(' ')
                e_value_list.append(float(temp[-1]))
    return e_value_list

def output(e_list, output_features):
    for val in e_list:
        for feature in output_features:
            if val == feature_evalue(feature):
                print feature
                output_features = [f for f in output_features if f != feature]

def feature_evalue(feature):
    for key in feature.qualifiers.keys():
        if key == 'note' and type(feature.qualifiers[key]) != []:
            temp = feature.qualifiers[key]
            temp = temp.split(' ')
            return float(temp[-1])

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
    cds_loc_end = record.features.index(record.features[-1])
    try:
        while record.features[cds_loc_end].type != 'CDS' and cds_loc_end > 0:
            cds_loc_end -= 1
    except:
        pass
    cds_loc_start = record.features.index(record.features[0])
    try:
        while record.features[cds_loc_start].type != 'CDS' and cds_loc_start < len(record.features):
            cds_loc_start += 1
    except:
        pass
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
            ali_from = allign[9]
            ali_to = allign[10]
            if enter.length != False:
                if hmm_to < enter.max_length and feature_length <= enter.max_length:
                    end = (enter.max_length-hmm_to)+ali_to
                else:
                    end = ali_to
                if hmm_from > 1 and feature_length <= enter.max_length:

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
            ali_from = allign[10]
            ali_to = allign[9]
            if enter.length != False:
                if hmm_from > 1 and feature_length <= enter.max_length:
                    end = (hmm_from-1)+ali_to
                else:
                    end = ali_to
                if hmm_to < enter.max_length and feature_length <= enter.max_length:
                    start = ali_from-(enter.max_length-hmm_to)
                else:
                    start = ali_from



        start_pos = SeqFeature.ExactPosition(start-1)
        end_pos = SeqFeature.ExactPosition(end)

        feature_location = FeatureLocation(start_pos, end_pos)
        feature_type = enter.feature
        from Bio.SeqFeature import SeqFeature
        my_feature = SeqFeature(location=feature_location, type=feature_type, strand=strnd, qualifiers=qualifier)

        if enter.palindromic == False and \
                        enter.length != False and \
                        enter.min_length <= feature_length <= enter.max_length and \
                        (record.id == locus or record.id == version):
            for i in range(len(record.features)-1):
                cds_loc1 = i
                cds_loc2 = i+1
                try:
                    while record.features[cds_loc1].type != 'CDS' and cds_loc1 > 0:
                        cds_loc1 -= 1
                    while record.features[cds_loc1].type != 'CDS' and cds_loc2 < len(record.features)-1:
                        cds_loc2 += 1
                except:
                    pass
                if enter.insert is True:
                    if insert(enter.name, record, prog[2], prog[5], score, qualifier, strnd, e_value, max_eval,
                              cds_loc1, cds_loc2, i, start_pos, end_pos, enter.palindromic, cds_loc_end, cds_loc_start):
                        break
                elif enter.insert is False:
                    if no_insert(enter.name, record, prog[2], prog[5], score, qualifier, strnd, e_value, max_eval,
                                 cds_loc1, cds_loc2, i, start, enter.palindromic, cds_loc_start):
                        break
        elif enter.palindromic == False and enter.length == False and \
                        (record.id == locus or record.id == version):
            for i in range(len(record.features)-1):
                cds_loc1 = i
                cds_loc2 = i+1
                try:
                    while record.features[cds_loc1].type != 'CDS' and cds_loc1 > 0:
                        cds_loc1 -= 1
                    while record.features[cds_loc1].type != 'CDS' and cds_loc2 < len(record.features)-1:
                        cds_loc2 += 1
                except:
                    pass
                if enter.insert is True:
                    if insert(enter.name, record, prog[2], prog[5], score, qualifier, strnd, e_value, max_eval,
                              cds_loc1, cds_loc2, i, start_pos, end_pos, enter.palindromic, cds_loc_end, cds_loc_start):
                        break
                elif enter.insert is False:
                    if no_insert(enter.name, record, prog[2], prog[5], score, qualifier, strnd, e_value, max_eval,
                                 cds_loc1, cds_loc2, i, start, enter.palindromic, cds_loc_start):
                        break
        elif enter.palindromic == True and \
                        enter.length != False and \
                        enter.min_length <= feature_length <= enter.max_length and \
                        (record.id == locus or record.id == version):
            for i in range(len(record.features)-1):
                cds_loc1 = i
                cds_loc2 = i+1
                try:
                    while record.features[cds_loc1].type != 'CDS' and cds_loc1 > 0:
                        cds_loc1 -= 1
                    while record.features[cds_loc1].type != 'CDS' and cds_loc2 < len(record.features)-1:
                        cds_loc2 += 1
                except:
                    pass
                if enter.insert is True:
                    if insert(enter.name, record, prog[2], prog[5], score, qualifier, strnd, e_value, max_eval,
                              cds_loc1, cds_loc2, i, start_pos, end_pos, enter.palindromic, cds_loc_end, cds_loc_start):
                        break
                elif enter.insert is False:
                    if no_insert(enter.name, record, prog[2], prog[5], score, qualifier, strnd, e_value, max_eval,
                                 cds_loc1, cds_loc2, i, start, enter.palindromic, cds_loc_start):
                        break
        elif enter.palindromic == True and enter.length == False and \
                        (record.id == locus or record.id == version):
            for i in range(len(record.features)-1):
                cds_loc1 = i
                cds_loc2 = i+1
                try:
                    while record.features[cds_loc1].type != 'CDS' and cds_loc1 > 0:
                        cds_loc1 -= 1
                    while record.features[cds_loc1].type != 'CDS' and cds_loc2 < len(record.features)-1:
                        cds_loc2 += 1
                except:
                    pass
                if enter.insert is True:
                    if insert(enter.name, record, prog[2], prog[5], score, qualifier, strnd, e_value, max_eval,
                              cds_loc1, cds_loc2, i, start_pos, end_pos, enter.palindromic, cds_loc_end, cds_loc_start):
                        break
                elif enter.insert is False:
                    if no_insert(enter.name, record, prog[2], prog[5], score, qualifier, strnd, e_value, max_eval,
                                 cds_loc1, cds_loc2, i, start, enter.palindromic, cds_loc_start):
                        break
    if enter.palindromic is True:
        for i in range(len(record.features)-1):
            if i < len(record.features) and any(key=='CHECK' for key in record.features[i].qualifiers.keys()):
                cds_loc1 = i
                cds_loc2 = i+1
                try:
                    while record.features[cds_loc1].type != 'CDS' and cds_loc1 > 0 and \
                                    record.features[cds_loc1].location.end > record.features[i].location.start:
                        cds_loc1 -= 1
                    while record.features[cds_loc2].type != 'CDS' and cds_loc2 < len(record.features)-1 and \
                            record.features[cds_loc2].location.start < record.features[i].location.end:
                        cds_loc2 += 1
                except:
                    pass
            try:
                if (record.features[i].location.start == record.features[i+1].location.start and \
                                      record.features[i].location.end == record.features[i+1].location.end) and \
                                      any(key == 'palindromic_check' for key in record.features[i].qualifiers.keys()) and \
                        any(key == 'palindromic_check' for key in record.features[i+1].qualifiers.keys()):


                    left_distance = record.features[i].location.start - record.features[cds_loc1].location.end
                    right_distance = record.features[cds_loc2].location.start - record.features[i].location.end
                    if record.features[i].location.start < record.features[cds_loc_end].location.start and \
                        record.features[i].location.start > record.features[cds_loc_start].location.start:
                        if left_distance > right_distance and record.features[i].strand == (+1):
                            #print record.features[i+1]
                            del record.features[i+1]
                        elif left_distance > right_distance and record.features[i].strand == (-1):
                            #print record.features[i]
                            del record.features[i]
                        elif left_distance < right_distance and record.features[i].strand == (+1):
                            #print record.features[i]
                            del record.features[i]
                        elif left_distance < right_distance and record.features[i].strand == (-1):
                            #print record.features[i+1]
                            del record.features[i+1]
            except:
                pass
    output_features = []
    for feature in record.features:
        if any(key == 'palindromic_check' for key in feature.qualifiers.keys()):
            print feature
            del feature.qualifiers['palindromic_check']
        if any(key == 'CHECK' for key in feature.qualifiers.keys()):
            del feature.qualifiers['CHECK']
            output_features.append(feature)
    e_list = sorting_output_features(output_features)
    e_list.sort()
    output(e_list, output_features)


    print '\n' + "-"*50
    SeqIO.write(record, output_handle, 'genbank')
output_handle.close()
input_handle.close()
print 'CPU time: ', time.clock()
print '\n' + "="*50



