#!/bin/bash
#/etc/qBittorrent/config/qBittorrent.conf


if [ -f "/etc/qBittorrent/config/qBittorrent.conf" ];then
	echo -e "y" | qbittorrent-nox --profile=/etc
else
	curl -kLo /etc/qBittorrent/config.tar.gz https://github.com/helloxz/qbittorrent/raw/main/config.tar.gz
	cd /etc/qBittorrent/ && tar -xvf /etc/qBittorrent/config.tar.gz
	rm -rf /etc/qBittorrent/config.tar.gz
	mkdir -p /etc/qBittorrent/data/GeoIP
	mv /root/GeoLite2-Country.mmdb /etc/qBittorrent/data/GeoIP/GeoLite2-Country.mmdb
	echo -e "y" | qbittorrent-nox --profile=/etc
	tail -100f /etc/qBittorrent/data/logs/qbittorrent.log
fi

