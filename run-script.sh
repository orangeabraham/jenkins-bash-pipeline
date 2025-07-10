#!/bin/bash

# Define the directory path
DIR="/home/ubuntu/scripts/"

# Define the filename
FILENAME="abrahamtestfile.txt"

# Navigate to the directory
cd "$DIR" || { echo "Directory $DIR not found"; exit 1; }

# Create a new file
touch "$FILENAME"

# Confirm file creation
echo "Created file: $DIR/$FILENAME"
