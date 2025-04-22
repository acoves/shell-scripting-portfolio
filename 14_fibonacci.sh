#!/bin/bash

# ====================================================
# Script Description:
# Create a script that displays the first “n” terms 
# of the Fibonacci series.
# ====================================================

# Prompt the user to enter the number of Fibonacci terms to display
read -p "Enter how many Fibonacci terms to display: " n

# Verify that the input is a positive integer
if ! [[ "$n" =~ ^[1-9][0-9]*$ ]]; then
  echo "Error: You must enter a positive integer."
  exit 1
fi

# Initialize the first two terms of the Fibonacci series
a=0
b=1

# Display the Fibonacci series
echo "Fibonacci series ($n terms):"
for ((i = 1; i <= n; i++)); do
  # Print the current term
  echo -n "$a "
  # Calculate the next term in the series
  fn=$((a + b))
  # Update the values of 'a' and 'b' for the next iteration
  a=$b
  b=$fn
done

# Print a newline at the end
echo
