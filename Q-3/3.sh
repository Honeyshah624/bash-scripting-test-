#!/bin/bash

if [ $# -eq 0 ]; then
    echo "no arguments provided "
    exit 1
fi

FILE="$1"

if [ -f "$FILE" ]; then
    LINES=$(wc -l < "$FILE") 
    WORDS=$(wc -w < "$FILE")  
    echo "File '$FILE' exists."
    echo "Number of lines: $LINES"
    echo "Number of words: $WORDS"
else
    echo " '$FILE' does not exist."
    echo "error"
    exit 1
fi
