-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 24, 2022 at 05:11 PM
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
-- Table structure for table `devices`
--

CREATE TABLE `devices` (
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
-- Dumping data for table `devices`
--

INSERT INTO `devices` (`id`, `unique_num`, `dev_name`, `dev_model`, `allowed_roles`, `manufacturer`, `specs`, `dev_image`) VALUES
(1, '4CE0460D0G', 'Lenovo ThinkPad X1', 'Laptop', 'Administrator', 'Lenovo', 'Processor: Intel Core i7\r\nRAM: 16GB 3200MHz\r\nGraphics: Integrated Intel HD Graphics 4000\r\nHard Drive: 1TB\r\nDisplay: 14\" inch; 1920x1080 Resolution\r\nOS: Windows 10', 'Lenovo-ThinkPad-X1-1.png'),
(2, '4CE0460D1X', 'Macbook Pro', 'Laptop', 'Executive', 'Apple', 'Processor: Apple M2 Chip\r\nRAM: 16GB Memory\r\nGraphics: Intel Integrated Iris Plus Graphics 645\r\nStorage: 512GB SSD\r\nDisplay: 13.3\" inch; 2560x1600 Resolution\r\nOS: macOS', 'Macbook-Pro-1.jpg'),
(3, '4CE0460D69', 'Edge Gateway', 'Router', 'Employee', 'Dell', 'Processor: ARM Cortex-A53\r\nRAM: 2GB\r\nStorage: 512GB SSD\r\nOS: Linux Ubuntu\r\nWeight: 820g', 'Edge-Gateway1.png'),
(4, '4CE0460D5G', 'Oculus Rift S', 'VR Headset', 'Executive', 'Oculus', 'Platform: SteamVR, Oculus Home\r\nDisplay Type: Single LCD (Binocular)\r\nResolution: 1280x1440 (per-eye)\r\nRefresh Rate: 80hz\r\nWeight: 500g', 'Occulus-Rift-S1.jpg'),
(5, '4CE0460D1S', 'PowerEdge-T330', 'Server', 'Administrator', 'Dell', 'Processer: Intel Xeon\r\nRAM: 64GB\r\nDrive Bays: Supports 2.5\" HDD in 3.5\" hybrid drive \r\ncarrier\r\nOS: Windows Server', 'PowerEdge-T330-1.jpg');

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
(1, '2022-HA001', 'Head Admin', 'admin@gmail.com', 'David Lim', 'administrator', '0192023a7bbd73250516f069df18b500', 'placeholder1.png'),
(2, '2022-E0001', 'Andrea Blancaflor', 'andrea.blancaflor@gmail.com', 'Jose Luis Reyes', 'employee', 'ce6e92851b851beb843a47ce337bc1df', 'Andrea1.png'),
(3, '2022-E0002', 'Rovic Gabriel Tabucol', 'rovic.tabucol@gmail.com', 'Juan Dela Cruz', 'employee', '4c4501548cb1fbf146201d6b3f1828b1', 'Rovic1.jpg'),
(4, '2022-E0003', 'Elaine Enricoso', 'elaine.enricoso@gmail.com', 'Jane Doe', 'employee', '9c1533d53b02039a76402407d65a5e46', 'Elaine1.png'),
(5, '2022-E0004', 'John Michael Reyes', 'jeem@gmail.com', 'Enteng Kabisote', 'employee', '11edd5475736938f90e47017c3c51b10', 'JM1.png');

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
-- Indexes for table `devices`
--
ALTER TABLE `devices`
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
-- AUTO_INCREMENT for table `devices`
--
ALTER TABLE `devices`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `user_information`
--
ALTER TABLE `user_information`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
