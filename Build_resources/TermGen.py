import os
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
                        help='''path to input Genbank file.''')
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
    parser.add_argument('-v','--version', action='version', version='%(prog)s 1.1 (April 13, 2015)')
    return parser

args = createParser()
enter = args.parse_args()
arguments = sys.argv[1:0]
name = enter.input_file.split('/')[-1]
cwd = os.path.abspath(os.path.dirname(__file__))
renamed_cwd = cwd.replace(' ', '\\ ')
tmp_directory = tempfile.gettempdir()
print renamed_cwd

# handling with fasta...
input_gbk = open(enter.input_file, 'r')
gbk = SeqIO.parse(input_gbk, 'genbank')
output_fasta = open('%s/%s.fasta' % (cwd, name), 'w')
SeqIO.write(gbk, output_fasta, 'fasta')
output_fasta.close()
input_gbk.close()

try:
    input_gbk = open(enter.input_file, 'r')
except IOError:
    sys.exit('Open error! Please check your genbank input file!')
output_gbk = open(enter.output_file, 'w')
id_list =[record.id for record in SeqIO.parse(input_gbk, 'genbank')]
if len(id_list) > 1:
    raise IOError('Your genbank file contains >1 records')
id = id_list[0]
input_gbk.close()
input_gbk = open(enter.input_file, 'r')
records = SeqIO.parse(input_gbk, 'genbank')

# executes ptt_converter.py script
ptt_converter = 'python %s/ptt_converter.py %s' % (renamed_cwd, enter.input_file)
os.system(ptt_converter)

# sets paths for TransTerm HP input files
fasta_file = '%s/%s.fasta' % (renamed_cwd, name)
ptt_file = '%s/%s.ptt' % (renamed_cwd, id)

# sets directory for output and executes TransTerm HP
if enter.output == '':
    transterm_output = '%s/transterm_output' % tmp_directory
else:
    transterm_output = '%s' % enter.output
transterm_cmd = '%s/TransTermHP/transterm --min-conf=%s -S -p %s/TransTermHP/expterm.dat %s %s > %s' % (renamed_cwd,
                                                                                        enter.confidence,
                                                                                        renamed_cwd, fasta_file,
                                                                                        ptt_file, transterm_output)
os.system(transterm_cmd)


'''This piece of code deals with the TransTerm HP output file.'''

# opens the output file
try:
    terms_out = open(transterm_output, 'r')
except IOError:
    sys.exit('Couldn\'t find directory %s. Please check your path.' % transterm_output)
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
print terminators
for record in records:
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
            if strand == +1:
                gene = terminator[0]
            else:
                break
        elif surrounding == 'T':  # 'T' = between the ends of a +strand gene and a -strand gene
            if strand == -1:
                gene = terminator[-1]
            else:
                gene = terminator[0]
        elif surrounding == 'R':  # 'R' = between two -strand genes
            if strand == -1:
                gene = terminator[-1]
            else:
                break
        else:
            pass
        if gene != True:
            qualifiers = {'gene': gene, 'note': 'TransTerm HP conf=%s, tail_score=%s' % (conf, tail_score)}
        else:
            qualifiers = {'note': 'TransTerm HP conf=%s, tail_score=%s' % (conf, tail_score)}
        feature_location = FeatureLocation(start, end)
        my_feature = SeqFeature(location=feature_location, type='terminator', strand=strand,
                                qualifiers=qualifiers)

        # adding terminators to genbank features list
        for i in reversed(xrange(len(record.features))):
            if record.features[i].location.start < start:
                record.features.insert(i+1, my_feature)
                break
    SeqIO.write(record, output_gbk, 'genbank')
output_gbk.close()
input_gbk.close()
terms_out.close()
