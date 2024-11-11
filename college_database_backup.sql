-- MySQL dump 10.13  Distrib 8.0.39, for Linux (x86_64)
--
-- Host: localhost    Database: college_database
-- ------------------------------------------------------
-- Server version	8.0.39-0ubuntu0.20.04.1

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
  `ID` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Admins`
--

LOCK TABLES `Admins` WRITE;
/*!40000 ALTER TABLE `Admins` DISABLE KEYS */;
INSERT INTO `Admins` VALUES (1,'Nicholas Eghagha','neghagha@college.edu'),(2,'Olawole Ayoba','oayoba@college.edu');
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
  `assigned_by` int DEFAULT NULL,
  PRIMARY KEY (`course_id`,`teacher_id`),
  KEY `teacher_id` (`teacher_id`),
  KEY `assigned_by` (`assigned_by`),
  CONSTRAINT `Course_Allocation_ibfk_1` FOREIGN KEY (`course_id`) REFERENCES `Courses` (`ID`),
  CONSTRAINT `Course_Allocation_ibfk_2` FOREIGN KEY (`teacher_id`) REFERENCES `Teachers` (`ID`),
  CONSTRAINT `Course_Allocation_ibfk_3` FOREIGN KEY (`assigned_by`) REFERENCES `Admins` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Course_Allocation`
--

LOCK TABLES `Course_Allocation` WRITE;
/*!40000 ALTER TABLE `Course_Allocation` DISABLE KEYS */;
/*!40000 ALTER TABLE `Course_Allocation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Course_Registration`
--

DROP TABLE IF EXISTS `Course_Registration`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Course_Registration` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `student_id` int DEFAULT NULL,
  `course_id` int DEFAULT NULL,
  `registration_date` date DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Course_Registration`
--

LOCK TABLES `Course_Registration` WRITE;
/*!40000 ALTER TABLE `Course_Registration` DISABLE KEYS */;
/*!40000 ALTER TABLE `Course_Registration` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Courses`
--

DROP TABLE IF EXISTS `Courses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Courses` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `course_name` varchar(255) DEFAULT NULL,
  `semester` varchar(10) DEFAULT NULL,
  `is_offered` tinyint(1) DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `created_by` (`created_by`),
  CONSTRAINT `Courses_ibfk_1` FOREIGN KEY (`created_by`) REFERENCES `Admins` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=111 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Courses`
--

LOCK TABLES `Courses` WRITE;
/*!40000 ALTER TABLE `Courses` DISABLE KEYS */;
INSERT INTO `Courses` VALUES (101,'Introduction to Programming','Fall',1,1),(102,'Web Development Fundamentals','Fall',1,1),(103,'Data Structures and Algorithms','Fall',1,1),(104,'Database Management Systems','Fall',1,2),(105,'Mobile App Development','Fall',1,2),(106,'Cybersecurity Essentials','Spring',1,2),(107,'Cloud Computing Concepts','Spring',1,1),(108,'Machine Learning Basics','Spring',1,1),(109,'Digital Marketing Strategies','Spring',1,2),(110,'User Experience Design','Spring',1,2);
/*!40000 ALTER TABLE `Courses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Grading`
--

DROP TABLE IF EXISTS `Grading`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Grading` (
  `reg_id` int NOT NULL,
  `grade` enum('Pass','Fail') DEFAULT NULL,
  `graded_by` int NOT NULL,
  PRIMARY KEY (`reg_id`,`graded_by`),
  KEY `graded_by` (`graded_by`),
  CONSTRAINT `Grading_ibfk_1` FOREIGN KEY (`reg_id`) REFERENCES `Course_Registration` (`ID`),
  CONSTRAINT `Grading_ibfk_2` FOREIGN KEY (`graded_by`) REFERENCES `Teachers` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Grading`
--

LOCK TABLES `Grading` WRITE;
/*!40000 ALTER TABLE `Grading` DISABLE KEYS */;
/*!40000 ALTER TABLE `Grading` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Students`
--

DROP TABLE IF EXISTS `Students`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Students` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `enrollment_year` int NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Students`
--

LOCK TABLES `Students` WRITE;
/*!40000 ALTER TABLE `Students` DISABLE KEYS */;
INSERT INTO `Students` VALUES (1,'Chukwudu Francis','cfrancis@college.edu',2023),(2,'Jane Smith','jsmith@college.edu',2023),(3,'Alex Brown','abrown@college.edu',2022),(4,'Emma Agundele','eagundele@college.edu',2023),(5,'Liam Green','lgreen@college.edu',2024),(6,'Olivia Pope','opope@college.edu',2023),(7,'Shao Xie','sxie@college.edu',2022),(8,'Sophia Alonso','salonso@college.edu',2024),(9,'Marcus Germaine','mgermaine@college.edu',2023),(10,'Mia Silverstone','msilverstone@college.edu',2024),(11,'Lucas Brown','lucas.brown@college.edu',2023),(12,'Azra Karayilan','akarayilan@college.edu',2022),(13,'Ethan Parker','eparker@college.edu',2023),(14,'Mathias Jogurnese','mjorgurnese@college.edu',2023),(15,'Henry Ogbayagbon','hogbayagbon@college.edu',2024),(16,'Murat Çelik','mcelik@college.edu',2023),(17,'James Borabora','jborabora@college.edu',2024),(18,'Isabella Zaragozze','izaragozze@college.edu',2022),(19,'Benjamin Won Su','bwonsu@college.edu',2023),(20,'Charlotte Lime','clime@college.edu',2023);
/*!40000 ALTER TABLE `Students` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Teachers`
--

DROP TABLE IF EXISTS `Teachers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Teachers` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Teachers`
--

LOCK TABLES `Teachers` WRITE;
/*!40000 ALTER TABLE `Teachers` DISABLE KEYS */;
INSERT INTO `Teachers` VALUES (1,'Tom Lanester','tlanester@college.edu'),(2,'Jane Coldwell','jcoldwell@college.edu'),(3,'Mattew Eromosele','meromosele@college.edu'),(4,'Paula Manuella','pmanuella@college.edu'),(5,'Sam Gudenberg','sgudenberg@college.edu'),(6,'Elena Augelera','eagulera@college.edu'),(7,'Paul Harrison','pharrison@college.edu');
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

-- Dump completed on 2024-11-11 14:59:38
