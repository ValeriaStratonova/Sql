CREATE DATABASE  IF NOT EXISTS `taskforsqldb` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `taskforsqldb`;
-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: localhost    Database: taskforsqldb
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
-- Table structure for table `main_picture_product`
--

DROP TABLE IF EXISTS `main_picture_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `main_picture_product` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `Id_product` int DEFAULT NULL,
  `Id_picture` int DEFAULT NULL,
  PRIMARY KEY (`Id`),
  UNIQUE KEY `Id_product` (`Id_product`),
  UNIQUE KEY `Id_product_2` (`Id_product`,`Id_picture`),
  KEY `Id_picture` (`Id_picture`),
  CONSTRAINT `main_picture_product_ibfk_1` FOREIGN KEY (`Id_product`) REFERENCES `product` (`Id`),
  CONSTRAINT `main_picture_product_ibfk_2` FOREIGN KEY (`Id_picture`) REFERENCES `picture` (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `main_picture_product`
--

LOCK TABLES `main_picture_product` WRITE;
/*!40000 ALTER TABLE `main_picture_product` DISABLE KEYS */;
INSERT INTO `main_picture_product` VALUES (1,1,1),(2,2,2),(3,3,3),(4,4,4),(5,5,5),(6,6,6),(7,7,7),(8,8,8),(9,9,9),(10,10,10),(11,11,11),(12,12,12);
/*!40000 ALTER TABLE `main_picture_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `main_section_product`
--

DROP TABLE IF EXISTS `main_section_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `main_section_product` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `Id_section` int DEFAULT NULL,
  `Id_product` int DEFAULT NULL,
  PRIMARY KEY (`Id`),
  UNIQUE KEY `Id_product` (`Id_product`),
  UNIQUE KEY `Id_section` (`Id_section`,`Id_product`),
  CONSTRAINT `main_section_product_ibfk_1` FOREIGN KEY (`Id_section`) REFERENCES `section` (`Id`),
  CONSTRAINT `main_section_product_ibfk_2` FOREIGN KEY (`Id_product`) REFERENCES `product` (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `main_section_product`
--

LOCK TABLES `main_section_product` WRITE;
/*!40000 ALTER TABLE `main_section_product` DISABLE KEYS */;
INSERT INTO `main_section_product` VALUES (1,1,1),(3,1,3),(5,2,5),(7,3,7),(9,4,9),(11,5,11),(2,6,2),(4,7,4),(6,7,6),(8,7,8),(10,8,10),(12,8,12);
/*!40000 ALTER TABLE `main_section_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `picture`
--

