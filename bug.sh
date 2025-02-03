#!/bin/bash

# This script attempts to find the largest number in a file, but it has a bug.

input_file="numbers.txt"

largest_number=0

while IFS= read -r line; do
  if (( line > largest_number )); then
    largest_number=$line
  fi
 done < "$input_file"

echo "The largest number is: $largest_number"