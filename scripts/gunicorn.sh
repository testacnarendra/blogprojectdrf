sudo cp /home/ubuntu/awsCodeDeployTest/gunicorn/gunicorn.socket /etc/systemd/system/gunicorn.socket
sudo cp /home/ubuntu/awsCodeDeployTest/gunicorn/gunicorn.service /etc/systemd/system/gunicorn.service

sudo systemctl start gunicorn.service
sudo systemctl enable gunicorn.service


