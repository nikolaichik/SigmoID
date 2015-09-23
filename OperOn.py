import os, platform
import argparse
import sys
import tempfile
from Bio import SeqIO
from Bio.SeqFeature import FeatureLocation
from Bio.SeqFeature import SeqFeature

class Operon():
    def __init__(self, name, genes):
        self.name = name
        self.genes = genes

    def __str__(self):
        out = '>%s\n' % self.name
        for gene_loci_product in self.genes:
            out += '\t%s\t%s\t%s\n' % (gene_loci_product[0],
                                       gene_loci_product[1],
                                       gene_loci_product[2])
        return out

def createParser():

    parser = argparse.ArgumentParser(
             prog='RegOperon',
             usage='\n%(prog)s <input_file> <output_file> [options]',
             description='''This script allows to add terminators to a genbank file according to TransTerm HP results.
    Requires Biopython 1.64 (or newer)''',
             epilog='''(c) Aliaksandr Damienikan, 2015.''')
    parser.add_argument('input_file',
                       help='''path to input Genbank file.''')
    parser.add_argument('output_file',
                        help='''path to output Genbank file.''')
    parser.add_argument('-g', '--gap',
                        default=200,
                        type=int,
                        metavar='<int>',
                        help='''set a threshold for gaps between operons ''')
    parser.add_argument('-i', '--indent',
                        default=200,
                        type=int,
                        metavar='<int>',
                        help='''set a threshold for indentation from very first gene to regulatory region''')
    parser.add_argument('-t', '--terminator',
                        action='store_const',
                        const='On',
                        default='Off',
                        help='''terminators are regarded as operon separator''')       
    parser.add_argument('-v','--version', action='version', version='%(prog)s 1.0 (September 23, 2015)')
    return parser

args = createParser()
enter = args.parse_args()
arguments = sys.argv[1:0]
try:
    from Bio import SeqIO
except ImportError:
    raise ImportError('\nYou have no Biopython module installed!\nYou can download it here for free: http://biopython.org/wiki/Download\n')
try:
    input_handle = open(enter.input_file, 'r')
except IOError:
    raise IOError('Open error! Please check your genbank input file!')
genome = SeqIO.parse(input_handle, 'genbank')
test_operons = []
operons = []
plus_strand = []
minus_strand = []
all_features = []
cds_list = []
for record in genome:
    for feature in record.features:
        if feature.type == 'gene' or feature.type == 'protein_bind' or \
                (feature.qualifiers.has_key('regulatory_class') and \
                str(feature.qualifiers['regulatory_class'])[2:-2] == 'terminator') or  \
                    (feature.qualifiers.has_key('regulatory_class') and \
                    str(feature.qualifiers['regulatory_class'])[2:-2] == 'promoter'):
            all_features.append(feature)
        if feature.type == 'CDS':
            cds_list.append(feature)
for n in range(len(all_features)):
    if all_features[n].type == 'gene':
        for cds in cds_list:
            if all_features[n].qualifiers['locus_tag'] == cds.qualifiers['locus_tag']:
                all_features[n] = cds
                break
for feature in all_features:
    if feature.strand == 1:
        plus_strand.append(feature)
    elif feature.strand == -1:
        minus_strand.append(feature)
for feature in reversed(plus_strand):
    if feature.type == 'gene' or feature.type == 'CDS':
        last_plus = plus_strand.index(feature)
        break
rev_minus_strand = []
for item in reversed(minus_strand):
    rev_minus_strand.append(item)
for feature in reversed(rev_minus_strand):
    if feature.type == 'gene' or feature.type == 'CDS':
        last_minus = rev_minus_strand.index(feature)
        break
regulators = []
for feature in plus_strand:
    if feature.type == 'protein_bind' or \
    (feature.qualifiers.has_key('regulatory_class') and str(feature.qualifiers['regulatory_class'])[2:-2] == 'promoter'):
        oper = []
        if any(regulator==str(feature.qualifiers['bound_moiety'])[2:-2] for regulator in regulators) == False:
            regulators.append(str(feature.qualifiers['bound_moiety'])[2:-2])
        oper.append(str(feature.qualifiers['bound_moiety'])[2:-2])
        counter = 0
        for item in plus_strand[plus_strand.index(feature):]:
            if item.type == 'gene' or item.type == 'CDS':
                gene_loci_product = []
                counter += 1
                if counter == 1 and (item.location.start - feature.location.end) < enter.indent:
                    try:
                        gene_loci_product.append(str(item.qualifiers['gene'])[2:-2])
                    except:
                        gene_loci_product.append('-')
                    try:
                        gene_loci_product.append(str(item.qualifiers['locus_tag'])[2:-2])
                    except:
                        gene_loci_product.append('-')
                    try:
                        gene_loci_product.append(str(item.qualifiers['product'])[2:-2])
                    except:
                        gene_loci_product.append('-')
                    oper.append(gene_loci_product)
                elif counter == 1 and (item.location.start - feature.location.end) > enter.indent:
                    test = oper[0:]
                    test_operons.append(test)
                    break
                elif counter > 1 and (item.location.start - previous_location) < enter.gap:
                    try:
                        gene_loci_product.append(str(item.qualifiers['gene'])[2:-2])
                    except:
                        gene_loci_product.append('-')
                    try:
                        gene_loci_product.append(str(item.qualifiers['locus_tag'])[2:-2])
                    except:
                        gene_loci_product.append('-')
                    try:
                        gene_loci_product.append(str(item.qualifiers['product'])[2:-2])
                    except:
                        gene_loci_product.append('-')
                    oper.append(gene_loci_product)
                elif counter > 1 and (item.location.start - previous_location) > enter.gap:
                    test = oper[0:]
                    if any(operon==test for operon in test_operons) == False:
                        test_operons.append(test)  
                    break
                if counter >= 1 and item == plus_strand[last_plus]:
                    test = oper[0:]
                    test_operons.append(test)
                    break
                if counter == 1 and (item.location.start - feature.location.end) > enter.indent and \
                enter.terminator == 'On': 
                    previous_location = feature.location.end
                else:
                    previous_location = item.location.end
            elif (item.qualifiers.has_key('regulatory_class') and \
                     str(item.qualifiers['regulatory_class'])[2:-2] == 'terminator') and \
            enter.terminator == 'On':
                if counter == 0:
                    test = ['Unknown', '-', '-']
                    test_operons.append(test)
                elif counter >= 1 and any(operon==test for operon in test_operons) == False:
                    test = oper[0:len(oper)]
                    test_operons.append(test)
