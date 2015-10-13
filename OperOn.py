import os, platform
import argparse
import sys
import tempfile
from Bio import SeqIO
from Bio.SeqFeature import FeatureLocation
from Bio.SeqFeature import SeqFeature

class Operon():
    def __init__(self, name, genes, info, terminator, regstart, regend, strand):
        self.name = name
        self.genes = genes
        self.info = info
        self.terminator = terminator
        self.regstart = regstart
        self.regend = regend
        self.strand = strand

    def __str__(self):
        out = ''
        for gene_loci_product in self.genes:
            out += '\t%s\t%s\t%s\n' % (gene_loci_product[0],
                                       gene_loci_product[1],
                                       gene_loci_product[2])
        if len(self.terminator) > 0:
            out += '\t' + self.terminator + '\n'
        else:
            out += self.terminator 
        return out

class Divergon():
    def __init__(self, name, up_genes, down_genes, info, up_terminator, down_terminator):
        self.name = name
        self.up_genes = up_genes
        self.down_genes = down_genes
        if len(self.up_genes) > 0 or len(self.down_genes) > 0:
            self.genes = [self.down_genes, self.up_genes]
        else:
            self.genes = []
        self.info = info
        self.up_terminator = up_terminator
        self.down_terminator = down_terminator


def createParser():

    parser = argparse.ArgumentParser(
             prog='OperOn',
             usage='\n%(prog)s <input_file> [options]',
             description='''This script finds putative operon according to binding sites of regulators.
    Requires Biopython 1.64 (or newer)''',
             epilog='''(c) Aliaksandr Damienikan, 2015.''')
    parser.add_argument('input_file',
                       help='''path to input Genbank file.''')
    parser.add_argument('-g', '--gap',
                        default=200,
                        type=int,
                        metavar='<int>',
                        help='''set a threshold for gaps between operons ''')
    parser.add_argument('-i', '--indent',
                        default=500,
                        type=int,
                        metavar='<int>',
                        help='''set a threshold for indentation from very first gene to regulatory region''')
    parser.add_argument('-t', '--terminator',
                        action='store_const',
                        const='On',
                        default='Off',
                        help='''terminators are regarded as operon separator''')
    parser.add_argument('-r', '--regulator',
                        type=str,
                        metavar='<name of regulator>',
                        default='Off',
                        help='''only specified regulators are considered''')
    parser.add_argument('-p', '--palindromic',
                        action='store_const',
                        const='On',
                        default='Off',
                        help='''consider palindromic protein binding sites''')       
    parser.add_argument('-v','--version', action='version', version='%(prog)s 1.5 (October 13, 2015)')
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
        if feature.type == 'gene' or \
           feature.type == 'protein_bind' or \
           (feature.qualifiers.has_key('regulatory_class') and \
                           (str(feature.qualifiers['regulatory_class'])[2:-2] == 'terminator' or  \
                            str(feature.qualifiers['regulatory_class'])[2:-2] == 'promoter')):
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
    if ((feature.qualifiers.has_key('regulatory_class') and \
                       str(feature.qualifiers['regulatory_class']) == 'promoter') or \
       feature.type == 'protein_bind') and \
       enter.regulator != 'Off' and \
       enter.regulator.lower() == str(feature.qualifiers['bound_moiety'])[2:-2].lower():
        if feature.strand == 1 or (enter.palindromic == 'On' and feature.type == 'protein_bind'):
            plus_strand.append(feature)
        if feature.strand == -1 or (enter.palindromic == 'On' and feature.type == 'protein_bind'):
            minus_strand.append(feature)
    if enter.regulator == 'Off' or (feature.type == 'gene' or feature.type == 'CDS' or \
       (feature.qualifiers.has_key('regulatory_class') and \
                           str(feature.qualifiers['regulatory_class'])[2:-2] == 'terminator')):
        if feature.strand == 1 or (enter.palindromic == 'On' and feature.type == 'protein_bind'):
            plus_strand.append(feature)
        if feature.strand == -1 or (enter.palindromic == 'On' and feature.type == 'protein_bind'):
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
        oper.append([feature.location.start, feature.location.end])
        oper.append('+')
        try:
            if str(feature.qualifiers['note'])[2:-2].startswith('nhmmer') or \
               str(feature.qualifiers['note'])[2:-2].startswith('MAST'): 
                oper.append(str(feature.qualifiers['note'])[2:-2])
        except:
            oper.append('')
        counter = 0
        for item in plus_strand[plus_strand.index(feature):]:
            if item.type == 'gene' or item.type == 'CDS':
                gene_loci_product = []
                counter += 1
                if counter == 1 and (item.location.start - feature.location.end) < enter.indent:
                    position = item.location.start - feature.location.start - 1
                    oper[3] = '[' + oper[3]+' Pos=-'+str(position)+']'
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
                    position = item.location.start - feature.location.start - 1
                    oper[3] = '[' + oper[3]+' Pos=-'+str(position)+']'
                    test = oper[0:]
                    test.append('')
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
                    test.append('')
                    if any(operon==test for operon in test_operons) == False:
                        test_operons.append(test)  
                    break
                if counter >= 1 and item == plus_strand[last_plus]:
                    test = oper[0:]
                    test.append('')
                    test_operons.append(test)
                    break
                if counter == 1 and (item.location.start - feature.location.end) > enter.indent and \
                enter.terminator == 'On': 
                    previous_location = feature.location.end
                else:
                    previous_location = item.location.end
            if (item.qualifiers.has_key('regulatory_class') and \
                     str(item.qualifiers['regulatory_class'])[2:-2] == 'terminator') and \
            enter.terminator == 'On':
                if counter == 0:
                    pass
                elif counter >= 1 :
                    test = oper[0:len(oper)]
                    if type(item.qualifiers['note']) == list and \
                       str(item.qualifiers['note'][0]).startswith('TransTerm'):
                        terminator_score = str(item.qualifiers['note'][0]).split(' ')[-2] + ' ' + str(item.qualifiers['note'][0]).split(' ')[-1]
                        test.append('(terminator %s)' % terminator_score) 
                    else:
                        test.append('(terminator)')
                    test_operons.append(test)
