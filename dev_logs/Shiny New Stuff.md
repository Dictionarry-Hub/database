---
title: Shiny New Stuff
slug: shiny_new_stuff
author: santiagosayshey
created: 2024-8-19
tags: [devlog, architecture]
---

hey @everyone, hope you guys are well. Here's another update!

# Motivation

I've been really struggling to work on this project for a few months now - I'll finally get some time at the end of the week but feel completely unmotivated to work on it for more than an hour. Well... after cracking the architecture problem last week and seeing all the support from you guys, I've felt especially motivated to dive back in.

# Profilarr v2 (not really v2 but it sounded cool)

Profilarr is getting some really nice upgrades. Here's an outline of the most important ones:

## It's now a full stack application.

This means we have a frontend: a site that users can visit to adjust, import, and export regexes, custom formats, and quality profiles. It's built in a way that aims to 'remaster' how it's implemented in Radarr/Sonarr. All the existing functionality is there, but with some really nice quality of life features:

- **Single definition format**: As outlined in the previous dev log, Profilarr's version of this system will use a single definition format. Notably, this allows you to set regex patterns ONCE, then add that regex as a condition inside a custom format.
- **Sorting and Filtering**: You can now sort and filter items by title, date modified, etc.
- **Exporting/Importing**: The standard format now allows _everyone_ to import/export regexes, custom formats, and quality profiles freely - no need to query APIs to do this anymore.
- **Syncing**: Instead of clogging up everyone's arrs with unused custom formats, the sync functionality now only imports _used_ items.
- **Mass selection**: You can mass select items to import/export/sync/delete.
- **Tags**: Instead of manual selection, you can set tags on specific custom formats/quality profiles that should be synced. This works similar to how Prowlarr uses tags to selectively sync indexers. Since we are also using the same database for the website, tags can also be used for little tidbits of information too. Like where a release group is an internal at!
- **Testing**: Developers can now permalink regexes to regex101. This makes it really easy to develop and test simultaneously.
- **Descriptions**: You can now explain what specific items are for. No need to look it up on the website to see what it does.

## Backend Improvements

The backend is essentially what Profilarr is right now - a tool to sync some JSON files to your arrs. However, this also has some major improvements:

- **Git integration**: You can select a remote repository to connect to and:
  - Add, commit, and push files; branch off; merge into. This isn't that useful for end users, but I cannot stress enough how much time and suffering this has saved me. Being able to revert regex/custom format/quality profiles to the last commit is my favorite thing I've ever coded.
  - **Branching**: You can have different branches for different things. Of course, this is useful for development, but it also allows you to do things like: separate setups for Radarr/Sonarr/Lidarr. Most importantly, it allows us developers to set stable, dev, and feature branches.
  - **Pulling**: You can now pull in changes from specific branches from a remote repository. You can view differences and decide if you want to pull these changes in. You can set it to be automatic and only alert on merge conflicts (you change something, but an incoming change for that item exists as well). You can choose to get the most stable branch or the latest features merged into develop.
  - **External sources**: You can set your own repo of regexes, custom formats, and quality profiles and share it with whoever you want. As I mentioned in my last dev log, I'll be working on a compiler to convert our standard Profilarr format with the existing arr format. The really cool thing about this is it works both ways. This means the git integration + compiler will allow you to use Profilarr with the trash guides. It'll probably take some tweaking, but I know it's definitely possible now.

## Containerisation

Profilarr will FINALLY be dockerised.

# Development

With these changes in place, it has massively improved and sped up development. Working in a proprietary tool now allows me the freedom to just implement a feature whenever I want to. Want to filter custom formats with the release tier tag? Boom, implemented. Want to auto-apply scores to custom formats in quality profiles based on tags? Boom, implemented.

## Machine Learning

This part is mostly speculation and rambling - nothing concrete yet. I really want to incorporate some kind of AI help into Profilarr. A button you can press to auto-generate regex or a custom format. I've read countless Reddit posts of someone unfamiliar with regex/custom formats/profiles asking for help in trying to learn. "How do I write a custom format that matches x265 releases under size x?" It's so easily solved using AI.

I want to implement this one day, I just don't have enough knowledge or experience to do it yet. The best I've come up with is something that sends a request to OpenAI's API with a prompt. The results are less than ideal. But just imagine the future where some kind of machine learning tool has access to an entire database of regexes, custom formats, and quality profiles curated by hundreds of people, and can use that knowledge to predict patterns and truly tailor stuff to suit people's needs. Who knows if it ever gets to that point, but that's my vision for Dictionarry.

Ramble over, as you can tell I've been feeling pretty motivated lately!

Anyway, here's some images of profilarr v2.

**Regex Page**:

![Regex Page](https://i.imgur.com/kMZ9qII.png)

**Custom Format Page**:

![Custom Format Page](https://i.imgur.com/mCyDxId.png)

**Status Page**:

![Status Page](https://i.imgur.com/ZleeOEF.png)

Of course, everything is still a heavy work in progress.

That's all for today!
