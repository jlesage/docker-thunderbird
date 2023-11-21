#!/bin/sh

set -e # Exit immediately if a command exits with a non-zero status.
set -u # Treat unset variables as an error.

export HOME=/config
cd /config
exec /usr/bin/thunderbird -profile /config/profile >> /config/log/thunderbird/output.log 2>> /config/log/thunderbird/error.log
