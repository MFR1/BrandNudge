-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: localhost    Database: john_lewis
-- ------------------------------------------------------
-- Server version	8.0.31

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
-- Table structure for table `promotions`
--

DROP TABLE IF EXISTS `promotions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `promotions` (
  `idPromotions` int NOT NULL AUTO_INCREMENT,
  `Item_ID` varchar(45) DEFAULT NULL,
  `Message` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`idPromotions`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `promotions`
--

LOCK TABLES `promotions` WRITE;
/*!40000 ALTER TABLE `promotions` DISABLE KEYS */;
INSERT INTO `promotions` VALUES (1,'1','Save £9 (price includes saving)'),(2,'1','Buy and subscribe to claim half price subscription for 12 months to Nespresso plus (saving £150 off your first year) and claim a coffee lovers gift set (Via redemption)'),(3,'1','Save £9 (price includes saving, selected colours only))'),(4,'6','Save £50 (price includes saving)'),(5,'6','Buy and subscribe to claim half price subscription for 12 months to Nespresso plus (saving £150 off your first year) and claim a coffee lovers gift set (Via redemption)'),(6,'8','Claim a 100 day money back guarantee (Via redemption)'),(7,'9','Save £140 (price includes saving)'),(8,'11','Claim a bonus gift pack (Via redemption)'),(9,'14','Save £100 (price includes saving) selected colours only'),(10,'16','Claim a bonus gift pack (Via redemption)'),(11,'19','Save £50 (price includes saving)'),(12,'19','Claim a free Bonus gift pack (Via redemption)'),(13,'20','Buy and subscribe to claim half price subscription for 12 months to Nespresso plus (saving £150 off your first year) and claim a coffee lovers gift set (Via redemption)'),(14,'21','Price drop'),(15,'22','Claim a free Bonus gift pack (Via redemption)'),(16,'24','Claim a 100 day money back guarantee (Via redemption)');
/*!40000 ALTER TABLE `promotions` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-12-12 15:38:25
