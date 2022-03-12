#!/usr/bin/env python3

import sys
import Bio
import re
from Bio import SeqIO, SeqFeature
from Bio.SeqFeature import FeatureLocation
from Bio.SeqRecord import SeqRecord
from Bio.SeqIO import FastaIO
from pathlib import Path

import numpy
from matplotlib import pyplot


# The script extracts potential targets of TFs from a user provided genbank file with annotated TFBS
# Pavel Vychyk, march 2021

class BindingSite:
    def __init__(self, dict):
        for k, v in dict.items():
            setattr(self, k, v)


ANNOTATED_SITES = []
REG_DB_SITES = []
GENE_ENTRIES = []
CDS_list = {}
OUTPUT = []
PUTATIVE_INCORRECT = {}
MAX_SCORE = 0


def compare_seq(found, confirmed):
    if (str(found.complement()) in confirmed) \
        or (str(found.reverse_complement) in confirmed) \
            or (str(found) in confirmed):
        return True
    else:
        return False


def check_targets(found, confirmed):
    if ',' in found.targets[1]:
        targets = found.targets[1].split(',')
        if any(target in confirmed.targets for target in targets):
            return True
    elif found.targets[1] in confirmed.targets[1]:
        return True
    else:
        return False


def correct_location(tf_feature, left_gene, right_gene, down_length):
    if left_gene.strand == 1 and right_gene.strand == -1:
        return False
    if left_gene.location.end - tf_feature.location.end > down_length and left_gene.strand == -1:
        return False
    if tf_feature.location.start - right_gene.location.start > down_length and right_gene.strand == 1:
        return False
    if  tf_feature.location.start <= left_gene.location.end and left_gene.strand == 1:
        return False
    if tf_feature.location.end > right_gene.location.start and right_gene.strand == -1:
        return False
    return True


def get_site_features(site, **kwargs):
    features = {}
    if kwargs.get('records', None):
        features['seq'] = site.location.extract(kwargs['records']).seq
    else:
        features['seq'] = None
    features['coord'] = (site.location.start, site.location.end)
    features['targets'] = kwargs.get('members')
    features['intergenic'] = kwargs.get('intergenic')
    features['evidence'] = kwargs.get('evidence')
    features['score'] = get_bitscore(site)
    features['match'] = None
    return features


def get_bitscore(feature):
    try:
        match = re.search(r"(?<=score\s)[0-9]+[.[0-9]+]?", feature.qualifiers["note"][0])
        if match:
            score = float(match.group(0))
            return(score)
    except KeyError:
        print(f"failed to get bitscore: {feature.location.start}-{feature.location.end}")
        return None


def print_gene(feature):
    try:
        return feature.qualifiers['gene'][0]
    except KeyError:
        return "no gene name"


def print_qualifiers(feature):
    try:
        return feature.qualifiers['locus_tag'][0]
    except KeyError:
        return "no locus_tag"


def print_location(feature):
    try:
        return f"coordinates: {feature.location.start}-{feature.location.end};"
    except KeyError:
        return f"no coordinates;"


def print_strand(feature):
    try:
        return feature.location.strand
    except KeyError:
        return "no strand info"


def print_protID(feature):
    try:
        return f"Protein_ID:{CDS_list[feature.qualifiers['locus_tag'][0]].qualifiers['protein_id'][0]};"
    except KeyError:
        return f"no id;"


def print_product(feature):
    try:
        return f"Product:{CDS_list[feature.qualifiers['locus_tag'][0]].qualifiers['product'][0]};"
    except KeyError:
        return f"no product info;"


def print_translated_prot(feature):
    try:
        return f"Translation:{CDS_list[feature.qualifiers['locus_tag'][0]].qualifiers['translation'][0]}"
    except KeyError:
        return f"no protein sequence"


def print_output(site, i):
    OUTPUT.append(f"{i}.\n \tsite coordinates: {site.coord[0]}-{site.coord[1]}")
    OUTPUT.append(f"\tscore: {site.score}")
    if site.match:
        OUTPUT.append(f"\tfound site matches confirmed operator")
    OUTPUT.append(f"\tseq: {site.seq}")
    if site.targets[0] == -1:
        OUTPUT.append(f"\ttargets: {site.targets[1]} <--")
    elif site.targets[0] == 1:
        OUTPUT.append(f"\ttargets: --> {site.targets[1]}")
    else:
        OUTPUT.append(f"\ttargets: {site.targets[1]} <-- --> {site.targets[2]}")


