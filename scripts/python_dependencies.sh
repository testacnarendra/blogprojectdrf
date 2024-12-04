#!/usr/bin/env bash

sudo apt install python3.12-venv -y

python3 -m venv /home/ubuntu/env

# Activate the virtual environment
source /home/ubuntu/env/bin/activate

# Upgrade pip inside the virtual environment
pip install --upgrade pip

# Install dependencies
pip install -r /home/ubuntu/blogprojectdrf/requirements.txt