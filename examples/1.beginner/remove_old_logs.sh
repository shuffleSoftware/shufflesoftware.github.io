#!/bin/bash

# To store logging, uncomment below line
# Explanation: 
# exec > /dev/null: Discards all stdout
# 2> >(tee /tmp/remove_old_logs.log): Redirects stderr to a process
#   substitution that passes the error messages through tee, which logs them
#   to the file while still showing them in the terminal
#   This ensures only stderr is processed by tee, while stdout is entirely discarded

# exec > /dev/null 2> >(tee /tmp/remove_old_logs.log).

# Cleanup log files older than N days or default to 30
DAYS="${1:-30}"
EXTENSION_FILE="${2:-log}"
LOG_DIR=${2:-/var/log}
find "$LOG_DIR" -type f -name "*.$EXTENSION_FILE" -mtime +$DAYS -exec rm -f {} \;