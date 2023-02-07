-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 20, 2022 at 03:35 PM
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
-- Database: `dynamic_input`
--

-- --------------------------------------------------------

--
-- Table structure for table `country`
--

CREATE TABLE `country` (
  `id` int(11) NOT NULL,
  `name` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `country`
--

INSERT INTO `country` (`id`, `name`) VALUES
(1, 'Afghanistan'),
(2, 'Aland Islands'),
(3, 'Albania'),
(4, 'Algeria'),
(5, 'American Samoa'),
(6, 'Andorra'),
(7, 'Angola'),
(8, 'Anguilla'),
(9, 'Antarctica'),
(10, 'Antigua and Barbuda'),
(11, 'Argentina'),
(12, 'Armenia'),
(13, 'Aruba'),
(14, 'Australia'),
(15, 'Austria'),
(16, 'Azerbaijan'),
(17, 'Bahamas'),
(18, 'Bahrain'),
(19, 'Bangladesh'),
(20, 'Barbados'),
(21, 'Belarus'),
(22, 'Belgium'),
(23, 'Belize'),
(24, 'Benin'),
(25, 'Bermuda'),
(26, 'Bhutan'),
(27, 'Bolivia'),
(28, 'Bonaire, Sint Eustatius and Saba'),
(29, 'Bosnia and Herzegovina'),
(30, 'Botswana'),
(31, 'Bouvet Island'),
(32, 'Brazil'),
(33, 'British Indian Ocean Territory'),
(34, 'Brunei Darussalam'),
(35, 'Bulgaria'),
(36, 'Burkina Faso'),
(37, 'Burundi'),
(38, 'Cambodia'),
(39, 'Cameroon'),
(40, 'Canada'),
(41, 'Cape Verde'),
(42, 'Cayman Islands'),
(43, 'Central African Republic'),
(44, 'Chad'),
(45, 'Chile'),
(46, 'China'),
(47, 'Christmas Island'),
(48, 'Cocos (Keeling) Islands'),
(49, 'Colombia'),
(50, 'Comoros'),
(51, 'Congo'),
(52, 'Congo, Democratic Republic of the Congo'),
(53, 'Cook Islands'),
(54, 'Costa Rica'),
(55, 'Cote D\'Ivoire'),
(56, 'Croatia'),
(57, 'Cuba'),
(58, 'Curacao'),
(59, 'Cyprus'),
(60, 'Czech Republic'),
(61, 'Denmark'),
(62, 'Djibouti'),
(63, 'Dominica'),
(64, 'Dominican Republic'),
(65, 'Ecuador'),
(66, 'Egypt'),
(67, 'El Salvador'),
(68, 'Equatorial Guinea'),
(69, 'Eritrea'),
(70, 'Estonia'),
(71, 'Ethiopia'),
(72, 'Falkland Islands (Malvinas)'),
(73, 'Faroe Islands'),
(74, 'Fiji'),
(75, 'Finland'),
(76, 'France'),
(77, 'French Guiana'),
(78, 'French Polynesia'),
(79, 'French Southern Territories'),
(80, 'Gabon'),
(81, 'Gambia'),
(82, 'Georgia'),
(83, 'Germany'),
(84, 'Ghana'),
(85, 'Gibraltar'),
(86, 'Greece'),
(87, 'Greenland'),
(88, 'Grenada'),
(89, 'Guadeloupe'),
(90, 'Guam'),
(91, 'Guatemala'),
(92, 'Guernsey'),
(93, 'Guinea'),
(94, 'Guinea-Bissau'),
(95, 'Guyana'),
(96, 'Haiti'),
(97, 'Heard Island and Mcdonald Islands'),
(98, 'Holy See (Vatican City State)'),
(99, 'Honduras'),
(100, 'Hong Kong'),
(101, 'Hungary'),
(102, 'Iceland'),
(103, 'India'),
(104, 'Indonesia'),
(105, 'Iran, Islamic Republic of'),
(106, 'Iraq'),
(107, 'Ireland'),
(108, 'Isle of Man'),
(109, 'Israel'),
(110, 'Italy'),
(111, 'Jamaica'),
(112, 'Japan'),
(113, 'Jersey'),
(114, 'Jordan'),
(115, 'Kazakhstan'),
(116, 'Kenya'),
(117, 'Kiribati'),
(118, 'Korea, Democratic People\'s Republic of'),
(119, 'Korea, Republic of'),
(120, 'Kosovo'),
(121, 'Kuwait'),
(122, 'Kyrgyzstan'),
(123, 'Lao People\'s Democratic Republic'),
(124, 'Latvia'),
(125, 'Lebanon'),
(126, 'Lesotho'),
(127, 'Liberia'),
(128, 'Libyan Arab Jamahiriya'),
(129, 'Liechtenstein'),
(130, 'Lithuania'),
(131, 'Luxembourg'),
(132, 'Macao'),
(133, 'Macedonia, the Former Yugoslav Republic of'),
(134, 'Madagascar'),
(135, 'Malawi'),
(136, 'Malaysia'),
(137, 'Maldives'),
(138, 'Mali'),
(139, 'Malta'),
(140, 'Marshall Islands'),
(141, 'Martinique'),
(142, 'Mauritania'),
(143, 'Mauritius'),
(144, 'Mayotte'),
(145, 'Mexico'),
(146, 'Micronesia, Federated States of'),
(147, 'Moldova, Republic of'),
(148, 'Monaco'),
(149, 'Mongolia'),
(150, 'Montenegro'),
(151, 'Montserrat'),
(152, 'Morocco'),
(153, 'Mozambique'),
(154, 'Myanmar'),
(155, 'Namibia'),
(156, 'Nauru'),
(157, 'Nepal'),
(158, 'Netherlands'),
(159, 'Netherlands Antilles'),
(160, 'New Caledonia'),
(161, 'New Zealand'),
(162, 'Nicaragua'),
(163, 'Niger'),
(164, 'Nigeria'),
(165, 'Niue'),
(166, 'Norfolk Island'),
(167, 'Northern Mariana Islands'),
(168, 'Norway'),
(169, 'Oman'),
(170, 'Pakistan'),
(171, 'Palau'),
(172, 'Palestinian Territory, Occupied'),
(173, 'Panama'),
(174, 'Papua New Guinea'),
(175, 'Paraguay'),
(176, 'Peru'),
(177, 'Philippines'),
(178, 'Pitcairn'),
(179, 'Poland'),
(180, 'Portugal'),
(181, 'Puerto Rico'),
(182, 'Qatar'),
(183, 'Reunion'),
(184, 'Romania'),
(185, 'Russian Federation'),
(186, 'Rwanda'),
(187, 'Saint Barthelemy'),
(188, 'Saint Helena'),
(189, 'Saint Kitts and Nevis'),
(190, 'Saint Lucia'),
(191, 'Saint Martin'),
(192, 'Saint Pierre and Miquelon'),
(193, 'Saint Vincent and the Grenadines'),
(194, 'Samoa'),
(195, 'San Marino'),
(196, 'Sao Tome and Principe'),
(197, 'Saudi Arabia'),
(198, 'Senegal'),
(199, 'Serbia'),
(200, 'Serbia and Montenegro'),
(201, 'Seychelles'),
(202, 'Sierra Leone'),
(203, 'Singapore'),
(204, 'Sint Maarten'),
(205, 'Slovakia'),
(206, 'Slovenia'),
(207, 'Solomon Islands'),
(208, 'Somalia'),
(209, 'South Africa'),
(210, 'South Georgia and the South Sandwich Islands'),
(211, 'South Sudan'),
(212, 'Spain'),
(213, 'Sri Lanka'),
(214, 'Sudan'),
(215, 'Suriname'),
(216, 'Svalbard and Jan Mayen'),
(217, 'Swaziland'),
(218, 'Sweden'),
(219, 'Switzerland'),
(220, 'Syrian Arab Republic'),
(221, 'Taiwan, Province of China'),
(222, 'Tajikistan'),
(223, 'Tanzania, United Republic of'),
(224, 'Thailand'),
(225, 'Timor-Leste'),
(226, 'Togo'),
(227, 'Tokelau'),
(228, 'Tonga'),
(229, 'Trinidad and Tobago'),
(230, 'Tunisia'),
(231, 'Turkey'),
(232, 'Turkmenistan'),
(233, 'Turks and Caicos Islands'),
(234, 'Tuvalu'),
(235, 'Uganda'),
(236, 'Ukraine'),
(237, 'United Arab Emirates'),
(238, 'United Kingdom'),
(239, 'United States'),
(240, 'United States Minor Outlying Islands'),
(241, 'Uruguay'),
(242, 'Uzbekistan'),
(243, 'Vanuatu'),
(244, 'Venezuela'),
(245, 'Viet Nam'),
(246, 'Virgin Islands, British'),
(247, 'Virgin Islands, U.s.'),
(248, 'Wallis and Futuna'),
(249, 'Western Sahara'),
(250, 'Yemen'),
(251, 'Zambia'),
(252, 'Zimbabwe');

-- --------------------------------------------------------

--
-- Table structure for table `tb1`
--

CREATE TABLE `tb1` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `DOB` varchar(255) NOT NULL,
  `profession` varchar(255) NOT NULL,
  `bio` longtext NOT NULL,
  `country` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `location` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `website` varchar(255) NOT NULL,
  `linkedin` varchar(255) NOT NULL,
  `twitter` varchar(255) NOT NULL,
  `facebook` varchar(255) NOT NULL,
  `github` varchar(255) NOT NULL,
  `uploaded_on` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb1`
--

INSERT INTO `tb1` (`id`, `name`, `DOB`, `profession`, `bio`, `country`, `address`, `location`, `phone`, `email`, `website`, `linkedin`, `twitter`, `facebook`, `github`, `uploaded_on`) VALUES
(1, 'Mrinal Kanth', '29-12-1996', 'Jr. Developer', 'I am a junior developer dfssdfs sdfsdfsdf ssdfsdfsdfsdfdsfsdf sdfsdf', 'India', 'Assam', 'Nagaon', '9678001910', 'minalkanth.9@gmail.com', 'www.mkanth.in', 'minal/link', 'minal/twitter', 'minal/linkedin', 'minal/linkedin', '2022-10-20 12:26:21.000000'),
(2, 'dfsdf', '29-12-1996', 'sdfdf', 'sdf', 'Australia', 'sdfdfs', 'Nagaon', '9678001910', 'dsf@gmail.com', 'sdf', 'dddddddddddddddd', 'fd', 'd', 'dddddfd', '2022-10-20 17:49:02.000000'),
(3, 'Mrinal Kanth', '29-12-1996', 'sdfsdf', 'sdfsdf', 'Saint Barthelemy', 'dsfdf', 'dsfsdf', '9678001910', 'sdf@gmail.com', 'df', 'sdf', 'sdf', 'sdf', 'sdf', '2022-10-20 17:57:47.000000'),
(4, 'Mrinal Kanth', '29-12-1996', 'Jr. Developer', 'asdasdasdasdasdasd', 'Aland Islands', 'asdasd', 'asdasd', '9678001910', 'dsf@gmail.com', 'asdasd', 'sdas', 'asdas', 'asd', 'dasdasd', '2022-10-20 18:02:43.000000'),
(5, 'asd', 'as-as-asda', 'asdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasd', 'asdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasd', 'Afghanistan', 'sad', 'Array', 'dddddddddd', 'm@g.com', 'asddddddd', 'adssssssss', 'sssssssssssssssssssss', 'sssssssssss', 'sssssss', '2022-10-20 18:45:09.000000'),
(6, 'adss', 'ss-ss-ssss', 'sssssssssssssss', 'ssssssssssss', 'Aland Islands', 'ads', 'ssssssssss', 'ssssssssss', 'asd@gmail.com', 'adsss', 'adssssss', 'ssssssssssss', 'ssssssssss', 'ssssssssssss', '2022-10-20 18:48:30.000000'),
(7, 'sdfsdf', 'sd-fs-sdfs', 'sdfsdfsdf', 'dsfsdfsdf', 'Saint Barthelemy', 'sdfsdf', 'sdfsdf', 'sdfsdf', 'fsd@gmail.com', 'sdfsd', 'sdfsdf', 'sdfsdf', 'fsdf', 'sdfsd', '2022-10-20 18:52:50.000000');

-- --------------------------------------------------------

--
-- Table structure for table `tb2`
--

CREATE TABLE `tb2` (
  `id` int(11) NOT NULL,
  `tb1_id` int(11) NOT NULL,
  `platform_title` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb2`
--

INSERT INTO `tb2` (`id`, `tb1_id`, `platform_title`, `description`) VALUES
(1, 1, 'Php', 'dgdgdgdgdgdgdgdgdgdg'),
(2, 1, 'Php 2', 'gfgfgf 2'),
(3, 0, 'sdf', 'sdfsdfsdfsdfsdfsdf'),
(4, 0, 'fh', 'f'),
(5, 2, 'sdfsdf', 'sdfsdf'),
(6, 3, 'sdfsdf', 'sdfsdf'),
(7, 4, 'asd', 'asdsd'),
(8, 4, 'asdasds', 'asd'),
(9, 5, 'asdasdasdasd', 'asdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasdasd'),
(10, 5, 'sdsdsdsdsdsdsdsd', 'sdsdsdsdsdsdsdsdsdsdsdsdsdsdsdsd'),
(11, 6, 'sd', 'sdsdsdsdsdsdsdsdsdsd'),
(12, 6, 'adsssss', 'sadssss'),
(13, 7, 'sdfsdf', 'sdfsdfsdf'),
(14, 7, 'sdfsdf', 'sdfsdfsdf');

-- --------------------------------------------------------

--
-- Table structure for table `tb3`
--

CREATE TABLE `tb3` (
  `id` int(11) NOT NULL,
  `tb1_id` int(11) NOT NULL,
  `skill` varchar(255) NOT NULL,
  `value` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb3`
--

INSERT INTO `tb3` (`id`, `tb1_id`, `skill`, `value`) VALUES
(1, 1, 'playing', '70'),
(2, 1, 'Sleeping', '100'),
(3, 0, 'sdf', '60'),
(4, 0, 'sdf', '40'),
(5, 0, 'hfgh', '30'),
(6, 0, 'gfhgfh', '80'),
(7, 2, 'asd', '70'),
(8, 2, 'sdf', '40'),
(9, 3, 'sdf', '80'),
(10, 3, 'dsfdfs', '30'),
(11, 4, 'asdasd', '80'),
(12, 4, 'sdaasd', '10'),
(13, 5, 'Php', '80'),
(14, 5, 'asddd', '40'),
(15, 6, 'asdsdsdsd', '80'),
(16, 6, 'sdsdsdsdsdsdsdsdsdsdsdsd', '20'),
(17, 7, 'sdfsdf', '70'),
(18, 7, 'sdfsdf', '40');

-- --------------------------------------------------------

--
-- Table structure for table `tb4`
--

CREATE TABLE `tb4` (
  `id` int(11) NOT NULL,
  `tb1_id` int(11) NOT NULL,
  `college_name` varchar(255) NOT NULL,
  `e_start_from` varchar(255) NOT NULL,
  `e_end_at` varchar(255) NOT NULL,
  `e_description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb4`
--

INSERT INTO `tb4` (`id`, `tb1_id`, `college_name`, `e_start_from`, `e_end_at`, `e_description`) VALUES
(1, 1, 'Kaliabor College ', '2022-01', '2022-02', 'sdf'),
(2, 1, 'COLLEGE NAME 1', '2022-03', '2022-04', 'sdfsf'),
(7, 0, 'dfs', '2022-01', '2022-02', 'sdfsdf'),
(8, 0, 'sdfdfs', '2022-03', '2022-04', 'sdfdsf'),
(9, 0, 'fghfg', '2022-04', '2022-03', 'fghfg'),
(10, 0, 'Kaliabor College ', '2022-10', '2022-02', 'fghfgh'),
(11, 2, 'sdf', '2022-03', '2022-07', 'sdf'),
(12, 2, 'dfsdf', '2022-01', '2022-03', 'sdf'),
(13, 3, 'sdf', '2022-02', '2022-06', 'sdfsdf'),
(14, 3, 'sdfsdf', '2022-06', '2022-07', 'sdfsdf'),
(15, 4, 'asdasd', '2022-02', '2022-03', 'asdasd'),
(16, 4, 'asdasd', '2022-03', '2022-04', 'asdasd'),
(17, 5, 'asddd', '2022-07', '2022-08', 'asdasd'),
(18, 5, 'asdasd', '2022-06', '2022-07', 'asdasd'),
(19, 6, 'adsssss', '2022-01', '2022-02', 'asdsdsdsdsdsd'),
(20, 6, 'asdsdsdsdsd', '2022-03', '2022-04', 'asdsdsdsdsd'),
(21, 7, 'dfsdf', '2022-07', '2022-07', 'sdfsdf'),
(22, 7, 'sdfsdfsd', '2022-06', '2022-08', 'sdfsdf');

-- --------------------------------------------------------

--
-- Table structure for table `tb5`
--

CREATE TABLE `tb5` (
  `id` int(11) NOT NULL,
  `tb1_id` int(11) NOT NULL,
  `company_name` varchar(255) NOT NULL,
  `job_title` varchar(255) NOT NULL,
  `w_location` varchar(255) NOT NULL,
  `w_start_from` varchar(255) NOT NULL,
  `w_end_at` varchar(255) NOT NULL,
  `w_description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb5`
--

INSERT INTO `tb5` (`id`, `tb1_id`, `company_name`, `job_title`, `w_location`, `w_start_from`, `w_end_at`, `w_description`) VALUES
(1, 1, 'Roaderline', 'Roaderline', 'opc', '2022-05', '2022-06', 'fdss dfsdfsdf'),
(2, 1, 'ATC Assam', 'sdfsdfs', 'dfsdfsdf', '2022-07', '2022-08', 'sdfsfsdf sdfsdfsdf'),
(7, 0, 'sdfdsf', 'dfssdf', 'dfsdfs', '2022-05', '2022-06', 'sdfsdf'),
(8, 0, 'gdfg', 'g', 'dfg', '2022-07', '2022-08', 'fgdfg'),
(9, 0, 'fghfgh', 'fghgf', 'hfgh', '2022-04', '2022-07', 'gfhfgh'),
(10, 0, 'gfhgfh', 'fghfgh', 'gfhfgh', '2022-07', '2022-12', 'fghgfh'),
(11, 2, 'sdfsdf', 'sdf', 'sdfsdf', '2022-11', '2022-08', 'sdf'),
(12, 2, 'dsfsdf', 'sdfsd', 'sdfsd', '2022-03', '2022-08', 'sdfsdf'),
(13, 3, 'sdfsdf', 'dfs', 'sdfdsf', '2022-07', '2022-12', 'sdfsd'),
(14, 3, 'ssdf', 'sdfsdf', 'sdfsdf', '2022-06', '2022-08', 'sdfsdf'),
(15, 4, 'asdasdasd', 'asdasd', 'asdasd', '2022-04', '2022-05', 'asdasd'),
(16, 4, 'asdasd', 'asdasd', 'asdasd', '2022-07', '2022-08', 'asdasd'),
(17, 5, 'asdasd', 'asdasd', '', '2022-04', '2022-08', 'adsasd'),
(18, 5, 'asdsd', 'asdasd', '', '2022-08', '2022-12', 'asdasd'),
(19, 7, 'sdfsdf', 'sdfdf', 'sdf', '2022-01', '2022-03', 'sdfsdf'),
(20, 7, 'sdfsdf', 'sdfsdf', 'sdfsdf', '2022-04', '2022-07', 'sdfsdf');

-- --------------------------------------------------------

--
-- Table structure for table `tb6`
--

CREATE TABLE `tb6` (
  `id` int(11) NOT NULL,
  `tb1_id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `file_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tb6`
--

INSERT INTO `tb6` (`id`, `tb1_id`, `name`, `email`, `file_name`) VALUES
(1, 1, 'Mrinal Kanth', 'minalkanth.9@gmail.com', 'uploads/50654screenshot (1).png'),
(2, 5, '', 'm@g.com', 'uploads/3172screenshot (1).png'),
(3, 6, 'adss', 'asd@gmail.com', 'uploads/90997screenshot (3).png'),
(4, 7, 'sdfsdf', 'fsd@gmail.com', 'uploads/24502screenshot (2).png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `country`
--
ALTER TABLE `country`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb1`
--
ALTER TABLE `tb1`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb2`
--
ALTER TABLE `tb2`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb3`
--
ALTER TABLE `tb3`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb4`
--
ALTER TABLE `tb4`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb5`
--
ALTER TABLE `tb5`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb6`
--
ALTER TABLE `tb6`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `country`
--
ALTER TABLE `country`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=253;

--
-- AUTO_INCREMENT for table `tb1`
--
ALTER TABLE `tb1`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tb2`
--
ALTER TABLE `tb2`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `tb3`
--
ALTER TABLE `tb3`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `tb4`
--
ALTER TABLE `tb4`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `tb5`
--
ALTER TABLE `tb5`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `tb6`
--
ALTER TABLE `tb6`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
