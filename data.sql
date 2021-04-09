/*
SQLyog Ultimate v8.82 
MySQL - 5.1.45-community : Database - schoolmanagement
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`schoolmanagement` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `schoolmanagement`;

/*Table structure for table `admin` */

DROP TABLE IF EXISTS `admin`;

CREATE TABLE `admin` (
  `name` varchar(30) NOT NULL,
  `pass` varchar(20) DEFAULT NULL,
  `utype` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `admin` */

insert  into `admin`(`name`,`pass`,`utype`) values ('Admin','1212','admin');

/*Table structure for table `adstudent` */

DROP TABLE IF EXISTS `adstudent`;

CREATE TABLE `adstudent` (
  `stid` int(4) NOT NULL,
  `stname` varchar(30) DEFAULT NULL,
  `stdep` varchar(30) DEFAULT NULL,
  `stcour` varchar(30) DEFAULT NULL,
  `gname` varchar(30) DEFAULT NULL,
  `mob` decimal(10,0) DEFAULT NULL,
  `dob` varchar(30) DEFAULT NULL,
  `stmail` varchar(30) DEFAULT NULL,
  `stpass` varchar(30) DEFAULT '123',
  `stadd` varchar(30) DEFAULT NULL,
  `fee` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`stid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `adstudent` */

insert  into `adstudent`(`stid`,`stname`,`stdep`,`stcour`,`gname`,`mob`,`dob`,`stmail`,`stpass`,`stadd`,`fee`) values (0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'123',NULL,'due'),(1,'abhi','B.tech','CSE','santosh','2345679887','11/09/2000','abhi@123gmail.com','123','lucknow','submit'),(2,'imposter','tech','bca','unkn','2345679887','4/08/1999','impo@123gmail.com','123','lko','submit'),(3,'ok i','tech','cse','imnot','2345679887','6/07/2000','ok@123gmail.com','123','lko','submit'),(4,'pinky','b.tech','cse','sushant','5687454332','12/08/2000','pinky@gmail.com','123','janakipuram,lko','due');

/*Table structure for table `attend` */

DROP TABLE IF EXISTS `attend`;

CREATE TABLE `attend` (
  `stid` int(4) NOT NULL,
  `atnd` varchar(20) DEFAULT 'p',
  `date` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `attend` */

insert  into `attend`(`stid`,`atnd`,`date`) values (1,'p',NULL),(2,'a',NULL),(3,'p',NULL),(3,'p',NULL),(1,'a',NULL),(2,'p',NULL),(3,'a',NULL),(1,'p',NULL),(2,'p',NULL),(1,'p','Sat Jan 30 19:57:41 IST 2021');

/*Table structure for table `notfications` */

DROP TABLE IF EXISTS `notfications`;

CREATE TABLE `notfications` (
  `notiId` int(4) NOT NULL,
  `notice` varchar(1000) DEFAULT NULL,
  `date` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`notiId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `notfications` */

insert  into `notfications`(`notiId`,`notice`,`date`) values (0,'this is a notification without date.hehe',NULL),(1,'this is new notifications hope it added the date.','Fri Jan 15 16:44:22 IST 2021'),(2,'','Mon Feb 08 14:00:24 IST 2021');

/*Table structure for table `repogen` */

DROP TABLE IF EXISTS `repogen`;

CREATE TABLE `repogen` (
  `id` int(4) DEFAULT NULL,
  `utype` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `repogen` */

/*Table structure for table `reslt` */

DROP TABLE IF EXISTS `reslt`;

CREATE TABLE `reslt` (
  `stid` int(4) NOT NULL,
  `sub1` int(4) DEFAULT NULL,
  `sub2` int(4) DEFAULT NULL,
  `sub3` int(4) DEFAULT NULL,
  `sub4` int(4) DEFAULT NULL,
  `sub5` int(4) DEFAULT NULL,
  `obtain` int(4) DEFAULT NULL,
  `total` int(4) DEFAULT NULL,
  `Grad` varchar(20) DEFAULT NULL,
  `status` varchar(30) DEFAULT NULL,
  `sem` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `reslt` */

insert  into `reslt`(`stid`,`sub1`,`sub2`,`sub3`,`sub4`,`sub5`,`obtain`,`total`,`Grad`,`status`,`sem`) values (1,78,98,85,63,88,412,500,'A','passed','3'),(2,89,49,34,39,98,309,500,'B','passed','3'),(3,35,34,32,12,34,147,500,'E','failed','3'),(4,79,75,78,88,96,416,500,'A','passed','5');

/*Table structure for table `staff` */

DROP TABLE IF EXISTS `staff`;

CREATE TABLE `staff` (
  `id` int(4) NOT NULL,
  `name` varchar(30) DEFAULT NULL,
  `quali` varchar(30) DEFAULT NULL,
  `depart` varchar(30) DEFAULT NULL,
  `cour` varchar(30) DEFAULT NULL,
  `addr` varchar(30) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `pass` varchar(30) DEFAULT '123',
  `mob` decimal(10,0) DEFAULT NULL,
  `salary` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `staff` */

insert  into `staff`(`id`,`name`,`quali`,`depart`,`cour`,`addr`,`email`,`pass`,`mob`,`salary`) values (1,'shikhar','m.tech','b.tech','CSE','lucknow','shikhar@123gmail.com','123','3934398387','45000'),(2,'abhishek','ph.d','B.Tech','CSE','Varanasi','abhishek@123gmail.com','123','7238279327','75000'),(3,'imposter','Data Science','cse','data','lko','impo123@gmail.com','123','54678654','30000'),(4,'ok','ph.d','cse','cse','janaki','ok123@gmail.com','123','4373487348','65000'),(5,'sanjy','ph.d','Engineering','CSE','lko','san@123gmail.com','123','3923483424','57000');

/*Table structure for table `staffattandance` */

DROP TABLE IF EXISTS `staffattandance`;

CREATE TABLE `staffattandance` (
  `id` int(4) DEFAULT NULL,
  `presence` varchar(30) DEFAULT NULL,
  `lea` varchar(30) DEFAULT 'n',
  `date` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `staffattandance` */

insert  into `staffattandance`(`id`,`presence`,`lea`,`date`) values (1,'p','n',NULL),(2,'p','n',NULL),(1,'a','n',NULL),(1,'p','y',NULL),(2,'p','y',NULL);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
