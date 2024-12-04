#!/usr/bin/env bash

python3 -m venv /home/ubuntu/env

# Activate the virtual environment
source /home/ubuntu/env/bin/activate

# Upgrade pip inside the virtual environment
pip install --upgrade pip

# Install dependencies
pip install -r requirements.txt