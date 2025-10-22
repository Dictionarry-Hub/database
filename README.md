# Dictionarry Database for The HTB

## Key Changes from Upstream

### Quality & Source Preferences
- **Physical Media Prioritized**: Favor UHD Bluray sources over WEB in all cases
- **IMAX Prioritized**: Prioritize full-screen IMAX releases over letterboxed theatrical versions, even if it means grabbing WEB instead of REMUX
- **MA Prioritized**: Prefer Movies Anywhere releases more highly compared to other WEB sources

### New Profiles
- **ADDED: 2160p Remux (Prefer Theatrical)**: Avoids special editions
- **ADDED: 2160p Remux Only**: Allows only REMUX with no fallback to encodes, WEB, etc. Allows for 1080p if 2160p is not available.
- **REMOVED: Most lower-quality granular profiles**: When quality is the goal, there is no need to have over a dozen granular profiles

### Technical Improvements
- **Custom Format Improvements**: Enhanced format detection and conflict prevention between overlapping formats
- **Documentation**: Clear CUSTOM comments marking all modifications from upstream for transparency

## 🔄 Sync Status

This fork stays synchronized with upstream while maintaining HTB-specific customizations marked with `CUSTOM:` comments. Currently this is done manually with AI assistance.
