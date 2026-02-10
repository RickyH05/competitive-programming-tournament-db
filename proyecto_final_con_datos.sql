/*M!999999\- enable the sandbox mode */ 
-- MariaDB dump 10.19-12.1.2-MariaDB, for osx10.20 (arm64)
--
-- Host: localhost    Database: proyecto_final
-- ------------------------------------------------------
-- Server version	8.4.4

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*M!100616 SET @OLD_NOTE_VERBOSITY=@@NOTE_VERBOSITY, NOTE_VERBOSITY=0 */;

--
-- Table structure for table `administrador`
--

DROP TABLE IF EXISTS `administrador`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `administrador` (
  `Curp` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`Curp`),
  CONSTRAINT `administrador_participante_FK` FOREIGN KEY (`Curp`) REFERENCES `participante` (`Curp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `administrador`
--

LOCK TABLES `administrador` WRITE;
/*!40000 ALTER TABLE `administrador` DISABLE KEYS */;
set autocommit=0;
INSERT INTO `administrador` VALUES
('AoCLrZaWZkSBvrj02'),
('BcbfnoGMbJmTPSI01'),
('chXnygAdNbJGeXm'),
('CNUGBJCkVECqWpO48'),
('DCCRnGEYYVkQfsG43'),
('DdJphDiZDQHJMuW47'),
('DHqJaRUhRIWrXPv11'),
('ecveGprQFnIiUKK18'),
('EpYEZAmggQBwBAD19'),
('FbhxZtpdpKffUFe14'),
('fWdhjOkYRBMeyyM10'),
('GFqdfOBrcavXiOq31'),
('gwXJANVjpkZZlAb34'),
('hgVJjrsMnTvnROq30'),
('HkdGfleMeRpzhKp25'),
('hsBkDaUUqGWlGgO12'),
('IafWpkAFEnzdkya22'),
('ICiBlrDpeCZJgdP21'),
('IhyfJsONxKmTecQ04'),
('ITtNZPHaQJtQgiq29'),
('JfPElHaxyKoeyzg'),
('KgeInGqiwepxskC28'),
('kVCJTBJaheSjIcx32'),
('LJjBictxYcwnRpQ33'),
('lLqcgMBwUYuBMGh38'),
('LMcNfAQLKHuqnQT26'),
('lVvYAZQVZprkYSg35'),
('msndLVIdVuddLEG24'),
('NKtzJatsnBYLMPu42'),
('nWvgfygwwMqZcUD03'),
('oevbLJoLoaeTOdo17'),
('OhbVrpoiVgRVIfL00'),
('oXsfogyrDOxkxwn05'),
('pENXeDAOKmTSyFz45'),
('pjPSaWXgXBolZSH46'),
('pVJIqVLBLzxoiGF09'),
('QAuzSsJimAQyRVl41'),
('QmxBeQvNuQhUtGt40'),
('QONvfWpRtoZmjbc44'),
('QrSRPeMOkIUpkDy06'),
('renKTunPFzPDjqi08'),
('rOSJoRuXXdocZuz07'),
('rXXHFOprCeTsprv49'),
('tOGMmjxWkIXHaMu13'),
('UdRPPgdzUvZgpmm20'),
('upqziQPtDuWeaDN27'),
('vreXrwPGzRIvbhq37'),
('WIXiiQEJkqHMBnI15'),
('WUSmTtzQPxCHChp16'),
('XmbToYYOzDwHbMh'),
('ycEomDwtYoobQmz36'),
('yKmqcTBaHZIRUVV39'),
('yqYYDsBSUYJQTFj23');
/*!40000 ALTER TABLE `administrador` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `asciende`
--

DROP TABLE IF EXISTS `asciende`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `asciende` (
  `CurpN` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `CurpA` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `fecha` date NOT NULL,
  `hora` time NOT NULL,
  PRIMARY KEY (`CurpN`,`CurpA`),
  KEY `asciende_participante_FK` (`CurpA`),
  CONSTRAINT `asciende_administrador_FK` FOREIGN KEY (`CurpN`) REFERENCES `administrador` (`Curp`),
  CONSTRAINT `asciende_participante_FK` FOREIGN KEY (`CurpA`) REFERENCES `participante` (`Curp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `asciende`
--

LOCK TABLES `asciende` WRITE;
/*!40000 ALTER TABLE `asciende` DISABLE KEYS */;
set autocommit=0;
INSERT INTO `asciende` VALUES
('AoCLrZaWZkSBvrj02','nWvgfygwwMqZcUD03','2025-06-03','10:53:00'),
('BcbfnoGMbJmTPSI01','AoCLrZaWZkSBvrj02','2025-06-02','10:28:00'),
('CNUGBJCkVECqWpO48','rXXHFOprCeTsprv49','2025-06-21','10:34:00'),
('DCCRnGEYYVkQfsG43','QONvfWpRtoZmjbc44','2025-06-16','10:09:00'),
('DdJphDiZDQHJMuW47','CNUGBJCkVECqWpO48','2025-06-20','10:30:00'),
('DHqJaRUhRIWrXPv11','hsBkDaUUqGWlGgO12','2025-06-12','10:06:00'),
('ecveGprQFnIiUKK18','EpYEZAmggQBwBAD19','2025-06-19','10:13:00'),
('EpYEZAmggQBwBAD19','UdRPPgdzUvZgpmm20','2025-06-20','10:59:00'),
('FbhxZtpdpKffUFe14','WIXiiQEJkqHMBnI15','2025-06-15','10:19:00'),
('fWdhjOkYRBMeyyM10','DHqJaRUhRIWrXPv11','2025-06-11','10:06:00'),
('GFqdfOBrcavXiOq31','kVCJTBJaheSjIcx32','2025-06-04','10:24:00'),
('gwXJANVjpkZZlAb34','lVvYAZQVZprkYSg35','2025-06-07','10:16:00'),
('hgVJjrsMnTvnROq30','GFqdfOBrcavXiOq31','2025-06-03','10:27:00'),
('HkdGfleMeRpzhKp25','LMcNfAQLKHuqnQT26','2025-06-26','10:00:00'),
('hsBkDaUUqGWlGgO12','tOGMmjxWkIXHaMu13','2025-06-13','10:28:00'),
('IafWpkAFEnzdkya22','yqYYDsBSUYJQTFj23','2025-06-23','10:44:00'),
('ICiBlrDpeCZJgdP21','IafWpkAFEnzdkya22','2025-06-22','10:33:00'),
('IhyfJsONxKmTecQ04','oXsfogyrDOxkxwn05','2025-06-05','10:56:00'),
('ITtNZPHaQJtQgiq29','hgVJjrsMnTvnROq30','2025-06-02','10:03:00'),
('KgeInGqiwepxskC28','ITtNZPHaQJtQgiq29','2025-06-01','10:43:00'),
('kVCJTBJaheSjIcx32','LJjBictxYcwnRpQ33','2025-06-05','10:18:00'),
('LJjBictxYcwnRpQ33','gwXJANVjpkZZlAb34','2025-06-06','10:45:00'),
('lLqcgMBwUYuBMGh38','yKmqcTBaHZIRUVV39','2025-06-11','10:22:00'),
('LMcNfAQLKHuqnQT26','upqziQPtDuWeaDN27','2025-06-27','10:44:00'),
('lVvYAZQVZprkYSg35','ycEomDwtYoobQmz36','2025-06-08','10:43:00'),
('msndLVIdVuddLEG24','HkdGfleMeRpzhKp25','2025-06-25','10:31:00'),
('NKtzJatsnBYLMPu42','DCCRnGEYYVkQfsG43','2025-06-15','10:38:00'),
('nWvgfygwwMqZcUD03','IhyfJsONxKmTecQ04','2025-06-04','10:15:00'),
('oevbLJoLoaeTOdo17','ecveGprQFnIiUKK18','2025-06-18','10:49:00'),
('OhbVrpoiVgRVIfL00','BcbfnoGMbJmTPSI01','2025-06-01','10:17:00'),
('oXsfogyrDOxkxwn05','QrSRPeMOkIUpkDy06','2025-06-06','10:37:00'),
('pENXeDAOKmTSyFz45','pjPSaWXgXBolZSH46','2025-06-18','10:16:00'),
('pjPSaWXgXBolZSH46','DdJphDiZDQHJMuW47','2025-06-19','10:10:00'),
('pVJIqVLBLzxoiGF09','fWdhjOkYRBMeyyM10','2025-06-10','10:35:00'),
('QAuzSsJimAQyRVl41','NKtzJatsnBYLMPu42','2025-06-14','10:46:00'),
('QmxBeQvNuQhUtGt40','QAuzSsJimAQyRVl41','2025-06-13','10:37:00'),
('QONvfWpRtoZmjbc44','pENXeDAOKmTSyFz45','2025-06-17','10:15:00'),
('QrSRPeMOkIUpkDy06','rOSJoRuXXdocZuz07','2025-06-07','10:19:00'),
('renKTunPFzPDjqi08','pVJIqVLBLzxoiGF09','2025-06-09','10:21:00'),
('rOSJoRuXXdocZuz07','renKTunPFzPDjqi08','2025-06-08','10:06:00'),
('rXXHFOprCeTsprv49','OhbVrpoiVgRVIfL00','2025-06-22','10:14:00'),
('tOGMmjxWkIXHaMu13','FbhxZtpdpKffUFe14','2025-06-14','10:39:00'),
('UdRPPgdzUvZgpmm20','ICiBlrDpeCZJgdP21','2025-06-21','10:35:00'),
('upqziQPtDuWeaDN27','KgeInGqiwepxskC28','2025-06-28','10:33:00'),
('vreXrwPGzRIvbhq37','lLqcgMBwUYuBMGh38','2025-06-10','10:17:00'),
('WIXiiQEJkqHMBnI15','WUSmTtzQPxCHChp16','2025-06-16','10:16:00'),
('WUSmTtzQPxCHChp16','oevbLJoLoaeTOdo17','2025-06-17','10:28:00'),
('ycEomDwtYoobQmz36','vreXrwPGzRIvbhq37','2025-06-09','10:46:00'),
('yKmqcTBaHZIRUVV39','QmxBeQvNuQhUtGt40','2025-06-12','10:52:00'),
('yqYYDsBSUYJQTFj23','msndLVIdVuddLEG24','2025-06-24','10:22:00');
/*!40000 ALTER TABLE `asciende` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `categoria`
--

DROP TABLE IF EXISTS `categoria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `categoria` (
  `ID_problema` int NOT NULL,
  `Categoria` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`ID_problema`),
  CONSTRAINT `categoria_problema_FK` FOREIGN KEY (`ID_problema`) REFERENCES `problema` (`ID_problema`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categoria`
--

LOCK TABLES `categoria` WRITE;
/*!40000 ALTER TABLE `categoria` DISABLE KEYS */;
set autocommit=0;
INSERT INTO `categoria` VALUES
(1,'Bases de Datos'),
(2,'IA'),
(3,'Algoritmos'),
(4,'Algoritmos'),
(5,'IA'),
(6,'Redes'),
(7,'Redes'),
(8,'Seguridad Informática'),
(9,'Algoritmos'),
(10,'Seguridad Informática'),
(11,'Seguridad Informática'),
(12,'Bases de Datos'),
(13,'Programación'),
(14,'Bases de Datos'),
(15,'Redes'),
(16,'Redes'),
(17,'Redes'),
(18,'Seguridad Informática'),
(19,'IA'),
(20,'Seguridad Informática'),
(21,'Redes'),
(22,'Algoritmos'),
(23,'Algoritmos'),
(24,'Programación'),
(25,'Seguridad Informática'),
(26,'Seguridad Informática'),
(27,'Redes'),
(28,'IA'),
(29,'Bases de Datos'),
(30,'Seguridad Informática'),
(31,'Programación'),
(32,'Seguridad Informática'),
(33,'IA'),
(34,'Seguridad Informática'),
(35,'IA'),
(36,'Programación'),
(37,'Algoritmos'),
(38,'IA'),
(39,'Seguridad Informática'),
(40,'Algoritmos'),
(41,'Algoritmos'),
(42,'Programación'),
(43,'Seguridad Informática'),
(44,'Seguridad Informática'),
(45,'Bases de Datos'),
(46,'Algoritmos'),
(47,'IA'),
(48,'Redes'),
(49,'Algoritmos'),
(50,'Seguridad Informática'),
(501,'geometry'),
(502,'geometry'),
(503,'geometry'),
(504,'backtracking'),
(505,'backtracking'),
(506,'bruteforce'),
(507,'bruteforce'),
(508,'bruteforce'),
(509,'bruteforce'),
(510,'geometry'),
(511,'backtracking'),
(514,'backtracking'),
(515,'geometry'),
(516,'bruteforce');
/*!40000 ALTER TABLE `categoria` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `contiene`
--

DROP TABLE IF EXISTS `contiene`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `contiene` (
  `ID_problema` int NOT NULL,
  `ID_torneo` int NOT NULL,
  PRIMARY KEY (`ID_problema`),
  KEY `contiene_torneo_FK` (`ID_torneo`),
  CONSTRAINT `contiene_problema_FK` FOREIGN KEY (`ID_problema`) REFERENCES `problema` (`ID_problema`),
  CONSTRAINT `contiene_torneo_FK` FOREIGN KEY (`ID_torneo`) REFERENCES `torneo` (`ID_torneo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contiene`
--

LOCK TABLES `contiene` WRITE;
/*!40000 ALTER TABLE `contiene` DISABLE KEYS */;
set autocommit=0;
INSERT INTO `contiene` VALUES
(1,1),
(2,2),
(3,3),
(4,4),
(5,5),
(6,6),
(7,7),
(8,8),
(9,9),
(10,10),
(11,11),
(12,12),
(13,13),
(14,14),
(15,15),
(16,16),
(17,17),
(18,18),
(19,19),
(20,20),
(21,21),
(22,22),
(23,23),
(24,24),
(25,25),
(26,26),
(27,27),
(28,28),
(29,29),
(30,30),
(31,31),
(32,32),
(33,33),
(34,34),
(35,35),
(36,36),
(37,37),
(38,38),
(39,39),
(40,40),
(41,41),
(42,42),
(43,43),
(44,44),
(45,45),
(46,46),
(47,47),
(48,48),
(49,49),
(50,50),
(508,301),
(509,301),
(510,301),
(511,301),
(505,302),
(506,302),
(507,302),
(514,302),
(515,302),
(516,302),
(501,303),
(502,303),
(503,304),
(504,304);
/*!40000 ALTER TABLE `contiene` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `enviae`
--

DROP TABLE IF EXISTS `enviae`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `enviae` (
  `ID_equipo` int NOT NULL,
  `ID_problema` int NOT NULL,
  `fecha` date NOT NULL,
  `hora` time NOT NULL,
  `lenguaje` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `resultado` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `tiempo_ejecucion` time NOT NULL,
  `intentos` int NOT NULL,
  PRIMARY KEY (`ID_equipo`),
  KEY `enviaE_problema_FK` (`ID_problema`),
  CONSTRAINT `enviaE_equipo_FK` FOREIGN KEY (`ID_equipo`) REFERENCES `equipo` (`ID_equipo`),
  CONSTRAINT `enviaE_problema_FK` FOREIGN KEY (`ID_problema`) REFERENCES `problema` (`ID_problema`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `enviae`
--

LOCK TABLES `enviae` WRITE;
/*!40000 ALTER TABLE `enviae` DISABLE KEYS */;
set autocommit=0;
INSERT INTO `enviae` VALUES
(1,1,'2025-04-01','12:00:00','C++','Aceptado','00:02:37',3),
(2,2,'2025-04-02','12:00:00','Python','Aceptado','00:02:57',2),
(3,3,'2025-04-03','12:00:00','Python','Aceptado','00:02:53',3),
(4,4,'2025-04-04','12:00:00','Java','Aceptado','00:01:10',3),
(5,5,'2025-04-05','12:00:00','Java','Aceptado','00:02:42',3),
(6,6,'2025-04-06','12:00:00','Python','Aceptado','00:02:46',5),
(7,7,'2025-04-07','12:00:00','C++','Aceptado','00:02:33',2),
(8,8,'2025-04-08','12:00:00','C++','Aceptado','00:02:51',4),
(9,9,'2025-04-09','12:00:00','Python','Aceptado','00:01:12',5),
(10,10,'2025-04-10','12:00:00','C++','Aceptado','00:01:19',1),
(11,11,'2025-04-11','12:00:00','Java','Aceptado','00:01:20',4),
(12,12,'2025-04-12','12:00:00','C++','Aceptado','00:02:29',4),
(13,13,'2025-04-13','12:00:00','Java','Aceptado','00:02:52',2),
(14,14,'2025-04-14','12:00:00','Java','Aceptado','00:01:58',4),
(15,15,'2025-04-15','12:00:00','C++','Aceptado','00:02:24',4),
(16,16,'2025-04-16','12:00:00','Java','Aceptado','00:02:19',1),
(17,17,'2025-04-17','12:00:00','C++','Aceptado','00:02:29',2),
(18,18,'2025-04-18','12:00:00','Java','Aceptado','00:01:54',4),
(19,19,'2025-04-19','12:00:00','Python','Aceptado','00:02:48',5),
(20,20,'2025-04-20','12:00:00','Python','Aceptado','00:02:31',5),
(21,21,'2025-04-21','12:00:00','Python','Aceptado','00:02:11',3),
(22,22,'2025-04-22','12:00:00','Python','Aceptado','00:01:42',4),
(23,23,'2025-04-23','12:00:00','Java','Aceptado','00:01:49',5),
(24,24,'2025-04-24','12:00:00','C++','Aceptado','00:01:22',4),
(25,25,'2025-04-25','12:00:00','Java','Aceptado','00:01:52',5),
(26,26,'2025-04-26','12:00:00','Java','Aceptado','00:02:12',5),
(27,27,'2025-04-27','12:00:00','C++','Aceptado','00:02:33',5),
(28,28,'2025-04-28','12:00:00','Python','Aceptado','00:02:50',1),
(29,29,'2025-04-01','12:00:00','Python','Aceptado','00:02:18',3),
(30,30,'2025-04-02','12:00:00','C++','Aceptado','00:02:51',2),
(31,31,'2025-04-03','12:00:00','Java','Aceptado','00:01:36',5),
(32,32,'2025-04-04','12:00:00','Python','Aceptado','00:01:49',5),
(33,33,'2025-04-05','12:00:00','Python','Aceptado','00:01:22',5),
(34,34,'2025-04-06','12:00:00','Python','Aceptado','00:02:36',3),
(35,35,'2025-04-07','12:00:00','Python','Aceptado','00:01:48',3),
(36,36,'2025-04-08','12:00:00','Python','Aceptado','00:01:14',5),
(37,37,'2025-04-09','12:00:00','Java','Aceptado','00:01:38',3),
(38,38,'2025-04-10','12:00:00','Python','Aceptado','00:01:26',3),
(39,39,'2025-04-11','12:00:00','C++','Aceptado','00:01:41',4),
(40,40,'2025-04-12','12:00:00','Python','Aceptado','00:02:51',3),
(41,41,'2025-04-13','12:00:00','Python','Aceptado','00:02:15',1),
(42,42,'2025-04-14','12:00:00','C++','Aceptado','00:02:30',3),
(43,43,'2025-04-15','12:00:00','C++','Aceptado','00:01:49',4),
(44,44,'2025-04-16','12:00:00','Java','Aceptado','00:02:22',5),
(45,45,'2025-04-17','12:00:00','C++','Aceptado','00:02:54',5),
(46,46,'2025-04-18','12:00:00','C++','Aceptado','00:01:14',1),
(47,47,'2025-04-19','12:00:00','C++','Aceptado','00:01:40',3),
(48,48,'2025-04-20','12:00:00','Java','Aceptado','00:02:34',1),
(49,49,'2025-04-21','12:00:00','C++','Aceptado','00:02:28',5),
(50,50,'2025-04-22','12:00:00','Java','Aceptado','00:01:10',1),
(901,508,'2025-06-10','10:00:00','C++','Accepted','00:01:25',1),
(902,508,'2025-06-10','10:10:00','Python','Accepted','00:01:15',1),
(903,508,'2025-06-10','10:20:00','C++','Accepted','00:01:39',1);
/*!40000 ALTER TABLE `enviae` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `enviol`
--

DROP TABLE IF EXISTS `enviol`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `enviol` (
  `ID_problema` int NOT NULL,
  `Curp` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `Fecha` date NOT NULL,
  `Hora` time NOT NULL,
  `Lenguaje` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `Resultado` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `Tiempo_ejecucion` time NOT NULL,
  `Intentos` int NOT NULL,
  PRIMARY KEY (`ID_problema`,`Curp`),
  KEY `enviol_participante_FK` (`Curp`),
  CONSTRAINT `enviol_participante_FK` FOREIGN KEY (`Curp`) REFERENCES `participante` (`Curp`),
  CONSTRAINT `enviol_problema_FK` FOREIGN KEY (`ID_problema`) REFERENCES `problema` (`ID_problema`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `enviol`
--

LOCK TABLES `enviol` WRITE;
/*!40000 ALTER TABLE `enviol` DISABLE KEYS */;
set autocommit=0;
INSERT INTO `enviol` VALUES
(1,'OhbVrpoiVgRVIfL00','2025-04-01','13:00:00','Python','Aceptado','00:03:16',4),
(2,'BcbfnoGMbJmTPSI01','2025-04-02','13:00:00','Python','Aceptado','00:04:46',1),
(3,'AoCLrZaWZkSBvrj02','2025-04-03','13:00:00','Python','Aceptado','00:04:42',3),
(4,'nWvgfygwwMqZcUD03','2025-04-04','13:00:00','Java','Aceptado','00:04:39',2),
(5,'IhyfJsONxKmTecQ04','2025-04-05','13:00:00','Java','Aceptado','00:03:34',2),
(6,'oXsfogyrDOxkxwn05','2025-04-06','13:00:00','Python','Aceptado','00:03:26',3),
(7,'QrSRPeMOkIUpkDy06','2025-04-07','13:00:00','Java','Aceptado','00:02:52',1),
(8,'rOSJoRuXXdocZuz07','2025-04-08','13:00:00','C++','Aceptado','00:04:21',4),
(9,'renKTunPFzPDjqi08','2025-04-09','13:00:00','Java','Aceptado','00:02:47',2),
(10,'pVJIqVLBLzxoiGF09','2025-04-10','13:00:00','Python','Aceptado','00:02:45',4),
(11,'fWdhjOkYRBMeyyM10','2025-04-11','13:00:00','Python','Aceptado','00:04:35',1),
(12,'DHqJaRUhRIWrXPv11','2025-04-12','13:00:00','Python','Aceptado','00:03:46',3),
(13,'hsBkDaUUqGWlGgO12','2025-04-13','13:00:00','Java','Aceptado','00:02:36',1),
(14,'tOGMmjxWkIXHaMu13','2025-04-14','13:00:00','C++','Aceptado','00:03:21',3),
(15,'FbhxZtpdpKffUFe14','2025-04-15','13:00:00','C++','Aceptado','00:04:54',3),
(16,'WIXiiQEJkqHMBnI15','2025-04-16','13:00:00','Python','Aceptado','00:04:51',4),
(17,'WUSmTtzQPxCHChp16','2025-04-17','13:00:00','C++','Aceptado','00:02:24',1),
(18,'oevbLJoLoaeTOdo17','2025-04-18','13:00:00','Java','Aceptado','00:04:47',2),
(19,'ecveGprQFnIiUKK18','2025-04-19','13:00:00','C++','Aceptado','00:02:34',5),
(20,'EpYEZAmggQBwBAD19','2025-04-20','13:00:00','Python','Aceptado','00:04:40',5),
(21,'UdRPPgdzUvZgpmm20','2025-04-21','13:00:00','Java','Aceptado','00:03:55',2),
(22,'ICiBlrDpeCZJgdP21','2025-04-22','13:00:00','Java','Aceptado','00:02:39',4),
(23,'IafWpkAFEnzdkya22','2025-04-23','13:00:00','Python','Aceptado','00:03:16',1),
(24,'yqYYDsBSUYJQTFj23','2025-04-24','13:00:00','Java','Aceptado','00:02:33',1),
(25,'msndLVIdVuddLEG24','2025-04-25','13:00:00','Java','Aceptado','00:03:29',5),
(26,'HkdGfleMeRpzhKp25','2025-04-26','13:00:00','Java','Aceptado','00:02:40',5),
(27,'LMcNfAQLKHuqnQT26','2025-04-27','13:00:00','C++','Aceptado','00:02:34',4),
(28,'upqziQPtDuWeaDN27','2025-04-28','13:00:00','C++','Aceptado','00:02:56',1),
(29,'KgeInGqiwepxskC28','2025-04-01','13:00:00','C++','Aceptado','00:04:34',4),
(30,'ITtNZPHaQJtQgiq29','2025-04-02','13:00:00','Python','Aceptado','00:02:54',5),
(31,'hgVJjrsMnTvnROq30','2025-04-03','13:00:00','Python','Aceptado','00:02:36',1),
(32,'GFqdfOBrcavXiOq31','2025-04-04','13:00:00','C++','Aceptado','00:03:37',2),
(33,'kVCJTBJaheSjIcx32','2025-04-05','13:00:00','Python','Aceptado','00:02:38',1),
(34,'LJjBictxYcwnRpQ33','2025-04-06','13:00:00','Python','Aceptado','00:04:35',5),
(35,'gwXJANVjpkZZlAb34','2025-04-07','13:00:00','Python','Aceptado','00:03:10',4),
(36,'lVvYAZQVZprkYSg35','2025-04-08','13:00:00','Java','Aceptado','00:02:30',4),
(37,'ycEomDwtYoobQmz36','2025-04-09','13:00:00','Python','Aceptado','00:02:58',1),
(38,'vreXrwPGzRIvbhq37','2025-04-10','13:00:00','C++','Aceptado','00:02:17',1),
(39,'lLqcgMBwUYuBMGh38','2025-04-11','13:00:00','Java','Aceptado','00:02:20',3),
(40,'yKmqcTBaHZIRUVV39','2025-04-12','13:00:00','C++','Aceptado','00:04:23',3),
(41,'QmxBeQvNuQhUtGt40','2025-04-13','13:00:00','Java','Aceptado','00:04:59',4),
(42,'QAuzSsJimAQyRVl41','2025-04-14','13:00:00','Java','Aceptado','00:02:23',2),
(43,'NKtzJatsnBYLMPu42','2025-04-15','13:00:00','C++','Aceptado','00:03:29',5),
(44,'DCCRnGEYYVkQfsG43','2025-04-16','13:00:00','C++','Aceptado','00:04:30',4),
(45,'QONvfWpRtoZmjbc44','2025-04-17','13:00:00','Python','Aceptado','00:02:31',1),
(46,'pENXeDAOKmTSyFz45','2025-04-18','13:00:00','Java','Aceptado','00:02:54',5),
(47,'pjPSaWXgXBolZSH46','2025-04-19','13:00:00','C++','Aceptado','00:02:24',5),
(48,'DdJphDiZDQHJMuW47','2025-04-20','13:00:00','C++','Aceptado','00:04:57',3),
(49,'CNUGBJCkVECqWpO48','2025-04-21','13:00:00','Java','Aceptado','00:02:29',2),
(50,'rXXHFOprCeTsprv49','2025-04-22','13:00:00','Java','Aceptado','00:03:18',3),
(501,'XmbToYYOzDwHbMh','2024-05-10','10:00:00','Python','Accepted','00:01:20',1),
(502,'JfPElHaxyKoeyzg','2024-05-10','10:10:00','Python','Accepted','00:01:15',1),
(503,'chXnygAdNbJGeXm','2024-08-15','09:45:00','C++','Accepted','00:01:40',1),
(504,'chXnygAdNbJGeXm','2024-08-15','10:00:00','C++','Wrong Answer','00:02:00',2),
(505,'chXnygAdNbJGeXm','2025-06-20','10:10:00','Python','Wrong Answer','00:01:50',2),
(506,'chXnygAdNbJGeXm','2025-06-21','12:00:00','Python','Accepted','00:01:30',1),
(506,'XmbToYYOzDwHbMh','2025-06-20','10:31:00','Python','Accepted','00:01:25',1),
(507,'chXnygAdNbJGeXm','2025-06-20','10:40:00','Python','Time Limit','00:05:00',1),
(507,'GOLDLplDYrlOvlc','2025-06-21','13:00:00','Java','Accepted','00:01:20',1),
(507,'XmbToYYOzDwHbMh','2025-06-20','10:41:00','Python','Accepted','00:01:20',1),
(508,'XmbToYYOzDwHbMh','2025-06-10','09:30:00','Python','Accepted','00:01:00',1),
(510,'XmbToYYOzDwHbMh','2025-06-22','12:30:00','Python','Accepted','00:01:30',1),
(511,'XmbToYYOzDwHbMh','2025-06-20','13:15:00','C++','Compilation Error','00:00:00',1),
(512,'XmbToYYOzDwHbMh','2025-06-20','13:20:00','Python','Time Limit','00:05:00',1),
(513,'XmbToYYOzDwHbMh','2025-06-20','13:10:00','Python','Wrong Answer','00:02:00',2),
(514,'XmbToYYOzDwHbMh','2025-06-23','10:10:00','Python','Compilation Error','00:00:00',1),
(515,'XmbToYYOzDwHbMh','2025-06-23','10:20:00','Python','Accepted','00:01:10',1),
(516,'XmbToYYOzDwHbMh','2025-06-23','10:30:00','C++','Wrong Answer','00:01:40',2);
/*!40000 ALTER TABLE `enviol` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `equipo`
--

DROP TABLE IF EXISTS `equipo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `equipo` (
  `ID_equipo` int NOT NULL,
  `nombre_equipo` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`ID_equipo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `equipo`
--

LOCK TABLES `equipo` WRITE;
/*!40000 ALTER TABLE `equipo` DISABLE KEYS */;
set autocommit=0;
INSERT INTO `equipo` VALUES
(1,'Nazario-Quesada'),
(2,'Quiñónez,'),
(3,'Club'),
(4,'Proyectos'),
(5,'Zarate,'),
(6,'Corporacin'),
(7,'Corporacin'),
(8,'Laboratorios'),
(9,'Arias'),
(10,'Laureano,'),
(11,'Narváez,'),
(12,'Collazo'),
(13,'Aragón'),
(14,'Proyectos'),
(15,'Valverde,'),
(16,'Laboratorios'),
(17,'Quiroz-Bermúdez'),
(18,'Industrias'),
(19,'Leiva-Haro'),
(20,'Escamilla'),
(21,'Valenzuela,'),
(22,'Laboratorios'),
(23,'Feliciano'),
(24,'Razo-de'),
(25,'Brito'),
(26,'Barragán-Urbina'),
(27,'Corporacin'),
(28,'Despacho'),
(29,'Proyectos'),
(30,'Urrutia-Vega'),
(31,'Ureña'),
(32,'Barraza-Mares'),
(33,'Roque,'),
(34,'Velasco,'),
(35,'Benavides-Rascón'),
(36,'Cazares-Ureña'),
(37,'Proyectos'),
(38,'Castellanos'),
(39,'Corporacin'),
(40,'Garza-Montemayor'),
(41,'Proyectos'),
(42,'Grupo'),
(43,'Industrias'),
(44,'Laboratorios'),
(45,'Anaya'),
(46,'Velázquez'),
(47,'Proyectos'),
(48,'Salinas'),
(49,'Laboratorios'),
(50,'Luevano,'),
(901,'Jaguares'),
(902,'Halcones'),
(903,'Códigos Locos');
/*!40000 ALTER TABLE `equipo` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `gano`
--

DROP TABLE IF EXISTS `gano`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `gano` (
  `ID_medalla` int NOT NULL,
  `Curp` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `fecha` date NOT NULL,
  PRIMARY KEY (`ID_medalla`),
  KEY `gano_participante_FK` (`Curp`),
  CONSTRAINT `gano_medalla_FK` FOREIGN KEY (`ID_medalla`) REFERENCES `medalla` (`ID_medalla`),
  CONSTRAINT `gano_participante_FK` FOREIGN KEY (`Curp`) REFERENCES `participante` (`Curp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gano`
--

LOCK TABLES `gano` WRITE;
/*!40000 ALTER TABLE `gano` DISABLE KEYS */;
set autocommit=0;
INSERT INTO `gano` VALUES
(1,'OhbVrpoiVgRVIfL00','2025-04-01'),
(2,'BcbfnoGMbJmTPSI01','2025-04-02'),
(3,'AoCLrZaWZkSBvrj02','2025-04-03'),
(4,'nWvgfygwwMqZcUD03','2025-04-04'),
(5,'IhyfJsONxKmTecQ04','2025-04-05'),
(6,'oXsfogyrDOxkxwn05','2025-04-06'),
(7,'QrSRPeMOkIUpkDy06','2025-04-07'),
(8,'rOSJoRuXXdocZuz07','2025-04-08'),
(9,'renKTunPFzPDjqi08','2025-04-09'),
(10,'pVJIqVLBLzxoiGF09','2025-04-10'),
(11,'fWdhjOkYRBMeyyM10','2025-04-11'),
(12,'DHqJaRUhRIWrXPv11','2025-04-12'),
(13,'hsBkDaUUqGWlGgO12','2025-04-13'),
(14,'tOGMmjxWkIXHaMu13','2025-04-14'),
(15,'FbhxZtpdpKffUFe14','2025-04-15'),
(16,'WIXiiQEJkqHMBnI15','2025-04-16'),
(17,'WUSmTtzQPxCHChp16','2025-04-17'),
(18,'oevbLJoLoaeTOdo17','2025-04-18'),
(19,'ecveGprQFnIiUKK18','2025-04-19'),
(20,'EpYEZAmggQBwBAD19','2025-04-20'),
(21,'UdRPPgdzUvZgpmm20','2025-04-21'),
(22,'ICiBlrDpeCZJgdP21','2025-04-22'),
(23,'IafWpkAFEnzdkya22','2025-04-23'),
(24,'yqYYDsBSUYJQTFj23','2025-04-24'),
(25,'msndLVIdVuddLEG24','2025-04-25'),
(26,'HkdGfleMeRpzhKp25','2025-04-26'),
(27,'LMcNfAQLKHuqnQT26','2025-04-27'),
(28,'upqziQPtDuWeaDN27','2025-04-28'),
(29,'KgeInGqiwepxskC28','2025-04-01'),
(30,'ITtNZPHaQJtQgiq29','2025-04-02'),
(31,'hgVJjrsMnTvnROq30','2025-04-03'),
(32,'GFqdfOBrcavXiOq31','2025-04-04'),
(33,'kVCJTBJaheSjIcx32','2025-04-05'),
(34,'LJjBictxYcwnRpQ33','2025-04-06'),
(35,'gwXJANVjpkZZlAb34','2025-04-07'),
(36,'lVvYAZQVZprkYSg35','2025-04-08'),
(37,'ycEomDwtYoobQmz36','2025-04-09'),
(38,'vreXrwPGzRIvbhq37','2025-04-10'),
(39,'lLqcgMBwUYuBMGh38','2025-04-11'),
(40,'yKmqcTBaHZIRUVV39','2025-04-12'),
(41,'QmxBeQvNuQhUtGt40','2025-04-13'),
(42,'QAuzSsJimAQyRVl41','2025-04-14'),
(43,'NKtzJatsnBYLMPu42','2025-04-15'),
(44,'DCCRnGEYYVkQfsG43','2025-04-16'),
(45,'QONvfWpRtoZmjbc44','2025-04-17'),
(46,'pENXeDAOKmTSyFz45','2025-04-18'),
(47,'pjPSaWXgXBolZSH46','2025-04-19'),
(48,'DdJphDiZDQHJMuW47','2025-04-20'),
(49,'CNUGBJCkVECqWpO48','2025-04-21'),
(50,'rXXHFOprCeTsprv49','2025-04-22');
/*!40000 ALTER TABLE `gano` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `medalla`
--

DROP TABLE IF EXISTS `medalla`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `medalla` (
  `ID_medalla` int NOT NULL,
  `nombre` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `descripcion` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `condicion` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`ID_medalla`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medalla`
--

LOCK TABLES `medalla` WRITE;
/*!40000 ALTER TABLE `medalla` DISABLE KEYS */;
set autocommit=0;
INSERT INTO `medalla` VALUES
(1,'Medalla 1','Reconocimiento por desempeño en el torneo 1','Obtuvo el mejor tiempo'),
(2,'Medalla 2','Reconocimiento por desempeño en el torneo 2','Obtuvo el mejor tiempo'),
(3,'Medalla 3','Reconocimiento por desempeño en el torneo 3','Obtuvo el mejor tiempo'),
(4,'Medalla 4','Reconocimiento por desempeño en el torneo 4','Obtuvo el mejor tiempo'),
(5,'Medalla 5','Reconocimiento por desempeño en el torneo 5','Obtuvo el mejor tiempo'),
(6,'Medalla 6','Reconocimiento por desempeño en el torneo 6','Obtuvo el mejor tiempo'),
(7,'Medalla 7','Reconocimiento por desempeño en el torneo 7','Obtuvo el mejor tiempo'),
(8,'Medalla 8','Reconocimiento por desempeño en el torneo 8','Obtuvo el mejor tiempo'),
(9,'Medalla 9','Reconocimiento por desempeño en el torneo 9','Obtuvo el mejor tiempo'),
(10,'Medalla 10','Reconocimiento por desempeño en el torneo 10','Obtuvo el mejor tiempo'),
(11,'Medalla 11','Reconocimiento por desempeño en el torneo 11','Obtuvo el mejor tiempo'),
(12,'Medalla 12','Reconocimiento por desempeño en el torneo 12','Obtuvo el mejor tiempo'),
(13,'Medalla 13','Reconocimiento por desempeño en el torneo 13','Obtuvo el mejor tiempo'),
(14,'Medalla 14','Reconocimiento por desempeño en el torneo 14','Obtuvo el mejor tiempo'),
(15,'Medalla 15','Reconocimiento por desempeño en el torneo 15','Obtuvo el mejor tiempo'),
(16,'Medalla 16','Reconocimiento por desempeño en el torneo 16','Obtuvo el mejor tiempo'),
(17,'Medalla 17','Reconocimiento por desempeño en el torneo 17','Obtuvo el mejor tiempo'),
(18,'Medalla 18','Reconocimiento por desempeño en el torneo 18','Obtuvo el mejor tiempo'),
(19,'Medalla 19','Reconocimiento por desempeño en el torneo 19','Obtuvo el mejor tiempo'),
(20,'Medalla 20','Reconocimiento por desempeño en el torneo 20','Obtuvo el mejor tiempo'),
(21,'Medalla 21','Reconocimiento por desempeño en el torneo 21','Obtuvo el mejor tiempo'),
(22,'Medalla 22','Reconocimiento por desempeño en el torneo 22','Obtuvo el mejor tiempo'),
(23,'Medalla 23','Reconocimiento por desempeño en el torneo 23','Obtuvo el mejor tiempo'),
(24,'Medalla 24','Reconocimiento por desempeño en el torneo 24','Obtuvo el mejor tiempo'),
(25,'Medalla 25','Reconocimiento por desempeño en el torneo 25','Obtuvo el mejor tiempo'),
(26,'Medalla 26','Reconocimiento por desempeño en el torneo 26','Obtuvo el mejor tiempo'),
(27,'Medalla 27','Reconocimiento por desempeño en el torneo 27','Obtuvo el mejor tiempo'),
(28,'Medalla 28','Reconocimiento por desempeño en el torneo 28','Obtuvo el mejor tiempo'),
(29,'Medalla 29','Reconocimiento por desempeño en el torneo 29','Obtuvo el mejor tiempo'),
(30,'Medalla 30','Reconocimiento por desempeño en el torneo 30','Obtuvo el mejor tiempo'),
(31,'Medalla 31','Reconocimiento por desempeño en el torneo 31','Obtuvo el mejor tiempo'),
(32,'Medalla 32','Reconocimiento por desempeño en el torneo 32','Obtuvo el mejor tiempo'),
(33,'Medalla 33','Reconocimiento por desempeño en el torneo 33','Obtuvo el mejor tiempo'),
(34,'Medalla 34','Reconocimiento por desempeño en el torneo 34','Obtuvo el mejor tiempo'),
(35,'Medalla 35','Reconocimiento por desempeño en el torneo 35','Obtuvo el mejor tiempo'),
(36,'Medalla 36','Reconocimiento por desempeño en el torneo 36','Obtuvo el mejor tiempo'),
(37,'Medalla 37','Reconocimiento por desempeño en el torneo 37','Obtuvo el mejor tiempo'),
(38,'Medalla 38','Reconocimiento por desempeño en el torneo 38','Obtuvo el mejor tiempo'),
(39,'Medalla 39','Reconocimiento por desempeño en el torneo 39','Obtuvo el mejor tiempo'),
(40,'Medalla 40','Reconocimiento por desempeño en el torneo 40','Obtuvo el mejor tiempo'),
(41,'Medalla 41','Reconocimiento por desempeño en el torneo 41','Obtuvo el mejor tiempo'),
(42,'Medalla 42','Reconocimiento por desempeño en el torneo 42','Obtuvo el mejor tiempo'),
(43,'Medalla 43','Reconocimiento por desempeño en el torneo 43','Obtuvo el mejor tiempo'),
(44,'Medalla 44','Reconocimiento por desempeño en el torneo 44','Obtuvo el mejor tiempo'),
(45,'Medalla 45','Reconocimiento por desempeño en el torneo 45','Obtuvo el mejor tiempo'),
(46,'Medalla 46','Reconocimiento por desempeño en el torneo 46','Obtuvo el mejor tiempo'),
(47,'Medalla 47','Reconocimiento por desempeño en el torneo 47','Obtuvo el mejor tiempo'),
(48,'Medalla 48','Reconocimiento por desempeño en el torneo 48','Obtuvo el mejor tiempo'),
(49,'Medalla 49','Reconocimiento por desempeño en el torneo 49','Obtuvo el mejor tiempo'),
(50,'Medalla 50','Reconocimiento por desempeño en el torneo 50','Obtuvo el mejor tiempo');
/*!40000 ALTER TABLE `medalla` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `organiza`
--

DROP TABLE IF EXISTS `organiza`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `organiza` (
  `ID_torneo` int NOT NULL,
  `Curp` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`ID_torneo`,`Curp`),
  KEY `organiza_administrador_FK` (`Curp`),
  CONSTRAINT `organiza_administrador_FK` FOREIGN KEY (`Curp`) REFERENCES `administrador` (`Curp`),
  CONSTRAINT `organiza_torneo_FK` FOREIGN KEY (`ID_torneo`) REFERENCES `torneo` (`ID_torneo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `organiza`
--

LOCK TABLES `organiza` WRITE;
/*!40000 ALTER TABLE `organiza` DISABLE KEYS */;
set autocommit=0;
INSERT INTO `organiza` VALUES
(3,'AoCLrZaWZkSBvrj02'),
(2,'BcbfnoGMbJmTPSI01'),
(49,'CNUGBJCkVECqWpO48'),
(44,'DCCRnGEYYVkQfsG43'),
(48,'DdJphDiZDQHJMuW47'),
(12,'DHqJaRUhRIWrXPv11'),
(19,'ecveGprQFnIiUKK18'),
(20,'EpYEZAmggQBwBAD19'),
(15,'FbhxZtpdpKffUFe14'),
(11,'fWdhjOkYRBMeyyM10'),
(32,'GFqdfOBrcavXiOq31'),
(35,'gwXJANVjpkZZlAb34'),
(31,'hgVJjrsMnTvnROq30'),
(26,'HkdGfleMeRpzhKp25'),
(13,'hsBkDaUUqGWlGgO12'),
(23,'IafWpkAFEnzdkya22'),
(22,'ICiBlrDpeCZJgdP21'),
(5,'IhyfJsONxKmTecQ04'),
(30,'ITtNZPHaQJtQgiq29'),
(301,'JfPElHaxyKoeyzg'),
(302,'JfPElHaxyKoeyzg'),
(401,'JfPElHaxyKoeyzg'),
(402,'JfPElHaxyKoeyzg'),
(29,'KgeInGqiwepxskC28'),
(33,'kVCJTBJaheSjIcx32'),
(34,'LJjBictxYcwnRpQ33'),
(39,'lLqcgMBwUYuBMGh38'),
(27,'LMcNfAQLKHuqnQT26'),
(36,'lVvYAZQVZprkYSg35'),
(25,'msndLVIdVuddLEG24'),
(43,'NKtzJatsnBYLMPu42'),
(4,'nWvgfygwwMqZcUD03'),
(18,'oevbLJoLoaeTOdo17'),
(1,'OhbVrpoiVgRVIfL00'),
(6,'oXsfogyrDOxkxwn05'),
(46,'pENXeDAOKmTSyFz45'),
(47,'pjPSaWXgXBolZSH46'),
(10,'pVJIqVLBLzxoiGF09'),
(42,'QAuzSsJimAQyRVl41'),
(41,'QmxBeQvNuQhUtGt40'),
(45,'QONvfWpRtoZmjbc44'),
(7,'QrSRPeMOkIUpkDy06'),
(9,'renKTunPFzPDjqi08'),
(8,'rOSJoRuXXdocZuz07'),
(50,'rXXHFOprCeTsprv49'),
(14,'tOGMmjxWkIXHaMu13'),
(21,'UdRPPgdzUvZgpmm20'),
(28,'upqziQPtDuWeaDN27'),
(38,'vreXrwPGzRIvbhq37'),
(16,'WIXiiQEJkqHMBnI15'),
(17,'WUSmTtzQPxCHChp16'),
(37,'ycEomDwtYoobQmz36'),
(40,'yKmqcTBaHZIRUVV39'),
(24,'yqYYDsBSUYJQTFj23');
/*!40000 ALTER TABLE `organiza` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `participa`
--

DROP TABLE IF EXISTS `participa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `participa` (
  `ID_problema` int NOT NULL,
  `Curp` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `ID_torneo` int NOT NULL,
  PRIMARY KEY (`ID_problema`,`Curp`,`ID_torneo`),
  KEY `participa_torneo_FK` (`ID_torneo`),
  KEY `participa_participante_FK` (`Curp`),
  CONSTRAINT `participa_participante_FK` FOREIGN KEY (`Curp`) REFERENCES `participante` (`Curp`),
  CONSTRAINT `participa_problema_FK` FOREIGN KEY (`ID_problema`) REFERENCES `problema` (`ID_problema`),
  CONSTRAINT `participa_torneo_FK` FOREIGN KEY (`ID_torneo`) REFERENCES `torneo` (`ID_torneo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `participa`
--

LOCK TABLES `participa` WRITE;
/*!40000 ALTER TABLE `participa` DISABLE KEYS */;
set autocommit=0;
INSERT INTO `participa` VALUES
(1,'OhbVrpoiVgRVIfL00',1),
(2,'BcbfnoGMbJmTPSI01',2),
(3,'AoCLrZaWZkSBvrj02',3),
(4,'nWvgfygwwMqZcUD03',4),
(5,'IhyfJsONxKmTecQ04',5),
(6,'oXsfogyrDOxkxwn05',6),
(7,'QrSRPeMOkIUpkDy06',7),
(8,'rOSJoRuXXdocZuz07',8),
(9,'renKTunPFzPDjqi08',9),
(10,'pVJIqVLBLzxoiGF09',10),
(11,'fWdhjOkYRBMeyyM10',11),
(12,'DHqJaRUhRIWrXPv11',12),
(13,'hsBkDaUUqGWlGgO12',13),
(14,'tOGMmjxWkIXHaMu13',14),
(15,'FbhxZtpdpKffUFe14',15),
(16,'WIXiiQEJkqHMBnI15',16),
(17,'WUSmTtzQPxCHChp16',17),
(18,'oevbLJoLoaeTOdo17',18),
(19,'ecveGprQFnIiUKK18',19),
(20,'EpYEZAmggQBwBAD19',20),
(21,'UdRPPgdzUvZgpmm20',21),
(22,'ICiBlrDpeCZJgdP21',22),
(23,'IafWpkAFEnzdkya22',23),
(24,'yqYYDsBSUYJQTFj23',24),
(25,'msndLVIdVuddLEG24',25),
(26,'HkdGfleMeRpzhKp25',26),
(27,'LMcNfAQLKHuqnQT26',27),
(28,'upqziQPtDuWeaDN27',28),
(29,'KgeInGqiwepxskC28',29),
(30,'ITtNZPHaQJtQgiq29',30),
(31,'hgVJjrsMnTvnROq30',31),
(32,'GFqdfOBrcavXiOq31',32),
(33,'kVCJTBJaheSjIcx32',33),
(34,'LJjBictxYcwnRpQ33',34),
(35,'gwXJANVjpkZZlAb34',35),
(36,'lVvYAZQVZprkYSg35',36),
(37,'ycEomDwtYoobQmz36',37),
(38,'vreXrwPGzRIvbhq37',38),
(39,'lLqcgMBwUYuBMGh38',39),
(40,'yKmqcTBaHZIRUVV39',40),
(41,'QmxBeQvNuQhUtGt40',41),
(42,'QAuzSsJimAQyRVl41',42),
(43,'NKtzJatsnBYLMPu42',43),
(44,'DCCRnGEYYVkQfsG43',44),
(45,'QONvfWpRtoZmjbc44',45),
(46,'pENXeDAOKmTSyFz45',46),
(47,'pjPSaWXgXBolZSH46',47),
(48,'DdJphDiZDQHJMuW47',48),
(49,'CNUGBJCkVECqWpO48',49),
(50,'rXXHFOprCeTsprv49',50),
(508,'XmbToYYOzDwHbMh',301),
(505,'chXnygAdNbJGeXm',302),
(506,'chXnygAdNbJGeXm',302),
(506,'XmbToYYOzDwHbMh',302),
(507,'chXnygAdNbJGeXm',302),
(508,'XmbToYYOzDwHbMh',302),
(501,'XmbToYYOzDwHbMh',303),
(502,'JfPElHaxyKoeyzg',303),
(503,'chXnygAdNbJGeXm',304),
(504,'chXnygAdNbJGeXm',304);
/*!40000 ALTER TABLE `participa` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `participante`
--

DROP TABLE IF EXISTS `participante`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `participante` (
  `Curp` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `Matricula` int NOT NULL,
  `Nombre` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `Apellido_paterno` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `Apellido_Materno` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `Carrera` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `Correo_E` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `Telefono` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `Foto_Perfil` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `ID_problema` int NOT NULL,
  PRIMARY KEY (`Curp`),
  KEY `participante_problema_FK` (`ID_problema`),
  CONSTRAINT `participante_problema_FK` FOREIGN KEY (`ID_problema`) REFERENCES `problema` (`ID_problema`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `participante`
--

LOCK TABLES `participante` WRITE;
/*!40000 ALTER TABLE `participante` DISABLE KEYS */;
set autocommit=0;
INSERT INTO `participante` VALUES
('AoCLrZaWZkSBvrj02',2025003,'Ariadna','Valle','Alvarez','Mecatrónica','pilar08@gmail.com','4395339421047',NULL,3),
('BcbfnoGMbJmTPSI01',2025002,'Paola','Villarreal','Véliz','Diseño Digital','joaquinholguin@yahoo.com','6959440640909',NULL,2),
('chXnygAdNbJGeXm',2025992,'Peter','Parser','Alba','Sales professional, IT','peter.parser@ejemplo.com','8960333327924',NULL,506),
('CNUGBJCkVECqWpO48',20250049,'Oswaldo','Dávila','Rivera','Negocios','miriamvergara@gmail.com','2772217043030',NULL,49),
('DCCRnGEYYVkQfsG43',20250044,'Leticia','Negrete','Guillen','Diseño Digital','socorro78@gmail.com','2779010432898',NULL,44),
('DdJphDiZDQHJMuW47',20250048,'Silvia','Carrero','Guerrero','Mecatrónica','daviddel-rio@gmail.com','4051531952058',NULL,48),
('DHqJaRUhRIWrXPv11',20250012,'Lorenzo','Ojeda','Canales','Tecnologías Computacionales','croque@yahoo.com','4228421020539',NULL,12),
('ecveGprQFnIiUKK18',20250019,'Lucía','Ledesma','Tejada','Negocios','icarrero@laboratorios.com','1656049451983',NULL,19),
('EpYEZAmggQBwBAD19',20250020,'Julio','Pérez','Porras','Tecnologías Computacionales','de-jesushomero@club.biz','7315851493689',NULL,20),
('FbhxZtpdpKffUFe14',20250015,'Martha','Rentería','Casárez','Mecatrónica','craya@proyectos.org','7711592124998',NULL,15),
('fWdhjOkYRBMeyyM10',20250011,'Linda','Hurtado','Guerra','Mecatrónica','amalia08@laboratorios.com','5329318393352',NULL,11),
('GFqdfOBrcavXiOq31',20250032,'Patricio','Gutiérrez','Corral','Tecnologías Computacionales','riojascaridad@club.com','7700541199867',NULL,32),
('GOLDLplDYrlOvlc',2025994,'Berta','Madrid','Gallegos','Ingeniería en Computación','berta.madrid@ejemplo.com','8884958103428',NULL,506),
('gwXJANVjpkZZlAb34',20250035,'Micaela','Corral','Solorio','Ingeniería en Sistemas','abelardo44@hotmail.com','9051518644925',NULL,35),
('hgVJjrsMnTvnROq30',20250031,'Pablo','Angulo','Rico','Tecnologías Computacionales','hugourena@urias.com','5271774490581',NULL,31),
('HkdGfleMeRpzhKp25',20250026,'Abraham','Ávila','Peres','Mecatrónica','qlomeli@yahoo.com','2268388516060',NULL,26),
('hsBkDaUUqGWlGgO12',20250013,'Isabel','Menchaca','Madera','Negocios','hernadezmateo@barragan-pacheco.info','0240268117758',NULL,13),
('IafWpkAFEnzdkya22',20250023,'René','Rodrígez','Santillán','Diseño Digital','reynaldo02@solano.com','0229014767976',NULL,23),
('ICiBlrDpeCZJgdP21',20250022,'Alejandra','Bonilla','Barrientos','Ingeniería en Sistemas','mmedrano@despacho.org','2018366752545',NULL,22),
('IhyfJsONxKmTecQ04',2025005,'Cornelio','Botello','Velásquez','Ingeniería en Sistemas','lozanoestela@guerrero.com','2474517123685',NULL,5),
('ITtNZPHaQJtQgiq29',20250030,'Lourdes','Arevalo','Nájera','Diseño Digital','paulina24@rubio.org','4329212779979',NULL,30),
('JfPElHaxyKoeyzg',2025991,'Tony','Stack','Maldonado','Fine artist','tony.stack@ejemplo.com','0598988928658',NULL,502),
('KgeInGqiwepxskC28',20250029,'Julio','Barrientos','Prieto','Diseño Digital','wquintanilla@gmail.com','5218188355231',NULL,29),
('kVCJTBJaheSjIcx32',20250033,'Salvador','Feliciano','Puga','Tecnologías Computacionales','prodriquez@yahoo.com','7935978207151',NULL,33),
('LJjBictxYcwnRpQ33',20250034,'Estefanía','Almonte','del Valle','Tecnologías Computacionales','mespino@proyectos.biz','0377889255466',NULL,34),
('lLqcgMBwUYuBMGh38',20250039,'Mercedes','Carrero','Rivero','Tecnologías Computacionales','uarmas@olivarez.com','2927065379473',NULL,39),
('LMcNfAQLKHuqnQT26',20250027,'Jesús','Montez','Saiz','Diseño Digital','ubueno@corporacin.com','1596966416052',NULL,27),
('lVvYAZQVZprkYSg35',20250036,'Estefanía','Griego','Jimínez','Mecatrónica','mariselatijerina@yahoo.com','9254629148652',NULL,36),
('msndLVIdVuddLEG24',20250025,'Mateo','Tirado','Alcala','Mecatrónica','ines12@yahoo.com','9003432445107',NULL,25),
('NKtzJatsnBYLMPu42',20250043,'Yolanda','Hidalgo','Medrano','Mecatrónica','rodartegabino@otero-blanco.com','3615305152204',NULL,43),
('nWvgfygwwMqZcUD03',2025004,'Citlali','Amador','Marrero','Tecnologías Computacionales','lorenzosaenz@laboratorios.info','9521456232858',NULL,4),
('oevbLJoLoaeTOdo17',20250018,'Emiliano','Ojeda','Montenegro','Ingeniería en Sistemas','gracielaleyva@batista.org','1111615280988',NULL,18),
('OhbVrpoiVgRVIfL00',2025001,'Indira','Orta','Cardenas','Tecnologías Computacionales','alicia75@gmail.com','1759464743671',NULL,1),
('oXsfogyrDOxkxwn05',2025006,'Esther','Porras','Núñez','Negocios','luz85@yahoo.com','6048175496513',NULL,6),
('pENXeDAOKmTSyFz45',20250046,'Mayte','Zelaya','Leiva','Tecnologías Computacionales','sde-la-cruz@despacho.com','8932460953962',NULL,46),
('pjPSaWXgXBolZSH46',20250047,'Carolina','Zepeda','Raya','Negocios','luis-manuel23@hotmail.com','8518888806706',NULL,47),
('PLJoaWwUTHwxHEu',2025995,'Noelia','Beltrán','Canales','Ingeniería de Software','jeronimo90@viera.org','4349430689648',NULL,508),
('pVJIqVLBLzxoiGF09',20250010,'Andrea','Arteaga','Villarreal','Ingeniería en Sistemas','hermelindaalcaraz@hotmail.com','5850643171390',NULL,10),
('QAuzSsJimAQyRVl41',20250042,'Iván','Rivero','Jasso','Diseño Digital','colonlucas@hotmail.com','7826137506068',NULL,42),
('QmxBeQvNuQhUtGt40',20250041,'Julio','Gamez','Villarreal','Negocios','quinonezbenito@hotmail.com','9240758181412',NULL,41),
('QONvfWpRtoZmjbc44',20250045,'Daniel','de la Fuente','Briseño','Ingeniería en Sistemas','susanaloera@laboratorios.com','1434103697117',NULL,45),
('QrSRPeMOkIUpkDy06',2025007,'Juan Carlos','Cervántez','Osorio','Negocios','hilda43@gmail.com','0985931746120',NULL,7),
('renKTunPFzPDjqi08',2025009,'Ernesto','Echeverría','Benítez','Mecatrónica','esquibelgustavo@gmail.com','6179640537735',NULL,9),
('rOSJoRuXXdocZuz07',2025008,'Cristian','Riojas','Farías','Diseño Digital','carla82@grupo.org','4711382675869',NULL,8),
('rXXHFOprCeTsprv49',20250050,'Aldonza','Márquez','Vargas','Mecatrónica','dhernandez@laboratorios.net','4868740345054',NULL,50),
('tOGMmjxWkIXHaMu13',20250014,'Patricia','Galarza','Zapata','Mecatrónica','coronadoconchita@despacho.biz','7839084700766',NULL,14),
('UdRPPgdzUvZgpmm20',20250021,'Rocío','Hernádez','Nevárez','Tecnologías Computacionales','fquezada@hotmail.com','9402445502296',NULL,21),
('upqziQPtDuWeaDN27',20250028,'Héctor','Garrido','Caraballo','Tecnologías Computacionales','mayala@hotmail.com','5161369681645',NULL,28),
('vreXrwPGzRIvbhq37',20250038,'Marco Antonio','Rojas','Roybal','Ingeniería en Sistemas','eveliovazquez@yahoo.com','1418880592962',NULL,38),
('WCYleGjpQAuZTZR',2025994,'Francisca','Barrera','Córdova','Ingeniería de Software','nponce@hotmail.com','5513924153272',NULL,508),
('WIXiiQEJkqHMBnI15',20250016,'Linda','Mena','Valles','Tecnologías Computacionales','francosocorro@corporacin.com','6984789611836',NULL,16),
('WUSmTtzQPxCHChp16',20250017,'Anel','Miranda','Arguello','Mecatrónica','cortezabelardo@raya.com','3657661565452',NULL,17),
('XmbToYYOzDwHbMh',2025993,'Bruce','Buffer','Zedillo','Estate manager/land agent','bruce.buffer@ejemplo.com','9632235425526',NULL,501),
('ycEomDwtYoobQmz36',20250037,'Georgina','Castro','Tijerina','Diseño Digital','pedro86@yahoo.com','6850542357332',NULL,37),
('yKmqcTBaHZIRUVV39',20250040,'Alicia','Valle','Pulido','Tecnologías Computacionales','castronadia@hotmail.com','4735977468862',NULL,40),
('yqYYDsBSUYJQTFj23',20250024,'Juan','Almaraz','Mondragón','Mecatrónica','ebustos@yahoo.com','3815614978403',NULL,24);
/*!40000 ALTER TABLE `participante` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `pertenece`
--

DROP TABLE IF EXISTS `pertenece`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `pertenece` (
  `ID_equipo` int NOT NULL,
  `Curp` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`ID_equipo`,`Curp`),
  KEY `pertenece_participante_FK` (`Curp`),
  CONSTRAINT `pertenece_equipo_FK` FOREIGN KEY (`ID_equipo`) REFERENCES `equipo` (`ID_equipo`),
  CONSTRAINT `pertenece_participante_FK` FOREIGN KEY (`Curp`) REFERENCES `participante` (`Curp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pertenece`
--

LOCK TABLES `pertenece` WRITE;
/*!40000 ALTER TABLE `pertenece` DISABLE KEYS */;
set autocommit=0;
INSERT INTO `pertenece` VALUES
(3,'AoCLrZaWZkSBvrj02'),
(2,'BcbfnoGMbJmTPSI01'),
(49,'CNUGBJCkVECqWpO48'),
(44,'DCCRnGEYYVkQfsG43'),
(48,'DdJphDiZDQHJMuW47'),
(12,'DHqJaRUhRIWrXPv11'),
(19,'ecveGprQFnIiUKK18'),
(20,'EpYEZAmggQBwBAD19'),
(15,'FbhxZtpdpKffUFe14'),
(11,'fWdhjOkYRBMeyyM10'),
(32,'GFqdfOBrcavXiOq31'),
(35,'gwXJANVjpkZZlAb34'),
(31,'hgVJjrsMnTvnROq30'),
(26,'HkdGfleMeRpzhKp25'),
(13,'hsBkDaUUqGWlGgO12'),
(23,'IafWpkAFEnzdkya22'),
(22,'ICiBlrDpeCZJgdP21'),
(5,'IhyfJsONxKmTecQ04'),
(30,'ITtNZPHaQJtQgiq29'),
(29,'KgeInGqiwepxskC28'),
(33,'kVCJTBJaheSjIcx32'),
(34,'LJjBictxYcwnRpQ33'),
(39,'lLqcgMBwUYuBMGh38'),
(27,'LMcNfAQLKHuqnQT26'),
(36,'lVvYAZQVZprkYSg35'),
(25,'msndLVIdVuddLEG24'),
(43,'NKtzJatsnBYLMPu42'),
(4,'nWvgfygwwMqZcUD03'),
(18,'oevbLJoLoaeTOdo17'),
(1,'OhbVrpoiVgRVIfL00'),
(6,'oXsfogyrDOxkxwn05'),
(46,'pENXeDAOKmTSyFz45'),
(47,'pjPSaWXgXBolZSH46'),
(902,'PLJoaWwUTHwxHEu'),
(10,'pVJIqVLBLzxoiGF09'),
(42,'QAuzSsJimAQyRVl41'),
(41,'QmxBeQvNuQhUtGt40'),
(45,'QONvfWpRtoZmjbc44'),
(7,'QrSRPeMOkIUpkDy06'),
(9,'renKTunPFzPDjqi08'),
(8,'rOSJoRuXXdocZuz07'),
(50,'rXXHFOprCeTsprv49'),
(14,'tOGMmjxWkIXHaMu13'),
(21,'UdRPPgdzUvZgpmm20'),
(28,'upqziQPtDuWeaDN27'),
(38,'vreXrwPGzRIvbhq37'),
(901,'WCYleGjpQAuZTZR'),
(16,'WIXiiQEJkqHMBnI15'),
(17,'WUSmTtzQPxCHChp16'),
(903,'XmbToYYOzDwHbMh'),
(37,'ycEomDwtYoobQmz36'),
(40,'yKmqcTBaHZIRUVV39'),
(24,'yqYYDsBSUYJQTFj23');
/*!40000 ALTER TABLE `pertenece` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `problema`
--

DROP TABLE IF EXISTS `problema`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `problema` (
  `ID_problema` int NOT NULL,
  `Nombre` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `Descripcion` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `Fecha_creacion` date NOT NULL,
  `Dificultad` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `Estado` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`ID_problema`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `problema`
--

LOCK TABLES `problema` WRITE;
/*!40000 ALTER TABLE `problema` DISABLE KEYS */;
set autocommit=0;
INSERT INTO `problema` VALUES
(1,'Problema 1','Este es un problema sobre optimiza soluciones sexi','2025-01-02','Fácil','Activo'),
(2,'Problema 2','Este es un problema sobre modifica sistemas de paquete','2025-01-03','Medio','Activo'),
(3,'Problema 3','Este es un problema sobre crece ancho de banda listo para la web','2025-01-04','Difícil','Activo'),
(4,'Problema 4','Este es un problema sobre explota iniciativas virtuales','2025-01-05','Difícil','Activo'),
(5,'Problema 5','Este es un problema sobre facilita aplicaciones globales','2025-01-06','Difícil','Activo'),
(6,'Problema 6','Este es un problema sobre sinergiza entregables empresariales','2025-01-07','Difícil','Activo'),
(7,'Problema 7','Este es un problema sobre crece comercio electrónico uno-a-uno','2025-01-08','Difícil','Activo'),
(8,'Problema 8','Este es un problema sobre escala experiencias sin fricciones','2025-01-09','Medio','Activo'),
(9,'Problema 9','Este es un problema sobre compromete servicios web en tiempo real','2025-01-10','Difícil','Activo'),
(10,'Problema 10','Este es un problema sobre entrega socios robustas','2025-01-11','Medio','Activo'),
(11,'Problema 11','Este es un problema sobre libera arquitecturas llave en mano','2025-01-12','Difícil','Activo'),
(12,'Problema 12','Este es un problema sobre orquesta convergencia centrado al usuario','2025-01-13','Medio','Activo'),
(13,'Problema 13','Este es un problema sobre integra usuarios robustas','2025-01-14','Fácil','Activo'),
(14,'Problema 14','Este es un problema sobre sinergiza infraestructuras magnéticas','2025-01-15','Difícil','Activo'),
(15,'Problema 15','Este es un problema sobre redefine canales intuitivas','2025-01-16','Medio','Activo'),
(16,'Problema 16','Este es un problema sobre sintetiza modelos personalizado','2025-01-17','Medio','Activo'),
(17,'Problema 17','Este es un problema sobre extiende usuarios distribuidas','2025-01-18','Difícil','Activo'),
(18,'Problema 18','Este es un problema sobre orquesta sistemas colaborativas','2025-01-19','Medio','Activo'),
(19,'Problema 19','Este es un problema sobre reinventa servicios web intuitivas','2025-01-20','Difícil','Activo'),
(20,'Problema 20','Este es un problema sobre agrega usuarios empresariales','2025-01-21','Medio','Activo'),
(21,'Problema 21','Este es un problema sobre extiende servicios web llave en mano','2025-01-22','Difícil','Activo'),
(22,'Problema 22','Este es un problema sobre libera paradigmas 24/365','2025-01-23','Difícil','Activo'),
(23,'Problema 23','Este es un problema sobre maximiza interfaces plug-and-play','2025-01-24','Fácil','Activo'),
(24,'Problema 24','Este es un problema sobre itera contenido centrado al usuario','2025-01-25','Fácil','Activo'),
(25,'Problema 25','Este es un problema sobre revoluciona entregables estratégicas','2025-01-26','Medio','Activo'),
(26,'Problema 26','Este es un problema sobre habilita nichos verticales','2025-01-27','Difícil','Activo'),
(27,'Problema 27','Este es un problema sobre reinventa esquemas de siguiente generación','2025-01-28','Difícil','Activo'),
(28,'Problema 28','Este es un problema sobre redefine funcionalidades visionarias','2025-01-01','Difícil','Activo'),
(29,'Problema 29','Este es un problema sobre modifica comercio electrónico inalámbrica','2025-01-02','Medio','Activo'),
(30,'Problema 30','Este es un problema sobre crece portales en tiempo real','2025-01-03','Fácil','Activo'),
(31,'Problema 31','Este es un problema sobre fortalece funcionalidades uno-a-uno','2025-01-04','Medio','Activo'),
(32,'Problema 32','Este es un problema sobre crea marca contenido sin fricciones','2025-01-05','Fácil','Activo'),
(33,'Problema 33','Este es un problema sobre maneja comercio electrónico eficientes','2025-01-06','Difícil','Activo'),
(34,'Problema 34','Este es un problema sobre facilita arquitecturas innovadoras','2025-01-07','Difícil','Activo'),
(35,'Problema 35','Este es un problema sobre reinventa arquitecturas proactivas','2025-01-08','Fácil','Activo'),
(36,'Problema 36','Este es un problema sobre innova convergencia visionarias','2025-01-09','Medio','Activo'),
(37,'Problema 37','Este es un problema sobre genera relaciones de clase mundial','2025-01-10','Fácil','Activo'),
(38,'Problema 38','Este es un problema sobre redefine cadena de producción globales','2025-01-11','Medio','Activo'),
(39,'Problema 39','Este es un problema sobre empodera socios de punta','2025-01-12','Difícil','Activo'),
(40,'Problema 40','Este es un problema sobre libera iniciativas transparentes','2025-01-13','Difícil','Activo'),
(41,'Problema 41','Este es un problema sobre agrega esquemas impacto total','2025-01-14','Difícil','Activo'),
(42,'Problema 42','Este es un problema sobre incentiva arquitecturas virtuales','2025-01-15','Difícil','Activo'),
(43,'Problema 43','Este es un problema sobre transforma contenido llave en mano','2025-01-16','Fácil','Activo'),
(44,'Problema 44','Este es un problema sobre mejora marcados ricas','2025-01-17','Fácil','Activo'),
(45,'Problema 45','Este es un problema sobre sinergiza marcados valor agregado','2025-01-18','Fácil','Activo'),
(46,'Problema 46','Este es un problema sobre abraza sistemas granulares','2025-01-19','Medio','Activo'),
(47,'Problema 47','Este es un problema sobre revoluciona experiencias intuitivas','2025-01-20','Fácil','Activo'),
(48,'Problema 48','Este es un problema sobre habilita sistemas e-business','2025-01-21','Medio','Activo'),
(49,'Problema 49','Este es un problema sobre mejora sinergias visionarias','2025-01-22','Fácil','Activo'),
(50,'Problema 50','Este es un problema sobre incentiva portales empresariales','2025-01-23','Fácil','Activo'),
(501,'Triángulos mágicos','Problema sobre geometry','2024-07-01','Difícil','Activo'),
(502,'Ángulos imposibles','Problema sobre geometry','2024-07-02','Difícil','Activo'),
(503,'Polígonos estrellados','Problema sobre geometry','2024-07-03','Difícil','Activo'),
(504,'Backtracking infinito','Problema sobre backtracking','2024-07-04','Difícil','Activo'),
(505,'Permutaciones locas','Problema sobre backtracking','2024-07-05','Difícil','Activo'),
(506,'Fuerza bruta máxima','Problema sobre bruteforce','2024-07-06','Difícil','Activo'),
(507,'Tiempos límites','Problema sobre bruteforce','2024-07-07','Difícil','Activo'),
(508,'Brute VS Smart','Problema sobre bruteforce','2024-07-08','Difícil','Activo'),
(509,'Optimización caótica','Problema avanzado de búsqueda caótica','2025-05-01','Difícil','Activo'),
(510,'Geometría inversa','Problema complejo de áreas en reversa','2025-05-01','Difícil','Activo'),
(511,'Búsqueda explosiva','Exploración intensiva con límites ajustados','2025-05-15','Media','Activo'),
(512,'Caminos mínimos','Problema sobre optimización de rutas','2025-06-22','Media','Activo'),
(513,'Divisiones críticas','Problema de segmentación eficiente','2025-06-22','Media','Activo'),
(514,'Criptografía básica','Resolver claves cifradas con técnicas simples','2025-06-23','Fácil','Activo'),
(515,'Matrices mágicas','Detectar patrones mágicos en matrices','2025-06-23','Media','Activo'),
(516,'Cadenas codificadas','Problema de análisis de patrones de texto','2025-06-23','Media','Activo');
/*!40000 ALTER TABLE `problema` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `recibe`
--

DROP TABLE IF EXISTS `recibe`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `recibe` (
  `ID_problema` int NOT NULL,
  `Curp` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `ID_retro` int NOT NULL,
  PRIMARY KEY (`ID_problema`),
  KEY `recibe_participante_FK` (`Curp`),
  KEY `recibe_retroalimentacion_FK` (`ID_retro`),
  CONSTRAINT `recibe_participante_FK` FOREIGN KEY (`Curp`) REFERENCES `participante` (`Curp`),
  CONSTRAINT `recibe_problema_FK` FOREIGN KEY (`ID_problema`) REFERENCES `problema` (`ID_problema`),
  CONSTRAINT `recibe_retroalimentacion_FK` FOREIGN KEY (`ID_retro`) REFERENCES `retroalimentacion` (`ID_retro`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recibe`
--

LOCK TABLES `recibe` WRITE;
/*!40000 ALTER TABLE `recibe` DISABLE KEYS */;
set autocommit=0;
INSERT INTO `recibe` VALUES
(1,'OhbVrpoiVgRVIfL00',1),
(2,'BcbfnoGMbJmTPSI01',2),
(3,'AoCLrZaWZkSBvrj02',3),
(4,'nWvgfygwwMqZcUD03',4),
(5,'IhyfJsONxKmTecQ04',5),
(6,'oXsfogyrDOxkxwn05',6),
(7,'QrSRPeMOkIUpkDy06',7),
(8,'rOSJoRuXXdocZuz07',8),
(9,'renKTunPFzPDjqi08',9),
(10,'pVJIqVLBLzxoiGF09',10),
(11,'fWdhjOkYRBMeyyM10',11),
(12,'DHqJaRUhRIWrXPv11',12),
(13,'hsBkDaUUqGWlGgO12',13),
(14,'tOGMmjxWkIXHaMu13',14),
(15,'FbhxZtpdpKffUFe14',15),
(16,'WIXiiQEJkqHMBnI15',16),
(17,'WUSmTtzQPxCHChp16',17),
(18,'oevbLJoLoaeTOdo17',18),
(19,'ecveGprQFnIiUKK18',19),
(20,'EpYEZAmggQBwBAD19',20),
(21,'UdRPPgdzUvZgpmm20',21),
(22,'ICiBlrDpeCZJgdP21',22),
(23,'IafWpkAFEnzdkya22',23),
(24,'yqYYDsBSUYJQTFj23',24),
(25,'msndLVIdVuddLEG24',25),
(26,'HkdGfleMeRpzhKp25',26),
(27,'LMcNfAQLKHuqnQT26',27),
(28,'upqziQPtDuWeaDN27',28),
(29,'KgeInGqiwepxskC28',29),
(30,'ITtNZPHaQJtQgiq29',30),
(31,'hgVJjrsMnTvnROq30',31),
(32,'GFqdfOBrcavXiOq31',32),
(33,'kVCJTBJaheSjIcx32',33),
(34,'LJjBictxYcwnRpQ33',34),
(35,'gwXJANVjpkZZlAb34',35),
(36,'lVvYAZQVZprkYSg35',36),
(37,'ycEomDwtYoobQmz36',37),
(38,'vreXrwPGzRIvbhq37',38),
(39,'lLqcgMBwUYuBMGh38',39),
(40,'yKmqcTBaHZIRUVV39',40),
(41,'QmxBeQvNuQhUtGt40',41),
(42,'QAuzSsJimAQyRVl41',42),
(43,'NKtzJatsnBYLMPu42',43),
(44,'DCCRnGEYYVkQfsG43',44),
(45,'QONvfWpRtoZmjbc44',45),
(46,'pENXeDAOKmTSyFz45',46),
(47,'pjPSaWXgXBolZSH46',47),
(48,'DdJphDiZDQHJMuW47',48),
(49,'CNUGBJCkVECqWpO48',49),
(50,'rXXHFOprCeTsprv49',50);
/*!40000 ALTER TABLE `recibe` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `retroalimentacion`
--

DROP TABLE IF EXISTS `retroalimentacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `retroalimentacion` (
  `ID_retro` int NOT NULL,
  `calificacion` double NOT NULL,
  `comentario` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`ID_retro`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `retroalimentacion`
--

LOCK TABLES `retroalimentacion` WRITE;
/*!40000 ALTER TABLE `retroalimentacion` DISABLE KEYS */;
set autocommit=0;
INSERT INTO `retroalimentacion` VALUES
(1,8.93,'Código claro y bien documentado'),
(2,7.11,'Código claro y bien documentado'),
(3,8.93,'Podría optimizarse el uso de memoria'),
(4,8.94,'Buen uso de estructuras de control'),
(5,7.72,'Buen uso de estructuras de control'),
(6,7.83,'Considerar casos límite'),
(7,7.75,'Formato de salida incorrecto'),
(8,7.22,'Buen uso de estructuras de control'),
(9,6.39,'Algoritmo eficiente y limpio'),
(10,7.98,'Resultado correcto, pero excede tiempo'),
(11,9.54,'Buena lógica pero falta validación'),
(12,6.14,'Resultado correcto, pero excede tiempo'),
(13,9.38,'Algoritmo eficiente y limpio'),
(14,8.27,'Excelente implementación'),
(15,6.78,'Algoritmo eficiente y limpio'),
(16,9.9,'Podría optimizarse el uso de memoria'),
(17,8.84,'Buena resolución general'),
(18,7.66,'Excelente implementación'),
(19,8.39,'Algoritmo eficiente y limpio'),
(20,9.57,'Considerar casos límite'),
(21,7.16,'Buena resolución general'),
(22,9.6,'Buena lógica pero falta validación'),
(23,7.76,'Buena resolución general'),
(24,9.46,'Podría optimizarse el uso de memoria'),
(25,7.34,'Formato de salida incorrecto'),
(26,8.42,'Código claro y bien documentado'),
(27,6.13,'Resultado correcto, pero excede tiempo'),
(28,9.23,'Resultado correcto, pero excede tiempo'),
(29,6.7,'Considerar casos límite'),
(30,9.43,'Buena resolución general'),
(31,8.4,'Buena resolución general'),
(32,6.07,'Excelente implementación'),
(33,9.3,'Excelente implementación'),
(34,9.73,'Podría optimizarse el uso de memoria'),
(35,6.29,'Excelente implementación'),
(36,9.99,'Algoritmo eficiente y limpio'),
(37,8.83,'Formato de salida incorrecto'),
(38,8.59,'Podría optimizarse el uso de memoria'),
(39,9.58,'Buena lógica pero falta validación'),
(40,8.67,'Código claro y bien documentado'),
(41,9.96,'Algoritmo eficiente y limpio'),
(42,6.83,'Buena resolución general'),
(43,8.09,'Excelente implementación'),
(44,6.86,'Buena resolución general'),
(45,7.63,'Formato de salida incorrecto'),
(46,9.31,'Buena resolución general'),
(47,9.53,'Excelente implementación'),
(48,8.79,'Buen uso de estructuras de control'),
(49,9.07,'Formato de salida incorrecto'),
(50,9.88,'Excelente implementación');
/*!40000 ALTER TABLE `retroalimentacion` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `revisa`
--

DROP TABLE IF EXISTS `revisa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `revisa` (
  `ID_problema` int NOT NULL,
  `Curp` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `accion` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `motivo` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `fecha` date NOT NULL,
  `hora` time NOT NULL,
  PRIMARY KEY (`ID_problema`),
  KEY `revisa_administrador_FK` (`Curp`),
  CONSTRAINT `revisa_administrador_FK` FOREIGN KEY (`Curp`) REFERENCES `administrador` (`Curp`),
  CONSTRAINT `revisa_problema_FK` FOREIGN KEY (`ID_problema`) REFERENCES `problema` (`ID_problema`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `revisa`
--

LOCK TABLES `revisa` WRITE;
/*!40000 ALTER TABLE `revisa` DISABLE KEYS */;
set autocommit=0;
INSERT INTO `revisa` VALUES
(1,'OhbVrpoiVgRVIfL00','Pendiente','Incluye errores de lógica','2025-06-01','14:37:00'),
(2,'BcbfnoGMbJmTPSI01','Pendiente','El envío excede el tiempo máximo','2025-06-02','14:16:00'),
(3,'AoCLrZaWZkSBvrj02','Pendiente','Entrega incompleta','2025-06-03','14:30:00'),
(4,'nWvgfygwwMqZcUD03','Aprobado con observaciones','Validación insuficiente','2025-06-04','14:57:00'),
(5,'IhyfJsONxKmTecQ04','Aprobado con observaciones','Le falta documentación','2025-06-05','14:45:00'),
(6,'oXsfogyrDOxkxwn05','Pendiente','Cumple con los requisitos','2025-06-06','14:35:00'),
(7,'QrSRPeMOkIUpkDy06','Pendiente','No responde todos los casos','2025-06-07','14:21:00'),
(8,'rOSJoRuXXdocZuz07','Aprobado','Validación insuficiente','2025-06-08','14:51:00'),
(9,'renKTunPFzPDjqi08','Rechazado','Entrega incompleta','2025-06-09','14:52:00'),
(10,'pVJIqVLBLzxoiGF09','Pendiente','Entrega incompleta','2025-06-10','14:13:00'),
(11,'fWdhjOkYRBMeyyM10','Rechazado','Incluye errores de lógica','2025-06-11','14:10:00'),
(12,'DHqJaRUhRIWrXPv11','Aprobado con observaciones','Incluye errores de lógica','2025-06-12','14:21:00'),
(13,'hsBkDaUUqGWlGgO12','Aprobado con observaciones','No compila correctamente','2025-06-13','14:31:00'),
(14,'tOGMmjxWkIXHaMu13','Rechazado','Cumple con los requisitos','2025-06-14','14:46:00'),
(15,'FbhxZtpdpKffUFe14','Rechazado','Salida no coincide con el ejemplo','2025-06-15','14:19:00'),
(16,'WIXiiQEJkqHMBnI15','Rechazado','Cumple con los requisitos','2025-06-16','14:38:00'),
(17,'WUSmTtzQPxCHChp16','Rechazado','Entrega incompleta','2025-06-17','14:22:00'),
(18,'oevbLJoLoaeTOdo17','Pendiente','Le falta documentación','2025-06-18','14:22:00'),
(19,'ecveGprQFnIiUKK18','Aprobado con observaciones','Salida no coincide con el ejemplo','2025-06-19','14:55:00'),
(20,'EpYEZAmggQBwBAD19','Pendiente','Cumple con los requisitos','2025-06-20','14:21:00'),
(21,'UdRPPgdzUvZgpmm20','Aprobado con observaciones','Código sospechoso de plagio','2025-06-21','14:19:00'),
(22,'ICiBlrDpeCZJgdP21','Rechazado','No responde todos los casos','2025-06-22','14:57:00'),
(23,'IafWpkAFEnzdkya22','Aprobado con observaciones','Incluye errores de lógica','2025-06-23','14:46:00'),
(24,'yqYYDsBSUYJQTFj23','Aprobado con observaciones','Le falta documentación','2025-06-24','14:49:00'),
(25,'msndLVIdVuddLEG24','Pendiente','El envío excede el tiempo máximo','2025-06-25','14:16:00'),
(26,'HkdGfleMeRpzhKp25','Pendiente','Salida no coincide con el ejemplo','2025-06-26','14:52:00'),
(27,'LMcNfAQLKHuqnQT26','Aprobado con observaciones','Cumple con los requisitos','2025-06-27','14:27:00'),
(28,'upqziQPtDuWeaDN27','Rechazado','Salida no coincide con el ejemplo','2025-06-28','14:37:00'),
(29,'KgeInGqiwepxskC28','Pendiente','Validación insuficiente','2025-06-01','14:21:00'),
(30,'ITtNZPHaQJtQgiq29','Aprobado con observaciones','Entrega incompleta','2025-06-02','14:39:00'),
(31,'hgVJjrsMnTvnROq30','Pendiente','Validación insuficiente','2025-06-03','14:41:00'),
(32,'GFqdfOBrcavXiOq31','Aprobado con observaciones','El envío excede el tiempo máximo','2025-06-04','14:16:00'),
(33,'kVCJTBJaheSjIcx32','Aprobado con observaciones','Le falta documentación','2025-06-05','14:14:00'),
(34,'LJjBictxYcwnRpQ33','Pendiente','Cumple con los requisitos','2025-06-06','14:16:00'),
(35,'gwXJANVjpkZZlAb34','Aprobado con observaciones','Entrega incompleta','2025-06-07','14:20:00'),
(36,'lVvYAZQVZprkYSg35','Aprobado con observaciones','Salida no coincide con el ejemplo','2025-06-08','14:54:00'),
(37,'ycEomDwtYoobQmz36','Rechazado','Validación insuficiente','2025-06-09','14:12:00'),
(38,'vreXrwPGzRIvbhq37','Rechazado','Le falta documentación','2025-06-10','14:36:00'),
(39,'lLqcgMBwUYuBMGh38','Rechazado','Le falta documentación','2025-06-11','14:52:00'),
(40,'yKmqcTBaHZIRUVV39','Aprobado con observaciones','Salida no coincide con el ejemplo','2025-06-12','14:58:00'),
(41,'QmxBeQvNuQhUtGt40','Pendiente','El envío excede el tiempo máximo','2025-06-13','14:36:00'),
(42,'QAuzSsJimAQyRVl41','Rechazado','Incluye errores de lógica','2025-06-14','14:57:00'),
(43,'NKtzJatsnBYLMPu42','Aprobado con observaciones','No responde todos los casos','2025-06-15','14:51:00'),
(44,'DCCRnGEYYVkQfsG43','Rechazado','El envío excede el tiempo máximo','2025-06-16','14:21:00'),
(45,'QONvfWpRtoZmjbc44','Aprobado con observaciones','Le falta documentación','2025-06-17','14:12:00'),
(46,'pENXeDAOKmTSyFz45','Aprobado','Incluye errores de lógica','2025-06-18','14:52:00'),
(47,'pjPSaWXgXBolZSH46','Pendiente','El envío excede el tiempo máximo','2025-06-19','14:45:00'),
(48,'DdJphDiZDQHJMuW47','Aprobado con observaciones','Código sospechoso de plagio','2025-06-20','14:11:00'),
(49,'CNUGBJCkVECqWpO48','Aprobado','Cumple con los requisitos','2025-06-21','14:30:00'),
(50,'rXXHFOprCeTsprv49','Pendiente','Le falta documentación','2025-06-22','14:26:00'),
(504,'JfPElHaxyKoeyzg','Rechazado','Código no compila','2024-08-15','11:00:00'),
(505,'XmbToYYOzDwHbMh','Rechazado','Salida incorrecta en caso límite','2025-06-20','11:15:00');
/*!40000 ALTER TABLE `revisa` ENABLE KEYS */;
UNLOCK TABLES;
commit;

--
-- Table structure for table `torneo`
--

DROP TABLE IF EXISTS `torneo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `torneo` (
  `ID_torneo` int NOT NULL,
  `nombre` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `fecha_inicio` date NOT NULL,
  `hora_inicio` time NOT NULL,
  `fecha_fin` date NOT NULL,
  `hora_fin` time NOT NULL,
  `modalidad` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `penalizacion` float NOT NULL,
  `ganador` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`ID_torneo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `torneo`
--

LOCK TABLES `torneo` WRITE;
/*!40000 ALTER TABLE `torneo` DISABLE KEYS */;
set autocommit=0;
INSERT INTO `torneo` VALUES
(1,'Torneo San Maximiliano los bajos','2025-01-02','09:00:00','2025-01-04','17:00:00','Virtual',4.68,'Nazario-Quesada'),
(2,'Torneo Vieja Ucrania','2025-01-03','09:00:00','2025-01-05','17:00:00','Presencial',1.52,'Quiñónez,'),
(3,'Torneo Vieja Palau','2025-01-04','09:00:00','2025-01-06','17:00:00','Virtual',4.84,'Club'),
(4,'Torneo Vieja Camboya','2025-01-05','09:00:00','2025-01-07','17:00:00','Virtual',3.7,'Proyectos'),
(5,'Torneo Nueva Azerbaiyán','2025-01-06','09:00:00','2025-01-08','17:00:00','Virtual',2.95,'Zarate,'),
(6,'Torneo San Felix de la Montaña','2025-01-07','09:00:00','2025-01-09','17:00:00','Virtual',3.48,'Corporacin'),
(7,'Torneo Vieja Palau','2025-01-08','09:00:00','2025-01-10','17:00:00','Presencial',4.51,'Corporacin'),
(8,'Torneo San Agustín de la Montaña','2025-01-09','09:00:00','2025-01-11','17:00:00','Virtual',2.73,'Laboratorios'),
(9,'Torneo Nueva República Popular Democrática de Corea','2025-01-10','09:00:00','2025-01-12','17:00:00','Presencial',3.95,'Arias'),
(10,'Torneo San Miguel Ángel los altos','2025-01-11','09:00:00','2025-01-13','17:00:00','Virtual',2.2,'Laureano,'),
(11,'Torneo Nueva Malta','2025-01-12','09:00:00','2025-01-14','17:00:00','Presencial',4.22,'Narváez,'),
(12,'Torneo San Karina los bajos','2025-01-13','09:00:00','2025-01-15','17:00:00','Presencial',1.84,'Collazo'),
(13,'Torneo Vieja República Centroafricana','2025-01-14','09:00:00','2025-01-16','17:00:00','Virtual',3.15,'Aragón'),
(14,'Torneo San Paulina los bajos','2025-01-15','09:00:00','2025-01-17','17:00:00','Virtual',1.56,'Proyectos'),
(15,'Torneo Vieja Kiribati','2025-01-16','09:00:00','2025-01-18','17:00:00','Virtual',2.97,'Valverde,'),
(16,'Torneo Nueva Samoa','2025-01-17','09:00:00','2025-01-19','17:00:00','Virtual',1.03,'Laboratorios'),
(17,'Torneo Nueva Armenia','2025-01-18','09:00:00','2025-01-20','17:00:00','Virtual',1.89,'Quiroz-Bermúdez'),
(18,'Torneo San Norma los bajos','2025-01-19','09:00:00','2025-01-21','17:00:00','Virtual',2.05,'Industrias'),
(19,'Torneo San Sara los bajos','2025-01-20','09:00:00','2025-01-22','17:00:00','Virtual',3.62,'Leiva-Haro'),
(20,'Torneo San Rosalia los bajos','2025-01-21','09:00:00','2025-01-23','17:00:00','Virtual',2.78,'Escamilla'),
(21,'Torneo San Ramón los bajos','2025-01-22','09:00:00','2025-01-24','17:00:00','Presencial',3.68,'Valenzuela,'),
(22,'Torneo San Zacarías de la Montaña','2025-01-23','09:00:00','2025-01-25','17:00:00','Presencial',1.22,'Laboratorios'),
(23,'Torneo Vieja Georgia','2025-01-24','09:00:00','2025-01-26','17:00:00','Virtual',3.77,'Feliciano'),
(24,'Torneo Vieja Croacia','2025-01-25','09:00:00','2025-01-27','17:00:00','Presencial',2.07,'Razo-de'),
(25,'Torneo Nueva República Democrática Popular Lao','2025-01-26','09:00:00','2025-01-28','17:00:00','Virtual',1.78,'Brito'),
(26,'Torneo San Humberto los bajos','2025-01-27','09:00:00','2025-01-29','17:00:00','Virtual',3.36,'Barragán-Urbina'),
(27,'Torneo Vieja Omán','2025-01-28','09:00:00','2025-01-30','17:00:00','Virtual',2.09,'Corporacin'),
(28,'Torneo Nueva Panamá','2025-01-29','09:00:00','2025-01-31','17:00:00','Virtual',1.05,'Despacho'),
(29,'Torneo San Olivia los bajos','2025-01-30','09:00:00','2025-02-01','17:00:00','Virtual',1.59,'Proyectos'),
(30,'Torneo San Patricio los bajos','2025-01-31','09:00:00','2025-02-02','17:00:00','Presencial',3.08,'Urrutia-Vega'),
(31,'Torneo Vieja República Checa','2025-02-01','09:00:00','2025-02-03','17:00:00','Presencial',2.02,'Ureña'),
(32,'Torneo San Emilio los altos','2025-02-02','09:00:00','2025-02-04','17:00:00','Presencial',3.68,'Barraza-Mares'),
(33,'Torneo San Rafaél los altos','2025-02-03','09:00:00','2025-02-05','17:00:00','Virtual',2.25,'Roque,'),
(34,'Torneo San Leonardo los bajos','2025-02-04','09:00:00','2025-02-06','17:00:00','Presencial',3.01,'Velasco,'),
(35,'Torneo San Arcelia los bajos','2025-02-05','09:00:00','2025-02-07','17:00:00','Virtual',2.92,'Benavides-Rascón'),
(36,'Torneo San Ernesto de la Montaña','2025-02-06','09:00:00','2025-02-08','17:00:00','Virtual',1.36,'Cazares-Ureña'),
(37,'Torneo San Citlali de la Montaña','2025-02-07','09:00:00','2025-02-09','17:00:00','Virtual',4.06,'Proyectos'),
(38,'Torneo Nueva Singapur','2025-02-08','09:00:00','2025-02-10','17:00:00','Virtual',3.67,'Castellanos'),
(39,'Torneo San Isabel los altos','2025-02-09','09:00:00','2025-02-11','17:00:00','Virtual',1.57,'Corporacin'),
(40,'Torneo Nueva República Árabe Siria','2025-02-10','09:00:00','2025-02-12','17:00:00','Presencial',4.83,'Garza-Montemayor'),
(41,'Torneo San Mateo los altos','2025-02-11','09:00:00','2025-02-13','17:00:00','Virtual',4.99,'Proyectos'),
(42,'Torneo San Verónica de la Montaña','2025-02-12','09:00:00','2025-02-14','17:00:00','Presencial',1.38,'Grupo'),
(43,'Torneo Nueva Malasia','2025-02-13','09:00:00','2025-02-15','17:00:00','Presencial',1.43,'Industrias'),
(44,'Torneo San Miguel Ángel de la Montaña','2025-02-14','09:00:00','2025-02-16','17:00:00','Presencial',4.52,'Laboratorios'),
(45,'Torneo San Raquel los altos','2025-02-15','09:00:00','2025-02-17','17:00:00','Virtual',2.37,'Anaya'),
(46,'Torneo San Tomás los altos','2025-02-16','09:00:00','2025-02-18','17:00:00','Virtual',4.06,'Velázquez'),
(47,'Torneo San Georgina de la Montaña','2025-02-17','09:00:00','2025-02-19','17:00:00','Virtual',2.44,'Proyectos'),
(48,'Torneo San Vicente los bajos','2025-02-18','09:00:00','2025-02-20','17:00:00','Presencial',3.35,'Salinas'),
(49,'Torneo San Gustavo los altos','2025-02-19','09:00:00','2025-02-21','17:00:00','Virtual',2.27,'Laboratorios'),
(50,'Torneo San Luis los altos','2025-02-20','09:00:00','2025-02-22','17:00:00','Virtual',2.86,'Luevano,'),
(301,'CodeAndPizza2025','2025-06-10','09:00:00','2025-06-10','16:30:00','Virtual',2.09,'Jaguares'),
(302,'ByteMe2025','2025-06-20','09:00:00','2025-06-20','16:30:00','Presencial',1.97,'Halcones'),
(303,'DeepLogicChallenge','2024-05-10','09:00:00','2024-05-10','16:30:00','Virtual',2.76,'Códigos Locos'),
(304,'SmartCodeFest','2024-08-15','09:00:00','2024-08-15','16:30:00','Presencial',2.63,'Quantum Coders'),
(401,'StackCodeFest','2024-04-15','09:00:00','2024-04-15','16:00:00','Presencial',2,'Jaguares'),
(402,'VirtualHackStack','2024-10-12','08:30:00','2024-10-12','15:00:00','Virtual',2,'Jaguares');
/*!40000 ALTER TABLE `torneo` ENABLE KEYS */;
UNLOCK TABLES;
commit;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*M!100616 SET NOTE_VERBOSITY=@OLD_NOTE_VERBOSITY */;

-- Dump completed on 2026-02-10 13:11:35
