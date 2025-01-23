---
title: Profile Selector v3
slug: profile_selector_v3
author: santiagosayshey
created: 2024-6-2
tags: [devlog, profile_selector, website]
---

hey @everyone , thought I'd make a channel to share some development logs.

I've been feeling pretty inspired code wise the past few days, so I've actually made some progress despite saying I would take a break...

Anyways, after designing Profile Selector v3 in Figma for the past couple months, I started work on actually implementing it. Let me tell you that drawing shapes is much, much easier than coding them. After a couple days of regretting not paying attention in high school trigonometry, I have the basic functionality in place! We have three data points which represent each of the requirements - quality, efficiency, compatibility. The user can select points on each of the axes, and each combination is used to recommend a profile. It's not hooked up to the database yet, so random strings are being used as a placeholder.

The good thing about this design is that it's really modular. Once I finish the 'beginner' version of it, I'll be able to add an advanced mode which can be used to select any kind of requirement. Resolution, HDR, Audio, etc.

Here's how it looks right now (obvious disclaimer that final version will look much much better):

![Selector Proof of Concept](https://streamable.com/2uprnl)
