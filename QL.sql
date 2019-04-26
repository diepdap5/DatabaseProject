-- MySQL dump 10.17  Distrib 10.3.11-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: QUANLY
-- ------------------------------------------------------
-- Server version	10.3.11-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `dichvu`
--

DROP TABLE IF EXISTS `dichvu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dichvu` (
  `MaDV` varchar(4) NOT NULL,
  `TenDV` varchar(40) DEFAULT NULL,
  `DonGia` int(11) DEFAULT NULL,
  PRIMARY KEY (`MaDV`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dichvu`
--

LOCK TABLES `dichvu` WRITE;
/*!40000 ALTER TABLE `dichvu` DISABLE KEYS */;
INSERT INTO `dichvu` VALUES ('A01','Banh bao chien',8000),('A02','Banh bao hap',7000),('A03','Banh mi bate',8000),('A04','Banh mi thap cam',20000),('A05','Banh mi thit',15000),('A06','Banh mi trung',10000),('A07','Bim bim',6000),('A08','Bo kho',20000),('A09','Bun ca',20000),('A10','Com rang dua bo',30000),('A11','Com rang thap cam',25000),('A12','Dau phong',10000),('A13','Ga xe cay',25000),('A14','Mi tom khong',10000),('A15','Mi tom trung',15000),('A16','Mi tom trung xuc xich',25000),('A17','Mi tom xuc xich',20000),('A18','Pho bo',25000),('A19','Xuc xich nho',5000),('A20','Xuc xich to',10000),('C1','May Loai 1',5000),('C2','May Loai 2',7000),('C3','May Loai 3',3500),('C4','May Loai 4',5500),('U01','7up',10000),('U02','Bo huc',15000),('U03','Fanta',10000),('U04','Mirinda soda kem',10000),('U05','Momster',35000),('U06','Nam ngu',25000),('U07','Nep cai hoa vang',80000),('U08','Nhan tran',3000),('U09','Nuoc cam',12000),('U10','Nuoc chuoi',12000),('U11','Nuoc dua',12000),('U12','Nuoc loc',5000),('U13','Nuoc mia',8000),('U14','Nuoc tao',12000),('U15','Nuoc xoai',12000),('U16','Pepsi',8000),('U17','Sochu',80000),('U18','Sting do',8000),('U19','Sting vang',7000),('U20','Tra dao',6000);
/*!40000 ALTER TABLE `dichvu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nguoidung`
--

DROP TABLE IF EXISTS `nguoidung`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nguoidung` (
  `TenTK` varchar(20) NOT NULL,
  `VIP` int(11) DEFAULT 0 CHECK (0 <= `VIP` <= 1),
  `SoDu` int(11) DEFAULT NULL,
  `NgayLap` date DEFAULT NULL,
  `TongTienNap` int(11) DEFAULT NULL,
  PRIMARY KEY (`TenTK`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nguoidung`
--

LOCK TABLES `nguoidung` WRITE;
/*!40000 ALTER TABLE `nguoidung` DISABLE KEYS */;
INSERT INTO `nguoidung` VALUES ('916B3',1,25000,'2016-01-03',4021000),('CAMEP',1,1200,'2017-04-24',4200000),('DUONGTANG',1,3700,'2018-01-06',7800000),('GAREN',1,50000,'2018-02-04',750000),('GINTOKI',0,4050,'2017-06-03',56000),('HOANG171',1,12000,'2017-01-01',2130000),('HUYEN4',1,56000,'2017-12-06',2500000),('ITACHI',0,0,'2018-01-01',1500000),('LUFFY',0,2600,'2016-06-18',862000),('MH370',0,3000,'2017-01-02',1502000),('OCSCHOS',0,12000,'2017-11-06',548000),('PHADO',0,3100,'2018-04-09',362400),('QAXZSW',0,2530,'2018-01-17',205000),('QUYNHBUPMANG',0,21500,'2018-08-08',50000),('QVCHA',0,2500,'2017-12-14',500000),('SANSAN',0,13240,'2017-05-08',256000),('SNSD',1,21000,'2017-05-01',2103000),('SONGOKU',1,9800,'2017-01-02',604000),('THICHNHOTRANG',0,4320,'2017-06-05',652000),('THINDEP',0,2500,'2016-05-05',4263000),('TOAN098',0,1200,'2017-12-30',25000),('TRICKY',1,21000,'2017-08-09',3050000),('UMIHARA',0,3500,'2017-02-02',2100500),('ZEDLOIKIEM',1,26000,'2017-10-14',5423100),('ZEUS',0,3600,'2018-01-23',450000);
/*!40000 ALTER TABLE `nguoidung` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nhanvien`
--

DROP TABLE IF EXISTS `nhanvien`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nhanvien` (
  `MSNV` int(11) NOT NULL,
  `TenNV` varchar(30) DEFAULT NULL,
  `CMT` varchar(12) DEFAULT NULL,
  `Luong` int(11) DEFAULT NULL,
  PRIMARY KEY (`MSNV`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nhanvien`
--

LOCK TABLES `nhanvien` WRITE;
/*!40000 ALTER TABLE `nhanvien` DISABLE KEYS */;
INSERT INTO `nhanvien` VALUES (1,'Hoang','123',20000),(2,'Thong','147',21000),(3,'Diep','159',22000),(4,'Huyen','987',18000),(5,'Tung','963',15000),(6,'Quang','951',16000);
/*!40000 ALTER TABLE `nhanvien` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sudung`
--

DROP TABLE IF EXISTS `sudung`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sudung` (
  `ThoiGian` datetime NOT NULL,
  `TenTK` varchar(20) NOT NULL,
  `MaDV` varchar(4) NOT NULL,
  `MSNV` int(11) DEFAULT NULL,
  `SoLuong` int(11) DEFAULT NULL,
  PRIMARY KEY (`ThoiGian`,`TenTK`,`MaDV`),
  KEY `TenTK` (`TenTK`),
  KEY `MaDV` (`MaDV`),
  KEY `MSNV` (`MSNV`),
  CONSTRAINT `sudung_ibfk_1` FOREIGN KEY (`TenTK`) REFERENCES `nguoidung` (`TenTK`),
  CONSTRAINT `sudung_ibfk_2` FOREIGN KEY (`MaDV`) REFERENCES `dichvu` (`MaDV`),
  CONSTRAINT `sudung_ibfk_3` FOREIGN KEY (`MSNV`) REFERENCES `nhanvien` (`MSNV`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sudung`
--

LOCK TABLES `sudung` WRITE;
/*!40000 ALTER TABLE `sudung` DISABLE KEYS */;
INSERT INTO `sudung` VALUES ('2017-11-01 11:34:00','umihara','C1',1,19),('2017-11-01 12:39:00','umihara','A19',2,7),('2017-11-01 12:40:00','umihara','A20',3,2),('2017-11-02 10:10:00','hoang171','C3',3,4),('2017-11-02 10:11:00','hoang171','A08',1,5),('2017-11-02 10:12:00','hoang171','U10',3,2),('2017-11-02 22:56:00','huyen4','C4',5,5),('2017-11-03 23:44:00','tricky','C3',2,12),('2017-11-03 23:49:00','tricky','A15',5,4),('2017-12-02 21:08:00','snsd','C3',4,2),('2017-12-02 21:09:00','snsd','A15',5,4),('2017-12-14 12:23:00','umihara','C2',3,5),('2017-12-14 13:24:00','umihara','U05',1,1),('2017-12-15 03:05:00','umihara','C2',2,1),('2017-12-15 06:04:00','toan098','A10',2,2),('2017-12-15 06:06:00','toan098','C1',3,3),('2017-12-18 10:29:00','916b3','C4',5,1),('2017-12-18 10:30:00','916b3','A08',5,2),('2017-12-19 13:40:00','duongtang','C3',1,1),('2017-12-20 05:37:00','huyen4','A05',2,1),('2017-12-21 16:12:00','zeus','A20',2,2),('2017-12-21 16:17:00','zeus','C1',5,14),('2017-12-22 17:42:00','zeus','A19',1,4),('2018-01-05 14:54:00','hoang171','C3',5,1),('2018-01-05 14:58:00','hoang171','C4',1,3),('2018-01-26 06:04:00','huyen4','U01',2,1),('2018-01-26 06:05:00','huyen4','A02',4,1),('2018-01-26 06:06:00','huyen4','A01',5,1),('2018-01-26 06:06:00','huyen4','C3',2,3),('2018-02-02 07:05:00','duongtang','U08',1,1),('2018-02-02 07:07:00','duongtang','C4',1,5),('2018-02-19 14:04:00','916b3','C4',4,3),('2018-02-19 14:05:00','916b3','U01',5,1),('2018-02-19 16:04:00','camep','C3',2,1),('2018-02-20 05:34:00','gintoki','C1',1,1),('2018-02-27 11:40:00','qaxzsw','U14',1,5),('2018-02-27 13:00:00','qaxzsw','A04',1,1),('2018-02-27 13:01:00','qaxzsw','C1',4,7),('2018-02-27 15:00:00','umihara','U08',3,1),('2018-02-27 15:45:00','umihara','C1',2,2),('2018-02-28 23:01:00','snsd','C3',4,2),('2018-02-28 23:05:00','tricky','A20',4,5),('2018-02-28 23:06:00','tricky','U17',5,2),('2018-02-28 23:17:00','tricky','C3',5,10),('2018-03-01 02:12:00','huyen4','U13',2,1),('2018-03-01 02:24:00','huyen4','C4',3,2),('2018-03-01 07:44:00','camep','C3',3,2),('2018-03-01 08:17:00','mh370','A18',2,1),('2018-03-01 08:22:00','mh370','A12',1,1),('2018-03-01 09:17:00','mh370','C2',5,4);
/*!40000 ALTER TABLE `sudung` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-12-21  9:10:46
