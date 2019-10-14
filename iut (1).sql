-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 14, 2019 at 10:06 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `iut`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `description` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `description`) VALUES
(5, 'ELECTRONIC', '2019-10-12 04:08:56', NULL),
(6, 'MOBILE PHONES', '2019-10-12 04:09:09', NULL),
(7, 'EDUCATION', '2019-10-12 04:09:24', NULL),
(8, 'FASHION AND CLOTHING', '2019-10-12 04:09:34', NULL),
(9, 'LEISURE, SPORTS', '2019-10-12 04:09:50', NULL),
(10, 'SERVICES', '2019-10-12 04:10:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `favorites`
--

CREATE TABLE `favorites` (
  `id` bigint(20) NOT NULL,
  `user` bigint(20) NOT NULL,
  `addId` bigint(20) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `favorites`
--

INSERT INTO `favorites` (`id`, `user`, `addId`, `created_at`) VALUES
(9, 1, 19, '2019-10-13 10:59:39'),
(10, 1, 19, '2019-10-13 14:34:35'),
(11, 1, 19, '2019-10-14 07:47:54'),
(12, 1, 19, '2019-10-14 07:52:27'),
(13, 1, 19, '2019-10-14 07:56:17'),
(14, 1, 19, '2019-10-14 07:56:29');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) NOT NULL,
  `orderCode` varchar(50) NOT NULL,
  `Name` varchar(60) NOT NULL,
  `address` varchar(150) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `price` bigint(20) NOT NULL,
  `state` varchar(3) NOT NULL DEFAULT '0',
  `user` bigint(20) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `designation` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `orderCode`, `Name`, `address`, `phone`, `price`, `state`, `user`, `created_at`, `designation`) VALUES
(1, 'ord92928', 'ad', 'dsds', '11111111111', 17500, '2', 1, '2019-10-12 22:59:48', 'Xiaomi Redmi Note 7 Pro 4/64 Snapdragon 675'),
(2, 'ord87626', 'tgrht', 'trthtrh', '11111111111', 17500, '1', 1, '2019-10-12 23:02:29', 'Xiaomi Redmi Note 7 Pro 4/64 Snapdragon 675'),
(3, 'ord52522', '45t54rgr', 'ttrttgt', '22222222222', 17500, '1', 1, '2019-10-12 23:05:00', 'Xiaomi Redmi Note 7 Pro 4/64 Snapdragon 675'),
(4, 'ord56332', 'aly abdelkader gelany', 'iut room 440 sout', '1872438617', 123, '2', 1, '2019-10-14 07:48:29', 'iphone 11'),
(5, 'ord40391', 'tani barkat', 'roo 548 north', '1872438619', 123, '0', 1, '2019-10-14 07:52:55', 'iphone 11');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(11) NOT NULL,
  `user` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `category` varchar(60) NOT NULL,
  `description` text NOT NULL,
  `picture` varchar(20) DEFAULT NULL,
  `phone` varchar(15) NOT NULL,
  `price` int(11) NOT NULL,
  `isBlocked` varchar(2) NOT NULL DEFAULT '0',
  `isActive` varchar(2) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `user`, `title`, `category`, `description`, `picture`, `phone`, `price`, `isBlocked`, `isActive`, `created_at`) VALUES
(17, 1, 'Hp core i5 metalbody full fresh laptop low price', 'ELECTRONIC', 'Laptop Configure : Processor core i5\r\nclock speed : 2.70 GHZ\r\n%% Ram : 4 Gb DDR3 (16 GB Usable)\r\n%% Hard Disk 320GB\r\n%% Intel HD Graphics 3000\r\n%% Display 14\"\r\n%% Battery 6 cell lion Battery\r\n%% Backup : Minimum 4/5 Hours\r\n%% Web cam 3 MP\r\n%% Color : Black\r\n%% Usb port 4\r\n%% Hdmi port : 1', 'prod61547.png', '01872438619', 55000, '0', '1', '2019-10-13 09:22:43'),
(19, 1, 'iphone 11', 'MOBILE PHONES', 'best iphone', 'prod42182.png', '01872438617', 123, '0', '1', '2019-10-13 10:34:38'),
(20, 1, 'ET-103 home gym bench', 'LEISURE, SPORTS', 'Train your stomach, back & hips muscles\r\nHeight: adjustable footerst\r\nBackrest: adjustable\r\nUpholstered comfort backrest\r\nFoldable\r\nLoad max: 100kg\r\nG.W.: 14kgs\r\nN.W.: 12.4kgs\r\nPacking: 1235 x 180 x 340mm\r\nLoading QTY: 20?/40?/40?HQ: 390/840/905pcs', 'prod97136.png', '01872438617', 5000, '0', '1', '2019-10-13 14:20:08');

-- --------------------------------------------------------

--
-- Table structure for table `subcategories`
--

CREATE TABLE `subcategories` (
  `id` bigint(20) NOT NULL,
  `category` bigint(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `description` text,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `isBlocked` varchar(2) NOT NULL DEFAULT '0',
  `isAdmin` varchar(2) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `name`, `created_at`, `isBlocked`, `isAdmin`) VALUES
(1, 'gelany740@gmail.com', 'gelanyboy', 'gelany', '2019-09-27 19:28:46', '0', '1'),
(2, 'karim@gmail.com', 'gelanyboy', 'abdoul karim', '2019-10-12 14:44:23', '0', '0');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `favorites`
--
ALTER TABLE `favorites`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user` (`user`,`addId`),
  ADD KEY `addId` (`addId`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subcategories`
--
ALTER TABLE `subcategories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category` (`category`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email_unique` (`email`),
  ADD KEY `id` (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `favorites`
--
ALTER TABLE `favorites`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `subcategories`
--
ALTER TABLE `subcategories`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `favorites`
--
ALTER TABLE `favorites`
  ADD CONSTRAINT `Foreign_key_add_id` FOREIGN KEY (`addId`) REFERENCES `products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `Foreign_key_user` FOREIGN KEY (`user`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `subcategories`
--
ALTER TABLE `subcategories`
  ADD CONSTRAINT `subcategories_ibfk_1` FOREIGN KEY (`category`) REFERENCES `categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
