# St-sha's Profilarr HTB Customizations

This is my private fork of the [Dictionarry-Hub Profilarr HTB Database](https://github.com/Dictionarry-Hub/database) with personal customizations for my media setup.

## 🎯 Customization Philosophy

- **Physical Media Priority**: UHD Bluray and Remux formats are strongly preferred
- **Quality Over Size**: Transparent encodes and lossless audio prioritized
- **IMAX Enhanced**: Special scoring for IMAX Enhanced releases (optional profile variant)
- **Theatrical Preference**: Special Edition penalty in theatrical variant (optional profile variant)
- **Streaming Service Optimization**: Enhanced scoring for premium services (MA, ATVP, DSNP)

## 📁 Available Profiles

### 2160p Quality

Main 4K profile prioritizing physical media with transparent encode fallbacks.

**Use when**: You want the best 4K quality with UHD Bluray priority and high-quality encode alternatives.

### 2160p Balanced

Targets consistent 2160p WEB-DLs with lossy audio for smaller file sizes.

**Use when**: You prefer 4K content but want smaller files and don't mind lossy audio.

### 2160p Remux

Base remux profile with lossless audio and neutral Special Edition handling.

**Use when**: You want only untouched 4K sources and want to leave the Special Edition vs Theatrical choice to The HTB's discretion.

### 2160p Remux (Prefer Theatrical) - Optional Variant

Same as base remux but actively penalizes Special Editions and boosts IMAX Enhanced.

**Use when**: You specifically prefer theatrical releases over Director's Cuts, Extended Editions, etc.

### 2160p Remux Only - Optional Variant

Restricts downloads to only remux qualities (no encodes allowed).

**Use when**: Storage isn't a concern and you want guaranteed lossless sources only.

### 1080p Quality

Targets transparent x264 1080p encodes with physical media priority.

**Use when**: 4K isn't needed/wanted and you want the best 1080p quality available.

### 720p Quality

Targets transparent x264 720p encodes for smaller files or limited bandwidth.

**Use when**: You need smaller files or have bandwidth constraints but still want good quality.

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

> Private repository for personal use - based on Dictionarry-Hub's excellent work

---

## 🔧 Technical Details (Developer Reference)

### Actual Customizations vs Upstream

This section documents the specific changes made from the upstream Dictionarry-Hub database for future merge reference.

#### 2160p Quality Profile Changes

- **UHD Bluray score**: 280000 (upstream: 240000) - **+40000 boost**
- **UHD Bluray (Missing) score**: 280000 (upstream: 240000) - **+40000 boost**
- **UHD Bluray position**: Moved to front of custom_formats list (upstream: middle)
- **2160p Bluray**: 250000 (upstream: not present) - **Added format**
- **IMAX Enhanced**: 40000 (upstream: not present) - **Added IMAX boost**
- **MA score**: 6000 (upstream: 4000) - **+2000 boost**
- **minCustomFormatScore**: 0 (upstream: 20000) - **Removed minimum**

#### 2160p Remux Profile Changes

- **minCustomFormatScore**: 0 (upstream: 20000) - **Removed minimum**
- **IMAX Enhanced**: 40000 (upstream: not present) - **Added IMAX boost**

#### 2160p Remux (Prefer Theatrical) Changes

- **Special Edition score**: -40000 (base: neutral) - **Heavy penalty**
- **IMAX Enhanced score**: 40000 (inherited from base) - **Same as base**
- **Description**: Added theatrical preference explanation

#### 2160p Remux Only Changes

- **Qualities**: Restricted to remux-only (3, 8) vs full quality list
- **Description**: Added remux-only explanation

#### Other Profile Changes

**1080p Quality**: Check against upstream for actual differences
**2160p Balanced**: Check against upstream for actual differences  
**720p Quality**: Check against upstream for actual differences

### Custom Format Modifications

To be documented after upstream comparison

### Merge Strategy Notes

- Always preserve UHD Bluray prioritization (position + score boost)
- Maintain minCustomFormatScore = 0 across profiles
- Keep variant-specific customizations (Special Edition penalties, quality restrictions)
- Verify MA scoring boost in quality profiles