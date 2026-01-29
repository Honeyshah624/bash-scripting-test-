#write a script you need to take the backup of a directory by using a script that runs every two minutes and give a file or a directory naming convention that should be a current date and time.

#!/bin/bash

SOURCE_DIR="/$HOME/tmp"

BACKUP_DIR="/$HOME/tmp1"

TIMESTAMP=$(date +"%Y-%m-%d_%H-%M-%S")

DEST="$BACKUP_DIR/backup_$TIMESTAMP"

cp -r "$SOURCE_DIR" "$DEST"


