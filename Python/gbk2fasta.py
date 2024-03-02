#!/usr/bin/env python3

from Bio import SeqIO

with open("in.gbk", "rU") as input_handle:
    with open("out.fasta", "w") as output_handle:
        sequences = SeqIO.parse(input_handle, "genbank")
        count = SeqIO.write(sequences, output_handle, "fasta")
        
print("Converted %i records" % count)
