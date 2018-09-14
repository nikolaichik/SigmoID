# convert gzipped trembl flat file into fasta format in a pipeline like this:
# gunzip -c trembl.dat.gz | python embl2fasta.py | gzip -9 -c > trembl.fa.gz

import sys
from Bio import SeqIO
SeqIO.convert(sys.stdin, "embl", sys.stdout, "fasta")