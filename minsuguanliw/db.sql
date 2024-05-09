/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - minsuguanliw
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`minsuguanliw` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `minsuguanliw`;

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'轮播图1','http://localhost:8080/minsuguanliw/upload/config1.jpg'),(2,'轮播图2','http://localhost:8080/minsuguanliw/upload/config2.jpg'),(3,'轮播图3','http://localhost:8080/minsuguanliw/upload/config3.jpg');

/*Table structure for table `dictionary` */

DROP TABLE IF EXISTS `dictionary`;

CREATE TABLE `dictionary` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int(11) DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int(11) DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COMMENT='字典表';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`beizhu`,`create_time`) values (1,'fangjian_types','房间类型',1,'房间类型1',NULL,NULL,'2022-04-13 10:07:15'),(2,'fangjian_types','房间类型',2,'房间类型2',NULL,NULL,'2022-04-13 10:07:15'),(3,'fangjian_types','房间类型',3,'房间类型3',NULL,NULL,'2022-04-13 10:07:15'),(4,'fangjian_order_types','订单状态',1,'已支付',NULL,NULL,'2022-04-13 10:07:15'),(5,'fangjian_order_types','订单状态',2,'退款',NULL,NULL,'2022-04-13 10:07:15'),(6,'fangjian_order_types','订单状态',3,'已完成',NULL,NULL,'2022-04-13 10:07:15'),(7,'news_types','公告类型',1,'公告类型1',NULL,NULL,'2022-04-13 10:07:16'),(8,'news_types','公告类型',2,'公告类型2',NULL,NULL,'2022-04-13 10:07:16'),(9,'news_types','公告类型',3,'公告类型3',NULL,NULL,'2022-04-13 10:07:16'),(10,'sex_types','性别类型',1,'男',NULL,NULL,'2022-04-13 10:07:16'),(11,'sex_types','性别类型',2,'女',NULL,NULL,'2022-04-13 10:07:16'),(12,'forum_state_types','帖子状态',1,'发帖',NULL,NULL,'2022-04-13 10:07:16'),(13,'forum_state_types','帖子状态',2,'回帖',NULL,NULL,'2022-04-13 10:07:16');

/*Table structure for table `fangjian` */

DROP TABLE IF EXISTS `fangjian`;

CREATE TABLE `fangjian` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `fangjian_name` varchar(200) DEFAULT NULL COMMENT '房间名称 Search111',
  `fangjian_photo` varchar(200) DEFAULT NULL COMMENT '房间图片',
  `fangjian_tese` varchar(200) DEFAULT NULL COMMENT '房间特色',
  `fangjian_peizhi` varchar(200) DEFAULT NULL COMMENT '房间配置',
  `fangjian_shangpin` varchar(200) DEFAULT NULL COMMENT '提供的商品',
  `fangjian_fuwu` varchar(200) DEFAULT NULL COMMENT '提供的服务',
  `fangjian_money` decimal(10,2) DEFAULT NULL COMMENT '价格（天）',
  `fangjian_types` int(11) DEFAULT NULL COMMENT '房间类型  Search111',
  `fangjian_number` int(11) DEFAULT NULL COMMENT '房间剩余数量',
  `fangjian_clicknum` int(11) DEFAULT NULL COMMENT '点击次数',
  `fangjian_content` text COMMENT '房间详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='房间信息';

/*Data for the table `fangjian` */

