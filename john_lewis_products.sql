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
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `idProducts` int NOT NULL AUTO_INCREMENT,
  `Title` varchar(255) DEFAULT NULL,
  `Price` varchar(255) DEFAULT NULL,
  `Rating` varchar(255) DEFAULT NULL,
  `Total_Reviews` int DEFAULT NULL,
  `Image_URL` varchar(255) DEFAULT NULL,
  `URL` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`idProducts`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (1,'Nespresso Vertuo Next Coffee Maker by Magimix','£65.00','4.60',666,'https://johnlewis.scene7.com/is/image/JohnLewis/238744193?wid=117&hei=156','https://www.johnlewis.com/nespresso-vertuo-next-coffee-maker-by-magimix/p5019464'),(2,'Nespresso CitiZ & Milk Coffee Machine by Magimix, Black','£210.00 - £213.00','4.70',301,'https://johnlewis.scene7.com/is/image/JohnLewis/236316762?wid=117&hei=156','https://www.johnlewis.com/nespresso-citiz-milk-coffee-machine-by-magimix/black/p2845232'),(3,'Nespresso CitiZ Coffee Machine by Magimix, Chrome Effect','£195.00','4.70',301,'https://johnlewis.scene7.com/is/image/JohnLewis/236316760?wid=117&hei=156','https://www.johnlewis.com/nespresso-citiz-coffee-machine-by-magimix-chrome-effect/p2907176'),(4,'Nespresso Creatista Pro SNE900BSS Coffee Machine by Sage, Stainless Steel','£449.95','4.60',50,'https://johnlewis.scene7.com/is/image/JohnLewis/238538753?wid=117&hei=156','https://www.johnlewis.com/nespresso-creatista-pro-sne900bss-coffee-machine-by-sage-stainless-steel/p4879259'),(5,'John Lewis Pump Espresso Coffee Machine, Stainless Steel','£70.00','4.30',171,'https://johnlewis.scene7.com/is/image/JohnLewis/238200624?wid=117&hei=156','https://www.johnlewis.com/john-lewis-pump-espresso-coffee-machine-stainless-steel/p4839988'),(6,'Nespresso Vertuo Next 11709 Coffee Machine by Magimix, Chrome','£119.00','4.60',666,'https://johnlewis.scene7.com/is/image/JohnLewis/238744194?wid=117&hei=156','https://www.johnlewis.com/nespresso-vertuo-next-11709-coffee-machine-by-magimix-chrome/p5233555'),(7,'Sage The Precision Brewer Coffee Machine','£179.00','4.70',82,'https://johnlewis.scene7.com/is/image/JohnLewis/237377403?wid=117&hei=156','https://www.johnlewis.com/sage-the-precision-brewer-coffee-machine/p3811244'),(8,'De\'Longhi Magnifica ECAM290.81.TB Evo Fully Automatic Bean-to-Cup Coffee Machine, Titanium','£445.00','4.70',41,'https://johnlewis.scene7.com/is/image/JohnLewis/240355403?wid=117&hei=156','https://www.johnlewis.com/delonghi-magnifica-ecam290-81-tb-evo-fully-automatic-bean-to-cup-coffee-machine-titanium/p5771986'),(9,'Nespresso EN650 Gran Lattissima Capsule Coffee Machine by De\'Longhi','£229.99','3.70',18,'https://johnlewis.scene7.com/is/image/JohnLewis/238280041alt2?wid=117&hei=156','https://www.johnlewis.com/nespresso-en650-gran-lattissima-capsule-coffee-machine-by-delonghi/p4403083'),(10,'Nespresso CitiZ & Milk Coffee Machine by Magimix, Chrome Effect','£245.00','4.70',301,'https://johnlewis.scene7.com/is/image/JohnLewis/236316763?wid=117&hei=156','https://www.johnlewis.com/nespresso-citiz-milk-coffee-machine-by-magimix-chrome-effect/p2905508'),(11,'Sage Barista Express Bean-to-Cup Coffee Machine','£593.00','4.60',386,'https://johnlewis.scene7.com/is/image/JohnLewis/234865235?wid=117&hei=156','https://www.johnlewis.com/sage-barista-express-bean-to-cup-coffee-machine/p3501284'),(12,'Lavazza Jolie Coffee Machine, Black','£65.00','4.50',62,'https://johnlewis.scene7.com/is/image/JohnLewis/238317660?wid=117&hei=156','https://www.johnlewis.com/lavazza-jolie-coffee-machine-black/p4509055'),(13,'Lavazza A Modo Mio Jolie Plus Coffee Machine with Milk Frother','£129.00','4.70',119,'https://johnlewis.scene7.com/is/image/JohnLewis/237331600?wid=117&hei=156','https://www.johnlewis.com/lavazza-a-modo-mio-jolie-plus-coffee-machine-with-milk-frother/p3443339'),(14,'Nespresso Lattissima Touch EN560 Coffee Machine by De\'Longhi','£199.00','4.30',77,'https://johnlewis.scene7.com/is/image/JohnLewis/237395251?wid=117&hei=156','https://www.johnlewis.com/nespresso-lattissima-touch-en560-coffee-machine-by-delonghi/p5301599'),(15,'John Lewis Pump Espresso Coffee Machine with Milk Frother, Stainless Steel','£100.00','4.30',117,'https://johnlewis.scene7.com/is/image/JohnLewis/238200625?wid=117&hei=156','https://www.johnlewis.com/john-lewis-pump-espresso-coffee-machine-with-milk-frother-stainless-steel/p4839837'),(16,'Sage SES500BSS Bambino Plus Coffee Machine, Silver','£399.00','4.60',194,'https://johnlewis.scene7.com/is/image/JohnLewis/237691092?wid=117&hei=156','https://www.johnlewis.com/sage-ses500bss-bambino-plus-coffee-machine-silver/p3779133'),(17,'Lavazza A Modo Mio Desea Coffee Machine','£159.00 - £199.00','4.30',68,'https://johnlewis.scene7.com/is/image/JohnLewis/237997652?wid=117&hei=156','https://www.johnlewis.com/lavazza-a-modo-mio-desea-coffee-machine/p4019308'),(18,'De\'Longhi Dedica Arte Metallics Espresso Coffee Machine','£249.99 - £269.99','5.00',1,'https://johnlewis.scene7.com/is/image/JohnLewis/241219095?wid=117&hei=156','https://www.johnlewis.com/delonghi-dedica-arte-metallics-espresso-coffee-machine/p6262524'),(19,'Sage the Barista Express™ Impress Coffee Machine, Black Truffle','£679.95','4.90',42,'https://johnlewis.scene7.com/is/image/JohnLewis/241219586?wid=117&hei=156','https://www.johnlewis.com/sage-the-barista-express-impress-coffee-machine-black-truffle/p6263799'),(20,'Nespresso Vertuo Pop Coffee Pod Machine by Magimix','£99.00','4.60',40,'https://johnlewis.scene7.com/is/image/JohnLewis/109081383?wid=117&hei=156','https://www.johnlewis.com/nespresso-vertuo-pop-coffee-pod-machine-by-magimix/p109265036'),(21,'Nespresso Creatista Plus Coffee Machine by Sage, Black Truffle','£329.95','4.30',314,'https://johnlewis.scene7.com/is/image/JohnLewis/237626285alt1?wid=117&hei=156','https://www.johnlewis.com/nespresso-creatista-plus-coffee-machine-by-sage-black-truffle/p3116015'),(22,'Sage the Barista Express™ Impress Coffee Machine, Stainless Steel','£729.00','4.90',42,'https://johnlewis.scene7.com/is/image/JohnLewis/241219588?wid=117&hei=156','https://www.johnlewis.com/sage-the-barista-express-impress-coffee-machine-stainless-steel/p6354148'),(23,'Sage the Bambino® Stainless Steel Coffee Machine','£329.00','4.40',57,'https://johnlewis.scene7.com/is/image/JohnLewis/241219739?wid=117&hei=156','https://www.johnlewis.com/sage-the-bambino-stainless-steel-coffee-machine/p6263794'),(24,'De\'Longhi EC9155.MB La Specialista Arte Bean to Cup Espresso Coffee Machine','£529.99','4.80',19,'https://johnlewis.scene7.com/is/image/JohnLewis/240355396?wid=117&hei=156','https://www.johnlewis.com/delonghi-ec9155-mb-la-specialista-arte-bean-to-cup-espresso-coffee-machine/p5771975');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
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
