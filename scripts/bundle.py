import yaml
import json
from pathlib import Path
from datetime import datetime, timezone


def bundle_folder(folder_name):
    """Bundle all YML files from a folder into a list"""
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
    "custom_formats", "profiles", "regex_patterns", "group_tiers", "dev_logs"
]

# Bundle each folder
for folder in folders:
    data = bundle_folder(folder)
    bundle_path = f"bundles/{folder}.json"
    with open(bundle_path, "w") as f:
        json.dump(data, f, indent=2)

# Create version file
version = {
    "updated_at": datetime.now(timezone.utc).isoformat(),
    "folders": folders
}
with open("bundles/version.json", "w") as f:
    json.dump(version, f, indent=2)
