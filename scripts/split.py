import json
import sys
import os

def sanitize_filename(filename):
    return ''.join(c for c in filename if c.isalnum() or c in (' ', '.', '_', '-'))

def process_json(input_file, output_dir):
    os.makedirs(output_dir, exist_ok=True)

    with open(input_file, 'r') as f:
        data = json.load(f)

    for obj in data:
        name = obj.get('name')
        if name:
            sanitized_name = sanitize_filename(name)
            output_file = os.path.join(output_dir, f"{sanitized_name}.json")
            with open(output_file, 'w') as f:
                json.dump(obj, f, indent=2)
            print(f"Created file: {output_file}")
        else:
            print(f"Skipping object without a name field: {obj}")

    print("Finished processing JSON objects.")

def main():
    if len(sys.argv) != 3:
        print(f"Usage: {sys.argv[0]} <input_json_file> <output_directory>")
        sys.exit(1)

    input_file = sys.argv[1]
    output_dir = sys.argv[2]

    if not os.path.isfile(input_file):
        print(f"Input file not found: {input_file}")
        sys.exit(1)

    process_json(input_file, output_dir)

if __name__ == "__main__":
    main()