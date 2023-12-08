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
) ENGINE=InnoDB AUTO_INCREMENT=15792 DEFAULT CHARSET=utf8mb3;
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
  `alarm_state` enum('LOWERED','DISCONNECTED','DISABLED','CRITICAL','SEVERE','MODERATE','MINOR') NOT NULL,
  `alarm_message` varchar(128) DEFAULT NULL,
  `alarm_code` int NOT NULL DEFAULT '0',
  `comments` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_alarm_idx` (`alarm_id`),
  CONSTRAINT `fk_alarm` FOREIGN KEY (`alarm_id`) REFERENCES `alarms` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=158565 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alarm_log`
--

LOCK TABLES `alarm_log` WRITE;
/*!40000 ALTER TABLE `alarm_log` DISABLE KEYS */;
INSERT INTO `alarm_log` VALUES (158405,11,'2023-12-05 16:47:30','LOWERED','Lowering alarm as client BBEngineRoom is offline',1,''),(158406,12,'2023-12-05 16:47:30','LOWERED','Lowering alarm as client BBEngineRoom is offline',1,''),(158407,10,'2023-12-05 16:47:30','LOWERED','Lowering alarm as client BBEngineRoom is offline',1,''),(158408,13,'2023-12-05 16:47:30','LOWERED','Lowering alarm as client BBEngineRoom is offline',1,''),(158409,17,'2023-12-05 16:47:30','LOWERED','Lowering alarm as client BBEngineRoom is offline',1,''),(158410,18,'2023-12-05 16:47:30','LOWERED','Lowering alarm as client BBEngineRoom is offline',1,''),(158411,16,'2023-12-05 16:47:30','LOWERED','Lowering alarm as client BBEngineRoom is offline',1,''),(158412,8,'2023-12-05 16:47:30','LOWERED','Lowering alarm as client BBEngineRoom is offline',1,''),(158413,9,'2023-12-05 16:47:30','LOWERED','Lowering alarm as client BBEngineRoom is offline',1,''),(158414,7,'2023-12-05 16:47:30','LOWERED','Lowering alarm as client BBEngineRoom is offline',1,''),(158415,19,'2023-12-05 16:47:30','LOWERED','Lowering alarm as client BBEngineRoom is offline',1,''),(158416,20,'2023-12-05 16:47:30','LOWERED','Lowering alarm as client BBEngineRoom is offline',1,''),(158417,11,'2023-12-05 17:01:06','DISCONNECTED','Lowering alarm as client BBEngineRoom is offline',1,''),(158418,12,'2023-12-05 17:01:06','DISCONNECTED','Lowering alarm as client BBEngineRoom is offline',1,''),(158419,10,'2023-12-05 17:01:07','DISCONNECTED','Lowering alarm as client BBEngineRoom is offline',1,''),(158420,13,'2023-12-05 17:01:07','DISCONNECTED','Lowering alarm as client BBEngineRoom is offline',1,''),(158421,17,'2023-12-05 17:01:07','DISCONNECTED','Lowering alarm as client BBEngineRoom is offline',1,''),(158422,18,'2023-12-05 17:01:07','DISCONNECTED','Lowering alarm as client BBEngineRoom is offline',1,''),(158423,16,'2023-12-05 17:01:07','DISCONNECTED','Lowering alarm as client BBEngineRoom is offline',1,''),(158424,8,'2023-12-05 17:01:07','DISCONNECTED','Lowering alarm as client BBEngineRoom is offline',1,''),(158425,9,'2023-12-05 17:01:07','DISCONNECTED','Lowering alarm as client BBEngineRoom is offline',1,''),(158426,7,'2023-12-05 17:01:07','DISCONNECTED','Lowering alarm as client BBEngineRoom is offline',1,''),(158427,19,'2023-12-05 17:01:07','DISCONNECTED','Lowering alarm as client BBEngineRoom is offline',1,''),(158428,20,'2023-12-05 17:01:07','DISCONNECTED','Lowering alarm as client BBEngineRoom is offline',1,''),(158429,2,'2023-12-05 17:35:42','LOWERED',NULL,2,''),(158430,1,'2023-12-05 17:35:42','LOWERED',NULL,2,''),(158431,3,'2023-12-05 17:35:42','LOWERED',NULL,2,''),(158432,11,'2023-12-05 17:36:10','DISCONNECTED','Lowering alarm as client BBEngineRoom is offline',1,''),(158433,12,'2023-12-05 17:36:10','DISCONNECTED','Lowering alarm as client BBEngineRoom is offline',1,''),(158434,10,'2023-12-05 17:36:10','DISCONNECTED','Lowering alarm as client BBEngineRoom is offline',1,''),(158435,13,'2023-12-05 17:36:10','DISCONNECTED','Lowering alarm as client BBEngineRoom is offline',1,''),(158436,17,'2023-12-05 17:36:10','DISCONNECTED','Lowering alarm as client BBEngineRoom is offline',1,''),(158437,18,'2023-12-05 17:36:10','DISCONNECTED','Lowering alarm as client BBEngineRoom is offline',1,''),(158438,16,'2023-12-05 17:36:10','DISCONNECTED','Lowering alarm as client BBEngineRoom is offline',1,''),(158439,8,'2023-12-05 17:36:10','DISCONNECTED','Lowering alarm as client BBEngineRoom is offline',1,''),(158440,9,'2023-12-05 17:36:10','DISCONNECTED','Lowering alarm as client BBEngineRoom is offline',1,''),(158441,7,'2023-12-05 17:36:10','DISCONNECTED','Lowering alarm as client BBEngineRoom is offline',1,''),(158442,19,'2023-12-05 17:36:10','DISCONNECTED','Lowering alarm as client BBEngineRoom is offline',1,''),(158443,20,'2023-12-05 17:36:10','DISCONNECTED','Lowering alarm as client BBEngineRoom is offline',1,''),(158444,10,'2023-12-05 17:38:01','LOWERED','End testing',0,''),(158445,10,'2023-12-05 17:38:10','DISCONNECTED','Lowering alarm as client BBEngineRoom is offline',1,''),(158446,10,'2023-12-05 17:38:36','LOWERED','End testing',0,''),(158447,10,'2023-12-05 17:38:40','DISCONNECTED','Lowering alarm as client BBEngineRoom is offline',1,''),(158448,2,'2023-12-06 15:12:29','LOWERED','Connecting gs',2,''),(158449,1,'2023-12-06 15:12:29','LOWERED','Connecting hw',2,''),(158450,3,'2023-12-06 15:12:29','LOWERED','Connecting iv',2,''),(158451,11,'2023-12-06 15:12:57','DISCONNECTED','Disconnecting bnt-oil',1,''),(158452,12,'2023-12-06 15:12:57','DISCONNECTED','Disconnecting bnt-rpm',1,''),(158453,10,'2023-12-06 15:12:57','DISCONNECTED','Disconnecting bnt-temp',1,''),(158454,13,'2023-12-06 15:12:57','DISCONNECTED','Disconnecting gs1-temp',1,''),(158455,17,'2023-12-06 15:12:57','DISCONNECTED','Disconnecting gs2-oil',1,''),(158456,18,'2023-12-06 15:12:57','DISCONNECTED','Disconnecting gs2-rpm',1,''),(158457,16,'2023-12-06 15:12:57','DISCONNECTED','Disconnecting gs2-temp',1,''),(158458,8,'2023-12-06 15:12:57','DISCONNECTED','Disconnecting idk-oil',1,''),(158459,9,'2023-12-06 15:12:57','DISCONNECTED','Disconnecting idk-rpm',1,''),(158460,7,'2023-12-06 15:12:57','DISCONNECTED','Disconnecting idk-temp',1,''),(158461,19,'2023-12-06 15:12:57','DISCONNECTED','Disconnecting pmp-clp',1,''),(158462,20,'2023-12-06 15:12:57','DISCONNECTED','Disconnecting pmp-sol',1,''),(158463,2,'2023-12-06 16:23:45','LOWERED','Connecting gs',2,''),(158464,1,'2023-12-06 16:23:45','LOWERED','Connecting hw',2,''),(158465,3,'2023-12-06 16:23:45','LOWERED','Connecting iv',2,''),(158466,9,'2023-12-06 16:24:14','LOWERED','Engine is running acceptable RPM  @ 0 RPM',0,''),(158467,12,'2023-12-06 16:24:14','LOWERED','Engine is running acceptable RPM  @ 0 RPM',0,''),(158468,18,'2023-12-06 16:24:24','LOWERED','Engine is running acceptable RPM  @ 0 RPM',0,''),(158469,19,'2023-12-06 16:24:24','LOWERED','Connecting pmp-clp',2,''),(158470,20,'2023-12-06 16:24:24','LOWERED','Connecting pmp-sol',2,''),(158471,9,'2023-12-06 16:24:24','LOWERED','Connecting idk-rpm',2,''),(158472,8,'2023-12-06 16:24:24','LOWERED','Connecting idk-oil',2,''),(158473,7,'2023-12-06 16:24:24','LOWERED','Connecting idk-temp',2,''),(158474,12,'2023-12-06 16:24:24','LOWERED','Connecting bnt-rpm',2,''),(158475,11,'2023-12-06 16:24:24','LOWERED','Connecting bnt-oil',2,''),(158476,10,'2023-12-06 16:24:24','LOWERED','Connecting bnt-temp',2,''),(158477,13,'2023-12-06 16:24:24','LOWERED','Connecting gs1-temp',2,''),(158478,18,'2023-12-06 16:24:24','LOWERED','Connecting gs2-rpm',2,''),(158479,17,'2023-12-06 16:24:24','LOWERED','Connecting gs2-oil',2,''),(158480,16,'2023-12-06 16:24:24','LOWERED','Connecting gs2-temp',2,''),(158481,18,'2023-12-06 16:24:26','LOWERED','Engine is running acceptable RPM  @ 0 RPM',0,''),(158482,9,'2023-12-06 16:24:26','LOWERED','Engine is running acceptable RPM  @ 0 RPM',0,''),(158483,12,'2023-12-06 16:24:26','LOWERED','Engine is running acceptable RPM  @ 0 RPM',0,''),(158484,11,'2023-12-06 16:24:43','DISCONNECTED','Disconnecting bnt-oil',1,''),(158485,12,'2023-12-06 16:24:43','DISCONNECTED','Disconnecting bnt-rpm',1,''),(158486,10,'2023-12-06 16:24:43','DISCONNECTED','Disconnecting bnt-temp',1,''),(158487,13,'2023-12-06 16:24:43','DISCONNECTED','Disconnecting gs1-temp',1,''),(158488,17,'2023-12-06 16:24:43','DISCONNECTED','Disconnecting gs2-oil',1,''),(158489,18,'2023-12-06 16:24:44','DISCONNECTED','Disconnecting gs2-rpm',1,''),(158490,16,'2023-12-06 16:24:44','DISCONNECTED','Disconnecting gs2-temp',1,''),(158491,8,'2023-12-06 16:24:44','DISCONNECTED','Disconnecting idk-oil',1,''),(158492,9,'2023-12-06 16:24:44','DISCONNECTED','Disconnecting idk-rpm',1,''),(158493,7,'2023-12-06 16:24:44','DISCONNECTED','Disconnecting idk-temp',1,''),(158494,19,'2023-12-06 16:24:44','DISCONNECTED','Disconnecting pmp-clp',1,''),(158495,20,'2023-12-06 16:24:44','DISCONNECTED','Disconnecting pmp-sol',1,''),(158496,2,'2023-12-06 17:18:07','LOWERED','Connecting gs',2,''),(158497,1,'2023-12-06 17:18:08','LOWERED','Connecting hw',2,''),(158498,3,'2023-12-06 17:18:08','LOWERED','Connecting iv',2,''),(158499,11,'2023-12-06 17:18:29','DISCONNECTED','Disconnecting bnt-oil',1,''),(158500,12,'2023-12-06 17:18:29','DISCONNECTED','Disconnecting bnt-rpm',1,''),(158501,10,'2023-12-06 17:18:29','DISCONNECTED','Disconnecting bnt-temp',1,''),(158502,13,'2023-12-06 17:18:29','DISCONNECTED','Disconnecting gs1-temp',1,''),(158503,17,'2023-12-06 17:18:29','DISCONNECTED','Disconnecting gs2-oil',1,''),(158504,18,'2023-12-06 17:18:29','DISCONNECTED','Disconnecting gs2-rpm',1,''),(158505,16,'2023-12-06 17:18:29','DISCONNECTED','Disconnecting gs2-temp',1,''),(158506,8,'2023-12-06 17:18:29','DISCONNECTED','Disconnecting idk-oil',1,''),(158507,9,'2023-12-06 17:18:29','DISCONNECTED','Disconnecting idk-rpm',1,''),(158508,7,'2023-12-06 17:18:29','DISCONNECTED','Disconnecting idk-temp',1,''),(158509,19,'2023-12-06 17:18:29','DISCONNECTED','Disconnecting pmp-clp',1,''),(158510,20,'2023-12-06 17:18:29','DISCONNECTED','Disconnecting pmp-sol',1,''),(158511,19,'2023-12-06 17:18:59','DISCONNECTED','n/a',0,''),(158512,20,'2023-12-06 17:18:59','DISCONNECTED','n/a',0,''),(158513,9,'2023-12-06 17:18:59','DISCONNECTED','n/a',0,''),(158514,8,'2023-12-06 17:18:59','DISCONNECTED','n/a',0,''),(158515,7,'2023-12-06 17:18:59','DISCONNECTED','n/a',0,''),(158516,12,'2023-12-06 17:18:59','DISCONNECTED','n/a',0,''),(158517,11,'2023-12-06 17:18:59','DISCONNECTED','n/a',0,''),(158518,10,'2023-12-06 17:18:59','DISCONNECTED','n/a',0,''),(158519,13,'2023-12-06 17:18:59','DISCONNECTED','n/a',0,''),(158520,18,'2023-12-06 17:18:59','DISCONNECTED','n/a',0,''),(158521,17,'2023-12-06 17:18:59','DISCONNECTED','n/a',0,''),(158522,16,'2023-12-06 17:18:59','DISCONNECTED','n/a',0,''),(158523,9,'2023-12-06 17:19:02','LOWERED','Engine is running acceptable RPM  @ 0 RPM',0,''),(158524,12,'2023-12-06 17:19:02','LOWERED','Engine is running acceptable RPM  @ 0 RPM',0,''),(158525,18,'2023-12-06 17:19:03','LOWERED','Engine is running acceptable RPM  @ 0 RPM',0,''),(158526,19,'2023-12-06 17:19:03','LOWERED','Connecting pmp-clp',2,''),(158527,20,'2023-12-06 17:19:03','LOWERED','Connecting pmp-sol',2,''),(158528,9,'2023-12-06 17:19:03','LOWERED','Connecting idk-rpm',2,''),(158529,8,'2023-12-06 17:19:03','LOWERED','Connecting idk-oil',2,''),(158530,7,'2023-12-06 17:19:03','LOWERED','Connecting idk-temp',2,''),(158531,12,'2023-12-06 17:19:03','LOWERED','Connecting bnt-rpm',2,''),(158532,11,'2023-12-06 17:19:03','LOWERED','Connecting bnt-oil',2,''),(158533,10,'2023-12-06 17:19:03','LOWERED','Connecting bnt-temp',2,''),(158534,13,'2023-12-06 17:19:03','LOWERED','Connecting gs1-temp',2,''),(158535,18,'2023-12-06 17:19:03','LOWERED','Connecting gs2-rpm',2,''),(158536,17,'2023-12-06 17:19:03','LOWERED','Connecting gs2-oil',2,''),(158537,16,'2023-12-06 17:19:03','LOWERED','Connecting gs2-temp',2,''),(158538,9,'2023-12-06 17:19:04','LOWERED','Engine is running acceptable RPM  @ 0 RPM',0,''),(158539,12,'2023-12-06 17:19:04','LOWERED','Engine is running acceptable RPM  @ 0 RPM',0,''),(158540,18,'2023-12-06 17:19:05','LOWERED','Engine is running acceptable RPM  @ 0 RPM',0,''),(158541,18,'2023-12-06 17:25:43','DISABLED',NULL,0,''),(158542,18,'2023-12-06 17:25:48','DISCONNECTED',NULL,0,''),(158543,18,'2023-12-06 17:25:49','LOWERED','Engine is running acceptable RPM  @ 0 RPM',0,''),(158544,13,'2023-12-06 17:26:02','DISABLED',NULL,0,''),(158545,15,'2023-12-06 17:26:05','DISCONNECTED',NULL,0,''),(158546,15,'2023-12-06 17:26:06','LOWERED','Engine is running acceptable RPM  @ 0 RPM',0,''),(158547,13,'2023-12-06 17:26:14','DISCONNECTED',NULL,0,''),(158548,13,'2023-12-06 17:26:14','LOWERED','Connecting gs1-temp',2,''),(158549,14,'2023-12-06 17:26:18','DISCONNECTED',NULL,0,''),(158550,14,'2023-12-06 17:26:18','LOWERED','Connecting gs1-oil',2,''),(158551,7,'2023-12-06 17:26:47','DISABLED',NULL,0,''),(158552,11,'2023-12-06 17:27:08','DISCONNECTED','Disconnecting bnt-oil',1,''),(158553,12,'2023-12-06 17:27:08','DISCONNECTED','Disconnecting bnt-rpm',1,''),(158554,10,'2023-12-06 17:27:08','DISCONNECTED','Disconnecting bnt-temp',1,''),(158555,14,'2023-12-06 17:27:08','DISCONNECTED','Disconnecting gs1-oil',1,''),(158556,15,'2023-12-06 17:27:08','DISCONNECTED','Disconnecting gs1-rpm',1,''),(158557,13,'2023-12-06 17:27:08','DISCONNECTED','Disconnecting gs1-temp',1,''),(158558,17,'2023-12-06 17:27:08','DISCONNECTED','Disconnecting gs2-oil',1,''),(158559,18,'2023-12-06 17:27:08','DISCONNECTED','Disconnecting gs2-rpm',1,''),(158560,16,'2023-12-06 17:27:08','DISCONNECTED','Disconnecting gs2-temp',1,''),(158561,8,'2023-12-06 17:27:08','DISCONNECTED','Disconnecting idk-oil',1,''),(158562,9,'2023-12-06 17:27:08','DISCONNECTED','Disconnecting idk-rpm',1,''),(158563,19,'2023-12-06 17:27:08','DISCONNECTED','Disconnecting pmp-clp',1,''),(158564,20,'2023-12-06 17:27:08','DISCONNECTED','Disconnecting pmp-sol',1,'');
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
INSERT INTO `alarms` VALUES (1,'hw','High Water',NULL,11,250,1,0,1),(2,'gs','Gensets',NULL,10,250,1,0,1),(3,'iv','Inverter',NULL,9,250,1,0,1),(7,'idk-temp','Induk Temp','BBEngineRoom',NULL,NULL,1,1,0),(8,'idk-oil','Induk Oil','BBEngineRoom',NULL,NULL,1,1,1),(9,'idk-rpm','Induk RPM','BBEngineRoom',NULL,NULL,1,1,1),(10,'bnt-temp','Bantu Temp','BBEngineRoom',NULL,NULL,1,1,1),(11,'bnt-oil','Bantu Oil','BBEngineRoom',NULL,NULL,1,1,1),(12,'bnt-rpm','Bantu RPM','BBEngineRoom',NULL,NULL,1,1,1),(13,'gs1-temp','GS1 Temp','BBEngineRoom',NULL,NULL,1,1,1),(14,'gs1-oil','GS1 Oil','BBEngineRoom',NULL,NULL,1,1,1),(15,'gs1-rpm','GS1 RPM','BBEngineRoom',NULL,NULL,1,1,1),(16,'gs2-temp','GS2 Temp','BBEngineRoom',NULL,NULL,1,1,1),(17,'gs2-oil','GS2 Oil','BBEngineRoom',NULL,NULL,1,1,1),(18,'gs2-rpm','GS2 RPM','BBEngineRoom',NULL,NULL,1,1,1),(19,'pmp-clp','Pompa Celup','BBEngineRoom',NULL,NULL,1,1,1),(20,'pmp-sol','Pompa Solar','BBEngineRoom',NULL,NULL,1,1,1);
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

-- Dump completed on 2023-12-08  9:00:58
