#!/bin/bash

# Find and kill the Gunicorn process safely
echo "Stopping Gunicorn processes..."

if pgrep -f gunicorn > /dev/null; then
    pkill -f gunicorn
    echo "Gunicorn processes stopped successfully."
else
    echo "No Gunicorn processes found."
fi