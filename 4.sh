#!/bin/bash

INPUT_FILE="app.log"

OUTPUT_FILE="CLEANED.log"

if [ ! -f "$INPUT_FILE" ]; then
    echo "'$INPUT_FILE' does not exist."
    exit 1
fi

sed 's/ERROR/err/g; /DEBUG/d' "$INPUT_FILE" > "$OUTPUT_FILE"

