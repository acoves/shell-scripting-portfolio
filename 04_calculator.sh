#!/bin/bash

# ====================================================
# Script Description:
# Create a script called calculator.sh that displays 
# a menu with the options add, subtract, multiply and 
# divide and perform the corresponding operation with
# the 2 parameters entered in its execution (which 
# you must verify are numbers).
# ====================================================


# Check that exactly two parameters were passed
if [ $# -ne 2 ]; then
  echo "Usage: $0 <number1> <number2>"
  exit 1
fi

# Verify that both parameters are numbers (integers or decimals)
if ! [[ "$1" =~ ^-?[0-9]+([.][0-9]+)?$ ]] || ! [[ "$2" =~ ^-?[0-9]+([.][0-9]+)?$ ]]; then
  echo "Error: Both parameters must be numbers."
  exit 1
fi

# Display menu
echo "Select an operation:"
echo "1) Add"
echo "2) Subtract"
echo "3) Multiply"
echo "4) Divide"
read -p "Enter choice [1-4]: " choice

case $choice in
  1)
    result=$(echo "$1 + $2" | bc)
    echo "Result: $result"
    ;;
  2)
    result=$(echo "$1 - $2" | bc)
    echo "Result: $result"
    ;;
  3)
    result=$(echo "$1 * $2" | bc)
    echo "Result: $result"
    ;;
  4)
    if [ "$2" == "0" ]; then
      echo "Error: Division by zero."
    else
      result=$(echo "scale=2; $1 / $2" | bc)
      echo "Result: $result"
    fi
    ;;
  *)
    echo "Invalid choice."
    ;;
esac
