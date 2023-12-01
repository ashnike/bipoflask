#!/bin/bash

# Change directory to the location of static files and start a basic HTTP server
cd /home/ubuntu/app # Change this to your directory containing static files
exec &>> /home/ubuntu/app/gunicorn.log
gunicorn -w 1 -b 127.0.0.1:5000 app:app >> /home/ubuntu/app/gunicorn.log 2>&1 &


