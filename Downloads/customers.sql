-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 05, 2022 at 07:39 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `example_app`
--

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `designation` varchar(40) NOT NULL,
  `contact` varchar(50) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `name`, `email`, `designation`, `contact`, `created_at`, `updated_at`) VALUES
(1, 'Meet', 'meet@mail.com', 'Software Engineer', '1234567890', '2019-01-15 11:13:49', '2019-01-17 11:13:49'),
(2, 'Shubham', 'shubham@mail.com', 'Associate Consultant', '1478963258', '2019-02-15 18:14:07', '2019-02-15 18:14:07'),
(3, 'Jigar', 'jigar@mail.com', 'Software Developer', '0321456987', '2022-01-05 04:14:20', '2022-01-05 04:14:20'),
(4, 'Kishan', 'kishan@mail.com', 'Product Manager', '0123456789', '2020-06-15 11:14:41', '2020-06-15 11:14:41'),
(5, 'Mukul', 'mukul@mail.com', 'Accountant', '4565487895', '2020-12-17 07:14:53', '2020-12-24 10:14:53'),
(6, 'Shraddha', 'shraddha@mail.com', 'Quality Analyst', '3212321232', '2019-08-05 20:05:03', '2019-08-05 20:05:03'),
(7, 'Maharshi', 'maharshi@mail.com', 'Marketing Head', '1212212121', '2021-09-15 08:08:25', '2021-09-15 04:08:25'),
(8, 'Kush', 'kush@mail.com', 'Sales Head', '4532543254', '2021-07-30 10:19:39', '2021-07-30 10:19:39'),
(9, 'Smit', 'smit@mail.com', 'Product Manager', '1798321221', '2021-03-26 21:22:52', '2021-03-10 21:22:52'),
(10, 'Keval', 'keval@mail.com', 'Cyber Security Expert', '3265789852', '2022-01-01 00:00:00', '2022-01-01 00:00:00'),
(11, 'Maulik', 'maulik@mail.com', 'Accountant', '1021021021', '2021-04-22 17:16:22', '2021-04-22 17:16:22'),
(12, 'Parth', 'parth@mail.com', 'Software Engineer', '3030303030', '2020-07-15 15:16:39', '2020-06-11 15:16:39'),
(14, 'Vicky', 'vicky_updated@mail.com', 'Developer', '5050505050', '2021-11-09 23:25:48', '2021-11-09 23:25:48'),
(18, 'Komal', 'komal@mail.com', 'Senior HR', '5412365412', '2021-02-26 11:15:01', '2021-02-26 11:15:01'),
(21, 'Customer', 'customer@customer.com', 'designation', '9784563210', '2022-12-05 00:00:00', '2022-12-05 00:00:00'),
(24, 'Customer2', 'customer2@customer.com', 'designation2', '9784563212', '2022-12-05 00:00:00', '2022-12-05 00:00:00'),
(32, 'Customer_name', 'customer_email@customer.com', 'designation_designation', '9784563210', '2022-12-05 00:00:00', '2022-12-05 00:00:00'),
(41, 'Customer3', 'customer3@customer.com', 'designation', '9784563210', '2022-12-05 00:00:00', '2022-12-05 00:00:00'),
(42, 'amit Updated', 'amit_email3@customer.com', 'amit_designation updated', '9784563210', '2022-12-05 00:00:00', '2022-12-05 00:00:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