def get_member_identifier(feature_index):
    # return gene name as default identifier, if gene is not defined, return locus_tag
    if PRINT_FEATURE["gene"](feature_index) == "no gene name":
        return PRINT_FEATURE["locus_tag"](feature_index)
    else:
        return PRINT_FEATURE["gene"](feature_index)


def operon_members(i, direction, gap):
    def left_located(i, gap):
        output = []
        output.append(get_member_identifier(GENE_ENTRIES[i]))
        if i > 0:
            i -= 1
            while i > 0:
                try:
                    if GENE_ENTRIES[i].strand == GENE_ENTRIES[i + 1].strand and \
                            GENE_ENTRIES[i + 1].location.start - GENE_ENTRIES[i].location.end <= gap:
                        output.append(get_member_identifier(GENE_ENTRIES[i]))
                        i -= 1
                    else:
                        break
                except AttributeError:
                    break
        return output


    def right_located(i, gap):
        output = []
        output.append(get_member_identifier(GENE_ENTRIES[i]))
        if i < len(GENE_ENTRIES) - 1:
            i += 1
            while i < len(GENE_ENTRIES) - 1:
                try:
                    if GENE_ENTRIES[i].strand == GENE_ENTRIES[i - 1].strand and \
                            GENE_ENTRIES[i].location.start - GENE_ENTRIES[i - 1].location.end <= gap:
                        output.append(get_member_identifier(GENE_ENTRIES[i]))
                        i += 1
                    else:
                        break
                except AttributeError:
                    break
        return output

    if direction == -1:
        return (-1, (','.join(left_located(i, gap)[::-1])))
    elif direction == 1:
        return (1, (','.join(right_located(i, gap))))
    else:
        return (0, (','.join(left_located(i, gap)[::-1])), (','.join(right_located(i, gap))))


def intergenic_reg(feature):
    return f"{feature.intergenic[0]}-{feature.intergenic[1]}"


PRINT_FEATURE = {"gene": print_gene,
                 "locus_tag": print_qualifiers,
                 "coordinats": print_location,
                 "strand": print_strand,
                 "protein_id": print_protID,
                 "product": print_product,
                 "translated_product": print_translated_prot
                 }


def populate_tfbs(site, feature_index, direction, operon_gap, seq_record):
    site_ext = BindingSite(get_site_features(site,
                                             members=operon_members(feature_index, direction, operon_gap),
                                             records=seq_record,
                                             intergenic=(GENE_ENTRIES[feature_index].location.end,
                                                         GENE_ENTRIES[feature_index + 1].location.start)
                                             )
                           )
    if not site_ext.intergenic[0] <= site_ext.coord[0] <= site_ext.intergenic[1]:
       pass

    ANNOTATED_SITES.append(site_ext)


def clear_site(site):
    if f"{site.coord[0]}-{site.coord[1]}" in PUTATIVE_INCORRECT:
        del PUTATIVE_INCORRECT[f"{site.coord[0]}-{site.coord[1]}"]


