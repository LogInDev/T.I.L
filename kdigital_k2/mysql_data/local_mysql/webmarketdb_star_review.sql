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
-- Table structure for table `star_review`
--

DROP TABLE IF EXISTS `star_review`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `star_review` (
  `m_id` varchar(50) DEFAULT NULL,
  `p_id` int DEFAULT NULL,
  `content` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `star` int DEFAULT NULL,
  `index` int NOT NULL AUTO_INCREMENT,
  `postdate` datetime DEFAULT CURRENT_TIMESTAMP,
  `title` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`index`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `star_review`
--

LOCK TABLES `star_review` WRITE;
/*!40000 ALTER TABLE `star_review` DISABLE KEYS */;
INSERT INTO `star_review` VALUES ('admin',10,'sadasdasdasd',3,19,'2023-03-15 09:56:39','sadsadsadsad'),('admin',10,'sadasdasd',4,20,'2023-03-15 09:56:41','dasdasd'),('admin',39,'asdsadsad',3,21,'2023-03-15 10:45:48','asdsad'),('admin',39,'asdasd',3,22,'2023-03-15 10:45:51','asdasd'),('admin',39,'ㅁㄴㅇㅁㄴㅇ',3,23,'2023-03-15 10:55:01','ㄴㅁㅇㄴㅁㅇ'),('admin',39,'ㅁㄴㅇㅁㄴㅇㅁㄴ',3,24,'2023-03-15 10:55:03','ㄴㅁㅇㅁㄴㅇ'),('admin',39,'ㅁㄴㅇㄴㅁㅇㅁㄴㅇ',3,25,'2023-03-15 10:55:05','ㄴㅁㅇㅁㄴㅇㅁㄴㅇ'),('admin',39,'ㅁㄴㅇㄴㅁㅇㅁㄴ',3,26,'2023-03-15 10:55:07','ㅁㄴㅇㄴㅁㅇㄴㅁ'),('admin',39,'ㅇㅁㄴㅇㅁㄴㅇ',3,27,'2023-03-15 11:17:42','ㅇㄴㅁㅇㅁㄴ'),('admin',39,'ㅇㅁㄴㅇㄴㅁㅇㄴㅁㅇ',3,28,'2023-03-15 11:17:44','ㅁㄴㅇㅁㄴㅇㄴㅁ'),('admin',39,'ㅇㄴㅁㅇㅁㄴㅇ',3,29,'2023-03-15 11:17:46','ㅁㄴㅇㄴㅁㅇㅁㄴ'),('admin',1,'213123',3,30,'2023-03-15 12:23:20','213213'),('admin',1,'213123',3,31,'2023-03-15 12:23:23','123213'),('admin',1,'asd',3,32,'2023-03-15 12:23:27','asd'),('admin',44,'반갑습니다',3,33,'2023-03-15 17:27:19','안녕하세요'),('admin',44,'짱입니다.',5,34,'2023-03-15 17:27:37','엄청좋네요'),('admin',120,'dd',4,35,'2023-03-16 17:22:51','안녕하세요'),('admin',120,'대박입니다.',5,36,'2023-03-16 17:44:03','안녕하세요'),('admin',101,'ㅇㅇ',5,37,'2023-03-16 18:18:34','ㄴㄴㄴㄴㄴㄴㄴㄴㄴ'),('admin',120,'너무 좋네요',3,38,'2023-03-17 14:17:30','안녕하세요'),('admin',120,'ㅇㅇㅇ',3,40,'2023-03-17 16:43:58','ㅇㅇㅇㅇ'),('admin',121,'ㅇㅇㅇ',3,41,'2023-03-20 10:00:23','ㅇㅇㅇ');
/*!40000 ALTER TABLE `star_review` ENABLE KEYS */;
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
