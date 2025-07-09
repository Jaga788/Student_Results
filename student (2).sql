-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 25, 2025 at 09:22 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `student`
--

-- --------------------------------------------------------

--
-- Table structure for table `1-1_mid-1`
--

CREATE TABLE `1-1_mid-1` (
  `RegisterNo` varchar(10) NOT NULL,
  `Basic EEE` int(10) NOT NULL,
  `Introduction to programming` int(10) NOT NULL,
  `linear algebra` int(10) NOT NULL,
  `Physics` int(10) NOT NULL,
  `English` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `1-1_mid-1`
--

INSERT INTO `1-1_mid-1` (`RegisterNo`, `Basic EEE`, `Introduction to programming`, `linear algebra`, `Physics`, `English`) VALUES
('23B95A0538', 25, 30, 29, 27, 15),
('23B95A0508', 28, 25, 30, 20, 30),
('23B95A0533', 30, 25, 20, 28, 30),
('23B95A0537', 25, 28, 30, 26, 29),
('23B95A0501', 25, 28, 30, 29, 24);

-- --------------------------------------------------------

--
-- Table structure for table `1-1_mid-2`
--

CREATE TABLE `1-1_mid-2` (
  `RegisterNo` varchar(10) NOT NULL,
  `Basic EEE` int(11) DEFAULT NULL,
  `Introduction to programming` int(5) DEFAULT NULL,
  `linear algebra` int(5) DEFAULT NULL,
  `Physics` int(5) DEFAULT NULL,
  `English` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `1-1_mid-2`
--

INSERT INTO `1-1_mid-2` (`RegisterNo`, `Basic EEE`, `Introduction to programming`, `linear algebra`, `Physics`, `English`) VALUES
('23B95A0538', 28, 27, 30, 20, 28),
('23B95A0533', 25, 28, 30, 30, 30),
('23B95A0501', 20, 21, 25, 30, 28);

-- --------------------------------------------------------

--
-- Table structure for table `1-1_sem`
--

CREATE TABLE `1-1_sem` (
  `RegisterNo` varchar(10) NOT NULL,
  `english` varchar(5) NOT NULL,
  `Linear Algebra` varchar(5) NOT NULL,
  `physics` varchar(5) NOT NULL,
  `BEEE` varchar(5) NOT NULL,
  `Introduction to programming` varchar(5) NOT NULL,
  `IT workshop` varchar(5) NOT NULL,
  `Physics lab` varchar(5) NOT NULL,
  `BEEE lab` varchar(5) NOT NULL,
  `computer programming lab` varchar(5) NOT NULL,
  `SGPA` decimal(4,2) DEFAULT NULL,
  `CGPA` decimal(4,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `1-1_sem`
--

INSERT INTO `1-1_sem` (`RegisterNo`, `english`, `Linear Algebra`, `physics`, `BEEE`, `Introduction to programming`, `IT workshop`, `Physics lab`, `BEEE lab`, `computer programming lab`, `SGPA`, `CGPA`) VALUES
('23B95A0538', 'A', 'C', 'B', 'A+', 'C', 'D', 'A', 'A+', 'B', 9.10, 8.80),
('23B95A0501', 'A', 'B', 'D', 'A+', 'C', 'D', 'A+', 'A+', 'A+', 8.15, 8.50);

-- --------------------------------------------------------

--
-- Table structure for table `1-2_mid-1`
--

CREATE TABLE `1-2_mid-1` (
  `RegisterNo` varchar(10) NOT NULL,
  `vector calculus` int(5) NOT NULL,
  `chemistry` int(5) NOT NULL,
  `BC&ME` int(5) NOT NULL,
  `Engineering Graphics` int(5) NOT NULL,
  `Data Structures` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `1-2_mid-1`
--

INSERT INTO `1-2_mid-1` (`RegisterNo`, `vector calculus`, `chemistry`, `BC&ME`, `Engineering Graphics`, `Data Structures`) VALUES
('23B95A0538', 25, 30, 26, 27, 20);

-- --------------------------------------------------------

--
-- Table structure for table `1-2_mid-2`
--

CREATE TABLE `1-2_mid-2` (
  `RegisterNo` varchar(10) NOT NULL,
  `vector calculus` int(5) NOT NULL,
  `chemistry` int(5) NOT NULL,
  `BC&ME` int(5) NOT NULL,
  `Engineering Graphics` int(5) NOT NULL,
  `Data Structures` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `1-2_mid-2`
--

INSERT INTO `1-2_mid-2` (`RegisterNo`, `vector calculus`, `chemistry`, `BC&ME`, `Engineering Graphics`, `Data Structures`) VALUES
('23B95A0538', 25, 28, 30, 26, 29);

-- --------------------------------------------------------

--
-- Table structure for table `1-2_sem`
--

CREATE TABLE `1-2_sem` (
  `RegisterNo` varchar(10) NOT NULL,
  `vector calculus` varchar(5) NOT NULL,
  `chemistry` varchar(5) NOT NULL,
  `BC&ME` varchar(5) NOT NULL,
  `Engineering Graphics` varchar(5) NOT NULL,
  `Data Structures` varchar(5) NOT NULL,
  `Chemistry lab` varchar(5) NOT NULL,
  `Engineering workshop` varchar(5) NOT NULL,
  `Data Structures lab` varchar(5) NOT NULL,
  `Communicative English lab` varchar(5) NOT NULL,
  `Health Yoga` varchar(5) NOT NULL,
  `SGPA` float NOT NULL,
  `CGPA` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `1-2_sem`
--

INSERT INTO `1-2_sem` (`RegisterNo`, `vector calculus`, `chemistry`, `BC&ME`, `Engineering Graphics`, `Data Structures`, `Chemistry lab`, `Engineering workshop`, `Data Structures lab`, `Communicative English lab`, `Health Yoga`, `SGPA`, `CGPA`) VALUES
('23B95A0538', 'B', 'A', 'A+', 'D', 'B', 'A', 'A+', 'A+', 'A+', 'Y', 8.17, 8.517);

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE `registration` (
  `Name` varchar(50) NOT NULL,
  `RegisterNo` varchar(10) NOT NULL,
  `Username` varchar(20) NOT NULL,
  `Password` varchar(20) NOT NULL,
  `Branch` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `registration`
--

INSERT INTO `registration` (`Name`, `RegisterNo`, `Username`, `Password`, `Branch`) VALUES
('Jagadeesh', '23B95A0538', 'jaga@123', 'Jaga', 'cse'),
('Deva', '23B95A0508', 'deva@123', 'deva', 'cse'),
('Narayana', '23B95A0533', 'Nara@123', 'Narayana', 'cse'),
('Gopi', '23B95A0514', 'Gopi@123', 'Gopi', 'cse'),
('Aakash', '23B95A0535', 'Aakash@123', 'Aakash123', 'cse'),
('Satya', '23B95A0515', 'Satya@123', 'Satya', 'cse'),
('William', '23B95A0537', 'Will@123', 'Will', 'cse');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
