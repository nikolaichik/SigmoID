# coding: utf-8
from Bio import Entrez
import argparse
import time

parser = argparse.ArgumentParser(description='UniProt codes')
parser.add_argument('uniprotAcc')
parser.add_argument('email')
args=parser.parse_args()
Entrez.email = args.email
def fetch_data(args):
   handle = Entrez.efetch(db="protein", id=args.uniprotAcc, rettype="gb", retmode="text")
   data=handle.read()
   handle.close()
   if data.find("HTTP Error")>-1 and attemps<=3:
       attemps=attemps+1
       time.sleep(15)
       print(fetch_data(args))
   else:
       print(data)
fetch_data(args)
    



