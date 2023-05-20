#!/usr/bin/env awk -f

# Function to calculate absolute value
function abs(x) { return x >= 0 ? x : -x }

# Read the values into an array
{ values[NR] = $1 }

END {
    # Calculate the number of values
    n = NR

    # Calculate the Median Absolute Deviation (MAD)
    for (i = 1; i <= n; i++) { absoluteDeviations[i] = abs(values[i] - median) }

    # Sort the absolute deviations in ascending order
    asort(absoluteDeviations)

    # Calculate the median index for absolute deviations
    madMedianIndex = int(n / 2) + 1

    # Calculate the MAD value
    if (n % 2 == 0) {
        mad = (absoluteDeviations[madMedianIndex] + absoluteDeviations[\
            madMedianIndex - 1\
        ]) / 2
    }
    else { mad = absoluteDeviations[madMedianIndex] }

    # Output the MAD value
    print mad
}
