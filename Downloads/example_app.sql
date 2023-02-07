-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 02, 2022 at 01:07 PM
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
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `DEPTCODE` int(10) NOT NULL,
  `DeptName` varchar(15) DEFAULT NULL,
  `LOCATION` varchar(33) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`DEPTCODE`, `DeptName`, `LOCATION`) VALUES
(10, 'FINANCE', 'EDINBURGH'),
(20, 'SOFTWARE', 'PADDINGTON'),
(30, 'SALES', 'MAIDSTONE'),
(40, 'MARKETING', 'DARLINGTON'),
(50, 'ADMIN', 'BIRMINGHAM');

-- --------------------------------------------------------

--
-- Table structure for table `details`
--

CREATE TABLE `details` (
  `address_city` varchar(20) DEFAULT NULL,
  `email_ID` varchar(20) DEFAULT NULL,
  `school_id` int(11) DEFAULT NULL,
  `accomplishments` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `details`
--

INSERT INTO `details` (`address_city`, `email_ID`, `school_id`, `accomplishments`) VALUES
('Banglore', 'jsingh@geeks.com', 1020, 'ACM ICPC selected'),
('Hyderabad', 'praveen@geeks.com', 1030, 'Geek of the month'),
('Delhi', 'rithvik@geeks.com', 1012, 'IOI finalist'),
('Chennai', 'om@geeks.com', 1111, 'Geek of the year'),
('Banglore', ' suraj@geeks.com', 1008, 'IMO finalist'),
('Mumbai', 'sasukeh@geeks.com', 2211, 'Made a robot'),
('Ahmedabad', 'itachi@geeks.com', 1172, 'Code Jam finalist'),
('Jaipur', 'kumar@geeks.com', 1972, 'KVPY finalist');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `id` int(11) NOT NULL,
  `emp_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `department` varchar(255) NOT NULL,
  `designation` varchar(255) NOT NULL,
  `joining_date` date NOT NULL,
  `gender` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`id`, `emp_id`, `name`, `email`, `department`, `designation`, `joining_date`, `gender`) VALUES
(1001, 23, 'Minal Kanth', 'minalkanth.9@gmail.com', 'IT', 'Developer', '2022-11-02', 1),
(1002, 24, 'Mohit Kumar', 'mohit.9@gmail.com', 'IT', 'Developer', '2022-11-05', 1),
(1003, 25, 'Girl', 'girl1@gmail.com', 'IT', 'Developer', '2022-11-02', 0),
(1004, 26, 'ladki', 'ladki2@gmail.com', 'IT', 'Developer', '2022-11-05', 0),
(1015, 27, 'Cedric Kelly', 'CedricKelly@gmail.com', 'Marketing', 'asasasasasasasasasasasasasasas', '2022-11-10', 0),
(1016, 28, 'moi', 'moi@gmail.com', 'Quality', 'Manager', '2022-11-24', 1),
(1018, 29, 'aaaaaa', 'as@gmail.com', 'R&amp;D', 'asasasasasasasasasasasasasasas', '2022-11-26', 1),
(1020, 1021, 'Chitranjan Sahu', 'chitranjan@gmail.com', 'Dot Net', 'Senior Developer', '2021-11-12', 1),
(1021, 1021, 'Chitranjan Sahu 2', 'chitranjan@gmail.com', 'Dot Net', 'Senior Developer', '2021-11-12', 1),
(1022, 1021, 'Chitranjan', 'chitranjan@gmail.com', 'Dot Net', 'Senior Developer', '2021-11-12', 1),
(1028, 1021, 'Chitranjan', 'chitranjan@gmail.com', 'Dot Net', 'Senior Developer', '2021-11-12', 1),
(1029, 33, 'hi_my_name', 'hi_my_email@gmail.com', 'Dot Net', 'Senior Developer', '2021-11-12', 1);

-- --------------------------------------------------------

--
-- Table structure for table `marks`
--

CREATE TABLE `marks` (
  `school_id` int(11) NOT NULL,
  `s_id` int(11) DEFAULT NULL,
  `score` int(11) DEFAULT NULL,
  `status` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `marks`
--

INSERT INTO `marks` (`school_id`, `s_id`, `score`, `status`) VALUES
(1004, 1, 23, 'fail'),
(1008, 6, 95, 'pass'),
(1012, 2, 97, 'pass'),
(1016, 7, 67, 'pass'),
(1020, 3, 100, 'pass'),
(1025, 8, 73, 'pass'),
(1030, 4, 88, 'pass'),
(1035, 9, 13, 'fail'),
(1040, 5, 16, 'fail'),
(1050, 10, 53, 'pass');

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `EmpCode` int(4) NOT NULL,
  `EmpFName` varchar(15) DEFAULT NULL,
  `EmpLName` varchar(15) DEFAULT NULL,
  `Job` varchar(45) DEFAULT NULL,
  `Manager` char(4) DEFAULT NULL,
  `HireDate` date DEFAULT NULL,
  `Salary` decimal(6,2) DEFAULT NULL,
  `Commission` int(6) DEFAULT NULL,
  `DEPTCODE` int(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`EmpCode`, `EmpFName`, `EmpLName`, `Job`, `Manager`, `HireDate`, `Salary`, `Commission`, `DEPTCODE`) VALUES
(9369, 'TONY', 'STARK', 'SOFTWARE ENGINEER', '7902', '1980-12-17', '2800.00', 0, 20),
(9499, 'TIM', 'ADOLF', 'SALESMAN', '7698', '1981-02-20', '1600.00', 300, 30),
(9566, 'KIM', 'JARVIS', 'MANAGER', '7839', '1981-04-02', '3570.00', 0, 20),
(9591, 'WENDY', 'SHAWN', 'SALESMAN', '7698', '1981-02-22', '500.00', 0, 30),
(9654, 'SAM', 'MILES', 'SALESMAN', '7698', '1981-09-28', '1250.00', 1400, 30),
(9698, 'BELLA', 'SWAN', 'MANAGER', '7839', '1981-05-01', '3420.00', 0, 30),
(9777, 'MADII', 'HIMBURY', 'ANALYST', '7839', '1981-05-01', '2000.00', 200, NULL),
(9782, 'KEVIN', 'HILL', 'MANAGER', '7839', '1981-06-09', '2940.00', 0, 10),
(9788, 'CONNIE', 'SMITH', 'ANALYST', '7566', '1982-12-09', '3000.00', 0, 20),
(9839, 'ALFRED', 'KINSLEY', 'PRESIDENT', '7566', '1981-11-17', '5000.00', 0, 10),
(9844, 'PAUL', 'TIMOTHY', 'SALESMAN', '7698', '1981-09-08', '1500.00', 0, 30),
(9860, 'ATHENA', 'WILSON', 'ANALYST', '7839', '1992-06-21', '7000.00', 100, 50),
(9861, 'JENNIFER', 'HUETTE', 'ANALYST', '7839', '1996-07-01', '5000.00', 100, 50),
(9876, 'JOHN', 'ASGHAR', 'SOFTWARE ENGINEER', '7788', '1983-01-12', '3100.00', 0, 20),
(9900, 'ROSE', 'SUMMERS', 'TECHNICAL LEAD', '7698', '1981-12-03', '2950.00', 0, 20),
(9902, 'ANDREW', 'FAULKNER', 'ANAYLYST', '7566', '1981-12-03', '3000.00', 0, 10),
(9934, 'KAREN', 'MATTHEWS', 'SOFTWARE ENGINEER', '7782', '1982-01-23', '3300.00', 0, 20);

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `s_id` int(11) NOT NULL,
  `s_name` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`s_id`, `s_name`) VALUES
(1, 'Jack'),
(2, 'Rithvik'),
(3, 'Jaspreet'),
(4, 'Praveen'),
(5, 'Bisa'),
(6, 'Suraj');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `role_id` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0: User, 1: Admin',
  `fname` varchar(50) NOT NULL,
  `lname` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `pass` varchar(255) NOT NULL,
  `contact` bigint(11) NOT NULL,
  `gender` enum('Male','Female') NOT NULL,
  `address` text NOT NULL,
  `state` varchar(50) NOT NULL,
  `profile` text NOT NULL,
  `hobbies` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role_id`, `fname`, `lname`, `email`, `pass`, `contact`, `gender`, `address`, `state`, `profile`, `hobbies`) VALUES
