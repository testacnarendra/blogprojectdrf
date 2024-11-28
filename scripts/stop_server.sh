#!/usr/bin/env bash

# Script to safely stop Gunicorn processes

echo "Stopping Gunicorn processes..."

# Check if any Gunicorn processes are running
if pgrep -f gunicorn > /dev/null; then
    # Kill all processes matching 'gunicorn'
    pkill -f gunicorn
    
    # Confirm the processes were stopped
    if pgrep -f gunicorn > /dev/null; then
        echo "Failed to stop all Gunicorn processes. Please check manually."
    else
        echo "Gunicorn processes stopped successfully."
    fi
else
    echo "No Gunicorn processes found."
fi

# Log the operation for debugging purposes
LOG_FILE="/var/log/server_stop.log"
echo "$(date): Stopped Gunicorn processes." >> "$LOG_FILE"
