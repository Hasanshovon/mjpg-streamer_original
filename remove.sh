#!/bin/bash

# Stop and disable the MJPG Streamer service
sudo systemctl stop mjpeg-stream.service
sudo systemctl disable mjpeg-stream.service

# Remove the systemd service file
sudo rm /etc/systemd/system/mjpeg-stream.service

# Reload systemd to apply the changes
sudo systemctl daemon-reload

echo "MJPG Streamer service has been stopped, disabled, and its systemd service file has been removed."
