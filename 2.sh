#!/bin/bash

SOURCE_DIR="/$HOME/tmp"

BACKUP_DIR="/$HOME/tmp1"

TIMESTAMP=$(date +"%Y-%m-%d_%H-%M-%S")

DEST="$BACKUP_DIR/backup_$TIMESTAMP"

cp -r "$SOURCE_DIR" "$DEST"


