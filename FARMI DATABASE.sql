-- MySQL dump 10.13  Distrib 5.7.12, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: farmi
-- ------------------------------------------------------
-- Server version	5.7.17-log

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
-- Table structure for table `fertilizer_producer`
--

DROP TABLE IF EXISTS `fertilizer_producer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fertilizer_producer` (
  `companyName` varchar(50) NOT NULL,
  `fertilizer_price` int(11) DEFAULT NULL,
  PRIMARY KEY (`companyName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fertilizer_producer`
--

LOCK TABLES `fertilizer_producer` WRITE;
/*!40000 ALTER TABLE `fertilizer_producer` DISABLE KEYS */;
/*!40000 ALTER TABLE `fertilizer_producer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `market`
--

DROP TABLE IF EXISTS `market`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `market` (
  `market_name` varchar(50) NOT NULL,
  `market_place` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`market_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `market`
--

LOCK TABLES `market` WRITE;
/*!40000 ALTER TABLE `market` DISABLE KEYS */;
/*!40000 ALTER TABLE `market` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pesticides`
--

DROP TABLE IF EXISTS `pesticides`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pesticides` (
  `pesticides` varchar(50) NOT NULL,
  `price_of_pesticides` int(11) DEFAULT NULL,
  PRIMARY KEY (`pesticides`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pesticides`
--

LOCK TABLES `pesticides` WRITE;
/*!40000 ALTER TABLE `pesticides` DISABLE KEYS */;
/*!40000 ALTER TABLE `pesticides` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `produces`
--

DROP TABLE IF EXISTS `produces`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `produces` (
  `fertilizers_name` varchar(50) NOT NULL,
  `company_of_fertilizers` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`fertilizers_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produces`
--

LOCK TABLES `produces` WRITE;
/*!40000 ALTER TABLE `produces` DISABLE KEYS */;
/*!40000 ALTER TABLE `produces` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `treats`
--

DROP TABLE IF EXISTS `treats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `treats` (
  `insects` varchar(50) NOT NULL,
  `pesticides` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`insects`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `treats`
--

LOCK TABLES `treats` WRITE;
/*!40000 ALTER TABLE `treats` DISABLE KEYS */;
/*!40000 ALTER TABLE `treats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vegetable`
--

DROP TABLE IF EXISTS `vegetable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vegetable` (
  `VegName` varchar(50) NOT NULL,
  `soil` varchar(45) DEFAULT NULL,
  `weather` varchar(45) DEFAULT NULL,
  `insects` varchar(45) DEFAULT NULL,
  `disease` varchar(45) DEFAULT NULL,
  `harvesting_period` int(11) DEFAULT NULL,
  `market_name` varchar(45) DEFAULT NULL,
  `fertilizer_name` varchar(45) DEFAULT NULL,
  `picture` varchar(45) DEFAULT NULL,
  `farmingProcess` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`VegName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vegetable`
--

LOCK TABLES `vegetable` WRITE;
/*!40000 ALTER TABLE `vegetable` DISABLE KEYS */;
/*!40000 ALTER TABLE `vegetable` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-04-11 22:56:53
