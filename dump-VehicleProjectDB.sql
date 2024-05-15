-- MySQL dump 10.13  Distrib 5.7.44, for Win64 (x86_64)
--
-- Host: localhost    Database: VehicleProjectDB
-- ------------------------------------------------------
-- Server version	5.7.44-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `vehicledetails`
--

DROP TABLE IF EXISTS `vehicledetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vehicledetails` (
  `Chasis Code` varchar(50) DEFAULT NULL,
  `Registration_Number` varchar(50) DEFAULT NULL,
  `Frame/Series` varchar(50) DEFAULT NULL,
  `Complecation` varchar(50) DEFAULT NULL,
  `Make` varchar(50) DEFAULT NULL,
  `Model` varchar(50) DEFAULT NULL,
  `Production Period` varchar(50) DEFAULT NULL,
  `Column8` varchar(50) DEFAULT NULL,
  `Prod. Date` varchar(50) DEFAULT NULL,
  `Engine` varchar(50) DEFAULT NULL,
  `Engine No.` varchar(50) DEFAULT NULL,
  `Transmission` varchar(50) DEFAULT NULL,
  `Drive` varchar(50) DEFAULT NULL,
  `Grade` varchar(50) DEFAULT NULL,
  `Body` varchar(50) DEFAULT NULL,
  `Body Colour Code` varchar(50) DEFAULT NULL,
  `Interior Colour` varchar(50) DEFAULT NULL,
  `Trim Code` varchar(50) DEFAULT NULL,
  `Options` varchar(50) DEFAULT NULL,
  `Catalog code` int(11) DEFAULT NULL,
  `Class` varchar(50) DEFAULT NULL,
  `AB_Owner` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vehicledetails`
--

LOCK TABLES `vehicledetails` WRITE;
/*!40000 ALTER TABLE `vehicledetails` DISABLE KEYS */;
INSERT INTO `vehicledetails` VALUES ('CE90-0063849','64-5659','CE90','CE90-AEMES','Toyota','Corolla','05.1987 - 06.1991','','1990/08','1C','1C-1584004','MTM','2WD','SE','4D','40','','','5F DSL ',151120,'Motor Car',''),('CT190-4027632','65-7066','CT190','CT190G-DWPMX','Toyota','Caldina','01.1996 - 08.1997','','1996/11','2CT','2C-3371187','ATM','2WD','FZ','WG','8L8','','FD12','4FC TD',274130,'Motor Car',''),('AE100-3107948','19-6825','AE100','AE100-AEMDK','Toyota','Corolla','06.1991 - 05.1995','','1992/04	','5AFE','5A-4702676','MTM','2WD','LX','4DS	','3K9','','','5F',151130,'Motor Car','LOLC Finance PLC'),('AE110-3021428','HD-2303','AE110','AE110-BEPEK','Toyota','Corolla','05.1995 - 08.2000','','1999/05','5AFE','5A-H312346','ATM','2WD','SE VIN','SED','57','','ZU14','4FC ',152140,'Motor Car','LOLC Finance PLC'),('CE110-5018624','GJ-5517','CE110','CE110-AEMNS','Toyota','Corolla','05.1995 - 04.1998','','1997/12','2C','2C-3572263','MTM','2WD','XESAL	','SED','1A5','','FS14	','5F ',151140,'Motor Car',''),('FB13-367046','HB-1030','FB13 / B13','','Nissan','Sunny','','','1993/06','GA15DS (1500 gasoline twincam cab)','GA15-554872C','ATM','2WD','S/SAL (Super Saloon)','4S (4-door sedan)','WK2','K','','',NULL,'Motor Car','People Leasing & Finance PLC'),('FB15-007992','GL-9348','FB15 / B15	','','Nissan','Sunny','','','1998/11','QG15DE (1500 gasoline )','QG15-209789','MTM','2WD','S/SAL (Super Saloon )	','S (sedan )','KG1','K','','',NULL,'Motor Car',''),('AHTFZ29G609063405','PG-0945','KUN26','KUN26R-PRMSYN	','Toyota','HILUX','10.2008  -  07.2011','','2011/07','1KDFTV','1KD5391282','ATM','4WD','SR','','209','','FX10','SR	EUR	RHD	DCB	SD	1KDFTV	DCR	5FC	CBU',NULL,'Dual Purpose ','People Leasing & Finance PLC'),('UZJ100-0135091','JH-8585','UZJ100','ZJ100W-GNPZK','Toyota','LAND CRUISER','01.1999 - 08.2002','','2001/01','2UZFE:4700CC 32-VALVE DOHC EF','2UZ-9037666','ATM','','CYG(CYGNUS)','','202','','LM40','4FC ',791150,'Motor Car','Nation Lanka Finance PLC'),('NKE165-7139765','','NKE165','NKE165-AEXEB','Toyota','DAA-NKE165 AXIO','03/2015 -	09/2017','','2016/09','1NZFXE','1NZ-1LM-R452817','ATM','','G','SED','70','','ZY26','',NULL,'Motor Car','Alliance Finance CO PLC');
/*!40000 ALTER TABLE `vehicledetails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'VehicleProjectDB'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-03-02 17:10:32
