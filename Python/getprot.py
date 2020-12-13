# coding: utf-8
from Bio import Entrez
import argparse
import time
import urllib
import ssl
import sys

parser = argparse.ArgumentParser(description='UniProt codes')
parser.add_argument('uniprotAcc')
parser.add_argument('email')
args=parser.parse_args()
Entrez.email = args.email
attempts = 0
ids=args.uniprotAcc
contx=ssl.SSLContext(ssl.PROTOCOL_TLSv1_2)
def fetch_data(ids):
   global attempts
   time.sleep(1)
   try:
       URLstart = "https://eutils.ncbi.nlm.nih.gov/entrez/eutils/efetch.fcgi?db=protein&id="
       URLend = "&rettype=gp&retmode=text"
       data = URLstart+ids+URLend
       #handle = Entrez.efetch(db='protein', id=ids, rettype='gp', retmode='text')
        #data=handle.read()
        #handle.close()
       request = urllib.request.Request(data)
       with urllib.request.urlopen(request,  context=contx) as response:
           page = (response.read()).decode('utf-8')
           print(page)
        #attempts=0
        #print(data)
   except urllib.error.URLError as e:
       print(e.reason)
       if attempts<=2:
           attempts+=1
           time.sleep(5)
           fetch_data(ids)
       else:
           print('Error retrieving: '+ ids)
       sys.exit(1)


fetch_data(ids)
    



