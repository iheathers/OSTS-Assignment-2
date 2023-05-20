#!/usr/bin/awk -f

# Read the values into an array
{ values[NR] = $1 }

END {
    # Calculate the number of values
    n = NR

    # Sort the values in ascending order
    asort(values)

    # Calculate the index of the median value
    medianIndex = int((n + 1) / 2)

    # Calculate the median value
    if (n % 2 == 0) {
        median = (values[medianIndex] + values[medianIndex + 1]) / 2
    }
    else { median = values[medianIndex] }

    # Output the median value
    print median
}
