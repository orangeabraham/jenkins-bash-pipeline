#!/bin/bash

# Define the directory path
DIR="/home/ubuntu/scripts/abraham-test"

# Define the filename
FILENAME="testfile.txt"

# Navigate to the directory
cd "$DIR" || { echo "Directory $DIR not found"; exit 1; }

# Create a new file
touch "$FILENAME"

# Confirm file creation
echo "Created file: $DIR/$FILENAME"
