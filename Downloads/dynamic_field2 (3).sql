-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 17, 2022 at 12:02 PM
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
-- Database: `dynamic_field2`
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
  `f1` varchar(255) NOT NULL,
  `f2` varchar(255) NOT NULL,
  `f3` varchar(255) NOT NULL,
  `f4` longtext NOT NULL,
  `f5` varchar(255) NOT NULL,
  `f6` varchar(255) NOT NULL,
  `f7` varchar(255) NOT NULL,
  `f8` varchar(255) NOT NULL,
  `f9` varchar(255) NOT NULL,
  `f10` varchar(255) NOT NULL,
  `f11` varchar(255) NOT NULL,
  `f12` varchar(255) NOT NULL,
  `f13` varchar(255) NOT NULL,
  `f14` varchar(255) NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `uploaded_on` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb1`
--

INSERT INTO `tb1` (`id`, `f1`, `f2`, `f3`, `f4`, `f5`, `f6`, `f7`, `f8`, `f9`, `f10`, `f11`, `f12`, `f13`, `f14`, `file_name`, `uploaded_on`) VALUES
(1, 'Mrinal Kanth', '29-12-1996', 'dddddddddddddddddd', 'dddddddddddddddddddd', 'Afghanistan', 'dsa', 'aaaaaaa', 'aaaaaaaaaaaaa', 'aaaaaaaaaaaaaaaa', 'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa', 'asddd', 'ddddddddddddddd', 'ddddddddddddddd', 'ddddddddddddddddddddddd', 'Screenshot (1).png', '2022-09-26 15:07:38.000000'),
(2, 'MOHIT', '29-22-2222', 'dddddddddddddddddd', 'dddddddddddddddddddd', 'Argentina', 'qew', 'wwwwwwwwwww', 'wwwwwwwwww', 'wwwwwwwwww', 'wwwwwwwwwwwwwwww', 'qew', 'wwwwwwwwwwwwwww', 'wwwwwwwwwwwwwwwwww', 'wwwwwwwwwwwwwwwwww', 'Screenshot (31).png', '2022-09-26 15:09:12.000000'),
(12, 'NAME', '29-12-1996', 'PROFESSIONALISM', 'ABOUT', 'India', 'ADDRESS', 'LOCATION', '9678001910', 'minalkanth.9@gmail.com', 'www.mkanth.in', 'minal/linkedin', 'minal/twitter', 'minal/face', 'minal/linkedin2', '', '0000-00-00 00:00:00.000000'),
(13, 'Mrinal Kanth', '12-12-2012', 'Jr. Developer', 'Hi I am someone.', 'India', 'Assam', 'Nagaon', '9678001910', 'minalkanth.9@gmail.com', 'www.mkanth.in', 'minal/linkedin', 'minal/twitter', 'minal/face', 'minal/linkedin2', 'Screenshot (1).png', '2022-10-14 14:58:59.000000'),
(14, 'asddddddddd', 'da-ss-ssss', 'ssssssssssss', 'sssssssssssssssss', 'Aland Islands', 'ads', 'sssssssssss', 'ssssssssss', 'ssssssssssssss@gmail.com', 'sssssss', 'dasads', 'as', 'ads', 'asd', 'Screenshot (45).png', '2022-10-14 15:06:42.000000'),
(15, 'Mrinal Kanth', '12-12-2012', 'Jr. Developer', 'I AM SOMEONE I AM SOMEONE I AM SOMEONE I AM SOMEONE I AM SOMEONE I AM SOMEONE I AM SOMEONE I AM SOMEONE I AM SOMEONE I AM SOMEONE I AM SOMEONE I AM SOMEONE I AM SOMEONE I AM SOMEONE I AM SOMEONE I AM SOMEONE I AM SOMEONE I AM SOMEONE I AM SOMEONE I AM SOM', 'India', 'Assam', 'Nagaon', '9678001910', 'minalkanth.9@gmail.com', 'www.mkanth.in', 'minal/linkedin', 'minal/twitter', 'minal/face', 'minal/linkedin2', 'Screenshot (1).png', '2022-10-14 15:10:09.000000'),
(16, 'sdadadadadadadada', 'da-da-dada', 'dadadadadadadadadadadadadadadadada', 'sad', 'Aland Islands', 'sadasd', 'asd', 'asdas', 'asd@gmail.com', 'dsfsdf', 'sdfs', 'dfsdfs', 'dfsd', 'fsdf', 'Screenshot (44).png', '2022-10-14 15:11:45.000000'),
(17, 'Mrinal Kanth', '29-12-1996', 'dddddddddddddddddd', 'dddddddddddddddddddd', 'Afghanistan', 'dsa', 'aaaaaaa', 'aaaaaaaaaaaaa', 'aaaaaaaaaaaaaaaa', 'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa', 'asddd', 'ddddddddddddddd', 'ddddddddddddddd', 'ddddddddddddddddddddddd', 'Screenshot (1).png', '2022-09-26 15:07:38.000000'),
(18, 'MOHIT', '29-22-2222', 'dddddddddddddddddd', 'dddddddddddddddddddd', 'Argentina', 'qew', 'wwwwwwwwwww', 'wwwwwwwwww', 'wwwwwwwwww', 'wwwwwwwwwwwwwwww', 'qew', 'wwwwwwwwwwwwwww', 'wwwwwwwwwwwwwwwwww', 'wwwwwwwwwwwwwwwwww', 'Screenshot (31).png', '2022-09-26 15:09:12.000000'),
(19, 'NAME', '29-12-1996', 'PROFESSIONALISM', 'ABOUT', 'India', 'ADDRESS', 'LOCATION', '9678001910', 'minalkanth.9@gmail.com', 'www.mkanth.in', 'minal/linkedin', 'minal/twitter', 'minal/face', 'minal/linkedin2', '', '0000-00-00 00:00:00.000000'),
(20, 'Mrinal Kanth', '12-12-2012', 'Jr. Developer', 'Hi I am someone.', 'India', 'Assam', 'Nagaon', '9678001910', 'minalkanth.9@gmail.com', 'www.mkanth.in', 'minal/linkedin', 'minal/twitter', 'minal/face', 'minal/linkedin2', 'Screenshot (1).png', '2022-10-14 14:58:59.000000'),
(21, 'asddddddddd', 'da-ss-ssss', 'ssssssssssss', 'sssssssssssssssss', 'Aland Islands', 'ads', 'sssssssssss', 'ssssssssss', 'ssssssssssssss@gmail.com', 'sssssss', 'dasads', 'as', 'ads', 'asd', 'Screenshot (45).png', '2022-10-14 15:06:42.000000'),
(22, 'Mrinal Kanth', '12-12-2012', 'Jr. Developer', 'I AM SOMEONE I AM SOMEONE I AM SOMEONE I AM SOMEONE I AM SOMEONE I AM SOMEONE I AM SOMEONE I AM SOMEONE I AM SOMEONE I AM SOMEONE I AM SOMEONE I AM SOMEONE I AM SOMEONE I AM SOMEONE I AM SOMEONE I AM SOMEONE I AM SOMEONE I AM SOMEONE I AM SOMEONE I AM SOM', 'India', 'Assam', 'Nagaon', '9678001910', 'minalkanth.9@gmail.com', 'www.mkanth.in', 'minal/linkedin', 'minal/twitter', 'minal/face', 'minal/linkedin2', 'Screenshot (1).png', '2022-10-14 15:10:09.000000'),
(23, 'sdadadadadadadada', 'da-da-dada', 'dadadadadadadadadadadadadadadadada', 'sad', 'Aland Islands', 'sadasd', 'asd', 'asdas', 'asd@gmail.com', 'dsfsdf', 'sdfs', 'dfsdfs', 'dfsd', 'fsdf', 'Screenshot (44).png', '2022-10-14 15:11:45.000000'),
(24, '', 'sa-ss-ssss', 'sssssssssssssss', 'sssssssssssssssssssssssssssssssss', 'Singapore', 'assssssssssssss', 'ssssssssssssssss', 'ssssssssss', 'sssssssssssss', 'sssssssssssssssss', 'ssssssssssss', 'ssssssssssssss', 'ssssssssss', 'ssssssssssssssssssssass', '', '2022-10-17 12:44:54.000000'),
(25, '', 'as-as-as', 'sa', '', 'Afghanistan', 'as', 'as', 'as', 'as', '', '', '', '', '', '', '2022-10-17 12:50:58.000000'),
(26, '', 'da-da-dddd', 'das', 'sssssssssssssssssssss', 'Saint Barthelemy', 'das', 'sda', 'sda', 'das', 'asd', 'dsa', 'dsa', 'dsa', 'sda', '', '2022-10-17 14:03:19.000000'),
(27, 'Mrinal Kanth', '12-12-2012', 'Jr. Developer', 'I am a junior developer', 'Aruba', '2222222222', 'ttttttttttttttt', 'aaaaaaaaaa', 'das@gmail.com', 'aaaaaaaaaaaaaaaaaaaaaaa@gmail.com', 'aaaaaaaaaaaaa', 'dssssssssss', 'minal/link', 'minal/linkedin2', '', '2022-10-17 14:05:33.000000');

-- --------------------------------------------------------

--
-- Table structure for table `tb2`
--

CREATE TABLE `tb2` (
  `id` int(11) NOT NULL,
  `tb1_id` int(11) NOT NULL,
  `g1` varchar(255) NOT NULL,
  `g2` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb2`
