#!/usr/bin/env python3
import sys
import Bio
from Bio import SeqIO, SeqFeature
from Bio.SeqFeature import FeatureLocation
from Bio.SeqRecord import SeqRecord
from Bio.SeqIO import FastaIO
from pathlib import Path


# The script extracts regulatory regions from a user provided genbank file to .fasta file
# Pavel Vychyk, 13 september 2021

def is_within_feature(intergene_seq, gene_entries):
    for sequence in gene_entries:
        if intergene_seq.location.start>sequence.location.start and \
        intergene_seq.location.end < sequence.location.end or \
        intergene_seq.location.end > sequence.location.start and \
        intergene_seq.location.end < sequence.location.end or \
        intergene_seq.location.start < sequence.location.end and \
        intergene_seq.location.end > sequence.location.end:
            print('Overlapping feature, check the coordinates: '+\
                  str(intergene_seq.location.start)+"-"+str(intergene_seq.location.end)+'\n')
            return True
    return False


def get_interregions(genbank_path, outpath, intergene_length=1, down_length=50):
    with open(genbank_path, 'r') as handle:
        seq_record = SeqIO.read(handle, 'genbank')
    gene_entries = []
    intergenic_records = []
    seq_record.features.sort(key = lambda SeqFeature: SeqFeature.location.start)
    for feature in seq_record.features:
        if feature.type == "gene": gene_entries.append(feature)
    for i,feature in enumerate(gene_entries[1:]):
        # Skip convergons
        if gene_entries[i].strand == 1 and feature.strand == -1 :
            continue
        elif  feature.location.start - gene_entries[i].location.end >= intergene_length:
            intergene_seq_location = SeqFeature.SeqFeature(FeatureLocation(gene_entries[i].location.end, feature.location.start))
            if is_within_feature(intergene_seq_location, gene_entries):
                continue
                #extraction_start = gene_entries[i].location.end
                #extraction_end=feature.location.start
            elif gene_entries[i].strand == 1 and feature.strand == 1:
                extraction_start=gene_entries[i].location.end
                extraction_end=feature.location.start + down_length
            elif gene_entries[i].strand == -1 and feature.strand == 1:
                extraction_start = gene_entries[i].location.end - down_length
                extraction_end = feature.location.start + down_length
            else:
                extraction_end = feature.location.start
                extraction_start = gene_entries[i].location.end - down_length
            intergene_seq = seq_record[extraction_start:extraction_end].seq
            intergenic_records.append(SeqRecord(intergene_seq, id=f"{seq_record.name}-{i}",
                      description=f"Coordinates {extraction_start + 1}-{extraction_end}",))
    if not outpath.endswith('/'):
        outpath += '/'
    outpath = outpath + Path(genbank_path).stem + "_intergenic_regions.fasta"
    records = [FastaIO.as_fasta_2line(record) for record in intergenic_records]
    with open(outpath, "w") as f:
        f.writelines(records) 
    print(f"\nPath to the file with extracted fragments:{outpath}")


if __name__ == "__main__":
    if len(sys.argv) == 3:
        get_interregions(sys.argv[1], sys.argv[2])
    elif len(sys.argv) == 4:
        get_interregions(sys.argv[1], int(sys.argv[2], sys.argv[3]))
    elif len(sys.argv) == 5:
        get_interregions(sys.argv[1], int(sys.argv[2]), int(sys.argv[3], sys.argv[4]))
    else:
        print("Usage: interGenicRegions.py gb_file out_file [intergenic_length, default value = 1] \
        [downstream_length, default value = 1]")
        sys.exit(0)
