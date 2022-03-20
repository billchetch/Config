CREATE DATABASE  IF NOT EXISTS `infrared` /*!40100 DEFAULT CHARACTER SET utf8 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `infrared`;
-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: infrared
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
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ir_commands`
--

LOCK TABLES `ir_commands` WRITE;
/*!40000 ALTER TABLE `ir_commands` DISABLE KEYS */;
INSERT INTO `ir_commands` VALUES (1,'0'),(2,'1'),(3,'2'),(4,'3'),(5,'4'),(6,'5'),(7,'6'),(8,'7'),(9,'8'),(10,'9'),(11,'Function'),(13,'Mute/Unmute'),(14,'On/Off'),(12,'Source'),(16,'Volume_Down'),(15,'Volume_Up');
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ir_device_commands`
--

LOCK TABLES `ir_device_commands` WRITE;
/*!40000 ALTER TABLE `ir_device_commands` DISABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ir_devices`
--

LOCK TABLES `ir_devices` WRITE;
/*!40000 ALTER TABLE `ir_devices` DISABLE KEYS */;
INSERT INTO `ir_devices` VALUES (1,'LG Home Theater','Home Theater','LG');
/*!40000 ALTER TABLE `ir_devices` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-03-20 23:26:17
