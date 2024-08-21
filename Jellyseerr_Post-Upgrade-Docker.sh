#!/bin/bash

# Backup existing logo files
cp /app/public/logo_stacked.svg /app/public/logo_stacked.bk.svg
cp /app/public/logo_full.svg /app/public/logo_full.bk.svg
cp /app/public/logo_full.png /app/public/logo_full.bk.png

# Download the new logo files using curl
curl -o /app/public/logo_stacked.svg https://raw.githubusercontent.com/aaemon/nagordola/main/assets/Nagordola-logo.svg
curl -o /app/public/logo_full.svg https://raw.githubusercontent.com/aaemon/nagordola/main/assets/Nagordola-logo.svg
curl -o /app/public/logo_full.png https://raw.githubusercontent.com/aaemon/nagordola/main/assets/Nagordola-logo.png


echo "Jellyfin update script has completed successfully."