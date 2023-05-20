#!/usr/bin/awk -f
BEGIN {
    # Define the months
    months = "Jan\tFeb\tMar\tApr\tMay\tJun\tJul\tAug\tSep\tOct\tNov\tDec"

    # # Split the months into an array
    split(months, monthArr, "\t")

    # Initialize the month index
    monthIndex = 1
}

# Read the values into an array
{ original_values[NR] = $1 }

END {
    # Calculate the number of values
    n = NR

    # Create a copy of the original_values array
    for (i = 1; i <= n; i++) { values[i] = original_values[i] }

    # Sort the values in ascending order
    asort(values)

    # # Print the median and MAD
    printf("Median:\t%d\n", median)
    printf("MAD:\t%d\n\n", mad)

    # Print the table header
    printf("Month\tCounts\tDeviation Indicators\n")
    printf("-----\t------\t--------------------\n")

    # Print the table rows with months, incidents, and deviation indicators
    for (i = 1; i <= n; i++) {
        indicator = ""

        if (original_values[i] > median + mad) { indicator = "++" }

        if (original_values[i] < median - mad) { indicator = "--" }

        printf(\
            "%s\t%d\t%s\n", monthArr[monthIndex], original_values[i], indicator\
        )

        # Increment the month index cyclically
        monthIndex = monthIndex % 12 + 1
    }
}
