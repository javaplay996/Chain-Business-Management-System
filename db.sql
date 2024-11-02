/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - liansuojingyingguanli
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`liansuojingyingguanli` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `liansuojingyingguanli`;

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='配置文件';

/*Data for the table `config` */

/*Table structure for table `dictionary` */

DROP TABLE IF EXISTS `dictionary`;

CREATE TABLE `dictionary` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int(11) DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字   ',
  `super_id` int(11) DEFAULT NULL COMMENT '父字段id',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8 COMMENT='字典表';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`create_time`) values (1,'sex_types','性别类型名称',1,'男',NULL,'2021-04-08 18:53:27'),(2,'sex_types','性别类型名称',2,'女',NULL,'2021-04-08 18:53:27'),(3,'jifen_types','积分类型名称',1,'钻石会员',NULL,'2021-04-08 18:53:27'),(4,'jifen_types','积分类型名称',2,'黄金会员',NULL,'2021-04-08 18:53:27'),(5,'jifen_types','积分类型名称',3,'白银会员',NULL,'2021-04-08 18:53:27'),(6,'jifen_types','积分类型名称',4,'青铜会员',NULL,'2021-04-08 18:53:27'),(7,'gongyingshang_types','供应商等级名称',1,'一级',NULL,'2021-04-08 18:53:27'),(8,'gongyingshang_types','供应商等级名称',2,'二级',NULL,'2021-04-08 18:53:27'),(9,'gongyingshang_types','供应商等级名称',3,'三级',NULL,'2021-04-08 18:53:27'),(10,'gongyingshang_xinyong_types','供应商信用等级名称',1,'高',NULL,'2021-04-08 18:53:27'),(11,'gongyingshang_xinyong_types','供应商信用等级名称',2,'中',NULL,'2021-04-08 18:53:27'),(12,'gongyingshang_xinyong_types','供应商信用等级名称',3,'低',NULL,'2021-04-08 18:53:27'),(13,'goods_types','物资类型名称',1,'衣物',NULL,'2021-04-08 18:53:27'),(14,'goods_types','物资类型名称',2,'电器',NULL,'2021-04-08 18:53:28'),(15,'goods_types','物资类型名称',3,'饮品',NULL,'2021-04-08 18:53:28'),(16,'goods_types','物资类型名称',4,'生活用品',NULL,'2021-04-08 18:53:28'),(17,'goods_order_types','订单类型名称',1,'采购',NULL,'2021-04-08 18:53:28'),(18,'goods_order_types','订单类型名称',2,'调度',NULL,'2021-04-08 18:53:28'),(19,'fendian_types','分店等级名称',1,'一级',NULL,'2021-04-08 18:53:28'),(20,'fendian_types','分店等级名称',2,'二级',NULL,'2021-04-08 18:53:28'),(21,'fendian_types','分店等级名称',3,'三级',NULL,'2021-04-08 18:53:28'),(22,'gongyingshang_types','供应商等级名称',4,'少时诵诗书',NULL,'2021-04-10 16:24:55'),(23,'goods_types','物资类型名称',5,'水果',NULL,'2021-04-10 16:25:44');

/*Table structure for table `fendian` */

DROP TABLE IF EXISTS `fendian`;

CREATE TABLE `fendian` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `fendian_name` varchar(200) DEFAULT NULL COMMENT '分店名   ',
  `fendian_types` int(11) DEFAULT NULL COMMENT '分店等级  ',
  `fendian_address` varchar(200) DEFAULT NULL COMMENT '分店地址  ',
  `fendian_content` varchar(200) DEFAULT NULL COMMENT '分店详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='连锁店';

/*Data for the table `fendian` */

insert  into `fendian`(`id`,`fendian_name`,`fendian_types`,`fendian_address`,`fendian_content`,`create_time`) values (1,'北京分店',3,'北京三环','北京三环的分店\r\n','2021-04-10 10:42:57'),(2,'郑州分店',3,'郑州高新区','高新区分店详情\r\n','2021-04-10 10:50:30'),(3,'上海分店',2,'上海浦江分店','上海分店的详情\r\n','2021-04-10 15:37:59');

/*Table structure for table `fendian_goods` */

DROP TABLE IF EXISTS `fendian_goods`;

CREATE TABLE `fendian_goods` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `fendian_id` int(11) DEFAULT NULL COMMENT '分店',
  `goods_only` int(11) DEFAULT NULL COMMENT '分店',
  `goods_name` varchar(200) DEFAULT NULL COMMENT '分店物品名字  ',
  `goods_types` int(11) DEFAULT NULL COMMENT '物品种类   ',
  `fendian_goods_number` int(11) DEFAULT NULL COMMENT '分店物资数量   ',
  `goods_photo` varchar(200) DEFAULT NULL COMMENT '分店物品图片',
  `danwei` varchar(200) DEFAULT NULL COMMENT '单位',
  `danjia` decimal(10,2) DEFAULT NULL COMMENT '单价  ',
  `goods_content` varchar(200) DEFAULT NULL COMMENT '物资详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='分店物资';

