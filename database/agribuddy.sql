-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Sep 25, 2022 at 12:55 PM
-- Server version: 8.0.23
-- PHP Version: 7.4.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `agribuddy`
--

-- --------------------------------------------------------

--
-- Table structure for table `bestfit`
--

CREATE TABLE `bestfit` (
  `id` int NOT NULL,
  `maincrop` varchar(255) NOT NULL,
  `landscape` varchar(255) NOT NULL,
  `soil` varchar(255) NOT NULL,
  `rain` varchar(255) NOT NULL,
  `crop` varchar(255) NOT NULL,
  `title` int NOT NULL,
  `description` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `bestfit`
--

INSERT INTO `bestfit` (`id`, `maincrop`, `landscape`, `soil`, `rain`, `crop`, `title`, `description`) VALUES
(1, 'Food crops', 'Plain Ground', 'Salty', 'Low', 'Sweet Cron', 20, 'Sweet Cron grows well in plain grounds under less perspiration on salty surfaces. Since it grows well with very less artificial fertilizer, in capex is very less also it has own protection again viral attacked and insect attacks.'),
(2, 'Food crops', 'Plain Ground', 'Humas', 'Meduim', 'Banana', 30, 'Banana, one of the most famous domestic fruit grows well in plain ground under humas riched soil. Rain needs to be on average range and temperature between 30-35 Celsius for a best harvest.    '),
(3, 'Food crops', 'Plain Ground', 'Clay', 'Meduim', 'Mango', 30, 'Mango, one of the most famous domestic fruit grows well in plain ground under clay riched soil. Rain needs to be on average range and temperature between 25-35 Celsius for a best harvest.    '),
(4, 'Food crops', 'Hill Country/Mountain', 'Salty', 'Meduim', 'Grapes', 30, 'One of the most famous fruit grows well in plain ground under salty riched soil. Rain needs to be on average range and temperature between 25-35 Celsius for a best harvest.    ');

-- --------------------------------------------------------

--
-- Table structure for table `knowledgeup`
--

CREATE TABLE `knowledgeup` (
  `id` int NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `author` varchar(255) NOT NULL,
  `date` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `knowledgeup`
--

INSERT INTO `knowledgeup` (`id`, `title`, `description`, `author`, `date`) VALUES
(1, 'Harvest Improvement', 'According to Forest Service, the definition of an Improvement Harvest is, The removal of less desirable trees in a stand of poles or larger trees, primarily to improve composition and quality.', 'Ujitha Sudasingha', 'Sep 17,2022'),
(2, 'Plant Natural Protecttion ', 'Plants are ubiquitous. Without them, Earth as we know it could not exist. Yet, a staggering number of animal species eat plants. Some are familiar, like large grazing mammals including deer or cattle.', 'Ishani Bandara', 'Sep 19,2022');

-- --------------------------------------------------------

--
-- Table structure for table `location_temp`
--

CREATE TABLE `location_temp` (
  `id` int NOT NULL,
  `lat` double NOT NULL,
  `lan` double NOT NULL,
  `temp` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `location_temp`
--

INSERT INTO `location_temp` (`id`, `lat`, `lan`, `temp`) VALUES
(1, 6.923240167088807, 80.02128736115992, 20);

-- --------------------------------------------------------

--
-- Table structure for table `updateme`
--

CREATE TABLE `updateme` (
  `id` int NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `date` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `updateme`
--

INSERT INTO `updateme` (`id`, `title`, `description`, `date`) VALUES
(1, 'Tsunami Disaster', 'Red notice for Tusnami in African sea area.', 'Sep 18,2022'),
(2, 'Tonado', 'Tonado alert near North America on 2022.09.18.', 'Sep 17,2022'),
(3, 'Flood', 'High change for flood near Tokiyo today', 'Sep 22,2022'),
(4, 'Wind', 'High wind near African region on 2022.09.29.', 'Sep 25,2022'),
(5, 'Insect Attack', 'Insect Attack for coconut plantation.', 'Sep 29,2022');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bestfit`
--
ALTER TABLE `bestfit`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `knowledgeup`
--
ALTER TABLE `knowledgeup`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `location_temp`
--
ALTER TABLE `location_temp`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `updateme`
--
ALTER TABLE `updateme`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bestfit`
--
ALTER TABLE `bestfit`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `knowledgeup`
--
ALTER TABLE `knowledgeup`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `location_temp`
--
ALTER TABLE `location_temp`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `updateme`
--
ALTER TABLE `updateme`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
