---
title: Website 2.0
slug: website2.0
author: santiagosayshey
created: 2025-01-02
tags: [devlog, website, profile_builder, eei, 2160p, quality]
---

Hey everyone, medium-ish update today.

## Website 2.0

I've wanted to transition away from the old site / mkdocs for a while now as its quite hard to maintain and keep everything up to date, so I built a new site using Next.js that uses ISR to rebuild its content using the dictionarry database. Basically this just means:

- Database gets an update -> Website sees its data is stale -> Website rebuilds itself with new data -> Santiago smiles in not needing to do anything

This all ties into the whole "write once" philosophy that I instilled with Profilarr and has made development much easier. There are still quite a few layout issues and perhaps a devlog refactor I need to fit in somewhere, but I'm happy to share it with you guys as it is.

[Website 2.0](https://dictionarry.dev/)

![website2.0](https://i.imgur.com/eORTwml.png)

The old site will go down soon, sorry if I broke anyone's workflows D:

### Profile Selector?

This idea has gone through many iterations since i started Dictionarry last year.

1. A static flowchart with not nearly enough information / choice: https://github.com/santiagosayshey/website/blob/030f3631b4f6fffdb7fa9f4696e5d12defc84a46/docs/Profiles/flowchart.png
2. The "Profile Selector" (terrible name): https://selectarr.pages.dev/
3. Frankenstein's triangle: [Discord Link](https://discord.com/channels/1202375791556431892/1246504849265266738/1246536424925171925)

Frankenstein's triangle was supposed to be what i shipped with the new website (and I actually finished it too!). It worked by calculating the area of the efficiency/quality/compatibility triangle using some formula named after some guy i forget, to guesstimate user choice based on their previous selection. It did this by normalizing the "score" of each profile on each of it's axes and finding the best fitting triangle that used the axis that was changed.

Results were pretty good but I felt that it abstracted _too much_ of what made any user choice meaningful so I decided to scrap it.

### Profile Builder!

In it's place is the "Profile Builder" (maybe also a terrible name). It still attempts to abstract audio/video down into more quantifiable groupings, but limits itself to explanations of certain things where more abstraction is detrimental. It's pretty self explanatory once you use it, but basically you choose through increasingly niche groupings -> resolution -> compression -> encode type -> codec -> HDR. At each step, a list of recommended profiles will be shown. I think this new system helps to fix the "trying to get the profile I want" issue as it starts pretty broad and gets increasingly more specific the more things you choose. It's up now, give it a playwith; let me know if its good / bad / needs changes: [Profile Buider](https://dictionarry.dev/builder)

![Profile Builder](https://i.imgur.com/ka8KSHl.png)

## Encode Efficiency Index

Here we go, meat and potatoes. This is another release group metric just like the Golden Popcorn Performance Index. Heres's the play-by-play:

- It evaluates release groups on their average compression ratio (how big their encode is compared to a source), to discern quality and/or efficiency.
- It can discern transparency by targeting ratios at which a codec begins to "saturate"
- It can discern efficiency by targeting ratios at which a codec reaches it's "efficiency apex"

This is a heavily watered down explanation of the metric, you can read about it (with examples), in very heavy detail [here](https://dictionarry.dev/wiki/EEi). Months of research and iteration has gone into this, and I really think this is Dictionarry's biggest asset so far. When AV1 profiles become a thing, this metric is ready for it.

#### No More Parsing Codecs!!!!

If you parse the efficiency of a release group directly, then you know youre getting something at a file size you want. This means we don't have to use h265 / x265 as a ridiculous proxy baseline to find content we want anymore. We can just downrank all h264 instead which is much more reliable

#### 2160p Quality (Encode) Profile + Release Group Tierlist!!!!!!!!

Using EEI, we target 4k release groups at 55% target ratio to discern transparency. No golden popcorns needed, no complex trump parsing crap. No "popular" vote. Whenever something isn't documented, we simply add that movie / tv show to the data source and groupings update automatically. It's almost like magic.

This metric has made the 2160p Quality profile possible and i dare say it's the most comprehensive one I've worked on thus far. Give the quality profile and tier lists a read here:

- [216p Quality Profile](https://dictionarry.dev/profiles/2160p-quality)
- [2160p Quality Release Group Tiers](https://dictionarry.dev/tiers/2160p/quality)

#### Thanks

- Thanks to @seraphys for helping out with the profile creation / giving constant feedback.
- Thanks to @erphise for being a tester / the catalyst for the creation of this metric. If they hadn't been testing out the HEVC profile, we never would have talked about compression ratios which never meant I got the idea for the metric in the first place.

Show them some love.

## Profilarr

Almost done, I took a break for a couple weeks to finish up the website but I'm gonna get rolling again soon. I just finalized authentication, database migrations and the pull module. The only major thing left is getting everything ready for production. This means setting up the docker image, unraid template, etc, etc. It's hard to say how long this is gonna take since I'm basically learning it all on the fly so bare with me on this. But, it's almost done and a beta test will be out soon (hopefully)