(7, 1, 'Minal Kanth', 'Admin', 'minalkanth.1@gmail.com', '$2y$10$Gfxz65.ir4yhRFJaY4doSupLgXJr4XhNsNq5iQClOot6wH0TQu2Ma', 2147483647, 'Male', 'Home', 'sk', 'Minal Kanth_20221114105928.jpg', 'Travelling'),
(8, 1, 'Unknown tow hu', 'User yes hu', 'khatarnakvhu@gmail.com', '$2y$10$ylEpUlu2MejDwgGxiknclue7.4qcW9dSagTA9XwQ8P45q/93CHy7m', 123456987, 'Female', 'why pata nai', 'dl', 'Minal Kanth_20221115153047.jpg', 'Travelling,Coding'),
(11, 0, 'Minal Kanth', 'User', 'minalkanth.9@gmail.com', '$2y$10$Gfxz65.ir4yhRFJaY4doSupLgXJr4XhNsNq5iQClOot6wH0TQu2Ma', 9678001910, 'Male', 'Home', 'rj', 'Minal Kanth_20221116154947.jpeg', 'Travelling,Music,Coding'),
(17, 0, 'aaaa', 'ssss', 'CedricKelly@gmail.com', '$2y$10$pvH0rafiTtWMWgvlCUbHoe/joK3OmT.gli2f0VpUf9hPOrYdqBzSW', 1245799090, 'Female', 'fds', 'rj', 'aaaa_20221116170059.png', 'Travelling'),
(18, 0, 'ccc', 'ddd', 'as@gmail.com', '$2y$10$r3.vYSPDcf1e8bCx4zoyOeGFDfEujOcElHHF/6MWP88p2UEYN/QMG', 123456789, 'Male', 'eee', 'dl', 'bbbb_20221116173852.jpg', 'Travelling,Music,Coding');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`DEPTCODE`),
  ADD UNIQUE KEY `DeptName` (`DeptName`),
  ADD UNIQUE KEY `DeptName_2` (`DeptName`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `marks`
--
ALTER TABLE `marks`
  ADD PRIMARY KEY (`school_id`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`EmpCode`),
  ADD KEY `DEPTCODE` (`DEPTCODE`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`s_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1030;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `staff`
--
ALTER TABLE `staff`
  ADD CONSTRAINT `staff_ibfk_1` FOREIGN KEY (`DEPTCODE`) REFERENCES `department` (`DEPTCODE`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
