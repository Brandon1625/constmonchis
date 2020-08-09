-- MySQL dump 10.13  Distrib 5.7.27, for Linux (x86_64)
--
-- Host: monchis.mysql.pythonanywhere-services.com    Database: monchis$monchis
-- ------------------------------------------------------
-- Server version	5.7.21-log

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
-- Table structure for table `aumentoproducto`
--

DROP TABLE IF EXISTS `aumentoproducto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aumentoproducto` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fecha` date DEFAULT NULL,
  `unidades` int(10) unsigned NOT NULL,
  `miprod_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `aumentoproducto_miprod_id_e3b0792c_fk_producto_id` (`miprod_id`),
  CONSTRAINT `aumentoproducto_miprod_id_e3b0792c_fk_producto_id` FOREIGN KEY (`miprod_id`) REFERENCES `producto` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aumentoproducto`
--

LOCK TABLES `aumentoproducto` WRITE;
/*!40000 ALTER TABLE `aumentoproducto` DISABLE KEYS */;
/*!40000 ALTER TABLE `aumentoproducto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
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
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
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
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add Cliente',7,'add_cliente'),(26,'Can change Cliente',7,'change_cliente'),(27,'Can delete Cliente',7,'delete_cliente'),(28,'Can view Cliente',7,'view_cliente'),(29,'Can add Tipo de pago',8,'add_tipopago'),(30,'Can change Tipo de pago',8,'change_tipopago'),(31,'Can delete Tipo de pago',8,'delete_tipopago'),(32,'Can view Tipo de pago',8,'view_tipopago'),(33,'Can add Categoria de producto',9,'add_categoriaproducto'),(34,'Can change Categoria de producto',9,'change_categoriaproducto'),(35,'Can delete Categoria de producto',9,'delete_categoriaproducto'),(36,'Can view Categoria de producto',9,'view_categoriaproducto'),(37,'Can add Producto',10,'add_producto'),(38,'Can change Producto',10,'change_producto'),(39,'Can delete Producto',10,'delete_producto'),(40,'Can view Producto',10,'view_producto'),(41,'Can add Aumento de Producto',11,'add_aumentoproducto'),(42,'Can change Aumento de Producto',11,'change_aumentoproducto'),(43,'Can delete Aumento de Producto',11,'delete_aumentoproducto'),(44,'Can view Aumento de Producto',11,'view_aumentoproducto'),(45,'Can add Venta',12,'add_venta'),(46,'Can change Venta',12,'change_venta'),(47,'Can delete Venta',12,'delete_venta'),(48,'Can view Venta',12,'view_venta'),(49,'Can add Detalle de venta',13,'add_detalle_venta'),(50,'Can change Detalle de venta',13,'change_detalle_venta'),(51,'Can delete Detalle de venta',13,'delete_detalle_venta'),(52,'Can view Detalle de venta',13,'view_detalle_venta'),(53,'Can add Trabajador',14,'add_trabajador'),(54,'Can change Trabajador',14,'change_trabajador'),(55,'Can delete Trabajador',14,'delete_trabajador'),(56,'Can view Trabajador',14,'view_trabajador'),(57,'Can add Ingreso de mercaderia',15,'add_ingreso'),(58,'Can change Ingreso de mercaderia',15,'change_ingreso'),(59,'Can delete Ingreso de mercaderia',15,'delete_ingreso'),(60,'Can view Ingreso de mercaderia',15,'view_ingreso'),(61,'Can add Detalle de ingreso de mercaderia',16,'add_detalle_ingreso'),(62,'Can change Detalle de ingreso de mercaderia',16,'change_detalle_ingreso'),(63,'Can delete Detalle de ingreso de mercaderia',16,'delete_detalle_ingreso'),(64,'Can view Detalle de ingreso de mercaderia',16,'view_detalle_ingreso');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$150000$oSppbUiKjQgb$Y1sLMy41oqXqoR9/ezZ4a6oCSEWqA8ldADRc9Md8I38=','2020-08-08 03:21:29.974076',1,'Brandon','','','',1,1,'2020-08-08 03:21:04.133090');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
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
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categoriaproducto`
--

DROP TABLE IF EXISTS `categoriaproducto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categoriaproducto` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `categoria` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categoriaproducto`
--

