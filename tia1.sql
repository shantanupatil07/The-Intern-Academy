-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 23, 2021 at 06:33 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tia1`
--

-- --------------------------------------------------------

--
-- Table structure for table `tiao`
--

CREATE TABLE `tiao` (
  `name` char(20) NOT NULL,
  `phone` bigint(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `working` varchar(15) NOT NULL,
  `linkedin` varchar(20) DEFAULT NULL,
  `instagram` varchar(10) DEFAULT NULL,
  `blog` text NOT NULL,
  `category` char(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tiao`
--

INSERT INTO `tiao` (`name`, `phone`, `email`, `working`, `linkedin`, `instagram`, `blog`, `category`) VALUES
('shantanu patil', 9898989898, 'shantanu@outlook.com', 'shinsoft', 'shantanu_patil07', 'shantanu07', 'WHAT IS \"IOT\"\r\nThe Internet of Things (IoT) describes the network of physical objects—“things”—that are embedded with sensors, software, and other technologies for the purpose of connecting and exchanging data with other devices and systems over the internet. These devices range from ordinary household objects to sophisticated industrial tools. With more than 7 billion connected IoT devices today, experts are expecting this number to grow to 10 billion by 2020 and 22 billion by 2025.Enter Your Blog Here', 'tech');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tiao`
--
ALTER TABLE `tiao`
  ADD PRIMARY KEY (`phone`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
