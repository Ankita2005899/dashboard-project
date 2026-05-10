-- MySQL dump 10.13  Distrib 8.0.44, for Win64 (x86_64)
--
-- Host: localhost    Database: project
-- ------------------------------------------------------
-- Server version	8.0.44

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
-- Table structure for table `1anu_32`
--

DROP TABLE IF EXISTS `1anu_32`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `1anu_32` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `row_no` varchar(20) DEFAULT NULL,
  `category` varchar(50) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `video` varchar(255) DEFAULT NULL,
  `availability` int DEFAULT NULL,
  `detail` text,
  `uploaded_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `address` varchar(255) DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `total` decimal(10,2) DEFAULT NULL,
  `mode` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `1anu_32`
--

LOCK TABLES `1anu_32` WRITE;
/*!40000 ALTER TABLE `1anu_32` DISABLE KEYS */;
INSERT INTO `1anu_32` VALUES (1,32,NULL,'kitchen','q',600.00,'/static/products/Screenshot_2026-01-02_174133.png','/static/products/----_-_2.mp4',3,'12q','2026-01-16 09:42:35','zeal college pune ',NULL,'2026-01-16 09:42:35',NULL,NULL),(2,32,NULL,'study','Data Structures Book',799.00,'/static/products/book_ds.jpeg','',8,'Paperback, High quality paper','2026-01-16 09:42:41','Delhi, India',NULL,'2026-01-16 09:42:41',NULL,NULL),(3,32,NULL,'study','Engineering Drawing Kit',899.00,'/static/products/static/products/drawing_kit.jpg','',7,'Plastic box, Steel tools','2026-01-16 09:45:14','Bengaluru, India',NULL,'2026-01-16 09:45:14',NULL,NULL),(4,32,NULL,'study','Engineering Drawing Kit',899.00,'/static/products/static/products/drawing_kit.jpg','',6,'Plastic box, Steel tools','2026-01-16 09:45:19','Bengaluru, India',NULL,'2026-01-16 09:45:19',NULL,NULL);
/*!40000 ALTER TABLE `1anu_32` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `a23_48`
--

DROP TABLE IF EXISTS `a23_48`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `a23_48` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `row_no` varchar(20) DEFAULT NULL,
  `category` varchar(50) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `video` varchar(255) DEFAULT NULL,
  `availability` int DEFAULT NULL,
  `detail` text,
  `uploaded_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `address` varchar(255) DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `total` decimal(10,2) DEFAULT NULL,
  `mode` varchar(20) DEFAULT NULL,
  `product_id` int DEFAULT NULL,
  `sub_vc` int DEFAULT '0',
  `sub_vc_item` int DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `a23_48`
--

