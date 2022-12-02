#!/bin/bash
git clone https://github.com/dilone/docker-wordpress.git
docker stack deploy -c docker-compose.yml stack-name
echo "http://localhost:8080 开始 访问   删除堆栈运行"
docker volume remove stack-name
echo "完成后，将主题添加到主题文件夹中，并用星号星构建模板"
echo "
持久MySQL存储
默认情况下，数据库是持久的，数据在将容器向下和备份后仍然存在，
如果您需要删除卷，请执行以下操作：
docker volume ls && docker volume remove volume-name
您还可以运行docker volume prune，以从docker中删除所有卷。
"
docker volume ls && docker volume remove volume-name

