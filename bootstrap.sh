#!/bin/bash

sudo apt update -y
sudo apt install -y nginx

wget https://www.dropbox.com/s/0tfji09xogep6c4/index.html

sudo mv index.html /var/www/html/