#!/bin/bash

# # Set the directory or file you want to back up
# echo -e "enter folder name : \c"
# read SOURCE

# # Set the backup destination directory
# BACKUP_LOCATION="/Videos" 

# # Get the current timestamp (formatted as YYYY-MM-DD)
# TIMESTAMP=$(date +"%Y-%m-%d")

# # Create the backup file name with timestamp
# BACKUP_FILE="$BACKUP_LOCATION/backup_$TIMESTAMP.tar.gz"

# # Create the compressed backup using tar
# tar -czvf "$BACKUP_FILE" "$SOURCE"

# # Print a message indicating the backup is complete
# echo "Backup of $SOURCE completed successfully. File saved as $BACKUP_FILE"
# !/bin/bash

# Prompt user for the folder name to back up
echo -e "Enter the folder name to back up: \c"
read SOURCE

# Check if the source directory exists
if [ ! -d "$SOURCE" ]; then
    echo "Error: The folder '$SOURCE' does not exist."
    exit 1
fi

# Set the backup destination directory
BACKUP_LOCATION="$HOME/Desktop/location"

# Check if the backup location exists, create it if not
if [ ! -d "$BACKUP_LOCATION" ]; then
    echo "Backup location '$BACKUP_LOCATION' does not exist, creating it."
    mkdir -p "$BACKUP_LOCATION"
fi

# Get the current timestamp (formatted as YYYY-MM-DD)
TIMESTAMP=$(date +"%Y-%m-%d")

# Create the backup file name with timestamp
BACKUP_FILE="$BACKUP_LOCATION/backup_$TIMESTAMP.tar.gz"

# Create the compressed backup using tar, and handle errors
echo "Creating backup of '$SOURCE'..."
if tar -czvf "$BACKUP_FILE" "$SOURCE"; then
    echo "Backup of '$SOURCE' completed successfully."
    echo "Backup file saved as '$BACKUP_FILE'."
else
    echo "Error: Backup failed. Please check permissions and available disk space."
    exit 1
fi

