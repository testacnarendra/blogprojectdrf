#!/usr/bin/env bash

# Stop Gunicorn server (if you're using Gunicorn)
echo "Stopping Gunicorn server..."
sudo systemctl stop gunicorn

# Stop Nginx server (if you're using Nginx)
echo "Stopping Nginx server..."
sudo systemctl stop nginx

# Optionally, you can stop other services or processes related to your application
# Example: stopping Celery worker if you're using it
# echo "Stopping Celery worker..."
# sudo systemctl stop celery

echo "Servers stopped successfully."