CREATE DATABASE  IF NOT EXISTS `monster_dairy` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `monster_dairy`;
-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: localhost    Database: monster_dairy
-- ------------------------------------------------------
-- Server version	8.0.32

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
-- Table structure for table `add_to_cart`
--

DROP TABLE IF EXISTS `add_to_cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `add_to_cart` (
  `ItemID` int NOT NULL,
  `CustomerID` int NOT NULL,
  `QuantityAdded` int NOT NULL,
  KEY `ItemID` (`ItemID`),
  KEY `CustomerID` (`CustomerID`),
  CONSTRAINT `add_to_cart_ibfk_1` FOREIGN KEY (`ItemID`) REFERENCES `item` (`ItemID`),
  CONSTRAINT `add_to_cart_ibfk_2` FOREIGN KEY (`CustomerID`) REFERENCES `customer` (`CustomerID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `add_to_cart`
--

LOCK TABLES `add_to_cart` WRITE;
/*!40000 ALTER TABLE `add_to_cart` DISABLE KEYS */;
/*!40000 ALTER TABLE `add_to_cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin` (
  `AdminID` int NOT NULL AUTO_INCREMENT,
  `password` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  PRIMARY KEY (`AdminID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES (1,'aadya_0105','Aadya'),(2,'kabhikabhiaditi._','Aditi Singla');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `branch`
--

DROP TABLE IF EXISTS `branch`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `branch` (
  `BranchID` int NOT NULL AUTO_INCREMENT,
  `NumofEmployees` int NOT NULL,
  `StreetNumber` int DEFAULT NULL,
  `StreetName` varchar(500) DEFAULT NULL,
  `AptNumber` varchar(500) DEFAULT NULL,
  `City` varchar(500) DEFAULT NULL,
  `State` varchar(500) DEFAULT NULL,
  `ZIP` int DEFAULT NULL,
  PRIMARY KEY (`BranchID`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `branch`
--

LOCK TABLES `branch` WRITE;
/*!40000 ALTER TABLE `branch` DISABLE KEYS */;
INSERT INTO `branch` VALUES (1,50,41,'et','12','Viviennechester','Nevada',18358),(2,50,26,'eos','66','Lake Kentonhaven','District of Columbia',11695),(3,21,20,'odio','51','Henriland','Alabama',18225),(4,50,23,'sint','64','Alivialand','District of Columbia',12689),(5,27,22,'quisquam','94','Rutheberg','RhodeIsland',14421),(6,21,43,'molestiae','47','North Darius','Hawaii',19742),(7,30,41,'blanditiis','14','South Karolann','Colorado',18472),(8,20,11,'facere','98','North Kylehaven','Hawaii',14207),(9,21,4,'hic','69','North Dejachester','Illinois',17566),(10,27,28,'et','29','Hillsberg','SouthCarolina',11374),(11,34,39,'nesciunt','100','Nitzscheshire','Tennessee',10825),(12,21,17,'velit','36','West Carterburgh','Pennsylvania',13793),(13,50,34,'placeat','25','South Nelle','Florida',12243),(14,30,29,'perferendis','25','Odieside','Arkansas',18218),(15,21,14,'voluptatum','38','DuBuquemouth','Utah',14952),(16,20,17,'sit','79','New Norbertton','Oklahoma',18405),(17,50,36,'harum','67','Westburgh','Massachusetts',14104),(18,21,11,'aliquid','8','Providencishire','Minnesota',10321),(19,50,10,'iste','56','Lake Roderick','Arizona',16180),(20,27,32,'est','70','Trystanchester','Iowa',17413),(21,21,36,'perferendis','69','Niaberg','District of Columbia',10458),(22,34,45,'temporibus','64','Kielmouth','Oregon',18781),(23,50,48,'earum','2','Lake Emmaleeville','Oregon',13941),(24,21,5,'dolores','59','Cummerataland','Louisiana',14219),(25,27,37,'molestiae','7','New Garryville','Kansas',17887),(26,50,37,'qui','82','East Halieburgh','Indiana',11199),(27,21,46,'eos','44','DuBuqueland','Tennessee',12122),(28,30,12,'quo','44','Carlofort','Georgia',17196),(29,50,30,'aut','60','Rosalindaville','Utah',11620),(30,21,43,'beatae','81','North Jettchester','Hawaii',16005),(31,50,32,'doloremque','15','Port Sam','NewHampshire',12379),(32,20,22,'iusto','70','Lornaview','Minnesota',14104),(33,34,24,'saepe','10','South Horaciomouth','NewJersey',18131),(34,50,7,'nobis','93','Nicolashaven','Maine',12303),(35,27,29,'cum','3','Rippinhaven','Virginia',17460),(36,21,11,'quo','91','Nicolasside','Nevada',19163),(37,50,19,'velit','9','Gradyside','Oregon',16599),(38,50,32,'qui','60','South Stevieborough','RhodeIsland',11306),(39,21,28,'voluptatem','80','Windlerville','Nevada',11760),(40,27,22,'repellat','47','Jenkinsmouth','Wisconsin',14231),(41,50,50,'ea','79','New Zorashire','NewMexico',12430),(42,21,9,'eum','93','Port Jacquelynchester','Hawaii',17167),(43,50,4,'officiis','3','New Cory','Nebraska',13992),(44,34,46,'quaerat','23','East Dejahport','Indiana',13100),(45,21,14,'quae','2','Howeport','Connecticut',17839),(46,50,19,'vero','50','West Shainaberg','Florida',13701),(47,50,15,'accusamus','17','Parkerburgh','Nebraska',13267),(48,21,15,'tempora','74','South Grayceville','Mississippi',14549),(49,30,7,'harum','63','East Aishamouth','Georgia',15778),(50,27,5,'accusantium','61','Feiltown','RhodeIsland',16062),(51,21,11,'provident','97','Karsonport','California',17921),(52,50,2,'sed','100','North Raphaelleview','SouthCarolina',14355),(53,50,45,'quis','21','South Bryana','Montana',14013),(54,21,3,'quod','44','Lake Jerryshire','NewJersey',16002),(55,34,20,'dolorem','81','West Mortimerhaven','NewMexico',16345),(56,20,45,'aut','58','Robelbury','Arkansas',19883),(57,21,10,'eum','48','South Catharine','Texas',14955),(58,50,13,'impedit','63','Huelberg','Vermont',18134),(59,50,13,'corrupti','79','East Libby','NewHampshire',16384),(60,21,11,'voluptas','10','Juddshire','Virginia',15051),(61,50,23,'reiciendis','44','Port Ariannaton','NewJersey',11893),(62,50,18,'quia','25','Amandaport','Kansas',14973),(63,21,44,'voluptas','37','Furmanberg','Kentucky',16238),(64,20,48,'ex','81','Ernserton','SouthDakota',14193),(65,27,6,'quidem','99','South Constancechester','Hawaii',18162),(66,34,11,'voluptas','47','Maximillianside','Iowa',10973),(67,50,6,'corrupti','56','Marielastad','Ohio',15000),(68,50,42,'ut','51','Breanneton','NewYork',11989),(69,21,17,'porro','30','Whitehaven','Washington',17952),(70,27,15,'et','91','East Laurence','Connecticut',17166),(71,50,31,'odio','82','Streichfort','Wyoming',19634),(72,21,46,'beatae','47','Lake Jarrellbury','SouthCarolina',11709),(73,50,43,'aut','29','North Dejah','Michigan',12866),(74,50,4,'et','67','Hartmannside','NewMexico',14778),(75,21,19,'minima','82','Brookeshire','NewYork',19189),(76,50,9,'sunt','59','Powlowskiton','Texas',11189),(77,34,46,'consequatur','95','West Lamar','Illinois',18315),(78,21,36,'voluptatem','81','Madisonbury','Mississippi',16692),(79,50,25,'nostrum','83','Tyreekland','Ohio',12567),(80,27,19,'iste','15','North Edenchester','SouthCarolina',11316),(81,21,28,'sapiente','31','Nathanaelton','NewMexico',14072),(82,50,28,'cum','43','Lindfort','Texas',16107),(83,50,28,'corrupti','60','Urbanmouth','District of Columbia',10728),(84,21,32,'nam','16','East Ezekielmouth','Indiana',11819),(85,27,44,'animi','65','Woodrowtown','Vermont',19302),(86,50,26,'quis','30','South Katherineburgh','California',10834),(87,21,33,'minima','35','Goldaberg','Oklahoma',14956),(88,34,6,'dolor','74','Deronhaven','Missouri',16537),(89,50,11,'voluptatibus','16','East Natashaview','NewJersey',13369),(90,21,36,'consequatur','52','North Regan','Montana',11720),(91,30,26,'qui','32','Fadelshire','NewHampshire',10218),(92,50,49,'velit','11','Libbyborough','NorthDakota',11525),(93,21,1,'reiciendis','89','Port Elliot','WestVirginia',14303),(94,50,28,'aut','2','New Ashton','Ohio',17026),(95,27,40,'similique','65','Chadfort','District of Columbia',18708),(96,21,31,'dolorem','52','Arjunchester','Nebraska',19499),(97,50,14,'consectetur','70','Lillianafort','Maryland',17093),(98,30,43,'soluta','35','East Carole','Kansas',12284),(99,34,43,'aut','66','South Catherinemouth','NewJersey',15788),(100,27,50,'recusandae','15','Rosaliastad','NewHampshire',19008);
/*!40000 ALTER TABLE `branch` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cart` (
  `CartID` int NOT NULL AUTO_INCREMENT,
  `ItemIDs` varchar(100) DEFAULT NULL,
  `TotalQuantity` int NOT NULL,
  `Price` int NOT NULL,
  PRIMARY KEY (`CartID`)
) ENGINE=InnoDB AUTO_INCREMENT=354 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart`
--

LOCK TABLES `cart` WRITE;
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
INSERT INTO `cart` VALUES (1,'1',1,1996),(2,'1, 2',7,1084),(3,'33, 87',1,1602),(4,'1',5,744),(5,'1',3,1958),(6,'33, 87',7,1913),(7,NULL,0,0),(8,'36, 87',1,926),(9,'33, 87',6,1242),(10,'99, 200, 14',3,726),(11,'36, 87',2,2129),(12,'33, 87',4,1029),(13,'36, 22',2,889),(14,'14, 67',7,1030),(15,NULL,0,0),(16,'36, 87',5,406),(17,'1, 55, 43, 36, 22',7,771),(18,'33, 87',2,1193),(19,'108',4,2808),(20,NULL,0,0),(21,'33, 87',6,1554),(22,'1',6,1500),(23,'199, 200',6,1637),(24,'33, 87',4,94),(25,'1',8,1989),(26,'1',9,290),(27,'33, 87',8,2465),(28,'14, 67',6,2699),(29,'39, 10',5,439),(30,'33, 87',8,1381),(31,'55, 77',9,1610),(32,'36, 87',7,2179),(33,'33, 87',2,2850),(34,NULL,0,0),(35,'14, 67',8,175),(36,'33, 87',9,2262),(37,'39, 10',5,2356),(38,'1',8,2793),(39,'33, 87',6,1487),(40,'36, 87',4,1783),(41,'39, 10',4,2999),(42,'33, 87',8,195),(43,NULL,0,0),(44,'1',1,443),(45,'33, 87',9,256),(46,'1',4,130),(47,'66',1,2822),(48,'33, 87',4,920),(49,'14, 67',9,2972),(50,'99, 200, 14',8,2525),(51,'33, 87',8,979),(52,'1',9,2203),(53,'69',2,1613),(54,'33, 87',3,2483),(55,'1',5,2478),(56,'36, 87',6,2862),(57,'33, 87',4,2398),(58,'1',2,1295),(59,'39, 69, 54, 12',8,2466),(60,'33, 87',4,2829),(61,'39, 9, 45, 12',4,2153),(62,'1',4,730),(63,'33, 87',2,24),(64,'36, 87',9,2469),(65,'1',2,2576),(66,'33, 87',4,1221),(67,'119, 69, 54, 12',6,1301),(68,'1',9,2630),(69,'33, 87',1,1463),(70,'14, 67',6,1268),(71,NULL,0,0),(72,'33, 87',9,1049),(73,'5',8,2826),(74,'1',1,1316),(75,'33, 87',4,363),(76,'1',7,730),(77,'14, 67',7,766),(78,'33, 87',3,2542),(79,'105',8,1916),(80,'36, 87',8,2066),(81,'33, 87',5,2238),(82,'1',6,1356),(83,'105',5,2238),(84,'33, 87',8,146),(85,'1',6,1519),(86,'1',4,2970),(87,'33, 87',3,167),(88,'36, 87',3,2534),(89,'105',5,2188),(90,'33, 87',9,987),(91,'14, 67',6,2307),(92,'1',1,1731),(93,'33, 87',4,972),(94,'1',6,1377),(95,'1',8,2854),(96,'33, 87',4,64),(97,'105',7,138),(98,NULL,0,0),(99,'33, 87',7,1174),(100,'14',1,2376),(253,NULL,1,11521),(353,NULL,1,815);
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cart_item`
--

DROP TABLE IF EXISTS `cart_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cart_item` (
  `CustomerID` int NOT NULL,
  `CartID` int NOT NULL DEFAULT '0',
  `ItemID` int NOT NULL,
  `TotalQuantity` int NOT NULL,
  `Price` int NOT NULL,
  PRIMARY KEY (`CustomerID`,`CartID`,`ItemID`),
  KEY `ItemID` (`ItemID`),
  CONSTRAINT `cart_item_ibfk_1` FOREIGN KEY (`ItemID`) REFERENCES `item` (`ItemID`),
  CONSTRAINT `FK_CustomerID` FOREIGN KEY (`CustomerID`) REFERENCES `customer` (`CustomerID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart_item`
--

LOCK TABLES `cart_item` WRITE;
/*!40000 ALTER TABLE `cart_item` DISABLE KEYS */;
INSERT INTO `cart_item` VALUES (1,1,1,7,651),(2,2,1,6,558),(2,2,2,6,1374),(3,3,33,6,2124),(3,3,87,6,342),(4,4,1,6,558),(5,5,1,6,558),(6,6,33,6,2124),(6,6,87,6,342),(8,8,36,6,1488),(8,8,87,6,342),(9,9,33,6,2124),(9,9,87,6,342),(10,10,14,6,2838),(10,10,99,6,1872),(10,10,200,6,3000),(11,11,36,6,1488),(11,11,87,6,342),(12,12,33,6,2124),(12,12,87,6,342),(13,13,22,6,2412),(13,13,36,6,1488),(14,14,14,6,2838),(14,14,67,6,2772),(16,16,36,6,1488),(16,16,87,6,342),(17,17,1,6,558),(17,17,22,6,2412),(17,17,36,6,1488),(17,17,43,6,1314),(17,17,55,6,708),(18,18,33,6,2124),(18,18,87,6,342),(19,19,108,6,3000),(21,21,33,6,2124),(21,21,87,6,342),(22,22,1,6,558),(23,23,199,6,4608),(23,23,200,6,3000),(24,24,33,6,2124),(24,24,87,6,342),(25,25,1,6,558),(26,26,1,6,558),(27,27,33,6,2124),(27,27,87,6,342),(28,28,14,6,2838),(28,28,67,6,2772),(29,29,10,6,1812),(29,29,39,6,2706),(30,30,33,6,2124),(30,30,87,6,342),(31,31,55,6,708),(31,31,77,6,2910),(32,32,36,6,1488),(32,32,87,6,342),(33,33,33,6,2124),(33,33,87,6,342),(35,35,14,6,2838),(35,35,67,6,2772),(36,36,33,6,2124),(36,36,87,6,342),(37,37,10,6,1812),(37,37,39,6,2706),(38,38,1,6,558),(39,39,33,6,2124),(39,39,87,6,342),(40,40,36,6,1488),(40,40,87,6,342),(41,41,10,6,1812),(41,41,39,6,2706),(42,42,33,6,2124),(42,42,87,6,342),(44,44,1,6,558),(45,45,33,6,2124),(45,45,87,6,342),(46,46,1,6,558),(47,47,66,6,2340),(48,48,33,6,2124),(48,48,87,6,342),(49,49,14,6,2838),(49,49,67,6,2772),(52,52,1,1,93),(52,52,2,1,229),(52,52,3,1,493),(253,253,1,13,1209),(253,253,2,14,3206),(253,253,3,9,4437),(253,253,4,7,3220),(353,353,1,1,93),(353,353,2,1,229),(353,353,3,1,493);
/*!40000 ALTER TABLE `cart_item` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = cp850 */ ;
/*!50003 SET character_set_results = cp850 */ ;
/*!50003 SET collation_connection  = cp850_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `check_stock_before_insert` BEFORE INSERT ON `cart_item` FOR EACH ROW BEGIN
    DECLARE available_quantity INT;

    SELECT QuantityLeft INTO available_quantity
    FROM item
    WHERE ItemID = NEW.ItemID;

    IF available_quantity < NEW.TotalQuantity THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Error: Not enough stock available.';
    END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = cp850 */ ;
