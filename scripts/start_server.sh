#!/bin/bash
# Navigate to the project directory
cd /var/www/your_project

# Activate the virtual environment
source venv/bin/activate

# Run migrations and collect static files
python manage.py migrate
python manage.py collectstatic --noinput

# Start the Gunicorn server
gunicorn --workers 3 --bind 0.0.0.0:8000 your_project.wsgi:application --daemon
