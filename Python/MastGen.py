import sys
import ast
import argparse
import time
from Bio.SeqFeature import FeatureLocation
from Bio.SeqFeature import SeqFeature


class MySeqFeature(SeqFeature):

     def __str__(self):
        out = "type: %s\n" % self.type
        if self.strand == 1:
            out += "location: [%s:%s](%s)\n" % (self.location.start+1, self.location.end, '+')
        if self.strand == -1:
            out += "location: [%s:%s](%s)\n" % (self.location.start+1, self.location.end, '-')
        if self.id and self.id != "<unknown id>":
            out += "id: %s\n" % self.id
        out += "qualifiers:\n"
        for qual_key in sorted(self.qualifiers):
            out += " Key: %s, Value: %s\n" % (qual_key,
                                                    self.qualifiers[qual_key])
        if len(self._sub_features) != 0:
            out += "Sub-Features\n"
            for sub_feature in self._sub_features:
                out += "%s\n" % sub_feature
        return out


def createParser():

    parser = argparse.ArgumentParser(
             prog = 'MastGen',
             usage = '\n%(prog)s <report_file>  <input_file> <output_file> [options]',
             description = '''This script allows to add features to a genbank file according to MAST results.
    Requires Biopython 1.64 (or newer)''',
             epilog = '''(c) Aliaksandr Damienikan, 2015.'''
            )
    parser.add_argument('report_file',
                        help='''path to MAST report file produced with -tblout option.''')
    parser.add_argument('input_file',
                        help= '''path to input Genbank file.''')
    parser.add_argument('output_file', help= '''path to output Genbank file.''')
    parser.add_argument('-L', '--length',
                        default=False,
                        help='''final feature's length in genbank file''',
                        metavar='<integer>',
                        required=False,
                        type=int)
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
    parser.add_argument('-V', '--pval',
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
    parser.add_argument('-v','--version', action='version', version='%(prog)s 1.6 (January 11, 2015)')
    parser.add_argument('-f', '--feature',
                        metavar='<"feature key">',
                        default='unknown type',
                        help='''feature key to add  (promoter, protein_bind etc.)''')
    return parser


args = createParser()
enter = args.parse_args()
arguments = sys.argv[1:0]
max_pval = enter.pval
if enter.length != False:
    enter.max_length = enter.length
try:
    from Bio import SeqIO
except ImportError:
    sys.exit('\nYou have no Biopython module installed!\nYou can download it here for free: http://biopython.org/wiki/Download\n')
try:
    input_handle = open(enter.input_file, 'r')
except IOError:
    sys.exit('Open error! Please check your genbank input file!')
circular_vs_linear = []
for line in input_handle.readlines():
    if line.startswith('LOCUS'):
        if 'circular' in line:
            circular_vs_linear.append('circular')
        elif 'linear' in line:
            circular_vs_linear.append('linear')
        else:
            circular_vs_linear.append('')
input_handle.close()
input_handle = open(enter.input_file, 'r')
try:
    output_handle = open(enter.output_file, 'w')
except IOError:
    sys.exit('Open error! Please check your genbank output path!')
print '\nMastGen 1.6 (January 11, 2015)'
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

def mast_parser(path_to_file):
    try:
        a = open(path_to_file, 'r')
    except IOError:
        sys.exit('Open error! Please check your MAST report input file!')
    file = a.readlines()
    hit_list = []
    hit_list = [[p for p in line.replace('\n', '').split(' ') if p!=''] for line in file if line.startswith('#')==False]
    return hit_list

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
                if note.startswith('MAST') == True:
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

def DNA_topology(path, topo_list):
    infile = open(path, 'r')
    loci_counter = -1 #because 1 is 0 in python
    lines = infile.readlines()
    for numline in xrange(len(lines)):
        if lines[numline].startswith('LOCUS'):
            loci_counter += 1
            if topo_list[loci_counter] == 'circular':
                spaces_before = " " * 3
                spaces_after = " " * 1
                lines[numline] = lines[numline].replace("DNA              ", "DNA%s%s%s" % (spaces_before, 
                                                                        'circular',
                                                                        spaces_after))
            elif topo_list[loci_counter] == 'linear':
                spaces_before = " " * 5
                spaces_after = " " * 3
                lines[numline] = lines[numline].replace("DNA              ", "DNA%s%s%s" % (spaces_before, 
                                                                        'linear',
                                                                        spaces_after))
    infile.close()
    return lines 

file_path = enter.report_file
qualifier = {'CHECK':'CHECKED!'}
qualifiers_function(enter.qual, qualifier)
allign_list = mast_parser(file_path)
records = SeqIO.parse(input_handle, 'genbank')
total = 0
for record in records:
    print '\n' + "-"*50 + "\nCONTIG: " +  record.id
    print '\n   FEATURES ADDED: \n'
    global allowed_features_list
    allowed_features_list = []
    for feature in record.features:
        if feature.type == 'CDS' or feature.type == 'ncRNA':
            allowed_features_list.append(feature)

    cds_loc_start = allowed_features_list[0]
    cds_loc_end = allowed_features_list[-1]
    for allign in allign_list:
        try:
            from Bio import SeqFeature
            start = int(allign[2])
            end = int(allign[3])
            strnd = int(allign[1])
            p_value = float(allign[5])
            score = float(allign[4])
        except IndexError or ValueError:
            print "Error while parsing MAST output. Please check it."
            print "The problem may be in line:"
            for word in allign:
                print word+' ',
            sys.exit()
        feature_length = end - (start-1)
        start_pos = SeqFeature.ExactPosition(start-1)
        end_pos = SeqFeature.ExactPosition(end)
        feature_location = FeatureLocation(start_pos, end_pos)
        feature_type = enter.feature
        from Bio.SeqFeature import SeqFeature
        note_qualifier = dict()
        note_qualifier['note'] = str('MAST score %s P-value %s' % (score, p_value))
        my_feature = MySeqFeature(location=feature_location, type=feature_type, strand=strnd,
                                qualifiers=dict(qualifier.items()+note_qualifier.items()))
        for i in reversed(xrange(len(record.features))):
            if int(record.features[i].location.start) < int(my_feature.location.start) and \
                    (enter.pval == False or p_value <= enter.pval) and \
                     (enter.score == False or score >= enter.score):       
                for c in xrange(len(allowed_features_list)-1):
                    if allowed_features_list[c].location.start <= my_feature.location.start <= allowed_features_list[c+1].location.start:
                        record.features.insert(i+1, my_feature)
                        break
                break
            if i == 0 and record.features[i].location.start > my_feature.location.start:
                record.features.insert(i, my_feature)
                break
            elif i == len(record.features)-1 and record.features[i].location.start < my_feature.location.start:
                record.features.insert(i+1, my_feature)
                break
    if enter.insert == True:
        hit_list = []
        for i in xrange(len(record.features)):
            if record.features[i].qualifiers.has_key('CHECK'):
                hit_list.append(record.features[i])

        for i in reversed(xrange(len(hit_list))):
            i = len(hit_list)-1-i
            for n in xrange(len(allowed_features_list)-1):
                if (allowed_features_list[n].location.start < hit_list[i].location.start < allowed_features_list[n].location.end or
                        allowed_features_list[n].location.start < hit_list[i].location.end < allowed_features_list[n].location.end) or \
                        (allowed_features_list[n].location.start < hit_list[i].location.start < allowed_features_list[n+1].location.start and
                         ((hit_list[i].strand == int('-1') and allowed_features_list[n].strand == +1) or
                         (hit_list[i].strand == int('+1') and allowed_features_list[n+1].strand == -1))):
                    hit_list.pop(i)
                    break

        for i in reversed(xrange(len(record.features))):
            if record.features[i].qualifiers.has_key('CHECK') and \
                    any(record.features[i] == hit for hit in hit_list) == False:
                record.features.pop(i)

    if enter.name == False:
        for i in reversed(xrange(len(record.features))):
            i = len(record.features) - 1 - i
            if record.features[i].qualifiers.has_key('CHECK'):
                individual_qualifiers = {}
                hit = record.features[i]
                for n in xrange(i+1, len(record.features)):
                    if (record.features[n].type == 'CDS' or record.features[n].type == 'ncRNA') and \
                            record.features[n].location.start > hit.location.end:
                        cds_up = record.features[n]
                        break
                if hit.location.start > allowed_features_list[-1].location.end:
                    cds_up = allowed_features_list[0]
                for c in reversed(xrange(len(allowed_features_list))):
                    if allowed_features_list[c].location.end < hit.location.start:
                        cds_down = allowed_features_list[c]
                        break
                    elif hit.location.end < allowed_features_list[0].location.start:
                        cds_down = allowed_features_list[-1]
                        break
                if (enter.palindromic is True and
                    cds_up.strand == cds_down.strand) or \
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
                        new_feature = MySeqFeature(location=hit.location, type=hit.type, strand=hit.strand,
                                                 qualifiers=individual_qualifiers)
                        record.features.pop(i)
                        record.features.insert(i, new_feature)
                    
                    # as MAST searches just one strand (+) in case of palindromic site, then here we've got additional "if"s
                    elif hit.strand == int('+1'):
                        if (hit.strand == cds_up.strand and enter.palindromic == True) or enter.palindromic == False:
                            try:
                                individual_qualifiers['gene'] = cds_up.qualifiers['gene']
                            except:
                                pass
                            try:
                                individual_qualifiers['locus_tag'] = cds_up.qualifiers['locus_tag']
                            except:
                                pass
                        #there is no chance here to be cds_down.strand==cds_up.strand, so: 
                        elif hit.strand != cds_up.strand and enter.palindromic == True:
                            try:
                                individual_qualifiers['gene'] = cds_down.qualifiers['gene']
                            except:
                                pass
                            try:
                                individual_qualifiers['locus_tag'] = cds_down.qualifiers['locus_tag']
                            except:
                                pass

                        individual_qualifiers.update(hit.qualifiers)
                        new_feature = MySeqFeature(location=hit.location, type=hit.type, strand=hit.strand,
                                                 qualifiers=individual_qualifiers)
                        record.features.pop(i)
                        record.features.insert(i, new_feature)


                elif enter.palindromic == True and cds_up.strand != cds_down.strand:
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
                        new_feature = MySeqFeature(location=hit.location, type=hit.type, strand=hit.strand,
                                                 qualifiers=individual_qualifiers)
                        record.features.pop(i)
                        if hit.strand == cds_down.strand:
                            record.features.insert(i, new_feature)
                    if hit.strand == int('+1'):
                        try:
                            individual_qualifiers['cds_up_gene'] = cds_down.qualifiers['gene']
                        except:
                            pass
                        try:
                            individual_qualifiers['cds_up_locus_tag'] = cds_down.qualifiers['locus_tag']
                        except:
                            pass
                        try:
                            individual_qualifiers['cds_down_gene'] = cds_up.qualifiers['gene']
                        except:
                            pass
                        try:
                            individual_qualifiers['cds_down_locus_tag'] = cds_up.qualifiers['locus_tag']
                        except:
                            pass
                        individual_qualifiers.update(hit.qualifiers)
                        new_feature = MySeqFeature(location=hit.location, type=hit.type, strand=hit.strand,
                                                 qualifiers=individual_qualifiers)
                        record.features.pop(i)
                        record.features.insert(i, new_feature)

    if enter.palindromic is True:
        first_cds = allowed_features_list[0]
        last_cds = allowed_features_list[-1]
        for i in reversed(xrange(1, len(record.features))):
            i = len(record.features)-1-i
            if record.features[i].qualifiers.has_key('CHECK') and i < len(record.features):
                hit = record.features[i]
                for c in reversed(xrange(len(allowed_features_list))):
                    if allowed_features_list[c].location.end < hit.location.start:
                        cds_down = allowed_features_list[c]
                        break
                    elif hit.location.end < allowed_features_list[0].location.start:
                        cds_down = allowed_features_list[-1]
                        break
                for c in xrange(len(allowed_features_list)):
                    if allowed_features_list[c].location.start > hit.location.end:
                        cds_up = allowed_features_list[c]
                        break
                    elif hit.location.start < allowed_features_list[-1].location.end:
                        cds_down = allowed_features_list[0]
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
    print '\nFeatures added:', len(output_features)
    print '\n' + "-"*50
    SeqIO.write(record, output_handle, 'genbank')
    total += int(len(output_features))
output_handle.close()
newlines = DNA_topology(enter.output_file, circular_vs_linear)
new_output_file = open(enter.output_file, 'w')
new_output_file.writelines(newlines)
new_output_file.close()
input_handle.close()
print 'Total features: ', total
print 'CPU time: ', time.clock()
print '\n' + "="*50
