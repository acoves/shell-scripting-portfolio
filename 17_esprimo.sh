#!/bin/bash

# ====================================================
# Script Description:
# Create a script that reads a natural number and 
# determines whether or not it is prime.
# ====================================================


# Prompt the user to enter a natural number
read -p "Enter a natural number: " num

# Verify that the input is a natural number (positive integer greater than 0)
if ! [[ "$num" =~ ^[1-9][0-9]*$ ]]; then
  echo "Error: You must enter a natural number greater than 0."
  exit 1
fi

# Numbers less than or equal to 1 are not prime
if [ "$num" -le 1 ]; then
  echo "$num is not prime."
  exit 0
fi

# Initialize a flag to determine if the number is prime
is_prime=1

# Check divisors from 2 up to the square root of the number
for ((i = 2; i * i <= num; i++)); do
  if (( num % i == 0 )); then
    is_prime=0
    break
  fi
done

# Display the result based on the flag
if [ "$is_prime" -eq 1 ]; then
  echo "$num is prime."
else
  echo "$num is not prime."
fi
