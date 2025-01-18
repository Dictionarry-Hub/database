# Dictionary Database Repository

This repository hosts Dictionary's database containing:

- Regex Patterns
- Custom Formats
- Quality Profiles

The database serves two main purposes:

1. Powers our website and wiki documentation
2. Provides import files for the Profilarr application

## Branches

### Stable

Contains thoroughly tested and verified database entries ready for production use. All entries have gone through our quality assurance process.

### Dev

Contains the latest updates and additions that are pending formal verification. May include experimental patterns and profiles that require further testing.

## Scripts

The repository includes utility scripts to help maintain and generate database entries.

### Tier Creator

A Python script that generates Custom Formats and Regex Patterns from tier data files.

**Location**: `/scripts/tierCreator.py`

**Usage**:

```bash
python tierCreator.py <json_file> --resolution <resolution> --type <type> [--dry-run]
```

**Arguments**:

- `json_file`: Path to a JSON file in `/tiers` containing release group tier data
- `--resolution`: One of: SD, 720p, 1080p, 2160p
- `--type`: One of: Quality, Balanced
- `--dry-run`: Optional flag to preview changes without writing files

**Example**:

```bash
python tierCreator.py ../tiers/2160p_quality.json --resolution 2160p --type Quality
```

The script will:

1. Read the tier data from the specified JSON file
2. Create regex patterns in `/regex_patterns` for any release groups that don't have one
3. Generate custom formats in `/custom_formats` for each tier
