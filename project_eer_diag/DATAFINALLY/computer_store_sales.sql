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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sales`
--

LOCK TABLES `sales` WRITE;
/*!40000 ALTER TABLE `sales` DISABLE KEYS */;
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

-- Dump completed on 2025-03-12 20:35:42
