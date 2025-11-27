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
  UNIQUE KEY `õpilane_id` (`õpilane_id`),
  CONSTRAINT `esindaja_ibfk_1` FOREIGN KEY (`õpilane_id`) REFERENCES `õpilane` (`õpilane_id`)
) ENGINE=InnoDB AUTO_INCREMENT=102 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Lapsevanemad ja eestkostjad';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `esindaja`
--

LOCK TABLES `esindaja` WRITE;
/*!40000 ALTER TABLE `esindaja` DISABLE KEYS */;
INSERT INTO `esindaja` VALUES (1,1,'Mari Ploom','55123456','vanem1@example.com'),(2,2,'Peeter Rand','55234567','vanem2@example.com'),(3,3,'Liis Kask','55345678','vanem3@example.com'),(4,4,'Jüri Laas','55456789','vanem4@example.com'),(5,5,'Kadri Rebase','55567890','vanem5@example.com'),(6,6,'Mati Saar','55678901','vanem6@example.com'),(7,7,'Eve Kask','55789012','vanem7@example.com'),(8,8,'Toomas Rand','55890123','vanem8@example.com'),(9,9,'Anu Mets','55901234','vanem9@example.com'),(10,10,'Rein Aas','56012345','vanem10@example.com'),(11,11,'Tiina Kann','56123456','vanem11@example.com'),(12,12,'Kalle Kivi','56234567','vanem12@example.com'),(13,13,'Lea Kuusk','56345678','vanem13@example.com'),(14,14,'Margo Koppel','56456789','vanem14@example.com'),(15,15,'Ester Laas','56567890','vanem15@example.com'),(16,16,'Uku Tamm','56678901','vanem16@example.com'),(17,17,'Kadi Ploom','56789012','vanem17@example.com'),(18,18,'Aivar Rand','56890123','vanem18@example.com'),(19,19,'Kristel Lepik','56901234','vanem19@example.com'),(20,20,'Taavi Ruut','57012345','vanem20@example.com'),(21,21,'Marju Kask','57123456','vanem21@example.com'),(22,22,'Vallo Laas','57234567','vanem22@example.com'),(23,23,'Liisi Kann','57345678','vanem23@example.com'),(24,24,'Raimo Tamm','57456789','vanem24@example.com'),(25,25,'Heli Saar','57567890','vanem25@example.com'),(26,26,'Aare Koppel','57678901','vanem26@example.com'),(27,27,'Reeda Laas','57789012','vanem27@example.com'),(28,28,'Urmas Rand','57890123','vanem28@example.com'),(29,29,'Merike Ploom','57901234','vanem29@example.com'),(30,30,'Kusti Kann','58012345','vanem30@example.com'),(31,31,'Raili Kivi','58123456','vanem31@example.com'),(32,32,'Kasper Laas','58234567','vanem32@example.com'),(33,33,'Maret Rand','58345678','vanem33@example.com'),(34,34,'Tarmo Ploom','58456789','vanem34@example.com'),(35,35,'Maarika Kask','58567890','vanem35@example.com'),(36,36,'Aivo Laas','58678901','vanem36@example.com'),(37,37,'Uku Kann','58789012','vanem37@example.com'),(38,38,'Ene Salum','58890123','vanem38@example.com'),(39,39,'Kaupo Kivi','58901234','vanem39@example.com'),(40,40,'Liivi Laas','59012345','vanem40@example.com'),(41,41,'Mari Lepik','59123456','vanem41@example.com'),(42,42,'Peeter Saar','59234567','vanem42@example.com'),(43,43,'Tiia Rand','59345678','vanem43@example.com'),(44,44,'Urmas Kask','59456789','vanem44@example.com'),(45,45,'Anne Salum','59567890','vanem45@example.com'),(46,46,'Karl Laas','59678901','vanem46@example.com'),(47,47,'Eve Lepik','59789012','vanem47@example.com'),(48,48,'Mati Ploom','59890123','vanem48@example.com'),(49,49,'Anneli Kann','59901234','vanem49@example.com'),(50,50,'Raul Ruut','50012345','vanem50@example.com'),(51,51,'Õie Laas','50123456','vanem51@example.com'),(52,52,'Mart Saar','50234567','vanem52@example.com'),(53,53,'Riina Kivi','50345678','vanem53@example.com'),(54,54,'Erik Laas','50456789','vanem54@example.com'),(55,55,'Heli Ploom','50567890','vanem55@example.com'),(56,56,'Aino Kann','50678901','vanem56@example.com'),(57,57,'Peeter Rand','50789012','vanem57@example.com'),(58,58,'Maarja Kask','50890123','vanem58@example.com'),(59,59,'Liina Laas','50901234','vanem59@example.com'),(60,60,'Tõnis Salum','51012345','vanem60@example.com'),(61,61,'Kadi Ploom','51123456','vanem61@example.com'),(64,63,'Külli Laas','51345678','vanem63@example.com'),(65,64,'Priit Kann','51456789','vanem64@example.com'),(66,65,'Merike Rand','51567890','vanem65@example.com'),(67,66,'Alo Laas','51678901','vanem66@example.com'),(68,67,'Ene Kask','51789012','vanem67@example.com'),(69,68,'Uku Saar','51890123','vanem68@example.com'),(70,69,'Kadi Lepik','51901234','vanem69@example.com'),(71,70,'Raul Laas','52012345','vanem70@example.com'),(72,71,'Eda Salum','52123456','vanem71@example.com'),(73,72,'Tarmo Kann','52234567','vanem72@example.com'),(74,73,'Marge Ploom','52345678','vanem73@example.com'),(75,74,'Erki Laas','52456789','vanem74@example.com'),(76,75,'Kärt Kivi','52567890','vanem75@example.com'),(77,76,'Avo Rand','52678901','vanem76@example.com'),(79,78,'Uku Kann','52890123','vanem78@example.com'),(80,79,'Maili Salum','52901234','vanem79@example.com'),(81,80,'Reimo Laas','53012345','vanem80@example.com'),(82,81,'Maret Ploom','53123456','vanem81@example.com'),(83,82,'Toomas Kann','53234567','vanem82@example.com'),(84,83,'Triin Kask','53345678','vanem83@example.com'),(85,84,'Külli Laas','53456789','vanem84@example.com'),(86,85,'Riho Salum','53567890','vanem85@example.com'),(87,86,'Ene Ploom','53678901','vanem86@example.com'),(88,87,'Hendrik Ruut','53789012','vanem87@example.com'),(89,88,'Airi Kann','53890123','vanem88@example.com'),(90,89,'Vello Laas','53901234','vanem89@example.com'),(91,90,'Eda Kask','54012345','vanem90@example.com'),(93,92,'Urmas Laas','54234567','vanem92@example.com'),(94,93,'Ene Kann','54345678','vanem93@example.com'),(96,95,'Lea Laas','54567890','vanem95@example.com'),(97,96,'Rein Kann','54678901','vanem96@example.com'),(98,97,'Kadi Salum','54789012','vanem97@example.com'),(99,98,'Triin Ploom','54890123','vanem98@example.com'),(100,99,'Mati Laas','54901234','vanem99@example.com');
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
  `tund_kuupäev_id` int NOT NULL COMMENT 'Tund_kuupäev viide',
  `õpilane_id` int NOT NULL COMMENT 'Õpilane',
  `väärtus` tinyint NOT NULL COMMENT 'Hinne 1–5',
  `kuupäev` datetime DEFAULT CURRENT_TIMESTAMP COMMENT 'Lisamise aeg',
  PRIMARY KEY (`hinne_id`),
  KEY `tund_kuupäev_id` (`tund_kuupäev_id`),
  KEY `õpilane_id` (`õpilane_id`),
  CONSTRAINT `hinne_ibfk_1` FOREIGN KEY (`tund_kuupäev_id`) REFERENCES `tund_kuupäev` (`tund_kuupäev_id`),
  CONSTRAINT `hinne_ibfk_2` FOREIGN KEY (`õpilane_id`) REFERENCES `õpilane` (`õpilane_id`),
  CONSTRAINT `chk_hinne_väärtus` CHECK ((`väärtus` between 1 and 5))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Õpilaste hinded';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hinne`
--

LOCK TABLES `hinne` WRITE;
/*!40000 ALTER TABLE `hinne` DISABLE KEYS */;
/*!40000 ALTER TABLE `hinne` ENABLE KEYS */;
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
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `hinne_before_insert` BEFORE INSERT ON `hinne` FOR EACH ROW BEGIN
    DECLARE aine_id INT;
    DECLARE olemas INT;

    -- leiame õppeaine tunniplaani kaudu
    SELECT t.õppeaine_id INTO aine_id
    FROM tunniplaan tp
    JOIN tund t ON (t.tund_id = tp.tund_id OR tp.tund_id IS NULL AND t.tund_id = tp.tund_id) -- turvaline valik
    WHERE tp.tunniplaan_id = NEW.tund_kuupäev_id LIMIT 1;

    -- Kui ei leitud via tunniplaan, proovime tund_kuupäev->tunniplaan->õppeaine
    IF aine_id IS NULL THEN
      -- proovime leida õppeaine tund_kuupäev -> tunniplaan -> õppeaine ridade kaudu
      SELECT tp.õppeaine_id INTO aine_id
      FROM tund_kuupäev tk
      JOIN tunniplaan tp ON tk.tunniplaan_id = tp.tunniplaan_id
      WHERE tk.tund_kuupäev_id = NEW.tund_kuupäev_id
      LIMIT 1;
    END IF;

    IF aine_id IS NULL THEN
      -- kui ikkagi ei leidu, lubame hinnet (erand), või võiks vigastada; me lubame praegu vigastada
      SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Ei suudetud tuvastada õppeainet vastava tund_kuupäev kirje põhjal.';
    END IF;

    -- Kontrollime, kas õpilane on ainega seotud
    SELECT COUNT(*) INTO olemas FROM õpilane_õppeaine WHERE õpilane_id = NEW.õpilane_id AND õppeaine_id = aine_id;
    IF olemas = 0 THEN
      SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Õpilane ei ole registreeritud sellele õppeainele - ei saa lisada hinnet.';
    END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Klassiruumid';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `klassiruum`
--

LOCK TABLES `klassiruum` WRITE;
/*!40000 ALTER TABLE `klassiruum` DISABLE KEYS */;
INSERT INTO `klassiruum` VALUES (1,1,'A101','Arvutiklass'),(2,1,'A102','Arvutiklass'),(3,2,'B201','Labor'),(4,2,'B202','Labor'),(5,3,'C301','Köök'),(6,3,'C302','Salong'),(7,4,'D401','Praktika'),(8,4,'D402','Meisterlik');
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Koolide tabel';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kool`
--

