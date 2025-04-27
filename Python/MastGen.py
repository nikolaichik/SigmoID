import sys
import ast
import argparse
import time
import Bio
from Bio.SeqFeature import FeatureLocation
from Bio.SeqFeature import SeqFeature


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
        if Bio.__version__ != '1.68':  # to avoid problems with diff biopython versions
            if not hasattr(self, "_sub_features"):
                self._sub_features = []
            if len(self._sub_features) != 0:
                out += "Sub-Features\n"
                for sub_feature in self._sub_features:
                    out += "%s\n" % sub_feature
        return out


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
        # checking if hit is within other features
        return True
    else:
        return False


def is_divergent(feature_1, feature_2):
    if feature_1.strand == -1 and \
       feature_1.strand != feature_2.strand:
        return True
    else:
       return False


def mast_parser(path_to_file):
    try:
        with open(path_to_file, 'r') as a:
            mast_file_lines = a.readlines()
    except IOError:
        sys.exit('Open error! Please check your MAST report input file!')
    mast_hit_list = [[part for part in hit_line.replace('\n', '').split(' ')
                      if part != '']
                     for hit_line in mast_file_lines
                     if not hit_line.startswith('#')]
    return mast_hit_list


def sorting_output_features(lst):
    bit_score_list = []
    for some_feature in lst:
        for key in some_feature.qualifiers.keys():
            if key == 'note':
                temp = some_feature.qualifiers[key]
                if isinstance(temp, list):
                    temp = temp[0]
                temp = temp.split(' ')
                bit_score_list.append(float(temp[-3]))
    return bit_score_list


def score_parser(some_feature):
    for key in some_feature.qualifiers.keys():
        if key == 'note' and not isinstance(some_feature.qualifiers['note'], list):
            temp = some_feature.qualifiers[key]
            temp = temp.split(' ')
            bit_score = float(temp[-3])
            return bit_score
        elif key == 'note' and isinstance(some_feature.qualifiers['note'], list):
            for note in some_feature.qualifiers['note']:
                if note.startswith('MAST'):
                    temp = note
                    temp = temp.split(' ')
                    bit_score = float(temp[-3])
                    return bit_score


def output(list_of_scores, outfeatures):
    for val in list_of_scores:
        for some_feature in outfeatures:
            if val == feature_score(some_feature):
                print(some_feature)
                outfeatures = [f for f in outfeatures
                             if f != some_feature]


def feature_score(some_feature):
    for key in some_feature.qualifiers.keys():
        if key == 'note' and some_feature.qualifiers[key]:
            temp = some_feature.qualifiers[key]
            if isinstance(temp, list):
                temp = temp[0]
            temp = temp.split(' ')
            return float(temp[-3])


def dna_topology(path, topo_list):
    # This function deals with with DNA topology problem in biopython
    # for more detail: https://github.com/biopython/biopython/issues/363
    with open(path, 'r') as infile:
        loci_counter = -1  # because 1 is 0 in python
        lines = infile.readlines()
    for numline in range(len(lines)):
        if lines[numline].startswith('LOCUS'):
            loci_counter += 1
            lines[numline] = topo_list[loci_counter]
    return lines


def createparser():
    parser = argparse.ArgumentParser(
             prog='MastGen',
             usage='\n%(prog)s <report_file>  <input_file> <output_file> \
                    [options]',
             description='This script allows to add features to a \
                              genbank file according to MAST results.\
                              Requires Biopython 1.80 (or newer)',
             epilog='(c) Aliaksandr Damienikan, 2015-2016. \ updated to python 3 with DeepSeek')
    parser.add_argument('report_file',
                        help='''path to MAST report file produced with \
                                -tblout option.''')
    parser.add_argument('input_file',
                        help='path to input Genbank file.')
    parser.add_argument('output_file',
                        help='path to output Genbank file.')
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
                        help='add this qualifier to each annotated feature.')
    parser.add_argument('-p', '--palindromic',
                        action='store_const',
                        const=True,
                        default=False,
                        help='filter palindromic sites.')
    parser.add_argument('-n', '--name',
                        action='store_const',
                        const=True,
                        default=False,
                        help='don\'t pick \'locus_tag\' and \'gene\' \
                                qualifiers from the next CDS feature.')
    parser.add_argument('-V', '--pval',
                        default=False,
                        type=float,
                        metavar='<float or integer>',
                        help='threshold E-Value.')
    parser.add_argument('-S', '--score',
                        default=False,
                        type=float,
                        metavar='<float or integer>',
                        help='threshold Bit Score.')
    parser.add_argument('-i', '--insert',
                        action='store_const',
                        const=True,
                        default=False,
                        help='don\'t add features inside CDS')
    parser.add_argument('-d', '--duplicate',
                        action='store_const',
                        const=True,
                        default=False,
                        help='no duplicate features with the same location \
                                and the same protein_bind qualifier \
                                value')
    parser.add_argument('-v', '--version',
                        action='version',
                        version='%(prog)s 1.14 (April 27 27, 2025)')
    parser.add_argument('-f', '--feature',
                        metavar='<"feature key">',
                        default='unknown type',
                        help='feature key to add  (promoter, \
                              protein_bind etc.)')
    return parser


