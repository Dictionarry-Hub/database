---
title: Vision (Almost) Realised
slug: vision_almost_realised
author: santiagosayshey
created: 2025-12-24
tags: [devlog, architecture, gppi]
---

hey @everyone, small log for today!

## Vision (almost) Realized

```bash
$ python profile_compile.py 'profiles/1080p Encode.yml' '1080p Encode (sonarr - master).json' -s
Converted profile saved to: 1080p Encode (sonarr - master).json

$ python importarr.py
Importing Quality Profiles to sonarr : Master
Updating '1080p Encode' quality profile : SUCCESS
```

These two commands are the culmination of the architecture overhaul I talked about in August: https://discord.com/channels/1202375791556431892/1246504849265266738/1272756617041154049. The Profilarr standard format _**works**_. A typical profile is now about 300 lines (down from 1000 each for radarr / sonarr), is able to be compiled from PSF to Radarr OR Sonarr (and back!). Regex patterns allow format resolution, so no more editing the same thing 5, 10... 20 times.

I'm currently in the process of hooking up the database to the new website, and that's looking pretty cool too. I cannot even explain how good it feels to be able to edit a profile once inside Profilarr, push those changes directly from Profilarr, have those changes reflected as incoming changes for end users, and as updated information on the website all in one fell swoop.

It's taken a huge effort the past 4 months, and I still have to actually connect it to the backend, but I'm fairly happy with how it's turned out. The changes won't be all that evident right away for you guys, but it's going to save me (and anyone who wants to contribute) hours upon hours of development time for everything that I have planned.

## Golden Popcorn Performance Index Changes

The current GPPi algorithm is strong, but fundamentally flawed. It does not take into consideration release groups who have no data. There are terrific new groups (ZoroSenpai for example) who should be tier ~2 at least, but aren't simply because they have no data. How do we fix this?

### Popularity

For every encode at a specific resolution for a movie / tv show that is currently _popular_, a release group receives +1 score to their GPPi. At the end of every month, the score is reset, and the previous score is normalized (tbd on how) and added to their permanent GPPi score (up to a certain point and probably never past tier ~3)

This process will be completely automatic and will hopefully solve the problem of new good release groups.

### Grouping

The previous 'tiers' for release groups was just natural intuitive grouping. Humans are surprisingly very, very good at pattern recognition so it was never really a problem. However, it was manual, and we dont like manual around here. Enter 'K Means Clustering'. Essentially it's just a fancy algorithm that finds natural break points between groups of numbers. Using K means, I've dropped the number of 1080p Tiers from 7 down to 5 which in turn has increased immutability. Small changes, but will be important in the long run.

## Thank You!

That's all for today, I hope everyone's doing alright and enjoying the holidays :grinning:
