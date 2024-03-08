-- MySQL dump 10.13  Distrib 8.0.36, for Linux (x86_64)
--
-- Host: localhost    Database: bookstore-django
-- ------------------------------------------------------
-- Server version	8.0.36-0ubuntu0.22.04.1

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
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add format',7,'add_format'),(26,'Can change format',7,'change_format'),(27,'Can delete format',7,'delete_format'),(28,'Can view format',7,'view_format'),(29,'Can add author',8,'add_author'),(30,'Can change author',8,'change_author'),(31,'Can delete author',8,'delete_author'),(32,'Can view author',8,'view_author'),(33,'Can add publisher',9,'add_publisher'),(34,'Can change publisher',9,'change_publisher'),(35,'Can delete publisher',9,'delete_publisher'),(36,'Can view publisher',9,'view_publisher'),(37,'Can add book',10,'add_book'),(38,'Can change book',10,'change_book'),(39,'Can delete book',10,'delete_book'),(40,'Can view book',10,'view_book'),(41,'Can add classification',11,'add_classification'),(42,'Can change classification',11,'change_classification'),(43,'Can delete classification',11,'delete_classification'),(44,'Can view classification',11,'view_classification'),(45,'Can add literature',12,'add_literature'),(46,'Can change literature',12,'change_literature'),(47,'Can delete literature',12,'delete_literature'),(48,'Can view literature',12,'view_literature'),(49,'Can add genre',13,'add_genre'),(50,'Can change genre',13,'change_genre'),(51,'Can delete genre',13,'delete_genre'),(52,'Can view genre',13,'view_genre'),(53,'Can add book literature',14,'add_bookliterature'),(54,'Can change book literature',14,'change_bookliterature'),(55,'Can delete book literature',14,'delete_bookliterature'),(56,'Can view book literature',14,'view_bookliterature'),(57,'Can add book genre',15,'add_bookgenre'),(58,'Can change book genre',15,'change_bookgenre'),(59,'Can delete book genre',15,'delete_bookgenre'),(60,'Can view book genre',15,'view_bookgenre');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$320000$lamFDHgeDEnwjUSBEiffzy$j0sKz6ocyFw8pFHA0lK+88juqN4YwX74M//Qrzby6jY=','2024-03-03 23:55:10.143275',1,'karkraz','','','karkraz@karkraz.com',1,1,'2024-03-03 23:09:36.111396');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_groups` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2024-03-04 00:15:50.576305','124','ORGULHO E PRECONCEITO',2,'[{\"changed\": {\"fields\": [\"Published at\", \"Author\"]}}]',10,1),(2,'2024-03-04 00:16:13.311611','181','O CORVO E OUTROS POEMAS',2,'[{\"changed\": {\"fields\": [\"Published at\"]}}]',10,1),(3,'2024-03-04 00:16:42.813685','180','SOBREVIVENTE',2,'[{\"changed\": {\"fields\": [\"Published at\"]}}]',10,1),(4,'2024-03-04 00:17:25.361185','80','O SÓSIA',2,'[{\"changed\": {\"fields\": [\"Published at\"]}}]',10,1),(5,'2024-03-04 00:17:48.770016','74','O GRANDE GATSBY',2,'[{\"changed\": {\"fields\": [\"Published at\"]}}]',10,1),(6,'2024-03-04 00:18:11.748405','79','MEMORIA DA CASA DOS MORTOS',2,'[{\"changed\": {\"fields\": [\"Published at\"]}}]',10,1),(7,'2024-03-04 00:18:29.021821','77','CRIME E CASTIGO',2,'[{\"changed\": {\"fields\": [\"Published at\"]}}]',10,1),(8,'2024-03-04 00:18:48.744563','76','DIÁRIOS DO SUBSOLO',2,'[{\"changed\": {\"fields\": [\"Published at\"]}}]',10,1),(9,'2024-03-04 00:47:00.281713','62','A QUEDA',2,'[{\"changed\": {\"fields\": [\"Published at\"]}}]',10,1),(10,'2024-03-04 00:52:51.170645','39','NULL',1,'[{\"added\": {}}]',9,1),(11,'2024-03-04 00:52:54.276139','277','O ÚLTIMO DESEJO',2,'[{\"changed\": {\"fields\": [\"Isbn\", \"Publisher\"]}}]',10,1),(12,'2024-03-04 00:53:14.667220','283','O CASTELO',2,'[{\"changed\": {\"fields\": [\"Author\"]}}]',10,1),(13,'2024-03-04 00:53:24.671789','276','O CASTELO ANIMADO',2,'[{\"changed\": {\"fields\": [\"Author\"]}}]',10,1),(14,'2024-03-04 00:53:41.499379','278','A ESPADA DO DESTINO',2,'[{\"changed\": {\"fields\": [\"Author\"]}}]',10,1),(15,'2024-03-04 00:54:17.383960','288','MEU NOME NÃO É JOHNNY',2,'[{\"changed\": {\"fields\": [\"Published at\"]}}]',10,1),(16,'2024-03-04 00:54:39.755059','282','CREPÚSCULO DOS ÍDOLOS',2,'[{\"changed\": {\"fields\": [\"Author\"]}}]',10,1),(17,'2024-03-04 00:54:47.956074','281','O RETRATO DE DORIAN GRAY',2,'[{\"changed\": {\"fields\": [\"Author\"]}}]',10,1),(18,'2024-03-04 00:55:05.923084','287','CARTA AO PAI',2,'[{\"changed\": {\"fields\": [\"Published at\"]}}]',10,1),(19,'2024-03-04 00:55:33.689844','291','GUERRA E PAZ: VOLUME 2',2,'[{\"changed\": {\"fields\": [\"Published at\"]}}]',10,1),(20,'2024-03-04 00:56:13.192032','280','O MERCADOR DE VENEZA',2,'[{\"changed\": {\"fields\": [\"Author\", \"Publisher\"]}}]',10,1),(21,'2024-03-04 00:56:19.839029','281','O RETRATO DE DORIAN GRAY',2,'[]',10,1),(22,'2024-03-04 00:56:40.594551','285','ALÉM DO BEM E DO MAL',2,'[{\"changed\": {\"fields\": [\"Published at\"]}}]',10,1),(23,'2024-03-04 00:57:12.623348','296','A PLANTA DE FERRO',2,'[{\"changed\": {\"fields\": [\"Published at\"]}}]',10,1),(24,'2024-03-04 00:57:29.058075','279','MITOLOGIA NÓRDICA',2,'[{\"changed\": {\"fields\": [\"Author\"]}}]',10,1),(25,'2024-03-04 00:57:46.587631','286','O JOGADOR',2,'[{\"changed\": {\"fields\": [\"Published at\"]}}]',10,1),(26,'2024-03-04 00:58:32.351065','269','O OUTRO',2,'[{\"changed\": {\"fields\": [\"Publisher\"]}}]',10,1),(27,'2024-03-04 00:59:31.573950','270','ZODIACO',2,'[{\"changed\": {\"fields\": [\"Publisher\"]}}]',10,1),(28,'2024-03-04 01:00:18.652906','261','E OS HIPOPÓTAMOS FORAM COZIDOS EM SEUS TANQUES',2,'[{\"changed\": {\"fields\": [\"Author\"]}}]',10,1),(29,'2024-03-04 01:01:05.949130','244','ORGULHO E PRECONCEITO',2,'[{\"changed\": {\"fields\": [\"Author\"]}}]',10,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(8,'mybooks','author'),(10,'mybooks','book'),(15,'mybooks','bookgenre'),(14,'mybooks','bookliterature'),(11,'mybooks','classification'),(7,'mybooks','format'),(13,'mybooks','genre'),(12,'mybooks','literature'),(9,'mybooks','publisher'),(6,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2024-03-03 23:04:43.291123'),(2,'auth','0001_initial','2024-03-03 23:04:43.833219'),(3,'admin','0001_initial','2024-03-03 23:04:43.985388'),(4,'admin','0002_logentry_remove_auto_add','2024-03-03 23:04:44.000563'),(5,'admin','0003_logentry_add_action_flag_choices','2024-03-03 23:04:44.032860'),(6,'contenttypes','0002_remove_content_type_name','2024-03-03 23:04:44.152165'),(7,'auth','0002_alter_permission_name_max_length','2024-03-03 23:04:44.223223'),(8,'auth','0003_alter_user_email_max_length','2024-03-03 23:04:44.275263'),(9,'auth','0004_alter_user_username_opts','2024-03-03 23:04:44.288793'),(10,'auth','0005_alter_user_last_login_null','2024-03-03 23:04:44.337306'),(11,'auth','0006_require_contenttypes_0002','2024-03-03 23:04:44.343048'),(12,'auth','0007_alter_validators_add_error_messages','2024-03-03 23:04:44.357626'),(13,'auth','0008_alter_user_username_max_length','2024-03-03 23:04:44.416998'),(14,'auth','0009_alter_user_last_name_max_length','2024-03-03 23:04:44.478942'),(15,'auth','0010_alter_group_name_max_length','2024-03-03 23:04:44.506243'),(16,'auth','0011_update_proxy_permissions','2024-03-03 23:04:44.520030'),(17,'auth','0012_alter_user_first_name_max_length','2024-03-03 23:04:44.582275'),(18,'sessions','0001_initial','2024-03-03 23:04:44.626568'),(19,'mybooks','0001_initial','2024-03-03 23:52:28.272578'),(20,'mybooks','0002_alter_book_publisher','2024-03-04 00:10:06.967192'),(21,'mybooks','0003_classification','2024-03-06 02:21:23.498446'),(22,'mybooks','0004_classification_value','2024-03-06 02:28:58.766285'),(23,'mybooks','0005_book_to_buy','2024-03-06 02:39:53.170174'),(24,'mybooks','0006_literature','2024-03-06 03:28:35.089481'),(25,'mybooks','0007_genre','2024-03-06 04:18:01.731385'),(26,'mybooks','0008_alter_genre_genre','2024-03-06 04:21:00.427973'),(27,'mybooks','0009_alter_literature_value_bookliterature','2024-03-07 01:54:07.728549'),(28,'mybooks','0010_alter_bookliterature_book','2024-03-07 23:59:40.454584'),(29,'mybooks','0011_alter_book_author_and_more','2024-03-08 00:14:34.193828'),(30,'mybooks','0012_alter_book_author','2024-03-08 00:15:32.978762'),(31,'mybooks','0013_bookgenre','2024-03-08 00:59:53.313291');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('v8987eazkqn0la58iyj1k3pnew9nih8p','.eJxVjLEOAiEQRP-F2pBF4ARLe7-BLLsgpwaS464y_ruSXKHNFG_ezEsE3NYStp6WMLM4CyUOvywiPVIdBd-x3pqkVtdljnIocm-7vDZOz8vu_h0U7GWs4eQwO8jZTOzAgmFSSns1ofdO56PVnIH4y0cm4w1Y8pEYY2anxPsD2_g4Kg:1rgvfi:RkceQlKYkIEL2KZfaEAIrIsuqzG4z-RtkcIuel2Dezk','2024-03-17 23:55:10.147785');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mybooks_author`
--

