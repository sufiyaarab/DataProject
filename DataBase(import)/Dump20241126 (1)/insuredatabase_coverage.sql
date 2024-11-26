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
-- Table structure for table `coverage`
--

DROP TABLE IF EXISTS `coverage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `coverage` (
  `Coverage_ID` int NOT NULL AUTO_INCREMENT,
  `Policy_ID` int DEFAULT NULL,
  `Coverage_Type` varchar(50) NOT NULL,
  `Coverage_Limit` decimal(15,2) DEFAULT NULL,
  `Deductible` decimal(10,2) DEFAULT NULL,
  `Plan_Name` varchar(255) DEFAULT NULL,
  `Coverage_Details` text,
  `Premium` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`Coverage_ID`),
  KEY `Policy_ID` (`Policy_ID`),
  CONSTRAINT `coverage_ibfk_1` FOREIGN KEY (`Policy_ID`) REFERENCES `insurance_policies` (`Policy_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `coverage`
--

LOCK TABLES `coverage` WRITE;
/*!40000 ALTER TABLE `coverage` DISABLE KEYS */;
INSERT INTO `coverage` VALUES (1,1,'car',500000.00,1000.00,'collision','Covers collision damage to your vehicle',200.00),(2,1,'car',1000000.00,1500.00,'comprehensive','Covers non-collision-related damages like theft or natural disasters',300.00),(3,1,'car',300000.00,750.00,'liability','Covers damage to other vehicles or property if you are at fault',150.00),(4,2,'health',100000.00,500.00,'basic','Basic health coverage including doctor visits and hospital stays',100.00),(5,2,'health',200000.00,750.00,'premium','Premium health coverage with extended benefits and specialist care',250.00),(6,3,'life',500000.00,0.00,'term','Term life insurance with coverage for a fixed period',150.00),(7,3,'life',1000000.00,0.00,'whole','Whole life insurance with lifetime coverage',400.00),(11,1,'car',500000.00,1000.00,'collision','Covers collision damage to your vehicle',200.00),(12,1,'car',1000000.00,1500.00,'comprehensive','Covers non-collision-related damages like theft or natural disasters',300.00),(13,1,'car',300000.00,750.00,'liability','Covers damage to other vehicles or property if you are at fault',150.00),(15,NULL,'car',500000.00,1000.00,'collision','Covers collision damage to your vehicle',200.00),(16,NULL,'car',1000000.00,1500.00,'comprehensive','Covers non-collision-related damages like theft or weather',300.00),(17,NULL,'car',300000.00,750.00,'liability','Covers damage to other vehicles or property if you are at fault',150.00),(18,NULL,'car',200000.00,500.00,'pip','Personal Injury Protection for medical expenses',250.00),(19,NULL,'car',500000.00,0.00,'uninsuredMotorist','Covers damages caused by an uninsured driver',350.00),(20,NULL,'home',200000.00,1000.00,'dwelling','Covers damage to the structure of your home',500.00),(21,NULL,'home',50000.00,500.00,'personalProperty','Covers damage to personal belongings inside the home',200.00),(22,NULL,'home',100000.00,750.00,'liabilityProtection','Covers liability for injuries to others on your property',300.00),(23,NULL,'home',20000.00,0.00,'guestMedicalProtection','Covers medical expenses for guests injured on your property',150.00),(24,NULL,'home',30000.00,100.00,'additionalLivingExpenses','Covers extra living costs if home is uninhabitable',250.00),(25,NULL,'life',500000.00,0.00,'termLife','Term life insurance with fixed premium',200.00),(26,NULL,'life',1000000.00,0.00,'wholeLife','Whole life insurance with lifelong coverage',400.00),(27,NULL,'life',750000.00,0.00,'universalLife','Flexible premium with lifetime coverage',350.00),(28,NULL,'life',800000.00,0.00,'variableLife','Coverage with variable investment options',450.00),(29,NULL,'life',100000.00,0.00,'finalExpenseInsurance','Covers final expenses like funeral costs',100.00),(30,NULL,'car',500000.00,1000.00,'collision','Covers collision damage to your vehicle',200.00),(31,NULL,'car',1000000.00,1500.00,'comprehensive','Covers non-collision-related damages like theft or weather',300.00),(32,NULL,'car',300000.00,750.00,'liability','Covers damage to other vehicles or property if you are at fault',150.00),(33,NULL,'car',200000.00,500.00,'pip','Personal Injury Protection for medical expenses',250.00),(34,NULL,'car',500000.00,0.00,'uninsuredMotorist','Covers damages caused by an uninsured driver',350.00),(35,NULL,'home',200000.00,1000.00,'dwelling','Covers damage to the structure of your home',500.00),(36,NULL,'home',50000.00,500.00,'personalProperty','Covers damage to personal belongings inside the home',200.00),(37,NULL,'home',100000.00,750.00,'liabilityProtection','Covers liability for injuries to others on your property',300.00),(38,NULL,'home',20000.00,0.00,'guestMedicalProtection','Covers medical expenses for guests injured on your property',150.00),(39,NULL,'home',30000.00,100.00,'additionalLivingExpenses','Covers extra living costs if home is uninhabitable',250.00),(40,NULL,'life',500000.00,0.00,'termLife','Term life insurance with fixed premium',200.00),(41,NULL,'life',1000000.00,0.00,'wholeLife','Whole life insurance with lifelong coverage',400.00),(42,NULL,'life',750000.00,0.00,'universalLife','Flexible premium with lifetime coverage',350.00),(43,NULL,'life',800000.00,0.00,'variableLife','Coverage with variable investment options',450.00),(44,NULL,'life',100000.00,0.00,'finalExpenseInsurance','Covers final expenses like funeral costs',100.00);
/*!40000 ALTER TABLE `coverage` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-11-26 13:02:29
