#!/bin/bash

# This script finds the largest number in a file, handling errors gracefully.

input_file="numbers.txt"

# Check if the file exists
if [ ! -f "$input_file" ]; then
  echo "Error: Input file '$input_file' not found." >&2
  exit 1
fi

largest_number=0
found_number=false # Flag to check if any numbers were found

while IFS= read -r line; do
  # Check if line is a number
  if [[ "$line" =~ ^-?[0-9]+$ ]]; then
    if (( line > largest_number )); then
      largest_number=$line
      found_number=true
    fi
  else
    echo "Warning: Non-numeric value '$line' encountered and ignored." >&2
  fi
done < "$input_file"

if $found_number; then
  echo "The largest number is: $largest_number"
else
  echo "Warning: No numeric values found in the file."
fi