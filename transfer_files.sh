#!/bin/bash

# Script: transfer_files.sh
# Description: Transfer files from Server A to Server B using rsync over SSH.

########################
# Configuration
########################

# Username with SSH access to both servers
USERNAME="admin"

# Server hostnames or IP addresses
SOURCE_SERVER="serverA"
DESTINATION_SERVER="serverB"

# Absolute paths to source and destination directories
SOURCE_PATH="/Users/natali/Documents/test"
DESTINATION_PATH="//Users/natali/Documents/Projects"

########################
# Transfer Process
########################

echo "Starting file transfer from ${SOURCE_SERVER} to ${DESTINATION_SERVER}..."

# Use rsync to transfer files
# -a: Archive mode (preserves permissions, timestamps, etc.)
# -v: Verbose
# -z: Compress file data during the transfer
# -e ssh: Specifies the remote shell to use (SSH in this case)
rsync -avz -e ssh "${USERNAME}@${SOURCE_SERVER}:${SOURCE_PATH}" "${USERNAME}@${DESTINATION_SERVER}:${DESTINATION_PATH}"

echo "File transfer complete."
