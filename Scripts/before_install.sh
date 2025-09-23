#!/bin/bash
# Install Nginx if it's not already there
yum update -y
amazon-linux-extras install nginx1 -y

# Clean out the deployment directory
rm -rf /usr/share/nginx/html/*