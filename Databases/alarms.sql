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
) ENGINE=InnoDB AUTO_INCREMENT=15772 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adm_event_log`
--

LOCK TABLES `adm_event_log` WRITE;
/*!40000 ALTER TABLE `adm_event_log` DISABLE KEYS */;
INSERT INTO `adm_event_log` VALUES (15757,'2023-10-13 04:58:14','','ADMs Ready',NULL,'All 1 adms are ready to use'),(15758,'2023-10-13 05:48:33','','ADMs Ready',NULL,'All 1 adms are ready to use'),(15759,'2023-10-13 05:50:49','','ADMs Ready',NULL,'All 1 adms are ready to use'),(15760,'2023-10-14 03:54:06','','ADMs Ready',NULL,'All 1 adms are ready to use'),(15761,'2023-10-14 13:50:06','','ADMs Ready',NULL,'All 1 adms are ready to use'),(15762,'2023-10-14 18:59:59','','ADMs Ready',NULL,'All 1 adms are ready to use'),(15763,'2023-12-02 06:40:38','','ADMs Ready',NULL,'All 1 adms are ready to use'),(15764,'2023-12-03 15:08:33','','ADMs Ready',NULL,'All 1 adms are ready to use'),(15765,'2023-12-03 15:16:34','','ADMs Ready',NULL,'All 1 adms are ready to use'),(15766,'2023-12-03 16:17:28','','ADMs Ready',NULL,'All 1 adms are ready to use'),(15767,'2023-12-03 16:20:56','','ADMs Ready',NULL,'All 1 adms are ready to use'),(15768,'2023-12-03 16:44:16','','ADMs Ready',NULL,'All 1 adms are ready to use'),(15769,'2023-12-04 14:01:49','','ADMs Ready',NULL,'All 1 adms are ready to use'),(15770,'2023-12-04 14:07:54','','ADMs Ready',NULL,'All 1 adms are ready to use'),(15771,'2023-12-04 14:21:59','','ADMs Ready',NULL,'All 1 adms are ready to use');
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
  `alarm_code` int NOT NULL DEFAULT '0',
  `comments` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_alarm_idx` (`alarm_id`),
  CONSTRAINT `fk_alarm` FOREIGN KEY (`alarm_id`) REFERENCES `alarms` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=157380 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alarm_log`
--

LOCK TABLES `alarm_log` WRITE;
/*!40000 ALTER TABLE `alarm_log` DISABLE KEYS */;
INSERT INTO `alarm_log` VALUES (157213,2,'2023-07-14 07:33:11','CRITICAL','Gensets alarm has been raised',0,''),(157214,2,'2023-07-14 07:33:12','OFF','Gensets alarm has been lowered',0,''),(157215,18,'2023-07-14 07:33:39','DISABLED',NULL,0,'Command sent from ACMCAPAlarms-2dbca05b-af21-32d3-93d1-0da8d0ae359d'),(157216,18,'2023-07-14 07:37:44','OFF',NULL,0,'Command sent from ACMCAPAlarms-2dbca05b-af21-32d3-93d1-0da8d0ae359d'),(157217,14,'2023-07-14 07:39:21','DISABLED',NULL,0,'Command sent from ACMCAPAlarms-2dbca05b-af21-32d3-93d1-0da8d0ae359d'),(157218,15,'2023-07-14 07:39:28','DISABLED',NULL,0,'Command sent from ACMCAPAlarms-2dbca05b-af21-32d3-93d1-0da8d0ae359d'),(157219,14,'2023-07-14 07:40:02','OFF',NULL,0,'Command sent from ACMCAPAlarms-2dbca05b-af21-32d3-93d1-0da8d0ae359d'),(157220,15,'2023-07-14 07:40:05','OFF',NULL,0,'Command sent from ACMCAPAlarms-2dbca05b-af21-32d3-93d1-0da8d0ae359d'),(157221,14,'2023-07-20 03:26:20','MODERATE','kok sensor fautlnya',0,''),(157222,14,'2023-07-20 15:55:32','CRITICAL','Parah ini',0,''),(157223,14,'2023-07-20 15:55:40','OFF','balik ke normal dong',0,''),(157224,14,'2023-07-20 15:55:40','CRITICAL','Parah ini',0,''),(157225,14,'2023-07-20 15:55:46','OFF','balik ke normal dong',0,''),(157226,15,'2023-07-26 12:59:12','SEVERE','Engine crayfish:gs1 is running too fast @ 3016 RPM',0,''),(157227,14,'2023-07-26 12:59:17','CRITICAL','Parah ini',0,''),(157228,15,'2023-07-26 12:59:43','OFF','Engine crayfish:gs1 is running acceptable RPM  @ 0 RPM',0,''),(157229,14,'2023-07-26 12:59:48','OFF','balik ke normal dong',0,''),(157230,15,'2023-07-26 13:29:17','SEVERE','Engine crayfish:gs1 is running too fast @ 2661 RPM',0,''),(157231,15,'2023-07-26 13:29:19','OFF','Engine crayfish:gs1 is running acceptable RPM  @ 0 RPM',0,''),(157232,15,'2023-07-26 14:41:13','SEVERE','Engine crayfish:gs1 is running too fast @ 3042 RPM',0,''),(157233,15,'2023-07-26 14:41:15','OFF','Engine crayfish:gs1 is running acceptable RPM  @ 0 RPM',0,''),(157234,15,'2023-07-26 15:08:06','SEVERE','Engine crayfish:gs1 is running too fast @ 3021 RPM',0,''),(157235,15,'2023-07-26 15:08:08','MODERATE','Engine crayfish:gs1 is running fast @ 2457 RPM',0,''),(157236,15,'2023-07-26 15:08:10','OFF','Engine crayfish:gs1 is running acceptable RPM  @ 0 RPM',0,''),(157237,15,'2023-07-26 15:09:13','SEVERE','Engine crayfish:gs1 is running too fast @ 3022 RPM',0,''),(157238,15,'2023-07-26 15:09:15','OFF','Engine crayfish:gs1 is running acceptable RPM  @ 0 RPM',0,''),(157239,15,'2023-07-26 15:09:37','SEVERE','Engine crayfish:gs1 is running too fast @ 3023 RPM',0,''),(157240,14,'2023-07-26 15:09:43','CRITICAL','Parah ini',0,''),(157241,15,'2023-07-26 15:09:49','OFF','Engine crayfish:gs1 is running acceptable RPM  @ 0 RPM',0,''),(157242,15,'2023-07-26 15:09:54','SEVERE','Engine crayfish:gs1 is running too fast @ 3178 RPM',0,''),(157243,15,'2023-07-26 15:09:56','OFF','Engine crayfish:gs1 is running acceptable RPM  @ 0 RPM',0,''),(157244,14,'2023-07-26 15:10:01','OFF','balik ke normal dong',0,''),(157245,12,'2023-10-14 03:58:00','OFF','End testing',0,''),(157246,12,'2023-10-15 07:24:57','DISABLED',NULL,0,''),(157247,12,'2023-10-15 07:25:00','OFF',NULL,0,''),(157248,11,'2023-10-15 07:27:35','DISABLED',NULL,0,''),(157249,11,'2023-10-15 07:27:38','OFF',NULL,0,''),(157250,12,'2023-10-15 07:31:20','DISABLED',NULL,0,''),(157251,12,'2023-10-15 07:31:26','OFF',NULL,0,''),(157252,11,'2023-10-15 14:13:03','DISABLED',NULL,0,''),(157253,11,'2023-10-15 14:21:13','OFF',NULL,0,''),(157254,15,'2023-10-15 14:55:28','OFF','End testing',0,''),(157255,15,'2023-10-15 14:56:01','OFF','End testing',0,''),(157256,15,'2023-10-15 14:56:16','OFF','End testing',0,''),(157257,15,'2023-10-15 14:56:31','OFF','End testing',0,''),(157258,15,'2023-10-15 14:57:28','OFF','End testing',0,''),(157259,2,'2023-10-15 16:44:23','OFF','End testing',0,''),(157260,15,'2023-10-15 17:07:31','OFF','End testing',0,''),(157261,11,'2023-10-15 17:11:37','OFF','End testing',0,''),(157262,15,'2023-10-15 17:12:44','OFF','End testing',0,''),(157263,15,'2023-10-15 17:13:15','OFF','End testing',0,''),(157264,15,'2023-10-15 17:14:47','OFF','End testing',0,''),(157265,15,'2023-10-15 17:17:54','DISABLED',NULL,0,''),(157266,15,'2023-10-15 17:18:05','OFF',NULL,0,''),(157267,10,'2023-10-15 17:18:19','DISABLED',NULL,0,''),(157268,10,'2023-10-15 17:18:28','OFF',NULL,0,''),(157269,10,'2023-10-15 17:18:41','OFF','End testing',0,''),(157270,14,'2023-10-15 17:19:11','OFF','End testing',0,''),(157271,14,'2023-12-02 07:06:32','MODERATE','Oil sensor fault',0,''),(157272,17,'2023-12-02 07:06:32','MODERATE','Oil sensor fault',0,''),(157273,17,'2023-12-02 07:07:29','DISABLED',NULL,0,''),(157274,14,'2023-12-02 07:08:12','DISABLED',NULL,0,''),(157275,17,'2023-12-02 07:08:16','OFF',NULL,0,''),(157276,14,'2023-12-02 07:08:23','OFF',NULL,0,''),(157277,14,'2023-12-02 07:08:35','MODERATE','Oil sensor fault',0,''),(157278,17,'2023-12-02 07:08:35','MODERATE','Oil sensor fault',0,''),(157279,14,'2023-12-02 07:09:52','DISABLED',NULL,0,''),(157280,14,'2023-12-02 07:10:00','OFF',NULL,0,''),(157281,14,'2023-12-02 07:10:05','MODERATE','Oil sensor fault',0,''),(157282,17,'2023-12-02 07:10:17','DISABLED',NULL,0,''),(157283,17,'2023-12-02 07:10:21','OFF',NULL,0,''),(157284,17,'2023-12-02 07:10:35','MODERATE','Oil sensor fault',0,''),(157285,20,'2023-12-02 07:16:23','SEVERE','Pump mollusc:pmp-sol has been on too long (00:10:00)',0,''),(157286,12,'2023-12-03 14:29:07','SEVERE','Engine is running too fast @ 19478 RPM',0,''),(157287,20,'2023-12-03 14:29:07','OFF','Pump mollusc:pmp-sol switched off after being on too long',0,''),(157288,18,'2023-12-03 14:29:07','MODERATE','Engine is running fast @ 1638 RPM',0,''),(157289,18,'2023-12-03 14:29:08','OFF','Engine is running acceptable RPM  @ 0 RPM',0,''),(157290,9,'2023-12-03 14:29:08','SEVERE','Engine is running too fast @ 25385 RPM',0,''),(157291,12,'2023-12-03 14:29:11','OFF','Engine is running acceptable RPM  @ 0 RPM',0,''),(157292,18,'2023-12-03 14:29:11','MODERATE','Engine is running fast @ 1681 RPM',0,''),(157293,9,'2023-12-03 14:29:11','OFF','Engine is running acceptable RPM  @ 0 RPM',0,''),(157294,14,'2023-12-03 14:29:12','OFF','Oil sensor returned to normal',0,''),(157295,17,'2023-12-03 14:29:22','CRITICAL','No pressure detected, potential leak!',0,''),(157296,17,'2023-12-03 14:31:25','OFF','Lowering alarm as client BBEngineRoom is offline',0,''),(157297,18,'2023-12-03 14:31:25','OFF','Lowering alarm as client BBEngineRoom is offline',0,''),(157298,15,'2023-12-03 15:17:27','MODERATE','Engine is running fast @ 1622 RPM',0,''),(157299,18,'2023-12-03 15:17:27','MODERATE','Engine is running fast @ 1682 RPM',0,''),(157300,14,'2023-12-03 15:17:38','CRITICAL','No pressure detected, potential leak!',0,''),(157301,17,'2023-12-03 15:17:38','CRITICAL','No pressure detected, potential leak!',0,''),(157302,15,'2023-12-03 15:18:28','OFF','Engine is running acceptable RPM  @ 1619 RPM',0,''),(157303,15,'2023-12-03 15:20:32','MODERATE','Engine is running fast @ 1620 RPM',0,''),(157304,15,'2023-12-03 15:20:34','OFF','Engine is running acceptable RPM  @ 1619 RPM',0,''),(157305,15,'2023-12-03 15:20:36','MODERATE','Engine is running fast @ 1620 RPM',0,''),(157306,15,'2023-12-03 15:21:24','DISABLED',NULL,0,''),(157307,15,'2023-12-03 15:21:28','OFF',NULL,0,''),(157308,15,'2023-12-03 15:21:56','MODERATE','Engine is running fast @ 1621 RPM',0,''),(157309,17,'2023-12-03 15:22:08','DISABLED',NULL,0,''),(157310,17,'2023-12-03 15:22:15','OFF',NULL,0,''),(157311,17,'2023-12-03 15:22:26','CRITICAL','No pressure detected, potential leak!',0,''),(157312,15,'2023-12-03 15:22:40','DISABLED',NULL,0,''),(157313,15,'2023-12-03 15:22:43','OFF',NULL,0,''),(157314,15,'2023-12-03 15:22:56','MODERATE','Engine is running fast @ 1623 RPM',0,''),(157315,14,'2023-12-03 15:23:08','OFF','Lowering alarm as client BBEngineRoom is offline',0,''),(157316,15,'2023-12-03 15:23:08','OFF','Lowering alarm as client BBEngineRoom is offline',0,''),(157317,17,'2023-12-03 15:23:08','OFF','Lowering alarm as client BBEngineRoom is offline',0,''),(157318,18,'2023-12-03 15:23:08','OFF','Lowering alarm as client BBEngineRoom is offline',0,''),(157319,16,'2023-12-03 16:18:22','DISABLED',NULL,0,''),(157320,16,'2023-12-03 16:18:48','OFF',NULL,0,''),(157321,14,'2023-12-03 16:21:19','DISABLED',NULL,0,''),(157322,14,'2023-12-03 16:21:23','OFF',NULL,0,''),(157323,15,'2023-12-03 16:22:50','MODERATE','Engine is running fast @ 1622 RPM',0,''),(157324,14,'2023-12-03 16:23:01','CRITICAL','No pressure detected, potential leak!',0,''),(157325,14,'2023-12-03 16:23:44','DISABLED',NULL,0,''),(157326,14,'2023-12-03 16:24:02','OFF',NULL,0,''),(157327,14,'2023-12-03 16:24:03','CRITICAL','No pressure detected, potential leak!',0,''),(157328,14,'2023-12-03 16:24:09','DISABLED',NULL,0,''),(157329,15,'2023-12-03 16:24:15','DISABLED',NULL,0,''),(157330,15,'2023-12-03 16:24:21','OFF',NULL,0,''),(157331,15,'2023-12-03 16:24:21','MODERATE','Engine is running fast @ 1620 RPM',0,''),(157332,14,'2023-12-03 16:24:26','OFF',NULL,0,''),(157333,14,'2023-12-03 16:24:26','CRITICAL','No pressure detected, potential leak!',0,''),(157334,15,'2023-12-03 16:24:41','OFF','Engine is running acceptable RPM  @ 1619 RPM',0,''),(157335,15,'2023-12-03 16:24:47','MODERATE','Engine is running fast @ 1620 RPM',0,''),(157336,15,'2023-12-03 16:24:53','OFF','Engine is running acceptable RPM  @ 1619 RPM',0,''),(157337,14,'2023-12-03 16:24:59','DISABLED',NULL,0,''),(157338,15,'2023-12-03 16:25:03','MODERATE','Engine is running fast @ 1620 RPM',0,''),(157339,14,'2023-12-03 16:25:04','OFF',NULL,0,''),(157340,14,'2023-12-03 16:25:04','CRITICAL','No pressure detected, potential leak!',0,''),(157341,15,'2023-12-03 16:25:31','OFF','Engine is running acceptable RPM  @ 1619 RPM',0,''),(157342,15,'2023-12-03 16:25:39','MODERATE','Engine is running fast @ 1620 RPM',0,''),(157343,15,'2023-12-03 16:25:41','OFF','Engine is running acceptable RPM  @ 1619 RPM',0,''),(157344,15,'2023-12-03 16:25:46','DISABLED',NULL,0,''),(157345,14,'2023-12-03 16:25:54','DISABLED',NULL,0,''),(157346,15,'2023-12-03 16:35:22','OFF',NULL,0,''),(157347,15,'2023-12-03 16:35:22','MODERATE','Engine is running fast @ 1621 RPM',0,''),(157348,15,'2023-12-03 16:35:31','DISABLED',NULL,0,''),(157349,17,'2023-12-03 16:45:04','DISABLED',NULL,0,''),(157350,17,'2023-12-03 16:45:11','OFF',NULL,0,''),(157351,14,'2023-12-03 16:45:56','OFF',NULL,0,''),(157352,14,'2023-12-03 16:46:02','DISABLED',NULL,0,''),(157353,14,'2023-12-03 16:47:38','OFF',NULL,0,''),(157354,14,'2023-12-03 16:47:39','CRITICAL','No pressure detected, potential leak!',0,''),(157355,14,'2023-12-03 16:47:47','OFF','Lowering alarm as client BBEngineRoom is offline',0,''),(157356,14,'2023-12-03 16:48:59','DISABLED',NULL,0,''),(157357,14,'2023-12-03 16:49:03','OFF',NULL,0,''),(157358,15,'2023-12-03 16:49:21','OFF',NULL,0,''),(157359,15,'2023-12-03 16:51:41','MODERATE','Engine is running fast @ 1622 RPM',0,''),(157360,14,'2023-12-03 16:51:52','CRITICAL','No pressure detected, potential leak!',0,''),(157361,14,'2023-12-03 16:53:20','DISABLED',NULL,0,''),(157362,15,'2023-12-03 16:54:20','OFF','Lowering alarm as client BBEngineRoom is offline',0,''),(157363,15,'2023-12-03 16:56:35','MODERATE','Engine is running fast @ 1622 RPM',0,''),(157364,15,'2023-12-03 16:56:42','OFF','Lowering alarm as client BBEngineRoom is offline',0,''),(157365,15,'2023-12-04 14:08:33','MODERATE','Engine is running fast @ 1624 RPM',0,''),(157366,15,'2023-12-04 14:09:22','OFF','Lowering alarm as client BBEngineRoom is offline',0,''),(157367,15,'2023-12-04 14:10:19','MODERATE','Engine is running fast @ 1624 RPM',0,''),(157368,14,'2023-12-04 14:13:55','OFF',NULL,0,''),(157369,14,'2023-12-04 14:13:56','CRITICAL','No pressure detected, potential leak!',0,''),(157370,10,'2023-12-04 14:14:28','DISABLED',NULL,0,''),(157371,10,'2023-12-04 14:14:34','OFF',NULL,0,''),(157372,14,'2023-12-04 14:14:51','OFF','Lowering alarm as client BBEngineRoom is offline',0,''),(157373,15,'2023-12-04 14:14:51','OFF','Lowering alarm as client BBEngineRoom is offline',0,''),(157374,15,'2023-12-04 14:17:02','MODERATE','Engine is running fast @ 1622 RPM',0,''),(157375,14,'2023-12-04 14:17:13','CRITICAL','No pressure detected, potential leak!',0,''),(157376,14,'2023-12-04 14:17:19','DISABLED',NULL,0,''),(157377,15,'2023-12-04 14:17:23','DISABLED',NULL,0,''),(157378,11,'2023-12-04 14:25:01','DISABLED',NULL,0,''),(157379,11,'2023-12-04 14:25:22','OFF',NULL,0,'');
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
  `enabled` tinyint NOT NULL DEFAULT '1',
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
INSERT INTO `alarms` VALUES (1,'hw','High Water',NULL,11,250,1,0,1),(2,'gs','Gensets',NULL,10,250,1,0,1),(3,'iv','Inverter',NULL,9,250,1,0,1),(7,'idk-temp','Induk Temp','BBEngineRoom',NULL,NULL,1,1,1),(8,'idk-oil','Induk Oil','BBEngineRoom',NULL,NULL,1,1,1),(9,'idk-rpm','Induk RPM','BBEngineRoom',NULL,NULL,1,1,1),(10,'bnt-temp','Bantu Temp','BBEngineRoom',NULL,NULL,1,1,1),(11,'bnt-oil','Bantu Oil','BBEngineRoom',NULL,NULL,1,1,1),(12,'bnt-rpm','Bantu RPM','BBEngineRoom',NULL,NULL,1,1,1),(13,'gs1-temp','GS1 Temp','BBEngineRoom',NULL,NULL,1,1,1),(14,'gs1-oil','GS1 Oil','BBEngineRoom',NULL,NULL,1,1,0),(15,'gs1-rpm','GS1 RPM','BBEngineRoom',NULL,NULL,1,1,0),(16,'gs2-temp','GS2 Temp','BBEngineRoom',NULL,NULL,1,1,1),(17,'gs2-oil','GS2 Oil','BBEngineRoom',NULL,NULL,1,1,1),(18,'gs2-rpm','GS2 RPM','BBEngineRoom',NULL,NULL,1,1,1),(19,'pmp-clp','Pompa Celup','BBEngineRoom',NULL,NULL,1,1,1),(20,'pmp-sol','Pompa Solar','BBEngineRoom',NULL,NULL,1,1,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_info`
--

