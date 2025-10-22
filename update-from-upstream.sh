#!/bin/bash
# update-from-upstream.sh
# Simple script to update from upstream while preserving customizations

echo "🔄 Updating from upstream Dictionarry-Hub database..."

# Fetch latest changes
git fetch upstream

# Show what's new
echo "📋 New commits from upstream:"
git log --oneline HEAD..upstream/stable

# Pull and merge
echo "🔀 Merging upstream changes..."
git pull upstream stable

# Check for conflicts
if [ $? -ne 0 ]; then
    echo "⚠️  Conflicts detected!"
    echo "👀 Check files with CUSTOM: comments to preserve your changes"
    echo "📝 Resolve conflicts and run: git commit"
    exit 1
fi

# Push to your repo
echo "⬆️  Pushing to your repository..."
git push origin stable

echo "✅ Update complete!"
echo "🔍 Review changes and test your profiles"