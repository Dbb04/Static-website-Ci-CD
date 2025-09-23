#!/bin/bash

# Update package list
sudo apt update -y

# Install Nginx if not already installed
if ! command -v nginx &> /dev/null
then
    echo "Installing Nginx..."
    sudo apt install -y nginx
else
    echo "Nginx is already installed."
fi

# Enable and start Nginx
sudo systemctl enable nginx
sudo systemctl start nginx

echo "Nginx installation completed."
