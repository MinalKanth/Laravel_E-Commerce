-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 03, 2022 at 02:20 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `crud2`
--

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `id` int(11) NOT NULL,
  `state_id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`id`, `state_id`, `name`) VALUES
(1, 1, 'Mumbai'),
(2, 1, 'Pune'),
(3, 2, 'Lahore XYZ city'),
(4, 3, 'Amaravati'),
(5, 4, 'Itanagar'),
(6, 5, 'Dispur'),
(7, 6, 'Gandhinagar'),
(8, 7, 'Bhubaneswar'),
(9, 8, 'Gangtok'),
(10, 9, 'Chennai'),
(11, 10, 'Lucknow'),
(12, 11, 'Kolkata');

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `name`) VALUES
(1, 'India'),
(2, 'Pakistan');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `id` int(11) NOT NULL,
  `emp_name` varchar(80) NOT NULL,
  `salary` varchar(20) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `city` varchar(80) NOT NULL,
  `email` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`id`, `emp_name`, `salary`, `gender`, `city`, `email`) VALUES
(1, 'Yogesh', '30000', 'male', 'Bhopal', 'yogesh@makitweb.com'),
(2, 'Vishal', '28000', 'male', 'Pune', 'vishal@makitweb.com'),
(3, 'Vijay', '35000', 'male', 'Jaipur', 'vijayec@makitweb.com'),
(4, 'Rahul', '25000', 'male', 'Kanpur', 'rahul512@makitweb.com'),
(5, 'Sonarika', '50000', 'female', 'Mumbai', 'bsonarika@makitweb.com'),
(6, 'Jitentendre', '48000', 'male', 'Bhopal', 'jiten94@makitweb.com'),
(7, 'Aditya', '36000', 'male', 'Pune', 'aditya@makitweb.com'),
(8, 'Anil', '32000', 'male', 'Indore', 'anilsingh@makitweb.com'),
(9, 'Sunil', '48000', 'male', 'Nagpur', 'sunil1993@makitweb.com'),
(10, 'Akilesh', '52000', 'male', 'Surat', 'akileshsahu@makitweb.com'),
(11, 'Raj', '48000', 'male', 'Ahmedabad', 'rajsingh@makitweb.com'),
(12, 'Mayank', '54000', 'male', 'Ghaziabad', 'mpatidar@makitweb.com'),
(13, 'Shalu', '43000', 'female', 'Bhopal', 'gshalu521@makitweb.com'),
(14, 'Ravi', '32000', 'male', 'Ludhiana', 'ravisharma21@makitweb.com'),
(15, 'Shruti', '45000', 'female', 'Delhi', 'shruti@makitweb.com'),
(16, 'Rishi', '38000', 'male', 'Mumbai', 'rishi121@makitweb.com'),
(17, 'Rohan', '47000', 'male', 'Jaipur', 'rohansingh@makitweb.com'),
(18, 'Priya', '28000', 'female', 'Indore', 'priya1992@makitweb.com'),
(19, 'Rakesh', '34000', 'male', 'bhopal', 'rakesh@makitweb.com'),
(20, 'Vinay', '34000', 'male', 'Delhi', 'vinaysingh@makitweb.com'),
(21, 'Tanu', '41000', 'female', 'pune', 'Tanu@makitweb.com'),
(22, 'Ajay', '28000', 'male', 'bhopal', 'ajay93@makitweb.com'),
(23, 'Nikhil', '46000', 'male', 'pune', 'nikhil@makitweb.com'),
(24, 'Arav', '28000', 'male', 'Nagpur', 'aravsingh@makitweb.com'),
(25, 'Madhu', '32000', 'female', 'Rajkot', 'madhu@makitweb.com'),
(26, 'Sagar', '44000', 'male', 'Rajkot', 'sagar@makitweb.com'),
(27, 'Anju ', '30000', 'female', 'Ranchi', 'anju@makitweb.com'),
(28, 'Rajat', '28000', 'male', 'kota', 'rajat@makitweb.com'),
(29, 'Anjali', '32000', 'female', 'Gwalior', 'anjali@makitweb.com'),
(30, 'Saloni', '32000', 'female', 'Nashik', 'saloni@makitweb.com'),
(31, 'Mayur', '28000', 'male', 'Bhopal', 'mayur@makitweb.com'),
(32, 'Pankaj', '32000', 'male', 'Indore', 'pankaj@makitweb.com'),
(33, 'Hrithik', '33000', 'male', 'Pune', 'hrithik@makitweb.com');

-- --------------------------------------------------------

--
-- Table structure for table `members`
--

CREATE TABLE `members` (
  `id` int(11) NOT NULL,
  `first_name` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `gender` enum('Male','Female') COLLATE utf8_unicode_ci NOT NULL,
  `country` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `created` datetime NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1=Active | 0=Inactive'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `members`
--

INSERT INTO `members` (`id`, `first_name`, `last_name`, `email`, `gender`, `country`, `created`, `status`) VALUES
(1, 'M', 'Kanth', 'minalkanth.9@gmail.com', 'Male', 'INDIA', '2022-10-31 00:00:00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `reg`
--

CREATE TABLE `reg` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `dob` varchar(255) NOT NULL,
  `des` varchar(255) NOT NULL,
  `qua` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `mo` bigint(20) NOT NULL,
  `gender` varchar(25) NOT NULL,
  `loc` varchar(25) NOT NULL,
  `country` varchar(25) NOT NULL,
  `state` varchar(25) NOT NULL,
  `city` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reg`
