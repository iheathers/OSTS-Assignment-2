# #!/usr/bin/env awk -f
# BEGIN {
#     FS = OFS = "\t"
#     # NR > 1
# }

# # using the NF variable (number of fields) and subtracting 2 from it,  effectively deletes the last two columns
# # NR != 1 {
# #     NF -= 2
# #     print
# # }
# {
#     NF -= 2
#     print
# }

#!/usr/bin/env awk -f
BEGIN {
    FS = OFS = "\t"
    ORS = "\n"
}

{
    # Set the number of fields (NF) to 5, effectively removing all columns after column 5
    NF = 5

    # Reconstruct the modified line by joining the remaining fields with the field separator
    output = $1

    for (i = 2; i <= NF; i++) { output = output FS $i }

    # Print the modified line
    print output
}

# {
#     # for (i = 1; i <= NF; i++) {
#     #     if (i != 6 && i != 7) { printf("%s%s", $i, (i == NF) ? ORS : OFS) }
#     # }
#     print NF
# }
# {
#     # Split the input line into an array of fields using the field separator (FS)
#     split($0, fields, FS)

#     # Remove the 6th and 7th columns by using the splice() function to remove elements from the array
#     splice(fields, 6, 2)

#     # Reconstruct the modified line by joining the remaining fields with the field separator
#     output = fields[1]

#     for (i = 2; i <= NF; i++) { output = output FS fields[i] }

#     # Print the modified line
#     print output
# }
