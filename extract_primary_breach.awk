#!/usr/bin/env awk -f

# Set the field separator (FS) to the desired delimiter
BEGIN { FS = "\t" }

# Process the "Type of Breach" column
{
    # Split the third column into an array using comma or slash as the delimiter
    split($BREACH_COL_IDX, breachTypes, /[\/,]/)

    # Retrieve the primary breach type
    primaryBreachType = breachTypes[1]

    # Assign the primary breach type back to the third column
    $BREACH_COL_IDX = primaryBreachType

    # Print the modified row
    print
}
