import os, platform
import argparse
import sys
import tempfile
from Bio import SeqIO
from Bio.SeqFeature import FeatureLocation
from Bio.SeqFeature import SeqFeature

def createParser():

    parser = argparse.ArgumentParser(
             prog='TermGen',
             usage='\n%(prog)s <input_file> <output_file> [options]',
             description='''This script allows to add terminators to a genbank file according to TransTerm HP results.
    Requires Biopython 1.64 (or newer)''',
             epilog='''(c) Aliaksandr Damienikan, 2015.''')
    parser.add_argument('input_file',
                       help='''path to input Genbank file.''')
    parser.add_argument('output_file',
                        help='''path to output Genbank file.''')
    parser.add_argument('-o', '--output',
                        default='',
                        type=str,
                        metavar='<path>',
                        help='''redirects TransTerm HP output file to directory given''')
    parser.add_argument('-C', '--confidence',
                        default=70,
                        type=int,
                        metavar='<integer>',
                        help='''threshold Score.''')
    parser.add_argument('--minstem',
                        default=1,
                        type=int,
                        metavar='<integer>',
                        help='''Stem must be n nucleotides long''')
    parser.add_argument('--minloop',
                        default=1,
                        type=int,
                        metavar='<integer>',
                        help='''Loop portion of the hairpin must be at least n long''')
    parser.add_argument('--maxlen',
                        default=1,
                        type=int,
                        metavar='<integer>',
                        help='''Total extent of hairpin <= n NT long''')
    parser.add_argument('--maxloop',
                        default=1,
                        type=int,
                        metavar='<integer>',
                        help='''The loop portion can be no longer than n''')
    parser.add_argument('-v','--version', action='version', version='%(prog)s 1.13 (March 12, 2016)')
    return parser

args = createParser()
enter = args.parse_args()
arguments = sys.argv[1:0]
win_cwd = os.getcwd()
win_cwd = win_cwd.replace('\\\\', '\\')
if platform.system() == 'Windows':
    name = enter.input_file.split('\\')[-1]
    name = name.split('.')[0]
else:
    name = enter.input_file.split('/')[-1]
    name = name.split('.')[0]
cwd = os.path.abspath(os.path.dirname(__file__))
if platform.system() != 'Windows':
    renamed_cwd = cwd.replace(' ', '\ ')
    renamed_cwd = cwd.replace('(', '\(')
    renamed_cwd = cwd.replace(')', '\)')
else:
    renamed_cwd = ''
    expterm_cwd = ''
    renamed = cwd.split('\\')
    for d in renamed:
        if any(symbol == ' ' for symbol in d):
            renamed_cwd += '"%s"\\' % d
            expterm_cwd += '"%s"\\' % d
        elif any(symbol == ':' for symbol in d):
            renamed_cwd += '%s\\' % d
            expterm_cwd += '%s\\\\' % d
        else:
            renamed_cwd += '%s\\' % d
            expterm_cwd += '%s\\' % d
tmp_directory = tempfile.gettempdir()

# creating output info
print '\nTermGen 1.13 (March 12, 2016))'
print "="*50
output_args = ''
for arg in range(1, len(sys.argv)):
    output_args += sys.argv[arg] + ' '
print 'Options used:\n%s' % output_args

# handling with fasta...
print '\nCreating .fasta file...'
input_gbk = open(enter.input_file, 'r')
gbk = SeqIO.parse(input_gbk, 'genbank')
if platform.system() != 'Windows':
    output_fasta = open('%s/%s.fasta' % (cwd, name), 'w')
else:
    output_fasta = open('%s\%s.fasta' % (win_cwd, name), 'w')
SeqIO.write(gbk, output_fasta, 'fasta')
output_fasta.close()
input_gbk.close()

try:
    input_gbk = open(enter.input_file, 'r')
except IOError:
    sys.exit('Open error! Please check your genbank input file!')
circular_vs_linear = []
for line in input_gbk.readlines():
    if line.startswith('LOCUS'):
        circular_vs_linear.append(line)
input_gbk.close()
input_gbk = open(enter.input_file, 'r')
output_gbk = open(enter.output_file, 'w')
id_list =[record.id for record in SeqIO.parse(input_gbk, 'genbank')]
if len(id_list) > 1:
    raise IOError('Your genbank file contains >1 records')
