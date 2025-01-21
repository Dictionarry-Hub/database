---
title: Profile Tweaks
slug: profile_tweaks
author: santiagosayshey
created: 2024-12-3
tags: [devlog, architecture, user_choice]
---

Hey @everyone, here's a small (but very important) post on the new update system!

## Current Profilarr

Currently, there is 0 support for updates in Profilarr. This is obviously not ideal; it's a nightmare to keep up to date with changes and almost certainly breaks any custom changes you make.

## Profilarr v1

Users will be able to view incoming and outgoing changes, as well as resolve any conflicts between the two. To achieve this, a user friendly GUI has been built on top of Git's merge functionality and allows fine control over what should be merged / ignored. More specifically, this functionality allows us to make custom changes and choose to retain them once a new update comes around.

- As an example, let's say you've made the Dolby Vision custom formats negative because your TV doesn't support it. A new update has come out which shuffles around HDR scores, and this leads to a merge conflict between the two custom format scores.
- In the settings page, you can choose to accept the incoming change or retain your local changes. Profilarr will 'remember' your choice and stop prompting you to update this custom format until a new update comes out, in which case, the situation repeats. Keep local or accept incoming.

### Settings Page

Profilarr now includes a dedicated page for 'Sync Settings'. It allows you to link / unlink a database repository, view and change branches as well as deal with incoming / outgoing changes and their conflicts. This page has been planned for developers too; you can add an authenticated github dev token to your environment and you have the ability to make changes directly to Profilarr's database (not to stable, obviously).

# Beta Release

- Still not quite ready yet, but I'm working hard to get it out! Stay tuned :hearts:
