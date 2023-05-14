-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 14, 2023 at 03:29 AM
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
-- Database: `pay`
--

-- --------------------------------------------------------

--
-- Table structure for table `fees`
--

CREATE TABLE `fees` (
  `id` int(11) NOT NULL,
  `name` varchar(55) NOT NULL,
  `st_fees` float NOT NULL,
  `st_total` float NOT NULL,
  `balance` float NOT NULL,
  `date` varchar(44) NOT NULL,
  `Mark` varchar(55) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `fees`
--

INSERT INTO `fees` (`id`, `name`, `st_fees`, `st_total`, `balance`, `date`, `Mark`) VALUES
(93, 'maha das ', 200, 1000, 800, '2023-04-19T13:42', 'Two hundred rupees'),
(94, 'maha das ', 200, 1000, 800, '2023-04-19T13:42', 'Two hundred rupees'),
(95, 'Kalika kumari', 600, 2000, 1400, '2023-04-18T13:47', 'Three Hundred Rupees'),
(96, 'mikh', 600, 1000, 400, '2023-04-19T14:30', 'mm'),
(97, 'Lakhan kumar', 500, 1000, 500, '2023-04-19T14:33', 'Two Hundred rupees'),
(98, 'Suriti', 300, 1000, 700, '2023-04-14T14:47', 'Three hundred rupees pay'),
(99, 'Suriti', 300, 1000, 700, '2023-04-14T14:47', 'Three hundred rupees pay'),
(100, 'Suriti', 300, 1000, 700, '2023-04-14T14:47', 'Three hundred rupees pay'),
(101, 'loni', 600, 1000, 400, '2023-04-18T14:51', 'hhhh'),
(102, 'Khushi Kumari', 1000, 1200, 200, '2023-04-19T06:11', 'Five Hundred rupees '),
(103, 'Disha kumari', 400, 1000, 600, '2023-04-20T06:08', 'One hundred rupees'),
(104, 'gg', 100, 200, 100, '2023-04-23T13:29', 'erfr');

-- --------------------------------------------------------

--
-- Table structure for table `fees_tran`
--

CREATE TABLE `fees_tran` (
  `stid` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `name` varchar(55) NOT NULL,
  `due_balance` float NOT NULL,
  `pay` float NOT NULL,
  `date` date NOT NULL,
  `remark` varchar(55) NOT NULL,
  `g_balance` float NOT NULL,
  `Total_paid` float NOT NULL,
  `courses` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `fees_tran`
--

INSERT INTO `fees_tran` (`stid`, `id`, `name`, `due_balance`, `pay`, `date`, `remark`, `g_balance`, `Total_paid`, `courses`) VALUES
(180, 93, 'maha das ', 0, 200, '2023-04-19', 'Two hundred rupees', 0, 0, 1000),
(181, 94, 'maha das ', 0, 200, '2023-04-19', 'Two hundred rupees', 0, 0, 1000),
(182, 95, 'Kalika kumari', 0, 300, '2023-04-18', 'Three Hundred Rupees', 0, 0, 2000),
(183, 95, 'Kalika kumari', 1700, 300, '2023-04-19', 'Three hundred rupees', 1400, 600, 500),
(184, 96, 'mikh', 0, 200, '2023-04-19', 'mm', 0, 0, 1000),
(185, 96, 'mikh', 800, 400, '2023-04-19', 'mmm', 400, 600, 1000),
(186, 97, 'Lakhan kumar', 0, 200, '2023-04-19', 'Two Hundred rupees', 0, 200, 1000),
(187, 97, 'Lakhan kumar', 800, 300, '2023-04-19', 'Three hundred ruppes', 500, 500, 1000),
(188, 100, 'Suriti', 0, 300, '2023-04-14', 'Three hundred rupees pay', 700, 300, 1000),
(189, 101, 'loni', 0, 100, '2023-04-18', 'hhhh', 0, 100, 1000),
(190, 101, 'loni', 900, 500, '0000-00-00', 'Five hundred ruppes', 400, 600, 1000),
(191, 102, 'Khushi Kumari', 0, 500, '2023-04-19', 'Five Hundred rupees ', 0, 500, 1200),
(192, 102, 'Khushi Kumari', 700, 500, '2023-04-20', 'Five Hundred rupees', 200, 1000, 1200),
(193, 103, 'Disha kumari', 0, 100, '2023-04-20', 'One hundred rupees', 0, 100, 1000),
(194, 103, 'Disha kumari', 900, 300, '2023-04-26', 'Three hundred Rupees', 600, 400, 1000),
(195, 103, 'Disha kumari', 900, 300, '2023-04-26', 'Three hundred Rupees', 600, 400, 1000),
(196, 104, 'gg', 0, 100, '2023-04-23', 'erfr', 0, 100, 200);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `fees`
--
ALTER TABLE `fees`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `fees_tran`
--
ALTER TABLE `fees_tran`
  ADD PRIMARY KEY (`stid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `fees`
--
ALTER TABLE `fees`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;

--
-- AUTO_INCREMENT for table `fees_tran`
--
ALTER TABLE `fees_tran`
  MODIFY `stid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=197;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
