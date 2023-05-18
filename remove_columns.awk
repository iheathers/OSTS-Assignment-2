#!/usr/bin/env awk -f
BEGIN {
    FS = OFS = "\t"
    ORS = "\n"
}

{
    # Set the number of fields (NF) to 5, effectively removing all columns after column 5
    NF = 5

    # Reconstruct the modified line by joining the remaining fields with the field separator
    output = $1

    for (i = 2; i <= NF; i++) { output = output FS $i }

    # Print the modified line
    print output
}
