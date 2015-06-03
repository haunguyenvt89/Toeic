-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jun 03, 2015 at 10:07 AM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `toeic`
--

-- --------------------------------------------------------

--
-- Table structure for table `cauhoi`
--

CREATE TABLE IF NOT EXISTS `cauhoi` (
  `MaCH` char(5) NOT NULL,
  `MaLoai` int(11) NOT NULL,
  `NoiDung_Text` varchar(200) DEFAULT NULL,
  `NoiDung_MP3` varchar(100) DEFAULT NULL,
  `NoiDung_Img` varchar(100) DEFAULT NULL,
  `MaNhom` int(11) NOT NULL,
  PRIMARY KEY (`MaCH`),
  KEY `FK_CH_ML` (`MaLoai`),
  KEY `FK_CH_Nhom` (`MaNhom`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `cautl`
--

CREATE TABLE IF NOT EXISTS `cautl` (
  `MaCTL` char(5) NOT NULL,
  `MaThi` char(5) NOT NULL,
  `MaCH` char(5) NOT NULL,
  `MaLC` char(5) DEFAULT NULL,
  PRIMARY KEY (`MaCTL`),
  KEY `FK_CTL_DT` (`MaThi`),
  KEY `FK_CTL_CH` (`MaCH`),
  KEY `FK_CTL_LC` (`MaLC`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `dethi`
--

CREATE TABLE IF NOT EXISTS `dethi` (
  `MaDe` char(5) NOT NULL,
  `NgayTao` date NOT NULL,
  `ThoiGian` int(11) NOT NULL,
  PRIMARY KEY (`MaDe`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `dsch`
--

CREATE TABLE IF NOT EXISTS `dsch` (
  `MaDe` char(5) NOT NULL,
  `MaCH` char(5) NOT NULL,
  `STT` int(11) NOT NULL,
  PRIMARY KEY (`MaDe`,`MaCH`),
  KEY `FK_CH_DSCH` (`MaCH`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `lanthi`
--

CREATE TABLE IF NOT EXISTS `lanthi` (
  `MaThi` char(5) NOT NULL,
  `MaDe` char(5) NOT NULL,
  `MaND` char(5) NOT NULL,
  `TGBD` time NOT NULL,
  `TrangThai` int(11) NOT NULL,
  `TGKT` time NOT NULL,
  PRIMARY KEY (`MaThi`),
  KEY `FK_LT_ND` (`MaND`),
  KEY `FK_LT_MD` (`MaDe`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `loaich`
--

CREATE TABLE IF NOT EXISTS `loaich` (
  `MaLoai` int(11) NOT NULL,
  `TenLoai` varchar(100) NOT NULL,
  `PhanThi` int(11) NOT NULL,
  PRIMARY KEY (`MaLoai`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `luachon`
--

CREATE TABLE IF NOT EXISTS `luachon` (
  `MaLC` char(6) NOT NULL,
  `MaCH` char(5) NOT NULL,
  `NoiDung_Text` char(200) DEFAULT NULL,
  `NoiDung_MP3` varchar(100) DEFAULT NULL,
  `LaDA` tinyint(1) NOT NULL,
  PRIMARY KEY (`MaLC`),
  KEY `FK_LC_CH` (`MaCH`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `nguoidung`
--

CREATE TABLE IF NOT EXISTS `nguoidung` (
  `MaND` char(5) NOT NULL,
  `HoTen` varchar(50) NOT NULL,
  `Email` varchar(30) NOT NULL,
  `Username` char(20) NOT NULL,
  `Password` char(60) NOT NULL,
  `TrangThai` int(11) NOT NULL,
  `NgayTao` date NOT NULL,
  `Loaiuser` int(11) NOT NULL,
  PRIMARY KEY (`MaND`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `nguoidung`
--

INSERT INTO `nguoidung` (`MaND`, `HoTen`, `Email`, `Username`, `Password`, `TrangThai`, `NgayTao`, `Loaiuser`) VALUES
('VN001', 'Nguyen Tan Hau', 'haunguyenvt89@gmail.com', 'haunguyen89', '123456', 1, '0000-00-00', 2),
('VN002', 'Hauhien', 'abc@gmail.com', 'hauhien', '123456', 1, '2015-10-10', 1);

-- --------------------------------------------------------

--
-- Table structure for table `nhomch`
--

CREATE TABLE IF NOT EXISTS `nhomch` (
  `MaNhom` int(11) NOT NULL,
  `NoiDung_MP3` varchar(100) DEFAULT NULL,
  `NoiDung_Text` text,
  PRIMARY KEY (`MaNhom`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `nhomch`
--

INSERT INTO `nhomch` (`MaNhom`, `NoiDung_MP3`, `NoiDung_Text`) VALUES
(1, '/dethi/de1/mp3/01 TOEIC TEST PART 1 DIRECTIONS-SINHVIENIT.NET.mp3', 'Directions: For each question in this part, you will hear four statements about a picture in your te'),
(2, '/dethi/de1/mp3/12 TOEIC TEST PART 2 DIRECTIONS-SINHVIENIT.NET.mp3', '	<p>Directions: You will hear a question or statement and three responses spoken in English. They will not be\r\nprinted in your test book and will be spoken only one time. Select the best response to the question or\r\nstatement and select (A), (B), or (C) to mark your answer on the answer sheet.</p>\r\nExample:</br>\r\nYou will hear: Where did you last see Ms. Montgomery?</br>\r\nYou will also hear:</br>\r\n(A) Yes, I can see it on the flat screen.</br>\r\n(B) It was about three weeks ago.</br>\r\n(C) At the First Street coffee shop.</br>\r\nThe best response to the question "Where did you last see Ms. Montgomery? " is choice (C), "At the First Street\r\ncoffee shop." so (C) is the correct answer. You should mark answer (C).'),
(3, '/dethi/de1/mp3/01 TOEIC TEST PART 1 DIRECTIONS-SINHVIENIT.NET.mp3', 'Directions: You will hear several conversations between two people. You will be asked to answer thre');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cauhoi`
--
ALTER TABLE `cauhoi`
  ADD CONSTRAINT `FK_CH_ML` FOREIGN KEY (`MaLoai`) REFERENCES `loaich` (`MaLoai`),
  ADD CONSTRAINT `FK_CH_Nhom` FOREIGN KEY (`MaNhom`) REFERENCES `nhomch` (`MaNhom`);

--
-- Constraints for table `cautl`
--
ALTER TABLE `cautl`
  ADD CONSTRAINT `FK_CTL_CH` FOREIGN KEY (`MaCH`) REFERENCES `cauhoi` (`MaCH`),
  ADD CONSTRAINT `FK_CTL_DT` FOREIGN KEY (`MaThi`) REFERENCES `dethi` (`MaDe`),
  ADD CONSTRAINT `FK_CTL_LC` FOREIGN KEY (`MaLC`) REFERENCES `luachon` (`MaLC`);

--
-- Constraints for table `dsch`
--
ALTER TABLE `dsch`
  ADD CONSTRAINT `FK_CH_DSCH` FOREIGN KEY (`MaCH`) REFERENCES `cauhoi` (`MaCH`),
  ADD CONSTRAINT `FK_DEthi` FOREIGN KEY (`MaDe`) REFERENCES `dethi` (`MaDe`);

--
-- Constraints for table `lanthi`
--
ALTER TABLE `lanthi`
  ADD CONSTRAINT `FK_LT_MD` FOREIGN KEY (`MaDe`) REFERENCES `dethi` (`MaDe`),
  ADD CONSTRAINT `FK_LT_ND` FOREIGN KEY (`MaND`) REFERENCES `nguoidung` (`MaND`);

--
-- Constraints for table `luachon`
--
ALTER TABLE `luachon`
  ADD CONSTRAINT `FK_LC_CH` FOREIGN KEY (`MaCH`) REFERENCES `cauhoi` (`MaCH`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
