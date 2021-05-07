#!/bin/bash

# apt update 
# apt install nginx -y
# apt install npm -y
# node -v
# npm -v
# nginx -v
Change The Directory To /var/www/html.

# cd /var/www/html
Create a Directory name as todo And Change to todo.

# mkdir todo 
# cd todo
Pull The Code From github.com

# git clone  https://github.com/surendradzelar/frontend.git
# ls
Change The Directory to frontend.

# cd frontend
Now We Getting And Build The Code Using npm run build Command...

# npm run build
I Get An Error Will doing npm run build Command I install shelljs

# npm install shelljs
Found a "dist" Word in location /var/www/html/todo/frontend.

# cd /var/www/html/todo/frontend
# ls
Now configure the nginx

# vim /etc/nginx/sites-available/default
Move the location

root /var/www/html; to root /var/www/html/todo/frontend/dist

Restarting and enable The nginx server

# systemctl restart nginx
# systemctl enable nginx