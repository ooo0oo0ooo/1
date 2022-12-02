#!/bin/bash
echo "Docker编写配置生成器，用于快速Wordpress主题或插件开发。"
curl -O https://raw.githubusercontent.com/michaloo/dockerpresso/master/bin/dockerpresso && chmod +x dockerpresso && mv dockerpresso /usr/local/bin
git clone https://github.com/michaloo/dockerpresso.git
cd dockerpresso
mkdir new && cd new
echo "初始化"
dockerpresso init
echo "
它将在您的项目根目录中生成以下文件：

.env
/docker-compose.yml
/docker-compose.admin.yml
Dockerpressofile
wordpress_data
"
subl docker-compose.yml
dockerpresso up
