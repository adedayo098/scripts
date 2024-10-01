echo "this is a backupscript"
#!/bin/bash

# Specify the directories to back up (separate multiple directories with a space)
SOURCE_DIRECTORIES=("videos" "downloads")

# Specify the backup location
BACKUP_LOCATION="desktop"

# Get the current timestamp (formatted as YYYY-MM-DD_HH-MM-SS)
TIMESTAMP=$(date +"%Y-%m-%d_%H-%M-%S")

# Create a backup directory with the timestamp
directory="$BACKUP_LOCATION at $TIMESTAMP"


# Loop through each source directory and copy to the backup directory
for DIR in "${SOURCE_DIRECTORIES[@]}"; do
    # Get the base name of the directory (e.g., "directory1" from "/path/to/directory1")
    BASENAME=$(basename "$DIR")

    # Copy the directory to the backup location
    echo "Backing up $DIR to $directory/$BASENAME..."
    # cp -r "$DIR" "$directory/$BASENAME"
done

# Optionally, create a compressed archive (tar.gz) of the backup directory
# Uncomment the following line if you want to create a compressed archive
# tar -czvf "$BACKUP_LOCATION/backup_$TIMESTAMP.tar.gz" -C "$BACKUP_LOCATION" "backup_$TIMESTAMP"

echo "Backup completed successfully at $directory"

# Optionally, remove the uncompressed backup directory after creating the archive
# Uncomment the following line if you only want to keep the compressed archive
# rm -rf "$BACKUP_DIR"
