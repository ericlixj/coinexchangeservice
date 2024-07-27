
CREATE DATABASE IF NOT EXISTS bizzan;
USE bizzan;
--
-- Table structure for table `activity`
--

DROP TABLE IF EXISTS `activity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `activity` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `activity_link` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `detail` varchar(255) DEFAULT NULL,
  `image_url` varchar(255) DEFAULT NULL,
  `notice_link` varchar(255) DEFAULT NULL,
  `progress` int(11) NOT NULL,
  `settings` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `step` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `type` int(11) NOT NULL,
  `accept_unit` varchar(255) NOT NULL,
  `amount_scale` int(11) NOT NULL,
  `banner_image_url` varchar(255) DEFAULT NULL,
  `content` text,
  `contenten` text,
  `detailen` varchar(255) DEFAULT NULL,
  `end_time` varchar(30) NOT NULL DEFAULT '2000-01-01 01:00:00' COMMENT '结束时间',
  `limit_times` int(11) NOT NULL,
  `max_limit_amout` decimal(24,8) DEFAULT NULL,
  `min_limit_amout` decimal(24,8) DEFAULT NULL,
  `price` decimal(18,8) DEFAULT NULL,
  `price_scale` int(11) NOT NULL,
  `small_image_url` varchar(255) DEFAULT NULL,
  `start_time` varchar(30) NOT NULL DEFAULT '2000-01-01 01:00:00' COMMENT '开始时间',
  `titleen` varchar(255) DEFAULT NULL,
  `total_supply` decimal(24,8) NOT NULL,
  `traded_amount` decimal(24,8) DEFAULT NULL,
  `unit` varchar(255) NOT NULL,
  `freeze_amount` decimal(26,8) DEFAULT NULL,
  `levelone_count` int(11) NOT NULL,
  `mining_days` int(11) NOT NULL,
  `mining_daysprofit` decimal(24,8) DEFAULT NULL,
  `mining_invite` decimal(24,8) DEFAULT NULL,
  `mining_invitelimit` decimal(24,8) DEFAULT NULL,
  `mining_unit` varchar(255) NOT NULL,
  `mining_period` int(11) NOT NULL,
  `hold_limit` decimal(24,8) DEFAULT NULL,
  `hold_unit` varchar(255) DEFAULT NULL,
  `locked_days` int(11) NOT NULL,
  `locked_fee` decimal(24,8) DEFAULT NULL,
  `locked_period` int(11) NOT NULL,
  `locked_unit` varchar(255) DEFAULT NULL,
  `release_amount` decimal(24,8) DEFAULT NULL,
  `release_percent` decimal(24,8) DEFAULT NULL,
  `release_times` decimal(24,8) DEFAULT NULL,
  `release_type` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=14540 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `activity`
--

LOCK TABLES `activity` WRITE;
/*!40000 ALTER TABLE `activity` DISABLE KEYS */;
INSERT INTO `activity` VALUES (14539,'','2020-10-05 22:40:57','测试',NULL,'',0,'',1,1,'云矿机测试',5,'SIC',2,'https://bizzano.oss-cn-shanghai.aliyuncs.com/2020/10/05/5637a57a-9e15-4c6f-8e30-8a8b9914dea6.png','<p>测试</p>','',NULL,'2020-10-17 00:00:00',1,200.00000000,1.00000000,100.00000000,2,'https://bizzano.oss-cn-shanghai.aliyuncs.com/2020/10/05/460585a1-c9f7-4a18-b8b6-02219d074c6b.png','2020-10-05 00:00:00',NULL,1.00000000,0.00000000,'SIC',0.00000000,0,30,200.00000000,10.00000000,10.00000000,'SIC',0,10000.00000000,'YNC',1,0.00000000,0,NULL,0.00000000,0.00000000,0.00000000,0);
/*!40000 ALTER TABLE `activity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `activity_order`
--

DROP TABLE IF EXISTS `activity_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `activity_order` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `activity_id` bigint(20) DEFAULT NULL,
  `amount` decimal(24,8) DEFAULT NULL,
  `base_symbol` varchar(255) DEFAULT NULL,
  `coin_symbol` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `freeze_amount` decimal(24,8) DEFAULT NULL,
  `member_id` bigint(20) DEFAULT NULL,
  `price` decimal(24,8) DEFAULT NULL,
  `state` int(11) NOT NULL,
  `turnover` decimal(26,16) DEFAULT NULL,
  `type` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `activity_order`
--

LOCK TABLES `activity_order` WRITE;
/*!40000 ALTER TABLE `activity_order` DISABLE KEYS */;
/*!40000 ALTER TABLE `activity_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `avatar` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `enable` int(11) DEFAULT NULL,
  `last_login_ip` varchar(255) DEFAULT NULL,
  `last_login_time` datetime DEFAULT NULL,
  `mobile_phone` varchar(255) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `qq` varchar(255) DEFAULT NULL,
  `real_name` varchar(255) NOT NULL,
  `role_id` bigint(20) NOT NULL,
  `status` int(11) DEFAULT NULL,
  `username` varchar(255) NOT NULL,
  `department_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `UK_gfn44sntic2k93auag97juyij` (`username`) USING BTREE,
  KEY `FKibjnyhe6m46qfkc6vgbir1ucq` (`department_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES (1,'','root',0,NULL,'2020-12-14 07:42:48','13791233920','985eb5b028065701341a478a9215e7b2','000000','Admin',1,0,'root',1),(2,'','',0,NULL,'2020-12-14 05:23:03','13791233920','985eb5b028065701341a478a9215e7b2','','测试',64,0,'test',3);
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_access_log`
--

DROP TABLE IF EXISTS `admin_access_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin_access_log` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `access_ip` varchar(255) DEFAULT NULL,
  `access_method` varchar(255) DEFAULT NULL,
  `access_time` datetime DEFAULT NULL,
  `admin_id` bigint(20) DEFAULT NULL,
  `module` int(11) DEFAULT NULL,
  `operation` varchar(255) DEFAULT NULL,
  `uri` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=47450 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_access_log`
--

