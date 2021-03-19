#!/bin/bash
#####	Debian安装qbittorrent
#####	author:xiaoz<xiaoz93@outlook.com>
#####	update:2021/03/19

apt-get update
apt install -y qbittorrent-nox
rm -rf /var/lib/apt/lists/*



#qbittorrent-nox --profile=/etc
#echo -e "y" | qbittorrent-nox --profile=/etc/qbittorrent