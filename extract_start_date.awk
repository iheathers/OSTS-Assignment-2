#!/usr/bin/env awk -f

# Set the field separator (FS) to the desired delimiter
BEGIN {
    FS = "\t"
    OFS = "\t"
}

# Iterate through each row
{
    # Split the third column into individual dates using a flexible delimiter pattern
    split($DATE_COL_IDX, dates, /[[:space:]]*-[[:space:]]*/)

    raw_start_date = dates[1]

    # Extract the start date from the available formats
    split(raw_start_date, dateParts, "/")

    # Determine the century prefix for the year.
    # If greater than 23 added 19 as prefix because, the current year is 2023
    # So, if 11/1/99 -> 11/1/1999

    month = dateParts[1]
    day = dateParts[2]
    year = dateParts[3]

    if (length(year) == 2) { yearPrefix = year > 23 ? "19" : "20" }
    else { yearPrefix = "" }

    # Format the start date as Month/Day/YYYY
    startDate = sprintf("%d/%d/%s%s", month, day, yearPrefix, year)

    split(startDate, standardDateParts, "/")

    std_month = standardDateParts[1]
    std_day = standardDateParts[2]
    std_year = standardDateParts[3]

    # Assumption: The maximum day in a month is 32
    if (\
        (std_month >= 1 && std_month <= 12) && (std_year ~ /^[0-9]{4}$/) &&
        (std_day >= 1 && std_day <= 32)\
    ) {
        $NF = $NF OFS std_month OFS std_year

        print
    }
}