LOCK TABLES `categoriaproducto` WRITE;
/*!40000 ALTER TABLE `categoriaproducto` DISABLE KEYS */;
INSERT INTO `categoriaproducto` VALUES (1,'Tubo de concreto'),(2,'Cajas de registro'),(3,'Brocales'),(4,'Tapaderas de concreto'),(5,'Blocks'),(6,'Cemento'),(7,'Reposaderas de concreto'),(8,'Ojos de buey'),(9,'Postes de concreto'),(10,'Hierro'),(11,'Tubo PVC');
/*!40000 ALTER TABLE `categoriaproducto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cliente`
--

DROP TABLE IF EXISTS `cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cliente` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  `apellido` varchar(50) NOT NULL,
  `direccion` varchar(50) DEFAULT NULL,
  `telefono` int(10) unsigned DEFAULT NULL,
  `nit` varchar(10) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `activo` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente`
--

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detalle_ingreso`
--

DROP TABLE IF EXISTS `detalle_ingreso`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `detalle_ingreso` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `canti` int(10) unsigned NOT NULL,
  `id_ingreso_id` int(11) DEFAULT NULL,
  `id_prod_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `detalle_ingreso_id_ingreso_id_314fe7e9_fk_ingreso_id` (`id_ingreso_id`),
  KEY `detalle_ingreso_id_prod_id_2d614f61_fk_producto_id` (`id_prod_id`),
  CONSTRAINT `detalle_ingreso_id_ingreso_id_314fe7e9_fk_ingreso_id` FOREIGN KEY (`id_ingreso_id`) REFERENCES `ingreso` (`id`),
  CONSTRAINT `detalle_ingreso_id_prod_id_2d614f61_fk_producto_id` FOREIGN KEY (`id_prod_id`) REFERENCES `producto` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detalle_ingreso`
--

LOCK TABLES `detalle_ingreso` WRITE;
/*!40000 ALTER TABLE `detalle_ingreso` DISABLE KEYS */;
/*!40000 ALTER TABLE `detalle_ingreso` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detalle_venta`
--

DROP TABLE IF EXISTS `detalle_venta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `detalle_venta` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `canti` int(10) unsigned NOT NULL,
  `precio` decimal(12,2) NOT NULL,
  `subtotal` double DEFAULT NULL,
  `id_prod_id` int(11) DEFAULT NULL,
  `id_venta_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `detalle_venta_id_prod_id_a61cef9a_fk_producto_id` (`id_prod_id`),
  KEY `detalle_venta_id_venta_id_e1bc674e_fk_vale_id` (`id_venta_id`),
  CONSTRAINT `detalle_venta_id_prod_id_a61cef9a_fk_producto_id` FOREIGN KEY (`id_prod_id`) REFERENCES `producto` (`id`),
  CONSTRAINT `detalle_venta_id_venta_id_e1bc674e_fk_vale_id` FOREIGN KEY (`id_venta_id`) REFERENCES `vale` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detalle_venta`
--

LOCK TABLES `detalle_venta` WRITE;
/*!40000 ALTER TABLE `detalle_venta` DISABLE KEYS */;
/*!40000 ALTER TABLE `detalle_venta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2020-08-08 03:57:47.301999','1','prueba',1,'[{\"added\": {}}]',9,1),(2,'2020-08-08 03:57:59.462570','1','prueb',1,'[{\"added\": {}}]',10,1),(3,'2020-08-08 04:01:05.717399','1','Tubo de concreto',2,'[{\"changed\": {\"fields\": [\"categoria\"]}}]',9,1),(4,'2020-08-08 04:01:16.120574','2','Cajas de registrp',1,'[{\"added\": {}}]',9,1),(5,'2020-08-08 04:01:20.437265','2','Cajas de registro',2,'[{\"changed\": {\"fields\": [\"categoria\"]}}]',9,1),(6,'2020-08-08 04:01:27.744470','3','Brocales',1,'[{\"added\": {}}]',9,1),(7,'2020-08-08 04:01:35.653791','4','Tapaderas de concreto',1,'[{\"added\": {}}]',9,1),(8,'2020-08-08 04:01:45.952057','5','Blocks',1,'[{\"added\": {}}]',9,1),(9,'2020-08-08 04:01:50.135381','6','Cemento',1,'[{\"added\": {}}]',9,1),(10,'2020-08-08 04:01:58.131619','7','Reposaderas de concreto',1,'[{\"added\": {}}]',9,1),(11,'2020-08-08 04:02:04.765343','8','Ojos de buey',1,'[{\"added\": {}}]',9,1),(12,'2020-08-08 04:02:12.085256','9','Postes de concreto',1,'[{\"added\": {}}]',9,1),(13,'2020-08-08 04:02:20.401610','10','Hierro',1,'[{\"added\": {}}]',9,1),(14,'2020-08-08 04:02:27.198059','11','Tubo PVC',1,'[{\"added\": {}}]',9,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(7,'cliente','cliente'),(8,'comun','tipopago'),(5,'contenttypes','contenttype'),(16,'ingreso','detalle_ingreso'),(15,'ingreso','ingreso'),(11,'producto','aumentoproducto'),(9,'producto','categoriaproducto'),(10,'producto','producto'),(6,'sessions','session'),(14,'trabajador','trabajador'),(13,'venta','detalle_venta'),(12,'venta','venta');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2020-08-08 03:12:52.177650'),(2,'auth','0001_initial','2020-08-08 03:13:30.212109'),(3,'admin','0001_initial','2020-08-08 03:13:44.634009'),(4,'admin','0002_logentry_remove_auto_add','2020-08-08 03:13:44.791360'),(5,'admin','0003_logentry_add_action_flag_choices','2020-08-08 03:13:44.807972'),(6,'contenttypes','0002_remove_content_type_name','2020-08-08 03:13:44.978618'),(7,'auth','0002_alter_permission_name_max_length','2020-08-08 03:13:45.086554'),(8,'auth','0003_alter_user_email_max_length','2020-08-08 03:13:45.158545'),(9,'auth','0004_alter_user_username_opts','2020-08-08 03:13:45.171627'),(10,'auth','0005_alter_user_last_login_null','2020-08-08 03:13:45.257909'),(11,'auth','0006_require_contenttypes_0002','2020-08-08 03:13:45.268034'),(12,'auth','0007_alter_validators_add_error_messages','2020-08-08 03:13:45.285803'),(13,'auth','0008_alter_user_username_max_length','2020-08-08 03:13:45.380193'),(14,'auth','0009_alter_user_last_name_max_length','2020-08-08 03:13:45.527347'),(15,'auth','0010_alter_group_name_max_length','2020-08-08 03:13:45.624182'),(16,'auth','0011_update_proxy_permissions','2020-08-08 03:13:45.640702'),(17,'cliente','0001_initial','2020-08-08 03:13:57.578359'),(18,'comun','0001_initial','2020-08-08 03:13:59.955614'),(19,'trabajador','0001_initial','2020-08-08 03:14:11.222461'),(20,'producto','0001_initial','2020-08-08 03:14:41.702134'),(21,'ingreso','0001_initial','2020-08-08 03:14:53.227515'),(22,'sessions','0001_initial','2020-08-08 03:14:58.061015'),(23,'venta','0001_initial','2020-08-08 03:15:20.417209'),(24,'venta','0002_auto_20200804_2018','2020-08-08 03:15:20.860767');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('wei5pvhdu25tr63rzrad6wh7ut27pgru','ZDhkZTU1Y2U4NjIyODAxMjMyNjRkNGY4ZjhmOWMwMTBlOWZjMjQ4OTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1ZjUzOWVkMDIwNjA2YmY2NmY3Mjk3ODA0ZDdmNDg1MzYyMDFjMWEwIn0=','2020-08-22 03:21:29.999003');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ingreso`
--

DROP TABLE IF EXISTS `ingreso`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ingreso` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `no_ingreso` int(11) DEFAULT NULL,
  `fecha` date NOT NULL,
  `vendedor_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ingreso_vendedor_id_8ed4de6a_fk_trabajador_id` (`vendedor_id`),
  CONSTRAINT `ingreso_vendedor_id_8ed4de6a_fk_trabajador_id` FOREIGN KEY (`vendedor_id`) REFERENCES `trabajador` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ingreso`
--

LOCK TABLES `ingreso` WRITE;
/*!40000 ALTER TABLE `ingreso` DISABLE KEYS */;
/*!40000 ALTER TABLE `ingreso` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `producto`
--

DROP TABLE IF EXISTS `producto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `producto` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  `descripcion` varchar(50) NOT NULL,
  `cantidad` int(10) unsigned NOT NULL,
  `precio` decimal(12,2) NOT NULL,
  `activo` tinyint(1) NOT NULL,
  `visible` tinyint(1) NOT NULL,
  `precio_visible` tinyint(1) NOT NULL,
  `cantidad_visible` tinyint(1) NOT NULL,
  `descripcion_visible` tinyint(1) NOT NULL,
  `image` varchar(100) NOT NULL,
  `categoria_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `producto_categoria_id_67131168_fk_categoriaproducto_id` (`categoria_id`),
  CONSTRAINT `producto_categoria_id_67131168_fk_categoriaproducto_id` FOREIGN KEY (`categoria_id`) REFERENCES `categoriaproducto` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `producto`
--

LOCK TABLES `producto` WRITE;
/*!40000 ALTER TABLE `producto` DISABLE KEYS */;
INSERT INTO `producto` VALUES (1,'Tubo','Tubo de concreto',0,120.00,1,1,1,1,1,'',1),(2,'Tubo de 4\" Concreto','Tuberia de 4\" Concreto',0,30.00,1,1,1,1,1,'',1),(3,'Tubo de 6\" Concreto','Tuberia de 6\" Concreto',0,28.00,1,1,1,1,1,'',1),(5,'Tubo de 30\" Concreto Con Hierro','Tuberia de 30\" Concreto Con Hierro',0,425.00,1,1,1,1,1,'',1),(8,'Tubo de 10” Concreto','Tuberia de 10” Concreto',0,55.00,1,1,1,1,1,'',1),(9,'Tubo de 12” Concreto','Tuberia de 12” Concreto',0,74.00,1,1,1,1,1,'',1),(10,'Tubo de 14” Concreto','Tuberia de 14” Concreto',0,82.00,1,1,1,1,1,'',1),(11,'Tubo de 16” Concreto','Tuberia de 16” Concreto',0,106.00,1,1,1,1,1,'',1),(12,'Tubo de 18” Concreto','Tuberia de 18” Concreto',0,130.00,1,1,1,1,1,'',1),(13,'Tubo de 20” Concreto Con Hierro','Tuberia de 20” Concreto Con Hierro',0,290.00,1,1,1,1,1,'',1),(16,'Tubo de 20” Concreto Sin Hierro','Tuberia de 20” Concreto Sin Hierro',0,225.00,1,1,1,1,1,'',1),(17,'Tubo de 24” Concreto Con Hierro','Tuberia de 24” Concreto Con Hierro',0,370.00,1,1,1,1,1,'',1),(18,'Tubo de 24\" Concreto Sin Hierro','Tuberia de 24\" Concreto Sin Hierro',0,300.00,1,1,1,1,1,'',1),(19,'Tubo de 29\" Concreto POZO','Tuberia de 29\" Concreto POZO',0,178.00,1,1,1,1,1,'',1),(20,'Tubo de 30\" Concreto Sin Hierro','Tuberia de 30\" Concreto Sin Hierro',0,361.00,1,1,1,1,1,'',1),(22,'Tubo de 36\" Concreto Sin Hierro','Tuberia de 36\" Concreto Sin Hierro',0,563.00,1,1,1,1,1,'',1),(23,'Tubo de 36\" Concreto Con Hierro','Tuberia de 36\" Concreto Con Hierro',0,632.00,1,1,1,1,1,'',1),(24,'Tubo de 36\" Concreto POZO','Tuberia de 36\" Concreto POZO',0,235.00,1,1,1,1,1,'',1),(25,'Tubo de 40\" Concreto Con Hierro','Tuberia de 40\" Concreto Con Hierro',0,520.00,1,1,1,1,1,'',1),(26,'Tubo de 48\" Concreto Con Hierro','Tuberia de 48\" Concreto Con Hierro',0,700.00,1,1,1,1,1,'',1),(27,'Tubo de 60\" Concreto Con Hierro','Tuberia de 60\" Concreto Con Hierro',0,865.00,1,1,1,1,1,'',1),(28,'Caja de Registro Grande','Agua Potable',0,127.00,1,1,1,1,1,'',2),(29,'Caja de Registro Mediana','Agua Potable',0,115.00,1,1,1,1,1,'',2),(30,'Caja de Registro Pequeña','Agua Potable',0,85.00,1,1,1,1,1,'',2),(31,'Brocal de Concreto','Brocal Redondo 20cmx1m',0,390.00,1,1,1,1,1,'',3),(32,'Tapadera de 12” Concreto','Tapadera Concreto',0,25.00,1,1,1,1,1,'',4),(34,'Tapadera de 29” Concreto Pozo','Tapadera de 29” Concreto Pozo',0,150.00,1,1,1,1,1,'',4),(35,'Tapadera de 36” Concreto Pozo','Tapadera de 36” Concreto Pozo',0,180.00,1,1,1,1,1,'',4),(37,'Block de Poma 10','Block de Poma 10',0,3.20,1,1,1,1,1,'',5),(38,'Block de Poma 15','Block de Poma 15',0,3.30,1,1,1,1,1,'',5),(39,'U de Poma 15','U de Poma 15',0,3.40,1,1,1,1,1,'',5),(40,'Sacos de Cemento','5000 PSI',0,66.00,1,1,1,1,1,'',6),(41,'Reposadera de Concreto 20x20cm','Reposadera',0,35.00,1,1,1,1,1,'',7),(42,'Reposadera de Concreto 30x30cm','Reposadera',0,55.00,1,1,1,1,1,'',7),(43,'Reposadera de Concreto 40x40cm','Reposadera',0,65.00,1,1,1,1,1,'',7),(44,'Ojo de Buey Grande','Ojo de Buey Grande',0,450.00,1,1,1,1,1,'',8),(45,'Ojo de Buey Mediano','Ojo de Buey Mediano',0,250.00,1,1,1,1,1,'',8),(46,'Ojo de Buey Pequeño','Ojo de Buey Pequeño',0,200.00,1,1,1,1,1,'',8),(47,'Poste de Concreto de 2mts','Poste de Concreto 2mts',0,80.00,1,1,1,1,1,'',9),(48,'Poste de Concreto de 2.70mts','Poste de Concreto de 2.70mts',0,110.00,1,1,1,1,1,'',9),(49,'Saco de Cemento de Producción','Saco de Cemento de Poduccion',0,62.00,1,1,1,1,1,'',6),(51,'Hierro de 1/4” LISA','Quintal de hierro de 1/4” LISA',0,273.00,1,1,1,1,1,'',10),(52,'Hierro de 3/8” COM','Quintal de hierro 3/8” COM',0,225.00,1,1,1,1,1,'',10),(53,'Hierro de 3/8” LEG','Quintal de hierro de 3/8” LEG',0,315.00,1,1,1,1,1,'',10),(54,'Alambre de Amarre','Lbs de Alambre de Amarre',0,5.50,1,1,1,1,1,'',10),(55,'Tubo de 1/2” PVC','Tuberia de 1/2”',0,16.00,1,1,1,1,1,'',11),(56,'Tubo de 1/4” PVC','Tuberia de 1/4”',0,20.00,1,1,1,1,1,'',11),(57,'Tubo de 1” PVC','Tuberia de 1”',0,27.00,1,1,1,1,1,'',11),(58,'Tubo de 2” DRE PVC','Tuberia de 2” DRE',0,35.00,1,1,1,1,1,'',11),(59,'Tubo de 3” DRE PVC','Tuberia de 3” DRE',0,53.00,1,1,1,1,1,'',11);
/*!40000 ALTER TABLE `producto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipopago`
--

DROP TABLE IF EXISTS `tipopago`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tipopago` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tipo` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipopago`
--

LOCK TABLES `tipopago` WRITE;
/*!40000 ALTER TABLE `tipopago` DISABLE KEYS */;
/*!40000 ALTER TABLE `tipopago` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trabajador`
--

DROP TABLE IF EXISTS `trabajador`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trabajador` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  `apellido` varchar(50) NOT NULL,
  `direccion` varchar(50) DEFAULT NULL,
  `telefono` int(10) unsigned DEFAULT NULL,
  `codigo` int(11) NOT NULL,
  `fecha_nacimiento` date DEFAULT NULL,
  `activo` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trabajador`
--

LOCK TABLES `trabajador` WRITE;
/*!40000 ALTER TABLE `trabajador` DISABLE KEYS */;
/*!40000 ALTER TABLE `trabajador` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vale`
--

DROP TABLE IF EXISTS `vale`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vale` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `no_venta` int(11) DEFAULT NULL,
  `fecha` datetime(6) NOT NULL,
  `referencia` varchar(60) DEFAULT NULL,
  `total` double DEFAULT NULL,
  `comprador_id` int(11) NOT NULL,
  `pago_id` int(11) DEFAULT NULL,
  `vendedor_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `vale_pago_id_d40b6f40_fk_tipopago_id` (`pago_id`),
  KEY `vale_vendedor_id_2ce6ad79_fk_trabajador_id` (`vendedor_id`),
  KEY `vale_comprador_id_054560c0_fk_cliente_id` (`comprador_id`),
  CONSTRAINT `vale_comprador_id_054560c0_fk_cliente_id` FOREIGN KEY (`comprador_id`) REFERENCES `cliente` (`id`),
  CONSTRAINT `vale_pago_id_d40b6f40_fk_tipopago_id` FOREIGN KEY (`pago_id`) REFERENCES `tipopago` (`id`),
  CONSTRAINT `vale_vendedor_id_2ce6ad79_fk_trabajador_id` FOREIGN KEY (`vendedor_id`) REFERENCES `trabajador` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vale`
--

LOCK TABLES `vale` WRITE;
/*!40000 ALTER TABLE `vale` DISABLE KEYS */;
/*!40000 ALTER TABLE `vale` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-08-08 21:43:00
