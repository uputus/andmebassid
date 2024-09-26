-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: localhost    Database: hobune
-- ------------------------------------------------------
-- Server version	8.0.39

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
-- Table structure for table `employees`
--

DROP TABLE IF EXISTS `employees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employees` (
  `employee_id` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `phone_number` varchar(20) DEFAULT NULL,
  `role` varchar(50) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`employee_id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employees`
--

LOCK TABLES `employees` WRITE;
/*!40000 ALTER TABLE `employees` DISABLE KEYS */;
INSERT INTO `employees` VALUES (1,'Alice','Brown','alicebrown@stable.com','456-789-0123','Manager','2024-09-25 06:25:32'),(2,'David','White','davidwhite@stable.com','567-890-1234','Vet','2024-09-25 06:25:32'),(3,'Sarah','Green','sarahgreen@stable.com','678-901-2345','Trainer','2024-09-25 06:25:32');
/*!40000 ALTER TABLE `employees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `horses`
--

DROP TABLE IF EXISTS `horses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `horses` (
  `horse_id` int NOT NULL AUTO_INCREMENT,
  `owner_id` int DEFAULT NULL,
  `name` varchar(50) DEFAULT NULL,
  `age` int DEFAULT NULL,
  `health_status` varchar(100) DEFAULT NULL,
  `stall_number` int DEFAULT NULL,
  `training_schedule` text,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`horse_id`),
  KEY `idx_owner_id` (`owner_id`),
  CONSTRAINT `horses_ibfk_1` FOREIGN KEY (`owner_id`) REFERENCES `owners` (`owner_id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `horses`
--

LOCK TABLES `horses` WRITE;
/*!40000 ALTER TABLE `horses` DISABLE KEYS */;
INSERT INTO `horses` VALUES (1,1,'Thunder',5,'Good',101,'Daily - Morning: Run, Evening: Jumping','2024-09-25 06:24:57'),(2,2,'Bella',3,'Minor Injury',102,'Monday: Run, Wednesday: Jumping, Friday: Rest','2024-09-25 06:24:57'),(3,3,'Shadow',7,'Excellent',103,'Daily - Morning: Walk, Evening: Sprint','2024-09-25 06:24:57');
/*!40000 ALTER TABLE `horses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inventory`
--

DROP TABLE IF EXISTS `inventory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `inventory` (
  `item_id` int NOT NULL AUTO_INCREMENT,
  `item_name` varchar(100) DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `value` decimal(10,2) DEFAULT NULL,
  `purchase_date` date DEFAULT NULL,
  PRIMARY KEY (`item_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inventory`
--

LOCK TABLES `inventory` WRITE;
/*!40000 ALTER TABLE `inventory` DISABLE KEYS */;
INSERT INTO `inventory` VALUES (1,'Saddle',5,500.00,'2023-01-10'),(2,'Bridle',10,150.00,'2023-02-15'),(3,'Horse Shoes',20,25.00,'2023-03-20'),(4,'Feed Bags',50,10.00,'2024-05-10');
/*!40000 ALTER TABLE `inventory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `owners`
--

DROP TABLE IF EXISTS `owners`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `owners` (
  `owner_id` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `phone_number` varchar(20) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`owner_id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `owners`
--

LOCK TABLES `owners` WRITE;
/*!40000 ALTER TABLE `owners` DISABLE KEYS */;
INSERT INTO `owners` VALUES (1,'John','Doe','johndoe@gmail.com','123-456-7890','123 Main St, Cityville','2024-09-25 06:24:41'),(2,'Emily','Smith','emilysmith@yahoo.com','234-567-8901','456 Oak Rd, Farmtown','2024-09-25 06:24:41'),(3,'Michael','Johnson','mjohnson@hotmail.com','345-678-9012','789 Pine St, Horseville','2024-09-25 06:24:41');
/*!40000 ALTER TABLE `owners` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `userroles`
--

DROP TABLE IF EXISTS `userroles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `userroles` (
  `role_id` int NOT NULL AUTO_INCREMENT,
  `employee_id` int DEFAULT NULL,
  `role` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`role_id`),
  KEY `idx_role_employee_id` (`employee_id`),
  CONSTRAINT `userroles_ibfk_1` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`employee_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userroles`
--

LOCK TABLES `userroles` WRITE;
/*!40000 ALTER TABLE `userroles` DISABLE KEYS */;
INSERT INTO `userroles` VALUES (1,1,'Admin'),(2,2,'Vet'),(3,3,'Trainer');
/*!40000 ALTER TABLE `userroles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `veterinaryprocedures`
--

DROP TABLE IF EXISTS `veterinaryprocedures`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `veterinaryprocedures` (
  `procedure_id` int NOT NULL AUTO_INCREMENT,
  `horse_id` int DEFAULT NULL,
  `procedure_name` varchar(100) DEFAULT NULL,
  `procedure_date` date DEFAULT NULL,
  `description` text,
  PRIMARY KEY (`procedure_id`),
  KEY `idx_horse_id` (`horse_id`),
  CONSTRAINT `veterinaryprocedures_ibfk_1` FOREIGN KEY (`horse_id`) REFERENCES `horses` (`horse_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `veterinaryprocedures`
--

LOCK TABLES `veterinaryprocedures` WRITE;
/*!40000 ALTER TABLE `veterinaryprocedures` DISABLE KEYS */;
INSERT INTO `veterinaryprocedures` VALUES (1,1,'Vaccination','2024-08-15','Annual vaccination for equine influenza.'),(2,2,'Injury Treatment','2024-09-10','Minor treatment for a leg injury.'),(3,3,'Dental Check','2024-07-22','Routine dental check-up.'),(4,1,'Vaccination','2024-08-15','Annual vaccination for equine influenza.'),(5,2,'Injury Treatment','2024-09-10','Minor treatment for a leg injury.'),(6,3,'Dental Check','2024-07-22','Routine dental check-up.');
/*!40000 ALTER TABLE `veterinaryprocedures` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `workschedules`
--

DROP TABLE IF EXISTS `workschedules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `workschedules` (
  `schedule_id` int NOT NULL AUTO_INCREMENT,
  `employee_id` int DEFAULT NULL,
  `start_time` datetime DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `description` text,
  PRIMARY KEY (`schedule_id`),
  KEY `idx_employee_id` (`employee_id`),
  CONSTRAINT `workschedules_ibfk_1` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`employee_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workschedules`
--

LOCK TABLES `workschedules` WRITE;
/*!40000 ALTER TABLE `workschedules` DISABLE KEYS */;
INSERT INTO `workschedules` VALUES (1,1,'2024-09-25 08:00:00','2024-09-25 16:00:00','Managing the stable operations'),(2,2,'2024-09-25 09:00:00','2024-09-25 15:00:00','Scheduled vet checks and treatments'),(3,3,'2024-09-25 07:00:00','2024-09-25 13:00:00','Horse training sessions');
/*!40000 ALTER TABLE `workschedules` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-09-26 11:45:01
