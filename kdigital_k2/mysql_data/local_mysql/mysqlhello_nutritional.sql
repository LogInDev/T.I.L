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
-- Table structure for table `nutritional`
--

DROP TABLE IF EXISTS `nutritional`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `nutritional` (
  `NutritionalId` int NOT NULL AUTO_INCREMENT,
  `productId` int NOT NULL,
  `productName` varchar(20) NOT NULL,
  `Weight` int NOT NULL,
  `calorie` int NOT NULL,
  `protein` float DEFAULT NULL,
  `saturatedFat` float DEFAULT NULL,
  `sugarContent` float DEFAULT NULL,
  `sodium` float DEFAULT NULL,
  PRIMARY KEY (`NutritionalId`),
  KEY `productId` (`productId`),
  CONSTRAINT `nutritional_ibfk_1` FOREIGN KEY (`productId`) REFERENCES `product` (`productId`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nutritional`
--

LOCK TABLES `nutritional` WRITE;
/*!40000 ALTER TABLE `nutritional` DISABLE KEYS */;
INSERT INTO `nutritional` VALUES (1,1,'포케 샐러드',237,300,26,1.3,8.7,605),(2,3,'닭고기 샐러드',362,152,19.8,0.7,9.7,455),(3,6,'에그 샐러드',346,254,9.7,4.3,7.3,312),(4,8,'단호박 샐러드',245,215,29.8,1.7,7.7,455),(5,9,'탄단지 샐러드',254,245,9.7,4.3,7.3,215),(6,10,'두부 샐러드',249,254,9.7,4.3,7.3,312),(7,13,'우삼겹메밀면 샐러드',346,185,9.7,4.3,7.3,215),(8,4,'콘스프',354,215,29.8,1.7,7.7,455),(9,11,'바질 스프',384,245,9.7,4.3,7.3,215),(10,12,'버섯 스프',249,254,9.7,4.3,7.3,312);
/*!40000 ALTER TABLE `nutritional` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-07-21  9:57:09
