-- phpMyAdmin SQL Dump
-- version 4.5.0.2
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Sep 23, 2016 at 01:34 PM
-- Server version: 10.0.17-MariaDB
-- PHP Version: 5.6.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `medical-ecommerce`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `Id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `email` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`Id`, `username`, `password`, `email`) VALUES
(3, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'a@g.com');

-- --------------------------------------------------------

--
-- Table structure for table `banner`
--

CREATE TABLE `banner` (
  `Id` int(11) NOT NULL,
  `image_name` varchar(200) NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `banner`
--

INSERT INTO `banner` (`Id`, `image_name`, `status`) VALUES
(5, 'banner-5.jpg', 0);

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `Id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `Id` int(11) NOT NULL,
  `Name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`Id`, `Name`) VALUES
(1, 'thuoc ha sot'),
(3, 'thuoc ung thu'),
(4, 'thuoc tim mach');

-- --------------------------------------------------------

--
-- Table structure for table `categorynews`
--

CREATE TABLE `categorynews` (
  `Id` int(11) NOT NULL,
  `NameCategory` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `categorynews`
--

INSERT INTO `categorynews` (`Id`, `NameCategory`) VALUES
(1, 'tin trong nước'),
(2, 'tin quốc tế');

-- --------------------------------------------------------

--
-- Table structure for table `category_news`
--

CREATE TABLE `category_news` (
  `Id` int(11) NOT NULL,
  `category_name` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `category_news`
--

INSERT INTO `category_news` (`Id`, `category_name`) VALUES
(10, 'Tin tức'),
(12, 'Sự kiện'),
(14, 'Thông báo');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `Id` int(11) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `Address` varchar(255) NOT NULL,
  `Phone` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`Id`, `Name`, `Email`, `Address`, `Phone`) VALUES
(1, 'Tran chanh hiep', 'chanhhiep.0201@gmail.com', 'hue', 1234567890);

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `Id` int(11) NOT NULL,
  `NameNews` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `CreateDate` date NOT NULL,
  `DetailNews` text COLLATE utf8_unicode_ci NOT NULL,
  `CaptionNew` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `TittleNew` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `IdCatNew` int(11) NOT NULL,
  `Images1` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`Id`, `NameNews`, `CreateDate`, `DetailNews`, `CaptionNew`, `TittleNew`, `IdCatNew`, `Images1`) VALUES
(1, 'tin tuc demo', '2016-09-06', '<p>ggbgdvdfs</p>\\r\\n', 'noi dung van tat de hien thi tin van tat', 'day la tin tuc', 2, 'image1-1news.jpg'),
(2, 'tin tuc thu2', '2016-09-06', '<p>noi dung ma</p>\\r\\n', 'tin tuc', 'tin tuc nay de test', 1, 'image1-2news.png');

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `Id` int(10) NOT NULL,
  `TransactionId` int(10) NOT NULL,
  `ProductId` int(10) NOT NULL,
  `Quantity` int(20) NOT NULL,
  `Price` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `order`
--

INSERT INTO `order` (`Id`, `TransactionId`, `ProductId`, `Quantity`, `Price`) VALUES
(1, 1, 1, 25555, 25555),
(2, 3, 10, 5, 10000),
(3, 3, 5, 1, 20000);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `Id` int(10) NOT NULL,
  `CategoryId` int(10) NOT NULL,
  `TypesId` int(10) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `Description` varchar(255) NOT NULL,
  `Used` varchar(255) NOT NULL,
  `Guide` varchar(255) NOT NULL,
  `Price` int(15) NOT NULL,
  `Detail` text NOT NULL,
  `Createdate` date NOT NULL,
  `Image1` varchar(255) NOT NULL,
  `Image2` varchar(255) NOT NULL,
  `Image3` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`Id`, `CategoryId`, `TypesId`, `Name`, `Description`, `Used`, `Guide`, `Price`, `Detail`, `Createdate`, `Image1`, `Image2`, `Image3`) VALUES
(1, 1, 1, 'Thuoc tri cam', 'thuoc tri cam cho tre em', 'uong ngay 2 lan sang toi', 'ho tro dieu tri cam cum dau dau o tre em va nguoi lon', 10000, '                                                <p>4</p>\\\\\\\\\\\\\\\\r\\\\\\\\\\\\\\\\n                                    ', '0000-00-00', 'images1-1.jpg', '111', '11'),
(2, 3, 3, 'thuoc tim mach', '', '', '', 123456, '                <p>ssssss</p>\\\\r\\\\n            ', '0000-00-00', 'images1-2.jpg', '', ''),
(3, 1, 0, 'Thuốc đau bụng', '', '', '', 10000, '                                                        ', '0000-00-00', 'images1-3.jpg', '', ''),
(4, 1, 0, 'Thuốc tiêu chảy', '', '', '', 10000, '                            ', '0000-00-00', 'images1-4.jpg', '', ''),
(5, 1, 0, 'Thuốc hạ sốt', '', '', '', 20000, '                            ', '0000-00-00', 'images1-5.jpg', '', ''),
(7, 1, 0, 'Thuốc đau răng', '', '', '', 40000, '                            ', '0000-00-00', 'images1-7.jpg', '', ''),
(8, 1, 0, 'Thuốc kháng sinh', '', '', '', 10000, '                            ', '0000-00-00', 'images1-8.png', '', ''),
(9, 1, 0, 'Thuốc đau mũi', '', '', '', 10000, '                            ', '0000-00-00', 'images1-9.jpg', '', ''),
(10, 1, 0, 'Thuốc', '', '', '', 10000, '                                                                                                                ', '0000-00-00', 'images1-10.png', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `slideshow`
--

CREATE TABLE `slideshow` (
  `Id` int(11) NOT NULL,
  `image_name` varchar(300) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `title` varchar(500) NOT NULL,
  `caption` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `slideshow`
--

INSERT INTO `slideshow` (`Id`, `image_name`, `status`, `title`, `caption`) VALUES
(21, 'slide-21.jpg', 1, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `Id` int(10) NOT NULL,
  `CustomerId` int(10) NOT NULL,
  `CustomerName` varchar(255) NOT NULL,
  `Address` varchar(255) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `Phone` int(20) NOT NULL,
  `Createtime` date NOT NULL,
  `Status` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`Id`, `CustomerId`, `CustomerName`, `Address`, `Email`, `Phone`, `Createtime`, `Status`) VALUES
(1, 1, 'Tran chanh hiep', 'hue', '0', 1234567890, '2016-09-02', 1),
(3, 0, 'Hoàng', 'Huế', 'a@gmail.com', 123, '2016-09-19', 0);

-- --------------------------------------------------------

--
-- Table structure for table `typesproduct`
--

CREATE TABLE `typesproduct` (
  `Id` int(11) NOT NULL,
  `Name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `typesproduct`
