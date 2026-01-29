#Write the script from app.log that contains :-1-replace all occurrences of “DEBUG” with “err”.2- delete all debug log lines and 3- save the output to the “CLEANED. log file.

#!/bin/bash

if [ $# -eq 0 ]; then
    echo "no arguments provided "
    exit 1
fi

FILE="$1"

if [ -e "$FILE" ]; then
    LINES=$(wc -l < "$FILE") 
    WORDS=$(wc -w < "$FILE")  
    echo "File '$FILE' exists."
    echo "Number of lines: $LINES"
    echo "Number of words: $WORDS"
else
    echo " '$FILE' does not exist."
    exit 1
fi
