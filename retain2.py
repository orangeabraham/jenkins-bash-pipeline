#!/usr/bin/env python3

import os
import sys

# Define the directory path
dir_path = "/home/ubuntu/scripts/"

# Define the filename
filename = "abrahamtestfile.txt"

# Full path to the file
file_path = os.path.join(dir_path, filename)

# Check if directory exists
if not os.path.isdir(dir_path):
    print(f"Directory {dir_path} not found")
    sys.exit(1)

# Create the file
try:
    with open(file_path, 'w') as f:
        pass  # This creates an empty file
    print(f"Created file: {file_path}")
except Exception as e:
    print(f"Error creating file: {e}")
    sys.exit(1)
root@ip-172-31-33-47:/home/ubuntu/scripts# python3 --version
Python 3.12.3
