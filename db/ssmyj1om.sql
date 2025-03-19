-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: ssmyj1om
-- ------------------------------------------------------
-- Server version	5.7.31

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `chat`
--

DROP TABLE IF EXISTS `chat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chat` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `adminid` bigint(20) DEFAULT NULL COMMENT '管理员id',
  `ask` longtext COMMENT '提问',
  `reply` longtext COMMENT '回复',
  `isreply` int(11) DEFAULT NULL COMMENT '是否回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615554110765 DEFAULT CHARSET=utf8 COMMENT='在线客服';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chat`
--

LOCK TABLES `chat` WRITE;
/*!40000 ALTER TABLE `chat` DISABLE KEYS */;
INSERT INTO `chat` VALUES (81,'2021-03-12 12:31:41',1,1,'提问1','回复1',1),(82,'2021-03-12 12:31:41',2,2,'提问2','回复2',2),(83,'2021-03-12 12:31:41',3,3,'提问3','回复3',3),(84,'2021-03-12 12:31:41',4,4,'提问4','回复4',4),(85,'2021-03-12 12:31:41',5,5,'提问5','回复5',5),(86,'2021-03-12 12:31:41',6,6,'提问6','回复6',6),(1615554054754,'2021-03-12 13:00:53',1615553899644,NULL,'请问有国外拍摄点吗',NULL,0),(1615554110764,'2021-03-12 13:01:50',1615553899644,1,NULL,'有巴厘岛，马尔代夫',NULL);
/*!40000 ALTER TABLE `chat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `config`
--

DROP TABLE IF EXISTS `config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES (1,'picture1','http://localhost:8080/ssmyj1om/upload/1615553552888.jpg'),(2,'picture2','http://localhost:8080/ssmyj1om/upload/1615553560285.jpg'),(3,'picture3','http://localhost:8080/ssmyj1om/upload/1615553835902.jpg'),(6,'homepage',NULL);
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discusskepianxinshang`
--

DROP TABLE IF EXISTS `discusskepianxinshang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discusskepianxinshang` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=127 DEFAULT CHARSET=utf8 COMMENT='客片欣赏评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discusskepianxinshang`
--

LOCK TABLES `discusskepianxinshang` WRITE;
/*!40000 ALTER TABLE `discusskepianxinshang` DISABLE KEYS */;
INSERT INTO `discusskepianxinshang` VALUES (121,'2021-03-12 12:31:41',1,1,'用户名1','评论内容1','回复内容1'),(122,'2021-03-12 12:31:41',2,2,'用户名2','评论内容2','回复内容2'),(123,'2021-03-12 12:31:41',3,3,'用户名3','评论内容3','回复内容3'),(124,'2021-03-12 12:31:41',4,4,'用户名4','评论内容4','回复内容4'),(125,'2021-03-12 12:31:41',5,5,'用户名5','评论内容5','回复内容5'),(126,'2021-03-12 12:31:41',6,6,'用户名6','评论内容6','回复内容6');
/*!40000 ALTER TABLE `discusskepianxinshang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discusssheyingtaocan`
--

DROP TABLE IF EXISTS `discusssheyingtaocan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discusssheyingtaocan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=117 DEFAULT CHARSET=utf8 COMMENT='摄影套餐评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discusssheyingtaocan`
--

LOCK TABLES `discusssheyingtaocan` WRITE;
/*!40000 ALTER TABLE `discusssheyingtaocan` DISABLE KEYS */;
INSERT INTO `discusssheyingtaocan` VALUES (111,'2021-03-12 12:31:41',1,1,'用户名1','评论内容1','回复内容1'),(112,'2021-03-12 12:31:41',2,2,'用户名2','评论内容2','回复内容2'),(113,'2021-03-12 12:31:41',3,3,'用户名3','评论内容3','回复内容3'),(114,'2021-03-12 12:31:41',4,4,'用户名4','评论内容4','回复内容4'),(115,'2021-03-12 12:31:41',5,5,'用户名5','评论内容5','回复内容5'),(116,'2021-03-12 12:31:41',6,6,'用户名6','评论内容6','回复内容6');
/*!40000 ALTER TABLE `discusssheyingtaocan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kepianxinshang`
--

DROP TABLE IF EXISTS `kepianxinshang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kepianxinshang` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `taocanbianhao` varchar(200) DEFAULT NULL COMMENT '套餐编号',
  `taocanmingcheng` varchar(200) DEFAULT NULL COMMENT '套餐名称',
  `didian` varchar(200) DEFAULT NULL COMMENT '地点',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `sheyingshi` varchar(200) DEFAULT NULL COMMENT '摄影师',
  `huazhuangshi` varchar(200) DEFAULT NULL COMMENT '化妆师',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615554284631 DEFAULT CHARSET=utf8 COMMENT='客片欣赏';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kepianxinshang`
--

LOCK TABLES `kepianxinshang` WRITE;
/*!40000 ALTER TABLE `kepianxinshang` DISABLE KEYS */;
INSERT INTO `kepianxinshang` VALUES (71,'2021-03-12 12:31:41','套餐编号1','套餐名称1','地点1','http://localhost:8080/ssmyj1om/upload/1615553433980.jpg','摄影师1','化妆师1'),(72,'2021-03-12 12:31:41','套餐编号2','套餐名称2','地点2','http://localhost:8080/ssmyj1om/upload/1615553442120.jpg','摄影师2','化妆师2'),(73,'2021-03-12 12:31:41','套餐编号3','套餐名称3','地点3','http://localhost:8080/ssmyj1om/upload/1615553450719.jpg','摄影师3','化妆师3'),(74,'2021-03-12 12:31:41','套餐编号4','套餐名称4','地点4','http://localhost:8080/ssmyj1om/upload/1615553487515.jpg','摄影师4','化妆师4'),(75,'2021-03-12 12:31:41','套餐编号5','套餐名称5','地点5','http://localhost:8080/ssmyj1om/upload/1615553469043.jpg','摄影师5','化妆师5'),(76,'2021-03-12 12:31:41','套餐编号6','套餐名称6','地点6','http://localhost:8080/ssmyj1om/upload/1615553478434.jpg','摄影师6','化妆师6'),(1615554284630,'2021-03-12 13:04:44','1615553774449','伯爵旅拍婚纱摄影','三亚','http://localhost:8080/ssmyj1om/upload/1615554271140.jpg','小一','小爽');
/*!40000 ALTER TABLE `kepianxinshang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `introduction` longtext COMMENT '简介',
  `picture` varchar(200) NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615553871068 DEFAULT CHARSET=utf8 COMMENT='摄影资讯';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES (101,'2021-03-12 12:31:41','标题1','简介1','http://localhost:8080/ssmyj1om/upload/1615553579722.jpg','<p>内容1</p>'),(102,'2021-03-12 12:31:41','标题2','简介2','http://localhost:8080/ssmyj1om/upload/1615553587091.jpg','<p>内容2</p>'),(103,'2021-03-12 12:31:41','标题3','简介3','http://localhost:8080/ssmyj1om/upload/1615553596285.jpg','<p>内容3</p>'),(104,'2021-03-12 12:31:41','标题4','简介4','http://localhost:8080/ssmyj1om/upload/1615553604151.jpg','<p>内容4</p>'),(105,'2021-03-12 12:31:41','标题5','简介5','http://localhost:8080/ssmyj1om/upload/1615553612576.jpg','<p>内容5</p>'),(106,'2021-03-12 12:31:41','标题6','简介6','http://localhost:8080/ssmyj1om/upload/1615553620020.jpg','<p>内容6</p>'),(1615553871067,'2021-03-12 12:57:50','婚纱摄影优惠资讯','优惠资讯','http://localhost:8080/ssmyj1om/upload/1615553854712.jpg','<p>婚纱套餐优惠</p><p><img src=\"http://localhost:8080/ssmyj1om/upload/1615553868726.jpg\"></p>');
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sheyingdinggou`
--

DROP TABLE IF EXISTS `sheyingdinggou`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sheyingdinggou` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dingdanbianhao` varchar(200) DEFAULT NULL COMMENT '订单编号',
  `taocanbianhao` varchar(200) DEFAULT NULL COMMENT '套餐编号',
  `taocanmingcheng` varchar(200) DEFAULT NULL COMMENT '套餐名称',
  `fengmian` varchar(200) DEFAULT NULL COMMENT '封面',
  `taocanjine` varchar(200) DEFAULT NULL COMMENT '套餐金额',
  `paishedidian` varchar(200) DEFAULT NULL COMMENT '拍摄地点',
  `xiadanriqi` date NOT NULL COMMENT '下单日期',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  `ispay` varchar(200) DEFAULT '未支付' COMMENT '是否支付',
  PRIMARY KEY (`id`),
  UNIQUE KEY `dingdanbianhao` (`dingdanbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1615554032100 DEFAULT CHARSET=utf8 COMMENT='摄影订购';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sheyingdinggou`
--

LOCK TABLES `sheyingdinggou` WRITE;
/*!40000 ALTER TABLE `sheyingdinggou` DISABLE KEYS */;
INSERT INTO `sheyingdinggou` VALUES (41,'2021-03-12 12:31:41','订单编号1','套餐编号1','套餐名称1','http://localhost:8080/ssmyj1om/upload/sheyingdinggou_fengmian1.jpg','套餐金额1','拍摄地点1','2021-03-12','备注1','用户名1','姓名1','联系电话1','是','','未支付'),(42,'2021-03-12 12:31:41','订单编号2','套餐编号2','套餐名称2','http://localhost:8080/ssmyj1om/upload/sheyingdinggou_fengmian2.jpg','套餐金额2','拍摄地点2','2021-03-12','备注2','用户名2','姓名2','联系电话2','是','','未支付'),(43,'2021-03-12 12:31:41','订单编号3','套餐编号3','套餐名称3','http://localhost:8080/ssmyj1om/upload/sheyingdinggou_fengmian3.jpg','套餐金额3','拍摄地点3','2021-03-12','备注3','用户名3','姓名3','联系电话3','是','','未支付'),(44,'2021-03-12 12:31:41','订单编号4','套餐编号4','套餐名称4','http://localhost:8080/ssmyj1om/upload/sheyingdinggou_fengmian4.jpg','套餐金额4','拍摄地点4','2021-03-12','备注4','用户名4','姓名4','联系电话4','是','','未支付'),(45,'2021-03-12 12:31:41','订单编号5','套餐编号5','套餐名称5','http://localhost:8080/ssmyj1om/upload/1615553415257.jpg','套餐金额5','拍摄地点5','2021-03-12','备注5','用户名5','姓名5','联系电话5','是','','未支付'),(46,'2021-03-12 12:31:41','订单编号6','套餐编号6','套餐名称6','http://localhost:8080/ssmyj1om/upload/sheyingdinggou_fengmian6.jpg','套餐金额6','拍摄地点6','2021-03-12','备注6','用户名6','姓名6','联系电话6','是','','未支付'),(1615554032099,'2021-03-12 13:00:31','20213122101893823273','1615553774449','伯爵旅拍婚纱摄影','http://localhost:8080/ssmyj1om/upload/1615553797480.jpg','9999','三亚云南青岛','2021-03-12','拍摄时间另外定','1','陈一','12312312312','是','ok','已支付');
/*!40000 ALTER TABLE `sheyingdinggou` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sheyingpingjia`
--

DROP TABLE IF EXISTS `sheyingpingjia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sheyingpingjia` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dingdanbianhao` varchar(200) DEFAULT NULL COMMENT '订单编号',
  `taocanbianhao` varchar(200) DEFAULT NULL COMMENT '套餐编号',
  `taocanmingcheng` varchar(200) DEFAULT NULL COMMENT '套餐名称',
  `fuwupingfen` varchar(200) DEFAULT NULL COMMENT '服务评分',
  `jishupingfen` varchar(200) DEFAULT NULL COMMENT '技术评分',
  `shaitu` varchar(200) DEFAULT NULL COMMENT '晒图',
  `zhengtipingjia` longtext COMMENT '整体评价',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615554242657 DEFAULT CHARSET=utf8 COMMENT='摄影评价';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sheyingpingjia`
--

LOCK TABLES `sheyingpingjia` WRITE;
/*!40000 ALTER TABLE `sheyingpingjia` DISABLE KEYS */;
INSERT INTO `sheyingpingjia` VALUES (61,'2021-03-12 12:31:41','订单编号1','套餐编号1','套餐名称1','1','1','http://localhost:8080/ssmyj1om/upload/sheyingpingjia_shaitu1.jpg','整体评价1','用户名1','联系电话1','是',''),(62,'2021-03-12 12:31:41','订单编号2','套餐编号2','套餐名称2','1','1','http://localhost:8080/ssmyj1om/upload/sheyingpingjia_shaitu2.jpg','整体评价2','用户名2','联系电话2','是',''),(63,'2021-03-12 12:31:41','订单编号3','套餐编号3','套餐名称3','1','1','http://localhost:8080/ssmyj1om/upload/sheyingpingjia_shaitu3.jpg','整体评价3','用户名3','联系电话3','是',''),(64,'2021-03-12 12:31:41','订单编号4','套餐编号4','套餐名称4','1','1','http://localhost:8080/ssmyj1om/upload/sheyingpingjia_shaitu4.jpg','整体评价4','用户名4','联系电话4','是',''),(65,'2021-03-12 12:31:41','订单编号5','套餐编号5','套餐名称5','1','1','http://localhost:8080/ssmyj1om/upload/1615553425261.jpg','整体评价5','用户名5','联系电话5','是',''),(66,'2021-03-12 12:31:41','订单编号6','套餐编号6','套餐名称6','1','1','http://localhost:8080/ssmyj1om/upload/sheyingpingjia_shaitu6.jpg','整体评价6','用户名6','联系电话6','是',''),(1615554242656,'2021-03-12 13:04:02','20213122101893823273','1615553774449','伯爵旅拍婚纱摄影','5','5','http://localhost:8080/ssmyj1om/upload/1615554222739.jpg','化妆品跟摄影师都很不错，拍摄效果很好，很满意','1','12312312312','是','感谢支持');
/*!40000 ALTER TABLE `sheyingpingjia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sheyingtaocan`
--

DROP TABLE IF EXISTS `sheyingtaocan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sheyingtaocan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `taocanbianhao` varchar(200) DEFAULT NULL COMMENT '套餐编号',
  `taocanmingcheng` varchar(200) NOT NULL COMMENT '套餐名称',
  `fengmian` varchar(200) NOT NULL COMMENT '封面',
  `xilie` varchar(200) NOT NULL COMMENT '系列',
  `biaoqian` varchar(200) DEFAULT NULL COMMENT '标签',
  `taocanjine` int(11) DEFAULT NULL COMMENT '套餐金额',
  `paishedidian` varchar(200) DEFAULT NULL COMMENT '拍摄地点',
  `taocanxiangqing` longtext COMMENT '套餐详情',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  PRIMARY KEY (`id`),
  UNIQUE KEY `taocanbianhao` (`taocanbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1615553825783 DEFAULT CHARSET=utf8 COMMENT='摄影套餐';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sheyingtaocan`
--

LOCK TABLES `sheyingtaocan` WRITE;
/*!40000 ALTER TABLE `sheyingtaocan` DISABLE KEYS */;
INSERT INTO `sheyingtaocan` VALUES (31,'2021-03-12 12:31:41','套餐编号1','套餐名称1','http://localhost:8080/ssmyj1om/upload/1615553335677.jpg','精品套餐','国内爆款',1,'拍摄地点1','<p>套餐详情1</p>','2021-03-12 20:48:59',3),(32,'2021-03-12 12:31:41','套餐编号2','套餐名称2','http://localhost:8080/ssmyj1om/upload/1615553350430.jpg','精选套餐','国内爆款',2,'拍摄地点2','<p>套餐详情2</p>','2021-03-12 20:49:04',3),(33,'2021-03-12 12:31:41','套餐编号3','套餐名称3','http://localhost:8080/ssmyj1om/upload/1615553362948.jpg','经典套餐','国内爆款',3,'拍摄地点3','<p>套餐详情3</p>','2021-03-12 20:49:15',4),(34,'2021-03-12 12:31:41','套餐编号4','套餐名称4','http://localhost:8080/ssmyj1om/upload/1615553372907.jpg','高端定制','国内爆款',4,'拍摄地点4','<p>套餐详情4</p>','2021-03-12 20:49:28',5),(35,'2021-03-12 12:31:41','套餐编号5','套餐名称5','http://localhost:8080/ssmyj1om/upload/1615553394171.jpg','精选套餐','国内爆款',5,'拍摄地点5','<p>套餐详情5</p>','2021-03-12 20:49:49',6),(36,'2021-03-12 12:31:41','套餐编号6','套餐名称6','http://localhost:8080/ssmyj1om/upload/1615553404484.jpg','高端定制','国内爆款',6,'拍摄地点6','<p>套餐详情6</p>','2021-03-12 20:49:59',7),(1615553825782,'2021-03-12 12:57:05','1615553774449','伯爵旅拍婚纱摄影','http://localhost:8080/ssmyj1om/upload/1615553797480.jpg','爆款系列','国内爆款',9999,'三亚云南青岛','<p>套餐介绍</p><p><img src=\"http://localhost:8080/ssmyj1om/upload/1615553823350.jpg\"></p>','2021-03-12 21:00:34',5);
/*!40000 ALTER TABLE `sheyingtaocan` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sheyingyuyue`
--

DROP TABLE IF EXISTS `sheyingyuyue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sheyingyuyue` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `dingdanbianhao` varchar(200) DEFAULT NULL COMMENT '订单编号',
  `taocanbianhao` varchar(200) DEFAULT NULL COMMENT '套餐编号',
  `taocanmingcheng` varchar(200) DEFAULT NULL COMMENT '套餐名称',
  `taocanjine` varchar(200) DEFAULT NULL COMMENT '套餐金额',
  `yuyuedidian` varchar(200) DEFAULT NULL COMMENT '预约地点',
  `yuyueriqi` date DEFAULT NULL COMMENT '预约日期',
  `yonghuming` varchar(200) DEFAULT NULL COMMENT '用户名',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615554163449 DEFAULT CHARSET=utf8 COMMENT='摄影预约';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sheyingyuyue`
--

LOCK TABLES `sheyingyuyue` WRITE;
/*!40000 ALTER TABLE `sheyingyuyue` DISABLE KEYS */;
INSERT INTO `sheyingyuyue` VALUES (51,'2021-03-12 12:31:41','订单编号1','套餐编号1','套餐名称1','套餐金额1','预约地点1','2021-03-12','用户名1','姓名1','联系电话1','是',''),(52,'2021-03-12 12:31:41','订单编号2','套餐编号2','套餐名称2','套餐金额2','预约地点2','2021-03-12','用户名2','姓名2','联系电话2','是',''),(53,'2021-03-12 12:31:41','订单编号3','套餐编号3','套餐名称3','套餐金额3','预约地点3','2021-03-12','用户名3','姓名3','联系电话3','是',''),(54,'2021-03-12 12:31:41','订单编号4','套餐编号4','套餐名称4','套餐金额4','预约地点4','2021-03-12','用户名4','姓名4','联系电话4','是',''),(55,'2021-03-12 12:31:41','订单编号5','套餐编号5','套餐名称5','套餐金额5','预约地点5','2021-03-12','用户名5','姓名5','联系电话5','是',''),(56,'2021-03-12 12:31:41','订单编号6','套餐编号6','套餐名称6','套餐金额6','预约地点6','2021-03-12','用户名6','姓名6','联系电话6','是',''),(1615554163448,'2021-03-12 13:02:43','20213122101893823273','1615553774449','伯爵旅拍婚纱摄影','9999','三亚','2021-03-22','1','陈一','12312312312','是','可以，3.22早上7点到门店集合');
/*!40000 ALTER TABLE `sheyingyuyue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `storeup`
--

DROP TABLE IF EXISTS `storeup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1615554301499 DEFAULT CHARSET=utf8 COMMENT='收藏表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `storeup`
--

LOCK TABLES `storeup` WRITE;
/*!40000 ALTER TABLE `storeup` DISABLE KEYS */;
INSERT INTO `storeup` VALUES (1615554301498,'2021-03-12 13:05:00',1615553899644,1615554284630,'kepianxinshang','伯爵旅拍婚纱摄影','http://localhost:8080/ssmyj1om/upload/1615554271140.jpg');
/*!40000 ALTER TABLE `storeup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `taocanxilie`
--

DROP TABLE IF EXISTS `taocanxilie`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `taocanxilie` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xilie` varchar(200) NOT NULL COMMENT '系列',
  PRIMARY KEY (`id`),
  UNIQUE KEY `xilie` (`xilie`)
) ENGINE=InnoDB AUTO_INCREMENT=1615553770977 DEFAULT CHARSET=utf8 COMMENT='套餐系列';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `taocanxilie`
--

LOCK TABLES `taocanxilie` WRITE;
/*!40000 ALTER TABLE `taocanxilie` DISABLE KEYS */;
INSERT INTO `taocanxilie` VALUES (21,'2021-03-12 12:31:41','高端定制'),(22,'2021-03-12 12:31:41','精选套餐'),(23,'2021-03-12 12:31:41','经典套餐'),(24,'2021-03-12 12:31:41','精品套餐'),(1615553770976,'2021-03-12 12:56:10','爆款系列');
/*!40000 ALTER TABLE `taocanxilie` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `token`
--

DROP TABLE IF EXISTS `token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
INSERT INTO `token` VALUES (1,1,'abo','users','管理员','z5mr8tqvgsf12rmax6qpf6gnq8odnv12','2021-03-12 12:34:52','2021-03-12 14:04:11'),(2,1615553899644,'1','yonghu','用户','atx9a26pzvtpl59ol5zxayjs3qu7hm8v','2021-03-12 12:58:25','2021-03-12 14:04:55');
/*!40000 ALTER TABLE `token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'abo','abo','管理员','2021-03-12 12:31:41');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yonghu`
--

DROP TABLE IF EXISTS `yonghu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuming` varchar(200) NOT NULL COMMENT '用户名',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yonghuming` (`yonghuming`)
) ENGINE=InnoDB AUTO_INCREMENT=1615553899645 DEFAULT CHARSET=utf8 COMMENT='用户';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yonghu`
--

LOCK TABLES `yonghu` WRITE;
/*!40000 ALTER TABLE `yonghu` DISABLE KEYS */;
INSERT INTO `yonghu` VALUES (11,'2021-03-12 12:31:41','用户1','123456','姓名1','男','http://localhost:8080/ssmyj1om/upload/yonghu_touxiang1.jpg','13823888881','773890001@qq.com'),(12,'2021-03-12 12:31:41','用户2','123456','姓名2','男','http://localhost:8080/ssmyj1om/upload/yonghu_touxiang2.jpg','13823888882','773890002@qq.com'),(13,'2021-03-12 12:31:41','用户3','123456','姓名3','男','http://localhost:8080/ssmyj1om/upload/yonghu_touxiang3.jpg','13823888883','773890003@qq.com'),(14,'2021-03-12 12:31:41','用户4','123456','姓名4','男','http://localhost:8080/ssmyj1om/upload/yonghu_touxiang4.jpg','13823888884','773890004@qq.com'),(15,'2021-03-12 12:31:41','用户5','123456','姓名5','男','http://localhost:8080/ssmyj1om/upload/yonghu_touxiang5.jpg','13823888885','773890005@qq.com'),(16,'2021-03-12 12:31:41','用户6','123456','姓名6','男','http://localhost:8080/ssmyj1om/upload/yonghu_touxiang6.jpg','13823888886','773890006@qq.com'),(1615553899644,'2021-03-12 12:58:19','1','1','陈一','女','http://localhost:8080/ssmyj1om/upload/1615553913653.jpg','12312312312','123@qq.com');
/*!40000 ALTER TABLE `yonghu` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-03-13 21:14:38
