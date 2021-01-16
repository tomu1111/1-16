-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 16, 2021 at 09:26 AM
-- Server version: 5.7.32
-- PHP Version: 7.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `gs_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `ec_table`
--

CREATE TABLE `ec_table` (
  `id` int(12) NOT NULL,
  `item` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `value` int(6) NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `fname` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `indate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `ec_table`
--

INSERT INTO `ec_table` (`id`, `item`, `value`, `description`, `fname`, `indate`) VALUES
(1, 'tom', 1000, '何もありません', 'yumeto_hamao_san_masked.jpg', '2021-01-14 17:18:33'),
(2, 'チーズ', 10000, '美味しいチーズ', 'about_04.jpg', '2021-01-14 17:20:47'),
(3, '水', 1000, '美味しい水', 'header_logo.png', '2021-01-14 17:21:01'),
(4, 'トマト', 2000, '美味しいトマト', 'course_03.jpg', '2021-01-14 17:21:17');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ec_table`
--
ALTER TABLE `ec_table`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ec_table`
--
ALTER TABLE `ec_table`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;