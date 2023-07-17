import sys
import Bio
import json
from Bio import SeqIO
from Bio.SeqFeature import FeatureLocation
from Bio.SeqFeature import SeqFeature


class MySeqFeature(SeqFeature):
    @staticmethod
    def from_json(json_dict):
        '''
        function expects json entry which was produced as the result
        of tf_classifier.py work.
        correct json object has the following keys:
        critical_residue_tag - stores profile CR-tag sequence
        family - defines to which family of TF DNA-binding domains the profile belongs
        profile_name - concatenation of critical_residue_tag and family fields
        sequence - DNA operator which matches to the profile's model
        coordinates - location of the operator sequence within the genome that was used
        as a target for scan with a profile
        strand - defines on which DNA strand operator sequence is located
        e-value - the statistical significance criteria calculated by nhmmscan from HMMER
        bit_score - the statistical significance criteria calculated by nhmmscan from HMMER
        protein_id
        locus_tag
        gene
        '''

        coordinates_list = list(map(int, json_dict["coordinates"].split(':')))
        if json_dict['strand'] == '+':
            coordinates_fl_object = FeatureLocation(*coordinates_list)
            strand = +1
        else:
            coordinates_fl_object = FeatureLocation(*coordinates_list[::-1])
            strand = -1

        #strand = +1 if json_dict['strand'] == '+' else -1
        note = f"nhmmer score {json_dict['bit_score']} E-value {json_dict['e-value']} TF-Family {json_dict['family']}" \
               f"profile's CR-tag matches to TF with locus tag {json_dict['locus_tag']}"
        return SeqFeature(location=coordinates_fl_object,
                          type="protein_bind",
                          strand=strand,
                          qualifiers={"bound_moiety": json_dict["profile_name"],
                                      "note": note}
                          )


def add_tfbs_to_gbk(gbk_file_path, json_file_path, gbk_output):
    records = SeqIO.parse(gbk_file_path, 'genbank')
    with open(json_file_path, 'r') as f:
        sites_json = json.load(f)
    record = next(records)
    for site in sites_json:
        site_decoded = json.loads(json.dumps(site), object_hook=MySeqFeature.from_json)
        record.features.append(site_decoded)
    record.features.sort(key=lambda SeqFeature: SeqFeature.location.start)
    SeqIO.write(record, gbk_output, 'genbank')


if __name__ == "__main__":
    if len(sys.argv) == 4:
        add_tfbs_to_gbk(sys.argv[1], sys.argv[2], sys.argv[3])
    else:
        print(f"Incorrect number of arguments: provide path to the gbk_file, file with binding sites data in "
              f"JSON format, path to save modified gbk_file")
        sys.exit(1)
