#!/usr/bin/env bash
# Update the package list and install system dependencies
sudo apt-get update
sudo apt install -y python3-pip python3-venv python3-dev libpq-dev nginx gunicorn curl 


# Create a virtual environment and install dependencies
cd /home/ubuntu/
python3 -m venv env
source env/bin/activate

# Navigate to the project directory (update path as needed)
cd /home/ubuntu/blogprojectdrf/
pip install -r requirements.txt || echo "requirements.txt not found or pip failed to execute"

echo "Instance cleanup and setup complete."
