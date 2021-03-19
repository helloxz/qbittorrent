# qbittorrent
qbittorrent docker版



## 运行

```bash
docker run -d \
  --name=qbittorrent \
  -p 7881:7881 \
  -p 7881:7881/udp \
  -p 18080:18080 \
  -v /data/qbittorrent/config:/etc/qBittorrent \
  -v /data/qbittorrent/downloads:/downloads \
  --restart unless-stopped \
  helloz/qbittorrent
```

