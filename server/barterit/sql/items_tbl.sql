-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 12, 2023 at 12:46 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `barterit_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `items_tbl`
--

CREATE TABLE `items_tbl` (
  `itm_id` int(5) NOT NULL,
  `itm_owner_id` int(5) NOT NULL,
  `itm_name` varchar(50) NOT NULL,
  `itm_type` varchar(50) NOT NULL,
  `itm_des` varchar(100) NOT NULL,
  `itm_price` double NOT NULL,
  `itm_qty` int(11) NOT NULL,
  `itm_state` varchar(50) NOT NULL,
  `itm_locality` varchar(50) NOT NULL,
  `itm_latitude` varchar(50) NOT NULL,
  `itm_longitude` varchar(50) NOT NULL,
  `itm_date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `items_tbl`
--

INSERT INTO `items_tbl` (`itm_id`, `itm_owner_id`, `itm_name`, `itm_type`, `itm_des`, `itm_price`, `itm_qty`, `itm_state`, `itm_locality`, `itm_latitude`, `itm_longitude`, `itm_date`) VALUES
(1, 11, 'LEGO Lunar Roving Vehicle', 'Baby and Kids', 'Lego Code: 60348, Suitable ages: 6+ years, 99% Newly', 88.8, 1, 'Changlun', 'Kedah', '6.4502267', '100.4958833', '2023-06-12 00:55:45'),
(2, 11, 'MR.DIY Rice Cooker', 'Appliances', 'Capacity: 1.8L, Years used: 1 year half, 80% Newly, ', 53.2, 2, 'Changlun', 'Kedah', '6.4502267', '100.4958833', '2023-06-12 01:00:01'),
(3, 11, 'New Balance Hoodie', 'Clothing and Accessories', 'Size: M, Color: Grey, Unisex, MADE in USA, Year used: half years, 91% Newly', 490, 2, 'Changlun', 'Kedah', '6.4502267', '100.4958833', '2023-06-12 01:04:08'),
(4, 11, 'Work / Study Desk Table', 'Furniture and Home Decor', 'Brand: AM Office, Width: 120, Depth: 70, Height: 75, Style: Minimalist, Year used: 4 years, 50% Newl', 132.5, 6, 'Changlun', 'Kedah', '6.4502267', '100.4958833', '2023-06-12 01:07:55'),
(5, 11, 'PS4 slim', 'Electronic', 'Size: 500GB, 2 Control Original, Game: FIFA2023 & PES2023, Year used: 1 years more, 80% Newly', 850, 1, 'Changlun', 'Kedah', '6.4502267', '100.4958833', '2023-06-12 01:26:50'),
(6, 11, 'Bhois Retro Vespa Helmet', 'Vehicles', 'Size: L, Circumference: 59-60cm, Good quality, 100% Newly, Never used', 245.5, 1, 'Changlun', 'Kedah', '6.4502267', '100.4958833', '2023-06-12 01:29:57'),
(7, 11, 'Bridgerton: To Sir Philip, With Love', 'Books, Music, and Movies', 'Version: 5, Never Used, Original packaging or tag, 99% Newly', 25, 1, 'Changlun', 'Kedah', '6.4502267', '100.4958833', '2023-06-12 01:33:45'),
(8, 11, 'Koi Watercolor Pocket Field Sketch Box', 'Miscellaneous', 'Colours: 24, Size: 11.55 x 15.8 x 2.9 cm, Weight: 260gm, Has minor flaws or defects', 28.9, 1, 'Changlun', 'Kedah', '6.4502267', '100.4958833', '2023-06-12 01:37:17');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `items_tbl`
--
ALTER TABLE `items_tbl`
  ADD PRIMARY KEY (`itm_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `items_tbl`
--
ALTER TABLE `items_tbl`
  MODIFY `itm_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
