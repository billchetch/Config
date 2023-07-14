CREATE DATABASE  IF NOT EXISTS `alarms` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `alarms`;
-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: alarms
-- ------------------------------------------------------
-- Server version	8.0.30

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
-- Table structure for table `adm_event_log`
--

DROP TABLE IF EXISTS `adm_event_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `adm_event_log` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `event_source` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `event_name` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `event_data` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `event_info` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15757 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adm_event_log`
--

LOCK TABLES `adm_event_log` WRITE;
/*!40000 ALTER TABLE `adm_event_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `adm_event_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `adm_snapshot_log`
--

DROP TABLE IF EXISTS `adm_snapshot_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `adm_snapshot_log` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `state_source` varchar(127) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `state_name` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `state_description` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `state` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adm_snapshot_log`
--

LOCK TABLES `adm_snapshot_log` WRITE;
/*!40000 ALTER TABLE `adm_snapshot_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `adm_snapshot_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `alarm_log`
--

DROP TABLE IF EXISTS `alarm_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `alarm_log` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `alarm_id` int unsigned NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `alarm_state` enum('ON','OFF','DISABLED','CRITICAL','SEVERE','MODERATE','MINOR') NOT NULL,
  `alarm_message` varchar(128) DEFAULT NULL,
  `comments` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_alarm_idx` (`alarm_id`),
  CONSTRAINT `fk_alarm` FOREIGN KEY (`alarm_id`) REFERENCES `alarms` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=157221 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alarm_log`
--

LOCK TABLES `alarm_log` WRITE;
/*!40000 ALTER TABLE `alarm_log` DISABLE KEYS */;
INSERT INTO `alarm_log` VALUES (157213,2,'2023-07-14 07:33:11','CRITICAL','Gensets alarm has been raised',''),(157214,2,'2023-07-14 07:33:12','OFF','Gensets alarm has been lowered',''),(157215,18,'2023-07-14 07:33:39','DISABLED',NULL,'Command sent from ACMCAPAlarms-2dbca05b-af21-32d3-93d1-0da8d0ae359d'),(157216,18,'2023-07-14 07:37:44','OFF',NULL,'Command sent from ACMCAPAlarms-2dbca05b-af21-32d3-93d1-0da8d0ae359d'),(157217,14,'2023-07-14 07:39:21','DISABLED',NULL,'Command sent from ACMCAPAlarms-2dbca05b-af21-32d3-93d1-0da8d0ae359d'),(157218,15,'2023-07-14 07:39:28','DISABLED',NULL,'Command sent from ACMCAPAlarms-2dbca05b-af21-32d3-93d1-0da8d0ae359d'),(157219,14,'2023-07-14 07:40:02','OFF',NULL,'Command sent from ACMCAPAlarms-2dbca05b-af21-32d3-93d1-0da8d0ae359d'),(157220,15,'2023-07-14 07:40:05','OFF',NULL,'Command sent from ACMCAPAlarms-2dbca05b-af21-32d3-93d1-0da8d0ae359d');
/*!40000 ALTER TABLE `alarm_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `alarms`
--

DROP TABLE IF EXISTS `alarms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `alarms` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `alarm_id` varchar(8) NOT NULL,
  `alarm_name` varchar(45) NOT NULL,
  `alarm_source` varchar(45) DEFAULT NULL,
  `pin_number` int DEFAULT NULL,
  `noise_threshold` int DEFAULT NULL,
  `active` tinyint NOT NULL DEFAULT '1',
  `can_disable` tinyint NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `device_id_UNIQUE` (`alarm_id`),
  UNIQUE KEY `pin_number_UNIQUE` (`pin_number`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alarms`
--

LOCK TABLES `alarms` WRITE;
/*!40000 ALTER TABLE `alarms` DISABLE KEYS */;
INSERT INTO `alarms` VALUES (1,'hw','High Water',NULL,11,250,1,0),(2,'gs','Gensets',NULL,10,250,1,0),(3,'iv','Inverter',NULL,9,250,1,0),(7,'idk-temp','Induk Temp','BBEngineRoom',NULL,NULL,1,1),(8,'idk-oil','Induk Oil','BBEngineRoom',NULL,NULL,1,1),(9,'idk-rpm','Induk RPM','BBEngineRoom',NULL,NULL,1,1),(10,'bnt-temp','Bantu Temp','BBEngineRoom',NULL,NULL,1,1),(11,'bnt-oil','Bantu Oil','BBEngineRoom',NULL,NULL,1,1),(12,'bnt-rpm','Bantu RPM','BBEngineRoom',NULL,NULL,1,1),(13,'gs1-temp','GS1 Temp','BBEngineRoom',NULL,NULL,1,1),(14,'gs1-oil','GS1 Oil','BBEngineRoom',NULL,NULL,1,1),(15,'gs1-rpm','GS1 RPM','BBEngineRoom',NULL,NULL,1,1),(16,'gs2-temp','GS2 Temp','BBEngineRoom',NULL,NULL,1,1),(17,'gs2-oil','GS2 Oil','BBEngineRoom',NULL,NULL,1,1),(18,'gs2-rpm','GS2 RPM','BBEngineRoom',NULL,NULL,1,1),(19,'pmp-clp','Pompa Celup','BBEngineRoom',NULL,NULL,1,1),(20,'pmp-sol','Pompa Solar','BBEngineRoom',NULL,NULL,1,1);
/*!40000 ALTER TABLE `alarms` ENABLE KEYS */;
UNLOCK TABLES;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `api_requests`
--

