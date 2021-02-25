import subprocess
import argparse
import os
import sys
import multiprocessing
import re

from shlex import quote
from multiprocessing import Pool
from subprocess import Popen, PIPE


class InputFile:
    def __init__(self, path, name):
        self.path = path
        self.name = name
        if name.endswith('.fasta'):
            self.alignment = ''
        if name.endswith('.hmm'):
            with open(path, 'r') as fi:
                for line in fi:
                    if 'NAME' in line:
                        self.hmmname = line.split(' ')[-1].replace('\n', '')
                    if 'CRTAG' in line:
                        self.crtag = line.split(' ')[-1].replace('\n', '')
                        fi.close()
                        break


def mid(s, offset, amount):
    offset = int(offset)
    amount = int(amount)
    if offset < 0:
        amount = amount + offset
        offset = 0
    return s[offset:offset+amount]


def extractcr(s, crtaglist):
    CR = ''
    for position in crtaglist:
        CR = CR + mid(s, int(position) - 1, 1)
    return CR


def getCRtag(alignment):
    # comma in CRpositions marks two-steps CRtag processing
    combinedCRtag = ''
    ProteinCode = ''
    if ',' in CRpositions[0]:
        CRtagparts = CRpositions
    else:
        CRtagparts = [','.join(CRpositions)]

    for part in CRtagparts:
        if part != '':
            lCRpositions = part.split(',')
        else:
            return 'CRtag part processing resulted in error'
        if '/' not in alignment:
            return 'error alignment input'
        ProteinCode = alignment.split('/')[0]
        HitSeq = alignment.split()[1]  # get amino acid sequence
        HitSeq = HitSeq.replace('.', '')  # remove gaps from insertions in other seqs
        # now extend hits to equal length at ends
        if '-' in HitSeq:
            cuttedHitSeq = HitSeq
            index = 0
            if cuttedHitSeq[0] == '-':
                for index in range(len(cuttedHitSeq)):
                    if cuttedHitSeq[index] != '-':
                        break
                cuttedHitSeq = cuttedHitSeq[index:]
            if len(cuttedHitSeq) != 0:
                while cuttedHitSeq[-1] == '-':
                    cuttedHitSeq = cuttedHitSeq[0:-1]  # iterate string right to left and cutoff '-'
            p = subprocess.Popen(blastdbcmd+' -db {} -entry {}'.format(str(basePath), quote(ProteinCode)),
                                 stdout=subprocess.PIPE, shell=True)
            out, error = p.communicate()
            if p.returncode != 0:
                print('\nfull protein sequence extraction with blastdbcmd failed, empty protein sequence returned.' + \
                'Return code: ' + str(p.returncode))
            ProteinCompleteSeq = out.decode('Utf-8').split('\n')
            if len(ProteinCompleteSeq) == 0 or ProteinCompleteSeq == '':
                print('\nfull protein sequence extraction with blastdbcmd resulted in empty protein sequence returned.' + \
                      '\nCommand used: ' + str(blastdbcmd+' -db {} -entry {}'.format(str(basePath), quote(ProteinCode))))
            # drop first line with description and concatenate sequence containing lines in string
            ProteinCompleteSeq = ''.join(ProteinCompleteSeq[1:])
            if ProteinCompleteSeq == '':
                return 'empty seq for:' + ProteinCode
            gapindex = cuttedHitSeq.find('-')
            if gapindex != -1:
                leftPart = cuttedHitSeq[:gapindex]
            else:
                leftPart = cuttedHitSeq
            try:
                leftPartStart = ProteinCompleteSeq.find(leftPart.upper())
            except AttributeError:
                print('Protein code error: "' + str(ProteinCode) + '"')
                return 'short tag ' + ProteinCode
            leftExt = mid(ProteinCompleteSeq, leftPartStart-index, index)
            cuttedHitSeq = leftExt + cuttedHitSeq

            # extend the right end
            rightPart = cuttedHitSeq.split('-')[-1]
            rightPartStart = ProteinCompleteSeq.find(rightPart.upper())
            rightExt = mid(ProteinCompleteSeq, rightPartStart + len(rightPart), len(HitSeq) - len(cuttedHitSeq))
            HitSeq = cuttedHitSeq + rightExt

        # gaps in the modelbefore the CRtag region should be corrected
        CRtagRegion = HitSeq[:int(lCRpositions[0])]
        if CRtagRegion != CRtagRegion.upper():
            gapChars = 0
            for char in CRtagRegion:
                if char.islower():
                    gapChars += 1

            HitSeq = HitSeq[-(len(HitSeq)-gapChars):]

        # checking for gaps/insertions within CR range
        CRtagRegion = HitSeq[int(lCRpositions[0])-1:int(lCRpositions[-1])]
        if CRtagRegion == CRtagRegion.upper() and '-' not in CRtagRegion:
            CRtag = extractcr(HitSeq, lCRpositions)
        else:
            return 'indel within CR tag region ' + ProteinCode
        if len(CRtag) == len(lCRpositions):
            if len(CRtagparts) == 1:
                return CRtag+' ' + ProteinCode
            else:
                combinedCRtag = combinedCRtag+CRtag
        else:
            return 'short tag ' + ProteinCode
    return combinedCRtag + ' ' + ProteinCode


