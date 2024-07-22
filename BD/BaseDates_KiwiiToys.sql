-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: db_kiwitoys
-- ------------------------------------------------------
-- Server version	9.0.0

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
-- Table structure for table `address`
--

DROP TABLE IF EXISTS `address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `address` (
  `AddressId` int NOT NULL,
  `Address` varchar(45) DEFAULT NULL,
  `INT` varchar(45) DEFAULT NULL,
  `EXT` varchar(45) DEFAULT NULL,
  `State` varchar(45) DEFAULT NULL,
  `City` varchar(45) DEFAULT NULL,
  `PostalCode` int DEFAULT NULL,
  `User_UserId` int NOT NULL,
  PRIMARY KEY (`AddressId`),
  KEY `fk_Address_User1_idx` (`User_UserId`),
  CONSTRAINT `fk_Address_User1` FOREIGN KEY (`User_UserId`) REFERENCES `user` (`UserId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address`
--

LOCK TABLES `address` WRITE;
/*!40000 ALTER TABLE `address` DISABLE KEYS */;
/*!40000 ALTER TABLE `address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `brand`
--

DROP TABLE IF EXISTS `brand`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `brand` (
  `brandId` int NOT NULL,
  `Name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`brandId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `brand`
--

LOCK TABLES `brand` WRITE;
/*!40000 ALTER TABLE `brand` DISABLE KEYS */;
/*!40000 ALTER TABLE `brand` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `delivery`
--

DROP TABLE IF EXISTS `delivery`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `delivery` (
  `DeliveryId` int NOT NULL,
  `Provider` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`DeliveryId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `delivery`
--

LOCK TABLES `delivery` WRITE;
/*!40000 ALTER TABLE `delivery` DISABLE KEYS */;
/*!40000 ALTER TABLE `delivery` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `material`
--

DROP TABLE IF EXISTS `material`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `material` (
  `materialId` int NOT NULL,
  `Name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`materialId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `material`
--

LOCK TABLES `material` WRITE;
/*!40000 ALTER TABLE `material` DISABLE KEYS */;
/*!40000 ALTER TABLE `material` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `message`
--

DROP TABLE IF EXISTS `message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `message` (
  `MessageId` int NOT NULL,
  `Name` varchar(45) DEFAULT NULL,
  `Email` varchar(45) DEFAULT NULL,
  `Text` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`MessageId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `message`
--

LOCK TABLES `message` WRITE;
/*!40000 ALTER TABLE `message` DISABLE KEYS */;
/*!40000 ALTER TABLE `message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order`
--

DROP TABLE IF EXISTS `order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order` (
  `OrderId` int NOT NULL,
  `Date` datetime DEFAULT NULL,
  `Status` varchar(15) DEFAULT NULL,
  `Total` decimal(45,0) DEFAULT NULL,
  `User_UserId` int NOT NULL,
  `Delivery_DeliveryId` int NOT NULL,
  PRIMARY KEY (`OrderId`),
  KEY `fk_Order_User1_idx` (`User_UserId`),
  KEY `fk_Order_Delivery1_idx` (`Delivery_DeliveryId`),
  CONSTRAINT `fk_Order_Delivery1` FOREIGN KEY (`Delivery_DeliveryId`) REFERENCES `delivery` (`DeliveryId`),
  CONSTRAINT `fk_Order_User1` FOREIGN KEY (`User_UserId`) REFERENCES `user` (`UserId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order`
--

LOCK TABLES `order` WRITE;
/*!40000 ALTER TABLE `order` DISABLE KEYS */;
/*!40000 ALTER TABLE `order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment`
--

DROP TABLE IF EXISTS `payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payment` (
  `PaymentId` int NOT NULL,
  `Name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`PaymentId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment`
--

LOCK TABLES `payment` WRITE;
/*!40000 ALTER TABLE `payment` DISABLE KEYS */;
/*!40000 ALTER TABLE `payment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `productsId` int NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `Price` decimal(10,0) DEFAULT NULL,
  `Descrption` varchar(45) DEFAULT NULL,
  `Scale` varchar(45) DEFAULT NULL,
  `Material_materialId` int NOT NULL,
  `Brand_brandId` int NOT NULL,
  `Series_seriesId` int NOT NULL,
  PRIMARY KEY (`productsId`),
  KEY `fk_Product_Material_idx` (`Material_materialId`),
  KEY `fk_Product_Brand1_idx` (`Brand_brandId`),
  KEY `fk_Product_Series1_idx` (`Series_seriesId`),
  CONSTRAINT `fk_Product_Brand1` FOREIGN KEY (`Brand_brandId`) REFERENCES `brand` (`brandId`),
  CONSTRAINT `fk_Product_Material` FOREIGN KEY (`Material_materialId`) REFERENCES `material` (`materialId`),
  CONSTRAINT `fk_Product_Series1` FOREIGN KEY (`Series_seriesId`) REFERENCES `series` (`seriesId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_has_order`
--

DROP TABLE IF EXISTS `product_has_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_has_order` (
  `Product_productsId` int NOT NULL,
  `Order_OrderId` int NOT NULL,
  `Payment_PaymentId` int NOT NULL,
  `Quanquity` int DEFAULT NULL,
  `Subtotal` decimal(30,0) DEFAULT NULL,
  PRIMARY KEY (`Product_productsId`,`Order_OrderId`),
  KEY `fk_Product_has_Order_Order1_idx` (`Order_OrderId`),
  KEY `fk_Product_has_Order_Product1_idx` (`Product_productsId`),
  KEY `fk_Product_has_Order_Payment1_idx` (`Payment_PaymentId`),
  CONSTRAINT `fk_Product_has_Order_Order1` FOREIGN KEY (`Order_OrderId`) REFERENCES `order` (`OrderId`),
  CONSTRAINT `fk_Product_has_Order_Payment1` FOREIGN KEY (`Payment_PaymentId`) REFERENCES `payment` (`PaymentId`),
  CONSTRAINT `fk_Product_has_Order_Product1` FOREIGN KEY (`Product_productsId`) REFERENCES `product` (`productsId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_has_order`
--

LOCK TABLES `product_has_order` WRITE;
/*!40000 ALTER TABLE `product_has_order` DISABLE KEYS */;
/*!40000 ALTER TABLE `product_has_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `review`
--

DROP TABLE IF EXISTS `review`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `review` (
  `ReviewId` int NOT NULL,
  `Title` varchar(45) DEFAULT NULL,
  `Description` varchar(45) DEFAULT NULL,
  `Date` datetime DEFAULT NULL,
  `Grade` int DEFAULT NULL,
  `Product_productsId` int NOT NULL,
  `User_UserId` int NOT NULL,
  PRIMARY KEY (`ReviewId`),
  KEY `fk_Review_Product1_idx` (`Product_productsId`),
  KEY `fk_Review_User1_idx` (`User_UserId`),
  CONSTRAINT `fk_Review_Product1` FOREIGN KEY (`Product_productsId`) REFERENCES `product` (`productsId`),
  CONSTRAINT `fk_Review_User1` FOREIGN KEY (`User_UserId`) REFERENCES `user` (`UserId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `review`
--

LOCK TABLES `review` WRITE;
/*!40000 ALTER TABLE `review` DISABLE KEYS */;
/*!40000 ALTER TABLE `review` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `series`
--

DROP TABLE IF EXISTS `series`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `series` (
  `seriesId` int NOT NULL,
  `Name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`seriesId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `series`
--

LOCK TABLES `series` WRITE;
/*!40000 ALTER TABLE `series` DISABLE KEYS */;
/*!40000 ALTER TABLE `series` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `UserId` int NOT NULL,
  `Name` varchar(45) DEFAULT NULL,
  `LastName` varchar(45) DEFAULT NULL,
  `Telephone` varchar(45) DEFAULT NULL,
  `Email` varchar(45) DEFAULT NULL,
  `Password` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`UserId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wishlist`
--

DROP TABLE IF EXISTS `wishlist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wishlist` (
  `WishListId` int NOT NULL,
  `Product_productsId` int NOT NULL,
  `User_UserId` int NOT NULL,
  PRIMARY KEY (`WishListId`),
  KEY `fk_WishList_Product1_idx` (`Product_productsId`),
  KEY `fk_WishList_User1_idx` (`User_UserId`),
  CONSTRAINT `fk_WishList_Product1` FOREIGN KEY (`Product_productsId`) REFERENCES `product` (`productsId`),
  CONSTRAINT `fk_WishList_User1` FOREIGN KEY (`User_UserId`) REFERENCES `user` (`UserId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wishlist`
--

LOCK TABLES `wishlist` WRITE;
/*!40000 ALTER TABLE `wishlist` DISABLE KEYS */;
/*!40000 ALTER TABLE `wishlist` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-07-21 22:34:07
