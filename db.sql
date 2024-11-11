/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - wangluodaihuowangzhan
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`wangluodaihuowangzhan` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `wangluodaihuowangzhan`;

/*Table structure for table `address` */

DROP TABLE IF EXISTS `address`;

CREATE TABLE `address` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `address` varchar(200) NOT NULL COMMENT '地址',
  `name` varchar(200) NOT NULL COMMENT '收货人',
  `phone` varchar(200) NOT NULL COMMENT '电话',
  `isdefault` varchar(200) NOT NULL COMMENT '是否默认地址[是/否]',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1620125311486 DEFAULT CHARSET=utf8 COMMENT='地址';

/*Data for the table `address` */

insert  into `address`(`id`,`addtime`,`userid`,`address`,`name`,`phone`,`isdefault`) values (1620121745602,'2021-05-04 17:49:05',1614430386281,'河南省郑州市金水区杜岭街道广州大酒店华联广州大酒店(旗舰店)','张1','17703786911','是'),(1620125311485,'2021-05-04 18:48:31',1615339905628,'河南省郑州市金水区杜岭街道西里路64号郑州师院附属小学','张三','17703786933','是');

/*Table structure for table `cart` */

DROP TABLE IF EXISTS `cart`;

CREATE TABLE `cart` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `tablename` varchar(200) DEFAULT 'shangpinxinxi' COMMENT '商品表名',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `goodid` bigint(20) NOT NULL COMMENT '商品id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `picture` varchar(200) DEFAULT NULL COMMENT '图片',
  `buynumber` int(11) NOT NULL COMMENT '购买数量',
  `price` float DEFAULT NULL COMMENT '单价',
  `discountprice` float DEFAULT NULL COMMENT '会员价',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1620125415662 DEFAULT CHARSET=utf8 COMMENT='购物车表';

/*Data for the table `cart` */

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (19,'picture2','http://localhost:8080/wangluodaihuowangzhan/upload/1615604883959.jpg'),(22,'picture2','http://localhost:8080/wangluodaihuowangzhan/upload/1620121642526.jpg'),(23,'picture2','http://localhost:8080/wangluodaihuowangzhan/upload/1620125144490.jpg');

/*Table structure for table `discussshangpinxinxi` */

DROP TABLE IF EXISTS `discussshangpinxinxi`;

CREATE TABLE `discussshangpinxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1620125074174 DEFAULT CHARSET=utf8 COMMENT='商品评论表';

/*Data for the table `discussshangpinxinxi` */

insert  into `discussshangpinxinxi`(`id`,`addtime`,`refid`,`userid`,`content`,`reply`) values (1620125074173,'2021-05-04 18:44:34',1620110547141,1614430386281,'好么','好的很');

/*Table structure for table `jifenjilu` */

DROP TABLE IF EXISTS `jifenjilu`;

CREATE TABLE `jifenjilu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` bigint(20) NOT NULL COMMENT '用户id',
  `shangpinxinxi_id` bigint(20) NOT NULL COMMENT '商品id',
  `jifenjilu_types` varchar(200) DEFAULT NULL COMMENT '积分类型',
  `buynumber` int(11) NOT NULL COMMENT '积分数量',
  `insert_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '记录时间',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8 COMMENT='积分';

/*Data for the table `jifenjilu` */

insert  into `jifenjilu`(`id`,`yonghu_id`,`shangpinxinxi_id`,`jifenjilu_types`,`buynumber`,`insert_time`,`create_time`) values (47,1614430386281,1620110547141,'添加',8,'2021-05-04 17:49:17','2021-05-04 17:49:17'),(48,1614430386281,1620110547141,'使用',112,'2021-05-04 17:49:17','2021-05-04 17:49:17'),(49,1614430386281,1620113682534,'添加',6,'2021-05-04 17:49:29','2021-05-04 17:49:29'),(50,1614430386281,1620113682534,'使用',14,'2021-05-04 17:49:42','2021-05-04 17:49:42'),(51,1614430386281,1620113682534,'添加',6,'2021-05-04 17:49:42','2021-05-04 17:49:42'),(52,1614430386281,1620113682534,'添加',3,'2021-05-04 17:49:55','2021-05-04 17:49:55'),(53,1614430386281,1620121697836,'添加',4,'2021-05-04 17:50:25','2021-05-04 17:50:25'),(54,1615339905628,1620110547141,'添加',4,'2021-05-04 18:48:41','2021-05-04 18:48:41'),(55,1615339905628,1620125026169,'添加',2,'2021-05-04 18:50:33','2021-05-04 18:50:33'),(56,1615339905628,1620125026169,'使用',7,'2021-05-04 18:50:33','2021-05-04 18:50:34'),(57,1615339905628,1620113682534,'使用',7,'2021-05-04 18:50:33','2021-05-04 18:50:34'),(58,1615339905628,1620113682534,'添加',9,'2021-05-04 18:50:33','2021-05-04 18:50:34');

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `picture` varchar(200) NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8 COMMENT='新闻资讯';

