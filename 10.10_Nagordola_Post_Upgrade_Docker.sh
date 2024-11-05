#!/bin/bash

# Navigate to the Jellyfin web directory
cd /jellyfin/jellyfin-web || exit

# Change the title from "Jellyfin" to "Nagordola"
grep -rl 'document\.title="Jellyfin"' . | while read -r file; do
    sed -i 's/document\.title="Jellyfin"/document\.title="Nagordola"/g' "$file"
done

grep -rl 'document.title=e||"Jellyfin"' . | while IFS= read -r file; do
    sed -i 's/document.title=e||"Jellyfin"/document.title=e||"Nagordola"/g' "$file"
done

# Edit the main.jellyfin.bundle.js file
sed -i 's/enableBackdrops:function(){return L}/enableBackdrops:function(){return E}/g' main.jellyfin.bundle.js
sed -i 's/t=parseInt(this.get("libraryPageSize",!1),10);return 0===t?0:t||100}}/t=parseInt(this.get("libraryPageSize",!1),10);return 0===t?0:t||0}}/g' main.jellyfin.bundle.js

# Replace all "Jellyfin" with "Nagordola" in main.jellyfin.bundle.js
sed -i 's/Jellyfin/Nagordola/g' main.jellyfin.bundle.js

# Replace all "Jellyfin" with "Nagordola" in index.html
sed -i 's/Jellyfin/Nagordola/g' index.html

# Replace specific files with new versions
curl -o /jellyfin/jellyfin-web/bc8d51405ec040305a87.ico https://raw.githubusercontent.com/aaemon/nagordola/main/assets/Nagordola-icon.ico
curl -o /jellyfin/jellyfin-web/baba78f2a106d9baee83.png https://raw.githubusercontent.com/aaemon/nagordola/main/assets/Nagordola-icon.png
curl -o /jellyfin/jellyfin-web/assets/img/icon-transparent.png https://raw.githubusercontent.com/aaemon/nagordola/main/assets/Nagordola-icon.png
curl -o /jellyfin/jellyfin-web/assets/img/banner-light.png https://raw.githubusercontent.com/aaemon/nagordola/main/assets/Nagordola-logo.png
curl -o /jellyfin/jellyfin-web/assets/img/banner-dark.png https://raw.githubusercontent.com/aaemon/nagordola/main/assets/Nagordola-logo.png
curl -o /jellyfin/jellyfin-web/assets/img/background.png https://raw.githubusercontent.com/aaemon/nagordola/main/assets/background.png
curl -o /jellyfin/jellyfin-web/assets/img/carnival.png https://raw.githubusercontent.com/aaemon/nagordola/main/assets/carnival.png


echo "Jellyfin update script has completed successfully."
