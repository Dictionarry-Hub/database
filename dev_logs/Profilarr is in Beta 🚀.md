---
title: Profilarr is in Beta 🚀
slug: profilarr_is_in_beta
author: santiagosayshey
created: 2024-1-4
tags:
  - devlog
  - profilarr
  - database
  - housekeeping
---

hey @everyone, long awaited dev log :)

## What's New? 👈

Many people are already aware, but I thought I should formally announce here on discord that **Profilarr is out in beta!** I've been working on it since around July last year and put in a massive effort over the Christmas break to get it working. Even though it's not nearly as stable as I would like it to be, it implements the core architecture I first talked about [here](https://dictionarry.dev/devlog/architecture_overhaul). There is still so (x10) much to be done in terms of bugs & polish & new features, but I'm happy sharing it as is. Hopefully you can all find some benefit in using it too :) 

You can read our setup guide [here](https://dictionarry.dev/wiki/profilarr-setup). It's available as a community app on Unraid, and as a Docker image for both ARM (Apple Silicon, Raspberry Pi) and x86.
### Database 💾

Along with Profilarr, the Dictionarry database has also got an overhaul. We introduced the new encode efficiency index, 2160p Quality and Balanced profiles as well as other small improvements like editions, repacks and freeleech. Here are some scattered thoughts that you might also be interested in: 
- @Seraphys has been working on a scoring refactor that introduces 720p fallback, fixes streaming service names, and groups similar releases together better. It's a huge change that I haven't been able to fully test myself, but I've merged it into a separate branch because I know people are pretty antsy to start testing themselves. Anyone is free to give it a try, you just have to switch to the `scoring-refactor` branch in Profilarr. Please direct any issues / improvements to the database's [Issue Tracker](https://github.com/Dictionarry-Hub/database).
- I'm personally not too happy with the state of the current database - poorly named files and renames/imports weren't taken into enough consideration and it's causing way too many download loops. I'm still trying to figure out exactly how I want to tackle these problems but I just want people to know that it is on my mind and it will be improved in future. 

### Tweaks 🔧

I talked about tweaks in detail [here](https://dictionarry.dev/devlog/profile_tweaks) and had actually implemented some of them into Profilarr, but decided to remove them at the last minute. On paper, it's an interesting system. In practice, it's confusing and really hard to program for. It's meant to be a database agnostic feature, but was hardcoded into Profilarr's profile system. I'm going to keep this feature on the roadmap as a maybe for now, but I'm going to have to completely rethink how to implement it from the ground up. 

## What's Next? 👉

Here's a (non comprehensive) list of what you can expect me to work on now that Profilarr is in beta. 

### Profilarr

- Media Management Sync - Databases will be able to implement their own media management settings (quality sliders, rename templates, delay profiles, etc) and use profilarr to sync them
- Multi Database Support - Refactoring the database to use a dependency system that allows databases to act as layers and depend on layers above them. This lets profile databases exist independently of format databases and that independently of regex databases. This way, you'll be able to connect to multiple at once and build off them as you please (or just link a complete one). 
- Everything on the issue tracker: https://github.com/Dictionarry-Hub/profilarr/issues

### Database

- Efficiency Profiles - 1080p Efficient (10%), 1080p Efficient (22.5%) and 2160p Efficient will use the [Encode Efficiency Index](https://dictionarry.dev/wiki/EEi) to prioritise HEVC releases. 
- Anime Support - Likely just quality profiles, but I also want to explore alternative options that better support dynamic needs. We likely want to make release group tiers, but also figure out a way to prioritise releases from newer & better sources. I'm not personally into that much anime, so I'm going to need as much input as I can get from you guys ~ please start those conversations if you want something to be considered (some have already asked, I'll get back to you when I can!)
- Better Streaming Service Grab Logic - This is already partially improved in Seraphys' refactor, but I would also like to add support for more streaming services and revise the interaction between release groups and sources. 

## Housekeeping 🧹

We've had an influx of new members over the past couple weeks, so I'd like to welcome you all to our discord 👋 Come say hey in #general if you haven't already. 

### Moderation, Wiki, Support 🤝

- I'd like to introduce @Seraphys as our first moderator and designated detail devotee 🤣 Big claps all around. 
- The rules, faq, links (among others) are very out of date and will be getting a refresh soon, stay tuned for those updates. 
- I will likely be closing the support post channels soon and replacing them with a single, simpler text channel and removing the bot integration. For any basic support, please message us over there, but for any major issues please redirect your queries to our issue trackers on GitHub from now on. [here](https://github.com/Dictionarry-Hub/profilarr/issues) and [here](https://github.com/Dictionarry-Hub/database)

### Donations 💸

If you've donated and would like a special 'Donor' role badge here on discord, please shoot me a PM. 

### Taking a Break ⏸️

I want to let everyone know that I'll be taking a break for a little while ~ I spent the majority of the past 4-5 months working on Profilarr and I'm quite burnt out. I'm trying very hard to balance full time study with development, but they unfortunately just don't mesh the way I hoped they would. I can't not work at 100% for either, so something had to give and for the past month or so, that's been my sleep and sanity. I unfortunately can't delay my semester (as much as I want to), so I'm going to have to dial down the time I spend on Dictionarry/Profilarr. I think I'm going to do a proper break (no dev at all) for a couple weeks at least ~ until my easter break, then I'll slowly pick up speed again. Couple of specific points I want to mention here:
- I'm going to stop giving ETAs for things. They always take longer than I expect them to, which puts pressure on me and probably disappoints you guys when something inevitably doesn't happen on time. The defacto answer to any ETA questions from now on will be "when it's ready". 
- I've been pretty scatterbrained lately, so if someone is waiting on a message from me  just know that I haven't forgotten about you and will get back when I have the time. If it's been a while, shoot me a PM or something as a reminder ~ I'll still be active on discord during my break. 

### Thank You 🙏

This project has grown tremendously in scope in the last year and that's not possible without a community, so big thanks from me to all of you. I'm still figuring all of this out as I go along so it's kind of unbelievable how many people are using a tool that once only existed in my head. 

Cheers, everyone. 

