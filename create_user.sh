#!/bin/bash

# Prompt for the new username
read -p "Enter the new username: " username

# Check if the user already exists
#if id "$username" &>/dev/null; then
#    echo "User '$username' already exists!"
#    exit 1
#fi

# Create the new user with a home directory and bash shell
useradd -m -s /bin/bash "$username"

# Set the password for the new user
read -sp "Enter the password for $username: " password
echo

# Use the echo command to set the user's password
echo "$username:$password" |  chpasswd

# Optionally, add the user to a specific group (e.g., sudo group)
# sudo usermod -aG sudo "$username"

# Print success message
echo "User '$username' has been created successfully!"

echo "==========================user has been created============================="

userdel "$username"

cat /etc/passwd | grep $username | wc

echo "===============================if wc is 0 that means user is deleted========================"




