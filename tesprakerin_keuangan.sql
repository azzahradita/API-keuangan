-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 21, 2020 at 04:34 AM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tesprakerin_keuangan`
--

-- --------------------------------------------------------

--
-- Table structure for table `keuangan`
--

CREATE TABLE `keuangan` (
  `id_uang` int(30) NOT NULL,
  `id_profile` int(30) NOT NULL,
  `uangmasuk` int(30) NOT NULL,
  `uangkeluar` int(30) NOT NULL,
  `created` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `keuangan`
--

INSERT INTO `keuangan` (`id_uang`, `id_profile`, `uangmasuk`, `uangkeluar`, `created`) VALUES
(11, 2, 0, 15000, '2020-07-21 08:12:19.604'),
(12, 1, 75000, 0, '2020-07-21 08:38:48.088');

-- --------------------------------------------------------

--
-- Table structure for table `profile`
--

CREATE TABLE `profile` (
  `id_profile` int(11) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `no_tlpn` int(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `profile`
--

INSERT INTO `profile` (`id_profile`, `nama`, `no_tlpn`, `email`, `password`) VALUES
(1, 'zahra', 2147483647, 'zahradita@gmail.com', '$2a$10$5GqF.8ei17l6/.4l6EhSCu.DNG6d3Yov.AteT9Szqz2i5E59DaKMu'),
(2, 'ditap', 2147483647, 'ditap@gmail.com', '$2a$10$4U4pB4/0BuRhQrIyR.jhTOUHyzyE2USGSsLRwxDeHC/V8zZboJJfi'),
(3, 'iqbaal', 1742687732, 'iqbaaldr@gmail.com', '$2a$10$lFALcOzjHUhjoMUgBK2cxeZBorqzRHcEyG7bhkayZ6sAXJsZ7XRce'),
(4, 'rey', 2147483647, 'reybong@gmail.com', '$2a$10$qQyDOWe/JI23zIlMHg.GbeMbgibctnczAsPkY7a8svchHvbEMQVty');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `keuangan`
--
ALTER TABLE `keuangan`
  ADD PRIMARY KEY (`id_uang`),
  ADD UNIQUE KEY `id_profile` (`id_profile`),
  ADD UNIQUE KEY `id_profile_2` (`id_profile`);

--
-- Indexes for table `profile`
--
ALTER TABLE `profile`
  ADD PRIMARY KEY (`id_profile`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `keuangan`
--
ALTER TABLE `keuangan`
  MODIFY `id_uang` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
