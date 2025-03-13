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
-- Table structure for table `parts`
--

DROP TABLE IF EXISTS `parts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `parts` (
  `part_id` int NOT NULL,
  `part_name` varchar(100) NOT NULL,
  `part_type` varchar(100) NOT NULL,
  `part_instock` int DEFAULT NULL,
  PRIMARY KEY (`part_id`),
  KEY `part_type_idx` (`part_type`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `parts`
--

LOCK TABLES `parts` WRITE;
/*!40000 ALTER TABLE `parts` DISABLE KEYS */;
INSERT INTO `parts` VALUES (1,'Intel Core i7-9700K (2018)','CPU',23),(2,'Intel Core i9-9900K (2019)','CPU',35),(3,'Intel Core i5-10400 (2020)','CPU',15),(4,'AMD Ryzen 7 3700X (2019)','CPU',30),(5,'AMD Ryzen 9 3900X (2019)','CPU',10),(6,'AMD Ryzen 5 3600 (2018)','CPU',28),(7,'Intel Core i7-10700K (2020)','CPU',19),(8,'AMD Ryzen 7 5800X (2020)','CPU',32),(9,'Intel Core i9-11900K (2021)','CPU',14),(10,'AMD Ryzen 9 5950X (2021)','CPU',27),(11,'NVIDIA GeForce RTX 3070 (2020)','Graphics Card',22),(12,'NVIDIA GeForce RTX 3080 (2020)','Graphics Card',18),(13,'NVIDIA GeForce RTX 3060 Ti (2021)','Graphics Card',16),(14,'NVIDIA GeForce RTX 3090 (2021)','Graphics Card',12),(15,'NVIDIA GeForce RTX 4070 (2023)','Graphics Card',25),(16,'Corsair Vengeance LPX 16GB DDR4 (2018)','Memory',33),(17,'Corsair Dominator Platinum RGB 32GB DDR4 (2019)','Memory',11),(18,'Corsair Vengeance RGB Pro 16GB DDR4 (2020)','Memory',27),(19,'Corsair Vengeance LPX 32GB DDR4 (2021)','Memory',30),(20,'Corsair Dominator Platinum RGB 16GB DDR4 (2022)','Memory',19),(21,'ASUS ROG Strix Z490-E Gaming (2019)','Motherboard',15),(22,'ASUS Prime Z590-A (2020)','Motherboard',34),(23,'ASUS TUF Gaming Z590-Plus (2021)','Motherboard',10),(24,'MSI MPG B550 Gaming Plus (2018)','Motherboard',28),(25,'MSI MAG B550 Tomahawk (2019)','Motherboard',12),(26,'ASUS ROG Crosshair VIII Hero (2020)','Motherboard',26),(27,'MSI MEG X570 Unify (2020)','Motherboard',21),(28,'ASUS TUF Gaming X570-Plus (2021)','Motherboard',17),(29,'MSI MPG Z490 Gaming Edge (2021)','Motherboard',20),(30,'ASUS ROG Strix B550-F Gaming (2022)','Motherboard',9),(31,'Corsair RM750x 750W (2018)','Power Supply',29),(32,'Corsair RM850x 850W (2019)','Power Supply',14),(33,'Seasonic Focus GX-850 (2019)','Power Supply',23),(34,'Seasonic PRIME TX-850 (2020)','Power Supply',17),(35,'Corsair HX1000 1000W (2021)','Power Supply',11),(36,'Seasonic Focus GX-750 (2022)','Power Supply',35),(37,'Corsair RM650x 650W (2023)','Power Supply',16),(38,'Seasonic PRIME TX-1000 (2022)','Power Supply',28),(39,'Corsair CX750M 750W (2023)','Power Supply',19),(40,'Seasonic Focus GX-1000 (2021)','Power Supply',12),(41,'Cooler Master MasterCase 500 (2018)','Case',30),(42,'NZXT H510 (2019)','Case',15),(43,'Fractal Design Meshify C (2020)','Case',22),(44,'Phanteks Eclipse P400A (2021)','Case',27),(45,'Corsair iCUE 4000X RGB (2022)','Case',14),(46,'Noctua NH-D15 (2018)','Cooler',20),(47,'Corsair H100i RGB Platinum (2019)','Cooler',25),(48,'NZXT Kraken X63 (2020)','Cooler',18),(49,'Cooler Master Hyper 212 Evo (2021)','Cooler',30),(50,'be quiet! Dark Rock Pro 4 (2022)','Cooler',16);
/*!40000 ALTER TABLE `parts` ENABLE KEYS */;
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
