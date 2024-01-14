#!/bin/bash

# Change directory to the location of static files and start a basic HTTP server
cd /home/ubuntu/app # Change this to your directory containing static files
exec &>> /home/ubuntu/app/gunicorn.log
gunicorn -w 1 -b 127.0.0.1:5000 app:app >> /home/ubuntu/app/gunicorn.log 2>&1 &

# Remove existing contents of the NGINX default file
sudo truncate -s 0 /etc/nginx/sites-available/default

# Write the new configuration to the NGINX default file
cat <<EOL | sudo tee /etc/nginx/sites-available/default
server {
    listen 80;
    server_name your-domain.com;  # Replace with your actual domain

    location / {
        proxy_pass http://127.0.0.1:5000;  # Assuming Gunicorn is running on port 5000 locally
        proxy_redirect off;
        proxy_set_header Host \$host;
        proxy_set_header X-Real-IP \$remote_addr;
        proxy_set_header X-Forwarded-For \$proxy_add_x_forwarded_for;
        proxy_set_header X-Forwarded-Proto \$scheme;
    }
}
EOL

sudo ln -s /etc/nginx/sites-available/default /etc/nginx/sites-enabled/

# Verify the NGINX configuration
sudo nginx -t

# Restart NGINX to apply the new configuration
sudo systemctl restart nginx


