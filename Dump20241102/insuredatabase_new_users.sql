-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: localhost    Database: insuredatabase
-- ------------------------------------------------------
-- Server version	8.0.39

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
-- Table structure for table `new_users`
--

DROP TABLE IF EXISTS `new_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `new_users` (
  `User_ID` int NOT NULL AUTO_INCREMENT,
  `First_Name` varchar(100) DEFAULT NULL,
  `Last_Name` varchar(100) DEFAULT NULL,
  `DOB` date DEFAULT NULL,
  `Email` varchar(100) DEFAULT NULL,
  `Phone_Number` varchar(15) DEFAULT NULL,
  `Street` varchar(255) DEFAULT NULL,
  `Zip` varchar(15) DEFAULT NULL,
  `City` varchar(100) DEFAULT NULL,
  `Province` varchar(100) DEFAULT NULL,
  `Created_At` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`User_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `new_users`
--

LOCK TABLES `new_users` WRITE;
/*!40000 ALTER TABLE `new_users` DISABLE KEYS */;
INSERT INTO `new_users` VALUES (1,'Alice','Smith','1992-05-14','alice@example.com','123-456-7890','','','','','2024-10-28 22:14:31'),(3,'John','Doe','1988-03-22','john@example.com','234-567-8901','','','','','2024-10-29 01:10:52'),(5,'Jane','Doe','1995-07-16','jane.doe@example.com','555-1234','','','','','2024-10-29 02:06:55'),(6,'Yordanos','Keflinkiel','2015-02-16','yordanostkeflinkiel@gmail.com','4168730330','','','','','2024-10-29 03:14:54'),(7,'Helen','Keflinkiel ','2024-11-15','helenkeflinkiel@gmail.com','4168730330','','','','','2024-11-02 17:30:03'),(8,'Bella','bella','2024-11-19','bella@yahoo.ca','4162259090','','','','','2024-11-02 17:45:13'),(9,'Helena','Kef','2024-11-04','kefl123@gmail.com','1234567890','','','','','2024-11-02 17:59:32'),(11,'tes','Kef','2024-11-04','tesl123@gmail.com','1234567890','','','','','2024-11-02 18:00:51'),(12,'Yorgi','kef','2024-11-26','kef1234556@gmail.com','4165730330','','','','','2024-11-02 18:07:55'),(14,'Eyob','kef','2024-11-26','kef134556@gmail.com','4165730336','','','','','2024-11-02 18:10:13'),(15,'Tesfagaber','Asfaha','2024-11-18','tesfagaberkeflinkiel@gmail.com','4168730329','','','','','2024-11-02 18:15:15');
/*!40000 ALTER TABLE `new_users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-11-02 19:57:43
