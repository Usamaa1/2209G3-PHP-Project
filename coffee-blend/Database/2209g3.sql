-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 25, 2023 at 04:14 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `2209g3`
--

-- --------------------------------------------------------

--
-- Table structure for table `first_table`
--

CREATE TABLE `first_table` (
  `std_id` int(11) NOT NULL,
  `std_name` varchar(50) NOT NULL,
  `std_course` varchar(50) NOT NULL,
  `std_city` varchar(50) NOT NULL,
  `std_country` varchar(50) NOT NULL,
  `date_join` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `first_table`
--

INSERT INTO `first_table` (`std_id`, `std_name`, `std_course`, `std_city`, `std_country`, `date_join`) VALUES
(1, 'Fawad', 'Pre-Medical', 'Dhaka', 'Bangladesh', '2023-09-04'),
(2, 'Fawad', 'Pre-Medical', 'Dhaka', 'Bangladesh', '2023-09-04'),
(3, 'Fawad', 'Pre-Medical', 'Dhaka', 'Bangladesh', '2023-09-04'),
(4, 'Fawad', 'Pre-Medical', 'Dhaka', 'Bangladesh', '2023-09-04'),
(5, 'Fawad', 'Pre-Medical', 'Dhaka', 'Bangladesh', '2023-09-04'),
(6, 'Fawad', 'Pre-Medical', 'Dhaka', 'Bangladesh', '2023-09-04');

-- --------------------------------------------------------

--
-- Table structure for table `imageupload`
--

CREATE TABLE `imageupload` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `image` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `imageupload`
--

INSERT INTO `imageupload` (`id`, `name`, `image`) VALUES
(14, 'Cat', 'olu-famule-kYx_g4YBfLI-unsplash.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `pdo_crud`
--

CREATE TABLE `pdo_crud` (
  `product_id` int(11) NOT NULL,
  `product_name` varchar(200) NOT NULL,
  `product_price` int(11) NOT NULL,
  `product_desc` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pdo_crud`
--

INSERT INTO `pdo_crud` (`product_id`, `product_name`, `product_price`, `product_desc`) VALUES
(10, 'Xiomi 13 ultra', 45000, '256GB 12GB RAM, 50 MP, f/1.9 or f/4.0, 23mm (wide), 1.0\"-type, 1.6µm, multi-directional PDAF, Laser AF, OIS'),
(11, 'Rolling Pin', 300, 'A roller pin is a cylindrical food preparation utensil used to shape and flatten dough');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `first_table`
--
ALTER TABLE `first_table`
  ADD PRIMARY KEY (`std_id`);

--
-- Indexes for table `imageupload`
--
ALTER TABLE `imageupload`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pdo_crud`
--
ALTER TABLE `pdo_crud`
  ADD PRIMARY KEY (`product_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `first_table`
--
ALTER TABLE `first_table`
  MODIFY `std_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `imageupload`
--
ALTER TABLE `imageupload`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `pdo_crud`
--
ALTER TABLE `pdo_crud`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
