# coding: utf-8
import urllib.request, urllib.parse
import argparse

parser = argparse.ArgumentParser(description='UniProt codes')
parser.add_argument('uniprotAcc')
codes=parser.parse_args()
url = 'https://www.uniprot.org/uploadlists/'
#contact = "" # Please set a contact email address here to help us debug in case of problems (see https://www.uniprot.org/help/privacy).
#request.add_header('User-Agent', 'Python %s' % contact)

params = {
'from':'ACC',
'to':'EMBL',
'format':'tab',
'query': codes.uniprotAcc,
}

data = urllib.parse.urlencode(params).encode('utf-8')
request = urllib.request.Request(url, data)
response = urllib.request.urlopen(request)
page = response.read()
print(page)

