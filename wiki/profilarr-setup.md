---
title: Profilarr Setup
slug: profilarr-setup
author: santiagosayshey
created: 2025-03-01
tags: [home, wiki, setup, install]
blurb: Comprehensive setup and usage guide for Profilarr.
---

Profilarr is a **custom format / quality profile management tool** that acts as a middleman between a configuration database and your radarr/sonarr installations. It automatically:

- **Pulls** new updates from your chosen database
- **Compiles** the database format into specific arr formats
- **Imports** them to your arr installations
- Manages **version control** of your configurations

## Installation

Profilarr follows the GitFlow workflow for development:

- New features are first merged into the `develop` branch for testing
- Once stable, these features move to the `main` branch
- For early access to new features, use `santiagosayshey/profilarr:beta`
- For stable use, use `santiagosayshey/profilarr:latest`

Once installed, you can visit the web UI at `http://[address]:6868` and begin the setup process.

### Docker

#### Docker Compose (recommended)

```yaml
services:
  profilarr:
    image: santiagosayshey/profilarr:latest # or :beta
    container_name: profilarr
    ports:
      - 6868:6868
    volumes:
      - /path/to/your/data:/config
    environment:
      - TZ=UTC # Set your timezone
    env_file:
      - .env # Optional: Only needed if contributing to a database
    restart: unless-stopped
```

#### Docker CLI

```bash
docker run -d \
  --name=profilarr \
  -p 6868:6868 \
  -v /path/to/your/data:/config \
  -e TZ=UTC \
  --env-file .env \ # Optional: Only needed if contributing to a database
  --restart unless-stopped \
  santiagosayshey/profilarr:latest  # or :beta
```

#### Volumes

When configuring the volume mount (`/path/to/your/data:/config`):

- Replace `/path/to/your/data` with the actual path on your host system
- **Windows users:** The database is case-sensitive. Use a docker volume or the WSL file system directly to avoid issues
  - Docker volume example: `profilarr_data:/config`
  - WSL filesystem example: `/home/username/docker/profilarr:/config`

### CasaOS

View lawgics' CasaOS setup guide [here:](https://dictionarry.dev/wiki/profilarr-casaos)

### Development