/*!50003 SET character_set_results = cp850 */ ;
/*!50003 SET collation_connection  = cp850_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `update_quantityleft_insert` AFTER INSERT ON `cart_item` FOR EACH ROW UPDATE item
SET Quantityleft = Quantityleft - NEW.TotalQuantity
WHERE item.ItemID = NEW.ItemID */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = cp850 */ ;
/*!50003 SET character_set_results = cp850 */ ;
/*!50003 SET collation_connection  = cp850_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `check_stock_before_update` BEFORE UPDATE ON `cart_item` FOR EACH ROW BEGIN
    DECLARE available_quantity INT;

    SELECT QuantityLeft INTO available_quantity
    FROM item
    WHERE ItemID = NEW.ItemID;

    IF available_quantity < (NEW.TotalQuantity - OLD.TotalQuantity) THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Error: Not enough stock available.';
    END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = cp850 */ ;
/*!50003 SET character_set_results = cp850 */ ;
/*!50003 SET collation_connection  = cp850_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `update_quantityleft_on_update` AFTER UPDATE ON `cart_item` FOR EACH ROW UPDATE item
SET Quantityleft = Quantityleft - NEW.TotalQuantity + OLD.TotalQuantity
WHERE item.ItemID = NEW.ItemID */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `cow`
--

DROP TABLE IF EXISTS `cow`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cow` (
  `FarmID` int NOT NULL,
  `FoodItem` varchar(100) NOT NULL,
  `FeedingScheduleTime` time NOT NULL,
  `FeedMonitoringID` int NOT NULL,
  `DateOfBirth` date NOT NULL,
  KEY `FarmID` (`FarmID`),
  CONSTRAINT `cow_ibfk_1` FOREIGN KEY (`FarmID`) REFERENCES `farm` (`FarmID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cow`
--

LOCK TABLES `cow` WRITE;
/*!40000 ALTER TABLE `cow` DISABLE KEYS */;
INSERT INTO `cow` VALUES (1,' clover','10:21:12',9,'2022-03-26'),(2,' hay','11:50:42',5,'1982-12-15'),(3,' clover','01:59:10',8,'2020-11-23'),(4,' grasses','22:42:52',6,'2016-02-23'),(5,' grasses','22:54:24',1,'1980-03-29'),(6,' clover','15:43:56',3,'1986-02-10'),(7,' legumes','09:51:24',7,'1998-05-06'),(8,' legumes','11:41:09',7,'2008-03-11'),(9,' hay','12:23:58',9,'1998-10-29'),(10,' legumes','01:58:35',0,'2005-09-29'),(11,' grasses','12:43:35',9,'1991-10-18'),(12,' hay','09:28:46',2,'1986-01-24'),(13,' hay','03:35:43',6,'2008-03-01'),(14,' legumes','14:15:26',4,'1973-01-28'),(15,' clover','14:32:05',6,'1998-11-15'),(16,' hay','14:06:11',5,'2010-04-14'),(17,' clover','23:26:23',6,'1986-11-21'),(18,' clover','17:02:23',9,'1972-02-03'),(19,' grasses','00:22:03',4,'1976-05-17'),(20,' clover','05:46:25',0,'2021-12-08'),(21,' hay','09:35:37',8,'2005-03-18'),(22,' grasses','20:00:50',5,'1989-05-31'),(23,' clover','05:37:31',6,'1978-12-25'),(24,' hay','09:29:36',9,'2013-03-21'),(25,' grasses','13:33:44',7,'2003-07-14'),(26,' hay','03:47:04',4,'2007-03-02'),(27,' alfalfa','19:16:17',0,'2008-11-08'),(28,' clover','01:36:21',2,'1989-08-01'),(29,' clover','05:56:06',4,'1979-10-25'),(30,' hay','10:13:53',2,'2001-08-22'),(31,' grasses','05:12:28',4,'1992-08-02'),(32,' hay','14:47:50',3,'1994-05-23'),(33,' hay','15:01:04',6,'1970-06-18'),(34,' grasses','05:00:46',3,'1970-06-12'),(35,' hay','19:34:02',0,'2017-07-04'),(36,' clover','18:01:12',7,'1973-04-14'),(37,' hay','09:52:35',6,'1989-07-25'),(38,' clover','03:25:46',5,'2009-09-16'),(39,' alfalfa','22:33:04',0,'1989-01-13'),(40,' hay','07:36:53',8,'1990-04-18'),(41,' legumes','20:27:26',6,'1991-12-19'),(42,' hay','15:49:28',7,'2007-12-12'),(43,' clover','09:04:43',1,'1984-12-16'),(44,' alfalfa','03:13:24',3,'1998-04-30'),(45,' legumes','09:10:44',4,'2021-08-15'),(46,' grasses','14:52:56',7,'1984-08-01'),(47,' legumes','14:10:49',2,'1976-07-25'),(48,' grasses','10:35:59',0,'2007-02-14'),(49,' hay','03:16:22',1,'1997-12-18'),(50,' alfalfa','06:31:12',9,'2022-05-31'),(51,' grasses','02:35:52',4,'2021-08-19'),(52,' grasses','12:53:50',4,'1985-01-07'),(53,' grasses','05:07:12',7,'1980-02-21'),(54,' clover','07:38:32',7,'2010-07-19'),(55,' grasses','08:31:55',4,'2010-03-07'),(56,' grasses','02:08:17',8,'2013-06-14'),(57,' clover','04:27:10',8,'1970-04-06'),(58,' grasses','00:50:12',5,'2019-05-03'),(59,' grasses','02:33:16',5,'2001-11-11'),(60,' legumes','05:34:58',5,'1993-12-14'),(61,' hay','15:44:31',3,'1993-07-03'),(62,' legumes','00:02:03',5,'1989-10-12'),(63,' legumes','07:05:21',0,'1998-07-01'),(64,' grasses','19:26:12',5,'2000-09-21'),(65,' alfalfa','09:08:26',7,'2001-12-01'),(66,' hay','18:26:09',9,'1990-08-14'),(67,' legumes','16:39:53',1,'2013-11-26'),(68,' hay','02:12:08',6,'2011-05-22'),(69,' hay','21:27:51',6,'1973-03-29'),(70,' grasses','03:26:26',5,'1987-04-17'),(71,' clover','18:23:43',1,'1982-02-02'),(72,' grasses','21:30:50',8,'2013-01-23'),(73,' grasses','07:22:43',2,'2003-05-10'),(74,' clover','18:01:08',9,'2011-01-04'),(75,' grasses','01:54:36',1,'2010-07-08'),(76,' legumes','21:58:13',9,'1999-01-14'),(77,' grasses','10:45:37',8,'1991-04-26'),(78,' legumes','14:11:00',5,'1973-06-29'),(79,' alfalfa','06:13:06',3,'2010-08-08'),(80,' legumes','11:03:28',0,'1999-03-02'),(81,' grasses','15:34:51',4,'2015-01-27'),(82,' hay','00:56:44',1,'2019-04-30'),(83,' hay','03:47:24',5,'2020-09-25'),(84,' clover','10:05:56',6,'2001-02-22'),(85,' legumes','20:15:20',4,'1972-01-05'),(86,' legumes','05:45:51',3,'1986-07-31'),(87,' grasses','00:41:22',6,'2019-10-15'),(88,' alfalfa','08:04:49',8,'1982-03-31'),(89,' hay','12:06:24',5,'1991-06-17'),(90,' legumes','15:05:24',5,'2003-06-09'),(91,' hay','12:16:50',0,'1974-09-02'),(92,' clover','07:01:30',7,'2018-05-28'),(93,' legumes','05:36:53',3,'1976-01-05'),(94,' alfalfa','16:17:23',7,'2005-01-06'),(95,' legumes','17:21:50',1,'2006-05-23'),(96,' alfalfa','07:23:44',2,'1991-01-18'),(97,' clover','20:22:50',8,'2012-08-02'),(98,' hay','17:15:14',6,'2014-08-23'),(99,' grasses','13:49:44',8,'1974-12-12'),(100,' hay','16:40:13',2,'1974-07-05');
/*!40000 ALTER TABLE `cow` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer` (
  `CustomerID` int NOT NULL AUTO_INCREMENT,
  `username` varchar(100) DEFAULT NULL,
  `account_num` varchar(9) DEFAULT NULL,
  `age` int DEFAULT NULL,
  `street_number` int DEFAULT NULL,
  `street_name` varchar(50) DEFAULT NULL,
  `apt_number` char(20) DEFAULT NULL,
  `city` char(50) DEFAULT NULL,
  `state` char(50) DEFAULT NULL,
  `zip` char(6) NOT NULL,
  `EmailID` varchar(70) NOT NULL,
  `password` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`CustomerID`),
  UNIQUE KEY `EmailID` (`EmailID`)
) ENGINE=InnoDB AUTO_INCREMENT=354 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (1,'Dock','357753186',44,43,'Anastasia Corners','Apt. 866','Elisafurt','Alabama','845838','kariane.grady@bogangleason.net',NULL),(2,'Jules','305431542',73,66,'Elfrieda Way','Suite 696','Lake Constantinbury','Ohio','621038','parker.adele@gmail.com',NULL),(3,'Werner','260249648',70,16,'Maritza Lodge','Apt. 833','South Laurelmouth','Michigan','402529','simeon.schaefer@yahoo.com',NULL),(4,'Tressa','639490748',46,39,'Hansen Center','Apt. 423','West Aidan','District of Columbia','620865','macejkovic.octavia@hotmail.com',NULL),(5,'Precious','881564056',34,7,'Millie Motorway','Apt. 085','East Noraview','Nevada','284026','alisa.stoltenberg@gmail.com',NULL),(6,'Eleazar','674081619',50,10,'Wilkinson Crest','Suite 010','Port Judd','Massachusetts','464858','gyost@yahoo.com',NULL),(7,'Destin','215296500',59,63,'Will Plaza','Suite 709','Hectortown','Indiana','951120','antonetta.buckridge@hickle.net',NULL),(8,'Kayla','194469720',69,9,'Quigley Ford','Suite 395','Lake Wilfred','Delaware','544092','jmoen@hotmail.com',NULL),(9,'Buddy','753894148',72,83,'Kohler Valley','Apt. 555','Buckridgefort','Michigan','312382','arturo.christiansen@toy.com',NULL),(10,'Jana','738689740',20,94,'Verlie Lights','Apt. 425','Friesenton','NewMexico','428461','vern.armstrong@howell.net',NULL),(11,'Don','581839736',36,71,'Euna Track','Suite 762','North Charlesburgh','NewJersey','482235','reinger.izabella@hotmail.com',NULL),(12,'Maxime','831537738',34,30,'Maxie Plaza','Apt. 069','Tessieton','Colorado','580969','creola.d\'amore@yahoo.com',NULL),(13,'Laura','231666142',31,96,'O\'Hara Station','Apt. 777','Wisokyland','Michigan','223479','xboyer@yahoo.com',NULL),(14,'Kathryne','824638371',42,25,'Lavonne Parkway','Apt. 799','Darbyberg','Minnesota','677158','elsa66@ritchiesipes.biz',NULL),(15,'Deonte','358683431',29,86,'Langworth Trail','Suite 403','Lake Lewishaven','Hawaii','198787','osinski.euna@yahoo.com',NULL),(16,'Ayana','931076262',41,29,'Spinka Roads','Apt. 677','Haucktown','Maryland','138894','alda.bauch@nienow.com',NULL),(17,'Dusty','376534250',24,98,'Adan Expressway','Apt. 451','Baumbachhaven','Nevada','678481','lavon.schmitt@gmail.com',NULL),(18,'Ardella','265462117',53,68,'McCullough Point','Suite 395','Ernestshire','Nebraska','953706','jovan.kub@framimorar.com',NULL),(19,'Deion','181513853',25,44,'Macejkovic Walk','Suite 497','Mckaylaview','Connecticut','938062','lorenz.ullrich@hotmail.com',NULL),(20,'Ansley','843941549',49,52,'Schmeler Well','Suite 710','Gradyton','Nebraska','406892','pmoen@grady.org',NULL),(21,'Esteban','316374705',71,100,'Reichert Villages','Apt. 035','Lake Idell','Maine','728645','randall25@auer.biz',NULL),(22,'Morris','112801264',47,80,'Bergstrom Street','Suite 645','Cathrineborough','Illinois','703671','gmohr@hotmail.com',NULL),(23,'Archibald','972165206',54,92,'Baumbach Club','Suite 976','Dangelofurt','Georgia','668897','margarette36@gmail.com',NULL),(24,'Mauricio','325824583',38,52,'Rahsaan Forges','Apt. 311','Morarport','Virginia','465303','spinka.ethyl@yahoo.com',NULL),(25,'Annabelle','382768446',39,24,'Gutmann Mount','Suite 766','Napoleonville','RhodeIsland','340631','vstracke@gmail.com',NULL),(26,'Agustina','428998667',48,20,'Nikita Mount','Apt. 133','East Calliehaven','NorthCarolina','434636','javonte.simonis@funk.com',NULL),(27,'Rosalee','726663719',56,52,'Wuckert Parkways','Suite 437','Lake Ardella','Georgia','155227','krajcik.zander@hotmail.com',NULL),(28,'Amari','458239929',58,92,'Hattie Inlet','Suite 079','Murrayborough','Michigan','500252','chanel.pollich@waltermacejkovic.com',NULL),(29,'Floyd','304207034',56,68,'Beulah Grove','Apt. 393','Blockland','NewJersey','161279','xwolff@yahoo.com',NULL),(30,'Ansley','167367825',27,99,'Noemy Court','Suite 029','New Laurence','Florida','583403','rschimmel@wintheiser.com',NULL),(31,'Cecelia','488407747',46,20,'Millie Gateway','Apt. 442','North Constantin','Connecticut','814609','slesch@lebsack.com',NULL),(32,'Leonor','229200465',79,51,'Grover Drives','Suite 749','O\'Konport','Delaware','600556','giles.boyle@bauchlarson.org',NULL),(33,'Terrell','659544628',24,31,'Price Points','Suite 089','North Ludwig','NorthDakota','837164','jast.rosamond@yahoo.com',NULL),(34,'Bradley','589861274',22,19,'Kunde Knoll','Suite 969','New Melissabury','Vermont','905044','monahan.percy@yahoo.com',NULL),(35,'Daisy','313990983',35,7,'Lehner Pine','Apt. 774','North Rainaborough','Missouri','597069','lavinia.langworth@smith.com',NULL),(36,'Sven','304160987',44,31,'Emma Mountains','Apt. 713','Augustinehaven','Maryland','221211','uwitting@hotmail.com',NULL),(37,'Manuel','773872202',51,4,'Murray Avenue','Apt. 742','Kerlukeport','Ohio','243862','uschneider@roobkerluke.com',NULL),(38,'Ena','636681433',40,68,'Kirlin Radial','Apt. 525','East Melanychester','Louisiana','149800','bernier.jeff@hotmail.com',NULL),(39,'Mable','960703624',34,69,'Kaci Village','Apt. 181','East Hildegard','Missouri','324703','schmidt.alisha@gleichnerluettgen.com',NULL),(40,'Janis','945754695',42,60,'Stamm Pine','Suite 664','Bryanaland','NewYork','299874','wisoky.elsa@gmail.com',NULL),(41,'Waino','380477836',64,17,'Lakin Overpass','Suite 998','Lake Elenorview','California','562544','rbergstrom@raynordooley.info',NULL),(42,'Raphaelle','327527515',24,100,'Oceane Key','Suite 815','Lukashaven','NewJersey','558441','tgleason@yahoo.com',NULL),(43,'Jimmy','740289767',31,60,'Kasey Motorway','Suite 040','Lake Selinamouth','NewMexico','214124','mante.reva@abshirelubowitz.com',NULL),(44,'Ariel','134785104',72,50,'Calista Harbor','Apt. 604','West Stevie','Florida','158437','natasha15@okeefe.info',NULL),(45,'Gregorio','907286333',20,15,'Cole Springs','Suite 680','New Lorishire','Maine','853280','ila25@gmail.com',NULL),(46,'Modesta','802061056',29,78,'Guido Mission','Suite 241','Westburgh','Kentucky','449794','muller.vern@toyorn.com',NULL),(47,'Fannie','436661569',66,8,'Kelvin Mission','Apt. 110','New Timothy','NewJersey','575993','cartwright.emmanuel@langworth.com',NULL),(48,'Mya','827462571',40,2,'Deion Parkway','Suite 714','New Kayden','Utah','202963','zo\'reilly@yahoo.com',NULL),(49,'Isai','429973482',73,28,'Torphy Hollow','Suite 048','Milanburgh','Iowa','289496','mona32@gmail.com',NULL),(50,'Yaminii','12345',18,99,'Kidwai','12','New Delhi','New Delhi','110023','yaminii@gmail.com','222'),(52,'PJ','12345',23,19,'Tower','A-12','New Delhi','New Delhi','110023','pj@gmail.com','999'),(253,'Aadya','123456',33,12,'kidwai','12','dtwrsa','ean','1234','aa@yy.com','111'),(300,'Yaminii','12345',18,99,'kidwai','12','New Delhi','New Delhi','110023','yamini@gmail.com','222'),(353,'PJJ','12345',23,19,'Tower','A-12','New Delhi','New Delhi','110023','ppjj@gmail.com','991');
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer_order`
--

DROP TABLE IF EXISTS `customer_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer_order` (
  `OrderID` int NOT NULL,
  `CustomerID` int NOT NULL,
  `CartID` int NOT NULL,
  `dateOfOrder` date NOT NULL,
  KEY `OrderID` (`OrderID`),
  KEY `CustomerID` (`CustomerID`),
  KEY `CartID` (`CartID`),
  CONSTRAINT `customer_order_ibfk_1` FOREIGN KEY (`OrderID`) REFERENCES `orders` (`OrderID`),
  CONSTRAINT `customer_order_ibfk_2` FOREIGN KEY (`CustomerID`) REFERENCES `customer` (`CustomerID`),
  CONSTRAINT `customer_order_ibfk_3` FOREIGN KEY (`CartID`) REFERENCES `cart` (`CartID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer_order`
--

LOCK TABLES `customer_order` WRITE;
/*!40000 ALTER TABLE `customer_order` DISABLE KEYS */;
INSERT INTO `customer_order` VALUES (9,9,9,'1999-07-18'),(13,13,13,'1973-06-21'),(14,14,14,'1991-10-14'),(15,15,15,'1972-10-12'),(21,21,21,'1989-10-06'),(22,22,22,'2002-01-14'),(24,24,24,'1998-09-07'),(25,25,25,'1995-05-04'),(26,26,26,'1990-08-11'),(31,31,31,'1985-07-08'),(34,34,34,'2015-02-16'),(36,36,36,'1994-12-12'),(37,37,37,'2019-06-06'),(38,38,38,'1976-08-18'),(46,46,46,'1999-05-21'),(49,49,49,'2013-04-16');
/*!40000 ALTER TABLE `customer_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer_phone`
--

DROP TABLE IF EXISTS `customer_phone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer_phone` (
  `CustomerID` int NOT NULL,
  `phone_num` varchar(200) DEFAULT NULL,
  KEY `CustomerID` (`CustomerID`),
  CONSTRAINT `customer_phone_ibfk_1` FOREIGN KEY (`CustomerID`) REFERENCES `customer` (`CustomerID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer_phone`
--

LOCK TABLES `customer_phone` WRITE;
/*!40000 ALTER TABLE `customer_phone` DISABLE KEYS */;
INSERT INTO `customer_phone` VALUES (1,'1234567890'),(2,'1-001-028-'),(3,'+60(6)5772'),(4,'1-430-237-'),(5,'817-420-71'),(6,'1-162-711-'),(7,'+55(9)6341'),(8,'1-880-779-'),(9,'864-546-01'),(10,'(500)626-8'),(11,'760.203.72'),(12,'1-044-138-'),(13,'0493651687'),(14,'(343)620-5'),(15,'+16(5)6164'),(16,'615.108.76'),(17,'214-944-68'),(18,'(169)997-6'),(19,'1-398-810-'),(20,'(740)781-7'),(21,'1-840-813-'),(22,'(475)478-9'),(23,'0076037348'),(24,'666.055.96'),(25,'(839)706-2'),(26,'(563)985-7'),(27,'(578)544-5'),(28,'407.229.28'),(29,'782-736-34'),(30,'669.697.28'),(31,'1-221-886-'),(32,'894-060-06'),(33,'394.729.32'),(34,'1-257-169-'),(35,'+31(1)9025'),(36,'1-183-312-'),(37,'0323680390'),(38,'309.266.84'),(39,'254-653-47'),(40,'1-174-048-'),(41,'(736)162-4'),(42,'1-426-244-'),(43,'629.563.47'),(44,'1-062-604-'),(45,'(602)978-5'),(46,'1-057-971-'),(47,'0563791347'),(48,'300-246-15'),(49,'0885305347'),(1,'9876543210'),(2,'607.945.53'),(3,'1-645-521-'),(4,'768-540-47'),(5,'(357)113-3'),(6,'334-945-54'),(7,'(895)685-0'),(8,'1-679-049-'),(9,'765.121.86'),(10,'1-232-328-'),(11,'049-567-95'),(12,'(314)495-4'),(13,'(084)559-8'),(14,'0747391710'),(15,'519.005.68'),(16,'+80(7)0558'),(17,'080.227.96'),(18,'310-799-45'),(19,'+41(3)5721'),(20,'408-545-26'),(21,'070-473-01'),(22,'(765)846-0'),(23,'462-539-66'),(24,'152.331.50'),(25,'217-394-78'),(26,'630.583.61'),(27,'1-707-670-'),(28,'0663305567'),(29,'416.470.84'),(30,'1-218-189-'),(31,'1-527-245-'),(32,'685.256.36'),(33,'805-805-88'),(34,'273.655.15'),(35,'754-324-32'),(36,'531-993-53'),(37,'1-839-178-'),(38,'313.417.35'),(39,'1-041-747-'),(40,'(218)761-4'),(41,'680-796-59'),(42,'0840938465'),(43,'(736)960-3'),(44,'034-701-36'),(45,'662-773-09'),(46,'(864)949-3'),(47,'(138)668-5'),(48,'708-758-32'),(49,'970.263.92'),(253,'987654321');
/*!40000 ALTER TABLE `customer_phone` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `department`
--

DROP TABLE IF EXISTS `department`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `department` (
  `BranchID` int DEFAULT NULL,
  `DeptID` int NOT NULL AUTO_INCREMENT,
  `DeptName` varchar(100) DEFAULT NULL,
  `DeptType` varchar(100) DEFAULT NULL,
  `NumOfEmployees` int DEFAULT NULL,
  PRIMARY KEY (`DeptID`),
  KEY `BranchID` (`BranchID`),
  CONSTRAINT `department_ibfk_1` FOREIGN KEY (`BranchID`) REFERENCES `branch` (`BranchID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `department`
