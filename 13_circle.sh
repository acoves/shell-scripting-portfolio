#!/bin/bash

# ====================================================
# Script Description:
# Create a script that reads by keyboard the radius 
# data of a circle and shows its length and surface.
# ====================================================

# Prompt the user to enter the radius of the circle
read -p "Enter the radius of the circle: " radius

# Verify that the input is a positive number
if ! [[ "$radius" =~ ^[0-9]+([.][0-9]+)?$ ]]; then
  echo "Error: You must enter a positive number."
  exit 1
fi

# Calculate the circumference of the circle
length=$(echo "scale=2; 2 * 3.1416 * $radius" | bc)

# Calculate the area of the circle
area=$(echo "scale=2; 3.1416 * $radius * $radius" | bc)

# Display the results
echo "Circumference: $length"
echo "Area: $area"

