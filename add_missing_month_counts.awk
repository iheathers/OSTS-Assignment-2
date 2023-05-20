#!/usr/bin/awk -f
BEGIN {
    TOTAL_MONTHS = 12

    # SET ALL COUNTS TO 0 IN THE BEGINNING
    for (i = 1; i <= TOTAL_MONTHS; i++) { monthCounts[i] = 0 }
}

{
    count = $1
    month = $2

    # SET COUNT TO CORRESPONDING COUNT FOR EXISTING COUNT
    monthCounts[month] = count
}

END {
    for (i = 1; i <= TOTAL_MONTHS; i++) { printf("%d %d\n", monthCounts[i], i) }
}
