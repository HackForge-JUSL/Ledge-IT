-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 30, 2023 at 06:56 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `vote`
--

-- --------------------------------------------------------

--
-- Table structure for table `adhaar`
--

CREATE TABLE `adhaar` (
  `adhaarno` varchar(12) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `DateofBirth` date NOT NULL,
  `Age` int(11) NOT NULL,
  `Contactno` varchar(10) NOT NULL,
  `State` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `adhaar`
--

INSERT INTO `adhaar` (`adhaarno`, `Name`, `DateofBirth`, `Age`, `Contactno`, `State`) VALUES
('123456789654', 'Ajay Singh', '2010-03-10', 13, '78941', 'WB'),
('123496567854', 'Vivek Shaw', '2008-07-25', 14, '16514', 'Bihar'),
('212316544421', 'Tiasha Ghosh', '2003-03-10', 20, '7890000210', 'Jharkhand'),
('212442131654', 'Saurabh Patel', '1993-04-30', 30, '7890021000', 'Assam'),
('212443165421', 'Gaurab Mukherjee', '1996-01-09', 27, '7890021000', 'Jharkhand'),
('284320358299', 'Rakesh Saha', '1995-04-18', 28, '89865', 'WB'),
('284329920358', 'Pratik Roy', '2002-11-02', 20, '8420716107', 'WB'),
('285923483029', 'Priyanshu Giri', '2001-09-01', 21, '8420716107', 'Maharastra'),
('302928592348', 'Plabon Nath', '2009-03-23', 13, '16514', 'Jharkhand'),
('415664687452', 'Debosmita Sarkar', '2003-01-08', 21, '7890000210', 'Assam'),
('468645137351', 'Kaustav Mandal', '1995-04-06', 27, '7890000210', 'Bihar'),
('521566413347', 'Anusha mandal', '2003-04-04', 19, '7890000210', 'WB'),
('567896123454', 'Rajesh Ganguly', '1994-04-01', 31, '7894165454', 'Jharkhand'),
('920358284329', 'Poulami Das', '2002-08-19', 20, '8420716107', 'Assam'),
('923482853029', 'Arijit Dasgupta', '2002-05-11', 20, '8420716107', 'Jharkhand');

-- --------------------------------------------------------

--
-- Table structure for table `chatbot`
--

CREATE TABLE `chatbot` (
  `Name` varchar(50) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Phone` int(20) NOT NULL,
  `Problem` varchar(500) NOT NULL,
  `Date & Time` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `chatbot`
--

INSERT INTO `chatbot` (`Name`, `Email`, `Phone`, `Problem`, `Date & Time`) VALUES
('BISWAJIT DASGUPTA', 'ari11d@gmail.com', 94332467, 'prob', '2023-04-23 04:53:11'),
('Arijit Dasgupta', 'arij11d@gmail.com', 7800210, 'hi', '2023-04-23 10:32:17'),
('Arijit Dasgupta', 'arijit11d@gmail.com', 2147483647, 'hi', '2023-04-22 19:08:40'),
('BISWAJIT DASGUPTA', 'bis@gmail.com', 2147483647, 'prob', '2023-04-23 01:38:12'),
('hello', 'hhh@n.com', 897854, 'big problem', '2023-04-08 20:36:59');

-- --------------------------------------------------------

--
-- Table structure for table `voters`
--

CREATE TABLE `voters` (
  `votern` varchar(10) NOT NULL,
  `adhaarno` varchar(12) NOT NULL,
  `Name` varchar(40) NOT NULL,
  `Contactno` varchar(10) NOT NULL,
  `State` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `voters`
--

INSERT INTO `voters` (`votern`, `adhaarno`, `Name`, `Contactno`, `State`) VALUES
('arijit11', '923482853029', 'Arijit Dasgupta', '7890000210', 'Jharkhand'),
('C345R1', '567896123454', 'Rajesh Ganguly', '488464', 'Jharkhand'),
('D456W2', '284320358299', 'Rakesh Saha', '458488', 'WB'),
('debo25', '415664687452', 'Debosmita Sarkar', '7894156454', 'Assam'),
('G234T1', '212442131654', 'Saurabh Patel', '31511', 'Assam'),
('kaust21', '468645137351', 'Kaustav Mandal', '7890002010', 'Bihar'),
('polo19', '920358284329', 'Poulami Das', '7890000210', 'Assam'),
('pratik02', '284329920358', 'Pratik Roy', '8420716107', 'WB'),
('priy44', '285923483029', 'Priyanshu Giri', '74568', 'Maharastra'),
('tia17', '212316544421', 'Tiasha Ghosh', '7894156454', 'Jharkhand'),
('Y567V2', '212443165421', 'Gaurab Mukherjee', '45210', 'Jharkhand');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `adhaar`
--
ALTER TABLE `adhaar`
  ADD PRIMARY KEY (`adhaarno`);

--
-- Indexes for table `chatbot`
--
ALTER TABLE `chatbot`
  ADD PRIMARY KEY (`Email`,`Phone`);

--
-- Indexes for table `voters`
--
ALTER TABLE `voters`
  ADD PRIMARY KEY (`votern`),
  ADD KEY `adhaarno` (`adhaarno`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `voters`
--
ALTER TABLE `voters`
  ADD CONSTRAINT `voters_ibfk_1` FOREIGN KEY (`adhaarno`) REFERENCES `adhaar` (`adhaarno`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
