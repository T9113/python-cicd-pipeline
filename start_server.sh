#!/bin/bash
cd /home/ubuntu/app
# Cleanly terminate any active service processing on Port 80
sudo kill -9 $(sudo lsof -t -i:80) || true
# Install code requirements
pip install -r requirements.txt
# Launch your Flask app in the background detached
sudo nohup python3 app.py > /dev/null 2>&1 &