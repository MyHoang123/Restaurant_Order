-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 15, 2025 at 12:11 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gogi`
--

-- --------------------------------------------------------

--
-- Table structure for table `account`
--

CREATE TABLE `account` (
  `Id` int(11) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `UserName` varchar(100) NOT NULL,
  `Sdt` int(11) NOT NULL,
  `Email` varchar(100) DEFAULT NULL,
  `Gender` int(11) NOT NULL,
  `Pass` varchar(20) NOT NULL,
  `Access` int(11) NOT NULL,
  `Classify` varchar(100) NOT NULL,
  `Avt` varchar(1000) NOT NULL,
  `Birthday` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `account`
--

INSERT INTO `account` (`Id`, `Name`, `UserName`, `Sdt`, `Email`, `Gender`, `Pass`, `Access`, `Classify`, `Avt`, `Birthday`) VALUES
(1, 'Admin', '', 0, '', 0, '1', 1, '', '', ''),
(192, '0992199990', 'Mỹ Hoàng', 772179990, NULL, 0, '123', 2, 'user', 'female.png', ''),
(214, '0892049201', 'Nguyễn Văn Thảo', 832048281, NULL, 1, '123', 2, 'user', 'male.png', ''),
(215, '0832049291', 'Đăng Khoa', 832049291, NULL, 1, '123', 2, 'user', 'male.png', ''),
(216, '0842047271', 'Bảo Luân', 842047271, NULL, 1, '123', 2, 'user', 'male.png', ''),
(217, '0842048281', 'Tuấn Bil', 842048281, NULL, 2, '123', 2, 'user', 'female.png', ''),
(218, '0842049291', 'Minh Mỹ', 842049291, NULL, 1, '123', 2, 'user', 'male.png', ''),
(219, '0852047271', 'Hoàng Mỹ', 852047271, NULL, 1, '123', 2, 'user', 'male.png', ''),
(229, '0821200181', 'Mỹ Hoàng', 0, NULL, 0, '123', 2, 'Email', 'male.png', ''),
(238, '0832047271', 'Mỹ Hoàng', 832047271, 'myt01668@gmail.com', 1, '123', 2, 'user', 'female.png', '');

-- --------------------------------------------------------

--
-- Table structure for table `annout`
--

CREATE TABLE `annout` (
  `Id` int(11) NOT NULL,
  `IdAcc` int(11) NOT NULL,
  `Containt` varchar(1000) NOT NULL,
  `Date` datetime NOT NULL,
  `Status` int(1) NOT NULL,
  `IdBill` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `annout`
--

INSERT INTO `annout` (`Id`, `IdAcc`, `Containt`, `Date`, `Status`, `IdBill`) VALUES
(452, 234, 'Đơn hàng đang được giao đến bạn', '2024-12-01 16:55:18', 0, 246),
(453, 234, 'Giao hàng thành công', '2024-12-01 16:57:42', 0, 246),
(464, 1, 'Bạn nhận được một đơn hoàng mới', '2025-01-10 18:53:59', 0, 249),
(465, 1, 'Bạn nhận được một đơn hoàng mới', '2025-01-10 18:57:09', 0, 250),
(467, 1, 'Bạn nhận được một đơn hoàng mới', '2025-01-14 17:13:26', 0, 251);

-- --------------------------------------------------------

--
-- Table structure for table `bill`
--

CREATE TABLE `bill` (
  `Id` int(11) NOT NULL,
  `IdAcc` int(11) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Sdt` int(11) NOT NULL,
  `TotalPrice` int(100) NOT NULL,
  `PriceVoucher` int(11) NOT NULL,
  `Status` int(1) NOT NULL,
  `Address` varchar(1000) NOT NULL,
  `Destination` varchar(1000) NOT NULL,
  `DATETIME` datetime NOT NULL,
  `Note` varchar(1000) NOT NULL,
  `PayMent` varchar(100) NOT NULL,
  `StatusPay` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bill`
--

INSERT INTO `bill` (`Id`, `IdAcc`, `Name`, `Sdt`, `TotalPrice`, `PriceVoucher`, `Status`, `Address`, `Destination`, `DATETIME`, `Note`, `PayMent`, `StatusPay`) VALUES
(187, 216, 'Bảo Luân', 842047271, 275500, 0, 3, 'Xã Trường Xuân B, Thới Lai District, Cần Thơ, Vietnam', '9.981933787232235,105.52137767477049', '2024-11-01 20:12:55', '', '', 0),
(188, 216, 'Bảo Luân', 842047271, 885500, 0, 4, 'Xã Trường Xuân B, Thới Lai District, Cần Thơ, Vietnam', '9.981933787232235,105.52137767477049', '2024-11-01 21:31:01', '', '', 0),
(189, 215, 'Đăng Khoa', 832049291, 654500, 0, 0, 'Xã Trường Xuân B, Thới Lai District, Cần Thơ, Vietnam', '9.981933787232235,105.52137767477049', '2024-11-01 23:42:16', '', '', 0),
(190, 215, 'Đăng Khoa', 832049291, 1812500, 0, 0, 'Xã Trường Xuân B, Thới Lai District, Cần Thơ, Vietnam', '9.981933787232235,105.52137767477049', '2024-11-01 23:43:34', '', '', 0),
(191, 215, 'Đăng Khoa', 832049291, 329500, 0, 4, 'Xã Trường Xuân B, Thới Lai District, Cần Thơ, Vietnam', '9.981933787232235,105.52137767477049', '2024-11-01 23:44:29', '', '', 0),
(192, 217, 'Tuấn Bil', 842048281, 510500, 0, 0, 'Xã Trường Xuân B, Thới Lai District, Cần Thơ, Vietnam', '9.981933787232235,105.52137767477049', '2024-11-01 23:46:33', '', '', 0),
(193, 217, 'Tuấn Bil', 842048281, 374500, 0, 0, 'Xã Trường Xuân B, Thới Lai District, Cần Thơ, Vietnam', '9.981933787232235,105.52137767477049', '2024-11-01 23:47:24', '', '', 0),
(194, 217, 'Tuấn Bil', 842048281, 2056500, 0, 4, 'Xã Trường Xuân B, Thới Lai District, Cần Thơ, Vietnam', '9.981933787232235,105.52137767477049', '2024-11-01 23:48:17', '', '', 1),
(195, 218, 'Minh Mỹ', 842049291, 404500, 0, 0, 'Xã Trường Xuân B, Thới Lai District, Cần Thơ, Vietnam', '9.981933787232235,105.52137767477049', '2024-11-01 23:50:42', '', '', 0),
(196, 218, 'Minh Mỹ', 842049291, 503500, 0, 0, 'Xã Trường Xuân B, Thới Lai District, Cần Thơ, Vietnam', '9.981933787232235,105.52137767477049', '2024-11-01 23:52:13', '', '', 0),
(197, 218, 'Minh Mỹ', 842049291, 734500, 0, 4, 'Xã Trường Xuân B, Thới Lai District, Cần Thơ, Vietnam', '9.981933787232235,105.52137767477049', '2024-11-01 23:53:09', '', '', 0),
(198, 218, 'Minh Mỹ', 842049291, 523500, 0, 3, 'Xã Trường Xuân B, Thới Lai District, Cần Thơ, Vietnam', '9.981933,105.521377', '2024-11-03 02:16:45', '', '', 0),
(200, 217, 'Tuấn Bil', 842048281, 683500, 0, 0, 'Phường Thới Bình, Ninh Kiều District, Cần Thơ, 94108, Vietnam', '10.04359921522936,105.77493494965091', '2024-11-05 15:53:32', '', '241105_849306', 1),
(201, 217, 'Tuấn Bil', 842048281, 217500, 0, 0, 'Phường Thới Bình, Ninh Kiều District, Cần Thơ, 94108, Vietnam', '10.04359921522936,105.77493494965091', '2024-11-05 16:53:21', '', '241105_524272', 1),
(203, 214, 'Nguyễn Văn Thảo', 832048281, 202500, 0, 0, 'Phường Thới Bình, Ninh Kiều District, Cần Thơ, 94108, Vietnam', '10.043574946077339,105.77498569149479', '2024-11-10 22:29:58', '', '241110_39144', 1),
(204, 213, '213457_Gogihouse_user', 832047271, 314500, 0, 4, 'Xã Trường Xuân B, Thới Lai District, Cần Thơ, Vietnam', '9.981933,105.521377', '2024-11-12 02:15:29', '', '', 0),
(205, 213, '213457_Gogihouse_user', 832047271, 265500, 0, 4, 'Xã Trường Xuân B, Thới Lai District, Cần Thơ, Vietnam', '9.981933,105.521377', '2024-11-12 10:05:36', '', '', 0),
(206, 213, '213457_Gogihouse_user', 832047271, 753500, 0, 4, 'Xã Trường Xuân B, Thới Lai District, Cần Thơ, Vietnam', '9.981933,105.521377', '2024-11-12 11:22:12', '', '', 0),
(207, 213, '213457_Gogihouse_user', 832047271, 817500, 0, 4, 'Xã Trường Xuân B, Thới Lai District, Cần Thơ, Vietnam', '9.981933,105.521377', '2024-11-12 11:39:00', '123231', '', 0),
(208, 213, '213457_Gogihouse_user', 832047271, 133000, 0, 4, 'Phường Thới Bình, Ninh Kiều District, Cần Thơ, 94108, Vietnam', '10.043506,105.77495099999999', '2024-11-15 14:31:14', '', '', 0),
(211, 213, '213457_Gogihouse_user', 832047271, 752000, 0, 4, 'Phường Thới Bình, Ninh Kiều District, Cần Thơ, 94108, Vietnam', '10.043497640983288,105.77490157432955', '2024-11-15 20:34:35', '', '', 0),
(212, 213, '213457_Gogihouse_user', 832047271, 84000, 0, 3, 'Phường Thới Bình, Ninh Kiều District, Cần Thơ, 94108, Vietnam', '10.043497640983288,105.77490157432955', '2024-11-15 23:11:01', '', '', 0),
(213, 213, 'Mỹ 1', 382211503, 235500, 0, 4, 'Hưng Lợi, 94100, Ninh Kiều, Cần Thơ, Vietnam', '10.018035369137664,105.76425214417901', '2024-11-23 15:43:45', '', '', 0),
(216, 213, '213985_Gogihouse_user', 832047271, 932000, 0, 4, 'Xã Trường Xuân B, Huyện Thới Lai, Thành phố Cần Thơ, Việt Nam', '9.9817616,105.5206071', '2024-11-26 20:58:43', 'Giao tại trường dhktcn', '', 0),
(217, 213, '213985_Gogihouse_user', 832047271, 250000, 0, 3, 'Xã Trường Xuân B, Huyện Thới Lai, Thành phố Cần Thơ, Việt Nam', '9.9817616,105.5206071', '2024-11-26 22:39:12', '', '', 0),
(219, 213, '213985_Gogihouse_user', 832047271, 1537500, 0, 4, 'Phường Thới Bình, Ninh Kiều District, Cần Thơ, 94108, Vietnam', '10.043571300000002,105.7750425', '2024-11-28 15:13:46', '', '241128_219813', 1),
(234, 217, 'Tuấn Bil', 842048281, 83500, 0, 3, 'Phường Thới Bình, Ninh Kiều District, Cần Thơ, 94108, Vietnam', '10.04357375,105.77503875', '2024-11-28 23:46:10', '', '241128_885514', 1),
(235, 220, 'Mỹ hoàng', 832047271, 1705500, 0, 0, 'Phường Thới Bình, Ninh Kiều District, Cần Thơ, 94108, Vietnam', '10.026286510729875,105.7688141937158', '2024-11-29 01:24:16', 'Ghi chú', '', 0),
(236, 220, 'Mỹ hoàng', 832047271, 844500, 0, 4, 'Phường Thới Bình, Ninh Kiều District, Cần Thơ, 94108, Vietnam', '10.043590666666667,105.77502666666666', '2024-11-29 01:42:23', 'Ghi chú', '241129_284618', 1),
(237, 220, 'Mỹ hoàng', 832047271, 862500, 0, 0, 'Phường Thới Bình, Ninh Kiều District, Cần Thơ, 94108, Vietnam', '10.043560875,105.77504212500001', '2024-11-30 12:01:11', '', '', 0),
(238, 220, 'Mỹ hoàng', 832047271, 1350500, 0, 3, 'Phường Thới Bình, Ninh Kiều District, Cần Thơ, 94108, Vietnam', '10.043551500000001,105.77505416666665', '2024-11-30 19:04:07', '123', '', 0),
(242, 220, 'Mỹ hoàng', 832047271, 443500, 0, 0, 'Phường Thới Bình, Ninh Kiều District, Cần Thơ, 94108, Vietnam', '10.043590666666667,105.77502666666666', '2024-12-01 00:46:15', '', '241201_523937', 1),
(243, 220, 'Mỹ hoàng', 832047271, 83500, 0, 5, 'Phường Thới Bình, Ninh Kiều District, Cần Thơ, 94108, Vietnam', '10.043590666666667,105.77502666666666', '2024-12-01 01:01:56', '', '', 0),
(244, 220, 'Mỹ Hoàng', 832047271, 456000, 0, 4, 'Hưng Phú, 94900, Cái Răng, Cần Thơ, Vietnam', '10.019200216939382,105.78524191868041', '2024-12-01 01:34:51', '', '241201_46318', 1),
(245, 220, 'Mỹ Hoàng', 832047271, 770500, 0, 4, 'An Khánh, 94100, Ninh Kiều, Cần Thơ, Vietnam', '10.03471785757499,105.75496349572956', '2024-12-01 07:01:02', '123', '', 0),
(246, 234, 'Mỹ Hoàng ', 832047271, 130500, 0, 4, 'An Khánh, 94100, Ninh Kiều, Cần Thơ, Vietnam', '10.035576919475744,105.75560455960976', '2024-12-01 16:53:54', 'Ghi chú', '241201_88791', 1),
(247, 238, '238328_Gogihouse_user', 832047271, 1745500, 0, 4, 'Xã Trường Xuân B, Thới Lai District, Cần Thơ, Vietnam', '9.9819500067441,105.52139830816785', '2024-12-11 14:19:43', '123', '', 0),
(248, 238, 'Mỹ Hoàng', 832047271, 1814500, 0, 3, 'Xã Trường Xuân B, Thới Lai District, Cần Thơ, Vietnam', '9.981985446276123,105.52144454768913', '2024-12-19 13:29:38', '123', '', 0),
(249, 238, 'Mỹ Hoàng', 832047271, 498500, 0, 0, 'Ngô Gia Tự, Phường Tân An, Ninh Kiều District, Cần Thơ, 94111, Vietnam', '10.0362,105.788', '2025-01-10 18:53:59', '', '', 0),
(250, 238, 'Mỹ Hoàng', 832047271, 512500, 0, 1, 'Xã Trường Xuân B, Thới Lai District, Cần Thơ, Vietnam', '9.982204,105.521749', '2025-01-10 18:57:09', '', '', 0),
(251, 238, 'Mỹ Hoàng', 832047271, 93500, 0, 0, 'Phường Thới Bình, Ninh Kiều District, Cần Thơ, 94108, Vietnam', '10.022287872770505,105.75585717522307', '2025-01-14 17:13:26', '123', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `billorder`
--

CREATE TABLE `billorder` (
  `Id` int(11) NOT NULL,
  `Price` int(11) NOT NULL,
  `IdTable` int(11) NOT NULL,
  `Status` int(1) NOT NULL,
  `Type` int(11) NOT NULL,
  `DATETIME` datetime NOT NULL,
  `Note` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `billorder`
--

INSERT INTO `billorder` (`Id`, `Price`, `IdTable`, `Status`, `Type`, `DATETIME`, `Note`) VALUES
(164, 733000, 2, 1, 39, '2025-01-12 23:59:02', NULL),
(165, 733000, 2, 1, 39, '2025-01-13 00:00:15', NULL),
(166, 149000, 2, 1, 39, '2025-01-13 18:11:16', NULL),
(171, 0, 4, 1, 30, '2025-01-13 22:34:37', NULL),
(172, 415000, 2, 1, 39, '2025-01-13 22:35:20', NULL),
(173, 0, 4, 1, 30, '2025-01-13 22:41:13', NULL),
(174, 415000, 2, 1, 39, '2025-01-13 22:42:50', NULL),
(175, 148000, 4, 1, 30, '2025-01-13 22:46:45', NULL),
(176, 0, 4, 1, 30, '2025-01-13 22:53:52', NULL),
(177, 0, 4, 1, 30, '2025-01-13 22:54:14', NULL),
(178, 69000, 2, 1, 39, '2025-01-13 22:54:34', NULL),
(179, 654000, 2, 1, 39, '2025-01-13 22:58:46', NULL),
(180, 0, 4, 1, 30, '2025-01-13 22:58:52', NULL),
(181, 654000, 2, 1, 39, '2025-01-13 23:00:54', NULL),
(182, 0, 4, 1, 30, '2025-01-13 23:01:13', NULL),
(183, 654000, 2, 1, 39, '2025-01-15 15:48:47', NULL),
(184, 567000, 2, 1, 39, '2025-01-15 15:58:35', NULL),
(185, 415000, 2, 1, 39, '2025-01-15 16:01:59', NULL),
(186, 0, 4, 1, 30, '2025-01-15 16:02:52', NULL),
(187, 415000, 2, 1, 39, '2025-01-15 16:04:25', NULL),
(188, 415000, 2, 1, 39, '2025-01-15 16:11:25', NULL),
(189, 654000, 2, 1, 39, '2025-01-15 16:46:23', NULL),
(190, 239000, 2, 1, 39, '2025-01-15 16:59:36', NULL),
(191, 306000, 2, 1, 39, '2025-01-15 17:42:23', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `card`
--

CREATE TABLE `card` (
  `IdAcc` int(11) NOT NULL,
  `IdProduct` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `card`
--

INSERT INTO `card` (`IdAcc`, `IdProduct`) VALUES
(192, 1),
(214, 1),
(238, 1),
(192, 2),
(214, 2),
(238, 2),
(192, 3),
(214, 3),
(216, 3),
(219, 3),
(214, 4),
(219, 4),
(214, 5),
(192, 6),
(238, 6),
(215, 7),
(217, 7),
(238, 7),
(217, 8),
(218, 8),
(238, 8),
(217, 13),
(216, 14),
(218, 14),
(192, 15),
(192, 16),
(214, 17),
(192, 18),
(192, 21),
(238, 21),
(215, 23),
(217, 26),
(192, 28),
(214, 28),
(238, 28),
(192, 30),
(214, 31),
(215, 31),
(217, 31),
(214, 34),
(192, 36),
(214, 36),
(215, 36),
(216, 36),
(217, 36),
(217, 38),
(214, 39),
(214, 40),
(218, 41),
(214, 43),
(215, 43),
(216, 43),
(218, 43),
(192, 45),
(214, 45),
(219, 45),
(192, 49),
(216, 51),
(218, 52),
(215, 53),
(217, 53),
(218, 53),
(215, 56),
(217, 56),
(215, 58),
(192, 64),
(192, 65),
(215, 66),
(216, 66),
(217, 67),
(192, 68),
(192, 69),
(216, 70),
(192, 71),
(218, 71),
(217, 72),
(215, 73),
(216, 77),
(217, 77),
(214, 84),
(215, 84),
(215, 85),
(217, 85),
(238, 85),
(218, 87),
(192, 94),
(215, 99),
(217, 99),
(218, 99);

-- --------------------------------------------------------

--
-- Table structure for table `categoris`
--

CREATE TABLE `categoris` (
  `Id` int(11) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `CreatedDateTime` date NOT NULL,
  `CreatedUserId` int(11) NOT NULL,
  `LastModifiedDateTime` date NOT NULL,
  `LastModifiedUserId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categoris`
--

INSERT INTO `categoris` (`Id`, `Name`, `CreatedDateTime`, `CreatedUserId`, `LastModifiedDateTime`, `LastModifiedUserId`) VALUES
(1, 'Salad/Khai Vị', '2024-04-10', 1, '2024-04-10', 1),
(3, 'Cơm/Canh/Mỳ', '2024-04-12', 1, '2024-04-14', 1),
(4, 'Thịt Bò', '2024-04-12', 1, '2024-04-12', 1),
(5, 'Thịt Heo', '2024-04-14', 1, '2024-04-14', 1),
(7, 'Lẩu', '2024-04-14', 1, '2024-04-14', 1),
(8, 'Hải Sản', '2024-04-14', 1, '2024-04-14', 1),
(9, 'Tráng Miệng', '2024-04-14', 1, '2024-04-14', 1),
(17, 'Giải khát', '2024-12-01', 1, '2024-12-01', 1);

-- --------------------------------------------------------

--
-- Table structure for table `chat`
--

CREATE TABLE `chat` (
  `Id` int(11) NOT NULL,
  `IdSend` int(11) NOT NULL,
  `IdReceiver` int(11) NOT NULL,
  `time` time(4) NOT NULL,
  `containt` varchar(10000) NOT NULL,
  `Date` date NOT NULL,
  `Status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `chat`
