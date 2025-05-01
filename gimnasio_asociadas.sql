-- MySQL dump 10.13  Distrib 8.0.41, for Win64 (x86_64)
--
-- Host: localhost    Database: gimnasio
-- ------------------------------------------------------
-- Server version	8.0.41

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
-- Table structure for table `asociadas`
--

DROP TABLE IF EXISTS `asociadas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `asociadas` (
  `Identificacion` int NOT NULL,
  `Nombre` varchar(45) NOT NULL,
  `Direccion` varchar(45) NOT NULL,
  `Email` varchar(45) NOT NULL,
  `Numero_de_contacto` varchar(12) NOT NULL,
  `EPS` mediumtext,
  `Estatura` float DEFAULT NULL,
  `Peso_Corporal` float DEFAULT NULL,
  PRIMARY KEY (`Identificacion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `asociadas`
--

LOCK TABLES `asociadas` WRITE;
/*!40000 ALTER TABLE `asociadas` DISABLE KEYS */;
INSERT INTO `asociadas` VALUES (10789123,'Mariana Alejandra Soto','Av 19 # 12-35','marianasoto@gmail.com','3196789012','Sanitas',1.69,60),(11890123,'Isabella Rodríguez Pinzón','Cra 30 # 45-60','isarodriguez@yahoo.com','3207890123','Coomeva',1.65,58),(12901234,'Gabriela Sánchez Moreno','Calle 80 # 70-25','gabisanchez@gmail.com','3158901234','Salud Total',1.72,64),(13012345,'Natalia Guzmán Ortiz','Cra 60 # 5-40','natguzman@gmail.com','3169012345','Famisanar',1.63,55),(14123456,'Valentina Ramírez Silva','Av 26 # 50-15','valeramirez@hotmail.com','3170123456','Sura',1.68,59),(15234567,'Juliana Martínez Ríos','Calle 85 # 30-10','julimartinez@gmail.com','3181234567','Nueva EPS',1.7,62),(16345678,'Sara Cristina Gómez','Cra 40 # 22-35','saragomez@gmail.com','3192345678','Sanitas',1.66,57),(17456789,'Alejandra Castro Niño','Av 13 # 18-42','alecastro@yahoo.com','3203456789','Coomeva',1.64,56),(18567890,'Luisa Fernanda Medina','Calle 72 # 55-20','luisamedina@gmail.com','3214567890','Salud Total',1.71,63),(19678901,'Paola Andrea Núñez','Cra 25 # 90-15','paolanunez@gmail.com','3225678901','Famisanar',1.67,61),(20789012,'Diana Carolina Jiménez','Av 68 # 33-28','dianajimenez@hotmail.com','3236789012','Sura',1.69,60),(28765432,'María Fernanda López Gómez','Calle 45 # 22-10','mafelogo@gmail.com','3109876543','Sura',1.65,58),(34567821,'Ana Isabel Torres Méndez','Av 68 # 15-42','anatorres@hotmail.com','3156789012','Nueva EPS',1.7,62),(41234567,'Laura Valentina Rojas Páez','Cra 50 # 80-30','lauraroja@gmail.com','3201234567','Sanitas',1.63,55),(52345678,'Sofía Camila Díaz Castro','Calle 72 # 10-15','sofdiaz@yahoo.com','3178901234','Coomeva',1.68,59),(52632987,'Patricia Contreras Ramirez','Cra 114 # 100-51 -30','pato.89@gmail.com','3211223456','Famisanar',1.69,60),(63456789,'Carolina Andrea Pérez Ruiz','Cra 7 # 40-20','caroperez@gmail.com','3189012345','Salud Total',1.71,63),(74567890,'Daniela Estefanía Mendoza','Av Boyacá # 15-30','daniemendoza@gmail.com','3123456789','Famisanar',1.66,57),(85678901,'Valeria Julián Vargas','Calle 100 # 11-90','valejulian@gmail.com','3134567890','Sura',1.64,56),(96789012,'Camila Andrea Herrera','Cra 15 # 25-50','camiherrera@hotmail.com','3145678901','Nueva EPS',1.67,61);
/*!40000 ALTER TABLE `asociadas` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-04-13 19:20:24