/*Data for the table `news` */

insert  into `news`(`id`,`addtime`,`title`,`picture`,`content`) values (81,'2021-03-09 22:39:58','新闻标题1','http://localhost:8080/wangluodaihuowangzhan/upload/news_picture1.jpg','内容1'),(82,'2021-03-09 22:39:58','新闻标题2','http://localhost:8080/wangluodaihuowangzhan/upload/news_picture2.jpg','内容2'),(83,'2021-03-09 22:39:58','新闻标题3','http://localhost:8080/wangluodaihuowangzhan/upload/news_picture3.jpg','内容3'),(84,'2021-03-09 22:39:58','新闻标题4','http://localhost:8080/wangluodaihuowangzhan/upload/news_picture4.jpg','内容4'),(85,'2021-03-09 22:39:58','新闻标题5','http://localhost:8080/wangluodaihuowangzhan/upload/news_picture5.jpg','内容5');

/*Table structure for table `orders` */

DROP TABLE IF EXISTS `orders`;

CREATE TABLE `orders` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `orderid` varchar(200) NOT NULL COMMENT '订单编号',
  `tablename` varchar(200) DEFAULT 'shangpinxinxi' COMMENT '商品表名',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `goodid` bigint(20) NOT NULL COMMENT '商品id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `picture` varchar(200) DEFAULT NULL COMMENT '商品图片',
  `buynumber` int(11) NOT NULL COMMENT '购买数量',
  `price` float NOT NULL DEFAULT '0' COMMENT '价格/积分',
  `discountprice` float DEFAULT '0' COMMENT '折扣价格',
  `total` float NOT NULL DEFAULT '0' COMMENT '总价格/总积分',
  `discounttotal` float DEFAULT '0' COMMENT '折扣总价格',
  `type` int(11) DEFAULT '1' COMMENT '支付类型',
  `status` varchar(200) DEFAULT NULL COMMENT '状态',
  `address` varchar(200) DEFAULT NULL COMMENT '地址',
  PRIMARY KEY (`id`),
  UNIQUE KEY `orderid` (`orderid`)
) ENGINE=InnoDB AUTO_INCREMENT=1620125434330 DEFAULT CHARSET=utf8 COMMENT='订单';

/*Data for the table `orders` */

insert  into `orders`(`id`,`addtime`,`orderid`,`tablename`,`userid`,`goodid`,`goodname`,`picture`,`buynumber`,`price`,`discountprice`,`total`,`discounttotal`,`type`,`status`,`address`) values (1620121758120,'2021-05-04 17:49:17','20215417491766705675','shangpinxinxi',1614430386281,1620110547141,'T恤','http://localhost:8080/wangluodaihuowangzhan/upload/1620110503870.webp',4,100,66,400,264,1,'已完成','河南省郑州市金水区杜岭街道广州大酒店华联广州大酒店(旗舰店)'),(1620121769550,'2021-05-04 17:49:29','20215417492890622488','shangpinxinxi',1614430386281,1620113682534,'笔记本散热器','http://localhost:8080/wangluodaihuowangzhan/upload/1620113648220.webp',2,100,80,200,160,1,'已完成','河南省郑州市金水区杜岭街道广州大酒店华联广州大酒店(旗舰店)'),(1620121782303,'2021-05-04 17:49:42','20215417494214314676','shangpinxinxi',1614430386281,1620113682534,'笔记本散热器','http://localhost:8080/wangluodaihuowangzhan/upload/1620113648220.webp',2,100,80,200,160,1,'已发货','河南省郑州市金水区杜岭街道广州大酒店华联广州大酒店(旗舰店)'),(1620121796067,'2021-05-04 17:49:55','20215417495575435485','shangpinxinxi',1614430386281,1620113682534,'笔记本散热器','http://localhost:8080/wangluodaihuowangzhan/upload/1620113648220.webp',1,100,80,100,80,1,'已退款','河南省郑州市金水区杜岭街道广州大酒店华联广州大酒店(旗舰店)'),(1620121825605,'2021-05-04 17:50:25','20215417502534513542','shangpinxinxi',1614430386281,1620121697836,'电脑主机','http://localhost:8080/wangluodaihuowangzhan/upload/1620121662400.webp',4,100,88,400,352,1,'已支付','河南省郑州市金水区杜岭街道广州大酒店华联广州大酒店(旗舰店)'),(1620125321746,'2021-05-04 18:48:41','20215418484135902719','shangpinxinxi',1615339905628,1620110547141,'T恤','http://localhost:8080/wangluodaihuowangzhan/upload/1620110503870.webp',2,100,66,200,132,1,'已完成','河南省郑州市金水区杜岭街道西里路64号郑州师院附属小学'),(1620125434282,'2021-05-04 18:50:33','20215418503344398071','shangpinxinxi',1615339905628,1620125026169,'茉莉花茶','http://localhost:8080/wangluodaihuowangzhan/upload/1620124983333.webp',2,30,26,60,52,1,'已退款','河南省郑州市金水区杜岭街道西里路64号郑州师院附属小学'),(1620125434329,'2021-05-04 18:50:33','20215418503341528566','shangpinxinxi',1615339905628,1620113682534,'笔记本散热器','http://localhost:8080/wangluodaihuowangzhan/upload/1620113648220.webp',3,100,80,300,240,1,'已支付','河南省郑州市金水区杜岭街道西里路64号郑州师院附属小学');

