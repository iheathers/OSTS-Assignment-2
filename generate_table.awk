# # #!/usr/bin/awk -f

# # # Function to calculate absolute value
# # function abs(x) {
# #     if (x >= 0) { return x }
# #     else { return -x }
# # }

# # BEGIN {
# #     # Define the months
# #     months = "Jan Feb Mar Apr May Jun Jul Aug Sep Oct Nov Dec"

# #     # Split the months into an array
# #     split(months, monthArr)

# #     # Initialize the month index
# #     monthIndex = 1
# # }

# # # Read the values into an array
# # { original_values[NR] = $1 }

# # END {
# #     # Calculate the number of values
# #     n = NR

# #     # Create a copy of the original_values array
# #     for (i = 1; i <= n; i++) { values[i] = original_values[i] }

# #     # Sort the values in ascending order
# #     asort(values)

# #     # Calculate the median index
# #     medianIndex = int(n / 2) + 1

# #     # Calculate the median value
# #     if (n % 2 == 0) {
# #         median = (values[medianIndex] + values[medianIndex - 1]) / 2
# #     }
# #     else { median = values[medianIndex] }

# #     # Calculate the Median Absolute Deviation (MAD)
# #     for (i = 1; i <= n; i++) { absoluteDeviations[i] = abs(values[i] - median) }

# #     # Sort the absolute deviations in ascending order
# #     asort(absoluteDeviations)

# #     # Calculate the median index for absolute deviations
# #     madMedianIndex = int(n / 2) + 1

# #     # Calculate the MAD value
# #     if (n % 2 == 0) {
# #         mad = (absoluteDeviations[madMedianIndex] + absoluteDeviations[\
# #             madMedianIndex - 1\
# #         ]) / 2
# #     }
# #     else { mad = absoluteDeviations[madMedianIndex] }

# #     printf("Median: %d\n", median)
# #     printf("MAD: %d\n\n", mad)

# #     # Print the table with months, incidents, and deviation indicators
# #     for (i = 1; i <= n; i++) {
# #         printf("%s %d", monthArr[monthIndex], original_values[i])

# #         if (original_values[i] > (median + mad)) { printf(" ++") }
# #         else if (original_values[i] < (median - mad)) { printf(" --") }

# #         printf("\n")

# #         # Increment the month index cyclically
# #         monthIndex = (monthIndex % 12) + 1
# #     }
# # }

# #!/usr/bin/awk -f

# # Function to calculate absolute value
# function abs(x) { return x >= 0 ? x : -x }

# BEGIN {
#     # Define the months
#     months = "Jan Feb Mar Apr May Jun Jul Aug Sep Oct Nov Dec"

#     # Split the months into an array
#     split(months, monthArr)

#     # Initialize the month index
#     monthIndex = 1
# }

# # Read the values into an array
# { values[NR] = $1 }

# END {
#     # Calculate the number of values
#     n = NR

#     # Sort the values in ascending order
#     asort(values)

#     # Calculate the median index and value
#     medianIndex = int(n / 2) + 1
#     median = n % 2 == 0\
#         ? (values[medianIndex] + values[medianIndex - 1]) / 2\
#         : values[medianIndex]

#     # Calculate the Median Absolute Deviation (MAD)
#     for (i = 1; i <= n; i++) { absoluteDeviations[i] = abs(values[i] - median) }

#     # Sort the absolute deviations in ascending order
#     asort(absoluteDeviations)

#     # Calculate the MAD value
#     madMedianIndex = int(n / 2) + 1
#     mad = n % 2 == 0\
#         ? (absoluteDeviations[madMedianIndex] + absoluteDeviations[\
#             madMedianIndex - 1\
#         ]) / 2\
#         : absoluteDeviations[madMedianIndex]

#     # Print the median and MAD
#     printf("Median: %d\n", median)
#     printf("MAD: %d\n\n", mad)

#     # Print the table with months, incidents, and deviation indicators
#     for (i = 1; i <= n; i++) {
#         printf("%s %d", monthArr[monthIndex], values[i])

