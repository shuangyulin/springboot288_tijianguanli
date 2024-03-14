/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - laonianrentijian
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`laonianrentijian` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `laonianrentijian`;

/*Table structure for table `chat` */

DROP TABLE IF EXISTS `chat`;

CREATE TABLE `chat` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '提问用户',
  `chat_issue` varchar(200) DEFAULT NULL COMMENT '问题',
  `issue_time` timestamp NULL DEFAULT NULL COMMENT '问题时间 Search111',
  `chat_reply` varchar(200) DEFAULT NULL COMMENT '回复',
  `reply_time` timestamp NULL DEFAULT NULL COMMENT '回复时间 Search111',
  `zhuangtai_types` int(255) DEFAULT NULL COMMENT '状态',
  `chat_types` int(11) DEFAULT NULL COMMENT '数据类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='在线咨询';

/*Data for the table `chat` */

insert  into `chat`(`id`,`yonghu_id`,`chat_issue`,`issue_time`,`chat_reply`,`reply_time`,`zhuangtai_types`,`chat_types`,`insert_time`) values (1,1,'用户的咨询信息1111','2022-03-14 00:00:00',NULL,NULL,2,1,'2022-03-14 16:33:39'),(2,1,NULL,NULL,'管理回复','2022-03-14 00:00:00',NULL,2,'2022-03-14 16:37:20');

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'轮播图1','http://localhost:8080/laonianrentijian/upload/config1.jpg'),(2,'轮播图2','http://localhost:8080/laonianrentijian/upload/config2.jpg'),(3,'轮播图3','http://localhost:8080/laonianrentijian/upload/config3.jpg');

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
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8 COMMENT='字典表';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`beizhu`,`create_time`) values (1,'single_seach_types','单页数据类型',1,'网站介绍',NULL,NULL,'2022-03-14 14:39:16'),(2,'tijianxiangmu_types','体检项目类型',1,'体检项目类型1',NULL,NULL,'2022-03-14 14:39:16'),(3,'tijianxiangmu_types','体检项目类型',2,'体检项目类型2',NULL,NULL,'2022-03-14 14:39:16'),(4,'tijianxiangmu_types','体检项目类型',3,'体检项目类型3',NULL,NULL,'2022-03-14 14:39:16'),(5,'tijianxiangmuyuyye_yesno_types','审核状态',1,'处理中',NULL,NULL,'2022-03-14 14:39:16'),(6,'tijianxiangmuyuyye_yesno_types','审核状态',2,'受理',NULL,NULL,'2022-03-14 14:39:16'),(7,'tijianxiangmuyuyye_yesno_types','审核状态',3,'拒绝',NULL,NULL,'2022-03-14 14:39:16'),(8,'tijiantixing_types','体检状态',1,'未体检',NULL,NULL,'2022-03-14 14:39:16'),(9,'tijiantixing_types','体检状态',2,'已体检',NULL,NULL,'2022-03-14 14:39:16'),(10,'tijiantixing_types','体检状态',3,'已上传体检报告',NULL,NULL,'2022-03-14 14:39:17'),(11,'sex_types','性别',1,'男',NULL,NULL,'2022-03-14 14:39:17'),(12,'sex_types','性别',2,'女',NULL,NULL,'2022-03-14 14:39:17'),(13,'chat_types','数据类型',1,'问题',NULL,NULL,'2022-03-14 14:39:17'),(14,'chat_types','数据类型',2,'回复',NULL,NULL,'2022-03-14 14:39:17'),(15,'zhuangtai_types','状态',1,'未回复',NULL,NULL,'2022-03-14 14:39:17'),(16,'zhuangtai_types','状态',2,'已回复',NULL,NULL,'2022-03-14 14:39:17'),(17,'jiangkangchangshi_types','健康常识类型',1,'健康常识类型1',NULL,NULL,'2022-03-14 14:39:17'),(18,'jiangkangchangshi_types','健康常识类型',2,'健康常识类型2',NULL,NULL,'2022-03-14 14:39:17'),(19,'jiangkangchangshi_types','健康常识类型',3,'健康常识类型3',NULL,NULL,'2022-03-14 14:39:17'),(20,'jibingyufang_types','科普类型',1,'科普类型1',NULL,NULL,'2022-03-14 14:39:17'),(21,'jibingyufang_types','科普类型',2,'科普类型2',NULL,NULL,'2022-03-14 14:39:17'),(22,'jibingyufang_types','科普类型',3,'科普类型3',NULL,NULL,'2022-03-14 14:39:17'),(23,'forum_state_types','帖子状态',1,'发帖',NULL,NULL,'2022-03-14 14:39:17'),(24,'forum_state_types','帖子状态',2,'回帖',NULL,NULL,'2022-03-14 14:39:17'),(25,'tijianxiangmuyuyye_yesno_types','审核状态',4,'已添加提醒',NULL,NULL,NULL);

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

