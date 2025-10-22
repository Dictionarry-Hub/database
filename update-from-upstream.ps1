# update-from-upstream.ps1
# PowerShell script to update from upstream while preserving customizations

Write-Host "🔄 Updating from upstream Dictionarry-Hub database..." -ForegroundColor Cyan

# Fetch latest changes
git fetch upstream

# Show what's new
Write-Host "📋 New commits from upstream:" -ForegroundColor Yellow
git log --oneline HEAD..upstream/stable

# Pull and merge
Write-Host "🔀 Merging upstream changes..." -ForegroundColor Green
git pull upstream stable

# Check for conflicts
if ($LASTEXITCODE -ne 0) {
    Write-Host "⚠️  Conflicts detected!" -ForegroundColor Red
    Write-Host "👀 Check files with CUSTOM: comments to preserve your changes" -ForegroundColor Yellow
    Write-Host "📝 Resolve conflicts and run: git commit" -ForegroundColor Yellow
    exit 1
}

# Push to your repo
Write-Host "⬆️  Pushing to your repository..." -ForegroundColor Blue
git push origin stable

Write-Host "✅ Update complete!" -ForegroundColor Green
Write-Host "🔍 Review changes and test your profiles" -ForegroundColor Cyan