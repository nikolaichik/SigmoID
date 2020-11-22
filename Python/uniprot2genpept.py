# coding: utf-8
import urllib.request, urllib.parse
import argparse
import ssl
import sys


parser = argparse.ArgumentParser(description='UniProt codes')
parser.add_argument('uniprotAcc')
accCodes=parser.parse_args()
url = 'https://www.uniprot.org/uploadlists/'
#contact = "" # Please set a contact email address here to help us debug in case of problems (see https://www.uniprot.org/help/privacy).
#request.add_header('User-Agent', 'Python %s' % contact)

params = {
'from':'ACC',
'to':'EMBL',
'format':'tab',
'query': accCodes.uniprotAcc,
}

contx=ssl.SSLContext(ssl.PROTOCOL_TLSv1_2)
#contx.check_hostname = False
#contx.verify_mode = ssl.CERT_NONE

data = urllib.parse.urlencode(params).encode('utf-8')
request = urllib.request.Request(url, data)

try:
    with urllib.request.urlopen(request, context=contx) as response:
        page = (response.read()).decode('utf-8').splitlines()
        if len(page) > 1:
            codes = {}
            page = page[1:]
            for line in page:
                if line.count('\t') == 1:
                   if line.split('\t')[0] not in codes:
                        codes[line.split('\t')[0]] = line.split('\t')[1]
            if len(codes) != 0:
                output=''
                for key,value in codes.items():
                    output = output+key+'\t'+value+'\n'
                print(output)
except urllib.error.URLError as e:
    print(e.reason)
    sys.exit(1)

