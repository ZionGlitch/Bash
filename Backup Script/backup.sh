#!/bin/bash
#############################
#                           #
#    Sven's Backup Script   #
#                           #
#############################

# Files to backup
backup_files="/CHANGE/THIS/TO/FILE/YOU/WANT/TO/BACK/UP*.txt"

# Backup location
dest="/CHANGE/THIS/TO/DESTINATION/LOCATION"

# Create archive filename with hostname and timestamp.
timestamp=$(date +%Y-%m-%d_%H.%M.%S)
hostname=$(hostname -s)
archive_file="$hostname-$timestamp.tar.gz"

# Print start status message.
echo "Backing up $backup_files to $dest/$archive_file"
date
echo

# Backup the files using tar.
tar cvzf $dest/$archive_file $backup_files

# Print end status message.
echo
echo "Backup finished"
date

# Long listing of files in $dest to check file sizes.
ls -lh $dest