In addition to being a 'sync' tool for end users, Profilarr also acts as a development platform for people to work on, and contribute to, a remote database. Read [here](https://dictionarry.dev/wiki/development-setup) to learn more on how to setup Profilarr for development.

## Usage

### Credentials Setup

The first time you visit the web UI at `http://[address]:6868`, you'll be prompted to setup login credentials.

- Make sure you keep note of these credentials, as you won't be able to reset the password if you forget it later on (unless you have access to the filesystem and can interact with the docker container.)

![](https://i.imgur.com/uhZWeHe.png)

### Configuration Workflows

Once you've setup your user credentials you can start working on your media configurations. You have the choice to either:

1. Connect to an external database, make changes, receive updates and handle change conflicts.
   - This is what most people will be using if they don't want to build configurations from scratch.
2. Use Profilarr completely locally, without a database.
   - This option is left for people who want the advantages of Profilarr's compilation system (single definition profiles, tweaks, better management, etc), but don't want to be tied to any one database. Skip ahead to [Making Changes](#making-changes)

#### Connecting to a Database

Profilarr leverages Git to create an open-source configuration sharing system. To get started, navigate to `Settings -> Database`, and link a repository.

![](https://i.imgur.com/OpArP4z.png)

| #   | Feature              | Description                                                                                                                                                                                                                                                                                                                |
| --- | -------------------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| 1   | Database information | Contains basic information about the database - Name, Owner, Stars/Issues/PRs                                                                                                                                                                                                                                              |
| 2   | Status Container     | - View outgoing changes (any local changes you've made to the database)<br>- View incoming changes (any changes pushed to a remote database that haven't been applied to your local one)<br>- View merge conflicts (when you've made changes to a file that also has incoming changes)                                     |
| 3   | Commit / Change Log  | - View logs of all prior changes applied to your database<br>- If your HEAD is out of date with the remote, it will only show commits after the commit diversion                                                                                                                                                           |
| 4   | Unlink Repo          | - Remove the currently linked repo<br>- Choose to either keep the current files and stop receiving updates<br>- Or remove all files and sync to a completely different database instead                                                                                                                                    |
| 5   | Current Branch       | - Databases may choose to maintain stable / beta versions of their configurations via branches<br>- You would choose your preferred configuration path here (must will just use stable)                                                                                                                                    |
| 6   | Auto Sync            | - Option to let Profilarr automatically pull in new updates without consulting you first.<br>- Useful if you want to connect to a database, receive updates and forget about it after<br>- If a pull causes a merge conflict, Profilarr will pause mid merge and let your resolve the conflicts manually before continuing |

**NOTE**: The database must adhere to the Profilarr standard format to work correctly with Profilarr (ie configurations must be made / edited inside profilarr and not externally).

- Profilarr does not ensure that every public database will adhere to this format, nor work properly with them (only our own - the Dictionarry database).

The following sections will use the [Dictionarry Database](https://github.com/Dictionarry-Hub/database) for demonstration purposes.

#### Getting Updates

Databases are likely to change overtime; they might receive new features such as edition formats, or new quality profiles targeting anime releases. They might fix bugs with regex patterns, or improve descriptions and tags. Since Profilarr connects to a Git repository, it can take advantage of Git's version control capabilities to show when your local database is out of sync with the remote database.

When updates are available, Profilarr will display them in the Status Container section of the Database page (provided you don't have auto pull enabled):

![](https://imgur.com/gimLQU7.png)

1. **Incoming Changes**: Shows all changes that have been pushed to the remote database but haven't yet been applied to your local installation
   - Each change will show a single file each
   - Changes will usually be marked as tweaks, additions, removals, renames, etc.
   - You can the 'View Changes' button, which will open a modal that shows the associated commit + message, and the exact fields that have changed

![](https://i.imgur.com/qjfqMfQ.png)

2. **Update Process**:

   - Click the "Pull Changes" button to apply all incoming changes to your local database
   - Profilarr will automatically merge these changes with your local setup
   - If you've enabled Auto Sync in settings, these updates will be applied automatically
   - Once pulled, your database will go back to being in sync
   - It is currently not possible to pick and choose updates yet, but this feature will be looked at in future

3. **Update History**:
   - All successfully applied updates are logged in the Commit/Change Log section
   - This provides a complete history of changes applied to your database
   - You can use this log to track when specific features were added or modified
   - While technically feasibly, Profilarr does NOT allow you to go back to a certain commit for interoperability reasons.

#### Making Changes

Databases are meant to act as 'starting points' for your setup:

- Some may be broad and have a variety of profiles to use
- Others might be incredibly niche and focus on small but important philosophies.
- Even Dictionarry's database, that aims to be both broad and niche at the same time is also just a starting point.

You have the power to make changes to _whatever_ you want, and still receive updates from a database. To make changes, you simply interact with the configs you want to change and save them - just as you would in Radarr / Sonarr.

- You can change file names, regex patterns, descriptions, format scores, quality groups - whatever you want.
- You can view these changes in the database tab just as you would see incoming changes.

![](https://i.imgur.com/m0t5u3C.png)

From this point, you have a few choices. You can either:

- **Revert changes.** Have you ever made changes to your quality profiles and wanted to change it back but couldnt because you couldn't remember what it used to be? Well since we operate within Git, you can revert a file back to it's previous 'stable' state using `git revert`. It's as simple as pressing a button now.
- **Commit Changes**. When you're satisfied with your modifications and want to preserve them, you need to stage and commit them to your local Git repository. This creates a permanent record of your customizations that Profilarr can reference when pulling updates from the remote database.

![](https://i.imgur.com/RTvo2Ud.png)

| #   | Action  | Description                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             |
| --- | ------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| 1   | Stage   | - Marks modified files to be included in your next commit<br>- This is the preparation step before saving changes permanently<br>- You can select which specific files to stage, allowing you to group related changes together<br>- Staged files appear in a separate section in the interface<br>- Files must be staged before they can be committed (Git's two-phase commit process ensures you review changes before finalizing them)                                                               |
| 2   | Unstage | - Removes files from the staging area that you previously staged<br>- Useful when you accidentally stage files or decide not to include certain changes in your commit<br>- The file remains modified in your working directory, but won't be included in the next commit<br>- You can only select and unstage files that are currently in the staging area                                                                                                                                             |
| 3   | Commit  | - Permanently saves all staged changes to your local Git repository<br>- Requires a commit message that describes what changes were made and why<br>- Creates a checkpoint you can revert to later if needed<br>- **Important**: All staged files will be committed, not just selected ones<br>- After committing, these changes become part of your local configuration history<br>- This is the crucial step that allows Profilarr to track your customizations separately from the original database |
| 4   | Revert  | - Returns a file to its previous state before your modifications<br>- Especially useful when you've made changes you no longer want to keep<br>- You can only revert non committed changes<br>- This preserves the history of changes while effectively canceling out unwanted modifications                                                                                                                                                                                                            |
| 5   | Push    | - Sends your local commits to the remote database<br>- **Only relevant for database contributors and developers**<br>- Requires appropriate permissions to the remote repository<br>- Regular users don't need to worry about this action                                                                                                                                                                                                                                                               |

##### Why Commits?

You might wonder: "Why do I need to manually stage and commit changes? Why doesn't Profilarr just save them automatically?" The answer lies in Profilarr's core philosophy of balancing customization with ongoing updates:

**Breaking the "All or Nothing" Model**: Traditional tools force you to choose - either use their configurations exactly as provided, or be cut off from future updates once you make changes. When you commit in Profilarr, you're creating clear markers that tell the system "these parts are my customizations." This allows Profilarr to know exactly which parts to preserve when new updates arrive and which parts can be safely updated.

Technically, Git is creating snapshots of your configurations at specific points in time. When you commit changes, Git records the exact differences between the original file and your modified version. Later, when pulling updates, Git analyzes these differences alongside the incoming changes and intelligently determines how to combine both sets of modifications without losing either. Without these explicit commit markers, there would be no reliable way to perform this merge operation.

While Profilarr could theoretically automate the staging and committing process, we've deliberately kept it manual. This is because Profilarr also serves as a development platform, and developers need precise control over when and how their changes are saved. Automatic commits would be frustrating for database contributors who are testing various configurations and don't want every experimental change permanently recorded. This manual approach gives both end users and developers the flexibility they need without compromising functionality.

While the extra step might seem clunky at first, it's the mechanism that enables Profilarr's unique ability to let you personalize configurations while still receiving ongoing improvements. The alternative would be returning to the "use our configs exactly as provided or you're on your own" approach of other tools.

#### Handling Merge Conflicts

Even with Git's intelligent merging, sometimes you'll encounter situations where both you and the remote database have modified the same parts of the same files. When this happens, Profilarr needs your help to determine which changes to keep.

##### When Conflicts Occur

Merge conflicts might arise in such scenarios like this:

- You've customized a quality profile to allow AV1 encodes
- Meanwhile, the remote database has updated the same profile to allow AV1 encodes, but at a reduced score pushed up by other formats
- Both changes affect the same file.

When incoming changes affect files you've modified, Profilarr will mark them with a "Potential Conflict" label in the Status Container's incoming changes.

![](https://i.imgur.com/JS8gfn4.png)

When you attempt to pull these changes, the database will enter a "Merge Conflict" state.

- At any point, you can choose to abort the merge and go back to your previous database state.
- You will not however, be able to pull in any new updates until the merge conflict has been resolved.

![](https://i.imgur.com/miuLkzw.png)

##### Resolving Conflicts

In the Merge Conflict state:

1. Profilarr prevents you from making changes to other files until all conflicts are resolved
2. The interface displays each conflicting field side-by-side, showing "Yours" (your version) and "Theirs" (remote version)
3. You must resolve conflicts field-by-field, file-by-file
4. For each field, you choose whether to keep your version or adopt the remote changes
5. After resolving a conflict (but before completing the merge), you can edit your choices in case you change your mind

![](https://i.imgur.com/bJH7dJr.png)

Here, the user has chosen to:

- Accept the incoming changes for two custom formats (360p and 2160p Quality Tier 5)
- Keep their local score change for AV1

##### After Resolution

Once you've resolved all conflicts for all files, you can commit the merge changes:

![](https://i.imgur.com/bd5hjBr.png)

1. Non-conflicting files that were part of the pull are automatically merged
2. Your resolved files maintain the exact choices you made during conflict resolution
3. Your local database returns to a "in sync" state with the remote
4. Normal operations can resume until the next update or change

This process ensures you get the best of both worlds - keeping your important customizations while still benefiting from improvements in the remote database. While it may seem complex at first, this approach gives you complete control over how updates are integrated with your personalized setup.

#### Profilarr Quirks

Profilarr has made some changes to the way custom formats and quality profiles are built. Here's a basic overview of the biggest differences compared to standard Radarr/Sonarr configurations:

| Feature                   | Description                                                                                                                                                                                                                                                                                                                                                     |
| ------------------------- | --------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Reusable Regex Patterns   | - Regex patterns are now separate from custom formats and referenced by name<br>- This allows reusing the same pattern in multiple places<br>- Changes to a pattern automatically apply everywhere it's used<br>- At compile time, pattern names are resolved to their actual regex expressions for the \*arr apps                                              |
| Conditional Format Import | - Custom formats with a score of 0 are not included in profiles (unless specifically added in selective mode)<br>- This helps keep your profiles cleaner by excluding unused formats                                                                                                                                                                            |
| Enhanced Sorting          | - Additional methods for sorting, scoring, and searching files                                                                                                                                                                                                                                                                                                  |
| Language Handling         | - Complete overhaul of language management<br>- All profiles set language to "Any" and use language custom formats based on preferences<br>- Options include:<br> • "Any" - No language filtering<br> • "Must Include" - Ensures releases contain at least your preferred language<br> • "Must Only Be" - Ensures releases contain ONLY your preferred language |
| Documentation-Focused     | - Tags and descriptions are stored in Profilarr but removed during compilation<br>- These elements are purely for documentation and organization                                                                                                                                                                                                                |
| Integrated Testing        | - Regex patterns and custom formats include testing functionality<br>- Used in continuous integration to ensure changes don't break existing functionality<br>- Helps maintain compatibility as configurations evolve                                                                                                                                           |
| Single Definition         | - Profiles and custom formats are defined once in Profilarr<br>- Automatically converted to appropriate Radarr/Sonarr syntax at compile time<br>- Eliminates need to maintain separate definitions unless different logic is required                                                                                                                           |

#### Git Gud

Profilarr attempts to make Git accessible to all users. However, there are some aspects of it that can't be completely simplified or safeguarded against. Understanding these key concepts will help you avoid common pitfalls and get the most out of the system, even if you've never used Git before.

| Topic                  | Guidance                                                                                                                                                                                                                                                                                                                                                                                                       |
| ---------------------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Commit Messages        | - Write clear, descriptive commit messages that explain what you changed and why<br>- Good messages help you track your history and understand changes months later<br>- Examples: "Adjusted AV1 score to prioritize quality over filesize", "Added support for anime dual-audio formats"                                                                                                                      |
| Avoiding File Deletion | - Deleting files should be a last resort, not a go-to solution<br>- When you delete a file that exists in the remote database, it will cause merge conflicts when that file receives updates<br>- Instead of deleting, consider:<br> • Disabling formats you don't want to import<br> • Renaming files to indicate they're not in use<br> • Using comments to note why you're not using certain configurations |
| Commit Size            | - Smaller commits that focus on specific changes are easier to manage<br>- They make conflict resolution simpler when conflicts occur<br>- Example: Commit changes to anime profiles separately from changes to movie profiles                                                                                                                                                                                 |
| Reviewing Changes      | - Always review what you're about to stage using the "View Changes" feature<br>- Make sure each change is intentional and correct<br>- This helps prevent accidental modifications from being committed                                                                                                                                                                                                        |
| Backups                | - Before making significant changes, consider exporting your configurations<br>- This provides a fallback if something goes wrong<br>- Most issues can be resolved, but having a backup gives peace of mind                                                                                                                                                                                                    |
| Abandoned Changes      | - If you have unstaged changes you no longer want, use the "Revert" option<br>- Don't leave unwanted changes hanging around - they'll complicate future operations                                                                                                                                                                                                                                             |

### Importing

Once you've setup your media configuration workflow you can setup external apps which Profilarr will attempt to sync with. You need to setup:

![](https://i.imgur.com/2ZqjGKg.png)

#### Type / Server

There can sometimes be API changes that break Profilarr's import functionality, so version limits on the apps it can import to are enforced - these are often rare and are usually fixed quickly.

#### Sync Settings

| Sync Method      | Description                                                                                                                                                                                                                                                                                                                                                             |
| ---------------- | ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Manual           | - Go to the format/profile page and enter select mode (button in top right toolbar or Ctrl+A)<br>- Select specific files you want to import and where you want to import them<br>- Gives you full control over what configurations are synced to which applications<br>- Best for users who want to carefully manage what gets imported                                 |
| On Pull          | - Automatically syncs selected files whenever the database receives an update<br>- When combined with Auto Pull, allows Profilarr to work completely autonomously                                                                                                                                                                                                       |
| On Schedule      | - Similar to On Pull, but runs on a schedule of your choosing<br>- Set specific times/intervals for Profilarr to check for changes and import them<br>- Useful for controlling when system resources are used for synchronization<br>- Good compromise between automation and control<br>- Creates a scheduled task that you can also trigger manually anytime you want |
| Import as Unique | - Works with any of the sync choices above<br>- Appends a unique identifier to imported files<br>- Allows you to use your Profilarr database alongside different tools/configs<br>- Example: Run TRaSH guides + Notifiarr configurations simultaneously with your Profilarr configs<br>- Prevents name conflicts when using multiple configuration sources              |

#### External App Setup

In future updates (hopefully soon), Profilarr will handle a quick setup sync (changing media management, quality slider settings, etc), but for now you need to change these things manually.

| Setting             | Recommendation             | Explanation                                                                                         |
| ------------------- | -------------------------- | --------------------------------------------------------------------------------------------------- |
| Propers and Repacks | Set to "Do Not Prefer"     | Other options will override custom formats and make Radarr/Sonarr grab things we don't want         |
| Quality Sliders     | Set min/max for everything | Custom formats will do 99% of the ranking and using any other settings just gets in the way usually |

![](https://i.imgur.com/IyJLvfR.png) ![](https://i.imgur.com/zws00bj.png)