LOCK TABLES `a23_48` WRITE;
/*!40000 ALTER TABLE `a23_48` DISABLE KEYS */;
INSERT INTO `a23_48` VALUES (2,48,'row_1','study_material','2',22.00,'/static/products/download_1.jpeg','/static/products/a.mp4',4,'22','2026-01-06 00:00:00','2',0,'2026-01-21 12:25:26',66.00,NULL,6,0,-2),(3,48,'row_2','study_material','Physics Textbook – Class 12',499.00,'/static/products/static/products/physics_book.jpg','/static/products/static/products/physics_intro.mp4',8,'Paperback, Recycled paper','2026-01-05 14:16:38','Delhi, India',0,'2026-01-23 11:08:36',499.00,NULL,1,1,0),(4,48,NULL,'study_material','Data Structures Book',799.00,'/static/products/book_ds.jpeg','',8,'Paperback, High quality paper','2026-01-05 14:51:34','Delhi, India',0,'2026-01-23 12:21:29',799.00,NULL,4,1,0),(5,48,'row_3','study_material','w',3.00,'/static/products/book_ds.jpeg','',9,'q','2026-01-06 00:00:00','q',0,'2026-01-24 12:27:05',9.00,NULL,9,0,-3),(6,48,NULL,'card','spoon',347.00,'/static/products/yumhub.jpg','/static/products/How_to_Create_SearchView_on_Google_Map_in_Android_Studio___Step_by_Step_Google_Maps_Android_Tutorial.mp4',8,'steel','2026-01-05 00:00:00','zeal college pune ',0,'2026-01-24 13:02:15',1388.00,NULL,5,0,-4),(7,48,NULL,'card','spoon',347.00,'/static/products/yumhub.jpg','/static/products/How_to_Create_SearchView_on_Google_Map_in_Android_Studio___Step_by_Step_Google_Maps_Android_Tutorial.mp4',4,'steel','2026-01-05 00:00:00','zeal college pune ',0,'2026-01-24 13:22:37',1041.00,NULL,5,0,-4),(8,48,NULL,'study_material','w',3.00,'/static/products/book_ds.jpeg','',3,'q','2026-01-06 00:00:00','q',0,'2026-01-24 13:52:12',6.00,NULL,9,0,-3),(9,48,NULL,'study_material','w',3.00,'/static/products/book_ds.jpeg','',1,'q','2026-01-06 00:00:00','q',0,'2026-01-24 14:05:21',6.00,NULL,9,0,-3),(10,48,NULL,'card','q',600.00,'/static/products/Screenshot_2026-01-02_174133.png','/static/products/----_-_2.mp4',5,'12q','2026-01-06 00:00:00','zeal college pune ',0,'2026-01-24 17:28:16',1200.00,NULL,6,0,-2),(11,48,'row_4','study_material','Engineering Drawing Kit',899.00,'/static/products/static/products/drawing_kit.jpg','',4,'Plastic box, Steel tools','2026-01-05 14:16:38','Bengaluru, India',0,'2026-01-25 10:05:16',2697.00,NULL,2,0,-3),(12,48,NULL,'study_material','Data Structures Book',799.00,'/static/products/book_ds.jpeg','',9,'Paperback, High quality paper','2026-01-05 14:48:32','Delhi, India',0,'2026-01-25 10:06:44',3995.00,NULL,3,0,-5),(13,48,NULL,'study_material','Engineering Drawing Kit',899.00,'/static/products/static/products/drawing_kit.jpg','',1,'Plastic box, Steel tools','2026-01-05 14:16:38','Bengaluru, India',0,'2026-01-25 10:08:31',1798.00,NULL,2,0,-2),(14,48,NULL,'study_material','Data Structures Book',799.00,'/static/products/book_ds.jpeg','',4,'Paperback, High quality paper','2026-01-05 14:48:32','Delhi, India',0,'2026-01-25 10:09:30',3995.00,NULL,3,0,-5),(15,48,'row_5','card','Kitchen Mixer',2999.00,'https://via.placeholder.com/150?text=Kitchen+Mixer','',9,'','2026-01-05 13:38:29','',1,'2026-02-06 14:45:45',5998.00,NULL,2,0,-1);
/*!40000 ALTER TABLE `a23_48` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `a_52`
--

DROP TABLE IF EXISTS `a_52`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `a_52` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `product_id` int DEFAULT NULL,
  `row_no` varchar(20) DEFAULT NULL,
  `category` varchar(50) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `video` varchar(255) DEFAULT NULL,
  `availability` int DEFAULT NULL,
  `detail` text,
  `uploaded_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `address` varchar(255) DEFAULT NULL,
  `quantity` int DEFAULT '1',
  `date` datetime DEFAULT CURRENT_TIMESTAMP,
  `total` decimal(10,2) DEFAULT NULL,
  `mode` varchar(20) DEFAULT NULL,
  `sub_vc_item` int DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `a_52`
--

LOCK TABLES `a_52` WRITE;
/*!40000 ALTER TABLE `a_52` DISABLE KEYS */;
INSERT INTO `a_52` VALUES (1,52,1,'row_1','card','Mixer Grinder',2999.00,'https://via.placeholder.com/150?text=Mixer+Grinder','/static/products/static/products/mixer_demo.mp4',5262,'Stainless Steel body, Copper motor','2026-01-05 13:38:29','Pune, Maharashtra, India',1,'2026-03-28 10:52:57',2999.00,NULL,0),(2,52,4,NULL,'card','Electric Kettle',1899.00,'/static/products/kettle.jpg','',4144,'Stainless steel','2026-01-05 13:58:57','Mumbai, India',2,'2026-03-28 10:53:14',3798.00,NULL,0),(3,52,5,NULL,'card','spoon',347.00,'/static/products/yumhub.jpg','/static/products/How_to_Create_SearchView_on_Google_Map_in_Android_Studio___Step_by_Step_Google_Maps_Android_Tutorial.mp4',1,'steel','2026-01-05 00:00:00','zeal college pune ',1,'2026-03-28 10:53:29',347.00,NULL,0),(4,52,5,NULL,'card','spoon',347.00,'/static/products/yumhub.jpg','/static/products/How_to_Create_SearchView_on_Google_Map_in_Android_Studio___Step_by_Step_Google_Maps_Android_Tutorial.mp4',0,'steel','2026-01-05 00:00:00','zeal college pune ',1,'2026-03-28 10:54:13',347.00,NULL,0),(5,52,4,NULL,'card','Electric Kettle',1899.00,'/static/products/kettle.jpg','',4142,'Stainless steel','2026-01-05 13:58:57','Mumbai, India',4,'2026-03-28 10:54:13',7596.00,NULL,0),(6,52,4,NULL,'card','Electric Kettle',1899.00,'/static/products/kettle.jpg','',4138,'Stainless steel','2026-01-05 13:58:57','Mumbai, India',2,'2026-03-28 10:54:56',3798.00,NULL,0),(7,52,1,NULL,'card','Mixer Grinder',2999.00,'https://via.placeholder.com/150?text=Mixer+Grinder','/static/products/static/products/mixer_demo.mp4',5261,'Stainless Steel body, Copper motor','2026-01-05 13:38:29','Pune, Maharashtra, India',3,'2026-03-28 10:55:06',8997.00,NULL,0);
/*!40000 ALTER TABLE `a_52` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `a_52_product_activity`
--

DROP TABLE IF EXISTS `a_52_product_activity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `a_52_product_activity` (
  `id` int NOT NULL AUTO_INCREMENT,
  `product_id` int DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `category` varchar(100) DEFAULT NULL,
  `today_search_count` int DEFAULT '0',
  `search_time` time DEFAULT NULL,
  `today_add_to_cart_count` int DEFAULT '0',
  `add_to_cart_time` time DEFAULT NULL,
  `today_purchase_count` int DEFAULT '0',
  `purchased_time` time DEFAULT NULL,
  `month` varchar(20) DEFAULT NULL,
  `growth` float DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `a_52_product_activity`
--

LOCK TABLES `a_52_product_activity` WRITE;
/*!40000 ALTER TABLE `a_52_product_activity` DISABLE KEYS */;
/*!40000 ALTER TABLE `a_52_product_activity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aakanshaa_13`
--

DROP TABLE IF EXISTS `aakanshaa_13`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aakanshaa_13` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `product_id` int DEFAULT NULL,
  `category` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `video` varchar(255) DEFAULT NULL,
  `price` float DEFAULT NULL,
  `availability` int DEFAULT NULL,
  `detail` text,
  `purchased_by` varchar(255) DEFAULT NULL,
  `uploaded_at` datetime DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aakanshaa_13`
--

LOCK TABLES `aakanshaa_13` WRITE;
/*!40000 ALTER TABLE `aakanshaa_13` DISABLE KEYS */;
/*!40000 ALTER TABLE `aakanshaa_13` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aanil_43`
--

DROP TABLE IF EXISTS `aanil_43`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `aanil_43` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `row_no` varchar(20) DEFAULT NULL,
  `category` varchar(50) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `video` varchar(255) DEFAULT NULL,
  `availability` int DEFAULT NULL,
  `detail` text,
  `uploaded_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `address` varchar(255) DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `total` decimal(10,2) DEFAULT NULL,
  `mode` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aanil_43`
--

LOCK TABLES `aanil_43` WRITE;
/*!40000 ALTER TABLE `aanil_43` DISABLE KEYS */;
/*!40000 ALTER TABLE `aanil_43` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `addtocart_logs`
--

DROP TABLE IF EXISTS `addtocart_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `addtocart_logs` (
  `id` int NOT NULL AUTO_INCREMENT,
  `cart_id` int DEFAULT NULL,
  `product_name` varchar(255) DEFAULT NULL,
  `category` varchar(100) DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `addtocart_logs`
--

LOCK TABLES `addtocart_logs` WRITE;
/*!40000 ALTER TABLE `addtocart_logs` DISABLE KEYS */;
/*!40000 ALTER TABLE `addtocart_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `anu_29`
--

DROP TABLE IF EXISTS `anu_29`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `anu_29` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `row_no` varchar(20) DEFAULT NULL,
  `category` varchar(50) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `video` varchar(255) DEFAULT NULL,
  `availability` int DEFAULT NULL,
  `detail` text,
  `uploaded_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `address` varchar(255) DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `total` decimal(10,2) DEFAULT NULL,
  `mode` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `anu_29`
--

LOCK TABLES `anu_29` WRITE;
/*!40000 ALTER TABLE `anu_29` DISABLE KEYS */;
/*!40000 ALTER TABLE `anu_29` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `awe_49`
--

DROP TABLE IF EXISTS `awe_49`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `awe_49` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `row_no` varchar(20) DEFAULT NULL,
  `category` varchar(50) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `video` varchar(255) DEFAULT NULL,
  `availability` int DEFAULT NULL,
  `detail` text,
  `uploaded_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `address` varchar(255) DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `total` decimal(10,2) DEFAULT NULL,
  `mode` varchar(20) DEFAULT NULL,
  `product_id` int DEFAULT NULL,
  `sub_vc` int DEFAULT '0',
  `sub_vc_item` int DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `awe_49`
--

LOCK TABLES `awe_49` WRITE;
/*!40000 ALTER TABLE `awe_49` DISABLE KEYS */;
INSERT INTO `awe_49` VALUES (2,49,'row_1','study_material','2',22.00,'/static/products/download_1.jpeg','/static/products/a.mp4',6,'22','2026-01-06 00:00:00','2',0,'2026-01-21 08:23:28',22.00,NULL,NULL,0,0),(3,49,NULL,'study_material','s',12.00,'/static/products/yumhub.jpg','',9,'1','2026-01-06 00:00:00','1',0,'2026-01-21 16:31:11',24.00,NULL,NULL,0,0),(4,49,NULL,'study_material','2',22.00,'/static/products/download_1.jpeg','/static/products/a.mp4',0,'22','2026-01-06 00:00:00','2',0,'2026-01-21 16:37:56',22.00,NULL,NULL,0,0),(5,49,'row_2','study_material','Data Structures Book',799.00,'/static/products/book_ds.jpeg','',4,'Paperback, High quality paper','2026-01-05 14:51:34','Delhi, India',0,'2026-01-23 12:53:19',1598.00,NULL,4,1,0),(6,49,'row_3','card','Electric Kettle',1899.00,'https://via.placeholder.com/150?text=Electric+Kettle','',4,'Stainless steel body, Heat-resistant plastic handle','2026-01-05 13:53:14','Mumbai, Maharashtra, India',0,'2026-01-24 10:33:24',5697.00,NULL,3,0,-1),(7,49,NULL,'card','Electric Kettle',1899.00,'https://via.placeholder.com/150?text=Electric+Kettle','',1,'Stainless steel body, Heat-resistant plastic handle','2026-01-05 13:53:14','Mumbai, Maharashtra, India',0,'2026-01-24 10:45:53',3798.00,NULL,3,0,-1),(8,49,NULL,'card','Electric Kettle',1899.00,'/static/products/kettle.jpg','',9,'Stainless steel','2026-01-05 13:58:57','Mumbai, India',0,'2026-01-24 11:04:13',5697.00,NULL,4,0,-1),(9,49,NULL,'card','Electric Kettle',1899.00,'/static/products/kettle.jpg','',6,'Stainless steel','2026-01-05 13:58:57','Mumbai, India',0,'2026-01-24 11:15:11',1899.00,NULL,4,0,-1),(10,49,NULL,'food_items','b',34.00,'/static/products/kettle.jpg','/static/products/a.mp4',7,'5','2026-01-06 00:00:00','5',0,'2026-01-24 11:18:07',102.00,NULL,1,0,-1),(11,49,NULL,'card','Electric Kettle',1899.00,'/static/products/kettle.jpg','',5,'Stainless steel','2026-01-05 13:58:57','Mumbai, India',0,'2026-01-24 11:28:47',5697.00,NULL,4,0,-3),(12,49,'row_4','study_material','Data Structures Book',799.00,'/static/products/book_ds.jpeg','',9,'Paperback, High quality paper','2026-01-05 14:51:34','Delhi, India',0,'2026-01-25 10:10:59',2397.00,NULL,4,0,-3),(13,49,NULL,'study_material','Data Structures Book',799.00,'/static/products/book_ds.jpeg','',6,'Paperback, High quality paper','2026-01-05 14:51:34','Delhi, India',0,'2026-01-25 10:13:56',5593.00,NULL,4,0,-7),(14,49,NULL,'study_material','gndbjh',75858.00,'/static/products/yumhub.jpg','/static/products/mp4',9,'a','2026-01-05 00:00:00','zeal college pune ',0,'2026-01-25 11:04:38',151716.00,NULL,5,0,-2),(15,49,'row_5','food_items','b',34.00,'/static/products/kettle.jpg','/static/products/a.mp4',9,'5','2026-01-06 00:00:00','5',2,'2026-02-06 16:28:14',68.00,NULL,1,0,0),(16,49,NULL,'card','Electric Kettle',1899.00,'https://via.placeholder.com/150?text=Electric+Kettle','',9,'Stainless steel body, Heat-resistant plastic handle','2026-01-05 13:53:14','Mumbai, Maharashtra, India',2,'2026-02-06 22:23:17',3798.00,NULL,3,0,0),(17,49,'row_6','card','Electric Kettle',1899.00,'https://via.placeholder.com/150?text=Electric+Kettle','',3,'Stainless steel body, Heat-resistant plastic handle','2026-01-05 13:53:14','Mumbai, Maharashtra, India',1,'2026-02-07 09:55:27',3798.00,NULL,3,0,-1),(18,49,NULL,'card','Mixer Grinder',2999.00,'https://via.placeholder.com/150?text=Mixer+Grinder','/static/products/static/products/mixer_demo.mp4',5324,'Stainless Steel body, Copper motor','2026-01-05 13:38:29','Pune, Maharashtra, India',5,'2026-02-07 18:46:42',14995.00,NULL,1,0,0),(19,49,'row_7','card','spoon',347.00,'/static/products/yumhub.jpg','/static/products/How_to_Create_SearchView_on_Google_Map_in_Android_Studio___Step_by_Step_Google_Maps_Android_Tutorial.mp4',6,'steel','2026-01-05 00:00:00','zeal college pune ',1,'2026-02-09 17:24:13',347.00,NULL,5,0,0),(20,49,NULL,'study_material','2',22.00,'/static/products/download_1.jpeg','/static/products/a.mp4',200,'22','2026-01-06 00:00:00','2',0,'2026-02-09 17:24:19',22.00,NULL,6,0,-1),(21,49,NULL,'study_material','w',3.00,'/static/products/book_ds.jpeg','',4135,'q','2026-01-06 00:00:00','q',0,'2026-02-09 17:24:23',3.00,NULL,9,0,-1),(22,49,NULL,'card','Mixer Grinder',2999.00,'https://via.placeholder.com/150?text=Mixer+Grinder','/static/products/static/products/mixer_demo.mp4',5279,'Stainless Steel body, Copper motor','2026-01-05 13:38:29','Pune, Maharashtra, India',1,'2026-02-09 17:29:36',2999.00,NULL,1,0,0),(23,49,NULL,'study_material','w',3.00,'/static/products/book_ds.jpeg','',4134,'q','2026-01-06 00:00:00','q',1,'2026-02-09 17:29:40',3.00,NULL,9,0,0);
/*!40000 ALTER TABLE `awe_49` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `babu_22`
--

DROP TABLE IF EXISTS `babu_22`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `babu_22` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `row_no` varchar(20) DEFAULT NULL,
  `category` varchar(50) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `video` varchar(255) DEFAULT NULL,
  `availability` int DEFAULT NULL,
  `detail` text,
  `uploaded_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `address` varchar(255) DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `total` decimal(10,2) DEFAULT NULL,
  `mode` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `babu_22`
--

LOCK TABLES `babu_22` WRITE;
/*!40000 ALTER TABLE `babu_22` DISABLE KEYS */;
/*!40000 ALTER TABLE `babu_22` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bag_33`
--

DROP TABLE IF EXISTS `bag_33`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bag_33` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `row_no` varchar(20) DEFAULT NULL,
  `category` varchar(50) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `video` varchar(255) DEFAULT NULL,
  `availability` int DEFAULT NULL,
  `detail` text,
  `uploaded_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `address` varchar(255) DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `total` decimal(10,2) DEFAULT NULL,
  `mode` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bag_33`
--

LOCK TABLES `bag_33` WRITE;
/*!40000 ALTER TABLE `bag_33` DISABLE KEYS */;
/*!40000 ALTER TABLE `bag_33` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bottle_34`
--

DROP TABLE IF EXISTS `bottle_34`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bottle_34` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `row_no` varchar(20) DEFAULT NULL,
  `category` varchar(50) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `video` varchar(255) DEFAULT NULL,
  `availability` int DEFAULT NULL,
  `detail` text,
  `uploaded_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `address` varchar(255) DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `total` decimal(10,2) DEFAULT NULL,
  `mode` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bottle_34`
--

LOCK TABLES `bottle_34` WRITE;
/*!40000 ALTER TABLE `bottle_34` DISABLE KEYS */;
/*!40000 ALTER TABLE `bottle_34` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `butter_51`
--

DROP TABLE IF EXISTS `butter_51`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `butter_51` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `row_no` varchar(20) DEFAULT NULL,
  `category` varchar(50) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `video` varchar(255) DEFAULT NULL,
  `availability` int DEFAULT NULL,
  `detail` text,
  `uploaded_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `address` varchar(255) DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `total` decimal(10,2) DEFAULT NULL,
  `mode` varchar(20) DEFAULT NULL,
  `product_id` int DEFAULT NULL,
  `sub_vc` int DEFAULT '0',
  `sub_vc_item` int DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `butter_51`
--

LOCK TABLES `butter_51` WRITE;
/*!40000 ALTER TABLE `butter_51` DISABLE KEYS */;
INSERT INTO `butter_51` VALUES (1,51,'row_1','card','Mixer Grinder',2999.00,'https://via.placeholder.com/150?text=Mixer+Grinder','/static/products/static/products/mixer_demo.mp4',5287,'Stainless Steel body, Copper motor','2026-01-05 13:38:29','Pune, Maharashtra, India',0,'2026-02-08 23:44:02',2999.00,NULL,1,0,-1),(2,51,NULL,'card','Mixer Grinder',2999.00,'https://via.placeholder.com/150?text=Mixer+Grinder','/static/products/static/products/mixer_demo.mp4',5286,'Stainless Steel body, Copper motor','2026-01-05 13:38:29','Pune, Maharashtra, India',1,'2026-02-08 23:45:55',5998.00,NULL,1,0,-1),(3,51,'row_2','card','Electric Kettle',1899.00,'/static/products/kettle.jpg','',4145,'Stainless steel','2026-01-05 13:58:57','Mumbai, India',0,'2026-02-09 08:40:09',1899.00,NULL,4,0,-1),(4,51,NULL,'card','Mixer Grinder',2999.00,'https://via.placeholder.com/150?text=Mixer+Grinder','/static/products/static/products/mixer_demo.mp4',5284,'Stainless Steel body, Copper motor','2026-01-05 13:38:29','Pune, Maharashtra, India',1,'2026-02-09 10:34:34',8997.00,NULL,1,0,-2),(5,51,NULL,'card','q',600.00,'/static/products/Screenshot_2026-01-02_174133.png','/static/products/----_-_2.mp4',200,'12q','2026-01-06 00:00:00','zeal college pune ',0,'2026-02-09 10:36:28',600.00,NULL,6,0,-1),(6,51,NULL,'food_items','vada pav',25.00,'/static/products/download_10.jpeg','',9,'a','2026-02-09 00:00:00','zeal',0,'2026-02-09 11:32:11',50.00,NULL,7,0,-2),(7,51,NULL,'food_items','vada pav',25.00,'/static/products/download_10.jpeg','',7,'a','2026-02-09 00:00:00','zeal',1,'2026-02-09 11:32:41',25.00,NULL,7,0,0);
/*!40000 ALTER TABLE `butter_51` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `card`
--

DROP TABLE IF EXISTS `card`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `card` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `video` varchar(255) DEFAULT NULL,
  `availability` int NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `detail` text,
  `purchased_by` varchar(100) DEFAULT NULL,
  `uploaded_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `address` varchar(255) DEFAULT NULL,
  `material` text,
  `category` varchar(50) DEFAULT 'card',
  `searched_count` int DEFAULT '0',
  `last_searched_time` datetime DEFAULT NULL,
  `last_addtocart_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `card`
--

LOCK TABLES `card` WRITE;
/*!40000 ALTER TABLE `card` DISABLE KEYS */;
INSERT INTO `card` VALUES (1,'Mixer Grinder','https://via.placeholder.com/150?text=Mixer+Grinder','static/products/mixer_demo.mp4',5235,2999.00,'2026-05-04 21:59:56','Kitchen appliance',NULL,'2026-01-05 13:38:29','Pune, Maharashtra, India','Stainless Steel body, Copper motor','card',270,'2026-03-28 14:16:35','2026-02-21 14:04:40'),(2,'Kitchen Mixer','https://via.placeholder.com/150?text=Kitchen+Mixer',NULL,0,2999.00,'2026-03-28 10:56:01','Heavy duty mixer',NULL,'2026-01-05 13:38:29',NULL,NULL,'card',172,'2026-03-28 10:56:01','2026-02-21 14:04:40'),(3,'Electric Kettle','https://via.placeholder.com/150?text=Electric+Kettle',NULL,3797,1899.00,'2026-03-28 07:54:45','Fast boiling electric kettle with auto shut-off',NULL,'2026-01-05 13:53:14','Mumbai, Maharashtra, India','Stainless steel body, Heat-resistant plastic handle','card',144,'2026-03-28 07:54:45','2026-02-21 14:04:40'),(4,'Electric Kettle','kettle.jpg',NULL,4137,1899.00,'2026-03-28 10:54:56','Fast boiling electric kettle',NULL,'2026-01-05 13:58:57','Mumbai, India','Stainless steel','card',144,'2026-03-28 07:54:45','2026-02-21 14:04:40'),(5,'spoon','yumhub.jpg','How_to_Create_SearchView_on_Google_Map_in_Android_Studio___Step_by_Step_Google_Maps_Android_Tutorial.mp4',0,347.00,'2026-03-28 10:56:13','Made of: steel\nUsed for: making food \nHarmful: do not heat more \nPrecautions: don\'t play with it',NULL,'2026-01-05 00:00:00','zeal college pune ','steel','card',177,'2026-03-28 10:56:13','2026-02-21 14:04:40'),(6,'q','Screenshot_2026-01-02_174133.png','----_-_2.mp4',191,600.00,'2026-05-04 21:56:54','Made of: 12q\nUsed for: fbdg\nHarmful: svdg\nPrecautions: jbgkfgj',NULL,'2026-01-06 00:00:00','zeal college pune ','12q','card',136,'2026-03-28 14:41:04','2026-02-21 14:04:40'),(7,'a','Screenshot_2026-01-02_174133.png','mp4',0,335.00,'2026-03-27 15:05:00','Made of: qq\nUsed for: qq\nHarmful: q\nPrecautions: q',NULL,'2026-01-06 00:00:00','q','qq','card',26,'2026-03-27 15:05:00','2026-02-21 14:04:40'),(8,'gndbjh','Screenshot_2026-01-02_174133.png',NULL,1033,122.00,'2026-03-29 13:53:01','Made of: 8\nUsed for: 8\nHarmful: 88\nPrecautions: 8',NULL,'2026-01-06 00:00:00','222','8','card',31,'2026-03-27 17:56:40',NULL);
/*!40000 ALTER TABLE `card` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `trg_card_after_insert` AFTER INSERT ON `card` FOR EACH ROW BEGIN
    INSERT INTO product_availability (dash_item_name, total_dash)
    VALUES (NEW.name, NEW.availability)
    ON DUPLICATE KEY UPDATE
        total_dash = NEW.availability;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `trg_card_insert` AFTER INSERT ON `card` FOR EACH ROW BEGIN
  INSERT INTO product_availability
  (dash_item_name, actual_availability, removed, product_id, category)
  VALUES (NEW.name, NEW.availability, 0, NEW.id, 'card');
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `trg_card_availability_update` AFTER UPDATE ON `card` FOR EACH ROW BEGIN
    IF NEW.availability <> OLD.availability THEN
        UPDATE product_availability
        SET actual_availability = NEW.availability
        WHERE product_id = NEW.id
          AND category = NEW.category;
    END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cart` (
  `id` int NOT NULL AUTO_INCREMENT,
  `product_name` varchar(150) NOT NULL,
  `price` int NOT NULL,
  `quantity` int DEFAULT '1',
  `added_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart`
--

LOCK TABLES `cart` WRITE;
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
INSERT INTO `cart` VALUES (1,'Kitchen Product 1',100,1,'2026-01-03 15:59:36'),(2,'Kitchen Product 2',200,1,'2026-01-03 15:59:40');
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cart_summary`
--

DROP TABLE IF EXISTS `cart_summary`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cart_summary` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `purchased_by` varchar(100) DEFAULT NULL,
  `total` decimal(10,2) NOT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart_summary`
--

LOCK TABLES `cart_summary` WRITE;
/*!40000 ALTER TABLE `cart_summary` DISABLE KEYS */;
INSERT INTO `cart_summary` VALUES (1,3,'a',271.00,'2026-01-14 13:30:14'),(2,3,'a',393.00,'2026-01-14 13:30:16'),(3,3,'a',515.00,'2026-01-14 13:30:18'),(4,3,'a',518.00,'2026-01-14 13:30:20'),(5,1,'sakshi',166.00,'2026-01-14 14:12:30'),(6,7,'aaaaaa',3235.00,'2026-01-14 14:40:46'),(7,7,'aaaaaa',3357.00,'2026-01-14 14:40:49'),(8,7,'aaaaaa',3479.00,'2026-01-14 14:40:52'),(9,12,'aaa',47.00,'2026-01-14 14:45:11'),(10,1,'sakshi',169.00,'2026-01-15 11:27:23'),(11,1,'sakshi',172.00,'2026-01-15 11:27:25'),(12,1,'sakshi',175.00,'2026-01-15 11:27:29');
/*!40000 ALTER TABLE `cart_summary` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `close_39`
--

DROP TABLE IF EXISTS `close_39`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `close_39` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `row_no` varchar(20) DEFAULT NULL,
  `category` varchar(50) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `video` varchar(255) DEFAULT NULL,
  `availability` int DEFAULT NULL,
  `detail` text,
  `uploaded_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `address` varchar(255) DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `total` decimal(10,2) DEFAULT NULL,
  `mode` varchar(20) DEFAULT NULL,
  `product_id` int DEFAULT NULL,
  `sub_vc` int DEFAULT '0',
  `sub_vc_item` int DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `close_39`
--

LOCK TABLES `close_39` WRITE;
/*!40000 ALTER TABLE `close_39` DISABLE KEYS */;
INSERT INTO `close_39` VALUES (1,39,'row_1','study_material','2',22.00,'/static/products/download_1.jpeg','/static/products/a.mp4',5,'22','2026-01-06 00:00:00','2',1,'2026-01-21 12:23:52',22.00,NULL,NULL,0,0),(2,39,'row_2','food_items','b',34.00,'/static/products/kettle.jpg','/static/products/a.mp4',5311,'5','2026-01-06 00:00:00','5',2,'2026-02-08 08:24:05',68.00,NULL,1,0,0),(3,39,NULL,'food_items','b',34.00,'/static/products/kettle.jpg','/static/products/a.mp4',5309,'5','2026-01-06 00:00:00','5',2,'2026-02-08 08:24:51',68.00,NULL,1,0,0),(4,39,'row_3','card','Mixer Grinder',2999.00,'https://via.placeholder.com/150?text=Mixer+Grinder','/static/products/static/products/mixer_demo.mp4',5255,'Stainless Steel body, Copper motor','2026-01-05 13:38:29','Pune, Maharashtra, India',3,'2026-03-28 14:21:36',8997.00,NULL,1,0,0),(5,39,NULL,'card','q',600.00,'/static/products/Screenshot_2026-01-02_174133.png','/static/products/----_-_2.mp4',199,'12q','2026-01-06 00:00:00','zeal college pune ',1,'2026-03-28 14:41:18',600.00,NULL,6,0,0),(6,39,NULL,'card','Mixer Grinder',2999.00,'https://via.placeholder.com/150?text=Mixer+Grinder','/static/products/static/products/mixer_demo.mp4',5252,'Stainless Steel body, Copper motor','2026-01-05 13:38:29','Pune, Maharashtra, India',1,'2026-03-28 15:02:01',2999.00,NULL,1,0,0);
/*!40000 ALTER TABLE `close_39` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `close_39_product_activity`
--

DROP TABLE IF EXISTS `close_39_product_activity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `close_39_product_activity` (
  `id` int NOT NULL AUTO_INCREMENT,
  `product_id` int DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `category` varchar(100) DEFAULT NULL,
  `today_search_count` int DEFAULT '0',
  `search_time` time DEFAULT NULL,
  `today_add_to_cart_count` int DEFAULT '0',
  `add_to_cart_time` time DEFAULT NULL,
  `today_purchase_count` int DEFAULT '0',
  `purchased_time` time DEFAULT NULL,
  `month` varchar(20) DEFAULT NULL,
  `growth` float DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `close_39_product_activity`
--

LOCK TABLES `close_39_product_activity` WRITE;
/*!40000 ALTER TABLE `close_39_product_activity` DISABLE KEYS */;
/*!40000 ALTER TABLE `close_39_product_activity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dft_61`
--

DROP TABLE IF EXISTS `dft_61`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dft_61` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `product_id` int DEFAULT NULL,
  `row_no` varchar(20) DEFAULT NULL,
  `category` varchar(50) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `video` varchar(255) DEFAULT NULL,
  `availability` int DEFAULT NULL,
  `detail` text,
  `uploaded_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `address` varchar(255) DEFAULT NULL,
  `quantity` int DEFAULT '1',
  `date` datetime DEFAULT CURRENT_TIMESTAMP,
  `total` decimal(10,2) DEFAULT NULL,
  `mode` varchar(20) DEFAULT NULL,
  `sub_vc_item` int DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dft_61`
--

LOCK TABLES `dft_61` WRITE;
/*!40000 ALTER TABLE `dft_61` DISABLE KEYS */;
INSERT INTO `dft_61` VALUES (1,61,1,'row_1','card','Mixer Grinder',2999.00,'https://via.placeholder.com/150?text=Mixer+Grinder','/static/products/static/products/mixer_demo.mp4',5274,'Stainless Steel body, Copper motor','2026-01-05 13:38:29','Pune, Maharashtra, India',1,'2026-02-21 08:54:00',2999.00,NULL,0),(2,61,3,NULL,'card','Electric Kettle',1899.00,'https://via.placeholder.com/150?text=Electric+Kettle','',3797,'Stainless steel body, Heat-resistant plastic handle','2026-01-05 13:53:14','Mumbai, Maharashtra, India',1,'2026-02-21 10:48:32',1899.00,NULL,0),(3,61,1,NULL,'card','Mixer Grinder',2999.00,'https://via.placeholder.com/150?text=Mixer+Grinder','/static/products/static/products/mixer_demo.mp4',5273,'Stainless Steel body, Copper motor','2026-01-05 13:38:29','Pune, Maharashtra, India',1,'2026-02-21 12:52:45',2999.00,NULL,0),(4,61,1,NULL,'card','Mixer Grinder',2999.00,'https://via.placeholder.com/150?text=Mixer+Grinder','/static/products/static/products/mixer_demo.mp4',5272,'Stainless Steel body, Copper motor','2026-01-05 13:38:29','Pune, Maharashtra, India',1,'2026-02-21 13:15:54',2999.00,NULL,0),(5,61,1,NULL,'card','Mixer Grinder',2999.00,'https://via.placeholder.com/150?text=Mixer+Grinder','/static/products/static/products/mixer_demo.mp4',5271,'Stainless Steel body, Copper motor','2026-01-05 13:38:29','Pune, Maharashtra, India',1,'2026-02-21 13:53:21',2999.00,NULL,0),(6,61,1,NULL,'card','Mixer Grinder',2999.00,'https://via.placeholder.com/150?text=Mixer+Grinder','/static/products/static/products/mixer_demo.mp4',5270,'Stainless Steel body, Copper motor','2026-01-05 13:38:29','Pune, Maharashtra, India',1,'2026-02-21 14:03:21',2999.00,NULL,0),(7,61,8,'row_2','study_material','gndbjh',122.00,'/static/products/Screenshot_2026-01-02_174133.png','',1034,'8','2026-01-06 00:00:00','222',1,'2026-03-01 08:10:41',122.00,NULL,0),(8,61,1,'row_3','card','Mixer Grinder',2999.00,'https://via.placeholder.com/150?text=Mixer+Grinder','/static/products/static/products/mixer_demo.mp4',5269,'Stainless Steel body, Copper motor','2026-01-05 13:38:29','Pune, Maharashtra, India',1,'2026-03-05 19:41:46',2999.00,NULL,0),(9,61,5,NULL,'card','spoon',347.00,'/static/products/yumhub.jpg','/static/products/How_to_Create_SearchView_on_Google_Map_in_Android_Studio___Step_by_Step_Google_Maps_Android_Tutorial.mp4',4,'steel','2026-01-05 00:00:00','zeal college pune ',1,'2026-03-05 21:38:47',347.00,NULL,0),(10,61,5,NULL,'card','spoon',347.00,'/static/products/yumhub.jpg','/static/products/How_to_Create_SearchView_on_Google_Map_in_Android_Studio___Step_by_Step_Google_Maps_Android_Tutorial.mp4',3,'steel','2026-01-05 00:00:00','zeal college pune ',1,'2026-03-05 21:42:21',347.00,NULL,0),(11,61,5,NULL,'card','spoon',347.00,'/static/products/yumhub.jpg','/static/products/How_to_Create_SearchView_on_Google_Map_in_Android_Studio___Step_by_Step_Google_Maps_Android_Tutorial.mp4',2,'steel','2026-01-05 00:00:00','zeal college pune ',1,'2026-03-05 21:49:23',347.00,NULL,0),(12,61,1,'row_4','card','Mixer Grinder',2999.00,'https://via.placeholder.com/150?text=Mixer+Grinder','/static/products/static/products/mixer_demo.mp4',5268,'Stainless Steel body, Copper motor','2026-01-05 13:38:29','Pune, Maharashtra, India',1,'2026-03-06 22:53:31',2999.00,NULL,0),(13,61,1,NULL,'card','Mixer Grinder',2999.00,'https://via.placeholder.com/150?text=Mixer+Grinder','/static/products/static/products/mixer_demo.mp4',5267,'Stainless Steel body, Copper motor','2026-01-05 13:38:29','Pune, Maharashtra, India',1,'2026-03-06 23:06:40',2999.00,NULL,0),(14,61,1,NULL,'card','Mixer Grinder',2999.00,'https://via.placeholder.com/150?text=Mixer+Grinder','/static/products/static/products/mixer_demo.mp4',5266,'Stainless Steel body, Copper motor','2026-01-05 13:38:29','Pune, Maharashtra, India',1,'2026-03-06 23:27:05',2999.00,NULL,0),(15,61,1,NULL,'card','Mixer Grinder',2999.00,'https://via.placeholder.com/150?text=Mixer+Grinder','/static/products/static/products/mixer_demo.mp4',5265,'Stainless Steel body, Copper motor','2026-01-05 13:38:29','Pune, Maharashtra, India',1,'2026-03-06 23:33:06',2999.00,NULL,0),(16,61,9,NULL,'food_items','vada pav',25.00,'/static/products/download_10.jpeg','',6,'a','2026-02-09 00:00:00','zeal',1,'2026-03-06 23:35:05',25.00,NULL,0),(17,61,1,NULL,'card','Mixer Grinder',2999.00,'https://via.placeholder.com/150?text=Mixer+Grinder','/static/products/static/products/mixer_demo.mp4',5264,'Stainless Steel body, Copper motor','2026-01-05 13:38:29','Pune, Maharashtra, India',1,'2026-03-06 23:38:22',2999.00,NULL,0),(18,61,9,NULL,'food_items','vada pav',25.00,'/static/products/download_10.jpeg','',5,'a','2026-02-09 00:00:00','zeal',1,'2026-03-06 23:43:40',25.00,NULL,0),(19,61,1,'row_5','card','Mixer Grinder',2999.00,'https://via.placeholder.com/150?text=Mixer+Grinder','/static/products/static/products/mixer_demo.mp4',5263,'Stainless Steel body, Copper motor','2026-01-05 13:38:29','Pune, Maharashtra, India',1,'2026-03-07 07:53:26',2999.00,NULL,0),(20,61,8,'row_6','card','gndbjh',122.00,'/static/products/Screenshot_2026-01-02_174133.png','',1034,'8','2026-01-06 00:00:00','222',1,'2026-03-09 19:10:00',122.00,NULL,0),(21,61,1,'row_7','food_items','b',34.00,'/static/products/kettle.jpg','/static/products/a.mp4',5298,'5','2026-01-06 00:00:00','5',1,'2026-03-24 12:33:01',34.00,NULL,0),(22,61,11,NULL,'study_material','missal ',25.00,'/static/products/WhatsApp_Image_2026-02-15_at_6.20.38_PM_1.jpeg','',9,'2','2026-02-09 00:00:00','zeal',1,'2026-03-24 13:47:17',25.00,NULL,0),(23,61,11,NULL,'study_material','missal ',25.00,'/static/products/WhatsApp_Image_2026-02-15_at_6.20.38_PM_1.jpeg','',8,'2','2026-02-09 00:00:00','zeal',1,'2026-03-24 13:50:01',25.00,NULL,0),(24,61,11,'row_8','study_material','missal ',NULL,'','',7,'','2026-02-09 00:00:00','',1,'2026-03-25 09:02:11',NULL,NULL,0),(25,61,1,'row_9','card','Mixer Grinder',2999.00,'https://via.placeholder.com/150?text=Mixer+Grinder','/static/products/static/products/mixer_demo.mp4',5258,'Stainless Steel body, Copper motor','2026-01-05 13:38:29','Pune, Maharashtra, India',1,'2026-03-28 11:38:03',2999.00,NULL,0),(26,61,1,NULL,'card','Mixer Grinder',2999.00,'https://via.placeholder.com/150?text=Mixer+Grinder','/static/products/static/products/mixer_demo.mp4',5257,'Stainless Steel body, Copper motor','2026-01-05 13:38:29','Pune, Maharashtra, India',1,'2026-03-28 11:44:43',2999.00,NULL,0),(27,61,1,NULL,'card','Mixer Grinder',2999.00,'https://via.placeholder.com/150?text=Mixer+Grinder','/static/products/static/products/mixer_demo.mp4',5256,'Stainless Steel body, Copper motor','2026-01-05 13:38:29','Pune, Maharashtra, India',1,'2026-03-28 11:53:12',2999.00,NULL,0),(28,61,1,NULL,'card','Mixer Grinder',2999.00,'https://via.placeholder.com/150?text=Mixer+Grinder','/static/products/static/products/mixer_demo.mp4',5251,'Stainless Steel body, Copper motor','2026-01-05 13:38:29','Pune, Maharashtra, India',1,'2026-03-28 15:35:21',2999.00,NULL,0),(29,61,1,NULL,'card','Mixer Grinder',2999.00,'https://via.placeholder.com/150?text=Mixer+Grinder','/static/products/static/products/mixer_demo.mp4',5250,'Stainless Steel body, Copper motor','2026-01-05 13:38:29','Pune, Maharashtra, India',1,'2026-03-28 15:40:04',2999.00,NULL,0),(30,61,1,NULL,'card','Mixer Grinder',2999.00,'https://via.placeholder.com/150?text=Mixer+Grinder','/static/products/static/products/mixer_demo.mp4',5249,'Stainless Steel body, Copper motor','2026-01-05 13:38:29','Pune, Maharashtra, India',2,'2026-03-28 15:45:01',5998.00,NULL,0),(31,61,1,'row_10','card','Mixer Grinder',2999.00,'https://via.placeholder.com/150?text=Mixer+Grinder','/static/products/static/products/mixer_demo.mp4',5247,'Stainless Steel body, Copper motor','2026-01-05 13:38:29','Pune, Maharashtra, India',1,'2026-03-29 07:22:56',2999.00,NULL,0),(32,61,1,NULL,'card','Mixer Grinder',2999.00,'https://via.placeholder.com/150?text=Mixer+Grinder','/static/products/static/products/mixer_demo.mp4',5246,'Stainless Steel body, Copper motor','2026-01-05 13:38:29','Pune, Maharashtra, India',1,'2026-03-29 09:08:17',2999.00,NULL,0),(33,61,1,NULL,'card','Mixer Grinder',2999.00,'https://via.placeholder.com/150?text=Mixer+Grinder','/static/products/static/products/mixer_demo.mp4',5245,'Stainless Steel body, Copper motor','2026-01-05 13:38:29','Pune, Maharashtra, India',1,'2026-03-29 09:32:54',2999.00,NULL,0),(34,61,1,NULL,'card','Mixer Grinder',2999.00,'https://via.placeholder.com/150?text=Mixer+Grinder','/static/products/static/products/mixer_demo.mp4',5244,'Stainless Steel body, Copper motor','2026-01-05 13:38:29','Pune, Maharashtra, India',1,'2026-03-29 09:42:39',2999.00,NULL,0),(35,61,1,NULL,'card','Mixer Grinder',2999.00,'https://via.placeholder.com/150?text=Mixer+Grinder','/static/products/static/products/mixer_demo.mp4',5243,'Stainless Steel body, Copper motor','2026-01-05 13:38:29','Pune, Maharashtra, India',1,'2026-03-29 09:50:47',2999.00,NULL,0),(36,61,1,NULL,'card','Mixer Grinder',2999.00,'https://via.placeholder.com/150?text=Mixer+Grinder','/static/products/static/products/mixer_demo.mp4',5242,'Stainless Steel body, Copper motor','2026-01-05 13:38:29','Pune, Maharashtra, India',1,'2026-03-29 10:19:02',2999.00,NULL,0),(37,61,1,NULL,'card','Mixer Grinder',2999.00,'https://via.placeholder.com/150?text=Mixer+Grinder','/static/products/static/products/mixer_demo.mp4',5241,'Stainless Steel body, Copper motor','2026-01-05 13:38:29','Pune, Maharashtra, India',1,'2026-03-29 10:45:57',2999.00,NULL,0),(38,61,1,NULL,'card','Mixer Grinder',2999.00,'https://via.placeholder.com/150?text=Mixer+Grinder','/static/products/static/products/mixer_demo.mp4',5240,'Stainless Steel body, Copper motor','2026-01-05 13:38:29','Pune, Maharashtra, India',1,'2026-03-29 10:55:17',2999.00,NULL,0),(39,61,11,NULL,'study_material','missal ',25.00,'/static/products/WhatsApp_Image_2026-02-15_at_6.20.38_PM_1.jpeg','',6,'2','2026-02-09 00:00:00','zeal',1,'2026-03-29 11:11:46',25.00,NULL,0),(40,61,11,NULL,'study_material','missal ',25.00,'/static/products/WhatsApp_Image_2026-02-15_at_6.20.38_PM_1.jpeg','',5,'2','2026-02-09 00:00:00','zeal',2,'2026-03-29 11:12:38',50.00,NULL,0),(41,61,6,NULL,'card','q',600.00,'/static/products/Screenshot_2026-01-02_174133.png','/static/products/----_-_2.mp4',198,'12q','2026-01-06 00:00:00','zeal college pune ',1,'2026-03-29 11:17:20',600.00,NULL,0),(42,61,6,NULL,'card','q',600.00,'/static/products/Screenshot_2026-01-02_174133.png','/static/products/----_-_2.mp4',197,'12q','2026-01-06 00:00:00','zeal college pune ',1,'2026-03-29 11:23:59',600.00,NULL,0),(43,61,8,NULL,'card','gndbjh',122.00,'/static/products/Screenshot_2026-01-02_174133.png','',1033,'8','2026-01-06 00:00:00','222',1,'2026-03-29 13:53:01',122.00,NULL,0),(44,61,1,NULL,'card','Mixer Grinder',2999.00,'https://via.placeholder.com/150?text=Mixer+Grinder','/static/products/static/products/mixer_demo.mp4',5239,'Stainless Steel body, Copper motor','2026-01-05 13:38:29','Pune, Maharashtra, India',1,'2026-03-29 14:02:20',2999.00,NULL,0),(45,61,6,NULL,'card','q',600.00,'/static/products/Screenshot_2026-01-02_174133.png','/static/products/----_-_2.mp4',196,'12q','2026-01-06 00:00:00','zeal college pune ',1,'2026-03-29 14:03:13',600.00,NULL,0),(46,61,6,NULL,'card','q',600.00,'/static/products/Screenshot_2026-01-02_174133.png','/static/products/----_-_2.mp4',195,'12q','2026-01-06 00:00:00','zeal college pune ',1,'2026-03-29 14:08:52',600.00,NULL,0),(47,61,9,NULL,'study_material','w',3.00,'/static/products/book_ds.jpeg','',4133,'q','2026-01-06 00:00:00','q',1,'2026-03-29 14:15:09',3.00,NULL,0),(48,61,6,NULL,'card','q',600.00,'/static/products/Screenshot_2026-01-02_174133.png','/static/products/----_-_2.mp4',194,'12q','2026-01-06 00:00:00','zeal college pune ',1,'2026-03-29 14:16:05',600.00,NULL,0),(49,61,6,NULL,'card','q',600.00,'/static/products/Screenshot_2026-01-02_174133.png','/static/products/----_-_2.mp4',193,'12q','2026-01-06 00:00:00','zeal college pune ',1,'2026-03-29 14:19:00',600.00,NULL,0),(50,61,1,NULL,'card','Mixer Grinder',2999.00,'https://via.placeholder.com/150?text=Mixer+Grinder','/static/products/static/products/mixer_demo.mp4',5238,'Stainless Steel body, Copper motor','2026-01-05 13:38:29','Pune, Maharashtra, India',1,'2026-03-29 14:21:35',2999.00,NULL,0),(51,61,6,NULL,'card','q',600.00,'/static/products/Screenshot_2026-01-02_174133.png','/static/products/----_-_2.mp4',192,'12q','2026-01-06 00:00:00','zeal college pune ',1,'2026-03-29 14:23:59',600.00,NULL,0),(52,61,6,'row_11','card','q',600.00,'/static/products/Screenshot_2026-01-02_174133.png','/static/products/----_-_2.mp4',191,'12q','2026-01-06 00:00:00','zeal college pune ',1,'2026-05-04 21:56:54',600.00,NULL,0),(53,61,9,'row_12','study_material','w',3.00,'/static/products/book_ds.jpeg','',4131,'q','2026-01-06 00:00:00','q',1,'2026-05-05 18:07:30',3.00,NULL,0);
/*!40000 ALTER TABLE `dft_61` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dft_61_product_activity`
--

DROP TABLE IF EXISTS `dft_61_product_activity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dft_61_product_activity` (
  `id` int NOT NULL AUTO_INCREMENT,
  `product_id` int DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `category` varchar(100) DEFAULT NULL,
  `today_search_count` int DEFAULT '0',
  `search_time` time DEFAULT NULL,
  `growth_on_search` varchar(10) DEFAULT NULL,
  `today_add_to_cart_count` int DEFAULT '0',
  `add_to_cart_time` time DEFAULT NULL,
  `growth_in_addtocart` varchar(10) DEFAULT NULL,
  `today_purchase_count` int DEFAULT '0',
  `purchased_time` time DEFAULT NULL,
  `growth_in_purchased` varchar(10) DEFAULT NULL,
  `month` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dft_61_product_activity`
--

LOCK TABLES `dft_61_product_activity` WRITE;
/*!40000 ALTER TABLE `dft_61_product_activity` DISABLE KEYS */;
INSERT INTO `dft_61_product_activity` VALUES (1,3,'Electric Kettle','card',124,'07:54:45','124/100',0,NULL,'0',0,NULL,'0','March'),(2,4,'Electric Kettle','card',124,'07:54:45','124/100',0,NULL,'0',0,NULL,'0','March'),(3,6,'q','card',1,'22:34:22','0',0,NULL,'0',0,NULL,'0','March'),(4,6,'q','card',1,'22:34:55','0',0,NULL,'0',0,NULL,'0','March'),(5,1,'Mixer Grinder','card',166,'07:54:45','166/100',15,'19:51:34','15/100',0,NULL,'0','March'),(6,9,'vada pav','food_items',11,'15:05:00','11/100',3,'23:37:29','3/100',0,NULL,NULL,'March'),(7,10,'vada pav','study_material',11,'15:05:00','11/100',0,NULL,NULL,0,NULL,NULL,'March'),(8,7,'vada pav','food_items',21,'15:05:00','21/100',4,'19:45:01','4/100',0,NULL,NULL,'March'),(9,8,'vada pav','food_items',41,'17:56:40','41/100',2,'19:22:49','2/100',0,NULL,NULL,'March'),(10,2,'Kitchen Mixer','card',132,'07:54:45','132/100',0,NULL,NULL,0,NULL,NULL,'March'),(11,5,'spoon','card',157,'07:54:45','157/100',0,NULL,NULL,0,NULL,NULL,'March'),(12,11,'missal ','study_material',12,'15:05:00','12/100',6,'16:42:37','6/100',0,NULL,NULL,'March');
/*!40000 ALTER TABLE `dft_61_product_activity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `farana_24`
--

DROP TABLE IF EXISTS `farana_24`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `farana_24` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `row_no` varchar(20) DEFAULT NULL,
  `category` varchar(50) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `video` varchar(255) DEFAULT NULL,
  `availability` int DEFAULT NULL,
  `detail` text,
  `uploaded_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `address` varchar(255) DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `total` decimal(10,2) DEFAULT NULL,
  `mode` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `farana_24`
--

LOCK TABLES `farana_24` WRITE;
/*!40000 ALTER TABLE `farana_24` DISABLE KEYS */;
/*!40000 ALTER TABLE `farana_24` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `food_items`
--

DROP TABLE IF EXISTS `food_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `food_items` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `video` varchar(255) DEFAULT NULL,
  `availability` int DEFAULT NULL,
  `price` int DEFAULT NULL,
  `detail` text,
  `uploaded_at` date DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `material` varchar(100) DEFAULT NULL,
  `category` varchar(50) DEFAULT 'food_items',
  `searched_count` int DEFAULT '0',
  `last_searched_time` datetime DEFAULT NULL,
  `last_addtocart_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `food_items`
--

LOCK TABLES `food_items` WRITE;
/*!40000 ALTER TABLE `food_items` DISABLE KEYS */;
INSERT INTO `food_items` VALUES (1,'b','kettle.jpg','a.mp4',5298,34,'Made of: 5\nUsed for: 5\nHarmful: 5\nPrecautions: 5','2026-01-06','5','5','food_items',16,'2026-03-06 21:39:17','2026-02-21 14:04:40'),(2,'e','Screenshot_2026-01-02_174133.png',NULL,0,56,'Made of: ww\nUsed for: w\nHarmful: w\nPrecautions: w','2026-01-07','w','ww','food_items',14,'2026-03-06 21:39:17','2026-02-21 14:04:40'),(7,'vada pav','download_10.jpeg',NULL,7,25,'Made of: a\nUsed for: a\nHarmful: a\nPrecautions: a','2026-02-09','zeal','a','food_items',28,'2026-03-27 15:05:00','2026-02-21 14:04:40'),(8,'vada pav','download_10.jpeg',NULL,10,25,'Made of: a\nUsed for: a\nHarmful: a\nPrecautions: a','2026-02-09','zeal','a','food_items',28,'2026-03-27 15:05:00',NULL),(9,'vada pav','download_10.jpeg',NULL,5,25,'Made of: a\nUsed for: a\nHarmful: a\nPrecautions: a','2026-02-09','zeal','a','food_items',28,'2026-03-27 15:05:00','2026-02-21 14:04:40');
/*!40000 ALTER TABLE `food_items` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `trg_food_after_insert` AFTER INSERT ON `food_items` FOR EACH ROW BEGIN
    INSERT INTO product_availability (dash_item_name, total_dash)
    VALUES (NEW.name, NEW.availability)
    ON DUPLICATE KEY UPDATE
        total_dash = NEW.availability;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `trg_food_insert` AFTER INSERT ON `food_items` FOR EACH ROW BEGIN
  INSERT INTO product_availability
  (dash_item_name, actual_availability, removed, product_id, category)
  VALUES (NEW.name, NEW.availability, 0, NEW.id, 'food_items');
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `trg_food_availability_update` AFTER UPDATE ON `food_items` FOR EACH ROW BEGIN
    IF NEW.availability <> OLD.availability THEN
        UPDATE product_availability
        SET actual_availability = NEW.availability
        WHERE product_id = NEW.id
          AND category = NEW.category;
    END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `fula_25`
--

DROP TABLE IF EXISTS `fula_25`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `fula_25` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `row_no` varchar(20) DEFAULT NULL,
  `category` varchar(50) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `video` varchar(255) DEFAULT NULL,
  `availability` int DEFAULT NULL,
  `detail` text,
  `uploaded_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `address` varchar(255) DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `total` decimal(10,2) DEFAULT NULL,
  `mode` varchar(20) DEFAULT NULL,
  `product_id` int DEFAULT NULL,
  `sub_vc_item` int DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fula_25`
--

LOCK TABLES `fula_25` WRITE;
/*!40000 ALTER TABLE `fula_25` DISABLE KEYS */;
INSERT INTO `fula_25` VALUES (1,25,'row_1','card','Electric Kettle',1899.00,'/static/products/kettle.jpg','',2,'Stainless steel','2026-01-05 13:58:57','Mumbai, India',0,'2026-01-24 11:31:49',5697.00,NULL,4,-3);
/*!40000 ALTER TABLE `fula_25` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `full_26`
--

DROP TABLE IF EXISTS `full_26`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `full_26` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `row_no` varchar(20) DEFAULT NULL,
  `category` varchar(50) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `video` varchar(255) DEFAULT NULL,
  `availability` int DEFAULT NULL,
  `detail` text,
  `uploaded_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `address` varchar(255) DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `total` decimal(10,2) DEFAULT NULL,
  `mode` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `full_26`
--

LOCK TABLES `full_26` WRITE;
/*!40000 ALTER TABLE `full_26` DISABLE KEYS */;
/*!40000 ALTER TABLE `full_26` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `habki_35`
--

DROP TABLE IF EXISTS `habki_35`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `habki_35` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `row_no` varchar(20) DEFAULT NULL,
  `category` varchar(50) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `video` varchar(255) DEFAULT NULL,
  `availability` int DEFAULT NULL,
  `detail` text,
  `uploaded_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `address` varchar(255) DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `total` decimal(10,2) DEFAULT NULL,
  `mode` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `habki_35`
--

LOCK TABLES `habki_35` WRITE;
/*!40000 ALTER TABLE `habki_35` DISABLE KEYS */;
/*!40000 ALTER TABLE `habki_35` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hand_45`
--

DROP TABLE IF EXISTS `hand_45`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hand_45` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `row_no` varchar(20) DEFAULT NULL,
  `category` varchar(50) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `video` varchar(255) DEFAULT NULL,
  `availability` int DEFAULT NULL,
  `detail` text,
  `uploaded_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `address` varchar(255) DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `total` decimal(10,2) DEFAULT NULL,
  `mode` varchar(20) DEFAULT NULL,
  `product_id` int DEFAULT NULL,
  `sub_vc_item` int DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hand_45`
--

LOCK TABLES `hand_45` WRITE;
/*!40000 ALTER TABLE `hand_45` DISABLE KEYS */;
INSERT INTO `hand_45` VALUES (1,45,'row_1','food_items','b',34.00,'/static/products/kettle.jpg','/static/products/a.mp4',4,'5','2026-01-06 00:00:00','5',2,'2026-01-24 12:23:19',136.00,NULL,1,-2),(2,45,NULL,'study_material','w',3.00,'/static/products/book_ds.jpeg','',6,'q','2026-01-06 00:00:00','q',1,'2026-01-24 12:28:21',9.00,NULL,9,-2),(3,45,NULL,'card','spoon',347.00,'/static/products/yumhub.jpg','/static/products/How_to_Create_SearchView_on_Google_Map_in_Android_Studio___Step_by_Step_Google_Maps_Android_Tutorial.mp4',1,'steel','2026-01-05 00:00:00','zeal college pune ',2,'2026-01-24 13:24:27',694.00,NULL,5,0),(4,45,'row_2','study_material','Engineering Drawing Kit',899.00,'/static/products/static/products/drawing_kit.jpg','',5,'Plastic box, Steel tools','2026-01-05 14:16:38','Bengaluru, India',3,'2026-02-07 10:38:10',2697.00,NULL,2,0),(5,45,NULL,'study_material','Engineering Drawing Kit',899.00,'/static/products/static/products/drawing_kit.jpg','',2,'Plastic box, Steel tools','2026-01-05 14:16:38','Bengaluru, India',3,'2026-02-07 10:38:31',2697.00,NULL,2,0),(6,45,NULL,'study_material','Data Structures Book',799.00,'/static/products/book_ds.jpeg','',9,'Paperback, High quality paper','2026-01-05 14:48:32','Delhi, India',0,'2026-02-07 10:39:15',1598.00,NULL,3,-2),(7,45,NULL,'food_items','b',34.00,'/static/products/kettle.jpg','/static/products/a.mp4',5327,'5','2026-01-06 00:00:00','5',8,'2026-02-07 18:32:40',272.00,NULL,1,0);
/*!40000 ALTER TABLE `hand_45` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `helio_36`
--

DROP TABLE IF EXISTS `helio_36`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `helio_36` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `row_no` varchar(20) DEFAULT NULL,
  `category` varchar(50) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `video` varchar(255) DEFAULT NULL,
  `availability` int DEFAULT NULL,
  `detail` text,
  `uploaded_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `address` varchar(255) DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `total` decimal(10,2) DEFAULT NULL,
  `mode` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `helio_36`
--

LOCK TABLES `helio_36` WRITE;
/*!40000 ALTER TABLE `helio_36` DISABLE KEYS */;
/*!40000 ALTER TABLE `helio_36` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hey_41`
--

DROP TABLE IF EXISTS `hey_41`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hey_41` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `row_no` varchar(20) DEFAULT NULL,
  `category` varchar(50) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `video` varchar(255) DEFAULT NULL,
  `availability` int DEFAULT NULL,
  `detail` text,
  `uploaded_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `address` varchar(255) DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `total` decimal(10,2) DEFAULT NULL,
  `mode` varchar(20) DEFAULT NULL,
  `product_id` int DEFAULT NULL,
  `sub_vc_item` int DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hey_41`
--

LOCK TABLES `hey_41` WRITE;
/*!40000 ALTER TABLE `hey_41` DISABLE KEYS */;
INSERT INTO `hey_41` VALUES (1,41,'row_1','card','Mixer Grinder',2999.00,'https://via.placeholder.com/150?text=Mixer+Grinder','/static/products/static/products/mixer_demo.mp4',5275,'Stainless Steel body, Copper motor','2026-01-05 13:38:29','Pune, Maharashtra, India',1,'2026-02-14 11:26:55',2999.00,NULL,1,0);
/*!40000 ALTER TABLE `hey_41` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hi_42`
--

DROP TABLE IF EXISTS `hi_42`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hi_42` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `row_no` varchar(20) DEFAULT NULL,
  `category` varchar(50) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `video` varchar(255) DEFAULT NULL,
  `availability` int DEFAULT NULL,
  `detail` text,
  `uploaded_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `address` varchar(255) DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `total` decimal(10,2) DEFAULT NULL,
  `mode` varchar(20) DEFAULT NULL,
  `product_id` int DEFAULT NULL,
  `sub_vc_item` int DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hi_42`
--

LOCK TABLES `hi_42` WRITE;
/*!40000 ALTER TABLE `hi_42` DISABLE KEYS */;
INSERT INTO `hi_42` VALUES (1,42,'row_1','food_items','e',56.00,'/static/products/Screenshot_2026-01-02_174133.png','',5,'ww','2026-01-07 00:00:00','w',1,'2026-01-24 11:53:56',168.00,NULL,2,-2);
/*!40000 ALTER TABLE `hi_42` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mug_44`
--

DROP TABLE IF EXISTS `mug_44`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mug_44` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `row_no` varchar(20) DEFAULT NULL,
  `category` varchar(50) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `video` varchar(255) DEFAULT NULL,
  `availability` int DEFAULT NULL,
  `detail` text,
  `uploaded_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `address` varchar(255) DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `total` decimal(10,2) DEFAULT NULL,
  `mode` varchar(20) DEFAULT NULL,
  `product_id` int DEFAULT NULL,
  `sub_vc_item` int DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mug_44`
--

LOCK TABLES `mug_44` WRITE;
/*!40000 ALTER TABLE `mug_44` DISABLE KEYS */;
INSERT INTO `mug_44` VALUES (1,44,'row_1','study_material','2',22.00,'/static/products/download_1.jpeg','/static/products/a.mp4',1,'22','2026-01-06 00:00:00','2',0,'2026-01-21 16:31:46',22.00,NULL,NULL,-1),(2,44,NULL,'study_material','w',3.00,'/static/products/book_ds.jpeg','',8,'q','2026-01-06 00:00:00','q',0,'2026-01-21 17:15:13',9.00,NULL,NULL,-3),(3,44,NULL,'study_material','w',3.00,'/static/products/book_ds.jpeg','',5,'q','2026-01-06 00:00:00','q',0,'2026-01-21 17:33:52',6.00,NULL,NULL,-2),(4,44,NULL,'card','Mixer Grinder',2999.00,'https://via.placeholder.com/150?text=Mixer+Grinder','/static/products/static/products/mixer_demo.mp4',2,'Stainless Steel body, Copper motor','2026-01-05 13:38:29','Pune, Maharashtra, India',0,'2026-01-21 18:13:03',2999.00,NULL,NULL,-1),(5,44,'row_2','food_items','e',56.00,'/static/products/Screenshot_2026-01-02_174133.png','',2,'ww','2026-01-07 00:00:00','w',0,'2026-01-24 12:03:28',168.00,NULL,2,-3),(6,44,'row_3','card','a',335.00,'/static/products/Screenshot_2026-01-02_174133.png','/static/products/mp4',8,'qq','2026-01-06 00:00:00','q',0,'2026-01-25 08:58:10',335.00,NULL,7,-1),(7,44,NULL,'card','a',335.00,'/static/products/Screenshot_2026-01-02_174133.png','/static/products/mp4',7,'qq','2026-01-06 00:00:00','q',0,'2026-01-25 09:01:04',1005.00,NULL,7,-3),(8,44,NULL,'card','a',335.00,'/static/products/Screenshot_2026-01-02_174133.png','/static/products/mp4',4,'qq','2026-01-06 00:00:00','q',0,'2026-01-25 09:02:57',1005.00,NULL,7,-3),(9,44,NULL,'card','a',335.00,'/static/products/Screenshot_2026-01-02_174133.png','/static/products/mp4',1,'qq','2026-01-06 00:00:00','q',0,'2026-01-25 09:15:48',670.00,NULL,7,-2),(10,44,NULL,'card','gndbjh',122.00,'/static/products/Screenshot_2026-01-02_174133.png','',9,'8','2026-01-06 00:00:00','222',0,'2026-01-25 09:17:30',122.00,NULL,8,-1),(11,44,NULL,'card','gndbjh',122.00,'/static/products/Screenshot_2026-01-02_174133.png','',7,'8','2026-01-06 00:00:00','222',0,'2026-01-25 09:26:52',244.00,NULL,8,-2),(12,44,NULL,'study_material','Physics Textbook – Class 12',499.00,'/static/products/static/products/physics_book.jpg','/static/products/static/products/physics_intro.mp4',6,'Paperback, Recycled paper','2026-01-05 14:16:38','Delhi, India',0,'2026-01-25 09:38:54',1497.00,NULL,1,-3),(13,44,NULL,'study_material','Physics Textbook – Class 12',499.00,'/static/products/static/products/physics_book.jpg','/static/products/static/products/physics_intro.mp4',3,'Paperback, Recycled paper','2026-01-05 14:16:38','Delhi, India',0,'2026-01-25 09:43:39',1996.00,NULL,1,-4),(14,44,NULL,'study_material','Engineering Drawing Kit',899.00,'/static/products/static/products/drawing_kit.jpg','',9,'Plastic box, Steel tools','2026-01-05 14:16:38','Bengaluru, India',0,'2026-01-25 09:47:36',1798.00,NULL,2,-2),(15,44,NULL,'study_material','Engineering Drawing Kit',899.00,'/static/products/static/products/drawing_kit.jpg','',7,'Plastic box, Steel tools','2026-01-05 14:16:38','Bengaluru, India',0,'2026-01-25 09:50:10',899.00,NULL,2,-1),(16,44,NULL,'study_material','Engineering Drawing Kit',899.00,'/static/products/static/products/drawing_kit.jpg','',6,'Plastic box, Steel tools','2026-01-05 14:16:38','Bengaluru, India',0,'2026-01-25 10:03:34',1798.00,NULL,2,-2),(17,44,'row_4','card','Mixer Grinder',2999.00,'https://via.placeholder.com/150?text=Mixer+Grinder','/static/products/static/products/mixer_demo.mp4',5319,'Stainless Steel body, Copper motor','2026-01-05 13:38:29','Pune, Maharashtra, India',0,'2026-02-07 18:54:26',14995.00,NULL,1,-5),(18,44,'row_5','card','Mixer Grinder',2999.00,'https://via.placeholder.com/150?text=Mixer+Grinder','/static/products/static/products/mixer_demo.mp4',5277,'Stainless Steel body, Copper motor','2026-01-05 13:38:29','Pune, Maharashtra, India',1,'2026-02-13 21:37:23',2999.00,NULL,1,0);
/*!40000 ALTER TABLE `mug_44` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oop_56`
--

DROP TABLE IF EXISTS `oop_56`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `oop_56` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `product_id` int DEFAULT NULL,
  `row_no` varchar(20) DEFAULT NULL,
  `category` varchar(50) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `video` varchar(255) DEFAULT NULL,
  `availability` int DEFAULT NULL,
  `detail` text,
  `uploaded_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `address` varchar(255) DEFAULT NULL,
  `quantity` int DEFAULT '1',
  `date` datetime DEFAULT CURRENT_TIMESTAMP,
  `total` decimal(10,2) DEFAULT NULL,
  `mode` varchar(20) DEFAULT NULL,
  `sub_vc_item` int DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oop_56`
--

LOCK TABLES `oop_56` WRITE;
/*!40000 ALTER TABLE `oop_56` DISABLE KEYS */;
INSERT INTO `oop_56` VALUES (1,56,5,'row_1','card','spoon',347.00,'/static/products/yumhub.jpg','/static/products/How_to_Create_SearchView_on_Google_Map_in_Android_Studio___Step_by_Step_Google_Maps_Android_Tutorial.mp4',5,'steel','2026-01-05 00:00:00','zeal college pune ',1,'2026-02-15 11:53:54',347.00,NULL,0);
/*!40000 ALTER TABLE `oop_56` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payal_37`
--

DROP TABLE IF EXISTS `payal_37`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payal_37` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `row_no` varchar(20) DEFAULT NULL,
  `category` varchar(50) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `video` varchar(255) DEFAULT NULL,
  `availability` int DEFAULT NULL,
  `detail` text,
  `uploaded_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `address` varchar(255) DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `total` decimal(10,2) DEFAULT NULL,
  `mode` varchar(20) DEFAULT NULL,
  `product_id` int DEFAULT NULL,
  `sub_vc_item` int DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payal_37`
--

LOCK TABLES `payal_37` WRITE;
/*!40000 ALTER TABLE `payal_37` DISABLE KEYS */;
INSERT INTO `payal_37` VALUES (1,37,'row_1','card','q',600.00,'/static/products/Screenshot_2026-01-02_174133.png','/static/products/----_-_2.mp4',0,'12q','2026-01-06 00:00:00','zeal college pune ',1,'2026-01-25 08:47:54',600.00,NULL,6,0);
/*!40000 ALTER TABLE `payal_37` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payal_37_product_activity`
--

DROP TABLE IF EXISTS `payal_37_product_activity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payal_37_product_activity` (
  `id` int NOT NULL AUTO_INCREMENT,
  `product_id` int DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `category` varchar(100) DEFAULT NULL,
  `today_search_count` int DEFAULT '0',
  `search_time` time DEFAULT NULL,
  `today_add_to_cart_count` int DEFAULT '0',
  `add_to_cart_time` time DEFAULT NULL,
  `today_purchase_count` int DEFAULT '0',
  `purchased_time` time DEFAULT NULL,
  `month` varchar(20) DEFAULT NULL,
  `growth` float DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payal_37_product_activity`
--

LOCK TABLES `payal_37_product_activity` WRITE;
/*!40000 ALTER TABLE `payal_37_product_activity` DISABLE KEYS */;
/*!40000 ALTER TABLE `payal_37_product_activity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pen_46`
--

DROP TABLE IF EXISTS `pen_46`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pen_46` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `row_no` varchar(20) DEFAULT NULL,
  `category` varchar(50) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `video` varchar(255) DEFAULT NULL,
  `availability` int DEFAULT NULL,
  `detail` text,
  `uploaded_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `address` varchar(255) DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `total` decimal(10,2) DEFAULT NULL,
  `mode` varchar(20) DEFAULT NULL,
  `product_id` int DEFAULT NULL,
  `sub_vc` int DEFAULT '0',
  `sub_vc_item` int DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pen_46`
--

LOCK TABLES `pen_46` WRITE;
/*!40000 ALTER TABLE `pen_46` DISABLE KEYS */;
INSERT INTO `pen_46` VALUES (8,46,'row_1','study_material','gndbjh',122.00,'/static/products/Screenshot_2026-01-02_174133.png','',3,'8','2026-01-06 00:00:00','222',0,'2026-01-23 09:38:50',488.00,NULL,NULL,1,0),(9,46,NULL,'study_material','Data Structures Book',799.00,'/static/products/book_ds.jpeg','',7,'Paperback, High quality paper','2026-01-05 14:51:34','Delhi, India',0,'2026-01-23 12:42:53',1598.00,NULL,4,1,0),(10,46,NULL,'card','Electric Kettle',1899.00,'https://via.placeholder.com/150?text=Electric+Kettle','',7,'Stainless steel body, Heat-resistant plastic handle','2026-01-05 13:53:14','Mumbai, Maharashtra, India',0,'2026-01-23 12:44:15',5697.00,NULL,3,1,0),(11,46,NULL,'study_material','Data Structures Book',799.00,'/static/products/book_ds.jpeg','',5,'Paperback, High quality paper','2026-01-05 14:51:34','Delhi, India',0,'2026-01-23 12:45:58',799.00,NULL,4,0,0),(12,46,'row_2','card','Mixer Grinder',2999.00,'https://via.placeholder.com/150?text=Mixer+Grinder','/static/products/static/products/mixer_demo.mp4',1,'Stainless Steel body, Copper motor','2026-01-05 13:38:29','Pune, Maharashtra, India',0,'2026-01-24 08:16:53',5998.00,NULL,1,1,0),(13,46,NULL,'card','Kitchen Mixer',2999.00,'https://via.placeholder.com/150?text=Kitchen+Mixer','',8,'','2026-01-05 13:38:29','',0,'2026-01-24 08:17:07',5998.00,NULL,2,0,0),(14,46,NULL,'card','Electric Kettle',1899.00,'https://via.placeholder.com/150?text=Electric+Kettle','',9,'Stainless steel body, Heat-resistant plastic handle','2026-01-05 13:53:14','Mumbai, Maharashtra, India',0,'2026-01-24 08:34:05',5697.00,NULL,3,0,0),(15,46,NULL,'card','Kitchen Mixer',2999.00,'https://via.placeholder.com/150?text=Kitchen+Mixer','',6,'','2026-01-05 13:38:29','',2,'2026-01-24 08:43:40',8997.00,NULL,2,0,0),(16,46,'row_3','study_material','2',22.00,'/static/products/download_1.jpeg','/static/products/a.mp4',8,'22','2026-01-06 00:00:00','2',1,'2026-01-25 13:37:19',22.00,NULL,6,0,0),(17,46,'row_4','study_material','s',12.00,'/static/products/yumhub.jpg','',5,'1','2026-01-06 00:00:00','1',0,'2026-02-07 15:08:25',48.00,NULL,7,0,-4),(18,46,NULL,'study_material','s',12.00,'/static/products/yumhub.jpg','',1,'1','2026-01-06 00:00:00','1',0,'2026-02-07 15:14:33',24.00,NULL,7,0,-2),(19,46,NULL,'card','a',335.00,'/static/products/Screenshot_2026-01-02_174133.png','/static/products/mp4',5,'qq','2026-01-06 00:00:00','q',1,'2026-02-07 15:21:02',2010.00,NULL,7,0,-5);
/*!40000 ALTER TABLE `pen_46` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_availability`
--

DROP TABLE IF EXISTS `product_availability`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_availability` (
  `id` int NOT NULL AUTO_INCREMENT,
  `product_id` int NOT NULL DEFAULT '0',
  `dash_item_name` varchar(255) DEFAULT NULL,
  `category` varchar(255) DEFAULT NULL,
  `actual_availability` int DEFAULT '0',
  `sub_vc` int DEFAULT '0',
  `removed` tinyint DEFAULT '0',
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `add_vc` int DEFAULT '0',
  `total_dash` int DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=96 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_availability`
--

LOCK TABLES `product_availability` WRITE;
/*!40000 ALTER TABLE `product_availability` DISABLE KEYS */;
INSERT INTO `product_availability` VALUES (1,101,'Test Product A','Category X',10,2,0,'2026-02-08 16:30:13',0,0),(2,102,'Test Product B','Category Y',5,1,0,'2026-02-08 16:30:13',0,0),(11,6,'q','card',191,-5,14,'2026-02-08 22:34:49',0,0),(12,6,'q','card',191,-5,15,'2026-02-08 22:34:49',0,0),(13,1,'Mixer Grinder','card',5235,-24,62,'2026-02-08 23:44:02',0,0),(14,1,'Mixer Grinder','card',5235,-24,63,'2026-02-08 23:44:02',0,0),(15,4,'Electric Kettle','card',4137,0,11,'2026-02-09 08:40:09',0,0),(16,4,'Electric Kettle','card',4137,0,12,'2026-02-09 08:40:09',0,0),(17,6,'q','card',191,0,11,'2026-02-09 10:36:28',0,0),(18,6,'q','card',191,0,12,'2026-02-09 10:36:28',0,0),(19,0,'vada pav',NULL,0,0,0,'2026-02-09 11:13:31',0,10),(20,7,'vada pav','food_items',7,-1,9,'2026-02-09 11:13:31',0,0),(21,7,'vada pav','food_items',7,-1,9,'2026-02-09 11:13:31',0,0),(22,0,'vada pav',NULL,0,0,0,'2026-02-09 11:25:02',0,10),(23,8,'vada pav','food_items',10,0,8,'2026-02-09 11:25:02',0,0),(24,8,'vada pav','food_items',10,0,8,'2026-02-09 11:25:02',0,0),(25,0,'vada pav',NULL,0,0,0,'2026-02-09 11:31:29',0,10),(26,9,'vada pav','food_items',5,-2,10,'2026-02-09 11:31:29',0,0),(27,9,'vada pav','food_items',5,-2,10,'2026-02-09 11:31:29',0,0),(28,7,'vada pav','food_items',7,-1,7,'2026-02-09 11:32:11',0,0),(29,7,'vada pav','food_items',7,-1,8,'2026-02-09 11:32:11',0,0),(30,1,'Mixer Grinder','card',5235,0,55,'2026-02-09 17:11:21',0,0),(31,1,'Mixer Grinder','card',5235,0,56,'2026-02-09 17:11:21',0,0),(32,3,'Electric Kettle','card',3797,-9,10,'2026-02-09 17:12:33',0,0),(33,3,'Electric Kettle','card',3797,-9,11,'2026-02-09 17:12:33',0,0),(34,5,'spoon','card',0,0,9,'2026-02-09 17:24:13',0,0),(35,5,'spoon','card',0,0,10,'2026-02-09 17:24:13',0,0),(36,6,'2','study_material',0,0,0,'2026-02-09 17:24:19',0,0),(37,6,'2','study_material',200,0,1,'2026-02-09 17:24:19',0,0),(38,9,'w','study_material',4131,0,6,'2026-02-09 17:24:23',0,0),(39,9,'w','study_material',4131,0,7,'2026-02-09 17:24:23',0,0),(40,1,'Mixer Grinder','card',5235,0,52,'2026-02-09 17:29:36',0,0),(41,1,'Mixer Grinder','card',5235,0,53,'2026-02-09 17:29:36',0,0),(42,1,'b','food_items',5298,0,2,'2026-02-13 14:39:13',0,0),(43,1,'b','food_items',5298,0,3,'2026-02-13 14:39:13',0,0),(44,1,'Mixer Grinder','card',5235,0,50,'2026-02-13 15:03:19',0,0),(45,1,'Mixer Grinder','card',5235,0,51,'2026-02-13 15:03:19',0,0),(46,1,'Mixer Grinder','card',5235,0,48,'2026-02-13 21:37:23',0,0),(47,1,'Mixer Grinder','card',5235,0,49,'2026-02-13 21:37:23',0,0),(48,1,'Mixer Grinder','card',5235,0,46,'2026-02-14 10:59:49',0,0),(49,1,'Mixer Grinder','card',5235,0,47,'2026-02-14 10:59:49',0,0),(50,1,'Mixer Grinder','card',5235,0,44,'2026-02-14 11:26:55',0,0),(51,1,'Mixer Grinder','card',5235,0,45,'2026-02-14 11:26:55',0,0),(52,5,'spoon','card',0,0,7,'2026-02-15 11:53:54',0,0),(53,5,'spoon','card',0,0,8,'2026-02-15 11:53:54',0,0),(54,9,'vada pav','food_items',5,-2,5,'2026-02-15 17:46:33',0,0),(55,9,'vada pav','food_items',5,-2,6,'2026-02-15 17:46:33',0,0),(56,0,'vada pav',NULL,0,0,0,'2026-02-15 17:54:49',0,10),(57,10,'vada pav','study_material',10,0,0,'2026-02-15 17:54:49',0,0),(58,10,'vada pav','study_material',10,0,0,'2026-02-15 17:54:49',0,0),(59,0,'missal ',NULL,0,0,0,'2026-02-20 07:15:15',0,10),(60,11,'missal ','study_material',4,0,7,'2026-02-20 07:15:15',0,0),(61,11,'missal ','study_material',4,0,7,'2026-02-20 07:15:15',0,0),(62,1,'Mixer Grinder','card',5235,0,42,'2026-02-21 08:54:00',0,0),(63,1,'Mixer Grinder','card',5235,0,43,'2026-02-21 08:54:00',0,0),(64,3,'Electric Kettle','card',0,0,8,'2026-02-21 10:48:32',0,0),(65,3,'Electric Kettle','card',3797,0,9,'2026-02-21 10:48:32',0,0),(66,8,'gndbjh','study_material',0,0,0,'2026-03-01 08:10:41',0,0),(67,8,'gndbjh','study_material',1034,0,1,'2026-03-01 08:10:41',0,0),(68,5,'spoon','card',0,0,5,'2026-03-05 21:38:47',0,0),(69,5,'spoon','card',0,0,6,'2026-03-05 21:38:47',0,0),(70,9,'vada pav','food_items',5,0,1,'2026-03-06 23:35:05',0,0),(71,9,'vada pav','food_items',5,0,2,'2026-03-06 23:35:05',0,0),(72,8,'gndbjh','card',1033,0,1,'2026-03-09 19:10:00',0,0),(73,8,'gndbjh','card',1033,0,2,'2026-03-09 19:10:00',0,0),(74,1,'b','food_items',0,0,0,'2026-03-24 12:33:01',0,0),(75,1,'b','food_items',5298,0,1,'2026-03-24 12:33:01',0,0),(76,11,'missal ','study_material',4,0,5,'2026-03-24 13:47:17',0,0),(77,11,'missal ','study_material',4,0,6,'2026-03-24 13:47:17',0,0),(78,1,'Mixer Grinder','card',5235,0,29,'2026-03-28 10:52:57',0,0),(79,1,'Mixer Grinder','card',5235,0,30,'2026-03-28 10:52:57',0,0),(80,4,'Electric Kettle','card',4137,0,7,'2026-03-28 10:53:14',0,0),(81,4,'Electric Kettle','card',4137,0,8,'2026-03-28 10:53:14',0,0),(82,5,'spoon','card',0,0,1,'2026-03-28 10:53:28',0,0),(83,5,'spoon','card',0,0,2,'2026-03-28 10:53:28',0,0),(84,1,'Mixer Grinder','card',5235,0,21,'2026-03-28 14:21:36',0,0),(85,1,'Mixer Grinder','card',5235,0,22,'2026-03-28 14:21:36',0,0),(86,6,'q','card',191,0,9,'2026-03-28 14:41:18',0,0),(87,6,'q','card',191,0,10,'2026-03-28 14:41:18',0,0),(88,6,'q','card',191,0,7,'2026-03-29 11:17:20',0,0),(89,6,'q','card',191,0,8,'2026-03-29 11:17:20',0,0),(90,9,'w','study_material',4131,0,3,'2026-03-29 14:15:09',0,0),(91,9,'w','study_material',4131,0,4,'2026-03-29 14:15:09',0,0),(92,1,'Mixer Grinder','card',5235,0,2,'2026-05-04 21:57:46',0,0),(93,1,'Mixer Grinder','card',5235,0,3,'2026-05-04 21:57:46',0,0),(94,9,'w','study_material',4131,0,1,'2026-05-04 22:13:05',0,0),(95,9,'w','study_material',4131,0,2,'2026-05-04 22:13:05',0,0);
/*!40000 ALTER TABLE `product_availability` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_availability_sql`
--

DROP TABLE IF EXISTS `product_availability_sql`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_availability_sql` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Product_ID` varchar(50) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `Category` varchar(100) DEFAULT NULL,
  `Cart_Availability` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_availability_sql`
--

LOCK TABLES `product_availability_sql` WRITE;
/*!40000 ALTER TABLE `product_availability_sql` DISABLE KEYS */;
INSERT INTO `product_availability_sql` VALUES (1,'101','Test Product A','Category X','12'),(2,'102','Test Product B','Category Y','6');
/*!40000 ALTER TABLE `product_availability_sql` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `product_availability_view`
--

DROP TABLE IF EXISTS `product_availability_view`;
/*!50001 DROP VIEW IF EXISTS `product_availability_view`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `product_availability_view` AS SELECT 
 1 AS `id`,
 1 AS `product_id`,
 1 AS `category`,
 1 AS `dash_item_name`,
 1 AS `actual_availability`,
 1 AS `add_vc`,
 1 AS `sub_vc`,
 1 AS `removed`,
 1 AS `remain_in_dash`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `product_search_table`
--

DROP TABLE IF EXISTS `product_search_table`;
/*!50001 DROP VIEW IF EXISTS `product_search_table`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `product_search_table` AS SELECT 
 1 AS `product_id`,
 1 AS `name`,
 1 AS `category`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `road_50`
--

DROP TABLE IF EXISTS `road_50`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `road_50` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `row_no` varchar(20) DEFAULT NULL,
  `category` varchar(50) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `video` varchar(255) DEFAULT NULL,
  `availability` int DEFAULT NULL,
  `detail` text,
  `uploaded_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `address` varchar(255) DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `total` decimal(10,2) DEFAULT NULL,
  `mode` varchar(20) DEFAULT NULL,
  `product_id` int DEFAULT NULL,
  `sub_vc` int DEFAULT '0',
  `sub_vc_item` int DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `road_50`
--

LOCK TABLES `road_50` WRITE;
/*!40000 ALTER TABLE `road_50` DISABLE KEYS */;
INSERT INTO `road_50` VALUES (1,50,'row_1','card','Mixer Grinder',2999.00,'https://via.placeholder.com/150?text=Mixer+Grinder','/static/products/static/products/mixer_demo.mp4',3,'Stainless Steel body, Copper motor','2026-01-05 13:38:29','Pune, Maharashtra, India',0,'2026-01-21 17:03:13',2999.00,NULL,NULL,0,-1),(2,50,'row_2','card','Electric Kettle',1899.00,'https://via.placeholder.com/150?text=Electric+Kettle','',3,'Stainless steel body, Heat-resistant plastic handle','2026-01-05 13:53:14','Mumbai, Maharashtra, India',0,'2026-01-23 14:20:16',3798.00,NULL,3,0,0),(3,50,'row_3','card','Kitchen Mixer',2999.00,'https://via.placeholder.com/150?text=Kitchen+Mixer','',1,'','2026-01-05 13:38:29','',0,'2026-01-24 08:53:04',5998.00,NULL,2,0,-1),(4,50,NULL,'card','Electric Kettle',1899.00,'https://via.placeholder.com/150?text=Electric+Kettle','',6,'Stainless steel body, Heat-resistant plastic handle','2026-01-05 13:53:14','Mumbai, Maharashtra, India',0,'2026-01-24 09:05:23',3798.00,NULL,3,0,-1),(5,50,NULL,'card','q',600.00,'/static/products/Screenshot_2026-01-02_174133.png','/static/products/----_-_2.mp4',9,'12q','2026-01-06 00:00:00','zeal college pune ',0,'2026-01-24 09:10:23',1200.00,NULL,6,0,0),(6,50,'row_4','study_material','s',12.00,'/static/products/yumhub.jpg','',1,'1','2026-01-06 00:00:00','1',0,'2026-02-06 14:05:18',24.00,NULL,7,0,-2),(7,50,NULL,'card','Mixer Grinder',2999.00,'https://via.placeholder.com/150?text=Mixer+Grinder','/static/products/static/products/mixer_demo.mp4',9,'Stainless Steel body, Copper motor','2026-01-05 13:38:29','Pune, Maharashtra, India',0,'2026-02-06 14:16:11',5998.00,NULL,1,0,-2),(8,50,NULL,'food_items','b',34.00,'/static/products/kettle.jpg','/static/products/a.mp4',2,'5','2026-01-06 00:00:00','5',0,'2026-02-06 16:42:04',102.00,NULL,1,0,-3),(9,50,NULL,'food_items','e',56.00,'/static/products/Screenshot_2026-01-02_174133.png','',9,'ww','2026-01-07 00:00:00','w',0,'2026-02-06 16:43:49',280.00,NULL,2,0,-5),(10,50,NULL,'study_material','w',3.00,'/static/products/book_ds.jpeg','',9,'q','2026-01-06 00:00:00','q',0,'2026-02-06 16:46:07',6.00,NULL,9,0,-2),(11,50,NULL,'food_items','b',34.00,'/static/products/kettle.jpg','/static/products/a.mp4',301989878,'5','2026-01-06 00:00:00','5',0,'2026-02-06 18:47:30',68.00,NULL,1,0,-2),(12,50,NULL,'study_material','2',22.00,'/static/products/download_1.jpeg','/static/products/a.mp4',9,'22','2026-01-06 00:00:00','2',0,'2026-02-06 18:47:40',66.00,NULL,6,0,-3),(13,50,'row_5','card','Electric Kettle',1899.00,'https://via.placeholder.com/150?text=Electric+Kettle','',1,'Stainless steel body, Heat-resistant plastic handle','2026-01-05 13:53:14','Mumbai, Maharashtra, India',2,'2026-02-07 11:23:43',3798.00,NULL,3,0,0),(14,50,NULL,'card','spoon',347.00,'/static/products/yumhub.jpg','/static/products/How_to_Create_SearchView_on_Google_Map_in_Android_Studio___Step_by_Step_Google_Maps_Android_Tutorial.mp4',9,'steel','2026-01-05 00:00:00','zeal college pune ',3,'2026-02-07 14:54:01',1041.00,NULL,5,0,0),(15,50,NULL,'card','q',600.00,'/static/products/Screenshot_2026-01-02_174133.png','/static/products/----_-_2.mp4',18,'12q','2026-01-06 00:00:00','zeal college pune ',2,'2026-02-07 14:54:01',2400.00,NULL,6,0,-2),(16,50,NULL,'food_items','b',34.00,'/static/products/kettle.jpg','/static/products/a.mp4',5319,'5','2026-01-06 00:00:00','5',5,'2026-02-07 20:34:01',170.00,NULL,1,0,0),(17,50,NULL,'food_items','b',34.00,'/static/products/kettle.jpg','/static/products/a.mp4',5314,'5','2026-01-06 00:00:00','5',0,'2026-02-07 20:34:22',102.00,NULL,1,0,-1),(18,50,'row_6','card','Mixer Grinder',2999.00,'https://via.placeholder.com/150?text=Mixer+Grinder','/static/products/static/products/mixer_demo.mp4',5314,'Stainless Steel body, Copper motor','2026-01-05 13:38:29','Pune, Maharashtra, India',2,'2026-02-08 17:17:48',5998.00,NULL,1,0,0),(19,50,'row_7','card','Mixer Grinder',2999.00,'https://via.placeholder.com/150?text=Mixer+Grinder','/static/products/static/products/mixer_demo.mp4',5281,'Stainless Steel body, Copper motor','2026-01-05 13:38:29','Pune, Maharashtra, India',2,'2026-02-09 17:11:21',5998.00,NULL,1,0,0),(20,50,NULL,'card','Electric Kettle',1899.00,'https://via.placeholder.com/150?text=Electric+Kettle','',3798,'Stainless steel body, Heat-resistant plastic handle','2026-01-05 13:53:14','Mumbai, Maharashtra, India',1,'2026-02-09 17:12:33',1899.00,NULL,3,0,0);
/*!40000 ALTER TABLE `road_50` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sakshi_1`
--

DROP TABLE IF EXISTS `sakshi_1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sakshi_1` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `product_id` int DEFAULT NULL,
  `row_no` varchar(20) DEFAULT NULL,
  `category` varchar(50) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `video` varchar(255) DEFAULT NULL,
  `availability` int DEFAULT NULL,
  `detail` text,
  `uploaded_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `address` varchar(255) DEFAULT NULL,
  `quantity` int DEFAULT '1',
  `date` datetime DEFAULT CURRENT_TIMESTAMP,
  `total` decimal(10,2) DEFAULT NULL,
  `mode` varchar(20) DEFAULT NULL,
  `sub_vc_item` int DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sakshi_1`
--

LOCK TABLES `sakshi_1` WRITE;
/*!40000 ALTER TABLE `sakshi_1` DISABLE KEYS */;
/*!40000 ALTER TABLE `sakshi_1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sakshi_1_product_activity`
--

DROP TABLE IF EXISTS `sakshi_1_product_activity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sakshi_1_product_activity` (
  `id` int NOT NULL AUTO_INCREMENT,
  `product_id` int DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `category` varchar(100) DEFAULT NULL,
  `today_search_count` int DEFAULT '0',
  `search_time` time DEFAULT NULL,
  `today_add_to_cart_count` int DEFAULT '0',
  `add_to_cart_time` time DEFAULT NULL,
  `today_purchase_count` int DEFAULT '0',
  `purchased_time` time DEFAULT NULL,
  `month` varchar(20) DEFAULT NULL,
  `growth` float DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sakshi_1_product_activity`
--

LOCK TABLES `sakshi_1_product_activity` WRITE;
/*!40000 ALTER TABLE `sakshi_1_product_activity` DISABLE KEYS */;
/*!40000 ALTER TABLE `sakshi_1_product_activity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sample`
--

DROP TABLE IF EXISTS `sample`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sample` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `row_no` varchar(20) DEFAULT NULL,
  `category` varchar(50) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `video` varchar(255) DEFAULT NULL,
  `availability` int DEFAULT NULL,
  `detail` text,
  `uploaded_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `address` varchar(255) DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `total` decimal(10,2) DEFAULT NULL,
  `mode` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sample`
--

LOCK TABLES `sample` WRITE;
/*!40000 ALTER TABLE `sample` DISABLE KEYS */;
/*!40000 ALTER TABLE `sample` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `samundar_31`
--

DROP TABLE IF EXISTS `samundar_31`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `samundar_31` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `row_no` varchar(20) DEFAULT NULL,
  `category` varchar(50) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `video` varchar(255) DEFAULT NULL,
  `availability` int DEFAULT NULL,
  `detail` text,
  `uploaded_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `address` varchar(255) DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `total` decimal(10,2) DEFAULT NULL,
  `mode` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `samundar_31`
--

LOCK TABLES `samundar_31` WRITE;
/*!40000 ALTER TABLE `samundar_31` DISABLE KEYS */;
/*!40000 ALTER TABLE `samundar_31` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `save_detail`
--

DROP TABLE IF EXISTS `save_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `save_detail` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `age` int DEFAULT NULL,
  `phone1` varchar(20) DEFAULT NULL,
  `phone2` varchar(20) DEFAULT NULL,
  `address1` varchar(255) DEFAULT NULL,
  `address2` varchar(255) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `profile_image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `save_detail`
--

LOCK TABLES `save_detail` WRITE;
/*!40000 ALTER TABLE `save_detail` DISABLE KEYS */;
INSERT INTO `save_detail` VALUES (1,'Ankita',28,'997565161','09975651612','pisaware Road','pisaware','ankitabandal45@gmail.com',NULL,'2026-02-12 13:07:25'),(2,'Ankita',28,'997565161','09975651612','pisaware Road','pisaware','ankitabandal45@gmail.com','/static/profile_images/profile_0.png','2026-02-12 13:08:32'),(3,'Ankita',28,'997565161','09975651612','pisaware Road','pisaware','ankitabandal45@gmail.com','/static/profile_images/profile_0.png','2026-02-12 13:17:54'),(4,'Ankita',28,'997565161','09975651612','pisaware Road','pisaware','ankitabandal45@gmail.com','/static/profile_images/profile_0.png','2026-02-12 13:39:11'),(5,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2026-02-12 16:50:38'),(6,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2026-02-13 07:55:09'),(7,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2026-02-13 08:00:19'),(8,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2026-02-13 08:01:19'),(9,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2026-02-13 08:04:22'),(10,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2026-02-13 08:05:12'),(11,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2026-02-13 08:05:16'),(12,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2026-02-13 08:05:34'),(13,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2026-02-13 08:05:59'),(14,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2026-02-13 08:08:55'),(15,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2026-02-13 08:13:59'),(16,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2026-02-13 08:16:26'),(17,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2026-02-13 08:17:52'),(18,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2026-02-13 08:28:17'),(19,'a23',15,'997565161','997565161','pisaware Road','pisaware','a23@gmail.com',NULL,'2026-02-13 08:28:17'),(20,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2026-02-13 08:34:18'),(21,'a23',20,'997565161','09975651612','pisaware Road','pisaware','a23@gmail.com',NULL,'2026-02-13 08:34:18'),(22,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2026-02-13 08:37:34'),(23,'a23',20,'997565161','09975651612','pisaware Road','pisaware','a23@gmail.com',NULL,'2026-02-13 08:37:34'),(24,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2026-02-13 08:40:45'),(25,'a23',9,'10101010109','09975651612','pisaware Road','pisaware','a23@gmail.com',NULL,'2026-02-13 08:40:45'),(26,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2026-02-13 08:42:16'),(27,'34a',20,'997565161','09975651612','pisaware Road','pisaware','34a23@gmail.com',NULL,'2026-02-13 08:42:16'),(28,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2026-02-13 08:48:10'),(29,'34a',23,'997565161','09975651612','pisaware Road','pisaware','34a23@gmail.com',NULL,'2026-02-13 08:48:10'),(30,'34a',18,'997565161','09975651612','pisaware Road','pisaware','34a23@gmail.com',NULL,'2026-02-13 08:52:01'),(31,'mug',2200,'1010101010','09975651612','pisaware Road','pisaware','mug2@gmail.com',NULL,'2026-02-13 17:24:05'),(32,'road',5,'997565161','09975651612','pisaware Road','pisaware','road2@gmail.com',NULL,'2026-02-14 05:31:47'),(33,'butter',10,'11111111111111111','222222222222222','pisaware Road','pisaware','butter2@gmail.com','/static/profile_images/download.jpeg','2026-02-14 06:25:13'),(34,'dft',4,'11111111111111111','222222222222222','pisaware Road','pisaware','dft56@gmail.com','/static/profile_images/download.jpeg','2026-02-14 07:52:28'),(35,'pen',12,'11111111111111111','222222222222222','pisaware Road','pisaware','pen2@gmail.com','/static/profile_images/cooker.jpg.jpeg','2026-02-15 05:41:36'),(36,'hand',2,'11111111111111111','222222222222222','pisaware Road','pisaware','hand2@gmail.com','/static/profile_images/mixer.png.jpeg','2026-02-15 06:50:23'),(37,'close1121',5,'997565161','997565161','pisaware Road','pisaware','close2@gmail.com','/static/profile_images/download.jpeg','2026-02-15 08:03:41'),(38,NULL,NULL,NULL,NULL,NULL,NULL,'sdf34@gmail.com','/static/profile_images/mixer.png.jpeg','2026-02-15 09:22:31'),(39,'up',1,'997565161','997565161','pisaware Road','pisaware','up34@gmail.com','/static/profile_images/download.jpeg','2026-02-15 12:20:33'),(40,'we2',21,'997565161','997565161','pisaware Road','pisaware','we234@gmail.com',NULL,'2026-05-04 16:42:10');
/*!40000 ALTER TABLE `save_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sdf_59`
--

DROP TABLE IF EXISTS `sdf_59`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sdf_59` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `product_id` int DEFAULT NULL,
  `row_no` varchar(20) DEFAULT NULL,
  `category` varchar(50) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `video` varchar(255) DEFAULT NULL,
  `availability` int DEFAULT NULL,
  `detail` text,
  `uploaded_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `address` varchar(255) DEFAULT NULL,
  `quantity` int DEFAULT '1',
  `date` datetime DEFAULT CURRENT_TIMESTAMP,
  `total` decimal(10,2) DEFAULT NULL,
  `mode` varchar(20) DEFAULT NULL,
  `sub_vc_item` int DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sdf_59`
--

LOCK TABLES `sdf_59` WRITE;
/*!40000 ALTER TABLE `sdf_59` DISABLE KEYS */;
INSERT INTO `sdf_59` VALUES (1,59,1,'row_1','card','Mixer Grinder',2999.00,'https://via.placeholder.com/150?text=Mixer+Grinder','/static/products/static/products/mixer_demo.mp4',5278,'Stainless Steel body, Copper motor','2026-01-05 13:38:29','Pune, Maharashtra, India',1,'2026-02-13 15:03:19',2999.00,NULL,0);
/*!40000 ALTER TABLE `sdf_59` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `search_logs`
--

DROP TABLE IF EXISTS `search_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `search_logs` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `product_id` int DEFAULT NULL,
  `category` varchar(50) DEFAULT NULL,
  `search_time` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `search_logs`
--

LOCK TABLES `search_logs` WRITE;
/*!40000 ALTER TABLE `search_logs` DISABLE KEYS */;
INSERT INTO `search_logs` VALUES (1,61,1,'card','2026-03-28 09:58:52'),(2,61,2,'card','2026-03-28 10:01:27'),(3,61,2,'card','2026-03-28 10:02:01'),(4,52,1,'card','2026-03-28 10:04:08'),(5,52,2,'card','2026-03-28 10:04:21'),(6,61,1,'card','2026-03-28 10:20:35'),(7,61,2,'card','2026-03-28 10:33:09'),(8,61,2,'card','2026-03-28 10:34:27'),(9,61,5,'card','2026-03-28 10:50:42'),(10,52,1,'card','2026-03-28 10:55:34'),(11,52,2,'card','2026-03-28 10:55:50'),(12,52,2,'card','2026-03-28 10:56:01'),(13,52,5,'card','2026-03-28 10:56:13'),(14,61,1,'card','2026-03-28 14:16:35'),(15,39,6,'card','2026-03-28 14:41:04');
/*!40000 ALTER TABLE `search_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `see34_58`
--

DROP TABLE IF EXISTS `see34_58`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `see34_58` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `product_id` int DEFAULT NULL,
  `row_no` varchar(20) DEFAULT NULL,
  `category` varchar(50) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `video` varchar(255) DEFAULT NULL,
  `availability` int DEFAULT NULL,
  `detail` text,
  `uploaded_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `address` varchar(255) DEFAULT NULL,
  `quantity` int DEFAULT '1',
  `date` datetime DEFAULT CURRENT_TIMESTAMP,
  `total` decimal(10,2) DEFAULT NULL,
  `mode` varchar(20) DEFAULT NULL,
  `sub_vc_item` int DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `see34_58`
--

LOCK TABLES `see34_58` WRITE;
/*!40000 ALTER TABLE `see34_58` DISABLE KEYS */;
INSERT INTO `see34_58` VALUES (1,58,1,'row_1','card','Mixer Grinder',2999.00,'https://via.placeholder.com/150?text=Mixer+Grinder','/static/products/static/products/mixer_demo.mp4',5276,'Stainless Steel body, Copper motor','2026-01-05 13:38:29','Pune, Maharashtra, India',1,'2026-02-14 10:59:49',2999.00,NULL,0);
/*!40000 ALTER TABLE `see34_58` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shree_23`
--

DROP TABLE IF EXISTS `shree_23`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shree_23` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `row_no` varchar(20) DEFAULT NULL,
  `category` varchar(50) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `video` varchar(255) DEFAULT NULL,
  `availability` int DEFAULT NULL,
  `detail` text,
  `uploaded_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `address` varchar(255) DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `total` decimal(10,2) DEFAULT NULL,
  `mode` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shree_23`
--

LOCK TABLES `shree_23` WRITE;
/*!40000 ALTER TABLE `shree_23` DISABLE KEYS */;
/*!40000 ALTER TABLE `shree_23` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sky_30`
--

DROP TABLE IF EXISTS `sky_30`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sky_30` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `row_no` varchar(20) DEFAULT NULL,
  `category` varchar(50) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `video` varchar(255) DEFAULT NULL,
  `availability` int DEFAULT NULL,
  `detail` text,
  `uploaded_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `address` varchar(255) DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `total` decimal(10,2) DEFAULT NULL,
  `mode` varchar(20) DEFAULT NULL,
  `product_id` int DEFAULT NULL,
  `sub_vc` int DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sky_30`
--

LOCK TABLES `sky_30` WRITE;
/*!40000 ALTER TABLE `sky_30` DISABLE KEYS */;
INSERT INTO `sky_30` VALUES (1,30,'row_1','card','Electric Kettle',1899.00,'https://via.placeholder.com/150?text=Electric+Kettle','',1,'Stainless steel body, Heat-resistant plastic handle','2026-01-05 13:53:14','Mumbai, Maharashtra, India',0,'2026-01-23 15:47:15',1899.00,NULL,3,1),(2,30,NULL,'card','Electric Kettle',1899.00,'https://via.placeholder.com/150?text=Electric+Kettle','',0,'Stainless steel body, Heat-resistant plastic handle','2026-01-05 13:53:14','Mumbai, Maharashtra, India',1,'2026-01-23 15:48:19',1899.00,NULL,3,0),(3,30,NULL,'card','Electric Kettle',1899.00,'/static/products/kettle.jpg','',6,'Stainless steel','2026-01-05 13:58:57','Mumbai, India',1,'2026-01-23 15:55:35',1899.00,NULL,4,0),(4,30,NULL,'card','Electric Kettle',1899.00,'/static/products/kettle.jpg','',5,'Stainless steel','2026-01-05 13:58:57','Mumbai, India',1,'2026-01-23 16:02:16',1899.00,NULL,4,0),(5,30,NULL,'card','spoon',347.00,'/static/products/yumhub.jpg','/static/products/How_to_Create_SearchView_on_Google_Map_in_Android_Studio___Step_by_Step_Google_Maps_Android_Tutorial.mp4',9,'steel','2026-01-05 00:00:00','zeal college pune ',1,'2026-01-23 16:03:09',347.00,NULL,5,0),(6,30,NULL,'card','Electric Kettle',1899.00,'/static/products/kettle.jpg','',4,'Stainless steel','2026-01-05 13:58:57','Mumbai, India',1,'2026-01-23 16:08:53',1899.00,NULL,4,0),(7,30,NULL,'card','spoon',347.00,'/static/products/yumhub.jpg','/static/products/How_to_Create_SearchView_on_Google_Map_in_Android_Studio___Step_by_Step_Google_Maps_Android_Tutorial.mp4',8,'steel','2026-01-05 00:00:00','zeal college pune ',2,'2026-01-23 16:10:00',694.00,NULL,5,0),(8,30,NULL,'card','Electric Kettle',1899.00,'/static/products/kettle.jpg','',3,'Stainless steel','2026-01-05 13:58:57','Mumbai, India',1,'2026-01-23 16:20:15',1899.00,NULL,4,0),(9,30,NULL,'card','gndbjh',122.00,'/static/products/Screenshot_2026-01-02_174133.png','',7,'8','2026-01-06 00:00:00','222',0,'2026-01-23 16:21:06',122.00,NULL,8,1),(10,30,NULL,'card','Electric Kettle',1899.00,'/static/products/kettle.jpg','',2,'Stainless steel','2026-01-05 13:58:57','Mumbai, India',1,'2026-01-23 16:49:35',1899.00,NULL,4,0),(11,30,NULL,'card','Electric Kettle',1899.00,'/static/products/kettle.jpg','',1,'Stainless steel','2026-01-05 13:58:57','Mumbai, India',2,'2026-01-23 17:03:37',3798.00,NULL,4,0),(12,30,NULL,'card','Mixer Grinder',2999.00,'https://via.placeholder.com/150?text=Mixer+Grinder','/static/products/static/products/mixer_demo.mp4',9,'Stainless Steel body, Copper motor','2026-01-05 13:38:29','Pune, Maharashtra, India',1,'2026-01-23 18:33:34',2999.00,NULL,1,0),(13,30,NULL,'card','Mixer Grinder',2999.00,'https://via.placeholder.com/150?text=Mixer+Grinder','/static/products/static/products/mixer_demo.mp4',8,'Stainless Steel body, Copper motor','2026-01-05 13:38:29','Pune, Maharashtra, India',2,'2026-01-23 18:36:35',5998.00,NULL,1,0),(14,30,NULL,'card','Mixer Grinder',2999.00,'https://via.placeholder.com/150?text=Mixer+Grinder','/static/products/static/products/mixer_demo.mp4',6,'Stainless Steel body, Copper motor','2026-01-05 13:38:29','Pune, Maharashtra, India',1,'2026-01-23 18:44:52',2999.00,NULL,1,0),(15,30,NULL,'card','Kitchen Mixer',2999.00,'https://via.placeholder.com/150?text=Kitchen+Mixer','',9,'','2026-01-05 13:38:29','',1,'2026-01-23 18:44:52',2999.00,NULL,2,0),(16,30,NULL,'food_items','e',56.00,'/static/products/Screenshot_2026-01-02_174133.png','',9,'ww','2026-01-07 00:00:00','w',2,'2026-01-23 18:46:17',112.00,NULL,2,0),(17,30,NULL,'food_items','e',56.00,'/static/products/Screenshot_2026-01-02_174133.png','',7,'ww','2026-01-07 00:00:00','w',1,'2026-01-23 19:01:12',56.00,NULL,2,0),(18,30,NULL,'food_items','e',56.00,'/static/products/Screenshot_2026-01-02_174133.png','',6,'ww','2026-01-07 00:00:00','w',1,'2026-01-23 19:27:27',56.00,NULL,2,0),(19,30,NULL,'card','Mixer Grinder',2999.00,'https://via.placeholder.com/150?text=Mixer+Grinder','/static/products/static/products/mixer_demo.mp4',5,'Stainless Steel body, Copper motor','2026-01-05 13:38:29','Pune, Maharashtra, India',3,'2026-01-23 19:28:22',8997.00,NULL,1,0),(20,30,NULL,'card','Mixer Grinder',2999.00,'https://via.placeholder.com/150?text=Mixer+Grinder','/static/products/static/products/mixer_demo.mp4',2,'Stainless Steel body, Copper motor','2026-01-05 13:38:29','Pune, Maharashtra, India',1,'2026-01-23 19:28:55',2999.00,NULL,1,0),(21,30,NULL,'card','spoon',347.00,'/static/products/yumhub.jpg','/static/products/How_to_Create_SearchView_on_Google_Map_in_Android_Studio___Step_by_Step_Google_Maps_Android_Tutorial.mp4',9,'steel','2026-01-05 00:00:00','zeal college pune ',1,'2026-01-23 19:28:55',347.00,NULL,5,0);
/*!40000 ALTER TABLE `sky_30` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `star_28`
--

DROP TABLE IF EXISTS `star_28`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `star_28` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `row_no` varchar(20) DEFAULT NULL,
  `category` varchar(50) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `video` varchar(255) DEFAULT NULL,
  `availability` int DEFAULT NULL,
  `detail` text,
  `uploaded_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `address` varchar(255) DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `total` decimal(10,2) DEFAULT NULL,
  `mode` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `star_28`
--

LOCK TABLES `star_28` WRITE;
/*!40000 ALTER TABLE `star_28` DISABLE KEYS */;
/*!40000 ALTER TABLE `star_28` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `store_data`
--

DROP TABLE IF EXISTS `store_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `store_data` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `product_id` int NOT NULL,
  `category` varchar(20) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `video` varchar(255) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `availability` int DEFAULT NULL,
  `detail` text,
  `purchased_by` varchar(100) DEFAULT NULL,
  `uploaded_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `address` varchar(255) DEFAULT NULL,
  `quantity` int DEFAULT '1',
  `date` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `store_data`
--

LOCK TABLES `store_data` WRITE;
/*!40000 ALTER TABLE `store_data` DISABLE KEYS */;
INSERT INTO `store_data` VALUES (1,51,1,'card','Mixer Grinder','https://via.placeholder.com/150?text=Mixer+Grinder','/static/products/static/products/mixer_demo.mp4',2999.00,5287,'Stainless Steel body, Copper motor','butter','2026-01-05 13:38:29','Pune, Maharashtra, India',6,'2026-02-08 23:44:02'),(2,51,4,'card','Electric Kettle','/static/products/kettle.jpg','',1899.00,4145,'Stainless steel','butter','2026-01-05 13:58:57','Mumbai, India',1,'2026-02-09 08:40:09'),(3,51,6,'card','q','/static/products/Screenshot_2026-01-02_174133.png','/static/products/----_-_2.mp4',600.00,200,'12q','butter','2026-01-06 00:00:00','zeal college pune ',1,'2026-02-09 10:36:28'),(4,51,7,'food_items','vada pav','/static/products/download_10.jpeg','',25.00,9,'a','butter','2026-02-09 00:00:00','zeal',3,'2026-02-09 11:32:11'),(5,50,1,'card','Mixer Grinder','https://via.placeholder.com/150?text=Mixer+Grinder','/static/products/static/products/mixer_demo.mp4',2999.00,5281,'Stainless Steel body, Copper motor','road','2026-01-05 13:38:29','Pune, Maharashtra, India',2,'2026-02-09 17:11:21'),(6,50,3,'card','Electric Kettle','https://via.placeholder.com/150?text=Electric+Kettle','',1899.00,3798,'Stainless steel body, Heat-resistant plastic handle','road','2026-01-05 13:53:14','Mumbai, Maharashtra, India',1,'2026-02-09 17:12:33'),(7,49,5,'card','spoon','/static/products/yumhub.jpg','/static/products/How_to_Create_SearchView_on_Google_Map_in_Android_Studio___Step_by_Step_Google_Maps_Android_Tutorial.mp4',347.00,6,'steel','awe','2026-01-05 00:00:00','zeal college pune ',1,'2026-02-09 17:24:13'),(8,49,6,'study_material','2','/static/products/download_1.jpeg','/static/products/a.mp4',22.00,200,'22','awe','2026-01-06 00:00:00','2',1,'2026-02-09 17:24:19'),(9,49,9,'study_material','w','/static/products/book_ds.jpeg','',3.00,4135,'q','awe','2026-01-06 00:00:00','q',2,'2026-02-09 17:24:23'),(10,49,1,'card','Mixer Grinder','https://via.placeholder.com/150?text=Mixer+Grinder','/static/products/static/products/mixer_demo.mp4',2999.00,5279,'Stainless Steel body, Copper motor','awe','2026-01-05 13:38:29','Pune, Maharashtra, India',1,'2026-02-09 17:29:36'),(11,54,1,'food_items','b','/static/products/kettle.jpg','/static/products/a.mp4',34.00,5299,'5','up','2026-01-06 00:00:00','5',1,'2026-02-13 14:39:13'),(12,59,1,'card','Mixer Grinder','https://via.placeholder.com/150?text=Mixer+Grinder','/static/products/static/products/mixer_demo.mp4',2999.00,5278,'Stainless Steel body, Copper motor','sdf','2026-01-05 13:38:29','Pune, Maharashtra, India',1,'2026-02-13 15:03:19'),(13,44,1,'card','Mixer Grinder','https://via.placeholder.com/150?text=Mixer+Grinder','/static/products/static/products/mixer_demo.mp4',2999.00,5277,'Stainless Steel body, Copper motor','mug','2026-01-05 13:38:29','Pune, Maharashtra, India',1,'2026-02-13 21:37:23'),(14,58,1,'card','Mixer Grinder','https://via.placeholder.com/150?text=Mixer+Grinder','/static/products/static/products/mixer_demo.mp4',2999.00,5276,'Stainless Steel body, Copper motor','see34','2026-01-05 13:38:29','Pune, Maharashtra, India',1,'2026-02-14 10:59:49'),(15,41,1,'card','Mixer Grinder','https://via.placeholder.com/150?text=Mixer+Grinder','/static/products/static/products/mixer_demo.mp4',2999.00,5275,'Stainless Steel body, Copper motor','hey','2026-01-05 13:38:29','Pune, Maharashtra, India',1,'2026-02-14 11:26:55'),(16,56,5,'card','spoon','/static/products/yumhub.jpg','/static/products/How_to_Create_SearchView_on_Google_Map_in_Android_Studio___Step_by_Step_Google_Maps_Android_Tutorial.mp4',347.00,5,'steel','oop','2026-01-05 00:00:00','zeal college pune ',1,'2026-02-15 11:53:54'),(17,54,9,'food_items','vada pav','/static/products/download_10.jpeg','',25.00,9,'a','up','2026-02-09 00:00:00','zeal',3,'2026-02-15 17:46:33'),(18,61,1,'card','Mixer Grinder','https://via.placeholder.com/150?text=Mixer+Grinder','/static/products/static/products/mixer_demo.mp4',2999.00,5274,'Stainless Steel body, Copper motor','dft','2026-01-05 13:38:29','Pune, Maharashtra, India',29,'2026-02-21 08:54:00'),(19,61,3,'card','Electric Kettle','https://via.placeholder.com/150?text=Electric+Kettle','',1899.00,3797,'Stainless steel body, Heat-resistant plastic handle','dft','2026-01-05 13:53:14','Mumbai, Maharashtra, India',1,'2026-02-21 10:48:32'),(20,61,8,'study_material','gndbjh','/static/products/Screenshot_2026-01-02_174133.png','',122.00,1034,'8','dft','2026-01-06 00:00:00','222',1,'2026-03-01 08:10:41'),(21,61,5,'card','spoon','/static/products/yumhub.jpg','/static/products/How_to_Create_SearchView_on_Google_Map_in_Android_Studio___Step_by_Step_Google_Maps_Android_Tutorial.mp4',347.00,4,'steel','dft','2026-01-05 00:00:00','zeal college pune ',3,'2026-03-05 21:38:47'),(22,61,9,'food_items','vada pav','/static/products/download_10.jpeg','',25.00,6,'a','dft','2026-02-09 00:00:00','zeal',2,'2026-03-06 23:35:05'),(23,61,8,'card','gndbjh','/static/products/Screenshot_2026-01-02_174133.png','',122.00,1034,'8','dft','2026-01-06 00:00:00','222',2,'2026-03-09 19:10:00'),(24,61,1,'food_items','b','/static/products/kettle.jpg','/static/products/a.mp4',34.00,5298,'5','dft','2026-01-06 00:00:00','5',1,'2026-03-24 12:33:01'),(25,61,11,'study_material','missal ','/static/products/WhatsApp_Image_2026-02-15_at_6.20.38_PM_1.jpeg','',25.00,9,'2','dft','2026-02-09 00:00:00','zeal',6,'2026-03-24 13:47:17'),(26,52,1,'card','Mixer Grinder','https://via.placeholder.com/150?text=Mixer+Grinder','/static/products/static/products/mixer_demo.mp4',2999.00,5262,'Stainless Steel body, Copper motor','a','2026-01-05 13:38:29','Pune, Maharashtra, India',4,'2026-03-28 10:52:57'),(27,52,4,'card','Electric Kettle','/static/products/kettle.jpg','',1899.00,4144,'Stainless steel','a','2026-01-05 13:58:57','Mumbai, India',8,'2026-03-28 10:53:14'),(28,52,5,'card','spoon','/static/products/yumhub.jpg','/static/products/How_to_Create_SearchView_on_Google_Map_in_Android_Studio___Step_by_Step_Google_Maps_Android_Tutorial.mp4',347.00,1,'steel','a','2026-01-05 00:00:00','zeal college pune ',2,'2026-03-28 10:53:28'),(29,39,1,'card','Mixer Grinder','https://via.placeholder.com/150?text=Mixer+Grinder','/static/products/static/products/mixer_demo.mp4',2999.00,5255,'Stainless Steel body, Copper motor','close','2026-01-05 13:38:29','Pune, Maharashtra, India',4,'2026-03-28 14:21:36'),(30,39,6,'card','q','/static/products/Screenshot_2026-01-02_174133.png','/static/products/----_-_2.mp4',600.00,199,'12q','close','2026-01-06 00:00:00','zeal college pune ',1,'2026-03-28 14:41:18'),(31,61,6,'card','q','/static/products/Screenshot_2026-01-02_174133.png','/static/products/----_-_2.mp4',600.00,198,'12q','dft','2026-01-06 00:00:00','zeal college pune ',8,'2026-03-29 11:17:20'),(32,61,9,'study_material','w','/static/products/book_ds.jpeg','',3.00,4133,'q','dft','2026-01-06 00:00:00','q',2,'2026-03-29 14:15:09'),(33,57,1,'card','Mixer Grinder','https://via.placeholder.com/150?text=Mixer+Grinder','/static/products/static/products/mixer_demo.mp4',2999.00,5237,'Stainless Steel body, Copper motor','we2','2026-01-05 13:38:29','Pune, Maharashtra, India',3,'2026-05-04 21:57:46'),(34,57,9,'study_material','w','/static/products/book_ds.jpeg','',3.00,4132,'q','we2','2026-01-06 00:00:00','q',1,'2026-05-04 22:13:05');
/*!40000 ALTER TABLE `store_data` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `trg_store_data_insert` AFTER INSERT ON `store_data` FOR EACH ROW BEGIN
    INSERT INTO product_availability (product_id, category, dash_item_name, removed)
    VALUES (NEW.product_id, NEW.category, NEW.name, -1)
    ON DUPLICATE KEY UPDATE
        removed = removed - 1;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `trg_storedata_update` AFTER INSERT ON `store_data` FOR EACH ROW BEGIN
    INSERT INTO product_availability
        (product_id, category, dash_item_name, actual_availability, removed, add_vc, sub_vc)
    VALUES
        (NEW.product_id, NEW.category, NEW.name, NEW.availability, 0, 0, 0)
    ON DUPLICATE KEY UPDATE
        actual_availability = NEW.availability;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `after_storedata_insert` AFTER INSERT ON `store_data` FOR EACH ROW BEGIN
  UPDATE product_availability
  SET removed = removed + NEW.quantity
  WHERE product_id = NEW.product_id AND category = NEW.category;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `trg_store_data_delete` AFTER DELETE ON `store_data` FOR EACH ROW BEGIN
    UPDATE product_availability
    SET removed = removed + 1
    WHERE product_id = OLD.product_id
      AND category = OLD.category;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `store_data_backup`
--

DROP TABLE IF EXISTS `store_data_backup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `store_data_backup` (
  `id` int NOT NULL DEFAULT '0',
  `user_id` varchar(50) DEFAULT NULL,
  `product_id` varchar(50) DEFAULT NULL,
  `category` varchar(20) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `video` varchar(255) DEFAULT NULL,
  `price` varchar(50) DEFAULT NULL,
  `availability` varchar(50) DEFAULT NULL,
  `detail` text,
  `purchased_by` varchar(100) DEFAULT NULL,
  `uploaded_at` datetime DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `date` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `store_data_backup`
--

LOCK TABLES `store_data_backup` WRITE;
/*!40000 ALTER TABLE `store_data_backup` DISABLE KEYS */;
/*!40000 ALTER TABLE `store_data_backup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `strong_password`
--

DROP TABLE IF EXISTS `strong_password`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `strong_password` (
  `id` int NOT NULL AUTO_INCREMENT,
  `password` varchar(100) DEFAULT NULL,
  `is_used` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `strong_password`
--

LOCK TABLES `strong_password` WRITE;
/*!40000 ALTER TABLE `strong_password` DISABLE KEYS */;
INSERT INTO `strong_password` VALUES (4,'Mn@!7Kp$',1),(5,'Ab@#12$%X',1),(6,'Pq!9@#Lm$',1),(7,'Zx#@12!Aa',1),(8,'Ab@#12$%X',1),(9,'Pq!9@#Lm$',1),(10,'Zx#@12!Aa',1),(11,'Aa12!@#Bb',1),(12,'Xy34$%^Zz',1),(13,'M9@#Lp$Aa',1),(14,'Qw!@12#Er',1),(15,'Zx98$%Aa!',1),(16,'Ab@#12$%X',1),(17,'Pq!9@#Lm$',1),(18,'Zx#@12!Aa',1),(19,'Qw!@12#Er',1),(20,'Mn@!7Kp$',1);
/*!40000 ALTER TABLE `strong_password` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `study_material`
--

DROP TABLE IF EXISTS `study_material`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `study_material` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `image` varchar(500) DEFAULT NULL,
  `video` varchar(255) DEFAULT NULL,
  `availability` int DEFAULT '0',
  `price` decimal(10,2) DEFAULT NULL,
  `detail` text,
  `uploaded_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `address` varchar(255) DEFAULT NULL,
  `material` varchar(255) DEFAULT NULL,
  `category` varchar(50) DEFAULT 'study_material',
  `searched_count` int DEFAULT '0',
  `last_searched_time` datetime DEFAULT NULL,
  `last_addtocart_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `study_material`
--

LOCK TABLES `study_material` WRITE;
/*!40000 ALTER TABLE `study_material` DISABLE KEYS */;
INSERT INTO `study_material` VALUES (1,'Physics Textbook – Class 12','static/products/physics_book.jpg','static/products/physics_intro.mp4',5328,499.00,'NCERT based Physics textbook for Class 12','2026-01-05 14:16:38','Delhi, India','Paperback, Recycled paper','study_material',32,'2026-03-27 15:05:00','2026-02-21 14:04:40'),(2,'Engineering Drawing Kit','static/products/drawing_kit.jpg',NULL,0,899.00,'Complete geometry and engineering drawing set','2026-01-05 14:16:38','Bengaluru, India','Plastic box, Steel tools','study_material',26,'2026-03-27 15:05:00','2026-02-21 14:04:40'),(3,'Data Structures Book','book_ds.jpeg',NULL,3803,799.00,'Complete guide for Data Structures and Algorithms','2026-01-05 14:48:32','Delhi, India','Paperback, High quality paper','study_material',32,'2026-03-27 15:05:00','2026-02-21 14:04:40'),(4,'Data Structures Book','book_ds.jpeg',NULL,4146,799.00,'Complete guide for Data Structures and Algorithms','2026-01-05 14:51:34','Delhi, India','Paperback, High quality paper','study_material',32,'2026-03-27 15:05:00','2026-02-21 14:04:40'),(5,'gndbjh','yumhub.jpg','mp4',7,75858.00,'Made of: a\nUsed for: s\nHarmful: f\nPrecautions: d','2026-01-05 00:00:00','zeal college pune ','a','study_material',31,'2026-03-27 17:56:40','2026-02-21 14:04:40'),(6,'2','download_1.jpeg','a.mp4',200,22.00,'Made of: 22\nUsed for: 22\nHarmful: 222\nPrecautions: 22','2026-01-06 00:00:00','2','22','study_material',14,'2026-03-06 21:39:17','2026-02-21 14:04:40'),(7,'s','yumhub.jpg',NULL,0,12.00,'Made of: 1\nUsed for: 1\nHarmful: 1\nPrecautions: 1','2026-01-06 00:00:00','1','1','study_material',18,'2026-03-06 21:39:17','2026-02-21 14:04:40'),(8,'gndbjh','Screenshot_2026-01-02_174133.png',NULL,1034,122.00,'Made of: 8\nUsed for: 8\nHarmful: 88\nPrecautions: 8','2026-01-06 00:00:00','222','8','study_material',31,'2026-03-27 17:56:40',NULL),(9,'w','book_ds.jpeg',NULL,4131,3.00,'Made of: q\nUsed for: qqq\nHarmful: q\nPrecautions: q','2026-01-06 00:00:00','q','q','study_material',14,'2026-03-06 21:39:17','2026-02-21 14:04:40'),(10,'vada pav','cooker.jpg.jpeg','1.mp4',10,25.00,'Made of: e\nUsed for: e\nHarmful: e\nPrecautions: e','2026-02-09 00:00:00','zeal','e','study_material',28,'2026-03-27 15:05:00',NULL),(11,'missal ','WhatsApp_Image_2026-02-15_at_6.20.38_PM_1.jpeg',NULL,4,25.00,'Made of: 2\nUsed for: 2\nHarmful: 2\nPrecautions: 2','2026-02-09 00:00:00','zeal','2','study_material',36,'2026-03-27 15:05:00',NULL);
/*!40000 ALTER TABLE `study_material` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `trg_study_after_insert` AFTER INSERT ON `study_material` FOR EACH ROW BEGIN
    INSERT INTO product_availability (dash_item_name, total_dash)
    VALUES (NEW.name, NEW.availability)
    ON DUPLICATE KEY UPDATE
        total_dash = NEW.availability;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `trg_study_insert` AFTER INSERT ON `study_material` FOR EACH ROW BEGIN
  INSERT INTO product_availability
  (dash_item_name, actual_availability, removed, product_id, category)
  VALUES (NEW.name, NEW.availability, 0, NEW.id, 'study_material');
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `trg_study_availability_update` AFTER UPDATE ON `study_material` FOR EACH ROW BEGIN
    IF NEW.availability <> OLD.availability THEN
        UPDATE product_availability
        SET actual_availability = NEW.availability
        WHERE product_id = NEW.id
          AND category = NEW.category;
    END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `sun_38`
--

DROP TABLE IF EXISTS `sun_38`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sun_38` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `row_no` varchar(20) DEFAULT NULL,
  `category` varchar(50) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `video` varchar(255) DEFAULT NULL,
  `availability` int DEFAULT NULL,
  `detail` text,
  `uploaded_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `address` varchar(255) DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `total` decimal(10,2) DEFAULT NULL,
  `mode` varchar(20) DEFAULT NULL,
  `product_id` int DEFAULT NULL,
  `sub_vc_item` int DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sun_38`
--

LOCK TABLES `sun_38` WRITE;
/*!40000 ALTER TABLE `sun_38` DISABLE KEYS */;
INSERT INTO `sun_38` VALUES (1,38,'row_1','card','q',600.00,'/static/products/Screenshot_2026-01-02_174133.png','/static/products/----_-_2.mp4',3,'12q','2026-01-06 00:00:00','zeal college pune ',2,'2026-01-25 08:19:52',1200.00,NULL,6,0);
/*!40000 ALTER TABLE `sun_38` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `support_sd`
--

DROP TABLE IF EXISTS `support_sd`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `support_sd` (
  `id` int DEFAULT NULL,
  `username` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `activity_date` date DEFAULT (curdate())
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `support_sd`
--

LOCK TABLES `support_sd` WRITE;
/*!40000 ALTER TABLE `support_sd` DISABLE KEYS */;
INSERT INTO `support_sd` VALUES (118,'DemoUser','demo@gmail.com','2026-02-13'),(119,'sdf','sdf34@gmail.com','2026-02-13'),(120,'dft','dft56@gmail.com','2026-02-13'),(121,'butter','butter2@gmail.com','2026-02-13'),(122,'road','road2@gmail.com','2026-02-13'),(123,'up','up34@gmail.com','2026-02-13'),(124,'road','road2@gmail.com','2026-02-13'),(125,'a23','a23@gmail.com','2026-02-13'),(126,'oop','oop23@gmail.com','2026-02-13'),(127,'up','up34@gmail.com','2026-02-13'),(128,'34a','34a23@gmail.com','2026-02-13'),(129,'butter','butter2@gmail.com','2026-02-13'),(130,'oop','oop23@gmail.com','2026-02-13'),(131,'34a','34a23@gmail.com','2026-02-13'),(132,'a23','a23@gmail.com','2026-02-13'),(133,'34a','34a23@gmail.com','2026-02-13'),(134,'up','up34@gmail.com','2026-02-13'),(135,'sdf','sdf34@gmail.com','2026-02-13'),(136,'mug','mug2@gmail.com','2026-02-13'),(137,'uncle','uncle2@gmail.com','2026-02-13'),(138,'mug','mug2@gmail.com','2026-02-13'),(139,'butter','butter2@gmail.com','2026-02-13'),(140,'mug','mug2@gmail.com','2026-02-13'),(141,'butter','butter2@gmail.com','2026-02-13'),(142,'butter','butter2@gmail.com','2026-02-14'),(143,'butter','butter2@gmail.com','2026-02-14'),(144,'a23','a23@gmail.com','2026-02-14'),(145,'butter','butter2@gmail.com','2026-02-14'),(146,'butter','butter2@gmail.com','2026-02-14'),(147,'butter','butter2@gmail.com','2026-02-14'),(148,'a23','a23@gmail.com','2026-02-14'),(149,'see34','see34@gmail.com','2026-02-14'),(150,'road','road2@gmail.com','2026-02-14'),(151,'a23','a23@gmail.com','2026-02-14'),(152,'hey','hey1@gmail.com','2026-02-14'),(153,'a23','a23@gmail.com','2026-02-14'),(154,'butter','butter2@gmail.com','2026-02-14'),(155,'mug','mug2@gmail.com','2026-02-14'),(156,'a23','a23@gmail.com','2026-02-14'),(157,'dft','dft56@gmail.com','2026-02-14'),(158,'butter','butter2@gmail.com','2026-02-14'),(159,'butter','butter2@gmail.com','2026-02-14'),(160,'butter','butter2@gmail.com','2026-02-14'),(161,'butter','butter2@gmail.com','2026-02-14'),(162,'water','water2@gmail.com','2026-02-14'),(163,'butter','butter2@gmail.com','2026-02-14'),(164,'butter','butter2@gmail.com','2026-02-14'),(165,'dft','dft56@gmail.com','2026-02-14'),(166,'butter','butter2@gmail.com','2026-02-14'),(167,'butter','butter2@gmail.com','2026-02-14'),(168,'butter','butter2@gmail.com','2026-02-15'),(169,'butter','butter2@gmail.com','2026-02-15'),(170,'butter','butter2@gmail.com','2026-02-15'),(171,'butter','butter2@gmail.com','2026-02-15'),(172,'butter','butter2@gmail.com','2026-02-15'),(173,'butter','butter2@gmail.com','2026-02-15'),(174,'butter','butter2@gmail.com','2026-02-15'),(175,'pen','pen2@gmail.com','2026-02-15'),(176,'oop','oop23@gmail.com','2026-02-15'),(177,'hand','hand2@gmail.com','2026-02-15'),(178,'oop','oop23@gmail.com','2026-02-15'),(179,'hand','hand2@gmail.com','2026-02-15'),(180,'hand','hand2@gmail.com','2026-02-15'),(181,'close','close2@gmail.com','2026-02-15'),(182,'close','close2@gmail.com','2026-02-15'),(183,'butter','butter2@gmail.com','2026-02-15'),(184,'butter','butter2@gmail.com','2026-02-15'),(185,'sdf','sdf34@gmail.com','2026-02-15'),(186,'dft','dft56@gmail.com','2026-02-15'),(187,'dft','dft56@gmail.com','2026-02-15'),(188,'see34','see34@gmail.com','2026-02-15'),(189,'oop','oop23@gmail.com','2026-02-15'),(190,'close','close2@gmail.com','2026-02-15'),(191,'butter','butter2@gmail.com','2026-02-15'),(192,'pen','pen2@gmail.com','2026-02-15'),(193,'hand','hand2@gmail.com','2026-02-15'),(194,'butter','butter2@gmail.com','2026-02-15'),(195,'hand','hand2@gmail.com','2026-02-15'),(196,'close','close2@gmail.com','2026-02-15'),(197,'dft','dft56@gmail.com','2026-02-15'),(198,'see34','see34@gmail.com','2026-02-15'),(199,'we2','we234@gmail.com','2026-02-15'),(200,'oop','oop23@gmail.com','2026-02-15'),(201,'butter','butter2@gmail.com','2026-02-15'),(202,'up','up34@gmail.com','2026-02-15'),(203,'up','up34@gmail.com','2026-02-15'),(204,'dft','dft56@gmail.com','2026-02-19'),(205,'sdf','sdf34@gmail.com','2026-02-20'),(206,'oop','oop23@gmail.com','2026-02-20'),(207,'we2','we234@gmail.com','2026-02-20'),(208,'2as','2as23@gmail.com','2026-02-20'),(209,'oop','oop23@gmail.com','2026-02-20'),(210,'we2','we234@gmail.com','2026-02-20'),(211,'oop','oop23@gmail.com','2026-02-20'),(212,'see34','see34@gmail.com','2026-02-20'),(213,'see34','see34@gmail.com','2026-02-20'),(214,'dft','dft56@gmail.com','2026-02-20'),(215,'we2','we234@gmail.com','2026-02-20'),(216,'we2','we234@gmail.com','2026-02-20'),(217,'dft','dft56@gmail.com','2026-02-20'),(218,'dft','dft56@gmail.com','2026-02-20'),(219,'dft','dft56@gmail.com','2026-02-20'),(220,'dft','dft56@gmail.com','2026-02-20'),(221,'dft','dft56@gmail.com','2026-02-20'),(222,'dft','dft56@gmail.com','2026-02-20'),(223,'dft','dft56@gmail.com','2026-02-20'),(224,'dft','dft56@gmail.com','2026-02-20'),(225,'sdf','sdf34@gmail.com','2026-02-20'),(226,'see34','see34@gmail.com','2026-02-20'),(227,'dft','dft56@gmail.com','2026-02-20'),(228,'dft','dft56@gmail.com','2026-02-20'),(229,'dft','dft56@gmail.com','2026-02-20'),(230,'dft','dft56@gmail.com','2026-02-20'),(231,'dft','dft56@gmail.com','2026-02-20'),(232,'dft','dft56@gmail.com','2026-02-21'),(233,'dft','dft56@gmail.com','2026-02-21'),(234,'dft','dft56@gmail.com','2026-02-21'),(235,'dft','dft56@gmail.com','2026-02-21'),(236,'dft','dft56@gmail.com','2026-02-21'),(237,'dft','dft56@gmail.com','2026-02-21'),(238,'dft','dft56@gmail.com','2026-02-21'),(239,'dft','dft56@gmail.com','2026-02-21'),(240,'dft','dft56@gmail.com','2026-02-21'),(241,'dft','dft56@gmail.com','2026-02-21'),(242,'dft','dft56@gmail.com','2026-02-21'),(243,'dft','dft56@gmail.com','2026-02-21'),(244,'dft','dft56@gmail.com','2026-02-21'),(245,'dft','dft56@gmail.com','2026-02-21'),(246,'dft','dft56@gmail.com','2026-03-01'),(247,'dft','dft56@gmail.com','2026-03-01'),(248,'dft','dft56@gmail.com','2026-03-01'),(249,'dft','dft56@gmail.com','2026-03-01'),(250,'dft','dft56@gmail.com','2026-03-01'),(251,'dft','dft56@gmail.com','2026-03-01'),(252,'dft','dft56@gmail.com','2026-03-01'),(253,'dft','dft56@gmail.com','2026-03-01'),(254,'dft','dft56@gmail.com','2026-03-01'),(255,'dft','dft56@gmail.com','2026-03-01'),(256,'dft','dft56@gmail.com','2026-03-01'),(257,'dft','dft56@gmail.com','2026-03-01'),(258,'dft','dft56@gmail.com','2026-03-01'),(259,'dft','dft56@gmail.com','2026-03-01'),(260,'dft','dft56@gmail.com','2026-03-05'),(261,'dft','dft56@gmail.com','2026-03-05'),(262,'dft','dft56@gmail.com','2026-03-05'),(263,'dft','dft56@gmail.com','2026-03-05'),(264,'dft','dft56@gmail.com','2026-03-05'),(265,'dft','dft56@gmail.com','2026-03-05'),(266,'dft','dft56@gmail.com','2026-03-05'),(267,'dft','dft56@gmail.com','2026-03-05'),(268,'dft','dft56@gmail.com','2026-03-05'),(269,'dft','dft56@gmail.com','2026-03-05'),(270,'dft','dft56@gmail.com','2026-03-05'),(271,'dft','dft56@gmail.com','2026-03-05'),(272,'dft','dft56@gmail.com','2026-03-05'),(273,'dft','dft56@gmail.com','2026-03-05'),(274,'dft','dft56@gmail.com','2026-03-06'),(275,'dft','dft56@gmail.com','2026-03-06'),(276,'dft','dft56@gmail.com','2026-03-06'),(277,'dft','dft56@gmail.com','2026-03-06'),(278,'dft','dft56@gmail.com','2026-03-06'),(279,'dft','dft56@gmail.com','2026-03-06'),(280,'dft','dft56@gmail.com','2026-03-06'),(281,'dft','dft56@gmail.com','2026-03-06'),(282,'dft','dft56@gmail.com','2026-03-06'),(283,'dft','dft56@gmail.com','2026-03-06'),(284,'dft','dft56@gmail.com','2026-03-06'),(285,'dft','dft56@gmail.com','2026-03-06'),(286,'dft','dft56@gmail.com','2026-03-06'),(287,'dft','dft56@gmail.com','2026-03-06'),(288,'dft','dft56@gmail.com','2026-03-06'),(289,'dft','dft56@gmail.com','2026-03-06'),(290,'dft','dft56@gmail.com','2026-03-06'),(291,'dft','dft56@gmail.com','2026-03-06'),(292,'dft','dft56@gmail.com','2026-03-07'),(293,'dft','dft56@gmail.com','2026-03-07'),(294,'dft','dft56@gmail.com','2026-03-07'),(295,'dft','dft56@gmail.com','2026-03-07'),(296,'dft','dft56@gmail.com','2026-03-07'),(297,'dft','dft56@gmail.com','2026-03-07'),(298,'dft','dft56@gmail.com','2026-03-09'),(299,'dft','dft56@gmail.com','2026-03-09'),(300,'dft','dft56@gmail.com','2026-03-09'),(301,'dft','dft56@gmail.com','2026-03-09'),(302,'dft','dft56@gmail.com','2026-03-24'),(303,'dft','dft56@gmail.com','2026-03-24'),(304,'dft','dft56@gmail.com','2026-03-24'),(305,'dft','dft56@gmail.com','2026-03-24'),(306,'dft','dft56@gmail.com','2026-03-24'),(307,'dft','dft56@gmail.com','2026-03-24'),(308,'dft','dft56@gmail.com','2026-03-24'),(309,'dft','dft56@gmail.com','2026-03-24'),(310,'dft','dft56@gmail.com','2026-03-24'),(311,'dft','dft56@gmail.com','2026-03-24'),(312,'dft','dft56@gmail.com','2026-03-24'),(313,'dft','dft56@gmail.com','2026-03-24'),(314,'dft','dft56@gmail.com','2026-03-25'),(315,'dft','dft56@gmail.com','2026-03-25'),(316,'dft','dft56@gmail.com','2026-03-25'),(317,'dft','dft56@gmail.com','2026-03-25'),(318,'dft','dft56@gmail.com','2026-03-25'),(319,'dft','dft56@gmail.com','2026-03-25'),(320,'dft','dft56@gmail.com','2026-03-25'),(321,'dft','dft56@gmail.com','2026-03-25'),(322,'dft','dft56@gmail.com','2026-03-25'),(323,'dft','dft56@gmail.com','2026-03-25'),(324,'dft','dft56@gmail.com','2026-03-27'),(325,'dft','dft56@gmail.com','2026-03-27'),(326,'dft','dft56@gmail.com','2026-03-27'),(327,'dft','dft56@gmail.com','2026-03-27'),(328,'dft','dft56@gmail.com','2026-03-27'),(329,'sakshi','ankitabandal45@gmail.com','2026-03-27'),(330,'dft','dft56@gmail.com','2026-03-27'),(331,'dft','dft56@gmail.com','2026-03-27'),(332,'dft','dft56@gmail.com','2026-03-27'),(333,'dft','dft56@gmail.com','2026-03-27'),(334,'dft','dft56@gmail.com','2026-03-27'),(335,'dft','dft56@gmail.com','2026-03-27'),(336,'dft','dft56@gmail.com','2026-03-27'),(337,'dft','dft56@gmail.com','2026-03-27'),(338,'dft','dft56@gmail.com','2026-03-27'),(339,'dft','dft56@gmail.com','2026-03-27'),(340,'dft','dft56@gmail.com','2026-03-27'),(341,'dft','dft56@gmail.com','2026-03-27'),(342,'dft','dft56@gmail.com','2026-03-27'),(343,'dft','dft56@gmail.com','2026-03-27'),(344,'dft','dft56@gmail.com','2026-03-27'),(345,'water','water2@gmail.com','2026-03-27'),(346,'dft','dft56@gmail.com','2026-03-28'),(347,'dft','dft56@gmail.com','2026-03-28'),(348,'payal','payal3@gmail.com','2026-03-28'),(349,'dft','dft56@gmail.com','2026-03-28'),(350,'dft','dft56@gmail.com','2026-03-28'),(351,'a','a2@gmail.com','2026-03-28'),(352,'dft','dft56@gmail.com','2026-03-28'),(353,'a','a2@gmail.com','2026-03-28'),(354,'dft','dft56@gmail.com','2026-03-28'),(355,'dft','dft56@gmail.com','2026-03-28'),(356,'dft','dft56@gmail.com','2026-03-28'),(357,'dft','dft56@gmail.com','2026-03-28'),(358,'dft','dft56@gmail.com','2026-03-28'),(359,'dft','dft56@gmail.com','2026-03-28'),(360,'close','close2@gmail.com','2026-03-28'),(361,'dft','dft56@gmail.com','2026-03-28'),(362,'dft','dft56@gmail.com','2026-03-28'),(363,'dft','dft56@gmail.com','2026-03-29'),(364,'dft','dft56@gmail.com','2026-03-29'),(365,'dft','dft56@gmail.com','2026-03-29'),(366,'dft','dft56@gmail.com','2026-03-29'),(367,'dft','dft56@gmail.com','2026-03-29'),(368,'dft','dft56@gmail.com','2026-03-29'),(369,'dft','dft56@gmail.com','2026-03-29'),(370,'dft','dft56@gmail.com','2026-03-29'),(371,'dft','dft56@gmail.com','2026-03-29'),(372,'dft','dft56@gmail.com','2026-03-29'),(373,'dft','dft56@gmail.com','2026-03-29'),(374,'dft','dft56@gmail.com','2026-03-29'),(375,'dft','dft56@gmail.com','2026-03-29'),(376,'dft','dft56@gmail.com','2026-04-08'),(377,'dft','dft56@gmail.com','2026-04-08'),(378,'dft','dft56@gmail.com','2026-04-08'),(379,'dft','dft56@gmail.com','2026-04-08'),(380,'dft','dft56@gmail.com','2026-05-04'),(381,'dft','dft56@gmail.com','2026-05-04'),(382,'dft','dft56@gmail.com','2026-05-04'),(383,'dft','dft56@gmail.com','2026-05-04'),(384,'we2','we234@gmail.com','2026-05-04'),(385,'dft','dft56@gmail.com','2026-05-05'),(386,'dft','dft56@gmail.com','2026-05-05');
/*!40000 ALTER TABLE `support_sd` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `taneya_21`
--

DROP TABLE IF EXISTS `taneya_21`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `taneya_21` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `row_no` varchar(20) DEFAULT NULL,
  `category` varchar(50) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `video` varchar(255) DEFAULT NULL,
  `availability` int DEFAULT NULL,
  `detail` text,
  `uploaded_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `address` varchar(255) DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `total` decimal(10,2) DEFAULT NULL,
  `mode` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `taneya_21`
--

LOCK TABLES `taneya_21` WRITE;
/*!40000 ALTER TABLE `taneya_21` DISABLE KEYS */;
/*!40000 ALTER TABLE `taneya_21` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `umesh_15`
--

DROP TABLE IF EXISTS `umesh_15`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `umesh_15` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `product_id` int DEFAULT NULL,
  `row_no` varchar(20) DEFAULT NULL,
  `category` varchar(50) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `video` varchar(255) DEFAULT NULL,
  `availability` int DEFAULT NULL,
  `detail` text,
  `uploaded_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `address` varchar(255) DEFAULT NULL,
  `quantity` int DEFAULT '1',
  `date` datetime DEFAULT CURRENT_TIMESTAMP,
  `total` decimal(10,2) DEFAULT NULL,
  `mode` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `umesh_15`
--

LOCK TABLES `umesh_15` WRITE;
/*!40000 ALTER TABLE `umesh_15` DISABLE KEYS */;
INSERT INTO `umesh_15` VALUES (1,15,NULL,'row_1','study_material','s',12.00,'/static/products/yumhub.jpg','',7,'1','2026-01-06 00:00:00','1',1,'2026-01-21 16:39:03',12.00,NULL);
/*!40000 ALTER TABLE `umesh_15` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `uncle_40`
--

DROP TABLE IF EXISTS `uncle_40`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `uncle_40` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `row_no` varchar(20) DEFAULT NULL,
  `category` varchar(50) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `video` varchar(255) DEFAULT NULL,
  `availability` int DEFAULT NULL,
  `detail` text,
  `uploaded_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `address` varchar(255) DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `total` decimal(10,2) DEFAULT NULL,
  `mode` varchar(20) DEFAULT NULL,
  `product_id` int DEFAULT NULL,
  `sub_vc_item` int DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `uncle_40`
--

LOCK TABLES `uncle_40` WRITE;
/*!40000 ALTER TABLE `uncle_40` DISABLE KEYS */;
INSERT INTO `uncle_40` VALUES (1,40,'row_1','card','q',600.00,'/static/products/Screenshot_2026-01-02_174133.png','/static/products/----_-_2.mp4',9,'12q','2026-01-06 00:00:00','zeal college pune ',3,'2026-02-07 10:30:20',1800.00,NULL,6,0);
/*!40000 ALTER TABLE `uncle_40` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `up_54`
--

DROP TABLE IF EXISTS `up_54`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `up_54` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `product_id` int DEFAULT NULL,
  `row_no` varchar(20) DEFAULT NULL,
  `category` varchar(50) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `video` varchar(255) DEFAULT NULL,
  `availability` int DEFAULT NULL,
  `detail` text,
  `uploaded_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `address` varchar(255) DEFAULT NULL,
  `quantity` int DEFAULT '1',
  `date` datetime DEFAULT CURRENT_TIMESTAMP,
  `total` decimal(10,2) DEFAULT NULL,
  `mode` varchar(20) DEFAULT NULL,
  `sub_vc_item` int DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `up_54`
--

LOCK TABLES `up_54` WRITE;
/*!40000 ALTER TABLE `up_54` DISABLE KEYS */;
INSERT INTO `up_54` VALUES (1,54,1,'row_1','food_items','b',34.00,'/static/products/kettle.jpg','/static/products/a.mp4',5299,'5','2026-01-06 00:00:00','5',1,'2026-02-13 14:39:13',34.00,NULL,0),(2,54,9,'row_2','food_items','vada pav',25.00,'/static/products/download_10.jpeg','',9,'a','2026-02-09 00:00:00','zeal',1,'2026-02-15 17:46:33',75.00,NULL,-2);
/*!40000 ALTER TABLE `up_54` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(100) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'sakshi','ankitabandal45@gmail.com','Pq!9@#Lm$'),(2,'user2','ankita45@gmail.com','1Aa!@#sakshi'),(3,'a','sakshi45@gmail.com','Pq!9@#Lm$'),(4,'user4','supriya45@gmail.com','Ab@#1Xy$'),(7,'aaaaaa','office@1234gmail.com','Zx#@12!Aa'),(12,'aaa','bandalsarika359@gmail.com','Zx#@12!Aa'),(13,'aakanshaa','aakansha3@gmail.com','Aa123!@#'),(14,'rekha','office@1gmail.com','Xy34$%^Zz'),(15,'umesh','umeshbandal45@gmail.com','M9@#Lp$Aa'),(16,'sarika','sarikabandal45@gmail.com','Qw!@12#Er'),(17,'aarya','aaryabandal45@gmail.com','Zx98$%Aa!'),(18,'shreya','shreyabandal45@gmail.com','Ab@#12$%X'),(19,'mansi','mansibandal45@gmail.com','Aa!@#$%^&12'),(20,'aai','aaibandal3@gmail.com','Pq!9@#Lm$'),(21,'taneya','taneya4@gmail.com','Zx#@12!Aa'),(22,'babu','babu1@gmail.com','Aa23!@#v'),(23,'shree','shree3@gmail.com','Aa!@#233'),(24,'farana','farana3@gmail.com','Aa!@#23scfd'),(25,'fula','fula2@gmail.com','Aa!@#as12'),(26,'full','full1@gmail.com','Aa123!@#'),(27,'x','x2@gmail.com','Qw!@12#Er'),(28,'star','star3@gmail.com','Aa12!@#de'),(29,'anu','anu34@gmail.com','Mn@!7Kp$'),(30,'sky','sky2@gmail.com','AAa!@#23'),(31,'samundar','samundar3@gmail.com','Aasw!@#23'),(32,'1ANU','1anu2@gmail.com','aVG!@#45'),(33,'bag','bag2@gmail.com','AA)(*124fdgt'),(34,'bottle','bottle1@gmail.com','Aa123^%$ch'),(35,'habki','handi1@gmail.com','Art#$%234'),(36,'helio','hello2@gmail.com','HELLO@#$sdf!454'),(37,'payal','payal3@gmail.com','Aas23876*&^'),(38,'sun','sun23@gmail.com','Asss34@#$'),(39,'close','close2@gmail.com','Aas!@#45cvg'),(40,'uncle','uncle2@gmail.com','Aa123@#$vnj'),(41,'hey','hey1@gmail.com','Aa234@#$sdr'),(42,'hi','hi2@gmail.com','Aasd@#$2366'),(43,'aanil','aanil3@gmail.com','Aasdr3456@#$'),(44,'mug','mug2@gmail.com','Aav$%^45bhy12'),(45,'hand','hand2@gmail.com','Aas#$%567'),(46,'pen','pen2@gmail.com','Aasd#$%34'),(47,'water','water2@gmail.com','Aab@#$346'),(48,'a23','a23@gmail.com','Aav@#$346'),(49,'awe','awe22@gamil.com','Aa@#$df56'),(50,'road','road2@gmail.com','Aa34%^&ghe'),(51,'butter','butter2@gmail.com','Aab$%^435'),(52,'a','a2@gmail.com','A23@##efAS'),(53,'2as','2as23@gmail.com','Aa23@#$gtde'),(54,'up','up34@gmail.com','AA23Wsde@#$'),(55,'34a','34a23@gmail.com','A@#$%34sdvreyy'),(56,'oop','oop23@gmail.com','AS23@##sdgyu'),(57,'we2','we234@gmail.com','ASD@#$34jhcrv@#$'),(58,'see34','see34@gmail.com','ASDG234@##$fth'),(59,'sdf','sdf34@gmail.com','A345@#$fdcgmfff'),(61,'dft','dft56@gmail.com','Asdet@#$df3466');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_1`
--

DROP TABLE IF EXISTS `user_1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_1` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `product_id` int DEFAULT NULL,
  `category` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `video` varchar(255) DEFAULT NULL,
  `price` float DEFAULT NULL,
  `availability` int DEFAULT NULL,
  `detail` text,
  `uploaded_at` datetime DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_1`
--

LOCK TABLES `user_1` WRITE;
/*!40000 ALTER TABLE `user_1` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_1anu_32`
--

DROP TABLE IF EXISTS `user_1anu_32`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_1anu_32` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `product_id` int DEFAULT NULL,
  `row_no` varchar(20) DEFAULT NULL,
  `category` varchar(50) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `video` varchar(255) DEFAULT NULL,
  `availability` int DEFAULT NULL,
  `detail` text,
  `uploaded_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `address` varchar(255) DEFAULT NULL,
  `quantity` int DEFAULT '1',
  `date` datetime DEFAULT CURRENT_TIMESTAMP,
  `total` decimal(10,2) DEFAULT NULL,
  `mode` varchar(20) DEFAULT NULL,
  `sub_vc_item` int DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_1anu_32`
--

LOCK TABLES `user_1anu_32` WRITE;
/*!40000 ALTER TABLE `user_1anu_32` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_1anu_32` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_2as_53`
--

DROP TABLE IF EXISTS `user_2as_53`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_2as_53` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `product_id` int DEFAULT NULL,
  `row_no` varchar(20) DEFAULT NULL,
  `category` varchar(50) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `video` varchar(255) DEFAULT NULL,
  `availability` int DEFAULT NULL,
  `detail` text,
  `uploaded_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `address` varchar(255) DEFAULT NULL,
  `quantity` int DEFAULT '1',
  `date` datetime DEFAULT CURRENT_TIMESTAMP,
  `total` decimal(10,2) DEFAULT NULL,
  `mode` varchar(20) DEFAULT NULL,
  `sub_vc_item` int DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_2as_53`
--

LOCK TABLES `user_2as_53` WRITE;
/*!40000 ALTER TABLE `user_2as_53` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_2as_53` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_34a_55`
--

DROP TABLE IF EXISTS `user_34a_55`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_34a_55` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `product_id` int DEFAULT NULL,
  `row_no` varchar(20) DEFAULT NULL,
  `category` varchar(50) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `video` varchar(255) DEFAULT NULL,
  `availability` int DEFAULT NULL,
  `detail` text,
  `uploaded_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `address` varchar(255) DEFAULT NULL,
  `quantity` int DEFAULT '1',
  `date` datetime DEFAULT CURRENT_TIMESTAMP,
  `total` decimal(10,2) DEFAULT NULL,
  `mode` varchar(20) DEFAULT NULL,
  `sub_vc_item` int DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_34a_55`
--

LOCK TABLES `user_34a_55` WRITE;
/*!40000 ALTER TABLE `user_34a_55` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_34a_55` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_activity`
--

DROP TABLE IF EXISTS `user_activity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_activity` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `mode` varchar(20) DEFAULT NULL,
  `action_date` date DEFAULT NULL,
  `action_time` time DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=387 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_activity`
--

LOCK TABLES `user_activity` WRITE;
/*!40000 ALTER TABLE `user_activity` DISABLE KEYS */;
INSERT INTO `user_activity` VALUES (1,NULL,'ankitabandal45@gmail.com','1As!@#ankita','login','2026-01-01','10:47:36'),(2,NULL,'ankitabandal45@gmail.com','1aA!@#sanket','login','2026-01-01','10:51:54'),(3,NULL,'ankitabandal45@gmail.com','1Aa!@#umesh','login','2026-01-01','11:00:08'),(4,NULL,'ankitabandal45@gmail.com','1AAAa!@#ankita','login','2026-01-01','11:08:26'),(5,NULL,'ankitabandal45@gmail.com','1AAAa!@#ankita','signup','2026-01-01','11:08:42'),(6,NULL,'ankita45@gmail.com','1Aa!@#sakshi','login','2026-01-01','11:10:15'),(7,NULL,'ankita45@gmail.com','1Aa!@#sakshi','signup','2026-01-01','11:10:38'),(8,NULL,'ankitabandal45@gmail.com','Qw@!9Er$','login','2026-01-01','11:20:50'),(9,NULL,'ankitabandal45@gmail.com','A12d!@#pranali','login','2026-01-01','11:21:21'),(10,NULL,'ankitabandal45@gmail.com','A12d!@#pranali','login','2026-01-01','11:21:41'),(11,NULL,'sakshi45@gmail.com','ankita!@#A1','login','2026-01-01','11:22:53'),(12,NULL,'sakshi45@gmail.com','ankita!@#A1','signup','2026-01-01','11:23:40'),(13,NULL,'sakshi45@gmail.com','Aa678!@#','login','2026-01-01','11:38:56'),(14,NULL,'sakshi45@gmail.com','Aa678!@#','signup','2026-01-01','11:39:39'),(15,NULL,'sakshi45@gmail.com','i1S!@#ankita','login','2026-01-02','08:57:01'),(16,NULL,'sakshi45@gmail.com','i1S!@#ankita','signup','2026-01-02','08:57:47'),(17,NULL,'sakshi45@gmail.com','Ab@#1Xy$','login','2026-01-02','09:00:05'),(18,NULL,'sakshi45@gmail.com','Mn@!7Kp$','login','2026-01-02','09:03:42'),(19,NULL,'sakshi45@gmail.com','Mn@!7Kp$','login','2026-01-02','09:03:55'),(20,NULL,'sakshi45@gmail.com','Ab@#1Xy$','login','2026-01-02','09:23:12'),(21,NULL,'sakshi45@gmail.com','Qw@!9Er$','login','2026-01-02','09:23:30'),(22,NULL,'sakshi45@gmail.com','Zx@#4Lp%','login','2026-01-02','09:28:04'),(23,NULL,'sakshi45@gmail.com','Mn@!7Kp$','login','2026-01-02','09:28:15'),(24,NULL,'sakshi45@gmail.com','Mn@!7Kp$','login','2026-01-02','09:28:20'),(25,NULL,'sakshi45@gmail.com','Ab@#1Xy$','login','2026-01-02','09:28:35'),(26,NULL,'supriya45@gmail.com','Ab@#1Xy$','login','2026-01-02','09:31:43'),(27,'ankita ','ankitabandal45@gmail.com','!@#Aa556ankita','login','2026-01-04','12:14:18'),(28,'pranali','ankitabandal45@gmail.com','Aa123!@#ankita','login','2026-01-04','12:59:53'),(29,'ankita bandal','ankitabandal45@gmail.com','!@#Aa123','login','2026-01-04','13:17:36'),(30,'sakshi','sakshi45@gmail.com','Aa!@#sakshi34','login','2026-01-04','13:21:44'),(31,'sakshi','sakshi45@gmail.com','Aa!@#sakshi34','signup','2026-01-04','13:22:07'),(32,'ankita','ankitabandal45@gmail.com','Ab@#1Xy$','login','2026-01-04','14:16:48'),(33,'ankita','ankitabandal45@gmail.com','Ab@#1Xy$','login','2026-01-04','14:56:24'),(34,'ankita','ankitabandal45@gmail.com','Ab@#1Xy$','login','2026-01-04','14:57:20'),(35,'ankita','ankitabandal45@gmail.com','Ab@#1Xy$','login','2026-01-04','15:04:19'),(36,'ankita','ankitabandal45@gmail.com','Ab@#1Xy$','login','2026-01-04','15:04:45'),(37,'ankita','ankitabandal45@gmail.com','Ab@#1Xy$','login','2026-01-04','21:28:44'),(38,'ankita','ankitabandal45@gmail.com','Ab@#1Xy$','login','2026-01-04','21:43:56'),(39,'ankita','ankitabandal45@gmail.com','AAa!@#45','login','2026-01-04','21:44:33'),(40,'ankita','ankitabandal45@gmail.com','AAa!@#45','signup','2026-01-04','21:47:57'),(41,'ankita','ankitabandal45@gmail.com','Ab@#1Xy$','login','2026-01-04','23:07:43'),(42,'ankita','ankitabandal45@gmail.com','Ab@#1Xy$','signup','2026-01-04','23:09:59'),(43,'sanket','sakshi45@gmail.com','Zx@#4Lp%','login','2026-01-04','23:11:23'),(44,'ankita','ankitabandal45@gmail.com','Ankita!@#12','login','2026-01-07','17:57:23'),(45,'ankita','ankitabandal45@gmail.com','Ankita!@#23','login','2026-01-07','18:00:31'),(46,'ankita','sakshi45@gmail.com','Ankita!@#3','login','2026-01-07','21:43:23'),(47,'a','ankitabandal45@gmail.com','Mn@!7Kp$','login','2026-01-07','22:07:21'),(48,'a','office@1234gmail.com','n jhbvjhb','signup','2026-01-07','22:07:52'),(49,'a','ankitabandal45@gmail.com','Mn@!7Kp$','login','2026-01-07','22:12:20'),(50,'a','ankitabandal45@gmail.com','Ab@#12$%X','login','2026-01-07','22:12:59'),(51,'a','ankitabandal45@gmail.com','Ab@#12$%X','login','2026-01-07','22:14:41'),(52,'a','sakshi45@gmail.com','Pq!9@#Lm$','login','2026-01-07','22:48:16'),(53,'a','ankitabandal45@gmail.com','Mn@!7Kp$','login','2026-01-07','22:51:04'),(54,'a','ankitabandal45@gmail.com','Zx#@12!Aa','login','2026-01-07','22:51:14'),(55,'a','ankitabandal45@gmail.com','Zx#@12!Aa','login','2026-01-07','22:52:43'),(56,'a','ankitabandal45@gmail.com','Ab@#12$%X','login','2026-01-07','22:55:03'),(57,'sakshi','ankitabandal45@gmail.com','Pq!9@#Lm$','login','2026-01-07','22:56:24'),(58,'aaaaaa','office@1234gmail.com','Zx#@12!Aa','login','2026-01-07','22:57:25'),(59,'aaa','bandalsarika359@gmail.com','Zx#@12!Aa','signup','2026-01-07','23:00:44'),(60,'aakanshaa','aakansha3@gmail.com','Aa123!@#','signup','2026-01-07','23:01:58'),(61,'Ankita','ankitabandal45@gmail.com','Aa12!@#Bb','signup','2026-01-08','15:59:59'),(62,'rekha','office@1gmail.com','Xy34$%^Zz','signup','2026-01-08','16:09:52'),(63,'rekha','office@1gmail.com','Xy34$%^Zz','login','2026-01-08','16:11:51'),(64,'sakshi','ankitabandal45@gmail.com','Pq!9@#Lm$','login','2026-01-08','16:13:29'),(65,'a','sakshi45@gmail.com','Pq!9@#Lm$','login','2026-01-08','16:30:50'),(66,'a','sakshi45@gmail.com','Pq!9@#Lm$','login','2026-01-08','16:34:44'),(67,'a','sakshi45@gmail.com','Pq!9@#Lm$','login','2026-01-08','16:46:45'),(68,'umesh','umeshbandal45@gmail.com','M9@#Lp$Aa','signup','2026-01-08','16:57:50'),(69,'umesh','umeshbandal45@gmail.com','M9@#Lp$Aa','login','2026-01-08','16:58:34'),(70,'sakshi','ankitabandal45@gmail.com','Pq!9@#Lm$','login','2026-01-08','17:04:20'),(71,'sarika','sarikabandal45@gmail.com','Qw!@12#Er','signup','2026-01-08','17:05:09'),(72,'shreya','shreyabandal45@gmail.com','Ab@#12$%X','signup','2026-01-08','18:33:41'),(73,'mansi','mansibandal45@gmail.com','Aa!@#$%^&12','signup','2026-01-08','18:35:51'),(74,'aai','aaibandal3@gmail.com','Pq!9@#Lm$','signup','2026-01-09','13:01:25'),(75,'taneya','taneya4@gmail.com','Zx#@12!Aa','signup','2026-01-15','15:41:25'),(76,'babu','babu1@gmail.com','Aa23!@#v','signup','2026-01-15','16:15:29'),(77,'shree','shree3@gmail.com','Aa!@#233','signup','2026-01-15','16:23:31'),(78,'farana','farana3@gmail.com','Aa!@#23scfd','signup','2026-01-15','17:06:28'),(79,'fula','fula2@gmail.com','Aa!@#as12','signup','2026-01-15','17:33:33'),(80,'full','full1@gmail.com','Aa123!@#','signup','2026-01-15','17:36:14'),(81,'x','x2@gmail.com','Qw!@12#Er','signup','2026-01-15','18:04:14'),(82,'star','star3@gmail.com','Aa12!@#de','signup','2026-01-15','18:25:15'),(83,'anu','anu34@gmail.com','Mn@!7Kp$','signup','2026-01-16','09:09:33'),(84,'sky','sky2@gmail.com','AAa!@#23','signup','2026-01-16','09:34:07'),(85,'samundar','samundar3@gmail.com','Aasw!@#23','signup','2026-01-16','09:39:14'),(86,'1ANU','1anu2@gmail.com','aVG!@#45','signup','2026-01-16','09:42:30'),(87,'bag','bag2@gmail.com','AA)(*124fdgt','signup','2026-01-16','10:19:57'),(88,'bottle','bottle1@gmail.com','Aa123^%$ch','signup','2026-01-16','10:50:42'),(89,'habki','handi1@gmail.com','Art#$%234','signup','2026-01-16','11:08:57'),(90,'helio','hello2@gmail.com','HELLO@#$sdf!454','signup','2026-01-16','11:59:21'),(91,'payal','payal3@gmail.com','Aas23876*&^','signup','2026-01-16','12:07:21'),(92,'sun','sun23@gmail.com','Asss34@#$','signup','2026-01-16','12:24:17'),(93,'close','close2@gmail.com','Aas!@#45cvg','signup','2026-01-16','12:29:14'),(94,'uncle','uncle2@gmail.com','Aa123@#$vnj','signup','2026-01-16','12:32:44'),(95,'hey','hey1@gmail.com','Aa234@#$sdr','signup','2026-01-16','12:42:07'),(96,'hi','hi2@gmail.com','Aasd@#$2366','signup','2026-01-16','12:57:33'),(97,'aanil','aanil3@gmail.com','Aasdr3456@#$','signup','2026-01-16','13:37:03'),(98,'mug','mug2@gmail.com','Aav$%^45bhy12','signup','2026-01-16','14:06:48'),(99,'hand','hand2@gmail.com','Aas#$%567','signup','2026-01-16','14:22:29'),(100,'pen','pen2@gmail.com','Aasd#$%34','signup','2026-01-16','15:24:18'),(101,'water','water2@gmail.com','Aab@#$346','signup','2026-01-16','16:08:27'),(102,'a23','a23@gmail.com','Aav@#$346','signup','2026-01-16','16:13:35'),(103,'awe','awe22@gamil.com','Aa@#$df56','signup','2026-01-16','16:17:16'),(104,'road','road2@gmail.com','Aa34%^&ghe','signup','2026-01-16','16:31:55'),(105,'butter','butter2@gmail.com','Aab$%^435','signup','2026-01-16','16:35:45'),(106,'a','a2@gmail.com','A23@##efAS','signup','2026-02-12','21:46:32'),(107,'2as','2as23@gmail.com','Aa23@#$gtde','signup','2026-02-12','22:07:30'),(108,'up','up34@gmail.com','AA23Wsde@#$','signup','2026-02-12','22:14:22'),(109,NULL,NULL,NULL,'new','2026-02-12','22:20:38'),(110,'34a','34a23@gmail.com','A@#$%34sdvreyy','signup','2026-02-12','22:36:29'),(111,'oop','oop23@gmail.com','AS23@##sdgyu','signup','2026-02-12','22:44:10'),(112,'Ankita','ankita@test.com','12345','signup','2026-02-13','10:33:18'),(113,'we2','we234@gmail.com','ASD@#$34jhcrv@#$','signup','2026-02-13','10:34:48'),(114,'see34','see34@gmail.com','ASDG234@##$fth','signup','2026-02-13','10:40:48'),(115,'sdf','sdf34@gmail.com','A345@#$fdcgmfff','signup','2026-02-13','10:44:59'),(116,'TestUser','test123@gmail.com','123','signup','2026-02-13','11:00:18'),(117,'TestUser','test123@gmail.com','123','login','2026-02-13','11:04:17'),(118,'DemoUser','demo@gmail.com','123','login','2026-02-13','11:04:22'),(119,'sdf','sdf34@gmail.com','A345@#$fdcgmfff','login','2026-02-13','11:13:17'),(120,'dft','dft56@gmail.com','Asdet@#$df3466','signup','2026-02-13','11:14:36'),(121,'butter','butter2@gmail.com','Aab$%^435','login','2026-02-13','11:30:59'),(122,'road','road2@gmail.com','Aa34%^&ghe','login','2026-02-13','11:33:47'),(123,'up','up34@gmail.com','AA23Wsde@#$','login','2026-02-13','11:43:43'),(124,'road','road2@gmail.com','Aa34%^&ghe','login','2026-02-13','11:46:28'),(125,'a23','a23@gmail.com','Aav@#$346','login','2026-02-13','11:50:45'),(126,'oop','oop23@gmail.com','AS23@##sdgyu','login','2026-02-13','12:06:24'),(127,'up','up34@gmail.com','AA23Wsde@#$','login','2026-02-13','12:11:45'),(128,'34a','34a23@gmail.com','A@#$%34sdvreyy','login','2026-02-13','12:14:05'),(129,'butter','butter2@gmail.com','Aab$%^435','login','2026-02-13','12:17:24'),(130,'oop','oop23@gmail.com','AS23@##sdgyu','login','2026-02-13','13:24:45'),(131,'34a','34a23@gmail.com','A@#$%34sdvreyy','login','2026-02-13','13:31:04'),(132,'a23','a23@gmail.com','Aav@#$346','login','2026-02-13','13:38:38'),(133,'34a','34a23@gmail.com','A@#$%34sdvreyy','login','2026-02-13','14:12:00'),(134,'up','up34@gmail.com','AA23Wsde@#$','login','2026-02-13','14:38:57'),(135,'sdf','sdf34@gmail.com','A345@#$fdcgmfff','login','2026-02-13','15:02:58'),(136,'mug','mug2@gmail.com','Aav$%^45bhy12','login','2026-02-13','21:37:06'),(137,'uncle','uncle2@gmail.com','Aa123@#$vnj','login','2026-02-13','21:59:04'),(138,'mug','mug2@gmail.com','Aav$%^45bhy12','login','2026-02-13','22:06:11'),(139,'butter','butter2@gmail.com','Aab$%^435','login','2026-02-13','22:15:03'),(140,'mug','mug2@gmail.com','Aav$%^45bhy12','login','2026-02-13','22:53:48'),(141,'butter','butter2@gmail.com','Aab$%^435','login','2026-02-13','23:00:04'),(142,'butter','butter2@gmail.com','Aab$%^435','login','2026-02-14','09:24:41'),(143,'butter','butter2@gmail.com','Aab$%^435','login','2026-02-14','09:43:00'),(144,'a23','a23@gmail.com','Aav@#$346','login','2026-02-14','09:44:27'),(145,'butter','butter2@gmail.com','Aab$%^435','login','2026-02-14','09:51:35'),(146,'butter','butter2@gmail.com','Aab$%^435','login','2026-02-14','09:58:10'),(147,'butter','butter2@gmail.com','Aab$%^435','login','2026-02-14','10:46:11'),(148,'a23','a23@gmail.com','Aav@#$346','login','2026-02-14','10:46:57'),(149,'see34','see34@gmail.com','ASDG234@##$fth','login','2026-02-14','10:59:35'),(150,'road','road2@gmail.com','Aa34%^&ghe','login','2026-02-14','11:01:22'),(151,'a23','a23@gmail.com','Aav@#$346','login','2026-02-14','11:09:10'),(152,'hey','hey1@gmail.com','Aa234@#$sdr','login','2026-02-14','11:26:29'),(153,'a23','a23@gmail.com','Aav@#$346','login','2026-02-14','11:29:33'),(154,'butter','butter2@gmail.com','Aab$%^435','login','2026-02-14','11:54:39'),(155,'mug','mug2@gmail.com','Aav$%^45bhy12','login','2026-02-14','12:08:09'),(156,'a23','a23@gmail.com','Aav@#$346','login','2026-02-14','13:13:01'),(157,'dft','dft56@gmail.com','Asdet@#$df3466','login','2026-02-14','13:22:04'),(158,'butter','butter2@gmail.com','Aab$%^435','login','2026-02-14','13:27:00'),(159,'butter','butter2@gmail.com','Aab$%^435','login','2026-02-14','13:40:30'),(160,'butter','butter2@gmail.com','Aab$%^435','login','2026-02-14','13:43:46'),(161,'butter','butter2@gmail.com','Aab$%^435','login','2026-02-14','13:45:41'),(162,'water','water2@gmail.com','Aab@#$346','login','2026-02-14','13:47:24'),(163,'butter','butter2@gmail.com','Aab$%^435','login','2026-02-14','14:02:48'),(164,'butter','butter2@gmail.com','Aab$%^435','login','2026-02-14','14:51:10'),(165,'dft','dft56@gmail.com','Asdet@#$df3466','login','2026-02-14','14:52:22'),(166,'butter','butter2@gmail.com','Aab$%^435','login','2026-02-14','18:05:32'),(167,'butter','butter2@gmail.com','Aab$%^435','login','2026-02-14','18:11:08'),(168,'butter','butter2@gmail.com','Aab$%^435','login','2026-02-15','09:04:37'),(169,'butter','butter2@gmail.com','Aab$%^435','login','2026-02-15','09:20:08'),(170,'butter','butter2@gmail.com','Aab$%^435','login','2026-02-15','10:07:24'),(171,'butter','butter2@gmail.com','Aab$%^435','login','2026-02-15','10:14:16'),(172,'butter','butter2@gmail.com','Aab$%^435','login','2026-02-15','10:20:38'),(173,'butter','butter2@gmail.com','Aab$%^435','login','2026-02-15','10:33:53'),(174,'butter','butter2@gmail.com','Aab$%^435','login','2026-02-15','10:59:42'),(175,'pen','pen2@gmail.com','Aasd#$%34','login','2026-02-15','11:11:04'),(176,'oop','oop23@gmail.com','AS23@##sdgyu','login','2026-02-15','11:53:37'),(177,'hand','hand2@gmail.com','Aas#$%567','login','2026-02-15','12:00:09'),(178,'oop','oop23@gmail.com','AS23@##sdgyu','login','2026-02-15','12:09:30'),(179,'hand','hand2@gmail.com','Aas#$%567','login','2026-02-15','12:19:57'),(180,'hand','hand2@gmail.com','Aas#$%567','login','2026-02-15','12:58:27'),(181,'close','close2@gmail.com','Aas!@#45cvg','login','2026-02-15','13:26:07'),(182,'close','close2@gmail.com','Aas!@#45cvg','login','2026-02-15','13:33:22'),(183,'butter','butter2@gmail.com','Aab$%^435','login','2026-02-15','14:30:54'),(184,'butter','butter2@gmail.com','Aab$%^435','login','2026-02-15','14:40:03'),(185,'sdf','sdf34@gmail.com','A345@#$fdcgmfff','login','2026-02-15','14:52:11'),(186,'dft','dft56@gmail.com','Asdet@#$df3466','login','2026-02-15','14:56:58'),(187,'dft','dft56@gmail.com','Asdet@#$df3466','login','2026-02-15','14:58:54'),(188,'see34','see34@gmail.com','ASDG234@##$fth','login','2026-02-15','15:00:07'),(189,'oop','oop23@gmail.com','AS23@##sdgyu','login','2026-02-15','15:37:30'),(190,'close','close2@gmail.com','Aas!@#45cvg','login','2026-02-15','15:39:58'),(191,'butter','butter2@gmail.com','Aab$%^435','login','2026-02-15','15:41:43'),(192,'pen','pen2@gmail.com','Aasd#$%34','login','2026-02-15','15:42:56'),(193,'hand','hand2@gmail.com','Aas#$%567','login','2026-02-15','15:47:24'),(194,'butter','butter2@gmail.com','Aab$%^435','login','2026-02-15','15:51:28'),(195,'hand','hand2@gmail.com','Aas#$%567','login','2026-02-15','15:57:50'),(196,'close','close2@gmail.com','Aas!@#45cvg','login','2026-02-15','15:59:20'),(197,'dft','dft56@gmail.com','Asdet@#$df3466','login','2026-02-15','16:23:45'),(198,'see34','see34@gmail.com','ASDG234@##$fth','login','2026-02-15','16:25:07'),(199,'we2','we234@gmail.com','ASD@#$34jhcrv@#$','login','2026-02-15','16:33:25'),(200,'oop','oop23@gmail.com','AS23@##sdgyu','login','2026-02-15','16:35:14'),(201,'butter','butter2@gmail.com','Aab$%^435','login','2026-02-15','16:41:25'),(202,'up','up34@gmail.com','AA23Wsde@#$','login','2026-02-15','17:31:46'),(203,'up','up34@gmail.com','AA23Wsde@#$','login','2026-02-15','17:46:15'),(204,'dft','dft56@gmail.com','Asdet@#$df3466','login','2026-02-19','21:33:00'),(205,'sdf','sdf34@gmail.com','A345@#$fdcgmfff','login','2026-02-20','04:49:43'),(206,'oop','oop23@gmail.com','AS23@##sdgyu','login','2026-02-20','05:56:37'),(207,'we2','we234@gmail.com','ASD@#$34jhcrv@#$','login','2026-02-20','06:13:48'),(208,'2as','2as23@gmail.com','Aa23@#$gtde','login','2026-02-20','06:56:41'),(209,'oop','oop23@gmail.com','AS23@##sdgyu','login','2026-02-20','07:14:21'),(210,'we2','we234@gmail.com','ASD@#$34jhcrv@#$','login','2026-02-20','08:10:36'),(211,'oop','oop23@gmail.com','AS23@##sdgyu','login','2026-02-20','08:36:27'),(212,'see34','see34@gmail.com','ASDG234@##$fth','login','2026-02-20','09:19:25'),(213,'see34','see34@gmail.com','ASDG234@##$fth','login','2026-02-20','09:19:26'),(214,'dft','dft56@gmail.com','Asdet@#$df3466','login','2026-02-20','09:26:04'),(215,'we2','we234@gmail.com','ASD@#$34jhcrv@#$','login','2026-02-20','10:02:41'),(216,'we2','we234@gmail.com','ASD@#$34jhcrv@#$','login','2026-02-20','10:10:57'),(217,'dft','dft56@gmail.com','Asdet@#$df3466','login','2026-02-20','10:17:31'),(218,'dft','dft56@gmail.com','Asdet@#$df3466','login','2026-02-20','10:34:08'),(219,'dft','dft56@gmail.com','Asdet@#$df3466','login','2026-02-20','11:11:49'),(220,'dft','dft56@gmail.com','Asdet@#$df3466','login','2026-02-20','12:07:49'),(221,'dft','dft56@gmail.com','Asdet@#$df3466','login','2026-02-20','12:56:01'),(222,'dft','dft56@gmail.com','Asdet@#$df3466','login','2026-02-20','13:02:45'),(223,'dft','dft56@gmail.com','Asdet@#$df3466','login','2026-02-20','13:09:58'),(224,'dft','dft56@gmail.com','Asdet@#$df3466','login','2026-02-20','17:15:05'),(225,'sdf','sdf34@gmail.com','A345@#$fdcgmfff','login','2026-02-20','17:38:51'),(226,'see34','see34@gmail.com','ASDG234@##$fth','login','2026-02-20','17:42:12'),(227,'dft','dft56@gmail.com','Asdet@#$df3466','login','2026-02-20','17:49:14'),(228,'dft','dft56@gmail.com','Asdet@#$df3466','login','2026-02-20','18:00:44'),(229,'dft','dft56@gmail.com','Asdet@#$df3466','login','2026-02-20','18:11:15'),(230,'dft','dft56@gmail.com','Asdet@#$df3466','login','2026-02-20','19:05:07'),(231,'dft','dft56@gmail.com','Asdet@#$df3466','login','2026-02-20','19:14:59'),(232,'dft','dft56@gmail.com','Asdet@#$df3466','login','2026-02-21','08:02:08'),(233,'dft','dft56@gmail.com','Asdet@#$df3466','login','2026-02-21','08:33:12'),(234,'dft','dft56@gmail.com','Asdet@#$df3466','login','2026-02-21','08:41:21'),(235,'dft','dft56@gmail.com','Asdet@#$df3466','login','2026-02-21','08:44:35'),(236,'dft','dft56@gmail.com','Asdet@#$df3466','login','2026-02-21','09:54:44'),(237,'dft','dft56@gmail.com','Asdet@#$df3466','login','2026-02-21','10:04:02'),(238,'dft','dft56@gmail.com','Asdet@#$df3466','login','2026-02-21','10:07:25'),(239,'dft','dft56@gmail.com','Asdet@#$df3466','login','2026-02-21','10:16:22'),(240,'dft','dft56@gmail.com','Asdet@#$df3466','login','2026-02-21','10:25:40'),(241,'dft','dft56@gmail.com','Asdet@#$df3466','login','2026-02-21','10:37:41'),(242,'dft','dft56@gmail.com','Asdet@#$df3466','login','2026-02-21','13:15:29'),(243,'dft','dft56@gmail.com','Asdet@#$df3466','login','2026-02-21','13:35:00'),(244,'dft','dft56@gmail.com','Asdet@#$df3466','login','2026-02-21','14:02:34'),(245,'dft','dft56@gmail.com','Asdet@#$df3466','login','2026-02-21','14:13:29'),(246,'dft','dft56@gmail.com','Asdet@#$df3466','login','2026-03-01','08:09:36'),(247,'dft','dft56@gmail.com','Asdet@#$df3466','login','2026-03-01','08:27:23'),(248,'dft','dft56@gmail.com','Asdet@#$df3466','login','2026-03-01','08:34:03'),(249,'dft','dft56@gmail.com','Asdet@#$df3466','login','2026-03-01','08:36:31'),(250,'dft','dft56@gmail.com','Asdet@#$df3466','login','2026-03-01','08:39:08'),(251,'dft','dft56@gmail.com','Asdet@#$df3466','login','2026-03-01','08:43:22'),(252,'dft','dft56@gmail.com','Asdet@#$df3466','login','2026-03-01','08:57:25'),(253,'dft','dft56@gmail.com','Asdet@#$df3466','login','2026-03-01','09:32:24'),(254,'dft','dft56@gmail.com','Asdet@#$df3466','login','2026-03-01','10:45:10'),(255,'dft','dft56@gmail.com','Asdet@#$df3466','login','2026-03-01','10:47:18'),(256,'dft','dft56@gmail.com','Asdet@#$df3466','login','2026-03-01','11:10:23'),(257,'dft','dft56@gmail.com','Asdet@#$df3466','login','2026-03-01','11:28:54'),(258,'dft','dft56@gmail.com','Asdet@#$df3466','login','2026-03-01','11:33:04'),(259,'dft','dft56@gmail.com','Asdet@#$df3466','login','2026-03-01','11:40:11'),(260,'dft','dft56@gmail.com','Asdet@#$df3466','login','2026-03-05','18:33:03'),(261,'dft','dft56@gmail.com','Asdet@#$df3466','login','2026-03-05','18:44:49'),(262,'dft','dft56@gmail.com','Asdet@#$df3466','login','2026-03-05','18:51:03'),(263,'dft','dft56@gmail.com','Asdet@#$df3466','login','2026-03-05','18:56:30'),(264,'dft','dft56@gmail.com','Asdet@#$df3466','login','2026-03-05','19:14:00'),(265,'dft','dft56@gmail.com','Asdet@#$df3466','login','2026-03-05','19:28:33'),(266,'dft','dft56@gmail.com','Asdet@#$df3466','login','2026-03-05','19:36:13'),(267,'dft','dft56@gmail.com','Asdet@#$df3466','login','2026-03-05','19:41:17'),(268,'dft','dft56@gmail.com','Asdet@#$df3466','login','2026-03-05','19:43:34'),(269,'dft','dft56@gmail.com','Asdet@#$df3466','login','2026-03-05','19:49:25'),(270,'dft','dft56@gmail.com','Asdet@#$df3466','login','2026-03-05','19:51:31'),(271,'dft','dft56@gmail.com','Asdet@#$df3466','login','2026-03-05','19:54:55'),(272,'dft','dft56@gmail.com','Asdet@#$df3466','login','2026-03-05','21:37:01'),(273,'dft','dft56@gmail.com','Asdet@#$df3466','login','2026-03-05','22:44:35'),(274,'dft','dft56@gmail.com','Asdet@#$df3466','login','2026-03-06','06:42:28'),(275,'dft','dft56@gmail.com','Asdet@#$df3466','login','2026-03-06','07:03:24'),(276,'dft','dft56@gmail.com','Asdet@#$df3466','login','2026-03-06','07:25:23'),(277,'dft','dft56@gmail.com','Asdet@#$df3466','login','2026-03-06','07:46:42'),(278,'dft','dft56@gmail.com','Asdet@#$df3466','login','2026-03-06','08:03:26'),(279,'dft','dft56@gmail.com','Asdet@#$df3466','login','2026-03-06','10:02:14'),(280,'dft','dft56@gmail.com','Asdet@#$df3466','login','2026-03-06','10:55:10'),(281,'dft','dft56@gmail.com','Asdet@#$df3466','login','2026-03-06','10:58:09'),(282,'dft','dft56@gmail.com','Asdet@#$df3466','login','2026-03-06','11:07:27'),(283,'dft','dft56@gmail.com','Asdet@#$df3466','login','2026-03-06','11:14:03'),(284,'dft','dft56@gmail.com','Asdet@#$df3466','login','2026-03-06','11:36:37'),(285,'dft','dft56@gmail.com','Asdet@#$df3466','login','2026-03-06','11:41:50'),(286,'dft','dft56@gmail.com','Asdet@#$df3466','login','2026-03-06','21:28:17'),(287,'dft','dft56@gmail.com','Asdet@#$df3466','login','2026-03-06','22:24:28'),(288,'dft','dft56@gmail.com','Asdet@#$df3466','login','2026-03-06','22:53:00'),(289,'dft','dft56@gmail.com','Asdet@#$df3466','login','2026-03-06','23:06:26'),(290,'dft','dft56@gmail.com','Asdet@#$df3466','login','2026-03-06','23:26:54'),(291,'dft','dft56@gmail.com','Asdet@#$df3466','login','2026-03-06','23:37:47'),(292,'dft','dft56@gmail.com','Asdet@#$df3466','login','2026-03-07','07:41:37'),(293,'dft','dft56@gmail.com','Asdet@#$df3466','login','2026-03-07','07:52:46'),(294,'dft','dft56@gmail.com','Asdet@#$df3466','login','2026-03-07','10:20:30'),(295,'dft','dft56@gmail.com','Asdet@#$df3466','login','2026-03-07','12:00:54'),(296,'dft','dft56@gmail.com','Asdet@#$df3466','login','2026-03-07','12:36:10'),(297,'dft','dft56@gmail.com','Asdet@#$df3466','login','2026-03-07','13:09:04'),(298,'dft','dft56@gmail.com','Asdet@#$df3466','login','2026-03-09','15:46:18'),(299,'dft','dft56@gmail.com','Asdet@#$df3466','login','2026-03-09','17:17:24'),(300,'dft','dft56@gmail.com','Asdet@#$df3466','login','2026-03-09','19:01:55'),(301,'dft','dft56@gmail.com','Asdet@#$df3466','login','2026-03-09','19:06:19'),(302,'dft','dft56@gmail.com','Asdet@#$df3466','login','2026-03-24','11:25:04'),(303,'dft','dft56@gmail.com','Asdet@#$df3466','login','2026-03-24','13:46:36'),(304,'dft','dft56@gmail.com','Asdet@#$df3466','login','2026-03-24','14:22:09'),(305,'dft','dft56@gmail.com','Asdet@#$df3466','login','2026-03-24','14:48:20'),(306,'dft','dft56@gmail.com','Asdet@#$df3466','login','2026-03-24','14:53:28'),(307,'dft','dft56@gmail.com','Asdet@#$df3466','login','2026-03-24','15:03:21'),(308,'dft','dft56@gmail.com','Asdet@#$df3466','login','2026-03-24','16:03:43'),(309,'dft','dft56@gmail.com','Asdet@#$df3466','login','2026-03-24','16:23:06'),(310,'dft','dft56@gmail.com','Asdet@#$df3466','login','2026-03-24','16:48:25'),(311,'dft','dft56@gmail.com','Asdet@#$df3466','login','2026-03-24','16:52:23'),(312,'dft','dft56@gmail.com','Asdet@#$df3466','login','2026-03-24','17:26:17'),(313,'dft','dft56@gmail.com','Asdet@#$df3466','login','2026-03-24','17:53:12'),(314,'dft','dft56@gmail.com','Asdet@#$df3466','login','2026-03-25','07:25:26'),(315,'dft','dft56@gmail.com','Asdet@#$df3466','login','2026-03-25','08:02:23'),(316,'dft','dft56@gmail.com','Asdet@#$df3466','login','2026-03-25','08:19:09'),(317,'dft','dft56@gmail.com','Asdet@#$df3466','login','2026-03-25','08:26:08'),(318,'dft','dft56@gmail.com','Asdet@#$df3466','login','2026-03-25','08:27:51'),(319,'dft','dft56@gmail.com','Asdet@#$df3466','login','2026-03-25','08:29:11'),(320,'dft','dft56@gmail.com','Asdet@#$df3466','login','2026-03-25','08:33:41'),(321,'dft','dft56@gmail.com','Asdet@#$df3466','login','2026-03-25','08:37:59'),(322,'dft','dft56@gmail.com','Asdet@#$df3466','login','2026-03-25','09:01:06'),(323,'dft','dft56@gmail.com','Asdet@#$df3466','login','2026-03-25','09:12:04'),(324,'dft','dft56@gmail.com','Asdet@#$df3466','login','2026-03-27','06:41:27'),(325,'dft','dft56@gmail.com','Asdet@#$df3466','login','2026-03-27','06:45:38'),(326,'dft','dft56@gmail.com','Asdet@#$df3466','login','2026-03-27','06:46:39'),(327,'dft','dft56@gmail.com','Asdet@#$df3466','login','2026-03-27','06:50:35'),(328,'dft','dft56@gmail.com','Asdet@#$df3466','login','2026-03-27','07:02:16'),(329,'sakshi','ankitabandal45@gmail.com','Pq!9@#Lm$','login','2026-03-27','07:06:42'),(330,'dft','dft56@gmail.com','Asdet@#$df3466','login','2026-03-27','07:17:17'),(331,'dft','dft56@gmail.com','Asdet@#$df3466','login','2026-03-27','14:12:12'),(332,'dft','dft56@gmail.com','Asdet@#$df3466','login','2026-03-27','14:43:38'),(333,'dft','dft56@gmail.com','Asdet@#$df3466','login','2026-03-27','14:47:08'),(334,'dft','dft56@gmail.com','Asdet@#$df3466','login','2026-03-27','14:49:40'),(335,'dft','dft56@gmail.com','Asdet@#$df3466','login','2026-03-27','14:50:52'),(336,'dft','dft56@gmail.com','Asdet@#$df3466','login','2026-03-27','15:34:16'),(337,'dft','dft56@gmail.com','Asdet@#$df3466','login','2026-03-27','15:42:31'),(338,'dft','dft56@gmail.com','Asdet@#$df3466','login','2026-03-27','15:54:48'),(339,'dft','dft56@gmail.com','Asdet@#$df3466','login','2026-03-27','16:21:17'),(340,'dft','dft56@gmail.com','Asdet@#$df3466','login','2026-03-27','16:55:40'),(341,'dft','dft56@gmail.com','Asdet@#$df3466','login','2026-03-27','17:26:08'),(342,'dft','dft56@gmail.com','Asdet@#$df3466','login','2026-03-27','17:36:46'),(343,'dft','dft56@gmail.com','Asdet@#$df3466','login','2026-03-27','17:46:44'),(344,'dft','dft56@gmail.com','Asdet@#$df3466','login','2026-03-27','22:05:43'),(345,'water','water2@gmail.com','Aab@#$346','login','2026-03-27','22:34:12'),(346,'dft','dft56@gmail.com','Asdet@#$df3466','login','2026-03-28','07:19:36'),(347,'dft','dft56@gmail.com','Asdet@#$df3466','login','2026-03-28','08:01:30'),(348,'payal','payal3@gmail.com','Aas23876*&^','login','2026-03-28','08:05:48'),(349,'dft','dft56@gmail.com','Asdet@#$df3466','login','2026-03-28','08:59:51'),(350,'dft','dft56@gmail.com','Asdet@#$df3466','login','2026-03-28','09:58:38'),(351,'a','a2@gmail.com','A23@##efAS','login','2026-03-28','10:03:55'),(352,'dft','dft56@gmail.com','Asdet@#$df3466','login','2026-03-28','10:09:07'),(353,'a','a2@gmail.com','A23@##efAS','login','2026-03-28','10:52:15'),(354,'dft','dft56@gmail.com','Asdet@#$df3466','login','2026-03-28','11:03:45'),(355,'dft','dft56@gmail.com','Asdet@#$df3466','login','2026-03-28','11:23:52'),(356,'dft','dft56@gmail.com','Asdet@#$df3466','login','2026-03-28','11:32:24'),(357,'dft','dft56@gmail.com','Asdet@#$df3466','login','2026-03-28','11:42:06'),(358,'dft','dft56@gmail.com','Asdet@#$df3466','login','2026-03-28','11:44:09'),(359,'dft','dft56@gmail.com','Asdet@#$df3466','login','2026-03-28','14:05:21'),(360,'close','close2@gmail.com','Aas!@#45cvg','login','2026-03-28','14:20:27'),(361,'dft','dft56@gmail.com','Asdet@#$df3466','login','2026-03-28','15:29:24'),(362,'dft','dft56@gmail.com','Asdet@#$df3466','login','2026-03-28','19:18:03'),(363,'dft','dft56@gmail.com','Asdet@#$df3466','login','2026-03-29','07:22:11'),(364,'dft','dft56@gmail.com','Asdet@#$df3466','login','2026-03-29','07:28:56'),(365,'dft','dft56@gmail.com','Asdet@#$df3466','login','2026-03-29','09:06:57'),(366,'dft','dft56@gmail.com','Asdet@#$df3466','login','2026-03-29','09:42:31'),(367,'dft','dft56@gmail.com','Asdet@#$df3466','login','2026-03-29','09:50:29'),(368,'dft','dft56@gmail.com','Asdet@#$df3466','login','2026-03-29','10:18:03'),(369,'dft','dft56@gmail.com','Asdet@#$df3466','login','2026-03-29','10:26:35'),(370,'dft','dft56@gmail.com','Asdet@#$df3466','login','2026-03-29','10:45:48'),(371,'dft','dft56@gmail.com','Asdet@#$df3466','login','2026-03-29','10:54:42'),(372,'dft','dft56@gmail.com','Asdet@#$df3466','login','2026-03-29','11:07:49'),(373,'dft','dft56@gmail.com','Asdet@#$df3466','login','2026-03-29','11:32:31'),(374,'dft','dft56@gmail.com','Asdet@#$df3466','login','2026-03-29','13:51:33'),(375,'dft','dft56@gmail.com','Asdet@#$df3466','login','2026-03-29','14:18:47'),(376,'dft','dft56@gmail.com','Asdet@#$df3466','login','2026-04-08','07:22:57'),(377,'dft','dft56@gmail.com','Asdet@#$df3466','login','2026-04-08','07:32:54'),(378,'dft','dft56@gmail.com','Asdet@#$df3466','login','2026-04-08','08:39:13'),(379,'dft','dft56@gmail.com','Asdet@#$df3466','login','2026-04-08','13:50:32'),(380,'dft','dft56@gmail.com','Asdet@#$df3466','login','2026-05-04','21:17:12'),(381,'dft','dft56@gmail.com','Asdet@#$df3466','login','2026-05-04','21:30:37'),(382,'dft','dft56@gmail.com','Asdet@#$df3466','login','2026-05-04','21:44:12'),(383,'dft','dft56@gmail.com','Asdet@#$df3466','login','2026-05-04','21:46:43'),(384,'we2','we234@gmail.com','ASD@#$34jhcrv@#$','login','2026-05-04','21:57:31'),(385,'dft','dft56@gmail.com','Asdet@#$df3466','login','2026-05-05','18:01:06'),(386,'dft','dft56@gmail.com','Asdet@#$df3466','login','2026-05-05','19:23:43');
/*!40000 ALTER TABLE `user_activity` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `trg_after_user_activity` AFTER INSERT ON `user_activity` FOR EACH ROW BEGIN
    
    IF NEW.action_date = CURDATE() THEN
        INSERT IGNORE INTO support_sd (id, username, email)
        VALUES (NEW.id, NEW.username, NEW.email);
    END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `user_template`
--

DROP TABLE IF EXISTS `user_template`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_template` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `product_id` int DEFAULT NULL,
  `category` varchar(50) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `video` varchar(255) DEFAULT NULL,
  `availability` int DEFAULT NULL,
  `detail` text,
  `uploaded_at` datetime DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `total` decimal(10,2) DEFAULT NULL,
  `mode` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_template`
--

LOCK TABLES `user_template` WRITE;
/*!40000 ALTER TABLE `user_template` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_template` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vc_product_availability`
--

DROP TABLE IF EXISTS `vc_product_availability`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vc_product_availability` (
  `id` int NOT NULL AUTO_INCREMENT,
  `availability` int DEFAULT '0',
  `sub_from_vc` int DEFAULT '0',
  `remain` int DEFAULT '0',
  `product_id` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vc_product_availability`
--

LOCK TABLES `vc_product_availability` WRITE;
/*!40000 ALTER TABLE `vc_product_availability` DISABLE KEYS */;
/*!40000 ALTER TABLE `vc_product_availability` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `water_47`
--

DROP TABLE IF EXISTS `water_47`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `water_47` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `product_id` int DEFAULT NULL,
  `row_no` varchar(20) DEFAULT NULL,
  `category` varchar(50) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `video` varchar(255) DEFAULT NULL,
  `availability` int DEFAULT NULL,
  `detail` text,
  `uploaded_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `address` varchar(255) DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `total` decimal(10,2) DEFAULT NULL,
  `mode` varchar(20) DEFAULT NULL,
  `sub_vc` int DEFAULT '0',
  `sub_vc_item` int DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `water_47`
--

LOCK TABLES `water_47` WRITE;
/*!40000 ALTER TABLE `water_47` DISABLE KEYS */;
INSERT INTO `water_47` VALUES (1,47,NULL,NULL,'food_items','b',34.00,'/static/products/kettle.jpg','/static/products/a.mp4',2,'5','2026-01-16 16:51:12','5',0,'2026-01-16 16:51:12',NULL,NULL,1,0),(2,47,NULL,NULL,'food_items','b',34.00,'/static/products/kettle.jpg','/static/products/a.mp4',2,'5','2026-01-16 16:51:12','5',0,'2026-01-16 16:51:12',NULL,NULL,1,0),(3,47,NULL,NULL,'food_items','e',56.00,'/static/products/Screenshot_2026-01-02_174133.png','',6,'ww','2026-01-16 16:51:12','w',0,'2026-01-16 16:51:12',NULL,NULL,0,-1),(4,47,4,'row_1','study_material','Data Structures Book',799.00,'/static/products/book_ds.jpeg','',2,'Paperback, High quality paper','2026-01-05 14:51:34','Delhi, India',0,'2026-01-23 13:08:26',1598.00,NULL,2,0),(5,47,3,NULL,'card','Electric Kettle',1899.00,'https://via.placeholder.com/150?text=Electric+Kettle','',4,'Stainless steel body, Heat-resistant plastic handle','2026-01-05 13:53:14','Mumbai, Maharashtra, India',0,'2026-01-23 13:16:55',1899.00,NULL,0,-1),(6,47,8,NULL,'card','gndbjh',122.00,'/static/products/Screenshot_2026-01-02_174133.png','',9,'8','2026-01-06 00:00:00','222',0,'2026-01-23 13:34:30',244.00,NULL,2,0),(7,47,1,'row_2','food_items','b',34.00,'/static/products/kettle.jpg','/static/products/a.mp4',9,'5','2026-01-06 00:00:00','5',0,'2026-01-24 09:20:04',68.00,NULL,0,-1),(8,47,8,'row_3','card','gndbjh',122.00,'/static/products/Screenshot_2026-01-02_174133.png','',5,'8','2026-01-06 00:00:00','222',0,'2026-01-25 09:28:01',244.00,NULL,0,-2),(9,47,1,NULL,'study_material','Physics Textbook – Class 12',499.00,'/static/products/static/products/physics_book.jpg','/static/products/static/products/physics_intro.mp4',9,'Paperback, Recycled paper','2026-01-05 14:16:38','Delhi, India',0,'2026-01-25 09:29:04',1497.00,NULL,0,-4),(10,47,3,'row_4','card','Electric Kettle',1899.00,'https://via.placeholder.com/150?text=Electric+Kettle','',7,'Stainless steel body, Heat-resistant plastic handle','2026-01-05 13:53:14','Mumbai, Maharashtra, India',0,'2026-02-07 09:31:00',3798.00,NULL,0,-2),(11,47,3,NULL,'card','Electric Kettle',1899.00,'https://via.placeholder.com/150?text=Electric+Kettle','',5,'Stainless steel body, Heat-resistant plastic handle','2026-01-05 13:53:14','Mumbai, Maharashtra, India',0,'2026-02-07 09:33:39',3798.00,NULL,0,-2),(12,47,7,NULL,'card','a',335.00,'/static/products/Screenshot_2026-01-02_174133.png','/static/products/mp4',9,'qq','2026-01-06 00:00:00','q',4,'2026-02-07 12:12:19',1340.00,NULL,0,0),(13,47,1,NULL,'card','Mixer Grinder',2999.00,'https://via.placeholder.com/150?text=Mixer+Grinder','/static/products/static/products/mixer_demo.mp4',2,'Stainless Steel body, Copper motor','2026-01-05 13:38:29','Pune, Maharashtra, India',0,'2026-02-07 12:35:54',8997.00,NULL,0,-3),(14,47,1,NULL,'card','Mixer Grinder',2999.00,'https://via.placeholder.com/150?text=Mixer+Grinder','/static/products/static/products/mixer_demo.mp4',95,'Stainless Steel body, Copper motor','2026-01-05 13:38:29','Pune, Maharashtra, India',0,'2026-02-07 12:45:00',29990.00,NULL,0,-10),(15,47,1,NULL,'card','Mixer Grinder',2999.00,'https://via.placeholder.com/150?text=Mixer+Grinder','/static/products/static/products/mixer_demo.mp4',85,'Stainless Steel body, Copper motor','2026-01-05 13:38:29','Pune, Maharashtra, India',3,'2026-02-07 12:46:04',8997.00,NULL,0,0),(16,47,1,NULL,'card','Mixer Grinder',2999.00,'https://via.placeholder.com/150?text=Mixer+Grinder','/static/products/static/products/mixer_demo.mp4',98,'Stainless Steel body, Copper motor','2026-01-05 13:38:29','Pune, Maharashtra, India',3,'2026-02-07 12:53:49',8997.00,NULL,0,0);
/*!40000 ALTER TABLE `water_47` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `water_47_product_activity`
--

DROP TABLE IF EXISTS `water_47_product_activity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `water_47_product_activity` (
  `id` int NOT NULL AUTO_INCREMENT,
  `product_id` int DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `category` varchar(100) DEFAULT NULL,
  `today_search_count` int DEFAULT '0',
  `search_time` time DEFAULT NULL,
  `today_add_to_cart_count` int DEFAULT '0',
  `add_to_cart_time` time DEFAULT NULL,
  `today_purchase_count` int DEFAULT '0',
  `purchased_time` time DEFAULT NULL,
  `month` varchar(20) DEFAULT NULL,
  `growth` float DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `water_47_product_activity`
--

LOCK TABLES `water_47_product_activity` WRITE;
/*!40000 ALTER TABLE `water_47_product_activity` DISABLE KEYS */;
/*!40000 ALTER TABLE `water_47_product_activity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `we2_57`
--

DROP TABLE IF EXISTS `we2_57`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `we2_57` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `product_id` int DEFAULT NULL,
  `row_no` varchar(20) DEFAULT NULL,
  `category` varchar(50) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `video` varchar(255) DEFAULT NULL,
  `availability` int DEFAULT NULL,
  `detail` text,
  `uploaded_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `address` varchar(255) DEFAULT NULL,
  `quantity` int DEFAULT '1',
  `date` datetime DEFAULT CURRENT_TIMESTAMP,
  `total` decimal(10,2) DEFAULT NULL,
  `mode` varchar(20) DEFAULT NULL,
  `sub_vc_item` int DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `we2_57`
--

LOCK TABLES `we2_57` WRITE;
/*!40000 ALTER TABLE `we2_57` DISABLE KEYS */;
INSERT INTO `we2_57` VALUES (1,57,1,'row_1','card','Mixer Grinder',2999.00,'https://via.placeholder.com/150?text=Mixer+Grinder','/static/products/static/products/mixer_demo.mp4',5237,'Stainless Steel body, Copper motor','2026-01-05 13:38:29','Pune, Maharashtra, India',1,'2026-05-04 21:57:46',2999.00,NULL,0),(2,57,1,NULL,'card','Mixer Grinder',2999.00,'https://via.placeholder.com/150?text=Mixer+Grinder','/static/products/static/products/mixer_demo.mp4',5236,'Stainless Steel body, Copper motor','2026-01-05 13:38:29','Pune, Maharashtra, India',2,'2026-05-04 21:59:56',5998.00,NULL,0),(3,57,9,NULL,'study_material','w',3.00,'/static/products/book_ds.jpeg','',4132,'q','2026-01-06 00:00:00','q',1,'2026-05-04 22:13:05',3.00,NULL,0);
/*!40000 ALTER TABLE `we2_57` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `we2_57_product_activity`
--

DROP TABLE IF EXISTS `we2_57_product_activity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `we2_57_product_activity` (
  `id` int NOT NULL AUTO_INCREMENT,
  `product_id` int DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `category` varchar(100) DEFAULT NULL,
  `today_search_count` int DEFAULT '0',
  `search_time` time DEFAULT NULL,
  `today_add_to_cart_count` int DEFAULT '0',
  `add_to_cart_time` time DEFAULT NULL,
  `today_purchase_count` int DEFAULT '0',
  `purchased_time` time DEFAULT NULL,
  `month` varchar(20) DEFAULT NULL,
  `growth` float DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `we2_57_product_activity`
--

LOCK TABLES `we2_57_product_activity` WRITE;
/*!40000 ALTER TABLE `we2_57_product_activity` DISABLE KEYS */;
/*!40000 ALTER TABLE `we2_57_product_activity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `x_27`
--

DROP TABLE IF EXISTS `x_27`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `x_27` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `row_no` varchar(20) DEFAULT NULL,
  `category` varchar(50) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `video` varchar(255) DEFAULT NULL,
  `availability` int DEFAULT NULL,
  `detail` text,
  `uploaded_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `address` varchar(255) DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `total` decimal(10,2) DEFAULT NULL,
  `mode` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `x_27`
--

LOCK TABLES `x_27` WRITE;
/*!40000 ALTER TABLE `x_27` DISABLE KEYS */;
/*!40000 ALTER TABLE `x_27` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yourusername_1_product_activity`
--

DROP TABLE IF EXISTS `yourusername_1_product_activity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `yourusername_1_product_activity` (
  `id` int NOT NULL AUTO_INCREMENT,
  `product_id` int DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `category` varchar(50) DEFAULT NULL,
  `today_search_count` int DEFAULT '0',
  `search_time` datetime DEFAULT NULL,
  `growth_on_search` varchar(20) DEFAULT NULL,
  `today_add_to_cart_count` int DEFAULT '0',
  `add_to_cart_time` datetime DEFAULT NULL,
  `growth_in_addtocart` varchar(20) DEFAULT NULL,
  `month` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yourusername_1_product_activity`
--

LOCK TABLES `yourusername_1_product_activity` WRITE;
/*!40000 ALTER TABLE `yourusername_1_product_activity` DISABLE KEYS */;
/*!40000 ALTER TABLE `yourusername_1_product_activity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `product_availability_view`
--

/*!50001 DROP VIEW IF EXISTS `product_availability_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `product_availability_view` AS select `pa`.`id` AS `id`,`pa`.`product_id` AS `product_id`,`pa`.`category` AS `category`,`pa`.`dash_item_name` AS `dash_item_name`,`pa`.`actual_availability` AS `actual_availability`,`pa`.`add_vc` AS `add_vc`,`pa`.`sub_vc` AS `sub_vc`,ifnull(sum(`sd`.`quantity`),0) AS `removed`,(`pa`.`actual_availability` - ifnull(sum(`sd`.`quantity`),0)) AS `remain_in_dash` from (`product_availability` `pa` left join `store_data` `sd` on(((`sd`.`product_id` = `pa`.`product_id`) and (`sd`.`category` = `pa`.`category`)))) group by `pa`.`id`,`pa`.`product_id`,`pa`.`category`,`pa`.`dash_item_name`,`pa`.`actual_availability`,`pa`.`add_vc`,`pa`.`sub_vc` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `product_search_table`
--

/*!50001 DROP VIEW IF EXISTS `product_search_table`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `product_search_table` AS select `card`.`id` AS `product_id`,`card`.`name` AS `name`,`card`.`category` AS `category` from `card` union all select `study_material`.`id` AS `product_id`,`study_material`.`name` AS `name`,`study_material`.`category` AS `category` from `study_material` union all select `food_items`.`id` AS `product_id`,`food_items`.`name` AS `name`,`food_items`.`category` AS `category` from `food_items` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-05-10 14:50:07
