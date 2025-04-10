#!/bin/bash

# ====================================================
# Script Description:
# Create a script called potencia.sh that calculates 
# "a^b", i.e. "a raised to b", where "a" will be the 
# first parameter and "b" the second parameter. If 
# the number of parameters entered is less than 2, 
# the following error message will be displayed: 
# "To run this script you need 2 numbers." and a 
# return code equal to 2 will be returned.
# ====================================================

# Verify that 2 parameters were passed
if [ $# -lt 2 ]; then
  echo "To run this script you need 2 numbers."
  exit 2
fi

# Calculate a^b using bc (supports integers and decimals)
result=$(echo "$1 ^ $2" | bc -l)

echo "Result: $result"