insert  into `forum`(`id`,`forum_name`,`yonghu_id`,`users_id`,`forum_content`,`super_ids`,`forum_state_types`,`insert_time`,`update_time`,`create_time`) values (1,'帖子标题1',2,NULL,'发布内容1',NULL,1,'2022-03-14 14:39:26','2022-03-14 14:39:26','2022-03-14 14:39:26'),(2,'帖子标题2',2,NULL,'发布内容2',NULL,1,'2022-03-14 14:39:26','2022-03-14 14:39:26','2022-03-14 14:39:26'),(3,'帖子标题3',2,NULL,'发布内容3',NULL,1,'2022-03-14 14:39:26','2022-03-14 14:39:26','2022-03-14 14:39:26'),(4,'帖子标题4',1,NULL,'发布内容4',NULL,1,'2022-03-14 14:39:26','2022-03-14 14:39:26','2022-03-14 14:39:26'),(5,'帖子标题5',1,NULL,'发布内容5',NULL,1,'2022-03-14 14:39:26','2022-03-14 14:39:26','2022-03-14 14:39:26'),(6,NULL,1,NULL,'用户回帖',5,2,'2022-03-14 16:33:05',NULL,'2022-03-14 16:33:05'),(7,NULL,NULL,1,'管理回复',5,2,'2022-03-14 16:37:45',NULL,'2022-03-14 16:37:45');

/*Table structure for table `jiangkangchangshi` */

DROP TABLE IF EXISTS `jiangkangchangshi`;

CREATE TABLE `jiangkangchangshi` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `jiangkangchangshi_name` varchar(200) DEFAULT NULL COMMENT '健康常识标题  Search111 ',
  `jiangkangchangshi_types` int(11) DEFAULT NULL COMMENT '健康常识类型  Search111 ',
  `jiangkangchangshi_photo` varchar(200) DEFAULT NULL COMMENT '健康常识图片',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `jiangkangchangshi_content` text COMMENT '健康常识详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='健康常识';

/*Data for the table `jiangkangchangshi` */

insert  into `jiangkangchangshi`(`id`,`jiangkangchangshi_name`,`jiangkangchangshi_types`,`jiangkangchangshi_photo`,`insert_time`,`jiangkangchangshi_content`,`create_time`) values (1,'健康常识标题1',1,'http://localhost:8080/laonianrentijian/upload/1647240463985.jpeg','2022-03-14 14:39:26','<p>健康常识详情1</p>','2022-03-14 14:39:26'),(2,'健康常识标题2',1,'http://localhost:8080/laonianrentijian/upload/1647240455949.jpeg','2022-03-14 14:39:26','<p>健康常识详情2</p>','2022-03-14 14:39:26'),(3,'健康常识标题3',1,'http://localhost:8080/laonianrentijian/upload/1647240446765.jpeg','2022-03-14 14:39:26','<p>健康常识详情3</p>','2022-03-14 14:39:26'),(4,'健康常识标题4',1,'http://localhost:8080/laonianrentijian/upload/1647240437560.jpeg','2022-03-14 14:39:26','<p>健康常识详情4</p>','2022-03-14 14:39:26'),(5,'健康常识标题5',1,'http://localhost:8080/laonianrentijian/upload/1647240428758.jpeg','2022-03-14 14:39:26','<p>健康常识详情5</p>','2022-03-14 14:39:26');

/*Table structure for table `jibingyufang` */

DROP TABLE IF EXISTS `jibingyufang`;

CREATE TABLE `jibingyufang` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `jibingyufang_name` varchar(200) DEFAULT NULL COMMENT '疾病预防疾病预防标题  Search111 ',
  `jibingyufang_types` int(11) DEFAULT NULL COMMENT '科普类型  Search111 ',
  `jibingyufang_photo` varchar(200) DEFAULT NULL COMMENT '疾病预防图片',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `jibingyufang_content` text COMMENT '疾病预防详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='疾病预防';

/*Data for the table `jibingyufang` */

