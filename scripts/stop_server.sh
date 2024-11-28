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