LOCK TABLES `sys_info` WRITE;
/*!40000 ALTER TABLE `sys_info` DISABLE KEYS */;
INSERT INTO `sys_info` VALUES (1,'COM3:pilot','{\"Enabled\":true}','2022-09-15 07:58:11'),(2,'COM3:buzzer','{\"Enabled\":true}','2022-09-15 07:58:11'),(3,'COM3:gs','{\"Enabled\":true}','2022-09-15 07:58:11'),(4,'COM3:hw','{\"Enabled\":true}','2022-09-15 07:58:11'),(5,'COM3:iv','{\"Enabled\":true}','2022-09-15 07:58:11'),(6,'COM4:pilot','{\"Enabled\":true}','2023-01-03 07:27:09'),(7,'COM4:buzzer','{\"Enabled\":true}','2023-01-03 07:27:09'),(8,'COM4:gs','{\"Enabled\":true}','2023-01-03 07:27:09'),(9,'COM4:hw','{\"Enabled\":true}','2023-01-03 07:27:09'),(10,'COM4:iv','{\"Enabled\":true}','2023-01-03 07:27:09'),(11,'crayfish:pilot','{\"Enabled\":true}','2023-05-25 09:11:11'),(12,'crayfish:buzzer','{\"Enabled\":true}','2023-05-25 09:11:11'),(13,'crayfish:gs','{\"Enabled\":true}','2023-05-25 09:11:11'),(14,'crayfish:hw','{\"Enabled\":true}','2023-05-25 09:11:11'),(15,'crayfish:iv','{\"Enabled\":true}','2023-05-25 09:11:11'),(16,'crayfish:master','{\"Enabled\":true}','2023-05-31 15:09:40'),(17,'COM5:pilot','{\"Enabled\":true}','2023-06-24 13:12:37'),(18,'COM5:buzzer','{\"Enabled\":true}','2023-06-24 13:12:37'),(19,'COM5:master','{\"Enabled\":true}','2023-06-24 13:12:37'),(20,'COM5:gs','{\"Enabled\":true}','2023-06-24 14:40:15'),(21,'COM5:hw','{\"Enabled\":true}','2023-06-24 14:40:15'),(22,'COM5:iv','{\"Enabled\":true}','2023-06-24 14:40:15'),(23,'COM3:master','{\"Enabled\":true}','2023-07-01 16:41:30'),(24,'COM4:master','{\"Enabled\":true}','2023-07-27 11:54:39');
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

-- Dump completed on 2023-12-05  1:52:59
