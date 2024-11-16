-- MySQL dump 10.13  Distrib 8.0.40, for Linux (x86_64)
--
-- Host: localhost    Database: college_database
-- ------------------------------------------------------
-- Server version	8.0.40-0ubuntu0.20.04.1

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
-- Table structure for table `Admins`
--

DROP TABLE IF EXISTS `Admins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Admins` (
  `ID` int NOT NULL,
  `first_name` varchar(20) NOT NULL,
  `last_name` varchar(20) NOT NULL,
  `birth_date` date DEFAULT NULL,
  `gender` enum('Male','Female') NOT NULL,
  `email` varchar(255) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Admins`
--

LOCK TABLES `Admins` WRITE;
/*!40000 ALTER TABLE `Admins` DISABLE KEYS */;
INSERT INTO `Admins` VALUES (1014,'Olawole','Ayoba','1985-05-15','Male','oayoba@manolya.edu','150 Baker Street, Victoria Island, Lagos'),(1023,'Nicholas','Eghagha','1990-10-10','Male','neghagha@manolya.edu','300, Chester Avenue, Ikeja, Lagos');
/*!40000 ALTER TABLE `Admins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Course_Allocation`
--

DROP TABLE IF EXISTS `Course_Allocation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Course_Allocation` (
  `course_id` int NOT NULL,
  `teacher_id` int NOT NULL,
  `admin_id` int DEFAULT NULL,
  PRIMARY KEY (`course_id`,`teacher_id`),
  KEY `teacher_id` (`teacher_id`),
  KEY `admin_id` (`admin_id`),
  CONSTRAINT `Course_Allocation_ibfk_1` FOREIGN KEY (`course_id`) REFERENCES `Courses` (`ID`),
  CONSTRAINT `Course_Allocation_ibfk_2` FOREIGN KEY (`teacher_id`) REFERENCES `Teachers` (`ID`),
  CONSTRAINT `Course_Allocation_ibfk_3` FOREIGN KEY (`admin_id`) REFERENCES `Admins` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Course_Allocation`
--

LOCK TABLES `Course_Allocation` WRITE;
/*!40000 ALTER TABLE `Course_Allocation` DISABLE KEYS */;
INSERT INTO `Course_Allocation` VALUES (102,1221,1014),(104,1154,1014),(111,1216,1014),(113,1102,1014),(115,1154,1014),(101,1102,1023),(103,1103,1023),(105,1101,1023),(112,1167,1023),(114,1221,1023);
/*!40000 ALTER TABLE `Course_Allocation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Course_Registration`
--

DROP TABLE IF EXISTS `Course_Registration`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Course_Registration` (
  `student_id` int NOT NULL,
  `course_id` int NOT NULL,
  `registration_date` date DEFAULT NULL,
  PRIMARY KEY (`student_id`,`course_id`),
  KEY `course_id` (`course_id`),
  CONSTRAINT `Course_Registration_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `Students` (`ID`),
  CONSTRAINT `Course_Registration_ibfk_2` FOREIGN KEY (`course_id`) REFERENCES `Courses` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Course_Registration`
--

LOCK TABLES `Course_Registration` WRITE;
/*!40000 ALTER TABLE `Course_Registration` DISABLE KEYS */;
INSERT INTO `Course_Registration` VALUES (2204,104,'2023-10-17'),(2204,105,'2023-10-18'),(2204,111,'2024-03-22'),(2204,113,'2024-03-23'),(2211,102,'2023-09-12'),(2211,103,'2023-09-13'),(2211,111,'2024-02-12'),(2211,113,'2024-02-16'),(2212,104,'2023-09-28'),(2212,105,'2023-09-29'),(2212,111,'2024-03-04'),(2212,113,'2024-03-03'),(2217,101,'2023-09-19'),(2217,102,'2023-09-18'),(2217,114,'2024-02-22'),(2217,115,'2024-02-23'),(2218,101,'2023-10-10'),(2218,102,'2023-10-11'),(2218,113,'2024-03-15'),(2218,115,'2024-03-16'),(2222,101,'2023-10-17'),(2222,104,'2023-10-18'),(2222,114,'2024-03-22'),(2222,115,'2024-03-23'),(2228,101,'2023-10-17'),(2228,105,'2023-10-18'),(2228,113,'2024-03-22'),(2228,115,'2024-03-23'),(2234,102,'2023-10-17'),(2234,104,'2023-10-18'),(2234,112,'2024-03-22'),(2234,115,'2024-03-23'),(2304,101,'2023-09-10'),(2304,105,'2023-09-11'),(2304,114,'2024-02-13'),(2304,115,'2024-02-17'),(2306,102,'2023-10-07'),(2306,105,'2023-10-06'),(2306,114,'2024-03-11'),(2306,115,'2024-03-12'),(2309,102,'2023-09-26'),(2309,104,'2023-09-27'),(2309,114,'2024-03-01'),(2309,115,'2024-03-02'),(2311,101,'2023-09-10'),(2311,102,'2023-09-11'),(2311,111,'2024-02-10'),(2311,115,'2024-02-11'),(2312,103,'2023-09-22'),(2312,104,'2023-09-23'),(2312,112,'2024-02-27'),(2312,115,'2024-02-26'),(2313,103,'2023-09-30'),(2313,104,'2023-10-01'),(2313,112,'2024-03-06'),(2313,115,'2024-03-05'),(2314,104,'2023-10-02'),(2314,105,'2023-10-03'),(2314,111,'2024-03-07'),(2314,113,'2024-03-08'),(2316,101,'2023-09-16'),(2316,104,'2023-09-17'),(2316,111,'2024-02-21'),(2316,115,'2024-02-20'),(2319,103,'2023-10-13'),(2319,105,'2023-10-12'),(2319,113,'2024-03-17'),(2319,114,'2024-03-18'),(2320,102,'2023-10-15'),(2320,104,'2023-10-14'),(2320,114,'2024-03-19'),(2320,115,'2024-03-20'),(2323,102,'2023-10-17'),(2323,105,'2023-10-18'),(2323,112,'2024-03-22'),(2323,114,'2024-03-24'),(2324,103,'2023-10-17'),(2324,105,'2023-10-18'),(2324,113,'2024-03-22'),(2324,114,'2024-03-23'),(2327,103,'2023-10-17'),(2327,104,'2023-10-18'),(2327,111,'2024-03-22'),(2327,112,'2024-03-23'),(2331,101,'2023-10-17'),(2331,103,'2023-10-18'),(2331,112,'2024-03-22'),(2331,114,'2024-03-23'),(2332,102,'2023-10-17'),(2332,105,'2023-10-18'),(2332,114,'2024-03-22'),(2332,115,'2024-03-24'),(2337,103,'2023-10-17'),(2337,105,'2023-10-18'),(2337,112,'2024-03-22'),(2337,114,'2024-03-23'),(2338,101,'2023-10-17'),(2338,102,'2023-10-18'),(2338,114,'2024-03-22'),(2338,115,'2024-03-23'),(2345,103,'2023-09-13'),(2345,104,'2023-09-12'),(2345,112,'2024-02-14'),(2345,114,'2024-02-15'),(2400,104,'2023-10-17'),(2400,105,'2023-10-18'),(2400,113,'2024-03-22'),(2400,115,'2024-03-23'),(2401,101,'2023-10-08'),(2401,104,'2023-10-09'),(2401,112,'2024-03-13'),(2401,113,'2024-03-14'),(2402,104,'2023-09-15'),(2402,105,'2023-09-14'),(2402,112,'2024-02-19'),(2402,113,'2024-02-18'),(2404,104,'2023-10-16'),(2404,105,'2023-10-17'),(2404,111,'2024-03-22'),(2404,113,'2024-03-21'),(2405,101,'2023-10-17'),(2405,105,'2023-10-18'),(2405,114,'2024-03-22'),(2405,115,'2024-03-23'),(2406,102,'2023-10-17'),(2406,105,'2023-10-18'),(2406,113,'2024-03-22'),(2406,114,'2024-03-24'),(2407,101,'2023-09-20'),(2407,104,'2023-09-21'),(2407,112,'2024-02-25'),(2407,113,'2024-02-24'),(2409,102,'2023-10-17'),(2409,105,'2023-10-18'),(2409,112,'2024-03-22'),(2409,113,'2024-03-23'),(2410,101,'2023-09-24'),(2410,103,'2023-09-25'),(2410,111,'2024-02-28'),(2410,113,'2024-02-29'),(2413,102,'2023-10-17'),(2413,103,'2023-10-18'),(2413,113,'2024-03-22'),(2413,115,'2024-03-23'),(2414,101,'2023-10-17'),(2414,105,'2023-10-18'),(2414,113,'2024-03-22'),(2414,115,'2024-03-24'),(2415,103,'2023-10-04'),(2415,104,'2023-10-05'),(2415,112,'2024-03-09'),(2415,113,'2024-03-10'),(2416,104,'2023-10-17'),(2416,105,'2023-10-18'),(2416,114,'2024-03-22'),(2416,115,'2024-03-22'),(2418,102,'2023-10-17'),(2418,103,'2023-10-18'),(2418,111,'2024-03-22'),(2418,115,'2024-03-24');
/*!40000 ALTER TABLE `Course_Registration` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Courses`
--

DROP TABLE IF EXISTS `Courses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Courses` (
  `ID` int NOT NULL,
  `course_name` varchar(255) DEFAULT NULL,
  `semester` varchar(10) DEFAULT NULL,
  `is_offered` tinyint(1) DEFAULT NULL,
  `admin_id` int DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `admin_id` (`admin_id`),
  CONSTRAINT `Courses_ibfk_1` FOREIGN KEY (`admin_id`) REFERENCES `Admins` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Courses`
--

LOCK TABLES `Courses` WRITE;
/*!40000 ALTER TABLE `Courses` DISABLE KEYS */;
INSERT INTO `Courses` VALUES (101,'Introduction to Data Science','Fall',1,1023),(102,'Web Development Fundamentals','Fall',1,1014),(103,'Entrepreneurship in the Digital Age','Fall',1,1014),(104,'Database Management Systems','Fall',1,1023),(105,'Project Management for Tech Projects','Fall',1,1014),(111,'Cybersecurity for Professionals','Spring',1,1014),(112,'Machine Learning and AI for Business','Spring',1,1023),(113,'Blockchain Technology and Its Applications','Spring',1,1023),(114,'Digital Marketing Strategies','Spring',1,1014),(115,'Data Analytics for Business Decisions','Spring',1,1023);
/*!40000 ALTER TABLE `Courses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Grading`
--

DROP TABLE IF EXISTS `Grading`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Grading` (
  `student_id` int NOT NULL,
  `course_id` int NOT NULL,
  `grade` enum('Pass','Fail') DEFAULT NULL,
  `teacher_id` int NOT NULL,
  PRIMARY KEY (`student_id`,`course_id`,`teacher_id`),
  KEY `course_id` (`course_id`),
  KEY `teacher_id` (`teacher_id`),
  CONSTRAINT `Grading_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `Students` (`ID`),
  CONSTRAINT `Grading_ibfk_2` FOREIGN KEY (`course_id`) REFERENCES `Courses` (`ID`),
  CONSTRAINT `Grading_ibfk_3` FOREIGN KEY (`teacher_id`) REFERENCES `Teachers` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Grading`
--

LOCK TABLES `Grading` WRITE;
/*!40000 ALTER TABLE `Grading` DISABLE KEYS */;
INSERT INTO `Grading` VALUES (2204,104,'Pass',1154),(2204,105,'Pass',1101),(2204,111,'Pass',1216),(2204,113,'Pass',1102),(2211,102,'Pass',1167),(2211,103,'Fail',1103),(2211,111,'Pass',1216),(2211,113,'Pass',1102),(2212,104,'Pass',1154),(2212,105,'Pass',1101),(2212,111,'Fail',1216),(2212,113,'Pass',1102),(2217,101,'Pass',1102),(2217,102,'Fail',1221),(2217,114,'Pass',1221),(2217,115,'Pass',1154),(2218,101,'Pass',1102),(2218,102,'Pass',1221),(2218,113,'Pass',1102),(2218,115,'Pass',1154),(2222,101,'Pass',1102),(2222,104,'Pass',1154),(2222,114,'Pass',1221),(2222,115,'Pass',1154),(2228,101,'Pass',1102),(2228,105,'Pass',1101),(2228,113,'Pass',1102),(2228,115,'Pass',1154),(2234,102,'Pass',1221),(2234,104,'Fail',1154),(2234,112,'Pass',1167),(2234,115,'Fail',1154),(2304,101,'Fail',1102),(2304,105,'Pass',1101),(2304,114,'Pass',1221),(2304,115,'Pass',1154),(2306,102,'Pass',1221),(2306,105,'Pass',1101),(2306,114,'Pass',1221),(2306,115,'Pass',1154),(2309,102,'Pass',1221),(2309,104,'Pass',1154),(2309,114,'Pass',1221),(2309,115,'Pass',1154),(2311,101,'Pass',1102),(2311,102,'Fail',1221),(2311,111,'Pass',1216),(2311,115,'Pass',1216),(2312,103,'Pass',1103),(2312,104,'Pass',1154),(2312,112,'Fail',1167),(2312,115,'Pass',1154),(2313,103,'Pass',1103),(2313,104,'Pass',1154),(2313,112,'Pass',1167),(2313,115,'Pass',1154),(2314,104,'Pass',1154),(2314,105,'Pass',1101),(2314,111,'Pass',1216),(2314,113,'Pass',1102),(2316,101,'Pass',1102),(2316,104,'Fail',1154),(2316,111,'Pass',1216),(2316,115,'Pass',1154),(2319,103,'Pass',1103),(2319,105,'Pass',1101),(2319,113,'Pass',1102),(2319,114,'Pass',1221),(2320,102,'Pass',1221),(2320,104,'Fail',1154),(2320,114,'Pass',1221),(2320,115,'Pass',1154),(2323,102,'Pass',1221),(2323,105,'Pass',1101),(2323,112,'Pass',1167),(2323,114,'Pass',1221),(2324,103,'Pass',1103),(2324,105,'Pass',1101),(2324,113,'Pass',1102),(2324,114,'Pass',1221),(2327,103,'Pass',1103),(2327,104,'Pass',1154),(2327,111,'Pass',1216),(2327,112,'Pass',1167),(2331,101,'Pass',1102),(2331,103,'Pass',1103),(2331,112,'Pass',1167),(2331,114,'Pass',1221),(2332,102,'Pass',1221),(2332,105,'Fail',1101),(2332,114,'Pass',1221),(2332,115,'Fail',1154),(2337,103,'Pass',1103),(2337,105,'Pass',1101),(2337,112,'Pass',1167),(2337,114,'Pass',1221),(2338,101,'Pass',1102),(2338,102,'Pass',1221),(2338,114,'Pass',1221),(2338,115,'Pass',1154),(2345,103,'Fail',1103),(2345,104,'Pass',1154),(2345,112,'Pass',1167),(2345,114,'Fail',1221),(2400,104,'Fail',1154),(2400,105,'Fail',1101),(2400,113,'Fail',1102),(2400,115,'Fail',1154),(2401,101,'Pass',1102),(2401,104,'Fail',1154),(2401,112,'Pass',1167),(2401,113,'Fail',1102),(2402,104,'Pass',1154),(2402,105,'Pass',1101),(2402,112,'Pass',1167),(2402,113,'Fail',1102),(2404,104,'Fail',1154),(2404,105,'Pass',1101),(2404,111,'Pass',1216),(2404,113,'Pass',1102),(2405,101,'Pass',1102),(2405,105,'Pass',1101),(2405,114,'Pass',1221),(2405,115,'Pass',1154),(2406,102,'Pass',1221),(2406,105,'Pass',1101),(2406,113,'Pass',1102),(2406,114,'Pass',1221),(2407,101,'Pass',1101),(2407,104,'Fail',1103),(2407,112,'Pass',1221),(2407,113,'Pass',1154),(2409,102,'Pass',1221),(2409,105,'Pass',1101),(2409,112,'Pass',1167),(2409,113,'Pass',1102),(2410,101,'Fail',1102),(2410,103,'Pass',1103),(2410,111,'Pass',1216),(2410,113,'Pass',1102),(2413,102,'Pass',1221),(2413,103,'Pass',1103),(2413,113,'Fail',1102),(2413,115,'Fail',1154),(2414,101,'Pass',1102),(2414,105,'Pass',1101),(2414,113,'Pass',1102),(2414,115,'Pass',1154),(2415,103,'Pass',1103),(2415,104,'Pass',1154),(2415,112,'Pass',1167),(2415,113,'Fail',1102),(2416,104,'Fail',1154),(2416,105,'Pass',1101),(2416,114,'Pass',1221),(2416,115,'Pass',1154),(2418,102,'Pass',1221),(2418,103,'Pass',1103),(2418,111,'Pass',1216),(2418,115,'Pass',1154);
/*!40000 ALTER TABLE `Grading` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Students`
--

DROP TABLE IF EXISTS `Students`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Students` (
  `ID` int NOT NULL,
  `first_name` varchar(20) NOT NULL,
  `last_name` varchar(20) NOT NULL,
  `birth_date` date DEFAULT NULL,
  `gender` enum('Male','Female') NOT NULL,
  `email` varchar(255) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `enrollment_year` int DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Students`
--

LOCK TABLES `Students` WRITE;
/*!40000 ALTER TABLE `Students` DISABLE KEYS */;
INSERT INTO `Students` VALUES (2204,'Amelia','Scott','1994-02-14','Female','ascott@manolya.edu','20 Marine Drive, Mumbai, India',2022),(2211,'Alex','Brown','1993-03-12','Male','abrown@manolya.edu','120 5th Avenue, New York, USA',2022),(2212,'Azra','Karayilan','1990-10-30','Female','akarayilan@manolya.edu','45 Taksim Square, Istanbul, Turkey',2022),(2217,'Shao','Xie','1997-09-01','Male','sxie@manolya.edu','88 Chang’an Avenue, Beijing, China',2022),(2218,'Isabella','Zaragozze','1986-04-10','Female','izaragozze@manolya.edu','42 Roma Street, Rome, Italy',2022),(2222,'Sara','Imani','1990-05-08','Female','simani@manolya.edu','7 Churchill Road, Cape Town, South Africa',2022),(2228,'Alice','Gomez','1990-09-05','Female','agomez@manolya.edu','90 Rua da Liberdade, Lisbon, Portugal',2022),(2234,'Grace','Kim','1990-11-09','Female','gkim@manolya.edu','123 Insadong St, Seoul, South Korea',2022),(2304,'Emma','Agundele','1998-05-04','Female','eagundele@manolya.edu','32 Victoria Island, Lagos, Nigeria',2023),(2306,'Murat','Çelik','1993-09-12','Male','mcelik@manolya.edu','20 Ataturk Boulevard, Ankara, Turkey',2023),(2309,'Lucas','Brown','1993-01-28','Male','lucas.brown@manolya.edu','17 Collins Street, Melbourne, Australia',2023),(2311,'Chukwudu','Francis','1986-08-15','Male','cfrancis@manolya.edu','15 Marina Street, Lagos, Nigeria',2022),(2312,'Marcus','Germaine','1992-03-15','Male','mgermaine@manolya.edu','32 Elizabeth Street, Sydney, Australia',2023),(2313,'Ethan','Parker','1997-06-14','Male','eparker@manolya.edu','1600 Amphitheatre Parkway, Miami, USA',2023),(2314,'Mathias','Jogurnese','1992-02-25','Male','mjorgurnese@manolya.edu','75 King Street, Toronto, Canada',2023),(2316,'Olivia','Pope','1988-12-16','Female','opope@manolya.edu','56 Queen Street, Toronto, Canada',2023),(2319,'Benjamin','Won Su','1922-08-30','Male','bwonsu@manolya.edu','92 Hongdae Street, Seoul, South Korea',2023),(2320,'Charlotte','Lime','1992-01-22','Female','clime@manolya.edu','55 Rue Montmartre, Paris, France',2023),(2323,'Felix','Johnson','1992-11-18','Male','fjohnson@manolya.edu','81 King William Street, Adelaide, Australia',2023),(2324,'Marta','Silva','1995-07-06','Female','msilva@manolya.edu','88 Avenida Paulista, São Paulo, Brazil',2023),(2327,'George','Carter','1993-04-15','Male','gcarter@manolya.edu','50 Oxford St, London, UK',2023),(2331,'Lucas','Fernandez','1991-06-14','Male','lfernandez@manolya.edu','54 Las Ramblas, Barcelona, Spain',2023),(2332,'Ella','Roberts','1991-05-03','Female','eroberts@manolya.edu','76 High St, Dublin, Ireland',2023),(2337,'Oscar','Chen','1988-09-18','Male','ochen@manolya.edu','101 Nathan Rd, Hong Kong',2023),(2338,'Sofia','Wang','1997-11-21','Female','swang@manolya.edu','88 Orchard Rd, Singapore',2023),(2345,'Jane','Smith','1987-11-21','Female','jsmith@manolya.edu','24 Baker Street, London, UK',2023),(2400,'Zara','Khan','1988-02-27','Female','zkhan@manolya.edu','12 Market St, Islamabad, Pakistan',2024),(2401,'James','Borabora','1985-12-20','Male','jborabora@manolya.edu','5 Orchard Road, Singapore',2024),(2402,'Liam','Green','1991-07-23','Male','lgreen@manolya.edu','45 Rue de Rivoli, Paris, France',2024),(2404,'Daniel','Victor','1994-10-15','Male','dvictor@manolya.edu','33 Market Street, Nairobi, Kenya',2024),(2405,'Ibrahim','Ali','1994-01-12','Male','iali@manolya.edu','33 Zayed St, Cairo, Egypt',2024),(2406,'Rebecca','Shaw','1996-03-25','Female','rshaw@manolya.edu','10 Central Park Ave, New York, USA',2024),(2407,'Sophia','Alonso','1994-02-10','Female','salonso@manolya.edu','67 Gran Via, Madrid, Spain',2024),(2409,'Noah','Diaz','1985-10-08','Male','ndiaz@manolya.edu','22 Avenida Libertador, Buenos Aires, Argentina',2024),(2410,'Mia','Silverstone','1994-11-11','Female','msilverstone@manolya.edu','101 George Street, Edinburgh, UK',2024),(2413,'Amir','Singh','1994-07-29','Male','asingh@manolya.edu','66 Connaught Place, New Delhi, India',2022),(2414,'Leo','Martinez','1987-12-19','Male','lmartinez@manolya.edu','34 Paseo de la Reforma, Mexico City, Mexico',2024),(2415,'Henry','Ogbayagbon','1989-03-03','Male','hogbayagbon@manolya.edu','10 Broad Street, Lagos, Nigeria',2024),(2416,'Ava','Murphy','1994-08-24','Female','amurphy@manolya.edu','77 Collins St, Melbourne, Australia',2024),(2418,'Jaxon','Lee','1991-05-11','Male','jlee@manolya.edu','55 Shibuya, Tokyo, Japan',2024);
/*!40000 ALTER TABLE `Students` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Teachers`
--

DROP TABLE IF EXISTS `Teachers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Teachers` (
  `ID` int NOT NULL,
  `first_name` varchar(20) NOT NULL,
  `last_name` varchar(20) NOT NULL,
  `birth_date` date DEFAULT NULL,
  `gender` enum('Male','Female') NOT NULL,
  `email` varchar(255) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Teachers`
--

LOCK TABLES `Teachers` WRITE;
/*!40000 ALTER TABLE `Teachers` DISABLE KEYS */;
INSERT INTO `Teachers` VALUES (1101,'Sam','Gudenberg','1978-04-30','Male','sgudenberg@manolya.edu','10 Karl-Liebknecht-Strasse, Berlin, Germany'),(1102,'Tom','Lanester','1975-03-22','Male','tlanester@manolya.edu','21 Maple Street, Toronto, Canada'),(1103,'Matthew','Eromosele','1990-07-05','Male','meromosele@manolya.edu','18 Ikoyi Crescent, Lagos, Nigeria'),(1154,'Paula','Manuella','1985-11-23','Female','pmanuella@manolya.edu','67 Rue de Rivoli, Paris, France'),(1167,'Paul','Harrison','1980-06-17','Male','pharrison@manolya.edu','33 5th Avenue, New York, USA'),(1216,'Elena','Augelera','1987-09-09','Female','eagulera@manolya.edu','45 Las Ramblas, Barcelona, Spain'),(1221,'Jane','Coldwell','1982-08-14','Female','jcoldwell@manolya.edu','42 Baker Street, London, United Kingdom');
/*!40000 ALTER TABLE `Teachers` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-11-15 14:26:03
