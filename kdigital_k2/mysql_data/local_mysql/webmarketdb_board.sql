-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: localhost    Database: webmarketdb
-- ------------------------------------------------------
-- Server version	8.0.33

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `board`
--

DROP TABLE IF EXISTS `board`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `board` (
  `num` int NOT NULL AUTO_INCREMENT,
  `id` varchar(10) NOT NULL,
  `name` varchar(10) NOT NULL,
  `subject` varchar(100) NOT NULL,
  `content` text NOT NULL,
  `regist_day` varchar(30) DEFAULT NULL,
  `hit` int DEFAULT NULL,
  `userNum` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`num`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `board`
--

LOCK TABLES `board` WRITE;
/*!40000 ALTER TABLE `board` DISABLE KEYS */;
INSERT INTO `board` VALUES (2,'dada','    다다','    Hello','    Hello World! ㅇㅇㅇ','2023/03/06(17:44:06)',20,'0:0:0:0:0:0:0:1'),(3,'hong','홍','내이름은천송이','우리언니만송이 십만송이 백만송이','2023/03/06(17:46:05)',22,'0:0:0:0:0:0:0:1'),(5,'admin','ê´ë¦¬ì','ì· ëë¬´ ì¢ë¤ì','!','2023/03/17(09:14:59)',0,NULL),(6,'admin','ê´ë¦¬ì','ìì°','ìì°','2023/03/17(09:15:13)',0,NULL),(7,'admin','ê´ë¦¬ì','ë°°ì¡ ë¬¸ì','ì¸ì ìì?','2023/03/17(09:15:27)',0,NULL),(8,'admin','관리자','ㅇㅇㅇㄹㅇㄹ','ㅇㄹㅇㄹㅇㄹ','2023/03/17(11:53:19)',0,NULL),(9,'admin','관리자','ㅇㅇㅇㄹㅇㄹ','ㅇㄹㅇㄹㅇㄹ','2023/03/17(11:54:11)',0,NULL),(10,'admin','관리자','ㅇㅇ','ㅇㅇㅇ','2023/03/17(11:56:40)',0,NULL),(11,'admin','관리자','배송 문의','1111','2023/03/17(14:18:46)',0,NULL),(16,'whang','황황황','ㅇㅇㅇㅇ','ㅇㅇㅇ','2023/03/17(14:37:21)',21,NULL),(18,'whang','황황황','sss','sss','2023/03/17(15:02:14)',3,NULL),(19,'hi','하하하하','수명이단축하고이썬.....','님도ddd','2023/03/17(15:05:13)',11,NULL),(21,'admin','관리자','Re:sss','ddddd\r\n-----Original Message-----\r\n성명 : 황황황\r\n제목 : sss\r\n보낸 날짜: 2023/03/17(15:02:14)\r\n내용 : sss\r\n','2023/03/17(15:18:33)',3,'18'),(23,'admin','관리자','Re:내이름은천송이','ddddd\r\n-----Original Message-----\r\n성명 : 홍\r\n제목 : 내이름은천송이\r\n보낸 날짜: 2023/03/06(17:46:05)\r\n내용 : 우리언니만송이 십만송이 백만송이\r\n','2023/03/17(15:21:41)',1,'3'),(29,'admin','관리자','Re:    Hello','ㅁㄴㅇdddd','2023/03/17(15:27:33)',3,'2'),(30,'admin','관리자','2으어어어어','으어어어어','2023/03/17(15:47:52)',0,NULL),(31,'admin','관리자','Re:수명이단축하고이썬.....','나도22ㅂㅂ\r\n-----Original Message-----\r\n성명 : 하하하하\r\n제목 : 수명이단축하고이썬.....\r\n보낸 날짜: 2023/03/17(15:05:13)\r\n내용 : ㅇㅇㅇ\r\n','2023/03/17(15:48:30)',4,'19'),(32,'sss','sss','호호호호호','나나나나','2023/03/17(16:29:04)',6,NULL),(33,'qqq','qqq','sss','fff','2023/03/17(16:58:43)',10,NULL),(36,'admin','관리자','Re:ㄴㅇㄴㅇ','sdsdsddddd\r\n-----Original Message-----\r\n성명 : qqq\r\n제목 : ㄴㅇㄴㅇ\r\n보낸 날짜: 2023/03/17(16:58:52)\r\n내용 : ㄴㅇㄴ\r\n','2023/03/17(16:59:11)',2,'35'),(37,'dddddd','이고아고/>','나니니닌','ㄴㄴㄴㄴㄴ','2023/03/20(12:46:55)',0,NULL),(38,'sssss','sss','sfsfsf','sfsfs','2023/03/20(12:51:18)',0,NULL),(39,'sssss','sss','sfsf','sfsfsf','2023/03/20(12:51:22)',0,NULL),(40,'sssss','sss','ㅇㅇㅇㅇ - 관리자가 수정함','ㅇㅇㅇㅇ','2023/03/20(12:51:27)',9,NULL),(41,'admin','관리자','Re:호호호호호','aaa\r\n-----Original Message-----\r\n성명 : sss\r\n제목 : 호호호호호\r\n보낸 날짜: 2023/03/17(16:29:04)\r\n내용 : 나나나나\r\n','2023/06/02(18:16:45)',1,'32');
/*!40000 ALTER TABLE `board` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-07-21  9:57:03
