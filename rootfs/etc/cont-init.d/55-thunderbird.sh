#!/bin/sh

set -e # Exit immediately if a command exits with a non-zero status.
set -u # Treat unset variables as an error.

# Make sure some directories are created.
#mkdir -p /config/downloads
mkdir -p /config/log/thunderbird
mkdir -p /config/profile

# Generate machine id.
#if [ ! -f /config/machine-id ]; then
#    echo "generating machine-id..."
#    cat /proc/sys/kernel/random/uuid | tr -d '-' > /config/machine-id
#fi

# Initialize log files.
for LOG_FILE in /config/log/thunderbird/output.log /config/log/thunderbird/error.log
do
    touch "$LOG_FILE"

    # Make sure the file doesn't grow indefinitely.
    if [ "$(stat -c %s "$LOG_FILE")" -gt 1048576 ]; then
       echo > "$LOG_FILE"
    fi
done

# vim:ft=sh:ts=4:sw=4:et:sts=4
