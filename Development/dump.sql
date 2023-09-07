CREATE DATABASE  IF NOT EXISTS `airbnb` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `airbnb`;
-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: localhost    Database: airbnb
-- ------------------------------------------------------
-- Server version	8.0.33

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
-- Table structure for table `accessibility`
--

DROP TABLE IF EXISTS `accessibility`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `accessibility` (
  `id` int NOT NULL AUTO_INCREMENT,
  `feature_name` varchar(100) NOT NULL,
  `description` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accessibility`
--

LOCK TABLES `accessibility` WRITE;
/*!40000 ALTER TABLE `accessibility` DISABLE KEYS */;
INSERT INTO `accessibility` VALUES (1,'Step-free guest entrance','Guest entrance and parking'),(2,'Guest entrance wider than 32 inches','Guest entrance and parking'),(3,'Accessible parking spot','Guest entrance and parking'),(4,'Step-free path to the guest entrance','Guest entrance and parking'),(5,'Step-free bedroom access','Bathroom'),(6,'Bedroom entrance wider than 32 inches','Bathroom'),(7,'Step-free bathroom access','Bathroom'),(8,'Bathroom entrance wider than 32 inches','Bathroom'),(9,'Shower grab bar','Bathroom'),(10,'Toilet grab bar','Bathroom'),(11,'Step-free shower','Bathroom'),(12,'Shower or bath chair','Bathroom'),(13,'Ceiling or mobile hoist','Adaptive equipment'),(14,'Carpenter1994','Sed praesentium nulla;'),(15,'Doyle2','Deleniti consequatur labore.'),(16,'Johnston1952','Laboriosam unde odit ea.'),(17,'Booker6','Magnam quis. Inventore ut!'),(18,'Carvalho72','Nemo veniam. Iste nihil!'),(19,'Aguilera1993','Numquam eum. Voluptatem.'),(20,'Paris2022','Natus et. Voluptatum!');
/*!40000 ALTER TABLE `accessibility` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `address`
--

DROP TABLE IF EXISTS `address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `address` (
  `id` int NOT NULL AUTO_INCREMENT,
  `region_id` int NOT NULL,
  `country_id` int NOT NULL,
  `state_id` int NOT NULL,
  `city_id` int NOT NULL,
  `zip` int NOT NULL,
  `street_name` varchar(45) NOT NULL,
  `latitude` float NOT NULL,
  `longitude` float NOT NULL,
  `created_at` date NOT NULL,
  `updated_at` date NOT NULL,
  PRIMARY KEY (`id`),
  KEY `region_id_idx` (`region_id`),
  KEY `country_id_idx` (`country_id`),
  KEY `state_id_idx` (`state_id`),
  KEY `city_id_idx` (`city_id`),
  CONSTRAINT `city_id` FOREIGN KEY (`city_id`) REFERENCES `city` (`id`),
  CONSTRAINT `country_id` FOREIGN KEY (`country_id`) REFERENCES `country` (`id`),
  CONSTRAINT `region_id` FOREIGN KEY (`region_id`) REFERENCES `region` (`id`),
  CONSTRAINT `state_id` FOREIGN KEY (`state_id`) REFERENCES `state` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address`
--

LOCK TABLES `address` WRITE;
/*!40000 ALTER TABLE `address` DISABLE KEYS */;
INSERT INTO `address` VALUES (1,9,14,13,17,9499,'1630 Hidden Meadowview Lane',3,3,'1970-01-04','2013-04-16'),(2,4,20,3,18,3664,'754 New Social Pkwy',85,-73,'1972-10-30','2002-09-02'),(3,7,1,18,7,2856,'336 Highland Lane',73,73,'1970-01-08','1983-01-15'),(4,8,18,2,5,5763,'66 North Beachwood Street',55,11,'2015-12-22','1979-04-24'),(5,7,14,20,11,2810,'1795 Riddle Hill Pkwy',33,90,'2013-11-28','2005-09-01'),(6,6,14,16,18,2591,'3429 Farmview Lane',62,-42,'1986-10-06','2019-09-02'),(7,5,3,10,1,7091,'3040 South Sharp Hill Lane',67,146,'1994-11-08','1996-04-25'),(8,9,9,8,3,5324,'390 Hidden Hazelwood Parkway',-35,61,'2012-11-05','2019-01-16'),(9,3,12,9,2,4958,'3225 East Riverview Ave',-1,97,'2006-12-16','1976-08-17'),(10,1,20,7,1,4842,'19 White Rock Hill Street',-63,-159,'2021-01-30','2015-02-02'),(11,6,8,9,14,3399,'30 South Farmview Rd',-6,-6,'1971-10-01','1970-01-07'),(12,3,4,3,17,1408,'895 West Rock Hill Parkway',52,-114,'1979-04-23','2006-05-24'),(13,4,1,7,8,8582,'3269 West Beachwood Road',44,44,'1980-08-27','2004-05-18'),(14,8,17,1,1,3674,'807 Riddle Hill Blvd',-86,21,'1970-03-07','1979-09-19'),(15,1,19,20,2,2272,'82 South Parkwood Ct',4,135,'1971-02-19','1971-04-19'),(16,1,13,9,13,4263,'1816 N Highland Lane',65,148,'1986-08-08','1981-01-11'),(17,7,6,2,5,1944,'3324 New Church Avenue',-4,-4,'1970-01-25','1993-04-05'),(18,5,8,14,4,3453,'3630 Woodrow Ct',-5,-30,'2000-08-14','1979-12-11'),(19,5,3,19,3,7748,'19 Town Blvd',82,15,'1984-11-18','1971-07-24'),(20,9,13,4,3,7961,'602 Brentwood Hwy',71,-170,'1979-06-16','1996-10-01');
/*!40000 ALTER TABLE `address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `amenities`
--

DROP TABLE IF EXISTS `amenities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `amenities` (
  `id` int NOT NULL AUTO_INCREMENT,
  `feature_name` varchar(45) NOT NULL,
  `description` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `amenities`
--

LOCK TABLES `amenities` WRITE;
/*!40000 ALTER TABLE `amenities` DISABLE KEYS */;
INSERT INTO `amenities` VALUES (1,' 	Wifi','Dolor sed. Sed iste.'),(2,'Kitchen','Omnis delectus sunt non.'),(3,'Washer','Enim reprehenderit.'),(4,'Dryer','Doloribus at. Iste unde;'),(5,'Air conditioning','Est ipsa; suscipit voluptas.'),(6,'Heating','Rem omnis. Ipsa rerum.'),(7,'Dedicated workspace','Illo sunt labore...'),(8,' 	TV','Eum dolorem. Voluptatum unde.'),(9,'Hair dryer','Doloribus et in. Eum nisi.'),(10,' 	Iron','Facilis quam. Sed sint est.'),(11,'Pool','Eos dicta; error nostrum.'),(12,'Hot tub','Ut dolorem. Amet aut.'),(13,'Gym','Harum exercitationem sit;'),(14,'BBQ grill','Laboriosam sint.'),(15,'Indoor fireplace','Sit dolorem omnis repudiandae.'),(16,'Smoking allowed','Architecto consectetur aut.'),(17,'Beachfront','Ut facilis sed quia.'),(18,'Waterfront','Quos deserunt. Deserunt.'),(19,'Smoke alarm','Fuga consequatur aut quam.'),(20,'Carbon monoxide alarm','Asperiores numquam. Quasi.');
/*!40000 ALTER TABLE `amenities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `booking`
--

DROP TABLE IF EXISTS `booking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `booking` (
  `id` int NOT NULL AUTO_INCREMENT,
  `guest_id` int NOT NULL,
  `property_id` int NOT NULL,
  `checkin_date` date NOT NULL,
  `checkout_date` date NOT NULL,
  `price_per_night` decimal(10,2) NOT NULL,
  `children` int NOT NULL,
  `adults` int NOT NULL,
  `created_at` date NOT NULL,
  `updated_at` date NOT NULL,
  PRIMARY KEY (`id`),
  KEY `guest_id_idx` (`guest_id`),
  KEY `property_id_idx` (`property_id`),
  CONSTRAINT `guest_id` FOREIGN KEY (`guest_id`) REFERENCES `user` (`id`),
  CONSTRAINT `property_id` FOREIGN KEY (`property_id`) REFERENCES `property` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `booking`
--

LOCK TABLES `booking` WRITE;
/*!40000 ALTER TABLE `booking` DISABLE KEYS */;
INSERT INTO `booking` VALUES (1,16,3,'2007-03-28','1984-07-14',735.11,2,1,'1992-06-16','1998-03-04'),(2,4,19,'1991-08-12','2017-04-29',381.44,1,2,'1970-03-23','2010-06-12'),(3,6,12,'1970-09-02','1981-04-15',571.75,2,1,'2004-03-25','1997-11-25'),(4,3,18,'1982-01-21','1970-03-09',667.08,3,2,'2002-09-04','1987-10-20'),(5,8,2,'2011-03-28','2006-06-04',497.16,2,2,'2015-10-15','2016-07-27'),(6,5,3,'2013-09-02','1975-03-21',933.82,3,1,'1973-10-29','1985-02-04'),(7,3,14,'1971-07-21','1978-06-24',566.32,3,2,'2014-05-29','1998-05-07'),(8,5,4,'1972-07-03','1995-08-16',914.28,3,2,'1970-01-04','1970-07-17'),(9,16,9,'1983-05-12','2006-08-31',887.69,2,1,'1996-02-18','1994-10-18'),(10,2,1,'1993-03-10','1977-03-06',356.94,1,1,'1970-01-01','1986-08-25'),(11,9,18,'2018-09-06','1985-04-20',489.26,3,2,'1978-04-05','2007-10-15'),(12,3,6,'1970-01-31','1971-09-05',635.69,1,1,'1970-01-06','1979-07-11'),(13,18,7,'1981-12-10','2003-07-29',291.82,3,2,'1986-02-21','1973-09-26'),(14,18,6,'1971-08-15','2016-12-06',790.49,3,1,'1973-06-19','2019-08-12'),(15,17,10,'1970-01-14','2019-01-20',713.77,1,2,'2008-02-29','2012-01-14'),(16,13,9,'2012-04-27','1970-01-01',376.12,1,1,'1970-01-04','1978-11-07'),(17,17,9,'2000-09-09','1995-04-09',688.22,1,2,'1993-12-06','2004-12-01'),(18,16,14,'1980-07-15','2019-09-28',518.79,3,1,'2012-06-26','1994-06-15'),(19,12,1,'1970-01-06','2010-05-25',196.37,2,2,'1985-05-23','2005-05-12'),(20,8,2,'2001-08-26','2013-08-13',402.46,1,2,'2005-08-05','1981-07-19');
/*!40000 ALTER TABLE `booking` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `city`
--

DROP TABLE IF EXISTS `city`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `city` (
  `id` int NOT NULL AUTO_INCREMENT,
  `state_id` int NOT NULL,
  `name` varchar(45) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `state_id_city_idx` (`state_id`),
  CONSTRAINT `state_id_city` FOREIGN KEY (`state_id`) REFERENCES `state` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `city`
--

LOCK TABLES `city` WRITE;
/*!40000 ALTER TABLE `city` DISABLE KEYS */;
INSERT INTO `city` VALUES (1,18,'Abbeville'),(2,1,'Zuni'),(3,16,'Waukena'),(4,11,'Springboro'),(5,17,'Brockport'),(6,16,'Emigsville'),(7,20,'Abbotsford'),(8,10,'Brockton'),(9,12,'Indian Springs'),(10,12,'Harlowton'),(11,10,'Mabscott'),(12,6,'Abercrombie'),(13,6,'Brockway'),(14,15,'Aberdeen'),(15,7,'Emily'),(16,13,'Peck'),(17,13,'Indian Trail'),(18,8,'Brockwell'),(19,18,'Waukesha'),(20,14,'Harmon');
/*!40000 ALTER TABLE `city` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `country`
--

DROP TABLE IF EXISTS `country`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `country` (
  `id` int NOT NULL AUTO_INCREMENT,
  `region_id` int NOT NULL,
  `name` varchar(45) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `region_id_idx` (`region_id`),
  CONSTRAINT `region_id_cou` FOREIGN KEY (`region_id`) REFERENCES `region` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `country`
--

LOCK TABLES `country` WRITE;
/*!40000 ALTER TABLE `country` DISABLE KEYS */;
INSERT INTO `country` VALUES (1,1,'France'),(2,5,'Suriname'),(3,6,'Philippines'),(4,9,'Albania'),(5,8,'Austria'),(6,4,'Cuba'),(7,1,'Philippines'),(8,6,'Hungary'),(9,1,'Portugal'),(10,3,'Nigeria'),(11,3,'Zambia'),(12,1,'Finland'),(13,5,'United Kingdom'),(14,1,'Romania'),(15,3,'Malawi'),(16,8,'Iceland'),(17,2,'Denmark'),(18,1,'Gambia'),(19,2,'Jordan'),(20,6,'Japan');
/*!40000 ALTER TABLE `country` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `host`
--

DROP TABLE IF EXISTS `host`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `host` (
  `id` int NOT NULL AUTO_INCREMENT,
  `banking_details` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `host`
--

LOCK TABLES `host` WRITE;
/*!40000 ALTER TABLE `host` DISABLE KEYS */;
INSERT INTO `host` VALUES (1,'NL 84JD HH83 0098 0630'),(2,'IT 35W6 4343 1899 5BL8 32IA 18GG 9');
/*!40000 ALTER TABLE `host` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `host_language`
--

DROP TABLE IF EXISTS `host_language`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `host_language` (
  `id` int NOT NULL AUTO_INCREMENT,
  `host_id` int NOT NULL,
  `language_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `host_id_idx` (`host_id`),
  KEY `language_id_idx` (`language_id`),
  CONSTRAINT `host_id` FOREIGN KEY (`host_id`) REFERENCES `host` (`id`),
  CONSTRAINT `language_id` FOREIGN KEY (`language_id`) REFERENCES `language` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `host_language`
--

LOCK TABLES `host_language` WRITE;
/*!40000 ALTER TABLE `host_language` DISABLE KEYS */;
INSERT INTO `host_language` VALUES (1,1,4),(2,2,9),(3,2,14),(4,1,8),(5,2,3),(6,2,20),(7,1,4),(8,1,6),(9,1,12),(10,1,6),(11,2,7),(12,1,6),(13,1,18),(14,2,9),(15,1,5),(16,1,13),(17,1,20),(18,2,4),(19,2,12),(20,2,13);
/*!40000 ALTER TABLE `host_language` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `image`
--

DROP TABLE IF EXISTS `image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `image` (
  `id` int NOT NULL AUTO_INCREMENT,
  `property_id` int NOT NULL,
  `user` int NOT NULL,
  `image_name` varchar(45) NOT NULL,
  `file_location` varchar(45) NOT NULL,
  `create_at` date NOT NULL,
  `updated_at` date NOT NULL,
  PRIMARY KEY (`id`),
  KEY `property_id_ima_idx` (`property_id`),
  KEY `user_id_ima_idx` (`user`),
  CONSTRAINT `property_id_ima` FOREIGN KEY (`property_id`) REFERENCES `property` (`id`),
  CONSTRAINT `user_id_ima` FOREIGN KEY (`user`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `image`
--

LOCK TABLES `image` WRITE;
/*!40000 ALTER TABLE `image` DISABLE KEYS */;
INSERT INTO `image` VALUES (1,8,15,'aalyvcyqbf','http://andleti.no/ourarthi/ouforion/but/eveer','1970-02-24','1983-01-20'),(2,12,16,'jdzgwevdoe','https://meiteathi.dk/enbutan/orsho/stomeome/a','2004-08-12','1970-11-16'),(3,7,5,'cafrcsotdz','https://orarehenhad.tr/ourevend/ndwabut/era/a','2003-12-14','1984-11-03'),(4,11,10,'tvxmfrnukk','http://yo.isth.fr/th/thtedte/ndwaoulou.gif','2016-03-31','1970-02-16'),(5,13,20,'tqiwpkausp','http://sewas.de/ndalent/atbut/toarehad/edanda','2021-12-08','1970-04-04'),(6,17,19,'lgebtjfawp','http://wisi.enveveere.fr/eve/witeshi/hadwaour','1997-11-10','2010-10-27'),(7,3,14,'ovwaibbixz','http://herin.il/eaver/ouhese/ed/tofor.png','1993-11-29','1970-01-09'),(8,17,4,'chhihpaqee','https://nadufe.hishotedare.se/inghinth/itseti','1970-01-08','1970-02-08'),(9,1,2,'nfwjeebugm','https://ereith.tr/ted/allnotes/edtees/hati.gi','1996-11-18','1978-11-24'),(10,12,7,'xsvrzglobu','http://ra.buthisngar.at/hener/shoenhe/ome/tio','1975-06-14','1974-07-22'),(11,1,10,'dkhinkigdi','http://no.eraevehating.cz/oreden/anan.gif','2001-01-27','1970-02-23'),(12,8,11,'adjblvnart','http://enhenversho.hu/onthion/alare/isthe/all','1986-09-10','1991-04-05'),(13,15,20,'qjqeeivajp','https://oultedera.ca/ome/hather.bmp','2007-04-07','1970-03-19'),(14,9,1,'jcwpmuktqd','http://ze.esouheti.com/notouere/his/ateaenuld','1997-10-09','1995-02-04'),(15,19,16,'eolxcxoanp','http://kowada.ithherwitfor.hu/evesehis/titoed','1971-06-23','1970-03-13'),(16,20,16,'fbfduyxsxb','https://lu.omevertio.hu/orteere/notntsho/teea','1970-01-02','1998-06-18'),(17,12,8,'kzosapxseq','http://fego.omeverand.mx/her/haton.bmp','1971-10-13','1997-02-07'),(18,2,12,'uhmyquhjkw','http://hinoulallfor.dk/not/hen/hi/eraou.gif','1983-02-05','1987-12-12'),(19,1,5,'ftwuembyuf','http://devuru.tohaingit.gr/hi/youhaterauld.pn','1970-12-28','2018-04-16'),(20,7,14,'verjdswscp','http://nijodi.eswasyouit.au/hataswa/aretheat/','1994-10-14','1970-01-10');
/*!40000 ALTER TABLE `image` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `language`
--

DROP TABLE IF EXISTS `language`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `language` (
  `id` int NOT NULL AUTO_INCREMENT,
  `language_name` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `language`
--

LOCK TABLES `language` WRITE;
/*!40000 ALTER TABLE `language` DISABLE KEYS */;
INSERT INTO `language` VALUES (1,'Serbian'),(2,'Indonesian'),(3,'Twi'),(4,'Tsonga'),(5,'Twi'),(6,'Xhosa'),(7,'Kongo'),(8,'Aragonese'),(9,'Armenian'),(10,'Oromo'),(11,'Esperanto'),(12,'Tsonga'),(13,'Kazakh'),(14,'Zulu'),(15,'Bulgarian'),(16,'Zulu'),(17,'Tswana'),(18,'Assamese'),(19,'Sardinian'),(20,'Urdu');
/*!40000 ALTER TABLE `language` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payments`
--

DROP TABLE IF EXISTS `payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payments` (
  `id` int NOT NULL AUTO_INCREMENT,
  `booking_id` int NOT NULL,
  `total_price` decimal(10,2) NOT NULL,
  `payment_date` date NOT NULL,
  PRIMARY KEY (`id`),
  KEY `booking_id_pay_idx` (`booking_id`),
  CONSTRAINT `booking_id_pay` FOREIGN KEY (`booking_id`) REFERENCES `booking` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payments`
--

LOCK TABLES `payments` WRITE;
/*!40000 ALTER TABLE `payments` DISABLE KEYS */;
INSERT INTO `payments` VALUES (1,2,424.52,'1996-09-09'),(2,14,640.60,'2009-02-17'),(3,15,483.20,'1970-01-07'),(4,12,284.72,'2000-02-16'),(5,16,988.19,'1988-11-29'),(6,7,461.85,'2020-08-07'),(7,9,492.06,'1972-03-12'),(8,7,640.58,'2003-09-08'),(9,8,845.59,'1990-08-18'),(10,12,192.18,'2001-08-13'),(11,20,224.18,'2020-09-03'),(12,17,529.90,'1970-01-10'),(13,14,561.89,'1970-10-26'),(14,6,228.63,'1986-01-13'),(15,3,985.54,'2004-01-27'),(16,20,834.94,'1995-01-25'),(17,16,828.53,'1989-07-31'),(18,12,136.80,'1971-02-22'),(19,6,373.57,'1970-01-07'),(20,11,276.74,'1991-08-06');
/*!40000 ALTER TABLE `payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `property`
--

DROP TABLE IF EXISTS `property`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `property` (
  `id` int NOT NULL AUTO_INCREMENT,
  `host_id` int NOT NULL,
  `property_type_id` int NOT NULL,
  `room_type_id` int NOT NULL,
  `address_id` int NOT NULL,
  `bed_type` varchar(45) NOT NULL,
  `occupants` int NOT NULL,
  `bathrooms` int NOT NULL,
  `bedrooms` int NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `description` varchar(45) NOT NULL,
  `latitude` float NOT NULL,
  `longitute` float NOT NULL,
  PRIMARY KEY (`id`),
  KEY `host_id_prop_idx` (`host_id`),
  KEY `property_type_id_prop_idx` (`property_type_id`),
  KEY `room_type_id_idx` (`room_type_id`),
  KEY `address_id_prop_idx` (`address_id`),
  CONSTRAINT `address_id_prop` FOREIGN KEY (`address_id`) REFERENCES `address` (`id`),
  CONSTRAINT `host_id_prop` FOREIGN KEY (`host_id`) REFERENCES `host` (`id`),
  CONSTRAINT `property_type_id_prop` FOREIGN KEY (`property_type_id`) REFERENCES `property_type` (`id`),
  CONSTRAINT `room_type_id` FOREIGN KEY (`room_type_id`) REFERENCES `room_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `property`
--

LOCK TABLES `property` WRITE;
/*!40000 ALTER TABLE `property` DISABLE KEYS */;
INSERT INTO `property` VALUES (1,2,1,1,12,'King',1,2,3,645.92,'Nostrum qui. Sit ut.',3,3),(2,1,4,3,14,'Queen',1,2,2,934.68,'Error voluptates accusantium.',9,-1236280),(3,1,2,4,9,'Twin',4,1,3,906.69,'Autem repudiandae quos.',-9,174658),(4,1,2,1,8,'Full mattress',2,1,2,946.57,'Voluptas magni. Incidunt quia;',24,6369950),(5,1,1,4,6,'Queen',2,2,1,264.20,'Quod delectus.',40,2676190),(6,2,2,4,10,'Queen',3,1,2,778.64,'Exercitationem consectetur.',56,-5611340),(7,2,3,2,13,'Queen',4,2,2,732.03,'Tempore error facere...',-52,1031270),(8,2,1,4,15,'Twin',2,1,1,916.31,'Maiores adipisci.',56,56),(9,1,2,3,12,'Full mattress',3,1,2,252.68,'Iusto maiores dicta beatae.',84,84),(10,2,1,3,17,'Twin',5,1,1,636.24,'Ratione obcaecati. Sint fugit.',-87,1588330),(11,2,3,4,2,'Full mattress',5,1,3,735.92,'Aut eos ducimus qui non.',76,627),(12,2,3,1,16,'Twin',1,2,3,624.98,'Et explicabo accusantium et.',64,3826260),(13,1,4,1,11,'Full mattress',5,2,1,791.08,'Facere et amet. Iure at.',-38,8143130),(14,2,3,3,19,'King',3,1,1,435.20,'Molestias temporibus.',19,-9933400),(15,1,2,4,17,'Full mattress',4,2,3,794.84,'Natus perspiciatis.',84,-8360980),(16,2,4,4,16,'King',4,1,2,548.72,'Perferendis sequi. Est omnis.',47,1055),(17,2,4,4,20,'Queen',5,2,2,156.87,'Accusantium incidunt. Ipsam.',-47,-9930730),(18,2,4,2,4,'King',5,1,2,269.41,'Iste quia; quidem veniam.',1,7849770),(19,2,3,3,4,'King',2,2,1,287.91,'Voluptatem molestiae unde.',-27,3646230),(20,2,1,3,2,'Full mattress',3,2,1,908.28,'Cumque est voluptatem omnis.',26,4209);
/*!40000 ALTER TABLE `property` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `property_accessibility`
--

DROP TABLE IF EXISTS `property_accessibility`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `property_accessibility` (
  `id` int NOT NULL AUTO_INCREMENT,
  `accessibility_id` int NOT NULL,
  `property_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `accessibility_id_idx` (`accessibility_id`),
  KEY `property_id_acc_idx` (`property_id`),
  CONSTRAINT `accessibility_id` FOREIGN KEY (`accessibility_id`) REFERENCES `accessibility` (`id`),
  CONSTRAINT `property_id_acc` FOREIGN KEY (`property_id`) REFERENCES `property` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `property_accessibility`
--

LOCK TABLES `property_accessibility` WRITE;
/*!40000 ALTER TABLE `property_accessibility` DISABLE KEYS */;
INSERT INTO `property_accessibility` VALUES (1,16,19),(2,1,5),(3,10,20),(4,4,3),(5,12,19),(6,3,5),(7,16,19),(8,18,1),(9,17,18),(10,20,2),(11,11,4),(12,7,18),(13,20,1),(14,8,8),(15,15,12),(16,20,4),(17,12,8),(18,18,20),(19,12,13),(20,12,15);
/*!40000 ALTER TABLE `property_accessibility` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `property_amenities`
--

DROP TABLE IF EXISTS `property_amenities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `property_amenities` (
  `id` int NOT NULL AUTO_INCREMENT,
  `property_id` int NOT NULL,
  `amenity_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `property_id_ame_idx` (`property_id`),
  KEY `amenity_id_idx` (`amenity_id`),
  CONSTRAINT `amenity_id` FOREIGN KEY (`amenity_id`) REFERENCES `amenities` (`id`),
  CONSTRAINT `property_id_ame` FOREIGN KEY (`property_id`) REFERENCES `property` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `property_amenities`
--

LOCK TABLES `property_amenities` WRITE;
/*!40000 ALTER TABLE `property_amenities` DISABLE KEYS */;
INSERT INTO `property_amenities` VALUES (1,3,10),(2,12,3),(3,1,3),(4,2,1),(5,5,16),(6,7,1),(7,14,17),(8,13,20),(9,11,8),(10,17,7),(11,6,7),(12,17,4),(13,18,3),(14,20,1),(15,2,15),(16,16,16),(17,7,7),(18,18,4),(19,1,6),(20,14,16);
/*!40000 ALTER TABLE `property_amenities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `property_type`
--

DROP TABLE IF EXISTS `property_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `property_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `type_name` varchar(100) NOT NULL,
  `description` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `property_type`
--

LOCK TABLES `property_type` WRITE;
/*!40000 ALTER TABLE `property_type` DISABLE KEYS */;
INSERT INTO `property_type` VALUES (1,'apartment','rented residential units that are part of a building.'),(2,'duplex','a single structure with two private living spaces that share a space.'),(3,'single-family home','stand alone unit fit for a family.'),(4,'villa','unit with its own garage with internal access.');
/*!40000 ALTER TABLE `property_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `region`
--

DROP TABLE IF EXISTS `region`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `region` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `region`
--

LOCK TABLES `region` WRITE;
/*!40000 ALTER TABLE `region` DISABLE KEYS */;
INSERT INTO `region` VALUES (1,'Europe'),(2,'Asia'),(3,'Africa'),(4,'South America'),(5,'North America'),(6,'Antatica'),(7,'Ociania'),(8,'Europe'),(9,'Asia');
/*!40000 ALTER TABLE `region` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `review`
--

DROP TABLE IF EXISTS `review`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `review` (
  `id` int NOT NULL AUTO_INCREMENT,
  `booking_id` int NOT NULL,
  `property_id` int NOT NULL,
  `guest_id` int NOT NULL,
  `rating` int NOT NULL,
  `comment` varchar(45) NOT NULL,
  `created_at` date NOT NULL,
  PRIMARY KEY (`id`),
  KEY `customer_id_idx` (`guest_id`),
  KEY `property_id_idx` (`property_id`),
  KEY `booking_id_rev_idx` (`booking_id`),
  CONSTRAINT `booking_id_rev` FOREIGN KEY (`booking_id`) REFERENCES `booking` (`id`),
  CONSTRAINT `guest_id_rev` FOREIGN KEY (`guest_id`) REFERENCES `user` (`id`),
  CONSTRAINT `property_id_rev` FOREIGN KEY (`property_id`) REFERENCES `property` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `review`
--

LOCK TABLES `review` WRITE;
/*!40000 ALTER TABLE `review` DISABLE KEYS */;
INSERT INTO `review` VALUES (1,13,12,16,4,'Aperiam quis. Asperiores.','1991-03-30'),(2,8,15,2,3,'Accusamus quis. Fuga ea qui.','2014-02-13'),(3,11,20,14,3,'Quis vel; ullam aliquid.','1992-05-05'),(4,10,5,12,3,'Sint atque sit aut ratione.','1992-09-11'),(5,11,1,4,4,'Perspiciatis laboriosam et.','1980-11-02'),(6,14,20,6,4,'Necessitatibus voluptate.','1970-04-10'),(7,3,10,9,3,'Libero sit. In fugiat est.','1994-08-10'),(8,5,20,7,5,'Dolor quisquam omnis.','1970-01-05'),(9,3,12,1,2,'Itaque quibusdam.','1979-10-14'),(10,7,17,16,3,'Voluptatem necessitatibus.','1976-07-16'),(11,3,4,5,2,'Sunt consequatur. Explicabo.','1970-04-25'),(12,8,3,18,2,'Aut in. Ut sed.','1970-03-20'),(13,6,7,8,2,'Soluta suscipit omnis...','1977-10-19'),(14,10,18,14,4,'In non. Assumenda aut!','1971-10-19'),(15,4,9,15,3,'Quidem numquam unde id.','1975-11-11'),(16,4,8,3,3,'Est culpa omnis. Voluptas.','1970-01-04'),(17,11,15,7,2,'Quidem omnis aut sunt.','2007-01-08'),(18,6,4,14,4,'Molestias at. Et aliquid.','1994-08-15'),(19,15,20,8,4,'Rerum sit iure porro.','1970-01-05'),(20,20,3,17,5,'Error sed. Sequi ut!','1987-07-30');
/*!40000 ALTER TABLE `review` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `room_type`
--

DROP TABLE IF EXISTS `room_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `room_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `type_name` varchar(100) NOT NULL,
  `description` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `room_type`
--

LOCK TABLES `room_type` WRITE;
/*!40000 ALTER TABLE `room_type` DISABLE KEYS */;
INSERT INTO `room_type` VALUES (1,'single room','room with just a single bed for just one adult in transit.'),(2,'standard room','room with double bed, tv and fit for a couple.'),(3,'executive room','room with all accessories and typically with a great view.'),(4,'presidential room','A place all to yourself.');
/*!40000 ALTER TABLE `room_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `state`
--

DROP TABLE IF EXISTS `state`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `state` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `state`
--

LOCK TABLES `state` WRITE;
/*!40000 ALTER TABLE `state` DISABLE KEYS */;
INSERT INTO `state` VALUES (1,'Alabama'),(2,'New York'),(3,'North Carolina'),(4,'Indiana'),(5,'Michigan'),(6,'Delaware'),(7,'Arkansas'),(8,'Wyoming'),(9,'Nevada'),(10,'Ohio'),(11,'Minnesota'),(12,'Oregon'),(13,'Arizona'),(14,'Florida'),(15,'North Carolina'),(16,'Virginia'),(17,'New Mexico'),(18,'Louisiana'),(19,'Wyoming'),(20,'Arkansas');
/*!40000 ALTER TABLE `state` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_type_id` int NOT NULL,
  `username` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `first_name` varchar(45) NOT NULL,
  `last_name` varchar(45) NOT NULL,
  `gender` varchar(45) NOT NULL,
  `date_of_birth` date NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_type_id_idx` (`user_type_id`),
  CONSTRAINT `user_type_id` FOREIGN KEY (`user_type_id`) REFERENCES `user_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,1,'Diego46','Elene.N_Kline1@example.com','CSNTL1114X','Elene','Sheridan','Male','1999-03-01'),(2,2,'Abel447','GerardoBivins@example.com','AHDLD4324V','Lasonya','Galvan','Female','1976-09-23'),(3,2,'Mcdowell2002','afxrgujs4@nowhere.com','ENLPK4147Q','Shantae','Moffett','Male','1986-05-09'),(4,2,'Moises2021','Alves@example.com','ARRGI3129I','Adrienne','Pryor','Female','1980-11-09'),(5,1,'Desmond7','Loomis8@example.com','YTOLN7967C','Chelsie','Madsen','Male','1957-01-02'),(6,1,'Aiken123','RaymundoScales275@example.com','AMYHI9372S','Veronique','Vang','Female','1990-12-04'),(7,2,'Mackay52','xizuhaje.zakt@example.com','INCTN8185S','Gerard','Sherman','Female','1963-08-02'),(8,1,'Kenneth489','IsaacDollar7@example.com','GBWAL7316E','Deidre','Dell','Male','1995-05-01'),(9,2,'Deann1973','ArdenOutlaw@example.com','PZICI7532S','Antoine','Moffitt','Male','1953-01-03'),(10,1,'Sheridan4','ArthurClough@example.com','GRBAB7982A','Marion','Vanhoose','Male','1986-01-26'),(11,1,'Samira593','Evers@nowhere.com','KDGFB6122S','Cheree','Boles','Male','1999-03-14'),(12,2,'Abe1995','bmmo3@example.com','QIRHJ3754E','Delphine','Puckett','Male','2000-06-21'),(13,1,'Bridget896','CoyAcker62@nowhere.com','GXRAS6523U','Juan','Collins','Female','1965-06-12'),(14,1,'Fowler866','Latrice.D_King869@example.com','EARKJ9237P','Garrett','Mohr','Female','1989-05-11'),(15,2,'Chanda2014','JameBarbosa36@example.com','XOULI2843E','Rubie','Sherrill','Male','1957-08-08'),(16,1,'Allyson339','Berniece.OCreech@nowhere.com','CHITJ8922A','Addie','Bolin','Male','1958-10-01'),(17,1,'Roseanne2016','Sturgeon@example.com','NSCKK9395Z','Lamont','Galvez','Male','1997-06-03'),(18,2,'Florez1962','dijxhb69@example.com','HZHKD5974I','Migdalia','Puente','Female','1994-04-13'),(19,2,'Romaine72','VerlineFaison@example.com','XCLBE4311G','Humberto','Colon','Male','1968-05-15'),(20,1,'Stacee2012','Zoila.Riggins@nowhere.com','BJNLZ7786H','Bobbie','Janssen','Male','1997-11-03');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_type`
--

DROP TABLE IF EXISTS `user_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `type` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_type`
--

LOCK TABLES `user_type` WRITE;
/*!40000 ALTER TABLE `user_type` DISABLE KEYS */;
INSERT INTO `user_type` VALUES (1,'host'),(2,'guest');
/*!40000 ALTER TABLE `user_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'airbnb'
--

--
-- Dumping routines for database 'airbnb'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-06-03 19:42:17
