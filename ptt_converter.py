from Bio import SeqIO
import os, platform
import sys
import argparse


def createParser():

    parser = argparse.ArgumentParser(
             prog='Genbank to PTT converter',
             usage='\n%(prog)s <input_file> ',
             description = '''This script allows to convert genbank file into .ptt file format
    Requires Biopython 1.64 (or newer)''',
             epilog='''(c) Aliaksandr Damienikan, 2015.'''
            )
    parser.add_argument('input_file',
                        help='''path to input Genbank file.''')
    parser.add_argument('-v','--version', action='version', version='%(prog)s 1.1 (May 10, 2015)')
    return parser


args = createParser()
enter = args.parse_args()
arguments = sys.argv[1:0]
if platform.system() != 'Windows':
    name = enter.input_file.split('/')[-1]
else:
    name = enter.input_file.split('\\')[-1]
gbk = SeqIO.parse(enter.input_file, 'gb')
cwd = os.path.abspath(os.path.dirname(__file__))
if platform.system() != 'Windows':
    renamed_cwd = cwd.replace(' ', '\\ ')
else:
    renamed_cwd = cwd
def list_of_features(genbank_record, feature_type):
    list = []
    for feature in genbank_record.features:
        if feature.type == feature_type:
            list.append(feature)
    return list


def ptt_location(feature):
    # This function specifes location of genbank (from genbank_record) feature of selected type (feature_type).
    location = (str(int(feature.location.start)+1) + '..' + str(feature.location.end))
    return location


def ptt_pid(feature):
    pid = '-'
    if feature.qualifiers.has_key('db_xref'):
        pid = feature.qualifiers['db_xref']
        if type(pid) == list and any(value.startswith('GI:') for value in pid):
            for id in pid:
                if id.startswith('GI:'):
                    pid = id[3:]
                    break
        elif type(pid) == str and pid.startswith('GI:'):
                pid = pid[3:]
        else:
            pid = '-'
    return pid


def ptt_gene(feature):
    if feature.qualifiers.has_key('gene'):
        gene = str(feature.qualifiers['gene'])[2:-2]
    else:
        gene = '-'
    return gene


def ptt_synonym(feature):
    if feature.qualifiers.has_key('gene_synonym'):
        synonym = str(feature.qualifiers['gene_synonym']).replace('\'', '').replace('[', '').replace(']', '')
    else:
        synonym = '-'
    return synonym


def ptt_code(feature):
    if feature.qualifiers.has_key('locus_tag'):
        code = str(feature.qualifiers['locus_tag'])[2:-2]
    else:
        code = '-'
    return code


def ptt_product(feature):
    if feature.qualifiers.has_key('product'):
        product = str(feature.qualifiers['product'])[2:-2]
    else:
        product = '-'
    return product


def ptt_writer(genbank_record, ptt_output, cwd):
    if platform.system() != 'Windows':
        ptt_file = open('/%s/%s.ptt' % (cwd, record.id), 'w')
    else:
        ptt_file = open('\%s\%s.ptt' % (cwd, record.id), 'w')
    ptt_file.write(ptt_output)
    ptt_file.close()

for record in gbk:
    output = ''
    record_start = str(int(record.features[0].location.start))
    record_end = str(record.features[0].location.end)
    features = list_of_features(record, 'gene')
    feature_amount = str(len(features))
    output += '%s - %s..%s' % (record.description, record_start, record_end)
    output += '\n%s genes' % feature_amount
    output += '\nLocation\tStrand\tLength\tPID\tGene\tSynonym\tCode\tCOG\tProduct'
    for feature in features:
        if feature.strand == +1:
            strand = '+'
        else:
            strand = '-'
        location = ptt_location(feature)
        length = feature.location.end - feature.location.start - 1
        pid = ptt_pid(feature)
        gene = ptt_gene(feature)
        synonym = ptt_synonym(feature)
        code = ptt_code(feature)
        cog = '-'
        product = ptt_product(feature)
        output += '\n%s\t%s\t%s\t%s\t%s\t%s\t%s\t%s\t%s' % (location, strand, length, pid, gene, synonym, code, cog,
                                                            product)
    ptt_writer(record, output, cwd)
gbk.close()