DROP TABLE IF EXISTS `mybooks_author`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mybooks_author` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `nationality` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mybooks_author`
--

LOCK TABLES `mybooks_author` WRITE;
/*!40000 ALTER TABLE `mybooks_author` DISABLE KEYS */;
INSERT INTO `mybooks_author` VALUES (1,'ALLEN GINSBERG','US'),(2,'ANTHONY BURGUESS','UK'),(3,'BRAM STOKER','UK'),(4,'CHARLES DICKENS','UK'),(5,'CHUCK PALAHNIUK','US'),(6,'DAVID GOODIS','US'),(7,'DIANE DI PRIMA','US'),(8,'ERNEST HEMMINGWAY','US'),(9,'F. SCOTT FITZGERALD','US'),(10,'FIODOR DOSTOIEVSKI','RUSSIA'),(11,'GEORGE R. R. MARTIN','US'),(12,'GEORGE ORWELL','UK'),(13,'H. G. WELLS','UK'),(14,'H. P. LOVECRAFT','US'),(15,'HUNTER S. THOMPSON','US'),(16,'J. K. ROWLING','UK'),(17,'J. R. R. TOLKIEN','UK'),(18,'JACK KEROUAC','FRANCE/CANADA'),(19,'JACK LONDON','US'),(20,'JANE AUSTEN','UK'),(21,'JORGE AMADO','BRAZIL'),(22,'GULHERME FIUZA','BRAZIL'),(23,'JOHN FANTE','US/ITALY'),(24,'KEN KESSEY','US'),(25,'KURT VONNEGUT','US'),(26,'LAWRENCE FERLINGHETTI','US'),(27,'MACHADO DE ASSIS','BRAZIL'),(28,'PATRICK SÜSKIND','GERMANY'),(29,'PIERRE BOULLE','FRANCE'),(30,'WILLIAM GOLDING','UK'),(31,'WILLIAM S. BURROUGHS','US'),(32,'WILLIAM S. BURROUGHS/JACK KEROUAC','US'),(33,'LIEV TOLSTOI','RUSSIA'),(34,'RENÉ-VICTOR PILHES','FRANCE'),(35,'OSAMU DAZAI','JAPAN'),(36,'THOMAS TRYON','US'),(37,'ROBERT GREYSMITH','US'),(38,'TOM PERROTTA','US'),(39,'CARLO COLLODI','ITALY'),(40,'FRANZ KAFKA','CZECH REPUBLIC'),(41,'DIANA WYNNE JONES','UK'),(42,'ANDRZEJ SAPKOWSKI','POLAND'),(43,'NEIL GAIMAN','UK'),(44,'WILLIAM SHAKESPEARE','UK'),(45,'OSCAR WILDE','UK'),(46,'FRIEDRICH NIETZSCHE','GERMANY'),(47,'STEPHEN KING','US'),(48,'EDGAR ALLAN POE','US'),(49,'DAVID FOSTER WALLACE','US'),(50,'ALBERT CAMUS','ARGELIA'),(51,'HERMAN MELVILLE','US');
/*!40000 ALTER TABLE `mybooks_author` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mybooks_book`
--

DROP TABLE IF EXISTS `mybooks_book`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mybooks_book` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `title` varchar(300) NOT NULL,
  `published_at` varchar(4) DEFAULT NULL,
  `isbn` varchar(20) DEFAULT NULL,
  `was_read` varchar(3) NOT NULL,
  `author_id` bigint NOT NULL,
  `format_id` bigint NOT NULL,
  `publisher_id` bigint DEFAULT NULL,
  `publisher_at` int DEFAULT NULL,
  `to_buy` varchar(5) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mybooks_book_author_id_e12b4761_fk_mybooks_author_id` (`author_id`),
  KEY `mybooks_book_format_id_dd047dee_fk_mybooks_format_id` (`format_id`),
  KEY `mybooks_book_publisher_id_7edb8f1a_fk_mybooks_publisher_id` (`publisher_id`),
  CONSTRAINT `mybooks_book_author_id_e12b4761_fk_mybooks_author_id` FOREIGN KEY (`author_id`) REFERENCES `mybooks_author` (`id`),
  CONSTRAINT `mybooks_book_format_id_dd047dee_fk_mybooks_format_id` FOREIGN KEY (`format_id`) REFERENCES `mybooks_format` (`id`),
  CONSTRAINT `mybooks_book_publisher_id_7edb8f1a_fk_mybooks_publisher_id` FOREIGN KEY (`publisher_id`) REFERENCES `mybooks_publisher` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=302 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mybooks_book`
--

LOCK TABLES `mybooks_book` WRITE;
/*!40000 ALTER TABLE `mybooks_book` DISABLE KEYS */;
INSERT INTO `mybooks_book` VALUES (182,'A QUEDA','1956','978-85-7799-008-5','YES',50,1,26,NULL,'No'),(183,'O ESTRANGEIRO','1942','978-85-7799-270-6','NO',50,1,26,NULL,'No'),(184,'A QUEDA DA AMÉRICA','1966','978-85-254-3085-4','YES',1,1,1,NULL,'No'),(185,'UIVO','1956','978-85-254-1022-1','YES',1,1,1,NULL,'No'),(186,'LARANJA MECÂNICA','1962','978-85-7657-446-0','YES',2,3,20,NULL,'No'),(187,'DRÁCULA','1987','978-65-5561-257-8','YES',3,5,31,NULL,'No'),(188,'UM CONTO DE NATAL','1843','978-85-254-1243-0','YES',4,1,1,NULL,'No'),(189,'O CLUBE DA LUTA','1996','978-85-8044-449-0','YES',5,3,3,NULL,'No'),(190,'A GAROTA DE CASSIDY','1951','85-254-0214-1','YES',6,1,1,NULL,'No'),(191,'MEMÓRIAS DE UMA BEATNIK','1994','978-85-63137-06-7','YES',7,3,11,NULL,'No'),(192,'O SOL TAMBEM SE LEVANTA','1926','978-02-957-9776-2','YES',8,4,9,NULL,'No'),(193,'O VELHO E O MAR','1952','978-85-286-1798-6','YES',8,3,12,NULL,'No'),(194,'O GRANDE GATSBY','1925','978-65-5870-087-6','YES',9,5,4,NULL,'No'),(195,'O CURIOSO CASO DE BENJAMIN BUTTON','1922','978-85-254-2857-8','YES',9,1,1,NULL,'No'),(196,'DIÁRIOS DO SUBSOLO','1864','978-85-7232-870-8','YES',10,1,6,NULL,'No'),(197,'CRIME E CASTIGO','1866','978-65-86014-67-9','YES',10,4,6,NULL,'No'),(198,'NOITES BRANCAS','1848','978-85-254-1748-0','YES',10,1,6,NULL,'No'),(199,'MEMORIA DA CASA DOS MORTOS','1862','978-85-254-1755-8','YES',10,1,1,NULL,'No'),(200,'O SÓSIA','1846','978-65-5910-167-2','YES',10,4,6,NULL,'No'),(201,'O CAVALEIRO DOS SETE REINOS','1998','978-85-441-0404-0','YES',11,4,3,NULL,'No'),(202,'\"1984\"','1949','978-85-359-1484-9','YES',12,3,8,NULL,'No'),(203,'A REVOLUÇÃO DOS BICHOS','1945','978-85-359-0955-5','YES',12,3,8,NULL,'No'),(204,'NA PIOR EM PARIS E LONDRES','1933','978-65-896-7819-9','YES',12,5,32,NULL,'No'),(205,'GUERRA DOS MUNDOS','1898','978-85-254-3629-0','YES',13,1,1,NULL,'No'),(206,'A MÁQUINA DO TEMPO','1895','978-65-556-1264-6','YES',13,4,14,NULL,'No'),(207,'A COR QUE CAIU DO ESPAÇO','1927','978-85-8442-355-2','YES',14,5,18,NULL,'No'),(208,'SUSSURROS NA ESCURIDÃO','1968','978-85-8442-357-6','YES',14,5,18,NULL,'No'),(209,'O CHAMADO DE CTHULHU','1928','978-85-8442-353-8','YES',14,5,18,NULL,'No'),(210,'RUM: DIÁRIO DE UM JORNALISTA BÊBADO','1998','85-7616-108-7','YES',15,5,19,NULL,'No'),(211,'MEDO E DELÍRIO EM LAS VEGAS','1971',NULL,'YES',15,3,1,NULL,'Yes'),(212,'HARRY POTTER E A PEDRA FILOSOFAL','1997','978-85-325-2305-1','YES',16,3,2,NULL,'No'),(213,'HARRY POTTER E A CÂMARA SECRETA','1998','978-85-325-2306-8','YES',16,3,2,NULL,'No'),(214,'HARRY POTTER E O CÁLICE DE FOGO','2000','978-85-325-2308-2','YES',16,3,2,NULL,'No'),(215,'HARRY POTTER E O PRISIONEIRO DE AZKABAN','1999','978-85-325-2307-5','YES',16,3,2,NULL,'No'),(216,'HARRY POTTER E A ORDEM DA FÊNIX','2003','978-85-325-2309-9','YES',16,3,2,NULL,'No'),(217,'HARRY POTTER E AS RELÍQUIAS DA MORTE','2007','978-85-325-2311-2','YES',16,3,2,NULL,'No'),(218,'HARRY POTTER E O ENIGMA DO PRÍNCIPE','2005','978-85-325-2310-5','YES',16,3,2,NULL,'No'),(219,'O SENHOR DOS ANÉIS: A SOCIEDADE DO ANEL','1954','978-85-95084-75-9','YES',17,4,7,NULL,'No'),(220,'O SENHOR DOS ANÉIS: AS DUAS TORRES','1954','978-85-95084-76-6','YES',17,4,7,NULL,'No'),(221,'O SENHOR DOS ANÉIS: O RETORNO DO REI','1955','978-85-95084-77-3','YES',17,4,7,NULL,'No'),(222,'O HOBBIT','1937','978-85-9508-474-2','YES',17,4,7,NULL,'No'),(223,'O HOBBIT','1937','978-65-55110-29-6','YES',17,1,7,NULL,'No'),(224,'ON THE ROAD','1957','978-85-254-1320-8','YES',18,1,1,NULL,'No'),(225,'ON THE ROAD (O MANUSCRITO ORIGINAL)','1951','978-85-254-2488-4','YES',18,1,1,NULL,'No'),(226,'ON THE ROAD','1957','978-85-254-2869-1','YES',18,4,1,NULL,'No'),(227,'ON THE ROAD','1957','978-85-254-3232-2','YES',18,3,1,NULL,'No'),(228,'OS VAGABUNDOS ILUMINADOS','1958','978-85-254-1364-2','YES',18,1,1,NULL,'No'),(229,'OS VAGABUNDOS ILUMINADOS','1958','978-65-5666-238-1','YES',18,3,1,NULL,'No'),(230,'TRISTESSA','1960','978-85-254-1546-2','YES',18,1,1,NULL,'No'),(231,'VISÕES DE GERARD','1963','978-85-254-3278-0','YES',18,1,1,NULL,'No'),(232,'ANJOS DA DESOLAÇÃO','1965','978-85-254-2041-1','YES',18,3,1,NULL,'No'),(233,'SATORI EM PARIS','1966','978-85-254-1989-7','YES',18,1,1,NULL,'No'),(234,'MAGGIE CASSIDY','1959','978-85-254-3907-9','YES',18,3,1,NULL,'No'),(235,'PIC','1971','978-85-254-3458-6','YES',18,1,1,NULL,'No'),(236,'A GERAÇÃO BEAT','1957','978-85-254-1667-4','YES',18,1,1,NULL,'No'),(237,'BIG SUR','1962','978-85-254-1927-9','YES',18,1,1,NULL,'No'),(238,'VIAJANTE SOLITÁRIO','1960','978-85-254-1448-9','YES',18,1,1,NULL,'No'),(239,'DOUTOR SAX','1959','978-65-5666-335-7','NO',18,3,1,NULL,'No'),(240,'CENAS DE NOVA YORK',NULL,NULL,'YES',18,2,1,NULL,'Yes'),(241,'OS SUBTERRÂNEOS','1958','978-85-254-1596-1','YES',18,1,1,NULL,'No'),(242,'OS SUBTERRÂNEOS','1958','978-85-254-3768-6','YES',18,3,1,NULL,'No'),(243,'A ESTRADA','1907','','YES',19,2,NULL,NULL,'No'),(244,'ORGULHO E PRECONCEITO','1813','978-65-5870-116-3','YES',20,5,13,NULL,'No'),(245,'PERGUNTE AO PÓ','1939','978-85-03-00753-5','YES',23,3,22,NULL,'No'),(246,'CAPITÃES DA AREIA','1937','978-85-359-1406-1','YES',21,3,37,NULL,'No'),(247,'UM ESTRANHO NO NINHO','1976','978-85-7799-042-9','YES',24,1,26,NULL,'No'),(248,'PIANO MECÂNICO','1952','978-65-5560-022-3','YES',25,4,1,NULL,'No'),(249,'AMOR NOS TEMPOS DE FÚRIA','1988','978-85-254-2964-9','YES',26,1,1,NULL,'No'),(250,'QUINCAS BORBA','1891','978-85-254-0668-2','YES',27,1,1,NULL,'No'),(251,'O ALIENISTA','1882',NULL,'YES',27,2,NULL,NULL,'Yes'),(252,'DOM CASMURRO','1899',NULL,'YES',27,2,NULL,NULL,'Yes'),(253,'MEMÓRIAS PÓSTUMAS DE BRÁS CUBAS','1881','978-85-326-5417-5','YES',27,1,27,NULL,'No'),(254,'O PERFUME','1985','85-01-02776-6','YES',28,3,34,NULL,'No'),(255,'O PLANETA DOS MACACOS','1963','978-65-86064-05-6','YES',29,3,20,NULL,'No'),(256,'O SENHOR DAS MOSCAS','1954','978-85-5652-122-4','YES',30,3,17,NULL,'No'),(257,'O GATO POR DENTRO','1986','978-8525415264','NO',31,2,1,NULL,'Maybe'),(258,'ALMOÇO NU','1959','978-85-359-2707-8','YES',31,3,8,NULL,'No'),(259,'JUNKY','1953','978-85-359-2237-0','YES',31,3,8,NULL,'No'),(260,'QUEER','1985','978-85-359-2844-0','YES',31,3,8,NULL,'No'),(261,'E OS HIPOPÓTAMOS FORAM COZIDOS EM SEUS TANQUES','1945','978-85-359-1450-4','YES',32,3,8,NULL,'No'),(262,'A MORTE DE IVAN ILITCH','1886','978-85-7326-359-6','YES',33,3,25,NULL,'No'),(263,'CIDADE GRANDE CIDADE PEQUENA','1950','978-85-254-1737-4','NO',18,3,1,NULL,'No'),(264,'UM PARQUE DE DIVERSÕES DA CABEÇA','1958','978-85-254-1715-2','NO',26,1,1,NULL,'No'),(265,'O IMPRECADOR','1976','978-0060133375','NO',34,3,9,NULL,'No'),(266,'OS IRMÃOS KARAMAZOV','1880','978-85-732-6410-4','NO',10,4,9,NULL,'No'),(267,'O DECLÍNIO DE UM HOMEM','1948',NULL,'YES',35,2,NULL,NULL,'Yes'),(268,'SOL POENTE','1947',NULL,'NO',35,2,NULL,NULL,'Yes'),(269,'O OUTRO','1971','978-85-428-1595-5','YES',36,4,14,NULL,'No'),(270,'ZODIACO','1986','978-85-63219-60-2','YES',37,1,30,NULL,'No'),(271,'SRA. FLETCHER','2019','978-8542217452','YES',38,2,38,NULL,'Maybe'),(272,'AS AVENTURAS DE PINÓQUIO','1883','978-65-5888-720-1','YES',39,5,36,NULL,'No'),(273,'A METAMORFOSE','1915','85-8186-335-1','YES',40,5,13,NULL,'No'),(274,'O PROCESSO','1925','978-85-368-1802-3','YES',40,5,24,NULL,'No'),(275,'O CASO DE CHARLES DEXTER WARD','1941','978-85-254-0626-2','YES',14,1,1,NULL,'No'),(276,'O CASTELO ANIMADO','1986','978-0-06-147878-9','YES',41,3,7,NULL,'No'),(277,'O ÚLTIMO DESEJO','1993','NULL','YES',42,2,39,NULL,'Maybe'),(278,'A ESPADA DO DESTINO','1992','978-85-469-0289-7','YES',42,4,15,NULL,'No'),(279,'MITOLOGIA NÓRDICA','2017','978-85-510-0128-8','YES',43,4,16,NULL,'No'),(280,'O MERCADOR DE VENEZA','1598','978-65-5888-362-3','NO',44,1,36,NULL,'No'),(281,'O RETRATO DE DORIAN GRAY','1890','978-85-250-5413-5','NO',45,4,5,NULL,'No'),(282,'CREPÚSCULO DOS ÍDOLOS','1889','85-8186-305-4','NO',46,5,13,NULL,'No'),(283,'O CASTELO','1926','85-319-0045-9','NO',40,3,33,NULL,'No'),(284,'A REVOLUÇÃO DOS BICHOS','1945','85-250-0503-7','YES',12,1,29,NULL,'No'),(285,'ALÉM DO BEM E DO MAL','1886','978-85-254-1735-0','NO',46,1,1,NULL,'No'),(286,'O JOGADOR','1866','978-85-254-0930-0','NO',10,1,1,NULL,'No'),(287,'CARTA AO PAI','1919','978-85-254-1356-7','NO',40,1,1,NULL,'No'),(288,'MEU NOME NÃO É JOHNNY','2008','978-85-7799-048-1','NO',22,1,26,NULL,'No'),(289,'O LIVRO DOS SONHOS','','978-85-254-0857-0','NO',18,1,1,NULL,'No'),(290,'A REVOLUÇÃO DOS BICHOS','1945','978-65-88436-08-0','YES',12,3,23,NULL,'No'),(291,'GUERRA E PAZ: VOLUME 2','1867','978-85-254-1672-8','NO',33,1,1,NULL,'No'),(292,'O LIVRO DOS HAIKAIS','','978-85-254-2881-3','NO',18,3,1,NULL,'No'),(293,'NARRATIVAS DO HORROR','','978-65-5579-139-6','YES',14,4,21,NULL,'No'),(294,'UM POUCO DE AR, POR FAVOR','','978-65-5552-367-6','NO',12,5,32,NULL,'No'),(295,'OS MELHORES CONTOS DE H. P. LOVECRAFT','','','YES',14,5,31,NULL,'No'),(296,'A PLANTA DE FERRO','1936','978-65-896-7824-3','NO',12,5,32,NULL,'No'),(297,'MEDO CLÁSSICO VOLUME I','','978-85-9454-079-9','NO',14,4,10,NULL,'No'),(298,'MOBY DICK','','978-85-7971-409-2','YES',51,4,9,NULL,'No'),(299,'INICIO E FIM','','978-65-5910-072-9','NO',10,4,6,NULL,'No'),(300,'SOBREVIVENTE','','978-65-5643-066-9','NO',5,3,3,NULL,'No'),(301,'O CORVO E OUTROS POEMAS','','85-8186-460-0','YES',48,5,13,NULL,'No');
/*!40000 ALTER TABLE `mybooks_book` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mybooks_bookgenre`
--

DROP TABLE IF EXISTS `mybooks_bookgenre`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mybooks_bookgenre` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `book_id` bigint NOT NULL,
  `genre_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mybooks_bookgenre_book_id_d06612cb_fk_mybooks_book_id` (`book_id`),
  KEY `mybooks_bookgenre_genre_id_78dff787_fk_mybooks_genre_id` (`genre_id`),
  CONSTRAINT `mybooks_bookgenre_book_id_d06612cb_fk_mybooks_book_id` FOREIGN KEY (`book_id`) REFERENCES `mybooks_book` (`id`),
  CONSTRAINT `mybooks_bookgenre_genre_id_78dff787_fk_mybooks_genre_id` FOREIGN KEY (`genre_id`) REFERENCES `mybooks_genre` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=167 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mybooks_bookgenre`
--

LOCK TABLES `mybooks_bookgenre` WRITE;
/*!40000 ALTER TABLE `mybooks_bookgenre` DISABLE KEYS */;
INSERT INTO `mybooks_bookgenre` VALUES (1,182,1),(2,182,5),(3,184,6),(4,185,6),(5,186,1),(6,187,11),(7,186,14),(8,191,1),(9,192,1),(10,193,1),(11,194,1),(12,195,1),(13,219,3),(14,220,3),(15,221,3),(16,222,3),(17,223,3),(18,212,3),(19,213,3),(20,214,3),(21,215,3),(22,216,3),(23,217,3),(24,218,3),(26,205,12),(27,206,12),(28,207,11),(29,208,11),(30,209,11),(31,244,7),(32,301,6),(33,282,5),(34,276,3),(35,270,2),(36,188,1),(37,189,1),(38,189,8),(39,190,1),(40,191,13),(46,196,1),(47,196,5),(48,197,1),(49,197,5),(50,198,1),(51,199,1),(52,200,1),(53,200,5),(54,201,3),(55,202,1),(56,202,14),(57,203,1),(58,204,1),(59,210,1),(60,211,1),(61,211,4),(62,224,1),(63,225,1),(64,226,1),(65,227,1),(66,228,1),(67,229,1),(68,230,1),(69,231,1),(70,232,1),(71,233,1),(72,234,1),(73,235,1),(74,236,1),(75,237,1),(76,238,1),(77,239,1),(78,240,1),(79,241,1),(80,242,1),(81,243,1),(82,224,4),(83,225,4),(84,226,4),(85,227,4),(86,228,4),(87,229,4),(88,233,4),(89,237,4),(90,243,4),(91,245,1),(92,246,1),(93,247,1),(94,248,1),(95,248,14),(96,249,1),(97,249,7),(98,250,1),(99,251,1),(100,252,1),(101,253,1),(102,254,1),(103,254,8),(104,255,12),(105,255,14),(106,256,14),(107,256,1),(108,257,1),(109,258,1),(110,259,1),(111,260,1),(112,261,1),(113,261,1),(114,261,15),(115,262,1),(116,262,5),(117,263,1),(118,264,6),(119,265,1),(120,266,1),(121,266,5),(122,267,1),(123,267,5),(124,268,1),(125,269,8),(126,269,11),(128,270,15),(129,271,1),(130,271,13),(131,271,13),(132,272,16),(133,272,1),(134,273,1),(135,273,5),(136,274,5),(137,274,1),(138,274,14),(139,275,11),(140,275,8),(141,277,3),(142,278,3),(143,278,3),(144,279,17),(145,279,2),(146,280,1),(147,281,1),(148,281,8),(149,283,1),(150,284,1),(151,285,5),(152,286,1),(153,287,2),(154,288,2),(155,288,15),(156,289,2),(157,290,1),(158,291,1),(159,293,11),(160,294,1),(161,295,11),(162,296,1),(163,297,11),(164,298,1),(165,299,1),(166,300,1);
/*!40000 ALTER TABLE `mybooks_bookgenre` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mybooks_bookliterature`
--

DROP TABLE IF EXISTS `mybooks_bookliterature`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mybooks_bookliterature` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `book_id` bigint NOT NULL,
  `literature_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mybooks_bookliterature_book_id_literature_id_311ce63c_uniq` (`book_id`,`literature_id`),
  KEY `mybooks_bookliteratu_literature_id_bfb6d1ee_fk_mybooks_l` (`literature_id`),
  CONSTRAINT `mybooks_bookliteratu_literature_id_bfb6d1ee_fk_mybooks_l` FOREIGN KEY (`literature_id`) REFERENCES `mybooks_literature` (`id`),
  CONSTRAINT `mybooks_bookliterature_book_id_ee5d324f_fk_mybooks_book_id` FOREIGN KEY (`book_id`) REFERENCES `mybooks_book` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=121 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mybooks_bookliterature`
--

LOCK TABLES `mybooks_bookliterature` WRITE;
/*!40000 ALTER TABLE `mybooks_bookliterature` DISABLE KEYS */;
INSERT INTO `mybooks_bookliterature` VALUES (1,182,4),(2,183,4),(3,184,2),(4,185,2),(16,186,5),(17,187,5),(18,188,5),(5,189,2),(19,190,2),(20,191,2),(21,192,2),(22,193,2),(23,194,2),(9,196,8),(10,197,8),(11,198,8),(12,199,8),(13,200,8),(24,201,2),(6,202,5),(7,203,5),(8,204,5),(25,205,5),(26,206,5),(27,207,2),(28,208,2),(29,209,2),(14,210,2),(30,211,2),(31,212,5),(32,213,5),(33,214,5),(34,215,5),(35,216,5),(36,217,5),(37,218,5),(38,219,5),(39,220,5),(40,221,5),(41,222,5),(42,223,5),(43,224,2),(44,225,2),(45,226,2),(46,227,2),(47,228,2),(48,229,2),(49,230,2),(50,231,2),(51,232,2),(52,233,2),(53,234,2),(54,235,2),(55,236,2),(56,237,2),(57,238,2),(58,239,2),(59,240,2),(60,241,2),(61,242,2),(62,243,2),(63,244,5),(64,245,2),(65,246,1),(66,247,2),(67,248,2),(68,249,2),(69,250,1),(70,251,1),(71,252,1),(72,253,1),(73,254,3),(74,255,4),(75,256,5),(76,257,2),(77,258,2),(78,259,2),(79,260,2),(80,261,2),(81,262,8),(82,263,2),(83,264,2),(84,265,4),(85,266,8),(86,267,7),(87,268,7),(88,269,2),(89,270,2),(90,271,2),(91,272,9),(92,273,3),(93,274,3),(94,275,2),(95,276,5),(96,277,10),(97,278,10),(98,279,5),(99,280,5),(100,281,5),(101,282,3),(102,283,3),(103,284,5),(104,285,3),(105,286,8),(106,287,3),(107,288,1),(108,289,2),(109,290,5),(110,291,8),(111,292,2),(112,293,2),(113,294,5),(114,295,2),(115,296,5),(116,297,2),(117,298,2),(118,299,8),(119,300,2),(120,301,2);
/*!40000 ALTER TABLE `mybooks_bookliterature` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mybooks_classification`
--

DROP TABLE IF EXISTS `mybooks_classification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mybooks_classification` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `book_id` bigint NOT NULL,
  `value` varchar(10) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mybooks_classification_book_id_38d2a0a9_fk_mybooks_book_id` (`book_id`),
  CONSTRAINT `mybooks_classification_book_id_38d2a0a9_fk_mybooks_book_id` FOREIGN KEY (`book_id`) REFERENCES `mybooks_book` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mybooks_classification`
--

LOCK TABLES `mybooks_classification` WRITE;
/*!40000 ALTER TABLE `mybooks_classification` DISABLE KEYS */;
INSERT INTO `mybooks_classification` VALUES (6,182,'GOOD'),(7,184,'MODERATE'),(8,185,'GREAT'),(9,186,'GREAT'),(10,187,'MODERATE'),(11,188,'GOOD'),(12,189,'MODERATE'),(13,190,'MODERATE'),(14,191,'GOOD'),(15,192,'GREAT'),(16,193,'MODERATE'),(17,194,'GREAT'),(18,195,'GREAT'),(19,196,'MODERATE'),(20,197,'GREAT'),(21,198,'GREAT'),(22,199,'MODERATE'),(23,200,'GOOD'),(24,201,'GREAT'),(25,202,'GREAT'),(26,203,'GREAT'),(27,204,'GOOD'),(28,205,'BAD'),(29,206,'GOOD'),(30,207,'GREAT'),(31,208,'GREAT'),(32,209,'GOOD'),(33,210,'GREAT');
/*!40000 ALTER TABLE `mybooks_classification` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mybooks_format`
--

DROP TABLE IF EXISTS `mybooks_format`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mybooks_format` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mybooks_format`
--

LOCK TABLES `mybooks_format` WRITE;
/*!40000 ALTER TABLE `mybooks_format` DISABLE KEYS */;
INSERT INTO `mybooks_format` VALUES (1,'POCKET'),(2,'E-BOOK'),(3,'PAPERBACK'),(4,'HARDCOVER'),(5,'MASS PAPERBACK');
/*!40000 ALTER TABLE `mybooks_format` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mybooks_genre`
--

DROP TABLE IF EXISTS `mybooks_genre`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mybooks_genre` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `genre` varchar(30) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mybooks_genre_genre_651a3598_uniq` (`genre`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mybooks_genre`
--

LOCK TABLES `mybooks_genre` WRITE;
/*!40000 ALTER TABLE `mybooks_genre` DISABLE KEYS */;
INSERT INTO `mybooks_genre` VALUES (9,'BIOGRAPHY'),(16,'CHILDREN\'S'),(15,'CRIME'),(14,'DYSTOPIA'),(13,'EROTIC'),(3,'FANTASY'),(1,'FICTION'),(10,'HISTORY'),(11,'HORROR'),(17,'MYTHOLOGY'),(2,'NONFICTION'),(5,'PHILOSOPHY'),(6,'POETRY'),(7,'ROMANCE'),(12,'SCIENCE FICTION'),(8,'THRILLER'),(4,'TRAVEL');
/*!40000 ALTER TABLE `mybooks_genre` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mybooks_literature`
--

DROP TABLE IF EXISTS `mybooks_literature`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mybooks_literature` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `value` varchar(200) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mybooks_literature_value_1b5ee61d_uniq` (`value`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mybooks_literature`
--

LOCK TABLES `mybooks_literature` WRITE;
/*!40000 ALTER TABLE `mybooks_literature` DISABLE KEYS */;
INSERT INTO `mybooks_literature` VALUES (1,'BRAZILIAN'),(5,'ENGLISH'),(4,'FRENCH'),(3,'GERMAN'),(9,'ITALIAN'),(7,'JAPANESE'),(2,'NORTH AMERICAN'),(10,'POLISH'),(8,'RUSSIAN'),(6,'SPANISH');
/*!40000 ALTER TABLE `mybooks_literature` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mybooks_publisher`
--

DROP TABLE IF EXISTS `mybooks_publisher`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mybooks_publisher` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mybooks_publisher`
--

LOCK TABLES `mybooks_publisher` WRITE;
/*!40000 ALTER TABLE `mybooks_publisher` DISABLE KEYS */;
INSERT INTO `mybooks_publisher` VALUES (1,'L&PM'),(2,'ROCCO'),(3,'LEYA'),(4,'PRINCIPIS'),(5,'BIBLIOTECA AZUL'),(6,'MARTIN CLARET'),(7,'HARPER COLLINS'),(8,'COMPANHIA DAS LETRAS'),(9,'ABRIL'),(10,'DARKSEID'),(11,'VENETA'),(12,'BERTRAND BRASIL'),(13,'LAFONTE'),(14,'ESCOTILHA'),(15,'WMF MARTINS FONTES'),(16,'INTRÍNSICA'),(17,'ALFAGUARA'),(18,'CHRONOS'),(19,'CONRAD LIVROS'),(20,'ALEPH'),(21,'PANDORGA'),(22,'JOSÉ OLYMPIO'),(23,'TROIA'),(24,'DIVISAO CULTURAL DO LIVRO'),(25,'EDITORA 34'),(26,'BESTBOLSO'),(27,'EDITORA VOZES'),(28,'BANDEIRAS'),(29,'EDITORA GLOBO'),(30,'EDITORA NOVO CONCEITO'),(31,'EDITORA PRIME'),(32,'TRICAJU'),(33,'EDITORA ITATIAIA'),(34,'ESTADÃO'),(35,'ABRIL'),(36,'PE DA LETRA'),(37,'COMPANHIA DE BOLSO'),(38,'PLANETA'),(39,'NULL');
/*!40000 ALTER TABLE `mybooks_publisher` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-03-08 17:26:10
