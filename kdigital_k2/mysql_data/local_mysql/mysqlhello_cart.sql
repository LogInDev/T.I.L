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
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cart` (
  `cartId` int NOT NULL AUTO_INCREMENT,
  `memberId` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `fokeingredientId` int DEFAULT NULL,
  `storeId` int DEFAULT NULL,
  `cartCount` int DEFAULT NULL,
  `aextratopping` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `asource` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `atopping` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `base` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `bextratopping` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `bsource` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `btopping` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `cartImage` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `ctopping` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `dtopping` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `extramain` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `onePrice` int NOT NULL,
  `point` int DEFAULT NULL,
  `price` int DEFAULT NULL,
  `productName` varchar(100) DEFAULT NULL,
  `setbeverage` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `setside` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `storeAddress` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `storeName` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `total` int DEFAULT NULL,
  `totalPoint` int DEFAULT NULL,
  `totalPrice` int DEFAULT NULL,
  PRIMARY KEY (`cartId`),
  KEY `fokeingredientId` (`fokeingredientId`),
  KEY `memberId` (`memberId`)
) ENGINE=InnoDB AUTO_INCREMENT=427 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart`
--

LOCK TABLES `cart` WRITE;
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
INSERT INTO `cart` VALUES (1,'test',1,2,7,'','','','','','','','','','','',0,0,NULL,NULL,'','','','',NULL,NULL,NULL),(2,'admin',2,3,552,'','','','','','','','','','','',0,0,NULL,NULL,'','','','',NULL,NULL,NULL),(3,'admin',3,3,7,'','','','','','','','','','','',0,0,NULL,NULL,'','','','',NULL,NULL,NULL),(4,'admin',55,12,4,'','','','','','','','','','','',0,0,NULL,NULL,'','','','',NULL,NULL,NULL),(5,'admin',56,12,4,'','','','','','','','','','','',0,0,NULL,NULL,'','','','',NULL,NULL,NULL),(6,'admin',57,1,5,'','','','','','','','','','','',0,0,NULL,NULL,'','','','',NULL,NULL,NULL),(130,'admin@0',150,13,1,'','','','','','','','','','','',0,0,NULL,NULL,'','','','',NULL,NULL,NULL),(189,'admin@0',213,13,2,'','','','','','','','','','','',0,0,NULL,NULL,'','','','',NULL,NULL,NULL),(190,'admin@0',214,13,1,'','','','','','','','','','','',0,0,NULL,NULL,'','','','',NULL,NULL,NULL),(192,'admin@0',216,13,1,'','','','','','','','','','','',0,0,NULL,NULL,'','','','',NULL,NULL,NULL),(194,'admin@0',218,13,1,'','','','','','','','','','','',0,0,NULL,NULL,'','','','',NULL,NULL,NULL),(196,'admin@0',220,13,1,'','','','','','','','','','','',0,0,NULL,NULL,'','','','',NULL,NULL,NULL),(197,'admin@0',221,52,1,'','','','','','','','','','','',0,0,NULL,NULL,'','','','',NULL,NULL,NULL),(199,'admin@0',223,56,1,'','','','','','','','','','','',0,0,NULL,NULL,'','','','',NULL,NULL,NULL),(200,'admin@0',224,13,1,'','','','','','','','','','','',0,0,NULL,NULL,'','','','',NULL,NULL,NULL),(211,'dohoon@1',236,13,7,'','','','','','','','','','','',0,0,NULL,NULL,'','','','',NULL,NULL,NULL),(220,'dohoon@1',248,13,4,'','','','','','','','','','','',0,0,NULL,NULL,'','','','',NULL,NULL,NULL),(227,'dohoon@1',249,13,1,'','','','','','','','','','','',0,0,NULL,NULL,'','','','',NULL,NULL,NULL),(228,'dohoon@1',255,13,7,'','','','','','','','','','','',0,0,NULL,NULL,'','','','',NULL,NULL,NULL),(233,'dohoon@1',270,13,4,'','','','','','','','','','','',0,0,NULL,NULL,'','','','',NULL,NULL,NULL),(234,'dohoon@1',272,13,3,'','','','','','','','','','','',0,0,NULL,NULL,'','','','',NULL,NULL,NULL),(326,'kimdohoon96@naver.com',369,67,7,'','','','','','','','','','','',0,0,NULL,NULL,'','','','',NULL,NULL,NULL),(328,'kimdohoon96@naver.com',370,52,3,'','','','','','','','','','','',0,0,NULL,NULL,'','','','',NULL,NULL,NULL),(332,'kimdohoon96@naver.com',375,13,3,'','','','','','','','','','','',0,0,NULL,NULL,'','','','',NULL,NULL,NULL),(339,'',0,0,4,'foke','후추','파인애플','현미밥 추가',NULL,'스위트 칠리','렌틸콩','/img/product/product-3.png','날치알','레디쉬',NULL,6500,325,26000,'에그 샐러드',NULL,NULL,'서울 중구 명동길 74 (명동2가, 명동성당) ','명동성당',4,1300,26000),(340,'',0,0,5,'foke','스위트 어니언','풋콩','현미밥 추가',NULL,'레드와인식초','적양파','/img/product/product-5.png','날치알','레디쉬',NULL,6500,325,32500,'탄단지 샐러드',NULL,NULL,'서울 중구 명동길 74 (명동2가, 명동성당) ','명동성당',5,1625,32500),(341,'',0,0,3,'foke','렌치','파인애플','현미밥 추가',NULL,'스위트 칠리','풋콩','/img/product/product-4.png','렌틸콩','적양파',NULL,7500,375,22500,'단호박 샐러드',NULL,NULL,'서울 중구 명동길 74 (명동2가, 명동성당) ','명동성당',3,1125,22500),(342,'',0,0,3,'foke','허니머스타드','오이','현미밥 추가',NULL,'스위트 칠리','병아리콩','/img/product/product-6.png','콘샐러드','날치알',NULL,7500,375,22500,'두부 샐러드',NULL,NULL,'서울 중구 명동길 74 (명동2가, 명동성당) ','명동성당',3,1125,22500),(344,'',0,0,2,'foke','후추','파인애플','현미밥 추가',NULL,'스위트 칠리','렌틸콩','/img/product/product-3.png','날치알','레디쉬',NULL,6500,325,13000,'에그 샐러드',NULL,NULL,'서울 중구 명동길 74 (명동2가, 명동성당) ','명동성당',2,650,13000),(345,'',0,0,2,'foke','후추','파인애플','현미밥 추가',NULL,'스위트 칠리','렌틸콩','/img/product/product-3.png','날치알','레디쉬',NULL,6500,325,13000,'에그 샐러드',NULL,NULL,'서울 중구 명동길 74 (명동2가, 명동성당) ','명동성당',2,650,13000),(346,'',0,0,2,'foke','스위트 어니언','풋콩','현미밥 추가',NULL,'레드와인식초','적양파','/img/product/product-5.png','날치알','레디쉬',NULL,6500,325,13000,'탄단지 샐러드',NULL,NULL,'서울 중구 명동길 74 (명동2가, 명동성당) ','명동성당',2,650,13000),(347,'',0,0,2,'foke','렌치','파인애플','현미밥 추가',NULL,'스위트 칠리','풋콩','/img/product/product-4.png','렌틸콩','적양파',NULL,7500,375,15000,'단호박 샐러드',NULL,NULL,'서울 중구 명동길 74 (명동2가, 명동성당) ','명동성당',2,750,15000),(348,'',0,0,2,'foke','스위트 칠리','렌틸콩','현미밥 추가',NULL,'레드와인식초','적양파','/img/product/product-2.png','날치알','레디쉬',NULL,8000,400,16000,'포케 샐러드',NULL,NULL,'서울 종로구 종로 263-1 (종로6가)','동대문역',2,800,16000),(349,'',0,0,2,'foke','후추','파인애플','현미밥 추가',NULL,'스위트 칠리','렌틸콩','/img/product/product-3.png','날치알','레디쉬',NULL,6500,325,13000,'에그 샐러드',NULL,NULL,'서울 중구 명동길 74 (명동2가, 명동성당) ','명동성당',2,650,13000),(350,'',0,0,2,'foke','스위트 어니언','풋콩','현미밥 추가',NULL,'레드와인식초','적양파','/img/product/product-5.png','날치알','레디쉬',NULL,6500,325,13000,'탄단지 샐러드',NULL,NULL,'서울 중구 명동길 74 (명동2가, 명동성당) ','명동성당',2,650,13000),(351,'',0,0,1,'foke','스위트 어니언','풋콩','현미밥 추가',NULL,'레드와인식초','적양파','/img/product/product-5.png','날치알','레디쉬',NULL,9000,450,9000,'탄단지 샐러드','제로콜라','버섯 스프','서울 중구 명동길 74 (명동2가, 명동성당) ','명동성당',1,450,9000),(352,'',0,0,3,'foke','스위트 칠리','렌틸콩','현미밥 추가',NULL,'레드와인식초','적양파','/img/product/product-2.png','날치알','레디쉬',NULL,8000,400,24000,'포케 샐러드',NULL,NULL,'서울 종로구 삼일대로17길 51 (관철동, 스타골드빌딩) 5층','더조은 종각2',3,1200,24000),(353,'',0,0,3,'foke','스위트 칠리','렌틸콩','현미밥 추가',NULL,'레드와인식초','적양파','/img/product/product-1.png','날치알','레디쉬',NULL,7000,350,21000,'닭고기 샐러드',NULL,NULL,'서울 종로구 삼일대로17길 51 (관철동, 스타골드빌딩) 5층','더조은 종각2',3,1050,21000),(354,'',0,0,3,'foke','스위트 칠리','렌틸콩','현미밥 추가',NULL,'레드와인식초','적양파','/img/product/product-1.png','날치알','레디쉬',NULL,7000,350,21000,'닭고기 샐러드',NULL,NULL,'부산 영도구 태종로 107 (영선동1가, 영도오션트라움)','부산영도',3,1050,21000),(355,'',0,0,2,'foke','스위트 칠리','렌틸콩','현미밥 추가',NULL,'레드와인식초','적양파','/img/product/product-1.png','날치알','레디쉬',NULL,7000,350,14000,'닭고기 샐러드',NULL,NULL,'서울 종로구 종로 263-1 (종로6가)','동대문역',2,700,14000),(356,'',0,0,2,'foke','스위트 칠리','렌틸콩','현미밥 추가',NULL,'레드와인식초','적양파','/img/product/product-2.png','날치알','레디쉬',NULL,8000,400,16000,'포케 샐러드',NULL,NULL,'서울 종로구 삼일대로17길 51 (관철동, 스타골드빌딩) 5층','더조은 종각2',2,800,16000),(357,'',0,0,3,'foke','후추','파인애플','현미밥 추가',NULL,'스위트 칠리','렌틸콩','/img/product/product-3.png','날치알','레디쉬',NULL,6500,325,19500,'에그 샐러드',NULL,NULL,'서울 종로구 삼일대로17길 51 (관철동, 스타골드빌딩) 5층','더조은 종각2',3,975,19500),(358,'',0,0,3,'foke','스위트 칠리','렌틸콩','현미밥 추가',NULL,'레드와인식초','적양파','/img/product/product-2.png','날치알','레디쉬',NULL,8000,400,24000,'포케 샐러드',NULL,NULL,'서울 종로구 삼일대로17길 51 (관철동, 스타골드빌딩) 5층','더조은 종각2',3,1200,24000),(360,'',0,0,2,'foke','렌치','파인애플','현미밥 추가',NULL,'스위트 칠리','풋콩','/img/product/product-4.png','렌틸콩','적양파',NULL,7500,375,15000,'단호박 샐러드',NULL,NULL,'서울 종로구 삼일대로17길 51 (관철동, 스타골드빌딩) 5층','더조은 종각2',2,750,15000),(361,'',0,0,2,'foke','스위트 칠리','렌틸콩','현미밥 추가',NULL,'레드와인식초','적양파','/img/product/product-2.png','날치알','레디쉬',NULL,8000,400,16000,'포케 샐러드',NULL,NULL,'서울 종로구 삼일대로17길 51 (관철동, 스타골드빌딩) 5층','더조은 종각2',2,800,16000),(363,'',0,0,3,'foke','렌치','파인애플','현미밥 추가',NULL,'스위트 칠리','풋콩','/img/product/product-4.png','렌틸콩','적양파',NULL,7500,375,22500,'단호박 샐러드',NULL,NULL,'서울 종로구 삼일대로17길 51 (관철동, 스타골드빌딩) 5층','더조은 종각2',3,1125,22500),(364,'',0,0,4,'foke','소금','오이','현미밥 추가',NULL,'렌치','파인애플','/img/product/product-7.png','병아리콩','렌틸콩',NULL,9000,450,36000,'우삼겹메밀면 샐러드',NULL,NULL,'서울 종로구 삼일대로17길 51 (관철동, 스타골드빌딩) 5층','더조은 종각2',4,1800,36000),(365,'',0,0,5,'foke','스위트 칠리','렌틸콩','현미밥 추가',NULL,'레드와인식초','적양파','/img/product/product-1.png','날치알','레디쉬',NULL,7000,350,35000,'닭고기 샐러드',NULL,NULL,'서울 종로구 삼일대로17길 51 (관철동, 스타골드빌딩) 5층','더조은 종각2',5,1750,35000),(366,'',0,0,6,'foke','소금','오이','현미밥 추가',NULL,'렌치','파인애플','/img/product/product-7.png','병아리콩','렌틸콩',NULL,9000,450,54000,'우삼겹메밀면 샐러드',NULL,NULL,'서울 종로구 삼일대로17길 51 (관철동, 스타골드빌딩) 5층','더조은 종각2',6,2700,54000),(367,'',0,0,3,'foke','소금','오이','현미밥 추가',NULL,'렌치','파인애플','/img/product/product-7.png','병아리콩','렌틸콩',NULL,9000,450,27000,'우삼겹메밀면 샐러드',NULL,NULL,'서울 종로구 종로 263-1 (종로6가)','동대문역',3,1350,27000),(368,'',0,0,1,'피코데가요','스위트 칠리','파인애플','현미밥 추가','퀴노아','레드와인식초','풋콩','/img/product/product-2.png','적양파','날치알','참치',14500,725,14500,'포케 샐러드',NULL,NULL,'서울 종로구 삼일대로17길 51 (관철동, 스타골드빌딩) 5층','더조은 종각2',1,725,14500),(370,'',0,0,2,'foke','스위트 칠리','렌틸콩','현미밥 추가',NULL,'레드와인식초','적양파','/img/product/product-2.png','날치알','레디쉬',NULL,8000,400,16000,'포케 샐러드',NULL,NULL,'서울 종로구 삼일대로17길 51 (관철동, 스타골드빌딩) 5층','더조은 종각2',2,800,16000),(371,'testdh',0,0,7,'피코데가요','스위트 칠리','병아리콩','현미밥 추가','퀴노아','레드와인식초','렌틸콩','/img/product/product-5.png','콘샐러드','날치알',NULL,10000,200,70000,'탄단지 샐러드',NULL,NULL,'서울 중구 명동길 74 (명동2가, 명동성당) ','명동성당',7,1400,70000),(372,'',0,0,1,'foke','스위트 칠리','렌틸콩','현미밥 추가',NULL,'레드와인식초','적양파','/img/product/product-1.png','날치알','레디쉬',NULL,7000,350,7000,'닭고기 샐러드',NULL,NULL,'서울 종로구 삼일대로17길 51 (관철동, 스타골드빌딩) 5층','더조은 종각2',1,350,7000),(373,'testdh',0,0,5,'아보카도','허니머스타드','오이','현미밥 추가','퀴노아','스위트 칠리','파인애플','/img/product/product-6.png','병아리콩','렌틸콩',NULL,11000,220,55000,'두부 샐러드',NULL,NULL,'서울 중구 명동길 74 (명동2가, 명동성당) ','명동성당',5,1100,55000),(374,'testdh1',0,0,12,'크랩샐러드','후추','오이','현미밥 추가','건강넛츠','렌치','파인애플','/img/product/product-3.png','병아리콩','렌틸콩',NULL,10000,200,60000,'에그 샐러드',NULL,NULL,'서울 중구 명동길 74 (명동2가, 명동성당) ','명동성당',6,1200,60000),(375,'',0,0,2,'foke','스위트 어니언','풋콩','현미밥 추가',NULL,'레드와인식초','적양파','/img/product/product-5.png','날치알','레디쉬',NULL,6500,325,13000,'탄단지 샐러드',NULL,NULL,'서울 중구 명동길 74 (명동2가, 명동성당) ','명동성당',2,650,13000),(377,'',0,0,3,'foke','스위트 어니언','풋콩','현미밥 추가',NULL,'레드와인식초','적양파','/img/product/product-5.png','날치알','레디쉬',NULL,6500,325,19500,'탄단지 샐러드',NULL,NULL,'서울 중구 명동길 74 (명동2가, 명동성당) ','명동성당',3,975,19500),(378,'',0,0,4,'foke','후추','파인애플','현미밥 추가',NULL,'스위트 칠리','렌틸콩','/img/product/product-3.png','날치알','레디쉬',NULL,6500,325,26000,'에그 샐러드',NULL,NULL,'서울 중구 명동길 74 (명동2가, 명동성당) ','명동성당',4,1300,26000),(379,'',0,0,4,'foke','스위트 어니언','풋콩','현미밥 추가',NULL,'레드와인식초','적양파','/img/product/product-5.png','날치알','레디쉬',NULL,6500,325,26000,'탄단지 샐러드',NULL,NULL,'서울 중구 명동길 74 (명동2가, 명동성당) ','명동성당',4,1300,26000),(381,'',0,0,3,'foke','렌치','파인애플','현미밥 추가',NULL,'스위트 칠리','풋콩','/img/product/product-4.png','렌틸콩','적양파',NULL,7500,375,22500,'단호박 샐러드',NULL,NULL,'서울 종로구 삼일대로17길 51 (관철동, 스타골드빌딩) 5층','더조은 종각2',3,1125,22500),(383,'',0,0,3,'foke','후추','파인애플','현미밥 추가',NULL,'스위트 칠리','렌틸콩','/img/product/product-3.png','날치알','레디쉬',NULL,6500,325,19500,'에그 샐러드',NULL,NULL,'서울 중구 명동길 74 (명동2가, 명동성당) ','명동성당',3,975,19500),(386,'',0,0,3,'foke','후추','파인애플','현미밥 추가',NULL,'스위트 칠리','렌틸콩','/img/product/product-3.png','날치알','레디쉬',NULL,6500,325,19500,'에그 샐러드',NULL,NULL,'서울 중구 명동길 74 (명동2가, 명동성당) ','명동성당',3,975,19500),(387,'',0,0,3,'foke','후추','파인애플','현미밥 추가',NULL,'스위트 칠리','렌틸콩','/img/product/product-3.png','날치알','레디쉬',NULL,6500,325,19500,'에그 샐러드',NULL,NULL,'서울 중구 명동길 74 (명동2가, 명동성당) ','명동성당',3,975,19500),(388,'',0,0,3,'foke','후추','파인애플','현미밥 추가',NULL,'스위트 칠리','렌틸콩','/img/product/product-3.png','날치알','레디쉬',NULL,6500,325,19500,'에그 샐러드',NULL,NULL,'서울 중구 명동길 74 (명동2가, 명동성당) ','명동성당',3,975,19500),(389,'',0,0,14,'foke','후추','파인애플','현미밥 추가',NULL,'스위트 칠리','렌틸콩','/img/product/product-3.png','날치알','레디쉬',NULL,6500,325,91000,'에그 샐러드',NULL,NULL,'서울 중구 명동길 74 (명동2가, 명동성당) ','명동성당',14,4550,91000),(407,'${memberId}',0,0,4,'foke','foke','foke',NULL,NULL,NULL,NULL,'/img/product/product-11.png',NULL,NULL,NULL,4000,80,16000,'콘스프',NULL,NULL,'서울 중구 명동길 74 (명동2가, 명동성당) ','명동성당',4,320,16000),(421,'test1@1',0,0,3,'foke','후추','파인애플','현미밥 추가',NULL,'스위트 칠리','렌틸콩','/img/product/product-3.png','날치알','레디쉬',NULL,6500,325,19500,'에그 샐러드',NULL,NULL,'서울 중구 명동길 74 (명동2가, 명동성당) ','명동성당',3,975,19500),(426,'fokeTest',0,0,13,'퀴노아','스위트 어니언','병아리콩','현미밥 추가',NULL,'레드와인식초','렌틸콩','/img/product/product-3.png','콘샐러드',NULL,NULL,8000,160,64000,'에그 샐러드',NULL,NULL,'서울 중구 명동길 74 (명동2가, 명동성당) ','명동성당',8,1280,64000);
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;
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
