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
-- Table structure for table `invoices`
--

DROP TABLE IF EXISTS `invoices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `invoices` (
  `invoice_id` int NOT NULL,
  `invoice_number` int NOT NULL,
  `invoice_total` decimal(20,2) unsigned NOT NULL,
  `payment_total` decimal(20,2) unsigned NOT NULL,
  `payment_date` date NOT NULL,
  `invoice_due_date` date NOT NULL,
  `invoice_date` date NOT NULL,
  `customer_id` int DEFAULT NULL,
  PRIMARY KEY (`invoice_id`),
  KEY `invoice_total_idx` (`invoice_total`) USING BTREE,
  KEY `fk_invoices_customers1_idx` (`customer_id`),
  CONSTRAINT `fk_invoices_customers1` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `invoices`
--

LOCK TABLES `invoices` WRITE;
/*!40000 ALTER TABLE `invoices` DISABLE KEYS */;
INSERT INTO `invoices` VALUES (1,123456,50.23,50.23,'2021-05-15','2021-04-15','2021-03-15',7),(2,234567,99.99,0.00,'2020-09-20','2020-08-15','2020-07-10',12),(3,345678,150.75,150.75,'2020-01-10','2019-11-15','2019-11-01',5),(4,456789,200.00,200.00,'2022-04-01','2022-03-15','2022-02-20',18),(5,567890,75.50,0.00,'2023-07-05','2023-06-25','2023-06-10',2),(6,678901,120.00,120.00,'2021-02-01','2021-01-01','2020-12-05',20),(7,789012,89.95,89.95,'2020-02-15','2019-10-01','2019-09-10',30),(8,890123,250.00,250.00,'2021-09-20','2021-09-01','2021-08-15',11),(9,901234,180.25,180.25,'2022-11-05','2022-10-20','2022-10-10',16),(10,112345,60.00,0.00,'2021-02-05','2021-01-20','2021-01-05',8),(11,223456,300.00,300.00,'2023-04-15','2023-04-01','2023-03-15',3),(12,334567,145.99,145.99,'2020-06-30','2020-06-10','2020-05-20',14),(13,445678,85.50,85.50,'2020-01-05','2019-12-15','2019-12-01',25),(14,556789,220.00,220.00,'2022-08-25','2022-08-05','2022-07-20',19),(15,667890,95.00,0.00,'2021-05-10','2021-04-25','2021-04-10',6),(16,778901,130.75,130.75,'2020-09-01','2020-08-20','2020-08-05',10),(17,889012,410.00,410.00,'2023-12-05','2023-11-20','2023-11-05',13),(18,990123,55.55,55.55,'2021-11-01','2021-10-20','2021-10-10',17),(19,101234,175.35,0.00,'2020-04-15','2020-04-01','2020-03-15',9),(20,212345,199.99,199.99,'2022-02-10','2022-01-25','2022-01-10',22),(21,323456,140.40,140.40,'2020-01-10','2019-10-20','2019-10-05',24),(22,434567,260.80,260.80,'2020-12-15','2020-11-30','2020-11-15',26),(23,545678,305.99,305.99,'2021-08-05','2021-07-20','2021-07-01',15),(24,656789,80.00,80.00,'2022-06-05','2022-05-25','2022-05-10',29),(25,767890,110.00,0.00,'2023-02-10','2023-01-25','2023-01-10',4),(26,878901,95.75,95.75,'2020-10-05','2020-09-25','2020-09-10',21),(27,989012,135.50,135.50,'2022-01-01','2021-12-15','2021-12-01',27),(28,100123,60.25,60.25,'2020-01-15','2019-08-30','2019-08-15',28),(29,211234,250.50,250.50,'2022-04-15','2022-03-30','2022-03-15',23),(30,322345,500.00,500.00,'2023-09-30','2023-09-15','2023-09-01',30);
/*!40000 ALTER TABLE `invoices` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-03-12 20:35:43
