-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: network
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
-- Table structure for table `net_service_tokens`
--

DROP TABLE IF EXISTS `net_service_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `net_service_tokens` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `service_id` int unsigned NOT NULL,
  `client_name` varchar(255) NOT NULL,
  `token` varchar(255) DEFAULT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `token_UNIQUE` (`token`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `net_service_tokens`
--

LOCK TABLES `net_service_tokens` WRITE;
/*!40000 ALTER TABLE `net_service_tokens` DISABLE KEYS */;
INSERT INTO `net_service_tokens` VALUES (2,2,'ACMMediaController:8787523e-a947-3d86-ac6a-43bf615e8447','AT:637871160466062600','2022-05-02 09:00:13','2022-05-02 11:20:47');
/*!40000 ALTER TABLE `net_service_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `net_services`
--

DROP TABLE IF EXISTS `net_services`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `net_services` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `service_name` varchar(45) NOT NULL,
  `domain` varchar(45) DEFAULT NULL,
  `endpoint_port` int unsigned DEFAULT NULL,
  `protocols` varchar(45) NOT NULL,
  `endpoint` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  UNIQUE KEY `service_name_UNIQUE` (`service_name`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `net_services`
--

LOCK TABLES `net_services` WRITE;
/*!40000 ALTER TABLE `net_services` DISABLE KEYS */;
INSERT INTO `net_services` VALUES (1,'Network',NULL,8001,'http','api'),(2,'Chetch Messaging',NULL,12000,'tcp',NULL),(3,'Captains Log',NULL,8005,'http','api'),(4,'Employees',NULL,8004,'http','api'),(5,'GPS',NULL,8003,'http','api'),(6,'Surf Forecast',NULL,8002,'http','api'),(7,'Alarms',NULL,8007,'http','api');
/*!40000 ALTER TABLE `net_services` ENABLE KEYS */;
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
  `encoded` tinyint unsigned NOT NULL DEFAULT '0',
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `data_name_UNIQUE` (`data_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
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
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_logs`
--

LOCK TABLES `sys_logs` WRITE;
/*!40000 ALTER TABLE `sys_logs` DISABLE KEYS */;
INSERT INTO `sys_logs` VALUES (1,'2022-03-28 08:28:46','index','EXCEPTION','favicon.ico is an unrecognised stub'),(2,'2022-03-28 08:28:57','index','EXCEPTION','Hey'),(3,'2022-04-27 05:09:05','index','EXCEPTION','favicon.ico is an unrecognised stub'),(4,'2022-04-27 08:39:17','index','EXCEPTION','services is an unrecognised stub'),(5,'2022-04-27 08:39:18','index','EXCEPTION','favicon.ico is an unrecognised stub'),(6,'2022-05-02 06:44:38','index','EXCEPTION','favicon.ico is an unrecognised stub'),(7,'2022-05-02 07:25:15','index','EXCEPTION','favicon.ico is an unrecognised stub'),(8,'2022-05-02 07:27:43','index','EXCEPTION','SQLSTATE[42S02]: Base table or view not found: 1146 Table \'network.net_service_tokens\' doesn\'t exist'),(9,'2022-05-02 07:28:08','index','EXCEPTION','SQLSTATE[42S02]: Base table or view not found: 1146 Table \'network.net_service_tokens\' doesn\'t exist'),(10,'2022-05-02 07:28:10','index','EXCEPTION','SQLSTATE[42S02]: Base table or view not found: 1146 Table \'network.net_service_tokens\' doesn\'t exist'),(11,'2022-05-02 07:28:12','index','EXCEPTION','SQLSTATE[42S02]: Base table or view not found: 1146 Table \'network.net_service_tokens\' doesn\'t exist'),(12,'2022-05-02 07:28:14','index','EXCEPTION','SQLSTATE[42S02]: Base table or view not found: 1146 Table \'network.net_service_tokens\' doesn\'t exist'),(13,'2022-05-02 07:28:16','index','EXCEPTION','SQLSTATE[42S02]: Base table or view not found: 1146 Table \'network.net_service_tokens\' doesn\'t exist'),(14,'2022-05-02 07:28:18','index','EXCEPTION','SQLSTATE[42S02]: Base table or view not found: 1146 Table \'network.net_service_tokens\' doesn\'t exist'),(15,'2022-05-02 07:28:20','index','EXCEPTION','SQLSTATE[42S02]: Base table or view not found: 1146 Table \'network.net_service_tokens\' doesn\'t exist'),(16,'2022-05-02 07:28:22','index','EXCEPTION','SQLSTATE[42S02]: Base table or view not found: 1146 Table \'network.net_service_tokens\' doesn\'t exist'),(17,'2022-05-02 07:28:24','index','EXCEPTION','SQLSTATE[42S02]: Base table or view not found: 1146 Table \'network.net_service_tokens\' doesn\'t exist'),(18,'2022-05-02 07:28:26','index','EXCEPTION','SQLSTATE[42S02]: Base table or view not found: 1146 Table \'network.net_service_tokens\' doesn\'t exist'),(19,'2022-05-02 07:28:28','index','EXCEPTION','SQLSTATE[42S02]: Base table or view not found: 1146 Table \'network.net_service_tokens\' doesn\'t exist'),(20,'2022-05-02 07:28:30','index','EXCEPTION','SQLSTATE[42S02]: Base table or view not found: 1146 Table \'network.net_service_tokens\' doesn\'t exist'),(21,'2022-05-02 07:28:32','index','EXCEPTION','SQLSTATE[42S02]: Base table or view not found: 1146 Table \'network.net_service_tokens\' doesn\'t exist'),(22,'2022-05-02 07:28:34','index','EXCEPTION','SQLSTATE[42S02]: Base table or view not found: 1146 Table \'network.net_service_tokens\' doesn\'t exist'),(23,'2022-05-02 07:30:19','index','EXCEPTION','SQLSTATE[42S02]: Base table or view not found: 1146 Table \'network.net_service_tokens\' doesn\'t exist'),(24,'2022-05-02 07:47:39','index','EXCEPTION','No service id passed in query'),(25,'2022-05-02 07:47:55','index','EXCEPTION','No service id passed in query'),(26,'2022-05-02 07:48:02','index','EXCEPTION','SQLSTATE[HY093]: Invalid parameter number: number of bound variables does not match number of tokens'),(27,'2022-05-02 07:49:23','index','EXCEPTION','SQLSTATE[HY093]: Invalid parameter number: number of bound variables does not match number of tokens'),(28,'2022-05-02 07:55:26','index','EXCEPTION','SQLSTATE[HY093]: Invalid parameter number: number of bound variables does not match number of tokens');
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

-- Dump completed on 2022-09-21 21:13:31
