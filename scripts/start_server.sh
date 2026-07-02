#!/bin/bash
cd /home/ubuntu/app
# Safely clear any legacy processes occupying port 80
sudo kill -9 $(sudo lsof -t -i:80) || true
# Install production dependencies
pip install -r requirements.txt
# Launch the application completely detached as a background process
sudo nohup python3 app.py > /dev/null 2>&1 &