#!/bin/bash

# Set the MongoDB connection URI
MONGO_URI="mongodb://localhost:27017"

# Set the database name
DB_NAME="Dictionarry"

# Set the path to the backups directory
BACKUPS_DIR="../backups"

# Find the latest backup file with "release" prefix
LATEST_BACKUP=$(ls -t "$BACKUPS_DIR"/release_dictionarry_backup_*.archive | head -1)

# Check if a backup file was found
if [ -z "$LATEST_BACKUP" ]; then
    echo "Error: No backup file found with 'release' prefix."
    exit 1
fi

# Extract the date from the latest backup filename
BACKUP_DATE=$(echo "$LATEST_BACKUP" | sed -E 's/.*backup_(.*)\.archive/\1/')

# Drop the existing database
mongosh "$MONGO_URI" --eval "db.getSiblingDB('$DB_NAME').dropDatabase()"

# Restore the latest backup
mongorestore --uri "$MONGO_URI" --archive="$LATEST_BACKUP" --gzip

# Check if the restore was successful
if [ $? -eq 0 ]; then
    echo "Database restored successfully from backup dated: $BACKUP_DATE"
else
    echo "Error: Failed to restore database."
    exit 1
fi