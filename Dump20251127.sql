CREATE DATABASE  IF NOT EXISTS `koolid` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `koolid`;
-- MySQL dump 10.13  Distrib 8.0.44, for Win64 (x86_64)
--
-- Host: localhost    Database: koolid
-- ------------------------------------------------------
-- Server version	8.0.44

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
-- Table structure for table `esindaja`
--

DROP TABLE IF EXISTS `esindaja`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `esindaja` (
  `esindaja_id` int NOT NULL AUTO_INCREMENT COMMENT 'Esindaja ID',
  `õpilane_id` int NOT NULL COMMENT 'Seos õpilasega',
  `nimi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Esindaja nimi',
  `telefon` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Telefon',
  `meil` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Email',
  PRIMARY KEY (`esindaja_id`),
  KEY `õpilane_id` (`õpilane_id`),
  CONSTRAINT `esindaja_ibfk_1` FOREIGN KEY (`õpilane_id`) REFERENCES `õpilane` (`õpilane_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Lapsevanemad ja eestkostjad';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `esindaja`
--

LOCK TABLES `esindaja` WRITE;
/*!40000 ALTER TABLE `esindaja` DISABLE KEYS */;
/*!40000 ALTER TABLE `esindaja` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hinne`
--

DROP TABLE IF EXISTS `hinne`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hinne` (
  `hinne_id` int NOT NULL AUTO_INCREMENT COMMENT 'Hinde ID',
  `tund_id` int NOT NULL COMMENT 'Tund',
  `õpilane_id` int NOT NULL COMMENT 'Õpilane',
  `väärtus` tinyint NOT NULL COMMENT 'Hinne 1–5',
  `kuupäev` datetime DEFAULT CURRENT_TIMESTAMP COMMENT 'Lisamise aeg',
  PRIMARY KEY (`hinne_id`),
  KEY `tund_id` (`tund_id`),
  KEY `õpilane_id` (`õpilane_id`),
  CONSTRAINT `hinne_ibfk_1` FOREIGN KEY (`tund_id`) REFERENCES `tund` (`tund_id`),
  CONSTRAINT `hinne_ibfk_2` FOREIGN KEY (`õpilane_id`) REFERENCES `õpilane` (`õpilane_id`),
  CONSTRAINT `chk_hinne_väärtus` CHECK ((`väärtus` between 1 and 5))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Õpilaste hinded';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hinne`
--

LOCK TABLES `hinne` WRITE;
/*!40000 ALTER TABLE `hinne` DISABLE KEYS */;
INSERT INTO `hinne` VALUES (1,1,1,5,'2025-11-27 13:55:33');
/*!40000 ALTER TABLE `hinne` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `klassiruum`
--

DROP TABLE IF EXISTS `klassiruum`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `klassiruum` (
  `klass_id` int NOT NULL AUTO_INCREMENT COMMENT 'Klassiruumi ID',
  `kool_id` int NOT NULL COMMENT 'Kooli ID',
  `nimi` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Ruumi nimetus või number',
  `lisainfo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Lisainfo',
  PRIMARY KEY (`klass_id`),
  KEY `kool_id` (`kool_id`),
  CONSTRAINT `klassiruum_ibfk_1` FOREIGN KEY (`kool_id`) REFERENCES `kool` (`kool_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Klassiruumid';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `klassiruum`
--

LOCK TABLES `klassiruum` WRITE;
/*!40000 ALTER TABLE `klassiruum` DISABLE KEYS */;
INSERT INTO `klassiruum` VALUES (1,1,'A101',NULL);
/*!40000 ALTER TABLE `klassiruum` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kool`
--

DROP TABLE IF EXISTS `kool`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `kool` (
  `kool_id` int NOT NULL AUTO_INCREMENT COMMENT 'Kooli ID',
  `nimi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Kooli nimi',
  `aadress` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Kooli aadress',
  PRIMARY KEY (`kool_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Koolide tabel';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kool`
--

LOCK TABLES `kool` WRITE;
/*!40000 ALTER TABLE `kool` DISABLE KEYS */;
INSERT INTO `kool` VALUES (1,'Tallina Polütehnikum','Pärnu mnt 57');
/*!40000 ALTER TABLE `kool` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `palgaandmed`
--

DROP TABLE IF EXISTS `palgaandmed`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `palgaandmed` (
  `palk_id` int NOT NULL AUTO_INCREMENT COMMENT 'Palga kirje ID',
  `õpetaja_id` int NOT NULL COMMENT 'Õpetaja',
  `kuupäev` date NOT NULL COMMENT 'Palga kuu',
  `summa` decimal(10,2) NOT NULL COMMENT 'Palk',
  PRIMARY KEY (`palk_id`),
  KEY `õpetaja_id` (`õpetaja_id`),
  CONSTRAINT `palgaandmed_ibfk_1` FOREIGN KEY (`õpetaja_id`) REFERENCES `õpetaja` (`õpetaja_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Õpetajate palgaandmed';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `palgaandmed`
--

LOCK TABLES `palgaandmed` WRITE;
/*!40000 ALTER TABLE `palgaandmed` DISABLE KEYS */;
/*!40000 ALTER TABLE `palgaandmed` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rühm`
--

DROP TABLE IF EXISTS `rühm`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rühm` (
  `rühm_id` int NOT NULL AUTO_INCREMENT COMMENT 'Rühma ID',
  `kool_id` int NOT NULL COMMENT 'Viide koolile',
  `nimi` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Rühma nimetus',
  PRIMARY KEY (`rühm_id`),
  KEY `kool_id` (`kool_id`),
  CONSTRAINT `rühm_ibfk_1` FOREIGN KEY (`kool_id`) REFERENCES `kool` (`kool_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Õpperühmad';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rühm`
--

LOCK TABLES `rühm` WRITE;
/*!40000 ALTER TABLE `rühm` DISABLE KEYS */;
INSERT INTO `rühm` VALUES (1,1,'TA-23A');
/*!40000 ALTER TABLE `rühm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rühm_õppeaine`
--

DROP TABLE IF EXISTS `rühm_õppeaine`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rühm_õppeaine` (
  `rühm_id` int NOT NULL,
  `õppeaine_id` int NOT NULL,
  PRIMARY KEY (`rühm_id`,`õppeaine_id`),
  KEY `õppeaine_id` (`õppeaine_id`),
  CONSTRAINT `rühm_õppeaine_ibfk_1` FOREIGN KEY (`rühm_id`) REFERENCES `rühm` (`rühm_id`),
  CONSTRAINT `rühm_õppeaine_ibfk_2` FOREIGN KEY (`õppeaine_id`) REFERENCES `õppeaine` (`õppeaine_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Rühmade õppeained';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rühm_õppeaine`
--

LOCK TABLES `rühm_õppeaine` WRITE;
/*!40000 ALTER TABLE `rühm_õppeaine` DISABLE KEYS */;
INSERT INTO `rühm_õppeaine` VALUES (1,1);
/*!40000 ALTER TABLE `rühm_õppeaine` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tund`
--

DROP TABLE IF EXISTS `tund`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tund` (
  `tund_id` int NOT NULL AUTO_INCREMENT COMMENT 'Tunni ID',
  `rühm_id` int NOT NULL COMMENT 'Rühm',
  `õpetaja_id` int NOT NULL COMMENT 'Õpetaja',
  `õppeaine_id` int NOT NULL COMMENT 'Aine',
  `klass_id` int NOT NULL COMMENT 'Klassiruum',
  `nädalapäev` enum('E','T','K','N','R') COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Nädalapäev',
  `kellaaeg` time NOT NULL COMMENT 'Algusaeg',
  PRIMARY KEY (`tund_id`),
  KEY `rühm_id` (`rühm_id`),
  KEY `õpetaja_id` (`õpetaja_id`),
  KEY `õppeaine_id` (`õppeaine_id`),
  KEY `klass_id` (`klass_id`),
  CONSTRAINT `tund_ibfk_1` FOREIGN KEY (`rühm_id`) REFERENCES `rühm` (`rühm_id`),
  CONSTRAINT `tund_ibfk_2` FOREIGN KEY (`õpetaja_id`) REFERENCES `õpetaja` (`õpetaja_id`),
  CONSTRAINT `tund_ibfk_3` FOREIGN KEY (`õppeaine_id`) REFERENCES `õppeaine` (`õppeaine_id`),
  CONSTRAINT `tund_ibfk_4` FOREIGN KEY (`klass_id`) REFERENCES `klassiruum` (`klass_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Tunniplaan';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tund`
--

LOCK TABLES `tund` WRITE;
/*!40000 ALTER TABLE `tund` DISABLE KEYS */;
INSERT INTO `tund` VALUES (1,1,1,1,1,'E','09:00:00');
/*!40000 ALTER TABLE `tund` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `õpetaja`
--

DROP TABLE IF EXISTS `õpetaja`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `õpetaja` (
  `õpetaja_id` int NOT NULL AUTO_INCREMENT COMMENT 'Õpetaja ID',
  `kool_id` int NOT NULL COMMENT 'Kooli viide',
  `nimi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Õpetaja nimi',
  `eriala` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Õpetaja eriala',
  `telefon` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Telefon',
  `meil` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Meiliaadress',
  PRIMARY KEY (`õpetaja_id`),
  KEY `kool_id` (`kool_id`),
  CONSTRAINT `õpetaja_ibfk_1` FOREIGN KEY (`kool_id`) REFERENCES `kool` (`kool_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Õpetajate tabel';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `õpetaja`
--

LOCK TABLES `õpetaja` WRITE;
/*!40000 ALTER TABLE `õpetaja` DISABLE KEYS */;
INSERT INTO `õpetaja` VALUES (1,1,'Üllar Lindmaa','Andmebaasid',NULL,NULL);
/*!40000 ALTER TABLE `õpetaja` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `õpetaja_õppeaine`
--

DROP TABLE IF EXISTS `õpetaja_õppeaine`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `õpetaja_õppeaine` (
  `õpetaja_id` int NOT NULL COMMENT 'Õpetaja',
  `õppeaine_id` int NOT NULL COMMENT 'Õppeaine',
  PRIMARY KEY (`õpetaja_id`,`õppeaine_id`),
  KEY `õppeaine_id` (`õppeaine_id`),
  CONSTRAINT `õpetaja_õppeaine_ibfk_1` FOREIGN KEY (`õpetaja_id`) REFERENCES `õpetaja` (`õpetaja_id`),
  CONSTRAINT `õpetaja_õppeaine_ibfk_2` FOREIGN KEY (`õppeaine_id`) REFERENCES `õppeaine` (`õppeaine_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Õpetaja poolt õpetatud õppeained';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `õpetaja_õppeaine`
--

LOCK TABLES `õpetaja_õppeaine` WRITE;
/*!40000 ALTER TABLE `õpetaja_õppeaine` DISABLE KEYS */;
INSERT INTO `õpetaja_õppeaine` VALUES (1,1);
/*!40000 ALTER TABLE `õpetaja_õppeaine` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `õpilane`
--

DROP TABLE IF EXISTS `õpilane`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `õpilane` (
  `õpilane_id` int NOT NULL AUTO_INCREMENT COMMENT 'Õpilase ID',
  `nimi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Õpilase nimi',
  `isikukood` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Isikukood',
  `rühm_id` int NOT NULL COMMENT 'Õpilase rühm',
  `telefon` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Telefon',
  `meil` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Meiliaadress',
  PRIMARY KEY (`õpilane_id`),
  UNIQUE KEY `isikukood` (`isikukood`),
  KEY `rühm_id` (`rühm_id`),
  CONSTRAINT `õpilane_ibfk_1` FOREIGN KEY (`rühm_id`) REFERENCES `rühm` (`rühm_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Õpilaste andmed';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `õpilane`
--

LOCK TABLES `õpilane` WRITE;
/*!40000 ALTER TABLE `õpilane` DISABLE KEYS */;
INSERT INTO `õpilane` VALUES (1,'Hannes Tamm','50101010011',1,NULL,NULL);
/*!40000 ALTER TABLE `õpilane` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `õpilane_õppeaine`
--

DROP TABLE IF EXISTS `õpilane_õppeaine`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `õpilane_õppeaine` (
  `õpilane_id` int NOT NULL COMMENT 'Õpilane',
  `õppeaine_id` int NOT NULL COMMENT 'Õppeaine',
  PRIMARY KEY (`õpilane_id`,`õppeaine_id`),
  KEY `õppeaine_id` (`õppeaine_id`),
  CONSTRAINT `õpilane_õppeaine_ibfk_1` FOREIGN KEY (`õpilane_id`) REFERENCES `õpilane` (`õpilane_id`),
  CONSTRAINT `õpilane_õppeaine_ibfk_2` FOREIGN KEY (`õppeaine_id`) REFERENCES `õppeaine` (`õppeaine_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Õpilaste õppeainete seosed';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `õpilane_õppeaine`
--

LOCK TABLES `õpilane_õppeaine` WRITE;
/*!40000 ALTER TABLE `õpilane_õppeaine` DISABLE KEYS */;
INSERT INTO `õpilane_õppeaine` VALUES (1,1);
/*!40000 ALTER TABLE `õpilane_õppeaine` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `õppeaine`
--

DROP TABLE IF EXISTS `õppeaine`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `õppeaine` (
  `õppeaine_id` int NOT NULL AUTO_INCREMENT COMMENT 'Õppeaine ID',
  `nimi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Õppeaine nimetus',
  PRIMARY KEY (`õppeaine_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Õppeained';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `õppeaine`
--

LOCK TABLES `õppeaine` WRITE;
/*!40000 ALTER TABLE `õppeaine` DISABLE KEYS */;
INSERT INTO `õppeaine` VALUES (1,'Andmebaasid');
/*!40000 ALTER TABLE `õppeaine` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-11-27 14:21:21
