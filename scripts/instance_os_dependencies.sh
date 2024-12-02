#!/usr/bin/env bash
# Update the package list and install system dependencies
sudo apt-get update
sudo apt install python3-venv python3-dev libpq-dev postgresql postgresql-contrib nginx curl
sudo apt install python3-pip

# Create a virtual environment and install dependencies
cd /home/ubuntu/
python3 -m venv env
source env/bin/activate
pip install django gunicorn psycopg2-binary

# Navigate to the project directory (update path as needed)
cd /home/ubuntu/blogprojectdrf/
pip install -r requirements.txt || echo "requirements.txt not found or pip failed to execute"

echo "Instance cleanup and setup complete."
