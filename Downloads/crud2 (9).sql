-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 06, 2023 at 06:06 AM
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
-- Database: `crud2`
--

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `state_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`id`, `name`, `state_id`, `created_at`, `updated_at`) VALUES
(1, 'NAGAON', 1, '2022-12-20 08:41:23', '2022-12-20 08:41:23');

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `shortname` varchar(255) NOT NULL,
  `phonecode` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `name`, `shortname`, `phonecode`, `created_at`, `updated_at`) VALUES
(1, 'INDIA', 'IN', '+91', '2022-12-20 08:40:21', '2022-12-20 08:40:21'),
(2, 'Russian Federation', 'RU', '+7', '2022-12-20 08:40:21', '2022-12-20 08:40:21');

-- --------------------------------------------------------

--
-- Table structure for table `crud_operations`
--

CREATE TABLE `crud_operations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `date_of_birth` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `qualification` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `mobile` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `is_relocate` tinyint(1) NOT NULL,
  `country` bigint(20) UNSIGNED NOT NULL,
  `state` bigint(20) UNSIGNED DEFAULT NULL,
  `city` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `crud_operations`
--

INSERT INTO `crud_operations` (`id`, `name`, `date_of_birth`, `description`, `qualification`, `email`, `mobile`, `gender`, `is_relocate`, `country`, `state`, `city`, `created_at`, `updated_at`) VALUES
(1, 'Mrinal Padhi', '1996-12-29', 'Infinity', 'sfsfsf', 'minalkanth.9@gmail.com', '9678001910', 'male', 1, 101, NULL, NULL, '2022-12-19 01:42:26', '2022-12-19 01:42:26'),
(2, 'Mrinal Padhi 3', '1996-12-03', 'Infinity 3', 'sfsfsf 3', 'minalkanth.9@gmail.com', '9678001910', 'female', 1, 83, NULL, NULL, '2022-12-19 01:42:26', '2022-12-19 07:55:31'),
(3, 'Mohit Kumar', '1221-12-12', 'sdadasd', 'asdfqwfeq', 'mohit@gmail.com', '7889644123', 'male', 1, 101, NULL, NULL, '2022-12-19 05:27:35', '2022-12-19 05:27:35'),
(4, 'Chitranjan', '2022-12-25', 'aaaaaaaaaaaaaaaa', 'as', 'chitranjan@gmail.com', '9678001910', 'female', 1, 96, NULL, NULL, '2022-12-19 05:38:19', '2022-12-19 05:38:19'),
(8, 'Mrinal Padhi 3', '1996-12-03', 'Infinity 3', 'sfsfsf 3', 'minalkanth.9@gmail.com', '9678001910', 'female', 1, 83, NULL, NULL, '2022-12-19 01:42:26', '2022-12-19 07:55:31'),
(9, 'Mohit Kumar', '1221-12-12', 'sdadasd', 'asdfqwfeq', 'mohit@gmail.com', '7889644123', 'male', 1, 101, NULL, NULL, '2022-12-19 05:27:35', '2022-12-19 05:27:35'),
(14, 'Mrinal Padhi', '2022-12-08', 'aaaaaaaaaaaaaaaa', 'eqwewq', 'minalkanth.9@gmail.com', '9678001910', 'female', 1, 1, NULL, NULL, '2022-12-21 04:45:25', '2022-12-21 04:45:25'),
(18, 'PadhiMrinal', '2022-12-08', 'as', 'asd', 'kanthminal.9@gmail.com', '9678001910', 'male', 0, 1, NULL, NULL, '2022-12-21 04:56:42', '2022-12-21 04:56:42'),
(20, 'Kangkana Bhuyan', '2022-03-12', 'aaaaaaaaaaaaaaaa', 'asd', 'kangkana@gmail.com', '9678001910', 'female', 0, 1, NULL, NULL, '2022-12-21 04:59:49', '2022-12-21 04:59:49'),
(22, 'Kangkana Bhuyan 2', '2022-03-11', 'aaaaaaaaaaaaaaaa2', 'asd2', 'kangkana2@gmail.com', '9678001912', 'female', 1, 1, NULL, NULL, '2022-12-21 06:24:16', '2022-12-21 06:24:16'),
(28, 'Mrinal Padhi', '2022-11-03', 'Infinity', 'sfsfsf', 'mrinalpadhi@gmail.com', '9678001910', 'female', 1, 2, NULL, NULL, '2022-12-21 06:33:01', '2022-12-21 06:33:01');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2022_12_19_060942_create_crud_operations_table', 1),
(2, '2014_10_12_000000_create_users_table', 2),
(3, '2014_10_12_100000_create_password_resets_table', 2),
(4, '2019_08_19_000000_create_failed_jobs_table', 2),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `states`
--

CREATE TABLE `states` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `country_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `states`
--

INSERT INTO `states` (`id`, `name`, `country_id`, `created_at`, `updated_at`) VALUES
(1, 'ASSAM', 1, '2022-12-20 08:41:00', '2022-12-20 08:41:00');

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
-- Indexes for table `crud_operations`
--
ALTER TABLE `crud_operations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `states`
--
ALTER TABLE `states`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `crud_operations`
--
ALTER TABLE `crud_operations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `states`
--
ALTER TABLE `states`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
