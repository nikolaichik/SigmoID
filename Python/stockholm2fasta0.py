from Bio import AlignIO

input_handle = open("in.sto", "rU")
output_handle = open("out.fa", "w")

alignments = AlignIO.parse(input_handle, "stockholm")
AlignIO.write(alignments, output_handle, "fasta")

output_handle.close()
input_handle.close()