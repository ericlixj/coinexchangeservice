##dev 环境搭建
- core项目中使用了本地lib jar，这样在单独构建每个项目时有问题，将其install
  - mvn install:install-file -Dfile=/Users/ericlixj/Documents/workspace-java/coinexchangeservice/core/lib/spark-core-2.6.0.jar -DgroupId=com.bizzan.bitrade -DartifactId=spark-core -Dversion=2.6.0 -Dpackaging=jar
  - 还是不行，由于config中的配置值是在构建parent项目时写入不同的项目配置中的，所以由于没有配置中心，只能每次都构建parent项目了，单独构建一个项目不行
- 无论是npm,还是java，注意版本，版本不一致会有奇怪的报错，可以通过 source ~/.bashrc
- 中间件部分通过docker容器部署，包括mysql/mongo/kafka/redis，其中
  - mysql的数据通过进入容器后mysqldump的import方式处理，注意mysql版本；
  - mongo需要简历bizzan数据库，同时进行bizzan/123456用户的鉴权
- nginx开发机器部署，配置文件位于/usr/local/etc/nginx/nginx.conf
  - brew services start/stop nginx
  - nginx -s reload
- 后端代码
  - cloud：部署在docker容器中，注册中心，加了一下告警监听处理
  - web端（2c）
    - ucenter-api
    - market
    - chat
    - otc-api
    - wallet
    - exchange
    - exchange-api
  - admin后台（2b）
    - admin
- 前端代码
  - admin后台
  - web端（2c）
    - 部署ec2
      - login in 
        - cd /Users/ericlixj/Documents/aws 
        - ssh -i "web001.pem" ec2-user@ec2-18-188-119-40.us-east-2.compute.amazonaws.com
      - jdk
        - sudo yum install java-1.8.0-amazon-corretto-devel
      - mysql
        - sudo yum update -y
        - wget https://dev.mysql.com/get/mysql57-community-release-el7-11.noarch.rpm
        - sudo rpm -ivh mysql57-community-release-el7-11.noarch.rpm
        - sudo rpm --import https://repo.mysql.com/RPM-GPG-KEY-mysql-2022
        - sudo yum install mysql-server -y
        - sudo systemctl start mysqld
        - sudo systemctl enable mysqld
        - sudo grep "temporary password" /var/log/mysqld.log
        - ALTER USER 'root'@'localhost' IDENTIFIED BY 'NewPassword';
        - CREATE DATABASE bizzan CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
        - scp -i "web001.pem" bizzan.sql ec2-user@ec2-18-188-119-40.us-east-2.compute.amazonaws.com:~
        - source ～/bizzan.sql
  - redis
    - 安装在～/server/redis
安装文档
  - mongo
    https://www.mongodb.com/docs/manual/tutorial/install-mongodb-on-amazon/
    - mongosh: OpenSSL configuration error:
      - sudo yum remove mongodb-mongosh
        sudo yum install mongodb-mongosh-shared-openssl3
        sudo yum install mongodb-mongosh
    - 
      use bizzan
      db.createUser({user: "bizzan",pwd: "123456",roles: [{ role: "readWrite", db: "bizzan" }]})
  - zk
  - kafka
  - nginx
    - sudo yum install -y nginx
  - hostinger
    - https://hpanel.hostinger.com/?amplitudeLocation=homepage_logo
  - https支持
    - 前端入口https，其中所有后台接口调用也需要支持https，问题解决ec2部署服务支持https
    - 可以搜索 nginx + Let's Encrypt的解决方案，整体思路是，免费证书生成，这需要zainginx上配置一个特殊路径，这个路径证书提供商回去访问，确保返回200，以证明你有对网站的控制，然后就是生成证书，同时可以nginx中直接生成配置内容，这个是匹配server_name的名称
    - hostinger dns配置cname，service1.web3rebel.in 指向ec2公网域名
    - 前端代码中对后台服务的访问统一换掉，构建发布

## 部署脚本
  - ssh -i "web001.pem" ec2-user@ec2-18-188-119-40.us-east-2.compute.amazonaws.com
  - scp -i "web001.pem" ucenter-api.jar cloud.jar bizzan.sql ec2-user@ec2-18-188-119-40.us-east-2.compute.amazonaws.com:~
  - cloud
    - nohup java -Xms64m -jar /home/ec2-user/deploy/webapps/cloud.jar > /home/ec2-user/deploy/logs/cloud.log 2>&1 &
    - tail -f  /home/ec2-user/deploy/logs/cloud.log
  - ucenter-api
    - nohup java -Xms128m -Dspring.profiles.active=test -jar /home/ec2-user/deploy/webapps/ucenter-api.jar > /home/ec2-user/deploy/logs/ucenter-api.log 2>&1 &
    - tail -111f /home/ec2-user/deploy/logs/ucenter-api.log
  - admin-api
    - nohup java -Xms128m -Dspring.profiles.active=test -jar /home/ec2-user/deploy/webapps/admin-api.jar > /home/ec2-user/deploy/logs/admin-api.log 2>&1 &
    - tail -111f /home/ec2-user/deploy/logs/admin-api.log
  - ucenter-api
    - nohup java -Xms128m -Dspring.profiles.active=test -jar /home/ec2-user/deploy/webapps/market.jar > /home/ec2-user/deploy/logs/market.log 2>&1 &
    - tail -111f /home/ec2-user/deploy/logs/market.log

## c端账号
- 247818019@qq.com
- 123456
## 业务知识梳理