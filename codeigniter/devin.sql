-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 18, 2022 at 02:56 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `devin`
--

-- --------------------------------------------------------

--
-- Table structure for table `device_reg`
--

CREATE TABLE `device_reg` (
  `id` int(11) NOT NULL,
  `unique_num` varchar(255) NOT NULL,
  `dev_name` varchar(50) NOT NULL,
  `dev_model` varchar(50) NOT NULL,
  `allowed_roles` varchar(30) NOT NULL,
  `manufacturer` varchar(50) NOT NULL,
  `specs` varchar(255) NOT NULL,
  `dev_image` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `device_reg`
--

INSERT INTO `device_reg` (`id`, `unique_num`, `dev_name`, `dev_model`, `allowed_roles`, `manufacturer`, `specs`, `dev_image`) VALUES
(1, '4CE0460D0G', 'Laptop', 'Legion 5', 'administrator', 'Lenovo', 'Ryzen 7 4800H\r\nGTX 1660 Ti\r\n16GB RAM\r\n512GB NVME', 'Lenovo-Legion1.png'),
(2, '4CE0460D1X', 'Laptop', 'Omen 15', 'employee', 'HP', 'Ryzen 7 4800H\r\nGTX 1660 Ti\r\n16GB RAM\r\n512GB NVME', 'HP-Omen1.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `emp_id` varchar(50) NOT NULL,
  `emp_name` varchar(50) NOT NULL,
  `emp_email` varchar(255) NOT NULL,
  `superior` varchar(50) NOT NULL,
  `emp_role` varchar(30) NOT NULL,
  `password` varchar(32) NOT NULL,
  `emp_image` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `emp_id`, `emp_name`, `emp_email`, `superior`, `emp_role`, `password`, `emp_image`) VALUES
(1, '2022-E003', 'John Michael Reyes', 'johnmichaelreyes24.ol@gmail.com', 'Jose Luis Reyes', 'employee', 'e9666c721b408f3706d066e8f28bca74', 'JM1.png');

-- --------------------------------------------------------

--
-- Table structure for table `user_information`
--

CREATE TABLE `user_information` (
  `id` int(11) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(50) NOT NULL,
  `role` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_information`
--

INSERT INTO `user_information` (`id`, `first_name`, `last_name`, `email`, `password`, `role`) VALUES
(1, 'Head', 'Admin', 'admin@gmail.com', 'admin123', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `device_reg`
--
ALTER TABLE `device_reg`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_information`
--
ALTER TABLE `user_information`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `device_reg`
--
ALTER TABLE `device_reg`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `user_information`
--
ALTER TABLE `user_information`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