/*Data for the table `fendian_goods` */

insert  into `fendian_goods`(`id`,`fendian_id`,`goods_only`,`goods_name`,`goods_types`,`fendian_goods_number`,`goods_photo`,`danwei`,`danjia`,`goods_content`,`create_time`) values (1,1,6,'鞋胶',4,3,'http://localhost:8080/liansuojingyingguanli/file/download?fileName=1617845839101.webp','瓶','15.00','鞋胶的详情\r\n','2021-04-10 10:47:16'),(2,1,7,'鞋子',1,15,'http://localhost:8080/liansuojingyingguanli/file/download?fileName=1617845880804.webp','双','130.00','鞋子的详情\r\n','2021-04-10 10:47:16'),(3,1,5,'袜子',1,1,'http://localhost:8080/liansuojingyingguanli/file/download?fileName=1617845802203.webp','双','11.00','袜子的详情\r\n','2021-04-10 10:49:22'),(4,2,3,'电脑主机',2,13,'http://localhost:8080/liansuojingyingguanli/file/download?fileName=1617845681282.webp','台','120.00','电脑主机的详情\r\n','2021-04-10 10:51:10'),(5,2,7,'鞋子',1,0,'http://localhost:8080/liansuojingyingguanli/file/download?fileName=1617845880804.webp','双','130.00','鞋子的详情\r\n','2021-04-10 10:51:10'),(6,3,7,'鞋子',1,2,'http://localhost:8080/liansuojingyingguanli/file/download?fileName=1617845880804.webp','双','130.00','鞋子的详情\r\n','2021-04-10 16:15:28'),(7,3,9,'鱼',4,43,'http://localhost:8080/liansuojingyingguanli/file/download?fileName=1618042137117.jpg','条','10.00','鱼的详情111\r\n','2021-04-10 16:15:28');

/*Table structure for table `fendian_goods_order` */

DROP TABLE IF EXISTS `fendian_goods_order`;

