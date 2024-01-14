#!/bin/bash

# Update the package manager and install required system dependencies
cd /home/ubuntu/app
apt-get update
apt-get install -y python3-pip python3-venv

apt-get install -y nginx
pip install gunicorn