LOCK TABLES `api_requests` WRITE;
/*!40000 ALTER TABLE `api_requests` DISABLE KEYS */;
/*!40000 ALTER TABLE `api_requests` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_info`
--

LOCK TABLES `sys_info` WRITE;
/*!40000 ALTER TABLE `sys_info` DISABLE KEYS */;
INSERT INTO `sys_info` VALUES (1,'COM3:pilot','{\"Enabled\":true}','2022-09-15 07:58:11'),(2,'COM3:buzzer','{\"Enabled\":true}','2022-09-15 07:58:11'),(3,'COM3:gs','{\"Enabled\":true}','2022-09-15 07:58:11'),(4,'COM3:hw','{\"Enabled\":true}','2022-09-15 07:58:11'),(5,'COM3:iv','{\"Enabled\":true}','2022-09-15 07:58:11'),(6,'COM4:pilot','{\"Enabled\":true}','2023-01-03 07:27:09'),(7,'COM4:buzzer','{\"Enabled\":true}','2023-01-03 07:27:09'),(8,'COM4:gs','{\"Enabled\":true}','2023-01-03 07:27:09'),(9,'COM4:hw','{\"Enabled\":true}','2023-01-03 07:27:09'),(10,'COM4:iv','{\"Enabled\":true}','2023-01-03 07:27:09'),(11,'crayfish:pilot','{\"Enabled\":true}','2023-05-25 09:11:11'),(12,'crayfish:buzzer','{\"Enabled\":true}','2023-05-25 09:11:11'),(13,'crayfish:gs','{\"Enabled\":true}','2023-05-25 09:11:11'),(14,'crayfish:hw','{\"Enabled\":true}','2023-05-25 09:11:11'),(15,'crayfish:iv','{\"Enabled\":true}','2023-05-25 09:11:11'),(16,'crayfish:master','{\"Enabled\":true}','2023-05-31 15:09:40'),(17,'COM5:pilot','{\"Enabled\":true}','2023-06-24 13:12:37'),(18,'COM5:buzzer','{\"Enabled\":true}','2023-06-24 13:12:37'),(19,'COM5:master','{\"Enabled\":true}','2023-06-24 13:12:37'),(20,'COM5:gs','{\"Enabled\":true}','2023-06-24 14:40:15'),(21,'COM5:hw','{\"Enabled\":true}','2023-06-24 14:40:15'),(22,'COM5:iv','{\"Enabled\":true}','2023-06-24 14:40:15'),(23,'COM3:master','{\"Enabled\":true}','2023-07-01 16:41:30');
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
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

-- Dump completed on 2023-07-14 16:13:27
