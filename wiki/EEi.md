---
title: Encode Efficiency Index
slug: EEi
author: santiagosayshey
created: 2024-12-28
tags: [wiki, efficiency, encode]
blurb: A data-driven metric that measures how well release groups balance file size and quality in their encodes, helping users find releases that match their storage and quality preferences.
---

This metric is aimed at identifying and ranking release groups based on their propensity to release **encodes that meet certain compression ratios**, with particular focus on **HEVC** releases where optimal efficiency occurs in specific bitrate ranges. By ranking these groups, we effectively prioritize releases that maximize HEVC's compression capabilities while maintaining quality at minimal file sizes.

## What is a Compression Ratio?

A compression ratio is a (made up) metric that evaluates encodes against their sources. We express this as the **encoded file size as a percentage of its source size** (typically a **remux** or **WEB-DL**).

For example:

| Movie   | Source (Remux) | Encode | Compression Ratio |
| ------- | -------------- | ------ | ----------------- |
| Movie A | 40 GB          | 10 GB  | 25%               |
| Movie B | 30 GB          | 6 GB   | 20%               |
| Movie C | 50 GB          | 15 GB  | 30%               |

## Why Is This Important?

Understanding compression ratios helps balance two competing needs: **maintaining high video quality while minimizing file size**. Modern codecs like **HEVC** have a **"sweet spot"** where they deliver excellent quality with significant size savings. Finding this optimal point is crucial because:

- Storage and bandwidth are always **limited resources**
- Going beyond certain bitrates provides **diminishing quality returns**
- Different codecs have different **efficiency curves**
- Release groups need clear standards for **quality vs. size trade-offs**

## What Ratio is Best?

There's no one-size-fits-all answer when it comes to choosing the perfect compression ratio. The "best" ratio **depends entirely on your specific needs**. At 1080p:

- Space-conscious users might prefer **smaller files (5-10% of source)** with quality trade-offs
- Quality-focused users might push towards **higher quality (30-40% of source)** for transparency
- Most users find a sweet spot in the middle

However, there are technical limits - files larger than **40% for 1080p** and **60% for 2160p** provide no meaningful benefits.

## Why Set Maximum Ratios of 40% and 60%?

The compression ratio ceilings are set based on different factors for 1080p and 2160p content:

### 1080p (40% Maximum)

The 40% ceiling for 1080p exists because we can roughly measure where **HEVC stops being efficient compared to AVC**. We do this using two key video quality metrics:

- **VMAF** - analyzes how humans perceive video quality and scores it from 0-100
- **BD-Rate** - tells us how much smaller one encode is compared to another while maintaining the same quality level

Using these tools together shows us that:

- HEVC achieves **20-40% smaller files** in the mid-bitrate range (~2-10 Mbps for 1080p)
- These space savings are consistent across different quality levels
- Beyond this point, both codecs achieve **near identical quality**
- At ratios above 40%, **AVC becomes preferred** due to better tooling and quality control

### 2160p (60% Maximum)

The 60% ceiling for 2160p content is based on different considerations:

- This is approximately where **visual transparency** becomes achievable
- Higher ratios provide **diminishing returns**
- At this compression level, content achieves **VMAF scores above 95**
- **Storage efficiency** becomes critical due to larger base file sizes
- Quality improvements become **increasingly subtle** beyond this point

Read these articles to better understand how VMAF and BD-Rate tell us how efficient a codec is[^1][^2]:

## How Do We Apply This Index?

The ranking system works by calculating how close each Release Group / Streaming Service comes to achieving a user's desired compression ratio. This is done through a few key steps:

1. **Delta Calculation**: We calculate the absolute difference (delta) between a group's average compression ratio and the target ratio. For example, if a group averages 25% compression and our target is 20%, their delta would be |25 - 20| = 5 percentage points.

2. **K-means Clustering**: We use k-means clustering to automatically group release groups into tiers based on their deltas. K-means works by:
   - Starting with k random cluster centers
   - Assigning each group to its nearest center
   - Recalculating centers based on group assignments
   - Repeating until stable

# Example Rankings

## 1080p Examples

### Example 1: Users prioritizing storage efficiency (10% target)

Users might choose this very aggressive compression target when:

- Managing large libraries on limited storage
- Collecting complete series where total size is a major concern
- Primarily viewing on mobile devices or smaller screens
- Dealing with bandwidth caps or slow internet connections

