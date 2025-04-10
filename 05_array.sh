#!/bin/bash

# ====================================================
# Script Description:
# Create a script called array.sh that declares an 
# array, populates it with keyboard-read data, and 
# then iterates over it to display the data.
# ====================================================

# Declare an empty array
my_array=()

# Ask the user how many elements they want to enter
read -p "How many elements do you want to enter? " count

# Read the elements from the keyboard
for ((i = 0; i < count; i++)); do
  read -p "Enter element $((i + 1)): " value
  my_array+=("$value")
done

# Display the array contents
echo "You entered:"
for item in "${my_array[@]}"; do
  echo "$item"
done

