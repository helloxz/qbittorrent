#基于哪个镜像制作
FROM debian:10-slim
#设置时区
ENV TZ=Asia/Shanghai
#工作目录
WORKDIR /root
#复制安装脚本
COPY ./install.sh /root
#复制启动脚本
COPY ./run.sh /usr/sbin
#执行安装脚本
RUN bash install.sh
#暴露站点文件夹
VOLUME /data
#暴露配置文件
VOLUME /etc/qBittorrent
VOLUME /downloads
#暴露端口
EXPOSE 18080
EXPOSE 7881
#运行
CMD ["/usr/sbin/run.sh"]