ocker run -d \
  --name=jellyfin \
  -e PUID=0 \
  -e PGID=0 \
  -e TZ=Asia/Dhaka \
  -v /docker/jellyfin-new/config:/config \
  -v /docker/jellyfin-new/cache:/cache \
  -v /docker/jellyfin-new/config.json:/jellyfin/jellyfin-web/config.json \
  -v /var/ftpshare/data:/data \
  --network=external \
  --restart unless-stopped \
  jellyfin/jellyfin:latest
