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
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `insurance_policies`
--

LOCK TABLES `insurance_policies` WRITE;
/*!40000 ALTER TABLE `insurance_policies` DISABLE KEYS */;
INSERT INTO `insurance_policies` VALUES (1,'Health Coverage','Health',500.00,20000.00,'2024-01-01','2025-01-01','Standard health coverage terms and conditions',6),(2,'Auto Insurance','Auto',300.00,15000.00,'2024-05-15','2025-05-15','Auto insurance policy terms and conditions',6),(3,'Home Insurance','Home',400.00,30000.00,'2024-06-01','2025-06-01','Home insurance policy terms and conditions',6),(5,'Health Coverage','Health',500.00,20000.00,'2024-01-01','2025-01-01','Standard health coverage terms and conditions',15),(6,'Health Coverage','Health',500.00,20000.00,'2024-01-01','2025-01-01','Standard health coverage terms and conditions',1),(7,'Health Coverage','Health',500.00,20000.00,'2024-11-24','2024-11-30',NULL,6),(8,'Health Coverage','Health',300.00,20000.00,'2024-11-28','2024-11-27',NULL,6),(9,'home','Dwelling',500.00,30000.00,'2024-11-29','2024-11-29',NULL,6),(10,'car','Uninsured/Underinsured Motorist',300.00,30000.00,'2024-11-24','2024-11-30',NULL,6),(11,'car','Liability',500.00,30000.00,'2024-11-20','2025-05-22',NULL,24),(12,'car','Liability',300.00,20000.00,'2024-11-29','2024-11-30',NULL,6),(13,'Home Insurance','Personal Property',400.00,15000.00,'2024-11-30','2024-11-29',NULL,6),(14,'Health Insurance','Dental',500.00,20000.00,'2024-11-29','2024-11-25',NULL,6),(15,'Life Insurance','Whole Life',300.00,30000.00,'2024-12-05','2024-11-29',NULL,6),(16,'Health Insurance','Vision',300.00,30000.00,'2024-11-30','2024-11-25','Coverage Includes: Annual eye exams, prescription glasses, and contact lenses (if applicable). Exclusions: Coverage does not include elective procedures like LASIK unless specifically covered. Claim Requirements: Claims must include a prescription and proof of purchase. Limits: Frames, lenses, or contacts are covered up to a specified amount annually.',6),(17,'Health Insurance','Preventative Care',400.00,15000.00,'2024-11-29','2024-11-30','Covered Services: Includes immunizations, screenings, and counseling to prevent illness or injury. Exclusions: Experimental treatments or procedures not approved by the insurer are excluded. Policyholder Responsibilities: Annual wellness visits must be scheduled within the coverage year. Network Requirements: Coverage is limited to services provided by in-network providers.',6),(18,'Home Insurance','Personal Property',300.00,15000.00,'2024-11-30','2024-11-26','Covered Items: Personal belongings such as furniture, electronics, and clothing are covered against theft, fire, and other specified perils. High-Value Items: Jewelry, art, and other valuable items must be declared and insured under separate riders for full protection. Proof of Ownership: Claims must include receipts, photographs, or other documentation to verify ownership and value. Exclusions: Losses due to negligence, wear and tear, or non-covered events (e.g., flooding) are excluded.',6),(19,'Home Insurance','Personal Property',400.00,15000.00,'2024-11-30','2024-11-24','Covered Items: Personal belongings such as furniture, electronics, and clothing are covered against theft, fire, and other specified perils. High-Value Items: Jewelry, art, and other valuable items must be declared and insured under separate riders for full protection. Proof of Ownership: Claims must include receipts, photographs, or other documentation to verify ownership and value. Exclusions: Losses due to negligence, wear and tear, or non-covered events (e.g., flooding) are excluded.',6),(20,'Life Insurance','Final Expense',400.00,30000.00,'2024-11-30','2024-11-30','Purpose: Coverage is intended for funeral expenses, medical bills, and other end-of-life costs. Limited Coverage: Coverage amounts are lower than traditional life insurance policies. Claims: Beneficiaries must provide itemized receipts and proof of expenses. Eligibility: Policies may have simplified underwriting with fewer medical exams.',6),(21,'Home Insurance','Natural Disasters',400.00,20000.00,'2024-11-30','2024-11-30','Covered Events: Includes damages caused by storms, hurricanes, wildfires, and other natural disasters as specified in the policy. Flood and Earthquake Riders: Standard policies exclude floods and earthquakes unless riders are purchased. Filing a Claim: Claims must include evidence such as photographs, repair estimates, and an incident report. Exclusions: Damages resulting from neglect, such as failing to secure windows during a storm, are excluded.',NULL),(22,'Home Insurance','Natural Disasters',400.00,30000.00,'2024-11-30','2024-12-07','Covered Events: Includes damages caused by storms, hurricanes, wildfires, and other natural disasters as specified in the policy. Flood and Earthquake Riders: Standard policies exclude floods and earthquakes unless riders are purchased. Filing a Claim: Claims must include evidence such as photographs, repair estimates, and an incident report. Exclusions: Damages resulting from neglect, such as failing to secure windows during a storm, are excluded.',NULL),(23,'Life Insurance','Universal Life',400.00,30000.00,'2024-11-30','2024-11-30','Flexible Premiums: Policyholders can adjust premium amounts and death benefits. Interest Rates: Cash value grows based on interest rates, which are subject to change. Minimum Balance: A minimum account balance must be maintained to keep the policy active. Withdrawals: Partial withdrawals reduce the death benefit and may incur charges.',NULL);
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

-- Dump completed on 2024-11-26 13:02:29
