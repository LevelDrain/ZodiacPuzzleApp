-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 
-- サーバのバージョン： 10.1.36-MariaDB
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
-- Database: `project2018`
--

-- --------------------------------------------------------

--
-- テーブルの構造 `constellations`
--

CREATE TABLE `constellations` (
  `id` int(6) NOT NULL,
  `name` varchar(20) DEFAULT NULL,
  `fileurl` varchar(50) DEFAULT NULL,
  `description` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- テーブルのデータのダンプ `constellations`
--

INSERT INTO `constellations` (`id`, `name`, `fileurl`, `description`) VALUES
(1, 'おひつじ座', 'image/aries.png', 'description/aries.html'),
(2, 'おうし座', 'image/taurus.png', 'description/taurus.html'),
(3, 'ふたご座', 'image/gemini.png', 'description/gemini.html'),
(4, 'かに座', 'image/cancer.png', 'description/cancer.html'),
(5, 'しし座', 'image/leo.png', 'description/leo.html'),
(6, 'おとめ座', 'image/virgo.png', 'description/virgo.html'),
(7, 'てんびん座', 'image/libra.png', 'description/libra.html'),
(8, 'さそり座', 'image/scorpius.png', 'description/scorpius.html'),
(9, 'いて座', 'image/sagittarius.png', 'description/sagittarius.html'),
(10, 'やぎ座', 'image/capricorn.png', 'description/capricorn.html'),
(11, 'みずがめ座', 'image/aquarius.png', 'description/aquarius.html'),
(12, 'うお座', 'image/pisces.png', 'description/pisces.html');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `constellations`
--
ALTER TABLE `constellations`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `constellations`
--
ALTER TABLE `constellations`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