| Tier | Group                   | Efficiency | Delta |
| ---- | ----------------------- | ---------- | ----- |
| 1    | iVy                     | 9.37%      | 0.63  |
| 1    | PSA                     | 7.89%      | 2.11  |
| 2    | Vyndros                 | 16.08%     | 6.08  |
| 2    | Chivaman                | 16.80%     | 6.80  |
| 2    | Amazon Prime (H.265)    | 16.15%     | 6.15  |
| 3    | Disney+ (H.265)         | 20.32%     | 10.32 |
| 3    | TAoE                    | 22.78%     | 12.78 |
| 3    | QxR                     | 23.25%     | 13.25 |
| 3    | BRiAN                   | 25.16%     | 15.16 |
| 3    | Movies Anywhere (H.265) | 26.05%     | 16.05 |
| 4    | MainFrame               | 37.63%     | 27.63 |
| 4    | NAN0                    | 37.71%     | 27.71 |

### Example 2: Users seeking balanced quality and size (25% target)

This moderate compression target appeals to users who:

- Have reasonable storage capacity but still want efficiency
- Watch on mid to large screens where quality becomes more noticeable
- Want a good balance between visual quality and practical file sizes

| Tier | Group                   | Efficiency | Delta |
| ---- | ----------------------- | ---------- | ----- |
| 1    | BRiAN                   | 25.16%     | 0.16  |
| 1    | Movies Anywhere (H.265) | 26.05%     | 1.05  |
| 1    | QxR                     | 23.25%     | 1.75  |
| 1    | TAoE                    | 22.78%     | 2.22  |
| 2    | Disney+ (H.265)         | 20.32%     | 4.68  |
| 3    | Amazon Prime (H.265)    | 16.15%     | 8.85  |
| 3    | Chivaman                | 16.80%     | 8.20  |
| 3    | Vyndros                 | 16.08%     | 8.92  |
| 3    | MainFrame               | 37.63%     | 12.63 |
| 3    | NAN0                    | 37.71%     | 12.71 |
| 4    | iVy                     | 9.37%      | 15.63 |
| 4    | PSA                     | 7.89%      | 17.11 |

## 2160p Examples

### Example 3: Extreme Space Saving (20% target)

This aggressive 2160p compression appeals to users who:

- Want to maintain a 4K library on limited storage
- Primarily view content at typical viewing distances where subtle quality differences are less noticeable
- Need to conserve bandwidth while still enjoying 4K resolution
- Have a large collection of 4K content and need to balance quality with practical storage constraints

TODO: EXAMPLES

### Example 4: Balanced 4K (40% target)

This middle-ground approach is ideal for users who:

- Have decent storage capacity but still want reasonable efficiency
- Watch on larger screens where quality differences become more apparent
- Want to maintain high quality while still keeping files manageable
- Need reliable HDR performance without excessive file sizes

TODO: EXAMPLES

### Example 5: Near Transparent Quality (60% target)

This higher bitrate target is chosen by users who:

- Have ample storage and prioritize maximum quality consciously
- Watch on high-end displays where subtle quality differences are noticeable
- Want to maintain archive-quality collections
- Focus on difficult-to-encode content where compression artifacts are more visible

TODO: EXAMPLES

These examples demonstrate how different groups excel at different target ratios, and how streaming services tend to maintain consistent compression approaches regardless of user preferences. The rankings help users quickly identify which releases will best match their specific quality and size requirements.

## Frequently Asked Questions

