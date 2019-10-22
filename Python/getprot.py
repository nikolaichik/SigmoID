# coding: utf-8
from Bio import Entrez
import argparse
import time

parser = argparse.ArgumentParser(description='UniProt codes')
parser.add_argument('uniprotAcc')
parser.add_argument('email')
args=parser.parse_args()
Entrez.email = args.email
attempts = 0
ids=args.uniprotAcc
def fetch_data(ids):
   global attempts
   time.sleep(1)
   try:
        handle = Entrez.efetch(db='protein', id=ids, rettype='gp', retmode='text')
        data=handle.read()
        handle.close()
        attempts=0
        print(data)
   except:
       if attempts<=2:
           attempts+=1
           time.sleep(5)
           fetch_data(ids)
       else:
           print('Error retrieving: '+ ids)

fetch_data(ids)
    