--

INSERT INTO `chat` (`Id`, `IdSend`, `IdReceiver`, `time`, `containt`, `Date`, `Status`) VALUES
(455, 192, 1, '16:12:00.0000', 'Hi', '2024-10-30', 1),
(456, 192, 1, '16:12:00.0000', 'Helo', '2024-10-30', 1),
(457, 1, 192, '16:12:00.0000', 'hi', '2024-10-30', 1),
(458, 1, 192, '16:12:00.0000', 'hí hí', '2024-10-30', 1),
(459, 1, 192, '16:12:00.0000', 'hihi', '2024-10-30', 1),
(460, 192, 1, '17:38:00.0000', 'Hi', '2024-10-30', 1),
(461, 192, 1, '17:38:00.0000', 'hi', '2024-10-30', 1),
(462, 1, 192, '17:38:00.0000', 'hihi', '2024-10-30', 1),
(463, 1, 192, '17:38:00.0000', 'hihi', '2024-10-30', 1),
(474, 217, 1, '12:17:00.0000', 'Hi shop', '2024-11-10', 1),
(475, 1, 217, '17:45:00.0000', 'Chào bạn', '2024-11-10', 1),
(476, 217, 1, '22:05:00.0000', 'Helo', '2024-11-10', 1),
(477, 214, 1, '22:06:00.0000', 'Shop ơi', '2024-11-10', 1),
(530, 238, 1, '15:50:00.0000', 'Helo shop', '2025-01-14', 1),
(531, 238, 1, '15:50:00.0000', 'Hii', '2025-01-14', 1),
(532, 238, 1, '15:50:00.0000', 'helloo ạ', '2025-01-14', 0),
(533, 1, 238, '15:50:00.0000', 'hi e', '2025-01-14', 1),
(534, 1, 238, '15:50:00.0000', 'hi hi', '2025-01-14', 1);

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE `comment` (
  `Id` int(11) NOT NULL,
  `Containt` varchar(1000) NOT NULL,
  `RepComment` varchar(10000) NOT NULL,
  `Star` int(1) NOT NULL,
  `IdProduct` int(11) NOT NULL,
  `IdAcc` int(11) NOT NULL,
  `IdBill` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comment`
--

INSERT INTO `comment` (`Id`, `Containt`, `RepComment`, `Star`, `IdProduct`, `IdAcc`, `IdBill`) VALUES
(52, 'Quá tịt dời', '', 5, 36, 192, 263),
(53, '10 đỉm hong có nhưng', '', 5, 77, 192, 262),
(54, 'Thịt bò ngon khỏi phải bàn', 'Gogi rất cảm ơn khi nhận được sự đánh giá của bạn', 5, 36, 192, 261),
(55, 'Tạm được', 'Gogi rất cảm ơn khi nhận được sự ủng hộ của bạn', 4, 6, 192, 246),
(56, 'Ngon nhứt nách', 'Cảm ơn bạn đã đánh giá', 5, 4, 192, 246),
(57, 'Ăn cũng tạm thôi', 'Gogi rất cảm ơn khi nhận được sự đánh giá cực kỳ nhiệt tình của bạn, chúc bạn có một trãi nghiệm thật tốt tại gogi', 4, 6, 192, 260),
(58, 'Kimpap của gogi thì ngon khỏi phải bàn', 'Gogi rất cảm ơn khi nhận được sự đánh giá cực kỳ nhiệt tình của bạn, chúc bạn có một trãi nghiệm thật tốt tại gogi', 5, 7, 192, 259),
(59, 'Món này quá tuyệt vời', '', 5, 38, 192, 264),
(60, 'Ngon nhứt nách', '', 5, 36, 192, 264),
(78, 'Ngon', '', 5, 85, 192, 156),
(79, 'Cực phẩm', '', 5, 3, 192, 165),
(80, 'Qua ngon', '', 5, 7, 192, 165),
(81, 'Qua ngon', '', 5, 7, 192, 165),
(82, 'Thịt nướng đậm vị', '', 5, 20, 192, 168),
(83, 'Hơi ngấy', '', 4, 49, 192, 168),
(84, 'Uwmmmm ngon', '', 5, 71, 192, 168),
(85, 'Tươi', '', 5, 84, 192, 168),
(86, 'Trùi oi nó ngonnnnnn', '', 5, 51, 216, 180),
(87, 'Ngon', '', 5, 36, 216, 169),
(88, 'Hihi', '', 4, 33, 216, 169),
(89, 'Ummmmm quá ngon', '', 5, 36, 216, 188),
(90, 'Mát mẻ', '', 5, 66, 215, 191),
(91, 'Uwmmmmm ngon nha', 'Phản hồi đánh giá', 5, 7, 215, 191),
(92, 'Đắng', '', 4, 43, 215, 191),
(93, 'Thịt bòa tươi mềm', '', 5, 31, 217, 194),
(94, '10 đỉm', '', 5, 26, 217, 194),
(95, 'Vị ngon trọn vị', '', 5, 38, 217, 194),
(96, 'Ádsadadas', '', 5, 67, 217, 194),
(97, 'Tạm được', '', 4, 85, 217, 194),
(98, 'Tươi', '', 5, 77, 217, 194),
(99, 'Mực tươi 10 đỉm', '', 5, 99, 218, 197),
(100, ' ', '', 5, 53, 218, 197),
(101, 'Ưng', '', 5, 52, 218, 197),
(102, 'Ngon', '', 5, 71, 218, 197),
(132, 'Tuỵt', '', 5, 31, 192, 167),
(140, 'Tạm', '', 4, 56, 192, 162),
(141, 'Ngon', '', 5, 77, 192, 162),
(155, 'Đánh giá 1', 'Cảm ơn bạn đã đánh giá', 5, 28, 238, 247);

-- --------------------------------------------------------

--
-- Table structure for table `detailbill`
--

CREATE TABLE `detailbill` (
  `Id` int(11) NOT NULL,
  `IdBIll` int(11) NOT NULL,
  `IdProduct` int(11) NOT NULL,
  `Price` int(11) NOT NULL,
  `Note` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `detailbill`
--

INSERT INTO `detailbill` (`Id`, `IdBIll`, `IdProduct`, `Price`, `Note`) VALUES
(23, 187, 51, 109000, NULL),
(24, 188, 36, 719000, NULL),
(25, 189, 99, 129000, NULL),
(26, 189, 56, 309000, NULL),
(27, 189, 58, 15000, NULL),
(28, 189, 53, 35000, NULL),
(29, 190, 36, 719000, NULL),
(30, 190, 31, 789000, NULL),
(31, 190, 85, 69000, NULL),
(32, 190, 84, 69000, NULL),
(33, 191, 66, 15000, NULL),
(34, 191, 7, 69000, NULL),
(35, 191, 43, 79000, NULL),
(36, 192, 56, 309000, NULL),
(37, 192, 53, 35000, NULL),
(38, 193, 72, 15000, NULL),
(39, 193, 67, 15000, NULL),
(40, 193, 7, 69000, NULL),
(41, 193, 8, 109000, NULL),
(42, 194, 31, 789000, NULL),
(43, 194, 26, 449000, NULL),
(44, 194, 38, 439000, NULL),
(45, 194, 67, 15000, NULL),
(46, 194, 85, 69000, NULL),
(47, 194, 77, 129000, NULL),
(48, 195, 8, 109000, NULL),
(50, 196, 41, 109000, NULL),
(51, 196, 87, 129000, NULL),
(52, 196, 14, 99000, NULL),
(53, 197, 99, 129000, NULL),
(54, 197, 53, 35000, NULL),
(55, 197, 52, 389000, NULL),
(56, 197, 71, 15000, NULL),
(58, 198, 14, 99000, NULL),
(59, 200, 36, 719000, 'Hú hú'),
(60, 201, 67, 15000, NULL),
(61, 201, 77, 129000, NULL),
(62, 201, 85, 69000, NULL),
(65, 203, 85, 69000, NULL),
(66, 203, 77, 129000, 'Hi'),
(67, 204, 41, 109000, '11'),
(68, 204, 6, 79000, NULL),
(69, 205, 49, 99000, NULL),
(70, 206, 52, 389000, 'Ghi chú'),
(71, 206, 41, 109000, NULL),
(72, 206, 19, 129000, NULL),
(73, 207, 45, 158000, 'Ghi chú'),
(74, 207, 70, 15000, NULL),
(75, 207, 99, 129000, NULL),
(76, 207, 52, 389000, NULL),
(77, 208, 45, 79000, NULL),
(78, 208, 5, 79000, NULL),
(79, 211, 15, 379000, NULL),
(80, 211, 16, 398000, NULL),
(81, 212, 7, 69000, '123'),
(82, 213, 7, 69000, NULL),
(89, 216, 4, 717000, '123'),
(90, 216, 7, 69000, 'Ghi chú'),
(91, 216, 66, 15000, '123'),
(92, 217, 45, 79000, NULL),
(95, 219, 1, 89000, '123'),
(96, 219, 2, 1245000, '123'),
(97, 219, 4, 239000, '123'),
(116, 234, 13, 79000, NULL),
(117, 235, 4, 956000, 'Ghi chú'),
(118, 235, 6, 158000, 'Ghi chú'),
(119, 235, 41, 109000, NULL),
(120, 235, 52, 389000, NULL),
(121, 235, 99, 129000, NULL),
(122, 236, 4, 717000, 'Ghi chú'),
(123, 236, 6, 79000, '123'),
(124, 236, 67, 15000, NULL),
(125, 236, 84, 69000, NULL),
(126, 237, 31, 789000, NULL),
(127, 237, 85, 69000, NULL),
(128, 238, 38, 1317000, '123'),
(129, 238, 85, 69000, '123'),
(135, 242, 38, 439000, NULL),
(136, 243, 6, 79000, NULL),
(137, 244, 34, 409000, NULL),
(138, 244, 85, 69000, NULL),
(139, 245, 84, 69000, NULL),
(140, 245, 36, 719000, NULL),
(142, 246, 10, 19000, NULL),
(143, 247, 28, 1500000, NULL),
(144, 247, 21, 79000, NULL),
(145, 248, 21, 79000, NULL),
(146, 248, 28, 1500000, NULL),
(147, 248, 85, 69000, NULL),
(148, 249, 2, 415000, NULL),
(149, 249, 6, 79000, NULL),
(150, 250, 6, 79000, NULL),
(151, 250, 8, 109000, NULL),
(152, 250, 21, 158000, NULL),
(153, 251, 1, 89000, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `detailbillorder`
--

CREATE TABLE `detailbillorder` (
  `Id` int(11) NOT NULL,
  `IdBill` int(11) NOT NULL,
  `IdProduct` int(11) NOT NULL,
  `Quantity` int(11) NOT NULL,
  `Price` int(11) NOT NULL,
  `Status` int(11) NOT NULL,
  `note` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `detailbillorder`
--

INSERT INTO `detailbillorder` (`Id`, `IdBill`, `IdProduct`, `Quantity`, `Price`, `Status`, `note`) VALUES
(167, 164, 2, 1, 0, 1, NULL),
(168, 164, 4, 1, 0, 2, NULL),
(169, 164, 6, 1, 0, 1, NULL),
(170, 165, 2, 1, 0, 1, NULL),
(171, 165, 4, 1, 0, 1, NULL),
(172, 165, 6, 1, 0, 2, NULL),
(173, 166, 40, 1, 0, 1, NULL),
(174, 166, 40, 1, 0, 2, NULL),
(184, 171, 4, 1, 0, 0, NULL),
(185, 172, 2, 1, 0, 0, NULL),
(186, 173, 4, 1, 0, 0, NULL),
(187, 173, 6, 1, 0, 0, NULL),
(188, 173, 6, 1, 0, 0, NULL),
(189, 173, 7, 1, 0, 0, NULL),
(190, 174, 2, 1, 0, 1, NULL),
(191, 175, 6, 1, 0, 1, NULL),
(192, 175, 7, 1, 0, 1, NULL),
(193, 175, 4, 1, 0, 2, NULL),
(194, 175, 6, 1, 0, 2, NULL),
(195, 176, 4, 1, 0, 0, NULL),
(196, 177, 6, 1, 0, 0, NULL),
(197, 178, 7, 1, 0, 0, NULL),
(198, 179, 4, 1, 0, 0, NULL),
(199, 179, 2, 1, 0, 0, NULL),
(200, 180, 6, 1, 0, 1, NULL),
(201, 181, 2, 1, 0, 0, NULL),
(202, 181, 4, 1, 0, 0, NULL),
(203, 182, 4, 1, 0, 1, NULL),
(204, 182, 6, 1, 0, 2, NULL),
(205, 183, 2, 1, 0, 0, NULL),
(206, 183, 4, 1, 0, 0, NULL),
(207, 184, 6, 2, 0, 0, NULL),
(208, 184, 34, 1, 0, 0, NULL),
(209, 184, 8, 1, 0, 0, NULL),
(210, 185, 2, 1, 0, 0, NULL),
(211, 186, 4, 1, 0, 0, NULL),
(212, 186, 4, 1, 0, 0, NULL),
(213, 187, 2, 1, 0, 0, NULL),
(214, 188, 2, 1, 0, 1, NULL),
(215, 188, 6, 1, 0, 2, NULL),
(216, 189, 2, 1, 0, 1, NULL),
(217, 189, 4, 1, 0, 1, NULL),
(218, 190, 4, 1, 0, 2, NULL),
(219, 191, 6, 3, 0, 1, NULL),
(220, 191, 7, 1, 0, 2, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `detailproducts`
--

CREATE TABLE `detailproducts` (
  `Id` int(11) NOT NULL,
  `IdType` int(11) NOT NULL,
  `IdProduct` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `detailproducts`
--

INSERT INTO `detailproducts` (`Id`, `IdType`, `IdProduct`) VALUES
(1, 30, 11),
(2, 30, 13),
(3, 30, 14),
(4, 30, 84),
(5, 30, 85),
(6, 30, 6),
(7, 30, 4),
(8, 30, 18),
(9, 30, 23),
(10, 30, 34),
(11, 30, 95),
(12, 30, 76),
(13, 30, 77),
(14, 30, 83),
(15, 30, 87),
(16, 30, 88),
(17, 30, 89),
(18, 30, 61),
(19, 30, 59),
(20, 30, 98),
(21, 30, 99),
(22, 30, 53),
(23, 30, 54),
(24, 30, 55),
(25, 30, 57),
(26, 30, 58),
(27, 30, 65),
(28, 30, 66),
(29, 30, 68),
(30, 30, 70),
(31, 30, 75),
(32, 30, 72),
(33, 31, 6),
(34, 31, 7),
(35, 31, 8),
(37, 31, 10),
(38, 31, 13),
(39, 31, 14),
(40, 31, 84),
(41, 31, 85),
(42, 31, 2),
(43, 31, 4),
(44, 31, 15),
(45, 31, 17),
(46, 31, 21),
(47, 31, 23),
(48, 31, 77),
(49, 31, 92),
(50, 31, 95),
(51, 31, 39),
(52, 31, 40),
(53, 31, 42),
(54, 31, 81),
(55, 31, 82),
(56, 31, 87),
(57, 31, 59),
(58, 31, 60),
(59, 31, 61),
(60, 31, 63),
(61, 31, 90),
(62, 31, 99),
(63, 31, 52),
(64, 31, 53),
(65, 31, 54),
(66, 31, 55),
(67, 31, 56),
(68, 31, 57),
(69, 31, 58),
(70, 31, 64),
(71, 31, 67),
(72, 31, 69),
(73, 31, 70),
(74, 31, 75),
(75, 31, 73);

-- --------------------------------------------------------

--
-- Table structure for table `detailtypes`
--

CREATE TABLE `detailtypes` (
  `IdType` int(11) NOT NULL,
  `IdCategoris` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `detailtypes`
--

INSERT INTO `detailtypes` (`IdType`, `IdCategoris`) VALUES
(30, 4),
(30, 5),
(30, 7),
(30, 8),
(30, 9),
(32, 1),
(32, 3),
(32, 4),
(32, 5),
(32, 7),
(32, 8),
(32, 9),
(31, 1),
(31, 4),
(31, 5),
(31, 8),
(31, 7),
(31, 9),
(30, 1);

-- --------------------------------------------------------

--
-- Table structure for table `historyacc`
--

CREATE TABLE `historyacc` (
  `Id` int(11) NOT NULL,
  `IdAcc` int(11) NOT NULL,
  `IdProduct` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `historyacc`
--

INSERT INTO `historyacc` (`Id`, `IdAcc`, `IdProduct`) VALUES
(5, 216, 6),
(8, 216, 7),
(12, 192, 3),
(13, 192, 4),
(14, 219, 4),
(16, 214, 4),
(17, 216, 4),
(18, 217, 26),
(19, 217, 51),
(50, 192, 49),
(51, 192, 77),
(78, 229, 16),
(79, 229, 2),
(80, 229, 69),
(97, 214, 11),
(98, 214, 26);

-- --------------------------------------------------------

--
-- Table structure for table `imgbody`
--

CREATE TABLE `imgbody` (
  `Img` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `imgbody`
--

INSERT INTO `imgbody` (`Img`) VALUES
('ytb1.jpg'),
('ytb4.jpg'),
('ytb3.jpg'),
('WSKPyfdH9x4'),
('ytb1.jpg'),
('ytb4.jpg'),
('ytb3.jpg'),
('WSKPyfdH9x4');

-- --------------------------------------------------------

--
-- Table structure for table `imgpagenew`
--

CREATE TABLE `imgpagenew` (
  `Img` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `imgpagenew`
--

INSERT INTO `imgpagenew` (`Img`) VALUES
('432768602_122163813026077687_6238129544873236612_n.jpg'),
('426107323_757068556608540_6240491754554966160_n.jpg'),
('435426749_734195938895802_2348812389547529064_n.jpg'),
('440347019_745612817754114_1046494978454736200_n.jpg'),
('432768602_122163813026077687_6238129544873236612_n.jpg'),
('426107323_757068556608540_6240491754554966160_n.jpg'),
('435426749_734195938895802_2348812389547529064_n.jpg'),
('440347019_745612817754114_1046494978454736200_n.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `Id` int(11) NOT NULL,
  `Name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`Id`, `Name`) VALUES
