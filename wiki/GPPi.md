---
title: Golden Popcorn Performance Index
slug: GPPi
author: santiagosayshey
created: 2023-04-20
tags: [wiki, quality, encode]
---

## What are Golden Popcorns?

**_Golden Popcorns_** are _very high quality encodes_, marked as such by one of the best private torrent trackers. These releases are manually reviewed by a dedicated, experienced team of _Golden Popcorn_ checkers. Golden Popcorns are the simplest way to quantify a subjective _best_ encode.

## The Decision Engine

The Golden Popcorn Performance Index, or GPPI, is a calculated metric, pivotal to the [Transparent](../Profiles/1080p%20Transparent.md) profile's decision-making process. It's engineered to rank release groups based on their propensity to release a Golden Popcorn encode at any given resolution $r$.

## Formula

On first glance, it seems the most obvious way to determine which release groups are most likely to release golden popcorns is to find their Golden Popcorn Ratio, i.e. The number of Golden Popcorns divided by the total number of encodes for any given resolution _r_.

However, If we were to take Golden Popcorn ratio at face value, we might incorrectly prioritise a release group who has a high GP ratio, but a low number of encodes. On the opposite spectrum, if we take the raw number of Golden Popcorns for any group, we might incorrectly prioritise a group with a low GP ratio.

So instead, we multiply the number of Golden Popcorns at resolution $r$ for a given release group, by a factor of said release group's Golden Popcorn Ratio. This essentially limits both metrics as a factor of each other.

For any given resolution _r_, the GPPI is defined as:

$$
\begin{aligned}
\text{GPPI}_r &= GPE_r \cdot \left( \frac{GPE_r}{E_r} \right) \\
              &= \frac{GPE_r^2}{E_r}
\end{aligned}
$$

Where:

- $\text{GPPI}_r$ is the Golden Popcorn Performance Index at resolution $r$
- $GPE_r$ is the number of Golden Popcorns at resolution $r$
- $E_r$ is the total number of encodes at resolution $r$
