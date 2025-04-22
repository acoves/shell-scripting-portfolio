#!/bin/bash

# ====================================================
# Script Description:
# Create a script called tabla.sh that asks for a 
# number per keyboard (from 1 to 10) and displays 
# its multiplication table.
# ====================================================

# Read the number from the keyboard
read -p "Enter a number (1 to 10): " num

# Verify that it's an integer from 1 to 10
if ! [[ "$num" =~ ^[1-9]$|^10$ ]]; then
  echo "Error: You must enter a number from 1 to 10."
  exit 1
fi

# Show the multiplication table
echo "Multiplication table for $num:"
for i in {1..10}; do
  echo "$num x $i = $((num * i))"
done

