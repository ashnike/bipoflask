#!/bin/bash

# Copy static files to the deployment directory
cp -r /home/ubuntu/bioflask/* /var/www/html/
# Optionally, set appropriate permissions or configurations for serving static content
