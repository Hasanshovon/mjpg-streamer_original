
# MJPG Streamer Setup

This repository contains two setup scripts for installing and running MJPG Streamer on a Raspberry Pi. The scripts are designed to set up MJPG Streamer and create a systemd service to run it automatically.

## Files

- `setup.sh`: Sets up MJPG Streamer with static paths.
- `dynamic_setup.sh`: Sets up MJPG Streamer with dynamic paths, determined at runtime.

## Prerequisites

Ensure you have the necessary permissions to execute the setup scripts. You might need to use `sudo` for certain commands.

## Usage

### 1. Static Path Setup (`setup.sh`)

This script installs MJPG Streamer and sets up the systemd service using static paths. Use this if you prefer fixed paths for the installation.

#### Steps

1. Make the script static executable:
   ```bash
   chmod +x ./setup.sh
   
   ```
   ```bash
   ./setup.sh
2. dynamic
  ```bash
   chmod +x ./dynamic_setup
   
   ```
   ```bash
   ./dynamic_setup
