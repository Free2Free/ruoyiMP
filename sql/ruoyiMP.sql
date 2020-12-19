-- MySQL dump 10.13  Distrib 5.7.32, for osx10.16 (x86_64)
--
-- Host: localhost    Database: ruoyiMP
-- ------------------------------------------------------
-- Server version	5.7.32

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
-- Current Database: `ruoyiMP`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `ruoyiMP` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `ruoyiMP`;

--
-- Table structure for table `QRTZ_BLOB_TRIGGERS`
--

DROP TABLE IF EXISTS `QRTZ_BLOB_TRIGGERS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `QRTZ_BLOB_TRIGGERS` (
  `sched_name` varchar(120) NOT NULL,
  `trigger_name` varchar(200) NOT NULL,
  `trigger_group` varchar(200) NOT NULL,
  `blob_data` blob,
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`),
  CONSTRAINT `qrtz_blob_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `QRTZ_TRIGGERS` (`sched_name`, `trigger_name`, `trigger_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `QRTZ_BLOB_TRIGGERS`
--

LOCK TABLES `QRTZ_BLOB_TRIGGERS` WRITE;
/*!40000 ALTER TABLE `QRTZ_BLOB_TRIGGERS` DISABLE KEYS */;
/*!40000 ALTER TABLE `QRTZ_BLOB_TRIGGERS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `QRTZ_CALENDARS`
--

DROP TABLE IF EXISTS `QRTZ_CALENDARS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `QRTZ_CALENDARS` (
  `sched_name` varchar(120) NOT NULL,
  `calendar_name` varchar(200) NOT NULL,
  `calendar` blob NOT NULL,
  PRIMARY KEY (`sched_name`,`calendar_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `QRTZ_CALENDARS`
--

LOCK TABLES `QRTZ_CALENDARS` WRITE;
/*!40000 ALTER TABLE `QRTZ_CALENDARS` DISABLE KEYS */;
/*!40000 ALTER TABLE `QRTZ_CALENDARS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `QRTZ_CRON_TRIGGERS`
--

DROP TABLE IF EXISTS `QRTZ_CRON_TRIGGERS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `QRTZ_CRON_TRIGGERS` (
  `sched_name` varchar(120) NOT NULL,
  `trigger_name` varchar(200) NOT NULL,
  `trigger_group` varchar(200) NOT NULL,
  `cron_expression` varchar(200) NOT NULL,
  `time_zone_id` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`),
  CONSTRAINT `qrtz_cron_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `QRTZ_TRIGGERS` (`sched_name`, `trigger_name`, `trigger_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `QRTZ_CRON_TRIGGERS`
--

LOCK TABLES `QRTZ_CRON_TRIGGERS` WRITE;
/*!40000 ALTER TABLE `QRTZ_CRON_TRIGGERS` DISABLE KEYS */;
INSERT INTO `QRTZ_CRON_TRIGGERS` VALUES ('RuoyiScheduler','TASK_CLASS_NAME1','DEFAULT','0/10 * * * * ?','Asia/Shanghai'),('RuoyiScheduler','TASK_CLASS_NAME2','DEFAULT','0/15 * * * * ?','Asia/Shanghai'),('RuoyiScheduler','TASK_CLASS_NAME3','DEFAULT','0/20 * * * * ?','Asia/Shanghai');
/*!40000 ALTER TABLE `QRTZ_CRON_TRIGGERS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `QRTZ_FIRED_TRIGGERS`
--

DROP TABLE IF EXISTS `QRTZ_FIRED_TRIGGERS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `QRTZ_FIRED_TRIGGERS` (
  `sched_name` varchar(120) NOT NULL,
  `entry_id` varchar(95) NOT NULL,
  `trigger_name` varchar(200) NOT NULL,
  `trigger_group` varchar(200) NOT NULL,
  `instance_name` varchar(200) NOT NULL,
  `fired_time` bigint(13) NOT NULL,
  `sched_time` bigint(13) NOT NULL,
  `priority` int(11) NOT NULL,
  `state` varchar(16) NOT NULL,
  `job_name` varchar(200) DEFAULT NULL,
  `job_group` varchar(200) DEFAULT NULL,
  `is_nonconcurrent` varchar(1) DEFAULT NULL,
  `requests_recovery` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`sched_name`,`entry_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `QRTZ_FIRED_TRIGGERS`
--

LOCK TABLES `QRTZ_FIRED_TRIGGERS` WRITE;
/*!40000 ALTER TABLE `QRTZ_FIRED_TRIGGERS` DISABLE KEYS */;
/*!40000 ALTER TABLE `QRTZ_FIRED_TRIGGERS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `QRTZ_JOB_DETAILS`
--

DROP TABLE IF EXISTS `QRTZ_JOB_DETAILS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `QRTZ_JOB_DETAILS` (
  `sched_name` varchar(120) NOT NULL,
  `job_name` varchar(200) NOT NULL,
  `job_group` varchar(200) NOT NULL,
  `description` varchar(250) DEFAULT NULL,
  `job_class_name` varchar(250) NOT NULL,
  `is_durable` varchar(1) NOT NULL,
  `is_nonconcurrent` varchar(1) NOT NULL,
  `is_update_data` varchar(1) NOT NULL,
  `requests_recovery` varchar(1) NOT NULL,
  `job_data` blob,
  PRIMARY KEY (`sched_name`,`job_name`,`job_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `QRTZ_JOB_DETAILS`
--

LOCK TABLES `QRTZ_JOB_DETAILS` WRITE;
/*!40000 ALTER TABLE `QRTZ_JOB_DETAILS` DISABLE KEYS */;
INSERT INTO `QRTZ_JOB_DETAILS` VALUES ('RuoyiScheduler','TASK_CLASS_NAME1','DEFAULT',NULL,'com.ruoyi.quartz.util.QuartzDisallowConcurrentExecution','0','1','0','0',0xACED0005737200156F72672E71756172747A2E4A6F62446174614D61709FB083E8BFA9B0CB020000787200266F72672E71756172747A2E7574696C732E537472696E674B65794469727479466C61674D61708208E8C3FBC55D280200015A0013616C6C6F77735472616E7369656E74446174617872001D6F72672E71756172747A2E7574696C732E4469727479466C61674D617013E62EAD28760ACE0200025A000564697274794C00036D617074000F4C6A6176612F7574696C2F4D61703B787001737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F4000000000000C7708000000100000000174000F5441534B5F50524F504552544945537372001E636F6D2E72756F79692E71756172747A2E646F6D61696E2E5379734A6F6200000000000000010200084C000A636F6E63757272656E747400124C6A6176612F6C616E672F537472696E673B4C000E63726F6E45787072657373696F6E71007E00094C000C696E766F6B6554617267657471007E00094C00086A6F6247726F757071007E00094C00056A6F6249647400104C6A6176612F6C616E672F4C6F6E673B4C00076A6F624E616D6571007E00094C000D6D697366697265506F6C69637971007E00094C000673746174757371007E000978720027636F6D2E72756F79692E636F6D6D6F6E2E636F72652E646F6D61696E2E42617365456E7469747900000000000000010200084C0008637265617465427971007E00094C000764656C657465647400134C6A6176612F6C616E672F426F6F6C65616E3B4C0009676D744372656174657400104C6A6176612F7574696C2F446174653B4C0009676D7455706461746571007E000D4C000672656D61726B71007E00094C000B73656172636856616C756571007E00094C0008757064617465427971007E00094C000776657273696F6E71007E000C787074000561646D696E737200116A6176612E6C616E672E426F6F6C65616ECD207280D59CFAEE0200015A000576616C75657870007372000E6A6176612E7574696C2E44617465686A81014B597419030000787077080000017676A514F878707400007074000071007E00117400013174000E302F3130202A202A202A202A203F74001172795461736B2E72794E6F506172616D7374000744454641554C547372000E6A6176612E6C616E672E4C6F6E673B8BE490CC8F23DF0200014A000576616C7565787200106A6176612E6C616E672E4E756D62657286AC951D0B94E08B02000078700000000000000001740018E7B3BBE7BB9FE9BB98E8AEA4EFBC88E697A0E58F82EFBC8974000133740001317800),('RuoyiScheduler','TASK_CLASS_NAME2','DEFAULT',NULL,'com.ruoyi.quartz.util.QuartzDisallowConcurrentExecution','0','1','0','0',0xACED0005737200156F72672E71756172747A2E4A6F62446174614D61709FB083E8BFA9B0CB020000787200266F72672E71756172747A2E7574696C732E537472696E674B65794469727479466C61674D61708208E8C3FBC55D280200015A0013616C6C6F77735472616E7369656E74446174617872001D6F72672E71756172747A2E7574696C732E4469727479466C61674D617013E62EAD28760ACE0200025A000564697274794C00036D617074000F4C6A6176612F7574696C2F4D61703B787001737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F4000000000000C7708000000100000000174000F5441534B5F50524F504552544945537372001E636F6D2E72756F79692E71756172747A2E646F6D61696E2E5379734A6F6200000000000000010200084C000A636F6E63757272656E747400124C6A6176612F6C616E672F537472696E673B4C000E63726F6E45787072657373696F6E71007E00094C000C696E766F6B6554617267657471007E00094C00086A6F6247726F757071007E00094C00056A6F6249647400104C6A6176612F6C616E672F4C6F6E673B4C00076A6F624E616D6571007E00094C000D6D697366697265506F6C69637971007E00094C000673746174757371007E000978720027636F6D2E72756F79692E636F6D6D6F6E2E636F72652E646F6D61696E2E42617365456E7469747900000000000000010200084C0008637265617465427971007E00094C000764656C657465647400134C6A6176612F6C616E672F426F6F6C65616E3B4C0009676D744372656174657400104C6A6176612F7574696C2F446174653B4C0009676D7455706461746571007E000D4C000672656D61726B71007E00094C000B73656172636856616C756571007E00094C0008757064617465427971007E00094C000776657273696F6E71007E000C787074000561646D696E737200116A6176612E6C616E672E426F6F6C65616ECD207280D59CFAEE0200015A000576616C75657870007372000E6A6176612E7574696C2E44617465686A81014B597419030000787077080000017676A514F878707400007074000071007E00117400013174000E302F3135202A202A202A202A203F74001572795461736B2E7279506172616D7328277279272974000744454641554C547372000E6A6176612E6C616E672E4C6F6E673B8BE490CC8F23DF0200014A000576616C7565787200106A6176612E6C616E672E4E756D62657286AC951D0B94E08B02000078700000000000000002740018E7B3BBE7BB9FE9BB98E8AEA4EFBC88E69C89E58F82EFBC8974000133740001317800),('RuoyiScheduler','TASK_CLASS_NAME3','DEFAULT',NULL,'com.ruoyi.quartz.util.QuartzDisallowConcurrentExecution','0','1','0','0',0xACED0005737200156F72672E71756172747A2E4A6F62446174614D61709FB083E8BFA9B0CB020000787200266F72672E71756172747A2E7574696C732E537472696E674B65794469727479466C61674D61708208E8C3FBC55D280200015A0013616C6C6F77735472616E7369656E74446174617872001D6F72672E71756172747A2E7574696C732E4469727479466C61674D617013E62EAD28760ACE0200025A000564697274794C00036D617074000F4C6A6176612F7574696C2F4D61703B787001737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F4000000000000C7708000000100000000174000F5441534B5F50524F504552544945537372001E636F6D2E72756F79692E71756172747A2E646F6D61696E2E5379734A6F6200000000000000010200084C000A636F6E63757272656E747400124C6A6176612F6C616E672F537472696E673B4C000E63726F6E45787072657373696F6E71007E00094C000C696E766F6B6554617267657471007E00094C00086A6F6247726F757071007E00094C00056A6F6249647400104C6A6176612F6C616E672F4C6F6E673B4C00076A6F624E616D6571007E00094C000D6D697366697265506F6C69637971007E00094C000673746174757371007E000978720027636F6D2E72756F79692E636F6D6D6F6E2E636F72652E646F6D61696E2E42617365456E7469747900000000000000010200084C0008637265617465427971007E00094C000764656C657465647400134C6A6176612F6C616E672F426F6F6C65616E3B4C0009676D744372656174657400104C6A6176612F7574696C2F446174653B4C0009676D7455706461746571007E000D4C000672656D61726B71007E00094C000B73656172636856616C756571007E00094C0008757064617465427971007E00094C000776657273696F6E71007E000C787074000561646D696E737200116A6176612E6C616E672E426F6F6C65616ECD207280D59CFAEE0200015A000576616C75657870007372000E6A6176612E7574696C2E44617465686A81014B597419030000787077080000017676A514F878707400007074000071007E00117400013174000E302F3230202A202A202A202A203F74003872795461736B2E72794D756C7469706C65506172616D7328277279272C20747275652C20323030304C2C203331362E3530442C203130302974000744454641554C547372000E6A6176612E6C616E672E4C6F6E673B8BE490CC8F23DF0200014A000576616C7565787200106A6176612E6C616E672E4E756D62657286AC951D0B94E08B02000078700000000000000003740018E7B3BBE7BB9FE9BB98E8AEA4EFBC88E5A49AE58F82EFBC8974000133740001317800);
/*!40000 ALTER TABLE `QRTZ_JOB_DETAILS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `QRTZ_LOCKS`
--

DROP TABLE IF EXISTS `QRTZ_LOCKS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `QRTZ_LOCKS` (
  `sched_name` varchar(120) NOT NULL,
  `lock_name` varchar(40) NOT NULL,
  PRIMARY KEY (`sched_name`,`lock_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `QRTZ_LOCKS`
--

LOCK TABLES `QRTZ_LOCKS` WRITE;
/*!40000 ALTER TABLE `QRTZ_LOCKS` DISABLE KEYS */;
INSERT INTO `QRTZ_LOCKS` VALUES ('RuoyiScheduler','STATE_ACCESS'),('RuoyiScheduler','TRIGGER_ACCESS');
/*!40000 ALTER TABLE `QRTZ_LOCKS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `QRTZ_PAUSED_TRIGGER_GRPS`
--

DROP TABLE IF EXISTS `QRTZ_PAUSED_TRIGGER_GRPS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `QRTZ_PAUSED_TRIGGER_GRPS` (
  `sched_name` varchar(120) NOT NULL,
  `trigger_group` varchar(200) NOT NULL,
  PRIMARY KEY (`sched_name`,`trigger_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `QRTZ_PAUSED_TRIGGER_GRPS`
--

LOCK TABLES `QRTZ_PAUSED_TRIGGER_GRPS` WRITE;
/*!40000 ALTER TABLE `QRTZ_PAUSED_TRIGGER_GRPS` DISABLE KEYS */;
/*!40000 ALTER TABLE `QRTZ_PAUSED_TRIGGER_GRPS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `QRTZ_SCHEDULER_STATE`
--

DROP TABLE IF EXISTS `QRTZ_SCHEDULER_STATE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `QRTZ_SCHEDULER_STATE` (
  `sched_name` varchar(120) NOT NULL,
  `instance_name` varchar(200) NOT NULL,
  `last_checkin_time` bigint(13) NOT NULL,
  `checkin_interval` bigint(13) NOT NULL,
  PRIMARY KEY (`sched_name`,`instance_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `QRTZ_SCHEDULER_STATE`
--

LOCK TABLES `QRTZ_SCHEDULER_STATE` WRITE;
/*!40000 ALTER TABLE `QRTZ_SCHEDULER_STATE` DISABLE KEYS */;
INSERT INTO `QRTZ_SCHEDULER_STATE` VALUES ('RuoyiScheduler','H1608384666498',1608385119384,15000);
/*!40000 ALTER TABLE `QRTZ_SCHEDULER_STATE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `QRTZ_SIMPLE_TRIGGERS`
--

DROP TABLE IF EXISTS `QRTZ_SIMPLE_TRIGGERS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `QRTZ_SIMPLE_TRIGGERS` (
  `sched_name` varchar(120) NOT NULL,
  `trigger_name` varchar(200) NOT NULL,
  `trigger_group` varchar(200) NOT NULL,
  `repeat_count` bigint(7) NOT NULL,
  `repeat_interval` bigint(12) NOT NULL,
  `times_triggered` bigint(10) NOT NULL,
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`),
  CONSTRAINT `qrtz_simple_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `QRTZ_TRIGGERS` (`sched_name`, `trigger_name`, `trigger_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `QRTZ_SIMPLE_TRIGGERS`
--

LOCK TABLES `QRTZ_SIMPLE_TRIGGERS` WRITE;
/*!40000 ALTER TABLE `QRTZ_SIMPLE_TRIGGERS` DISABLE KEYS */;
/*!40000 ALTER TABLE `QRTZ_SIMPLE_TRIGGERS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `QRTZ_SIMPROP_TRIGGERS`
--

DROP TABLE IF EXISTS `QRTZ_SIMPROP_TRIGGERS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `QRTZ_SIMPROP_TRIGGERS` (
  `sched_name` varchar(120) NOT NULL,
  `trigger_name` varchar(200) NOT NULL,
  `trigger_group` varchar(200) NOT NULL,
  `str_prop_1` varchar(512) DEFAULT NULL,
  `str_prop_2` varchar(512) DEFAULT NULL,
  `str_prop_3` varchar(512) DEFAULT NULL,
  `int_prop_1` int(11) DEFAULT NULL,
  `int_prop_2` int(11) DEFAULT NULL,
  `long_prop_1` bigint(20) DEFAULT NULL,
  `long_prop_2` bigint(20) DEFAULT NULL,
  `dec_prop_1` decimal(13,4) DEFAULT NULL,
  `dec_prop_2` decimal(13,4) DEFAULT NULL,
  `bool_prop_1` varchar(1) DEFAULT NULL,
  `bool_prop_2` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`),
  CONSTRAINT `qrtz_simprop_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `QRTZ_TRIGGERS` (`sched_name`, `trigger_name`, `trigger_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `QRTZ_SIMPROP_TRIGGERS`
--

LOCK TABLES `QRTZ_SIMPROP_TRIGGERS` WRITE;
/*!40000 ALTER TABLE `QRTZ_SIMPROP_TRIGGERS` DISABLE KEYS */;
/*!40000 ALTER TABLE `QRTZ_SIMPROP_TRIGGERS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `QRTZ_TRIGGERS`
--

DROP TABLE IF EXISTS `QRTZ_TRIGGERS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `QRTZ_TRIGGERS` (
  `sched_name` varchar(120) NOT NULL,
  `trigger_name` varchar(200) NOT NULL,
  `trigger_group` varchar(200) NOT NULL,
  `job_name` varchar(200) NOT NULL,
  `job_group` varchar(200) NOT NULL,
  `description` varchar(250) DEFAULT NULL,
  `next_fire_time` bigint(13) DEFAULT NULL,
  `prev_fire_time` bigint(13) DEFAULT NULL,
  `priority` int(11) DEFAULT NULL,
  `trigger_state` varchar(16) NOT NULL,
  `trigger_type` varchar(8) NOT NULL,
  `start_time` bigint(13) NOT NULL,
  `end_time` bigint(13) DEFAULT NULL,
  `calendar_name` varchar(200) DEFAULT NULL,
  `misfire_instr` smallint(2) DEFAULT NULL,
  `job_data` blob,
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`),
  KEY `sched_name` (`sched_name`,`job_name`,`job_group`),
  CONSTRAINT `qrtz_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `job_name`, `job_group`) REFERENCES `QRTZ_JOB_DETAILS` (`sched_name`, `job_name`, `job_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `QRTZ_TRIGGERS`
--

LOCK TABLES `QRTZ_TRIGGERS` WRITE;
/*!40000 ALTER TABLE `QRTZ_TRIGGERS` DISABLE KEYS */;
INSERT INTO `QRTZ_TRIGGERS` VALUES ('RuoyiScheduler','TASK_CLASS_NAME1','DEFAULT','TASK_CLASS_NAME1','DEFAULT',NULL,1608384670000,-1,5,'PAUSED','CRON',1608384666000,0,NULL,2,''),('RuoyiScheduler','TASK_CLASS_NAME2','DEFAULT','TASK_CLASS_NAME2','DEFAULT',NULL,1608384675000,-1,5,'PAUSED','CRON',1608384666000,0,NULL,2,''),('RuoyiScheduler','TASK_CLASS_NAME3','DEFAULT','TASK_CLASS_NAME3','DEFAULT',NULL,1608384680000,-1,5,'PAUSED','CRON',1608384666000,0,NULL,2,'');
/*!40000 ALTER TABLE `QRTZ_TRIGGERS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gen_table`
--

DROP TABLE IF EXISTS `gen_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gen_table` (
  `table_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_name` varchar(200) DEFAULT '' COMMENT '表名称',
  `table_comment` varchar(500) DEFAULT '' COMMENT '表描述',
  `class_name` varchar(100) DEFAULT '' COMMENT '实体类名称',
  `tpl_category` varchar(200) DEFAULT 'crud' COMMENT '使用的模板（crud单表操作 tree树表操作）',
  `package_name` varchar(100) DEFAULT NULL COMMENT '生成包路径',
  `module_name` varchar(30) DEFAULT NULL COMMENT '生成模块名',
  `business_name` varchar(30) DEFAULT NULL COMMENT '生成业务名',
  `function_name` varchar(50) DEFAULT NULL COMMENT '生成功能名',
  `function_author` varchar(50) DEFAULT NULL COMMENT '生成功能作者',
  `gen_type` char(1) DEFAULT '0' COMMENT '生成代码方式（0zip压缩包 1自定义路径）',
  `gen_path` varchar(200) DEFAULT '/' COMMENT '生成路径（不填默认项目路径）',
  `options` varchar(1000) DEFAULT NULL COMMENT '其它生成选项',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`table_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='代码生成业务表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gen_table`
--

LOCK TABLES `gen_table` WRITE;
/*!40000 ALTER TABLE `gen_table` DISABLE KEYS */;
/*!40000 ALTER TABLE `gen_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gen_table_column`
--

DROP TABLE IF EXISTS `gen_table_column`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gen_table_column` (
  `column_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_id` varchar(64) DEFAULT NULL COMMENT '归属表编号',
  `column_name` varchar(200) DEFAULT NULL COMMENT '列名称',
  `column_comment` varchar(500) DEFAULT NULL COMMENT '列描述',
  `column_type` varchar(100) DEFAULT NULL COMMENT '列类型',
  `java_type` varchar(500) DEFAULT NULL COMMENT 'JAVA类型',
  `java_field` varchar(200) DEFAULT NULL COMMENT 'JAVA字段名',
  `is_pk` char(1) DEFAULT NULL COMMENT '是否主键（1是）',
  `is_increment` char(1) DEFAULT NULL COMMENT '是否自增（1是）',
  `is_required` char(1) DEFAULT NULL COMMENT '是否必填（1是）',
  `is_insert` char(1) DEFAULT NULL COMMENT '是否为插入字段（1是）',
  `is_edit` char(1) DEFAULT NULL COMMENT '是否编辑字段（1是）',
  `is_list` char(1) DEFAULT NULL COMMENT '是否列表字段（1是）',
  `is_query` char(1) DEFAULT NULL COMMENT '是否查询字段（1是）',
  `query_type` varchar(200) DEFAULT 'EQ' COMMENT '查询方式（等于、不等于、大于、小于、范围）',
  `html_type` varchar(200) DEFAULT NULL COMMENT '显示类型（文本框、文本域、下拉框、复选框、单选框、日期控件）',
  `dict_type` varchar(200) DEFAULT '' COMMENT '字典类型',
  `sort` int(11) DEFAULT NULL COMMENT '排序',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`column_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='代码生成业务表字段';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gen_table_column`
--

LOCK TABLES `gen_table_column` WRITE;
/*!40000 ALTER TABLE `gen_table_column` DISABLE KEYS */;
/*!40000 ALTER TABLE `gen_table_column` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_config`
--

DROP TABLE IF EXISTS `sys_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_config` (
  `config_id` bigint(64) NOT NULL AUTO_INCREMENT COMMENT '参数主键',
  `config_name` varchar(100) DEFAULT '' COMMENT '参数名称',
  `config_key` varchar(100) DEFAULT '' COMMENT '参数键名',
  `config_value` varchar(500) DEFAULT '' COMMENT '参数键值',
  `config_type` char(1) DEFAULT 'N' COMMENT '系统内置（Y是 N否）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `gmt_create` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `gmt_update` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  `deleted` bit(1) DEFAULT b'0' COMMENT '逻辑删除（0:未删除；1:已删除）',
  `version` int(11) DEFAULT '0' COMMENT '乐观锁',
  PRIMARY KEY (`config_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='参数配置表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_config`
--

LOCK TABLES `sys_config` WRITE;
/*!40000 ALTER TABLE `sys_config` DISABLE KEYS */;
INSERT INTO `sys_config` VALUES (1,'主框架页-默认皮肤样式名称','sys.index.skinName','skin-blue','Y','admin','2020-12-16 21:41:40','',NULL,'蓝色 skin-blue、绿色 skin-green、紫色 skin-purple、红色 skin-red、黄色 skin-yellow',0x00,0),(2,'用户管理-账号初始密码','sys.user.initPassword','123456','Y','admin','2020-12-16 21:41:40','',NULL,'初始化密码 123456',0x00,0),(3,'主框架页-侧边栏主题','sys.index.sideTheme','theme-dark','Y','admin','2020-12-16 21:41:40','',NULL,'深色主题theme-dark，浅色主题theme-light',0x00,0);
/*!40000 ALTER TABLE `sys_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_dept`
--

DROP TABLE IF EXISTS `sys_dept`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_dept` (
  `dept_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '部门id',
  `parent_id` bigint(20) DEFAULT '0' COMMENT '父部门id',
  `ancestors` varchar(50) DEFAULT '' COMMENT '祖级列表',
  `dept_name` varchar(30) DEFAULT '' COMMENT '部门名称',
  `order_num` int(4) DEFAULT '0' COMMENT '显示顺序',
  `leader` varchar(20) DEFAULT NULL COMMENT '负责人',
  `phone` varchar(11) DEFAULT NULL COMMENT '联系电话',
  `email` varchar(50) DEFAULT NULL COMMENT '邮箱',
  `status` char(1) DEFAULT '0' COMMENT '部门状态（0正常 1停用）',
  `del_flag` char(1) DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `gmt_create` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `gmt_update` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  `deleted` bit(1) DEFAULT b'0' COMMENT '逻辑删除（0:未删除；1:已删除）',
  `version` int(11) DEFAULT '0' COMMENT '乐观锁',
  PRIMARY KEY (`dept_id`)
) ENGINE=InnoDB AUTO_INCREMENT=110 DEFAULT CHARSET=utf8 COMMENT='部门表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_dept`
--

LOCK TABLES `sys_dept` WRITE;
/*!40000 ALTER TABLE `sys_dept` DISABLE KEYS */;
INSERT INTO `sys_dept` VALUES (100,0,'0','若依科技',0,'若依','15888888888','ry@qq.com','0','0','admin','2020-12-16 21:41:40','',NULL,NULL,0x00,0),(101,100,'0,100','深圳总公司',1,'若依','15888888888','ry@qq.com','0','0','admin','2020-12-16 21:41:40','',NULL,NULL,0x00,0),(102,100,'0,100','长沙分公司',2,'若依','15888888888','ry@qq.com','0','0','admin','2020-12-16 21:41:40','',NULL,NULL,0x00,0),(103,101,'0,100,101','研发部门',1,'若依','15888888888','ry@qq.com','0','0','admin','2020-12-16 21:41:40','',NULL,NULL,0x00,0),(104,101,'0,100,101','市场部门',2,'若依','15888888888','ry@qq.com','0','0','admin','2020-12-16 21:41:40','',NULL,NULL,0x00,0),(105,101,'0,100,101','测试部门',3,'若依','15888888888','ry@qq.com','0','0','admin','2020-12-16 21:41:40','',NULL,NULL,0x00,0),(106,101,'0,100,101','财务部门',4,'若依','15888888888','ry@qq.com','0','0','admin','2020-12-16 21:41:40','',NULL,NULL,0x00,0),(107,101,'0,100,101','运维部门',5,'若依','15888888888','ry@qq.com','0','0','admin','2020-12-16 21:41:40','',NULL,NULL,0x00,0),(108,102,'0,100,102','市场部门',1,'若依','15888888888','ry@qq.com','0','0','admin','2020-12-16 21:41:40','',NULL,NULL,0x00,0),(109,102,'0,100,102','财务部门',2,'若依','15888888888','ry@qq.com','0','0','admin','2020-12-16 21:41:40','',NULL,NULL,0x00,0);
/*!40000 ALTER TABLE `sys_dept` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_dict_data`
--

DROP TABLE IF EXISTS `sys_dict_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_dict_data` (
  `dict_code` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '字典编码',
  `dict_sort` int(4) DEFAULT '0' COMMENT '字典排序',
  `dict_label` varchar(100) DEFAULT '' COMMENT '字典标签',
  `dict_value` varchar(100) DEFAULT '' COMMENT '字典键值',
  `dict_type` varchar(100) DEFAULT '' COMMENT '字典类型',
  `css_class` varchar(100) DEFAULT NULL COMMENT '样式属性（其他样式扩展）',
  `list_class` varchar(100) DEFAULT NULL COMMENT '表格回显样式',
  `is_default` char(1) DEFAULT 'N' COMMENT '是否默认（Y是 N否）',
  `status` char(1) DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `gmt_create` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `gmt_update` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  `deleted` bit(1) DEFAULT b'0' COMMENT '逻辑删除（0:未删除；1:已删除）',
  `version` int(11) DEFAULT '0' COMMENT '乐观锁',
  PRIMARY KEY (`dict_code`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8 COMMENT='字典数据表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_dict_data`
--

LOCK TABLES `sys_dict_data` WRITE;
/*!40000 ALTER TABLE `sys_dict_data` DISABLE KEYS */;
INSERT INTO `sys_dict_data` VALUES (1,1,'男','0','sys_user_sex','','','Y','0','admin','2020-12-16 21:41:40','',NULL,'性别男',0x00,0),(2,2,'女','1','sys_user_sex','','','N','0','admin','2020-12-16 21:41:40','',NULL,'性别女',0x00,0),(3,3,'未知','2','sys_user_sex','','','N','0','admin','2020-12-16 21:41:40','',NULL,'性别未知',0x00,0),(4,1,'显示','0','sys_show_hide','','primary','Y','0','admin','2020-12-16 21:41:40','',NULL,'显示菜单',0x00,0),(5,2,'隐藏','1','sys_show_hide','','danger','N','0','admin','2020-12-16 21:41:40','',NULL,'隐藏菜单',0x00,0),(6,1,'正常','0','sys_normal_disable','','primary','Y','0','admin','2020-12-16 21:41:40','',NULL,'正常状态',0x00,0),(7,2,'停用','1','sys_normal_disable','','danger','N','0','admin','2020-12-16 21:41:40','',NULL,'停用状态',0x00,0),(8,1,'正常','0','sys_job_status','','primary','Y','0','admin','2020-12-16 21:41:40','',NULL,'正常状态',0x00,0),(9,2,'暂停','1','sys_job_status','','danger','N','0','admin','2020-12-16 21:41:40','',NULL,'停用状态',0x00,0),(10,1,'默认','DEFAULT','sys_job_group','','','Y','0','admin','2020-12-16 21:41:40','',NULL,'默认分组',0x00,0),(11,2,'系统','SYSTEM','sys_job_group','','','N','0','admin','2020-12-16 21:41:40','',NULL,'系统分组',0x00,0),(12,1,'是','Y','sys_yes_no','','primary','Y','0','admin','2020-12-16 21:41:40','',NULL,'系统默认是',0x00,0),(13,2,'否','N','sys_yes_no','','danger','N','0','admin','2020-12-16 21:41:40','',NULL,'系统默认否',0x00,0),(14,1,'通知','1','sys_notice_type','','warning','Y','0','admin','2020-12-16 21:41:40','',NULL,'通知',0x00,0),(15,2,'公告','2','sys_notice_type','','success','N','0','admin','2020-12-16 21:41:40','',NULL,'公告',0x00,0),(16,1,'正常','0','sys_notice_status','','primary','Y','0','admin','2020-12-16 21:41:40','',NULL,'正常状态',0x00,0),(17,2,'关闭','1','sys_notice_status','','danger','N','0','admin','2020-12-16 21:41:40','',NULL,'关闭状态',0x00,0),(18,1,'新增','1','sys_oper_type','','info','N','0','admin','2020-12-16 21:41:40','',NULL,'新增操作',0x00,0),(19,2,'修改','2','sys_oper_type','','info','N','0','admin','2020-12-16 21:41:40','',NULL,'修改操作',0x00,0),(20,3,'删除','3','sys_oper_type','','danger','N','0','admin','2020-12-16 21:41:40','',NULL,'删除操作',0x00,0),(21,4,'授权','4','sys_oper_type','','primary','N','0','admin','2020-12-16 21:41:40','',NULL,'授权操作',0x00,0),(22,5,'导出','5','sys_oper_type','','warning','N','0','admin','2020-12-16 21:41:40','',NULL,'导出操作',0x00,0),(23,6,'导入','6','sys_oper_type','','warning','N','0','admin','2020-12-16 21:41:40','',NULL,'导入操作',0x00,0),(24,7,'强退','7','sys_oper_type','','danger','N','0','admin','2020-12-16 21:41:40','',NULL,'强退操作',0x00,0),(25,8,'生成代码','8','sys_oper_type','','warning','N','0','admin','2020-12-16 21:41:40','',NULL,'生成操作',0x00,0),(26,9,'清空数据','9','sys_oper_type','','danger','N','0','admin','2020-12-16 21:41:40','',NULL,'清空操作',0x00,0),(27,1,'成功','0','sys_common_status','','primary','N','0','admin','2020-12-16 21:41:40','',NULL,'正常状态',0x00,0),(28,2,'失败','1','sys_common_status','','danger','N','0','admin','2020-12-16 21:41:40','',NULL,'停用状态',0x00,0),(29,0,'1','1','sys_user_sex',NULL,NULL,'N','0','admin',NULL,'',NULL,'1',0x00,0);
/*!40000 ALTER TABLE `sys_dict_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_dict_type`
--

DROP TABLE IF EXISTS `sys_dict_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_dict_type` (
  `dict_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '字典主键',
  `dict_name` varchar(100) DEFAULT '' COMMENT '字典名称',
  `dict_type` varchar(100) DEFAULT '' COMMENT '字典类型',
  `status` char(1) DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `gmt_create` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `gmt_update` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  `deleted` bit(1) DEFAULT b'0' COMMENT '逻辑删除（0:未删除；1:已删除）',
  `version` int(11) DEFAULT '0' COMMENT '乐观锁',
  PRIMARY KEY (`dict_id`),
  UNIQUE KEY `dict_type` (`dict_type`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COMMENT='字典类型表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_dict_type`
--

LOCK TABLES `sys_dict_type` WRITE;
/*!40000 ALTER TABLE `sys_dict_type` DISABLE KEYS */;
INSERT INTO `sys_dict_type` VALUES (1,'用户性别','sys_user_sex','0','admin','2020-12-16 21:41:40','',NULL,'用户性别列表',0x00,0),(2,'菜单状态','sys_show_hide','0','admin','2020-12-16 21:41:40','',NULL,'菜单状态列表',0x00,0),(3,'系统开关','sys_normal_disable','0','admin','2020-12-16 21:41:40','',NULL,'系统开关列表',0x00,0),(4,'任务状态','sys_job_status','0','admin','2020-12-16 21:41:40','',NULL,'任务状态列表',0x00,0),(5,'任务分组','sys_job_group','0','admin','2020-12-16 21:41:40','',NULL,'任务分组列表',0x00,0),(6,'系统是否','sys_yes_no','0','admin','2020-12-16 21:41:40','',NULL,'系统是否列表',0x00,0),(7,'通知类型','sys_notice_type','0','admin','2020-12-16 21:41:40','',NULL,'通知类型列表',0x00,0),(8,'通知状态','sys_notice_status','0','admin','2020-12-16 21:41:40','',NULL,'通知状态列表',0x00,0),(9,'操作类型','sys_oper_type','0','admin','2020-12-16 21:41:40','',NULL,'操作类型列表',0x00,0),(10,'系统状态','sys_common_status','0','admin','2020-12-16 21:41:40','',NULL,'登录状态列表',0x00,0);
/*!40000 ALTER TABLE `sys_dict_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_job`
--

DROP TABLE IF EXISTS `sys_job`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_job` (
  `job_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '任务ID',
  `job_name` varchar(64) NOT NULL DEFAULT '' COMMENT '任务名称',
  `job_group` varchar(64) NOT NULL DEFAULT 'DEFAULT' COMMENT '任务组名',
  `invoke_target` varchar(500) NOT NULL COMMENT '调用目标字符串',
  `cron_expression` varchar(255) DEFAULT '' COMMENT 'cron执行表达式',
  `misfire_policy` varchar(20) DEFAULT '3' COMMENT '计划执行错误策略（1立即执行 2执行一次 3放弃执行）',
  `concurrent` char(1) DEFAULT '1' COMMENT '是否并发执行（0允许 1禁止）',
  `status` char(1) DEFAULT '0' COMMENT '状态（0正常 1暂停）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT '' COMMENT '备注信息',
  `gmt_create` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gmt_update` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  `deleted` bit(1) DEFAULT b'0' COMMENT '逻辑删除（0:未删除；1:已删除）',
  `version` int(11) DEFAULT '0' COMMENT '乐观锁',
  PRIMARY KEY (`job_id`,`job_name`,`job_group`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='定时任务调度表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_job`
--

LOCK TABLES `sys_job` WRITE;
/*!40000 ALTER TABLE `sys_job` DISABLE KEYS */;
INSERT INTO `sys_job` VALUES (1,'系统默认（无参）','DEFAULT','ryTask.ryNoParams','0/10 * * * * ?','3','1','1','admin','2020-12-16 21:41:40','',NULL,'','2020-12-19 00:18:19',NULL,0x00,0),(2,'系统默认（有参）','DEFAULT','ryTask.ryParams(\'ry\')','0/15 * * * * ?','3','1','1','admin','2020-12-16 21:41:40','',NULL,'','2020-12-19 00:18:19',NULL,0x00,0),(3,'系统默认（多参）','DEFAULT','ryTask.ryMultipleParams(\'ry\', true, 2000L, 316.50D, 100)','0/20 * * * * ?','3','1','1','admin','2020-12-16 21:41:40','',NULL,'','2020-12-19 00:18:19',NULL,0x00,0);
/*!40000 ALTER TABLE `sys_job` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_job_log`
--

DROP TABLE IF EXISTS `sys_job_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_job_log` (
  `job_log_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '任务日志ID',
  `job_name` varchar(64) NOT NULL COMMENT '任务名称',
  `job_group` varchar(64) NOT NULL COMMENT '任务组名',
  `invoke_target` varchar(500) NOT NULL COMMENT '调用目标字符串',
  `job_message` varchar(500) DEFAULT NULL COMMENT '日志信息',
  `status` char(1) DEFAULT '0' COMMENT '执行状态（0正常 1失败）',
  `exception_info` varchar(2000) DEFAULT '' COMMENT '异常信息',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`job_log_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='定时任务调度日志表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_job_log`
--

LOCK TABLES `sys_job_log` WRITE;
/*!40000 ALTER TABLE `sys_job_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `sys_job_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_logininfor`
--

DROP TABLE IF EXISTS `sys_logininfor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_logininfor` (
  `info_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '访问ID',
  `user_name` varchar(50) DEFAULT '' COMMENT '用户账号',
  `ipaddr` varchar(50) DEFAULT '' COMMENT '登录IP地址',
  `login_location` varchar(255) DEFAULT '' COMMENT '登录地点',
  `browser` varchar(50) DEFAULT '' COMMENT '浏览器类型',
  `os` varchar(50) DEFAULT '' COMMENT '操作系统',
  `status` char(1) DEFAULT '0' COMMENT '登录状态（0成功 1失败）',
  `msg` varchar(512) DEFAULT '' COMMENT '提示消息',
  `login_time` datetime DEFAULT NULL COMMENT '访问时间',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `gmt_create` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `gmt_modified` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  `deleted` bit(1) DEFAULT b'0' COMMENT '逻辑删除（0:未删除；1:已删除）',
  `version` int(11) DEFAULT '0' COMMENT '乐观锁',
  PRIMARY KEY (`info_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1340267822823858179 DEFAULT CHARSET=utf8 COMMENT='系统访问记录';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_logininfor`
--

LOCK TABLES `sys_logininfor` WRITE;
/*!40000 ALTER TABLE `sys_logininfor` DISABLE KEYS */;
INSERT INTO `sys_logininfor` VALUES (100,'admin','127.0.0.1','内网IP','Chrome 8','Mac OS X','0','登录成功','2020-12-16 21:52:17','',NULL,'',NULL,NULL,0x00,0),(101,'admin','127.0.0.1','内网IP','Chrome 8','Mac OS X','0','登录成功','2020-12-16 22:28:55','',NULL,'',NULL,NULL,0x00,0),(102,'admin','127.0.0.1','内网IP','Chrome 8','Mac OS X','0','登录成功','2020-12-17 10:51:35','',NULL,'',NULL,NULL,0x00,0),(103,'admin','127.0.0.1','内网IP','Chrome 8','Mac OS X','1','验证码错误','2020-12-17 12:38:20','',NULL,'',NULL,NULL,0x00,0),(104,'admin','127.0.0.1','内网IP','Chrome 8','Mac OS X','0','登录成功','2020-12-17 12:38:25','',NULL,'',NULL,NULL,0x00,0),(1339443617953808386,'admin','127.0.0.1','内网IP','Chrome 8','Mac OS X','1','验证码错误',NULL,'',NULL,'',NULL,NULL,0x00,0),(1339443642633093121,'admin','127.0.0.1','内网IP','Chrome 8','Mac OS X','0','登录成功',NULL,'',NULL,'',NULL,NULL,0x00,0),(1339463829340135426,'admin','127.0.0.1','内网IP','Chrome 8','Mac OS X','0','登录成功',NULL,'',NULL,'',NULL,NULL,0x00,0),(1339524925103116290,'admin','127.0.0.1','内网IP','Chrome 8','Mac OS X','0','登录成功',NULL,'',NULL,'',NULL,NULL,0x00,0),(1339554054389116929,'admin','127.0.0.1','内网IP','Chrome 8','Mac OS X','0','登录成功',NULL,'',NULL,'',NULL,NULL,0x00,0),(1339601483985702913,'admin','127.0.0.1','内网IP','Chrome 8','Mac OS X','0','登录成功',NULL,'',NULL,'',NULL,NULL,0x00,0),(1339893753251201026,'admin','127.0.0.1','内网IP','Chrome 8','Mac OS X','0','登录成功',NULL,'',NULL,'',NULL,NULL,0x00,0),(1339968856857108482,'admin','127.0.0.1','内网IP','Chrome 8','Mac OS X','1','验证码错误',NULL,'','2020-12-19 00:20:45','',NULL,NULL,0x00,0),(1339969473159749633,'admin','127.0.0.1','内网IP','Chrome 8','Mac OS X','1','验证码已失效',NULL,'','2020-12-19 00:23:12','',NULL,NULL,0x00,0),(1339970411492663298,'admin','127.0.0.1','内网IP','Chrome 8','Mac OS X','1','验证码已失效',NULL,'','2020-12-19 00:26:56','',NULL,NULL,0x00,0),(1339973131029016577,'admin','127.0.0.1','内网IP','Chrome 8','Mac OS X','1','用户不存在/密码错误',NULL,'','2020-12-19 00:37:44','',NULL,NULL,0x00,0),(1339973184942600193,'admin','127.0.0.1','内网IP','Chrome 8','Mac OS X','1','用户不存在/密码错误',NULL,'','2020-12-19 00:37:57','',NULL,NULL,0x00,0),(1339973777954275330,'admin','127.0.0.1','内网IP','Chrome 8','Mac OS X','0','登录成功',NULL,'','2020-12-19 00:40:18','',NULL,NULL,0x00,0),(1340190391492530178,'admin','127.0.0.1','内网IP','Chrome 8','Mac OS X','0','登录成功',NULL,'','2020-12-19 15:01:03','',NULL,NULL,0x00,0),(1340267776078340097,'admin','127.0.0.1','内网IP','Chrome 8','Mac OS X','1','验证码错误',NULL,'','2020-12-19 20:08:33','',NULL,NULL,0x00,0),(1340267801265135617,'admin','127.0.0.1','内网IP','Chrome 8','Mac OS X','1','验证码错误',NULL,'','2020-12-19 20:08:39','',NULL,NULL,0x00,0),(1340267822823858178,'admin','127.0.0.1','内网IP','Chrome 8','Mac OS X','0','登录成功',NULL,'','2020-12-19 20:08:44','',NULL,NULL,0x00,0);
/*!40000 ALTER TABLE `sys_logininfor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_menu`
--

DROP TABLE IF EXISTS `sys_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_menu` (
  `menu_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '菜单ID',
  `menu_name` varchar(50) NOT NULL COMMENT '菜单名称',
  `parent_id` bigint(20) DEFAULT '0' COMMENT '父菜单ID',
  `order_num` int(4) DEFAULT '0' COMMENT '显示顺序',
  `path` varchar(200) DEFAULT '' COMMENT '路由地址',
  `component` varchar(255) DEFAULT NULL COMMENT '组件路径',
  `is_frame` int(1) DEFAULT '1' COMMENT '是否为外链（0是 1否）',
  `is_cache` int(1) DEFAULT '0' COMMENT '是否缓存（0缓存 1不缓存）',
  `menu_type` char(1) DEFAULT '' COMMENT '菜单类型（M目录 C菜单 F按钮）',
  `visible` char(1) DEFAULT '0' COMMENT '菜单状态（0显示 1隐藏）',
  `status` char(1) DEFAULT '0' COMMENT '菜单状态（0正常 1停用）',
  `perms` varchar(100) DEFAULT NULL COMMENT '权限标识',
  `icon` varchar(100) DEFAULT '#' COMMENT '菜单图标',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `gmt_create` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `gmt_update` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  `remark` varchar(500) DEFAULT '' COMMENT '备注',
  `deleted` bit(1) DEFAULT b'0' COMMENT '逻辑删除（0:未删除；1:已删除）',
  `version` int(11) DEFAULT '0' COMMENT '乐观锁',
  PRIMARY KEY (`menu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1061 DEFAULT CHARSET=utf8 COMMENT='菜单权限表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_menu`
--

LOCK TABLES `sys_menu` WRITE;
/*!40000 ALTER TABLE `sys_menu` DISABLE KEYS */;
INSERT INTO `sys_menu` VALUES (1,'系统管理',0,1,'system',NULL,1,0,'M','0','0','','system','admin','2020-12-16 21:41:40','',NULL,'系统管理目录',0x00,0),(2,'系统监控',0,2,'monitor',NULL,1,0,'M','0','0','','monitor','admin','2020-12-16 21:41:40','',NULL,'系统监控目录',0x00,0),(3,'系统工具',0,3,'tool',NULL,1,0,'M','0','0','','tool','admin','2020-12-16 21:41:40','',NULL,'系统工具目录',0x00,0),(4,'若依官网',0,4,'http://ruoyi.vip',NULL,0,0,'M','0','1','','guide','admin','2020-12-16 21:41:40','admin','2020-12-18 00:02:29','若依官网地址',0x00,0),(100,'用户管理',1,1,'user','system/user/index',1,0,'C','0','0','system:user:list','user','admin','2020-12-16 21:41:40','',NULL,'用户管理菜单',0x00,0),(101,'角色管理',1,2,'role','system/role/index',1,0,'C','0','0','system:role:list','peoples','admin','2020-12-16 21:41:40','',NULL,'角色管理菜单',0x00,0),(102,'菜单管理',1,3,'menu','system/menu/index',1,0,'C','0','0','system:menu:list','tree-table','admin','2020-12-16 21:41:40','',NULL,'菜单管理菜单',0x00,0),(103,'部门管理',1,4,'dept','system/dept/index',1,0,'C','0','0','system:dept:list','tree','admin','2020-12-16 21:41:40','',NULL,'部门管理菜单',0x00,0),(104,'岗位管理',1,5,'post','system/post/index',1,0,'C','0','0','system:post:list','post','admin','2020-12-16 21:41:40','',NULL,'岗位管理菜单',0x00,0),(105,'字典管理',1,6,'dict','system/dict/index',1,0,'C','0','0','system:dict:list','dict','admin','2020-12-16 21:41:40','',NULL,'字典管理菜单',0x00,0),(106,'参数设置',1,7,'config','system/config/index',1,0,'C','0','0','system:config:list','edit','admin','2020-12-16 21:41:40','',NULL,'参数设置菜单',0x00,0),(107,'通知公告',1,8,'notice','system/notice/index',1,0,'C','0','0','system:notice:list','message','admin','2020-12-16 21:41:40','',NULL,'通知公告菜单',0x00,0),(108,'日志管理',1,9,'log','',1,0,'M','0','0','','log','admin','2020-12-16 21:41:40','',NULL,'日志管理菜单',0x00,0),(109,'在线用户',2,1,'online','monitor/online/index',1,0,'C','0','0','monitor:online:list','online','admin','2020-12-16 21:41:40','',NULL,'在线用户菜单',0x00,0),(110,'定时任务',2,2,'job','monitor/job/index',1,0,'C','0','0','monitor:job:list','job','admin','2020-12-16 21:41:40','',NULL,'定时任务菜单',0x00,0),(111,'数据监控',2,3,'druid','monitor/druid/index',1,0,'C','0','0','monitor:druid:list','druid','admin','2020-12-16 21:41:40','',NULL,'数据监控菜单',0x00,0),(112,'服务监控',2,4,'server','monitor/server/index',1,0,'C','0','0','monitor:server:list','server','admin','2020-12-16 21:41:40','',NULL,'服务监控菜单',0x00,0),(113,'缓存监控',2,5,'cache','monitor/cache/index',1,0,'C','0','0','monitor:cache:list','redis','admin','2020-12-16 21:41:40','',NULL,'缓存监控菜单',0x00,0),(114,'表单构建',3,1,'build','tool/build/index',1,0,'C','0','0','tool:build:list','build','admin','2020-12-16 21:41:40','',NULL,'表单构建菜单',0x00,0),(115,'代码生成',3,2,'gen','tool/gen/index',1,0,'C','0','0','tool:gen:list','code','admin','2020-12-16 21:41:40','',NULL,'代码生成菜单',0x00,0),(116,'系统接口',3,3,'swagger','tool/swagger/index',1,0,'C','0','0','tool:swagger:list','swagger','admin','2020-12-16 21:41:40','',NULL,'系统接口菜单',0x00,0),(500,'操作日志',108,1,'operlog','monitor/operlog/index',1,0,'C','0','0','monitor:operlog:list','form','admin','2020-12-16 21:41:40','',NULL,'操作日志菜单',0x00,0),(501,'登录日志',108,2,'logininfor','monitor/logininfor/index',1,0,'C','0','0','monitor:logininfor:list','logininfor','admin','2020-12-16 21:41:40','',NULL,'登录日志菜单',0x00,0),(1001,'用户查询',100,1,'','',1,0,'F','0','0','system:user:query','#','admin','2020-12-16 21:41:40','',NULL,'',0x00,0),(1002,'用户新增',100,2,'','',1,0,'F','0','0','system:user:add','#','admin','2020-12-16 21:41:40','',NULL,'',0x00,0),(1003,'用户修改',100,3,'','',1,0,'F','0','0','system:user:edit','#','admin','2020-12-16 21:41:40','',NULL,'',0x00,0),(1004,'用户删除',100,4,'','',1,0,'F','0','0','system:user:remove','#','admin','2020-12-16 21:41:40','',NULL,'',0x00,0),(1005,'用户导出',100,5,'','',1,0,'F','0','0','system:user:export','#','admin','2020-12-16 21:41:40','',NULL,'',0x00,0),(1006,'用户导入',100,6,'','',1,0,'F','0','0','system:user:import','#','admin','2020-12-16 21:41:40','',NULL,'',0x00,0),(1007,'重置密码',100,7,'','',1,0,'F','0','0','system:user:resetPwd','#','admin','2020-12-16 21:41:40','',NULL,'',0x00,0),(1008,'角色查询',101,1,'','',1,0,'F','0','0','system:role:query','#','admin','2020-12-16 21:41:40','',NULL,'',0x00,0),(1009,'角色新增',101,2,'','',1,0,'F','0','0','system:role:add','#','admin','2020-12-16 21:41:40','',NULL,'',0x00,0),(1010,'角色修改',101,3,'','',1,0,'F','0','0','system:role:edit','#','admin','2020-12-16 21:41:40','',NULL,'',0x00,0),(1011,'角色删除',101,4,'','',1,0,'F','0','0','system:role:remove','#','admin','2020-12-16 21:41:40','',NULL,'',0x00,0),(1012,'角色导出',101,5,'','',1,0,'F','0','0','system:role:export','#','admin','2020-12-16 21:41:40','',NULL,'',0x00,0),(1013,'菜单查询',102,1,'','',1,0,'F','0','0','system:menu:query','#','admin','2020-12-16 21:41:40','',NULL,'',0x00,0),(1014,'菜单新增',102,2,'','',1,0,'F','0','0','system:menu:add','#','admin','2020-12-16 21:41:40','',NULL,'',0x00,0),(1015,'菜单修改',102,3,'','',1,0,'F','0','0','system:menu:edit','#','admin','2020-12-16 21:41:40','',NULL,'',0x00,0),(1016,'菜单删除',102,4,'','',1,0,'F','0','0','system:menu:remove','#','admin','2020-12-16 21:41:40','',NULL,'',0x00,0),(1017,'部门查询',103,1,'','',1,0,'F','0','0','system:dept:query','#','admin','2020-12-16 21:41:40','',NULL,'',0x00,0),(1018,'部门新增',103,2,'','',1,0,'F','0','0','system:dept:add','#','admin','2020-12-16 21:41:40','',NULL,'',0x00,0),(1019,'部门修改',103,3,'','',1,0,'F','0','0','system:dept:edit','#','admin','2020-12-16 21:41:40','',NULL,'',0x00,0),(1020,'部门删除',103,4,'','',1,0,'F','0','0','system:dept:remove','#','admin','2020-12-16 21:41:40','',NULL,'',0x00,0),(1021,'岗位查询',104,1,'','',1,0,'F','0','0','system:post:query','#','admin','2020-12-16 21:41:40','',NULL,'',0x00,0),(1022,'岗位新增',104,2,'','',1,0,'F','0','0','system:post:add','#','admin','2020-12-16 21:41:40','',NULL,'',0x00,0),(1023,'岗位修改',104,3,'','',1,0,'F','0','0','system:post:edit','#','admin','2020-12-16 21:41:40','',NULL,'',0x00,0),(1024,'岗位删除',104,4,'','',1,0,'F','0','0','system:post:remove','#','admin','2020-12-16 21:41:40','',NULL,'',0x00,0),(1025,'岗位导出',104,5,'','',1,0,'F','0','0','system:post:export','#','admin','2020-12-16 21:41:40','',NULL,'',0x00,0),(1026,'字典查询',105,1,'#','',1,0,'F','0','0','system:dict:query','#','admin','2020-12-16 21:41:40','',NULL,'',0x00,0),(1027,'字典新增',105,2,'#','',1,0,'F','0','0','system:dict:add','#','admin','2020-12-16 21:41:40','',NULL,'',0x00,0),(1028,'字典修改',105,3,'#','',1,0,'F','0','0','system:dict:edit','#','admin','2020-12-16 21:41:40','',NULL,'',0x00,0),(1029,'字典删除',105,4,'#','',1,0,'F','0','0','system:dict:remove','#','admin','2020-12-16 21:41:40','',NULL,'',0x00,0),(1030,'字典导出',105,5,'#','',1,0,'F','0','0','system:dict:export','#','admin','2020-12-16 21:41:40','',NULL,'',0x00,0),(1031,'参数查询',106,1,'#','',1,0,'F','0','0','system:config:query','#','admin','2020-12-16 21:41:40','',NULL,'',0x00,0),(1032,'参数新增',106,2,'#','',1,0,'F','0','0','system:config:add','#','admin','2020-12-16 21:41:40','',NULL,'',0x00,0),(1033,'参数修改',106,3,'#','',1,0,'F','0','0','system:config:edit','#','admin','2020-12-16 21:41:40','',NULL,'',0x00,0),(1034,'参数删除',106,4,'#','',1,0,'F','0','0','system:config:remove','#','admin','2020-12-16 21:41:40','',NULL,'',0x00,0),(1035,'参数导出',106,5,'#','',1,0,'F','0','0','system:config:export','#','admin','2020-12-16 21:41:40','',NULL,'',0x00,0),(1036,'公告查询',107,1,'#','',1,0,'F','0','0','system:notice:query','#','admin','2020-12-16 21:41:40','',NULL,'',0x00,0),(1037,'公告新增',107,2,'#','',1,0,'F','0','0','system:notice:add','#','admin','2020-12-16 21:41:40','',NULL,'',0x00,0),(1038,'公告修改',107,3,'#','',1,0,'F','0','0','system:notice:edit','#','admin','2020-12-16 21:41:40','',NULL,'',0x00,0),(1039,'公告删除',107,4,'#','',1,0,'F','0','0','system:notice:remove','#','admin','2020-12-16 21:41:40','',NULL,'',0x00,0),(1040,'操作查询',500,1,'#','',1,0,'F','0','0','monitor:operlog:query','#','admin','2020-12-16 21:41:40','',NULL,'',0x00,0),(1041,'操作删除',500,2,'#','',1,0,'F','0','0','monitor:operlog:remove','#','admin','2020-12-16 21:41:40','',NULL,'',0x00,0),(1042,'日志导出',500,4,'#','',1,0,'F','0','0','monitor:operlog:export','#','admin','2020-12-16 21:41:40','',NULL,'',0x00,0),(1043,'登录查询',501,1,'#','',1,0,'F','0','0','monitor:logininfor:query','#','admin','2020-12-16 21:41:40','',NULL,'',0x00,0),(1044,'登录删除',501,2,'#','',1,0,'F','0','0','monitor:logininfor:remove','#','admin','2020-12-16 21:41:40','',NULL,'',0x00,0),(1045,'日志导出',501,3,'#','',1,0,'F','0','0','monitor:logininfor:export','#','admin','2020-12-16 21:41:40','',NULL,'',0x00,0),(1046,'在线查询',109,1,'#','',1,0,'F','0','0','monitor:online:query','#','admin','2020-12-16 21:41:40','',NULL,'',0x00,0),(1047,'批量强退',109,2,'#','',1,0,'F','0','0','monitor:online:batchLogout','#','admin','2020-12-16 21:41:40','',NULL,'',0x00,0),(1048,'单条强退',109,3,'#','',1,0,'F','0','0','monitor:online:forceLogout','#','admin','2020-12-16 21:41:40','',NULL,'',0x00,0),(1049,'任务查询',110,1,'#','',1,0,'F','0','0','monitor:job:query','#','admin','2020-12-16 21:41:40','',NULL,'',0x00,0),(1050,'任务新增',110,2,'#','',1,0,'F','0','0','monitor:job:add','#','admin','2020-12-16 21:41:40','',NULL,'',0x00,0),(1051,'任务修改',110,3,'#','',1,0,'F','0','0','monitor:job:edit','#','admin','2020-12-16 21:41:40','',NULL,'',0x00,0),(1052,'任务删除',110,4,'#','',1,0,'F','0','0','monitor:job:remove','#','admin','2020-12-16 21:41:40','',NULL,'',0x00,0),(1053,'状态修改',110,5,'#','',1,0,'F','0','0','monitor:job:changeStatus','#','admin','2020-12-16 21:41:40','',NULL,'',0x00,0),(1054,'任务导出',110,7,'#','',1,0,'F','0','0','monitor:job:export','#','admin','2020-12-16 21:41:40','',NULL,'',0x00,0),(1055,'生成查询',115,1,'#','',1,0,'F','0','0','tool:gen:query','#','admin','2020-12-16 21:41:40','',NULL,'',0x00,0),(1056,'生成修改',115,2,'#','',1,0,'F','0','0','tool:gen:edit','#','admin','2020-12-16 21:41:40','',NULL,'',0x00,0),(1057,'生成删除',115,3,'#','',1,0,'F','0','0','tool:gen:remove','#','admin','2020-12-16 21:41:40','',NULL,'',0x00,0),(1058,'导入代码',115,2,'#','',1,0,'F','0','0','tool:gen:import','#','admin','2020-12-16 21:41:40','',NULL,'',0x00,0),(1059,'预览代码',115,4,'#','',1,0,'F','0','0','tool:gen:preview','#','admin','2020-12-16 21:41:40','',NULL,'',0x00,0),(1060,'生成代码',115,5,'#','',1,0,'F','0','0','tool:gen:code','#','admin','2020-12-16 21:41:40','',NULL,'',0x00,0);
/*!40000 ALTER TABLE `sys_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_notice`
--

DROP TABLE IF EXISTS `sys_notice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_notice` (
  `notice_id` bigint(64) NOT NULL AUTO_INCREMENT COMMENT '公告ID',
  `notice_title` varchar(50) NOT NULL COMMENT '公告标题',
  `notice_type` char(1) NOT NULL COMMENT '公告类型（1通知 2公告）',
  `notice_content` longblob COMMENT '公告内容',
  `status` char(1) DEFAULT '0' COMMENT '公告状态（0正常 1关闭）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `gmt_create` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `gmt_update` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  `deleted` bit(1) DEFAULT b'0' COMMENT '逻辑删除（0:未删除；1:已删除）',
  `version` int(11) DEFAULT '0' COMMENT '乐观锁',
  PRIMARY KEY (`notice_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='通知公告表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_notice`
--

LOCK TABLES `sys_notice` WRITE;
/*!40000 ALTER TABLE `sys_notice` DISABLE KEYS */;
INSERT INTO `sys_notice` VALUES (1,'温馨提醒：2018-07-01 若依新版本发布啦','2',0xE696B0E78988E69CACE58685E5AEB9,'0','admin','2020-12-16 21:41:41','',NULL,'管理员',0x00,0),(2,'维护通知：2018-07-01 若依系统凌晨维护','1',0xE7BBB4E68AA4E58685E5AEB9,'0','admin','2020-12-16 21:41:41','',NULL,'管理员',0x00,0);
/*!40000 ALTER TABLE `sys_notice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_oper_log`
--

DROP TABLE IF EXISTS `sys_oper_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_oper_log` (
  `oper_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '日志主键',
  `title` varchar(50) DEFAULT '' COMMENT '模块标题',
  `business_type` int(2) DEFAULT '0' COMMENT '业务类型（0其它 1新增 2修改 3删除）',
  `method` varchar(100) DEFAULT '' COMMENT '方法名称',
  `request_method` varchar(10) DEFAULT '' COMMENT '请求方式',
  `operator_type` int(1) DEFAULT '0' COMMENT '操作类别（0其它 1后台用户 2手机端用户）',
  `oper_name` varchar(50) DEFAULT '' COMMENT '操作人员',
  `dept_name` varchar(50) DEFAULT '' COMMENT '部门名称',
  `oper_url` varchar(255) DEFAULT '' COMMENT '请求URL',
  `oper_ip` varchar(50) DEFAULT '' COMMENT '主机地址',
  `oper_location` varchar(255) DEFAULT '' COMMENT '操作地点',
  `oper_param` varchar(2000) DEFAULT '' COMMENT '请求参数',
  `json_result` varchar(2000) DEFAULT '' COMMENT '返回参数',
  `status` int(1) DEFAULT '0' COMMENT '操作状态（0正常 1异常）',
  `error_msg` varchar(2000) DEFAULT '' COMMENT '错误消息',
  `oper_time` datetime DEFAULT NULL COMMENT '操作时间',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `gmt_create` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `gmt_update` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  `deleted` bit(1) DEFAULT b'0' COMMENT '逻辑删除（0:未删除；1:已删除）',
  `version` int(11) DEFAULT '0' COMMENT '乐观锁',
  PRIMARY KEY (`oper_id`)
) ENGINE=InnoDB AUTO_INCREMENT=194 DEFAULT CHARSET=utf8 COMMENT='操作日志记录';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_oper_log`
--

LOCK TABLES `sys_oper_log` WRITE;
/*!40000 ALTER TABLE `sys_oper_log` DISABLE KEYS */;
INSERT INTO `sys_oper_log` VALUES (101,'参数管理',1,'com.ruoyi.web.controller.system.SysConfigController.add()','POST',1,'admin',NULL,'/system/config','127.0.0.1','内网IP','{\"configName\":\"1\",\"configKey\":\"1\",\"configType\":\"Y\",\"configValue\":\"1\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2020-12-17 10:53:33','',NULL,'',NULL,NULL,0x00,0),(102,'参数管理',3,'com.ruoyi.web.controller.system.SysConfigController.remove()','DELETE',1,'admin',NULL,'/system/config/100','127.0.0.1','内网IP','{configIds=100}','null',1,'','2020-12-17 10:53:39','',NULL,'',NULL,NULL,0x00,0),(103,'参数管理',3,'com.ruoyi.web.controller.system.SysConfigController.remove()','DELETE',1,'admin',NULL,'/system/config/100','127.0.0.1','内网IP','{configIds=100}','null',1,'','2020-12-17 10:54:06','',NULL,'',NULL,NULL,0x00,0),(104,'参数管理',3,'com.ruoyi.web.controller.system.SysConfigController.remove()','DELETE',1,'admin',NULL,'/system/config/100','127.0.0.1','内网IP','{configIds=100}','null',1,'','2020-12-17 10:54:32','',NULL,'',NULL,NULL,0x00,0),(105,'参数管理',3,'com.ruoyi.web.controller.system.SysConfigController.remove()','DELETE',1,'admin',NULL,'/system/config/100','127.0.0.1','内网IP','{configIds=100}','null',1,'','2020-12-17 10:54:48','',NULL,'',NULL,NULL,0x00,0),(106,'参数管理',3,'com.ruoyi.web.controller.system.SysConfigController.remove()','DELETE',1,'admin',NULL,'/system/config/100','127.0.0.1','内网IP','{configIds=100}','null',1,'','2020-12-17 10:58:10','',NULL,'',NULL,NULL,0x00,0),(107,'参数管理',3,'com.ruoyi.web.controller.system.SysConfigController.remove()','DELETE',1,'admin',NULL,'/system/config/100','127.0.0.1','内网IP','{configIds=100}','null',1,'','2020-12-17 10:59:43','',NULL,'',NULL,NULL,0x00,0),(108,'参数管理',3,'com.ruoyi.web.controller.system.SysConfigController.remove()','DELETE',1,'admin',NULL,'/system/config/100','127.0.0.1','内网IP','{configIds=100}','null',1,'','2020-12-17 11:01:56','',NULL,'',NULL,NULL,0x00,0),(109,'参数管理',3,'com.ruoyi.web.controller.system.SysConfigController.remove()','DELETE',1,'admin',NULL,'/system/config/100','127.0.0.1','内网IP','{configIds=100}','null',1,'','2020-12-17 11:02:39','',NULL,'',NULL,NULL,0x00,0),(110,'参数管理',3,'com.ruoyi.web.controller.system.SysConfigController.remove()','DELETE',1,'admin',NULL,'/system/config/100','127.0.0.1','内网IP','{configIds=100}','null',1,'','2020-12-17 11:03:51','',NULL,'',NULL,NULL,0x00,0),(111,'参数管理',3,'com.ruoyi.web.controller.system.SysConfigController.remove()','DELETE',1,'admin',NULL,'/system/config/100','127.0.0.1','内网IP','{configIds=100}','null',1,'','2020-12-17 11:07:49','',NULL,'',NULL,NULL,0x00,0),(112,'参数管理',3,'com.ruoyi.web.controller.system.SysConfigController.remove()','DELETE',1,'admin',NULL,'/system/config/100','127.0.0.1','内网IP','{configIds=100}','null',1,'','2020-12-17 11:10:05','',NULL,'',NULL,NULL,0x00,0),(113,'参数管理',3,'com.ruoyi.web.controller.system.SysConfigController.remove()','DELETE',1,'admin',NULL,'/system/config/100','127.0.0.1','内网IP','{configIds=100}','null',1,'','2020-12-17 11:11:58','',NULL,'',NULL,NULL,0x00,0),(114,'参数管理',3,'com.ruoyi.web.controller.system.SysConfigController.remove()','DELETE',1,'admin',NULL,'/system/config/100','127.0.0.1','内网IP','{configIds=100}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2020-12-17 11:21:30','',NULL,'',NULL,NULL,0x00,0),(115,'参数管理',1,'com.ruoyi.web.controller.system.SysConfigController.add()','POST',1,'admin',NULL,'/system/config','127.0.0.1','内网IP','{\"configName\":\"1\",\"configKey\":\"1\",\"configId\":1339411674847596545,\"remark\":\"111111\",\"configType\":\"N\",\"configValue\":\"1\",\"params\":{}}','null',1,'\n### Error updating database.  Cause: com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Out of range value for column \'config_id\' at row 1\n### The error may exist in com/ruoyi/system/mapper/SysConfigMapper.java (best guess)\n### The error may involve com.ruoyi.system.mapper.SysConfigMapper.insert-Inline\n### The error occurred while setting parameters\n### SQL: INSERT INTO sys_config  ( config_id, config_name, config_key, config_value, config_type,     remark )  VALUES  ( ?, ?, ?, ?, ?,     ? )\n### Cause: com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Out of range value for column \'config_id\' at row 1\n; Data truncation: Out of range value for column \'config_id\' at row 1; nested exception is com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Out of range value for column \'config_id\' at row 1','2020-12-17 11:26:43','',NULL,'',NULL,NULL,0x00,0),(116,'参数管理',1,'com.ruoyi.web.controller.system.SysConfigController.add()','POST',1,'admin',NULL,'/system/config','127.0.0.1','内网IP','{\"configName\":\"1\",\"configKey\":\"1\",\"configId\":1339411761648717826,\"remark\":\"1\",\"configType\":\"N\",\"configValue\":\"1\",\"params\":{}}','null',1,'\n### Error updating database.  Cause: com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Out of range value for column \'config_id\' at row 1\n### The error may exist in com/ruoyi/system/mapper/SysConfigMapper.java (best guess)\n### The error may involve com.ruoyi.system.mapper.SysConfigMapper.insert-Inline\n### The error occurred while setting parameters\n### SQL: INSERT INTO sys_config  ( config_id, config_name, config_key, config_value, config_type,     remark )  VALUES  ( ?, ?, ?, ?, ?,     ? )\n### Cause: com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Out of range value for column \'config_id\' at row 1\n; Data truncation: Out of range value for column \'config_id\' at row 1; nested exception is com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Out of range value for column \'config_id\' at row 1','2020-12-17 11:27:03','',NULL,'',NULL,NULL,0x00,0),(117,'参数管理',1,'com.ruoyi.web.controller.system.SysConfigController.add()','POST',1,'admin',NULL,'/system/config','127.0.0.1','内网IP','{\"configName\":\"1\",\"configKey\":\"1\",\"configId\":1339412282484793345,\"remark\":\"1\",\"configType\":\"N\",\"configValue\":\"1\",\"params\":{}}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2020-12-17 11:29:07','',NULL,'',NULL,NULL,0x00,0),(118,'参数管理',3,'com.ruoyi.web.controller.system.SysConfigController.remove()','DELETE',1,'admin',NULL,'/system/config/1339412282484793300','127.0.0.1','内网IP','{configIds=1339412282484793300}','null',1,'','2020-12-17 11:29:19','',NULL,'',NULL,NULL,0x00,0),(119,'参数管理',3,'com.ruoyi.web.controller.system.SysConfigController.remove()','DELETE',1,'admin',NULL,'/system/config/1339412282484793300','127.0.0.1','内网IP','{configIds=1339412282484793300}','null',1,'','2020-12-17 11:29:28','',NULL,'',NULL,NULL,0x00,0),(120,'参数管理',3,'com.ruoyi.web.controller.system.SysConfigController.remove()','DELETE',1,'admin',NULL,'/system/config/1339412282484793345','127.0.0.1','内网IP','{configIds=1339412282484793345}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2020-12-17 12:49:50','',NULL,'',NULL,NULL,0x00,0),(121,'参数管理',1,'com.ruoyi.web.controller.system.SysConfigController.add()','POST',1,'admin',NULL,'/system/config','127.0.0.1','内网IP','{\"configName\":\"1\",\"configKey\":\"1\",\"configId\":1339432628818636802,\"remark\":\"1\",\"configType\":\"N\",\"configValue\":\"1\",\"params\":{}}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2020-12-17 12:49:58','',NULL,'',NULL,NULL,0x00,0),(122,'参数管理',3,'com.ruoyi.web.controller.system.SysConfigController.remove()','DELETE',1,'admin',NULL,'/system/config/1339432628818636802','127.0.0.1','内网IP','{configIds=1339432628818636802}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2020-12-17 12:50:03','',NULL,'',NULL,NULL,0x00,0),(123,'参数管理',5,'com.ruoyi.web.controller.system.SysConfigController.export()','GET',1,'admin',NULL,'/system/config/export','127.0.0.1','内网IP','{}','{\"msg\":\"b5bd73f7-b71e-4f64-b442-e329ea4f566e_参数数据.xlsx\",\"code\":200}',0,NULL,'2020-12-17 12:50:18','',NULL,'',NULL,NULL,0x00,0),(124,'参数管理',9,'com.ruoyi.web.controller.system.SysConfigController.clearCache()','DELETE',1,'admin',NULL,'/system/config/clearCache','127.0.0.1','内网IP','{}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2020-12-17 15:09:00','',NULL,'',NULL,NULL,0x00,0),(125,'参数管理',9,'com.ruoyi.web.controller.system.SysConfigController.clearCache()','DELETE',1,'admin',NULL,'/system/config/clearCache','127.0.0.1','内网IP','{}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2020-12-17 15:09:02','',NULL,'',NULL,NULL,0x00,0),(126,'参数管理',9,'com.ruoyi.web.controller.system.SysConfigController.clearCache()','DELETE',1,'admin',NULL,'/system/config/clearCache','127.0.0.1','内网IP','{}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2020-12-17 15:09:02','',NULL,'',NULL,NULL,0x00,0),(127,'参数管理',9,'com.ruoyi.web.controller.system.SysConfigController.clearCache()','DELETE',1,'admin',NULL,'/system/config/clearCache','127.0.0.1','内网IP','{}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2020-12-17 15:09:02','',NULL,'',NULL,NULL,0x00,0),(128,'参数管理',9,'com.ruoyi.web.controller.system.SysConfigController.clearCache()','DELETE',1,'admin',NULL,'/system/config/clearCache','127.0.0.1','内网IP','{}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2020-12-17 15:09:03','',NULL,'',NULL,NULL,0x00,0),(129,'参数管理',9,'com.ruoyi.web.controller.system.SysConfigController.clearCache()','DELETE',1,'admin',NULL,'/system/config/clearCache','127.0.0.1','内网IP','{}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2020-12-17 15:09:03','',NULL,'',NULL,NULL,0x00,0),(130,'参数管理',9,'com.ruoyi.web.controller.system.SysConfigController.clearCache()','DELETE',1,'admin',NULL,'/system/config/clearCache','127.0.0.1','内网IP','{}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2020-12-17 15:09:03','',NULL,'',NULL,NULL,0x00,0),(131,'参数管理',9,'com.ruoyi.web.controller.system.SysConfigController.clearCache()','DELETE',1,'admin',NULL,'/system/config/clearCache','127.0.0.1','内网IP','{}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2020-12-17 15:09:03','',NULL,'',NULL,NULL,0x00,0),(132,'参数管理',9,'com.ruoyi.web.controller.system.SysConfigController.clearCache()','DELETE',1,'admin',NULL,'/system/config/clearCache','127.0.0.1','内网IP','{}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2020-12-17 15:09:03','',NULL,'',NULL,NULL,0x00,0),(133,'参数管理',9,'com.ruoyi.web.controller.system.SysConfigController.clearCache()','DELETE',1,'admin',NULL,'/system/config/clearCache','127.0.0.1','内网IP','{}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2020-12-17 15:09:04','',NULL,'',NULL,NULL,0x00,0),(134,'参数管理',9,'com.ruoyi.web.controller.system.SysConfigController.clearCache()','DELETE',1,'admin',NULL,'/system/config/clearCache','127.0.0.1','内网IP','{}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2020-12-17 15:09:04','',NULL,'',NULL,NULL,0x00,0),(135,'参数管理',9,'com.ruoyi.web.controller.system.SysConfigController.clearCache()','DELETE',1,'admin',NULL,'/system/config/clearCache','127.0.0.1','内网IP','{}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2020-12-17 15:09:04','',NULL,'',NULL,NULL,0x00,0),(136,'参数管理',9,'com.ruoyi.web.controller.system.SysConfigController.clearCache()','DELETE',1,'admin',NULL,'/system/config/clearCache','127.0.0.1','内网IP','{}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2020-12-17 15:09:04','',NULL,'',NULL,NULL,0x00,0),(137,'参数管理',9,'com.ruoyi.web.controller.system.SysConfigController.clearCache()','DELETE',1,'admin',NULL,'/system/config/clearCache','127.0.0.1','内网IP','{}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2020-12-17 15:09:04','',NULL,'',NULL,NULL,0x00,0),(138,'参数管理',9,'com.ruoyi.web.controller.system.SysConfigController.clearCache()','DELETE',1,'admin',NULL,'/system/config/clearCache','127.0.0.1','内网IP','{}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2020-12-17 15:09:04','',NULL,'',NULL,NULL,0x00,0),(139,'参数管理',9,'com.ruoyi.web.controller.system.SysConfigController.clearCache()','DELETE',1,'admin',NULL,'/system/config/clearCache','127.0.0.1','内网IP','{}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2020-12-17 15:09:04','',NULL,'',NULL,NULL,0x00,0),(140,'参数管理',9,'com.ruoyi.web.controller.system.SysConfigController.clearCache()','DELETE',1,'admin',NULL,'/system/config/clearCache','127.0.0.1','内网IP','{}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2020-12-17 15:09:05','',NULL,'',NULL,NULL,0x00,0),(141,'参数管理',9,'com.ruoyi.web.controller.system.SysConfigController.clearCache()','DELETE',1,'admin',NULL,'/system/config/clearCache','127.0.0.1','内网IP','{}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2020-12-17 15:09:05','',NULL,'',NULL,NULL,0x00,0),(142,'参数管理',9,'com.ruoyi.web.controller.system.SysConfigController.clearCache()','DELETE',1,'admin',NULL,'/system/config/clearCache','127.0.0.1','内网IP','{}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2020-12-17 15:09:05','',NULL,'',NULL,NULL,0x00,0),(143,'参数管理',9,'com.ruoyi.web.controller.system.SysConfigController.clearCache()','DELETE',1,'admin',NULL,'/system/config/clearCache','127.0.0.1','内网IP','{}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2020-12-17 15:09:05','',NULL,'',NULL,NULL,0x00,0),(144,'参数管理',5,'com.ruoyi.web.controller.system.SysConfigController.export()','GET',1,'admin',NULL,'/system/config/export','127.0.0.1','内网IP','{}','{\"msg\":\"86056e6a-75e7-40dc-9d0f-d9cbc81076fa_参数数据.xlsx\",\"code\":200}',0,NULL,'2020-12-17 15:10:01','',NULL,'',NULL,NULL,0x00,0),(145,'登录日志',5,'com.ruoyi.web.controller.monitor.SysLogininforController.export()','GET',1,'admin',NULL,'/monitor/logininfor/export','127.0.0.1','内网IP','{}','null',1,'\n### Error querying database.  Cause: java.sql.SQLSyntaxErrorException: Unknown column \'create_by\' in \'field list\'\n### The error may exist in com/ruoyi/system/mapper/SysLogininforMapper.java (best guess)\n### The error may involve defaultParameterMap\n### The error occurred while setting parameters\n### SQL: SELECT info_id,user_name,status,ipaddr,login_location,browser,os,msg,login_time,create_by,create_time,update_by,update_time,remark FROM sys_logininfor    WHERE msg = ?   AND createBy = ?   AND os = ?   AND updateBy = ?   AND browser = ?   AND remark = ?   AND ipaddr = ?   AND loginLocation = ?   AND userName = ?   AND searchValue = ?   AND status = ?\n### Cause: java.sql.SQLSyntaxErrorException: Unknown column \'create_by\' in \'field list\'\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: Unknown column \'create_by\' in \'field list\'','2020-12-17 16:44:40','',NULL,'',NULL,NULL,0x00,0),(146,'登录日志',5,'com.ruoyi.web.controller.monitor.SysLogininforController.export()','GET',1,'admin',NULL,'/monitor/logininfor/export','127.0.0.1','内网IP','{}','null',1,'\n### Error querying database.  Cause: java.sql.SQLSyntaxErrorException: Unknown column \'remark\' in \'field list\'\n### The error may exist in com/ruoyi/system/mapper/SysLogininforMapper.java (best guess)\n### The error may involve defaultParameterMap\n### The error occurred while setting parameters\n### SQL: SELECT info_id,user_name,status,ipaddr,login_location,browser,os,msg,login_time,create_by,create_time,update_by,update_time,remark FROM sys_logininfor    WHERE msg = ?   AND createBy = ?   AND os = ?   AND updateBy = ?   AND browser = ?   AND remark = ?   AND ipaddr = ?   AND loginLocation = ?   AND userName = ?   AND searchValue = ?   AND status = ?\n### Cause: java.sql.SQLSyntaxErrorException: Unknown column \'remark\' in \'field list\'\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: Unknown column \'remark\' in \'field list\'','2020-12-17 16:47:34','',NULL,'',NULL,NULL,0x00,0),(147,'登录日志',5,'com.ruoyi.web.controller.monitor.SysLogininforController.export()','GET',1,'admin',NULL,'/monitor/logininfor/export','127.0.0.1','内网IP','{}','null',1,'\n### Error querying database.  Cause: java.sql.SQLSyntaxErrorException: Unknown column \'createBy\' in \'where clause\'\n### The error may exist in com/ruoyi/system/mapper/SysLogininforMapper.java (best guess)\n### The error may involve defaultParameterMap\n### The error occurred while setting parameters\n### SQL: SELECT info_id,user_name,status,ipaddr,login_location,browser,os,msg,login_time,create_by,create_time,update_by,update_time,remark FROM sys_logininfor    WHERE msg = ?   AND createBy = ?   AND os = ?   AND updateBy = ?   AND browser = ?   AND remark = ?   AND ipaddr = ?   AND loginLocation = ?   AND userName = ?   AND searchValue = ?   AND status = ?\n### Cause: java.sql.SQLSyntaxErrorException: Unknown column \'createBy\' in \'where clause\'\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: Unknown column \'createBy\' in \'where clause\'','2020-12-17 16:48:41','',NULL,'',NULL,NULL,0x00,0),(148,'登录日志',5,'com.ruoyi.web.controller.monitor.SysLogininforController.export()','GET',1,'admin',NULL,'/monitor/logininfor/export','127.0.0.1','内网IP','{}','null',1,'\n### Error querying database.  Cause: java.sql.SQLSyntaxErrorException: Unknown column \'createBy\' in \'where clause\'\n### The error may exist in com/ruoyi/system/mapper/SysLogininforMapper.java (best guess)\n### The error may involve defaultParameterMap\n### The error occurred while setting parameters\n### SQL: SELECT info_id,user_name,status,ipaddr,login_location,browser,os,msg,login_time,create_by,create_time,update_by,update_time,remark FROM sys_logininfor    WHERE msg = ?   AND createBy = ?   AND os = ?   AND updateBy = ?   AND browser = ?   AND remark = ?   AND ipaddr = ?   AND loginLocation = ?   AND userName = ?   AND searchValue = ?   AND status = ?\n### Cause: java.sql.SQLSyntaxErrorException: Unknown column \'createBy\' in \'where clause\'\n; bad SQL grammar []; nested exception is java.sql.SQLSyntaxErrorException: Unknown column \'createBy\' in \'where clause\'','2020-12-17 16:51:55','',NULL,'',NULL,NULL,0x00,0),(149,'操作日志',5,'com.ruoyi.web.controller.monitor.SysOperlogController.export()','GET',1,'admin',NULL,'/monitor/operlog/export','127.0.0.1','内网IP','{}','{\"msg\":\"ff49f2cb-3a2f-4aca-9fa5-933265172d2e_操作日志.xlsx\",\"code\":200}',0,NULL,'2020-12-17 17:45:59','',NULL,'',NULL,NULL,0x00,0),(150,'通知公告',1,'com.ruoyi.web.controller.system.SysNoticeController.add()','POST',1,'admin',NULL,'/system/notice','127.0.0.1','内网IP','{\"noticeContent\":\"<p>3213123123123123</p>\",\"createBy\":\"admin\",\"noticeType\":\"1\",\"noticeId\":1339510663701934082,\"noticeTitle\":\"312312312\",\"status\":\"0\"}','null',1,'\n### Error updating database.  Cause: com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Out of range value for column \'notice_id\' at row 1\n### The error may exist in com/ruoyi/system/mapper/SysNoticeMapper.java (best guess)\n### The error may involve com.ruoyi.system.mapper.SysNoticeMapper.insert-Inline\n### The error occurred while setting parameters\n### SQL: INSERT INTO sys_notice  ( notice_id, notice_title, notice_type, notice_content, status, create_by )  VALUES  ( ?, ?, ?, ?, ?, ? )\n### Cause: com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Out of range value for column \'notice_id\' at row 1\n; Data truncation: Out of range value for column \'notice_id\' at row 1; nested exception is com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Out of range value for column \'notice_id\' at row 1','2020-12-17 18:00:03','',NULL,'',NULL,NULL,0x00,0),(151,'通知公告',1,'com.ruoyi.web.controller.system.SysNoticeController.add()','POST',1,'admin',NULL,'/system/notice','127.0.0.1','内网IP','{\"noticeContent\":\"<p>3213123123123123</p>\",\"createBy\":\"admin\",\"noticeType\":\"1\",\"noticeId\":1339510681565474818,\"noticeTitle\":\"312312312\",\"status\":\"0\"}','null',1,'\n### Error updating database.  Cause: com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Out of range value for column \'notice_id\' at row 1\n### The error may exist in com/ruoyi/system/mapper/SysNoticeMapper.java (best guess)\n### The error may involve com.ruoyi.system.mapper.SysNoticeMapper.insert-Inline\n### The error occurred while setting parameters\n### SQL: INSERT INTO sys_notice  ( notice_id, notice_title, notice_type, notice_content, status, create_by )  VALUES  ( ?, ?, ?, ?, ?, ? )\n### Cause: com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Out of range value for column \'notice_id\' at row 1\n; Data truncation: Out of range value for column \'notice_id\' at row 1; nested exception is com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Out of range value for column \'notice_id\' at row 1','2020-12-17 18:00:08','',NULL,'',NULL,NULL,0x00,0),(152,'通知公告',1,'com.ruoyi.web.controller.system.SysNoticeController.add()','POST',1,'admin',NULL,'/system/notice','127.0.0.1','内网IP','{\"noticeContent\":\"<p>3213123123123123</p>\",\"createBy\":\"admin\",\"noticeType\":\"1\",\"noticeId\":1339510698179112961,\"noticeTitle\":\"312312312\",\"status\":\"0\"}','null',1,'\n### Error updating database.  Cause: com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Out of range value for column \'notice_id\' at row 1\n### The error may exist in com/ruoyi/system/mapper/SysNoticeMapper.java (best guess)\n### The error may involve com.ruoyi.system.mapper.SysNoticeMapper.insert-Inline\n### The error occurred while setting parameters\n### SQL: INSERT INTO sys_notice  ( notice_id, notice_title, notice_type, notice_content, status, create_by )  VALUES  ( ?, ?, ?, ?, ?, ? )\n### Cause: com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Out of range value for column \'notice_id\' at row 1\n; Data truncation: Out of range value for column \'notice_id\' at row 1; nested exception is com.mysql.cj.jdbc.exceptions.MysqlDataTruncation: Data truncation: Out of range value for column \'notice_id\' at row 1','2020-12-17 18:00:12','',NULL,'',NULL,NULL,0x00,0),(153,'通知公告',1,'com.ruoyi.web.controller.system.SysNoticeController.add()','POST',1,'admin',NULL,'/system/notice','127.0.0.1','内网IP','{\"noticeContent\":\"<p>3213123123123123</p>\",\"createBy\":\"admin\",\"noticeType\":\"1\",\"noticeId\":1339510780278419457,\"noticeTitle\":\"312312312\",\"status\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2020-12-17 18:00:31','',NULL,'',NULL,NULL,0x00,0),(154,'通知公告',3,'com.ruoyi.web.controller.system.SysNoticeController.remove()','DELETE',1,'admin',NULL,'/system/notice/1339510780278419457','127.0.0.1','内网IP','{noticeIds=1339510780278419457}','{\"msg\":\"操作失败\",\"code\":500}',0,NULL,'2020-12-17 18:02:02','',NULL,'',NULL,NULL,0x00,0),(155,'通知公告',3,'com.ruoyi.web.controller.system.SysNoticeController.remove()','DELETE',1,'admin',NULL,'/system/notice/1339510780278419457','127.0.0.1','内网IP','{noticeIds=1339510780278419457}','{\"msg\":\"操作失败\",\"code\":500}',0,NULL,'2020-12-17 18:02:10','',NULL,'',NULL,NULL,0x00,0),(156,'通知公告',1,'com.ruoyi.web.controller.system.SysNoticeController.add()','POST',1,'admin',NULL,'/system/notice','127.0.0.1','内网IP','{\"noticeContent\":\"<p>1111111</p>\",\"createBy\":\"admin\",\"noticeType\":\"1\",\"noticeId\":1339511347897774082,\"noticeTitle\":\"132132132\",\"status\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2020-12-17 18:02:46','',NULL,'',NULL,NULL,0x00,0),(157,'通知公告',3,'com.ruoyi.web.controller.system.SysNoticeController.remove()','DELETE',1,'admin',NULL,'/system/notice/1339511347897774082','127.0.0.1','内网IP','{noticeIds=1339511347897774082}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2020-12-17 18:02:54','',NULL,'',NULL,NULL,0x00,0),(158,'用户管理',1,'com.ruoyi.web.controller.system.SysUserController.add()','POST',1,'admin',NULL,'/system/user','127.0.0.1','内网IP','{\"phonenumber\":\"13111112222\",\"admin\":false,\"postIds\":[],\"nickName\":\"1\",\"deptId\":100,\"userName\":\"111\",\"createBy\":\"admin\",\"roleIds\":[],\"status\":\"0\"}','null',1,'rawPassword cannot be null','2020-12-17 21:32:39','',NULL,'',NULL,NULL,0x00,0),(159,'用户管理',1,'com.ruoyi.web.controller.system.SysUserController.add()','POST',1,'admin',NULL,'/system/user','127.0.0.1','内网IP','{\"phonenumber\":\"13111112222\",\"admin\":false,\"postIds\":[],\"nickName\":\"1\",\"deptId\":100,\"userName\":\"111\",\"createBy\":\"admin\",\"roleIds\":[],\"status\":\"0\"}','null',1,'rawPassword cannot be null','2020-12-17 21:32:43','',NULL,'',NULL,NULL,0x00,0),(160,'用户管理',1,'com.ruoyi.web.controller.system.SysUserController.add()','POST',1,'admin',NULL,'/system/user','127.0.0.1','内网IP','{\"phonenumber\":\"13111112222\",\"admin\":false,\"postIds\":[],\"nickName\":\"1\",\"deptId\":100,\"userName\":\"111\",\"createBy\":\"admin\",\"roleIds\":[],\"status\":\"0\"}','null',1,'rawPassword cannot be null','2020-12-17 21:32:46','',NULL,'',NULL,NULL,0x00,0),(161,'用户管理',1,'com.ruoyi.web.controller.system.SysUserController.add()','POST',1,'admin',NULL,'/system/user','127.0.0.1','内网IP','{\"phonenumber\":\"13111112222\",\"admin\":false,\"postIds\":[],\"nickName\":\"1\",\"deptId\":100,\"userName\":\"111\",\"createBy\":\"admin\",\"roleIds\":[],\"status\":\"0\"}','null',1,'rawPassword cannot be null','2020-12-17 21:33:28','',NULL,'',NULL,NULL,0x00,0),(162,'用户管理',1,'com.ruoyi.web.controller.system.SysUserController.add()','POST',1,'admin',NULL,'/system/user','127.0.0.1','内网IP','{\"admin\":false,\"postIds\":[],\"nickName\":\"111\",\"userName\":\"111\",\"createBy\":\"admin\",\"roleIds\":[],\"status\":\"0\"}','null',1,'rawPassword cannot be null','2020-12-17 21:34:51','',NULL,'',NULL,NULL,0x00,0),(163,'用户管理',1,'com.ruoyi.web.controller.system.SysUserController.add()','POST',1,'admin',NULL,'/system/user','127.0.0.1','内网IP','{\"admin\":false,\"postIds\":[],\"nickName\":\"111\",\"userName\":\"111\",\"createBy\":\"admin\",\"roleIds\":[],\"status\":\"0\"}','null',1,'rawPassword cannot be null','2020-12-17 21:34:55','',NULL,'',NULL,NULL,0x00,0),(164,'用户管理',1,'com.ruoyi.web.controller.system.SysUserController.add()','POST',1,'admin',NULL,'/system/user','127.0.0.1','内网IP','{\"admin\":false,\"password\":\"$2a$10$ERItYJS7M72Vmj7iERA7zebQRm6u7A0O3Z28ztgVUPLks6pmG7XyS\",\"postIds\":[],\"nickName\":\"111\",\"userName\":\"111\",\"userId\":1339565307824283650,\"createBy\":\"admin\",\"roleIds\":[],\"status\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2020-12-17 21:37:12','',NULL,'',NULL,NULL,0x00,0),(165,'用户管理',3,'com.ruoyi.web.controller.system.SysUserController.remove()','DELETE',1,'admin',NULL,'/system/user/1339565307824283650','127.0.0.1','内网IP','{userIds=1339565307824283650}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2020-12-17 21:37:55','',NULL,'',NULL,NULL,0x00,0),(166,'用户管理',2,'com.ruoyi.web.controller.system.SysUserController.changeStatus()','PUT',1,'admin',NULL,'/system/user/changeStatus','127.0.0.1','内网IP','{\"admin\":false,\"updateBy\":\"admin\",\"userId\":2,\"status\":\"1\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2020-12-17 21:38:01','',NULL,'',NULL,NULL,0x00,0),(167,'用户管理',2,'com.ruoyi.web.controller.system.SysUserController.changeStatus()','PUT',1,'admin',NULL,'/system/user/changeStatus','127.0.0.1','内网IP','{\"admin\":false,\"updateBy\":\"admin\",\"userId\":2,\"status\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2020-12-17 21:38:04','',NULL,'',NULL,NULL,0x00,0),(168,'用户管理',1,'com.ruoyi.web.controller.system.SysUserController.add()','POST',1,'admin',NULL,'/system/user','127.0.0.1','内网IP','{\"admin\":false,\"password\":\"$2a$10$/hEeBQFg.ex1htGoe92Nq.7Cs5Ul7BL.Cbzr0qTrDV3QqYd5UdUhS\",\"postIds\":[],\"nickName\":\"111\",\"userName\":\"111\",\"userId\":1339565755406872577,\"createBy\":\"admin\",\"roleIds\":[],\"status\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2020-12-17 21:38:58','',NULL,'',NULL,NULL,0x00,0),(169,'用户管理',3,'com.ruoyi.web.controller.system.SysUserController.remove()','DELETE',1,'admin',NULL,'/system/user/1339565755406872577','127.0.0.1','内网IP','{userIds=1339565755406872577}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2020-12-17 21:39:43','',NULL,'',NULL,NULL,0x00,0),(170,'用户管理',1,'com.ruoyi.web.controller.system.SysUserController.add()','POST',1,'admin',NULL,'/system/user','127.0.0.1','内网IP','{\"admin\":false,\"password\":\"$2a$10$0H90jrVHN9lbCDz8NGX.zujZuYUHJ3GZfVVxzLU/6qUz5D05710PO\",\"postIds\":[],\"nickName\":\"222\",\"userName\":\"222222\",\"userId\":1339565991038676994,\"createBy\":\"admin\",\"roleIds\":[],\"status\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2020-12-17 21:39:54','',NULL,'',NULL,NULL,0x00,0),(171,'用户管理',2,'com.ruoyi.web.controller.system.SysUserController.edit()','PUT',1,'admin',NULL,'/system/user','127.0.0.1','内网IP','{\"roles\":[],\"phonenumber\":\"\",\"admin\":false,\"delFlag\":\"0\",\"password\":\"\",\"updateBy\":\"admin\",\"postIds\":[1],\"loginIp\":\"\",\"email\":\"\",\"nickName\":\"222\",\"sex\":\"0\",\"avatar\":\"\",\"userName\":\"222222\",\"userId\":1339565991038676994,\"createBy\":\"admin\",\"roleIds\":[],\"status\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2020-12-17 21:46:53','',NULL,'',NULL,NULL,0x00,0),(172,'用户管理',2,'com.ruoyi.web.controller.system.SysUserController.edit()','PUT',1,'admin',NULL,'/system/user','127.0.0.1','内网IP','{\"roles\":[],\"phonenumber\":\"\",\"admin\":false,\"delFlag\":\"0\",\"password\":\"\",\"updateBy\":\"admin\",\"postIds\":[],\"loginIp\":\"\",\"email\":\"\",\"nickName\":\"333\",\"sex\":\"0\",\"avatar\":\"\",\"userName\":\"222222\",\"userId\":1339565991038676994,\"createBy\":\"admin\",\"roleIds\":[],\"status\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2020-12-17 21:47:05','',NULL,'',NULL,NULL,0x00,0),(173,'用户管理',2,'com.ruoyi.web.controller.system.SysUserController.changeStatus()','PUT',1,'admin',NULL,'/system/user/changeStatus','127.0.0.1','内网IP','{\"admin\":false,\"updateBy\":\"admin\",\"userId\":1339565991038676994,\"status\":\"1\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2020-12-17 21:47:09','',NULL,'',NULL,NULL,0x00,0),(174,'用户管理',2,'com.ruoyi.web.controller.system.SysUserController.changeStatus()','PUT',1,'admin',NULL,'/system/user/changeStatus','127.0.0.1','内网IP','{\"admin\":false,\"updateBy\":\"admin\",\"userId\":1339565991038676994,\"status\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2020-12-17 21:47:11','',NULL,'',NULL,NULL,0x00,0),(175,'用户管理',2,'com.ruoyi.web.controller.system.SysUserController.resetPwd()','PUT',1,'admin',NULL,'/system/user/resetPwd','127.0.0.1','内网IP','{\"admin\":false,\"password\":\"$2a$10$uYXleaak1Y2IO.BLTiUi3OXXO5a9Z.ScF/Y3TdFjrszbQ2I1r3icq\",\"updateBy\":\"admin\",\"userId\":1339565991038676994}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2020-12-17 21:47:19','',NULL,'',NULL,NULL,0x00,0),(176,'用户管理',3,'com.ruoyi.web.controller.system.SysUserController.remove()','DELETE',1,'admin',NULL,'/system/user/1339565991038676994','127.0.0.1','内网IP','{userIds=1339565991038676994}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2020-12-17 21:47:27','',NULL,'',NULL,NULL,0x00,0),(177,'用户管理',5,'com.ruoyi.web.controller.system.SysUserController.export()','GET',1,'admin',NULL,'/system/user/export','127.0.0.1','内网IP','{}','{\"msg\":\"501c2a0e-79a7-40f9-b2c0-0e1f2622031e_用户数据.xlsx\",\"code\":200}',0,NULL,'2020-12-17 21:47:35','',NULL,'',NULL,NULL,0x00,0),(178,'岗位管理',1,'com.ruoyi.web.controller.system.SysPostController.add()','POST',1,'admin',NULL,'/system/post','127.0.0.1','内网IP','{\"postSort\":\"0\",\"createBy\":\"admin\",\"flag\":false,\"postName\":\"1\",\"postCode\":\"1\",\"postId\":1339601537794428930,\"status\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2020-12-18 00:01:09','',NULL,'',NULL,NULL,0x00,0),(179,'岗位管理',3,'com.ruoyi.web.controller.system.SysPostController.remove()','DELETE',1,'admin',NULL,'/system/post/1339601537794428930','127.0.0.1','内网IP','{postIds=1339601537794428930}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2020-12-18 00:01:19','',NULL,'',NULL,NULL,0x00,0),(180,'岗位管理',1,'com.ruoyi.web.controller.system.SysPostController.add()','POST',1,'admin',NULL,'/system/post','127.0.0.1','内网IP','{\"postSort\":\"0\",\"createBy\":\"admin\",\"flag\":false,\"postName\":\"2\",\"postCode\":\"2\",\"postId\":1339601613635833857,\"status\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2020-12-18 00:01:27','',NULL,'',NULL,NULL,0x00,0),(181,'岗位管理',2,'com.ruoyi.web.controller.system.SysPostController.edit()','PUT',1,'admin',NULL,'/system/post','127.0.0.1','内网IP','{\"postSort\":\"0\",\"createBy\":\"admin\",\"flag\":false,\"updateBy\":\"admin\",\"postName\":\"2\",\"postCode\":\"22\",\"postId\":1339601613635833857,\"status\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2020-12-18 00:01:34','',NULL,'',NULL,NULL,0x00,0),(182,'岗位管理',3,'com.ruoyi.web.controller.system.SysPostController.remove()','DELETE',1,'admin',NULL,'/system/post/1339601613635833857','127.0.0.1','内网IP','{postIds=1339601613635833857}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2020-12-18 00:01:38','',NULL,'',NULL,NULL,0x00,0),(183,'菜单管理',3,'com.ruoyi.web.controller.system.SysMenuController.remove()','DELETE',1,'admin',NULL,'/system/menu/4','127.0.0.1','内网IP','{menuId=4}','{\"msg\":\"菜单已分配,不允许删除\",\"code\":500}',0,NULL,'2020-12-18 00:02:12','',NULL,'',NULL,NULL,0x00,0),(184,'菜单管理',2,'com.ruoyi.web.controller.system.SysMenuController.edit()','PUT',1,'admin',NULL,'/system/menu','127.0.0.1','内网IP','{\"visible\":\"0\",\"icon\":\"guide\",\"orderNum\":\"4\",\"menuName\":\"若依官网\",\"parentId\":0,\"isCache\":\"0\",\"path\":\"http://ruoyi.vip\",\"children\":[],\"createTime\":1608126100000,\"updateBy\":\"admin\",\"isFrame\":\"0\",\"menuId\":4,\"menuType\":\"M\",\"perms\":\"\",\"status\":\"1\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2020-12-18 00:02:29','',NULL,'',NULL,NULL,0x00,0),(185,'字典类型',9,'com.ruoyi.web.controller.system.SysDictTypeController.clearCache()','DELETE',1,'admin',NULL,'/system/dict/type/clearCache','127.0.0.1','内网IP','{}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2020-12-18 00:20:16','',NULL,'',NULL,NULL,0x00,0),(186,'字典类型',1,'com.ruoyi.web.controller.system.SysDictTypeController.add()','POST',1,'admin',NULL,'/system/dict/type','127.0.0.1','内网IP','{\"createBy\":\"admin\",\"dictName\":\"1\",\"dictId\":11,\"dictType\":\"1\",\"status\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2020-12-18 00:20:25','',NULL,'',NULL,NULL,0x00,0),(187,'字典类型',2,'com.ruoyi.web.controller.system.SysDictTypeController.edit()','PUT',1,'admin',NULL,'/system/dict/type','127.0.0.1','内网IP','{\"createBy\":\"admin\",\"updateBy\":\"admin\",\"dictName\":\"1\",\"dictId\":11,\"dictType\":\"11\",\"status\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2020-12-18 00:20:36','',NULL,'',NULL,NULL,0x00,0),(188,'字典类型',3,'com.ruoyi.web.controller.system.SysDictTypeController.remove()','DELETE',1,'admin',NULL,'/system/dict/type/11','127.0.0.1','内网IP','{dictIds=11}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2020-12-18 00:20:40','',NULL,'',NULL,NULL,0x00,0),(189,'字典数据',1,'com.ruoyi.web.controller.system.SysDictDataController.add()','POST',1,'admin',NULL,'/system/dict/data','127.0.0.1','内网IP','{\"dictValue\":\"1\",\"dictSort\":0,\"remark\":\"1\",\"dictType\":\"sys_user_sex\",\"dictLabel\":\"1\",\"createBy\":\"admin\",\"default\":false,\"status\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2020-12-18 00:26:30','',NULL,'',NULL,NULL,0x00,0),(190,'字典类型',3,'com.ruoyi.web.controller.system.SysDictDataController.remove()','DELETE',1,'admin',NULL,'/system/dict/data/29','127.0.0.1','内网IP','{dictCodes=29}','{\"msg\":\"操作失败\",\"code\":500}',0,NULL,'2020-12-18 00:27:05','',NULL,'',NULL,NULL,0x00,0),(191,'字典类型',3,'com.ruoyi.web.controller.system.SysDictDataController.remove()','DELETE',1,'admin',NULL,'/system/dict/data/29','127.0.0.1','内网IP','{dictCodes=29}','{\"msg\":\"操作失败\",\"code\":500}',0,NULL,'2020-12-18 00:27:14','',NULL,'',NULL,NULL,0x00,0),(192,'字典类型',3,'com.ruoyi.web.controller.system.SysDictDataController.remove()','DELETE',1,'admin',NULL,'/system/dict/data/29','127.0.0.1','内网IP','{dictCodes=29}','{\"msg\":\"操作失败\",\"code\":500}',0,NULL,'2020-12-18 00:27:35','',NULL,'',NULL,NULL,0x00,0),(193,'字典类型',3,'com.ruoyi.web.controller.system.SysDictDataController.remove()','DELETE',1,'admin',NULL,'/system/dict/data/29','127.0.0.1','内网IP','{dictCodes=29}','{\"msg\":\"操作失败\",\"code\":500}',0,NULL,'2020-12-18 00:28:03','',NULL,'',NULL,NULL,0x00,0);
/*!40000 ALTER TABLE `sys_oper_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_post`
--

DROP TABLE IF EXISTS `sys_post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_post` (
  `post_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '岗位ID',
  `post_code` varchar(64) NOT NULL COMMENT '岗位编码',
  `post_name` varchar(50) NOT NULL COMMENT '岗位名称',
  `post_sort` int(4) NOT NULL COMMENT '显示顺序',
  `status` char(1) NOT NULL COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `gmt_create` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `gmt_update` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  `deleted` bit(1) DEFAULT b'0' COMMENT '逻辑删除（0:未删除；1:已删除）',
  `version` int(11) DEFAULT '0' COMMENT '乐观锁',
  PRIMARY KEY (`post_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='岗位信息表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_post`
--

LOCK TABLES `sys_post` WRITE;
/*!40000 ALTER TABLE `sys_post` DISABLE KEYS */;
INSERT INTO `sys_post` VALUES (1,'ceo','董事长',1,'0','admin','2020-12-16 21:41:40','',NULL,'',0x00,0),(2,'se','项目经理',2,'0','admin','2020-12-16 21:41:40','',NULL,'',0x00,0),(3,'hr','人力资源',3,'0','admin','2020-12-16 21:41:40','',NULL,'',0x00,0),(4,'user','普通员工',4,'0','admin','2020-12-16 21:41:40','',NULL,'',0x00,0);
/*!40000 ALTER TABLE `sys_post` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_role`
--

DROP TABLE IF EXISTS `sys_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_role` (
  `role_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '角色ID',
  `role_name` varchar(30) NOT NULL COMMENT '角色名称',
  `role_key` varchar(100) NOT NULL COMMENT '角色权限字符串',
  `role_sort` int(4) NOT NULL COMMENT '显示顺序',
  `data_scope` char(1) DEFAULT '1' COMMENT '数据范围（1：全部数据权限 2：自定数据权限 3：本部门数据权限 4：本部门及以下数据权限）',
  `menu_check_strictly` tinyint(1) DEFAULT '1' COMMENT '菜单树选择项是否关联显示',
  `dept_check_strictly` tinyint(1) DEFAULT '1' COMMENT '部门树选择项是否关联显示',
  `status` char(1) NOT NULL COMMENT '角色状态（0正常 1停用）',
  `del_flag` char(1) DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `gmt_create` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `gmt_update` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  `deleted` bit(1) DEFAULT b'0' COMMENT '逻辑删除（0:未删除；1:已删除）',
  `version` int(11) DEFAULT '0' COMMENT '乐观锁',
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='角色信息表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_role`
--

LOCK TABLES `sys_role` WRITE;
/*!40000 ALTER TABLE `sys_role` DISABLE KEYS */;
INSERT INTO `sys_role` VALUES (1,'超级管理员','admin',1,'1',1,1,'0','0','admin','2020-12-16 21:41:40','',NULL,'超级管理员',0x00,0),(2,'普通角色','common',2,'2',1,1,'0','0','admin','2020-12-16 21:41:40','',NULL,'普通角色',0x00,0);
/*!40000 ALTER TABLE `sys_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_role_dept`
--

DROP TABLE IF EXISTS `sys_role_dept`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_role_dept` (
  `id` bigint(20) NOT NULL COMMENT '序号ID',
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  `dept_id` bigint(20) NOT NULL COMMENT '部门ID',
  PRIMARY KEY (`id`),
  KEY `idx_role_dept` (`role_id`,`dept_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='角色和部门关联表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_role_dept`
--

LOCK TABLES `sys_role_dept` WRITE;
/*!40000 ALTER TABLE `sys_role_dept` DISABLE KEYS */;
INSERT INTO `sys_role_dept` VALUES (1,2,100),(2,2,101),(3,2,105);
/*!40000 ALTER TABLE `sys_role_dept` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_role_menu`
--

DROP TABLE IF EXISTS `sys_role_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_role_menu` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '序号ID',
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  `menu_id` bigint(20) NOT NULL COMMENT '菜单ID',
  PRIMARY KEY (`id`),
  KEY `idx_role_menu` (`role_id`,`menu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=85 DEFAULT CHARSET=utf8 COMMENT='角色和菜单关联表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_role_menu`
--

LOCK TABLES `sys_role_menu` WRITE;
/*!40000 ALTER TABLE `sys_role_menu` DISABLE KEYS */;
INSERT INTO `sys_role_menu` VALUES (1,2,1),(2,2,2),(3,2,3),(4,2,4),(5,2,100),(6,2,101),(7,2,102),(8,2,103),(9,2,104),(10,2,105),(11,2,106),(12,2,107),(13,2,108),(14,2,109),(15,2,110),(16,2,111),(17,2,112),(18,2,113),(19,2,114),(20,2,115),(21,2,116),(22,2,500),(23,2,501),(24,2,1000),(25,2,1001),(26,2,1002),(27,2,1003),(28,2,1004),(29,2,1005),(30,2,1006),(31,2,1007),(32,2,1008),(33,2,1009),(34,2,1010),(35,2,1011),(36,2,1012),(37,2,1013),(38,2,1014),(39,2,1015),(40,2,1016),(41,2,1017),(42,2,1018),(43,2,1019),(44,2,1020),(45,2,1021),(46,2,1022),(47,2,1023),(48,2,1024),(49,2,1025),(50,2,1026),(51,2,1027),(52,2,1028),(53,2,1029),(54,2,1030),(55,2,1031),(56,2,1032),(57,2,1033),(58,2,1034),(59,2,1035),(60,2,1036),(61,2,1037),(62,2,1038),(63,2,1039),(64,2,1040),(65,2,1041),(66,2,1042),(67,2,1043),(68,2,1044),(69,2,1045),(70,2,1046),(71,2,1047),(72,2,1048),(73,2,1049),(74,2,1050),(75,2,1051),(76,2,1052),(77,2,1053),(78,2,1054),(79,2,1055),(80,2,1056),(81,2,1057),(82,2,1058),(83,2,1059),(84,2,1060);
/*!40000 ALTER TABLE `sys_role_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_user`
--

DROP TABLE IF EXISTS `sys_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_user` (
  `user_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `dept_id` bigint(20) DEFAULT NULL COMMENT '部门ID',
  `user_name` varchar(30) NOT NULL COMMENT '用户账号',
  `nick_name` varchar(30) NOT NULL COMMENT '用户昵称',
  `user_type` varchar(2) DEFAULT '00' COMMENT '用户类型（00系统用户）',
  `email` varchar(50) DEFAULT '' COMMENT '用户邮箱',
  `phonenumber` varchar(11) DEFAULT '' COMMENT '手机号码',
  `sex` char(1) DEFAULT '0' COMMENT '用户性别（0男 1女 2未知）',
  `avatar` varchar(100) DEFAULT '' COMMENT '头像地址',
  `password` varchar(100) DEFAULT '' COMMENT '密码',
  `status` char(1) DEFAULT '0' COMMENT '帐号状态（0正常 1停用）',
  `del_flag` char(1) DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `login_ip` varchar(50) DEFAULT '' COMMENT '最后登录IP',
  `login_date` datetime DEFAULT NULL COMMENT '最后登录时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  `gmt_create` datetime DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gmt_update` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '修改时间',
  `create_by` varchar(64) DEFAULT NULL COMMENT '创建者',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `deleted` bit(1) DEFAULT b'0' COMMENT '逻辑删除（0:未删除；1:已删除）',
  `version` int(11) DEFAULT '0' COMMENT '乐观锁',
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `idx_user_name` (`user_name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='用户信息表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_user`
--

LOCK TABLES `sys_user` WRITE;
/*!40000 ALTER TABLE `sys_user` DISABLE KEYS */;
INSERT INTO `sys_user` VALUES (1,103,'admin','若依','00','ry@163.com','15888888888','1','','$2a$10$7JB720yubVSZvUI0rEqK/.VqGOZTH.ulu33dHOiBE8ByOhJIrdAu2','0','0','127.0.0.1','2020-12-16 21:41:40','管理员','2020-12-16 21:41:40',NULL,'admin','',0x00,0),(2,105,'ry','若依','00','ry@qq.com','15666666666','1','','$2a$10$7JB720yubVSZvUI0rEqK/.VqGOZTH.ulu33dHOiBE8ByOhJIrdAu2','0','0','127.0.0.1','2020-12-16 21:41:40','测试员','2020-12-16 21:41:40',NULL,'admin','admin',0x00,0);
/*!40000 ALTER TABLE `sys_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_user_post`
--

DROP TABLE IF EXISTS `sys_user_post`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_user_post` (
  `id` bigint(20) NOT NULL COMMENT '序号ID',
  `user_id` bigint(20) NOT NULL COMMENT '用户ID',
  `post_id` bigint(20) NOT NULL COMMENT '岗位ID',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_user_post` (`user_id`,`post_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户与岗位关联表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_user_post`
--

LOCK TABLES `sys_user_post` WRITE;
/*!40000 ALTER TABLE `sys_user_post` DISABLE KEYS */;
INSERT INTO `sys_user_post` VALUES (1,1,1),(2,2,2);
/*!40000 ALTER TABLE `sys_user_post` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sys_user_role`
--

DROP TABLE IF EXISTS `sys_user_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sys_user_role` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT '序号ID',
  `user_id` bigint(20) NOT NULL COMMENT '用户ID',
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_user_role` (`user_id`,`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='用户和角色关联表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sys_user_role`
--

LOCK TABLES `sys_user_role` WRITE;
/*!40000 ALTER TABLE `sys_user_role` DISABLE KEYS */;
INSERT INTO `sys_user_role` VALUES (1,1,1),(2,2,2);
/*!40000 ALTER TABLE `sys_user_role` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-12-19 21:38:45
