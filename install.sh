#!/bin/bash
#####	Debian安装qbittorrent
#####	author:xiaoz<xiaoz93@outlook.com>
#####	update:2021/03/19

apt-get update
apt install -y qbittorrent-nox libgeoip-dev
rm -rf /var/lib/apt/lists/*

chmod +x /usr/sbin/run.sh

#qbittorrent-nox --profile=/etc
#echo -e "y" | qbittorrent-nox --profile=/etc/qbittorrent