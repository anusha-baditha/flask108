-- MySQL dump 10.13  Distrib 8.0.42, for Win64 (x86_64)
--
-- Host: localhost    Database: ecom
-- ------------------------------------------------------
-- Server version	8.0.42

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `admindata`
--

DROP TABLE IF EXISTS `admindata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admindata` (
  `adminemail` varchar(255) NOT NULL,
  `username` varchar(100) DEFAULT NULL,
  `password` varbinary(255) DEFAULT NULL,
  `address` text,
  `agree` enum('on','off') DEFAULT NULL,
  `profilepic` varchar(15) DEFAULT NULL,
  `phone_no` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`adminemail`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admindata`
--

LOCK TABLES `admindata` WRITE;
/*!40000 ALTER TABLE `admindata` DISABLE KEYS */;
INSERT INTO `admindata` VALUES ('ambica@codegnan.com','ambica',_binary '$2b$12$fHj/MVnOqpet8sl.YUxTuuE1sQ.FYdq0IS/IphRzCO1/mMfE6P4/6','vijayawada','on',NULL,NULL),('anusha@codegnan.com','anusha',_binary '$2b$12$zoZV1MeUxezkT1aPeWw08e3W8yfUN6w3YICgdt688Vxj9h9ba5yGe','vijayawada pb siddhartha nagar ,61-9-80','on','Am5Cd3.','1234567899');
/*!40000 ALTER TABLE `admindata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `items`
--

DROP TABLE IF EXISTS `items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `items` (
  `itemid` binary(16) NOT NULL,
  `itemname` varchar(255) NOT NULL,
  `description` text,
  `quantity` mediumint DEFAULT NULL,
  `cost` decimal(10,2) DEFAULT NULL,
  `category` enum('Home Appliances','sports','Electronics','Grocery','Fashion') DEFAULT NULL,
  `imagename` varchar(15) DEFAULT NULL,
  `create_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `added_by` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`itemid`),
  KEY `added_by` (`added_by`),
  CONSTRAINT `items_ibfk_1` FOREIGN KEY (`added_by`) REFERENCES `admindata` (`adminemail`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `items`
--

LOCK TABLES `items` WRITE;
/*!40000 ALTER TABLE `items` DISABLE KEYS */;
INSERT INTO `items` VALUES (_binary 'uîD∏W)\ï\— #Lê^¿','Xtore Beautiful Ceramic Spiral Design Statue for Home Decoration (Pack of 1, Sky)','About this item\r\n1. This Ceramic Sculpture Adopts The Infinite Symbol Or Spiral Design Of Interlaced extension.\r\n2. It\'ll Bring You Great Visual Enjoyment And Spiritual Enjoyment.\r\n3. Colorful appearance, charming faces and colors, attractive, eye-catching, realistic, charming will surprise you\r\n4. lightweight, easy to carry, modern desktop decoration minimalist family, room, office, counter decoration, gifts, suitable for people of any age\r\n5. This statue figure is suitable for placing in the study room, Living room, Office, Or as a gift for your best friend, Family, Business partner, Etc. It also be the best gift choice for christmas, Valentines, Mothers day, Fathers day, Etc. Make any special event or party spectacular with the coolest decorations!',8999,899.00,'Home Appliances','Ml7Qk6.webp','2025-07-02 15:16:42','anusha@codegnan.com'),(_binary 'ß•û<W)\ï\— #Lê^¿','ERD TWS-17 True Wireless in Ear Earbuds with 35H Playtime Noise Cancelling Ambient Sound (Bluetooth Version V 5.3) Lightweight Comfort Fit Touch Control, Inbuilt Voice Assistant, Black','About this item\r\nImmersive Sound Experience: Immerse yourself in high-quality audio with the ERD TWS-17 True Wireless In-Ear Earbuds, delivering a rich and clear sound experience.\r\nExtended Playtime: Enjoy an impressive 35 hours of playtime on a single charge, ensuring your earbuds stay powered throughout your day.\r\nAdvanced Noise Cancelling: Immerse yourself in your favorite tunes without distraction, thanks to the advanced noise-canceling technology that effectively blocks out ambient sounds.\r\nAmbient Sound Mode: Stay aware of your surroundings when needed with the Ambient Sound mode, providing a balanced mix of music and environmental sounds for safety and convenience.\r\nBluetooth Version V 5.3: Benefit from the latest Bluetooth technology with Version 5.3, ensuring a stable and efficient wireless connection with your devices.',788,1890.00,'Electronics','Ei4Qw2.jpg','2025-07-02 15:18:06','anusha@codegnan.com'),(_binary '®∏\≈-Vf\ï\— #Lê^¿','LIFEHAXTORE¬Æ Home D√©cor Fire Shape Table Decorating Matte Finish Ceramic Figures - (White)','About this item\r\n1. Creative Fire Flame Sculpture Empressionism Polyresin Light of Life Statue Gift for Home and Office Decor.\r\n2. Materials: Environmental protection resin.\r\n3. This flame shape figurine made from ceramics, and smooth colored surfaces, Modern and Stylish\r\n4. Comes with a foam packaging for safe delivery\r\n5. Suitable for various home decoration styles, can put in living room, bedroom, dining room, office desk, study, club etc. A perfect gift for your loved ones',567,5645.00,'Home Appliances','Ca6Aw7.jpg','2025-07-01 16:02:16','anusha@codegnan.com');
/*!40000 ALTER TABLE `items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `order_id` int unsigned NOT NULL AUTO_INCREMENT,
  `item_name` varchar(255) NOT NULL,
  `total_amount` bigint unsigned DEFAULT NULL,
  `quantity` int unsigned DEFAULT NULL,
  `order_date` datetime DEFAULT CURRENT_TIMESTAMP,
  `payment_by` varchar(50) DEFAULT NULL,
  `address` text,
  PRIMARY KEY (`order_id`),
  KEY `payment_by` (`payment_by`),
  CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`payment_by`) REFERENCES `users` (`useremail`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1,'Xtore Beautiful Ceramic Spiral Design Statue for Home Decoration (Pack of 1, Sky)',89900,1,'2025-07-12 16:36:13','anusha@codegnan.com','vijayawada pb siddhartha nagar '),(2,'ERD TWS-17 True Wireless in Ear Earbuds with 35H Playtime Noise Cancelling Ambient Sound (Bluetooth Version V 5.3) Lightweight Comfort Fit Touch Control, Inbuilt Voice Assistant, Black',1890,1,'2025-07-12 16:40:12','anusha@codegnan.com','vijayawada pb siddhartha nagar '),(3,'ERD TWS-17 True Wireless in Ear Earbuds with 35H Playtime Noise Cancelling Ambient Sound (Bluetooth Version V 5.3) Lightweight Comfort Fit Touch Control, Inbuilt Voice Assistant, Black',1890,1,'2025-07-12 16:43:06','anusha@codegnan.com','vijayawada pb siddhartha nagar ');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reviews`
--

DROP TABLE IF EXISTS `reviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reviews` (
  `reviewid` int unsigned NOT NULL AUTO_INCREMENT,
  `review` longtext,
  `rating` enum('1','2','3','4','5') DEFAULT NULL,
  `itemid` binary(16) DEFAULT NULL,
  `user` varchar(50) DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`reviewid`),
  KEY `itemid` (`itemid`),
  KEY `user` (`user`),
  CONSTRAINT `reviews_ibfk_1` FOREIGN KEY (`itemid`) REFERENCES `items` (`itemid`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `reviews_ibfk_2` FOREIGN KEY (`user`) REFERENCES `users` (`useremail`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reviews`
--

LOCK TABLES `reviews` WRITE;
/*!40000 ALTER TABLE `reviews` DISABLE KEYS */;
INSERT INTO `reviews` VALUES (1,'happy','4',_binary 'uîD∏W)\ï\— #Lê^¿','anusha@codegnan.com','2025-07-15 16:05:57'),(2,'happy','4',_binary 'uîD∏W)\ï\— #Lê^¿','anusha@codegnan.com','2025-07-15 16:07:00'),(3,'happy ','4',_binary 'uîD∏W)\ï\— #Lê^¿','anusha@codegnan.com','2025-07-15 16:07:11'),(4,'dghgh','3',_binary 'ß•û<W)\ï\— #Lê^¿','anusha@codegnan.com','2025-07-15 16:08:10');
/*!40000 ALTER TABLE `reviews` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `username` varchar(50) NOT NULL,
  `useremail` varchar(50) NOT NULL,
  `address` text NOT NULL,
  `password` varbinary(255) NOT NULL,
  `gender` enum('male','female') DEFAULT NULL,
  PRIMARY KEY (`useremail`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES ('anusha','anusha@codegnan.com','vijayawada pb siddhartha nagar ',_binary '$2b$12$dIR/6DIrarOMdcg/gqCYfOOEsuEmC5fxD.QjUBtmmacpTyFZayecq','female');
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

-- Dump completed on 2025-07-19 15:09:46
