#!/usr/bin/env awk -f

# Set the field separator (FS) to the desired delimiter
BEGIN { FS = "\t" }

# Iterate through each row
{
    # Check if the third column contains only positive numbers
    if ($3 ~ /^[0-9]+$/ && $3 >= 0) {
        # Print the entire row
        print
    }
}
