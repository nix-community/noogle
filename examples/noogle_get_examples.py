#!/usr/bin/env nix-shell
#!nix-shell -p python3



import json
import os
import sys
# Get file and folder path from command line arguments
json_file_path = sys.argv[1]
folder_path = sys.argv[2]

# Load JSON file
with open(json_file_path, 'r') as f:
    data = json.load(f)


search_strings = set()
for entry in data:
    # Walk through folder structure and search for matches
    search_strings.add(entry['meta']['path'][-1])
    count = 0
search_strings = ["callPackage", "or", "toInt"]

search_strings = dict.fromkeys(search_strings, {"count": 0, "matches": []})

finished_search_strings = dict()

for root, dirs, files in os.walk(folder_path):
    for file in files:
        path = os.path.join(root, file)
        if file.endswith(".nix") and not os.path.islink(path) and os.path.isfile(path):
            with open(path, 'r') as f:
                lines = f.readlines()
                for line in lines:
                    for string in search_strings:
                        if f" {string} "  in line:
                            matches = search_strings[string]["matches"].copy()
                            linenumber = lines.index(line) + 1
                            match = {"line": linenumber, "column": None, "example": lines[linenumber-3:linenumber+3], "file": os.path.join(root, file)}
                            matches.append(match)
                            string_dict = search_strings[string].copy()
                            string_dict.update(
                                {"count": search_strings[string]["count"]+1,
                                 "matches": matches})
                            search_strings.update({string: string_dict})

                    left_search_strings = {}
                    for string in search_strings:
                        if search_strings[string]["count"] < 3:
                            left_search_strings.update({string: search_strings[string]})
                        else:
                            finished_search_strings.update({string: search_strings[string]})
                    search_strings = left_search_strings
                print(f"{len(search_strings)} left")
finished_search_strings.update(search_strings)


output = {}
for entry in data:
    # Walk through folder structure and search for matches
    if entry['meta']['path'][-1] in finished_search_strings:
        output.update({"meta": {"path": entry["meta"]["path"], "examples": finished_search_strings[entry['meta']['path'][-1]]}})

with open("output.json", "w") as outfile:
    outfile.write(json.dumps(output, indent=4))






