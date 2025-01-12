-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 03, 2022 at 03:30 AM
-- Server version: 5.7.24
-- PHP Version: 7.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `unugiri_2022_webblog`
--

-- --------------------------------------------------------

--
-- Table structure for table `aa_user`
--

CREATE TABLE `aa_user` (
  `id_user` int(11) NOT NULL,
  `fid_level` int(11) NOT NULL,
  `user_name` varchar(50) NOT NULL,
  `pasword` varchar(100) NOT NULL,
  `realname` varchar(100) NOT NULL,
  `enable_user` tinyint(1) NOT NULL,
  `keterangan` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `aa_user`
--

INSERT INTO `aa_user` (`id_user`, `fid_level`, `user_name`, `pasword`, `realname`, `enable_user`, `keterangan`) VALUES
(1, 1, 'budi@webblog.com', '1234', 'Anggara Budi Santoso', 1, 'Super Admin'),
(2, 2, 'datuk@webblog.com', '1234', 'Datuk Maringgi', 1, 'penulis');

-- --------------------------------------------------------

--
-- Table structure for table `aa_user_level`
--

CREATE TABLE `aa_user_level` (
  `id_level` int(11) NOT NULL,
  `nama_level` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `aa_user_level`
--

INSERT INTO `aa_user_level` (`id_level`, `nama_level`) VALUES
(1, 'admin'),
(2, 'penulis');

-- --------------------------------------------------------

--
-- Table structure for table `dm_category`
--

CREATE TABLE `dm_category` (
  `id_category` int(11) NOT NULL,
  `nama_category` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tr_article`
--

CREATE TABLE `tr_article` (
  `id_article` int(11) NOT NULL,
  `fid_catergory` int(11) NOT NULL,
  `title_article` varchar(100) NOT NULL,
  `content_article` text NOT NULL,
  `img_article` varchar(20) DEFAULT NULL,
  `soft_delete` tinyint(1) DEFAULT NULL,
  `show` tinyint(1) DEFAULT NULL,
  `enable_comm` tinyint(1) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `aa_user`
--
ALTER TABLE `aa_user`
  ADD PRIMARY KEY (`id_user`);

--
-- Indexes for table `aa_user_level`
--
ALTER TABLE `aa_user_level`
  ADD PRIMARY KEY (`id_level`);

--
-- Indexes for table `dm_category`
--
ALTER TABLE `dm_category`
  ADD PRIMARY KEY (`id_category`);

--
-- Indexes for table `tr_article`
--
ALTER TABLE `tr_article`
  ADD PRIMARY KEY (`id_article`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
