---
title: home
slug: home
author: santiagosayshey
created: 2025-01-21
tags: [home, wiki]
---

# 👋 Hey!

Welcome to Dictionarry! This project aims to wiki-fy and **simplify media automation** in Radarr / Sonarr through extensive, data driven documentation, custom formats and quality profiles.

## 💡 Motivation

Navigating the world of media automation and coming across quality terms like "Remux", or "HEVC" or "Dolby Vision" can be quite daunting when all you want to do is setup a media server to watch some content. It often **feels like you need a masters in audio / video just to grab the latest blockbuster.** Dictionarry aims not to explain these concepts in detail, but **abstract them into more approachable ideas** that don't require extensive knowledge or experience.

Dictionarry leverages two key features of Radarr and Sonarr to simplify media automation:

1. Custom Formats - Think of these as smart filters that scan release titles for specific patterns. They help **identify important characteristics** of your media, such as:

   - Video quality (4K, HDR, Dolby Vision)
   - Audio formats (Atmos, DTS, TrueHD)
   - Source types (Remux, Web-DL, Blu-ray)
   - Potential issues (upscaled content, poor encodes)

2. Quality Profiles - These act like a scoring system that **ranks releases** based on their Custom Format matches. You can:
   - Prioritize what matters most to you
   - Automatically upgrade to better versions
   - Avoid problematic releases

Think of Dictionarry as your personal car-buying expert: Instead of researching every technical specification and test-driving dozens of vehicles, you get access to a curated showroom of pre-vetted options that match what you're looking for. Whether you want:

- 2160p Remux - **Maximum Quality** 4K HDR remuxes with lossless audio and Dolby Vision
- 2160p Quality - **Transparent 4K** HDR encodes selected using the Encode Efficiency Index
- 1080p Quality - **Transparent 1080p** encodes optimized using the Golden Popcorn Performance Index
- 1080p Efficient - **Efficient x265 1080p** Encodes optimized to save space using the Encode Efficiency Index

![Profile Preview](https://i.imgur.com/nZQzN9I.png)

Dictionarry's database of tested profiles and formats handles the technical decisions for you.

## ⚙️ Profilarr

The database by itself does nothing. Custom Formats and Quality Profiles **need to be imported** and configured in your individual arr installations. Rather than leaving you to manually create everything yourself based on our guides, we've created **Profilarr** to automate this process.

Profilarr is a **configuration management tool** for Radarr and Sonarr that can interface with **ANY remote configuration database** (not just Dictionarry's!). It automatically:

- **Pulls** new updates from your chosen database
- **Compiles** the database format into specific arr formats
- **Imports** them to your arr installations
- Manages version control of your configurations

Built on top of git, Profilarr treats your configurations like code, allowing you to:

- Track changes over time
- Maintain your own customizations while still receiving database updates
- Resolve conflicts between local / remote changes when they arise

The architecture was specifically built like this to **put user choice first**. We believe that:

- **Your media setup should reflect your needs, not our opinions**
- Updates should enhance your configuration, not override it
- Different users have different requirements (storage constraints, hardware capabilities, quality preferences)
- The ability to customize should never be sacrificed for convenience

Profilarr empowers you to use Dictionarry's database (or anyone elses!) as a foundation while maintaining the freedom to adapt it to your specific needs.

## 🔨 Development Notice

Profilarr 1.0.0 is out now in open beta! https://dictionarry.dev/wiki/profilarr-setup
