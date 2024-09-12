-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: localhost    Database: markusv
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
-- Table structure for table `comment`
--

DROP TABLE IF EXISTS `comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comment` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `studentid` bigint DEFAULT NULL,
  `comment1` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `comment_ibfk_1` FOREIGN KEY (`id`) REFERENCES `student` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2467313 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comment`
--

LOCK TABLES `comment` WRITE;
/*!40000 ALTER TABLE `comment` DISABLE KEYS */;
INSERT INTO `comment` VALUES (1462312,53125644,'Teeb tupsu'),(2112312,35264635,'Teeb narkootikume'),(2312312,3123456,'Magas tunnis'),(2352312,9023456,'Oli lärmakas tunnis'),(2367812,9023478,'Oli lärmakas tunnis klassikaaslasega'),(2467312,3167456,'Kiusas klassikaaslast ');
/*!40000 ALTER TABLE `comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `comments`
--

DROP TABLE IF EXISTS `comments`;
/*!50001 DROP VIEW IF EXISTS `comments`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `comments` AS SELECT 
 1 AS `id`,
 1 AS `firstname`,
 1 AS `lastname`,
 1 AS `comment`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `course`
--

DROP TABLE IF EXISTS `course`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `course` (
  `code` varchar(8) NOT NULL,
  `description` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `course`
--

LOCK TABLES `course` WRITE;
/*!40000 ALTER TABLE `course` DISABLE KEYS */;
INSERT INTO `course` VALUES ('ENG','Learning English'),('MATH','Mathematics');
/*!40000 ALTER TABLE `course` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stgroup`
--

DROP TABLE IF EXISTS `stgroup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stgroup` (
  `code` varchar(8) NOT NULL,
  `description` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stgroup`
--

LOCK TABLES `stgroup` WRITE;
/*!40000 ALTER TABLE `stgroup` DISABLE KEYS */;
INSERT INTO `stgroup` VALUES ('TA-22E','Tarkvaraarendus (eesti)'),('TA-22V','Tarkvaraarendus (vene)'),('TA-23A','Tarkvaraarendus (eesti)'),('TA-23B','Tarkvaraarendus (vene)');
/*!40000 ALTER TABLE `stgroup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student` (
  `id` bigint NOT NULL,
  `FName` varchar(256) DEFAULT NULL,
  `LName` varchar(256) DEFAULT NULL,
  `groupcode` varchar(8) DEFAULT NULL,
  `birthdate` date DEFAULT NULL,
  `course1` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `groupcode` (`groupcode`),
  KEY `course1` (`course1`),
  CONSTRAINT `student_ibfk_1` FOREIGN KEY (`groupcode`) REFERENCES `stgroup` (`code`),
  CONSTRAINT `student_ibfk_2` FOREIGN KEY (`course1`) REFERENCES `course` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student`
--

LOCK TABLES `student` WRITE;
/*!40000 ALTER TABLE `student` DISABLE KEYS */;
INSERT INTO `student` VALUES (1462312,'Argentiina','Karis','TA-23B','2000-01-01',NULL),(2112312,'Aleksander','Karis','TA-23A','2000-01-01',NULL),(2122312,'Anton','Karis','TA-22E','2000-01-01',NULL),(2312312,'Alar','Karis','TA-23A','2000-01-01',NULL),(2312319,'Allar','Karis','TA-22V','2000-01-01',NULL),(2312487,'Allas','Karis','TA-22V','2000-01-01',NULL),(2314112,'Andreas','Karis','TA-23A','2000-01-01',NULL),(2315112,'Johannes','Karis','TA-23A','2000-01-01',NULL),(2316912,'Antoonio','Karis','TA-22E','2000-01-01',NULL),(2343312,'Alam','Karis','TA-23B','2000-01-01',NULL),(2345312,'Aõnu','Karis','TA-23A','2000-01-01',NULL),(2352312,'Aleena','Karis','TA-23A','2024-09-12',NULL),(2367812,'Aivo','Karis','TA-23A','2024-08-23',NULL),(2369312,'Andrei','Karis','TA-22E','2000-01-01',NULL),(2376112,'Andreas','Karis','TA-23A','2000-01-01',NULL),(2467312,'Allan','Karis','TA-23A','2024-01-05',NULL),(2792312,'Aanus','Karis','TA-23A','2000-01-01',NULL),(6812312,'Andreks','Karis','TA-23B','2000-01-01',NULL);
/*!40000 ALTER TABLE `student` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `comments`
--

/*!50001 DROP VIEW IF EXISTS `comments`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `comments` AS select `comment`.`studentid` AS `id`,`student`.`FName` AS `firstname`,`student`.`LName` AS `lastname`,`comment`.`comment1` AS `comment` from (`student` join `comment` on((`student`.`id` = `comment`.`studentid`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-09-12 11:15:08
