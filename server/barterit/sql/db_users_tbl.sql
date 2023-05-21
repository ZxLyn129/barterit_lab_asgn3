-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 20, 2023 at 06:35 AM
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
(5, 'lucas@gmail.com', 'Lucas', 'd052f85fa58fb0497ad4bb7f2d069dd486c4a9aa', 28970, '2023-05-19 20:38:15.753614');

--
-- Indexes for dumped tables
--

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
-- AUTO_INCREMENT for table `users_tbl`
--
ALTER TABLE `users_tbl`
  MODIFY `user_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
