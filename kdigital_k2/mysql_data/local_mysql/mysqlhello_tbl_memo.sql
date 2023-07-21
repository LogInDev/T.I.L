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
-- Table structure for table `tbl_memo`
--

DROP TABLE IF EXISTS `tbl_memo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_memo` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `memoText` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_memo`
--

LOCK TABLES `tbl_memo` WRITE;
/*!40000 ALTER TABLE `tbl_memo` DISABLE KEYS */;
INSERT INTO `tbl_memo` VALUES (1,'Sample...1'),(2,'Sample...2'),(3,'Sample...3'),(4,'Sample...4'),(5,'Sample...5'),(6,'Sample...6'),(7,'Sample...7'),(8,'Sample...8'),(9,'Sample...9'),(10,'Sample...10'),(11,'Sample...1'),(12,'Sample...2'),(13,'Sample...3'),(14,'Sample...4'),(15,'Sample...5'),(16,'Sample...6'),(17,'Sample...7'),(18,'Sample...8'),(19,'Sample...9'),(20,'Sample...10'),(21,'Sample...1'),(22,'Sample...2'),(23,'Sample...3'),(24,'Sample...4'),(25,'Sample...5'),(26,'Sample...6'),(27,'Sample...7'),(28,'Sample...8'),(29,'Sample...9'),(30,'Sample...10'),(31,'Sample...1'),(32,'Sample...2'),(33,'Sample...3'),(34,'Sample...4'),(35,'Sample...5'),(36,'Sample...6'),(37,'Sample...7'),(38,'Sample...8'),(39,'Sample...9'),(40,'Sample...10'),(41,'Sample...1'),(42,'Sample...2'),(43,'Sample...3'),(44,'Sample...4'),(45,'Sample...5'),(46,'Sample...6'),(47,'Sample...7'),(48,'Sample...8'),(49,'Sample...9'),(50,'Sample...10');
/*!40000 ALTER TABLE `tbl_memo` ENABLE KEYS */;
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
