-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               5.7.33 - MySQL Community Server (GPL)
-- Server OS:                    Win64
-- HeidiSQL Version:             11.2.0.6213
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for izglitibas iestade
CREATE DATABASE IF NOT EXISTS `izglitibas iestade` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `izglitibas iestade`;

-- Dumping structure for table izglitibas iestade.audzēkņi
CREATE TABLE IF NOT EXISTS `audzēkņi` (
  `audzēkņi_id` int(11) DEFAULT NULL,
  `personas kodu` char(50) DEFAULT NULL,
  `vārdu` char(50) DEFAULT NULL,
  `uzvārdu` char(50) DEFAULT NULL,
  `tālruņa numuru` int(11) DEFAULT NULL,
  `dzimšanas dienu` char(50) DEFAULT NULL,
  `vecumu` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table izglitibas iestade.audzēkņi: ~0 rows (approximately)
/*!40000 ALTER TABLE `audzēkņi` DISABLE KEYS */;
/*!40000 ALTER TABLE `audzēkņi` ENABLE KEYS */;

-- Dumping structure for table izglitibas iestade.diploma vērtējumi
CREATE TABLE IF NOT EXISTS `diploma vērtējumi` (
  `diploma vērtējumi_id` int(11) DEFAULT NULL,
  `vērtējums` int(11) DEFAULT NULL,
  `audzēkņi` char(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table izglitibas iestade.diploma vērtējumi: ~0 rows (approximately)
/*!40000 ALTER TABLE `diploma vērtējumi` DISABLE KEYS */;
/*!40000 ALTER TABLE `diploma vērtējumi` ENABLE KEYS */;

-- Dumping structure for table izglitibas iestade.grupas
CREATE TABLE IF NOT EXISTS `grupas` (
  `grupas_id` int(11) NOT NULL,
  `spec` int(11) NOT NULL,
  `nosaukums` char(50) DEFAULT NULL,
  `audzinātājas vārds` char(50) DEFAULT NULL,
  `uzvārds` char(50) DEFAULT NULL,
  PRIMARY KEY (`grupas_id`),
  KEY `FK_grupas_specialitātes` (`spec`) USING BTREE,
  CONSTRAINT `FK_grupas_specialitātes` FOREIGN KEY (`spec`) REFERENCES `specialitātes` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table izglitibas iestade.grupas: ~0 rows (approximately)
/*!40000 ALTER TABLE `grupas` DISABLE KEYS */;
/*!40000 ALTER TABLE `grupas` ENABLE KEYS */;

-- Dumping structure for table izglitibas iestade.metodiskās komisijas
CREATE TABLE IF NOT EXISTS `metodiskās komisijas` (
  `metodiskās komisijas_id` int(11) DEFAULT NULL,
  `metodiskās komisijas nosaukumu` char(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table izglitibas iestade.metodiskās komisijas: ~0 rows (approximately)
/*!40000 ALTER TABLE `metodiskās komisijas` DISABLE KEYS */;
/*!40000 ALTER TABLE `metodiskās komisijas` ENABLE KEYS */;

-- Dumping structure for table izglitibas iestade.mācību plāni
CREATE TABLE IF NOT EXISTS `mācību plāni` (
  `mācību plāni_id` int(11) DEFAULT NULL,
  `semestris` int(11) DEFAULT NULL,
  `teorētisko stundu skaits` int(11) DEFAULT NULL,
  `praktisko nodarbību stundu skaits` int(11) DEFAULT NULL,
  `priekšmeti` int(11) DEFAULT NULL,
  `grupa` int(11) DEFAULT NULL,
  `skolotāji` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table izglitibas iestade.mācību plāni: ~0 rows (approximately)
/*!40000 ALTER TABLE `mācību plāni` DISABLE KEYS */;
/*!40000 ALTER TABLE `mācību plāni` ENABLE KEYS */;

-- Dumping structure for table izglitibas iestade.priekšmeti
CREATE TABLE IF NOT EXISTS `priekšmeti` (
  `priekšmeti_id` int(11) DEFAULT NULL,
  `nosaukums` int(11) DEFAULT NULL,
  `kopējais teorētisko stundu skaits` int(11) DEFAULT NULL,
  `kopējais praktisko nodarbību skaits` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table izglitibas iestade.priekšmeti: ~0 rows (approximately)
/*!40000 ALTER TABLE `priekšmeti` DISABLE KEYS */;
/*!40000 ALTER TABLE `priekšmeti` ENABLE KEYS */;

-- Dumping structure for table izglitibas iestade.skolotāji
CREATE TABLE IF NOT EXISTS `skolotāji` (
  `skolotāji_id` int(11) NOT NULL,
  `vārdu` char(50) DEFAULT NULL,
  `uzvārdu` char(50) DEFAULT NULL,
  `tālruņa numuru` char(50) DEFAULT NULL,
  `darba stāžu` char(50) DEFAULT NULL,
  `metodiskās komisijas` int(11) DEFAULT NULL,
  PRIMARY KEY (`skolotāji_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table izglitibas iestade.skolotāji: ~0 rows (approximately)
/*!40000 ALTER TABLE `skolotāji` DISABLE KEYS */;
/*!40000 ALTER TABLE `skolotāji` ENABLE KEYS */;

-- Dumping structure for table izglitibas iestade.specialitātes
CREATE TABLE IF NOT EXISTS `specialitātes` (
  `programmas kodu` char(50) DEFAULT NULL,
  `nosaukums` char(50) DEFAULT NULL,
  `id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Dumping data for table izglitibas iestade.specialitātes: ~0 rows (approximately)
/*!40000 ALTER TABLE `specialitātes` DISABLE KEYS */;
/*!40000 ALTER TABLE `specialitātes` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
