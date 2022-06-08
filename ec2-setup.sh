#!/bin/bash

sudo apt-get update

# install docker
sudo curl -fsSL https://get.docker.com -o get-docker.sh
sh get-docker.sh

sudo docker run -d -e ADMIN_PASSWORD=Password123 -e DATABASE_ENDPOINT=mysql://foo:foobarbaz@"${terraform outputs -raw rds_url}"/mendix dockerdovitor/simple-crud-api-mendix:3da61805
# sudo apt-get install -y stress-ng

# sudo stress-ng --cpu 32 --timeout 180 --metrics-brief