#!/bin/bash

# ====================================================
# Script Description:
# Create a script called parimpar.sh that determines 
# whether a type-read number is even or not.
# ====================================================

# Read the number from the keyboard
read -p "Enter a number: " num

# Verify that it's an integer
if ! [[ "$num" =~ ^-?[0-9]+$ ]]; then
  echo "Error: You must enter an integer."
  exit 1
fi

# Check if the number is even or odd
if (( num % 2 == 0 )); then
  echo "$num is even."
else
  echo "$num is odd."
fi

