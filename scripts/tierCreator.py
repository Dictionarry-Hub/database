#!/usr/bin/env python3

import argparse
import json
import os
import sys
from pathlib import Path
import yaml


def load_template(template_path):
    """Load a YAML template file."""
    try:
        with open(template_path, 'r') as f:
            return yaml.safe_load(f)
    except FileNotFoundError:
        print(f"Error: Template file not found: {template_path}")
        sys.exit(1)


def create_regex_pattern(group_name,
                         template_dir,
                         output_dir,
                         dry_run=False,
                         show_preview=False):
    """Create a regex pattern file for a release group if it doesn't exist."""
    output_path = output_dir / f"{group_name}.yml"

    # Skip if pattern already exists
    if output_path.exists():
        print(f"Skipping existing regex pattern: {output_path}")
        return

    print(
        f"{'Would create' if dry_run else 'Creating'} regex pattern: {output_path}"
    )

    # Load and fill template
    template = load_template(template_dir / "releaseGroup.yml")
    template['name'] = group_name
    template['pattern'] = f"(?<=^|[\\s.-]){group_name}\\b"

    # Show preview in dry run mode if this is the first pattern
    if dry_run and show_preview:
        print("\nPreview of first regex pattern:")
        print("---")
        print(
            yaml.dump(template,
                      sort_keys=False,
                      default_flow_style=False,
                      indent=2))
        print("---\n")

    # Create output directory if it doesn't exist
    output_dir.mkdir(parents=True, exist_ok=True)

    # Write pattern file if not dry run
    if not dry_run:
        with open(output_path, 'w') as f:
            yaml.dump(template, f, sort_keys=False)


def create_tier_format(tier,
                       resolution,
                       type_name,
                       groups,
                       template_dir,
                       output_dir,
                       dry_run=False,
                       show_preview=False):
    """Create a custom format file for a specific tier."""
    # Get groups for this tier
    tier_groups = [group["name"] for group in groups if group["tier"] == tier]
    if not tier_groups:
        return

    # Load and fill template
    template = load_template(template_dir / "groupTier.yml")

    # Replace template variables
    template['name'] = f"{resolution} {type_name} Tier {tier}"
    template[
        'description'] = f"Matches release groups who fall under {resolution} {type_name} Tier {tier}"

    # Find and update resolution condition
    for condition in template['conditions']:
        if condition.get('resolution'):
            condition['name'] = resolution
            condition['resolution'] = resolution

    # Add release group conditions
    for group_name in tier_groups:
        release_group_condition = {
            'name': group_name,
            'negate': False,
            'pattern': group_name,
            'required': False,
            'type': 'release_group'
        }
        template['conditions'].append(release_group_condition)

    # Ensure tests is an empty list, not null
    template['tests'] = []

    # Create output directory if it doesn't exist
    output_dir.mkdir(parents=True, exist_ok=True)

    # Write custom format file
    output_path = output_dir / f"{resolution} {type_name} Tier {tier}.yml"
    existing = "Overwriting" if output_path.exists() else "Creating"
    print(
        f"{'Would ' + existing.lower() if dry_run else existing} custom format: {output_path} (includes {len(tier_groups)} groups)"
    )

    # Show preview in dry run mode if this is the first format
    if dry_run and show_preview:
        print("\nPreview of first custom format:")
        print("---")
        print(
            yaml.dump(template,
                      sort_keys=False,
                      default_flow_style=False,
                      indent=2))
        print("---\n")

    if not dry_run:
        with open(output_path, 'w') as f:
            yaml.dump(template,
                      f,
                      sort_keys=False,
                      default_flow_style=False,
                      indent=2)


def main():
    parser = argparse.ArgumentParser(
        description='Create Radarr custom formats for release group tiers')
    parser.add_argument('json_file',
                        help='Input JSON file containing tier data')
    parser.add_argument('--resolution',
                        choices=['SD', '720p', '1080p', '2160p'],
                        required=True,
                        help='Resolution for custom formats')
    parser.add_argument('--type',
                        choices=['Quality', 'Balanced'],
                        required=True,
                        help='Type of custom format')
    parser.add_argument(
        '--dry-run',
        action='store_true',
        help='Show what would be done without making any changes')

    args = parser.parse_args()

    # Setup paths
    script_dir = Path(__file__).parent
    template_dir = script_dir.parent / "templates"
    regex_dir = script_dir.parent / "regex_patterns"
    format_dir = script_dir.parent / "custom_formats"

    # Load and parse input JSON
    try:
        with open(args.json_file, 'r') as f:
            data = json.load(f)
    except FileNotFoundError:
        print(f"Error: Input JSON file not found: {args.json_file}")
        sys.exit(1)
    except json.JSONDecodeError:
        print(f"Error: Invalid JSON file: {args.json_file}")
        sys.exit(1)

    # Print summary of what we found
    print(f"\nAnalyzing input file: {args.json_file}")
    print(
        f"Found {len(data['tiered_groups'])} release groups across {len(set(group['tier'] for group in data['tiered_groups']))} tiers"
    )

    if args.dry_run:
        print("\nDRY RUN - No files will be created or modified\n")

    # Create regex patterns for all groups
    print("\nProcessing regex patterns:")
    for i, group in enumerate(data["tiered_groups"]):
        create_regex_pattern(group["name"],
                             template_dir,
                             regex_dir,
                             args.dry_run,
                             show_preview=(i == 0))

    # Create tier formats
    print("\nProcessing custom formats:")
    unique_tiers = sorted(set(group["tier"]
                              for group in data["tiered_groups"]))
    for i, tier in enumerate(unique_tiers):
        create_tier_format(tier,
                           args.resolution,
                           args.type,
                           data["tiered_groups"],
                           template_dir,
                           format_dir,
                           args.dry_run,
                           show_preview=(i == 0))

    print(
        f"\nSuccessfully {'simulated' if args.dry_run else 'created'} custom formats for {args.resolution} {args.type}"
    )


if __name__ == "__main__":
    main()
