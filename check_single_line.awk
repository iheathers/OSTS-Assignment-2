#!/usr/bin/env awk -f

# Check if given input has single line
BEGIN { count = 0 }

{ count++ }

END {
    if (count <= 1) { exit INVALID_INPUT_EXIT_CODE }

    exit SUCCESS_EXIT_CODE
}
