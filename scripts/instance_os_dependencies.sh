#!/usr/bin/env bash
# Update the package list and install system dependencies
sudo apt update -y
sudo apt install python3-venv python3-dev libpq-dev postgresql postgresql-contrib nginx curl -y
sudo apt install python3.12-venv -y

python3 -m venv /home/ubuntu/env
# Activate the virtual environment
source /home/ubuntu/env/bin/activate
pip3 install django gunicorn psycopg2-binary


echo "Instance cleanup and setup complete."
