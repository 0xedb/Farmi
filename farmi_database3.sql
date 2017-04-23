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
-- Table structure for table `affects`
--

DROP TABLE IF EXISTS `affects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `affects` (
  `disease` varchar(100) DEFAULT NULL,
  `vegetable` varchar(100) DEFAULT NULL,
  KEY `disease` (`disease`),
  KEY `vegetable` (`vegetable`),
  CONSTRAINT `affects_ibfk_1` FOREIGN KEY (`disease`) REFERENCES `disease` (`diseaseName`),
  CONSTRAINT `affects_ibfk_2` FOREIGN KEY (`vegetable`) REFERENCES `vegetable` (`vegName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `affects`
--

LOCK TABLES `affects` WRITE;
/*!40000 ALTER TABLE `affects` DISABLE KEYS */;
/*!40000 ALTER TABLE `affects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chemicals`
--

DROP TABLE IF EXISTS `chemicals`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chemicals` (
  `chemicalName` varchar(50) NOT NULL,
  `company` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`chemicalName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chemicals`
--

LOCK TABLES `chemicals` WRITE;
/*!40000 ALTER TABLE `chemicals` DISABLE KEYS */;
INSERT INTO `chemicals` VALUES ('Acetylsalicylic acid','Bayer Company'),('Acylanine','Alexandrain Company Ltd.'),('fludioxinil','Timarade company ltd.');
/*!40000 ALTER TABLE `chemicals` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `company`
--

DROP TABLE IF EXISTS `company`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `company` (
  `companyName` varchar(50) NOT NULL,
  `priceCharged` double DEFAULT NULL,
  PRIMARY KEY (`companyName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `company`
--

LOCK TABLES `company` WRITE;
/*!40000 ALTER TABLE `company` DISABLE KEYS */;
INSERT INTO `company` VALUES ('Alexandrain Company Ltd.','1000.00'),('Bayer Company','900.00'),('Timarade company ltd.','400.00');
/*!40000 ALTER TABLE `company` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `destroys`
--

DROP TABLE IF EXISTS `destroys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `destroys` (
  `insect` varchar(100) DEFAULT NULL,
  `vegetable` varchar(100) DEFAULT NULL,
  KEY `insect` (`insect`),
  KEY `vegetable` (`vegetable`),
  CONSTRAINT `destroys_ibfk_1` FOREIGN KEY (`insect`) REFERENCES `insects` (`insectName`),
  CONSTRAINT `destroys_ibfk_2` FOREIGN KEY (`vegetable`) REFERENCES `vegetable` (`vegName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `destroys`
--

LOCK TABLES `destroys` WRITE;
/*!40000 ALTER TABLE `destroys` DISABLE KEYS */;
/*!40000 ALTER TABLE `destroys` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `disease`
--

DROP TABLE IF EXISTS `disease`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `disease` (
  `diseaseName` varchar(100) NOT NULL,
  `symptoms` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`diseaseName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `disease`
--

LOCK TABLES `disease` WRITE;
/*!40000 ALTER TABLE `disease` DISABLE KEYS */;
INSERT INTO `disease` VALUES ('Alternaria leaf spot','yellow, dark brown to black circular leaf spots with target like, concentric rings'),('Bacterial Wilt','Affected runners appear dark green at first and then become necrotic as the wilt becomes irreversible'),('Black root rot','yellowing of the plant');
/*!40000 ALTER TABLE `disease` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `insects`
--

DROP TABLE IF EXISTS `insects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `insects` (
  `insectName` varchar(10) NOT NULL,
  `habitat` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`insectName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `insects`
--

LOCK TABLES `insects` WRITE;
/*!40000 ALTER TABLE `insects` DISABLE KEYS */;
INSERT INTO `insects` VALUES ('Cabbage Looper','can often be seen flying around outdoor lights'),('Carrot rust fly','The flies lay their eggs in the soil near these plants'),('Spotted cucumber beetle adult','plant stem base and roots ');
/*!40000 ALTER TABLE `insects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `market`
--

DROP TABLE IF EXISTS `market`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `market` (
  `marketName` varchar(100) NOT NULL,
  `price` double DEFAULT NULL,
  PRIMARY KEY (`marketName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `market`
--

LOCK TABLES `market` WRITE;
/*!40000 ALTER TABLE `market` DISABLE KEYS */;
INSERT INTO `market` VALUES ('Agbobloshie','45.00'),('Dome market','87.00'),('Kantamanto','90.00');
/*!40000 ALTER TABLE `market` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pesticides`
--

DROP TABLE IF EXISTS `pesticides`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pesticides` (
  `pesticideName` varchar(100) NOT NULL,
  `priceOfPesticide` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`pesticideName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pesticides`
--

LOCK TABLES `pesticides` WRITE;
/*!40000 ALTER TABLE `pesticides` DISABLE KEYS */;
INSERT INTO `pesticides` VALUES ('antrak','89.00'),('cicero','35.00'),('purock','78.00');
/*!40000 ALTER TABLE `pesticides` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prevents`
--

DROP TABLE IF EXISTS `prevents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prevents` (
  `insect` varchar(100) DEFAULT NULL,
  `pesticide` varchar(100) DEFAULT NULL,
  KEY `insect` (`insect`),
  KEY `pesticide` (`pesticide`),
  CONSTRAINT `prevents_ibfk_1` FOREIGN KEY (`insect`) REFERENCES `insects` (`insectName`),
  CONSTRAINT `prevents_ibfk_2` FOREIGN KEY (`pesticide`) REFERENCES `pesticides` (`pesticideName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prevents`
--

LOCK TABLES `prevents` WRITE;
/*!40000 ALTER TABLE `prevents` DISABLE KEYS */;
/*!40000 ALTER TABLE `prevents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sold_in`
--

DROP TABLE IF EXISTS `sold_in`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sold_in` (
  `market` varchar(100) DEFAULT NULL,
  `vegetable` varchar(100) DEFAULT NULL,
  KEY `market` (`market`),
  KEY `vegetable` (`vegetable`),
  CONSTRAINT `sold_in_ibfk_1` FOREIGN KEY (`market`) REFERENCES `market` (`marketName`),
  CONSTRAINT `sold_in_ibfk_2` FOREIGN KEY (`vegetable`) REFERENCES `vegetable` (`vegName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sold_in`
--

LOCK TABLES `sold_in` WRITE;
/*!40000 ALTER TABLE `sold_in` DISABLE KEYS */;
/*!40000 ALTER TABLE `sold_in` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `treats`
--

DROP TABLE IF EXISTS `treats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `treats` (
  `disease` varchar(100) DEFAULT NULL,
  `chemical` varchar(100) DEFAULT NULL,
  KEY `disease` (`disease`),
  KEY `chemical` (`chemical`),
  CONSTRAINT `treats_ibfk_1` FOREIGN KEY (`disease`) REFERENCES `disease` (`diseaseName`),
  CONSTRAINT `treats_ibfk_2` FOREIGN KEY (`chemical`) REFERENCES `chemicals` (`chemicalName`)
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
  `vegName` varchar(100) NOT NULL,
  `soil` varchar(100) DEFAULT NULL,
  `weather` varchar(100) DEFAULT NULL,
  `harvesting_period` varchar(1000) DEFAULT NULL,
  `picture` varchar(100) DEFAULT NULL,
  `farmingProcess` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`vegName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vegetable`
--

LOCK TABLES `vegetable` WRITE;
/*!40000 ALTER TABLE `vegetable` DISABLE KEYS */;
INSERT INTO `vegetable` VALUES ('cabbage','Prefers well-drained soils','temperate climates','10 weeks','cabbage.gif','Start cabbage seeds indoors 6 to 8 weeks before the last spring frost. See frost dates for your area. Harden off plants over the course of a week. To prepare soil, till in aged manure or compost. Transplant outdoors 2 to 3 weeks before the last expected frost date. Choose a cloudy afternoon. Plant 12 to 24 inches apart in rows, depending on size of head desired. The closer you plant, the smaller the heads. Mulch thickly to retain moisture and regulate soil temperature. Practice crop rotation with cabbage year to year to avoid a buildup of soil borne diseases. Although cabbage, broccoli, and cauliflower are closely related, and require similar nutrients, it’s best not to plant them together. They are all heavy feeders, depleting the soil faster of required nutrients; plus, they will attract the same pests and diseases. '),('carrot','loamy soil','warm and sunny','20 weeks','animated-carrot-image-0021.gif','Plan to plant seeds outdoors 3 to 5 weeks before the last spring frost date.'),('cucumber','moist and well drained soil','warm weather','7-10 weeks','cucumber.png','Plant seedlings one inch deep and about 36 to 60 inches apart, depending on variety. For vines trained on a trellis, space plants 1 foot apart. For an early crop, start cucumber seeds indoors about 3 weeks before you transplant them in the ground. They like bottom heat of about 70ºF (21ºC). If you don’t have a heat mat, put the seeds flat on top of the refrigerator or perch a few on top of the water heater. If you live in the cooler climates, you can help warm the soil by covering the hill or row with black plastic. Once the ground is warm, mulch with pine straw, chopped leaves, or another organic mulch to keep pests at bay, and also keep bush types off the ground to avoid disease. A trellis is a good idea if you want the vine to climb, or if you have limited space. Trellising also protects the fruit from damage from lying on the moist ground. ');
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

-- Dump completed on 2017-04-23 18:47:17
