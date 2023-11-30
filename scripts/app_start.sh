#!/bin/bash

cd /var/www/html  # Change this to your directory containing static files
python -m http.server 8000 &  # Start a simple HTTP server on port 8000 (adjust as needed)
