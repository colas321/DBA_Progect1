-- MySQL dump 10.13  Distrib 8.0.23, for Win64 (x86_64)
--
-- Host: localhost    Database: computer_store
-- ------------------------------------------------------
-- Server version	8.0.23

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
-- Table structure for table `sales`
--

DROP TABLE IF EXISTS `sales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sales` (
  `invoice_id` int NOT NULL,
  `invoice_total` decimal(20,2) unsigned NOT NULL,
  `employee_id` int NOT NULL,
  `part_id` int NOT NULL,
  `prebuilt_id` int NOT NULL,
  `warranty_id` int NOT NULL,
  `sales_return_end_date` date NOT NULL,
  PRIMARY KEY (`invoice_id`),
  KEY `employee_id_fk_idx` (`employee_id`),
  KEY `part_id_fk_idx` (`part_id`) /*!80000 INVISIBLE */,
  KEY `prebuild_id_fk_idx` (`prebuilt_id`),
  KEY `warranty_id_fk_idx` (`warranty_id`),
  CONSTRAINT `employee_id_fk` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`employee_id`) ON UPDATE CASCADE,
  CONSTRAINT `part_id_fk` FOREIGN KEY (`part_id`) REFERENCES `parts` (`part_id`) ON UPDATE CASCADE,
  CONSTRAINT `prebuild_id_fk` FOREIGN KEY (`prebuilt_id`) REFERENCES `prebuilt` (`prebuilt_id`) ON UPDATE CASCADE,
  CONSTRAINT `warranty_id_fk` FOREIGN KEY (`warranty_id`) REFERENCES `warranties` (`warranty_id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sales`
--

LOCK TABLES `sales` WRITE;
/*!40000 ALTER TABLE `sales` DISABLE KEYS */;
INSERT INTO `sales` VALUES (1,1350.75,5,12,2,3,'2024-08-15'),(2,7899.99,8,25,1,2,'2025-06-30'),(3,499.50,2,5,3,1,'2023-11-10'),(4,10250.00,10,17,2,4,'2026-04-20'),(5,275.99,9,1,3,1,'2022-09-05'),(6,14299.25,7,30,1,1,'2027-01-18'),(7,6235.80,10,14,2,3,'2025-12-03'),(8,850.60,4,8,1,2,'2024-03-22'),(9,11560.99,3,22,3,4,'2026-07-14'),(10,3500.75,6,10,2,1,'2023-10-09'),(11,99.99,10,3,1,1,'2022-06-18'),(12,7800.00,10,18,3,2,'2025-09-27'),(13,12040.49,1,28,2,3,'2026-02-11'),(14,690.99,10,6,1,1,'2023-05-30'),(15,14999.99,10,20,3,4,'2027-08-01');
/*!40000 ALTER TABLE `sales` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-03-12 21:05:26
