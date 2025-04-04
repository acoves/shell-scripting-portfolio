#!/bin/bash

# Check if at least one parameter was provided
if [ $# -eq 0 ]; then
  echo "Error: No parameter provided."
  echo "Usage: $0 <parameter>"
  exit 1
fi

# If parameter is provided, print it
echo "Parameter received: $1"
