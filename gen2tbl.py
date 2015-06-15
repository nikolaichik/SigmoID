import os, sys, platform
import argparse
from Bio import SeqIO

def createParser():

    parser = argparse.ArgumentParser(
             prog='Genbank to .tbl converter',
             usage='\n%(prog)s <input_file> [options]',
             description = '''This script allows to convert genbank file into .tbl file format
    Requires Biopython 1.64 (or newer). Use '>' (stdout) to create a .tbl file''',
             epilog='''(c) Aliaksandr Damienikan, 2015.'''
            )
    parser.add_argument('input_file',
                        help='''path to input Genbank file.''')
    parser.add_argument('-f', '--fasta',
                        default=False,
                        action='store_const',
                        const=True,
                        help='''creates fasta from genbank file.''')
    parser.add_argument('-t', '--translation',
                        default=False,
                        action='store_const',
                        const=True,
                        help='''adds translation qualifier to CDS features in .tbl''')
    parser.add_argument('-v','--version', action='version', version='%(prog)s 1.0 (June 2, 2015)')
    return parser

args = createParser()
enter = args.parse_args()
arguments = sys.argv[1:0]
cwd = os.path.abspath(os.path.dirname(__file__))

genbank_file = SeqIO.parse(enter.input_file, 'genbank')
if enter.fasta != False:
    if platform.system() == 'Windows':
        fasta_name = enter.input_file[enter.input_file.rfind('\\'):enter.input_file.rfind('.')]
        fasta_file = open('%s\\%s.fasta' % (cwd, fasta_name), 'w')
    else:
        fasta_name = enter.input_file[enter.input_file.rfind('/'):enter.input_file.rfind('.')]
        fasta_file = open('%s/%s.fasta' % (cwd, fasta_name), 'w')
    SeqIO.write(genbank_file, fasta_file, 'fasta')
    genbank_file.close()
    fasta_file.close()
genbank_file = SeqIO.parse(enter.input_file, 'genbank')
for record in genbank_file:
    print '>Feature %s' % record.id
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
            for key, value in feature.qualifiers.iteritems():
                if key != 'translation' or (enter.translation == True and key == 'translation'):
                    if type(value) != list:
                        qualifiers += '\n\t\t\t%s\t%s' % (key, str(value)[2:-2])
                    else:
                        for x in xrange(len(value)):
                            qualifiers += '\n\t\t\t%s\t%s' % (key, str(value[x])[2:-2])
            print '%s\t%s\t%s\t%s' % (start, end, feature_type, qualifiers)
genbank_file.close()
