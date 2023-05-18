#!/usr/bin/env awk -f
BEGIN {
    FS = "\t"
    OFS = "\t"
    print\
        "Name_of_Covered_Entity",
        "State",
        "Individuals_Affected",
        "Date_of_Breach",
        "Type_of_Breach",
        "Month",
        "Year"
}

{ print }
