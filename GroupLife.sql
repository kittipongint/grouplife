-- Adminer 4.6.3 MySQL dump

SET NAMES utf8;
SET time_zone = '+00:00';
SET foreign_key_checks = 0;
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

DROP TABLE IF EXISTS `custbeneficiary`;
CREATE TABLE `custbeneficiary` (
  `bane_id` int(8) NOT NULL AUTO_INCREMENT,
  `cust_id` int(8) NOT NULL,
  `prefixcode` varchar(15) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `relationcode` varchar(10) NOT NULL,
  `percent` decimal(18,2) NOT NULL,
  PRIMARY KEY (`bane_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `customerinfo`;
CREATE TABLE `customerinfo` (
  `cust_id` int(8) NOT NULL AUTO_INCREMENT,
  `prefixcode` varchar(15) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `gendercode` varchar(1) NOT NULL,
  `employeecode` varchar(15) NOT NULL,
  `idcard` varchar(20) NOT NULL,
  `birthday` datetime NOT NULL,
  `mobile` varchar(15) NOT NULL,
  `email` varchar(50) NOT NULL,
  `insurance_id` int(8) NOT NULL,
  `createdate` datetime NOT NULL,
  `updatedate` datetime NOT NULL,
  `status` bit(1) NOT NULL,
  PRIMARY KEY (`cust_id`),
  UNIQUE KEY `ID` (`cust_id`),
  UNIQUE KEY `IDCard` (`idcard`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `gender`;
CREATE TABLE `gender` (
  `gender_id` int(8) NOT NULL AUTO_INCREMENT,
  `gendercode` varchar(1) NOT NULL,
  `gender` varchar(20) NOT NULL,
  PRIMARY KEY (`gender_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `insurance`;
CREATE TABLE `insurance` (
  `insurance_id` int(8) NOT NULL AUTO_INCREMENT,
  `insurancetotal` int(8) NOT NULL,
  `grouplifeinsurance` decimal(18,2) NOT NULL,
  PRIMARY KEY (`insurance_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `prefix`;
CREATE TABLE `prefix` (
  `prefix_id` int(8) NOT NULL AUTO_INCREMENT,
  `prefixcode` varchar(15) NOT NULL,
  `prefixmin` varchar(30) NOT NULL,
  `prefix` varchar(30) NOT NULL,
  `officialprefixcode` varchar(15) NOT NULL,
  PRIMARY KEY (`prefix_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `relationship`;
CREATE TABLE `relationship` (
  `relation_id` int(8) NOT NULL AUTO_INCREMENT,
  `relationcode` varchar(10) NOT NULL,
  `relation` varchar(30) NOT NULL,
  `priority` int(8) NOT NULL,
  PRIMARY KEY (`relation_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `spousebeneficiary`;
CREATE TABLE `spousebeneficiary` (
  `spbane_id` int(8) NOT NULL AUTO_INCREMENT,
  `spouse_id` int(8) NOT NULL,
  `prefixcode` varchar(15) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `relationcode` varchar(15) NOT NULL,
  `percent` decimal(18,2) NOT NULL,
  PRIMARY KEY (`spbane_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `spouseinfo`;
CREATE TABLE `spouseinfo` (
  `spouse_id` int(8) NOT NULL AUTO_INCREMENT,
  `cust_id` int(8) NOT NULL,
  `prefixcode` varchar(15) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `gendercode` varchar(1) NOT NULL,
  `idcard` varchar(20) NOT NULL,
  `birthday` datetime NOT NULL,
  `mobile` varchar(15) NOT NULL,
  `email` varchar(50) NOT NULL,
  `insurance_id` int(8) NOT NULL,
  `createdate` datetime NOT NULL,
  `updatedate` datetime NOT NULL,
  PRIMARY KEY (`spouse_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `spouseinfo` (`spouse_id`, `cust_id`, `prefixcode`, `firstname`, `lastname`, `gendercode`, `idcard`, `birthday`, `mobile`, `email`, `insurance_id`, `createdate`, `updatedate`) VALUES
(19,	106,	'002',	'kittipong',	'intaboot',	'M',	'1329900176656',	'2461-02-02 00:00:00',	'0804782843',	'kittipongint@hotmail.com',	3,	'2018-10-30 15:09:30',	'2018-10-30 15:09:30'),
(20,	109,	'002',	'kittipong',	'intaboot',	'F',	'1329900176656',	'2462-02-03 00:00:00',	'804782843',	'kittipongolf@gmail.com',	6,	'2018-11-01 14:56:55',	'2018-11-01 14:56:55'),
(21,	110,	'002',	'kittipong',	'intaboot',	'F',	'1329900176656',	'2462-02-03 00:00:00',	'0804782843',	'kittipongint@hotmail.com',	7,	'2018-11-01 15:02:59',	'2018-11-01 15:02:59');

-- 2018-11-01 08:34:19