CREATE TABLE `fendian_goods_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `caozuo_name` varchar(200) DEFAULT NULL COMMENT '操作人姓名   ',
  `caozuo_table` varchar(200) DEFAULT NULL COMMENT '操作人所在表名',
  `huiyuan_id` int(11) DEFAULT NULL COMMENT '会员',
  `original_money` decimal(10,2) DEFAULT NULL COMMENT '原总价',
  `discount_money` decimal(10,2) DEFAULT NULL COMMENT '折后价  ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '订单添加时间   ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='购买订单';

/*Data for the table `fendian_goods_order` */

insert  into `fendian_goods_order`(`id`,`caozuo_name`,`caozuo_table`,`huiyuan_id`,`original_money`,`discount_money`,`insert_time`,`create_time`) values (1,'张1','yonghu',1,'1950.00','1852.50','2021-04-10 14:33:05','2021-04-10 14:33:05'),(2,'张2','yonghu',2,'150.00','142.50','2021-04-10 16:28:42','2021-04-10 16:28:42'),(3,'张2','yonghu',2,'420.00','399.00','2021-04-10 16:29:36','2021-04-10 16:29:36'),(4,'张2','yonghu',1,'20.00','19.00','2021-04-10 16:32:19','2021-04-10 16:32:19');

/*Table structure for table `fendian_goods_order_list` */

DROP TABLE IF EXISTS `fendian_goods_order_list`;

CREATE TABLE `fendian_goods_order_list` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `fendian_goods_order_id` int(11) DEFAULT NULL COMMENT '购买订单',
  `fendian_goods_id` int(11) DEFAULT NULL COMMENT '分店物资',
  `fendian_goods_order_list_number` int(11) DEFAULT NULL COMMENT '数量   ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='购买订单详情';

/*Data for the table `fendian_goods_order_list` */

insert  into `fendian_goods_order_list`(`id`,`fendian_goods_order_id`,`fendian_goods_id`,`fendian_goods_order_list_number`,`create_time`) values (1,1,5,15,'2021-04-10 14:33:05'),(2,2,6,1,'2021-04-10 16:28:42'),(3,2,7,2,'2021-04-10 16:28:42'),(4,3,6,3,'2021-04-10 16:29:36'),(5,3,7,3,'2021-04-10 16:29:36'),(6,4,7,2,'2021-04-10 16:32:19');

/*Table structure for table `gongyingshang` */

DROP TABLE IF EXISTS `gongyingshang`;

CREATE TABLE `gongyingshang` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `gongyingshang_name` varchar(200) DEFAULT NULL COMMENT '供应商姓名   ',
  `gongyingshang_content` varchar(200) DEFAULT NULL COMMENT '供应商详情',
  `gongyingshang_types` int(11) DEFAULT NULL COMMENT '供应商等级  ',
  `gongyingshang_xinyong_types` int(11) DEFAULT NULL COMMENT '供应商信用等级  ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='供应商';

/*Data for the table `gongyingshang` */

insert  into `gongyingshang`(`id`,`gongyingshang_name`,`gongyingshang_content`,`gongyingshang_types`,`gongyingshang_xinyong_types`,`create_time`) values (1,'供应商1','供应商详情\r\n',3,1,'2021-04-09 15:49:32'),(2,'供应商2','供应商2的详情\r\n',2,2,'2021-04-10 16:10:01');

/*Table structure for table `goods` */

DROP TABLE IF EXISTS `goods`;

CREATE TABLE `goods` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `goods_name` varchar(200) DEFAULT NULL COMMENT '物品名字  ',
  `goods_types` int(11) DEFAULT NULL COMMENT '物品种类   ',
  `goods_number` int(11) DEFAULT NULL COMMENT '物资数量   ',
  `goods_photo` varchar(200) DEFAULT NULL COMMENT '物品图片',
  `danwei` varchar(200) DEFAULT NULL COMMENT '单位',
  `danjia` decimal(10,2) DEFAULT NULL COMMENT '单价  ',
  `goods_content` varchar(200) DEFAULT NULL COMMENT '物资详情',
  `flag` int(11) DEFAULT NULL COMMENT '是否删除',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COMMENT='总库物资';

/*Data for the table `goods` */

insert  into `goods`(`id`,`goods_name`,`goods_types`,`goods_number`,`goods_photo`,`danwei`,`danjia`,`goods_content`,`flag`,`create_time`) values (1,'T恤',1,100,'http://localhost:8080/liansuojingyingguanli/file/download?fileName=1617845413820.webp','件','50.00','这是一个T恤的详情\r\n',1,'2021-04-08 09:31:07'),(2,'笔记本散热器',2,100,'http://localhost:8080/liansuojingyingguanli/file/download?fileName=1617845635930.webp','个','66.00','笔记本散热器的详情\r\n',1,'2021-04-08 09:34:21'),(3,'电脑主机',2,87,'http://localhost:8080/liansuojingyingguanli/file/download?fileName=1617845681282.webp','台','120.00','电脑主机的详情\r\n',1,'2021-04-08 09:35:07'),(4,'茉莉花茶',3,1000,'http://localhost:8080/liansuojingyingguanli/file/download?fileName=1617845725042.webp','瓶','22.00','茉莉花茶的详情\r\n',1,'2021-04-08 09:36:07'),(5,'袜子',1,99,'http://localhost:8080/liansuojingyingguanli/file/download?fileName=1617845802203.webp','双','11.00','袜子的详情\r\n',1,'2021-04-08 09:36:54'),(6,'鞋胶',4,997,'http://localhost:8080/liansuojingyingguanli/file/download?fileName=1617845839101.webp','瓶','15.00','鞋胶的详情\r\n',1,'2021-04-08 09:37:38'),(7,'鞋子',1,64,'http://localhost:8080/liansuojingyingguanli/file/download?fileName=1617845880804.webp','双','130.00','鞋子的详情\r\n',1,'2021-04-08 09:38:22'),(8,'苹果',4,112,'http://localhost:8080/liansuojingyingguanli/file/download?fileName=1618042033411.jpg','个','10.00','苹果的详情\r\n',1,'2021-04-10 16:07:35'),(9,'鱼',4,60,'http://localhost:8080/liansuojingyingguanli/file/download?fileName=1618042137117.jpg','条','10.00','鱼的详情111\r\n',1,'2021-04-10 16:09:15');

/*Table structure for table `goods_order` */

DROP TABLE IF EXISTS `goods_order`;

CREATE TABLE `goods_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `goods_order_name` varchar(200) DEFAULT NULL COMMENT '订单名   ',
  `caozuo_name` varchar(200) DEFAULT NULL COMMENT '操作人姓名   ',
  `caozuo_table` varchar(200) DEFAULT NULL COMMENT '操作人所在表名',
  `goods_order_types` int(11) DEFAULT NULL COMMENT '类型   ',
  `gongyingshang_id` int(11) DEFAULT NULL COMMENT '供应商',
  `fendian_id` int(11) DEFAULT NULL COMMENT '分店',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '采购调度时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COMMENT='采购调度表';

/*Data for the table `goods_order` */

