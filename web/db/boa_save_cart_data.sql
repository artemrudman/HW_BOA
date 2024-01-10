CREATE DATABASE  IF NOT EXISTS `boa` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `boa`;
-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: boa
-- ------------------------------------------------------
-- Server version	8.0.33

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
-- Table structure for table `save_cart_data`
--

DROP TABLE IF EXISTS `save_cart_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `save_cart_data` (
  `user_id` varchar(100) DEFAULT NULL,
  `save_cart_data_json` json DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `save_cart_data`
--

LOCK TABLES `save_cart_data` WRITE;
/*!40000 ALTER TABLE `save_cart_data` DISABLE KEYS */;
INSERT INTO `save_cart_data` VALUES ('a7e948e5ee197c0cd4db7910f4e67275','{\"0\": {\"id\": \"gid://shopify/CartLine/6ac50f80173d9f2eb05f72199ad9e6e2\", \"cost\": {\"totalAmount\": {\"amount\": 885.95, \"currencyCode\": \"ILS\"}}, \"quantity\": 1, \"attributes\": [], \"isCheckbox\": false, \"merchandise\": {\"id\": \"gid://shopify/ProductVariant/42752628195512\", \"type\": \"variant\", \"image\": {\"url\": \"https://cdn.shopify.com/s/files/1/0643/1034/5912/files/Main_256x256.jpg?v=1704702378\", \"altText\": \"The top and bottom view of a snowboard. The top has view is turquoise and black with graphics of\\n        trees. The bottom view is turquoise with the word hydrogen written in cursive.\"}, \"title\": \"The Videographer Snowboard\", \"product\": {\"id\": \"gid://shopify/Product/7408362684600\", \"vendor\": \"Home Assignment 17\", \"productType\": \"\"}, \"selectedOptions\": [{\"name\": \"Title\", \"value\": \"Default Title\"}], \"requiresShipping\": true}, \"lineComponents\": [], \"discountAllocations\": []}, \"1\": {\"id\": \"gid://shopify/CartLine/535d1813a4618dd884aec081c250732f\", \"cost\": {\"totalAmount\": {\"amount\": 699.95, \"currencyCode\": \"ILS\"}}, \"quantity\": 1, \"attributes\": [], \"isCheckbox\": false, \"merchandise\": {\"id\": \"gid://shopify/ProductVariant/42752628261048\", \"type\": \"variant\", \"image\": {\"url\": \"https://cdn.shopify.com/s/files/1/0643/1034/5912/products/Main_589fc064-24a2-4236-9eaf-13b2bd35d21d_256x256.jpg?v=1704702378\", \"altText\": \"Top and bottom view of a snowboard. The top view shows abstract circles and lines in shades of teal.\\n          The bottom view shows abstract circles and lines in shades of purple and blue with the text “SHOPIFY” in a\\n          sans serif typeface on top.\"}, \"title\": \"The Complete Snowboard\", \"product\": {\"id\": \"gid://shopify/Product/7408362750136\", \"vendor\": \"Snowboard Vendor\", \"productType\": \"snowboard\"}, \"subtitle\": \"Ice\", \"selectedOptions\": [{\"name\": \"Color\", \"value\": \"Ice\"}], \"requiresShipping\": true}, \"lineComponents\": [], \"discountAllocations\": []}}'),('a7e948e5ee197c0cd4db7910f4e67275','{\"0\": {\"id\": \"gid://shopify/CartLine/6ac50f80173d9f2eb05f72199ad9e6e2\", \"cost\": {\"totalAmount\": {\"amount\": 885.95, \"currencyCode\": \"ILS\"}}, \"quantity\": 1, \"attributes\": [], \"isCheckbox\": true, \"merchandise\": {\"id\": \"gid://shopify/ProductVariant/42752628195512\", \"type\": \"variant\", \"image\": {\"url\": \"https://cdn.shopify.com/s/files/1/0643/1034/5912/files/Main_256x256.jpg?v=1704702378\", \"altText\": \"The top and bottom view of a snowboard. The top has view is turquoise and black with graphics of\\n        trees. The bottom view is turquoise with the word hydrogen written in cursive.\"}, \"title\": \"The Videographer Snowboard\", \"product\": {\"id\": \"gid://shopify/Product/7408362684600\", \"vendor\": \"Home Assignment 17\", \"productType\": \"\"}, \"selectedOptions\": [{\"name\": \"Title\", \"value\": \"Default Title\"}], \"requiresShipping\": true}, \"lineComponents\": [], \"discountAllocations\": []}, \"1\": {\"id\": \"gid://shopify/CartLine/535d1813a4618dd884aec081c250732f\", \"cost\": {\"totalAmount\": {\"amount\": 699.95, \"currencyCode\": \"ILS\"}}, \"quantity\": 1, \"attributes\": [], \"isCheckbox\": false, \"merchandise\": {\"id\": \"gid://shopify/ProductVariant/42752628261048\", \"type\": \"variant\", \"image\": {\"url\": \"https://cdn.shopify.com/s/files/1/0643/1034/5912/products/Main_589fc064-24a2-4236-9eaf-13b2bd35d21d_256x256.jpg?v=1704702378\", \"altText\": \"Top and bottom view of a snowboard. The top view shows abstract circles and lines in shades of teal.\\n          The bottom view shows abstract circles and lines in shades of purple and blue with the text “SHOPIFY” in a\\n          sans serif typeface on top.\"}, \"title\": \"The Complete Snowboard\", \"product\": {\"id\": \"gid://shopify/Product/7408362750136\", \"vendor\": \"Snowboard Vendor\", \"productType\": \"snowboard\"}, \"subtitle\": \"Ice\", \"selectedOptions\": [{\"name\": \"Color\", \"value\": \"Ice\"}], \"requiresShipping\": true}, \"lineComponents\": [], \"discountAllocations\": []}}');
/*!40000 ALTER TABLE `save_cart_data` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-01-10 11:42:13
