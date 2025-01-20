import yaml
import json
from pathlib import Path
from datetime import datetime, timezone, date


# Add this class at the top with the imports
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


def bundle_markdown(folder_name):
    """Bundle markdown files with frontmatter"""
    data = []
    folder_path = Path(folder_name)

    if folder_path.exists():
        for md_file in folder_path.glob("*.md"):
            with open(md_file) as f:
                content = f.read()

            meta, content = parse_frontmatter(content)
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
    return data


def bundle_folder(folder_name):
    """Bundle files based on type"""
    if folder_name == "wiki":
        return bundle_markdown(folder_name)
    else:
        data = []
        folder_path = Path(folder_name)
        if folder_path.exists():
            for yml_file in folder_path.glob("*.yml"):
                with open(yml_file) as f:
                    item = yaml.safe_load(f)
                    item["_id"] = yml_file.stem
                    data.append(item)
        return data


# Create bundles directory
Path("bundles").mkdir(exist_ok=True)

# Define folders to bundle
folders = [
    "custom_formats", "profiles", "regex_patterns", "group_tiers", "dev_logs",
    "wiki"
]

# Bundle each folder
for folder in folders:
    data = bundle_folder(folder)
    bundle_path = f"bundles/{folder}.json"
    # Here's where we use the encoder
    with open(bundle_path, "w") as f:
        json.dump(data, f, indent=2, cls=DateTimeEncoder)

# Create version file
version = {
    "updated_at": datetime.now(timezone.utc).isoformat(),
    "folders": folders
}
with open("bundles/version.json", "w") as f:
    json.dump(version, f, indent=2, cls=DateTimeEncoder)
