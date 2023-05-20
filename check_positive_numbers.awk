#!/usr/bin/env awk -f

# Set the field separator (FS) to the desired delimiter
BEGIN {
    FS = "\t"
    OFS = "\t"
}

# Iterate through each row
{
    # This check also got rid of the header line. CAN BE A PROBLEM IF HEADER FILE HAS NUMBER IN IT
    # Check if the third column contains only positive numbers
    if ($COL_IDX ~ /^[0-9]+$/ && $COL_IDX >= 0) {
        # Print the entire row
        print
    }
}
