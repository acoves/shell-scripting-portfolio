#!/bin/bash

# ====================================================
# Script Description:
# Create a script called mcd.sh that calculates and 
# displays the maximum divisor of a number ordered 
# per keyboard.
# ====================================================


# Read the number from the keyboard
read -p "Enter a number: " num

# Verify that it's a positive integer
if ! [[ "$num" =~ ^[1-9][0-9]*$ ]]; then
  echo "Error: You must enter a positive integer."
  exit 1
fi

# Find the greatest proper divisor (less than the number)
for ((i = num - 1; i >= 1; i--)); do
  if (( num % i == 0 )); then
    echo "The maximum proper divisor of $num is: $i"
    exit 0
  fi
done
