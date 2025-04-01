-- MySQL dump 10.13  Distrib 8.0.38, for macos14 (arm64)
--
-- Host: localhost    Database: alarms
-- ------------------------------------------------------
-- Server version	5.5.5-10.11.6-MariaDB-0+deb12u1

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
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created` timestamp NOT NULL DEFAULT current_timestamp(),
  `event_source` varchar(45) NOT NULL,
  `event_name` varchar(45) NOT NULL,
  `event_data` varchar(255) DEFAULT NULL,
  `event_info` text DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15792 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adm_event_log`
--

LOCK TABLES `adm_event_log` WRITE;
/*!40000 ALTER TABLE `adm_event_log` DISABLE KEYS */;
INSERT INTO `adm_event_log` VALUES (15757,'2023-10-13 04:58:14','','ADMs Ready',NULL,'All 1 adms are ready to use'),(15758,'2023-10-13 05:48:33','','ADMs Ready',NULL,'All 1 adms are ready to use'),(15759,'2023-10-13 05:50:49','','ADMs Ready',NULL,'All 1 adms are ready to use'),(15760,'2023-10-14 03:54:06','','ADMs Ready',NULL,'All 1 adms are ready to use'),(15761,'2023-10-14 13:50:06','','ADMs Ready',NULL,'All 1 adms are ready to use'),(15762,'2023-10-14 18:59:59','','ADMs Ready',NULL,'All 1 adms are ready to use'),(15763,'2023-12-02 06:40:38','','ADMs Ready',NULL,'All 1 adms are ready to use'),(15764,'2023-12-03 15:08:33','','ADMs Ready',NULL,'All 1 adms are ready to use'),(15765,'2023-12-03 15:16:34','','ADMs Ready',NULL,'All 1 adms are ready to use'),(15766,'2023-12-03 16:17:28','','ADMs Ready',NULL,'All 1 adms are ready to use'),(15767,'2023-12-03 16:20:56','','ADMs Ready',NULL,'All 1 adms are ready to use'),(15768,'2023-12-03 16:44:16','','ADMs Ready',NULL,'All 1 adms are ready to use'),(15769,'2023-12-04 14:01:49','','ADMs Ready',NULL,'All 1 adms are ready to use'),(15770,'2023-12-04 14:07:54','','ADMs Ready',NULL,'All 1 adms are ready to use'),(15771,'2023-12-04 14:21:59','','ADMs Ready',NULL,'All 1 adms are ready to use'),(15772,'2023-12-04 17:55:22','','ADMs Ready',NULL,'All 1 adms are ready to use'),(15773,'2023-12-04 18:04:16','','ADMs Ready',NULL,'All 1 adms are ready to use'),(15774,'2023-12-04 18:10:35','','ADMs Ready',NULL,'All 1 adms are ready to use'),(15775,'2023-12-04 18:12:28','','ADMs Ready',NULL,'All 1 adms are ready to use'),(15776,'2023-12-04 18:16:35','','ADMs Ready',NULL,'All 1 adms are ready to use'),(15777,'2023-12-04 18:23:20','','ADMs Ready',NULL,'All 1 adms are ready to use'),(15778,'2023-12-04 18:31:03','','ADMs Ready',NULL,'All 1 adms are ready to use'),(15779,'2023-12-04 18:48:11','','ADMs Ready',NULL,'All 1 adms are ready to use'),(15780,'2023-12-04 19:02:28','','ADMs Ready',NULL,'All 1 adms are ready to use'),(15781,'2023-12-04 19:26:43','','ADMs Ready',NULL,'All 1 adms are ready to use'),(15782,'2023-12-04 19:36:29','','ADMs Ready',NULL,'All 1 adms are ready to use'),(15783,'2023-12-04 20:21:17','','ADMs Ready',NULL,'All 1 adms are ready to use'),(15784,'2023-12-05 01:10:06','','ADMs Ready',NULL,'All 1 adms are ready to use'),(15785,'2023-12-05 02:22:24','','ADMs Ready',NULL,'All 1 adms are ready to use'),(15786,'2023-12-05 16:47:09','','ADMs Ready',NULL,'All 1 adms are ready to use'),(15787,'2023-12-05 17:00:38','','ADMs Ready',NULL,'All 1 adms are ready to use'),(15788,'2023-12-05 17:35:42','','ADMs Ready',NULL,'All 1 adms are ready to use'),(15789,'2023-12-06 15:12:29','','ADMs Ready',NULL,'All 1 adms are ready to use'),(15790,'2023-12-06 16:23:45','','ADMs Ready',NULL,'All 1 adms are ready to use'),(15791,'2023-12-06 17:18:07','','ADMs Ready',NULL,'All 1 adms are ready to use');
/*!40000 ALTER TABLE `adm_event_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `adm_snapshot_log`
--

DROP TABLE IF EXISTS `adm_snapshot_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `adm_snapshot_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created` timestamp NOT NULL DEFAULT current_timestamp(),
  `state_source` varchar(127) NOT NULL,
  `state_name` varchar(45) NOT NULL,
  `state_description` varchar(255) DEFAULT NULL,
  `state` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
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
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `alarm_id` int(10) unsigned NOT NULL,
  `created` timestamp NOT NULL DEFAULT current_timestamp(),
  `alarm_state` varchar(16) NOT NULL DEFAULT 'UNKNOWN',
  `alarm_message` varchar(128) DEFAULT NULL,
  `alarm_code` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `fk_alarm_idx` (`alarm_id`),
  CONSTRAINT `fk_alarm` FOREIGN KEY (`alarm_id`) REFERENCES `alarms` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=160361 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alarm_log`
--

LOCK TABLES `alarm_log` WRITE;
/*!40000 ALTER TABLE `alarm_log` DISABLE KEYS */;
INSERT INTO `alarm_log` VALUES (160204,23,'2025-03-05 04:26:43','CRITICAL','Local alarm raised',0),(160205,23,'2025-03-05 04:27:08','DISCONNECTED','Disconnecting gs',0),(160206,23,'2025-03-05 04:28:26','LOWERED','Connecting gs',3),(160207,23,'2025-03-05 04:29:46','DISCONNECTED','Disconnecting gs',0),(160208,23,'2025-03-05 04:30:02','LOWERED','Connecting gs',3),(160209,23,'2025-03-05 04:30:18','LOWERED','Local alarm lowered',0),(160210,23,'2025-03-05 04:30:19','CRITICAL','Local alarm raised',0),(160211,23,'2025-03-05 04:30:20','LOWERED','Local alarm lowered',0),(160212,23,'2025-03-05 04:30:21','CRITICAL','Local alarm raised',0),(160213,23,'2025-03-05 04:45:29','CRITICAL','Local alarm raised',0),(160215,23,'2025-03-05 04:46:21','LOWERED','Local alarm lowered',0),(160216,23,'2025-03-05 04:46:23','CRITICAL','Local alarm raised',0),(160217,23,'2025-03-05 04:46:25','LOWERED','Local alarm lowered',0),(160218,23,'2025-03-05 04:46:26','CRITICAL','Local alarm raised',0),(160219,23,'2025-03-05 04:46:30','DISCONNECTED','Disconnecting gs',0),(160220,23,'2025-03-05 04:46:41','LOWERED','Connecting gs',3),(160221,23,'2025-03-05 04:46:55','DISCONNECTED','Disconnecting gs',0),(160222,23,'2025-03-05 04:47:11','LOWERED','Connecting gs',3),(160223,23,'2025-03-05 04:48:18','CRITICAL','Local alarm raised',0),(160224,23,'2025-03-05 04:52:30','CRITICAL','Local alarm raised',0),(160225,23,'2025-03-05 04:55:01','CRITICAL','Local alarm raised',0),(160226,23,'2025-03-05 05:03:54','CRITICAL','Local alarm raised',0),(160227,23,'2025-03-05 14:37:19','CRITICAL','Local alarm raised',0),(160228,23,'2025-03-05 14:37:45','LOWERED','Local alarm lowered',0),(160229,23,'2025-03-05 14:42:53','CRITICAL','Local alarm raised',0),(160230,23,'2025-03-05 14:47:03','CRITICAL','Local alarm raised',0),(160231,23,'2025-03-05 14:47:07','CRITICAL','Local alarm raised',0),(160232,23,'2025-03-05 14:48:24','CRITICAL','Local alarm raised',0),(160233,23,'2025-03-05 14:48:24','CRITICAL','Local alarm raised',0),(160234,23,'2025-03-05 14:48:34','CRITICAL','Local alarm raised',0),(160235,23,'2025-03-05 14:48:34','CRITICAL','Local alarm raised',0),(160236,23,'2025-03-05 14:48:52','LOWERED','Local alarm lowered',0),(160237,23,'2025-03-05 14:51:18','CRITICAL','Local alarm raised',0),(160238,23,'2025-03-05 14:51:55','LOWERED','Local alarm lowered',0),(160239,23,'2025-03-05 14:54:09','CRITICAL','Local alarm raised',0),(160240,23,'2025-03-05 14:54:25','LOWERED','Local alarm lowered',0),(160241,23,'2025-03-05 14:55:06','CRITICAL','Local alarm raised',0),(160242,23,'2025-03-05 14:55:36','CRITICAL','Local alarm raised',0),(160243,23,'2025-03-05 14:55:36','CRITICAL','Local alarm raised',0),(160244,23,'2025-03-05 14:56:42','LOWERED','Local alarm lowered',0),(160245,23,'2025-03-05 14:59:14','LOWERED','Local alarm lowered',0),(160246,23,'2025-03-05 14:59:14','LOWERED','Local alarm lowered',0),(160247,23,'2025-03-05 15:02:04','CRITICAL','Local alarm raised',0),(160248,23,'2025-03-05 15:02:22','LOWERED','Local alarm lowered',0),(160249,23,'2025-03-05 15:03:43','CRITICAL','Local alarm raised',0),(160250,23,'2025-03-05 15:03:57','LOWERED','Local alarm lowered',0),(160251,23,'2025-03-05 15:04:05','CRITICAL','Local alarm raised',0),(160252,23,'2025-03-05 15:05:11','LOWERED','Local alarm lowered',0),(160253,23,'2025-03-05 15:05:21','CRITICAL','Local alarm raised',0),(160254,23,'2025-03-05 15:07:13','CRITICAL','Local alarm raised',0),(160255,23,'2025-03-05 15:07:18','LOWERED','Local alarm lowered',0),(160256,23,'2025-03-05 15:07:29','CRITICAL','Local alarm raised',0),(160257,23,'2025-03-05 15:07:52','LOWERED','Local alarm lowered',0),(160258,23,'2025-03-05 15:07:59','CRITICAL','Local alarm raised',0),(160259,23,'2025-03-05 15:08:05','LOWERED','Local alarm lowered',0),(160260,23,'2025-03-05 15:08:13','CRITICAL','Local alarm raised',0),(160261,23,'2025-03-05 15:08:19','LOWERED','Local alarm lowered',0),(160262,23,'2025-03-05 15:08:31','CRITICAL','Local alarm raised',0),(160263,23,'2025-03-05 15:11:41','LOWERED','Connecting gs',3),(160264,23,'2025-03-05 15:13:07','LOWERED','Connecting gs',3),(160265,23,'2025-03-05 15:14:56','LOWERED','Connecting gs',3),(160266,23,'2025-03-05 15:21:42','LOWERED','Connecting gs',3),(160267,23,'2025-03-05 15:22:02','CRITICAL','Local alarm raised',0),(160269,23,'2025-03-05 15:22:22','CRITICAL','Local alarm raised',0),(160270,23,'2025-03-05 15:22:30','DISCONNECTED','Disconnecting gs',0),(160271,23,'2025-03-05 15:22:30','LOWERED','Local alarm lowered',0),(160272,23,'2025-03-05 15:22:38','CRITICAL','Local alarm raised',0),(160273,23,'2025-03-05 15:22:52','DISCONNECTED','Disconnecting gs',0),(160274,23,'2025-03-05 15:22:52','LOWERED','Local alarm lowered',0),(160275,23,'2025-03-05 15:23:04','CRITICAL','Local alarm raised',0),(160276,23,'2025-03-05 15:23:58','DISCONNECTED','Disconnecting gs',0),(160277,23,'2025-03-05 15:23:58','LOWERED','Local alarm lowered',0),(160279,23,'2025-03-05 15:48:48','CRITICAL','Local alarm raised',0),(160280,23,'2025-03-05 15:48:56','DISCONNECTED','Disconnecting gs',0),(160281,23,'2025-03-05 15:48:56','LOWERED','Local alarm lowered',0),(160282,23,'2025-03-05 15:49:02','CRITICAL','Local alarm raised',0),(160283,23,'2025-03-05 15:49:10','DISCONNECTED','Disconnecting gs',0),(160284,23,'2025-03-05 15:49:10','LOWERED','Local alarm lowered',0),(160285,23,'2025-03-05 15:49:24','CRITICAL','Local alarm raised',0),(160286,23,'2025-03-05 15:49:28','DISCONNECTED','Disconnecting gs',0),(160287,23,'2025-03-05 15:49:28','LOWERED','Local alarm lowered',0),(160288,23,'2025-03-05 15:49:36','CRITICAL','Local alarm raised',0),(160289,23,'2025-03-05 15:51:54','DISCONNECTED','Disconnecting gs',0),(160290,23,'2025-03-05 15:51:54','LOWERED','Local alarm lowered',0),(160291,23,'2025-03-05 15:52:03','CRITICAL','Local alarm raised',0),(160292,23,'2025-03-05 15:52:17','CRITICAL','Local alarm raised',0),(160293,23,'2025-03-05 15:54:09','DISCONNECTED','Disconnecting gs',0),(160294,23,'2025-03-05 15:54:09','LOWERED','Local alarm lowered',0),(160295,23,'2025-03-05 15:54:13','CRITICAL','Local alarm raised',0),(160296,23,'2025-03-05 15:54:53','DISCONNECTED','Disconnecting gs',0),(160297,23,'2025-03-05 15:54:53','LOWERED','Local alarm lowered',0),(160298,23,'2025-03-05 15:55:01','CRITICAL','Local alarm raised',0),(160299,23,'2025-03-05 15:55:49','DISCONNECTED','Disconnecting gs',0),(160300,23,'2025-03-05 15:55:49','LOWERED','Local alarm lowered',0),(160301,23,'2025-03-05 15:55:54','CRITICAL','Local alarm raised',0),(160303,23,'2025-03-05 15:57:57','DISCONNECTED','Disconnecting gs',0),(160304,23,'2025-03-05 15:57:58','LOWERED','Local alarm lowered',0),(160305,23,'2025-03-05 15:58:34','CRITICAL','Local alarm raised',0),(160306,23,'2025-03-05 15:58:46','DISCONNECTED','Disconnecting gs',0),(160307,23,'2025-03-05 15:58:46','LOWERED','Local alarm lowered',0),(160308,23,'2025-03-05 15:58:59','CRITICAL','Local alarm raised',0),(160309,23,'2025-03-05 15:59:05','LOWERED','Local alarm lowered',0),(160310,23,'2025-03-05 15:59:09','DISCONNECTED','Disconnecting gs',0),(160311,23,'2025-03-05 15:59:15','LOWERED','Connecting gs',3),(160312,23,'2025-03-05 16:00:03','CRITICAL','Local alarm raised',0),(160313,23,'2025-03-05 16:00:06','LOWERED','Local alarm lowered',0),(160314,23,'2025-03-05 16:00:15','DISCONNECTED','Disconnecting gs',0),(160315,23,'2025-03-05 16:00:23','LOWERED','Connecting gs',3),(160316,23,'2025-03-05 16:00:59','LOWERED','Connecting gs',3),(160317,23,'2025-03-05 16:02:04','LOWERED','Connecting gs',3),(160318,23,'2025-03-05 16:02:11','CRITICAL','Local alarm raised',0),(160319,23,'2025-03-05 16:02:17','DISCONNECTED','Disconnecting gs',0),(160320,23,'2025-03-05 16:02:30','LOWERED','Connecting gs',3),(160321,23,'2025-03-05 16:03:07','LOWERED','Connecting gs',3),(160322,23,'2025-03-05 16:03:12','CRITICAL','Local alarm raised',0),(160323,23,'2025-03-05 16:03:18','DISCONNECTED','Disconnecting gs',0),(160324,23,'2025-03-05 16:03:18','LOWERED','Local alarm lowered',0),(160325,23,'2025-03-05 16:03:27','CRITICAL','Local alarm raised',0),(160326,23,'2025-03-05 16:04:11','LOWERED','Connecting gs',3),(160327,23,'2025-03-05 16:04:16','CRITICAL','Local alarm raised',0),(160328,23,'2025-03-05 16:04:21','DISCONNECTED','Disconnecting gs',0),(160329,23,'2025-03-05 16:04:27','LOWERED','Connecting gs',3),(160330,23,'2025-03-05 16:05:37','LOWERED','Connecting gs',3),(160331,23,'2025-03-05 16:05:43','CRITICAL','Local alarm raised',0),(160332,23,'2025-03-05 16:05:48','DISCONNECTED','Disconnecting gs',0),(160333,23,'2025-03-05 16:05:49','LOWERED','Local alarm lowered',0),(160334,23,'2025-03-05 16:05:57','CRITICAL','Local alarm raised',0),(160336,23,'2025-03-05 16:06:16','CRITICAL','Local alarm raised',0),(160337,23,'2025-03-05 16:06:24','DISCONNECTED','Disconnecting gs',0),(160338,23,'2025-03-05 16:06:24','LOWERED','Local alarm lowered',0),(160339,23,'2025-03-05 16:06:38','CRITICAL','Local alarm raised',0),(160340,23,'2025-03-05 16:06:44','DISCONNECTED','Disconnecting gs',0),(160341,23,'2025-03-05 16:06:44','LOWERED','Local alarm lowered',0),(160342,23,'2025-03-05 16:06:53','CRITICAL','Local alarm raised',0),(160343,23,'2025-03-05 16:06:57','LOWERED','Local alarm lowered',0),(160344,23,'2025-03-05 16:06:59','CRITICAL','Local alarm raised',0),(160345,23,'2025-03-05 16:07:02','LOWERED','Local alarm lowered',0),(160346,23,'2025-03-05 16:07:08','DISCONNECTED','Disconnecting gs',0),(160347,23,'2025-03-05 16:07:21','LOWERED','Connecting gs',3),(160348,23,'2025-03-05 16:07:21','CRITICAL','Local alarm raised',0),(160349,23,'2025-03-05 16:07:29','DISCONNECTED','Disconnecting gs',0),(160350,23,'2025-03-05 16:07:29','LOWERED','Local alarm lowered',0),(160351,23,'2025-03-05 16:07:44','CRITICAL','Local alarm raised',0),(160352,23,'2025-03-05 16:07:51','DISCONNECTED','Disconnecting gs',0),(160353,23,'2025-03-05 16:07:51','LOWERED','Local alarm lowered',0),(160354,23,'2025-03-05 16:07:57','CRITICAL','Local alarm raised',0),(160355,23,'2025-03-05 16:14:08','LOWERED','Connecting gs',3),(160356,23,'2025-03-05 16:14:39','DISCONNECTED','Disconnecting gs',0),(160357,23,'2025-03-05 16:14:48','LOWERED','Connecting gs',3),(160358,23,'2025-03-05 16:14:52','CRITICAL','Local alarm raised',0),(160359,23,'2025-03-05 16:14:58','DISCONNECTED','Disconnecting gs',0),(160360,23,'2025-03-05 16:14:58','LOWERED','Local alarm lowered',0);
/*!40000 ALTER TABLE `alarm_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `alarms`
--

DROP TABLE IF EXISTS `alarms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `alarms` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `alarm_id` varchar(8) NOT NULL,
  `alarm_name` varchar(45) NOT NULL,
  `alarm_source` varchar(45) NOT NULL,
  `active` tinyint(4) NOT NULL DEFAULT 1,
  `can_disable` tinyint(4) NOT NULL DEFAULT 1,
  `enabled` tinyint(4) NOT NULL DEFAULT 1,
  `last_raised` datetime DEFAULT NULL,
  `last_lowered` datetime DEFAULT NULL,
  `last_disabled` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `device_id_UNIQUE` (`alarm_id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alarms`
--

LOCK TABLES `alarms` WRITE;
/*!40000 ALTER TABLE `alarms` DISABLE KEYS */;
INSERT INTO `alarms` VALUES (7,'idk-temp','Induk Temp','bbengineroom.service@openfire.bb.lan',1,1,0,NULL,NULL,NULL),(8,'idk-oil','Induk Oil','bbengineroom.service@openfire.bb.lan',1,1,0,NULL,NULL,NULL),(9,'idk-rpm','Induk RPM','bbengineroom.service@openfire.bb.lan',1,1,0,NULL,NULL,NULL),(10,'bnt-temp','Bantu Temp','bbengineroom.service@openfire.bb.lan',0,1,0,NULL,NULL,NULL),(11,'bnt-oil','Bantu Oil','bbengineroom.service@openfire.bb.lan',0,1,0,NULL,NULL,NULL),(12,'bnt-rpm','Bantu RPM','bbengineroom.service@openfire.bb.lan',0,1,0,NULL,NULL,NULL),(13,'gs1-temp','GS1 Temp','bbengineroom.service@openfire.bb.lan',1,1,0,NULL,NULL,NULL),(14,'gs1-oil','GS1 Oil','bbengineroom.service@openfire.bb.lan',1,1,0,NULL,NULL,NULL),(15,'gs1-rpm','GS1 RPM','bbengineroom.service@openfire.bb.lan',1,1,0,NULL,NULL,NULL),(16,'gs2-temp','GS2 Temp','bbengineroom.service@openfire.bb.lan',1,1,0,NULL,NULL,NULL),(17,'gs2-oil','GS2 Oil','bbengineroom.service@openfire.bb.lan',1,1,0,NULL,NULL,NULL),(18,'gs2-rpm','GS2 RPM','bbengineroom.service@openfire.bb.lan',1,1,0,NULL,NULL,NULL),(19,'pmp-clp','Pompa Celup','bbengineroom.service@openfire.bb.lan',1,1,0,NULL,NULL,NULL),(20,'pmp-sol','Pompa Solar','bbengineroom.service@openfire.bb.lan',1,1,0,NULL,NULL,NULL),(21,'iv','Inverter','local',1,1,1,NULL,NULL,NULL),(22,'hw','High Water','local',1,1,1,NULL,NULL,NULL),(23,'gs','Genset','local',1,1,1,'2025-03-05 16:14:52',NULL,NULL),(24,'gps','GPS Receiver','gps.service@openfire.bb.lan',1,1,1,'2025-03-03 15:03:14',NULL,NULL),(25,'test','Test Alarm','bbalarms.raiser@openfire.bb.lan',1,1,1,'2025-03-03 14:50:03','2025-03-03 14:50:05',NULL);
/*!40000 ALTER TABLE `alarms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `api_requests`
--

DROP TABLE IF EXISTS `api_requests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `api_requests` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created` timestamp NOT NULL DEFAULT current_timestamp(),
  `base_url` varchar(255) NOT NULL,
  `request` varchar(255) NOT NULL,
  `method` enum('GET','PUT','POST','DELETE') DEFAULT NULL,
  `data` mediumtext DEFAULT NULL,
  `response_headers` mediumtext DEFAULT NULL,
  `last_updated` timestamp NULL DEFAULT NULL,
  `last_requested` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
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
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `data_name` varchar(45) NOT NULL,
  `data_value` text DEFAULT NULL,
  `updated` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `data_name_UNIQUE` (`data_name`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
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
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created` timestamp NOT NULL DEFAULT current_timestamp(),
  `log_name` varchar(45) NOT NULL,
  `log_entry_type` enum('INFO','WARNING','EXCEPTION') NOT NULL,
  `log_entry` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=134 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_logs`
--

LOCK TABLES `sys_logs` WRITE;
/*!40000 ALTER TABLE `sys_logs` DISABLE KEYS */;
INSERT INTO `sys_logs` VALUES (1,'2025-02-26 15:45:28','system','INFO','Alarms Service connected'),(2,'2025-02-26 15:46:23','system','INFO','gps.service@openfire.bb.lan: Connected'),(3,'2025-02-26 15:46:54','system','INFO','gps.service@openfire.bb.lan: Stopping'),(4,'2025-02-26 15:46:54','system','INFO','gps.service@openfire.bb.lan: Disconnecting'),(5,'2025-02-26 15:47:16','system','INFO','gps.service@openfire.bb.lan: Connected'),(6,'2025-02-26 15:50:05','system','INFO','gps.service@openfire.bb.lan: Connected'),(7,'2025-02-26 15:50:41','system','INFO','gps.service@openfire.bb.lan: Stopping'),(8,'2025-02-26 15:50:41','system','INFO','gps.service@openfire.bb.lan: Disconnecting'),(9,'2025-02-26 15:51:17','system','INFO','gps.service@openfire.bb.lan: Connected'),(10,'2025-02-26 15:54:33','system','INFO','gps.service@openfire.bb.lan: Stopping'),(11,'2025-02-26 15:54:33','system','INFO','gps.service@openfire.bb.lan: Disconnecting'),(12,'2025-02-26 15:55:18','system','INFO','gps.service@openfire.bb.lan: Connected'),(13,'2025-02-26 15:55:55','system','INFO','gps.service@openfire.bb.lan: Stopping'),(14,'2025-02-26 15:57:56','system','INFO','gps.service@openfire.bb.lan: Disconnecting'),(15,'2025-02-26 15:58:28','system','INFO','gps.service@openfire.bb.lan: Connected'),(16,'2025-02-26 16:12:48','system','INFO','gps.service@openfire.bb.lan: Stopping'),(17,'2025-02-26 16:12:57','system','INFO','gps.service@openfire.bb.lan: Disconnecting'),(18,'2025-02-26 16:13:46','system','INFO','gps.service@openfire.bb.lan: Connected'),(19,'2025-02-26 16:14:38','system','INFO','gps.service@openfire.bb.lan: Stopping'),(20,'2025-02-26 16:14:38','system','INFO','gps.service@openfire.bb.lan: Disconnecting'),(21,'2025-02-26 16:15:04','system','INFO','gps.service@openfire.bb.lan: Connected'),(22,'2025-02-26 16:17:46','system','INFO','gps.service@openfire.bb.lan: Stopping'),(23,'2025-02-26 16:17:46','system','INFO','gps.service@openfire.bb.lan: Disconnecting'),(24,'2025-02-26 16:18:05','system','INFO','gps.service@openfire.bb.lan: Connected'),(25,'2025-02-26 16:19:37','system','INFO','gps.service@openfire.bb.lan: Stopping'),(26,'2025-02-26 16:19:37','system','INFO','gps.service@openfire.bb.lan: Disconnecting'),(27,'2025-02-26 16:19:54','system','INFO','gps.service@openfire.bb.lan: Connected'),(28,'2025-02-26 16:21:01','system','INFO','gps.service@openfire.bb.lan: Stopping'),(29,'2025-02-26 16:21:01','system','INFO','gps.service@openfire.bb.lan: Disconnecting'),(30,'2025-02-26 16:21:45','system','INFO','gps.service@openfire.bb.lan: Connected'),(31,'2025-02-26 16:22:26','system','INFO','gps.service@openfire.bb.lan: Stopping'),(32,'2025-02-26 16:22:26','system','INFO','gps.service@openfire.bb.lan: Disconnecting'),(33,'2025-02-26 16:22:54','system','INFO','gps.service@openfire.bb.lan: Connected'),(34,'2025-02-26 16:30:39','system','INFO','gps.service@openfire.bb.lan: Stopping'),(35,'2025-02-26 16:30:40','system','INFO','gps.service@openfire.bb.lan: Disconnecting'),(36,'2025-02-26 16:31:31','system','INFO','gps.service@openfire.bb.lan: Connected'),(37,'2025-02-26 16:33:06','system','INFO','gps.service@openfire.bb.lan: Stopping'),(38,'2025-02-26 16:33:06','system','INFO','gps.service@openfire.bb.lan: Disconnecting'),(39,'2025-02-26 16:33:31','system','INFO','gps.service@openfire.bb.lan: Connected'),(40,'2025-02-26 16:34:58','system','INFO','gps.service@openfire.bb.lan: Stopping'),(41,'2025-02-26 16:34:58','system','INFO','gps.service@openfire.bb.lan: Disconnecting'),(42,'2025-02-26 16:36:03','system','INFO','gps.service@openfire.bb.lan: Connected'),(43,'2025-02-26 16:37:04','system','INFO','gps.service@openfire.bb.lan: Stopping'),(44,'2025-02-26 16:37:05','system','INFO','gps.service@openfire.bb.lan: Disconnecting'),(45,'2025-02-26 16:38:07','system','INFO','gps.service@openfire.bb.lan: Connected'),(46,'2025-02-26 16:39:40','system','INFO','gps.service@openfire.bb.lan: Stopping'),(47,'2025-02-26 16:39:40','system','INFO','gps.service@openfire.bb.lan: Disconnecting'),(48,'2025-02-26 16:40:18','system','INFO','gps.service@openfire.bb.lan: Connected'),(49,'2025-02-26 16:41:36','system','INFO','gps.service@openfire.bb.lan: Stopping'),(50,'2025-02-26 16:41:36','system','INFO','gps.service@openfire.bb.lan: Disconnecting'),(51,'2025-02-26 16:43:09','system','INFO','gps.service@openfire.bb.lan: Connected'),(52,'2025-02-26 16:43:33','system','INFO','gps.service@openfire.bb.lan: Stopping'),(53,'2025-02-26 16:43:33','system','INFO','gps.service@openfire.bb.lan: Disconnecting'),(54,'2025-02-26 16:45:13','system','INFO','gps.service@openfire.bb.lan: Connected'),(55,'2025-02-26 16:47:04','system','INFO','gps.service@openfire.bb.lan: Stopping'),(56,'2025-02-26 16:47:04','system','INFO','gps.service@openfire.bb.lan: Disconnecting'),(57,'2025-02-26 16:47:57','system','INFO','gps.service@openfire.bb.lan: Connected'),(58,'2025-02-26 16:53:06','system','INFO','Alarms Service connected'),(59,'2025-02-26 17:00:50','system','INFO','Alarms Service connected'),(60,'2025-02-27 16:12:11','system','INFO','Alarms Service connected'),(61,'2025-03-01 14:58:11','system','INFO','Alarms Service connected'),(62,'2025-03-01 15:00:46','system','INFO','Alarms Service connected'),(63,'2025-03-01 15:01:55','system','INFO','Alarms Service connected'),(64,'2025-03-01 15:21:31','system','INFO','Alarms Service connected'),(65,'2025-03-01 15:26:54','system','INFO','Alarms Service connected'),(66,'2025-03-01 15:41:59','system','INFO','Alarms Service connected'),(67,'2025-03-01 15:43:41','system','INFO','Alarms Service connected'),(68,'2025-03-01 15:52:49','system','INFO','Alarms Service connected'),(69,'2025-03-02 14:07:58','system','INFO','Alarms Service connected'),(70,'2025-03-03 14:14:45','system','INFO','Alarms Service connected'),(71,'2025-03-03 14:32:26','system','INFO','Alarms Service connected'),(72,'2025-03-03 14:54:00','system','INFO','gps.service@openfire.bb.lan: Connected'),(73,'2025-03-03 14:54:50','system','INFO','Alarms Service connected'),(74,'2025-03-03 14:55:28','system','INFO','gps.service@openfire.bb.lan: Stopping'),(75,'2025-03-03 14:55:28','system','INFO','gps.service@openfire.bb.lan: Disconnecting'),(76,'2025-03-03 14:55:49','system','INFO','gps.service@openfire.bb.lan: Connected'),(77,'2025-03-03 15:00:59','system','INFO','gps.service@openfire.bb.lan: Stopping'),(78,'2025-03-03 15:01:00','system','INFO','gps.service@openfire.bb.lan: Disconnecting'),(79,'2025-03-03 15:01:19','system','INFO','gps.service@openfire.bb.lan: Connected'),(80,'2025-03-03 15:01:56','system','INFO','gps.service@openfire.bb.lan: Stopping'),(81,'2025-03-03 15:01:56','system','INFO','gps.service@openfire.bb.lan: Disconnecting'),(82,'2025-03-03 15:02:18','system','INFO','gps.service@openfire.bb.lan: Connected'),(83,'2025-03-03 15:03:14','system','INFO','gps.service@openfire.bb.lan: Stopping'),(84,'2025-03-03 15:03:14','system','INFO','gps.service@openfire.bb.lan: Disconnecting'),(85,'2025-03-04 14:42:41','system','INFO','Alarms Service connected'),(86,'2025-03-04 15:10:45','system','INFO','Alarms Service connected'),(87,'2025-03-04 15:17:46','system','INFO','Alarms Service connected'),(88,'2025-03-04 16:23:10','system','INFO','Alarms Service connected'),(89,'2025-03-04 16:23:44','system','INFO','Alarms Service connected'),(90,'2025-03-04 16:25:04','system','INFO','Alarms Service connected'),(91,'2025-03-04 16:26:16','system','INFO','Alarms Service connected'),(92,'2025-03-04 16:31:10','system','INFO','Alarms Service connected'),(93,'2025-03-04 16:32:09','system','INFO','Alarms Service connected'),(94,'2025-03-04 16:34:45','system','INFO','Alarms Service connected'),(95,'2025-03-04 16:35:26','system','INFO','Alarms Service connected'),(96,'2025-03-04 16:39:18','system','INFO','Alarms Service connected'),(97,'2025-03-04 16:40:11','system','INFO','Alarms Service connected'),(98,'2025-03-04 16:51:49','system','INFO','Alarms Service connected'),(99,'2025-03-04 16:53:19','system','INFO','Alarms Service connected'),(100,'2025-03-04 16:58:12','system','INFO','Alarms Service connected'),(101,'2025-03-04 17:01:20','system','INFO','Alarms Service connected'),(102,'2025-03-05 04:26:00','system','INFO','Alarms Service connected'),(103,'2025-03-05 04:45:27','system','INFO','Alarms Service connected'),(104,'2025-03-05 04:48:17','system','INFO','Alarms Service connected'),(105,'2025-03-05 04:52:29','system','INFO','Alarms Service connected'),(106,'2025-03-05 04:54:59','system','INFO','Alarms Service connected'),(107,'2025-03-05 05:03:46','system','INFO','Alarms Service connected'),(108,'2025-03-05 14:35:03','system','INFO','Alarms Service connected'),(109,'2025-03-05 14:51:17','system','INFO','Alarms Service connected'),(110,'2025-03-05 14:54:08','system','INFO','Alarms Service connected'),(111,'2025-03-05 14:55:04','system','INFO','Alarms Service connected'),(112,'2025-03-05 15:02:03','system','INFO','Alarms Service connected'),(113,'2025-03-05 15:03:41','system','INFO','Alarms Service connected'),(114,'2025-03-05 15:07:11','system','INFO','Alarms Service connected'),(115,'2025-03-05 15:11:38','system','INFO','Alarms Service connected'),(116,'2025-03-05 15:13:05','system','INFO','Alarms Service connected'),(117,'2025-03-05 15:14:54','system','INFO','Alarms Service connected'),(118,'2025-03-05 15:21:40','system','INFO','Alarms Service connected'),(119,'2025-03-05 15:22:20','system','INFO','Alarms Service connected'),(120,'2025-03-05 15:48:32','system','INFO','Alarms Service connected'),(121,'2025-03-05 15:50:08','system','INFO','Alarms Service connected'),(122,'2025-03-05 15:51:01','system','INFO','Alarms Service connected'),(123,'2025-03-05 15:52:33','system','INFO','Alarms Service connected'),(124,'2025-03-05 15:53:24','system','INFO','Alarms Service connected'),(125,'2025-03-05 15:54:26','system','INFO','Alarms Service connected'),(126,'2025-03-05 15:55:53','system','INFO','Alarms Service connected'),(127,'2025-03-05 16:00:57','system','INFO','Alarms Service connected'),(128,'2025-03-05 16:02:02','system','INFO','Alarms Service connected'),(129,'2025-03-05 16:03:05','system','INFO','Alarms Service connected'),(130,'2025-03-05 16:04:10','system','INFO','Alarms Service connected'),(131,'2025-03-05 16:05:35','system','INFO','Alarms Service connected'),(132,'2025-03-05 16:06:15','system','INFO','Alarms Service connected'),(133,'2025-03-05 16:14:06','system','INFO','Alarms Service connected');
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

-- Dump completed on 2025-03-07 15:57:18
