#!/bin/bash
cd /home/ubuntu/app


# Example: Check if Flask app is running with Gunicorn
if pgrep -f "gunicorn -w 1 -b 127.0.0.1:5000 app:app" > /dev/null
then
    echo "Flask application is running with Gunicorn."
    exit 0
else
    echo "Flask application is not running with Gunicorn."
    exit 1
fi

