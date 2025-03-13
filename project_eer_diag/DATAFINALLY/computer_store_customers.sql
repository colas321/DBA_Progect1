-- MySQL dump 10.13  Distrib 8.0.40, for Win64 (x86_64)
--
-- Host: localhost    Database: computer_store
-- ------------------------------------------------------
-- Server version	8.0.40

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
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customers` (
  `customer_id` int NOT NULL,
  `customer_name` varchar(45) NOT NULL,
  `customer_province` varchar(45) DEFAULT NULL,
  `customer_city` varchar(45) DEFAULT NULL,
  `customer_postal_code` varchar(45) DEFAULT NULL,
  `customer_phone` varchar(45) NOT NULL,
  PRIMARY KEY (`customer_id`),
  KEY `customers_name_idx` (`customer_name`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` VALUES (1,'John Smith','Ontario','Toronto','M5V 3C6','416-555-1234'),(2,'Emily Brown','Quebec','Montreal','H2X 1Y4','514-555-6789'),(3,'Michael Johnson','British Columbia','Vancouver','V6B 1A1','604-555-9876'),(4,'Sarah Williams','Alberta','Calgary','T2P 2G8','403-555-2345'),(5,'David Lee','Ontario','Ottawa','K1A 0B1','613-555-3456'),(6,'Olivia Davis','Nova Scotia','Halifax','B3H 4R2','902-555-4567'),(7,'James Wilson','Manitoba','Winnipeg','R3C 4T3','204-555-5678'),(8,'Sophia Martinez','Saskatchewan','Saskatoon','S7K 2N4','306-555-6789'),(9,'Liam Garcia','New Brunswick','Moncton','E1C 1B2','506-555-7890'),(10,'Isabella Rodriguez','Prince Edward Island','Charlottetown','C1A 4X5','902-555-8901'),(11,'Alexander Thompson','Ontario','Toronto','M4B 1V7','416-555-1122'),(12,'Mia Anderson','Quebec','Montreal','H3Z 2Y7','514-555-2233'),(13,'Noah Martin','British Columbia','Vancouver','V5K 0A1','604-555-3344'),(14,'Emma Garcia','Alberta','Calgary','T2A 3B4','403-555-4455'),(15,'William Martinez','Nova Scotia','Halifax','B3J 4N5','902-555-5566'),(16,'Ava Robinson','Manitoba','Winnipeg','R2C 3K1','204-555-6677'),(17,'James Clark','Saskatchewan','Saskatoon','S7H 1N5','306-555-7788'),(18,'Charlotte Rodriguez','New Brunswick','Moncton','E1E 5W6','506-555-8899'),(19,'Benjamin Lewis','Prince Edward Island','Summerside','C1N 2Z6','902-555-9900'),(20,'Amelia Walker','Ontario','Ottawa','K1P 1A2','613-555-1010'),(21,'Elijah Hall','Quebec','Quebec City','G1R 4H8','418-555-1111'),(22,'Harper Allen','British Columbia','Victoria','V8W 1B3','250-555-1212'),(23,'Logan Young','Alberta','Edmonton','T5J 2K8','780-555-1313'),(24,'Abigail King','Nova Scotia','Sydney','B1P 2L3','902-555-1414'),(25,'Lucas Wright','Manitoba','Brandon','R7A 3M4','204-555-1515'),(26,'Ella Scott','Saskatchewan','Regina','S4P 3N4','306-555-1616'),(27,'Mason Green','New Brunswick','Fredericton','E3B 4P5','506-555-1717'),(28,'Scarlett Adams','Prince Edward Island','Charlottetown','C1A 1B2','902-555-1818'),(29,'Oliver Nelson','Ontario','Mississauga','L5B 3X9','905-555-1919'),(30,'Chloe Baker','Quebec','Laval','H7G 4L8','450-555-2020');
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-03-12 20:35:42