/*Table structure for table `shangpinfenlei` */

DROP TABLE IF EXISTS `shangpinfenlei`;

CREATE TABLE `shangpinfenlei` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shangpinfenlei` varchar(200) DEFAULT NULL COMMENT '商品分类',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615612268523 DEFAULT CHARSET=utf8 COMMENT='商品分类';

/*Data for the table `shangpinfenlei` */

insert  into `shangpinfenlei`(`id`,`addtime`,`shangpinfenlei`) values (21,'2021-03-09 22:39:58','商品分类1'),(22,'2021-03-09 22:39:58','商品分类2'),(23,'2021-03-09 22:39:58','商品分类3'),(24,'2021-03-09 22:39:58','商品分类4'),(25,'2021-03-09 22:39:58','商品分类5'),(26,'2021-03-09 22:39:58','商品分类6');

/*Table structure for table `shangpinxinxi` */

DROP TABLE IF EXISTS `shangpinxinxi`;

CREATE TABLE `shangpinxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shangpinbianhao` varchar(200) DEFAULT NULL COMMENT '商品编号',
  `shangpinmingcheng` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `shangpinfenlei` varchar(200) DEFAULT NULL COMMENT '商品分类',
  `shuliang` varchar(200) DEFAULT NULL COMMENT '数量',
  `pinpai` varchar(200) DEFAULT NULL COMMENT '品牌',
  `guige` varchar(200) DEFAULT NULL COMMENT '规格',
  `xiangqing` longtext COMMENT '详情',
  `fengmian` varchar(200) DEFAULT NULL COMMENT '封面',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  `price` float NOT NULL COMMENT '原价',
  `discountprice` float DEFAULT NULL COMMENT '折扣价',
  `jifen` float DEFAULT NULL,
  `flag` int(11) DEFAULT NULL COMMENT '是否上架(1:上架,2:下架)',
  PRIMARY KEY (`id`),
  UNIQUE KEY `shangpinbianhao` (`shangpinbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1620125026170 DEFAULT CHARSET=utf8 COMMENT='商品信息';

/*Data for the table `shangpinxinxi` */

insert  into `shangpinxinxi`(`id`,`addtime`,`shangpinbianhao`,`shangpinmingcheng`,`shangpinfenlei`,`shuliang`,`pinpai`,`guige`,`xiangqing`,`fengmian`,`clicktime`,`clicknum`,`price`,`discountprice`,`jifen`,`flag`) values (1620110547141,'2021-05-04 14:42:26','1620110498','T恤','商品分类1','94','艾迪耐斯','大','T恤详情\r\n','http://localhost:8080/wangluodaihuowangzhan/upload/1620110503870.webp','2021-05-04 18:48:41',9,100,66,2,1),(1620113682534,'2021-05-04 15:34:42','1620113644','笔记本散热器','商品分类5','92','戴尔','大','笔记本散热器的事情\r\n','http://localhost:8080/wangluodaihuowangzhan/upload/1620113648220.webp','2021-05-04 18:51:11',14,100,80,3,1),(1620121697836,'2021-05-04 17:48:17','1620121656','电脑主机','商品分类1','96','戴尔','大','电脑主机的详情\r\n','http://localhost:8080/wangluodaihuowangzhan/upload/1620121662400.webp','2021-05-04 18:50:51',3,100,88,1,1),(1620125026169,'2021-05-04 18:43:45','1620124978','茉莉花茶','商品分类2','106','老君山','大','茉莉花茶的详情\r\n','http://localhost:8080/wangluodaihuowangzhan/upload/1620124983333.webp','2021-05-04 18:50:39',6,30,26,1,1);

