CREATE DATABASE  IF NOT EXISTS `alarms` /*!40100 DEFAULT CHARACTER SET utf8 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `alarms`;
-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: alarms
-- ------------------------------------------------------
-- Server version	8.0.27

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
  `event_source` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `event_name` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `event_data` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `event_info` text CHARACTER SET utf8 COLLATE utf8_general_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15773 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adm_event_log`
--

LOCK TABLES `adm_event_log` WRITE;
/*!40000 ALTER TABLE `adm_event_log` DISABLE KEYS */;
INSERT INTO `adm_event_log` VALUES (15757,'2023-08-01 03:08:02','','ADMs Ready',NULL,'All 1 adms are ready to use'),(15758,'2023-08-01 03:09:17','','ADMs Ready',NULL,'All 1 adms are ready to use'),(15759,'2023-08-01 03:25:37','','ADMs Ready',NULL,'All 1 adms are ready to use'),(15760,'2023-08-01 04:08:04','','ADMs Ready',NULL,'All 1 adms are ready to use'),(15761,'2023-08-01 04:14:53','','ADMs Ready',NULL,'All 1 adms are ready to use'),(15762,'2023-08-01 05:42:14','','ADMs Ready',NULL,'All 1 adms are ready to use'),(15763,'2023-08-01 05:44:04','','ADMs Ready',NULL,'All 1 adms are ready to use'),(15764,'2023-08-01 05:46:20','','ADMs Ready',NULL,'All 1 adms are ready to use'),(15765,'2023-08-01 05:48:47','','ADMs Ready',NULL,'All 1 adms are ready to use'),(15766,'2023-08-01 05:51:58','','ADMs Ready',NULL,'All 1 adms are ready to use'),(15767,'2023-08-02 11:22:13','','ADMs Ready',NULL,'All 1 adms are ready to use'),(15768,'2023-08-02 11:27:37','','ADMs Ready',NULL,'All 1 adms are ready to use'),(15769,'2023-08-04 11:30:06','','ADMs Ready',NULL,'All 1 adms are ready to use'),(15770,'2023-08-04 11:48:23','','ADMs Ready',NULL,'All 1 adms are ready to use'),(15771,'2023-08-05 01:56:01','','ADMs Ready',NULL,'All 1 adms are ready to use'),(15772,'2023-08-05 01:57:36','','ADMs Ready',NULL,'All 1 adms are ready to use');
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
  `state_source` varchar(127) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `state_name` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `state_description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `state` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
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
) ENGINE=InnoDB AUTO_INCREMENT=157524 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alarm_log`
--

