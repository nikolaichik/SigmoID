import pathlib
import pandas as pd
import sys


STATS_FILE_EXTENSION = ".log"
PERMUTATION_PREFIX = "permutated"
FEATURE_STRINGS = {'Overlaps DB site':'The lowest score for the site overlapping DB sequence',
                  'Near Target Gene':'The lowest score for the site near its target gene',
                  'Unconfirmed Sites':'The highest score for the unconfirmed site',
                  'Incorrectly Positioned':'The highest score among the incorrectly positioned sites'}


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
    top_dict = {}
    for dir_item in results_dir.iterdir():
        if dir_item.is_dir():
            profile_stats = get_dir_logs(dir_item, STATS_DICT_TEMPLATE, PERMUTATION_PREFIX)
            if profile_stats:
                for stat, feature in FEATURE_STRINGS.items():
                    if stat not in top_dict:
                        top_dict[stat] = []
                    model_entry = {"Model name": dir_item.stem}
                    values = get_feature_values(profile_stats, feature)
                    filtered_values = [val for model, val in values.items() if val != "-" and model != "source"]
                    values_count = len(values) - len(filtered_values) - 1
                    if filtered_values:
                        max_stat = max(filtered_values)
                        average_stat = round(sum(filtered_values) / len(filtered_values), 2)
                    else:
                        max_stat = '-'
                        average_stat = '-'
                    model_entry[f"Permutated max"] = max_stat
                    model_entry[f"Permutated Average max"] = average_stat
                    model_entry[f"Permutated Models Searches without Matches"] = values_count
                    model_entry[f"Minimal score for Original Model"] = values.get("source", 'no data')
                    top_dict[stat].append(model_entry)

    df = pd.concat({k: pd.DataFrame(v).set_index("Model name") for k, v in top_dict.items()}, axis=1)
    try:
        df.to_html(f"{results_dir}/stats.html")
        df.to_excel(f"{results_dir}/stats.xlsx", header=True)
    except IOError:
        print(f"Can't save stats files to {results_dir}, check folder permissions")

if __name__ == "__main__":
    if len(sys.argv) == 3:
        create_stats_df(sys.argv[1], sys.argv[2])
    else:
        print("Usage: collect_stats.py [path to results] [number of permutations]")
        sys.exit(0)
