# Dictionarry Database Repository

This repository contains the database configurations and backups used by the Dictionarry project, supporting both the Profilarr tool and the Dictionarry website.

## Overview

Dictionarry aims to simplify media automation via tailored custom formats and profiles for Radarr and Sonarr. This repository provides the necessary database setup and management instructions.

## Prerequisites

- **MongoDB**: Ensure MongoDB is installed on your system.
- **MongoDB Compass**: Install MongoDB Compass for a graphical interface to manage your database.
- **Bash**: Ensure Bash is installed on your system.

## Table of Contents

- [Setup Instructions](#setup-instructions)
- [Usage](#usage)
  - [Restoring the Database](#restoring-the-database)
  - [Managing the Database with MongoDB Compass](#managing-the-database-with-mongodb-compass)
  - [Shell Scripts for Database Operations](#shell-scripts-for-database-operations)
- [Repository Structure](#repository-structure)
- [Contributing](#contributing)

## Setup Instructions

1. Install MongoDB and MongoDB Compass by following the instructions in the [installation guide](https://github.com/Dictionarrry/db/wiki/Installing-MongoDB-&-Compass).
2. Clone this repository to your local machine.

   ```bash
   git clone https://github.com/Dictionarrry/db.git
   cd db
   ```

## Usage

### Restoring the Database

1. Ensure you have cloned the repository and navigated to the project directory.
2. Run the `restore.sh` script to restore the database from the latest backup file.

   ```bash
   ./scripts/restore.sh
   ```

### Managing the Database with MongoDB Compass

1. Open MongoDB Compass and connect to your local MongoDB instance.
2. Select the "Dictionarry" database to view and manage its collections.

## Contributing

- Follow this guide on best practices when contributing: [Link](https://github.com/Dictionarrry/db/wiki/Best-Practices)

1. Create a new branch for your changes.

   ```bash
   git checkout -b your-branch-name
   ```

2. Make your modifications to the database using MongoDB Compass.
3. Run the `dump.sh` script to create a new backup of the modified database.

   ```bash
   ./scripts/dump.sh
   ```

4. Commit your changes and the new backup file.

   ```bash
   git add .
   git commit -m "Your commit message"
   ```

5. Push your branch to the remote repository.

   ```bash
   git push origin your-branch-name
   ```

6. Create a pull request on GitHub to propose your changes.

