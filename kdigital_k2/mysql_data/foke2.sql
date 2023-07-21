-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: localhost    Database: foke_db
-- ------------------------------------------------------
-- Server version	8.0.33-0ubuntu0.22.04.2

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
-- Table structure for table `base`
--

DROP TABLE IF EXISTS `base`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `base` (
  `baseId` int NOT NULL AUTO_INCREMENT,
  `baseName` varchar(255) NOT NULL,
  `baseType` varchar(255) NOT NULL,
  PRIMARY KEY (`baseId`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `base`
--

LOCK TABLES `base` WRITE;
/*!40000 ALTER TABLE `base` DISABLE KEYS */;
/*!40000 ALTER TABLE `base` ENABLE KEYS */;
UNLOCK TABLES;

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
) ENGINE=InnoDB AUTO_INCREMENT=527 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart`
--

LOCK TABLES `cart` WRITE;
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
INSERT INTO `cart` VALUES (339,'',0,0,4,'foke','후추','파인애플','현미밥 추가',NULL,'스위트 칠리','렌틸콩','/img/product/product-3.png','날치알','레디쉬',NULL,6500,325,26000,'에그 샐러드',NULL,NULL,'서울 중구 명동길 74 (명동2가, 명동성당) ','명동성당',4,1300,26000),(340,'',0,0,5,'foke','스위트 어니언','풋콩','현미밥 추가',NULL,'레드와인식초','적양파','/img/product/product-5.png','날치알','레디쉬',NULL,6500,325,32500,'탄단지 샐러드',NULL,NULL,'서울 중구 명동길 74 (명동2가, 명동성당) ','명동성당',5,1625,32500),(341,'',0,0,3,'foke','렌치','파인애플','현미밥 추가',NULL,'스위트 칠리','풋콩','/img/product/product-4.png','렌틸콩','적양파',NULL,7500,375,22500,'단호박 샐러드',NULL,NULL,'서울 중구 명동길 74 (명동2가, 명동성당) ','명동성당',3,1125,22500),(342,'',0,0,3,'foke','허니머스타드','오이','현미밥 추가',NULL,'스위트 칠리','병아리콩','/img/product/product-6.png','콘샐러드','날치알',NULL,7500,375,22500,'두부 샐러드',NULL,NULL,'서울 중구 명동길 74 (명동2가, 명동성당) ','명동성당',3,1125,22500),(344,'',0,0,2,'foke','후추','파인애플','현미밥 추가',NULL,'스위트 칠리','렌틸콩','/img/product/product-3.png','날치알','레디쉬',NULL,6500,325,13000,'에그 샐러드',NULL,NULL,'서울 중구 명동길 74 (명동2가, 명동성당) ','명동성당',2,650,13000),(345,'',0,0,2,'foke','후추','파인애플','현미밥 추가',NULL,'스위트 칠리','렌틸콩','/img/product/product-3.png','날치알','레디쉬',NULL,6500,325,13000,'에그 샐러드',NULL,NULL,'서울 중구 명동길 74 (명동2가, 명동성당) ','명동성당',2,650,13000),(346,'',0,0,2,'foke','스위트 어니언','풋콩','현미밥 추가',NULL,'레드와인식초','적양파','/img/product/product-5.png','날치알','레디쉬',NULL,6500,325,13000,'탄단지 샐러드',NULL,NULL,'서울 중구 명동길 74 (명동2가, 명동성당) ','명동성당',2,650,13000),(347,'',0,0,2,'foke','렌치','파인애플','현미밥 추가',NULL,'스위트 칠리','풋콩','/img/product/product-4.png','렌틸콩','적양파',NULL,7500,375,15000,'단호박 샐러드',NULL,NULL,'서울 중구 명동길 74 (명동2가, 명동성당) ','명동성당',2,750,15000),(348,'',0,0,2,'foke','스위트 칠리','렌틸콩','현미밥 추가',NULL,'레드와인식초','적양파','/img/product/product-2.png','날치알','레디쉬',NULL,8000,400,16000,'포케 샐러드',NULL,NULL,'서울 종로구 종로 263-1 (종로6가)','동대문역',2,800,16000),(349,'',0,0,2,'foke','후추','파인애플','현미밥 추가',NULL,'스위트 칠리','렌틸콩','/img/product/product-3.png','날치알','레디쉬',NULL,6500,325,13000,'에그 샐러드',NULL,NULL,'서울 중구 명동길 74 (명동2가, 명동성당) ','명동성당',2,650,13000),(350,'',0,0,2,'foke','스위트 어니언','풋콩','현미밥 추가',NULL,'레드와인식초','적양파','/img/product/product-5.png','날치알','레디쉬',NULL,6500,325,13000,'탄단지 샐러드',NULL,NULL,'서울 중구 명동길 74 (명동2가, 명동성당) ','명동성당',2,650,13000),(351,'',0,0,1,'foke','스위트 어니언','풋콩','현미밥 추가',NULL,'레드와인식초','적양파','/img/product/product-5.png','날치알','레디쉬',NULL,9000,450,9000,'탄단지 샐러드','제로콜라','버섯 스프','서울 중구 명동길 74 (명동2가, 명동성당) ','명동성당',1,450,9000),(352,'',0,0,3,'foke','스위트 칠리','렌틸콩','현미밥 추가',NULL,'레드와인식초','적양파','/img/product/product-2.png','날치알','레디쉬',NULL,8000,400,24000,'포케 샐러드',NULL,NULL,'서울 종로구 삼일대로17길 51 (관철동, 스타골드빌딩) 5층','더조은 종각2',3,1200,24000),(353,'',0,0,3,'foke','스위트 칠리','렌틸콩','현미밥 추가',NULL,'레드와인식초','적양파','/img/product/product-1.png','날치알','레디쉬',NULL,7000,350,21000,'닭고기 샐러드',NULL,NULL,'서울 종로구 삼일대로17길 51 (관철동, 스타골드빌딩) 5층','더조은 종각2',3,1050,21000),(354,'',0,0,3,'foke','스위트 칠리','렌틸콩','현미밥 추가',NULL,'레드와인식초','적양파','/img/product/product-1.png','날치알','레디쉬',NULL,7000,350,21000,'닭고기 샐러드',NULL,NULL,'부산 영도구 태종로 107 (영선동1가, 영도오션트라움)','부산영도',3,1050,21000),(355,'',0,0,2,'foke','스위트 칠리','렌틸콩','현미밥 추가',NULL,'레드와인식초','적양파','/img/product/product-1.png','날치알','레디쉬',NULL,7000,350,14000,'닭고기 샐러드',NULL,NULL,'서울 종로구 종로 263-1 (종로6가)','동대문역',2,700,14000),(356,'',0,0,2,'foke','스위트 칠리','렌틸콩','현미밥 추가',NULL,'레드와인식초','적양파','/img/product/product-2.png','날치알','레디쉬',NULL,8000,400,16000,'포케 샐러드',NULL,NULL,'서울 종로구 삼일대로17길 51 (관철동, 스타골드빌딩) 5층','더조은 종각2',2,800,16000),(357,'',0,0,3,'foke','후추','파인애플','현미밥 추가',NULL,'스위트 칠리','렌틸콩','/img/product/product-3.png','날치알','레디쉬',NULL,6500,325,19500,'에그 샐러드',NULL,NULL,'서울 종로구 삼일대로17길 51 (관철동, 스타골드빌딩) 5층','더조은 종각2',3,975,19500),(358,'',0,0,3,'foke','스위트 칠리','렌틸콩','현미밥 추가',NULL,'레드와인식초','적양파','/img/product/product-2.png','날치알','레디쉬',NULL,8000,400,24000,'포케 샐러드',NULL,NULL,'서울 종로구 삼일대로17길 51 (관철동, 스타골드빌딩) 5층','더조은 종각2',3,1200,24000),(359,'test123',0,0,4,'퀴노아','허니머스타드','병아리콩','현미밥 추가',NULL,'스위트 칠리','렌틸콩','/img/product/product-4.png','콘샐러드','날치알',NULL,9000,180,36000,'단호박 샐러드',NULL,NULL,'서울 중구 명동길 74 (명동2가, 명동성당) ','명동성당',4,720,36000),(360,'',0,0,2,'foke','렌치','파인애플','현미밥 추가',NULL,'스위트 칠리','풋콩','/img/product/product-4.png','렌틸콩','적양파',NULL,7500,375,15000,'단호박 샐러드',NULL,NULL,'서울 종로구 삼일대로17길 51 (관철동, 스타골드빌딩) 5층','더조은 종각2',2,750,15000),(361,'',0,0,2,'foke','스위트 칠리','렌틸콩','현미밥 추가',NULL,'레드와인식초','적양파','/img/product/product-2.png','날치알','레디쉬',NULL,8000,400,16000,'포케 샐러드',NULL,NULL,'서울 종로구 삼일대로17길 51 (관철동, 스타골드빌딩) 5층','더조은 종각2',2,800,16000),(363,'',0,0,3,'foke','렌치','파인애플','현미밥 추가',NULL,'스위트 칠리','풋콩','/img/product/product-4.png','렌틸콩','적양파',NULL,7500,375,22500,'단호박 샐러드',NULL,NULL,'서울 종로구 삼일대로17길 51 (관철동, 스타골드빌딩) 5층','더조은 종각2',3,1125,22500),(364,'',0,0,4,'foke','소금','오이','현미밥 추가',NULL,'렌치','파인애플','/img/product/product-7.png','병아리콩','렌틸콩',NULL,9000,450,36000,'우삼겹메밀면 샐러드',NULL,NULL,'서울 종로구 삼일대로17길 51 (관철동, 스타골드빌딩) 5층','더조은 종각2',4,1800,36000),(365,'',0,0,5,'foke','스위트 칠리','렌틸콩','현미밥 추가',NULL,'레드와인식초','적양파','/img/product/product-1.png','날치알','레디쉬',NULL,7000,350,35000,'닭고기 샐러드',NULL,NULL,'서울 종로구 삼일대로17길 51 (관철동, 스타골드빌딩) 5층','더조은 종각2',5,1750,35000),(366,'',0,0,6,'foke','소금','오이','현미밥 추가',NULL,'렌치','파인애플','/img/product/product-7.png','병아리콩','렌틸콩',NULL,9000,450,54000,'우삼겹메밀면 샐러드',NULL,NULL,'서울 종로구 삼일대로17길 51 (관철동, 스타골드빌딩) 5층','더조은 종각2',6,2700,54000),(367,'',0,0,3,'foke','소금','오이','현미밥 추가',NULL,'렌치','파인애플','/img/product/product-7.png','병아리콩','렌틸콩',NULL,9000,450,27000,'우삼겹메밀면 샐러드',NULL,NULL,'서울 종로구 종로 263-1 (종로6가)','동대문역',3,1350,27000),(368,'',0,0,1,'피코데가요','스위트 칠리','파인애플','현미밥 추가','퀴노아','레드와인식초','풋콩','/img/product/product-2.png','적양파','날치알','참치',14500,725,14500,'포케 샐러드',NULL,NULL,'서울 종로구 삼일대로17길 51 (관철동, 스타골드빌딩) 5층','더조은 종각2',1,725,14500),(369,'test1-1',0,0,4,'피코데가요','스위트 칠리','병아리콩','현미밥 추가','퀴노아','레드와인식초','렌틸콩','/img/product/product-5.png','콘샐러드','날치알',NULL,10000,200,40000,'탄단지 샐러드',NULL,NULL,'서울 중구 명동길 74 (명동2가, 명동성당) ','명동성당',4,800,40000),(370,'',0,0,2,'foke','스위트 칠리','렌틸콩','현미밥 추가',NULL,'레드와인식초','적양파','/img/product/product-2.png','날치알','레디쉬',NULL,8000,400,16000,'포케 샐러드',NULL,NULL,'서울 종로구 삼일대로17길 51 (관철동, 스타골드빌딩) 5층','더조은 종각2',2,800,16000),(371,'testdh',0,0,7,'피코데가요','스위트 칠리','병아리콩','현미밥 추가','퀴노아','레드와인식초','렌틸콩','/img/product/product-5.png','콘샐러드','날치알',NULL,10000,200,70000,'탄단지 샐러드',NULL,NULL,'서울 중구 명동길 74 (명동2가, 명동성당) ','명동성당',7,1400,70000),(372,'',0,0,1,'foke','스위트 칠리','렌틸콩','현미밥 추가',NULL,'레드와인식초','적양파','/img/product/product-1.png','날치알','레디쉬',NULL,7000,350,7000,'닭고기 샐러드',NULL,NULL,'서울 종로구 삼일대로17길 51 (관철동, 스타골드빌딩) 5층','더조은 종각2',1,350,7000),(373,'testdh',0,0,5,'아보카도','허니머스타드','오이','현미밥 추가','퀴노아','스위트 칠리','파인애플','/img/product/product-6.png','병아리콩','렌틸콩',NULL,11000,220,55000,'두부 샐러드',NULL,NULL,'서울 중구 명동길 74 (명동2가, 명동성당) ','명동성당',5,1100,55000),(374,'testdh1',0,0,6,'크랩샐러드','후추','오이','현미밥 추가','건강넛츠','렌치','파인애플','/img/product/product-3.png','병아리콩','렌틸콩',NULL,10000,200,60000,'에그 샐러드',NULL,NULL,'서울 중구 명동길 74 (명동2가, 명동성당) ','명동성당',6,1200,60000),(375,'',0,0,2,'foke','스위트 어니언','풋콩','현미밥 추가',NULL,'레드와인식초','적양파','/img/product/product-5.png','날치알','레디쉬',NULL,6500,325,13000,'탄단지 샐러드',NULL,NULL,'서울 중구 명동길 74 (명동2가, 명동성당) ','명동성당',2,650,13000),(377,'',0,0,3,'foke','스위트 어니언','풋콩','현미밥 추가',NULL,'레드와인식초','적양파','/img/product/product-5.png','날치알','레디쉬',NULL,6500,325,19500,'탄단지 샐러드',NULL,NULL,'서울 중구 명동길 74 (명동2가, 명동성당) ','명동성당',3,975,19500),(378,'',0,0,4,'foke','후추','파인애플','현미밥 추가',NULL,'스위트 칠리','렌틸콩','/img/product/product-3.png','날치알','레디쉬',NULL,6500,325,26000,'에그 샐러드',NULL,NULL,'서울 중구 명동길 74 (명동2가, 명동성당) ','명동성당',4,1300,26000),(379,'',0,0,4,'foke','스위트 어니언','풋콩','현미밥 추가',NULL,'레드와인식초','적양파','/img/product/product-5.png','날치알','레디쉬',NULL,6500,325,26000,'탄단지 샐러드',NULL,NULL,'서울 중구 명동길 74 (명동2가, 명동성당) ','명동성당',4,1300,26000),(381,'',0,0,3,'foke','렌치','파인애플','현미밥 추가',NULL,'스위트 칠리','풋콩','/img/product/product-4.png','렌틸콩','적양파',NULL,7500,375,22500,'단호박 샐러드',NULL,NULL,'서울 종로구 삼일대로17길 51 (관철동, 스타골드빌딩) 5층','더조은 종각2',3,1125,22500),(383,'',0,0,3,'foke','후추','파인애플','현미밥 추가',NULL,'스위트 칠리','렌틸콩','/img/product/product-3.png','날치알','레디쉬',NULL,6500,325,19500,'에그 샐러드',NULL,NULL,'서울 중구 명동길 74 (명동2가, 명동성당) ','명동성당',3,975,19500),(386,'',0,0,3,'foke','후추','파인애플','현미밥 추가',NULL,'스위트 칠리','렌틸콩','/img/product/product-3.png','날치알','레디쉬',NULL,6500,325,19500,'에그 샐러드',NULL,NULL,'서울 중구 명동길 74 (명동2가, 명동성당) ','명동성당',3,975,19500),(387,'',0,0,3,'foke','후추','파인애플','현미밥 추가',NULL,'스위트 칠리','렌틸콩','/img/product/product-3.png','날치알','레디쉬',NULL,6500,325,19500,'에그 샐러드',NULL,NULL,'서울 중구 명동길 74 (명동2가, 명동성당) ','명동성당',3,975,19500),(388,'',0,0,3,'foke','후추','파인애플','현미밥 추가',NULL,'스위트 칠리','렌틸콩','/img/product/product-3.png','날치알','레디쉬',NULL,6500,325,19500,'에그 샐러드',NULL,NULL,'서울 중구 명동길 74 (명동2가, 명동성당) ','명동성당',3,975,19500),(389,'',0,0,14,'foke','후추','파인애플','현미밥 추가',NULL,'스위트 칠리','렌틸콩','/img/product/product-3.png','날치알','레디쉬',NULL,6500,325,91000,'에그 샐러드',NULL,NULL,'서울 중구 명동길 74 (명동2가, 명동성당) ','명동성당',14,4550,91000),(398,'testdh1',0,0,7,'퀴노아','스위트 칠리','병아리콩','현미밥 추가','건강넛츠',NULL,'콘샐러드','/img/product/product-6.png',NULL,NULL,NULL,10500,210,73500,'두부 샐러드',NULL,NULL,'서울 중구 명동길 74 (명동2가, 명동성당) ','명동성당',7,1470,73500),(399,'testdh1',0,0,5,'피코데가요','허니머스타드','병아리콩','현미밥 추가','퀴노아','스위트 칠리','적양파','/img/product/product-5.png','콘샐러드','날치알',NULL,10000,200,50000,'탄단지 샐러드',NULL,NULL,'서울 중구 명동길 74 (명동2가, 명동성당) ','명동성당',5,1000,50000),(405,'testdh1',0,0,1,'foke','foke','foke',NULL,NULL,NULL,NULL,'/img/product/product-12.png',NULL,NULL,NULL,5000,100,5000,'버섯 스프',NULL,NULL,'서울 중구 명동길 74 (명동2가, 명동성당) ','명동성당',1,100,5000),(406,'testdh1',0,0,8,'foke','foke','foke',NULL,NULL,NULL,NULL,'/img/product/product-11.png',NULL,NULL,NULL,4000,80,32000,'콘스프',NULL,NULL,'서울 중구 명동길 74 (명동2가, 명동성당) ','명동성당',8,640,32000),(407,'${memberId}',0,0,9,'foke','foke','foke',NULL,NULL,NULL,NULL,'/img/product/product-11.png',NULL,NULL,NULL,4000,80,16000,'콘스프',NULL,NULL,'서울 중구 명동길 74 (명동2가, 명동성당) ','명동성당',4,320,16000),(409,'do__ri@naver.com',0,0,1,'foke','후추','파인애플','현미밥 추가',NULL,'스위트 칠리','렌틸콩','/img/product/product-3.png','날치알','레디쉬',NULL,6500,130,6500,'에그 샐러드',NULL,NULL,'서울 중구 명동길 74 (명동2가, 명동성당) ','명동성당',1,130,6500),(426,'test1@1',0,0,1,'foke','스위트 칠리','렌틸콩','현미밥 추가',NULL,'레드와인식초','적양파','/img/product/product-2.png','날치알','레디쉬',NULL,8000,160,8000,'포케 샐러드',NULL,NULL,'	\r\n서울특별시 종로구 사직로 115','경복궁',1,160,8000),(430,'kimdohoon96@naver.com',0,0,8,NULL,'소금','오이','현미밥 추가',NULL,'렌치','파인애플','/img/product/product-7.png','병아리콩','렌틸콩',NULL,9000,180,36000,'우삼겹메밀면 샐러드',NULL,NULL,'서울 중구 명동길 74 (명동2가, 명동성당) ','명동성당',4,720,36000),(433,'test1@1',0,0,1,'foke','후추','파인애플','현미밥 추가',NULL,'스위트 칠리','렌틸콩','/img/product/product-3.png','날치알','레디쉬',NULL,6500,130,6500,'에그 샐러드',NULL,NULL,'	\r\n서울특별시 종로구 사직로 115','경복궁',1,130,6500),(434,'kimdohoon96@naver.com',0,0,8,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'/img/product/product-9.png',NULL,NULL,NULL,2000,40,10000,'제로콜라',NULL,NULL,'서울 중구 명동길 74 (명동2가, 명동성당) ','명동성당',5,200,10000),(435,'kimdohoon96@naver.com',0,0,5,NULL,'허니머스타드','오이','현미밥 추가',NULL,'스위트 칠리','병아리콩','/img/product/product-6.png','콘샐러드','날치알',NULL,7500,150,37500,'두부 샐러드',NULL,NULL,'서울 종로구 우정국로 69 (수송동, 동일빌딩) 1층','안국',5,750,37500),(436,'test1@1',0,0,1,'아보카도','소금','병아리콩','현미밥 추가','퀴노아','레드와인식초',NULL,'/img/product/product-2.png',NULL,NULL,'참치',14500,290,14500,'포케 샐러드',NULL,NULL,'서울 종로구 종로 263-1 (종로6가)','동대문역',1,290,14500),(437,'test1@1',0,0,1,NULL,'후추','파인애플','현미밥 추가',NULL,'스위트 칠리','렌틸콩','/img/product/product-3.png','날치알','레디쉬',NULL,6500,130,6500,'에그 샐러드',NULL,NULL,'서울 중구 명동길 74 (명동2가, 명동성당) ','명동성당',1,130,6500),(441,'kimdohoon96@naver.com',0,0,5,NULL,'스위트 어니언','풋콩','현미밥 추가',NULL,'레드와인식초','적양파','/img/product/product-5.png','날치알','레디쉬',NULL,6500,130,32500,'탄단지 샐러드',NULL,NULL,'서울 종로구 우정국로 69 (수송동, 동일빌딩) 1층','안국',5,650,32500),(442,'kimdohoon96@naver.com',0,0,3,NULL,'후추','파인애플','현미밥 추가',NULL,'스위트 칠리','렌틸콩','/img/product/product-3.png','날치알','레디쉬',NULL,6500,130,19500,'에그 샐러드',NULL,NULL,'서울 종로구 우정국로 69 (수송동, 동일빌딩) 1층','안국',3,390,19500),(445,'test',0,0,2,'퀴노아','스위트 칠리','렌틸콩','현미밥 추가','건강넛츠','레드와인식초','날치알','/img/product/product-6.png',NULL,NULL,'부채살',13500,270,27000,'두부 샐러드','제로콜라','바질 스프','서울 중구 명동길 74 (명동2가, 명동성당) ','명동성당',2,540,27000),(446,'kimdohoon96@naver.com',0,0,41,NULL,'스위트 칠리','렌틸콩','현미밥 추가',NULL,'레드와인식초','적양파','/img/product/product-1.png','날치알','레디쉬',NULL,7000,140,28000,'닭고기 샐러드',NULL,NULL,'서울 종로구 우정국로 69 (수송동, 동일빌딩) 1층','안국',4,560,28000),(447,'kimdohoon96@naver.com',0,0,12,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'/img/product/product-11.png',NULL,NULL,NULL,4000,80,16000,'콘스프',NULL,NULL,'서울 종로구 우정국로 69 (수송동, 동일빌딩) 1층','안국',4,320,16000),(449,'kimdohoon96@naver.com',0,0,1,NULL,'후추','파인애플','현미밥 추가',NULL,'스위트 칠리','렌틸콩','/img/product/product-3.png','날치알','레디쉬',NULL,6500,130,6500,'에그 샐러드',NULL,NULL,'서울 중구 명동길 74 (명동2가, 명동성당) ','명동성당',1,130,6500),(451,'kimdohoon96@naver.com',0,0,7,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'/img/product/product-8.png',NULL,NULL,NULL,2000,40,14000,'제로사이다',NULL,NULL,'서울 종로구 우정국로 69 (수송동, 동일빌딩) 1층','안국',7,280,14000),(452,'kimdohoon96@naver.com',0,0,66,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'/img/product/product-10.png',NULL,NULL,NULL,4500,90,18000,'바질 스프',NULL,NULL,'	\r\n대전광역시 중구 대종로 488번길 25','대전은행',4,360,18000),(456,'kimdohoon96@naver.com',0,0,3,NULL,'스위트 어니언','풋콩','현미밥 추가',NULL,'레드와인식초','적양파','/img/product/product-5.png','날치알','레디쉬',NULL,6500,130,19500,'탄단지 샐러드',NULL,NULL,'서울 중구 명동길 74 (명동2가, 명동성당) ','명동성당',3,390,19500),(457,'kimdohoon96@naver.com',0,0,6,NULL,'스위트 어니언','풋콩','현미밥 추가',NULL,'레드와인식초','적양파','/img/product/product-5.png','날치알','레디쉬',NULL,6500,130,39000,'탄단지 샐러드',NULL,NULL,'부산 영도구 태종로 107 (영선동1가, 영도오션트라움)','부산영도',6,780,39000),(458,'kimdohoon96@naver.com',0,0,45,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'/img/product/product-12.png',NULL,NULL,NULL,5000,100,35000,'버섯 스프',NULL,NULL,'서울 종로구 율곡로 67 (계동) 1층','북촌',7,700,35000),(459,'dbdl202@naver.com',0,0,3,'낫또','소금','렌틸콩','현미밥 추가','아보카도',NULL,'적양파','/img/product/product-5.png','콘샐러드','날치알','참치',13500,270,40500,'탄단지 샐러드','제로사이다','바질 스프','서울 중구 명동길 74 (명동2가, 명동성당) ','명동성당',3,810,40500),(460,'dbdl202@naver.com',0,0,5,'피코데가요','사우스웨스트 치폴레','풋콩','샐러드만','퀴노아','레드와인식초','적양파','/img/product/product-4.png','날치알','레디쉬','새우',14000,280,70000,'단호박 샐러드','제로콜라','콘스프','서울 중구 명동길 74 (명동2가, 명동성당) ','명동성당',5,1400,70000),(461,'kimdohoon96@naver.com',0,0,6,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'/img/product/product-9.png',NULL,NULL,NULL,2000,40,12000,'제로콜라',NULL,NULL,'서울 종로구 우정국로 69 (수송동, 동일빌딩) 1층','안국',6,240,12000),(467,'kimdohoon96@naver.com',0,0,29,NULL,'렌치','파인애플','현미밥 추가',NULL,'스위트 칠리','풋콩','/img/product/product-4.png','렌틸콩','적양파',NULL,7500,150,37500,'단호박 샐러드',NULL,NULL,'서울 중구 명동길 74 (명동2가, 명동성당) ','명동성당',5,750,37500),(472,'dbdl202@naver.com',0,0,1,NULL,'렌치','파인애플','현미밥 추가',NULL,'스위트 칠리','풋콩','/img/product/product-4.png','렌틸콩','적양파',NULL,7500,150,7500,'단호박 샐러드',NULL,NULL,'	\r\n서울특별시 종로구 사직로 115','경복궁',1,150,7500),(473,'dbdl202@naver.com',0,0,1,NULL,'후추','파인애플','현미밥 추가',NULL,'스위트 칠리','렌틸콩','/img/product/product-3.png','날치알','레디쉬',NULL,6500,130,6500,'에그 샐러드',NULL,NULL,'	\r\n서울특별시 종로구 사직로 115','경복궁',1,130,6500),(475,'dbdl202@naver.com',0,0,1,NULL,'스위트 어니언','풋콩','현미밥 추가',NULL,'레드와인식초','적양파','/img/product/product-5.png','날치알','레디쉬',NULL,6500,130,6500,'탄단지 샐러드',NULL,NULL,'	\r\n서울특별시 동대문구 왕산로 214','청량리역사',1,130,6500),(476,'rltmdtj@naver.com',0,0,1,NULL,'스위트 칠리','렌틸콩','현미밥 추가',NULL,'레드와인식초','적양파','/img/product/product-1.png','날치알','레디쉬',NULL,7000,140,7000,'닭고기 샐러드',NULL,NULL,'서울 종로구 삼일대로17길 51 (관철동, 스타골드빌딩) 5층','더조은 종각2',1,140,7000),(477,'kimdohoon96@naver.com',0,0,14,NULL,'후추','파인애플','현미밥 추가',NULL,'스위트 칠리','렌틸콩','/img/product/product-3.png','날치알','레디쉬',NULL,6500,130,6500,'에그 샐러드',NULL,NULL,'서울 종로구 종로 263-1 (종로6가)','동대문역',1,130,6500),(481,'fhazlt303@naver.com',0,0,1,'피코데가요','스위트 칠리','렌틸콩','샐러드만','퀴노아','레드와인식초','적양파','/img/product/product-1.png','날치알','레디쉬','연어',16000,320,16000,'닭고기 샐러드','제로콜라','버섯 스프','서울 종로구 종로 263-1 (종로6가)','동대문역',1,320,16000),(482,'fhazlt303@naver.com',0,0,1,'아보카도','스위트 칠리','콘샐러드','샐러드만',NULL,'레드와인식초','날치알','/img/product/product-2.png','올리브',NULL,'참치',13000,260,13000,'포케 샐러드',NULL,NULL,NULL,NULL,1,260,13000),(486,'fhazlt303@naver.com',0,0,1,'낫또','스위트 칠리','렌틸콩','샐러드만','아보카도','레드와인식초','적양파','/img/product/product-1.png','날치알','레디쉬','참치',16500,330,16500,'닭고기 샐러드','제로콜라','콘스프','부산 영도구 태종로 107 (영선동1가, 영도오션트라움)','부산영도',1,330,16500),(487,'fhazlt303@naver.com',0,0,1,NULL,'후추','파인애플','현미밥 추가',NULL,'레드와인식초',NULL,'/img/product/product-6.png',NULL,NULL,'참치',10500,210,10500,'두부 샐러드',NULL,NULL,NULL,NULL,1,210,10500),(488,'fhazlt303@naver.com',0,0,1,NULL,'허니머스타드','오이','샐러드만',NULL,NULL,'파인애플','/img/product/product-7.png','풋콩','병아리콩','참치',12000,240,12000,'우삼겹메밀면 샐러드',NULL,NULL,NULL,NULL,1,240,12000),(489,'fhazlt303@naver.com',0,0,1,NULL,'레드와인식초','파인애플','현미밥 추가',NULL,NULL,'풋콩','/img/product/product-3.png',NULL,NULL,'참치',9500,190,9500,'에그 샐러드',NULL,NULL,'서울 종로구 우정국로 69 (수송동, 동일빌딩) 1층','안국',1,190,9500),(492,'whgdmsdpseld@naver.com',0,0,2,NULL,'스위트 어니언','풋콩','현미밥 추가',NULL,'레드와인식초','적양파','/img/product/product-5.png','날치알','레디쉬',NULL,6500,130,19500,'탄단지 샐러드',NULL,NULL,'서울 중구 명동길 74 (명동2가, 명동성당) ','명동성당',3,390,19500),(524,'whgdmsdpseld@naver.com',0,0,5,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'/img/product/product-11.png',NULL,NULL,NULL,4000,80,12000,'콘스프',NULL,NULL,'	\r\n서울특별시 동대문구 왕산로 214','청량리역사',3,240,12000),(525,'fhazlt303@naver.com',0,0,1,'아보카도','스위트 어니언','풋콩','샐러드만','퀴노아','레드와인식초','적양파','/img/product/product-5.png','날치알','레디쉬','참치',13000,260,13000,'탄단지 샐러드',NULL,NULL,NULL,NULL,1,260,13000),(526,'fhazlt303@naver.com',0,0,1,NULL,'후추','풋콩','현미밥 추가',NULL,'렌치','적양파','/img/product/product-4.png',NULL,NULL,NULL,7500,150,7500,'단호박 샐러드',NULL,NULL,'서울 종로구 종로 263-1 (종로6가)','동대문역',1,150,7500);
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `extramain`
--

DROP TABLE IF EXISTS `extramain`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `extramain` (
  `extramainId` int NOT NULL AUTO_INCREMENT,
  `extramainName` varchar(255) NOT NULL,
  `extramainType` varchar(255) NOT NULL,
  `extramainPrice` int NOT NULL,
  PRIMARY KEY (`extramainId`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `extramain`
--

LOCK TABLES `extramain` WRITE;
/*!40000 ALTER TABLE `extramain` DISABLE KEYS */;
INSERT INTO `extramain` VALUES (1,'연어','메인추가',3000),(2,'참치','메인추가',3000),(3,'새우','메인추가',3000),(4,'부채살','메인추가',3000);
/*!40000 ALTER TABLE `extramain` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `extratopping`
--

DROP TABLE IF EXISTS `extratopping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `extratopping` (
  `extratoppingId` int NOT NULL AUTO_INCREMENT,
  `extratoppingName` varchar(255) NOT NULL,
  `extratoppingType` varchar(255) NOT NULL,
  `extratoppingPrice` int NOT NULL,
  PRIMARY KEY (`extratoppingId`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `extratopping`
--

LOCK TABLES `extratopping` WRITE;
/*!40000 ALTER TABLE `extratopping` DISABLE KEYS */;
INSERT INTO `extratopping` VALUES (1,'낫또','추가토핑',2000),(2,'아보카도','추가토핑',2000),(3,'크랩샐러드','추가토핑',2000),(4,'피코데가요','추가토핑',2000),(5,'퀴노아','추가토핑',1500),(6,'건강넛츠','추가토핑',1500);
/*!40000 ALTER TABLE `extratopping` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fokeingredient`
--

DROP TABLE IF EXISTS `fokeingredient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fokeingredient` (
  `fokeingredientId` int NOT NULL AUTO_INCREMENT,
  `memberId` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `productName` varchar(100) NOT NULL,
  `base` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `atopping` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `btopping` varchar(100) DEFAULT NULL,
  `ctopping` varchar(100) DEFAULT NULL,
  `dtopping` varchar(100) DEFAULT NULL,
  `asource` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `bsource` varchar(100) DEFAULT NULL,
  `aextratopping` varchar(100) DEFAULT NULL,
  `bextratopping` varchar(100) DEFAULT NULL,
  `extramain` varchar(100) DEFAULT NULL,
  `setbeverage` varchar(100) DEFAULT NULL,
  `setside` varchar(100) DEFAULT NULL,
  `total` int NOT NULL DEFAULT '1',
  `price` int NOT NULL DEFAULT '0',
  `onePrice` int DEFAULT '0',
  `productImage` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`fokeingredientId`),
  KEY `memberId` (`memberId`)
) ENGINE=InnoDB AUTO_INCREMENT=381 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fokeingredient`
--

LOCK TABLES `fokeingredient` WRITE;
/*!40000 ALTER TABLE `fokeingredient` DISABLE KEYS */;
INSERT INTO `fokeingredient` VALUES (1,'admin@0','우삼겹메밀면 샐러드','현미밥 추가','오이','파인애플','병아리콩','렌틸콩','소금','렌치','낫또','아보카도','연어','제로콜라','버섯 스프',1,16000,16000,'/img/product/product-7.png'),(2,'admin@0','두부 샐러드','현미밥 추가','오이','병아리콩','콘샐러드','날치알','허니머스타드','스위트 칠리','피코데가요','퀴노아','새우',NULL,NULL,1,14000,14000,'/img/product/product-6.png'),(3,'admin@0','탄단지 샐러드','현미밥 추가','풋콩','적양파','날치알','레디쉬','스위트 어니언','레드와인식초','크랩샐러드','퀴노아','부채살',NULL,NULL,1,13000,13000,'/img/product/product-5.png'),(4,'admin@0','단호박 샐러드','현미밥 추가','파인애플','풋콩','렌틸콩','적양파','렌치','스위트 칠리','아보카도','퀴노아','새우',NULL,NULL,1,14000,14000,'/img/product/product-4.png'),(5,'admin@0','에그 샐러드','샐러드만','파인애플','렌틸콩','날치알','레디쉬','후추','스위트 칠리','아보카도','크랩샐러드','참치',NULL,NULL,1,13500,13500,'/img/product/product-3.png'),(6,'admin@0','닭고기 샐러드','현미밥 추가','렌틸콩','적양파','날치알','레디쉬','스위트 칠리','레드와인식초','낫또','아보카도','새우',NULL,NULL,1,14000,14000,'/img/product/product-1.png'),(7,'admin@0','포케 샐러드','현미밥 추가','렌틸콩','적양파','날치알','레디쉬','스위트 칠리','레드와인식초','피코데가요','퀴노아','새우',NULL,NULL,1,14500,14500,'/img/product/product-2.png'),(8,'test1@1','에그 샐러드','현미밥 추가','날치알',NULL,NULL,NULL,'레드와인식초',NULL,'아보카도','퀴노아','참치','제로콜라','콘스프',5,65000,13000,'/img/product/product-3.png'),(9,'test1@1','에그 샐러드','현미밥 추가','오이','파인애플','병아리콩','렌틸콩','스위트 칠리','레드와인식초','피코데가요','퀴노아','새우','제로콜라','콘스프',5,65000,13000,'/img/product/product-3.png'),(10,'test1@1','에그 샐러드','현미밥 추가','풋콩','병아리콩','렌틸콩','레디쉬','렌치',NULL,NULL,NULL,NULL,NULL,NULL,7,45500,6500,'/img/product/product-3.png'),(30,'test1@1','에그 샐러드','현미밥 추가','날치알','레디쉬',NULL,NULL,'스위트 칠리',NULL,'건강넛츠',NULL,NULL,NULL,NULL,1,8000,8000,'/img/product/product-3.png'),(31,'test1@1','에그 샐러드','현미밥 추가','렌틸콩','적양파','날치알','레디쉬','스위트 칠리','스위트 어니언','건강넛츠',NULL,NULL,NULL,NULL,1,8000,8000,'/img/product/product-3.png'),(32,'test1@1','에그 샐러드','현미밥 추가','렌틸콩','적양파','날치알','레디쉬','스위트 칠리','스위트 어니언','건강넛츠',NULL,NULL,NULL,NULL,1,8000,8000,'/img/product/product-3.png'),(33,'test1@1','에그 샐러드','현미밥 추가','렌틸콩','적양파','날치알','레디쉬','스위트 칠리','스위트 어니언','건강넛츠',NULL,NULL,NULL,NULL,3,24000,8000,'/img/product/product-3.png'),(34,'test1@1','에그 샐러드','현미밥 추가','렌틸콩','적양파','날치알','레디쉬','스위트 칠리','스위트 어니언','건강넛츠',NULL,NULL,NULL,NULL,1,8000,8000,'/img/product/product-3.png'),(35,'test1@1','에그 샐러드','현미밥 추가','렌틸콩','적양파','날치알','레디쉬','스위트 칠리','스위트 어니언','건강넛츠',NULL,NULL,NULL,NULL,1,8000,8000,'/img/product/product-3.png'),(36,'test1@1','에그 샐러드','현미밥 추가','병아리콩','렌틸콩','콘샐러드',NULL,'스위트 칠리','레드와인식초','건강넛츠',NULL,NULL,NULL,NULL,3,24000,8000,'/img/product/product-3.png'),(37,'test1@1','에그 샐러드','현미밥 추가','병아리콩','렌틸콩','콘샐러드',NULL,'스위트 칠리','레드와인식초','건강넛츠',NULL,NULL,NULL,NULL,3,8000,2667,'/img/product/product-3.png'),(38,'test1@1','에그 샐러드','현미밥 추가','병아리콩','렌틸콩','콘샐러드',NULL,'스위트 칠리','레드와인식초','건강넛츠',NULL,NULL,NULL,NULL,1,8000,8000,'/img/product/product-3.png'),(39,'test1@1','에그 샐러드','현미밥 추가','병아리콩','렌틸콩','콘샐러드',NULL,'스위트 칠리','레드와인식초','건강넛츠',NULL,NULL,NULL,NULL,4,32000,8000,'/img/product/product-3.png'),(40,'test1@1','에그 샐러드','현미밥 추가','병아리콩','렌틸콩','콘샐러드',NULL,'스위트 칠리','레드와인식초','건강넛츠',NULL,NULL,NULL,NULL,1,8000,8000,'/img/product/product-3.png'),(41,'test1@1','에그 샐러드','현미밥 추가','병아리콩','렌틸콩','콘샐러드',NULL,'스위트 칠리','레드와인식초','건강넛츠',NULL,NULL,NULL,NULL,1,8000,8000,'/img/product/product-3.png'),(42,'test1@1','에그 샐러드','현미밥 추가','병아리콩','렌틸콩','콘샐러드',NULL,'스위트 칠리','레드와인식초','건강넛츠',NULL,NULL,NULL,NULL,1,8000,8000,'/img/product/product-3.png'),(43,'test1@1','에그 샐러드','현미밥 추가','병아리콩','렌틸콩','콘샐러드',NULL,'스위트 칠리','레드와인식초','건강넛츠',NULL,NULL,NULL,NULL,1,8000,8000,'/img/product/product-3.png'),(44,'test1@1','에그 샐러드','현미밥 추가','오이','파인애플','풋콩','병아리콩','소금','후추','크랩샐러드',NULL,'연어','제로콜라','콘스프',3,34500,11500,'/img/product/product-3.png'),(45,'test1@1','에그 샐러드','현미밥 추가','렌틸콩','날치알','레디쉬',NULL,'레드와인식초',NULL,'퀴노아',NULL,NULL,NULL,NULL,2,16000,8000,'/img/product/product-3.png'),(46,'test1@1','에그 샐러드','현미밥 추가','풋콩','병아리콩','렌틸콩','레디쉬','렌치',NULL,NULL,NULL,NULL,NULL,NULL,4,26000,6500,'/img/product/product-3.png'),(47,'test1@1','에그 샐러드','현미밥 추가','풋콩','병아리콩','렌틸콩','레디쉬','렌치',NULL,NULL,NULL,NULL,NULL,NULL,1,6500,6500,'/img/product/product-3.png'),(48,'test1@1','에그 샐러드','현미밥 추가','풋콩','병아리콩','렌틸콩','레디쉬','렌치',NULL,NULL,NULL,NULL,NULL,NULL,3,19500,6500,'/img/product/product-3.png'),(49,'test1@1','에그 샐러드','현미밥 추가','렌틸콩','날치알','레디쉬',NULL,'레드와인식초',NULL,NULL,NULL,NULL,NULL,NULL,1,6500,6500,'/img/product/product-3.png'),(50,'test1@1','에그 샐러드','현미밥 추가','렌틸콩','날치알',NULL,NULL,'레드와인식초',NULL,NULL,NULL,NULL,NULL,NULL,1,6500,6500,'/img/product/product-3.png'),(51,'test1@1','에그 샐러드','현미밥 추가','오이','파인애플','병아리콩','렌틸콩','스위트 칠리','레드와인식초','크랩샐러드','건강넛츠',NULL,NULL,NULL,3,30000,10000,'/img/product/product-3.png'),(52,'test1@1','에그 샐러드','현미밥 추가','렌틸콩','적양파',NULL,NULL,'스위트 칠리','스위트 어니언','아보카도','퀴노아',NULL,NULL,NULL,1,10000,10000,'/img/product/product-3.png'),(53,'test1@1','에그 샐러드','현미밥 추가','렌틸콩','적양파',NULL,NULL,'스위트 칠리','스위트 어니언','아보카도','퀴노아',NULL,NULL,NULL,5,50000,10000,'/img/product/product-3.png'),(54,'test1@1','에그 샐러드','현미밥 추가','렌틸콩','날치알','레디쉬',NULL,'스위트 칠리',NULL,'아보카도','퀴노아',NULL,NULL,NULL,1,10000,10000,'/img/product/product-3.png'),(59,'test1@1','에그 샐러드','현미밥 추가','병아리콩','렌틸콩','날치알',NULL,'레드와인식초',NULL,'아보카도','퀴노아',NULL,NULL,NULL,1,10000,10000,'/img/product/product-3.png'),(60,'test1@1','에그 샐러드','현미밥 추가','병아리콩','렌틸콩','날치알',NULL,'레드와인식초',NULL,'아보카도','퀴노아',NULL,NULL,NULL,1,10000,10000,'/img/product/product-3.png'),(61,'test1@1','에그 샐러드','현미밥 추가','파인애플','병아리콩','렌틸콩',NULL,'스위트 칠리','레드와인식초','아보카도','퀴노아',NULL,NULL,NULL,1,10000,10000,'/img/product/product-3.png'),(62,'test1@1','콘스프',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,5,20000,4000,'/img/product/product-11.png'),(63,'test1@1','포케 샐러드','현미밥 추가','풋콩','병아리콩','렌틸콩','레디쉬','렌치',NULL,NULL,NULL,NULL,NULL,NULL,4,32000,8000,'/img/product/product-2.png'),(64,'test1@1','포케 샐러드','현미밥 추가','풋콩','병아리콩','렌틸콩','레디쉬','렌치',NULL,NULL,NULL,NULL,NULL,NULL,4,32000,8000,'/img/product/product-2.png'),(65,'test1@1','닭고기 샐러드','현미밥 추가','오이','파인애플','풋콩',NULL,'소금',NULL,NULL,NULL,NULL,NULL,NULL,3,21000,7000,'/img/product/product-1.png'),(66,'test1@1','닭고기 샐러드','현미밥 추가','오이','파인애플','풋콩',NULL,'소금',NULL,NULL,NULL,NULL,NULL,NULL,2,14000,7000,'/img/product/product-1.png'),(67,'test1@1','닭고기 샐러드','현미밥 추가','오이','파인애플','풋콩',NULL,'소금',NULL,NULL,NULL,NULL,NULL,NULL,2,14000,7000,'/img/product/product-1.png'),(68,'test1@1','포케 샐러드','현미밥 추가','병아리콩','렌틸콩','콘샐러드','날치알','스위트 칠리','레드와인식초',NULL,NULL,NULL,NULL,NULL,1,8000,8000,'/img/product/product-2.png'),(69,'test1@1','에그 샐러드','현미밥 추가','파인애플','병아리콩','렌틸콩',NULL,'스위트 칠리','레드와인식초','아보카도','퀴노아',NULL,NULL,NULL,1,10000,10000,'/img/product/product-3.png'),(70,'test1@1','닭고기 샐러드','현미밥 추가','오이','파인애플','풋콩',NULL,'소금',NULL,NULL,NULL,NULL,NULL,NULL,6,42000,7000,'/img/product/product-1.png'),(71,'test1@1','포케 샐러드','현미밥 추가','콘샐러드','날치알',NULL,NULL,'스위트 칠리','레드와인식초','퀴노아',NULL,NULL,NULL,NULL,5,47500,9500,'/img/product/product-2.png'),(72,'test1@1','포케 샐러드','현미밥 추가','콘샐러드','날치알',NULL,NULL,'스위트 칠리','레드와인식초','퀴노아',NULL,NULL,NULL,NULL,5,47500,9500,'/img/product/product-2.png'),(73,'test1@1','에그 샐러드','현미밥 추가','병아리콩','렌틸콩','콘샐러드','날치알','스위트 칠리','레드와인식초',NULL,NULL,NULL,NULL,NULL,10,65000,6500,'/img/product/product-3.png'),(74,'test1@1','에그 샐러드','현미밥 추가','병아리콩','렌틸콩','콘샐러드','날치알','스위트 칠리','레드와인식초',NULL,NULL,NULL,NULL,NULL,10,65000,6500,'/img/product/product-3.png'),(75,'test1@1','에그 샐러드','현미밥 추가','렌틸콩','적양파','레디쉬',NULL,'허니머스타드','스위트 칠리','아보카도','퀴노아',NULL,NULL,NULL,7,70000,10000,'/img/product/product-3.png'),(76,'test1@1','에그 샐러드','현미밥 추가','렌틸콩','적양파','날치알','레디쉬','허니머스타드','스위트 칠리','아보카도','퀴노아',NULL,NULL,NULL,7,70000,10000,'/img/product/product-3.png'),(77,'test1@1','에그 샐러드','현미밥 추가','병아리콩','렌틸콩','콘샐러드',NULL,'렌치','스위트 어니언','낫또','피코데가요',NULL,NULL,NULL,1,10500,10500,'/img/product/product-3.png'),(78,'test1@1','에그 샐러드','현미밥 추가','병아리콩','렌틸콩','콘샐러드',NULL,'스위트 칠리','레드와인식초','아보카도','퀴노아',NULL,NULL,NULL,5,50000,10000,'/img/product/product-3.png'),(79,'test1@1','에그 샐러드','현미밥 추가','렌틸콩','날치알','레디쉬',NULL,'스위트 칠리','레드와인식초','아보카도','퀴노아',NULL,NULL,NULL,5,50000,10000,'/img/product/product-3.png'),(80,'test1@1','에그 샐러드','현미밥 추가','렌틸콩','날치알',NULL,NULL,'허니머스타드','사우스웨스트 치폴레','아보카도','퀴노아',NULL,NULL,NULL,3,30000,10000,'/img/product/product-3.png'),(81,'test1@1','에그 샐러드','현미밥 추가','렌틸콩','콘샐러드','날치알',NULL,'허니머스타드','스위트 칠리','아보카도','퀴노아',NULL,NULL,NULL,5,50000,10000,'/img/product/product-3.png'),(82,'test1@1','에그 샐러드','현미밥 추가','병아리콩','렌틸콩','콘샐러드','날치알','스위트 칠리','레드와인식초','낫또','피코데가요','연어','제로사이다','콘스프',1,13500,13500,'/img/product/product-3.png'),(83,'test1@1','에그 샐러드','현미밥 추가','렌틸콩','적양파','날치알','레디쉬','스위트 칠리','레드와인식초','아보카도','퀴노아',NULL,NULL,NULL,1,10000,10000,'/img/product/product-3.png'),(84,'test1@1','우삼겹메밀면 샐러드','현미밥 추가','오이','파인애플','병아리콩',NULL,'허니머스타드','스위트 칠리','아보카도','퀴노아',NULL,NULL,NULL,4,50000,12500,'/img/product/product-7.png'),(85,'test1@1','우삼겹메밀면 샐러드','현미밥 추가','렌틸콩','콘샐러드','날치알',NULL,'허니머스타드','스위트 칠리','낫또','피코데가요',NULL,NULL,NULL,1,13000,13000,'/img/product/product-7.png'),(86,'test1@1','버섯 스프','현미밥 추가','병아리콩','렌틸콩','콘샐러드','날치알','스위트 칠리','레드와인식초','아보카도','퀴노아',NULL,NULL,NULL,1,8500,8500,'/img/product/product-12.png'),(87,'test1@1','우삼겹메밀면 샐러드','현미밥 추가','렌틸콩','날치알',NULL,NULL,'허니머스타드','스위트 칠리','낫또','퀴노아',NULL,NULL,NULL,1,12500,12500,'/img/product/product-7.png'),(88,'test1@1','우삼겹메밀면 샐러드','현미밥 추가','렌틸콩','날치알',NULL,NULL,'허니머스타드','사우스웨스트 치폴레','아보카도','퀴노아',NULL,NULL,NULL,6,75000,12500,'/img/product/product-7.png'),(89,'test1@1','우삼겹메밀면 샐러드','현미밥 추가','렌틸콩','날치알',NULL,NULL,'허니머스타드','사우스웨스트 치폴레','아보카도','퀴노아',NULL,NULL,NULL,7,87500,12500,'/img/product/product-7.png'),(90,'test1@1','우삼겹메밀면 샐러드','현미밥 추가','렌틸콩','날치알',NULL,NULL,'허니머스타드','사우스웨스트 치폴레','아보카도','퀴노아',NULL,NULL,NULL,6,75000,12500,'/img/product/product-7.png'),(91,'test1@1','우삼겹메밀면 샐러드','현미밥 추가','병아리콩','콘샐러드','날치알',NULL,'스위트 칠리','레드와인식초','아보카도','퀴노아',NULL,'제로사이다','바질 스프',5,62500,12500,'/img/product/product-7.png'),(92,'test1@1','우삼겹메밀면 샐러드','샐러드만','병아리콩','렌틸콩','날치알',NULL,'스위트 칠리','레드와인식초','아보카도','크랩샐러드','참치','제로콜라','바질 스프',7,112000,16000,'/img/product/product-7.png'),(93,'test1@1','우삼겹메밀면 샐러드','현미밥 추가','렌틸콩','날치알',NULL,NULL,'허니머스타드','스위트 어니언','낫또','아보카도','새우','제로사이다','버섯 스프',5,80000,16000,'/img/product/product-7.png'),(94,'test1@1','우삼겹메밀면 샐러드','현미밥 추가','파인애플','병아리콩','렌틸콩',NULL,'스위트 칠리','레드와인식초','아보카도','퀴노아','부채살','제로콜라','바질 스프',6,93000,15500,'/img/product/product-7.png'),(95,'test1@1','우삼겹메밀면 샐러드','현미밥 추가','병아리콩','콘샐러드','날치알',NULL,'허니머스타드','스위트 칠리','아보카도','퀴노아','새우','제로콜라','버섯 스프',7,108500,15500,'/img/product/product-7.png'),(96,'test1@1','우삼겹메밀면 샐러드','현미밥 추가','병아리콩','렌틸콩','콘샐러드','날치알','허니머스타드','스위트 칠리','크랩샐러드','건강넛츠',NULL,'제로콜라','버섯 스프',5,62500,12500,'/img/product/product-7.png'),(97,'test1@1','우삼겹메밀면 샐러드','현미밥 추가','병아리콩','콘샐러드',NULL,NULL,'스위트 어니언','레드와인식초','낫또','피코데가요','새우','제로사이다','버섯 스프',4,64000,16000,'/img/product/product-7.png'),(98,'test1@1','우삼겹메밀면 샐러드','현미밥 추가','날치알',NULL,NULL,NULL,'레드와인식초',NULL,'퀴노아',NULL,'부채살','제로콜라','콘스프',1,13500,13500,'/img/product/product-7.png'),(99,'test1@1','우삼겹메밀면 샐러드','현미밥 추가','병아리콩','콘샐러드',NULL,NULL,'스위트 어니언','레드와인식초','낫또','피코데가요','새우','제로사이다','버섯 스프',4,64000,16000,'/img/product/product-7.png'),(100,'test1@1','우삼겹메밀면 샐러드','현미밥 추가','병아리콩','콘샐러드',NULL,NULL,'스위트 어니언','레드와인식초','낫또','피코데가요','새우','제로사이다','버섯 스프',5,80000,16000,'/img/product/product-7.png'),(101,'test1@1','두부 샐러드','현미밥 추가',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,7500,7500,'/img/product/product-6.png'),(102,'test1@1','두부 샐러드','현미밥 추가',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,7500,7500,'/img/product/product-6.png'),(103,'test1@1','우삼겹메밀면 샐러드','현미밥 추가',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,9000,9000,'/img/product/product-7.png'),(104,'test1@1','우삼겹메밀면 샐러드','현미밥 추가',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,9000,9000,'/img/product/product-7.png'),(105,'test1@1','우삼겹메밀면 샐러드','현미밥 추가',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,9000,9000,'/img/product/product-7.png'),(106,'test1@1','우삼겹메밀면 샐러드','현미밥 추가',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,9000,9000,'/img/product/product-7.png'),(107,'test1@1','우삼겹메밀면 샐러드','현미밥 추가',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,9000,9000,'/img/product/product-7.png'),(108,'test1@1','우삼겹메밀면 샐러드',NULL,'병아리콩','렌틸콩','콘샐러드','날치알','허니머스타드','스위트 칠리','크랩샐러드','건강넛츠',NULL,NULL,NULL,8,100000,12500,'/img/product/product-7.png'),(109,'test1@1','우삼겹메밀면 샐러드',NULL,'병아리콩','렌틸콩','콘샐러드','날치알','허니머스타드','스위트 칠리','크랩샐러드','건강넛츠',NULL,NULL,NULL,8,100000,12500,'/img/product/product-7.png'),(110,'test1@1','우삼겹메밀면 샐러드','현미밥 추가','병아리콩','렌틸콩','콘샐러드','날치알','허니머스타드','스위트 칠리','크랩샐러드','건강넛츠',NULL,'제로콜라','버섯 스프',3,37500,12500,'/img/product/product-7.png'),(115,'test1@1','우삼겹메밀면 샐러드','현미밥 추가','병아리콩','렌틸콩','콘샐러드','날치알','허니머스타드','스위트 칠리','크랩샐러드','건강넛츠',NULL,'제로콜라','버섯 스프',6,75000,12500,'/img/product/product-7.png'),(116,'test1@1','우삼겹메밀면 샐러드','현미밥 추가','병아리콩','렌틸콩','콘샐러드','날치알','허니머스타드','스위트 칠리','크랩샐러드','건강넛츠',NULL,'제로콜라','버섯 스프',6,75000,12500,'/img/product/product-7.png'),(121,'test1@1','우삼겹메밀면 샐러드','현미밥 추가','병아리콩','렌틸콩','콘샐러드','날치알','허니머스타드','스위트 칠리','아보카도','퀴노아','참치','제로콜라','버섯 스프',7,108500,15500,'/img/product/product-7.png'),(122,'test1@1','우삼겹메밀면 샐러드','현미밥 추가','병아리콩','렌틸콩',NULL,NULL,'스위트 칠리','레드와인식초','아보카도','퀴노아','부채살','제로콜라','버섯 스프',7,108500,15500,'/img/product/product-7.png'),(123,'test1@1','우삼겹메밀면 샐러드','현미밥 추가','병아리콩','렌틸콩',NULL,NULL,'스위트 칠리','레드와인식초','아보카도','퀴노아','부채살','제로콜라','버섯 스프',4,62000,15500,'/img/product/product-7.png'),(124,'test1@1','우삼겹메밀면 샐러드','현미밥 추가','오이','파인애플','병아리콩',NULL,'허니머스타드',NULL,'아보카도','퀴노아',NULL,'제로사이다','버섯 스프',6,75000,12500,'/img/product/product-7.png'),(125,'test1@1','우삼겹메밀면 샐러드','현미밥 추가','오이','파인애플','병아리콩',NULL,'허니머스타드',NULL,'아보카도','퀴노아',NULL,'제로사이다','버섯 스프',8,100000,12500,'/img/product/product-7.png'),(126,'test1@1','우삼겹메밀면 샐러드','현미밥 추가','오이','파인애플','병아리콩',NULL,'허니머스타드',NULL,'아보카도','퀴노아',NULL,'제로사이다','버섯 스프',5,62500,12500,'/img/product/product-7.png'),(127,'test1@1','우삼겹메밀면 샐러드','현미밥 추가','오이','파인애플','병아리콩',NULL,'허니머스타드',NULL,'아보카도','퀴노아',NULL,'제로사이다','버섯 스프',11,137500,12500,'/img/product/product-7.png'),(128,'test1@1','우삼겹메밀면 샐러드','현미밥 추가','병아리콩','렌틸콩','콘샐러드',NULL,'스위트 칠리','레드와인식초','아보카도','퀴노아','부채살',NULL,NULL,4,62000,15500,'/img/product/product-7.png'),(129,'test1@1','우삼겹메밀면 샐러드','현미밥 추가','렌틸콩','날치알',NULL,NULL,'스위트 칠리','레드와인식초','아보카도','퀴노아','새우',NULL,NULL,4,62000,15500,'/img/product/product-7.png'),(130,'test1@1','우삼겹메밀면 샐러드','현미밥 추가','렌틸콩','날치알',NULL,NULL,'스위트 칠리','레드와인식초','아보카도','퀴노아','새우',NULL,NULL,5,77500,15500,'/img/product/product-7.png'),(131,'test1@1','우삼겹메밀면 샐러드','현미밥 추가','렌틸콩','날치알',NULL,NULL,'스위트 칠리','레드와인식초','아보카도','퀴노아','새우',NULL,NULL,3,46500,15500,'/img/product/product-7.png'),(132,'test1@1','우삼겹메밀면 샐러드','현미밥 추가','렌틸콩','날치알',NULL,NULL,'스위트 칠리','레드와인식초','아보카도','퀴노아','새우',NULL,NULL,1,15500,15500,'/img/product/product-7.png'),(133,'test1@1','우삼겹메밀면 샐러드','현미밥 추가','렌틸콩','날치알',NULL,NULL,'스위트 칠리','레드와인식초','아보카도','퀴노아','새우',NULL,NULL,1,15500,15500,'/img/product/product-7.png'),(134,'test1@1','우삼겹메밀면 샐러드','현미밥 추가','렌틸콩','날치알',NULL,NULL,'스위트 칠리','레드와인식초','아보카도','퀴노아','새우',NULL,NULL,1,15500,15500,'/img/product/product-7.png'),(135,'test1@1','우삼겹메밀면 샐러드','현미밥 추가','렌틸콩','적양파','날치알','레디쉬','스위트 칠리','레드와인식초','아보카도','퀴노아','연어',NULL,NULL,3,46500,15500,'/img/product/product-7.png'),(136,'test1@1','우삼겹메밀면 샐러드','현미밥 추가','렌틸콩','날치알',NULL,NULL,'스위트 칠리','레드와인식초','아보카도',NULL,NULL,NULL,NULL,1,11000,11000,'/img/product/product-7.png'),(137,'test1@1','우삼겹메밀면 샐러드','현미밥 추가','렌틸콩','날치알',NULL,NULL,'스위트 칠리','레드와인식초','아보카도',NULL,NULL,NULL,NULL,1,11000,11000,'/img/product/product-7.png'),(138,'test1@1','우삼겹메밀면 샐러드','현미밥 추가',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,9000,9000,'/img/product/product-7.png'),(139,'test1@1','우삼겹메밀면 샐러드','현미밥 추가',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,9000,9000,'/img/product/product-7.png'),(140,'test1@1','우삼겹메밀면 샐러드','현미밥 추가',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,9000,9000,'/img/product/product-7.png'),(141,'test1@1','우삼겹메밀면 샐러드','현미밥 추가',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,9000,9000,'/img/product/product-7.png'),(142,'test1@1','단호박 샐러드','현미밥 추가',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,7500,7500,'/img/product/product-4.png'),(143,'test1@1','단호박 샐러드','현미밥 추가',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,7500,7500,'/img/product/product-4.png'),(144,'test1@1','우삼겹메밀면 샐러드','현미밥 추가',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,9000,9000,'/img/product/product-7.png'),(145,'test1@1','우삼겹메밀면 샐러드','현미밥 추가',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,9000,9000,'/img/product/product-7.png'),(146,'test1@1','우삼겹메밀면 샐러드','현미밥 추가','렌틸콩','날치알',NULL,NULL,'스위트 칠리','레드와인식초','아보카도','퀴노아',NULL,NULL,NULL,1,12500,12500,'/img/product/product-7.png'),(147,'test1@1','우삼겹메밀면 샐러드','현미밥 추가','렌틸콩','날치알',NULL,NULL,'스위트 칠리','레드와인식초','아보카도','퀴노아','참치',NULL,NULL,1,15500,15500,'/img/product/product-7.png'),(148,'test1@1','우삼겹메밀면 샐러드','현미밥 추가',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,9000,9000,'/img/product/product-7.png'),(149,'test1@1','우삼겹메밀면 샐러드','현미밥 추가',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,9000,9000,'/img/product/product-7.png'),(151,'test1@1','우삼겹메밀면 샐러드','현미밥 추가',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,9000,9000,'/img/product/product-7.png'),(152,'test1@1','우삼겹메밀면 샐러드','현미밥 추가',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,9000,9000,'/img/product/product-7.png'),(153,'test1@1','우삼겹메밀면 샐러드','현미밥 추가',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,9000,9000,'/img/product/product-7.png'),(154,'test1@1','우삼겹메밀면 샐러드','현미밥 추가',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,9000,9000,'/img/product/product-7.png'),(155,'test1@1','우삼겹메밀면 샐러드','현미밥 추가',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,9000,9000,'/img/product/product-7.png'),(156,'test1@1','우삼겹메밀면 샐러드','현미밥 추가','렌틸콩','날치알','레디쉬',NULL,'스위트 칠리','레드와인식초','아보카도','퀴노아','부채살',NULL,NULL,1,15500,15500,'/img/product/product-7.png'),(157,'test1@1','우삼겹메밀면 샐러드','현미밥 추가',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,9000,9000,'/img/product/product-7.png'),(158,'test1@1','우삼겹메밀면 샐러드','현미밥 추가',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,9000,9000,'/img/product/product-7.png'),(159,'test1@1','우삼겹메밀면 샐러드','현미밥 추가',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,9000,9000,'/img/product/product-7.png'),(160,'test1@1','우삼겹메밀면 샐러드','현미밥 추가',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,9000,9000,'/img/product/product-7.png'),(161,'test1@1','우삼겹메밀면 샐러드','현미밥 추가',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,9000,9000,'/img/product/product-7.png'),(162,'test1@1','우삼겹메밀면 샐러드','현미밥 추가','병아리콩','렌틸콩','날치알',NULL,'스위트 칠리','레드와인식초','아보카도','퀴노아',NULL,NULL,NULL,1,12500,12500,'/img/product/product-7.png'),(163,'test1@1','우삼겹메밀면 샐러드','현미밥 추가',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,9000,9000,'/img/product/product-7.png'),(164,'test1@1','우삼겹메밀면 샐러드','현미밥 추가',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,9000,9000,'/img/product/product-7.png'),(165,'test1@1','우삼겹메밀면 샐러드','현미밥 추가',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,9000,9000,'/img/product/product-7.png'),(166,'test1@1','우삼겹메밀면 샐러드','현미밥 추가',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,9000,9000,'/img/product/product-7.png'),(167,'test1@1','우삼겹메밀면 샐러드','현미밥 추가',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,9000,9000,'/img/product/product-7.png'),(168,'test1@1','우삼겹메밀면 샐러드','현미밥 추가',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,9000,9000,'/img/product/product-7.png'),(169,'test1@1','우삼겹메밀면 샐러드','현미밥 추가',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,9000,9000,'/img/product/product-7.png'),(170,'test1@1','우삼겹메밀면 샐러드','현미밥 추가',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,9000,9000,'/img/product/product-7.png'),(171,'test1@1','우삼겹메밀면 샐러드','현미밥 추가','병아리콩','렌틸콩','콘샐러드',NULL,'스위트 칠리','레드와인식초','아보카도','퀴노아',NULL,NULL,NULL,4,50000,12500,'/img/product/product-7.png'),(172,'test1@1','우삼겹메밀면 샐러드','현미밥 추가',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,9000,9000,'/img/product/product-7.png'),(174,'test1@1','우삼겹메밀면 샐러드','현미밥 추가',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,9000,9000,'/img/product/product-7.png'),(175,'test','단호박 샐러드','현미밥 추가','날치알',NULL,NULL,NULL,'레드와인식초',NULL,'퀴노아',NULL,NULL,'제로콜라','콘스프',20,180000,0,'/img/product/product-4.png'),(178,'test1@1','두부 샐러드','현미밥 추가',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,7500,7500,'/img/product/product-6.png'),(181,'test1@1','우삼겹메밀면 샐러드','현미밥 추가',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,9000,9000,'/img/product/product-7.png'),(182,'test1@1','우삼겹메밀면 샐러드','현미밥 추가',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,9000,9000,'/img/product/product-7.png'),(184,'test1@1','우삼겹메밀면 샐러드','현미밥 추가',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,9000,9000,'/img/product/product-7.png'),(185,'test1@1','우삼겹메밀면 샐러드','현미밥 추가',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,9000,9000,'/img/product/product-7.png'),(188,'test1@1','우삼겹메밀면 샐러드','현미밥 추가',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,9000,9000,'/img/product/product-7.png'),(189,'test1@1','우삼겹메밀면 샐러드','현미밥 추가','오이','파인애플','병아리콩','렌틸콩','소금',NULL,NULL,NULL,NULL,NULL,NULL,1,9000,9000,'/img/product/product-7.png'),(190,'test1@1','우삼겹메밀면 샐러드','현미밥 추가','오이','파인애플','병아리콩','렌틸콩','소금',NULL,NULL,NULL,NULL,NULL,NULL,1,9000,9000,'/img/product/product-7.png'),(192,'test1@1','우삼겹메밀면 샐러드','현미밥 추가','렌틸콩','콘샐러드','날치알',NULL,'허니머스타드','스위트 칠리','아보카도','퀴노아',NULL,NULL,NULL,3,37500,12500,'/img/product/product-7.png'),(193,'test1@1','탄단지 샐러드','현미밥 추가','렌틸콩','날치알',NULL,NULL,'스위트 칠리','레드와인식초','아보카도','퀴노아',NULL,'제로사이다','콘스프',3,30000,10000,'/img/product/product-5.png'),(194,'test1@1','에그 샐러드','현미밥 추가','렌틸콩','날치알',NULL,NULL,'스위트 칠리','레드와인식초','아보카도','퀴노아',NULL,NULL,NULL,4,40000,10000,'/img/product/product-3.png'),(195,'test1@1','우삼겹메밀면 샐러드','현미밥 추가','렌틸콩','날치알',NULL,NULL,'허니머스타드','스위트 어니언',NULL,NULL,NULL,NULL,NULL,1,9000,9000,'/img/product/product-7.png'),(196,'test1@1','우삼겹메밀면 샐러드','현미밥 추가','렌틸콩','날치알',NULL,NULL,'스위트 칠리','레드와인식초','아보카도','퀴노아',NULL,NULL,NULL,4,50000,12500,'/img/product/product-7.png'),(197,'test1@1','우삼겹메밀면 샐러드','현미밥 추가',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,9000,9000,'/img/product/product-7.png'),(198,'test1@1','에그 샐러드','현미밥 추가','렌틸콩','날치알',NULL,NULL,'스위트 칠리','레드와인식초','아보카도','퀴노아',NULL,NULL,NULL,6,60000,10000,'/img/product/product-3.png'),(225,'test1@1','단호박 샐러드','현미밥 추가','병아리콩','렌틸콩','콘샐러드','날치알','허니머스타드','스위트 칠리','아보카도','퀴노아',NULL,NULL,NULL,4,44000,11000,'/img/product/product-4.png'),(230,'test1@1','우삼겹메밀면 샐러드','현미밥 추가','렌틸콩','날치알','레디쉬',NULL,'스위트 칠리','레드와인식초','낫또','피코데가요',NULL,NULL,NULL,4,52000,13000,'/img/product/product-7.png'),(265,'dohoon@1','제로사이다',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,11,22000,2000,'/img/product/product-8.png'),(266,'dohoon@1','제로사이다',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,4,8000,2000,'/img/product/product-8.png'),(267,'dohoon@1','우삼겹메밀면 샐러드','현미밥 추가','오이',NULL,NULL,NULL,'소금',NULL,'낫또',NULL,NULL,NULL,NULL,3,33000,11000,'/img/product/product-7.png'),(268,'dohoon@1','우삼겹메밀면 샐러드','현미밥 추가','오이',NULL,NULL,NULL,'소금',NULL,'낫또',NULL,NULL,NULL,NULL,3,33000,11000,'/img/product/product-7.png'),(269,'dohoon@1','우삼겹메밀면 샐러드','현미밥 추가','렌틸콩',NULL,NULL,NULL,'소금',NULL,'낫또',NULL,NULL,NULL,NULL,1,11000,11000,'/img/product/product-7.png'),(270,'dohoon@1','버섯 스프',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,4,20000,5000,'/img/product/product-12.png'),(271,'dohoon@1','우삼겹메밀면 샐러드','현미밥 추가','오이','파인애플','병아리콩','렌틸콩','후추','스위트 칠리','아보카도','퀴노아',NULL,'제로사이다','버섯 스프',3,37500,12500,'/img/product/product-7.png'),(272,'dohoon@1','탄단지 샐러드','현미밥 추가','병아리콩','콘샐러드',NULL,NULL,'스위트 칠리','레드와인식초','피코데가요',NULL,NULL,NULL,NULL,3,25500,8500,'/img/product/product-5.png'),(273,'dohoon@1','우삼겹메밀면 샐러드','현미밥 추가','병아리콩','적양파','레디쉬',NULL,'렌치',NULL,NULL,NULL,NULL,NULL,NULL,9,81000,9000,'/img/product/product-7.png'),(274,'test1@1','우삼겹메밀면 샐러드','현미밥 추가','오이','파인애플','병아리콩','렌틸콩','소금',NULL,'낫또','퀴노아',NULL,NULL,NULL,4,50000,12500,'/img/product/product-7.png'),(275,'test1@1','우삼겹메밀면 샐러드','현미밥 추가','오이','파인애플','렌틸콩',NULL,'허니머스타드','스위트 칠리','피코데가요','퀴노아',NULL,NULL,NULL,3,37500,12500,'/img/product/product-7.png'),(276,'test1@1','우삼겹메밀면 샐러드','현미밥 추가','병아리콩','렌틸콩',NULL,NULL,'렌치','스위트 어니언','퀴노아',NULL,NULL,NULL,NULL,3,31500,10500,'/img/product/product-7.png'),(277,'test1@1','우삼겹메밀면 샐러드','현미밥 추가','렌틸콩','콘샐러드','날치알',NULL,'소금','허니머스타드','낫또',NULL,NULL,NULL,NULL,8,88000,11000,'/img/product/product-7.png'),(278,'test1@1','제로사이다',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,5,10000,2000,'/img/product/product-8.png'),(279,'test1@1','제로사이다',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,8,16000,2000,'/img/product/product-8.png'),(280,'test1@1','제로사이다',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,4,8000,2000,'/img/product/product-8.png'),(281,'test1@1','버섯 스프',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,5000,5000,'/img/product/product-12.png'),(282,'test1@1','두부 샐러드','현미밥 추가','렌틸콩','적양파','날치알','레디쉬','스위트 칠리','레드와인식초','피코데가요',NULL,NULL,NULL,NULL,4,38000,9500,'/img/product/product-6.png'),(283,'test1@1','우삼겹메밀면 샐러드','현미밥 추가','병아리콩','렌틸콩',NULL,NULL,'레드와인식초',NULL,'피코데가요',NULL,NULL,NULL,NULL,3,33000,11000,'/img/product/product-7.png'),(284,'test1@1','우삼겹메밀면 샐러드','현미밥 추가','병아리콩','렌틸콩','콘샐러드',NULL,'스위트 칠리','레드와인식초','건강넛츠',NULL,NULL,NULL,NULL,6,63000,10500,'/img/product/product-7.png'),(285,'test1@1','탄단지 샐러드','현미밥 추가','오이','병아리콩','날치알',NULL,'스위트 칠리','스위트 어니언','건강넛츠',NULL,NULL,NULL,NULL,9,72000,8000,'/img/product/product-5.png'),(286,'test1@1','우삼겹메밀면 샐러드','현미밥 추가','병아리콩','적양파',NULL,NULL,'허니머스타드','스위트 칠리','피코데가요',NULL,NULL,NULL,NULL,6,66000,11000,'/img/product/product-7.png'),(287,'test1@1','우삼겹메밀면 샐러드','현미밥 추가','오이','파인애플','병아리콩',NULL,'스위트 칠리',NULL,'아보카도','퀴노아',NULL,NULL,NULL,5,62500,12500,'/img/product/product-7.png'),(288,'test1@1','에그 샐러드','현미밥 추가','오이','병아리콩','콘샐러드',NULL,'허니머스타드','스위트 칠리','건강넛츠',NULL,NULL,NULL,NULL,5,40000,8000,'/img/product/product-3.png'),(289,'test1@1','에그 샐러드','현미밥 추가','오이','병아리콩','콘샐러드',NULL,'허니머스타드','스위트 칠리','건강넛츠',NULL,NULL,NULL,NULL,6,48000,8000,'/img/product/product-3.png'),(290,'test1@1','에그 샐러드','현미밥 추가','오이','병아리콩','콘샐러드',NULL,'허니머스타드','스위트 칠리','건강넛츠',NULL,NULL,NULL,NULL,5,40000,8000,'/img/product/product-3.png'),(291,'test1@1','우삼겹메밀면 샐러드','현미밥 추가','렌틸콩','적양파','날치알',NULL,'스위트 칠리','레드와인식초','피코데가요','퀴노아',NULL,NULL,NULL,4,50000,12500,'/img/product/product-7.png'),(292,'test1@1','탄단지 샐러드','현미밥 추가','병아리콩','렌틸콩','콘샐러드',NULL,'스위트 어니언','레드와인식초','피코데가요',NULL,NULL,NULL,NULL,6,51000,8500,'/img/product/product-5.png'),(293,'test1@1','탄단지 샐러드','현미밥 추가','렌틸콩','날치알','레디쉬',NULL,'스위트 칠리','레드와인식초','아보카도','퀴노아',NULL,NULL,NULL,6,60000,10000,'/img/product/product-5.png'),(294,'test1@1','탄단지 샐러드','현미밥 추가','렌틸콩','날치알','레디쉬',NULL,'스위트 칠리','레드와인식초','아보카도','퀴노아',NULL,NULL,NULL,5,50000,10000,'/img/product/product-5.png'),(295,'test1@1','탄단지 샐러드','현미밥 추가','렌틸콩','날치알','레디쉬',NULL,'스위트 칠리','레드와인식초','아보카도','퀴노아',NULL,NULL,NULL,9,90000,10000,'/img/product/product-5.png'),(296,'test1@1','에그 샐러드','현미밥 추가','오이','병아리콩','콘샐러드',NULL,'허니머스타드','스위트 칠리','건강넛츠',NULL,NULL,NULL,NULL,3,24000,8000,'/img/product/product-3.png'),(297,'test1@1','에그 샐러드','현미밥 추가','오이','병아리콩','콘샐러드',NULL,'허니머스타드','스위트 칠리','건강넛츠',NULL,NULL,NULL,NULL,4,32000,8000,'/img/product/product-3.png'),(298,'test1@1','에그 샐러드','현미밥 추가','오이','병아리콩','콘샐러드',NULL,'허니머스타드','스위트 칠리','건강넛츠',NULL,NULL,NULL,NULL,8,64000,8000,'/img/product/product-3.png'),(299,'test1@1','에그 샐러드','현미밥 추가','오이','병아리콩','콘샐러드',NULL,'허니머스타드','스위트 칠리','건강넛츠',NULL,NULL,NULL,NULL,11,88000,8000,'/img/product/product-3.png'),(300,'test1@1','에그 샐러드','현미밥 추가','오이','병아리콩','콘샐러드',NULL,'허니머스타드','스위트 칠리','건강넛츠',NULL,NULL,NULL,NULL,4,32000,8000,'/img/product/product-3.png'),(301,'test1@1','에그 샐러드','현미밥 추가','오이','병아리콩','콘샐러드',NULL,'허니머스타드','스위트 칠리','건강넛츠',NULL,NULL,NULL,NULL,5,40000,8000,'/img/product/product-3.png'),(302,'test1@1','에그 샐러드','현미밥 추가','오이','병아리콩','콘샐러드',NULL,'허니머스타드','스위트 칠리','건강넛츠',NULL,NULL,NULL,NULL,6,48000,8000,'/img/product/product-3.png'),(303,'test1@1','에그 샐러드','현미밥 추가','오이','병아리콩','콘샐러드',NULL,'허니머스타드','스위트 칠리','건강넛츠',NULL,NULL,NULL,NULL,3,24000,8000,'/img/product/product-3.png'),(304,'test1@1','에그 샐러드','현미밥 추가','오이','병아리콩','콘샐러드',NULL,'허니머스타드','스위트 칠리','건강넛츠',NULL,NULL,NULL,NULL,4,32000,8000,'/img/product/product-3.png'),(305,'test1@1','우삼겹메밀면 샐러드','현미밥 추가','병아리콩','콘샐러드','날치알',NULL,'스위트 칠리','스위트 어니언','퀴노아','건강넛츠',NULL,NULL,NULL,5,60000,12000,'/img/product/product-7.png'),(306,'test1@1','우삼겹메밀면 샐러드','현미밥 추가','병아리콩','콘샐러드','날치알',NULL,'스위트 칠리','스위트 어니언','퀴노아','건강넛츠',NULL,NULL,NULL,8,96000,12000,'/img/product/product-7.png'),(307,'test1@1','우삼겹메밀면 샐러드','현미밥 추가','병아리콩','콘샐러드','날치알',NULL,'스위트 칠리','스위트 어니언','퀴노아','건강넛츠',NULL,NULL,NULL,10,120000,12000,'/img/product/product-7.png'),(308,'test1@1','우삼겹메밀면 샐러드','현미밥 추가','병아리콩','콘샐러드','날치알',NULL,'스위트 칠리','스위트 어니언','퀴노아','건강넛츠',NULL,NULL,NULL,3,36000,12000,'/img/product/product-7.png'),(309,'test1@1','우삼겹메밀면 샐러드','현미밥 추가','병아리콩','콘샐러드','날치알',NULL,'스위트 칠리','스위트 어니언','퀴노아','건강넛츠',NULL,NULL,NULL,1,12000,12000,'/img/product/product-7.png'),(310,'test1@1','탄단지 샐러드','현미밥 추가','렌틸콩','날치알','레디쉬',NULL,'스위트 칠리','레드와인식초','아보카도','퀴노아',NULL,NULL,NULL,7,70000,10000,'/img/product/product-5.png'),(311,'test1@1','탄단지 샐러드','현미밥 추가','렌틸콩','날치알','레디쉬',NULL,'스위트 칠리','레드와인식초','아보카도','퀴노아',NULL,NULL,NULL,15,150000,10000,'/img/product/product-5.png'),(312,'test1@1','우삼겹메밀면 샐러드','현미밥 추가','렌틸콩','콘샐러드','날치알',NULL,'허니머스타드','스위트 칠리','피코데가요','퀴노아',NULL,NULL,NULL,7,87500,12500,'/img/product/product-7.png'),(313,'test1@1','우삼겹메밀면 샐러드','현미밥 추가','렌틸콩','콘샐러드','날치알',NULL,'허니머스타드','스위트 칠리','피코데가요','퀴노아',NULL,NULL,NULL,8,100000,12500,'/img/product/product-7.png'),(314,'test1@1','우삼겹메밀면 샐러드','현미밥 추가','렌틸콩','콘샐러드','날치알',NULL,'허니머스타드','스위트 칠리','피코데가요','퀴노아',NULL,NULL,NULL,4,50000,12500,'/img/product/product-7.png'),(315,'test1@1','우삼겹메밀면 샐러드','현미밥 추가','렌틸콩','콘샐러드','날치알',NULL,'허니머스타드','스위트 칠리','피코데가요','퀴노아',NULL,NULL,NULL,9,112500,12500,'/img/product/product-7.png'),(316,'test1@1','우삼겹메밀면 샐러드','현미밥 추가','렌틸콩','콘샐러드','날치알',NULL,'허니머스타드','스위트 칠리','피코데가요','퀴노아',NULL,NULL,NULL,15,187500,12500,'/img/product/product-7.png'),(317,'test1@1','우삼겹메밀면 샐러드','현미밥 추가','렌틸콩','콘샐러드','날치알',NULL,'허니머스타드','스위트 칠리','피코데가요','퀴노아',NULL,NULL,NULL,9,112500,12500,'/img/product/product-7.png'),(318,'test1@1','우삼겹메밀면 샐러드','현미밥 추가','렌틸콩','콘샐러드','날치알',NULL,'허니머스타드','스위트 칠리','피코데가요','퀴노아',NULL,NULL,NULL,10,125000,12500,'/img/product/product-7.png'),(319,'test1@1','우삼겹메밀면 샐러드','현미밥 추가','렌틸콩','콘샐러드','날치알',NULL,'허니머스타드','스위트 칠리','피코데가요','퀴노아',NULL,NULL,NULL,14,175000,12500,'/img/product/product-7.png'),(320,'test1@1','우삼겹메밀면 샐러드','현미밥 추가','렌틸콩','콘샐러드','날치알',NULL,'허니머스타드','스위트 칠리','피코데가요','퀴노아',NULL,NULL,NULL,4,50000,12500,'/img/product/product-7.png'),(321,'test1@1','우삼겹메밀면 샐러드','현미밥 추가','병아리콩','콘샐러드','날치알',NULL,'스위트 칠리','스위트 어니언','퀴노아','건강넛츠',NULL,NULL,NULL,5,60000,12000,'/img/product/product-7.png'),(322,'test1@1','우삼겹메밀면 샐러드','현미밥 추가','병아리콩','렌틸콩','적양파','날치알','허니머스타드','스위트 칠리','낫또','피코데가요','연어','제로콜라','바질 스프',1,16000,16000,NULL),(323,'test1@1','우삼겹메밀면 샐러드','현미밥 추가','병아리콩','콘샐러드','날치알',NULL,'스위트 칠리','스위트 어니언','퀴노아','건강넛츠',NULL,NULL,NULL,14,168000,12000,'/img/product/product-7.png'),(324,'test1@1','두부 샐러드','현미밥 추가','병아리콩','렌틸콩','콘샐러드',NULL,'허니머스타드','스위트 칠리','피코데가요','퀴노아','새우','제로콜라','버섯 스프',1,14000,14000,NULL),(325,'test1@1','탄단지 샐러드','현미밥 추가','병아리콩','렌틸콩','날치알','레디쉬','레드와인식초',NULL,'낫또','퀴노아','부채살',NULL,NULL,4,52000,13000,NULL),(326,'test1@1','우삼겹메밀면 샐러드','샐러드만','렌틸콩','적양파','날치알',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,9000,9000,NULL),(327,'test1@1','우삼겹메밀면 샐러드','현미밥 추가','렌틸콩','콘샐러드','날치알',NULL,'허니머스타드','스위트 칠리','피코데가요','퀴노아',NULL,NULL,NULL,5,62500,12500,'/img/product/product-7.png'),(328,'test1@1','우삼겹메밀면 샐러드','현미밥 추가','렌틸콩','콘샐러드','날치알',NULL,'허니머스타드','스위트 칠리','피코데가요','퀴노아',NULL,NULL,NULL,6,75000,12500,'/img/product/product-7.png'),(329,'test1@1','우삼겹메밀면 샐러드','현미밥 추가','렌틸콩','콘샐러드','날치알',NULL,'허니머스타드','스위트 칠리','피코데가요','퀴노아',NULL,NULL,NULL,10,125000,12500,'/img/product/product-7.png'),(330,'test1@1','우삼겹메밀면 샐러드','현미밥 추가','렌틸콩','콘샐러드','날치알',NULL,'허니머스타드','스위트 칠리','피코데가요','퀴노아',NULL,NULL,NULL,15,187500,12500,'/img/product/product-7.png'),(331,'test1@1','우삼겹메밀면 샐러드','현미밥 추가','병아리콩','렌틸콩','콘샐러드',NULL,'스위트 칠리','레드와인식초','아보카도','퀴노아',NULL,NULL,NULL,6,75000,12500,'/img/product/product-7.png'),(332,'test1@1','우삼겹메밀면 샐러드','현미밥 추가','병아리콩','렌틸콩','콘샐러드',NULL,'스위트 칠리','레드와인식초','아보카도','퀴노아',NULL,NULL,NULL,19,237500,12500,'/img/product/product-7.png'),(333,'test1@1','탄단지 샐러드','현미밥 추가','병아리콩','렌틸콩','콘샐러드','날치알','허니머스타드','스위트 칠리','퀴노아','건강넛츠',NULL,NULL,NULL,3,28500,9500,'/img/product/product-5.png'),(334,'test1@1','탄단지 샐러드','현미밥 추가','병아리콩','렌틸콩','콘샐러드','날치알','허니머스타드','스위트 칠리','퀴노아','건강넛츠',NULL,NULL,NULL,7,66500,9500,'/img/product/product-5.png'),(335,'test1@1','탄단지 샐러드','현미밥 추가','병아리콩','렌틸콩','콘샐러드','날치알','허니머스타드','스위트 칠리','퀴노아','건강넛츠',NULL,NULL,NULL,20,190000,9500,'/img/product/product-5.png'),(336,'test1@1','우삼겹메밀면 샐러드','현미밥 추가','병아리콩','렌틸콩','콘샐러드',NULL,'허니머스타드','스위트 칠리','아보카도','퀴노아',NULL,NULL,NULL,4,50000,12500,'/img/product/product-7.png'),(337,'test1@1','제로사이다',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,3,6000,2000,'/img/product/product-8.png'),(338,'test1@1','단호박 샐러드','현미밥 추가','병아리콩','렌틸콩','올리브',NULL,'스위트 칠리','스위트 어니언','피코데가요',NULL,'참치',NULL,NULL,4,50000,12500,'/img/product/product-4.png'),(339,'test1@1','우삼겹메밀면 샐러드','현미밥 추가','오이','파인애플','병아리콩','렌틸콩','소금',NULL,NULL,NULL,NULL,NULL,NULL,1,9000,9000,'/img/product/product-7.png'),(340,'test1@1','단호박 샐러드','현미밥 추가','병아리콩','렌틸콩','콘샐러드',NULL,'허니머스타드','스위트 칠리','크랩샐러드','건강넛츠',NULL,NULL,NULL,3,33000,11000,'/img/product/product-4.png'),(341,'test1@1','우삼겹메밀면 샐러드','현미밥 추가','오이','병아리콩','렌틸콩','콘샐러드','스위트 칠리','레드와인식초','낫또','피코데가요',NULL,'제로사이다','버섯 스프',4,52000,13000,'/img/product/product-7.png'),(342,'test1@1','에그 샐러드','현미밥 추가','병아리콩','렌틸콩','콘샐러드',NULL,'스위트 칠리','레드와인식초','피코데가요','퀴노아','새우','제로사이다','버섯 스프',5,65000,13000,'/img/product/product-3.png'),(343,'test1@1','우삼겹메밀면 샐러드','현미밥 추가','오이','파인애플','병아리콩','렌틸콩','소금',NULL,NULL,NULL,NULL,NULL,NULL,1,9000,9000,'/img/product/product-7.png'),(344,'test1@1','우삼겹메밀면 샐러드','현미밥 추가','오이','파인애플','병아리콩','렌틸콩','소금',NULL,NULL,NULL,NULL,NULL,NULL,1,9000,9000,'/img/product/product-7.png'),(345,'test1@1','우삼겹메밀면 샐러드','현미밥 추가','렌틸콩',NULL,NULL,NULL,'레드와인식초',NULL,NULL,NULL,NULL,NULL,NULL,1,9000,9000,'/img/product/product-7.png'),(346,'test1@1','우삼겹메밀면 샐러드','현미밥 추가','오이','파인애플','병아리콩','렌틸콩','소금',NULL,NULL,NULL,NULL,NULL,NULL,1,9000,9000,'/img/product/product-7.png'),(347,'test1@1','우삼겹메밀면 샐러드','현미밥 추가','오이','파인애플','병아리콩','렌틸콩','소금',NULL,NULL,NULL,NULL,NULL,NULL,1,9000,9000,'/img/product/product-7.png'),(348,'test1@1','우삼겹메밀면 샐러드','현미밥 추가','오이','파인애플','병아리콩','렌틸콩','소금',NULL,NULL,NULL,NULL,NULL,NULL,1,9000,9000,'/img/product/product-7.png'),(349,'test1@1','단호박 샐러드','현미밥 추가','병아리콩','렌틸콩','콘샐러드','날치알','스위트 칠리','스위트 어니언','크랩샐러드','건강넛츠',NULL,NULL,NULL,4,44000,11000,'/img/product/product-4.png'),(350,'test1@1','단호박 샐러드','현미밥 추가','병아리콩','렌틸콩','콘샐러드','날치알','스위트 칠리','스위트 어니언','크랩샐러드','건강넛츠',NULL,NULL,NULL,5,55000,11000,'/img/product/product-4.png'),(351,'test1@1','단호박 샐러드','현미밥 추가','병아리콩','렌틸콩','콘샐러드','날치알','스위트 칠리','스위트 어니언','크랩샐러드','건강넛츠',NULL,NULL,NULL,1,11000,11000,'/img/product/product-4.png'),(352,'test1@1','두부 샐러드','현미밥 추가','오이','파인애플','병아리콩',NULL,'허니머스타드','스위트 칠리','크랩샐러드','건강넛츠','연어','제로사이다','버섯 스프',3,42000,14000,'/img/product/product-6.png'),(353,'test1@1','우삼겹메밀면 샐러드','현미밥 추가','병아리콩','렌틸콩','콘샐러드',NULL,'허니머스타드','스위트 칠리','낫또','피코데가요','새우','제로사이다','콘스프',3,48000,16000,'/img/product/product-7.png'),(354,'test1@1','바질 스프',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2,9000,4500,'/img/product/product-10.png'),(355,'test1@1','두부 샐러드','현미밥 추가','병아리콩','렌틸콩',NULL,NULL,'소금','후추','낫또','피코데가요',NULL,NULL,NULL,2,23000,11500,'/img/product/product-6.png'),(356,'test1@1','탄단지 샐러드','현미밥 추가','렌틸콩','날치알',NULL,NULL,'스위트 어니언','레드와인식초','낫또','피코데가요',NULL,NULL,NULL,3,31500,10500,'/img/product/product-5.png'),(357,'test1@1','제로사이다',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,3,6000,2000,'/img/product/product-8.png'),(358,'test1@1','탄단지 샐러드','현미밥 추가','오이','파인애플','병아리콩',NULL,'스위트 칠리','레드와인식초','아보카도','퀴노아',NULL,NULL,NULL,3,30000,10000,'/img/product/product-5.png'),(359,'test1@1','단호박 샐러드','현미밥 추가','병아리콩','렌틸콩',NULL,NULL,'허니머스타드','스위트 칠리','아보카도','퀴노아',NULL,'제로콜라','버섯 스프',3,33000,11000,'/img/product/product-4.png'),(360,'test1@1','바질 스프',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,3,13500,4500,'/img/product/product-10.png'),(361,'test1@1','버섯 스프',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,2,10000,5000,'/img/product/product-12.png'),(362,'gae799@naver.com','바질 스프','현미밥 추가',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,4500,4500,NULL),(363,'gae799@naver.com','버섯 스프',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,5000,5000,'/img/product/product-12.png'),(364,'gae799@naver.com','바질 스프',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,4500,4500,'/img/product/product-10.png'),(365,'gae799@naver.com','바질 스프',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,4500,4500,'/img/product/product-10.png'),(366,'gae799@naver.com','두부 샐러드','현미밥 추가','오이','병아리콩','콘샐러드','날치알','허니머스타드',NULL,NULL,NULL,NULL,NULL,NULL,1,7500,7500,'/img/product/product-6.png'),(367,'dohoon@1','탄단지 샐러드','현미밥 추가','병아리콩','렌틸콩','콘샐러드',NULL,'허니머스타드','스위트 칠리',NULL,NULL,NULL,NULL,NULL,3,19500,6500,'/img/product/product-5.png'),(368,'gae799@naver.com','바질 스프',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,4500,4500,'/img/product/product-10.png'),(369,'kimdohoon96@naver.com','바질 스프',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,3,13500,4500,'/img/product/product-10.png'),(370,'kimdohoon96@naver.com','탄단지 샐러드','현미밥 추가','병아리콩','렌틸콩',NULL,NULL,'허니머스타드','스위트 칠리','낫또','피코데가요',NULL,NULL,NULL,3,31500,10500,'/img/product/product-5.png'),(371,'kimdohoon96@naver.com','탄단지 샐러드','현미밥 추가','병아리콩','렌틸콩',NULL,NULL,'허니머스타드','스위트 칠리','낫또','피코데가요',NULL,NULL,NULL,5,52500,10500,'/img/product/product-5.png'),(372,'test1@1','단호박 샐러드','샐러드만','파인애플','풋콩','렌틸콩','적양파','렌치',NULL,'아보카도',NULL,NULL,'제로콜라','콘스프',1,12000,12000,'/img/product/product-4.png'),(373,'test1@1','탄단지 샐러드','현미밥 추가','풋콩','적양파','날치알','레디쉬','스위트 어니언',NULL,NULL,NULL,NULL,NULL,NULL,1,6500,6500,'/img/product/product-5.png'),(374,'test1@1','버섯 스프',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,5000,5000,'/img/product/product-12.png'),(375,'kimdohoon96@naver.com','제로사이다',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,3,6000,2000,'/img/product/product-8.png'),(376,'test1@1','탄단지 샐러드','샐러드만','콘샐러드','날치알',NULL,NULL,'렌치','스위트 어니언','아보카도',NULL,'연어','제로콜라','콘스프',3,42000,14000,'/img/product/product-5.png'),(377,'test1@1','단호박 샐러드','현미밥 추가','병아리콩','렌틸콩','콘샐러드',NULL,'허니머스타드','스위트 칠리','낫또','피코데가요',NULL,NULL,NULL,3,34500,11500,'/img/product/product-4.png'),(378,'test1@1','에그 샐러드','현미밥 추가','파인애플','렌틸콩','날치알','레디쉬','후추',NULL,NULL,NULL,NULL,NULL,NULL,2,13000,6500,'/img/product/product-3.png'),(379,'test1@1','단호박 샐러드','현미밥 추가','파인애플','풋콩','렌틸콩','적양파','렌치',NULL,NULL,NULL,NULL,NULL,NULL,1,7500,7500,'/img/product/product-4.png'),(380,'test1@1','단호박 샐러드','샐러드만','파인애플','풋콩','렌틸콩','적양파','렌치',NULL,'낫또','건강넛츠',NULL,'제로콜라','버섯 스프',1,13500,13500,'/img/product/product-4.png');
/*!40000 ALTER TABLE `fokeingredient` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `member`
--

DROP TABLE IF EXISTS `member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `member` (
  `memberId` varchar(255) NOT NULL,
  `memberPw` varchar(255) DEFAULT NULL,
  `memberName` varchar(255) DEFAULT NULL,
  `birth` date DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `adminCk` int NOT NULL DEFAULT '0',
  `consentPush` int NOT NULL,
  `consentEmail` int NOT NULL,
  `consentSMS` int NOT NULL,
  `money` int DEFAULT NULL,
  `point` int DEFAULT NULL,
  `createDate` datetime(6) DEFAULT NULL,
  `provider` varchar(255) DEFAULT NULL,
  `providerId` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`memberId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `member`
--

LOCK TABLES `member` WRITE;
/*!40000 ALTER TABLE `member` DISABLE KEYS */;
INSERT INTO `member` VALUES ('admin','$2a$10$BJnGB3NYrWEM0v5Cel7DF./thJyJScSUv5ny4fuNOTfQHiTcgiPFW','관리자','2023-07-12','0',1,1,1,1,123456789,123456789,NULL,NULL,NULL),('dbdl202@naver.com','$2a$10$vlyDGK3jdZ7VIdXqNiKBAOfRLFLOG3T2gmN3lPn8KSy6DV..kRFw.','지유','2023-09-25','01011112222',1,0,0,0,5000,5000,NULL,NULL,NULL),('fhazlt303@naver.com','$2a$10$.2z9M3ra5/R5LBMWvGwbk.HHJMvf20mFxeBfp2BdS7Dr/2.AVYuf6','고객1','2002-02-10','01012341234',0,0,0,0,NULL,NULL,NULL,NULL,NULL),('kimdohoon96@naver.com','$2a$10$rrdiIeGdH3.xvdMYiDahqem5dprmrjMIKgVBo7jGT5DSPX./xQ6Q.','도훈','2023-05-02','01062520326',1,0,0,0,100000,5000,NULL,NULL,NULL),('p0kepok3.po@gmail.com','$2a$10$adLUWGq0O5yR9FatCVQdnuuEN4RPW6CFU7j.Mrkju1u1qwHSjVPcW','poke poke',NULL,NULL,0,0,0,0,0,1000,'2023-07-17 17:32:29.796434','google','101905309416489358114'),('rltmdtj@naver.com','$2a$10$BiGVcJ6q/WazA/n/LTXmnu/Ko1Mtmb99ei7bedHpTnaRSfuhQMfi.','기승서','1985-09-30','01088280944',1,1,1,1,NULL,1000000,NULL,NULL,NULL),('test','$2a$10$X52020mHHVUUjM1RbFJTPO8UpDKl1XAyCodKQdJUnqE8MKiXpAYiC','테스트','2023-07-17','0',0,1,0,1,0,1000,'2023-07-17 15:52:44.626455',NULL,NULL),('test@naver.com','$2a$10$X7d6sbDxeCfIgW33gcC7jOINGmBfuEE/pqzlb8Bmm6jco3JN8P8V6','테스트2','2023-07-17','01000000000',0,0,1,1,0,1000,'2023-07-17 16:29:32.882978',NULL,NULL),('whgdmsdpseld@naver.com','$2a$10$uzbl.HyY6PQ1fKBUsac1t.yLoZIsSLyFcndV0PjFUZ5/rF2wYYUn6','차지환','1999-05-28','01032553578',1,0,0,0,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `member` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notice`
--

DROP TABLE IF EXISTS `notice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `notice` (
  `noticeId` int NOT NULL AUTO_INCREMENT,
  `noticeTitle` varchar(100) NOT NULL,
  `noticeContent` varchar(1000) DEFAULT NULL,
  `noticeDate` datetime(6) DEFAULT NULL,
  `noticeState` varchar(10) DEFAULT NULL,
  `noticeimage` varchar(255) DEFAULT NULL,
  `detailImage` varchar(255) DEFAULT NULL,
  `boardImage` varchar(255) DEFAULT NULL,
  `noticeImagefile` varchar(100) DEFAULT NULL,
  `filePath` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`noticeId`)
) ENGINE=InnoDB AUTO_INCREMENT=141 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notice`
--

LOCK TABLES `notice` WRITE;
/*!40000 ALTER TABLE `notice` DISABLE KEYS */;
INSERT INTO `notice` VALUES (129,'샐러드 전문 커뮤니티 \'fokefoke\'에서 기쁜 소식을 전해드립니다!','샐러드 전문 커뮤니티 \'fokefoke\'에서 기쁜 소식을 전해드립니다! 새로운 이벤트가 시작되었습니다. 얼른 참여하셔서 멋진 상품들을 놓치지 마세요!  fokefoke 샐러드 홈페이지 이벤트 \r\n이벤트 기간: 2023년 6월 1일부터 2023년 6월 30일까지 이벤트 1: 샐러드 레시피 공유하기\r\nfokefoke 홈페이지에 여러분이 사랑하는 샐러드 레시피를 공유해주세요!\r\n추첨을 통해 상위 3명에게 상품권 (30,000원)을 증정합니다.\r\n이벤트 2: fokefoke 인증샷 대회\r\nfokefoke에서 구매한 샐러드를 즐겼다면 인증샷을 찍어 SNS에 공유하고 fokefoke 오픈 및 공식 SNS 페이지에도 공유해주세요.\r\n해시태그 #fokefoke #샐러드홈페이지 #fokefoke인증샷 꼭 포함해주세요!\r\n추첨을 통해 상위 5명에게 1인당 야채 선물세트를 증정합니다.\r\n이벤트 3: fokefoke 사랑 평가단\r\nfokefoke 홈페이지에서 구매한 상품에 대한 평가와 사용 후기를 적어 주세요.\r\nfokefoke 사랑 평가단 Top 10에게 소정의 팬티세트를 증정합니다!\r\n참여 방법 : fokefoke 홈페이지에서 로그인 후 각 이벤트별 게시판에서 참여해주세요. 이벤트에 참여하시면 정말 멋진 상품들도 얻을 수 있을 뿐만 아니라, 다른 회원들과 함께 샐러드에 대한 정보와 팁을 공유하는 즐거운 시간을 보낼 수 있습니다. 많은 분들의 참여를 기다리겠습니다! fokefoke를 사랑해주시는 여러분께 다시 한번 감사드립니다. ','2023-07-17 16:14:24.322702',NULL,'8c13deed-d419-46e7-9c5e-be5391888ee6_jasmin-schreiber-V2Kw-YC7Cls-unsplash_resized.jpg','face54bf-deb2-4142-a974-af8d37ee36a9_nadine-primeau-n4RrgczkLJM-unsplash.jpg',NULL,NULL,NULL),(130,'고구마칩 신규 메뉴 출시!!','','2023-07-17 16:15:25.419415',NULL,'e835e190-0add-4ab8-964c-253704c05bf2_event_370x192_20220929023945124_resized.jpg','8a067091-80f7-4c1c-9f17-da24c1788814_상세_800_고구마칩_20220929023919547.jpg',NULL,NULL,NULL),(131,'뉴쉬림프시리즈!!','','2023-07-17 16:17:24.603369',NULL,'d72d52c6-76e3-4d2c-9318-ecd52722eb82_kelly-visel-zXn-amUiMJ4-unsplash_resized.jpg','47f93af7-a57d-42fc-be08-9d7282374953_230628-1.jpg',NULL,NULL,NULL),(132,'카도 썸머 슬리퍼 & 비치팩','','2023-07-17 16:19:04.948883',NULL,'5655ddda-d4aa-412a-b164-126b8b0df5c7_jonathan-borba-Gkc_xM3VY34-unsplash_resized.jpg','3ccb8386-e938-4466-8fe9-4c516ae35c71_카도 굿즈_이벤트 페이지_20230713091204599.jpg',NULL,NULL,NULL),(133,'FokeFoke 에그토핑 무료 이벤트!!','겨울이 지나고 선명한 봄 날씨가 찾아왔습니다! 따뜻한 봄기운과 함께 즐길 수 있는 에그 토핑 무료 이벤트를 fokefoke 샐러드 홈페이지에서 준비했습니다. 가족, 친구와 함께 건강하게 즐기는 샐러드에 다양한 선택의 기회를 드리겠습니다!  fokefoke 봄맞이 에그 토핑 무료 이벤트 \r\n이벤트 기간: 2023년 4월 1일부터 2023년 4월 30일까지 이벤트 내용: 에그 토핑 최대 2개 무료!\r\n이벤트 기간 동안 fokefoke 홈페이지에서 주문하는 샐러드의 에그 토핑을 최대 2개까지 무료로 추가할 수 있습니다.\r\n구매 시, 결제 창에서 에그 토핑을 선택하고 이벤트 쿠폰 코드 \"EGGFREE\"를 입력하세요.\r\n참여 방법\r\nfokefoke 홈페이지로 이동하여 로그인 후 샐러드를 주문합니다.\r\n결제 시, 에그 토핑 옵션에서 원하는 에그 토핑을 최대 2개 선택합니다.\r\n결제 창에서 이벤트 쿠폰 코드 \"EGGFREE\"를 입력하고 적용합니다. 에그 토핑 금액이 할인된 것을 확인합니다.\r\n단, 이벤트는 fokefoke 홈페이지에서만 가능하며, 일부 상품은 이벤트 대상에서 제외될 수 있습니다. 건강한 샐러드와 함께 에그 토핑 활력을 더해 든든한 식사를 즐길 수 있는 좋은 기회입니다. 잊지 말고 에그 토핑 무료 이벤트에 참여하세요! 많은 분들의 참여와 관심 부탁드립니다. fokefoke, 샐러드와 함께 더 건강한 하루 보내세요!','2023-07-17 16:20:11.133097',NULL,'31c75218-09ac-4cb0-86bb-24f4da613fc1_thumb_resized.jpg','8aa56be2-fcb6-4ca3-8b36-97f6a444fe24_anh-nguyen-_Uqj5BQb-mw-unsplash.jpg',NULL,NULL,NULL),(134,'Foke Foke 비건 이벤트~!!','안녕하세요, fokefoke 샐러드 홈페이지입니다! 환경과 건강을 챙기는 비건 분들에게 즐거운 소식을 전해드립니다. 이번 달에는 비건 이벤트를 진행하게 되어 많은 분들의 관심과 참여를 기다리고 있습니다. 함께 참여하시고 비건 식단을 더욱 즐겁게 채워 보세요!  fokefoke 비건 이벤트 \r\n이벤트 기간: 2023년 5월 1일부터 2023년 5월 31일까지 이벤트 1: 비건 샐러드 추천 공유\r\nfokefoke 홈페이지 회원들과 자신만의 건강한 비건 샐러드 레시피를 공유해보세요!\r\n참여자 중 추첨을 통해 3명에게 전용 비건 식재료 선물세트를 증정합니다.\r\n이벤트 2: 비건 인증샷\r\nfokefoke 홈페이지에서 주문한 비건 샐러드를 찍어 SNS에 공유하고 fokefoke 오픈 및 공식 SNS 페이지에도 공유해주세요.\r\n해시태그 #fokefoke #비건샐러드 #비건인증샷 꼭 포함해주세요!\r\n추첨을 통해 5명에게 특별한 비건 토핑 패키지를 제공합니다!\r\n이벤트 3: 비건 친절 평가단\r\nfokefoke 홈페이지에서 구매한 비건 샐러드에 대한 평가와 사용 후기를 공유해 주세요.\r\n비건 친절 평가단 Top 10에게 소정의 프리미엄 비건 상품을 증정합니다!\r\n참여 방법: fokefoke 홈페이지에서 로그인 후 각 이벤트별 게시판에서 참여해주세요. 이벤트 참여를 통해 따뜻한 비건 커뮤니티를 이끌어가고, 다양한 비건 샐러드 레시피와 정보를 얻을 수 있습니다. 많은 분들의 참여를 기다리겠습니다! fokefoke에서 더욱 풍성한 비건 식단을 만나보세요! ','2023-07-17 16:21:14.444349',NULL,'1d539b62-36d8-45ac-826c-80f99c721f56_yoav-aziz-AiHJiRCwB3w-unsplash_resized.jpg','84aad940-f1d8-49e6-a209-524624331083_victoria-alexandrova-M-XihC4kP9g-unsplash.jpg',NULL,NULL,NULL),(135,'FokeFoke 정기배송이벤트~!!','안녕하세요, fokefoke 샐러드 홈페이지입니다! 고객 여러분들의 건강을 챙기며 맛있는 샐러드를 쉽게 드실 수 있도록 이번에는 정기배송 할인 이벤트를 준비했습니다. 이번 기회에 정기배송 서비스를 이용해보시고 매일매일 건강한 샐러드를 즐겨보세요! fokefoke 정기배송 15% 할인 이벤트 \r\n이벤트 기간: 2023년 7월 1일부터 2023년 7월 31일까지 이벤트 내용: 정기배송 신규 가입 고객에게 최대 3개월간 15% 할인 혜택 제공\r\n이벤트 기간 동안 정기배송 서비스를 처음 이용하는 고객님들께 최대 3개월간 15% 할인 혜택을 드립니다.\r\n정기배송 신청 시 할인 쿠폰 코드 \"SUBSCRIBE15\"를 입력하시면 할인 혜택이 적용됩니다.\r\n참여 방법\r\nfokefoke 홈페이지로 이동하여 로그인 또는 회원가입을 완료합니다.\r\n레시피 선택 후 정기배송을 선택하고 원하시는 배송 횟수와 주기를 설정합니다.\r\n결제 창에서 이벤트 쿠폰 코드 \"SUBSCRIBE15\"를 입력하고 적용합니다. 할인 금액이 반영된 것을 확인합니다.\r\n이렇게 편리한 정기배송 서비스로 샐러드를 꾸준히 즐기며 건강한 일상을 만들어 보세요! 할인 이벤트 기간만 놓치지 않도록 주의해주시기 바랍니다. 많은 분들의 관심과 참여를 기다리고 있습니다. fokefoke에서 정기배송과 함께 더욱 건강한 삶을 이어가세요!','2023-07-17 16:22:26.572095',NULL,'0af4ff03-fe85-4c09-ab21-c85ce602f12d_74913aac2fda7230_resized.jpg','e13aa5a9-8bdf-4e1e-86ea-e36a62a7cdd9_860_03_183232.jpg',NULL,NULL,NULL),(136,' 말이 나올땐 손으로 주문하자','','2023-07-17 16:23:13.808679',NULL,'913de44a-7165-4670-86ff-5520196d39cb_event_370x192_20201006035853185_resized.jpg','bc079c45-ccd8-482a-b571-a0487c2aae26_img_evt_top_02_20201007034126605.jpg',NULL,NULL,NULL),(137,'머슈룸 두부이벤트','안녕하세요, fokefoke 샐러드 홈페이지입니다! 이번에는 머슈룸 두부 샐러드 이벤트를 준비했습니다. 이 이벤트를 통해 다양한 머슈룸과 두부의 조화로움을 즐길 수 있는 맛있는 샐러드를 만나보세요!  fokefoke 머슈룸 두부 샐러드 이벤트 \r\n이벤트 기간: 2023년 8월 1일부터 2023년 8월 31일까지 이벤트 내용: 머슈룸 두부 샐러드를 주문하시는 고객님들께 할인 혜택 제공\r\n이벤트 기간 동안 머슈룸 두부 샐러드를 주문하시는 모든 고객님들께 10% 할인 혜택이 적용됩니다.\r\n주문 시 할인 쿠폰 코드 \"MUSHROOMTOFU10\"을 입력하시면 할인 혜택이 적용됩니다.','2023-07-17 16:24:16.414270',NULL,'bd8faa36-bf92-4cb6-b6a7-a1b727faa6ae_heather-ford-Ug7kk0kThLk-unsplash_resized.jpg','d5c2b895-428b-4fa0-b8fa-facd8789940c_20220914114846_mRMUIcga3UJ1O4qDhydbfn7oHI4QJ1.png',NULL,NULL,NULL),(138,'튀김옷을 벗어 던진 치킨컬랙션!!','','2023-07-17 16:25:05.905702',NULL,'21198986-3752-4391-b39e-bb1d90443eac_20221201180034_0b0884a5_resized.png','7a34689d-1027-4fdd-ad7d-a83c4bbda2b8_ev_seq1057_img01.jpg',NULL,NULL,NULL);
/*!40000 ALTER TABLE `notice` ENABLE KEYS */;
UNLOCK TABLES;

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
  `storeId` int NOT NULL,
  `fokeingredientId` int DEFAULT NULL,
  `storeAddress` varchar(255) DEFAULT NULL,
  `storeName` varchar(255) DEFAULT NULL,
  `point` int DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `store_id` bigint DEFAULT NULL,
  `paymentDay` date DEFAULT NULL,
  `price` int DEFAULT NULL,
  `productName` varchar(100) DEFAULT NULL,
  `totalPrice` int DEFAULT NULL,
  `cartCount` int DEFAULT NULL,
  `memberName` varchar(255) DEFAULT NULL,
  `paymentAddress` varchar(255) DEFAULT NULL,
  `paymentPickup` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`paymentId`),
  KEY `FKaesvq6k5vu3uuftpx68kfoupb` (`store_id`),
  CONSTRAINT `FKaesvq6k5vu3uuftpx68kfoupb` FOREIGN KEY (`store_id`) REFERENCES `store` (`storeId`)
) ENGINE=InnoDB AUTO_INCREMENT=151 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment`
--

LOCK TABLES `payment` WRITE;
/*!40000 ALTER TABLE `payment` DISABLE KEYS */;
INSERT INTO `payment` VALUES (1,'dbdl202@naver.com',453,0,0,'서울 종로구 율곡로 67 (계동) 1층','북촌',0,NULL,NULL,'2023-06-22',8000,'포케 샐러드',NULL,NULL,NULL,NULL,NULL),(2,'dbdl202@naver.com',453,0,0,'서울 종로구 율곡로 67 (계동) 1층','북촌',0,NULL,NULL,'2023-06-22',8000,'포케 샐러드',8000,1,NULL,NULL,NULL),(3,'dbdl202@naver.com',453,0,0,'서울 종로구 율곡로 67 (계동) 1층','북촌',0,NULL,NULL,'2023-06-22',8000,'포케 샐러드',8000,1,NULL,NULL,NULL),(4,'dbdl202@naver.com',454,0,0,'서울 중구 명동길 74 (명동2가, 명동성당) ','명동성당',0,NULL,NULL,'2023-06-26',6500,'에그 샐러드',6500,1,NULL,NULL,NULL),(5,'dbdl202@naver.com',454,0,0,'서울 중구 명동길 74 (명동2가, 명동성당) ','명동성당',0,NULL,NULL,'2023-06-26',6500,'에그 샐러드',6500,1,NULL,NULL,NULL),(6,'dbdl202@naver.com',453,0,0,'서울 종로구 율곡로 67 (계동) 1층','북촌',0,NULL,NULL,'2023-06-22',8000,'포케 샐러드',8000,1,NULL,NULL,NULL),(7,'dbdl202@naver.com',453,0,0,'서울 종로구 율곡로 67 (계동) 1층','북촌',0,NULL,NULL,'2023-06-22',8000,'포케 샐러드',8000,1,NULL,NULL,NULL),(8,'dbdl202@naver.com',454,0,0,'서울 중구 명동길 74 (명동2가, 명동성당) ','명동성당',0,NULL,NULL,'2023-06-27',6500,'에그 샐러드',6500,1,NULL,NULL,NULL),(9,'dbdl202@naver.com',453,0,0,'서울 종로구 율곡로 67 (계동) 1층','북촌',0,NULL,NULL,'2023-06-23',8000,'포케 샐러드',8000,1,NULL,NULL,NULL),(10,'dbdl202@naver.com',455,0,0,'	\r\n서울특별시 종로구 동숭길 101 현대엘리베이터','대학로',0,NULL,NULL,'2023-06-24',4000,'콘스프',4000,1,NULL,NULL,NULL),(11,'dbdl202@naver.com',453,0,0,'서울 종로구 율곡로 67 (계동) 1층','북촌',0,NULL,NULL,'2023-06-23',8000,'포케 샐러드',8000,1,NULL,NULL,NULL),(12,'dbdl202@naver.com',459,0,0,'서울 중구 명동길 74 (명동2가, 명동성당) ','명동성당',0,NULL,NULL,'2023-06-23',40500,'탄단지 샐러드',40500,3,NULL,NULL,NULL),(13,'dbdl202@naver.com',460,0,0,'서울 중구 명동길 74 (명동2가, 명동성당) ','명동성당',0,NULL,NULL,'2023-06-27',70000,'단호박 샐러드',70000,5,NULL,NULL,NULL),(14,'dbdl202@naver.com',459,0,0,'서울 중구 명동길 74 (명동2가, 명동성당) ','명동성당',0,NULL,NULL,'2023-06-23',40500,'탄단지 샐러드',40500,3,NULL,NULL,NULL),(15,'dbdl202@naver.com',460,0,0,'서울 중구 명동길 74 (명동2가, 명동성당) ','명동성당',0,NULL,NULL,'2023-06-27',70000,'단호박 샐러드',70000,5,NULL,NULL,NULL),(16,'dbdl202@naver.com',459,0,0,'서울 중구 명동길 74 (명동2가, 명동성당) ','명동성당',0,NULL,NULL,'2023-06-23',40500,'탄단지 샐러드',40500,3,NULL,NULL,NULL),(17,'dbdl202@naver.com',460,0,0,'서울 중구 명동길 74 (명동2가, 명동성당) ','명동성당',0,NULL,NULL,'2023-06-28',70000,'단호박 샐러드',70000,5,NULL,NULL,NULL),(18,'dbdl202@naver.com',459,0,0,'서울 중구 명동길 74 (명동2가, 명동성당) ','명동성당',0,NULL,NULL,'2023-06-23',40500,'탄단지 샐러드',40500,3,NULL,NULL,NULL),(19,'dbdl202@naver.com',460,0,0,'서울 중구 명동길 74 (명동2가, 명동성당) ','명동성당',0,NULL,NULL,'2023-06-28',70000,'단호박 샐러드',70000,5,NULL,NULL,NULL),(20,'dbdl202@naver.com',459,0,0,'서울 중구 명동길 74 (명동2가, 명동성당) ','명동성당',0,NULL,NULL,'2023-06-24',40500,'탄단지 샐러드',40500,3,NULL,NULL,NULL),(21,'dbdl202@naver.com',460,0,0,'서울 중구 명동길 74 (명동2가, 명동성당) ','명동성당',0,NULL,NULL,'2023-06-28',70000,'단호박 샐러드',70000,5,NULL,NULL,NULL),(22,'dbdl202@naver.com',459,0,0,'서울 중구 명동길 74 (명동2가, 명동성당) ','명동성당',0,NULL,NULL,'2023-06-24',40500,'탄단지 샐러드',40500,3,NULL,NULL,NULL),(23,'dbdl202@naver.com',460,0,0,'서울 중구 명동길 74 (명동2가, 명동성당) ','명동성당',0,NULL,NULL,'2023-06-28',70000,'단호박 샐러드',70000,5,NULL,NULL,NULL),(24,'dbdl202@naver.com',459,0,0,'서울 중구 명동길 74 (명동2가, 명동성당) ','명동성당',0,NULL,NULL,'2023-06-24',40500,'탄단지 샐러드',40500,3,NULL,NULL,NULL),(25,'dbdl202@naver.com',460,0,0,'서울 중구 명동길 74 (명동2가, 명동성당) ','명동성당',0,NULL,NULL,'2023-06-28',70000,'단호박 샐러드',70000,5,NULL,NULL,NULL),(26,'whgdmsdpseld@naver.com',450,0,0,'	\r\n서울특별시 종로구 사직로 115','경복궁',0,NULL,NULL,'2023-06-26',2000,'제로콜라',2000,1,NULL,NULL,NULL),(27,'whgdmsdpseld@naver.com',462,0,0,'서울 종로구 종로 263-1 (종로6가)','동대문역',0,NULL,NULL,'2023-06-23',40000,'포케 샐러드',40000,5,NULL,NULL,NULL),(28,'whgdmsdpseld@naver.com',450,0,0,'	\r\n서울특별시 종로구 사직로 115','경복궁',0,NULL,NULL,'2023-06-26',2000,'제로콜라',2000,1,NULL,NULL,NULL),(29,'whgdmsdpseld@naver.com',450,0,0,'	\r\n서울특별시 종로구 사직로 115','경복궁',0,NULL,NULL,'2023-06-26',2000,'제로콜라',2000,1,NULL,NULL,NULL),(30,'whgdmsdpseld@naver.com',450,0,0,'	\r\n서울특별시 종로구 사직로 115','경복궁',0,NULL,NULL,'2023-06-27',2000,'제로콜라',2000,1,NULL,NULL,NULL),(31,'whgdmsdpseld@naver.com',463,0,0,'부산 영도구 태종로 107 (영선동1가, 영도오션트라움)','부산영도',0,NULL,NULL,'2023-06-27',125000,'닭고기 샐러드',125000,10,NULL,NULL,NULL),(32,'whgdmsdpseld@naver.com',462,0,0,'서울 종로구 종로 263-1 (종로6가)','동대문역',0,NULL,NULL,'2023-06-23',40000,'포케 샐러드',40000,5,NULL,NULL,NULL),(33,'whgdmsdpseld@naver.com',462,0,0,'서울 종로구 종로 263-1 (종로6가)','동대문역',0,NULL,NULL,'2023-06-23',40000,'포케 샐러드',40000,5,NULL,NULL,NULL),(34,'whgdmsdpseld@naver.com',463,0,0,'부산 영도구 태종로 107 (영선동1가, 영도오션트라움)','부산영도',0,NULL,NULL,'2023-06-28',125000,'닭고기 샐러드',125000,10,NULL,NULL,NULL),(35,'whgdmsdpseld@naver.com',464,0,0,'	\r\n서울특별시 종로구 동숭길 101 현대엘리베이터','대학로',0,NULL,NULL,'2023-06-28',13000,'에그 샐러드',13000,2,NULL,NULL,NULL),(36,'whgdmsdpseld@naver.com',465,0,0,'	\r\n서울특별시 종로구 동숭길 101 현대엘리베이터','대학로',0,NULL,NULL,'2023-06-29',22500,'단호박 샐러드',22500,3,NULL,NULL,NULL),(37,'whgdmsdpseld@naver.com',466,0,0,'	\r\n서울특별시 종로구 동숭길 101 현대엘리베이터','대학로',0,NULL,NULL,'2023-06-27',8000,'제로콜라',8000,4,NULL,NULL,NULL),(38,'whgdmsdpseld@naver.com',464,0,0,'	\r\n서울특별시 종로구 동숭길 101 현대엘리베이터','대학로',0,NULL,NULL,'2023-06-28',13000,'에그 샐러드',13000,2,NULL,NULL,NULL),(39,'whgdmsdpseld@naver.com',465,0,0,'	\r\n서울특별시 종로구 동숭길 101 현대엘리베이터','대학로',0,NULL,NULL,'2023-06-29',22500,'단호박 샐러드',22500,3,NULL,NULL,NULL),(40,'whgdmsdpseld@naver.com',466,0,0,'	\r\n서울특별시 종로구 동숭길 101 현대엘리베이터','대학로',0,NULL,NULL,'2023-06-27',8000,'제로콜라',8000,4,NULL,NULL,NULL),(41,'dbdl202@naver.com',459,0,0,'서울 중구 명동길 74 (명동2가, 명동성당) ','명동성당',0,NULL,NULL,'2023-06-24',40500,'탄단지 샐러드',40500,3,NULL,NULL,NULL),(42,'dbdl202@naver.com',460,0,0,'서울 중구 명동길 74 (명동2가, 명동성당) ','명동성당',0,NULL,NULL,'2023-06-29',70000,'단호박 샐러드',70000,5,NULL,NULL,NULL),(43,'dbdl202@naver.com',459,0,0,'서울 중구 명동길 74 (명동2가, 명동성당) ','명동성당',0,NULL,NULL,'2023-06-24',40500,'탄단지 샐러드',40500,3,NULL,NULL,NULL),(44,'dbdl202@naver.com',459,0,0,'서울 중구 명동길 74 (명동2가, 명동성당) ','명동성당',0,NULL,NULL,'2023-06-24',40500,'탄단지 샐러드',40500,3,NULL,NULL,NULL),(45,'dbdl202@naver.com',459,0,0,'서울 중구 명동길 74 (명동2가, 명동성당) ','명동성당',0,NULL,NULL,'2023-06-24',40500,'탄단지 샐러드',40500,3,NULL,NULL,NULL),(46,'dbdl202@naver.com',460,0,0,'서울 중구 명동길 74 (명동2가, 명동성당) ','명동성당',0,NULL,NULL,'2023-07-03',70000,'단호박 샐러드',70000,5,NULL,NULL,NULL),(47,'dbdl202@naver.com',459,0,0,'서울 중구 명동길 74 (명동2가, 명동성당) ','명동성당',0,NULL,NULL,'2023-06-26',40500,'탄단지 샐러드',40500,3,NULL,NULL,NULL),(48,'dbdl202@naver.com',459,0,0,'서울 중구 명동길 74 (명동2가, 명동성당) ','명동성당',0,NULL,NULL,'2023-06-26',40500,'탄단지 샐러드',40500,3,NULL,NULL,NULL),(49,'dbdl202@naver.com',459,0,0,'서울 중구 명동길 74 (명동2가, 명동성당) ','명동성당',0,NULL,NULL,'2023-06-26',40500,'탄단지 샐러드',40500,3,NULL,NULL,NULL),(50,'dbdl202@naver.com',459,0,0,'서울 중구 명동길 74 (명동2가, 명동성당) ','명동성당',0,NULL,NULL,'2023-06-26',40500,'탄단지 샐러드',40500,3,NULL,NULL,NULL),(51,'dbdl202@naver.com',460,0,0,'서울 중구 명동길 74 (명동2가, 명동성당) ','명동성당',0,NULL,NULL,'2023-07-03',70000,'단호박 샐러드',70000,5,NULL,NULL,NULL),(52,'dbdl202@naver.com',459,0,0,'서울 중구 명동길 74 (명동2가, 명동성당) ','명동성당',0,NULL,NULL,'2023-06-26',40500,'탄단지 샐러드',40500,3,NULL,NULL,NULL),(55,'dbdl202@naver.com',459,0,0,'서울 중구 명동길 74 (명동2가, 명동성당) ','명동성당',0,NULL,NULL,'2023-07-14',40500,'탄단지 샐러드',40500,3,NULL,NULL,NULL),(56,'dbdl202@naver.com',460,0,0,'서울 중구 명동길 74 (명동2가, 명동성당) ','명동성당',0,NULL,NULL,'2023-07-14',70000,'단호박 샐러드',70000,5,NULL,NULL,NULL),(57,'dbdl202@naver.com',459,0,0,'서울 중구 명동길 74 (명동2가, 명동성당) ','명동성당',0,NULL,NULL,'2023-07-14',40500,'탄단지 샐러드',40500,3,NULL,NULL,NULL),(58,'dbdl202@naver.com',460,0,0,'서울 중구 명동길 74 (명동2가, 명동성당) ','명동성당',0,NULL,NULL,'2023-07-14',70000,'단호박 샐러드',70000,5,NULL,NULL,NULL),(59,'dbdl202@naver.com',459,0,0,'서울 중구 명동길 74 (명동2가, 명동성당) ','명동성당',0,NULL,NULL,'2023-07-14',40500,'탄단지 샐러드',40500,3,NULL,NULL,NULL),(60,'dbdl202@naver.com',460,0,0,'서울 중구 명동길 74 (명동2가, 명동성당) ','명동성당',0,NULL,NULL,'2023-07-14',70000,'단호박 샐러드',70000,5,NULL,NULL,NULL),(62,'dbdl202@naver.com',459,0,0,'서울 중구 명동길 74 (명동2가, 명동성당) ','명동성당',5000,'01011112222',NULL,'2023-07-14',40500,'탄단지 샐러드',40500,3,NULL,NULL,NULL),(63,'dbdl202@naver.com',459,0,0,'서울 중구 명동길 74 (명동2가, 명동성당) ','명동성당',5000,'01011112222',NULL,'2023-07-14',40500,'탄단지 샐러드',40500,3,'지유',NULL,NULL),(64,'dbdl202@naver.com',459,0,0,'서울 중구 명동길 74 (명동2가, 명동성당) ','명동성당',5000,'01011112222',NULL,'2023-07-14',40500,'탄단지 샐러드',40500,3,'지유',NULL,NULL),(65,'dbdl202@naver.com',472,0,0,'	\r\n서울특별시 종로구 사직로 115','경복궁',5000,'01011112222',NULL,'2023-07-14',7500,'단호박 샐러드',7500,1,'지유',NULL,NULL),(66,'dbdl202@naver.com',472,0,0,'	\r\n서울특별시 종로구 사직로 115','경복궁',5000,'01011112222',NULL,'2023-07-14',7500,'단호박 샐러드',7500,1,'지유',NULL,NULL),(67,'dbdl202@naver.com',473,0,0,'	\r\n서울특별시 종로구 사직로 115','경복궁',5000,'01011112222',NULL,'2023-07-14',6500,'에그 샐러드',6500,1,'지유',NULL,NULL),(68,'dbdl202@naver.com',459,0,0,'서울 중구 명동길 74 (명동2가, 명동성당) ','명동성당',0,'01011112222',NULL,'2023-07-14',40500,'탄단지 샐러드',40500,3,'지유',NULL,NULL),(69,'rltmdtj@naver.com',471,0,0,'	\r\n대전광역시 중구 대종로 488번길 25','대전은행',0,'01088280944',NULL,'2023-07-14',8000,'포케 샐러드',8000,1,'기승서',NULL,NULL),(70,'kimdohoon96@naver.com',430,0,0,'서울 중구 명동길 74 (명동2가, 명동성당) ','명동성당',0,NULL,NULL,'2023-07-14',36000,'우삼겹메밀면 샐러드',36000,8,NULL,NULL,NULL),(71,'kimdohoon96@naver.com',431,0,0,'서울 중구 명동길 74 (명동2가, 명동성당) ','명동성당',0,NULL,NULL,'2023-07-14',25000,'버섯 스프',25000,5,NULL,NULL,NULL),(72,'kimdohoon96@naver.com',432,0,0,'서울 중구 명동길 74 (명동2가, 명동성당) ','명동성당',0,NULL,NULL,'2023-07-14',30000,'두부 샐러드',30000,4,NULL,NULL,NULL),(73,'kimdohoon96@naver.com',434,0,0,'서울 중구 명동길 74 (명동2가, 명동성당) ','명동성당',0,NULL,NULL,'2023-07-14',10000,'제로콜라',10000,5,NULL,NULL,NULL),(74,'kimdohoon96@naver.com',449,0,0,'서울 중구 명동길 74 (명동2가, 명동성당) ','명동성당',0,NULL,NULL,'2023-07-14',6500,'에그 샐러드',6500,1,NULL,NULL,NULL),(75,'kimdohoon96@naver.com',456,0,0,'서울 중구 명동길 74 (명동2가, 명동성당) ','명동성당',0,NULL,NULL,'2023-07-14',19500,'탄단지 샐러드',19500,3,NULL,NULL,NULL),(76,'kimdohoon96@naver.com',467,0,0,'서울 중구 명동길 74 (명동2가, 명동성당) ','명동성당',0,NULL,NULL,'2023-07-14',37500,'단호박 샐러드',37500,5,NULL,NULL,NULL),(77,'rltmdtj@naver.com',474,0,0,'서울 종로구 우정국로 69 (수송동, 동일빌딩) 1층','안국',0,'01088280944',NULL,'2023-07-14',6500,'에그 샐러드',6500,1,'기승서',NULL,NULL),(78,'whgdmsdpseld@naver.com',464,0,0,'	\r\n서울특별시 종로구 동숭길 101 현대엘리베이터','대학로',0,'01032553578',NULL,'2023-07-14',13000,'에그 샐러드',13000,2,'차지환',NULL,NULL),(79,'whgdmsdpseld@naver.com',465,0,0,'	\r\n서울특별시 종로구 동숭길 101 현대엘리베이터','대학로',0,'01032553578',NULL,'2023-07-14',22500,'단호박 샐러드',22500,3,'차지환',NULL,NULL),(80,'whgdmsdpseld@naver.com',466,0,0,'	\r\n서울특별시 종로구 동숭길 101 현대엘리베이터','대학로',0,'01032553578',NULL,'2023-07-14',8000,'제로콜라',8000,4,'차지환',NULL,NULL),(81,'dbdl202@naver.com',475,0,0,'	\r\n서울특별시 동대문구 왕산로 214','청량리역사',5000,'01011112222',NULL,'2023-07-14',6500,'탄단지 샐러드',6500,1,'지유',NULL,NULL),(82,'rltmdtj@naver.com',474,0,0,'서울 종로구 우정국로 69 (수송동, 동일빌딩) 1층','안국',0,'01088280944',NULL,'2023-07-14',6500,'에그 샐러드',6500,1,'기승서',NULL,NULL),(83,'rltmdtj@naver.com',476,0,0,'서울 종로구 삼일대로17길 51 (관철동, 스타골드빌딩) 5층','더조은 종각2',1000000,'01088280944',NULL,'2023-07-14',7000,'닭고기 샐러드',7000,1,'기승서',NULL,NULL),(84,'rltmdtj@naver.com',476,0,0,'서울 종로구 삼일대로17길 51 (관철동, 스타골드빌딩) 5층','더조은 종각2',1000000,'01088280944',NULL,'2023-07-14',7000,'닭고기 샐러드',7000,1,'기승서',NULL,NULL),(85,'dbdl202@naver.com',459,0,0,'서울 중구 명동길 74 (명동2가, 명동성당) ','명동성당',0,'01011112222',NULL,'2023-07-14',40500,'탄단지 샐러드',40500,3,'지유',NULL,NULL),(86,'kimdohoon96@naver.com',452,0,0,'	\r\n대전광역시 중구 대종로 488번길 25','대전은행',0,NULL,NULL,'2023-07-14',18000,'바질 스프',18000,66,NULL,NULL,NULL),(87,'kimdohoon96@naver.com',458,0,0,'서울 종로구 율곡로 67 (계동) 1층','북촌',0,NULL,NULL,'2023-07-14',35000,'버섯 스프',35000,45,NULL,NULL,NULL),(88,'kimdohoon96@naver.com',446,0,0,'서울 종로구 우정국로 69 (수송동, 동일빌딩) 1층','안국',0,NULL,NULL,'2023-07-14',28000,'닭고기 샐러드',28000,41,NULL,NULL,NULL),(89,'kimdohoon96@naver.com',447,0,0,'서울 종로구 우정국로 69 (수송동, 동일빌딩) 1층','안국',0,NULL,NULL,'2023-07-14',16000,'콘스프',16000,12,NULL,NULL,NULL),(90,'kimdohoon96@naver.com',431,0,0,'서울 중구 명동길 74 (명동2가, 명동성당) ','명동성당',5000,'01062520326',NULL,'2023-07-14',25000,'버섯 스프',25000,5,'도훈',NULL,NULL),(91,'kimdohoon96@naver.com',431,0,0,'서울 중구 명동길 74 (명동2가, 명동성당) ','명동성당',5000,'01062520326',NULL,'2023-07-14',25000,'버섯 스프',25000,5,'도훈',NULL,NULL),(92,'kimdohoon96@naver.com',477,0,0,'서울 종로구 종로 263-1 (종로6가)','동대문역',5000,'01062520326',NULL,'2023-07-14',6500,'에그 샐러드',6500,14,'도훈',NULL,NULL),(93,'dbdl202@naver.com',459,0,0,'서울 중구 명동길 74 (명동2가, 명동성당) ','명동성당',0,'01011112222',NULL,'2023-07-17',40500,'탄단지 샐러드',40500,3,'지유',NULL,NULL),(94,'dbdl202@naver.com',459,0,0,'서울 중구 명동길 74 (명동2가, 명동성당) ','명동성당',5000,'01011112222',NULL,'2023-07-17',40500,'탄단지 샐러드',40500,3,'지유',NULL,NULL),(95,'dbdl202@naver.com',459,0,0,'서울 중구 명동길 74 (명동2가, 명동성당) ','명동성당',5000,'01011112222',NULL,'2023-07-17',40500,'탄단지 샐러드',40500,3,'지유',NULL,NULL),(96,'dbdl202@naver.com',459,0,0,'서울 중구 명동길 74 (명동2가, 명동성당) ','명동성당',5000,'01011112222',NULL,'2023-07-17',40500,'탄단지 샐러드',40500,3,'지유',NULL,NULL),(97,'dbdl202@naver.com',459,0,0,'서울 중구 명동길 74 (명동2가, 명동성당) ','명동성당',0,'01011112222',NULL,'2023-07-17',40500,'탄단지 샐러드',40500,3,'지유',NULL,NULL),(99,'dbdl202@naver.com',459,0,0,'서울 중구 명동길 74 (명동2가, 명동성당) ','명동성당',0,'01011112222',NULL,'2023-07-17',40500,'탄단지 샐러드',40500,3,'지유',NULL,NULL),(100,'dbdl202@naver.com',459,0,0,'서울 중구 명동길 74 (명동2가, 명동성당) ','명동성당',0,'01011112222',NULL,'2023-07-17',40500,'탄단지 샐러드',40500,3,'지유',NULL,NULL),(101,'dbdl202@naver.com',459,0,0,'서울 중구 명동길 74 (명동2가, 명동성당) ','명동성당',0,'01011112222',NULL,'2023-07-17',40500,'탄단지 샐러드',40500,3,'지유',NULL,NULL),(102,'dbdl202@naver.com',459,0,0,'서울 중구 명동길 74 (명동2가, 명동성당) ','명동성당',0,'01011112222',NULL,'2023-07-17',40500,'탄단지 샐러드',40500,3,'지유',NULL,NULL),(103,'kimdohoon96@naver.com',430,0,0,'서울 중구 명동길 74 (명동2가, 명동성당) ','명동성당',5000,'01062520326',NULL,'2023-07-17',36000,'우삼겹메밀면 샐러드',36000,8,'도훈',NULL,NULL),(104,'rltmdtj@naver.com',476,0,0,'서울 종로구 삼일대로17길 51 (관철동, 스타골드빌딩) 5층','더조은 종각2',1000000,'01088280944',NULL,'2023-07-17',7000,'닭고기 샐러드',7000,1,'기승서',NULL,NULL),(105,'whgdmsdpseld@naver.com',492,0,0,'서울 중구 명동길 74 (명동2가, 명동성당) ','명동성당',0,'01032553578',NULL,'2023-07-17',19500,'탄단지 샐러드',19500,7,'차지환',NULL,NULL),(106,'whgdmsdpseld@naver.com',492,0,0,'서울 중구 명동길 74 (명동2가, 명동성당) ','명동성당',0,'01032553578',NULL,'2023-07-17',19500,'탄단지 샐러드',19500,7,'차지환',NULL,NULL),(107,'whgdmsdpseld@naver.com',492,0,0,'서울 중구 명동길 74 (명동2가, 명동성당) ','명동성당',0,'01032553578',NULL,'2023-07-17',19500,'탄단지 샐러드',19500,5,'차지환',NULL,NULL),(108,'whgdmsdpseld@naver.com',492,0,0,'서울 중구 명동길 74 (명동2가, 명동성당) ','명동성당',0,'01032553578',NULL,'2023-07-17',19500,'탄단지 샐러드',19500,7,'차지환',NULL,NULL),(109,'whgdmsdpseld@naver.com',492,0,0,'서울 중구 명동길 74 (명동2가, 명동성당) ','명동성당',0,'01032553578',NULL,'2023-07-17',19500,'탄단지 샐러드',19500,5,'차지환',NULL,NULL),(110,'dbdl202@naver.com',459,0,0,'서울 중구 명동길 74 (명동2가, 명동성당) ','명동성당',0,'01011112222',NULL,'2023-07-17',40500,'탄단지 샐러드',40500,3,'지유',NULL,NULL),(111,'dbdl202@naver.com',460,0,0,'서울 중구 명동길 74 (명동2가, 명동성당) ','명동성당',0,'01011112222',NULL,'2023-07-17',70000,'단호박 샐러드',70000,5,'지유',NULL,NULL),(112,'dbdl202@naver.com',459,0,0,'서울 중구 명동길 74 (명동2가, 명동성당) ','명동성당',0,'01011112222',NULL,'2023-07-17',40500,'탄단지 샐러드',40500,3,'지유',NULL,NULL),(113,'dbdl202@naver.com',460,0,0,'서울 중구 명동길 74 (명동2가, 명동성당) ','명동성당',0,'01011112222',NULL,'2023-07-17',70000,'단호박 샐러드',70000,5,'지유',NULL,NULL),(114,'dbdl202@naver.com',459,0,0,'서울 중구 명동길 74 (명동2가, 명동성당) ','명동성당',0,'01011112222',NULL,'2023-07-17',40500,'탄단지 샐러드',40500,3,'지유',NULL,NULL),(115,'dbdl202@naver.com',460,0,0,'서울 중구 명동길 74 (명동2가, 명동성당) ','명동성당',0,'01011112222',NULL,'2023-07-17',70000,'단호박 샐러드',70000,5,'지유',NULL,NULL),(116,'dbdl202@naver.com',459,0,0,'서울 중구 명동길 74 (명동2가, 명동성당) ','명동성당',0,'01011112222',NULL,'2023-07-17',40500,'탄단지 샐러드',40500,3,'지유',NULL,NULL),(117,'dbdl202@naver.com',460,0,0,'서울 중구 명동길 74 (명동2가, 명동성당) ','명동성당',0,'01011112222',NULL,'2023-07-17',70000,'단호박 샐러드',70000,5,'지유',NULL,NULL),(118,'dbdl202@naver.com',459,0,0,'서울 중구 명동길 74 (명동2가, 명동성당) ','명동성당',0,'01011112222',NULL,'2023-07-17',40500,'탄단지 샐러드',40500,3,'지유',NULL,NULL),(119,'dbdl202@naver.com',460,0,0,'서울 중구 명동길 74 (명동2가, 명동성당) ','명동성당',0,'01011112222',NULL,'2023-07-17',70000,'단호박 샐러드',70000,5,'지유',NULL,NULL),(120,'dbdl202@naver.com',459,0,0,'서울 중구 명동길 74 (명동2가, 명동성당) ','명동성당',0,'01011112222',NULL,'2023-07-17',40500,'탄단지 샐러드',40500,3,'지유',NULL,NULL),(121,'dbdl202@naver.com',460,0,0,'서울 중구 명동길 74 (명동2가, 명동성당) ','명동성당',0,'01011112222',NULL,'2023-07-17',70000,'단호박 샐러드',70000,5,'지유',NULL,NULL),(122,'dbdl202@naver.com',459,0,0,'서울 중구 명동길 74 (명동2가, 명동성당) ','명동성당',0,'01011112222',NULL,'2023-07-17',40500,'탄단지 샐러드',40500,3,'지유',NULL,NULL),(123,'dbdl202@naver.com',460,0,0,'서울 중구 명동길 74 (명동2가, 명동성당) ','명동성당',0,'01011112222',NULL,'2023-07-17',70000,'단호박 샐러드',70000,5,'지유',NULL,NULL),(124,'dbdl202@naver.com',459,0,0,'서울 중구 명동길 74 (명동2가, 명동성당) ','명동성당',0,'01011112222',NULL,'2023-07-17',40500,'탄단지 샐러드',40500,3,'지유',NULL,NULL),(125,'dbdl202@naver.com',460,0,0,'서울 중구 명동길 74 (명동2가, 명동성당) ','명동성당',0,'01011112222',NULL,'2023-07-17',70000,'단호박 샐러드',70000,5,'지유',NULL,NULL),(126,'dbdl202@naver.com',459,0,0,'서울 중구 명동길 74 (명동2가, 명동성당) ','명동성당',0,'01011112222',NULL,'2023-07-17',40500,'탄단지 샐러드',40500,3,'지유',NULL,NULL),(127,'dbdl202@naver.com',460,0,0,'서울 중구 명동길 74 (명동2가, 명동성당) ','명동성당',0,'01011112222',NULL,'2023-07-17',70000,'단호박 샐러드',70000,5,'지유',NULL,NULL),(128,'whgdmsdpseld@naver.com',492,0,0,'서울 중구 명동길 74 (명동2가, 명동성당) ','명동성당',0,'01032553578',NULL,'2023-07-17',19500,'탄단지 샐러드',19500,1,'차지환',NULL,NULL),(129,'dbdl202@naver.com',459,0,0,'서울 중구 명동길 74 (명동2가, 명동성당) ','명동성당',0,'01011112222',NULL,'2023-07-17',40500,'탄단지 샐러드',40500,3,'지유',NULL,NULL),(130,'dbdl202@naver.com',460,0,0,'서울 중구 명동길 74 (명동2가, 명동성당) ','명동성당',0,'01011112222',NULL,'2023-07-17',70000,'단호박 샐러드',70000,5,'지유',NULL,NULL),(133,'dbdl202@naver.com',459,0,0,'서울 중구 명동길 74 (명동2가, 명동성당) ','명동성당',0,'01011112222',NULL,'2023-07-18',40500,'탄단지 샐러드',40500,3,'지유',NULL,NULL),(134,'dbdl202@naver.com',460,0,0,'서울 중구 명동길 74 (명동2가, 명동성당) ','명동성당',0,'01011112222',NULL,'2023-07-18',70000,'단호박 샐러드',70000,5,'지유',NULL,NULL),(135,'dbdl202@naver.com',459,0,0,'서울 중구 명동길 74 (명동2가, 명동성당) ','명동성당',0,'01011112222',NULL,'2023-07-18',40500,'탄단지 샐러드',40500,3,'지유',NULL,NULL),(136,'dbdl202@naver.com',460,0,0,'서울 중구 명동길 74 (명동2가, 명동성당) ','명동성당',0,'01011112222',NULL,'2023-07-18',70000,'단호박 샐러드',70000,5,'지유',NULL,NULL),(137,'dbdl202@naver.com',459,0,0,'서울 중구 명동길 74 (명동2가, 명동성당) ','명동성당',0,'01011112222',NULL,'2023-07-18',40500,'탄단지 샐러드',40500,3,'지유',NULL,NULL),(138,'dbdl202@naver.com',460,0,0,'서울 중구 명동길 74 (명동2가, 명동성당) ','명동성당',0,'01011112222',NULL,'2023-07-18',70000,'단호박 샐러드',70000,5,'지유',NULL,NULL),(139,'dbdl202@naver.com',459,0,0,'서울 중구 명동길 74 (명동2가, 명동성당) ','명동성당',0,'01011112222',NULL,'2023-07-18',40500,'탄단지 샐러드',40500,3,'지유',NULL,NULL),(140,'dbdl202@naver.com',460,0,0,'서울 중구 명동길 74 (명동2가, 명동성당) ','명동성당',0,'01011112222',NULL,'2023-07-18',70000,'단호박 샐러드',70000,5,'지유',NULL,NULL),(141,'dbdl202@naver.com',459,0,0,'서울 중구 명동길 74 (명동2가, 명동성당) ','명동성당',0,'01011112222',NULL,'2023-07-18',40500,'탄단지 샐러드',40500,3,'지유',NULL,NULL),(142,'dbdl202@naver.com',460,0,0,'서울 중구 명동길 74 (명동2가, 명동성당) ','명동성당',0,'01011112222',NULL,'2023-07-18',70000,'단호박 샐러드',70000,5,'지유',NULL,NULL),(143,'dbdl202@naver.com',459,0,0,'서울 중구 명동길 74 (명동2가, 명동성당) ','명동성당',0,'01011112222',NULL,'2023-07-18',40500,'탄단지 샐러드',40500,3,'지유',NULL,NULL),(144,'dbdl202@naver.com',460,0,0,'서울 중구 명동길 74 (명동2가, 명동성당) ','명동성당',0,'01011112222',NULL,'2023-07-18',70000,'단호박 샐러드',70000,5,'지유',NULL,NULL),(145,'dbdl202@naver.com',459,0,0,'서울 중구 명동길 74 (명동2가, 명동성당) ','명동성당',0,'01011112222',NULL,'2023-07-18',40500,'탄단지 샐러드',40500,3,'지유',NULL,NULL),(146,'dbdl202@naver.com',460,0,0,'서울 중구 명동길 74 (명동2가, 명동성당) ','명동성당',0,'01011112222',NULL,'2023-07-18',70000,'단호박 샐러드',70000,5,'지유',NULL,NULL),(147,'dbdl202@naver.com',459,0,0,'서울 중구 명동길 74 (명동2가, 명동성당) ','명동성당',0,'01011112222',NULL,'2023-07-18',40500,'탄단지 샐러드',40500,3,'지유',NULL,NULL),(148,'dbdl202@naver.com',460,0,0,'서울 중구 명동길 74 (명동2가, 명동성당) ','명동성당',0,'01011112222',NULL,'2023-07-18',70000,'단호박 샐러드',70000,5,'지유',NULL,NULL),(149,'dbdl202@naver.com',459,0,0,'서울 중구 명동길 74 (명동2가, 명동성당) ','명동성당',0,'01011112222',NULL,'2023-07-18',40500,'탄단지 샐러드',40500,3,'지유',NULL,NULL),(150,'dbdl202@naver.com',460,0,0,'서울 중구 명동길 74 (명동2가, 명동성당) ','명동성당',0,'01011112222',NULL,'2023-07-18',70000,'단호박 샐러드',70000,5,'지유',NULL,NULL);
/*!40000 ALTER TABLE `payment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `paymentdto`
--

DROP TABLE IF EXISTS `paymentdto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `paymentdto` (
  `id` int NOT NULL AUTO_INCREMENT,
  `cartId` int NOT NULL,
  `fokeingredientId` int NOT NULL,
  `memberId` varchar(255) DEFAULT NULL,
  `paymentAddress` varchar(255) DEFAULT NULL,
  `paymentCoupon` varchar(255) DEFAULT NULL,
  `paymentDay` datetime(6) DEFAULT NULL,
  `paymentId` int NOT NULL,
  `paymentMethod` varchar(255) DEFAULT NULL,
  `paymentOrder` varchar(255) DEFAULT NULL,
  `paymentPickup` varchar(255) DEFAULT NULL,
  `paymentTakeout` int NOT NULL,
  `paymentmoney` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `point` int NOT NULL,
  `storeId` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `paymentdto`
--

LOCK TABLES `paymentdto` WRITE;
/*!40000 ALTER TABLE `paymentdto` DISABLE KEYS */;
/*!40000 ALTER TABLE `paymentdto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `productId` int NOT NULL AUTO_INCREMENT,
  `productName` varchar(100) NOT NULL,
  `productType` varchar(20) NOT NULL,
  `productDetail` varchar(200) NOT NULL,
  `productPrice` varchar(20) NOT NULL,
  `productCalorie` varchar(20) NOT NULL,
  `productImage` varchar(100) DEFAULT NULL,
  `productEname` varchar(20) NOT NULL,
  `productLabel` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`productId`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,'포케 샐러드','샐러드','신선한 연어로 만든 샐러드!','8000','300','/img/product/product-2.png','Poke Salad',NULL),(2,'제로콜라','음료','0칼로리의 시원한 음료수!','2000','0','/img/product/product-9.png','Zero Coke',NULL),(3,'닭고기 샐러드','샐러드','저염 닭고기로 만들어진 샐러드!','7000','152','/img/product/product-1.png','Chicken Salad',NULL),(4,'콘스프','사이드','따뜻하고 고소한 콘스프!','4000','215','/img/product/product-11.png','Corn Soup','sale'),(5,'제로사이다','음료','0칼로리의 시원한 음료수!','2000','0','/img/product/product-8.png','Zero Cider','sale'),(6,'에그 샐러드','샐러드','으깬 달걀이 들어가 있는 클래식 샐러드!','6500','254','/img/product/product-3.png','Egg Salad',''),(8,'단호박 샐러드','샐러드','고소한 단호박 샐러드','7500','215','/img/product/product-4.png','Sweet Pumpkin Salad',NULL),(9,'탄단지 샐러드','샐러드','탄수화물, 단백질, 지방을 조화롭게 맞춘 영양만점 샐러드!','6500','245','/img/product/product-5.png','Pebble Salad',NULL),(10,'두부 샐러드','샐러드','고기가 없어도 포만감이 가득한 두부 샐러드!','7500','254','/img/product/product-6.png','Tofu Salad',NULL),(11,'바질 스프','사이드','식욕을 돋구는 바질 향기가 가득한 스프!','4500','245','/img/product/product-10.png','basil Soup',NULL),(12,'버섯 스프','사이드','영양 넘치는 버섯이 가득 씹히는 스프!','5000','254','/img/product/product-12.png','Mushroom Soup',NULL),(13,'우삼겹메밀면 샐러드','샐러드','육즙가득 우삼겹과 탱글한 메밀면의 완벽 밸런스 만점 샐러드!','9000','185','/img/product/product-7.png','Beef Noodles Salad','new');
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

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

--
-- Table structure for table `siteuser`
--

DROP TABLE IF EXISTS `siteuser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `siteuser` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_h769wrp2qg2btc7uqngtr00ww` (`email`),
  UNIQUE KEY `UK_d8n9ab99h2922vu15x9u32v4w` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `siteuser`
--

LOCK TABLES `siteuser` WRITE;
/*!40000 ALTER TABLE `siteuser` DISABLE KEYS */;
/*!40000 ALTER TABLE `siteuser` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `source`
--

DROP TABLE IF EXISTS `source`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `source` (
  `sourceId` int NOT NULL AUTO_INCREMENT,
  `sourceName` varchar(255) NOT NULL,
  `sourceType` varchar(255) NOT NULL,
  PRIMARY KEY (`sourceId`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `source`
--

LOCK TABLES `source` WRITE;
/*!40000 ALTER TABLE `source` DISABLE KEYS */;
INSERT INTO `source` VALUES (1,'소금','소스'),(2,'후추','소스'),(3,'렌치','소스'),(4,'허니머스타드','소스'),(5,'스위트 칠리','소스'),(6,'스위트 어니언','소스'),(7,'사우스웨스트 치폴레','소스'),(8,'레드와인식초','소스');
/*!40000 ALTER TABLE `source` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stock`
--

DROP TABLE IF EXISTS `stock`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stock` (
  `quantityId` int NOT NULL AUTO_INCREMENT,
  `storeId` bigint DEFAULT NULL,
  `productId` int NOT NULL,
  `quantity` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`quantityId`),
  KEY `productId` (`productId`),
  KEY `FKmaogsgux0dxjhpy4fitjqqg2u` (`storeId`),
  CONSTRAINT `FKmaogsgux0dxjhpy4fitjqqg2u` FOREIGN KEY (`storeId`) REFERENCES `store` (`storeId`),
  CONSTRAINT `stock_ibfk_1` FOREIGN KEY (`productId`) REFERENCES `product` (`productId`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stock`
--

LOCK TABLES `stock` WRITE;
/*!40000 ALTER TABLE `stock` DISABLE KEYS */;
INSERT INTO `stock` VALUES (1,1,1,10),(2,1,2,20),(3,1,3,30),(4,1,4,40),(5,1,5,50),(6,1,6,60),(8,2,1,10),(9,2,2,20),(10,2,3,30),(11,2,4,40),(12,2,5,50),(13,2,6,60),(15,13,1,0),(16,13,2,20),(17,13,3,0),(18,13,4,40),(19,13,5,50),(20,13,6,60);
/*!40000 ALTER TABLE `stock` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `store`
--

DROP TABLE IF EXISTS `store`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `store` (
  `storeId` bigint NOT NULL AUTO_INCREMENT,
  `storeName` varchar(20) NOT NULL,
  `storeAddress` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `storeTel` varchar(20) DEFAULT NULL,
  `storeOpen` varchar(20) NOT NULL,
  `storeClose` varchar(20) NOT NULL,
  `storeLat` double NOT NULL,
  `storeLng` double NOT NULL,
  PRIMARY KEY (`storeId`)
) ENGINE=InnoDB AUTO_INCREMENT=74 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `store`
--

LOCK TABLES `store` WRITE;
/*!40000 ALTER TABLE `store` DISABLE KEYS */;
INSERT INTO `store` VALUES (1,'청량리역사','	\r\n서울특별시 동대문구 왕산로 214','02-3707-1367','08:00','23:00',37.5807,127.0483),(2,'청량리역사','	\r\n서울특별시 동대문구 왕산로 214','02-3707-1367','08:00','23:00',37.5807,127.0483),(3,'청량리역사','	\r\n서울특별시 동대문구 왕산로 214','02-3707-1367','08:00','23:00',37.5807,127.0483),(4,'청량리역사','	\r\n서울특별시 동대문구 왕산로 214','02-3707-1367','08:00','23:00',37.5807,127.0483),(5,'청량리역사','	\r\n서울특별시 동대문구 왕산로 214','02-3707-1367','08:00','23:00',37.5807,127.0483),(6,'청량리역사','	\r\n서울특별시 동대문구 왕산로 214','02-3707-1367','08:00','23:00',37.5807,127.0483),(7,'청량리역사','	\r\n서울특별시 동대문구 왕산로 214','02-3707-1367','08:00','23:00',37.5807,127.0483),(8,'청량리역사','	\r\n서울특별시 동대문구 왕산로 214','02-3707-1367','08:00','23:00',37.5807,127.0483),(9,'청량리역사','	\r\n서울특별시 동대문구 왕산로 214','02-3707-1367','08:00','23:00',37.5807,127.0483),(10,'청량리역사','	\r\n서울특별시 동대문구 왕산로 214','02-3707-1367','08:00','23:00',37.5807,127.0483),(11,'청량리역사','	\r\n서울특별시 동대문구 왕산로 214','02-3707-1367','08:00','23:00',37.5807,127.0483),(12,'청량리역사','	\r\n서울특별시 동대문구 왕산로 214','02-3707-1367','08:00','23:00',37.5807,127.0483),(13,'명동성당','서울 중구 명동길 74 (명동2가, 명동성당) ','02-318-6202  ','08:00  ','21:30  ',37.5633,126.9873),(20,'청량리역사','	\r\n서울특별시 동대문구 왕산로 214','02-3707-1367','08:00','23:00',37.5807,127.0483),(21,'청량리역사','	\r\n서울특별시 동대문구 왕산로 214','02-3707-1367','08:00','23:00',37.5807,127.0483),(22,'청량리역사','	\r\n서울특별시 동대문구 왕산로 214','02-3707-1367','08:00','23:00',37.5807,127.0483),(23,'청량리역사','	\r\n서울특별시 동대문구 왕산로 214','02-3707-1367','08:00','23:00',37.5807,127.0483),(24,'청량리역사','	\r\n서울특별시 동대문구 왕산로 214','02-3707-1367','08:00','23:00',37.5807,127.0483),(25,'청량리역사','	\r\n서울특별시 동대문구 왕산로 214','02-3707-1367','08:00','23:00',37.5807,127.0483),(26,'청량리역사','	\r\n서울특별시 동대문구 왕산로 214','02-3707-1367','08:00','23:00',37.5807,127.0483),(27,'청량리역사','	\r\n서울특별시 동대문구 왕산로 214','02-3707-1367','08:00','23:00',37.5807,127.0483),(28,'청량리역사','	\r\n서울특별시 동대문구 왕산로 214','02-3707-1367','08:00','23:00',37.5807,127.0483),(29,'청량리역사','	\r\n서울특별시 동대문구 왕산로 214','02-3707-1367','08:00','23:00',37.5807,127.0483),(30,'청량리역사','	\r\n서울특별시 동대문구 왕산로 214','02-3707-1367','08:00','23:00',37.5807,127.0483),(31,'청량리역사','	\r\n서울특별시 동대문구 왕산로 214','02-3707-1367','08:00','23:00',37.5807,127.0483),(32,'청량리역사','	\r\n서울특별시 동대문구 왕산로 214','02-3707-1367','08:00','23:00',37.5807,127.0483),(33,'청량리역사','	\r\n서울특별시 동대문구 왕산로 214','02-3707-1367','08:00','23:00',37.5807,127.0483),(34,'청량리역사','	\r\n서울특별시 동대문구 왕산로 214','02-3707-1367','08:00','23:00',37.5807,127.0483),(35,'청량리역사','	\r\n서울특별시 동대문구 왕산로 214','02-3707-1367','08:00','23:00',37.5807,127.0483),(36,'청량리역사 2','서울 동대문구 경동시장로2길 45 (청량리동) 1층','02-3707-1367','08:00','22:00',37.5807,127.0483),(37,'청량리역사','	\r\n서울특별시 동대문구 왕산로 214','02-3707-1367','08:00','23:00',37.5807,127.0483),(38,'청량리역사','	\r\n서울특별시 동대문구 왕산로 214','02-3707-1367','08:00','23:00',37.5807,127.0483),(39,'청량리역사','	\r\n서울특별시 동대문구 왕산로 214','02-3707-1367','08:00','23:00',37.5807,127.0483),(40,'청량리역사','	\r\n서울특별시 동대문구 왕산로 214','02-3707-1367','08:00','23:00',37.5807,127.0483),(41,'서강대','	\r\n서울특별시 마포구 백범로 21','02-711-7007','08:00','23:00',37.548,126.9445),(42,'울산언양','	\r\n울산광역시 울주군 언양읍 읍성로 38, 1층','052-264-2082','09:00','22:00',35.5694,129.1259),(43,'남양주법조타운','	\r\n경기 남양주시 다산동 6169 다산메인타워 109, 110, 111호','031-564-3335','08:30','22:00',37.5607,127.1589),(44,'증미역','	\r\n서울시 강서구 등촌동 631-5 1층','02-2013-5678','08:00','22:00',37.6146,129.1259),(45,'대구동대구','	\r\n대구광역시 동구 신천동 386-3','053-742-0242','08:30','22:30',35.8725,128.6294),(46,'삼전역','	\r\n서울시 송파구 백제고분로 197, 1층 101호','02-425-5141','08:00','21:00',37.5029,127.3177),(47,'대전반석','	\r\n대전광역시 유성구 북유성대로 303, 101~102호/104호','042-825-0605','08:00','23:00',36.388,129.1259),(48,'하남시청역  ','경기 하남시 신평로 65 (신장동) ','031-794-2022  ','09:00  ','22:00  ',37.537,127.2041),(49,'과천중앙','	\r\n경기도 과천시 별양상가 3로 14','02-504-3140','08:00','23:00',37.4257,126.9921),(50,'청량리역사','	\r\n서울특별시 동대문구 왕산로 214','02-3707-1367','08:00','23:00',37.5807,127.0483),(51,'안성공도','경기도 안성시 공도읍 공도로 93','02-504-3140','08:00','22:00',36.9915,127.1721),(52,'경복궁','	\r\n서울특별시 종로구 사직로 115','02-725-5926','07:30','21:30',37.5755,126.9764),(53,'광화문','	\r\n서울특별시 종로구 새문안로 3길 19','02-723-7222','08:00','22:00',37.5726,126.973),(54,'대전은행','	\r\n대전광역시 중구 대종로 488번길 25','042-221-7050','08:00','23:00',36.3336,127.4219),(55,'대학로','	\r\n서울특별시 종로구 동숭길 101 현대엘리베이터','02-764-5656','08:30','22:30',37.5662,126.9752),(56,'독립문','	\r\n서울특별시 종로구 송월길 155 경희궁자이4단지 상가 1층 4104-4106호','02-730-8255','07:00','21:00',37.5697,126.96340000000001),(58,'안국','서울 종로구 우정국로 69 (수송동, 동일빌딩) 1층','02-735-9000','07:00','21:00',37.5739,126.9821),(66,'종로5가','서울 종로구 종로 213-1 (종로5가) 1층','02-766-7537','08:00','22:00',37.5704,126.9922),(67,'북촌','서울 종로구 율곡로 67 (계동) 1층','02-747-4400','07:00','21:00',37.5774,126.9867),(68,'부산영도','부산 영도구 태종로 107 (영선동1가, 영도오션트라움)','051-417-7852','08:00','22:00',35.0911,129.0416),(69,'동대문역','서울 종로구 종로 263-1 (종로6가)','02-747-9809','08:00','22:00',37.5712,126.9886),(70,'더조은 종각2','서울 종로구 삼일대로17길 51 (관철동, 스타골드빌딩) 5층','02-738-5001','9:30','10:00',37.5691,126.9847);
/*!40000 ALTER TABLE `store` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `store2`
--

DROP TABLE IF EXISTS `store2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `store2` (
  `storeId` bigint unsigned NOT NULL AUTO_INCREMENT,
  `storeName` varchar(20) NOT NULL,
  `storeAddress` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `storeTel` varchar(20) NOT NULL,
  `storeOpen` varchar(20) NOT NULL,
  `storeClose` varchar(20) NOT NULL,
  `storeLat` double NOT NULL,
  `storeLng` double NOT NULL,
  `regDate` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`storeId`)
) ENGINE=InnoDB AUTO_INCREMENT=72 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `store2`
--

LOCK TABLES `store2` WRITE;
/*!40000 ALTER TABLE `store2` DISABLE KEYS */;
INSERT INTO `store2` VALUES (1,'청량리역사','	\r\n서울특별시 동대문구 왕산로 214','02-3707-1367','08:00','23:00',37.5807,127.0483,'2023-06-27 16:57:10'),(2,'청량리역사','	\r\n서울특별시 동대문구 왕산로 214','02-3707-1367','08:00','23:00',37.5807,127.0483,'2023-06-27 16:57:10'),(3,'청량리역사','	\r\n서울특별시 동대문구 왕산로 214','02-3707-1367','08:00','23:00',37.5807,127.0483,'2023-06-27 16:57:10'),(4,'청량리역사','	\r\n서울특별시 동대문구 왕산로 214','02-3707-1367','08:00','23:00',37.5807,127.0483,'2023-06-27 16:57:10'),(5,'청량리역사','	\r\n서울특별시 동대문구 왕산로 214','02-3707-1367','08:00','23:00',37.5807,127.0483,'2023-06-27 16:57:10'),(6,'청량리역사','	\r\n서울특별시 동대문구 왕산로 214','02-3707-1367','08:00','23:00',37.5807,127.0483,'2023-06-27 16:57:10'),(7,'청량리역사','	\r\n서울특별시 동대문구 왕산로 214','02-3707-1367','08:00','23:00',37.5807,127.0483,'2023-06-27 16:57:10'),(8,'청량리역사','	\r\n서울특별시 동대문구 왕산로 214','02-3707-1367','08:00','23:00',37.5807,127.0483,'2023-06-27 16:57:10'),(9,'청량리역사','	\r\n서울특별시 동대문구 왕산로 214','02-3707-1367','08:00','23:00',37.5807,127.0483,'2023-06-27 16:57:10'),(10,'청량리역사','	\r\n서울특별시 동대문구 왕산로 214','02-3707-1367','08:00','23:00',37.5807,127.0483,'2023-06-27 16:57:10'),(11,'청량리역사','	\r\n서울특별시 동대문구 왕산로 214','02-3707-1367','08:00','23:00',37.5807,127.0483,'2023-06-27 16:57:10'),(12,'청량리역사','	\r\n서울특별시 동대문구 왕산로 214','02-3707-1367','08:00','23:00',37.5807,127.0483,'2023-06-27 16:57:10'),(13,'명동성당  ','서울 중구 명동길 74 (명동2가, 명동성당) ','02-318-6202  ','08:00  ','21:30  ',37.5633,126.9873,'2023-06-27 16:57:10'),(20,'청량리역사','	\r\n서울특별시 동대문구 왕산로 214','02-3707-1367','08:00','23:00',37.5807,127.0483,'2023-06-27 16:57:10'),(21,'청량리역사','	\r\n서울특별시 동대문구 왕산로 214','02-3707-1367','08:00','23:00',37.5807,127.0483,'2023-06-27 16:57:10'),(22,'청량리역사','	\r\n서울특별시 동대문구 왕산로 214','02-3707-1367','08:00','23:00',37.5807,127.0483,'2023-06-27 16:57:10'),(23,'청량리역사','	\r\n서울특별시 동대문구 왕산로 214','02-3707-1367','08:00','23:00',37.5807,127.0483,'2023-06-27 16:57:10'),(24,'청량리역사','	\r\n서울특별시 동대문구 왕산로 214','02-3707-1367','08:00','23:00',37.5807,127.0483,'2023-06-27 16:57:10'),(25,'청량리역사','	\r\n서울특별시 동대문구 왕산로 214','02-3707-1367','08:00','23:00',37.5807,127.0483,'2023-06-27 16:57:10'),(26,'청량리역사','	\r\n서울특별시 동대문구 왕산로 214','02-3707-1367','08:00','23:00',37.5807,127.0483,'2023-06-27 16:57:10'),(27,'청량리역사','	\r\n서울특별시 동대문구 왕산로 214','02-3707-1367','08:00','23:00',37.5807,127.0483,'2023-06-27 16:57:10'),(28,'청량리역사','	\r\n서울특별시 동대문구 왕산로 214','02-3707-1367','08:00','23:00',37.5807,127.0483,'2023-06-27 16:57:10'),(29,'청량리역사','	\r\n서울특별시 동대문구 왕산로 214','02-3707-1367','08:00','23:00',37.5807,127.0483,'2023-06-27 16:57:10'),(30,'청량리역사','	\r\n서울특별시 동대문구 왕산로 214','02-3707-1367','08:00','23:00',37.5807,127.0483,'2023-06-27 16:57:10'),(31,'청량리역사','	\r\n서울특별시 동대문구 왕산로 214','02-3707-1367','08:00','23:00',37.5807,127.0483,'2023-06-27 16:57:10'),(32,'청량리역사','	\r\n서울특별시 동대문구 왕산로 214','02-3707-1367','08:00','23:00',37.5807,127.0483,'2023-06-27 16:57:10'),(33,'청량리역사','	\r\n서울특별시 동대문구 왕산로 214','02-3707-1367','08:00','23:00',37.5807,127.0483,'2023-06-27 16:57:10'),(34,'청량리역사','	\r\n서울특별시 동대문구 왕산로 214','02-3707-1367','08:00','23:00',37.5807,127.0483,'2023-06-27 16:57:10'),(35,'청량리역사','	\r\n서울특별시 동대문구 왕산로 214','02-3707-1367','08:00','23:00',37.5807,127.0483,'2023-06-27 16:57:10'),(36,'청량리역사 2','서울 동대문구 경동시장로2길 45 (청량리동) 1층','02-3707-1367','08:00','22:00',37.5807,127.0483,'2023-06-27 16:57:10'),(37,'청량리역사','	\r\n서울특별시 동대문구 왕산로 214','02-3707-1367','08:00','23:00',37.5807,127.0483,'2023-06-27 16:57:10'),(38,'청량리역사','	\r\n서울특별시 동대문구 왕산로 214','02-3707-1367','08:00','23:00',37.5807,127.0483,'2023-06-27 16:57:10'),(39,'청량리역사','	\r\n서울특별시 동대문구 왕산로 214','02-3707-1367','08:00','23:00',37.5807,127.0483,'2023-06-27 16:57:10'),(40,'청량리역사','	\r\n서울특별시 동대문구 왕산로 214','02-3707-1367','08:00','23:00',37.5807,127.0483,'2023-06-27 16:57:10'),(41,'서강대','	\r\n서울특별시 마포구 백범로 21','02-711-7007','08:00','23:00',37.548,126.9445,'2023-06-27 16:57:10'),(42,'울산언양','	\r\n울산광역시 울주군 언양읍 읍성로 38, 1층','052-264-2082','09:00','22:00',35.5694,129.1259,'2023-06-27 16:57:10'),(43,'남양주법조타운','	\r\n경기 남양주시 다산동 6169 다산메인타워 109, 110, 111호','031-564-3335','08:30','22:00',37.5607,127.1589,'2023-06-27 16:57:10'),(44,'증미역','	\r\n서울시 강서구 등촌동 631-5 1층','02-2013-5678','08:00','22:00',37.6146,129.1259,'2023-06-27 16:57:10'),(45,'대구동대구','	\r\n대구광역시 동구 신천동 386-3','053-742-0242','08:30','22:30',35.8725,128.6294,'2023-06-27 16:57:10'),(46,'삼전역','	\r\n서울시 송파구 백제고분로 197, 1층 101호','02-425-5141','08:00','21:00',37.5029,127.3177,'2023-06-27 16:57:10'),(47,'대전반석','	\r\n대전광역시 유성구 북유성대로 303, 101~102호/104호','042-825-0605','08:00','23:00',36.388,129.1259,'2023-06-27 16:57:10'),(48,'하남시청역  ','경기 하남시 신평로 65 (신장동) ','031-794-2022  ','09:00  ','22:00  ',37.537,127.2041,'2023-06-27 16:57:10'),(49,'과천중앙','	\r\n경기도 과천시 별양상가 3로 14','02-504-3140','08:00','23:00',37.4257,126.9921,'2023-06-27 16:57:10'),(50,'청량리역사','	\r\n서울특별시 동대문구 왕산로 214','02-3707-1367','08:00','23:00',37.5807,127.0483,'2023-06-27 16:57:10'),(51,'안성공도','경기도 안성시 공도읍 공도로 93','02-504-3140','08:00','22:00',36.9915,127.1721,'2023-06-27 16:57:10'),(52,'경복궁','	\r\n서울특별시 종로구 사직로 115','02-725-5926','07:30','21:30',37.5755,126.9764,'2023-06-27 16:57:10'),(53,'광화문','	\r\n서울특별시 종로구 새문안로 3길 19','02-723-7222','08:00','22:00',37.5726,126.973,'2023-06-27 16:57:10'),(54,'대전은행','	\r\n대전광역시 중구 대종로 488번길 25','042-221-7050','08:00','23:00',36.3336,127.4219,'2023-06-27 16:57:10'),(55,'대학로','	\r\n서울특별시 종로구 동숭길 101 현대엘리베이터','02-764-5656','08:30','22:30',37.5662,126.9752,'2023-06-27 16:57:10'),(56,'독립문','	\r\n서울특별시 종로구 송월길 155 경희궁자이4단지 상가 1층 4104-4106호','02-730-8255','07:00','21:00',37.5697,126.96340000000001,'2023-06-27 16:57:10'),(58,'안국','서울 종로구 우정국로 69 (수송동, 동일빌딩) 1층','02-735-9000','07:00','21:00',37.5739,126.9821,'2023-06-27 16:57:10'),(66,'종로5가','서울 종로구 종로 213-1 (종로5가) 1층','02-766-7537','08:00','22:00',37.5704,126.9922,'2023-06-27 16:57:10'),(67,'북촌','서울 종로구 율곡로 67 (계동) 1층','02-747-4400','07:00','21:00',37.5774,126.9867,'2023-06-27 16:57:10'),(68,'부산영도','부산 영도구 태종로 107 (영선동1가, 영도오션트라움)','051-417-7852','08:00','22:00',35.0911,129.0416,'2023-06-27 16:57:10'),(69,'동대문역','서울 종로구 종로 263-1 (종로6가)','02-747-9809','08:00','22:00',37.5712,126.9886,'2023-06-27 16:57:10'),(70,'더조은 종각2','서울 종로구 삼일대로17길 51 (관철동, 스타골드빌딩) 5층','02-738-5001','9:30','10:00',37.5691,126.9847,'2023-06-27 16:57:10'),(71,'aaa','aaa','aaa','aaa','aaa',111,222,'2023-06-27 17:58:34');
/*!40000 ALTER TABLE `store2` ENABLE KEYS */;
UNLOCK TABLES;

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

--
-- Table structure for table `testmember`
--

DROP TABLE IF EXISTS `testmember`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `testmember` (
  `id` int NOT NULL AUTO_INCREMENT,
  `createDate` datetime(6) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `memberPw` varchar(200) DEFAULT NULL,
  `memberName` varchar(200) DEFAULT NULL,
  `birth` date DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `consentEmail` int DEFAULT NULL,
  `consentPush` int DEFAULT NULL,
  `consentSMS` int DEFAULT NULL,
  `money` int DEFAULT NULL,
  `point` int DEFAULT NULL,
  `provider` varchar(255) DEFAULT NULL,
  `providerId` varchar(255) DEFAULT NULL,
  `role` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_31ttpah5cdsafv4nvhs5upb41` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `testmember`
--

LOCK TABLES `testmember` WRITE;
/*!40000 ALTER TABLE `testmember` DISABLE KEYS */;
/*!40000 ALTER TABLE `testmember` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `topping`
--

DROP TABLE IF EXISTS `topping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `topping` (
  `toppingId` int NOT NULL AUTO_INCREMENT,
  `toppingName` varchar(255) NOT NULL,
  `toppingType` varchar(255) NOT NULL,
  `toppingPrice` int NOT NULL,
  PRIMARY KEY (`toppingId`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `topping`
--

LOCK TABLES `topping` WRITE;
/*!40000 ALTER TABLE `topping` DISABLE KEYS */;
INSERT INTO `topping` VALUES (1,'오이','토핑',0),(2,'파인애플','토핑',0),(3,'풋콩','토핑',0),(4,'병아리콩','토핑',0),(5,'렌틸콩','토핑',0),(6,'적양파','토핑',0),(7,'콘샐러드','토핑',0),(8,'날치알','토핑',0),(9,'레디쉬','토핑',0),(10,'올리브','토핑',0);
/*!40000 ALTER TABLE `topping` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_ob8kqyqqgmefl0aco34akdtpe` (`email`),
  UNIQUE KEY `UK_sb8bbouer5wak8vyiiy4pf2bx` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'aa@aa','$2a$10$jwt8iqfxz0QrUWZPsKRpZeytLDBhyKHS5RXa2idxrtYXzh4M6XLfu','aaa');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'foke_db'
--

--
-- Dumping routines for database 'foke_db'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-07-21  9:51:33
