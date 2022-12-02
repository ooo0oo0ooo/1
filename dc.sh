#!/bin/bash

#开始
echo -n "国外请按1,国内请按2,一键安装请按3,所以你的选择是"
read shuzi
case  "$shuzi" in
  1 )
    echo "开始安装docker..."
    wget -qO- get.docker.com | bash
    sudo curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
    sudo chmod +x /usr/local/bin/docker-compose
    echo "安装完成,docker版本是"
    echo "-------------------"
    docker -v  && docker-compose --version
    echo "设置开机自动启动及IP6"
    echo "复制下列信息并粘贴...."
    echo "
         -----------------------------
      {
          "log-driver": "json-file",
          "log-opts": {
              "max-size": "20m",
              "max-file": "3"
          },
          "ipv6": true,
          "fixed-cidr-v6": "fd00:dead:beef:c0::/80",
          "experimental":true,
          "ip6tables":true
      }
          -----------------------------"
    systemctl enable docker  && vim etc/docker/daemon.json
    systemctl restart docker || echo "安装失败！" 1>&2
  ;;
  2 )
    echo "开始安装docker..."
  ;;
  3 )
    chmod +x d.sh && ./d.sh
  ;;
