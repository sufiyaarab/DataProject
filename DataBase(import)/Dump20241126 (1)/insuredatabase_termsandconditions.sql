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
-- Table structure for table `termsandconditions`
--

DROP TABLE IF EXISTS `termsandconditions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `termsandconditions` (
  `Terms_ID` int NOT NULL AUTO_INCREMENT,
  `Insurance_Type` varchar(50) NOT NULL,
  `Policy_Type` varchar(50) NOT NULL,
  `Terms` text NOT NULL,
  PRIMARY KEY (`Terms_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `termsandconditions`
--

LOCK TABLES `termsandconditions` WRITE;
/*!40000 ALTER TABLE `termsandconditions` DISABLE KEYS */;
INSERT INTO `termsandconditions` VALUES (1,'Home Insurance','Dwelling','Scope of Coverage: Covers physical damages to the insured home caused by fire, wind, hail, vandalism, or other perils specified in the policy. Exclusions: Damages caused by lack of maintenance, intentional destruction, or pre-existing structural issues are not covered. Filing a Claim: The policyholder must notify the insurer within 30 days of an incident, provide photographs of the damage, and cooperate with inspections. Repair/Replacement Costs: Coverage applies to the cost of repairs or replacement up to the policy limit, subject to a deductible.'),(2,'Home Insurance','Personal Property','Covered Items: Personal belongings such as furniture, electronics, and clothing are covered against theft, fire, and other specified perils. High-Value Items: Jewelry, art, and other valuable items must be declared and insured under separate riders for full protection. Proof of Ownership: Claims must include receipts, photographs, or other documentation to verify ownership and value. Exclusions: Losses due to negligence, wear and tear, or non-covered events (e.g., flooding) are excluded.'),(3,'Home Insurance','Liability Protection','Scope of Coverage: Provides coverage for legal liabilities resulting from injuries or property damage caused to others on the insured property. Policyholder Obligations: The policyholder must notify the insurer of incidents that may lead to claims and avoid admitting fault. Exclusions: Intentional harm, criminal activities, or liabilities arising from business activities conducted on the property are not covered. Coverage Limits: Payments for damages or legal defense are capped at the policy’s liability limit.'),(4,'Home Insurance','Natural Disasters','Covered Events: Includes damages caused by storms, hurricanes, wildfires, and other natural disasters as specified in the policy. Flood and Earthquake Riders: Standard policies exclude floods and earthquakes unless riders are purchased. Filing a Claim: Claims must include evidence such as photographs, repair estimates, and an incident report. Exclusions: Damages resulting from neglect, such as failing to secure windows during a storm, are excluded.'),(5,'Car Insurance','Liability','Coverage Scope: Covers bodily injury and property damage caused to others when the policyholder is at fault in an accident. Policyholder Obligations: Accidents must be reported to the insurer and local authorities within 24 hours. Exclusions: Coverage does not apply to accidents involving criminal activities (e.g., DUI, reckless driving) or racing events. Policy Limits: Coverage amounts are subject to the policy’s per-accident and per-person limits.'),(6,'Car Insurance','Uninsured/Underinsured Motorist','Covered Incidents: Provides compensation for injuries or damages caused by an uninsured or underinsured driver. Required Documentation: Claims must include evidence of the other driver’s lack of insurance and proof of damages (e.g., repair invoices, medical bills). Policyholder Responsibilities: The policyholder must cooperate with the insurer’s investigation and legal proceedings if required. Exclusions: Damages caused while the policyholder was engaging in illegal activities are excluded.'),(7,'Car Insurance','Personal Insurance Protection','Scope of Coverage: Covers medical expenses, lost wages, and rehabilitation costs resulting from an accident, regardless of fault. Claim Filing: Claims must include medical bills, proof of income, and other relevant documents. Policy Limits: Benefits are capped as per the policy’s stated limits and may include a deductible. Exclusions: Coverage does not apply to injuries sustained while committing illegal acts or outside the scope of normal driving activities.'),(8,'Health Insurance','Dental','Scope of Coverage: Covers routine dental cleanings, fillings, and basic procedures. Exclusions: Cosmetic treatments such as veneers or teeth whitening are not covered unless specified. Maximum Coverage: Annual limits on benefits apply, and unused amounts do not roll over to the next year. Orthodontics: Braces and other orthodontic treatments may require a separate rider or additional premium.'),(9,'Health Insurance','Preventative Care','Covered Services: Includes immunizations, screenings, and counseling to prevent illness or injury. Exclusions: Experimental treatments or procedures not approved by the insurer are excluded. Policyholder Responsibilities: Annual wellness visits must be scheduled within the coverage year. Network Requirements: Coverage is limited to services provided by in-network providers.'),(10,'Health Insurance','Vision','Coverage Includes: Annual eye exams, prescription glasses, and contact lenses (if applicable). Exclusions: Coverage does not include elective procedures like LASIK unless specifically covered. Claim Requirements: Claims must include a prescription and proof of purchase. Limits: Frames, lenses, or contacts are covered up to a specified amount annually.'),(11,'Health Insurance','Prescription Coverage','Covered Medications: Includes prescription drugs listed on the insurer’s formulary. Exclusions: Over-the-counter medications, supplements, and experimental drugs are not covered. Co-Payments: The policyholder is responsible for co-pays as outlined in the policy. Generic Substitutions: Insurers may require the use of generic drugs when available.'),(12,'Life Insurance','Term Life','Policy Duration: Coverage applies for the specified term (e.g., 10, 20, or 30 years). Exclusions: Suicide within the first two years is excluded from coverage. Policyholder Obligations: Premiums must be paid on time to maintain coverage. Claims: Beneficiaries must provide a death certificate and other documentation to file a claim.'),(13,'Life Insurance','Whole Life','Lifelong Coverage: Policy remains in effect as long as premiums are paid. Cash Value: Accumulated cash value can be borrowed against or withdrawn, subject to terms. Exclusions: Policies do not cover death due to illegal activities or suicide within the contestability period. Premiums: Premiums remain fixed for the duration of the policy.'),(14,'Life Insurance','Universal Life','Flexible Premiums: Policyholders can adjust premium amounts and death benefits. Interest Rates: Cash value grows based on interest rates, which are subject to change. Minimum Balance: A minimum account balance must be maintained to keep the policy active. Withdrawals: Partial withdrawals reduce the death benefit and may incur charges.'),(15,'Life Insurance','Final Expense','Purpose: Coverage is intended for funeral expenses, medical bills, and other end-of-life costs. Limited Coverage: Coverage amounts are lower than traditional life insurance policies. Claims: Beneficiaries must provide itemized receipts and proof of expenses. Eligibility: Policies may have simplified underwriting with fewer medical exams.');
/*!40000 ALTER TABLE `termsandconditions` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-11-26 13:02:30