for feature in rev_minus_strand:
    if feature.type == 'protein_bind' or \
    (feature.qualifiers.has_key('regulatory_class') and str(feature.qualifiers['regulatory_class'])[2:-2] == 'promoter'):
        oper = []
        if any(regulator==str(feature.qualifiers['bound_moiety'])[2:-2] for regulator in regulators) == False:
            regulators.append(str(feature.qualifiers['bound_moiety'])[2:-2])
        oper.append(str(feature.qualifiers['bound_moiety'])[2:-2])
        oper.append([feature.location.start, feature.location.end])
        oper.append('-')
        try:
            if str(feature.qualifiers['note'])[2:-2].startswith('nhmmer') or \
               str(feature.qualifiers['note'])[2:-2].startswith('MAST'): 
                oper.append(str(feature.qualifiers['note'])[2:-2])
        except:
            oper.append('')
        counter = 0
        for item in rev_minus_strand[rev_minus_strand.index(feature):]:
            if item.type == 'gene' or item.type == 'CDS':
                gene_loci_product = []
                counter += 1
                if counter == 1 and (item.location.end - feature.location.start) > -enter.indent:
                    position = item.location.end - feature.location.end - 1
                    oper[3] = '[' + oper[3]+' Pos='+str(position)+']'
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
                elif counter == 1 and (item.location.end - feature.location.start) < -enter.indent:
                    position = item.location.end - feature.location.end - 1
                    oper[3] = '[' + oper[3]+' Pos='+str(position)+']'
                    test = oper[0:len(oper)]
                    test.append('')
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
                    test.append('')
                    if any(operon==test for operon in test_operons) == False:
                        test_operons.append(test)
                    break
                if counter >= 1 and item == rev_minus_strand[last_minus]:
                    test = oper[0:]
                    test.append('')
                    test_operons.append(test)
                    break
                if counter == 1 and (item.location.end - feature.location.start) < -enter.indent and \
                enter.terminator == 'On': 
                    previous_location = feature.location.start
                else:
                    previous_location = item.location.start
            if (item.qualifiers.has_key('regulatory_class') and \
                     str(item.qualifiers['regulatory_class'])[2:-2] == 'terminator') and \
            enter.terminator == 'On':
                if counter == 0:
                    pass
                elif counter >= 1:
                    test = oper[0:len(oper)]
                    if type(item.qualifiers['note']) == list and \
                       str(item.qualifiers['note'][0]).startswith('TransTerm'):
                        terminator_score = str(item.qualifiers['note'][0]).split(' ')[-2] + ' ' + str(item.qualifiers['note'][0]).split(' ')[-1]
                        test.append('(terminator %s)' % terminator_score) 
                    else:
                        test.append('(terminator)')
                    test_operons.append(test)