LOCK TABLES `alarm_log` WRITE;
/*!40000 ALTER TABLE `alarm_log` DISABLE KEYS */;
INSERT INTO `alarm_log` VALUES (157315,14,'2023-08-01 06:11:30','MODERATE','kok sensor fautlnya',''),(157316,14,'2023-08-01 06:13:08','OFF','balik ke normal dong',''),(157317,15,'2023-08-01 06:13:08','SEVERE','Engine crayfish:gs1 is running too fast @ 3249 RPM',''),(157318,15,'2023-08-01 06:13:12','OFF','Engine crayfish:gs1 is running acceptable RPM  @ 0 RPM',''),(157319,15,'2023-08-01 06:13:14','SEVERE','Engine crayfish:gs1 is running too fast @ 3059 RPM',''),(157320,15,'2023-08-01 06:13:18','MODERATE','Engine crayfish:gs1 is running fast @ 2178 RPM',''),(157321,14,'2023-08-01 06:13:20','CRITICAL','Parah ini',''),(157322,15,'2023-08-01 06:13:20','OFF','Engine crayfish:gs1 is running acceptable RPM  @ 0 RPM',''),(157323,14,'2023-08-01 06:13:26','OFF','balik ke normal dong',''),(157324,15,'2023-08-01 06:13:41','SEVERE','Engine crayfish:gs1 is running too fast @ 3308 RPM',''),(157325,15,'2023-08-01 06:13:42','OFF','Engine crayfish:gs1 is running acceptable RPM  @ 0 RPM',''),(157326,15,'2023-08-01 06:13:45','SEVERE','Engine crayfish:gs1 is running too fast @ 3492 RPM',''),(157327,15,'2023-08-01 06:13:49','OFF','Engine crayfish:gs1 is running acceptable RPM  @ 0 RPM',''),(157328,15,'2023-08-01 06:14:15','SEVERE','Engine crayfish:gs1 is running too fast @ 3375 RPM',''),(157329,15,'2023-08-01 06:14:19','OFF','Engine crayfish:gs1 is running acceptable RPM  @ 0 RPM',''),(157330,15,'2023-08-01 06:14:21','SEVERE','Engine crayfish:gs1 is running too fast @ 3532 RPM',''),(157331,15,'2023-08-01 06:14:23','OFF','Engine crayfish:gs1 is running acceptable RPM  @ 0 RPM',''),(157332,15,'2023-08-01 06:14:27','DISABLED',NULL,'Command sent from ACMCAPAlarms-470894f3-e071-38bb-8b24-aacaee2b05bf'),(157333,15,'2023-08-01 06:15:15','OFF','Lowering alarm as client BBAlarms has disconnected',''),(157334,15,'2023-08-01 06:18:38','SEVERE','Engine crayfish:gs1 is running too fast @ 3160 RPM',''),(157335,15,'2023-08-01 06:18:40','OFF','Engine crayfish:gs1 is running acceptable RPM  @ 0 RPM',''),(157336,15,'2023-08-01 06:18:58','SEVERE','Engine crayfish:gs1 is running too fast @ 3378 RPM',''),(157337,15,'2023-08-01 06:19:01','OFF','Engine crayfish:gs1 is running acceptable RPM  @ 0 RPM',''),(157338,15,'2023-08-01 06:19:02','SEVERE','Engine crayfish:gs1 is running too fast @ 3221 RPM',''),(157339,15,'2023-08-01 06:19:07','OFF','Engine crayfish:gs1 is running acceptable RPM  @ 0 RPM',''),(157340,15,'2023-08-01 06:19:29','SEVERE','Engine crayfish:gs1 is running too fast @ 3192 RPM',''),(157341,15,'2023-08-01 06:19:31','OFF','Engine crayfish:gs1 is running acceptable RPM  @ 0 RPM',''),(157342,15,'2023-08-02 01:13:40','MODERATE','Engine crayfish:gs1 is running fast @ 2109 RPM',''),(157343,15,'2023-08-02 01:13:42','SEVERE','Engine crayfish:gs1 is running too fast @ 2768 RPM',''),(157344,13,'2023-08-02 01:16:19','SEVERE','Engine crayfish:gs1 is running hot @ 32',''),(157345,15,'2023-08-02 01:17:24','OFF','Engine crayfish:gs1 is running acceptable RPM  @ 1152 RPM',''),(157346,13,'2023-08-02 01:17:26','OFF','Engine crayfish:gs1 returned to acceptable temperature of 32.5',''),(157347,14,'2023-08-02 01:50:24','MODERATE','kok sensor fautlnya',''),(157348,15,'2023-08-02 01:50:24','MODERATE','Engine crayfish:gs1 is running slow @ 838 RPM',''),(157349,15,'2023-08-02 01:50:26','OFF','Engine crayfish:gs1 is running acceptable RPM  @ 1514 RPM',''),(157350,14,'2023-08-02 01:50:29','OFF','balik ke normal dong',''),(157351,14,'2023-08-02 01:53:24','MODERATE','kok sensor fautlnya',''),(157352,14,'2023-08-02 01:53:31','OFF','balik ke normal dong',''),(157353,14,'2023-08-02 01:55:12','MODERATE','kok sensor fautlnya',''),(157354,14,'2023-08-02 01:55:19','OFF','balik ke normal dong',''),(157355,14,'2023-08-02 02:09:14','MODERATE','kok sensor fautlnya',''),(157356,14,'2023-08-02 02:09:19','OFF','balik ke normal dong',''),(157357,14,'2023-08-02 02:09:29','MODERATE','kok sensor fautlnya',''),(157358,14,'2023-08-02 02:09:43','OFF','balik ke normal dong',''),(157359,14,'2023-08-02 02:16:17','MODERATE','kok sensor fautlnya',''),(157360,14,'2023-08-02 02:16:33','OFF','balik ke normal dong',''),(157361,15,'2023-08-02 05:23:22','MODERATE','Engine crayfish:gs1 is running slow @ 596 RPM',''),(157362,15,'2023-08-02 05:23:24','OFF','Engine crayfish:gs1 is running acceptable RPM  @ 0 RPM',''),(157363,15,'2023-08-02 14:51:23','MODERATE','Engine crayfish:gs1 is running fast @ 1606 RPM',''),(157364,15,'2023-08-02 14:52:20','OFF','Engine crayfish:gs1 is running acceptable RPM  @ 1598 RPM',''),(157365,15,'2023-08-02 14:52:24','MODERATE','Engine crayfish:gs1 is running fast @ 1600 RPM',''),(157366,15,'2023-08-02 14:52:28','OFF','Engine crayfish:gs1 is running acceptable RPM  @ 1599 RPM',''),(157367,15,'2023-08-02 14:52:30','MODERATE','Engine crayfish:gs1 is running fast @ 1600 RPM',''),(157368,15,'2023-08-02 14:52:32','OFF','Engine crayfish:gs1 is running acceptable RPM  @ 1599 RPM',''),(157369,15,'2023-08-02 14:52:34','MODERATE','Engine crayfish:gs1 is running fast @ 1603 RPM',''),(157370,15,'2023-08-02 14:52:36','OFF','Engine crayfish:gs1 is running acceptable RPM  @ 1596 RPM',''),(157371,15,'2023-08-02 14:52:40','MODERATE','Engine crayfish:gs1 is running fast @ 1601 RPM',''),(157372,15,'2023-08-02 14:52:42','OFF','Engine crayfish:gs1 is running acceptable RPM  @ 1599 RPM',''),(157373,14,'2023-08-03 10:47:23','MODERATE','kok sensor fautlnya',''),(157374,14,'2023-08-03 10:49:56','OFF','balik ke normal dong',''),(157375,14,'2023-08-03 10:50:35','MODERATE','kok sensor fautlnya',''),(157376,14,'2023-08-03 10:51:13','OFF','balik ke normal dong',''),(157377,14,'2023-08-03 10:51:59','MODERATE','kok sensor fautlnya',''),(157378,14,'2023-08-03 10:52:17','OFF','balik ke normal dong',''),(157379,14,'2023-08-03 10:53:14','MODERATE','kok sensor fautlnya',''),(157380,14,'2023-08-03 10:54:48','OFF','balik ke normal dong',''),(157381,14,'2023-08-03 10:54:56','MODERATE','kok sensor fautlnya',''),(157382,14,'2023-08-03 11:00:31','OFF','balik ke normal dong',''),(157383,14,'2023-08-03 11:26:00','MODERATE','kok sensor fautlnya',''),(157384,14,'2023-08-03 11:29:54','OFF','balik ke normal dong',''),(157385,14,'2023-08-03 11:30:00','MODERATE','kok sensor fautlnya',''),(157386,14,'2023-08-03 11:33:51','OFF','balik ke normal dong',''),(157387,14,'2023-08-03 11:45:49','MODERATE','kok sensor fautlnya',''),(157388,14,'2023-08-03 11:50:21','OFF','balik ke normal dong',''),(157389,15,'2023-08-03 11:51:38','MODERATE','Engine crayfish:gs1 is running fast @ 1712 RPM',''),(157390,15,'2023-08-03 11:51:40','OFF','Engine crayfish:gs1 is running acceptable RPM  @ 0 RPM',''),(157391,15,'2023-08-03 11:57:46','MODERATE','Engine crayfish:gs1 is running fast @ 1732 RPM',''),(157392,15,'2023-08-03 11:57:48','OFF','Engine crayfish:gs1 is running acceptable RPM  @ 0 RPM',''),(157393,15,'2023-08-03 12:08:25','MODERATE','Engine crayfish:gs1 is running fast @ 1684 RPM',''),(157394,15,'2023-08-03 12:08:27','OFF','Engine crayfish:gs1 is running acceptable RPM  @ 0 RPM',''),(157395,15,'2023-08-03 12:19:14','MODERATE','Engine crayfish:gs1 is running fast @ 1988 RPM',''),(157396,15,'2023-08-03 12:19:16','OFF','Engine crayfish:gs1 is running acceptable RPM  @ 0 RPM',''),(157397,15,'2023-08-03 12:19:18','SEVERE','Engine crayfish:gs1 is running too fast @ 2550 RPM',''),(157398,15,'2023-08-03 12:19:20','OFF','Engine crayfish:gs1 is running acceptable RPM  @ 0 RPM',''),(157399,15,'2023-08-03 12:22:19','MODERATE','Engine crayfish:gs1 is running fast @ 1663 RPM',''),(157400,15,'2023-08-03 12:22:21','OFF','Engine crayfish:gs1 is running acceptable RPM  @ 0 RPM',''),(157401,15,'2023-08-03 12:22:59','MODERATE','Engine crayfish:gs1 is running fast @ 1939 RPM',''),(157402,15,'2023-08-03 12:23:01','OFF','Engine crayfish:gs1 is running acceptable RPM  @ 0 RPM',''),(157403,15,'2023-08-03 12:25:42','MODERATE','Engine crayfish:gs1 is running fast @ 1898 RPM',''),(157404,15,'2023-08-03 12:25:44','OFF','Engine crayfish:gs1 is running acceptable RPM  @ 0 RPM',''),(157405,15,'2023-08-03 12:30:36','MODERATE','Engine crayfish:gs1 is running fast @ 1623 RPM',''),(157406,15,'2023-08-03 12:30:40','OFF','Engine crayfish:gs1 is running acceptable RPM  @ 0 RPM',''),(157407,15,'2023-08-03 12:30:42','MODERATE','Engine crayfish:gs1 is running fast @ 1694 RPM',''),(157408,15,'2023-08-03 12:30:44','OFF','Engine crayfish:gs1 is running acceptable RPM  @ 0 RPM',''),(157409,15,'2023-08-03 12:35:12','MODERATE','Engine crayfish:gs1 is running fast @ 1626 RPM',''),(157410,15,'2023-08-03 12:35:14','OFF','Engine crayfish:gs1 is running acceptable RPM  @ 0 RPM',''),(157411,15,'2023-08-03 12:41:31','MODERATE','Engine crayfish:gs1 is running fast @ 1964 RPM',''),(157412,15,'2023-08-03 12:41:33','OFF','Engine crayfish:gs1 is running acceptable RPM  @ 0 RPM',''),(157413,15,'2023-08-03 12:44:48','MODERATE','Engine crayfish:gs1 is running fast @ 1813 RPM',''),(157414,15,'2023-08-03 12:44:52','OFF','Engine crayfish:gs1 is running acceptable RPM  @ 0 RPM',''),(157415,15,'2023-08-03 12:44:56','MODERATE','Engine crayfish:gs1 is running fast @ 1779 RPM',''),(157416,15,'2023-08-03 12:44:58','OFF','Engine crayfish:gs1 is running acceptable RPM  @ 0 RPM',''),(157417,15,'2023-08-03 12:45:14','SEVERE','Engine crayfish:gs1 is running too fast @ 2009 RPM',''),(157418,15,'2023-08-03 12:45:16','OFF','Engine crayfish:gs1 is running acceptable RPM  @ 0 RPM',''),(157419,15,'2023-08-03 12:46:05','MODERATE','Engine crayfish:gs1 is running fast @ 1782 RPM',''),(157420,15,'2023-08-03 12:46:07','OFF','Engine crayfish:gs1 is running acceptable RPM  @ 0 RPM',''),(157421,15,'2023-08-03 12:46:23','MODERATE','Engine crayfish:gs1 is running fast @ 1698 RPM',''),(157422,15,'2023-08-03 12:46:25','OFF','Engine crayfish:gs1 is running acceptable RPM  @ 0 RPM',''),(157423,15,'2023-08-03 12:46:33','MODERATE','Engine crayfish:gs1 is running fast @ 1666 RPM',''),(157424,15,'2023-08-03 12:46:35','OFF','Engine crayfish:gs1 is running acceptable RPM  @ 158 RPM',''),(157425,15,'2023-08-03 12:46:37','MODERATE','Engine crayfish:gs1 is running fast @ 1855 RPM',''),(157426,15,'2023-08-03 12:46:39','OFF','Engine crayfish:gs1 is running acceptable RPM  @ 0 RPM',''),(157427,15,'2023-08-03 12:46:53','MODERATE','Engine crayfish:gs1 is running fast @ 1781 RPM',''),(157428,15,'2023-08-03 12:46:55','OFF','Engine crayfish:gs1 is running acceptable RPM  @ 0 RPM',''),(157429,15,'2023-08-03 12:47:01','MODERATE','Engine crayfish:gs1 is running fast @ 1963 RPM',''),(157430,15,'2023-08-03 12:47:03','OFF','Engine crayfish:gs1 is running acceptable RPM  @ 0 RPM',''),(157431,15,'2023-08-03 12:47:37','MODERATE','Engine crayfish:gs1 is running fast @ 1829 RPM',''),(157432,15,'2023-08-03 12:47:39','OFF','Engine crayfish:gs1 is running acceptable RPM  @ 0 RPM',''),(157433,15,'2023-08-03 12:47:43','SEVERE','Engine crayfish:gs1 is running too fast @ 2040 RPM',''),(157434,15,'2023-08-03 12:47:45','OFF','Engine crayfish:gs1 is running acceptable RPM  @ 0 RPM',''),(157435,15,'2023-08-03 12:47:53','MODERATE','Engine crayfish:gs1 is running fast @ 1802 RPM',''),(157436,15,'2023-08-03 12:47:55','OFF','Engine crayfish:gs1 is running acceptable RPM  @ 0 RPM',''),(157437,15,'2023-08-03 12:50:31','MODERATE','Engine crayfish:gs1 is running fast @ 1714 RPM',''),(157438,15,'2023-08-03 12:50:33','OFF','Engine crayfish:gs1 is running acceptable RPM  @ 0 RPM',''),(157439,15,'2023-08-03 12:50:37','MODERATE','Engine crayfish:gs1 is running fast @ 1746 RPM',''),(157440,15,'2023-08-03 12:50:39','OFF','Engine crayfish:gs1 is running acceptable RPM  @ 0 RPM',''),(157441,15,'2023-08-03 12:50:45','SEVERE','Engine crayfish:gs1 is running too fast @ 2216 RPM',''),(157442,15,'2023-08-03 12:50:47','MODERATE','Engine crayfish:gs1 is running fast @ 1762 RPM',''),(157443,15,'2023-08-03 12:50:49','OFF','Engine crayfish:gs1 is running acceptable RPM  @ 0 RPM',''),(157444,15,'2023-08-03 12:51:31','MODERATE','Engine crayfish:gs1 is running fast @ 1731 RPM',''),(157445,15,'2023-08-03 12:51:33','OFF','Engine crayfish:gs1 is running acceptable RPM  @ 0 RPM',''),(157446,15,'2023-08-03 12:51:49','MODERATE','Engine crayfish:gs1 is running fast @ 1849 RPM',''),(157447,15,'2023-08-03 12:51:51','OFF','Engine crayfish:gs1 is running acceptable RPM  @ 148 RPM',''),(157448,15,'2023-08-03 12:51:53','MODERATE','Engine crayfish:gs1 is running fast @ 1766 RPM',''),(157449,15,'2023-08-03 12:51:55','OFF','Engine crayfish:gs1 is running acceptable RPM  @ 0 RPM',''),(157450,15,'2023-08-03 12:51:59','MODERATE','Engine crayfish:gs1 is running fast @ 1903 RPM',''),(157451,15,'2023-08-03 12:52:01','OFF','Engine crayfish:gs1 is running acceptable RPM  @ 0 RPM',''),(157452,15,'2023-08-03 12:52:03','MODERATE','Engine crayfish:gs1 is running fast @ 1774 RPM',''),(157453,15,'2023-08-03 12:52:05','OFF','Engine crayfish:gs1 is running acceptable RPM  @ 0 RPM',''),(157454,15,'2023-08-03 12:52:07','MODERATE','Engine crayfish:gs1 is running fast @ 1767 RPM',''),(157455,15,'2023-08-03 12:52:09','OFF','Engine crayfish:gs1 is running acceptable RPM  @ 0 RPM',''),(157456,15,'2023-08-03 12:52:13','MODERATE','Engine crayfish:gs1 is running fast @ 1857 RPM',''),(157457,15,'2023-08-03 12:52:15','OFF','Engine crayfish:gs1 is running acceptable RPM  @ 882 RPM',''),(157458,15,'2023-08-03 12:52:17','MODERATE','Engine crayfish:gs1 is running fast @ 1669 RPM',''),(157459,14,'2023-08-03 12:52:19','CRITICAL','Parah ini',''),(157460,15,'2023-08-03 12:52:21','OFF','Engine crayfish:gs1 is running acceptable RPM  @ 0 RPM',''),(157461,14,'2023-08-03 12:52:27','OFF','balik ke normal dong',''),(157462,15,'2023-08-03 21:16:48','MODERATE','Engine crayfish:gs1 is running fast @ 1610 RPM',''),(157463,15,'2023-08-03 21:16:50','OFF','Engine crayfish:gs1 is running acceptable RPM  @ 1592 RPM',''),(157464,15,'2023-08-03 21:16:52','MODERATE','Engine crayfish:gs1 is running fast @ 1612 RPM',''),(157465,15,'2023-08-03 21:16:56','OFF','Engine crayfish:gs1 is running acceptable RPM  @ 1597 RPM',''),(157466,15,'2023-08-03 21:16:58','MODERATE','Engine crayfish:gs1 is running fast @ 1605 RPM',''),(157467,15,'2023-08-03 21:17:08','OFF','Engine crayfish:gs1 is running acceptable RPM  @ 1597 RPM',''),(157468,15,'2023-08-03 21:17:12','MODERATE','Engine crayfish:gs1 is running fast @ 1601 RPM',''),(157469,15,'2023-08-03 21:17:16','OFF','Engine crayfish:gs1 is running acceptable RPM  @ 1597 RPM',''),(157470,15,'2023-08-03 21:18:07','MODERATE','Engine crayfish:gs1 is running fast @ 1601 RPM',''),(157471,15,'2023-08-03 21:18:09','OFF','Engine crayfish:gs1 is running acceptable RPM  @ 1596 RPM',''),(157472,15,'2023-08-04 06:35:58','MODERATE','Engine crayfish:gs1 is running fast @ 1624 RPM',''),(157473,14,'2023-08-04 06:36:02','CRITICAL','Parah ini',''),(157474,15,'2023-08-04 06:36:16','OFF','Engine crayfish:gs1 is running acceptable RPM  @ 0 RPM',''),(157475,14,'2023-08-04 06:36:22','OFF','balik ke normal dong',''),(157476,14,'2023-08-04 06:37:00','DISABLED',NULL,'Command sent from ACMCAPAlarms-470894f3-e071-38bb-8b24-aacaee2b05bf'),(157477,15,'2023-08-04 06:37:04','DISABLED',NULL,'Command sent from ACMCAPAlarms-470894f3-e071-38bb-8b24-aacaee2b05bf'),(157478,14,'2023-08-04 06:50:05','OFF','Lowering alarm as client BBAlarms has disconnected',''),(157479,15,'2023-08-04 06:50:05','OFF','Lowering alarm as client BBAlarms has disconnected',''),(157480,14,'2023-08-04 09:55:31','MODERATE','kok sensor fautlnya',''),(157481,14,'2023-08-04 09:55:34','OFF','balik ke normal dong',''),(157482,14,'2023-08-04 10:07:07','DISABLED',NULL,'Command sent from ACMCAPAlarms-470894f3-e071-38bb-8b24-aacaee2b05bf'),(157483,14,'2023-08-04 10:07:10','OFF',NULL,'Command sent from ACMCAPAlarms-470894f3-e071-38bb-8b24-aacaee2b05bf'),(157484,14,'2023-08-05 01:29:27','CRITICAL','Parah ini',''),(157485,14,'2023-08-05 01:30:39','OFF','balik ke normal dong',''),(157486,14,'2023-08-05 01:31:46','DISABLED',NULL,'Command sent from ACMCAPAlarms-470894f3-e071-38bb-8b24-aacaee2b05bf'),(157487,15,'2023-08-05 01:31:50','DISABLED',NULL,'Command sent from ACMCAPAlarms-470894f3-e071-38bb-8b24-aacaee2b05bf'),(157488,13,'2023-08-05 01:31:53','DISABLED',NULL,'Command sent from ACMCAPAlarms-470894f3-e071-38bb-8b24-aacaee2b05bf'),(157489,14,'2023-08-05 01:49:03','OFF','Lowering alarm as client BBAlarms has disconnected',''),(157490,15,'2023-08-05 01:49:03','OFF','Lowering alarm as client BBAlarms has disconnected',''),(157491,13,'2023-08-05 01:49:03','OFF','Lowering alarm as client BBAlarms has disconnected',''),(157492,15,'2023-08-05 01:57:45','SEVERE','Engine crayfish:gs1 is running too fast @ 2346 RPM',''),(157493,15,'2023-08-05 01:57:47','OFF','Engine crayfish:gs1 is running acceptable RPM  @ 1479 RPM',''),(157494,15,'2023-08-05 01:58:21','MODERATE','Engine crayfish:gs1 is running fast @ 1696 RPM',''),(157495,15,'2023-08-05 01:58:23','OFF','Engine crayfish:gs1 is running acceptable RPM  @ 0 RPM',''),(157496,15,'2023-08-05 01:59:42','MODERATE','Engine crayfish:gs1 is running fast @ 1621 RPM',''),(157497,15,'2023-08-05 01:59:44','OFF','Engine crayfish:gs1 is running acceptable RPM  @ 0 RPM',''),(157498,15,'2023-08-05 02:02:59','SEVERE','Engine crayfish:gs1 is running too fast @ 2003 RPM',''),(157499,15,'2023-08-05 02:03:01','OFF','Engine crayfish:gs1 is running acceptable RPM  @ 0 RPM',''),(157500,15,'2023-08-05 02:03:53','MODERATE','Engine crayfish:gs1 is running fast @ 1922 RPM',''),(157501,15,'2023-08-05 02:03:55','OFF','Engine crayfish:gs1 is running acceptable RPM  @ 0 RPM',''),(157502,15,'2023-08-05 02:04:23','MODERATE','Engine crayfish:gs1 is running fast @ 1656 RPM',''),(157503,15,'2023-08-05 02:04:27','OFF','Engine crayfish:gs1 is running acceptable RPM  @ 0 RPM',''),(157504,15,'2023-08-05 02:08:53','MODERATE','Engine crayfish:gs1 is running fast @ 1623 RPM',''),(157505,14,'2023-08-05 02:08:57','CRITICAL','Parah ini',''),(157506,15,'2023-08-05 02:09:21','OFF','Engine crayfish:gs1 is running acceptable RPM  @ 1607 RPM',''),(157507,15,'2023-08-05 02:09:23','MODERATE','Engine crayfish:gs1 is running fast @ 1623 RPM',''),(157508,15,'2023-08-05 02:09:27','OFF','Engine crayfish:gs1 is running acceptable RPM  @ 1606 RPM',''),(157509,15,'2023-08-05 02:09:29','MODERATE','Engine crayfish:gs1 is running fast @ 1623 RPM',''),(157510,14,'2023-08-05 02:09:32','OFF','Lowering alarm as client BBAlarms has disconnected',''),(157511,15,'2023-08-05 02:09:32','OFF','Lowering alarm as client BBAlarms has disconnected',''),(157512,15,'2023-08-05 02:10:04','DISABLED',NULL,'Command sent from ACMCAPAlarms-470894f3-e071-38bb-8b24-aacaee2b05bf'),(157513,14,'2023-08-05 02:10:14','DISABLED',NULL,'Command sent from ACMCAPAlarms-470894f3-e071-38bb-8b24-aacaee2b05bf'),(157514,14,'2023-08-05 02:13:55','OFF','Lowering alarm as client BBAlarms has disconnected',''),(157515,15,'2023-08-05 02:13:55','OFF','Lowering alarm as client BBAlarms has disconnected',''),(157516,15,'2023-08-05 02:43:57','SEVERE','Engine crayfish:gs1 is running too fast @ 2258 RPM',''),(157517,15,'2023-08-05 02:43:59','OFF','Engine crayfish:gs1 is running acceptable RPM  @ 0 RPM',''),(157518,15,'2023-08-05 02:44:03','MODERATE','Engine crayfish:gs1 is running fast @ 1680 RPM',''),(157519,15,'2023-08-05 02:44:07','OFF','Engine crayfish:gs1 is running acceptable RPM  @ 0 RPM',''),(157520,15,'2023-08-05 05:44:11','MODERATE','Engine crayfish:gs1 is running fast @ 1622 RPM',''),(157521,14,'2023-08-05 05:44:16','CRITICAL','Parah ini',''),(157522,14,'2023-08-05 05:44:25','OFF','Lowering alarm as client BBAlarms has disconnected',''),(157523,15,'2023-08-05 05:44:25','OFF','Lowering alarm as client BBAlarms has disconnected','');
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
INSERT INTO `alarms` VALUES (1,'hw','High Water',NULL,11,250,1,0,1),(2,'gs','Gensets',NULL,10,250,1,0,1),(3,'iv','Inverter',NULL,9,250,1,0,1),(7,'idk-temp','Induk Temp','BBEngineRoom',NULL,NULL,1,1,1),(8,'idk-oil','Induk Oil','BBEngineRoom',NULL,NULL,1,1,1),(9,'idk-rpm','Induk RPM','BBEngineRoom',NULL,NULL,1,1,1),(10,'bnt-temp','Bantu Temp','BBEngineRoom',NULL,NULL,1,1,1),(11,'bnt-oil','Bantu Oil','BBEngineRoom',NULL,NULL,1,1,1),(12,'bnt-rpm','Bantu RPM','BBEngineRoom',NULL,NULL,1,1,1),(13,'gs1-temp','GS1 Temp','BBEngineRoom',NULL,NULL,1,1,1),(14,'gs1-oil','GS1 Oil','BBEngineRoom',NULL,NULL,1,1,1),(15,'gs1-rpm','GS1 RPM','BBEngineRoom',NULL,NULL,1,1,1),(16,'gs2-temp','GS2 Temp','BBEngineRoom',NULL,NULL,1,1,1),(17,'gs2-oil','GS2 Oil','BBEngineRoom',NULL,NULL,1,1,1),(18,'gs2-rpm','GS2 RPM','BBEngineRoom',NULL,NULL,1,1,1),(19,'pmp-clp','Pompa Celup','BBEngineRoom',NULL,NULL,1,1,1),(20,'pmp-sol','Pompa Solar','BBEngineRoom',NULL,NULL,1,1,1);
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

-- Dump completed on 2023-08-05 15:18:41