#         if (values[i] > median + mad) { printf(" ++") }
#         else if (values[i] < median - mad) { printf(" --") }

#         printf("\n")

#         # Increment the month index cyclically
#         monthIndex = monthIndex % 12 + 1
#     }
# }

#!/usr/bin/awk -f

# Function to calculate absolute value
# function abs(x) { return x >= 0 ? x : -x }

# BEGIN {
#     # Define the months
#     months = "Jan\tFeb\tMar\tApr\tMay\tJun\tJul\tAug\tSep\tOct\tNov\tDec"

#     # Split the months into an array
#     split(months, monthArr, "\t")

#     # Initialize the month index
#     monthIndex = 1
# }

# # Read the values into an array
# { original_values[NR] = $1 }

# END {
#     # Calculate the number of values
#     n = NR

#     # Create a copy of the original_values array
#     for (i = 1; i <= n; i++) { values[i] = original_values[i] }

#     # Sort the values in ascending order
#     asort(values)

#     # Calculate the median index and value
#     medianIndex = int(n / 2) + 1
#     median = n % 2 == 0\
#         ? (values[medianIndex] + values[medianIndex - 1]) / 2\
#         : values[medianIndex]

#     # Calculate the Median Absolute Deviation (MAD)
#     for (i = 1; i <= n; i++) { absoluteDeviations[i] = abs(values[i] - median) }

#     # Sort the absolute deviations in ascending order
#     asort(absoluteDeviations)

#     # Calculate the MAD value
#     madMedianIndex = int(n / 2) + 1
#     mad = n % 2 == 0\
#         ? (absoluteDeviations[madMedianIndex] + absoluteDeviations[\
#             madMedianIndex - 1\
#         ]) / 2\
#         : absoluteDeviations[madMedianIndex]

#     # Print the median and MAD
#     printf("Median:\t%d\n", median)
#     printf("MAD:\t%d\n\n", mad)

#     # Print the table header

#     # Print the table rows with months, incidents, and deviation indicators
#     for (i = 1; i <= n; i++) {
#         indicator = ""

#         if (original_values[i] > median + mad) { indicator = "++" }
#         else if (original_values[i] < median - mad) { indicator = "--" }

#         printf(\
#             "%s\t%d\t%s\n", monthArr[monthIndex], original_values[i], indicator\
#         )

#         # Increment the month index cyclically
#         monthIndex = monthIndex + 1
#     }
# }
function abs(x) { return x >= 0 ? x : -x }

BEGIN {
    # Define the months
    months = "Jan\tFeb\tMar\tApr\tMay\tJun\tJul\tAug\tSep\tOct\tNov\tDec"

    # Split the months into an array
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

    # Calculate the median index and value
    # medianIndex = int(n / 2) + 1
    # median = n % 2 == 0\
    #     ? (values[medianIndex] + values[medianIndex - 1]) / 2\
    #     : values[medianIndex]

    # Calculate the Median Absolute Deviation (MAD)
    # for (i = 1; i <= n; i++) { absoluteDeviations[i] = abs(values[i] - median) }

    # # Sort the absolute deviations in ascending order
    # asort(absoluteDeviations)

    # Calculate the MAD value
    # madMedianIndex = int(n / 2) + 1
    # mad = n % 2 == 0\
    #     ? (absoluteDeviations[madMedianIndex] + absoluteDeviations[\
    #         madMedianIndex - 1\
    #     ]) / 2\
    #     : absoluteDeviations[madMedianIndex]

    # # Print the median and MAD
    printf("Median:\t%d\n", median)
    printf("MAD:\t%d\n\n", mad)

    # Print the table header

    # Print the table rows with months, incidents, and deviation indicators
    for (i = 1; i <= n; i++) {
        indicator = ""

        if (original_values[i] > median + mad) { indicator = "++" }
        else if (original_values[i] < median - mad) { indicator = "--" }

        printf(\
            "%s\t%d\t%s\n", monthArr[monthIndex], original_values[i], indicator\
        )

        # Increment the month index cyclically
        monthIndex = monthIndex + 1
    }
}