LOCK TABLES `admin_access_log` WRITE;
/*!40000 ALTER TABLE `admin_access_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `admin_access_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_permission`
--

DROP TABLE IF EXISTS `admin_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin_permission` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `parent_id` bigint(20) DEFAULT NULL,
  `sort` int(11) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=256 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_permission`
--

LOCK TABLES `admin_permission` WRITE;
/*!40000 ALTER TABLE `admin_permission` DISABLE KEYS */;
INSERT INTO `admin_permission` VALUES (2,'角色管理','system:role:all',8,0,'角色管理'),(3,'用户管理','system:employee:page-query',8,0,'用户管理'),(4,'部门管理','system:department:all',8,0,'部门管理'),(5,'站点管理','system:website-information:find-one',8,0,'站点管理'),(6,'菜单管理','system:role:permission:all',8,0,'菜单管理'),(7,'系统日志','system:access-log:page-query',8,0,'系统日志'),(8,'系统管理','system-------',0,13,'系统管理'),(9,'广告管理','cms:system-advertise:page-query',18,0,'广告管理'),(10,'帮助管理','cms:system-help:page-query',18,0,'帮助管理'),(11,'会员管理','member--------',0,1,'会员管理'),(12,'会员管理','member:page-query',11,0,'会员管理'),(13,'实名管理','member:member-application:page-query',11,0,'实名管理'),(14,'会员监控','member--------',11,0,'会员监控'),(18,'内容管理','cms-------',0,10,'内容管理'),(19,'交易明细','finance:member-transaction:page-query',93,0,'交易记录'),(20,'提现管理','finance:withdraw-record:page-query',93,0,'提现管理'),(23,'币种管理','system:coin:page-query',8,0,'币币币种管理'),(26,'公告管理','cms:notice',18,0,'公告管理'),(27,'创建修改角色','system:role:merge',8,0,'创建修改角色'),(28,'更改角色权限','system:role:permission:update',8,0,'更改角色权限'),(29,'角色拥有权限','system:role:permission',8,0,'角色拥有权限'),(30,'全部权限树','system:role:permission:all',8,0,'全部权限树'),(31,'创建更改后台用户','system:employee:merge',8,0,'创建更改后台用户'),(32,'后台用户详情','system:employee:detail',8,0,'后台用户详情'),(33,'站点信息修改','system:website-information:alter',8,0,'站点信息修改'),(34,'系统日志详情','system:access-log:detail',8,0,'系统日志详情'),(35,'创建系统广告','cms:system-advertise:create',18,0,'创建系统广告'),(36,'所有系统广告','cms:system-advertise:all',18,0,'所有系统广告'),(37,'系统广告详情','cms:system-advertise:detail',18,0,'系统广告详情'),(38,'更新系统广告','cms:system-advertise:update',18,0,'更新系统广告'),(39,'删除系统广告','cms:system-advertise:deletes',18,0,'删除系统广告'),(40,'导出广告excel','cms:system-advertise:out-excel',18,0,'导出广告excel'),(41,'创建系统帮助','cms:system-help:create',18,0,'创建系统帮助'),(42,'系统帮助详情','cms:system-help:detail',18,0,'系统帮助详情'),(43,'更新系统帮助','cms:system-help:update',18,0,'更新系统帮助'),(44,'删除系统帮助','cms:system-help:deletes',18,0,'删除系统帮助'),(45,'导出系统帮助excel','cms:system-help:out-excel',18,0,'导出系统帮助excel'),(46,'会员详情','member:detail',11,0,'会员详情'),(47,'会员删除','member:delete',11,0,'会员删除'),(48,'会员更新','member:update',11,0,'会员更新'),(49,'认证商家审核','member:audit-business',66,0,'认证商家审核'),(50,'导出会员excel','member:out-excel',11,0,'导出会员excel'),(51,'实名信息详情','member:member-application:detail',11,0,'实名信息详情'),(52,'实名审核通过','member:member-application:pass',11,0,'实名审核通过'),(53,'实名审核不通过','member:member-application:no-pass',11,0,'实名审核不通过'),(54,'交易记录详情','finance:member-transaction:detail',93,0,'交易记录详情'),(55,'导出交易记录excel','finance:member-transaction:out-excel',93,0,'导出交易记录excel'),(56,'提现记录详情','finance:withdraw-record:detail',93,0,'提现记录详情'),(57,'提现记录一键审核通过','finance:withdraw-record:audit-pass',93,0,'提现记录一键审核通过'),(58,'提现记录一键审核不通过','finance:withdraw-record:audit-no-pass',93,0,'提现记录一键审核不通过'),(59,'批量打款','finance:withdraw-record:remittance',93,0,'批量打款'),(60,'币币管理','exchange-------',0,3,'币币管理父菜单'),(61,'币币交易订单详情','exchange:exchange-order:detail',60,0,'币币交易订单详情'),(62,'订单管理','exchange:exchange-order:page-query',60,0,'币币交易订单'),(63,'导出币币交易订单excel','exchange:exchange-order:out-excel',60,0,'导出币币交易订单excel'),(64,'币种管理','exchange:exchange-coin:page-query',60,0,'币种管理'),(65,'币币交易对详情','exchange:exchange-coin:detail',60,0,'币币交易对详情'),(66,'OTC管理','otc-------',0,5,'法币OTC'),(67,'后台广告详情','otc:advertise:detail',66,0,'后台广告详情'),(68,'关闭后台广告','otc:advertise:turnoff',66,0,'关闭后台广告'),(69,'后台广告状态修改','otc:advertise:alter-status',66,0,'后台广告状态修改'),(70,'后台广告','otc:advertise:page-query',66,0,'后台广告'),(71,'后台广告导出excel','otc:advertise:out-excel',66,0,'后台广告导出excel'),(72,'后台申诉','otc:appeal:page-query',66,0,'后台申诉'),(73,'申诉详情','otc:appeal:detail',66,0,'申诉详情'),(74,'申诉处理','otc:appeal:audit',66,0,'申诉处理'),(75,'法币交易订单详情','otc:order:detail',66,0,'法币交易订单详情'),(76,'法币交易订单状态修改','otc:order:alert-status',66,0,'法币交易订单状态修改'),(77,'订单管理','otc:order:page-query',66,0,'法币交易订单'),(78,'导出法币交易订单excel','otc:order:out-excel',66,0,'导出法币交易订单excel'),(79,'创建otc币种','otc:otc-coin:create',66,0,'创建otc币种'),(80,'otc币种详情','otc:otc-coin:detail',66,0,'otc币种详情'),(81,'otc币种更新','otc:otc-coin:update',66,0,'otc币种更新'),(82,'otc币种交易率修改','otc:otc-coin:alter-jy-rate',66,0,'otc币种交易率修改'),(83,'币种管理','otc:otc-coin:page-query',66,0,'法币币种管理'),(84,'导出otc币种excel','otc:otc-coin:out-excel',66,0,'导出otc币种excel'),(85,'创建后台货币','system:coin:create',8,0,'创建后台货币'),(86,'部门详情','system:department:detail',8,0,'部门详情'),(87,'查询新增用户曲线','system:statistics:member-statistics',8,0,'查询新增用户曲线'),(88,'委托量曲线','system:statistics:delegation-statistics',8,0,'委托量曲线'),(89,'法币交易订单量曲线','system:statistics:order-statistics',8,0,'法币交易订单量曲线'),(90,'otc_order统计','system:statistics:dashboard',8,0,'otc_order统计'),(91,'余额管理','member:member-wallet:balance',11,0,'余额管理'),(92,'充值管理','finance:member-transaction:page-query:recharge',93,0,'充值管理'),(93,'财务管理','finance-------',0,7,'财务管理'),(94,'提币审核','finance:member-transaction:page-query:check',93,0,'提现客服审核'),(95,'手续费管理','finance:member-transaction:page-query:fee',93,0,'手续费管理'),(96,'创建公告','system:announcement:create',8,0,'创建公告'),(97,'分页查询公告','system:announcement:page-query',8,0,'分页查询公告'),(98,'删除公告','system:announcement:deletes',8,0,'删除公告'),(99,'公告详情','system:announcement:detail',8,0,'公告详情'),(100,'更新公告','system:announcement:update',8,0,'更新公告'),(101,'关闭公告','system:announcement:turn-off',8,0,'关闭公告'),(102,'打开公告','system:announcement:turn-on',8,0,'打开公告'),(103,'币币设置','exchange:set',60,0,'币币设置'),(104,'放币处理','otc:appeal:release-coin',66,0,'放币处理'),(105,'取消订单','otc:appeal:cancel-order',66,0,'取消订单'),(106,'创建修改部门','system:department:merge',8,0,'创建修改部门'),(107,'删除exchangeCoin','exchange:exchange-coin:deletes',60,0,'删除exchangeCoin'),(108,'删除otcCoin','otc:otc-coin:deletes',66,0,'删除otcCoin'),(109,'删除部门','system:department:deletes',8,0,'删除部门'),(110,'增加/修改权限','system:permission:merge',8,0,'增加权限'),(111,'权限管理','system:permission:page-query',8,0,'分页查询权限'),(112,'权限详情','system:permission:details',8,0,'权限详情'),(113,'权限删除','system:permission:deletes',8,0,'权限删除'),(114,'添加交易流水号','finance:withdraw-record:add-transaction-number',93,0,'财务提现转账成功添加流水号'),(115,'人工充值','member:member-wallet:recharge',11,0,'人工充值'),(116,'首页订单数','otc:order:get-order-num',66,0,'首页订单数'),(117,'投票管理','system:vote:merge',8,0,'新增/修改投票'),(118,'分页查询','system:vote:page-query',8,0,'分页查询'),(119,'admin更改密码','system:employee:update-password',8,0,'admin更改密码'),(120,'系统公告置顶','cms:system-help:top',18,0,'系统公告置顶'),(121,'系统广告置顶','cms:system-advertise:top',18,0,'系统广告置顶'),(122,'公告置顶','system:announcement:top',8,0,'公告置顶'),(123,'转账地址','system:transfer-address:page-query',8,0,'转账地址管理    拍币网独有'),(124,'新增/修改转账地址','system:transfer-address:merge',8,0,'新增/修改转账地址  拍币网独有'),(125,'转账地址详情','system:transfer-address:detail',8,0,'转账地址详情  拍币网独有'),(126,'批量删除转账地址','system:transfer-address:deletes',8,0,'批量删除转账地址   拍币网独有'),(128,'分红管理','system:dividend:page-query',8,0,'分红管理分页查询'),(129,'开始分红','system:dividend:start',8,0,'开始分红'),(130,'分红手续费','system:dividend:fee-query',8,0,'分红手续费'),(131,'充币记录','finance:member-deposit:page-query',93,0,'区块链钱包充币记录'),(132,'人工转账','system:coin:transfer',60,0,'热钱包转账至冷钱包'),(133,'转入明细','system:coin:hot-transfer-record:page-query',8,0,'热钱包转入冷钱包记录'),(134,'实名认证配置修改','system:member-application-config:merge',8,0,'实名认证配置修改'),(135,'实名认证配置详情','system:member-application-config:detail',8,0,'实名认证配置详情'),(136,'禁用/解禁发布广告','member:alter-publish-advertisement-status',11,0,'禁用/解禁发布广告 1表示正常'),(137,'禁用/解禁会员账号','member:alter-status',11,0,'禁用/解禁会员账号 0表示正常'),(138,'推荐会员','promotion:member:page-query',143,0,'推荐会员分页'),(139,'删除用户','system:employee:deletes',8,0,'批量删除用户'),(140,'充值管理','legal-wallet-recharge',66,0,'充值管理分页'),(141,'提币管理','legal-wallet-withdraw',66,0,'提币管理查询分页'),(142,'是否禁止交易','member:alter-transaction-status',11,0,'是否禁止交易  1表示正常'),(143,'推荐返佣','promotion-------',0,11,'推荐返佣'),(144,'新增/修改推荐返佣配置','promotion:reward:merge',143,0,'新增/修改推荐返佣配置'),(145,'重置会员钱包地址','member:member-wallet:reset-address',11,0,'重置会员钱包地址'),(146,'佣金参数','promotion:reward:page-query',143,0,'佣金参数'),(147,'系统信息维护','system:data-dictionary',8,0,'系统信息管理'),(148,'数据字典添加','system:data-dictionary:create',8,0,'数据字典添加'),(149,'数据字典修改','system:data-dictionary:update',8,0,'数据字典修改'),(150,'版本管理','system:app-revision:page-query',8,0,'版本管理'),(151,'添加版本信息','system:app-revision:create',8,0,'添加版本信息'),(152,'更新版本信息','system:app-revision:update',8,0,'更新版本信息'),(153,'版本信息详情','system:app-revision:details',8,0,'版本信息详情'),(154,'推荐会员导出','promotion:member:out-excel',143,0,'推荐会员导出'),(155,'推荐会员明细','promotion:member:details',143,0,'推荐会员明细'),(156,'测试权限','测试名称',18,0,'描述'),(158,'取消委托','exchange:exchange-order:cancel',18,0,'取消委托订单'),(159,'法币交易明细','finance:otc:order:page-query',93,0,'法币交易明细'),(160,'提币明细','finance:withdraw-record:page-query:success',93,0,'提币明细'),(161,'保证金管理','business-auth:manager',93,0,'保证金管理'),(162,'活动管理','activity-------',0,9,'活动管理'),(164,'签到新增','activity:sign:post',162,0,'签到新增'),(165,'签到修改','activity:sign:put',162,0,'签到修改'),(167,'签到管理','activity:sign:page-query',162,0,'签到分页'),(168,'签到详情','activity:sign:id:get',162,0,'签到详情'),(169,'签到提前关闭','activity:sign:id:early-closing',162,0,'签到提前关闭'),(170,'签到记录','activity:member-sign-record:page-query',162,0,'签到记录'),(171,'财务统计','finance:statistics:turnover',93,0,'成交量/成交额统计'),(172,'手续费合计','finance:statistics:fee',93,0,'手续费合计'),(173,'锁定钱包','member:member-wallet:lock-wallet',11,0,'锁定钱包'),(174,'解锁钱包','member:member-wallet:unlock-wallet',11,0,'解锁钱包'),(176,'角色删除','system:role:deletes',8,0,'角色删除'),(177,'保证金管理','business:auth:deposit',0,12,'保证金管理'),(178,'查询保证金策略','business:auth:deposit:page',177,0,'查询保证金策略'),(179,'创建保证金策略','business:auth:deposit:create',177,0,'创建保证金策略'),(180,'修改保证金策略','business:auth:deposit:update',177,0,'修改保证金策略'),(181,'退保审核','business:cancel-apply:check',66,0,'退保审核'),(182,'退保管理','business:cancel-apply:page-query',66,0,'退保申请记录'),(183,'退保用户详情','business:cancel-apply:detail',66,0,'退保用户详情'),(184,'认证商家','business-auth:apply:page-query',66,0,'认证商家'),(185,'佣金参数详情','promotion:reward:detail',143,0,'佣金参数详情'),(186,'认证商家详情','business-auth:apply:detail',66,0,'认证商家详情'),(187,'币种详情','system:coin:detail',8,0,'系统管理下币种详情'),(188,'添加交易对','exchange:exchange-coin:merge',60,0,'添加交易对'),(189,'修改交易对','exchange:exchange-coin:alter-rate',60,0,'修改交易对'),(190,'更新后台货币','system:coin:update',8,0,'系统管理下更新后台货币'),(191,'添加用户钱包记录','system:coin:newwallet',8,0,'系统管理下添加用户钱包记录'),(192,'启动交易引擎','exchange:exchange-coin:start-trader',60,0,'启动交易引擎'),(193,'停止交易引擎','exchange:exchange-coin:stop-trader',60,0,'停止交易引擎'),(194,'撤销某交易对委托','exchange:exchange-coin:cancel-all-order',60,0,'撤销某交易对所有委托单'),(195,'查看交易对盘面','exchange:exchange-coin:exchange-overview',60,0,'查看交易对盘面'),(196,'活动列表','activity:activity:page-query',162,0,'活动列表'),(197,'添加活动','activity:activity:add',162,0,'添加活动'),(198,'修改活动','activity:activity:modify',162,0,'修改活动'),(199,'活动详情','activity:activity:detail',162,0,'查看活动详情'),(200,'修改活动进度','activity:activity:modify-progress',162,0,'修改活动进度'),(201,'活动参与详情','activity:activity:orderlist',162,0,'活动参与详情列表'),(202,'派发活动币','activity:activity:distribute',162,0,''),(203,'CTC管理','ctc---------',0,6,'法币C2C'),(204,'订单列表','ctc:order:page-query',203,0,'用户买入卖出列表'),(205,'订单详情','ctc:order:order-detail',203,0,'订单详情'),(206,'标记付款','ctc:order:pay-order',203,0,'标记付款'),(207,'完成放币','ctc:order:complete-order',203,0,'完成放币'),(208,'接单','ctc:order:confirm-order',203,0,'接单'),(209,'取消订单','ctc:order:cancel-order',203,0,'取消订单'),(210,'承兑商列表','ctc:acceptor:page-query',203,0,'承兑商列表'),(211,'切换承兑商状态','ctc:acceptor:switch',203,0,'切换状态'),(212,'查看机器人参数','exchange:exchange-coin:robot-config',60,0,'查看机器人参数'),(213,'修改一般机器人参数','exchange:exchange-coin:alter-robot-config',60,0,'修改一般机器人参数'),(214,'邀请管理','invite-------',0,2,'邀请管理'),(215,'邀请记录','invite:management:query',214,0,'邀请记录'),(216,'邀请排名','invite:management:rank',214,0,'邀请'),(217,'更新邀请参数','invite:management:update-rank',214,0,'更新邀请参数'),(218,'邀请详情','invite:management:detail-rank',214,0,'邀请详情'),(219,'创建一般机器人','exchange:exchange-coin:create-robot-config',60,0,'创建交易机器人'),(220,'红包管理','envelope-----',0,8,'红包管理'),(221,'红包列表','envelope:page-query',220,0,'红包列表'),(222,'红包详情','envelope:detail',220,0,'红包详情'),(223,'红包领取详情','envelope:receive-detail',220,0,'红包领取详情'),(224,'添加红包','envelope:add',220,0,'添加红包'),(225,'修改红包','envelope:modify',220,0,'修改红包'),(226,'修改定价机器人','exchange:exchange-coin:alter-robot-config-price',60,0,'修改定价机器人'),(227,'创建定价机器人','exchange:exchange-coin:create-robot-config-price',60,0,'创建定价机器人'),(228,'控盘机器人','exchange:robot',60,0,'控盘机器人'),(229,'保存K线数据','exchange:exchange-coin:save-robot-kline',60,0,'保存K线数据'),(230,'控盘币种列表','exchange:exchange-coin:custom-coin-list',60,0,'控盘币种列表'),(231,'机器人k线列表','exchange:exchange-coin:robot-kline-list',60,0,'获取控盘机器人K线'),(232,'预测合约','option-------------',0,3,'预测合约'),(233,'交易对管理','option-coin:page-query',232,0,'获取交易对'),(234,'获取交易对详情','option-coin:detail',232,0,'获取交易对详情'),(235,'添加交易对','option-coin:add',232,0,'添加交易对'),(236,'修改交易对','option-coin:alter',232,0,'修改交易对'),(237,'合约管理','option:page-query',232,0,'查询每期合约'),(238,'订单管理','option:order:page-query',232,0,'查询所有合约订单'),(239,'单期合约所有订单','option:order:option-list',232,0,'单期合约所有订单'),(240,'指定用户所有合约订单','option:order:member-list',232,0,'指定用户所有合约订单'),(241,'重置交易引擎','exchange:exchange-coin:reset-trader	',60,0,'重置交易引擎'),(242,'永续合约','swap------------------',0,3,'永续合约'),(243,'交易对管理','swap-coin:page-query',242,0,'交易对管理'),(244,'查看交易对详情','swap-coin:detail',242,0,'查看交易对详情'),(245,'添加交易对','swap-coin:add',242,0,'添加交易对'),(246,'修改交易对','swap-coin:alter',242,0,'修改交易对'),(247,'添加合约账户','swap-coin:init-wallet',242,0,'添加合约账户'),(248,'委托管理','swap:order:page-query',242,0,'委托管理'),(249,'撤销委托	','swap:order:cancel',242,0,'撤销委托	'),(250,'仓位管理	','swap:position:page-query',242,0,'仓位管理	\n'),(251,'强制平仓	','swap:order:force-close	',242,0,'强制平仓	\n'),(252,'定点爆仓	','swap-coin:blast',242,0,'定点爆仓	\n'),(253,'授权代理商	\r\n','member:alter-member-superpartner',11,0,'授权代理商	\r\n'),(254,'查询用户锁仓','activity:activity:locked-activity',162,0,'查询用户锁仓'),(255,'设置控盘跟随趋势	','exchange:exchange-coin:save-robot-flow',60,0,'设置控盘跟随趋势	\n');
/*!40000 ALTER TABLE `admin_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_role`
--

DROP TABLE IF EXISTS `admin_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin_role` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `description` varchar(255) DEFAULT NULL,
  `role` varchar(255) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_role`
--

LOCK TABLES `admin_role` WRITE;
/*!40000 ALTER TABLE `admin_role` DISABLE KEYS */;
INSERT INTO `admin_role` VALUES (1,'系统管理员','系统管理员'),(61,'外部','客服'),(64,'','演示');
/*!40000 ALTER TABLE `admin_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_role_permission`
--

DROP TABLE IF EXISTS `admin_role_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin_role_permission` (
  `role_id` bigint(20) NOT NULL,
  `rule_id` bigint(20) NOT NULL,
  UNIQUE KEY `UKplesprlvm1sob8nl9yc5rgh3m` (`role_id`,`rule_id`) USING BTREE,
  KEY `FK52rddd3qje4p49iubt08gplb5` (`role_id`) USING BTREE,
  KEY `FKqf3fhgl5mjqqb0jeupx7yafh0` (`rule_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_role_permission`
--

LOCK TABLES `admin_role_permission` WRITE;
/*!40000 ALTER TABLE `admin_role_permission` DISABLE KEYS */;
INSERT INTO `admin_role_permission` VALUES (1,2),(1,3),(1,4),(1,5),(1,6),(1,7),(1,8),(1,9),(1,10),(1,11),(1,12),(1,13),(1,14),(1,18),(1,19),(1,20),(1,23),(1,26),(1,27),(1,28),(1,29),(1,30),(1,31),(1,32),(1,33),(1,34),(1,35),(1,36),(1,37),(1,38),(1,39),(1,40),(1,41),(1,42),(1,43),(1,44),(1,45),(1,46),(1,47),(1,48),(1,49),(1,50),(1,51),(1,52),(1,53),(1,54),(1,55),(1,56),(1,57),(1,58),(1,59),(1,60),(1,61),(1,62),(1,63),(1,64),(1,65),(1,66),(1,67),(1,68),(1,69),(1,70),(1,71),(1,72),(1,73),(1,74),(1,75),(1,76),(1,77),(1,78),(1,79),(1,80),(1,81),(1,82),(1,83),(1,84),(1,85),(1,86),(1,87),(1,88),(1,89),(1,90),(1,91),(1,92),(1,93),(1,94),(1,95),(1,96),(1,97),(1,98),(1,99),(1,100),(1,101),(1,102),(1,103),(1,104),(1,105),(1,106),(1,107),(1,108),(1,109),(1,110),(1,111),(1,112),(1,113),(1,114),(1,115),(1,116),(1,117),(1,118),(1,119),(1,120),(1,121),(1,122),(1,123),(1,124),(1,125),(1,126),(1,128),(1,129),(1,130),(1,131),(1,132),(1,133),(1,134),(1,135),(1,136),(1,137),(1,138),(1,139),(1,140),(1,141),(1,142),(1,143),(1,144),(1,145),(1,146),(1,147),(1,148),(1,149),(1,150),(1,151),(1,152),(1,153),(1,154),(1,155),(1,156),(1,158),(1,159),(1,160),(1,161),(1,162),(1,164),(1,165),(1,167),(1,168),(1,169),(1,170),(1,171),(1,172),(1,173),(1,174),(1,176),(1,177),(1,178),(1,179),(1,180),(1,181),(1,182),(1,183),(1,184),(1,185),(1,186),(1,187),(1,188),(1,189),(1,190),(1,191),(1,192),(1,193),(1,194),(1,195),(1,196),(1,197),(1,198),(1,199),(1,200),(1,201),(1,202),(1,203),(1,204),(1,205),(1,206),(1,207),(1,208),(1,209),(1,210),(1,211),(1,212),(1,213),(1,214),(1,215),(1,216),(1,217),(1,218),(1,219),(1,220),(1,221),(1,222),(1,223),(1,224),(1,225),(1,226),(1,227),(1,228),(1,229),(1,230),(1,231),(1,232),(1,233),(1,234),(1,235),(1,236),(1,237),(1,238),(1,239),(1,240),(1,241),(1,242),(1,243),(1,244),(1,245),(1,246),(1,247),(1,248),(1,249),(1,250),(1,251),(1,252),(1,253),(1,254),(1,255),(61,8),(61,9),(61,10),(61,11),(61,12),(61,13),(61,14),(61,18),(61,26),(61,35),(61,36),(61,37),(61,38),(61,39),(61,40),(61,41),(61,42),(61,43),(61,44),(61,45),(61,46),(61,47),(61,51),(61,52),(61,53),(61,66),(61,90),(61,116),(61,120),(61,121),(61,137),(61,142),(61,156),(61,158),(64,7),(64,8),(64,9),(64,10),(64,11),(64,12),(64,13),(64,14),(64,18),(64,19),(64,20),(64,23),(64,26),(64,32),(64,33),(64,34),(64,35),(64,36),(64,37),(64,38),(64,40),(64,41),(64,42),(64,43),(64,45),(64,46),(64,48),(64,49),(64,50),(64,51),(64,52),(64,53),(64,54),(64,55),(64,56),(64,57),(64,58),(64,59),(64,60),(64,61),(64,62),(64,63),(64,64),(64,65),(64,66),(64,67),(64,68),(64,69),(64,70),(64,71),(64,72),(64,73),(64,74),(64,75),(64,76),(64,77),(64,78),(64,79),(64,80),(64,81),(64,82),(64,83),(64,84),(64,85),(64,87),(64,88),(64,89),(64,90),(64,91),(64,92),(64,93),(64,94),(64,95),(64,96),(64,97),(64,99),(64,100),(64,101),(64,102),(64,103),(64,104),(64,105),(64,106),(64,108),(64,112),(64,114),(64,115),(64,116),(64,117),(64,118),(64,119),(64,120),(64,121),(64,122),(64,123),(64,124),(64,125),(64,126),(64,128),(64,129),(64,130),(64,131),(64,132),(64,133),(64,134),(64,135),(64,136),(64,137),(64,138),(64,140),(64,141),(64,142),(64,143),(64,144),(64,145),(64,146),(64,147),(64,148),(64,149),(64,150),(64,151),(64,152),(64,153),(64,154),(64,155),(64,156),(64,158),(64,159),(64,160),(64,161),(64,162),(64,164),(64,165),(64,167),(64,168),(64,169),(64,170),(64,171),(64,172),(64,173),(64,174),(64,177),(64,178),(64,179),(64,180),(64,181),(64,182),(64,183),(64,184),(64,185),(64,186),(64,187),(64,188),(64,189),(64,190),(64,191),(64,192),(64,193),(64,194),(64,195),(64,196),(64,197),(64,198),(64,199),(64,200),(64,201),(64,202),(64,203),(64,204),(64,205),(64,206),(64,207),(64,208),(64,209),(64,210),(64,211),(64,212),(64,213),(64,214),(64,215),(64,216),(64,217),(64,218),(64,219),(64,220),(64,221),(64,222),(64,223),(64,224),(64,225),(64,226),(64,227),(64,228),(64,229),(64,230),(64,231),(64,232),(64,233),(64,234),(64,235),(64,236),(64,237),(64,238),(64,239),(64,240),(64,241),(64,242),(64,243),(64,244),(64,245),(64,246),(64,247),(64,248),(64,249),(64,250),(64,251),(64,252),(64,253),(64,254),(64,255);
/*!40000 ALTER TABLE `admin_role_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `advertise`
--

DROP TABLE IF EXISTS `advertise`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `advertise` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `advertise_type` int(11) NOT NULL,
  `auto` int(11) DEFAULT NULL,
  `autoword` varchar(255) DEFAULT NULL,
  `coin_unit` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `deal_amount` decimal(18,8) DEFAULT NULL COMMENT '交易中数量',
  `level` int(11) DEFAULT NULL,
  `limit_money` varchar(255) DEFAULT NULL,
  `max_limit` decimal(18,2) DEFAULT NULL COMMENT '最高单笔交易额',
  `min_limit` decimal(18,2) DEFAULT NULL COMMENT '最低单笔交易额',
  `number` decimal(18,8) DEFAULT NULL COMMENT '计划数量',
  `pay_mode` varchar(255) DEFAULT NULL,
  `premise_rate` decimal(18,6) DEFAULT NULL COMMENT '溢价百分比',
  `price` decimal(18,2) DEFAULT NULL COMMENT '交易价格',
  `price_type` int(11) NOT NULL,
  `remain_amount` decimal(18,8) DEFAULT NULL COMMENT '计划剩余数量',
  `remark` varchar(1024) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `time_limit` int(11) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `version` bigint(20) DEFAULT NULL,
  `coin_id` bigint(20) NOT NULL,
  `country` varchar(255) NOT NULL,
  `member_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `FK75rse9iecdnimf8ugtf20c43l` (`coin_id`) USING BTREE,
  KEY `FK9lueh92242ckyajg17xr9tcie` (`country`) USING BTREE,
  KEY `FKspoip5yq9ednwwondsga9c9k6` (`member_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `advertise`
--

LOCK TABLES `advertise` WRITE;
/*!40000 ALTER TABLE `advertise` DISABLE KEYS */;
INSERT INTO `advertise` VALUES (1,1,0,'',NULL,'2020-10-28 05:06:13',0.00000000,0,NULL,1000.00,100.00,0.00000000,'银联',1.000000,6.67,1,0.00000000,'',2,15,'2020-11-06 08:06:43',NULL,4,2,'中国',1),(2,1,1,'',NULL,'2020-10-28 09:17:09',14.26533524,0,NULL,103.00,100.00,0.00000000,'银联',0.100000,6.61,1,0.00000000,'',1,17,'2020-11-06 08:05:35',NULL,2,2,'中国',600800),(3,1,0,'',NULL,'2020-10-28 10:59:33',0.00000000,0,NULL,200.00,100.00,0.00000000,'银联',1.000000,92110.84,1,0.00000000,'',2,15,'2020-11-02 17:14:03',NULL,4,1,'中国',600800),(4,0,0,'',NULL,'2020-11-01 02:32:07',0.00000000,0,NULL,100000.00,100.00,0.00000000,'银联',1.000000,6.65,0,0.00000000,'',2,10,'2020-11-06 08:07:24',NULL,4,2,'中国',1),(5,0,0,'',NULL,'2020-11-06 08:06:20',0.00000000,0,NULL,10000.00,100.00,0.00000000,'银联',6.600000,6.60,0,0.00000000,'',2,10,'2020-11-06 08:07:25',NULL,2,2,'中国',1);
/*!40000 ALTER TABLE `advertise` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `announcement`
--

DROP TABLE IF EXISTS `announcement`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `announcement` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `content` text,
  `create_time` datetime DEFAULT NULL,
  `img_url` varchar(255) DEFAULT NULL,
  `is_show` bit(1) DEFAULT NULL,
  `is_top` varchar(255) DEFAULT NULL,
  `sort` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `lang` varchar(255) DEFAULT NULL,
  `announcement_classification` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `announcement`
--

LOCK TABLES `announcement` WRITE;
/*!40000 ALTER TABLE `announcement` DISABLE KEYS */;
/*!40000 ALTER TABLE `announcement` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `app_revision`
--

DROP TABLE IF EXISTS `app_revision`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `app_revision` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `download_url` varchar(255) DEFAULT NULL,
  `platform` int(11) DEFAULT NULL,
  `publish_time` datetime DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `version` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app_revision`
--

LOCK TABLES `app_revision` WRITE;
/*!40000 ALTER TABLE `app_revision` DISABLE KEYS */;
INSERT INTO `app_revision` VALUES (1,'https://www.bizzan.top/app',0,'2020-09-28 12:20:03','安卓APP','1.0.6'),(2,'https://www.bizzan.top/app',1,'2020-09-28 00:00:00','苹果APP','1.0.0');
/*!40000 ALTER TABLE `app_revision` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `appeal`
--

DROP TABLE IF EXISTS `appeal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `appeal` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `associate_id` bigint(20) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `deal_with_time` datetime DEFAULT NULL,
  `initiator_id` bigint(20) DEFAULT NULL,
  `is_success` int(11) DEFAULT NULL,
  `remark` varchar(500) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `admin_id` bigint(20) DEFAULT NULL,
  `order_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `UK_todwxorutclquf69bwow70kml` (`order_id`) USING BTREE,
  KEY `FKanmcnj859x2tv3y0pv7u05cqa` (`admin_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `appeal`
--

LOCK TABLES `appeal` WRITE;
/*!40000 ALTER TABLE `appeal` DISABLE KEYS */;
INSERT INTO `appeal` VALUES (1,600800,'2020-11-09 04:56:51',NULL,1,NULL,'测试',0,NULL,11);
/*!40000 ALTER TABLE `appeal` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `business_auth_apply`
--

DROP TABLE IF EXISTS `business_auth_apply`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `business_auth_apply` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `amount` decimal(19,2) DEFAULT NULL,
  `auditing_time` datetime DEFAULT NULL,
  `auth_info` text,
  `certified_business_status` int(11) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `deposit_record_id` varchar(255) DEFAULT NULL,
  `detail` varchar(255) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `business_auth_deposit_id` bigint(20) DEFAULT NULL,
  `member_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `FKds72omottejlk5isd34ha5i10` (`business_auth_deposit_id`) USING BTREE,
  KEY `FKdghp8ri44t77ntuw06gicphuu` (`member_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `business_auth_apply`
--

LOCK TABLES `business_auth_apply` WRITE;
/*!40000 ALTER TABLE `business_auth_apply` DISABLE KEYS */;
/*!40000 ALTER TABLE `business_auth_apply` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `business_auth_deposit`
--

DROP TABLE IF EXISTS `business_auth_deposit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `business_auth_deposit` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `amount` decimal(18,8) DEFAULT NULL COMMENT '保证金数额',
  `create_time` datetime DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `admin_id` bigint(20) DEFAULT NULL,
  `coin_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `FKfj3hxtr3ae1yma9bxeuqc29pj` (`admin_id`) USING BTREE,
  KEY `FKjx7799a3pwdtnu43fkpn27kj6` (`coin_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `business_auth_deposit`
--

LOCK TABLES `business_auth_deposit` WRITE;
/*!40000 ALTER TABLE `business_auth_deposit` DISABLE KEYS */;
INSERT INTO `business_auth_deposit` VALUES (1,10000.00000000,'2020-09-29 04:57:10',0,1,'USDT'),(2,100.00000000,'2020-11-03 15:56:03',0,1,'BitcoinCash');
/*!40000 ALTER TABLE `business_auth_deposit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bussiness_cancel_apply`
--

DROP TABLE IF EXISTS `bussiness_cancel_apply`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bussiness_cancel_apply` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `cancel_apply_time` datetime DEFAULT NULL,
  `deposit_record_id` varchar(255) DEFAULT NULL,
  `detail` varchar(255) DEFAULT NULL,
  `handle_time` datetime DEFAULT NULL,
  `reason` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `member_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `FKbwtwtm0jd1eqa8dh7e8ychcx1` (`member_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bussiness_cancel_apply`
--

LOCK TABLES `bussiness_cancel_apply` WRITE;
/*!40000 ALTER TABLE `bussiness_cancel_apply` DISABLE KEYS */;
/*!40000 ALTER TABLE `bussiness_cancel_apply` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `coin`
--

DROP TABLE IF EXISTS `coin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `coin` (
  `name` varchar(255) NOT NULL,
  `can_auto_withdraw` int(11) DEFAULT NULL,
  `can_recharge` int(11) DEFAULT NULL,
  `can_transfer` int(11) DEFAULT NULL,
  `can_withdraw` int(11) DEFAULT NULL,
  `cny_rate` double NOT NULL,
  `enable_rpc` int(11) DEFAULT NULL,
  `is_platform_coin` int(11) DEFAULT NULL,
  `max_tx_fee` double NOT NULL,
  `max_withdraw_amount` decimal(18,8) DEFAULT NULL COMMENT '最大提币数量',
  `min_tx_fee` double NOT NULL,
  `min_withdraw_amount` decimal(18,8) DEFAULT NULL COMMENT '最小提币数量',
  `name_cn` varchar(255) NOT NULL,
  `sort` int(11) NOT NULL,
  `status` int(11) DEFAULT NULL,
  `unit` varchar(255) NOT NULL,
  `usd_rate` double NOT NULL,
  `withdraw_threshold` decimal(18,8) DEFAULT NULL COMMENT '提现阈值',
  `has_legal` bit(1) NOT NULL DEFAULT b'0',
  `cold_wallet_address` varchar(255) DEFAULT NULL,
  `miner_fee` decimal(18,8) DEFAULT NULL COMMENT '矿工费',
  `withdraw_scale` int(11) DEFAULT '4' COMMENT '提币精度',
  `information` varchar(1024) DEFAULT NULL,
  `infolink` varchar(255) DEFAULT NULL,
  `account_type` int(11) DEFAULT '0' COMMENT '币种账户类型',
  `deposit_address` varchar(255) DEFAULT NULL,
  `min_recharge_amount` decimal(18,8) DEFAULT NULL COMMENT '最小充值数量',
  PRIMARY KEY (`name`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `coin`
--

LOCK TABLES `coin` WRITE;
/*!40000 ALTER TABLE `coin` DISABLE KEYS */;
INSERT INTO `coin` VALUES ('Bitcoin',0,1,1,1,0,1,0,0.01,5.00000000,0.001,0.00200000,'比特币',3,0,'BTC',0,0.10000000,_binary '\0',NULL,0.00002000,4,'比特币（BitCoin）的概念最初由中本聪在2008年提出，根据中本聪的思路设计发布的开源软件以及建构其上的P2P网络。比特币是一种P2P形式的数字货币。点对点的传输意味着一个去中心化的支付系统。','https://www.51mex.io/helpdetail?cate=3&id=10&cateTitle=%E5%B8%81%E7%A7%8D%E8%B5%84%E6%96%99',0,NULL,0.10000000),('BitcoinCash',0,1,1,1,0,1,0,0.01,1000.00000000,0.001,0.10000000,'BCHABC',5,0,'BCH',0,0.01000000,_binary '\0',NULL,NULL,0,'比特币现金（BitcoinCash）与比特币相同，是一种基于去中心化，采用点对点网络与共识主动性，开放源代码，以区块链作为底层技术的加密货货币。','https://www.51mex.io/helpdetail?cate=3&id=14&cateTitle=%E5%B8%81%E7%A7%8D%E8%B5%84%E6%96%99',0,NULL,0.01000000),('BitcoinSV',0,1,1,1,0,1,0,0.0008,1000.00000000,0.0005,0.20000000,'BSV',6,0,'BSV',0,0.00010000,_binary '\0',NULL,NULL,0,'BSV（Bitcoin Satoshi Vision）是遵循中本聪白皮书原始设计和协议稳定的比特币，实现原定的大规模链上扩容愿景，旨在成为全球通用的点对点电子现金与价值数据传输网络。','https://www.51mex.io/helpdetail?cate=3&id=42&cateTitle=%E5%B8%81%E7%A7%8D%E8%B5%84%E6%96%99',0,NULL,0.01000000),('EOS',0,1,1,1,0,0,0,1,10000.00000000,0.1,20.00000000,'Enterprise Operation System',7,0,'EOS',0,0.00100000,_binary '\0',NULL,NULL,0,'EOS是区块链奇才BM（Daniel Larimer）领导开发的类似操作系统的区块链架构平台，旨在实现分布式应用的性能扩展。EOS 提供帐户，身份验证，数据库，异步通信以及在数以百计的CPU或群集上的程序调度。','https://www.51mex.io/helpdetail?cate=3&id=15&cateTitle=%E5%B8%81%E7%A7%8D%E8%B5%84%E6%96%99',1,NULL,0.10000000),('Ethereum',1,1,1,1,0,1,0,0.01,1000.00000000,0.002,0.10000000,'以太坊',4,0,'ETH',0,0.01000000,_binary '\0','',NULL,0,'Ethereum（以太坊）是一个平台和一种编程语言，使开发人员能够建立和发布下一代分布式应用。 Ethereum可以用来编程，分散，担保和交易任何事物：投票，域名，金融交易所，众筹，公司管理， 合同和大部分的协议，知识产权，还有得益于硬件集成的智能资产。','https://www.51mex.io/helpdetail?cate=3&id=11&cateTitle=%E5%B8%81%E7%A7%8D%E8%B5%84%E6%96%99',0,'',0.01000000),('EUSDT',0,1,1,1,0,0,0,10,10000.00000000,4,10.00000000,'EUSDT',2,0,'EUSDT',0,1.00000000,_binary '\0','',NULL,0,'','',0,'',1.00000000),('Litecoin',0,1,1,1,0,1,0,0.005,1000.00000000,0.001,0.20000000,'莱特币',10,0,'LTC',0,0.00001000,_binary '\0',NULL,NULL,0,'莱特币 (Litecoin, LTC) 是受比特币(BitCoin, BTC) 的启发而推出的改进版数字货币，由一名曾任职于谷歌的程序员设计并编程实现 , 2011年11月9日发布运行。莱特币与比特币在技术上具有相同的实现原理，但莱特币的创造和转让基于一种开源的加密协议，不受到任何中央机构的管理。','https://www.51mex.io/helpdetail?cate=3&id=13&cateTitle=%E5%B8%81%E7%A7%8D%E8%B5%84%E6%96%99',0,NULL,0.00010000),('Ripple',0,1,1,1,0,0,0,5,100000.00000000,0.15,30.00000000,'瑞波币',8,0,'XRP',0,1.00000000,_binary '\0',NULL,NULL,0,'Ripple(瑞波)是世界上第一个开放的支付网络，通过这个支付网络可以转账任意一种货币，简便易行快捷，交易确认在几秒以内完成，交易费用几乎是零，没有所谓的跨行异地以及跨国支付费用。Ripple开放式支付系统是一个虚拟货币网络、未来的电子支付平台。','https://www.51mex.io/helpdetail?cate=3&id=12&cateTitle=%E5%B8%81%E7%A7%8D%E8%B5%84%E6%96%99',1,NULL,1.00000000),('USDT',0,1,1,1,6.71,1,0,10,100000.00000000,4,10.00000000,'泰达币',1,0,'USDT',1,1.00000000,_binary '\0','0xeEAc71040c749a3D632A8Fd7f966a1e98FA23323',NULL,0,'','',0,'',1.00000000);
/*!40000 ALTER TABLE `coin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contract_coin`
--

DROP TABLE IF EXISTS `contract_coin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contract_coin` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `base_coin_scale` int(11) NOT NULL,
  `base_symbol` varchar(255) DEFAULT NULL,
  `close_fee` decimal(18,8) DEFAULT '0.00010000' COMMENT '平仓手续费',
  `coin_scale` int(11) NOT NULL,
  `coin_symbol` varchar(255) DEFAULT NULL,
  `enable` int(2) DEFAULT '1' COMMENT '状态',
  `enable_market_buy` int(2) DEFAULT '1' COMMENT '是否启用市价开仓做多',
  `enable_market_sell` int(2) DEFAULT '1' COMMENT '是否启用市价开仓做空',
  `enable_open_buy` int(2) DEFAULT '1' COMMENT '是否允许开仓做多',
  `enable_open_sell` int(2) DEFAULT '1' COMMENT '是否允许开仓做空',
  `enable_trigger_entrust` int(2) DEFAULT '1' COMMENT '是否启用开仓计划委托',
  `exchangeable` int(2) DEFAULT '1' COMMENT '是否可交易',
  `fee_percent` decimal(18,8) DEFAULT '0.00100000' COMMENT '隔夜费率',
  `interval_hour` int(11) DEFAULT '1' COMMENT '点差类型',
  `leverage` varchar(255) DEFAULT NULL,
  `leverage_type` int(2) DEFAULT '1' COMMENT '点差类型',
  `maintenance_margin_rate` decimal(18,8) DEFAULT '0.00500000' COMMENT '维持保证金率',
  `maker_fee` decimal(18,8) DEFAULT '0.00010000' COMMENT '平多手续费',
  `max_share` decimal(18,8) DEFAULT '1000.00000000' COMMENT '最大手数',
  `min_share` decimal(18,8) DEFAULT '1.00000000' COMMENT '最小手数',
  `name` varchar(255) DEFAULT NULL,
  `open_fee` decimal(18,8) DEFAULT '0.00010000' COMMENT '开仓手续费',
  `share_number` decimal(18,8) DEFAULT '0.00000000' COMMENT '单位手数',
  `sort` int(11) NOT NULL,
  `spread` decimal(18,8) DEFAULT '0.00000000' COMMENT '点差',
  `spread_type` int(2) DEFAULT '1' COMMENT '点差类型',
  `symbol` varchar(255) DEFAULT NULL,
  `taker_fee` decimal(18,8) DEFAULT '0.00010000' COMMENT '平空手续费',
  `total_close_fee` decimal(26,8) DEFAULT '0.00000000' COMMENT '合约总平仓手续费',
  `total_loss` decimal(26,8) DEFAULT '0.00000000' COMMENT '合约平台亏损',
  `total_open_fee` decimal(26,8) DEFAULT '0.00000000' COMMENT '合约总开仓手续费',
  `total_profit` decimal(26,8) DEFAULT '0.00000000' COMMENT '合约平台盈利',
  `type` int(11) DEFAULT '0' COMMENT '合约类型',
  `visible` int(2) DEFAULT '1' COMMENT '前台可见状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contract_coin`
--

LOCK TABLES `contract_coin` WRITE;
/*!40000 ALTER TABLE `contract_coin` DISABLE KEYS */;
INSERT INTO `contract_coin` VALUES (1,4,'USDT',0.00010000,4,'BTC',1,1,1,1,1,1,1,0.00100000,8,'10,20,30,40,50,60,70,80,90,100',1,0.00500000,0.00010000,1000.00000000,1.00000000,'BTC永续合约',0.00010000,100.00000000,1,0.00000000,1,'BTC/USDT',0.00010000,2622.79000000,234243.85839300,2623.51000000,893917.50678800,0,1),(2,4,'USDT',0.00010000,4,'ETH',1,1,1,1,1,1,1,0.00100000,8,'10,20,30,40,50,60,70,80,90,100',1,0.00500000,0.00010000,1000.00000000,1.00000000,'ETH永续',0.00010000,100.00000000,1,0.00000000,1,'ETH/USDT',0.00010000,0.00000000,0.00000000,0.02000000,0.00000000,0,1),(3,4,'USDT',0.00010000,4,'LTC',1,1,1,1,1,1,1,0.00100000,8,'10,20,30,40,50,60,70,80,90,100',1,0.00500000,0.00010000,1000.00000000,1.00000000,'LTC永续',0.00010000,100.00000000,1,0.00000000,1,'LTC/USDT',0.00010000,0.00000000,0.00000000,1.02000000,0.00000000,0,1);
/*!40000 ALTER TABLE `contract_coin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contract_option`
--

DROP TABLE IF EXISTS `contract_option`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contract_option` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `close_price` decimal(18,8) DEFAULT '0.00000000' COMMENT '收盘价格',
  `close_time` bigint(20) DEFAULT NULL,
  `create_time` bigint(20) DEFAULT NULL,
  `init_buy` decimal(18,8) DEFAULT '0.00000000' COMMENT '买涨奖池总金额',
  `init_sell` decimal(18,8) DEFAULT '0.00000000' COMMENT '买涨奖池总金额',
  `open_price` decimal(18,8) DEFAULT '0.00000000' COMMENT '开盘价格',
  `open_time` bigint(20) DEFAULT NULL,
  `option_no` int(11) DEFAULT '0' COMMENT '合约序号',
  `result` int(4) DEFAULT '1' COMMENT '当局结果',
  `status` int(4) DEFAULT '1' COMMENT '本期合约状态',
  `symbol` varchar(255) DEFAULT NULL,
  `total_buy` decimal(18,8) DEFAULT '0.00000000' COMMENT '买涨奖池总金额',
  `total_buy_count` int(11) DEFAULT '0' COMMENT '买涨人数',
  `total_pl` decimal(18,8) DEFAULT '0.00000000' COMMENT '买涨奖池总金额',
  `total_sell` decimal(18,8) DEFAULT '0.00000000' COMMENT '买跌奖池总金额',
  `total_sell_count` int(11) DEFAULT '0' COMMENT '买涨人数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12729 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contract_option`
--

LOCK TABLES `contract_option` WRITE;
/*!40000 ALTER TABLE `contract_option` DISABLE KEYS */;
/*!40000 ALTER TABLE `contract_option` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contract_option_coin`
--

DROP TABLE IF EXISTS `contract_option_coin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contract_option_coin` (
  `symbol` varchar(255) NOT NULL,
  `amount` varchar(255) DEFAULT NULL,
  `base_coin_scale` int(11) DEFAULT '4' COMMENT '基币小数精度',
  `base_symbol` varchar(255) DEFAULT NULL,
  `close_time_gap` int(11) DEFAULT '300' COMMENT '开盘到收盘时间间隔',
  `coin_scale` int(11) DEFAULT '4' COMMENT '交易币小数精度',
  `coin_symbol` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `enable` int(2) DEFAULT '1' COMMENT '状态',
  `enable_buy` int(2) DEFAULT '1' COMMENT '是否允许看涨',
  `enable_sell` int(2) DEFAULT '1' COMMENT '是否允许看跌',
  `fee_percent` decimal(8,4) DEFAULT '0.0000' COMMENT '开仓手续费',
  `init_buy_reward` decimal(8,4) DEFAULT '0.0000' COMMENT '初始买涨奖池金额',
  `init_sell_reward` decimal(8,4) DEFAULT '0.0000' COMMENT '初始买跌奖池金额',
  `max_option_no` int(11) DEFAULT '0' COMMENT '最新期号',
  `name` varchar(255) DEFAULT NULL,
  `ngnore_percent` decimal(8,4) DEFAULT '0.0001' COMMENT '忽视涨跌幅度',
  `open_time_gap` int(11) DEFAULT '300' COMMENT '开始到开盘时间间隔',
  `sort` int(11) DEFAULT '0' COMMENT '排序',
  `tied_type` int(2) DEFAULT '1' COMMENT '平局处理方式',
  `total_profit` decimal(8,4) DEFAULT '0.0000' COMMENT '预测合约总盈利',
  `visible` int(2) DEFAULT '1' COMMENT '前台可见状态',
  `win_fee_percent` decimal(8,4) DEFAULT '0.0010' COMMENT '赢家手续费',
  PRIMARY KEY (`symbol`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contract_option_coin`
--

LOCK TABLES `contract_option_coin` WRITE;
/*!40000 ALTER TABLE `contract_option_coin` DISABLE KEYS */;
INSERT INTO `contract_option_coin` VALUES ('BTC/USDT','10,20,50,100,200,500,1000,2000',4,'USDT',300,4,'BTC','2020-11-29 02:00:20',1,1,1,0.0000,0.0000,0.0000,4244,'BTC/USDT预测合约',NULL,300,1,1,0.0000,1,0.0010),('ETH/USDT','10,20,50,100,200,500,1000,2000',4,'USDT',300,4,'ETH','2020-11-29 02:00:47',1,1,1,0.0000,0.0000,0.0000,4242,'ETH/USDT预测合约',NULL,300,2,1,0.0000,1,0.0010),('LTC/USDT','10,20,50,100,200,500,1000,2000',4,'USDT',300,4,'LTC','2020-11-29 02:01:05',1,1,1,0.0000,0.0000,0.0000,4242,'LTC/USDT预测合约',NULL,300,3,1,0.0000,1,0.0010);
/*!40000 ALTER TABLE `contract_option_coin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contract_option_order`
--

DROP TABLE IF EXISTS `contract_option_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contract_option_order` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `base_symbol` varchar(255) DEFAULT NULL,
  `bet_amount` decimal(18,8) DEFAULT '0.00000000' COMMENT '投注金额',
  `coin_symbol` varchar(255) DEFAULT NULL,
  `create_time` bigint(20) DEFAULT NULL,
  `direction` int(4) DEFAULT '1' COMMENT '方向',
  `fee` decimal(18,8) DEFAULT '0.00000000' COMMENT '手续费',
  `member_id` bigint(20) DEFAULT NULL,
  `option_id` bigint(20) DEFAULT NULL,
  `option_no` int(11) DEFAULT '0' COMMENT '合约序号',
  `result` int(4) DEFAULT '1' COMMENT '参与结果',
  `reward_amount` decimal(18,8) DEFAULT '0.00000000' COMMENT '胜利奖金',
  `status` int(4) DEFAULT '1' COMMENT '订单状态',
  `symbol` varchar(255) DEFAULT NULL,
  `win_fee` decimal(18,8) DEFAULT '0.00000000' COMMENT '抽水',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contract_option_order`
--

LOCK TABLES `contract_option_order` WRITE;
/*!40000 ALTER TABLE `contract_option_order` DISABLE KEYS */;
INSERT INTO `contract_option_order` VALUES (1,'USDT',10.00000000,'BTC',1606663903884,0,0.00000000,1,745,249,2,0.00000000,1,'BTC/USDT',0.00000000),(2,'USDT',2000.00000000,'BTC',1606701907871,1,0.00000000,1,883,295,1,0.00000000,1,'BTC/USDT',0.00000000),(3,'USDT',10.00000000,'BTC',1606726265212,0,0.00000000,600800,1126,376,2,0.00000000,1,'BTC/USDT',0.00000000),(4,'USDT',2000.00000000,'BTC',1606730638033,0,0.00000000,600800,1168,390,2,0.00000000,1,'BTC/USDT',0.00000000),(5,'USDT',20.00000000,'BTC',1606736884675,0,0.00000000,600800,1231,411,2,0.00000000,1,'BTC/USDT',0.00000000),(6,'USDT',1000.00000000,'BTC',1607026446185,0,0.00000000,600800,3981,1329,2,0.00000000,1,'BTC/USDT',0.00000000),(7,'USDT',200.00000000,'BTC',1607239521585,0,0.00000000,600800,6108,2038,2,0.00000000,1,'BTC/USDT',0.00000000),(8,'USDT',200.00000000,'LTC',1607239528569,0,0.00000000,600800,6110,2036,1,0.00000000,1,'LTC/USDT',0.00000000),(9,'USDT',200.00000000,'BTC',1607275029475,0,0.00000000,600800,6462,2156,1,0.00000000,1,'BTC/USDT',0.00000000),(10,'USDT',10.00000000,'BTC',1607275754293,1,0.00000000,600800,6468,2158,2,0.00000000,1,'BTC/USDT',0.00000000),(11,'USDT',20.00000000,'BTC',1607277172445,1,0.00000000,600800,6483,2163,1,0.00000000,1,'BTC/USDT',0.00000000),(12,'USDT',10.00000000,'BTC',1607357117874,1,0.00000000,600800,7278,2428,2,0.00000000,1,'BTC/USDT',0.00000000),(13,'USDT',2000.00000000,'BTC',1607357995702,1,0.00000000,600800,7284,2430,2,0.00000000,1,'BTC/USDT',0.00000000),(14,'USDT',2000.00000000,'BTC',1607358001185,1,0.00000000,600800,7287,2431,2,0.00000000,1,'BTC/USDT',0.00000000),(15,'USDT',2000.00000000,'BTC',1607359892896,0,0.00000000,600800,7305,2437,2,0.00000000,1,'BTC/USDT',0.00000000),(16,'USDT',2000.00000000,'BTC',1607435874956,0,0.00000000,600800,8064,2690,2,0.00000000,1,'BTC/USDT',0.00000000),(17,'USDT',2000.00000000,'BTC',1607436031227,1,0.00000000,600800,8067,2691,2,0.00000000,1,'BTC/USDT',0.00000000),(18,'USDT',2000.00000000,'LTC',1607437046342,0,0.00000000,600800,8078,2692,1,0.00000000,1,'LTC/USDT',0.00000000),(19,'USDT',2000.00000000,'LTC',1607437418394,1,0.00000000,600800,8081,2693,1,0.00000000,1,'LTC/USDT',0.00000000),(20,'USDT',2000.00000000,'BTC',1607509121266,0,0.00000000,600800,8796,2934,1,0.00000000,1,'BTC/USDT',0.00000000),(21,'USDT',10.00000000,'BTC',1607583833559,0,0.00000000,1,9543,3183,1,0.00000000,1,'BTC/USDT',0.00000000),(22,'USDT',20.00000000,'BTC',1607584080316,1,0.00000000,1,9546,3184,2,0.00000000,1,'BTC/USDT',0.00000000),(23,'USDT',20.00000000,'BTC',1607588687455,0,0.00000000,600800,9591,3199,1,0.00000000,1,'BTC/USDT',0.00000000),(24,'USDT',20.00000000,'BTC',1607588701856,1,0.00000000,600800,9594,3200,1,0.00000000,1,'BTC/USDT',0.00000000),(25,'USDT',100.00000000,'ETH',1607588747375,1,0.00000000,600800,9595,3198,1,0.00000000,1,'ETH/USDT',0.00000000),(26,'USDT',200.00000000,'BTC',1607589062685,0,0.00000000,600800,9597,3201,2,0.00000000,1,'BTC/USDT',0.00000000),(27,'USDT',500.00000000,'ETH',1607589068840,0,0.00000000,600800,9598,3199,2,0.00000000,1,'ETH/USDT',0.00000000),(28,'USDT',10.00000000,'BTC',1607628532182,0,0.00000000,1,9990,3332,1,0.00000000,1,'BTC/USDT',0.00000000),(29,'USDT',2000.00000000,'BTC',1607628865753,1,0.00000000,1,9993,3333,2,0.00000000,1,'BTC/USDT',0.00000000),(30,'USDT',20.00000000,'BTC',1607675432332,0,0.00000000,600800,10461,3489,2,0.00000000,1,'BTC/USDT',0.00000000),(31,'USDT',2000.00000000,'BTC',1607697407277,0,0.00000000,600800,10677,3561,1,0.00000000,1,'BTC/USDT',0.00000000),(32,'USDT',500.00000000,'BTC',1607697427115,0,0.00000000,600800,10680,3562,2,0.00000000,1,'BTC/USDT',0.00000000);
/*!40000 ALTER TABLE `contract_option_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contract_order_entrust`
--

DROP TABLE IF EXISTS `contract_order_entrust`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contract_order_entrust` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `base_symbol` varchar(255) DEFAULT NULL,
  `close_fee` decimal(18,8) DEFAULT '0.00000000' COMMENT '开仓手续费',
  `coin_symbol` varchar(255) DEFAULT NULL,
  `contract_id` bigint(20) DEFAULT NULL,
  `contract_order_entrust_id` varchar(255) DEFAULT NULL,
  `create_time` bigint(20) DEFAULT NULL,
  `current_price` decimal(18,8) DEFAULT '0.00000000' COMMENT '下单时价',
  `direction` int(11) DEFAULT '1' COMMENT '方向',
  `entrust_price` decimal(19,2) DEFAULT NULL,
  `entrust_type` int(11) DEFAULT '0' COMMENT '委托订单类型',
  `is_blast` int(2) DEFAULT '0' COMMENT '是否是计划委托的委托单',
  `is_from_spot` int(2) DEFAULT '0' COMMENT '是否是计划委托的委托单',
  `member_id` bigint(20) DEFAULT NULL,
  `open_fee` decimal(18,8) DEFAULT '0.00000000' COMMENT '开仓手续费',
  `patterns` int(11) DEFAULT '1' COMMENT '仓位模式',
  `principal_amount` decimal(18,8) DEFAULT '0.00000000' COMMENT '本金数量',
  `principal_unit` varchar(255) DEFAULT NULL,
  `profit_and_loss` decimal(18,8) DEFAULT '0.00000000' COMMENT '盈亏',
  `share_number` decimal(18,8) DEFAULT '0.00000000' COMMENT '合约面值',
  `status` int(11) DEFAULT NULL,
  `symbol` varchar(255) DEFAULT NULL,
  `traded_price` decimal(19,2) DEFAULT NULL,
  `traded_volume` decimal(18,8) DEFAULT '0.00000000' COMMENT '委托数量',
  `trigger_price` decimal(19,2) DEFAULT NULL,
  `triggering_time` bigint(20) DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `volume` decimal(18,8) DEFAULT '0.00000000' COMMENT '委托数量',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=423 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contract_order_entrust`
--

LOCK TABLES `contract_order_entrust` WRITE;
/*!40000 ALTER TABLE `contract_order_entrust` DISABLE KEYS */;
/*!40000 ALTER TABLE `contract_order_entrust` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `country`
--

DROP TABLE IF EXISTS `country`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `country` (
  `zh_name` varchar(255) NOT NULL,
  `area_code` varchar(255) DEFAULT NULL,
  `en_name` varchar(255) DEFAULT NULL,
  `language` varchar(255) DEFAULT NULL,
  `local_currency` varchar(255) DEFAULT NULL,
  `sort` int(11) NOT NULL,
  PRIMARY KEY (`zh_name`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `country`
--

LOCK TABLES `country` WRITE;
/*!40000 ALTER TABLE `country` DISABLE KEYS */;
INSERT INTO `country` VALUES ('中国','86','China','zh_CN','CNY',0),('中国台湾','886','Taiwan,China','zh_TW','TWD',0),('新加坡','65','Singapore','en_US','SGD',0),('美国','1','America','en_US','USD',0),('香港','852','HongKong','zh_HK','HKD',0);
/*!40000 ALTER TABLE `country` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ctc_acceptor`
--

DROP TABLE IF EXISTS `ctc_acceptor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ctc_acceptor` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `status` int(11) NOT NULL,
  `member_id` bigint(20) DEFAULT NULL,
  `cny_in` decimal(18,2) DEFAULT NULL COMMENT '买入CNY',
  `cny_out` decimal(18,2) DEFAULT NULL COMMENT '售出CNY',
  `usdt_in` decimal(18,2) DEFAULT NULL COMMENT '买入USDT',
  `usdt_out` decimal(18,2) DEFAULT NULL COMMENT '售出USDT',
  PRIMARY KEY (`id`) USING BTREE,
  KEY `FKk3nfn54patdd6rwa0skk70tq6` (`member_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ctc_acceptor`
--

LOCK TABLES `ctc_acceptor` WRITE;
/*!40000 ALTER TABLE `ctc_acceptor` DISABLE KEYS */;
INSERT INTO `ctc_acceptor` VALUES (1,1,1,3500.00,346.50,50.00,500.00);
/*!40000 ALTER TABLE `ctc_acceptor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ctc_order`
--

DROP TABLE IF EXISTS `ctc_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ctc_order` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `ali_no` varchar(255) DEFAULT NULL,
  `qr_code_url` varchar(255) DEFAULT NULL,
  `amount` decimal(19,2) DEFAULT NULL,
  `bank` varchar(255) DEFAULT NULL,
  `branch` varchar(255) DEFAULT NULL,
  `card_no` varchar(255) DEFAULT NULL,
  `cancel_reason` varchar(255) DEFAULT NULL,
  `cancel_time` datetime DEFAULT NULL,
  `complete_time` datetime DEFAULT NULL,
  `confirm_time` datetime DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `direction` int(11) NOT NULL,
  `money` decimal(18,2) DEFAULT NULL COMMENT '交易金额',
  `order_sn` varchar(255) NOT NULL,
  `pay_mode` varchar(255) NOT NULL,
  `pay_time` datetime DEFAULT NULL,
  `price` decimal(18,2) DEFAULT NULL COMMENT '价格',
  `remark` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL,
  `unit` varchar(255) NOT NULL,
  `qr_we_code_url` varchar(255) DEFAULT NULL,
  `wechat` varchar(255) DEFAULT NULL,
  `acceptor_id` bigint(20) DEFAULT NULL,
  `member_id` bigint(20) DEFAULT NULL,
  `real_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `UK_t212u5lpa982v4yc0ue7c3eab` (`order_sn`) USING BTREE,
  KEY `FKgk8nq4d3ouoj9eyo1kfqtw0wq` (`acceptor_id`) USING BTREE,
  KEY `FK419ewpncecgofa3j1338d6ma6` (`member_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ctc_order`
--

LOCK TABLES `ctc_order` WRITE;
/*!40000 ALTER TABLE `ctc_order` DISABLE KEYS */;
/*!40000 ALTER TABLE `ctc_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `data_dictionary`
--

DROP TABLE IF EXISTS `data_dictionary`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `data_dictionary` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `bond` varchar(255) DEFAULT NULL,
  `comment` varchar(255) DEFAULT NULL,
  `creation_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `data_dictionary`
--

LOCK TABLES `data_dictionary` WRITE;
/*!40000 ALTER TABLE `data_dictionary` DISABLE KEYS */;
INSERT INTO `data_dictionary` VALUES (1,'register_allow','新用户注册','2019-09-19 15:06:48','2019-09-19 15:06:48','1');
/*!40000 ALTER TABLE `data_dictionary` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `department`
--

DROP TABLE IF EXISTS `department`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `department` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_time` datetime DEFAULT NULL,
  `leader_id` bigint(20) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `UK_1t68827l97cwyxo9r1u6t4p7d` (`name`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `department`
--

LOCK TABLES `department` WRITE;
/*!40000 ALTER TABLE `department` DISABLE KEYS */;
INSERT INTO `department` VALUES (1,'2019-08-27 13:33:20',1,'客服部','','2019-08-27 13:33:20'),(2,'2020-09-28 12:17:29',NULL,'boos','','2020-10-09 18:53:04'),(3,'2020-11-06 08:15:24',NULL,'演示','','2020-11-06 08:15:24');
/*!40000 ALTER TABLE `department` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `deposit_record`
--

DROP TABLE IF EXISTS `deposit_record`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `deposit_record` (
  `id` varchar(255) NOT NULL,
  `amount` decimal(19,2) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `coin_id` varchar(255) DEFAULT NULL,
  `member_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `FK7x5q0lmqqtty5i0w5mq09o8r7` (`coin_id`) USING BTREE,
  KEY `FKji8p5uoc1ad45npyf72rgf2lx` (`member_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `deposit_record`
--

LOCK TABLES `deposit_record` WRITE;
/*!40000 ALTER TABLE `deposit_record` DISABLE KEYS */;
INSERT INTO `deposit_record` VALUES ('1421122d-4082-4686-b422-6f009daf5a57',10000.00,1,'USDT',1),('1da32b48-0779-496c-be3e-9b9f72d6d243',0.00,0,'USDT',846720),('28a84d98-33e7-4758-8aee-e4711a50eea8',0.00,0,'USDT',800609),('29e416fb-6720-405c-be33-d1a454d8e873',0.00,0,'USDT',803070),('5203e78f-e380-4d5e-823e-2739edd29377',0.00,0,'USDT',858972),('84c90d27-4a8e-44c7-b822-7e8544a15719',0.00,0,'USDT',858613),('89486cb8-73d7-4fcc-af04-8d4cada43720',10000.00,0,'USDT',62268),('9b6b03eb-9166-48cc-b087-83e1acdc30a2',0.00,0,'USDT',803064),('a6f1f863-572a-4a39-975a-66f45a2582b0',10000.00,0,'USDT',1),('cee03a8c-1c69-4eb4-a56f-76743a373509',10000.00,0,'USDT',847222),('d637d3a0-43d6-4a41-bb79-932f75b93c1a',0.00,0,'USDT',858951),('e154d5ef-c708-4653-ad1d-9ff5ab0f69fa',0.00,0,'USDT',803071);
/*!40000 ALTER TABLE `deposit_record` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dividend_start_record`
--

DROP TABLE IF EXISTS `dividend_start_record`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dividend_start_record` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `amount` decimal(18,6) DEFAULT NULL COMMENT '数量',
  `date` datetime DEFAULT NULL,
  `end` bigint(20) DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `rate` decimal(18,2) DEFAULT NULL COMMENT '比例',
  `start` bigint(20) DEFAULT NULL,
  `start_date` datetime DEFAULT NULL,
  `unit` varchar(255) DEFAULT NULL,
  `admin_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `FK226c1iy2t1dt9tjjo20pum39d` (`admin_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dividend_start_record`
--

LOCK TABLES `dividend_start_record` WRITE;
/*!40000 ALTER TABLE `dividend_start_record` DISABLE KEYS */;
/*!40000 ALTER TABLE `dividend_start_record` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exchange_coin`
--

DROP TABLE IF EXISTS `exchange_coin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exchange_coin` (
  `symbol` varchar(255) NOT NULL,
  `base_coin_scale` int(11) NOT NULL,
  `base_symbol` varchar(255) DEFAULT NULL,
  `coin_scale` int(11) NOT NULL,
  `coin_symbol` varchar(255) DEFAULT NULL,
  `enable` int(11) NOT NULL,
  `fee` decimal(8,4) DEFAULT NULL COMMENT '交易手续费',
  `sort` int(11) NOT NULL,
  `enable_market_buy` int(11) DEFAULT '1' COMMENT '是否启用市价买',
  `enable_market_sell` int(11) DEFAULT '1' COMMENT '是否启用市价卖',
  `min_sell_price` decimal(18,8) DEFAULT NULL COMMENT '最低挂单卖价',
  `flag` int(11) DEFAULT '0' COMMENT '默认为0，1表示推荐',
  `max_trading_order` int(11) DEFAULT '0' COMMENT '最大允许同时交易的订单数，0表示不限制',
  `max_trading_time` int(11) DEFAULT '0' COMMENT '委托超时自动下架时间，单位为秒，0表示不过期',
  `instrument` varchar(20) DEFAULT NULL COMMENT '交易类型，B2C2特有',
  `min_turnover` decimal(18,8) DEFAULT NULL COMMENT '最小挂单成交额',
  `max_volume` decimal(18,8) DEFAULT NULL COMMENT '最大下单量',
  `min_volume` decimal(18,8) DEFAULT NULL COMMENT '最小下单量',
  `zone` int(11) DEFAULT '0',
  `clear_time` varchar(30) DEFAULT '1' COMMENT '清盘时间',
  `end_time` varchar(30) DEFAULT '1' COMMENT '结束时间',
  `publish_price` decimal(18,8) DEFAULT NULL COMMENT ' 分摊发行价格',
  `publish_type` int(11) DEFAULT '1' COMMENT '发行活动类型 1:无活动,2:抢购发行,3:分摊发行',
  `start_time` varchar(30) DEFAULT '1' COMMENT '开始时间',
  `exchangeable` int(11) DEFAULT '1' COMMENT ' 是否可交易',
  `publish_amount` decimal(18,8) DEFAULT NULL COMMENT ' 活动发行数量',
  `visible` int(11) DEFAULT '1' COMMENT ' 前台可见状态',
  `max_buy_price` decimal(18,8) DEFAULT NULL COMMENT '最高买单价',
  `robot_type` int(11) DEFAULT '0' COMMENT '机器人类型',
  `enable_buy` int(11) DEFAULT '1' COMMENT '是否允许买',
  `enable_sell` int(11) DEFAULT '1' COMMENT '是否允许卖',
  PRIMARY KEY (`symbol`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exchange_coin`
--

LOCK TABLES `exchange_coin` WRITE;
/*!40000 ALTER TABLE `exchange_coin` DISABLE KEYS */;
INSERT INTO `exchange_coin` VALUES ('BCH/BTC',6,'BTC',4,'BCH',1,0.0010,13,1,1,0.00000000,0,0,0,NULL,0.00000000,0.00000000,0.00000000,0,'2020-10-28 00:57:14','2020-10-28 00:57:14',NULL,1,'2020-10-28 00:57:14',1,0.00000000,2,0.00000000,0,1,1),('BCH/USDT',6,'USDT',4,'BCH',1,0.0010,4,1,1,0.00100000,1,0,0,NULL,0.00010000,0.00000000,0.00100000,0,'2019-09-14 15:26:31','2019-09-14 15:26:31',NULL,1,'2019-09-14 15:26:31',1,0.00000000,1,0.00000000,0,1,1),('BSV/BTC',6,'BTC',4,'BSV',1,0.0010,14,1,1,0.00000000,0,0,0,NULL,0.00000000,0.00000000,0.00000000,0,'2020-10-28 00:57:40','2020-10-28 00:57:40',NULL,1,'2020-10-28 00:57:40',1,0.00000000,2,0.00000000,0,1,1),('BSV/USDT',6,'USDT',6,'BSV',1,0.0010,5,1,1,0.00010000,1,0,0,NULL,0.00100000,0.00000000,0.00100000,0,'2019-09-17 14:49:23','2019-09-17 14:49:23',NULL,1,'2019-09-17 14:49:23',1,0.00000000,1,0.00000000,0,1,1),('BTC/USDT',6,'USDT',8,'BTC',1,0.0010,1,1,1,0.00100000,1,0,0,NULL,0.00010000,0.00000000,0.00100000,0,'2019-09-08 11:22:19','2019-09-08 11:22:19',NULL,1,'2019-09-08 11:22:19',1,0.00000000,1,0.00000000,0,1,1),('EOS/ETH',6,'ETH',4,'EOS',1,0.0010,12,1,1,0.00000000,0,0,0,NULL,0.00000000,0.00000000,0.00000000,0,'2020-10-28 00:55:09','2020-10-28 00:55:09',NULL,1,'2020-10-28 00:55:09',1,0.00000000,2,0.00000000,0,1,1),('EOS/USDT',6,'USDT',4,'EOS',1,0.0010,7,1,1,0.00010000,0,0,0,NULL,0.00100000,0.00000000,0.00100000,0,'2019-09-18 15:14:25','2019-09-18 15:14:25',NULL,1,'2019-09-18 15:14:25',1,0.00000000,1,0.00000000,0,1,1),('ETH/BTC',6,'BTC',4,'ETH',1,0.0010,9,1,1,0.00000000,0,0,0,NULL,0.00000000,0.00000000,0.00000000,0,'2020-10-28 00:50:36','2020-10-28 00:50:36',NULL,1,'2020-10-28 00:50:36',1,0.00000000,2,0.00000000,0,1,1),('ETH/USDT',6,'USDT',4,'ETH',1,0.0010,2,1,1,0.00100000,1,0,0,NULL,0.00100000,0.00000000,0.00100000,0,'2019-09-11 13:45:01','2019-09-11 13:45:01',NULL,1,'2019-09-11 13:45:01',1,0.00000000,1,0.00000000,0,1,1),('LTC/ETH',6,'ETH',4,'LTC',1,0.0010,11,1,1,0.00000000,0,0,0,NULL,0.00000000,0.00000000,0.00000000,0,'2020-10-28 00:54:31','2020-10-28 00:54:31',NULL,1,'2020-10-28 00:54:31',1,0.00000000,2,0.00000000,0,1,1),('LTC/USDT',6,'USDT',4,'LTC',1,0.0010,6,1,1,0.00010000,1,0,0,NULL,0.00010000,0.00000000,0.00010000,0,'2019-09-16 14:37:10','2019-09-16 14:37:10',NULL,1,'2019-09-16 14:37:10',1,0.00000000,1,0.00000000,0,1,1),('XRP/ETH',6,'ETH',4,'XRP',1,0.0010,10,1,1,0.00000000,0,0,0,NULL,0.00000000,0.00000000,0.00000000,0,'2020-10-28 00:52:11','2020-10-28 00:52:11',NULL,1,'2020-10-28 00:52:11',1,0.00000000,2,0.00000000,0,1,1),('XRP/USDT',6,'USDT',4,'XRP',1,0.0010,3,1,1,0.00010000,1,0,0,NULL,0.00010000,0.00000000,0.00100000,0,'2019-09-12 19:12:07','2019-09-12 19:12:07',NULL,1,'2019-09-12 19:12:07',1,0.00000000,1,0.00000000,0,1,1);
/*!40000 ALTER TABLE `exchange_coin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exchange_favor_symbol`
--

DROP TABLE IF EXISTS `exchange_favor_symbol`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exchange_favor_symbol` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `add_time` varchar(255) DEFAULT NULL,
  `member_id` bigint(20) DEFAULT NULL,
  `symbol` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=543 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exchange_favor_symbol`
--

LOCK TABLES `exchange_favor_symbol` WRITE;
/*!40000 ALTER TABLE `exchange_favor_symbol` DISABLE KEYS */;
INSERT INTO `exchange_favor_symbol` VALUES (1,'2020-09-15 17:59:45',4,'BTC/USDT'),(3,'2020-09-27 03:23:47',48732,'BTC/USDT'),(6,'2020-09-27 09:47:05',42416,'BTC/USDT'),(10,'2020-09-27 11:20:42',42923,'BTC/USDT'),(12,'2020-09-27 12:49:23',47755,'BTC/USDT'),(13,'2020-09-27 14:43:28',18,'BTC/USDT'),(14,'2020-09-27 14:47:01',1773,'BTC/USDT'),(16,'2020-09-27 18:17:45',19190,'XRP/USDT'),(17,'2020-09-27 18:51:22',44770,'BTC/USDT'),(19,'2020-09-27 22:14:08',121,'BTC/USDT'),(20,'2020-09-27 22:14:20',121,'ETH/USDT'),(21,'2020-09-28 17:05:51',33208,'BTC/USDT'),(22,'2020-09-28 19:52:07',36870,'EOS/USDT'),(23,'2020-09-28 22:11:24',62268,'BTC/USDT'),(25,'2020-09-29 15:27:59',4200,'BTC/USDT'),(28,'2020-10-01 16:15:03',42657,'BTC/USDT'),(32,'2020-10-03 08:11:47',62263,'BTC/USDT'),(33,'2020-10-03 13:33:12',62263,'ETH/USDT'),(34,'2020-10-03 23:39:34',25294,'BTC/USDT'),(36,'2020-10-04 15:42:43',62249,'BTC/USDT'),(38,'2020-10-05 04:36:22',46158,'BTC/USDT'),(44,'2020-10-07 11:40:53',862715,'BTC/USDT'),(45,'2020-10-07 16:31:06',830566,'BTC/USDT'),(48,'2020-10-08 09:00:06',846758,'BTC/USDT'),(49,'2020-10-09 18:07:03',804680,'BTC/USDT'),(52,'2020-10-10 14:05:06',838631,'BTC/USDT'),(53,'2020-10-10 16:31:39',800614,'BCH/USDT'),(54,'2020-10-10 16:50:50',800602,'SIC/USDT'),(56,'2020-10-10 16:51:36',802373,'BTC/USDT'),(58,'2020-10-10 17:04:21',862767,'BTC/USDT'),(59,'2020-10-10 17:07:08',801018,'SIC/USDT'),(60,'2020-10-10 17:15:38',850809,'SIC/USDT'),(61,'2020-10-10 17:34:17',849538,'SIC/USDT'),(62,'2020-10-10 17:51:14',827557,'BTC/USDT'),(63,'2020-10-10 17:59:06',800607,'SIC/USDT'),(65,'2020-10-10 18:01:50',843314,'SIC/USDT'),(66,'2020-10-10 18:04:51',838125,'SIC/USDT'),(67,'2020-10-10 18:08:52',847120,'SIC/USDT'),(70,'2020-10-10 18:40:05',862782,'SIC/USDT'),(72,'2020-10-10 18:58:50',848593,'SIC/USDT'),(74,'2020-10-10 19:07:50',812180,'SIC/USDT'),(78,'2020-10-10 19:48:12',833929,'BTC/USDT'),(80,'2020-10-10 20:42:31',800749,'SIC/USDT'),(81,'2020-10-10 21:55:58',837430,'BTC/USDT'),(82,'2020-10-10 21:57:34',800721,'XRP/USDT'),(84,'2020-10-11 09:00:03',804818,'SIC/USDT'),(85,'2020-10-11 12:53:42',800610,'SIC/USDT'),(86,'2020-10-11 12:55:26',801409,'SIC/USDT'),(87,'2020-10-11 13:02:48',837139,'SIC/USDT'),(88,'2020-10-11 13:04:34',836798,'SIC/USDT'),(89,'2020-10-11 13:57:52',838194,'SIC/USDT'),(91,'2020-10-11 14:04:08',800797,'SIC/USDT'),(92,'2020-10-11 14:30:03',807298,'SIC/USDT'),(93,'2020-10-11 14:59:12',838455,'SIC/USDT'),(94,'2020-10-11 15:59:40',800718,'SIC/USDT'),(95,'2020-10-11 16:26:57',834575,'SIC/USDT'),(96,'2020-10-11 17:36:01',802723,'BTC/USDT'),(97,'2020-10-11 17:43:40',832758,'SIC/USDT'),(98,'2020-10-11 18:44:31',859315,'BTC/USDT'),(99,'2020-10-11 18:46:31',859468,'SIC/USDT'),(101,'2020-10-11 19:42:55',841266,'SIC/USDT'),(102,'2020-10-11 20:27:09',843495,'SIC/USDT'),(104,'2020-10-11 20:54:33',846977,'SIC/USDT'),(105,'2020-10-11 21:19:25',803247,'SIC/USDT'),(106,'2020-10-11 21:29:22',845029,'BTC/USDT'),(110,'2020-10-11 22:56:41',862731,'SIC/USDT'),(111,'2020-10-11 22:59:12',802737,'SIC/USDT'),(113,'2020-10-12 03:27:08',800601,'SIC/USDT'),(114,'2020-10-12 06:55:30',858849,'SIC/USDT'),(115,'2020-10-12 08:13:16',842813,'SIC/USDT'),(116,'2020-10-12 08:31:38',838177,'SIC/USDT'),(118,'2020-10-12 09:25:08',819579,'SIC/USDT'),(119,'2020-10-12 10:34:03',804505,'SIC/USDT'),(120,'2020-10-12 10:35:55',851467,'SIC/USDT'),(122,'2020-10-12 12:17:29',859137,'BTC/USDT'),(124,'2020-10-12 15:02:32',800721,'SIC/USDT'),(125,'2020-10-12 15:11:10',802684,'SIC/USDT'),(127,'2020-10-12 17:47:43',803405,'SIC/USDT'),(128,'2020-10-12 17:53:32',849897,'SIC/USDT'),(130,'2020-10-12 20:08:33',839864,'SIC/USDT'),(132,'2020-10-12 21:31:39',813869,'SIC/USDT'),(133,'2020-10-12 21:53:52',862802,'SIC/USDT'),(134,'2020-10-13 00:01:36',823229,'SIC/USDT'),(136,'2020-10-13 00:59:34',824970,'SIC/USDT'),(137,'2020-10-13 01:51:09',843372,'SIC/USDT'),(138,'2020-10-13 10:35:49',803334,'SIC/USDT'),(139,'2020-10-13 11:01:59',834768,'SIC/USDT'),(140,'2020-10-13 13:25:40',831180,'SIC/USDT'),(141,'2020-10-13 14:05:16',862792,'SIC/USDT'),(143,'2020-10-13 19:34:40',849332,'SIC/USDT'),(144,'2020-10-13 19:43:31',862714,'SIC/USDT'),(145,'2020-10-13 20:46:44',804682,'SIC/USDT'),(146,'2020-10-14 04:38:36',803143,'SIC/USDT'),(149,'2020-10-14 10:58:49',862781,'SIC/USDT'),(151,'2020-10-14 19:43:41',844351,'SIC/USDT'),(152,'2020-10-14 19:46:00',839236,'SIC/USDT'),(154,'2020-10-15 08:51:01',846741,'SIC/USDT'),(156,'2020-10-15 11:44:14',836918,'SIC/USDT'),(157,'2020-10-15 13:50:14',862863,'LTC/USDT'),(158,'2020-10-15 13:59:08',837216,'SIC/USDT'),(160,'2020-10-15 15:07:35',862864,'BTC/USDT'),(161,'2020-10-15 15:08:00',824888,'SIC/USDT'),(162,'2020-10-15 15:59:22',847714,'SIC/USDT'),(163,'2020-10-15 16:14:11',846946,'SIC/USDT'),(164,'2020-10-15 16:32:17',859890,'SIC/USDT'),(176,'2020-10-15 18:29:05',834844,'SIC/USDT'),(179,'2020-10-15 18:32:44',829583,'SIC/USDT'),(189,'2020-10-15 18:49:52',801970,'SIC/USDT'),(190,'2020-10-15 18:50:08',834520,'SIC/USDT'),(191,'2020-10-15 18:50:51',824396,'SIC/USDT'),(192,'2020-10-15 18:53:21',824383,'SIC/USDT'),(196,'2020-10-15 19:00:22',844378,'SIC/USDT'),(202,'2020-10-15 19:11:04',800605,'BTC/USDT'),(207,'2020-10-15 19:29:03',835678,'SIC/USDT'),(208,'2020-10-15 19:29:38',804555,'SIC/USDT'),(209,'2020-10-15 19:36:53',803135,'SIC/USDT'),(212,'2020-10-15 19:47:38',802763,'SIC/USDT'),(218,'2020-10-15 20:14:35',830024,'SIC/USDT'),(220,'2020-10-15 20:20:38',842114,'SIC/USDT'),(222,'2020-10-15 20:29:57',833929,'SIC/USDT'),(234,'2020-10-15 23:24:27',801445,'SIC/USDT'),(238,'2020-10-15 23:50:18',851909,'BCH/USDT'),(240,'2020-10-16 00:18:15',851909,'BTC/USDT'),(242,'2020-10-16 02:47:14',848161,'SIC/USDT'),(244,'2020-10-16 06:52:49',803756,'SIC/USDT'),(245,'2020-10-16 08:48:37',847079,'SIC/USDT'),(247,'2020-10-16 09:49:57',802614,'SIC/USDT'),(248,'2020-10-16 10:08:31',828465,'SIC/USDT'),(260,'2020-10-16 12:31:18',801852,'SIC/USDT'),(262,'2020-10-16 12:32:11',800755,'SIC/USDT'),(265,'2020-10-16 12:38:42',817615,'SIC/USDT'),(308,'2020-10-16 19:55:35',816801,'BTC/USDT'),(321,'2020-10-17 00:00:53',832703,'BTC/USDT'),(380,'2020-10-17 21:30:03',862887,'BSV/USDT'),(382,'2020-10-17 21:54:40',800784,'BTC/USDT'),(406,'2020-10-18 08:42:26',802630,'BTC/USDT'),(409,'2020-10-18 09:54:27',830055,'EOS/USDT'),(412,'2020-10-18 10:34:51',854095,'BTC/USDT'),(434,'2020-10-18 20:23:03',848665,'BTC/USDT'),(444,'2020-10-18 23:22:30',862902,'BTC/USDT'),(451,'2020-10-19 07:42:19',801788,'BTC/USDT'),(452,'2020-10-19 08:19:15',830055,'BTC/USDT'),(470,'2020-10-20 01:45:08',800633,'BTC/USDT'),(472,'2020-10-20 11:17:35',814916,'BTC/USDT'),(473,'2020-10-20 11:29:19',802417,'BTC/USDT'),(529,'2020-11-03 01:37:54',1,'ETH/USDT'),(530,'2020-11-03 01:37:55',1,'XRP/USDT'),(531,'2020-11-03 01:37:55',1,'BCH/USDT'),(532,'2020-11-03 01:37:56',1,'BSV/USDT'),(533,'2020-11-03 01:37:57',1,'LTC/USDT'),(534,'2020-11-03 01:37:58',1,'EOS/USDT'),(535,'2020-11-03 01:38:03',1,'XRP/ETH'),(536,'2020-11-03 01:38:04',1,'LTC/ETH'),(537,'2020-11-08 20:14:13',1,'BTC/USDT'),(538,'2020-11-16 16:39:22',600805,'BTC/USDT'),(542,'2020-11-26 22:05:54',600800,'XRP/ETH');
/*!40000 ALTER TABLE `exchange_favor_symbol` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exchange_order`
--

DROP TABLE IF EXISTS `exchange_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exchange_order` (
  `order_id` varchar(255) NOT NULL,
  `amount` decimal(18,8) DEFAULT NULL,
  `base_symbol` varchar(255) DEFAULT NULL,
  `canceled_time` bigint(20) DEFAULT NULL,
  `coin_symbol` varchar(255) DEFAULT NULL,
  `completed_time` bigint(20) DEFAULT NULL,
  `direction` int(11) DEFAULT NULL,
  `member_id` bigint(20) DEFAULT NULL,
  `price` decimal(18,8) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `symbol` varchar(255) DEFAULT NULL,
  `time` bigint(20) DEFAULT NULL,
  `traded_amount` decimal(26,16) DEFAULT NULL,
  `turnover` decimal(26,16) DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `use_discount` varchar(255) DEFAULT NULL,
  `order_resource` int(11) DEFAULT NULL,
  PRIMARY KEY (`order_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exchange_order`
--

LOCK TABLES `exchange_order` WRITE;
/*!40000 ALTER TABLE `exchange_order` DISABLE KEYS */;
/*!40000 ALTER TABLE `exchange_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `feedback`
--

DROP TABLE IF EXISTS `feedback`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `feedback` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_time` datetime DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `member_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `FKmonjtjt92g6gruqyfumtmg8m8` (`member_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `feedback`
--

LOCK TABLES `feedback` WRITE;
/*!40000 ALTER TABLE `feedback` DISABLE KEYS */;
/*!40000 ALTER TABLE `feedback` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `financial_item`
--

DROP TABLE IF EXISTS `financial_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `financial_item` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `coin_minnum` decimal(19,2) DEFAULT NULL,
  `coin_name` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `deadline` int(11) NOT NULL,
  `item_desc` varchar(255) DEFAULT NULL,
  `item_id` varchar(255) DEFAULT NULL,
  `item_name` varchar(255) DEFAULT NULL,
  `item_state` int(11) NOT NULL,
  `update_time` datetime DEFAULT NULL,
  `yield` double DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `financial_item`
--

LOCK TABLES `financial_item` WRITE;
/*!40000 ALTER TABLE `financial_item` DISABLE KEYS */;
/*!40000 ALTER TABLE `financial_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `financial_order`
--

DROP TABLE IF EXISTS `financial_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `financial_order` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `coin_name` varchar(255) DEFAULT NULL,
  `coin_num` decimal(19,2) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `frozen_days` int(11) NOT NULL,
  `item_id` varchar(255) DEFAULT NULL,
  `member_id` bigint(20) DEFAULT NULL,
  `order_no` bigint(20) DEFAULT NULL,
  `order_state` int(11) NOT NULL,
  `order_usdt_rate` double DEFAULT NULL,
  `plan_revenue_time` datetime DEFAULT NULL,
  `real_income` decimal(19,2) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `financial_order`
--

LOCK TABLES `financial_order` WRITE;
/*!40000 ALTER TABLE `financial_order` DISABLE KEYS */;
/*!40000 ALTER TABLE `financial_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hot_transfer_record`
--

DROP TABLE IF EXISTS `hot_transfer_record`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hot_transfer_record` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `admin_id` bigint(20) DEFAULT NULL,
  `amount` decimal(18,8) DEFAULT NULL COMMENT '转账金额',
  `balance` decimal(18,8) DEFAULT NULL COMMENT '热钱包余额',
  `cold_address` varchar(255) DEFAULT NULL,
  `miner_fee` decimal(18,8) DEFAULT NULL COMMENT '矿工费',
  `transaction_number` varchar(255) DEFAULT NULL,
  `transfer_time` datetime DEFAULT NULL,
  `unit` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hot_transfer_record`
--

LOCK TABLES `hot_transfer_record` WRITE;
/*!40000 ALTER TABLE `hot_transfer_record` DISABLE KEYS */;
INSERT INTO `hot_transfer_record` VALUES (1,5,0.01000000,35841.24280600,'0xeEAc71040c749a3D632A8Fd7f966a1e98FA23323',0.00000000,'0','2020-10-19 01:01:56','USDT'),(2,5,1.00000000,35840.25280600,'0xeEAc71040c749a3D632A8Fd7f966a1e98FA23323',0.00000000,'0','2020-10-19 01:05:29','USDT');
/*!40000 ALTER TABLE `hot_transfer_record` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `init_plate`
--

DROP TABLE IF EXISTS `init_plate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `init_plate` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `final_price` varchar(255) DEFAULT NULL,
  `init_price` varchar(255) DEFAULT NULL,
  `interference_factor` varchar(255) DEFAULT NULL,
  `relative_time` varchar(255) DEFAULT NULL,
  `symbol` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `init_plate`
--

LOCK TABLES `init_plate` WRITE;
/*!40000 ALTER TABLE `init_plate` DISABLE KEYS */;
/*!40000 ALTER TABLE `init_plate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `legal_wallet_recharge`
--

DROP TABLE IF EXISTS `legal_wallet_recharge`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `legal_wallet_recharge` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `amount` decimal(18,2) NOT NULL COMMENT '充值金额',
  `creation_time` datetime DEFAULT NULL,
  `deal_time` datetime DEFAULT NULL,
  `pay_mode` int(11) NOT NULL,
  `payment_instrument` varchar(255) NOT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `state` int(11) NOT NULL,
  `update_time` datetime DEFAULT NULL,
  `admin_id` bigint(20) DEFAULT NULL,
  `coin_name` varchar(255) NOT NULL,
  `member_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `FKtfjvrkn1oe0yu2tfjh6qcms73` (`admin_id`) USING BTREE,
  KEY `FKsdtoqyvbjpd0bmw4n41ijc0kk` (`coin_name`) USING BTREE,
  KEY `FK170xpb7hoxqoj5ovdrcibs9gn` (`member_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `legal_wallet_recharge`
--

LOCK TABLES `legal_wallet_recharge` WRITE;
/*!40000 ALTER TABLE `legal_wallet_recharge` DISABLE KEYS */;
/*!40000 ALTER TABLE `legal_wallet_recharge` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `legal_wallet_withdraw`
--

DROP TABLE IF EXISTS `legal_wallet_withdraw`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `legal_wallet_withdraw` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `amount` decimal(18,8) DEFAULT NULL COMMENT '申请总数量',
  `create_time` datetime DEFAULT NULL,
  `deal_time` datetime DEFAULT NULL,
  `pay_mode` int(11) NOT NULL,
  `payment_instrument` varchar(255) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `remit_time` datetime DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `admin_id` bigint(20) DEFAULT NULL,
  `coin_name` varchar(255) NOT NULL,
  `member_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `FKe95o0059kwsgmsxxv3amdb0d2` (`admin_id`) USING BTREE,
  KEY `FKbilsav1ug8vjtn4ffghrlogqx` (`coin_name`) USING BTREE,
  KEY `FKcpw5k7o3tchlifu1wqmjhku9t` (`member_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `legal_wallet_withdraw`
--

LOCK TABLES `legal_wallet_withdraw` WRITE;
/*!40000 ALTER TABLE `legal_wallet_withdraw` DISABLE KEYS */;
/*!40000 ALTER TABLE `legal_wallet_withdraw` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `locked_order`
--

DROP TABLE IF EXISTS `locked_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `locked_order` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `activity_id` bigint(20) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `current_releaseamount` decimal(18,8) DEFAULT NULL COMMENT '当前周期释放数量',
  `end_time` varchar(30) NOT NULL DEFAULT '2000-01-01 01:00:00' COMMENT '结束时间',
  `image` varchar(255) DEFAULT NULL,
  `locked_days` int(11) NOT NULL,
  `locked_invite` decimal(24,8) DEFAULT NULL,
  `locked_invitelimit` decimal(24,8) DEFAULT NULL,
  `locked_status` int(11) NOT NULL,
  `member_id` bigint(20) NOT NULL,
  `origin_releaseamount` decimal(18,8) DEFAULT NULL COMMENT '原始周期释放数量',
  `period` int(11) NOT NULL,
  `release_currentpercent` decimal(19,2) DEFAULT NULL,
  `release_percent` decimal(19,2) DEFAULT NULL,
  `release_times` decimal(24,8) DEFAULT NULL,
  `release_type` int(11) NOT NULL,
  `release_unit` varchar(255) DEFAULT NULL,
  `released_days` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `total_locked` decimal(18,8) DEFAULT NULL COMMENT '总锁仓',
  `total_release` decimal(18,8) DEFAULT NULL COMMENT '总释放',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `locked_order`
--

LOCK TABLES `locked_order` WRITE;
/*!40000 ALTER TABLE `locked_order` DISABLE KEYS */;
/*!40000 ALTER TABLE `locked_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `locked_order_detail`
--

DROP TABLE IF EXISTS `locked_order_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `locked_order_detail` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_time` datetime DEFAULT NULL,
  `locked_order_id` bigint(20) DEFAULT NULL,
  `member_id` bigint(20) NOT NULL,
  `output` decimal(18,8) DEFAULT NULL COMMENT '矿机当期产出',
  `release_unit` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `locked_order_detail`
--

LOCK TABLES `locked_order_detail` WRITE;
/*!40000 ALTER TABLE `locked_order_detail` DISABLE KEYS */;
/*!40000 ALTER TABLE `locked_order_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `member`
--

DROP TABLE IF EXISTS `member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `member` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `ali_no` varchar(255) DEFAULT NULL,
  `qr_code_url` varchar(255) DEFAULT NULL,
  `appeal_success_times` int(11) NOT NULL,
  `appeal_times` int(11) NOT NULL,
  `application_time` datetime DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `bank` varchar(255) DEFAULT NULL,
  `branch` varchar(255) DEFAULT NULL,
  `card_no` varchar(255) DEFAULT NULL,
  `certified_business_apply_time` datetime DEFAULT NULL,
  `certified_business_check_time` datetime DEFAULT NULL,
  `certified_business_status` int(11) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `first_level` int(11) NOT NULL,
  `google_date` datetime DEFAULT NULL,
  `google_key` varchar(255) DEFAULT NULL,
  `google_state` int(11) DEFAULT NULL,
  `id_number` varchar(255) DEFAULT NULL,
  `inviter_id` bigint(20) DEFAULT NULL,
  `jy_password` varchar(255) DEFAULT NULL,
  `last_login_time` datetime DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `district` varchar(255) DEFAULT NULL,
  `province` varchar(255) DEFAULT NULL,
  `login_count` int(11) NOT NULL,
  `margin` varchar(255) DEFAULT NULL,
  `member_level` int(11) DEFAULT NULL,
  `mobile_phone` varchar(255) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `promotion_code` varchar(255) DEFAULT NULL,
  `publish_advertise` int(11) DEFAULT NULL,
  `real_name` varchar(255) DEFAULT NULL,
  `real_name_status` int(11) DEFAULT NULL,
  `registration_time` datetime DEFAULT NULL,
  `salt` varchar(255) DEFAULT NULL,
  `second_level` int(11) NOT NULL,
  `sign_in_ability` bit(1) NOT NULL DEFAULT b'1',
  `status` int(11) DEFAULT NULL,
  `super_partner` varchar(255) DEFAULT NULL,
  `third_level` int(11) NOT NULL,
  `token` varchar(255) DEFAULT NULL,
  `token_expire_time` datetime DEFAULT NULL,
  `transaction_status` int(11) DEFAULT NULL,
  `transactions` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `qr_we_code_url` varchar(255) DEFAULT NULL,
  `wechat` varchar(255) DEFAULT NULL,
  `local` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `UK_gc3jmn7c2abyo3wf6syln5t2i` (`username`) USING BTREE,
  UNIQUE KEY `UK_mbmcqelty0fbrvxp1q58dn57t` (`email`) USING BTREE,
  UNIQUE KEY `UK_10ixebfiyeqolglpuye0qb49u` (`mobile_phone`) USING BTREE,
  KEY `FKbt72vgf5myy3uhygc90xna65j` (`local`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=600812 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `member`
--

LOCK TABLES `member` WRITE;
/*!40000 ALTER TABLE `member` DISABLE KEYS */;
INSERT INTO `member` VALUES (1,NULL,NULL,0,0,'2020-09-26 21:43:26','','中国工商银行','工行','60002160601398896','2020-10-24 18:22:37','2020-10-24 18:29:10',2,'247818019@qq.com',0,NULL,NULL,NULL,'110101199003074000',NULL,'edbf857a065c525f01341039a0ee28e2',NULL,NULL,'中国',NULL,NULL,116,NULL,2,'13791233920','edbf857a065c525f01341039a0ee28e2','0QGW',1,'机器人',2,'2020-07-31 04:32:54','333435303631393236333635313731373132',0,_binary '',0,'1',0,NULL,'2020-12-18 16:30:57',1,1,'13791233920',NULL,NULL,'中国'),(600800,NULL,NULL,0,0,'2020-09-26 21:43:26','','','','60002160601398896','2020-10-24 18:22:37','2020-10-24 18:29:10',2,NULL,0,NULL,NULL,NULL,'110101199003074000',NULL,'edbf857a065c525f01341039a0ee28e2',NULL,NULL,'中国',NULL,NULL,208,NULL,2,'13800138001','edbf857a065c525f01341039a0ee28e2','0QGX',1,'测试',2,'2020-07-31 04:32:54','333435303631393236333635313731373132',0,_binary '',0,'1',0,NULL,'2020-12-21 02:30:50',1,1,'13800138001',NULL,NULL,'中国'),(600801,NULL,NULL,0,0,NULL,'https://bizzan.oss-cn-hangzhou.aliyuncs.com/defaultavatar.png',NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'中国',NULL,NULL,4,NULL,0,'18858125915','f6fdd4b760ed41d0ea1768ed303476ce','OQTI',1,NULL,0,'2020-11-02 15:25:30','333739323930363137353535303632373834',0,_binary '',0,'0',0,'c1a3658e6511bbff2073cfb8e1d6fc29','2020-11-11 02:23:51',1,0,'18858125915',NULL,NULL,'中国'),(600802,NULL,NULL,0,0,NULL,'https://bizzan.oss-cn-hangzhou.aliyuncs.com/defaultavatar.png',NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'中国',NULL,NULL,1,NULL,0,'18305458968','af1470fe1ca3189d07a1db4109421dc3','OQTJ',1,NULL,0,'2020-11-08 18:44:36','333831353135303530343533373030363038',0,_binary '',0,'0',0,NULL,'2020-11-15 18:44:46',1,0,'18305458968',NULL,NULL,'中国'),(600803,NULL,NULL,0,0,'2020-11-11 18:02:57','https://bizzan.oss-cn-hangzhou.aliyuncs.com/defaultavatar.png',NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,'370124199402270013',NULL,NULL,NULL,NULL,'中国',NULL,NULL,3,NULL,1,'18609730102','4c26179824cd0cee255fb6ce875c28b0','OQT2',1,'张三丰',2,'2020-11-10 14:17:20','333832313732353634393936333632323430',0,_binary '',0,'0',0,NULL,'2020-12-18 16:24:34',1,0,'18609730102',NULL,NULL,'中国'),(600804,NULL,NULL,0,0,NULL,'https://bizzan.oss-cn-hangzhou.aliyuncs.com/defaultavatar.png',NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'中国',NULL,NULL,2,NULL,0,'15771791361','7cf26b102eaafddab54b6665253bcd40','OQTR',1,NULL,0,'2020-11-12 21:34:22','333833303037333235393237313136383030',0,_binary '',0,'0',0,NULL,'2020-11-19 22:00:24',1,0,'15771791361',NULL,NULL,'中国'),(600805,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'中国',NULL,NULL,1,NULL,0,'15801018660','3719fa34b5012ee23e49c341b032f29e','OQTS',1,NULL,0,'2020-11-16 16:38:46','333834333832343836383930383131333932',0,_binary '',0,'1',0,NULL,'2020-11-23 16:39:08',1,0,'15801018660',NULL,NULL,'中国'),(600806,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'中国',NULL,NULL,1,NULL,0,'18566220020','248b41247c4122315eb4118be0036eae','OQTT',1,NULL,0,'2020-11-25 22:20:45','333837373330303339373832393033383038',0,_binary '',0,'1',0,NULL,'2020-12-02 22:21:06',1,0,'18566220020',NULL,NULL,'中国'),(600807,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'中国',NULL,NULL,2,NULL,0,'15103821590','39af3d95ff14a90d194207eccd440a43','OQTU',1,NULL,0,'2020-11-25 22:23:14','333837373330363633383439323031363634',0,_binary '',0,'1',0,NULL,'2020-12-02 22:28:28',1,0,'15103821590',NULL,NULL,'中国'),(600808,NULL,NULL,0,0,NULL,'https://bizzan.oss-cn-hangzhou.aliyuncs.com/defaultavatar.png',NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'中国',NULL,NULL,1,NULL,0,'15875414009','e3c031ee268ce8b221b088e1cefd6a24','OQTV',1,NULL,0,'2020-11-30 16:19:46','333839343531313335363439343532303332',0,_binary '',0,'0',0,NULL,'2020-12-07 16:20:00',1,0,'15875414009',NULL,NULL,'中国'),(600809,NULL,NULL,0,0,NULL,'http://bizzano.oss-cn-shanghai.aliyuncs.com/2020/12/07/249ca1cf-6536-4f8b-9927-e104432df1d5.jpg',NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'中国',NULL,NULL,1,NULL,0,'13299000557','77f85686c6a25311c85fb3eb2f4adb90','OQT6',1,NULL,0,'2020-12-07 01:22:56','333931373632313534353330393334373834',0,_binary '',0,'0',0,NULL,'2020-12-14 01:23:15',1,0,'13299000557',NULL,NULL,'中国'),(600810,NULL,NULL,0,0,NULL,'https://bizzan.oss-cn-hangzhou.aliyuncs.com/defaultavatar.png',NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'中国',NULL,NULL,1,NULL,0,'18596142762','b3cfdb5186ec2e80553c4e9b9456ffb7','OQT7',1,NULL,0,'2020-12-07 06:17:25','333931383336323631363439383739303430',0,_binary '',0,'0',0,NULL,'2020-12-14 06:18:01',1,0,'18596142762',NULL,NULL,'中国'),(600811,NULL,NULL,0,0,NULL,'http://bizzano.oss-cn-shanghai.aliyuncs.com/2020/12/12/b1938909-c229-4012-8227-cab4adafdacf.jpg',NULL,NULL,NULL,NULL,NULL,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'中国',NULL,NULL,3,NULL,0,'17719877280','1c47005a7c2c591092411c4124093c15','OQTM',1,NULL,0,'2020-12-12 00:45:26','333933353634363536393831313138393736',0,_binary '',0,'0',0,'0109046a3faa7e803db1fb878f332b3b','2020-12-21 03:17:17',1,0,'17719877280',NULL,NULL,'中国');
/*!40000 ALTER TABLE `member` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `member_address`
--

DROP TABLE IF EXISTS `member_address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `member_address` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `address` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `delete_time` datetime DEFAULT NULL,
  `member_id` bigint(20) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `coin_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `FKhcqqqntcf8hqmoa6dpo95okyh` (`coin_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `member_address`
--

LOCK TABLES `member_address` WRITE;
/*!40000 ALTER TABLE `member_address` DISABLE KEYS */;
/*!40000 ALTER TABLE `member_address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `member_api_key`
--

DROP TABLE IF EXISTS `member_api_key`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `member_api_key` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `api_key` varchar(255) DEFAULT NULL,
  `api_name` varchar(255) DEFAULT NULL,
  `bind_ip` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `expire_time` datetime DEFAULT NULL,
  `member_id` bigint(20) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `secret_key` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `member_api_key`
--

LOCK TABLES `member_api_key` WRITE;
/*!40000 ALTER TABLE `member_api_key` DISABLE KEYS */;
/*!40000 ALTER TABLE `member_api_key` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `member_application`
--

DROP TABLE IF EXISTS `member_application`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `member_application` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `audit_status` int(11) NOT NULL,
  `create_time` datetime DEFAULT NULL,
  `id_card` varchar(255) DEFAULT NULL,
  `identity_card_img_front` varchar(255) NOT NULL,
  `identity_card_img_in_hand` varchar(255) NOT NULL,
  `identity_card_img_reverse` varchar(255) NOT NULL,
  `real_name` varchar(255) DEFAULT NULL,
  `reject_reason` varchar(255) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `member_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `FK2djx7q0j54th0cgj7153qfbl1` (`member_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `member_application`
--

LOCK TABLES `member_application` WRITE;
/*!40000 ALTER TABLE `member_application` DISABLE KEYS */;
INSERT INTO `member_application` VALUES (1,2,'2020-09-26 21:37:55','110101199003074012','http://bizzano.oss-cn-shanghai.aliyuncs.com/2020/09/26/3a0c3080-d64d-4dbc-9424-befdd44ead25.png','http://bizzano.oss-cn-shanghai.aliyuncs.com/2020/09/26/07b65e3e-0460-46d6-b41b-703b44f18b46.png','http://bizzano.oss-cn-shanghai.aliyuncs.com/2020/09/26/3f841a9e-024c-40ab-86f6-ef6d335bcf1f.png','机器人',NULL,'2020-09-26 21:43:20',1),(2,2,'2020-11-10 14:18:53','370124199402270013','http://bizzano.oss-cn-shanghai.aliyuncs.com/2020/11/10/7cb65338-5e67-4fe9-82e1-71fe0f0d19f7.png','http://bizzano.oss-cn-shanghai.aliyuncs.com/2020/11/10/be54a105-41ba-4a73-87a6-37e85694121b.png','http://bizzano.oss-cn-shanghai.aliyuncs.com/2020/11/10/38603780-ea57-4fa1-b46b-ecd18e269883.png','张三丰',NULL,'2020-11-11 18:02:57',600803);
/*!40000 ALTER TABLE `member_application` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `member_application_config`
--

DROP TABLE IF EXISTS `member_application_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `member_application_config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `promotion_on` int(11) DEFAULT NULL,
  `recharge_coin_on` int(11) DEFAULT NULL,
  `transaction_on` int(11) DEFAULT NULL,
  `withdraw_coin_on` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `member_application_config`
--

LOCK TABLES `member_application_config` WRITE;
/*!40000 ALTER TABLE `member_application_config` DISABLE KEYS */;
/*!40000 ALTER TABLE `member_application_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `member_bonus`
--

DROP TABLE IF EXISTS `member_bonus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `member_bonus` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `arrive_time` varchar(255) DEFAULT NULL,
  `coin_id` varchar(255) DEFAULT NULL,
  `have_time` varchar(255) DEFAULT NULL,
  `mem_bouns` decimal(18,8) DEFAULT NULL COMMENT '分红数量',
  `member_id` bigint(20) DEFAULT NULL,
  `total` decimal(18,8) DEFAULT NULL COMMENT '当天总手续费',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `member_bonus`
--

LOCK TABLES `member_bonus` WRITE;
/*!40000 ALTER TABLE `member_bonus` DISABLE KEYS */;
/*!40000 ALTER TABLE `member_bonus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `member_contract_wallet`
--

DROP TABLE IF EXISTS `member_contract_wallet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `member_contract_wallet` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `coin_balance` decimal(18,8) DEFAULT '0.00000000' COMMENT '币种余额',
  `coin_buy_leverage` decimal(18,8) DEFAULT '0.00000000' COMMENT '做多杠杆倍数',
  `coin_buy_position` decimal(18,8) DEFAULT '0.00000000' COMMENT '开多仓位',
  `coin_buy_price` decimal(18,8) DEFAULT '0.00000000' COMMENT '多仓均价',
  `coin_buy_principal_amount` decimal(18,8) DEFAULT '0.00000000' COMMENT '多仓保证金',
  `coin_frozen_balance` decimal(18,8) DEFAULT '0.00000000' COMMENT '冻结余额',
  `coin_frozen_buy_position` decimal(18,8) DEFAULT '0.00000000' COMMENT '开多仓位',
  `coin_frozen_sell_position` decimal(18,8) DEFAULT '0.00000000' COMMENT '开空仓位',
  `coin_pattern` int(4) DEFAULT '1' COMMENT '币本位仓位模式',
  `coin_sell_leverage` decimal(18,8) DEFAULT '0.00000000' COMMENT '做空杠杆倍数',
  `coin_sell_position` decimal(18,8) DEFAULT '0.00000000' COMMENT '开空仓位',
  `coin_sell_price` decimal(18,8) DEFAULT '0.00000000' COMMENT '空仓均价',
  `coin_sell_principal_amount` decimal(18,8) DEFAULT '0.00000000' COMMENT '空仓保证金',
  `coin_share_number` decimal(18,8) DEFAULT '0.00000000' COMMENT '开空仓位',
  `member_id` bigint(20) DEFAULT NULL,
  `usdt_balance` decimal(18,8) DEFAULT '0.00000000' COMMENT 'USDT余额',
  `usdt_buy_leverage` decimal(18,8) DEFAULT '0.00000000' COMMENT '做多杠杆倍数',
  `usdt_buy_position` decimal(18,8) DEFAULT '0.00000000' COMMENT '开多仓位',
  `usdt_buy_price` decimal(18,8) DEFAULT '0.00000000' COMMENT '多仓均价',
  `usdt_buy_principal_amount` decimal(18,8) DEFAULT '0.00000000' COMMENT '多仓保证金',
  `usdt_frozen_balance` decimal(18,8) DEFAULT '0.00000000' COMMENT '冻结余额',
  `usdt_frozen_buy_position` decimal(18,8) DEFAULT '0.00000000' COMMENT '开多仓位',
  `usdt_frozen_sell_position` decimal(18,8) DEFAULT '0.00000000' COMMENT '开空仓位',
  `usdt_loss` decimal(18,8) DEFAULT '0.00000000' COMMENT 'USDT亏损',
  `usdt_pattern` int(4) DEFAULT '1' COMMENT '金本位仓位模式',
  `usdt_profit` decimal(18,8) DEFAULT '0.00000000' COMMENT 'USDT盈利',
  `usdt_sell_leverage` decimal(18,8) DEFAULT '0.00000000' COMMENT '做空杠杆倍数',
  `usdt_sell_position` decimal(18,8) DEFAULT '0.00000000' COMMENT '开空仓位',
  `usdt_sell_price` decimal(18,8) DEFAULT '0.00000000' COMMENT '空仓均价',
  `usdt_sell_principal_amount` decimal(18,8) DEFAULT '0.00000000' COMMENT '空仓保证金',
  `usdt_share_number` decimal(18,8) DEFAULT '0.00000000' COMMENT '开空仓位',
  `contract_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UKe17oj0my6ih9ejhlw6m84l1cd` (`member_id`,`contract_id`),
  KEY `FKni1vfmlpo78vdm4tvr5woqvpo` (`contract_id`)
) ENGINE=InnoDB AUTO_INCREMENT=109 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `member_contract_wallet`
--

LOCK TABLES `member_contract_wallet` WRITE;
/*!40000 ALTER TABLE `member_contract_wallet` DISABLE KEYS */;
INSERT INTO `member_contract_wallet` VALUES (37,0.00000000,10.00000000,0.00000000,0.00000000,0.00000000,0.00000000,0.00000000,0.00000000,1,10.00000000,0.00000000,0.00000000,0.00000000,0.00000000,1,1125061.70600000,10.00000000,0.00000000,18009.55500000,0.00000000,0.00000000,0.00000000,0.00000000,0.00000000,0,25701.70600000,10.00000000,0.00000000,18438.14866658,0.00000000,100.00000000,1),(38,0.00000000,10.00000000,0.00000000,0.00000000,0.00000000,0.00000000,0.00000000,0.00000000,1,10.00000000,0.00000000,0.00000000,0.00000000,0.00000000,600800,100613.18387608,10.00000000,60.00000000,17862.83333332,160.00000192,0.00000000,0.00000000,0.00000000,4961.32875000,1,5848.20262800,10.00000000,0.00000000,19246.47000000,0.00000000,100.00000000,1),(39,0.00000000,10.00000000,0.00000000,0.00000000,0.00000000,0.00000000,0.00000000,0.00000000,1,10.00000000,0.00000000,0.00000000,0.00000000,0.00000000,600804,0.00000000,10.00000000,0.00000000,0.00000000,0.00000000,0.00000000,0.00000000,0.00000000,0.00000000,1,0.00000000,10.00000000,0.00000000,0.00000000,0.00000000,0.00000000,1),(40,0.00000000,10.00000000,0.00000000,0.00000000,0.00000000,0.00000000,0.00000000,0.00000000,1,10.00000000,0.00000000,0.00000000,0.00000000,0.00000000,600805,0.00000000,10.00000000,0.00000000,0.00000000,0.00000000,0.00000000,0.00000000,0.00000000,0.00000000,1,0.00000000,10.00000000,0.00000000,0.00000000,0.00000000,0.00000000,1),(41,0.00000000,10.00000000,0.00000000,0.00000000,0.00000000,0.00000000,0.00000000,0.00000000,1,10.00000000,0.00000000,0.00000000,0.00000000,0.00000000,600802,0.00000000,10.00000000,0.00000000,0.00000000,0.00000000,0.00000000,0.00000000,0.00000000,0.00000000,1,0.00000000,10.00000000,0.00000000,0.00000000,0.00000000,0.00000000,1),(42,0.00000000,10.00000000,0.00000000,0.00000000,0.00000000,0.00000000,0.00000000,0.00000000,1,10.00000000,0.00000000,0.00000000,0.00000000,0.00000000,600803,0.00000000,10.00000000,0.00000000,0.00000000,0.00000000,0.00000000,0.00000000,0.00000000,0.00000000,1,0.00000000,10.00000000,0.00000000,0.00000000,0.00000000,0.00000000,1),(43,0.00000000,10.00000000,0.00000000,0.00000000,0.00000000,0.00000000,0.00000000,0.00000000,1,10.00000000,0.00000000,0.00000000,0.00000000,0.00000000,600801,0.00000000,10.00000000,0.00000000,0.00000000,0.00000000,0.00000000,0.00000000,0.00000000,0.00000000,1,0.00000000,10.00000000,0.00000000,0.00000000,0.00000000,0.00000000,1),(44,0.00000000,10.00000000,0.00000000,0.00000000,0.00000000,0.00000000,0.00000000,0.00000000,1,10.00000000,0.00000000,0.00000000,0.00000000,0.00000000,1,100000.00000000,10.00000000,0.00000000,0.00000000,0.00000000,0.00000000,0.00000000,0.00000000,0.00000000,1,0.00000000,10.00000000,0.00000000,0.00000000,0.00000000,0.00000000,2),(45,0.00000000,10.00000000,0.00000000,0.00000000,0.00000000,0.00000000,0.00000000,0.00000000,1,10.00000000,0.00000000,0.00000000,0.00000000,0.00000000,600800,100000.00000000,10.00000000,0.00000000,0.00000000,0.00000000,0.00000000,0.00000000,0.00000000,0.00000000,1,0.00000000,10.00000000,0.00000000,0.00000000,0.00000000,0.00000000,2),(46,0.00000000,10.00000000,0.00000000,0.00000000,0.00000000,0.00000000,0.00000000,0.00000000,1,10.00000000,0.00000000,0.00000000,0.00000000,0.00000000,600804,0.00000000,10.00000000,0.00000000,0.00000000,0.00000000,0.00000000,0.00000000,0.00000000,0.00000000,1,0.00000000,10.00000000,0.00000000,0.00000000,0.00000000,0.00000000,2),(47,0.00000000,10.00000000,0.00000000,0.00000000,0.00000000,0.00000000,0.00000000,0.00000000,1,10.00000000,0.00000000,0.00000000,0.00000000,0.00000000,600805,0.00000000,10.00000000,0.00000000,0.00000000,0.00000000,0.00000000,0.00000000,0.00000000,0.00000000,1,0.00000000,10.00000000,0.00000000,0.00000000,0.00000000,0.00000000,2),(48,0.00000000,10.00000000,0.00000000,0.00000000,0.00000000,0.00000000,0.00000000,0.00000000,1,10.00000000,0.00000000,0.00000000,0.00000000,0.00000000,600802,0.00000000,10.00000000,0.00000000,0.00000000,0.00000000,0.00000000,0.00000000,0.00000000,0.00000000,1,0.00000000,10.00000000,0.00000000,0.00000000,0.00000000,0.00000000,2),(49,0.00000000,10.00000000,0.00000000,0.00000000,0.00000000,0.00000000,0.00000000,0.00000000,1,10.00000000,0.00000000,0.00000000,0.00000000,0.00000000,600803,0.00000000,10.00000000,0.00000000,0.00000000,0.00000000,0.00000000,0.00000000,0.00000000,0.00000000,1,0.00000000,10.00000000,0.00000000,0.00000000,0.00000000,0.00000000,2),(50,0.00000000,10.00000000,0.00000000,0.00000000,0.00000000,0.00000000,0.00000000,0.00000000,1,10.00000000,0.00000000,0.00000000,0.00000000,0.00000000,600801,0.00000000,10.00000000,0.00000000,0.00000000,0.00000000,0.00000000,0.00000000,0.00000000,0.00000000,1,0.00000000,10.00000000,0.00000000,0.00000000,0.00000000,0.00000000,2),(51,0.00000000,10.00000000,0.00000000,0.00000000,0.00000000,0.00000000,0.00000000,0.00000000,1,10.00000000,0.00000000,0.00000000,0.00000000,0.00000000,1,100000.00000000,10.00000000,0.00000000,0.00000000,0.00000000,0.00000000,0.00000000,0.00000000,0.00000000,1,0.00000000,10.00000000,0.00000000,0.00000000,0.00000000,0.00000000,3),(52,0.00000000,10.00000000,0.00000000,0.00000000,0.00000000,0.00000000,0.00000000,0.00000000,1,10.00000000,0.00000000,0.00000000,0.00000000,0.00000000,600800,88978.99000000,10.00000000,61.00000000,75.14049179,610.00000000,10010.00000000,0.00000000,0.00000000,0.00000000,0,0.00000000,10.00000000,40.00000000,76.55000000,400.00000000,100.00000000,3),(53,0.00000000,10.00000000,0.00000000,0.00000000,0.00000000,0.00000000,0.00000000,0.00000000,1,10.00000000,0.00000000,0.00000000,0.00000000,0.00000000,600804,0.00000000,10.00000000,0.00000000,0.00000000,0.00000000,0.00000000,0.00000000,0.00000000,0.00000000,1,0.00000000,10.00000000,0.00000000,0.00000000,0.00000000,0.00000000,3),(54,0.00000000,10.00000000,0.00000000,0.00000000,0.00000000,0.00000000,0.00000000,0.00000000,1,10.00000000,0.00000000,0.00000000,0.00000000,0.00000000,600805,0.00000000,10.00000000,0.00000000,0.00000000,0.00000000,0.00000000,0.00000000,0.00000000,0.00000000,1,0.00000000,10.00000000,0.00000000,0.00000000,0.00000000,0.00000000,3),(55,0.00000000,10.00000000,0.00000000,0.00000000,0.00000000,0.00000000,0.00000000,0.00000000,1,10.00000000,0.00000000,0.00000000,0.00000000,0.00000000,600802,0.00000000,10.00000000,0.00000000,0.00000000,0.00000000,0.00000000,0.00000000,0.00000000,0.00000000,1,0.00000000,10.00000000,0.00000000,0.00000000,0.00000000,0.00000000,3),(56,0.00000000,10.00000000,0.00000000,0.00000000,0.00000000,0.00000000,0.00000000,0.00000000,1,10.00000000,0.00000000,0.00000000,0.00000000,0.00000000,600803,0.00000000,10.00000000,0.00000000,0.00000000,0.00000000,0.00000000,0.00000000,0.00000000,0.00000000,1,0.00000000,10.00000000,0.00000000,0.00000000,0.00000000,0.00000000,3),(57,0.00000000,10.00000000,0.00000000,0.00000000,0.00000000,0.00000000,0.00000000,0.00000000,1,10.00000000,0.00000000,0.00000000,0.00000000,0.00000000,600801,0.00000000,10.00000000,0.00000000,0.00000000,0.00000000,0.00000000,0.00000000,0.00000000,0.00000000,1,0.00000000,10.00000000,0.00000000,0.00000000,0.00000000,0.00000000,3),(58,0.00000000,10.00000000,0.00000000,0.00000000,0.00000000,0.00000000,0.00000000,0.00000000,1,10.00000000,0.00000000,0.00000000,0.00000000,100.00000000,600806,0.00000000,10.00000000,0.00000000,0.00000000,0.00000000,0.00000000,0.00000000,0.00000000,NULL,1,NULL,10.00000000,0.00000000,0.00000000,0.00000000,100.00000000,1),(59,0.00000000,10.00000000,0.00000000,0.00000000,0.00000000,0.00000000,0.00000000,0.00000000,1,10.00000000,0.00000000,0.00000000,0.00000000,100.00000000,600806,0.00000000,10.00000000,0.00000000,0.00000000,0.00000000,0.00000000,0.00000000,0.00000000,NULL,1,NULL,10.00000000,0.00000000,0.00000000,0.00000000,100.00000000,2),(60,0.00000000,10.00000000,0.00000000,0.00000000,0.00000000,0.00000000,0.00000000,0.00000000,1,10.00000000,0.00000000,0.00000000,0.00000000,100.00000000,600806,0.00000000,10.00000000,0.00000000,0.00000000,0.00000000,0.00000000,0.00000000,0.00000000,NULL,1,NULL,10.00000000,0.00000000,0.00000000,0.00000000,100.00000000,3),(61,0.00000000,10.00000000,0.00000000,0.00000000,0.00000000,0.00000000,0.00000000,0.00000000,1,10.00000000,0.00000000,0.00000000,0.00000000,100.00000000,600807,0.00000000,10.00000000,0.00000000,0.00000000,0.00000000,0.00000000,0.00000000,0.00000000,NULL,1,NULL,10.00000000,0.00000000,0.00000000,0.00000000,100.00000000,1),(62,0.00000000,10.00000000,0.00000000,0.00000000,0.00000000,0.00000000,0.00000000,0.00000000,1,10.00000000,0.00000000,0.00000000,0.00000000,100.00000000,600807,0.00000000,10.00000000,0.00000000,0.00000000,0.00000000,0.00000000,0.00000000,0.00000000,NULL,1,NULL,10.00000000,0.00000000,0.00000000,0.00000000,100.00000000,2),(63,0.00000000,10.00000000,0.00000000,0.00000000,0.00000000,0.00000000,0.00000000,0.00000000,1,10.00000000,0.00000000,0.00000000,0.00000000,100.00000000,600807,0.00000000,10.00000000,0.00000000,0.00000000,0.00000000,0.00000000,0.00000000,0.00000000,NULL,1,NULL,10.00000000,0.00000000,0.00000000,0.00000000,100.00000000,3),(73,0.00000000,10.00000000,0.00000000,0.00000000,0.00000000,0.00000000,0.00000000,0.00000000,1,10.00000000,0.00000000,0.00000000,0.00000000,100.00000000,600808,0.00000000,10.00000000,0.00000000,0.00000000,0.00000000,0.00000000,0.00000000,0.00000000,NULL,1,NULL,10.00000000,0.00000000,0.00000000,0.00000000,100.00000000,1),(74,0.00000000,10.00000000,0.00000000,0.00000000,0.00000000,0.00000000,0.00000000,0.00000000,1,10.00000000,0.00000000,0.00000000,0.00000000,100.00000000,600808,0.00000000,10.00000000,0.00000000,0.00000000,0.00000000,0.00000000,0.00000000,0.00000000,NULL,1,NULL,10.00000000,0.00000000,0.00000000,0.00000000,100.00000000,2),(75,0.00000000,10.00000000,0.00000000,0.00000000,0.00000000,0.00000000,0.00000000,0.00000000,1,10.00000000,0.00000000,0.00000000,0.00000000,100.00000000,600808,0.00000000,10.00000000,0.00000000,0.00000000,0.00000000,0.00000000,0.00000000,0.00000000,NULL,1,NULL,10.00000000,0.00000000,0.00000000,0.00000000,100.00000000,3),(76,0.00000000,10.00000000,0.00000000,0.00000000,0.00000000,0.00000000,0.00000000,0.00000000,1,10.00000000,0.00000000,0.00000000,0.00000000,100.00000000,600809,0.00000000,10.00000000,0.00000000,0.00000000,0.00000000,0.00000000,0.00000000,0.00000000,NULL,1,NULL,10.00000000,0.00000000,0.00000000,0.00000000,100.00000000,1),(77,0.00000000,10.00000000,0.00000000,0.00000000,0.00000000,0.00000000,0.00000000,0.00000000,1,10.00000000,0.00000000,0.00000000,0.00000000,100.00000000,600809,0.00000000,10.00000000,0.00000000,0.00000000,0.00000000,0.00000000,0.00000000,0.00000000,NULL,1,NULL,10.00000000,0.00000000,0.00000000,0.00000000,100.00000000,2),(78,0.00000000,10.00000000,0.00000000,0.00000000,0.00000000,0.00000000,0.00000000,0.00000000,1,10.00000000,0.00000000,0.00000000,0.00000000,100.00000000,600809,0.00000000,10.00000000,0.00000000,0.00000000,0.00000000,0.00000000,0.00000000,0.00000000,NULL,1,NULL,10.00000000,0.00000000,0.00000000,0.00000000,100.00000000,3),(79,0.00000000,10.00000000,0.00000000,0.00000000,0.00000000,0.00000000,0.00000000,0.00000000,1,10.00000000,0.00000000,0.00000000,0.00000000,100.00000000,600810,0.00000000,10.00000000,0.00000000,0.00000000,0.00000000,0.00000000,0.00000000,0.00000000,NULL,1,NULL,10.00000000,0.00000000,0.00000000,0.00000000,100.00000000,1),(80,0.00000000,10.00000000,0.00000000,0.00000000,0.00000000,0.00000000,0.00000000,0.00000000,1,10.00000000,0.00000000,0.00000000,0.00000000,100.00000000,600810,0.00000000,10.00000000,0.00000000,0.00000000,0.00000000,0.00000000,0.00000000,0.00000000,NULL,1,NULL,10.00000000,0.00000000,0.00000000,0.00000000,100.00000000,2),(81,0.00000000,10.00000000,0.00000000,0.00000000,0.00000000,0.00000000,0.00000000,0.00000000,1,10.00000000,0.00000000,0.00000000,0.00000000,100.00000000,600810,0.00000000,10.00000000,0.00000000,0.00000000,0.00000000,0.00000000,0.00000000,0.00000000,NULL,1,NULL,10.00000000,0.00000000,0.00000000,0.00000000,100.00000000,3),(106,0.00000000,10.00000000,0.00000000,0.00000000,0.00000000,0.00000000,0.00000000,0.00000000,1,10.00000000,0.00000000,0.00000000,0.00000000,100.00000000,600811,0.00000000,10.00000000,0.00000000,0.00000000,0.00000000,0.00000000,0.00000000,0.00000000,NULL,1,NULL,10.00000000,0.00000000,0.00000000,0.00000000,100.00000000,1),(107,0.00000000,10.00000000,0.00000000,0.00000000,0.00000000,0.00000000,0.00000000,0.00000000,1,10.00000000,0.00000000,0.00000000,0.00000000,100.00000000,600811,0.00000000,10.00000000,0.00000000,0.00000000,0.00000000,0.00000000,0.00000000,0.00000000,NULL,1,NULL,10.00000000,0.00000000,0.00000000,0.00000000,100.00000000,2),(108,0.00000000,10.00000000,0.00000000,0.00000000,0.00000000,0.00000000,0.00000000,0.00000000,1,10.00000000,0.00000000,0.00000000,0.00000000,100.00000000,600811,0.00000000,10.00000000,0.00000000,0.00000000,0.00000000,0.00000000,0.00000000,0.00000000,NULL,1,NULL,10.00000000,0.00000000,0.00000000,0.00000000,100.00000000,3);
/*!40000 ALTER TABLE `member_contract_wallet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `member_deposit`
--

DROP TABLE IF EXISTS `member_deposit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `member_deposit` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `address` varchar(255) DEFAULT NULL,
  `amount` decimal(18,8) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `member_id` bigint(20) DEFAULT NULL,
  `txid` varchar(255) DEFAULT NULL,
  `unit` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `UKl2ibi99fuxplt8qt3rrpb0q4w` (`txid`,`address`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `member_deposit`
--

LOCK TABLES `member_deposit` WRITE;
/*!40000 ALTER TABLE `member_deposit` DISABLE KEYS */;
INSERT INTO `member_deposit` VALUES (1,'0xe2c477d88db26ff7d70583d268244412e6a192eb',4437.82527500,'2020-10-17 22:05:44',802797,'0xb6526d714272798af392accf505036456a3ed6a590a5ac7269764c0a27423660','USDT'),(2,'0x3c4ee6db1b5b3d77e59808864b1ee12d7c555e8a',10.00000000,'2020-10-17 22:08:18',800964,'0x52079b5310b0e68188aadfc5c0388e28b175f2ac6262a02420349cb657f3ca43','USDT'),(3,'0x082ffd2a816d485cd7fb0ad772edc9710c508833',137.38988400,'2020-10-17 23:10:56',804505,'0xe60cb86b35764c35b218d569fd48167df4b4d869a113c4302a3e92d684c7dbb8','USDT'),(4,'0x0836eaf532bde086c294aa109dcee13fbf632176',4515.07235000,'2020-10-17 23:11:39',810050,'0x8b3955127ded428585657b925002a9fedda882841bd0a6fdefa1f4cfe6f61ba9','USDT'),(5,'0x482ed2019c3189b931074a4d63f26c91782e5f90',2563.65404100,'2020-10-17 23:19:08',815548,'0x2cba451ce1fbfee75b19e92368d899543e6bd6eb3c157d9d88802f21211da1f2','USDT'),(6,'0x0836eaf532bde086c294aa109dcee13fbf632176',8436.74155400,'2020-10-17 23:21:04',810050,'0xa5e57aba6f27a6540bffdbb7b2242697bdd77fbea70545d1641f1355beddd649','USDT'),(7,'0x1d1bc364e43caf352d1db1f4753fae0d457d6571',10.00000000,'2020-10-17 23:35:08',800627,'0xb95eb7ebe4e5a748b5d4156e43e3bb81ee4a14b640a6cd0c51b2bd2b2766223a','USDT'),(8,'0x90cd7ad8cbc8ece7f4671226e55f50aaebad0503',3000.00000000,'2020-10-18 00:10:57',862889,'0xce0439291d54a9cab0e5bbd687e17ab6d496c446fb5e5dfb601be642582cbf6f','USDT'),(9,'0x025c20fd34736abce8df8dc33c62cefbe61338fc',1497.00000000,'2020-10-18 09:41:17',803127,'0x63cca22d9f7524150b1cb14b9982a69a14b6085032c58039962ab455db1085f9','USDT'),(10,'0xe2c477d88db26ff7d70583d268244412e6a192eb',790.00000000,'2020-10-18 11:26:47',802797,'0x15fb04390cbc0e91d40ca79b767461e20b08fef00aca983b2dd9cb4917832950','USDT'),(11,'0x94c32458d755e34194b2838253c2fd455a926ec1',1346.32719200,'2020-10-18 13:03:30',847120,'0xe1fbf1c6c6b159fa33e4578618bcbf6574c15f0b246d7b0a4fa728adbf4d2a59','USDT'),(12,'0xc32fd0ed22b6f336cf53f6fc4e1e9b92f3ca0396',3460.70481900,'2020-10-18 14:46:50',834738,'0x42483cd7657816ec41a2669de0bbe56332e66fd1792af9ef9d406928365e2fa0','USDT'),(13,'0x94c32458d755e34194b2838253c2fd455a926ec1',1427.00000000,'2020-10-18 20:09:18',847120,'0xb2b5701eb3c604a3e551d8df517a0230e97c6676ed810ea7944c4f8a20ca99b5','USDT'),(14,'0xe2c477d88db26ff7d70583d268244412e6a192eb',2857.08769100,'2020-10-18 21:03:29',802797,'0x1fcbd76b36bbed226a1acadb6175dcb706557ac4128dcb0a1d98a90695f849e5','USDT'),(15,'0x0c8619ec20df98735c8cdf5a040bccc146aae660',1.00000000,'2020-10-20 18:52:25',847222,'0x5fd0999fda59b314ad9cbea69ce54d6b689f1e7492d3edb33c7f6d465a0e2fab','USDT'),(16,'0xe2c477d88db26ff7d70583d268244412e6a192eb',3008.52670700,'2020-10-20 22:00:54',802797,'0xb371e857ed3e42413d79102b35e3fb2bf32863afc26775ac63ee61808b193b20','USDT');
/*!40000 ALTER TABLE `member_deposit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `member_invite_stastic`
--

DROP TABLE IF EXISTS `member_invite_stastic`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `member_invite_stastic` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `btc_reward` decimal(24,8) DEFAULT NULL,
  `estimated_reward` decimal(24,8) DEFAULT NULL,
  `eth_reward` decimal(24,8) DEFAULT NULL,
  `extra_reward` decimal(24,8) DEFAULT NULL,
  `is_robot` int(11) NOT NULL,
  `level_one` int(11) NOT NULL,
  `level_two` int(11) NOT NULL,
  `member_id` bigint(20) DEFAULT NULL,
  `other_reward` varchar(255) DEFAULT NULL,
  `stastic_date` varchar(30) NOT NULL DEFAULT '2000-01-01 01:00:00' COMMENT '统计日期',
  `usdt_reward` decimal(24,8) DEFAULT NULL,
  `user_identify` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `member_id` (`member_id`) USING BTREE,
  UNIQUE KEY `UK4o6jykp20ax1pybxgxcwsxq01` (`member_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=59277 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `member_invite_stastic`
--

LOCK TABLES `member_invite_stastic` WRITE;
/*!40000 ALTER TABLE `member_invite_stastic` DISABLE KEYS */;
INSERT INTO `member_invite_stastic` VALUES (59264,0.00000000,87.81666200,0.00000000,0.00000000,1,21,31,1,NULL,'2020-12-14 02:00:00',0.00000000,'13791233920'),(59265,0.00000000,0.00000000,0.00000000,0.00000000,0,0,0,600800,NULL,'2020-12-14 02:00:00',0.00000000,'13800138001'),(59266,0.00000000,0.00000000,0.00000000,0.00000000,0,0,0,600801,NULL,'2020-12-14 02:00:00',0.00000000,'18858125915'),(59267,0.00000000,0.00000000,0.00000000,0.00000000,0,0,0,600802,NULL,'2020-12-14 02:00:00',0.00000000,'18305458968'),(59268,0.00000000,0.00000000,0.00000000,0.00000000,0,0,0,600803,NULL,'2020-12-14 02:00:00',0.00000000,'18609730102'),(59269,0.00000000,0.00000000,0.00000000,0.00000000,0,0,0,600804,NULL,'2020-12-14 02:00:00',0.00000000,'15771791361'),(59270,0.00000000,0.00000000,0.00000000,0.00000000,0,0,0,600805,NULL,'2020-12-14 02:00:00',0.00000000,'15801018660'),(59271,0.00000000,0.00000000,0.00000000,0.00000000,0,0,0,600806,NULL,'2020-12-14 02:00:00',0.00000000,'18566220020'),(59272,0.00000000,0.00000000,0.00000000,0.00000000,0,0,0,600807,NULL,'2020-12-14 02:00:00',0.00000000,'15103821590'),(59273,0.00000000,0.00000000,0.00000000,0.00000000,0,0,0,600808,NULL,'2020-12-14 02:00:00',0.00000000,'15875414009'),(59274,0.00000000,0.00000000,0.00000000,0.00000000,0,0,0,600809,NULL,'2020-12-14 02:00:00',0.00000000,'13299000557'),(59275,0.00000000,0.00000000,0.00000000,0.00000000,0,0,0,600810,NULL,'2020-12-14 02:00:00',0.00000000,'18596142762'),(59276,0.00000000,0.00000000,0.00000000,0.00000000,0,0,0,600811,NULL,'2020-12-14 02:00:00',0.00000000,'17719877280');
/*!40000 ALTER TABLE `member_invite_stastic` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `member_invite_stastic_rank`
--

DROP TABLE IF EXISTS `member_invite_stastic_rank`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `member_invite_stastic_rank` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `is_robot` int(11) NOT NULL,
  `level_one` int(11) NOT NULL,
  `level_two` int(11) NOT NULL,
  `member_id` bigint(20) DEFAULT NULL,
  `stastic_date` datetime DEFAULT NULL,
  `type` int(11) NOT NULL,
  `user_identify` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `member_invite_stastic_rank`
--

LOCK TABLES `member_invite_stastic_rank` WRITE;
/*!40000 ALTER TABLE `member_invite_stastic_rank` DISABLE KEYS */;
/*!40000 ALTER TABLE `member_invite_stastic_rank` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `member_level`
--

DROP TABLE IF EXISTS `member_level`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `member_level` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `is_default` bit(1) NOT NULL,
  `name` varchar(255) NOT NULL,
  `remark` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `member_level`
--

LOCK TABLES `member_level` WRITE;
/*!40000 ALTER TABLE `member_level` DISABLE KEYS */;
/*!40000 ALTER TABLE `member_level` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `member_promotion`
--

DROP TABLE IF EXISTS `member_promotion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `member_promotion` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `invitees_id` bigint(20) DEFAULT NULL,
  `inviter_id` bigint(20) DEFAULT NULL,
  `level` int(11) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=9360 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `member_promotion`
--

LOCK TABLES `member_promotion` WRITE;
/*!40000 ALTER TABLE `member_promotion` DISABLE KEYS */;
/*!40000 ALTER TABLE `member_promotion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `member_sign_record`
--

DROP TABLE IF EXISTS `member_sign_record`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `member_sign_record` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `amount` decimal(19,2) DEFAULT NULL,
  `creation_time` datetime DEFAULT NULL,
  `coin_name` varchar(255) DEFAULT NULL,
  `member_id` bigint(20) DEFAULT NULL,
  `sign_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `FK7qa42qkaoqxlyvwhxwdstclic` (`coin_name`) USING BTREE,
  KEY `FK2r4i90tejcbf85vhk0d8besle` (`member_id`) USING BTREE,
  KEY `FKq1926wgosqk7ka4kvw8rtxew` (`sign_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `member_sign_record`
--

LOCK TABLES `member_sign_record` WRITE;
/*!40000 ALTER TABLE `member_sign_record` DISABLE KEYS */;
/*!40000 ALTER TABLE `member_sign_record` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `member_transaction`
--

DROP TABLE IF EXISTS `member_transaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `member_transaction` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `address` varchar(255) DEFAULT NULL,
  `amount` decimal(26,16) DEFAULT NULL COMMENT '充币金额',
  `create_time` datetime DEFAULT NULL,
  `discount_fee` varchar(255) DEFAULT NULL,
  `fee` decimal(26,16) DEFAULT NULL,
  `flag` int(11) NOT NULL DEFAULT '0',
  `member_id` bigint(20) DEFAULT NULL,
  `real_fee` varchar(255) DEFAULT NULL,
  `symbol` varchar(255) DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2366259 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `member_transaction`
--

LOCK TABLES `member_transaction` WRITE;
/*!40000 ALTER TABLE `member_transaction` DISABLE KEYS */;
/*!40000 ALTER TABLE `member_transaction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `member_wallet`
--

DROP TABLE IF EXISTS `member_wallet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `member_wallet` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `address` varchar(255) DEFAULT NULL,
  `balance` decimal(26,16) DEFAULT NULL COMMENT '可用余额',
  `frozen_balance` decimal(26,16) DEFAULT NULL COMMENT '冻结余额',
  `is_lock` int(11) DEFAULT '0' COMMENT '钱包不是锁定',
  `member_id` bigint(20) DEFAULT NULL,
  `to_released` decimal(18,8) DEFAULT NULL COMMENT '待释放总量',
  `version` int(11) NOT NULL,
  `coin_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `UKm68bscpof0bpnxocxl4qdnvbe` (`member_id`,`coin_id`) USING BTREE,
  KEY `FKf9tgbp9y9py8t9c5xj0lllcib` (`coin_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=191 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;


--
-- Table structure for table `member_wallet_history`
--

DROP TABLE IF EXISTS `member_wallet_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `member_wallet_history` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `member_id` int(11) NOT NULL,
  `coin_id` varchar(255) NOT NULL,
  `before_balance` decimal(18,8) NOT NULL,
  `after_balance` decimal(18,8) DEFAULT NULL,
  `before_frozen_balance` decimal(18,8) DEFAULT NULL,
  `after_frozen_balance` decimal(18,8) DEFAULT NULL,
  `op_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4667071 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `member_wallet_history`
--

LOCK TABLES `member_wallet_history` WRITE;
/*!40000 ALTER TABLE `member_wallet_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `member_wallet_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mining_order`
--

DROP TABLE IF EXISTS `mining_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mining_order` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `activity_id` bigint(20) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `current_daysprofit` decimal(18,8) DEFAULT NULL COMMENT '矿机当前日产出',
  `end_time` varchar(30) NOT NULL DEFAULT '2000-01-01 01:00:00' COMMENT '结束时间',
  `member_id` bigint(20) NOT NULL,
  `mining_days` int(11) NOT NULL,
  `mining_daysprofit` decimal(18,8) DEFAULT NULL COMMENT '矿机原始日产出',
  `mining_unit` varchar(255) DEFAULT NULL,
  `mininged_days` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `mining_status` int(11) NOT NULL,
  `period` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `mining_invite` decimal(24,8) DEFAULT NULL,
  `mining_invitelimit` decimal(24,8) DEFAULT NULL,
  `total_profit` decimal(18,8) DEFAULT NULL COMMENT '矿机总产出',
  `type` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mining_order`
--

LOCK TABLES `mining_order` WRITE;
/*!40000 ALTER TABLE `mining_order` DISABLE KEYS */;
/*!40000 ALTER TABLE `mining_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mining_order_detail`
--

DROP TABLE IF EXISTS `mining_order_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mining_order_detail` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_time` datetime DEFAULT NULL,
  `member_id` bigint(20) NOT NULL,
  `mining_order_id` bigint(20) DEFAULT NULL,
  `mining_unit` varchar(255) DEFAULT NULL,
  `output` decimal(18,8) DEFAULT NULL COMMENT '矿机当期产出',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mining_order_detail`
--

LOCK TABLES `mining_order_detail` WRITE;
/*!40000 ALTER TABLE `mining_order_detail` DISABLE KEYS */;
/*!40000 ALTER TABLE `mining_order_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `otc_coin`
--

DROP TABLE IF EXISTS `otc_coin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `otc_coin` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `buy_min_amount` decimal(18,8) DEFAULT NULL COMMENT '买入广告最低发布数量',
  `is_platform_coin` int(11) DEFAULT NULL,
  `jy_rate` decimal(18,6) DEFAULT NULL COMMENT '交易手续费率',
  `name` varchar(255) NOT NULL,
  `name_cn` varchar(255) NOT NULL,
  `sell_min_amount` decimal(18,8) DEFAULT NULL COMMENT '卖出广告最低发布数量',
  `sort` int(11) NOT NULL,
  `status` int(11) DEFAULT NULL,
  `unit` varchar(255) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `otc_coin`
--

LOCK TABLES `otc_coin` WRITE;
/*!40000 ALTER TABLE `otc_coin` DISABLE KEYS */;
INSERT INTO `otc_coin` VALUES (1,0.01000000,0,1.000000,'Bitcoin','比特币',0.10000000,0,0,'BTC'),(2,0.01000000,0,0.000000,'USDT','泰达币',0.10000000,0,0,'USDT'),(3,0.01000000,0,1.000000,'Ethereum','以太坊',0.10000000,0,0,'ETH');
/*!40000 ALTER TABLE `otc_coin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `otc_order`
--

DROP TABLE IF EXISTS `otc_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `otc_order` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `advertise_id` bigint(20) NOT NULL,
  `advertise_type` int(11) NOT NULL,
  `ali_no` varchar(255) DEFAULT NULL,
  `qr_code_url` varchar(255) DEFAULT NULL,
  `bank` varchar(255) DEFAULT NULL,
  `branch` varchar(255) DEFAULT NULL,
  `card_no` varchar(255) DEFAULT NULL,
  `cancel_time` datetime DEFAULT NULL,
  `commission` decimal(18,8) DEFAULT NULL COMMENT '手续费',
  `country` varchar(255) NOT NULL,
  `create_time` datetime DEFAULT NULL,
  `customer_id` bigint(20) NOT NULL,
  `customer_name` varchar(255) DEFAULT NULL,
  `customer_real_name` varchar(255) DEFAULT NULL,
  `max_limit` decimal(18,2) DEFAULT NULL COMMENT '最高交易额',
  `member_id` bigint(20) NOT NULL,
  `member_name` varchar(255) DEFAULT NULL,
  `member_real_name` varchar(255) DEFAULT NULL,
  `min_limit` decimal(18,2) DEFAULT NULL COMMENT '最低交易额',
  `money` decimal(18,2) DEFAULT NULL COMMENT '交易金额',
  `number` decimal(18,8) DEFAULT NULL COMMENT '交易数量',
  `order_sn` varchar(255) NOT NULL,
  `pay_mode` varchar(255) NOT NULL,
  `pay_time` datetime DEFAULT NULL,
  `price` decimal(18,2) DEFAULT NULL COMMENT '价格',
  `release_time` datetime DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `time_limit` int(11) DEFAULT NULL,
  `version` bigint(20) DEFAULT NULL,
  `qr_we_code_url` varchar(255) DEFAULT NULL,
  `wechat` varchar(255) DEFAULT NULL,
  `coin_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `UK_qmfpakgu6mowmslv4m5iy43t9` (`order_sn`) USING BTREE,
  KEY `FKjh47nnmiehmu15wqjfwnh8a6u` (`coin_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `otc_order`
--

LOCK TABLES `otc_order` WRITE;
/*!40000 ALTER TABLE `otc_order` DISABLE KEYS */;
INSERT INTO `otc_order` VALUES (10,1,1,NULL,NULL,'中国工商银行','工行','60002160601398896',NULL,0.00000000,'中国','2020-10-31 05:01:02',600800,'13800138001','测试',1000.00,1,'13791233920','机器人',100.00,100.00,14.99250375,'378408690937495552','银联','2020-10-31 05:01:14',6.67,'2020-10-31 05:46:58',NULL,3,15,0,NULL,NULL,2),(11,2,1,NULL,NULL,'','','60002160601398896',NULL,0.00000000,'中国','2020-11-08 22:10:42',1,'13791233920','机器人',103.00,600800,'13800138001','测试',100.00,100.00,14.26533524,'381566914771550208','银联','2020-11-08 22:10:56',7.01,NULL,'',4,17,0,NULL,NULL,2);
/*!40000 ALTER TABLE `otc_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `promotion_card`
--

DROP TABLE IF EXISTS `promotion_card`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `promotion_card` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `amount` decimal(18,8) DEFAULT NULL COMMENT '单个卡券金额',
  `card_desc` varchar(255) DEFAULT NULL,
  `card_name` varchar(255) NOT NULL,
  `card_no` varchar(255) NOT NULL,
  `count` int(11) NOT NULL,
  `create_time` datetime DEFAULT NULL,
  `exchange_count` int(11) NOT NULL,
  `is_enabled` int(11) NOT NULL,
  `is_free` int(11) NOT NULL,
  `is_lock` int(11) NOT NULL,
  `lock_days` int(11) NOT NULL,
  `member_id` bigint(20) NOT NULL,
  `total_amount` decimal(18,8) DEFAULT NULL COMMENT '所有卡券总金额',
  `coin_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `UK_3781uubel3iuh86ht6yv0n0r7` (`card_no`) USING BTREE,
  KEY `FKem2r42s1av7tfni612176gt9f` (`coin_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `promotion_card`
--

LOCK TABLES `promotion_card` WRITE;
/*!40000 ALTER TABLE `promotion_card` DISABLE KEYS */;
INSERT INTO `promotion_card` VALUES (1,0.00100000,'','合伙人推广卡','VPTGL0FL3',30,'2020-10-13 18:43:29',2,1,1,0,0,800749,0.03000000,'Bitcoin'),(2,0.00100000,'','合伙人推广卡','REB6P3GQV',30,'2020-10-13 18:52:00',2,1,1,0,0,805330,0.03000000,'Bitcoin'),(3,0.00100000,'','合伙人推广卡','711C0NEUH',30,'2020-10-13 18:52:09',1,1,1,0,0,834706,0.03000000,'Bitcoin'),(4,0.00100000,'','合伙人推广卡','CK30OTAWO',30,'2020-10-13 18:58:39',1,1,1,0,0,804916,0.03000000,'Bitcoin'),(5,0.00100000,'','合伙人推广卡','VBLBTJH1K',30,'2020-10-18 18:50:48',0,1,1,0,0,828465,0.03000000,'Bitcoin'),(6,0.00100000,'','合伙人推广卡','0QGWGCYFB',30,'2020-10-31 02:46:37',1,1,1,0,0,1,0.03000000,'Bitcoin');
/*!40000 ALTER TABLE `promotion_card` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `promotion_card_order`
--

DROP TABLE IF EXISTS `promotion_card_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `promotion_card_order` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `amount` decimal(18,8) DEFAULT NULL COMMENT '兑换金额',
  `create_time` datetime DEFAULT NULL,
  `is_free` int(11) NOT NULL,
  `is_lock` int(11) NOT NULL,
  `lock_days` int(11) NOT NULL,
  `member_id` bigint(20) NOT NULL,
  `state` int(11) NOT NULL,
  `card_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `FK1e6ykywfbw68oodq33no4ao8u` (`card_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `promotion_card_order`
--

LOCK TABLES `promotion_card_order` WRITE;
/*!40000 ALTER TABLE `promotion_card_order` DISABLE KEYS */;
INSERT INTO `promotion_card_order` VALUES (1,0.00100000,'2020-10-13 18:46:03',1,0,0,800749,1,1),(2,0.00100000,'2020-10-13 18:52:48',1,0,0,834706,1,1),(3,0.00100000,'2020-10-13 18:53:01',1,0,0,805330,1,3),(4,0.00100000,'2020-10-13 18:59:09',1,0,0,804916,1,4),(5,0.00100000,'2020-10-13 19:00:29',1,0,0,862728,1,2),(6,0.00100000,'2020-10-15 21:25:53',1,0,0,862740,1,2),(7,0.00100000,'2020-10-31 02:47:05',1,0,0,1,1,6);
/*!40000 ALTER TABLE `promotion_card_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quick_exchange`
--

DROP TABLE IF EXISTS `quick_exchange`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `quick_exchange` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `amount` decimal(24,8) DEFAULT '0.00000000',
  `create_time` datetime DEFAULT NULL,
  `ex_amount` decimal(24,8) DEFAULT '0.00000000',
  `from_unit` varchar(255) DEFAULT NULL,
  `member_id` bigint(20) NOT NULL,
  `rate` decimal(24,8) DEFAULT '0.00000000',
  `status` int(11) NOT NULL,
  `to_unit` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quick_exchange`
--

LOCK TABLES `quick_exchange` WRITE;
/*!40000 ALTER TABLE `quick_exchange` DISABLE KEYS */;
/*!40000 ALTER TABLE `quick_exchange` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `red_envelope`
--

DROP TABLE IF EXISTS `red_envelope`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `red_envelope` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `bg_image` varchar(255) DEFAULT NULL,
  `count` int(11) NOT NULL,
  `create_time` datetime DEFAULT NULL,
  `detail` text,
  `envelope_no` varchar(255) NOT NULL,
  `expired_hours` int(11) NOT NULL,
  `invite` int(11) NOT NULL,
  `logo_image` varchar(255) DEFAULT NULL,
  `max_rand` decimal(18,8) DEFAULT NULL COMMENT '最大随机领取额',
  `member_id` bigint(20) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `plateform` int(11) NOT NULL,
  `receive_amount` decimal(18,8) DEFAULT NULL COMMENT '领取总额',
  `receive_count` int(11) NOT NULL,
  `state` int(11) NOT NULL,
  `total_amount` decimal(18,8) DEFAULT NULL COMMENT '红包总额',
  `type` int(11) NOT NULL,
  `unit` varchar(255) DEFAULT NULL,
  `invite_user` varchar(255) DEFAULT NULL,
  `invite_user_avatar` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `UK_kpc525u446ufbpp8a8wxq6b93` (`envelope_no`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `red_envelope`
--

LOCK TABLES `red_envelope` WRITE;
/*!40000 ALTER TABLE `red_envelope` DISABLE KEYS */;
/*!40000 ALTER TABLE `red_envelope` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `red_envelope_detail`
--

DROP TABLE IF EXISTS `red_envelope_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `red_envelope_detail` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `amount` decimal(18,8) DEFAULT NULL COMMENT '领取数额',
  `cate` int(11) NOT NULL,
  `create_time` datetime DEFAULT NULL,
  `envelope_id` bigint(20) DEFAULT NULL,
  `member_id` bigint(20) NOT NULL,
  `user_identify` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `red_envelope_detail`
--

LOCK TABLES `red_envelope_detail` WRITE;
/*!40000 ALTER TABLE `red_envelope_detail` DISABLE KEYS */;
/*!40000 ALTER TABLE `red_envelope_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reward_activity_setting`
--

DROP TABLE IF EXISTS `reward_activity_setting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reward_activity_setting` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `info` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `admin_id` bigint(20) DEFAULT NULL,
  `coin_id` varchar(255) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `FKra9w7qwgbxti55cmkb6kycau7` (`admin_id`) USING BTREE,
  KEY `FKmxq57nrqt4lb9lqpxwc095h1h` (`coin_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reward_activity_setting`
--

LOCK TABLES `reward_activity_setting` WRITE;
/*!40000 ALTER TABLE `reward_activity_setting` DISABLE KEYS */;
/*!40000 ALTER TABLE `reward_activity_setting` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reward_promotion_setting`
--

DROP TABLE IF EXISTS `reward_promotion_setting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reward_promotion_setting` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `effective_time` int(11) NOT NULL,
  `info` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `admin_id` bigint(20) DEFAULT NULL,
  `coin_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `FK7fl96plmj12crmepem7t876u3` (`admin_id`) USING BTREE,
  KEY `FKfhtlsn9g8lj5qecbo596ymhey` (`coin_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reward_promotion_setting`
--

LOCK TABLES `reward_promotion_setting` WRITE;
/*!40000 ALTER TABLE `reward_promotion_setting` DISABLE KEYS */;
INSERT INTO `reward_promotion_setting` VALUES (1,180,'{\"one\":10,“two”:0}',1,1,'2019-07-19 00:00:00',1,'SIC');
/*!40000 ALTER TABLE `reward_promotion_setting` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reward_record`
--

DROP TABLE IF EXISTS `reward_record`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reward_record` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `amount` decimal(18,8) DEFAULT NULL COMMENT '数目',
  `create_time` datetime DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `coin_id` varchar(255) NOT NULL,
  `member_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `FKtm2ha75hh60am8n7lco838nmo` (`coin_id`) USING BTREE,
  KEY `FK9m2bd6gjgad67vb6of4waxtov` (`member_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reward_record`
--

LOCK TABLES `reward_record` WRITE;
/*!40000 ALTER TABLE `reward_record` DISABLE KEYS */;
INSERT INTO `reward_record` VALUES (1,0.05752046,'2020-10-11 22:22:24','币币推广交易',0,'USDT',847216),(2,0.00063365,'2020-10-11 22:22:24','币币推广交易',0,'USDT',847216),(3,0.00534766,'2020-10-11 22:22:24','币币推广交易',0,'USDT',847216),(4,0.01104454,'2020-10-11 22:22:24','币币推广交易',0,'USDT',847216),(5,0.03996563,'2020-10-11 22:37:16','币币推广交易',0,'USDT',847216),(6,0.03459294,'2020-10-11 22:37:16','币币推广交易',0,'USDT',847216),(7,0.07488304,'2020-10-11 22:38:13','币币推广交易',0,'USDT',847216),(8,0.00059963,'2020-10-11 22:42:31','币币推广交易',0,'USDT',847216),(9,0.04844939,'2020-10-11 22:42:31','币币推广交易',0,'USDT',847216),(10,0.10604998,'2020-10-11 22:54:08','币币推广交易',0,'USDT',847216),(11,0.00002800,'2020-10-11 23:16:15','币币推广交易',0,'USDT',847216),(12,0.00277200,'2020-10-11 23:43:32','币币推广交易',0,'USDT',804668),(13,0.00391300,'2020-10-11 23:55:05','币币推广交易',0,'USDT',821381);
/*!40000 ALTER TABLE `reward_record` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sign`
--

DROP TABLE IF EXISTS `sign`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sign` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `amount` decimal(19,2) DEFAULT NULL,
  `creation_time` datetime DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `coin_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `FK58kn2gi7nvswa8hb76h87wtdl` (`coin_name`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sign`
--

LOCK TABLES `sign` WRITE;
/*!40000 ALTER TABLE `sign` DISABLE KEYS */;
/*!40000 ALTER TABLE `sign` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_advertise`
--

DROP TABLE IF EXISTS `sys_advertise`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_advertise` (
  `serial_number` varchar(255) NOT NULL,
  `author` varchar(255) DEFAULT NULL,
  `content` text,
  `create_time` datetime DEFAULT NULL,
  `end_time` varchar(255) NOT NULL,
  `link_url` varchar(255) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `sort` int(11) NOT NULL,
  `start_time` varchar(255) NOT NULL,
  `status` int(11) NOT NULL,
  `sys_advertise_location` int(11) NOT NULL,
  `url` varchar(255) DEFAULT NULL,
  `lang` varchar(255) NOT NULL,
  PRIMARY KEY (`serial_number`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_advertise`
--

LOCK TABLES `sys_advertise` WRITE;
/*!40000 ALTER TABLE `sys_advertise` DISABLE KEYS */;
INSERT INTO `sys_advertise` VALUES ('17226A7C634D420081FE40E38659A4F1',NULL,NULL,NULL,'2019-07-03 00:00:00','','做市商招募计划','',13,'2019-06-30 00:00:00',0,1,'https://bizzanex.oss-cn-hangzhou.aliyuncs.com/2020/12/14/165879c0-d00e-4420-ab68-4c6a250c6bce.jpg','CN'),('29F375FE060A4696B1E256685D638C6A',NULL,NULL,NULL,'2021-08-31 00:00:00','','轮播2','',2,'2019-08-01 00:00:00',0,1,'https://bizzanex.oss-cn-hangzhou.aliyuncs.com/2020/12/14/0b035424-145d-47fe-a874-180b5a7bd613.png','CN'),('2E501AE7414E486FA8994D085AF267CC',NULL,NULL,NULL,'2021-01-01 00:00:00','','APP5','',26,'2020-10-10 00:00:00',0,0,'https://bizzanex.oss-cn-hangzhou.aliyuncs.com/2020/12/14/4b53371a-65e4-46e8-90ed-54f2ebc991d5.png','CN'),('677D1E3227E74D61A860EF25C6667A8A',NULL,NULL,NULL,'2021-10-01 00:00:00','','APP轮播图','',6,'2020-10-10 00:00:00',0,0,'https://bizzanex.oss-cn-hangzhou.aliyuncs.com/2020/12/14/9e0c2bbb-0e04-449d-9477-489f751cb79b.png','CN'),('8B76E0D4CDDA4829B64CFF587EC70EDF',NULL,NULL,NULL,'2020-10-31 00:00:00','','为你严选','11',4,'2020-10-08 00:00:00',0,1,'https://bizzanex.oss-cn-hangzhou.aliyuncs.com/2020/12/14/45e24b5d-f3a8-4ba3-a5df-b6aac0349689.png','CN'),('B432AB3F4C0D4ED4BD58E68AFD08DE99',NULL,NULL,NULL,'2020-09-25 00:00:00','','轮播1','',1,'2019-08-01 00:00:00',0,1,'https://bizzanex.oss-cn-hangzhou.aliyuncs.com/2020/12/14/6cd111d0-d194-4bc3-aa69-07d4ff13b9cf.jpg','CN');
/*!40000 ALTER TABLE `sys_advertise` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_help`
--

DROP TABLE IF EXISTS `sys_help`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_help` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `author` varchar(255) DEFAULT NULL,
  `content` text,
  `create_time` datetime DEFAULT NULL,
  `img_url` varchar(255) DEFAULT NULL,
  `is_top` varchar(255) DEFAULT NULL,
  `sort` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `sys_help_classification` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `lang` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_help`
--

LOCK TABLES `sys_help` WRITE;
/*!40000 ALTER TABLE `sys_help` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_help` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tb_sms`
--

DROP TABLE IF EXISTS `tb_sms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tb_sms` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `key_id` varchar(255) DEFAULT NULL,
  `key_secret` varchar(255) DEFAULT NULL,
  `sign_id` varchar(255) DEFAULT NULL,
  `sms_name` varchar(255) DEFAULT NULL,
  `sms_status` varchar(255) DEFAULT NULL,
  `template_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tb_sms`
--

LOCK TABLES `tb_sms` WRITE;
/*!40000 ALTER TABLE `tb_sms` DISABLE KEYS */;
INSERT INTO `tb_sms` VALUES (1,'5f6ce0d8efb9a30ca4fb28dc','50155d47f0be444a9741e7cf7e9029dd','BIZZAN','saiyou','0','verifymessage');
/*!40000 ALTER TABLE `tb_sms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transfer_address`
--

DROP TABLE IF EXISTS `transfer_address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `transfer_address` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `address` varchar(255) DEFAULT NULL,
  `min_amount` decimal(18,2) DEFAULT NULL COMMENT '最低转账数目',
  `status` int(11) DEFAULT NULL,
  `transfer_fee` decimal(18,6) DEFAULT NULL COMMENT '转账手续费率',
  `coin_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `FK7iv0cmmj36ncaw1nx92x15vtu` (`coin_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transfer_address`
--

LOCK TABLES `transfer_address` WRITE;
/*!40000 ALTER TABLE `transfer_address` DISABLE KEYS */;
/*!40000 ALTER TABLE `transfer_address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transfer_record`
--

DROP TABLE IF EXISTS `transfer_record`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `transfer_record` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `address` varchar(255) DEFAULT NULL,
  `amount` decimal(19,2) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `fee` decimal(18,8) DEFAULT NULL COMMENT '手续费',
  `member_id` bigint(20) DEFAULT NULL,
  `order_sn` varchar(255) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `coin_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `FKkrlf3bglmf2c51sorq9fpue0g` (`coin_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transfer_record`
--

LOCK TABLES `transfer_record` WRITE;
/*!40000 ALTER TABLE `transfer_record` DISABLE KEYS */;
/*!40000 ALTER TABLE `transfer_record` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wallet_trans_record`
--

DROP TABLE IF EXISTS `wallet_trans_record`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wallet_trans_record` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `amount` decimal(26,16) DEFAULT NULL COMMENT '划转金额',
  `create_time` datetime DEFAULT NULL,
  `member_id` bigint(20) DEFAULT NULL,
  `source` int(11) DEFAULT '0' COMMENT '从哪里划转',
  `target` int(11) DEFAULT '0' COMMENT '划转到哪里去',
  `unit` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wallet_trans_record`
--

LOCK TABLES `wallet_trans_record` WRITE;
/*!40000 ALTER TABLE `wallet_trans_record` DISABLE KEYS */;
INSERT INTO `wallet_trans_record` VALUES (1,10000.0000000000000000,'2020-11-05 17:56:14',1,0,1,'USDT'),(2,10000000.0000000000000000,'2020-11-06 09:22:28',1,0,1,'USDT'),(3,100000.0000000000000000,'2020-11-09 04:28:13',600800,0,1,'USDT'),(4,1000000.0000000000000000,'2020-11-09 05:13:05',1,0,1,'USDT'),(5,10000.0000000000000000,'2020-11-09 05:13:28',1,0,1,'USDT'),(6,100000.0000000000000000,'2020-11-09 05:13:55',1,0,1,'USDT'),(7,10000.0000000000000000,'2020-11-10 14:26:02',600803,0,1,'USDT'),(8,100000.0000000000000000,'2020-11-19 01:51:41',600800,0,1,'USDT'),(9,100000.0000000000000000,'2020-11-19 01:51:45',600800,0,1,'USDT'),(10,100000.0000000000000000,'2020-11-19 01:51:48',600800,0,1,'USDT'),(11,100000.0000000000000000,'2020-11-19 01:53:05',1,0,1,'USDT'),(12,100000.0000000000000000,'2020-11-19 01:53:08',1,0,1,'USDT'),(13,100000.0000000000000000,'2020-11-19 01:53:11',1,0,1,'USDT'),(14,1000000.0000000000000000,'2020-11-30 10:03:44',1,0,1,'USDT');
/*!40000 ALTER TABLE `wallet_trans_record` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `website_information`
--

DROP TABLE IF EXISTS `website_information`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `website_information` (
  `id` bigint(20) NOT NULL,
  `address_icon` varchar(255) DEFAULT NULL,
  `contact` varchar(255) DEFAULT NULL,
  `copyright` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `keywords` varchar(255) DEFAULT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `other_information` text,
  `postcode` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `website_information`
--

LOCK TABLES `website_information` WRITE;
/*!40000 ALTER TABLE `website_information` DISABLE KEYS */;
/*!40000 ALTER TABLE `website_information` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `withdraw_code_record`
--

DROP TABLE IF EXISTS `withdraw_code_record`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `withdraw_code_record` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `create_time` datetime DEFAULT NULL,
  `deal_time` datetime DEFAULT NULL,
  `member_id` bigint(20) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `rmember_id` bigint(20) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `withdraw_amount` decimal(18,8) DEFAULT NULL COMMENT '申请总数量',
  `withdraw_code` varchar(255) DEFAULT NULL,
  `coin_id` varchar(255) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `FKa3kybqr5vhpnf5a57ridds671` (`coin_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `withdraw_code_record`
--

LOCK TABLES `withdraw_code_record` WRITE;
/*!40000 ALTER TABLE `withdraw_code_record` DISABLE KEYS */;
INSERT INTO `withdraw_code_record` VALUES (1,'2020-11-17 08:49:38',NULL,1,NULL,NULL,0,10.00000000,'37353BD8DF862FA1C82969497B611A2B','USDT');
/*!40000 ALTER TABLE `withdraw_code_record` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `withdraw_record`
--

DROP TABLE IF EXISTS `withdraw_record`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `withdraw_record` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `address` varchar(255) DEFAULT NULL,
  `arrived_amount` decimal(18,8) DEFAULT NULL COMMENT '预计到账数量',
  `can_auto_withdraw` int(11) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `deal_time` datetime DEFAULT NULL,
  `fee` decimal(18,8) DEFAULT NULL COMMENT '手续费',
  `is_auto` int(11) DEFAULT NULL,
  `member_id` bigint(20) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `total_amount` decimal(18,8) DEFAULT NULL COMMENT '申请总数量',
  `transaction_number` varchar(255) DEFAULT NULL,
  `admin_id` bigint(20) DEFAULT NULL,
  `coin_id` varchar(255) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `FK2lmq6bcbk4nl3hmqcxbnx2kuc` (`admin_id`) USING BTREE,
  KEY `FK6drad9oqabujy0jsre3minxi` (`coin_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `withdraw_record`
--

-- Dump completed on 2020-12-14  7:47:21
