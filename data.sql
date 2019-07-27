-- MySQL dump 10.16  Distrib 10.1.26-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: db
-- ------------------------------------------------------
-- Server version	10.1.26-MariaDB-0+deb9u1

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
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group` (
  `id` int(11) DEFAULT NULL,
  `name` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
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
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) DEFAULT NULL,
  `group_id` int(11) DEFAULT NULL,
  `permission_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
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
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_permission` (
  `id` int(11) DEFAULT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `codename` varchar(100) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,1,'add_logentry','Can add log entry'),(2,1,'change_logentry','Can change log entry'),(3,1,'delete_logentry','Can delete log entry'),(4,1,'view_logentry','Can view log entry'),(5,2,'add_permission','Can add permission'),(6,2,'change_permission','Can change permission'),(7,2,'delete_permission','Can delete permission'),(8,2,'view_permission','Can view permission'),(9,3,'add_group','Can add group'),(10,3,'change_group','Can change group'),(11,3,'delete_group','Can delete group'),(12,3,'view_group','Can view group'),(13,4,'add_user','Can add user'),(14,4,'change_user','Can change user'),(15,4,'delete_user','Can delete user'),(16,4,'view_user','Can view user'),(17,5,'add_contenttype','Can add content type'),(18,5,'change_contenttype','Can change content type'),(19,5,'delete_contenttype','Can delete content type'),(20,5,'view_contenttype','Can view content type'),(21,6,'add_session','Can add session'),(22,6,'change_session','Can change session'),(23,6,'delete_session','Can delete session'),(24,6,'view_session','Can view session'),(25,7,'add_vehicles','Can add vehicles'),(26,7,'change_vehicles','Can change vehicles'),(27,7,'delete_vehicles','Can delete vehicles'),(28,7,'view_vehicles','Can view vehicles'),(29,8,'add_client_users','Can add client_ users'),(30,8,'change_client_users','Can change client_ users'),(31,8,'delete_client_users','Can delete client_ users'),(32,8,'view_client_users','Can view client_ users'),(33,9,'add_clients','Can add clients'),(34,9,'change_clients','Can change clients'),(35,9,'delete_clients','Can delete clients'),(36,9,'view_clients','Can view clients'),(37,10,'add_recordings','Can add recordings'),(38,10,'change_recordings','Can change recordings'),(39,10,'delete_recordings','Can delete recordings'),(40,10,'view_recordings','Can view recordings'),(41,11,'add_vehicle_types','Can add vehicle_ types'),(42,11,'change_vehicle_types','Can change vehicle_ types'),(43,11,'delete_vehicle_types','Can delete vehicle_ types'),(44,11,'view_vehicle_types','Can view vehicle_ types'),(45,9,'add_client','Can add client'),(46,9,'change_client','Can change client'),(47,9,'delete_client','Can delete client'),(48,9,'view_client','Can view client'),(49,8,'add_client_user','Can add client_ user'),(50,8,'change_client_user','Can change client_ user'),(51,8,'delete_client_user','Can delete client_ user'),(52,8,'view_client_user','Can view client_ user'),(53,10,'add_recording','Can add recording'),(54,10,'change_recording','Can change recording'),(55,10,'delete_recording','Can delete recording'),(56,10,'view_recording','Can view recording'),(57,7,'add_vehicle','Can add vehicle'),(58,7,'change_vehicle','Can change vehicle'),(59,7,'delete_vehicle','Can delete vehicle'),(60,7,'view_vehicle','Can view vehicle'),(61,12,'add_vehicle_type','Can add vehicle_ type'),(62,12,'change_vehicle_type','Can change vehicle_ type'),(63,12,'delete_vehicle_type','Can delete vehicle_ type'),(64,12,'view_vehicle_type','Can view vehicle_ type');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user` (
  `id` int(11) DEFAULT NULL,
  `password` varchar(128) DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `is_superuser` text,
  `username` varchar(150) DEFAULT NULL,
  `first_name` varchar(30) DEFAULT NULL,
  `email` varchar(254) DEFAULT NULL,
  `is_staff` text,
  `is_active` text,
  `date_joined` datetime DEFAULT NULL,
  `last_name` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$150000$1V4yC6gVTC6L$IGyFYTYM7aRzIwFJC7sYZridqdxaIl1w037ejUovUx0=','2019-07-23 00:00:00','1','eben_ash','','ebenezer.ashiakwei@gmail.com','1','1','2019-07-21 00:00:00','');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_groups` (
  `id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `group_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
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
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `permission_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `client_client`
--

DROP TABLE IF EXISTS `client_client`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `client_client` (
  `id` int(11) DEFAULT NULL,
  `client_name` varchar(150) DEFAULT NULL,
  `client_location` varchar(150) DEFAULT NULL,
  `phone_number` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `client_client`
--

LOCK TABLES `client_client` WRITE;
/*!40000 ALTER TABLE `client_client` DISABLE KEYS */;
/*!40000 ALTER TABLE `client_client` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `client_client_user`
--

DROP TABLE IF EXISTS `client_client_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `client_client_user` (
  `id` int(11) DEFAULT NULL,
  `first_name` varchar(65) DEFAULT NULL,
  `last_name` varchar(65) DEFAULT NULL,
  `email` varchar(65) DEFAULT NULL,
  `address` varchar(150) DEFAULT NULL,
  `phone_number` varchar(100) DEFAULT NULL,
  `username` varchar(65) DEFAULT NULL,
  `password` varchar(200) DEFAULT NULL,
  `access` varchar(65) DEFAULT NULL,
  `client_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `client_client_user`
--

LOCK TABLES `client_client_user` WRITE;
/*!40000 ALTER TABLE `client_client_user` DISABLE KEYS */;
/*!40000 ALTER TABLE `client_client_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `client_recording`
--

DROP TABLE IF EXISTS `client_recording`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `client_recording` (
  `id` int(11) DEFAULT NULL,
  `recording_name` varchar(150) DEFAULT NULL,
  `recording_location` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `client_recording`
--

LOCK TABLES `client_recording` WRITE;
/*!40000 ALTER TABLE `client_recording` DISABLE KEYS */;
/*!40000 ALTER TABLE `client_recording` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `client_vehicle`
--

DROP TABLE IF EXISTS `client_vehicle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `client_vehicle` (
  `id` int(11) DEFAULT NULL,
  `reg_number` varchar(65) DEFAULT NULL,
  `brand_name` varchar(100) DEFAULT NULL,
  `brand_model` varchar(100) DEFAULT NULL,
  `year` varchar(10) DEFAULT NULL,
  `seats` int(11) DEFAULT NULL,
  `color` varchar(65) DEFAULT NULL,
  `description` text,
  `stream_feed` varchar(500) DEFAULT NULL,
  `vehicle_type_id_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `client_vehicle`
--

LOCK TABLES `client_vehicle` WRITE;
/*!40000 ALTER TABLE `client_vehicle` DISABLE KEYS */;
INSERT INTO `client_vehicle` VALUES (1,'56789','sjmkdsmdk','bhnjmk','1989',89,'yhnjumik','ssdsd','',1),(2,'56789','HSJS','gvbhnjm','3738',1,'yhnjumik','fgtyhnjumik','',2),(3,'56789','HSJS','gvbhnjm','3738',1,'yhnjumik','fgtyhnjumik','',2),(4,'56789','HSJS','gvbhnjm','3738',1,'yhnjumik','fgtyhnjumik','',2),(5,'56789','HSJS','gvbhnjm','3738',1,'yhnjumik','fgtyhnjumik','',2),(6,'34567890','sjmkdsmdk','rfvgtbhnjmk,','1989',7,'fvtghyju','dcfvgbthynj','',2),(7,'34567890','sjmkdsmdk','rfvgtbhnjmk,','1989',7,'fvtghyju','dcfvgbthynj','',2),(8,'34567890','sjmkdsmdk','rfvgtbhnjmk,','1989',7,'fvtghyju','dcfvgbthynj','',2),(9,'34567890','sjmkdsmdk','rfvgtbhnjmk,','1989',7,'fvtghyju','dcfvgbthynj','',2),(10,'34567890','sjmkdsmdk','rfvgtbhnjmk,','1989',7,'fvtghyju','dcfvgbthynj','',2),(11,'34567890','sjmkdsmdk','rfvgtbhnjmk,','1989',7,'fvtghyju','dcfvgbthynj','',2),(12,'34567890','sjmkdsmdk','rfvgtbhnjmk,','1989',7,'fvtghyju','dcfvgbthynj','',2),(13,'34567890','sjmkdsmdk','rfvgtbhnjmk,','1989',7,'fvtghyju','dcfvgbthynj','',2),(14,'34567890','sjmkdsmdk','rfvgtbhnjmk,','1989',7,'fvtghyju','dcfvgbthynj','',2),(15,'34567890','sjmkdsmdk','rfvgtbhnjmk,','1989',7,'fvtghyju','dcfvgbthynj','',2),(16,'34567890','sjmkdsmdk','rfvgtbhnjmk,','1989',7,'fvtghyju','dcfvgbthynj','',2),(17,'34567890','sjmkdsmdk','rfvgtbhnjmk,','1989',7,'fvtghyju','dcfvgbthynj','',2),(18,'34567890','sjmkdsmdk','rfvgtbhnjmk,','1989',7,'fvtghyju','dcfvgbthynj','',2),(19,'34567890','sjmkdsmdk','rfvgtbhnjmk,','1989',7,'fvtghyju','dcfvgbthynj','',2),(20,'34567890','sjmkdsmdk','rfvgtbhnjmk,','1989',7,'fvtghyju','dcfvgbthynj','',2),(21,'34567890','sjmkdsmdk','rfvgtbhnjmk,','1989',7,'fvtghyju','dcfvgbthynj','',2),(22,'34567890','sjmkdsmdk','rfvgtbhnjmk,','1989',7,'fvtghyju','dcfvgbthynj','',2),(23,'34567890','sjmkdsmdk','rfvgtbhnjmk,','1989',7,'fvtghyju','dcfvgbthynj','',2),(24,'34567890','sjmkdsmdk','rfvgtbhnjmk,','1989',7,'fvtghyju','dcfvgbthynj','',2),(25,'34567890','sjmkdsmdk','rfvgtbhnjmk,','1989',7,'fvtghyju','dcfvgbthynj','',2),(26,'34567890','sjmkdsmdk','rfvgtbhnjmk,','1989',7,'fvtghyju','dcfvgbthynj','',2),(27,'34567890','sjmkdsmdk','rfvgtbhnjmk,','1989',7,'fvtghyju','dcfvgbthynj','',2),(28,'34567890','sjmkdsmdk','rfvgtbhnjmk,','1989',7,'fvtghyju','dcfvgbthynj','',2),(29,'34567890','sjmkdsmdk','rfvgtbhnjmk,','1989',7,'fvtghyju','dcfvgbthynj','',2),(30,'34567890','sjmkdsmdk','rfvgtbhnjmk,','1989',7,'fvtghyju','dcfvgbthynj','',2),(31,'3456789','HSJS','gvbhnjm','456',5,'cfvgbhnj','fvgbhnj','',1),(32,'3456789','HSJS','gvbhnjm','456',5,'cfvgbhnj','fvgbhnj','',1),(33,'3456789','HSJS','gvbhnjm','456',5,'cfvgbhnj','fvgbhnj','',1),(34,'3456789','HSJS','gvbhnjm','456',5,'cfvgbhnj','fvgbhnj','',1),(35,'3456789','HSJS','gvbhnjm','456',5,'cfvgbhnj','fvgbhnj','',1),(36,'3456789','HSJS','gvbhnjm','456',5,'cfvgbhnj','fvgbhnj','',1),(37,'3456789','HSJS','gvbhnjm','456',5,'cfvgbhnj','fvgbhnj','',1),(38,'3456789','HSJS','gvbhnjm','456',5,'cfvgbhnj','fvgbhnj','',1),(39,'3456789','HSJS','gvbhnjm','456',5,'cfvgbhnj','fvgbhnj','',1),(40,'3456789','HSJS','gvbhnjm','456',5,'cfvgbhnj','fvgbhnj','',1),(41,'3456789','HSJS','gvbhnjm','456',5,'cfvgbhnj','fvgbhnj','',1);
/*!40000 ALTER TABLE `client_vehicle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `client_vehicle_type`
--

DROP TABLE IF EXISTS `client_vehicle_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `client_vehicle_type` (
  `id` int(11) DEFAULT NULL,
  `type_name` varchar(150) DEFAULT NULL,
  `description` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `client_vehicle_type`
--

LOCK TABLES `client_vehicle_type` WRITE;
/*!40000 ALTER TABLE `client_vehicle_type` DISABLE KEYS */;
INSERT INTO `client_vehicle_type` VALUES (1,'Truck','Truck'),(2,'Tractor','Tractor'),(3,'Motorcycle','Motorcycle'),(4,'Car','Car');
/*!40000 ALTER TABLE `client_vehicle_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) DEFAULT NULL,
  `action_time` datetime DEFAULT NULL,
  `object_id` text,
  `object_repr` varchar(200) DEFAULT NULL,
  `change_message` text,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `action_flag` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2019-07-24 00:00:00','1','Truck','[{\"added\": {}}]',12,1,'1'),(2,'2019-07-24 00:00:00','2','Tractor','[{\"added\": {}}]',12,1,'1'),(3,'2019-07-24 00:00:00','3','Motorcycle','[{\"added\": {}}]',12,1,'1'),(4,'2019-07-24 00:00:00','4','Car','[{\"added\": {}}]',12,1,'1');
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_content_type` (
  `id` int(11) DEFAULT NULL,
  `app_label` varchar(100) DEFAULT NULL,
  `model` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(9,'client','client'),(8,'client','client_user'),(10,'client','recording'),(7,'client','vehicle'),(12,'client','vehicle_type'),(11,'client','vehicle_types'),(5,'contenttypes','contenttype'),(6,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_migrations` (
  `id` int(11) DEFAULT NULL,
  `app` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `applied` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2019-07-21 00:00:00'),(2,'auth','0001_initial','2019-07-21 00:00:00'),(3,'admin','0001_initial','2019-07-21 00:00:00'),(4,'admin','0002_logentry_remove_auto_add','2019-07-21 00:00:00'),(5,'admin','0003_logentry_add_action_flag_choices','2019-07-21 00:00:00'),(6,'contenttypes','0002_remove_content_type_name','2019-07-21 00:00:00'),(7,'auth','0002_alter_permission_name_max_length','2019-07-21 00:00:00'),(8,'auth','0003_alter_user_email_max_length','2019-07-21 00:00:00'),(9,'auth','0004_alter_user_username_opts','2019-07-21 00:00:00'),(10,'auth','0005_alter_user_last_login_null','2019-07-21 00:00:00'),(11,'auth','0006_require_contenttypes_0002','2019-07-21 00:00:00'),(12,'auth','0007_alter_validators_add_error_messages','2019-07-21 00:00:00'),(13,'auth','0008_alter_user_username_max_length','2019-07-21 00:00:00'),(14,'auth','0009_alter_user_last_name_max_length','2019-07-21 00:00:00'),(15,'auth','0010_alter_group_name_max_length','2019-07-21 00:00:00'),(16,'auth','0011_update_proxy_permissions','2019-07-21 00:00:00'),(17,'sessions','0001_initial','2019-07-21 00:00:00'),(18,'client','0001_initial','2019-07-23 00:00:00'),(19,'client','0002_recordings','2019-07-23 00:00:00'),(20,'client','0003_auto_20190724_1845','2019-07-24 00:00:00'),(21,'client','0004_auto_20190724_1925','2019-07-24 00:00:00'),(22,'client','0005_auto_20190724_2036','2019-07-24 00:00:00');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) DEFAULT NULL,
  `session_data` text,
  `expire_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('dpb54zwe44krsgvgwpgk5141cr7kkigr','MmFmMjc3OTJlYmVjNDg3ZDg3Njk0ZDQwMDFlZmVlYTQ0MWY3NWYzOTp7fQ==','2019-08-05 00:00:00'),('uqc1rbyvye057i4htqva9fji8zquihtx','MmFmMjc3OTJlYmVjNDg3ZDg3Njk0ZDQwMDFlZmVlYTQ0MWY3NWYzOTp7fQ==','2019-08-05 00:00:00'),('jtjdm0cmmsd4xo45b05g964igc2y0q3v','NTJlY2NkZjQ0ZTEwODkyYzQ1Mzc2NWIyNThhODZkNTVlYjAzZmQ3NTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJjNmYxZTUzOWNlYTllOWUyMTQ2YTBjMmY0ZDdmNzQ3OGI3MjZmOGFiIn0=','2019-08-06 00:00:00'),('eqt86yv3wy45d70ie06cp9o86xkaa5wf','NTJlY2NkZjQ0ZTEwODkyYzQ1Mzc2NWIyNThhODZkNTVlYjAzZmQ3NTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJjNmYxZTUzOWNlYTllOWUyMTQ2YTBjMmY0ZDdmNzQ3OGI3MjZmOGFiIn0=','2019-08-06 00:00:00');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sqlite_sequence`
--

DROP TABLE IF EXISTS `sqlite_sequence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sqlite_sequence` (
  `name` blob,
  `seq` blob
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sqlite_sequence`
--

LOCK TABLES `sqlite_sequence` WRITE;
/*!40000 ALTER TABLE `sqlite_sequence` DISABLE KEYS */;
INSERT INTO `sqlite_sequence` VALUES ('django_migrations','22'),('django_admin_log','4'),('django_content_type','12'),('auth_permission','64'),('auth_user','1'),('auth_group','0'),('client_client_user','0'),('client_vehicle_type','4'),('client_vehicle','41');
/*!40000 ALTER TABLE `sqlite_sequence` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-09-08 22:56:29
