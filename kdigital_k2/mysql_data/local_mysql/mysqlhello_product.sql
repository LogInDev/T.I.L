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
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-07-21  9:57:10
