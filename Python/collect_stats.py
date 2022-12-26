import pathlib
import pandas as pd
import sys


STATS_FILE_EXTENSION = ".log"
PERMUTATION_PREFIX = "permutated"
FEATURE_STRINGS = {'confirmed seq threshold':'Lowest score for confirmed sites sequence',
                  'confirmed target threshold':'Lowest score for site near confirmed target',
                  'unconfirmed target threshold':'Highest score for unconfirmed site',
                  'incorrect sites threshold':'The highest score among putative incorrect sites'}


def get_dir_logs(directory, STATS_DICT_TEMPLATE, permutation_prefix):
    if directory.is_dir():
        log_entry = {key:val for key, val in STATS_DICT_TEMPLATE.items()}
        for item in directory.iterdir():
            if item.name.endswith(STATS_FILE_EXTENSION):
                log_content = []
                with open(item, 'r') as f:
                    line = f.readline()
                    while line:
                        if not line.startswith("="):
                            log_content.append(line)
                            line = f.readline()
                        else:
                            break
                if not permutation_prefix in item.name:
                    log_entry['source'] = log_content
                else:
                    log_entry[f"{permutation_prefix}{item.name.split('_')[1]}"] = log_content
        return log_entry


def get_feature_values(profile_stats, feature_string):
    output = {}
    for name, stats in profile_stats.items():
        if stats:
            for entry in stats:
                if feature_string in entry:
                    if "no sites" in entry:
                        output[name] = '-'
                    else:
                        output[name] = float(entry.split(':')[1])
            if not output.get(name, None):
                output[name] = 'not found'
    return output


def create_stats_df(path, permutations_number):
    results_dir = pathlib.Path(path)
    fields = ['source']
    fields.extend([f"{PERMUTATION_PREFIX}{i}" for i in range(1, int(permutations_number))])
    STATS_DICT_TEMPLATE = {field: [] for field in fields}
    df = []
    for item in results_dir.iterdir():
        if item.is_dir():
            profile_stats = get_dir_logs(item, STATS_DICT_TEMPLATE, PERMUTATION_PREFIX)
            if profile_stats:
                model_entry = {"model name":item.stem}
                for stat, feature in FEATURE_STRINGS.items():
                    values = get_feature_values(profile_stats, feature)
                    filtered_values = [val for model, val in values.items() if val != "-" and model != "source"]
                    values_count = len(values) - len(filtered_values) - 1
                    if filtered_values:
                        max_stat = max(filtered_values)
                        average_stat = round(sum(filtered_values) / len(filtered_values), 2)
                    else:
                        max_stat = '-'
                        average_stat = '-'
                    model_entry[f"{stat} max"] = max_stat
                    model_entry[f"{stat} average max"] = average_stat
                    model_entry[f"{stat} number of missed values"] = values_count
                    model_entry[f"{stat} source model value"] = values.get("source", 'no key')
                df.append(model_entry)

    pd.DataFrame(df).to_csv(f"{results_dir}/stats.tsv", sep="\t")

if __name__ == "__main__":
    if len(sys.argv) == 3:
        create_stats_df(sys.argv[1], sys.argv[2])
    else:
        print("Usage: collect_stats.py [path to results] [number of permutations]")
        sys.exit(0)