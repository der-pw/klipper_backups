#!/bin/bash

# Directory with GCODE files
DIR="/home/pi/printer_data/gcodes/"

# Number of days after which files should be deleted
AGE_DAYS=50

# Count the number of files found before deletion
count=$(find "$DIR" -name "*.gcode" -type f -mtime +$AGE_DAYS | wc -l)

# If no files are found, print "nothing to delete"
if [ "$count" -eq 0 ]; then
    echo "Nothing to delete. No files older than $AGE_DAYS days."
else
    # Delete files older than $AGE_DAYS days
    #find "$DIR" -name "*.gcode" -type f -mtime +$AGE_DAYS -delete
    echo "$count files older than $AGE_DAYS days have been deleted."
fi
