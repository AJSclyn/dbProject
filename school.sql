-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 19, 2015 at 12:45 AM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
CREATE DATABASE school;
USE school;
--
-- Database: `school`
--

-- --------------------------------------------------------

--
-- Table structure for table `academic`
--

CREATE TABLE IF NOT EXISTS `academic` (
  `P.SSN` int(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `administrator`
--

CREATE TABLE IF NOT EXISTS `administrator` (
  `P.SSN` int(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `advises`
--

CREATE TABLE IF NOT EXISTS `advises` (
  `P.SSN` int(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `belongsin`
--

CREATE TABLE IF NOT EXISTS `belongsin` (
  `DNAME` varchar(20) NOT NULL,
  `P.SSN` int(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `cd`
--

CREATE TABLE IF NOT EXISTS `cd` (
  `CNAME` varchar(20) NOT NULL,
  `DNAME` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `chairman`
--

CREATE TABLE IF NOT EXISTS `chairman` (
  `DNAME` varchar(20) NOT NULL,
  `P.SSN` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `college`
--

CREATE TABLE IF NOT EXISTS `college` (
  `DNAME` varchar(50) NOT NULL,
  `DCODE` int(5) NOT NULL,
  `CNAME` varchar(20) DEFAULT NULL,
  `COFFICE` varchar(20) DEFAULT NULL,
  `CDEAN` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `committee`
--

CREATE TABLE IF NOT EXISTS `committee` (
  `P.SSN` int(9) NOT NULL,
  `S.ST#` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE IF NOT EXISTS `course` (
  `CNUM` int(11) NOT NULL,
  `CNAME` varchar(20) NOT NULL,
  `CDESC` varchar(100) NOT NULL,
  `CREDIT` int(11) NOT NULL,
  `LEVEL` int(1) NOT NULL,
  `CDEPT` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `current_section`
--

CREATE TABLE IF NOT EXISTS `current_section` (
  `S.ST#` int(11) NOT NULL,
  `S.SSN` int(9) NOT NULL,
  `SEC.SECNUM` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE IF NOT EXISTS `department` (
  `NAME` varchar(20) NOT NULL,
  `CODE` int(5) NOT NULL,
  `OFFICENUM` int(11) DEFAULT NULL,
  `OFFICEPHONE` int(7) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `faculty`
--

CREATE TABLE IF NOT EXISTS `faculty` (
  `P.SSN` int(9) NOT NULL,
  `RANK` int(11) NOT NULL,
  `FOFFICE` varchar(20) NOT NULL,
  `FPHONE` int(10) NOT NULL,
  `SALARY` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `grade`
--

CREATE TABLE IF NOT EXISTS `grade` (
  `ST#` int(11) NOT NULL,
  `SSN` int(9) NOT NULL,
  `CNUM` int(11) NOT NULL,
  `SECTION` int(11) NOT NULL,
  `GRADE` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `grad_students`
--

CREATE TABLE IF NOT EXISTS `grad_students` (
  `S.SSN` int(9) NOT NULL,
  `DEGYEAR` int(4) NOT NULL,
  `DEGNAME` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `grant`
--

CREATE TABLE IF NOT EXISTS `grant` (
  `NO` int(11) NOT NULL,
  `TITLE` varchar(20) NOT NULL,
  `AGENCY` varchar(20) NOT NULL,
  `ST_DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `instructor_researcher`
--

CREATE TABLE IF NOT EXISTS `instructor_researcher` (
  `P.SSN` int(9) NOT NULL,
  `S.SECNUM` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `majorsin`
--

CREATE TABLE IF NOT EXISTS `majorsin` (
  `SSN` int(9) NOT NULL,
  `DNAME` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `minorsin`
--

CREATE TABLE IF NOT EXISTS `minorsin` (
  `SSN` int(9) NOT NULL,
  `DNAME` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `nonacademic`
--

CREATE TABLE IF NOT EXISTS `nonacademic` (
  `P.SSN` int(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `person`
--

CREATE TABLE IF NOT EXISTS `person` (
  `SSN` int(9) NOT NULL,
  `NAME` varchar(20) NOT NULL,
  `ADDRESS` varchar(25) NOT NULL,
  `SEX` varchar(6) NOT NULL,
  `BDATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pi`
--

CREATE TABLE IF NOT EXISTS `pi` (
  `NO` int(11) NOT NULL,
  `P.SSN` int(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `registeredin`
--

CREATE TABLE IF NOT EXISTS `registeredin` (
  `S.SSN` int(9) NOT NULL,
  `S.ST#` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `section`
--

CREATE TABLE IF NOT EXISTS `section` (
  `SECNUM` int(11) NOT NULL,
  `INSTRUCTORNAME` varchar(20) NOT NULL,
  `SEMESTER` varchar(10) NOT NULL,
  `YEAR` int(4) NOT NULL,
  `SECCOURSE` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE IF NOT EXISTS `staff` (
  `P.SSN` int(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE IF NOT EXISTS `student` (
  `ST#` int(11) NOT NULL,
  `SSN` int(9) NOT NULL,
  `CLASS` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `student_sports`
--

CREATE TABLE IF NOT EXISTS `student_sports` (
  `S.SSN` int(11) NOT NULL,
  `PRIMARY` varchar(20) NOT NULL,
  `MULTIPLE` enum('SOCCER','FOOTBALL','HOCKEY','CROSS COUNTRY','BASEBALL','BASKETBALL','TENNIS','OTHER') NOT NULL,
  `PIC` varchar(20) NOT NULL,
  `OFFLOC` varchar(20) NOT NULL,
  `NOS` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1

;

-- --------------------------------------------------------

--
-- Table structure for table `supports`
--

CREATE TABLE IF NOT EXISTS `supports` (
  `NO` int(11) NOT NULL,
  `P.SSN` int(9) NOT NULL,
  `S.SECNUM` int(11) NOT NULL,
  `TIME` date NOT NULL,
  `END` date NOT NULL,
  `START` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `teaches`
--

CREATE TABLE IF NOT EXISTS `teaches` (
  `SECNUM` int(11) NOT NULL,
  `P.SSN` int(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `transcript`
--

CREATE TABLE IF NOT EXISTS `transcript` (
  `CNUM` int(11) NOT NULL,
  `SSN` int(9) NOT NULL,
  `ST#` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `academic`
--
ALTER TABLE `academic`
 ADD PRIMARY KEY (`P.SSN`);

--
-- Indexes for table `administrator`
--
ALTER TABLE `administrator`
 ADD PRIMARY KEY (`P.SSN`);

--
-- Indexes for table `cd`
--
ALTER TABLE `cd`
 ADD PRIMARY KEY (`CNAME`,`DNAME`);

--
-- Indexes for table `college`
--
ALTER TABLE `college`
 ADD PRIMARY KEY (`DNAME`), ADD UNIQUE KEY `DCODE` (`DCODE`), ADD UNIQUE KEY `DNAME` (`DNAME`), ADD KEY `CNAME` (`CNAME`);

--
-- Indexes for table `course`
--
ALTER TABLE `course`
 ADD PRIMARY KEY (`CNUM`), ADD UNIQUE KEY `CNUM` (`CNUM`), ADD UNIQUE KEY `CNUM_2` (`CNUM`);

--
-- Indexes for table `current_section`
--
ALTER TABLE `current_section`
 ADD PRIMARY KEY (`S.ST#`,`S.SSN`,`SEC.SECNUM`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
 ADD UNIQUE KEY `CODE` (`CODE`), ADD UNIQUE KEY `NAME_2` (`NAME`), ADD UNIQUE KEY `NAME_3` (`NAME`,`CODE`), ADD UNIQUE KEY `NAME_4` (`NAME`,`CODE`), ADD KEY `NAME` (`NAME`);

--
-- Indexes for table `faculty`
--
ALTER TABLE `faculty`
 ADD PRIMARY KEY (`P.SSN`);

--
-- Indexes for table `grant`
--
ALTER TABLE `grant`
 ADD PRIMARY KEY (`NO`), ADD UNIQUE KEY `NO` (`NO`);

--
-- Indexes for table `nonacademic`
--
ALTER TABLE `nonacademic`
 ADD PRIMARY KEY (`P.SSN`);

--
-- Indexes for table `person`
--
ALTER TABLE `person`
 ADD PRIMARY KEY (`SSN`), ADD UNIQUE KEY `SSN` (`SSN`);

--
-- Indexes for table `pi`
--
ALTER TABLE `pi`
 ADD UNIQUE KEY `NO` (`NO`);

--
-- Indexes for table `section`
--
ALTER TABLE `section`
 ADD UNIQUE KEY `SECNUM` (`SECNUM`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
 ADD PRIMARY KEY (`P.SSN`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
 ADD PRIMARY KEY (`SSN`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `faculty`
--
ALTER TABLE `faculty`
ADD CONSTRAINT `faculty_ibfk_1` FOREIGN KEY (`P.SSN`) REFERENCES `person` (`SSN`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