LOCK TABLES `kool` WRITE;
/*!40000 ALTER TABLE `kool` DISABLE KEYS */;
INSERT INTO `kool` VALUES (1,'Tallina Polütehnikum','Pärnu mnt 57'),(2,'Tartu Rakenduslik Kolledž','Narva mnt 10'),(3,'Tallinna Teeninduskool','Majaka 2'),(4,'Tallinna Ehituskool','Pärnu mnt 162');
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
  `kuu` tinyint unsigned NOT NULL,
  PRIMARY KEY (`palk_id`),
  KEY `õpetaja_id` (`õpetaja_id`),
  CONSTRAINT `palgaandmed_ibfk_1` FOREIGN KEY (`õpetaja_id`) REFERENCES `õpetaja` (`õpetaja_id`),
  CONSTRAINT `palgaandmed_chk_1` CHECK ((`kuu` between 1 and 12)),
  CONSTRAINT `palgaandmed_chk_2` CHECK ((`kuu` between 1 and 12))
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
  UNIQUE KEY `kool_id` (`kool_id`,`nimi`),
  CONSTRAINT `rühm_ibfk_1` FOREIGN KEY (`kool_id`) REFERENCES `kool` (`kool_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Õpperühmad';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rühm`
--

LOCK TABLES `rühm` WRITE;
/*!40000 ALTER TABLE `rühm` DISABLE KEYS */;
INSERT INTO `rühm` VALUES (1,1,'TA-23A'),(2,1,'TA-23B'),(3,1,'TA-24A'),(4,2,'TRK-21A'),(5,2,'TRK-21B'),(6,2,'TRK-22A'),(7,3,'TT-20A'),(8,3,'TT-20B'),(9,4,'TE-19A'),(10,4,'TE-19B');
/*!40000 ALTER TABLE `rühm` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rühm_õppeaine`
--

DROP TABLE IF EXISTS `rühm_õppeaine`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rühm_õppeaine` (
  `rühm_id` int NOT NULL COMMENT 'Rühm',
  `õppeaine_id` int NOT NULL COMMENT 'Õppeaine',
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
INSERT INTO `rühm_õppeaine` VALUES (1,1),(2,1),(3,1),(4,1),(5,1),(6,1),(8,1),(10,1),(1,2),(4,2),(5,2),(7,2),(8,2),(2,3),(4,3),(5,3),(7,3),(3,4),(6,4),(9,4),(10,4),(4,5),(6,5),(1,6),(2,6),(3,6),(5,6),(9,6),(1,7),(2,7),(3,7),(6,7),(9,7),(8,9),(7,10),(8,10),(7,11),(10,11),(9,12),(10,12);
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
  `algus` time NOT NULL COMMENT 'Algusaeg (mall)',
  `lõpp` time NOT NULL COMMENT 'Lõppaeg (mall)',
  PRIMARY KEY (`tund_id`),
  KEY `rühm_id` (`rühm_id`),
  KEY `õpetaja_id` (`õpetaja_id`),
  KEY `õppeaine_id` (`õppeaine_id`),
  KEY `klass_id` (`klass_id`),
  CONSTRAINT `tund_ibfk_1` FOREIGN KEY (`rühm_id`) REFERENCES `rühm` (`rühm_id`),
  CONSTRAINT `tund_ibfk_2` FOREIGN KEY (`õpetaja_id`) REFERENCES `õpetaja` (`õpetaja_id`),
  CONSTRAINT `tund_ibfk_3` FOREIGN KEY (`õppeaine_id`) REFERENCES `õppeaine` (`õppeaine_id`),
  CONSTRAINT `tund_ibfk_4` FOREIGN KEY (`klass_id`) REFERENCES `klassiruum` (`klass_id`),
  CONSTRAINT `tund_chk_1` CHECK ((`algus` < `lõpp`))
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Tunnid (tunnimudelid)';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tund`
--

LOCK TABLES `tund` WRITE;
/*!40000 ALTER TABLE `tund` DISABLE KEYS */;
INSERT INTO `tund` VALUES (1,1,1,6,1,'E','09:00:00','10:00:00'),(2,1,1,7,2,'E','10:15:00','11:15:00'),(3,1,1,1,1,'T','09:00:00','10:00:00'),(4,1,1,2,2,'T','10:15:00','11:15:00'),(5,1,1,6,1,'K','09:00:00','10:00:00'),(6,1,1,7,2,'K','10:15:00','11:15:00'),(7,1,1,1,1,'N','09:00:00','10:00:00'),(8,1,1,2,2,'N','10:15:00','11:15:00'),(9,1,1,6,1,'R','09:00:00','10:00:00'),(10,1,1,7,2,'R','10:15:00','11:15:00'),(11,2,1,6,1,'E','09:00:00','10:00:00'),(12,2,1,7,2,'E','10:15:00','11:15:00'),(13,2,1,1,1,'T','09:00:00','10:00:00'),(14,2,1,3,2,'T','10:15:00','11:15:00'),(15,2,1,6,1,'K','09:00:00','10:00:00'),(16,2,1,7,2,'K','10:15:00','11:15:00'),(17,2,1,1,1,'N','09:00:00','10:00:00'),(18,2,1,3,2,'N','10:15:00','11:15:00'),(19,2,1,6,1,'R','09:00:00','10:00:00'),(20,2,1,7,2,'R','10:15:00','11:15:00'),(21,3,1,6,1,'E','09:00:00','10:00:00'),(22,3,1,7,2,'E','10:15:00','11:15:00'),(23,3,1,1,1,'T','09:00:00','10:00:00'),(24,3,1,4,2,'T','10:15:00','11:15:00'),(25,3,1,6,1,'K','09:00:00','10:00:00'),(26,3,1,7,2,'K','10:15:00','11:15:00'),(27,3,1,1,1,'N','09:00:00','10:00:00'),(28,3,1,4,2,'N','10:15:00','11:15:00'),(29,3,1,6,1,'R','09:00:00','10:00:00'),(30,3,1,7,2,'R','10:15:00','11:15:00'),(31,4,4,3,3,'E','09:00:00','10:00:00'),(32,4,4,2,4,'E','10:15:00','11:15:00'),(33,4,4,1,3,'T','09:00:00','10:00:00'),(34,4,4,5,4,'T','10:15:00','11:15:00'),(35,4,4,3,3,'K','09:00:00','10:00:00'),(36,4,4,2,4,'K','10:15:00','11:15:00'),(37,4,4,1,3,'N','09:00:00','10:00:00'),(38,4,4,5,4,'N','10:15:00','11:15:00'),(39,4,4,3,3,'R','09:00:00','10:00:00'),(40,4,4,2,4,'R','10:15:00','11:15:00'),(41,5,4,3,3,'E','09:00:00','10:00:00'),(42,5,4,2,4,'E','10:15:00','11:15:00'),(43,5,4,1,3,'T','09:00:00','10:00:00'),(44,5,4,6,4,'T','10:15:00','11:15:00'),(45,5,4,3,3,'K','09:00:00','10:00:00'),(46,5,4,2,4,'K','10:15:00','11:15:00'),(47,5,4,1,3,'N','09:00:00','10:00:00'),(48,5,4,6,4,'N','10:15:00','11:15:00'),(49,5,4,3,3,'R','09:00:00','10:00:00'),(50,5,4,2,4,'R','10:15:00','11:15:00'),(51,6,2,4,3,'E','09:00:00','10:00:00'),(52,6,2,5,4,'E','10:15:00','11:15:00'),(53,6,2,1,3,'T','09:00:00','10:00:00'),(54,6,2,7,4,'T','10:15:00','11:15:00'),(55,6,2,4,3,'K','09:00:00','10:00:00'),(56,6,2,5,4,'K','10:15:00','11:15:00'),(57,6,2,1,3,'N','09:00:00','10:00:00'),(58,6,2,7,4,'N','10:15:00','11:15:00'),(59,6,2,4,3,'R','09:00:00','10:00:00'),(60,6,2,5,4,'R','10:15:00','11:15:00'),(61,7,7,10,5,'E','09:00:00','10:00:00'),(62,7,7,11,6,'E','10:15:00','11:15:00'),(63,7,7,2,5,'T','09:00:00','10:00:00'),(64,7,7,3,6,'T','10:15:00','11:15:00'),(65,7,7,10,5,'K','09:00:00','10:00:00'),(66,7,7,11,6,'K','10:15:00','11:15:00'),(67,7,7,2,5,'N','09:00:00','10:00:00'),(68,7,7,3,6,'N','10:15:00','11:15:00'),(69,7,7,10,5,'R','09:00:00','10:00:00'),(70,7,7,11,6,'R','10:15:00','11:15:00'),(71,8,7,10,5,'E','09:00:00','10:00:00'),(72,8,7,9,6,'E','10:15:00','11:15:00'),(73,8,7,2,5,'T','09:00:00','10:00:00'),(74,8,7,1,6,'T','10:15:00','11:15:00'),(75,8,7,10,5,'K','09:00:00','10:00:00'),(76,8,7,9,6,'K','10:15:00','11:15:00'),(77,8,7,2,5,'N','09:00:00','10:00:00'),(78,8,7,1,6,'N','10:15:00','11:15:00'),(79,8,7,10,5,'R','09:00:00','10:00:00'),(80,8,7,9,6,'R','10:15:00','11:15:00'),(81,9,11,12,7,'E','09:00:00','10:00:00'),(82,9,11,4,8,'E','10:15:00','11:15:00'),(83,9,11,6,7,'T','09:00:00','10:00:00'),(84,9,11,7,8,'T','10:15:00','11:15:00'),(85,9,11,12,7,'K','09:00:00','10:00:00'),(86,9,11,4,8,'K','10:15:00','11:15:00'),(87,9,11,6,7,'N','09:00:00','10:00:00'),(88,9,11,7,8,'N','10:15:00','11:15:00'),(89,9,11,12,7,'R','09:00:00','10:00:00'),(90,9,11,4,8,'R','10:15:00','11:15:00'),(91,10,11,12,7,'E','09:00:00','10:00:00'),(92,10,11,4,8,'E','10:15:00','11:15:00'),(93,10,11,1,7,'T','09:00:00','10:00:00'),(94,10,11,11,8,'T','10:15:00','11:15:00'),(95,10,11,12,7,'K','09:00:00','10:00:00'),(96,10,11,4,8,'K','10:15:00','11:15:00'),(97,10,11,1,7,'N','09:00:00','10:00:00'),(98,10,11,11,8,'N','10:15:00','11:15:00'),(99,10,11,12,7,'R','09:00:00','10:00:00'),(100,10,11,4,8,'R','10:15:00','11:15:00');
/*!40000 ALTER TABLE `tund` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tund_kuupäev`
--

DROP TABLE IF EXISTS `tund_kuupäev`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tund_kuupäev` (
  `tund_kuupäev_id` int NOT NULL AUTO_INCREMENT COMMENT 'Tunni toimumise kuupäev ID',
  `tunniplaan_id` int NOT NULL COMMENT 'Viide tunniplaani kirjele',
  `kuupäev` date NOT NULL COMMENT 'Kuupäev',
  PRIMARY KEY (`tund_kuupäev_id`),
  UNIQUE KEY `tunniplaan_id` (`tunniplaan_id`,`kuupäev`),
  CONSTRAINT `tund_kuupäev_ibfk_1` FOREIGN KEY (`tunniplaan_id`) REFERENCES `tunniplaan` (`tunniplaan_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Tunni spetsiifiline kuupäev (abistruktuur, hindeid seotakse seda kaudu)';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tund_kuupäev`
--

LOCK TABLES `tund_kuupäev` WRITE;
/*!40000 ALTER TABLE `tund_kuupäev` DISABLE KEYS */;
/*!40000 ALTER TABLE `tund_kuupäev` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tunniplaan`
--

DROP TABLE IF EXISTS `tunniplaan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tunniplaan` (
  `tunniplaan_id` int NOT NULL AUTO_INCREMENT COMMENT 'Tunniplaani kirje ID',
  `tund_id` int DEFAULT NULL COMMENT 'Viide tunnimudelile (võib olla NULL kui eraldi sündmus)',
  `rühm_id` int NOT NULL COMMENT 'Rühm',
  `õpetaja_id` int NOT NULL COMMENT 'Õpetaja',
  `õppeaine_id` int NOT NULL COMMENT 'Õppeaine',
  `klass_id` int NOT NULL COMMENT 'Klassiruum',
  `kuupäev` date NOT NULL COMMENT 'Tunni toimumise kuupäev',
  `algus` time NOT NULL COMMENT 'Tunni algusaeg',
  `lõpp` time NOT NULL COMMENT 'Tunni lõppaeg',
  `staatus` enum('PLANEERITUD','TOIMUS','TÜHISTATUD') COLLATE utf8mb4_unicode_ci DEFAULT 'PLANEERITUD' COMMENT 'Tunni staat',
  PRIMARY KEY (`tunniplaan_id`),
  UNIQUE KEY `tund_id` (`tund_id`,`kuupäev`),
  KEY `rühm_id` (`rühm_id`),
  KEY `õppeaine_id` (`õppeaine_id`),
  KEY `klass_id` (`klass_id`),
  KEY `idx_tunniplaan_õpetaja_kuup` (`õpetaja_id`,`kuupäev`,`algus`,`lõpp`),
  CONSTRAINT `tunniplaan_ibfk_1` FOREIGN KEY (`tund_id`) REFERENCES `tund` (`tund_id`),
  CONSTRAINT `tunniplaan_ibfk_2` FOREIGN KEY (`rühm_id`) REFERENCES `rühm` (`rühm_id`),
  CONSTRAINT `tunniplaan_ibfk_3` FOREIGN KEY (`õpetaja_id`) REFERENCES `õpetaja` (`õpetaja_id`),
  CONSTRAINT `tunniplaan_ibfk_4` FOREIGN KEY (`õppeaine_id`) REFERENCES `õppeaine` (`õppeaine_id`),
  CONSTRAINT `tunniplaan_ibfk_5` FOREIGN KEY (`klass_id`) REFERENCES `klassiruum` (`klass_id`),
  CONSTRAINT `tunniplaan_chk_1` CHECK ((`algus` < `lõpp`))
) ENGINE=InnoDB AUTO_INCREMENT=443 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Tunniplaani kirjed (konkreetne toimumine)';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tunniplaan`
--

LOCK TABLES `tunniplaan` WRITE;
/*!40000 ALTER TABLE `tunniplaan` DISABLE KEYS */;
INSERT INTO `tunniplaan` VALUES (1,1,1,1,6,1,'2025-02-03','09:00:00','10:00:00','PLANEERITUD'),(2,1,1,1,6,1,'2025-02-10','09:00:00','10:00:00','PLANEERITUD'),(3,1,1,1,6,1,'2025-02-17','09:00:00','10:00:00','PLANEERITUD'),(4,1,1,1,6,1,'2025-02-24','09:00:00','10:00:00','PLANEERITUD'),(5,1,1,1,6,1,'2025-03-03','09:00:00','10:00:00','PLANEERITUD'),(6,1,1,1,6,1,'2025-03-10','09:00:00','10:00:00','PLANEERITUD'),(7,1,1,1,6,1,'2025-03-17','09:00:00','10:00:00','PLANEERITUD'),(8,1,1,1,6,1,'2025-03-24','09:00:00','10:00:00','PLANEERITUD'),(9,1,1,1,6,1,'2025-03-31','09:00:00','10:00:00','PLANEERITUD'),(10,1,1,1,6,1,'2025-04-07','09:00:00','10:00:00','PLANEERITUD'),(11,1,1,1,6,1,'2025-04-14','09:00:00','10:00:00','PLANEERITUD'),(12,1,1,1,6,1,'2025-04-21','09:00:00','10:00:00','PLANEERITUD'),(13,1,1,1,6,1,'2025-04-28','09:00:00','10:00:00','PLANEERITUD'),(14,1,1,1,6,1,'2025-05-05','09:00:00','10:00:00','PLANEERITUD'),(15,1,1,1,6,1,'2025-05-12','09:00:00','10:00:00','PLANEERITUD'),(16,1,1,1,6,1,'2025-05-19','09:00:00','10:00:00','PLANEERITUD'),(17,1,1,1,6,1,'2025-05-26','09:00:00','10:00:00','PLANEERITUD'),(18,2,1,1,7,2,'2025-02-03','10:15:00','11:15:00','PLANEERITUD'),(19,2,1,1,7,2,'2025-02-10','10:15:00','11:15:00','PLANEERITUD'),(20,2,1,1,7,2,'2025-02-17','10:15:00','11:15:00','PLANEERITUD'),(21,2,1,1,7,2,'2025-02-24','10:15:00','11:15:00','PLANEERITUD'),(22,2,1,1,7,2,'2025-03-03','10:15:00','11:15:00','PLANEERITUD'),(23,2,1,1,7,2,'2025-03-10','10:15:00','11:15:00','PLANEERITUD'),(24,2,1,1,7,2,'2025-03-17','10:15:00','11:15:00','PLANEERITUD'),(25,2,1,1,7,2,'2025-03-24','10:15:00','11:15:00','PLANEERITUD'),(26,2,1,1,7,2,'2025-03-31','10:15:00','11:15:00','PLANEERITUD'),(27,2,1,1,7,2,'2025-04-07','10:15:00','11:15:00','PLANEERITUD'),(28,2,1,1,7,2,'2025-04-14','10:15:00','11:15:00','PLANEERITUD'),(29,2,1,1,7,2,'2025-04-21','10:15:00','11:15:00','PLANEERITUD'),(30,2,1,1,7,2,'2025-04-28','10:15:00','11:15:00','PLANEERITUD'),(31,2,1,1,7,2,'2025-05-05','10:15:00','11:15:00','PLANEERITUD'),(32,2,1,1,7,2,'2025-05-12','10:15:00','11:15:00','PLANEERITUD'),(33,2,1,1,7,2,'2025-05-19','10:15:00','11:15:00','PLANEERITUD'),(34,2,1,1,7,2,'2025-05-26','10:15:00','11:15:00','PLANEERITUD'),(35,3,1,1,1,1,'2025-02-04','09:00:00','10:00:00','PLANEERITUD'),(36,3,1,1,1,1,'2025-02-11','09:00:00','10:00:00','PLANEERITUD'),(37,3,1,1,1,1,'2025-02-18','09:00:00','10:00:00','PLANEERITUD'),(38,3,1,1,1,1,'2025-02-25','09:00:00','10:00:00','PLANEERITUD'),(39,3,1,1,1,1,'2025-03-04','09:00:00','10:00:00','PLANEERITUD'),(40,3,1,1,1,1,'2025-03-11','09:00:00','10:00:00','PLANEERITUD'),(41,3,1,1,1,1,'2025-03-18','09:00:00','10:00:00','PLANEERITUD'),(42,3,1,1,1,1,'2025-03-25','09:00:00','10:00:00','PLANEERITUD'),(43,3,1,1,1,1,'2025-04-01','09:00:00','10:00:00','PLANEERITUD'),(44,3,1,1,1,1,'2025-04-08','09:00:00','10:00:00','PLANEERITUD'),(45,3,1,1,1,1,'2025-04-15','09:00:00','10:00:00','PLANEERITUD'),(46,3,1,1,1,1,'2025-04-22','09:00:00','10:00:00','PLANEERITUD'),(47,3,1,1,1,1,'2025-04-29','09:00:00','10:00:00','PLANEERITUD'),(48,3,1,1,1,1,'2025-05-06','09:00:00','10:00:00','PLANEERITUD'),(49,3,1,1,1,1,'2025-05-13','09:00:00','10:00:00','PLANEERITUD'),(50,3,1,1,1,1,'2025-05-20','09:00:00','10:00:00','PLANEERITUD'),(51,3,1,1,1,1,'2025-05-27','09:00:00','10:00:00','PLANEERITUD'),(52,4,1,1,2,2,'2025-02-04','10:15:00','11:15:00','PLANEERITUD'),(53,4,1,1,2,2,'2025-02-11','10:15:00','11:15:00','PLANEERITUD'),(54,4,1,1,2,2,'2025-02-18','10:15:00','11:15:00','PLANEERITUD'),(55,4,1,1,2,2,'2025-02-25','10:15:00','11:15:00','PLANEERITUD'),(56,4,1,1,2,2,'2025-03-04','10:15:00','11:15:00','PLANEERITUD'),(57,4,1,1,2,2,'2025-03-11','10:15:00','11:15:00','PLANEERITUD'),(58,4,1,1,2,2,'2025-03-18','10:15:00','11:15:00','PLANEERITUD'),(59,4,1,1,2,2,'2025-03-25','10:15:00','11:15:00','PLANEERITUD'),(60,4,1,1,2,2,'2025-04-01','10:15:00','11:15:00','PLANEERITUD'),(61,4,1,1,2,2,'2025-04-08','10:15:00','11:15:00','PLANEERITUD'),(62,4,1,1,2,2,'2025-04-15','10:15:00','11:15:00','PLANEERITUD'),(63,4,1,1,2,2,'2025-04-22','10:15:00','11:15:00','PLANEERITUD'),(64,4,1,1,2,2,'2025-04-29','10:15:00','11:15:00','PLANEERITUD'),(65,4,1,1,2,2,'2025-05-06','10:15:00','11:15:00','PLANEERITUD'),(66,4,1,1,2,2,'2025-05-13','10:15:00','11:15:00','PLANEERITUD'),(67,4,1,1,2,2,'2025-05-20','10:15:00','11:15:00','PLANEERITUD'),(68,4,1,1,2,2,'2025-05-27','10:15:00','11:15:00','PLANEERITUD'),(69,5,1,1,6,1,'2025-02-05','09:00:00','10:00:00','PLANEERITUD'),(70,5,1,1,6,1,'2025-02-12','09:00:00','10:00:00','PLANEERITUD'),(71,5,1,1,6,1,'2025-02-19','09:00:00','10:00:00','PLANEERITUD'),(72,5,1,1,6,1,'2025-02-26','09:00:00','10:00:00','PLANEERITUD'),(73,5,1,1,6,1,'2025-03-05','09:00:00','10:00:00','PLANEERITUD'),(74,5,1,1,6,1,'2025-03-12','09:00:00','10:00:00','PLANEERITUD'),(75,5,1,1,6,1,'2025-03-19','09:00:00','10:00:00','PLANEERITUD'),(76,5,1,1,6,1,'2025-03-26','09:00:00','10:00:00','PLANEERITUD'),(77,5,1,1,6,1,'2025-04-02','09:00:00','10:00:00','PLANEERITUD'),(78,5,1,1,6,1,'2025-04-09','09:00:00','10:00:00','PLANEERITUD'),(79,5,1,1,6,1,'2025-04-16','09:00:00','10:00:00','PLANEERITUD'),(80,5,1,1,6,1,'2025-04-23','09:00:00','10:00:00','PLANEERITUD'),(81,5,1,1,6,1,'2025-04-30','09:00:00','10:00:00','PLANEERITUD'),(82,5,1,1,6,1,'2025-05-07','09:00:00','10:00:00','PLANEERITUD'),(83,5,1,1,6,1,'2025-05-14','09:00:00','10:00:00','PLANEERITUD'),(84,5,1,1,6,1,'2025-05-21','09:00:00','10:00:00','PLANEERITUD'),(85,5,1,1,6,1,'2025-05-28','09:00:00','10:00:00','PLANEERITUD'),(86,6,1,1,7,2,'2025-02-05','10:15:00','11:15:00','PLANEERITUD'),(87,6,1,1,7,2,'2025-02-12','10:15:00','11:15:00','PLANEERITUD'),(88,6,1,1,7,2,'2025-02-19','10:15:00','11:15:00','PLANEERITUD'),(89,6,1,1,7,2,'2025-02-26','10:15:00','11:15:00','PLANEERITUD'),(90,6,1,1,7,2,'2025-03-05','10:15:00','11:15:00','PLANEERITUD'),(91,6,1,1,7,2,'2025-03-12','10:15:00','11:15:00','PLANEERITUD'),(92,6,1,1,7,2,'2025-03-19','10:15:00','11:15:00','PLANEERITUD'),(93,6,1,1,7,2,'2025-03-26','10:15:00','11:15:00','PLANEERITUD'),(94,6,1,1,7,2,'2025-04-02','10:15:00','11:15:00','PLANEERITUD'),(95,6,1,1,7,2,'2025-04-09','10:15:00','11:15:00','PLANEERITUD'),(96,6,1,1,7,2,'2025-04-16','10:15:00','11:15:00','PLANEERITUD'),(97,6,1,1,7,2,'2025-04-23','10:15:00','11:15:00','PLANEERITUD'),(98,6,1,1,7,2,'2025-04-30','10:15:00','11:15:00','PLANEERITUD'),(99,6,1,1,7,2,'2025-05-07','10:15:00','11:15:00','PLANEERITUD'),(100,6,1,1,7,2,'2025-05-14','10:15:00','11:15:00','PLANEERITUD'),(101,6,1,1,7,2,'2025-05-21','10:15:00','11:15:00','PLANEERITUD'),(102,6,1,1,7,2,'2025-05-28','10:15:00','11:15:00','PLANEERITUD'),(103,7,1,1,1,1,'2025-02-06','09:00:00','10:00:00','PLANEERITUD'),(104,7,1,1,1,1,'2025-02-13','09:00:00','10:00:00','PLANEERITUD'),(105,7,1,1,1,1,'2025-02-20','09:00:00','10:00:00','PLANEERITUD'),(106,7,1,1,1,1,'2025-02-27','09:00:00','10:00:00','PLANEERITUD'),(107,7,1,1,1,1,'2025-03-06','09:00:00','10:00:00','PLANEERITUD'),(108,7,1,1,1,1,'2025-03-13','09:00:00','10:00:00','PLANEERITUD'),(109,7,1,1,1,1,'2025-03-20','09:00:00','10:00:00','PLANEERITUD'),(110,7,1,1,1,1,'2025-03-27','09:00:00','10:00:00','PLANEERITUD'),(111,7,1,1,1,1,'2025-04-03','09:00:00','10:00:00','PLANEERITUD'),(112,7,1,1,1,1,'2025-04-10','09:00:00','10:00:00','PLANEERITUD'),(113,7,1,1,1,1,'2025-04-17','09:00:00','10:00:00','PLANEERITUD'),(114,7,1,1,1,1,'2025-04-24','09:00:00','10:00:00','PLANEERITUD'),(115,7,1,1,1,1,'2025-05-01','09:00:00','10:00:00','PLANEERITUD'),(116,7,1,1,1,1,'2025-05-08','09:00:00','10:00:00','PLANEERITUD'),(117,7,1,1,1,1,'2025-05-15','09:00:00','10:00:00','PLANEERITUD'),(118,7,1,1,1,1,'2025-05-22','09:00:00','10:00:00','PLANEERITUD'),(119,7,1,1,1,1,'2025-05-29','09:00:00','10:00:00','PLANEERITUD'),(120,8,1,1,2,2,'2025-02-06','10:15:00','11:15:00','PLANEERITUD'),(121,8,1,1,2,2,'2025-02-13','10:15:00','11:15:00','PLANEERITUD'),(122,8,1,1,2,2,'2025-02-20','10:15:00','11:15:00','PLANEERITUD'),(123,8,1,1,2,2,'2025-02-27','10:15:00','11:15:00','PLANEERITUD'),(124,8,1,1,2,2,'2025-03-06','10:15:00','11:15:00','PLANEERITUD'),(125,8,1,1,2,2,'2025-03-13','10:15:00','11:15:00','PLANEERITUD'),(126,8,1,1,2,2,'2025-03-20','10:15:00','11:15:00','PLANEERITUD'),(127,8,1,1,2,2,'2025-03-27','10:15:00','11:15:00','PLANEERITUD'),(128,8,1,1,2,2,'2025-04-03','10:15:00','11:15:00','PLANEERITUD'),(129,8,1,1,2,2,'2025-04-10','10:15:00','11:15:00','PLANEERITUD'),(130,8,1,1,2,2,'2025-04-17','10:15:00','11:15:00','PLANEERITUD'),(131,8,1,1,2,2,'2025-04-24','10:15:00','11:15:00','PLANEERITUD'),(132,8,1,1,2,2,'2025-05-01','10:15:00','11:15:00','PLANEERITUD'),(133,8,1,1,2,2,'2025-05-08','10:15:00','11:15:00','PLANEERITUD'),(134,8,1,1,2,2,'2025-05-15','10:15:00','11:15:00','PLANEERITUD'),(135,8,1,1,2,2,'2025-05-22','10:15:00','11:15:00','PLANEERITUD'),(136,8,1,1,2,2,'2025-05-29','10:15:00','11:15:00','PLANEERITUD'),(137,9,1,1,6,1,'2025-02-07','09:00:00','10:00:00','PLANEERITUD'),(138,9,1,1,6,1,'2025-02-14','09:00:00','10:00:00','PLANEERITUD'),(139,9,1,1,6,1,'2025-02-21','09:00:00','10:00:00','PLANEERITUD'),(140,9,1,1,6,1,'2025-02-28','09:00:00','10:00:00','PLANEERITUD'),(141,9,1,1,6,1,'2025-03-07','09:00:00','10:00:00','PLANEERITUD'),(142,9,1,1,6,1,'2025-03-14','09:00:00','10:00:00','PLANEERITUD'),(143,9,1,1,6,1,'2025-03-21','09:00:00','10:00:00','PLANEERITUD'),(144,9,1,1,6,1,'2025-03-28','09:00:00','10:00:00','PLANEERITUD'),(145,9,1,1,6,1,'2025-04-04','09:00:00','10:00:00','PLANEERITUD'),(146,9,1,1,6,1,'2025-04-11','09:00:00','10:00:00','PLANEERITUD'),(147,9,1,1,6,1,'2025-04-18','09:00:00','10:00:00','PLANEERITUD'),(148,9,1,1,6,1,'2025-04-25','09:00:00','10:00:00','PLANEERITUD'),(149,9,1,1,6,1,'2025-05-02','09:00:00','10:00:00','PLANEERITUD'),(150,9,1,1,6,1,'2025-05-09','09:00:00','10:00:00','PLANEERITUD'),(151,9,1,1,6,1,'2025-05-16','09:00:00','10:00:00','PLANEERITUD'),(152,9,1,1,6,1,'2025-05-23','09:00:00','10:00:00','PLANEERITUD'),(153,9,1,1,6,1,'2025-05-30','09:00:00','10:00:00','PLANEERITUD'),(154,10,1,1,7,2,'2025-02-07','10:15:00','11:15:00','PLANEERITUD'),(155,10,1,1,7,2,'2025-02-14','10:15:00','11:15:00','PLANEERITUD'),(156,10,1,1,7,2,'2025-02-21','10:15:00','11:15:00','PLANEERITUD'),(157,10,1,1,7,2,'2025-02-28','10:15:00','11:15:00','PLANEERITUD'),(158,10,1,1,7,2,'2025-03-07','10:15:00','11:15:00','PLANEERITUD'),(159,10,1,1,7,2,'2025-03-14','10:15:00','11:15:00','PLANEERITUD'),(160,10,1,1,7,2,'2025-03-21','10:15:00','11:15:00','PLANEERITUD'),(161,10,1,1,7,2,'2025-03-28','10:15:00','11:15:00','PLANEERITUD'),(162,10,1,1,7,2,'2025-04-04','10:15:00','11:15:00','PLANEERITUD'),(163,10,1,1,7,2,'2025-04-11','10:15:00','11:15:00','PLANEERITUD'),(164,10,1,1,7,2,'2025-04-18','10:15:00','11:15:00','PLANEERITUD'),(165,10,1,1,7,2,'2025-04-25','10:15:00','11:15:00','PLANEERITUD'),(166,10,1,1,7,2,'2025-05-02','10:15:00','11:15:00','PLANEERITUD'),(167,10,1,1,7,2,'2025-05-09','10:15:00','11:15:00','PLANEERITUD'),(168,10,1,1,7,2,'2025-05-16','10:15:00','11:15:00','PLANEERITUD'),(169,10,1,1,7,2,'2025-05-23','10:15:00','11:15:00','PLANEERITUD'),(170,10,1,1,7,2,'2025-05-30','10:15:00','11:15:00','PLANEERITUD'),(171,100,10,11,4,8,'2025-02-07','10:15:00','11:15:00','PLANEERITUD'),(172,100,10,11,4,8,'2025-02-14','10:15:00','11:15:00','PLANEERITUD'),(173,100,10,11,4,8,'2025-02-21','10:15:00','11:15:00','PLANEERITUD'),(174,100,10,11,4,8,'2025-02-28','10:15:00','11:15:00','PLANEERITUD'),(175,100,10,11,4,8,'2025-03-07','10:15:00','11:15:00','PLANEERITUD'),(176,100,10,11,4,8,'2025-03-14','10:15:00','11:15:00','PLANEERITUD'),(177,100,10,11,4,8,'2025-03-21','10:15:00','11:15:00','PLANEERITUD'),(178,100,10,11,4,8,'2025-03-28','10:15:00','11:15:00','PLANEERITUD'),(179,100,10,11,4,8,'2025-04-04','10:15:00','11:15:00','PLANEERITUD'),(180,100,10,11,4,8,'2025-04-11','10:15:00','11:15:00','PLANEERITUD'),(181,100,10,11,4,8,'2025-04-18','10:15:00','11:15:00','PLANEERITUD'),(182,100,10,11,4,8,'2025-04-25','10:15:00','11:15:00','PLANEERITUD'),(183,100,10,11,4,8,'2025-05-02','10:15:00','11:15:00','PLANEERITUD'),(184,100,10,11,4,8,'2025-05-09','10:15:00','11:15:00','PLANEERITUD'),(185,100,10,11,4,8,'2025-05-16','10:15:00','11:15:00','PLANEERITUD'),(186,100,10,11,4,8,'2025-05-23','10:15:00','11:15:00','PLANEERITUD'),(187,100,10,11,4,8,'2025-05-30','10:15:00','11:15:00','PLANEERITUD'),(188,99,10,11,12,7,'2025-02-07','09:00:00','10:00:00','PLANEERITUD'),(189,99,10,11,12,7,'2025-02-14','09:00:00','10:00:00','PLANEERITUD'),(190,99,10,11,12,7,'2025-02-21','09:00:00','10:00:00','PLANEERITUD'),(191,99,10,11,12,7,'2025-02-28','09:00:00','10:00:00','PLANEERITUD'),(192,99,10,11,12,7,'2025-03-07','09:00:00','10:00:00','PLANEERITUD'),(193,99,10,11,12,7,'2025-03-14','09:00:00','10:00:00','PLANEERITUD'),(194,99,10,11,12,7,'2025-03-21','09:00:00','10:00:00','PLANEERITUD'),(195,99,10,11,12,7,'2025-03-28','09:00:00','10:00:00','PLANEERITUD'),(196,99,10,11,12,7,'2025-04-04','09:00:00','10:00:00','PLANEERITUD'),(197,99,10,11,12,7,'2025-04-11','09:00:00','10:00:00','PLANEERITUD'),(198,99,10,11,12,7,'2025-04-18','09:00:00','10:00:00','PLANEERITUD'),(199,99,10,11,12,7,'2025-04-25','09:00:00','10:00:00','PLANEERITUD'),(200,99,10,11,12,7,'2025-05-02','09:00:00','10:00:00','PLANEERITUD'),(201,99,10,11,12,7,'2025-05-09','09:00:00','10:00:00','PLANEERITUD'),(202,99,10,11,12,7,'2025-05-16','09:00:00','10:00:00','PLANEERITUD'),(203,99,10,11,12,7,'2025-05-23','09:00:00','10:00:00','PLANEERITUD'),(204,99,10,11,12,7,'2025-05-30','09:00:00','10:00:00','PLANEERITUD'),(205,75,8,7,10,5,'2025-02-05','09:00:00','10:00:00','PLANEERITUD'),(206,75,8,7,10,5,'2025-02-12','09:00:00','10:00:00','PLANEERITUD'),(207,75,8,7,10,5,'2025-02-19','09:00:00','10:00:00','PLANEERITUD'),(208,75,8,7,10,5,'2025-02-26','09:00:00','10:00:00','PLANEERITUD'),(209,75,8,7,10,5,'2025-03-05','09:00:00','10:00:00','PLANEERITUD'),(210,75,8,7,10,5,'2025-03-12','09:00:00','10:00:00','PLANEERITUD'),(211,75,8,7,10,5,'2025-03-19','09:00:00','10:00:00','PLANEERITUD'),(212,75,8,7,10,5,'2025-03-26','09:00:00','10:00:00','PLANEERITUD'),(213,75,8,7,10,5,'2025-04-02','09:00:00','10:00:00','PLANEERITUD'),(214,75,8,7,10,5,'2025-04-09','09:00:00','10:00:00','PLANEERITUD'),(215,75,8,7,10,5,'2025-04-16','09:00:00','10:00:00','PLANEERITUD'),(216,75,8,7,10,5,'2025-04-23','09:00:00','10:00:00','PLANEERITUD'),(217,75,8,7,10,5,'2025-04-30','09:00:00','10:00:00','PLANEERITUD'),(218,75,8,7,10,5,'2025-05-07','09:00:00','10:00:00','PLANEERITUD'),(219,75,8,7,10,5,'2025-05-14','09:00:00','10:00:00','PLANEERITUD'),(220,75,8,7,10,5,'2025-05-21','09:00:00','10:00:00','PLANEERITUD'),(221,75,8,7,10,5,'2025-05-28','09:00:00','10:00:00','PLANEERITUD'),(222,76,8,7,9,6,'2025-02-05','10:15:00','11:15:00','PLANEERITUD'),(223,76,8,7,9,6,'2025-02-12','10:15:00','11:15:00','PLANEERITUD'),(224,76,8,7,9,6,'2025-02-19','10:15:00','11:15:00','PLANEERITUD'),(225,76,8,7,9,6,'2025-02-26','10:15:00','11:15:00','PLANEERITUD'),(226,76,8,7,9,6,'2025-03-05','10:15:00','11:15:00','PLANEERITUD'),(227,76,8,7,9,6,'2025-03-12','10:15:00','11:15:00','PLANEERITUD'),(228,76,8,7,9,6,'2025-03-19','10:15:00','11:15:00','PLANEERITUD'),(229,76,8,7,9,6,'2025-03-26','10:15:00','11:15:00','PLANEERITUD'),(230,76,8,7,9,6,'2025-04-02','10:15:00','11:15:00','PLANEERITUD'),(231,76,8,7,9,6,'2025-04-09','10:15:00','11:15:00','PLANEERITUD'),(232,76,8,7,9,6,'2025-04-16','10:15:00','11:15:00','PLANEERITUD'),(233,76,8,7,9,6,'2025-04-23','10:15:00','11:15:00','PLANEERITUD'),(234,76,8,7,9,6,'2025-04-30','10:15:00','11:15:00','PLANEERITUD'),(235,76,8,7,9,6,'2025-05-07','10:15:00','11:15:00','PLANEERITUD'),(236,76,8,7,9,6,'2025-05-14','10:15:00','11:15:00','PLANEERITUD'),(237,76,8,7,9,6,'2025-05-21','10:15:00','11:15:00','PLANEERITUD'),(238,76,8,7,9,6,'2025-05-28','10:15:00','11:15:00','PLANEERITUD'),(239,77,8,7,2,5,'2025-02-06','09:00:00','10:00:00','PLANEERITUD'),(240,77,8,7,2,5,'2025-02-13','09:00:00','10:00:00','PLANEERITUD'),(241,77,8,7,2,5,'2025-02-20','09:00:00','10:00:00','PLANEERITUD'),(242,77,8,7,2,5,'2025-02-27','09:00:00','10:00:00','PLANEERITUD'),(243,77,8,7,2,5,'2025-03-06','09:00:00','10:00:00','PLANEERITUD'),(244,77,8,7,2,5,'2025-03-13','09:00:00','10:00:00','PLANEERITUD'),(245,77,8,7,2,5,'2025-03-20','09:00:00','10:00:00','PLANEERITUD'),(246,77,8,7,2,5,'2025-03-27','09:00:00','10:00:00','PLANEERITUD'),(247,77,8,7,2,5,'2025-04-03','09:00:00','10:00:00','PLANEERITUD'),(248,77,8,7,2,5,'2025-04-10','09:00:00','10:00:00','PLANEERITUD'),(249,77,8,7,2,5,'2025-04-17','09:00:00','10:00:00','PLANEERITUD'),(250,77,8,7,2,5,'2025-04-24','09:00:00','10:00:00','PLANEERITUD'),(251,77,8,7,2,5,'2025-05-01','09:00:00','10:00:00','PLANEERITUD'),(252,77,8,7,2,5,'2025-05-08','09:00:00','10:00:00','PLANEERITUD'),(253,77,8,7,2,5,'2025-05-15','09:00:00','10:00:00','PLANEERITUD'),(254,77,8,7,2,5,'2025-05-22','09:00:00','10:00:00','PLANEERITUD'),(255,77,8,7,2,5,'2025-05-29','09:00:00','10:00:00','PLANEERITUD'),(256,78,8,7,1,6,'2025-02-06','10:15:00','11:15:00','PLANEERITUD'),(257,78,8,7,1,6,'2025-02-13','10:15:00','11:15:00','PLANEERITUD'),(258,78,8,7,1,6,'2025-02-20','10:15:00','11:15:00','PLANEERITUD'),(259,78,8,7,1,6,'2025-02-27','10:15:00','11:15:00','PLANEERITUD'),(260,78,8,7,1,6,'2025-03-06','10:15:00','11:15:00','PLANEERITUD'),(261,78,8,7,1,6,'2025-03-13','10:15:00','11:15:00','PLANEERITUD'),(262,78,8,7,1,6,'2025-03-20','10:15:00','11:15:00','PLANEERITUD'),(263,78,8,7,1,6,'2025-03-27','10:15:00','11:15:00','PLANEERITUD'),(264,78,8,7,1,6,'2025-04-03','10:15:00','11:15:00','PLANEERITUD'),(265,78,8,7,1,6,'2025-04-10','10:15:00','11:15:00','PLANEERITUD'),(266,78,8,7,1,6,'2025-04-17','10:15:00','11:15:00','PLANEERITUD'),(267,78,8,7,1,6,'2025-04-24','10:15:00','11:15:00','PLANEERITUD'),(268,78,8,7,1,6,'2025-05-01','10:15:00','11:15:00','PLANEERITUD'),(269,78,8,7,1,6,'2025-05-08','10:15:00','11:15:00','PLANEERITUD'),(270,78,8,7,1,6,'2025-05-15','10:15:00','11:15:00','PLANEERITUD'),(271,78,8,7,1,6,'2025-05-22','10:15:00','11:15:00','PLANEERITUD'),(272,78,8,7,1,6,'2025-05-29','10:15:00','11:15:00','PLANEERITUD'),(273,79,8,7,10,5,'2025-02-07','09:00:00','10:00:00','PLANEERITUD'),(274,79,8,7,10,5,'2025-02-14','09:00:00','10:00:00','PLANEERITUD'),(275,79,8,7,10,5,'2025-02-21','09:00:00','10:00:00','PLANEERITUD'),(276,79,8,7,10,5,'2025-02-28','09:00:00','10:00:00','PLANEERITUD'),(277,79,8,7,10,5,'2025-03-07','09:00:00','10:00:00','PLANEERITUD'),(278,79,8,7,10,5,'2025-03-14','09:00:00','10:00:00','PLANEERITUD'),(279,79,8,7,10,5,'2025-03-21','09:00:00','10:00:00','PLANEERITUD'),(280,79,8,7,10,5,'2025-03-28','09:00:00','10:00:00','PLANEERITUD'),(281,79,8,7,10,5,'2025-04-04','09:00:00','10:00:00','PLANEERITUD'),(282,79,8,7,10,5,'2025-04-11','09:00:00','10:00:00','PLANEERITUD'),(283,79,8,7,10,5,'2025-04-18','09:00:00','10:00:00','PLANEERITUD'),(284,79,8,7,10,5,'2025-04-25','09:00:00','10:00:00','PLANEERITUD'),(285,79,8,7,10,5,'2025-05-02','09:00:00','10:00:00','PLANEERITUD'),(286,79,8,7,10,5,'2025-05-09','09:00:00','10:00:00','PLANEERITUD'),(287,79,8,7,10,5,'2025-05-16','09:00:00','10:00:00','PLANEERITUD'),(288,79,8,7,10,5,'2025-05-23','09:00:00','10:00:00','PLANEERITUD'),(289,79,8,7,10,5,'2025-05-30','09:00:00','10:00:00','PLANEERITUD'),(290,80,8,7,9,6,'2025-02-07','10:15:00','11:15:00','PLANEERITUD'),(291,80,8,7,9,6,'2025-02-14','10:15:00','11:15:00','PLANEERITUD'),(292,80,8,7,9,6,'2025-02-21','10:15:00','11:15:00','PLANEERITUD'),(293,80,8,7,9,6,'2025-02-28','10:15:00','11:15:00','PLANEERITUD'),(294,80,8,7,9,6,'2025-03-07','10:15:00','11:15:00','PLANEERITUD'),(295,80,8,7,9,6,'2025-03-14','10:15:00','11:15:00','PLANEERITUD'),(296,80,8,7,9,6,'2025-03-21','10:15:00','11:15:00','PLANEERITUD'),(297,80,8,7,9,6,'2025-03-28','10:15:00','11:15:00','PLANEERITUD'),(298,80,8,7,9,6,'2025-04-04','10:15:00','11:15:00','PLANEERITUD'),(299,80,8,7,9,6,'2025-04-11','10:15:00','11:15:00','PLANEERITUD'),(300,80,8,7,9,6,'2025-04-18','10:15:00','11:15:00','PLANEERITUD'),(301,80,8,7,9,6,'2025-04-25','10:15:00','11:15:00','PLANEERITUD'),(302,80,8,7,9,6,'2025-05-02','10:15:00','11:15:00','PLANEERITUD'),(303,80,8,7,9,6,'2025-05-09','10:15:00','11:15:00','PLANEERITUD'),(304,80,8,7,9,6,'2025-05-16','10:15:00','11:15:00','PLANEERITUD'),(305,80,8,7,9,6,'2025-05-23','10:15:00','11:15:00','PLANEERITUD'),(306,80,8,7,9,6,'2025-05-30','10:15:00','11:15:00','PLANEERITUD'),(307,81,9,11,12,7,'2025-02-03','09:00:00','10:00:00','PLANEERITUD'),(308,81,9,11,12,7,'2025-02-10','09:00:00','10:00:00','PLANEERITUD'),(309,81,9,11,12,7,'2025-02-17','09:00:00','10:00:00','PLANEERITUD'),(310,81,9,11,12,7,'2025-02-24','09:00:00','10:00:00','PLANEERITUD'),(311,81,9,11,12,7,'2025-03-03','09:00:00','10:00:00','PLANEERITUD'),(312,81,9,11,12,7,'2025-03-10','09:00:00','10:00:00','PLANEERITUD'),(313,81,9,11,12,7,'2025-03-17','09:00:00','10:00:00','PLANEERITUD'),(314,81,9,11,12,7,'2025-03-24','09:00:00','10:00:00','PLANEERITUD'),(315,81,9,11,12,7,'2025-03-31','09:00:00','10:00:00','PLANEERITUD'),(316,81,9,11,12,7,'2025-04-07','09:00:00','10:00:00','PLANEERITUD'),(317,81,9,11,12,7,'2025-04-14','09:00:00','10:00:00','PLANEERITUD'),(318,81,9,11,12,7,'2025-04-21','09:00:00','10:00:00','PLANEERITUD'),(319,81,9,11,12,7,'2025-04-28','09:00:00','10:00:00','PLANEERITUD'),(320,81,9,11,12,7,'2025-05-05','09:00:00','10:00:00','PLANEERITUD'),(321,81,9,11,12,7,'2025-05-12','09:00:00','10:00:00','PLANEERITUD'),(322,81,9,11,12,7,'2025-05-19','09:00:00','10:00:00','PLANEERITUD'),(323,81,9,11,12,7,'2025-05-26','09:00:00','10:00:00','PLANEERITUD'),(324,82,9,11,4,8,'2025-02-03','10:15:00','11:15:00','PLANEERITUD'),(325,82,9,11,4,8,'2025-02-10','10:15:00','11:15:00','PLANEERITUD'),(326,82,9,11,4,8,'2025-02-17','10:15:00','11:15:00','PLANEERITUD'),(327,82,9,11,4,8,'2025-02-24','10:15:00','11:15:00','PLANEERITUD'),(328,82,9,11,4,8,'2025-03-03','10:15:00','11:15:00','PLANEERITUD'),(329,82,9,11,4,8,'2025-03-10','10:15:00','11:15:00','PLANEERITUD'),(330,82,9,11,4,8,'2025-03-17','10:15:00','11:15:00','PLANEERITUD'),(331,82,9,11,4,8,'2025-03-24','10:15:00','11:15:00','PLANEERITUD'),(332,82,9,11,4,8,'2025-03-31','10:15:00','11:15:00','PLANEERITUD'),(333,82,9,11,4,8,'2025-04-07','10:15:00','11:15:00','PLANEERITUD'),(334,82,9,11,4,8,'2025-04-14','10:15:00','11:15:00','PLANEERITUD'),(335,82,9,11,4,8,'2025-04-21','10:15:00','11:15:00','PLANEERITUD'),(336,82,9,11,4,8,'2025-04-28','10:15:00','11:15:00','PLANEERITUD'),(337,82,9,11,4,8,'2025-05-05','10:15:00','11:15:00','PLANEERITUD'),(338,82,9,11,4,8,'2025-05-12','10:15:00','11:15:00','PLANEERITUD'),(339,82,9,11,4,8,'2025-05-19','10:15:00','11:15:00','PLANEERITUD'),(340,82,9,11,4,8,'2025-05-26','10:15:00','11:15:00','PLANEERITUD'),(341,83,9,11,6,7,'2025-02-04','09:00:00','10:00:00','PLANEERITUD'),(342,83,9,11,6,7,'2025-02-11','09:00:00','10:00:00','PLANEERITUD'),(343,83,9,11,6,7,'2025-02-18','09:00:00','10:00:00','PLANEERITUD'),(344,83,9,11,6,7,'2025-02-25','09:00:00','10:00:00','PLANEERITUD'),(345,83,9,11,6,7,'2025-03-04','09:00:00','10:00:00','PLANEERITUD'),(346,83,9,11,6,7,'2025-03-11','09:00:00','10:00:00','PLANEERITUD'),(347,83,9,11,6,7,'2025-03-18','09:00:00','10:00:00','PLANEERITUD'),(348,83,9,11,6,7,'2025-03-25','09:00:00','10:00:00','PLANEERITUD'),(349,83,9,11,6,7,'2025-04-01','09:00:00','10:00:00','PLANEERITUD'),(350,83,9,11,6,7,'2025-04-08','09:00:00','10:00:00','PLANEERITUD'),(351,83,9,11,6,7,'2025-04-15','09:00:00','10:00:00','PLANEERITUD'),(352,83,9,11,6,7,'2025-04-22','09:00:00','10:00:00','PLANEERITUD'),(353,83,9,11,6,7,'2025-04-29','09:00:00','10:00:00','PLANEERITUD'),(354,83,9,11,6,7,'2025-05-06','09:00:00','10:00:00','PLANEERITUD'),(355,83,9,11,6,7,'2025-05-13','09:00:00','10:00:00','PLANEERITUD'),(356,83,9,11,6,7,'2025-05-20','09:00:00','10:00:00','PLANEERITUD'),(357,83,9,11,6,7,'2025-05-27','09:00:00','10:00:00','PLANEERITUD'),(358,84,9,11,7,8,'2025-02-04','10:15:00','11:15:00','PLANEERITUD'),(359,84,9,11,7,8,'2025-02-11','10:15:00','11:15:00','PLANEERITUD'),(360,84,9,11,7,8,'2025-02-18','10:15:00','11:15:00','PLANEERITUD'),(361,84,9,11,7,8,'2025-02-25','10:15:00','11:15:00','PLANEERITUD'),(362,84,9,11,7,8,'2025-03-04','10:15:00','11:15:00','PLANEERITUD'),(363,84,9,11,7,8,'2025-03-11','10:15:00','11:15:00','PLANEERITUD'),(364,84,9,11,7,8,'2025-03-18','10:15:00','11:15:00','PLANEERITUD'),(365,84,9,11,7,8,'2025-03-25','10:15:00','11:15:00','PLANEERITUD'),(366,84,9,11,7,8,'2025-04-01','10:15:00','11:15:00','PLANEERITUD'),(367,84,9,11,7,8,'2025-04-08','10:15:00','11:15:00','PLANEERITUD'),(368,84,9,11,7,8,'2025-04-15','10:15:00','11:15:00','PLANEERITUD'),(369,84,9,11,7,8,'2025-04-22','10:15:00','11:15:00','PLANEERITUD'),(370,84,9,11,7,8,'2025-04-29','10:15:00','11:15:00','PLANEERITUD'),(371,84,9,11,7,8,'2025-05-06','10:15:00','11:15:00','PLANEERITUD'),(372,84,9,11,7,8,'2025-05-13','10:15:00','11:15:00','PLANEERITUD'),(373,84,9,11,7,8,'2025-05-20','10:15:00','11:15:00','PLANEERITUD'),(374,84,9,11,7,8,'2025-05-27','10:15:00','11:15:00','PLANEERITUD'),(375,85,9,11,12,7,'2025-02-05','09:00:00','10:00:00','PLANEERITUD'),(376,85,9,11,12,7,'2025-02-12','09:00:00','10:00:00','PLANEERITUD'),(377,85,9,11,12,7,'2025-02-19','09:00:00','10:00:00','PLANEERITUD'),(378,85,9,11,12,7,'2025-02-26','09:00:00','10:00:00','PLANEERITUD'),(379,85,9,11,12,7,'2025-03-05','09:00:00','10:00:00','PLANEERITUD'),(380,85,9,11,12,7,'2025-03-12','09:00:00','10:00:00','PLANEERITUD'),(381,85,9,11,12,7,'2025-03-19','09:00:00','10:00:00','PLANEERITUD'),(382,85,9,11,12,7,'2025-03-26','09:00:00','10:00:00','PLANEERITUD'),(383,85,9,11,12,7,'2025-04-02','09:00:00','10:00:00','PLANEERITUD'),(384,85,9,11,12,7,'2025-04-09','09:00:00','10:00:00','PLANEERITUD'),(385,85,9,11,12,7,'2025-04-16','09:00:00','10:00:00','PLANEERITUD'),(386,85,9,11,12,7,'2025-04-23','09:00:00','10:00:00','PLANEERITUD'),(387,85,9,11,12,7,'2025-04-30','09:00:00','10:00:00','PLANEERITUD'),(388,85,9,11,12,7,'2025-05-07','09:00:00','10:00:00','PLANEERITUD'),(389,85,9,11,12,7,'2025-05-14','09:00:00','10:00:00','PLANEERITUD'),(390,85,9,11,12,7,'2025-05-21','09:00:00','10:00:00','PLANEERITUD'),(391,85,9,11,12,7,'2025-05-28','09:00:00','10:00:00','PLANEERITUD'),(392,86,9,11,4,8,'2025-02-05','10:15:00','11:15:00','PLANEERITUD'),(393,86,9,11,4,8,'2025-02-12','10:15:00','11:15:00','PLANEERITUD'),(394,86,9,11,4,8,'2025-02-19','10:15:00','11:15:00','PLANEERITUD'),(395,86,9,11,4,8,'2025-02-26','10:15:00','11:15:00','PLANEERITUD'),(396,86,9,11,4,8,'2025-03-05','10:15:00','11:15:00','PLANEERITUD'),(397,86,9,11,4,8,'2025-03-12','10:15:00','11:15:00','PLANEERITUD'),(398,86,9,11,4,8,'2025-03-19','10:15:00','11:15:00','PLANEERITUD'),(399,86,9,11,4,8,'2025-03-26','10:15:00','11:15:00','PLANEERITUD'),(400,86,9,11,4,8,'2025-04-02','10:15:00','11:15:00','PLANEERITUD'),(401,86,9,11,4,8,'2025-04-09','10:15:00','11:15:00','PLANEERITUD'),(402,86,9,11,4,8,'2025-04-16','10:15:00','11:15:00','PLANEERITUD'),(403,86,9,11,4,8,'2025-04-23','10:15:00','11:15:00','PLANEERITUD'),(404,86,9,11,4,8,'2025-04-30','10:15:00','11:15:00','PLANEERITUD'),(405,86,9,11,4,8,'2025-05-07','10:15:00','11:15:00','PLANEERITUD'),(406,86,9,11,4,8,'2025-05-14','10:15:00','11:15:00','PLANEERITUD'),(407,86,9,11,4,8,'2025-05-21','10:15:00','11:15:00','PLANEERITUD'),(408,86,9,11,4,8,'2025-05-28','10:15:00','11:15:00','PLANEERITUD'),(409,87,9,11,6,7,'2025-02-06','09:00:00','10:00:00','PLANEERITUD'),(410,87,9,11,6,7,'2025-02-13','09:00:00','10:00:00','PLANEERITUD'),(411,87,9,11,6,7,'2025-02-20','09:00:00','10:00:00','PLANEERITUD'),(412,87,9,11,6,7,'2025-02-27','09:00:00','10:00:00','PLANEERITUD'),(413,87,9,11,6,7,'2025-03-06','09:00:00','10:00:00','PLANEERITUD'),(414,87,9,11,6,7,'2025-03-13','09:00:00','10:00:00','PLANEERITUD'),(415,87,9,11,6,7,'2025-03-20','09:00:00','10:00:00','PLANEERITUD'),(416,87,9,11,6,7,'2025-03-27','09:00:00','10:00:00','PLANEERITUD'),(417,87,9,11,6,7,'2025-04-03','09:00:00','10:00:00','PLANEERITUD'),(418,87,9,11,6,7,'2025-04-10','09:00:00','10:00:00','PLANEERITUD'),(419,87,9,11,6,7,'2025-04-17','09:00:00','10:00:00','PLANEERITUD'),(420,87,9,11,6,7,'2025-04-24','09:00:00','10:00:00','PLANEERITUD'),(421,87,9,11,6,7,'2025-05-01','09:00:00','10:00:00','PLANEERITUD'),(422,87,9,11,6,7,'2025-05-08','09:00:00','10:00:00','PLANEERITUD'),(423,87,9,11,6,7,'2025-05-15','09:00:00','10:00:00','PLANEERITUD'),(424,87,9,11,6,7,'2025-05-22','09:00:00','10:00:00','PLANEERITUD'),(425,87,9,11,6,7,'2025-05-29','09:00:00','10:00:00','PLANEERITUD'),(426,88,9,11,7,8,'2025-02-06','10:15:00','11:15:00','PLANEERITUD'),(427,88,9,11,7,8,'2025-02-13','10:15:00','11:15:00','PLANEERITUD'),(428,88,9,11,7,8,'2025-02-20','10:15:00','11:15:00','PLANEERITUD'),(429,88,9,11,7,8,'2025-02-27','10:15:00','11:15:00','PLANEERITUD'),(430,88,9,11,7,8,'2025-03-06','10:15:00','11:15:00','PLANEERITUD'),(431,88,9,11,7,8,'2025-03-13','10:15:00','11:15:00','PLANEERITUD'),(432,88,9,11,7,8,'2025-03-20','10:15:00','11:15:00','PLANEERITUD'),(433,88,9,11,7,8,'2025-03-27','10:15:00','11:15:00','PLANEERITUD'),(434,88,9,11,7,8,'2025-04-03','10:15:00','11:15:00','PLANEERITUD'),(435,88,9,11,7,8,'2025-04-10','10:15:00','11:15:00','PLANEERITUD'),(436,88,9,11,7,8,'2025-04-17','10:15:00','11:15:00','PLANEERITUD'),(437,88,9,11,7,8,'2025-04-24','10:15:00','11:15:00','PLANEERITUD'),(438,88,9,11,7,8,'2025-05-01','10:15:00','11:15:00','PLANEERITUD'),(439,88,9,11,7,8,'2025-05-08','10:15:00','11:15:00','PLANEERITUD'),(440,88,9,11,7,8,'2025-05-15','10:15:00','11:15:00','PLANEERITUD'),(441,88,9,11,7,8,'2025-05-22','10:15:00','11:15:00','PLANEERITUD'),(442,88,9,11,7,8,'2025-05-29','10:15:00','11:15:00','PLANEERITUD');
/*!40000 ALTER TABLE `tunniplaan` ENABLE KEYS */;
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
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `tunniplaan_before_insert` BEFORE INSERT ON `tunniplaan` FOR EACH ROW BEGIN
    DECLARE cnt INT;

    -- kontrolli õpetaja kattuvust
    SELECT COUNT(*) INTO cnt
    FROM tunniplaan t
    WHERE t.õpetaja_id = NEW.õpetaja_id
      AND t.kuupäev = NEW.kuupäev
      AND NOT (NEW.lõpp <= t.algus OR NEW.algus >= t.lõpp);
    IF cnt > 0 THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Konflikt: sama õpetaja on juba määratud kattuvaks tunniks samal ajal.';
    END IF;

    -- kontrolli klassiruumi kattuvust
    SELECT COUNT(*) INTO cnt
    FROM tunniplaan t
    WHERE t.klass_id = NEW.klass_id
      AND t.kuupäev = NEW.kuupäev
      AND NOT (NEW.lõpp <= t.algus OR NEW.algus >= t.lõpp);
    IF cnt > 0 THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Konflikt: klassiruum on juba hõivatud sellel ajal.';
    END IF;

    -- kontrolli rühma (õpilased) kattuvust
    SELECT COUNT(*) INTO cnt
    FROM tunniplaan t
    WHERE t.rühm_id = NEW.rühm_id
      AND t.kuupäev = NEW.kuupäev
      AND NOT (NEW.lõpp <= t.algus OR NEW.algus >= t.lõpp);
    IF cnt > 0 THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Konflikt: rühmil on juba tunniplaanis kattuv tund.';
    END IF;
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
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `tunniplaan_before_update` BEFORE UPDATE ON `tunniplaan` FOR EACH ROW BEGIN
    DECLARE cnt INT;

    SELECT COUNT(*) INTO cnt
    FROM tunniplaan t
    WHERE t.tunniplaan_id != OLD.tunniplaan_id
      AND t.õpetaja_id = NEW.õpetaja_id
      AND t.kuupäev = NEW.kuupäev
      AND NOT (NEW.lõpp <= t.algus OR NEW.algus >= t.lõpp);
    IF cnt > 0 THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Konflikt (uuendus): sama õpetaja on juba määratud kattuvaks tunniks samal ajal.';
    END IF;

    SELECT COUNT(*) INTO cnt
    FROM tunniplaan t
    WHERE t.tunniplaan_id != OLD.tunniplaan_id
      AND t.klass_id = NEW.klass_id
      AND t.kuupäev = NEW.kuupäev
      AND NOT (NEW.lõpp <= t.algus OR NEW.algus >= t.lõpp);
    IF cnt > 0 THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Konflikt (uuendus): klassiruum on juba hõivatud sellel ajal.';
    END IF;

    SELECT COUNT(*) INTO cnt
    FROM tunniplaan t
    WHERE t.tunniplaan_id != OLD.tunniplaan_id
      AND t.rühm_id = NEW.rühm_id
      AND t.kuupäev = NEW.kuupäev
      AND NOT (NEW.lõpp <= t.algus OR NEW.algus >= t.lõpp);
    IF cnt > 0 THEN
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Konflikt (uuendus): rühmal on juba tunniplaanis kattuv tund.';
    END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Temporary view structure for view `vaade_tunniplaan`
--

DROP TABLE IF EXISTS `vaade_tunniplaan`;
/*!50001 DROP VIEW IF EXISTS `vaade_tunniplaan`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vaade_tunniplaan` AS SELECT 
 1 AS `tunniplaan_id`,
 1 AS `kuupäev`,
 1 AS `algus`,
 1 AS `lõpp`,
 1 AS `staatus`,
 1 AS `rühm_id`,
 1 AS `rühm_nimi`,
 1 AS `õpetaja_id`,
 1 AS `õpetaja_nimi`,
 1 AS `õppeaine_id`,
 1 AS `aine_nimi`,
 1 AS `klass_id`,
 1 AS `klass_nimi`*/;
SET character_set_client = @saved_cs_client;

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
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Õpetajate tabel';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `õpetaja`
--

LOCK TABLES `õpetaja` WRITE;
/*!40000 ALTER TABLE `õpetaja` DISABLE KEYS */;
INSERT INTO `õpetaja` VALUES (1,1,'Üllar Lindmaa','Andmebaasid','51234501','ullar.l@example.com'),(2,1,'Maarja Tamm','Matemaatika','51234502','maarja.t@example.com'),(3,1,'Juhan Kask','Eesti keel','51234503','juhan.k@example.com'),(4,2,'Katri Rebase','Inglise keel','51234510','katri.r@example.com'),(5,2,'Priit Saar','Füüsika','51234511','priet.s@example.com'),(6,2,'Liis Leht','Keemia','51234512','liis.l@example.com'),(7,3,'Mari Oja','Meedia','51234520','mari.o@example.com'),(8,3,'Peeter Ploom','Majandus','51234521','peeter.p@example.com'),(9,3,'Kaisa Raud','Kehaline kasvatus','51234522','kaisa.r@example.com'),(10,4,'Tõnu Rand','Elekter','51234530','tonu.r@example.com'),(11,4,'Rasmus Mets','Ehitustööd','51234531','rasmus.m@example.com'),(12,1,'Liina Aas','Programmeerimine','51234504','liina.a@example.com'),(13,1,'Anu Tõnisson','Andmebaasid','51234505','anu.t@example.com'),(14,2,'Mati Koppel','Matemaatika','51234513','mati.k@example.com'),(15,2,'Eve Põld','Eesti keel','51234514','eve.p@example.com'),(16,3,'Sander Kivi','Inglise keel','51234523','sander.k@example.com'),(17,4,'Heli Kull','Keemia','51234532','heli.k@example.com'),(18,4,'Indrek Vaher','Mehaanika','51234533','indrek.v@example.com'),(19,1,'Grete Saar','Ajalugu','51234506','grete.s@example.com'),(20,2,'Marko Linn','Majandus','51234515','marko.l@example.com');
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
INSERT INTO `õpetaja_õppeaine` VALUES (2,1),(14,1),(3,2),(15,2),(4,3),(16,3),(5,4),(18,4),(6,5),(17,5),(1,6),(12,6),(1,7),(13,7),(19,8),(9,9),(7,10),(8,11),(20,11),(10,12),(11,12);
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
  `versioon` int NOT NULL DEFAULT '1' COMMENT 'Versioon muudatusteks',
  PRIMARY KEY (`õpilane_id`),
  UNIQUE KEY `isikukood` (`isikukood`),
  KEY `rühm_id` (`rühm_id`),
  CONSTRAINT `õpilane_ibfk_1` FOREIGN KEY (`rühm_id`) REFERENCES `rühm` (`rühm_id`)
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Õpilaste andmed';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `õpilane`
--

LOCK TABLES `õpilane` WRITE;
/*!40000 ALTER TABLE `õpilane` DISABLE KEYS */;
INSERT INTO `õpilane` VALUES (1,'Mart Salum','50604080011',1,'58367772','mart.salum1@example.com',1),(2,'Joonas Saar','50802190017',1,'53086308','joonas.saar2@example.com',1),(3,'Maarja Tamm','60404080017',1,'58863447','maarja.tamm3@example.com',1),(4,'Tõnu Kivi','50807080010',1,'56101803','tõnu.kivi4@example.com',1),(5,'Siiri Rand','60403230011',1,'57752972','siiri.rand5@example.com',1),(6,'Merike Rand','60504250011',1,'55567533','merike.rand6@example.com',1),(7,'Katri Koppel','60702120013',1,'59396529','katri.koppel7@example.com',1),(8,'Piret Rand','60412150018',1,'59284509','piret.rand8@example.com',1),(9,'Kristjan Koppel','50805270016',1,'58344375','kristjan.koppel9@example.com',1),(10,'Siiri Kivi','60401220016',1,'52349590','siiri.kivi10@example.com',1),(11,'Merike Laas','50505240010',2,'56847201','merike.laas11@example.com',1),(12,'Juhan Lepik','50504090016',2,'58732044','juhan.lepik12@example.com',1),(13,'Liis Kann','60403220012',2,'58290321','liis.kann13@example.com',1),(14,'Aado Laas','50502050013',2,'55123049','aado.laas14@example.com',1),(15,'Reet Kuusk','60406170016',2,'55987612','reet.kuusk15@example.com',1),(16,'Evelin Poom','60505220018',2,'56789123','evelin.poom16@example.com',1),(17,'Kaur Ruut','60703280017',2,'57890123','kaur.ruut17@example.com',1),(18,'Piret Aas','60407100014',2,'58123456','piret.aas18@example.com',1),(19,'Kristiina Kull','50803120018',2,'57901234','kristiina.kull19@example.com',1),(20,'Siim Salum','60405280016',2,'57654321','siim.salum20@example.com',1),(21,'Anna Ploom','50601120013',3,'57432109','anna.ploom21@example.com',1),(22,'Priit Kann','50506220011',3,'57234567','priit.kann22@example.com',1),(23,'Kaisa Ruut','60408250017',3,'57123489','kaisa.ruut23@example.com',1),(24,'Rasmus Tamm','50509120018',3,'57012345','rasmus.tamm24@example.com',1),(25,'Erik Kuusk','60407020012',3,'56901234','erik.kuusk25@example.com',1),(26,'Liina Salum','60503280011',3,'56890123','liina.salum26@example.com',1),(27,'Annika Laas','60701050013',3,'56789012','annika.laas27@example.com',1),(28,'Maris Koppel','60402220018',3,'56678901','maris.koppel28@example.com',1),(29,'Triin Karus','50805080017',3,'56567890','triin.karus29@example.com',1),(30,'Aino Rand','60404120012',3,'56456789','aino.rand30@example.com',1),(31,'Katrin Ruut','50605220010',4,'56345678','katrin.ruut31@example.com',1),(32,'Marek Kann','50506020016',4,'56234567','marek.kann32@example.com',1),(33,'Heli Salum','60403290011',4,'56123456','heli.salum33@example.com',1),(34,'Indrek Laas','50502280018',4,'55987654','indrek.laas34@example.com',1),(35,'Grete Kann','60409220015',4,'55876543','grete.kann35@example.com',1),(36,'Markus Ploom','60508240011',4,'55765432','markus.ploom36@example.com',1),(37,'Kaisa Lepik','60706250013',4,'55654321','kaisa.lepik37@example.com',1),(38,'Rene Kask','60401150017',4,'55543210','rene.kask38@example.com',1),(39,'Liisa Kuusk','50807020011',4,'55432109','liisa.kuusk39@example.com',1),(40,'Karl Laas','60406280015',4,'55321098','karl.laas40@example.com',1),(41,'Anna Tamm','50605090012',5,'55210987','anna.tamm41@example.com',1),(42,'Siim Koppel','50504120013',5,'55109876','siim.koppel42@example.com',1),(43,'Maarit Rand','60408120018',5,'55098765','maarit.rand43@example.com',1),(44,'Viive Aas','50507220016',5,'54987654','viive.aas44@example.com',1),(45,'Reimo Kann','60410220011',5,'54876543','reimo.kann45@example.com',1),(46,'Eve Lepik','60505290014',5,'54765432','eve.lepik46@example.com',1),(47,'Rasmus Kask','60702280017',5,'54654321','rasmus.kask47@example.com',1),(48,'Helena Ploom','60401290015',5,'54543210','helena.ploom48@example.com',1),(49,'Katrin Salum','50806120011',5,'54432109','katrin.salum49@example.com',1),(50,'Mihkel Kivi','60405120016',5,'54321098','mihkel.kivi50@example.com',1),(51,'Liina Kann','50603220013',6,'54210987','liina.kann51@example.com',1),(52,'Erik Laas','50501120018',6,'54109876','erik.laas52@example.com',1),(53,'Ingrid Rand','60402290012',6,'54098765','ingrid.rand53@example.com',1),(54,'Rasmus Salum','50508220016',6,'53987654','rasmus.salum54@example.com',1),(55,'Merilin Kopp','60406210011',6,'53876543','merilin.kopp55@example.com',1),(56,'Peeter Lepik','60505120018',6,'53765432','peeter.lepik56@example.com',1),(57,'Sander Ruut','60703220013',6,'53654321','sander.ruut57@example.com',1),(58,'Kärt Salum','60410120015',6,'53543210','kärt.salum58@example.com',1),(59,'Merje Kann','50801220011',6,'53432109','merje.kann59@example.com',1),(60,'Aino Laas','60403210016',6,'53321098','aino.laas60@example.com',1),(61,'Katrin Tamm','50601220013',7,'53210987','katrin.tamm61@example.com',1),(63,'Marko Salum','505091200176',7,'53109876','marko.salum62@example.com',1),(64,'Maris Lepik','60406220011',7,'53098765','maris.lepik63@example.com',1),(65,'Sander Kask','50505220016',7,'52987654','sander.kask64@example.com',1),(66,'Liis Kann','60404220015',7,'52876543','liis.kann65@example.com',1),(67,'Annika Rand','60502220011',7,'52765432','annika.rand66@example.com',1),(68,'Terje Kuusk','60704220013',7,'52654321','terje.kuusk67@example.com',1),(69,'Rene Laas','60407020016',7,'52543210','rene.laas68@example.com',1),(70,'Kati Ploom','50801120011',7,'52432109','kati.ploom69@example.com',1),(71,'Maarja Salum','60401270015',7,'52321098','maarja.salum70@example.com',1),(72,'Erik Kann','50605220012',8,'52210987','erik.kann71@example.com',1),(73,'Katrin Laas','50503220018',8,'52109876','katrin.laas72@example.com',1),(74,'Grete Salum','60404120011',8,'52098765','grete.salum73@example.com',1),(75,'Siiri Kivi','50501220016',8,'51987654','siiri.kivi74@example.com',1),(76,'Priit Ploom','60403220013',8,'51876543','priit.ploom75@example.com',1),(78,'Kaisa Lepik','605022203011',8,'51765432','kaisa.lepik76@example.com',1),(79,'Maris Kull','60706220013',8,'51654321','maris.kull77@example.com',1),(80,'Tiina Ruut','60412120015',8,'51543210','tiina.ruut78@example.com',1),(81,'Mart Koppel','50804220011',8,'51432109','mart.koppel79@example.com',1),(82,'Rasmus Laas','60402220016',8,'51321098','rasmus.laas80@example.com',1),(83,'Katrin Kann','50607220013',9,'51210987','katrin.kann81@example.com',1),(84,'Heli Salum','50506220018',9,'51109876','heli.salum82@example.com',1),(85,'Indrek Ploom','60403220011',9,'51098765','indrek.ploom83@example.com',1),(86,'Grete Kivi','50509220016',9,'50987654','grete.kivi84@example.com',1),(87,'Juhan Laas','60406120015',9,'50876543','juhan.laas85@example.com',1),(88,'Liis Koppel','60505220011',9,'50765432','liis.koppel86@example.com',1),(89,'Kaupo Ruut','60702220013',9,'50654321','kaupo.ruut87@example.com',1),(90,'Anna Salum','60405120015',9,'50543210','anna.salum88@example.com',1),(92,'Marek Kann','508201220011',9,'50432109','marek.kann89@example.com',1),(93,'Siim Laas','60403220016',9,'50321098','siim.laas90@example.com',1),(95,'Maarja Ploom','506013220013',10,'50210987','maarja.ploom91@example.com',1),(96,'Rasmus Kivi','50507220018',10,'50109876','rasmus.kivi92@example.com',1),(97,'Liina Laas','60404220011',10,'50098765','liina.laas93@example.com',1),(98,'Katrin Kann','50503220016',10,'49987654','katrin.kann94@example.com',1),(99,'Peeter Salum','60405220015',10,'49876543','peeter.salum95@example.com',1),(101,'Mari Laas','605022230011',10,'49765432','mari.laas96@example.com',1),(103,'Erik Ploom','607062200143',10,'49654321','erik.ploom97@example.com',1),(104,'Liis Salum','604012210015',10,'49543210','liis.salum98@example.com',1),(105,'Markus Kivi','508022230011',10,'49432109','markus.kivi99@example.com',1),(106,'Ann Liis Laas','604062520016',10,'49321098','annliis.laas100@example.com',1);
/*!40000 ALTER TABLE `õpilane` ENABLE KEYS */;
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
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `õpilane_before_update` BEFORE UPDATE ON `õpilane` FOR EACH ROW BEGIN
    -- Lisa vana kirje ajaloo tabelisse enne uuendust
    INSERT INTO õpilane_history 
      (õpilane_id, nimi, isikukood, rühm_id, telefon, meil, versioon)
    VALUES
      (OLD.õpilane_id, OLD.nimi, OLD.isikukood, OLD.rühm_id, OLD.telefon, OLD.meil, OLD.versioon);

    -- Suurenda versiooni
    SET NEW.versioon = OLD.versioon + 1;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `õpilane_history`
--

DROP TABLE IF EXISTS `õpilane_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `õpilane_history` (
  `history_id` int NOT NULL AUTO_INCREMENT COMMENT 'History ID',
  `õpilane_id` int NOT NULL COMMENT 'Viide õpilasele',
  `nimi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Õpilase nimi (vana)',
  `isikukood` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Isikukood (vana)',
  `rühm_id` int NOT NULL COMMENT 'Rühm (vana)',
  `telefon` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Telefon (vana)',
  `meil` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Meil (vana)',
  `versioon` int NOT NULL COMMENT 'Versioon (vana)',
  `muudetud_aeg` datetime DEFAULT CURRENT_TIMESTAMP COMMENT 'Muudetud aeg',
  PRIMARY KEY (`history_id`),
  KEY `õpilane_id` (`õpilane_id`),
  CONSTRAINT `õpilane_history_ibfk_1` FOREIGN KEY (`õpilane_id`) REFERENCES `õpilane` (`õpilane_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Õpilaste andmete ajalooline tabel';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `õpilane_history`
--

LOCK TABLES `õpilane_history` WRITE;
/*!40000 ALTER TABLE `õpilane_history` DISABLE KEYS */;
INSERT INTO `õpilane_history` VALUES (1,1,'Karl Kask','50101010012',1,'51234501','karl.kask1@example.com',1,'2025-11-27 15:41:29'),(2,2,'Mari Maasik','50202020034',1,'51230002','mari.maasik@example.com',1,'2025-11-27 15:41:29'),(3,3,'Jaan Tamm','50303030056',2,'51230003','jaan.tamm@example.com',1,'2025-11-27 15:41:29');
/*!40000 ALTER TABLE `õpilane_history` ENABLE KEYS */;
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
INSERT INTO `õpilane_õppeaine` VALUES (1,1),(2,1),(3,1),(1,2),(2,2),(3,2),(1,3),(2,3),(3,3),(1,7),(2,7),(3,7);
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
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci COMMENT='Õppeained';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `õppeaine`
--

LOCK TABLES `õppeaine` WRITE;
/*!40000 ALTER TABLE `õppeaine` DISABLE KEYS */;
INSERT INTO `õppeaine` VALUES (1,'Matemaatika'),(2,'Eesti keel'),(3,'Inglise keel'),(4,'Füüsika'),(5,'Keemia'),(6,'Programmeerimine'),(7,'Andmebaasid'),(8,'Ajalugu'),(9,'Kehaline kasvatus'),(10,'Meedia'),(11,'Majandus'),(12,'Elekter');
/*!40000 ALTER TABLE `õppeaine` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'koolid'
--

--
-- Dumping routines for database 'koolid'
--
/*!50003 DROP PROCEDURE IF EXISTS `create_tunniplaan_for_semester` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `create_tunniplaan_for_semester`(IN p_tund_id INT, IN p_start DATE, IN p_end DATE)
BEGIN
    DECLARE v_date DATE;
    DECLARE v_weekday CHAR(1);
    DECLARE v_alg TIME;
    DECLARE v_lopp TIME;
    DECLARE v_r_id INT;
    DECLARE v_opp_id INT;
    DECLARE v_ope_id INT;
    DECLARE v_k_id INT;

    -- Loeme tunnimudeli andmed
    SELECT nädalapäev, algus, lõpp, rühm_id, õppeaine_id, õpetaja_id, klass_id
    INTO v_weekday, v_alg, v_lopp, v_r_id, v_opp_id, v_ope_id, v_k_id
    FROM tund WHERE tund_id = p_tund_id;

    SET v_date = p_start;
    WHILE v_date <= p_end DO
        -- Kontrollime, kas kuupäev vastab nädalapäevale
        IF (CASE DAYOFWEEK(v_date)
              WHEN 2 THEN 'E'
              WHEN 3 THEN 'T'
              WHEN 4 THEN 'K'
              WHEN 5 THEN 'N'
              WHEN 6 THEN 'R'
              ELSE NULL
            END) = v_weekday THEN

            -- Sisestame tunniplaani kirje; tungime sisse triggerite abil konfliktide kontrolli
            INSERT INTO tunniplaan (tund_id, rühm_id, õpetaja_id, õppeaine_id, klass_id, kuupäev, algus, lõpp)
            VALUES (p_tund_id, v_r_id, v_ope_id, v_opp_id, v_k_id, v_date, v_alg, v_lopp);
        END IF;

        SET v_date = DATE_ADD(v_date, INTERVAL 1 DAY);
    END WHILE;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `vaade_tunniplaan`
--

/*!50001 DROP VIEW IF EXISTS `vaade_tunniplaan`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vaade_tunniplaan` AS select `tp`.`tunniplaan_id` AS `tunniplaan_id`,`tp`.`kuupäev` AS `kuupäev`,`tp`.`algus` AS `algus`,`tp`.`lõpp` AS `lõpp`,`tp`.`staatus` AS `staatus`,`tp`.`rühm_id` AS `rühm_id`,`r`.`nimi` AS `rühm_nimi`,`tp`.`õpetaja_id` AS `õpetaja_id`,`op`.`nimi` AS `õpetaja_nimi`,`tp`.`õppeaine_id` AS `õppeaine_id`,`a`.`nimi` AS `aine_nimi`,`tp`.`klass_id` AS `klass_id`,`k`.`nimi` AS `klass_nimi` from ((((`tunniplaan` `tp` join `rühm` `r` on((`tp`.`rühm_id` = `r`.`rühm_id`))) join `õpetaja` `op` on((`tp`.`õpetaja_id` = `op`.`õpetaja_id`))) join `õppeaine` `a` on((`tp`.`õppeaine_id` = `a`.`õppeaine_id`))) join `klassiruum` `k` on((`tp`.`klass_id` = `k`.`klass_id`))) */;
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

-- Dump completed on 2025-11-27 15:47:57
