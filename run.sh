#!/bin/bash
#/etc/qBittorrent/config/qBittorrent.conf


if [ -f "/etc/qBittorrent/config/qBittorrent.conf.bak" ];then
	echo -e "y" | qbittorrent-nox --profile=/etc --configuration=/etc/qBittorrent/config/qBittorrent.conf
else
	echo -e "y" | qbittorrent-nox --profile=/etc
	sleep 20
	pkill -9 qbittorrent-nox
	mv /etc/qBittorrent/config/qBittorrent.conf /etc/qBittorrent/config/qBittorrent.conf.bak
	curl -o /etc/qBittorrent/config/qBittorrent.conf https://raw.githubusercontent.com/helloxz/qbittorrent/main/qBittorrent.conf
	echo -e "y" | qbittorrent-nox --profile=/etc --configuration=/etc/qBittorrent/config/qBittorrent.conf
fi

