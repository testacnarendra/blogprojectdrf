#!/usr/bin/env bash
sudo cp /home/ubuntu/blogprojectdrf/gunicorn/gunicorn.socket /etc/systemd/system/gunicorn.socket
sudo cp /home/ubuntu/blogprojectdrf/gunicorn/gunicorn.service /etc/systemd/system/gunicorn.service

sudo mkdir -p /run/gunicorn
sudo chown ubuntu:ubuntu /run/gunicorn
sudo chmod 755 /run/gunicorn

sudo systemctl daemon-reload
sudo systemctl start gunicorn.socket
sudo systemctl start gunicorn.service
sudo systemctl enable gunicorn.service


