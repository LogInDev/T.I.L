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
-- Table structure for table `member`
--

DROP TABLE IF EXISTS `member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `member` (
  `id` varchar(10) NOT NULL,
  `password` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `name` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `gender` varchar(4) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `birth` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `mail` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `phone` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `address` varchar(90) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `regist_day` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `member`
--

LOCK TABLES `member` WRITE;
/*!40000 ALTER TABLE `member` DISABLE KEYS */;
INSERT INTO `member` VALUES ('aaa','1111','aaa','여','1212/01/1','aaa@naver.com','0104561234','서울특별시 중구 명동길 42 (명동2가)','2023-06-08 17:34:50'),('admin','1234','관리자','남','2023/01/1','sss@naver.com','01012345','경기도 김포시 김포한강1로 129(장기동, 김포한강신도시 범양레우스라세느)','2023-03-17 16:50:54'),('ddd','ddd','ddd','남','1999/01/1','sss@naver.com','010123456','경기도 김포시 김포한강1로 129(장기동, 김포한강신도시 범양레우스라세느)','2023-03-17 16:52:06'),('dddddd','dddd','이고아고/>','남','2222/02/1','ㅇㅇㅇㅇ@naver.com','12332','서울특별시 용산구 한강대로53길 1-6(한강로2가)','2023-03-20 12:36:44'),('dddddddd','ddd','dd',NULL,'//','@naver.com','','','2023-03-20 14:50:29'),('hi','1234','하하하하',NULL,'3000/01/15','wawa@naver.com','0103334444','ì¤êµ­','2023-03-17 15:05:01'),('sss','sss','sss',NULL,'//','@naver.com','','','2023-03-20 14:51:03'),('sssss','sss','sss','남','1999/01/2','sss@naver.com','01012341234','경기도 김포시 김포한강1로 129(장기동, 김포한강신도시 범양레우스라세느)','2023-03-20 12:51:07'),('test1234','tet1212','tet','여','2023/01/1','tet1212@naver.com','01012121212','서울특별시 중구 명동길 42 (명동2가)','2023-07-14 14:35:30'),('whang','1234','황황황',NULL,'1988/01/15','whang@naver.com','0103334444','아아아아','2023-03-17 15:02:01'),('zxzx','zxzx','날래날래','남','1999/01/11','zzzz@naver.com','412458','서울특별시 용산구 한강대로30길 1(한강로2가)','2023-03-20 10:54:13');
/*!40000 ALTER TABLE `member` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-07-21  9:57:04
