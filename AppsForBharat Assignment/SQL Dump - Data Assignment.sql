CREATE DATABASE  IF NOT EXISTS `appsforbharat` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `appsforbharat`;
-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: appsforbharat
-- ------------------------------------------------------
-- Server version	8.0.35

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
-- Table structure for table `emp_in_out`
--

DROP TABLE IF EXISTS `emp_in_out`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `emp_in_out` (
  `id` int DEFAULT NULL,
  `userid` int DEFAULT NULL,
  `total` int DEFAULT NULL,
  `created` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emp_in_out`
--

LOCK TABLES `emp_in_out` WRITE;
/*!40000 ALTER TABLE `emp_in_out` DISABLE KEYS */;
INSERT INTO `emp_in_out` VALUES (194,330,4760,'2021-03-01 14:22'),(201,142,10395,'2021-03-01 14:22'),(208,324,10395,'2021-03-01 14:22'),(215,258,4165,'2021-02-04 14:22'),(222,232,2940,'2021-02-05 14:22'),(229,157,3355,'2021-04-15 14:22'),(236,189,2795,'2021-03-23 14:22'),(243,57,17915,'2021-06-15 14:22'),(257,95,2158,'2021-04-13 14:22'),(229,157,3290,'2021-02-06 14:22'),(236,189,2730,'2021-03-07 14:22'),(243,57,17850,'2021-04-08 14:22'),(250,257,4830,'2021-04-09 14:22'),(257,95,2093,'2021-04-10 14:22'),(264,293,11970,'2021-03-11 14:22'),(194,330,4825,'2021-03-17 14:22'),(201,142,10460,'2021-05-08 14:22'),(208,324,10460,'2021-05-29 14:22'),(215,258,4230,'2021-04-13 14:22'),(222,232,3005,'2021-02-19 14:22'),(250,257,4895,'2021-04-12 14:22'),(264,293,12035,'2021-03-15 14:22');
/*!40000 ALTER TABLE `emp_in_out` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `event_table`
--

DROP TABLE IF EXISTS `event_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `event_table` (
  `User_id` int DEFAULT NULL,
  `Device_id` varchar(20) DEFAULT NULL,
  `Events` varchar(50) DEFAULT NULL,
  `TimeStamp` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event_table`
--

LOCK TABLES `event_table` WRITE;
/*!40000 ALTER TABLE `event_table` DISABLE KEYS */;
INSERT INTO `event_table` VALUES (101,'123-ddd-bbb-rrr','mandir_home','2021-07-01 07:02:44'),(101,'123-ddd-bbc-rrr','mandir_flower','2021-07-02 07:02:44'),(102,'123-ddd-baa-rrr','mandir_bell','2021-07-03 07:02:44'),(104,'123-ddw-bbb-rrr','calendar_impression','2021-07-04 07:02:44'),(104,'123-ddw-bbb-rrr','mandir_home','2021-07-05 07:02:44'),(104,'123-ddw-bbb-rrr','mandir_flower','2021-07-06 07:02:44'),(105,'123-www-bbb-rrr','mandir_bell','2021-07-07 07:02:44'),(106,'123-ddd-ccc-rrr','calendar_impression','2021-07-08 07:02:44'),(108,'123-ddd-aaa-rrr','mandir_home','2021-07-09 07:02:44'),(109,'123-abc-xyz-rrr','mandir_flower','2021-07-10 07:02:44'),(109,'123-abc-xyz-rrr','mandir_bell','2021-07-11 07:02:44'),(108,'123-ddd-bbb-sss','calendar_impression','2021-07-12 07:02:44'),(106,'123-ddd-bbb-aaa','mandir_bell','2021-07-13 07:02:44');
/*!40000 ALTER TABLE `event_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `flower_claimed`
--

DROP TABLE IF EXISTS `flower_claimed`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `flower_claimed` (
  `Id` int DEFAULT NULL,
  `User_id` int DEFAULT NULL,
  `Device_id` varchar(20) DEFAULT NULL,
  `God_ID` int DEFAULT NULL,
  `Flower_ID` int DEFAULT NULL,
  `TimeStamp` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `flower_claimed`
--

LOCK TABLES `flower_claimed` WRITE;
/*!40000 ALTER TABLE `flower_claimed` DISABLE KEYS */;
INSERT INTO `flower_claimed` VALUES (1,101,'123-ddd-bbb-rrr',1,1,'2021-07-01 07:02:44'),(2,101,'123-ddd-bbc-rrr',2,2,'2021-07-02 07:02:44'),(3,102,'123-ddd-baa-rrr',2,1,'2021-07-03 07:02:44'),(4,104,'123-ddw-bbb-rrr',3,1,'2021-07-04 07:02:44'),(5,104,'123-ddw-bbb-rrr',5,2,'2021-07-05 07:02:44'),(6,104,'123-ddw-bbb-rrr',4,3,'2021-07-06 07:02:44'),(7,105,'123-www-bbb-rrr',4,1,'2021-07-07 07:02:44'),(8,106,'123-ddd-ccc-rrr',6,1,'2021-07-08 07:02:44'),(9,108,'123-ddd-aaa-rrr',7,1,'2021-07-09 07:02:44'),(10,109,'123-abc-xyz-rrr',2,1,'2021-07-10 07:02:44'),(11,109,'123-abc-xyz-rrr',1,2,'2021-07-11 07:02:44'),(12,108,'123-ddd-bbb-sss',3,1,'2021-07-12 07:02:44'),(13,106,'123-ddd-bbb-aaa',7,1,'2021-07-13 07:02:44');
/*!40000 ALTER TABLE `flower_claimed` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `flower_offered`
--

DROP TABLE IF EXISTS `flower_offered`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `flower_offered` (
  `User_id` int DEFAULT NULL,
  `Device_id` varchar(20) DEFAULT NULL,
  `God_ID` int DEFAULT NULL,
  `Flower_ID` int DEFAULT NULL,
  `Condition` varchar(20) DEFAULT NULL,
  `TimeStamp` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `flower_offered`
--

LOCK TABLES `flower_offered` WRITE;
/*!40000 ALTER TABLE `flower_offered` DISABLE KEYS */;
INSERT INTO `flower_offered` VALUES (101,'123-ddd-bbb-rrr',1,1,'locked','2021-07-01 07:02:44'),(101,'123-ddd-bbc-rrr',2,2,'unlocked','2021-07-02 07:02:44'),(102,'123-ddd-baa-rrr',2,1,'locked','2021-07-03 07:02:44'),(104,'123-ddw-bbb-rrr',3,1,'unlocked','2021-07-04 07:02:44'),(104,'123-ddw-bbb-rrr',5,2,'locked','2021-07-05 07:02:44'),(104,'123-ddw-bbb-rrr',4,3,'unlocked','2021-07-06 07:02:44'),(105,'123-www-bbb-rrr',4,1,'locked','2021-07-07 07:02:44'),(106,'123-ddd-ccc-rrr',6,1,'locked','2021-07-08 07:02:44'),(108,'123-ddd-aaa-rrr',7,1,'locked','2021-07-09 07:02:44'),(109,'123-abc-xyz-rrr',2,1,'locked','2021-07-10 07:02:44'),(109,'123-abc-xyz-rrr',1,2,'locked','2021-07-11 07:02:44'),(108,'123-ddd-bbb-sss',3,1,'unlocked','2021-07-12 07:02:44'),(106,'123-ddd-bbb-aaa',7,1,'unlocked','2021-07-13 07:02:44');
/*!40000 ALTER TABLE `flower_offered` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `flower_profile`
--

DROP TABLE IF EXISTS `flower_profile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `flower_profile` (
  `Flower_id` int DEFAULT NULL,
  `Flower_name` varchar(50) DEFAULT NULL,
  `Timestamp` timestamp NULL DEFAULT NULL,
  `Updated_at` int DEFAULT NULL,
  `Deleted_at` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `flower_profile`
--

LOCK TABLES `flower_profile` WRITE;
/*!40000 ALTER TABLE `flower_profile` DISABLE KEYS */;
INSERT INTO `flower_profile` VALUES (1,'Gulab','2021-07-01 07:02:44',0,'-'),(2,'Gudhal','2021-07-02 07:02:44',0,'-'),(3,'Mogra','2021-07-03 07:02:44',0,'-'),(4,'Genda','2021-07-04 07:02:44',0,'-'),(1,'Gulab','2021-07-01 07:02:44',0,'-'),(2,'Gudhal','2021-07-02 07:02:44',0,'-'),(3,'Mogra','2021-07-03 07:02:44',0,'-'),(4,'Genda','2021-07-04 07:02:44',0,'-');
/*!40000 ALTER TABLE `flower_profile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `god_profile`
--

DROP TABLE IF EXISTS `god_profile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `god_profile` (
  `God_id` int DEFAULT NULL,
  `God_name` varchar(50) DEFAULT NULL,
  `Timestamp` timestamp NULL DEFAULT NULL,
  `Updated_at` int DEFAULT NULL,
  `Deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `god_profile`
--

LOCK TABLES `god_profile` WRITE;
/*!40000 ALTER TABLE `god_profile` DISABLE KEYS */;
INSERT INTO `god_profile` VALUES (1,'Ram','2021-07-01 07:02:44',0,NULL),(2,'Hanuman','2021-07-02 07:02:44',0,NULL),(3,'Shiva','2021-07-03 07:02:44',0,NULL),(4,'Saraswati','2021-07-04 07:02:44',0,NULL);
/*!40000 ALTER TABLE `god_profile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `install`
--

DROP TABLE IF EXISTS `install`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `install` (
  `id` int DEFAULT NULL,
  `Guest_Id` int DEFAULT NULL,
  `User_id` int DEFAULT NULL,
  `device_id` varchar(20) DEFAULT NULL,
  `timestamp` timestamp NULL DEFAULT NULL,
  `login_status` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `install`
--

LOCK TABLES `install` WRITE;
/*!40000 ALTER TABLE `install` DISABLE KEYS */;
INSERT INTO `install` VALUES (1,1234,NULL,'123-abc-xyz-rrr','2021-07-07 07:02:44',0),(2,2341,1231,'123-ddd-bbb-sss','2021-07-08 07:02:44',1),(3,213,12,'123-ddd-bbb-aaa','2021-07-09 07:02:44',1),(4,5678,8777,'123-ddw-bbb-rrr','2021-07-10 07:02:44',1),(5,567,NULL,'123-ddw-bbb-rrr','2021-07-11 07:02:44',0),(6,264,NULL,'123-www-bbb-rrr','2021-07-12 07:02:44',0);
/*!40000 ALTER TABLE `install` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_engagement`
--

DROP TABLE IF EXISTS `user_engagement`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_engagement` (
  `id` int DEFAULT NULL,
  `Guest_Id` int DEFAULT NULL,
  `User_id` int DEFAULT NULL,
  `device_id` varchar(20) DEFAULT NULL,
  `timestamp` timestamp NULL DEFAULT NULL,
  `login_status` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_engagement`
--

LOCK TABLES `user_engagement` WRITE;
/*!40000 ALTER TABLE `user_engagement` DISABLE KEYS */;
INSERT INTO `user_engagement` VALUES (1,1234,NULL,'123-abc-xyz-rrr','2021-07-07 07:02:44',0),(2,2341,1231,'123-ddd-bbb-sss','2021-07-08 07:02:44',1),(3,213,12,'123-ddd-bbb-aaa','2021-07-09 07:02:44',1),(4,5678,8777,'123-ddw-bbb-rrr','2021-07-10 07:02:44',1),(5,567,NULL,'123-ddw-bbb-rrr','2021-07-11 07:02:44',0),(6,264,NULL,'123-www-bbb-rrr','2021-07-12 07:02:44',0);
/*!40000 ALTER TABLE `user_engagement` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-03-02 23:50:45