insert  into `fangjian`(`id`,`fangjian_name`,`fangjian_photo`,`fangjian_tese`,`fangjian_peizhi`,`fangjian_shangpin`,`fangjian_fuwu`,`fangjian_money`,`fangjian_types`,`fangjian_number`,`fangjian_clicknum`,`fangjian_content`,`create_time`) values (1,'房间名称1','http://localhost:8080/minsuguanliw/upload/fangjian1.jpg','房间特色1','房间配置1','提供的商品1','提供的服务1','278.63',3,394,260,'房间详情1','2022-04-13 10:07:27'),(2,'房间名称2','http://localhost:8080/minsuguanliw/upload/fangjian2.jpg','房间特色2','房间配置2','提供的商品2','提供的服务2','333.20',1,428,484,'房间详情2','2022-04-13 10:07:27'),(3,'房间名称3','http://localhost:8080/minsuguanliw/upload/fangjian3.jpg','房间特色3','房间配置3','提供的商品3','提供的服务3','93.40',3,155,298,'房间详情3','2022-04-13 10:07:27'),(4,'房间名称4','http://localhost:8080/minsuguanliw/upload/fangjian4.jpg','房间特色4','房间配置4','提供的商品4','提供的服务4','141.54',3,48,368,'房间详情4','2022-04-13 10:07:27'),(5,'房间名称5','http://localhost:8080/minsuguanliw/upload/fangjian5.jpg','房间特色5','房间配置5','提供的商品5','提供的服务5','183.82',2,124,144,'房间详情5','2022-04-13 10:07:27');

/*Table structure for table `fangjian_liuyan` */

DROP TABLE IF EXISTS `fangjian_liuyan`;

CREATE TABLE `fangjian_liuyan` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `fangjian_id` int(11) DEFAULT NULL COMMENT '房间',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `fangjian_liuyan_text` text COMMENT '评论/投诉内容',
  `reply_text` text COMMENT '回复内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '评论/投诉时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='房间评论/投诉';

/*Data for the table `fangjian_liuyan` */

insert  into `fangjian_liuyan`(`id`,`fangjian_id`,`yonghu_id`,`fangjian_liuyan_text`,`reply_text`,`insert_time`,`update_time`,`create_time`) values (1,1,3,'评论/投诉内容1','回复信息1','2022-04-13 10:07:27','2022-04-13 10:07:27','2022-04-13 10:07:27'),(2,2,3,'评论/投诉内容2','回复信息2','2022-04-13 10:07:27','2022-04-13 10:07:27','2022-04-13 10:07:27'),(3,3,3,'评论/投诉内容3','回复信息3','2022-04-13 10:07:27','2022-04-13 10:07:27','2022-04-13 10:07:27'),(4,4,3,'评论/投诉内容4','回复信息4','2022-04-13 10:07:27','2022-04-13 10:07:27','2022-04-13 10:07:27'),(5,5,1,'评论/投诉内容5','回复信息5','2022-04-13 10:07:27','2022-04-13 10:07:27','2022-04-13 10:07:27'),(6,5,1,'留言投诉123','回复1132','2022-04-13 11:16:17','2022-04-13 11:17:00','2022-04-13 11:16:17');

/*Table structure for table `fangjian_order` */

DROP TABLE IF EXISTS `fangjian_order`;