def get_nearby_genes(genbank_path, savefig_path, tf_name, regdb_info, score_filter=4.0, down_length=50, operon_gap=75):
    with open(genbank_path, 'r') as handle:
        seq_record = SeqIO.read(handle, 'genbank')
    tf_sites = []
    seq_record.features.sort(key = lambda SeqFeature: SeqFeature.location.start)
    for feature in seq_record.features:
        if feature.type == "gene":
            GENE_ENTRIES.append(feature)
        elif feature.type in ("CDS", "ncRNA"):
            CDS_list[feature.qualifiers['locus_tag'][0]] = feature
        elif feature.type == "protein_bind":
            if tf_name in feature.qualifiers["bound_moiety"]:
                score = get_bitscore(feature)
                if score:
                    if score >= score_filter:
                        tf_sites.append(feature)
                    else:
                        print(f"TFBS filtered by bitscore: {feature.location.start}-{feature.location.end}")
                else:
                    print(f"failed to get feature bitscore: {feature.location.start}-{feature.location.end}")
    # parse regdb info
    with open(regdb_info, 'r') as tfbs_info:
        for line in tfbs_info:
            match = re.search("^.+\d.+", line)
            if match:
                tabs = line.split('\t')
                site = BindingSite({'seq': tabs[7].upper(),
                                      'targets': re.sub('[\s+]', '', tabs[6]),
                                      'evidence': tabs[10],
                                      })
                REG_DB_SITES.append(site)

    for site in tf_sites:
        for i,feature in enumerate(GENE_ENTRIES[1:]):
            if GENE_ENTRIES[i].location.start <= site.location.start <= site.location.end <= feature.location.end:
                if correct_location(site, GENE_ENTRIES[i], feature, down_length):
                    if GENE_ENTRIES[i].location.strand == 1 and feature.location.strand == 1:
                        populate_tfbs(site, i + 1, 1, operon_gap, seq_record)
                        break
                    elif GENE_ENTRIES[i].location.strand == -1 and feature.location.strand == -1:
                        populate_tfbs(site, i, -1, operon_gap, seq_record)
                        break
                    elif GENE_ENTRIES[i].location.strand == -1 and feature.location.strand == 1:
                        if site.location.end >= feature.location.start:
                            populate_tfbs(site, i + 1, 1, operon_gap, seq_record)
                            break
                        elif site.location.start <= GENE_ENTRIES[i].location.end:
                            populate_tfbs(site, i, -1, operon_gap, seq_record)
                            break
                        elif (feature.location.start - site.location.end) / \
                                (feature.location.start - GENE_ENTRIES[i].location.end) < 0.1:
                            populate_tfbs(site, i + 1, 1, operon_gap, seq_record)
                            break
                        elif (site.location.start - GENE_ENTRIES[i].location.end) / \
                                (feature.location.start - GENE_ENTRIES[i].location.end) < 0.1:
                            populate_tfbs(site, i, -1, operon_gap, seq_record)
                            break
                        else:
                            populate_tfbs(site, i, 0, operon_gap, seq_record)
                            break
                elif not PUTATIVE_INCORRECT.get(f"{site.location.start}-{site.location.end}", None):
                        PUTATIVE_INCORRECT[f"{site.location.start}-{site.location.end}"] = True


    threshold_confirmed = []
    threshold_highest = 0
    threshold_conf_match = 0
    confirmed_save = []
    unconfirmed_save = []
    for site in ANNOTATED_SITES:
        found = False
        for conf_site in REG_DB_SITES:
            if check_targets(site, conf_site):
                if compare_seq(site.seq, conf_site.seq):
                    site.match = True
                    if not threshold_conf_match:
                        threshold_conf_match = site.score
                    elif site.score < threshold_conf_match:
                        threshold_conf_match = site.score
                threshold_confirmed.append(site.score)
                if len(threshold_confirmed) > 1:
                    if threshold_confirmed[0] >= threshold_confirmed[-1]:
                        threshold_confirmed[0] = threshold_confirmed.pop()
                    else:
                        threshold_confirmed.pop()
                found = True
                confirmed_save.append(site)
        if not found:
            if threshold_highest < site.score:
                threshold_highest = site.score
            unconfirmed_save.append(site)
    confirmed_save.sort(key=lambda BindingSite: BindingSite.intergenic[0])
    unconfirmed_save.sort(key=lambda BindingSite: BindingSite.intergenic[0])
    OUTPUT.append(f"Locations of {len(confirmed_save)} TFBS match to {len(REG_DB_SITES)} known targets."
                  f" {len([True for site in confirmed_save if site.match])}"
                  f" of {len(REG_DB_SITES)} TFBS matches confirmed sequence(s).\n"
                  f"Lowest score for confirmed sites sequence: {threshold_conf_match}\n"
                  f"Lowest score for site near confirmed target: {threshold_confirmed}\n"
                  f"Highest score for unconfirmed site: {threshold_highest}")
    sites_batch = []
    processed_count = 1
    if len(confirmed_save):
        OUTPUT.append(f"=========== Confirmed sites ===========")
        OUTPUT.append(f"Intergenic region: {intergenic_reg(confirmed_save[0])}")
        sites_batch.append(confirmed_save[0])
        for i, site in enumerate(confirmed_save[1:], 2):
            if intergenic_reg(site) == intergenic_reg(confirmed_save[i - 2]):
                sites_batch.append(site)
            else:
                sites_batch.sort(key=lambda site: site.score)
                for item in sites_batch:
                    print_output(item, processed_count)
                    processed_count += 1
                sites_batch = []
                OUTPUT.append(f"Intergenic region: {intergenic_reg(site)}")
                sites_batch.append(site)
    if len(sites_batch):
        sites_batch.sort(key=lambda x: x.score)
        for item in sites_batch:
            print_output(item, processed_count)
            processed_count += 1
            clear_site(item)
    sites_batch = []
    processed_count = 1
    if len(unconfirmed_save):
        OUTPUT.append(f"=========== Unconfirmed sites ===========")
        OUTPUT.append(f"Intergenic region: {intergenic_reg(unconfirmed_save[0])}")
        sites_batch.append(unconfirmed_save[0])
        for i, site in enumerate(unconfirmed_save[1:], 2):
            if intergenic_reg(site) == intergenic_reg(unconfirmed_save[i - 2]):
                sites_batch.append(site)
            else:
                sites_batch.sort(key=lambda x: x.score)
                for item in sites_batch:
                    print_output(item, processed_count)
                    processed_count += 1
                sites_batch = []
                sites_batch.append(site)
                OUTPUT.append(f"Intergenic region: {intergenic_reg(site)}")
    if len(sites_batch):
        for item in sites_batch:
            print_output(item, processed_count)
            processed_count += 1
            clear_site(item)
    with open(f"{genbank_path}_sites", "w") as f:
        f.writelines('\n'.join(OUTPUT))

    bins = [i for i in range(1, 31)]

    conf_data = [site.score for site in confirmed_save]
    unconf_data = [site.score for site in unconfirmed_save]


    arr = pyplot.hist(conf_data, bins=bins, alpha=0.7, label='confirmed targets', color="blue", edgecolor='black')
    for i in range(len(bins)-1):
        if arr[0][i]:
            pyplot.text(arr[1][i], arr[0][i], str(int(arr[0][i])))
    arr = pyplot.hist(unconf_data, bins=bins, alpha=0.5, label='unconfirmed', color="yellow", edgecolor='black')
    for i in range(len(bins) - 1):
        if arr[0][i]:
            pyplot.text(arr[1][i], arr[0][i], str(int(arr[0][i])))
    pyplot.legend(loc='upper right')
    pyplot.xlabel("bits")
    pyplot.ylabel("sites count")
    pyplot.xticks(bins)
    pyplot.gca().margins(x=0)
    pyplot.gcf().canvas.draw()
    tl = pyplot.gca().get_xticklabels()
    maxsize = max([t.get_window_extent().width for t in tl])
    m = 0.8
    s = (maxsize / pyplot.gcf().dpi * len(bins)) + 4 * m
    margin = m / pyplot.gcf().get_size_inches()[0]
    pyplot.gcf().subplots_adjust(left=margin, right=1. - margin)
    pyplot.gcf().set_size_inches(s, pyplot.gcf().get_size_inches()[1])
    pyplot.savefig(savefig_path, bbox_inches='tight')
    if len(PUTATIVE_INCORRECT):
        for site in PUTATIVE_INCORRECT:
            print(f"check location: {site}")
    print('\n'.join(OUTPUT))
    print("done.")


if __name__ == "__main__":
    if len(sys.argv) == 6:
        get_nearby_genes(sys.argv[1], sys.argv[2], sys.argv[3], sys.argv[4], float(sys.argv[5]))
    elif len(sys.argv) == 7:
        get_nearby_genes(sys.argv[1], sys.argv[2], sys.argv[3], sys.argv[4], float(sys.argv[5]), int(sys.argv[6]))
    else:
        print("Usage: matches_score_analysis.py gb_file path_to_save_plot "
              "tf_name TFBS_info [score filter, default=4] [downstream_length, default=50]")
        sys.exit(0)
