-- MySQL dump 10.13  Distrib 5.6.38, for Linux (x86_64)
--
-- Host: localhost    Database: tango
-- ------------------------------------------------------
-- Server version	5.6.38

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
-- Table structure for table `access_address`
--

DROP TABLE IF EXISTS `access_address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `access_address` (
  `user` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `netmask` varchar(255) DEFAULT 'FF.FF.FF.FF',
  `updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `accessed` timestamp NOT NULL DEFAULT '1999-12-31 21:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `access_address`
--

LOCK TABLES `access_address` WRITE;
/*!40000 ALTER TABLE `access_address` DISABLE KEYS */;
INSERT INTO `access_address` VALUES ('*','*.*.*.*','FF.FF.FF.FF','2006-08-24 09:12:21','2006-08-24 09:12:21');
/*!40000 ALTER TABLE `access_address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `access_device`
--

DROP TABLE IF EXISTS `access_device`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `access_device` (
  `user` varchar(255) DEFAULT NULL,
  `device` varchar(255) DEFAULT NULL,
  `rights` varchar(255) DEFAULT NULL,
  `updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `accessed` timestamp NOT NULL DEFAULT '1999-12-31 21:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `access_device`
--

LOCK TABLES `access_device` WRITE;
/*!40000 ALTER TABLE `access_device` DISABLE KEYS */;
INSERT INTO `access_device` VALUES ('*','*/*/*','write','2006-08-24 09:12:21','2006-08-24 09:12:21');
/*!40000 ALTER TABLE `access_device` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `attribute_alias`
--

DROP TABLE IF EXISTS `attribute_alias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `attribute_alias` (
  `alias` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `device` varchar(255) NOT NULL DEFAULT '',
  `attribute` varchar(255) NOT NULL DEFAULT '',
  `updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `accessed` timestamp NOT NULL DEFAULT '1999-12-31 21:00:00',
  `comment` text,
  KEY `index_attribute_alias` (`alias`(64),`name`(64))
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attribute_alias`
--

LOCK TABLES `attribute_alias` WRITE;
/*!40000 ALTER TABLE `attribute_alias` DISABLE KEYS */;
/*!40000 ALTER TABLE `attribute_alias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `attribute_class`
--

DROP TABLE IF EXISTS `attribute_class`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `attribute_class` (
  `class` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `accessed` timestamp NOT NULL DEFAULT '1999-12-31 21:00:00',
  `comment` text,
  KEY `index_attribute_class` (`class`(64),`name`(64))
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attribute_class`
--

LOCK TABLES `attribute_class` WRITE;
/*!40000 ALTER TABLE `attribute_class` DISABLE KEYS */;
/*!40000 ALTER TABLE `attribute_class` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `class_attribute_history_id`
--

DROP TABLE IF EXISTS `class_attribute_history_id`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `class_attribute_history_id` (
  `id` bigint(20) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `class_attribute_history_id`
--

LOCK TABLES `class_attribute_history_id` WRITE;
/*!40000 ALTER TABLE `class_attribute_history_id` DISABLE KEYS */;
INSERT INTO `class_attribute_history_id` VALUES (0);
/*!40000 ALTER TABLE `class_attribute_history_id` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `class_history_id`
--

DROP TABLE IF EXISTS `class_history_id`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `class_history_id` (
  `id` bigint(20) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `class_history_id`
--

LOCK TABLES `class_history_id` WRITE;
/*!40000 ALTER TABLE `class_history_id` DISABLE KEYS */;
INSERT INTO `class_history_id` VALUES (33);
/*!40000 ALTER TABLE `class_history_id` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `class_pipe_history_id`
--

DROP TABLE IF EXISTS `class_pipe_history_id`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `class_pipe_history_id` (
  `id` bigint(20) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `class_pipe_history_id`
--

LOCK TABLES `class_pipe_history_id` WRITE;
/*!40000 ALTER TABLE `class_pipe_history_id` DISABLE KEYS */;
INSERT INTO `class_pipe_history_id` VALUES (0);
/*!40000 ALTER TABLE `class_pipe_history_id` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `device`
--

DROP TABLE IF EXISTS `device`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `device` (
  `name` varchar(255) NOT NULL DEFAULT 'nada',
  `alias` varchar(255) DEFAULT NULL,
  `domain` varchar(85) NOT NULL DEFAULT 'nada',
  `family` varchar(85) NOT NULL DEFAULT 'nada',
  `member` varchar(85) NOT NULL DEFAULT 'nada',
  `exported` int(11) DEFAULT '0',
  `ior` text,
  `host` varchar(255) NOT NULL DEFAULT 'nada',
  `server` varchar(255) NOT NULL DEFAULT 'nada',
  `pid` int(11) DEFAULT '0',
  `class` varchar(255) NOT NULL DEFAULT 'nada',
  `version` varchar(8) NOT NULL DEFAULT 'nada',
  `started` datetime DEFAULT NULL,
  `stopped` datetime DEFAULT NULL,
  `comment` text,
  KEY `name` (`name`(64),`alias`(64))
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `device`
--

LOCK TABLES `device` WRITE;
/*!40000 ALTER TABLE `device` DISABLE KEYS */;
INSERT INTO `device` VALUES ('sys/database/2',NULL,'sys','database','2',0,'IOR:010000001700000049444c3a54616e676f2f4465766963655f353a312e3000000100000000000000a2000000010102000d0000003139322e3136382e302e3130000010270800000064617461626173650300000000000000080000000100000000545441010000001c00000001000000010001000100000001000105090101000100000009010100025454413e000000010000000a0000006c6f63616c686f7374000000260000002f746d702f6f6d6e692d74616e6765722f3030303031313533392d3135313730303934373300','localhost.localdomain','DataBaseds/2',11539,'DataBase','5','2018-01-27 02:31:13','2018-01-27 03:35:54','nada'),('dserver/DataBaseds/2',NULL,'dserver','DataBaseds','2',0,'IOR:010000001700000049444c3a54616e676f2f4465766963655f353a312e3000000100000000000000ae000000010102000d0000003139322e3136382e302e31300000102714000000647365727665722f646174616261736564732f320300000000000000080000000100000000545441010000001c00000001000000010001000100000001000105090101000100000009010100025454413e000000010000000a0000006c6f63616c686f7374000000260000002f746d702f6f6d6e692d74616e6765722f3030303031313533392d3135313730303934373300','localhost.localdomain','DataBaseds/2',11539,'DServer','5','2018-01-27 02:31:13','2018-01-27 03:35:54','nada'),('sys/tg_test/1',NULL,'sys','tg_test','1',0,'nada','nada','TangoTest/test',0,'TangoTest','nada',NULL,NULL,'nada'),('dserver/TangoTest/test',NULL,'dserver','TangoTest','test',0,'nada','nada','TangoTest/test',0,'DServer','nada',NULL,NULL,'nada'),('sys/access_control/1',NULL,'sys','access_control','1',0,'nada','nada','TangoAccessControl/1',0,'TangoAccessControl','nada',NULL,NULL,'nada'),('dserver/TangoAccessControl/1',NULL,'dserver','TangoAccessControl','1',0,'nada','nada','TangoAccessControl/1',0,'DServer','nada',NULL,NULL,'nada'),('dserver/ArmenMotors/motors',NULL,'dserver','ArmenMotors','motors',0,'IOR:010000001700000049444c3a54616e676f2f4465766963655f353a312e3000000100000000000000d6000000010102000d0000003139322e3136382e302e313000004ba10e000000fea0c56b5a0000664e000000000600000400000000000000080000000100000000545441010000001c000000010000000100010001000000010001050901010001000000090101000300000024000000010000001a000000666430313a3a346135643a363066663a666530323a33613430004ba1025454413e000000010000000a0000006c6f63616c686f7374000000260000002f746d702f6f6d6e692d74616e6765722f3030303032363139302d3135313730313233383400','localhost.localdomain','ArmenMotors/motors',26190,'DServer','5','2018-01-27 03:19:44','2018-01-27 03:35:52',NULL),('motors/device/0',NULL,'motors','device','0',0,'IOR:010000001700000049444c3a54616e676f2f4465766963655f353a312e3000000100000000000000d6000000010102000d0000003139322e3136382e302e313000004ba10e000000fea0c56b5a0000664e000000000500000400000000000000080000000100000000545441010000001c000000010000000100010001000000010001050901010001000000090101000300000024000000010000001a000000666430313a3a346135643a363066663a666530323a33613430004ba1025454413e000000010000000a0000006c6f63616c686f7374000000260000002f746d702f6f6d6e692d74616e6765722f3030303032363139302d3135313730313233383400','localhost.localdomain','ArmenMotors/motors',26190,'ArmenMotors','5','2018-01-27 03:19:44','2018-01-27 03:35:52',NULL),('motors/device/1',NULL,'motors','device','1',0,'IOR:010000001700000049444c3a54616e676f2f4465766963655f353a312e3000000100000000000000d6000000010102000d0000003139322e3136382e302e313000004ba10e000000fea0c56b5a0000664e000000000400000400000000000000080000000100000000545441010000001c000000010000000100010001000000010001050901010001000000090101000300000024000000010000001a000000666430313a3a346135643a363066663a666530323a33613430004ba1025454413e000000010000000a0000006c6f63616c686f7374000000260000002f746d702f6f6d6e692d74616e6765722f3030303032363139302d3135313730313233383400','localhost.localdomain','ArmenMotors/motors',26190,'ArmenMotors','5','2018-01-27 03:19:44','2018-01-27 03:35:52',NULL),('motors/device/2',NULL,'motors','device','2',0,'IOR:010000001700000049444c3a54616e676f2f4465766963655f353a312e3000000100000000000000d6000000010102000d0000003139322e3136382e302e313000004ba10e000000fea0c56b5a0000664e000000000300000400000000000000080000000100000000545441010000001c000000010000000100010001000000010001050901010001000000090101000300000024000000010000001a000000666430313a3a346135643a363066663a666530323a33613430004ba1025454413e000000010000000a0000006c6f63616c686f7374000000260000002f746d702f6f6d6e692d74616e6765722f3030303032363139302d3135313730313233383400','localhost.localdomain','ArmenMotors/motors',26190,'ArmenMotors','5','2018-01-27 03:19:44','2018-01-27 03:35:52',NULL),('motors/device/3',NULL,'motors','device','3',0,'IOR:010000001700000049444c3a54616e676f2f4465766963655f353a312e3000000100000000000000d6000000010102000d0000003139322e3136382e302e313000004ba10e000000fea0c56b5a0000664e000000000200000400000000000000080000000100000000545441010000001c000000010000000100010001000000010001050901010001000000090101000300000024000000010000001a000000666430313a3a346135643a363066663a666530323a33613430004ba1025454413e000000010000000a0000006c6f63616c686f7374000000260000002f746d702f6f6d6e692d74616e6765722f3030303032363139302d3135313730313233383400','localhost.localdomain','ArmenMotors/motors',26190,'ArmenMotors','5','2018-01-27 03:19:44','2018-01-27 03:35:52',NULL),('motors/device/4',NULL,'motors','device','4',0,'IOR:010000001700000049444c3a54616e676f2f4465766963655f353a312e3000000100000000000000d6000000010102000d0000003139322e3136382e302e313000004ba10e000000fea0c56b5a0000664e000000000100000400000000000000080000000100000000545441010000001c000000010000000100010001000000010001050901010001000000090101000300000024000000010000001a000000666430313a3a346135643a363066663a666530323a33613430004ba1025454413e000000010000000a0000006c6f63616c686f7374000000260000002f746d702f6f6d6e692d74616e6765722f3030303032363139302d3135313730313233383400','localhost.localdomain','ArmenMotors/motors',26190,'ArmenMotors','5','2018-01-27 03:19:44','2018-01-27 03:35:52',NULL),('motors/device/5',NULL,'motors','device','5',0,'IOR:010000001700000049444c3a54616e676f2f4465766963655f353a312e3000000100000000000000d6000000010102000d0000003139322e3136382e302e313000004ba10e000000fea0c56b5a0000664e000000000000000400000000000000080000000100000000545441010000001c000000010000000100010001000000010001050901010001000000090101000300000024000000010000001a000000666430313a3a346135643a363066663a666530323a33613430004ba1025454413e000000010000000a0000006c6f63616c686f7374000000260000002f746d702f6f6d6e692d74616e6765722f3030303032363139302d3135313730313233383400','localhost.localdomain','ArmenMotors/motors',26190,'ArmenMotors','5','2018-01-27 03:19:44','2018-01-27 03:35:52',NULL),('tmp/log/localhost@38',NULL,'tmp','log','localhost@38',1,'IOR:000000000000001749444C3A54616E676F2F4465766963655F353A312E300000000000010000000000000084000102000000001F666430313A303A303A303A346135643A363066663A666530323A336134300000956300000000001E3236323832333732352F010425210B412B282C100630463814141B484C1B0000000000020000000300000018000000000000000D3139322E3136382E302E3130000095630000000000000008000000004A414300','localhost.localdomain','LogConsumer/localhost@38',11580,'LogConsumer','5','2018-01-27 03:26:07',NULL,NULL),('dserver/LogConsumer/localhost@38',NULL,'dserver','LogConsumer','localhost@38',1,'IOR:000000000000001749444C3A54616E676F2F4465766963655F353A312E300000000000010000000000000084000102000000001F666430313A303A303A303A346135643A363066663A666530323A336134300000956300000000001E3236323832333732352F000425210B412B282C100630463814141B484C1B0000000000020000000300000018000000000000000D3139322E3136382E302E3130000095630000000000000008000000004A414300','localhost.localdomain','LogConsumer/localhost@38',11580,'DServer','5','2018-01-27 03:26:06',NULL,NULL);
/*!40000 ALTER TABLE `device` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `device_attribute_history_id`
--

DROP TABLE IF EXISTS `device_attribute_history_id`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `device_attribute_history_id` (
  `id` bigint(20) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `device_attribute_history_id`
--

LOCK TABLES `device_attribute_history_id` WRITE;
/*!40000 ALTER TABLE `device_attribute_history_id` DISABLE KEYS */;
INSERT INTO `device_attribute_history_id` VALUES (0);
/*!40000 ALTER TABLE `device_attribute_history_id` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `device_history_id`
--

DROP TABLE IF EXISTS `device_history_id`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `device_history_id` (
  `id` bigint(20) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `device_history_id`
--

LOCK TABLES `device_history_id` WRITE;
/*!40000 ALTER TABLE `device_history_id` DISABLE KEYS */;
INSERT INTO `device_history_id` VALUES (19);
/*!40000 ALTER TABLE `device_history_id` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `device_pipe_history_id`
--

DROP TABLE IF EXISTS `device_pipe_history_id`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `device_pipe_history_id` (
  `id` bigint(20) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `device_pipe_history_id`
--

LOCK TABLES `device_pipe_history_id` WRITE;
/*!40000 ALTER TABLE `device_pipe_history_id` DISABLE KEYS */;
INSERT INTO `device_pipe_history_id` VALUES (0);
/*!40000 ALTER TABLE `device_pipe_history_id` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `event`
--

DROP TABLE IF EXISTS `event`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `event` (
  `name` varchar(255) DEFAULT NULL,
  `exported` int(11) DEFAULT NULL,
  `ior` text,
  `host` varchar(255) DEFAULT NULL,
  `server` varchar(255) DEFAULT NULL,
  `pid` int(11) DEFAULT NULL,
  `version` varchar(8) DEFAULT NULL,
  `started` datetime DEFAULT NULL,
  `stopped` datetime DEFAULT NULL,
  KEY `index_name` (`name`(64))
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event`
--

LOCK TABLES `event` WRITE;
/*!40000 ALTER TABLE `event` DISABLE KEYS */;
/*!40000 ALTER TABLE `event` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `object_history_id`
--

DROP TABLE IF EXISTS `object_history_id`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `object_history_id` (
  `id` bigint(20) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `object_history_id`
--

LOCK TABLES `object_history_id` WRITE;
/*!40000 ALTER TABLE `object_history_id` DISABLE KEYS */;
INSERT INTO `object_history_id` VALUES (0);
/*!40000 ALTER TABLE `object_history_id` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `property`
--

DROP TABLE IF EXISTS `property`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `property` (
  `object` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `count` int(11) DEFAULT NULL,
  `value` text,
  `updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `accessed` timestamp NOT NULL DEFAULT '1999-12-31 21:00:00',
  `comment` text,
  KEY `index_name` (`object`(64),`name`(64))
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `property`
--

LOCK TABLES `property` WRITE;
/*!40000 ALTER TABLE `property` DISABLE KEYS */;
/*!40000 ALTER TABLE `property` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `property_attribute_class`
--

DROP TABLE IF EXISTS `property_attribute_class`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `property_attribute_class` (
  `class` varchar(255) NOT NULL DEFAULT '',
  `attribute` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `count` int(11) NOT NULL DEFAULT '0',
  `value` text,
  `updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `accessed` timestamp NOT NULL DEFAULT '1999-12-31 21:00:00',
  `comment` text,
  KEY `index_property_attribute_class` (`class`(64),`attribute`(64),`name`(64),`count`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `property_attribute_class`
--

LOCK TABLES `property_attribute_class` WRITE;
/*!40000 ALTER TABLE `property_attribute_class` DISABLE KEYS */;
/*!40000 ALTER TABLE `property_attribute_class` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `property_attribute_class_hist`
--

DROP TABLE IF EXISTS `property_attribute_class_hist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `property_attribute_class_hist` (
  `id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `class` varchar(255) NOT NULL DEFAULT '',
  `attribute` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `count` int(11) NOT NULL DEFAULT '0',
  `value` text,
  KEY `index_id` (`id`),
  KEY `index_class` (`class`),
  KEY `index_attribute` (`attribute`),
  KEY `index_name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `property_attribute_class_hist`
--

LOCK TABLES `property_attribute_class_hist` WRITE;
/*!40000 ALTER TABLE `property_attribute_class_hist` DISABLE KEYS */;
/*!40000 ALTER TABLE `property_attribute_class_hist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `property_attribute_device`
--

DROP TABLE IF EXISTS `property_attribute_device`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `property_attribute_device` (
  `device` varchar(255) NOT NULL DEFAULT '',
  `attribute` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `count` int(11) NOT NULL DEFAULT '0',
  `value` text,
  `updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `accessed` timestamp NOT NULL DEFAULT '1999-12-31 21:00:00',
  `comment` text,
  KEY `index_property_attribute_device` (`device`(64),`attribute`(64),`name`(64),`count`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `property_attribute_device`
--

LOCK TABLES `property_attribute_device` WRITE;
/*!40000 ALTER TABLE `property_attribute_device` DISABLE KEYS */;
/*!40000 ALTER TABLE `property_attribute_device` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `property_attribute_device_hist`
--

DROP TABLE IF EXISTS `property_attribute_device_hist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `property_attribute_device_hist` (
  `id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `device` varchar(255) NOT NULL DEFAULT '',
  `attribute` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `count` int(11) NOT NULL DEFAULT '0',
  `value` text,
  KEY `index_id` (`id`),
  KEY `index_device` (`device`),
  KEY `index_attribute` (`attribute`),
  KEY `index_name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `property_attribute_device_hist`
--

LOCK TABLES `property_attribute_device_hist` WRITE;
/*!40000 ALTER TABLE `property_attribute_device_hist` DISABLE KEYS */;
/*!40000 ALTER TABLE `property_attribute_device_hist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `property_class`
--

DROP TABLE IF EXISTS `property_class`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `property_class` (
  `class` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `count` int(11) NOT NULL DEFAULT '0',
  `value` text,
  `updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `accessed` timestamp NOT NULL DEFAULT '1999-12-31 21:00:00',
  `comment` text,
  KEY `index_property` (`class`(64),`name`(64),`count`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `property_class`
--

LOCK TABLES `property_class` WRITE;
/*!40000 ALTER TABLE `property_class` DISABLE KEYS */;
INSERT INTO `property_class` VALUES ('Database','AllowedAccessCmd',1,'DbGetServerInfo','2018-01-26 23:30:59','2018-01-26 23:30:59',NULL),('Database','AllowedAccessCmd',2,'DbGetServerNameList','2018-01-26 23:30:59','2018-01-26 23:30:59',NULL),('Database','AllowedAccessCmd',3,'DbGetInstanceNameList','2018-01-26 23:30:59','2018-01-26 23:30:59',NULL),('Database','AllowedAccessCmd',4,'DbGetDeviceServerClassList','2018-01-26 23:30:59','2018-01-26 23:30:59',NULL),('Database','AllowedAccessCmd',5,'DbGetDeviceList','2018-01-26 23:30:59','2018-01-26 23:30:59',NULL),('Database','AllowedAccessCmd',6,'DbGetDeviceDomainList','2018-01-26 23:30:59','2018-01-26 23:30:59',NULL),('Database','AllowedAccessCmd',7,'DbGetDeviceFamilyList','2018-01-26 23:30:59','2018-01-26 23:30:59',NULL),('Database','AllowedAccessCmd',8,'DbGetDeviceMemberList','2018-01-26 23:30:59','2018-01-26 23:30:59',NULL),('Database','AllowedAccessCmd',9,'DbGetClassList','2018-01-26 23:30:59','2018-01-26 23:30:59',NULL),('Database','AllowedAccessCmd',10,'DbGetDeviceAliasList','2018-01-26 23:30:59','2018-01-26 23:30:59',NULL),('Database','AllowedAccessCmd',11,'DbGetObjectList','2018-01-26 23:30:59','2018-01-26 23:30:59',NULL),('Database','AllowedAccessCmd',12,'DbGetPropertyList','2018-01-26 23:30:59','2018-01-26 23:30:59',NULL),('Database','AllowedAccessCmd',13,'DbGetProperty','2018-01-26 23:30:59','2018-01-26 23:30:59',NULL),('Database','AllowedAccessCmd',14,'DbGetClassPropertyList','2018-01-26 23:30:59','2018-01-26 23:30:59',NULL),('Database','AllowedAccessCmd',15,'DbGetClassProperty','2018-01-26 23:30:59','2018-01-26 23:30:59',NULL),('Database','AllowedAccessCmd',16,'DbGetDevicePropertyList','2018-01-26 23:30:59','2018-01-26 23:30:59',NULL),('Database','AllowedAccessCmd',17,'DbGetDeviceProperty','2018-01-26 23:30:59','2018-01-26 23:30:59',NULL),('Database','AllowedAccessCmd',18,'DbGetClassAttributeList','2018-01-26 23:30:59','2018-01-26 23:30:59',NULL),('Database','AllowedAccessCmd',19,'DbGetDeviceAttributeProperty','2018-01-26 23:30:59','2018-01-26 23:30:59',NULL),('Database','AllowedAccessCmd',20,'DbGetDeviceAttributeProperty2','2018-01-26 23:30:59','2018-01-26 23:30:59',NULL),('Database','AllowedAccessCmd',21,'DbGetLoggingLevel','2018-01-26 23:30:59','2018-01-26 23:30:59',NULL),('Database','AllowedAccessCmd',22,'DbGetAliasDevice','2018-01-26 23:30:59','2018-01-26 23:30:59',NULL),('Database','AllowedAccessCmd',23,'DbGetClassForDevice','2018-01-26 23:30:59','2018-01-26 23:30:59',NULL),('Database','AllowedAccessCmd',24,'DbGetClassInheritanceForDevice','2018-01-26 23:30:59','2018-01-26 23:30:59',NULL),('Database','AllowedAccessCmd',25,'DbGetDataForServerCache','2018-01-26 23:30:59','2018-01-26 23:30:59',NULL),('Database','AllowedAccessCmd',26,'DbInfo','2018-01-26 23:30:59','2018-01-26 23:30:59',NULL),('Database','AllowedAccessCmd',27,'DbGetClassAttributeProperty','2018-01-26 23:30:59','2018-01-26 23:30:59',NULL),('Database','AllowedAccessCmd',28,'DbGetClassAttributeProperty2','2018-01-26 23:30:59','2018-01-26 23:30:59',NULL),('Database','AllowedAccessCmd',29,'DbMysqlSelect','2018-01-26 23:30:59','2018-01-26 23:30:59',NULL),('Database','AllowedAccessCmd',30,'DbGetDeviceInfo','2018-01-26 23:30:59','2018-01-26 23:30:59',NULL),('Database','AllowedAccessCmd',31,'DbGetDeviceWideList','2018-01-26 23:30:59','2018-01-26 23:30:59',NULL),('Database','AllowedAccessCmd',32,'DbImportEvent','2018-01-26 23:30:59','2018-01-26 23:30:59',NULL),('Database','AllowedAccessCmd',33,'DbGetDeviceAlias','2018-01-26 23:30:59','2018-01-26 23:30:59',NULL),('Database','AllowedAccessCmd',34,'DbGetCSDbServerList','2018-01-26 23:30:59','2018-01-26 23:30:59',NULL),('Database','AllowedAccessCmd',35,'DbGetDeviceClassList','2018-01-26 23:30:59','2018-01-26 23:30:59',NULL),('Database','AllowedAccessCmd',36,'DbGetDeviceExportedList','2018-01-26 23:30:59','2018-01-26 23:30:59',NULL),('Database','AllowedAccessCmd',37,'DbGetHostServerList','2018-01-26 23:30:59','2018-01-26 23:30:59',NULL),('Database','AllowedAccessCmd',38,'DbGetAttributeAlias2','2018-01-26 23:30:59','2018-01-26 23:30:59',NULL),('Database','AllowedAccessCmd',39,'DbGetAliasAttribute','2018-01-26 23:30:59','2018-01-26 23:30:59',NULL),('Database','AllowedAccessCmd',40,'DbGetClassPipeProperty','2018-01-26 23:30:59','2018-01-26 23:30:59',NULL),('Database','AllowedAccessCmd',41,'DbGetDevicePipeProperty','2018-01-26 23:30:59','2018-01-26 23:30:59',NULL),('Database','AllowedAccessCmd',42,'DbGetClassPipeList','2018-01-26 23:30:59','2018-01-26 23:30:59',NULL),('Database','AllowedAccessCmd',43,'DbGetDevicePipeList','2018-01-26 23:30:59','2018-01-26 23:30:59',NULL),('Database','AllowedAccessCmd',44,'DbGetAttributeAliasList','2018-01-26 23:30:59','2018-01-26 23:30:59',NULL),('Database','AllowedAccessCmd',45,'DbGetForwardedAttributeListForDevice','2018-01-26 23:30:59','2018-01-26 23:30:59',NULL),('DServer','AllowedAccessCmd',1,'QueryClass','2018-01-26 23:30:59','2018-01-26 23:30:59',NULL),('DServer','AllowedAccessCmd',2,'QueryDevice','2018-01-26 23:30:59','2018-01-26 23:30:59',NULL),('DServer','AllowedAccessCmd',3,'EventSubscriptionChange','2018-01-26 23:30:59','2018-01-26 23:30:59',NULL),('DServer','AllowedAccessCmd',4,'DevPollStatus','2018-01-26 23:30:59','2018-01-26 23:30:59',NULL),('DServer','AllowedAccessCmd',5,'GetLoggingLevel','2018-01-26 23:30:59','2018-01-26 23:30:59',NULL),('DServer','AllowedAccessCmd',6,'GetLoggingTarget','2018-01-26 23:30:59','2018-01-26 23:30:59',NULL),('DServer','AllowedAccessCmd',7,'QueryWizardDevProperty','2018-01-26 23:30:59','2018-01-26 23:30:59',NULL),('DServer','AllowedAccessCmd',8,'QueryWizardClassProperty','2018-01-26 23:30:59','2018-01-26 23:30:59',NULL),('DServer','AllowedAccessCmd',9,'QuerySubDevice','2018-01-26 23:30:59','2018-01-26 23:30:59',NULL),('DServer','AllowedAccessCmd',10,'ZMQEventSubscriptionChange','2018-01-26 23:30:59','2018-01-26 23:30:59',NULL),('Starter','AllowedAccessCmd',1,'DevReadLog','2018-01-26 23:30:59','2018-01-26 23:30:59',NULL),('Starter','AllowedAccessCmd',2,'DevStart','2018-01-26 23:30:59','2018-01-26 23:30:59',NULL),('Starter','AllowedAccessCmd',3,'DevGetRunningServers','2018-01-26 23:30:59','2018-01-26 23:30:59',NULL),('Starter','AllowedAccessCmd',4,'DevGetStopServers','2018-01-26 23:30:59','2018-01-26 23:30:59',NULL),('Starter','AllowedAccessCmd',5,'UpdateServersInfo','2018-01-26 23:30:59','2018-01-26 23:30:59',NULL),('TangoAccessControl','AllowedAccessCmd',1,'GetUsers','2018-01-26 23:30:59','2018-01-26 23:30:59',NULL),('TangoAccessControl','AllowedAccessCmd',2,'GetAddressByUser','2018-01-26 23:30:59','2018-01-26 23:30:59',NULL),('TangoAccessControl','AllowedAccessCmd',3,'GetDeviceByUser','2018-01-26 23:30:59','2018-01-26 23:30:59',NULL),('TangoAccessControl','AllowedAccessCmd',4,'GetAccess','2018-01-26 23:30:59','2018-01-26 23:30:59',NULL),('TangoAccessControl','AllowedAccessCmd',5,'GetAllowedCommands','2018-01-26 23:30:59','2018-01-26 23:30:59',NULL),('TangoAccessControl','AllowedAccessCmd',6,'GetAllowedCommandClassList','2018-01-26 23:30:59','2018-01-26 23:30:59',NULL),('ArmenMotors','ProjectTitle',1,'','2018-01-27 00:19:44','2018-01-27 00:19:44',NULL),('ArmenMotors','Description',1,'','2018-01-27 00:19:44','2018-01-27 00:19:44',NULL),('ArmenMotors','InheritedFrom',1,'TANGO_BASE_CLASS','2018-01-27 00:19:44','2018-01-27 00:19:44',NULL);
/*!40000 ALTER TABLE `property_class` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `property_class_hist`
--

DROP TABLE IF EXISTS `property_class_hist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `property_class_hist` (
  `id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `class` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `count` int(11) NOT NULL DEFAULT '0',
  `value` text,
  KEY `index_id` (`id`),
  KEY `index_class` (`class`),
  KEY `index_name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `property_class_hist`
--

LOCK TABLES `property_class_hist` WRITE;
/*!40000 ALTER TABLE `property_class_hist` DISABLE KEYS */;
INSERT INTO `property_class_hist` VALUES (32,'2018-01-27 00:19:44','ArmenMotors','Description',1,''),(33,'2018-01-27 00:19:44','ArmenMotors','InheritedFrom',1,'TANGO_BASE_CLASS'),(4,'2018-01-26 23:38:28','ArmenMotors','ProjectTitle',1,''),(5,'2018-01-26 23:38:28','ArmenMotors','Description',1,''),(6,'2018-01-26 23:38:28','ArmenMotors','InheritedFrom',1,'TANGO_BASE_CLASS'),(7,'2018-01-26 23:40:21','ArmenMotors','ProjectTitle',1,''),(8,'2018-01-26 23:40:21','ArmenMotors','Description',1,''),(9,'2018-01-26 23:40:21','ArmenMotors','InheritedFrom',1,'TANGO_BASE_CLASS'),(10,'2018-01-26 23:40:27','ArmenMotors','ProjectTitle',1,''),(11,'2018-01-26 23:40:27','ArmenMotors','Description',1,''),(12,'2018-01-26 23:40:27','ArmenMotors','InheritedFrom',1,'TANGO_BASE_CLASS'),(13,'2018-01-26 23:40:46','ArmenMotors','ProjectTitle',1,''),(14,'2018-01-26 23:40:46','ArmenMotors','Description',1,''),(15,'2018-01-26 23:40:46','ArmenMotors','InheritedFrom',1,'TANGO_BASE_CLASS'),(16,'2018-01-26 23:40:54','ArmenMotors','ProjectTitle',1,''),(17,'2018-01-26 23:40:54','ArmenMotors','Description',1,''),(18,'2018-01-26 23:40:54','ArmenMotors','InheritedFrom',1,'TANGO_BASE_CLASS'),(19,'2018-01-26 23:40:59','ArmenMotors','ProjectTitle',1,''),(20,'2018-01-26 23:40:59','ArmenMotors','Description',1,''),(21,'2018-01-26 23:40:59','ArmenMotors','InheritedFrom',1,'TANGO_BASE_CLASS'),(22,'2018-01-26 23:41:08','ArmenMotors','ProjectTitle',1,''),(23,'2018-01-26 23:41:08','ArmenMotors','Description',1,''),(24,'2018-01-26 23:41:08','ArmenMotors','InheritedFrom',1,'TANGO_BASE_CLASS'),(25,'2018-01-27 00:12:42','ArmenMotors','ProjectTitle',1,''),(26,'2018-01-27 00:12:42','ArmenMotors','Description',1,''),(27,'2018-01-27 00:12:42','ArmenMotors','InheritedFrom',1,'TANGO_BASE_CLASS'),(28,'2018-01-27 00:19:42','ArmenMotors','ProjectTitle',1,''),(29,'2018-01-27 00:19:42','ArmenMotors','Description',1,''),(30,'2018-01-27 00:19:42','ArmenMotors','InheritedFrom',1,'TANGO_BASE_CLASS'),(31,'2018-01-27 00:19:44','ArmenMotors','ProjectTitle',1,'');
/*!40000 ALTER TABLE `property_class_hist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `property_device`
--

DROP TABLE IF EXISTS `property_device`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `property_device` (
  `device` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `domain` varchar(255) NOT NULL DEFAULT '',
  `family` varchar(255) NOT NULL DEFAULT '',
  `member` varchar(255) NOT NULL DEFAULT '',
  `count` int(11) NOT NULL DEFAULT '0',
  `value` text,
  `updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `accessed` timestamp NOT NULL DEFAULT '1999-12-31 21:00:00',
  `comment` text,
  KEY `index_resource` (`device`(64),`name`(64),`count`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `property_device`
--

LOCK TABLES `property_device` WRITE;
/*!40000 ALTER TABLE `property_device` DISABLE KEYS */;
INSERT INTO `property_device` VALUES ('motors/device/1','number_of_motor','','','',1,'1','2018-01-26 23:40:17','2018-01-26 23:40:17',NULL),('motors/device/2','number_of_motor','','','',1,'2','2018-01-26 23:40:25','2018-01-26 23:40:25',NULL),('motors/device/3','number_of_motor','','','',1,'4','2018-01-26 23:40:43','2018-01-26 23:40:43',NULL),('motors/device/4','number_of_motor','','','',1,'4','2018-01-26 23:40:52','2018-01-26 23:40:52',NULL),('motors/device/5','number_of_motor','','','',1,'5','2018-01-26 23:40:57','2018-01-26 23:40:57',NULL);
/*!40000 ALTER TABLE `property_device` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `property_device_hist`
--

DROP TABLE IF EXISTS `property_device_hist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `property_device_hist` (
  `id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `device` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `count` int(11) NOT NULL DEFAULT '0',
  `value` text,
  KEY `index_id` (`id`),
  KEY `index_device` (`device`),
  KEY `index_name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `property_device_hist`
--

LOCK TABLES `property_device_hist` WRITE;
/*!40000 ALTER TABLE `property_device_hist` DISABLE KEYS */;
INSERT INTO `property_device_hist` VALUES (1,'2018-01-26 23:40:17','motors/device/1','number_of_motor',1,'1'),(2,'2018-01-26 23:40:25','motors/device/2','number_of_motor',1,'2'),(3,'2018-01-26 23:40:43','motors/device/3','number_of_motor',1,'4'),(4,'2018-01-26 23:40:52','motors/device/4','number_of_motor',1,'4'),(5,'2018-01-26 23:40:57','motors/device/5','number_of_motor',1,'5'),(6,'2018-01-27 00:20:19','dserver/ArmenMotors/motors','polled_attr',1,'state'),(6,'2018-01-27 00:20:19','dserver/ArmenMotors/motors','polled_attr',2,'3000'),(7,'2018-01-27 00:20:19','dserver/ArmenMotors/motors','polling_threads_pool_conf',1,'dserver/armenmotors/motors'),(8,'2018-01-27 00:20:20','dserver/ArmenMotors/motors','polled_attr',0,'DELETED'),(10,'2018-01-27 00:20:21','dserver/ArmenMotors/motors','polled_attr',1,'state'),(10,'2018-01-27 00:20:21','dserver/ArmenMotors/motors','polled_attr',2,'3000'),(11,'2018-01-27 00:20:21','dserver/ArmenMotors/motors','polling_threads_pool_conf',1,'dserver/armenmotors/motors'),(12,'2018-01-27 00:20:47','dserver/ArmenMotors/motors','polled_attr',0,'DELETED'),(14,'2018-01-27 00:20:50','dserver/ArmenMotors/motors','polled_attr',1,'state'),(14,'2018-01-27 00:20:50','dserver/ArmenMotors/motors','polled_attr',2,'3000'),(15,'2018-01-27 00:20:50','dserver/ArmenMotors/motors','polling_threads_pool_conf',1,'dserver/armenmotors/motors'),(16,'2018-01-27 00:20:51','dserver/ArmenMotors/motors','polled_attr',1,'state'),(16,'2018-01-27 00:20:51','dserver/ArmenMotors/motors','polled_attr',2,'3000'),(16,'2018-01-27 00:20:51','dserver/ArmenMotors/motors','polled_attr',3,'status'),(16,'2018-01-27 00:20:51','dserver/ArmenMotors/motors','polled_attr',4,'3000'),(17,'2018-01-27 00:20:51','dserver/ArmenMotors/motors','polled_attr',1,'state'),(17,'2018-01-27 00:20:51','dserver/ArmenMotors/motors','polled_attr',2,'3000'),(18,'2018-01-27 00:20:52','dserver/ArmenMotors/motors','polled_attr',0,'DELETED');
/*!40000 ALTER TABLE `property_device_hist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `property_hist`
--

DROP TABLE IF EXISTS `property_hist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `property_hist` (
  `id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `object` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `count` int(11) NOT NULL DEFAULT '0',
  `value` text,
  KEY `index_id` (`id`),
  KEY `index_object` (`object`),
  KEY `index_name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `property_hist`
--

LOCK TABLES `property_hist` WRITE;
/*!40000 ALTER TABLE `property_hist` DISABLE KEYS */;
/*!40000 ALTER TABLE `property_hist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `property_pipe_class`
--

DROP TABLE IF EXISTS `property_pipe_class`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `property_pipe_class` (
  `class` varchar(255) NOT NULL DEFAULT '',
  `pipe` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `count` int(11) NOT NULL DEFAULT '0',
  `value` text,
  `updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `accessed` timestamp NOT NULL DEFAULT '1999-12-31 21:00:00',
  `comment` text,
  KEY `index_property_pipe_class` (`class`(64),`pipe`(64),`name`(64),`count`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `property_pipe_class`
--

LOCK TABLES `property_pipe_class` WRITE;
/*!40000 ALTER TABLE `property_pipe_class` DISABLE KEYS */;
/*!40000 ALTER TABLE `property_pipe_class` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `property_pipe_class_hist`
--

DROP TABLE IF EXISTS `property_pipe_class_hist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `property_pipe_class_hist` (
  `id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `class` varchar(255) NOT NULL DEFAULT '',
  `pipe` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `count` int(11) NOT NULL DEFAULT '0',
  `value` text,
  KEY `index_id` (`id`),
  KEY `index_class` (`class`),
  KEY `index_pipe` (`pipe`),
  KEY `index_name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `property_pipe_class_hist`
--

LOCK TABLES `property_pipe_class_hist` WRITE;
/*!40000 ALTER TABLE `property_pipe_class_hist` DISABLE KEYS */;
/*!40000 ALTER TABLE `property_pipe_class_hist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `property_pipe_device`
--

DROP TABLE IF EXISTS `property_pipe_device`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `property_pipe_device` (
  `device` varchar(255) NOT NULL DEFAULT '',
  `pipe` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `count` int(11) NOT NULL DEFAULT '0',
  `value` text,
  `updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `accessed` timestamp NOT NULL DEFAULT '1999-12-31 21:00:00',
  `comment` text,
  KEY `index_property_pipe_device` (`device`(64),`pipe`(64),`name`(64),`count`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `property_pipe_device`
--

LOCK TABLES `property_pipe_device` WRITE;
/*!40000 ALTER TABLE `property_pipe_device` DISABLE KEYS */;
/*!40000 ALTER TABLE `property_pipe_device` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `property_pipe_device_hist`
--

DROP TABLE IF EXISTS `property_pipe_device_hist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `property_pipe_device_hist` (
  `id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `device` varchar(255) NOT NULL DEFAULT '',
  `pipe` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `count` int(11) NOT NULL DEFAULT '0',
  `value` text,
  KEY `index_id` (`id`),
  KEY `index_device` (`device`),
  KEY `index_pipe` (`pipe`),
  KEY `index_name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `property_pipe_device_hist`
--

LOCK TABLES `property_pipe_device_hist` WRITE;
/*!40000 ALTER TABLE `property_pipe_device_hist` DISABLE KEYS */;
/*!40000 ALTER TABLE `property_pipe_device_hist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `server`
--

DROP TABLE IF EXISTS `server`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `server` (
  `name` varchar(255) NOT NULL DEFAULT '',
  `host` varchar(255) NOT NULL DEFAULT '',
  `mode` int(11) DEFAULT '0',
  `level` int(11) DEFAULT '0',
  KEY `index_name` (`name`(64))
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `server`
--

LOCK TABLES `server` WRITE;
/*!40000 ALTER TABLE `server` DISABLE KEYS */;
INSERT INTO `server` VALUES ('tangoaccesscontrol/1','',0,0);
/*!40000 ALTER TABLE `server` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-01-28 15:55:37