--

INSERT INTO `reg` (`id`, `name`, `dob`, `des`, `qua`, `email`, `mo`, `gender`, `loc`, `country`, `state`, `city`) VALUES
(1, 'Abhimanyu', '2022-11-24', 'Minal', 'Kanth', 'asd@gmail.com', 9678001910, 'male', 'yes', '1', '3', '4'),
(2, 'Minal Kanth', '2022-12-01', 'Developer', 'MCA', 'minalkanth.9@gmail.com', 9678001911, 'male', 'no', '1', '5', '6'),
(3, 'Cedric Kelly', '2022-11-19', 'Developer', 'MCA', 'CedricKelly@gmail.com', 9678001912, 'male', 'no', '2', '2', '3'),
(4, 'Aditya', '2022-11-19', 'Developer', 'MCA', 'CedricKelly@gmail.com', 9678001913, 'male', 'yes', '1', '4', '5'),
(5, 'Ayushmaan', '2022-11-19', 'Developer', 'MCA', 'CedricKelly@gmail.com', 9678001914, 'male', 'no', '1', '6', '7'),
(6, 'Chaitanya', '2022-11-03', 'fsd1', 'sdf1', 'sdf@gmail', 9864214136, 'male', 'yes', '1', '8', '9'),
(7, 'Dhruv', '2022-11-24', 'Minal', 'Kanth', 'asd@gmail.com', 9678001915, 'male', 'yes', '1', '9', '10'),
(8, 'Himanshu', '2022-12-01', 'Developer', 'MCA', 'minalkanth.9@gmail.com', 9678001916, 'male', 'no', '1', '10', '11'),
(9, 'Ishaan', '2022-11-03', 'fsd', 'sdf', 'sdf@2gmail.com', 9864214137, 'male', 'yes', '1', '11', '12'),
(10, 'Krishna', '2022-12-01', 'Developer', 'MCA', 'minalkanth.9@gmail.com', 9678001918, 'male', 'no', '1', '1', '2'),
(11, 'Lakshya', '2022-11-03', 'fsd', 'sdf', 'sdf@3gmail.com', 9864214139, 'male', 'yes', '1', '1', '1'),
(12, 'chit', '2022-11-03', 'Developer', 'MCA', 'chit.9@gmail.com', 9678001910, 'male', 'yes', '1', '7', '8'),
(93, 'aaaaaa', '2022-11-03', 'Developer', 'MCA', 'fsd@gmail.com', 9678001910, 'female', 'no', '1', '1', '2');

-- --------------------------------------------------------

--
-- Table structure for table `states`
--

CREATE TABLE `states` (
  `id` int(11) NOT NULL,
  `country_id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `states`
--

INSERT INTO `states` (`id`, `country_id`, `name`) VALUES
(1, 1, 'Maharastra'),
(2, 2, 'Lahore'),
(3, 1, 'Andhra Pradesh'),
(4, 1, 'Arunachal Pradesh'),
(5, 1, 'Assam'),
(6, 1, 'Gujarat'),
(7, 1, 'Odisha'),
(8, 1, 'Sikkim'),
(9, 1, 'Tamil Nadu'),
(10, 1, 'Uttar Pradesh'),
(11, 1, 'West Bengal');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(80) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `city` varchar(80) NOT NULL,
  `email` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `gender`, `city`, `email`) VALUES
(1, 'aaaa', 'aaaaaaa', 'aaaaaaaaaaaaaa', 'aa@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `users2`
--

CREATE TABLE `users2` (
  `id` int(11) NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users2`
--

INSERT INTO `users2` (`id`, `fullname`, `email`) VALUES
(1, 'aaaa', 'aa@gmail.com'),
(3, 'assdasdas', 'asd@gmail.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `members`
--
ALTER TABLE `members`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reg`
--
ALTER TABLE `reg`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `states`
--
ALTER TABLE `states`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users2`
--
ALTER TABLE `users2`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `members`
--
ALTER TABLE `members`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `reg`
--
ALTER TABLE `reg`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=94;

--
-- AUTO_INCREMENT for table `states`
--
ALTER TABLE `states`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users2`
--
ALTER TABLE `users2`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
