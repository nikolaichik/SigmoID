#!/usr/bin/env python
# -*- coding: utf-8 -*-
class FeatureQualifier(object):
    def __init__(self, name=None, value=None, pair={}):
        self.name = name
        self.value = value
        self.pair = {self.name:self.value}

    def __repr__(self):
        out = self.name+' : '+self.value
        return out

class ListOfFeatureQualifiers(list):
    def __add__(self, other):
        self.append(other)

class GenbankFeature(object):
    def __init__(self, location=None, type=None, qualifiers=None, strand=None):
        self.location=location
        self.type = type
        self.qualifiers = qualifiers
        self.strand = strand
    
    def __str__(self):
        out = 'Type: %s\n' % self.type
        out += 'Strand: %s\n' % self.strand
        out += 'Location: %s\n' % self.location
        out += 'qualifiers %s\n' % self.qualifiers
        return out

class GenbankFile(file):
    def __init__(self, path=None):
        self.path = path
        self.file = open(self.path, 'r')
        
    def parse(self):
        self.file_strings = self.file.read()
        #print self.file_strings
        self.records = self.file_strings.split('LOCUS')
        self.records = [record for record in self.records if record != '']
        #print self.records
        self.records = [record.split('FEATURES') for record in self.records]
        #print self.records
        self.records = [record[1] for record in self.records]
        #print len(self.records)
        self.records = [record.split('ORIGIN')[0] for record in self.records]
        self.records = [record.splitlines()[1:] for record in self.records]
        #print self.records
        self.records = [
             [line.replace('     ', '', 1) for line in record] 
                           for record in self.records]
        #print self.records
        for record in self.records:
            for line in record:
                if line[0] != ' ':
                    index = record.index(line)
                    for num in xrange(record.index(line)+1, len(record)):
                        if record[num][0] == ' ':
                            record[index] += record[num]
                        else:
                            break
        self.records = [[line.split(' '*16,) for line in record if line[0] != ' '] for record in self.records]
        for record in self.records:
            for feature in record:
                for line in feature:
                    if line[0] == '/':
                       index = feature.index(line)
                       for num in xrange(feature.index(line)+1, len(feature)):
                            if feature[num][0] != '/' and feature[index].startswith('/translation') is False:
                                feature[index] += ' %s' % feature[num]
                            elif feature[num][0] != '/' and feature[index].startswith('/translation'):
                                feature[index] += feature[num]
                            else:
                                break    
        self.records = [[[line for line in feature if feature.index(line) == 0 or line[0] == '/'] for feature in record] for record in self.records]
        #print self.records
        list_of_records = []
        for record in self.records:
            record_with_features = []
            for feature in record:
                ftype = feature[0].split(' ')[0]
                if feature[0].split(' ')[-1][0] == 'c':
                    fstrand = -1
                    flocation = feature[0].split(' ')[-1].replace('complement(', '').replace(')', '').split('..')
                else:
                    fstrand = +1
                    flocation = feature[0].split(' ')[-1].split('..')
                fqualifiers = feature[1:]
                fqualifiers = [{line[1:].split('=')[0]:line[1:].replace('"', '').split('=')[-1]} for line in fqualifiers]
                feat = GenbankFeature(location=flocation, type=ftype, qualifiers=fqualifiers, strand=fstrand)
                record_with_features.append(feat)
            list_of_records.append(record_with_features)
        self.records = [record for record in list_of_records]
