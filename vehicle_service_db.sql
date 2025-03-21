-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 22, 2025 at 05:11 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `vehicle_service_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(30) NOT NULL,
  `category` varchar(250) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category`, `status`, `date_created`) VALUES
(1, 'Bus', 1, '2021-09-30 09:42:40'),
(2, 'Delivery Package', 1, '2021-09-30 09:43:00'),
(3, 'Ride Delivery', 1, '2021-09-30 09:43:48'),
(4, 'Van', 1, '2021-09-30 09:44:05'),
(5, 'trank', 1, '2025-01-22 18:48:24'),
(6, 'TATA', 1, '2025-01-22 18:59:18');

-- --------------------------------------------------------

--
-- Table structure for table `mechanics_list`
--

CREATE TABLE `mechanics_list` (
  `id` int(30) NOT NULL,
  `name` text NOT NULL,
  `contact` varchar(50) NOT NULL,
  `email` varchar(150) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `mechanics_list`
--

INSERT INTO `mechanics_list` (`id`, `name`, `contact`, `email`, `status`, `date_created`) VALUES
(1, 'eba girma', '09123456789', 'eba@sample.com', 1, '2021-09-30 10:26:11'),
(2, 'balina cala', '09112355799', 'balina@gmail.com', 1, '2021-09-30 10:30:58'),
(4, 'Baro Name', '0910824429', 'baro@gmail.com', 1, '2025-01-22 18:57:37');

-- --------------------------------------------------------

--
-- Table structure for table `request_meta`
--

CREATE TABLE `request_meta` (
  `request_id` int(30) NOT NULL,
  `meta_field` text NOT NULL,
  `meta_value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `request_meta`
--

INSERT INTO `request_meta` (`request_id`, `meta_field`, `meta_value`) VALUES
(3, 'contact', '+251906792544'),
(3, 'email', 'komybire471@gmail.com'),
(3, 'address', 'ADDIS ABEBA'),
(3, 'vehicle_name', 'TESLA'),
(3, 'vehicle_registration_number', '2345'),
(3, 'vehicle_model', 'TESLA 2024'),
(3, 'service_id', '1'),
(3, 'pickup_address', 'MERKATO'),
(4, 'contact', '0910824429'),
(4, 'email', 'dawitobsa@gmail.com'),
(4, 'address', 'sandafa'),
(4, 'vehicle_name', 'ride'),
(4, 'vehicle_registration_number', '3456'),
(4, 'vehicle_model', 'nishan 2020'),
(4, 'service_id', '3'),
(4, 'pickup_address', 'sandafa');

-- --------------------------------------------------------

--
-- Table structure for table `service_list`
--

CREATE TABLE `service_list` (
  `id` int(30) NOT NULL,
  `service` text NOT NULL,
  `description` text NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `service_list`
--

INSERT INTO `service_list` (`id`, `service`, `description`, `status`, `date_created`) VALUES
(1, 'Deliver Package', '<p>delivery of goods, services, or data to a specified destination. It involves tracking, logistics, and ensuring that the item reaches its intended recipient in a timely manner. The package may include notifications, status updates, and tools for managing delivery progress efficiently.</p>', 1, '2021-09-30 14:11:21'),
(2, 'Bus', '<p>large vehicle designed for the transportation of multiple passengers, typically along fixed routes.&nbsp;</p>', 1, '2021-09-30 14:11:38'),
(3, 'Ride delivery', '<p>service that facilitates the transportation of goods, services, or data to a designated location. It focuses on ensuring efficient tracking, managing logistics, and timely delivery to the intended recipient.</p>', 1, '2021-09-30 14:12:03'),
(4, 'Van', '<p>larger than a car but smaller than a truck, vans come in various styles and sizes to suit different needs</p>', 1, '2021-09-30 14:12:24'),
(5, 'TATA', '<p>Deliver People</p>', 1, '2025-01-22 19:28:09');

-- --------------------------------------------------------

--
-- Table structure for table `service_requests`
--

CREATE TABLE `service_requests` (
  `id` int(30) NOT NULL,
  `owner_name` text NOT NULL,
  `category_id` int(30) NOT NULL,
  `service_type` text NOT NULL,
  `mechanic_id` int(30) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `service_requests`
--

INSERT INTO `service_requests` (`id`, `owner_name`, `category_id`, `service_type`, `mechanic_id`, `status`, `date_created`) VALUES
(3, 'KOMARSAN BERHANU', 1, 'Pick Up', NULL, 0, '2025-01-21 11:18:57'),
(4, 'Dawit Obsa', 1, 'Pick Up', NULL, 0, '2025-01-22 18:52:09');

-- --------------------------------------------------------

--
-- Table structure for table `system_info`
--

CREATE TABLE `system_info` (
  `id` int(30) NOT NULL,
  `meta_field` text NOT NULL,
  `meta_value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `system_info`
--

INSERT INTO `system_info` (`id`, `meta_field`, `meta_value`) VALUES
(1, 'name', 'Vehicle Service Management System'),
(6, 'short_name', 'DK Management'),
(11, 'logo', 'uploads/1632965940_vrs-logo.jpg'),
(13, 'user_avatar', 'uploads/user_avatar.jpg'),
(14, 'cover', 'uploads/1632965760_car-shop-clip.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(50) NOT NULL,
  `firstname` varchar(250) NOT NULL,
  `lastname` varchar(250) NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL,
  `avatar` text DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `type` tinyint(1) NOT NULL DEFAULT 0,
  `date_added` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstname`, `lastname`, `username`, `password`, `avatar`, `last_login`, `type`, `date_added`, `date_updated`) VALUES
(1, 'Adminstrator', 'Admin', 'admin', '0192023a7bbd73250516f069df18b500', 'uploads/1624240500_avatar.png', NULL, 1, '2021-01-20 14:02:37', '2021-06-21 09:55:07'),
(6, 'Claire', 'Blake', 'cblake', 'cd74fae0a3adf459f73bbf187607ccea', 'uploads/1632990840_ava.jpg', NULL, 2, '2021-09-30 16:34:02', '2021-09-30 16:35:26'),
(7, 'Komarsan', 'Berhanu', 'komy ', '56a54cbd63e10eb18c767c2a75c24d3a', 'uploads/1737450540_komy.jpg', NULL, 1, '2025-01-21 13:09:43', NULL),
(8, 'Dawit ', 'Obsa', 'dave', '1610838743cc90e3e4fdda748282d9b8', NULL, NULL, 1, '2025-01-22 10:54:47', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `vehicles`
--

CREATE TABLE `vehicles` (
  `id` int(11) NOT NULL,
  `vehicle_number` varchar(50) NOT NULL,
  `type` varchar(50) NOT NULL,
  `status` enum('active','failed') DEFAULT 'active',
  `start_point` varchar(255) NOT NULL,
  `end_point` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vehicle_categories`
--

CREATE TABLE `vehicle_categories` (
  `id` int(11) NOT NULL,
  `vehicle_id` varchar(50) DEFAULT NULL,
  `vehicle_type` varchar(50) NOT NULL,
  `delivery_type` varchar(255) NOT NULL,
  `starting_place` varchar(255) NOT NULL,
  `destination_place` varchar(255) NOT NULL,
  `status` tinyint(1) DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `vehicle_categories`
--

INSERT INTO `vehicle_categories` (`id`, `vehicle_id`, `vehicle_type`, `delivery_type`, `starting_place`, `destination_place`, `status`, `created_at`, `updated_at`) VALUES
(1, 'V01', 'Van', 'Book Delivery', 'Merkato', 'Bole', 1, '2025-01-21 15:52:48', '2025-01-21 15:52:48'),
(2, 'V02', 'Taxi', 'Ride', 'ayer tena', 'Bole', 1, '2025-01-21 15:56:53', '2025-01-21 15:56:53'),
(3, 'V03', 'Bus', 'Public Service', 'arada', 'kebena', 0, '2025-01-21 16:28:44', '2025-01-21 16:28:44'),
(4, 'V04', 'Bus', 'Public Service', 'arada', 'kebena', 1, '2025-01-21 17:15:47', '2025-01-21 17:15:47'),
(5, 'V05', 'Taxi', 'Taxi', 'arada', 'kebena', 1, '2025-01-22 05:58:05', '2025-01-22 05:58:05'),
(6, 'V06', 'ride', 'Taxi', 'mexico', 'lukanda', 1, '2025-01-22 06:13:08', '2025-01-22 06:13:08'),
(7, 'V07', 'Van', 'delivery package', 'Merkato', 'kebena', 1, '2025-01-22 14:38:50', '2025-01-22 14:38:50'),
(8, 'V08', 'TATA', 'deliver people', 'Nekemte', 'Shambu', 1, '2025-01-22 15:27:36', '2025-01-22 15:27:36');

-- --------------------------------------------------------

--
-- Table structure for table `vehicle_data`
--

CREATE TABLE `vehicle_data` (
  `id` int(11) NOT NULL,
  `status` varchar(50) NOT NULL,
  `speed` varchar(50) NOT NULL,
  `traffic` varchar(50) NOT NULL,
  `road_condition` varchar(50) NOT NULL,
  `battery_status` varchar(50) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  `vehicle_id` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `vehicle_data`
--

INSERT INTO `vehicle_data` (`id`, `status`, `speed`, `traffic`, `road_condition`, `battery_status`, `timestamp`, `vehicle_id`) VALUES
(1, 'Inactive', '39 km/h', 'Light', 'Good', '63%', '2025-01-22 04:59:43', 0),
(2, 'Inactive', '38 km/h', 'Heavy', 'Bad', '66%', '2025-01-22 04:59:43', 0),
(3, 'Inactive', '95 km/h', 'Heavy', 'Bad', '14%', '2025-01-22 04:59:43', 0),
(4, 'Active', '93 km/h', 'Light', 'Good', '33%', '2025-01-22 04:59:43', 0),
(5, 'Active', '31 km/h', 'Light', 'Bad', '79%', '2025-01-22 05:00:07', 0),
(6, 'Inactive', '67 km/h', 'Light', 'Good', '49%', '2025-01-22 05:00:07', 0),
(7, 'Active', '65 km/h', 'Heavy', 'Bad', '36%', '2025-01-22 05:00:07', 0),
(8, 'Inactive', '49 km/h', 'Heavy', 'Bad', '89%', '2025-01-22 05:00:07', 0),
(9, 'Inactive', '71 km/h', 'Light', 'Good', '81%', '2025-01-22 05:24:28', 0),
(10, 'Inactive', '28 km/h', 'Light', 'Good', '74%', '2025-01-22 05:24:28', 0),
(11, 'Active', '21 km/h', 'Light', 'Bad', '20%', '2025-01-22 05:24:29', 0),
(12, 'Active', '101 km/h', 'Light', 'Good', '59%', '2025-01-22 05:24:29', 0),
(13, 'Inactive', '46 km/h', 'Heavy', 'Bad', '71%', '2025-01-22 05:56:10', 0),
(14, 'Active', '54 km/h', 'Heavy', 'Bad', '33%', '2025-01-22 05:56:11', 0),
(15, 'Inactive', '26 km/h', 'Heavy', 'Good', '32%', '2025-01-22 05:56:11', 0),
(16, 'Inactive', '33 km/h', 'Heavy', 'Bad', '32%', '2025-01-22 05:56:11', 0),
(17, 'Inactive', '26 km/h', 'Light', 'Good', '71%', '2025-01-22 05:58:24', 0),
(18, 'Inactive', '106 km/h', 'Light', 'Good', '50%', '2025-01-22 05:58:24', 0),
(19, 'Inactive', '50 km/h', 'Heavy', 'Bad', '53%', '2025-01-22 05:58:24', 0),
(20, 'Active', '95 km/h', 'Heavy', 'Good', '32%', '2025-01-22 05:58:24', 0),
(21, 'Active', '45 km/h', 'Light', 'Bad', '40%', '2025-01-22 05:58:24', 0),
(22, 'Active', '73 km/h', 'Heavy', 'Good', '95%', '2025-01-22 06:13:15', 0),
(23, 'Active', '43 km/h', 'Heavy', 'Bad', '52%', '2025-01-22 06:13:15', 0),
(24, 'Active', '117 km/h', 'Heavy', 'Good', '38%', '2025-01-22 06:13:15', 0),
(25, 'Inactive', '79 km/h', 'Light', 'Good', '76%', '2025-01-22 06:13:15', 0),
(26, 'Inactive', '34 km/h', 'Light', 'Bad', '27%', '2025-01-22 06:13:15', 0),
(27, 'Active', '99 km/h', 'Light', 'Bad', '62%', '2025-01-22 06:13:15', 0),
(28, 'Inactive', '67 km/h', 'Heavy', 'Bad', '72%', '2025-01-22 06:17:15', 0),
(29, 'Inactive', '34 km/h', 'Light', 'Bad', '93%', '2025-01-22 06:17:15', 0),
(30, 'Active', '105 km/h', 'Light', 'Bad', '39%', '2025-01-22 06:17:15', 0),
(31, 'Active', '111 km/h', 'Light', 'Bad', '60%', '2025-01-22 06:17:15', 0),
(32, 'Active', '41 km/h', 'Light', 'Bad', '13%', '2025-01-22 06:17:15', 0),
(33, 'Inactive', '76 km/h', 'Heavy', 'Good', '17%', '2025-01-22 06:17:15', 0),
(34, 'Inactive', '45 km/h', 'Heavy', 'Good', '65%', '2025-01-22 06:17:18', 0),
(35, 'Active', '94 km/h', 'Heavy', 'Good', '26%', '2025-01-22 06:17:18', 0),
(36, 'Active', '119 km/h', 'Heavy', 'Good', '15%', '2025-01-22 06:17:18', 0),
(37, 'Active', '38 km/h', 'Heavy', 'Bad', '27%', '2025-01-22 06:17:18', 0),
(38, 'Inactive', '118 km/h', 'Heavy', 'Bad', '27%', '2025-01-22 06:17:18', 0),
(39, 'Active', '24 km/h', 'Heavy', 'Good', '93%', '2025-01-22 06:17:18', 0),
(40, 'Inactive', '20 km/h', 'Light', 'Bad', '78%', '2025-01-22 06:50:37', 0),
(41, 'Active', '72 km/h', 'Light', 'Bad', '46%', '2025-01-22 06:50:37', 0),
(42, 'Inactive', '58 km/h', 'Heavy', 'Good', '40%', '2025-01-22 06:50:37', 0),
(43, 'Inactive', '86 km/h', 'Heavy', 'Bad', '55%', '2025-01-22 06:50:37', 0),
(44, 'Active', '65 km/h', 'Light', 'Bad', '29%', '2025-01-22 06:50:37', 0),
(45, 'Inactive', '43 km/h', 'Heavy', 'Good', '62%', '2025-01-22 06:50:37', 0),
(46, 'Active', '86 km/h', 'Light', 'Bad', '36%', '2025-01-22 07:08:11', 0),
(47, 'Active', '103 km/h', 'Heavy', 'Bad', '48%', '2025-01-22 07:08:11', 0),
(48, 'Active', '70 km/h', 'Light', 'Good', '68%', '2025-01-22 07:08:11', 0),
(49, 'Active', '65 km/h', 'Light', 'Good', '20%', '2025-01-22 07:08:11', 0),
(50, 'Inactive', '82 km/h', 'Heavy', 'Bad', '52%', '2025-01-22 07:08:11', 0),
(51, 'Inactive', '24 km/h', 'Light', 'Bad', '59%', '2025-01-22 07:08:11', 0),
(52, 'Active', '25 km/h', 'Light', 'Good', '42%', '2025-01-22 07:10:11', 0),
(53, 'Active', '31 km/h', 'Light', 'Bad', '17%', '2025-01-22 07:10:11', 0),
(54, 'Active', '41 km/h', 'Heavy', 'Good', '70%', '2025-01-22 07:10:11', 0),
(55, 'Inactive', '56 km/h', 'Heavy', 'Good', '97%', '2025-01-22 07:10:11', 0),
(56, 'Active', '66 km/h', 'Heavy', 'Bad', '32%', '2025-01-22 07:10:11', 0),
(57, 'Inactive', '54 km/h', 'Light', 'Bad', '41%', '2025-01-22 07:10:11', 0),
(58, 'Active', '72 km/h', 'Light', 'Good', '59%', '2025-01-22 07:11:44', 0),
(59, 'Inactive', '41 km/h', 'Light', 'Bad', '53%', '2025-01-22 07:11:44', 0),
(60, 'Inactive', '118 km/h', 'Light', 'Good', '82%', '2025-01-22 07:11:44', 0),
(61, 'Active', '67 km/h', 'Light', 'Bad', '12%', '2025-01-22 07:11:44', 0),
(62, 'Inactive', '95 km/h', 'Light', 'Good', '25%', '2025-01-22 07:11:44', 0),
(63, 'Inactive', '85 km/h', 'Heavy', 'Good', '84%', '2025-01-22 07:11:44', 0),
(64, 'Active', '103 km/h', 'Light', 'Bad', '80%', '2025-01-22 07:11:47', 0),
(65, 'Active', '81 km/h', 'Light', 'Good', '12%', '2025-01-22 07:11:47', 0),
(66, 'Active', '66 km/h', 'Light', 'Bad', '43%', '2025-01-22 07:11:47', 0),
(67, 'Active', '26 km/h', 'Light', 'Good', '72%', '2025-01-22 07:11:47', 0),
(68, 'Inactive', '22 km/h', 'Heavy', 'Good', '90%', '2025-01-22 07:11:47', 0),
(69, 'Active', '31 km/h', 'Light', 'Bad', '66%', '2025-01-22 07:11:47', 0),
(70, 'Inactive', '118 km/h', 'Heavy', 'Bad', '50%', '2025-01-22 07:11:50', 0),
(71, 'Active', '67 km/h', 'Light', 'Bad', '24%', '2025-01-22 07:11:50', 0),
(72, 'Inactive', '83 km/h', 'Heavy', 'Good', '90%', '2025-01-22 07:11:50', 0),
(73, 'Inactive', '72 km/h', 'Light', 'Bad', '40%', '2025-01-22 07:11:50', 0),
(74, 'Active', '93 km/h', 'Heavy', 'Good', '68%', '2025-01-22 07:11:50', 0),
(75, 'Active', '43 km/h', 'Heavy', 'Bad', '39%', '2025-01-22 07:11:50', 0),
(76, 'Active', '30 km/h', 'Heavy', 'Bad', '70%', '2025-01-22 07:11:52', 0),
(77, 'Inactive', '30 km/h', 'Heavy', 'Bad', '61%', '2025-01-22 07:11:52', 0),
(78, 'Active', '54 km/h', 'Heavy', 'Bad', '20%', '2025-01-22 07:11:52', 0),
(79, 'Active', '58 km/h', 'Light', 'Bad', '61%', '2025-01-22 07:11:52', 0),
(80, 'Active', '31 km/h', 'Heavy', 'Good', '15%', '2025-01-22 07:11:52', 0),
(81, 'Inactive', '30 km/h', 'Heavy', 'Bad', '91%', '2025-01-22 07:11:53', 0),
(82, 'Inactive', '23 km/h', 'Light', 'Good', '25%', '2025-01-22 07:11:57', 0),
(83, 'Inactive', '106 km/h', 'Light', 'Bad', '78%', '2025-01-22 07:11:57', 0),
(84, 'Inactive', '49 km/h', 'Light', 'Bad', '10%', '2025-01-22 07:11:57', 0),
(85, 'Active', '91 km/h', 'Light', 'Good', '50%', '2025-01-22 07:11:57', 0),
(86, 'Active', '26 km/h', 'Light', 'Good', '94%', '2025-01-22 07:11:57', 0),
(87, 'Active', '87 km/h', 'Light', 'Bad', '46%', '2025-01-22 07:11:57', 0),
(88, 'Inactive', '44 km/h', 'Heavy', 'Bad', '82%', '2025-01-22 07:11:59', 0),
(89, 'Inactive', '77 km/h', 'Heavy', 'Bad', '25%', '2025-01-22 07:11:59', 0),
(90, 'Inactive', '120 km/h', 'Light', 'Bad', '85%', '2025-01-22 07:11:59', 0),
(91, 'Inactive', '33 km/h', 'Heavy', 'Bad', '94%', '2025-01-22 07:11:59', 0),
(92, 'Inactive', '84 km/h', 'Light', 'Bad', '37%', '2025-01-22 07:11:59', 0),
(93, 'Active', '101 km/h', 'Light', 'Good', '71%', '2025-01-22 07:11:59', 0),
(94, 'Inactive', '51 km/h', 'Heavy', 'Good', '93%', '2025-01-22 07:12:02', 0),
(95, 'Inactive', '54 km/h', 'Heavy', 'Bad', '79%', '2025-01-22 07:12:02', 0),
(96, 'Active', '60 km/h', 'Light', 'Bad', '28%', '2025-01-22 07:12:02', 0),
(97, 'Active', '62 km/h', 'Light', 'Bad', '26%', '2025-01-22 07:12:02', 0),
(98, 'Active', '73 km/h', 'Heavy', 'Bad', '31%', '2025-01-22 07:12:02', 0),
(99, 'Active', '104 km/h', 'Heavy', 'Good', '26%', '2025-01-22 07:12:02', 0),
(100, 'Active', '95 km/h', 'Light', 'Good', '35%', '2025-01-22 07:12:04', 0),
(101, 'Active', '49 km/h', 'Light', 'Good', '20%', '2025-01-22 07:12:04', 0),
(102, 'Inactive', '46 km/h', 'Heavy', 'Bad', '38%', '2025-01-22 07:12:04', 0),
(103, 'Inactive', '108 km/h', 'Light', 'Bad', '76%', '2025-01-22 07:12:04', 0),
(104, 'Inactive', '58 km/h', 'Heavy', 'Bad', '55%', '2025-01-22 07:12:04', 0),
(105, 'Inactive', '80 km/h', 'Light', 'Bad', '23%', '2025-01-22 07:12:04', 0),
(106, 'Inactive', '24 km/h', 'Light', 'Good', '31%', '2025-01-22 07:13:07', 0),
(107, 'Active', '50 km/h', 'Light', 'Bad', '90%', '2025-01-22 07:13:07', 0),
(108, 'Active', '87 km/h', 'Heavy', 'Bad', '52%', '2025-01-22 07:13:07', 0),
(109, 'Active', '62 km/h', 'Heavy', 'Good', '85%', '2025-01-22 07:13:07', 0),
(110, 'Active', '67 km/h', 'Light', 'Bad', '52%', '2025-01-22 07:13:07', 0),
(111, 'Inactive', '51 km/h', 'Light', 'Bad', '35%', '2025-01-22 07:13:07', 0),
(112, 'Inactive', '49 km/h', 'Light', 'Good', '98%', '2025-01-22 07:14:25', 0),
(113, 'Inactive', '89 km/h', 'Light', 'Bad', '70%', '2025-01-22 07:14:25', 0),
(114, 'Active', '22 km/h', 'Heavy', 'Bad', '100%', '2025-01-22 07:14:25', 0),
(115, 'Inactive', '30 km/h', 'Light', 'Good', '73%', '2025-01-22 07:14:25', 0),
(116, 'Inactive', '55 km/h', 'Heavy', 'Good', '96%', '2025-01-22 07:14:25', 0),
(117, 'Active', '30 km/h', 'Light', 'Good', '16%', '2025-01-22 07:14:25', 0),
(118, 'Inactive', '85 km/h', 'Light', 'Good', '44%', '2025-01-22 07:17:08', 0),
(119, 'Active', '78 km/h', 'Light', 'Good', '83%', '2025-01-22 07:17:08', 0),
(120, 'Inactive', '33 km/h', 'Light', 'Bad', '94%', '2025-01-22 07:17:08', 0),
(121, 'Active', '89 km/h', 'Light', 'Good', '57%', '2025-01-22 07:17:08', 0),
(122, 'Inactive', '94 km/h', 'Light', 'Bad', '24%', '2025-01-22 07:17:08', 0),
(123, 'Active', '113 km/h', 'Heavy', 'Good', '17%', '2025-01-22 07:17:08', 0),
(124, 'Inactive', '78 km/h', 'Light', 'Bad', '35%', '2025-01-22 08:42:54', 0),
(125, 'Inactive', '23 km/h', 'Light', 'Bad', '89%', '2025-01-22 08:42:55', 0),
(126, 'Inactive', '102 km/h', 'Heavy', 'Bad', '23%', '2025-01-22 08:42:55', 0),
(127, 'Inactive', '64 km/h', 'Heavy', 'Bad', '55%', '2025-01-22 08:42:55', 0),
(128, 'Active', '56 km/h', 'Light', 'Bad', '75%', '2025-01-22 08:42:55', 0),
(129, 'Inactive', '90 km/h', 'Heavy', 'Good', '68%', '2025-01-22 08:42:55', 0),
(130, 'Inactive', '109 km/h', 'Light', 'Good', '91%', '2025-01-22 11:14:02', 0),
(131, 'Inactive', '84 km/h', 'Heavy', 'Bad', '100%', '2025-01-22 11:14:03', 0),
(132, 'Active', '54 km/h', 'Heavy', 'Good', '93%', '2025-01-22 11:14:04', 0),
(133, 'Inactive', '58 km/h', 'Light', 'Bad', '27%', '2025-01-22 11:14:04', 0),
(134, 'Inactive', '30 km/h', 'Light', 'Good', '41%', '2025-01-22 11:14:04', 0),
(135, 'Active', '78 km/h', 'Heavy', 'Bad', '51%', '2025-01-22 11:14:04', 0),
(136, 'Inactive', '97 km/h', 'Light', 'Bad', '34%', '2025-01-22 11:14:11', 0),
(137, 'Inactive', '32 km/h', 'Heavy', 'Bad', '71%', '2025-01-22 11:14:11', 0),
(138, 'Active', '77 km/h', 'Heavy', 'Bad', '81%', '2025-01-22 11:14:11', 0),
(139, 'Inactive', '60 km/h', 'Heavy', 'Bad', '86%', '2025-01-22 11:14:11', 0),
(140, 'Active', '44 km/h', 'Heavy', 'Bad', '54%', '2025-01-22 11:14:11', 0),
(141, 'Inactive', '22 km/h', 'Heavy', 'Good', '98%', '2025-01-22 11:14:11', 0),
(142, 'Active', '96 km/h', 'Heavy', 'Bad', '69%', '2025-01-22 11:33:54', 0),
(143, 'Inactive', '39 km/h', 'Light', 'Bad', '79%', '2025-01-22 11:33:56', 0),
(144, 'Inactive', '65 km/h', 'Light', 'Bad', '12%', '2025-01-22 11:33:56', 0),
(145, 'Inactive', '86 km/h', 'Heavy', 'Bad', '67%', '2025-01-22 11:33:56', 0),
(146, 'Active', '103 km/h', 'Heavy', 'Bad', '33%', '2025-01-22 11:33:56', 0),
(147, 'Active', '76 km/h', 'Light', 'Bad', '84%', '2025-01-22 11:33:56', 0),
(148, 'Active', '83 km/h', 'Light', 'Good', '93%', '2025-01-22 11:34:08', 0),
(149, 'Inactive', '118 km/h', 'Heavy', 'Bad', '76%', '2025-01-22 11:34:08', 0),
(150, 'Inactive', '47 km/h', 'Heavy', 'Bad', '74%', '2025-01-22 11:34:08', 0),
(151, 'Active', '35 km/h', 'Heavy', 'Bad', '91%', '2025-01-22 11:34:08', 0),
(152, 'Active', '110 km/h', 'Heavy', 'Bad', '19%', '2025-01-22 11:34:09', 0),
(153, 'Active', '107 km/h', 'Light', 'Good', '10%', '2025-01-22 11:34:09', 0),
(154, 'Active', '54 km/h', 'Heavy', 'Bad', '84%', '2025-01-22 11:34:10', 0),
(155, 'Active', '25 km/h', 'Heavy', 'Bad', '35%', '2025-01-22 11:34:11', 0),
(156, 'Active', '71 km/h', 'Heavy', 'Bad', '83%', '2025-01-22 11:34:11', 0),
(157, 'Inactive', '55 km/h', 'Heavy', 'Bad', '35%', '2025-01-22 11:34:11', 0),
(158, 'Inactive', '106 km/h', 'Heavy', 'Good', '50%', '2025-01-22 11:34:11', 0),
(159, 'Active', '120 km/h', 'Heavy', 'Bad', '71%', '2025-01-22 11:34:11', 0),
(160, 'Active', '25 km/h', 'Light', 'Bad', '47%', '2025-01-22 11:37:38', 0),
(161, 'Inactive', '115 km/h', 'Light', 'Bad', '56%', '2025-01-22 11:37:38', 0),
(162, 'Active', '93 km/h', 'Heavy', 'Bad', '64%', '2025-01-22 11:37:39', 0),
(163, 'Active', '22 km/h', 'Heavy', 'Good', '55%', '2025-01-22 11:37:39', 0),
(164, 'Active', '94 km/h', 'Light', 'Bad', '92%', '2025-01-22 11:37:39', 0),
(165, 'Inactive', '120 km/h', 'Light', 'Good', '10%', '2025-01-22 11:37:40', 0),
(166, 'Active', '97 km/h', 'Heavy', 'Good', '71%', '2025-01-22 11:40:56', 0),
(167, 'Active', '106 km/h', 'Heavy', 'Bad', '100%', '2025-01-22 11:40:56', 0),
(168, 'Inactive', '119 km/h', 'Heavy', 'Good', '21%', '2025-01-22 11:40:56', 0),
(169, 'Inactive', '34 km/h', 'Heavy', 'Bad', '31%', '2025-01-22 11:40:56', 0),
(170, 'Inactive', '51 km/h', 'Heavy', 'Good', '14%', '2025-01-22 11:40:56', 0),
(171, 'Inactive', '67 km/h', 'Heavy', 'Bad', '98%', '2025-01-22 11:40:56', 0),
(172, 'Active', '76 km/h', 'Light', 'Good', '100%', '2025-01-22 11:51:25', 0),
(173, 'Active', '33 km/h', 'Light', 'Good', '34%', '2025-01-22 11:51:25', 0),
(174, 'Inactive', '71 km/h', 'Heavy', 'Good', '23%', '2025-01-22 11:51:25', 0),
(175, 'Active', '68 km/h', 'Heavy', 'Bad', '100%', '2025-01-22 11:51:25', 0),
(176, 'Inactive', '35 km/h', 'Light', 'Good', '35%', '2025-01-22 11:51:25', 0),
(177, 'Active', '90 km/h', 'Heavy', 'Bad', '48%', '2025-01-22 11:51:25', 0),
(178, 'Active', '41 km/h', 'Light', 'Good', '78%', '2025-01-22 14:39:05', 0),
(179, 'Inactive', '38 km/h', 'Heavy', 'Good', '33%', '2025-01-22 14:39:05', 0),
(180, 'Inactive', '47 km/h', 'Heavy', 'Bad', '83%', '2025-01-22 14:39:05', 0),
(181, 'Active', '94 km/h', 'Light', 'Bad', '54%', '2025-01-22 14:39:05', 0),
(182, 'Inactive', '25 km/h', 'Heavy', 'Bad', '62%', '2025-01-22 14:39:05', 0),
(183, 'Inactive', '25 km/h', 'Light', 'Good', '45%', '2025-01-22 14:39:05', 0),
(184, 'Inactive', '56 km/h', 'Light', 'Good', '31%', '2025-01-22 14:39:05', 0),
(185, 'Active', '94 km/h', 'Heavy', 'Good', '66%', '2025-01-22 15:02:02', 0),
(186, 'Active', '24 km/h', 'Light', 'Good', '61%', '2025-01-22 15:02:02', 0),
(187, 'Inactive', '89 km/h', 'Heavy', 'Bad', '59%', '2025-01-22 15:02:02', 0),
(188, 'Inactive', '69 km/h', 'Light', 'Bad', '57%', '2025-01-22 15:02:02', 0),
(189, 'Inactive', '46 km/h', 'Light', 'Good', '62%', '2025-01-22 15:02:02', 0),
(190, 'Inactive', '58 km/h', 'Heavy', 'Good', '56%', '2025-01-22 15:02:02', 0),
(191, 'Active', '46 km/h', 'Light', 'Good', '66%', '2025-01-22 15:02:02', 0),
(192, 'Active', '35 km/h', 'Light', 'Good', '51%', '2025-01-22 15:39:39', 0),
(193, 'Active', '74 km/h', 'Light', 'Bad', '77%', '2025-01-22 15:39:40', 0),
(194, 'Active', '43 km/h', 'Heavy', 'Good', '60%', '2025-01-22 15:39:40', 0),
(195, 'Active', '72 km/h', 'Heavy', 'Bad', '90%', '2025-01-22 15:39:40', 0),
(196, 'Inactive', '62 km/h', 'Light', 'Bad', '39%', '2025-01-22 15:39:40', 0),
(197, 'Active', '98 km/h', 'Heavy', 'Good', '59%', '2025-01-22 15:39:40', 0),
(198, 'Active', '42 km/h', 'Heavy', 'Bad', '55%', '2025-01-22 15:39:40', 0),
(199, 'Active', '34 km/h', 'Light', 'Good', '23%', '2025-01-22 15:39:40', 0);

-- --------------------------------------------------------

--
-- Table structure for table `vehicle_messages`
--

CREATE TABLE `vehicle_messages` (
  `id` int(11) NOT NULL,
  `vehicle_id` int(11) NOT NULL,
  `message` text NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `vehicle_messages`
--

INSERT INTO `vehicle_messages` (`id`, `vehicle_id`, `message`, `timestamp`) VALUES
(1, 1, 'there is traffic cloud', '2025-01-21 17:45:01'),
(2, 1, 'there is traffic cloud', '2025-01-21 17:45:01'),
(3, 0, 'kotu', '2025-01-21 18:22:14'),
(4, 0, 'kotu', '2025-01-21 18:22:33'),
(5, 0, 'kotu', '2025-01-21 18:22:40'),
(6, 0, 'kotu', '2025-01-21 18:22:40'),
(7, 0, 'kotu', '2025-01-21 18:22:41'),
(8, 0, 'kotu', '2025-01-21 18:22:42'),
(9, 0, 'kotu', '2025-01-21 18:22:43'),
(10, 0, 'kotu', '2025-01-21 18:22:43'),
(11, 0, 'kotu', '2025-01-21 18:22:44'),
(12, 0, 'kotu', '2025-01-21 18:22:44'),
(13, 0, 'kotu', '2025-01-21 18:22:45');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mechanics_list`
--
ALTER TABLE `mechanics_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `request_meta`
--
ALTER TABLE `request_meta`
  ADD KEY `request_id` (`request_id`);

--
-- Indexes for table `service_list`
--
ALTER TABLE `service_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `service_requests`
--
ALTER TABLE `service_requests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_info`
--
ALTER TABLE `system_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vehicles`
--
ALTER TABLE `vehicles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vehicle_categories`
--
ALTER TABLE `vehicle_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vehicle_id` (`vehicle_id`);

--
-- Indexes for table `vehicle_data`
--
ALTER TABLE `vehicle_data`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vehicle_messages`
--
ALTER TABLE `vehicle_messages`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `mechanics_list`
--
ALTER TABLE `mechanics_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `service_list`
--
ALTER TABLE `service_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `service_requests`
--
ALTER TABLE `service_requests`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `system_info`
--
ALTER TABLE `system_info`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `vehicles`
--
ALTER TABLE `vehicles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vehicle_categories`
--
ALTER TABLE `vehicle_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `vehicle_data`
--
ALTER TABLE `vehicle_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=200;

--
-- AUTO_INCREMENT for table `vehicle_messages`
--
ALTER TABLE `vehicle_messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `request_meta`
--
ALTER TABLE `request_meta`
  ADD CONSTRAINT `request_meta_ibfk_1` FOREIGN KEY (`request_id`) REFERENCES `service_requests` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
