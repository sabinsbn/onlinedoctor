-- phpMyAdmin SQL Dump
-- version 4.6.5.1deb1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 06, 2017 at 02:17 PM
-- Server version: 5.6.30-1
-- PHP Version: 7.0.15-1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `upworkdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `q_messages`
--

CREATE TABLE `q_messages` (
  `id` int(11) NOT NULL,
  `name` varchar(256) NOT NULL,
  `message` text NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `type` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `q_messages`
--

INSERT INTO `q_messages` (`id`, `name`, `message`, `status`, `type`) VALUES
(1, 'admin', 'Hello', 1, 1),
(2, 'admin', 'Hi how are you', 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `q_migration`
--

CREATE TABLE `q_migration` (
  `version` varchar(180) NOT NULL,
  `apply_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `q_migration`
--

INSERT INTO `q_migration` (`version`, `apply_time`) VALUES
('m000000_000000_base', 1490720808),
('m130524_201442_init', 1490720811);

-- --------------------------------------------------------

--
-- Table structure for table `q_user`
--

CREATE TABLE `q_user` (
  `id` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `auth_key` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `password_hash` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password_reset_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` smallint(6) NOT NULL DEFAULT '10',
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `q_user`
--

INSERT INTO `q_user` (`id`, `username`, `auth_key`, `password_hash`, `password_reset_token`, `email`, `status`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'FRjbV_p0_VQyRQ6oWteEw-Sw9033hkbG', '$2y$13$Eh4wBYwGzp.j/TCgD1SM6urQ4BJqmmH/TgoKX6/slJiASppyQNus.', NULL, 'admin@qbitstream.com', 10, 1490721036, 1490721036);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `q_messages`
--
ALTER TABLE `q_messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `q_migration`
--
ALTER TABLE `q_migration`
  ADD PRIMARY KEY (`version`);

--
-- Indexes for table `q_user`
--
ALTER TABLE `q_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `password_reset_token` (`password_reset_token`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `q_messages`
--
ALTER TABLE `q_messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `q_user`
--
ALTER TABLE `q_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
