#!/usr/bin/env python3

import subprocess
import argparse
import os
import sys
import multiprocessing
import re
import time

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
                for lin in fi:
                    if 'NAME' in lin:
                        self.hmmname = lin.split(' ')[-1].replace('\n', '')
                    if 'CRTAG' in lin:
                        self.crtag = lin.split(' ')[-1].replace('\n', '')
                        fi.close()
                        break


def mid(s, offset, amount):
    offset = int(offset)
    amount = int(amount)
    if offset < 0:
        amount = amount + offset
        offset = 0
    return s[offset:offset+amount]


def extractTag(s, crtaglist):
    residues = ''
    for position in crtaglist:
        residues = residues + mid(s, int(position) - 1, 1)
    return residues


def getCRtag(alignment):
    # comma in CRpositions marks two-steps CRtag processing
    combinedCRtag = ''
    proteinCode = ''
    if ',' in main.CRpositions[0]:
        CRtagparts = main.CRpositions
    else:
        CRtagparts = [','.join(main.CRpositions)]

    for part in CRtagparts:
        if part != '':
            crResidues = part.split(',')
        else:
            return 'CRtag part processing resulted in error'
        if '/' not in alignment:
            return 'error alignment input'
        proteinCode = alignment.split('/')[0]
        # get amino acid sequence and remove gaps from insertions in other seqs
        hitSeq = alignment.split()[1]
        hitSeq = hitSeq.replace('.', '')
        # now extend hits to equal length at ends
        if '-' in hitSeq:
            cuttedhitSeq = hitSeq
            index = 0
            if cuttedhitSeq[0] == '-':
                for index in range(len(cuttedhitSeq)):
                    if cuttedhitSeq[index] != '-':
                        break
                cuttedhitSeq = cuttedhitSeq[index:]
            # iterate string right to left and cutoff '-'
            if len(cuttedhitSeq) != 0:
                while cuttedhitSeq[-1] == '-':
                    cuttedhitSeq = cuttedhitSeq[0:-1]
            p = subprocess.Popen(main.blastdbcmd + ' -db {} -entry {}'.format(str(main.basePath), quote(proteinCode)),
                                 stdout=subprocess.PIPE, shell=True)
            out, error = p.communicate()
            if p.returncode != 0:
                print('\nfull protein sequence extraction with blastdbcmd failed, empty protein sequence returned.' + \
                'Return code: ' + str(p.returncode))
            proteinFullSeq = out.decode('Utf-8').split('\n')
            if len(proteinFullSeq) == 0 or proteinFullSeq == '':
                print('\nfull protein sequence extraction with blastdbcmd resulted in empty protein sequence returned.' +
                      '\nCommand used: ' + str(main.blastdbcmd+' -db {} -entry {}'.format(str(main.basePath), quote(proteinCode))))
            # drop first line with description and concatenate sequence containing lines in string
            proteinFullSeq = (''.join(proteinFullSeq[1:])).upper()
            if proteinFullSeq == '':
                return 'empty seq for:' + proteinCode
            gapindex = cuttedhitSeq.find('-')
            if gapindex != -1:
                leftPart = cuttedhitSeq[:gapindex]
            else:
                leftPart = cuttedhitSeq
            try:
                leftPartStart = proteinFullSeq.find(leftPart.upper())
            except AttributeError:
                print('Protein code error: "' + str(proteinCode) + '"')
                return 'short tag ' + proteinCode
            leftExt = mid(proteinFullSeq, leftPartStart-index, index)
            cuttedhitSeq = leftExt + cuttedhitSeq

            # extend the right end
            rightPart = cuttedhitSeq.split('-')[0]
            rightPartStart = proteinFullSeq.find(rightPart.upper())
            rightExt = mid(proteinFullSeq, rightPartStart + len(rightPart), len(hitSeq) - len(cuttedhitSeq))
            hitSeq = cuttedhitSeq + rightExt

        # gaps in the modelbefore the CRtag region should be corrected
        CRtagRegion = hitSeq[:int(crResidues[0])]
        if CRtagRegion != CRtagRegion.upper():
            gapChars = 0
            for char in CRtagRegion:
                if char.islower():
                    gapChars += 1

            hitSeq = hitSeq[-(len(hitSeq)-gapChars):]

        # checking for gaps/insertions within CR range
        CRtagRegion = hitSeq[int(crResidues[0])-1:int(crResidues[-1])]
        if CRtagRegion == CRtagRegion.upper() and '-' not in CRtagRegion:
            CRtag = extractTag(hitSeq, crResidues)
        else:
            return 'indel within CR tag region ' + proteinCode
        if len(CRtag) == len(crResidues):
            if len(CRtagparts) == 1:
                return CRtag+' ' + proteinCode
            else:
                combinedCRtag = combinedCRtag + CRtag
        else:
            return 'short tag ' + proteinCode
    return combinedCRtag + ' ' + proteinCode


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


