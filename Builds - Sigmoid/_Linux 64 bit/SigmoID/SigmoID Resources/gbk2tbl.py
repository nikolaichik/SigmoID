import os, sys, platform, functools
import argparse
from Bio import SeqIO
from geneparse import *

def createParser():

    parser = argparse.ArgumentParser(
             prog='Genbank to .tbl converter',
             usage='\n%(prog)s <input_file> [options]',
             description = '''This script allows to convert genbank file into .tbl file format
    Requires Biopython 1.70 (or newer). Use '>' (stdout) to create a .tbl file''',
             epilog='''(c) Aliaksandr Damienikan, 2015; code was ported to Python3.x by Pavel Vychyk, 2020.'''
            )
    parser.add_argument('input_file',
                        help='''path to input Genbank file.''')
    parser.add_argument('-f', '--fasta',
                        default=False,
                        action='store_const',
                        const=True,
                        help='''creates fasta from genbank file.''')
    parser.add_argument('-p', '--prefix',
                        default=False,
                        help='''sequencing centre prefix.''')
    parser.add_argument('-t', '--translation',
                        default=False,
                        action='store_const',
                        const=True,
                        help='''adds translation qualifier to CDS features in .tbl''')
    parser.add_argument('-v','--version', action='version', version='%(prog)s 1.4 (September 19, 2020)')
    return parser

args = createParser()
enter = args.parse_args()
arguments = sys.argv[1:0]
cwd = os.path.abspath(os.path.dirname(__file__))
genbank_file = SeqIO.parse(enter.input_file, 'genbank')
if enter.fasta != False:
    if platform.system() == 'Windows':
        fasta_name = enter.input_file[enter.input_file.rfind('\\'):enter.input_file.rfind('.')]
        fasta_file = open('{}\\{}.fasta'.format(cwd, fasta_name), 'w')
    else:
        fasta_name = enter.input_file[enter.input_file.rfind('/'):enter.input_file.rfind('.')]
        fasta_file = open('{}/{}.fasta'.format(cwd, fasta_name), 'w')
    SeqIO.write(genbank_file, fasta_file, 'fasta')
    genbank_file.close()
    fasta_file.close()
for record in genbank_file:
    print ('>Feature {}'.format(record.id))
    for feature in record.features:
        if feature.type != 'source':
            if feature.strand == 1:
                start = feature.location.start+1
                end = feature.location.end
            elif feature.strand == -1:
                start = feature.location.end
                end = feature.location.start+1
            feature_type = str(feature.type)
            qualifiers = ''
            loci = ''
            for key, value in feature.qualifiers.items():
                    if len(value) > 1:
                        delimiter = '\n\t\t\t{}\t'.format(''.join(key))
                        qualifiers += delimiter
                        qualifiers += functools.reduce(lambda a, b: a + delimiter + b, value)
                    if enter.translation == True and key == 'translation':
                        qualifiers += '\n\t\t\t{}\t{}'.format(key, ' '.join(value))
                    if key == 'locus_tag':
                        loci = value
                    if key == 'protein_id':
                        if enter.prefix != False:
                            qualifiers += '\n\t\t\t{}\t{}'.format(''.join(key), 'gb|'+''.join(value)+'||gnl|'+enter.prefix+'|'+''.join(loci))
                        else:
                            qualifiers += '\n\t\t\t{}\t{}'.format(key, ''.join(value))
                    if key != 'protein_id' and key !='translation' and len(value) <= 1:
                        qualifiers += '\n\t\t\t{}\t{}'.format(key, ' '.join(value))
            print ('{}\t{}\t{}\t{}'.format(start, end, feature_type, qualifiers))

