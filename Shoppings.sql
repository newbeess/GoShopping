-- phpMyAdmin SQL Dump
-- version 4.6.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 14, 2016 at 06:31 AM
-- Server version: 5.7.12
-- PHP Version: 5.5.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `Shoppings`
--

-- --------------------------------------------------------

--
-- Table structure for table `goods`
--

CREATE TABLE `goods` (
  `goodsId` int(11) NOT NULL,
  `goodsName` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `goodsIntro` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `goodsPrice` float NOT NULL,
  `goodsNum` int(11) NOT NULL,
  `publisher` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `photo` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(10) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `goods`
--

INSERT INTO `goods` (`goodsId`, `goodsName`, `goodsIntro`, `goodsPrice`, `goodsNum`, `publisher`, `photo`, `type`) VALUES
(1, '黑白森林', '刘青云主要大片', 59, 1, '香港嘉禾出品', '01.jpg', '香港电影'),
(2, '金鸡II', '刘青云主要大片', 45, 1, '香港嘉禾出品', '02.jpg', '香港电影'),
(3, '靓女菜馆', '这是一部好片', 99, 1, '香港嘉禾出品', '03.jpg', '香港电影'),
(4, '布衣神相', '这是一部好片', 33, 1, '香港嘉禾出品', '04.jpg', '香港电影'),
(5, '洛神', '这是一部好片', 55, 1, '香港嘉禾出品', '05.jpg', '香港电影'),
(6, '黑白森林', '刘青云主要大片', 59, 1, '香港嘉禾出品', '01.jpg', '香港电影'),
(7, '金鸡II', '刘青云主要大片', 45, 1, '香港嘉禾出品', '02.jpg', '香港电影'),
(8, '靓女菜馆', '这是一部好片', 99, 1, '香港嘉禾出品', '03.jpg', '香港电影'),
(9, '布衣神相', '这是一部好片', 33, 1, '香港嘉禾出品', '04.jpg', '香港电影'),
(10, '洛神', '这是一部好片', 55, 1, '香港嘉禾出品', '05.jpg', '香港电影'),
(11, '黑白森林', '刘青云主要大片', 59, 1, '香港嘉禾出品', '01.jpg', '香港电影'),
(12, '金鸡II', '刘青云主要大片', 45, 1, '香港嘉禾出品', '02.jpg', '香港电影'),
(13, '靓女菜馆', '这是一部好片', 99, 1, '香港嘉禾出品', '03.jpg', '香港电影'),
(14, '布衣神相', '这是一部好片', 33, 1, '香港嘉禾出品', '04.jpg', '香港电影'),
(15, '洛神', '这是一部好片', 55, 1, '香港嘉禾出品', '05.jpg', '香港电影'),
(16, '黑白森林', '刘青云主要大片', 59, 1, '香港嘉禾出品', '01.jpg', '香港电影'),
(17, '金鸡II', '刘青云主要大片', 45, 1, '香港嘉禾出品', '02.jpg', '香港电影'),
(18, '靓女菜馆', '这是一部好片', 99, 1, '香港嘉禾出品', '03.jpg', '香港电影'),
(19, '布衣神相', '这是一部好片', 33, 1, '香港嘉禾出品', '04.jpg', '香港电影'),
(20, '洛神', '这是一部好片', 55, 1, '香港嘉禾出品', '05.jpg', '香港电影'),
(26, '黑白森林', '刘青云主要大片', 59, 1, '香港嘉禾出品', '01.jpg', '香港电影'),
(27, '金鸡II', '刘青云主要大片', 45, 1, '香港嘉禾出品', '02.jpg', '香港电影'),
(28, '靓女菜馆', '这是一部好片', 99, 1, '香港嘉禾出品', '03.jpg', '香港电影'),
(29, '布衣神相', '这是一部好片', 33, 1, '香港嘉禾出品', '04.jpg', '香港电影'),
(30, '洛神', '这是一部好片', 55, 1, '香港嘉禾出品', '05.jpg', '香港电影'),
(31, '黑白森林', '刘青云主要大片', 59, 1, '香港嘉禾出品', '01.jpg', '香港电影'),
(32, '金鸡II', '刘青云主要大片', 45, 1, '香港嘉禾出品', '02.jpg', '香港电影'),
(33, '靓女菜馆', '这是一部好片', 99, 1, '香港嘉禾出品', '03.jpg', '香港电影'),
(34, '布衣神相', '这是一部好片', 33, 1, '香港嘉禾出品', '04.jpg', '香港电影'),
(35, '洛神', '这是一部好片', 55, 1, '香港嘉禾出品', '05.jpg', '香港电影'),
(36, '黑白森林', '刘青云主要大片', 59, 1, '香港嘉禾出品', '01.jpg', '香港电影'),
(37, '金鸡II', '刘青云主要大片', 45, 1, '香港嘉禾出品', '02.jpg', '香港电影'),
(38, '靓女菜馆', '这是一部好片', 99, 1, '香港嘉禾出品', '03.jpg', '香港电影'),
(39, '布衣神相', '这是一部好片', 33, 1, '香港嘉禾出品', '04.jpg', '香港电影'),
(40, '洛神', '这是一部好片', 55, 1, '香港嘉禾出品', '05.jpg', '香港电影'),
(41, '黑白森林', '刘青云主要大片', 59, 1, '香港嘉禾出品', '01.jpg', '香港电影'),
(42, '金鸡II', '刘青云主要大片', 45, 1, '香港嘉禾出品', '02.jpg', '香港电影'),
(43, '靓女菜馆', '这是一部好片', 99, 1, '香港嘉禾出品', '03.jpg', '香港电影'),
(44, '布衣神相', '这是一部好片', 33, 1, '香港嘉禾出品', '04.jpg', '香港电影'),
(45, '洛神', '这是一部好片', 55, 1, '香港嘉禾出品', '05.jpg', '香港电影');

-- --------------------------------------------------------

--
-- Table structure for table `orderDetail`
--

CREATE TABLE `orderDetail` (
  `orderId` int(11) NOT NULL,
  `goodsId` int(11) NOT NULL,
  `nums` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `orderDetail`
--

INSERT INTO `orderDetail` (`orderId`, `goodsId`, `nums`) VALUES
(3, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `orderId` int(11) NOT NULL,
  `orderDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `payMode` enum('cash','zhifubao') COLLATE utf8_unicode_ci DEFAULT 'cash',
  `isPayed` enum('0','1') COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `totalPrice` float DEFAULT NULL,
  `userId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`orderId`, `orderDate`, `payMode`, `isPayed`, `totalPrice`, `userId`) VALUES
(1, '2016-07-14 06:17:41', 'cash', '0', 99, 1),
(2, '2016-07-14 06:20:12', 'cash', '0', 59, 1),
(3, '2016-07-14 06:21:06', 'cash', '0', 59, 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `userid` int(11) NOT NULL,
  `username` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `realname` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `passwd` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `postcode` char(6) COLLATE utf8_unicode_ci NOT NULL,
  `grade` int(11) DEFAULT '5'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`userid`, `username`, `realname`, `passwd`, `email`, `phone`, `address`, `postcode`, `grade`) VALUES
(1, 'admin', '周杰伦', 'admin', 'admin@tt.com', '131501288888', '北京市朝阳门街道朝阳群众', '123456', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `goods`
--
ALTER TABLE `goods`
  ADD PRIMARY KEY (`goodsId`);

--
-- Indexes for table `orderDetail`
--
ALTER TABLE `orderDetail`
  ADD PRIMARY KEY (`orderId`),
  ADD KEY `ordersId` (`orderId`),
  ADD KEY `goodsId` (`goodsId`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`orderId`),
  ADD KEY `userId` (`userId`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`userid`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `orderId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `userid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `orderDetail`
--
ALTER TABLE `orderDetail`
  ADD CONSTRAINT `orderdetail_ibfk_2` FOREIGN KEY (`goodsId`) REFERENCES `goods` (`goodsId`);

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `users` (`userid`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
