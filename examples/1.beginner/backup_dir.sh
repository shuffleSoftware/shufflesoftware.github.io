#!/bin/bash

unset -v SOURCE_DIR
unset -v BACKUP_DIR

while getopts s:d: opt; do
        case $opt in
                s) SOURCE_DIR=$OPTARG ;;
                d) BACKUP_DIR=$OPTARG ;;
                *)
                        echo 'Error in command line parsing' >&2
                        exit 1
        esac
done

shift "$(( OPTIND - 1 ))"

if [ -z "$SOURCE_DIR" ] || [ -z "$BACKUP_DIR" ]; then
        echo 'Missing -s or -b' >&2
        exit 1
fi

DATE=$(date +"%Y%m%d_%H%M%S")

mkdir -p "$BACKUP_DIR"
tar -czf "$BACKUP_DIR/backup_$DATE.tar.gz" "$SOURCE_DIR"
echo "Backup completed: $BACKUP_DIR/backup_$DATE.tar.gz"

# to 'untar': tar -xvzf backup_$DATE.tar.gz