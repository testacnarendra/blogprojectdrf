#!/user/bin/env bash
# sudo apt install -y python3-pip
# sudo apt install -y nginx
# sudo apt install -y virtualenv


#!/bin/bash
# Update the package list and install system dependencies
sudo apt-get update
sudo apt install -y nginx
sudo apt-get install -y python3-pip python3-venv

# Navigate to the project directory
cd /var/www/your_project

# Create a virtual environment and install dependencies
python3 -m venv venv
source venv/bin/activate
pip install -r requirements.txt
