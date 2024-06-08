#!/bin/bash

# Directory containing the HTML files (assuming you are already in the directory)
html_dir="."

# Iterate over each HTML file in the directory
for file in *.html; do
    # Extract the base name of the file without the .html extension
    base_name="${file%.html}"
    
    # Construct the old and new string patterns
    old_pattern="./${base_name}_files/"
    new_pattern="../Profile Search _ SAIL Year Book Portal_files/"
    
    # Replace the occurrences of old_pattern with new_pattern in each file
    sed -i "s|${old_pattern}|${new_pattern}|g" "$file"
    
    # Optional: Print a message indicating the file was processed
    echo "Processed $file"
done

echo "All HTML files have been updated."
