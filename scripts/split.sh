#!/bin/bash

# Check if jq is installed
if ! command -v jq &> /dev/null
then
    echo "jq could not be found. Please install jq before running this script."
    exit 1
fi

# Check if input file is provided as an argument
if [ "$#" -ne 1 ]; then
    echo "Usage: $0 <input_json_file>"
    exit 1
fi

# Input JSON file
input_file="$1"

# Check if the input file exists
if [[ ! -f "$input_file" ]]; then
    echo "Input file not found: $input_file"
    exit 1
fi

# Create output directory if it doesn't exist
output_dir="../output"
mkdir -p "$output_dir"

# Function to sanitize filenames by removing slashes
sanitize_filename() {
    echo "$1" | tr -d '/'
}

# Read each object in the array and save to a separate JSON file
jq -c '.[]' "$input_file" | while read -r object; do
    name=$(echo "$object" | jq -r '.name')
    if [[ -n "$name" ]]; then
        sanitized_name=$(sanitize_filename "$name")
        echo "$object" | jq '.' > "$output_dir/$sanitized_name.json"
        echo "Created file: $output_dir/$sanitized_name.json"
    else
        echo "Skipping object without a name field: $object"
    fi
done

echo "Finished processing JSON objects."