id = id_list[0]
input_gbk.close()
input_gbk = open(enter.input_file, 'r')
records = SeqIO.parse(input_gbk, 'genbank')



# executes ptt_converter.py script
print 'Creating .ptt file...'
if platform.system() != 'Windows':
    edited_input = enter.input_file.replace(' ', '\\ ')
    edited_input = edited_input.replace('(', '\(')
    edited_input = edited_input.replace(')', '\)')
    ptt_converter = 'python %s/ptt_converter.py %s' % (renamed_cwd, edited_input)
else:
    ptt_converter = 'C:\Python27\python %s\ptt_converter.py %s' % (expterm_cwd, enter.input_file.replace(' ', '^ '))
os.system(ptt_converter)

# sets paths for TransTerm HP input files
if platform.system() != 'Windows':
    fasta_file = '%s/%s.fasta' % (renamed_cwd, name)
    ptt_file = '%s/%s.ptt' % (renamed_cwd, id)
else:
    fasta_file = '%s.fasta' % (name)
    ptt_file = '%s.ptt' % (id)

# sets directory for output and executes TransTerm HP
print 'Running TransTerm HP...\n%s' % ('-'*50)
if enter.output == '':
    if platform.system() != 'Windows':
        transterm_output = '%s/transterm_output' % tmp_directory
    else:
        transterm_output = '%s\\transterm_output' % tmp_directory
else:
    transterm_output = '%s' % enter.output
additional_options = ''
if enter.minstem != 1:
    additional_options += '--min-stem=%s ' % str(enter.minstem)
if enter.minloop != 1:
    additional_options += '--min-loop=%s ' % str(enter.minloop)
if enter.maxlen != 1:
    additional_options += '--max-len=%s ' % str(enter.maxlen)
if enter.maxloop != 1:
    additional_options += '--max-loop=%s ' % str(enter.maxloop)
if platform.system() != 'Windows':
    transterm_cmd = '%s/transterm --min-conf=%s %s -S -p %s/expterm.dat %s %s > %s' % (renamed_cwd,
                                                                                        enter.confidence, additional_options,
                                                                                        renamed_cwd, fasta_file,
                                                                                        ptt_file, transterm_output)
else:
    transterm_cmd = '%stransterm --min-conf=%s %s -S -p %sexpterm.dat %s %s > "%s"' % (renamed_cwd,
                                                                                        enter.confidence, additional_options,
                                                                                        expterm_cwd, fasta_file,
                                                                                        ptt_file, transterm_output)
    print 'CMD:', transterm_cmd
os.system(transterm_cmd)


'''This piece of code deals with the TransTerm HP output file.'''

# opens the output file
try:
    terms_out = open(transterm_output, 'r')
except IOError:
    sys.exit('Couldn\'t find directory %s Please check your path.' % transterm_output)
term_out = terms_out.readlines()

# creates a list of lines, containing genes and terminators in order (deletes unnecessary lines)
term_lines = []
for line in xrange(len(term_out)):
    if term_out[line].startswith('SEQUENCE'):
        for i in xrange(line, len(term_out)):
            if len(term_out[i]) != 0:
                term_lines.append(term_out[i].replace('\n', ''))
        break
del term_lines[0]

# makes a mix strings, which contain a TERM-lines and up and down genes (the first and the last words)
terminators = []
for i in xrange(1, len(term_lines)-1):
    next_gene = '-'
    if term_lines[i][0] != ' ' and term_lines[i+1].startswith(' '):  # finds gene-line
        for item in xrange(i+2, len(term_lines)):
            if item < len(term_lines)-2 and term_lines[item].startswith(' ') is False:  # finds next gene-line
                next_gene = term_lines[item].split(' ')[0]
                break
            else:
                next_gene = '-'
        for l in xrange(i+1, len(term_lines)):  # finds TERM-lines
            if term_lines[l].startswith(' '):
                terminators.append(term_lines[i].split(' ')[0] + term_lines[l] + ' ' + next_gene)  # creates mix-line
            else:
                break

# this creates a lists of words from the mix-lines (see above)
terms = []
for terminator in terminators:
    terms.append([])
    words = terminator.split(' ')
    for word in words:
        if len(word) >= 1:
            terms[-1].append(word)

