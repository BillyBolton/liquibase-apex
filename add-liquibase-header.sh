#!/bin/bash

# Function to append header to file if it doesn't exist
append_header() {
    header="--liquibase formatted sql
--changeset Liquibase Pro User:1-package runWith:sqlplus"
    file="$1"
    if ! grep -q "^$header" "$file"; then
        echo "$header" | cat - "$file" > temp && mv temp "$file"
        echo "Header appended to $file"
    else
        echo "Header already exists in $file"
    fi
}

# Function to recursively process files in a directory
process_directory() {
    local dir="$1"
    for item in "$dir"/*; do
        if [ -d "$item" ]; then
            process_directory "$item"
        elif [ -f "$item" ] && [ "${item##*.}" = "sql" ]; then
            append_header "$item"
        fi
    done
}

# Main script
if [ $# -ne 1 ]; then
    echo "Usage: $0 <directory>"
    exit 1
fi

directory="$1"

if [ ! -d "$directory" ]; then
    echo "Directory not found: $directory"
    exit 1
fi

process_directory "$directory"