CREATE TABLE `fangjian_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `fangjian_id` int(11) DEFAULT NULL COMMENT '房间',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `fangjian_order_time` date DEFAULT NULL COMMENT '预约日期',
  `fangjian_order_text` text COMMENT '预约备注',
  `fangjian_order_types` int(11) DEFAULT NULL COMMENT '订单状态',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COMMENT='房间预约';

/*Data for the table `fangjian_order` */

insert  into `fangjian_order`(`id`,`fangjian_id`,`yonghu_id`,`fangjian_order_time`,`fangjian_order_text`,`fangjian_order_types`,`create_time`) values (10,5,1,'2022-04-14','预约备注123',3,'2022-04-13 11:16:05');

/*Table structure for table `forum` */

DROP TABLE IF EXISTS `forum`;

CREATE TABLE `forum` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `forum_name` varchar(200) DEFAULT NULL COMMENT '帖子标题  Search111 ',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `users_id` int(11) DEFAULT NULL COMMENT '管理员',
  `forum_content` text COMMENT '发布内容',
  `super_ids` int(11) DEFAULT NULL COMMENT '父id',
  `forum_state_types` int(11) DEFAULT NULL COMMENT '帖子状态',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '发帖时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '修改时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show2',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='论坛';

/*Data for the table `forum` */

insert  into `forum`(`id`,`forum_name`,`yonghu_id`,`users_id`,`forum_content`,`super_ids`,`forum_state_types`,`insert_time`,`update_time`,`create_time`) values (1,'帖子标题1',1,NULL,'发布内容1',NULL,1,'2022-04-13 10:07:27','2022-04-13 10:07:27','2022-04-13 10:07:27'),(2,'帖子标题2',2,NULL,'发布内容2',NULL,1,'2022-04-13 10:07:27','2022-04-13 10:07:27','2022-04-13 10:07:27'),(3,'帖子标题3',2,NULL,'发布内容3',NULL,1,'2022-04-13 10:07:27','2022-04-13 10:07:27','2022-04-13 10:07:27'),(4,'帖子标题4',1,NULL,'发布内容4',NULL,1,'2022-04-13 10:07:27','2022-04-13 10:07:27','2022-04-13 10:07:27'),(5,'帖子标题5',2,NULL,'发布内容5',NULL,1,'2022-04-13 10:07:27','2022-04-13 10:07:27','2022-04-13 10:07:27'),(6,NULL,1,NULL,'评论11123',5,2,'2022-04-13 11:16:34',NULL,'2022-04-13 11:16:34'),(7,NULL,NULL,1,'管理评论12312',5,2,'2022-04-13 11:17:17',NULL,'2022-04-13 11:17:17');

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `news_name` varchar(200) DEFAULT NULL COMMENT '公告标题  Search111 ',
  `news_types` int(11) DEFAULT NULL COMMENT '公告类型  Search111 ',
  `news_photo` varchar(200) DEFAULT NULL COMMENT '公告图片',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `news_content` text COMMENT '公告详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='公告信息';

/*Data for the table `news` */

insert  into `news`(`id`,`news_name`,`news_types`,`news_photo`,`insert_time`,`news_content`,`create_time`) values (1,'公告标题1',1,'http://localhost:8080/minsuguanliw/upload/news1.jpg','2022-04-13 10:07:27','公告详情1','2022-04-13 10:07:27'),(2,'公告标题2',1,'http://localhost:8080/minsuguanliw/upload/news2.jpg','2022-04-13 10:07:27','公告详情2','2022-04-13 10:07:27'),(3,'公告标题3',2,'http://localhost:8080/minsuguanliw/upload/news3.jpg','2022-04-13 10:07:27','公告详情3','2022-04-13 10:07:27'),(4,'公告标题4',1,'http://localhost:8080/minsuguanliw/upload/news4.jpg','2022-04-13 10:07:27','公告详情4','2022-04-13 10:07:27'),(5,'公告标题5',1,'http://localhost:8080/minsuguanliw/upload/news5.jpg','2022-04-13 10:07:27','公告详情5','2022-04-13 10:07:27');

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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'admin','users','管理员','eujhisuzw4wbe4v31vxpnknzf6n1gi81','2022-04-13 11:12:35','2022-04-13 12:21:31'),(2,1,'a1','yonghu','用户','1t7hsw4ap15wq61c3zxp8c33e15qyq2f','2022-04-13 11:13:53','2022-04-13 12:17:29');

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

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'admin','admin','管理员','2022-05-01 00:00:00');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '用户姓名 Search111 ',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '头像',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '手机号',
  `yonghu_email` varchar(200) DEFAULT NULL COMMENT '电子邮箱',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别 Search111 ',
  `new_money` decimal(10,2) DEFAULT NULL COMMENT '余额 ',
  `yonghu_delete` int(11) DEFAULT '1' COMMENT '假删',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`username`,`password`,`yonghu_name`,`yonghu_photo`,`yonghu_phone`,`yonghu_email`,`sex_types`,`new_money`,`yonghu_delete`,`create_time`) values (1,'a1','123456','用户姓名1','http://localhost:8080/minsuguanliw/upload/yonghu1.jpg','17703786901','1@qq.com',1,'693.68',1,'2022-04-13 10:07:27'),(2,'a2','123456','用户姓名2','http://localhost:8080/minsuguanliw/upload/yonghu2.jpg','17703786902','2@qq.com',2,'54.40',1,'2022-04-13 10:07:27'),(3,'a3','123456','用户姓名3','http://localhost:8080/minsuguanliw/upload/yonghu3.jpg','17703786903','3@qq.com',1,'305.78',1,'2022-04-13 10:07:27');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