def dna_topology(path, topo_list):
    # This function deals with with DNA topology problem in biopython
    # for more detail: https://github.com/biopython/biopython/issues/363
    infile = open(path, 'r')
    loci_counter = -1  # because 1 is 0 in python
    lines = infile.readlines()
    for numline in xrange(len(lines)):
        if lines[numline].startswith('LOCUS'):
            loci_counter += 1
            lines[numline] = topo_list[loci_counter]
    infile.close()
    return lines

''' The part below creates a list of lists (each one is a founded terminator),
    where every feature contains information about it.'''

terminators = []
for item in terms:
    terminators.append([])
    terminators[-1].append(item[0])  # gene before the terminator [0]
    terminators[-1].append(item[3])  # start position [1]
    terminators[-1].append(item[5])  # end position [2]
    terminators[-1].append(item[7])  # surrounding (strands and structure of neighboring genes) [3]
    if int(item[3]) < int(item[5]):
        terminators[-1].append('+')  # this specifies strand [4]
    if int(item[3]) > int(item[5]):
        terminators[-1].append('-')
    terminators[-1].append(item[8])  # confidence of a terminator [5]
    terminators[-1].append(item[10])  # U-tail score [6]
    terminators[-1].append(item[-1])  # gene after the terminator [7]

# filters by confidence and U-tail score
to_delete_list = []
for item in reversed(xrange(len(terminators))):
    item = len(terminators) - item - 1
    for duplicate in xrange(item+1, len(terminators)):
        if terminators[item][0] == terminators[duplicate][0] and terminators[item][4] == terminators[duplicate][4] and \
                (int(terminators[item][1]) - int(terminators[duplicate][1]))**2 < 225:
            if int(terminators[item][5]) > int(terminators[duplicate][5]):
                to_delete_list.append(terminators[duplicate])
            elif int(terminators[item][5]) < int(terminators[duplicate][5]):
                to_delete_list.append(terminators[item])
            elif int(terminators[item][5]) == int(terminators[duplicate][5]):
                if float(terminators[item][6]) < float(terminators[duplicate][6]):
                    to_delete_list.append(terminators[duplicate])
                elif float(terminators[item][6]) > float(terminators[duplicate][6]):
                    to_delete_list.append(terminators[item])
                else:
                    pass
        elif terminators[item][0] != terminators[duplicate][0]:
            break

# deletes terminators with the same strand and aproximately similar location (see above)
for item in reversed(xrange(len(terminators))):
    item = len(terminators) - item - 1
    for terminator in to_delete_list:
        if terminators[item] == terminator:
            del terminators[item]
            break
