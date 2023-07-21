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
-- Table structure for table `notice`
--

DROP TABLE IF EXISTS `notice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `notice` (
  `noticeId` int NOT NULL AUTO_INCREMENT,
  `noticeTitle` varchar(30) NOT NULL,
  `noticeContent` varchar(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `noticeDate` datetime(6) DEFAULT NULL,
  `noticeState` varchar(10) DEFAULT NULL,
  `noticeimage` varchar(255) DEFAULT NULL,
  `detailImage` varchar(255) DEFAULT NULL,
  `boardImage` varchar(255) DEFAULT NULL,
  `noticeImagefile` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`noticeId`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notice`
--

LOCK TABLES `notice` WRITE;
/*!40000 ALTER TABLE `notice` DISABLE KEYS */;
INSERT INTO `notice` VALUES (67,'굿굿이','굿굿이','2023-07-05 09:45:28.450989',NULL,'bef5d634-92c9-48ba-93bd-cb808da13bda_ddd_resized.jpg','dae1f1ec-c2c5-4425-bc7d-6b3be9222ad5_ccc.jpg',NULL,NULL),(68,'굿굿이2','굿굿이2','2023-07-05 09:45:44.406123',NULL,'28dea446-46b7-4598-a95d-45adfa55f26f_aaaa_resized.jpg','046c4f09-8992-4838-8fa9-64e1b778ab36_bbbb.jpg',NULL,NULL),(69,'굿굿이3','굿굿이3','2023-07-05 09:46:05.703609',NULL,'325193eb-7e90-43d2-91c5-a150368fddd0_img_resized.jpg','a9ea093b-bd0b-4ea9-b48f-87e846d3ab91_ddd.jpg',NULL,NULL),(71,'굿굿이4','굿굿이4','2023-07-05 09:46:44.723521',NULL,'fa767852-48aa-43da-ba30-177ab8e449a4_bbbb_resized.jpg','9c44c816-83d5-4f74-9464-03860f662f99_img.jpg',NULL,NULL),(72,'굿굿이612121212','굿굿이612121212','2023-07-05 09:47:05.176526',NULL,'ac599a88-bb4b-450d-abf5-c54a05461596_ddd_resized.jpg','0a972e18-c5bf-4f6c-b931-ef4c870b3e88_img.jpg',NULL,NULL),(75,'굿굿이','굿굿이','2023-07-12 13:40:45.073288',NULL,NULL,NULL,NULL,NULL),(76,'굿굿이7','굿굿이7','2023-07-12 13:41:08.005109',NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `notice` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-07-21  9:57:10