--

LOCK TABLES `department` WRITE;
/*!40000 ALTER TABLE `department` DISABLE KEYS */;
INSERT INTO `department` VALUES (1,1,'  Human Resource Department',' Accounting and finance',114),(2,2,'Finance Department',' Accounting and finance',153),(3,3,'  Human Resource Department','Research and development',99),(4,4,' Purchase Department','Administration/operations',37),(5,5,'Sales Department','Research and development',114),(6,6,'Sales Department','Marketing and sales',64),(7,7,'Finance Department','Administration/operations',108),(8,8,' Purchase Department','Human resources',44),(9,9,'General Management',' Accounting and finance',128),(10,10,'  Human Resource Department','Human resources',175);
/*!40000 ALTER TABLE `department` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `distributor`
--

DROP TABLE IF EXISTS `distributor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `distributor` (
  `WarehouseID` int DEFAULT NULL,
  `FarmID` int DEFAULT NULL,
  `AdminID` int DEFAULT NULL,
  `QuantitySupplied` int NOT NULL,
  KEY `WarehouseID` (`WarehouseID`),
  KEY `FarmID` (`FarmID`),
  KEY `AdminID` (`AdminID`),
  CONSTRAINT `distributor_ibfk_1` FOREIGN KEY (`WarehouseID`) REFERENCES `warehouse` (`WarehouseID`),
  CONSTRAINT `distributor_ibfk_2` FOREIGN KEY (`FarmID`) REFERENCES `farm` (`FarmID`),
  CONSTRAINT `distributor_ibfk_3` FOREIGN KEY (`AdminID`) REFERENCES `admin` (`AdminID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `distributor`
--

LOCK TABLES `distributor` WRITE;
/*!40000 ALTER TABLE `distributor` DISABLE KEYS */;
INSERT INTO `distributor` VALUES (1,1,1,501147),(2,2,2,59825),(3,3,1,2520),(4,4,2,55523638),(5,5,1,3878),(6,6,2,1279224),(7,7,1,5209),(8,8,2,8113),(9,9,1,22621310),(10,10,2,22514),(11,11,1,56197),(12,12,2,38514702),(13,13,1,4035),(14,14,2,167070441),(15,15,1,1364),(16,16,2,4659),(17,17,1,8059),(18,18,2,56450),(19,19,1,8801),(20,20,2,10604640),(21,21,1,122393985),(22,22,2,30183419),(23,23,1,46608),(24,24,2,13911),(25,25,1,6702),(26,26,2,238),(27,27,1,9169),(28,28,2,2803),(29,29,1,37128),(30,30,2,4183),(31,31,1,182393639),(32,32,2,5407),(33,33,1,9228),(34,34,2,3508251),(35,35,1,120536),(36,36,2,25256),(37,37,1,442515),(38,38,2,6179),(39,39,1,8689),(40,40,2,67437),(41,41,1,5537),(42,42,2,228),(43,43,1,9918),(44,44,2,35460),(45,45,1,226689682),(46,46,2,14516),(47,47,1,637998753),(48,48,2,6094),(49,49,1,9937),(50,50,2,2075),(51,51,1,2561893),(52,52,2,8010),(53,53,1,9565),(54,54,2,681997),(55,55,1,9911),(56,56,2,278758),(57,57,1,48526698),(58,58,2,8107),(59,59,1,252443212),(60,60,2,16598),(61,61,1,200156887),(62,62,2,70436054),(63,63,1,198801),(64,64,2,5359),(65,65,1,9707),(66,66,2,52590),(67,67,1,39289879),(68,68,2,7294),(69,69,1,55960),(70,70,2,15217296),(71,71,1,6676),(72,72,2,1596),(73,73,1,127664315),(74,74,2,24606),(75,75,1,8383),(76,76,2,373069016),(77,77,1,24237),(78,78,2,8300),(79,79,1,4451),(80,80,2,339),(81,81,1,7850),(82,82,2,3604613),(83,83,1,3960),(84,84,2,458844018),(85,85,1,176087367),(86,86,2,3996),(87,87,1,7028),(88,88,2,495829),(89,89,1,90),(90,90,2,7648111),(91,91,1,1665),(92,92,2,8016),(93,93,1,238367),(94,94,2,526313839),(95,95,1,34220),(96,96,2,1320786),(97,97,1,4028),(98,98,2,54978012),(99,99,1,6179),(100,100,2,8051);
/*!40000 ALTER TABLE `distributor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee_phone`
--

DROP TABLE IF EXISTS `employee_phone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee_phone` (
  `phone_num` int NOT NULL,
  `EmployeeID` int DEFAULT NULL,
  KEY `EmployeeID` (`EmployeeID`),
  CONSTRAINT `employee_phone_ibfk_1` FOREIGN KEY (`EmployeeID`) REFERENCES `employees` (`EmployeeID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee_phone`
--

LOCK TABLES `employee_phone` WRITE;
/*!40000 ALTER TABLE `employee_phone` DISABLE KEYS */;
INSERT INTO `employee_phone` VALUES (96,1),(1599458969,2),(612750959,3),(959441,4),(907,5),(1,6),(65,7),(2147483647,8),(1092362755,9),(1,10),(1,11),(887867,12),(18,13),(726803,14),(805,15),(1,16),(1,17),(0,18),(62,19),(2147483647,20),(2147483647,21),(0,22),(1,23),(911,24),(0,25),(1,26),(899,27),(13,28),(0,29),(623,30),(2147483647,31),(537355,32),(939,33),(0,34),(1,35),(952,36),(443441,37),(0,38),(983,39),(0,40),(2,41),(1,42),(1,43),(214541,44),(0,45),(0,46),(1,47),(48,48),(331292,49),(54,50),(0,51),(306,52),(804,53),(1,54),(2147483647,55),(772357,56),(1,57),(45,58),(1,59),(468037,60),(593,61),(451763,62),(72,63),(243199,64),(1,65),(0,66),(1,67),(618431,68),(898,69),(2147483647,70),(1,71),(0,72),(809516,73),(1,74),(0,75),(1,76),(1,77),(684,78),(1,79),(0,80),(210,81),(38301,82),(2147483647,83),(806,84),(0,85),(0,86),(1565222741,87),(0,88),(274,89),(991163,90),(0,91),(8998,92),(294484,93),(365900,94),(2147483647,95),(595,96),(1,97),(730155,98),(890385,99),(69,100);
/*!40000 ALTER TABLE `employee_phone` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employees`
--

DROP TABLE IF EXISTS `employees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employees` (
  `EmployeeID` int NOT NULL AUTO_INCREMENT,
  `Email` varchar(100) NOT NULL,
  `Position` varchar(100) NOT NULL,
  `Salary` int NOT NULL,
  `HireDate` date NOT NULL,
  `DateofBirth` date NOT NULL,
  `Age` int DEFAULT NULL,
  `first_name` varchar(100) NOT NULL,
  `middle_initial` varchar(100) DEFAULT NULL,
  `last_name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`EmployeeID`),
  UNIQUE KEY `Email` (`Email`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employees`
--

LOCK TABLES `employees` WRITE;
/*!40000 ALTER TABLE `employees` DISABLE KEYS */;
INSERT INTO `employees` VALUES (1,'raukoko.123@example.org','Chief Financial Officer',48389,'2020-04-15','1999-09-07',41,'Lonnie',NULL,'Luettgen'),(2,'rosenbaum.raven@example.org','Farmer ',15479,'2016-07-24','1975-06-02',52,'Eliseo',NULL,'Leffler'),(3,'lew75@example.net','Chief Executive Officer',41630,'2003-06-06','2014-08-29',22,'Aniya','Rose','Walter'),(4,'raegan48@example.net','Farmer ',53455,'1985-06-17','2011-01-19',50,'Norberto',NULL,'Collins'),(5,'narciso98@example.com','Veterinary technician',54156,'1986-04-14','2022-12-26',36,'Brennon','Jack','Stoltenberg'),(6,'jhuels@example.net','Chief Technology Officer',53266,'2008-03-28','2021-09-18',18,'Eulalia','Rose','Rohan'),(7,'sauer.sidney@example.com','Chief Operating Officer',17642,'1991-08-15','1995-02-14',57,'Dedric','Mary','Kunze'),(8,'wilburn.dickinson@example.net','Farm manager',51179,'1991-06-23','1976-10-04',59,'Emanuel','Lucas','Kilback'),(9,'judson.bode@example.com','Assembly line Manager',13555,'1996-09-23','2012-08-27',58,'Lexi','Rose','Oberbrunner'),(10,'bethany26@example.org','Farm manager',57552,'1996-10-02','2003-07-09',26,'Zoie','Jack','Ritchie'),(11,'marks.stuart@example.com','Peon',40449,'1975-10-18','1998-03-29',28,'Kevon',NULL,'Prohaska'),(12,'carroll.isabelle@example.net','Farm manager',28817,'2013-07-06','1980-06-04',40,'Aisha','Rose','West'),(13,'hintz.alysson@example.org','Chief Executive Officer',10486,'1997-10-05','1970-11-18',43,'Sarai',NULL,'Wisoky'),(14,'heidenreich.jeramie@example.net','Assembly line Manager',32746,'2005-04-15','1996-02-05',42,'Madge','Mary','Zieme'),(15,'abraham.osinski@example.net','Chief Marketing Officer',3005,'1973-06-07','2003-10-22',24,'Furman','Jack','Bergstrom'),(16,'lera.schmidt@example.org','Assembly line Manager',55029,'1973-11-29','1995-06-15',20,'Gerhard','Lucas','Rohan'),(17,'nicolette.deckow@example.net','Peon',20899,'1973-11-24','1981-04-21',59,'Beryl',NULL,'Abernathy'),(18,'kuhic.delfina@example.net','Dairy clerk ',18531,'2014-05-23','2000-11-11',60,'Adriana','Rose','Mueller'),(19,'emelie.ziemann@example.org','Farmer ',48618,'1980-05-17','1974-01-04',58,'Jeremy',NULL,'Schimmel'),(20,'zgibson@example.org','Peon',55961,'1980-02-02','1999-01-10',34,'Oral','Jack','Kautzer'),(21,'raynor.cleta@example.net','Chief Technology Officer',54589,'1983-10-01','2008-10-01',28,'Carlotta','Mary','Smitham'),(22,'kertzmann.ruby@example.org','Delivery Man',17502,'1993-07-05','1983-10-06',58,'Madelynn',NULL,'Ullrich'),(23,'qhartmann@example.com','Chief Technology Officer',10417,'2014-05-25','1990-12-06',20,'Maximilian',NULL,'McLaughlin'),(24,'keira.durgan@example.com','Farm manager',7552,'2018-10-22','2020-08-29',34,'Eldon','Lucas','McLaughlin'),(25,'lizzie47@example.net','Chief Marketing Officer',16680,'2009-06-30','2013-03-29',54,'Kaleb','Jack','Rogahn'),(26,'loyce.aufderhar@example.com','Chief Technology Officer',26019,'1998-02-15','2017-07-19',49,'Zora',NULL,'Zulauf'),(27,'marquis.harris@example.com','Chief Operating Officer',53128,'1990-10-12','1975-04-12',38,'Jeffry','Rose','Murray'),(28,'casey45@example.net','Farmer ',20920,'2018-10-12','2000-12-31',28,'Tre','Mary','Green'),(29,'breitenberg.milton@example.com','Chief Technology Officer',35807,'2004-12-14','1972-03-27',49,'Francisco',NULL,'Heller'),(30,'toney15@example.com','Chief Financial Officer',37149,'2019-06-09','2017-05-26',46,'Toby','Jack','Baumbach'),(31,'antonette17@example.org','Farmer ',46616,'1988-02-25','2004-06-17',24,'Rory',NULL,'Marvin'),(32,'donnelly.kirk@example.com','Farm manager',50153,'2003-06-08','1971-03-05',43,'Burley','Lucas','Schimmel'),(33,'lind.carolina@example.net','Chief Marketing Officer',20758,'1994-07-13','2010-03-11',55,'Antonina','Rose','Ortiz'),(34,'krystel59@example.com','Assembly line Manager',32389,'2011-12-30','2010-07-24',28,'Alexandrine',NULL,'Rosenbaum'),(35,'romaguera.lily@example.org','Chief Operating Officer',11198,'2000-03-10','1981-09-14',23,'Diamond','Mary','Harvey'),(36,'adele.mraz@example.net','Dairy clerk ',50392,'1999-10-05','2004-12-21',20,'Crystel','Rose','Monahan'),(37,'waters.marielle@example.org','Chief Operating Officer',51750,'2017-09-02','1996-03-20',54,'Logan',NULL,'Becker'),(38,'ankunding.leta@example.org','Chief Financial Officer',9165,'2012-12-07','1986-03-03',35,'Suzanne',NULL,'Koepp'),(39,'fbradtke@example.com','Chief Operating Officer',20902,'2011-03-24','2010-12-19',18,'Deon','Rose','O\'Connell'),(40,'kendall42@example.com','Chief Operating Officer',38641,'2004-04-24','1976-01-06',34,'Lincoln','Lucas','Schaden'),(41,'estella63@example.net','Chief Financial Officer',52456,'1976-11-30','1997-03-19',19,'Dangelo',NULL,'Graham'),(42,'smitham.ernest@example.com','Chief Financial Officer',28583,'1978-12-09','1994-10-06',19,'Carlee','Mary','Pacocha'),(43,'ekertzmann@example.com','Chief Financial Officer',9528,'2020-08-25','2013-07-01',35,'Bettie',NULL,'Franecki'),(44,'clare.frami@example.org','Chief Technology Officer',38349,'1981-05-04','2018-10-03',60,'Angie',NULL,'Farrell'),(45,'hirthe.kyla@example.com','Chief Executive Officer',37703,'1984-10-23','2020-07-29',18,'Germaine','Jack','Reilly'),(46,'swift.pauline@example.net','Chief Financial Officer',36605,'2001-05-20','1994-01-03',20,'Britney',NULL,'Hintz'),(47,'reilly.remington@example.org','Veterinary technician',15339,'2002-05-28','2007-12-29',49,'Lillie',NULL,'Zulauf'),(48,'xgleason@example.net','Chief Operating Officer',7791,'1999-11-02','1990-07-17',36,'Wilfredo','Lucas','Pollich'),(49,'mraz.murl@example.org','Delivery Man',23298,'2008-09-04','1996-11-16',33,'Marcelina','Mary','Dickens'),(50,'callie.roob@example.org','Farm manager',23874,'1994-06-18','2004-12-04',29,'Eunice','Jack','Kuhic'),(51,'ktorp@example.com','Veterinary technician',58703,'2020-02-11','1987-10-01',19,'Jalon','Rose','Conn'),(52,'olin.adams@example.net','Chief Technology Officer',41886,'2016-09-16','1970-07-31',51,'Hailey',NULL,'Greenfelder'),(53,'nels31@example.org','Dairy manager',5068,'2005-11-25','2004-03-22',47,'Myriam',NULL,'Weissnat'),(54,'bleannon@example.net','Veterinary technician',10021,'2011-10-16','2022-06-19',20,'Leann','Rose','Herman'),(55,'keegan.barrows@example.net','Farm manager',7831,'2022-11-29','1984-03-29',59,'Yasmin','Jack','Schamberger'),(56,'madisyn55@example.com','Chief Technology Officer',3936,'2013-12-06','1992-03-14',38,'Monserrat','Lucas','Kulas'),(57,'mauricio.marks@example.org','Farmer ',20356,'1974-07-25','1984-01-28',55,'Darien','Rose','Abbott'),(58,'beer.gwendolyn@example.net','Farmer ',12208,'1977-08-23','1996-05-13',23,'Modesto',NULL,'Tromp'),(59,'ko\'reilly@example.org','Peon',30059,'1978-07-11','1982-07-23',55,'Richard',NULL,'Will'),(60,'cierra52@example.org','Farmer ',20081,'1993-11-18','1988-06-13',29,'Roscoe','Jack','Vandervort'),(61,'juvenal.walsh@example.net','Chief Financial Officer',31441,'2015-10-22','2012-10-23',25,'Gage',NULL,'Hodkiewicz'),(62,'erin32@example.com','Chief Marketing Officer',4046,'1986-05-04','1990-02-08',50,'Jamie',NULL,'Parker'),(63,'deshaun19@example.net','Farmer ',4003,'1999-01-08','2018-07-25',58,'Frank','Mary','Schaden'),(64,'jones.patience@example.net','Chief Executive Officer',55880,'2018-09-24','2000-09-08',31,'Newton','Lucas','Corwin'),(65,'rowe.abigale@example.net','Delivery Man',31263,'1991-12-19','1981-01-28',39,'Ally','Jack','Feest'),(66,'scorkery@example.net','Assembly line Manager',31059,'1979-02-20','2002-07-26',59,'Jammie','Rose','O\'Reilly'),(67,'laurine97@example.org','Chief Financial Officer',33624,'1994-02-25','1985-04-07',38,'Rebekah',NULL,'Senger'),(68,'brakus.jett@example.com','Farmer ',7176,'1989-01-21','2007-06-28',49,'Ernestina',NULL,'Kutch'),(69,'quitzon.porter@example.com','Delivery Man',59636,'2022-06-08','2002-02-13',20,'Armando','Rose','Leffler'),(70,'margarett.moore@example.net','Farmer ',33002,'2005-03-04','2016-05-25',55,'Laurine','Mary','Glover'),(71,'maverick15@example.org','Farm manager',19279,'1999-08-06','2017-03-02',48,'Celine',NULL,'Bechtelar'),(72,'hmurazik@example.com','Chief Financial Officer',6556,'2011-05-07','2013-10-29',50,'Gonzalo','Lucas','Spinka'),(73,'uyost@example.org','Chief Financial Officer',25406,'2005-12-14','1992-07-02',47,'Alexandria',NULL,'Greenfelder'),(74,'wolff.vivienne@example.net','Chief Financial Officer',5137,'2014-02-17','2012-08-19',19,'Carlee',NULL,'Funk'),(75,'hoppe.dolly@example.com','Farmer ',47505,'1993-02-25','1990-08-09',55,'Chadd','Jack','Legros'),(76,'cortez08@example.com','Chief Financial Officer',51269,'1992-03-28','1998-09-11',26,'Catalina',NULL,'Kris'),(77,'nschamberger@example.net','Chief Operating Officer',40429,'1973-04-01','2016-11-13',48,'Cielo','Mary','Bradtke'),(78,'reginald.haag@example.net','Chief Marketing Officer',48366,'2009-07-13','2009-03-07',49,'Jordon','Rose','Hammes'),(79,'romaguera.amalia@example.net','Dairy clerk ',42905,'2010-11-09','2003-10-16',23,'Abigail',NULL,'Boyer'),(80,'abogisich@example.org','Delivery Man',38120,'1976-02-02','1976-07-19',20,'Maximillian','Lucas','Ullrich'),(81,'kuphal.phoebe@example.com','Farmer ',38846,'1973-11-29','1976-07-02',27,'Clementine','Rose','Cronin'),(82,'vivian.heller@example.com','Veterinary technician',6404,'1978-05-30','1978-12-24',47,'Marge',NULL,'Glover'),(83,'rogelio28@example.net','Dairy manager',35635,'1972-08-09','1998-10-06',60,'Katlynn',NULL,'Rippin'),(84,'judd74@example.com','Veterinary technician',58194,'1989-01-15','2012-09-11',33,'Vena','Mary','McClure'),(85,'gerson92@example.com','Chief Executive Officer',8194,'1983-10-29','2001-04-14',21,'Alessandro','Jack','Ferry'),(86,'mervin46@example.org','Dairy manager',11698,'1987-08-05','1983-01-04',48,'Raegan',NULL,'Schumm'),(87,'prosacco.kiel@example.org','Farmer ',57443,'1979-05-20','1999-11-01',43,'Sallie','Rose','Swaniawski'),(88,'qlangosh@example.org','Dairy manager',52532,'2008-08-14','2000-07-11',30,'Irwin','Lucas','Trantow'),(89,'macey31@example.org','Farm manager',39018,'1974-03-20','2012-10-19',45,'Pinkie',NULL,'Sporer'),(90,'dorcas.hammes@example.net','Chief Financial Officer',20194,'1988-07-17','2009-01-21',47,'Keegan','Jack','Friesen'),(91,'fadel.madge@example.org','Chief Marketing Officer',8748,'2003-10-22','2007-07-22',22,'Donna','Mary','Little'),(92,'eichmann.kailee@example.net','Chief Operating Officer',59645,'1987-07-04','1977-03-01',36,'Heath',NULL,'Will'),(93,'baby.swift@example.org','Chief Operating Officer',30839,'1974-09-06','1987-06-18',51,'Abbigail','Rose','Maggio'),(94,'katelyn00@example.net','Chief Marketing Officer',47753,'1987-11-13','1990-05-02',41,'Olga',NULL,'Lemke'),(95,'maybelle.cruickshank@example.net','Chief Marketing Officer',13716,'1997-08-01','2015-09-15',59,'Margarett','Jack','Streich'),(96,'prosacco.lauretta@example.org','Delivery Man',6307,'1978-05-23','2010-12-25',40,'Riley','Lucas','Lakin'),(97,'dach.hermina@example.com','Veterinary technician',51178,'1983-10-14','1998-03-16',59,'Rocky',NULL,'Lemke'),(98,'bud95@example.org','Dairy manager',46109,'1983-03-06','2014-12-01',54,'Claud','Mary','Bergstrom'),(99,'silas.heathcote@example.com','Dairy clerk ',35440,'2010-11-11','1998-06-19',57,'Jay','Rose','Corwin'),(100,'rogers.simonis@example.org','Farmer ',45483,'1992-10-20','1999-09-25',33,'Valentin','Jack','McClure');
/*!40000 ALTER TABLE `employees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `farm`
--

DROP TABLE IF EXISTS `farm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `farm` (
  `FarmID` int NOT NULL AUTO_INCREMENT,
  `StreetNumber` int DEFAULT NULL,
  `StreetName` varchar(500) DEFAULT NULL,
  `AptNumber` varchar(500) DEFAULT NULL,
  `City` varchar(500) DEFAULT NULL,
  `State` varchar(500) DEFAULT NULL,
  `ZIP` int DEFAULT NULL,
  PRIMARY KEY (`FarmID`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `farm`
--

LOCK TABLES `farm` WRITE;
/*!40000 ALTER TABLE `farm` DISABLE KEYS */;
INSERT INTO `farm` VALUES (1,6,'qui','90','South Kailynton','Colorado',14923),(2,47,'voluptatem','73','South Collin','Illinois',14971),(3,2,'quam','20','Wardton','Oregon',19335),(4,20,'necessitatibus','68','Port Josiahchester','Maine',14459),(5,48,'quo','58','Lehnerburgh','Wyoming',13936),(6,38,'minus','78','New Ewell','Oklahoma',19530),(7,10,'vitae','26','Blockville','Connecticut',11672),(8,2,'laudantium','19','West Evetown','District of Columbia',13744),(9,3,'accusantium','30','Casperport','Kansas',16261),(10,47,'ipsum','100','West Amariside','Delaware',17991),(11,11,'unde','49','West Lailahaven','SouthDakota',13544),(12,11,'autem','78','Margarettshire','NewYork',16254),(13,34,'ipsa','47','New Aaliyah','Oregon',14627),(14,23,'totam','23','East Willow','Oklahoma',13794),(15,34,'ut','35','Andersonmouth','Illinois',11130),(16,38,'sint','75','New Julia','Colorado',14362),(17,4,'culpa','51','Medaland','Alabama',12573),(18,8,'quia','15','New Tessmouth','Nebraska',15978),(19,50,'et','73','Missouritown','Oregon',15325),(20,40,'quo','83','North Shanelle','Pennsylvania',12779),(21,45,'voluptas','14','Donavonfort','District of Columbia',15855),(22,18,'ut','72','Bartolettimouth','Illinois',10494),(23,12,'ducimus','17','Catalinahaven','Pennsylvania',11200),(24,41,'animi','95','Maggiohaven','Colorado',14961),(25,28,'ea','100','Schuppehaven','Wisconsin',10121),(26,27,'saepe','24','East Myrticemouth','District of Columbia',17257),(27,39,'tempora','19','Stoltenbergport','Idaho',10462),(28,7,'aut','38','Gislasontown','Ohio',14151),(29,10,'quia','12','West Leda','Wisconsin',17431),(30,46,'ut','55','Nitzscheland','Minnesota',11064),(31,25,'id','49','Lakinland','Pennsylvania',12195),(32,8,'itaque','50','West Ceceliastad','NorthDakota',15344),(33,37,'aliquid','56','Terrancestad','Louisiana',14001),(34,15,'temporibus','55','South Mohammad','Minnesota',14065),(35,32,'perspiciatis','75','West Stanville','Tennessee',19138),(36,4,'aliquid','47','Dickensburgh','Louisiana',18072),(37,5,'officiis','48','Kirlinborough','NewHampshire',11843),(38,20,'expedita','27','Schroedershire','Tennessee',13943),(39,13,'dolores','92','Steuberbury','NewJersey',16224),(40,5,'asperiores','32','South Loyalfurt','Texas',19578),(41,15,'iste','44','Brekkehaven','Utah',14964),(42,11,'autem','43','Roobport','Alaska',10183),(43,12,'nihil','10','South Mikechester','Maine',10654),(44,9,'autem','62','Haleymouth','Connecticut',16180),(45,41,'placeat','23','Caterinachester','Nebraska',16598),(46,21,'aperiam','13','New Christinebury','Kansas',17213),(47,16,'qui','61','South Korbin','Massachusetts',18271),(48,3,'aut','9','Ericstad','Idaho',17117),(49,39,'rerum','38','Bentonland','RhodeIsland',19495),(50,39,'rerum','54','East Prudence','Iowa',11269),(51,43,'ut','68','Port Aiyana','Nevada',10646),(52,49,'quia','86','Katlynntown','Maryland',12804),(53,10,'maxime','57','Ashaland','Nevada',13941),(54,21,'ut','5','South Jimmy','Alabama',14938),(55,16,'voluptas','30','Cronaland','Ohio',16941),(56,12,'pariatur','4','Lake Cassandrechester','Maryland',18584),(57,42,'architecto','41','Lake Nicholaustown','WestVirginia',17083),(58,21,'sit','73','Lake Muhammadberg','RhodeIsland',16230),(59,41,'est','49','South Hope','Vermont',19583),(60,38,'qui','24','East Emery','Oklahoma',17750),(61,3,'eaque','49','Koelpintown','Connecticut',15014),(62,45,'quo','72','Abbigailfurt','Wisconsin',12820),(63,13,'rem','66','East Arjun','District of Columbia',19088),(64,17,'sed','91','Carleeborough','Delaware',18957),(65,29,'maiores','96','North Wilfrid','SouthCarolina',15780),(66,32,'voluptates','96','Hoegermouth','Nevada',14885),(67,5,'earum','43','North Mitchelhaven','Massachusetts',19081),(68,42,'dolores','56','Rubychester','Wyoming',15862),(69,16,'fugiat','10','Medhurstfurt','Maine',16945),(70,40,'quam','68','South Rogers','NewMexico',15714),(71,45,'est','97','McGlynnville','Tennessee',15588),(72,5,'at','83','South Meaghanmouth','Arkansas',17594),(73,13,'nostrum','64','Royfurt','Wyoming',12082),(74,46,'voluptas','37','Stehrburgh','NorthCarolina',16099),(75,43,'quam','97','Lake Shanellebury','Arkansas',13683),(76,4,'eum','55','East Evert','Delaware',19880),(77,23,'repellat','44','Abshiremouth','Wisconsin',17383),(78,11,'non','14','Port Melisa','Wyoming',19444),(79,47,'voluptatum','50','New Eliton','Georgia',17455),(80,19,'optio','4','Darionmouth','Missouri',17140),(81,24,'eum','81','South Madonna','Washington',15308),(82,6,'a','48','South Julien','Idaho',15162),(83,30,'dolores','54','Nedshire','Virginia',16326),(84,46,'magni','45','Wilburnshire','Tennessee',13553),(85,48,'voluptatem','97','Lake Alfland','Alabama',13291),(86,4,'placeat','49','East Lillaville','Oklahoma',10917),(87,1,'voluptate','93','Port Christine','Massachusetts',16091),(88,3,'rerum','17','Tamiaberg','Ohio',14769),(89,49,'illo','44','West Herta','Kentucky',11009),(90,17,'quod','42','Luiston','NewMexico',17041),(91,28,'qui','66','Beahanton','Wisconsin',12261),(92,21,'iusto','74','Thompsonport','Idaho',16860),(93,7,'natus','37','Port Benjaminville','NewMexico',14460),(94,42,'quae','72','Greenmouth','Florida',17154),(95,48,'aut','90','Zachariahhaven','Arizona',16944),(96,48,'possimus','87','Port Kevon','Oregon',19002),(97,19,'ullam','35','Conroyhaven','Florida',18325),(98,32,'et','30','East Odaburgh','NewMexico',17361),(99,9,'tempore','2','Koleview','NorthDakota',18742),(100,42,'tempore','80','Milanland','WestVirginia',16607);
/*!40000 ALTER TABLE `farm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `get_sub`
--

DROP TABLE IF EXISTS `get_sub`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `get_sub` (
  `CustomerID` int DEFAULT NULL,
  `SubscriptionID` int DEFAULT NULL,
  `dateOfSub` date NOT NULL,
  KEY `SubscriptionID` (`SubscriptionID`),
  KEY `CustomerID` (`CustomerID`),
  CONSTRAINT `get_sub_ibfk_1` FOREIGN KEY (`CustomerID`) REFERENCES `customer` (`CustomerID`),
  CONSTRAINT `get_sub_ibfk_2` FOREIGN KEY (`SubscriptionID`) REFERENCES `subscription` (`SubscriptionID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `get_sub`
--

LOCK TABLES `get_sub` WRITE;
/*!40000 ALTER TABLE `get_sub` DISABLE KEYS */;
INSERT INTO `get_sub` VALUES (1,1,'2023-04-20'),(2,1,'2023-04-20'),(253,103,'2023-04-20'),(353,104,'2023-04-28');
/*!40000 ALTER TABLE `get_sub` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `get_vip`
--

DROP TABLE IF EXISTS `get_vip`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `get_vip` (
  `CustomerID` int DEFAULT NULL,
  `MembershipID` int DEFAULT NULL,
  `dateOfMem` date NOT NULL,
  KEY `MembershipID` (`MembershipID`),
  KEY `CustomerID` (`CustomerID`),
  CONSTRAINT `get_vip_ibfk_1` FOREIGN KEY (`CustomerID`) REFERENCES `customer` (`CustomerID`),
  CONSTRAINT `get_vip_ibfk_2` FOREIGN KEY (`MembershipID`) REFERENCES `membership` (`MembershipID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `get_vip`
--

LOCK TABLES `get_vip` WRITE;
/*!40000 ALTER TABLE `get_vip` DISABLE KEYS */;
INSERT INTO `get_vip` VALUES (1,1,'2023-04-20'),(253,107,'2023-04-20'),(353,108,'2023-04-28');
/*!40000 ALTER TABLE `get_vip` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item`
--

DROP TABLE IF EXISTS `item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `item` (
  `ItemID` int NOT NULL AUTO_INCREMENT,
  `QuantityLeft` int NOT NULL,
  `ExptiryDate` date NOT NULL,
  `Price` int NOT NULL,
  `ManufacturingDate` date NOT NULL,
  PRIMARY KEY (`ItemID`),
  KEY `itemID` (`ItemID`)
) ENGINE=InnoDB AUTO_INCREMENT=202 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item`
--

LOCK TABLES `item` WRITE;
/*!40000 ALTER TABLE `item` DISABLE KEYS */;
INSERT INTO `item` VALUES (1,2,'2009-07-17',93,'2023-03-01'),(2,306,'2021-11-01',229,'2023-03-01'),(3,458,'2017-02-05',493,'2000-02-29'),(4,476,'1980-11-26',460,'2006-09-16'),(5,555,'2001-04-29',102,'2009-07-23'),(6,739,'1993-01-15',95,'2023-03-01'),(7,19,'1996-03-04',377,'2023-03-01'),(8,117,'1980-11-06',269,'2010-01-02'),(9,642,'1980-12-25',427,'2023-03-01'),(10,257,'2019-01-30',302,'2023-03-01'),(11,396,'1988-08-29',328,'2023-03-01'),(12,510,'1981-10-25',105,'2023-03-01'),(13,823,'2020-12-19',72,'2023-03-01'),(14,56,'1971-06-29',473,'2023-03-01'),(15,876,'1999-06-30',152,'2023-03-01'),(16,282,'1998-02-22',440,'2023-03-01'),(17,848,'1983-10-26',285,'2023-03-01'),(18,130,'1993-02-20',310,'2023-03-01'),(19,576,'1973-01-03',333,'2023-03-01'),(20,917,'2012-12-04',111,'2023-03-01'),(21,568,'2020-09-23',92,'2023-03-01'),(22,899,'1975-06-04',402,'2023-03-01'),(23,593,'2016-10-16',156,'2000-10-30'),(24,821,'2011-10-18',317,'2002-12-08'),(25,371,'1979-10-05',274,'2009-07-28'),(26,763,'1998-07-23',318,'2023-03-01'),(27,119,'1976-01-15',27,'2023-03-01'),(28,150,'2006-08-10',392,'2023-03-01'),(29,118,'1971-12-18',400,'2010-04-29'),(30,491,'2021-08-18',452,'2015-03-07'),(31,780,'2009-05-15',221,'2005-02-11'),(32,134,'1992-09-23',347,'2023-03-01'),(33,255,'2008-06-03',354,'2023-03-01'),(34,21,'2018-07-06',415,'2023-03-01'),(35,801,'2018-02-16',357,'2023-03-01'),(36,821,'1984-10-09',248,'2023-03-01'),(37,674,'1989-10-16',109,'2018-12-21'),(38,736,'2020-05-10',380,'2023-03-01'),(39,171,'1972-03-14',451,'2023-03-01'),(40,214,'1996-09-18',324,'2007-02-01'),(41,903,'1989-11-01',88,'2005-04-18'),(42,812,'2022-11-13',75,'2023-03-01'),(43,795,'2000-10-24',219,'2011-03-15'),(44,609,'2005-02-05',165,'2023-03-01'),(45,327,'1978-12-10',473,'2007-02-21'),(46,622,'2011-03-12',415,'2000-10-26'),(47,518,'2004-09-22',345,'2019-04-20'),(48,3,'1993-09-29',347,'2023-03-01'),(49,936,'2018-09-02',81,'2023-03-01'),(50,356,'1988-12-13',319,'2023-03-01'),(51,158,'1986-05-15',94,'2012-08-26'),(52,91,'2012-10-19',490,'2023-03-01'),(53,359,'1975-07-16',414,'2016-09-01'),(54,168,'2003-03-25',428,'2023-03-01'),(55,407,'2008-08-27',118,'2015-03-06'),(56,109,'2009-03-20',450,'2023-03-01'),(57,865,'2008-08-25',165,'2018-08-31'),(58,338,'2006-04-29',246,'2023-03-01'),(59,358,'1980-09-16',232,'2001-04-06'),(60,654,'1983-08-23',257,'2000-03-29'),(61,882,'1992-12-07',207,'2023-03-01'),(62,664,'1988-09-10',431,'2005-04-12'),(63,638,'2022-03-17',262,'2023-03-01'),(64,602,'1975-12-12',216,'2023-03-01'),(65,373,'1973-12-28',278,'2023-03-01'),(66,146,'2004-10-12',390,'2022-12-03'),(67,744,'2015-08-17',462,'2023-03-01'),(68,220,'2018-07-25',109,'2023-03-01'),(69,768,'1999-10-19',431,'2016-10-19'),(70,282,'1980-10-29',150,'2017-03-17'),(71,315,'1989-11-23',302,'2023-03-01'),(72,475,'1996-12-23',85,'2023-03-01'),(73,870,'2019-07-24',164,'2023-03-01'),(74,869,'1995-12-22',107,'2020-03-13'),(75,934,'1999-08-18',384,'2023-03-01'),(76,49,'2011-03-19',91,'2002-10-24'),(77,553,'2012-08-16',485,'2023-03-01'),(78,542,'1987-07-15',372,'2023-03-01'),(79,464,'2000-12-22',467,'2023-03-01'),(80,786,'2013-10-25',410,'2023-03-01'),(81,634,'2008-10-03',280,'2023-03-01'),(82,744,'2005-05-08',105,'2014-06-27'),(83,197,'1988-06-19',27,'2008-06-02'),(84,976,'2019-03-12',380,'2013-03-11'),(85,50,'2017-01-02',274,'2023-03-01'),(86,53,'2018-05-18',422,'2023-03-01'),(87,321,'1988-03-06',57,'2023-03-01'),(88,635,'1975-11-11',346,'2013-09-21'),(89,781,'1971-03-15',488,'2004-05-20'),(90,580,'1980-07-09',394,'2023-03-01'),(91,860,'1994-05-11',280,'2023-03-01'),(92,732,'2009-12-20',439,'2022-07-26'),(93,995,'2023-04-25',486,'2023-03-01'),(94,883,'1972-03-09',139,'2023-03-01'),(95,67,'2003-08-22',231,'2023-03-01'),(96,750,'2012-12-04',172,'2020-12-18'),(97,811,'2017-06-27',243,'2023-03-01'),(98,776,'1991-03-13',427,'2023-03-01'),(99,620,'1992-11-07',312,'2023-03-01'),(100,68,'1971-01-11',412,'2023-03-01'),(101,71,'1976-07-16',500,'2008-03-24'),(102,41,'1994-03-14',500,'2009-06-08'),(103,34,'1988-08-03',500,'2023-03-01'),(104,91,'1975-05-06',157,'2023-03-01'),(105,28,'2003-06-12',448,'2002-12-25'),(106,70,'2022-08-30',707,'2023-03-01'),(107,25,'1988-10-08',500,'2012-05-16'),(108,94,'2015-09-26',500,'2003-02-14'),(109,43,'2020-08-22',500,'2023-03-01'),(110,43,'1979-10-23',500,'2020-07-23'),(111,17,'1970-06-17',800,'2022-03-09'),(112,39,'2011-08-16',500,'2023-03-01'),(113,70,'1990-01-29',500,'2021-11-27'),(114,94,'1995-03-01',500,'2023-03-01'),(115,91,'1978-08-24',281,'2023-03-01'),(116,32,'2003-04-05',500,'2005-06-02'),(117,100,'2000-09-29',500,'2023-03-01'),(118,49,'1990-07-25',500,'2016-06-24'),(119,37,'1985-05-02',500,'2007-10-09'),(120,45,'1971-03-03',714,'2013-05-12'),(121,43,'1993-04-16',365,'2023-03-01'),(122,92,'1997-11-05',21,'2023-03-01'),(123,85,'1982-04-04',500,'2001-05-21'),(124,23,'2005-06-19',784,'2023-03-01'),(125,72,'2012-06-24',500,'2003-01-21'),(126,59,'1972-03-15',500,'2023-03-01'),(127,60,'2009-08-22',72,'2013-04-02'),(128,81,'2006-02-19',500,'2007-05-20'),(129,50,'1973-06-05',500,'2023-03-01'),(130,44,'1987-02-12',781,'2023-03-01'),(131,54,'1989-07-29',500,'2023-03-01'),(132,14,'2013-10-29',500,'2023-03-01'),(133,27,'2007-06-10',500,'2023-03-01'),(134,91,'2002-08-26',457,'2016-03-14'),(135,35,'2022-03-29',500,'2000-05-05'),(136,38,'2020-10-21',527,'2023-03-01'),(137,49,'1994-04-13',500,'2003-08-10'),(138,91,'1997-06-09',305,'2023-03-01'),(139,50,'1998-08-06',350,'2001-04-26'),(140,44,'1994-01-26',591,'2023-03-01'),(141,53,'2016-09-30',500,'2023-03-01'),(142,11,'1995-11-07',832,'2023-03-01'),(143,84,'2003-04-19',274,'2014-01-12'),(144,83,'2012-12-17',500,'2017-06-28'),(145,21,'1987-10-05',295,'2016-02-26'),(146,91,'2008-10-13',500,'2023-03-01'),(147,98,'1986-02-11',500,'2023-03-01'),(148,35,'2015-01-27',500,'2023-03-01'),(149,68,'2003-10-31',500,'2016-06-21'),(150,74,'2021-04-04',322,'2023-03-01'),(151,13,'2019-04-15',500,'2023-03-01'),(152,50,'2008-09-30',500,'2010-07-29'),(153,19,'2008-12-29',500,'2010-09-22'),(154,92,'2015-10-18',500,'2023-03-01'),(155,38,'1990-04-19',500,'2023-03-01'),(156,58,'2019-03-30',500,'2010-07-24'),(157,30,'1982-04-04',500,'2023-03-01'),(158,37,'1984-05-16',566,'2022-04-08'),(159,39,'1991-05-27',500,'2023-03-01'),(160,39,'2004-07-13',500,'2019-05-20'),(161,96,'2017-03-28',465,'2017-11-18'),(162,69,'1993-12-29',639,'2023-03-01'),(163,81,'2007-04-02',501,'2023-03-01'),(164,93,'1991-07-09',400,'2020-01-02'),(165,41,'1983-01-04',500,'2020-05-10'),(166,17,'1989-08-22',531,'2023-03-01'),(167,68,'2008-04-27',500,'2023-03-01'),(168,11,'1996-05-05',488,'2021-05-17'),(169,16,'2008-05-16',538,'2015-01-11'),(170,78,'2020-06-01',500,'2002-05-07'),(171,90,'1979-12-08',308,'2023-03-01'),(172,42,'1978-04-11',500,'2023-03-01'),(173,94,'2007-02-04',500,'2015-12-07'),(174,86,'1971-02-18',500,'2012-03-11'),(175,21,'1983-10-11',759,'2023-03-01'),(176,27,'2011-01-22',500,'2006-10-10'),(177,68,'2020-03-14',344,'2000-07-04'),(178,10,'2014-11-18',818,'2022-12-15'),(179,8,'1973-08-08',500,'2007-06-20'),(180,54,'2013-07-24',317,'2014-04-08'),(181,83,'1973-11-29',500,'2004-09-07'),(182,46,'2006-07-18',357,'2023-03-01'),(183,40,'1980-09-26',760,'2004-02-14'),(184,53,'1984-11-04',500,'2023-03-01'),(185,66,'1979-04-27',551,'2015-12-25'),(186,21,'2012-03-17',500,'2009-04-13'),(187,66,'1995-02-07',500,'2023-03-01'),(188,18,'1974-03-20',500,'2023-03-01'),(189,93,'2013-06-27',431,'2023-03-01'),(190,28,'2014-01-16',500,'2022-02-09'),(191,15,'1996-10-31',69,'2014-09-19'),(192,90,'1985-11-22',15,'2023-03-01'),(193,91,'2004-08-22',313,'2003-09-28'),(194,31,'2019-11-03',500,'2018-03-25'),(195,80,'1980-10-02',500,'2023-03-01'),(196,87,'2000-11-03',500,'2023-03-01'),(197,24,'2000-10-10',500,'2023-03-01'),(198,83,'2010-02-10',500,'2023-03-01'),(199,50,'2014-08-23',768,'2023-03-01'),(200,56,'1985-06-03',500,'2023-03-01'),(201,0,'2025-01-01',0,'2025-01-01');
/*!40000 ALTER TABLE `item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `manages`
--

DROP TABLE IF EXISTS `manages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `manages` (
  `ItemID` int DEFAULT NULL,
  `AdminID` int DEFAULT NULL,
  KEY `ItemID` (`ItemID`),
  KEY `AdminID` (`AdminID`),
  CONSTRAINT `manages_ibfk_1` FOREIGN KEY (`ItemID`) REFERENCES `item` (`ItemID`),
  CONSTRAINT `manages_ibfk_2` FOREIGN KEY (`AdminID`) REFERENCES `admin` (`AdminID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `manages`
--

LOCK TABLES `manages` WRITE;
/*!40000 ALTER TABLE `manages` DISABLE KEYS */;
INSERT INTO `manages` VALUES (101,1),(102,2),(103,1),(104,2),(105,1),(106,2),(107,1),(108,2),(109,1),(110,2),(111,1),(112,2),(113,1),(114,2),(115,1),(116,2),(117,1),(118,2),(119,1),(120,2),(121,1),(122,2),(123,1),(124,2),(125,1),(126,2),(127,1),(128,2),(129,1),(130,2),(131,1),(132,2),(133,1),(134,2),(135,1),(136,2),(137,1),(138,2),(139,1),(140,2),(141,1),(142,2),(143,1),(144,2),(145,1),(146,2),(147,1),(148,2),(149,1),(150,2),(151,1),(152,2),(153,1),(154,2),(155,1),(156,2),(157,1),(158,2),(159,1),(160,2),(161,1),(162,2),(163,1),(164,2),(165,1),(166,2),(167,1),(168,2),(169,1),(170,2),(171,1),(172,2),(173,1),(174,2),(175,1),(176,2),(177,1),(178,2),(179,1),(180,2),(181,1),(182,2),(183,1),(184,2),(185,1),(186,2),(187,1),(188,2),(189,1),(190,2),(191,1),(192,2),(193,1),(194,2),(195,1),(196,2),(197,1),(198,2),(199,1),(200,2);
/*!40000 ALTER TABLE `manages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `membership`
--

DROP TABLE IF EXISTS `membership`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `membership` (
  `MembershipID` int NOT NULL AUTO_INCREMENT,
  `Discount` int NOT NULL,
  `VIPOffer` varchar(100) NOT NULL,
  `FreeDelivery` varchar(100) NOT NULL,
  `OfferExpiryDate` date DEFAULT NULL,
  PRIMARY KEY (`MembershipID`)
) ENGINE=InnoDB AUTO_INCREMENT=109 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `membership`
--

LOCK TABLES `membership` WRITE;
/*!40000 ALTER TABLE `membership` DISABLE KEYS */;
INSERT INTO `membership` VALUES (1,4,'9','Yes','1976-08-05'),(2,6,'4','Yes','1991-06-08'),(3,3,'6','Yes','1986-07-09'),(4,6,'8','Yes','2015-10-03'),(5,6,'8','Yes','1995-03-21'),(6,8,'4','Yes','2002-12-04'),(7,2,'2','Yes','1982-08-15'),(8,1,'6','Yes','1995-12-17'),(9,4,'2','Yes','2007-06-29'),(10,9,'8','Yes','2006-05-20'),(11,4,'9','Yes','2018-06-22'),(12,1,'8','Yes','2016-08-04'),(13,9,'9','Yes','2017-10-09'),(14,3,'8','Yes','2003-04-20'),(15,3,'4','Yes','1975-07-12'),(16,7,'4','Yes','1980-02-18'),(17,4,'6','Yes','2005-11-25'),(18,3,'5','Yes','1985-08-08'),(19,5,'8','Yes','2018-02-26'),(20,5,'4','Yes','1991-01-11'),(21,4,'1','Yes','1987-11-30'),(22,9,'3','Yes','1986-02-19'),(23,5,'9','Yes','2013-03-07'),(24,1,'5','Yes','1991-03-15'),(25,5,'7','Yes','1983-09-01'),(26,8,'2','Yes','2022-02-03'),(27,3,'5','Yes','1973-08-27'),(28,9,'3','Yes','1974-08-06'),(29,1,'4','Yes','2021-08-10'),(30,1,'4','Yes','1979-12-31'),(31,7,'8','Yes','2018-03-21'),(32,7,'2','Yes','2015-10-22'),(33,3,'6','Yes','2006-07-23'),(34,5,'2','Yes','2011-02-22'),(35,9,'1','Yes','2023-02-01'),(36,1,'1','Yes','1988-05-07'),(37,5,'2','Yes','2002-02-20'),(38,4,'6','Yes','2017-06-01'),(39,9,'6','Yes','2005-03-13'),(40,6,'6','Yes','2008-08-03'),(41,4,'5','Yes','2001-09-26'),(42,8,'3','Yes','1988-01-11'),(43,8,'9','Yes','1984-11-04'),(44,2,'4','Yes','1999-08-27'),(45,3,'8','Yes','1983-12-16'),(46,2,'7','Yes','1977-04-24'),(47,1,'3','Yes','1977-02-23'),(48,2,'8','Yes','1998-09-19'),(49,4,'9','Yes','1993-10-21'),(50,9,'2','Yes','1970-03-21'),(51,9,'9','Yes','2000-05-10'),(52,3,'5','Yes','2000-03-16'),(53,8,'1','Yes','1987-05-21'),(54,7,'3','Yes','2006-03-12'),(55,6,'1','Yes','1981-04-01'),(56,6,'5','Yes','1991-04-10'),(57,9,'2','Yes','1995-01-21'),(58,7,'7','Yes','2002-12-29'),(59,3,'9','Yes','1992-06-24'),(60,2,'5','Yes','1987-02-15'),(61,6,'3','Yes','1976-12-31'),(62,2,'7','Yes','1999-03-30'),(63,4,'1','Yes','1981-09-27'),(64,9,'6','Yes','2010-02-10'),(65,1,'4','Yes','2020-01-10'),(66,2,'1','Yes','2002-08-12'),(67,9,'1','Yes','2021-09-07'),(68,5,'9','Yes','2020-09-29'),(69,5,'2','Yes','1991-09-15'),(70,4,'9','Yes','1978-07-09'),(71,9,'5','Yes','1972-10-27'),(72,9,'9','Yes','2001-10-12'),(73,8,'2','Yes','1976-06-17'),(74,7,'8','Yes','1985-07-08'),(75,8,'7','Yes','2008-02-04'),(76,7,'7','Yes','2019-10-10'),(77,6,'8','Yes','2017-08-13'),(78,8,'1','Yes','2006-04-22'),(79,8,'3','Yes','1978-04-15'),(80,7,'8','Yes','1989-07-10'),(81,4,'5','Yes','1984-08-16'),(82,2,'7','Yes','1978-07-26'),(83,7,'8','Yes','1974-01-19'),(84,3,'2','Yes','2014-05-06'),(85,8,'8','Yes','2019-05-02'),(86,7,'3','Yes','2015-12-04'),(87,1,'5','Yes','1981-03-05'),(88,5,'3','Yes','2020-06-28'),(89,6,'9','Yes','1995-09-01'),(90,4,'6','Yes','2006-08-16'),(91,4,'9','Yes','1971-01-22'),(92,8,'8','Yes','2011-07-03'),(93,2,'5','Yes','1993-05-02'),(94,6,'1','Yes','2010-01-30'),(95,8,'4','Yes','1996-01-23'),(96,9,'3','Yes','1986-03-06'),(97,6,'8','Yes','1994-05-11'),(98,1,'9','Yes','2009-04-01'),(99,6,'4','Yes','1992-10-18'),(100,8,'2','Yes','2001-12-27'),(107,5,'0','No','2024-04-19'),(108,5,'10','No','2024-04-27');
/*!40000 ALTER TABLE `membership` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `OrderID` int NOT NULL AUTO_INCREMENT,
  `PaymentStatus` varchar(100) DEFAULT NULL,
  `DeliveryStatus` varchar(100) DEFAULT NULL,
  `TotalPrice` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`OrderID`)
) ENGINE=InnoDB AUTO_INCREMENT=260 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1,'PENDING','DELIVERED',NULL),(2,'PAID','ON THE WAY',NULL),(3,'PENDING','ON THE WAY',NULL),(4,'PAID','DELIVERED',NULL),(5,'PAID','ON THE WAY',NULL),(6,'COD','DELIVERED',NULL),(7,'COD','CANCELLED',NULL),(8,'COD','ON THE WAY',NULL),(9,'COD','ON THE WAY',NULL),(10,'COD','ON THE WAY',NULL),(11,'COD','ON THE WAY',NULL),(12,'PENDING','CANCELLED',NULL),(13,'PENDING','CANCELLED',NULL),(14,'COD','CANCELLED',NULL),(15,'PAID','DELIVERED',NULL),(16,'PAID','DELIVERED',NULL),(17,'PENDING','DELIVERED',NULL),(18,'COD','DELIVERED',NULL),(19,'COD','CANCELLED',NULL),(20,'PENDING','DELIVERED',NULL),(21,'PENDING','ON THE WAY',NULL),(22,'PAID','DELIVERED',NULL),(23,'PAID','DELIVERED',NULL),(24,'PAID','DELIVERED',NULL),(25,'PAID','ON THE WAY',NULL),(26,'PENDING','ON THE WAY',NULL),(27,'COD','ON THE WAY',NULL),(28,'PENDING','ON THE WAY',NULL),(29,'PAID','ON THE WAY',NULL),(30,'PENDING','ON THE WAY',NULL),(31,'PENDING','CANCELLED',NULL),(32,'PENDING','CANCELLED',NULL),(33,'PENDING','ON THE WAY',NULL),(34,'COD','ON THE WAY',NULL),(35,'COD','DELIVERED',NULL),(36,'PENDING','CANCELLED',NULL),(37,'COD','CANCELLED',NULL),(38,'PAID','ON THE WAY',NULL),(39,'PAID','ON THE WAY',NULL),(40,'PAID','DELIVERED',NULL),(41,'COD','CANCELLED',NULL),(42,'PAID','ON THE WAY',NULL),(43,'PAID','ON THE WAY',NULL),(44,'PAID','ON THE WAY',NULL),(45,'PAID','CANCELLED',NULL),(46,'PENDING','ON THE WAY',NULL),(47,'PENDING','ON THE WAY',NULL),(48,'PENDING','ON THE WAY',NULL),(49,'PAID','DELIVERED',NULL),(50,'PAID','ON THE WAY',NULL),(51,'PAID','ON THE WAY',NULL),(52,'PAID','DELIVERED',NULL),(53,'COD','DELIVERED',NULL),(54,'PAID','ON THE WAY',NULL),(55,'PENDING','ON THE WAY',NULL),(56,'PAID','DELIVERED',NULL),(57,'COD','ON THE WAY',NULL),(58,'PENDING','ON THE WAY',NULL),(59,'PENDING','CANCELLED',NULL),(60,'COD','DELIVERED',NULL),(61,'PAID','DELIVERED',NULL),(62,'PENDING','DELIVERED',NULL),(63,'COD','CANCELLED',NULL),(64,'PAID','CANCELLED',NULL),(65,'COD','ON THE WAY',NULL),(66,'PENDING','CANCELLED',NULL),(67,'COD','ON THE WAY',NULL),(68,'PAID','ON THE WAY',NULL),(69,'COD','DELIVERED',NULL),(70,'PENDING','ON THE WAY',NULL),(71,'COD','ON THE WAY',NULL),(72,'PENDING','ON THE WAY',NULL),(73,'COD','CANCELLED',NULL),(74,'COD','ON THE WAY',NULL),(75,'PAID','DELIVERED',NULL),(76,'COD','DELIVERED',NULL),(77,'PENDING','CANCELLED',NULL),(78,'PENDING','CANCELLED',NULL),(79,'PENDING','DELIVERED',NULL),(80,'COD','DELIVERED',NULL),(81,'COD','ON THE WAY',NULL),(82,'PENDING','ON THE WAY',NULL),(83,'PENDING','ON THE WAY',NULL),(84,'PAID','DELIVERED',NULL),(85,'COD','CANCELLED',NULL),(86,'PENDING','DELIVERED',NULL),(87,'PENDING','DELIVERED',NULL),(88,'PENDING','ON THE WAY',NULL),(89,'COD','ON THE WAY',NULL),(90,'PENDING','DELIVERED',NULL),(91,'COD','ON THE WAY',NULL),(92,'COD','ON THE WAY',NULL),(93,'PENDING','ON THE WAY',NULL),(94,'PENDING','DELIVERED',NULL),(95,'PENDING','ON THE WAY',NULL),(96,'PAID','CANCELLED',NULL),(97,'PENDING','ON THE WAY',NULL),(98,'COD','CANCELLED',NULL),(99,'PENDING','ON THE WAY',NULL),(100,'PAID','ON THE WAY',NULL),(255,'Net Banking','CANCELLED','11521'),(258,'Net Banking','CANCELLED','815');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sales`
--

DROP TABLE IF EXISTS `sales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sales` (
  `BranchID` int DEFAULT NULL,
  `DailySales` varchar(100) DEFAULT NULL,
  `MonthlySales` varchar(100) DEFAULT NULL,
  `QuaterlySales` varchar(100) DEFAULT NULL,
  `AnnualSales` varchar(100) DEFAULT NULL,
  `TotalSales` varchar(100) DEFAULT NULL,
  KEY `BranchID` (`BranchID`),
  CONSTRAINT `sales_ibfk_1` FOREIGN KEY (`BranchID`) REFERENCES `branch` (`BranchID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sales`
--

LOCK TABLES `sales` WRITE;
/*!40000 ALTER TABLE `sales` DISABLE KEYS */;
INSERT INTO `sales` VALUES (7,'9441','80805','312652','340737','949969'),(2,'2911','50122','146055','119458','7283132'),(3,'7783','65155','176075','450708','5527416'),(1,'3984','68431','471198','490779','6974136'),(5,'1195','12830','291016','288703','3315773'),(9,'3006','88126','308885','247713','1081323'),(8,'9166','81297','290743','173356','7368764'),(4,'1861','49495','287355','366737','8950764'),(6,'1887','18394','426745','346469','3096614'),(1,'4000','40000','400000','4000000','40000000');
/*!40000 ALTER TABLE `sales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subscription`
--

DROP TABLE IF EXISTS `subscription`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `subscription` (
  `SubscriptionID` int NOT NULL AUTO_INCREMENT,
  `TypeOfSub` varchar(50) NOT NULL,
  `OfferExpiryDate` date DEFAULT NULL,
  PRIMARY KEY (`SubscriptionID`)
) ENGINE=InnoDB AUTO_INCREMENT=105 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subscription`
--

LOCK TABLES `subscription` WRITE;
/*!40000 ALTER TABLE `subscription` DISABLE KEYS */;
INSERT INTO `subscription` VALUES (1,'MONTHLY','1984-12-01'),(2,'QUATERLY','1974-07-12'),(3,'YEARLY','1980-02-23'),(4,'MONTHLY','2006-12-22'),(5,'YEARLY','1979-03-30'),(6,'MONTHLY','1981-12-10'),(7,'YEARLY','1996-04-16'),(8,'MONTHLY','2021-12-19'),(9,'QUATERLY','1997-01-11'),(10,'YEARLY','2000-03-22'),(11,'MONTHLY','1979-08-20'),(12,'MONTHLY','2016-07-16'),(13,'YEARLY','1997-07-16'),(14,'MONTHLY','1996-05-16'),(15,'YEARLY','2016-08-24'),(16,'YEARLY','2016-07-10'),(17,'YEARLY','1989-07-16'),(18,'MONTHLY','2011-11-23'),(19,'QUATERLY','2018-11-24'),(20,'MONTHLY','1990-01-17'),(21,'YEARLY','2001-10-27'),(22,'YEARLY','1971-01-28'),(23,'YEARLY','1980-07-30'),(24,'QUATERLY','1986-06-14'),(25,'QUATERLY','2013-09-26'),(26,'QUATERLY','1976-12-13'),(27,'QUATERLY','1974-03-17'),(28,'MONTHLY','2004-06-10'),(29,'QUATERLY','1976-07-20'),(30,'QUATERLY','1995-09-24'),(31,'MONTHLY','1989-05-12'),(32,'MONTHLY','1980-08-25'),(33,'MONTHLY','2021-10-25'),(34,'QUATERLY','1990-08-31'),(35,'QUATERLY','1990-05-19'),(36,'QUATERLY','2005-03-12'),(37,'YEARLY','1987-11-11'),(38,'YEARLY','2004-04-29'),(39,'YEARLY','1978-04-08'),(40,'QUATERLY','2014-10-09'),(41,'MONTHLY','2008-06-17'),(42,'MONTHLY','2010-06-08'),(43,'MONTHLY','1991-07-30'),(44,'QUATERLY','1970-07-02'),(45,'QUATERLY','1996-03-28'),(46,'MONTHLY','1975-04-14'),(47,'YEARLY','2009-01-20'),(48,'MONTHLY','2008-02-16'),(49,'MONTHLY','1998-09-07'),(50,'QUATERLY','2011-10-11'),(51,'QUATERLY','2016-03-26'),(52,'QUATERLY','1975-10-07'),(53,'QUATERLY','1982-03-10'),(54,'MONTHLY','2018-04-22'),(55,'QUATERLY','1975-12-03'),(56,'MONTHLY','2005-09-28'),(57,'MONTHLY','2005-11-20'),(58,'QUATERLY','2017-09-29'),(59,'MONTHLY','2003-12-21'),(60,'MONTHLY','2010-05-26'),(61,'QUATERLY','2001-10-11'),(62,'YEARLY','2017-02-26'),(63,'YEARLY','1980-06-14'),(64,'MONTHLY','1999-11-18'),(65,'MONTHLY','2001-06-01'),(66,'QUATERLY','2003-09-18'),(67,'YEARLY','2015-03-12'),(68,'MONTHLY','1984-08-04'),(69,'QUATERLY','1978-02-18'),(70,'MONTHLY','1999-06-18'),(71,'QUATERLY','2003-02-14'),(72,'MONTHLY','1979-04-16'),(73,'MONTHLY','2016-08-09'),(74,'YEARLY','1995-01-18'),(75,'MONTHLY','2021-09-15'),(76,'QUATERLY','2018-09-04'),(77,'QUATERLY','1995-06-15'),(78,'YEARLY','2007-08-10'),(79,'YEARLY','1979-05-03'),(80,'MONTHLY','1980-02-13'),(81,'QUATERLY','2008-06-01'),(82,'YEARLY','1989-02-12'),(83,'MONTHLY','2008-09-06'),(84,'QUATERLY','1995-12-09'),(85,'YEARLY','1997-04-25'),(86,'YEARLY','2013-08-30'),(87,'YEARLY','1982-09-18'),(88,'MONTHLY','1972-09-26'),(89,'MONTHLY','1972-03-11'),(90,'YEARLY','1991-03-13'),(91,'QUATERLY','2021-03-30'),(92,'MONTHLY','2001-09-28'),(93,'YEARLY','2017-06-05'),(94,'MONTHLY','2006-09-16'),(95,'YEARLY','1991-08-20'),(96,'QUATERLY','2020-10-12'),(97,'MONTHLY','1971-10-27'),(98,'YEARLY','2009-06-06'),(99,'YEARLY','2016-08-11'),(100,'QUATERLY','1977-01-30'),(101,'Quaterly','2023-07-19'),(103,'Monthly','2023-05-20'),(104,'Monthly','2023-05-28');
/*!40000 ALTER TABLE `subscription` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `supervisor`
--

DROP TABLE IF EXISTS `supervisor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `supervisor` (
  `EmployeeID` int DEFAULT NULL,
  `BranchID` int DEFAULT NULL,
  `AdminID` int DEFAULT NULL,
  KEY `EmployeeID` (`EmployeeID`),
  KEY `BranchID` (`BranchID`),
  KEY `AdminID` (`AdminID`),
  CONSTRAINT `supervisor_ibfk_1` FOREIGN KEY (`EmployeeID`) REFERENCES `employees` (`EmployeeID`),
  CONSTRAINT `supervisor_ibfk_2` FOREIGN KEY (`BranchID`) REFERENCES `branch` (`BranchID`),
  CONSTRAINT `supervisor_ibfk_3` FOREIGN KEY (`AdminID`) REFERENCES `admin` (`AdminID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `supervisor`
--

LOCK TABLES `supervisor` WRITE;
/*!40000 ALTER TABLE `supervisor` DISABLE KEYS */;
INSERT INTO `supervisor` VALUES (1,1,1),(2,2,2),(3,3,1),(4,4,2),(5,5,1),(6,6,2),(7,7,1),(8,8,2),(9,9,1),(10,10,2),(11,11,1),(12,12,2),(13,13,1),(14,14,2),(15,15,1),(16,16,2),(17,17,1),(18,18,2),(19,19,1),(20,20,2),(21,21,1),(22,22,2),(23,23,1),(24,24,2),(25,25,1),(26,26,2),(27,27,1),(28,28,2),(29,29,1),(30,30,2),(31,31,1),(32,32,2),(33,33,1),(34,34,2),(35,35,1),(36,36,2),(37,37,1),(38,38,2),(39,39,1),(40,40,2),(41,41,1),(42,42,2),(43,43,1),(44,44,2),(45,45,1),(46,46,2),(47,47,1),(48,48,2),(49,49,1),(50,50,2),(51,51,1),(52,52,2),(53,53,1),(54,54,2),(55,55,1),(56,56,2),(57,57,1),(58,58,2),(59,59,1),(60,60,2),(61,61,1),(62,62,2),(63,63,1),(64,64,2),(65,65,1),(66,66,2),(67,67,1),(68,68,2),(69,69,1),(70,70,2),(71,71,1),(72,72,2),(73,73,1),(74,74,2),(75,75,1),(76,76,2),(77,77,1),(78,78,2),(79,79,1),(80,80,2),(81,81,1),(82,82,2),(83,83,1),(84,84,2),(85,85,1),(86,86,2),(87,87,1),(88,88,2),(89,89,1),(90,90,2),(91,91,1),(92,92,2),(93,93,1),(94,94,2),(95,95,1),(96,96,2),(97,97,1),(98,98,2),(99,99,1),(100,100,2);
/*!40000 ALTER TABLE `supervisor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `warehouse`
--

DROP TABLE IF EXISTS `warehouse`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `warehouse` (
  `WarehouseID` int NOT NULL AUTO_INCREMENT,
  `StreetNumber` int DEFAULT NULL,
  `StreetName` varchar(500) DEFAULT NULL,
  `AptNumber` varchar(500) DEFAULT NULL,
  `City` varchar(500) DEFAULT NULL,
  `State` varchar(500) DEFAULT NULL,
  `ZIP` int DEFAULT NULL,
  PRIMARY KEY (`WarehouseID`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `warehouse`
--

LOCK TABLES `warehouse` WRITE;
/*!40000 ALTER TABLE `warehouse` DISABLE KEYS */;
INSERT INTO `warehouse` VALUES (1,2,'rerum','4','West Griffinland','Louisiana',10275),(2,4,'sed','16','Cummeratamouth','Delaware',12049),(3,5,'dolor','28','Hesselchester','Indiana',12411),(4,26,'fugit','97','New Ephraimstad','Missouri',14149),(5,44,'assumenda','98','Nienowmouth','Vermont',19545),(6,17,'molestiae','51','Lake Grayce','Connecticut',16031),(7,27,'reiciendis','70','Lake Mekhi','SouthCarolina',16881),(8,50,'culpa','57','North Nestorfurt','Washington',12808),(9,31,'quibusdam','72','Adalbertoberg','Tennessee',13197),(10,45,'error','3','South Dariotown','NorthDakota',10853),(11,50,'voluptas','4','South Naomiton','Mississippi',17029),(12,42,'occaecati','30','West Ebba','Minnesota',15567),(13,11,'earum','75','Wymanhaven','SouthDakota',16360),(14,11,'iure','72','West Aaron','RhodeIsland',14062),(15,13,'ratione','90','Watsicaland','Wisconsin',10373),(16,16,'recusandae','43','West Minnieborough','WestVirginia',14648),(17,39,'voluptatum','50','Bergnaumfurt','Indiana',18495),(18,11,'sed','89','Lake Jeanne','NorthCarolina',13517),(19,1,'iste','91','Wolfshire','Virginia',17156),(20,48,'repudiandae','9','Volkmanton','Hawaii',14757),(21,24,'delectus','89','Conroyfort','NorthDakota',12842),(22,3,'illum','98','West Tomasaborough','WestVirginia',11393),(23,46,'occaecati','97','East Johnny','Utah',19424),(24,23,'corrupti','78','East Jerrell','California',19302),(25,27,'qui','52','Blairchester','Hawaii',17670),(26,6,'sit','68','Rebeccaton','Maryland',14151),(27,43,'dolorem','53','East Marlenborough','Ohio',15261),(28,26,'modi','13','Anikamouth','NewMexico',17001),(29,43,'temporibus','95','North Kaylieborough','Mississippi',16739),(30,26,'corrupti','43','Nataliehaven','Kansas',11567),(31,5,'aut','42','East Crawfordfurt','Nevada',13426),(32,17,'numquam','29','Greenton','Wyoming',18518),(33,9,'minus','62','South Leora','Pennsylvania',17951),(34,31,'et','40','New Tristinborough','Virginia',19473),(35,20,'porro','79','Destanymouth','Georgia',11806),(36,45,'sunt','16','North Chad','Maine',18389),(37,10,'dolorum','31','Larryland','Maryland',16421),(38,1,'non','90','Jerryside','Vermont',18248),(39,38,'accusamus','1','Raoulmouth','Nebraska',15513),(40,37,'et','68','Kundemouth','SouthCarolina',13099),(41,24,'tempora','83','East Desmondhaven','Mississippi',11909),(42,40,'autem','29','Port Sibylton','Minnesota',12160),(43,33,'quae','42','East Broderickbury','SouthCarolina',14887),(44,33,'dolores','24','East Avischester','Arkansas',13093),(45,46,'velit','96','Jaunitachester','Massachusetts',15144),(46,49,'repudiandae','90','Dewayneside','Wyoming',15016),(47,1,'optio','38','West Keara','Texas',19730),(48,37,'culpa','29','Carolannechester','NewJersey',19483),(49,13,'soluta','7','New Shannyfort','Maryland',17942),(50,6,'vero','27','Caylashire','Minnesota',16652),(51,13,'ea','19','New Ernaberg','NorthDakota',17114),(52,32,'quia','86','Rosenbaumland','Pennsylvania',11788),(53,46,'et','85','North Ruben','Missouri',19757),(54,22,'eligendi','69','Petraland','Connecticut',15086),(55,42,'qui','83','Kassulkemouth','RhodeIsland',19661),(56,46,'quasi','3','Arleneport','Colorado',18553),(57,22,'non','59','Sylvanchester','Maine',13657),(58,34,'itaque','73','East Abagailchester','Oregon',12550),(59,27,'ut','82','New Tiannabury','Illinois',15203),(60,29,'optio','25','East Kenyattachester','SouthCarolina',18606),(61,8,'ut','62','Port Camrynmouth','WestVirginia',11684),(62,6,'sed','3','Macejkovicside','NewMexico',15962),(63,2,'et','91','Borerville','Delaware',10327),(64,2,'natus','76','South Clarachester','Maine',12942),(65,24,'quae','19','Sporerfort','Ohio',13923),(66,28,'velit','60','West Karleybury','NewJersey',12437),(67,46,'delectus','61','Cydneyfort','NorthCarolina',17926),(68,12,'fugiat','57','Presleyfurt','Georgia',10989),(69,33,'laboriosam','49','North Elijahmouth','Alaska',19442),(70,37,'aliquam','15','East Evertmouth','Alabama',12255),(71,41,'quasi','40','Lake Claudia','Michigan',13447),(72,14,'aliquam','95','West Dion','Alabama',17368),(73,20,'dolores','1','South Enidburgh','Arizona',16286),(74,7,'deleniti','80','Schoenhaven','Arizona',18204),(75,24,'quod','40','Lake Carlifort','Florida',10464),(76,7,'porro','65','Laronview','Idaho',12753),(77,8,'in','32','West Valentinamouth','Illinois',10399),(78,37,'minus','20','Lake Phyllisview','Maine',10474),(79,22,'magnam','35','New Jarredport','District of Columbia',18476),(80,16,'cumque','47','Micahtown','Connecticut',14757),(81,15,'corrupti','26','Port Madisen','Kansas',10046),(82,43,'explicabo','11','South Bonitaburgh','Louisiana',14226),(83,48,'et','27','Lake Bridie','WestVirginia',15244),(84,28,'cupiditate','45','Blickhaven','WestVirginia',13563),(85,5,'esse','85','Kendallmouth','District of Columbia',19931),(86,4,'autem','70','Abshirechester','Massachusetts',17512),(87,33,'iusto','79','Port Jennifer','NewJersey',17032),(88,48,'sint','56','Port Fredrickchester','Mississippi',10878),(89,40,'amet','19','Hollishaven','NewYork',19740),(90,41,'voluptates','34','North Whitneystad','Idaho',16985),(91,4,'atque','98','Lake Grover','District of Columbia',13389),(92,27,'molestiae','74','East Mateo','Hawaii',14609),(93,44,'eligendi','39','Port Lamont','Virginia',15933),(94,50,'adipisci','50','South Trisha','Oklahoma',16041),(95,26,'omnis','65','Brekkeport','Ohio',13691),(96,40,'voluptatibus','62','New Nona','District of Columbia',19370),(97,3,'ut','86','Kuphalbury','Virginia',14386),(98,3,'quas','36','Hayesside','Washington',12431),(99,34,'vitae','39','Nikkoville','Montana',17449),(100,47,'enim','65','Cooperborough','Nevada',18937);
/*!40000 ALTER TABLE `warehouse` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `works_in`
--

DROP TABLE IF EXISTS `works_in`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `works_in` (
  `EmployeeID` int DEFAULT NULL,
  `BranchID` int DEFAULT NULL,
  `DeptID` int DEFAULT NULL,
  KEY `EmployeeID` (`EmployeeID`),
  KEY `BranchID` (`BranchID`),
  KEY `DeptID` (`DeptID`),
  CONSTRAINT `works_in_ibfk_1` FOREIGN KEY (`EmployeeID`) REFERENCES `employees` (`EmployeeID`),
  CONSTRAINT `works_in_ibfk_2` FOREIGN KEY (`BranchID`) REFERENCES `branch` (`BranchID`),
  CONSTRAINT `works_in_ibfk_3` FOREIGN KEY (`DeptID`) REFERENCES `department` (`DeptID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `works_in`
--

LOCK TABLES `works_in` WRITE;
/*!40000 ALTER TABLE `works_in` DISABLE KEYS */;
INSERT INTO `works_in` VALUES (1,1,1),(2,2,2),(3,3,3),(4,4,4),(5,5,5),(6,6,6),(7,7,7),(8,8,8),(9,9,9),(10,10,10),(11,11,1),(12,12,2),(13,13,3),(14,14,4),(15,15,5),(16,16,6),(17,17,7),(18,18,8),(19,19,9),(20,20,10),(21,21,1),(22,22,2),(23,23,3),(24,24,4),(25,25,5),(26,26,6),(27,27,7),(28,28,8),(29,29,9),(30,30,10),(31,31,1),(32,32,2),(33,33,3),(34,34,4),(35,35,5),(36,36,6),(37,37,7),(38,38,8),(39,39,9),(40,40,10),(41,41,1),(42,42,2),(43,43,3),(44,44,4),(45,45,5),(46,46,6),(47,47,7),(48,48,8),(49,49,9),(50,50,10),(51,51,1),(52,52,2),(53,53,3),(54,54,4),(55,55,5),(56,56,6),(57,57,7),(58,58,8),(59,59,9),(60,60,10),(61,61,1),(62,62,2),(63,63,3),(64,64,4),(65,65,5),(66,66,6),(67,67,7),(68,68,8),(69,69,9),(70,70,10),(71,71,1),(72,72,2),(73,73,3),(74,74,4),(75,75,5),(76,76,6),(77,77,7),(78,78,8),(79,79,9),(80,80,10),(81,81,1),(82,82,2),(83,83,3),(84,84,4),(85,85,5),(86,86,6),(87,87,7),(88,88,8),(89,89,9),(90,90,10),(91,91,1),(92,92,2),(93,93,3),(94,94,4),(95,95,5),(96,96,6),(97,97,7),(98,98,8),(99,99,9),(100,100,10);
/*!40000 ALTER TABLE `works_in` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'monster_dairy'
--

--
-- Dumping routines for database 'monster_dairy'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-07-28 23:07:28