for record in records:
    gene_list = []
    for feature in record.features:
        if feature.type == 'gene':
            gene_list.append(feature)
    for terminator in terminators:
        strand = int(terminator[4]+str(1))
        if strand == 1:
            start = int(terminator[1])-1
            end = int(terminator[2])
        else:
            start = int(terminator[2])-1
            end = int(terminator[1])
        surrounding = terminator[3]
        conf = terminator[5]
        tail_score = terminator[6]
        gene = True
        if surrounding == 'F':  # 'F' = between two +strand genes
            if strand == +1 and terminator[0] != 'UNK':
                gene = terminator[0]
            elif terminator[0] == 'UNK':
                pass
        elif surrounding == 'T':  # 'T' = between the ends of a +strand gene and a -strand gene
            if strand == -1 and terminator[-1] != 'UNK':
                gene = terminator[-1]
            elif strand == +1 and terminator[0] != 'UNK':
                gene = terminator[0]
        elif surrounding == 'R':  # 'R' = between two -strand genes
            if strand == -1 and terminator[-1] != 'UNK':
                gene = terminator[-1]
            elif terminator[-1] == 'UNK':
                pass
        else:
            pass
        qualifiers = {}
        if strand == +1:
            for feature in reversed(xrange(len(gene_list)-1)):
                if start > gene_list[feature].location.start and strand == gene_list[feature].strand:
                    if gene_list[feature].qualifiers.has_key('locus_tag'):
                        qualifiers['locus_tag'] =  gene_list[feature].qualifiers['locus_tag']
                        break
                elif start > gene_list[feature].location.start and strand != gene_list[feature].strand:
                    break
        elif strand == -1:
            for feature in xrange(len(gene_list)-1):
                if start < gene_list[feature].location.start and strand == gene_list[feature].strand :
                    if gene_list[feature].qualifiers.has_key('locus_tag'):
                        qualifiers['locus_tag'] =  gene_list[feature].qualifiers['locus_tag']
                        break
                elif start < gene_list[feature].location.start and strand != gene_list[feature].strand:
                    break

        if gene != True:
            qualifiers['gene'] = gene
            qualifiers['note'] = 'TransTerm HP conf=%s, tail_score=%s' % (conf, tail_score)
        else:
            qualifiers['note'] = 'TransTerm HP conf=%s, tail_score=%s' % (conf, tail_score)
        qualifiers['regulatory_class'] = 'terminator'
        qualifiers['TermGen_check'] = ['Checked!']
        feature_location = FeatureLocation(start, end)
        my_feature = SeqFeature(location=feature_location, type='regulatory', strand=strand,
                                qualifiers=qualifiers)

        # adding terminators to genbank features list
        for i in reversed(xrange(len(record.features))):
            if record.features[i].location.start < start:
                record.features.insert(i+1, my_feature)
                break

    # editing features to add U-tail
    new_features_list = []
    for feature in record.features:
        if feature.type == 'regulatory' and feature.qualifiers.has_key('TermGen_check'):
            u_tail = 0
            tail = ''
            if feature.strand == +1:
                penalty = 0
                for letter in xrange(feature.location.end, len(record.seq)):
                    if record.seq[letter] == 'T':
                        u_tail += 1
                        tail += record.seq[letter]
                    elif record.seq[letter] != 'T' and record.seq[letter+1] == 'T': 
                        u_tail += 2  # next letter is 'T'  
                        penalty += 1
                        tail += record.seq[letter]+record.seq[letter+1]
                        for next_letter in xrange(letter+2, len(record.seq)):
                            if record.seq[next_letter] == 'T':
                                u_tail += 1
                                tail += record.seq[next_letter]
                            elif record.seq[next_letter] != 'T':
                                break
                        break
                    elif record.seq[letter] != 'T' and record.seq[letter+1] != 'T':
                        break
            # handling with reverse complement strand
            if feature.strand == -1:
                penalty = 0
                for letter in reversed(xrange(0, feature.location.start)):
                    if record.seq[letter] == 'A':
                        u_tail += 1
                        tail += record.seq[letter]
                    elif record.seq[letter] != 'A' and record.seq[letter-1] == 'A': 
                        u_tail += 1   
                        penalty += 1
                        tail += record.seq[letter]
                        for next_letter in reversed(xrange(0, letter)):
                            if record.seq[next_letter] == 'A':
                                u_tail += 1
                                tail += record.seq[next_letter]
                            elif record.seq[next_letter] != 'A':
                                break
                        break
                    elif record.seq[letter] != 'A' and record.seq[letter-1] != 'A':
                        break
            # creating adjusted terminator's feature
            if feature.strand == +1:
            	new_feature_location = FeatureLocation(feature.location.start, feature.location.end+u_tail)
            elif feature.strand == -1:
                new_feature_location = FeatureLocation(feature.location.start-u_tail, feature.location.end)
            new_feature_qualifiers = {}
            for key, value in feature.qualifiers.iteritems():
                if key != 'TermGen_check':
                    new_feature_qualifiers[key] = value
            new_feature = SeqFeature(location=new_feature_location, type=feature.type, strand=feature.strand,
                                    qualifiers=new_feature_qualifiers)
            new_features_list.append(new_feature)
    # adding adjusted terminator's feature
    for feature in new_features_list:
        for i in reversed(xrange(len(record.features))):
            if record.features[i].location.start < feature.location.start:
                record.features.insert(i+1, feature)
                break
    for i in reversed(xrange(len(record.features))):
        i = len(record.features)-1-i
        if record.features[i].qualifiers.has_key('TermGen_check'):
            del record.features[i]
    SeqIO.write(record, output_gbk, 'genbank')
    print '-'*50
    print '%s terminators were added.\n' % len(new_features_list)
    print "="*50
output_gbk.close()
#overwriting output to add topology (see DNA_topology() function)
newlines = dna_topology(enter.output_file, circular_vs_linear)
new_output_file = open(enter.output_file, 'w')
new_output_file.writelines(newlines)
new_output_file.close()
input_gbk.close()
terms_out.close()
#deleting temporary ptt and fasta files
if platform.system() != 'Windows':
    os.remove('%s/%s.fasta' % (cwd, name))
    os.remove('%s/%s.ptt' % (cwd, id))
else:
    os.remove('%s.fasta' % (name))
    os.remove('%s.ptt' % (id))
