# # Assuming 'my_variable' is the variable you want to check
# # Assign a multi-line value to 'my_variable'
# my_variable="Line 1
# Line 2
# Line 3"

# # Use Awk to check if 'my_variable' has multiple lines
# has_multiple_lines=$(awk -v var="$my_variable" 'BEGIN { lines = split(var, arr, "\n") } END { if (lines > 1) print "true"; else print "false" }')

# # Print the result
# echo "Variable has multiple lines: $has_multiple_lines"
