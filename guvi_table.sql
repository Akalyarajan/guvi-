-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 28, 2023 at 09:44 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `guvi database`
--

-- --------------------------------------------------------

--
-- Table structure for table `guvi table`
--

CREATE TABLE `guvi table` (
  `First name` varchar(255) NOT NULL,
  `Last name` varchar(255) NOT NULL,
  `Email id` varchar(255) NOT NULL,
  `Password` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `guvi table`
--

INSERT INTO `guvi table` (`First name`, `Last name`, `Email id`, `Password`) VALUES
('Akalya', 'Rajan', 'akalyarajan2002@gmail.com', 1234);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `guvi table`
--
ALTER TABLE `guvi table`
  ADD UNIQUE KEY `Password` (`Password`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
