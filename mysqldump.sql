-- MySQL dump 10.13  Distrib 5.7.29, for Linux (x86_64)
--
-- Host: localhost    Database: ApplicationTracking
-- ------------------------------------------------------
-- Server version	5.7.29

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
-- Table structure for table `Applications`
--

DROP TABLE IF EXISTS `Applications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Applications` (
  `ApplicationId` int(11) NOT NULL AUTO_INCREMENT,
  `PersonId` int(11) NOT NULL,
  `JobId` int(11) NOT NULL,
  `ApplicationDate` datetime DEFAULT NULL,
  PRIMARY KEY (`ApplicationId`),
  KEY `PersonId` (`PersonId`),
  KEY `JobId` (`JobId`),
  CONSTRAINT `Applications_ibfk_1` FOREIGN KEY (`PersonId`) REFERENCES `Persons` (`PersonId`),
  CONSTRAINT `Applications_ibfk_2` FOREIGN KEY (`JobId`) REFERENCES `Jobs` (`JobId`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Applications`
--

LOCK TABLES `Applications` WRITE;
/*!40000 ALTER TABLE `Applications` DISABLE KEYS */;
INSERT INTO `Applications` VALUES (1,6,3,'2020-04-23 00:00:00'),(2,3,4,'2020-04-20 00:00:00'),(3,4,4,'2020-04-20 00:00:00'),(4,9,3,'2020-04-27 00:00:00'),(5,3,4,'2020-04-27 00:00:00'),(6,6,4,'2020-04-22 00:00:00'),(7,9,1,'2020-04-26 00:00:00'),(8,3,3,'2020-04-20 00:00:00'),(9,8,2,'2020-04-22 00:00:00'),(10,9,3,'2020-04-20 00:00:00'),(11,8,5,'2020-04-22 00:00:00'),(12,9,4,'2020-04-27 00:00:00'),(13,7,5,'2020-04-22 00:00:00'),(14,4,2,'2020-04-24 00:00:00'),(15,1,1,'2020-04-23 00:00:00'),(16,5,5,'2020-04-20 00:00:00'),(17,1,1,'2020-04-26 00:00:00'),(18,2,1,'2020-04-22 00:00:00'),(19,10,5,'2020-04-20 00:00:00'),(20,2,3,'2020-04-22 00:00:00'),(21,9,2,'2020-04-24 00:00:00'),(22,10,1,'2020-04-24 00:00:00'),(23,8,1,'2020-04-20 00:00:00'),(24,10,2,'2020-04-20 00:00:00'),(25,2,5,'2020-04-27 00:00:00');
/*!40000 ALTER TABLE `Applications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Jobs`
--

DROP TABLE IF EXISTS `Jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Jobs` (
  `JobId` int(11) NOT NULL AUTO_INCREMENT,
  `Title` varchar(255) DEFAULT NULL,
  `Department` varchar(255) DEFAULT NULL,
  `HiringManager` varchar(255) DEFAULT NULL,
  `PostDate` datetime DEFAULT NULL,
  PRIMARY KEY (`JobId`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Jobs`
--

LOCK TABLES `Jobs` WRITE;
/*!40000 ALTER TABLE `Jobs` DISABLE KEYS */;
INSERT INTO `Jobs` VALUES (1,'Marketing Specialist','Software & Computer Services','Karoline MacGyver Jr.','2020-04-15 00:00:00'),(2,'Senior Construction Producer','Nonequity Investment Instruments','Ms. Del Borer','2020-04-16 00:00:00'),(3,'Forward Marketing Administrator','Technology Hardware & Equipment','Javier Runte','2020-02-28 00:00:00'),(4,'International Accounting Specialist','Aerospace & Defense','Lorelei Ratke','2020-04-10 00:00:00'),(5,'Manufacturing Engineer','Aerospace & Defense','Ron Botsford','2020-03-17 00:00:00');
/*!40000 ALTER TABLE `Jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Persons`
--

DROP TABLE IF EXISTS `Persons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Persons` (
  `PersonId` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(255) NOT NULL,
  `Email` varchar(255) DEFAULT NULL,
  `Address` varchar(255) DEFAULT NULL,
  `Phone` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`PersonId`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Persons`
--

LOCK TABLES `Persons` WRITE;
/*!40000 ALTER TABLE `Persons` DISABLE KEYS */;
INSERT INTO `Persons` VALUES (1,'Stacee Upton','moon.rosenbaum@labadie.biz','417 Ted Terrace Elianaport WV 55398-6418','1-808-576-8366'),(2,'Altha Watsica','ilona@harber.com','Apt. 495 29498 Little Run South Reedland MA 84427','1-379-106-5099'),(3,'Renato Kihn V','cary@wolff.name','Suite 844 70479 Gabriel Greens Funkmouth AZ 84327','(199) 932-3852'),(4,'Mrs. Lavonia Breitenberg','jewell@schoen.co','24850 Joslyn Estate South Saundra MA 64158','458-272-2255'),(5,'Dr. Thurman Torp','mitzie@friesen.co','Suite 939 85230 Bashirian Mount Port Eddie PA 34305','(784) 366-4469'),(6,'Gema Bechtelar','trina_stiedemann@boyerbins.name','Suite 934 8172 Jacobs Ridge Lake Lucio NE 91784-5485','1-363-446-6054'),(7,'Thaddeus Mueller I','mika.legros@senger.biz','Suite 652 60934 Gerardo Ports Port Roselle FL 97148-6065','(219) 905-1748'),(8,'Dr. Beau Runte','bruno.braun@wiegand.info','1192 Swift Circle Myeshamouth MN 19195-2467','114-688-8347'),(9,'Jordan Ondricka','aldo@batzkonopelski.com','Suite 403 904 Stark Plain New Neilberg FL 79466','873.501.2643'),(10,'Laraine Hackett','shelia_kuhlman@botsford.name','Suite 670 3049 Sachiko Parks Laraemouth MN 97682-8480','810.994.9302');
/*!40000 ALTER TABLE `Persons` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-04-28  1:21:38
