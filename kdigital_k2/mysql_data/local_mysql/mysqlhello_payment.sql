-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: localhost    Database: mysqlhello
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
-- Table structure for table `payment`
--

DROP TABLE IF EXISTS `payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payment` (
  `paymentId` int NOT NULL AUTO_INCREMENT,
  `memberId` varchar(100) DEFAULT NULL,
  `cartId` int DEFAULT NULL,
  `storeId` int DEFAULT NULL,
  `fokeingredientId` int DEFAULT NULL,
  `paymentAddress` varchar(255) DEFAULT NULL,
  `paymentPickup` varchar(255) DEFAULT NULL,
  `point` int DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `paymentDay` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`paymentId`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment`
--

LOCK TABLES `payment` WRITE;
/*!40000 ALTER TABLE `payment` DISABLE KEYS */;
INSERT INTO `payment` VALUES (1,'admin@0',2,2,2,'서울특별시 중구 명동길 74 명동성당 B118호','명동성당',0,'사용안함','2022-05-21 00:00:00.000000'),(3,'test1@1',9,3,0,'서울특별시 중구 명동길 74 명동성당 B118호','명동성당',0,'사용안함',NULL),(4,'test1@1',0,3,4,'서울특별시 중구 명동길 74 명동성당 B118호','명동성당',0,'사용안함','2023-04-25 17:13:36.000000'),(5,'test1@1',0,3,5,'서울특별시 중구 명동길 74 명동성당 B118호','명동성당',0,'사용안함','2023-04-25 17:15:00.000000'),(6,'test1@1',0,1,6,'서울특별시 중구 명동길 74 명동성당 B118호','명동성당',0,'사용안함','2023-04-25 17:16:29.000000'),(7,'admin',1,1,1,'서울 종로 어쩌고','경복궁',0,'사용안함',NULL);
/*!40000 ALTER TABLE `payment` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-07-21  9:57:11
