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
-- Table structure for table `insurance_policies`
--

DROP TABLE IF EXISTS `insurance_policies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `insurance_policies` (
  `Policy_ID` int NOT NULL AUTO_INCREMENT,
  `Policy_Name` varchar(100) NOT NULL,
  `Policy_Type` varchar(50) NOT NULL,
  `Premium` decimal(10,2) NOT NULL,
  `Coverage_Amount` decimal(15,2) NOT NULL,
  `Start_Date` date NOT NULL,
  `End_Date` date DEFAULT NULL,
  `Terms_Conditions` text,
  `User_ID` int DEFAULT NULL,
  PRIMARY KEY (`Policy_ID`),
  KEY `fk_user_id` (`User_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `insurance_policies`
--

LOCK TABLES `insurance_policies` WRITE;
/*!40000 ALTER TABLE `insurance_policies` DISABLE KEYS */;
INSERT INTO `insurance_policies` VALUES (1,'Health Coverage','Health',500.00,20000.00,'2024-01-01','2025-01-01','Standard health coverage terms and conditions',6),(2,'Auto Insurance','Auto',300.00,15000.00,'2024-05-15','2025-05-15','Auto insurance policy terms and conditions',6),(3,'Home Insurance','Home',400.00,30000.00,'2024-06-01','2025-06-01','Home insurance policy terms and conditions',6),(5,'Health Coverage','Health',500.00,20000.00,'2024-01-01','2025-01-01','Standard health coverage terms and conditions',15),(6,'Health Coverage','Health',500.00,20000.00,'2024-01-01','2025-01-01','Standard health coverage terms and conditions',1),(7,'Health Coverage','Health',500.00,20000.00,'2024-11-24','2024-11-30',NULL,6),(8,'Health Coverage','Health',300.00,20000.00,'2024-11-28','2024-11-27',NULL,6),(9,'home','Dwelling',500.00,30000.00,'2024-11-29','2024-11-29',NULL,6),(10,'car','Uninsured/Underinsured Motorist',300.00,30000.00,'2024-11-24','2024-11-30',NULL,6);
/*!40000 ALTER TABLE `insurance_policies` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-11-18 11:51:43
