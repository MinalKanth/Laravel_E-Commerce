-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 18, 2022 at 07:43 AM
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
  `uploaded_on` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb1`
--

INSERT INTO `tb1` (`id`, `f1`, `f2`, `f3`, `f4`, `f5`, `f6`, `f7`, `f8`, `f9`, `f10`, `f11`, `f12`, `f13`, `f14`, `uploaded_on`) VALUES
(1, 'Mrinal Kanth', '29-12-1996', 'Jr. Developer', 'I am a junior developer', 'India', 'Assam', 'Nagaon', '9678001910', 'minalkanth.9@gmail.com', 'www.mkanth.in', 'minal/linkedin', 'minal/twitter', 'minal/linkedin', 'minal/linkedin', '2022-10-17 18:16:34.000000'),
(2, 'Mrinal Kanth', '29-12-1996', 'Jr. Developer', 'dddddddddddddddddddd', 'Saint Barthelemy', 'sd', 'dsa', 'dsa', 'sa@gmail.com', 'asd', 'dasas', 'asasasasasasasasasasasasasasasasasasasasas', 'asasas', 'asd', '2022-10-17 18:22:39.000000'),
(3, 'dasss', 'ss-ss-ssss', 'ssssssssssssssssssssssssssssssss', 'ssssssssssssssss', 'Barbados', 'dasdas', 'dasdasdasdasdasdasdasdasdasdasdasdasdasdasdas', 'dasdasdasd', 'da@gmail.com', 'dasdasdasdasdasdasdasdasdasdas', 'dass', 'ssssssssssssssss', 'sssssssssssssssssss', 'sssssssads', '2022-10-17 18:27:33.000000'),
(4, 'Mrinal Kanth', 'dd-dd-dddd', 'ddddddd', 'dd', 'Denmark', 'dddddd', 'dd', 'ddd', 'dsa@gmail.com', 'ddddddd', 'ddddd', 'dddd', 'dddddddd', 'd', '2022-10-17 18:36:06.000000'),
(5, 'dsaa', 'aa-aa-aaaa', 'aaaaaaaaaaaaaaaaaa', 'aaaaaaaaaaaaaaa', 'Albania', 'dsdsdsdsdsds', 'dsdsdsdsdsdsdsdsdsdsdsdsdsdsdsdsdsds', 'dsdsdsdsds', 'sssssssssss@gmail.coma', 'sssssssssss@gmail.coma', 'ds', 'dsdsdsdsdsdsdsdsdsdsds', 'dsdsdsdsdsdsdsdsads', 'ds', '2022-10-17 18:40:14.000000'),
(6, '7uty', 'uy-uy-yuty', 'yuuy', 'yu', 'Yemen', 'yyu', 'yuyu', 'yu', 'das@gmail.com', 'yutyu', 'tyuyt', 'utyu', 'yuyu', 'yuty', '2022-10-17 18:43:47.000000'),
(7, 'Mrinal Kanth', '29-12-1996', 'hj', 'vhj', 'Afghanistan', 'dfs', 'jg', '9678001910', 'dsa@gmail.com', 'jg', 'ghj', 'yut', 'ytuyr', 'yruty', '2022-10-17 18:55:42.000000'),
(8, 'dfs', 'sd-df-dfdf', 'dfdfdffdf', 'sdfffff', 'Algeria', 'dfs', 'sdf', 'dfs', 'dsf@gmail.com', 'fdsfsd', 'fsdfdsf', 'sdfsd', 'fsdfd', 'ssdf', '2022-10-17 18:58:48.000000'),
(9, 'fds', 'ds-fd-dfss', 'dfsdf', 'sdfdfs', 'American Samoa', 'sdfdfs', 'dfsdfs', '9678001910', 'das@gmail.com', 'sdfsdf', 'dsfdfs', 'dfsdfs', 'dfsdfs', 'dfsdfs', '2022-10-17 19:03:20.000000'),
(10, 'Mrinal Kanth', '29-12-1996', 'dddddddddddddddddd', 'dddddddddddddddddddd', 'Bahamas', 'sda', 'sdaaaaaaaaaaa', '9678001910', 'minalkanth.9@gmail.com', 'www.mkanth.in', 'minal/linkedin', 'minal/twitter', 'minal/facebook', 'minal/linkedin2', '2022-10-18 10:20:42.000000'),
(11, 'das', 'ad-da-adss', 'adsdsdsdsdsds', 'das', 'Barbados', 'das', 'ads', 'dsas', 'asdasd@gmail.com', 'asdas', 'asdasda', 'dsasd', 'asdas', 'sadasd', '2022-10-18 10:32:20.000000'),
(12, 'sad', '--', 'ads', 'das', 'Bahrain', 'dsa', 'asd', 'das', 'das@gmail.com', 'das', 'das', 'das', 'ads', 'asd', '2022-10-18 10:37:14.000000'),
(13, 'das', 'da-da-dasd', 'dasdasdasdasdasdasdas', 'dasdas', 'Central African Republic', 'asd', 'sda', '9678001910', 'das@gmail.com', 'das', 'das', 'dsa', 'asd', 'sad', '2022-10-18 10:41:56.000000'),
(14, 'dfs', '--', 'dsfdfs', 'sdffd', 'Aland', 'Assam', 'Nagaon', '9678001910', 'minalkanth.9@gmail.com', 'www.mkanth.in', 'fds', 'dfs', 'dsf', 'df', '2022-10-18 10:50:29.000000'),
(15, 'dsf', 'df-sd-df', 'fsddfs', 'dfs', 'Afghanistan', 'sdf', 'df', 'sd', 'fsdf', 'sssssssssss@gmail.com', 'dsf', 'fsd', 'sdf', 'sdf', '2022-10-18 10:53:55.000000'),
(16, 'asd', '29-12-29', 'Jr. Developer', 'I am a junior developer', 'Aland', 'das', 'dasads', '', 'dsa@gmail.com', 'asd', 'asd', 'ads', 'ads', 'ads', '2022-10-18 10:58:56.000000'),
(17, 'hfg', 'hf-gf-hf', 'ghhfg', 'gfhhi', 'Haiti', 'hi', 'hii', 'hiii', 'hiiii@gmail.com', 'hiiii', 'hii', 'hihi', 'hiii', 'hihii', '2022-10-18 11:11:09.000000');

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
(1, 1, 'Php', 'Php'),
(2, 1, 'SQl', 'SQl SQl'),
(3, 2, 'Php', 'das'),
(4, 2, 'dsa', 'aaaaaaaaaa'),
(5, 3, 'sssssssssssssdas', 'asasasasasasasasasasasasasas'),
(6, 3, 'dasdasdasdasdasdas', 'dasdasdasdasdasdasdasdas'),
(7, 0, 'dddddd', 'ddddddd'),
(8, 0, 'dddddddddddddd', 'ddddddd'),
(9, 6, 'ytu', 'yu'),
(10, 6, 'tyu', 'tyu'),
(11, 7, 'hj', 'h'),
(12, 7, 'jhfj', 'hj'),
(13, 8, 'dfs', 'dfsdfs'),
(14, 8, 'dsf', 'sdf'),
(15, 9, 'dfssdf', 'dfsdfs'),
(16, 9, 'dfdfs', 'sdf'),
(17, 10, 'Php', 'as'),
(18, 10, 'Php2', 'as'),
(19, 11, 'das', 'das'),
(20, 12, 'asd', 'das'),
(21, 13, 'dsa', 'das'),
(22, 13, 'ads', 'das'),
(23, 14, 'dfsdfs', 'fdsfds'),
(24, 14, 'dfs', 'dfs'),
(25, 15, 'sdfsd', 'fdfs'),
(26, 15, 'fds', 'dfssdf'),
(27, 16, 'Php', 'asd'),
(28, 16, 'phpwq', 'das'),
(29, 17, 'hi', 'hi'),
(30, 17, 'hiii', 'hiii');

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
(1, 1, 'playing', '1'),
(2, 2, 'asd', '-2'),
(3, 3, 'dsdsdsdsdsds', '-1'),
(4, 0, 'dddddd', '10'),
(5, 6, 'utyu', '12'),
(6, 7, 'tyutyu', '2'),
(7, 8, 'dsfsdf', '2'),
(8, 9, 'dfsdfs', '3'),
(9, 10, 'playing', '3'),
(10, 11, 'asdas', '2'),
(11, 12, 'dsa', '4'),
(12, 13, 'asds', '8'),
(13, 14, 'dsf', '2'),
(14, 14, 'dfsfds', '2'),
(15, 15, 'fdsdf', '3'),
(16, 15, 'sdf', '3'),
(17, 16, 'asd', '4'),
(18, 16, 'dasdas', '2'),
(19, 17, 'hihi', '7'),
(20, 17, 'hiiih', '77');

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
(1, 1, 'Kaliabor College ', '2022-01', '2022-02', 'Kaliabor College  ABOUT'),
(2, 2, 'Kaliabor College ', '2022-01', '2022-02', 'asddddd'),
(3, 3, 'adsdsdsdsdsdsdsdsdsdsdsds', '2022-12', '2022-10', 'fggggggg'),
(4, 0, 'ddddddd', '2022-12', '2022-11', 'dddddddddddd'),
(5, 6, 'yuytgu', '2022-01', '2022-01', 'yuu'),
(6, 7, 'tttttt', '2022-01', '2022-02', 'tyutyu'),
(7, 8, 'dsfsdfs', '2022-04', '2022-12', 'ffffffffffff'),
(8, 9, 'sdfsdf', '2022-01', '2022-02', 'dsfds'),
(9, 10, 'Kaliabor College ', '2022-01', '2022-02', 'ARGUCOM ABOUT'),
(10, 11, 'das', '2022-01', '2022-03', 'adssss'),
(11, 14, 'dsfds', '2022-01', '2022-02', 'sdfdfs'),
(12, 14, 'dsfdfs', '2022-05', '2022-06', 'sdfsddfs'),
(13, 15, 'sdfsdf', '2022-01', '2022-02', 'sdfsdf'),
(14, 15, 'dsfdfs', '2022-02', '2022-03', 'sdfsdf'),
(15, 16, 'das', '2022-01', '2022-02', 'das'),
(16, 16, 'Argucom2', '2022-03', '2022-04', 'adsdas'),
(17, 17, 'hii', '2022-01', '2022-02', 'ARGUCOM ABOUT2'),
(18, 17, 'hihi', '2022-06', '2022-07', 'hihi');

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
(1, 1, 'Roaderline', '2022-01', '2022-02', '2022-04', '2022-05', 'About Roaderline'),
(2, 2, 'Roaderline', '2022-05', '2022-06', '2022-07', '2022-08', 'dassssssssss'),
(3, 3, 'gdfdfdfdfdfdfdfdfdfdfdf', '2022-11', '2022-10', '2022-11', '2022-10', 'dgfffd'),
(4, 0, 'Roaderline', '2022-10', '2022-09', '2022-05', '2022-08', 'dddddddd'),
(5, 6, 'uuu', '2022-06', '2022-03', '2022-08', '2022-12', 'yuuu'),
(6, 7, 'tyuty', '2022-02', '2022-01', '2022-02', '2022-07', 'tyutyu'),
(7, 8, 'fsd', '2022-03', '2022-04', '2022-05', '2022-06', 'dsfsdf'),
(8, 9, 'dsfsdf', '2022-01', '2022-02', '2022-06', '2022-07', 'sdf'),
(9, 10, 'Roaderline', '2022-05', '2022-06', '2022-07', '2022-08', 'errrrrrrrrr'),
(10, 11, 'asdasdas', '2022-01', '2022-05', '2022-11', '2022-04', 'ddddddddd'),
(11, 12, 'asddas', '2022-05', '2022-06', '2022-05', '2022-06', 'asdsda'),
(12, 13, 'ads', '2022-03', '2022-04', '2022-05', '2022-11', 'ads'),
(13, 14, 'dsdfs', 'sdfdfs', 'dfs', '2022-05', '2022-06', 'dsfdsf'),
(14, 14, 'sdfs', 'dfsdf', 'dfs', '2022-08', '2022-07', 'sdfsdf'),
(15, 15, 'dsfsdf', 'sfddfs', 'sdfdfs', '2022-05', '2022-06', 'sdfdsf'),
(16, 15, 'sdfsdf', 'sdfsdf', 'dfsdfss', '2022-06', '2022-04', 'dfsdfs'),
(17, 16, 'ads', 'das', 'ads', '2022-05', '2022-06', 'dasas'),
(18, 16, 'ads', 'ads', 'dasasd', '2022-07', '2022-07', 'adsasd'),
(19, 17, 'hihi', 'hihih', 'ihi', '2022-11', '2022-06', 'hihi'),
(20, 17, 'hihihiihihhiii', 'hihihihihi', 'ihihi', '2022-02', '2022-05', 'hihii');

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
(1, 1, 'Mrinal Kanth', 'minalkanth.9@gmail.com', 'uploads/442757screenshot (1).png'),
(2, 2, 'Mrinal Kanth', 'sa@gmail.com', 'uploads/420837screenshot (2).png'),
(3, 0, 'dasss', 'da@gmail.com', 'uploads/888052screenshot (45).png'),
(4, 0, 'Mrinal Kanth', 'dsa@gmail.com', 'uploads/537603screenshot (14).png'),
(5, 6, '7uty', 'das@gmail.com', 'uploads/607815screenshot (1).png'),
(6, 7, 'Mrinal Kanth', 'dsa@gmail.com', 'uploads/184379screenshot (14).png'),
(7, 8, 'dfs', 'dsf@gmail.com', 'uploads/586138screenshot (26).png'),
(8, 9, 'fds', 'das@gmail.com', 'uploads/346754screenshot (14).png'),
(9, 10, 'Mrinal Kanth', 'minalkanth.9@gmail.com', 'uploads/430044screenshot (14).png'),
(10, 17, 'hfg', 'hiiii@gmail.com', 'uploads/523426screenshot (30).png');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `tb2`
--
ALTER TABLE `tb2`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `tb3`
--
ALTER TABLE `tb3`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `tb4`
--
ALTER TABLE `tb4`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `tb5`
--
ALTER TABLE `tb5`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `tb6`
--
ALTER TABLE `tb6`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
