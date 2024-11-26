#!/user/bin/bash

sudo systemctl daemon-reload
sudo rm -f /etc/nginx/sites-enabled/default

sudo cp /home/ubuntu/<projectRootFolder>/nginx/nginx.conf /etc/nginx/sites-available/<projectName>
sudo ln -s /etc/nginx/sites-available/<projectName> /etc/nginx/sites-enabled/

sudo gpasswd -a www-data ubuntu
sudo systemctl restart nginx