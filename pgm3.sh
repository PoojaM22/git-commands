#!/bin/bash
 sudo apt-get update
 sudo apt-get install wget unzip apache2 -y > /dev/null

 echo "start and enable apache services"

sudo systemctl start apache2

sudo systemctl enable apache2

echo "save web files"

mkdie webfiles
cd webfiles
wget https://www.tooplate.com/zip-templates/2098_health.zip > /dev/null
unzip 2098_health.zip > /dev/null

sudo cp -r 2098_health/* /var/www/html/

sudo systemctl restart apache2

