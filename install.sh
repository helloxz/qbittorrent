#!/bin/bash
#####	Debian安装qbittorrent
#####	author:xiaoz<xiaoz93@outlook.com>
#####	update:2021/03/19

apt-get update
apt install -y qbittorrent-nox curl
rm -rf /var/lib/apt/lists/*
#创建存储配置目录
mkdir -p /etc/qBittorrent
#创建GeoIP数据库路径
mkdir -p /etc/qBittorrent/data/GeoIP
#创建下载目录
mkdir -p /downloads
#下载GeoIP数据库
curl -kLo /root/GeoLite2-Country.mmdb https://github.com/helloxz/qbittorrent/raw/main/GeoLite2-Country.mmdb

chmod +x /usr/sbin/run.sh
