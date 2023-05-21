BEGIN {
    FS = "\t"
    OFS = "\t"

    # US STATES
    validStateCodes = "AL AK AZ AR CA CO CT DE FL GA HI ID IL IN IA KS KY LA ME MD MA MI MN MS MO MT NE NV NH NJ NM NY NC ND OH OK OR PA RI SC SD TN TX UT VT VA WA WV WI WY"

    # Split the state codes into an array
    split(validStateCodes, stateCodesArr, " ")
}

function isValidStateCode(code) {
    # Loop through the valid state codes array to check for a match
    for (i in stateCodesArr) {
        if (stateCodesArr[i] == code) {
            return 1 # Found a match, state code is valid
        }
    }

    return 0 # No match found or invalid format, state code is not valid
}

{
    stateCode = toupper($STATE_COL_IDX)

    if (isValidStateCode(stateCode)) {
        $STATE_COL_IDX = stateCode
        print
    }
}
