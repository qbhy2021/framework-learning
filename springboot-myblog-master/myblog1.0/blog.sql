﻿# Host: 127.0.0.1  (Version: 5.5.15)
# Date: 2021-11-28 17:02:39
# Generator: MySQL-Front 5.3  (Build 4.269)

/*!40101 SET NAMES utf8 */;

#
# Structure for table "t_blog"
#

DROP TABLE IF EXISTS `t_blog`;
CREATE TABLE `t_blog` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `content` longtext,
  `first_picture` varchar(255) DEFAULT NULL,
  `flag` varchar(255) DEFAULT NULL,
  `views` int(11) DEFAULT NULL,
  `appreciation` bit(1) NOT NULL,
  `share_statement` bit(1) NOT NULL,
  `commentabled` bit(1) NOT NULL,
  `published` bit(1) NOT NULL,
  `recommend` bit(1) NOT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `type_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `comment_count` int(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

#
# Data for table "t_blog"
#

INSERT INTO `t_blog` VALUES (1,'this is a test','> grfgrgregrvdsvs\r\n------------\r\n\r\n`vbfdvd`\r\n![he](https://note.youdao.com/yws/api/personal/file/C380C6520CD340F9A758E054316EF250?method=download&shareKey=670909c933f17adc2715b7851d2f8fe1)','https://images.newstar.net.cn/img/blog63.jpg','',22,b'0',b'0',b'0',b'1',b'0','2021-11-23 12:26:50','2021-11-26 08:01:26','test...........................',10,1,0),(2,'test2','`blog...`\r\n# test\r\n1. 1. cdcdcdac\r\n2. 2. czcvdv\r\n3. vdsdsav\r\n4. vdsvd\r\n\r\n![](https://images.newstar.net.cn/img/blog57.jpg)','https://images.newstar.net.cn/img/blog63.jpg','',14,b'0',b'0',b'0',b'0',b'0','2021-11-26 08:05:17','2021-11-26 08:11:36','ggggggggggggg',10,1,0);

#
# Structure for table "t_comment"
#

DROP TABLE IF EXISTS `t_comment`;
CREATE TABLE `t_comment` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `nickname` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `blog_id` bigint(20) DEFAULT NULL,
  `parent_comment_id` bigint(20) DEFAULT NULL,
  `admin_comment` bit(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Data for table "t_comment"
#


#
# Structure for table "t_friend"
#

DROP TABLE IF EXISTS `t_friend`;
CREATE TABLE `t_friend` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `blogaddress` varchar(255) DEFAULT NULL,
  `blogname` varchar(255) DEFAULT NULL,
  `create_time` datetime NOT NULL,
  `pictureaddress` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Data for table "t_friend"
#


#
# Structure for table "t_message"
#

DROP TABLE IF EXISTS `t_message`;
CREATE TABLE `t_message` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `nickname` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `parent_message_id` bigint(20) DEFAULT NULL,
  `admin_message` bit(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

#
# Data for table "t_message"
#

INSERT INTO `t_message` VALUES (1,'fdsfd','ybfy@qq.com','ffs','/images/avatar.png','2021-11-23 11:14:28',-1,b'0');

#
# Structure for table "t_picture"
#

DROP TABLE IF EXISTS `t_picture`;
CREATE TABLE `t_picture` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `pictureaddress` varchar(255) DEFAULT NULL,
  `picturedescription` varchar(255) DEFAULT NULL,
  `picturename` varchar(255) DEFAULT NULL,
  `picturetime` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Data for table "t_picture"
#


#
# Structure for table "t_tag"
#

DROP TABLE IF EXISTS `t_tag`;
CREATE TABLE `t_tag` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

#
# Data for table "t_tag"
#

INSERT INTO `t_tag` VALUES (1,'人生风格'),(2,'SpringBoot'),(3,'分布式技术'),(4,'Spring'),(5,'MySQL'),(6,'rabbitMQ'),(7,'人生感悟'),(8,'SSM框架'),(12,'hello'),(13,'JavaSecuriety');

#
# Structure for table "t_type"
#

DROP TABLE IF EXISTS `t_type`;
CREATE TABLE `t_type` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

#
# Data for table "t_type"
#

INSERT INTO `t_type` VALUES (1,'Linux'),(2,'Spring'),(3,'SpringBoot'),(4,'MySQL'),(6,'分布式技术'),(7,'消息中间件'),(8,'学习笔记'),(9,'SSM框架'),(10,'test');

#
# Structure for table "t_user"
#

DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `nickname` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `description` varchar(500) NOT NULL,
  `type` int(11) DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

#
# Data for table "t_user"
#

INSERT INTO `t_user` VALUES (1,'yb','yb','990212','3100954150@qq.com','I\'m yb.',1,'2020-09-17 14:08:51','2020-09-16 14:09:05');