def main():
    start_time = time.time()
    parser = argparse.ArgumentParser(prog='CRtagExtractor',
                                    usage='\n%(prog)s <folder with protein seqs fasta> <.hmm models folder> <temp folder> <output folder> '
                                    '<number of cpu workers> <ncbi-blast tools folder>',
                                     epilog='Pavel Vychyk, 2019',
                                     description='Extract CRtag from protein sequence provided by hmmsearch ')
    parser.add_argument('fastaSource', type=str, help='path to folder with fasta files')
    parser.add_argument('hmmSource', type=str, help='path to folder with .hmm models ')
    parser.add_argument('alignmentFolder', type=str, help='path to output folder for alignments')
    parser.add_argument('baseFolder', type=str, help='path to folder to save ready CRtag bases')
    parser.add_argument('numberOfWorkers', type=str, help='number of cpu workers for hmmsearch and CRtag extraction')
    parser.add_argument('blastFolder', type=str, help='path to the folder with installed ncbi-blast utilities: makeblastdb, blastdbcmd')
    parser.add_argument('-v', '--version', action='version', version='%(prog)s 1.03 (March 13, 2021)')
    args = parser.parse_args()


    alignmentFolder = args.alignmentFolder
    hmmSource = args.hmmSource
    fastaSource = args.fastaSource
    baseFolder = args.baseFolder
    cpuCount = int(args.numberOfWorkers)
    blastUtilities = args.blastFolder

    if cpuCount > 0 and cpuCount > multiprocessing.cpu_count():
        cpuCount = multiprocessing.cpu_count()

    if baseFolder[-1] != '/':
        baseFolder += '/'
    if alignmentFolder[-1] != '/':
        alignmentFolder += '/'

    # read input folder, process .fasta files with hmmsearch and cdbfasta to get alignments with all .hmm models provided by separate input folder
    # after that, process alignment files to get crtags bases

    inputFasta = []
    with os.scandir(fastaSource) as FilesEntity:
        for fil in FilesEntity:
            if fil.is_file and fil.name.endswith('.fasta'):
                fasta = InputFile(fil.path, fil.name)
                inputFasta.append(fasta)
    if len(inputFasta) == 0:
        print('No .fasta files were found in folder: '+str(fastaSource) + ' Source file must have .fasta extension!'+'\n')
        sys.exit(1)
    hmmFiles = []
    with os.scandir(hmmSource) as FilesEntity:
        for fil in FilesEntity:
            if fil.is_file and fil.name.endswith('.hmm'):
                hmmFile = InputFile(fil.path, fil.name)
                hmmFiles.append(hmmFile)
    with os.scandir(blastUtilities) as FilesEntity:
        for fil in FilesEntity:
            if fil.is_file and fil.name == 'makeblastdb':
                main.makeblastdb = r"{}".format(str(fil.path))
                p = subprocess.Popen(main.makeblastdb + ' -h', shell=True, stdout=PIPE, stderr=PIPE)
                out, error = p.communicate()
                if p.returncode != 0:
                    print('\nmakeblastdb test run resulted in error. Exit code: '+str(p.returncode))
                    sys.exit(1)
            elif fil.is_file and fil.name == 'blastdbcmd':
                main.blastdbcmd = r"{}".format(str(fil.path))
                p = subprocess.Popen(main.blastdbcmd + ' -h', shell=True, stdout=PIPE, stderr=PIPE)
                out, error = p.communicate()
                if p.returncode != 0:
                    print('\nblastdbcmd test run resulted in error: ' + str(p.returncode))
                    sys.exit(1)
    if len(hmmFiles) == 0:
        print('No .hmm files were found in folder: '+str(fastaSource) + ' File must have .hmm extension!'+'\n')
        sys.exit(1)
    err = ['indel', 'short', 'error', 'empty']
    for fasta in inputFasta:
        if os.path.exists(fasta.path):
            main.basePath = fasta.path.replace('.fasta', '_blastDB')
            if os.path.exists(main.basePath+'.pal'):
                with open(main.basePath+'.pal', 'r') as blastDBinfo:
                    for lin in blastDBinfo:
                        if 'DBLIST' in lin and not checkDB(lin, fasta.path):
                            print('Some files from {} index database are missing, reindexing started \n'.format(str(fasta.path)))
                            p = subprocess.Popen(main.makeblastdb + ' -dbtype prot -in {} -parse_seqids -hash_index -out {}'.format(str(fasta.path),
                                                 str(main.basePath)), stdout=PIPE, stderr=PIPE, shell=True)
                            out, error = p.communicate()
                            if p.returncode != 0:
                                print('\nmakeblastdb run to index protein base resulted in error:' + str(p.returncode))
                                sys.exit(1)
            else:
                print('makeblastdb started indexing protein source file located in {} \n'.format(str(fasta.path)))
                p = subprocess.Popen(main.makeblastdb+' -dbtype prot -in {} -parse_seqids -hash_index -out {}'.format(str(fasta.path),
                                     str(main.basePath)), stdout=PIPE, stderr=PIPE, shell=True)
                out, error = p.communicate()
                if p.returncode != 0:
                    print('\nmakeblastdb run to index protein base resulted in error. Return code: ' + str(p.returncode)+'\n'+str(error))
                    sys.exit(1)
            for hmmFile in hmmFiles:
                if os.path.isdir(alignmentFolder):
                    fasta.alignment = alignmentFolder + fasta.name + '-' + hmmFile.hmmname + '-' + hmmFile.crtag
                    print('hmmsearch started for file {} using hmm model {} \n'.format(fasta.path, hmmFile.path))
                    p = subprocess.Popen('hmmsearch --cut_ga --notextw --cpu {} -A {} {} {} > /dev/null'.format(str(cpuCount),
                                         quote(fasta.alignment), quote(hmmFile.path), quote(fasta.path)), shell=True)
                    out, error = p.communicate()
                    if p.returncode != 0: print('hmmsearch scan failed. Return code: '+str(p.returncode))
                    if os.path.isfile(fasta.alignment):
                        #global CRpositions
                        if '|' in hmmFile.crtag:
                            main.CRpositions = hmmFile.crtag.split('|')
                        else:
                            main.CRpositions = hmmFile.crtag.split(',')
                        reg = re.search('(?<=rp)\d\d', fasta.name)
                        if reg != None:
                            clust = reg.group(0)
                            baseFilePath = baseFolder + str(hmmFile.name.split('.')[0]) + '_rp'+str(clust) + '.crtag'
                        else:
                            # write index to file name, if path exists
                            baseFilePath = baseFolder+str(hmmFile.name.split('.')[0])+'.crtag'
                            if os.path.exists(baseFilePath):
                                i = 0
                                while os.path.exists(baseFolder + str(hmmFile.name.split('.')[0]) + '-'+str(i) + '.crtag'):
                                    i += 1
                                baseFilePath = baseFolder + str(hmmFile.name.split('.')[0]) + '-' + str(i) + '.crtag'

                        # read input file line by line, save protein ids separately - proteins with multiple domain should be removed
                        proteinIDs = []
                        with open(fasta.alignment) as fin:
                            alignmentTable = ''
                            for lin in fin:
                                if lin[:1].isalpha() or lin[:1].isdigit():
                                    alignmentTable += lin
                                    proteinIDs.append(lin.split('/')[0])
                        alignmentTable = alignmentTable.split('\n')[:-1]

                        uniq = {}
                        multidomain = []
                        for idn in proteinIDs:
                            if idn not in uniq:
                                uniq[idn] = 1
                            else:
                                multidomain.append(idn)

                        for AlignmentSeq in reversed(alignmentTable):
                            proteinID = AlignmentSeq.split('/')[0]
                            if proteinID in multidomain:
                                alignmentTable.remove(AlignmentSeq)
                        chunksize, rem = divmod(len(alignmentTable), cpuCount)
                        if rem: chunksize += 1
                        CRtagProt = []
                        with Pool(cpuCount) as p:
                            CRtagProt = p.map(getCRtag, alignmentTable, )
                        base = {}
                        indel = 0
                        shortTag = 0
                        CRtagCount = 0
                        brokenTagID = ''
                        if len(CRtagProt) > 0:
                            for seq in CRtagProt:
                                if not any(c in seq for c in err):
                                    CRtagCount += 1
                                    CRtag, proteinID = seq.split(' ')
                                    if CRtag not in base:
                                        base[CRtag] = proteinID
                                    else:
                                        base[CRtag] = base[CRtag]+','+proteinID
                                else:
                                    if 'indel' in seq:
                                        indel += 1
                                    elif 'short' in seq:
                                        shortTag += 1
                                        brokenTagID = brokenTagID + seq.split()[2] + '\n'
                                    elif 'empty' in seq:
                                        print(str(seq)+'\n')
                        else:
                            print('CRtag array is empty')

                        try:
                            with open(baseFilePath, "w") as f:
                                data = ''
                                for key, value in base.items():
                                    data += key + ' ' + value + '\n'
                                f.write(data)
                                f.close()
                            if brokenTagID != '':
                                baseFilePath = baseFilePath + '_short_tags'
                                with open(baseFilePath, "w") as f:
                                    f.write(brokenTagID)
                                    f.close()
                        except IOError:
                            print("Can't save file to disk, check the path and writing permisions: " + baseFilePath)
                        print('\nModel used: ' + str(hmmFile.name) + '\nProtein source file used: ' + str(fasta.name) +
                              '\nTotal proteins processed: ' + str(len(alignmentTable)) +
                              '\nCRtags extracted: ' + str(CRtagCount) + '\nProteins with indel in CRtag region: ' + str(indel) +
                              "\nBroken tags (CRtag length doesn't equal to the quantity of critical residues): " + str(shortTag))
                        if shortTag != 0:
                            print('\nFull list of protein IDs with broken tags located: ' + str(baseFilePath) + '\n')
    run_time = time.strftime("%H:%M:%S", time.gmtime(time.time() - start_time))
    print('\nScript total run time: {} s \n'.format(run_time))

if __name__ == '__main__':
    main()