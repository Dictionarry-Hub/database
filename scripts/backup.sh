#!/bin/bash

# Set the MongoDB connection URI
MONGO_URI="mongodb://localhost:27017"

# Set the database name
DB_NAME="Dictionarry"

# Set the path to the backups directory
BACKUPS_DIR="../backups"

# Create the backups directory if it doesn't exist
mkdir -p $BACKUPS_DIR

# Get the current date and time
CURRENT_DATE=$(date +%d_%b_%Y_%H%M)

# Create a new backup file with "release" prefix and formatted date
BACKUP_FILE="$BACKUPS_DIR/release_dictionarry_backup_$CURRENT_DATE.archive"

# Perform the database dump
mongodump --uri "$MONGO_URI" --db "$DB_NAME" --archive="$BACKUP_FILE" --gzip

# Check if the backup was successful
if [ $? -eq 0 ]; then
    echo "Database backup created successfully: $BACKUP_FILE"
else
    echo "Error: Failed to create database backup."
    exit 1
fi