#!/bin/bash
#/etc/qBittorrent/config/qBittorrent.conf


if [ -f "/etc/qBittorrent/config/qBittorrent.conf" ];then
	echo -e "y" | qbittorrent-nox --profile=/etc
else
	curl -o /etc/qBittorrent/config.tar.gz https://github.com/helloxz/qbittorrent/raw/main/config.tar.gz
	cd /etc/qBittorrent/ && tar -zxvf /etc/qBittorrent/config.tar.gz
	echo -e "y" | qbittorrent-nox --profile=/etc
	tail -100f /etc/qBittorrent/data/logs/qbittorrent.log
fi

