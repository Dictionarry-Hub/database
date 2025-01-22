---
title: Architecture Overhaul
slug: architecture_overhaul
author: santiagosayshey
created: 2024-8-13
tags: [devlog, architecture]
---

Hey @everyone, here's a small update on what I've been working on lately:

As the project has grown bigger, it's gotten quite difficult to keep track of and manage a billion different custom formats, quality profiles, etc. To help improve development productivity, I've planned a complete overhaul of Dictionarry's architecture. This starts with separating things into modules - namely a separate database which powers the website and the profilarr tool.

Next up is standardizing the actual entries inside the database. The biggest issue in development right now is making / editing / updating the same thing multiple times. If you have the same regex pattern for multiple CFs, it needs to be updated for each one of them. Quality profiles across different apps have miniscule differences in syntax (eg. web-dl in radarr vs web in sonarr), which means we need multiple files with tiny differences.

Working in this system is extremely error prone and time consuming. To fix this, I'm creating a standard unique to dictionarry based on a **single definition format**, i.e. Regex patterns, Custom Formats and Quality Profiles are defined once, and repeated in other places using foreign keys. I don't know exactly _how_ this will look, but the plan is simplicity above all. Outside of improving productivity, I hope this standard helps encourage people who feel less confident with custom formats / quality profiles make more intuitive changes to their own setups.

Now, the problem with this new and improved standard is - the arrs won't be able to read the files anymore. Solution: A compiler! This is where the fun begins; we take our simple, easy-to-develop-for files and push them through the compiler. Out pops the required syntax, with those weird naming rules (web-dl for radarr, web for sonarr), without the developer needing to ever worry about it!

Here's a canvas page I made in Obsidian which visualizes this architecture:

![Archiecture Diagram](https://i.imgur.com/HcXFNHU.png)
