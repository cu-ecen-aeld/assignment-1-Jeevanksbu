#!/bin/bash

# Check if the correct number of arguments is provided
if [ $# -ne 2 ]; then
  echo "Error: Two arguments required - <path_to_file> <text_string>"
  exit 1
fi

# Assign arguments to variables
writefile=$1
writestr=$2

# Get the directory path from the file path
writedir=$(dirname "$writefile")

# Create the directory if it doesn't exist
mkdir -p "$writedir"

# Try to create/write to the file with the given content
echo "$writestr" > "$writefile"

# Check if the file was successfully created and written to
if [ $? -ne 0 ]; then
  echo "Error: Could not create or write to the file $writefile"
  exit 1
fi

echo "File $writefile created successfully with the provided content."

