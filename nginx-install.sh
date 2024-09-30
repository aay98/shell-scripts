#!/bin/bash
#STEP 1 install nginx and certbot
sudo apt install nginx -y && sudo apt-get install certbot python3-certbot-nginx -y
#STEP 2 change default config (if your user haven't anouth access to vm use sudo su)
sudo echo "server {
        listen 80 default_server;
        listen [::]:80 default_server;
        root /var/www/html;
        index index.html index.htm index.nginx-debian.html;
        server_name _;

        location / {
                proxy_pass http://127.0.0.1:6432/;
        }
}" > /etc/nginx/sites-available/default


#STEP 3 create and setup certificate
sudo certbot --nginx --agree-tos -m andrew@anashkin1.ru --redirect -d $1
        location /test {
                proxy_pass http://127.0.0.1:8000;
                proxy_set_header Host $host;
                proxy_set_header X-Real-IP $remote_addr;
                proxy_set_header X-Forwarded-For $proxy_add_x_forwarded_for;
                proxy_set_header X-Forwarded-Proto $scheme;
        }
