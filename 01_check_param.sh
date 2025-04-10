#!/bin/bash

# ====================================================
# Script Description:
# Create a script that verifies that a parameter has 
# been entered in the execution of the script.
# ====================================================

# Check if at least one parameter was provided
if [ $# -eq 0 ]; then
  echo "Error: No parameter provided."
  echo "Usage: $0 <parameter>"
  exit 1
fi

# If parameter is provided, print it
echo "Parameter received: $1"