operon_list = []
for operon in test_operons:
    operon_name = operon[0]
    regulator_start = operon[1][0]
    regulator_end = operon[1][1]
    regulator_strand = operon[2]
    operon_genes = operon[4:-1]
    regulator_info = operon[3]
    operon_terminator = operon[-1] 
    operon_instance = Operon(name=operon_name, 
                             genes=operon_genes, 
                             info=regulator_info, 
                             terminator=operon_terminator,
                             regstart=regulator_start,
                             regend=regulator_end,
                             strand=regulator_strand)
    operon_list.append(operon_instance)
duplicated = []
for operon in operon_list:
    for duplicate in operon_list:
        if operon.name == duplicate.name and \
           operon.regstart == duplicate.regstart and \
           operon.regend == duplicate.regend and \
           operon.genes == duplicate.genes:
            if len(operon.terminator) == 0 and len(duplicate.terminator) != 0:
                duplicated.append(operon_list.index(operon))
            elif len(duplicate.terminator) == 0 and len(operon.terminator) != 0:
                duplicated.append(operon_list.index(duplicate))
            else:
                pass
operon_list = [operon_list[index] for index in range(len(operon_list)) if not any(index==indel for indel in duplicated)]
for index in reversed(xrange(len(operon_list))):
    index = len(operon_list) - index - 1
    for next in xrange(index+1, len(operon_list)):
        if operon_list[index].name == operon_list[next].name and \
           operon_list[index].genes == operon_list[next].genes and \
           operon_list[index].info != operon_list[next].info and \
           operon_list[index].terminator == operon_list[next].terminator:
            operon_list[index] = Operon(name=operon_list[index].name, 
                                      genes=operon_list[index].genes, 
                                      info=operon_list[index].info+', '+operon_list[next].info, 
                                      terminator=operon_list[index].terminator,
                                      regstart=operon_list[index].regstart,
                                      regend=operon_list[index].regend,
                                      strand=regulator_strand)
            del operon_list[next]
            break
divergons_and_promoters = []
intodel = []
for up_operon in operon_list:
    for down_operon in operon_list:
        if len(up_operon.genes) > 0 and len(up_operon.genes) > 0 and \
           up_operon.name == down_operon.name and \
           up_operon.regstart == down_operon.regstart and \
           up_operon.regend == down_operon.regend and \
           up_operon.strand != down_operon.strand:
            divergon = Divergon(name=up_operon.name, 
                                up_genes=up_operon.genes, 
                                down_genes=down_operon.genes, 
                                info=up_operon.info, 
                                up_terminator=up_operon.terminator, 
                                down_terminator=down_operon.terminator)
            divergons_and_promoters.append(divergon)
            intodel.append(operon_list.index(up_operon))
            intodel.append(operon_list.index(down_operon))
operon_list = [operon_list[index] for index in range(len(operon_list)) if not any(index==indel for indel in intodel)]
operon_list += divergons_and_promoters
operon_out = 'OperOn 1.5 (October 13)\n'+('='*50)+'\n\n'
operon_out += 'Regulator\tGene\tLocus_tag\tProduct\n'
for regulator in regulators:
    operon_counter = 0
    regulator = regulator.replace('*', ' ')
    operon_out += ('-'*50 + '\n')
    for operon in operon_list:
        if regulator == operon.name and len(operon.genes) > 0:
            operon_counter += 1
            if isinstance(operon, Operon):
                operon_out += '>%s_%s %s\n%s\n' % (operon.name, str(operon_counter), operon.info, str(operon))
            elif isinstance(operon, Divergon):
                down_out = ''
                if len(operon.down_terminator) > 0:
                    down_out += '\n\t' + operon.down_terminator + ''
                else:
                    down_out += operon.down_terminator  
                for gene_loci_product in reversed(operon.down_genes):
                    down_out += '\n\t%s\t%s\t%s' % (gene_loci_product[0],
                                                    gene_loci_product[1],
                                                    gene_loci_product[2])
                up_out = ''
                for gene_loci_product in operon.up_genes:
                    up_out += '\t%s\t%s\t%s\n' % (gene_loci_product[0],
                                                  gene_loci_product[1],
                                                  gene_loci_product[2])
                if len(operon.up_terminator) > 0:
                    up_out += '\t' + operon.up_terminator
                else:
                    up_out += operon.up_terminator
                operon_out += '%s\n>%s_%s %s\n%s\n' % (down_out, operon.name, str(operon_counter), operon.info, up_out)
operon_out = operon_out.split('\n\n\n')
for splitted in operon_out:
    if len(splitted) > 0:
        print splitted + '\n'
input_handle.close()
