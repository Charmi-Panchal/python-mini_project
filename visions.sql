-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 01, 2023 at 06:55 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `visions`
--

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `orderno` varchar(255) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `age` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `total` varchar(255) DEFAULT NULL,
  `advance` varchar(255) DEFAULT NULL,
  `balance` varchar(255) DEFAULT NULL,
  `ltype` varchar(255) DEFAULT NULL,
  `fsize` varchar(255) DEFAULT NULL,
  `remarks` varchar(255) DEFAULT NULL,
  `sph1` varchar(255) DEFAULT NULL,
  `sph2` varchar(255) DEFAULT NULL,
  `cyl1` varchar(255) DEFAULT NULL,
  `cyl2` varchar(255) DEFAULT NULL,
  `axis1` varchar(255) DEFAULT NULL,
  `axis2` varchar(255) DEFAULT NULL,
  `add1` varchar(255) DEFAULT NULL,
  `add2` varchar(255) DEFAULT NULL,
  `pd1` varchar(255) DEFAULT NULL,
  `pd2` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`orderno`, `date`, `name`, `phone`, `age`, `gender`, `total`, `advance`, `balance`, `ltype`, `fsize`, `remarks`, `sph1`, `sph2`, `cyl1`, `cyl2`, `axis1`, `axis2`, `add1`, `add2`, `pd1`, `pd2`) VALUES
('1', '0000-00-00', 'rsfd', '1234567890', '12', 'Female', '1200', '100', '1100', 'gsv', 'vfd', 'no', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`username`, `password`) VALUES
('jd', 'Jd@123456');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