--

INSERT INTO `typesproduct` (`Id`, `Name`) VALUES
(1, 'dang vien'),
(3, 'dang sui');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `Id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `email` varchar(300) NOT NULL,
  `full_name` varchar(300) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `address` varchar(300) NOT NULL,
  `date_of_birth` date NOT NULL,
  `gender` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`Id`, `username`, `password`, `email`, `full_name`, `phone`, `address`, `date_of_birth`, `gender`) VALUES
(3, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'a@g.com', 'hoàng', '12/09/2016', '1', '0000-00-00', 1),
(4, 'nhathoang1', 'e10adc3949ba59abbe56e057f20f883e', 'a@g.com', 'hoàng', '29/08/2016', '1', '0000-00-00', 1),
(5, 'test', 'e10adc3949ba59abbe56e057f20f883e', 'a@g.com', 'hoàng', '1', '1', '0000-00-00', 0),
(6, 'test 123', 'e10adc3949ba59abbe56e057f20f883e', 'a@g.com', 'hoàng', '1', '1', '0000-00-00', 1),
(7, 'test 2', '827ccb0eea8a706c4c34a16891f84e7b', 'a@g.com', 'hoàng', '1', '1', '1970-01-01', 1),
(8, 'test 3', '827ccb0eea8a706c4c34a16891f84e7b', 'a@g.com', 'hoàng', '1', 'a', '2016-11-09', 1),
(9, 'admin12345678', 'c4ca4238a0b923820dcc509a6f75849b', 'a@g.com', '11', 'a', '1', '1970-01-01', 1),
(10, 'admin111', 'c4ca4238a0b923820dcc509a6f75849b', 'a@g.com', '1', '1', '1', '1970-01-01', 1),
(11, 'hoang123', 'c4ca4238a0b923820dcc509a6f75849b', 'a@g.com', '1', '1', '1', '2016-09-28', 1),
(12, 'hoang1245', '827ccb0eea8a706c4c34a16891f84e7b', 'a@g.com', 'hoàng', '1', '12345', '2016-09-29', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `categorynews`
--
ALTER TABLE `categorynews`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `category_news`
--
ALTER TABLE `category_news`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `slideshow`
--
ALTER TABLE `slideshow`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `typesproduct`
--
ALTER TABLE `typesproduct`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `banner`
--
ALTER TABLE `banner`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `categorynews`
--
ALTER TABLE `categorynews`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `category_news`
--
ALTER TABLE `category_news`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `order`
--
ALTER TABLE `order`
  MODIFY `Id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `Id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `slideshow`
--
ALTER TABLE `slideshow`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `Id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `typesproduct`
--
ALTER TABLE `typesproduct`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
