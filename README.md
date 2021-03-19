# qBittorrent
qBittorrent是一个跨平台的自由BitTorrent客户端，其图形用户界面是由Qt所写成的。使用libtorrent作为后端。该项目可轻松帮助您构建qBittorrent Docker版，或在Docker中直接运行qBittorrent

## 版本说明

* 基于Debian 10 x64镜像制作
* qBittorrent版本为`v4.1.5`

## 自行构建

```bash
#克隆此项目
git clone https://github.com/helloxz/qbittorrent.git
#进入项目
cd qbittorrent
#构建docker镜像
docker build -t qbittorrent:latest .
```



## 运行

不想自行构建的，可通过xiaoz构建好的镜像直接运行：

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

* `7881`：用于传入连接的端口，TCP/UDP都需要映射，且主机端口和容器端口必须一致，否则无法下载和上传
* `18080`：qBittorrentWEBUI访问端口，主机端口和容器端口必须一致，否则无法打开WEB界面
* `/data/qbittorrent/config`：qbittorrent配置文件存储目录，可自行修改
* `/data/qbittorrent/downloads`：下载目录，可自行修改



## 使用说明

运行成功后可通过`http://IP:18080`进行访问，

* 初始用户名：`admin`
* 密码：`adminadmin`

登录后请务必修改。



## 容器目录说明

* 容器内配置文件位于`/etc/qBittorrent`
* 下载目录位于`/downloads`



## 联系我

* Blog：https://www.xiaoz.me/
* QQ：337003006
* QQ群：147687134

