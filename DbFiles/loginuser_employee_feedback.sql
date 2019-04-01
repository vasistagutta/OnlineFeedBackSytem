-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: loginuser
-- ------------------------------------------------------
-- Server version	5.7.18-log

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
-- Table structure for table `employee_feedback`
--

DROP TABLE IF EXISTS `employee_feedback`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `employee_feedback` (
  `sno` varchar(10) NOT NULL,
  `eno` varchar(10) NOT NULL,
  `ename` varchar(100) NOT NULL,
  `subject_code` varchar(10) NOT NULL,
  `title` varchar(100) NOT NULL,
  `academic_year` varchar(45) NOT NULL,
  `branch` varchar(10) NOT NULL,
  `semester` varchar(3) NOT NULL,
  `section` varchar(3) NOT NULL,
  `number10` varchar(15) NOT NULL,
  `number11` varchar(15) NOT NULL,
  `number12` varchar(15) NOT NULL,
  `number13` varchar(15) NOT NULL,
  `number14` varchar(15) NOT NULL,
  `number15` varchar(15) NOT NULL,
  `number16` varchar(15) NOT NULL,
  `number17` varchar(15) NOT NULL,
  `number18` varchar(15) NOT NULL,
  `number19` varchar(15) NOT NULL,
  `number20` varchar(15) NOT NULL,
  `comment1` varchar(200) NOT NULL,
  `comment2` varchar(200) NOT NULL,
  `comment3` varchar(200) NOT NULL,
  PRIMARY KEY (`sno`,`subject_code`,`academic_year`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee_feedback`
--

LOCK TABLES `employee_feedback` WRITE;
/*!40000 ALTER TABLE `employee_feedback` DISABLE KEYS */;
INSERT INTO `employee_feedback` VALUES ('y15cs807','CS111','DR NAGESH','CS312','CN','2017-18','CSE','5','A','excellent','excellent','good','poor','good','good','excellent','good','average','average','poor','qtyuip','rtrytuyu','rtryuiuj'),('y15cs812','CS111','DR NAGESH','CS312','CN','2017-18','CSE','5','A','excellent','good','average','poor','excellent','good','average','poor','excellent','good','excellent','dtytguyh','.,iuyntr','.l8764'),('y15cs830','CS111','DR NAGESH','CS312','CN','2017-18','CSE','5','A','good','average','excellent','average','good','good','poor','good','excellent','good','good','good','qadhg','bjkl/km'),('y15cs831','CS112','VENKATA RAMANA','CS313','UNIX','2017-18','CSE','5','A','average','excellent','good','good','good','average','good','average','good','good','excellent',',mmn b,njb','njkb,k','htdj'),('y15cs834','CS111','DR NAGESH','CS312','CN','2017-18','CSE','5','A','excellent','excellent','excellent','good','average','average','poor','poor','average','average','average','eghjhkj','hfdknkl mifjk','fbdln.f fl'),('y15cs841','CS111','DR NAGESH','CS312','CN','2017-18','CSE','5','A','excellent','average','poor','good','good','poor','excellent','average','good','good','poor','jvagklihjodk','jfakm,yuhij','jka89ujdkml'),('y15cs852','CS111','DR NAGESH','CS312','CN','2017-18','CSE','5','A','excellent','good','good','poor','excellent','average','average','excellent','poor','good','average','dkjjakf','damv,bdklj','adkjfhvbdjklfv'),('y15cs852','CS112','VENKATA RAMANA','CS313','UNIX','2017-18','CSE','5','A','good','excellent','excellent','excellent','poor','good','poor','good','average','average','good','nm','jk','njk,'),('y15cs852','CS113','B VARA PRASAD','CS315','WT','2017-18','CSE','5','A','good','excellent','excellent','excellent','good','good','good','good','poor','excellent','good','bhjkm','hjk','jhkl'),('y15cs855','CS111','DR NAGESH','CS312','CN','2017-18','CSE','5','A','excellent','excellent','good','good','good','good','good','excellent','average','good','excellent','ghj','ghjk','ghjk'),('y15cs855','CS112','VENKATA RAMANA','CS313','UNIX','2017-18','CSE','5','A','excellent','good','excellent','average','excellent','good','excellent','good','excellent','excellent','excellent','htdjm','hgfamjg,','hytju');
/*!40000 ALTER TABLE `employee_feedback` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-04-01 23:10:13
