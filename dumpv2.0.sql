-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: test
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
-- Table structure for table `draft`
--

DROP TABLE IF EXISTS `draft`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `draft` (
  `draftId` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) NOT NULL,
  `messageId` int(11) NOT NULL,
  `isRead` tinyint(1) NOT NULL,
  `createdDate` datetime DEFAULT NULL,
  `toEmailIds` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`draftId`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `draft`
--

LOCK TABLES `draft` WRITE;
/*!40000 ALTER TABLE `draft` DISABLE KEYS */;
INSERT INTO `draft` VALUES (2,3,7,1,'2017-08-10 16:56:50','A@gmail.com'),(3,1,8,1,'2017-08-11 16:56:50','B@gmail.com'),(4,1,8,1,'2017-08-11 16:56:50','B@gmail.com');
/*!40000 ALTER TABLE `draft` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `employee` (
  `idEmployee` int(11) NOT NULL,
  `EmpName` varchar(45) DEFAULT NULL,
  `Salary` varchar(45) DEFAULT NULL,
  `managerId` int(11) DEFAULT NULL,
  PRIMARY KEY (`idEmployee`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` VALUES (1,'Ram','100000',NULL),(2,'Shyam','50000',1),(3,'Mohan','40000',2),(4,'Rohan','75000',1),(5,'Chavan','65000',4);
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inbox`
--

DROP TABLE IF EXISTS `inbox`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inbox` (
  `inboxId` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) NOT NULL,
  `messageId` int(11) NOT NULL,
  `isRead` tinyint(1) NOT NULL,
  `fromEmailId` varchar(255) DEFAULT NULL,
  `createdDate` datetime DEFAULT NULL,
  `threadID` int(11) DEFAULT NULL,
  PRIMARY KEY (`inboxId`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inbox`
--

LOCK TABLES `inbox` WRITE;
/*!40000 ALTER TABLE `inbox` DISABLE KEYS */;
INSERT INTO `inbox` VALUES (1,1,1,1,'B@gmail.com','2017-12-10 16:56:50',1),(4,2,2,1,'C@gmail.com','2017-12-10 23:18:51',4),(5,2,2,1,'C@gmail.com','2017-12-10 23:23:11',5),(6,3,1,0,'B@gmail.com','2017-12-11 01:59:42',6),(9,2,4,0,'C@gmail.com','2017-12-12 19:21:07',9),(12,2,6,0,'C@gmail.com','2017-12-12 21:11:39',12),(13,3,7,0,'B@gmail.com','2017-12-12 21:14:15',13),(14,2,2,1,'C@gmail.com','2017-12-14 22:15:21',14),(15,3,8,0,'B@gmail.com','2017-12-14 22:26:18',15),(16,2,9,0,'C@gmail.com','2017-12-14 22:42:04',16),(17,2,10,0,'C@gmail.com','2017-12-15 20:11:44',1),(18,2,11,0,'C@gmail.com','2017-12-15 20:18:31',18),(19,2,12,0,'C@gmail.com','2017-12-15 20:22:34',19),(20,2,13,0,'C@gmail.com','2017-12-15 20:36:06',20),(21,3,14,0,'B@gmail.com','2017-12-15 20:47:31',21),(22,3,15,0,'B@gmail.com','2017-12-15 22:01:20',1),(23,3,16,0,'B@gmail.com','2017-12-15 22:02:24',1),(24,2,17,0,'C@gmail.com','2017-12-15 22:04:12',1),(25,2,18,0,'C@gmail.com','2017-12-15 22:05:17',25),(26,3,19,0,'B@gmail.com','2017-12-15 22:12:58',25),(27,2,20,0,'C@gmail.com','2017-12-15 22:17:25',25),(28,4,21,0,'F@gmail.com','2017-12-16 17:52:51',28),(29,2,22,0,'D@gmail.com','2017-12-16 17:55:22',28);
/*!40000 ALTER TABLE `inbox` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `message`
--

DROP TABLE IF EXISTS `message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `message` (
  `messageId` int(11) NOT NULL AUTO_INCREMENT,
  `subject` varchar(100) NOT NULL,
  `message` varchar(4000) NOT NULL,
  `createdDate` datetime DEFAULT NULL,
  PRIMARY KEY (`messageId`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `message`
--

LOCK TABLES `message` WRITE;
/*!40000 ALTER TABLE `message` DISABLE KEYS */;
INSERT INTO `message` VALUES (1,'Check In!','Hello How are you?','2017-12-11 01:59:42'),(2,'Check In!','Hi, I am fine. How about you?','2017-12-12 19:15:21'),(3,'Check In!','I am fine too. How is work?','2017-12-12 19:20:11'),(4,'Check In!','Work is ok. How about you?','2017-12-12 19:21:07'),(5,'Check In!','Fine on my side too!','2017-12-12 20:10:34'),(6,'Check In!','Cooooool','2017-12-12 21:11:39'),(7,'Check In!','Too Cooooool!!!','2017-12-12 21:14:15'),(8,'Check In!','Too Cooooool!!!','2017-12-14 22:26:18'),(9,'Check In!','Too Cooooool!!! \nWhat next?','2017-12-14 22:42:04'),(10,'Testing!','This is my first test message!!!','2017-12-15 20:11:44'),(11,'Testing!','This is my first test message!!!','2017-12-15 20:18:31'),(12,'Testing!','This is my second test message!!!','2017-12-15 20:22:34'),(13,'Testing!','This is my second test message!!!','2017-12-15 20:36:06'),(14,'Testing!','This is my second test message!!!\nOn Fri, Dec 15, 2017 12:00 AM email Id: C@gmail.com wrote: \n|||This is my first test message!!!','2017-12-15 20:47:31'),(15,'Testing!','This is my third test message!!!\nOn Fri, Dec 15, 2017 12:00 AM email Id: C@gmail.com wrote: \n|||This is my first test message!!!','2017-12-15 22:01:20'),(16,'Testing!','This is my fourth test message!!!','2017-12-15 22:02:24'),(17,'Testing!','This is my fourth test message!!!\nOn Fri, Dec 15, 2017 12:00 AM email Id: B@gmail.com wrote: \n|||This is my third test message!!!\nOn Fri, Dec 15, 2017 12:00 AM email Id: C@gmail.com wrote: \n|||This is my first test message!!!','2017-12-15 22:04:12'),(18,'Testing!','This is my fifth non thread test message!!!','2017-12-15 22:05:17'),(19,'Testing!','This is my first added thread test message!!!\nOn Fri, Dec 15, 2017 12:00 AM email Id: C@gmail.com wrote: \n|||This is my fifth non thread test message!!!','2017-12-15 22:12:58'),(20,'Testing!','This is my tenth added thread test message!!!\nOn Fri, Dec 15, 2017 10:12 PM email Id: B@gmail.com wrote: \n|||This is my first added thread test message!!!\nOn Fri, Dec 15, 2017 12:00 AM email Id: C@gmail.com wrote: \n|||This is my fifth non thread test message!!!','2017-12-15 22:17:25'),(21,'Testing!','This is my test  added thread test message!!!','2017-12-16 17:52:51'),(22,'Testing!','This is my followup thread test message!!!\nOn Sat, Dec 16, 2017 05:52 PM email Id: F@gmail.com wrote: \n|||This is my test  added thread test message!!!','2017-12-16 17:55:22');
/*!40000 ALTER TABLE `message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `people`
--

DROP TABLE IF EXISTS `people`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `people` (
  `ID` int(11) NOT NULL,
  `NAME` varchar(20) DEFAULT NULL,
  `AGE` int(11) DEFAULT NULL,
  `CLASS` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `people`
--

LOCK TABLES `people` WRITE;
/*!40000 ALTER TABLE `people` DISABLE KEYS */;
/*!40000 ALTER TABLE `people` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `people1`
--

DROP TABLE IF EXISTS `people1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `people1` (
  `ID` int(11) NOT NULL,
  `NAME` varchar(20) DEFAULT NULL,
  `AGE` int(11) DEFAULT NULL,
  `CLASS` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `people1`
--

LOCK TABLES `people1` WRITE;
/*!40000 ALTER TABLE `people1` DISABLE KEYS */;
INSERT INTO `people1` VALUES (1,'Ram',12,5),(2,'Shyam',17,10),(3,'Hari',8,1);
/*!40000 ALTER TABLE `people1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sent`
--

DROP TABLE IF EXISTS `sent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sent` (
  `sentId` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) NOT NULL,
  `messageId` int(11) NOT NULL,
  `isRead` tinyint(1) NOT NULL,
  `createdDate` datetime DEFAULT NULL,
  `toEmailIds` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`sentId`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sent`
--

LOCK TABLES `sent` WRITE;
/*!40000 ALTER TABLE `sent` DISABLE KEYS */;
INSERT INTO `sent` VALUES (2,2,6,1,'2017-12-10 16:56:50','F@gmail.com'),(3,2,1,1,'2017-12-11 01:59:42','C@gmail.com'),(4,3,2,1,'2017-12-12 19:15:21','B@gmail.com'),(5,2,3,1,'2017-12-12 19:20:11','C@gmail.com'),(6,3,4,1,'2017-12-12 19:21:07','B@gmail.com'),(7,2,6,1,'2017-12-10 16:56:50','F@gmail.com'),(8,2,5,1,'2017-12-12 20:10:34','C@gmail.com'),(9,3,6,1,'2017-12-12 21:11:39','B@gmail.com'),(10,2,8,1,'2017-12-14 22:26:18','C@gmail.com'),(11,3,9,1,'2017-12-14 22:42:04','B@gmail.com'),(12,3,10,1,'2017-12-15 20:11:44','B@gmail.com'),(13,3,11,1,'2017-12-15 20:18:31','B@gmail.com'),(14,3,12,1,'2017-12-15 20:22:34','B@gmail.com'),(15,3,13,1,'2017-12-15 20:36:06','B@gmail.com'),(16,2,14,1,'2017-12-15 20:47:31','C@gmail.com'),(17,2,15,1,'2017-12-15 22:01:20','C@gmail.com'),(18,2,16,1,'2017-12-15 22:02:24','C@gmail.com'),(19,3,17,1,'2017-12-15 22:04:12','B@gmail.com'),(20,3,18,1,'2017-12-15 22:05:17','B@gmail.com'),(21,2,19,1,'2017-12-15 22:12:58','C@gmail.com'),(22,3,20,1,'2017-12-15 22:17:25','B@gmail.com'),(23,6,21,1,'2017-12-16 17:52:51','D@gmail.com'),(24,4,22,1,'2017-12-16 17:55:22','B@gmail.com');
/*!40000 ALTER TABLE `sent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `students`
--

DROP TABLE IF EXISTS `students`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `students` (
  `ID` int(11) NOT NULL,
  `NAME` varchar(20) DEFAULT NULL,
  `AGE` int(11) DEFAULT NULL,
  `CLASS` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `students`
--

LOCK TABLES `students` WRITE;
/*!40000 ALTER TABLE `students` DISABLE KEYS */;
INSERT INTO `students` VALUES (1,'Ram',12,5),(2,'Shyam',17,10),(3,'Hari',8,1);
/*!40000 ALTER TABLE `students` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trash`
--

DROP TABLE IF EXISTS `trash`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trash` (
  `trashId` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) NOT NULL,
  `messageId` int(11) NOT NULL,
  `isRead` tinyint(1) NOT NULL,
  `createdDate` datetime DEFAULT NULL,
  `toEmailIds` varchar(255) DEFAULT NULL,
  `fromEmailId` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`trashId`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trash`
--

LOCK TABLES `trash` WRITE;
/*!40000 ALTER TABLE `trash` DISABLE KEYS */;
INSERT INTO `trash` VALUES (2,7,9,1,'2017-11-12 16:56:50',NULL,'C@gmail.com'),(3,4,8,1,'2017-08-11 16:56:50','B@gmail.com',NULL),(4,7,9,1,'2017-11-12 16:56:50',NULL,'C@gmail.com'),(5,3,5,1,'2017-12-12 21:09:47',NULL,'B@gmail.com'),(6,2,7,1,'2017-12-12 21:15:33','C@gmail.com',NULL),(7,2,6,1,'2017-12-12 21:20:44','F@gmail.com',NULL),(8,4,5,1,'2017-12-12 21:22:15','E@gmail.com',NULL),(9,2,2,1,'2017-12-16 17:58:30',NULL,'C@gmail.com');
/*!40000 ALTER TABLE `trash` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `userId` int(11) NOT NULL AUTO_INCREMENT,
  `userName` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `createdDate` datetime DEFAULT NULL,
  PRIMARY KEY (`userId`),
  UNIQUE KEY `userName` (`userName`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'A','A@gmail.com','A a','2017-12-10 16:56:32'),(2,'B','B@gmail.com','B b','2017-12-10 16:56:32'),(3,'C','C@gmail.com','C c','2017-12-10 16:56:32'),(4,'D','D@gmail.com','D d','2017-12-10 16:56:32'),(5,'E','E@gmail.com','E e','2017-12-10 16:56:32'),(6,'F','F@gmail.com','F f','2017-12-10 16:56:32'),(7,'G','G@gmail.com','G g','2017-12-10 16:56:32'),(8,'H','H@gmail.com','H h','2017-12-10 16:56:32'),(9,'I','I@gmail.com','I i','2017-12-10 16:56:32'),(10,'J','J@gmail.com','J j','2017-12-10 16:56:32');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-12-16 23:08:12
