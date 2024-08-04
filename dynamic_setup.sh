#!/bin/bash

# Update and upgrade system
sudo apt update
sudo apt upgrade -y

# Install necessary packages
sudo apt install -y build-essential libjpeg62-turbo-dev imagemagick libv4l-dev cmake git

# Clone MJPG Streamer repository
git clone https://github.com/jacksonliam/mjpg-streamer.git
cd mjpg-streamer/mjpg-streamer-experimental

# Compile MJPG Streamer
make

# Get the current working directory
CURRENT_DIR=$(pwd)


# Create systemd service file with dynamic paths
echo "[Unit]
Description=Start mjpeg-stream
After=network.target

[Service]
ExecStart=${CURRENT_DIR}/start.sh
WorkingDirectory=${CURRENT_DIR}
StandardOutput=inherit
StandardError=inherit
Restart=always
User=pi

[Install]
WantedBy=multi-user.target" | sudo tee /etc/systemd/system/mjpeg-stream.service

# Enable and start the service
sudo systemctl enable mjpeg-stream.service
sudo systemctl start mjpeg-stream.service
