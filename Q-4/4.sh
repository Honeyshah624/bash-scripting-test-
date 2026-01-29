#Write a script file that contains First, it accepts the file name as argument. Second, check if the file exists or not. And the third one is if exists, so that the content are 1-the number of lines, 2- number of words, and 3-if not exist, print as an error message.

#!/bin/bash

INPUT_FILE="app.log"

OUTPUT_FILE="CLEANED.log"

if [ ! -f "$INPUT_FILE" ]; then
    echo "'$INPUT_FILE' does not exist."
    exit 1
fi

sed 's/ERROR/err/g; /DEBUG/d' "$INPUT_FILE" > "$OUTPUT_FILE"

