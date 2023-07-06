-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 06, 2023 at 06:28 AM
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
(8, 11, 'Koi Watercolor Pocket Field Sketch Box', 'Miscellaneous', 'Colours: 24, Size: 11.55 x 15.8 x 2.9 cm, Weight: 260gm, Has minor flaws or defects', 28.9, 1, 'Changlun', 'Kedah', '6.4502267', '100.4958833', '2023-06-12 01:37:17'),
(10, 1, 'NK Dunk Low', 'Clothing and Accessories', 'Size: EU40/UK6/US7, Brand: Nike, Never used.', 250, 8, 'Mountain View', 'California', '37.4219983', '-122.084', '2023-07-03 22:43:51'),
(11, 1, 'X12 Poratble Classic GameBoy', 'Electronic', 'Model: X12, More than 1000games, 90% Newly', 170, 18, 'Bukit Mertajam', 'Pulau Pinang', '5.343865', '100.4688133', '2023-07-03 22:46:12'),
(12, 1, 'Owl and Skung Terrarium', 'Furniture and Home Decor', 'Set of 2 - owl & skung, Handmade, Lightly used', 50, 25, 'Bukit Mertajam', 'Pulau Pinang', '5.343865', '100.4688133', '2023-07-03 22:49:13'),
(13, 1, 'Road Bike Shimano Tourney', 'Sports and Fitness Equipment', 'Has minor flaws or defects, 700C, Size 46, SHIMANO TOURNEY FR/RR/BRIFTERS, 14 SPEED', 500, 2, 'Bukit Mertajam', 'Pulau Pinang', '5.343865', '100.4688133', '2023-07-03 22:51:50'),
(14, 1, '2 Second Decathlon Tent', 'Others', 'Used once or twice, Condition like new', 250, 5, 'Bukit Mertajam', 'Pulau Pinang', '5.343865', '100.4688133', '2023-07-03 22:54:28'),
(15, 1, 'SoundStream Double Side', 'Appliances', '2.5-inch full range speakers, car speaker, With only 80Watts of power, Look like new', 290.5, 3, 'Bukit Mertajam', 'Pulau Pinang', '5.343865', '100.4688133', '2023-07-03 22:56:58'),
(16, 1, 'AMANO Time Recorder Machine', 'Appliances', 'Lightly used with care. Flaws, if any, are barely noticeable.', 680, 6, 'Bukit Mertajam', 'Pulau Pinang', '5.343865', '100.4688133', '2023-07-03 22:59:23'),
(17, 1, 'NIIMBOT Inkless Thermal Label', 'Electronic', 'Wireless Label Printer, No ink needed,Works with iOS and Android devices, Used once or twice', 130, 10, 'Bukit Mertajam', 'Pulau Pinang', '5.343865', '100.4688133', '2023-07-03 23:01:42'),
(18, 1, 'CHANEL Pink Card Holder', 'Clothing and Accessories', 'Never used. May come with original packaging or tag. Measure: 10 303227 11 303227 0.5 cm.', 230.6, 4, 'Bukit Mertajam', 'Pulau Pinang', '5.343865', '100.4688133', '2023-07-03 23:04:54'),
(19, 1, '916 pendant WAHCHAN', 'Collectibles and Antiques', 'Never used, May come with original packaging or tag.', 300.8, 2, 'Bukit Mertajam', 'Pulau Pinang', '5.343865', '100.4688133', '2023-07-03 23:06:53'),
(20, 1, 'Chanel Makeup Pouch', 'Miscellaneous', 'Chanel 2020 J12.20, Dustbag available, Size : 20 x 12 x 4cm, Never used', 59, 32, 'Bukit Mertajam', 'Pulau Pinang', '5.343865', '100.4688133', '2023-07-03 23:08:34'),
(21, 1, 'Stradivarius studded messenger bag', 'Clothing and Accessories', 'Used once or twice, Black, No defects!', 89, 6, 'Bukit Mertajam', 'Pulau Pinang', '5.343865', '100.4688133', '2023-07-03 23:10:40'),
(22, 1, 'Coach Small Card Case', 'Clothing and Accessories', 'Solid-tone card case with pebbled wash detail, 2 card slots, Dimensions: L10cm 303227 H6cm x W0.1cm,', 315.9, 3, 'Bukit Mertajam', 'Pulau Pinang', '5.343865', '100.4688133', '2023-07-03 23:12:30'),
(23, 1, 'Asics x Air Asia Cap', 'Collectibles and Antiques', 'Limited Edition, Never used, One Size, Unisex', 99, 1, 'Bukit Mertajam', 'Pulau Pinang', '5.343865', '100.4688133', '2023-07-03 23:14:35'),
(24, 1, 'Louis Vuitton Wallet', 'Miscellaneous', 'Used with care. Flaws, if any, are barely noticeable. Condition : 8/10, Size : (10.5 x 10.1 cm)', 380, 7, 'Bukit Mertajam', 'Pulau Pinang', '5.343865', '100.4688133', '2023-07-03 23:16:37'),
(25, 1, 'Huawei Watch Fit', 'Appliances', 'Used once or twice, fullset, no warranty', 200, 2, 'Bukit Mertajam', 'Pulau Pinang', '5.343865', '100.4688133', '2023-07-03 23:19:01'),
(26, 1, 'Takara Braves ', 'Baby and Kids', 'Has minor flaws or defects', 87, 9, 'Bukit Mertajam', 'Pulau Pinang', '5.343865', '100.4688133', '2023-07-03 23:21:40');

