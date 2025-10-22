# The HTB Media Server

The HTB is a private media server focused on delivering high-quality movies and TV shows to friends and family. Our automated system prioritizes archival-quality sources while making content easily accessible through simple request workflows.

## Key Features

- **Quality-First**: 95% of movies are lossless remuxes; the rest are transparent encodes
- **Automatic Upgrades**: Library constantly improves as better sources become available
- **Large Library**: 3600+ movies and 650+ TV shows (48,000+ episodes!)
- **Request System**: Easily request movies and TV shows not yet in the library through the automated request portal
- **Fast Fulfillment**: Most popular movies are automatically added within 1 day of digital release, TV shows often within hours of airing

## Getting Started

1. **Access**: You'll receive a Plex invitation via email
2. **Setup**: Accept the invitation and install Plex (or use your browser, but not recommended)
3. **Requests**: Visit [overseerr.shawserver.com](https://overseerr.shawserver.com) to request new content
4. **Quality Selection**: Choose your preferred quality profile when requesting (see profiles below)

---

## More Info for Nerds

### Quality Philosophy

The HTB treats films and shows as art forms deserving preservation at reference quality - the same standard used by professional archivists. We believe directors' color grading and sound engineers' audio work shouldn't be compromised by aggressive compression.

### Intelligent Source Selection

Much of the content on The HTB is made from the best versions of video and audio from multiple sources, creating versions that are better than what's commercially available. For example, a movie might use video from a specific region's Blu-ray disc and audio from another region to optimize both visual impact and sound quality. Or if it's only on streaming, it might use the video from highest quality streaming service but add HDR metadata and audio from a different, better source.

### IMAX

Whenever possible, The HTB serves IMAX or "IMAX Enhanced" versions because they use your entire TV screen instead of letterboxing. This occasionally means serving streaming-quality IMAX over higher-bitrate theatrical versions, but we value the immersive experience over pure technical metrics in this case.

### Automatic Quality Management

When superior sources become available, upgrades happen automatically. This means your favorite movies continuously improve in quality without any intervention from you.

Example 1: An old movie is finally released on 4K Bluray and is upgraded from 1080p to 4K HDR.

Example 2: A TV Show is available 15 minutes after airing in 1080p. 2 hours later, it is upgraded to 4K HDR.

Example 3: A streaming-only movie becomes available on a streaming service that has higher quality video. The higher quality version replaces the existing version.

Example 4: A new remaster of a movie is released. The HTB automatically upgrades to this new version.

## Quality Profiles

When requesting new content, you are asked what Quality Profile you want to use. They are explained here.

### 2160p Balanced *Default*

4K WEB-DL sources with lossy audio for optimal file size. Best for most users who won't be watching in a dedicated home theater or who don't have dedicated Plex hardware.

### 2160p Quality

4K with UHD Bluray priority and high-quality encode fallbacks. Physical media preference with imperceptible quality loss. Usually has lossless audio.

### 2160p Remux

Lossless archival quality with perfect audio and video. This is for dedicated home theater enthusiasts.

### 2160p Remux (Prefer Theatrical) - Movies Only

Same as Remux but avoids Special Editions unless no theatrical version exists.

### 2160p Remux Only - Movies Only

Restricts to remux sources exclusively - no encodes or WEB sources accepted.

### 1080p Quality - TV Only

Best 1080p available with physical media priority. For setups where 4K isn't needed. Also a good choice for shows with LOTS of episodes (think Jeopardy or reality TV shows).

### 720p Quality - TV Only

Even smaller than 1080p. Good for kids shows or old shows where quality isn't really there anyway.

## Hardware Recommendations

### Ultimate Quality

- **Dune HD Pro Vision 4K** or **Ugoos AM6B Plus**: Perfect Dolby Vision, lossless audio
- **Trade-off**: Technical setup required, Plex-only

### Great Quality + Simplicity

- **NVIDIA Shield TV Pro**: 99% perfect quality, easy setup, supports all apps
- **Best balance** for most quality-focused users

### Apple Ecosystem

- **Apple TV 4K**: Excellent video and UI, no lossless audio (Apple limitation)

### Budget

- **Chromecast with Google TV**: Decent 4K, no lossless audio, Wi-Fi only (may struggle with some high bitrate video unless you lower the quality)

### Free Options

- **Smart TV Plex app**: Variable quality, already built-in
- **Mobile devices**: Great for personal viewing and travel

## Understanding Quality

### Remux vs Encode

- **Remux**: Exact copy from disc - zero quality loss, largest files
- **Quality Encode**: Compressed but visually identical, smaller files
- **Balanced Encode**: Minimal visible loss, much smaller files

### Transcoding

When your device can't play a file directly due to hardware or bandwidth limitations, Plex converts it in real-time. This reduces quality but ensures compatibility. Use recommended hardware and strong network connections to minimize transcoding.