--

INSERT INTO `tb2` (`id`, `tb1_id`, `g1`, `g2`) VALUES
(1, 1, 'Php', 'sdddddddddddddddddddddddddd'),
(2, 1, 'dsa', 'aaaaaaaaaaaaaaaaaaaaaaaaaaaa'),
(3, 2, 'Php tb2 g1', 'eeeeeeeeeeeee tb2 g2'),
(4, 2, 'ewq tb2 g12', 'qqqqqqqqqqqqqqqqqqqqqqqqq tb2 g22'),
(15, 12, 'WORK PLATFORM 1', 'WORK PLATFORM DESCRIPTION 1'),
(16, 12, 'WORK PLATFORM 2', 'WORK PLATFORM DESCRIPTION 2'),
(17, 13, 'PHP', 'About Php'),
(18, 14, 'sssssssssssssss', 'sssssssssssssssssssssssssssss'),
(19, 14, 'wwwq', 'qqqqqqqqqqqqqqqqqqqqqqqqqqqqsqqqsssssssssssssssssssssssssssss'),
(20, 15, 'PHP', 'About Php'),
(21, 16, 'sda', 'asdsad'),
(22, 16, 'sdasdas', 'dasdasas'),
(23, 15, 'SQL', 'About SQL'),
(24, 24, 'sssssssssssssss', 'sssssssssssssssssssssss'),
(25, 25, 'as', ''),
(26, 26, 'dassss', 'adsdsdsdsds'),
(27, 27, 'Php', 'dsfffffff');

