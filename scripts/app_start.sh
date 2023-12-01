#!/bin/bash

# Change directory to the location of static files and start a basic HTTP server
cd /home/ubuntu/app # Change this to your directory containing static files
gunicorn -w 1 -b 127.0.0.1:5000 app:app


