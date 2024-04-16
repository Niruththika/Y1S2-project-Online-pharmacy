-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 11, 2023 at 02:30 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pharmacy`
--

-- --------------------------------------------------------

--
-- Table structure for table `prescription_details`
--

CREATE TABLE `prescription_details` (
  `id` int(11) NOT NULL,
  `patient_name` varchar(50) NOT NULL,
  `patient_age` int(11) NOT NULL,
  `patient_address` varchar(70) NOT NULL,
  `Email` varchar(30) NOT NULL,
  `gender` varchar(11) NOT NULL,
  `medicine_details` varchar(50) NOT NULL,
  `payment` varchar(20) NOT NULL,
  `payment_method` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `prescription_details`
--

INSERT INTO `prescription_details` (`id`, `patient_name`, `patient_age`, `patient_address`, `Email`, `gender`, `medicine_details`, `payment`, `payment_method`) VALUES
(3, 'Shethu', 22, 'Jaffna', '', 'female', 'gablin 100mg,5', 'card payment', 'cash'),
(5, 'jer', 90, 'hatton', 'jtn@gmail.com', 'Male', 'zijn', 'card payment', 'cash'),
(6, 'jer', 90, 'hatton', 'jtn@gmail.com', 'Male', 'zijn', 'card payment', 'cash'),
(7, 'jer', 90, 'hatton', 'jtn@gmail.com', 'Male', 'zijn', 'card payment', 'cash'),
(8, 'jer', 90, 'hatton', 'jtn@gmail.com', 'Male', 'zijn', 'card payment', 'cash'),
(9, 'h', 87, 'hatton', 'jtn@gmail.com', 'Male', 'ni', 'card payment', 'cash on delivery'),
(10, 'buro', 45, 'colombo', 'jtn@gmail.com', 'Male', 'jtn', 'card payment', 'cash'),
(11, 'buro', 45, 'colombo', 'jtn@gmail', 'Male', 'jtn', 'card payment', 'cash'),
(12, 'buro', 45, 'colombo', 'jtn@gm00', 'Male', 'jtn', 'card payment', 'cash'),
(13, 'jeran', 76, '54', 'jtn@gmail.com', 'female', 'hg', 'card payment', 'cash on delivery'),
(14, 'marl', 87, 'mSK', 'jtn@gmail.com', 'Male', 'hzg', 'card payment', 'cash');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `prescription_details`
--
ALTER TABLE `prescription_details`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `prescription_details`
--
ALTER TABLE `prescription_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