-- --------------------------------------------------------

--
-- Table structure for table `tb3`
--

CREATE TABLE `tb3` (
  `id` int(11) NOT NULL,
  `tb1_id` int(11) NOT NULL,
  `h1` varchar(255) NOT NULL,
  `h2` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb3`
--

INSERT INTO `tb3` (`id`, `tb1_id`, `h1`, `h2`) VALUES
(1, 1, 'dddddddddddddd', '2'),
(2, 1, 'da', '1'),
(3, 2, 'www tb3 h1', '2'),
(4, 2, 'wqeeee tb3 h12', '2'),
(5, 2, 'qweqweq tb3 h13', '1'),
(16, 12, 'SKILL 1 playing', '7'),
(17, 12, 'SKILL 2 playing', '5'),
(18, 13, 'Php', '5'),
(19, 14, 'ads', '1'),
(20, 14, 'fffffffffffffffff', '2'),
(21, 15, 'Php', '5'),
(22, 16, 'sdf', '1'),
(23, 16, 'dsfsdfsd', '2'),
(24, 15, 'SQL', '5'),
(25, 24, 'sssssssssssssssss', '-3'),
(26, 25, 'as sa', '2'),
(27, 26, 'dsa', '1'),
(28, 27, 'playing', '5');

-- --------------------------------------------------------

--
-- Table structure for table `tb4`
--

CREATE TABLE `tb4` (
  `id` int(11) NOT NULL,
  `tb1_id` int(11) NOT NULL,
  `i1` varchar(255) NOT NULL,
  `i2` varchar(255) NOT NULL,
  `i3` varchar(255) NOT NULL,
  `i4` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb4`
--

INSERT INTO `tb4` (`id`, `tb1_id`, `i1`, `i2`, `i3`, `i4`) VALUES
(1, 1, 'asddddddddddddd', '2022-03', '2022-09', 'sadddddddd'),
(2, 1, 'sadddsdad', '2022-07', '2022-12', 'saddddddddd'),
(3, 2, 'Argucomwqeqw', '2022-03', '2022-03', 'eeeeeeeeeeee'),
(4, 2, 'ewwwwwwwwwwwwwwww', '2022-07', '2022-07', 'qweeeeeeeeeeeee'),
(9, 12, 'COLLEGE NAME 1', '2022-01', '2022-02', 'COLLEGE DESCRIPTION 1'),
(10, 12, 'COLLEGE NAME 2', '2022-03', '2022-04', 'COLLEGE DESCRIPTION 2'),
(11, 13, 'Kaliabor College ', '2016-08', '2019-07', 'About Kaliabor College'),
(12, 14, 'asd', '2022-07', '2022-10', 'asd'),
(13, 14, 'asd', '2022-10', '2022-10', 'asddddddd'),
(14, 15, 'Kaliabor College ', '2016-08', '2019-07', 'About Kaliabor College'),
(15, 16, 'sdfsdfs', '2022-10', '2022-10', 'dsfdsfsd'),
(16, 16, 'sdfsdf', '2022-10', '2022-10', 'sdfsdf'),
(17, 15, 'ARGUCOM ', '2016-08', '2019-07', 'About ARGUCOM'),
(18, 24, 'sssssssssssssssssssssss', '2022-03', '2022-03', 'assssssssssss'),
(19, 25, 'as', '2022-03', '2022-03', 'as'),
(20, 26, 'das', '2022-02', '2022-03', 'dasdasdasdas'),
(21, 27, 'Kaliabor College ', '2022-02', '2022-03', 'About Kaliabor College');

-- --------------------------------------------------------

--
-- Table structure for table `tb5`
--

CREATE TABLE `tb5` (
  `id` int(11) NOT NULL,
  `tb1_id` int(11) NOT NULL,
  `j1` varchar(255) NOT NULL,
  `j2` varchar(255) NOT NULL,
  `j3` varchar(255) NOT NULL,
  `j4` varchar(255) NOT NULL,
  `j5` varchar(255) NOT NULL,
  `j6` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb5`
--

INSERT INTO `tb5` (`id`, `tb1_id`, `j1`, `j2`, `j3`, `j4`, `j5`, `j6`) VALUES
(1, 1, 'asdasd', 'sada', 'sdasd', '2022-03', '2022-12', 'dsaaaaaaaa'),
(2, 1, 'dfsssssss', 'fsdddddddddd', 'sfdddd', '2022-11', '2022-11', 'sdffffffff'),
(3, 2, 'ooooooooooooooooooooooooooooooooq', 'qqqqqqqqqqqwe', 'eeeeeeeeeeeeeeeee', '2022-02', '2022-07', 'eeeeeeeeeeeeeeeeee'),
(4, 2, 'qwe', 'eeeeeeeeeeeeeeeeeeeee', 'qwwwwwwww', '2022-10', '2022-07', 'wwwwwwwwwwwwww'),
(7, 12, 'COMPANY NAME 1', '2022-05', '2022-06', '2022-07', '2022-08', 'COMPANY DESCRIPTION 1'),
(8, 12, 'COMPANY NAME 2', '2022-09', '2022-10', '2022-11', '2022-12', 'COMPANY DESCRIPTION 2'),
(9, 13, 'ATC Assam', '2018-05', '2019-07', '2019-10', '2019-11', 'About ATC'),
(10, 14, 'asddddd', '2022-10', '2022-08', '2022-10', '2022-08', 'adsdsdsds'),
(11, 15, 'ATC Assam', '2018-05', '2019-07', '2019-10', '2019-11', 'About ATC'),
(12, 16, 'oooooooooooooooooooooooooooooooo', '2022-10', '2022-10', '2022-10', '2022-10', 'eeeeeeeeeeeeeeeeee'),
(13, 16, 'dsfsdf', '2022-10', '2022-10', '2022-10', '2022-10', 'sdfsdfsd'),
(14, 15, 'Roaderline', '2018-05', '2019-07', '2019-10', '2019-11', 'About Roaderline'),
(15, 24, '', '', '', '', '', ''),
(16, 25, '', '', '', '', '', ''),
(17, 26, '', '', '', '', '', ''),
(18, 27, '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `uploading`
--

CREATE TABLE `uploading` (
  `id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `file_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `uploading`
--

INSERT INTO `uploading` (`id`, `name`, `email`, `file_name`) VALUES
(1, 'aaaaaa', 'minalkanth.9@gmail.com', 'uploads/327760screenshot (25).png');

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
-- Indexes for table `uploading`
--
ALTER TABLE `uploading`
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `tb2`
--
ALTER TABLE `tb2`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `tb3`
--
ALTER TABLE `tb3`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `tb4`
--
ALTER TABLE `tb4`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `tb5`
--
ALTER TABLE `tb5`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `uploading`
--
ALTER TABLE `uploading`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
