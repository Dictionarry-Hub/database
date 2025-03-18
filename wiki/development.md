---
title: Development Setup
slug: development-setup
author: santiagosayshey
created: 2025-03-19
tags: [home, wiki, setup, install, develop]
blurb: Comprehensive guide for setting up Profilarr for database development
---

Profilarr functions as both a synchronization tool for end users and a complete development platform for developers. While most users will simply connect to existing databases to receive updates, Profilarr's development capabilities allow for creating, testing, and contributing custom media configurations back to the community through its Git integration.

## Setting Up Your Database Repository

To use Profilarr's development features, you'll need a GitHub repository for your database. You have two options:

### Option 1: Fork a PSF Database

1. Go to https://github.com/Dictionarry-Hub/database (or any other Profilarr Standard Format Database)
2. Click the "Fork" button in the top-right corner
3. Follow the prompts to complete the fork process
4. Your forked repository will now be ready to use with Profilarr

### Option 2: Create a New Database Repository

1. Click the "+" in the top-right corner and select "New repository"
2. Give your repository a name (like "profilarr-database")
3. Set visibility to public or private as needed (it needs to be public if you intend to share it)
4. Click "Create repository"
5. Clone the repository to your local machine
6. Create three folders: `custom_formats`, `regex_patterns`, and `profiles`
7. Add a `.gitkeep` file in each folder (this empty file is necessary to ensure Git tracks these folders; otherwise, they won’t be included in the repository, which may cause errors in Profilarr)
8. Commit and push these changes to your repository

## Development Configuration

### Generate a GitHub Personal Access Token (PAT)

To allow Profilarr to connect and push to your remote database, you'll need to generate a GitHub Personal Access Token (PAT). This token gives Profilarr permission to access and update your GitHub repository.

1. Sign in to your GitHub account
2. Go to Settings > Developer settings > Personal access tokens
3. Click "Generate new token"
4. Choose **Fine-grained**
5. Give your token a descriptive name (e.g., "Profilarr Development")
6. Apply the following permissions:
   - **Repository access:** Select your database repository
   - **Permissions:** Set `contents` and `metadata` to **Read & Write**
7. Click "Generate token"
8. Copy your new token (make sure to save it somewhere safe, as you won’t be able to see it again)

### Configure Your User Information

You'll also need to provide a username and email for Git. These will be associated with any commits you make to the database:

- **Username**: This will appear in commit logs and will be visible to other contributors
- **Email**: This will be used for Git commits and may be visible in public repositories

### Create an Environment File

Create a `.env` file with the following information. This is required for database contributions:

```
GIT_USER_NAME=your_username
GIT_USER_EMAIL=your_email
PROFILARR_PAT=your_github_pat
```

⚠ **Security Note:** Avoid committing `.env` files containing secrets to public repositories. If working on a shared system, store credentials in a separate `.env.local` file or configure them directly in Docker. To ensure these files are ignored by Git, add the following entry to your `.gitignore` file:

```
.env
.env.local
```

## Setup

With your credentials configured, you can now deploy Profilarr for development.

### Docker Compose (recommended)

```yaml
services:
  profilarr:
    image: santiagosayshey/profilarr:latest # or :beta for pre-release versions
    container_name: profilarr
    ports:
      - 6868:6868
    volumes:
      - /path/to/your/data:/config
    environment:
      - TZ=UTC # Set your timezone
    env_file:
      - .env # Required for database contributions
    restart: unless-stopped
```

### Docker CLI

```bash
docker run -d \
  --name=profilarr \
  -p 6868:6868 \
  -v /path/to/your/data:/config \
  -e TZ=UTC \
  --env-file .env \
  --restart unless-stopped \
  santiagosayshey/profilarr:latest # or :beta for pre-release versions
```

### Unraid

For Unraid users, the Profilarr Community App includes placeholders for required environment variables. To enable development mode, you must replace these placeholders with your actual credentials:

- `GIT_USER_NAME`
- `GIT_USER_EMAIL`
- `PROFILARR_PAT`

## Verification

To confirm that everything is set up correctly, check the startup logs for Git user initialization. The logs should include entries similar to the following:

```
profilarr   | 2025-03-18 20:08:35 - app.init - INFO - Initializing Git user
profilarr   | 2025-03-18 20:08:35 - app.init - INFO - Configuring Git user
profilarr   | 2025-03-18 20:08:35 - app.init - DEBUG - Retrieved Git config: Name - santiagosayshey, Email - user@example.com
profilarr   | 2025-03-18 20:08:35 - app.db.queries.settings - DEBUG - PAT status verified
profilarr   | 2025-03-18 20:08:35 - app.init - INFO - Git user configuration completed
profilarr   | 2025-03-18 20:08:35 - app.init - INFO - Git user initialized successfully
```

## Troubleshooting

If you encounter issues with your development setup:

| Issue                                        | Possible Solution                                                                   |
| -------------------------------------------- | ----------------------------------------------------------------------------------- |
| **GitHub token not working**                 | Verify your PAT has `contents` and `metadata` read/write permissions                |
| **Profilarr fails to access the repository** | Ensure your repository is public (or your token has access to private repositories) |
| **Git username/email not recognized**        | Run `git config --global user.name` and `git config --global user.email` to verify  |
| **Cannot push to repository**                | Ensure your container has network access to GitHub (try `ping github.com`)          |
| **Updated `.env` not applied**               | Remove and recreate the container to reload environment variables                   |

For additional help or to contribute to Profilarr, join our community on [GitHub](https://github.com/santiagosayshey/profilarr) or [Discord](https://discord.gg/Y9TYP6jeYZ).

## Contributing to Databases

1. **Link Your Fork in Profilarr**

   - Open Profilarr and navigate to the database settings.
   - Enter the GitHub repository URL of your forked database.

2. **Make Changes in Profilarr**

   - Use Profilarr's built-in tools to modify or add database entries.
   - Profilarr will handle formatting and validation automatically.

3. **Commit and Push Changes**

   - Profilarr provides actions to **revert, stage, commit, and push** changes.
   - After making changes, stage them using the **Stage** button.
   - Once staged, commit the changes with a commit message.
   - Finally, use the **Push** button to send your changes to your GitHub fork.
   - Roll back any unwanted changes using the **Revert** button.

4. **Create a Pull Request (PR)**
   - Go to your fork on GitHub and navigate to the "Pull Requests" tab.
   - Click "New pull request" and select your fork and branch.
   - Provide a clear description of the changes and submit the PR.
   - Wait for review and approval before merging.

### ⚠ Editing Databases Directly

While it's possible to edit database files manually in an IDE or on GitHub, this is not recommended unless you fully understand Profilarr’s formatting and validation rules. Profilarr enforces constraints to ensure data integrity, and bypassing these safeguards can lead to:

- Corrupted or invalid files that Profilarr cannot process correctly.
- Unexpected behavior when syncing with Profilarr.
- Inconsistent formatting, leading to rejected updates.

To make modifications, it's strongly advised to use Profilarr’s built-in editing tools whenever possible. If direct edits are necessary, always validate the changes in a local instance of Profilarr before pushing them to the repository.
