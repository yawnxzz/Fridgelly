-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 14, 2025 at 09:14 AM
-- Server version: 10.1.25-MariaDB
-- PHP Version: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fridgelly`
--

-- --------------------------------------------------------

--
-- Table structure for table `cuisine`
--

CREATE TABLE `cuisine` (
  `cuisine_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cuisine`
--

INSERT INTO `cuisine` (`cuisine_id`, `name`) VALUES
(1, 'Malay'),
(2, 'Malay'),
(3, 'Malay'),
(4, 'Thai'),
(5, 'Chinese'),
(6, 'Indian'),
(7, 'Korean'),
(8, 'Japanese'),
(9, 'Italian'),
(10, 'Mexican'),
(11, 'French'),
(12, 'Turkish'),
(13, 'Spanish'),
(14, 'British');

-- --------------------------------------------------------

--
-- Table structure for table `recipe`
--

CREATE TABLE `recipe` (
  `recipe_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `time_needs` int(11) NOT NULL,
  `cuisine_id` int(11) NOT NULL,
  `likes_count` int(11) NOT NULL,
  `image_url` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `recipe`
--

INSERT INTO `recipe` (`recipe_id`, `title`, `time_needs`, `cuisine_id`, `likes_count`, `image_url`) VALUES
(1, 'Nasi Lemak', 30, 1, 120, ''),
(2, 'Tom Yum Soup', 40, 2, 95, ''),
(3, 'Sweet and Sour Chicken', 25, 3, 80, ''),
(4, 'Chicken Biryani', 50, 4, 110, ''),
(5, 'Bibimbap', 35, 5, 150, ''),
(6, 'Sushi Rolls', 45, 6, 200, ''),
(7, 'Spaghetti Carbonara', 30, 7, 140, ''),
(8, 'Tacos', 20, 8, 85, ''),
(9, 'Croissant', 2, 9, 60, ''),
(10, 'Kebab', 30, 10, 70, ''),
(11, 'Paella', 1, 11, 55, ''),
(12, 'Fish and Chips', 25, 12, 100, '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cuisine`
--
ALTER TABLE `cuisine`
  ADD PRIMARY KEY (`cuisine_id`);

--
-- Indexes for table `recipe`
--
ALTER TABLE `recipe`
  ADD PRIMARY KEY (`recipe_id`),
  ADD KEY `cuisine_id` (`cuisine_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cuisine`
--
ALTER TABLE `cuisine`
  MODIFY `cuisine_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `recipe`
--
ALTER TABLE `recipe`
  MODIFY `recipe_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `recipe`
--
ALTER TABLE `recipe`
  ADD CONSTRAINT `recipe_ibfk_1` FOREIGN KEY (`cuisine_id`) REFERENCES `recipe` (`recipe_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
