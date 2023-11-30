#!/bin/bash

# Update the package manager and install required system dependencies
cd /home/ubuntu/app
apt-get update
apt-get install -y python3-pip python3-venv

apt-get install -y nginx

# Remove existing contents of the NGINX default file
sudo truncate -s 0 /etc/nginx/sites-available/default

# Write the new configuration to the NGINX default file
cat <<EOL | sudo tee /etc/nginx/sites-available/default
server {
    listen 80;
    server_name your-domain.com;  # Replace with your actual domain

    location / {
        proxy_pass http://localhost:5000;  # Replace with your app's address
        proxy_set_header Host \$host;
        proxy_set_header X-Real-IP \$remote_addr;
        # Additional proxy_set_header directives if needed
    }
}
EOL

sudo ln -s /etc/nginx/sites-available/default /etc/nginx/sites-enabled/

# Verify the NGINX configuration
sudo nginx -t

# Restart NGINX to apply the new configuration
sudo systemctl restart nginx
