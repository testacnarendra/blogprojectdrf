#!/usr/bin/env bash

# virtualenv /home/ubuntu/env
source /home/ubuntu/env/bin/activate
sudo apt-get install python3-pip -y
pip install --upgrade pip
pip3 install -r /home/ubuntu/blogprojectdrf/requirements.txt