-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 16, 2021 at 02:18 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `library`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_table`
--

CREATE TABLE `admin_table` (
  `admin_id` int(225) NOT NULL,
  `password` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin_table`
--

INSERT INTO `admin_table` (`admin_id`, `password`) VALUES
(101, 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `bookentry`
--

CREATE TABLE `bookentry` (
  `SERIAL` int(30) NOT NULL,
  `RNO` varchar(225) NOT NULL,
  `LGNO` varchar(225) NOT NULL,
  `SUBJECT` varchar(30) NOT NULL,
  `BNAME` varchar(30) NOT NULL,
  `ANAME` varchar(30) NOT NULL,
  `CATEGORY` text NOT NULL,
  `MBID` varchar(30) NOT NULL,
  `PUBLISHER` varchar(30) NOT NULL,
  `PRICE` int(30) NOT NULL,
  `DATE` varchar(225) NOT NULL,
  `STATUS` varchar(30) NOT NULL,
  `BARCODE` int(30) NOT NULL,
  `QUANTITY` int(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bookentry`
--

INSERT INTO `bookentry` (`SERIAL`, `RNO`, `LGNO`, `SUBJECT`, `BNAME`, `ANAME`, `CATEGORY`, `MBID`, `PUBLISHER`, `PRICE`, `DATE`, `STATUS`, `BARCODE`, `QUANTITY`) VALUES
(3423, '43242', '324234', 'hfghfh', 'abc', 'fdggdf', 'COMPUTER SCEIENCE', '45', '456', 564, '2020-09-12', 'ghfgh', 6456, 0),
(8, '3', '3', 'fdsgsdg', 'sdfgsfd', 'sdfgsfd', 'COMPUTER SCEIENCE', '0', 'sdf', 101, '2020-12-09', 'inactive', 0, 100),
(12, '4', '12345', 'wdsa', 'asfd', 'adsfasdf', 'COMPUTER SCEIENCE', '1234', 'efdasd', 51, '2020-12-23', 'inactive', 123, 0),
(1, 'R43DM012', 'L1800', 'DATA MINING', 'MINING OF MASSIVE DATASETS', 'AKASH', 'COMPUTER SCEIENCE', 'M1', 'AKASH', 500, '2020-12-22', 'inactive', 1, 9),
(2, 'R43DM043', 'L1843', 'DATA MINING', 'A PROGRAMMERS GUIDE TO DATA MI', 'RON ZACHARSKI', 'COMPUTER SCEIENCE', 'M2', 'AKASH', 500, '2020-12-22', 'inactive', 2, 0),
(3, 'R43DM036', 'L2074', 'DATA MINING', 'DATA SCIENCE FOR BUSINESS', 'FOSTER PROVOST', 'COMPUTER SCEIENCE', 'M3', 'AKASH', 500, '2020-12-22', 'active', 3, 0),
(4, 'R43DM019', 'L2076', 'DATA MINING', 'INTRODUCTION TO DATA MINIG', 'VIPIN KUMAR', 'COMPUTER SCEIENCE', 'M4', 'AKASH', 500, '2020-12-22', 'inactive', 4, 0),
(5, 'R43DM023', 'L2080', 'DATA MINING', 'DATA MINIG CONCEPT AND TECHNIC', 'JIAWEIHAN', 'COMPUTER SCEIENCE', 'M5', 'AKASH', 500, '2020-12-22', 'inactive', 5, 0),
(6, 'R43DM037', 'L2075', 'DATA MINING', 'MINING THE SOCIAL WEB', 'MATTHEW A.RUSSELL', 'COMPUTER SCEIENCE', 'M6', 'AKASH', 500, '2020-12-22', 'active', 6, 0),
(7, 'R43DM013', 'L1803', 'DATA MINING', 'DATA MINING THE TEXT BOOK', 'CHARU C.AGARWAL', 'COMPUTER SCEIENCE', 'M7', 'AKASH', 500, '2020-12-22', 'active', 7, 0),
(8, 'R43DM024', 'L2081', 'DATA MINING', 'DATA MINING PRACTICAL MACHINE ', 'MARK A.HALL', 'COMPUTER SCEIENCE', 'M8', 'AKASH', 500, '2020-12-22', 'inactive', 8, 0),
(9, 'R43DM016', 'L2073', 'DATA MINING', 'DATA MINING AND ANALYSIS', 'MOHAMMED J.ZAKI', 'COMPUTER SCEIENCE', 'M9', 'AKASH', 500, '2020-12-22', 'active', 9, 0),
(10, 'R43DM015', 'L2072', 'DATA MINING', 'DATA MINING TECHNICS', 'MICHEAL  J.A.BERRY', 'COMPUTER SCEIENCE', 'M10', 'AKASH', 500, '2020-12-22', 'active', 10, 0),
(11, 'R11JAVA016', 'L1001', 'JAVA', 'CORE JAVA', 'CAYS.HORSTMANN', 'COMPUTER SCEIENCE', 'M11', 'AKASH', 500, '2020-12-22', 'active', 11, 0),
(12, 'R11JAVA010', 'L0932', 'JAVA', 'JAVA BEGGINERS GUIDE', 'HERBERT SCHILDT', 'COMPUTER SCEIENCE', 'M12', 'AKASH', 500, '2020-12-22', 'active', 12, 0),
(13, 'R11JAVA018', 'L1011', 'JAVA', 'JAVA THE COMPLETE REFERENCE', 'HERBERT SCHILDT', 'COMPUTER SCEIENCE', 'M13', 'AKASH', 500, '2020-12-22', 'active', 13, 0),
(14, 'R11JAVA019', 'L1051', 'JAVA', 'JAVA PERFORMENCE  THE DEFINITE', 'SCOTT OAKS', 'COMPUTER SCEIENCE', 'M14', 'AKASH', 500, '2020-12-22', 'active', 14, 0),
(15, 'R11JAVA022', 'L1046', 'JAVA', 'JAVA CONCURRENCY IN PRACTICE', 'BRIAN GOETZ', 'COMPUTER SCEIENCE', 'M15', 'AKASH', 500, '2020-12-22', 'active', 15, 0),
(16, 'R11JAVA014', 'L0973', 'JAVA', 'HEAD FIRST JAVA', 'KATHY SIERRA', 'COMPUTER SCEIENCE', 'M16', 'AKASH', 500, '2020-12-22', 'active', 16, 0),
(17, 'R11JAVA0126', 'L1125', 'JAVA', 'EFFECTIVE JAVA', 'JOSHUA BLOCH', 'COMPUTER SCEIENCE', 'M17', 'AKASH', 500, '2020-12-22', 'active', 17, 0),
(18, 'R11JAVA027', 'L1151', 'JAVA', 'JAVA IN NUTSHELL', 'DAVID FLANAGAN', 'COMPUTER SCEIENCE', 'M18', 'AKASH', 500, '2020-12-22', 'active', 18, 0),
(19, 'R11JAVA009', 'L0855', 'JAVA', 'THINKING IN JAVA', 'BRUCEE ECKEL', 'COMPUTER SCEIENCE', 'M19', 'AKASH', 500, '2020-12-22', 'active', 19, 0),
(20, 'R11JAVA015', 'L0977', 'JAVA', 'JAVA 8 LANGUAGE FEATURES', 'KISHORI SHARAN', 'COMPUTER SCEIENCE', 'M20', 'AKASH', 500, '2020-12-22', 'active', 20, 0),
(1, 'R43DM0120', 'L18001', 'DATA MINING', 'DATAMINING1', 'AKASH', 'COMPUTER SCEIENCE', 'M87', 'AKASH', 500, '2020-12-04', 'active', 6, 0),
(1, '101', '1001', 'website', 'wordpress', 'owner', 'GIFT', '201', 'wepage', 200, '2020-12-09', 'active', 501, 0);

-- --------------------------------------------------------

--
-- Table structure for table `bookissue`
--

CREATE TABLE `bookissue` (
  `bookIssueId` int(11) NOT NULL,
  `userId` varchar(255) NOT NULL,
  `bookLNo` varchar(255) NOT NULL,
  `userName` varchar(255) NOT NULL,
  `bookName` varchar(255) NOT NULL,
  `authorName` varchar(255) NOT NULL,
  `issueDate` varchar(255) NOT NULL,
  `dueDate` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `rack` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bookissue`
--

INSERT INTO `bookissue` (`bookIssueId`, `userId`, `bookLNo`, `userName`, `bookName`, `authorName`, `issueDate`, `dueDate`, `status`, `rack`) VALUES
(32, 'y2', 'd2', 'jnjn', 'CG', 'andre', '08-12-2020', '07-01-2021', 'inactive', '1'),
(33, 'y2', 'd1', 'jnjn', 'Database Management System', 'Paul', '08-12-2020', '07-01-2021', 'inactive', '1'),
(34, 'y2', 'd3', 'jnjn', 'DIP', 'tffg', '08-12-2020', '07-01-2021', 'active', '2'),
(35, 'y2', 'd2', 'jnjn', 'CG', 'andre', '08-12-2020', '07-01-2021', 'active', '1'),
(37, '123456', '12345', 'santhosh', 'asfd', 'adsfasdf', '21-12-2020', '20-01-2021', 'inactive', '4'),
(38, '123456', '12345', 'santhosh', 'asfd', 'adsfasdf', '21-12-2020', '20-01-2021', 'inactive', '4'),
(39, '1234', '12345', 'INBA S', 'asfd', 'adsfasdf', '22-12-2020', '21-01-2021', 'inactive', '4'),
(40, '1234', '12345', 'INBA S', 'asfd', 'adsfasdf', '22-12-2020', '21-01-2021', 'active', '4'),
(41, '123456', 'L1800', 'santhosh', 'MINING OF MASSIVE DATASETS', 'AKASH', '22-12-2020', '21-01-2021', 'inactive', 'R43DM012'),
(42, '123456', 'L1800', 'santhosh', 'MINING OF MASSIVE DATASETS', 'AKASH', '23-12-2020', '22-01-2021', 'active', 'R43DM012'),
(43, '123456', 'L1843', 'santhosh', 'A PROGRAMMERS GUIDE TO DATA MI', 'RON ZACHARSKI', '23-12-2020', '22-01-2021', 'active', 'R43DM043'),
(44, '123456', 'L2076', 'santhosh', 'INTRODUCTION TO DATA MINIG', 'VIPIN KUMAR', '23-12-2020', '22-01-2021', 'active', 'R43DM019'),
(45, '1234', 'L2074', 'INBA S', 'DATA SCIENCE FOR BUSINESS', 'FOSTER PROVOST', '11-01-2021', '10-02-2021', 'inactive', 'R43DM036'),
(46, '1234', 'L2080', 'INBA S', 'DATA MINIG CONCEPT AND TECHNIC', 'JIAWEIHAN', '11-01-2021', '10-02-2021', 'active', 'R43DM023'),
(47, '1234', 'L2081', 'INBA S', 'DATA MINING PRACTICAL MACHINE', 'MARK A.HALL', '11-01-2021', '10-02-2021', 'active', 'R43DM024');

-- --------------------------------------------------------

--
-- Table structure for table `bookrecord`
--

CREATE TABLE `bookrecord` (
  `bookid` varchar(250) NOT NULL,
  `bookname` varchar(250) NOT NULL,
  `bookpubname` varchar(250) NOT NULL,
  `bookpubyear` varchar(250) NOT NULL,
  `bookprice` int(250) NOT NULL,
  `bookquantity` int(250) NOT NULL,
  `recorddate` int(250) NOT NULL,
  `QUANTITY` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bookrecord`
--

INSERT INTO `bookrecord` (`bookid`, `bookname`, `bookpubname`, `bookpubyear`, `bookprice`, `bookquantity`, `recorddate`, `QUANTITY`) VALUES
('L1046', 'JAVA CONCURRENCY IN PRACTICE', 'AKASH', '2020-12-22', 500, 1, 23, 0);

-- --------------------------------------------------------

--
-- Table structure for table `bookreturn`
--

CREATE TABLE `bookreturn` (
  `bookReturnId` int(11) NOT NULL,
  `userId` varchar(255) NOT NULL,
  `bookLNo` varchar(255) NOT NULL,
  `issueDate` varchar(255) NOT NULL,
  `dueDate` varchar(255) NOT NULL,
  `returnDate` varchar(255) NOT NULL,
  `remark` varchar(255) NOT NULL,
  `penalty` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bookreturn`
--

INSERT INTO `bookreturn` (`bookReturnId`, `userId`, `bookLNo`, `issueDate`, `dueDate`, `returnDate`, `remark`, `penalty`) VALUES
(1, '43', '7', '27-11-2020', '27-12-2020', '27-11-2020', 'Nil', ''),
(2, 'z', 'd1', '07-12-2020', '06-01-2021', '07-12-2020', 'Nil', ''),
(3, 'y2', 'd2', '08-12-2020', '07-01-2021', '08-12-2020', 'Nil', ''),
(4, 'y2', 'd1', '08-12-2020', '07-01-2021', '08-12-2020', 'Nil', ''),
(5, '123456', '12345', '21-12-2020', '20-01-2021', '21-12-2020', 'Nil', ''),
(6, '123456', '12345', '21-12-2020', '20-01-2021', '21-12-2020', 'Nil', ''),
(7, '1234', '12345', '22-12-2020', '21-01-2021', '22-12-2020', 'Nil', ''),
(8, '123456', 'L1800', '22-12-2020', '21-01-2021', '22-12-2020', 'Nil', ''),
(9, '1234', 'L2074', '11-01-2021', '10-02-2021', '11-01-2021', 'Nil', '');

-- --------------------------------------------------------

--
-- Table structure for table `book_issue`
--

CREATE TABLE `book_issue` (
  `bookIssueId` int(225) NOT NULL,
  `userId` varchar(225) NOT NULL,
  `bookLNo` varchar(225) NOT NULL,
  `username` varchar(225) NOT NULL,
  `bookName` varchar(225) NOT NULL,
  `authorName` varchar(225) NOT NULL,
  `issueDate` varchar(225) NOT NULL,
  `status` varchar(225) NOT NULL,
  `rack` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `book_issue`
--

INSERT INTO `book_issue` (`bookIssueId`, `userId`, `bookLNo`, `username`, `bookName`, `authorName`, `issueDate`, `status`, `rack`) VALUES
(1, '16', '12345', 'abcd', 'asfd', 'adsfasdf', '22-12-2020', 'inactive', '4'),
(2, '2020', 'L1800', 'abcd', 'MINING OF MASSIVE DATASETS', 'AKASH', '22-12-2020', 'inactive', 'R43DM012');

-- --------------------------------------------------------

--
-- Table structure for table `book_issue_guest`
--

CREATE TABLE `book_issue_guest` (
  `bookIssueId` int(11) NOT NULL,
  `userId` varchar(255) NOT NULL,
  `userName` varchar(255) NOT NULL,
  `bookLNo` varchar(255) NOT NULL,
  `bookName` varchar(255) NOT NULL,
  `authorName` varchar(255) NOT NULL,
  `issueDate` varchar(255) NOT NULL,
  `dueDate` varchar(255) NOT NULL,
  `Dept_Name` varchar(255) NOT NULL,
  `Desigination` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `rack` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `book_return`
--

CREATE TABLE `book_return` (
  `bookReturnID` int(255) NOT NULL,
  `UserId` varchar(255) NOT NULL,
  `bookLNo` varchar(255) NOT NULL,
  `issueDate` varchar(255) NOT NULL,
  `returnDate` varchar(255) NOT NULL,
  `remark` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `book_return`
--

INSERT INTO `book_return` (`bookReturnID`, `UserId`, `bookLNo`, `issueDate`, `returnDate`, `remark`) VALUES
(1, '16', '12345', '22-12-2020', '22-12-2020', 'Nil'),
(2, '2020', 'L1800', '22-12-2020', '22-12-2020', 'Nil');

-- --------------------------------------------------------

--
-- Table structure for table `book_return_guest`
--

CREATE TABLE `book_return_guest` (
  `bookReturnId` int(11) NOT NULL,
  `userId` varchar(255) NOT NULL,
  `bookLNo` varchar(255) NOT NULL,
  `issueDate` varchar(255) NOT NULL,
  `dueDate` varchar(255) NOT NULL,
  `returnDate` varchar(255) NOT NULL,
  `remark` varchar(255) NOT NULL,
  `penalty` varchar(255) NOT NULL,
  `Dept_Name` varchar(255) NOT NULL,
  `Desigination` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `guest_signup`
--

CREATE TABLE `guest_signup` (
  `guestSignupId` int(11) NOT NULL,
  `UserId` varchar(255) NOT NULL,
  `Full_Name` varchar(255) NOT NULL,
  `contact_no` varchar(255) NOT NULL,
  `DOB` varchar(255) NOT NULL,
  `Desigination` varchar(255) NOT NULL,
  `Dept_Name` varchar(255) NOT NULL,
  `mail_id` varchar(255) NOT NULL,
  `Password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `missingbook`
--

CREATE TABLE `missingbook` (
  `SERIAL` int(20) NOT NULL,
  `RNO` varchar(50) NOT NULL,
  `LGNO` varchar(50) NOT NULL,
  `SUBJECT` varchar(50) NOT NULL,
  `BNAME` varchar(30) NOT NULL,
  `ANAME` varchar(40) NOT NULL,
  `CATEGORY` text NOT NULL,
  `MBID` varchar(30) NOT NULL,
  `PUBLISHER` varchar(30) NOT NULL,
  `PRICE` int(40) NOT NULL,
  `DATE` varchar(30) NOT NULL,
  `STATUS` varchar(30) NOT NULL,
  `BARCODE` int(30) NOT NULL,
  `QUANTITY` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `missingbook`
--

INSERT INTO `missingbook` (`SERIAL`, `RNO`, `LGNO`, `SUBJECT`, `BNAME`, `ANAME`, `CATEGORY`, `MBID`, `PUBLISHER`, `PRICE`, `DATE`, `STATUS`, `BARCODE`, `QUANTITY`) VALUES
(1, '111', '1111', 'mca', 'wordpress', 'owner', 'COMPUTER SCEIENCE', '888', 'wepage', 666, '2020-12-30', 'active', 333, 0);

-- --------------------------------------------------------

--
-- Table structure for table `sta_signup`
--

CREATE TABLE `sta_signup` (
  `user_id` int(225) NOT NULL,
  `FULL_NAME` varchar(225) NOT NULL,
  `DoB` varchar(225) NOT NULL,
  `CONTACT_NO` varchar(225) NOT NULL,
  `MAIL_ID` varchar(225) NOT NULL,
  `DESIGINATION` varchar(225) NOT NULL,
  `PASSWORD` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sta_signup`
--

INSERT INTO `sta_signup` (`user_id`, `FULL_NAME`, `DoB`, `CONTACT_NO`, `MAIL_ID`, `DESIGINATION`, `PASSWORD`) VALUES
(14, 'santhosh', '2020-10-23', '789', 'sdgs@gmail.com', 'ASSOCIATE PROFESSOR', 'dcs'),
(16, 'abcd', '1994-12-07', '1234567890', 'dsfsg@gmail.com', 'PROFESSOR', 'dcs'),
(21, 'acf', '2020-12-01', '8654752136', 'bfhbfsah@gmail.com', 'HOD', 'dcs'),
(1234, 'abcde', '1997-11-30', '45464734', 'zsfsdfsg@gmail.com', 'ASSOCIATE PROFESSOR', 'dcs'),
(2020, 'abcd', '1975-06-29', '8654752136', 'abcd@gmail.com', 'PROFESSOR', 'dcs');

-- --------------------------------------------------------

--
-- Table structure for table `st_signup`
--

CREATE TABLE `st_signup` (
  `UserId` int(225) NOT NULL,
  `Full_Name` varchar(225) NOT NULL,
  `DOB` varchar(225) NOT NULL,
  `Register_no` varchar(225) NOT NULL,
  `contact_no` varchar(225) NOT NULL,
  `mail_id` varchar(225) NOT NULL,
  `course` varchar(225) NOT NULL,
  `batch` varchar(100) NOT NULL,
  `password` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `st_signup`
--

INSERT INTO `st_signup` (`UserId`, `Full_Name`, `DOB`, `Register_no`, `contact_no`, `mail_id`, `course`, `batch`, `password`) VALUES
(12, 'sanr', '2021-01-02', '3681920', '265988988', 'msdrajesh94@mail.com', 'M.Phil', '2021-2022', 'dcs'),
(15, 'santhosh', '2020-08-03', '123456', '2655988874', 'njhgd@gmail.com', 'Ph.d', '2019-2020', 'dcs'),
(30, 'ajith', '1998-09-23', '3681922', '9878985625', 'ajith@gmail.com', 'MCA REGULAR', '2019-2022', 'dcs'),
(40, 'INBA S', '1999-07-19', '1234', '8965515854', 'inba@gmail.com', 'M.Phil', '2021-2022', 'dcs'),
(123, 'prasanth', '1999-01-23', '3681920', '6398785414', 'prasanth@gmail.com', 'M.SC COMPUTER SCIENCE', '2019-2021', 'dcs'),
(321, 'saaa', '1995-12-01', '1234567', '1234567890', 'mhfrt@gmail.com', 'M.SC COMPUTER SCIENCE', '2019-2022', 'dcs'),
(1234, 'sandy', '2020-12-16', '36819019', '26487878', 'nsfahf@gmail.com', 'M.SC COMPUTER SCIENCE', '2021-2022', 'dcs');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_table`
--
ALTER TABLE `admin_table`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `bookissue`
--
ALTER TABLE `bookissue`
  ADD PRIMARY KEY (`bookIssueId`);

--
-- Indexes for table `bookreturn`
--
ALTER TABLE `bookreturn`
  ADD PRIMARY KEY (`bookReturnId`);

--
-- Indexes for table `book_issue`
--
ALTER TABLE `book_issue`
  ADD PRIMARY KEY (`bookIssueId`);

--
-- Indexes for table `book_issue_guest`
--
ALTER TABLE `book_issue_guest`
  ADD PRIMARY KEY (`bookIssueId`);

--
-- Indexes for table `book_return`
--
ALTER TABLE `book_return`
  ADD PRIMARY KEY (`bookReturnID`);

--
-- Indexes for table `book_return_guest`
--
ALTER TABLE `book_return_guest`
  ADD PRIMARY KEY (`bookReturnId`);

--
-- Indexes for table `guest_signup`
--
ALTER TABLE `guest_signup`
  ADD PRIMARY KEY (`guestSignupId`);

--
-- Indexes for table `sta_signup`
--
ALTER TABLE `sta_signup`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `st_signup`
--
ALTER TABLE `st_signup`
  ADD PRIMARY KEY (`UserId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_table`
--
ALTER TABLE `admin_table`
  MODIFY `admin_id` int(225) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;

--
-- AUTO_INCREMENT for table `bookissue`
--
ALTER TABLE `bookissue`
  MODIFY `bookIssueId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `bookreturn`
--
ALTER TABLE `bookreturn`
  MODIFY `bookReturnId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `book_issue`
--
ALTER TABLE `book_issue`
  MODIFY `bookIssueId` int(225) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `book_issue_guest`
--
ALTER TABLE `book_issue_guest`
  MODIFY `bookIssueId` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `book_return`
--
ALTER TABLE `book_return`
  MODIFY `bookReturnID` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `book_return_guest`
--
ALTER TABLE `book_return_guest`
  MODIFY `bookReturnId` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `guest_signup`
--
ALTER TABLE `guest_signup`
  MODIFY `guestSignupId` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sta_signup`
--
ALTER TABLE `sta_signup`
  MODIFY `user_id` int(225) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=123456790;

--
-- AUTO_INCREMENT for table `st_signup`
--
ALTER TABLE `st_signup`
  MODIFY `UserId` int(225) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12370;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