def checkDB(pathseq, fileslocation):
    fileslocation = fileslocation.replace(fileslocation.split('/')[-1], '')
    if 'DBLIST' in pathseq:
        pathArray = pathseq.replace('\n', '').split(' ')
        pathArray = pathArray[1:]
        for dbPath in pathArray:
            if not os.path.exists(fileslocation + dbPath + '.psq'):
                return false
    else:
        return False
    return True


parser = argparse.ArgumentParser(description='Extract CRtag from protein sequence provided by hmmsearch ')
parser.add_argument('fastaSource', type=str, help='path to folder with fasta files')
parser.add_argument('hmmSource', type=str, help='path to folder with .hmm models ')
parser.add_argument('alignmentFolder', type=str, help='path to output folder for alignments')
parser.add_argument('baseFolder', type=str, help='path to folder to save ready CRtag bases')
parser.add_argument('numberOfWorkers', type=str, help='number of cpu workers for hmmsearch and CRtag extraction')
parser.add_argument('blastFolder', type=str, help='path to the folder with installed ncbi-blast utilities: makeblastdb, blastdbcmd')
args = parser.parse_args()


alignmentFolder = args.alignmentFolder
hmmSource = args.hmmSource
fastaSource = args.fastaSource
baseFolder = args.baseFolder
cpuCount = args.numberOfWorkers
blastUtilities = args.blastFolder

if int(cpuCount) > multiprocessing.cpu_count():
    cpuCount = multiprocessing.cpu_count()

if baseFolder[-1] != '/':
    baseFolder += '/'
if alignmentFolder[-1] != '/':
    alignmentFolder += '/'

# read input folder, process .fasta files with hmmsearch and cdbfasta to get alignments with all .hmm models provided by separate input folder
# after that, process alignment files to get crtags bases

InputFasta = []
with os.scandir(fastaSource) as FilesEntity:
    for fil in FilesEntity:
        if fil.is_file and fil.name.endswith('.fasta'):
            fasta = InputFile(fil.path, fil.name)
            InputFasta.append(fasta)
if len(InputFasta) == 0:
    print('No .fasta found in folder: '+str(fastaSource) + ' File names must have .fasta extension!'+'\n')
    sys.exit(1)
hmmFiles = []
with os.scandir(hmmSource) as FilesEntity:
    for fil in FilesEntity:
        if fil.is_file and fil.name.endswith('.hmm'):
            hmmFile = InputFile(fil.path, fil.name)
            hmmFiles.append(hmmFile)
makeblastdb = ''
blastdbcmd = ''
with os.scandir(blastUtilities) as FilesEntity:
    for fil in FilesEntity:
        if fil.is_file and fil.name == 'makeblastdb':
            makeblastdb = r"{}".format(str(fil.path))
            print(makeblastdb)
            p = subprocess.Popen(makeblastdb + ' -h', shell=True, stdout=PIPE, stderr=PIPE)
            out, error = p.communicate()
            if p.returncode != 0:
                print('\nmakeblastdb test run resulted in error. Exit code: '+str(p.returncode))
                sys.exit(1)
        elif fil.is_file and fil.name == 'blastdbcmd':
            blastdbcmd = r"{}".format(str(fil.path))
            print(blastdbcmd)
            p = subprocess.Popen(blastdbcmd + ' -h', shell=True, stdout=PIPE, stderr=PIPE)
            out, error = p.communicate()
            if p.returncode != 0:
                print('\nblastdbcmd test run resulted in error: ' + str(p.returncode))
                sys.exit(1)
if len(hmmFiles) == 0:
    print('No .hmm found in folder: '+str(fastaSource) + ' File names must have .hmm extension!'+'\n')
    sys.exit(1)
