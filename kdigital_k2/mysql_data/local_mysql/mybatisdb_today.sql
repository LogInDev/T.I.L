-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: localhost    Database: mybatisdb
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
-- Table structure for table `today`
--

DROP TABLE IF EXISTS `today`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `today` (
  `num` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `pass` varchar(100) DEFAULT NULL,
  `content` varchar(500) DEFAULT NULL,
  `hit` int DEFAULT '0',
  `REGDATE` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`num`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `today`
--

LOCK TABLES `today` WRITE;
/*!40000 ALTER TABLE `today` DISABLE KEYS */;
INSERT INTO `today` VALUES (1,'나나','1234','눈누난나',0,'2023-03-29 17:34:17'),(2,'공공공공','1234','비밀비밀',0,'2023-03-29 17:35:28'),(3,'일일일`','1234','비밀번호는 일일일\n',0,'2023-03-29 17:36:13'),(4,'이이이이','1234','비밀번호는 dldldldl\n',0,'2023-03-29 17:36:50'),(5,'삼삼삼삼','1234','qlalfqjsghsms 삼삼삼삼',0,'2023-03-29 17:37:24'),(6,'사사사사','4444','사는 안좋아',0,'2023-03-29 17:43:35'),(7,'오오오오','5555','test오\n',0,'2023-03-29 17:45:58'),(8,'오오오?','5555','456789',0,'2023-03-29 17:46:46'),(9,'육육육육','6666','6666',0,'2023-03-29 17:47:34'),(10,'칠칠칠칠','7777','어디까지 갈꺼니....',0,'2023-03-29 17:48:12'),(11,'팔팔파랖','8888','dlvkdlvkdlvkf',0,'2023-03-29 17:49:23'),(12,'아홉은...','9999','두글자인뎅...',0,'2023-03-29 17:49:58'),(13,'십십십십','1010','tlqdms잘써야해...',0,'2023-03-29 17:50:28');
/*!40000 ALTER TABLE `today` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-07-21  9:57:07
