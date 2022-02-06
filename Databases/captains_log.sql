CREATE DATABASE  IF NOT EXISTS `captains_log` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `captains_log`;
-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: captains_log
-- ------------------------------------------------------
-- Server version	5.7.19-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
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
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `api_requests` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `base_url` varchar(255) NOT NULL,
  `request` varchar(255) NOT NULL,
  `method` enum('GET','PUT','POST','DELETE') DEFAULT NULL,
  `data` mediumtext,
  `response_headers` mediumtext,
  `last_updated` timestamp NULL DEFAULT NULL,
  `last_requested` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `api_requests`
--

LOCK TABLES `api_requests` WRITE;
/*!40000 ALTER TABLE `api_requests` DISABLE KEYS */;
/*!40000 ALTER TABLE `api_requests` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `log_entries`
--

DROP TABLE IF EXISTS `log_entries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `log_entries` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `employee_id` varchar(45) NOT NULL,
  `state` varchar(45) NOT NULL,
  `event` varchar(45) NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `comment` text,
  `latitude` double NOT NULL,
  `longitude` double NOT NULL,
  `requires_revision` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `uploaded` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=317 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `log_entries`
--

LOCK TABLES `log_entries` WRITE;
/*!40000 ALTER TABLE `log_entries` DISABLE KEYS */;
INSERT INTO `log_entries` VALUES (307,'88005','IDLE','RAISE_ANCHOR','2020-08-03 02:45:30',NULL,-8.7315216666667,115.17069061111,0,0),(308,'88005','MOVING','COMMENT','2020-08-03 02:45:46','test',-8.7315216666667,115.17069061111,0,0),(309,'88005','MOVING','ALERT','2020-08-03 03:14:08','Cannot rouse sleeping crew member',-8.7315216666667,115.17069061111,0,0),(310,'88005','MOVING','SET_ANCHOR','2020-08-03 03:14:13',NULL,-8.7315216666667,115.17069061111,0,0),(311,'88011','IDLE','RAISE_ANCHOR','2020-08-03 03:55:01',NULL,-8.7315216666667,115.17069061111,0,0),(312,'88011','MOVING','ALERT','2020-08-03 04:03:21','Cannot rouse ill crew member',-8.7315216666667,115.17069061111,0,0),(313,'88011','MOVING','SET_ANCHOR','2020-08-03 04:03:28',NULL,-8.7315216666667,115.17069061111,0,0),(314,'88001','IDLE','RAISE_ANCHOR','2020-08-09 08:41:48',NULL,-8.7315216666667,115.17069061111,0,0),(315,'88005','MOVING','DUTY_CHANGE','2020-08-09 08:42:21',NULL,-8.7315216666667,115.17069061111,0,0),(316,'88005','MOVING','SET_ANCHOR','2020-08-09 08:43:12',NULL,-8.7315216666667,115.17069061111,0,0);
/*!40000 ALTER TABLE `log_entries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_info`
--

DROP TABLE IF EXISTS `sys_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_info` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `data_name` varchar(45) NOT NULL,
  `data_value` text,
  `encoded` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `data_name_UNIQUE` (`data_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
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
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_logs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `log_name` varchar(45) NOT NULL,
  `log_entry_type` enum('INFO','WARNING','EXCEPTION') NOT NULL,
  `log_entry` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
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

-- Dump completed on 2020-09-13 16:30:09
