import sys
import argparse
from Bio import SeqIO

def createParser():

    parser = argparse.ArgumentParser(
             prog='gbk_SignalP.py',
             usage='\n%(prog)s <input_file> <input_file_2> <output_file>',
             description='''This script edits a GenBank file based on SinalP results.''',
             epilog='''(c) Ulyana Kravchenko, 2018.''')
    parser.add_argument('input_file',
                       help='''path to input Fasta file.''')
    parser.add_argument('input_file_2',
                       help='''path to input Genbank file.''')
    parser.add_argument('output_file',
                        help='''path to output Genbank file.''')
    parser.add_argument('-v','--version', action='version', version='%(prog)s 1.3 (August 29, 2018)')
    return parser

args = createParser()
enter = args.parse_args()

try:
    input_fasta = open(enter.input_file, 'r')
except IOError:
    sys.exit('Open error! Please check your fasta input file!')

Signal_len = {}
for line in input_fasta:
    if '\'YES\'' in line:
        s = line
        Sign_pept_st = s.find("pos. ")
        Sign_pept_end = s.find(" and")
        Sign_pept = s[Sign_pept_st+5:Sign_pept_end]
        Sign_pept = int(Sign_pept)
        name_st = s.find("Name=")
        name_end = s.find("	SP")
        name = '"' + s[name_st+5:name_end] + '"'
        Signal_len[name] = Sign_pept+1

try:
    input_gbk = open(enter.input_file_2, 'r')
except IOError:
    sys.exit('Open error! Please check your genbank input file!')

Signal_start_end = {}
for record in SeqIO.parse(input_gbk, 'genbank'):
    for feature in record.features: 
        if feature.type == 'CDS':
            for qualif in feature.qualifiers:
                if qualif == 'protein_id':        
                    name = '"' + feature.qualifiers[qualif][0] + '"'
                    if name in Signal_len:
                        if feature.strand == -1:
                            end = feature.location.nofuzzy_end 
                            Signal_start_end[name] = end 
                        else:
                            start = feature.location.nofuzzy_start + 1
                            Signal_start_end[name] = start                     
                                                
input_gbk.seek(0)

file = []    
CDS_parse = False
for line in input_gbk:
    file.append(line)
    if 'CDS' in line:
        CDS_parse = True
        if 'complement' in line:
            complement = True
    if CDS_parse and 'protein_id' in line:
        s = line
        s = s.strip(' /protein_id=\n')
        if s in Signal_len:
            if complement == True:
                start = Signal_start_end[s]
                finish = start - Signal_len[s]*3 + 1
                file.append('     sig_peptide     complement(' + str(finish) + '..' + str(start) + ")" + '\n')
                file.append('                     /note="predicted cleavage at residue '+str(Signal_len[s])+'"\n')
                file.append('                     /locus_tag="'+s+'"\n')
                file.append('                     /inference="ab initio prediction:SignalP:4.1"\n')
            else:
                start = Signal_start_end[s]
                finish = start + Signal_len[s]*3 - 1
                file.append('     sig_peptide     ' + str(start) + '..' + str(finish) + '\n')
                file.append('                     /note="predicted cleavage at residue '+str(Signal_len[s])+'"\n')
                file.append('                     /locus_tag="'+s+'"\n')
                file.append('                     /inference="ab initio prediction:SignalP:4.1"\n')
                  
        CDS_parse = False 
        complement = False 
    if  'sig_peptide' in line:
        file = file[:len(file)-4]
                     
with open(enter.output_file, 'w') as output_file:
    for line in file:
        output_file.write(line)        
