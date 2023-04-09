-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: localhost    Database: notes_db
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.27-MariaDB

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
-- Table structure for table `notes`
--
CREATE DATABASE IF NOT EXISTS notes_db;
USE notes_db;

DROP TABLE IF EXISTS `notes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `notes` (
  `notesID` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `createDate` date NOT NULL,
  `updateDate` date NOT NULL,
  `description` varchar(400) NOT NULL,
  `canDelete` tinyint(1) NOT NULL,
  `categoryID` int(11) NOT NULL,
  `userID` int(11) NOT NULL,
  PRIMARY KEY (`notesID`),
  KEY `notes_FK` (`categoryID`),
  KEY `notes_FK_1` (`userID`),
  CONSTRAINT `notes_FK` FOREIGN KEY (`categoryID`) REFERENCES `notes_categories` (`categoryID`),
  CONSTRAINT `notes_FK_1` FOREIGN KEY (`userID`) REFERENCES `users` (`userID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notes`
--

LOCK TABLES `notes` WRITE;
/*!40000 ALTER TABLE `notes` DISABLE KEYS */;
/*!40000 ALTER TABLE `notes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notes_categories`
--

DROP TABLE IF EXISTS `notes_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `notes_categories` (
  `categoryID` int(11) NOT NULL AUTO_INCREMENT,
  `notesID` int(11) NOT NULL,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updatedAt` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`categoryID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notes_categories`
--

LOCK TABLES `notes_categories` WRITE;
/*!40000 ALTER TABLE `notes_categories` DISABLE KEYS */;
/*!40000 ALTER TABLE `notes_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `userID` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  PRIMARY KEY (`userID`),
  UNIQUE KEY `users_un` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'notes_db'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-04-09  2:01:50


INSERT INTO notes (notesID, title, createDate, updateDate, description, canDelete, categoryID, userID) VALUES (1, 'Dr', '2023-04-09', '2023-04-09', 'dis parturient montes nascetur ridiculus mus vivamus vestibulum sagittis sapien cum sociis natoque penatibus et magnis dis', true, 63, 31);
INSERT INTO notes (notesID, title, createDate, updateDate, description, canDelete, categoryID, userID) VALUES (2, 'Ms', '2023-04-09', '2023-04-09', 'quis lectus suspendisse potenti in eleifend quam a odio in hac habitasse platea dictumst maecenas ut massa quis augue', true, 28, 25);
insert into notes (notesID, title, createDate, updateDate, description, canDelete, categoryID, userID) values (3, 'Dr', '7:41 PM', '7:49 AM', 'tempus vel pede morbi porttitor lorem id ligula suspendisse ornare consequat lectus in', true, 14, 29);
insert into notes (notesID, title, createDate, updateDate, description, canDelete, categoryID, userID) values (4, 'Rev', '1:44 PM', '3:43 PM', 'tincidunt eu felis fusce posuere felis sed lacus morbi sem mauris laoreet ut rhoncus aliquet pulvinar sed nisl nunc rhoncus', false, 19, 84);
insert into notes (notesID, title, createDate, updateDate, description, canDelete, categoryID, userID) values (5, 'Mr', '9:13 AM', '9:00 AM', 'justo pellentesque viverra pede ac diam cras pellentesque volutpat dui maecenas tristique est et tempus semper est quam pharetra', false, 27, 76);
insert into notes (notesID, title, createDate, updateDate, description, canDelete, categoryID, userID) values (6, 'Honorable', '1:45 PM', '8:14 PM', 'sodales scelerisque mauris sit amet eros suspendisse accumsan tortor quis turpis', true, 76, 6);
insert into notes (notesID, title, createDate, updateDate, description, canDelete, categoryID, userID) values (7, 'Ms', '11:47 PM', '12:10 AM', 'mus etiam vel augue vestibulum rutrum rutrum neque aenean auctor gravida sem', true, 18, 38);
insert into notes (notesID, title, createDate, updateDate, description, canDelete, categoryID, userID) values (8, 'Ms', '9:09 PM', '5:06 AM', 'diam in magna bibendum imperdiet nullam orci pede venenatis non sodales sed tincidunt eu', false, 16, 63);
insert into notes (notesID, title, createDate, updateDate, description, canDelete, categoryID, userID) values (9, 'Honorable', '10:19 AM', '3:56 PM', 'rhoncus sed vestibulum sit amet cursus id turpis integer aliquet massa id', false, 99, 75);
insert into notes (notesID, title, createDate, updateDate, description, canDelete, categoryID, userID) values (10, 'Mrs', '5:43 PM', '8:32 PM', 'neque libero convallis eget eleifend luctus ultricies eu nibh quisque id justo sit amet sapien dignissim vestibulum vestibulum ante', false, 15, 21);

insert into users (userID, username, email) values (1, 'Freida', 'ftregunna0@weebly.com');
insert into users (userID, username, email) values (2, 'Horatio', 'hcassells1@comcast.net');
insert into users (userID, username, email) values (3, 'Ermina', 'echetwind2@ibm.com');
insert into users (userID, username, email) values (4, 'Ara', 'apidgeley3@rediff.com');
insert into users (userID, username, email) values (5, 'Fallon', 'fessex4@digg.com');
insert into users (userID, username, email) values (6, 'Moria', 'mgauson5@vistaprint.com');
insert into users (userID, username, email) values (7, 'Rosmunda', 'rkehri6@omniture.com');
insert into users (userID, username, email) values (8, 'Livvyy', 'lspratt7@china.com.cn');
insert into users (userID, username, email) values (9, 'Liza', 'lorrock8@godaddy.com');
insert into users (userID, username, email) values (10, 'Hertha', 'hburnall9@webmd.com');

insert into notes_categories (categoryID, notesID, createdAt, updatedAt) values (1, 1, '1:19 PM', '4:06 AM');
insert into notes_categories (categoryID, notesID, createdAt, updatedAt) values (2, 2, '2:02 PM', '9:40 AM');
insert into notes_categories (categoryID, notesID, createdAt, updatedAt) values (3, 3, '10:10 PM', '6:14 AM');
insert into notes_categories (categoryID, notesID, createdAt, updatedAt) values (4, 4, '5:29 AM', '5:21 PM');
insert into notes_categories (categoryID, notesID, createdAt, updatedAt) values (5, 5, '3:53 PM', '12:35 AM');
insert into notes_categories (categoryID, notesID, createdAt, updatedAt) values (6, 6, '11:00 PM', '9:29 AM');
insert into notes_categories (categoryID, notesID, createdAt, updatedAt) values (7, 7, '6:56 PM', '8:16 AM');
insert into notes_categories (categoryID, notesID, createdAt, updatedAt) values (8, 8, '10:10 PM', '3:59 AM');
insert into notes_categories (categoryID, notesID, createdAt, updatedAt) values (9, 9, '7:42 PM', '5:20 AM');
insert into notes_categories (categoryID, notesID, createdAt, updatedAt) values (10, 10, '5:27 PM', '4:54 AM');