for feature in rev_minus_strand:
    if feature.type == 'protein_bind' or \
    (feature.qualifiers.has_key('regulatory_class') and str(feature.qualifiers['regulatory_class'])[2:-2] == 'promoter'):
        oper = []
        if any(regulator==str(feature.qualifiers['bound_moiety'])[2:-2] for regulator in regulators) == False:
            regulators.append(str(feature.qualifiers['bound_moiety'])[2:-2])
        oper.append(str(feature.qualifiers['bound_moiety'])[2:-2])
        counter = 0
        for item in rev_minus_strand[rev_minus_strand.index(feature):]:
            if item.type == 'gene' or item.type == 'CDS':
                gene_loci_product = []
                counter += 1
                if counter == 1 and (item.location.end - feature.location.start) > -enter.indent:
                    try:
                        gene_loci_product.append(str(item.qualifiers['gene'])[2:-2])
                    except:
                        gene_loci_product.append('-')
                    try:
                        gene_loci_product.append(str(item.qualifiers['locus_tag'])[2:-2])
                    except:
                        gene_loci_product.append('-')
                    try:
                        gene_loci_product.append(str(item.qualifiers['product'])[2:-2])
                    except:
                        gene_loci_product.append('-')
                    oper.append(gene_loci_product)
                elif counter == 1 and (item.location.end - feature.location.start) < -enter.indent and \
                enter.terminator == 'Off':
                    test = oper[0:len(oper)]
                    test_operons.append(test)
                    break
                elif counter > 1 and (item.location.end - previous_location) > (-enter.gap):
                    try:
                        gene_loci_product.append(str(item.qualifiers['gene'])[2:-2])
                    except:
                        gene_loci_product.append('-')
                    try:
                        gene_loci_product.append(str(item.qualifiers['locus_tag'])[2:-2])
                    except:
                        gene_loci_product.append('-')
                    try:
                        gene_loci_product.append(str(item.qualifiers['product'])[2:-2])
                    except:
                        gene_loci_product.append('-')
                    oper.append(gene_loci_product)
                elif counter > 1 and (item.location.end - previous_location) < -enter.gap:
                    test = oper[0:len(oper)]
                    if any(operon==test for operon in test_operons) == False:
                        test_operons.append(test)
                    break
                if counter >= 1 and item == rev_minus_strand[last_minus]:
                    test = oper[0:]
                    test_operons.append(test)
                    break
                if counter == 1 and (item.location.end - feature.location.start) < -enter.indent and \
                enter.terminator == 'On': 
                    previous_location = feature.location.start
                else:
                    previous_location = item.location.start
            elif (item.qualifiers.has_key('regulatory_class') and \
                     str(item.qualifiers['regulatory_class'])[2:-2] == 'terminator') and \
            enter.terminator == 'On':
                if counter == 0:
                    test = ['Unknown', '-', '-']
                    test_operons.append(test)
                elif counter >= 1 and any(operon==test for operon in test_operons) == False:
                    test = oper[0:len(oper)]
                    test_operons.append(test)
operon_list = []
for operon in test_operons:
    operon_name = operon[0]
    operon_genes = operon[1:]
    operon_instance = Operon(name=operon_name, genes=operon_genes)
    operon_list.append(operon_instance)
operon_out = 'RegOperon 1.0 (September 23)\n'+('='*50)+'\n\n'
operon_out += 'Regulator\tGene\tLocus_tag\tProduct\n'
for regulator in regulators:
    regulator = regulator.replace('*', ' ')
    operon_out += ('-'*50 + '\n')
    for operon in operon_list:
        if regulator == operon.name:
            operon_out += str(operon)
print operon_out
input_handle.close()
