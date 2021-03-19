#!/bin/bash
#/etc/qBittorrent/config/qBittorrent.conf


if [ -f "/etc/qBittorrent/config/qBittorrent.conf.bak" ];then
	echo -e "y" | qbittorrent-nox --profile=/etc
else
	echo -e "y" | qbittorrent-nox --profile=/etc
	curl http://127.0.0.1:8080/
	sleep 20
	pkill -9 qbittorrent-nox
	#mv /etc/qBittorrent/config/qBittorrent.conf /etc/qBittorrent/config/qBittorrent.conf.bak
	curl -o /etc/qBittorrent/config/qBittorrent.conf https://raw.githubusercontent.com/helloxz/qbittorrent/main/qBittorrent.conf
	echo -e "y" | qbittorrent-nox --profile=/etc
	tail -100f /etc/qBittorrent/data/logs/qbittorrent.log
fi

