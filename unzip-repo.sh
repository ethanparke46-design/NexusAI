#!/bin/bash

# NexusAI Repository Download and Unzip Script
# This script downloads the NexusAI repository as a ZIP file and unzips it

echo "Starting NexusAI repository download..."

# Download the repository as ZIP
curl -L https://github.com/ethanparke46-design/NexusAI/archive/refs/heads/main.zip -o NexusAI.zip

if [ $? -eq 0 ]; then
    echo "Download completed successfully!"
    echo "Unzipping NexusAI.zip..."
    
    # Unzip the file
    unzip NexusAI.zip
    
    if [ $? -eq 0 ]; then
        echo "Unzip completed successfully!"
        echo "Repository extracted to: NexusAI-main/"
        echo "You can now access the repository files."
        
        # Optional: Remove the ZIP file after extraction
        rm NexusAI.zip
        echo "Cleaned up ZIP file."
    else
        echo "Error: Unzip failed!"
        exit 1
    fi
else
    echo "Error: Download failed!"
    exit 1
fi
