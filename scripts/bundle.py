import yaml
import json
from pathlib import Path
from datetime import datetime, timezone, date


class DateTimeEncoder(json.JSONEncoder):

    def default(self, obj):
        if isinstance(obj, (date, datetime)):
            return obj.isoformat()
        return super().default(obj)


def parse_frontmatter(content):
    """Parse YAML frontmatter from markdown"""
    if content.startswith("---"):
        try:
            second_sep = content[3:].find("---")
            if second_sep != -1:
                yaml_text = content[3:second_sep + 3]
                meta = yaml.safe_load(yaml_text)
                content = content[second_sep + 6:].strip()
                return meta, content
        except yaml.YAMLError:
            pass
    return {}, content


def load_regex_patterns():
    """Load all regex patterns from the regex_patterns folder"""
    patterns = {}
    pattern_folder = Path("regex_patterns")
    if pattern_folder.exists():
        for yml_file in pattern_folder.glob("*.yml"):
            try:
                with open(yml_file, encoding='utf-8') as f:
                    pattern_data = yaml.safe_load(f)
                    patterns[yml_file.stem] = pattern_data.get('pattern')
            except Exception as e:
                print(f"Error loading regex pattern {yml_file}: {e}")
    return patterns


def resolve_patterns_in_conditions(conditions, patterns):
    """Resolve regex patterns in conditions"""
    pattern_types = ['release_title', 'release_group', 'edition']

    for condition in conditions:
        if condition.get('type') in pattern_types:
            # For these types, pattern field is always a reference to regex_patterns
            pattern_name = condition.get('pattern')
            if pattern_name and pattern_name in patterns:
                condition['pattern'] = patterns[pattern_name]
    return conditions


def bundle_markdown(folder_name):
    """Bundle markdown files with frontmatter"""
    data = []
    folder_path = Path(folder_name)
    if folder_path.exists():
        # Sort files to ensure consistent ordering
        for md_file in sorted(folder_path.glob("*.md")):
            try:
                with open(md_file, encoding='utf-8') as f:
                    content = f.read()
                    meta, content = parse_frontmatter(content)
                    # Ensure required fields exist
                    if 'title' not in meta:
                        meta['title'] = md_file.stem.replace('-', ' ').title()
                    if 'author' not in meta:
                        meta['author'] = 'Unknown'
                    item = {
                        "_id":
                        md_file.stem,
                        "content":
                        content,
                        "last_modified":
                        datetime.fromtimestamp(md_file.stat().st_mtime,
                                               tz=timezone.utc).isoformat(),
                        **meta
                    }
                    data.append(item)
            except Exception as e:
                print(f"Error processing {md_file}: {e}")
    return data


def bundle_folder(folder_name, regex_patterns=None):
    """Bundle files based on type"""
    markdown_folders = ["wiki", "dev_logs"]

    if folder_name in markdown_folders:
        return bundle_markdown(folder_name)

    data = []
    folder_path = Path(folder_name)
    if folder_path.exists():
        # Sort files to ensure consistent ordering
        for yml_file in sorted(folder_path.glob("*.yml")):
            try:
                with open(yml_file, encoding='utf-8') as f:
                    item = yaml.safe_load(f)
                    item["_id"] = yml_file.stem

                    # If this is a custom format, resolve its patterns
                    if folder_name == "custom_formats" and regex_patterns:
                        if "conditions" in item:
                            item[
                                "conditions"] = resolve_patterns_in_conditions(
                                    item["conditions"], regex_patterns)

                    data.append(item)
            except Exception as e:
                print(f"Error processing {yml_file}: {e}")
    return data


def main():
    # Create bundles directory
    Path("bundles").mkdir(exist_ok=True)

    # Load regex patterns first
    print("Loading regex patterns...")
    regex_patterns = load_regex_patterns()

    # Define folders to bundle
    folders = [
        "custom_formats", "profiles", "regex_patterns", "group_tiers",
        "dev_logs", "wiki"
    ]

    # Bundle each folder
    for folder in folders:
        print(f"Processing {folder}...")
        data = bundle_folder(folder,
                             regex_patterns=regex_patterns
                             if folder == "custom_formats" else None)
        bundle_path = f"bundles/{folder}.json"
        with open(bundle_path, "w", encoding='utf-8') as f:
            json.dump(data, f, indent=2, cls=DateTimeEncoder)
        print(f"Created {bundle_path} with {len(data)} items")

    # Create version file
    version = {
        "updated_at": datetime.now(timezone.utc).isoformat(),
        "folders": folders
    }
    with open("bundles/version.json", "w", encoding='utf-8') as f:
        json.dump(version, f, indent=2, cls=DateTimeEncoder)

    print("Bundle creation complete!")


if __name__ == "__main__":
    main()
