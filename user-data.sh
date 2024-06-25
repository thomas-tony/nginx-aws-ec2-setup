#!/bin/bash
# Update the package
yum update -y
# Install Nginx
yum install nginx -y
# Enable Nginx to start on boot
systemctl enable nginx
# Start Nginx
systemctl start nginx
# Modify the permissions of the html directory
chmod 2775 /usr/share/nginx/html
find /usr/share/nginx/html -type d -exec chmod 2775 {} \;
find /usr/share/nginx/html -type f -exec chmod 0664 {} \;
#  writes the HTML content into the index.html file
echo "<html><h1>Hello, welcome to your web server!</h1></html>" > /usr/share/nginx/html/index.html