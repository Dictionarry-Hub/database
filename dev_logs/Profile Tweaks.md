---
title: Profile Tweaks
slug: profile_tweaks
author: santiagosayshey
created: 2024-12-3
tags: [devlog, architecture, user_choice]
---

Hey @everyone, I've been hard at work on the next Profilarr version over the past few weeks and have new stuff to show off!

The profiles we make are meant to be (really good) starting points, not a strict standard on what you _should_ be grabbing. Up until now, profiles existed as singular entities that don't respect custom changes. Merge conflict resolution was a big step in the right direction for this (read more in the last dev log), but it's a bit more hands on, and not something I expect most people to engage with.

Enter 'Profile Tweaks'. These are simple check boxes you can enable / disable and are unique to YOUR profiles. They will ALWAYS be respected, regardless of what updates we make to the base profile. For now, these tweaks include:

- Prefer Freeleech
- Allow Prereleases (CAMS, Screeners, etc)
- Language Strictness
- Allow Lossless audio
- Allow Dolby Vision without Fallback
- Allow bleeding edge codecs (AV-1, H266)

(Some are only available for specific profiles, eg lossless audio for 1080p Encode profiles).

If anyone has any tweak ideas (even super specific ones), please let me know and I'll work on getting it integrated! Here's an image of the Tweaks Tab:

## Profilarr Progress

- Progress is steady, I've been working on it every day since my semester ended. It's taken way, way longer than I've expected (sorry!) but I'm happy with how it's starting to look.
- Git integration is complete and working, but needs lots of testing.
- Data modules (custom formats, regex patterns, quality profiles) are complete and fully implement the existing logic from Radarr / Sonarr.
- I am currently in the progress of porting existing data to the new database (https://github.com/Dictionarry-Hub/database/tree/stable) in the new profilarr standard format. This is going to take a while, as I have to write descriptions, add tags, test cases, etc.
- Finally, I am starting to work on the compilation engine (https://discord.com/channels/1202375791556431892/1246504849265266738/1272756617041154049) and the import module. Once these things are complete, and I'm confident we won't run into massive bugs, I'll release a beta docker image. ETA? I really don't know, but I'm working as hard as I can.
