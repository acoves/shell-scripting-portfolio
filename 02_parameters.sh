#!/bin/bash
# ====================================================
# Script Description:
# Create a script that verifies that a parameter 
# has been entered in the script execution and 
# also separates each argument by the character ", ".
# ====================================================

# Check if parameters were passed
if [ $# -eq 0 ]; then
  echo "Error: No parameter provided."
  echo "Usage: $0 <param1> [param2] [param3] ..."
  exit 1
fi

# Join all parameters separated by ", "
result=""
for arg in "$@"; do
  if [ -z "$result" ]; then
    result="$arg"
  else
    result="$result, $arg"
  fi
done

echo "Parameters received: $result"
