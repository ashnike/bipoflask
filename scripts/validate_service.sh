#!/bin/bash
cd /home/ubuntu/app
# Example: Check if Flask app is running
if pgrep -f "python app.py" > /dev/null
then
    echo "Flask application is running."
    exit 0
else
    echo "Flask application is not running."
    exit 1
fi
