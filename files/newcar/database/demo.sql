# MySQL-Front 5.0  (Build 1.0)

/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE */;
/*!40101 SET SQL_MODE='STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES */;
/*!40103 SET SQL_NOTES='ON' */;


# Host: localhost    Database: demo
# ------------------------------------------------------
# Server version 5.0.77-community-nt

#
# Table structure for table admin
#

DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `id` int(11) NOT NULL default '0',
  `createDate` datetime default NULL,
  `modifyDate` datetime default NULL,
  `department` varchar(255) default NULL,
  `email` varchar(255) NOT NULL,
  `isAccountEnabled` bit(1) NOT NULL,
  `isAccountExpired` bit(1) NOT NULL,
  `isAccountLocked` bit(1) NOT NULL,
  `isCredentialsExpired` bit(1) NOT NULL,
  `lockedDate` datetime default NULL,
  `loginDate` datetime default NULL,
  `loginFailureCount` int(11) NOT NULL,
  `loginIp` varchar(255) default NULL,
  `name` varchar(255) default NULL,
  `password` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Table structure for table book
#

DROP TABLE IF EXISTS `book`;
CREATE TABLE `book` (
  `Id` varchar(32) NOT NULL default '',
  `summary` varchar(5000) default NULL,
  `author` varchar(50) default NULL,
  `title` varchar(200) default NULL,
  `publisher` varchar(50) default NULL,
  `cover` varchar(600) default NULL,
  `tags` varchar(255) default NULL,
  `isbn` varchar(100) default NULL,
  `subtitle` varchar(500) default NULL,
  `createTime` varchar(255) default '0',
  `downloadTimes` int(11) default '0',
  `checkTimes` int(11) default '0',
  PRIMARY KEY  (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Table structure for table customer
#

DROP TABLE IF EXISTS `customer`;
CREATE TABLE `customer` (
  `CUSTOMER_ID` bigint(20) unsigned NOT NULL auto_increment,
  `NAME` varchar(45) NOT NULL default '',
  `ADDRESS` varchar(255) NOT NULL default '',
  `CREATED_DATE` datetime NOT NULL default '0000-00-00 00:00:00',
  PRIMARY KEY  (`CUSTOMER_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8;

#
# Table structure for table member
#

DROP TABLE IF EXISTS `member`;
CREATE TABLE `member` (
  `id` varchar(32) NOT NULL default '',
  `createDate` datetime default NULL,
  `modifyDate` datetime default NULL,
  `email` varchar(255) NOT NULL,
  `isAccountEnabled` int(1) default '1',
  `isAccountLocked` int(1) default '1',
  `lockedDate` datetime default NULL,
  `loginDate` datetime default NULL,
  `loginFailureCount` int(11) NOT NULL,
  `loginIp` varchar(255) default NULL,
  `password` varchar(255) NOT NULL,
  `point` int(11) NOT NULL,
  `registerIp` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `deposit` decimal(15,5) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Table structure for table note
#

DROP TABLE IF EXISTS `note`;
CREATE TABLE `note` (
  `Id` varchar(32) NOT NULL default '',
  `title` varchar(255) NOT NULL default '',
  `content` varchar(2000) NOT NULL default '',
  `createDate` varchar(50) default NULL,
  `bookid` varchar(32) NOT NULL default '',
  `isVisible` varchar(10) default NULL,
  `page` int(11) default NULL,
  `chapter` varchar(255) default NULL,
  `memberId` varchar(32) default NULL,
  PRIMARY KEY  (`Id`),
  KEY `bookid` (`bookid`),
  KEY `memberId` (`memberId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Table structure for table role
#

DROP TABLE IF EXISTS `role`;
CREATE TABLE `role` (
  `id` int(11) NOT NULL,
  `createDate` datetime default NULL,
  `modifyDate` datetime default NULL,
  `description` text,
  `isSystem` bit(1) NOT NULL,
  `name` varchar(255) NOT NULL,
  `value` varchar(255) NOT NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `name` (`name`),
  UNIQUE KEY `value` (`value`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
#  Foreign keys for table note
#

ALTER TABLE `note`
ADD CONSTRAINT `note_ibfk_1` FOREIGN KEY (`bookid`) REFERENCES `book` (`Id`),
  ADD CONSTRAINT `note_ibfk_2` FOREIGN KEY (`memberId`) REFERENCES `member` (`id`);


/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
