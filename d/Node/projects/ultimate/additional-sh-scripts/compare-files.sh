#!/bin/bash
# compare-files.sh
# Usage: ./compare-files.sh <file1> <file2>

if [ "$#" -ne 2 ]; then
    echo "Usage: $0 <file1> <file2>"
    exit 1
fi

file1="$1"
file2="$2"

if [ ! -f "$file1" ]; then
    echo "Error: File $file1 does not exist."
    exit 1
fi

if [ ! -f "$file2" ]; then
    echo "Error: File $file2 does not exist."
    exit 1
fi

# Use colordiff if available, otherwise fall back to regular diff
if command -v colordiff &> /dev/null; then
    diff_command="colordiff"
else
    diff_command="diff"
fi

# Perform the diff
$diff_command -u "$file1" "$file2"