def main():
    args = createparser()
    enter = args.parse_args()
    arguments = sys.argv[1:]
    max_pval = enter.pval
    if enter.length is not False:
        enter.max_length = enter.length
    
    try:
        from Bio import SeqIO
    except ImportError:
        sys.exit('\nYou have no Biopython module installed!\n\
    You can download it here for free: http://biopython.org/wiki/Download\n')
    
    try:
        with open(enter.input_file, 'r') as input_handle:
            circular_vs_linear = []
            for line in input_handle.readlines():
                if line.startswith('LOCUS'):
                    circular_vs_linear.append(line)
    except IOError:
        sys.exit('Open error! Please check your genbank input file!')
    
    try:
        output_handle = open(enter.output_file, 'w')
    except IOError:
        sys.exit('Open error! Please check your genbank output path!')
    
    print('\nMastGen 1.11 (March 26, 2017)')
    print("="*50)
    print('Options used:\n')
    for arg in sys.argv[1:]:
        print(arg)

    file_path = enter.report_file
    qualifier = {'CHECK': 'CHECKED!'}
    if enter.qual:
        qualifiers_function(enter.qual, qualifier)
    
    allign_list = mast_parser(file_path)
    records = SeqIO.parse(enter.input_file, 'genbank')
    allowed_types = ['CDS', 'ncRNA', 'sRNA', 'tRNA', 'misc_RNA']
    total = 0
    
    for record in records:
        print('\n' + "-"*50 + "\nCONTIG: " + record.id)
        print('\n   FEATURES ADDED: \n')
        allowed_features_list = []
        for feature in record.features:
            if feature.type in allowed_types:
                allowed_features_list.append(feature)

        for allign in allign_list:
            try:
#                start = int(allign[2])
#                end = int(allign[3])
#                strnd = int(allign[1])
#                p_value = float(allign[5])
#                score = float(allign[4])
                start = int(allign[4])
                end = int(allign[5])
                strnd = int(allign[1])
                p_value = float(allign[7])
                score = float(allign[6])
            except (IndexError, ValueError):
                print("Error while parsing MAST output! Please check it.")
                print("The problem may be in line:")
                print(' '.join(allign))
                sys.exit()
#                                sequence_name (strand+/-) motifid alt_id hit_start hit_end score hit_p-value
#                                                    0     1    2   3    4     5      6      7
#        RpoN_NtrC_RoxR_PilR_FleR_ArsR_IscR_RpoS_termSP.gb -1 fasta - 339520 339539 1480.50 4.78e-06
            
            feature_length = end - (start-1)
