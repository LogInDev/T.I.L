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
-- Table structure for table `recommend`
--

DROP TABLE IF EXISTS `recommend`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `recommend` (
  `search_id` int NOT NULL AUTO_INCREMENT,
  `search_text` varchar(200) NOT NULL,
  `result_text1` varchar(200) DEFAULT NULL,
  `result_text2` varchar(200) DEFAULT NULL,
  `result_text3` varchar(200) DEFAULT NULL,
  `result_text4` varchar(200) DEFAULT NULL,
  `result_text5` varchar(200) DEFAULT NULL,
  UNIQUE KEY `uq_recommend` (`search_text`),
  KEY `search_id` (`search_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recommend`
--

LOCK TABLES `recommend` WRITE;
/*!40000 ALTER TABLE `recommend` DISABLE KEYS */;
INSERT INTO `recommend` VALUES (7,'국수','수목식당','한창희천하일면','다원맛칼국수','우리집칼국수','상도국수'),(8,'마라','신룽푸마라탕숭실대점','신룽푸마라탕','칠기마라샹궈마라탕','진푸중국요리','가야성'),(3,'맥주','역전할머니맥주','생활맥주상도역점','역전할머니맥주서울숭실대점','캐빈','술광장호프치킨'),(4,'중식','바른탕수육','럭키데이','채홍','진상천','진푸중국요리'),(5,'초밥','우마이','상도타코야끼','스시초이','스시톡톡','추실장참치'),(6,'치킨','호치킨','비비큐치킨흑석점','푸라닭흑석점','교촌치킨숭실대점','푸라닭상도1동점'),(1,'커피','커피킹','오카페흑석점','카페','모코커피창고','모코커피'),(9,'토스트','이삭토스트','치킨시대&피자시대','카페로뎀','슈퍼피자','피자플래넷동작점'),(10,'한식','노칩스마켓','도담죽','밀짚모자','푸드딜리버리','고모밥죠');
/*!40000 ALTER TABLE `recommend` ENABLE KEYS */;
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
