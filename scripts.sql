GRANT ALL PRIVILEGES ON *.* TO 'banksMetaData'@'localhost' IDENTIFIED BY 'password';

CREATE DATABASE  IF NOT EXISTS `user_db`;
USE `user_db`;

DROP TABLE IF EXISTS `user_sign_up`;
CREATE TABLE `user_sign_up` (
  `user_id` bigint(20) NOT NULL AUTO_INCREMENT,
   `firstname` varchar(255) DEFAULT NULL,
  `lastname` varchar(255) DEFAULT NULL,
 `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
   `emailId` varchar(255) DEFAULT NULL,
 `phoneNo` bigint(20) DEFAULT NULL,
 `enabled` boolean default 1 NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `user_banks`;
CREATE TABLE `user_banks` (
  `bank_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `bank_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`bank_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

INSERT INTO `user_banks` VALUES (1,'Wells Fargo'),(2,'HSBC'),(3,'JP Morgan Chase');

DROP TABLE IF EXISTS `user_bank_metadata`;
CREATE TABLE `user_bank_metadata` (
  `seq_no` bigint(20) NOT NULL AUTO_INCREMENT,
  `message` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`seq_no`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

INSERT INTO `user_bank_metadata` VALUES (1,'click on bank will redirect to respective bank home page'),(2,'click on login button.'),(3,'If already having login credentials, enter the user credentials and login');



CREATE DATABASE  IF NOT EXISTS `bank_db`;
USE `bank_db`;


DROP TABLE IF EXISTS `bank_sign_up`;
CREATE TABLE `bank_sign_up` (
  `user_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `enabled` boolean default 1 NOT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
 `email_id` varchar(255) DEFAULT NULL,
 `phone_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `account_tran_details`;
CREATE TABLE `account_tran_details` (
  `transaction_id` int(11) NOT NULL AUTO_INCREMENT,
  `account_id` int(11) NOT NULL,
  `account_type` varchar(255) DEFAULT NULL,
  `user_id` bigint(20) NOT NULL,
  `bank_id` bigint(20) NOT NULL,
  `account_balance` decimal(19,2) DEFAULT NULL,
  PRIMARY KEY (`transaction_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

INSERT INTO `bank_sign_up` VALUES (1,1,'preetham','raj','$2a$12$hZR7pcSf0JU/OTXR3TOyuu8r6C6n.JZE8Ei47E4LZs1t0Aq1AO6oC','app2_user1','pr@gmail.com',8123679655),
(2,1,'prem','ravi','$2a$12$hZR7pcSf0JU/OTXR3TOyuu8r6C6n.JZE8Ei47E4LZs1t0Aq1AO6oC','Prem','prem@gmail.com',8123679655);

INSERT INTO `account_tran_details` VALUES (35012,2014126210,'Savings',1,1,17000.00,1),(501234101,201412105,'Savings',2,2,50000.00,2),(4321,2014162104,'Savings',1,1,15000.00,3),(501203,1132351,'Savings',3,3,21000.00,4);


