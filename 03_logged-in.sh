#!/bin/bash

# ====================================================
# Script Description:
# Create a script called logged-in.sh that returns 
# YES if the first parameter matches the logged in 
# user or NOT otherwise.
# ====================================================

# Check if a parameter was passed
if [ $# -eq 0 ]; then
  echo "Error: No username provided."
  echo "Usage: $0 <username>"
  exit 1
fi

# Get the current username
current_user=$(whoami)

# Compare with the parameter
if [ "$1" == "$current_user" ]; then
  echo "YES"
else
  echo "NOT"
fi
