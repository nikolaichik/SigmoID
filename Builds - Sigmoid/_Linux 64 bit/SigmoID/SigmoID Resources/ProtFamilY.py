import sys
import argparse
from Bio import SeqIO

def createParser():

    parser = argparse.ArgumentParser(
             prog='ProtFamily.py',
             usage='\n%(prog)s <hmmsearch_result> <input_file> <output_file> -f family_name',
             description='''This script adds feature notes (with TF family names) to a GenBank file based on hmmsearch results.''',
             epilog='''(c) Ulyana Kravchenko, 2017.''')
    parser.add_argument('hmmsearch_result',
                       help='''path to hmmsearch result file.''')
    parser.add_argument('input_file',
                       help='''path to input Genbank file.''')
    parser.add_argument('output_file',
                        help='''path to output Genbank file.''')
    parser.add_argument('-f','--family',
                        type= str,
                        metavar='',
                        help='''adds the name of protein family in GenBank file ''')
    parser.add_argument('-v','--version', action='version', version='%(prog)s 1.0 (March 10, 2017)')
    return parser

args = createParser()
enter = args.parse_args()

tags = set()
try:
    hmmsearch_result = open(enter.hmmsearch_result, 'r')
except IOError:
    sys.exit('Open error! Please check your hmmsearch_result!')
file = []
for line in hmmsearch_result:
    file.append(line)
    if '>>' in line:
        s = line
        s = s.strip('>> \n')
        s = s.split()[0]+'"'
        tags.add('"'+s)

input_gbk = open(enter.input_file, 'r')
records = SeqIO.parse(input_gbk, 'genbank')
try:
    input_gbk = open(enter.input_file, 'r')
except IOError:
    sys.exit('Open error! Please check your genbank input file!')

file = []
CDS_parse = False
for line in input_gbk:
    file.append(line)
    if 'CDS' in line:
        CDS_parse = True
    if CDS_parse and 'protein_id' in line:
        s = line
        s = s.strip(' /protein_id=\n')
        if s in tags:
            file.append('                     /note="'+enter.family+'"\n')
with open(enter.output_file, 'w') as output_file:
    for line in file:
        output_file.write(line)
