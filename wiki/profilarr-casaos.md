---
title: Casa OS - Profilarr Installation Guide
slug: profilarr-casaos
author: lawgics
created: 2025-02-26
tags: [wiki, casaos, installation, profilarr, docker, containers]
blurb: A simple guide to install Profilarr in Casa OS as a custom app.
---

This guide will walk you through the process of installing Profilarr as a custom app in Casa OS.

## Prerequisites

- A working Casa OS installation (this guide uses v0.4.15).
- Basic knowledge of using the Casa OS interface.
- Access to [https://github.com/Dictionarry-Hub/Profilarr](https://github.com/Dictionarry-Hub/Profilarr) for install file.

## Step-by-Step Installation

1. **Add a Custom App to Casa OS:**
   - Open your web browser and navigate to your Casa OS dashboard.
   - Find and click on the "+" icon in the top right corner of the App section.
   - Select “Install a customized app”
   - Select “Import” in the top right corner of the Settings page
2. **Import Docker Compose File:**
   - Navigate to [https://github.com/Dictionarry-Hub/Profilarr](https://github.com/Dictionarry-Hub/Profilarr)
   - Scroll down to the “Installation” section
   - You will see a **Docker Compose (recommended) **code block
   - Copy the Docker Compose file code
   - Navigate back to Casa OS to the Import Docker Compose page and paste the code into the empty text box
     - Note: if you are not contributing to a database, delete the following section or Casa OS will throw an error that the file is missing:
       - `env_file:`
       - `- .env # Optional: Only needed if contributing to a database`
   - Click on “Submit” and click “OK” to the warning
3. **Profilarr App Details:**
   - You can leave most settings as default unless you have a specific reason to change them, like customizing to your network/system (Network, Port, Volumes, etc..) otherwise just change your Time Zone in Environmental Variables
   - **Name:** “Profilarr” - but you can change it if you want
   - **Icon:** (Optional) You can upload an icon for the app.
   - **Web UI:** Should be your host device IP address
   - **Network:** Should be bridge
   - **Port:** Should be 6868 TCP
   - **Volumes:** Leave this as default unless you want to change the host path to a specific location
   - **Environment Variables:** (Only TZ is required, the others are optional)
     - TZ = Your Timezone (e.g., America/New_York)
     - GIT_USER_NAME = GitHub username for contributing
     - GIT_USER_EMAIL = GitHub email for contributing
     - PROFILARR_PAT = GitHub Personal Access Token for contributing
4. **Install the App:**
   - Once you've filled in all the necessary details, click on the "Install" button.
5. **Wait for Installation:**
   - Casa OS will now download and install the app. This might take a few minutes.
6. **Access Profilarr:**
   - After installation is complete, you should be able to find Profilarr on your Casa OS dashboard. Click on it to launch the app.
