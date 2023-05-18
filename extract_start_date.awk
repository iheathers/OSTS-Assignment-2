#!/usr/bin/env awk -f

# Set the field separator (FS) to the desired delimiter
BEGIN { FS = "\t" }

# Iterate through each row
{
    # Split the third column into individual dates using a flexible delimiter pattern
    split($DATE_COL_IDX, dates, /[[:space:]]*-[[:space:]]*/)

    # Extract the start date from the available formats
    split(dates[1], dateParts, "/")

    # Determine the century prefix for the year.
    # If greater than 23 added 19 as prefix because, the current year is 2023
    # So, if 11/1/99 -> 11/1/1999
    if (length(dateParts[3]) == 2) {
        yearPrefix = dateParts[3] > 23 ? "19" : "20"
    }
    else { yearPrefix = "" }

    # Format the start date as Month/Day/YYYY
    startDate = sprintf(\
        "%d/%d/%s%s", dateParts[1], dateParts[2], yearPrefix, dateParts[3]\
    )

    print startDate
}
