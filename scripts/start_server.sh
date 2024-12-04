#!/usr/bin/env bash
# Navigate to the project directory
cd /home/ubuntu

# Activate the virtual environment
source env/bin/activate

# Database File Permissions
sudo chown -R ubuntu:ubuntu /home/ubuntu/blogprojectdrf
sudo chmod -R 755 /home/ubuntu/blogprojectdrf

cd /home/ubuntu/blogprojectdrf
python manage.py migrate
python manage.py collectstatic --noinput
sudo ufw allow 8000

# Start the Gunicorn server
gunicorn --workers 3 --bind 0.0.0.0:8000 myproject.wsgi:application


# Check if port 8000 is in use
PORT=8000
if lsof -i :$PORT | grep LISTEN; then
    echo "Port $PORT is already in use. Killing the process..."
    fuser -k $PORT/tcp    
fi