insert  into `jibingyufang`(`id`,`jibingyufang_name`,`jibingyufang_types`,`jibingyufang_photo`,`insert_time`,`jibingyufang_content`,`create_time`) values (1,'疾病预防疾病预防标题1',3,'http://localhost:8080/laonianrentijian/upload/1647242146732.jpeg','2022-03-14 14:39:26','<p>疾病预防详情1</p>','2022-03-14 14:39:26'),(2,'疾病预防疾病预防标题2',1,'http://localhost:8080/laonianrentijian/upload/1647242139200.jpeg','2022-03-14 14:39:26','<p>疾病预防详情2</p>','2022-03-14 14:39:26'),(3,'疾病预防疾病预防标题3',1,'http://localhost:8080/laonianrentijian/upload/1647242131875.jpeg','2022-03-14 14:39:26','<p>疾病预防详情3</p>','2022-03-14 14:39:26'),(4,'疾病预防疾病预防标题4',3,'http://localhost:8080/laonianrentijian/upload/1647242122476.jpeg','2022-03-14 14:39:26','<p>疾病预防详情4</p>','2022-03-14 14:39:26'),(5,'疾病预防疾病预防标题5',1,'http://localhost:8080/laonianrentijian/upload/1647242114711.jpeg','2022-03-14 14:39:26','<p>疾病预防详情5</p>','2022-03-14 14:39:26');

/*Table structure for table `single_seach` */

DROP TABLE IF EXISTS `single_seach`;

CREATE TABLE `single_seach` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `single_seach_name` varchar(200) DEFAULT NULL COMMENT '名字  Search111 ',
  `single_seach_types` int(11) DEFAULT NULL COMMENT '数据类型',
  `single_seach_content` text COMMENT '内容',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='单页数据';

/*Data for the table `single_seach` */

insert  into `single_seach`(`id`,`single_seach_name`,`single_seach_types`,`single_seach_content`,`create_time`) values (1,'网站介绍标题',1,'<p>网站介绍网站介绍网站介绍网站介绍网站介绍网站介绍网站介绍网站介绍网站介绍网站介绍网站介绍网站介绍网站介绍网站介绍网站介绍网站介绍网站介绍网站介绍网站介绍网站介绍网站介绍网站介绍网站介绍网站介绍网站介绍网站介绍网站介绍网站介绍网站介绍网站介绍网站介绍网站介绍网站介绍网站介绍网站介绍网站介绍网站介绍网站介绍网站介绍网站介绍网站介绍网站介绍网站介绍网站介绍网站介绍网站介绍网站介绍网站介绍网站介绍网站介绍网站介绍网站介绍网站介绍网站介绍网站介绍网站介绍网站介绍网站介绍网站介绍网站介绍网站介绍网站介绍网站介绍网站介绍网站介绍网站介绍网站介绍网站介绍网站介绍网站介绍网站介绍网站介绍网站介绍网站介绍网站介绍网站介绍网站介绍网站介绍网站介绍网站介绍网站介绍网站介绍网站介绍网站介绍网站介绍网站介绍网站介绍网站介绍网站介绍网站介绍网站介绍网站介绍5448</p>','2022-03-14 15:22:29');

/*Table structure for table `tijiantixing` */

DROP TABLE IF EXISTS `tijiantixing`;

CREATE TABLE `tijiantixing` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户 ',
  `tijianxiangmu_id` int(11) DEFAULT NULL COMMENT '体检项目',
  `tijiantixing_date_time` date DEFAULT NULL COMMENT '体检日期',
  `tijiantixing_shijian` varchar(200) DEFAULT NULL COMMENT '体检时间',
  `tijiantixing_number` decimal(10,2) DEFAULT NULL COMMENT '预计花费',
  `tijiantixing_address` varchar(200) DEFAULT NULL COMMENT '体检地点',
  `tijiantixing_phone` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `tijiantixing_file` varchar(200) DEFAULT NULL COMMENT '体检报告',
  `tijiantixing_types` int(11) DEFAULT NULL COMMENT '体检状态',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COMMENT='体检提醒';

/*Data for the table `tijiantixing` */

insert  into `tijiantixing`(`id`,`yonghu_id`,`tijianxiangmu_id`,`tijiantixing_date_time`,`tijiantixing_shijian`,`tijiantixing_number`,`tijiantixing_address`,`tijiantixing_phone`,`tijiantixing_file`,`tijiantixing_types`,`create_time`) values (7,1,4,'2022-03-15','下午1点','500.00','体检地点123','17711155161','',1,'2022-03-14 15:52:07'),(11,1,2,'2022-03-14','下午3点后都可以','200.00','xxx小区广场','17785599674','http://localhost:8080/laonianrentijian/upload/1647247209941.xls',3,'2022-03-14 16:39:07');

/*Table structure for table `tijianxiangmu` */

DROP TABLE IF EXISTS `tijianxiangmu`;

