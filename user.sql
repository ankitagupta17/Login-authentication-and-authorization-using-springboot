-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 28, 2020 at 11:09 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `user`
--

-- --------------------------------------------------------

--
-- Table structure for table `hibernate_sequence`
--

CREATE TABLE `hibernate_sequence` (
  `next_val` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hibernate_sequence`
--

INSERT INTO `hibernate_sequence` (`next_val`) VALUES
(8);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL,
  `email` varchar(120) NOT NULL,
  `email_verification_status` bit(1) NOT NULL,
  `email_verification_token` varchar(255) DEFAULT NULL,
  `encrypted_password` varchar(255) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `user_id` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `email_verification_status`, `email_verification_token`, `encrypted_password`, `first_name`, `last_name`, `user_id`) VALUES
(1, 'anu@gmail.com', b'0', NULL, 'test', 'Anu', 'Gupta', 'testUserId'),
(2, 'ankita@gmail.com', b'0', NULL, 'test', 'Anu', 'Gupta', 'testUserId'),
(3, 'shubham@gmail.com', b'0', NULL, 'test', 'Shubham', 'Gupta', 'testUserId'),
(4, 'a@gmail.com', b'0', NULL, 'test', 'a', 'a', 'sSMew6B0trzyA3FlpcaHZUNuSa1TQs'),
(5, 'b@gmail.com', b'0', NULL, '$2a$10$sHPTxXqsFhH.4pRS6XYn3.xllVL/3bMlFIqE214F2jKeCfVkxjpy2', 'a', 'b', 'Vr1CUYF5LCDNVMHD2FM9O0mopEhr9d'),
(6, 'c@gmail.com', b'0', NULL, '$2a$10$reD1WS4n/iTHIHiJAxGDZ.ietMgGeg2dep2oHz3o6j8KIzuEPulu.', 'c', 'c', 'Iyj9QXKT8BCgD3ITQhB7BJi2yNf1gr'),
(7, 'd@gmail.com', b'0', NULL, '$2a$10$yc8kbTsscIGWlISUZr3r4eWT1LRoV/fJ4Oa1.0H/4FjhYsJ0q03iO', 'd', 'd', '2hl3aNg2c0SgyCTfZhS01BZIJ09KZJ');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
