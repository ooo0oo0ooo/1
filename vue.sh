#!/bin/bash
git clone https://github.com/lyzs90/vuewp.git 
cd vuewp 
npm install || apt install npm
docker-compose up -d
docker-machine ip && cp .env.example  .env
echo "
  运行 http://container-ip:8000 进行安装;http://localhost:8080 浏览;
  为了获得更好的开发体验，您应该运行 npm run dev 来运行Browsersync代理服务器;
  运行生产构建  npm run prod
  使用zeit/serve等http服务器进行预览，例如。serve wp-content/themes/vuewp/dist
  要用作主题，只需将vuewp目录复制到您的Wordpress主题，即/var/www/html/wp-content/themes
  对于无头设置，一个选项是将S3上的dist目录托管为静态站点。
  “
