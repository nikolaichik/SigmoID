# coding: utf-8
from Bio import Entrez
import argparse

parser = argparse.ArgumentParser(description='UniProt codes')
parser.add_argument('uniprotAcc')
codes=parser.parse_args()

Entrez.email = ""
handle = Entrez.efetch(db="protein", id=codes.uniprotAcc, rettype="gb", retmode="text")
print(handle.read())
