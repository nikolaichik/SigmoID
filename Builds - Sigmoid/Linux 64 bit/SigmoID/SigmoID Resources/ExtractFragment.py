import os
import sys
import argparse
from Bio import SeqIO
from io import StringIO
from Bio.SeqRecord import SeqRecord
from Bio.SeqFeature import SeqFeature, FeatureLocation, ExactPosition

parser = argparse.ArgumentParser(prog='ExtractFragment',
                                 usage='\n%(prog)s.py <input_genbank_file> @@coord left-coordinate,right-coordinate',
                                 epilog='Pavel Vychyk, 2020', prefix_chars='@',
                                 description='This script collects all features located between user provided coordinates '
                                             'from a GenBank file and prints extracted fragment in GenBank format')
parser.add_argument('genbank_path', type=str, help='Path to the source GenBank file')
parser.add_argument('@@coord', action='store', type=str,
                    help='Left and right sequence coordinates, separated by a comma, e.g., @@coord 100,1000')
args = parser.parse_args()
try:
    with open(args.genbank_path, 'r') as handle:
        genbank_source = SeqIO.read(handle, 'genbank')
except IOError:
    print('File open failed, check the file: '+str())
    sys.exit(1)
except ValueError:
    print('Please, check if source file format is correct')
    sys.exit(1)
if args.coord != '':
    try:
        left_coor, right_coor = args.coord.split(',')
    except ValueError:
        print('Wrong coordinate values count')
        sys.exit(1)
    if left_coor and right_coor != '':
        try:
            left_coor = int(left_coor)-1
            right_coor = int(right_coor)
            if left_coor == right_coor:
                print('Coordinate values must differ!')
                sys.exit(1)
            elif right_coor < left_coor:
                print('Check coordinate values, right coordinate is less than left')
                sys.exit(1)
            elif left_coor < 0:
                left_coor = 0
            elif right_coor < 0:
                print("Right coordinate value can't be negative")
                sys.exit(1)
            elif right_coor > len(genbank_source.seq):
                right_coor = len(genbank_source.seq)
            elif left_coor > len(genbank_source.seq):
                print("Left coordinate value is greater than genome sequence length")
                sys.exit(1)
        except ValueError:
            print('Coordinate values argument is not a number!')
            sys.exit(1)
    else:
        print('At least one coordinate value missing')
        sys.exit(1)
else:
    print('Coordinate values were not provided')
    sys.exit(1)
genbank_part = SeqRecord(id=genbank_source.id+' REGION: '+str(left_coor)+'..'+str(right_coor),
                         description=genbank_source.description, name=genbank_source.name, seq='')
genbank_part.dbxrefs = genbank_source.dbxrefs.copy()
genbank_part.annotations = genbank_source.annotations.copy()
for feature in genbank_source.features:
    if feature.type == 'source':
        f = SeqFeature(FeatureLocation(ExactPosition(0), ExactPosition(right_coor-left_coor), strand=+1),
                       type='source', id=feature.id, ref_db=feature.ref_db)
        f.qualifiers = feature.qualifiers.copy()
        genbank_part.features.append(f)
if len(genbank_part.features) == 0:
    f = SeqFeature(FeatureLocation(ExactPosition(0), ExactPosition(right_coor - left_coor)), type='source')
    f.qualifiers['organism'] = ' '
    f.qualifiers['mol_type'] = ' '
    f.qualifiers['strain'] = ' '
    f.qualifiers['db_xref'] = ' '
    genbank_part.features.append(f)
genbank_part.features.extend(genbank_source[left_coor:right_coor].features)
genbank_part.seq = genbank_source[left_coor:right_coor].seq
out_handle = StringIO()
SeqIO.write(genbank_part, out_handle, 'genbank')
genbank_format = out_handle.getvalue()
print(genbank_format)
