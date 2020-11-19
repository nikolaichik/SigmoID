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
        self.out = ''
        for gene_loci_product in self.genes:
            if self.genes.index(gene_loci_product) != -1:
                self.out += '\t%s\t%s\t%s\n' % (gene_loci_product[0],
                                                gene_loci_product[1],
                                                gene_loci_product[2])
            elif self.genes.index(gene_loci_product) == -1:
                self.out += '\t%s\t%s\t%s\n\n' % (gene_loci_product[0],
                                                  gene_loci_product[1],
                                                  gene_loci_product[2])

        return self.out


class Divergon():
    def __init__(self, name, down_genes, up_genes, info, up_terminator, down_terminator, regstart):
        self.name = name
        self.down_genes = down_genes
        self.up_genes = up_genes
        if len(self.down_genes) > 0 or len(self.up_genes) > 0:
            self.genes = [self.up_genes, self.down_genes]
        else:
            self.genes = []
        self.info = info
        self.up_terminator = up_terminator
        self.down_terminator = down_terminator
        self.regstart = regstart


class CommonOperon():
    def __init__(self, regulators, genes):
        self.regulators = regulators
        self.genes = genes

    def __str__(self):
        self.out = ''
        for regulator in self.regulators:
            self.out += '>' + regulator + '\n'
        for gene_loci_product in self.genes:
            if self.genes.index(gene_loci_product) == len(self.genes) - 1:
                self.out += '\t%s\t%s\t%s\n\n' % (gene_loci_product[0],
                                                  gene_loci_product[1],
                                                  gene_loci_product[2])
            else:
                self.out += '\t%s\t%s\t%s\n' % (gene_loci_product[0],
                                                gene_loci_product[1],
                                                gene_loci_product[2])

        return self.out


class CommonDivergon():
    def __init__(self, name, down_genes, up_genes):
        self.name = name
        self.down_genes = down_genes
        self.up_genes = up_genes

    def __str__(self):
        self.out = ''

        for self.up_gene in reversed(self.up_genes):
            self.out += '\t%s\t%s\t%s\n' % (self.up_gene[0],
                                            self.up_gene[1],
                                            self.up_gene[2])
        for self.one_name in self.name:
            self.out += '>' + self.one_name + '\n'
        for self.down_gene in self.down_genes:
            if self.down_genes.index(self.down_gene) == len(self.down_genes) - 1:
                self.out += '\t%s\t%s\t%s\n\n' % (self.down_gene[0],
                                                  self.down_gene[1],
                                                  self.down_gene[2])
            else:
                self.out += '\t%s\t%s\t%s\n' % (self.down_gene[0],
                                                self.down_gene[1],
                                                self.down_gene[2])
        return self.out


def createParser():
    parser = argparse.ArgumentParser(
        prog='OperOn',
        usage='\n%(prog)s <input_file> [options]',
        description='''This script finds putative operons between regulator binding sites and/or terminators/long intergenic gaps.
    Requires Biopython 1.64 (or newer)''',
        epilog='''(c) Aliaksandr Damienikan, 2015.''')
    parser.add_argument('input_file',
                        help='''path to input Genbank file.''')
    parser.add_argument('-g', '--gap',
                        default=200,
                        type=int,
                        metavar='<int>',
                        help='''minimal gap between operons''')
    parser.add_argument('-i', '--indent',
                        default=500,
                        type=int,
                        metavar='<int>',
                        help='''maximal distance from binding site to the first downstream CDS''')
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
                        help='''treat all binding sites as palindromic''')
    parser.add_argument('-s', '--strict',
                        action='store_const',
                        const='On',
                        default='Off',
                        help='''operon stops on first terminator (if -t is set)''')
    parser.add_argument('-o', '--operons',
                        action='store_const',
                        const='On',
                        default='Off',
                        help='''combines operons that are common for several regulators''')
    parser.add_argument('-v', '--version', action='version', version='%(prog)s 1.15 (September 27, 2020)')
    return parser