| Question                                                             | Answer                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   |
| -------------------------------------------------------------------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Why not just detect h265/x265 releases? Isn't that simpler?          | This is a common misconception that "HEVC = smaller = better". While it's true that HEVC/x265 _can_ achieve better compression than AVC/x264, simply detecting the codec tells us nothing about the actual efficiency of the specific encode. A poorly encoded HEVC release can be larger and lower quality than a well-tuned x264 encode. By focusing on compression ratio instead of codec detection, we measure what actually matters - how efficiently the release uses storage space while maintaining quality. This approach has several advantages:<br><br>- It rewards efficient encodes regardless of codec choice<br>- It catches inefficient HEVC encodes that waste space<br>- It avoids the complexity of parsing inconsistent HEVC labeling (h265/x265)<br>- It future-proofs the system for newer codecs like AV1, where we can simply adjust our codec ranking priorities (AV1 > HEVC > AVC) while still maintaining the core efficiency metric<br><br>Think of it this way: users don't actually care what codec is used - they care about getting high quality video at reasonable file sizes. Our metric measures this directly instead of using codec choice as an unreliable proxy. |
| But doesn't this ignore quality?                                     | The current encoding landscape places tremendous emphasis on maximizing absolute quality, often treating file size as a secondary concern. This metric aims to challenge that, or at least find a middle ground - we care about quality (hence why we use proper sources as our baseline and consider VMAF scores), but we acknowledge that most users only care about getting file sizes they actually want, and not the marginal quality improvements you get from encoding from a remux, compared to a web-dl. Rather than taking either extreme position - "quality above all" or "smaller is always better" - we focus on _efficiency_: getting the best practical quality for any given file size target. This approach **will not** satisfy quality enthusiasts, but it better serves the needs of most users.                                                                                                                                                                                                                                                                                                                                                                                    |
| What if the source is not a 1080p remux? How do you tell?            | This metric, like any data-driven system, will never achieve 100% accuracy. However, we can parse various indicators beyond just the release group or streaming service to identify non-remux sources. For example, we can identify when a non-DS4K WEB-DL or non-webrip from a reputable group is likely sourced from another lossy encode rather than a remux. We also maintain a manual tagging system to downrank certain release groups known for reencoding from non-high-quality sources. Groups like PSA and MeGusta will be ranked lower in the system, regardless of their efficiency scores, due to their known practices.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    |
| How do you prefer HEVC?                                              | We actually approach this from the opposite direction - instead of preferring HEVC, we downrank AVC. This is because HEVC naming conventions are inconsistent (groups use x265 and h265 interchangeably), making them difficult to parse reliably. In contrast, AVC is almost always labeled consistently as either x264 or h264, making it much easier to identify and downrank these releases.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         |
| Why not consider releases above 40% efficiency?                      | For standard 1080p non-HDR content, above 40% compression ratio, x264 and x265 perform nearly identically in terms of VMAF scores, eliminating HEVC's key advantages. At this point, x264 becomes the preferred choice across all metrics - the encodes are easier to produce, far more common, and typically undergo more rigorous quality control. There's simply no compelling reason to use HEVC at these higher bitrates for standard 1080p content.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                |
| What about animated content?                                         | Animated content typically has different compression characteristics than live action - it often achieves excellent quality at much lower bitrates due to its unique properties (flat colors, sharp edges, less grain). Ideally, we would use higher target ratios for live action and lower ones for animation. However, reliably detecting animated content programmatically is extremely challenging. While we can sometimes identify anime by certain keywords or release group patterns, western animation, partial animation, and CGI-heavy content create too many edge cases for reliable detection. For now, we treat all content with the same metric, acknowledging this as a known limitation of the system. Users seeking optimal results for animated content may want to target lower compression ratios than they would for live action material, perhaps via a duplicate profile at a different compression target.                                                                                                                                                                                                                                                                     |
| Why does transparency require 60% at 2160p compared to 40% at 1080p? | The higher ratio requirement for 2160p content stems from several technical factors that compound to demand more data for achieving transparency:<br><br>1. **Increased Color Depth**: Most 2160p content uses 10-bit color depth compared to 8-bit for standard 1080p content. This 25% increase in bit depth requires more data to maintain precision in color gradients and prevent banding.<br><br>2. **HDR Requirements**: 2160p content often includes HDR metadata, which demands more precise encoding of brightness levels and color information. The expanded dynamic range means we need to preserve more subtle variations in both very bright and very dark scenes.<br><br>3. **Resolution Scaling**: While 2160p has 4x the pixels of 1080p, compression efficiency doesn't scale linearly. Higher resolution reveals more subtle details and film grain, which require more data to preserve accurately.<br><br>These factors combine multiplicatively rather than additively, which is why we need a 50% increase in the compression ratio ceiling (from 40% to 60%) to achieve similar perceptual transparency.                                                                         |
| Do all 2160p releases need 60% for transparency?                     | No, the actual requirements vary significantly based on several factors:<br><br>1. **Content Type**:<br>- Animation might achieve transparency at 30-40%<br>- Digital source material (like CGI-heavy films) often requires less<br>- Film-based content with heavy grain needs the full 60%<br><br>2. **HDR Implementation**:<br>- SDR 2160p content can often achieve transparency at lower ratios<br>- Dolby Vision adds additional overhead compared to HDR10<br>- Some HDR grades are more demanding than others<br><br>3. **Source Quality**:<br>- Digital intermediate resolution (2K vs 4K)<br>- Film scan quality and grain structure<br>- Original master's bit depth and color space<br><br>4. **Scene Complexity**:<br>- High motion scenes need more data<br>- Complex textures and patterns require higher bitrates<br>- Dark scenes with subtle gradients are particularly demanding                                                                                                                                                                                                                                                                                                      |

[^1]: Shen, Y. (2020). "Bjontegaard Delta Rate Metric". Medium Innovation Labs Blog. https://medium.com/innovation-labs-blog/bjontegaard-delta-rate-metric-c8c82c1bc42c
[^2]: Ling, N.; Antier, M.; Liu, Y.; Yang, X.; Li, Z. (2024). "Video Quality Assessment: From FR to NR". Electronics, 13(5), 953. https://www.mdpi.com/2079-9292/13/5/953
