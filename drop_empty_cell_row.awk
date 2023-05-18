#!/usr/bin/env awk -f
BEGIN { FS = OFS = "\t" }

{
    emptyFound = 0

    for (i = 1; i <= NF; i++) {
        if ($i == "" || $i ~ /^[[:space:]]*$/) {
            emptyFound = 1
            break
        }
    }

    if (!emptyFound) { print }
}