#            start_pos = FeatureLocation.ExactPosition(start-1)
#            end_pos = FeatureLocation.ExactPosition(end)
            start_pos = start-1
            end_pos = end
            feature_location = FeatureLocation(start_pos, end_pos)





            feature_type = enter.feature
            
            note_qualifier = {}
            note_qualifier['note'] = 'MAST score %s P-value %s' % (score, p_value)
            
            my_feature = MySeqFeature(
                location=feature_location,
                type=feature_type,
                strand=strnd,
                qualifiers={**qualifier, **note_qualifier})

            # Insert feature at correct position
            inserted = False
            for i, existing_feature in enumerate(record.features):
                if existing_feature.location.start > my_feature.location.start:
                    record.features.insert(i, my_feature)
                    inserted = True
                    break
            
            if not inserted:
                record.features.append(my_feature)

        if enter.insert:
            hit_list = []
            for feature in record.features:
                if 'CHECK' in feature.qualifiers.keys():
                    hit_list.append(feature)

            for i in reversed(range(len(hit_list))):
                hit = hit_list[i]
                for n in range(len(allowed_features_list)-1):
                    if is_within_feature(allowed_features_list, n, hit) or \
                       wrong_promoter_strand(allowed_features_list[n],
                                           hit,
                                           allowed_features_list[n+1]):
                        hit_list.pop(i)
                        break

            record.features = [f for f in record.features 
                             if not ('CHECK' in f.qualifiers.keys() and 
                                    f not in hit_list)]

        if not enter.name:
            for i in reversed(range(len(record.features))):
                feature = record.features[i]
                if 'CHECK' in feature.qualifiers.keys():
                    individual_qualifiers = {}
                    
                    # Find neighboring CDS features
                    cds_up = None
                    cds_down = None
                    
                    for j in range(i+1, len(record.features)):
                        if record.features[j].type in allowed_types:
                            cds_up = record.features[j]
                            break
                    
                    for j in reversed(range(i)):
                        if record.features[j].type in allowed_types:
                            cds_down = record.features[j]
                            break
                    
                    if not cds_up and allowed_features_list:
                        cds_up = allowed_features_list[0]
                    if not cds_down and allowed_features_list:
                        cds_down = allowed_features_list[-1]
                    
                    if (enter.palindromic and cds_up and cds_down and 
                        cds_up.strand == cds_down.strand) or not enter.palindromic:
                        if feature.strand == -1 and cds_down:
                            if 'gene' in cds_down.qualifiers:
                                individual_qualifiers['gene'] = cds_down.qualifiers['gene']
                            if 'locus_tag' in cds_down.qualifiers:
                                individual_qualifiers['locus_tag'] = cds_down.qualifiers['locus_tag']
                        elif feature.strand == 1 and cds_up:
                            if (feature.strand == cds_up.strand and enter.palindromic) or not enter.palindromic:
                                if 'gene' in cds_up.qualifiers:
                                    individual_qualifiers['gene'] = cds_up.qualifiers['gene']
                                if 'locus_tag' in cds_up.qualifiers:
                                    individual_qualifiers['locus_tag'] = cds_up.qualifiers['locus_tag']
                            elif feature.strand != cds_up.strand and enter.palindromic and cds_down:
                                if 'gene' in cds_down.qualifiers:
                                    individual_qualifiers['gene'] = cds_down.qualifiers['gene']
                                if 'locus_tag' in cds_down.qualifiers:
                                    individual_qualifiers['locus_tag'] = cds_down.qualifiers['locus_tag']
                    
                    individual_qualifiers.update(feature.qualifiers)
                    new_feature = MySeqFeature(
                        location=feature.location,
                        type=feature.type,
                        strand=feature.strand,
                        qualifiers=individual_qualifiers)
                    
                    record.features[i] = new_feature

        output_features = []
        for feature in record.features:
            if 'CHECK' in feature.qualifiers.keys():
                del feature.qualifiers['CHECK']
                output_features.append(feature)
        
        score_list = sorting_output_features(output_features)
        score_list.sort()
        output(score_list, output_features)
        
        for feature in record.features:
            for qual in ['cds_down_locus_tag', 'cds_up_locus_tag', 
                        'cds_down_gene', 'cds_up_gene']:
                if qual in feature.qualifiers:
                    del feature.qualifiers[qual]
        
        print('\nFeatures added:', len(output_features))
        print('\n' + "-"*50)
        SeqIO.write(record, output_handle, 'genbank')
        total += len(output_features)
    
    output_handle.close()
    
    # Handle DNA topology
    with open(enter.output_file, 'r') as f:
        lines = f.readlines()
    
    loci_counter = -1
    for i in range(len(lines)):
        if lines[i].startswith('LOCUS'):
            loci_counter += 1
            if loci_counter < len(circular_vs_linear):
                lines[i] = circular_vs_linear[loci_counter]
    
    with open(enter.output_file, 'w') as f:
        f.writelines(lines)
    
    print('Total features: ', total)
    print('CPU time: ', time.process_time())
    print('\n' + "="*50)


if __name__ == '__main__':
    main()