err = ['indel', 'short', 'error', 'empty']
for fasta in InputFasta:
    if os.path.exists(fasta.path):
        basePath = fasta.path.replace('.fasta', '_blastDB')
        if os.path.exists(basePath+'.pal'):
            with open(basePath+'.pal', 'r') as blastDBinfo:
                for line in blastDBinfo:
                    if 'DBLIST' in line and not checkDB(line, fasta.path):
                        p = subprocess.Popen(makeblastdb+' -dbtype prot -in {} -parse_seqids -hash_index -out {}'.format(str(fasta.path),
                                             str(basePath)), stdout=PIPE, stderr=PIPE, shell=True)
                        out, error = p.communicate()
                        if p.returncode != 0:
                            print('\nmakeblastdb run to index protein base resulted in error:' + str(p.returncode))
                            sys.exit(1)
        else:
            p = subprocess.Popen(makeblastdb+' -dbtype prot -in {} -parse_seqids -hash_index -out {}'.format(str(fasta.path),
                                 str(basePath)), stdout=PIPE, stderr=PIPE, shell=True)
            out, error = p.communicate()
            if p.returncode != 0:
                print('\nmakeblastdb run to index protein base resulted in error. Return code: ' + str(p.returncode)+'\n'+str(error))
                sys.exit(1)
        for hmmFile in hmmFiles:
            if os.path.isdir(alignmentFolder):
                fasta.alignment = alignmentFolder + fasta.name + '-' + hmmFile.hmmname + '-' + hmmFile.crtag
                p = subprocess.Popen('hmmsearch --cut_ga --notextw --cpu {} -A {} {} {} > /dev/null'.format(str(cpuCount),
                                     quote(fasta.alignment), quote(hmmFile.path), quote(fasta.path)), shell=True)
                out, error = p.communicate()
                if p.returncode != 0: print('hmmsearch scan failed. Return code: '+str(p.returncode))
                if os.path.isfile(fasta.alignment):
                    if '|' in hmmFile.crtag:
                        CRpositions = hmmFile.crtag.split('|')
                    else:
                        CRpositions = hmmFile.crtag.split(',')
                    reg = re.search('(?<=rp)\d\d', fasta.name)
                    if reg is not None:
                        clust = reg.group(0)
                        BaseFilePath = baseFolder + str(hmmFile.name.split('.')[0]) + '_rp'+str(clust) + '.crtag'
                    else:
                        # write index to file name, if path exists
                        BaseFilePath = baseFolder+str(hmmFile.name.split('.')[0])+'.crtag'
                        if os.path.exists(BaseFilePath):
                            i = 0
                            while os.path.exists(baseFolder + str(hmmFile.name.split('.')[0]) + '-'+str(i) + '.crtag'):
                                i += 1
                            BaseFilePath = baseFolder + str(hmmFile.name.split('.')[0]) + '-' + str(i) + '.crtag'

                    # read input file line by line, save protein ids separately - proteins with multiple domain should be removed
                    ProteinIDs = []
                    with open(fasta.alignment) as fin:
                        AlignmentTable = ''
                        for line in fin:
                            if line[:1].isalpha() or line[:1].isdigit():
                                AlignmentTable += line
                                ProteinIDs.append(line.split('/')[0])
                    AlignmentTable = AlignmentTable.split('\n')[:-1]

                    uniq = {}
                    multidomain = []

                    for id in ProteinIDs:
                        if id not in uniq:
                            uniq[id] = 1
                        else:
                            multidomain.append(id)

                    for AlignmentSeq in reversed(AlignmentTable):
                        ProteinID = AlignmentSeq.split('/')[0]
                        if ProteinID in multidomain:
                            AlignmentTable.remove(AlignmentSeq)

                    CRtagProt = []

                    if __name__ == '__main__':
                        with Pool(int(cpuCount)) as p:
                            CRtagProt = p.map(getCRtag, AlignmentTable)

                    base = {}
                    indel = 0
                    shortTag = 0
                    CRtagCount = 0
                    brokenTagId = ''
                    if len(CRtagProt) > 0:
                        for seq in CRtagProt:
                            if not any(c in seq for c in err):
                                CRtagCount += 1
                                CRtag, ProteinID = seq.split(' ')
                                if CRtag not in base:
                                    base[CRtag] = ProteinID
                                else:
                                    base[CRtag] = base[CRtag]+','+ProteinID
                            else:
                                if 'indel' in seq:
                                    indel += 1
                                elif 'short' in seq:
                                    shortTag += 1
                                    brokenTagId = brokenTagId + seq.split()[2] + '\n'
                                elif 'empty' in seq:
                                    print(str(seq)+'\n')
                    else:
                        print('CRtag array is empty')

                    try:
                        with open(BaseFilePath, "w") as f:
                            data = ''
                            for key, value in base.items():
                                data += key + ' ' + value + '\n'
                            f.write(data)
                            f.close()
                        if brokenTagId != '':
                            BaseFilePath = BaseFilePath + '_short_tags'
                            with open(BaseFilePath, "w") as f:
                                f.write(brokenTagId)
                                f.close()
                    except IOError:
                        print("Can't save file to disk, check the path: "+BaseFilePath)
                    print('\nModel used: ' + str(hmmFile.name) + '\nTotal proteins processed: ' + str(len(AlignmentTable)) +
                          '\nCRtags extracted: ' + str(CRtagCount) + '\nProteins with indel in CRtag region: ' + str(indel) +
                          "\nBroken tags (CRtag length isn't equal to the quantity of critical residues): " + str(shortTag))
                    if shortTag != 0:
                        print('\nFull list of protein IDs with broken tags located: ' + str(BaseFilePath) + '\n')
