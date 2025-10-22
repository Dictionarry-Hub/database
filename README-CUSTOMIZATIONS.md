# St-sha's Profilarr HTB Customizations

This is my private fork of the [Dictionarry-Hub Profilarr HTB Database](https://github.com/Dictionarry-Hub/database) with personal customizations for my media setup.

## 🎯 Customization Philosophy

- **Physical Media Priority**: UHD Bluray and Remux formats are strongly preferred
- **Quality Over Size**: Transparent encodes and lossless audio prioritized
- **IMAX Enhanced**: Special scoring for IMAX Enhanced releases
- **Theatrical Preference**: Special Edition penalty in theatrical variant
- **Streaming Service Optimization**: Enhanced scoring for premium services (MA, ATVP, DSNP)

## 📁 Key Customized Profiles

### 2160p Quality
- **UHD Bluray Priority**: Score 280,000 (matches Quality Tier 5 but comes first)
- **Physical > Digital**: Clear hierarchy favoring physical media
- **Quality Tier Integration**: Incorporates upstream quality tiers while preserving priorities

### 2160p Remux Variants
- **2160p Remux**: Base remux profile with neutral Special Edition handling
- **2160p Remux (Prefer Theatrical)**: Special Edition penalty (-40,000), IMAX Enhanced boost (+40,000)
- **2160p Remux Only**: Restricts to remux qualities only

## 🔄 Update Workflow

```bash
# Pull latest from upstream
git fetch upstream
git pull upstream stable

# Resolve any conflicts while preserving customizations
# (See inline comments in profile files for guidance)

# Push to personal repo
git push origin stable
```

## 🏷️ Customization Markers

Look for `# CUSTOM:` comments in profile files to identify intentional changes that should be preserved during updates.

## 📊 Scoring Philosophy

- **280,000+**: UHD Bluray and highest quality tiers
- **250,000+**: 2160p physical media
- **200,000+**: 1080p physical media  
- **140,000+**: High-quality web sources
- **40,000+**: IMAX Enhanced (theatrical variant)
- **1,000-10,000**: Streaming services and audio/video enhancements
- **-40,000**: Special Edition penalty (theatrical variant)
- **-220,000**: x265 Bluray penalty
- **-999,999**: Banned content

## 🔧 Last Updated
- **Repository**: October 21, 2025
- **Upstream Sync**: October 21, 2025
- **Profiles Documented**: 4/4 (2160p variants)

---
*Private repository for personal use - based on Dictionarry-Hub's excellent work*