#!/bin/bash

# ====================================================
# Script Description:
# Create a script that, when passed by argument to 
# a parameter, determines if it is a file, directory, 
# or if the parameter does not exist.
# ====================================================


# Check if the user provided an argument
if [ $# -eq 0 ]; then
  echo "Usage: $0 <path>"
  exit 1
fi

# Evaluate the parameter passed as an argument
if [ -f "$1" ]; then
  # Check if the argument is a file
  echo "$1 is a file."
elif [ -d "$1" ]; then
  # Check if the argument is a directory
  echo "$1 is a directory."
else
  # If the argument is neither a file nor a directory
  echo "$1 does not exist."
fi