CREATE TABLE `tijianxiangmu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `tijianxiangmu_name` varchar(200) DEFAULT NULL COMMENT '标题  Search111 ',
  `tijianxiangmu_types` int(11) DEFAULT NULL COMMENT '体检项目类型  Search111 ',
  `tijianxiangmu_photo` varchar(200) DEFAULT NULL COMMENT '项目封面',
  `tijianxiangmu_content` text COMMENT '体检项目详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='体检项目';

/*Data for the table `tijianxiangmu` */

insert  into `tijianxiangmu`(`id`,`tijianxiangmu_name`,`tijianxiangmu_types`,`tijianxiangmu_photo`,`tijianxiangmu_content`,`create_time`) values (1,'标题1',3,'http://localhost:8080/laonianrentijian/upload/1647241169999.jpeg','<p>体检项目详情1</p>','2022-03-14 14:39:26'),(2,'标题2',3,'http://localhost:8080/laonianrentijian/upload/1647241154611.jpeg','<p>体检项目详情2</p>','2022-03-14 14:39:26'),(3,'标题3',1,'http://localhost:8080/laonianrentijian/upload/1647241134694.jpeg','<p>体检项目详情3</p>','2022-03-14 14:39:26'),(4,'标题4',2,'http://localhost:8080/laonianrentijian/upload/1647241126107.jpeg','<p>体检项目详情4</p>','2022-03-14 14:39:26'),(5,'标题5',1,'http://localhost:8080/laonianrentijian/upload/1647241115855.jpeg','<p>体检项目详情5</p>','2022-03-14 14:39:26');

/*Table structure for table `tijianxiangmuyuyye` */

DROP TABLE IF EXISTS `tijianxiangmuyuyye`;

CREATE TABLE `tijianxiangmuyuyye` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `tijianxiangmu_id` int(11) DEFAULT NULL COMMENT '体检项目 ',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户 ',
  `tijianxiangmuyuyye_yesno_types` int(11) DEFAULT NULL COMMENT '审核状态 ',
  `tijianxiangmuyuyye_yesno_text` text COMMENT '审核结果',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COMMENT='体检项目预约';

/*Data for the table `tijianxiangmuyuyye` */

insert  into `tijianxiangmuyuyye`(`id`,`tijianxiangmu_id`,`yonghu_id`,`tijianxiangmuyuyye_yesno_types`,`tijianxiangmuyuyye_yesno_text`,`create_time`) values (1,1,2,1,NULL,'2022-03-14 14:39:26'),(2,2,2,1,NULL,'2022-03-14 14:39:26'),(3,3,1,1,NULL,'2022-03-14 14:39:26'),(4,4,2,1,NULL,'2022-03-14 14:39:26'),(5,5,2,1,NULL,'2022-03-14 14:39:26'),(11,4,1,4,'受理体检请求','2022-03-14 15:21:15'),(12,2,1,4,'通过','2022-03-14 16:32:49');

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

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'admin','users','管理员','1uh6rwxcai546nxgizu1u5025bdxxllc','2022-03-14 14:44:49','2022-03-14 17:42:24'),(2,1,'a1','yonghu','用户','6e9oqqkbxso2x0a2443wpgxjhkl86ise','2022-03-14 15:16:23','2022-03-14 17:44:18');

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
  `yonghu_photo` varchar(255) DEFAULT NULL COMMENT '头像',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别 Search111 ',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '联系方式',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '用户身份证号 ',
  `yonghu_email` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `yonghu_address` varchar(200) DEFAULT NULL COMMENT '住址',
  `yonghu_chushengriqi` varchar(200) DEFAULT NULL COMMENT '出生日期',
  `yonghu_delete` int(11) DEFAULT '1' COMMENT '假删',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`username`,`password`,`yonghu_name`,`yonghu_photo`,`sex_types`,`yonghu_phone`,`yonghu_id_number`,`yonghu_email`,`yonghu_address`,`yonghu_chushengriqi`,`yonghu_delete`,`create_time`) values (1,'a1','123456','用户姓名1','http://localhost:8080/laonianrentijian/upload/yonghu1.jpg',1,'17703786901','410224199610232001','1@qq.com','住址1','出生日期1',1,'2022-03-14 14:39:26'),(2,'a2','123456','用户姓名2','http://localhost:8080/laonianrentijian/upload/yonghu2.jpg',2,'17703786902','410224199610232002','2@qq.com','住址2','出生日期2',1,'2022-03-14 14:39:26'),(3,'a3','123456','用户姓名3','http://localhost:8080/laonianrentijian/upload/yonghu3.jpg',2,'17703786903','410224199610232003','3@qq.com','住址3','出生日期3',1,'2022-03-14 14:39:26');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
