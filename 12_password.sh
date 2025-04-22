#!/bin/bash

# ====================================================
# Script Description:
# Create a script called password.sh that requests 
# a secret word by keyboard and then checks if that 
# word is the one that is, as the only information, 
# inside a password file.
# ====================================================


# Define the file that contains the password
PASSWORD_FILE="password.txt"

# Check if the password file exists
if [ ! -f "$PASSWORD_FILE" ]; then
  echo "Error: $PASSWORD_FILE does not exist."
  exit 1
fi

# Prompt the user to enter the password (input is hidden)
read -s -p "Enter the secret word: " user_input
echo

# Read the correct password from the file
correct_password=$(<"$PASSWORD_FILE")

# Compare the user input with the correct password
if [ "$user_input" == "$correct_password" ]; then
  echo "Access granted."
else
  echo "Access denied."
fi
