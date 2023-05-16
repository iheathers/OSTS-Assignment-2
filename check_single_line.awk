#!/usr/bin/env awk -f

# Check if the file is single line
BEGIN {
    SUCCESS_EXIT_CODE = 0
    INVALID_FILE_EXIT_CODE = 4
}

END {
    if (NR == 1) { exit INVALID_FILE_EXIT_CODE }

    exit SUCCESS_EXIT_CODE
}