-- --------------------------------------------------------

--
-- Table structure for table `users_tbl`
--

CREATE TABLE `users_tbl` (
  `user_id` int(100) NOT NULL,
  `user_email` varchar(50) NOT NULL,
  `user_name` varchar(30) NOT NULL,
  `user_password` varchar(40) NOT NULL,
  `user_otp` int(5) NOT NULL,
  `user_date_register` datetime(6) NOT NULL DEFAULT current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users_tbl`
--

INSERT INTO `users_tbl` (`user_id`, `user_email`, `user_name`, `user_password`, `user_otp`, `user_date_register`) VALUES
(1, 'lzx@gmail.com', 'lim', '9b8c02fed3901e82728d18f32bb0369743b22c35', 94652, '2023-05-17 21:13:27.890951'),
(2, 'sifu@hotmail.com', 'Sifu', '5e10f43350ab4751cb58630b2277920c391ce751', 64895, '2023-05-19 15:12:47.148947'),
(3, 'zxlim@gmail.com', 'ZXlim', 'a5a6750c7649a43e683f4dd35e0007786972c3f6', 19283, '2023-05-18 22:01:16.307512'),
(4, 'alex@gmail.com', 'Alex', 'd052f85fa58fb0497ad4bb7f2d069dd486c4a9aa', 42432, '2023-05-19 20:28:22.213432'),
(9, 'zwei@gmail.com', 'Zwei', '9b8c02fed3901e82728d18f32bb0369743b22c35', 27339, '2023-05-20 23:52:55.772037'),
(11, 'lucas@gmail.com', 'Lucas', '1f7339c21e099a612f4392c12d4e506b69b4120b', 45636, '2023-05-21 10:31:11.873584'),
(13, 'zxing@gmail.com', 'zxing', '9b8c02fed3901e82728d18f32bb0369743b22c35', 89014, '2023-05-21 18:21:33.738050'),
(18, 'xyii#@gmail.com', 'xyii', '3f745fbde88d961831d94c2e0bc8f5832a97c63b', 91514, '2023-05-24 16:54:14.107041'),
(19, 'xhong@gmail.com', 'xhong', '29d8635b7cc36887a77efb5acaa562431586943b', 66077, '2023-05-24 16:55:13.182290');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `items_tbl`
--
ALTER TABLE `items_tbl`
  ADD PRIMARY KEY (`itm_id`);

--
-- Indexes for table `users_tbl`
--
ALTER TABLE `users_tbl`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `items_tbl`
--
ALTER TABLE `items_tbl`
  MODIFY `itm_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `users_tbl`
--
ALTER TABLE `users_tbl`
  MODIFY `user_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
