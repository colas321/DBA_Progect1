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
-- Table structure for table `vendors`
--

DROP TABLE IF EXISTS `vendors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vendors` (
  `vendor_id` int NOT NULL,
  `vendor_name` varchar(45) NOT NULL,
  `vendor_state` varchar(45) NOT NULL,
  `vendor_city` varchar(45) NOT NULL,
  `vendor_postal_code` varchar(45) NOT NULL,
  `vendor_contact` varchar(45) NOT NULL,
  PRIMARY KEY (`vendor_id`),
  UNIQUE KEY `vendor_name_UNIQUE` (`vendor_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vendors`
--

LOCK TABLES `vendors` WRITE;
/*!40000 ALTER TABLE `vendors` DISABLE KEYS */;
INSERT INTO `vendors` VALUES (1,'TechNova','Ontario','Toronto','M5V 3C6','416-555-1234'),(2,'CyberDyne','Quebec','Montreal','H2X 1Y4','514-555-5678'),(3,'NextGen Solutions','British Columbia','Vancouver','V6B 2W9','604-555-9876'),(4,'InnovaTech','Alberta','Calgary','T2P 1J9','403-555-4321'),(5,'BlueWave','Ontario','Ottawa','K1A 0B1','613-555-2468'),(6,'DigitalPulse','Manitoba','Winnipeg','R3C 4X8','204-555-1357'),(7,'QuantumSoft','Saskatchewan','Regina','S4P 3Z2','306-555-9753'),(8,'DataFusion','Nova Scotia','Halifax','B3H 2Y9','902-555-8642'),(9,'SmartTech','Quebec','Quebec City','G1R 5M2','418-555-1122'),(10,'InfoDynamics','British Columbia','Victoria','V8W 1K6','250-555-7788'),(11,'PixelTech','Alberta','Edmonton','T5J 0K9','780-555-3344'),(12,'CodeCrafters','Ontario','Hamilton','L8P 1A5','905-555-6677'),(13,'CloudWorks','Quebec','Laval','H7A 1B2','450-555-8899'),(14,'NetSolutions','Manitoba','Brandon','R7A 3V3','204-555-7777'),(15,'Apex Innovations','New Brunswick','Fredericton','E3B 1C2','506-555-5555');
/*!40000 ALTER TABLE `vendors` ENABLE KEYS */;
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
