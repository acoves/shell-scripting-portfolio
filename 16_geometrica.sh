#!/bin/bash

# ====================================================
# Script Description:
# Create a script that displays the first 100 terms 
# of a geometric progression of term "a" and ratio 
# "r", which must be entered as parameters. e.g.
# Pgeometrical(t=3,r=2) 3, 6, 12, 24, 48 ....
# ====================================================


# Verify that exactly two parameters were provided
if [ $# -ne 2 ]; then
  echo "Usage: $0 <initial_term> <ratio>"
  exit 1
fi

# Assign the parameters to variables
a=$1 # Initial term of the progression
r=$2 # Ratio of the progression

# Verify that both parameters are valid numbers (integers or decimals)
if ! [[ "$a" =~ ^-?[0-9]+([.][0-9]+)?$ ]] || ! [[ "$r" =~ ^-?[0-9]+([.][0-9]+)?$ ]]; then
  # If either parameter is not a valid number, display an error and exit
  echo "Error: Both parameters must be numbers."
  exit 2
fi

# Display the header for the geometric progression
echo "First 100 terms of the geometric progression (a=$a, r=$r):"

# Initialize the first term of the progression
term=$a

# Loop to calculate and display the first 100 terms
for ((i = 1; i <= 100; i++)); do
  echo -n "$term "
  
  # Calculate the next term by multiplying the current term by the ratio
  term=$(echo "$term * $r" | bc -l)
done

# Print a newline at the end
echo
