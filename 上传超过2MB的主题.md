
## 说明

- 转到http://ipv4address:9000（您的portainer安装）
- [单击]容器>[单击]Wordpress>[单击]>_Console [单击]连接
键入以下内容：
```sh
apt-get update
apt-get install nano
cd /usr/local/etc/php/conf.d/
vim php.ini
```

将此复制到php.ini文档中：

```sh
file_uploads = On
memory_limit = 64M
upload_max_filesize = 64M
post_max_size = 64M
max_execution_time = 600
```

保存，然后退出，最后键入以下内容

```sh
cp php.ini ..
```
- 点击-断开顶部连接
- 单击-左侧的容器列表或服务器图标（向下第3/4次）
- 寻找你的Wordpress容器
- 点按 - 重新启动
- 您现在可以上传超过2MB的主题
注意：要返回维基，请单击http://wiki.plexguide.com
