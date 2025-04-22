#!/bin/bash

# ====================================================
# Script Description:
# Create a script that reads by keyboard a number “n” 
# and calculate its factorial n! non-recursively.
# ====================================================

# Prompt the user to enter a non-negative integer
read -p "Enter a non-negative integer: " n

# Verify that the input is a non-negative integer
if ! [[ "$n" =~ ^[0-9]+$ ]]; then
  echo "Error: You must enter a non-negative integer."
  exit 1
fi

# Initialize the factorial result to 1
fact=1

# Calculate the factorial iteratively
for ((i = 2; i <= n; i++)); do
  fact=$((fact * i))
done

# Display the result
echo "Factorial of $n is: $fact"
