#!/usr/bin/env python3

import sys
import Bio
import re
from Bio import SeqIO, SeqFeature
from Bio.SeqFeature import FeatureLocation
from Bio.SeqRecord import SeqRecord
from Bio.SeqIO import FastaIO
from pathlib import Path

import numpy as np
from math import ceil
from matplotlib import pyplot


# The script extracts potential targets of TFs from a user provided genbank file with annotated TFBS
# Pavel Vychyk, march 2021

class BindingSite:
    def __init__(self, dict):
        for k, v in dict.items():
            setattr(self, k, v)


ANNOTATED_SITES = []
REG_DB_SITES = {}
GENE_ENTRIES = []
CDS_list = {}
OUTPUT = []
PUTATIVE_INCORRECT = {}
MAX_SCORE = 0


def compare_seq(found, sites_db, tf_name):
    tfbs_data = sites_db.get(tf_name)
    if tfbs_data:
        for entry in tfbs_data:
            try:
                if len(entry.seq) >= len(found.seq):
                    if (str(found.seq.complement()) in entry.seq) \
                            or (str(found.seq.reverse_complement()) in entry.seq) \
                            or (str(found.seq) in entry.seq):
                        return True
                else:
                    if (entry.seq in str(found.seq.complement())) \
                        or (entry.seq in str(found.seq.reverse_complement())) \
                            or (entry.seq in str(found.seq)):
                        return True
                if len(entry.coord) == 2 and len(found.coord) == 2:
                    if all(True if field != '' else False for field in [*entry.coord, *found.coord]):
                        if int(entry.coord[1]) > found.coord[0] > int(entry.coord[0]) or \
                            int(entry.coord[1]) > found.coord[1] > int(entry.coord[0]):
                            return True
                        else:
                            return False
            except TypeError:
                return False
    else:
        print(f"{tf_name} not found in RegDB TFBSs data")


def within_coord_of_known_sites(found_site, targets_source, tf_name):
    # putative_targets = []
    tfbs_data = targets_source.get(tf_name)
    if tfbs_data:
        for entry in tfbs_data:
            if entry.coord[1] != '' and entry.coord[0] != '':
                   if found_site.coord[0] > int(entry.coord[0]) - 50 and\
                           found_site.coord[1] < int(entry.coord[1]) + 50:
                       return True
                       # if entry.targets:
                       #     putative_targets.append(entry.targets)
    else:
        print(f"{tf_name} not found in DB TFBSs data")
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
    features['targets'] = kwargs.get('members', None)
    features['intergenic'] = kwargs.get('intergenic', None)
    features['evidence'] = kwargs.get('evidence', None)
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
    if site.seq:
        OUTPUT.append(f"\tseq: {site.seq}")
    if site.targets:
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
        return (0, (','.join(left_located(i, gap)[::-1])), (','.join(right_located(i+1, gap))))


def intergenic_reg(feature):
    return f"{feature.intergenic[0]}-{feature.intergenic[1]}"


PRINT_FEATURE = {"gene": print_gene,
                 "locus_tag": print_qualifiers,
                 "coordinates": print_location,
                 "strand": print_strand,
                 "protein_id": print_protID,
                 "product": print_product,
                 "translated_product": print_translated_prot
                 }


def populate_tfbs(site, feature_index, direction, operon_gap, seq_record):
    try:
        site_ext = BindingSite(get_site_features(site,
                                                 members=operon_members(feature_index, direction, operon_gap),
                                                 records=seq_record,
                                                 intergenic=(GENE_ENTRIES[feature_index].location.end,
                                                             GENE_ENTRIES[feature_index + 1].location.start)
                                                 )
                               )
    except IndexError:
        site_ext = BindingSite(get_site_features(site,
                                                 members=operon_members(feature_index, direction, operon_gap),
                                                 records=seq_record,
                                                 intergenic=(GENE_ENTRIES[feature_index - 1].location.end,
                                                             GENE_ENTRIES[feature_index].location.start)
                                                 )
                               )        
    if not site_ext.intergenic[0] <= site_ext.coord[0] <= site_ext.intergenic[1]:
       pass
    ANNOTATED_SITES.append(site_ext)