insert  into `goods_order`(`id`,`goods_order_name`,`caozuo_name`,`caozuo_table`,`goods_order_types`,`gongyingshang_id`,`fendian_id`,`insert_time`,`create_time`) values (4,'测试入库订单1','admin','users',1,1,NULL,'2021-04-09 20:59:10','2021-04-09 20:59:10'),(5,'第二次采购','admin','users',1,1,NULL,'2021-04-10 09:19:09','2021-04-10 09:19:09'),(6,'第一次调度','admin','users',2,NULL,1,'2021-04-10 10:47:16','2021-04-10 10:47:16'),(7,'第二次调度','admin','users',2,NULL,1,'2021-04-10 10:49:22','2021-04-10 10:49:22'),(8,'第三次调度','admin','users',2,NULL,2,'2021-04-10 10:51:10','2021-04-10 10:51:10'),(9,'采购1','admin','users',1,2,NULL,'2021-04-10 16:10:51','2021-04-10 16:10:51'),(10,'调度给上海分店','admin','users',2,NULL,3,'2021-04-10 16:15:28','2021-04-10 16:15:28');

/*Table structure for table `goods_order_list` */

DROP TABLE IF EXISTS `goods_order_list`;

CREATE TABLE `goods_order_list` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `goods_order_id` int(11) DEFAULT NULL COMMENT '采购调度',
  `goods_id` int(11) DEFAULT NULL COMMENT '物资表',
  `goods_order_list_number` int(11) DEFAULT NULL COMMENT '数量   ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='采购调度详情表';

/*Data for the table `goods_order_list` */

insert  into `goods_order_list`(`id`,`goods_order_id`,`goods_id`,`goods_order_list_number`,`create_time`) values (1,4,6,11,'2021-04-09 20:59:10'),(2,4,7,13,'2021-04-09 20:59:10'),(4,5,5,12,'2021-04-10 09:19:09'),(5,5,7,13,'2021-04-10 09:19:09'),(6,6,6,3,'2021-04-10 10:47:16'),(7,6,7,12,'2021-04-10 10:47:16'),(8,7,5,1,'2021-04-10 10:49:22'),(9,7,7,3,'2021-04-10 10:49:22'),(10,8,3,13,'2021-04-10 10:51:10'),(11,8,7,15,'2021-04-10 10:51:10'),(12,9,8,12,'2021-04-10 16:10:51'),(13,9,9,10,'2021-04-10 16:10:51'),(14,10,7,6,'2021-04-10 16:15:28'),(15,10,9,50,'2021-04-10 16:15:28');

/*Table structure for table `huiyuan` */

DROP TABLE IF EXISTS `huiyuan`;

CREATE TABLE `huiyuan` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `huiyuan_name` varchar(200) DEFAULT NULL COMMENT '会员姓名   ',
  `sex_types` int(11) DEFAULT NULL COMMENT '会员性别',
  `huiyuan_id_number` varchar(200) DEFAULT NULL COMMENT '会员身份证号   ',
  `huiyuan_phone` varchar(200) DEFAULT NULL COMMENT '会员手机号  ',
  `jifen` int(11) DEFAULT NULL COMMENT '积分',
  `jifen_types` int(11) DEFAULT NULL COMMENT '会员等级',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='会员';

/*Data for the table `huiyuan` */

insert  into `huiyuan`(`id`,`huiyuan_name`,`sex_types`,`huiyuan_id_number`,`huiyuan_phone`,`jifen`,`jifen_types`,`create_time`) values (1,'会员1',2,'410224199610232011','17703789911',21,4,'2021-04-09 16:20:22'),(2,'会员2',2,'410224199610232022','17703789922',1,4,'2021-04-10 15:40:53');

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
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,6,'admin','users','管理员','ay0013hrnuwz1rb52ld7qs01tllljy4c','2021-04-08 19:01:01','2021-04-10 16:39:32'),(2,1,'a1','yonghu','用户','mdqq15eqtosic8pedob0yzsjp8r6gs21','2021-04-10 11:49:49','2021-04-10 15:50:19'),(3,2,'a2','yonghu','用户','3xb4tqh0qy1oizy5ujngb5fuv0fuy8u4','2021-04-10 16:25:59','2021-04-10 17:31:57');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='用户表';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (6,'admin','123456','管理员','2021-01-29 14:51:13');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '员工姓名   ',
  `sex_types` int(11) DEFAULT NULL COMMENT '员工性别',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '员工身份证号   ',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '员工手机号  ',
  `fendian_id` int(11) DEFAULT NULL COMMENT '分店id',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='员工';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`username`,`password`,`yonghu_name`,`sex_types`,`yonghu_id_number`,`yonghu_phone`,`fendian_id`,`create_time`) values (1,'a1','123456','张1',2,'410224199610232011','17703786911',2,'2021-04-10 11:49:42'),(2,'a2','123456','张2',2,'410224199610232022','17703786999',3,'2021-04-10 15:39:02');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