args = createParser()
enter = args.parse_args()
arguments = sys.argv[1:0]
try:
    from Bio import SeqIO
except ImportError:
    raise ImportError(
        '\nYou have no Biopython module installed!\nYou can download it from here: http://biopython.org/wiki/Download\n')
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
                (feature.qualifiers.__contains__('regulatory_class') and \
                 (str(feature.qualifiers['regulatory_class'])[2:-2] == 'terminator' or \
                  str(feature.qualifiers['regulatory_class'])[2:-2] == 'promoter')):
            all_features.append(feature)
        if feature.type == 'CDS':
            cds_list.append(feature)
for n in range(len(all_features)):
    if all_features[n].type == 'gene':
        print(all_features[n])
        for cds in cds_list:
            if 'locus_tag' in all_features[n].qualifiers.keys() and \
                    all_features[n].qualifiers['locus_tag'] == \
                    cds.qualifiers['locus_tag']:
                all_features[n] = cds
                break
for feature in all_features:

    if ((feature.qualifiers.__contains__('regulatory_class') and \
         str(feature.qualifiers['regulatory_class'])[2:-2] == 'promoter') or \
        feature.type == 'protein_bind') and \
            enter.regulator != 'Off' and \
            enter.regulator.lower() == str(feature.qualifiers['bound_moiety'])[2:-2].lower():
        if feature.strand == 1 or (enter.palindromic == 'On' and feature.type == 'protein_bind'):
            plus_strand.append(feature)
        if feature.strand == -1 or (enter.palindromic == 'On' and feature.type == 'protein_bind'):
            minus_strand.append(feature)
    if enter.regulator == 'Off' or (feature.type == 'gene' or feature.type == 'CDS' or \
                                    (feature.qualifiers.__contains__('regulatory_class') and \
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
            (feature.qualifiers.__contains__('regulatory_class') and str(feature.qualifiers['regulatory_class'])[
                                                                2:-2] == 'promoter'):
        oper = []
        if any(regulator == str(feature.qualifiers['bound_moiety'])[2:-2] for regulator in regulators) == False:
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
                    oper[3] = '[' + oper[3] + ' Pos=-' + str(position) + ']'
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
                    oper[3] = '[' + oper[3] + ' Pos=-' + str(position) + ']'
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
                    if any(operon == test for operon in test_operons) == False:
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
            if (item.qualifiers.__contains__('regulatory_class') and \
                str(item.qualifiers['regulatory_class'])[2:-2] == 'terminator') and \
                    enter.terminator == 'On':
                if counter == 0:
                    pass
                elif counter >= 1:
                    if item.qualifiers.__contains__('note') and type(item.qualifiers['note']) == list and \
                            str(item.qualifiers['note'][0]).startswith('TransTerm'):
                        terminator_score = str(item.qualifiers['note'][0]).split(' ')[-2] + ' ' + \
                                           str(item.qualifiers['note'][0]).split(' ')[-1]
                        oper.append(['(terminator %s)' % terminator_score, '', ''])
                        test = oper[0:len(oper)]
                        test.append('(terminator %s)' % terminator_score)
                    else:
                        oper.append(['(terminator)', '', ''])
                        test = oper[0:len(oper)]
                        test.append('(terminator)')
                    test_operons.append(test)
                    if enter.strict == 'On':
                        break
for feature in rev_minus_strand:
    if feature.type == 'protein_bind' or \
            (feature.qualifiers.__contains__('regulatory_class') and str(feature.qualifiers['regulatory_class'])[
                                                                2:-2] == 'promoter'):
        oper = []
        if any(regulator == str(feature.qualifiers['bound_moiety'])[2:-2] for regulator in regulators) == False:
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
                    oper[3] = '[' + oper[3] + ' Pos=' + str(position) + ']'
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
                    oper[3] = '[' + oper[3] + ' Pos=' + str(position) + ']'
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
                    if any(operon == test for operon in test_operons) == False:
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
            if (item.qualifiers.__contains__('regulatory_class') and \
                str(item.qualifiers['regulatory_class'])[2:-2] == 'terminator') and \
                    enter.terminator == 'On':
                if counter == 0:
                    pass
                elif counter >= 1:
                    if item.qualifiers.__contains__('note') and type(item.qualifiers['note']) == list and \
                            str(item.qualifiers['note'][0]).startswith('TransTerm'):
                        terminator_score = str(item.qualifiers['note'][0]).split(' ')[-2] + ' ' + \
                                           str(item.qualifiers['note'][0]).split(' ')[-1]
                        oper.append(['(terminator %s)' % terminator_score, '', ''])
                        test = oper[0:len(oper)]
                        test.append('(terminator %s)' % terminator_score)
                    else:
                        oper.append(['(terminator)', '', ''])
                        test = oper[0:len(oper)]
                        test.append('(terminator)')
                    test_operons.append(test)
                    if enter.strict == 'On':
                        break

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
operon_starts = [int(operon.regstart) for operon in operon_list]
operon_starts.sort()
new = []
for start in operon_starts:
    for index in range(len(operon_list)):
        if int(operon_list[index].regstart) == start:
            new.append(operon_list[index])
            del operon_list[index]
            break
operon_list = [operon for operon in new]
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
operon_list = [operon_list[index] for index in range(len(operon_list)) if
               not any(index == indel for indel in duplicated)]
for index in reversed(range(len(operon_list))):
    index = len(operon_list) - index - 1
    for next in range(index + 1, len(operon_list)):
        if operon_list[index].name == operon_list[next].name and \
                operon_list[index].genes == operon_list[next].genes and \
                operon_list[index].info != operon_list[next].info and \
                operon_list[index].terminator == operon_list[next].terminator:
            # the if-statement below is here to avoid problems with different locations in operon groups...
            if operon_list[index].regstart <= operon_list[next].regstart:
                operon_list[index] = Operon(name=operon_list[index].name,
                                            genes=operon_list[index].genes,
                                            info=operon_list[index].info + ', ' + operon_list[next].info,
                                            terminator=operon_list[index].terminator,
                                            regstart=operon_list[index].regstart,
                                            regend=operon_list[index].regend,
                                            strand=operon_list[index].strand)
            elif operon_list[index].regstart > operon_list[next].regstart:
                operon_list[index] = Operon(name=operon_list[index].name,
                                            genes=operon_list[index].genes,
                                            info=operon_list[next].info + ', ' + operon_list[index].info,
                                            terminator=operon_list[index].terminator,
                                            regstart=operon_list[next].regstart,
                                            regend=operon_list[next].regend,
                                            strand=operon_list[index].strand)
            del operon_list[next]
            break
to_delete_list = []
for index in range(len(operon_list)):
    for indel in range(len(operon_list)):
        if operon_list[index].name == operon_list[indel].name and \
                operon_list[index].regstart == operon_list[indel].regstart and \
                operon_list[index].regend == operon_list[indel].regend and \
                operon_list[index].info == operon_list[indel].info:
            if len(operon_list[index].genes) > len(operon_list[indel].genes):
                to_delete_list.append(indel)
            elif len(operon_list[index].genes) < len(operon_list[indel].genes):
                to_delete_list.append(index)
                break
operon_list = [operon_list[index] for index in range(len(operon_list)) if
               not any(index == indel for indel in to_delete_list)]
divergons_and_promoters = []
intodel = []
for up_operon in operon_list:
    is_divergon = False
    for down_operon in operon_list[operon_list.index(up_operon) + 1:]:
        if len(up_operon.genes) > 0 and len(down_operon.genes) > 0 and \
                up_operon.name == down_operon.name and \
                up_operon.regstart == down_operon.regstart and \
                up_operon.regend == down_operon.regend and \
                up_operon.strand == '+' and down_operon.strand == '-':
            is_divergon = True
            divergon = Divergon(name=up_operon.name,
                                down_genes=up_operon.genes,
                                up_genes=down_operon.genes,
                                info=up_operon.info,
                                up_terminator=up_operon.terminator,
                                down_terminator=down_operon.terminator,  # smth is wrong with down-up
                                regstart=up_operon.regstart)
            # intodel.append(operon_list.index(up_operon))
            intodel.append(operon_list.index(down_operon))
    if is_divergon == True:
        operon_list[operon_list.index(up_operon)] = divergon
operon_list = [operon_list[index] for index in range(len(operon_list)) if not any(index == indel for indel in intodel)]
operon_out = 'OperOn 1.14 (January 27, 2017)\n' + ('=' * 50) + '\n\n'
operon_out += 'Regulator\tGene\tLocus_tag\tProduct\n'
regulator_counter = []
intodel = []
if enter.operons == 'On':
    for operon in operon_list:
        if isinstance(operon, Operon):
            common_operon = CommonOperon(regulators=[operon.name + ' ' + operon.info],
                                         genes=operon.genes)
            for next_operon in operon_list[operon_list.index(operon) + 1:]:
                if isinstance(next_operon, Operon) and int(next_operon.regstart) - int(operon.regstart) > 2000:
                    break
                if any(index == operon_list.index(next_operon) for index in intodel) == False and \
                        isinstance(next_operon, Operon) and \
                        operon.name != next_operon.name and \
                        operon.genes == next_operon.genes and \
                        len(operon.genes) > 0:
                    common_operon = CommonOperon(
                        regulators=common_operon.regulators + [next_operon.name + ' ' + next_operon.info],
                        genes=common_operon.genes)
                    intodel.append(operon_list.index(next_operon))
            if len(common_operon.regulators) > 1:
                operon_list[operon_list.index(operon)] = common_operon
    operon_list = [operon_list[index] for index in range(len(operon_list)) if
                   not any(index == indel for indel in intodel)]
    intodel = []
    for divergon in operon_list:
        if isinstance(divergon, Divergon):
            common_divergon = CommonDivergon(name=[divergon.name + ' ' + divergon.info],
                                             down_genes=divergon.down_genes,
                                             up_genes=divergon.up_genes)
            for next_divergon in operon_list[operon_list.index(divergon) + 1:]:
                if isinstance(next_divergon, Divergon) and int(next_divergon.regstart) - int(divergon.regstart) > 2000:
                    break
                if any(index == operon_list.index(next_divergon) for index in intodel) == False and \
                        isinstance(next_divergon, Divergon) and \
                        divergon.name != next_divergon.name and \
                        divergon.down_genes == next_divergon.down_genes and \
                        divergon.up_genes == next_divergon.up_genes and \
                        len(divergon.down_genes) > 0 and len(divergon.up_genes) > 0:
                    common_divergon = CommonDivergon(
                        name=common_divergon.name + [next_divergon.name + ' ' + next_divergon.info],
                        down_genes=common_divergon.down_genes,
                        up_genes=common_divergon.up_genes)
                    intodel.append(operon_list.index(next_divergon))
            if len(common_divergon.name) > 1:
                operon_list[operon_list.index(divergon)] = common_divergon
    operon_list = [operon_list[index] for index in range(len(operon_list)) if
                   not any(index == indel for indel in intodel)]
genes = []
if enter.operons == 'On':
    regall = 0
    operon_out += ('-' * 50)
    for operon in operon_list:
        if isinstance(operon, Operon) and len(operon.genes) > 0:
            regall += 1
            operon_out += '>%s %s\n%s\n' % (operon.name, operon.info, str(operon))
            for gene in operon.genes:
                if gene[0].startswith('(terminator') == False and \
                        any(g == gene for g in genes) == False:
                    genes.append(gene)
        elif isinstance(operon, Divergon) and len(operon.genes) > 0:
            regall += 1
            down_out = ''
            for gene_loci_product in reversed(operon.up_genes):
                if gene_loci_product[0].startswith('(terminator') == False and \
                        any(g == gene_loci_product for g in genes) == False:
                    genes.append(gene_loci_product)
                down_out += '\n\t%s\t%s\t%s' % (gene_loci_product[0],
                                                gene_loci_product[1],
                                                gene_loci_product[2])
            up_out = ''
            for gene_loci_product in operon.down_genes:
                if gene_loci_product[0].startswith('(terminator') == False and \
                        any(g == gene_loci_product for g in genes) == False:
                    genes.append(gene_loci_product)
                up_out += '\t%s\t%s\t%s\n' % (gene_loci_product[0],
                                              gene_loci_product[1],
                                              gene_loci_product[2])

            operon_out += '%s\n>%s %s\n%s\n' % (down_out, operon.name, operon.info, up_out)
        elif isinstance(operon, CommonOperon):
            for gene in operon.genes:
                if gene[0].startswith('(terminator') == False and \
                        any(g == gene for g in genes) == False:
                    genes.append(gene)
            regall += 1
            operon_out += str(operon)
        elif isinstance(operon, CommonDivergon):
            for gene in operon.up_genes:
                if gene[0].startswith('(terminator') == False and \
                        any(g == gene for g in genes) == False:
                    genes.append(gene)
            for gene in operon.down_genes:
                if gene[0].startswith('(terminator') == False and \
                        any(g == gene for g in genes) == False:
                    genes.append(gene)
            regall += 1
            operon_out += str(operon)
    operon_out = operon_out.replace('\n\n\n', '\n\n')
    operon_out += ('-' * 50)
    operon_out += ('=' * 50)
    print(operon_out)
    print('\nTotal operons: ', regall)
    print('Total genes:', len(genes))

if enter.operons == 'Off':
    regall = 0
    for regulator in regulators:
        operon_counter = 0
        regulator = regulator.replace('*', ' ')
        operon_out += ('-' * 50 + '\n')
        common_regulator_counter = 0
        divergon_counter = 0
        for operon in operon_list:
            if regulator == operon.name and len(operon.genes) > 0:
                regall += 1
                operon_counter += 1
                if isinstance(operon, Operon):
                    operon_out += '>%s_%s %s\n%s\n' % (operon.name, str(operon_counter), operon.info, str(operon))
                    common_regulator_counter += 1
                elif isinstance(operon, Divergon):
                    down_out = ''
                    for gene_loci_product in reversed(operon.up_genes):
                        down_out += '\n\t%s\t%s\t%s' % (gene_loci_product[0],
                                                        gene_loci_product[1],
                                                        gene_loci_product[2])
                    up_out = ''
                    for gene_loci_product in operon.down_genes:
                        up_out += '\t%s\t%s\t%s\n' % (gene_loci_product[0],
                                                      gene_loci_product[1],
                                                      gene_loci_product[2])

                    operon_out += '%s\n>%s_%s %s\n%s\n' % (
                    down_out, operon.name, str(operon_counter), operon.info, up_out)
                    divergon_counter += 1
                    common_regulator_counter += 1
        if enter.palindromic == 'On':
            regulator_counter.append(
                [regulator, (str(common_regulator_counter) + (' (%s divergons)' % str(divergon_counter)))])
        elif enter.palindromic == 'Off':
            regulator_counter.append([regulator, str(common_regulator_counter)])
    operon_out = operon_out.split('\n\n\n')
    for splitted in operon_out:
        if len(splitted) > 0:
            print(splitted + '\n')
    print('-' * 50)
    print('Operons found:')
    for regulator in regulator_counter:
        print(regulator[0] + '\t' + regulator[1])
    print('Total: ', regall)
input_handle.close()
