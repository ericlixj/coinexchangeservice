## 关于

00_Framework下包含了后端项目的集合，本项目基于SpringCloud开发，具体依赖关系如下图所示：
![依赖关系](https://images.gitee.com/uploads/images/2020/0408/155903_9173b5dc_2182501.png "QQ截图20200407194419.png")


## 平台使用的技术

- 后端：Spring、SpringMVC、SpringData、SpringCloud、SpringBoot
- 数据库：Mysql、Mongodb
- 其他：redis、kafka、阿里云OSS、腾讯防水校验
- 前端：Vue、iView、less

## 注意事项

- 项目用了Lombok插件，无论用什么IDE工具，请务必先安装Lombok插件
- 项目用了QueryDsl，如果遇见以Q开头的类找不到，请先编译一下对应的core模块，例如core、exchange-core、xxx-core这种模块
- 找不到的jar包在项目jar文件夹下
- jdk版本1.8以上
- 初始化sql在sql文件夹中配置文件 配置文件打开这个设置会自动建表 #jpa spring.jpa.hibernate.ddl-auto=update

## 配置文件需要修改的地方

- msyql数据库配置
- redis缓存数据库配置
- mongodb(主要存储K线图相关数据)
- kafka配置
- 阿里云OSS，图片资源上传
- 短信配置
- 邮件认证

模块介绍
cloud
提供SpringCloud微服务注册中心功能，为基础模块，必须部署
依赖服务：无
ucenter-api
提供用户相关的接口（如登录、注册、资产列表）,该模块为基础为基础模块，必须部署
依赖服务：mysql,kafka,redis,mongodb,短信接口，邮箱账号
otc-api
提供场外交易功能接口，没有场外交易的可以不部署
依赖服务：mysql,redis,mongodb,短信接口
exchange-api
提供币币交易接口，没有币币交易的项目可以不部署
依赖服务：mysql,redis,mongodb,kafka
chat
提供实时通讯接口，基础模块，需要部署
依赖服务：mysql,redis,mongodb
admin
提供管理后台的所有服务接口，必须部署
依赖服务：mysql,redis,mongodb
wallet
提供充币、提币、获取地址等钱包服务，为基础模块，必须部署
依赖服务：mysql,mongodb,kafka,cloud
market
提供币种价格、k线、实时成交等接口服务，场外交易不需要部署
依赖服务：mysql,redis,mongodb,kafka,cloud
exchange
提供撮合交易服务，场外交易不需要部署
依赖服务：mysql,mongodb,kafka