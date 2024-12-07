#!/bin/bash

# This script correctly processes files in a directory, including those with spaces in their names.

directory="/tmp/testdir"

# Create the directory and some files for testing.
mkdir -p "$directory"
touch "$directory/file1.txt" 
touch "$directory/file 2.txt" 
touch "$directory/file3.txt"

# Correctly handle files with spaces using the find command and while loop
find "$directory" -maxdepth 1 -type f -print0 | while IFS= read -r -d $'\0' file; do
  if [ -f "$file" ]; then
    echo "Processing: $file"
    # Perform some action on the file (replace with your actual action)
  fi
 done

# Alternative solution using an array and proper quoting
#files=("$directory"/*)
#for file in "${files[@]}"; do
#  if [ -f "$file" ]; then
#    echo "Processing: $file"
#    #Perform your action here
#  fi
#done