#!/bin/bash

# Check if exactly three arguments are provided
if [ "$#" -ne 3 ]; then
    echo "Usage: $0 <directory> <string_to_replace> <replacement_string>"
    exit 1
fi

# Assign arguments to variables
DIRECTORY=$1
STRING_TO_REPLACE=$2
REPLACEMENT_STRING=$3

# Perform the find and replace operation
find "$DIRECTORY" -type f -exec sed -i "s/$STRING_TO_REPLACE/$REPLACEMENT_STRING/g" {} +
