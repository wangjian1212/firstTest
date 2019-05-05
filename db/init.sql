CREATE DATABASE  IF NOT EXISTS `exam` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */;
USE `exam`;
-- MySQL dump 10.13  Distrib 8.0.13, for Win64 (x86_64)
--
-- Host: localhost    Database: exam
-- ------------------------------------------------------
-- Server version	8.0.13

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `quest`
--

DROP TABLE IF EXISTS `quest`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `quest` (
  `ID` varchar(50) NOT NULL,
  `title` varchar(200) DEFAULT NULL,
  `content` varchar(1000) DEFAULT NULL,
  `cre_user_id` varchar(50) DEFAULT NULL,
  `cre_user_name` varchar(50) DEFAULT NULL,
  `cre_time` varchar(50) DEFAULT NULL,
  `remark` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quest`
--

LOCK TABLES `quest` WRITE;
/*!40000 ALTER TABLE `quest` DISABLE KEYS */;
INSERT INTO `quest` VALUES ('6254a984-6f19-11e9-b79e-c85b769d7181','测试问题反馈','<p style=\"text-align: center;\"><span style=\"color: #e67e23;\"><strong>反馈问题内容</strong></span></p>','EFF20AACF2ABE82AFCE275F120872DD','guest','2019-05-05 17:32:21',NULL),('69472866-6f1a-11e9-b79e-c85b769d7181','昂崽崽','<p style=\"text-align: center;\"><span style=\"background-color: #e67e23; font-size: 18px;\">this is liang</span></p>','3a8bd46c-6e68-11e9-b79e-c85b769d7181','wangjian','2019-05-05 17:39:42',NULL),('ab46fcbc-6f1a-11e9-b79e-c85b769d7181','拉克斯酱豆腐','<p>ask的肌肤卢卡斯独立访客垃圾肯定舒服了阿喀琉斯京东方</p>','3a8bd46c-6e68-11e9-b79e-c85b769d7181','wangjian','2019-05-05 17:41:33',NULL),('d3bd7f99-6f1a-11e9-b79e-c85b769d7181','新平台怎模样','<p><span style=\"color: #e74c3c;\">无法形容，无法沟通。。。。。</span></p>','3a8bd46c-6e68-11e9-b79e-c85b769d7181','wangjian','2019-05-05 17:42:41',NULL),('f51116a0-6f1a-11e9-b79e-c85b769d7181','如何使用bootstrap-table组件','<p style=\"text-align: left;\"><span style=\"color: #2880b9;\"><strong>我也不会啊。啦啦啦啦啦啦啦啦</strong></span></p>','3a8bd46c-6e68-11e9-b79e-c85b769d7181','wangjian','2019-05-05 17:43:37',NULL);
/*!40000 ALTER TABLE `quest` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `user` (
  `ID` varchar(50) NOT NULL,
  `NAME` varchar(50) DEFAULT NULL,
  `PASSWORD` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `NAME` (`NAME`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES ('3a8bd46c-6e68-11e9-b79e-c85b769d7181','wangjian','c4ca4238a0b923820dcc509a6f75849b'),('b010b414-6e68-11e9-b79e-c85b769d7181','admin','c4ca4238a0b923820dcc509a6f75849b'),('EFF20AACF2ABE82AFCE275F120872DD','guest','e10adc3949ba59abbe56e057f20f883e');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-05-05 18:11:35
