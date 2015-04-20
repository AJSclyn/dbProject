-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 20, 2015 at 04:19 AM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `university`
--

-- --------------------------------------------------------

--
-- Table structure for table `belongsin`
--

CREATE TABLE IF NOT EXISTS `belongsin` (
  `DNAME` varchar(20) NOT NULL,
  `P.SSN` int(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `belongsin`
--

INSERT INTO `belongsin` (`DNAME`, `P.SSN`) VALUES
('Computer Science', 46714871),
('Computer Science', 758100659),
('Genetics', 777746214);

-- --------------------------------------------------------

--
-- Table structure for table `cd`
--

CREATE TABLE IF NOT EXISTS `cd` (
  `CNAME` varchar(20) NOT NULL,
  `DNAME` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cd`
--

INSERT INTO `cd` (`CNAME`, `DNAME`) VALUES
('Graduate School', 'Anesthesiology'),
('College of Engineeri', 'Computer Science'),
('College of Nursing', 'Computer Science'),
('College of Education', 'Genetics'),
('Liberal Arts and Sci', 'Psychology'),
('Graduate School', 'Radiology');

-- --------------------------------------------------------

--
-- Table structure for table `chairman`
--

CREATE TABLE IF NOT EXISTS `chairman` (
  `DNAME` varchar(20) NOT NULL,
  `P.SSN` int(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `chairman`
--

INSERT INTO `chairman` (`DNAME`, `P.SSN`) VALUES
('Computer Science', 758100659),
('Genetics', 777746214);

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

--
-- Dumping data for table `college`
--

INSERT INTO `college` (`DNAME`, `DCODE`, `CNAME`, `COFFICE`, `CDEAN`) VALUES
('Anesthesiology', 234, 'Graduate School', '3435', 'Albert Brennaman'),
('Computer Science', 3, 'College of Engineeri', '4523', 'Loren Shibert'),
('Genetics', 1023, 'College of Education', '343', 'George Lopey');

-- --------------------------------------------------------

--
-- Table structure for table `committee`
--

CREATE TABLE IF NOT EXISTS `committee` (
  `P.SSN` int(9) NOT NULL,
  `S.ST#` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `committee`
--

INSERT INTO `committee` (`P.SSN`, `S.ST#`) VALUES
(127673588, 1),
(289885832, 2),
(364010088, 3),
(522885124, 4),
(905837514, 23);

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE IF NOT EXISTS `course` (
  `CNUM` int(11) NOT NULL,
  `CDEPT` varchar(20) NOT NULL,
  `CNAME` varchar(20) NOT NULL,
  `CDESC` varchar(100) NOT NULL,
  `CREDIT` int(11) NOT NULL,
  `LEVEL` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`CNUM`, `CDEPT`, `CNAME`, `CDESC`, `CREDIT`, `LEVEL`) VALUES
(1200, 'Genetics', 'Intro Geneticology', 'X and y chromosomes overload', 3, 2),
(2500, 'Nursing', 'Basic Care', '', 5, 2),
(3000, 'Computer Science', 'Algorithm Design Lec', 'As n days in class progresses the difficulty is n factorial', 4, 3),
(3432, 'Computer Science', 'Information Systems', 'DB Shtuff', 4, 4),
(3433, 'Computer Science', 'Information Systems', 'DB Shtuff 2', 4, 3),
(5030, 'Computer Science', 'Senior Project', 'Final Boss ', 5, 5),
(5031, 'Computer Science', 'Senior Project Lab', '', 1, 5);

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
  `OFFICEPHONE` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`NAME`, `CODE`, `OFFICENUM`, `OFFICEPHONE`) VALUES
('Psychology', 3, 2, 2147483647),
('Radiology', 5, 453, 2147483647),
('Computer Science', 34, 1, 1234567891),
('Nursing', 98, 3438, 2147483647),
('Anesthesiology', 234, 3435, 2147483647),
('Genetics', 1023, 343, 2147483647);

-- --------------------------------------------------------

--
-- Table structure for table `faculty`
--

CREATE TABLE IF NOT EXISTS `faculty` (
  `P.SSN` int(9) NOT NULL,
  `RANK` int(11) NOT NULL,
  `FOFFICE` varchar(20) NOT NULL,
  `FPHONE` int(11) NOT NULL,
  `SALARY` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `faculty`
--

INSERT INTO `faculty` (`P.SSN`, `RANK`, `FOFFICE`, `FPHONE`, `SALARY`) VALUES
(46714871, 1, '32', 1247483647, 75000),
(758100659, 1, '32', 1247483648, 10000000),
(777746214, 3, '36', 1235348834, 30000);

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

--
-- Dumping data for table `majorsin`
--

INSERT INTO `majorsin` (`SSN`, `DNAME`) VALUES
(127673588, 'Computer Science'),
(289885832, 'Computer Science'),
(364010088, 'Computer Science'),
(522885124, 'Computer Science'),
(671315440, 'Nursing'),
(547959004, 'Psychology'),
(690549542, 'Radiology'),
(905837514, 'Radiology');

-- --------------------------------------------------------

--
-- Table structure for table `minorsin`
--

CREATE TABLE IF NOT EXISTS `minorsin` (
  `SSN` int(9) NOT NULL,
  `DNAME` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `minorsin`
--

INSERT INTO `minorsin` (`SSN`, `DNAME`) VALUES
(522885124, 'Psychology');

-- --------------------------------------------------------

--
-- Table structure for table `person`
--

CREATE TABLE IF NOT EXISTS `person` (
  `SSN` int(9) NOT NULL,
  `NAME` varchar(20) NOT NULL,
  `ADDRESS` varchar(25) NOT NULL,
  `SEX` varchar(6) NOT NULL,
  `BDATE` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `person`
--

INSERT INTO `person` (`SSN`, `NAME`, `ADDRESS`, `SEX`, `BDATE`) VALUES
(46714871, 'Nathan Fisher', '343 Convex Hull Treaps Re', 'Male', '0000-00-00'),
(127673588, 'Zachary Rzot', '8745 Chrysler Way', 'Male', '1991-10-27'),
(289885832, 'Kelly Malarkey', '73 Outback Rd', 'Male', '1990-11-27'),
(364010088, 'Paavai Sampath', '3434 Lihao Drive', 'Female', '1995-05-19'),
(522885124, 'Summer Sandhu', '0873 Rich Ct', 'Female', '1950-03-20'),
(547959004, 'Carl Smith', '343 Rito Way', 'Male', '1990-04-08'),
(671315440, 'AJ Saclayan', '3498 Briarwood Court', 'Male', '1991-12-28'),
(690549542, 'Van Nguyen', '8349 Really Far Away', 'Male', '1992-03-19'),
(758100659, 'Narandera Goel', '0874 Rich Ct', 'Male', '1900-09-12'),
(777746214, 'Albert Einstein', '45 Vista Way', 'Male', '1900-03-19'),
(905837514, 'Kobe Bryant', '123 Somewhere In LA', 'Male', '1985-03-19');

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
  `SSN` int(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`ST#`, `SSN`) VALUES
(1, 127673588),
(2, 289885832),
(3, 364010088),
(4, 522885124),
(5, 547959004),
(6, 671315440),
(6, 690549542),
(23, 905837514);

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
-- Indexes for table `belongsin`
--
ALTER TABLE `belongsin`
 ADD PRIMARY KEY (`DNAME`,`P.SSN`), ADD KEY `P.SSN` (`P.SSN`);

--
-- Indexes for table `cd`
--
ALTER TABLE `cd`
 ADD PRIMARY KEY (`CNAME`,`DNAME`), ADD KEY `DNAME` (`DNAME`);

--
-- Indexes for table `chairman`
--
ALTER TABLE `chairman`
 ADD PRIMARY KEY (`DNAME`,`P.SSN`), ADD KEY `P.SSN` (`P.SSN`);

--
-- Indexes for table `college`
--
ALTER TABLE `college`
 ADD PRIMARY KEY (`DNAME`), ADD UNIQUE KEY `DCODE` (`DCODE`), ADD UNIQUE KEY `DNAME` (`DNAME`), ADD KEY `CNAME` (`CNAME`);

--
-- Indexes for table `committee`
--
ALTER TABLE `committee`
 ADD PRIMARY KEY (`P.SSN`,`S.ST#`), ADD KEY `S.ST#` (`S.ST#`);

--
-- Indexes for table `course`
--
ALTER TABLE `course`
 ADD PRIMARY KEY (`CNUM`,`CDEPT`), ADD UNIQUE KEY `CNUM` (`CNUM`), ADD UNIQUE KEY `CNUM_2` (`CNUM`), ADD KEY `CDEPT` (`CDEPT`);

--
-- Indexes for table `current_section`
--
ALTER TABLE `current_section`
 ADD PRIMARY KEY (`S.ST#`,`S.SSN`,`SEC.SECNUM`), ADD KEY `SEC.SECNUM` (`SEC.SECNUM`), ADD KEY `S.SSN` (`S.SSN`);

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
-- Indexes for table `grade`
--
ALTER TABLE `grade`
 ADD PRIMARY KEY (`ST#`,`SSN`,`CNUM`), ADD KEY `CNUM` (`CNUM`), ADD KEY `SSN` (`SSN`);

--
-- Indexes for table `grad_students`
--
ALTER TABLE `grad_students`
 ADD PRIMARY KEY (`S.SSN`);

--
-- Indexes for table `grant`
--
ALTER TABLE `grant`
 ADD PRIMARY KEY (`NO`), ADD UNIQUE KEY `NO` (`NO`);

--
-- Indexes for table `instructor_researcher`
--
ALTER TABLE `instructor_researcher`
 ADD PRIMARY KEY (`P.SSN`,`S.SECNUM`), ADD KEY `S.SECNUM` (`S.SECNUM`);

--
-- Indexes for table `majorsin`
--
ALTER TABLE `majorsin`
 ADD PRIMARY KEY (`SSN`,`DNAME`), ADD KEY `DNAME` (`DNAME`);

--
-- Indexes for table `minorsin`
--
ALTER TABLE `minorsin`
 ADD PRIMARY KEY (`SSN`,`DNAME`), ADD KEY `DNAME` (`DNAME`);

--
-- Indexes for table `person`
--
ALTER TABLE `person`
 ADD PRIMARY KEY (`SSN`), ADD UNIQUE KEY `SSN` (`SSN`);

--
-- Indexes for table `pi`
--
ALTER TABLE `pi`
 ADD PRIMARY KEY (`NO`,`P.SSN`), ADD UNIQUE KEY `NO` (`NO`), ADD KEY `P.SSN` (`P.SSN`);

--
-- Indexes for table `registeredin`
--
ALTER TABLE `registeredin`
 ADD PRIMARY KEY (`S.SSN`,`S.ST#`), ADD KEY `S.ST#` (`S.ST#`);

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
 ADD PRIMARY KEY (`ST#`,`SSN`), ADD KEY `SSN` (`SSN`);

--
-- Indexes for table `student_sports`
--
ALTER TABLE `student_sports`
 ADD PRIMARY KEY (`S.SSN`,`PRIMARY`);

--
-- Indexes for table `supports`
--
ALTER TABLE `supports`
 ADD PRIMARY KEY (`NO`,`P.SSN`,`S.SECNUM`), ADD KEY `P.SSN` (`P.SSN`), ADD KEY `S.SECNUM` (`S.SECNUM`);

--
-- Indexes for table `teaches`
--
ALTER TABLE `teaches`
 ADD PRIMARY KEY (`SECNUM`,`P.SSN`), ADD KEY `P.SSN` (`P.SSN`);

--
-- Indexes for table `transcript`
--
ALTER TABLE `transcript`
 ADD PRIMARY KEY (`CNUM`,`SSN`,`ST#`), ADD KEY `SSN` (`SSN`), ADD KEY `ST#` (`ST#`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `belongsin`
--
ALTER TABLE `belongsin`
ADD CONSTRAINT `belongsin_ibfk_1` FOREIGN KEY (`P.SSN`) REFERENCES `faculty` (`P.SSN`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `belongsin_ibfk_2` FOREIGN KEY (`DNAME`) REFERENCES `department` (`NAME`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `cd`
--
ALTER TABLE `cd`
ADD CONSTRAINT `cd_ibfk_1` FOREIGN KEY (`DNAME`) REFERENCES `department` (`NAME`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `chairman`
--
ALTER TABLE `chairman`
ADD CONSTRAINT `chairman_ibfk_1` FOREIGN KEY (`DNAME`) REFERENCES `department` (`NAME`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `chairman_ibfk_2` FOREIGN KEY (`P.SSN`) REFERENCES `faculty` (`P.SSN`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `college`
--
ALTER TABLE `college`
ADD CONSTRAINT `college_ibfk_1` FOREIGN KEY (`CNAME`) REFERENCES `cd` (`CNAME`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `college_ibfk_2` FOREIGN KEY (`DCODE`) REFERENCES `department` (`CODE`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `college_ibfk_3` FOREIGN KEY (`DNAME`) REFERENCES `department` (`NAME`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `committee`
--
ALTER TABLE `committee`
ADD CONSTRAINT `committee_ibfk_1` FOREIGN KEY (`P.SSN`) REFERENCES `student` (`SSN`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `committee_ibfk_2` FOREIGN KEY (`S.ST#`) REFERENCES `student` (`ST#`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `course`
--
ALTER TABLE `course`
ADD CONSTRAINT `course_ibfk_1` FOREIGN KEY (`CDEPT`) REFERENCES `department` (`NAME`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `current_section`
--
ALTER TABLE `current_section`
ADD CONSTRAINT `current_section_ibfk_1` FOREIGN KEY (`SEC.SECNUM`) REFERENCES `section` (`SECNUM`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `current_section_ibfk_2` FOREIGN KEY (`S.SSN`) REFERENCES `registeredin` (`S.SSN`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `current_section_ibfk_3` FOREIGN KEY (`S.ST#`) REFERENCES `registeredin` (`S.ST#`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `faculty`
--
ALTER TABLE `faculty`
ADD CONSTRAINT `faculty_ibfk_1` FOREIGN KEY (`P.SSN`) REFERENCES `person` (`SSN`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `grade`
--
ALTER TABLE `grade`
ADD CONSTRAINT `grade_ibfk_1` FOREIGN KEY (`ST#`) REFERENCES `student` (`ST#`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `grade_ibfk_2` FOREIGN KEY (`CNUM`) REFERENCES `course` (`CNUM`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `grade_ibfk_3` FOREIGN KEY (`SSN`) REFERENCES `person` (`SSN`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `grad_students`
--
ALTER TABLE `grad_students`
ADD CONSTRAINT `grad_students_ibfk_1` FOREIGN KEY (`S.SSN`) REFERENCES `student` (`SSN`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `instructor_researcher`
--
ALTER TABLE `instructor_researcher`
ADD CONSTRAINT `instructor_researcher_ibfk_1` FOREIGN KEY (`S.SECNUM`) REFERENCES `teaches` (`SECNUM`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `majorsin`
--
ALTER TABLE `majorsin`
ADD CONSTRAINT `majorsin_ibfk_1` FOREIGN KEY (`DNAME`) REFERENCES `department` (`NAME`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `majorsin_ibfk_2` FOREIGN KEY (`SSN`) REFERENCES `student` (`SSN`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `minorsin`
--
ALTER TABLE `minorsin`
ADD CONSTRAINT `minorsin_ibfk_1` FOREIGN KEY (`DNAME`) REFERENCES `department` (`NAME`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `minorsin_ibfk_2` FOREIGN KEY (`SSN`) REFERENCES `student` (`SSN`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `pi`
--
ALTER TABLE `pi`
ADD CONSTRAINT `pi_ibfk_1` FOREIGN KEY (`NO`) REFERENCES `grant` (`NO`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `pi_ibfk_2` FOREIGN KEY (`P.SSN`) REFERENCES `faculty` (`P.SSN`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `registeredin`
--
ALTER TABLE `registeredin`
ADD CONSTRAINT `registeredin_ibfk_1` FOREIGN KEY (`S.ST#`) REFERENCES `student` (`ST#`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `staff`
--
ALTER TABLE `staff`
ADD CONSTRAINT `staff_ibfk_1` FOREIGN KEY (`P.SSN`) REFERENCES `faculty` (`P.SSN`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `student`
--
ALTER TABLE `student`
ADD CONSTRAINT `student_ibfk_2` FOREIGN KEY (`SSN`) REFERENCES `person` (`SSN`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `student_sports`
--
ALTER TABLE `student_sports`
ADD CONSTRAINT `student_sports_ibfk_1` FOREIGN KEY (`S.SSN`) REFERENCES `student` (`ST#`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `supports`
--
ALTER TABLE `supports`
ADD CONSTRAINT `supports_ibfk_1` FOREIGN KEY (`NO`) REFERENCES `grant` (`NO`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `supports_ibfk_2` FOREIGN KEY (`P.SSN`) REFERENCES `instructor_researcher` (`P.SSN`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `supports_ibfk_3` FOREIGN KEY (`S.SECNUM`) REFERENCES `instructor_researcher` (`S.SECNUM`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `teaches`
--
ALTER TABLE `teaches`
ADD CONSTRAINT `teaches_ibfk_1` FOREIGN KEY (`SECNUM`) REFERENCES `section` (`SECNUM`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `teaches_ibfk_2` FOREIGN KEY (`P.SSN`) REFERENCES `instructor_researcher` (`P.SSN`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `transcript`
--
ALTER TABLE `transcript`
ADD CONSTRAINT `transcript_ibfk_1` FOREIGN KEY (`CNUM`) REFERENCES `course` (`CNUM`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `transcript_ibfk_2` FOREIGN KEY (`SSN`) REFERENCES `student` (`SSN`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `transcript_ibfk_3` FOREIGN KEY (`ST#`) REFERENCES `student` (`ST#`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
