-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: localhost    Database: webmarketdb
-- ------------------------------------------------------
-- Server version	8.0.31

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `board`
--

DROP TABLE IF EXISTS `board`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `board` (
  `num` int NOT NULL AUTO_INCREMENT,
  `id` varchar(10) NOT NULL,
  `name` varchar(10) NOT NULL,
  `subject` varchar(100) NOT NULL,
  `content` text NOT NULL,
  `regist_day` varchar(30) DEFAULT NULL,
  `hit` int DEFAULT NULL,
  `userNum` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`num`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `board`
--

LOCK TABLES `board` WRITE;
/*!40000 ALTER TABLE `board` DISABLE KEYS */;
INSERT INTO `board` VALUES (2,'dada','    다다','    Hello','    Hello World! ㅇㅇㅇ','2023/03/06(17:44:06)',19,'0:0:0:0:0:0:0:1'),(3,'hong','홍','내이름은천송이','우리언니만송이 십만송이 백만송이','2023/03/06(17:46:05)',22,'0:0:0:0:0:0:0:1'),(5,'admin','ê´ë¦¬ì','ì· ëë¬´ ì¢ë¤ì','!','2023/03/17(09:14:59)',0,NULL),(6,'admin','ê´ë¦¬ì','ìì°','ìì°','2023/03/17(09:15:13)',0,NULL),(7,'admin','ê´ë¦¬ì','ë°°ì¡ ë¬¸ì','ì¸ì ìì?','2023/03/17(09:15:27)',0,NULL),(8,'admin','관리자','ㅇㅇㅇㄹㅇㄹ','ㅇㄹㅇㄹㅇㄹ','2023/03/17(11:53:19)',0,NULL),(9,'admin','관리자','ㅇㅇㅇㄹㅇㄹ','ㅇㄹㅇㄹㅇㄹ','2023/03/17(11:54:11)',0,NULL),(10,'admin','관리자','ㅇㅇ','ㅇㅇㅇ','2023/03/17(11:56:40)',0,NULL),(11,'admin','관리자','배송 문의','1111','2023/03/17(14:18:46)',0,NULL),(16,'whang','황황황','ㅇㅇㅇㅇ','ㅇㅇㅇ','2023/03/17(14:37:21)',18,NULL),(18,'whang','황황황','sss','sss','2023/03/17(15:02:14)',3,NULL),(19,'hi','하하하하','수명이단축하고이썬.....','ㅇㅇㅇ','2023/03/17(15:05:13)',2,NULL),(21,'admin','관리자','Re:sss','ddddd\r\n-----Original Message-----\r\n성명 : 황황황\r\n제목 : sss\r\n보낸 날짜: 2023/03/17(15:02:14)\r\n내용 : sss\r\n','2023/03/17(15:18:33)',3,'18'),(23,'admin','관리자','Re:내이름은천송이','ddddd\r\n-----Original Message-----\r\n성명 : 홍\r\n제목 : 내이름은천송이\r\n보낸 날짜: 2023/03/06(17:46:05)\r\n내용 : 우리언니만송이 십만송이 백만송이\r\n','2023/03/17(15:21:41)',1,'3'),(29,'admin','관리자','Re:    Hello','ㅁㄴㅇ','2023/03/17(15:27:33)',1,'2');
/*!40000 ALTER TABLE `board` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cart` (
  `cartId` int NOT NULL AUTO_INCREMENT,
  `memberId` varchar(10) NOT NULL,
  `productId` int NOT NULL,
  `productCount` varchar(10) NOT NULL,
  `productsize` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `productcolor` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`cartId`),
  KEY `cart_FK_1` (`memberId`),
  KEY `cart_FK_2` (`productId`),
  CONSTRAINT `cart_FK_1` FOREIGN KEY (`memberId`) REFERENCES `member` (`id`),
  CONSTRAINT `cart_FK_2` FOREIGN KEY (`productId`) REFERENCES `product` (`p_id`)
) ENGINE=InnoDB AUTO_INCREMENT=80 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart`
--

LOCK TABLES `cart` WRITE;
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
INSERT INTO `cart` VALUES (73,'admin',120,'1','S','red'),(74,'admin',120,'1','XXL','blue'),(79,'whang',120,'1','S','red');
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;
UNLOCK TABLES;

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
INSERT INTO `member` VALUES ('admin','1234','관리자','남','1999//9','sss@naver.com','010211111','화성시 증분동','2023-03-17 15:07:14'),('hi','1234','하하하하',NULL,'3000/01/15','wawa@naver.com','0103334444','ì¤êµ­','2023-03-17 15:05:01'),('whang','1234','황황황',NULL,'1988/01/15','whang@naver.com','0103334444','아아아아','2023-03-17 15:02:01');
/*!40000 ALTER TABLE `member` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `orderId` int NOT NULL AUTO_INCREMENT,
  `memberId` varchar(10) NOT NULL,
  `status` varchar(20) NOT NULL,
  `create_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `extraAddr` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `addressee` varchar(20) DEFAULT NULL,
  `totalPrice` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `email` varchar(20) DEFAULT NULL,
  `orderMsg` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`orderId`)
) ENGINE=InnoDB AUTO_INCREMENT=4499 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (4498,'admin','占쏙옙蚌占시�','2023-03-16 06:59:59','sdsd','황비황','1082500','0107332243','hhh@daum.net','df');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `p_id` int NOT NULL AUTO_INCREMENT,
  `p_name` varchar(20) NOT NULL,
  `p_unitPrice` varchar(20) NOT NULL,
  `p_category` varchar(20) NOT NULL,
  `p_manufacturer` varchar(20) NOT NULL,
  `p_fileName` varchar(500) NOT NULL,
  `p_description` varchar(500) NOT NULL,
  `p_gender` varchar(20) NOT NULL,
  PRIMARY KEY (`p_id`)
) ENGINE=InnoDB AUTO_INCREMENT=123 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,'“Run H” 쇼츠','1,070,000','하의','HERMES','https://assets.hermes.com/is/image/hermesproduct/run-h-%EC%87%BC%EC%B8%A0--357770HA1O-worn-1-0-0-800-800_g.jpg','“Run H” 디테일이 장식된 코튼 소재의 쇼츠(코튼 100%)','male'),(2,'포켓 장식 Seoul 팬츠','1,360,000','하의','HERMES','https://assets.hermes.com/is/image/hermesproduct/%ED%8F%AC%EC%BC%93-%EC%9E%A5%EC%8B%9D-seoul-%ED%8C%AC%EC%B8%A0--355260H34G-worn-1-0-0-800-800_g.jpg','스트레치 코튼 트윌 소재의 캐럿 팬츠(코튼 97%, 엘라스탄 3%)','male'),(3,'아플리케 팬츠','15,850,000','하의','Thom Brown','https://cdn-images.farfetch-contents.com/thom-browne_18589421_41467465_1000.jpg?c=0','그레이 색상의 팬츠로, 슈팅 소재로 제작되었고 전체의 불리온 스티치 시닉 메시 아플리케가 돋보입니다. 탭으로 잠그는 방식이며, 플랫 프론트(노턱), 와이드 커프스, 옆면 버튼 탭을 더했고 옆면 슬립 포켓, 버튼 잠금형 뒷면 웰트 포켓, 허리 뒷면의 시그니처 스트라이프 그로그랭 루프 탭을 적용했습니다. 이 제품은 하이 암홀 스타일로 핏 3입니다.','male'),(4,'포켓 장식 Seoul 팬츠','1,360,000','하의','HERMES','https://assets.hermes.com/is/image/hermesproduct/%ED%8F%AC%EC%BC%93-%EC%9E%A5%EC%8B%9D-seoul-%ED%8C%AC%EC%B8%A0--355260H32P-worn-1-0-0-800-800_g.jpg','스트레치 코튼 트윌 소재의 캐럿 팬츠(코튼 97%, 엘라스탄 3%)','male'),(5,'코튼 4-바 로우 라이즈 스키니 팬츠','1,830,000','하의','Thom Brown','https://cdn-images.farfetch-contents.com/thom-browne-4_18047934_39539514_1000.jpg?c=0','네이비 색상의 언컨스트럭티드 로우 라이즈 스키니 팬츠로, 면 슈팅 소재로 제작되었고 왼쪽 허벅지의 화이트 엔지니어드 4-바 스트라이프 디테일이 돋보입니다. 숨김형 지퍼로 잠그는 방식이며, 플랫 프론트 (노턱), 다리 주름 및 좁은 커프스, 허리 조절 가능한 옆면 버튼 탭을 더했고 옆면 슬랜트 포켓, 버튼 잠금형 뒷면 웰트 포켓, 허리 뒷면의 시그니처 스트라이프 그로그랭 루프 탭을 적용했습니다. 이 제품은 하이 암홀 스타일로 핏 3입니다.','male'),(6,'“Run H” 조깅 팬츠','1,350,000','하의','HERMES','https://assets.hermes.com/is/image/hermesproduct/run-h-%EC%A1%B0%EA%B9%85-%ED%8C%AC%EC%B8%A0--267670HA09-worn-1-0-0-800-800_g.jpg','“Run H” 디테일이 장식된 코튼 소재의 조깅 팬츠(코튼 100%)','male'),(7,'4-바 플리츠 풋볼 스커트','3,500,000','하의','Thom Brown','https://cdn-images.farfetch-contents.com/thom-browne-4_18440584_41439732_1000.jpg?c=0','그레이 색상의 무릎 길이 플리츠 풋볼 스커트로, 바시티 피케 소재로 제작되었고 왼쪽 힙의 4-바 스트라이프 디테일이 돋보입니다. 토널 손잡이의 옆면 지퍼로 잠그는 방식이며, 헴의 네임택 아플리케, 시그니처 스트라이프 그로그랭 트리밍의 드롭 백, 허리 뒷면의 시그니처 스트라이프 그로그랭 루프 탭을 적용했습니다.','male'),(8,'언컨스트럭티드 치노 팬츠','1,160,000','하의','Thom Brown','https://cdn-images.farfetch-contents.com/thom-browne_12559502_31528563_1000.jpg?c=0','미디엄 그레이 색상의 언컨스트럭티드 치노 팬츠로, 트윌 면 소재로 제작되었고 앞면 버튼으로 잠그는 방식입니다. 제티드 힙 포켓과 다리의 주름 디테일을 더했고 커프스 위의 네임택 아플리케와 허리 뒷면의 시그니처 스트라이프 그로그랭 루프 탭을 적용했습니다.','male'),(9,'위브 수트 쇼츠','1,930,000','하의','Thom Brown','https://cdn-images.farfetch-contents.com/thom-browne-4_14123222_20660070_1000.jpg?c=0','네이비 색상의 수트 쇼츠','male'),(10,'플란넬 4-바 백스트랩 팬츠','2,150,000','하의','Thom Brown','https://cdn-images.farfetch-contents.com/thom-browne-4_17711256_38330500_1000.jpg?c=0','다크 블루 색상의 백스트랩 팬츠로, 울 슈팅 소재로 제작되었고 왼쪽 허벅지의 토널 4-바 스트라이프 레벨이 돋보입니다. 앞면 탭으로 잠그는 방식이며, 앞면 플랫, 다리 주름 디테일 및 커프드 헴, 옆면 슬립 포켓을 더했고 뒷면 버튼 잠금형 웰트 포켓, 조절 가능한 버튼 백스트랩, 허리 뒷면의 시그니처 스트라이프 그로그랭 루프 탭을 적용했습니다. 이 제품은 클래식 스타일로 핏 1입니다.','male'),(11,'코튼 색 팬츠','2,420,000','하의','Thom Brown','https://cdn-images.farfetch-contents.com/thom-browne_18590054_41476025_1000.jpg?c=0','색 벨트 루프 팬츠로, 펀믹스 헤어라인 체크 마드라스 면 소재로 제작되었습니다. 탭으로 잠그는 방식이며, 플랫 프론트(노턱), 와이드 커프스, 벨트 고리를 더했고 옆면 슬랜트 포켓, 뒷면 버튼 잠금형 웰트 포켓, 허리 뒷면의 시그니처 스트라이프 그로그랭 루프 탭을 적용했습니다.','male'),(12,'렝스 플리츠 스커트','6,680,000','하의','Thom Brown','https://cdn-images.farfetch-contents.com/thom-browne_18048335_39833018_1000.jpg?c=0','플리츠 스커트로, 헤링본 해리스 트위드 소재로 제작되었고 발목까지 내려오는 길이이며 플리츠의 스트라이프 인서트가 돋보입니다. 지퍼와 탭으로 잠그는 방식이며, 조절 가능한 버튼 백스트랩, 시그니처 스트라이프 그로그랭 트리밍의 드롭 백, 목 뒷면의 시그니처 스트라이프 그로그랭 루프 탭을 적용했습니다.','male'),(13,'오간자 체크 클래식 팬츠','3,670,000','하의','Thom Brown','https://cdn-images.farfetch-contents.com/thom-browne_17121358_36222109_1000.jpg?c=0','미디엄 그레이 색상의 클래식 팬츠로, 실크 오간자 체크 소재로 제작되었으며, 오른쪽 다리를 가로지르는 내로우 시그니처 스트라이프 디테일이 돋보입니다. 탭으로 잠그는 방식ㅣ며, 옆면 슬립 포켓과 뒷면 버튼 웰트 포켓, 조절 가능한 버튼 백스트랩, 토널 그로그랭 옆면 스트라이프를 더했고 허리 뒷면에는 시그니처 스트라이프 그로그랭 루프 탭을 적용했습니다. 이 제품은 클래식 스타일로 핏 1입니다.','male'),(14,'시어서커 클래식 팬츠','1,990,000','하의','Thom Brown','https://cdn-images.farfetch-contents.com/thom-browne_15715785_31312962_1000.jpg?c=0','미디엄 그레이 색상의 클래식 팬츠','male'),(15,'Malibu 쇼츠','1,120,000','하의','HERMES','https://assets.hermes.com/is/image/hermesproduct/malibu-%EC%87%BC%EC%B8%A0--355620H64G-worn-1-0-0-800-800_g.jpg','테크니컬 파나마 패브릭 소재의 루즈 쇼츠(코튼 70%, 폴리아미드 30%)','male'),(16,'수팅 4-바 쇼츠','1,930,000','하의','HERMES','https://cdn-images.farfetch-contents.com/thom-browne-4_14123221_27810873_1000.jpg?c=0','미디엄 그레이 색상의 수트 쇼츠','male'),(17,'언컨스트럭티드 치노 팬츠','1,160,000','하의','Thom Brown','https://cdn-images.farfetch-contents.com/thom-browne-4_12706740_40718053_1000.jpg?c=0','카멜 색상의 언컨스트럭티드 치노 팬츠로, 코튼 트윌 소재로 제작되었고 왼쪽 허벅지의 화이트 색상 솔기 4-바 디테일이 돋보입니다. 앞면 버튼으로 잠그는 방식이며, 제티드 힙 포켓과 다리의 주름 디테일을 더했고 커프스 위의 네임택 아플리케와 허리 뒷면의 시그니처 스트라이프 그로그랭 루프 탭을 적용했습니다.\r\n','male'),(18,'벨트루프 색 쇼츠','2,300,000','하의','Thom Brown','https://cdn-images.farfetch-contents.com/thom-browne_18589429_41467515_1000.jpg?c=0','벨트루프 색 쇼츠로, 펀믹스 마드라스 체크 면 소재로 제작되었고 탭으로 잠그는 방식입니다. 옆면 슬립 포켓, 버튼 잠금형 뒷면 웰트 포켓, 와이드 커프스를 더했고 허리 뒷면의 시그니처 스트라이프 그로그랭 루프 탭을 적용했습니다. 이 제품은 색 스타일로 핏 2입니다.','male'),(19,'플리츠 미디 스커트','9,190,000','하의','Thom Brown','https://cdn-images.farfetch-contents.com/thom-browne_18592377_41807132_1000.jpg?c=0','사이즈가 없나요? 사이즈를 선택하고 재입고될 경우 알림을 신청합니다','male'),(20,'미니 펜슬 스커트','1,660,000','하의','Thom Brown','https://cdn-images.farfetch-contents.com/thom-browne_18588430_40748384_1000.jpg?c=0','카키 색상의 미니 펜슬 스커트로, 피스 다이 개버딘 소재로 제작되었습니다. 탭으로 잠그는 방식이며, 플랫 프론트, 화이트 그로그랭 트리밍의 옆면 슬립 포켓, 버튼 잠금형 뒷면 웰트 포켓을 더했고 조절 가능한 버튼 백스트랩과 허리 뒷면의 시그니처 스트라이프 그로그랭 루프 탭을 적용했습니다.','male'),(21,'랩 미니 스커트','2,300,000','하의','Thom Brown','https://cdn-images.farfetch-contents.com/thom-browne_18584702_41728286_1000.jpg?c=0','화이트 색상의 플리츠 미니 랩 스커트로, 비스코스 소재로 제작되었고 티핑 스트라이프 및 왼쪽 힙의 네이비 4-바 스트라이프 디테일이 돋보입니다. 앞면에서 보이지 않게 랩으로 잠그는 방식이며, 허리 뒷면의 시그니처 스트라이프 그로그랭 루프 탭을 적용했습니다.','female'),(22,'A라인 스커트','1,550,000','하의','Thom Brown','https://cdn-images.farfetch-contents.com/thom-browne-4-a_18585003_43997172_1000.jpg?c=0','화이트 색상의 A라인 스커트로, 더블 페이스 메리노 울 소재로 제작되었고 왼쪽 힙의 네이비 4-바 스트라이프 인타르시아가 돋보이며 신축성이 뛰어난 네이비 허리 밴드와 허리 뒷면의 시그니처 스트라이프 그로그랭 루프 탭을 적용했습니다.','female'),(23,'미니 골프 스커트','1,480,000','하의','Thom Brown','https://cdn-images.farfetch-contents.com/thom-browne_18582999_41676710_1000.jpg?c=0','골프 미니 스커트로, 밀리터리 립스탑 소재로 제작되었고 스트라이프 프레이밍 디테일이 돋보입니다. 옆면 지퍼로 잠그는 방식이며, 헴 위의 네임택 아플리케와 조절 가능한 버튼 백스트랩을 더했고 허리 뒷면의 시그니처 스트라이프 그로그랭 루프 탭을 적용했습니다.','female'),(24,'하이 웨이스트 펜슬 스커트','2,160,000','하의','Thom Brown','https://cdn-images.farfetch-contents.com/thom-browne-120_18441619_40359077_1000.jpg?c=0','하이 웨이스트 미드 카프 펜슬 스커트로, 슈퍼 120수 트윌 소재로 제작되었습니다. 옆면 지퍼로 잠그는 방식이며, 토널 그로그랭 티핑의 더블 뒷면 벤트와 허리 뒷면의 시그니처 스트라이프 그로그랭 루프 탭을 적용했습니다.','female'),(25,'플리츠 미니 스커트','1,330,000','하의','Thom Brown','https://cdn-images.farfetch-contents.com/thom-browne-4_15972339_31492215_1000.jpg?c=0','네이비 색상의 플리츠 백 미니 스커트로, 플라이웨이트 테크 패브릭 소재로 제작되었고 왼쪽 힙의 화이트 4-바 스트라이프 디테일이 돋보입니다. 드로스트링 허리 밴드와 헴 위의 네임택 아플리케를 더했고 허리 뒷면의 시그니처 스트라이프 그로그랭 루프 탭을 적용했습니다.','female'),(26,'라이즈 패치 포켓 쇼츠','2,100,000','하의','Thom Brown','https://cdn-images.farfetch-contents.com/thom-browne_18584658_41792825_1000.jpg?c=0','로우 라이즈 쇼츠로, 펀믹스 뉴트럴 데님 소재로 제작되었고 플랩 패치 앞면 포켓이 돋보입니다. 탭으로 잠그는 방식이며, 플랫 프론트(노턱), 와이드 커프스, 옆면의 조절 가능한 버튼 탭을 더했고 뒷면 버튼 잠금형 웰트 포켓과 허리 뒷면의 시그니처 스트라이프 그로그랭 루프 탭을 적용했습니다.','female'),(27,'피케 립 거싯 스트라이프 쇼츠','780,000','하의','Thom Brown','https://cdn-images.farfetch-contents.com/thom-browne_18583748_41720660_1000.jpg?c=0','클래식 면 피케 소재로 제작된 쇼츠로, 스트라이프 립 니트 거싯이 돋보입니다. 브라스 애글릿의 드로스트링 허리 밴드와 옆면 슬랜트 포켓을 더했고 왼쪽 커프스 위의 네임택 아플리케와 허리 뒷면의 시그니처 스트라이프 그로그랭 루프 탭을 적용했습니다.','female'),(28,'슬리브리스 미니 드레스','2,320,000','하의','Thom Brown','https://cdn-images.farfetch-contents.com/thom-browne_18584686_43995462_1000.jpg?c=0','네이비 색상의 슬리브리스 미니 드레스로, 오토만 포인텔 스티치 면 소재로 제작되었고 플리츠 바텀 및 헴의 스트라이프 티핑이 돋보이며 앞면 버튼으로 잠그는 방식의 브이넥, 스트라이프 애글릿의 드로스트링 허리와 시그니처 스트라이프 그로그랭 트리밍의 드롭 백을 더했고 목 뒷면의 시그니처 스트라이프 그로그랭 루프 탭을 적용했습니다.','female'),(29,'마드라스 타이 셔츠드레스','2,490,000','하의','Thom Brown','https://cdn-images.farfetch-contents.com/thom-browne_18584758_40955129_1000.jpg?c=0','반팔 버튼다운 셔츠드레스로, 저지 스티치 메리노 울 소재로 제작되었고 라운드 칼라 및 마드라스 체크 타이 디테일이 돋보입니다. 앞면 버튼으로 잠그는 방식이며, 체스트 패치 포켓, 옆면 버튼 벤트, 시그니처 스트라이프 그로그랭 트리밍의 드롭 백을 더했고 목 뒷면의 시그니처 스트라이프 그로그랭 루프 탭을 적용했습니다.','female'),(30,'슬리브 폴로 셔츠드레스','1,180,000','하의','Thom Brown','https://cdn-images.farfetch-contents.com/thom-browne-a_12713540_13615149_1000.jpg?c=0','화이트 색상의 짧은 A-라인 폴로 드레스로, 피케 면 소재로 제작되었고 뒷면 중앙의 스트라이프 디테일이 돋보입니다. 부분적인 디자인의 버튼 플래킷과 옆면 버튼 벤트 및 스트라이프 그로그랭 트리밍의 스텝 헴을 더했고 헴 위의 네임택과 목 뒷면의 시그니처 스트라이프 그로그랭 루프 탭을 적용했습니다.','female'),(31,'트롱프뢰유 수트 피티 드레스','16,080,000','하의','Thom Brown','https://cdn-images.farfetch-contents.com/thom-browne_13906781_20111183_1000.jpg?c=0','카키 그린 색상의 피티 드레스','female'),(32,'4 바 플리츠 미니 스커트','2,100,000','하의','Thom Brown','https://cdn-images.farfetch-contents.com/thom-browne-4_16424765_37951683_1000.jpg?c=0','사이즈가 없나요? 사이즈를 선택하고 재입고될 경우 알림을 신청합니다','female'),(33,'A-라인 니렝스 스커트','1,930,000','하의','Thom Brown','https://cdn-images.farfetch-contents.com/thom-browne-a_16871544_35999225_1000.jpg?c=0','멀티컬러의 무릎 길이 A-라인 스커트로, 헤어라인 마드라스 체크 소재로 제작되었고 스트라이프 자카드 인레인 에지 디테일과 오버레이 랩 디자인이 돋보이며 허리 뒷면에 시그니처 스트라이프 그로그랭 루프 탭을 적용했습니다.','female'),(34,'4-바 드로스트링 색 스커트','990,000','하의','Thom Brown','https://cdn-images.farfetch-contents.com/thom-browne-4_13253511_15785973_1000.jpg?c=0','네이비 색상 클래식 루프백 저지 소재의 색 스커트로, 무릎 기장이며 왼쪽 허벅지의 화이트 색상 엔지니어 4바 스트라이프 디테일이 돋보입니다. 허리의 드로스트링을 더했고 헴 위의 네임택 아플리케와 허리 뒷면의 시그니처 그로그랭 루프 탭을 적용했습니다.','female'),(35,'플리츠 테니스 드레스','1,430,000','하의','Thom Brown','https://cdn-images.farfetch-contents.com/thom-browne-rwb_14179843_41109094_1000.jpg?c=0','핑크 색상의 드레스','female'),(36,'플리츠 테니스 드레스','1,430,000','하의','Thom Brown','https://cdn-images.farfetch-contents.com/thom-browne-rwb_14179842_41107360_1000.jpg?c=0','네이비 색상의 드레스','female'),(37,'렝스 포인트 칼라 셔츠드레스','1,110,000','하의','Thom Brown','https://cdn-images.farfetch-contents.com/thom-browne_12870735_38222494_1000.jpg?c=0','화이트 색상의 허벅지 길이까지 오는 셔츠드레스로, 솔리드 포플린 소재로 제작되었고 앞면 버튼으로 잠그는 방식이며 스트라이프 그로그랭 플래킷과 버튼 다운 포인트 칼라가 돋보입니다. 가슴 패치 포켓 및 셔츠 테일 헴 위의 네임택 아플리케, 버튼 커프스, 뒷면 플리츠 요크를 더했고 라커 루프와 목 뒷면의 시그니처 스트라이프 그로그랭 루프 탭을 적용했습니다.\r\n','female'),(38,'슬리브리스 드레이프 컬럼 가운','14,230,000','하의','Thom Brown','https://cdn-images.farfetch-contents.com/thom-browne-3d_17155564_36252094_1000.jpg?c=0','라이트 그레이 시어 소프트 튤 소재의 드레이프 민소매 컬럼 드레스로, 전체적으로 적용된 오간자 3D 플로랄 아플리케와 깔끔한 크루넥이 돋보입니다. 뒷면의 지퍼로 잠그는 방식이며, 목 뒷면의 시그니처 스트라이프 그로그랭 루프 탭을 적용했습니다.','female'),(39,'개더드 미니 셔츠드레스','3,010,000','하의','Thom Brown','https://cdn-images.farfetch-contents.com/thom-browne_18582988_41769190_1000.jpg?c=0','체크 슈퍼사이즈 셔츠드레스로, 브로더리 앙글레즈 소재로 제작되었고 허벅지까지 내려오는 길이이며 플라워 디테일 및 옆면 개더드 심이 돋보입니다. 앞면 버튼으로 잠그는 방식이며, 라운드 칼라, 셔츠 테일 헴 위의 네임택 아플리케, 라커 루프의 뒷면 솔기 요크를 더했고 목 뒷면의 시그니처 스트라이프 그로그랭 루프 탭을 적용했습니다.','female'),(40,'니 렝스 플리츠 스커트','3,500,000','하의','Thom Brown','https://cdn-images.farfetch-contents.com/thom-browne-4_17720574_39822261_1000.jpg?c=0','라이트 그레이 색상의 무릎 길이 플리츠 스커트로, 바시티 피케 소재로 제작되었고 왼쪽 허벅지의 4-바 스트라이프 디테일이 돋보입니다. 옆면 지퍼로 잠그는 방식이며, 헴 위의 네임택 아플리케와 시그니처 스트라이프 그로그랭 트리밍 드롭 백을 더했고 허리 뒷면의 시그니처 스트라이프 그로그랭 루프 탭을 적용했습니다.','female'),(41,'스니커즈','1,350,000','신발','HERMES','https://assets.hermes.com/is/image/hermesproduct/get-up-%EC%8A%A4%EB%8B%88%EC%BB%A4%EC%A6%88--231721ZH90-worn-1-0-0-800-800_g.jpg','시그니처 “Hermes Paris” 스텐실이 장식된 카프스킨 소재의 하이탑 스니커즈\r\n모던한 룩으로 완벽한 서머 스타일을 연출해줍니다.','male'),(42,'스니커즈','1,670,000','신발','HERMES','https://assets.hermes.com/is/image/hermesproduct/day-%EC%8A%A4%EB%8B%88%EC%BB%A4%EC%A6%88--212901ZH90-worn-1-0-0-800-800_g.jpg','기능성 팔라듐 도금 Kelly 버클이 장식된 카프스킨 소재의 스니커즈\r\n모던한 어반 룩을 완성합니다.','male'),(43,'스니커즈','1,690,000','신발','HERMES','https://assets.hermes.com/is/image/hermesproduct/freestyle-%EC%8A%A4%EB%8B%88%EC%BB%A4%EC%A6%88--222917ZHNH-worn-1-0-0-800-800_g.jpg','카프스킨 및 엡솜 헤리티지 카프스킨 소재의 하이탑 스니커즈\r\n“Clou de selle” 모티프 솔이 장식되어 모던한 어반 룩을 선사합니다.','male'),(44,'스니커즈','1,420,000','신발','HERMES','https://assets.hermes.com/is/image/hermesproduct/free-%EC%8A%A4%EB%8B%88%EC%BB%A4%EC%A6%88--231790ZHCB-worn-1-0-0-800-800_g.jpg','“H en biais” 데님 및 카프스킨 소재의 스니커즈\r\n“Clou de Selle” 모티프 솔이 장식되어 모던한 어반 룩을 선사합니다.','male'),(45,'스니커즈','1,160,000','신발','HERMES','https://assets.hermes.com/is/image/hermesproduct/escape-%EC%8A%A4%EB%8B%88%EC%BB%A4%EC%A6%88--221932ZHI6-worn-1-0-0-800-800_g.jpg','테크니컬 메쉬 및 스웨이드 고트스킨 소재의 스니커즈\r\n시크한 어반 스타일을 연출해줍니다.','male'),(46,'스니커즈','1,430,000','신발','HERMES','https://assets.hermes.com/is/image/hermesproduct/trail-%EC%8A%A4%EB%8B%88%EC%BB%A4%EC%A6%88--221904ZH76-worn-1-0-0-800-800_g.jpg','카프스킨 및 스웨이드 고트스킨 소재의 스니커즈\r\n새로운 매력이 더해진 아이코닉 디자인을 선보입니다.','male'),(47,'샌들','1,280,000','신발','HERMES','https://assets.hermes.com/is/image/hermesproduct/izmir-%EC%83%8C%EB%93%A4--222849ZHA2-worn-1-0-0-800-800_g.jpg','아이코닉 “H” 컷아웃이 장식된 울스킨 소재의 샌들\r\n아이코닉 에르메스 스타일로 다양한 의상과 매치할 수 있는 필수 아이템입니다.','male'),(48,'로퍼','1,320,000','신발','HERMES','https://assets.hermes.com/is/image/hermesproduct/guillaume-%EB%A1%9C%ED%8D%BC--231949ZABE-worn-1-0-0-800-800_g.jpg','유연한 스웨이드 카프스킨 소재의 로퍼\r\n가볍고 유연한 솔이 완벽한 여름을 위한 캐주얼 스타일을 연출합니다.\r\n','male'),(49,'로퍼','1,320,000','신발','HERMES','https://assets.hermes.com/is/image/hermesproduct/giovanni-%EB%A1%9C%ED%8D%BC--231992ZA02-worn-1-0-0-800-800_g.jpg','팔라듐 도금 Paris 버클이 장식된 고트스킨 소재의 로퍼\r\n시크하고 대담한 스타일을 완성합니다.\r\n','male'),(50,'로퍼','1,320,000','신발','HERMES','https://assets.hermes.com/is/image/hermesproduct/guillaume-%EB%A1%9C%ED%8D%BC--231951ZA01-worn-1-0-0-800-800_g.jpg','유연한 카프스킨 소재의 로퍼\r\n가볍고 유연한 솔이 완벽한 여름을 위한 캐주얼 스타일을 연출합니다.','male'),(51,'앵클부츠','2,360,000','신발','HERMES','https://assets.hermes.com/is/image/hermesproduct/fortune-%EC%95%B5%ED%81%B4-%EB%B6%80%EC%B8%A0--222979ZH01-worn-1-0-0-800-800_g.jpg','블레이크 스티치드 솔과 아이코닉 유광 블랙 PVD 도금 Kelly 버클이 특징인 카프스킨 소재의 앵클 부츠\r\n시크한 디자인을 연출합니다.','male'),(52,'Antigua 에스파드리유','700,000','신발','HERMES','https://assets.hermes.com/is/image/hermesproduct/antigua-%EC%97%90%EC%8A%A4%ED%8C%8C%EB%93%9C%EB%A6%AC%EC%9C%A0--221833ZHBC-worn-1-0-0-800-800_g.jpg','로프 솔 및 “H” 컷아웃이 특징인 데님 소재의 에스파드리유\r\n해변에 어울리는 캐주얼 스타일입니다.','male'),(53,'Ground 로퍼','1,280,000','신발','HERMES','https://assets.hermes.com/is/image/hermesproduct/ground-%EB%A1%9C%ED%8D%BC--231900ZHVD-worn-1-0-0-800-800_g.jpg','“H” 컷아웃 및 스포티한 솔이 장식된 스웨이드 고트스킨 소재의 로퍼\r\n캐주얼한 스포티 룩을 연출합니다.','male'),(54,'Day 스니커즈','1,870,000','신발','HERMES','https://assets.hermes.com/is/image/hermesproduct/day-%EC%8A%A4%EB%8B%88%EC%BB%A4%EC%A6%88--222869ZH02-worn-1-0-0-800-800_g.jpg','울스킨 안감과 기능성 팔라듐 도금 Kelly 버클이 장식된 카프스킨 소재의 스니커즈\r\n모던한 어반 룩을 완성합니다.','male'),(55,'Fresh 앵클 부츠','1,280,000','신발','HERMES','https://assets.hermes.com/is/image/hermesproduct/fresh-%EC%95%B5%ED%81%B4-%EB%B6%80%EC%B8%A0--222960ZHV1-worn-1-0-0-800-800_g.jpg','러버 솔이 장식된 카프스킨 및 가벼운 파라슈트 패브릭 소재의 앵클 부츠\r\n스포티한 아웃도어 룩을 연출해주는 편안한 모델입니다.','male'),(56,'Tadao 샌들','1,070,000','신발','HERMES','https://assets.hermes.com/is/image/hermesproduct/tadao-%EC%83%8C%EB%93%A4--222877ZHBK-worn-1-0-0-800-800_g.jpg','인체공학적인 솔과 스테인리스 스틸 버클이 장식된 스웨이드 고트스킨 및 “H en biais” 캔버스 소재의 샌들\r\n세련된 디자인으로 편안한 스포티 룩을 완성합니다.','male'),(57,'Paris 로퍼','1,600,000','신발','HERMES','https://assets.hermes.com/is/image/hermesproduct/paris-%EB%A1%9C%ED%8D%BC--211900ZAI2-worn-1-0-0-800-800_g.jpg','시그니처 “H” 디테일이 장식된 스웨이드 고트스킨 소재의 로퍼\r\n시크한 디자인을 연출합니다.','male'),(58,'Alessandro 로퍼','1,180,000','신발','HERMES','https://assets.hermes.com/is/image/hermesproduct/alessandro-%EB%A1%9C%ED%8D%BC--222938ZHV1-worn-1-0-0-800-800_g.jpg','브레이디드 가죽 코드와 “Chaine d\"Ancre” 버클이 장식된 스웨이드 고트스킨 소재의 드라이빙 로퍼\r\n땅과 바다에서 이상적인 마린 스타일의 로퍼입니다.','male'),(59,'Deep 스니커즈','1,210,000','신발','HERMES','https://assets.hermes.com/is/image/hermesproduct/deep-%EC%8A%A4%EB%8B%88%EC%BB%A4%EC%A6%88--231797ZHQ9-worn-1-0-0-800-800_g.jpg','니트 및 카프스킨 소재의 스니커즈\r\n세련된 그래픽 디자인이 네오 빈티지 어반 룩을 완성합니다.','male'),(60,'Electric 샌들','1,110,000','신발','HERMES','https://assets.hermes.com/is/image/hermesproduct/electric-%EC%83%8C%EB%93%A4--231830ZHI2-worn-1-0-0-800-800_g.jpg','테크니컬 저지 및 카프스킨 소재의 샌들\r\n가벼운 느낌의 솔과 대비를 이루는 디자인으로 활기차고 모던한 스타일을 연출합니다.','male'),(61,'스니커즈','1,350,000','신발','HERMES','https://assets.hermes.com/is/image/hermesproduct/get-up-%EC%8A%A4%EB%8B%88%EC%BB%A4%EC%A6%88--231721ZH90-worn-1-0-0-800-800_g.jpg','시그니처 “Hermes Paris” 스텐실이 장식된 카프스킨 소재의 하이탑 스니커즈\r\n모던한 룩으로 완벽한 서머 스타일을 연출해줍니다.','Female'),(62,'스니커즈','1,670,000','신발','HERMES','https://assets.hermes.com/is/image/hermesproduct/day-%EC%8A%A4%EB%8B%88%EC%BB%A4%EC%A6%88--212901ZH90-worn-1-0-0-800-800_g.jpg','기능성 팔라듐 도금 Kelly 버클이 장식된 카프스킨 소재의 스니커즈\r\n모던한 어반 룩을 완성합니다.','female'),(63,'샌들','1,570,000','신발','HERMES','https://assets.hermes.com/is/image/hermesproduct/glossy-60-%EC%83%8C%EB%93%A4--231208Z%2090-worn-1-0-0-800-800_g.jpg','아이코닉한 \"Chaine d\"Ancre”, “Chaine Gourmette” 및 “Fermoir Glenan” 모티프가 장식된 메탈 힐이 돋보이는 나파 가죽 소재의 샌들\r\n시크한 페미닌 룩을 연출합니다.','female'),(64,'샌들','1,350,000','신발','HERMES','https://assets.hermes.com/is/image/hermesproduct/oran-%EC%83%8C%EB%93%A4--231288Z%2029-worn-1-0-0-800-800_g.jpg','아이코닉 “H” 컷아웃이 장식된 울스킨 소재의 샌들\r\n대담하면서도 편안한 스타일을 연출합니다.','female'),(65,'로퍼','1,470,000','신발','HERMES','https://assets.hermes.com/is/image/hermesproduct/colette-%EB%A1%9C%ED%8D%BC--221157Z%201E-worn-1-0-0-800-800_g.jpg','아이코닉 빈티지 골드 도금 Roulis 버클이 장식된 스웨이드 고트스킨 소재의 로퍼\r\n시간이 흘러도 변치 않는 우아한 디자인을 선보입니다.','female'),(66,'로퍼','1,700,000','신발','HERMES','https://assets.hermes.com/is/image/hermesproduct/destin-%EB%A1%9C%ED%8D%BC--231066Z%20A3-worn-1-0-0-800-800_g.jpg','블레이크 스티치드 솔과 아이코닉 팔라듐 도금 Kelly 버클이 특징인 헤리티지 카프스킨 소재의 로퍼\r\n시크한 디자인을 연출합니다.','female'),(67,'로퍼','1,700,000','신발','HERMES','https://assets.hermes.com/is/image/hermesproduct/dauphine-70-%EB%A1%9C%ED%8D%BC--231041Z%2002-worn-1-0-0-800-800_g.jpg','로즈 골드 도금 시그니처 “H” 디테일이 장식된 고트스킨 소재의 하이힐 로퍼\r\n시크한 디자인을 연출합니다.','female'),(68,'에스파드리유','1,090,000','신발','HERMES','https://assets.hermes.com/is/image/hermesproduct/elda-%EC%97%90%EC%8A%A4%ED%8C%8C%EB%93%9C%EB%A6%AC%EC%9C%A0--221143Z%20F8-worn-1-0-0-800-800_g.jpg','“H” 컷아웃 디테일과 웨지 로프 힐이 특징인 고트스킨 소재의 에스파드리유\r\n랩 어라운드 앵클 스트랩이 세련된 페미닌 룩을 연출합니다.','female'),(69,'뮬','1,870,000','신발','HERMES','https://assets.hermes.com/is/image/hermesproduct/carlotta-%EB%AE%AC--231289Z%20CB-worn-1-0-0-800-800_g.jpg','비치우드 솔과 아이코닉 팔라듐 도금 Kelly 버클이 장식된 데님 및 카프스킨 소재의 클로그\r\n탁월한 노하우가 돋보이는 세련된 보헤미안 스타일을 선보입니다.','female'),(70,'Fuji 부츠','2,380,000','신발','HERMES','https://assets.hermes.com/is/image/hermesproduct/fuji-%EB%B6%80%EC%B8%A0--222048Z%20F8-worn-1-0-0-800-800_g.jpg','퀼티드 스웨이드 고트스킨 소재의 부츠\r\n레인 부츠와 스노우 부츠에서 영감을 얻은 모델입니다. 여성용 레디 투 웨어에서 영감을 얻은 “Mosaique” 모티프로 여성스러운 아웃도어 룩을 연출합니다.','female'),(71,'Folk 35 부츠','2,900,000','신발','HERMES','https://assets.hermes.com/is/image/hermesproduct/folk-35-%EB%B6%80%EC%B8%A0--222037Z%2002-worn-1-0-0-800-800_g.jpg','“Brides de Gala” 디자인에서 영감을 얻은 퀼티드 자수 디테일이 장식된 카프스킨 소재의 카우보이 부츠\r\n대담하고 세련된 룩을 연출합니다.','female'),(72,'Folie 60 부츠','3,750,000','신발','HERMES','https://assets.hermes.com/is/image/hermesproduct/folie-60-%EB%B6%80%EC%B8%A0--222063Z%20A3-worn-1-0-0-800-800_g.jpg','울스킨 안감과 노치드 솔, 팔라듐 도금 시그니처 “H” 디테일이 장식된 스웨이드 카프스킨 소재의 하이힐 부츠\r\n세련되면서도 캐주얼한 스타일을 선보입니다.','female'),(73,'Girly 60 펌프스','1,590,000','신발','HERMES','https://assets.hermes.com/is/image/hermesproduct/girly-60-%ED%8E%8C%ED%94%84%EC%8A%A4--231212Z%2002-worn-1-0-0-800-800_g.jpg','아이코닉한 \"Chaine d\"Ancre”, “Chaine Gourmette” 및 “Fermoir Glenan” 모티프가 장식된 메탈 힐이 돋보이는 스웨이드 고트스킨 소재의 펌프스\r\n시크한 페미닌 룩을 연출합니다.','female'),(74,'Elysee 70 펌프스','1,650,000','신발','HERMES','https://assets.hermes.com/is/image/hermesproduct/elysee-70-%ED%8E%8C%ED%94%84%EC%8A%A4--221066Z%2091-worn-1-0-0-800-800_g.jpg','프린지 디테일과 팔라듐 도금 시그니처 “H” 디테일이 장식된 카프스킨 소재의 하이힐 로퍼\r\n시크한 디자인을 연출합니다.','female'),(75,'Oz 뮬','1,700,000','신발','HERMES','https://assets.hermes.com/is/image/hermesproduct/oz-%EB%AE%AC--222075Z%2090-worn-1-0-0-800-800_g.jpg','“Tigre Royal” 프린트와 아이코닉 팔라듐 도금 Kelly 버클이 장식된 카프스킨 소재의 뮬\r\n시크하고 대담한 스타일을 완성합니다.','female'),(76,'Catena 뮬','1,180,000','신발','HERMES','https://assets.hermes.com/is/image/hermesproduct/catena-%EB%AE%AC--222139Z%2090-worn-1-0-0-800-800_g.jpg','“H” 컷아웃 디테일과 “Op\"H” 프린트 인솔이 장식된 부드러운 카프스킨 소재의 뮬\r\n세련된 캐주얼 스타일을 선보입니다.','female'),(77,'Destin 로퍼','1,870,000','신발','HERMES','https://assets.hermes.com/is/image/hermesproduct/destin-%EB%A1%9C%ED%8D%BC--231065Z%20V1-worn-1-0-0-800-800_g.jpg','블레이크 스티치드 솔과 아이코닉 팔라듐 도금 Kelly 버클이 특징인 카프스킨 및 프린지 캔버스 소재의 로퍼\r\n시크한 디자인을 연출합니다.','female'),(78,'Day 스니커즈','1,620,000','신발','HERMES','https://assets.hermes.com/is/image/hermesproduct/day-%EC%8A%A4%EB%8B%88%EC%BB%A4%EC%A6%88--222181Z%207Q-worn-1-0-0-800-800_g.jpg','기능성 팔라듐 도금 Kelly 버클이 장식된 스웨이드 고트스킨 소재의 스니커즈\r\n모던한 어반 룩을 연출합니다.','female'),(79,'Get Up 스니커즈','1,140,000','신발','HERMES','https://assets.hermes.com/is/image/hermesproduct/get-up-%EC%8A%A4%EB%8B%88%EC%BB%A4%EC%A6%88--231028Z%20PN-worn-1-0-0-800-800_g.jpg','시그니처 “Hermes Paris” 스텐실이 장식된 H 캔버스 및 카프스킨 소재의 하이탑 스니커즈\r\n모던한 룩으로 완벽한 서머 스타일을 연출해줍니다.','female'),(80,'Chris 스니커즈','1,520,000','신발','HERMES','https://assets.hermes.com/is/image/hermesproduct/chris-%EC%8A%A4%EB%8B%88%EC%BB%A4%EC%A6%88--222291Z%2090-worn-1-0-0-800-800_g.jpg','카프스킨 및 스웨이드 고트스킨 소재의 스니커즈\r\n카프스킨 소재의 “Mosaique” 모티프가 그래픽적이고 세련된 스타일을 선사합니다.','female'),(81,'클래식 스포츠 코트','2,920,000','상의','Thom Brown','https://cdn-images.farfetch-contents.com/thom-browne_18590098_43266013_1000.jpg?c=0','모델 신장은 185cm로, 사이즈 0을 착용했습니다.','male'),(82,'캡','560,000','상의','HERMES','https://assets.hermes.com/is/image/hermesproduct/riley-panama-%EC%BA%A1--221067N%20N1-worn-1-0-0-800-800_g.jpg','크라운의 트롱프뢰유 효과 엠보싱 디테일과 팔라듐 도금 Clou de Selle 디테일이 특징인 Brisa 파나마 캡','male'),(83,'폴로 셔츠','720,000','상의','HERMES','https://assets.hermes.com/is/image/hermesproduct/piqures-sellier-%ED%8F%B4%EB%A1%9C-%EC%85%94%EC%B8%A0--357950HA01-worn-1-0-0-800-800_g.jpg','“Piqures Sellier” 디테일이 장식된 코튼 소재의 쇼트 슬리브 폴로 셔츠(코튼 100%)','male'),(84,'“Renfort cuir” 티셔츠','2,320,000','상의','HERMES','https://assets.hermes.com/is/image/hermesproduct/renfort-cuir-%ED%8B%B0%EC%85%94%EC%B8%A0--357140HA3X-worn-1-0-0-800-800_g.jpg','“Renfort cuir” 디테일이 장식된 울 소재의 쇼트 슬리브 크루넥 티셔츠(울 100%)','male'),(85,'코트','180,6176 ','상의','몰라','https://assetsprx.matchesfashion.com/img/1499337/2/1300.jpg','베어그릴스도 입는 생존 코트','Male'),(86,'크루넥 스웨터','1,840,000','상의','HERMES','https://assets.hermes.com/is/image/hermesproduct/%ED%81%AC%EB%A3%A8%EB%84%A5-%EC%8A%A4%EC%9B%A8%ED%84%B0--357780HA4J-worn-1-0-0-800-800_g.jpg','코튼 소재의 롱 슬리브 크루넥 스웨터(코튼 100%)','male'),(87,'코트','2,354,621 ','상의','AURALEE','https://assetsprx.matchesfashion.com/img/1520949/1/1300.jpg','알프스 산양 캐시모어로 만든 코트','Male'),(88,'코트','3,736,280','상의','ThomBrown','https://assetsprx.matchesfashion.com/img/1504250/1/1300.jpg','이거 왜 코트야?','Male'),(89,'“Scub\"H” 크루넥 스웨터','1,580,000','상의','HERMES','https://assets.hermes.com/is/image/hermesproduct/scub-h-%ED%81%AC%EB%A3%A8%EB%84%A5-%EC%8A%A4%EC%9B%A8%ED%84%B0--357810HA90-worn-1-0-0-800-800_g.jpg','“Scub\"H” 엠보싱 디테일이 장식된 코튼 소재의 롱 슬리브 크루넥 스웨터(코튼 100%)','male'),(90,'가죽 디테일 장식 바시티 재킷','2,220,000','상의','HERMES','https://assets.hermes.com/is/image/hermesproduct/%EA%B0%80%EC%A3%BD-%EB%94%94%ED%85%8C%EC%9D%BC-%EC%9E%A5%EC%8B%9D-%EB%B0%94%EC%8B%9C%ED%8B%B0-%EC%9E%AC%ED%82%B7--357800HA1O-worn-1-0-0-800-800_g.jpg','코튼 소재의 버튼 바시티 재킷(코튼 100%)','male'),(91,'스트레이트 컷 재킷','3,680,000','상의','HERMES','https://assets.hermes.com/is/image/hermesproduct/%EC%8A%A4%ED%8A%B8%EB%A0%88%EC%9D%B4%ED%8A%B8-%EC%BB%B7-%EC%9E%AC%ED%82%B7--352020HA1V-worn-1-0-0-800-800_g.jpg','브레이디드 코튼 보일 소재의 버튼 스트레이트 컷 재킷(코튼 100%)','male'),(92,'박시 핏 폴로 셔츠','1,920,000','상의','HERMES','https://assets.hermes.com/is/image/hermesproduct/tatersale-remix-bis-%EB%B0%95%EC%8B%9C-%ED%95%8F-%ED%8F%B4%EB%A1%9C-%EC%85%94%EC%B8%A0--356600HM1T-worn-1-0-0-800-800_g.jpg','“Tatersale Remix Bis” 프린트가 장식된 코튼 소재의 루즈 박시 핏 셔츠(코튼 100%)\r\n','male'),(93,'“Sunset” 크루넥 스웨터','3,360,000','상의','HERMES','https://assets.hermes.com/is/image/hermesproduct/sunset-%ED%81%AC%EB%A3%A8%EB%84%A5-%EC%8A%A4%EC%9B%A8%ED%84%B0--357130HA0R-worn-1-0-0-800-800_g.jpg','“Sunset” 프린트가 장식된 더블 사이드 캐시미어 소재의 롱 슬리브 자카드 크루넥 스웨터(캐시미어 100%)','male'),(94,'클래식 스포츠 코트','6,000,000','상의','Thom Brown','https://cdn-images.farfetch-contents.com/thom-browne_18590085_40753384_1000.jpg?c=0','클래식한 스포츠 코트로, 스티프 울 개버딘 소재로 제작되었고 전체의 화이트 그로그랭 티핑 디테일이 돋보입니다. 앞면 투버튼으로 잠그는 방식이며, 노치드 라펠, 앞면 플랩 포켓 2개 및 싱글 체스트 포켓, 시그니처 스트라이프 그로그랭 트리밍의 버튼 커프스를 더했고 뒷면 더블 벤트 헴, 스트라이프 안감 및 내부 포켓, 네임택 및 목 뒷면의 시그니처 스트라이프 그로그랭 루프 탭을 적용했습니다. 이 제품은 클래식 스타일로 핏 1입니다.','male'),(95,'T-다트 골프 재킷','10,490,000','상의','Thom Brown','https://cdn-images.farfetch-contents.com/thom-browne-t_18588435_40629537_1000.jpg?c=0','네이비 색상의 T-다트 골프 재킷으로, 밀리터리 웨이트 캐시미어 소재로 제작되었습니다. 앞면 브라스 버튼으로 잠그는 방식이며, 셔츠 칼라, 버튼 잠금형 앞면 플랩 포켓, 버튼 커프스를 더했고 동일 소재 안감의 내부 포켓 및 네임택과 목 뒷면의 시그니처 스트라이프 그로그랭 루프 탭을 적용했습니다.','male'),(96,'싱글 벤트 스포츠 코트','5,510,000','상의','Thom Brown','https://cdn-images.farfetch-contents.com/thom-browne-100_18441611_40361538_1000.jpg?c=0','화이트 색상의 싱글 벤트 스포츠 코트로, 슈퍼 100수 메리노 울 트윌 소재로 제작되었고 블랙 그로그랭 티핑이 돋보입니다. 앞면 투버튼으로 잠그는 방식이며, 노치드 라펠, 앞면 플랩 포켓 3개 및 싱글 체스트 포켓, 뒷면 싱글 벤트를 더했고 시그니처 스트라이프 그로그랭 트리밍의 버튼 커프스, 내부 포켓 및 네임택의 화이트 안감, 목 뒷면의 시그니처 스트라이프 그로그랭 루프 탭을 적용했습니다.','male'),(97,'시어서커 루프백 4-바 색 재킷','2,800,000','상의','Thom Brown','https://cdn-images.farfetch-contents.com/thom-browne-4_18757191_42460515_1000.jpg?c=0','색 재킷으로, 시어서커 루프백 소재로 제작되었습니다. 앞면 쓰리버튼으로 잠그는 방식이며, 노치드 라펠과 앞면 패치 포켓 3개를 더했고 시그니처 스트라이프 그로그랭 트리밍의 버튼 커프스, 뒷면의 싱글 벤트, 목 뒷면의 시그니처 스트라이프 그로그랭 루프 탭을 적용했습니다. 이 제품은 색 스타일로 핏 2입니다.','male'),(98,'엔지니어 4-바 클래식 재킷','3,000,000','상의','Thom Brown','https://cdn-images.farfetch-contents.com/thom-browne-4_16874421_35837782_1000.jpg?c=0','미디엄 그레이 색상의 클래식 재킷으로, 슈팅 면 소재로 제작되었고 왼쪽 소매의 화이트 엔지니어드 4-바 스트라이프 디테일이 돋보입니다. 앞면 버튼 2개로 잠그는 방식이며, 노치드 라펠, 앞면 플랩 포켓 2개 및 싱글 체스트 포켓을 더했고 뒷면의 더블 벤트 헴과 시그니처 스트라이프 그로그랭 트리밍 및 버튼 커프스, 스트라이프 안감, 내부 포켓과 네임택, 목 뒷면의 시그니처 스트라이프 그로그랭 루프 탭을 적용했습니다.\r\n이 제품은 클래식 스타일로 핏 1입니다.','male'),(99,'펀믹스 버드 앤 비 크루넥 풀오버','2,300,000','상의','Thom Brown','https://cdn-images.farfetch-contents.com/thom-browne_18590158_43997213_1000.jpg?c=0','그레이 색상의 크루넥 풀오버로, 펀믹스 면 메리노 소재로 제작되었고 전체 새와 벌 디자인의 하프 드롭 인타르시아 및 왼쪽 소매의 화이트 4-바 스트라이프 디테일이 돋보입니다. 시그니처 스트라이프 그로그랭 트리밍의 옆면 버튼 벤트 및 커프스를 더했고 목 뒷면의 시그니처 스트라이프 그로그랭 루프 탭을 적용했습니다.','male'),(100,'브이넥 베스트','1,080,000','상의','Thom Brown','https://cdn-images.farfetch-contents.com/thom-browne-4_18590039_40684182_1000.jpg?c=0','크림 색상의 브이넥 베스트로, 리버스 저지 스티치 도니골 소재로 제작되었고 넥라인의 그레이 4-바 스트라이프 디테일이 돋보입니다. 시그니처 스트라이프 그로그랭 트리밍의 옆면 버튼 벤트와 목 뒷면의 시그니처 스트라이프 그로그랭 루프 탭을 적용했습니다.','male'),(101,'크루넥 풀오버','1,680,000','상의','Thom Brown','https://cdn-images.farfetch-contents.com/thom-browne-4_18588433_41470821_1000.jpg?c=0','그레이 색상의 크루넥 풀오버로, 펀믹스 파인 메리노 울 소재로 제작되었고 왼쪽 소매의 화이트 4-바 스트라이프 디테일이 돋보입니다. 시그니처 스트라이프 그로그랭 트리밍의 옆면 버튼 벤트 및 커프스를 더했고 목 뒷면의 시그니처 스트라이프 그로그랭 루프 탭을 적용했습니다.','male'),(102,'숄 칼라 장식 재킷','6,370,000','상의','HERMES','https://assets.hermes.com/is/image/hermesproduct/%EC%88%84-%EC%B9%BC%EB%9D%BC-%EC%9E%A5%EC%8B%9D-%EC%9E%AC%ED%82%B7--3E0221DA2H-worn-1-0-0-800-800_g.jpg','가벼운 더블 사이드 캐시미어 소재의 재킷(캐시미어 100%)','female'),(103,'“Ex-Libris” 셔츠','4,140,000','상의','HERMES','https://assets.hermes.com/is/image/hermesproduct/ex-libris-%EC%85%94%EC%B8%A0--3E0607D702-worn-1-0-0-800-800_g.jpg','“Ex-Libris” 프린티드 실크 소재의 셔츠(실크 100%)','female'),(104,'셔츠','850000','상의','GUCCI','https://media.gucci.com/style/DarkGray_Center_0_0_800x800/1672682404/548334_XJFBF_2441_001_100_0000_Light--G.jpg','티셔츠 하나에 85를 태워?','Female'),(105,'비치 카프탄','1,670,000','상의','HERMES','https://assets.hermes.com/is/image/hermesproduct/charme-d-orphee-%EB%B9%84%EC%B9%98-%EC%B9%B4%ED%94%84%ED%83%84--3E3516DE7I-worn-1-0-0-800-800_g.jpg','“Canoe Pareo” 프린티드 코튼 보일 소재의 비치 카프탄(코튼 100%)','female'),(106,'셔츠','890000','상의','GUCCI','https://media.gucci.com/style/DarkGray_Center_0_0_800x800/1672682428/548334_XJFBF_4591_001_100_0000_Light--G.jpg','티셔츠 하나에 89를 태워?','Female'),(107,'“H” 롱 슬리브 가디건','1,750,000','상의','HERMES','https://assets.hermes.com/is/image/hermesproduct/h-%EB%A1%B1-%EC%8A%AC%EB%A6%AC%EB%B8%8C-%EA%B0%80%EB%94%94%EA%B1%B4--3E2713DB11-worn-1-0-0-800-800_g.jpg','“H” 모티프가 장식된 버진 울 소재의 롱 슬리브 가디건(버진 울 100%)','female'),(108,'셔츠','1350000','상의','GUCCI','https://media.gucci.com/style/HEXD6D7D2_Center_0_0_800x800/1675900050/737987_ZAMWP_9245_002_100_0000_Light-.jpg','이걸사?','Female'),(109,'슬리브 트윌렌 스웨터','슬리브 트윌렌 스웨터','상의','HERMES','https://assets.hermes.com/is/image/hermesproduct/ex-libris-%EC%87%BC%ED%8A%B8-%EC%8A%AC%EB%A6%AC%EB%B8%8C-%ED%8A%B8%EC%9C%8C%EB%A0%8C-%EC%8A%A4%EC%9B%A8%ED%84%B0--3E2800D702-worn-1-0-0-800-800_g.jpg','“Ex-Libris” 프린티드 실크 트윌, 캐시미어 및 실크 소재의 쇼트 슬리브 트윌렌 스웨터(실크 100%, 니트: 캐시미어 50%, 실크 50%)','female'),(110,'셔츠','1300000','상의','GUCCI','https://media.gucci.com/style/HEXE0E8E5_Center_0_0_800x800/1672941742/723270_ZALT6_9692_001_100_0000_Light--x.jpg','당근에 올리지 마세요','Female'),(111,'빌로우 더 니 셔츠드레스','7,340,000','상의','Thom Brown','https://cdn-images.farfetch-contents.com/thom-browne_18584728_41672731_1000.jpg?c=0','빌로우 더 니 셔츠드레스로, 플로럴 프린트 실크 트윌 소재로 제작되었고 플리츠 아래 부분이 돋보입니다. 앞면 버튼으로 잠그는 방식이며, 라운드 칼라, 플리츠 버튼 커프스 및 시그니처 스트라이프 그로그랭 트리밍의 드롭 백, 뒷면의 솔기 요크 및 라커 루프를 더했고 목 뒷면의 시그니처 스트라이프 그로그랭 루프 탭을 적용했습니다.','female'),(112,'셔츠','2200000','상의','GUCCI','https://media.gucci.com/style/HEXF1E9FB_Center_0_0_800x800/1674758809/722213_ZALNN_9248_002_100_0000_Light-.jpg','흑우 왔는가','Female'),(113,'슬리브리스 셔츠','660,000','상의','Thom Brown','https://cdn-images.farfetch-contents.com/thom-browne_13253528_15511362_1000.jpg?c=0','화이트 색상의 민소매 버튼 다운 셔츠로, 옥스포드 소재로 제작되었고 앞면 버튼으로 잠그는 방식입니다. 스트라이프 그로그랭 플래킷, 포인트 칼라, 싱글 체스트 플래킷을 더했고 셔츠 테일 헴 위의 네임택 아플리케, 뒷면 중앙의 걸이용 루프, 목 뒷면의 시그니처 스트라이프 그로그랭 루프 탭을 적용했습니다.','female'),(114,'오버사이즈 브이넥 카디건','2,900,000','상의','Thom Brown','https://cdn-images.farfetch-contents.com/thom-browne_18584798_40963086_1000.jpg?c=0','오버사이즈 브이넥 카디건으로, 와이드 립 캐시미어 소재로 제작되었고 티핑 스트라이프 디테일이 돋보입니다. 앞면 버튼으로 잠그는 방식이며, 커프스 및 헴의 립 트리밍과 목 뒷면의 시그니처 스트라이프 그로그랭 루프 탭을 적용했습니다.','female'),(115,'브이넥 카디건','3,300,000','상의','Thom Brown','https://cdn-images.farfetch-contents.com/thom-browne-4_18759163_42789855_1000.jpg?c=0','라이트 블루 색상의 브이넥 카디건으로, 캐시미어 소재로 제작되었고 포인텔 스트라이프와 앵커 인타르시아가 돋보입니다. 스트라이프 그로그랭 플래킷의 앞면 버튼으로 잠그는 방식이며, 시그니처 스트라이프 그로그랭 트리밍을 더했고 옆면 버튼 벤트, 커프스, 목 뒷면의 시그니처 스트라이프 그로그랭 루프 탭을 적용했습니다.','female'),(116,'스트라이프 브이넥 카디건','2,800,000','상의','Thom Brown','https://cdn-images.farfetch-contents.com/thom-browne_18583783_40911976_1000.jpg?c=0','스트라이프 브이넥 카디건으로, 헤어리 실크 캐시미어 울 소재로 제작되었습니다. 스트라이프 그로그랭 플래킷의 앞면 버튼으로 잠그는 방식이며, 립 커프스 및 헴, 시그니처 스트라이프 그로그랭 트리밍의 옆면 버튼 벤트와 커프스를 더했고 목 뒷면의 시그니처 스트라이프 그로그랭 루프 탭을 적용했습니다.','female'),(117,'테니스 드레스','1,430,000','상의','Thom Brown','https://cdn-images.farfetch-contents.com/thom-browne-rwb_14179841_41109083_1000.jpg?c=0','화이트 색상의 드레스','female'),(118,'MINI SHIRT DRESS','2,050,000','상의','Thom Brown','https://cdn-images.farfetch-contents.com/thom-browne-heavy-poplin-gathered-supersized-mini-shirt-dress_18585007_43997312_1000.jpg?c=0','모델 신장은 178cm로, 사이즈 40을 착용했습니다.','female'),(119,'바텀 셔츠드레스','4,010,000','상의','Thom Brown','https://cdn-images.farfetch-contents.com/thom-browne_18758520_43954693_1000.jpg?c=0','화이트 색상의 플리츠 바텀 셔츠드레스로, 포플린 소재로 제작되었고 앵커 프린트 스커트가 돋보입니다. 앞면 버튼으로 잠그는 방식이며, 라운드 셔츠 칼라, 패치 체스트 포켓, 반팔, 시그니처 스트라이프 그로그랭 트리밍의 드롭 백을 더했고 라커 루프의 플리츠 뒷면 요크와 목 뒷면의 시그니처 스트라이프 그로그랭 루프 탭을 적용했습니다.','female'),(120,' 4-바 티셔츠','1,550,000','상의','Thom Brown','https://cdn-images.farfetch-contents.com/thom-browne-4_18758535_42686064_1000.jpg?c=0','그레이 색상의 크루넥 티셔츠로, 면 소재로 제작되었고 전체 앵커 인타르시아와 왼쪽 소매의 화이트 4-바 스트라이프 디테일이 돋보입니다. 시그니처 스트라이프 그로그랭 트리밍의 옆면 버튼 벤트를 더했고 목 뒷면의 시그니처 스트라이프 그로그랭 루프 탭을 적용했습니다.','female'),(121,'4 바 스트라이프 폴로 셔츠','1,150,000','상의','Thom Brown','https://cdn-images.farfetch-contents.com/thom-browne-4_18582994_40959080_1000.jpg?c=0','모델 신장은 178cm로, 사이즈 40을 착용했습니다.','female'),(122,'ㅇㅇㅇㅇ','222','Top','ㅇㅇㅇ','ㅇㅇㅇ','ㅇㅇㅇ','Male ');
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `star_review`
--

DROP TABLE IF EXISTS `star_review`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `star_review` (
  `m_id` varchar(50) DEFAULT NULL,
  `p_id` int DEFAULT NULL,
  `content` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `star` int DEFAULT NULL,
  `index` int NOT NULL AUTO_INCREMENT,
  `postdate` datetime DEFAULT CURRENT_TIMESTAMP,
  `title` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`index`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `star_review`
--

LOCK TABLES `star_review` WRITE;
/*!40000 ALTER TABLE `star_review` DISABLE KEYS */;
INSERT INTO `star_review` VALUES ('admin',10,'sadasdasdasd',3,19,'2023-03-15 09:56:39','sadsadsadsad'),('admin',10,'sadasdasd',4,20,'2023-03-15 09:56:41','dasdasd'),('admin',39,'asdsadsad',3,21,'2023-03-15 10:45:48','asdsad'),('admin',39,'asdasd',3,22,'2023-03-15 10:45:51','asdasd'),('admin',39,'ㅁㄴㅇㅁㄴㅇ',3,23,'2023-03-15 10:55:01','ㄴㅁㅇㄴㅁㅇ'),('admin',39,'ㅁㄴㅇㅁㄴㅇㅁㄴ',3,24,'2023-03-15 10:55:03','ㄴㅁㅇㅁㄴㅇ'),('admin',39,'ㅁㄴㅇㄴㅁㅇㅁㄴㅇ',3,25,'2023-03-15 10:55:05','ㄴㅁㅇㅁㄴㅇㅁㄴㅇ'),('admin',39,'ㅁㄴㅇㄴㅁㅇㅁㄴ',3,26,'2023-03-15 10:55:07','ㅁㄴㅇㄴㅁㅇㄴㅁ'),('admin',39,'ㅇㅁㄴㅇㅁㄴㅇ',3,27,'2023-03-15 11:17:42','ㅇㄴㅁㅇㅁㄴ'),('admin',39,'ㅇㅁㄴㅇㄴㅁㅇㄴㅁㅇ',3,28,'2023-03-15 11:17:44','ㅁㄴㅇㅁㄴㅇㄴㅁ'),('admin',39,'ㅇㄴㅁㅇㅁㄴㅇ',3,29,'2023-03-15 11:17:46','ㅁㄴㅇㄴㅁㅇㅁㄴ'),('admin',1,'213123',3,30,'2023-03-15 12:23:20','213213'),('admin',1,'213123',3,31,'2023-03-15 12:23:23','123213'),('admin',1,'asd',3,32,'2023-03-15 12:23:27','asd'),('admin',44,'반갑습니다',3,33,'2023-03-15 17:27:19','안녕하세요'),('admin',44,'짱입니다.',5,34,'2023-03-15 17:27:37','엄청좋네요'),('admin',120,'dd',4,35,'2023-03-16 17:22:51','안녕하세요'),('admin',120,'대박입니다.',5,36,'2023-03-16 17:44:03','안녕하세요'),('admin',101,'ㅇㅇ',3,37,'2023-03-16 18:18:34','ㅇㅇㅇ'),('admin',120,'너무 좋네요',3,38,'2023-03-17 14:17:30','안녕하세요');
/*!40000 ALTER TABLE `star_review` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

ALTER TABLE webmarketdb.cart DROP FOREIGN KEY cart_FK_1;
ALTER TABLE webmarketdb.cart ADD CONSTRAINT cart_FK_1 FOREIGN KEY (memberId) REFERENCES webmarketdb.`member`(id) ON DELETE CASCADE ON UPDATE RESTRICT;
ALTER TABLE webmarketdb.cart DROP FOREIGN KEY cart_FK_2;
ALTER TABLE webmarketdb.cart ADD CONSTRAINT cart_FK_2 FOREIGN KEY (productId) REFERENCES webmarketdb.product(p_id) ON DELETE CASCADE ON UPDATE RESTRICT;

--
-- Dumping routines for database 'webmarketdb'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-03-17 15:32:18
