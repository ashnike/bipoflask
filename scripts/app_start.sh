#!/bin/bash

# Change directory to the location of static files and start a basic HTTP server
cd /home/ubuntu/app # Change this to your directory containing static files
#python -m http.server 8000 &  # Start a simple HTTP server on port 8000 (adjust as needed)
gunicorn -w 2 -b 127.0.0.1:5000 app:app

