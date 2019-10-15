# coding: utf-8
from Bio import Entrez
import argparse

parser = argparse.ArgumentParser(description='UniProt codes')
parser.add_argument('uniprotAcc')
codes=parser.parse_args()

Entrez.email = ""
def fetch_data(codes):
   handle = Entrez.efetch(db="protein", id=codes.uniprotAcc, rettype="gb", retmode="text")
   data=handle.read()
   if data.find("HTTP Error")>-1 and fail<=10:
       fail=fail+1
       print(fetch_data(codes))
   else:
       print(data)
fetch_data(codes)
    



