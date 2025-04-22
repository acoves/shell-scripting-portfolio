#!/bin/bash

# ====================================================
# Script Description:
# Create a script called fileodir.sh that verifies 
# that the parameter passed is a file and if so, 
# displays its contents. If the parameter is a 
# directory, it should show the files it contains. 
# Also, you must accept more than one parameter.
# ====================================================

# Verify that at least one or more parameters were provided
if [ $# -eq 0 ]; then
  echo "Usage: $0 <file_or_directory> [more_paths...]"
  exit 1
fi

# Process each parameter
for path in "$@"; do
  echo "----- Processing: $path -----"
  if [ -f "$path" ]; then
    # Check if the parameter is a file and display its contents
    echo "It's a file. Contents:"
    cat "$path"
  elif [ -d "$path" ]; then
    # Check if the parameter is a directory and list its contents
    echo "It's a directory. Files inside:"
    ls "$path"
  else
    # If the parameter is neither a file nor a directory, display an error
    echo "Error: $path does not exist or is not accessible."
  fi
  echo
done
