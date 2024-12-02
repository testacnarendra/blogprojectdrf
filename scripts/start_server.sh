#!/usr/bin/env bash
# Navigate to the project directory
cd /home/ubuntu

# Activate the virtual environment
source env/bin/activate

# Database File Permissions
sudo chown -R ubuntu:ubuntu /home/ubuntu/blogprojectdrf
sudo chmod -R 755 /home/ubuntu/blogprojectdrf

cd /home/ubuntu/blogprojectdrf
# Run migrations and collect static files
python manage.py migrate
python manage.py collectstatic 
sudo ufw allow 8000

# Start the Gunicorn server
gunicorn --workers 3 --bind 0.0.0.0:8000 myproject.wsgi:application --daemon