/*Table structure for table `shouhou` */

DROP TABLE IF EXISTS `shouhou`;

CREATE TABLE `shouhou` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `orderid` varchar(200) NOT NULL COMMENT '订单id',
  `suqiu` varchar(200) NOT NULL COMMENT '诉求内容',
  `suqiutime` timestamp NULL DEFAULT NULL COMMENT '诉求时间',
  `shouhoutype` int(11) NOT NULL COMMENT '售后类型 1:已处理  2 未处理',
  `chulitype` int(11) DEFAULT NULL COMMENT '处理结果  1:已解决  2:未解决',
  `chulicontent` varchar(200) DEFAULT NULL,
  `chulitime` timestamp NULL DEFAULT NULL COMMENT '处理时间',
  `addtime` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1389532572834103298 DEFAULT CHARSET=utf8 COMMENT='售后表';

/*Data for the table `shouhou` */

insert  into `shouhou`(`id`,`orderid`,`suqiu`,`suqiutime`,`shouhoutype`,`chulitype`,`chulicontent`,`chulitime`,`addtime`) values (1389517932687294466,'20215417492890622488','质量不好','2021-05-04 17:51:05',2,NULL,NULL,NULL,'2021-05-04 17:51:05'),(1389532572834103297,'20215418484135902719','质量不够好','2021-05-04 18:49:16',1,1,'退款20元','2021-05-04 18:49:37','2021-05-04 18:49:16');

/*Table structure for table `storeup` */

DROP TABLE IF EXISTS `storeup`;

CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1620125455413 DEFAULT CHARSET=utf8 COMMENT='收藏表';

/*Data for the table `storeup` */

insert  into `storeup`(`id`,`addtime`,`userid`,`refid`,`tablename`,`name`,`picture`) values (1620121721858,'2021-05-04 17:48:41',1614430386281,1620110547141,'shangpinxinxi','T恤','http://localhost:8080/wangluodaihuowangzhan/upload/1620110503870.webp'),(1620125451714,'2021-05-04 18:50:51',1615339905628,1620121697836,'shangpinxinxi','电脑主机','http://localhost:8080/wangluodaihuowangzhan/upload/1620121662400.webp'),(1620125455412,'2021-05-04 18:50:54',1615339905628,1620113682534,'shangpinxinxi','笔记本散热器','http://localhost:8080/wangluodaihuowangzhan/upload/1620113648220.webp');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (15,1,'admin','users','管理员','8zur1bntjrk3o53aflhmcivn1vdl43ur','2021-05-04 14:11:06','2021-05-04 19:42:14'),(16,1614430386281,'a2','yonghu','用户','oqwi9a82yuqrqkzlv0w3iti6awpxr71h','2021-05-04 17:48:38','2021-05-04 19:51:20'),(17,1615339905628,'a3','yonghu','用户','eup4m0nh6dm3a8ytjylzalipvpa55yhl','2021-05-04 18:47:50','2021-05-04 19:47:51');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'admin','123456','管理员','2021-03-09 22:39:58');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuzhanghao` varchar(200) NOT NULL COMMENT '用户账号',
  `yonghuxingming` varchar(200) NOT NULL COMMENT '用户姓名',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `dianziyouxiang` varchar(200) DEFAULT NULL COMMENT '电子邮箱',
  `money` float DEFAULT '0' COMMENT '余额',
  `jifen` float DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `yonghuzhanghao` (`yonghuzhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1620124970875 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`addtime`,`yonghuzhanghao`,`yonghuxingming`,`mima`,`xingbie`,`lianxidianhua`,`dianziyouxiang`,`money`,`jifen`) values (1614430386281,'2021-02-27 20:53:06','a2','a2','123456','男','13823888883','229992@qq.ccom',396,13),(1614431342348,'2021-02-27 21:09:02','a4','a4','123456','男','a41','22850@qq.com',98,52),(1615339905628,'2021-03-10 09:31:45','a3','a3','123456','男','13823888883','77389000222@qq.com',11229,4),(1620124970874,'2021-05-04 18:42:50','q5','张5','123456','男','17703786955','55@qq.com',0,0);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