DROP TABLE IF EXISTS `picture`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `picture` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `Way` varchar(30) DEFAULT NULL,
  `Alt` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`Id`),
  UNIQUE KEY `Way` (`Way`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `picture`
--

LOCK TABLES `picture` WRITE;
/*!40000 ALTER TABLE `picture` DISABLE KEYS */;
INSERT INTO `picture` VALUES (1,'shirtAMONE.jpg','Рубашка оверсайз AM ONE'),(2,'shirtCamicia.jpg','Блузка Camicia'),(3,'shirtINTOWEAR.jpg','Рубашка INTOWEAR'),(4,'trousersURmood.jpg','Брюки URmood'),(5,'trousersBaseLine.jpg','Брюки Base Line'),(6,'dressFellMe.jpg','Платье Fell me'),(7,'dressGal.jpg','Платье Galverinj'),(8,'dressOodji.jpg','Платье oodji'),(9,'suitGenesis.jpg','Костюм Genesis'),(10,'suitJeno.jpg','Костюм Jeno'),(11,'hoodiesTicle.jpg','Худи Ticle'),(12,'hoodiesSetner.jpg','Худи Setner');
/*!40000 ALTER TABLE `picture` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `picture_product`
--

DROP TABLE IF EXISTS `picture_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `picture_product` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `Id_product` int DEFAULT NULL,
  `Id_picture` int DEFAULT NULL,
  PRIMARY KEY (`Id`),
  UNIQUE KEY `Id_product` (`Id_product`,`Id_picture`),
  KEY `Id_picture` (`Id_picture`),
  CONSTRAINT `picture_product_ibfk_1` FOREIGN KEY (`Id_product`) REFERENCES `product` (`Id`),
  CONSTRAINT `picture_product_ibfk_2` FOREIGN KEY (`Id_picture`) REFERENCES `picture` (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `picture_product`
--

LOCK TABLES `picture_product` WRITE;
/*!40000 ALTER TABLE `picture_product` DISABLE KEYS */;
INSERT INTO `picture_product` VALUES (1,1,1),(2,2,2),(3,3,3),(4,4,4),(5,5,5),(6,6,6),(7,7,7),(8,8,8),(9,9,9),(10,10,10),(11,11,11),(12,12,12);
/*!40000 ALTER TABLE `picture_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `Title` varchar(30) DEFAULT NULL,
  `Price` double DEFAULT NULL,
  `Price_sale` double DEFAULT NULL,
  `Price_promocode` double DEFAULT NULL,
  `Discript` varchar(300) DEFAULT NULL,
  `Actions` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`Id`),
  UNIQUE KEY `Title` (`Title`),
  UNIQUE KEY `Title_2` (`Title`,`Price`,`Price_sale`,`Price_promocode`,`Discript`,`Actions`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (2,'Блузка Camicia',1200,2600,1000,'Блузка женская офисная',1),(5,'Брюки Base Line',1600,5000,1100,'Широкие классические брюки',1),(4,'Брюки URmood',1375,4100,1200,'Брюки женские классические клеш',1),(9,'Костюм Genesis',3370,11990,3000,'Теплый костюм с начёсом',1),(10,'Костюм Jeno',3500,7000,3000,'Спортивный костюм износоустойчивый',1),(6,'Платье Fell me',2000,3500,1500,'Платье женское черное',1),(7,'Платье Galverinj',2420,5900,2000,'Платье женское праздничное',1),(8,'Платье oodji',2600,6900,2000,'Женское офисное платье',1),(3,'Рубашка INTOWEAR',1962,5900,1800,'Рубашка без рукавов',1),(1,'Рубашка оверсайз AM ONE',900,1500,800,'Рубашка хлопковая светлая',1),(12,'Худи Setner',900,1500,800,'Теплое мужское худи',1),(11,'Худи Ticle',2000,5500,1800,'Худи женское оверсайз',1);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `section`
--

DROP TABLE IF EXISTS `section`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `section` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `Title` varchar(30) DEFAULT NULL,
  `Descript` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`Id`),
  UNIQUE KEY `Title` (`Title`),
  UNIQUE KEY `Title_2` (`Title`,`Descript`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `section`
--

LOCK TABLES `section` WRITE;
/*!40000 ALTER TABLE `section` DISABLE KEYS */;
INSERT INTO `section` VALUES (6,'Camicia','Качественный бренд одежды'),(1,'Блузки и рубашки','Женские Блузки и рубашки'),(2,'Брюки','Женские Брюки'),(7,'Деловая одежда','Одежда для офиса и школы'),(4,'Костюмы','Мужские спортивные костюмы'),(3,'Платья и сарафаны','Красивые вечерние, летние, праздничные платья'),(8,'Спорт','Товары для спортивных людей'),(5,'Худи','Яркие и удобные худи');
/*!40000 ALTER TABLE `section` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `section_product`
--

DROP TABLE IF EXISTS `section_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `section_product` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `Id_section` int NOT NULL,
  `Id_product` int NOT NULL,
  PRIMARY KEY (`Id`),
  UNIQUE KEY `Id_section` (`Id_section`,`Id_product`),
  KEY `Id_product` (`Id_product`),
  CONSTRAINT `section_product_ibfk_1` FOREIGN KEY (`Id_section`) REFERENCES `section` (`Id`),
  CONSTRAINT `section_product_ibfk_2` FOREIGN KEY (`Id_product`) REFERENCES `product` (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `section_product`
--

LOCK TABLES `section_product` WRITE;
/*!40000 ALTER TABLE `section_product` DISABLE KEYS */;
INSERT INTO `section_product` VALUES (4,2,4),(6,3,6),(8,3,8),(10,4,10),(12,5,12),(1,7,1),(2,7,2),(3,7,3),(5,7,5),(7,7,7),(9,8,9),(11,8,11);
/*!40000 ALTER TABLE `section_product` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-10-21 15:57:57
