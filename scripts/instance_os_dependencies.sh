#!/usr/bin/env bash
# Update the package list and install system dependencies
sudo apt-get update -y
sudo apt install python3-venv python3-dev libpq-dev postgresql postgresql-contrib nginx curl
sudo apt-get install python3-pip -y
pip install --upgrade pip

# Create a virtual environment and install dependencies
cd /home/ubuntu/
python3 -m venv env
source env/bin/activate
pip3 install django gunicorn psycopg2-binary

# Navigate to the project directory (update path as needed)
cd /home/ubuntu/blogprojectdrf/
pip3 install -r requirements.txt

echo "Instance cleanup and setup complete."