(1, 'Gọi Món'),
(2, 'Buffet'),
(3, 'Combo');

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `Id` int(11) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Containt` varchar(1000) NOT NULL,
  `Img` int(11) NOT NULL,
  `Date` date NOT NULL,
  `CreatedDateTime` date NOT NULL,
  `CreatedUserId` int(11) NOT NULL,
  `LastModifiedDateTime` date NOT NULL,
  `LastModifiedUserId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `Id` int(11) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Price` int(11) NOT NULL,
  `Img` varchar(100) NOT NULL,
  `Dsription` varchar(1000) NOT NULL,
  `IdCategoris` int(11) NOT NULL,
  `Sales` int(100) NOT NULL,
  `Visible` tinyint(1) NOT NULL,
  `CreatedDateTime` date NOT NULL,
  `CreatedUserId` int(11) NOT NULL,
  `LastModifiedDateTime` date NOT NULL,
  `LastModifiedUserId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`Id`, `Name`, `Price`, `Img`, `Dsription`, `IdCategoris`, `Sales`, `Visible`, `CreatedDateTime`, `CreatedUserId`, `LastModifiedDateTime`, `LastModifiedUserId`) VALUES
(1, 'Salad Cá Hồi', 89000, '2024915155414_60017509_saladtom_1_sp.png', 'Salad', 1, 5, 0, '2024-04-10', 1, '2024-04-10', 1),
(2, 'Sườn Non Bò Mỹ Sốt Obathan', 415000, '60010612_Gau_bo_sot_mat_ong_200_1.png', 'Thịt Bò Được Nhập 100% Từ Mỹ', 4, 13, 1, '2024-04-12', 1, '2024-04-12', 1),
(3, 'Sườn Non Bò Mỹ LA Sốt Galbi 150gr', 239000, 'tb3-removebg-preview.png', 'hihi', 4, 13, 0, '2024-04-12', 1, '2024-04-12', 1),
(4, 'Sườn Non Bò Mỹ LA Sốt Galbi 150gr', 239000, '60000040_ba_chi_bo_my_sot_mat_ong_1_1.png', 'ádasdsadsda', 4, 18, 1, '2024-04-12', 1, '2024-04-12', 1),
(5, 'Salad mùa xuân', 79000, '60018682_Salad_mua_xuan_1.png', 'hihi', 1, 4, 0, '2024-04-13', 1, '2024-04-13', 1),
(6, 'Há cảo truyền thống Hàn Quốc', 79000, '60000131_ha_cao_tt_1.png', 'Há Cạo Hàn Quốc', 1, 7, 1, '2024-04-13', 1, '2024-04-13', 1),
(7, 'Set kimbap (ALC)', 69000, '60000127_kimbap_chien_1.png', 'Kimbap', 1, 7, 1, '2024-04-13', 1, '2024-04-13', 1),
(8, 'Toboki xào hải sản', 109000, '60000147_Tokboki_xao_hai_san_1.png', '213123', 1, 7, 1, '2024-04-13', 1, '2024-04-13', 1),
(10, 'Nấm nướng', 19000, '60000057_nam_alc_1_1.png', 'Nắm', 1, 3, 1, '2024-04-13', 1, '2024-04-13', 1),
(11, 'Salad hành paro', 69000, '60000020_Salad_hanh_paro_1.png', 'Salad Rau Củ', 1, 0, 1, '2024-04-13', 1, '2024-04-13', 1),
(13, 'Salad cá ngừ (ALC)', 79000, '60018681_saladcangu_1_1.png', 'Cá Ngừ ALC', 1, 1, 1, '2024-04-17', 1, '2024-04-17', 1),
(14, 'Salad Hoa Quả', 99000, '60018681_saladhoaqua_1_1.png', 'Salad Hoa quả', 1, 2, 1, '2024-04-17', 1, '2024-04-17', 1),
(15, 'Diềm bụng bò Mỹ/ Canada Tươi/ sốt OBT 200g', 379000, '60010635_diem_bung_tuoi_200_1.png', 'Thịt bò', 4, 2, 1, '2024-04-17', 1, '2024-04-17', 1),
(16, 'Diềm bụng bò Mỹ/ Canada Tươi/ sốt OBT 100g', 199000, '60010634_diem_bung_tuoi_100_1.png', 'Thịt Bò', 4, 5, 1, '2024-04-17', 1, '2024-04-17', 1),
(17, 'Sườn non bò Mỹ hảo hạng tươi 200g', 449000, '60010608_suon_hh_obathan_100_1.png', 'Thịt Bò', 4, 15, 1, '2024-04-17', 1, '2024-04-17', 1),
(18, 'Sườn non bò Mỹ hảo hạng tươi 100g', 219000, '60010632_suon_hh_100_1.png', 'Thịt Bò Mỹ', 4, 1, 1, '2024-04-17', 1, '2024-04-17', 1),
(19, 'Rẻ sườn Hoàng đế tươi/ sốt Obathan ALC 100g', 129000, '60010623_de_suon_obathan_100_1.png', 'Thịt Bò Mỹ', 4, 7, 0, '2024-04-17', 1, '2024-04-17', 1),
(21, 'Ba chỉ bò xốt Obathan 100g(ALC)', 79000, '60010621_ba_chi_obathan_100_1.png', 'Ba chỉ', 4, 8, 1, '2024-04-17', 1, '2024-04-17', 1),
(23, 'Ba chỉ bò Mỹ ướp xốt mật ong 100g', 79000, '60010613_Ba_chi_bo_mat_ong_100g_1.png', 'Ba Chỉ', 4, 1, 1, '2024-04-17', 1, '2024-04-17', 1),
(24, 'Gầu bò Mỹ xốt mật ong 200g (ALC)', 169000, '60010612_Gau_bo_sot_mat_ong_200_1.png', 'Bò Mỹ', 4, 7, 0, '2024-04-17', 1, '2024-04-17', 1),
(26, 'Sườn bò hảo hạng xốt Obanthan 200g', 449000, '60010609_suon_hh_obathan_200_1.png', 'Bò Mỹ', 4, 11, 1, '2024-04-17', 1, '2024-04-17', 1),
(28, 'Sườn bò Tomahawk 700g', 1500000, '60010470_Tomahawk_1.png', 'Sường Bò', 4, 19, 1, '2024-04-17', 1, '2024-04-17', 1),
(30, 'Thăn ngoại bò mát 300g', 597000, '60009106_than_ngoai_bo_mat_1.png', 'Thăn Bò', 4, 7, 1, '2024-04-17', 1, '2024-04-17', 1),
(31, 'Thăn lưng bò mát 300g', 789000, '60009105_than_lung_bo_mat_1.png', 'Thăn Bò', 4, 32, 0, '2024-04-17', 1, '2024-04-17', 1),
(34, 'Thăn lưng bò mát 150g', 409000, '60008932_than_lung_bo_mat_150_1.png', 'Thăng Lưng Bò', 4, 31, 1, '2024-04-17', 1, '2024-04-17', 1),
(36, 'Sườn đế vương sốt Galbi / obathan', 719000, '60000077_Suon_de_vuong_galbi_1.png', 'Sườn Đế Vương', 4, 11, 1, '2024-04-17', 1, '2024-04-17', 1),
(38, 'Sườn non bò Mỹ tươi/ Obathan/gabi', 439000, '60000076_suon_la_xot_obathan_1.png', 'Thịt bò nướng Gogi là món ăn truyền thống của Hàn Quốc, với thịt bò tẩm gia vị đậm đà như nước tương, tỏi, hành và đường, sau đó được nướng trên than hoa hoặc bếp nướng điện cho vẻ ngoài giòn rụm và bên trong vẫn giữ được độ mềm, ngậy và thơm lừng. Món ăn này thường được ăn cuốn cùng với rau sống và các gia vị như nước tương hoặc tương ớt.', 4, 1002, 1, '2024-04-17', 1, '2024-04-17', 1),
(39, 'Sườn heo gabi', 139000, '60000137_suon_heo_galbi_1.png', 'Sườn Heo', 5, 0, 0, '2024-04-17', 1, '2024-04-17', 1),
(40, 'Má heo Mỹ tươi/sốt obathan', 149000, '60000080_ma_heo_obathan_1.png', 'Sườn Heo', 5, 0, 0, '2024-04-17', 1, '2024-04-17', 1),
(41, 'Má heo Mỹ tươi/Sốt obathan', 109000, '60000046_nac_vai_cay_1_1.png', 'Má heo Mỹ tươi với sốt obathan gogi là một món ăn truyền thống của Hàn Quốc. Thịt lợn được ướp gia vị đậm đà, xào cùng với sốt obathan gogi cân bằng ngọt, mặn và cay. Món ăn này thường được ăn kèm với cơm trắng hoặc rau sống để tạo nên một bữa ăn hoàn chỉnh.', 5, 1000, 1, '2024-04-17', 1, '2024-04-17', 1),
(42, 'Sườn heo Mỹ sốt Obathan ALC', 149000, '60000031_Suon_heo_sot_Gabil_1_1.png', 'Sườn Heo', 5, 1, 1, '2024-04-17', 1, '2024-04-17', 1),
(43, 'Mỳ tương đen', 79000, '60017526_mituongden_1_1.png', 'Mì', 3, 0, 1, '2024-04-17', 1, '2024-04-17', 1),
(44, 'Miến xào', 79000, '60017524_mienxao_1_1.png', 'Mì', 3, 0, 1, '2024-04-17', 1, '2024-04-17', 1),
(45, 'Cơm rang kim chi (ALC)', 79000, '60013787_comrang_kimchi-min_1_1.png', 'Cơm', 3, 6, 1, '2024-04-17', 1, '2024-04-17', 1),
(46, 'Canh lòng bò', 250000, '60010807_canh_long_bo_1.png', 'Canh', 3, 0, 0, '2024-04-17', 1, '2024-04-17', 1),
(48, 'Canh rong biển thịt', 109000, '60000100_Canh_rong_bien_thit_1.png', 'Canh', 3, 0, 0, '2024-04-17', 1, '2024-04-17', 1),
(49, 'Canh kim chi', 99000, '60003801_Canh_kim_chi_1.png', 'Canh Kim Chi là món canh truyền thống của Hàn Quốc, mang hương vị đặc trưng của kim chi chua cay, kết hợp cùng các nguyên liệu tươi ngon khác. Lớp nước canh trong veo được nêm nếm vừa vặn, tôn lên vị chua của kim chi và vị ngọt tự nhiên của các thành phần khác như tôm, thịt, nấm và rau củ. Sự hòa quyện của những hương vị này tạo nên một món canh đầy dinh dưỡng và hấp dẫn, vừa ấm áp dễ uống lại vừa kích thích vị giác. Canh Kim Chi là một lựa chọn hoàn hảo để bắt đầu hoặc kết thúc bữa ăn truyền thống Hàn Quốc.', 3, 999, 1, '2024-04-17', 1, '2024-04-17', 1),
(50, 'Cơm Hàn Quốc', 10000, '60015556_Com_HQ_BF_1.png', 'Cơm', 3, 0, 1, '2024-04-17', 1, '2024-04-17', 1),
(51, 'Cơm bát đá nóng', 109000, '60000086_com_bat_da_1_1.png', 'Cơm', 3, 0, 1, '2024-04-17', 1, '2024-04-17', 1),
(52, 'Lẩu dê', 389000, '60017527_laude_1.png', 'Lẩu Dê', 7, 2, 1, '2024-04-17', 1, '2024-04-17', 1),
(53, 'Rau lẩu', 35000, '60000118_Dia_rau_lau_1.png', 'Rau', 7, 0, 1, '2024-04-17', 1, '2024-04-17', 1),
(54, 'Lẩu quân đội (ALC)', 309000, '60000088_lau_quan_doi_1_1.png', 'Lẩu Quân Đội', 7, 0, 1, '2024-04-17', 1, '2024-04-17', 1),
(55, 'Lẩu kim chi ', 299000, '60000115_Lau_Kimchi_1.png', 'Lẩu Kim Chi Hàn', 7, 0, 1, '2024-04-17', 1, '2024-04-17', 1),
(56, 'Lẩu bull gogi ', 309000, '60000114_lau_bulgogi_1.png', 'Lẩu Bulgogi là món ăn truyền thống của Hàn Quốc, được tạo nên từ các loại thịt bò được ướp trong nước sốt đậm đà và nấu trong nồi lẩu sôi sùng sục. Thịt bò mềm ngọt hòa quyện cùng các loại rau củ tươi ngon như nấm, bắp cải và hành lá, tạo ra hương vị đậm đà và hấp dẫn. Món lẩu này được thưởng thức nóng hổi, giúp ấm áp cơ thể và khơi dậy vị giác. Lẩu Bulgogi là sự lựa chọn hoàn hảo cho bữa ăn gia đình hay tụ họp bạn bè, mang đến trải nghiệm ẩm thực đầy thú vị.', 7, 1000, 1, '2024-04-17', 1, '2024-04-17', 1),
(57, 'Miến Hàn Quốc', 40000, '60018684_Mien_HQ_1.png', 'Miếng', 7, 0, 0, '2024-04-17', 1, '2024-04-17', 1),
(58, 'Mỳ Hàn Quốc', 15000, '60018683_my_HQ_1.png', 'Mỳ', 7, 1, 1, '2024-04-17', 1, '2024-04-17', 1),
(59, 'Tôm nướng Gogi (ALC)', 229000, '60012739_tom_alc_1.png', 'Tôm Nướng Gogi là một món ăn hấp dẫn trong ẩm thực Hàn Quốc, kết hợp hương vị ngọt của tôm với vị cay, thơm của nước sốt gogi. Những con tôm tươi ngon được nướng vàng ươm trên ngọn lửa, tạo ra lớp vỏ giòn bên ngoài và thịt tôm mềm ngọt bên trong. Món ăn được chan đều nước sốt gogi chua cay, mang lại sự hoà quyện đầy thú vị giữa các hương vị. Tôm Nướng Gogi thường được thưởng thức cùng các món ăn khác như cơm, rau sống và kim chi, tạo nên một bữa ăn Hàn Quốc đậm đà và đầy hấp dẫn.', 8, 999, 1, '2024-04-17', 1, '2024-04-17', 1),
(60, 'Cá hồi (ALC)', 179000, '60011468_ca_hoi_1.png', 'Cà hồi', 8, 0, 0, '2024-04-17', 1, '2024-04-17', 1),
(61, 'Cá chình Hàn Quốc', 195000, '60009650_ca_chinh_1.png', 'Cà Chình', 8, 0, 0, '2024-04-17', 1, '2024-04-17', 1),
(62, 'Bào ngư ALC', 309000, '60008388_bao_ngu_1.png', 'Bào Ngư', 8, 0, 1, '2024-04-17', 1, '2024-04-17', 1),
(63, 'Cá mút đá', 149000, '60000056_Ca_mut_da_1_1.png', 'Cá mút', 8, 0, 1, '2024-04-17', 1, '2024-04-17', 1),
(64, 'Kem Caramen Flan cake', 15000, '60000165_Caramel_1_1.png', 'Bánh Flan', 9, 0, 1, '2024-04-17', 1, '2024-04-17', 1),
(65, 'Mochi socola (ALC)', 15000, '60011519_mochi_socola_1_1.png', 'Kem', 9, 5, 1, '2024-04-17', 1, '2024-04-17', 1),
(66, 'Mochi trà xanh ALC', 15000, '60007832_mochi_tra_xanh_1_1.png', 'Kem', 9, 6, 1, '2024-04-17', 1, '2024-04-17', 1),
(67, 'Kem tươi vị sữa chua ( ALC)', 15000, '60000155_kem_sua_chua_1_1.png', 'Kem Tươi', 9, 6, 1, '2024-04-17', 1, '2024-04-17', 1),
(68, 'Kem tươi vị Kiwi (ALC)', 15000, '60000189_kem_kiwi_1_1.png', 'Kem Tươi', 9, 5, 1, '2024-04-17', 1, '2024-04-17', 1),
(69, 'Kem tươi vị Berries (ALC)', 15000, '60000188_kem_berries_1_1.png', 'Kem Tươi', 9, 3, 1, '2024-04-17', 1, '2024-04-17', 1),
(70, 'Kem tươi vị Yuzu (ALC)', 15000, '60000187_kem_yuzu_1_1.png', 'Kem Tươi', 9, 6, 1, '2024-04-17', 1, '2024-04-17', 1),
(71, 'Panacota vị Yuzu(gọi món)', 15000, '60000183_pannacottayuzu_1_1.png', 'Panna Cotta', 9, 3, 1, '2024-04-17', 1, '2024-04-17', 1),
(72, 'Panna Cotta vị Berries (ALC)', 15000, '60000182_pannacottaberries_1_1.png', 'Panna Cotta là món tráng miệng Ý truyền thống với kết cấu kem mềm mại và thanh thoát. Phiên bản này kết hợp lớp kem Panna Cotta được làm nhẹ nhàng với sự ngọt ngào và hương thơm của các loại quả Berries tươi như dâu tây, mâm xôi và nam việt quất. Sự cân bằng hoàn hảo giữa vị ngọt thanh và vị chua nhẹ, cùng với kết cấu tan trong miệng, tạo nên một món tráng miệng tuyệt vời để kết thúc bữa ăn với hương vị tươi mới và đầy cuốn hút.', 9, 999, 1, '2024-04-17', 1, '2024-04-17', 1),
(73, 'Panna Cotta vị Kiwi (ALC)', 15000, '60000167_pannacottakiwi_1_1.png', 'Panna Cotta', 9, 1, 1, '2024-04-17', 1, '2024-04-17', 1),
(74, 'Kem tươi vị Chocolate', 15000, '60000154_kem_scl_1_1.png', 'Kem Tươi', 9, 2, 1, '2024-04-17', 1, '2024-04-17', 1),
(75, 'Panna Cotta vị Cam (ALC)', 15000, '60000166_pannacottacam_1_1.png', 'Panna Cotta', 9, 2, 1, '2024-04-17', 1, '2024-04-17', 1),
(76, 'Ba chỉ bò Mỹ ướp sốt mật ong', 129000, '60000040_ba_chi_bo_my_sot_mat_ong_1_1.png', 'Ba Chỉ Bò', 4, 0, 0, '2024-04-17', 1, '2024-04-17', 1),
(77, 'Ba chỉ bò cuộn', 129000, '60000927_ba_chi_bo_cuon_1.png', 'Ba Chỉ Bò', 4, 3, 1, '2024-04-17', 1, '2024-04-17', 1),
(79, 'Gầu bò Mỹ ướp sốt mật ong', 129000, '60000039_Gau_bo_My_sot_mat_ong_1_1.png', 'Gầu Bò', 4, 2, 0, '2024-04-17', 1, '2024-04-17', 1),
(81, 'Ba chi heo tươi', 129000, '60000037_Ba_chi_heo_tuoi_1_1.png', 'Ba chỉ heo', 5, 0, 1, '2024-04-17', 1, '2024-04-17', 1),
(82, 'Thịt heo đặc biệt', 129000, '60000030_thit_heo_dac_biet_1_1.png', 'Thịt heo', 5, 0, 1, '2024-04-17', 1, '2024-04-17', 1),
(83, 'Nạc vai heo sốt cay', 129000, '60018693_nacheosot_1.png', 'Thịt heo', 5, 0, 1, '2024-04-17', 1, '2024-04-17', 1),
(84, 'Salad tổng hợp', 69000, '60000019_salad_tong_hop_1_1.png', 'Salad', 1, 5, 1, '2024-04-18', 1, '2024-04-18', 1),
(85, 'Salad cải bó xôi', 69000, '60000016_Salad_cai_bo_xoi_1_1.png', 'Salad cải bó xôi là một món ăn gồm những chiếc lá cải bó xôi tươi xanh mướt, được trộn với các nguyên liệu như thịt bò, hành tây, tỏi, nước tương và gia vị. Các thành phần này thường được nướng lên để tạo ra hương vị đậm đà, ngọt bùi. Khi ăn, salad được cuốn cùng với các loại rau sống như xà lách, rau mùi và chan thêm nước sốt đặc trưng. Sự kết hợp giữa vị ngọt của thịt nướng, vị chua của nước sốt và sự giòn mềm của các loại rau tạo nên một món ăn đầy hương vị và cân bằng dinh dưỡng.', 1, 1004, 1, '2024-04-18', 1, '2024-04-18', 1),
(87, 'Sườn heo sốt cay BF', 129000, '60000034_Suon_heo_sot_cay_1_1.png', 'Sườn heo', 5, 0, 0, '2024-04-18', 1, '2024-04-18', 1),
(88, 'Thịt heo đặc biệt sốt cay', 129000, '60018691_thitheodacbietsotcay_1.png', 'Thịt Heo', 5, 0, 1, '2024-04-18', 1, '2024-04-18', 1),
(89, 'Nạc vai heo sốt tương đậu vàng', 129000, '60009082_nac_vai_tuong_dau_1.png', 'Thịt Heo', 5, 0, 0, '2024-04-18', 1, '2024-04-18', 1),
(90, 'Bạch tuộc đại dương', 129000, '60018228_Bachtuocdaiduong_1.png', 'Bạch Tuộc', 8, 0, 1, '2024-04-18', 1, '2024-04-18', 1),
(92, 'Lõi vai bò ướp sốt cay', 129000, '60018687_loivaicay_1.png', 'Thịt bò', 4, 0, 0, '2024-04-18', 1, '2024-04-18', 1),
(94, 'Canh sườn bò', 89000, '60009311_canh_suon_1.png', 'Canh', 3, 0, 1, '2024-04-18', 1, '2024-04-18', 1),
(95, 'Dẻ sườn bò Mỹ tươi', 129000, '60004822_desuontuoi_1.png', 'Bò', 4, 0, 1, '2024-04-18', 1, '2024-04-18', 1),
(96, 'Diềm cơ bò Mỹ sốt cay', 129000, '60017512_diemcosotcay_1.png', 'Bò', 4, 0, 0, '2024-04-18', 1, '2024-04-18', 1),
(98, 'Mực ống sốt hải sản', 129000, '60014122_mucsot_1.png', 'Mực', 8, 0, 1, '2024-04-18', 1, '2024-04-18', 1),
(99, 'Mực ống tươi', 129000, '60017521_muc_ong_tuoi_1.png', 'Mực', 8, 1, 1, '2024-04-18', 1, '2024-04-18', 1);

