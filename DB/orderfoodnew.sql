-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: orderfoodnew
-- ------------------------------------------------------
-- Server version	8.0.36

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
-- Table structure for table `orderinformation`
--

DROP TABLE IF EXISTS `orderinformation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orderinformation` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(45) NOT NULL,
  `Phone` varchar(45) NOT NULL,
  `Department` varchar(45) NOT NULL,
  `Internalfood` varchar(45) DEFAULT NULL,
  `Outsidefoodname` varchar(105) DEFAULT NULL,
  `Outsideshopname` varchar(105) DEFAULT NULL,
  `Time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orderinformation`
--

LOCK TABLES `orderinformation` WRITE;
/*!40000 ALTER TABLE `orderinformation` DISABLE KEYS */;
INSERT INTO `orderinformation` VALUES (24,'Shahin ','01760594126','Engineering','coffee','','','2024-04-25 17:46:34');
/*!40000 ALTER TABLE `orderinformation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(45) NOT NULL,
  `Phone` varchar(45) NOT NULL,
  `Image` varchar(100) NOT NULL,
  `Department` varchar(45) DEFAULT NULL,
  `Passeord` varchar(200) NOT NULL,
  `EmpId` varchar(45) NOT NULL,
  `Role` varchar(45) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (8,'Shahin ','01760594126','/image/sahinvai.jpg','Engineering','$2b$10$oM14cOwwt/pUaPQkkTEaDuGCqB9REXC8GLvy9hmk/H.RjsCwJkWU2','123','User'),(10,'sadiq23','01760594126','/image/sadiq.jpg','Engineering','$2b$10$84uupbn4INuhJQzfEMB1KeWLrdmNW/g6VbBe4R5chbXZ8CFpYkCOu','1001','admin'),(11,'Alamin','01568215003','/image/alaminvai.jpg','Engineering','$2b$10$z6doFzjgQvomenNIymdueODici7ifc35sOCuaTWGJjHWRdxGj5mdS','1002','User'),(12,'Alamgir','01568215003','/image/alaminvai.jpg','Engineering','$2b$10$dhIWYgWoHt6BcV2PVVL8DOW27k73655LGDGSUq6NYbrxD61Mzl9Ge','1005','User'),(13,'Alamgir23','01568215003','/image/chakivai.jpg','Engineering','$2b$10$f/sFaBRSWcJ7eGDMeEmsS.d0fl2rynd.j0her5TfyJJL9AxACHddC','1234','admin'),(14,'Sadiqadmin','01760594126','/image/chakivai.jpg','12345','$2b$10$EsWqaGMMkcoGujmAtEi9G.jIrYC5Q6qZpi5BiDbTIQDC1oZA2xPyG','12344','admin');
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

-- Dump completed on 2024-04-26 16:56:44
