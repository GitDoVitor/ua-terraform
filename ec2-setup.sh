#!/bin/bash

sudo apt-get update

# install docker
sudo curl -fsSL https://get.docker.com -o get-docker.sh
sh get-docker.sh

# install apache
sudo apt-get install-y apache2
echo 'Hello from terraform' > /var/www/html/index.html
service httpd start

sudo apt-get install -y stress-ng

# sudo stress-ng --cpu 32 --timeout 180 --metrics-brief