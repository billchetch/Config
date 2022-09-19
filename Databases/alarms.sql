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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
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
) ENGINE=InnoDB AUTO_INCREMENT=156809 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alarm_log`
--

LOCK TABLES `alarm_log` WRITE;
/*!40000 ALTER TABLE `alarm_log` DISABLE KEYS */;
INSERT INTO `alarm_log` VALUES (156573,1,'2021-07-29 07:13:48','CRITICAL','Alarm hw on @ 2021-07-29 15:13:48',NULL),(156574,1,'2021-07-29 07:13:53','OFF','Alarm hw off @ 2021-07-29 15:13:53',NULL),(156575,1,'2021-07-29 07:13:56','CRITICAL','Alarm hw on @ 2021-07-29 15:13:56',NULL),(156576,1,'2021-07-29 07:13:57','OFF','Alarm hw off @ 2021-07-29 15:13:57',NULL),(156577,1,'2021-07-29 07:14:25','CRITICAL','Alarm hw on @ 2021-07-29 15:14:25',NULL),(156578,1,'2021-07-29 07:14:31','OFF','Alarm hw off @ 2021-07-29 15:14:31',NULL),(156579,1,'2021-07-29 07:14:32','CRITICAL','Alarm hw on @ 2021-07-29 15:14:32',NULL),(156580,1,'2021-07-29 07:14:35','OFF','Alarm hw off @ 2021-07-29 15:14:35',NULL),(156581,1,'2021-07-29 07:15:13','CRITICAL','Alarm hw on @ 2021-07-29 15:15:13',NULL),(156582,1,'2021-07-29 07:15:17','OFF','Alarm hw off @ 2021-07-29 15:15:17',NULL),(156583,1,'2021-07-29 07:16:29','CRITICAL','Alarm hw on @ 2021-07-29 15:16:29',NULL),(156584,1,'2021-07-29 07:16:32','OFF','Alarm hw off @ 2021-07-29 15:16:32',NULL),(156585,1,'2021-07-30 00:51:22','CRITICAL','Alarm hw on @ 2021-07-30 08:51:22',NULL),(156586,1,'2021-07-30 00:51:27','OFF','Alarm hw off @ 2021-07-30 08:51:27',NULL),(156587,1,'2021-07-30 00:51:34','CRITICAL','Alarm hw on @ 2021-07-30 08:51:34',NULL),(156588,1,'2021-07-30 00:51:40','OFF','Alarm hw off @ 2021-07-30 08:51:40',NULL),(156589,1,'2021-07-30 01:16:06','CRITICAL','Alarm hw on @ 2021-07-30 09:16:06',NULL),(156590,2,'2021-07-30 01:16:06','CRITICAL','Alarm gs on @ 2021-07-30 09:16:06',NULL),(156591,2,'2021-07-30 01:16:06','OFF','Alarm gs off @ 2021-07-30 09:16:06',NULL),(156592,1,'2021-07-30 01:16:06','OFF','Alarm hw off @ 2021-07-30 09:16:06',NULL),(156593,1,'2021-07-30 01:16:25','CRITICAL','Alarm hw on @ 2021-07-30 09:16:25',NULL),(156594,1,'2021-07-30 01:16:26','OFF','Alarm hw off @ 2021-07-30 09:16:26',NULL),(156595,1,'2021-07-30 01:16:39','CRITICAL','Alarm hw on @ 2021-07-30 09:16:39',NULL),(156596,1,'2021-07-30 01:16:40','OFF','Alarm hw off @ 2021-07-30 09:16:40',NULL),(156597,1,'2021-07-30 01:16:51','CRITICAL','Alarm hw on @ 2021-07-30 09:16:51',NULL),(156598,1,'2021-07-30 01:16:51','OFF','Alarm hw off @ 2021-07-30 09:16:51',NULL),(156599,1,'2021-07-30 01:16:51','CRITICAL','Alarm hw on @ 2021-07-30 09:16:51',NULL),(156600,1,'2021-07-30 01:16:53','OFF','Alarm hw off @ 2021-07-30 09:16:53',NULL),(156601,1,'2021-07-30 01:16:53','CRITICAL','Alarm hw on @ 2021-07-30 09:16:53',NULL),(156602,1,'2021-07-30 01:16:53','OFF','Alarm hw off @ 2021-07-30 09:16:53',NULL),(156603,1,'2021-07-30 01:16:54','CRITICAL','Alarm hw on @ 2021-07-30 09:16:54',NULL),(156604,1,'2021-07-30 01:16:55','OFF','Alarm hw off @ 2021-07-30 09:16:55',NULL),(156605,1,'2021-07-30 01:16:55','CRITICAL','Alarm hw on @ 2021-07-30 09:16:55',NULL),(156606,1,'2021-07-30 01:16:56','OFF','Alarm hw off @ 2021-07-30 09:16:56',NULL),(156607,1,'2021-07-30 01:16:56','CRITICAL','Alarm hw on @ 2021-07-30 09:16:56',NULL),(156608,2,'2021-07-30 01:16:56','CRITICAL','Alarm gs on @ 2021-07-30 09:16:56',NULL),(156609,2,'2021-07-30 01:16:56','OFF','Alarm gs off @ 2021-07-30 09:16:56',NULL),(156610,1,'2021-07-30 01:16:56','OFF','Alarm hw off @ 2021-07-30 09:16:56',NULL),(156611,1,'2021-07-30 01:16:58','CRITICAL','Alarm hw on @ 2021-07-30 09:16:58',NULL),(156612,1,'2021-07-30 01:16:59','OFF','Alarm hw off @ 2021-07-30 09:16:59',NULL),(156613,1,'2021-07-30 01:16:59','CRITICAL','Alarm hw on @ 2021-07-30 09:16:59',NULL),(156614,1,'2021-07-30 01:17:01','OFF','Alarm hw off @ 2021-07-30 09:17:01',NULL),(156615,1,'2021-07-30 01:17:04','CRITICAL','Alarm hw on @ 2021-07-30 09:17:04',NULL),(156616,1,'2021-07-30 01:17:04','OFF','Alarm hw off @ 2021-07-30 09:17:04',NULL),(156617,1,'2021-07-30 01:17:05','CRITICAL','Alarm hw on @ 2021-07-30 09:17:05',NULL),(156618,1,'2021-07-30 01:17:06','OFF','Alarm hw off @ 2021-07-30 09:17:06',NULL),(156619,1,'2021-07-30 01:17:07','CRITICAL','Alarm hw on @ 2021-07-30 09:17:07',NULL),(156620,1,'2021-07-30 01:17:08','OFF','Alarm hw off @ 2021-07-30 09:17:08',NULL),(156621,1,'2021-07-30 01:17:11','CRITICAL','Alarm hw on @ 2021-07-30 09:17:11',NULL),(156622,1,'2021-07-30 01:17:12','OFF','Alarm hw off @ 2021-07-30 09:17:12',NULL),(156623,2,'2021-07-30 01:17:16','CRITICAL','Alarm gs on @ 2021-07-30 09:17:16',NULL),(156624,1,'2021-07-30 01:17:16','CRITICAL','Alarm hw on @ 2021-07-30 09:17:16',NULL),(156625,2,'2021-07-30 01:17:16','OFF','Alarm gs off @ 2021-07-30 09:17:16',NULL),(156626,1,'2021-07-30 01:17:17','OFF','Alarm hw off @ 2021-07-30 09:17:17',NULL),(156627,1,'2021-07-30 01:17:21','CRITICAL','Alarm hw on @ 2021-07-30 09:17:21',NULL),(156628,1,'2021-07-30 01:17:22','OFF','Alarm hw off @ 2021-07-30 09:17:22',NULL),(156629,1,'2021-07-30 01:17:23','CRITICAL','Alarm hw on @ 2021-07-30 09:17:23',NULL),(156630,1,'2021-07-30 01:17:24','OFF','Alarm hw off @ 2021-07-30 09:17:24',NULL),(156631,1,'2021-07-30 01:17:27','CRITICAL','Alarm hw on @ 2021-07-30 09:17:27',NULL),(156632,1,'2021-07-30 01:17:27','OFF','Alarm hw off @ 2021-07-30 09:17:27',NULL),(156633,1,'2021-07-30 01:17:27','CRITICAL','Alarm hw on @ 2021-07-30 09:17:27',NULL),(156634,1,'2021-07-30 01:17:29','OFF','Alarm hw off @ 2021-07-30 09:17:29',NULL),(156635,1,'2021-07-30 01:17:34','CRITICAL','Alarm hw on @ 2021-07-30 09:17:34',NULL),(156636,1,'2021-07-30 01:17:34','OFF','Alarm hw off @ 2021-07-30 09:17:34',NULL),(156637,1,'2021-07-30 01:17:35','CRITICAL','Alarm hw on @ 2021-07-30 09:17:35',NULL),(156638,1,'2021-07-30 01:17:36','OFF','Alarm hw off @ 2021-07-30 09:17:36',NULL),(156639,1,'2021-07-30 01:17:40','CRITICAL','Alarm hw on @ 2021-07-30 09:17:40',NULL),(156640,1,'2021-07-30 01:17:41','OFF','Alarm hw off @ 2021-07-30 09:17:41',NULL),(156641,1,'2021-07-30 01:17:41','CRITICAL','Alarm hw on @ 2021-07-30 09:17:41',NULL),(156642,1,'2021-07-30 01:17:42','OFF','Alarm hw off @ 2021-07-30 09:17:42',NULL),(156643,1,'2021-07-30 01:17:43','CRITICAL','Alarm hw on @ 2021-07-30 09:17:43',NULL),(156644,1,'2021-07-30 01:17:43','OFF','Alarm hw off @ 2021-07-30 09:17:43',NULL),(156645,1,'2021-07-30 01:17:48','CRITICAL','Alarm hw on @ 2021-07-30 09:17:48',NULL),(156646,1,'2021-07-30 01:17:49','OFF','Alarm hw off @ 2021-07-30 09:17:49',NULL),(156647,1,'2021-07-30 01:17:53','CRITICAL','Alarm hw on @ 2021-07-30 09:17:53',NULL),(156648,1,'2021-07-30 01:17:55','OFF','Alarm hw off @ 2021-07-30 09:17:55',NULL),(156649,1,'2021-07-30 01:18:00','CRITICAL','Alarm hw on @ 2021-07-30 09:18:00',NULL),(156650,1,'2021-07-30 01:18:01','OFF','Alarm hw off @ 2021-07-30 09:18:01',NULL),(156651,1,'2021-07-30 01:18:04','CRITICAL','Alarm hw on @ 2021-07-30 09:18:04',NULL),(156652,1,'2021-07-30 01:18:04','OFF','Alarm hw off @ 2021-07-30 09:18:04',NULL),(156653,1,'2021-07-30 01:18:16','CRITICAL','Alarm hw on @ 2021-07-30 09:18:16',NULL),(156654,1,'2021-07-30 01:18:16','OFF','Alarm hw off @ 2021-07-30 09:18:16',NULL),(156655,1,'2021-07-30 01:18:17','CRITICAL','Alarm hw on @ 2021-07-30 09:18:17',NULL),(156656,1,'2021-07-30 01:18:19','OFF','Alarm hw off @ 2021-07-30 09:18:19',NULL),(156657,1,'2021-07-30 01:18:40','CRITICAL','Alarm hw on @ 2021-07-30 09:18:40',NULL),(156658,1,'2021-07-30 01:18:40','OFF','Alarm hw off @ 2021-07-30 09:18:40',NULL),(156659,1,'2021-07-30 01:18:41','CRITICAL','Alarm hw on @ 2021-07-30 09:18:41',NULL),(156660,1,'2021-07-30 01:18:41','OFF','Alarm hw off @ 2021-07-30 09:18:41',NULL),(156661,1,'2021-07-30 01:18:42','CRITICAL','Alarm hw on @ 2021-07-30 09:18:42',NULL),(156662,1,'2021-07-30 01:18:43','OFF','Alarm hw off @ 2021-07-30 09:18:43',NULL),(156663,1,'2021-07-30 01:18:47','CRITICAL','Alarm hw on @ 2021-07-30 09:18:47',NULL),(156664,1,'2021-07-30 01:18:47','OFF','Alarm hw off @ 2021-07-30 09:18:47',NULL),(156665,1,'2021-07-30 01:18:49','CRITICAL','Alarm hw on @ 2021-07-30 09:18:49',NULL),(156666,1,'2021-07-30 01:18:49','OFF','Alarm hw off @ 2021-07-30 09:18:49',NULL),(156667,1,'2021-07-30 01:18:49','CRITICAL','Alarm hw on @ 2021-07-30 09:18:49',NULL),(156668,1,'2021-07-30 01:18:50','OFF','Alarm hw off @ 2021-07-30 09:18:50',NULL),(156669,1,'2021-07-30 01:18:53','CRITICAL','Alarm hw on @ 2021-07-30 09:18:53',NULL),(156670,1,'2021-07-30 01:18:53','OFF','Alarm hw off @ 2021-07-30 09:18:53',NULL),(156671,1,'2021-07-30 01:18:55','CRITICAL','Alarm hw on @ 2021-07-30 09:18:55',NULL),(156672,1,'2021-07-30 01:18:56','OFF','Alarm hw off @ 2021-07-30 09:18:56',NULL),(156673,1,'2021-07-30 01:18:56','CRITICAL','Alarm hw on @ 2021-07-30 09:18:56',NULL),(156674,1,'2021-07-30 01:18:57','OFF','Alarm hw off @ 2021-07-30 09:18:57',NULL),(156675,1,'2021-07-30 01:19:07','CRITICAL','Alarm hw on @ 2021-07-30 09:19:07',NULL),(156676,1,'2021-07-30 01:19:07','OFF','Alarm hw off @ 2021-07-30 09:19:07',NULL),(156677,1,'2021-07-30 01:19:08','CRITICAL','Alarm hw on @ 2021-07-30 09:19:08',NULL),(156678,1,'2021-07-30 01:19:09','OFF','Alarm hw off @ 2021-07-30 09:19:09',NULL),(156679,1,'2021-07-30 01:19:20','CRITICAL','Alarm hw on @ 2021-07-30 09:19:20',NULL),(156680,1,'2021-07-30 01:19:20','OFF','Alarm hw off @ 2021-07-30 09:19:20',NULL),(156681,1,'2021-07-30 01:19:22','CRITICAL','Alarm hw on @ 2021-07-30 09:19:22',NULL),(156682,1,'2021-07-30 01:19:23','OFF','Alarm hw off @ 2021-07-30 09:19:23',NULL),(156683,1,'2021-07-30 01:19:30','CRITICAL','Alarm hw on @ 2021-07-30 09:19:30',NULL),(156684,1,'2021-07-30 01:19:31','OFF','Alarm hw off @ 2021-07-30 09:19:31',NULL),(156685,1,'2021-07-30 01:19:40','CRITICAL','Alarm hw on @ 2021-07-30 09:19:40',NULL),(156686,1,'2021-07-30 01:19:42','OFF','Alarm hw off @ 2021-07-30 09:19:42',NULL),(156687,1,'2021-07-30 01:19:43','CRITICAL','Alarm hw on @ 2021-07-30 09:19:43',NULL),(156688,1,'2021-07-30 01:19:43','OFF','Alarm hw off @ 2021-07-30 09:19:43',NULL),(156689,1,'2021-07-30 01:19:44','CRITICAL','Alarm hw on @ 2021-07-30 09:19:44',NULL),(156690,1,'2021-07-30 01:19:45','OFF','Alarm hw off @ 2021-07-30 09:19:45',NULL),(156691,1,'2021-07-30 01:19:45','CRITICAL','Alarm hw on @ 2021-07-30 09:19:45',NULL),(156692,1,'2021-07-30 01:19:46','OFF','Alarm hw off @ 2021-07-30 09:19:46',NULL),(156693,1,'2021-07-30 01:19:47','CRITICAL','Alarm hw on @ 2021-07-30 09:19:47',NULL),(156694,1,'2021-07-30 01:19:48','OFF','Alarm hw off @ 2021-07-30 09:19:48',NULL),(156695,1,'2021-07-30 01:19:48','CRITICAL','Alarm hw on @ 2021-07-30 09:19:48',NULL),(156696,1,'2021-07-30 01:19:49','OFF','Alarm hw off @ 2021-07-30 09:19:49',NULL),(156697,1,'2021-07-30 01:19:50','CRITICAL','Alarm hw on @ 2021-07-30 09:19:50',NULL),(156698,1,'2021-07-30 01:19:51','OFF','Alarm hw off @ 2021-07-30 09:19:51',NULL),(156699,1,'2021-07-30 01:19:51','CRITICAL','Alarm hw on @ 2021-07-30 09:19:51',NULL),(156700,1,'2021-07-30 01:19:53','OFF','Alarm hw off @ 2021-07-30 09:19:53',NULL),(156701,1,'2021-07-30 01:20:04','CRITICAL','Alarm hw on @ 2021-07-30 09:20:04',NULL),(156702,1,'2021-07-30 01:20:04','OFF','Alarm hw off @ 2021-07-30 09:20:04',NULL),(156703,1,'2021-07-30 01:20:05','CRITICAL','Alarm hw on @ 2021-07-30 09:20:05',NULL),(156704,1,'2021-07-30 01:20:08','OFF','Alarm hw off @ 2021-07-30 09:20:08',NULL),(156705,1,'2021-07-30 01:20:09','CRITICAL','Alarm hw on @ 2021-07-30 09:20:09',NULL),(156706,1,'2021-07-30 01:20:10','OFF','Alarm hw off @ 2021-07-30 09:20:10',NULL),(156707,1,'2021-07-30 01:20:12','CRITICAL','Alarm hw on @ 2021-07-30 09:20:12',NULL),(156708,1,'2021-07-30 01:20:12','OFF','Alarm hw off @ 2021-07-30 09:20:12',NULL),(156709,1,'2021-07-30 01:20:20','CRITICAL','Alarm hw on @ 2021-07-30 09:20:20',NULL),(156710,1,'2021-07-30 01:20:23','OFF','Alarm hw off @ 2021-07-30 09:20:23',NULL),(156711,1,'2021-07-30 01:20:27','CRITICAL','Alarm hw on @ 2021-07-30 09:20:27',NULL),(156712,1,'2021-07-30 01:20:27','OFF','Alarm hw off @ 2021-07-30 09:20:27',NULL),(156713,1,'2021-07-30 01:20:28','CRITICAL','Alarm hw on @ 2021-07-30 09:20:28',NULL),(156714,1,'2021-07-30 01:20:28','OFF','Alarm hw off @ 2021-07-30 09:20:28',NULL),(156715,1,'2021-07-30 01:20:36','CRITICAL','Alarm hw on @ 2021-07-30 09:20:36',NULL),(156716,1,'2021-07-30 01:20:36','OFF','Alarm hw off @ 2021-07-30 09:20:36',NULL),(156717,1,'2021-07-30 01:20:36','CRITICAL','Alarm hw on @ 2021-07-30 09:20:36',NULL),(156718,1,'2021-07-30 01:20:37','OFF','Alarm hw off @ 2021-07-30 09:20:37',NULL),(156719,1,'2021-07-30 01:20:37','CRITICAL','Alarm hw on @ 2021-07-30 09:20:37',NULL),(156720,1,'2021-07-30 01:20:38','OFF','Alarm hw off @ 2021-07-30 09:20:38',NULL),(156721,1,'2021-07-30 01:20:38','CRITICAL','Alarm hw on @ 2021-07-30 09:20:38',NULL),(156722,1,'2021-07-30 01:20:39','OFF','Alarm hw off @ 2021-07-30 09:20:39',NULL),(156723,1,'2021-07-30 01:20:40','CRITICAL','Alarm hw on @ 2021-07-30 09:20:40',NULL),(156724,1,'2021-07-30 01:20:40','OFF','Alarm hw off @ 2021-07-30 09:20:40',NULL),(156725,1,'2021-07-30 01:20:45','CRITICAL','Alarm hw on @ 2021-07-30 09:20:45',NULL),(156726,1,'2021-07-30 01:20:46','OFF','Alarm hw off @ 2021-07-30 09:20:46',NULL),(156727,1,'2021-07-30 01:20:47','CRITICAL','Alarm hw on @ 2021-07-30 09:20:47',NULL),(156728,1,'2021-07-30 01:20:47','OFF','Alarm hw off @ 2021-07-30 09:20:47',NULL),(156729,1,'2021-07-30 01:20:48','CRITICAL','Alarm hw on @ 2021-07-30 09:20:48',NULL),(156730,1,'2021-07-30 01:20:49','OFF','Alarm hw off @ 2021-07-30 09:20:49',NULL),(156731,1,'2021-07-30 01:20:51','CRITICAL','Alarm hw on @ 2021-07-30 09:20:51',NULL),(156732,1,'2021-07-30 01:20:52','OFF','Alarm hw off @ 2021-07-30 09:20:52',NULL),(156733,1,'2021-07-30 01:20:53','CRITICAL','Alarm hw on @ 2021-07-30 09:20:53',NULL),(156734,1,'2021-07-30 01:20:53','OFF','Alarm hw off @ 2021-07-30 09:20:53',NULL),(156735,1,'2021-07-30 01:20:54','CRITICAL','Alarm hw on @ 2021-07-30 09:20:54',NULL),(156736,1,'2021-07-30 01:20:55','OFF','Alarm hw off @ 2021-07-30 09:20:55',NULL),(156737,1,'2021-07-30 01:21:10','CRITICAL','Alarm hw on @ 2021-07-30 09:21:10',NULL),(156738,1,'2021-07-30 01:21:12','OFF','Alarm hw off @ 2021-07-30 09:21:12',NULL),(156739,1,'2021-07-30 01:21:13','CRITICAL','Alarm hw on @ 2021-07-30 09:21:13',NULL),(156740,1,'2021-07-30 01:21:13','OFF','Alarm hw off @ 2021-07-30 09:21:13',NULL),(156741,1,'2021-07-30 01:21:14','CRITICAL','Alarm hw on @ 2021-07-30 09:21:14',NULL),(156742,1,'2021-07-30 01:21:14','OFF','Alarm hw off @ 2021-07-30 09:21:14',NULL),(156743,1,'2021-07-30 01:21:15','CRITICAL','Alarm hw on @ 2021-07-30 09:21:15',NULL),(156744,1,'2021-07-30 01:21:15','OFF','Alarm hw off @ 2021-07-30 09:21:15',NULL),(156745,1,'2021-07-30 01:21:17','CRITICAL','Alarm hw on @ 2021-07-30 09:21:17',NULL),(156746,1,'2021-07-30 01:21:17','OFF','Alarm hw off @ 2021-07-30 09:21:17',NULL),(156747,1,'2021-07-30 01:21:17','CRITICAL','Alarm hw on @ 2021-07-30 09:21:17',NULL),(156748,1,'2021-07-30 01:21:17','OFF','Alarm hw off @ 2021-07-30 09:21:17',NULL),(156749,1,'2021-07-30 01:21:29','CRITICAL','Alarm hw on @ 2021-07-30 09:21:29',NULL),(156750,1,'2021-07-30 01:21:29','OFF','Alarm hw off @ 2021-07-30 09:21:29',NULL),(156751,1,'2021-07-30 01:21:30','CRITICAL','Alarm hw on @ 2021-07-30 09:21:30',NULL),(156752,1,'2021-07-30 01:21:30','OFF','Alarm hw off @ 2021-07-30 09:21:30',NULL),(156753,1,'2021-07-30 01:21:32','CRITICAL','Alarm hw on @ 2021-07-30 09:21:32',NULL),(156754,1,'2021-07-30 01:21:33','OFF','Alarm hw off @ 2021-07-30 09:21:33',NULL),(156755,1,'2021-07-30 01:21:35','CRITICAL','Alarm hw on @ 2021-07-30 09:21:35',NULL),(156756,1,'2021-07-30 01:21:35','OFF','Alarm hw off @ 2021-07-30 09:21:35',NULL),(156757,1,'2021-07-30 01:21:37','CRITICAL','Alarm hw on @ 2021-07-30 09:21:37',NULL),(156758,1,'2021-07-30 01:21:37','OFF','Alarm hw off @ 2021-07-30 09:21:37',NULL),(156759,1,'2021-07-30 01:21:37','CRITICAL','Alarm hw on @ 2021-07-30 09:21:37',NULL),(156760,1,'2021-07-30 01:21:39','OFF','Alarm hw off @ 2021-07-30 09:21:39',NULL),(156761,1,'2021-07-30 01:21:39','CRITICAL','Alarm hw on @ 2021-07-30 09:21:39',NULL),(156762,1,'2021-07-30 01:21:40','OFF','Alarm hw off @ 2021-07-30 09:21:40',NULL),(156763,1,'2021-07-30 01:21:42','CRITICAL','Alarm hw on @ 2021-07-30 09:21:42',NULL),(156764,1,'2021-07-30 01:21:42','OFF','Alarm hw off @ 2021-07-30 09:21:42',NULL),(156765,1,'2021-07-30 01:21:45','CRITICAL','Alarm hw on @ 2021-07-30 09:21:45',NULL),(156766,1,'2021-07-30 01:21:45','OFF','Alarm hw off @ 2021-07-30 09:21:45',NULL),(156767,1,'2021-07-30 01:21:46','CRITICAL','Alarm hw on @ 2021-07-30 09:21:46',NULL),(156768,1,'2021-07-30 01:21:47','OFF','Alarm hw off @ 2021-07-30 09:21:47',NULL),(156769,1,'2021-07-30 01:21:55','CRITICAL','Alarm hw on @ 2021-07-30 09:21:55',NULL),(156770,1,'2021-07-30 01:21:55','OFF','Alarm hw off @ 2021-07-30 09:21:55',NULL),(156771,1,'2021-07-30 01:21:56','CRITICAL','Alarm hw on @ 2021-07-30 09:21:56',NULL),(156772,1,'2021-07-30 01:21:57','OFF','Alarm hw off @ 2021-07-30 09:21:57',NULL),(156773,1,'2021-07-31 04:51:37','CRITICAL','Alarm hw on @ 2021-07-31 12:51:37',NULL),(156774,1,'2021-07-31 04:51:38','OFF','Alarm hw off @ 2021-07-31 12:51:38',NULL),(156775,1,'2021-07-31 04:51:46','CRITICAL','Alarm hw on @ 2021-07-31 12:51:46',NULL),(156776,1,'2021-07-31 04:51:54','OFF','Alarm hw off @ 2021-07-31 12:51:54',NULL),(156777,1,'2021-07-31 04:51:59','CRITICAL','Alarm hw on @ 2021-07-31 12:51:59',NULL),(156778,1,'2021-07-31 04:52:04','OFF','Alarm hw off @ 2021-07-31 12:52:04',NULL),(156779,1,'2021-08-03 01:48:26','CRITICAL','Alarm hw on @ 2021-08-03 09:48:26',NULL),(156780,1,'2021-08-03 01:48:35','OFF','Alarm hw off @ 2021-08-03 09:48:35',NULL),(156781,1,'2021-08-03 01:48:35','CRITICAL','Alarm hw on @ 2021-08-03 09:48:35',NULL),(156782,1,'2021-08-03 01:48:58','OFF','Alarm hw off @ 2021-08-03 09:48:58',NULL),(156783,1,'2021-08-03 01:49:10','CRITICAL','Alarm hw on @ 2021-08-03 09:49:10',NULL),(156784,1,'2021-08-03 01:49:17','OFF','Alarm hw off @ 2021-08-03 09:49:17',NULL),(156785,1,'2021-08-03 01:49:22','CRITICAL','Alarm hw on @ 2021-08-03 09:49:22',NULL),(156786,1,'2021-08-03 01:49:23','OFF','Alarm hw off @ 2021-08-03 09:49:23',NULL),(156787,1,'2021-08-03 01:49:23','CRITICAL','Alarm hw on @ 2021-08-03 09:49:23',NULL),(156788,1,'2021-08-03 01:49:24','OFF','Alarm hw off @ 2021-08-03 09:49:24',NULL),(156789,1,'2021-08-03 01:49:30','CRITICAL','Alarm hw on @ 2021-08-03 09:49:30',NULL),(156790,1,'2021-08-03 01:49:31','OFF','Alarm hw off @ 2021-08-03 09:49:31',NULL),(156791,1,'2021-08-03 01:50:43','CRITICAL','Alarm hw on @ 2021-08-03 09:50:43',NULL),(156792,1,'2021-08-03 01:50:44','OFF','Alarm hw off @ 2021-08-03 09:50:44',NULL),(156793,1,'2021-08-03 01:50:48','CRITICAL','Alarm hw on @ 2021-08-03 09:50:48',NULL),(156794,1,'2021-08-03 01:50:49','OFF','Alarm hw off @ 2021-08-03 09:50:49',NULL),(156795,1,'2021-08-03 01:51:09','CRITICAL','Alarm hw on @ 2021-08-03 09:51:09',NULL),(156796,1,'2021-08-03 01:51:10','OFF','Alarm hw off @ 2021-08-03 09:51:10',NULL),(156797,1,'2021-08-03 01:51:12','CRITICAL','Alarm hw on @ 2021-08-03 09:51:12',NULL),(156798,1,'2021-08-03 01:51:12','OFF','Alarm hw off @ 2021-08-03 09:51:12',NULL),(156799,3,'2021-08-18 15:18:45','CRITICAL','Alarm iv on @ 2021-08-18 23:18:45',NULL),(156800,3,'2021-08-18 15:33:43','OFF','Alarm iv off @ 2021-08-18 23:33:43',NULL),(156801,3,'2021-08-18 15:38:40','CRITICAL','Alarm iv on @ 2021-08-18 23:38:39',NULL),(156802,3,'2021-08-18 15:38:44','OFF','Alarm iv off @ 2021-08-18 23:38:44',NULL),(156803,2,'2021-08-21 04:39:14','CRITICAL','Alarm gs on @ 2021-08-21 12:39:14',NULL),(156804,2,'2021-08-21 04:40:08','OFF','Alarm gs off @ 2021-08-21 12:40:08',NULL),(156805,3,'2021-10-06 19:05:54','CRITICAL','Alarm iv on @ 2021-10-07 03:05:54',NULL),(156806,3,'2021-10-06 19:17:12','OFF','Alarm iv off @ 2021-10-07 03:17:11',NULL),(156807,3,'2021-10-06 21:37:07','CRITICAL','Alarm iv on @ 2021-10-07 05:37:07',NULL),(156808,3,'2021-10-06 21:37:08','OFF','Alarm iv off @ 2021-10-07 05:37:08',NULL);
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
INSERT INTO `alarms` VALUES (1,'hw','High Water',NULL,11,250,1),(2,'gs','Gensets',NULL,10,250,1),(3,'iv','Inverter',NULL,9,250,1),(7,'idk_temp','Induk Temp','BBEngineRoom',NULL,NULL,1),(8,'idk_oil','Induk Oil','BBEngineRoom',NULL,NULL,1),(9,'idk_rpm','Induk RPM','BBEngineRoom',NULL,NULL,1),(10,'bnt_temp','Bantu Temp','BBEngineRoom',NULL,NULL,1),(11,'bnt_oil','Bantu Oil','BBEngineRoom',NULL,NULL,0),(12,'bnt_rpm','Bantu RPM','BBEngineRoom',NULL,NULL,1),(13,'gs1_temp','GS1 Temp','BBEngineRoom',NULL,NULL,1),(14,'gs1_oil','GS1 Oil','BBEngineRoom',NULL,NULL,0),(15,'gs1_rpm','GS1 RPM','BBEngineRoom',NULL,NULL,1),(16,'gs2_temp','GS2 Temp','BBEngineRoom',NULL,NULL,1),(17,'gs2_oil','GS2 Oil','BBEngineRoom',NULL,NULL,0),(18,'gs2_rpm','GS2 RPM','BBEngineRoom',NULL,NULL,1),(19,'pmp_clp','Pompa Celup','BBEngineRoom',NULL,NULL,1),(20,'pmp_sol','Pompa Solar','BBEngineRoom',NULL,NULL,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_info`
--

LOCK TABLES `sys_info` WRITE;
/*!40000 ALTER TABLE `sys_info` DISABLE KEYS */;
INSERT INTO `sys_info` VALUES (1,'COM3:pilot','{\"Enabled\":true}','2022-09-15 07:58:11'),(2,'COM3:buzzer','{\"Enabled\":true}','2022-09-15 07:58:11'),(3,'COM3:gs','{\"Enabled\":true}','2022-09-15 07:58:11'),(4,'COM3:hw','{\"Enabled\":true}','2022-09-15 07:58:11'),(5,'COM3:iv','{\"Enabled\":true}','2022-09-15 07:58:11');
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

-- Dump completed on 2022-09-15 22:38:10
