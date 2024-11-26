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
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `User_ID` int NOT NULL AUTO_INCREMENT,
  `First_Name` varchar(50) NOT NULL,
  `Last_Name` varchar(50) NOT NULL,
  `DOB` date DEFAULT NULL,
  `Email` varchar(100) NOT NULL,
  `Phone_Number` varchar(15) DEFAULT NULL,
  `Created_At` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `Password` varchar(255) NOT NULL,
  `Street` varchar(255) NOT NULL,
  `Zip` varchar(10) NOT NULL,
  `City` varchar(100) NOT NULL,
  `Province` varchar(100) NOT NULL,
  PRIMARY KEY (`User_ID`),
  UNIQUE KEY `Email` (`Email`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Yordanos','Tbob','1992-05-14','alice@example.com','123-456-7890','2024-10-28 22:14:31','','','','',''),(3,'John','Doe','1988-03-22','john@example.com','1234567889','2024-10-29 01:10:52','','','','',''),(5,'Jane','Doe','1995-07-16','jane.doe@example.com','555-1234','2024-10-29 02:06:55','','','','',''),(6,'Yordanos','Keflinkiel','1992-05-14','yordanostkeflinkiel@gmail.com','4168730330','2024-10-29 03:14:54','$2b$10$t4Jd5AERev/McNFF8CJS4eDZ332AukLDgJwYHusu8fd6GAyvI5I/q','123 Elm Street','A1B 2C3','Toronto','Ontario'),(7,'Helen','Tesfagaber','2024-11-15','helenkeflinkiel@gmail.com','4168730330','2024-11-02 17:30:03','$2b$10$DMLSSgDwjXHu55o210ffdeFjVdJJTpIBif2jOLhBeqtqVVpl27ZqS','','','',''),(8,'Bella','bella','2024-11-19','bella@yahoo.ca','4162259090','2024-11-02 17:45:13','$2b$10$qa2VZNF0UXeeScw6x9GMGOpcigkz96O9YzxgR6NLc6Lc.JBs6cngO','','','',''),(9,'Helena','Kef','2024-11-04','kefl123@gmail.com','1234567890','2024-11-02 17:59:32','$2b$10$ZlG0HM2JOjNv9oCMVabh0OhsJTXH2lfs2BXXPRe4qhYMOyX3htIHu','','','',''),(11,'tes','Kef','2024-11-04','tesl123@gmail.com','1234567890','2024-11-02 18:00:51','$2b$10$pFDI4rQFxJux3.AUXNb7seVBBEwN.rp6iuGa.3zWVz82QQlbD7eKe','','','',''),(12,'Yorgi','kef','2024-11-26','kef1234556@gmail.com','4165730330','2024-11-02 18:07:55','$2b$10$koiU1yvl/x7vmq5rPYGnBO0JKFJGD7ZN.vZYN9wWd7htTlIedrRou','','','',''),(14,'Eyob','kef','2024-11-26','kef134556@gmail.com','4165730336','2024-11-02 18:10:13','$2b$10$5bynDftUpTAKBQobErdO5u1LwpxiWI.wptikGTpN6J5ypqDj67c76','','','',''),(15,'Tesfagaber','Asfaha','2024-11-18','tesfagaberkeflinkiel@gmail.com','4168730329','2024-11-02 18:15:15','$2b$10$1P8m7e0guIQNITMgUNpqMOt79e1ZLtpKvSUApcZjQmlU.7MiQe3DS','','','',''),(20,'John','Doe','1984-03-24','john.doe@example.com','555-1234','2021-09-15 18:23:55','yourPassword1','123 Elm St','12345','Springfield','State1'),(21,'Yordanos','Keflinkiel','2024-11-16','yordanospink@gmal.com','6478540759','2024-11-02 23:28:04','$2b$10$sUffIywDfuI/NmvwmEtNO.csdBuIuVJ4FXbVPBt0HH0No.vDCZ0PW','1234 somewhere ','1W24R5','Toronto','Ontario'),(22,'Helen','Keflinkiel','2024-11-30','helen1234@gmail.com','4168730330','2024-11-19 19:58:37','$2b$10$HT3t2HjYOGoCKVd/6HKiW.sOr7f7Y9oyIpHG4NJzHLj37zcWfOhS.','Simcoe Street North ','M1E2R3','Toronto','Ontario'),(23,'Helen','Keflinkiel','2024-11-29','helen12345@gmail.com','4168730330','2024-11-19 20:21:58','$2b$10$Akw6YpJlxfUxeVAciXrGNObCspWG4m/RT.vLmx5dN8HO4aTmIvidm','Simcoe street north ','M1E2R3','Toronto','Ontario'),(24,'Mahnoor','Jamal','1998-10-31','mahnoor4413@gmail.com','3052458137','2024-11-20 18:30:25','$2b$10$JExKi56z5LTe..gqx2ZYJuAwM.7hY9umWwzCIwevTbbS8KNNR.uDe','456 Rue de la Route','T5K 7D4','Paris','Francis'),(25,'Helen','Tes','2024-11-19','123456765432@gmail.com','1234567890','2024-11-22 18:54:27','$2b$10$76eVaL5QdbXsPY8Kj9j9w.XH/PnXrB2EuwgAYdQwnAyyLtMINgSr2','toroton 123','M1E2R3','Toronto','Ontario'),(26,'emma','emma','2024-11-22','emma@gmail.com','4168730330','2024-11-24 18:52:18','$2b$10$yS8pOV9Jwvzrd9MUswyj9e2G7cYly5uQ3Ydu9tc8Q/zWxatAGqgD.','1234 toronto street','M1E2R3','Toronto','Ontario'),(31,'rebecaa','h','2024-11-28','rebecaa@gmail.com','4168730335','2024-11-24 20:13:55','$2b$10$qPUckmV9ivLjy1gaBUrfueEgy5kjzjye5Zm3tqtVcHXdH3Mz9LQCe','1234 helen street','M1E2R4','Toronto','Ontario');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-11-26 13:02:28
