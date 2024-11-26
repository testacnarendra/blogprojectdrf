#!/bin/bash
# Navigate to the project directory
cd /home/ubuntu/awsCodeDeployTest

# Activate the virtual environment
source env/bin/activate

# Run migrations and collect static files
python manage.py migrate
python manage.py collectstatic --noinput

# Start the Gunicorn server
gunicorn --workers 3 --bind 0.0.0.0:8000 myproject.wsgi:application --daemon
