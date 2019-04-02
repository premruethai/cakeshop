-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3307
-- Generation Time: Apr 02, 2019 at 10:05 AM
-- Server version: 5.7.23
-- PHP Version: 7.1.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mung_ming_shop`
--

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `ID_customer` varchar(10) NOT NULL COMMENT 'รหัสลูกค้า',
  `ID_status` varchar(5) NOT NULL COMMENT 'สถานะลูกค้า',
  `name_customer` varchar(50) NOT NULL COMMENT 'ชื่อลูกค้า',
  `address_customer` varchar(50) NOT NULL COMMENT 'ที่อยู่ลูกค้า',
  `tel_customer` varchar(10) NOT NULL COMMENT 'เบอร์โทรลูกค้า',
  `username_customer` varchar(20) NOT NULL COMMENT 'ชื้อผู้ใช้ลูกค้า',
  `password_customer` char(32) NOT NULL COMMENT 'รหัสผ่านลูกค้า'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`ID_customer`, `ID_status`, `name_customer`, `address_customer`, `tel_customer`, `username_customer`, `password_customer`) VALUES
('1', '1', 'Prem', '108 ม.9 ต.ดอนทรา  อ.ดอนตูม จ.นครปฐม 73150', '0874544456', 'prem01', '12345678'),
('2', '1', 'Rue', '114 ม.4 ต.บ้านหลวง อ.บ้านหลวง จ.นครปฐม 73000', '0845559666', 'rue02', '12345678'),
('3', '1', 'Thai', '458/7 ม.4 ต.บ้านหลวง อ.บ้านหลวง จ.นครปฐม 73000', '0877745555', 'thai03', '12345678'),
('4', '1', 'Aiam', '78/7 ม.4 ต.บ้านหลวง อ.บ้านหลวง จ.นครปฐม 73000', '0877745745', 'aiam04', '12345678');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`ID_customer`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