def clear_site(site):
    if f"{site.coord[0]}-{site.coord[1]}" in PUTATIVE_INCORRECT:
        del PUTATIVE_INCORRECT[f"{site.coord[0]}-{site.coord[1]}"]


def get_nearby_genes(genbank_path, tf_name, regdb_info, score_filter=2.0, down_length=100, operon_gap=75):
    with open(genbank_path, 'r') as handle:
        seq_record = SeqIO.read(handle, 'genbank')
    tf_sites = []
    seq_record.features.sort(key = lambda SeqFeature: SeqFeature.location.start)
    sites_not_passed_threshold = 0
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
                        sites_not_passed_threshold += 1
                else:
                    print(f"failed to get feature bitscore: {feature.location.start}-{feature.location.end}")
    # parse regdb info
    with open(regdb_info, 'r') as tfbs_info:
        # Columns after splitting BindingSiteSet line:
        # (1) Transcription Factor (TF) identifier assigned by RegulonDB
        # (2) TF name
        # (3) Confornation name
        # (4) TF binding site (TF-bs) identifier assigned by RegulonDB
        # (5) TF-bs left end position in the genome
        # (6) TF-bs right end position in the genome
        # (7) DNA strand where the  TF-bs is located
        # (8) TF-Gene interaction identifier assigned by RegulonDB (related to the "TF gene interactions" file)
        # (9) Transcription unit id regulated by the TF
        # (10) Transcription unit name regulated by the TF
        # (11) Gene expression effect caused by the TF bound to the  TF-bs (+ activation, - repression, +- dual, ? unknown)
        # (12) Promoter name
        # (13) Center position of TF-bs, relative to Transcription Start Site
        # (14) TF-bs sequence (upper case)
        # (15) Distance to first gene
        # (16) Evidence that supports the existence of the TF-bs
        # (17) Evidence confidence level (Confirmed, Strong, Weak)
        # (18) Evidence tech code related to TF-bs function
        # (19) Evidence tech code related to TF-bs
        for line in tfbs_info:
            if not line.startswith('#'):
                tabs = line.split('\t')
                site = BindingSite({'seq': tabs[13].upper(),
                                    'coord': (tabs[4], tabs[5]),
                                    'evidence': tabs[16],
                                    'targets': tabs[9]
                                    })
                if tabs[1] in REG_DB_SITES:
                    REG_DB_SITES[tabs[1]].append(site)
                else:
                    REG_DB_SITES[tabs[1]] = [site]

    for site in tf_sites:
        for i, feature in enumerate(GENE_ENTRIES[1:]):
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
                        PUTATIVE_INCORRECT[f"{site.location.start}-{site.location.end}"] = BindingSite(get_site_features(site))
    near_target_gene = []
    scores_near_target_gene = []
    overlaps_DB_site = []
    scores_overlaps_DB_site = []
    unconfirmed_sites = []
    scores_unconfirmed_sites = []
    for site in ANNOTATED_SITES:
        if within_coord_of_known_sites(site, REG_DB_SITES, tf_name):
            if compare_seq(site, REG_DB_SITES, tf_name):
                site.match = True
                overlaps_DB_site.append(site)
                scores_overlaps_DB_site.append(site.score)
            # confirmed_save.append(site)
            near_target_gene.append(site)
            scores_near_target_gene.append(site.score)
        else:
            unconfirmed_sites.append(site)
            scores_unconfirmed_sites.append(site.score)
    overlaps_DB_site.sort(key=lambda BindingSite: BindingSite.intergenic[0])
    unconfirmed_sites.sort(key=lambda BindingSite: BindingSite.score)
    OUTPUT.append(f"Total number of sites in the DB {len(REG_DB_SITES)}, "
                  f"{len(tf_sites)}/{len(tf_sites) + sites_not_passed_threshold} sites"
                  f" passed the score threshold {score_filter} set by user.\n"
                  f"Location(s) of the {len(near_target_gene)} "
                  f"out of total {len(tf_sites)} found TFBS match to known targets."
                  f" {len(scores_overlaps_DB_site)} found site(s) overlap"
                  f" with confirmed sequence(s) in DB.\n"
                  f"The lowest score for the site overlapping DB sequence: "
                  f"{min(scores_overlaps_DB_site) if scores_overlaps_DB_site else 'no sites'}\n"
                  f"The highest score for the site overlapping DB sequence: "
                  f"{max(scores_overlaps_DB_site) if scores_overlaps_DB_site else 'no sites'}\n"
                  f"The lowest score for the site near its target gene: "
                  f"{min(scores_near_target_gene) if scores_near_target_gene else 'no sites'}\n"
                  f"The highest score for the site near its target gene: "
                  f"{max(scores_near_target_gene) if scores_near_target_gene else 'no sites'}\n"
                  f"The highest score for the unconfirmed site: "
                  f"{max(scores_unconfirmed_sites) if scores_unconfirmed_sites else 'no sites'}\n"
                  f"Total number of putative incorrect sites: "
                  f"{len(PUTATIVE_INCORRECT) if PUTATIVE_INCORRECT else 'no sites'}"
                  )
    if PUTATIVE_INCORRECT:
        OUTPUT.append(f"The highest score among the incorrectly positioned sites: "
                      f"{max([site.score for site in PUTATIVE_INCORRECT.values()])} \n")
    else:
        OUTPUT.append(f"The highest score among the incorrectly positioned sites: no sites")
    sites_batch = []
    processed_count = 1
    if overlaps_DB_site:
        OUTPUT.append(f"=========== Sites overlapping with DB seqs ===========")
        OUTPUT.append(f"Intergenic region: {intergenic_reg(overlaps_DB_site[0])}")
        sites_batch.append(overlaps_DB_site[0])
        for i, site in enumerate(overlaps_DB_site[1:], 2):
            if intergenic_reg(site) == intergenic_reg(overlaps_DB_site[i - 2]):
                sites_batch.append(site)
            else:
                sites_batch.sort(key=lambda site: site.score)
                for item in sites_batch:
                    print_output(item, processed_count)
                    processed_count += 1
                sites_batch = []
                OUTPUT.append(f"Intergenic region: {intergenic_reg(site)}")
                sites_batch.append(site)
    if sites_batch:
        sites_batch.sort(key=lambda x: x.score)
        for item in sites_batch:
            print_output(item, processed_count)
            processed_count += 1
            clear_site(item)
    sites_batch = []
    processed_count = 1
    if unconfirmed_sites:
        OUTPUT.append(f"=========== Unconfirmed sites ===========")
        OUTPUT.append(f"Intergenic region: {intergenic_reg(unconfirmed_sites[0])}")
        sites_batch.append(unconfirmed_sites[0])
        for i, site in enumerate(unconfirmed_sites[1:], 2):
            if intergenic_reg(site) == intergenic_reg(unconfirmed_sites[i - 2]):
                sites_batch.append(site)
            else:
                sites_batch.sort(key=lambda x: x.score)
                for item in sites_batch:
                    print_output(item, processed_count)
                    processed_count += 1
                sites_batch = []
                sites_batch.append(site)
                OUTPUT.append(f"Intergenic region: {intergenic_reg(site)}")
    if sites_batch:
        for item in sites_batch:
            print_output(item, processed_count)
            processed_count += 1
            clear_site(item)
    if PUTATIVE_INCORRECT:
        OUTPUT.append(f"=========== Putative incorrect sites ===========")
        for i, site in enumerate(sorted(PUTATIVE_INCORRECT.values(), key=lambda site: site.score, reverse=True)):
            print_output(site, i)
    with open(f"{genbank_path}.log", "w") as f:
        f.writelines('\n'.join(OUTPUT))
    incorrect_data = [site.score for _, site in PUTATIVE_INCORRECT.items()]
    fig1, (ax1,ax2,ax3,ax4) = pyplot.subplots(4, 1)
    fig1.tight_layout(h_pad=3)
    bins = list(range(1, 1 + ceil(max([*incorrect_data, *scores_overlaps_DB_site,
                                       *scores_near_target_gene, *scores_unconfirmed_sites]))))
    if PUTATIVE_INCORRECT:
        arr = ax1.hist(incorrect_data, bins=bins, alpha=0.25,
                       label='Incorrect', color="r", edgecolor='black', log=True)
        for i in range(len(bins) - 1):
            if arr[0][i]:
                ax1.text(arr[1][i], arr[0][i], str(int(arr[0][i])))

    arr = ax2.hist(scores_unconfirmed_sites, bins=bins, alpha=0.25,
                   label='Unconfirmed', color="b", edgecolor='black', log=True)
    for i in range(len(bins) - 1):
        if arr[0][i]:
            ax2.text(arr[1][i], arr[0][i], str(int(arr[0][i])))
    arr = ax3.hist(scores_near_target_gene, bins=bins, alpha=0.25,
                   label='Near Target Gene', color="g", edgecolor='black', log=True)
    for i in range(len(bins) - 1):
        if arr[0][i]:
            ax3.text(arr[1][i], arr[0][i], str(int(arr[0][i])))
    arr = ax4.hist(scores_overlaps_DB_site, bins=bins, alpha=0.25,
                   label='Overlaps DB Site', color="c", edgecolor='black', log=True)
    for i in range(len(bins) - 1):
        if arr[0][i]:
            ax4.text(arr[1][i], arr[0][i], str(int(arr[0][i])))
    # set top and right boundaries invisible, add bins ticks
    for ax in (ax1, ax2, ax3, ax4):
        ax.legend(bbox_to_anchor=(1, 0), loc="lower left")
        for side in ("top", 'right'):
            ax.spines[side].set_visible(False)
            ax.set_xticks(bins)
    ax3.set_xlabel("bits")
    ax2.set_ylabel("sites count")
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
    fig1.savefig(f"{genbank_path}_hist.png", bbox_inches='tight')
    pyplot.close(fig1)
    hist_incorrect, _ = np.histogram(incorrect_data, bins=bins)
    hist_unconfirmed, _ = np.histogram(scores_unconfirmed_sites, bins=bins)
    hist_near_target, _ = np.histogram(scores_near_target_gene, bins=bins)
    hist_overlaps, _ = np.histogram(scores_overlaps_DB_site, bins=bins)
    levels = ["Incorrectly Positioned", "Unconfirmed Sites",  "Near Target Gene", "Overlaps DB Site"]
    hist_scores = np.array([hist_incorrect, hist_unconfirmed, hist_near_target, hist_overlaps])
    fig2, ax = pyplot.subplots()
    pyplot.imshow(hist_scores)
    # Show all ticks and label them with the respective list entries
    ax.set_xticks(np.arange(len(bins) - 1))
    ax.set_xticklabels(bins[:-1])
    ax.set_yticks(np.arange(len(levels)))
    ax.set_yticklabels(levels)
    # Rotate the tick labels and set their alignment.
    pyplot.setp(ax.get_xticklabels())
    # Loop over data dimensions and create text annotations.
    for i in range(len(levels)):
        for j in range(len(bins) - 1):
            text = ax.text(j, i, hist_scores[i, j],
                           ha="center", va="center", color="w")
    ax.set_title("Bit-scores distribution of TFBSs")
    fig2.tight_layout()
    fig2.savefig(f"{genbank_path}_heatmap.png", bbox_inches='tight')
    pyplot.close(fig2)
    if PUTATIVE_INCORRECT:
        print(f"locations for putative incorrectly positioned sites:\n")
        print('\n'.join(PUTATIVE_INCORRECT))
    print('\n'.join(OUTPUT))
    print("done.")


if __name__ == "__main__":
    if len(sys.argv) == 5:
        get_nearby_genes(sys.argv[1], sys.argv[2], sys.argv[3], float(sys.argv[4]))
    elif len(sys.argv) == 6:
        get_nearby_genes(sys.argv[1], sys.argv[2], sys.argv[3], float(sys.argv[4]), int(sys.argv[5]))
    else:
        print("Usage: matches_score_analysis.py gb_file "
              "tf_name TFBS_info [score filter, default=4] [downstream_length, default=50]")
        sys.exit(0)