-- --------------------------------------------------------

--
-- Table structure for table `slide`
--

CREATE TABLE `slide` (
  `Id` int(11) NOT NULL,
  `img` varchar(1000) NOT NULL,
  `author` varchar(1000) NOT NULL,
  `title` varchar(1000) NOT NULL,
  `topic` varchar(100) NOT NULL,
  `des` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `slide`
--

INSERT INTO `slide` (`Id`, `img`, `author`, `title`, `topic`, `des`) VALUES
(1, 'backround4.jpg', 'KOREA', 'GOGI HOUSE', 'BBQ', 'GoGi House là một quán thịt nướng Hàn Quốc nổi tiếng ở Seoul. Hương vị đặc trưng của những món sườn non bò Mỹ, nạc vai bò Mỹ và dẻ sườn tươi kết hợp với gia vị Hàn Quốc đã tạo nên sự hấp dẫn và ngon miệng. Các món ăn kèm như cơm trộn, mỳ lạnh, canh Kimchi và các loại lẩu cũng đem lại ấn tượng về ẩm thực Hàn Quốc.'),
(2, '20248912356_ytb5_sp.jpg', 'KOREA', 'GOGI HOUSE', 'BBQ', 'GoGi House là một quán thịt nướng Hàn Quốc nổi tiếng ở Seoul. Hương vị đặc trưng của những món sườn non bò Mỹ, nạc vai bò Mỹ và dẻ sườn tươi kết hợp với gia vị Hàn Quốc đã tạo nên sự hấp dẫn và ngon miệng. Các món ăn kèm như cơm trộn, mỳ lạnh, canh Kimchi và các loại lẩu cũng đem lại ấn tượng về ẩm thực Hàn Quốc.'),
(3, '2024811225313_379865322_6803136289725136_1780440422753508588_n_sp.jpg', 'KOREA', 'GOGI HOUSE', 'BBQ', 'GoGi House là một quán thịt nướng Hàn Quốc nổi tiếng ở Seoul. Hương vị đặc trưng của những món sườn non bò Mỹ, nạc vai bò Mỹ và dẻ sườn tươi kết hợp với gia vị Hàn Quốc đã tạo nên sự hấp dẫn và ngon miệng. Các món ăn kèm như cơm trộn, mỳ lạnh, canh Kimchi và các loại lẩu cũng đem lại ấn tượng về ẩm thực Hàn Quốc.'),
(4, 'ytb1.jpg', 'KOREA', 'GOGI HOUSE', 'BBQ', 'GoGi House là một quán thịt nướng Hàn Quốc nổi tiếng ở Seoul. Hương vị đặc trưng của những món sườn non bò Mỹ, nạc vai bò Mỹ và dẻ sườn tươi kết hợp với gia vị Hàn Quốc đã tạo nên sự hấp dẫn và ngon miệng. Các món ăn kèm như cơm trộn, mỳ lạnh, canh Kimchi và các loại lẩu cũng đem lại ấn tượng về ẩm thực Hàn Quốc.');

-- --------------------------------------------------------

--
-- Table structure for table `slidemini`
--

CREATE TABLE `slidemini` (
  `Img` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `slidemini`
--

INSERT INTO `slidemini` (`Img`) VALUES
('268006674_4798227233549395_9065955655470747510_n.png'),
('130551098_3623959837642813_2071892673745677753_n.jpg'),
('102557336_3097466270292175_2765808264509443624_n.jpg'),
('79332158_2687310037974469_1648744447791333376_n.png'),
('72221846_2556022634436544_5785192992046317568_n.jpg'),
('71183145_2518218688216939_4658281976887771136_n.jpg'),
('268006674_4798227233549395_9065955655470747510_n.png'),
('130551098_3623959837642813_2071892673745677753_n.jpg'),
('102557336_3097466270292175_2765808264509443624_n.jpg'),
('79332158_2687310037974469_1648744447791333376_n.png'),
('72221846_2556022634436544_5785192992046317568_n.jpg'),
('71183145_2518218688216939_4658281976887771136_n.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tables`
--

CREATE TABLE `tables` (
  `Id` int(11) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tables`
--

INSERT INTO `tables` (`Id`, `Name`, `Status`) VALUES
(1, 'Bàn Số 1', 'Bàn Trống'),
(2, 'Bàn Số 2', 'Bàn Trống'),
(3, 'Bàn Số 3', 'Bàn Trống'),
(4, 'Bàn Số 4', 'Bàn Trống'),
(5, 'Bàn Số 5', 'Bàn Trống'),
(6, 'Bàn Số 6', 'Bàn Trống'),
(7, 'Bàn Số 7', 'Bàn Trống'),
(8, 'Bàn Số 8', 'Bàn Trống'),
(9, 'Bàn Số 9', 'Bàn Trống'),
(10, 'Bàn Số 10', 'Bàn Trống'),
(11, 'Bàn Số 11', 'Bàn Trống'),
(12, 'Bàn Số 12', 'Bàn Trống'),
(21, 'Bàn Số 13', 'Bàn Trống');

-- --------------------------------------------------------

--
-- Table structure for table `types`
--

CREATE TABLE `types` (
  `Id` int(11) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `IdMenu` int(11) NOT NULL,
  `Price` int(11) NOT NULL,
  `CreatedDateTime` date NOT NULL,
  `CreatedUserId` int(11) NOT NULL,
  `LastModifiedDateTime` date NOT NULL,
  `LastModifiedUserId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `types`
--

INSERT INTO `types` (`Id`, `Name`, `IdMenu`, `Price`, `CreatedDateTime`, `CreatedUserId`, `LastModifiedDateTime`, `LastModifiedUserId`) VALUES
(30, 'Buffe Xèo Xèo 389k', 2, 389000, '2024-04-14', 1, '2024-04-14', 1),
(31, 'Buffe Classic 439k', 2, 439000, '2024-04-14', 1, '2024-04-14', 1),
(32, 'Buffe Xèo Xèo Premium', 2, 519000, '2024-04-14', 1, '2024-04-14', 1),
(39, '', 1, 0, '2024-04-21', 1, '2024-04-21', 1),
(54, 'Buffet New', 2, 109000, '2024-12-01', 1, '2024-12-01', 1);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `Id` int(11) NOT NULL,
  `FullName` varchar(50) NOT NULL,
  `PhoneNumber` int(13) NOT NULL,
  `BirthDay` varchar(10) NOT NULL,
  `Gender` varchar(3) NOT NULL,
  `IdAcc` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`Id`, `FullName`, `PhoneNumber`, `BirthDay`, `Gender`, `IdAcc`) VALUES
(3, 'Admin', 832047271, '2025/04/01', '1', 1);

-- --------------------------------------------------------

--
-- Table structure for table `voucher`
--

CREATE TABLE `voucher` (
  `Id` int(11) NOT NULL,
  `Voucher` varchar(10) NOT NULL,
  `PriceVoucher` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `voucher`
--

INSERT INTO `voucher` (`Id`, `Voucher`, `PriceVoucher`) VALUES
(1, 'freeship', 15000),
(2, 'GOGICANTHO', 40000),
(3, 'GIAIPHONGM', 50000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`Id`),
  ADD UNIQUE KEY `constraint_NameUser` (`Name`),
  ADD UNIQUE KEY `Name` (`Name`),
  ADD UNIQUE KEY `unique_email` (`Email`);

--
-- Indexes for table `annout`
--
ALTER TABLE `annout`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `IdAcc` (`IdAcc`),
  ADD KEY `annout_ibfk_2` (`IdBill`);

--
-- Indexes for table `bill`
--
ALTER TABLE `bill`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `bill_ibfk_1` (`IdAcc`);

--
-- Indexes for table `billorder`
--
ALTER TABLE `billorder`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `IdTable` (`IdTable`),
  ADD KEY `Type` (`Type`);

--
-- Indexes for table `card`
--
ALTER TABLE `card`
  ADD UNIQUE KEY `unique_product_account` (`IdProduct`,`IdAcc`),
  ADD KEY `card_ibfk_1` (`IdAcc`);

--
-- Indexes for table `categoris`
--
ALTER TABLE `categoris`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `CreatedUserId` (`CreatedUserId`),
  ADD KEY `LastModifiedUserId` (`LastModifiedUserId`);

--
-- Indexes for table `chat`
--
ALTER TABLE `chat`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `IdReceiver` (`IdReceiver`),
  ADD KEY `chat_ibfk_1` (`IdSend`);

--
-- Indexes for table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `IdAcc` (`IdAcc`);

--
-- Indexes for table `detailbill`
--
ALTER TABLE `detailbill`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `IdBIll` (`IdBIll`),
  ADD KEY `IdProduct` (`IdProduct`);

--
-- Indexes for table `detailbillorder`
--
ALTER TABLE `detailbillorder`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `IdBill` (`IdBill`),
  ADD KEY `IdProduct` (`IdProduct`);

--
-- Indexes for table `detailproducts`
--
ALTER TABLE `detailproducts`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `IdProduct` (`IdProduct`),
  ADD KEY `detailproducts_ibfk_2` (`IdType`);

--
-- Indexes for table `detailtypes`
--
ALTER TABLE `detailtypes`
  ADD KEY `IdCategoris` (`IdCategoris`),
  ADD KEY `IdType` (`IdType`);

--
-- Indexes for table `historyacc`
--
ALTER TABLE `historyacc`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `IdAcc` (`IdAcc`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `CreatedUserId` (`CreatedUserId`),
  ADD KEY `LastModifiedUserId` (`LastModifiedUserId`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `CreatedUserId` (`CreatedUserId`),
  ADD KEY `LastModifiedUserId` (`LastModifiedUserId`),
  ADD KEY `IdCategoris` (`IdCategoris`);

--
-- Indexes for table `slide`
--
ALTER TABLE `slide`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `tables`
--
ALTER TABLE `tables`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `types`
--
ALTER TABLE `types`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `types_ibfk_3` (`IdMenu`),
  ADD KEY `types_ibfk_1` (`CreatedUserId`),
  ADD KEY `types_ibfk_2` (`LastModifiedUserId`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `IdAcc` (`IdAcc`);

--
-- Indexes for table `voucher`
--
ALTER TABLE `voucher`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `account`
--
ALTER TABLE `account`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=239;

--
-- AUTO_INCREMENT for table `annout`
--
ALTER TABLE `annout`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=468;

--
-- AUTO_INCREMENT for table `bill`
--
ALTER TABLE `bill`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=252;

--
-- AUTO_INCREMENT for table `billorder`
--
ALTER TABLE `billorder`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=192;

--
-- AUTO_INCREMENT for table `categoris`
--
ALTER TABLE `categoris`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `chat`
--
ALTER TABLE `chat`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=535;

--
-- AUTO_INCREMENT for table `comment`
--
ALTER TABLE `comment`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=156;

--
-- AUTO_INCREMENT for table `detailbill`
--
ALTER TABLE `detailbill`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=154;

--
-- AUTO_INCREMENT for table `detailbillorder`
--
ALTER TABLE `detailbillorder`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=221;

--
-- AUTO_INCREMENT for table `detailproducts`
--
ALTER TABLE `detailproducts`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=98;

--
-- AUTO_INCREMENT for table `historyacc`
--
ALTER TABLE `historyacc`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=99;

--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=113;

--
-- AUTO_INCREMENT for table `slide`
--
ALTER TABLE `slide`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tables`
--
ALTER TABLE `tables`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `types`
--
ALTER TABLE `types`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `voucher`
--
ALTER TABLE `voucher`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `card`
--
ALTER TABLE `card`
  ADD CONSTRAINT `card_ibfk_1` FOREIGN KEY (`IdProduct`) REFERENCES `products` (`Id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `card_ibfk_2` FOREIGN KEY (`IdAcc`) REFERENCES `account` (`Id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `chat`
--
ALTER TABLE `chat`
  ADD CONSTRAINT `chat_ibfk_1` FOREIGN KEY (`IdReceiver`) REFERENCES `account` (`Id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `chat_ibfk_2` FOREIGN KEY (`IdSend`) REFERENCES `account` (`Id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `comment`
--
ALTER TABLE `comment`
  ADD CONSTRAINT `comment_ibfk_1` FOREIGN KEY (`IdAcc`) REFERENCES `account` (`Id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `detailbill`
--
ALTER TABLE `detailbill`
  ADD CONSTRAINT `detailbill_ibfk_1` FOREIGN KEY (`IdBIll`) REFERENCES `bill` (`Id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `detailbill_ibfk_2` FOREIGN KEY (`IdProduct`) REFERENCES `products` (`Id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `detailbillorder`
--
ALTER TABLE `detailbillorder`
  ADD CONSTRAINT `detailbillorder_ibfk_1` FOREIGN KEY (`IdBill`) REFERENCES `billorder` (`Id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `detailbillorder_ibfk_2` FOREIGN KEY (`IdProduct`) REFERENCES `products` (`Id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `detailproducts`
--
ALTER TABLE `detailproducts`
  ADD CONSTRAINT `detailproducts_ibfk_1` FOREIGN KEY (`IdProduct`) REFERENCES `products` (`Id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `detailproducts_ibfk_2` FOREIGN KEY (`IdType`) REFERENCES `types` (`Id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `detailtypes`
--
ALTER TABLE `detailtypes`
  ADD CONSTRAINT `detailtypes_ibfk_1` FOREIGN KEY (`IdCategoris`) REFERENCES `categoris` (`Id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `detailtypes_ibfk_2` FOREIGN KEY (`IdType`) REFERENCES `types` (`Id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `historyacc`
--
ALTER TABLE `historyacc`
  ADD CONSTRAINT `historyacc_ibfk_1` FOREIGN KEY (`IdAcc`) REFERENCES `account` (`Id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`IdCategoris`) REFERENCES `categoris` (`Id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `types`
--
ALTER TABLE `types`
  ADD CONSTRAINT `types_ibfk_1` FOREIGN KEY (`IdMenu`) REFERENCES `menu` (`Id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
