-- MySQL dump 10.13  Distrib 8.0.38, for macos14 (arm64)
--
-- Host: localhost    Database: media
-- ------------------------------------------------------
-- Server version	9.0.1

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
-- Table structure for table `api_requests`
--

DROP TABLE IF EXISTS `api_requests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `api_requests` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `base_url` varchar(255) NOT NULL,
  `request` varchar(255) NOT NULL,
  `method` enum('GET','PUT','POST','DELETE') DEFAULT NULL,
  `data` mediumtext,
  `response_headers` mediumtext,
  `last_updated` timestamp NULL DEFAULT NULL,
  `last_requested` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `api_requests`
--

LOCK TABLES `api_requests` WRITE;
/*!40000 ALTER TABLE `api_requests` DISABLE KEYS */;
/*!40000 ALTER TABLE `api_requests` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ir_commands`
--

DROP TABLE IF EXISTS `ir_commands`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ir_commands` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `command_alias` varchar(45) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `command_alias_UNIQUE` (`command_alias`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ir_commands`
--

LOCK TABLES `ir_commands` WRITE;
/*!40000 ALTER TABLE `ir_commands` DISABLE KEYS */;
INSERT INTO `ir_commands` VALUES (1,'0'),(2,'1'),(3,'2'),(4,'3'),(5,'4'),(6,'5'),(7,'6'),(8,'7'),(9,'8'),(10,'9'),(17,'AuxOpt'),(11,'Function'),(13,'Mute/Unmute'),(14,'On/Off'),(12,'Source'),(16,'Volume_Down'),(15,'Volume_Up');
/*!40000 ALTER TABLE `ir_commands` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ir_device_commands`
--

DROP TABLE IF EXISTS `ir_device_commands`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ir_device_commands` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `device_id` int unsigned NOT NULL,
  `command_id` int unsigned NOT NULL,
  `protocol` int NOT NULL,
  `address` varchar(45) NOT NULL,
  `command` varchar(45) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uq_device_command` (`device_id`,`command_id`),
  KEY `fk_command_idx` (`command_id`),
  KEY `fk_device_idx` (`device_id`),
  CONSTRAINT `fk_command` FOREIGN KEY (`command_id`) REFERENCES `ir_commands` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `fk_device` FOREIGN KEY (`device_id`) REFERENCES `ir_devices` (`id`) ON DELETE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ir_device_commands`
--

LOCK TABLES `ir_device_commands` WRITE;
/*!40000 ALTER TABLE `ir_device_commands` DISABLE KEYS */;
INSERT INTO `ir_device_commands` VALUES (1,1,15,17,'2C2C','17'),(2,1,16,17,'2C2C','16'),(3,1,14,17,'2C2C','1E'),(4,1,13,17,'2C2C','1F'),(5,1,11,17,'2C2C','3'),(6,1,17,17,'2C2C','B6');
/*!40000 ALTER TABLE `ir_device_commands` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ir_devices`
--

DROP TABLE IF EXISTS `ir_devices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ir_devices` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `device_name` varchar(45) NOT NULL,
  `device_type` varchar(45) NOT NULL,
  `manufacturer` varchar(45) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `device_name_UNIQUE` (`device_name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ir_devices`
--

LOCK TABLES `ir_devices` WRITE;
/*!40000 ALTER TABLE `ir_devices` DISABLE KEYS */;
INSERT INTO `ir_devices` VALUES (1,'LG Home Theater','Home Theater','LG'),(2,'Samsung TV','Television','Samsung');
/*!40000 ALTER TABLE `ir_devices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_info`
--

DROP TABLE IF EXISTS `sys_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_info` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `data_name` varchar(45) NOT NULL,
  `data_value` text,
  `updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `data_name_UNIQUE` (`data_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_info`
--

LOCK TABLES `sys_info` WRITE;
/*!40000 ALTER TABLE `sys_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_logs`
--

DROP TABLE IF EXISTS `sys_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sys_logs` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `log_name` varchar(45) NOT NULL,
  `log_entry_type` enum('INFO','WARNING','EXCEPTION') NOT NULL,
  `log_entry` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_logs`
--

LOCK TABLES `sys_logs` WRITE;
/*!40000 ALTER TABLE `sys_logs` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_logs` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-06-15 19:57:56
