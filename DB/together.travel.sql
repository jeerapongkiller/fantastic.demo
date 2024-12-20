-- phpMyAdmin SQL Dump
-- version 5.1.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 20, 2024 at 11:34 AM
-- Server version: 8.0.39-30
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db9te6g4ourjt6`
--

-- --------------------------------------------------------

--
-- Table structure for table `agents`
--

CREATE TABLE `agents` (
  `id` int NOT NULL,
  `company_id` int NOT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(65) COLLATE utf8mb4_unicode_ci NOT NULL,
  `firstname` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telephone` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_approved` int NOT NULL DEFAULT '0',
  `is_deleted` int NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `banks`
--

CREATE TABLE `banks` (
  `id` int NOT NULL,
  `name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_daleted` int NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `banks`
--

INSERT INTO `banks` (`id`, `name`, `slug`, `is_daleted`, `created_at`, `updated_at`) VALUES
(1, 'ธนาคารกรุงเทพ จำกัด (มหาชน)', 'ธนาคารกรุงเทพ-จำกัด-(มหาชน)', 0, '2022-06-10 09:44:44', '2024-10-31 12:48:16'),
(2, 'ธนาคารกรุงไทย จำกัด (มหาชน)', 'ธนาคารกรุงไทย-จำกัด-(มหาชน)', 1, '2022-06-10 09:56:22', '2024-10-31 12:48:05'),
(3, 'ธนาคารกรุงศรีอยุธยา จำกัด (มหาชน)', 'ธนาคารกรุงศรีอยุธยา-จำกัด-(มหาชน)', 0, '2022-06-10 10:02:43', '2022-10-28 07:47:50'),
(4, 'ธนาคารกสิกรไทย (KBANK)', 'ธนาคารกสิกรไทย-(KBANK)', 0, '2023-09-08 04:45:41', '2023-09-08 04:45:41'),
(5, 'ธนาคารทหารไทยธนชาต จำกัด (มหาชน)', 'ธนาคารทหารไทยธนชาต-จำกัด-(มหาชน)', 0, '2024-10-14 09:25:32', '2024-10-14 09:25:32'),
(6, 'ธนาคารไทยพาณิชย์', 'ธนาคารไทยพาณิชย์', 0, '2024-10-20 07:52:12', '2024-10-20 07:52:12'),
(7, 'กรุงเทพ', 'กรุงเทพ', 1, '2024-10-31 12:47:46', '2024-10-31 12:47:52');

-- --------------------------------------------------------

--
-- Table structure for table `bank_account`
--

CREATE TABLE `bank_account` (
  `id` int NOT NULL,
  `account_name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `account_no` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bank_id` int NOT NULL,
  `is_approved` int NOT NULL,
  `is_deleted` int NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bank_account`
--

INSERT INTO `bank_account` (`id`, `account_name`, `account_no`, `bank_id`, `is_approved`, `is_deleted`, `created_at`, `updated_at`) VALUES
(1, 'บจก. ทูเกทเตอร์ ทราเวล', '187-3-06788-4', 4, 1, 0, '2024-12-18 10:12:03', '2024-12-18 10:12:03'),
(2, 'นางสาว ศกลวรรณ แซ่หลู่', '817-289577-9', 6, 1, 0, '2024-12-18 10:12:03', '2024-12-18 10:12:03'),
(3, 'น.ส. ขวัญพัฒน์ หลู่ภูริเจริญโภคิน', '819-0-48788-4', 2, 1, 0, '2024-12-18 10:15:10', '2024-12-18 10:15:10');

-- --------------------------------------------------------

--
-- Table structure for table `bloods`
--

CREATE TABLE `bloods` (
  `id` int NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_approved` int NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bloods`
--

INSERT INTO `bloods` (`id`, `name`, `is_approved`, `created_at`) VALUES
(1, 'A', 1, '2021-09-15 14:52:15'),
(2, 'B', 1, '2021-09-15 14:52:15'),
(3, 'AB', 1, '2021-09-15 14:52:15'),
(4, 'O', 1, '2021-09-15 14:52:15');

-- --------------------------------------------------------

--
-- Table structure for table `boats`
--

CREATE TABLE `boats` (
  `id` int NOT NULL,
  `refcode` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `capacity` int NOT NULL,
  `boat_type_id` int NOT NULL DEFAULT '0',
  `is_approved` int NOT NULL DEFAULT '0',
  `is_deleted` int NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `boats`
--

INSERT INTO `boats` (`id`, `refcode`, `name`, `slug`, `capacity`, `boat_type_id`, `is_approved`, `is_deleted`, `created_at`, `updated_at`) VALUES
(1, '', 'Together 1', '', 10, 0, 1, 0, '2024-12-19 03:41:07', '2024-12-19 03:41:07'),
(2, '', 'Together 2', '', 10, 0, 1, 0, '2024-12-19 03:41:17', '2024-12-19 03:41:17');

-- --------------------------------------------------------

--
-- Table structure for table `boats_type`
--

CREATE TABLE `boats_type` (
  `id` int NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bookings`
--

CREATE TABLE `bookings` (
  `id` int NOT NULL,
  `booking_date` date NOT NULL,
  `booking_time` time NOT NULL,
  `voucher_no_agent` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `discount_type` int NOT NULL DEFAULT '1' COMMENT '1 : Baht\r\n2 : Percent',
  `discount` double(9,2) NOT NULL,
  `sender` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `booker_id` int NOT NULL COMMENT 'user id',
  `company_id` int NOT NULL DEFAULT '0',
  `booking_status_id` int NOT NULL DEFAULT '0',
  `booking_type_id` int NOT NULL DEFAULT '0',
  `is_deleted` int NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bookings`
--

INSERT INTO `bookings` (`id`, `booking_date`, `booking_time`, `voucher_no_agent`, `discount_type`, `discount`, `sender`, `booker_id`, `company_id`, `booking_status_id`, `booking_type_id`, `is_deleted`, `created_at`, `updated_at`) VALUES
(1, '2024-12-19', '09:33:22', '99/482', 1, 0.00, 'Kun T', 1, 251, 1, 1, 0, '2024-12-19 02:34:12', '2024-12-19 02:34:12'),
(2, '2024-12-19', '09:48:50', '2222222', 1, 0.00, 'aaaaaa', 1, 87, 1, 1, 0, '2024-12-19 02:51:26', '2024-12-19 02:51:26'),
(3, '2024-12-19', '09:51:43', '555555', 1, 0.00, 'aaaaaa', 1, 54, 1, 1, 0, '2024-12-19 02:52:46', '2024-12-19 02:52:46'),
(4, '2024-12-19', '09:52:48', '888888', 1, 0.00, 'aaaaaa', 1, 54, 1, 1, 0, '2024-12-19 02:54:52', '2024-12-19 02:54:52'),
(5, '2024-12-20', '12:18:51', '33333333', 1, 0.00, 'gggggg', 1, 23, 1, 1, 0, '2024-12-20 05:23:58', '2024-12-20 05:23:58'),
(6, '2024-12-20', '12:23:59', '777777', 1, 0.00, 'gggggg', 1, 54, 1, 1, 0, '2024-12-20 05:25:17', '2024-12-20 05:25:17');

-- --------------------------------------------------------

--
-- Table structure for table `bookings_no`
--

CREATE TABLE `bookings_no` (
  `id` int NOT NULL,
  `bo_date` date NOT NULL,
  `bo_year` int NOT NULL,
  `bo_year_th` int NOT NULL,
  `bo_month` int NOT NULL,
  `bo_no` int NOT NULL,
  `bo_full` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `booking_id` int NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bookings_no`
--

INSERT INTO `bookings_no` (`id`, `bo_date`, `bo_year`, `bo_year_th`, `bo_month`, `bo_no`, `bo_full`, `booking_id`, `created_at`) VALUES
(1, '2024-12-19', 2024, 67, 12, 1, 'BO67120001', 1, '2024-12-19 02:34:12'),
(2, '2024-12-19', 2024, 67, 12, 2, 'BO67120002', 2, '2024-12-19 02:51:26'),
(3, '2024-12-19', 2024, 67, 12, 3, 'BO67120003', 3, '2024-12-19 02:52:46'),
(4, '2024-12-19', 2024, 67, 12, 4, 'BO67120004', 4, '2024-12-19 02:54:52'),
(5, '2024-12-20', 2024, 67, 12, 5, 'BO67120005', 5, '2024-12-20 05:23:58'),
(6, '2024-12-20', 2024, 67, 12, 6, 'BO67120006', 6, '2024-12-20 05:25:17');

-- --------------------------------------------------------

--
-- Table structure for table `booking_extra_charge`
--

CREATE TABLE `booking_extra_charge` (
  `id` int NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `adult` int NOT NULL,
  `child` int NOT NULL,
  `infant` int NOT NULL,
  `privates` int NOT NULL,
  `rate_adult` double(9,2) NOT NULL,
  `rate_child` double(9,2) NOT NULL,
  `rate_infant` double(9,2) NOT NULL,
  `rate_private` double(9,2) NOT NULL,
  `booking_id` int NOT NULL,
  `extra_charge_id` int NOT NULL,
  `type` int NOT NULL DEFAULT '0' COMMENT 'Per Pax : 1\r\nTotal : 2',
  `is_approved` int NOT NULL DEFAULT '0',
  `is_deleted` int NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `booking_extra_charge`
--

INSERT INTO `booking_extra_charge` (`id`, `name`, `adult`, `child`, `infant`, `privates`, `rate_adult`, `rate_child`, `rate_infant`, `rate_private`, `booking_id`, `extra_charge_id`, `type`, `is_approved`, `is_deleted`, `created_at`, `updated_at`) VALUES
(1, '', 2, 1, 0, 0, 200.00, 200.00, 200.00, 2000.00, 2, 1, 1, 1, 0, '2024-12-19 02:51:26', '2024-12-19 02:51:26'),
(2, '', 4, 1, 0, 0, 200.00, 200.00, 200.00, 2000.00, 5, 1, 1, 1, 0, '2024-12-20 05:23:58', '2024-12-20 05:23:58');

-- --------------------------------------------------------

--
-- Table structure for table `booking_order_boat`
--

CREATE TABLE `booking_order_boat` (
  `id` int NOT NULL,
  `arrange` int NOT NULL,
  `booking_id` int NOT NULL,
  `manage_id` int NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `booking_order_boat`
--

INSERT INTO `booking_order_boat` (`id`, `arrange`, `booking_id`, `manage_id`, `created_at`) VALUES
(3, 0, 4, 3, '2024-12-20 05:47:43'),
(4, 0, 2, 3, '2024-12-20 05:47:43'),
(5, 0, 6, 4, '2024-12-20 05:48:25'),
(6, 0, 3, 4, '2024-12-20 05:48:25'),
(7, 0, 5, 4, '2024-12-20 05:48:25');

-- --------------------------------------------------------

--
-- Table structure for table `booking_order_transfer`
--

CREATE TABLE `booking_order_transfer` (
  `id` int NOT NULL,
  `arrange` int NOT NULL,
  `order_id` int NOT NULL,
  `booking_transfer_id` int NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `booking_order_transfer`
--

INSERT INTO `booking_order_transfer` (`id`, `arrange`, `order_id`, `booking_transfer_id`, `created_at`) VALUES
(4, 1, 4, 2, '2024-12-20 05:37:43'),
(5, 2, 4, 4, '2024-12-20 05:37:43'),
(7, 2, 5, 6, '2024-12-20 05:41:53'),
(8, 1, 5, 5, '2024-12-20 05:41:53'),
(9, 3, 5, 3, '2024-12-20 05:43:18');

-- --------------------------------------------------------

--
-- Table structure for table `booking_paid`
--

CREATE TABLE `booking_paid` (
  `id` int NOT NULL,
  `date_paid` date NOT NULL,
  `total_paid` double(9,2) NOT NULL,
  `card_no` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_type_id` int NOT NULL,
  `bank_account_id` int NOT NULL,
  `booking_payment_id` int NOT NULL,
  `booking_id` int NOT NULL,
  `user_id` int NOT NULL COMMENT 'user_id',
  `updated_at` datetime NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `booking_paid`
--

INSERT INTO `booking_paid` (`id`, `date_paid`, `total_paid`, `card_no`, `photo`, `note`, `payment_type_id`, `bank_account_id`, `booking_payment_id`, `booking_id`, `user_id`, `updated_at`, `created_at`) VALUES
(1, '0000-00-00', 0.00, '', '', '', 0, 0, 2, 1, 1, '2024-12-19 02:34:12', '2024-12-19 02:34:12'),
(2, '0000-00-00', 2000.00, '', '', '', 0, 0, 4, 2, 1, '2024-12-19 02:51:26', '2024-12-19 02:51:26'),
(3, '0000-00-00', 0.00, '', '', '', 0, 0, 2, 3, 1, '2024-12-19 02:52:46', '2024-12-19 02:52:46'),
(4, '0000-00-00', 1000.00, '', '', '', 0, 0, 4, 4, 1, '2024-12-19 02:54:52', '2024-12-19 02:54:52'),
(5, '0000-00-00', 0.00, '', '', '', 0, 0, 6, 1, 1, '2024-12-19 03:32:50', '2024-12-19 03:32:50'),
(6, '0000-00-00', 0.00, '', '', '', 0, 0, 3, 4, 1, '2024-12-20 05:33:42', '2024-12-19 03:44:48'),
(7, '0000-00-00', 0.00, '', '', '', 0, 0, 3, 3, 1, '2024-12-20 05:33:42', '2024-12-19 03:44:48'),
(8, '0000-00-00', 1000.00, '', '', '', 0, 0, 4, 5, 1, '2024-12-20 05:23:58', '2024-12-20 05:23:58'),
(9, '0000-00-00', 0.00, '', '', '', 0, 0, 2, 6, 1, '2024-12-20 05:25:17', '2024-12-20 05:25:17'),
(10, '0000-00-00', 0.00, '', '', '', 0, 0, 6, 6, 1, '2024-12-20 05:27:25', '2024-12-20 05:27:25');

-- --------------------------------------------------------

--
-- Table structure for table `booking_paid_detail`
--

CREATE TABLE `booking_paid_detail` (
  `id` int NOT NULL,
  `date_paid` date NOT NULL,
  `time_paid` time NOT NULL,
  `total_paid` int NOT NULL,
  `card_no` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_type_id` int NOT NULL,
  `bank_account_id` int NOT NULL,
  `booking_paid_id` int NOT NULL,
  `updated_at` datetime NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `booking_payment`
--

CREATE TABLE `booking_payment` (
  `id` int NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_class` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `button_class` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` int NOT NULL COMMENT '1 : select 2 : not select',
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `booking_payment`
--

INSERT INTO `booking_payment` (`id`, `name`, `name_class`, `button_class`, `type`, `created_at`) VALUES
(1, 'รอโอน', 'badge-light-info', 'btn-relief-info', 1, '2023-01-12 04:23:12'),
(2, 'วางบิล', 'badge-light-warning', 'btn-relief-warning', 1, '2023-01-12 04:23:12'),
(3, 'Paid', 'badge-light-success', 'btn-relief-success', 1, '2023-01-12 04:23:12'),
(4, 'Cash on tour', 'badge-light-danger', 'btn-relief-danger', 1, '2023-01-12 04:23:12'),
(5, 'Deposit', 'badge-light-secondary', 'btn-relief-secondary', 1, '2023-01-12 04:23:12'),
(6, 'Invoice', 'badge-light-info', 'btn-relief-info', 1, '2023-01-12 04:23:12');

-- --------------------------------------------------------

--
-- Table structure for table `booking_products`
--

CREATE TABLE `booking_products` (
  `id` int NOT NULL,
  `travel_date` date NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `private_type` int NOT NULL DEFAULT '0' COMMENT '0 : non private\r\n1 : per pax\r\n2 : total',
  `booking_type_id` int NOT NULL,
  `booking_id` int NOT NULL,
  `product_id` int NOT NULL,
  `is_approved` int NOT NULL DEFAULT '0',
  `is_deleted` int NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `booking_products`
--

INSERT INTO `booking_products` (`id`, `travel_date`, `note`, `private_type`, `booking_type_id`, `booking_id`, `product_id`, `is_approved`, `is_deleted`, `created_at`, `updated_at`) VALUES
(1, '2024-12-19', '', 0, 1, 1, 1, 1, 0, '2024-12-19 02:34:12', '2024-12-19 02:34:12'),
(2, '2024-12-21', 'test', 0, 1, 2, 3, 1, 0, '2024-12-19 02:51:26', '2024-12-19 02:51:26'),
(3, '2024-12-21', '', 0, 1, 3, 1, 1, 0, '2024-12-19 02:52:46', '2024-12-19 02:52:46'),
(4, '2024-12-21', '', 0, 1, 4, 3, 1, 0, '2024-12-19 02:54:52', '2024-12-19 02:54:52'),
(5, '2024-12-21', '', 0, 1, 5, 1, 1, 0, '2024-12-20 05:23:58', '2024-12-20 05:23:58'),
(6, '2024-12-21', '', 0, 1, 6, 1, 1, 0, '2024-12-20 05:25:17', '2024-12-20 05:25:17');

-- --------------------------------------------------------

--
-- Table structure for table `booking_product_rates`
--

CREATE TABLE `booking_product_rates` (
  `id` int NOT NULL,
  `adult` int NOT NULL,
  `child` int NOT NULL,
  `infant` int NOT NULL,
  `foc` int NOT NULL,
  `rate_adult` double(9,2) NOT NULL,
  `rate_child` double(9,2) NOT NULL,
  `rate_infant` double(9,2) NOT NULL,
  `rate_private` double(9,2) NOT NULL,
  `rate_total` double(9,2) NOT NULL,
  `category_id` int NOT NULL,
  `booking_products_id` int NOT NULL,
  `product_rates_id` int NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `booking_product_rates`
--

INSERT INTO `booking_product_rates` (`id`, `adult`, `child`, `infant`, `foc`, `rate_adult`, `rate_child`, `rate_infant`, `rate_private`, `rate_total`, `category_id`, `booking_products_id`, `product_rates_id`, `created_at`, `updated_at`) VALUES
(1, 2, 1, 0, 0, 2000.00, 1800.00, 0.00, 0.00, 5800.00, 1, 1, 2001, '2024-12-19 02:34:12', '2024-12-19 02:34:12'),
(2, 2, 1, 0, 0, 1700.00, 1500.00, 0.00, 0.00, 4900.00, 5, 2, 693, '2024-12-19 02:51:26', '2024-12-19 02:51:26'),
(3, 4, 0, 0, 0, 2000.00, 1800.00, 0.00, 0.00, 8000.00, 1, 3, 425, '2024-12-19 02:52:46', '2024-12-19 02:52:46'),
(4, 2, 1, 0, 0, 1700.00, 1500.00, 0.00, 0.00, 4900.00, 6, 4, 430, '2024-12-19 02:54:52', '2024-12-19 02:54:52'),
(5, 4, 1, 0, 0, 2000.00, 1800.00, 0.00, 0.00, 9800.00, 1, 5, 177, '2024-12-20 05:23:58', '2024-12-20 05:23:58'),
(6, 2, 0, 0, 0, 1700.00, 1500.00, 0.00, 0.00, 3400.00, 2, 6, 426, '2024-12-20 05:25:17', '2024-12-20 05:25:17');

-- --------------------------------------------------------

--
-- Table structure for table `booking_status`
--

CREATE TABLE `booking_status` (
  `id` int NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_class` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `button_class` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `booking_status`
--

INSERT INTO `booking_status` (`id`, `name`, `name_class`, `button_class`, `created_at`, `updated_at`) VALUES
(1, 'Confirm', 'badge-light-success', 'btn btn-relief-success', '2021-12-08 09:25:51', '2021-12-08 09:25:51'),
(2, 'Confirm Charge', 'badge-light-success', 'btn btn-relief-success', '2021-12-08 09:25:51', '2021-12-08 09:25:51'),
(3, 'Canceled', 'badge-light-danger', 'btn btn-relief-danger', '2021-12-08 09:25:51', '2021-12-08 09:25:51'),
(4, 'Canceled Charge', 'badge-light-danger', 'btn btn-relief-danger', '2021-12-08 09:25:51', '2021-12-08 09:25:51'),
(5, 'No Show', 'badge-light-secondary', 'btn btn-relief-secondary', '2021-12-08 09:25:51', '2021-12-08 09:25:51');

-- --------------------------------------------------------

--
-- Table structure for table `booking_transfer`
--

CREATE TABLE `booking_transfer` (
  `id` int NOT NULL,
  `adult` int NOT NULL,
  `child` int NOT NULL,
  `infant` int NOT NULL,
  `foc` int NOT NULL,
  `start_pickup` time NOT NULL,
  `end_pickup` time NOT NULL,
  `hotel_pickup` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hotel_dropoff` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `room_no` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pickup_id` int NOT NULL,
  `dropoff_id` int NOT NULL,
  `hotel_pickup_id` int NOT NULL COMMENT 'table hotel',
  `hotel_dropoff_id` int NOT NULL COMMENT 'table hotel',
  `transfer_type` int NOT NULL COMMENT '0 : non \r\n1 : join \r\n2 : private',
  `pickup_type` int NOT NULL COMMENT '1 : เอารถรับส่ง 2 : มาเอง',
  `booking_products_id` int NOT NULL,
  `category_id` int NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `booking_transfer`
--

INSERT INTO `booking_transfer` (`id`, `adult`, `child`, `infant`, `foc`, `start_pickup`, `end_pickup`, `hotel_pickup`, `hotel_dropoff`, `room_no`, `note`, `pickup_id`, `dropoff_id`, `hotel_pickup_id`, `hotel_dropoff_id`, `transfer_type`, `pickup_type`, `booking_products_id`, `category_id`, `created_at`, `updated_at`) VALUES
(1, 2, 1, 0, 0, '07:00:00', '07:15:00', 'Hotel Blue', 'Hotel Blue', 'A302', '', 3, 3, 0, 0, 1, 1, 1, 0, '2024-12-19 02:34:12', '2024-12-19 02:34:12'),
(2, 2, 1, 0, 0, '00:00:00', '00:00:00', 'aaaaaaaa', 'aaaaaaaa', '123', '', 19, 19, 0, 0, 1, 1, 2, 0, '2024-12-19 02:51:26', '2024-12-19 02:51:26'),
(3, 4, 0, 0, 0, '00:00:00', '00:00:00', 'aaaaaaa', 'aaaaaaa', '', '', 19, 19, 0, 0, 1, 1, 3, 0, '2024-12-19 02:52:46', '2024-12-19 02:52:46'),
(4, 2, 1, 0, 0, '00:00:00', '00:00:00', 'nnnnnnnn', 'nnnnnnnn', '', '', 19, 19, 0, 0, 1, 1, 4, 0, '2024-12-19 02:54:52', '2024-12-19 02:54:52'),
(5, 4, 1, 0, 0, '00:00:00', '00:00:00', 'rrrrrrrrrr', 'rrrrrrrrrr', '3333333', '', 19, 19, 0, 0, 1, 1, 5, 0, '2024-12-20 05:23:58', '2024-12-20 05:23:58'),
(6, 2, 0, 0, 0, '00:00:00', '00:00:00', 'hhhhhhhh', 'hhhhhhhh', '888888', '', 19, 19, 0, 0, 1, 1, 6, 0, '2024-12-20 05:25:17', '2024-12-20 05:25:17');

-- --------------------------------------------------------

--
-- Table structure for table `booking_transfer_rates`
--

CREATE TABLE `booking_transfer_rates` (
  `id` int NOT NULL,
  `rate_adult` double(9,2) NOT NULL,
  `rate_child` double(9,2) NOT NULL,
  `rate_infant` double(9,2) NOT NULL,
  `rate_private` double(9,2) NOT NULL,
  `booking_transfer_id` int NOT NULL,
  `cars_category_id` int NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `booking_transfer_rates`
--

INSERT INTO `booking_transfer_rates` (`id`, `rate_adult`, `rate_child`, `rate_infant`, `rate_private`, `booking_transfer_id`, `cars_category_id`, `created_at`, `updated_at`) VALUES
(2502, 0.00, 0.00, 0.00, 0.00, 1, 0, '2024-12-19 02:34:12', '2024-12-19 02:34:12'),
(2503, 0.00, 0.00, 0.00, 0.00, 2, 0, '2024-12-19 02:51:26', '2024-12-19 02:51:26'),
(2504, 0.00, 0.00, 0.00, 0.00, 3, 0, '2024-12-19 02:52:46', '2024-12-19 02:52:46'),
(2505, 0.00, 0.00, 0.00, 0.00, 4, 0, '2024-12-19 02:54:52', '2024-12-19 02:54:52'),
(2506, 0.00, 0.00, 0.00, 0.00, 5, 0, '2024-12-20 05:23:58', '2024-12-20 05:23:58'),
(2507, 0.00, 0.00, 0.00, 0.00, 6, 0, '2024-12-20 05:25:17', '2024-12-20 05:25:17');

-- --------------------------------------------------------

--
-- Table structure for table `booking_type`
--

CREATE TABLE `booking_type` (
  `id` int NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `booking_type`
--

INSERT INTO `booking_type` (`id`, `name`, `created_at`) VALUES
(1, 'Join', '2021-12-08 08:57:15'),
(2, 'Private', '2021-12-08 08:57:15');

-- --------------------------------------------------------

--
-- Table structure for table `branches`
--

CREATE TABLE `branches` (
  `id` int NOT NULL,
  `name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_approved` int NOT NULL,
  `is_deleted` int NOT NULL,
  `updated_at` datetime NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `captains`
--

CREATE TABLE `captains` (
  `id` int NOT NULL,
  `id_card` varchar(13) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telephone` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `sex` int NOT NULL,
  `birth_date` date NOT NULL,
  `pic` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_approved` int NOT NULL DEFAULT '0',
  `is_deleted` int NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `captains`
--

INSERT INTO `captains` (`id`, `id_card`, `name`, `telephone`, `address`, `sex`, `birth_date`, `pic`, `is_approved`, `is_deleted`, `created_at`, `updated_at`) VALUES
(1, '', 'จุก', '096-5351529 ', '', 1, '0000-00-00', '', 1, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, '', 'โอ๊ต', '092-5938351 ', '', 1, '0000-00-00', '', 1, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, '', 'บีม', '084-8980855 ', '', 1, '0000-00-00', '', 1, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, '', 'แดง', '080-2388707 ', '', 1, '0000-00-00', '', 1, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, '', 'โค', '094-9376648 ', '', 1, '0000-00-00', '', 1, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `cars`
--

CREATE TABLE `cars` (
  `id` int NOT NULL,
  `car_registration` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `capacity` int NOT NULL DEFAULT '0',
  `cars_category_id` int NOT NULL DEFAULT '0',
  `is_approved` int NOT NULL DEFAULT '0',
  `is_deleted` int NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cars_category`
--

CREATE TABLE `cars_category` (
  `id` int NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `capacity` int NOT NULL,
  `pic` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `is_approved` int NOT NULL,
  `is_deleted` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cars_category`
--

INSERT INTO `cars_category` (`id`, `name`, `slug`, `capacity`, `pic`, `created_at`, `updated_at`, `is_approved`, `is_deleted`) VALUES
(1, 'Van', 'Van', 0, '', '2023-02-23 01:57:20', '2023-02-23 01:57:20', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `cars_type`
--

CREATE TABLE `cars_type` (
  `id` int NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `car_category_id` int NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `is_approved` int NOT NULL,
  `is_deleted` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `category_items`
--

CREATE TABLE `category_items` (
  `id` int NOT NULL,
  `is_approved` int NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `is_deleted` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category_items`
--

INSERT INTO `category_items` (`id`, `is_approved`, `name`, `created_at`, `is_deleted`) VALUES
(1, 1, 'Day Trip', '2021-11-16 03:45:00', 0),
(2, 1, 'City Tour', '2021-11-16 03:45:12', 0),
(3, 1, 'Island Tour', '2021-11-16 03:46:43', 0),
(5, 1, 'Activity', '2023-01-04 02:50:07', 0),
(6, 1, 'HALF DAY', '2023-01-04 03:35:35', 0);

-- --------------------------------------------------------

--
-- Table structure for table `check_in`
--

CREATE TABLE `check_in` (
  `id` int NOT NULL,
  `booking_id` int NOT NULL,
  `type` int NOT NULL COMMENT '1 : Job 2 : guide',
  `login_id` int NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `colors`
--

CREATE TABLE `colors` (
  `id` int NOT NULL,
  `name` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_th` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hex_code` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL,
  `text_color` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_approved` int NOT NULL DEFAULT '1',
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `colors`
--

INSERT INTO `colors` (`id`, `name`, `name_th`, `hex_code`, `text_color`, `is_approved`, `created_at`) VALUES
(1, 'Orange', 'สีส้ม', '#FF9F43', '', 1, '2023-10-18 08:57:12'),
(2, 'Red', 'สีแดง', '#EA5455', '', 1, '2023-10-18 08:57:12'),
(3, 'Pink', 'สีชมพู', '#FF69B4', '', 1, '2023-10-18 08:57:12'),
(4, 'Green', 'สีเขียว', '#c4df9a', '', 1, '2023-10-18 08:57:12'),
(5, 'Blue', 'สีน้ำเงิน', '#0019F0', '#FFFFFF', 1, '2023-10-18 08:57:12'),
(6, 'Brown', 'สีน้ำตาล', '#8B4513', '', 1, '2023-10-18 08:57:12'),
(7, 'Yellow', 'สีเหลือง', '#FFFF00', '', 1, '2023-10-18 08:57:12'),
(8, 'White', 'สีขาว', '#FFFFFF', '', 1, '2023-10-18 08:57:12'),
(9, 'Sky', 'สีฟ้า', '#00FFFF', '', 1, '2023-10-18 08:57:12'),
(10, 'Grey', 'สีเทา', '#818181', '', 1, '2023-10-18 08:57:12'),
(11, 'Black', 'สีดำ', '#000000', '#FFFFFF', 1, '2023-10-18 08:57:12'),
(12, 'Purple', 'สีม่วง', '#6610F2', '#FFFFFF', 1, '2023-10-18 08:57:12');

-- --------------------------------------------------------

--
-- Table structure for table `companies`
--

CREATE TABLE `companies` (
  `id` int NOT NULL,
  `tat_license` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telephone` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_person` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_type_id` int NOT NULL DEFAULT '0',
  `sale_id` int NOT NULL COMMENT 'TB users',
  `is_approved` int NOT NULL DEFAULT '0',
  `is_deleted` int NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `companies`
--

INSERT INTO `companies` (`id`, `tat_license`, `name`, `email`, `telephone`, `address`, `contact_person`, `note`, `logo`, `company_type_id`, `sale_id`, `is_approved`, `is_deleted`, `created_at`, `updated_at`) VALUES
(1, '', 'Blu Pine', '', '', '', '', '', '', 2, 0, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(2, '', 'Salika Tour', '', '', '', '', 'ราคารวมชาร์จโซน 200/ท่าน', '', 2, 0, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(3, '', 'Shunli Hotel', '', '', '', '', '', '', 2, 0, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(4, '', 'Front Travel', '', '', '', '', '', '', 2, 0, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(5, '', 'Kamala Peanut', '', '', '', '', 'ราคารวมค่าชาร์จรถ 200 บาท', '', 2, 0, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(6, '', 'Katekwan Travel&Tour', '', '', '', '', '', '', 2, 0, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(7, '', 'Proud Travel', '', '', '', '', '', '', 2, 0, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(8, '', 'Tuana Casa Del Sol', '', '', '', '', '', '', 2, 0, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(9, '', 'On On Hotel', '', '', '', '', '税单', '', 2, 0, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(10, '', 'Panwaburi Beachfront', '', '', '', '', 'ราคารวมรถ', '', 2, 0, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(11, '', 'Ramita Tour & Travel', '', '', '', '', '', '', 2, 0, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(12, '', 'Delima Travel & Tour', '', '', '', '', 'ราคารวมชาร์จค่ารถ', '', 2, 0, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(13, '', 'Seabed Grand Hotel', '', '', '', '', '', '', 2, 0, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(14, '', 'The One', '', '', '', '', 'กลุ่ม เดอะวัน', '', 2, 0, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(15, '', 'Blue Palm Kata', '', '', '', '', '', '', 2, 0, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(16, '', 'Buddy Book', '', '', '', '', '', '', 2, 0, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(17, '', 'Kho-Ko Travel', '', '', '', '', '', '', 2, 0, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(18, '', 'Ritsurin Boutique Hotel', '', '', '', '', '', '', 2, 0, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(19, '', 'The Senses Tour', '', '', '', '', '', '', 2, 0, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(20, '', 'Happy Tour', '', '', '', '', 'โอนก่อนเดินทาง ราคารวมรถ', '', 2, 0, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(21, '', 'PR&T MANAGEMENT CO.,LTD', '', '', 'บริษัท พีอาร์แอนด์ที เมเนจเม้นท์ จำกัด (สำนักงานใหญ่) 79 ถนน ห้าสิบปี ต.ป่าตอง อ.กะทู้ จ.ภูเก็ต\n', '', 'ชื่อเก่า Pisona Tour', '', 2, 0, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(22, '', 'PPS TOUR & TRAVEL', '', 'Licence No. 33/09999	', '49 Katanoi Rd ； Karon ，Muang，Phuket  Tel: 064-6199680                                                                                                ', '', 'kata-karon\n\nAgain  VIP', '', 2, 0, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(23, '', ' KANOK TRAVEL TOUR 2', '', 'TAT: Licence  NO.33/1269  WhatsApp：+66 897241377', '20 Kata Road，Karon ，Muang Phuket 83100', '', '', '', 2, 0, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(24, '', 'PHUKET MY FRIEND TOUR', '', '', '564 Patak Road, Karon Beach ，Phuket 83130', '', '', '', 2, 0, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(25, '', 'BENA  TOUR & TRAVEL  (Branch 2 )', '', '', '102/1 Kata Road  Karon Muang Phuket 84100 NO.33/10113', '', '', '', 2, 0, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(26, '', 'BENA  TOUR & TRAVEL  ', '', '', '11/1 Kata Road  Karon Muang Phuket 84100 NO.33/10113', '', '', '', 2, 0, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(27, '', 'THE FRUTTA BOUTIQUE', '', '', '86/31-33  Par Baramee Rd; Patong ,Kathu ,Phuket  83150 Thailand', '', '', '', 2, 0, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(28, '', 'TOPTRIP PHUKET TRAVEL', '', 'Tel：+66 99 479 5486                ', 'ที่อยู่ 70  ถ.กะรน   ค.กะรน   อ.เมือง   จ.ภูเก็ต   83130											', '', '', '', 2, 0, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(29, '', 'Phuket Arnolt Travel & Tour', '', '', '29 PATAK Rd; OPP.PHUKET ORCHID RESORT KARON BEACH PHUKET THAILAND  83100', '', '', '', 2, 0, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(30, '', 'DDK Travel', '', 'Tel : 063-4167920  ， 080-8896545      ', '240  T.Karon  Muang  Phuket 83100', '', '', '', 2, 0, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(31, '', 'Karon Corner Travel', '', 'Tel :088-8983623   /  093-6768310', '194/2 T.karon muang phuket 83100', '', '', '', 2, 0, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(32, '', 'Thongkum Travel', '', 'Tel: 076-294187, 081-0909072, 096-2598939', '205/1 Rat-U-Thit 200 Pee Rd;Patong Beach ，Kathu Phuket 83150 ', '', 'Patong\n\nAgain  VIP', '', 2, 0, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(33, '', 'Phuket Attraction Tours', '', 'Mobile: +66 94 591 9524', '20 Prachanukhroh Road , T .Patong ,A .Kathu , Phuket  83150												', '', '', '', 2, 0, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(34, '', 'Sea Pearl Andaman', '', '-', '188/2 Taweewong rd;Patong Beach ,Kathu，Phuket 83150                ', '', '', '', 2, 0, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(35, '', 'Orathai Travel', '', '', '186/15 Taweewong  Rd；Patong Beach ，Kathu Phuket 83150', '', '', '', 2, 0, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(36, '', 'Tanyarat Travel', '', '', '186/15 Taweewong  Rd；Patong Beach ，Kathu Phuket 83150', '', '', '', 2, 0, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(37, '', 'Me-Dee Travel', '', '', '', '', '', '', 2, 0, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(38, '', 'Han Hong Tour', '', 'Tel:081-535 9263 ,095-396 9073', '239/1 Rat-U-Tid  200 Pee Road ,T.Patong ,A.Kathu ,Phuket 83150 ', '', '', '', 2, 0, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(39, '', 'AS TOUR & TRAVEL (Branch 2 )', '', '66825495156', '188/2 Patong Kathu Phuket 83150', '', '', '', 2, 0, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(40, '', 'Phuket Pimpat Travel ', '', 'Mobile：089-8722796 WhatsApp：+66 898722796', '7 Sawasdirak Rd；Patong Beach ，Phuket 83150												', '', '', '', 2, 0, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(41, '', 'Tara Andaman Group Co.,Ltd.', '', 'tel:+66 84 509 7813 ,+66 91 158 0073', '35/22 Rat-U-Thit 200 Pee Road ,Patong ,Kathu ,Phuket 83150', '', '', '', 2, 0, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(42, '', 'Zabir Tour & Travel', '', 'Tel: 083-8422        587        ', '135 Rat-U-Thit 200 Pee Rd; Patong ,Kathu Phuket 83150', '', '', '', 2, 0, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(43, '', 'Nancy tour', '', '-', '296 Prabaramee Road , Patong Beach Kathu Dstrict ,Phuket 83150 Thailand', '', '', '', 2, 0, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(44, '', 'Natty Sea Tour', '', '-', '159/1 Pangmuang Sai Kor Rd；Patong ，Kathu，Phuket 83150', '', '', '', 2, 0, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(45, '', 'Aya Tour & Travel', '', 'Tel:(+66)925 509 644', '77 Rat-U-Thid 200 Pee Road ,T.Patong ,A.Kathu ,Phuket 83150 Thailand', '', '', '', 2, 0, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(46, '', 'Power Rich Girls', '', 'Tel:097-6916961 ,064-2920119,093-6494197 ', 'Kata Road ，Karon Subdistrict ，Mueang Phuket District Phuket.                                                                                                ', '', '', '', 2, 0, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(47, '', 'Saidy Tour & Carrent ', '', 'โทร.081-1524665        ', '57 ถนนถลาง อำเภอเมือง จังวัดภูเก็ต 83000												', '', '', '', 2, 0, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(48, '', 'Phuket travel shop', '', '-', 'e', '', '', '', 2, 0, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(49, '', 'Arena Tour & Travel', '', 'Tel: 082-7830285,085-8871246 WhatsApp +6696790992 , +66944196679        ', '204/17 Rat - U - Thit 200 Pee Rd;Patong  Beach ,Kathu Phuket 83150												', '', '', '', 2, 0, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(50, '', 'Patong Wisdom Tour', '', '                                Tel: 66 94 6983751        ', '179 / 16 Sansabai  Room 19 , Sai Kor Rd; Patong Beack Kathu ,Phuket 83150 .Thailand												', '', '', '', 2, 0, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(51, '', 'Adis Phuket Tour', '', '-', '', '', '', '', 2, 0, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(52, '', 'Joe Phuket\n', '', '-', '-', '', '', '', 2, 0, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(53, '', 'Phuket Rainbow Tour', '', ' Tel：063-3849611', '227 / 9 ถนนราษฎร์อุทิศ 200 ปี ตำบลป่าตอง  อำเภอกะทู้ จังหวัดภูเก็ต 83150                                                                                                        ', '', '', '', 2, 0, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(54, '', '1 SK Tour & Travel', '', 'Mobile：084-879 9266 （own），099-357 4919（YAYA）', '237/5 Rat-u-Thit   200 Pee Rd；Patong Kathu ，Phuket 83150（OTOP Marke）', '', '', '', 2, 0, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(55, '', 'JAY TYF TRAVEL', '', 'Mobile :083-9241619', '23 / 1 Sawaddirak Patong Kathu Phuket 83150		', '', '', '', 2, 0, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(56, '', 'The Phuket Trip Tour（Sea Pearl ）', '', 'WhatsApp ：+66964086059	', '67 Prachanukro  Rd；Patong Beach ，Kathu ， Phuket 83150', '', '', '', 2, 0, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(57, '', 'Netrty Tour', '', 'Tel: 081-7193993', '237 / 4  Rat-U-Tid  200 Pee Rd; T. Patong , A.Kathu Phuket 83150', '', '', '', 2, 0, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(58, '', 'Passa  Tour', '', 'Tel:  062-0611222', '230 Rat-U-Thid 200 Pee Road ; Patong Beach , Kathu ,Phuket 83150 ', '', '', '', 2, 0, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(59, '', 'The Baycliff Patong', '', 'Tel：076-618168 ， 076- 618 163        ', '324 /102 Prabaramee Road，Patong Kathu Phuket 83150	', '', '', '', 2, 0, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(60, '', 'Wu tour and travel', '', '-', '-', '', '', '', 2, 0, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(61, '', 'Call Me Holiday\n（ห้างหุ้นส่วนจำกัด คอลมีแท็กซี่(ไทยแลนด์)）', '', 'Hotline : +66(0)99 414 6109, +66(0)95 195 5963                        ', '28/9 Moo 7 Nang Thong Beach , Khuk Khuk ,Takuapa ,Phang Nga 82190', '', '', '', 2, 0, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(62, '', 'Phuket Tripper Tour', '', 'Call & What App +66 945965516，+66 958161681 Mobile Phone：094-5965516,095-8161681                    ', '16 Kade Kwan Rd;T.Karon . A Muang Phuket 83100', '', '', '', 2, 0, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(63, '', 'The star @ Picha Travel', '', 'Tel ：081-6271492        ', '100/995 KATA ROAD; KARON MUANG PHUKET 8310', '', '', '', 2, 0, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(64, '', 'Sita Travel', '', '-', '-', '', '', '', 2, 0, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(65, '', 'I Am Andaman Tour', '', '-', '-', '', '', '', 2, 0, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(66, '', 'Bird Beach Blue Travel', '', 'Tel: 66 99 092 8746', '169 / 106 Phang-Muang  Sai  Kor  Rd, T. Patong , A .Kathu , Phuket  83150', '', '', '', 2, 0, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(67, '', 'Ridge travel', '', 'Tel: +66 991277053  WhatsApp :+66991277053                        ', '63 / 31 Viset Rd; Rawai Beach Maung Phuket  83130', '', '', '', 2, 0, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(68, '', 'Hathairat Travel', '', 'tel: +66(0)881791779 , +66(0)629682292                ', '99 Soi thay na, tambon karon ,mueang phuket 83100', '', '', '', 2, 0, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(69, '', 'Love Paradise Tour And Travel', '', '-', '-', '', '', '', 2, 0, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(70, '', 'Amara travel', '', '-', '-', '', '', '', 2, 0, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(71, '', 'Top trips tour', '', 'Tel：094-2498263 / 063 - 5198263', '55/751 MOO.2 Vichit  Sub-District,Muang Phuket District,Phuket Province 83000', '', 'Two Sisters Tour ( Centara villa ) ชื่อเก่า', '', 2, 0, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(72, '', 'Phuket WOW Tour', '', 'Tel: +66 086 476 5615 , +66 081 691 0625        ', '5/55 HaadPatong Rd；Patong  Kathu ，Phuket  83150												', '', '', '', 2, 0, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(73, '', 'The Winner Tour(Branch 2) ', '', 'TAT: Licence  NO.33/07488', '498 Patak  Rd; Karon Beach ，Muang, Phuket 83100 Tel: 086-2725187', '', '', '', 2, 0, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(74, '', 'The Winner Tour(Branch 1) ', '', 'TAT: Licence  NO.33/07486', '55 Rat U Thit Pee Rd；Patong ，Kathu 。Phuket  83150 Tel: 099-6265236', '', '', '', 2, 0, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(75, '', 'The Winner Tour', '', 'TAT: Licence No.33/07486', '88 Kata Rd., Karon Beach, Muang, Phuket 83100 Tel : 099-6265236', '', '', '', 2, 0, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(76, '', 'Nadiya Travel', '', '-', 'เลขที่ 211/141 ม.5  ต.ศรีสุนทร อ.ถลาง จ.ภูเก็ต 83110', '', 'vat', '', 2, 0, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(77, '', 'Phuket Ultimate ', '', '-', '63/202 หมู่ที่ 2 ตำบลเกาะแก้ว อำเภอเมืองภูเก็ต จังหวัดภูเก็ต 83000        ', '', 'vat', '', 2, 0, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(78, '', 'Let\'s Go Vacation Ltd; Part', '', 'Tel:076-604046 , 098-017 6277', '27/85  Moo 8,T,Chalong ,A.Mueang ,Phuket  83130', '', '', '', 2, 0, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(79, '', 'VIA Holiday Thailand', '', '-', '18 /110 Ruamjai Rd; Patong  Kathu , Phuket 83150 Thailand', '', '', '', 2, 0, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(80, '', 'The Baycliff Patong', '', '', '', '', '', '', 2, 0, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(81, '', 'Triple L Hotel', '', 'TEL:+66 (0) 76 345 105-8', '72/1 Hasib Pee Road , T . Patong . Kathu ,Phuket 83150', '', '', '', 2, 0, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(82, '', 'Phuket SK Karon Travel', '', 'TEL:+66  83-932-9193 ', '202/1 Karon  Rd；T . Karon  A. Muang , Phuket 83100', '', '', '', 2, 0, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(83, '', 'Nattawat Tour', '', 'Nattwat:094-9482987', '3/7 Sawasdirak  rd ; t . patong , a. kathu  phuket 83150', '', '', '', 2, 0, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(84, '', 'Nawarat Phuket Tour', '', 'Tel:094-5915898', '170 Thaweewong  Road ,Patong Beach Phuket Thailand 83150', '', '', '', 2, 0, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(85, '', 'Hawana Carrent & Tour', '', '', '60 Soi Prabaramee 6,Prabaramee  Rd; T.Patong ,A .Kathu,Phuket 83150', '', '', '', 2, 0, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(86, '', 'Phuket  Diamond Sea Tour', '', 'Tel: 087-3918899 , 062-0393529', '184/34 Phangnuang Sai Kor  Rd; T.Patong ,A.Kathu 83150', '', '', '', 2, 0, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(87, '', ' Lilly The Best Travel', '', ' ', '274 Prabaramee Rd；Patong ， Kathu，Phuket 83150 Thailand', '', 'pink dolphin', '', 2, 0, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(88, '', 'S.S Travel & Tour', '', 'Tel: 087-3918899 , 062-0393529', '71/1 PATAK ROAD ,MOO 3 KARON BEACH ,PHUKET THAILAND ', '', 'วางบิล ทุกวันศุกร์นะคะ', '', 2, 0, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(89, '', 'Travel Phuket Groupies Tour', '', '', '35/39 Moo 5 Bangyai Rd; Wichit ,Muang , Phuket 8300', '', '', '', 2, 0, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(90, '', 'Abetter Travel & Tour', '', '', '110/185  Taweewong Rd；Patong Beach ，Kathu，Phuket 83150', '', '', '', 2, 0, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(91, '', 'Mr.Not Phuket Tour', '', '-', '192/21 Phuket Villa Patong ,Kathu ,Phuket', '', 'ออนไลน์', '', 2, 0, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(92, '', 'Ridge Travels', '', 'Tel: 099-1277053', '186 Karon Rd，Karon Beach ，Phuket 83100', '', '', '', 2, 0, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(93, '', 'Call Me Phuket Tour', '', 'Tel: 064-163-0662 , 082-432-2702', '74 Karon Rd，Karon，Muang Phuket ，Phuket 83000', '', '', '', 2, 0, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(94, '', 'Kata O.T.S Trave', '', '', '77 Katekwan Rd; Muang Phuket 83100', '', '', '', 2, 0, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(95, '', 'Matha Tour', '', '', '', '', '', '', 2, 0, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(96, '', 'O-TOP TOUR & TRAVEL  ( สาขา2 )', '', '', '36-38 Rat-U-Thit 200 Pee Rd., Patong, Kathu Phuket 83150', '', '', '', 2, 0, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(97, '', 'ABLE Travel & Tour', '', '', '102 Taweewong Rd；Patong Beach ,Kathu ，Phuket 83150 ', '', 'ABT1', '', 2, 0, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(98, '', 'Welcome Travel', '', '', '653 Patak Rd，Karon ，Muang ，Phuket ，83100 Thailand', '', '', '', 2, 0, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(99, '', 'BE EASY TRAVEL', '', '', ' ', '', '', '', 2, 0, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(100, '', 'MAHDAPNH', '', '', '24 Prachanukhro Road ，Patong ，Kathu ，Phuket 83150', '', '', '', 2, 0, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(101, '', 'PHUKET GET TRIP CO;LTD', '', '', '', '', 'Safar', '', 2, 0, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(102, '', 'Lily\'s Travel Agency', '', '', '182 / 4 Phangmuangsaikor  Road，Patong Beach ，Kathu ，Phuket 83150', '', '', '', 2, 0, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(103, '', 'Pink Dolphin Tour ', '', '', '152 Rat U-thit 200Pee.,Patong, Kathu , Phuket 83150 THAILAND ', '', '', '', 2, 0, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(104, '', 'GOOD & NICE TOUR TRAVEL', '', '', '', '', '', '', 2, 0, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(105, '', 'Let\'s Go Travel', '', '', '204/14 ถ.ราษฏร์อุทิศ 200 ปี ต. ป่าตอง อ.กะทู้  จ.ภูเก็ต 83150 ', '', '', '', 2, 0, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(106, '', 'CSN Tour &  Travel', '', '', '245 Khok Tanot Road ， T. Karon ,A.Muang，Phuket 83100 ', '', '', '', 2, 0, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(107, '', 'Phuket Amazing Trip Co.,Ltd.', '', '', '150 Khok-Ta-Nod  Rd；Karon，Muang，Phuket， Phuket 83000 Thanliand ', '', '', '', 2, 0, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(108, '', 'Phuket Sea Love Travel', '', '', '7  Kata Rd; Karon ,Muang Phuket ,Phuket Thailand 83100', '', '', '', 2, 0, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(109, '', 'PHUKET KING TRAVEL  CO;LTD', '', '', '99/3 Moo 1. Billion Plaza, T.Kathu , A.Kathu ,Phuket 8312', '', '', '', 2, 0, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(110, '', 'Hadram Phuket Thailand', '', '', '197/1 Phangmuang Sai Kor Rd., Patong,Kathu ,Phuket 83150', '', '', '', 2, 0, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(111, '', 'Bundaya Speed Boat', '', '', '77 ถ.ดิลกอุทิศ 2 ต.ตลาดใหญ่ อ.เมืองภูเก็ต จ.ภูเก็ต 83000 ', '', '', '', 2, 0, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(112, '', 'Ferncy Travel & Tour', '', '', '', '', '', '', 2, 0, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(113, '', 'Arriya Phuket Tour', '', '', '', '', '', '', 2, 0, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(114, '', 'Phuket Mook Andaman', '', '', '', '', '', '', 2, 0, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(115, '', 'Seven Orn Tour', '', 'Tel : 094-2543362', '234/1 Karon Rd;  T.Karon  Muang Phuket 83100    ', '', '', '', 2, 0, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(116, '', 'T&Y Travel Service', '', '', '', '', '', '', 2, 0, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(117, '', 'Panwa Golden Tour', '', '', '', '', '', '', 2, 0, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(118, '', 'Krittaya Marine Charter Tour', '', '', '', '', '', '', 2, 0, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(119, '', 'Leo Phuket', '', '', '', '', '', '', 2, 0, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(120, '', 'B&B', '', '', '', '', '', '', 2, 0, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(121, '', 'Areena Kamala Travel', '', '', '', '', '', '', 2, 0, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(122, '', 'Phuket 168 Travel', '', '', '', '', '', '', 2, 0, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(123, '', 'Boy\'s 1996 Travel & Tour', '', '', 'Katanoi Rd., Kata Muang Phuket 83100', '', 'วางบิลทุกวันศุกร์', '', 2, 0, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(124, '', 'Phuket All In One', '', '', '', '', '', '', 2, 0, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(125, '', 'Phuket Triple One', '', '', '', '', '', '', 2, 0, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(126, '', 'Tour Information', '', '', '', '', '', '', 2, 0, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(127, '', 'Yo Phuket', '', '', '', '', '', '', 2, 0, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(128, '', '109 Thailand', '', '', '', '', '', '', 2, 0, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(129, '', 'Poom Pui', '', '', '', '', '', '', 2, 0, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(130, '', 'P.N Travel', '', '', '', '', '', '', 2, 0, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(131, '', 'Sea Wesam Tour and Travel ', '', '', '', '', '', '', 2, 0, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(132, '', 'Srimuang Tour', '', '', '', '', 'Lunar Travel เปลี่ยนชื่อ', '', 2, 0, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(133, '', 'Let\'s Go Phuket', '', '', '', '', '', '', 2, 0, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(134, '', 'Hotel I Kon', '', '', '', '', '', '', 2, 0, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(135, '', 'Chong Ko Travel', '', '', '', '', '', '', 2, 0, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(136, '', 'Rak Elegant Hotel', '', '', '', '', '', '', 2, 0, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(137, '', 'Forty Winks Phuket', '', '', '', '', '', '', 2, 0, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(138, '', 'Palm Resort', '', '', '', '', '', '', 2, 0, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(139, '', 'Seeka Boutique', '', '', '', '', '', '', 2, 0, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(140, '', 'Siam Focus Travel', '', '', '', '', '', '', 2, 0, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(141, '', 'Aries Tour', '', '', '', '', '', '', 2, 0, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(142, '', 'Prustone', '', '', '', '', '', '', 2, 0, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(143, '', 'Tour Phuket', '', '', '', '', '', '', 2, 0, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(144, '', 'Phuket Master Tour ', '', '', '', '', '', '', 2, 0, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(145, '', 'We Will Travel', '', '', '', '', '', '', 2, 0, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(146, '', 'The Bridge Travel ', '', '', '', '', '', '', 2, 0, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(147, '', 'Black Pantera Hostel', '', '', '', '', '', '', 2, 0, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(148, '', 'Kamala Peanut Travel', '', '', '', '', '', '', 2, 0, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(149, '', 'Friend Tour', '', '', '', '', '', '', 2, 0, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(150, '', 'Palmview Resort', '', '', '', '', '', '', 2, 0, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(151, '', 'Phuket Guide Travel And Tour', '', '', '', '', 'โอนก่อนเดินทาง', '', 2, 0, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(152, '', 'Phuket Gevalin Business Group', '', '', '', '', '', '', 2, 0, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(153, '', 'Phunawa Phuket', '', '', '', '', '', '', 2, 0, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(154, '', 'Matha Tour', '', '', '', '', '', '', 2, 0, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(155, '', 'Team Holiday', '', '', '', '', '', '', 2, 0, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(156, '', 'CK TOUR', '', '', '', '', '', '', 2, 0, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(157, '', 'Thai - Riffic Tour Phuket', '', '', '', '', '', '', 2, 0, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(158, '', 'World Tour', '', '', '', '', '', '', 2, 0, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(159, '', 'Trust One Tour & Travel', '', '', '', '', '', '', 2, 0, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(160, '', 'BPT Tour', '', '', '', '', '', '', 2, 0, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(161, '', 'Fantasy Center Tour', '', '', '', '', '', '', 2, 0, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(162, '', 'Friday Phuket Tour And Travel ', '', '', '', '', '', '', 2, 0, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(163, '', 'Maimorn Resort', '', '', '', '', '', '', 2, 0, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(164, '', 'Anuchit Travel And Tour Patong', '', '', '', '', '', '', 2, 0, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(165, '', 'Sun Leisure', '', '', '', '', '', '', 2, 0, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(166, '', 'Phuket Tour 1', '', '', '', '', '', '', 2, 0, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(167, '', 'Caribbean Tour & Travel', '', '', '', '', '', '', 2, 0, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(168, '', 'Happy Tour', '', '', '', '', '', '', 2, 0, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(169, '', 'Phuket Expert Travel & Tour', '', '', '', '', '', '', 2, 0, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(170, '', 'Good Morning Tour', '', '', '', '', '', '', 2, 0, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(171, '', 'Mango Smile Travel', '', '', '26 ถ.ถลาง  ต.ตลาดใหญ่  อ.เมือง  จ.ภูเก็ต  83000', '', '', '', 2, 0, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(172, '', 'Hassmah Phuket Travel', '', '', '26/5 Rat U thit 200 Pee Rd; Patong Beach,Kathu,Phuket  83150 Thailand', '', '', '', 2, 0, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(173, '', 'Nueng Andaman Tour', '', '', '', '', '', '', 2, 0, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(174, '', 'Mee Saw Tour', '', '', '', '', '', '', 2, 0, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(175, '', 'Andaman Sea Tour', '', '', '', '', '', '', 2, 0, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(176, '', 'Travel Zone', '', '', '', '', '', '', 2, 0, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(177, '', 'PCX Tour And Travel', '', '', '', '', '', '', 2, 0, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(178, '', 'Patong No.1', '', '', '', '', '', '', 2, 0, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(179, '', 'Amara Palm Tour', '', '', '', '', '', '', 2, 0, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(180, '', 'Phuket New Star Travel', '', '', '', '', '', '', 2, 0, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(181, '', 'Phuket Malee Tour And Travel', '', '', '', '', '', '', 2, 0, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(182, '', 'Going Holiday Travel', '', '', '', '', '', '', 2, 0, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(183, '', 'Phuket Chill Trips', '', '', '', '', '', '', 2, 0, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(184, '', 'Easy Travel', '', '', '', '', '', '', 2, 0, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(185, '', 'Heyday Travel', '', '', '', '', '', '', 2, 0, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(186, '', 'LAE LAY TRAVE', '', '', '', '', 'L (ราคาเนตรวมชาร์จโซน)', '', 2, 0, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(187, '', 'At Min Tour', '', '', '', '', '', '', 2, 0, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(188, '', 'Aspery Travel & Tour', '', '', '', '', '', '', 2, 0, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(189, '', 'OHM PHUKET TRAVEL', '', '', '84 ผังเมืองสายก. กะทู้ ป่าตอง ภูเก็ต 83150', '', '', '', 2, 0, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(190, '', 'Charus Carrent & Tour', '', '', '375/1 Patak Road Karon Muang Phuket 83100', '', '', '', 2, 0, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(191, '', 'U Lucky Tour', '', '', '', '', '', '', 2, 0, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(192, '', 'Phuket  Diamond Sea Tour', '', '', '', '', '', '', 2, 0, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(193, '', 'Palmyra Tour', '', '', '', '', '', '', 2, 0, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(194, '', 'Sunflower Phuket Travel', '', '', '', '', '', '', 2, 0, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(195, '', 'Million Smile Tour And Travel', '', '', '', '', '', '', 2, 0, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(196, '', 'Tansamai Tour & Travel', '', '', '', '', '', '', 2, 0, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(197, '', 'Enjoy Infinity Tour', '', '', '', '', '', '', 2, 0, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(198, '', 'MOM C PHUKET Co.Ltd', '', '', '', '', '', '', 2, 0, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(199, '', 'SHAKIRA TOUR', '', '', '', '', '', '', 2, 0, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(200, '', 'Ok Chic Phuket Travel and Tour', '', '', '', '', '', '', 2, 0, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(201, '', 'Phuket Cool Trip & Tour', '', '', '', '', '', '', 2, 0, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(202, '', 'Passion', '', '', '', '', '', '', 2, 0, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(203, '', 'Patong KL Tour', '', '', '', '', '', '', 2, 0, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(204, '', '2 The Beach Tour & Travel', '', '', '', '', '', '', 2, 0, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(205, '', 'Good Day Phuket Travel', '', '', '', '', '', '', 2, 0, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(206, '', 'Frontier Tour & Travel Service', '', '', '', '', '', '', 2, 0, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(207, '', 'Phuket Triple One Tour', '', '', '', '', '', '', 2, 0, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(208, '', 'Patong Cheery Travel & Tour', '', '', '', '', '', '', 2, 0, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(209, '', 'Setfree Travel', '', '', '', '', '', '', 2, 0, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(210, '', 'Rin Travel & Tour', '', '', '', '', '', '', 2, 0, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(211, '', 'Pray Dive Tour', '', '', '', '', '', '', 2, 0, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(212, '', 'K-Cha Travel & Tour', '', '', '', '', '', '', 2, 0, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(213, '', 'Phuket Perfect Tour', '', '', '', '', '', '', 2, 0, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(214, '', 'Phuket Russo', '', '', '', '', '', '', 2, 0, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(215, '', '7 All Planet', '', '', '', '', '', '', 2, 0, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(216, '', 'Best Choice Tour', '', '', '', '', '', '', 2, 0, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(217, '', 'PPKK Tour Service', '', '', '', '', '', '', 2, 0, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(218, '', 'Pacific Club Travel', '', '', '', '', '', '', 2, 0, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(219, '', 'One Piece Tour And Travel', '', '', '', '', 'กลุ่ม PCX', '', 2, 0, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(220, '', 'JJ Inn', '', '', '', '', '', '', 2, 0, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(221, '', 'Danny & Sun Phuket Tour', '', '', '', '', '', '', 2, 0, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(222, '', 'Phuket Island Tour', '', '', '', '', '', '', 2, 0, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(223, '', 'P.K. TIP TOUR', '', '', '', '', '', '', 2, 0, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(224, '', 'Sea Smile Tour', '', '', '', '', '', '', 2, 0, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(225, '', 'KINGKAEW TOUR & TRAVEL', '', '', '', '', '', '', 2, 0, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(226, '', 'Srimuang Tour & Travel', '', '', '', '', 'กลุ่มเก่า Lunar Tour', '', 2, 0, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(227, '', 'The Blue Hotel', '', '', '', '', '', '', 2, 0, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(228, '', 'My Skazka Co.,LTD', '', '', '', '', '', '', 2, 0, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(229, '', 'Hamzee De Voyage', '', '', '', '', 'กลุ่ม BPT', '', 2, 0, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(230, '', 'Fairey Service', '', '', '', '', '', '', 2, 0, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(231, '', 'Phuket Goodmorning Tour', '', '', '', '', '', '', 2, 0, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(232, '', 'Phuket Rainbow Tour & Travel', '', '', '', '', '', '', 2, 0, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(233, '', 'Russo Turisto Partnership Ltd', '', '', '', '', '', '', 2, 0, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(234, '', 'Petch Rung Rueng Tour & Travel', '', '', '', '', '', '', 2, 0, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(235, '', 'Timmy Timmy Tour', '', '', '', '', '', '', 2, 0, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(236, '', 'Aiyara Andaman Journey', '', '', '', '', '', '', 2, 0, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(237, '', 'Napapon Journey', '', '', '', '', 'เดิมคือกลุ่ม Aiyara Andaman Journey', '', 2, 0, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(238, '', 'UN', '', '', '', '', '', '', 2, 0, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(239, '', '1SK Tour & Travel', '', '', '', '', '', '', 2, 0, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(240, '', 'Phuket N & N Travel', '', '', '', '', '', '', 2, 0, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(241, '', 'Wealthy Tour Information', '', '', '', '', '', '', 2, 0, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(242, '', 'Saitarn Tour & Travel @ The Bird Cage', '', '', '', '', '', '', 2, 0, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(243, '', 'Natee Andaman Travel', '', '', '', '', '', '', 2, 0, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(244, '', 'CAT TOUR', '', '', '', '', '', '', 2, 0, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(245, '', 'Best Phuket Island Tour', '', '', '', '', '', '', 2, 0, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(246, '', 'Safar Tour & Travel', '', '', '', '', '', '', 2, 0, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(247, '', 'Phuket Athena Tour', '', '', '', '', '**กลุ่ม Frontier Tour & Travel Service', '', 2, 0, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(248, '', 'Lyla Travel', '', '', '', '', '', '', 2, 0, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(249, '', 'Andaman Deena', '', '', '', '', '', '', 2, 0, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(250, '', 'Lilly The Beat Travel', '', '', '', '', '', '', 2, 0, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(251, '', 'Amazing Phuket Travel', '', '', '', '', '', '', 2, 0, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(252, '', 'Paris Tour Information', '', '', '', '', '', '', 2, 0, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(253, '', 'Andamity Tour', '', '', '', '', '', '', 2, 0, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(254, '', 'Phuket Together Tour', '', '', '', '', '', '', 2, 0, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(255, '', 'Phuker Cool Trip & Tour', '', '', '', '', '', '', 2, 0, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(256, '', 'Fan & Fram Travel', '', '', '', '', '', '', 2, 0, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(257, '', 'Floraville', '', '', '', '', '', '', 2, 0, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(258, '', 'New Pearl Travel & Tour', '', '', '', '', '', '', 2, 0, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(259, '', 'Muna Lisa Happy Tour', '', '', '', '', '', '', 2, 0, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(260, '', 'Phuket Sanah Tour & Travel', '', '', '', '', '', '', 2, 0, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(261, '', 'Garuda Tour', '', '', '', '', '', '', 2, 0, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(262, '', 'Guru Shop And Travel', '', '', '', '', '', '', 2, 0, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(263, '', 'USN Tour & Travel', '', '', '', '', 'เจ้าเดียวกัน UN Tour & Travel', '', 2, 0, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(264, '', 'S&P Karon Travel', '', '', '', '', '', '', 2, 0, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(265, '', 'Phuket Diamond Sea Tour', '', '', '', '', '', '', 2, 0, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(266, '', 'Arisa Tour & Travel', '', '', '', '', '', '', 2, 0, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(267, '', 'Colorful Phuket Trave & Tour', '', '', '', '', '', '', 2, 0, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(268, '', 'Thienma Co.,Ltd. ', '', 'Tel: 085-7210470 Pim,  065-6642526', 'Phuket Villa Chaofa2  69/194  Moo 2 T. Vichit  A. Muang Phuket 83000', '', '', '', 2, 0, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(269, '', 'HEATWAVE HOLIDAY', '', 'โทร 076-510138  แฟ็ก 076-510228', '23/168  หมู่บ้านพนาสนธิ์ ซิตี้  หมู่ที่ 2  ตำบลวิชิต อำเภอเมืองภูเก็ต  จังหวัดภูเก็ต  83000', '', '', '', 2, 0, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(270, '', 'Phuket Four Seasons Tour Part.,Ltd', '', '-', '32/7 M.6 T.Cherngtalay A.Thalang Phuket 83110', '', '', '', 2, 0, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(271, '', 'A Liu ', '', '-', '-', '', '', '', 2, 0, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(272, '', 'Weir Holiday Thailand Co ；Ltd.', '', '', '-', '', '', '', 2, 0, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(273, '', 'CNR TRAVEL', '', 'Tel.076-254-143,076-254-144  Fax：076-254-145                                         ', '75/41-43 Thepkrasattri Road，T.Rassada，A.Muang,Phuket                                                                                                        ', '', '', '', 2, 0, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(274, '', 'Phangen Skyways', '', 'Tel: 081-4151768 , 0815351843', '15/16 Montri Rd；Talat Yai,Muang,Phuket 8300', '', '', '', 2, 0, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(275, '', 'Ever Bright Holiday', '', '', ' 388/40, Ramkhamhaeng 53, Phlap Phla Wang Thonglang, Bangkok 10310', '', '【SML PD】', '', 2, 0, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(276, '', 'TAI ZHU ', '', '', '', '', '', '', 2, 0, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(277, '', 'Sea Sky Travel', '', '', '', '', '', '', 2, 0, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(278, '', 'Phuket Royal Southern Sea Co；LTD', '', '', '3/37 SAWADIRAK RD;PATONG ,KATHU,PHUKET 83150 THAILAND', '', '', '', 2, 0, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(279, '', 'Happy Time', '', '', '', '', '', '', 2, 0, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(280, '', 'SAWADEE THAI TOUR CO.,LTD ', '', '', ' 9/138，Phuket Thani 2, Talat Nuea  Mueang Phuket       													', '', '', '', 2, 0, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(281, '', 'Angel Capital', '', '', '', '', '', '', 2, 0, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(282, '', '武汉曼巴普 WU HAN MAN BA PU', '', '', '', '', '娜娜 nana', '', 2, 0, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(283, '', 'Ming Yang Internatinal ', '', '', '', '', '', '', 2, 0, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(284, '', 'Rawai T & P Travel', '', '', '', '', '', '', 2, 0, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(285, '', 'Phuket Adviser Travel', '', '', '', '', '', '', 2, 0, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(286, '', 'Ai Jia You', '', '', '', '', '', '', 2, 0, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(287, '', 'Travel E Co., Ltd.', '', '', '', '', '', '', 2, 0, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(288, '', 'The Mango Tree', '', '', '', '', '', '', 2, 0, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(289, '', 'FIGO TRAVEL', '', '', '', '', '', '', 2, 0, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(290, '', 'Lanta Future', '', '', '', '', '', '', 2, 0, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(291, '', 'Moei Hua Moei Tai', '', '', '', '', '', '', 2, 0, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(292, '', 'TJ Travel', '', '', '', '', '', '', 2, 0, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(293, '', 'Wannen Travel', '', '', '', '', '', '', 2, 0, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(294, '', 'Pet Jarean', '', '', '', '', '', '', 2, 0, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(295, '', 'Uni Phuket', '', '', '', '', '', '', 2, 0, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(296, '', 'IMPRESSION SIAM', '', '', '', '', '', '', 2, 0, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(297, '', 'I.Blueheart', '', '', '', '', '', '', 2, 0, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(298, '', 'Salam Tour & Travel Phuket', '', '', '', '', '', '', 2, 0, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(299, '', 'Anywhere Travel', '', '', '', '', '', '', 2, 0, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(300, '', 'Tai Joel Tian Travel', '', '', '', '', '', '', 2, 0, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(301, '', 'Sevenday DS Tower 5B', '', 'Tel:0806085606, 0660297941', '78 หมู่ 2 ตำบล เกาะแก้ว อำเภอเมืองภูเก็ต ภูเก็ต 83000', '', '', '', 2, 0, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(302, '', 'Imtinan Tour & Travel', '', 'Tel:+66 960590363 / +66 655520960', '7 Moo5. T Kokkaew A .Muang Ch. Phuket  83000', '', '', '', 2, 0, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(303, '', 'Sweetie', '', 'บอร์โทร:0802505158', '324 / 74  ถนน พระบารมี ตบ ป่าตอง อำเภอ กะทู้  จังหวัดภูเก็ต 83150        ', '', '', '', 2, 0, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(304, '', 'One Lee Group Co;LTD', '', 'Tel: 076 528686  ', '23/29 Moo 2, Vichit , Muang ,Phuket 83000 Thailand', '', '', '', 2, 0, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(305, '', 'Enjoy Tour & Tracel', '', 'Tel:+66 92 4454494 ', '204 / 18  Rat-U-Thit 200 Pee Rd;Patong Kathu ,Phuket 83150', '', '', '', 2, 0, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(306, '', 'Dream D Travel  ', '', '', '', '', '', '', 2, 0, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(307, '', 'Classic Express', '', '', '', '', '', '', 2, 0, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(308, '', 'Patong No1', '', '', '', '', '', '', 2, 0, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(309, '', 'Seed Tour', '', '', '', '', '', '', 2, 0, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(310, '', 'Meet Tour', '', '', '', '', '', '', 2, 0, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(311, '', 'Have A Nice Day', '', '', '', '', '', '', 2, 0, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(312, '', 'Phuket Shanti Travel', '', '', '', '', '', '', 2, 0, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(313, '', 'Blue rich Tour', '', '', '', '', '', '', 2, 0, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(314, '', 'Phuket Dream', '', '', '', '', '', '', 2, 0, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(315, '', 'Nicky Sunbeam Tour', '', 'Tel：087-2675513 ，+66 872675513 Whats App        ', '3/8 Sawatdirak Rd；Patong Beach ，Kathu，Phuket  83150												', '', '', '', 2, 0, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(316, '', 'Thai Sen Lin Travel', '', '', '128/250 หมู่มี่ 5 ตำบลวัษฎา อำเภอเมืองภูเก็ต จังหวัดภูเก็ต 83000', '', '', '', 2, 0, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(317, '', 'Chicchic Travel', '', '', '90/155 หมู่ที่ 15 ต. บางแก้ว  อ.บางพลี   จ. สมุทรปราการ  10540', '', '', '', 2, 0, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(318, '', 'Happy Holiday', '', '', '', '', '', '', 2, 0, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(319, '', 'Singchok prima Phuket', '', '-', '-', '', '', '', 2, 0, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(320, '', 'Lior Phuket Agency', '', 'Tel:063-3847499 Rani WhatsApp :+6663-3847499                  ', '13/1 Rat-U-Thit  200 Pee Rd; T. Patong , Beach,Kathu Phuket 83150', '', '', '', 2, 0, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(321, '', 'Bang Bang Tour Co ；Ltd.', '', 'Tel: +66 9 1892 4556', '9/134 Moo 4,Chalong ,Muang Phuket 83130', '', '', '', 2, 0, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(322, '', 'Phuket Indy Travel', '', '', '', '', '', '', 2, 0, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(323, '', 'GOOD LUCK SERVICE', '', '', '', '', 'Vat ใน', '', 2, 0, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(324, '', 'Lang Hua Duo Duo', '', '', '', '', 'Vat ใน', '', 2, 0, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(325, '', 'TCF', '', '', '', '', 'Vat นอก', '', 2, 0, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02');

-- --------------------------------------------------------

--
-- Table structure for table `companies_type`
--

CREATE TABLE `companies_type` (
  `id` int NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `companies_type`
--

INSERT INTO `companies_type` (`id`, `name`) VALUES
(1, 'Supplier'),
(2, 'Agent'),
(3, 'Internet User');

-- --------------------------------------------------------

--
-- Table structure for table `company_rate`
--

CREATE TABLE `company_rate` (
  `id` int NOT NULL,
  `company_id` int NOT NULL DEFAULT '0',
  `product_period_id` int NOT NULL DEFAULT '0',
  `product_rate_id` int NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `company_rate`
--

INSERT INTO `company_rate` (`id`, `company_id`, `product_period_id`, `product_rate_id`, `created_at`) VALUES
(1, 1, 1, 1, '2024-12-18 14:52:57'),
(2, 1, 2, 2, '2024-12-18 14:52:57'),
(3, 1, 3, 3, '2024-12-18 14:52:57'),
(4, 1, 4, 4, '2024-12-18 14:52:57'),
(5, 1, 5, 5, '2024-12-18 14:52:57'),
(6, 1, 6, 6, '2024-12-18 14:52:57'),
(7, 1, 7, 7, '2024-12-18 14:52:57'),
(8, 1, 8, 8, '2024-12-18 14:52:57'),
(9, 2, 1, 9, '2024-12-18 14:52:57'),
(10, 2, 2, 10, '2024-12-18 14:52:57'),
(11, 2, 3, 11, '2024-12-18 14:52:57'),
(12, 2, 4, 12, '2024-12-18 14:52:57'),
(13, 2, 5, 13, '2024-12-18 14:52:57'),
(14, 2, 6, 14, '2024-12-18 14:52:57'),
(15, 2, 7, 15, '2024-12-18 14:52:57'),
(16, 2, 8, 16, '2024-12-18 14:52:57'),
(17, 3, 1, 17, '2024-12-18 14:52:57'),
(18, 3, 2, 18, '2024-12-18 14:52:57'),
(19, 3, 3, 19, '2024-12-18 14:52:57'),
(20, 3, 4, 20, '2024-12-18 14:52:57'),
(21, 3, 5, 21, '2024-12-18 14:52:57'),
(22, 3, 6, 22, '2024-12-18 14:52:57'),
(23, 3, 7, 23, '2024-12-18 14:52:57'),
(24, 3, 8, 24, '2024-12-18 14:52:57'),
(25, 4, 1, 25, '2024-12-18 14:52:57'),
(26, 4, 2, 26, '2024-12-18 14:52:57'),
(27, 4, 3, 27, '2024-12-18 14:52:57'),
(28, 4, 4, 28, '2024-12-18 14:52:57'),
(29, 4, 5, 29, '2024-12-18 14:52:57'),
(30, 4, 6, 30, '2024-12-18 14:52:57'),
(31, 4, 7, 31, '2024-12-18 14:52:57'),
(32, 4, 8, 32, '2024-12-18 14:52:57'),
(33, 5, 1, 33, '2024-12-18 14:52:57'),
(34, 5, 2, 34, '2024-12-18 14:52:57'),
(35, 5, 3, 35, '2024-12-18 14:52:57'),
(36, 5, 4, 36, '2024-12-18 14:52:57'),
(37, 5, 5, 37, '2024-12-18 14:52:57'),
(38, 5, 6, 38, '2024-12-18 14:52:57'),
(39, 5, 7, 39, '2024-12-18 14:52:57'),
(40, 5, 8, 40, '2024-12-18 14:52:57'),
(41, 6, 1, 41, '2024-12-18 14:52:57'),
(42, 6, 2, 42, '2024-12-18 14:52:57'),
(43, 6, 3, 43, '2024-12-18 14:52:57'),
(44, 6, 4, 44, '2024-12-18 14:52:57'),
(45, 6, 5, 45, '2024-12-18 14:52:57'),
(46, 6, 6, 46, '2024-12-18 14:52:57'),
(47, 6, 7, 47, '2024-12-18 14:52:57'),
(48, 6, 8, 48, '2024-12-18 14:52:57'),
(49, 7, 1, 49, '2024-12-18 14:52:57'),
(50, 7, 2, 50, '2024-12-18 14:52:57'),
(51, 7, 3, 51, '2024-12-18 14:52:57'),
(52, 7, 4, 52, '2024-12-18 14:52:57'),
(53, 7, 5, 53, '2024-12-18 14:52:57'),
(54, 7, 6, 54, '2024-12-18 14:52:57'),
(55, 7, 7, 55, '2024-12-18 14:52:57'),
(56, 7, 8, 56, '2024-12-18 14:52:57'),
(57, 8, 1, 57, '2024-12-18 14:52:57'),
(58, 8, 2, 58, '2024-12-18 14:52:57'),
(59, 8, 3, 59, '2024-12-18 14:52:57'),
(60, 8, 4, 60, '2024-12-18 14:52:57'),
(61, 8, 5, 61, '2024-12-18 14:52:57'),
(62, 8, 6, 62, '2024-12-18 14:52:57'),
(63, 8, 7, 63, '2024-12-18 14:52:57'),
(64, 8, 8, 64, '2024-12-18 14:52:57'),
(65, 9, 1, 65, '2024-12-18 14:52:57'),
(66, 9, 2, 66, '2024-12-18 14:52:57'),
(67, 9, 3, 67, '2024-12-18 14:52:57'),
(68, 9, 4, 68, '2024-12-18 14:52:57'),
(69, 9, 5, 69, '2024-12-18 14:52:57'),
(70, 9, 6, 70, '2024-12-18 14:52:57'),
(71, 9, 7, 71, '2024-12-18 14:52:57'),
(72, 9, 8, 72, '2024-12-18 14:52:57'),
(73, 10, 1, 73, '2024-12-18 14:52:57'),
(74, 10, 2, 74, '2024-12-18 14:52:57'),
(75, 10, 3, 75, '2024-12-18 14:52:57'),
(76, 10, 4, 76, '2024-12-18 14:52:57'),
(77, 10, 5, 77, '2024-12-18 14:52:57'),
(78, 10, 6, 78, '2024-12-18 14:52:57'),
(79, 10, 7, 79, '2024-12-18 14:52:57'),
(80, 10, 8, 80, '2024-12-18 14:52:57'),
(81, 11, 1, 81, '2024-12-18 14:52:57'),
(82, 11, 2, 82, '2024-12-18 14:52:57'),
(83, 11, 3, 83, '2024-12-18 14:52:57'),
(84, 11, 4, 84, '2024-12-18 14:52:57'),
(85, 11, 5, 85, '2024-12-18 14:52:57'),
(86, 11, 6, 86, '2024-12-18 14:52:57'),
(87, 11, 7, 87, '2024-12-18 14:52:57'),
(88, 11, 8, 88, '2024-12-18 14:52:57'),
(89, 12, 1, 89, '2024-12-18 14:52:57'),
(90, 12, 2, 90, '2024-12-18 14:52:57'),
(91, 12, 3, 91, '2024-12-18 14:52:57'),
(92, 12, 4, 92, '2024-12-18 14:52:57'),
(93, 12, 5, 93, '2024-12-18 14:52:57'),
(94, 12, 6, 94, '2024-12-18 14:52:57'),
(95, 12, 7, 95, '2024-12-18 14:52:57'),
(96, 12, 8, 96, '2024-12-18 14:52:57'),
(97, 13, 1, 97, '2024-12-18 14:52:57'),
(98, 13, 2, 98, '2024-12-18 14:52:57'),
(99, 13, 3, 99, '2024-12-18 14:52:57'),
(100, 13, 4, 100, '2024-12-18 14:52:57'),
(101, 13, 5, 101, '2024-12-18 14:52:57'),
(102, 13, 6, 102, '2024-12-18 14:52:57'),
(103, 13, 7, 103, '2024-12-18 14:52:57'),
(104, 13, 8, 104, '2024-12-18 14:52:57'),
(105, 14, 1, 105, '2024-12-18 14:52:57'),
(106, 14, 2, 106, '2024-12-18 14:52:57'),
(107, 14, 3, 107, '2024-12-18 14:52:57'),
(108, 14, 4, 108, '2024-12-18 14:52:57'),
(109, 14, 5, 109, '2024-12-18 14:52:57'),
(110, 14, 6, 110, '2024-12-18 14:52:57'),
(111, 14, 7, 111, '2024-12-18 14:52:57'),
(112, 14, 8, 112, '2024-12-18 14:52:57'),
(113, 15, 1, 113, '2024-12-18 14:52:57'),
(114, 15, 2, 114, '2024-12-18 14:52:57'),
(115, 15, 3, 115, '2024-12-18 14:52:57'),
(116, 15, 4, 116, '2024-12-18 14:52:57'),
(117, 15, 5, 117, '2024-12-18 14:52:57'),
(118, 15, 6, 118, '2024-12-18 14:52:57'),
(119, 15, 7, 119, '2024-12-18 14:52:57'),
(120, 15, 8, 120, '2024-12-18 14:52:57'),
(121, 16, 1, 121, '2024-12-18 14:52:57'),
(122, 16, 2, 122, '2024-12-18 14:52:57'),
(123, 16, 3, 123, '2024-12-18 14:52:57'),
(124, 16, 4, 124, '2024-12-18 14:52:57'),
(125, 16, 5, 125, '2024-12-18 14:52:57'),
(126, 16, 6, 126, '2024-12-18 14:52:57'),
(127, 16, 7, 127, '2024-12-18 14:52:57'),
(128, 16, 8, 128, '2024-12-18 14:52:57'),
(129, 17, 1, 129, '2024-12-18 14:52:57'),
(130, 17, 2, 130, '2024-12-18 14:52:57'),
(131, 17, 3, 131, '2024-12-18 14:52:57'),
(132, 17, 4, 132, '2024-12-18 14:52:57'),
(133, 17, 5, 133, '2024-12-18 14:52:57'),
(134, 17, 6, 134, '2024-12-18 14:52:57'),
(135, 17, 7, 135, '2024-12-18 14:52:57'),
(136, 17, 8, 136, '2024-12-18 14:52:57'),
(137, 18, 1, 137, '2024-12-18 14:52:57'),
(138, 18, 2, 138, '2024-12-18 14:52:57'),
(139, 18, 3, 139, '2024-12-18 14:52:57'),
(140, 18, 4, 140, '2024-12-18 14:52:57'),
(141, 18, 5, 141, '2024-12-18 14:52:57'),
(142, 18, 6, 142, '2024-12-18 14:52:57'),
(143, 18, 7, 143, '2024-12-18 14:52:57'),
(144, 18, 8, 144, '2024-12-18 14:52:57'),
(145, 19, 1, 145, '2024-12-18 14:52:57'),
(146, 19, 2, 146, '2024-12-18 14:52:57'),
(147, 19, 3, 147, '2024-12-18 14:52:57'),
(148, 19, 4, 148, '2024-12-18 14:52:57'),
(149, 19, 5, 149, '2024-12-18 14:52:57'),
(150, 19, 6, 150, '2024-12-18 14:52:57'),
(151, 19, 7, 151, '2024-12-18 14:52:57'),
(152, 19, 8, 152, '2024-12-18 14:52:57'),
(153, 20, 1, 153, '2024-12-18 14:52:57'),
(154, 20, 2, 154, '2024-12-18 14:52:57'),
(155, 20, 3, 155, '2024-12-18 14:52:57'),
(156, 20, 4, 156, '2024-12-18 14:52:57'),
(157, 20, 5, 157, '2024-12-18 14:52:57'),
(158, 20, 6, 158, '2024-12-18 14:52:57'),
(159, 20, 7, 159, '2024-12-18 14:52:57'),
(160, 20, 8, 160, '2024-12-18 14:52:57'),
(161, 21, 1, 161, '2024-12-18 14:52:57'),
(162, 21, 2, 162, '2024-12-18 14:52:57'),
(163, 21, 3, 163, '2024-12-18 14:52:57'),
(164, 21, 4, 164, '2024-12-18 14:52:57'),
(165, 21, 5, 165, '2024-12-18 14:52:57'),
(166, 21, 6, 166, '2024-12-18 14:52:57'),
(167, 21, 7, 167, '2024-12-18 14:52:57'),
(168, 21, 8, 168, '2024-12-18 14:52:57'),
(169, 22, 1, 169, '2024-12-18 14:52:57'),
(170, 22, 2, 170, '2024-12-18 14:52:57'),
(171, 22, 3, 171, '2024-12-18 14:52:57'),
(172, 22, 4, 172, '2024-12-18 14:52:57'),
(173, 22, 5, 173, '2024-12-18 14:52:57'),
(174, 22, 6, 174, '2024-12-18 14:52:57'),
(175, 22, 7, 175, '2024-12-18 14:52:57'),
(176, 22, 8, 176, '2024-12-18 14:52:57'),
(177, 23, 1, 177, '2024-12-18 14:52:57'),
(178, 23, 2, 178, '2024-12-18 14:52:57'),
(179, 23, 3, 179, '2024-12-18 14:52:57'),
(180, 23, 4, 180, '2024-12-18 14:52:57'),
(181, 23, 5, 181, '2024-12-18 14:52:57'),
(182, 23, 6, 182, '2024-12-18 14:52:57'),
(183, 23, 7, 183, '2024-12-18 14:52:57'),
(184, 23, 8, 184, '2024-12-18 14:52:57'),
(185, 24, 1, 185, '2024-12-18 14:52:57'),
(186, 24, 2, 186, '2024-12-18 14:52:57'),
(187, 24, 3, 187, '2024-12-18 14:52:57'),
(188, 24, 4, 188, '2024-12-18 14:52:57'),
(189, 24, 5, 189, '2024-12-18 14:52:57'),
(190, 24, 6, 190, '2024-12-18 14:52:57'),
(191, 24, 7, 191, '2024-12-18 14:52:57'),
(192, 24, 8, 192, '2024-12-18 14:52:57'),
(193, 25, 1, 193, '2024-12-18 14:52:57'),
(194, 25, 2, 194, '2024-12-18 14:52:57'),
(195, 25, 3, 195, '2024-12-18 14:52:57'),
(196, 25, 4, 196, '2024-12-18 14:52:57'),
(197, 25, 5, 197, '2024-12-18 14:52:57'),
(198, 25, 6, 198, '2024-12-18 14:52:57'),
(199, 25, 7, 199, '2024-12-18 14:52:57'),
(200, 25, 8, 200, '2024-12-18 14:52:57'),
(201, 26, 1, 201, '2024-12-18 14:52:57'),
(202, 26, 2, 202, '2024-12-18 14:52:57'),
(203, 26, 3, 203, '2024-12-18 14:52:57'),
(204, 26, 4, 204, '2024-12-18 14:52:57'),
(205, 26, 5, 205, '2024-12-18 14:52:57'),
(206, 26, 6, 206, '2024-12-18 14:52:57'),
(207, 26, 7, 207, '2024-12-18 14:52:57'),
(208, 26, 8, 208, '2024-12-18 14:52:57'),
(209, 27, 1, 209, '2024-12-18 14:52:57'),
(210, 27, 2, 210, '2024-12-18 14:52:57'),
(211, 27, 3, 211, '2024-12-18 14:52:57'),
(212, 27, 4, 212, '2024-12-18 14:52:57'),
(213, 27, 5, 213, '2024-12-18 14:52:57'),
(214, 27, 6, 214, '2024-12-18 14:52:57'),
(215, 27, 7, 215, '2024-12-18 14:52:57'),
(216, 27, 8, 216, '2024-12-18 14:52:57'),
(217, 28, 1, 217, '2024-12-18 14:52:57'),
(218, 28, 2, 218, '2024-12-18 14:52:57'),
(219, 28, 3, 219, '2024-12-18 14:52:57'),
(220, 28, 4, 220, '2024-12-18 14:52:57'),
(221, 28, 5, 221, '2024-12-18 14:52:57'),
(222, 28, 6, 222, '2024-12-18 14:52:57'),
(223, 28, 7, 223, '2024-12-18 14:52:57'),
(224, 28, 8, 224, '2024-12-18 14:52:57'),
(225, 29, 1, 225, '2024-12-18 14:52:57'),
(226, 29, 2, 226, '2024-12-18 14:52:57'),
(227, 29, 3, 227, '2024-12-18 14:52:57'),
(228, 29, 4, 228, '2024-12-18 14:52:57'),
(229, 29, 5, 229, '2024-12-18 14:52:57'),
(230, 29, 6, 230, '2024-12-18 14:52:57'),
(231, 29, 7, 231, '2024-12-18 14:52:57'),
(232, 29, 8, 232, '2024-12-18 14:52:57'),
(233, 30, 1, 233, '2024-12-18 14:52:57'),
(234, 30, 2, 234, '2024-12-18 14:52:57'),
(235, 30, 3, 235, '2024-12-18 14:52:57'),
(236, 30, 4, 236, '2024-12-18 14:52:57'),
(237, 30, 5, 237, '2024-12-18 14:52:57'),
(238, 30, 6, 238, '2024-12-18 14:52:57'),
(239, 30, 7, 239, '2024-12-18 14:52:57'),
(240, 30, 8, 240, '2024-12-18 14:52:57'),
(241, 31, 1, 241, '2024-12-18 14:52:57'),
(242, 31, 2, 242, '2024-12-18 14:52:57'),
(243, 31, 3, 243, '2024-12-18 14:52:57'),
(244, 31, 4, 244, '2024-12-18 14:52:57'),
(245, 31, 5, 245, '2024-12-18 14:52:57'),
(246, 31, 6, 246, '2024-12-18 14:52:57'),
(247, 31, 7, 247, '2024-12-18 14:52:57'),
(248, 31, 8, 248, '2024-12-18 14:52:57'),
(249, 32, 1, 249, '2024-12-18 14:52:57'),
(250, 32, 2, 250, '2024-12-18 14:52:57'),
(251, 32, 3, 251, '2024-12-18 14:52:57'),
(252, 32, 4, 252, '2024-12-18 14:52:57'),
(253, 32, 5, 253, '2024-12-18 14:52:57'),
(254, 32, 6, 254, '2024-12-18 14:52:57'),
(255, 32, 7, 255, '2024-12-18 14:52:57'),
(256, 32, 8, 256, '2024-12-18 14:52:57'),
(257, 33, 1, 257, '2024-12-18 14:52:57'),
(258, 33, 2, 258, '2024-12-18 14:52:57'),
(259, 33, 3, 259, '2024-12-18 14:52:57'),
(260, 33, 4, 260, '2024-12-18 14:52:57'),
(261, 33, 5, 261, '2024-12-18 14:52:57'),
(262, 33, 6, 262, '2024-12-18 14:52:57'),
(263, 33, 7, 263, '2024-12-18 14:52:57'),
(264, 33, 8, 264, '2024-12-18 14:52:57'),
(265, 34, 1, 265, '2024-12-18 14:52:57'),
(266, 34, 2, 266, '2024-12-18 14:52:57'),
(267, 34, 3, 267, '2024-12-18 14:52:57'),
(268, 34, 4, 268, '2024-12-18 14:52:57'),
(269, 34, 5, 269, '2024-12-18 14:52:57'),
(270, 34, 6, 270, '2024-12-18 14:52:57'),
(271, 34, 7, 271, '2024-12-18 14:52:57'),
(272, 34, 8, 272, '2024-12-18 14:52:57'),
(273, 35, 1, 273, '2024-12-18 14:52:57'),
(274, 35, 2, 274, '2024-12-18 14:52:57'),
(275, 35, 3, 275, '2024-12-18 14:52:57'),
(276, 35, 4, 276, '2024-12-18 14:52:57'),
(277, 35, 5, 277, '2024-12-18 14:52:57'),
(278, 35, 6, 278, '2024-12-18 14:52:57'),
(279, 35, 7, 279, '2024-12-18 14:52:57'),
(280, 35, 8, 280, '2024-12-18 14:52:57'),
(281, 36, 1, 281, '2024-12-18 14:52:57'),
(282, 36, 2, 282, '2024-12-18 14:52:57'),
(283, 36, 3, 283, '2024-12-18 14:52:57'),
(284, 36, 4, 284, '2024-12-18 14:52:57'),
(285, 36, 5, 285, '2024-12-18 14:52:57'),
(286, 36, 6, 286, '2024-12-18 14:52:57'),
(287, 36, 7, 287, '2024-12-18 14:52:57'),
(288, 36, 8, 288, '2024-12-18 14:52:57'),
(289, 37, 1, 289, '2024-12-18 14:52:57'),
(290, 37, 2, 290, '2024-12-18 14:52:57'),
(291, 37, 3, 291, '2024-12-18 14:52:57'),
(292, 37, 4, 292, '2024-12-18 14:52:57'),
(293, 37, 5, 293, '2024-12-18 14:52:57'),
(294, 37, 6, 294, '2024-12-18 14:52:57'),
(295, 37, 7, 295, '2024-12-18 14:52:57'),
(296, 37, 8, 296, '2024-12-18 14:52:57'),
(297, 38, 1, 297, '2024-12-18 14:52:57'),
(298, 38, 2, 298, '2024-12-18 14:52:57'),
(299, 38, 3, 299, '2024-12-18 14:52:57'),
(300, 38, 4, 300, '2024-12-18 14:52:57'),
(301, 38, 5, 301, '2024-12-18 14:52:57'),
(302, 38, 6, 302, '2024-12-18 14:52:57'),
(303, 38, 7, 303, '2024-12-18 14:52:57'),
(304, 38, 8, 304, '2024-12-18 14:52:57'),
(305, 39, 1, 305, '2024-12-18 14:52:57'),
(306, 39, 2, 306, '2024-12-18 14:52:57'),
(307, 39, 3, 307, '2024-12-18 14:52:57'),
(308, 39, 4, 308, '2024-12-18 14:52:57'),
(309, 39, 5, 309, '2024-12-18 14:52:57'),
(310, 39, 6, 310, '2024-12-18 14:52:57'),
(311, 39, 7, 311, '2024-12-18 14:52:57'),
(312, 39, 8, 312, '2024-12-18 14:52:57'),
(313, 40, 1, 313, '2024-12-18 14:52:57'),
(314, 40, 2, 314, '2024-12-18 14:52:57'),
(315, 40, 3, 315, '2024-12-18 14:52:57'),
(316, 40, 4, 316, '2024-12-18 14:52:57'),
(317, 40, 5, 317, '2024-12-18 14:52:57'),
(318, 40, 6, 318, '2024-12-18 14:52:57'),
(319, 40, 7, 319, '2024-12-18 14:52:57'),
(320, 40, 8, 320, '2024-12-18 14:52:57'),
(321, 41, 1, 321, '2024-12-18 14:52:57'),
(322, 41, 2, 322, '2024-12-18 14:52:57'),
(323, 41, 3, 323, '2024-12-18 14:52:57'),
(324, 41, 4, 324, '2024-12-18 14:52:57'),
(325, 41, 5, 325, '2024-12-18 14:52:57'),
(326, 41, 6, 326, '2024-12-18 14:52:57'),
(327, 41, 7, 327, '2024-12-18 14:52:57'),
(328, 41, 8, 328, '2024-12-18 14:52:57'),
(329, 42, 1, 329, '2024-12-18 14:52:57'),
(330, 42, 2, 330, '2024-12-18 14:52:57'),
(331, 42, 3, 331, '2024-12-18 14:52:57'),
(332, 42, 4, 332, '2024-12-18 14:52:57'),
(333, 42, 5, 333, '2024-12-18 14:52:57'),
(334, 42, 6, 334, '2024-12-18 14:52:57'),
(335, 42, 7, 335, '2024-12-18 14:52:57'),
(336, 42, 8, 336, '2024-12-18 14:52:57'),
(337, 43, 1, 337, '2024-12-18 14:52:57'),
(338, 43, 2, 338, '2024-12-18 14:52:57'),
(339, 43, 3, 339, '2024-12-18 14:52:57'),
(340, 43, 4, 340, '2024-12-18 14:52:57'),
(341, 43, 5, 341, '2024-12-18 14:52:57'),
(342, 43, 6, 342, '2024-12-18 14:52:57'),
(343, 43, 7, 343, '2024-12-18 14:52:57'),
(344, 43, 8, 344, '2024-12-18 14:52:57'),
(345, 44, 1, 345, '2024-12-18 14:52:57'),
(346, 44, 2, 346, '2024-12-18 14:52:57'),
(347, 44, 3, 347, '2024-12-18 14:52:57'),
(348, 44, 4, 348, '2024-12-18 14:52:57'),
(349, 44, 5, 349, '2024-12-18 14:52:57'),
(350, 44, 6, 350, '2024-12-18 14:52:57'),
(351, 44, 7, 351, '2024-12-18 14:52:57'),
(352, 44, 8, 352, '2024-12-18 14:52:57'),
(353, 45, 1, 353, '2024-12-18 14:52:57'),
(354, 45, 2, 354, '2024-12-18 14:52:57'),
(355, 45, 3, 355, '2024-12-18 14:52:57'),
(356, 45, 4, 356, '2024-12-18 14:52:57'),
(357, 45, 5, 357, '2024-12-18 14:52:57'),
(358, 45, 6, 358, '2024-12-18 14:52:57'),
(359, 45, 7, 359, '2024-12-18 14:52:57'),
(360, 45, 8, 360, '2024-12-18 14:52:57'),
(361, 46, 1, 361, '2024-12-18 14:52:57'),
(362, 46, 2, 362, '2024-12-18 14:52:57'),
(363, 46, 3, 363, '2024-12-18 14:52:57'),
(364, 46, 4, 364, '2024-12-18 14:52:57'),
(365, 46, 5, 365, '2024-12-18 14:52:57'),
(366, 46, 6, 366, '2024-12-18 14:52:57'),
(367, 46, 7, 367, '2024-12-18 14:52:57'),
(368, 46, 8, 368, '2024-12-18 14:52:57'),
(369, 47, 1, 369, '2024-12-18 14:52:57'),
(370, 47, 2, 370, '2024-12-18 14:52:57'),
(371, 47, 3, 371, '2024-12-18 14:52:57'),
(372, 47, 4, 372, '2024-12-18 14:52:57'),
(373, 47, 5, 373, '2024-12-18 14:52:57'),
(374, 47, 6, 374, '2024-12-18 14:52:57'),
(375, 47, 7, 375, '2024-12-18 14:52:57'),
(376, 47, 8, 376, '2024-12-18 14:52:57'),
(377, 48, 1, 377, '2024-12-18 14:52:57'),
(378, 48, 2, 378, '2024-12-18 14:52:57'),
(379, 48, 3, 379, '2024-12-18 14:52:57'),
(380, 48, 4, 380, '2024-12-18 14:52:57'),
(381, 48, 5, 381, '2024-12-18 14:52:57'),
(382, 48, 6, 382, '2024-12-18 14:52:57'),
(383, 48, 7, 383, '2024-12-18 14:52:57'),
(384, 48, 8, 384, '2024-12-18 14:52:57'),
(385, 49, 1, 385, '2024-12-18 14:52:57'),
(386, 49, 2, 386, '2024-12-18 14:52:57'),
(387, 49, 3, 387, '2024-12-18 14:52:57'),
(388, 49, 4, 388, '2024-12-18 14:52:57'),
(389, 49, 5, 389, '2024-12-18 14:52:57'),
(390, 49, 6, 390, '2024-12-18 14:52:57'),
(391, 49, 7, 391, '2024-12-18 14:52:57'),
(392, 49, 8, 392, '2024-12-18 14:52:57'),
(393, 50, 1, 393, '2024-12-18 14:52:57'),
(394, 50, 2, 394, '2024-12-18 14:52:57'),
(395, 50, 3, 395, '2024-12-18 14:52:57'),
(396, 50, 4, 396, '2024-12-18 14:52:57'),
(397, 50, 5, 397, '2024-12-18 14:52:57'),
(398, 50, 6, 398, '2024-12-18 14:52:57'),
(399, 50, 7, 399, '2024-12-18 14:52:57'),
(400, 50, 8, 400, '2024-12-18 14:52:57'),
(401, 51, 1, 401, '2024-12-18 14:52:57'),
(402, 51, 2, 402, '2024-12-18 14:52:57'),
(403, 51, 3, 403, '2024-12-18 14:52:57'),
(404, 51, 4, 404, '2024-12-18 14:52:57'),
(405, 51, 5, 405, '2024-12-18 14:52:57'),
(406, 51, 6, 406, '2024-12-18 14:52:57'),
(407, 51, 7, 407, '2024-12-18 14:52:57'),
(408, 51, 8, 408, '2024-12-18 14:52:57'),
(409, 52, 1, 409, '2024-12-18 14:52:57'),
(410, 52, 2, 410, '2024-12-18 14:52:57'),
(411, 52, 3, 411, '2024-12-18 14:52:57'),
(412, 52, 4, 412, '2024-12-18 14:52:57'),
(413, 52, 5, 413, '2024-12-18 14:52:57'),
(414, 52, 6, 414, '2024-12-18 14:52:57'),
(415, 52, 7, 415, '2024-12-18 14:52:57'),
(416, 52, 8, 416, '2024-12-18 14:52:57'),
(417, 53, 1, 417, '2024-12-18 14:52:57'),
(418, 53, 2, 418, '2024-12-18 14:52:57'),
(419, 53, 3, 419, '2024-12-18 14:52:57'),
(420, 53, 4, 420, '2024-12-18 14:52:57'),
(421, 53, 5, 421, '2024-12-18 14:52:57'),
(422, 53, 6, 422, '2024-12-18 14:52:57'),
(423, 53, 7, 423, '2024-12-18 14:52:58'),
(424, 53, 8, 424, '2024-12-18 14:52:58'),
(425, 54, 1, 425, '2024-12-18 14:52:58'),
(426, 54, 2, 426, '2024-12-18 14:52:58'),
(427, 54, 3, 427, '2024-12-18 14:52:58'),
(428, 54, 4, 428, '2024-12-18 14:52:58'),
(429, 54, 5, 429, '2024-12-18 14:52:58'),
(430, 54, 6, 430, '2024-12-18 14:52:58'),
(431, 54, 7, 431, '2024-12-18 14:52:58'),
(432, 54, 8, 432, '2024-12-18 14:52:58'),
(433, 55, 1, 433, '2024-12-18 14:52:58'),
(434, 55, 2, 434, '2024-12-18 14:52:58'),
(435, 55, 3, 435, '2024-12-18 14:52:58'),
(436, 55, 4, 436, '2024-12-18 14:52:58'),
(437, 55, 5, 437, '2024-12-18 14:52:58'),
(438, 55, 6, 438, '2024-12-18 14:52:58'),
(439, 55, 7, 439, '2024-12-18 14:52:58'),
(440, 55, 8, 440, '2024-12-18 14:52:58'),
(441, 56, 1, 441, '2024-12-18 14:52:58'),
(442, 56, 2, 442, '2024-12-18 14:52:58'),
(443, 56, 3, 443, '2024-12-18 14:52:58'),
(444, 56, 4, 444, '2024-12-18 14:52:58'),
(445, 56, 5, 445, '2024-12-18 14:52:58'),
(446, 56, 6, 446, '2024-12-18 14:52:58'),
(447, 56, 7, 447, '2024-12-18 14:52:58'),
(448, 56, 8, 448, '2024-12-18 14:52:58'),
(449, 57, 1, 449, '2024-12-18 14:52:58'),
(450, 57, 2, 450, '2024-12-18 14:52:58'),
(451, 57, 3, 451, '2024-12-18 14:52:58'),
(452, 57, 4, 452, '2024-12-18 14:52:58'),
(453, 57, 5, 453, '2024-12-18 14:52:58'),
(454, 57, 6, 454, '2024-12-18 14:52:58'),
(455, 57, 7, 455, '2024-12-18 14:52:58'),
(456, 57, 8, 456, '2024-12-18 14:52:58'),
(457, 58, 1, 457, '2024-12-18 14:52:58'),
(458, 58, 2, 458, '2024-12-18 14:52:58'),
(459, 58, 3, 459, '2024-12-18 14:52:58'),
(460, 58, 4, 460, '2024-12-18 14:52:58'),
(461, 58, 5, 461, '2024-12-18 14:52:58'),
(462, 58, 6, 462, '2024-12-18 14:52:58'),
(463, 58, 7, 463, '2024-12-18 14:52:58'),
(464, 58, 8, 464, '2024-12-18 14:52:58'),
(465, 59, 1, 465, '2024-12-18 14:52:58'),
(466, 59, 2, 466, '2024-12-18 14:52:58'),
(467, 59, 3, 467, '2024-12-18 14:52:58'),
(468, 59, 4, 468, '2024-12-18 14:52:58'),
(469, 59, 5, 469, '2024-12-18 14:52:58'),
(470, 59, 6, 470, '2024-12-18 14:52:58'),
(471, 59, 7, 471, '2024-12-18 14:52:58'),
(472, 59, 8, 472, '2024-12-18 14:52:58'),
(473, 60, 1, 473, '2024-12-18 14:52:58'),
(474, 60, 2, 474, '2024-12-18 14:52:58'),
(475, 60, 3, 475, '2024-12-18 14:52:58'),
(476, 60, 4, 476, '2024-12-18 14:52:58'),
(477, 60, 5, 477, '2024-12-18 14:52:58'),
(478, 60, 6, 478, '2024-12-18 14:52:58'),
(479, 60, 7, 479, '2024-12-18 14:52:58'),
(480, 60, 8, 480, '2024-12-18 14:52:58'),
(481, 61, 1, 481, '2024-12-18 14:52:58'),
(482, 61, 2, 482, '2024-12-18 14:52:58'),
(483, 61, 3, 483, '2024-12-18 14:52:58'),
(484, 61, 4, 484, '2024-12-18 14:52:58'),
(485, 61, 5, 485, '2024-12-18 14:52:58'),
(486, 61, 6, 486, '2024-12-18 14:52:58'),
(487, 61, 7, 487, '2024-12-18 14:52:58'),
(488, 61, 8, 488, '2024-12-18 14:52:58'),
(489, 62, 1, 489, '2024-12-18 14:52:58'),
(490, 62, 2, 490, '2024-12-18 14:52:58'),
(491, 62, 3, 491, '2024-12-18 14:52:58'),
(492, 62, 4, 492, '2024-12-18 14:52:58'),
(493, 62, 5, 493, '2024-12-18 14:52:58'),
(494, 62, 6, 494, '2024-12-18 14:52:58'),
(495, 62, 7, 495, '2024-12-18 14:52:58'),
(496, 62, 8, 496, '2024-12-18 14:52:58'),
(497, 63, 1, 497, '2024-12-18 14:52:58'),
(498, 63, 2, 498, '2024-12-18 14:52:58'),
(499, 63, 3, 499, '2024-12-18 14:52:58'),
(500, 63, 4, 500, '2024-12-18 14:52:58'),
(501, 63, 5, 501, '2024-12-18 14:52:58'),
(502, 63, 6, 502, '2024-12-18 14:52:58'),
(503, 63, 7, 503, '2024-12-18 14:52:58'),
(504, 63, 8, 504, '2024-12-18 14:52:58'),
(505, 64, 1, 505, '2024-12-18 14:52:58'),
(506, 64, 2, 506, '2024-12-18 14:52:58'),
(507, 64, 3, 507, '2024-12-18 14:52:58'),
(508, 64, 4, 508, '2024-12-18 14:52:58'),
(509, 64, 5, 509, '2024-12-18 14:52:58'),
(510, 64, 6, 510, '2024-12-18 14:52:58'),
(511, 64, 7, 511, '2024-12-18 14:52:58'),
(512, 64, 8, 512, '2024-12-18 14:52:58'),
(513, 65, 1, 513, '2024-12-18 14:52:58'),
(514, 65, 2, 514, '2024-12-18 14:52:58'),
(515, 65, 3, 515, '2024-12-18 14:52:58'),
(516, 65, 4, 516, '2024-12-18 14:52:58'),
(517, 65, 5, 517, '2024-12-18 14:52:58'),
(518, 65, 6, 518, '2024-12-18 14:52:58'),
(519, 65, 7, 519, '2024-12-18 14:52:58'),
(520, 65, 8, 520, '2024-12-18 14:52:58'),
(521, 66, 1, 521, '2024-12-18 14:52:58'),
(522, 66, 2, 522, '2024-12-18 14:52:58'),
(523, 66, 3, 523, '2024-12-18 14:52:58'),
(524, 66, 4, 524, '2024-12-18 14:52:58'),
(525, 66, 5, 525, '2024-12-18 14:52:58'),
(526, 66, 6, 526, '2024-12-18 14:52:58'),
(527, 66, 7, 527, '2024-12-18 14:52:58'),
(528, 66, 8, 528, '2024-12-18 14:52:58'),
(529, 67, 1, 529, '2024-12-18 14:52:58'),
(530, 67, 2, 530, '2024-12-18 14:52:58'),
(531, 67, 3, 531, '2024-12-18 14:52:58'),
(532, 67, 4, 532, '2024-12-18 14:52:58'),
(533, 67, 5, 533, '2024-12-18 14:52:58'),
(534, 67, 6, 534, '2024-12-18 14:52:58'),
(535, 67, 7, 535, '2024-12-18 14:52:58'),
(536, 67, 8, 536, '2024-12-18 14:52:58'),
(537, 68, 1, 537, '2024-12-18 14:52:58'),
(538, 68, 2, 538, '2024-12-18 14:52:58'),
(539, 68, 3, 539, '2024-12-18 14:52:58'),
(540, 68, 4, 540, '2024-12-18 14:52:58'),
(541, 68, 5, 541, '2024-12-18 14:52:58'),
(542, 68, 6, 542, '2024-12-18 14:52:58'),
(543, 68, 7, 543, '2024-12-18 14:52:58'),
(544, 68, 8, 544, '2024-12-18 14:52:58'),
(545, 69, 1, 545, '2024-12-18 14:52:58'),
(546, 69, 2, 546, '2024-12-18 14:52:58'),
(547, 69, 3, 547, '2024-12-18 14:52:58'),
(548, 69, 4, 548, '2024-12-18 14:52:58'),
(549, 69, 5, 549, '2024-12-18 14:52:58'),
(550, 69, 6, 550, '2024-12-18 14:52:58'),
(551, 69, 7, 551, '2024-12-18 14:52:58'),
(552, 69, 8, 552, '2024-12-18 14:52:58'),
(553, 70, 1, 553, '2024-12-18 14:52:58'),
(554, 70, 2, 554, '2024-12-18 14:52:58'),
(555, 70, 3, 555, '2024-12-18 14:52:58'),
(556, 70, 4, 556, '2024-12-18 14:52:58'),
(557, 70, 5, 557, '2024-12-18 14:52:58'),
(558, 70, 6, 558, '2024-12-18 14:52:58'),
(559, 70, 7, 559, '2024-12-18 14:52:58'),
(560, 70, 8, 560, '2024-12-18 14:52:58'),
(561, 71, 1, 561, '2024-12-18 14:52:58'),
(562, 71, 2, 562, '2024-12-18 14:52:58'),
(563, 71, 3, 563, '2024-12-18 14:52:58'),
(564, 71, 4, 564, '2024-12-18 14:52:58'),
(565, 71, 5, 565, '2024-12-18 14:52:58'),
(566, 71, 6, 566, '2024-12-18 14:52:58'),
(567, 71, 7, 567, '2024-12-18 14:52:58'),
(568, 71, 8, 568, '2024-12-18 14:52:58'),
(569, 72, 1, 569, '2024-12-18 14:52:58'),
(570, 72, 2, 570, '2024-12-18 14:52:58'),
(571, 72, 3, 571, '2024-12-18 14:52:58'),
(572, 72, 4, 572, '2024-12-18 14:52:58'),
(573, 72, 5, 573, '2024-12-18 14:52:58'),
(574, 72, 6, 574, '2024-12-18 14:52:58'),
(575, 72, 7, 575, '2024-12-18 14:52:58'),
(576, 72, 8, 576, '2024-12-18 14:52:58'),
(577, 73, 1, 577, '2024-12-18 14:52:58'),
(578, 73, 2, 578, '2024-12-18 14:52:58'),
(579, 73, 3, 579, '2024-12-18 14:52:58'),
(580, 73, 4, 580, '2024-12-18 14:52:58'),
(581, 73, 5, 581, '2024-12-18 14:52:58'),
(582, 73, 6, 582, '2024-12-18 14:52:58'),
(583, 73, 7, 583, '2024-12-18 14:52:58'),
(584, 73, 8, 584, '2024-12-18 14:52:58'),
(585, 74, 1, 585, '2024-12-18 14:52:58'),
(586, 74, 2, 586, '2024-12-18 14:52:58'),
(587, 74, 3, 587, '2024-12-18 14:52:58'),
(588, 74, 4, 588, '2024-12-18 14:52:58'),
(589, 74, 5, 589, '2024-12-18 14:52:58'),
(590, 74, 6, 590, '2024-12-18 14:52:58'),
(591, 74, 7, 591, '2024-12-18 14:52:58'),
(592, 74, 8, 592, '2024-12-18 14:52:58'),
(593, 75, 1, 593, '2024-12-18 14:52:58'),
(594, 75, 2, 594, '2024-12-18 14:52:58'),
(595, 75, 3, 595, '2024-12-18 14:52:58'),
(596, 75, 4, 596, '2024-12-18 14:52:58'),
(597, 75, 5, 597, '2024-12-18 14:52:58'),
(598, 75, 6, 598, '2024-12-18 14:52:58'),
(599, 75, 7, 599, '2024-12-18 14:52:58'),
(600, 75, 8, 600, '2024-12-18 14:52:58'),
(601, 76, 1, 601, '2024-12-18 14:52:58'),
(602, 76, 2, 602, '2024-12-18 14:52:58'),
(603, 76, 3, 603, '2024-12-18 14:52:58'),
(604, 76, 4, 604, '2024-12-18 14:52:58'),
(605, 76, 5, 605, '2024-12-18 14:52:58'),
(606, 76, 6, 606, '2024-12-18 14:52:58'),
(607, 76, 7, 607, '2024-12-18 14:52:58'),
(608, 76, 8, 608, '2024-12-18 14:52:58'),
(609, 77, 1, 609, '2024-12-18 14:52:58'),
(610, 77, 2, 610, '2024-12-18 14:52:58'),
(611, 77, 3, 611, '2024-12-18 14:52:58'),
(612, 77, 4, 612, '2024-12-18 14:52:58'),
(613, 77, 5, 613, '2024-12-18 14:52:58'),
(614, 77, 6, 614, '2024-12-18 14:52:58'),
(615, 77, 7, 615, '2024-12-18 14:52:58'),
(616, 77, 8, 616, '2024-12-18 14:52:58'),
(617, 78, 1, 617, '2024-12-18 14:52:58'),
(618, 78, 2, 618, '2024-12-18 14:52:58'),
(619, 78, 3, 619, '2024-12-18 14:52:58'),
(620, 78, 4, 620, '2024-12-18 14:52:58'),
(621, 78, 5, 621, '2024-12-18 14:52:58'),
(622, 78, 6, 622, '2024-12-18 14:52:58'),
(623, 78, 7, 623, '2024-12-18 14:52:58'),
(624, 78, 8, 624, '2024-12-18 14:52:58'),
(625, 79, 1, 625, '2024-12-18 14:52:58'),
(626, 79, 2, 626, '2024-12-18 14:52:58'),
(627, 79, 3, 627, '2024-12-18 14:52:58'),
(628, 79, 4, 628, '2024-12-18 14:52:58'),
(629, 79, 5, 629, '2024-12-18 14:52:58'),
(630, 79, 6, 630, '2024-12-18 14:52:58'),
(631, 79, 7, 631, '2024-12-18 14:52:58'),
(632, 79, 8, 632, '2024-12-18 14:52:58'),
(633, 80, 1, 633, '2024-12-18 14:52:58'),
(634, 80, 2, 634, '2024-12-18 14:52:58'),
(635, 80, 3, 635, '2024-12-18 14:52:58'),
(636, 80, 4, 636, '2024-12-18 14:52:58'),
(637, 80, 5, 637, '2024-12-18 14:52:58'),
(638, 80, 6, 638, '2024-12-18 14:52:58'),
(639, 80, 7, 639, '2024-12-18 14:52:58'),
(640, 80, 8, 640, '2024-12-18 14:52:58'),
(641, 81, 1, 641, '2024-12-18 14:52:58'),
(642, 81, 2, 642, '2024-12-18 14:52:58'),
(643, 81, 3, 643, '2024-12-18 14:52:58'),
(644, 81, 4, 644, '2024-12-18 14:52:58'),
(645, 81, 5, 645, '2024-12-18 14:52:58'),
(646, 81, 6, 646, '2024-12-18 14:52:58'),
(647, 81, 7, 647, '2024-12-18 14:52:58'),
(648, 81, 8, 648, '2024-12-18 14:52:58'),
(649, 82, 1, 649, '2024-12-18 14:52:58'),
(650, 82, 2, 650, '2024-12-18 14:52:58'),
(651, 82, 3, 651, '2024-12-18 14:52:58'),
(652, 82, 4, 652, '2024-12-18 14:52:58'),
(653, 82, 5, 653, '2024-12-18 14:52:58'),
(654, 82, 6, 654, '2024-12-18 14:52:58'),
(655, 82, 7, 655, '2024-12-18 14:52:58'),
(656, 82, 8, 656, '2024-12-18 14:52:58'),
(657, 83, 1, 657, '2024-12-18 14:52:58'),
(658, 83, 2, 658, '2024-12-18 14:52:58'),
(659, 83, 3, 659, '2024-12-18 14:52:58'),
(660, 83, 4, 660, '2024-12-18 14:52:58'),
(661, 83, 5, 661, '2024-12-18 14:52:58'),
(662, 83, 6, 662, '2024-12-18 14:52:58'),
(663, 83, 7, 663, '2024-12-18 14:52:58'),
(664, 83, 8, 664, '2024-12-18 14:52:58'),
(665, 84, 1, 665, '2024-12-18 14:52:58'),
(666, 84, 2, 666, '2024-12-18 14:52:58'),
(667, 84, 3, 667, '2024-12-18 14:52:58'),
(668, 84, 4, 668, '2024-12-18 14:52:58'),
(669, 84, 5, 669, '2024-12-18 14:52:58'),
(670, 84, 6, 670, '2024-12-18 14:52:58'),
(671, 84, 7, 671, '2024-12-18 14:52:58'),
(672, 84, 8, 672, '2024-12-18 14:52:58'),
(673, 85, 1, 673, '2024-12-18 14:52:58'),
(674, 85, 2, 674, '2024-12-18 14:52:58'),
(675, 85, 3, 675, '2024-12-18 14:52:58'),
(676, 85, 4, 676, '2024-12-18 14:52:58'),
(677, 85, 5, 677, '2024-12-18 14:52:58'),
(678, 85, 6, 678, '2024-12-18 14:52:58'),
(679, 85, 7, 679, '2024-12-18 14:52:58'),
(680, 85, 8, 680, '2024-12-18 14:52:58'),
(681, 86, 1, 681, '2024-12-18 14:52:58'),
(682, 86, 2, 682, '2024-12-18 14:52:58'),
(683, 86, 3, 683, '2024-12-18 14:52:58'),
(684, 86, 4, 684, '2024-12-18 14:52:58'),
(685, 86, 5, 685, '2024-12-18 14:52:58'),
(686, 86, 6, 686, '2024-12-18 14:52:58'),
(687, 86, 7, 687, '2024-12-18 14:52:58'),
(688, 86, 8, 688, '2024-12-18 14:52:58'),
(689, 87, 1, 689, '2024-12-18 14:52:58'),
(690, 87, 2, 690, '2024-12-18 14:52:58'),
(691, 87, 3, 691, '2024-12-18 14:52:58'),
(692, 87, 4, 692, '2024-12-18 14:52:58'),
(693, 87, 5, 693, '2024-12-18 14:52:58'),
(694, 87, 6, 694, '2024-12-18 14:52:58'),
(695, 87, 7, 695, '2024-12-18 14:52:58'),
(696, 87, 8, 696, '2024-12-18 14:52:58'),
(697, 88, 1, 697, '2024-12-18 14:52:58'),
(698, 88, 2, 698, '2024-12-18 14:52:58'),
(699, 88, 3, 699, '2024-12-18 14:52:58'),
(700, 88, 4, 700, '2024-12-18 14:52:58'),
(701, 88, 5, 701, '2024-12-18 14:52:58'),
(702, 88, 6, 702, '2024-12-18 14:52:58'),
(703, 88, 7, 703, '2024-12-18 14:52:58'),
(704, 88, 8, 704, '2024-12-18 14:52:58'),
(705, 89, 1, 705, '2024-12-18 14:52:58'),
(706, 89, 2, 706, '2024-12-18 14:52:58'),
(707, 89, 3, 707, '2024-12-18 14:52:58'),
(708, 89, 4, 708, '2024-12-18 14:52:58'),
(709, 89, 5, 709, '2024-12-18 14:52:58'),
(710, 89, 6, 710, '2024-12-18 14:52:58'),
(711, 89, 7, 711, '2024-12-18 14:52:58'),
(712, 89, 8, 712, '2024-12-18 14:52:58'),
(713, 90, 1, 713, '2024-12-18 14:52:58'),
(714, 90, 2, 714, '2024-12-18 14:52:58'),
(715, 90, 3, 715, '2024-12-18 14:52:58'),
(716, 90, 4, 716, '2024-12-18 14:52:58'),
(717, 90, 5, 717, '2024-12-18 14:52:58'),
(718, 90, 6, 718, '2024-12-18 14:52:58'),
(719, 90, 7, 719, '2024-12-18 14:52:58'),
(720, 90, 8, 720, '2024-12-18 14:52:58'),
(721, 91, 1, 721, '2024-12-18 14:52:58'),
(722, 91, 2, 722, '2024-12-18 14:52:58'),
(723, 91, 3, 723, '2024-12-18 14:52:58'),
(724, 91, 4, 724, '2024-12-18 14:52:58'),
(725, 91, 5, 725, '2024-12-18 14:52:58'),
(726, 91, 6, 726, '2024-12-18 14:52:58'),
(727, 91, 7, 727, '2024-12-18 14:52:58'),
(728, 91, 8, 728, '2024-12-18 14:52:58'),
(729, 92, 1, 729, '2024-12-18 14:52:58'),
(730, 92, 2, 730, '2024-12-18 14:52:58'),
(731, 92, 3, 731, '2024-12-18 14:52:58'),
(732, 92, 4, 732, '2024-12-18 14:52:58'),
(733, 92, 5, 733, '2024-12-18 14:52:58'),
(734, 92, 6, 734, '2024-12-18 14:52:58'),
(735, 92, 7, 735, '2024-12-18 14:52:58'),
(736, 92, 8, 736, '2024-12-18 14:52:58'),
(737, 93, 1, 737, '2024-12-18 14:52:58'),
(738, 93, 2, 738, '2024-12-18 14:52:58'),
(739, 93, 3, 739, '2024-12-18 14:52:58'),
(740, 93, 4, 740, '2024-12-18 14:52:58'),
(741, 93, 5, 741, '2024-12-18 14:52:58'),
(742, 93, 6, 742, '2024-12-18 14:52:58'),
(743, 93, 7, 743, '2024-12-18 14:52:58'),
(744, 93, 8, 744, '2024-12-18 14:52:58'),
(745, 94, 1, 745, '2024-12-18 14:52:58'),
(746, 94, 2, 746, '2024-12-18 14:52:58'),
(747, 94, 3, 747, '2024-12-18 14:52:58'),
(748, 94, 4, 748, '2024-12-18 14:52:58'),
(749, 94, 5, 749, '2024-12-18 14:52:58'),
(750, 94, 6, 750, '2024-12-18 14:52:58'),
(751, 94, 7, 751, '2024-12-18 14:52:58'),
(752, 94, 8, 752, '2024-12-18 14:52:58'),
(753, 95, 1, 753, '2024-12-18 14:52:58'),
(754, 95, 2, 754, '2024-12-18 14:52:58'),
(755, 95, 3, 755, '2024-12-18 14:52:58'),
(756, 95, 4, 756, '2024-12-18 14:52:58'),
(757, 95, 5, 757, '2024-12-18 14:52:58'),
(758, 95, 6, 758, '2024-12-18 14:52:58'),
(759, 95, 7, 759, '2024-12-18 14:52:58'),
(760, 95, 8, 760, '2024-12-18 14:52:58'),
(761, 96, 1, 761, '2024-12-18 14:52:58'),
(762, 96, 2, 762, '2024-12-18 14:52:58'),
(763, 96, 3, 763, '2024-12-18 14:52:58'),
(764, 96, 4, 764, '2024-12-18 14:52:58'),
(765, 96, 5, 765, '2024-12-18 14:52:58'),
(766, 96, 6, 766, '2024-12-18 14:52:58'),
(767, 96, 7, 767, '2024-12-18 14:52:58'),
(768, 96, 8, 768, '2024-12-18 14:52:58'),
(769, 97, 1, 769, '2024-12-18 14:52:58'),
(770, 97, 2, 770, '2024-12-18 14:52:58'),
(771, 97, 3, 771, '2024-12-18 14:52:58'),
(772, 97, 4, 772, '2024-12-18 14:52:58'),
(773, 97, 5, 773, '2024-12-18 14:52:58'),
(774, 97, 6, 774, '2024-12-18 14:52:58'),
(775, 97, 7, 775, '2024-12-18 14:52:58'),
(776, 97, 8, 776, '2024-12-18 14:52:58'),
(777, 98, 1, 777, '2024-12-18 14:52:58'),
(778, 98, 2, 778, '2024-12-18 14:52:58'),
(779, 98, 3, 779, '2024-12-18 14:52:58'),
(780, 98, 4, 780, '2024-12-18 14:52:58'),
(781, 98, 5, 781, '2024-12-18 14:52:58'),
(782, 98, 6, 782, '2024-12-18 14:52:58'),
(783, 98, 7, 783, '2024-12-18 14:52:58'),
(784, 98, 8, 784, '2024-12-18 14:52:58'),
(785, 99, 1, 785, '2024-12-18 14:52:58'),
(786, 99, 2, 786, '2024-12-18 14:52:58'),
(787, 99, 3, 787, '2024-12-18 14:52:58'),
(788, 99, 4, 788, '2024-12-18 14:52:58'),
(789, 99, 5, 789, '2024-12-18 14:52:58'),
(790, 99, 6, 790, '2024-12-18 14:52:58'),
(791, 99, 7, 791, '2024-12-18 14:52:58'),
(792, 99, 8, 792, '2024-12-18 14:52:58'),
(793, 100, 1, 793, '2024-12-18 14:52:58'),
(794, 100, 2, 794, '2024-12-18 14:52:58'),
(795, 100, 3, 795, '2024-12-18 14:52:58'),
(796, 100, 4, 796, '2024-12-18 14:52:58'),
(797, 100, 5, 797, '2024-12-18 14:52:58'),
(798, 100, 6, 798, '2024-12-18 14:52:58'),
(799, 100, 7, 799, '2024-12-18 14:52:58'),
(800, 100, 8, 800, '2024-12-18 14:52:58'),
(801, 101, 1, 801, '2024-12-18 14:52:58'),
(802, 101, 2, 802, '2024-12-18 14:52:58'),
(803, 101, 3, 803, '2024-12-18 14:52:58'),
(804, 101, 4, 804, '2024-12-18 14:52:58'),
(805, 101, 5, 805, '2024-12-18 14:52:58'),
(806, 101, 6, 806, '2024-12-18 14:52:58'),
(807, 101, 7, 807, '2024-12-18 14:52:58'),
(808, 101, 8, 808, '2024-12-18 14:52:58'),
(809, 102, 1, 809, '2024-12-18 14:52:58'),
(810, 102, 2, 810, '2024-12-18 14:52:58'),
(811, 102, 3, 811, '2024-12-18 14:52:58'),
(812, 102, 4, 812, '2024-12-18 14:52:58'),
(813, 102, 5, 813, '2024-12-18 14:52:58'),
(814, 102, 6, 814, '2024-12-18 14:52:58'),
(815, 102, 7, 815, '2024-12-18 14:52:58'),
(816, 102, 8, 816, '2024-12-18 14:52:58'),
(817, 103, 1, 817, '2024-12-18 14:52:58'),
(818, 103, 2, 818, '2024-12-18 14:52:58'),
(819, 103, 3, 819, '2024-12-18 14:52:58'),
(820, 103, 4, 820, '2024-12-18 14:52:58'),
(821, 103, 5, 821, '2024-12-18 14:52:58'),
(822, 103, 6, 822, '2024-12-18 14:52:58'),
(823, 103, 7, 823, '2024-12-18 14:52:58'),
(824, 103, 8, 824, '2024-12-18 14:52:58'),
(825, 104, 1, 825, '2024-12-18 14:52:58'),
(826, 104, 2, 826, '2024-12-18 14:52:58'),
(827, 104, 3, 827, '2024-12-18 14:52:58'),
(828, 104, 4, 828, '2024-12-18 14:52:58'),
(829, 104, 5, 829, '2024-12-18 14:52:58'),
(830, 104, 6, 830, '2024-12-18 14:52:58'),
(831, 104, 7, 831, '2024-12-18 14:52:58'),
(832, 104, 8, 832, '2024-12-18 14:52:58'),
(833, 105, 1, 833, '2024-12-18 14:52:58'),
(834, 105, 2, 834, '2024-12-18 14:52:58'),
(835, 105, 3, 835, '2024-12-18 14:52:58'),
(836, 105, 4, 836, '2024-12-18 14:52:58'),
(837, 105, 5, 837, '2024-12-18 14:52:58'),
(838, 105, 6, 838, '2024-12-18 14:52:58'),
(839, 105, 7, 839, '2024-12-18 14:52:58'),
(840, 105, 8, 840, '2024-12-18 14:52:58'),
(841, 106, 1, 841, '2024-12-18 14:52:58'),
(842, 106, 2, 842, '2024-12-18 14:52:58'),
(843, 106, 3, 843, '2024-12-18 14:52:58'),
(844, 106, 4, 844, '2024-12-18 14:52:58'),
(845, 106, 5, 845, '2024-12-18 14:52:58'),
(846, 106, 6, 846, '2024-12-18 14:52:58'),
(847, 106, 7, 847, '2024-12-18 14:52:58'),
(848, 106, 8, 848, '2024-12-18 14:52:58'),
(849, 107, 1, 849, '2024-12-18 14:52:58'),
(850, 107, 2, 850, '2024-12-18 14:52:58'),
(851, 107, 3, 851, '2024-12-18 14:52:58'),
(852, 107, 4, 852, '2024-12-18 14:52:58'),
(853, 107, 5, 853, '2024-12-18 14:52:58'),
(854, 107, 6, 854, '2024-12-18 14:52:58'),
(855, 107, 7, 855, '2024-12-18 14:52:58'),
(856, 107, 8, 856, '2024-12-18 14:52:58'),
(857, 108, 1, 857, '2024-12-18 14:52:58'),
(858, 108, 2, 858, '2024-12-18 14:52:58'),
(859, 108, 3, 859, '2024-12-18 14:52:58'),
(860, 108, 4, 860, '2024-12-18 14:52:58'),
(861, 108, 5, 861, '2024-12-18 14:52:58'),
(862, 108, 6, 862, '2024-12-18 14:52:58'),
(863, 108, 7, 863, '2024-12-18 14:52:58'),
(864, 108, 8, 864, '2024-12-18 14:52:58'),
(865, 109, 1, 865, '2024-12-18 14:52:58'),
(866, 109, 2, 866, '2024-12-18 14:52:58'),
(867, 109, 3, 867, '2024-12-18 14:52:58'),
(868, 109, 4, 868, '2024-12-18 14:52:58'),
(869, 109, 5, 869, '2024-12-18 14:52:58'),
(870, 109, 6, 870, '2024-12-18 14:52:58'),
(871, 109, 7, 871, '2024-12-18 14:52:58'),
(872, 109, 8, 872, '2024-12-18 14:52:58'),
(873, 110, 1, 873, '2024-12-18 14:52:58'),
(874, 110, 2, 874, '2024-12-18 14:52:58'),
(875, 110, 3, 875, '2024-12-18 14:52:58'),
(876, 110, 4, 876, '2024-12-18 14:52:58'),
(877, 110, 5, 877, '2024-12-18 14:52:59'),
(878, 110, 6, 878, '2024-12-18 14:52:59'),
(879, 110, 7, 879, '2024-12-18 14:52:59'),
(880, 110, 8, 880, '2024-12-18 14:52:59'),
(881, 111, 1, 881, '2024-12-18 14:52:59'),
(882, 111, 2, 882, '2024-12-18 14:52:59'),
(883, 111, 3, 883, '2024-12-18 14:52:59'),
(884, 111, 4, 884, '2024-12-18 14:52:59'),
(885, 111, 5, 885, '2024-12-18 14:52:59'),
(886, 111, 6, 886, '2024-12-18 14:52:59'),
(887, 111, 7, 887, '2024-12-18 14:52:59'),
(888, 111, 8, 888, '2024-12-18 14:52:59'),
(889, 112, 1, 889, '2024-12-18 14:52:59'),
(890, 112, 2, 890, '2024-12-18 14:52:59'),
(891, 112, 3, 891, '2024-12-18 14:52:59'),
(892, 112, 4, 892, '2024-12-18 14:52:59'),
(893, 112, 5, 893, '2024-12-18 14:52:59'),
(894, 112, 6, 894, '2024-12-18 14:52:59'),
(895, 112, 7, 895, '2024-12-18 14:52:59'),
(896, 112, 8, 896, '2024-12-18 14:52:59'),
(897, 113, 1, 897, '2024-12-18 14:52:59'),
(898, 113, 2, 898, '2024-12-18 14:52:59'),
(899, 113, 3, 899, '2024-12-18 14:52:59'),
(900, 113, 4, 900, '2024-12-18 14:52:59'),
(901, 113, 5, 901, '2024-12-18 14:52:59'),
(902, 113, 6, 902, '2024-12-18 14:52:59'),
(903, 113, 7, 903, '2024-12-18 14:52:59'),
(904, 113, 8, 904, '2024-12-18 14:52:59'),
(905, 114, 1, 905, '2024-12-18 14:52:59'),
(906, 114, 2, 906, '2024-12-18 14:52:59'),
(907, 114, 3, 907, '2024-12-18 14:52:59'),
(908, 114, 4, 908, '2024-12-18 14:52:59'),
(909, 114, 5, 909, '2024-12-18 14:52:59'),
(910, 114, 6, 910, '2024-12-18 14:52:59'),
(911, 114, 7, 911, '2024-12-18 14:52:59'),
(912, 114, 8, 912, '2024-12-18 14:52:59'),
(913, 115, 1, 913, '2024-12-18 14:52:59'),
(914, 115, 2, 914, '2024-12-18 14:52:59'),
(915, 115, 3, 915, '2024-12-18 14:52:59'),
(916, 115, 4, 916, '2024-12-18 14:52:59'),
(917, 115, 5, 917, '2024-12-18 14:52:59'),
(918, 115, 6, 918, '2024-12-18 14:52:59'),
(919, 115, 7, 919, '2024-12-18 14:52:59'),
(920, 115, 8, 920, '2024-12-18 14:52:59'),
(921, 116, 1, 921, '2024-12-18 14:52:59'),
(922, 116, 2, 922, '2024-12-18 14:52:59'),
(923, 116, 3, 923, '2024-12-18 14:52:59'),
(924, 116, 4, 924, '2024-12-18 14:52:59'),
(925, 116, 5, 925, '2024-12-18 14:52:59'),
(926, 116, 6, 926, '2024-12-18 14:52:59'),
(927, 116, 7, 927, '2024-12-18 14:52:59'),
(928, 116, 8, 928, '2024-12-18 14:52:59'),
(929, 117, 1, 929, '2024-12-18 14:52:59'),
(930, 117, 2, 930, '2024-12-18 14:52:59'),
(931, 117, 3, 931, '2024-12-18 14:52:59'),
(932, 117, 4, 932, '2024-12-18 14:52:59'),
(933, 117, 5, 933, '2024-12-18 14:52:59'),
(934, 117, 6, 934, '2024-12-18 14:52:59'),
(935, 117, 7, 935, '2024-12-18 14:52:59'),
(936, 117, 8, 936, '2024-12-18 14:52:59'),
(937, 118, 1, 937, '2024-12-18 14:52:59'),
(938, 118, 2, 938, '2024-12-18 14:52:59'),
(939, 118, 3, 939, '2024-12-18 14:52:59'),
(940, 118, 4, 940, '2024-12-18 14:52:59'),
(941, 118, 5, 941, '2024-12-18 14:52:59'),
(942, 118, 6, 942, '2024-12-18 14:52:59'),
(943, 118, 7, 943, '2024-12-18 14:52:59'),
(944, 118, 8, 944, '2024-12-18 14:52:59'),
(945, 119, 1, 945, '2024-12-18 14:52:59'),
(946, 119, 2, 946, '2024-12-18 14:52:59'),
(947, 119, 3, 947, '2024-12-18 14:52:59'),
(948, 119, 4, 948, '2024-12-18 14:52:59'),
(949, 119, 5, 949, '2024-12-18 14:52:59'),
(950, 119, 6, 950, '2024-12-18 14:52:59'),
(951, 119, 7, 951, '2024-12-18 14:52:59'),
(952, 119, 8, 952, '2024-12-18 14:52:59'),
(953, 120, 1, 953, '2024-12-18 14:52:59'),
(954, 120, 2, 954, '2024-12-18 14:52:59'),
(955, 120, 3, 955, '2024-12-18 14:52:59'),
(956, 120, 4, 956, '2024-12-18 14:52:59'),
(957, 120, 5, 957, '2024-12-18 14:52:59'),
(958, 120, 6, 958, '2024-12-18 14:52:59'),
(959, 120, 7, 959, '2024-12-18 14:52:59'),
(960, 120, 8, 960, '2024-12-18 14:52:59'),
(961, 121, 1, 961, '2024-12-18 14:52:59'),
(962, 121, 2, 962, '2024-12-18 14:52:59'),
(963, 121, 3, 963, '2024-12-18 14:52:59'),
(964, 121, 4, 964, '2024-12-18 14:52:59'),
(965, 121, 5, 965, '2024-12-18 14:52:59'),
(966, 121, 6, 966, '2024-12-18 14:52:59'),
(967, 121, 7, 967, '2024-12-18 14:52:59'),
(968, 121, 8, 968, '2024-12-18 14:52:59'),
(969, 122, 1, 969, '2024-12-18 14:52:59'),
(970, 122, 2, 970, '2024-12-18 14:52:59'),
(971, 122, 3, 971, '2024-12-18 14:52:59'),
(972, 122, 4, 972, '2024-12-18 14:52:59'),
(973, 122, 5, 973, '2024-12-18 14:52:59'),
(974, 122, 6, 974, '2024-12-18 14:52:59'),
(975, 122, 7, 975, '2024-12-18 14:52:59'),
(976, 122, 8, 976, '2024-12-18 14:52:59'),
(977, 123, 1, 977, '2024-12-18 14:52:59'),
(978, 123, 2, 978, '2024-12-18 14:52:59'),
(979, 123, 3, 979, '2024-12-18 14:52:59'),
(980, 123, 4, 980, '2024-12-18 14:52:59'),
(981, 123, 5, 981, '2024-12-18 14:52:59'),
(982, 123, 6, 982, '2024-12-18 14:52:59'),
(983, 123, 7, 983, '2024-12-18 14:52:59'),
(984, 123, 8, 984, '2024-12-18 14:52:59'),
(985, 124, 1, 985, '2024-12-18 14:52:59'),
(986, 124, 2, 986, '2024-12-18 14:52:59'),
(987, 124, 3, 987, '2024-12-18 14:52:59'),
(988, 124, 4, 988, '2024-12-18 14:52:59'),
(989, 124, 5, 989, '2024-12-18 14:52:59'),
(990, 124, 6, 990, '2024-12-18 14:52:59'),
(991, 124, 7, 991, '2024-12-18 14:52:59'),
(992, 124, 8, 992, '2024-12-18 14:52:59'),
(993, 125, 1, 993, '2024-12-18 14:52:59'),
(994, 125, 2, 994, '2024-12-18 14:52:59'),
(995, 125, 3, 995, '2024-12-18 14:52:59'),
(996, 125, 4, 996, '2024-12-18 14:52:59'),
(997, 125, 5, 997, '2024-12-18 14:52:59'),
(998, 125, 6, 998, '2024-12-18 14:52:59'),
(999, 125, 7, 999, '2024-12-18 14:52:59'),
(1000, 125, 8, 1000, '2024-12-18 14:52:59'),
(1001, 126, 1, 1001, '2024-12-18 14:52:59'),
(1002, 126, 2, 1002, '2024-12-18 14:52:59'),
(1003, 126, 3, 1003, '2024-12-18 14:52:59'),
(1004, 126, 4, 1004, '2024-12-18 14:52:59'),
(1005, 126, 5, 1005, '2024-12-18 14:52:59'),
(1006, 126, 6, 1006, '2024-12-18 14:52:59'),
(1007, 126, 7, 1007, '2024-12-18 14:52:59'),
(1008, 126, 8, 1008, '2024-12-18 14:52:59'),
(1009, 127, 1, 1009, '2024-12-18 14:52:59'),
(1010, 127, 2, 1010, '2024-12-18 14:52:59'),
(1011, 127, 3, 1011, '2024-12-18 14:52:59'),
(1012, 127, 4, 1012, '2024-12-18 14:52:59'),
(1013, 127, 5, 1013, '2024-12-18 14:52:59'),
(1014, 127, 6, 1014, '2024-12-18 14:52:59'),
(1015, 127, 7, 1015, '2024-12-18 14:52:59'),
(1016, 127, 8, 1016, '2024-12-18 14:52:59'),
(1017, 128, 1, 1017, '2024-12-18 14:52:59'),
(1018, 128, 2, 1018, '2024-12-18 14:52:59'),
(1019, 128, 3, 1019, '2024-12-18 14:52:59'),
(1020, 128, 4, 1020, '2024-12-18 14:52:59'),
(1021, 128, 5, 1021, '2024-12-18 14:52:59'),
(1022, 128, 6, 1022, '2024-12-18 14:52:59'),
(1023, 128, 7, 1023, '2024-12-18 14:52:59'),
(1024, 128, 8, 1024, '2024-12-18 14:52:59'),
(1025, 129, 1, 1025, '2024-12-18 14:52:59'),
(1026, 129, 2, 1026, '2024-12-18 14:52:59'),
(1027, 129, 3, 1027, '2024-12-18 14:52:59'),
(1028, 129, 4, 1028, '2024-12-18 14:52:59'),
(1029, 129, 5, 1029, '2024-12-18 14:52:59'),
(1030, 129, 6, 1030, '2024-12-18 14:52:59'),
(1031, 129, 7, 1031, '2024-12-18 14:52:59'),
(1032, 129, 8, 1032, '2024-12-18 14:52:59'),
(1033, 130, 1, 1033, '2024-12-18 14:52:59'),
(1034, 130, 2, 1034, '2024-12-18 14:52:59'),
(1035, 130, 3, 1035, '2024-12-18 14:52:59'),
(1036, 130, 4, 1036, '2024-12-18 14:52:59'),
(1037, 130, 5, 1037, '2024-12-18 14:52:59'),
(1038, 130, 6, 1038, '2024-12-18 14:52:59'),
(1039, 130, 7, 1039, '2024-12-18 14:52:59'),
(1040, 130, 8, 1040, '2024-12-18 14:52:59'),
(1041, 131, 1, 1041, '2024-12-18 14:52:59'),
(1042, 131, 2, 1042, '2024-12-18 14:52:59'),
(1043, 131, 3, 1043, '2024-12-18 14:52:59'),
(1044, 131, 4, 1044, '2024-12-18 14:52:59'),
(1045, 131, 5, 1045, '2024-12-18 14:52:59'),
(1046, 131, 6, 1046, '2024-12-18 14:52:59'),
(1047, 131, 7, 1047, '2024-12-18 14:52:59'),
(1048, 131, 8, 1048, '2024-12-18 14:52:59'),
(1049, 132, 1, 1049, '2024-12-18 14:52:59'),
(1050, 132, 2, 1050, '2024-12-18 14:52:59'),
(1051, 132, 3, 1051, '2024-12-18 14:52:59'),
(1052, 132, 4, 1052, '2024-12-18 14:52:59'),
(1053, 132, 5, 1053, '2024-12-18 14:52:59'),
(1054, 132, 6, 1054, '2024-12-18 14:52:59'),
(1055, 132, 7, 1055, '2024-12-18 14:52:59'),
(1056, 132, 8, 1056, '2024-12-18 14:52:59'),
(1057, 133, 1, 1057, '2024-12-18 14:52:59'),
(1058, 133, 2, 1058, '2024-12-18 14:52:59'),
(1059, 133, 3, 1059, '2024-12-18 14:52:59'),
(1060, 133, 4, 1060, '2024-12-18 14:52:59'),
(1061, 133, 5, 1061, '2024-12-18 14:52:59'),
(1062, 133, 6, 1062, '2024-12-18 14:52:59'),
(1063, 133, 7, 1063, '2024-12-18 14:52:59'),
(1064, 133, 8, 1064, '2024-12-18 14:52:59'),
(1065, 134, 1, 1065, '2024-12-18 14:52:59'),
(1066, 134, 2, 1066, '2024-12-18 14:52:59'),
(1067, 134, 3, 1067, '2024-12-18 14:52:59'),
(1068, 134, 4, 1068, '2024-12-18 14:52:59'),
(1069, 134, 5, 1069, '2024-12-18 14:52:59'),
(1070, 134, 6, 1070, '2024-12-18 14:52:59'),
(1071, 134, 7, 1071, '2024-12-18 14:52:59'),
(1072, 134, 8, 1072, '2024-12-18 14:52:59'),
(1073, 135, 1, 1073, '2024-12-18 14:52:59'),
(1074, 135, 2, 1074, '2024-12-18 14:52:59'),
(1075, 135, 3, 1075, '2024-12-18 14:52:59'),
(1076, 135, 4, 1076, '2024-12-18 14:52:59'),
(1077, 135, 5, 1077, '2024-12-18 14:52:59'),
(1078, 135, 6, 1078, '2024-12-18 14:52:59'),
(1079, 135, 7, 1079, '2024-12-18 14:52:59'),
(1080, 135, 8, 1080, '2024-12-18 14:52:59'),
(1081, 136, 1, 1081, '2024-12-18 14:52:59'),
(1082, 136, 2, 1082, '2024-12-18 14:52:59'),
(1083, 136, 3, 1083, '2024-12-18 14:52:59'),
(1084, 136, 4, 1084, '2024-12-18 14:52:59'),
(1085, 136, 5, 1085, '2024-12-18 14:52:59'),
(1086, 136, 6, 1086, '2024-12-18 14:52:59'),
(1087, 136, 7, 1087, '2024-12-18 14:52:59'),
(1088, 136, 8, 1088, '2024-12-18 14:52:59'),
(1089, 137, 1, 1089, '2024-12-18 14:52:59'),
(1090, 137, 2, 1090, '2024-12-18 14:52:59'),
(1091, 137, 3, 1091, '2024-12-18 14:52:59'),
(1092, 137, 4, 1092, '2024-12-18 14:52:59'),
(1093, 137, 5, 1093, '2024-12-18 14:52:59'),
(1094, 137, 6, 1094, '2024-12-18 14:52:59'),
(1095, 137, 7, 1095, '2024-12-18 14:52:59'),
(1096, 137, 8, 1096, '2024-12-18 14:52:59'),
(1097, 138, 1, 1097, '2024-12-18 14:52:59'),
(1098, 138, 2, 1098, '2024-12-18 14:52:59'),
(1099, 138, 3, 1099, '2024-12-18 14:52:59'),
(1100, 138, 4, 1100, '2024-12-18 14:52:59'),
(1101, 138, 5, 1101, '2024-12-18 14:52:59'),
(1102, 138, 6, 1102, '2024-12-18 14:52:59'),
(1103, 138, 7, 1103, '2024-12-18 14:52:59'),
(1104, 138, 8, 1104, '2024-12-18 14:52:59'),
(1105, 139, 1, 1105, '2024-12-18 14:52:59'),
(1106, 139, 2, 1106, '2024-12-18 14:52:59'),
(1107, 139, 3, 1107, '2024-12-18 14:52:59'),
(1108, 139, 4, 1108, '2024-12-18 14:52:59'),
(1109, 139, 5, 1109, '2024-12-18 14:52:59'),
(1110, 139, 6, 1110, '2024-12-18 14:52:59'),
(1111, 139, 7, 1111, '2024-12-18 14:52:59'),
(1112, 139, 8, 1112, '2024-12-18 14:52:59'),
(1113, 140, 1, 1113, '2024-12-18 14:52:59'),
(1114, 140, 2, 1114, '2024-12-18 14:52:59'),
(1115, 140, 3, 1115, '2024-12-18 14:52:59'),
(1116, 140, 4, 1116, '2024-12-18 14:52:59'),
(1117, 140, 5, 1117, '2024-12-18 14:52:59'),
(1118, 140, 6, 1118, '2024-12-18 14:52:59'),
(1119, 140, 7, 1119, '2024-12-18 14:52:59'),
(1120, 140, 8, 1120, '2024-12-18 14:52:59'),
(1121, 141, 1, 1121, '2024-12-18 14:52:59'),
(1122, 141, 2, 1122, '2024-12-18 14:52:59'),
(1123, 141, 3, 1123, '2024-12-18 14:52:59'),
(1124, 141, 4, 1124, '2024-12-18 14:52:59'),
(1125, 141, 5, 1125, '2024-12-18 14:52:59'),
(1126, 141, 6, 1126, '2024-12-18 14:52:59'),
(1127, 141, 7, 1127, '2024-12-18 14:52:59'),
(1128, 141, 8, 1128, '2024-12-18 14:52:59'),
(1129, 142, 1, 1129, '2024-12-18 14:52:59'),
(1130, 142, 2, 1130, '2024-12-18 14:52:59'),
(1131, 142, 3, 1131, '2024-12-18 14:52:59'),
(1132, 142, 4, 1132, '2024-12-18 14:52:59'),
(1133, 142, 5, 1133, '2024-12-18 14:52:59'),
(1134, 142, 6, 1134, '2024-12-18 14:52:59'),
(1135, 142, 7, 1135, '2024-12-18 14:52:59'),
(1136, 142, 8, 1136, '2024-12-18 14:52:59'),
(1137, 143, 1, 1137, '2024-12-18 14:52:59'),
(1138, 143, 2, 1138, '2024-12-18 14:52:59'),
(1139, 143, 3, 1139, '2024-12-18 14:52:59'),
(1140, 143, 4, 1140, '2024-12-18 14:52:59'),
(1141, 143, 5, 1141, '2024-12-18 14:52:59'),
(1142, 143, 6, 1142, '2024-12-18 14:52:59'),
(1143, 143, 7, 1143, '2024-12-18 14:52:59'),
(1144, 143, 8, 1144, '2024-12-18 14:52:59'),
(1145, 144, 1, 1145, '2024-12-18 14:52:59'),
(1146, 144, 2, 1146, '2024-12-18 14:52:59'),
(1147, 144, 3, 1147, '2024-12-18 14:52:59'),
(1148, 144, 4, 1148, '2024-12-18 14:52:59'),
(1149, 144, 5, 1149, '2024-12-18 14:52:59'),
(1150, 144, 6, 1150, '2024-12-18 14:52:59'),
(1151, 144, 7, 1151, '2024-12-18 14:52:59'),
(1152, 144, 8, 1152, '2024-12-18 14:52:59'),
(1153, 145, 1, 1153, '2024-12-18 14:52:59'),
(1154, 145, 2, 1154, '2024-12-18 14:52:59'),
(1155, 145, 3, 1155, '2024-12-18 14:52:59'),
(1156, 145, 4, 1156, '2024-12-18 14:52:59'),
(1157, 145, 5, 1157, '2024-12-18 14:52:59'),
(1158, 145, 6, 1158, '2024-12-18 14:52:59'),
(1159, 145, 7, 1159, '2024-12-18 14:52:59'),
(1160, 145, 8, 1160, '2024-12-18 14:52:59'),
(1161, 146, 1, 1161, '2024-12-18 14:52:59'),
(1162, 146, 2, 1162, '2024-12-18 14:52:59'),
(1163, 146, 3, 1163, '2024-12-18 14:52:59'),
(1164, 146, 4, 1164, '2024-12-18 14:52:59'),
(1165, 146, 5, 1165, '2024-12-18 14:52:59'),
(1166, 146, 6, 1166, '2024-12-18 14:52:59'),
(1167, 146, 7, 1167, '2024-12-18 14:52:59'),
(1168, 146, 8, 1168, '2024-12-18 14:52:59'),
(1169, 147, 1, 1169, '2024-12-18 14:52:59'),
(1170, 147, 2, 1170, '2024-12-18 14:52:59'),
(1171, 147, 3, 1171, '2024-12-18 14:52:59'),
(1172, 147, 4, 1172, '2024-12-18 14:52:59'),
(1173, 147, 5, 1173, '2024-12-18 14:52:59'),
(1174, 147, 6, 1174, '2024-12-18 14:52:59'),
(1175, 147, 7, 1175, '2024-12-18 14:52:59'),
(1176, 147, 8, 1176, '2024-12-18 14:52:59'),
(1177, 148, 1, 1177, '2024-12-18 14:52:59'),
(1178, 148, 2, 1178, '2024-12-18 14:52:59'),
(1179, 148, 3, 1179, '2024-12-18 14:52:59'),
(1180, 148, 4, 1180, '2024-12-18 14:52:59'),
(1181, 148, 5, 1181, '2024-12-18 14:52:59'),
(1182, 148, 6, 1182, '2024-12-18 14:52:59'),
(1183, 148, 7, 1183, '2024-12-18 14:52:59'),
(1184, 148, 8, 1184, '2024-12-18 14:52:59'),
(1185, 149, 1, 1185, '2024-12-18 14:52:59'),
(1186, 149, 2, 1186, '2024-12-18 14:52:59'),
(1187, 149, 3, 1187, '2024-12-18 14:52:59'),
(1188, 149, 4, 1188, '2024-12-18 14:52:59'),
(1189, 149, 5, 1189, '2024-12-18 14:52:59'),
(1190, 149, 6, 1190, '2024-12-18 14:52:59'),
(1191, 149, 7, 1191, '2024-12-18 14:52:59'),
(1192, 149, 8, 1192, '2024-12-18 14:52:59'),
(1193, 150, 1, 1193, '2024-12-18 14:52:59'),
(1194, 150, 2, 1194, '2024-12-18 14:52:59'),
(1195, 150, 3, 1195, '2024-12-18 14:52:59'),
(1196, 150, 4, 1196, '2024-12-18 14:52:59'),
(1197, 150, 5, 1197, '2024-12-18 14:52:59'),
(1198, 150, 6, 1198, '2024-12-18 14:52:59'),
(1199, 150, 7, 1199, '2024-12-18 14:52:59'),
(1200, 150, 8, 1200, '2024-12-18 14:52:59'),
(1201, 151, 1, 1201, '2024-12-18 14:52:59'),
(1202, 151, 2, 1202, '2024-12-18 14:52:59'),
(1203, 151, 3, 1203, '2024-12-18 14:52:59'),
(1204, 151, 4, 1204, '2024-12-18 14:52:59'),
(1205, 151, 5, 1205, '2024-12-18 14:52:59'),
(1206, 151, 6, 1206, '2024-12-18 14:52:59'),
(1207, 151, 7, 1207, '2024-12-18 14:52:59'),
(1208, 151, 8, 1208, '2024-12-18 14:52:59'),
(1209, 152, 1, 1209, '2024-12-18 14:52:59'),
(1210, 152, 2, 1210, '2024-12-18 14:52:59'),
(1211, 152, 3, 1211, '2024-12-18 14:52:59'),
(1212, 152, 4, 1212, '2024-12-18 14:52:59'),
(1213, 152, 5, 1213, '2024-12-18 14:52:59'),
(1214, 152, 6, 1214, '2024-12-18 14:52:59'),
(1215, 152, 7, 1215, '2024-12-18 14:52:59'),
(1216, 152, 8, 1216, '2024-12-18 14:52:59'),
(1217, 153, 1, 1217, '2024-12-18 14:52:59'),
(1218, 153, 2, 1218, '2024-12-18 14:52:59'),
(1219, 153, 3, 1219, '2024-12-18 14:52:59'),
(1220, 153, 4, 1220, '2024-12-18 14:52:59'),
(1221, 153, 5, 1221, '2024-12-18 14:52:59'),
(1222, 153, 6, 1222, '2024-12-18 14:52:59'),
(1223, 153, 7, 1223, '2024-12-18 14:52:59'),
(1224, 153, 8, 1224, '2024-12-18 14:52:59'),
(1225, 154, 1, 1225, '2024-12-18 14:52:59'),
(1226, 154, 2, 1226, '2024-12-18 14:52:59'),
(1227, 154, 3, 1227, '2024-12-18 14:52:59'),
(1228, 154, 4, 1228, '2024-12-18 14:52:59'),
(1229, 154, 5, 1229, '2024-12-18 14:52:59'),
(1230, 154, 6, 1230, '2024-12-18 14:52:59'),
(1231, 154, 7, 1231, '2024-12-18 14:52:59');
INSERT INTO `company_rate` (`id`, `company_id`, `product_period_id`, `product_rate_id`, `created_at`) VALUES
(1232, 154, 8, 1232, '2024-12-18 14:52:59'),
(1233, 155, 1, 1233, '2024-12-18 14:52:59'),
(1234, 155, 2, 1234, '2024-12-18 14:52:59'),
(1235, 155, 3, 1235, '2024-12-18 14:52:59'),
(1236, 155, 4, 1236, '2024-12-18 14:52:59'),
(1237, 155, 5, 1237, '2024-12-18 14:52:59'),
(1238, 155, 6, 1238, '2024-12-18 14:52:59'),
(1239, 155, 7, 1239, '2024-12-18 14:52:59'),
(1240, 155, 8, 1240, '2024-12-18 14:52:59'),
(1241, 156, 1, 1241, '2024-12-18 14:52:59'),
(1242, 156, 2, 1242, '2024-12-18 14:52:59'),
(1243, 156, 3, 1243, '2024-12-18 14:52:59'),
(1244, 156, 4, 1244, '2024-12-18 14:52:59'),
(1245, 156, 5, 1245, '2024-12-18 14:52:59'),
(1246, 156, 6, 1246, '2024-12-18 14:52:59'),
(1247, 156, 7, 1247, '2024-12-18 14:52:59'),
(1248, 156, 8, 1248, '2024-12-18 14:52:59'),
(1249, 157, 1, 1249, '2024-12-18 14:52:59'),
(1250, 157, 2, 1250, '2024-12-18 14:52:59'),
(1251, 157, 3, 1251, '2024-12-18 14:52:59'),
(1252, 157, 4, 1252, '2024-12-18 14:52:59'),
(1253, 157, 5, 1253, '2024-12-18 14:52:59'),
(1254, 157, 6, 1254, '2024-12-18 14:52:59'),
(1255, 157, 7, 1255, '2024-12-18 14:52:59'),
(1256, 157, 8, 1256, '2024-12-18 14:52:59'),
(1257, 158, 1, 1257, '2024-12-18 14:52:59'),
(1258, 158, 2, 1258, '2024-12-18 14:52:59'),
(1259, 158, 3, 1259, '2024-12-18 14:52:59'),
(1260, 158, 4, 1260, '2024-12-18 14:52:59'),
(1261, 158, 5, 1261, '2024-12-18 14:52:59'),
(1262, 158, 6, 1262, '2024-12-18 14:52:59'),
(1263, 158, 7, 1263, '2024-12-18 14:52:59'),
(1264, 158, 8, 1264, '2024-12-18 14:52:59'),
(1265, 159, 1, 1265, '2024-12-18 14:52:59'),
(1266, 159, 2, 1266, '2024-12-18 14:52:59'),
(1267, 159, 3, 1267, '2024-12-18 14:52:59'),
(1268, 159, 4, 1268, '2024-12-18 14:52:59'),
(1269, 159, 5, 1269, '2024-12-18 14:52:59'),
(1270, 159, 6, 1270, '2024-12-18 14:52:59'),
(1271, 159, 7, 1271, '2024-12-18 14:52:59'),
(1272, 159, 8, 1272, '2024-12-18 14:52:59'),
(1273, 160, 1, 1273, '2024-12-18 14:52:59'),
(1274, 160, 2, 1274, '2024-12-18 14:52:59'),
(1275, 160, 3, 1275, '2024-12-18 14:52:59'),
(1276, 160, 4, 1276, '2024-12-18 14:52:59'),
(1277, 160, 5, 1277, '2024-12-18 14:52:59'),
(1278, 160, 6, 1278, '2024-12-18 14:52:59'),
(1279, 160, 7, 1279, '2024-12-18 14:52:59'),
(1280, 160, 8, 1280, '2024-12-18 14:52:59'),
(1281, 161, 1, 1281, '2024-12-18 14:52:59'),
(1282, 161, 2, 1282, '2024-12-18 14:52:59'),
(1283, 161, 3, 1283, '2024-12-18 14:52:59'),
(1284, 161, 4, 1284, '2024-12-18 14:52:59'),
(1285, 161, 5, 1285, '2024-12-18 14:52:59'),
(1286, 161, 6, 1286, '2024-12-18 14:52:59'),
(1287, 161, 7, 1287, '2024-12-18 14:52:59'),
(1288, 161, 8, 1288, '2024-12-18 14:52:59'),
(1289, 162, 1, 1289, '2024-12-18 14:52:59'),
(1290, 162, 2, 1290, '2024-12-18 14:52:59'),
(1291, 162, 3, 1291, '2024-12-18 14:52:59'),
(1292, 162, 4, 1292, '2024-12-18 14:52:59'),
(1293, 162, 5, 1293, '2024-12-18 14:52:59'),
(1294, 162, 6, 1294, '2024-12-18 14:52:59'),
(1295, 162, 7, 1295, '2024-12-18 14:52:59'),
(1296, 162, 8, 1296, '2024-12-18 14:52:59'),
(1297, 163, 1, 1297, '2024-12-18 14:52:59'),
(1298, 163, 2, 1298, '2024-12-18 14:52:59'),
(1299, 163, 3, 1299, '2024-12-18 14:52:59'),
(1300, 163, 4, 1300, '2024-12-18 14:52:59'),
(1301, 163, 5, 1301, '2024-12-18 14:52:59'),
(1302, 163, 6, 1302, '2024-12-18 14:52:59'),
(1303, 163, 7, 1303, '2024-12-18 14:52:59'),
(1304, 163, 8, 1304, '2024-12-18 14:52:59'),
(1305, 164, 1, 1305, '2024-12-18 14:52:59'),
(1306, 164, 2, 1306, '2024-12-18 14:52:59'),
(1307, 164, 3, 1307, '2024-12-18 14:52:59'),
(1308, 164, 4, 1308, '2024-12-18 14:52:59'),
(1309, 164, 5, 1309, '2024-12-18 14:52:59'),
(1310, 164, 6, 1310, '2024-12-18 14:52:59'),
(1311, 164, 7, 1311, '2024-12-18 14:52:59'),
(1312, 164, 8, 1312, '2024-12-18 14:52:59'),
(1313, 165, 1, 1313, '2024-12-18 14:52:59'),
(1314, 165, 2, 1314, '2024-12-18 14:52:59'),
(1315, 165, 3, 1315, '2024-12-18 14:52:59'),
(1316, 165, 4, 1316, '2024-12-18 14:52:59'),
(1317, 165, 5, 1317, '2024-12-18 14:52:59'),
(1318, 165, 6, 1318, '2024-12-18 14:52:59'),
(1319, 165, 7, 1319, '2024-12-18 14:52:59'),
(1320, 165, 8, 1320, '2024-12-18 14:52:59'),
(1321, 166, 1, 1321, '2024-12-18 14:52:59'),
(1322, 166, 2, 1322, '2024-12-18 14:52:59'),
(1323, 166, 3, 1323, '2024-12-18 14:52:59'),
(1324, 166, 4, 1324, '2024-12-18 14:52:59'),
(1325, 166, 5, 1325, '2024-12-18 14:52:59'),
(1326, 166, 6, 1326, '2024-12-18 14:52:59'),
(1327, 166, 7, 1327, '2024-12-18 14:53:00'),
(1328, 166, 8, 1328, '2024-12-18 14:53:00'),
(1329, 167, 1, 1329, '2024-12-18 14:53:00'),
(1330, 167, 2, 1330, '2024-12-18 14:53:00'),
(1331, 167, 3, 1331, '2024-12-18 14:53:00'),
(1332, 167, 4, 1332, '2024-12-18 14:53:00'),
(1333, 167, 5, 1333, '2024-12-18 14:53:00'),
(1334, 167, 6, 1334, '2024-12-18 14:53:00'),
(1335, 167, 7, 1335, '2024-12-18 14:53:00'),
(1336, 167, 8, 1336, '2024-12-18 14:53:00'),
(1337, 168, 1, 1337, '2024-12-18 14:53:00'),
(1338, 168, 2, 1338, '2024-12-18 14:53:00'),
(1339, 168, 3, 1339, '2024-12-18 14:53:00'),
(1340, 168, 4, 1340, '2024-12-18 14:53:00'),
(1341, 168, 5, 1341, '2024-12-18 14:53:00'),
(1342, 168, 6, 1342, '2024-12-18 14:53:00'),
(1343, 168, 7, 1343, '2024-12-18 14:53:00'),
(1344, 168, 8, 1344, '2024-12-18 14:53:00'),
(1345, 169, 1, 1345, '2024-12-18 14:53:00'),
(1346, 169, 2, 1346, '2024-12-18 14:53:00'),
(1347, 169, 3, 1347, '2024-12-18 14:53:00'),
(1348, 169, 4, 1348, '2024-12-18 14:53:00'),
(1349, 169, 5, 1349, '2024-12-18 14:53:00'),
(1350, 169, 6, 1350, '2024-12-18 14:53:00'),
(1351, 169, 7, 1351, '2024-12-18 14:53:00'),
(1352, 169, 8, 1352, '2024-12-18 14:53:00'),
(1353, 170, 1, 1353, '2024-12-18 14:53:00'),
(1354, 170, 2, 1354, '2024-12-18 14:53:00'),
(1355, 170, 3, 1355, '2024-12-18 14:53:00'),
(1356, 170, 4, 1356, '2024-12-18 14:53:00'),
(1357, 170, 5, 1357, '2024-12-18 14:53:00'),
(1358, 170, 6, 1358, '2024-12-18 14:53:00'),
(1359, 170, 7, 1359, '2024-12-18 14:53:00'),
(1360, 170, 8, 1360, '2024-12-18 14:53:00'),
(1361, 171, 1, 1361, '2024-12-18 14:53:00'),
(1362, 171, 2, 1362, '2024-12-18 14:53:00'),
(1363, 171, 3, 1363, '2024-12-18 14:53:00'),
(1364, 171, 4, 1364, '2024-12-18 14:53:00'),
(1365, 171, 5, 1365, '2024-12-18 14:53:00'),
(1366, 171, 6, 1366, '2024-12-18 14:53:00'),
(1367, 171, 7, 1367, '2024-12-18 14:53:00'),
(1368, 171, 8, 1368, '2024-12-18 14:53:00'),
(1369, 172, 1, 1369, '2024-12-18 14:53:00'),
(1370, 172, 2, 1370, '2024-12-18 14:53:00'),
(1371, 172, 3, 1371, '2024-12-18 14:53:00'),
(1372, 172, 4, 1372, '2024-12-18 14:53:00'),
(1373, 172, 5, 1373, '2024-12-18 14:53:00'),
(1374, 172, 6, 1374, '2024-12-18 14:53:00'),
(1375, 172, 7, 1375, '2024-12-18 14:53:00'),
(1376, 172, 8, 1376, '2024-12-18 14:53:00'),
(1377, 173, 1, 1377, '2024-12-18 14:53:00'),
(1378, 173, 2, 1378, '2024-12-18 14:53:00'),
(1379, 173, 3, 1379, '2024-12-18 14:53:00'),
(1380, 173, 4, 1380, '2024-12-18 14:53:00'),
(1381, 173, 5, 1381, '2024-12-18 14:53:00'),
(1382, 173, 6, 1382, '2024-12-18 14:53:00'),
(1383, 173, 7, 1383, '2024-12-18 14:53:00'),
(1384, 173, 8, 1384, '2024-12-18 14:53:00'),
(1385, 174, 1, 1385, '2024-12-18 14:53:00'),
(1386, 174, 2, 1386, '2024-12-18 14:53:00'),
(1387, 174, 3, 1387, '2024-12-18 14:53:00'),
(1388, 174, 4, 1388, '2024-12-18 14:53:00'),
(1389, 174, 5, 1389, '2024-12-18 14:53:00'),
(1390, 174, 6, 1390, '2024-12-18 14:53:00'),
(1391, 174, 7, 1391, '2024-12-18 14:53:00'),
(1392, 174, 8, 1392, '2024-12-18 14:53:00'),
(1393, 175, 1, 1393, '2024-12-18 14:53:00'),
(1394, 175, 2, 1394, '2024-12-18 14:53:00'),
(1395, 175, 3, 1395, '2024-12-18 14:53:00'),
(1396, 175, 4, 1396, '2024-12-18 14:53:00'),
(1397, 175, 5, 1397, '2024-12-18 14:53:00'),
(1398, 175, 6, 1398, '2024-12-18 14:53:00'),
(1399, 175, 7, 1399, '2024-12-18 14:53:00'),
(1400, 175, 8, 1400, '2024-12-18 14:53:00'),
(1401, 176, 1, 1401, '2024-12-18 14:53:00'),
(1402, 176, 2, 1402, '2024-12-18 14:53:00'),
(1403, 176, 3, 1403, '2024-12-18 14:53:00'),
(1404, 176, 4, 1404, '2024-12-18 14:53:00'),
(1405, 176, 5, 1405, '2024-12-18 14:53:00'),
(1406, 176, 6, 1406, '2024-12-18 14:53:00'),
(1407, 176, 7, 1407, '2024-12-18 14:53:00'),
(1408, 176, 8, 1408, '2024-12-18 14:53:00'),
(1409, 177, 1, 1409, '2024-12-18 14:53:00'),
(1410, 177, 2, 1410, '2024-12-18 14:53:00'),
(1411, 177, 3, 1411, '2024-12-18 14:53:00'),
(1412, 177, 4, 1412, '2024-12-18 14:53:00'),
(1413, 177, 5, 1413, '2024-12-18 14:53:00'),
(1414, 177, 6, 1414, '2024-12-18 14:53:00'),
(1415, 177, 7, 1415, '2024-12-18 14:53:00'),
(1416, 177, 8, 1416, '2024-12-18 14:53:00'),
(1417, 178, 1, 1417, '2024-12-18 14:53:00'),
(1418, 178, 2, 1418, '2024-12-18 14:53:00'),
(1419, 178, 3, 1419, '2024-12-18 14:53:00'),
(1420, 178, 4, 1420, '2024-12-18 14:53:00'),
(1421, 178, 5, 1421, '2024-12-18 14:53:00'),
(1422, 178, 6, 1422, '2024-12-18 14:53:00'),
(1423, 178, 7, 1423, '2024-12-18 14:53:00'),
(1424, 178, 8, 1424, '2024-12-18 14:53:00'),
(1425, 179, 1, 1425, '2024-12-18 14:53:00'),
(1426, 179, 2, 1426, '2024-12-18 14:53:00'),
(1427, 179, 3, 1427, '2024-12-18 14:53:00'),
(1428, 179, 4, 1428, '2024-12-18 14:53:00'),
(1429, 179, 5, 1429, '2024-12-18 14:53:00'),
(1430, 179, 6, 1430, '2024-12-18 14:53:00'),
(1431, 179, 7, 1431, '2024-12-18 14:53:00'),
(1432, 179, 8, 1432, '2024-12-18 14:53:00'),
(1433, 180, 1, 1433, '2024-12-18 14:53:00'),
(1434, 180, 2, 1434, '2024-12-18 14:53:00'),
(1435, 180, 3, 1435, '2024-12-18 14:53:00'),
(1436, 180, 4, 1436, '2024-12-18 14:53:00'),
(1437, 180, 5, 1437, '2024-12-18 14:53:00'),
(1438, 180, 6, 1438, '2024-12-18 14:53:00'),
(1439, 180, 7, 1439, '2024-12-18 14:53:00'),
(1440, 180, 8, 1440, '2024-12-18 14:53:00'),
(1441, 181, 1, 1441, '2024-12-18 14:53:00'),
(1442, 181, 2, 1442, '2024-12-18 14:53:00'),
(1443, 181, 3, 1443, '2024-12-18 14:53:00'),
(1444, 181, 4, 1444, '2024-12-18 14:53:00'),
(1445, 181, 5, 1445, '2024-12-18 14:53:00'),
(1446, 181, 6, 1446, '2024-12-18 14:53:00'),
(1447, 181, 7, 1447, '2024-12-18 14:53:00'),
(1448, 181, 8, 1448, '2024-12-18 14:53:00'),
(1449, 182, 1, 1449, '2024-12-18 14:53:00'),
(1450, 182, 2, 1450, '2024-12-18 14:53:00'),
(1451, 182, 3, 1451, '2024-12-18 14:53:00'),
(1452, 182, 4, 1452, '2024-12-18 14:53:00'),
(1453, 182, 5, 1453, '2024-12-18 14:53:00'),
(1454, 182, 6, 1454, '2024-12-18 14:53:00'),
(1455, 182, 7, 1455, '2024-12-18 14:53:00'),
(1456, 182, 8, 1456, '2024-12-18 14:53:00'),
(1457, 183, 1, 1457, '2024-12-18 14:53:00'),
(1458, 183, 2, 1458, '2024-12-18 14:53:00'),
(1459, 183, 3, 1459, '2024-12-18 14:53:00'),
(1460, 183, 4, 1460, '2024-12-18 14:53:00'),
(1461, 183, 5, 1461, '2024-12-18 14:53:00'),
(1462, 183, 6, 1462, '2024-12-18 14:53:00'),
(1463, 183, 7, 1463, '2024-12-18 14:53:00'),
(1464, 183, 8, 1464, '2024-12-18 14:53:00'),
(1465, 184, 1, 1465, '2024-12-18 14:53:00'),
(1466, 184, 2, 1466, '2024-12-18 14:53:00'),
(1467, 184, 3, 1467, '2024-12-18 14:53:00'),
(1468, 184, 4, 1468, '2024-12-18 14:53:00'),
(1469, 184, 5, 1469, '2024-12-18 14:53:00'),
(1470, 184, 6, 1470, '2024-12-18 14:53:00'),
(1471, 184, 7, 1471, '2024-12-18 14:53:00'),
(1472, 184, 8, 1472, '2024-12-18 14:53:00'),
(1473, 185, 1, 1473, '2024-12-18 14:53:00'),
(1474, 185, 2, 1474, '2024-12-18 14:53:00'),
(1475, 185, 3, 1475, '2024-12-18 14:53:00'),
(1476, 185, 4, 1476, '2024-12-18 14:53:00'),
(1477, 185, 5, 1477, '2024-12-18 14:53:00'),
(1478, 185, 6, 1478, '2024-12-18 14:53:00'),
(1479, 185, 7, 1479, '2024-12-18 14:53:00'),
(1480, 185, 8, 1480, '2024-12-18 14:53:00'),
(1481, 186, 1, 1481, '2024-12-18 14:53:00'),
(1482, 186, 2, 1482, '2024-12-18 14:53:00'),
(1483, 186, 3, 1483, '2024-12-18 14:53:00'),
(1484, 186, 4, 1484, '2024-12-18 14:53:00'),
(1485, 186, 5, 1485, '2024-12-18 14:53:00'),
(1486, 186, 6, 1486, '2024-12-18 14:53:00'),
(1487, 186, 7, 1487, '2024-12-18 14:53:00'),
(1488, 186, 8, 1488, '2024-12-18 14:53:00'),
(1489, 187, 1, 1489, '2024-12-18 14:53:00'),
(1490, 187, 2, 1490, '2024-12-18 14:53:00'),
(1491, 187, 3, 1491, '2024-12-18 14:53:00'),
(1492, 187, 4, 1492, '2024-12-18 14:53:00'),
(1493, 187, 5, 1493, '2024-12-18 14:53:00'),
(1494, 187, 6, 1494, '2024-12-18 14:53:00'),
(1495, 187, 7, 1495, '2024-12-18 14:53:00'),
(1496, 187, 8, 1496, '2024-12-18 14:53:00'),
(1497, 188, 1, 1497, '2024-12-18 14:53:00'),
(1498, 188, 2, 1498, '2024-12-18 14:53:00'),
(1499, 188, 3, 1499, '2024-12-18 14:53:00'),
(1500, 188, 4, 1500, '2024-12-18 14:53:00'),
(1501, 188, 5, 1501, '2024-12-18 14:53:00'),
(1502, 188, 6, 1502, '2024-12-18 14:53:00'),
(1503, 188, 7, 1503, '2024-12-18 14:53:00'),
(1504, 188, 8, 1504, '2024-12-18 14:53:00'),
(1505, 189, 1, 1505, '2024-12-18 14:53:00'),
(1506, 189, 2, 1506, '2024-12-18 14:53:00'),
(1507, 189, 3, 1507, '2024-12-18 14:53:00'),
(1508, 189, 4, 1508, '2024-12-18 14:53:00'),
(1509, 189, 5, 1509, '2024-12-18 14:53:00'),
(1510, 189, 6, 1510, '2024-12-18 14:53:00'),
(1511, 189, 7, 1511, '2024-12-18 14:53:00'),
(1512, 189, 8, 1512, '2024-12-18 14:53:00'),
(1513, 190, 1, 1513, '2024-12-18 14:53:00'),
(1514, 190, 2, 1514, '2024-12-18 14:53:00'),
(1515, 190, 3, 1515, '2024-12-18 14:53:00'),
(1516, 190, 4, 1516, '2024-12-18 14:53:00'),
(1517, 190, 5, 1517, '2024-12-18 14:53:00'),
(1518, 190, 6, 1518, '2024-12-18 14:53:00'),
(1519, 190, 7, 1519, '2024-12-18 14:53:00'),
(1520, 190, 8, 1520, '2024-12-18 14:53:00'),
(1521, 191, 1, 1521, '2024-12-18 14:53:00'),
(1522, 191, 2, 1522, '2024-12-18 14:53:00'),
(1523, 191, 3, 1523, '2024-12-18 14:53:00'),
(1524, 191, 4, 1524, '2024-12-18 14:53:00'),
(1525, 191, 5, 1525, '2024-12-18 14:53:00'),
(1526, 191, 6, 1526, '2024-12-18 14:53:00'),
(1527, 191, 7, 1527, '2024-12-18 14:53:00'),
(1528, 191, 8, 1528, '2024-12-18 14:53:00'),
(1529, 192, 1, 1529, '2024-12-18 14:53:00'),
(1530, 192, 2, 1530, '2024-12-18 14:53:00'),
(1531, 192, 3, 1531, '2024-12-18 14:53:00'),
(1532, 192, 4, 1532, '2024-12-18 14:53:00'),
(1533, 192, 5, 1533, '2024-12-18 14:53:00'),
(1534, 192, 6, 1534, '2024-12-18 14:53:00'),
(1535, 192, 7, 1535, '2024-12-18 14:53:00'),
(1536, 192, 8, 1536, '2024-12-18 14:53:00'),
(1537, 193, 1, 1537, '2024-12-18 14:53:00'),
(1538, 193, 2, 1538, '2024-12-18 14:53:00'),
(1539, 193, 3, 1539, '2024-12-18 14:53:00'),
(1540, 193, 4, 1540, '2024-12-18 14:53:00'),
(1541, 193, 5, 1541, '2024-12-18 14:53:00'),
(1542, 193, 6, 1542, '2024-12-18 14:53:00'),
(1543, 193, 7, 1543, '2024-12-18 14:53:00'),
(1544, 193, 8, 1544, '2024-12-18 14:53:00'),
(1545, 194, 1, 1545, '2024-12-18 14:53:00'),
(1546, 194, 2, 1546, '2024-12-18 14:53:00'),
(1547, 194, 3, 1547, '2024-12-18 14:53:00'),
(1548, 194, 4, 1548, '2024-12-18 14:53:00'),
(1549, 194, 5, 1549, '2024-12-18 14:53:00'),
(1550, 194, 6, 1550, '2024-12-18 14:53:00'),
(1551, 194, 7, 1551, '2024-12-18 14:53:00'),
(1552, 194, 8, 1552, '2024-12-18 14:53:00'),
(1553, 195, 1, 1553, '2024-12-18 14:53:00'),
(1554, 195, 2, 1554, '2024-12-18 14:53:00'),
(1555, 195, 3, 1555, '2024-12-18 14:53:00'),
(1556, 195, 4, 1556, '2024-12-18 14:53:00'),
(1557, 195, 5, 1557, '2024-12-18 14:53:00'),
(1558, 195, 6, 1558, '2024-12-18 14:53:00'),
(1559, 195, 7, 1559, '2024-12-18 14:53:00'),
(1560, 195, 8, 1560, '2024-12-18 14:53:00'),
(1561, 196, 1, 1561, '2024-12-18 14:53:00'),
(1562, 196, 2, 1562, '2024-12-18 14:53:00'),
(1563, 196, 3, 1563, '2024-12-18 14:53:00'),
(1564, 196, 4, 1564, '2024-12-18 14:53:00'),
(1565, 196, 5, 1565, '2024-12-18 14:53:00'),
(1566, 196, 6, 1566, '2024-12-18 14:53:00'),
(1567, 196, 7, 1567, '2024-12-18 14:53:00'),
(1568, 196, 8, 1568, '2024-12-18 14:53:00'),
(1569, 197, 1, 1569, '2024-12-18 14:53:00'),
(1570, 197, 2, 1570, '2024-12-18 14:53:00'),
(1571, 197, 3, 1571, '2024-12-18 14:53:00'),
(1572, 197, 4, 1572, '2024-12-18 14:53:00'),
(1573, 197, 5, 1573, '2024-12-18 14:53:00'),
(1574, 197, 6, 1574, '2024-12-18 14:53:00'),
(1575, 197, 7, 1575, '2024-12-18 14:53:00'),
(1576, 197, 8, 1576, '2024-12-18 14:53:00'),
(1577, 198, 1, 1577, '2024-12-18 14:53:00'),
(1578, 198, 2, 1578, '2024-12-18 14:53:00'),
(1579, 198, 3, 1579, '2024-12-18 14:53:00'),
(1580, 198, 4, 1580, '2024-12-18 14:53:00'),
(1581, 198, 5, 1581, '2024-12-18 14:53:00'),
(1582, 198, 6, 1582, '2024-12-18 14:53:00'),
(1583, 198, 7, 1583, '2024-12-18 14:53:00'),
(1584, 198, 8, 1584, '2024-12-18 14:53:00'),
(1585, 199, 1, 1585, '2024-12-18 14:53:00'),
(1586, 199, 2, 1586, '2024-12-18 14:53:00'),
(1587, 199, 3, 1587, '2024-12-18 14:53:00'),
(1588, 199, 4, 1588, '2024-12-18 14:53:00'),
(1589, 199, 5, 1589, '2024-12-18 14:53:00'),
(1590, 199, 6, 1590, '2024-12-18 14:53:00'),
(1591, 199, 7, 1591, '2024-12-18 14:53:00'),
(1592, 199, 8, 1592, '2024-12-18 14:53:00'),
(1593, 200, 1, 1593, '2024-12-18 14:53:00'),
(1594, 200, 2, 1594, '2024-12-18 14:53:00'),
(1595, 200, 3, 1595, '2024-12-18 14:53:00'),
(1596, 200, 4, 1596, '2024-12-18 14:53:00'),
(1597, 200, 5, 1597, '2024-12-18 14:53:00'),
(1598, 200, 6, 1598, '2024-12-18 14:53:00'),
(1599, 200, 7, 1599, '2024-12-18 14:53:00'),
(1600, 200, 8, 1600, '2024-12-18 14:53:00'),
(1601, 201, 1, 1601, '2024-12-18 14:53:00'),
(1602, 201, 2, 1602, '2024-12-18 14:53:00'),
(1603, 201, 3, 1603, '2024-12-18 14:53:00'),
(1604, 201, 4, 1604, '2024-12-18 14:53:00'),
(1605, 201, 5, 1605, '2024-12-18 14:53:00'),
(1606, 201, 6, 1606, '2024-12-18 14:53:00'),
(1607, 201, 7, 1607, '2024-12-18 14:53:00'),
(1608, 201, 8, 1608, '2024-12-18 14:53:00'),
(1609, 202, 1, 1609, '2024-12-18 14:53:00'),
(1610, 202, 2, 1610, '2024-12-18 14:53:00'),
(1611, 202, 3, 1611, '2024-12-18 14:53:00'),
(1612, 202, 4, 1612, '2024-12-18 14:53:00'),
(1613, 202, 5, 1613, '2024-12-18 14:53:00'),
(1614, 202, 6, 1614, '2024-12-18 14:53:00'),
(1615, 202, 7, 1615, '2024-12-18 14:53:00'),
(1616, 202, 8, 1616, '2024-12-18 14:53:00'),
(1617, 203, 1, 1617, '2024-12-18 14:53:00'),
(1618, 203, 2, 1618, '2024-12-18 14:53:00'),
(1619, 203, 3, 1619, '2024-12-18 14:53:00'),
(1620, 203, 4, 1620, '2024-12-18 14:53:00'),
(1621, 203, 5, 1621, '2024-12-18 14:53:00'),
(1622, 203, 6, 1622, '2024-12-18 14:53:00'),
(1623, 203, 7, 1623, '2024-12-18 14:53:00'),
(1624, 203, 8, 1624, '2024-12-18 14:53:00'),
(1625, 204, 1, 1625, '2024-12-18 14:53:00'),
(1626, 204, 2, 1626, '2024-12-18 14:53:00'),
(1627, 204, 3, 1627, '2024-12-18 14:53:00'),
(1628, 204, 4, 1628, '2024-12-18 14:53:00'),
(1629, 204, 5, 1629, '2024-12-18 14:53:00'),
(1630, 204, 6, 1630, '2024-12-18 14:53:00'),
(1631, 204, 7, 1631, '2024-12-18 14:53:00'),
(1632, 204, 8, 1632, '2024-12-18 14:53:00'),
(1633, 205, 1, 1633, '2024-12-18 14:53:00'),
(1634, 205, 2, 1634, '2024-12-18 14:53:00'),
(1635, 205, 3, 1635, '2024-12-18 14:53:00'),
(1636, 205, 4, 1636, '2024-12-18 14:53:00'),
(1637, 205, 5, 1637, '2024-12-18 14:53:00'),
(1638, 205, 6, 1638, '2024-12-18 14:53:00'),
(1639, 205, 7, 1639, '2024-12-18 14:53:00'),
(1640, 205, 8, 1640, '2024-12-18 14:53:00'),
(1641, 206, 1, 1641, '2024-12-18 14:53:00'),
(1642, 206, 2, 1642, '2024-12-18 14:53:00'),
(1643, 206, 3, 1643, '2024-12-18 14:53:00'),
(1644, 206, 4, 1644, '2024-12-18 14:53:00'),
(1645, 206, 5, 1645, '2024-12-18 14:53:00'),
(1646, 206, 6, 1646, '2024-12-18 14:53:00'),
(1647, 206, 7, 1647, '2024-12-18 14:53:00'),
(1648, 206, 8, 1648, '2024-12-18 14:53:00'),
(1649, 207, 1, 1649, '2024-12-18 14:53:00'),
(1650, 207, 2, 1650, '2024-12-18 14:53:00'),
(1651, 207, 3, 1651, '2024-12-18 14:53:00'),
(1652, 207, 4, 1652, '2024-12-18 14:53:00'),
(1653, 207, 5, 1653, '2024-12-18 14:53:00'),
(1654, 207, 6, 1654, '2024-12-18 14:53:00'),
(1655, 207, 7, 1655, '2024-12-18 14:53:00'),
(1656, 207, 8, 1656, '2024-12-18 14:53:00'),
(1657, 208, 1, 1657, '2024-12-18 14:53:00'),
(1658, 208, 2, 1658, '2024-12-18 14:53:00'),
(1659, 208, 3, 1659, '2024-12-18 14:53:00'),
(1660, 208, 4, 1660, '2024-12-18 14:53:00'),
(1661, 208, 5, 1661, '2024-12-18 14:53:00'),
(1662, 208, 6, 1662, '2024-12-18 14:53:00'),
(1663, 208, 7, 1663, '2024-12-18 14:53:00'),
(1664, 208, 8, 1664, '2024-12-18 14:53:00'),
(1665, 209, 1, 1665, '2024-12-18 14:53:00'),
(1666, 209, 2, 1666, '2024-12-18 14:53:00'),
(1667, 209, 3, 1667, '2024-12-18 14:53:00'),
(1668, 209, 4, 1668, '2024-12-18 14:53:00'),
(1669, 209, 5, 1669, '2024-12-18 14:53:00'),
(1670, 209, 6, 1670, '2024-12-18 14:53:00'),
(1671, 209, 7, 1671, '2024-12-18 14:53:00'),
(1672, 209, 8, 1672, '2024-12-18 14:53:00'),
(1673, 210, 1, 1673, '2024-12-18 14:53:00'),
(1674, 210, 2, 1674, '2024-12-18 14:53:00'),
(1675, 210, 3, 1675, '2024-12-18 14:53:00'),
(1676, 210, 4, 1676, '2024-12-18 14:53:00'),
(1677, 210, 5, 1677, '2024-12-18 14:53:00'),
(1678, 210, 6, 1678, '2024-12-18 14:53:00'),
(1679, 210, 7, 1679, '2024-12-18 14:53:00'),
(1680, 210, 8, 1680, '2024-12-18 14:53:00'),
(1681, 211, 1, 1681, '2024-12-18 14:53:00'),
(1682, 211, 2, 1682, '2024-12-18 14:53:00'),
(1683, 211, 3, 1683, '2024-12-18 14:53:00'),
(1684, 211, 4, 1684, '2024-12-18 14:53:00'),
(1685, 211, 5, 1685, '2024-12-18 14:53:00'),
(1686, 211, 6, 1686, '2024-12-18 14:53:00'),
(1687, 211, 7, 1687, '2024-12-18 14:53:00'),
(1688, 211, 8, 1688, '2024-12-18 14:53:00'),
(1689, 212, 1, 1689, '2024-12-18 14:53:00'),
(1690, 212, 2, 1690, '2024-12-18 14:53:00'),
(1691, 212, 3, 1691, '2024-12-18 14:53:00'),
(1692, 212, 4, 1692, '2024-12-18 14:53:00'),
(1693, 212, 5, 1693, '2024-12-18 14:53:00'),
(1694, 212, 6, 1694, '2024-12-18 14:53:00'),
(1695, 212, 7, 1695, '2024-12-18 14:53:00'),
(1696, 212, 8, 1696, '2024-12-18 14:53:00'),
(1697, 213, 1, 1697, '2024-12-18 14:53:00'),
(1698, 213, 2, 1698, '2024-12-18 14:53:00'),
(1699, 213, 3, 1699, '2024-12-18 14:53:00'),
(1700, 213, 4, 1700, '2024-12-18 14:53:00'),
(1701, 213, 5, 1701, '2024-12-18 14:53:00'),
(1702, 213, 6, 1702, '2024-12-18 14:53:00'),
(1703, 213, 7, 1703, '2024-12-18 14:53:00'),
(1704, 213, 8, 1704, '2024-12-18 14:53:00'),
(1705, 214, 1, 1705, '2024-12-18 14:53:00'),
(1706, 214, 2, 1706, '2024-12-18 14:53:00'),
(1707, 214, 3, 1707, '2024-12-18 14:53:00'),
(1708, 214, 4, 1708, '2024-12-18 14:53:00'),
(1709, 214, 5, 1709, '2024-12-18 14:53:00'),
(1710, 214, 6, 1710, '2024-12-18 14:53:00'),
(1711, 214, 7, 1711, '2024-12-18 14:53:00'),
(1712, 214, 8, 1712, '2024-12-18 14:53:00'),
(1713, 215, 1, 1713, '2024-12-18 14:53:00'),
(1714, 215, 2, 1714, '2024-12-18 14:53:00'),
(1715, 215, 3, 1715, '2024-12-18 14:53:00'),
(1716, 215, 4, 1716, '2024-12-18 14:53:00'),
(1717, 215, 5, 1717, '2024-12-18 14:53:00'),
(1718, 215, 6, 1718, '2024-12-18 14:53:00'),
(1719, 215, 7, 1719, '2024-12-18 14:53:00'),
(1720, 215, 8, 1720, '2024-12-18 14:53:00'),
(1721, 216, 1, 1721, '2024-12-18 14:53:00'),
(1722, 216, 2, 1722, '2024-12-18 14:53:00'),
(1723, 216, 3, 1723, '2024-12-18 14:53:00'),
(1724, 216, 4, 1724, '2024-12-18 14:53:00'),
(1725, 216, 5, 1725, '2024-12-18 14:53:00'),
(1726, 216, 6, 1726, '2024-12-18 14:53:00'),
(1727, 216, 7, 1727, '2024-12-18 14:53:00'),
(1728, 216, 8, 1728, '2024-12-18 14:53:00'),
(1729, 217, 1, 1729, '2024-12-18 14:53:00'),
(1730, 217, 2, 1730, '2024-12-18 14:53:00'),
(1731, 217, 3, 1731, '2024-12-18 14:53:00'),
(1732, 217, 4, 1732, '2024-12-18 14:53:00'),
(1733, 217, 5, 1733, '2024-12-18 14:53:00'),
(1734, 217, 6, 1734, '2024-12-18 14:53:00'),
(1735, 217, 7, 1735, '2024-12-18 14:53:00'),
(1736, 217, 8, 1736, '2024-12-18 14:53:00'),
(1737, 218, 1, 1737, '2024-12-18 14:53:00'),
(1738, 218, 2, 1738, '2024-12-18 14:53:00'),
(1739, 218, 3, 1739, '2024-12-18 14:53:00'),
(1740, 218, 4, 1740, '2024-12-18 14:53:00'),
(1741, 218, 5, 1741, '2024-12-18 14:53:00'),
(1742, 218, 6, 1742, '2024-12-18 14:53:00'),
(1743, 218, 7, 1743, '2024-12-18 14:53:00'),
(1744, 218, 8, 1744, '2024-12-18 14:53:00'),
(1745, 219, 1, 1745, '2024-12-18 14:53:00'),
(1746, 219, 2, 1746, '2024-12-18 14:53:00'),
(1747, 219, 3, 1747, '2024-12-18 14:53:00'),
(1748, 219, 4, 1748, '2024-12-18 14:53:00'),
(1749, 219, 5, 1749, '2024-12-18 14:53:00'),
(1750, 219, 6, 1750, '2024-12-18 14:53:00'),
(1751, 219, 7, 1751, '2024-12-18 14:53:00'),
(1752, 219, 8, 1752, '2024-12-18 14:53:00'),
(1753, 220, 1, 1753, '2024-12-18 14:53:00'),
(1754, 220, 2, 1754, '2024-12-18 14:53:00'),
(1755, 220, 3, 1755, '2024-12-18 14:53:00'),
(1756, 220, 4, 1756, '2024-12-18 14:53:00'),
(1757, 220, 5, 1757, '2024-12-18 14:53:00'),
(1758, 220, 6, 1758, '2024-12-18 14:53:00'),
(1759, 220, 7, 1759, '2024-12-18 14:53:00'),
(1760, 220, 8, 1760, '2024-12-18 14:53:00'),
(1761, 221, 1, 1761, '2024-12-18 14:53:00'),
(1762, 221, 2, 1762, '2024-12-18 14:53:00'),
(1763, 221, 3, 1763, '2024-12-18 14:53:00'),
(1764, 221, 4, 1764, '2024-12-18 14:53:00'),
(1765, 221, 5, 1765, '2024-12-18 14:53:00'),
(1766, 221, 6, 1766, '2024-12-18 14:53:00'),
(1767, 221, 7, 1767, '2024-12-18 14:53:00'),
(1768, 221, 8, 1768, '2024-12-18 14:53:00'),
(1769, 222, 1, 1769, '2024-12-18 14:53:00'),
(1770, 222, 2, 1770, '2024-12-18 14:53:01'),
(1771, 222, 3, 1771, '2024-12-18 14:53:01'),
(1772, 222, 4, 1772, '2024-12-18 14:53:01'),
(1773, 222, 5, 1773, '2024-12-18 14:53:01'),
(1774, 222, 6, 1774, '2024-12-18 14:53:01'),
(1775, 222, 7, 1775, '2024-12-18 14:53:01'),
(1776, 222, 8, 1776, '2024-12-18 14:53:01'),
(1777, 223, 1, 1777, '2024-12-18 14:53:01'),
(1778, 223, 2, 1778, '2024-12-18 14:53:01'),
(1779, 223, 3, 1779, '2024-12-18 14:53:01'),
(1780, 223, 4, 1780, '2024-12-18 14:53:01'),
(1781, 223, 5, 1781, '2024-12-18 14:53:01'),
(1782, 223, 6, 1782, '2024-12-18 14:53:01'),
(1783, 223, 7, 1783, '2024-12-18 14:53:01'),
(1784, 223, 8, 1784, '2024-12-18 14:53:01'),
(1785, 224, 1, 1785, '2024-12-18 14:53:01'),
(1786, 224, 2, 1786, '2024-12-18 14:53:01'),
(1787, 224, 3, 1787, '2024-12-18 14:53:01'),
(1788, 224, 4, 1788, '2024-12-18 14:53:01'),
(1789, 224, 5, 1789, '2024-12-18 14:53:01'),
(1790, 224, 6, 1790, '2024-12-18 14:53:01'),
(1791, 224, 7, 1791, '2024-12-18 14:53:01'),
(1792, 224, 8, 1792, '2024-12-18 14:53:01'),
(1793, 225, 1, 1793, '2024-12-18 14:53:01'),
(1794, 225, 2, 1794, '2024-12-18 14:53:01'),
(1795, 225, 3, 1795, '2024-12-18 14:53:01'),
(1796, 225, 4, 1796, '2024-12-18 14:53:01'),
(1797, 225, 5, 1797, '2024-12-18 14:53:01'),
(1798, 225, 6, 1798, '2024-12-18 14:53:01'),
(1799, 225, 7, 1799, '2024-12-18 14:53:01'),
(1800, 225, 8, 1800, '2024-12-18 14:53:01'),
(1801, 226, 1, 1801, '2024-12-18 14:53:01'),
(1802, 226, 2, 1802, '2024-12-18 14:53:01'),
(1803, 226, 3, 1803, '2024-12-18 14:53:01'),
(1804, 226, 4, 1804, '2024-12-18 14:53:01'),
(1805, 226, 5, 1805, '2024-12-18 14:53:01'),
(1806, 226, 6, 1806, '2024-12-18 14:53:01'),
(1807, 226, 7, 1807, '2024-12-18 14:53:01'),
(1808, 226, 8, 1808, '2024-12-18 14:53:01'),
(1809, 227, 1, 1809, '2024-12-18 14:53:01'),
(1810, 227, 2, 1810, '2024-12-18 14:53:01'),
(1811, 227, 3, 1811, '2024-12-18 14:53:01'),
(1812, 227, 4, 1812, '2024-12-18 14:53:01'),
(1813, 227, 5, 1813, '2024-12-18 14:53:01'),
(1814, 227, 6, 1814, '2024-12-18 14:53:01'),
(1815, 227, 7, 1815, '2024-12-18 14:53:01'),
(1816, 227, 8, 1816, '2024-12-18 14:53:01'),
(1817, 228, 1, 1817, '2024-12-18 14:53:01'),
(1818, 228, 2, 1818, '2024-12-18 14:53:01'),
(1819, 228, 3, 1819, '2024-12-18 14:53:01'),
(1820, 228, 4, 1820, '2024-12-18 14:53:01'),
(1821, 228, 5, 1821, '2024-12-18 14:53:01'),
(1822, 228, 6, 1822, '2024-12-18 14:53:01'),
(1823, 228, 7, 1823, '2024-12-18 14:53:01'),
(1824, 228, 8, 1824, '2024-12-18 14:53:01'),
(1825, 229, 1, 1825, '2024-12-18 14:53:01'),
(1826, 229, 2, 1826, '2024-12-18 14:53:01'),
(1827, 229, 3, 1827, '2024-12-18 14:53:01'),
(1828, 229, 4, 1828, '2024-12-18 14:53:01'),
(1829, 229, 5, 1829, '2024-12-18 14:53:01'),
(1830, 229, 6, 1830, '2024-12-18 14:53:01'),
(1831, 229, 7, 1831, '2024-12-18 14:53:01'),
(1832, 229, 8, 1832, '2024-12-18 14:53:01'),
(1833, 230, 1, 1833, '2024-12-18 14:53:01'),
(1834, 230, 2, 1834, '2024-12-18 14:53:01'),
(1835, 230, 3, 1835, '2024-12-18 14:53:01'),
(1836, 230, 4, 1836, '2024-12-18 14:53:01'),
(1837, 230, 5, 1837, '2024-12-18 14:53:01'),
(1838, 230, 6, 1838, '2024-12-18 14:53:01'),
(1839, 230, 7, 1839, '2024-12-18 14:53:01'),
(1840, 230, 8, 1840, '2024-12-18 14:53:01'),
(1841, 231, 1, 1841, '2024-12-18 14:53:01'),
(1842, 231, 2, 1842, '2024-12-18 14:53:01'),
(1843, 231, 3, 1843, '2024-12-18 14:53:01'),
(1844, 231, 4, 1844, '2024-12-18 14:53:01'),
(1845, 231, 5, 1845, '2024-12-18 14:53:01'),
(1846, 231, 6, 1846, '2024-12-18 14:53:01'),
(1847, 231, 7, 1847, '2024-12-18 14:53:01'),
(1848, 231, 8, 1848, '2024-12-18 14:53:01'),
(1849, 232, 1, 1849, '2024-12-18 14:53:01'),
(1850, 232, 2, 1850, '2024-12-18 14:53:01'),
(1851, 232, 3, 1851, '2024-12-18 14:53:01'),
(1852, 232, 4, 1852, '2024-12-18 14:53:01'),
(1853, 232, 5, 1853, '2024-12-18 14:53:01'),
(1854, 232, 6, 1854, '2024-12-18 14:53:01'),
(1855, 232, 7, 1855, '2024-12-18 14:53:01'),
(1856, 232, 8, 1856, '2024-12-18 14:53:01'),
(1857, 233, 1, 1857, '2024-12-18 14:53:01'),
(1858, 233, 2, 1858, '2024-12-18 14:53:01'),
(1859, 233, 3, 1859, '2024-12-18 14:53:01'),
(1860, 233, 4, 1860, '2024-12-18 14:53:01'),
(1861, 233, 5, 1861, '2024-12-18 14:53:01'),
(1862, 233, 6, 1862, '2024-12-18 14:53:01'),
(1863, 233, 7, 1863, '2024-12-18 14:53:01'),
(1864, 233, 8, 1864, '2024-12-18 14:53:01'),
(1865, 234, 1, 1865, '2024-12-18 14:53:01'),
(1866, 234, 2, 1866, '2024-12-18 14:53:01'),
(1867, 234, 3, 1867, '2024-12-18 14:53:01'),
(1868, 234, 4, 1868, '2024-12-18 14:53:01'),
(1869, 234, 5, 1869, '2024-12-18 14:53:01'),
(1870, 234, 6, 1870, '2024-12-18 14:53:01'),
(1871, 234, 7, 1871, '2024-12-18 14:53:01'),
(1872, 234, 8, 1872, '2024-12-18 14:53:01'),
(1873, 235, 1, 1873, '2024-12-18 14:53:01'),
(1874, 235, 2, 1874, '2024-12-18 14:53:01'),
(1875, 235, 3, 1875, '2024-12-18 14:53:01'),
(1876, 235, 4, 1876, '2024-12-18 14:53:01'),
(1877, 235, 5, 1877, '2024-12-18 14:53:01'),
(1878, 235, 6, 1878, '2024-12-18 14:53:01'),
(1879, 235, 7, 1879, '2024-12-18 14:53:01'),
(1880, 235, 8, 1880, '2024-12-18 14:53:01'),
(1881, 236, 1, 1881, '2024-12-18 14:53:01'),
(1882, 236, 2, 1882, '2024-12-18 14:53:01'),
(1883, 236, 3, 1883, '2024-12-18 14:53:01'),
(1884, 236, 4, 1884, '2024-12-18 14:53:01'),
(1885, 236, 5, 1885, '2024-12-18 14:53:01'),
(1886, 236, 6, 1886, '2024-12-18 14:53:01'),
(1887, 236, 7, 1887, '2024-12-18 14:53:01'),
(1888, 236, 8, 1888, '2024-12-18 14:53:01'),
(1889, 237, 1, 1889, '2024-12-18 14:53:01'),
(1890, 237, 2, 1890, '2024-12-18 14:53:01'),
(1891, 237, 3, 1891, '2024-12-18 14:53:01'),
(1892, 237, 4, 1892, '2024-12-18 14:53:01'),
(1893, 237, 5, 1893, '2024-12-18 14:53:01'),
(1894, 237, 6, 1894, '2024-12-18 14:53:01'),
(1895, 237, 7, 1895, '2024-12-18 14:53:01'),
(1896, 237, 8, 1896, '2024-12-18 14:53:01'),
(1897, 238, 1, 1897, '2024-12-18 14:53:01'),
(1898, 238, 2, 1898, '2024-12-18 14:53:01'),
(1899, 238, 3, 1899, '2024-12-18 14:53:01'),
(1900, 238, 4, 1900, '2024-12-18 14:53:01'),
(1901, 238, 5, 1901, '2024-12-18 14:53:01'),
(1902, 238, 6, 1902, '2024-12-18 14:53:01'),
(1903, 238, 7, 1903, '2024-12-18 14:53:01'),
(1904, 238, 8, 1904, '2024-12-18 14:53:01'),
(1905, 239, 1, 1905, '2024-12-18 14:53:01'),
(1906, 239, 2, 1906, '2024-12-18 14:53:01'),
(1907, 239, 3, 1907, '2024-12-18 14:53:01'),
(1908, 239, 4, 1908, '2024-12-18 14:53:01'),
(1909, 239, 5, 1909, '2024-12-18 14:53:01'),
(1910, 239, 6, 1910, '2024-12-18 14:53:01'),
(1911, 239, 7, 1911, '2024-12-18 14:53:01'),
(1912, 239, 8, 1912, '2024-12-18 14:53:01'),
(1913, 240, 1, 1913, '2024-12-18 14:53:01'),
(1914, 240, 2, 1914, '2024-12-18 14:53:01'),
(1915, 240, 3, 1915, '2024-12-18 14:53:01'),
(1916, 240, 4, 1916, '2024-12-18 14:53:01'),
(1917, 240, 5, 1917, '2024-12-18 14:53:01'),
(1918, 240, 6, 1918, '2024-12-18 14:53:01'),
(1919, 240, 7, 1919, '2024-12-18 14:53:01'),
(1920, 240, 8, 1920, '2024-12-18 14:53:01'),
(1921, 241, 1, 1921, '2024-12-18 14:53:01'),
(1922, 241, 2, 1922, '2024-12-18 14:53:01'),
(1923, 241, 3, 1923, '2024-12-18 14:53:01'),
(1924, 241, 4, 1924, '2024-12-18 14:53:01'),
(1925, 241, 5, 1925, '2024-12-18 14:53:01'),
(1926, 241, 6, 1926, '2024-12-18 14:53:01'),
(1927, 241, 7, 1927, '2024-12-18 14:53:01'),
(1928, 241, 8, 1928, '2024-12-18 14:53:01'),
(1929, 242, 1, 1929, '2024-12-18 14:53:01'),
(1930, 242, 2, 1930, '2024-12-18 14:53:01'),
(1931, 242, 3, 1931, '2024-12-18 14:53:01'),
(1932, 242, 4, 1932, '2024-12-18 14:53:01'),
(1933, 242, 5, 1933, '2024-12-18 14:53:01'),
(1934, 242, 6, 1934, '2024-12-18 14:53:01'),
(1935, 242, 7, 1935, '2024-12-18 14:53:01'),
(1936, 242, 8, 1936, '2024-12-18 14:53:01'),
(1937, 243, 1, 1937, '2024-12-18 14:53:01'),
(1938, 243, 2, 1938, '2024-12-18 14:53:01'),
(1939, 243, 3, 1939, '2024-12-18 14:53:01'),
(1940, 243, 4, 1940, '2024-12-18 14:53:01'),
(1941, 243, 5, 1941, '2024-12-18 14:53:01'),
(1942, 243, 6, 1942, '2024-12-18 14:53:01'),
(1943, 243, 7, 1943, '2024-12-18 14:53:01'),
(1944, 243, 8, 1944, '2024-12-18 14:53:01'),
(1945, 244, 1, 1945, '2024-12-18 14:53:01'),
(1946, 244, 2, 1946, '2024-12-18 14:53:01'),
(1947, 244, 3, 1947, '2024-12-18 14:53:01'),
(1948, 244, 4, 1948, '2024-12-18 14:53:01'),
(1949, 244, 5, 1949, '2024-12-18 14:53:01'),
(1950, 244, 6, 1950, '2024-12-18 14:53:01'),
(1951, 244, 7, 1951, '2024-12-18 14:53:01'),
(1952, 244, 8, 1952, '2024-12-18 14:53:01'),
(1953, 245, 1, 1953, '2024-12-18 14:53:01'),
(1954, 245, 2, 1954, '2024-12-18 14:53:01'),
(1955, 245, 3, 1955, '2024-12-18 14:53:01'),
(1956, 245, 4, 1956, '2024-12-18 14:53:01'),
(1957, 245, 5, 1957, '2024-12-18 14:53:01'),
(1958, 245, 6, 1958, '2024-12-18 14:53:01'),
(1959, 245, 7, 1959, '2024-12-18 14:53:01'),
(1960, 245, 8, 1960, '2024-12-18 14:53:01'),
(1961, 246, 1, 1961, '2024-12-18 14:53:01'),
(1962, 246, 2, 1962, '2024-12-18 14:53:01'),
(1963, 246, 3, 1963, '2024-12-18 14:53:01'),
(1964, 246, 4, 1964, '2024-12-18 14:53:01'),
(1965, 246, 5, 1965, '2024-12-18 14:53:01'),
(1966, 246, 6, 1966, '2024-12-18 14:53:01'),
(1967, 246, 7, 1967, '2024-12-18 14:53:01'),
(1968, 246, 8, 1968, '2024-12-18 14:53:01'),
(1969, 247, 1, 1969, '2024-12-18 14:53:01'),
(1970, 247, 2, 1970, '2024-12-18 14:53:01'),
(1971, 247, 3, 1971, '2024-12-18 14:53:01'),
(1972, 247, 4, 1972, '2024-12-18 14:53:01'),
(1973, 247, 5, 1973, '2024-12-18 14:53:01'),
(1974, 247, 6, 1974, '2024-12-18 14:53:01'),
(1975, 247, 7, 1975, '2024-12-18 14:53:01'),
(1976, 247, 8, 1976, '2024-12-18 14:53:01'),
(1977, 248, 1, 1977, '2024-12-18 14:53:01'),
(1978, 248, 2, 1978, '2024-12-18 14:53:01'),
(1979, 248, 3, 1979, '2024-12-18 14:53:01'),
(1980, 248, 4, 1980, '2024-12-18 14:53:01'),
(1981, 248, 5, 1981, '2024-12-18 14:53:01'),
(1982, 248, 6, 1982, '2024-12-18 14:53:01'),
(1983, 248, 7, 1983, '2024-12-18 14:53:01'),
(1984, 248, 8, 1984, '2024-12-18 14:53:01'),
(1985, 249, 1, 1985, '2024-12-18 14:53:01'),
(1986, 249, 2, 1986, '2024-12-18 14:53:01'),
(1987, 249, 3, 1987, '2024-12-18 14:53:01'),
(1988, 249, 4, 1988, '2024-12-18 14:53:01'),
(1989, 249, 5, 1989, '2024-12-18 14:53:01'),
(1990, 249, 6, 1990, '2024-12-18 14:53:01'),
(1991, 249, 7, 1991, '2024-12-18 14:53:01'),
(1992, 249, 8, 1992, '2024-12-18 14:53:01'),
(1993, 250, 1, 1993, '2024-12-18 14:53:01'),
(1994, 250, 2, 1994, '2024-12-18 14:53:01'),
(1995, 250, 3, 1995, '2024-12-18 14:53:01'),
(1996, 250, 4, 1996, '2024-12-18 14:53:01'),
(1997, 250, 5, 1997, '2024-12-18 14:53:01'),
(1998, 250, 6, 1998, '2024-12-18 14:53:01'),
(1999, 250, 7, 1999, '2024-12-18 14:53:01'),
(2000, 250, 8, 2000, '2024-12-18 14:53:01'),
(2001, 251, 1, 2001, '2024-12-18 14:53:01'),
(2002, 251, 2, 2002, '2024-12-18 14:53:01'),
(2003, 251, 3, 2003, '2024-12-18 14:53:01'),
(2004, 251, 4, 2004, '2024-12-18 14:53:01'),
(2005, 251, 5, 2005, '2024-12-18 14:53:01'),
(2006, 251, 6, 2006, '2024-12-18 14:53:01'),
(2007, 251, 7, 2007, '2024-12-18 14:53:01'),
(2008, 251, 8, 2008, '2024-12-18 14:53:01'),
(2009, 252, 1, 2009, '2024-12-18 14:53:01'),
(2010, 252, 2, 2010, '2024-12-18 14:53:01'),
(2011, 252, 3, 2011, '2024-12-18 14:53:01'),
(2012, 252, 4, 2012, '2024-12-18 14:53:01'),
(2013, 252, 5, 2013, '2024-12-18 14:53:01'),
(2014, 252, 6, 2014, '2024-12-18 14:53:01'),
(2015, 252, 7, 2015, '2024-12-18 14:53:01'),
(2016, 252, 8, 2016, '2024-12-18 14:53:01'),
(2017, 253, 1, 2017, '2024-12-18 14:53:01'),
(2018, 253, 2, 2018, '2024-12-18 14:53:01'),
(2019, 253, 3, 2019, '2024-12-18 14:53:01'),
(2020, 253, 4, 2020, '2024-12-18 14:53:01'),
(2021, 253, 5, 2021, '2024-12-18 14:53:01'),
(2022, 253, 6, 2022, '2024-12-18 14:53:01'),
(2023, 253, 7, 2023, '2024-12-18 14:53:01'),
(2024, 253, 8, 2024, '2024-12-18 14:53:01'),
(2025, 254, 1, 2025, '2024-12-18 14:53:01'),
(2026, 254, 2, 2026, '2024-12-18 14:53:01'),
(2027, 254, 3, 2027, '2024-12-18 14:53:01'),
(2028, 254, 4, 2028, '2024-12-18 14:53:01'),
(2029, 254, 5, 2029, '2024-12-18 14:53:01'),
(2030, 254, 6, 2030, '2024-12-18 14:53:01'),
(2031, 254, 7, 2031, '2024-12-18 14:53:01'),
(2032, 254, 8, 2032, '2024-12-18 14:53:01'),
(2033, 255, 1, 2033, '2024-12-18 14:53:01'),
(2034, 255, 2, 2034, '2024-12-18 14:53:01'),
(2035, 255, 3, 2035, '2024-12-18 14:53:01'),
(2036, 255, 4, 2036, '2024-12-18 14:53:01'),
(2037, 255, 5, 2037, '2024-12-18 14:53:01'),
(2038, 255, 6, 2038, '2024-12-18 14:53:01'),
(2039, 255, 7, 2039, '2024-12-18 14:53:01'),
(2040, 255, 8, 2040, '2024-12-18 14:53:01'),
(2041, 256, 1, 2041, '2024-12-18 14:53:01'),
(2042, 256, 2, 2042, '2024-12-18 14:53:01'),
(2043, 256, 3, 2043, '2024-12-18 14:53:01'),
(2044, 256, 4, 2044, '2024-12-18 14:53:01'),
(2045, 256, 5, 2045, '2024-12-18 14:53:01'),
(2046, 256, 6, 2046, '2024-12-18 14:53:01'),
(2047, 256, 7, 2047, '2024-12-18 14:53:01'),
(2048, 256, 8, 2048, '2024-12-18 14:53:01'),
(2049, 257, 1, 2049, '2024-12-18 14:53:01'),
(2050, 257, 2, 2050, '2024-12-18 14:53:01'),
(2051, 257, 3, 2051, '2024-12-18 14:53:01'),
(2052, 257, 4, 2052, '2024-12-18 14:53:01'),
(2053, 257, 5, 2053, '2024-12-18 14:53:01'),
(2054, 257, 6, 2054, '2024-12-18 14:53:01'),
(2055, 257, 7, 2055, '2024-12-18 14:53:01'),
(2056, 257, 8, 2056, '2024-12-18 14:53:01'),
(2057, 258, 1, 2057, '2024-12-18 14:53:01'),
(2058, 258, 2, 2058, '2024-12-18 14:53:01'),
(2059, 258, 3, 2059, '2024-12-18 14:53:01'),
(2060, 258, 4, 2060, '2024-12-18 14:53:01'),
(2061, 258, 5, 2061, '2024-12-18 14:53:01'),
(2062, 258, 6, 2062, '2024-12-18 14:53:01'),
(2063, 258, 7, 2063, '2024-12-18 14:53:01'),
(2064, 258, 8, 2064, '2024-12-18 14:53:01'),
(2065, 259, 1, 2065, '2024-12-18 14:53:01'),
(2066, 259, 2, 2066, '2024-12-18 14:53:01'),
(2067, 259, 3, 2067, '2024-12-18 14:53:01'),
(2068, 259, 4, 2068, '2024-12-18 14:53:01'),
(2069, 259, 5, 2069, '2024-12-18 14:53:01'),
(2070, 259, 6, 2070, '2024-12-18 14:53:01'),
(2071, 259, 7, 2071, '2024-12-18 14:53:01'),
(2072, 259, 8, 2072, '2024-12-18 14:53:01'),
(2073, 260, 1, 2073, '2024-12-18 14:53:01'),
(2074, 260, 2, 2074, '2024-12-18 14:53:01'),
(2075, 260, 3, 2075, '2024-12-18 14:53:01'),
(2076, 260, 4, 2076, '2024-12-18 14:53:01'),
(2077, 260, 5, 2077, '2024-12-18 14:53:01'),
(2078, 260, 6, 2078, '2024-12-18 14:53:01'),
(2079, 260, 7, 2079, '2024-12-18 14:53:01'),
(2080, 260, 8, 2080, '2024-12-18 14:53:01'),
(2081, 261, 1, 2081, '2024-12-18 14:53:01'),
(2082, 261, 2, 2082, '2024-12-18 14:53:01'),
(2083, 261, 3, 2083, '2024-12-18 14:53:01'),
(2084, 261, 4, 2084, '2024-12-18 14:53:01'),
(2085, 261, 5, 2085, '2024-12-18 14:53:01'),
(2086, 261, 6, 2086, '2024-12-18 14:53:01'),
(2087, 261, 7, 2087, '2024-12-18 14:53:01'),
(2088, 261, 8, 2088, '2024-12-18 14:53:01'),
(2089, 262, 1, 2089, '2024-12-18 14:53:01'),
(2090, 262, 2, 2090, '2024-12-18 14:53:01'),
(2091, 262, 3, 2091, '2024-12-18 14:53:01'),
(2092, 262, 4, 2092, '2024-12-18 14:53:01'),
(2093, 262, 5, 2093, '2024-12-18 14:53:01'),
(2094, 262, 6, 2094, '2024-12-18 14:53:01'),
(2095, 262, 7, 2095, '2024-12-18 14:53:01'),
(2096, 262, 8, 2096, '2024-12-18 14:53:01'),
(2097, 263, 1, 2097, '2024-12-18 14:53:01'),
(2098, 263, 2, 2098, '2024-12-18 14:53:01'),
(2099, 263, 3, 2099, '2024-12-18 14:53:01'),
(2100, 263, 4, 2100, '2024-12-18 14:53:01'),
(2101, 263, 5, 2101, '2024-12-18 14:53:01'),
(2102, 263, 6, 2102, '2024-12-18 14:53:01'),
(2103, 263, 7, 2103, '2024-12-18 14:53:01'),
(2104, 263, 8, 2104, '2024-12-18 14:53:01'),
(2105, 264, 1, 2105, '2024-12-18 14:53:01'),
(2106, 264, 2, 2106, '2024-12-18 14:53:01'),
(2107, 264, 3, 2107, '2024-12-18 14:53:01'),
(2108, 264, 4, 2108, '2024-12-18 14:53:01'),
(2109, 264, 5, 2109, '2024-12-18 14:53:01'),
(2110, 264, 6, 2110, '2024-12-18 14:53:01'),
(2111, 264, 7, 2111, '2024-12-18 14:53:01'),
(2112, 264, 8, 2112, '2024-12-18 14:53:01'),
(2113, 265, 1, 2113, '2024-12-18 14:53:01'),
(2114, 265, 2, 2114, '2024-12-18 14:53:01'),
(2115, 265, 3, 2115, '2024-12-18 14:53:01'),
(2116, 265, 4, 2116, '2024-12-18 14:53:01'),
(2117, 265, 5, 2117, '2024-12-18 14:53:01'),
(2118, 265, 6, 2118, '2024-12-18 14:53:01'),
(2119, 265, 7, 2119, '2024-12-18 14:53:01'),
(2120, 265, 8, 2120, '2024-12-18 14:53:01'),
(2121, 266, 1, 2121, '2024-12-18 14:53:01'),
(2122, 266, 2, 2122, '2024-12-18 14:53:01'),
(2123, 266, 3, 2123, '2024-12-18 14:53:01'),
(2124, 266, 4, 2124, '2024-12-18 14:53:01'),
(2125, 266, 5, 2125, '2024-12-18 14:53:01'),
(2126, 266, 6, 2126, '2024-12-18 14:53:01'),
(2127, 266, 7, 2127, '2024-12-18 14:53:01'),
(2128, 266, 8, 2128, '2024-12-18 14:53:01'),
(2129, 267, 1, 2129, '2024-12-18 14:53:01'),
(2130, 267, 2, 2130, '2024-12-18 14:53:01'),
(2131, 267, 3, 2131, '2024-12-18 14:53:01'),
(2132, 267, 4, 2132, '2024-12-18 14:53:01'),
(2133, 267, 5, 2133, '2024-12-18 14:53:01'),
(2134, 267, 6, 2134, '2024-12-18 14:53:01'),
(2135, 267, 7, 2135, '2024-12-18 14:53:01'),
(2136, 267, 8, 2136, '2024-12-18 14:53:01'),
(2137, 268, 1, 2137, '2024-12-18 14:53:01'),
(2138, 268, 2, 2138, '2024-12-18 14:53:01'),
(2139, 268, 3, 2139, '2024-12-18 14:53:01'),
(2140, 268, 4, 2140, '2024-12-18 14:53:01'),
(2141, 268, 5, 2141, '2024-12-18 14:53:01'),
(2142, 268, 6, 2142, '2024-12-18 14:53:01'),
(2143, 268, 7, 2143, '2024-12-18 14:53:01'),
(2144, 268, 8, 2144, '2024-12-18 14:53:01'),
(2145, 269, 1, 2145, '2024-12-18 14:53:01'),
(2146, 269, 2, 2146, '2024-12-18 14:53:01'),
(2147, 269, 3, 2147, '2024-12-18 14:53:01'),
(2148, 269, 4, 2148, '2024-12-18 14:53:01'),
(2149, 269, 5, 2149, '2024-12-18 14:53:01'),
(2150, 269, 6, 2150, '2024-12-18 14:53:01'),
(2151, 269, 7, 2151, '2024-12-18 14:53:01'),
(2152, 269, 8, 2152, '2024-12-18 14:53:01'),
(2153, 270, 1, 2153, '2024-12-18 14:53:01'),
(2154, 270, 2, 2154, '2024-12-18 14:53:01'),
(2155, 270, 3, 2155, '2024-12-18 14:53:01'),
(2156, 270, 4, 2156, '2024-12-18 14:53:01'),
(2157, 270, 5, 2157, '2024-12-18 14:53:01'),
(2158, 270, 6, 2158, '2024-12-18 14:53:01'),
(2159, 270, 7, 2159, '2024-12-18 14:53:01'),
(2160, 270, 8, 2160, '2024-12-18 14:53:01'),
(2161, 271, 1, 2161, '2024-12-18 14:53:01'),
(2162, 271, 2, 2162, '2024-12-18 14:53:01'),
(2163, 271, 3, 2163, '2024-12-18 14:53:01'),
(2164, 271, 4, 2164, '2024-12-18 14:53:01'),
(2165, 271, 5, 2165, '2024-12-18 14:53:01'),
(2166, 271, 6, 2166, '2024-12-18 14:53:01'),
(2167, 271, 7, 2167, '2024-12-18 14:53:01'),
(2168, 271, 8, 2168, '2024-12-18 14:53:01'),
(2169, 272, 1, 2169, '2024-12-18 14:53:01'),
(2170, 272, 2, 2170, '2024-12-18 14:53:01'),
(2171, 272, 3, 2171, '2024-12-18 14:53:01'),
(2172, 272, 4, 2172, '2024-12-18 14:53:01'),
(2173, 272, 5, 2173, '2024-12-18 14:53:01'),
(2174, 272, 6, 2174, '2024-12-18 14:53:01'),
(2175, 272, 7, 2175, '2024-12-18 14:53:01'),
(2176, 272, 8, 2176, '2024-12-18 14:53:01'),
(2177, 273, 1, 2177, '2024-12-18 14:53:01'),
(2178, 273, 2, 2178, '2024-12-18 14:53:01'),
(2179, 273, 3, 2179, '2024-12-18 14:53:01'),
(2180, 273, 4, 2180, '2024-12-18 14:53:01'),
(2181, 273, 5, 2181, '2024-12-18 14:53:01'),
(2182, 273, 6, 2182, '2024-12-18 14:53:01'),
(2183, 273, 7, 2183, '2024-12-18 14:53:01'),
(2184, 273, 8, 2184, '2024-12-18 14:53:01'),
(2185, 274, 1, 2185, '2024-12-18 14:53:01'),
(2186, 274, 2, 2186, '2024-12-18 14:53:01'),
(2187, 274, 3, 2187, '2024-12-18 14:53:01'),
(2188, 274, 4, 2188, '2024-12-18 14:53:01'),
(2189, 274, 5, 2189, '2024-12-18 14:53:01'),
(2190, 274, 6, 2190, '2024-12-18 14:53:01'),
(2191, 274, 7, 2191, '2024-12-18 14:53:01'),
(2192, 274, 8, 2192, '2024-12-18 14:53:01'),
(2193, 275, 1, 2193, '2024-12-18 14:53:01'),
(2194, 275, 2, 2194, '2024-12-18 14:53:01'),
(2195, 275, 3, 2195, '2024-12-18 14:53:01'),
(2196, 275, 4, 2196, '2024-12-18 14:53:01'),
(2197, 275, 5, 2197, '2024-12-18 14:53:01'),
(2198, 275, 6, 2198, '2024-12-18 14:53:01'),
(2199, 275, 7, 2199, '2024-12-18 14:53:01'),
(2200, 275, 8, 2200, '2024-12-18 14:53:01'),
(2201, 276, 1, 2201, '2024-12-18 14:53:01'),
(2202, 276, 2, 2202, '2024-12-18 14:53:01'),
(2203, 276, 3, 2203, '2024-12-18 14:53:01'),
(2204, 276, 4, 2204, '2024-12-18 14:53:01'),
(2205, 276, 5, 2205, '2024-12-18 14:53:01'),
(2206, 276, 6, 2206, '2024-12-18 14:53:01'),
(2207, 276, 7, 2207, '2024-12-18 14:53:01'),
(2208, 276, 8, 2208, '2024-12-18 14:53:01'),
(2209, 277, 1, 2209, '2024-12-18 14:53:01'),
(2210, 277, 2, 2210, '2024-12-18 14:53:01'),
(2211, 277, 3, 2211, '2024-12-18 14:53:01'),
(2212, 277, 4, 2212, '2024-12-18 14:53:01'),
(2213, 277, 5, 2213, '2024-12-18 14:53:01'),
(2214, 277, 6, 2214, '2024-12-18 14:53:01'),
(2215, 277, 7, 2215, '2024-12-18 14:53:01'),
(2216, 277, 8, 2216, '2024-12-18 14:53:01'),
(2217, 278, 1, 2217, '2024-12-18 14:53:01'),
(2218, 278, 2, 2218, '2024-12-18 14:53:01'),
(2219, 278, 3, 2219, '2024-12-18 14:53:01'),
(2220, 278, 4, 2220, '2024-12-18 14:53:01'),
(2221, 278, 5, 2221, '2024-12-18 14:53:01'),
(2222, 278, 6, 2222, '2024-12-18 14:53:01'),
(2223, 278, 7, 2223, '2024-12-18 14:53:01'),
(2224, 278, 8, 2224, '2024-12-18 14:53:01'),
(2225, 279, 1, 2225, '2024-12-18 14:53:01'),
(2226, 279, 2, 2226, '2024-12-18 14:53:01'),
(2227, 279, 3, 2227, '2024-12-18 14:53:02'),
(2228, 279, 4, 2228, '2024-12-18 14:53:02'),
(2229, 279, 5, 2229, '2024-12-18 14:53:02'),
(2230, 279, 6, 2230, '2024-12-18 14:53:02'),
(2231, 279, 7, 2231, '2024-12-18 14:53:02'),
(2232, 279, 8, 2232, '2024-12-18 14:53:02'),
(2233, 280, 1, 2233, '2024-12-18 14:53:02'),
(2234, 280, 2, 2234, '2024-12-18 14:53:02'),
(2235, 280, 3, 2235, '2024-12-18 14:53:02'),
(2236, 280, 4, 2236, '2024-12-18 14:53:02'),
(2237, 280, 5, 2237, '2024-12-18 14:53:02'),
(2238, 280, 6, 2238, '2024-12-18 14:53:02'),
(2239, 280, 7, 2239, '2024-12-18 14:53:02'),
(2240, 280, 8, 2240, '2024-12-18 14:53:02'),
(2241, 281, 1, 2241, '2024-12-18 14:53:02'),
(2242, 281, 2, 2242, '2024-12-18 14:53:02'),
(2243, 281, 3, 2243, '2024-12-18 14:53:02'),
(2244, 281, 4, 2244, '2024-12-18 14:53:02'),
(2245, 281, 5, 2245, '2024-12-18 14:53:02'),
(2246, 281, 6, 2246, '2024-12-18 14:53:02'),
(2247, 281, 7, 2247, '2024-12-18 14:53:02'),
(2248, 281, 8, 2248, '2024-12-18 14:53:02'),
(2249, 282, 1, 2249, '2024-12-18 14:53:02'),
(2250, 282, 2, 2250, '2024-12-18 14:53:02'),
(2251, 282, 3, 2251, '2024-12-18 14:53:02'),
(2252, 282, 4, 2252, '2024-12-18 14:53:02'),
(2253, 282, 5, 2253, '2024-12-18 14:53:02'),
(2254, 282, 6, 2254, '2024-12-18 14:53:02'),
(2255, 282, 7, 2255, '2024-12-18 14:53:02'),
(2256, 282, 8, 2256, '2024-12-18 14:53:02'),
(2257, 283, 1, 2257, '2024-12-18 14:53:02'),
(2258, 283, 2, 2258, '2024-12-18 14:53:02'),
(2259, 283, 3, 2259, '2024-12-18 14:53:02'),
(2260, 283, 4, 2260, '2024-12-18 14:53:02'),
(2261, 283, 5, 2261, '2024-12-18 14:53:02'),
(2262, 283, 6, 2262, '2024-12-18 14:53:02'),
(2263, 283, 7, 2263, '2024-12-18 14:53:02'),
(2264, 283, 8, 2264, '2024-12-18 14:53:02'),
(2265, 284, 1, 2265, '2024-12-18 14:53:02'),
(2266, 284, 2, 2266, '2024-12-18 14:53:02'),
(2267, 284, 3, 2267, '2024-12-18 14:53:02'),
(2268, 284, 4, 2268, '2024-12-18 14:53:02'),
(2269, 284, 5, 2269, '2024-12-18 14:53:02'),
(2270, 284, 6, 2270, '2024-12-18 14:53:02'),
(2271, 284, 7, 2271, '2024-12-18 14:53:02'),
(2272, 284, 8, 2272, '2024-12-18 14:53:02'),
(2273, 285, 1, 2273, '2024-12-18 14:53:02'),
(2274, 285, 2, 2274, '2024-12-18 14:53:02'),
(2275, 285, 3, 2275, '2024-12-18 14:53:02'),
(2276, 285, 4, 2276, '2024-12-18 14:53:02'),
(2277, 285, 5, 2277, '2024-12-18 14:53:02'),
(2278, 285, 6, 2278, '2024-12-18 14:53:02'),
(2279, 285, 7, 2279, '2024-12-18 14:53:02'),
(2280, 285, 8, 2280, '2024-12-18 14:53:02'),
(2281, 286, 1, 2281, '2024-12-18 14:53:02'),
(2282, 286, 2, 2282, '2024-12-18 14:53:02'),
(2283, 286, 3, 2283, '2024-12-18 14:53:02'),
(2284, 286, 4, 2284, '2024-12-18 14:53:02'),
(2285, 286, 5, 2285, '2024-12-18 14:53:02'),
(2286, 286, 6, 2286, '2024-12-18 14:53:02'),
(2287, 286, 7, 2287, '2024-12-18 14:53:02'),
(2288, 286, 8, 2288, '2024-12-18 14:53:02'),
(2289, 287, 1, 2289, '2024-12-18 14:53:02'),
(2290, 287, 2, 2290, '2024-12-18 14:53:02'),
(2291, 287, 3, 2291, '2024-12-18 14:53:02'),
(2292, 287, 4, 2292, '2024-12-18 14:53:02'),
(2293, 287, 5, 2293, '2024-12-18 14:53:02'),
(2294, 287, 6, 2294, '2024-12-18 14:53:02'),
(2295, 287, 7, 2295, '2024-12-18 14:53:02'),
(2296, 287, 8, 2296, '2024-12-18 14:53:02'),
(2297, 288, 1, 2297, '2024-12-18 14:53:02'),
(2298, 288, 2, 2298, '2024-12-18 14:53:02'),
(2299, 288, 3, 2299, '2024-12-18 14:53:02'),
(2300, 288, 4, 2300, '2024-12-18 14:53:02'),
(2301, 288, 5, 2301, '2024-12-18 14:53:02'),
(2302, 288, 6, 2302, '2024-12-18 14:53:02'),
(2303, 288, 7, 2303, '2024-12-18 14:53:02'),
(2304, 288, 8, 2304, '2024-12-18 14:53:02'),
(2305, 289, 1, 2305, '2024-12-18 14:53:02'),
(2306, 289, 2, 2306, '2024-12-18 14:53:02'),
(2307, 289, 3, 2307, '2024-12-18 14:53:02'),
(2308, 289, 4, 2308, '2024-12-18 14:53:02'),
(2309, 289, 5, 2309, '2024-12-18 14:53:02'),
(2310, 289, 6, 2310, '2024-12-18 14:53:02'),
(2311, 289, 7, 2311, '2024-12-18 14:53:02'),
(2312, 289, 8, 2312, '2024-12-18 14:53:02'),
(2313, 290, 1, 2313, '2024-12-18 14:53:02'),
(2314, 290, 2, 2314, '2024-12-18 14:53:02'),
(2315, 290, 3, 2315, '2024-12-18 14:53:02'),
(2316, 290, 4, 2316, '2024-12-18 14:53:02'),
(2317, 290, 5, 2317, '2024-12-18 14:53:02'),
(2318, 290, 6, 2318, '2024-12-18 14:53:02'),
(2319, 290, 7, 2319, '2024-12-18 14:53:02'),
(2320, 290, 8, 2320, '2024-12-18 14:53:02'),
(2321, 291, 1, 2321, '2024-12-18 14:53:02'),
(2322, 291, 2, 2322, '2024-12-18 14:53:02'),
(2323, 291, 3, 2323, '2024-12-18 14:53:02'),
(2324, 291, 4, 2324, '2024-12-18 14:53:02'),
(2325, 291, 5, 2325, '2024-12-18 14:53:02'),
(2326, 291, 6, 2326, '2024-12-18 14:53:02'),
(2327, 291, 7, 2327, '2024-12-18 14:53:02'),
(2328, 291, 8, 2328, '2024-12-18 14:53:02'),
(2329, 292, 1, 2329, '2024-12-18 14:53:02'),
(2330, 292, 2, 2330, '2024-12-18 14:53:02'),
(2331, 292, 3, 2331, '2024-12-18 14:53:02'),
(2332, 292, 4, 2332, '2024-12-18 14:53:02'),
(2333, 292, 5, 2333, '2024-12-18 14:53:02'),
(2334, 292, 6, 2334, '2024-12-18 14:53:02'),
(2335, 292, 7, 2335, '2024-12-18 14:53:02'),
(2336, 292, 8, 2336, '2024-12-18 14:53:02'),
(2337, 293, 1, 2337, '2024-12-18 14:53:02'),
(2338, 293, 2, 2338, '2024-12-18 14:53:02'),
(2339, 293, 3, 2339, '2024-12-18 14:53:02'),
(2340, 293, 4, 2340, '2024-12-18 14:53:02'),
(2341, 293, 5, 2341, '2024-12-18 14:53:02'),
(2342, 293, 6, 2342, '2024-12-18 14:53:02'),
(2343, 293, 7, 2343, '2024-12-18 14:53:02'),
(2344, 293, 8, 2344, '2024-12-18 14:53:02'),
(2345, 294, 1, 2345, '2024-12-18 14:53:02'),
(2346, 294, 2, 2346, '2024-12-18 14:53:02'),
(2347, 294, 3, 2347, '2024-12-18 14:53:02'),
(2348, 294, 4, 2348, '2024-12-18 14:53:02'),
(2349, 294, 5, 2349, '2024-12-18 14:53:02'),
(2350, 294, 6, 2350, '2024-12-18 14:53:02'),
(2351, 294, 7, 2351, '2024-12-18 14:53:02'),
(2352, 294, 8, 2352, '2024-12-18 14:53:02'),
(2353, 295, 1, 2353, '2024-12-18 14:53:02'),
(2354, 295, 2, 2354, '2024-12-18 14:53:02'),
(2355, 295, 3, 2355, '2024-12-18 14:53:02'),
(2356, 295, 4, 2356, '2024-12-18 14:53:02'),
(2357, 295, 5, 2357, '2024-12-18 14:53:02'),
(2358, 295, 6, 2358, '2024-12-18 14:53:02'),
(2359, 295, 7, 2359, '2024-12-18 14:53:02'),
(2360, 295, 8, 2360, '2024-12-18 14:53:02'),
(2361, 296, 1, 2361, '2024-12-18 14:53:02'),
(2362, 296, 2, 2362, '2024-12-18 14:53:02'),
(2363, 296, 3, 2363, '2024-12-18 14:53:02'),
(2364, 296, 4, 2364, '2024-12-18 14:53:02'),
(2365, 296, 5, 2365, '2024-12-18 14:53:02'),
(2366, 296, 6, 2366, '2024-12-18 14:53:02'),
(2367, 296, 7, 2367, '2024-12-18 14:53:02'),
(2368, 296, 8, 2368, '2024-12-18 14:53:02'),
(2369, 297, 1, 2369, '2024-12-18 14:53:02'),
(2370, 297, 2, 2370, '2024-12-18 14:53:02'),
(2371, 297, 3, 2371, '2024-12-18 14:53:02'),
(2372, 297, 4, 2372, '2024-12-18 14:53:02'),
(2373, 297, 5, 2373, '2024-12-18 14:53:02'),
(2374, 297, 6, 2374, '2024-12-18 14:53:02'),
(2375, 297, 7, 2375, '2024-12-18 14:53:02'),
(2376, 297, 8, 2376, '2024-12-18 14:53:02'),
(2377, 298, 1, 2377, '2024-12-18 14:53:02'),
(2378, 298, 2, 2378, '2024-12-18 14:53:02'),
(2379, 298, 3, 2379, '2024-12-18 14:53:02'),
(2380, 298, 4, 2380, '2024-12-18 14:53:02'),
(2381, 298, 5, 2381, '2024-12-18 14:53:02'),
(2382, 298, 6, 2382, '2024-12-18 14:53:02'),
(2383, 298, 7, 2383, '2024-12-18 14:53:02'),
(2384, 298, 8, 2384, '2024-12-18 14:53:02'),
(2385, 299, 1, 2385, '2024-12-18 14:53:02'),
(2386, 299, 2, 2386, '2024-12-18 14:53:02'),
(2387, 299, 3, 2387, '2024-12-18 14:53:02'),
(2388, 299, 4, 2388, '2024-12-18 14:53:02'),
(2389, 299, 5, 2389, '2024-12-18 14:53:02'),
(2390, 299, 6, 2390, '2024-12-18 14:53:02'),
(2391, 299, 7, 2391, '2024-12-18 14:53:02');
INSERT INTO `company_rate` (`id`, `company_id`, `product_period_id`, `product_rate_id`, `created_at`) VALUES
(2392, 299, 8, 2392, '2024-12-18 14:53:02'),
(2393, 300, 1, 2393, '2024-12-18 14:53:02'),
(2394, 300, 2, 2394, '2024-12-18 14:53:02'),
(2395, 300, 3, 2395, '2024-12-18 14:53:02'),
(2396, 300, 4, 2396, '2024-12-18 14:53:02'),
(2397, 300, 5, 2397, '2024-12-18 14:53:02'),
(2398, 300, 6, 2398, '2024-12-18 14:53:02'),
(2399, 300, 7, 2399, '2024-12-18 14:53:02'),
(2400, 300, 8, 2400, '2024-12-18 14:53:02'),
(2401, 301, 1, 2401, '2024-12-18 14:53:02'),
(2402, 301, 2, 2402, '2024-12-18 14:53:02'),
(2403, 301, 3, 2403, '2024-12-18 14:53:02'),
(2404, 301, 4, 2404, '2024-12-18 14:53:02'),
(2405, 301, 5, 2405, '2024-12-18 14:53:02'),
(2406, 301, 6, 2406, '2024-12-18 14:53:02'),
(2407, 301, 7, 2407, '2024-12-18 14:53:02'),
(2408, 301, 8, 2408, '2024-12-18 14:53:02'),
(2409, 302, 1, 2409, '2024-12-18 14:53:02'),
(2410, 302, 2, 2410, '2024-12-18 14:53:02'),
(2411, 302, 3, 2411, '2024-12-18 14:53:02'),
(2412, 302, 4, 2412, '2024-12-18 14:53:02'),
(2413, 302, 5, 2413, '2024-12-18 14:53:02'),
(2414, 302, 6, 2414, '2024-12-18 14:53:02'),
(2415, 302, 7, 2415, '2024-12-18 14:53:02'),
(2416, 302, 8, 2416, '2024-12-18 14:53:02'),
(2417, 303, 1, 2417, '2024-12-18 14:53:02'),
(2418, 303, 2, 2418, '2024-12-18 14:53:02'),
(2419, 303, 3, 2419, '2024-12-18 14:53:02'),
(2420, 303, 4, 2420, '2024-12-18 14:53:02'),
(2421, 303, 5, 2421, '2024-12-18 14:53:02'),
(2422, 303, 6, 2422, '2024-12-18 14:53:02'),
(2423, 303, 7, 2423, '2024-12-18 14:53:02'),
(2424, 303, 8, 2424, '2024-12-18 14:53:02'),
(2425, 304, 1, 2425, '2024-12-18 14:53:02'),
(2426, 304, 2, 2426, '2024-12-18 14:53:02'),
(2427, 304, 3, 2427, '2024-12-18 14:53:02'),
(2428, 304, 4, 2428, '2024-12-18 14:53:02'),
(2429, 304, 5, 2429, '2024-12-18 14:53:02'),
(2430, 304, 6, 2430, '2024-12-18 14:53:02'),
(2431, 304, 7, 2431, '2024-12-18 14:53:02'),
(2432, 304, 8, 2432, '2024-12-18 14:53:02'),
(2433, 305, 1, 2433, '2024-12-18 14:53:02'),
(2434, 305, 2, 2434, '2024-12-18 14:53:02'),
(2435, 305, 3, 2435, '2024-12-18 14:53:02'),
(2436, 305, 4, 2436, '2024-12-18 14:53:02'),
(2437, 305, 5, 2437, '2024-12-18 14:53:02'),
(2438, 305, 6, 2438, '2024-12-18 14:53:02'),
(2439, 305, 7, 2439, '2024-12-18 14:53:02'),
(2440, 305, 8, 2440, '2024-12-18 14:53:02'),
(2441, 306, 1, 2441, '2024-12-18 14:53:02'),
(2442, 306, 2, 2442, '2024-12-18 14:53:02'),
(2443, 306, 3, 2443, '2024-12-18 14:53:02'),
(2444, 306, 4, 2444, '2024-12-18 14:53:02'),
(2445, 306, 5, 2445, '2024-12-18 14:53:02'),
(2446, 306, 6, 2446, '2024-12-18 14:53:02'),
(2447, 306, 7, 2447, '2024-12-18 14:53:02'),
(2448, 306, 8, 2448, '2024-12-18 14:53:02'),
(2449, 307, 1, 2449, '2024-12-18 14:53:02'),
(2450, 307, 2, 2450, '2024-12-18 14:53:02'),
(2451, 307, 3, 2451, '2024-12-18 14:53:02'),
(2452, 307, 4, 2452, '2024-12-18 14:53:02'),
(2453, 307, 5, 2453, '2024-12-18 14:53:02'),
(2454, 307, 6, 2454, '2024-12-18 14:53:02'),
(2455, 307, 7, 2455, '2024-12-18 14:53:02'),
(2456, 307, 8, 2456, '2024-12-18 14:53:02'),
(2457, 308, 1, 2457, '2024-12-18 14:53:02'),
(2458, 308, 2, 2458, '2024-12-18 14:53:02'),
(2459, 308, 3, 2459, '2024-12-18 14:53:02'),
(2460, 308, 4, 2460, '2024-12-18 14:53:02'),
(2461, 308, 5, 2461, '2024-12-18 14:53:02'),
(2462, 308, 6, 2462, '2024-12-18 14:53:02'),
(2463, 308, 7, 2463, '2024-12-18 14:53:02'),
(2464, 308, 8, 2464, '2024-12-18 14:53:02'),
(2465, 309, 1, 2465, '2024-12-18 14:53:02'),
(2466, 309, 2, 2466, '2024-12-18 14:53:02'),
(2467, 309, 3, 2467, '2024-12-18 14:53:02'),
(2468, 309, 4, 2468, '2024-12-18 14:53:02'),
(2469, 309, 5, 2469, '2024-12-18 14:53:02'),
(2470, 309, 6, 2470, '2024-12-18 14:53:02'),
(2471, 309, 7, 2471, '2024-12-18 14:53:02'),
(2472, 309, 8, 2472, '2024-12-18 14:53:02'),
(2473, 310, 1, 2473, '2024-12-18 14:53:02'),
(2474, 310, 2, 2474, '2024-12-18 14:53:02'),
(2475, 310, 3, 2475, '2024-12-18 14:53:02'),
(2476, 310, 4, 2476, '2024-12-18 14:53:02'),
(2477, 310, 5, 2477, '2024-12-18 14:53:02'),
(2478, 310, 6, 2478, '2024-12-18 14:53:02'),
(2479, 310, 7, 2479, '2024-12-18 14:53:02'),
(2480, 310, 8, 2480, '2024-12-18 14:53:02'),
(2481, 311, 1, 2481, '2024-12-18 14:53:02'),
(2482, 311, 2, 2482, '2024-12-18 14:53:02'),
(2483, 311, 3, 2483, '2024-12-18 14:53:02'),
(2484, 311, 4, 2484, '2024-12-18 14:53:02'),
(2485, 311, 5, 2485, '2024-12-18 14:53:02'),
(2486, 311, 6, 2486, '2024-12-18 14:53:02'),
(2487, 311, 7, 2487, '2024-12-18 14:53:02'),
(2488, 311, 8, 2488, '2024-12-18 14:53:02'),
(2489, 312, 1, 2489, '2024-12-18 14:53:02'),
(2490, 312, 2, 2490, '2024-12-18 14:53:02'),
(2491, 312, 3, 2491, '2024-12-18 14:53:02'),
(2492, 312, 4, 2492, '2024-12-18 14:53:02'),
(2493, 312, 5, 2493, '2024-12-18 14:53:02'),
(2494, 312, 6, 2494, '2024-12-18 14:53:02'),
(2495, 312, 7, 2495, '2024-12-18 14:53:02'),
(2496, 312, 8, 2496, '2024-12-18 14:53:02'),
(2497, 313, 1, 2497, '2024-12-18 14:53:02'),
(2498, 313, 2, 2498, '2024-12-18 14:53:02'),
(2499, 313, 3, 2499, '2024-12-18 14:53:02'),
(2500, 313, 4, 2500, '2024-12-18 14:53:02'),
(2501, 313, 5, 2501, '2024-12-18 14:53:02'),
(2502, 313, 6, 2502, '2024-12-18 14:53:02'),
(2503, 313, 7, 2503, '2024-12-18 14:53:02'),
(2504, 313, 8, 2504, '2024-12-18 14:53:02'),
(2505, 314, 1, 2505, '2024-12-18 14:53:02'),
(2506, 314, 2, 2506, '2024-12-18 14:53:02'),
(2507, 314, 3, 2507, '2024-12-18 14:53:02'),
(2508, 314, 4, 2508, '2024-12-18 14:53:02'),
(2509, 314, 5, 2509, '2024-12-18 14:53:02'),
(2510, 314, 6, 2510, '2024-12-18 14:53:02'),
(2511, 314, 7, 2511, '2024-12-18 14:53:02'),
(2512, 314, 8, 2512, '2024-12-18 14:53:02'),
(2513, 315, 1, 2513, '2024-12-18 14:53:02'),
(2514, 315, 2, 2514, '2024-12-18 14:53:02'),
(2515, 315, 3, 2515, '2024-12-18 14:53:02'),
(2516, 315, 4, 2516, '2024-12-18 14:53:02'),
(2517, 315, 5, 2517, '2024-12-18 14:53:02'),
(2518, 315, 6, 2518, '2024-12-18 14:53:02'),
(2519, 315, 7, 2519, '2024-12-18 14:53:02'),
(2520, 315, 8, 2520, '2024-12-18 14:53:02'),
(2521, 316, 1, 2521, '2024-12-18 14:53:02'),
(2522, 316, 2, 2522, '2024-12-18 14:53:02'),
(2523, 316, 3, 2523, '2024-12-18 14:53:02'),
(2524, 316, 4, 2524, '2024-12-18 14:53:02'),
(2525, 316, 5, 2525, '2024-12-18 14:53:02'),
(2526, 316, 6, 2526, '2024-12-18 14:53:02'),
(2527, 316, 7, 2527, '2024-12-18 14:53:02'),
(2528, 316, 8, 2528, '2024-12-18 14:53:02'),
(2529, 317, 1, 2529, '2024-12-18 14:53:02'),
(2530, 317, 2, 2530, '2024-12-18 14:53:02'),
(2531, 317, 3, 2531, '2024-12-18 14:53:02'),
(2532, 317, 4, 2532, '2024-12-18 14:53:02'),
(2533, 317, 5, 2533, '2024-12-18 14:53:02'),
(2534, 317, 6, 2534, '2024-12-18 14:53:02'),
(2535, 317, 7, 2535, '2024-12-18 14:53:02'),
(2536, 317, 8, 2536, '2024-12-18 14:53:02'),
(2537, 318, 1, 2537, '2024-12-18 14:53:02'),
(2538, 318, 2, 2538, '2024-12-18 14:53:02'),
(2539, 318, 3, 2539, '2024-12-18 14:53:02'),
(2540, 318, 4, 2540, '2024-12-18 14:53:02'),
(2541, 318, 5, 2541, '2024-12-18 14:53:02'),
(2542, 318, 6, 2542, '2024-12-18 14:53:02'),
(2543, 318, 7, 2543, '2024-12-18 14:53:02'),
(2544, 318, 8, 2544, '2024-12-18 14:53:02'),
(2545, 319, 1, 2545, '2024-12-18 14:53:02'),
(2546, 319, 2, 2546, '2024-12-18 14:53:02'),
(2547, 319, 3, 2547, '2024-12-18 14:53:02'),
(2548, 319, 4, 2548, '2024-12-18 14:53:02'),
(2549, 319, 5, 2549, '2024-12-18 14:53:02'),
(2550, 319, 6, 2550, '2024-12-18 14:53:02'),
(2551, 319, 7, 2551, '2024-12-18 14:53:02'),
(2552, 319, 8, 2552, '2024-12-18 14:53:02'),
(2553, 320, 1, 2553, '2024-12-18 14:53:02'),
(2554, 320, 2, 2554, '2024-12-18 14:53:02'),
(2555, 320, 3, 2555, '2024-12-18 14:53:02'),
(2556, 320, 4, 2556, '2024-12-18 14:53:02'),
(2557, 320, 5, 2557, '2024-12-18 14:53:02'),
(2558, 320, 6, 2558, '2024-12-18 14:53:02'),
(2559, 320, 7, 2559, '2024-12-18 14:53:02'),
(2560, 320, 8, 2560, '2024-12-18 14:53:02'),
(2561, 321, 1, 2561, '2024-12-18 14:53:02'),
(2562, 321, 2, 2562, '2024-12-18 14:53:02'),
(2563, 321, 3, 2563, '2024-12-18 14:53:02'),
(2564, 321, 4, 2564, '2024-12-18 14:53:02'),
(2565, 321, 5, 2565, '2024-12-18 14:53:02'),
(2566, 321, 6, 2566, '2024-12-18 14:53:02'),
(2567, 321, 7, 2567, '2024-12-18 14:53:02'),
(2568, 321, 8, 2568, '2024-12-18 14:53:02'),
(2569, 322, 1, 2569, '2024-12-18 14:53:02'),
(2570, 322, 2, 2570, '2024-12-18 14:53:02'),
(2571, 322, 3, 2571, '2024-12-18 14:53:02'),
(2572, 322, 4, 2572, '2024-12-18 14:53:02'),
(2573, 322, 5, 2573, '2024-12-18 14:53:02'),
(2574, 322, 6, 2574, '2024-12-18 14:53:02'),
(2575, 322, 7, 2575, '2024-12-18 14:53:02'),
(2576, 322, 8, 2576, '2024-12-18 14:53:02'),
(2577, 323, 1, 2577, '2024-12-18 14:53:02'),
(2578, 323, 2, 2578, '2024-12-18 14:53:02'),
(2579, 323, 3, 2579, '2024-12-18 14:53:02'),
(2580, 323, 4, 2580, '2024-12-18 14:53:02'),
(2581, 323, 5, 2581, '2024-12-18 14:53:02'),
(2582, 323, 6, 2582, '2024-12-18 14:53:02'),
(2583, 323, 7, 2583, '2024-12-18 14:53:02'),
(2584, 323, 8, 2584, '2024-12-18 14:53:02'),
(2585, 324, 1, 2585, '2024-12-18 14:53:02'),
(2586, 324, 2, 2586, '2024-12-18 14:53:02'),
(2587, 324, 3, 2587, '2024-12-18 14:53:02'),
(2588, 324, 4, 2588, '2024-12-18 14:53:02'),
(2589, 324, 5, 2589, '2024-12-18 14:53:02'),
(2590, 324, 6, 2590, '2024-12-18 14:53:02'),
(2591, 324, 7, 2591, '2024-12-18 14:53:02'),
(2592, 324, 8, 2592, '2024-12-18 14:53:02'),
(2593, 325, 1, 2593, '2024-12-18 14:53:02'),
(2594, 325, 2, 2594, '2024-12-18 14:53:02'),
(2595, 325, 3, 2595, '2024-12-18 14:53:02'),
(2596, 325, 4, 2596, '2024-12-18 14:53:02'),
(2597, 325, 5, 2597, '2024-12-18 14:53:02'),
(2598, 325, 6, 2598, '2024-12-18 14:53:02'),
(2599, 325, 7, 2599, '2024-12-18 14:53:02'),
(2600, 325, 8, 2600, '2024-12-18 14:53:02');

-- --------------------------------------------------------

--
-- Table structure for table `confirm_agent`
--

CREATE TABLE `confirm_agent` (
  `id` int NOT NULL,
  `travel_date` date NOT NULL,
  `agent_id` int NOT NULL,
  `login_id` int NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `confirm_agent`
--

INSERT INTO `confirm_agent` (`id`, `travel_date`, `agent_id`, `login_id`, `created_at`) VALUES
(13, '2024-12-05', 893, 1, '2024-12-04 12:50:48'),
(14, '2024-12-05', 458, 1, '2024-12-04 12:51:34'),
(16, '2024-12-05', 310, 1, '2024-12-04 13:27:52');

-- --------------------------------------------------------

--
-- Table structure for table `country`
--

CREATE TABLE `country` (
  `id` int NOT NULL,
  `code` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_th` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_en` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `initials` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_approved` int NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `country`
--

INSERT INTO `country` (`id`, `code`, `name_th`, `name_en`, `initials`, `is_approved`, `created_at`) VALUES
(1, 'ABW', 'อารูบา', 'Aruba', 'AW', 1, '2021-09-28 04:17:05'),
(2, 'AFG', 'อัฟกานิสถาน', 'Afghanistan', 'AF', 1, '2021-09-28 04:17:05'),
(3, 'AGO', 'แองโกลา', 'Angola', 'AO', 1, '2021-09-28 04:17:05'),
(4, 'AIA', 'แองกวิลลา', 'Anguilla', 'AI', 1, '2021-09-28 04:17:05'),
(5, 'ALA', 'โอลันด์', 'Åland', 'AX', 1, '2021-09-28 04:17:05'),
(6, 'ALB', 'แอลเบเนีย', 'Albania', 'AL', 1, '2021-09-28 04:17:05'),
(7, 'AND', 'อันดอร์รา', 'Andorra', 'AD', 1, '2021-09-28 04:17:05'),
(8, 'ARE', 'สหรัฐอาหรับเอมิเรตส์\n', 'United Arab Emirates', 'AE', 1, '2021-09-28 04:17:05'),
(9, 'ARG', 'อาร์เจนตินา', 'Argentina', 'AR', 1, '2021-09-28 04:17:05'),
(10, 'ARM', 'อาร์เมเนีย', 'Armenia', 'AM', 1, '2021-09-28 04:17:05'),
(11, 'ASM', 'อเมริกันซามัว', 'American Samoa', 'AS', 1, '2021-09-28 04:17:05'),
(12, 'ATA', 'ทวิปแอนตาร์กติกา', 'Antarctica', 'AQ', 1, '2021-09-28 04:17:05'),
(13, 'ATF', 'ดินแดนทางตอนใต้ของฝรั่งเศส', 'French Southern Territories', 'TF', 1, '2021-09-28 04:17:05'),
(14, 'ATG', 'แอนติกาและบาร์บูดา', 'Antigua and Barbuda', 'AG', 1, '2021-09-28 04:17:05'),
(15, 'AUS', 'ออสเตรเลีย', 'Australia', 'AU', 1, '2021-09-28 04:17:05'),
(16, 'AUT', 'ออสเตรีย', 'Austria', 'AT', 1, '2021-09-28 04:17:05'),
(17, 'AZE', 'อาเซอร์ไบจาน', 'Azerbaijan', 'AZ', 1, '2021-09-28 04:17:05'),
(18, 'BDI', 'บุรุนดี', 'Burundi', 'BI', 1, '2021-09-28 04:17:05'),
(19, 'BEL', 'เบลเยียม', 'Belgium', 'BE', 1, '2021-09-28 04:17:05'),
(20, 'BEN', 'เบนิน', 'Benin', 'BJ', 1, '2021-09-28 04:17:05'),
(21, 'BES', 'โบแนร์', 'Bonaire', 'BQ', 1, '2021-09-28 04:17:05'),
(22, 'BFA', 'บูร์กินาฟาโซ', 'Burkina Faso', 'BF', 1, '2021-09-28 04:17:05'),
(23, 'BGD', 'บังคลาเทศ', 'Bangladesh', 'BD', 1, '2021-09-28 04:17:05'),
(24, 'BGR', 'บัลแกเรีย', 'Bulgaria', 'BG', 1, '2021-09-28 04:17:05'),
(25, 'BHR', 'บาห์เรน', 'Bahrain', 'BH', 1, '2021-09-28 04:17:05'),
(26, 'BHS', 'บาฮามาส', 'Bahamas', 'BS', 1, '2021-09-28 04:17:05'),
(27, 'BIH', 'บอสเนียและเฮอร์เซโก\n', 'Bosnia and Herzegovina', 'BA', 1, '2021-09-28 04:17:05'),
(28, 'BLM', 'Saint Barthélemy', 'Saint Barthélemy', 'BL', 1, '2021-09-28 04:17:05'),
(29, 'BLR', 'เบลารุส', 'Belarus', 'BY', 1, '2021-09-28 04:17:05'),
(30, 'BLZ', 'เบลีซ', 'Belize', 'BZ', 1, '2021-09-28 04:17:05'),
(31, 'BMU', 'เบอร์มิวดา', 'Bermuda', 'BM', 1, '2021-09-28 04:17:05'),
(32, 'BOL', 'โบลิเวีย', 'Bolivia', 'BO', 1, '2021-09-28 04:17:05'),
(33, 'BRA', 'บราซิล', 'Brazil', 'BR', 1, '2021-09-28 04:17:05'),
(34, 'BRB', 'บาร์เบโดส', 'Barbados', 'BB', 1, '2021-09-28 04:17:05'),
(35, 'BRN', 'บรูไน', 'Brunei', 'BN', 1, '2021-09-28 04:17:05'),
(36, 'BTN', 'ภูฏาน', 'Bhutan', 'BT', 1, '2021-09-28 04:17:05'),
(37, 'BVT', 'เกาะบูเว็ต', 'Bouvet Island', 'BV', 1, '2021-09-28 04:17:05'),
(38, 'BWA', 'บอตสวานา', 'Botswana', 'BW', 1, '2021-09-28 04:17:05'),
(39, 'CAF', 'สาธารณรัฐแอฟริกากลาง', 'Central African Republic', 'CF', 1, '2021-09-28 04:17:05'),
(40, 'CAN', 'แคนาดา', 'Canada', 'CA', 1, '2021-09-28 04:17:05'),
(41, 'CCK', 'เกาะโคโคส [คีลิง]', 'Cocos [Keeling] Islands', 'CC', 1, '2021-09-28 04:17:05'),
(42, 'CHE', 'สวิสเซอร์แลนด์', 'Switzerland', 'CH', 1, '2021-09-28 04:17:05'),
(43, 'CHL', 'ชิลี', 'Chile', 'CL', 1, '2021-09-28 04:17:05'),
(44, 'CHN', 'จีน', 'China', 'CN', 1, '2021-09-28 04:17:05'),
(45, 'CIV', 'ไอวอรี่โคสต์', 'Ivory Coast', 'CI', 1, '2021-09-28 04:17:05'),
(46, 'CMR', 'แคเมอรูน', 'Cameroon', 'CM', 1, '2021-09-28 04:17:05'),
(47, 'COD', 'สาธารณรัฐประชาธิปไตยคองโก', 'Democratic Republic of the Congo', 'CD', 1, '2021-09-28 04:17:05'),
(48, 'COG', 'สาธารณรัฐคองโก', 'Republic of the Congo', 'CG', 1, '2021-09-28 04:17:05'),
(49, 'COK', 'หมู่เกาะคุก', 'Cook Islands', 'CK', 1, '2021-09-28 04:17:05'),
(50, 'COL', 'โคลอมเบีย', 'Colombia', 'CO', 1, '2021-09-28 04:17:05'),
(51, 'COM', 'คอโมโรส', 'Comoros', 'KM', 1, '2021-09-28 04:17:05'),
(52, 'CPV', 'เคปเวิร์ด', 'Cape Verde', 'CV', 1, '2021-09-28 04:17:05'),
(53, 'CRI', 'คอสตาริกา\n', 'Costa Rica', 'CR', 1, '2021-09-28 04:17:05'),
(54, 'CUB', 'คิวบา', 'Cuba', 'CU', 1, '2021-09-28 04:17:05'),
(55, 'CUW', 'คูราเซา\n', 'Curacao', 'CW', 1, '2021-09-28 04:17:05'),
(56, 'CXR', 'เกาะคริสต์มาส', 'Christmas Island', 'CX', 1, '2021-09-28 04:17:05'),
(57, 'CYM', 'หมู่เกาะเคย์เเมน', 'Cayman Islands', 'KY', 1, '2021-09-28 04:17:05'),
(58, 'CYP', 'ไซปรัส', 'Cyprus', 'CY', 1, '2021-09-28 04:17:05'),
(59, 'CZE', 'สาธารณรัฐเช็ก', 'Czech Republic', 'CZ', 1, '2021-09-28 04:17:05'),
(60, 'DEU', 'เยอรมันนี', 'Germany', 'DE', 1, '2021-09-28 04:17:05'),
(61, 'DJI', 'จิบูตี', 'Djibouti', 'DJ', 1, '2021-09-28 04:17:05'),
(62, 'DMA', 'โดมินิกา', 'Dominica', 'DM', 1, '2021-09-28 04:17:05'),
(63, 'DNK', 'เดนมาร์ก', 'Denmark', 'DK', 1, '2021-09-28 04:17:05'),
(64, 'DOM', 'สาธารณรัฐโดมินิกัน\n', 'Dominican Republic', 'DO', 1, '2021-09-28 04:17:05'),
(65, 'DZA', 'แอลจีเรีย', 'Algeria', 'DZ', 1, '2021-09-28 04:17:05'),
(66, 'ECU', 'เอกวาดอร์', 'Ecuador', 'EC', 1, '2021-09-28 04:17:05'),
(67, 'EGY', 'อียิปต์', 'Egypt', 'EG', 1, '2021-09-28 04:17:05'),
(68, 'ERI', 'เอริเทรี', 'Eritrea', 'ER', 1, '2021-09-28 04:17:05'),
(69, 'ESH', 'ซาฮาร่าตะวันตก', 'Western Sahara', 'EH', 1, '2021-09-28 04:17:05'),
(70, 'ESP', 'สเปน', 'Spain', 'ES', 1, '2021-09-28 04:17:05'),
(71, 'EST', 'เอสโตเนีย', 'Estonia', 'EE', 1, '2021-09-28 04:17:05'),
(72, 'ETH', 'สาธารณรัฐเอธิโอเปีย', 'Ethiopia', 'ET', 1, '2021-09-28 04:17:05'),
(73, 'FIN', 'ฟินแลนด์', 'Finland', 'FI', 1, '2021-09-28 04:17:05'),
(74, 'FJI', 'ฟิจิ', 'Fiji', 'FJ', 1, '2021-09-28 04:17:05'),
(75, 'FLK', 'หมู่เกาะฟอล์คแลนด์', 'Falkland Islands', 'FK', 1, '2021-09-28 04:17:05'),
(76, 'FRA', 'ฝรั่งเศส', 'France', 'FR', 1, '2021-09-28 04:17:05'),
(77, 'FRO', 'หมู่เกาะแฟโร', 'Faroe Islands', 'FO', 1, '2021-09-28 04:17:05'),
(78, 'FSM', 'ไมโครนีเซีย', 'Micronesia', 'FM', 1, '2021-09-28 04:17:05'),
(79, 'GAB', 'กาบอง', 'Gabon', 'GA', 1, '2021-09-28 04:17:05'),
(80, 'GBR', 'อังกฤษ (สหราชอาณาจักร)', 'United Kingdom', 'GB', 1, '2021-09-28 04:17:05'),
(81, 'GEO', 'จอร์เจีย', 'Georgia', 'GE', 1, '2021-09-28 04:17:05'),
(82, 'GGY', 'เกิร์นซีย์', 'Guernsey', 'GG', 1, '2021-09-28 04:17:05'),
(83, 'GHA', 'เกิร์นซีย์', 'Ghana', 'GH', 1, '2021-09-28 04:17:05'),
(84, 'GIB', 'ยิบรอลตา', 'Gibraltar', 'GI', 1, '2021-09-28 04:17:05'),
(85, 'GIN', 'กินี', 'Guinea', 'GN', 1, '2021-09-28 04:17:05'),
(86, 'GLP', 'กัวเดลุฟ', 'Guadeloupe', 'GP', 1, '2021-09-28 04:17:05'),
(87, 'GMB', 'แกมเบีย', 'Gambia', 'GM', 1, '2021-09-28 04:17:05'),
(88, 'GNB', 'กินีบิสเซา', 'Guinea-Bissau', 'GW', 1, '2021-09-28 04:17:05'),
(89, 'GNQ', 'อิเควทอเรียลกินี', 'Equatorial Guinea', 'GQ', 1, '2021-09-28 04:17:05'),
(90, 'GRC', 'กรีซ', 'Greece', 'GR', 1, '2021-09-28 04:17:05'),
(91, 'GRD', 'เกรเนดา ', 'Grenada', 'GD', 1, '2021-09-28 04:17:05'),
(92, 'GRL', 'กรีนแลนด์', 'Greenland', 'GL', 1, '2021-09-28 04:17:05'),
(93, 'GTM', 'กัวเตมาลา', 'Guatemala', 'GT', 1, '2021-09-28 04:17:05'),
(94, 'GUF', 'เฟรนช์เกียนา', 'French Guiana', 'GF', 1, '2021-09-28 04:17:05'),
(95, 'GUM', 'เกาะกวม', 'Guam', 'GU', 1, '2021-09-28 04:17:05'),
(96, 'GUY', 'กายอานา', 'Guyana', 'GY', 1, '2021-09-28 04:17:05'),
(97, 'HKG', 'ฮ่องกง', 'Hong Kong', 'HK', 1, '2021-09-28 04:17:05'),
(98, 'HMD', 'เกาะเฮิร์ดและหมู่เกาะแมคโดนัลด์', 'Heard Island and McDonald Islands', 'HM', 1, '2021-09-28 04:17:05'),
(99, 'HND', 'ฮอนดูรัส', 'Honduras', 'HN', 1, '2021-09-28 04:17:05'),
(100, 'HRV', 'โครเอเชีย', 'Croatia', 'HR', 1, '2021-09-28 04:17:05'),
(101, 'HTI', 'เฮติ', 'Haiti', 'HT', 1, '2021-09-28 04:17:05'),
(102, 'HUN', 'ฮังการี', 'Hungary', 'HU', 1, '2021-09-28 04:17:05'),
(103, 'IDN', 'อินโดนีเซีย', 'Indonesia', 'ID', 1, '2021-09-28 04:17:05'),
(104, 'IMN', 'เกาะแมน', 'Isle of Man', 'IM', 1, '2021-09-28 04:17:05'),
(105, 'IND', 'อินเดีย', 'India', 'IN', 1, '2021-09-28 04:17:05'),
(106, 'IOT', 'หมู่เกาะบริติชเวอร์จิน', 'British Indian Ocean Territory', 'IO', 1, '2021-09-28 04:17:05'),
(107, 'IRL', 'ไอร์แลนด์', 'Ireland', 'IE', 1, '2021-09-28 04:17:05'),
(108, 'IRN', 'อิหร่าน', 'Iran', 'IR', 1, '2021-09-28 04:17:05'),
(109, 'IRQ', 'อิรัก', 'Iraq', 'IQ', 1, '2021-09-28 04:17:05'),
(110, 'ISL', 'ประเทศไอซ์แลนด์', 'Iceland', 'IS', 1, '2021-09-28 04:17:05'),
(111, 'ISR', 'อิสราเอล', 'Israel', 'IL', 1, '2021-09-28 04:17:05'),
(112, 'ITA', 'อิตาลี', 'Italy', 'IT', 1, '2021-09-28 04:17:05'),
(113, 'JAM', 'เกาะจาเมกา', 'Jamaica', 'JM', 1, '2021-09-28 04:17:05'),
(114, 'JEY', 'นิวเจอร์ซีย์', 'Jersey', 'JE', 1, '2021-09-28 04:17:05'),
(115, 'JOR', 'จอร์แดน', 'Jordan', 'JO', 1, '2021-09-28 04:17:05'),
(116, 'JPN', 'ญี่ปุ่น', 'Japan', 'JP', 1, '2021-09-28 04:17:05'),
(117, 'KAZ', 'คาซัคสถาน', 'Kazakhstan', 'KZ', 1, '2021-09-28 04:17:05'),
(118, 'KEN', 'เคนย่า', 'Kenya', 'KE', 1, '2021-09-28 04:17:05'),
(119, 'KGZ', 'คีร์กีสถาน', 'Kyrgyzstan', 'KG', 1, '2021-09-28 04:17:05'),
(120, 'KHM', 'กัมพูชา', 'Cambodia', 'KH', 1, '2021-09-28 04:17:05'),
(121, 'KIR', 'คิริบาส', 'Kiribati', 'KI', 1, '2021-09-28 04:17:05'),
(122, 'KNA', 'เซนต์คิตส์และเนวิส', 'Saint Kitts and Nevis', 'KN', 1, '2021-09-28 04:17:05'),
(123, 'KOR', 'เกาหลีใต้', 'South Korea', 'KR', 1, '2021-09-28 04:17:05'),
(124, 'KWT', 'คูเวต', 'Kuwait', 'KW', 1, '2021-09-28 04:17:05'),
(125, 'LAO', 'ลาว', 'Laos', 'LA', 1, '2021-09-28 04:17:05'),
(126, 'LBN', 'เลบานอน', 'Lebanon', 'LB', 1, '2021-09-28 04:17:05'),
(127, 'LBR', 'ประเทศไลบีเรีย', 'Liberia', 'LR', 1, '2021-09-28 04:17:05'),
(128, 'LBY', 'ลิบยา', 'Libya', 'LY', 1, '2021-09-28 04:17:05'),
(129, 'LCA', 'เซนต์ลูเซีย', 'Saint Lucia', 'LC', 1, '2021-09-28 04:17:05'),
(130, 'LIE', 'นสไตน์', 'Liechtenstein', 'LI', 1, '2021-09-28 04:17:05'),
(131, 'LKA', 'ศรีลังกา', 'Sri Lanka', 'LK', 1, '2021-09-28 04:17:05'),
(132, 'LSO', 'เลโซโท', 'Lesotho', 'LS', 1, '2021-09-28 04:17:05'),
(133, 'LTU', 'ลิธัวเนีย', 'Lithuania', 'LT', 1, '2021-09-28 04:17:05'),
(134, 'LUX', 'ลักเซมเบิร์ก', 'Luxembourg', 'LU', 1, '2021-09-28 04:17:05'),
(135, 'LVA', 'ลัตเวีย', 'Latvia', 'LV', 1, '2021-09-28 04:17:05'),
(136, 'MAC', 'มาเก๊า', 'Macao', 'MO', 1, '2021-09-28 04:17:05'),
(137, 'MAF', 'เซนต์มาร์ติน', 'Saint Martin', 'MF', 1, '2021-09-28 04:17:05'),
(138, 'MAR', 'โมร็อกโก', 'Morocco', 'MA', 1, '2021-09-28 04:17:05'),
(139, 'MCO', 'โมนาโก', 'Monaco', 'MC', 1, '2021-09-28 04:17:05'),
(140, 'MDA', 'มอลโดวา', 'Moldova', 'MD', 1, '2021-09-28 04:17:05'),
(141, 'MDG', 'มาดากัสการ์', 'Madagascar', 'MG', 1, '2021-09-28 04:17:05'),
(142, 'MDV', 'มัลดีฟส์', 'Maldives', 'MV', 1, '2021-09-28 04:17:05'),
(143, 'MEX', 'เม็กซิโก', 'Mexico', 'MX', 1, '2021-09-28 04:17:05'),
(144, 'MHL', 'หมู่เกาะมาร์แชลล์', 'Marshall Islands', 'MH', 1, '2021-09-28 04:17:05'),
(145, 'MKD', 'มาซิโดเนีย', 'Macedonia', 'MK', 1, '2021-09-28 04:17:05'),
(146, 'MLI', 'มาลี', 'Mali', 'ML', 1, '2021-09-28 04:17:05'),
(147, 'MLT', 'เกาะมอลตา', 'Malta', 'MT', 1, '2021-09-28 04:17:05'),
(148, 'MMR', 'พม่า', 'Myanmar [Burma]', 'MM', 1, '2021-09-28 04:17:05'),
(149, 'MNE', 'มอนเตเนโก', 'Montenegro', 'ME', 1, '2021-09-28 04:17:05'),
(150, 'MNG', 'มองโกเลีย', 'Mongolia', 'MN', 1, '2021-09-28 04:17:05'),
(151, 'MNP', 'หมู่เกาะนอร์เทิร์นมาเรียนา', 'Northern Mariana Islands', 'MP', 1, '2021-09-28 04:17:05'),
(152, 'MOZ', 'โมซัมบิก', 'Mozambique', 'MZ', 1, '2021-09-28 04:17:05'),
(153, 'MRT', 'มอริเตเนีย', 'Mauritania', 'MR', 1, '2021-09-28 04:17:05'),
(154, 'MSR', 'มอนต์เซอร์รัต', 'Montserrat', 'MS', 1, '2021-09-28 04:17:05'),
(155, 'MTQ', 'มาร์ตินีก', 'Martinique', 'MQ', 1, '2021-09-28 04:17:05'),
(156, 'MUS', 'มอริเชียส', 'Mauritius', 'MU', 1, '2021-09-28 04:17:05'),
(157, 'MWI', 'มาลาวี', 'Malawi', 'MW', 1, '2021-09-28 04:17:05'),
(158, 'MYS', 'มาเลเซีย', 'Malaysia', 'MY', 1, '2021-09-28 04:17:05'),
(159, 'MYT', 'มายอต', 'Mayotte', 'YT', 1, '2021-09-28 04:17:05'),
(160, 'NAM', 'นามิเบีย', 'Namibia', 'NA', 1, '2021-09-28 04:17:05'),
(161, 'NCL', 'นิวแคลิโดเนีย', 'New Caledonia', 'NC', 1, '2021-09-28 04:17:05'),
(162, 'NER', 'ไนเธอร์', 'Niger', 'NE', 1, '2021-09-28 04:17:05'),
(163, 'NFK', 'เกาะนอร์ฟอล์ก', 'Norfolk Island', 'NF', 1, '2021-09-28 04:17:05'),
(164, 'NGA', 'ไนจีเรีย', 'Nigeria', 'NG', 1, '2021-09-28 04:17:05'),
(165, 'NIC', 'นิการากัว', 'Nicaragua', 'NI', 1, '2021-09-28 04:17:05'),
(166, 'NIU', 'นีอูเอ', 'Niue', 'NU', 1, '2021-09-28 04:17:05'),
(167, 'NLD', 'เนเธอร์แลนด์', 'Netherlands', 'NL', 1, '2021-09-28 04:17:05'),
(168, 'NOR', 'นอร์เวย์', 'Norway', 'NO', 1, '2021-09-28 04:17:05'),
(169, 'NPL', 'เนปาล', 'Nepal', 'NP', 1, '2021-09-28 04:17:05'),
(170, 'NRU', 'นาอูรู', 'Nauru', 'NR', 1, '2021-09-28 04:17:05'),
(171, 'NZL', 'นิวซีแลนด์', 'New Zealand', 'NZ', 1, '2021-09-28 04:17:05'),
(172, 'OMN', 'โอมาน', 'Oman', 'OM', 1, '2021-09-28 04:17:05'),
(173, 'PAK', 'ปากีสถาน', 'Pakistan', 'PK', 1, '2021-09-28 04:17:05'),
(174, 'PAN', 'ปานามา', 'Panama', 'PA', 1, '2021-09-28 04:17:05'),
(175, 'PCN', 'หมู่เกาะพิตแคร์น', 'Pitcairn Islands', 'PN', 1, '2021-09-28 04:17:05'),
(176, 'PER', 'เปรู', 'Peru', 'PE', 1, '2021-09-28 04:17:05'),
(177, 'PHL', 'ฟิลิปปินส์', 'Philippines', 'PH', 1, '2021-09-28 04:17:05'),
(178, 'PLW', 'ปาเลา', 'Palau', 'PW', 1, '2021-09-28 04:17:05'),
(179, 'PNG', 'ปาปัวนิวกินี', 'Papua New Guinea', 'PG', 1, '2021-09-28 04:17:05'),
(180, 'POL', 'โปแลนด์', 'Poland', 'PL', 1, '2021-09-28 04:17:05'),
(181, 'PRI', 'เปอร์โตริโก', 'Puerto Rico', 'PR', 1, '2021-09-28 04:17:05'),
(182, 'PRK', 'เกาหลีเหนือ', 'North Korea', 'KP', 1, '2021-09-28 04:17:05'),
(183, 'PRT', 'โปรตุเกส', 'Portugal', 'PT', 1, '2021-09-28 04:17:05'),
(184, 'PRY', 'ปารากวัย', 'Paraguay', 'PY', 1, '2021-09-28 04:17:05'),
(185, 'PSE', 'ปาเลสไตน์', 'Palestine', 'PS', 1, '2021-09-28 04:17:05'),
(186, 'PYF', 'เฟรนช์โปลินีเซีย', 'French Polynesia', 'PF', 1, '2021-09-28 04:17:05'),
(187, 'QAT', 'กาตาร์', 'Qatar', 'QA', 1, '2021-09-28 04:17:05'),
(188, 'REU', 'เรอูนียง', 'Réunion', 'RE', 1, '2021-09-28 04:17:05'),
(189, 'ROU', 'โรมาเนีย', 'Romania', 'RO', 1, '2021-09-28 04:17:05'),
(190, 'RUS', 'รัสเซีย', 'Russia', 'RU', 1, '2021-09-28 04:17:05'),
(191, 'RWA', 'รวันดา', 'Rwanda', 'RW', 1, '2021-09-28 04:17:05'),
(192, 'SAU', 'ซาอุดิอาราเบีย', 'Saudi Arabia', 'SA', 1, '2021-09-28 04:17:05'),
(193, 'SDN', 'ซูดาน', 'Sudan', 'SD', 1, '2021-09-28 04:17:05'),
(194, 'SEN', 'เซเนกัล', 'Senegal', 'SN', 1, '2021-09-28 04:17:05'),
(195, 'SGP', 'สิงคโปร์', 'Singapore', 'SG', 1, '2021-09-28 04:17:05'),
(196, 'SGS', 'หมู่เกาะเซาท์จอร์เจียและหมู่เกาะเซาท์แซนด์วิช', 'South Georgia and the South Sandwich Islands', 'GS', 1, '2021-09-28 04:17:05'),
(197, 'SHN', 'เซนต์เฮเลนา', 'Saint Helena', 'SH', 1, '2021-09-28 04:17:05'),
(198, 'SJM', 'สฟาลบาร์และยานไมเอน', 'Svalbard and Jan Mayen', 'SJ', 1, '2021-09-28 04:17:05'),
(199, 'SLB', 'หมู่เกาะโซโลมอน', 'Solomon Islands', 'SB', 1, '2021-09-28 04:17:05'),
(200, 'SLE', 'เซียร์ราลีโอน', 'Sierra Leone', 'SL', 1, '2021-09-28 04:17:05'),
(201, 'SLV', 'เอลซัลวาดอร์', 'El Salvador', 'SV', 1, '2021-09-28 04:17:05'),
(202, 'SMR', 'ซานมาริโน', 'San Marino', 'SM', 1, '2021-09-28 04:17:05'),
(203, 'SOM', 'โซมาเลีย', 'Somalia', 'SO', 1, '2021-09-28 04:17:05'),
(204, 'SPM', 'เซนต์ปิแอร์และมีเกอลง', 'Saint Pierre and Miquelon', 'PM', 1, '2021-09-28 04:17:05'),
(205, 'SRB', 'เซอร์เบีย', 'Serbia', 'RS', 1, '2021-09-28 04:17:05'),
(206, 'SSD', 'ซูดานใต้', 'South Sudan', 'SS', 1, '2021-09-28 04:17:05'),
(207, 'STP', 'เซาตูเมและปรินซิปี', 'São Tomé and Príncipe', 'ST', 1, '2021-09-28 04:17:05'),
(208, 'SUR', 'ซูรินาเม', 'Suriname', 'SR', 1, '2021-09-28 04:17:05'),
(209, 'SVK', 'สโลวะเกีย', 'Slovakia', 'SK', 1, '2021-09-28 04:17:05'),
(210, 'SVN', 'สโลวีเนีย', 'Slovenia', 'SI', 1, '2021-09-28 04:17:05'),
(211, 'SWE', 'สวีเดน', 'Sweden', 'SE', 1, '2021-09-28 04:17:05'),
(212, 'SWZ', 'สวาซิแลนด์', 'Swaziland', 'SZ', 1, '2021-09-28 04:17:05'),
(213, 'SXM', 'เกาะเซนต์มาร์ติน', 'Sint Maarten', 'SX', 1, '2021-09-28 04:17:05'),
(214, 'SYC', 'เซเชลส์', 'Seychelles', 'SC', 1, '2021-09-28 04:17:05'),
(215, 'SYR', 'ซีเรีย', 'Syria', 'SY', 1, '2021-09-28 04:17:05'),
(216, 'TCA', 'หมู่เกาะเติกส์และหมู่เกาะเคคอส', 'Turks and Caicos Islands', 'TC', 1, '2021-09-28 04:17:05'),
(217, 'TCD', 'ชาด', 'Chad', 'TD', 1, '2021-09-28 04:17:05'),
(218, 'TGO', 'โตโก', 'Togo', 'TG', 1, '2021-09-28 04:17:05'),
(219, 'THA', 'ไทย', 'Thailand', 'TH', 1, '2021-09-28 04:17:05'),
(220, 'TJK', 'ทาจิกิสถาน', 'Tajikistan', 'TJ', 1, '2021-09-28 04:17:05'),
(221, 'TKL', 'โตเกเลา', 'Tokelau', 'TK', 1, '2021-09-28 04:17:05'),
(222, 'TKM', 'เติร์กเมนิสถาน', 'Turkmenistan', 'TM', 1, '2021-09-28 04:17:05'),
(223, 'TLS', 'ติมอร์ตะวันออก', 'East Timor', 'TL', 1, '2021-09-28 04:17:05'),
(224, 'TON', 'ตองกา', 'Tonga', 'TO', 1, '2021-09-28 04:17:05'),
(225, 'TTO', 'ตรินิแดดและโตเบโก', 'Trinidad and Tobago', 'TT', 1, '2021-09-28 04:17:05'),
(226, 'TUN', 'ตูนิเซีย', 'Tunisia', 'TN', 1, '2021-09-28 04:17:05'),
(227, 'TUR', 'ตุรกี', 'Turkey', 'TR', 1, '2021-09-28 04:17:05'),
(228, 'TUV', 'ตูวาลู', 'Tuvalu', 'TV', 1, '2021-09-28 04:17:05'),
(229, 'TWN', 'ไต้หวัน', 'Taiwan', 'TW', 1, '2021-09-28 04:17:05'),
(230, 'TZA', 'แทนซาเนีย', 'Tanzania', 'TZ', 1, '2021-09-28 04:17:05'),
(231, 'UGA', 'ยูกันดา', 'Uganda', 'UG', 1, '2021-09-28 04:17:05'),
(232, 'UKR', 'ยูเครน', 'Ukraine', 'UA', 1, '2021-09-28 04:17:05'),
(233, 'UMI', 'เกาะนอกรีตของสหรัฐฯ', 'U.S. Minor Outlying Islands', 'UM', 1, '2021-09-28 04:17:05'),
(234, 'URY', 'อุรุกวัย', 'Uruguay', 'UY', 1, '2021-09-28 04:17:05'),
(235, 'USA', 'สหรัฐอเมริกา', 'United States', 'US', 1, '2021-09-28 04:17:05'),
(236, 'UZB', 'อุซเบกิสถาน', 'Uzbekistan', 'UZ', 1, '2021-09-28 04:17:05'),
(237, 'VAT', 'เมืองวาติกัน', 'Vatican City', 'VA', 1, '2021-09-28 04:17:05'),
(238, 'VCT', 'เซนต์วินเซนต์และเกรนาดีนส์', 'Saint Vincent and the Grenadines', 'VC', 1, '2021-09-28 04:17:05'),
(239, 'VEN', 'เวเนซุเอลา', 'Venezuela', 'VE', 1, '2021-09-28 04:17:05'),
(240, 'VGB', 'หมู่เกาะบริติชเวอร์จิน', 'British Virgin Islands', 'VG', 1, '2021-09-28 04:17:05'),
(241, 'VIR', 'หมู่เกาะเวอร์จินของสหรัฐอเมริกา', 'U.S. Virgin Islands', 'VI', 1, '2021-09-28 04:17:05'),
(242, 'VNM', 'เวียดนาม', 'Vietnam', 'VN', 1, '2021-09-28 04:17:05'),
(243, 'VUT', 'วานูอาตู', 'Vanuatu', 'VU', 1, '2021-09-28 04:17:05'),
(244, 'WLF', 'วาลลิสและฟุตูนา', 'Wallis and Futuna', 'WF', 1, '2021-09-28 04:17:05'),
(245, 'WSM', 'ซามัว', 'Samoa', 'WS', 1, '2021-09-28 04:17:05'),
(246, 'XKX', 'โคโซโว', 'Kosovo', 'XK', 1, '2021-09-28 04:17:05'),
(247, 'YEM', 'เยเมน', 'Yemen', 'YE', 1, '2021-09-28 04:17:05'),
(248, 'ZAF', 'แอฟริกาใต้', 'South Africa', 'ZA', 1, '2021-09-28 04:17:05'),
(249, 'ZMB', 'แซมเบีย', 'Zambia', 'ZM', 1, '2021-09-28 04:17:05'),
(250, 'ZWE', 'ประเทศซิมบับเว', 'Zimbabwe', 'ZW', 1, '2021-09-28 04:17:05');

-- --------------------------------------------------------

--
-- Table structure for table `crews`
--

CREATE TABLE `crews` (
  `id` int NOT NULL,
  `id_card` varchar(13) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telephone` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `sex` int NOT NULL,
  `birth_date` date NOT NULL,
  `pic` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_approved` int NOT NULL DEFAULT '0',
  `is_deleted` int NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `crews`
--

INSERT INTO `crews` (`id`, `id_card`, `name`, `telephone`, `address`, `sex`, `birth_date`, `pic`, `is_approved`, `is_deleted`, `created_at`, `updated_at`) VALUES
(1, '', 'เกียรติ', '094-8380231 ', '', 1, '0000-00-00', '', 1, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, '', 'แบงค์', '061-1137504 ', '', 1, '0000-00-00', '', 1, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, '', 'ทัด', '083-2386535 ', '', 1, '0000-00-00', '', 1, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, '', 'เปา', '080-5340883 ', '', 1, '0000-00-00', '', 1, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, '', 'ก็อต', '065-0395361 ', '', 1, '0000-00-00', '', 1, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, '', 'ต่อ', '095-5168211 ', '', 1, '0000-00-00', '', 1, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `currencys`
--

CREATE TABLE `currencys` (
  `id` int NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `currencys`
--

INSERT INTO `currencys` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'USD', '2022-06-10 08:43:27', '2022-06-10 08:43:27'),
(2, 'EUR', '2022-06-10 08:43:27', '2022-06-10 08:43:27'),
(3, 'JPY', '2022-06-10 08:43:27', '2022-06-10 08:43:27'),
(4, 'THB', '2022-06-10 08:43:27', '2022-06-10 08:43:27');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int NOT NULL,
  `name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `birth_date` date NOT NULL,
  `id_card` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telephone` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `age` int NOT NULL COMMENT 'ad : 1 chd : 2 inf : 3 foc : 4',
  `type` int NOT NULL COMMENT '1 : Thai 2 : Foreigner',
  `email` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `head` int NOT NULL DEFAULT '0',
  `booking_id` int NOT NULL DEFAULT '0',
  `nationality_id` int NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `name`, `birth_date`, `id_card`, `telephone`, `address`, `age`, `type`, `email`, `head`, `booking_id`, `nationality_id`, `created_at`, `updated_at`) VALUES
(1, 'Name A', '0000-00-00', '', '089 216 2241', '', 1, 0, '', 1, 1, 0, '2024-12-19 02:34:12', '2024-12-19 02:34:12'),
(2, 'earth', '0000-00-00', '', '', '', 1, 0, '', 1, 2, 0, '2024-12-19 02:51:26', '2024-12-19 02:51:26'),
(3, 'ggggggg', '0000-00-00', '', '', '', 1, 0, '', 1, 3, 0, '2024-12-19 02:52:46', '2024-12-19 02:52:46'),
(4, 'kkkkkkkkk', '0000-00-00', '', '', '', 1, 0, '', 1, 4, 0, '2024-12-19 02:54:52', '2024-12-19 02:54:52'),
(5, 'dddddd', '0000-00-00', '', '', '', 1, 0, '', 1, 5, 0, '2024-12-20 05:23:58', '2024-12-20 05:23:58'),
(6, 'kkkkkk', '0000-00-00', '', '', '', 1, 0, '', 1, 6, 0, '2024-12-20 05:25:17', '2024-12-20 05:25:17');

-- --------------------------------------------------------

--
-- Table structure for table `days`
--

CREATE TABLE `days` (
  `id` int NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_eng` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `days`
--

INSERT INTO `days` (`id`, `name`, `name_eng`, `created_at`) VALUES
(1, 'อาทิตย์', 'Sunday', '2021-12-09 07:32:35'),
(2, 'จันทร์', 'Monday', '2021-12-09 07:32:35'),
(3, 'อังคาร', 'Tuesday', '2021-12-09 07:32:35'),
(4, 'พุธ', 'Wednesday', '2021-12-09 07:32:35'),
(5, 'พฤหัสบดี', 'Thursday', '2021-12-09 07:32:35'),
(6, 'ศุกร์', 'Friday', '2021-12-09 07:32:35'),
(7, 'เสาร์', 'Saturday', '2021-12-09 07:32:35');

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `id` int NOT NULL,
  `name` varchar(100) COLLATE utf8mb3_unicode_ci NOT NULL,
  `refcode` varchar(100) COLLATE utf8mb3_unicode_ci NOT NULL,
  `slug` varchar(100) COLLATE utf8mb3_unicode_ci NOT NULL,
  `is_approved` int NOT NULL,
  `is_deleted` int NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`id`, `name`, `refcode`, `slug`, `is_approved`, `is_deleted`, `created_at`, `updated_at`) VALUES
(1, 'Sale', '001', '001', 1, 0, '2022-08-31 14:11:46', '2022-08-31 14:11:46'),
(2, 'Account', '002', '002', 1, 0, '2022-08-31 14:12:01', '2022-08-31 14:12:01'),
(3, 'Reservation', '003', '003', 1, 0, '2022-11-23 10:36:37', '2022-11-23 10:36:37'),
(4, 'Operator', '004', '004', 1, 0, '2022-11-23 10:36:37', '2022-11-23 10:36:37');

-- --------------------------------------------------------

--
-- Table structure for table `drivers`
--

CREATE TABLE `drivers` (
  `id` int NOT NULL,
  `name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telephone` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `number_plate` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `seat` int NOT NULL,
  `is_approved` int NOT NULL DEFAULT '0',
  `is_deleted` int NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `drivers`
--

INSERT INTO `drivers` (`id`, `name`, `telephone`, `number_plate`, `seat`, `is_approved`, `is_deleted`, `created_at`, `updated_at`) VALUES
(1, 'เอ็ม', '082-8708200', '30-1651  ', 0, 1, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, ' บอล  ', '065-3486538', '30-0659 ', 0, 1, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 'เปิ้ล', '082-2788280', '30-9363 ', 0, 1, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 'ชัย ', '098-7414610', '31-6216 ', 0, 1, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 'บี ', '064-9529536', '31-3660 ', 0, 1, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 'ดู๋', '095-2579701', '31-1863 ', 0, 1, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, ' วัฒน์', '098-020-2181', '31-3661 ', 0, 1, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, '  สมศักดิ์', '064-1906931', '31-5333 ', 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, 'จ๊อบ', '06-5014-2027', '31-6768  ', 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(10, 'รง ', '087-6900614', '31-7386 ', 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(11, 'บัง ', '083-6360552', '30-7099  ', 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(12, 'ตี้', '061-2399937', '36-0317 ', 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(13, ' จิ๋ว ', '098-5929337', '31-6379 ', 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(14, '  ปอย ', '099-0184012', '31-5718 ', 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(15, ' ศร', '099-0740334', '31-4816 ', 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(16, 'แจ็ค', '970722733', 'ณข2441 ', 0, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `drivers_assistant`
--

CREATE TABLE `drivers_assistant` (
  `id` int NOT NULL,
  `id_card` varchar(13) COLLATE utf8mb4_unicode_ci NOT NULL,
  `first_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nickname` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telephone` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `sex` int NOT NULL,
  `birth_date` date NOT NULL,
  `pic` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_approved` int NOT NULL DEFAULT '0',
  `is_deleted` int NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `extra_charges`
--

CREATE TABLE `extra_charges` (
  `id` int NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `unit` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rate_adult` double(9,2) NOT NULL,
  `rate_child` double(9,2) NOT NULL,
  `rate_infant` double(9,2) NOT NULL,
  `rate_total` double(9,2) NOT NULL,
  `detail` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pic` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_approved` int NOT NULL DEFAULT '0',
  `is_deleted` int NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `extra_charges`
--

INSERT INTO `extra_charges` (`id`, `name`, `unit`, `rate_adult`, `rate_child`, `rate_infant`, `rate_total`, `detail`, `pic`, `is_approved`, `is_deleted`, `created_at`, `updated_at`) VALUES
(1, 'Transfer Charge', '', 200.00, 200.00, 200.00, 2000.00, 'Maikhao , Nai Yang , Nai Thon , Airport\r\nLaguna , Buntao , Surin , Layan\r\nTalang , Ao por , Point Yamu\r\nBoat Lagoon , Koh Kaew', '', 1, 0, '2024-12-19 02:35:46', '2024-12-19 02:35:46');

-- --------------------------------------------------------

--
-- Table structure for table `guides`
--

CREATE TABLE `guides` (
  `id` int NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telephone` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pic` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_approved` int NOT NULL DEFAULT '0',
  `is_deleted` int NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `guides`
--

INSERT INTO `guides` (`id`, `name`, `telephone`, `pic`, `is_approved`, `is_deleted`, `created_at`, `updated_at`) VALUES
(1, 'อาหมิง', '062-7279639', '', 1, 0, '2024-12-18 10:24:01', '2024-12-18 10:24:01'),
(2, 'ข้าวเจ้า', '064-1860722', '', 1, 0, '2024-12-18 10:24:17', '2024-12-18 10:24:17'),
(3, 'อาหว่า', '095-0690607', '', 1, 0, '2024-12-18 10:24:41', '2024-12-18 10:24:41'),
(4, 'โจ', '063-1966168 ', '', 1, 0, '0000-00-00 00:00:00', '2024-12-18 10:37:55'),
(5, 'บีเอ็ม', '096-0909976 ', '', 1, 0, '0000-00-00 00:00:00', '2024-12-18 10:38:34'),
(6, 'อ้อย', '062-9651695 ', '', 1, 0, '0000-00-00 00:00:00', '2024-12-18 10:38:43'),
(7, 'เจน', '082-4268876 ', '', 1, 0, '0000-00-00 00:00:00', '2024-12-18 10:38:52'),
(8, 'เอ้', '082-1091553 ', '', 1, 0, '0000-00-00 00:00:00', '2024-12-18 10:38:59'),
(9, 'นัสบี', '062-9701397 ', '', 1, 0, '0000-00-00 00:00:00', '2024-12-18 10:39:11'),
(10, 'เบนซ์', '081-5866884 ', '', 1, 0, '0000-00-00 00:00:00', '2024-12-18 10:39:20');

-- --------------------------------------------------------

--
-- Table structure for table `guide_language`
--

CREATE TABLE `guide_language` (
  `id` int NOT NULL,
  `guide_id` int NOT NULL,
  `language_id` int NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `guide_language`
--

INSERT INTO `guide_language` (`id`, `guide_id`, `language_id`, `created_at`) VALUES
(1, 1, 3, '2024-12-18 10:24:01'),
(2, 2, 3, '2024-12-18 10:24:17'),
(3, 3, 3, '2024-12-18 10:24:41'),
(4, 4, 3, '2024-12-18 10:37:55'),
(5, 5, 2, '2024-12-18 10:38:34'),
(6, 6, 2, '2024-12-18 10:38:43'),
(7, 7, 2, '2024-12-18 10:38:52'),
(8, 8, 2, '2024-12-18 10:38:59'),
(9, 9, 2, '2024-12-18 10:39:11'),
(10, 9, 3, '2024-12-18 10:39:11'),
(11, 10, 2, '2024-12-18 10:39:20'),
(12, 10, 3, '2024-12-18 10:39:20');

-- --------------------------------------------------------

--
-- Table structure for table `history_booking`
--

CREATE TABLE `history_booking` (
  `id` int NOT NULL,
  `history_type` varchar(225) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bookings_id` int NOT NULL,
  `bookings_number` int NOT NULL,
  `booking_status_id` int NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `users` int NOT NULL,
  `ip_address` varchar(225) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `history_type`
--

CREATE TABLE `history_type` (
  `id` int NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_class` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `history_type`
--

INSERT INTO `history_type` (`id`, `name`, `name_class`) VALUES
(1, 'Create', 'badge-light-success'),
(2, 'Edit', 'badge-light-info'),
(3, 'Canceled', 'badge-light-danger');

-- --------------------------------------------------------

--
-- Table structure for table `hotel`
--

CREATE TABLE `hotel` (
  `id` int NOT NULL,
  `name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_th` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `telephone` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zone_id` int NOT NULL,
  `is_approved` int NOT NULL DEFAULT '1',
  `is_deleted` int NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `hotel`
--

INSERT INTO `hotel` (`id`, `name`, `name_th`, `address`, `telephone`, `email`, `zone_id`, `is_approved`, `is_deleted`, `created_at`, `updated_at`) VALUES
(1, 'WESTIN SIRAY BAY RESORT AND SPA PHUKET เดอะ เวสทิน สิเหร่ เบย์ รีสอร์ท แอนด์ สปา ภูเก็ต', 'WESTIN SIRAY BAY RESORT AND SPA PHUKET เดอะ เวสทิน สิเหร่ เบย์ รีสอร์ท แอนด์ สปา ภูเก็ต', '', '', '', 0, 1, 0, '2023-09-01 04:55:02', '2023-09-01 04:55:02'),
(2, 'The Tide Beachfront  Siray  Phuket เดอะ ไทย์', 'The Tide Beachfront  Siray  Phuket เดอะ ไทย์', '', '', '', 0, 1, 0, '2023-09-01 04:55:02', '2023-09-01 04:55:02'),
(3, 'BOAT LAGOON RESORT โบ๊ทลากูน ภูเก็ต รีสอร์ท', 'BOAT LAGOON RESORT โบ๊ทลากูน ภูเก็ต รีสอร์ท', '', '', '', 0, 1, 0, '2023-09-01 04:55:02', '2023-09-01 04:55:02'),
(4, 'CORAL ISLAND RESORT คอรัล ไอส์แลนด์ รีสอร์ท', 'CORAL ISLAND RESORT คอรัล ไอส์แลนด์ รีสอร์ท', '', '', '', 0, 0, 1, '2023-09-01 04:55:02', '2023-09-22 05:42:16'),
(5, 'METROPOLE HOTEL, PHUKET โรงแรมเมโทรโพลภูเก็ต', 'METROPOLE HOTEL, PHUKET โรงแรมเมโทรโพลภูเก็ต', '', '', '', 0, 0, 1, '2023-09-01 04:55:02', '2023-09-22 05:55:45'),
(6, 'MILLENNIUM AUTO GROUP CO.,LTD. มิลเลนเนียม ออโต้ กรุ๊ป สาขาภูเก็ต', 'MILLENNIUM AUTO GROUP CO.,LTD. มิลเลนเนียม ออโต้ กรุ๊ป สาขาภูเก็ต', '', '', '', 0, 0, 1, '2023-09-01 04:55:02', '2023-09-22 05:58:17'),
(7, 'NOVOTEL PHUKET CITY PHOKEETHRA โรงแรมโนโวเทล ภูเก็ต ซิตี้ โภคีธรา', 'NOVOTEL PHUKET CITY PHOKEETHRA โรงแรมโนโวเทล ภูเก็ต ซิตี้ โภคีธรา', '', '', '', 0, 1, 0, '2023-09-01 04:55:02', '2023-09-01 04:55:02'),
(8, 'THE PAGO DESIGN PHUKETโรงแรม เดอะ พาโก้ ดีไซด์ ภูเก็ต', 'THE PAGO DESIGN PHUKETโรงแรม เดอะ พาโก้ ดีไซด์ ภูเก็ต', '', '', '', 0, 0, 1, '2023-09-01 04:55:02', '2023-09-22 06:47:53'),
(9, 'PEARL HOTEL โรงแรมเพิร์ล', 'PEARL HOTEL โรงแรมเพิร์ล', '', '', '', 0, 1, 0, '2023-09-01 04:55:03', '2023-09-01 04:55:03'),
(10, 'PHUKET MERLIN HOTEL โรงแรม ภูเก็ตเมอร์ลิน', 'PHUKET MERLIN HOTEL โรงแรม ภูเก็ตเมอร์ลิน', '', '', '', 0, 0, 1, '2023-09-01 04:55:03', '2023-09-22 06:07:19'),
(11, 'RAMADA PLAZA CHAO FAH รามาดา พลาซ่า เจ้าฟ้า', 'RAMADA PLAZA CHAO FAH รามาดา พลาซ่า เจ้าฟ้า', '', '', '', 0, 1, 0, '2023-09-01 04:55:03', '2023-09-01 04:55:03'),
(12, 'RECENTA PHUKET SUANLUANG รีเซนต้า ภูเก็ต สวนหลวง', 'RECENTA PHUKET SUANLUANG รีเซนต้า ภูเก็ต สวนหลวง', '', '', '', 0, 1, 0, '2023-09-01 04:55:03', '2023-09-01 04:55:03'),
(13, 'RECENTA STYLE PHUKET TOWN รีเซนต้า สไตล์ ภูเก็ตทาวน์', 'RECENTA STYLE PHUKET TOWN รีเซนต้า สไตล์ ภูเก็ตทาวน์', '', '', '', 0, 1, 0, '2023-09-01 04:55:03', '2023-09-01 04:55:03'),
(14, 'RECENTA SUITE PHUKET SUANLUANG รีเซนต้า สวีท ภูเก็ต สวนหลวง', 'RECENTA SUITE PHUKET SUANLUANG รีเซนต้า สวีท ภูเก็ต สวนหลวง', '', '', '', 0, 1, 0, '2023-09-01 04:55:03', '2023-09-01 04:55:03'),
(15, 'ROYAL PHUKET CITY HOTEL โรงแรมรอยัลภูเก็ตซิตี้', 'ROYAL PHUKET CITY HOTEL โรงแรมรอยัลภูเก็ตซิตี้', '', '', '', 0, 1, 0, '2023-09-01 04:55:03', '2023-09-01 04:55:03'),
(16, 'SEABED GRAND HOTEL PHUKET โรงแรมซีเบด แกรนด์ ภูเก็ต ', 'SEABED GRAND HOTEL PHUKET โรงแรมซีเบด แกรนด์ ภูเก็ต ', '', '', '', 0, 0, 1, '2023-09-01 04:55:03', '2023-09-22 06:18:12'),
(17, 'SINO HOUSE ซิโนเฮาส์', 'SINO HOUSE ซิโนเฮาส์', '', '', '', 0, 0, 1, '2023-09-01 04:55:03', '2023-09-22 06:19:01'),
(18, 'TINT @ PHUKET TOWN เดอะ ทินท์ แอท ภูเก็ตทาวน์', 'TINT @ PHUKET TOWN เดอะ ทินท์ แอท ภูเก็ตทาวน์', '', '', '', 0, 1, 0, '2023-09-01 04:55:03', '2023-09-01 04:55:03'),
(19, 'VILLAGE COCONUT ISLAND เดอะ วิลเลจ โคโคนัท ไอส์แลนด์', 'VILLAGE COCONUT ISLAND เดอะ วิลเลจ โคโคนัท ไอส์แลนด์', '', '', '', 0, 0, 1, '2023-09-01 04:55:03', '2023-09-22 07:51:53'),
(20, 'WEB CONNECTION CO.,LTD. เว็บ คอนเน็คชั่น จำกัด', 'WEB CONNECTION CO.,LTD. เว็บ คอนเน็คชั่น จำกัด', '', '', '', 0, 0, 1, '2023-09-01 04:55:03', '2023-09-22 07:50:58'),
(21, '99 OLDTOWN BOUTIQUE GUESTHOUSE 99 โอลด์ทาวน์ บูติค เกสต์เฮ้าส์', '99 OLDTOWN BOUTIQUE GUESTHOUSE 99 โอลด์ทาวน์ บูติค เกสต์เฮ้าส์', '', '', '', 0, 1, 0, '2023-09-01 04:55:03', '2023-09-01 04:55:03'),
(22, 'Ang Pao Hotel อั่งเปา โฮเทล', 'Ang Pao Hotel อั่งเปา โฮเทล', '', '', '', 0, 0, 1, '2023-09-01 04:55:03', '2023-09-22 05:25:27'),
(23, 'Bhukitta Boutique Hotel บูกิตตา บูทีค โฮเทล', 'Bhukitta Boutique Hotel บูกิตตา บูทีค โฮเทล', '', '', '', 0, 1, 0, '2023-09-01 04:55:03', '2023-09-01 04:55:03'),
(24, 'Bloo Hostel Phuket บลู โฮสเทล ภูเก็ต', 'Bloo Hostel Phuket บลู โฮสเทล ภูเก็ต', '', '', '', 0, 1, 0, '2023-09-01 04:55:03', '2023-09-01 04:55:03'),
(25, 'Blu Monkey Bed & Breakfast บลู มังกี้ เบด แอนด์ เบรคฟาสต์ ภูเก็ต', 'Blu Monkey Bed & Breakfast บลู มังกี้ เบด แอนด์ เบรคฟาสต์ ภูเก็ต', '', '', '', 0, 1, 0, '2023-09-01 04:55:03', '2023-09-01 04:55:03'),
(26, 'Blu Monkey Boutique Phuket Town บลูมังกี้ บูทิก ภูเก็ตทาวน์', 'Blu Monkey Boutique Phuket Town บลูมังกี้ บูทิก ภูเก็ตทาวน์', '', '', '', 0, 1, 0, '2023-09-01 04:55:03', '2023-09-01 04:55:03'),
(27, 'Blu Monkey Hub & Hotel Phuket บลูมังกี้ ฮับ แอนด์ โฮเทล ภูเก็ต', 'Blu Monkey Hub & Hotel Phuket บลูมังกี้ ฮับ แอนด์ โฮเทล ภูเก็ต', '', '', '', 0, 1, 0, '2023-09-01 04:55:03', '2023-09-01 04:55:03'),
(28, 'BOAT LAGOON RESORT โบ๊ทลากูน ภูเก็ต รีสอร์ท', 'BOAT LAGOON RESORT โบ๊ทลากูน ภูเก็ต รีสอร์ท', '', '', '', 0, 0, 1, '2023-09-01 04:55:03', '2023-09-22 05:34:02'),
(29, 'Book a Bed Poshtel บุ๊ค อะ เบด พอช เทล', 'Book a Bed Poshtel บุ๊ค อะ เบด พอช เทล', '', '', '', 0, 1, 0, '2023-09-01 04:55:03', '2023-09-01 04:55:03'),
(30, 'CA Hotel and Residence ซีเอ โฮเทล แอนด์ เรสซิเดนซ์ ', 'CA Hotel and Residence ซีเอ โฮเทล แอนด์ เรสซิเดนซ์ ', '', '', '', 0, 1, 0, '2023-09-01 04:55:03', '2023-09-01 04:55:03'),
(31, 'Casa blanca Boutique hotel คาซาบลังกา บูติก โฮเต็ล', 'Casa blanca Boutique hotel คาซาบลังกา บูติก โฮเต็ล', '', '', '', 0, 1, 0, '2023-09-01 04:55:03', '2023-09-01 04:55:03'),
(32, 'Chino Town at Yaowarat Phuket ชิโนทาวน์ แอท เยาวราช ภูเก็ต', 'Chino Town at Yaowarat Phuket ชิโนทาวน์ แอท เยาวราช ภูเก็ต', '', '', '', 0, 1, 0, '2023-09-01 04:55:04', '2023-09-01 04:55:04'),
(33, 'Chino Town Gallery Alley ชิโนทาวน์ แกลเลอรี แอลลีย์', 'Chino Town Gallery Alley ชิโนทาวน์ แกลเลอรี แอลลีย์', '', '', '', 0, 1, 0, '2023-09-01 04:55:04', '2023-09-01 04:55:04'),
(34, 'CHINOTEL โรงแรม ชิโนเทล', 'CHINOTEL โรงแรม ชิโนเทล', '', '', '', 0, 1, 0, '2023-09-01 04:55:04', '2023-09-01 04:55:04'),
(35, 'Courtyard by Marriott Phuket Town คอร์ทยาร์ด แมริออท ภูเก็ต ทาวน์', 'Courtyard by Marriott Phuket Town คอร์ทยาร์ด แมริออท ภูเก็ต ทาวน์', '', '', '', 0, 1, 0, '2023-09-01 04:55:04', '2023-09-01 04:55:04'),
(36, 'Ecoloft Hotel อีโคลอฟต์ โฮเต็ล', 'Ecoloft Hotel อีโคลอฟต์ โฮเต็ล', '', '', '', 0, 1, 0, '2023-09-01 04:55:04', '2023-09-01 04:55:04'),
(37, 'FULFILL HOSTEL ฟูลฟิล ภูเก็ต โฮสเทล', 'FULFILL HOSTEL ฟูลฟิล ภูเก็ต โฮสเทล', '', '', '', 0, 1, 0, '2023-09-01 04:55:04', '2023-09-01 04:55:04'),
(38, 'Grand Supicha City Hotel โรงแรมแกรนด์ สุพิชฌาย์ ซิตี้ ', 'Grand Supicha City Hotel โรงแรมแกรนด์ สุพิชฌาย์ ซิตี้ ', '', '', '', 0, 1, 0, '2023-09-01 04:55:04', '2023-09-01 04:55:04'),
(39, 'Greenleaf Hostel กรีน ลีฟ โฮสเทล ', 'Greenleaf Hostel กรีน ลีฟ โฮสเทล ', '', '', '', 0, 1, 0, '2023-09-01 04:55:04', '2023-09-01 04:55:04'),
(40, 'I Pavilion Hotel Phuket โรงแรมไอ พาวิลเลี่ยน ภูเก็ต', 'I Pavilion Hotel Phuket โรงแรมไอ พาวิลเลี่ยน ภูเก็ต', '', '', '', 0, 1, 0, '2023-09-01 04:55:04', '2023-09-01 04:55:04'),
(41, 'ibis Styles Phuket City ไอบิส สไตล์ ภูเก็ต ซีตี้', 'ibis Styles Phuket City ไอบิส สไตล์ ภูเก็ต ซีตี้', '', '', '', 0, 1, 0, '2023-09-01 04:55:04', '2023-09-01 04:55:04'),
(42, 'Ideo Phuket Hotel โรงแรมไอดีโอ ภูเก็ต', 'Ideo Phuket Hotel โรงแรมไอดีโอ ภูเก็ต', '', '', '', 0, 1, 0, '2023-09-01 04:55:04', '2023-09-01 04:55:04'),
(43, 'lamoon resotel โรงแรมลามูนรีโซเทล', 'lamoon resotel โรงแรมลามูนรีโซเทล', '', '', '', 0, 1, 0, '2023-09-01 04:55:04', '2023-09-01 04:55:04'),
(44, 'Lub Sbuy House Hotel โรงแรม หลับสบายเฮ้าส์ โฮเทล', 'Lub Sbuy House Hotel โรงแรม หลับสบายเฮ้าส์ โฮเทล', '', '', '', 0, 1, 0, '2023-09-01 04:55:04', '2023-09-01 04:55:04'),
(45, 'Mayfa Hotel โรงแรมเมธ์ฟ้า', 'Mayfa Hotel โรงแรมเมธ์ฟ้า', '', '', '', 0, 0, 1, '2023-09-01 04:55:04', '2023-09-22 05:57:47'),
(46, 'MEI ZHOU PHUKET HOTEL โรงแรมเหม่ยโจว ภูเก็ต ', 'MEI ZHOU PHUKET HOTEL โรงแรมเหม่ยโจว ภูเก็ต ', '', '', '', 0, 1, 0, '2023-09-01 04:55:04', '2023-09-01 04:55:04'),
(47, 'Modern Thai Suites Hotel โมเดิร์นไทย สวีท', 'Modern Thai Suites Hotel โมเดิร์นไทย สวีท', '', '', '', 0, 1, 0, '2023-09-01 04:55:04', '2023-09-01 04:55:04'),
(48, 'My stays phuket มายสเตย์ ภูเก็ต ', 'My stays phuket มายสเตย์ ภูเก็ต ', '', '', '', 0, 1, 0, '2023-09-01 04:55:04', '2023-09-01 04:55:04'),
(49, 'Phuketa Hotel โรงแรมภูคีตา ', 'Phuketa Hotel โรงแรมภูคีตา ', '', '', '', 0, 1, 0, '2023-09-01 04:55:04', '2023-09-01 04:55:04'),
(50, 'PRIME TOWN POSH & PORT HOTEL PHUKET ไพรม์ ทาวน์ - พอร์ช แอนด์ พอร์ต โฮเต็ล ภูเก็ต ', 'PRIME TOWN POSH & PORT HOTEL PHUKET ไพรม์ ทาวน์ - พอร์ช แอนด์ พอร์ต โฮเต็ล ภูเก็ต ', '', '', '', 0, 1, 0, '2023-09-01 04:55:04', '2023-09-01 04:55:04'),
(51, 'Ratana Hotel Rassada โรงแรมรัตนา รัษฎา ', 'Ratana Hotel Rassada โรงแรมรัตนา รัษฎา ', '', '', '', 0, 1, 0, '2023-09-01 04:55:04', '2023-09-01 04:55:04'),
(52, 'Ratana Hotel Sakdidet โรงแรมรัตนา ศักดิเดช', 'Ratana Hotel Sakdidet โรงแรมรัตนา ศักดิเดช', '', '', '', 0, 1, 0, '2023-09-01 04:55:04', '2023-09-01 04:55:04'),
(53, 'Rome Place Hotel โรงแรมโรมเพลส ภูเก็ต', 'Rome Place Hotel โรงแรมโรมเพลส ภูเก็ต', '', '', '', 0, 0, 1, '2023-09-01 04:55:04', '2023-09-22 06:16:49'),
(54, 'Seabed Grand Hotel Phuket ซีเบด แกรนด์ โฮเทล ภูเก็ต', 'Seabed Grand Hotel Phuket ซีเบด แกรนด์ โฮเทล ภูเก็ต', '', '', '', 0, 1, 0, '2023-09-01 04:55:04', '2023-09-01 04:55:04'),
(55, 'Sino House Phuket โรงแรมชิโนเฮ้าส์ ', 'Sino House Phuket โรงแรมชิโนเฮ้าส์ ', '', '', '', 0, 1, 0, '2023-09-01 04:55:05', '2023-09-01 04:55:05'),
(56, 'Sino Imperial Phuket  Hotel ชิโน อิมพีเรียล ภูเก็ต โฮเทล', 'Sino Imperial Phuket  Hotel ชิโน อิมพีเรียล ภูเก็ต โฮเทล', '', '', '', 0, 1, 0, '2023-09-01 04:55:05', '2023-09-01 04:55:05'),
(57, 'Sino Inn Phuket Hotel โรงแรมชิโน อินน์', 'Sino Inn Phuket Hotel โรงแรมชิโน อินน์', '', '', '', 0, 1, 0, '2023-09-01 04:55:05', '2023-09-01 04:55:05'),
(58, 'Sleep Sheep Phuket สลีปชีป ภูเก็ต โฮสเทล', 'Sleep Sheep Phuket สลีปชีป ภูเก็ต โฮสเทล', '', '', '', 0, 1, 0, '2023-09-01 04:55:05', '2023-09-01 04:55:05'),
(59, 'Sound Gallery House ซาวด์ แกลเลอรี เฮาส์ ', 'Sound Gallery House ซาวด์ แกลเลอรี เฮาส์ ', '', '', '', 0, 0, 1, '2023-09-01 04:55:05', '2023-09-22 06:19:37'),
(60, 'SP Mansion Hotel โรงแรม เอสพี แมนชั่น', 'SP Mansion Hotel โรงแรม เอสพี แมนชั่น', '', '', '', 0, 1, 0, '2023-09-01 04:55:05', '2023-09-01 04:55:05'),
(61, 'Supicha pool access hotel สุพิชฌาย์ พูล แอคเซส โฮเต็ล ', 'Supicha pool access hotel สุพิชฌาย์ พูล แอคเซส โฮเต็ล ', '', '', '', 0, 1, 0, '2023-09-01 04:55:05', '2023-09-01 04:55:05'),
(62, 'The Arbern Hotel x Bistro ดิ อาร์เบิร์น โฮเทล x บิสโทร', 'The Arbern Hotel x Bistro ดิ อาร์เบิร์น โฮเทล x บิสโทร', '', '', '', 0, 1, 0, '2023-09-01 04:55:05', '2023-09-01 04:55:05'),
(63, 'The Besavana Phuket Hotel เดอะ บีสวาน่า ภูเก็ต ', 'The Besavana Phuket Hotel เดอะ บีสวาน่า ภูเก็ต ', '', '', '', 0, 1, 0, '2023-09-01 04:55:05', '2023-09-01 04:55:05'),
(64, 'The Blanket Hotel เดอะ แบล็งเก็ต โฮเต็ล ', 'The Blanket Hotel เดอะ แบล็งเก็ต โฮเต็ล ', '', '', '', 0, 1, 0, '2023-09-01 04:55:05', '2023-09-01 04:55:05'),
(65, 'The Malika Hotel โรงแรมเดอะ มาลิกา ', 'The Malika Hotel โรงแรมเดอะ มาลิกา ', '', '', '', 0, 1, 0, '2023-09-01 04:55:05', '2023-09-01 04:55:05'),
(66, 'The Memory At On On Hotel โรงแรมเดอะเมมโมรี แอท ออนออน ', 'The Memory At On On Hotel โรงแรมเดอะเมมโมรี แอท ออนออน ', '', '', '', 0, 1, 0, '2023-09-01 04:55:05', '2023-09-01 04:55:05'),
(67, 'The Pago Design Hotel โรงแรม เดอะ พาโก้ ดีไซด์ ภูเก็ต', 'The Pago Design Hotel โรงแรม เดอะ พาโก้ ดีไซด์ ภูเก็ต', '', '', '', 0, 1, 0, '2023-09-01 04:55:05', '2023-09-01 04:55:05'),
(68, 'The Topaz Residence เดอะ โทแพ็ส เรสซิเดนซ์', 'The Topaz Residence เดอะ โทแพ็ส เรสซิเดนซ์', '', '', '', 0, 1, 0, '2023-09-01 04:55:05', '2023-09-01 04:55:05'),
(69, 'VAPA HOTEL วาปา โฮเทล', 'VAPA HOTEL วาปา โฮเทล', '', '', '', 0, 1, 0, '2023-09-01 04:55:05', '2023-09-01 04:55:05'),
(70, 'Xinlor House ซินหล่อ เฮ้า', 'Xinlor House ซินหล่อ เฮ้า', '', '', '', 0, 1, 0, '2023-09-01 04:55:05', '2023-09-01 04:55:05'),
(71, 'ARECA RESORT & SPA อาริกา รีสอร์ต แอนด์ สปา', 'ARECA RESORT & SPA อาริกา รีสอร์ต แอนด์ สปา', '', '', '', 0, 1, 0, '2023-09-01 04:55:05', '2023-09-01 04:55:05'),
(72, 'PRINCE OF SONGKLA UNIVERSITY, PHUKET CAMPUS มหาวิทยาลัยสงขลานครินทร์ วิทยาเขตภูเก็ต', 'PRINCE OF SONGKLA UNIVERSITY, PHUKET CAMPUS มหาวิทยาลัยสงขลานครินทร์ วิทยาเขตภูเก็ต', '', '', '', 0, 1, 0, '2023-09-01 04:55:05', '2023-09-01 04:55:05'),
(73, 'The Palms Residence เดอะ ปาล์ม เรสซิเดนซ์ ', 'The Palms Residence เดอะ ปาล์ม เรสซิเดนซ์ ', '', '', '', 0, 1, 0, '2023-09-01 04:55:05', '2023-09-01 04:55:05'),
(74, 'The Par Phuket โรงแรมเดอะพาร์ ภูเก็ต', 'The Par Phuket โรงแรมเดอะพาร์ ภูเก็ต', '', '', '', 0, 1, 0, '2023-09-01 04:55:05', '2023-09-01 04:55:05'),
(75, 'THE RACHA เดอะ ราชา', 'THE RACHA เดอะ ราชา', '', '', '', 0, 0, 1, '2023-09-01 04:55:05', '2023-09-22 06:48:30'),
(76, 'Anchan Boutique Hotel อัญชัน บูติค โฮเทล', 'Anchan Boutique Hotel อัญชัน บูติค โฮเทล', '', '', '', 0, 1, 0, '2023-09-01 04:55:06', '2023-09-01 04:55:06'),
(77, 'Aochalong Villa Resort & Spa อ่าวฉลอง วิลล่า รีสอร์ท แอนด์ วิลล่า', 'Aochalong Villa Resort & Spa อ่าวฉลอง วิลล่า รีสอร์ท แอนด์ วิลล่า', '', '', '', 0, 1, 0, '2023-09-01 04:55:06', '2023-09-01 04:55:06'),
(78, 'Arch39 Beachfront Phuket อาร์ค39 ภูเก็ต บีชฟรอนต์ ภูเก็ต', 'Arch39 Beachfront Phuket อาร์ค39 ภูเก็ต บีชฟรอนต์ ภูเก็ต', '', '', '', 0, 1, 0, '2023-09-01 04:55:06', '2023-09-01 04:55:06'),
(79, 'Baba House Hotel โรงแรมบาบ๋าเฮ้าส์', 'Baba House Hotel โรงแรมบาบ๋าเฮ้าส์', '', '', '', 0, 1, 0, '2023-09-01 04:55:06', '2023-09-01 04:55:06'),
(80, 'COCO VILLE PHUKET RESORT โคโค่วิลล์ ภูเก็ต รีสอร์ท ', 'COCO VILLE PHUKET RESORT โคโค่วิลล์ ภูเก็ต รีสอร์ท ', '', '', '', 0, 0, 1, '2023-09-01 04:55:06', '2023-09-22 05:41:43'),
(81, 'Phuket Marine Poshtel ภูเก็ต มารีน พอชเทล', 'Phuket Marine Poshtel ภูเก็ต มารีน พอชเทล', '', '', '', 0, 0, 1, '2023-09-01 04:55:06', '2023-09-22 06:05:57'),
(82, 'The Blue Hotel โรงแรมเดอะ บลู ', 'The Blue Hotel โรงแรมเดอะ บลู ', '', '', '', 0, 1, 0, '2023-09-01 04:55:06', '2023-09-01 04:55:06'),
(83, 'THE ELYSIUM RESIDENCE ดิ เอลิเซียม เรสซิเดนซ์', 'THE ELYSIUM RESIDENCE ดิ เอลิเซียม เรสซิเดนซ์', '', '', '', 0, 0, 1, '2023-09-01 04:55:06', '2023-09-22 06:22:52'),
(84, 'The Lake Chalong Resort Phuket เดอะ เลค ฉลอง รีสอร์ท', 'The Lake Chalong Resort Phuket เดอะ เลค ฉลอง รีสอร์ท', '', '', '', 0, 1, 0, '2023-09-01 04:55:06', '2023-09-01 04:55:06'),
(85, 'The Racha เดอะราชา', 'The Racha เดอะราชา', '', '', '', 0, 0, 1, '2023-09-01 04:55:06', '2023-09-22 06:49:08'),
(86, 'The Thames Pool Access Resort   เดอะ เทมส์ พูลแอคเซส รีสอร์ท', 'The Thames Pool Access Resort   เดอะ เทมส์ พูลแอคเซส รีสอร์ท', '', '', '', 0, 0, 1, '2023-09-01 04:55:06', '2023-09-22 06:56:32'),
(87, 'Villa Zolitude Resort & Spa  วิลล่า โซนิจูด', 'Villa Zolitude Resort & Spa  วิลล่า โซนิจูด', '', '', '', 0, 1, 0, '2023-09-01 04:55:06', '2023-09-01 04:55:06'),
(88, 'Vipa House - Phuket  วิภา เฮ้า', 'Vipa House - Phuket  วิภา เฮ้า', '', '', '', 0, 0, 1, '2023-09-01 04:55:06', '2023-09-22 07:02:35'),
(89, 'Wanawalai Luxury Villa วนาวลัย ลักซ์ชัวรี วิลล่า', 'Wanawalai Luxury Villa วนาวลัย ลักซ์ชัวรี วิลล่า', '', '', '', 0, 0, 1, '2023-09-01 04:55:06', '2023-09-22 07:51:32'),
(90, 'MISSION HILLS PHUKET GOLF RESORT มิชชั่น ฮิลล์ ภูเก็ต กอล์ฟ รีสอร์ท', 'MISSION HILLS PHUKET GOLF RESORT มิชชั่น ฮิลล์ ภูเก็ต กอล์ฟ รีสอร์ท', '', '', '', 0, 0, 1, '2023-09-01 04:55:06', '2023-09-22 05:55:21'),
(91, 'NAKA ISLAND นาคา ไอส์แลนด์ ', 'NAKA ISLAND นาคา ไอส์แลนด์ ', '', '', '', 0, 0, 1, '2023-09-01 04:55:06', '2023-09-22 05:59:33'),
(92, 'SUPALAI SCENIC BAY RESORT & SPA ศุภาลัย ซีนิค เบย์ รีสอร์ท แอนด์ สปา', 'SUPALAI SCENIC BAY RESORT & SPA ศุภาลัย ซีนิค เบย์ รีสอร์ท แอนด์ สปา', '', '', '', 0, 0, 1, '2023-09-01 04:55:06', '2023-09-22 06:21:29'),
(93, 'THANYAPURA RETREAT ธัญญปุระ รีเทรด', 'THANYAPURA RETREAT ธัญญปุระ รีเทรด', '', '', '', 0, 1, 0, '2023-09-01 04:55:06', '2023-09-01 04:55:06'),
(94, 'THANYAPURA SPORTS HOTEL ธัญญปุระ สปอร์ต', 'THANYAPURA SPORTS HOTEL ธัญญปุระ สปอร์ต', '', '', '', 0, 1, 0, '2023-09-01 04:55:06', '2023-09-01 04:55:06'),
(95, '8IK88 RESORT 8IK88 รีสอร์ท', '8IK88 RESORT 8IK88 รีสอร์ท', '', '', '', 0, 0, 1, '2023-09-01 04:55:06', '2023-09-22 05:24:19'),
(96, 'Boutique Resort บูติค รีสอร์ท', 'Boutique Resort บูติค รีสอร์ท', '', '', '', 0, 0, 1, '2023-09-01 04:55:06', '2023-09-22 05:36:05'),
(97, 'CASADA SUITTE Pool Villas คาซาดา สวีท พูลวิลลา', 'CASADA SUITTE Pool Villas คาซาดา สวีท พูลวิลลา', '', '', '', 0, 0, 1, '2023-09-01 04:55:06', '2023-09-22 05:40:07'),
(98, 'Chandara Resort & Spa จันทร์ดารา รีสอร์ท แอนด์ สปา ', 'Chandara Resort & Spa จันทร์ดารา รีสอร์ท แอนด์ สปา ', '', '', '', 0, 0, 1, '2023-09-01 04:55:07', '2023-09-22 05:41:12'),
(99, 'COMO Point Yamu โคโม พอยท์ ยามู', 'COMO Point Yamu โคโม พอยท์ ยามู', '', '', '', 0, 1, 0, '2023-09-01 04:55:07', '2023-09-01 04:55:07'),
(100, 'Gold chariot โกลด์ ชาริออท', 'Gold chariot โกลด์ ชาริออท', '', '', '', 0, 0, 1, '2023-09-01 04:55:07', '2023-09-22 05:44:32'),
(101, 'Hanuman V.I.P Hostel หนุมาน วีไอพี โฮสเทล ', 'Hanuman V.I.P Hostel หนุมาน วีไอพี โฮสเทล ', '', '', '', 0, 0, 1, '2023-09-01 04:55:07', '2023-09-22 05:46:06'),
(102, 'Poolrada Boutique Hotel พูลรดา บูทีค โฮเทล ', 'Poolrada Boutique Hotel พูลรดา บูทีค โฮเทล ', '', '', '', 0, 0, 1, '2023-09-01 04:55:07', '2023-09-22 06:07:50'),
(103, 'Rattana Residence Thalang รัตนา เรสซิเดนซ์ ถลาง', 'Rattana Residence Thalang รัตนา เรสซิเดนซ์ ถลาง', '', '', '', 0, 0, 1, '2023-09-01 04:55:07', '2023-09-22 06:09:32'),
(104, 'Supalai Scenic Bay Resort And Spa ศุภาลัย ซีนิค เบย์ รีสอร์ท แอนด์ สปา ', 'Supalai Scenic Bay Resort And Spa ศุภาลัย ซีนิค เบย์ รีสอร์ท แอนด์ สปา ', '', '', '', 0, 1, 0, '2023-09-01 04:55:07', '2023-09-01 04:55:07'),
(105, 'Thanyapura Sports and Health Resort ธัญญปุระ สปอร์ต แอนด์ เฮลท์ รีสอร์ท ', 'Thanyapura Sports and Health Resort ธัญญปุระ สปอร์ต แอนด์ เฮลท์ รีสอร์ท ', '', '', '', 0, 1, 0, '2023-09-01 04:55:07', '2023-09-01 04:55:07'),
(106, 'The Naka Island, A Luxury Collection Resort & Spa, Phuket เดอะ นาคา ไอส์แลนด์ อะ ลักชัวรี คอลเลกชั่น รีสอร์ต แอนด์ สปา ภูเก็ต', 'The Naka Island, A Luxury Collection Resort & Spa, Phuket เดอะ นาคา ไอส์แลนด์ อะ ลักชัวรี คอลเลกชั่น รีสอร์ต แอนด์ สปา ภูเก็ต', '', '', '', 0, 0, 1, '2023-09-01 04:55:07', '2023-09-22 06:45:15'),
(107, 'The Rubber Hotel  เดอะ รับเบอร์ โฮเทล', 'The Rubber Hotel  เดอะ รับเบอร์ โฮเทล', '', '', '', 0, 0, 1, '2023-09-01 04:55:07', '2023-09-22 06:50:35'),
(108, 'Villa Amaravida  วิลล่า  อมาราวิดา', 'Villa Amaravida  วิลล่า  อมาราวิดา', '', '', '', 0, 0, 1, '2023-09-01 04:55:07', '2023-09-22 07:02:00'),
(109, 'Villa Leelawadee วิลล่า ลีลาวดี', 'Villa Leelawadee วิลล่า ลีลาวดี', '', '', '', 0, 0, 1, '2023-09-01 04:55:07', '2023-09-22 07:52:48'),
(110, 'Villa Padma  วิลล่า พาดม่า', 'Villa Padma  วิลล่า พาดม่า', '', '', '', 0, 0, 1, '2023-09-01 04:55:07', '2023-09-22 07:52:32'),
(111, 'Villa Sawarin   วิลล่า ซาวาริน', 'Villa Sawarin   วิลล่า ซาวาริน', '', '', '', 0, 0, 1, '2023-09-01 04:55:07', '2023-09-22 07:52:07'),
(112, 'Yipmunta  ยิปมันตรา', 'Yipmunta  ยิปมันตรา', '', '', '', 0, 0, 1, '2023-09-01 04:55:07', '2023-09-22 07:02:49'),
(113, 'V Villas Phuket  วี  วิลล่า ภูเก็ต', 'V Villas Phuket  วี  วิลล่า ภูเก็ต', '', '', '', 0, 1, 0, '2023-09-01 04:55:07', '2023-09-01 04:55:07'),
(114, 'ANDAMAN WHITE BEACH RESORT อันดามัน ไวท์ บีช รีสอร์ท', 'ANDAMAN WHITE BEACH RESORT อันดามัน ไวท์ บีช รีสอร์ท', '', '', '', 0, 1, 0, '2023-09-01 04:55:07', '2023-09-01 04:55:07'),
(115, 'DOUBLE TREE BY HILTON PHUKET BANTHAI RESORT ดับเบิ้ลทรี บาย ฮิลตัน ภูเก็ต บ้านไทย รีสอร์ท', 'DOUBLE TREE BY HILTON PHUKET BANTHAI RESORT ดับเบิ้ลทรี บาย ฮิลตัน ภูเก็ต บ้านไทย รีสอร์ท', '', '', '', 0, 0, 1, '2023-09-01 04:55:07', '2023-09-22 05:43:58'),
(116, 'Casa Sakoo Resort คาซา สาคู รีสอร์ท', 'Casa Sakoo Resort คาซา สาคู รีสอร์ท', '', '', '', 0, 0, 1, '2023-09-01 04:55:07', '2023-09-22 05:38:38'),
(117, 'Naithonburi Beach Resort ในทอน บุรี บีช รีสอร์ท ', 'Naithonburi Beach Resort ในทอน บุรี บีช รีสอร์ท ', '', '', '', 0, 1, 0, '2023-09-01 04:55:07', '2023-09-01 04:55:07'),
(118, 'PULLMAN PHUKET ARCADIA NAITHON BEACH พูลแมน ภูเก็ต อาเคเดีย ในทอน บีช รีสอร์ท', 'PULLMAN PHUKET ARCADIA NAITHON BEACH พูลแมน ภูเก็ต อาเคเดีย ในทอน บีช รีสอร์ท', '', '', '', 0, 1, 0, '2023-09-01 04:55:07', '2023-09-01 04:55:07'),
(119, 'The lifeco Phuket   เดอะ ลิฟีโก  ภูเก็ต', 'The lifeco Phuket   เดอะ ลิฟีโก  ภูเก็ต', '', '', '', 0, 0, 1, '2023-09-01 04:55:08', '2023-09-22 06:23:57'),
(120, 'Trisara Phuket', 'ตรีสรา ภูเก็ต', '', '', '', 0, 1, 0, '2023-09-01 04:55:08', '2023-09-22 07:01:28'),
(121, 'Villa Paradiso  วิลล่า พาราดิโซ', 'Villa Paradiso  วิลล่า พาราดิโซ', '', '', '', 0, 0, 1, '2023-09-01 04:55:08', '2023-09-22 07:52:21'),
(122, 'DEWA PHUKET RESORT & VILLAS  โรงแรมเดวาภูเก็ต รีสอร์ท แอนด์ วิลล่า', 'DEWA PHUKET RESORT & VILLAS  โรงแรมเดวาภูเก็ต รีสอร์ท แอนด์ วิลล่า', '', '', '', 0, 1, 0, '2023-09-01 04:55:08', '2023-09-01 04:55:08'),
(123, 'NAI YANG BEACH RESORT & SPA ในยางบีช รีสอร์ท แอนด์ สปา', 'NAI YANG BEACH RESORT & SPA ในยางบีช รีสอร์ท แอนด์ สปา', '', '', '', 0, 1, 0, '2023-09-01 04:55:08', '2023-09-01 04:55:08'),
(124, 'PHUKET MARRIOTT RESORT AND SPA NAI YANG BEACH โรงแรมภูเก็ต แมริออท รีสอร์ต แอนด์ สปา หาดในยาง', 'PHUKET MARRIOTT RESORT AND SPA NAI YANG BEACH โรงแรมภูเก็ต แมริออท รีสอร์ต แอนด์ สปา หาดในยาง', '', '', '', 0, 1, 0, '2023-09-01 04:55:08', '2023-09-01 04:55:08'),
(125, 'THE SLATE เดอะซเลท ภูเก็ต', 'THE SLATE เดอะซเลท ภูเก็ต', '', '', '', 0, 0, 1, '2023-09-01 04:55:08', '2023-09-22 06:52:19'),
(126, 'ATOM PHUKET HOTEL อะตอม ภูเก็ต โฮเทล', 'ATOM PHUKET HOTEL อะตอม ภูเก็ต โฮเทล', '', '', '', 0, 1, 0, '2023-09-01 04:55:08', '2023-09-01 04:55:08'),
(127, 'Lesprit de Naiyang เลสปรี เดอ ในยาง', 'Lesprit de Naiyang เลสปรี เดอ ในยาง', '', '', '', 0, 1, 0, '2023-09-01 04:55:08', '2023-09-01 04:55:08'),
(128, 'Marina Express Aviator Phuket Airport มารีนา เอ็กซ์เพรส เอวิเอเตอร์ ภูเก็ต แอร์พอร์ต ', 'Marina Express Aviator Phuket Airport มารีนา เอ็กซ์เพรส เอวิเอเตอร์ ภูเก็ต แอร์พอร์ต ', '', '', '', 0, 1, 0, '2023-09-01 04:55:08', '2023-09-01 04:55:08'),
(129, 'Maya Phuket มายา ภูเก็ต แอร์พอร์ต โฮเต็ล ', 'Maya Phuket มายา ภูเก็ต แอร์พอร์ต โฮเต็ล ', '', '', '', 0, 1, 0, '2023-09-01 04:55:08', '2023-09-01 04:55:08'),
(130, 'NAI YANG PARK RESORT ในยาง พาร์ค รีสอร์ท ', 'NAI YANG PARK RESORT ในยาง พาร์ค รีสอร์ท ', '', '', '', 0, 1, 0, '2023-09-01 04:55:08', '2023-09-22 05:56:42'),
(131, 'PENSIRI HOUSE เพ็ญศิริ เฮาส์ ', 'PENSIRI HOUSE เพ็ญศิริ เฮาส์ ', '', '', '', 0, 0, 1, '2023-09-01 04:55:08', '2023-09-22 06:03:32'),
(132, 'Phuket Airport Place ภูเก็ต แอร์พอร์ท เพลส ', 'Phuket Airport Place ภูเก็ต แอร์พอร์ท เพลส ', '', '', '', 0, 1, 0, '2023-09-01 04:55:08', '2023-09-01 04:55:08'),
(133, 'The Slate Phuket เดอะ ซเลท ภูเก็ต', 'The Slate Phuket เดอะ ซเลท ภูเก็ต', '', '', '', 0, 1, 0, '2023-09-01 04:55:08', '2023-09-01 04:55:08'),
(134, 'Hotel all seasons Naiharn Phuket โรงแรม ออล ซีซั่น ในหาน ภูเก็ต', 'Hotel all seasons Naiharn Phuket โรงแรม ออล ซีซั่น ในหาน ภูเก็ต', '', '', '', 0, 1, 0, '2023-09-01 04:55:08', '2023-09-01 04:55:08'),
(135, 'NAI HARN PHUKET ในหาน ภูเก็ต', 'NAI HARN PHUKET ในหาน ภูเก็ต', '', '', '', 0, 1, 0, '2023-09-01 04:55:08', '2023-09-01 04:55:08'),
(136, 'SUNSURI PHUKET HOTEL สันติ์สุริย์ ภูเก็ต', 'SUNSURI PHUKET HOTEL สันติ์สุริย์ ภูเก็ต', '', '', '', 0, 1, 0, '2023-09-01 04:55:08', '2023-09-01 04:55:08'),
(137, 'Naiharn Beach Resort ในหาน บีช รีสอร์ท ', 'Naiharn Beach Resort ในหาน บีช รีสอร์ท ', '', '', '', 0, 0, 1, '2023-09-01 04:55:08', '2023-09-22 05:55:03'),
(138, 'THE NAI HARN เดอะในหาน ', 'THE NAI HARN เดอะในหาน ', '', '', '', 0, 0, 1, '2023-09-01 04:55:08', '2023-09-22 06:44:07'),
(139, 'Wyndham Grand Nai Harn Beach Phuket วินดอม แกรน ในหาน ภูเก็ต ', 'Wyndham Grand Nai Harn Beach Phuket วินดอม แกรน ในหาน ภูเก็ต ', '', '', '', 0, 1, 0, '2023-09-01 04:55:08', '2023-09-01 04:55:08'),
(140, 'Baan Yin Dee Boutique Resort บ้านยินดี บูทิค รีสอร์ท', 'Baan Yin Dee Boutique Resort บ้านยินดี บูทิค รีสอร์ท', '', '', '', 0, 1, 0, '2023-09-01 04:55:09', '2023-09-01 04:55:09'),
(141, 'PHUKET MARRIOTT RESORT AND SPA , MERLIN BEACH โรงแรมภูเก็ต แมริออท รีสอร์ทแอนด์สปา เมอร์ลินบีช ', 'PHUKET MARRIOTT RESORT AND SPA , MERLIN BEACH โรงแรมภูเก็ต แมริออท รีสอร์ทแอนด์สปา เมอร์ลินบีช ', '', '', '', 0, 1, 0, '2023-09-01 04:55:09', '2023-09-01 04:55:09'),
(142, 'ROSEWOOD PHUKET โรสวูด ภูเก็ต', 'ROSEWOOD PHUKET โรสวูด ภูเก็ต', '', '', '', 0, 1, 0, '2023-09-01 04:55:09', '2023-09-01 04:55:09'),
(143, 'Avista Hideaway Phuket Patong, Mgallery อวิสต้า ไฮด์อเวย์ ภูเก็ต ป่าตอง - เอ็มแกลลอรี', 'Avista Hideaway Phuket Patong, Mgallery อวิสต้า ไฮด์อเวย์ ภูเก็ต ป่าตอง - เอ็มแกลลอรี', '', '', '', 0, 1, 0, '2023-09-01 04:55:09', '2023-09-01 04:55:09'),
(144, 'Baan Yuree Resort บ้าน ยุรี  รีสอร์ท ', 'Baan Yuree Resort บ้าน ยุรี  รีสอร์ท ', '', '', '', 0, 1, 0, '2023-09-01 04:55:09', '2023-09-01 04:55:09'),
(145, 'Crest resort and pool villas เครสท์ รีสอร์ท แอนด์ พูล วิลล่า', 'Crest resort and pool villas เครสท์ รีสอร์ท แอนด์ พูล วิลล่า', '', '', '', 0, 1, 0, '2023-09-01 04:55:09', '2023-09-01 04:55:09'),
(146, 'JW Marriott Phuket Resort & Spa เจดับบลิว แมริออท ภูเก็ต รีสอร์ท แอนด์ สปา', 'JW Marriott Phuket Resort & Spa เจดับบลิว แมริออท ภูเก็ต รีสอร์ท แอนด์ สปา', '', '', '', 0, 0, 1, '2023-09-01 04:55:09', '2023-09-22 05:49:14'),
(147, 'ANANTARA RESORT & SPA PHUKET อนันตรา  รีสอร์ท แอนด์ สปา ภูเก็ต ', 'ANANTARA RESORT & SPA PHUKET อนันตรา  รีสอร์ท แอนด์ สปา ภูเก็ต ', '', '', '', 0, 1, 0, '2023-09-01 04:55:09', '2023-09-01 04:55:09'),
(148, 'HOLIDAY INN RESORT PHUKET MAI KHAO BEACH ฮอลิเดย์ อินน์ รีสอร์ท ภูเก็ต ไม้ขาวบีช', 'HOLIDAY INN RESORT PHUKET MAI KHAO BEACH ฮอลิเดย์ อินน์ รีสอร์ท ภูเก็ต ไม้ขาวบีช', '', '', '', 0, 1, 0, '2023-09-01 04:55:09', '2023-09-01 04:55:09'),
(149, 'MAIKHAO DREAM VILLA RESORT & SPA ไม้ขาว ดรีม วิลลา รีสอร์ท แอนด์ สปา ', 'MAIKHAO DREAM VILLA RESORT & SPA ไม้ขาว ดรีม วิลลา รีสอร์ท แอนด์ สปา ', '', '', '', 0, 1, 0, '2023-09-01 04:55:09', '2023-09-01 04:55:09'),
(150, 'SALA PHUKET MAIKHAO BEACH RESORT ศาลาภูเก็ต ไม้ขาวบีช รีสอร์ท', 'SALA PHUKET MAIKHAO BEACH RESORT ศาลาภูเก็ต ไม้ขาวบีช รีสอร์ท', '', '', '', 0, 0, 1, '2023-09-01 04:55:09', '2023-09-22 06:17:40'),
(151, 'SPLASH BEACH RESORT สแปลช บีช รีสอร์ต ไม้ขาว ภูเก็ต', 'SPLASH BEACH RESORT สแปลช บีช รีสอร์ต ไม้ขาว ภูเก็ต', '', '', '', 0, 1, 0, '2023-09-01 04:55:09', '2023-09-01 04:55:09'),
(152, 'Anantara Vacation Club Mai Khao Phuket อนันตรา เวเคชั่น คลับ ไม้ขาว ภูเก็ต', 'Anantara Vacation Club Mai Khao Phuket อนันตรา เวเคชั่น คลับ ไม้ขาว ภูเก็ต', '', '', '', 0, 1, 0, '2023-09-01 04:55:09', '2023-09-01 04:55:09'),
(153, 'Avani+ Mai Khao Phuket Suites & Villas อวานี พลัส ไม้ขาว ภูเก็ต สวีท แอนด์ วิลล่า', 'Avani+ Mai Khao Phuket Suites & Villas อวานี พลัส ไม้ขาว ภูเก็ต สวีท แอนด์ วิลล่า', '', '', '', 0, 1, 0, '2023-09-01 04:55:09', '2023-09-01 04:55:09'),
(154, 'Coriacea Boutique Resort โคเรียซี บูติค รีสอร์ท', 'Coriacea Boutique Resort โคเรียซี บูติค รีสอร์ท', '', '', '', 0, 0, 1, '2023-09-01 04:55:09', '2023-09-22 05:42:46'),
(155, 'JW Marriott Phuket Resort & Spa เจดับบลิว แมริออท ภูเก็ต รีสอร์ท แอนด์ สปา', 'JW Marriott Phuket Resort & Spa เจดับบลิว แมริออท ภูเก็ต รีสอร์ท แอนด์ สปา', '', '', '', 0, 1, 0, '2023-09-01 04:55:09', '2023-09-01 04:55:09'),
(156, 'Maikhao Home Garden Bungalow ไม้ขาว โฮม การ์เด้น บังกะโล', 'Maikhao Home Garden Bungalow ไม้ขาว โฮม การ์เด้น บังกะโล', '', '', '', 0, 0, 1, '2023-09-01 04:55:09', '2023-09-22 05:54:04'),
(157, 'Maikhao Palm Beach Resort ไม้ขาว ปาล์ม บีช รีสอร์ท ', 'Maikhao Palm Beach Resort ไม้ขาว ปาล์ม บีช รีสอร์ท ', '', '', '', 0, 1, 0, '2023-09-01 04:55:09', '2023-09-01 04:55:09'),
(158, 'Renaissance Phuket Resort & Spa เรเนซองส์ ภูเก็ต รีสอร์ต แอนด์ สปา', 'Renaissance Phuket Resort & Spa เรเนซองส์ ภูเก็ต รีสอร์ต แอนด์ สปา', '', '', '', 0, 1, 0, '2023-09-01 04:55:09', '2023-09-01 04:55:09'),
(159, 'SALA Phuket Mai Khao Beach ศาลา ภูเก็ต ไม้ขาว บีช', 'SALA Phuket Mai Khao Beach ศาลา ภูเก็ต ไม้ขาว บีช', '', '', '', 0, 1, 0, '2023-09-01 04:55:09', '2023-09-01 04:55:09'),
(160, 'Hyatt Regency Phuket Resort ไฮแอท รีเจนซี่ ภูเก็ต รีสอร์ท', 'Hyatt Regency Phuket Resort ไฮแอท รีเจนซี่ ภูเก็ต รีสอร์ท', '', '', '', 0, 1, 0, '2023-09-01 04:55:10', '2023-09-01 04:55:10'),
(161, 'AQUAMARINE RESORT & VILLA อความารีน รีสอร์ท แอนด์ สปา', 'AQUAMARINE RESORT & VILLA อความารีน รีสอร์ท แอนด์ สปา', '', '', '', 0, 1, 0, '2023-09-01 04:55:10', '2023-09-01 04:55:10'),
(162, 'AYARA VILLAS ไอยรา วิลล่า', 'AYARA VILLAS ไอยรา วิลล่า', '', '', '', 0, 1, 0, '2023-09-01 04:55:10', '2023-09-01 04:55:10'),
(163, 'INTERCONTINENTAL PHUKET RESORT อินเตอร์คอนติเนนตัล ภูเก็ต รีสอร์ท', 'INTERCONTINENTAL PHUKET RESORT อินเตอร์คอนติเนนตัล ภูเก็ต รีสอร์ท', '', '', '', 0, 1, 0, '2023-09-01 04:55:10', '2023-09-01 04:55:10'),
(164, 'KEEMALA กีมาลา', 'KEEMALA กีมาลา', '', '', '', 0, 1, 0, '2023-09-01 04:55:10', '2023-09-01 04:55:10'),
(165, 'Andara Resort and Villas อันดาร่า รีสอร์ท แอนด์ วิลล่า', 'Andara Resort and Villas อันดาร่า รีสอร์ท แอนด์ วิลล่า', '', '', '', 0, 1, 0, '2023-09-01 04:55:10', '2023-09-01 04:55:10'),
(166, 'Ayara Kamala Resort & Spa โรงแรมไอยรา กมลา รีสอร์ท แอนด์ สปา', 'Ayara Kamala Resort & Spa โรงแรมไอยรา กมลา รีสอร์ท แอนด์ สปา', '', '', '', 0, 1, 0, '2023-09-01 04:55:10', '2023-09-01 04:55:10'),
(167, 'Baanchomview Kamala Hotel บ้านชมวิว กมลา ', 'Baanchomview Kamala Hotel บ้านชมวิว กมลา ', '', '', '', 0, 1, 0, '2023-09-01 04:55:10', '2023-09-01 04:55:10'),
(168, 'Buk inn Hotel โรงแรมบุ๊ค อินน์', 'Buk inn Hotel โรงแรมบุ๊ค อินน์', '', '', '', 0, 1, 0, '2023-09-01 04:55:10', '2023-09-01 04:55:10'),
(169, 'Cape Sienna Phuket Gourmet Hotel & Villas เคป เซียนนา กูร์เมต์ โฮเต็ล แอนด์ วิลลา', 'Cape Sienna Phuket Gourmet Hotel & Villas เคป เซียนนา กูร์เมต์ โฮเต็ล แอนด์ วิลลา', '', '', '', 0, 1, 0, '2023-09-01 04:55:10', '2023-09-01 04:55:10'),
(170, 'Chabana Resort ชบาน่า รีสอร์ท ', 'Chabana Resort ชบาน่า รีสอร์ท ', '', '', '', 0, 1, 0, '2023-09-01 04:55:10', '2023-09-01 04:55:10'),
(171, 'Hyatt Regency Phuket Resort ไฮแอท รีเจนซี่ ภูเก็ต รีสอร์ท', 'Hyatt Regency Phuket Resort ไฮแอท รีเจนซี่ ภูเก็ต รีสอร์ท', '', '', '', 0, 0, 1, '2023-09-01 04:55:10', '2023-09-22 05:48:37'),
(172, 'Kamala Beach Estate กมลา บีช เอสเตท', 'Kamala Beach Estate กมลา บีช เอสเตท', '', '', '', 0, 1, 0, '2023-09-01 04:55:10', '2023-09-01 04:55:10'),
(173, 'Kamala Beach Hotel กมลา บีช โฮเต็ล', 'Kamala Beach Hotel กมลา บีช โฮเต็ล', '', '', '', 0, 1, 0, '2023-09-01 04:55:10', '2023-09-01 04:55:10'),
(174, 'Kamala Beach Residence กมลา บีช เรสซิเดนซ์', 'Kamala Beach Residence กมลา บีช เรสซิเดนซ์', '', '', '', 0, 1, 0, '2023-09-01 04:55:10', '2023-09-01 04:55:10'),
(175, 'Kamala Resotel กมลา รีโซเทล', 'Kamala Resotel กมลา รีโซเทล', '', '', '', 0, 1, 0, '2023-09-01 04:55:10', '2023-09-01 04:55:10'),
(176, 'Namaka Resort Kamala นามาคา รีสอร์ท กมลา', 'Namaka Resort Kamala นามาคา รีสอร์ท กมลา', '', '', '', 0, 1, 0, '2023-09-01 04:55:10', '2023-09-01 04:55:10'),
(177, 'Novotel Phuket Kamala Beach โรงแรมโนโวเทล ภูเก็ต กมลา บีช', 'Novotel Phuket Kamala Beach โรงแรมโนโวเทล ภูเก็ต กมลา บีช', '', '', '', 0, 1, 0, '2023-09-01 04:55:10', '2023-09-01 04:55:10'),
(178, 'Paresa resort phuket ภารีสา รีสอร์ท ภูเก็ต', 'Paresa resort phuket ภารีสา รีสอร์ท ภูเก็ต', '', '', '', 0, 1, 0, '2023-09-01 04:55:10', '2023-09-01 04:55:10'),
(179, 'The Cool Water เดอะ คูลวอเตอร์ กมลา', 'The Cool Water เดอะ คูลวอเตอร์ กมลา', '', '', '', 0, 1, 0, '2023-09-01 04:55:10', '2023-09-01 04:55:10'),
(180, 'The Naka Phuket เดอะ นาคา ภูเก็ต วิลลา ', 'The Naka Phuket เดอะ นาคา ภูเก็ต วิลลา ', '', '', '', 0, 1, 0, '2023-09-01 04:55:10', '2023-09-01 04:55:10'),
(181, 'The Palms Kamala เดอะ ปาล์ม กมลา ', 'The Palms Kamala เดอะ ปาล์ม กมลา ', '', '', '', 0, 1, 0, '2023-09-01 04:55:10', '2023-09-01 04:55:10'),
(182, 'The Pe La Resort เดอะ เพ ลา รีสอร์ท ภูเก็ต ', 'The Pe La Resort เดอะ เพ ลา รีสอร์ท ภูเก็ต ', '', '', '', 0, 0, 1, '2023-09-01 04:55:11', '2023-09-22 06:46:33'),
(183, 'Villa Analaya  วิลล่า อันลายา', 'Villa Analaya  วิลล่า อันลายา', '', '', '', 0, 0, 1, '2023-09-01 04:55:11', '2023-09-22 07:02:21'),
(184, 'ANDAMAN CANNACIA RESORT & SPA อันดามัน คาเนเซีย รีสอร์ท แอนด์ สปา', 'ANDAMAN CANNACIA RESORT & SPA อันดามัน คาเนเซีย รีสอร์ท แอนด์ สปา', '', '', '', 0, 1, 0, '2023-09-01 04:55:11', '2023-09-01 04:55:11'),
(185, 'BEYOND RESORT KATA บียอนด์  รีสอร์ท กะตะ', 'BEYOND RESORT KATA บียอนด์  รีสอร์ท กะตะ', '', '', '', 0, 1, 0, '2023-09-01 04:55:11', '2023-09-01 04:55:11'),
(186, 'BOATHOUSE ON KATA BEACH โบทเฮ้าส์ ออน กะตะ บีช', 'BOATHOUSE ON KATA BEACH โบทเฮ้าส์ ออน กะตะ บีช', '', '', '', 0, 1, 0, '2023-09-01 04:55:11', '2023-09-01 04:55:11'),
(187, 'CENTARA KATA RESORT PHUKET เซ็นทารา กะตะ  รีสอร์ท ภูเก็ต', 'CENTARA KATA RESORT PHUKET เซ็นทารา กะตะ  รีสอร์ท ภูเก็ต', '', '', '', 0, 1, 0, '2023-09-01 04:55:11', '2023-09-01 04:55:11'),
(188, 'CLUB MEDITERRANEE คลับเมดิแตร์ราเน', 'CLUB MEDITERRANEE คลับเมดิแตร์ราเน', '', '', '', 0, 1, 0, '2023-09-01 04:55:11', '2023-09-01 04:55:11'),
(189, 'KATA ROCKS RESORT กะตะ ร็อค รีสอร์ท', 'KATA ROCKS RESORT กะตะ ร็อค รีสอร์ท', '', '', '', 0, 1, 0, '2023-09-01 04:55:11', '2023-09-01 04:55:11'),
(190, 'KATA SEA BREEZE RESORT กะตะ ซีบรีซ รีสอร์ท', 'KATA SEA BREEZE RESORT กะตะ ซีบรีซ รีสอร์ท', '', '', '', 0, 1, 0, '2023-09-01 04:55:11', '2023-09-01 04:55:11'),
(191, 'KATATHANI PHUKET BEACH RESORT กะตะธานี ภูเก็ต บีช รีสอร์ท', 'KATATHANI PHUKET BEACH RESORT กะตะธานี ภูเก็ต บีช รีสอร์ท', '', '', '', 0, 1, 0, '2023-09-01 04:55:11', '2023-09-01 04:55:11'),
(192, 'MALISA VILLA SUITES มะลิษา วิลล่า สวีท', 'MALISA VILLA SUITES มะลิษา วิลล่า สวีท', '', '', '', 0, 1, 0, '2023-09-01 04:55:11', '2023-09-01 04:55:11'),
(193, 'NOVOTEL PHUKET KATA AVISTA RESORT AND SPA โรงแรม โนโวเทล ภูเก็ต กะตะ อวิสต้า รีสอร์ท แอนด์ สปา', 'NOVOTEL PHUKET KATA AVISTA RESORT AND SPA โรงแรม โนโวเทล ภูเก็ต กะตะ อวิสต้า รีสอร์ท แอนด์ สปา', '', '', '', 0, 1, 0, '2023-09-01 04:55:11', '2023-09-01 04:55:11'),
(194, 'ORCHIDACEA RESORT ออร์คิดเดเซีย รีสอร์ท', 'ORCHIDACEA RESORT ออร์คิดเดเซีย รีสอร์ท', '', '', '', 0, 1, 0, '2023-09-01 04:55:11', '2023-09-01 04:55:11'),
(195, 'PEACH HILL RESORT พีช ฮิลล์ รีสอร์ท', 'PEACH HILL RESORT พีช ฮิลล์ รีสอร์ท', '', '', '', 0, 1, 0, '2023-09-01 04:55:11', '2023-09-01 04:55:11'),
(196, 'THE SIS KATA RESORT เดอะ ซิส กะตะ รีสอร์ท', 'THE SIS KATA RESORT เดอะ ซิส กะตะ รีสอร์ท', '', '', '', 0, 0, 1, '2023-09-01 04:55:11', '2023-09-22 06:51:06'),
(197, 'THE YAMA HOTEL PHUKET เดอะ ยามา โฮเทล ภูเก็ต', 'THE YAMA HOTEL PHUKET เดอะ ยามา โฮเทล ภูเก็ต', '', '', '', 0, 1, 0, '2023-09-01 04:55:11', '2023-09-01 04:55:11'),
(198, 'Aurico Kata Resort & Spa ออริโก้กะตะ รีสอร์ท แอนด์ สปา', 'Aurico Kata Resort & Spa ออริโก้กะตะ รีสอร์ท แอนด์ สปา', '', '', '', 0, 1, 0, '2023-09-01 04:55:11', '2023-09-01 04:55:11'),
(199, 'DOME KATA RESORT โดม กะตะ รีสอร์ท', 'DOME KATA RESORT โดม กะตะ รีสอร์ท', '', '', '', 0, 1, 0, '2023-09-01 04:55:11', '2023-09-01 04:55:11'),
(200, 'Ibis Phuket Kata ไอบิส ภูเก็ต กะตะ', 'Ibis Phuket Kata ไอบิส ภูเก็ต กะตะ', '', '', '', 0, 1, 0, '2023-09-01 04:55:11', '2023-09-01 04:55:11'),
(201, 'Impiana Private Villas Kata Noi อิมเพียน่า ไพรเวท วิลล่า กะตะน้อย', 'Impiana Private Villas Kata Noi อิมเพียน่า ไพรเวท วิลล่า กะตะน้อย', '', '', '', 0, 1, 0, '2023-09-01 04:55:11', '2023-09-01 04:55:11'),
(202, 'Kata Bai D กะตะ บายดี', 'Kata Bai D กะตะ บายดี', '', '', '', 0, 1, 0, '2023-09-01 04:55:11', '2023-09-01 04:55:11'),
(203, 'Kata hill sea view กะตะฮิลล์ ซีวิว', 'Kata hill sea view กะตะฮิลล์ ซีวิว', '', '', '', 0, 0, 1, '2023-09-01 04:55:12', '2023-09-22 05:50:06'),
(204, 'Kata Leaf Rerost กะตะ ลีฟ รีสอร์ท', 'Kata Leaf Rerost กะตะ ลีฟ รีสอร์ท', '', '', '', 0, 1, 0, '2023-09-01 04:55:12', '2023-09-01 04:55:12'),
(205, 'Kata Palm Resort & Spa กะตะ ปาล์ม รีสอร์ท แอนด์ สปา', 'Kata Palm Resort & Spa กะตะ ปาล์ม รีสอร์ท แอนด์ สปา', '', '', '', 0, 1, 0, '2023-09-01 04:55:12', '2023-09-01 04:55:12'),
(206, 'Kata Sun Beach โรงแรมกะตะ ซัน บีช', 'Kata Sun Beach โรงแรมกะตะ ซัน บีช', '', '', '', 0, 1, 0, '2023-09-01 04:55:12', '2023-09-01 04:55:12'),
(207, 'KATA TRANQUIL VILLA กะตะ ทรานควิล วิลล่า', 'KATA TRANQUIL VILLA กะตะ ทรานควิล วิลล่า', '', '', '', 0, 0, 1, '2023-09-01 04:55:12', '2023-09-22 05:50:45'),
(208, 'Katamanda - Villa Amanzi by Elite Havens กะตะมันดา - วิลล่า อะมันซี ', 'Katamanda - Villa Amanzi by Elite Havens กะตะมันดา - วิลล่า อะมันซี ', '', '', '', 0, 0, 1, '2023-09-01 04:55:12', '2023-09-22 05:51:35'),
(209, 'Kata pool side resort Kata beach กะตะ พูลไซด์ รีสอร์ท กะตะ บีช', 'Kata pool side resort Kata beach กะตะ พูลไซด์ รีสอร์ท กะตะ บีช', '', '', '', 0, 1, 0, '2023-09-01 04:55:12', '2023-09-01 04:55:12'),
(210, 'Metadee Concept Hotel โรงแรม เมธาดี คอนเซ็ปต์', 'Metadee Concept Hotel โรงแรม เมธาดี คอนเซ็ปต์', '', '', '', 0, 1, 0, '2023-09-01 04:55:12', '2023-09-01 04:55:12'),
(211, 'Oneloft Hotel โรงแรมวันลอฟต์ ', 'Oneloft Hotel โรงแรมวันลอฟต์ ', '', '', '', 0, 0, 1, '2023-09-01 04:55:12', '2023-09-22 05:58:42'),
(212, 'Sugar Marina Resort-Fashion-Kata Beach ชูการ์ มารีน่า รีสอร์ท แฟชั่น กะตะ บีช', 'Sugar Marina Resort-Fashion-Kata Beach ชูการ์ มารีน่า รีสอร์ท แฟชั่น กะตะ บีช', '', '', '', 0, 1, 0, '2023-09-01 04:55:12', '2023-09-01 04:55:12'),
(213, 'Sugar Marina Resort-Nautical-Kata Beach ชูการ์ มารีน่า รีสอร์ท นอติคอล กะตะ บีช', 'Sugar Marina Resort-Nautical-Kata Beach ชูการ์ มารีน่า รีสอร์ท นอติคอล กะตะ บีช', '', '', '', 0, 1, 0, '2023-09-01 04:55:12', '2023-09-01 04:55:12'),
(214, 'Sugar Marina Resort-Surf-Kata Beach Phuket ชูการ์ มารีน่า โฮเทล-เซิร์ฟ-กะตะบีช', 'Sugar Marina Resort-Surf-Kata Beach Phuket ชูการ์ มารีน่า โฮเทล-เซิร์ฟ-กะตะบีช', '', '', '', 0, 1, 0, '2023-09-01 04:55:12', '2023-09-01 04:55:12'),
(215, 'The Beach Boutique House โรงแรมเดอะ บีช บูติค เฮาส์ ', 'The Beach Boutique House โรงแรมเดอะ บีช บูติค เฮาส์ ', '', '', '', 0, 1, 0, '2023-09-01 04:55:12', '2023-09-01 04:55:12'),
(216, 'The Beach Heights Resort เดอะ บีช ไฮท์ รีสอร์ท ', 'The Beach Heights Resort เดอะ บีช ไฮท์ รีสอร์ท ', '', '', '', 0, 1, 0, '2023-09-01 04:55:12', '2023-09-01 04:55:12'),
(217, 'The Boathouse Phuket เดอะ โบทเฮ้าส์ ภูเก็ต ', 'The Boathouse Phuket เดอะ โบทเฮ้าส์ ภูเก็ต ', '', '', '', 0, 1, 0, '2023-09-01 04:55:12', '2023-09-01 04:55:12'),
(218, 'The Palmery Resort Phuket เดอะ ปาลเมอรี รีสอร์ท', 'The Palmery Resort Phuket เดอะ ปาลเมอรี รีสอร์ท', '', '', '', 0, 1, 0, '2023-09-01 04:55:12', '2023-09-01 04:55:12'),
(219, 'The Sea Galleri by Katathani  เดอะซี แกลอรี่ บาย กะตะธานี', 'The Sea Galleri by Katathani  เดอะซี แกลอรี่ บาย กะตะธานี', '', '', '', 0, 1, 0, '2023-09-01 04:55:12', '2023-09-01 04:55:12'),
(220, 'The Shore at Katathani  เดอะ ชอร์ แอท กะตะธานี', 'The Shore at Katathani  เดอะ ชอร์ แอท กะตะธานี', '', '', '', 0, 1, 0, '2023-09-01 04:55:12', '2023-09-01 04:55:12'),
(221, 'The SIS Kata  เดอะ ซิส กะตะ', 'The SIS Kata  เดอะ ซิส กะตะ', '', '', '', 0, 1, 0, '2023-09-01 04:55:12', '2023-09-01 04:55:12'),
(222, 'ACCESS RESORT & VILLAS   แอคเซส รีสอร์ท แอนด์ วิลล่า', 'ACCESS RESORT & VILLAS   แอคเซส รีสอร์ท แอนด์ วิลล่า', '', '', '', 0, 1, 0, '2023-09-01 04:55:12', '2023-09-01 04:55:12'),
(223, 'ANDAMAN SEAVIEW โรงแรมอันดามันซีวิว', 'ANDAMAN SEAVIEW โรงแรมอันดามันซีวิว', '', '', '', 0, 1, 0, '2023-09-01 04:55:12', '2023-09-01 04:55:12'),
(224, 'AVISTA GRANDE PHUKET KARON, M GALLERY  อวิสต้า แกรนด์ ภูเก็ต กะรน - เอ็มแกลลอรี', 'AVISTA GRANDE PHUKET KARON, M GALLERY  อวิสต้า แกรนด์ ภูเก็ต กะรน - เอ็มแกลลอรี', '', '', '', 0, 0, 1, '2023-09-01 04:55:12', '2023-09-22 05:28:10'),
(225, 'BAAN KARON RESORT บ้านกะรนรีสอร์ท', 'BAAN KARON RESORT บ้านกะรนรีสอร์ท', '', '', '', 0, 1, 0, '2023-09-01 04:55:12', '2023-09-01 04:55:12'),
(226, 'BEST WESTERN PHUKET OCEAN RESORT เบสท์เวสเทิร์น ภูเก็ต โอเชียน รีสอร์ท', 'BEST WESTERN PHUKET OCEAN RESORT เบสท์เวสเทิร์น ภูเก็ต โอเชียน รีสอร์ท', '', '', '', 0, 1, 0, '2023-09-01 04:55:13', '2023-09-01 04:55:13'),
(227, 'BEYOND RESORT KARON บียอนด์  รีสอร์ท กะรน', 'BEYOND RESORT KARON บียอนด์  รีสอร์ท กะรน', '', '', '', 0, 0, 1, '2023-09-01 04:55:13', '2023-09-22 05:31:27'),
(228, 'CENTARA GRAND BEACH RESORT PHUKET เซ็นทารา แกรนด์ บีช รีสอร์ท ภูเก็ต', 'CENTARA GRAND BEACH RESORT PHUKET เซ็นทารา แกรนด์ บีช รีสอร์ท ภูเก็ต', '', '', '', 0, 1, 0, '2023-09-01 04:55:13', '2023-09-01 04:55:13'),
(229, 'CENTARA KARON RESORT PHUKET เซ็นทารา กะรน  รีสอร์ท ภูเก็ต', 'CENTARA KARON RESORT PHUKET เซ็นทารา กะรน  รีสอร์ท ภูเก็ต', '', '', '', 0, 1, 0, '2023-09-01 04:55:13', '2023-09-01 04:55:13'),
(230, 'CENTARA VILLAS PHUKET เซ็นทารา วิลล่า ภูเก็ต', 'CENTARA VILLAS PHUKET เซ็นทารา วิลล่า ภูเก็ต', '', '', '', 0, 1, 0, '2023-09-01 04:55:13', '2023-09-01 04:55:13'),
(231, 'CHANALAI FLORA RESORT โรงแรมชนาลัย ฟลอร่า รีสอร์ท', 'CHANALAI FLORA RESORT โรงแรมชนาลัย ฟลอร่า รีสอร์ท', '', '', '', 0, 1, 0, '2023-09-01 04:55:13', '2023-09-01 04:55:13'),
(232, 'DIAMOND COTTAGE RESORT & SPA ไดมอนด์ คอทเทจ รีสอร์ท แอนด์ สปา ', 'DIAMOND COTTAGE RESORT & SPA ไดมอนด์ คอทเทจ รีสอร์ท แอนด์ สปา ', '', '', '', 0, 1, 0, '2023-09-01 04:55:13', '2023-09-01 04:55:13'),
(233, 'HILTON PHUKET ARCADIA RESORT & SPA โรงแรมฮิลตัน ภูเก็ต อาร์เคเดีย รีสอร์ท แอนด์ สปา', 'HILTON PHUKET ARCADIA RESORT & SPA โรงแรมฮิลตัน ภูเก็ต อาร์เคเดีย รีสอร์ท แอนด์ สปา', '', '', '', 0, 1, 0, '2023-09-01 04:55:13', '2023-09-01 04:55:13'),
(234, 'KARON PHUNAKA RESORT  กะรน ภูนาคา รีสอร์ท', 'KARON PHUNAKA RESORT  กะรน ภูนาคา รีสอร์ท', '', '', '', 0, 1, 0, '2023-09-01 04:55:13', '2023-09-01 04:55:13'),
(235, 'KARON PRINCESS HOTEL โรงแรมกะรน พริ้นเซส', 'KARON PRINCESS HOTEL โรงแรมกะรน พริ้นเซส', '', '', '', 0, 1, 0, '2023-09-01 04:55:13', '2023-09-01 04:55:13'),
(236, 'KARON SEA SANDS RESORT  กะรน ซีแซนด์ รีสอร์ท', 'KARON SEA SANDS RESORT  กะรน ซีแซนด์ รีสอร์ท', '', '', '', 0, 1, 0, '2023-09-01 04:55:13', '2023-09-01 04:55:13'),
(237, 'LE MERIDIEN PHUKET BEACH RESORT เลอ เมอริเดียน ภูเก็ต บีช รีสอร์ท', 'LE MERIDIEN PHUKET BEACH RESORT เลอ เมอริเดียน ภูเก็ต บีช รีสอร์ท', '', '', '', 0, 1, 0, '2023-09-01 04:55:13', '2023-09-01 04:55:13'),
(238, 'MOVENPICK RESORT & SPA KARON BEACH PHUKET เมอเวนพิค รีสอร์ท แอนด์ สปา กะรน บีช ภูเก็ต', 'MOVENPICK RESORT & SPA KARON BEACH PHUKET เมอเวนพิค รีสอร์ท แอนด์ สปา กะรน บีช ภูเก็ต', '', '', '', 0, 1, 0, '2023-09-01 04:55:13', '2023-09-01 04:55:13'),
(239, 'THE OLD PHUKET-KARON BEACH RESORT ดิ โอลด์ ภูเก็ต กะรน บีช รีสอร์ท', 'THE OLD PHUKET-KARON BEACH RESORT ดิ โอลด์ ภูเก็ต กะรน บีช รีสอร์ท', '', '', '', 0, 0, 1, '2023-09-01 04:55:13', '2023-09-22 06:46:04'),
(240, 'RAMADA PHUKET SOUTH SEA รามาดา  ภูเก็ต เซาท์ซี', 'RAMADA PHUKET SOUTH SEA รามาดา  ภูเก็ต เซาท์ซี', '', '', '', 0, 1, 0, '2023-09-01 04:55:13', '2023-09-01 04:55:13'),
(241, 'Avista Grande Phuket Karon Mgallery อวิสต้า แกรนด์ ภูเก็ต กะรน - เอ็มแกลเลอรี่', 'Avista Grande Phuket Karon Mgallery อวิสต้า แกรนด์ ภูเก็ต กะรน - เอ็มแกลเลอรี่', '', '', '', 0, 1, 0, '2023-09-01 04:55:13', '2023-09-01 04:55:13'),
(242, 'Baan Karonburi Resort บ้านกะรนบุรี รีสอร์ท', 'Baan Karonburi Resort บ้านกะรนบุรี รีสอร์ท', '', '', '', 0, 1, 0, '2023-09-01 04:55:13', '2023-09-01 04:55:13'),
(243, 'Dome Resort โดม  รีสอร์ท', 'Dome Resort โดม  รีสอร์ท', '', '', '', 0, 1, 0, '2023-09-01 04:55:13', '2023-09-01 04:55:13'),
(244, 'Hotel IKON Phuket โรงแรมไอคอน ภูเก็ต', 'Hotel IKON Phuket โรงแรมไอคอน ภูเก็ต', '', '', '', 0, 1, 0, '2023-09-01 04:55:13', '2023-09-01 04:55:13'),
(245, 'KARON LIVINGROOM กะรน ลิฟวิ่ง รูม ', 'KARON LIVINGROOM กะรน ลิฟวิ่ง รูม ', '', '', '', 0, 1, 0, '2023-09-01 04:55:13', '2023-09-01 04:55:13'),
(246, 'Mandarava Resort and Spa มันดาราวา รีสอร์ท แอนด์ สปา ', 'Mandarava Resort and Spa มันดาราวา รีสอร์ท แอนด์ สปา ', '', '', '', 0, 1, 0, '2023-09-01 04:55:13', '2023-09-01 04:55:13'),
(247, 'Phuket Golden Sand Inn โรงแรม ภูเก็ตโกลเด้นแซนด์อินน์', 'Phuket Golden Sand Inn โรงแรม ภูเก็ตโกลเด้นแซนด์อินน์', '', '', '', 0, 1, 0, '2023-09-01 04:55:13', '2023-09-01 04:55:13'),
(248, 'Phuket Island View Hotel ภูเก็ต ไอส์แลนด์ วิว รีสอร์ท', 'Phuket Island View Hotel ภูเก็ต ไอส์แลนด์ วิว รีสอร์ท', '', '', '', 0, 1, 0, '2023-09-01 04:55:13', '2023-09-01 04:55:13'),
(249, 'Phuket Orchid Resort and Spa ภูเก็ต ออร์คิด รีสอร์ท แอนด์ สปา', 'Phuket Orchid Resort and Spa ภูเก็ต ออร์คิด รีสอร์ท แอนด์ สปา', '', '', '', 0, 1, 0, '2023-09-01 04:55:14', '2023-09-01 04:55:14'),
(250, 'Sugar Marina Resort-ART-Karon Beach Phuket ชูการ์ มารีน่า รีสอร์ท อาร์ท กะรน บีช', 'Sugar Marina Resort-ART-Karon Beach Phuket ชูการ์ มารีน่า รีสอร์ท อาร์ท กะรน บีช', '', '', '', 0, 1, 0, '2023-09-01 04:55:14', '2023-09-01 04:55:14'),
(251, 'Sugar Palm Grand Hillside โรงแรมชูการ์ ปาล์ม แกรนด์ ฮิลล์ไซด์ ', 'Sugar Palm Grand Hillside โรงแรมชูการ์ ปาล์ม แกรนด์ ฮิลล์ไซด์ ', '', '', '', 0, 1, 0, '2023-09-01 04:55:14', '2023-09-01 04:55:14'),
(252, 'The Front Village โรงแรมเดอะฟรอนท์ วิลเลจ ', 'The Front Village โรงแรมเดอะฟรอนท์ วิลเลจ ', '', '', '', 0, 1, 0, '2023-09-01 04:55:14', '2023-09-01 04:55:14'),
(253, 'The Melody Phuket เดอะ เมโลดี้ ภูเก็ต โฮเทล ', 'The Melody Phuket เดอะ เมโลดี้ ภูเก็ต โฮเทล ', '', '', '', 0, 1, 0, '2023-09-01 04:55:14', '2023-09-01 04:55:14'),
(254, 'The Old Phuket Karon Beach Resort ดิ โอลด์ ภูเก็ต กะรน บีช รีสอร์ท', 'The Old Phuket Karon Beach Resort ดิ โอลด์ ภูเก็ต กะรน บีช รีสอร์ท', '', '', '', 0, 1, 0, '2023-09-01 04:55:14', '2023-09-01 04:55:14'),
(255, 'The Spa Resorts (The Village)  เดอะสปา รีสอร์ท', 'The Spa Resorts (The Village)  เดอะสปา รีสอร์ท', '', '', '', 0, 0, 1, '2023-09-01 04:55:14', '2023-09-22 06:55:53'),
(256, 'Woraburi Phuket Resort & Spa วรบุรี ภูเก็ต รีสอร์ท', 'Woraburi Phuket Resort & Spa วรบุรี ภูเก็ต รีสอร์ท', '', '', '', 0, 1, 0, '2023-09-01 04:55:14', '2023-09-01 04:55:14'),
(257, 'KALIMA RESORT & SPA คาลิมา รีสอร์ท แอนด์ สปา', 'KALIMA RESORT & SPA คาลิมา รีสอร์ท แอนด์ สปา', '', '', '', 0, 1, 0, '2023-09-01 04:55:14', '2023-09-01 04:55:14'),
(258, 'THE NATURE PHUKET โรงแรม เดอะเนเจอร์ ภูเก็ต', 'THE NATURE PHUKET โรงแรม เดอะเนเจอร์ ภูเก็ต', '', '', '', 0, 0, 1, '2023-09-01 04:55:14', '2023-09-22 06:45:41'),
(259, 'NOVOTEL PHUKET RESORT โนโวเทล ภูเก็ต รีสอร์ท', 'NOVOTEL PHUKET RESORT โนโวเทล ภูเก็ต รีสอร์ท', '', '', '', 0, 1, 0, '2023-09-01 04:55:14', '2023-09-01 04:55:14'),
(260, 'SUNSET BEACH RESORT ซันเซ็ท บีช รีสอร์ท', 'SUNSET BEACH RESORT ซันเซ็ท บีช รีสอร์ท', '', '', '', 0, 1, 0, '2023-09-01 04:55:14', '2023-09-01 04:55:14'),
(261, 'THAVORN BEACH VILLAGE & SPA ถาวร บีช วิลเลจ รีสอร์ท แอนด์ สปา', 'THAVORN BEACH VILLAGE & SPA ถาวร บีช วิลเลจ รีสอร์ท แอนด์ สปา', '', '', '', 0, 1, 0, '2023-09-01 04:55:14', '2023-09-01 04:55:14'),
(262, 'ZENMAYA OCEANFRONT PHUKET เซ็นมายา โอเชี่ยนฟรอนท์ ภูเก็ต', 'ZENMAYA OCEANFRONT PHUKET เซ็นมายา โอเชี่ยนฟรอนท์ ภูเก็ต', '', '', '', 0, 1, 0, '2023-09-01 04:55:14', '2023-09-01 04:55:14'),
(263, 'INDOCHINE RESORTS AND VILLAS อินโดจีนรีสอร์ทแอนด์วิลล่า', 'INDOCHINE RESORTS AND VILLAS อินโดจีนรีสอร์ทแอนด์วิลล่า', '', '', '', 0, 1, 0, '2023-09-01 04:55:14', '2023-09-01 04:55:14'),
(264, 'Marina Gallery Resort Kacha kalim Bay มารีนา แกลลอรี รีสอร์ต-คชา-กะหลิมเบย์ ภูเก็ต', 'Marina Gallery Resort Kacha kalim Bay มารีนา แกลลอรี รีสอร์ต-คชา-กะหลิมเบย์ ภูเก็ต', '', '', '', 0, 1, 0, '2023-09-01 04:55:14', '2023-09-01 04:55:14'),
(265, 'Wyndham Grand Kalim Bay วินดอม แกรน ภูเก็ต กะหลิ่ม เบย์', 'Wyndham Grand Kalim Bay วินดอม แกรน ภูเก็ต กะหลิ่ม เบย์', '', '', '', 0, 1, 0, '2023-09-01 04:55:14', '2023-09-22 07:50:33'),
(266, 'Angsana Laguna Phuket อังสนา ลากูน่า', 'Angsana Laguna Phuket อังสนา ลากูน่า', '', '', '', 0, 0, 1, '2023-09-01 04:55:14', '2023-09-22 05:25:45'),
(267, 'BANYAN TREE PHUKET บันยัน ทรีภูเก็ต ', 'BANYAN TREE PHUKET บันยัน ทรีภูเก็ต ', '', '', '', 0, 1, 0, '2023-09-01 04:55:14', '2023-09-01 04:55:14'),
(268, 'BEST WESTERN PREMIER BANGTAO BEACH RESORT & SPA เบสท์เวสเทิร์น พรีเมียร์ บางเทาบีช รีสอร์ท แอนด์ สปา', 'BEST WESTERN PREMIER BANGTAO BEACH RESORT & SPA เบสท์เวสเทิร์น พรีเมียร์ บางเทาบีช รีสอร์ท แอนด์ สปา', '', '', '', 0, 1, 0, '2023-09-01 04:55:14', '2023-09-01 04:55:14'),
(269, 'DREAM PHUKET HOTEL & SPA ดรีม ภูเก็ต โฮเต็ล แอนด์ สปา', 'DREAM PHUKET HOTEL & SPA ดรีม ภูเก็ต โฮเต็ล แอนด์ สปา', '', '', '', 0, 1, 0, '2023-09-01 04:55:14', '2023-09-01 04:55:14'),
(270, 'DUSIT THANI LAGUNA RESORT ดุสิตธานี ลากูน่า รีสอร์ท', 'DUSIT THANI LAGUNA RESORT ดุสิตธานี ลากูน่า รีสอร์ท', '', '', '', 0, 1, 0, '2023-09-01 04:55:15', '2023-09-01 04:55:15'),
(271, 'LAGUNA HOLIDAY CLUB PHUKET RESORT ลากูน่า ฮอลิเดย์ คลับ ภูเก็ต รีสอร์ท', 'LAGUNA HOLIDAY CLUB PHUKET RESORT ลากูน่า ฮอลิเดย์ คลับ ภูเก็ต รีสอร์ท', '', '', '', 0, 1, 0, '2023-09-01 04:55:15', '2023-09-01 04:55:15'),
(272, 'Outrigger laguna phuket beach resort เอาท์ทิกเกอร์ ลากูน่า ภูเก็ต บีช รีสอร์ท', 'Outrigger laguna phuket beach resort เอาท์ทิกเกอร์ ลากูน่า ภูเก็ต บีช รีสอร์ท', '', '', '', 0, 1, 0, '2023-09-01 04:55:15', '2023-09-01 04:55:15'),
(273, 'SUNWING RESORT & SPA ซันวิง รีสอร์ท & สปา', 'SUNWING RESORT & SPA ซันวิง รีสอร์ท & สปา', '', '', '', 0, 0, 1, '2023-09-01 04:55:15', '2023-09-22 06:20:37'),
(274, 'Allamanda Laguna Phuket อัลลามันดา ลากูนา ภูเก็ต', 'Allamanda Laguna Phuket อัลลามันดา ลากูนา ภูเก็ต', '', '', '', 0, 1, 0, '2023-09-01 04:55:15', '2023-09-01 04:55:15'),
(275, 'Angsana Laguna Phuket อังสนา ลากูน่า ภูเก็ต', 'Angsana Laguna Phuket อังสนา ลากูน่า ภูเก็ต', '', '', '', 0, 1, 0, '2023-09-01 04:55:15', '2023-09-01 04:55:15'),
(276, 'Angsana Villas Resort Phuket อังสนา วิลล่า รีสอร์ท ภูเก็ต', 'Angsana Villas Resort Phuket อังสนา วิลล่า รีสอร์ท ภูเก็ต', '', '', '', 0, 1, 0, '2023-09-01 04:55:15', '2023-09-01 04:55:15'),
(277, 'Areeca อารีคา', 'Areeca อารีคา', '', '', '', 0, 0, 1, '2023-09-01 04:55:15', '2023-09-22 05:26:08'),
(278, 'Cassia Hotel แคสเซีย ภูเก็ต', 'Cassia Hotel แคสเซีย ภูเก็ต', '', '', '', 0, 1, 0, '2023-09-01 04:55:15', '2023-09-01 04:55:15'),
(279, 'Casuarina Shores คาซัวรีนา ชอร์', 'Casuarina Shores คาซัวรีนา ชอร์', '', '', '', 0, 0, 1, '2023-09-01 04:55:15', '2023-09-22 05:40:43'),
(280, 'Grand Villa Luxury Time Phuket แกรนด์ วิลล่า ลักชัวรี่ ไทม์ ภูเก็ต', 'Grand Villa Luxury Time Phuket แกรนด์ วิลล่า ลักชัวรี่ ไทม์ ภูเก็ต', '', '', '', 0, 0, 1, '2023-09-01 04:55:15', '2023-09-22 05:45:25'),
(281, 'HOTEL COCO Phuket Beach โรงแรมโคโค่ ภูเก็ต บีช', 'HOTEL COCO Phuket Beach โรงแรมโคโค่ ภูเก็ต บีช', '', '', '', 0, 0, 1, '2023-09-01 04:55:15', '2023-09-22 05:48:09'),
(282, 'Mövenpick Resort Bangtao Beach Phuket เมอเวนพิค รีสอร์ต บางเทาบีช ภูเก็ต', 'Mövenpick Resort Bangtao Beach Phuket เมอเวนพิค รีสอร์ต บางเทาบีช ภูเก็ต', '', '', '', 0, 1, 0, '2023-09-01 04:55:15', '2023-09-01 04:55:15'),
(283, 'PAI TAN VILLAS ปายธาร วิลล่า ', 'PAI TAN VILLAS ปายธาร วิลล่า ', '', '', '', 0, 1, 0, '2023-09-01 04:55:15', '2023-09-01 04:55:15');
INSERT INTO `hotel` (`id`, `name`, `name_th`, `address`, `telephone`, `email`, `zone_id`, `is_approved`, `is_deleted`, `created_at`, `updated_at`) VALUES
(284, 'Pumeria Resort Phuket ภูมีเรีย รีสอร์ท ภูเก็ต ', 'Pumeria Resort Phuket ภูมีเรีย รีสอร์ท ภูเก็ต ', '', '', '', 0, 0, 1, '2023-09-01 04:55:15', '2023-09-22 06:16:16'),
(285, 'SAii Laguna Phuket ทราย ลากูน่า ภูเก็ต', 'SAii Laguna Phuket ทราย ลากูน่า ภูเก็ต', '', '', '', 0, 1, 0, '2023-09-01 04:55:15', '2023-09-01 04:55:15'),
(286, 'Sunwing Bangtao Beach ซันวิง บางเทาบีช ', 'Sunwing Bangtao Beach ซันวิง บางเทาบีช ', '', '', '', 0, 1, 0, '2023-09-01 04:55:15', '2023-09-01 04:55:15'),
(287, 'Holiday Inn Resort Phuket ฮอลิเดย์ อิน รีสอร์ท', 'Holiday Inn Resort Phuket ฮอลิเดย์ อิน รีสอร์ท', '', '', '', 0, 1, 0, '2023-09-01 04:55:15', '2023-09-01 04:55:15'),
(288, 'Hotel Clover Patong Phuket โรงแรมโคลเวอร์ ป่าตอง ภูเก็ต', 'Hotel Clover Patong Phuket โรงแรมโคลเวอร์ ป่าตอง ภูเก็ต', '', '', '', 0, 0, 1, '2023-09-01 04:55:15', '2023-09-22 05:47:18'),
(289, 'Wyndham Sea Pearl Resort Phuket วินด์แฮม ซีเพิร์ล รีสอร์ท ภูเก็ต', 'Wyndham Sea Pearl Resort Phuket วินด์แฮม ซีเพิร์ล รีสอร์ท ภูเก็ต', '', '', '', 0, 1, 0, '2023-09-01 04:55:15', '2023-09-01 04:55:15'),
(290, 'ALPINA PHUKET NALINA RESORT โรงแรม ออพินา ภูเก็ต นาลินา รีสอร์ท ', 'ALPINA PHUKET NALINA RESORT โรงแรม ออพินา ภูเก็ต นาลินา รีสอร์ท ', '', '', '', 0, 1, 0, '2023-09-01 04:55:15', '2023-09-01 04:55:15'),
(291, 'AMARI PHUKET โรงแรมอมารี ภูเก็ต', 'AMARI PHUKET โรงแรมอมารี ภูเก็ต', '', '', '', 0, 0, 1, '2023-09-01 04:55:15', '2023-09-22 05:24:57'),
(292, 'ANDAKIRA HOTEL โรงแรมอันดาคิรา', 'ANDAKIRA HOTEL โรงแรมอันดาคิรา', '', '', '', 0, 1, 0, '2023-09-01 04:55:16', '2023-09-01 04:55:16'),
(293, 'ANDAMAN BEACH SUITES HOTEL โรงแรม อันดามัน บีช สวีท', 'ANDAMAN BEACH SUITES HOTEL โรงแรม อันดามัน บีช สวีท', '', '', '', 0, 1, 0, '2023-09-01 04:55:16', '2023-09-01 04:55:16'),
(294, 'ANDAMAN EMBRACE PATONG อันดามัน เอมเบรส ป่าตอง', 'ANDAMAN EMBRACE PATONG อันดามัน เอมเบรส ป่าตอง', '', '', '', 0, 1, 0, '2023-09-01 04:55:16', '2023-09-01 04:55:16'),
(295, 'ANDAMANTRA RESORT & VILLA PHUKET อันดามันตรา รีสอร์ท แอนด์ วิลล่า ภูเก็ต', 'ANDAMANTRA RESORT & VILLA PHUKET อันดามันตรา รีสอร์ท แอนด์ วิลล่า ภูเก็ต', '', '', '', 0, 1, 0, '2023-09-01 04:55:16', '2023-09-01 04:55:16'),
(296, 'BURASARI บุราส่าหรี', 'BURASARI บุราส่าหรี', '', '', '', 0, 0, 1, '2023-09-01 04:55:16', '2023-09-22 05:36:49'),
(297, 'DAYS INN BY WYNDHAM PATONG BEACH เดย์ส อินน์ บาย วินด์แฮม ป่าตอง บีช ภูเก็ต', 'DAYS INN BY WYNDHAM PATONG BEACH เดย์ส อินน์ บาย วินด์แฮม ป่าตอง บีช ภูเก็ต', '', '', '', 0, 1, 0, '2023-09-01 04:55:16', '2023-09-01 04:55:16'),
(298, 'DEEVANA PATONG RESORT & SPA ดีวาน่า ป่าตอง รีสอร์ท แอนด์ สปา', 'DEEVANA PATONG RESORT & SPA ดีวาน่า ป่าตอง รีสอร์ท แอนด์ สปา', '', '', '', 0, 1, 0, '2023-09-01 04:55:16', '2023-09-01 04:55:16'),
(299, 'DEEVANA PLAZA PHUKET PATONG ดีวานา พลาซ่า ภูเก็ต ป่าตอง', 'DEEVANA PLAZA PHUKET PATONG ดีวานา พลาซ่า ภูเก็ต ป่าตอง', '', '', '', 0, 1, 0, '2023-09-01 04:55:16', '2023-09-01 04:55:16'),
(300, 'DIAMOND CLIFF RESORT & SPA ไดมอนด์คลิฟ รีสอร์ท แอนด์ สปา', 'DIAMOND CLIFF RESORT & SPA ไดมอนด์คลิฟ รีสอร์ท แอนด์ สปา', '', '', '', 0, 1, 0, '2023-09-01 04:55:16', '2023-09-01 04:55:16'),
(301, 'DUANGJITT RESORT  ดวงจิต รีสอร์ท', 'DUANGJITT RESORT  ดวงจิต รีสอร์ท', '', '', '', 0, 1, 0, '2023-09-01 04:55:16', '2023-09-01 04:55:16'),
(302, 'FOUR POINTS BY SHERATON PHUKET PATONG BEACH RESORT โฟร์พอยท์ส บาย เชอราตัน ภูเก็ต ป่าตองบีช รีสอร์ท', 'FOUR POINTS BY SHERATON PHUKET PATONG BEACH RESORT โฟร์พอยท์ส บาย เชอราตัน ภูเก็ต ป่าตองบีช รีสอร์ท', '', '', '', 0, 1, 0, '2023-09-01 04:55:16', '2023-09-01 04:55:16'),
(303, 'GRAND MERCURE PHUKET PATONG แกรนด์ เมอร์เคียว ภูเก็ต ป่าตอง', 'GRAND MERCURE PHUKET PATONG แกรนด์ เมอร์เคียว ภูเก็ต ป่าตอง', '', '', '', 0, 1, 0, '2023-09-01 04:55:16', '2023-09-01 04:55:16'),
(304, 'HOLIDAY INN EXPRESS PHUKET PATONG BEACH CENTRAL ฮอลิเดย์ อินน์ เอ็กซ์เพรส ภูเก็ต ป่าตองบีช เซ็นทรัล', 'HOLIDAY INN EXPRESS PHUKET PATONG BEACH CENTRAL ฮอลิเดย์ อินน์ เอ็กซ์เพรส ภูเก็ต ป่าตองบีช เซ็นทรัล', '', '', '', 0, 1, 0, '2023-09-01 04:55:16', '2023-09-01 04:55:16'),
(305, 'HOTEL INDIGO PHUKET PATONG โรงแรมโฮเทล อินดิโก ภูเก็ต ป่าตอง', 'HOTEL INDIGO PHUKET PATONG โรงแรมโฮเทล อินดิโก ภูเก็ต ป่าตอง', '', '', '', 0, 1, 0, '2023-09-01 04:55:16', '2023-09-01 04:55:16'),
(306, 'THE KEE RESORT & SPA เดอะ กี รีสอร์ท แอนด์ สปา', 'THE KEE RESORT & SPA เดอะ กี รีสอร์ท แอนด์ สปา', '', '', '', 0, 1, 0, '2023-09-01 04:55:16', '2023-09-01 04:55:16'),
(307, 'LA FLORA RESORT PATONG ลาฟลอร่ารีสอร์ท ป่าตอง', 'LA FLORA RESORT PATONG ลาฟลอร่ารีสอร์ท ป่าตอง', '', '', '', 0, 1, 0, '2023-09-01 04:55:16', '2023-09-01 04:55:16'),
(308, 'THE LANTERN RESORTS PATONG เดอะ แลนเทิร์น รีสอร์ท ป่าตอง', 'THE LANTERN RESORTS PATONG เดอะ แลนเทิร์น รีสอร์ท ป่าตอง', '', '', '', 0, 0, 1, '2023-09-01 04:55:16', '2023-09-22 06:25:30'),
(309, 'LIV HOTEL PHUKET PATHONG BEACHFRONT ลิฟ โฮเทล ภูเก็ต ป่าตอง บีชฟรอนต์', 'LIV HOTEL PHUKET PATHONG BEACHFRONT ลิฟ โฮเทล ภูเก็ต ป่าตอง บีชฟรอนต์', '', '', '', 0, 1, 0, '2023-09-01 04:55:16', '2023-09-01 04:55:16'),
(310, 'MAI HOUSE PATONG HILL มาย เฮาส์ ป่าตอง ฮิลล์', 'MAI HOUSE PATONG HILL มาย เฮาส์ ป่าตอง ฮิลล์', '', '', '', 0, 1, 0, '2023-09-01 04:55:16', '2023-09-01 04:55:16'),
(311, 'MILLENNIUM RESORT PATONG PHUKET มิลเลเนียม รีสอร์ท ป่าตอง ภูเก็ต', 'MILLENNIUM RESORT PATONG PHUKET มิลเลเนียม รีสอร์ท ป่าตอง ภูเก็ต', '', '', '', 0, 1, 0, '2023-09-01 04:55:16', '2023-09-01 04:55:16'),
(312, 'NOVOTEL PHUKET VINTAGE PARK RESORT โนโวเทล ภูเก็ต วินเทจ พาร์ค รีสอร์ท', 'NOVOTEL PHUKET VINTAGE PARK RESORT โนโวเทล ภูเก็ต วินเทจ พาร์ค รีสอร์ท', '', '', '', 0, 1, 0, '2023-09-01 04:55:16', '2023-09-01 04:55:16'),
(313, 'PATONG BAY GARDEN RESORT ป่าตอง เบย์ การ์เด้น รีสอร์ท', 'PATONG BAY GARDEN RESORT ป่าตอง เบย์ การ์เด้น รีสอร์ท', '', '', '', 0, 1, 0, '2023-09-01 04:55:16', '2023-09-01 04:55:16'),
(314, 'PATONG MERLIN HOTEL โรงแรมป่าตอง เมอร์ลิน', 'PATONG MERLIN HOTEL โรงแรมป่าตอง เมอร์ลิน', '', '', '', 0, 1, 0, '2023-09-01 04:55:16', '2023-09-01 04:55:16'),
(315, 'PATONG PALACE HOTEL โรงแรม ป่าตอง พาเลซ', 'PATONG PALACE HOTEL โรงแรม ป่าตอง พาเลซ', '', '', '', 0, 1, 0, '2023-09-01 04:55:17', '2023-09-01 04:55:17'),
(316, 'PATONG PARAGON RESORT & SPA ป่าตอง พารากอน รีสอร์ท แอนด์ สปา', 'PATONG PARAGON RESORT & SPA ป่าตอง พารากอน รีสอร์ท แอนด์ สปา', '', '', '', 0, 1, 0, '2023-09-01 04:55:17', '2023-09-01 04:55:17'),
(317, 'PATONG RESORT ป่าตอง รีสอร์ท ', 'PATONG RESORT ป่าตอง รีสอร์ท ', '', '', '', 0, 1, 0, '2023-09-01 04:55:17', '2023-09-01 04:55:17'),
(318, 'PHUKET GRACELAND RESORT & SPA ภูเก็ต เกรซแลนด์ รีสอร์ท แอนด์ สปา', 'PHUKET GRACELAND RESORT & SPA ภูเก็ต เกรซแลนด์ รีสอร์ท แอนด์ สปา', '', '', '', 0, 0, 1, '2023-09-01 04:55:17', '2023-09-22 06:04:30'),
(319, 'RAMADA PHUKET DEEVANA รามาด้า ภูเก็ต ดีวาน่า', 'RAMADA PHUKET DEEVANA รามาด้า ภูเก็ต ดีวาน่า', '', '', '', 0, 1, 0, '2023-09-01 04:55:17', '2023-09-01 04:55:17'),
(320, 'RED PLANET HOTELS (PATONG) โรงแรม เรด แพลนเนต ภูเก็ต ป่าตอง', 'RED PLANET HOTELS (PATONG) โรงแรม เรด แพลนเนต ภูเก็ต ป่าตอง', '', '', '', 0, 1, 0, '2023-09-01 04:55:17', '2023-09-01 04:55:17'),
(321, 'R-MAR RESORT AND SPA อาม่า รีสอร์ท แอนด์ สปา', 'R-MAR RESORT AND SPA อาม่า รีสอร์ท แอนด์ สปา', '', '', '', 0, 1, 0, '2023-09-01 04:55:17', '2023-09-01 04:55:17'),
(322, 'ROYAL PARADISE HOTEL & SPA โรงแรม เดอะรอยัล พาราไดซ์ แอนด์ สปา', 'ROYAL PARADISE HOTEL & SPA โรงแรม เดอะรอยัล พาราไดซ์ แอนด์ สปา', '', '', '', 0, 1, 0, '2023-09-01 04:55:17', '2023-09-01 04:55:17'),
(323, 'SAWADDI PATONG RESORT & SPA สวัสดี ป่าตอง รีสอร์ต แอนด์ สปา ', 'SAWADDI PATONG RESORT & SPA สวัสดี ป่าตอง รีสอร์ต แอนด์ สปา ', '', '', '', 0, 1, 0, '2023-09-01 04:55:17', '2023-09-01 04:55:17'),
(324, 'SEA SUN SAND RESORT & SPA ซี แซนด์ ซัน รีสอร์ท & สปา', 'SEA SUN SAND RESORT & SPA ซี แซนด์ ซัน รีสอร์ท & สปา', '', '', '', 0, 1, 0, '2023-09-01 04:55:17', '2023-09-01 04:55:17'),
(325, 'SLEEP WITH ME HOTEL design hotel @ patong สลีป วิธ มี โฮเทล ดีไซน์ โฮเทล แอท ป่าตอง', 'SLEEP WITH ME HOTEL design hotel @ patong สลีป วิธ มี โฮเทล ดีไซน์ โฮเทล แอท ป่าตอง', '', '', '', 0, 1, 0, '2023-09-01 04:55:17', '2023-09-01 04:55:17'),
(326, 'THARA PATONG BEACH RESORT  ธาราป่าตองบีชรีสอร์ท', 'THARA PATONG BEACH RESORT  ธาราป่าตองบีชรีสอร์ท', '', '', '', 0, 1, 0, '2023-09-01 04:55:17', '2023-09-01 04:55:17'),
(327, 'TROPICA BUNGALOW HOTEL ทรอปิคา บังกะโล โฮเทล', 'TROPICA BUNGALOW HOTEL ทรอปิคา บังกะโล โฮเทล', '', '', '', 0, 1, 0, '2023-09-01 04:55:17', '2023-09-01 04:55:17'),
(328, 'WYNDHAM SEA PEARL RESORT PHUKET วินด์แฮม ซีเพิร์ล รีสอร์ท ภูเก็ต', 'WYNDHAM SEA PEARL RESORT PHUKET วินด์แฮม ซีเพิร์ล รีสอร์ท ภูเก็ต', '', '', '', 0, 0, 1, '2023-09-01 04:55:17', '2023-09-22 07:03:02'),
(329, 'Amari Phuket โรงแรมอมารี ภูเก็ต', 'Amari Phuket โรงแรมอมารี ภูเก็ต', '', '', '', 0, 1, 0, '2023-09-01 04:55:17', '2023-09-01 04:55:17'),
(330, 'Amata Patong อมตะ ป่าตอง', 'Amata Patong อมตะ ป่าตอง', '', '', '', 0, 1, 0, '2023-09-01 04:55:17', '2023-09-01 04:55:17'),
(331, 'Amici miei Hotelโรงแรมอมิชี มิเอย์ ', 'Amici miei Hotelโรงแรมอมิชี มิเอย์ ', '', '', '', 0, 1, 0, '2023-09-01 04:55:17', '2023-09-01 04:55:17'),
(332, 'ASHLEE HUB HOTEL PATONG โรงแรมแอชลี ฮับ ป่าตอง ', 'ASHLEE HUB HOTEL PATONG โรงแรมแอชลี ฮับ ป่าตอง ', '', '', '', 0, 1, 0, '2023-09-01 04:55:17', '2023-09-01 04:55:17'),
(333, 'Baan Laimai Beach Resort บ้าน ลายไม้ บีช รีสอร์ท ', 'Baan Laimai Beach Resort บ้าน ลายไม้ บีช รีสอร์ท ', '', '', '', 0, 1, 0, '2023-09-01 04:55:17', '2023-09-01 04:55:17'),
(334, 'Best Western Patong Beach โรงแรมเบสท์เวสเทิร์น ป่าตอง บีช', 'Best Western Patong Beach โรงแรมเบสท์เวสเทิร์น ป่าตอง บีช', '', '', '', 0, 1, 0, '2023-09-01 04:55:17', '2023-09-01 04:55:17'),
(335, 'Breezotel บรีซโซเทล', 'Breezotel บรีซโซเทล', '', '', '', 0, 1, 0, '2023-09-01 04:55:17', '2023-09-01 04:55:17'),
(336, 'Burasari Phuket บุราสารี ภูเก็ต', 'Burasari Phuket บุราสารี ภูเก็ต', '', '', '', 0, 1, 0, '2023-09-01 04:55:17', '2023-09-01 04:55:17'),
(337, 'BYD  Lofts Boutique Hotel บีวายดี ลอฟต์ บูทิก โฮเต็ล', 'BYD  Lofts Boutique Hotel บีวายดี ลอฟต์ บูทิก โฮเต็ล', '', '', '', 0, 1, 0, '2023-09-01 04:55:18', '2023-09-01 04:55:18'),
(338, 'BYD Apartment บีวายดี อพาทเมนท์', 'BYD Apartment บีวายดี อพาทเมนท์', '', '', '', 0, 1, 0, '2023-09-01 04:55:18', '2023-09-01 04:55:18'),
(339, 'C & N Hotel ซี แอนด์ เอ็น โฮเต็ล', 'C & N Hotel ซี แอนด์ เอ็น โฮเต็ล', '', '', '', 0, 1, 0, '2023-09-01 04:55:18', '2023-09-01 04:55:18'),
(340, 'C&N Resort and Spa ซี แอนด์ เอ็น รีสอร์ท แอนด์ สปา', 'C&N Resort and Spa ซี แอนด์ เอ็น รีสอร์ท แอนด์ สปา', '', '', '', 0, 1, 0, '2023-09-01 04:55:18', '2023-09-01 04:55:18'),
(341, 'Coconut Village Resort โคโคนัทวิลเลจรีสอร์ท ภูเก็ต', 'Coconut Village Resort โคโคนัทวิลเลจรีสอร์ท ภูเก็ต', '', '', '', 0, 1, 0, '2023-09-01 04:55:18', '2023-09-01 04:55:18'),
(342, 'Dfeel Hostel ดีฟีล เฮาส์', 'Dfeel Hostel ดีฟีล เฮาส์', '', '', '', 0, 0, 1, '2023-09-01 04:55:18', '2023-09-22 05:43:18'),
(343, 'Dinso Resort ดินสอ รีสอร์ต แอนด์ วิลล่า ภูเก็ต', 'Dinso Resort ดินสอ รีสอร์ต แอนด์ วิลล่า ภูเก็ต', '', '', '', 0, 1, 0, '2023-09-01 04:55:18', '2023-09-01 04:55:18'),
(344, 'DoubleTree by Hilton Phuket banthai Resort ดับเบิ้ลทรีบายฮิลตันภูเก็ตบ้านไทยรีสอร์ท', 'DoubleTree by Hilton Phuket banthai Resort ดับเบิ้ลทรีบายฮิลตันภูเก็ตบ้านไทยรีสอร์ท', '', '', '', 0, 1, 0, '2023-09-01 04:55:18', '2023-09-01 04:55:18'),
(345, 'Harry’s restaurant bar and hotel แฮรี่ส์ เรสเตอรองท์บาร์ แอนด์ โฮเต็ล', 'Harry’s restaurant bar and hotel แฮรี่ส์ เรสเตอรองท์บาร์ แอนด์ โฮเต็ล', '', '', '', 0, 1, 0, '2023-09-01 04:55:18', '2023-09-01 04:55:18'),
(346, 'Hip Hostel ฮิป โฮสเทล', 'Hip Hostel ฮิป โฮสเทล', '', '', '', 0, 1, 0, '2023-09-01 04:55:18', '2023-09-01 04:55:18'),
(347, 'Hotel Clover Patong Phuket โรงแรมโคลเวอร์ ป่าตอง ภูเก็ต ', 'Hotel Clover Patong Phuket โรงแรมโคลเวอร์ ป่าตอง ภูเก็ต ', '', '', '', 0, 1, 0, '2023-09-01 04:55:18', '2023-09-01 04:55:18'),
(348, 'ibis Phuket Patong Hotel ไอบิส ภูเก็ต ป่าตอง โฮเต็ล', 'ibis Phuket Patong Hotel ไอบิส ภูเก็ต ป่าตอง โฮเต็ล', '', '', '', 0, 1, 0, '2023-09-01 04:55:18', '2023-09-01 04:55:18'),
(349, 'Impiana Resort Patong อิมเพียน่า รีสอร์ท ป่าตอง', 'Impiana Resort Patong อิมเพียน่า รีสอร์ท ป่าตอง', '', '', '', 0, 1, 0, '2023-09-01 04:55:18', '2023-09-01 04:55:18'),
(350, 'Jiraporn Hill Resort จิราภรณ์ ฮิลล์ รีสอร์ท', 'Jiraporn Hill Resort จิราภรณ์ ฮิลล์ รีสอร์ท', '', '', '', 0, 1, 0, '2023-09-01 04:55:18', '2023-09-01 04:55:18'),
(351, 'Kudo Hotel โรงแรมคูโด ', 'Kudo Hotel โรงแรมคูโด ', '', '', '', 0, 1, 0, '2023-09-01 04:55:18', '2023-09-01 04:55:18'),
(352, 'Lokal Hotel Phuket โลคัล โฮเต็ล ภูเก็ต', 'Lokal Hotel Phuket โลคัล โฮเต็ล ภูเก็ต', '', '', '', 0, 1, 0, '2023-09-01 04:55:18', '2023-09-01 04:55:18'),
(353, 'Mövenpick Myth Hotel Patong Phuket โรงแรมเมอเวนพิค มิธ ป่าตอง ภูเก็ต', 'Mövenpick Myth Hotel Patong Phuket โรงแรมเมอเวนพิค มิธ ป่าตอง ภูเก็ต', '', '', '', 0, 1, 0, '2023-09-01 04:55:18', '2023-09-01 04:55:18'),
(354, 'Nap Patong แนป ป่าตอง ', 'Nap Patong แนป ป่าตอง ', '', '', '', 0, 1, 0, '2023-09-01 04:55:18', '2023-09-01 04:55:18'),
(355, 'New Square Patong Hotel นิว สแควร์ ป่าตอง โฮเต็ล', 'New Square Patong Hotel นิว สแควร์ ป่าตอง โฮเต็ล', '', '', '', 0, 1, 0, '2023-09-01 04:55:18', '2023-09-01 04:55:18'),
(356, 'Nipa Resort Patong Beach นิภา รีสอร์ท ป่าตอง บีช', 'Nipa Resort Patong Beach นิภา รีสอร์ท ป่าตอง บีช', '', '', '', 0, 1, 0, '2023-09-01 04:55:18', '2023-09-01 04:55:18'),
(357, 'Oceanfront Beach Resort & Spa โอเชียนฟรอนต์ บีช รีสอร์ท แอนด์ สปา', 'Oceanfront Beach Resort & Spa โอเชียนฟรอนต์ บีช รีสอร์ท แอนด์ สปา', '', '', '', 0, 1, 0, '2023-09-01 04:55:18', '2023-09-01 04:55:18'),
(358, 'Palm View Resort ปาล์มวิวรีสอร์ท', 'Palm View Resort ปาล์มวิวรีสอร์ท', '', '', '', 0, 0, 1, '2023-09-01 04:55:19', '2023-09-22 06:00:28'),
(359, 'Palmyra Patong Resort ปาล์มไมร่า ป่าตอง รีสอร์ท ', 'Palmyra Patong Resort ปาล์มไมร่า ป่าตอง รีสอร์ท ', '', '', '', 0, 1, 0, '2023-09-01 04:55:19', '2023-09-01 04:55:19'),
(360, 'Paripas Patong Resort ปริภัส ป่าตอง รีสอร์ท ', 'Paripas Patong Resort ปริภัส ป่าตอง รีสอร์ท ', '', '', '', 0, 1, 0, '2023-09-01 04:55:19', '2023-09-01 04:55:19'),
(361, 'Patong Bay Hill ป่าตอง เบย์ ฮิลล์ ', 'Patong Bay Hill ป่าตอง เบย์ ฮิลล์ ', '', '', '', 0, 1, 0, '2023-09-01 04:55:19', '2023-09-01 04:55:19'),
(362, 'Patong Heritage Hotel ป่าตอง เฮอริเทจ โฮเทล', 'Patong Heritage Hotel ป่าตอง เฮอริเทจ โฮเทล', '', '', '', 0, 1, 0, '2023-09-01 04:55:19', '2023-09-01 04:55:19'),
(363, 'PATONG MANSION HOTEL ป่าตอง แมนชั่น โฮเทล', 'PATONG MANSION HOTEL ป่าตอง แมนชั่น โฮเทล', '', '', '', 0, 0, 1, '2023-09-01 04:55:19', '2023-09-22 06:02:29'),
(364, 'Phuket Graceland Resort & Spa ภูเก็ต เกรซแลนด์ รีสอร์ท แอนด์ สปา', 'Phuket Graceland Resort & Spa ภูเก็ต เกรซแลนด์ รีสอร์ท แอนด์ สปา', '', '', '', 0, 1, 0, '2023-09-01 04:55:19', '2023-09-01 04:55:19'),
(365, 'Prince Edouard Apartment & Resort ปริ้นซ์ เอดูอาร์ อพาร์ตเมนต์ แอนด์ รีสอร์ท', 'Prince Edouard Apartment & Resort ปริ้นซ์ เอดูอาร์ อพาร์ตเมนต์ แอนด์ รีสอร์ท', '', '', '', 0, 0, 1, '2023-09-01 04:55:19', '2023-09-22 06:12:14'),
(366, 'Rak Elegant Hotel Patong รัก เอลเลแกนต์ โฮเต็ล ป่าตอง', 'Rak Elegant Hotel Patong รัก เอลเลแกนต์ โฮเต็ล ป่าตอง', '', '', '', 0, 1, 0, '2023-09-01 04:55:19', '2023-09-01 04:55:19'),
(367, 'Ramaburin resort รามาบุรินทร์ รีสอร์ท ', 'Ramaburin resort รามาบุรินทร์ รีสอร์ท ', '', '', '', 0, 1, 0, '2023-09-01 04:55:19', '2023-09-01 04:55:19'),
(368, 'Royal Phawadee Village รอยัล ภาวดี วิลเลจ ป่าตอง บีช โฮเทล ', 'Royal Phawadee Village รอยัล ภาวดี วิลเลจ ป่าตอง บีช โฮเทล ', '', '', '', 0, 1, 0, '2023-09-01 04:55:19', '2023-09-01 04:55:19'),
(369, 'Safari Beach hotel โรงแรมซาฟารี บีช ', 'Safari Beach hotel โรงแรมซาฟารี บีช ', '', '', '', 0, 1, 0, '2023-09-01 04:55:19', '2023-09-01 04:55:19'),
(370, 'Seaview Patong Hotel โรงแรมซีวีว ป่าตอง ', 'Seaview Patong Hotel โรงแรมซีวีว ป่าตอง ', '', '', '', 0, 1, 0, '2023-09-01 04:55:19', '2023-09-01 04:55:19'),
(371, 'Skyview Resort Patong Beach Hotel สกายวิว รีสอร์ท ภูเก็ต ป่าตอง บีช ', 'Skyview Resort Patong Beach Hotel สกายวิว รีสอร์ท ภูเก็ต ป่าตอง บีช ', '', '', '', 0, 1, 0, '2023-09-01 04:55:19', '2023-09-01 04:55:19'),
(372, 'Thanthip Beach Resort ฐานทิพย์ บีช รีสอร์ท', 'Thanthip Beach Resort ฐานทิพย์ บีช รีสอร์ท', '', '', '', 0, 1, 0, '2023-09-01 04:55:19', '2023-09-01 04:55:19'),
(373, 'The Ashlee Heights Patong Hotel & Suites ดิ แอชลี ไฮท์ ป่าตอง โฮเทล แอนด์ สวีท', 'The Ashlee Heights Patong Hotel & Suites ดิ แอชลี ไฮท์ ป่าตอง โฮเทล แอนด์ สวีท', '', '', '', 0, 1, 0, '2023-09-01 04:55:19', '2023-09-01 04:55:19'),
(374, 'The Bliss Phuket เดอะ บลิส ภูเก็ต', 'The Bliss Phuket เดอะ บลิส ภูเก็ต', '', '', '', 0, 1, 0, '2023-09-01 04:55:19', '2023-09-01 04:55:19'),
(375, 'The Bloc Hotel โรงแรมเดอะบล็อค ', 'The Bloc Hotel โรงแรมเดอะบล็อค ', '', '', '', 0, 1, 0, '2023-09-01 04:55:19', '2023-09-01 04:55:19'),
(376, 'The Lantern Resorts Patong เดอะแลนเทิร์น รีสอร์ท ป่าตอง ', 'The Lantern Resorts Patong เดอะแลนเทิร์น รีสอร์ท ป่าตอง ', '', '', '', 0, 1, 0, '2023-09-01 04:55:19', '2023-09-01 04:55:19'),
(377, 'The Marina Phuket Hotel โรงแรมเดอะ มารีนา ภูเก็ต ', 'The Marina Phuket Hotel โรงแรมเดอะ มารีนา ภูเก็ต ', '', '', '', 0, 1, 0, '2023-09-01 04:55:19', '2023-09-01 04:55:19'),
(378, 'The Nature Phuket เดอะ เนเจอร์ ภูเก็ต', 'The Nature Phuket เดอะ เนเจอร์ ภูเก็ต', '', '', '', 0, 1, 0, '2023-09-01 04:55:19', '2023-09-22 06:53:40'),
(379, 'THE ROYAL PARADISE HOTEL & SPA เดอะรอยัล พาราไดซ์ โฮเต็ล แอนด์ สปา ', 'THE ROYAL PARADISE HOTEL & SPA เดอะรอยัล พาราไดซ์ โฮเต็ล แอนด์ สปา ', '', '', '', 0, 1, 0, '2023-09-01 04:55:19', '2023-09-01 04:55:19'),
(380, 'The Senses Resort & Pool Villas, PHUKET  เดอะ เซ็นเซ็ท ', 'The Senses Resort & Pool Villas, PHUKET  เดอะ เซ็นเซ็ท ', '', '', '', 0, 1, 0, '2023-09-01 04:55:19', '2023-09-01 04:55:19'),
(381, '7Q Bangla Hotel เซเว่นคิว บางลา', '7Q Bangla Hotel เซเว่นคิว บางลา', '', '', '', 0, 1, 0, '2023-09-01 04:55:19', '2023-09-28 07:19:10'),
(382, 'AMATARA WELLNESS RESORT อมาธารา เวลเลย์เซอร์ รีสอร์ท', 'AMATARA WELLNESS RESORT อมาธารา เวลเลย์เซอร์ รีสอร์ท', '', '', '', 0, 0, 1, '2023-09-01 04:55:20', '2023-09-22 05:25:06'),
(383, 'BANDARA PHUKET BEACH RESORT บัญดารา ภูเก็ต บีช รีสอร์ต', 'BANDARA PHUKET BEACH RESORT บัญดารา ภูเก็ต บีช รีสอร์ต', '', '', '', 0, 1, 0, '2023-09-01 04:55:20', '2023-09-01 04:55:20'),
(384, 'BANDARA VILLAS PHUKET บัญดารา วิลล่า ภูเก็ต ', 'BANDARA VILLAS PHUKET บัญดารา วิลล่า ภูเก็ต ', '', '', '', 0, 1, 0, '2023-09-01 04:55:20', '2023-09-01 04:55:20'),
(385, 'CAPE PANWA HOTEL โรงแรมเคปพันวา', 'CAPE PANWA HOTEL โรงแรมเคปพันวา', '', '', '', 0, 1, 0, '2023-09-01 04:55:20', '2023-09-01 04:55:20'),
(386, 'CROWNE PLAZA PHUKET PANWA BEACH คราวน์ พลาซา ภูเก็ต พันวา บีช', 'CROWNE PLAZA PHUKET PANWA BEACH คราวน์ พลาซา ภูเก็ต พันวา บีช', '', '', '', 0, 1, 0, '2023-09-01 04:55:20', '2023-09-01 04:55:20'),
(387, 'THE MANGROVE PANWA PHUKET RESORT เดอะ แมนกรูฟ พันวา ภูเก็ต  รีสอร์ท', 'THE MANGROVE PANWA PHUKET RESORT เดอะ แมนกรูฟ พันวา ภูเก็ต  รีสอร์ท', '', '', '', 0, 1, 0, '2023-09-01 04:55:20', '2023-09-01 04:55:20'),
(388, 'PANWA BOUTIQUE BEACHFRONT พันวา บูทิก บีชฟรอนต์', 'PANWA BOUTIQUE BEACHFRONT พันวา บูทิก บีชฟรอนต์', '', '', '', 0, 0, 1, '2023-09-01 04:55:20', '2023-09-22 06:00:57'),
(389, 'PULLMAN PHUKET PANWA BEACH RESORT พูลแมน ภูเก็ต พันวา บีช รีสอร์ท ', 'PULLMAN PHUKET PANWA BEACH RESORT พูลแมน ภูเก็ต พันวา บีช รีสอร์ท ', '', '', '', 0, 0, 1, '2023-09-01 04:55:20', '2023-09-22 06:15:30'),
(390, 'SRI PANWA PHUKET โรงแรมศรีพันวา ภูเก็ต', 'SRI PANWA PHUKET โรงแรมศรีพันวา ภูเก็ต', '', '', '', 0, 1, 0, '2023-09-01 04:55:20', '2023-09-01 04:55:20'),
(391, 'Amatara Wellness Resort อมาธารา เวลเลย์เซอร์ รีสอร์ท', 'Amatara Wellness Resort อมาธารา เวลเลย์เซอร์ รีสอร์ท', '', '', '', 0, 1, 0, '2023-09-01 04:55:20', '2023-09-01 04:55:20'),
(392, 'CAPE PANWA HOTEL โรงแรมเคปพันวา', 'CAPE PANWA HOTEL โรงแรมเคปพันวา', '', '', '', 0, 0, 1, '2023-09-01 04:55:20', '2023-09-22 05:38:12'),
(393, 'Cloud 19 Panwa คลาวด์ 19 พันวา', 'Cloud 19 Panwa คลาวด์ 19 พันวา', '', '', '', 0, 1, 0, '2023-09-01 04:55:20', '2023-09-01 04:55:20'),
(394, 'Goodnight Phuket Villa Hotel กู๊ดไนท์ ภูเก็ต วิลลา', 'Goodnight Phuket Villa Hotel กู๊ดไนท์ ภูเก็ต วิลลา', '', '', '', 0, 1, 0, '2023-09-01 04:55:20', '2023-09-01 04:55:20'),
(395, 'KantaryBay Hotel Phuket โรงแรมแคนทารี เบย์ ภูเก็ต', 'KantaryBay Hotel Phuket โรงแรมแคนทารี เบย์ ภูเก็ต', '', '', '', 0, 1, 0, '2023-09-01 04:55:20', '2023-09-01 04:55:20'),
(396, 'My Beach Resort Phuket มาย บีช รีสอร์ท ภูเก็ต', 'My Beach Resort Phuket มาย บีช รีสอร์ท ภูเก็ต', '', '', '', 0, 1, 0, '2023-09-01 04:55:20', '2023-09-01 04:55:20'),
(397, 'PULLMAN PHUKET PANWA BEACH RESORT พูลแมน ภูเก็ต พันวา บีช รีสอร์ท ', 'PULLMAN PHUKET PANWA BEACH RESORT พูลแมน ภูเก็ต พันวา บีช รีสอร์ท ', '', '', '', 0, 1, 0, '2023-09-01 04:55:20', '2023-09-01 04:55:20'),
(398, 'Sri panwa, Phuket ศรีพันวา ภูเก็ต ', 'Sri panwa, Phuket ศรีพันวา ภูเก็ต ', '', '', '', 0, 1, 0, '2023-09-01 04:55:20', '2023-09-01 04:55:20'),
(399, 'THE MANGROVE PANWA PHUKET RESORT เดอะ แมนกรูฟ พันวา ภูเก็ต  รีสอร์ท', 'THE MANGROVE PANWA PHUKET RESORT เดอะ แมนกรูฟ พันวา ภูเก็ต  รีสอร์ท', '', '', '', 0, 0, 1, '2023-09-01 04:55:20', '2023-09-22 06:23:20'),
(400, 'X10 Seaview Suites เอ็กเทน ซีวิว', 'X10 Seaview Suites เอ็กเทน ซีวิว', '', '', '', 0, 1, 0, '2023-09-01 04:55:20', '2023-09-01 04:55:20'),
(401, 'BLUE BEACH GRAND RESORT AND SPA บลู บีช แกรนด์ รีสอร์ท แอนด์ สปา', 'BLUE BEACH GRAND RESORT AND SPA บลู บีช แกรนด์ รีสอร์ท แอนด์ สปา', '', '', '', 0, 0, 1, '2023-09-01 04:55:20', '2023-09-22 05:32:46'),
(402, 'MANGOSTEEN RESORT & SPA แมงโก้สทีน รีสอร์ท แอนด์ สปา ', 'MANGOSTEEN RESORT & SPA แมงโก้สทีน รีสอร์ท แอนด์ สปา ', '', '', '', 0, 1, 0, '2023-09-01 04:55:20', '2023-09-01 04:55:20'),
(403, 'THE VIJITT RESORT PHUKET เดอะวิจิตรรีสอร์ทภูเก็ต', 'THE VIJITT RESORT PHUKET เดอะวิจิตรรีสอร์ทภูเก็ต', '', '', '', 0, 1, 0, '2023-09-01 04:55:21', '2023-09-01 04:55:21'),
(404, 'Babylon Pool Villas บาบิลอน พูล วิลล่า', 'Babylon Pool Villas บาบิลอน พูล วิลล่า', '', '', '', 0, 1, 0, '2023-09-01 04:55:21', '2023-09-01 04:55:21'),
(405, 'BLUE BEACH GRAND RESORT AND SPA บลู บีช แกรนด์ รีสอร์ท แอนด์ สปา', 'BLUE BEACH GRAND RESORT AND SPA บลู บีช แกรนด์ รีสอร์ท แอนด์ สปา', '', '', '', 0, 1, 0, '2023-09-01 04:55:21', '2023-09-01 04:55:21'),
(406, 'Casabay Luxury Pool Villas คาซาเบย์ ลักชัวรี พูลวิลล่า', 'Casabay Luxury Pool Villas คาซาเบย์ ลักชัวรี พูลวิลล่า', '', '', '', 0, 0, 1, '2023-09-01 04:55:21', '2023-09-22 05:39:14'),
(407, 'Friendship Beach Resort & Atmanjai Wellness Spa โรงแรมเฟรนด์ชิปบีช รีสอร์ท แอนด์ อัตมันไจ เวลเนส สปา', 'Friendship Beach Resort & Atmanjai Wellness Spa โรงแรมเฟรนด์ชิปบีช รีสอร์ท แอนด์ อัตมันไจ เวลเนส สปา', '', '', '', 0, 1, 0, '2023-09-01 04:55:21', '2023-09-01 04:55:21'),
(408, 'Lady Naya Villas เลดี้ นายะ วิลล่า', 'Lady Naya Villas เลดี้ นายะ วิลล่า', '', '', '', 0, 0, 1, '2023-09-01 04:55:21', '2023-09-22 05:51:58'),
(409, 'Le Resort and Villas เลอ รีสอร์ท แอนด์ วิลล่า', 'Le Resort and Villas เลอ รีสอร์ท แอนด์ วิลล่า', '', '', '', 0, 0, 1, '2023-09-01 04:55:21', '2023-09-22 05:52:30'),
(410, 'Navatara Phuket Resort นวธารา ภูเก็ต รีสอร์ท', 'Navatara Phuket Resort นวธารา ภูเก็ต รีสอร์ท', '', '', '', 0, 1, 0, '2023-09-01 04:55:21', '2023-09-01 04:55:21'),
(411, 'Phu NaNa Boutique Hotel ภู นานา บูทีค โฮเต็ล ', 'Phu NaNa Boutique Hotel ภู นานา บูทีค โฮเต็ล ', '', '', '', 0, 0, 1, '2023-09-01 04:55:21', '2023-09-22 06:03:59'),
(412, 'Rawai Palm Beach Resort ราไว ปาล์ม บีช รีสอร์ท ', 'Rawai Palm Beach Resort ราไว ปาล์ม บีช รีสอร์ท ', '', '', '', 0, 1, 0, '2023-09-01 04:55:21', '2023-09-01 04:55:21'),
(413, 'Serenity Resort & Residences Phuket เซลิน่า เซเรนิตี้ ราไวย์ ภูเก็ต', 'Serenity Resort & Residences Phuket เซลิน่า เซเรนิตี้ ราไวย์ ภูเก็ต', '', '', '', 0, 1, 0, '2023-09-01 04:55:21', '2023-09-01 04:55:21'),
(414, 'Stay Wellbeing & Lifestyle Resort สเตย์ เวลบีอิ้ง แอนด์ ไลฟ์สไตล์ รีสอร์ท', 'Stay Wellbeing & Lifestyle Resort สเตย์ เวลบีอิ้ง แอนด์ ไลฟ์สไตล์ รีสอร์ท', '', '', '', 0, 1, 0, '2023-09-01 04:55:21', '2023-09-01 04:55:21'),
(415, 'THAMES TARA POOL VILLA RAWAI เทมส์ ธารา พูลวิลล่า ราไวย์', 'THAMES TARA POOL VILLA RAWAI เทมส์ ธารา พูลวิลล่า ราไวย์', '', '', '', 0, 1, 0, '2023-09-01 04:55:21', '2023-09-01 04:55:21'),
(416, 'Tharawalai resort ธาราวาลัย รีสอร์ท ', 'Tharawalai resort ธาราวาลัย รีสอร์ท ', '', '', '', 0, 0, 1, '2023-09-01 04:55:21', '2023-09-22 06:22:07'),
(417, 'The Mangosteen Resort and Spa เดอะ แมงโก้สทีน รีสอร์ท แอนด์ สปา', 'The Mangosteen Resort and Spa เดอะ แมงโก้สทีน รีสอร์ท แอนด์ สปา', '', '', '', 0, 1, 0, '2023-09-01 04:55:21', '2023-09-01 04:55:21'),
(418, 'The View Rawada Phuket', 'เดอะ วิว ราวาดา ภูเก็ต', '', '', '', 0, 1, 0, '2023-09-01 04:55:21', '2023-09-22 07:53:54'),
(419, 'ANANTARA PHUKET LAYAN RESORT  อนันตรา ลายัน ภูเก็ต รีสอร์ท', 'ANANTARA PHUKET LAYAN RESORT  อนันตรา ลายัน ภูเก็ต รีสอร์ท', '', '', '', 0, 1, 0, '2023-09-01 04:55:21', '2023-09-01 04:55:21'),
(420, 'The Pavilions Phuket เดอะ พาวิลเลี่ยน ภูเก็ต', 'The Pavilions Phuket เดอะ พาวิลเลี่ยน ภูเก็ต', '', '', '', 0, 1, 0, '2023-09-01 04:55:21', '2023-09-01 04:55:21'),
(421, 'AYARA HILLTOPS ไอยรา ฮิลล์ทอปส์', 'AYARA HILLTOPS ไอยรา ฮิลล์ทอปส์', '', '', '', 0, 1, 0, '2023-09-01 04:55:21', '2023-09-01 04:55:21'),
(422, 'SURIN PHUKET สุรินทร์ ภูเก็ต', 'SURIN PHUKET สุรินทร์ ภูเก็ต', '', '', '', 0, 1, 0, '2023-09-01 04:55:21', '2023-09-01 04:55:21'),
(423, 'TWINPALMS PHUKET HOTEL โรงแรมทวินปาล์มส์ภูเก็ต', 'TWINPALMS PHUKET HOTEL โรงแรมทวินปาล์มส์ภูเก็ต', '', '', '', 0, 1, 0, '2023-09-01 04:55:22', '2023-09-01 04:55:22'),
(424, 'AMANPURI Resort อมันปุรี  รีสอร์ท', 'AMANPURI Resort อมันปุรี  รีสอร์ท', '', '', '', 0, 0, 1, '2023-09-01 04:55:22', '2023-09-22 05:24:38'),
(425, 'Ayara Hilltops Boutique Resort and Spa ไอยรา ฮิลล์ท็อป บูติก รีสอร์ท แอนด์ สปา ภูเก็ต', 'Ayara Hilltops Boutique Resort and Spa ไอยรา ฮิลล์ท็อป บูติก รีสอร์ท แอนด์ สปา ภูเก็ต', '', '', '', 0, 1, 0, '2023-09-01 04:55:22', '2023-09-01 04:55:22'),
(426, 'The Chava Resort เดอะ ชวา รีสอร์ท', 'The Chava Resort เดอะ ชวา รีสอร์ท', '', '', '', 0, 1, 0, '2023-09-01 04:55:22', '2023-09-01 04:55:22'),
(427, 'The Surin Phuket  เดอะ สุรินทร์', 'The Surin Phuket  เดอะ สุรินทร์', '', '', '', 0, 1, 0, '2023-09-01 04:55:22', '2023-09-01 04:55:22'),
(428, 'Absolute Twin Sand', 'แอปโซลูท ทวินน์ แซนด์', '', '', '', 0, 1, 0, '2023-09-18 07:30:46', '2023-09-18 07:30:46'),
(429, 'I Am O`Tel Patong', 'ไอแอม โอเทล ป่าตอง', '', '', '', 0, 1, 0, '2023-09-21 06:47:29', '2023-09-21 06:47:29'),
(430, 'Hotel A', 'โฮลเทล เอ', '', '', '', 0, 1, 0, '2023-09-21 10:59:55', '2023-09-21 11:05:27'),
(431, 'Hotel B', 'โฮลเทล บี', '', '', '', 0, 0, 1, '2023-09-21 11:05:57', '2023-09-21 11:07:28'),
(432, 'Hotel C', 'โฮลเทล ซี', '', '', '', 0, 0, 1, '2023-09-21 11:15:22', '2023-09-21 11:16:08'),
(433, 'The Natural Resort', 'เดอะ เนเชอรัล รีสอร์ท', '', '', '', 0, 1, 0, '2023-09-22 06:54:27', '2023-09-22 06:54:27'),
(434, 'Villa Sonata', 'วิลล่า โซนาต้า', ' 53/23 Moo 5, Chalong ซอย นากก ตำบล ฉลอง อำเภอเมืองภูเก็ต ภูเก็ต 83130\r\nhttps://maps.app.goo.gl/RtgA6Ypw2cGWH3kr7', '', '', 0, 1, 0, '2023-09-22 07:55:57', '2023-09-22 07:55:57'),
(435, 'Foto Hotel Phuket', 'โฟโต้โฮเทล ภูเก็ต', '', '076 601 398', '', 0, 1, 0, '2023-09-22 08:12:19', '2023-09-22 08:12:19'),
(436, 'GP House Phuket', 'จีพี เฮาส์ ภูเก็ต', '', '', '', 0, 1, 0, '2023-09-22 08:29:38', '2023-09-22 08:29:38'),
(437, 'Beehive Phuket Old Town', 'บึไฮฟ์ ภูเก็ต โอลด์ ทาวน์', '', '', '', 0, 1, 0, '2023-09-23 05:48:50', '2023-09-23 05:50:10'),
(438, 'Mirage Patong Phuket Hotel', 'มิราจ ป่าตอง ภูเก็ต โฮเทล', '', '', '', 0, 1, 0, '2023-09-23 06:03:34', '2023-09-23 06:03:34'),
(439, 'Isara Boutique Hotel and Café', 'ไอสรา บูทิก โฮเต็ล แอนด์ คาเฟ่ ', '', '', '', 0, 1, 0, '2023-09-23 06:05:04', '2023-09-23 06:05:04'),
(440, 'Garden Phuket Hotel', 'การ์เดน ภูเก็ต โฮเทล', '', '', '', 0, 1, 0, '2023-09-23 06:11:16', '2023-09-23 06:11:16'),
(441, 'The Crib Patong', 'เดอะคลิบ ป่าตอง', '', '', '', 0, 1, 0, '2023-10-04 05:36:56', '2023-10-04 05:36:56'),
(442, 'Hostel Our Nomad & โฮสเทล เอาเวอร์ โนแมด ', 'โฮสเทล เอาเวอร์ โนแมด ', '', '', '', 0, 1, 0, '2023-10-04 05:53:06', '2023-10-04 05:53:06'),
(443, 'Triple L Hotel Patong Beach Phuket & ทริปเปิ้ล แอล โฮเทล ป่าตอง บีช.', 'ทริปเปิ้ล แอล โฮเทล ป่าตอง บีช', '', '', '', 0, 1, 0, '2023-10-04 05:58:19', '2023-10-04 05:58:19'),
(444, 'The Charm Resort &  เดอะชาร์ม รีสอร์ท ภูเก็ต', ' เดอะชาร์ม รีสอร์ท ภูเก็ต', '', '', '', 0, 1, 0, '2023-10-04 06:13:22', '2023-10-04 06:13:22'),
(445, 'TBA', 'TBA', '', '', '', 0, 1, 0, '2023-11-08 06:09:47', '2023-11-08 06:09:47'),
(446, 'Princess Seaview Resort and Spa โรงแรมปรินเซสซีวิว รีสอร์ทแอนด์สปา', 'โรงแรมปรินเซสซีวิว รีสอร์ทแอนด์สปา', '', '', '', 0, 1, 0, '2023-11-08 06:15:14', '2023-11-08 06:15:14'),
(447, 'ASHLEE Plaza Hotel & Spa ดิ แอชลี พลาซ่า ป่าตอง โฮเทล แอนด์ สปา(', 'ดิ แอชลี พลาซ่า ป่าตอง โฮเทล แอนด์ สปา(', '', '', '', 0, 1, 0, '2023-11-08 06:34:38', '2023-11-08 06:34:38'),
(448, 'Panwaburi Beachfront Resort  พันวาบุรี บีชฟร้อนท์ รีสอร์ท', ' พันวาบุรี บีชฟร้อนท์ รีสอร์ท', '', '', '', 0, 1, 0, '2023-11-08 07:13:06', '2023-11-08 07:13:06'),
(449, 'เบล แอร์ ป่าตอง ภูเก็ต (Bel Aire Patong, Phuket)', 'เบล แอร์ ป่าตอง ภูเก็ต (Bel Aire Patong, Phuket)', '', '', '', 0, 1, 0, '2023-11-08 07:20:18', '2023-11-08 07:20:18'),
(450, 'โทนี่ รีสอร์ท TONY RESORT', 'โทนี่ รีสอร์ท', '', '', '', 0, 1, 0, '2023-11-10 05:53:11', '2023-11-10 05:53:11'),
(451, 'Oakwood Hotel Journeyhub Phuket โอ๊ควูด โฮเต็ล เจอร์นีย์ฮับ ภูเก็ต', 'โอ๊ควูด โฮเต็ล เจอร์นีย์ฮับ ภูเก็ต', '', '', '', 0, 1, 0, '2023-11-10 06:36:06', '2023-11-10 06:36:06'),
(452, 'Fishermen`s Harbour ฟิชเชอร์แมนส์ ฮาร์เบอร์ เออร์เบิน รีสอร์ต', 'ฟิชเชอร์แมนส์ ฮาร์เบอร์ เออร์เบิน รีสอร์ต', '', '', '', 0, 1, 0, '2023-11-10 06:41:58', '2023-11-10 06:41:58'),
(453, 'The Lunar Patong Phuket', '', '', '', '', 0, 1, 0, '2023-12-03 04:18:10', '2023-12-03 04:18:10'),
(454, 'Bedline Hotel เบดไลน์โฮเทล ', '', '', '', '', 0, 1, 0, '2023-12-06 06:09:43', '2023-12-06 06:09:43'),
(455, 'RK Fashions', '', '', '', '', 0, 1, 0, '2023-12-07 13:15:39', '2023-12-07 13:15:39'),
(456, 'ออร์คิด รีซอร์เทล (Orchid Resortel)', '', '', '', '', 0, 1, 0, '2023-12-12 04:26:35', '2023-12-12 04:26:35'),
(457, 'ป่าตองล็อจ (Patong Lodge Hotel)', '', '', '', '', 0, 1, 0, '2023-12-16 09:27:05', '2023-12-16 09:27:05'),
(458, 'JW Marriott Khao Lak Resort & Spa (เจดับบลิว แมริออท เขาหลัก รีสอร์ท แอนด์ สปา)', 'JW Marriott Khao Lak Resort & Spa (เจดับบลิว แมริออท เขาหลัก รีสอร์ท แอนด์ สปา)', '', '', '', 15, 1, 0, '2024-10-14 09:28:08', '2024-10-14 09:28:08'),
(459, 'Diamond Resort Phuket', 'Diamond Resort Phuket', '', '', '', 8, 1, 0, '2024-11-06 04:55:05', '2024-11-06 04:55:05');

-- --------------------------------------------------------

--
-- Table structure for table `invoices`
--

CREATE TABLE `invoices` (
  `id` int NOT NULL,
  `no` int NOT NULL,
  `rec_date` date NOT NULL,
  `withholding` int NOT NULL COMMENT 'หัก ณ ที่จ่าย',
  `note` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `branche_id` int NOT NULL,
  `booking_id` int NOT NULL,
  `payment_id` int NOT NULL,
  `vat_id` int NOT NULL,
  `currency_id` int NOT NULL,
  `cover_id` int NOT NULL COMMENT 'ใบปะหน้า',
  `bank_account_id` int NOT NULL,
  `user_id` int NOT NULL COMMENT 'invoice by',
  `is_approved` int NOT NULL,
  `is_deleted` int NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `invoices`
--

INSERT INTO `invoices` (`id`, `no`, `rec_date`, `withholding`, `note`, `branche_id`, `booking_id`, `payment_id`, `vat_id`, `currency_id`, `cover_id`, `bank_account_id`, `user_id`, `is_approved`, `is_deleted`, `created_at`, `updated_at`) VALUES
(1, 1, '2024-12-26', 0, '', 0, 1, 0, 1, 4, 1, 2, 1, 1, 0, '2024-12-19 03:32:50', '2024-12-19 03:32:50'),
(2, 1, '2024-12-18', 0, '', 0, 4, 0, 0, 4, 2, 3, 1, 1, 0, '2024-12-19 03:44:48', '2024-12-19 03:44:48'),
(3, 2, '2024-12-18', 0, '', 0, 3, 0, 0, 4, 2, 3, 1, 1, 0, '2024-12-19 03:44:48', '2024-12-19 03:44:48'),
(4, 1, '2024-12-21', 0, '', 0, 6, 0, 0, 4, 3, 3, 1, 1, 0, '2024-12-20 05:27:25', '2024-12-20 05:27:25');

-- --------------------------------------------------------

--
-- Table structure for table `invoice_cover`
--

CREATE TABLE `invoice_cover` (
  `id` int NOT NULL,
  `inv_date` date NOT NULL,
  `inv_no` int NOT NULL,
  `inv_full` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `invoice_cover`
--

INSERT INTO `invoice_cover` (`id`, `inv_date`, `inv_no`, `inv_full`, `created_at`) VALUES
(1, '2024-12-19', 1, 'IN-0000001', '2024-12-19 03:32:50'),
(2, '2024-12-19', 2, 'IN-0000002', '2024-12-19 03:44:48'),
(3, '2024-12-20', 3, 'IN-0000003', '2024-12-20 05:27:25');

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `id` int NOT NULL,
  `name_thai` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_eng` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `name_thai`, `name_eng`, `created_at`) VALUES
(1, 'ภาษาไทย', 'Thai', '2021-07-29 14:29:02'),
(2, 'ภาษาอังกฤษ', 'English', '2021-07-29 14:29:05'),
(3, 'ภาษาจีน', 'Chinese', '2021-07-29 14:32:26'),
(4, 'ภาษาญี่ปุ่น', 'Japanese', '2021-07-29 14:32:28');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id` int NOT NULL,
  `username` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(65) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `username`, `password`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'solution', '$2y$10$89YIJ3hp.LYcBRZNaYb0FOSiTWIdLlt5PPrANo7VbjE4bImZvnjcm', 1, '2022-11-25 07:28:59', '2022-11-25 07:28:59'),
(2, 'admin', '$2y$10$HUlbR177OyMlV3tBCmqMwO7Hgs9.Wda/Uaozr/gtei/cdgb6JwT3a', 2, '2024-12-19 03:56:10', '2024-12-19 03:56:10');

-- --------------------------------------------------------

--
-- Table structure for table `nationalitys`
--

CREATE TABLE `nationalitys` (
  `id` int NOT NULL,
  `name` varchar(100) COLLATE utf8mb3_unicode_ci DEFAULT NULL,
  `is_approved` int DEFAULT '1',
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `nationalitys`
--

INSERT INTO `nationalitys` (`id`, `name`, `is_approved`, `created_at`) VALUES
(1, 'Aruba', 1, '2021-09-15 15:37:35'),
(2, 'Afghanistan', 1, '2021-09-15 15:37:35'),
(3, 'Angola', 1, '2021-09-15 15:37:35'),
(4, 'Anguilla', 1, '2021-09-15 15:37:35'),
(5, 'land Islands', 1, '2021-09-15 15:37:35'),
(6, 'Albania', 1, '2021-09-15 15:37:35'),
(7, 'Andorra', 1, '2021-09-15 15:37:35'),
(8, 'Netherlands Antilles', 1, '2021-09-15 15:37:35'),
(9, 'United Arab Emirates', 1, '2021-09-15 15:37:35'),
(10, 'Argentina', 1, '2021-09-15 15:37:35'),
(11, 'Armenia', 1, '2021-09-15 15:37:35'),
(12, 'American Samoa', 1, '2021-09-15 15:37:35'),
(13, 'Antarctica', 1, '2021-09-15 15:37:35'),
(14, 'French Southern and Antarctic Lands', 1, '2021-09-15 15:37:35'),
(15, 'Antigua and Barbuda', 1, '2021-09-15 15:37:35'),
(16, 'Australia', 1, '2021-09-15 15:37:35'),
(17, 'Austria', 1, '2021-09-15 15:37:35'),
(18, 'Azerbaijan', 1, '2021-09-15 15:37:35'),
(19, 'Burundi', 1, '2021-09-15 15:37:35'),
(20, 'Belgium', 1, '2021-09-15 15:37:35'),
(21, 'Benin', 1, '2021-09-15 15:37:35'),
(22, 'Burkina Faso', 1, '2021-09-15 15:37:35'),
(23, 'Bangladesh', 1, '2021-09-15 15:37:35'),
(24, 'Bulgaria', 1, '2021-09-15 15:37:35'),
(25, 'Bahrain', 1, '2021-09-15 15:37:35'),
(26, 'Bahamas', 1, '2021-09-15 15:37:35'),
(27, 'Bosnia and Herzegovina', 1, '2021-09-15 15:37:35'),
(28, 'Belarus', 1, '2021-09-15 15:37:35'),
(29, 'Bermuda', 1, '2021-09-15 15:37:35'),
(30, 'Brazil', 1, '2021-09-15 15:37:35'),
(31, 'Barbados', 1, '2021-09-15 15:37:35'),
(32, 'Bhutan', 1, '2021-09-15 15:37:35'),
(33, 'Bouvet Island', 1, '2021-09-15 15:37:35'),
(34, 'Botswana', 1, '2021-09-15 15:37:35'),
(35, 'Central African Republic', 1, '2021-09-15 15:37:35'),
(36, 'The Territory of Cocos (Keeling) Islands', 1, '2021-09-15 15:37:35'),
(37, 'Switzerland', 1, '2021-09-15 15:37:35'),
(38, 'Chile', 1, '2021-09-15 15:37:35'),
(39, 'China', 1, '2021-09-15 15:37:35'),
(41, 'Cameroon', 1, '2021-09-15 15:37:35'),
(42, 'The Democratic Republic of the Congo', 1, '2021-09-15 15:37:35'),
(43, 'Cook Islands', 1, '2021-09-15 15:37:35'),
(44, 'Colombia', 1, '2021-09-15 15:37:35'),
(45, 'Comoros', 1, '2021-09-15 15:37:35'),
(46, 'Cabo Verde', 1, '2021-09-15 15:37:35'),
(47, 'Costa Rica', 1, '2021-09-15 15:37:35'),
(48, 'Cuba', 1, '2021-09-15 15:37:35'),
(49, 'Christmas Island', 1, '2021-09-15 15:37:35'),
(50, 'Cayman Islands', 1, '2021-09-15 15:37:35'),
(51, 'Cyprus', 1, '2021-09-15 15:37:35'),
(52, 'Czech Republic', 1, '2021-09-15 15:37:35'),
(53, 'Germany', 1, '2021-09-15 15:37:35'),
(54, 'Djibouti', 1, '2021-09-15 15:37:35'),
(55, 'Danmark', 1, '2021-09-15 15:37:35'),
(56, 'Algeria', 1, '2021-09-15 15:37:35'),
(57, 'Ecuador', 1, '2021-09-15 15:37:35'),
(58, 'Egypt', 1, '2021-09-15 15:37:35'),
(59, 'Eritrea', 1, '2021-09-15 15:37:35'),
(60, 'Western Sahara', 1, '2021-09-15 15:37:35'),
(61, 'Spain', 1, '2021-09-15 15:37:35'),
(62, 'Estonia', 1, '2021-09-15 15:37:35'),
(63, 'Ethiopia', 1, '2021-09-15 15:37:35'),
(64, 'Finland', 1, '2021-09-15 15:37:35'),
(65, 'Fiji', 1, '2021-09-15 15:37:35'),
(66, 'Falkland Islands (Malvinas)', 1, '2021-09-15 15:37:35'),
(67, 'France', 1, '2021-09-15 15:37:35'),
(68, 'Faroe Islands', 1, '2021-09-15 15:37:35'),
(69, 'Micronesia', 1, '2021-09-15 15:37:35'),
(70, 'Gabon', 1, '2021-09-15 15:37:35'),
(71, 'United Kingdom', 1, '2021-09-15 15:37:35'),
(72, 'Georgia', 1, '2021-09-15 15:37:35'),
(73, 'Ghana', 1, '2021-09-15 15:37:35'),
(74, 'Gibraltar', 1, '2021-09-15 15:37:35'),
(75, 'Guinea', 1, '2021-09-15 15:37:35'),
(76, 'Guadeloupe', 1, '2021-09-15 15:37:35'),
(77, 'Gambia', 1, '2021-09-15 15:37:35'),
(78, 'Equatorial Guinea', 1, '2021-09-15 15:37:35'),
(79, 'Greece', 1, '2021-09-15 15:37:35'),
(80, 'Grenada', 1, '2021-09-15 15:37:35'),
(81, 'Greenland', 1, '2021-09-15 15:37:35'),
(82, 'Guatemala', 1, '2021-09-15 15:37:35'),
(83, 'French Guiana', 1, '2021-09-15 15:37:35'),
(84, 'Guam', 1, '2021-09-15 15:37:35'),
(85, 'Guyana', 1, '2021-09-15 15:37:35'),
(86, 'Hong Kong', 1, '2021-09-15 15:37:35'),
(87, 'Heard and McDonald Islands', 1, '2021-09-15 15:37:35'),
(88, 'Honduras', 1, '2021-09-15 15:37:35'),
(89, 'Haiti', 1, '2021-09-15 15:37:35'),
(90, 'Hungary', 1, '2021-09-15 15:37:35'),
(91, 'Indonesia', 1, '2021-09-15 15:37:35'),
(92, 'India', 1, '2021-09-15 15:37:35'),
(93, 'British Indian Ocean Territory', 1, '2021-09-15 15:37:35'),
(94, 'Ireland', 1, '2021-09-15 15:37:35'),
(95, 'Iraq', 1, '2021-09-15 15:37:35'),
(96, 'Iceland', 1, '2021-09-15 15:37:35'),
(97, 'Israel', 1, '2021-09-15 15:37:35'),
(98, 'Italy', 1, '2021-09-15 15:37:35'),
(99, 'Jamaica', 1, '2021-09-15 15:37:35'),
(100, 'Jordan', 1, '2021-09-15 15:37:35'),
(101, 'Japan', 1, '2021-09-15 15:37:35'),
(102, 'Kazakhstan', 1, '2021-09-15 15:37:35'),
(103, 'Kenya', 1, '2021-09-15 15:37:35'),
(104, 'Kyrgyzstan', 1, '2021-09-15 15:37:35'),
(105, 'Cambodia', 1, '2021-09-15 15:37:35'),
(106, 'Republic of Korea', 1, '2021-09-15 15:37:35'),
(107, 'Kuwait', 1, '2021-09-15 15:37:35'),
(108, 'Lebanon', 1, '2021-09-15 15:37:35'),
(109, 'Liberia', 1, '2021-09-15 15:37:35'),
(110, 'Libya', 1, '2021-09-15 15:37:35'),
(111, 'Saint Lucia', 1, '2021-09-15 15:37:35'),
(112, 'Sri Lanka', 1, '2021-09-15 15:37:35'),
(113, 'Lesotho', 1, '2021-09-15 15:37:35'),
(114, 'Lithuania', 1, '2021-09-15 15:37:35'),
(115, 'Luxembourg', 1, '2021-09-15 15:37:35'),
(116, 'Latvia', 1, '2021-09-15 15:37:35'),
(117, 'Macao', 1, '2021-09-15 15:37:35'),
(118, 'Morocco', 1, '2021-09-15 15:37:35'),
(119, 'Monaco', 1, '2021-09-15 15:37:35'),
(120, 'Madagascar', 1, '2021-09-15 15:37:35'),
(121, 'Maldives', 1, '2021-09-15 15:37:35'),
(122, 'Mexico', 1, '2021-09-15 15:37:35'),
(123, 'Republic of Macedonia', 1, '2021-09-15 15:37:35'),
(124, 'Mali', 1, '2021-09-15 15:37:35'),
(125, 'Malta', 1, '2021-09-15 15:37:35'),
(126, 'Myanmar', 1, '2021-09-15 15:37:35'),
(127, 'Montenegro', 1, '2021-09-15 15:37:35'),
(128, 'Mongolia', 1, '2021-09-15 15:37:35'),
(129, 'Northern Mariana Islands', 1, '2021-09-15 15:37:35'),
(130, 'Mozambique', 1, '2021-09-15 15:37:35'),
(131, 'Mauritania', 1, '2021-09-15 15:37:35'),
(132, 'Montserrat', 1, '2021-09-15 15:37:35'),
(133, 'Martinique', 1, '2021-09-15 15:37:35'),
(134, 'Malaysia', 1, '2021-09-15 15:37:35'),
(135, 'Mayotte', 1, '2021-09-15 15:37:35'),
(136, 'Namibia', 1, '2021-09-15 15:37:35'),
(137, 'New Caledonia', 1, '2021-09-15 15:37:35'),
(138, 'Niger', 1, '2021-09-15 15:37:35'),
(139, 'Norfolk Island', 1, '2021-09-15 15:37:35'),
(140, 'Nigeria', 1, '2021-09-15 15:37:35'),
(141, 'Nicaragua', 1, '2021-09-15 15:37:35'),
(142, 'Niue', 1, '2021-09-15 15:37:35'),
(143, 'Norway', 1, '2021-09-15 15:37:35'),
(144, 'Nauru', 1, '2021-09-15 15:37:35'),
(145, 'New Zealand', 1, '2021-09-15 15:37:35'),
(146, 'Oman', 1, '2021-09-15 15:37:35'),
(147, 'Pakistan', 1, '2021-09-15 15:37:35'),
(148, 'Panama', 1, '2021-09-15 15:37:35'),
(149, 'Pitcairn Islands', 1, '2021-09-15 15:37:35'),
(150, 'Peru', 1, '2021-09-15 15:37:35'),
(151, 'Philippines', 1, '2021-09-15 15:37:35'),
(152, 'Palau', 1, '2021-09-15 15:37:35'),
(153, 'Papua New Guinea', 1, '2021-09-15 15:37:35'),
(154, 'Puerto Rico', 1, '2021-09-15 15:37:35'),
(155, 'Portugal', 1, '2021-09-15 15:37:35'),
(156, 'Paraguay', 1, '2021-09-15 15:37:35'),
(157, 'French Polynesia', 1, '2021-09-15 15:37:35'),
(158, 'Qatar', 1, '2021-09-15 15:37:35'),
(159, 'R้union', 1, '2021-09-15 15:37:35'),
(160, 'Romania', 1, '2021-09-15 15:37:35'),
(161, 'Rwanda', 1, '2021-09-15 15:37:35'),
(162, 'Sudan', 1, '2021-09-15 15:37:35'),
(163, 'Senegal', 1, '2021-09-15 15:37:35'),
(164, 'Singapore', 1, '2021-09-15 15:37:35'),
(165, 'South Georgia and the South Sandwich Islands', 1, '2021-09-15 15:37:35'),
(166, 'Saint Helena', 1, '2021-09-15 15:37:35'),
(167, 'Svalbard and Jan Mayen', 1, '2021-09-15 15:37:35'),
(168, 'Solomon Islands', 1, '2021-09-15 15:37:35'),
(169, 'Sierra Leone', 1, '2021-09-15 15:37:35'),
(170, 'El Salvador', 1, '2021-09-15 15:37:35'),
(171, 'San Marino', 1, '2021-09-15 15:37:35'),
(172, 'Somalia', 1, '2021-09-15 15:37:35'),
(173, 'Saint Pierre and Miquelon', 1, '2021-09-15 15:37:35'),
(174, 'Serbia', 1, '2021-09-15 15:37:35'),
(175, 'Sao Tome and Principe', 1, '2021-09-15 15:37:35'),
(176, 'Slovenia', 1, '2021-09-15 15:37:35'),
(177, 'Sweden', 1, '2021-09-15 15:37:35'),
(178, 'Swaziland', 1, '2021-09-15 15:37:35'),
(179, 'Turks and Caicos Islands', 1, '2021-09-15 15:37:35'),
(180, 'Tchad', 1, '2021-09-15 15:37:35'),
(181, 'Togo', 1, '2021-09-15 15:37:35'),
(182, 'Thailand', 1, '2021-09-15 15:37:35'),
(183, 'Tajikistan', 1, '2021-09-15 15:37:35'),
(184, 'Tokelau', 1, '2021-09-15 15:37:35'),
(185, 'Turkmenistan', 1, '2021-09-15 15:37:35'),
(186, 'Timor-Leste', 1, '2021-09-15 15:37:35'),
(187, 'Trinidad and Tobago', 1, '2021-09-15 15:37:35'),
(188, 'Tunisia', 1, '2021-09-15 15:37:35'),
(189, 'Turkey', 1, '2021-09-15 15:37:35'),
(190, 'Tuvalu', 1, '2021-09-15 15:37:35'),
(191, 'Uganda', 1, '2021-09-15 15:37:35'),
(192, 'Ukraine', 1, '2021-09-15 15:37:35'),
(193, 'United States Minor Outlying Islands', 1, '2021-09-15 15:37:35'),
(194, 'Uruguay', 1, '2021-09-15 15:37:35'),
(195, 'United States of America', 1, '2021-09-15 15:37:35'),
(196, 'Uzbekistan', 1, '2021-09-15 15:37:35'),
(197, 'State of the Vatican City', 1, '2021-09-15 15:37:35'),
(198, 'Saint Vincent and the Grenadines', 1, '2021-09-15 15:37:35'),
(199, 'British Virgin Islands', 1, '2021-09-15 15:37:35'),
(200, 'United States Virgin Islands', 1, '2021-09-15 15:37:35'),
(201, 'Viet Nam', 1, '2021-09-15 15:37:35'),
(202, 'Vanuatu', 1, '2021-09-15 15:37:35'),
(203, 'Wallis and Futuna', 1, '2021-09-15 15:37:35'),
(204, 'Samoa', 1, '2021-09-15 15:37:35'),
(205, 'Yemen', 1, '2021-09-15 15:37:35'),
(206, 'Zambia', 1, '2021-09-15 15:37:35'),
(207, 'Zimbabwe', 1, '2021-09-15 15:37:35'),
(208, 'Negara Brunei Darussalam', 1, '2021-09-15 15:37:35'),
(209, 'Plurinational State of Bolivia', 1, '2021-09-15 15:37:35'),
(210, 'Belize', 1, '2021-09-15 15:37:35'),
(211, 'Canada', 1, '2021-09-15 15:37:35'),
(212, 'Congo', 1, '2021-09-15 15:37:35'),
(213, 'Dominica', 1, '2021-09-15 15:37:35'),
(214, 'Dominican Republic', 1, '2021-09-15 15:37:35'),
(215, 'Guinea-Bissau', 1, '2021-09-15 15:37:35'),
(216, 'Croatia', 1, '2021-09-15 15:37:35'),
(217, 'Islamic Republic of Iran', 1, '2021-09-15 15:37:35'),
(218, 'Kiribati', 1, '2021-09-15 15:37:35'),
(219, 'Saint Kitts and Nevis', 1, '2021-09-15 15:37:35'),
(220, 'Democratic People\'s Republic of Korea', 1, '2021-09-15 15:37:35'),
(221, 'Lao People\'s Democratic Republic', 1, '2021-09-15 15:37:35'),
(222, 'Liechtenstein', 1, '2021-09-15 15:37:35'),
(223, 'Republic of Moldova', 1, '2021-09-15 15:37:35'),
(224, 'Marshall Islands', 1, '2021-09-15 15:37:35'),
(225, 'Mauritius', 1, '2021-09-15 15:37:35'),
(226, 'Republic of Malawi', 1, '2021-09-15 15:37:35'),
(227, 'Netherlands', 1, '2021-09-15 15:37:35'),
(228, 'Federal Democratic Republic of Nepal', 1, '2021-09-15 15:37:35'),
(229, 'Republic of Poland', 1, '2021-09-15 15:37:35'),
(230, 'State of Palestine', 1, '2021-09-15 15:37:35'),
(231, 'Russian Federation', 1, '2021-09-15 15:37:35'),
(232, 'Saudi Arabia', 1, '2021-09-15 15:37:35'),
(233, 'Seychelles', 1, '2021-09-15 15:37:35'),
(234, 'Slovakia', 1, '2021-09-15 15:37:35'),
(235, 'Suriname', 1, '2021-09-15 15:37:35'),
(236, 'Syrian Arab Republic', 1, '2021-09-15 15:37:35'),
(237, 'Tonga', 1, '2021-09-15 15:37:35'),
(238, 'Taiwan', 1, '2021-09-15 15:37:35'),
(239, 'United Republic of Tanzania', 1, '2021-09-15 15:37:35'),
(240, 'Bolivarian Republic of Venezuela', 1, '2021-09-15 15:37:35'),
(241, 'Republic of South Africa', 1, '2021-09-15 15:37:35'),
(242, 'Republic of Kosovo', 1, '2021-09-15 15:37:35');

-- --------------------------------------------------------

--
-- Table structure for table `order_boat`
--

CREATE TABLE `order_boat` (
  `id` int NOT NULL,
  `travel_date` date NOT NULL,
  `time` time NOT NULL,
  `counter` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `boat_id` int NOT NULL,
  `guide_id` int NOT NULL,
  `color_id` int NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_boat`
--

INSERT INTO `order_boat` (`id`, `travel_date`, `time`, `counter`, `note`, `boat_id`, `guide_id`, `color_id`, `created_at`) VALUES
(3, '2024-12-21', '00:00:00', '', '', 1, 1, 1, '2024-12-20 05:47:23'),
(4, '2024-12-21', '00:00:00', '', '', 2, 2, 3, '2024-12-20 05:48:11');

-- --------------------------------------------------------

--
-- Table structure for table `order_transfer`
--

CREATE TABLE `order_transfer` (
  `id` int NOT NULL,
  `outside_driver` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `license` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telephone` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `travel_date` date NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pickup` int NOT NULL,
  `dropoff` int NOT NULL,
  `seat` int NOT NULL,
  `driver_id` int NOT NULL,
  `car_id` int NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_transfer`
--

INSERT INTO `order_transfer` (`id`, `outside_driver`, `license`, `telephone`, `travel_date`, `note`, `pickup`, `dropoff`, `seat`, `driver_id`, `car_id`, `created_at`) VALUES
(4, '', '30-1651  ', '082-8708200', '2024-12-21', '', 1, 0, 0, 1, 0, '2024-12-20 05:36:06'),
(5, '', '30-0659 ', '065-3486538', '2024-12-21', '', 1, 0, 0, 2, 0, '2024-12-20 05:41:33');

-- --------------------------------------------------------

--
-- Table structure for table `park`
--

CREATE TABLE `park` (
  `id` int NOT NULL,
  `name` varchar(225) COLLATE utf8mb3_unicode_ci NOT NULL,
  `rate_adult_eng` double(9,2) NOT NULL,
  `rate_child_eng` double(9,2) NOT NULL,
  `rate_adult_th` double(9,2) NOT NULL,
  `rate_child_th` double(9,2) NOT NULL,
  `is_approved` int NOT NULL DEFAULT '1',
  `is_deleted` int NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payments_type`
--

CREATE TABLE `payments_type` (
  `id` int NOT NULL,
  `name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` int NOT NULL COMMENT 'IN : 1\r\nBI : 2',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payments_type`
--

INSERT INTO `payments_type` (`id`, `name`, `type`, `created_at`, `updated_at`) VALUES
(1, 'เก็บเต็มจำนวน', 1, '2022-06-10 08:45:28', '2022-06-10 08:45:28'),
(2, 'ชำระเงินเป็นงวด', 1, '2022-06-10 08:45:28', '2022-06-10 08:45:28'),
(3, 'เงินสด', 2, '2022-06-29 09:16:21', '2022-06-29 09:16:21'),
(4, 'โอนเงิน', 2, '2022-06-29 09:16:21', '2022-06-29 09:16:21'),
(5, 'เช็คธนาคาร', 2, '2022-06-29 09:16:21', '2022-06-29 09:16:21'),
(6, 'เงินสด', 3, '2022-06-29 09:16:21', '2022-06-29 09:16:21'),
(7, 'โอนเงิน', 3, '2022-06-29 09:16:21', '2022-06-29 09:16:21'),
(8, 'เช็คธนาคาร', 3, '2022-06-29 09:16:21', '2022-06-29 09:16:21');

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_approved` int NOT NULL DEFAULT '1',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `is_approved`, `created_at`) VALUES
(2, 'Products', 1, '2021-05-24 07:15:37'),
(3, 'Bookings', 1, '2021-05-24 07:15:37'),
(4, 'invoices', 0, '2021-05-24 07:28:03'),
(5, 'Reports', 1, '2022-11-16 10:58:54');

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `id` int NOT NULL,
  `role_id` int NOT NULL,
  `permission_id` int NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permission_user`
--

CREATE TABLE `permission_user` (
  `id` int NOT NULL,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `place`
--

CREATE TABLE `place` (
  `id` int NOT NULL,
  `provinces` int NOT NULL,
  `zones` int NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pickup` int NOT NULL,
  `dropoff` int NOT NULL,
  `is_approved` int NOT NULL DEFAULT '0',
  `is_deleted` int NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int NOT NULL,
  `refcode` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pax` int NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `park_id` int NOT NULL,
  `is_approved` int NOT NULL DEFAULT '0',
  `is_deleted` int NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `refcode`, `name`, `slug`, `pax`, `note`, `park_id`, `is_approved`, `is_deleted`, `created_at`, `updated_at`) VALUES
(1, '96984', 'BW - Phi Phi  Khai  Maiton', '96984', 0, '', 0, 1, 0, '2024-12-18 11:16:20', '2024-12-18 11:16:20'),
(2, '33334', 'PRD - Phi Phi  Khai  Maiton', '33334', 0, '', 0, 1, 0, '2024-12-18 11:17:49', '2024-12-18 11:17:49'),
(3, '45448', 'Racha Coral Sunset', '45448', 0, '', 0, 1, 0, '2024-12-18 11:18:36', '2024-12-18 11:18:36'),
(4, '41088', 'Halfday Coral Sunset Phomthep', '41088', 0, '', 0, 1, 0, '2024-12-18 11:19:19', '2024-12-18 11:19:19');

-- --------------------------------------------------------

--
-- Table structure for table `products_category_items`
--

CREATE TABLE `products_category_items` (
  `id` int NOT NULL,
  `products` int NOT NULL,
  `category_items` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products_day`
--

CREATE TABLE `products_day` (
  `id` int NOT NULL,
  `product_id` int NOT NULL,
  `day_id` int NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products_file`
--

CREATE TABLE `products_file` (
  `id` int NOT NULL,
  `file_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_path` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `arrange` int NOT NULL DEFAULT '0',
  `product_id` int NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products_itinerary`
--

CREATE TABLE `products_itinerary` (
  `id` int NOT NULL,
  `days` int NOT NULL,
  `topic` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` int NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products_photo`
--

CREATE TABLE `products_photo` (
  `id` int NOT NULL,
  `file_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_path` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `arrange` int NOT NULL DEFAULT '0',
  `product_id` int NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `photo_description` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products_type`
--

CREATE TABLE `products_type` (
  `id` int NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products_type`
--

INSERT INTO `products_type` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Tour', 'tour', '2021-07-19 03:51:23', '2021-07-19 03:51:23');

-- --------------------------------------------------------

--
-- Table structure for table `product_allotments`
--

CREATE TABLE `product_allotments` (
  `id` int NOT NULL,
  `product_id` int NOT NULL DEFAULT '0',
  `allotment_from` date NOT NULL,
  `allotment_to` date NOT NULL,
  `seat` int NOT NULL DEFAULT '0',
  `unlimit` int NOT NULL,
  `is_approved` int NOT NULL DEFAULT '0',
  `is_deleted` int NOT NULL DEFAULT '0',
  `updated_at` datetime NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_category`
--

CREATE TABLE `product_category` (
  `id` int NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `detail` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `transfer` int NOT NULL DEFAULT '0' COMMENT '0 : not included | 1 : included ',
  `customer` int NOT NULL COMMENT '1 : thai\r\n2: foreigner\r\n3 : thai + foreigner',
  `product_id` int NOT NULL,
  `is_approved` int NOT NULL DEFAULT '0',
  `is_deleted` int NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_category`
--

INSERT INTO `product_category` (`id`, `name`, `slug`, `detail`, `transfer`, `customer`, `product_id`, `is_approved`, `is_deleted`, `created_at`, `updated_at`) VALUES
(1, 'Foreign', 'Thai', '', 1, 2, 1, 1, 0, '2024-12-18 11:23:00', '2024-12-19 02:30:53'),
(2, 'Thai', 'Foreign', '', 1, 1, 1, 1, 0, '2024-12-18 11:24:12', '2024-12-19 02:29:55'),
(3, 'Foreign', 'Thai', '', 1, 2, 2, 1, 0, '2024-12-18 11:23:00', '2024-12-19 02:32:09'),
(4, 'Thai', 'Foreign', '', 1, 1, 2, 1, 0, '2024-12-18 11:24:12', '2024-12-19 02:32:00'),
(5, 'Foreign', 'Thai', '', 1, 2, 3, 1, 0, '2024-12-18 11:23:00', '2024-12-19 02:32:49'),
(6, 'Thai', 'Foreign', '', 1, 1, 3, 1, 0, '2024-12-18 11:24:12', '2024-12-19 02:32:41'),
(7, 'Foreign', 'Thai', '', 1, 2, 4, 1, 0, '2024-12-18 11:23:00', '2024-12-19 02:33:13'),
(8, 'Thai', 'Foreign', '', 1, 1, 4, 1, 0, '2024-12-18 11:24:12', '2024-12-19 02:33:05');

-- --------------------------------------------------------

--
-- Table structure for table `product_periods`
--

CREATE TABLE `product_periods` (
  `id` int NOT NULL,
  `period_from` date NOT NULL,
  `period_to` date NOT NULL,
  `product_category_id` int NOT NULL DEFAULT '0',
  `is_approved` int NOT NULL DEFAULT '0',
  `is_deleted` int NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_periods`
--

INSERT INTO `product_periods` (`id`, `period_from`, `period_to`, `product_category_id`, `is_approved`, `is_deleted`, `created_at`, `updated_at`) VALUES
(1, '2024-01-01', '2030-12-31', 1, 1, 0, '2024-12-18 11:23:22', '2024-12-18 11:23:22'),
(2, '2024-01-01', '2030-12-31', 2, 1, 0, '2024-12-18 11:24:27', '2024-12-18 11:24:27'),
(3, '2024-01-01', '2030-12-31', 3, 1, 0, '2024-12-18 11:23:22', '2024-12-18 11:23:22'),
(4, '2024-01-01', '2030-12-30', 4, 1, 0, '2024-12-18 11:24:27', '2024-12-18 11:24:27'),
(5, '2024-01-01', '2030-12-31', 5, 1, 0, '2024-12-18 11:23:22', '2024-12-18 11:23:22'),
(6, '2024-01-01', '2030-12-30', 6, 1, 0, '2024-12-18 11:24:27', '2024-12-18 11:24:27'),
(7, '2024-01-01', '2030-12-31', 7, 1, 0, '2024-12-18 11:23:22', '2024-12-18 11:23:22'),
(8, '2024-01-01', '2030-12-30', 8, 1, 0, '2024-12-18 11:24:27', '2024-12-18 11:24:27');

-- --------------------------------------------------------

--
-- Table structure for table `product_rates`
--

CREATE TABLE `product_rates` (
  `id` int NOT NULL,
  `rate_adult` double(9,2) NOT NULL,
  `rate_child` double(9,2) NOT NULL,
  `rate_infant` double(9,2) NOT NULL,
  `rate_private` double(9,2) NOT NULL,
  `product_period_id` int NOT NULL DEFAULT '0',
  `is_approved` int NOT NULL DEFAULT '0',
  `is_deleted` int NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_rates`
--

INSERT INTO `product_rates` (`id`, `rate_adult`, `rate_child`, `rate_infant`, `rate_private`, `product_period_id`, `is_approved`, `is_deleted`, `created_at`, `updated_at`) VALUES
(1, 2200.00, 2000.00, 0.00, 0.00, 1, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(2, 1900.00, 1700.00, 0.00, 0.00, 2, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(3, 1700.00, 1500.00, 0.00, 0.00, 3, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(4, 1400.00, 1200.00, 0.00, 0.00, 4, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(5, 1700.00, 1500.00, 0.00, 0.00, 5, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(6, 1700.00, 1500.00, 0.00, 0.00, 6, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(7, 1700.00, 1500.00, 0.00, 0.00, 7, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(8, 1700.00, 1500.00, 0.00, 0.00, 8, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(9, 2200.00, 2000.00, 0.00, 0.00, 1, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(10, 1900.00, 1700.00, 0.00, 0.00, 2, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(11, 1700.00, 1500.00, 0.00, 0.00, 3, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(12, 1400.00, 1200.00, 0.00, 0.00, 4, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(13, 1700.00, 1500.00, 0.00, 0.00, 5, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(14, 1700.00, 1500.00, 0.00, 0.00, 6, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(15, 1700.00, 1500.00, 0.00, 0.00, 7, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(16, 1700.00, 1500.00, 0.00, 0.00, 8, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(17, 2200.00, 2000.00, 0.00, 0.00, 1, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(18, 1900.00, 1700.00, 0.00, 0.00, 2, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(19, 1700.00, 1500.00, 0.00, 0.00, 3, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(20, 1400.00, 1200.00, 0.00, 0.00, 4, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(21, 1700.00, 1500.00, 0.00, 0.00, 5, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(22, 1700.00, 1500.00, 0.00, 0.00, 6, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(23, 1700.00, 1500.00, 0.00, 0.00, 7, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(24, 1700.00, 1500.00, 0.00, 0.00, 8, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(25, 2200.00, 2000.00, 0.00, 0.00, 1, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(26, 1900.00, 1700.00, 0.00, 0.00, 2, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(27, 1700.00, 1500.00, 0.00, 0.00, 3, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(28, 1400.00, 1200.00, 0.00, 0.00, 4, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(29, 1700.00, 1500.00, 0.00, 0.00, 5, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(30, 1700.00, 1500.00, 0.00, 0.00, 6, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(31, 1700.00, 1500.00, 0.00, 0.00, 7, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(32, 1700.00, 1500.00, 0.00, 0.00, 8, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(33, 2200.00, 2000.00, 0.00, 0.00, 1, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(34, 1900.00, 1700.00, 0.00, 0.00, 2, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(35, 1700.00, 1500.00, 0.00, 0.00, 3, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(36, 1400.00, 1200.00, 0.00, 0.00, 4, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(37, 1700.00, 1500.00, 0.00, 0.00, 5, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(38, 1700.00, 1500.00, 0.00, 0.00, 6, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(39, 1700.00, 1500.00, 0.00, 0.00, 7, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(40, 1700.00, 1500.00, 0.00, 0.00, 8, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(41, 2200.00, 2000.00, 0.00, 0.00, 1, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(42, 1900.00, 1700.00, 0.00, 0.00, 2, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(43, 1700.00, 1500.00, 0.00, 0.00, 3, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(44, 1400.00, 1200.00, 0.00, 0.00, 4, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(45, 1700.00, 1500.00, 0.00, 0.00, 5, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(46, 1700.00, 1500.00, 0.00, 0.00, 6, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(47, 1700.00, 1500.00, 0.00, 0.00, 7, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(48, 1700.00, 1500.00, 0.00, 0.00, 8, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(49, 2200.00, 2000.00, 0.00, 0.00, 1, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(50, 1900.00, 1700.00, 0.00, 0.00, 2, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(51, 1700.00, 1500.00, 0.00, 0.00, 3, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(52, 1400.00, 1200.00, 0.00, 0.00, 4, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(53, 1700.00, 1500.00, 0.00, 0.00, 5, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(54, 1700.00, 1500.00, 0.00, 0.00, 6, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(55, 1700.00, 1500.00, 0.00, 0.00, 7, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(56, 1700.00, 1500.00, 0.00, 0.00, 8, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(57, 2200.00, 2000.00, 0.00, 0.00, 1, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(58, 1900.00, 1700.00, 0.00, 0.00, 2, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(59, 1700.00, 1500.00, 0.00, 0.00, 3, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(60, 1400.00, 1200.00, 0.00, 0.00, 4, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(61, 1700.00, 1500.00, 0.00, 0.00, 5, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(62, 1700.00, 1500.00, 0.00, 0.00, 6, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(63, 1700.00, 1500.00, 0.00, 0.00, 7, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(64, 1700.00, 1500.00, 0.00, 0.00, 8, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(65, 2200.00, 2000.00, 0.00, 0.00, 1, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(66, 1900.00, 1700.00, 0.00, 0.00, 2, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(67, 1700.00, 1500.00, 0.00, 0.00, 3, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(68, 1400.00, 1200.00, 0.00, 0.00, 4, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(69, 1700.00, 1500.00, 0.00, 0.00, 5, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(70, 1700.00, 1500.00, 0.00, 0.00, 6, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(71, 1700.00, 1500.00, 0.00, 0.00, 7, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(72, 1700.00, 1500.00, 0.00, 0.00, 8, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(73, 2200.00, 2000.00, 0.00, 0.00, 1, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(74, 1900.00, 1700.00, 0.00, 0.00, 2, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(75, 1700.00, 1500.00, 0.00, 0.00, 3, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(76, 1400.00, 1200.00, 0.00, 0.00, 4, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(77, 1700.00, 1500.00, 0.00, 0.00, 5, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(78, 1700.00, 1500.00, 0.00, 0.00, 6, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(79, 1700.00, 1500.00, 0.00, 0.00, 7, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(80, 1700.00, 1500.00, 0.00, 0.00, 8, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(81, 2200.00, 2000.00, 0.00, 0.00, 1, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(82, 1900.00, 1700.00, 0.00, 0.00, 2, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(83, 1700.00, 1500.00, 0.00, 0.00, 3, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(84, 1400.00, 1200.00, 0.00, 0.00, 4, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(85, 1700.00, 1500.00, 0.00, 0.00, 5, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(86, 1700.00, 1500.00, 0.00, 0.00, 6, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(87, 1700.00, 1500.00, 0.00, 0.00, 7, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(88, 1700.00, 1500.00, 0.00, 0.00, 8, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(89, 2200.00, 2000.00, 0.00, 0.00, 1, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(90, 1900.00, 1700.00, 0.00, 0.00, 2, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(91, 1700.00, 1500.00, 0.00, 0.00, 3, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(92, 1400.00, 1200.00, 0.00, 0.00, 4, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(93, 1700.00, 1500.00, 0.00, 0.00, 5, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(94, 1700.00, 1500.00, 0.00, 0.00, 6, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(95, 1700.00, 1500.00, 0.00, 0.00, 7, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(96, 1700.00, 1500.00, 0.00, 0.00, 8, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(97, 2200.00, 2000.00, 0.00, 0.00, 1, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(98, 1900.00, 1700.00, 0.00, 0.00, 2, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(99, 1700.00, 1500.00, 0.00, 0.00, 3, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(100, 1400.00, 1200.00, 0.00, 0.00, 4, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(101, 1700.00, 1500.00, 0.00, 0.00, 5, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(102, 1700.00, 1500.00, 0.00, 0.00, 6, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(103, 1700.00, 1500.00, 0.00, 0.00, 7, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(104, 1700.00, 1500.00, 0.00, 0.00, 8, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(105, 2200.00, 2000.00, 0.00, 0.00, 1, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(106, 1900.00, 1700.00, 0.00, 0.00, 2, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(107, 1700.00, 1500.00, 0.00, 0.00, 3, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(108, 1400.00, 1200.00, 0.00, 0.00, 4, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(109, 1700.00, 1500.00, 0.00, 0.00, 5, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(110, 1700.00, 1500.00, 0.00, 0.00, 6, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(111, 1700.00, 1500.00, 0.00, 0.00, 7, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(112, 1700.00, 1500.00, 0.00, 0.00, 8, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(113, 2200.00, 2000.00, 0.00, 0.00, 1, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(114, 1900.00, 1700.00, 0.00, 0.00, 2, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(115, 1700.00, 1500.00, 0.00, 0.00, 3, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(116, 1400.00, 1200.00, 0.00, 0.00, 4, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(117, 1700.00, 1500.00, 0.00, 0.00, 5, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(118, 1700.00, 1500.00, 0.00, 0.00, 6, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(119, 1700.00, 1500.00, 0.00, 0.00, 7, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(120, 1700.00, 1500.00, 0.00, 0.00, 8, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(121, 2200.00, 2000.00, 0.00, 0.00, 1, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(122, 1900.00, 1700.00, 0.00, 0.00, 2, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(123, 1700.00, 1500.00, 0.00, 0.00, 3, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(124, 1400.00, 1200.00, 0.00, 0.00, 4, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(125, 1700.00, 1500.00, 0.00, 0.00, 5, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(126, 1700.00, 1500.00, 0.00, 0.00, 6, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(127, 1700.00, 1500.00, 0.00, 0.00, 7, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(128, 1700.00, 1500.00, 0.00, 0.00, 8, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(129, 2200.00, 2000.00, 0.00, 0.00, 1, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(130, 1900.00, 1700.00, 0.00, 0.00, 2, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(131, 1700.00, 1500.00, 0.00, 0.00, 3, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(132, 1400.00, 1200.00, 0.00, 0.00, 4, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(133, 1700.00, 1500.00, 0.00, 0.00, 5, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(134, 1700.00, 1500.00, 0.00, 0.00, 6, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(135, 1700.00, 1500.00, 0.00, 0.00, 7, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(136, 1700.00, 1500.00, 0.00, 0.00, 8, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(137, 2200.00, 2000.00, 0.00, 0.00, 1, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(138, 1900.00, 1700.00, 0.00, 0.00, 2, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(139, 1700.00, 1500.00, 0.00, 0.00, 3, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(140, 1400.00, 1200.00, 0.00, 0.00, 4, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(141, 1700.00, 1500.00, 0.00, 0.00, 5, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(142, 1700.00, 1500.00, 0.00, 0.00, 6, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(143, 1700.00, 1500.00, 0.00, 0.00, 7, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(144, 1700.00, 1500.00, 0.00, 0.00, 8, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(145, 2400.00, 2100.00, 0.00, 0.00, 1, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(146, 2100.00, 1800.00, 0.00, 0.00, 2, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(147, 1700.00, 1500.00, 0.00, 0.00, 3, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(148, 1400.00, 1200.00, 0.00, 0.00, 4, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(149, 1700.00, 1500.00, 0.00, 0.00, 5, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(150, 1700.00, 1500.00, 0.00, 0.00, 6, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(151, 1700.00, 1500.00, 0.00, 0.00, 7, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(152, 1700.00, 1500.00, 0.00, 0.00, 8, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(153, 2400.00, 2100.00, 0.00, 0.00, 1, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(154, 2100.00, 1800.00, 0.00, 0.00, 2, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(155, 1700.00, 1500.00, 0.00, 0.00, 3, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(156, 1400.00, 1200.00, 0.00, 0.00, 4, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(157, 1700.00, 1500.00, 0.00, 0.00, 5, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(158, 1700.00, 1500.00, 0.00, 0.00, 6, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(159, 1700.00, 1500.00, 0.00, 0.00, 7, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(160, 1700.00, 1500.00, 0.00, 0.00, 8, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(161, 2400.00, 2100.00, 0.00, 0.00, 1, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(162, 2100.00, 1800.00, 0.00, 0.00, 2, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(163, 1700.00, 1500.00, 0.00, 0.00, 3, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(164, 1400.00, 1200.00, 0.00, 0.00, 4, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(165, 1700.00, 1500.00, 0.00, 0.00, 5, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(166, 1700.00, 1500.00, 0.00, 0.00, 6, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(167, 1700.00, 1500.00, 0.00, 0.00, 7, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(168, 1700.00, 1500.00, 0.00, 0.00, 8, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(169, 2000.00, 1800.00, 0.00, 0.00, 1, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(170, 1700.00, 1500.00, 0.00, 0.00, 2, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(171, 1700.00, 1500.00, 0.00, 0.00, 3, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(172, 1400.00, 1200.00, 0.00, 0.00, 4, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(173, 1700.00, 1500.00, 0.00, 0.00, 5, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(174, 1700.00, 1500.00, 0.00, 0.00, 6, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(175, 1700.00, 1500.00, 0.00, 0.00, 7, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(176, 1700.00, 1500.00, 0.00, 0.00, 8, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(177, 2000.00, 1800.00, 0.00, 0.00, 1, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(178, 1700.00, 1500.00, 0.00, 0.00, 2, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(179, 1700.00, 1500.00, 0.00, 0.00, 3, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(180, 1400.00, 1200.00, 0.00, 0.00, 4, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(181, 1700.00, 1500.00, 0.00, 0.00, 5, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(182, 1700.00, 1500.00, 0.00, 0.00, 6, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(183, 1700.00, 1500.00, 0.00, 0.00, 7, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(184, 1700.00, 1500.00, 0.00, 0.00, 8, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(185, 2000.00, 1800.00, 0.00, 0.00, 1, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(186, 1700.00, 1500.00, 0.00, 0.00, 2, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(187, 1700.00, 1500.00, 0.00, 0.00, 3, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(188, 1400.00, 1200.00, 0.00, 0.00, 4, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(189, 1700.00, 1500.00, 0.00, 0.00, 5, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(190, 1700.00, 1500.00, 0.00, 0.00, 6, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(191, 1700.00, 1500.00, 0.00, 0.00, 7, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(192, 1700.00, 1500.00, 0.00, 0.00, 8, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(193, 2000.00, 1800.00, 0.00, 0.00, 1, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(194, 1700.00, 1500.00, 0.00, 0.00, 2, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(195, 1700.00, 1500.00, 0.00, 0.00, 3, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(196, 1400.00, 1200.00, 0.00, 0.00, 4, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(197, 1700.00, 1500.00, 0.00, 0.00, 5, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(198, 1700.00, 1500.00, 0.00, 0.00, 6, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(199, 1700.00, 1500.00, 0.00, 0.00, 7, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(200, 1700.00, 1500.00, 0.00, 0.00, 8, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(201, 2000.00, 1800.00, 0.00, 0.00, 1, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(202, 1700.00, 1500.00, 0.00, 0.00, 2, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(203, 1700.00, 1500.00, 0.00, 0.00, 3, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(204, 1400.00, 1200.00, 0.00, 0.00, 4, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(205, 1700.00, 1500.00, 0.00, 0.00, 5, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(206, 1700.00, 1500.00, 0.00, 0.00, 6, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(207, 1700.00, 1500.00, 0.00, 0.00, 7, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(208, 1700.00, 1500.00, 0.00, 0.00, 8, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(209, 2000.00, 1800.00, 0.00, 0.00, 1, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(210, 1700.00, 1500.00, 0.00, 0.00, 2, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(211, 1700.00, 1500.00, 0.00, 0.00, 3, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(212, 1400.00, 1200.00, 0.00, 0.00, 4, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(213, 1700.00, 1500.00, 0.00, 0.00, 5, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(214, 1700.00, 1500.00, 0.00, 0.00, 6, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(215, 1700.00, 1500.00, 0.00, 0.00, 7, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(216, 1700.00, 1500.00, 0.00, 0.00, 8, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(217, 2000.00, 1800.00, 0.00, 0.00, 1, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(218, 1700.00, 1500.00, 0.00, 0.00, 2, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(219, 1700.00, 1500.00, 0.00, 0.00, 3, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(220, 1400.00, 1200.00, 0.00, 0.00, 4, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(221, 1700.00, 1500.00, 0.00, 0.00, 5, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(222, 1700.00, 1500.00, 0.00, 0.00, 6, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(223, 1700.00, 1500.00, 0.00, 0.00, 7, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(224, 1700.00, 1500.00, 0.00, 0.00, 8, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(225, 2000.00, 1800.00, 0.00, 0.00, 1, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(226, 1700.00, 1500.00, 0.00, 0.00, 2, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(227, 1700.00, 1500.00, 0.00, 0.00, 3, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(228, 1400.00, 1200.00, 0.00, 0.00, 4, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(229, 1700.00, 1500.00, 0.00, 0.00, 5, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(230, 1700.00, 1500.00, 0.00, 0.00, 6, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(231, 1700.00, 1500.00, 0.00, 0.00, 7, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(232, 1700.00, 1500.00, 0.00, 0.00, 8, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(233, 2000.00, 1800.00, 0.00, 0.00, 1, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(234, 1700.00, 1500.00, 0.00, 0.00, 2, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(235, 1700.00, 1500.00, 0.00, 0.00, 3, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(236, 1400.00, 1200.00, 0.00, 0.00, 4, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(237, 1700.00, 1500.00, 0.00, 0.00, 5, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(238, 1700.00, 1500.00, 0.00, 0.00, 6, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(239, 1700.00, 1500.00, 0.00, 0.00, 7, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(240, 1700.00, 1500.00, 0.00, 0.00, 8, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(241, 2000.00, 1800.00, 0.00, 0.00, 1, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(242, 1700.00, 1500.00, 0.00, 0.00, 2, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(243, 1700.00, 1500.00, 0.00, 0.00, 3, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(244, 1400.00, 1200.00, 0.00, 0.00, 4, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(245, 1700.00, 1500.00, 0.00, 0.00, 5, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(246, 1700.00, 1500.00, 0.00, 0.00, 6, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(247, 1700.00, 1500.00, 0.00, 0.00, 7, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(248, 1700.00, 1500.00, 0.00, 0.00, 8, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(249, 2000.00, 1800.00, 0.00, 0.00, 1, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(250, 1700.00, 1500.00, 0.00, 0.00, 2, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(251, 1700.00, 1500.00, 0.00, 0.00, 3, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(252, 1400.00, 1200.00, 0.00, 0.00, 4, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(253, 1700.00, 1500.00, 0.00, 0.00, 5, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(254, 1700.00, 1500.00, 0.00, 0.00, 6, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(255, 1700.00, 1500.00, 0.00, 0.00, 7, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(256, 1700.00, 1500.00, 0.00, 0.00, 8, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(257, 2000.00, 1800.00, 0.00, 0.00, 1, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(258, 1700.00, 1500.00, 0.00, 0.00, 2, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(259, 1700.00, 1500.00, 0.00, 0.00, 3, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(260, 1400.00, 1200.00, 0.00, 0.00, 4, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(261, 1700.00, 1500.00, 0.00, 0.00, 5, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(262, 1700.00, 1500.00, 0.00, 0.00, 6, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(263, 1700.00, 1500.00, 0.00, 0.00, 7, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(264, 1700.00, 1500.00, 0.00, 0.00, 8, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(265, 2000.00, 1800.00, 0.00, 0.00, 1, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(266, 1700.00, 1500.00, 0.00, 0.00, 2, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(267, 1700.00, 1500.00, 0.00, 0.00, 3, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(268, 1400.00, 1200.00, 0.00, 0.00, 4, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(269, 1700.00, 1500.00, 0.00, 0.00, 5, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(270, 1700.00, 1500.00, 0.00, 0.00, 6, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(271, 1700.00, 1500.00, 0.00, 0.00, 7, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(272, 1700.00, 1500.00, 0.00, 0.00, 8, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(273, 2000.00, 1800.00, 0.00, 0.00, 1, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(274, 1700.00, 1500.00, 0.00, 0.00, 2, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(275, 1700.00, 1500.00, 0.00, 0.00, 3, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(276, 1400.00, 1200.00, 0.00, 0.00, 4, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(277, 1700.00, 1500.00, 0.00, 0.00, 5, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(278, 1700.00, 1500.00, 0.00, 0.00, 6, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(279, 1700.00, 1500.00, 0.00, 0.00, 7, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(280, 1700.00, 1500.00, 0.00, 0.00, 8, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(281, 2000.00, 1800.00, 0.00, 0.00, 1, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(282, 1700.00, 1500.00, 0.00, 0.00, 2, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(283, 1700.00, 1500.00, 0.00, 0.00, 3, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(284, 1400.00, 1200.00, 0.00, 0.00, 4, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(285, 1700.00, 1500.00, 0.00, 0.00, 5, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(286, 1700.00, 1500.00, 0.00, 0.00, 6, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(287, 1700.00, 1500.00, 0.00, 0.00, 7, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(288, 1700.00, 1500.00, 0.00, 0.00, 8, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(289, 2000.00, 1800.00, 0.00, 0.00, 1, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(290, 1700.00, 1500.00, 0.00, 0.00, 2, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(291, 1700.00, 1500.00, 0.00, 0.00, 3, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(292, 1400.00, 1200.00, 0.00, 0.00, 4, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(293, 1700.00, 1500.00, 0.00, 0.00, 5, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(294, 1700.00, 1500.00, 0.00, 0.00, 6, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(295, 1700.00, 1500.00, 0.00, 0.00, 7, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(296, 1700.00, 1500.00, 0.00, 0.00, 8, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(297, 2000.00, 1800.00, 0.00, 0.00, 1, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(298, 1700.00, 1500.00, 0.00, 0.00, 2, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(299, 1700.00, 1500.00, 0.00, 0.00, 3, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(300, 1400.00, 1200.00, 0.00, 0.00, 4, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(301, 1700.00, 1500.00, 0.00, 0.00, 5, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(302, 1700.00, 1500.00, 0.00, 0.00, 6, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(303, 1700.00, 1500.00, 0.00, 0.00, 7, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(304, 1700.00, 1500.00, 0.00, 0.00, 8, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(305, 2000.00, 1800.00, 0.00, 0.00, 1, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(306, 1700.00, 1500.00, 0.00, 0.00, 2, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(307, 1700.00, 1500.00, 0.00, 0.00, 3, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(308, 1400.00, 1200.00, 0.00, 0.00, 4, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(309, 1700.00, 1500.00, 0.00, 0.00, 5, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(310, 1700.00, 1500.00, 0.00, 0.00, 6, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(311, 1700.00, 1500.00, 0.00, 0.00, 7, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(312, 1700.00, 1500.00, 0.00, 0.00, 8, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(313, 2000.00, 1800.00, 0.00, 0.00, 1, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(314, 1700.00, 1500.00, 0.00, 0.00, 2, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(315, 1700.00, 1500.00, 0.00, 0.00, 3, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(316, 1400.00, 1200.00, 0.00, 0.00, 4, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(317, 1700.00, 1500.00, 0.00, 0.00, 5, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(318, 1700.00, 1500.00, 0.00, 0.00, 6, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(319, 1700.00, 1500.00, 0.00, 0.00, 7, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(320, 1700.00, 1500.00, 0.00, 0.00, 8, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(321, 2000.00, 1800.00, 0.00, 0.00, 1, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(322, 1700.00, 1500.00, 0.00, 0.00, 2, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(323, 1700.00, 1500.00, 0.00, 0.00, 3, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(324, 1400.00, 1200.00, 0.00, 0.00, 4, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(325, 1700.00, 1500.00, 0.00, 0.00, 5, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(326, 1700.00, 1500.00, 0.00, 0.00, 6, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(327, 1700.00, 1500.00, 0.00, 0.00, 7, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(328, 1700.00, 1500.00, 0.00, 0.00, 8, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(329, 2000.00, 1800.00, 0.00, 0.00, 1, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(330, 1700.00, 1500.00, 0.00, 0.00, 2, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(331, 1700.00, 1500.00, 0.00, 0.00, 3, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(332, 1400.00, 1200.00, 0.00, 0.00, 4, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(333, 1700.00, 1500.00, 0.00, 0.00, 5, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(334, 1700.00, 1500.00, 0.00, 0.00, 6, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(335, 1700.00, 1500.00, 0.00, 0.00, 7, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(336, 1700.00, 1500.00, 0.00, 0.00, 8, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(337, 2000.00, 1800.00, 0.00, 0.00, 1, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(338, 1700.00, 1500.00, 0.00, 0.00, 2, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(339, 1700.00, 1500.00, 0.00, 0.00, 3, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(340, 1400.00, 1200.00, 0.00, 0.00, 4, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(341, 1700.00, 1500.00, 0.00, 0.00, 5, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(342, 1700.00, 1500.00, 0.00, 0.00, 6, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(343, 1700.00, 1500.00, 0.00, 0.00, 7, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(344, 1700.00, 1500.00, 0.00, 0.00, 8, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(345, 2000.00, 1800.00, 0.00, 0.00, 1, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(346, 1700.00, 1500.00, 0.00, 0.00, 2, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(347, 1700.00, 1500.00, 0.00, 0.00, 3, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(348, 1400.00, 1200.00, 0.00, 0.00, 4, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(349, 1700.00, 1500.00, 0.00, 0.00, 5, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(350, 1700.00, 1500.00, 0.00, 0.00, 6, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(351, 1700.00, 1500.00, 0.00, 0.00, 7, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(352, 1700.00, 1500.00, 0.00, 0.00, 8, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(353, 2000.00, 1800.00, 0.00, 0.00, 1, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(354, 1700.00, 1500.00, 0.00, 0.00, 2, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(355, 1700.00, 1500.00, 0.00, 0.00, 3, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(356, 1400.00, 1200.00, 0.00, 0.00, 4, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(357, 1700.00, 1500.00, 0.00, 0.00, 5, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(358, 1700.00, 1500.00, 0.00, 0.00, 6, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(359, 1700.00, 1500.00, 0.00, 0.00, 7, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(360, 1700.00, 1500.00, 0.00, 0.00, 8, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(361, 2000.00, 1800.00, 0.00, 0.00, 1, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(362, 1700.00, 1500.00, 0.00, 0.00, 2, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(363, 1700.00, 1500.00, 0.00, 0.00, 3, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(364, 1400.00, 1200.00, 0.00, 0.00, 4, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(365, 1700.00, 1500.00, 0.00, 0.00, 5, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(366, 1700.00, 1500.00, 0.00, 0.00, 6, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(367, 1700.00, 1500.00, 0.00, 0.00, 7, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(368, 1700.00, 1500.00, 0.00, 0.00, 8, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(369, 2000.00, 1800.00, 0.00, 0.00, 1, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(370, 1700.00, 1500.00, 0.00, 0.00, 2, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(371, 1700.00, 1500.00, 0.00, 0.00, 3, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(372, 1400.00, 1200.00, 0.00, 0.00, 4, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(373, 1700.00, 1500.00, 0.00, 0.00, 5, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(374, 1700.00, 1500.00, 0.00, 0.00, 6, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(375, 1700.00, 1500.00, 0.00, 0.00, 7, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(376, 1700.00, 1500.00, 0.00, 0.00, 8, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(377, 2000.00, 1800.00, 0.00, 0.00, 1, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(378, 1700.00, 1500.00, 0.00, 0.00, 2, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(379, 1700.00, 1500.00, 0.00, 0.00, 3, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(380, 1400.00, 1200.00, 0.00, 0.00, 4, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(381, 1700.00, 1500.00, 0.00, 0.00, 5, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(382, 1700.00, 1500.00, 0.00, 0.00, 6, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(383, 1700.00, 1500.00, 0.00, 0.00, 7, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(384, 1700.00, 1500.00, 0.00, 0.00, 8, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(385, 2000.00, 1800.00, 0.00, 0.00, 1, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(386, 1700.00, 1500.00, 0.00, 0.00, 2, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(387, 1700.00, 1500.00, 0.00, 0.00, 3, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(388, 1400.00, 1200.00, 0.00, 0.00, 4, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(389, 1700.00, 1500.00, 0.00, 0.00, 5, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(390, 1700.00, 1500.00, 0.00, 0.00, 6, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(391, 1700.00, 1500.00, 0.00, 0.00, 7, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(392, 1700.00, 1500.00, 0.00, 0.00, 8, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(393, 2000.00, 1800.00, 0.00, 0.00, 1, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(394, 1700.00, 1500.00, 0.00, 0.00, 2, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(395, 1700.00, 1500.00, 0.00, 0.00, 3, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(396, 1400.00, 1200.00, 0.00, 0.00, 4, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(397, 1700.00, 1500.00, 0.00, 0.00, 5, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(398, 1700.00, 1500.00, 0.00, 0.00, 6, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(399, 1700.00, 1500.00, 0.00, 0.00, 7, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(400, 1700.00, 1500.00, 0.00, 0.00, 8, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(401, 2000.00, 1800.00, 0.00, 0.00, 1, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(402, 1700.00, 1500.00, 0.00, 0.00, 2, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(403, 1700.00, 1500.00, 0.00, 0.00, 3, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(404, 1400.00, 1200.00, 0.00, 0.00, 4, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(405, 1700.00, 1500.00, 0.00, 0.00, 5, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(406, 1700.00, 1500.00, 0.00, 0.00, 6, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(407, 1700.00, 1500.00, 0.00, 0.00, 7, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(408, 1700.00, 1500.00, 0.00, 0.00, 8, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(409, 2000.00, 1800.00, 0.00, 0.00, 1, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(410, 1700.00, 1500.00, 0.00, 0.00, 2, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(411, 1700.00, 1500.00, 0.00, 0.00, 3, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(412, 1400.00, 1200.00, 0.00, 0.00, 4, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(413, 1700.00, 1500.00, 0.00, 0.00, 5, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(414, 1700.00, 1500.00, 0.00, 0.00, 6, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(415, 1700.00, 1500.00, 0.00, 0.00, 7, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(416, 1700.00, 1500.00, 0.00, 0.00, 8, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(417, 2000.00, 1800.00, 0.00, 0.00, 1, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(418, 1700.00, 1500.00, 0.00, 0.00, 2, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(419, 1700.00, 1500.00, 0.00, 0.00, 3, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(420, 1400.00, 1200.00, 0.00, 0.00, 4, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(421, 1700.00, 1500.00, 0.00, 0.00, 5, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(422, 1700.00, 1500.00, 0.00, 0.00, 6, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(423, 1700.00, 1500.00, 0.00, 0.00, 7, 1, 0, '2024-12-18 14:52:57', '2024-12-18 14:52:57'),
(424, 1700.00, 1500.00, 0.00, 0.00, 8, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(425, 2000.00, 1800.00, 0.00, 0.00, 1, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(426, 1700.00, 1500.00, 0.00, 0.00, 2, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(427, 1700.00, 1500.00, 0.00, 0.00, 3, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(428, 1400.00, 1200.00, 0.00, 0.00, 4, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(429, 1700.00, 1500.00, 0.00, 0.00, 5, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(430, 1700.00, 1500.00, 0.00, 0.00, 6, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(431, 1700.00, 1500.00, 0.00, 0.00, 7, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(432, 1700.00, 1500.00, 0.00, 0.00, 8, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(433, 2000.00, 1800.00, 0.00, 0.00, 1, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(434, 1700.00, 1500.00, 0.00, 0.00, 2, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(435, 1700.00, 1500.00, 0.00, 0.00, 3, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(436, 1400.00, 1200.00, 0.00, 0.00, 4, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(437, 1700.00, 1500.00, 0.00, 0.00, 5, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(438, 1700.00, 1500.00, 0.00, 0.00, 6, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(439, 1700.00, 1500.00, 0.00, 0.00, 7, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(440, 1700.00, 1500.00, 0.00, 0.00, 8, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(441, 2000.00, 1800.00, 0.00, 0.00, 1, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(442, 1700.00, 1500.00, 0.00, 0.00, 2, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(443, 1700.00, 1500.00, 0.00, 0.00, 3, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(444, 1400.00, 1200.00, 0.00, 0.00, 4, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(445, 1700.00, 1500.00, 0.00, 0.00, 5, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(446, 1700.00, 1500.00, 0.00, 0.00, 6, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(447, 1700.00, 1500.00, 0.00, 0.00, 7, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(448, 1700.00, 1500.00, 0.00, 0.00, 8, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(449, 2000.00, 1800.00, 0.00, 0.00, 1, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(450, 1700.00, 1500.00, 0.00, 0.00, 2, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(451, 1700.00, 1500.00, 0.00, 0.00, 3, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(452, 1400.00, 1200.00, 0.00, 0.00, 4, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(453, 1700.00, 1500.00, 0.00, 0.00, 5, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(454, 1700.00, 1500.00, 0.00, 0.00, 6, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(455, 1700.00, 1500.00, 0.00, 0.00, 7, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(456, 1700.00, 1500.00, 0.00, 0.00, 8, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(457, 2000.00, 1800.00, 0.00, 0.00, 1, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(458, 1700.00, 1500.00, 0.00, 0.00, 2, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(459, 1700.00, 1500.00, 0.00, 0.00, 3, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(460, 1400.00, 1200.00, 0.00, 0.00, 4, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(461, 1700.00, 1500.00, 0.00, 0.00, 5, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(462, 1700.00, 1500.00, 0.00, 0.00, 6, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(463, 1700.00, 1500.00, 0.00, 0.00, 7, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(464, 1700.00, 1500.00, 0.00, 0.00, 8, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(465, 2000.00, 1800.00, 0.00, 0.00, 1, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(466, 1700.00, 1500.00, 0.00, 0.00, 2, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(467, 1700.00, 1500.00, 0.00, 0.00, 3, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(468, 1400.00, 1200.00, 0.00, 0.00, 4, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(469, 1700.00, 1500.00, 0.00, 0.00, 5, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(470, 1700.00, 1500.00, 0.00, 0.00, 6, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(471, 1700.00, 1500.00, 0.00, 0.00, 7, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(472, 1700.00, 1500.00, 0.00, 0.00, 8, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(473, 2000.00, 1800.00, 0.00, 0.00, 1, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(474, 1700.00, 1500.00, 0.00, 0.00, 2, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(475, 1700.00, 1500.00, 0.00, 0.00, 3, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(476, 1400.00, 1200.00, 0.00, 0.00, 4, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(477, 1700.00, 1500.00, 0.00, 0.00, 5, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(478, 1700.00, 1500.00, 0.00, 0.00, 6, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(479, 1700.00, 1500.00, 0.00, 0.00, 7, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(480, 1700.00, 1500.00, 0.00, 0.00, 8, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(481, 2000.00, 1800.00, 0.00, 0.00, 1, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(482, 1700.00, 1500.00, 0.00, 0.00, 2, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(483, 1700.00, 1500.00, 0.00, 0.00, 3, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(484, 1400.00, 1200.00, 0.00, 0.00, 4, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(485, 1700.00, 1500.00, 0.00, 0.00, 5, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(486, 1700.00, 1500.00, 0.00, 0.00, 6, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(487, 1700.00, 1500.00, 0.00, 0.00, 7, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(488, 1700.00, 1500.00, 0.00, 0.00, 8, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(489, 2000.00, 1800.00, 0.00, 0.00, 1, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(490, 1700.00, 1500.00, 0.00, 0.00, 2, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(491, 1700.00, 1500.00, 0.00, 0.00, 3, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(492, 1400.00, 1200.00, 0.00, 0.00, 4, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(493, 1700.00, 1500.00, 0.00, 0.00, 5, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(494, 1700.00, 1500.00, 0.00, 0.00, 6, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(495, 1700.00, 1500.00, 0.00, 0.00, 7, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(496, 1700.00, 1500.00, 0.00, 0.00, 8, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(497, 2000.00, 1800.00, 0.00, 0.00, 1, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(498, 1700.00, 1500.00, 0.00, 0.00, 2, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(499, 1700.00, 1500.00, 0.00, 0.00, 3, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(500, 1400.00, 1200.00, 0.00, 0.00, 4, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(501, 1700.00, 1500.00, 0.00, 0.00, 5, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(502, 1700.00, 1500.00, 0.00, 0.00, 6, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(503, 1700.00, 1500.00, 0.00, 0.00, 7, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(504, 1700.00, 1500.00, 0.00, 0.00, 8, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(505, 2000.00, 1800.00, 0.00, 0.00, 1, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(506, 1700.00, 1500.00, 0.00, 0.00, 2, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(507, 1700.00, 1500.00, 0.00, 0.00, 3, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(508, 1400.00, 1200.00, 0.00, 0.00, 4, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(509, 1700.00, 1500.00, 0.00, 0.00, 5, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(510, 1700.00, 1500.00, 0.00, 0.00, 6, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(511, 1700.00, 1500.00, 0.00, 0.00, 7, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(512, 1700.00, 1500.00, 0.00, 0.00, 8, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(513, 2000.00, 1800.00, 0.00, 0.00, 1, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(514, 1700.00, 1500.00, 0.00, 0.00, 2, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(515, 1700.00, 1500.00, 0.00, 0.00, 3, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(516, 1400.00, 1200.00, 0.00, 0.00, 4, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(517, 1700.00, 1500.00, 0.00, 0.00, 5, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(518, 1700.00, 1500.00, 0.00, 0.00, 6, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(519, 1700.00, 1500.00, 0.00, 0.00, 7, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(520, 1700.00, 1500.00, 0.00, 0.00, 8, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(521, 2000.00, 1800.00, 0.00, 0.00, 1, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(522, 1700.00, 1500.00, 0.00, 0.00, 2, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(523, 1700.00, 1500.00, 0.00, 0.00, 3, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(524, 1400.00, 1200.00, 0.00, 0.00, 4, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(525, 1700.00, 1500.00, 0.00, 0.00, 5, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(526, 1700.00, 1500.00, 0.00, 0.00, 6, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(527, 1700.00, 1500.00, 0.00, 0.00, 7, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(528, 1700.00, 1500.00, 0.00, 0.00, 8, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(529, 2000.00, 1800.00, 0.00, 0.00, 1, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(530, 1700.00, 1500.00, 0.00, 0.00, 2, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(531, 1700.00, 1500.00, 0.00, 0.00, 3, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(532, 1400.00, 1200.00, 0.00, 0.00, 4, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(533, 1700.00, 1500.00, 0.00, 0.00, 5, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(534, 1700.00, 1500.00, 0.00, 0.00, 6, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(535, 1700.00, 1500.00, 0.00, 0.00, 7, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(536, 1700.00, 1500.00, 0.00, 0.00, 8, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(537, 2000.00, 1800.00, 0.00, 0.00, 1, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(538, 1700.00, 1500.00, 0.00, 0.00, 2, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(539, 1700.00, 1500.00, 0.00, 0.00, 3, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(540, 1400.00, 1200.00, 0.00, 0.00, 4, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(541, 1700.00, 1500.00, 0.00, 0.00, 5, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(542, 1700.00, 1500.00, 0.00, 0.00, 6, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(543, 1700.00, 1500.00, 0.00, 0.00, 7, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(544, 1700.00, 1500.00, 0.00, 0.00, 8, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(545, 2000.00, 1800.00, 0.00, 0.00, 1, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(546, 1700.00, 1500.00, 0.00, 0.00, 2, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(547, 1700.00, 1500.00, 0.00, 0.00, 3, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(548, 1400.00, 1200.00, 0.00, 0.00, 4, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(549, 1700.00, 1500.00, 0.00, 0.00, 5, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(550, 1700.00, 1500.00, 0.00, 0.00, 6, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(551, 1700.00, 1500.00, 0.00, 0.00, 7, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(552, 1700.00, 1500.00, 0.00, 0.00, 8, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(553, 2000.00, 1800.00, 0.00, 0.00, 1, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(554, 1700.00, 1500.00, 0.00, 0.00, 2, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58');
INSERT INTO `product_rates` (`id`, `rate_adult`, `rate_child`, `rate_infant`, `rate_private`, `product_period_id`, `is_approved`, `is_deleted`, `created_at`, `updated_at`) VALUES
(555, 1700.00, 1500.00, 0.00, 0.00, 3, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(556, 1400.00, 1200.00, 0.00, 0.00, 4, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(557, 1700.00, 1500.00, 0.00, 0.00, 5, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(558, 1700.00, 1500.00, 0.00, 0.00, 6, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(559, 1700.00, 1500.00, 0.00, 0.00, 7, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(560, 1700.00, 1500.00, 0.00, 0.00, 8, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(561, 2000.00, 1800.00, 0.00, 0.00, 1, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(562, 1700.00, 1500.00, 0.00, 0.00, 2, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(563, 1700.00, 1500.00, 0.00, 0.00, 3, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(564, 1400.00, 1200.00, 0.00, 0.00, 4, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(565, 1700.00, 1500.00, 0.00, 0.00, 5, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(566, 1700.00, 1500.00, 0.00, 0.00, 6, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(567, 1700.00, 1500.00, 0.00, 0.00, 7, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(568, 1700.00, 1500.00, 0.00, 0.00, 8, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(569, 2000.00, 1800.00, 0.00, 0.00, 1, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(570, 1700.00, 1500.00, 0.00, 0.00, 2, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(571, 1700.00, 1500.00, 0.00, 0.00, 3, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(572, 1400.00, 1200.00, 0.00, 0.00, 4, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(573, 1700.00, 1500.00, 0.00, 0.00, 5, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(574, 1700.00, 1500.00, 0.00, 0.00, 6, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(575, 1700.00, 1500.00, 0.00, 0.00, 7, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(576, 1700.00, 1500.00, 0.00, 0.00, 8, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(577, 2000.00, 1800.00, 0.00, 0.00, 1, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(578, 1700.00, 1500.00, 0.00, 0.00, 2, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(579, 1700.00, 1500.00, 0.00, 0.00, 3, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(580, 1400.00, 1200.00, 0.00, 0.00, 4, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(581, 1700.00, 1500.00, 0.00, 0.00, 5, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(582, 1700.00, 1500.00, 0.00, 0.00, 6, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(583, 1700.00, 1500.00, 0.00, 0.00, 7, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(584, 1700.00, 1500.00, 0.00, 0.00, 8, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(585, 2000.00, 1800.00, 0.00, 0.00, 1, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(586, 1700.00, 1500.00, 0.00, 0.00, 2, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(587, 1700.00, 1500.00, 0.00, 0.00, 3, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(588, 1400.00, 1200.00, 0.00, 0.00, 4, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(589, 1700.00, 1500.00, 0.00, 0.00, 5, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(590, 1700.00, 1500.00, 0.00, 0.00, 6, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(591, 1700.00, 1500.00, 0.00, 0.00, 7, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(592, 1700.00, 1500.00, 0.00, 0.00, 8, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(593, 2000.00, 1800.00, 0.00, 0.00, 1, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(594, 1700.00, 1500.00, 0.00, 0.00, 2, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(595, 1700.00, 1500.00, 0.00, 0.00, 3, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(596, 1400.00, 1200.00, 0.00, 0.00, 4, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(597, 1700.00, 1500.00, 0.00, 0.00, 5, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(598, 1700.00, 1500.00, 0.00, 0.00, 6, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(599, 1700.00, 1500.00, 0.00, 0.00, 7, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(600, 1700.00, 1500.00, 0.00, 0.00, 8, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(601, 2000.00, 1800.00, 0.00, 0.00, 1, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(602, 1700.00, 1500.00, 0.00, 0.00, 2, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(603, 1700.00, 1500.00, 0.00, 0.00, 3, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(604, 1400.00, 1200.00, 0.00, 0.00, 4, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(605, 1700.00, 1500.00, 0.00, 0.00, 5, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(606, 1700.00, 1500.00, 0.00, 0.00, 6, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(607, 1700.00, 1500.00, 0.00, 0.00, 7, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(608, 1700.00, 1500.00, 0.00, 0.00, 8, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(609, 2000.00, 1800.00, 0.00, 0.00, 1, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(610, 1700.00, 1500.00, 0.00, 0.00, 2, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(611, 1700.00, 1500.00, 0.00, 0.00, 3, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(612, 1400.00, 1200.00, 0.00, 0.00, 4, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(613, 1700.00, 1500.00, 0.00, 0.00, 5, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(614, 1700.00, 1500.00, 0.00, 0.00, 6, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(615, 1700.00, 1500.00, 0.00, 0.00, 7, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(616, 1700.00, 1500.00, 0.00, 0.00, 8, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(617, 2000.00, 1800.00, 0.00, 0.00, 1, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(618, 1700.00, 1500.00, 0.00, 0.00, 2, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(619, 1700.00, 1500.00, 0.00, 0.00, 3, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(620, 1400.00, 1200.00, 0.00, 0.00, 4, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(621, 1700.00, 1500.00, 0.00, 0.00, 5, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(622, 1700.00, 1500.00, 0.00, 0.00, 6, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(623, 1700.00, 1500.00, 0.00, 0.00, 7, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(624, 1700.00, 1500.00, 0.00, 0.00, 8, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(625, 2000.00, 1800.00, 0.00, 0.00, 1, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(626, 1700.00, 1500.00, 0.00, 0.00, 2, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(627, 1700.00, 1500.00, 0.00, 0.00, 3, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(628, 1400.00, 1200.00, 0.00, 0.00, 4, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(629, 1700.00, 1500.00, 0.00, 0.00, 5, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(630, 1700.00, 1500.00, 0.00, 0.00, 6, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(631, 1700.00, 1500.00, 0.00, 0.00, 7, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(632, 1700.00, 1500.00, 0.00, 0.00, 8, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(633, 2000.00, 1800.00, 0.00, 0.00, 1, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(634, 1700.00, 1500.00, 0.00, 0.00, 2, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(635, 1700.00, 1500.00, 0.00, 0.00, 3, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(636, 1400.00, 1200.00, 0.00, 0.00, 4, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(637, 1700.00, 1500.00, 0.00, 0.00, 5, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(638, 1700.00, 1500.00, 0.00, 0.00, 6, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(639, 1700.00, 1500.00, 0.00, 0.00, 7, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(640, 1700.00, 1500.00, 0.00, 0.00, 8, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(641, 2000.00, 1800.00, 0.00, 0.00, 1, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(642, 1700.00, 1500.00, 0.00, 0.00, 2, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(643, 1700.00, 1500.00, 0.00, 0.00, 3, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(644, 1400.00, 1200.00, 0.00, 0.00, 4, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(645, 1700.00, 1500.00, 0.00, 0.00, 5, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(646, 1700.00, 1500.00, 0.00, 0.00, 6, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(647, 1700.00, 1500.00, 0.00, 0.00, 7, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(648, 1700.00, 1500.00, 0.00, 0.00, 8, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(649, 2000.00, 1800.00, 0.00, 0.00, 1, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(650, 1700.00, 1500.00, 0.00, 0.00, 2, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(651, 1700.00, 1500.00, 0.00, 0.00, 3, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(652, 1400.00, 1200.00, 0.00, 0.00, 4, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(653, 1700.00, 1500.00, 0.00, 0.00, 5, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(654, 1700.00, 1500.00, 0.00, 0.00, 6, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(655, 1700.00, 1500.00, 0.00, 0.00, 7, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(656, 1700.00, 1500.00, 0.00, 0.00, 8, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(657, 2000.00, 1800.00, 0.00, 0.00, 1, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(658, 1700.00, 1500.00, 0.00, 0.00, 2, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(659, 1700.00, 1500.00, 0.00, 0.00, 3, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(660, 1400.00, 1200.00, 0.00, 0.00, 4, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(661, 1700.00, 1500.00, 0.00, 0.00, 5, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(662, 1700.00, 1500.00, 0.00, 0.00, 6, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(663, 1700.00, 1500.00, 0.00, 0.00, 7, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(664, 1700.00, 1500.00, 0.00, 0.00, 8, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(665, 2000.00, 1800.00, 0.00, 0.00, 1, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(666, 1700.00, 1500.00, 0.00, 0.00, 2, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(667, 1700.00, 1500.00, 0.00, 0.00, 3, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(668, 1400.00, 1200.00, 0.00, 0.00, 4, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(669, 1700.00, 1500.00, 0.00, 0.00, 5, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(670, 1700.00, 1500.00, 0.00, 0.00, 6, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(671, 1700.00, 1500.00, 0.00, 0.00, 7, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(672, 1700.00, 1500.00, 0.00, 0.00, 8, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(673, 2000.00, 1800.00, 0.00, 0.00, 1, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(674, 1700.00, 1500.00, 0.00, 0.00, 2, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(675, 1700.00, 1500.00, 0.00, 0.00, 3, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(676, 1400.00, 1200.00, 0.00, 0.00, 4, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(677, 1700.00, 1500.00, 0.00, 0.00, 5, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(678, 1700.00, 1500.00, 0.00, 0.00, 6, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(679, 1700.00, 1500.00, 0.00, 0.00, 7, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(680, 1700.00, 1500.00, 0.00, 0.00, 8, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(681, 2000.00, 1800.00, 0.00, 0.00, 1, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(682, 1700.00, 1500.00, 0.00, 0.00, 2, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(683, 1700.00, 1500.00, 0.00, 0.00, 3, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(684, 1400.00, 1200.00, 0.00, 0.00, 4, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(685, 1700.00, 1500.00, 0.00, 0.00, 5, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(686, 1700.00, 1500.00, 0.00, 0.00, 6, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(687, 1700.00, 1500.00, 0.00, 0.00, 7, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(688, 1700.00, 1500.00, 0.00, 0.00, 8, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(689, 2000.00, 1800.00, 0.00, 0.00, 1, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(690, 1700.00, 1500.00, 0.00, 0.00, 2, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(691, 1700.00, 1500.00, 0.00, 0.00, 3, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(692, 1400.00, 1200.00, 0.00, 0.00, 4, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(693, 1700.00, 1500.00, 0.00, 0.00, 5, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(694, 1700.00, 1500.00, 0.00, 0.00, 6, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(695, 1700.00, 1500.00, 0.00, 0.00, 7, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(696, 1700.00, 1500.00, 0.00, 0.00, 8, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(697, 2000.00, 1800.00, 0.00, 0.00, 1, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(698, 1700.00, 1500.00, 0.00, 0.00, 2, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(699, 1700.00, 1500.00, 0.00, 0.00, 3, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(700, 1400.00, 1200.00, 0.00, 0.00, 4, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(701, 1700.00, 1500.00, 0.00, 0.00, 5, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(702, 1700.00, 1500.00, 0.00, 0.00, 6, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(703, 1700.00, 1500.00, 0.00, 0.00, 7, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(704, 1700.00, 1500.00, 0.00, 0.00, 8, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(705, 2000.00, 1800.00, 0.00, 0.00, 1, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(706, 1700.00, 1500.00, 0.00, 0.00, 2, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(707, 1700.00, 1500.00, 0.00, 0.00, 3, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(708, 1400.00, 1200.00, 0.00, 0.00, 4, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(709, 1700.00, 1500.00, 0.00, 0.00, 5, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(710, 1700.00, 1500.00, 0.00, 0.00, 6, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(711, 1700.00, 1500.00, 0.00, 0.00, 7, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(712, 1700.00, 1500.00, 0.00, 0.00, 8, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(713, 2000.00, 1800.00, 0.00, 0.00, 1, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(714, 1700.00, 1500.00, 0.00, 0.00, 2, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(715, 1700.00, 1500.00, 0.00, 0.00, 3, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(716, 1400.00, 1200.00, 0.00, 0.00, 4, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(717, 1700.00, 1500.00, 0.00, 0.00, 5, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(718, 1700.00, 1500.00, 0.00, 0.00, 6, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(719, 1700.00, 1500.00, 0.00, 0.00, 7, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(720, 1700.00, 1500.00, 0.00, 0.00, 8, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(721, 2000.00, 1800.00, 0.00, 0.00, 1, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(722, 1700.00, 1500.00, 0.00, 0.00, 2, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(723, 1700.00, 1500.00, 0.00, 0.00, 3, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(724, 1400.00, 1200.00, 0.00, 0.00, 4, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(725, 1700.00, 1500.00, 0.00, 0.00, 5, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(726, 1700.00, 1500.00, 0.00, 0.00, 6, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(727, 1700.00, 1500.00, 0.00, 0.00, 7, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(728, 1700.00, 1500.00, 0.00, 0.00, 8, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(729, 2000.00, 1800.00, 0.00, 0.00, 1, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(730, 1700.00, 1500.00, 0.00, 0.00, 2, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(731, 1700.00, 1500.00, 0.00, 0.00, 3, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(732, 1400.00, 1200.00, 0.00, 0.00, 4, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(733, 1700.00, 1500.00, 0.00, 0.00, 5, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(734, 1700.00, 1500.00, 0.00, 0.00, 6, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(735, 1700.00, 1500.00, 0.00, 0.00, 7, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(736, 1700.00, 1500.00, 0.00, 0.00, 8, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(737, 2000.00, 1800.00, 0.00, 0.00, 1, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(738, 1700.00, 1500.00, 0.00, 0.00, 2, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(739, 1700.00, 1500.00, 0.00, 0.00, 3, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(740, 1400.00, 1200.00, 0.00, 0.00, 4, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(741, 1700.00, 1500.00, 0.00, 0.00, 5, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(742, 1700.00, 1500.00, 0.00, 0.00, 6, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(743, 1700.00, 1500.00, 0.00, 0.00, 7, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(744, 1700.00, 1500.00, 0.00, 0.00, 8, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(745, 2000.00, 1800.00, 0.00, 0.00, 1, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(746, 1700.00, 1500.00, 0.00, 0.00, 2, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(747, 1700.00, 1500.00, 0.00, 0.00, 3, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(748, 1400.00, 1200.00, 0.00, 0.00, 4, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(749, 1700.00, 1500.00, 0.00, 0.00, 5, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(750, 1700.00, 1500.00, 0.00, 0.00, 6, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(751, 1700.00, 1500.00, 0.00, 0.00, 7, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(752, 1700.00, 1500.00, 0.00, 0.00, 8, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(753, 2000.00, 1800.00, 0.00, 0.00, 1, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(754, 1700.00, 1500.00, 0.00, 0.00, 2, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(755, 1700.00, 1500.00, 0.00, 0.00, 3, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(756, 1400.00, 1200.00, 0.00, 0.00, 4, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(757, 1700.00, 1500.00, 0.00, 0.00, 5, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(758, 1700.00, 1500.00, 0.00, 0.00, 6, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(759, 1700.00, 1500.00, 0.00, 0.00, 7, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(760, 1700.00, 1500.00, 0.00, 0.00, 8, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(761, 2000.00, 1800.00, 0.00, 0.00, 1, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(762, 1700.00, 1500.00, 0.00, 0.00, 2, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(763, 1700.00, 1500.00, 0.00, 0.00, 3, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(764, 1400.00, 1200.00, 0.00, 0.00, 4, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(765, 1700.00, 1500.00, 0.00, 0.00, 5, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(766, 1700.00, 1500.00, 0.00, 0.00, 6, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(767, 1700.00, 1500.00, 0.00, 0.00, 7, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(768, 1700.00, 1500.00, 0.00, 0.00, 8, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(769, 2000.00, 1800.00, 0.00, 0.00, 1, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(770, 1700.00, 1500.00, 0.00, 0.00, 2, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(771, 1700.00, 1500.00, 0.00, 0.00, 3, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(772, 1400.00, 1200.00, 0.00, 0.00, 4, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(773, 1700.00, 1500.00, 0.00, 0.00, 5, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(774, 1700.00, 1500.00, 0.00, 0.00, 6, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(775, 1700.00, 1500.00, 0.00, 0.00, 7, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(776, 1700.00, 1500.00, 0.00, 0.00, 8, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(777, 2000.00, 1800.00, 0.00, 0.00, 1, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(778, 1700.00, 1500.00, 0.00, 0.00, 2, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(779, 1700.00, 1500.00, 0.00, 0.00, 3, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(780, 1400.00, 1200.00, 0.00, 0.00, 4, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(781, 1700.00, 1500.00, 0.00, 0.00, 5, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(782, 1700.00, 1500.00, 0.00, 0.00, 6, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(783, 1700.00, 1500.00, 0.00, 0.00, 7, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(784, 1700.00, 1500.00, 0.00, 0.00, 8, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(785, 2000.00, 1800.00, 0.00, 0.00, 1, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(786, 1700.00, 1500.00, 0.00, 0.00, 2, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(787, 1700.00, 1500.00, 0.00, 0.00, 3, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(788, 1400.00, 1200.00, 0.00, 0.00, 4, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(789, 1700.00, 1500.00, 0.00, 0.00, 5, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(790, 1700.00, 1500.00, 0.00, 0.00, 6, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(791, 1700.00, 1500.00, 0.00, 0.00, 7, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(792, 1700.00, 1500.00, 0.00, 0.00, 8, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(793, 2000.00, 1800.00, 0.00, 0.00, 1, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(794, 1700.00, 1500.00, 0.00, 0.00, 2, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(795, 1700.00, 1500.00, 0.00, 0.00, 3, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(796, 1400.00, 1200.00, 0.00, 0.00, 4, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(797, 1700.00, 1500.00, 0.00, 0.00, 5, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(798, 1700.00, 1500.00, 0.00, 0.00, 6, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(799, 1700.00, 1500.00, 0.00, 0.00, 7, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(800, 1700.00, 1500.00, 0.00, 0.00, 8, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(801, 2000.00, 1800.00, 0.00, 0.00, 1, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(802, 1700.00, 1500.00, 0.00, 0.00, 2, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(803, 1700.00, 1500.00, 0.00, 0.00, 3, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(804, 1400.00, 1200.00, 0.00, 0.00, 4, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(805, 1700.00, 1500.00, 0.00, 0.00, 5, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(806, 1700.00, 1500.00, 0.00, 0.00, 6, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(807, 1700.00, 1500.00, 0.00, 0.00, 7, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(808, 1700.00, 1500.00, 0.00, 0.00, 8, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(809, 2000.00, 1800.00, 0.00, 0.00, 1, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(810, 1700.00, 1500.00, 0.00, 0.00, 2, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(811, 1700.00, 1500.00, 0.00, 0.00, 3, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(812, 1400.00, 1200.00, 0.00, 0.00, 4, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(813, 1700.00, 1500.00, 0.00, 0.00, 5, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(814, 1700.00, 1500.00, 0.00, 0.00, 6, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(815, 1700.00, 1500.00, 0.00, 0.00, 7, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(816, 1700.00, 1500.00, 0.00, 0.00, 8, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(817, 2000.00, 1800.00, 0.00, 0.00, 1, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(818, 1700.00, 1500.00, 0.00, 0.00, 2, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(819, 1700.00, 1500.00, 0.00, 0.00, 3, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(820, 1400.00, 1200.00, 0.00, 0.00, 4, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(821, 1700.00, 1500.00, 0.00, 0.00, 5, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(822, 1700.00, 1500.00, 0.00, 0.00, 6, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(823, 1700.00, 1500.00, 0.00, 0.00, 7, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(824, 1700.00, 1500.00, 0.00, 0.00, 8, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(825, 2000.00, 1800.00, 0.00, 0.00, 1, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(826, 1700.00, 1500.00, 0.00, 0.00, 2, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(827, 1700.00, 1500.00, 0.00, 0.00, 3, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(828, 1400.00, 1200.00, 0.00, 0.00, 4, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(829, 1700.00, 1500.00, 0.00, 0.00, 5, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(830, 1700.00, 1500.00, 0.00, 0.00, 6, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(831, 1700.00, 1500.00, 0.00, 0.00, 7, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(832, 1700.00, 1500.00, 0.00, 0.00, 8, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(833, 2000.00, 1800.00, 0.00, 0.00, 1, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(834, 1700.00, 1500.00, 0.00, 0.00, 2, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(835, 1700.00, 1500.00, 0.00, 0.00, 3, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(836, 1400.00, 1200.00, 0.00, 0.00, 4, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(837, 1700.00, 1500.00, 0.00, 0.00, 5, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(838, 1700.00, 1500.00, 0.00, 0.00, 6, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(839, 1700.00, 1500.00, 0.00, 0.00, 7, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(840, 1700.00, 1500.00, 0.00, 0.00, 8, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(841, 2000.00, 1800.00, 0.00, 0.00, 1, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(842, 1700.00, 1500.00, 0.00, 0.00, 2, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(843, 1700.00, 1500.00, 0.00, 0.00, 3, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(844, 1400.00, 1200.00, 0.00, 0.00, 4, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(845, 1700.00, 1500.00, 0.00, 0.00, 5, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(846, 1700.00, 1500.00, 0.00, 0.00, 6, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(847, 1700.00, 1500.00, 0.00, 0.00, 7, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(848, 1700.00, 1500.00, 0.00, 0.00, 8, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(849, 2000.00, 1800.00, 0.00, 0.00, 1, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(850, 1700.00, 1500.00, 0.00, 0.00, 2, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(851, 1700.00, 1500.00, 0.00, 0.00, 3, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(852, 1400.00, 1200.00, 0.00, 0.00, 4, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(853, 1700.00, 1500.00, 0.00, 0.00, 5, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(854, 1700.00, 1500.00, 0.00, 0.00, 6, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(855, 1700.00, 1500.00, 0.00, 0.00, 7, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(856, 1700.00, 1500.00, 0.00, 0.00, 8, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(857, 2000.00, 1800.00, 0.00, 0.00, 1, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(858, 1700.00, 1500.00, 0.00, 0.00, 2, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(859, 1700.00, 1500.00, 0.00, 0.00, 3, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(860, 1400.00, 1200.00, 0.00, 0.00, 4, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(861, 1700.00, 1500.00, 0.00, 0.00, 5, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(862, 1700.00, 1500.00, 0.00, 0.00, 6, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(863, 1700.00, 1500.00, 0.00, 0.00, 7, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(864, 1700.00, 1500.00, 0.00, 0.00, 8, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(865, 2000.00, 1800.00, 0.00, 0.00, 1, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(866, 1700.00, 1500.00, 0.00, 0.00, 2, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(867, 1700.00, 1500.00, 0.00, 0.00, 3, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(868, 1400.00, 1200.00, 0.00, 0.00, 4, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(869, 1700.00, 1500.00, 0.00, 0.00, 5, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(870, 1700.00, 1500.00, 0.00, 0.00, 6, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(871, 1700.00, 1500.00, 0.00, 0.00, 7, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(872, 1700.00, 1500.00, 0.00, 0.00, 8, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(873, 2000.00, 1800.00, 0.00, 0.00, 1, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(874, 1700.00, 1500.00, 0.00, 0.00, 2, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(875, 1700.00, 1500.00, 0.00, 0.00, 3, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(876, 1400.00, 1200.00, 0.00, 0.00, 4, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(877, 1700.00, 1500.00, 0.00, 0.00, 5, 1, 0, '2024-12-18 14:52:58', '2024-12-18 14:52:58'),
(878, 1700.00, 1500.00, 0.00, 0.00, 6, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(879, 1700.00, 1500.00, 0.00, 0.00, 7, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(880, 1700.00, 1500.00, 0.00, 0.00, 8, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(881, 2000.00, 1800.00, 0.00, 0.00, 1, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(882, 1700.00, 1500.00, 0.00, 0.00, 2, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(883, 1700.00, 1500.00, 0.00, 0.00, 3, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(884, 1400.00, 1200.00, 0.00, 0.00, 4, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(885, 1700.00, 1500.00, 0.00, 0.00, 5, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(886, 1700.00, 1500.00, 0.00, 0.00, 6, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(887, 1700.00, 1500.00, 0.00, 0.00, 7, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(888, 1700.00, 1500.00, 0.00, 0.00, 8, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(889, 2000.00, 1800.00, 0.00, 0.00, 1, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(890, 1700.00, 1500.00, 0.00, 0.00, 2, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(891, 1700.00, 1500.00, 0.00, 0.00, 3, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(892, 1400.00, 1200.00, 0.00, 0.00, 4, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(893, 1700.00, 1500.00, 0.00, 0.00, 5, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(894, 1700.00, 1500.00, 0.00, 0.00, 6, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(895, 1700.00, 1500.00, 0.00, 0.00, 7, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(896, 1700.00, 1500.00, 0.00, 0.00, 8, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(897, 2000.00, 1800.00, 0.00, 0.00, 1, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(898, 1700.00, 1500.00, 0.00, 0.00, 2, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(899, 1700.00, 1500.00, 0.00, 0.00, 3, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(900, 1400.00, 1200.00, 0.00, 0.00, 4, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(901, 1700.00, 1500.00, 0.00, 0.00, 5, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(902, 1700.00, 1500.00, 0.00, 0.00, 6, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(903, 1700.00, 1500.00, 0.00, 0.00, 7, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(904, 1700.00, 1500.00, 0.00, 0.00, 8, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(905, 2000.00, 1800.00, 0.00, 0.00, 1, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(906, 1700.00, 1500.00, 0.00, 0.00, 2, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(907, 1700.00, 1500.00, 0.00, 0.00, 3, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(908, 1400.00, 1200.00, 0.00, 0.00, 4, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(909, 1700.00, 1500.00, 0.00, 0.00, 5, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(910, 1700.00, 1500.00, 0.00, 0.00, 6, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(911, 1700.00, 1500.00, 0.00, 0.00, 7, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(912, 1700.00, 1500.00, 0.00, 0.00, 8, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(913, 2000.00, 1800.00, 0.00, 0.00, 1, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(914, 1700.00, 1500.00, 0.00, 0.00, 2, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(915, 1700.00, 1500.00, 0.00, 0.00, 3, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(916, 1400.00, 1200.00, 0.00, 0.00, 4, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(917, 1700.00, 1500.00, 0.00, 0.00, 5, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(918, 1700.00, 1500.00, 0.00, 0.00, 6, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(919, 1700.00, 1500.00, 0.00, 0.00, 7, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(920, 1700.00, 1500.00, 0.00, 0.00, 8, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(921, 2000.00, 1800.00, 0.00, 0.00, 1, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(922, 1700.00, 1500.00, 0.00, 0.00, 2, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(923, 1700.00, 1500.00, 0.00, 0.00, 3, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(924, 1400.00, 1200.00, 0.00, 0.00, 4, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(925, 1700.00, 1500.00, 0.00, 0.00, 5, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(926, 1700.00, 1500.00, 0.00, 0.00, 6, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(927, 1700.00, 1500.00, 0.00, 0.00, 7, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(928, 1700.00, 1500.00, 0.00, 0.00, 8, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(929, 2000.00, 1800.00, 0.00, 0.00, 1, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(930, 1700.00, 1500.00, 0.00, 0.00, 2, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(931, 1700.00, 1500.00, 0.00, 0.00, 3, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(932, 1400.00, 1200.00, 0.00, 0.00, 4, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(933, 1700.00, 1500.00, 0.00, 0.00, 5, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(934, 1700.00, 1500.00, 0.00, 0.00, 6, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(935, 1700.00, 1500.00, 0.00, 0.00, 7, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(936, 1700.00, 1500.00, 0.00, 0.00, 8, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(937, 2000.00, 1800.00, 0.00, 0.00, 1, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(938, 1700.00, 1500.00, 0.00, 0.00, 2, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(939, 1700.00, 1500.00, 0.00, 0.00, 3, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(940, 1400.00, 1200.00, 0.00, 0.00, 4, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(941, 1700.00, 1500.00, 0.00, 0.00, 5, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(942, 1700.00, 1500.00, 0.00, 0.00, 6, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(943, 1700.00, 1500.00, 0.00, 0.00, 7, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(944, 1700.00, 1500.00, 0.00, 0.00, 8, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(945, 2000.00, 1800.00, 0.00, 0.00, 1, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(946, 1700.00, 1500.00, 0.00, 0.00, 2, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(947, 1700.00, 1500.00, 0.00, 0.00, 3, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(948, 1400.00, 1200.00, 0.00, 0.00, 4, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(949, 1700.00, 1500.00, 0.00, 0.00, 5, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(950, 1700.00, 1500.00, 0.00, 0.00, 6, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(951, 1700.00, 1500.00, 0.00, 0.00, 7, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(952, 1700.00, 1500.00, 0.00, 0.00, 8, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(953, 2000.00, 1800.00, 0.00, 0.00, 1, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(954, 1700.00, 1500.00, 0.00, 0.00, 2, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(955, 1700.00, 1500.00, 0.00, 0.00, 3, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(956, 1400.00, 1200.00, 0.00, 0.00, 4, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(957, 1700.00, 1500.00, 0.00, 0.00, 5, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(958, 1700.00, 1500.00, 0.00, 0.00, 6, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(959, 1700.00, 1500.00, 0.00, 0.00, 7, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(960, 1700.00, 1500.00, 0.00, 0.00, 8, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(961, 2000.00, 1800.00, 0.00, 0.00, 1, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(962, 1700.00, 1500.00, 0.00, 0.00, 2, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(963, 1700.00, 1500.00, 0.00, 0.00, 3, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(964, 1400.00, 1200.00, 0.00, 0.00, 4, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(965, 1700.00, 1500.00, 0.00, 0.00, 5, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(966, 1700.00, 1500.00, 0.00, 0.00, 6, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(967, 1700.00, 1500.00, 0.00, 0.00, 7, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(968, 1700.00, 1500.00, 0.00, 0.00, 8, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(969, 2000.00, 1800.00, 0.00, 0.00, 1, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(970, 1700.00, 1500.00, 0.00, 0.00, 2, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(971, 1700.00, 1500.00, 0.00, 0.00, 3, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(972, 1400.00, 1200.00, 0.00, 0.00, 4, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(973, 1700.00, 1500.00, 0.00, 0.00, 5, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(974, 1700.00, 1500.00, 0.00, 0.00, 6, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(975, 1700.00, 1500.00, 0.00, 0.00, 7, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(976, 1700.00, 1500.00, 0.00, 0.00, 8, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(977, 2000.00, 1800.00, 0.00, 0.00, 1, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(978, 1700.00, 1500.00, 0.00, 0.00, 2, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(979, 1700.00, 1500.00, 0.00, 0.00, 3, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(980, 1400.00, 1200.00, 0.00, 0.00, 4, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(981, 1700.00, 1500.00, 0.00, 0.00, 5, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(982, 1700.00, 1500.00, 0.00, 0.00, 6, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(983, 1700.00, 1500.00, 0.00, 0.00, 7, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(984, 1700.00, 1500.00, 0.00, 0.00, 8, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(985, 2000.00, 1800.00, 0.00, 0.00, 1, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(986, 1700.00, 1500.00, 0.00, 0.00, 2, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(987, 1700.00, 1500.00, 0.00, 0.00, 3, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(988, 1400.00, 1200.00, 0.00, 0.00, 4, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(989, 1700.00, 1500.00, 0.00, 0.00, 5, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(990, 1700.00, 1500.00, 0.00, 0.00, 6, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(991, 1700.00, 1500.00, 0.00, 0.00, 7, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(992, 1700.00, 1500.00, 0.00, 0.00, 8, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(993, 2000.00, 1800.00, 0.00, 0.00, 1, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(994, 1700.00, 1500.00, 0.00, 0.00, 2, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(995, 1700.00, 1500.00, 0.00, 0.00, 3, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(996, 1400.00, 1200.00, 0.00, 0.00, 4, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(997, 1700.00, 1500.00, 0.00, 0.00, 5, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(998, 1700.00, 1500.00, 0.00, 0.00, 6, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(999, 1700.00, 1500.00, 0.00, 0.00, 7, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(1000, 1700.00, 1500.00, 0.00, 0.00, 8, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(1001, 2000.00, 1800.00, 0.00, 0.00, 1, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(1002, 1700.00, 1500.00, 0.00, 0.00, 2, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(1003, 1700.00, 1500.00, 0.00, 0.00, 3, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(1004, 1400.00, 1200.00, 0.00, 0.00, 4, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(1005, 1700.00, 1500.00, 0.00, 0.00, 5, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(1006, 1700.00, 1500.00, 0.00, 0.00, 6, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(1007, 1700.00, 1500.00, 0.00, 0.00, 7, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(1008, 1700.00, 1500.00, 0.00, 0.00, 8, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(1009, 2000.00, 1800.00, 0.00, 0.00, 1, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(1010, 1700.00, 1500.00, 0.00, 0.00, 2, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(1011, 1700.00, 1500.00, 0.00, 0.00, 3, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(1012, 1400.00, 1200.00, 0.00, 0.00, 4, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(1013, 1700.00, 1500.00, 0.00, 0.00, 5, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(1014, 1700.00, 1500.00, 0.00, 0.00, 6, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(1015, 1700.00, 1500.00, 0.00, 0.00, 7, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(1016, 1700.00, 1500.00, 0.00, 0.00, 8, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(1017, 2000.00, 1800.00, 0.00, 0.00, 1, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(1018, 1700.00, 1500.00, 0.00, 0.00, 2, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(1019, 1700.00, 1500.00, 0.00, 0.00, 3, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(1020, 1400.00, 1200.00, 0.00, 0.00, 4, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(1021, 1700.00, 1500.00, 0.00, 0.00, 5, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(1022, 1700.00, 1500.00, 0.00, 0.00, 6, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(1023, 1700.00, 1500.00, 0.00, 0.00, 7, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(1024, 1700.00, 1500.00, 0.00, 0.00, 8, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(1025, 2000.00, 1800.00, 0.00, 0.00, 1, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(1026, 1700.00, 1500.00, 0.00, 0.00, 2, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(1027, 1700.00, 1500.00, 0.00, 0.00, 3, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(1028, 1400.00, 1200.00, 0.00, 0.00, 4, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(1029, 1700.00, 1500.00, 0.00, 0.00, 5, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(1030, 1700.00, 1500.00, 0.00, 0.00, 6, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(1031, 1700.00, 1500.00, 0.00, 0.00, 7, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(1032, 1700.00, 1500.00, 0.00, 0.00, 8, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(1033, 2000.00, 1800.00, 0.00, 0.00, 1, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(1034, 1700.00, 1500.00, 0.00, 0.00, 2, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(1035, 1700.00, 1500.00, 0.00, 0.00, 3, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(1036, 1400.00, 1200.00, 0.00, 0.00, 4, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(1037, 1700.00, 1500.00, 0.00, 0.00, 5, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(1038, 1700.00, 1500.00, 0.00, 0.00, 6, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(1039, 1700.00, 1500.00, 0.00, 0.00, 7, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(1040, 1700.00, 1500.00, 0.00, 0.00, 8, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(1041, 2000.00, 1800.00, 0.00, 0.00, 1, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(1042, 1700.00, 1500.00, 0.00, 0.00, 2, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(1043, 1700.00, 1500.00, 0.00, 0.00, 3, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(1044, 1400.00, 1200.00, 0.00, 0.00, 4, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(1045, 1700.00, 1500.00, 0.00, 0.00, 5, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(1046, 1700.00, 1500.00, 0.00, 0.00, 6, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(1047, 1700.00, 1500.00, 0.00, 0.00, 7, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(1048, 1700.00, 1500.00, 0.00, 0.00, 8, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(1049, 2000.00, 1800.00, 0.00, 0.00, 1, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(1050, 1700.00, 1500.00, 0.00, 0.00, 2, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(1051, 1700.00, 1500.00, 0.00, 0.00, 3, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(1052, 1400.00, 1200.00, 0.00, 0.00, 4, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(1053, 1700.00, 1500.00, 0.00, 0.00, 5, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(1054, 1700.00, 1500.00, 0.00, 0.00, 6, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(1055, 1700.00, 1500.00, 0.00, 0.00, 7, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(1056, 1700.00, 1500.00, 0.00, 0.00, 8, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(1057, 2000.00, 1800.00, 0.00, 0.00, 1, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(1058, 1700.00, 1500.00, 0.00, 0.00, 2, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(1059, 1700.00, 1500.00, 0.00, 0.00, 3, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(1060, 1400.00, 1200.00, 0.00, 0.00, 4, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(1061, 1700.00, 1500.00, 0.00, 0.00, 5, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(1062, 1700.00, 1500.00, 0.00, 0.00, 6, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(1063, 1700.00, 1500.00, 0.00, 0.00, 7, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(1064, 1700.00, 1500.00, 0.00, 0.00, 8, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(1065, 2000.00, 1800.00, 0.00, 0.00, 1, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(1066, 1700.00, 1500.00, 0.00, 0.00, 2, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(1067, 1700.00, 1500.00, 0.00, 0.00, 3, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(1068, 1400.00, 1200.00, 0.00, 0.00, 4, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(1069, 1700.00, 1500.00, 0.00, 0.00, 5, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(1070, 1700.00, 1500.00, 0.00, 0.00, 6, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(1071, 1700.00, 1500.00, 0.00, 0.00, 7, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(1072, 1700.00, 1500.00, 0.00, 0.00, 8, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(1073, 2000.00, 1800.00, 0.00, 0.00, 1, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(1074, 1700.00, 1500.00, 0.00, 0.00, 2, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(1075, 1700.00, 1500.00, 0.00, 0.00, 3, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(1076, 1400.00, 1200.00, 0.00, 0.00, 4, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(1077, 1700.00, 1500.00, 0.00, 0.00, 5, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(1078, 1700.00, 1500.00, 0.00, 0.00, 6, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(1079, 1700.00, 1500.00, 0.00, 0.00, 7, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(1080, 1700.00, 1500.00, 0.00, 0.00, 8, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(1081, 2000.00, 1800.00, 0.00, 0.00, 1, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(1082, 1700.00, 1500.00, 0.00, 0.00, 2, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(1083, 1700.00, 1500.00, 0.00, 0.00, 3, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(1084, 1400.00, 1200.00, 0.00, 0.00, 4, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(1085, 1700.00, 1500.00, 0.00, 0.00, 5, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(1086, 1700.00, 1500.00, 0.00, 0.00, 6, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(1087, 1700.00, 1500.00, 0.00, 0.00, 7, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(1088, 1700.00, 1500.00, 0.00, 0.00, 8, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(1089, 2000.00, 1800.00, 0.00, 0.00, 1, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(1090, 1700.00, 1500.00, 0.00, 0.00, 2, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(1091, 1700.00, 1500.00, 0.00, 0.00, 3, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(1092, 1400.00, 1200.00, 0.00, 0.00, 4, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(1093, 1700.00, 1500.00, 0.00, 0.00, 5, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(1094, 1700.00, 1500.00, 0.00, 0.00, 6, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(1095, 1700.00, 1500.00, 0.00, 0.00, 7, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(1096, 1700.00, 1500.00, 0.00, 0.00, 8, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(1097, 2000.00, 1800.00, 0.00, 0.00, 1, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(1098, 1700.00, 1500.00, 0.00, 0.00, 2, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(1099, 1700.00, 1500.00, 0.00, 0.00, 3, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(1100, 1400.00, 1200.00, 0.00, 0.00, 4, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(1101, 1700.00, 1500.00, 0.00, 0.00, 5, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(1102, 1700.00, 1500.00, 0.00, 0.00, 6, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(1103, 1700.00, 1500.00, 0.00, 0.00, 7, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(1104, 1700.00, 1500.00, 0.00, 0.00, 8, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(1105, 2000.00, 1800.00, 0.00, 0.00, 1, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(1106, 1700.00, 1500.00, 0.00, 0.00, 2, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59');
INSERT INTO `product_rates` (`id`, `rate_adult`, `rate_child`, `rate_infant`, `rate_private`, `product_period_id`, `is_approved`, `is_deleted`, `created_at`, `updated_at`) VALUES
(1107, 1700.00, 1500.00, 0.00, 0.00, 3, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(1108, 1400.00, 1200.00, 0.00, 0.00, 4, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(1109, 1700.00, 1500.00, 0.00, 0.00, 5, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(1110, 1700.00, 1500.00, 0.00, 0.00, 6, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(1111, 1700.00, 1500.00, 0.00, 0.00, 7, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(1112, 1700.00, 1500.00, 0.00, 0.00, 8, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(1113, 2000.00, 1800.00, 0.00, 0.00, 1, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(1114, 1700.00, 1500.00, 0.00, 0.00, 2, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(1115, 1700.00, 1500.00, 0.00, 0.00, 3, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(1116, 1400.00, 1200.00, 0.00, 0.00, 4, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(1117, 1700.00, 1500.00, 0.00, 0.00, 5, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(1118, 1700.00, 1500.00, 0.00, 0.00, 6, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(1119, 1700.00, 1500.00, 0.00, 0.00, 7, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(1120, 1700.00, 1500.00, 0.00, 0.00, 8, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(1121, 2000.00, 1800.00, 0.00, 0.00, 1, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(1122, 1700.00, 1500.00, 0.00, 0.00, 2, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(1123, 1700.00, 1500.00, 0.00, 0.00, 3, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(1124, 1400.00, 1200.00, 0.00, 0.00, 4, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(1125, 1700.00, 1500.00, 0.00, 0.00, 5, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(1126, 1700.00, 1500.00, 0.00, 0.00, 6, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(1127, 1700.00, 1500.00, 0.00, 0.00, 7, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(1128, 1700.00, 1500.00, 0.00, 0.00, 8, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(1129, 2000.00, 1800.00, 0.00, 0.00, 1, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(1130, 1700.00, 1500.00, 0.00, 0.00, 2, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(1131, 1700.00, 1500.00, 0.00, 0.00, 3, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(1132, 1400.00, 1200.00, 0.00, 0.00, 4, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(1133, 1700.00, 1500.00, 0.00, 0.00, 5, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(1134, 1700.00, 1500.00, 0.00, 0.00, 6, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(1135, 1700.00, 1500.00, 0.00, 0.00, 7, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(1136, 1700.00, 1500.00, 0.00, 0.00, 8, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(1137, 2000.00, 1800.00, 0.00, 0.00, 1, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(1138, 1700.00, 1500.00, 0.00, 0.00, 2, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(1139, 1700.00, 1500.00, 0.00, 0.00, 3, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(1140, 1400.00, 1200.00, 0.00, 0.00, 4, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(1141, 1700.00, 1500.00, 0.00, 0.00, 5, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(1142, 1700.00, 1500.00, 0.00, 0.00, 6, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(1143, 1700.00, 1500.00, 0.00, 0.00, 7, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(1144, 1700.00, 1500.00, 0.00, 0.00, 8, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(1145, 2000.00, 1800.00, 0.00, 0.00, 1, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(1146, 1700.00, 1500.00, 0.00, 0.00, 2, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(1147, 1700.00, 1500.00, 0.00, 0.00, 3, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(1148, 1400.00, 1200.00, 0.00, 0.00, 4, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(1149, 1700.00, 1500.00, 0.00, 0.00, 5, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(1150, 1700.00, 1500.00, 0.00, 0.00, 6, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(1151, 1700.00, 1500.00, 0.00, 0.00, 7, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(1152, 1700.00, 1500.00, 0.00, 0.00, 8, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(1153, 2000.00, 1800.00, 0.00, 0.00, 1, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(1154, 1700.00, 1500.00, 0.00, 0.00, 2, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(1155, 1700.00, 1500.00, 0.00, 0.00, 3, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(1156, 1400.00, 1200.00, 0.00, 0.00, 4, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(1157, 1700.00, 1500.00, 0.00, 0.00, 5, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(1158, 1700.00, 1500.00, 0.00, 0.00, 6, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(1159, 1700.00, 1500.00, 0.00, 0.00, 7, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(1160, 1700.00, 1500.00, 0.00, 0.00, 8, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(1161, 2000.00, 1800.00, 0.00, 0.00, 1, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(1162, 1700.00, 1500.00, 0.00, 0.00, 2, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(1163, 1700.00, 1500.00, 0.00, 0.00, 3, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(1164, 1400.00, 1200.00, 0.00, 0.00, 4, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(1165, 1700.00, 1500.00, 0.00, 0.00, 5, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(1166, 1700.00, 1500.00, 0.00, 0.00, 6, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(1167, 1700.00, 1500.00, 0.00, 0.00, 7, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(1168, 1700.00, 1500.00, 0.00, 0.00, 8, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(1169, 2000.00, 1800.00, 0.00, 0.00, 1, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(1170, 1700.00, 1500.00, 0.00, 0.00, 2, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(1171, 1700.00, 1500.00, 0.00, 0.00, 3, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(1172, 1400.00, 1200.00, 0.00, 0.00, 4, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(1173, 1700.00, 1500.00, 0.00, 0.00, 5, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(1174, 1700.00, 1500.00, 0.00, 0.00, 6, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(1175, 1700.00, 1500.00, 0.00, 0.00, 7, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(1176, 1700.00, 1500.00, 0.00, 0.00, 8, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(1177, 2000.00, 1800.00, 0.00, 0.00, 1, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(1178, 1700.00, 1500.00, 0.00, 0.00, 2, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(1179, 1700.00, 1500.00, 0.00, 0.00, 3, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(1180, 1400.00, 1200.00, 0.00, 0.00, 4, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(1181, 1700.00, 1500.00, 0.00, 0.00, 5, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(1182, 1700.00, 1500.00, 0.00, 0.00, 6, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(1183, 1700.00, 1500.00, 0.00, 0.00, 7, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(1184, 1700.00, 1500.00, 0.00, 0.00, 8, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(1185, 2000.00, 1800.00, 0.00, 0.00, 1, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(1186, 1700.00, 1500.00, 0.00, 0.00, 2, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(1187, 1700.00, 1500.00, 0.00, 0.00, 3, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(1188, 1400.00, 1200.00, 0.00, 0.00, 4, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(1189, 1700.00, 1500.00, 0.00, 0.00, 5, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(1190, 1700.00, 1500.00, 0.00, 0.00, 6, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(1191, 1700.00, 1500.00, 0.00, 0.00, 7, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(1192, 1700.00, 1500.00, 0.00, 0.00, 8, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(1193, 2000.00, 1800.00, 0.00, 0.00, 1, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(1194, 1700.00, 1500.00, 0.00, 0.00, 2, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(1195, 1700.00, 1500.00, 0.00, 0.00, 3, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(1196, 1400.00, 1200.00, 0.00, 0.00, 4, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(1197, 1700.00, 1500.00, 0.00, 0.00, 5, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(1198, 1700.00, 1500.00, 0.00, 0.00, 6, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(1199, 1700.00, 1500.00, 0.00, 0.00, 7, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(1200, 1700.00, 1500.00, 0.00, 0.00, 8, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(1201, 2000.00, 1800.00, 0.00, 0.00, 1, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(1202, 1700.00, 1500.00, 0.00, 0.00, 2, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(1203, 1700.00, 1500.00, 0.00, 0.00, 3, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(1204, 1400.00, 1200.00, 0.00, 0.00, 4, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(1205, 1700.00, 1500.00, 0.00, 0.00, 5, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(1206, 1700.00, 1500.00, 0.00, 0.00, 6, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(1207, 1700.00, 1500.00, 0.00, 0.00, 7, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(1208, 1700.00, 1500.00, 0.00, 0.00, 8, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(1209, 2000.00, 1800.00, 0.00, 0.00, 1, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(1210, 1700.00, 1500.00, 0.00, 0.00, 2, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(1211, 1700.00, 1500.00, 0.00, 0.00, 3, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(1212, 1400.00, 1200.00, 0.00, 0.00, 4, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(1213, 1700.00, 1500.00, 0.00, 0.00, 5, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(1214, 1700.00, 1500.00, 0.00, 0.00, 6, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(1215, 1700.00, 1500.00, 0.00, 0.00, 7, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(1216, 1700.00, 1500.00, 0.00, 0.00, 8, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(1217, 2000.00, 1800.00, 0.00, 0.00, 1, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(1218, 1700.00, 1500.00, 0.00, 0.00, 2, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(1219, 1700.00, 1500.00, 0.00, 0.00, 3, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(1220, 1400.00, 1200.00, 0.00, 0.00, 4, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(1221, 1700.00, 1500.00, 0.00, 0.00, 5, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(1222, 1700.00, 1500.00, 0.00, 0.00, 6, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(1223, 1700.00, 1500.00, 0.00, 0.00, 7, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(1224, 1700.00, 1500.00, 0.00, 0.00, 8, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(1225, 2000.00, 1800.00, 0.00, 0.00, 1, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(1226, 1700.00, 1500.00, 0.00, 0.00, 2, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(1227, 1700.00, 1500.00, 0.00, 0.00, 3, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(1228, 1400.00, 1200.00, 0.00, 0.00, 4, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(1229, 1700.00, 1500.00, 0.00, 0.00, 5, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(1230, 1700.00, 1500.00, 0.00, 0.00, 6, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(1231, 1700.00, 1500.00, 0.00, 0.00, 7, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(1232, 1700.00, 1500.00, 0.00, 0.00, 8, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(1233, 2000.00, 1800.00, 0.00, 0.00, 1, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(1234, 1700.00, 1500.00, 0.00, 0.00, 2, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(1235, 1700.00, 1500.00, 0.00, 0.00, 3, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(1236, 1400.00, 1200.00, 0.00, 0.00, 4, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(1237, 1700.00, 1500.00, 0.00, 0.00, 5, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(1238, 1700.00, 1500.00, 0.00, 0.00, 6, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(1239, 1700.00, 1500.00, 0.00, 0.00, 7, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(1240, 1700.00, 1500.00, 0.00, 0.00, 8, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(1241, 2000.00, 1800.00, 0.00, 0.00, 1, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(1242, 1700.00, 1500.00, 0.00, 0.00, 2, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(1243, 1700.00, 1500.00, 0.00, 0.00, 3, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(1244, 1400.00, 1200.00, 0.00, 0.00, 4, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(1245, 1700.00, 1500.00, 0.00, 0.00, 5, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(1246, 1700.00, 1500.00, 0.00, 0.00, 6, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(1247, 1700.00, 1500.00, 0.00, 0.00, 7, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(1248, 1700.00, 1500.00, 0.00, 0.00, 8, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(1249, 2000.00, 1800.00, 0.00, 0.00, 1, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(1250, 1700.00, 1500.00, 0.00, 0.00, 2, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(1251, 1700.00, 1500.00, 0.00, 0.00, 3, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(1252, 1400.00, 1200.00, 0.00, 0.00, 4, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(1253, 1700.00, 1500.00, 0.00, 0.00, 5, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(1254, 1700.00, 1500.00, 0.00, 0.00, 6, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(1255, 1700.00, 1500.00, 0.00, 0.00, 7, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(1256, 1700.00, 1500.00, 0.00, 0.00, 8, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(1257, 2000.00, 1800.00, 0.00, 0.00, 1, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(1258, 1700.00, 1500.00, 0.00, 0.00, 2, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(1259, 1700.00, 1500.00, 0.00, 0.00, 3, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(1260, 1400.00, 1200.00, 0.00, 0.00, 4, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(1261, 1700.00, 1500.00, 0.00, 0.00, 5, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(1262, 1700.00, 1500.00, 0.00, 0.00, 6, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(1263, 1700.00, 1500.00, 0.00, 0.00, 7, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(1264, 1700.00, 1500.00, 0.00, 0.00, 8, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(1265, 2000.00, 1800.00, 0.00, 0.00, 1, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(1266, 1700.00, 1500.00, 0.00, 0.00, 2, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(1267, 1700.00, 1500.00, 0.00, 0.00, 3, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(1268, 1400.00, 1200.00, 0.00, 0.00, 4, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(1269, 1700.00, 1500.00, 0.00, 0.00, 5, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(1270, 1700.00, 1500.00, 0.00, 0.00, 6, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(1271, 1700.00, 1500.00, 0.00, 0.00, 7, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(1272, 1700.00, 1500.00, 0.00, 0.00, 8, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(1273, 2000.00, 1800.00, 0.00, 0.00, 1, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(1274, 1700.00, 1500.00, 0.00, 0.00, 2, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(1275, 1700.00, 1500.00, 0.00, 0.00, 3, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(1276, 1400.00, 1200.00, 0.00, 0.00, 4, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(1277, 1700.00, 1500.00, 0.00, 0.00, 5, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(1278, 1700.00, 1500.00, 0.00, 0.00, 6, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(1279, 1700.00, 1500.00, 0.00, 0.00, 7, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(1280, 1700.00, 1500.00, 0.00, 0.00, 8, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(1281, 2000.00, 1800.00, 0.00, 0.00, 1, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(1282, 1700.00, 1500.00, 0.00, 0.00, 2, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(1283, 1700.00, 1500.00, 0.00, 0.00, 3, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(1284, 1400.00, 1200.00, 0.00, 0.00, 4, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(1285, 1700.00, 1500.00, 0.00, 0.00, 5, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(1286, 1700.00, 1500.00, 0.00, 0.00, 6, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(1287, 1700.00, 1500.00, 0.00, 0.00, 7, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(1288, 1700.00, 1500.00, 0.00, 0.00, 8, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(1289, 2000.00, 1800.00, 0.00, 0.00, 1, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(1290, 1700.00, 1500.00, 0.00, 0.00, 2, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(1291, 1700.00, 1500.00, 0.00, 0.00, 3, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(1292, 1400.00, 1200.00, 0.00, 0.00, 4, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(1293, 1700.00, 1500.00, 0.00, 0.00, 5, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(1294, 1700.00, 1500.00, 0.00, 0.00, 6, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(1295, 1700.00, 1500.00, 0.00, 0.00, 7, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(1296, 1700.00, 1500.00, 0.00, 0.00, 8, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(1297, 2000.00, 1800.00, 0.00, 0.00, 1, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(1298, 1700.00, 1500.00, 0.00, 0.00, 2, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(1299, 1700.00, 1500.00, 0.00, 0.00, 3, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(1300, 1400.00, 1200.00, 0.00, 0.00, 4, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(1301, 1700.00, 1500.00, 0.00, 0.00, 5, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(1302, 1700.00, 1500.00, 0.00, 0.00, 6, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(1303, 1700.00, 1500.00, 0.00, 0.00, 7, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(1304, 1700.00, 1500.00, 0.00, 0.00, 8, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(1305, 2000.00, 1800.00, 0.00, 0.00, 1, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(1306, 1700.00, 1500.00, 0.00, 0.00, 2, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(1307, 1700.00, 1500.00, 0.00, 0.00, 3, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(1308, 1400.00, 1200.00, 0.00, 0.00, 4, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(1309, 1700.00, 1500.00, 0.00, 0.00, 5, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(1310, 1700.00, 1500.00, 0.00, 0.00, 6, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(1311, 1700.00, 1500.00, 0.00, 0.00, 7, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(1312, 1700.00, 1500.00, 0.00, 0.00, 8, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(1313, 2000.00, 1800.00, 0.00, 0.00, 1, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(1314, 1700.00, 1500.00, 0.00, 0.00, 2, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(1315, 1700.00, 1500.00, 0.00, 0.00, 3, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(1316, 1400.00, 1200.00, 0.00, 0.00, 4, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(1317, 1700.00, 1500.00, 0.00, 0.00, 5, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(1318, 1700.00, 1500.00, 0.00, 0.00, 6, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(1319, 1700.00, 1500.00, 0.00, 0.00, 7, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(1320, 1700.00, 1500.00, 0.00, 0.00, 8, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(1321, 2000.00, 1800.00, 0.00, 0.00, 1, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(1322, 1700.00, 1500.00, 0.00, 0.00, 2, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(1323, 1700.00, 1500.00, 0.00, 0.00, 3, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(1324, 1400.00, 1200.00, 0.00, 0.00, 4, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(1325, 1700.00, 1500.00, 0.00, 0.00, 5, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(1326, 1700.00, 1500.00, 0.00, 0.00, 6, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(1327, 1700.00, 1500.00, 0.00, 0.00, 7, 1, 0, '2024-12-18 14:52:59', '2024-12-18 14:52:59'),
(1328, 1700.00, 1500.00, 0.00, 0.00, 8, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1329, 2000.00, 1800.00, 0.00, 0.00, 1, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1330, 1700.00, 1500.00, 0.00, 0.00, 2, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1331, 1700.00, 1500.00, 0.00, 0.00, 3, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1332, 1400.00, 1200.00, 0.00, 0.00, 4, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1333, 1700.00, 1500.00, 0.00, 0.00, 5, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1334, 1700.00, 1500.00, 0.00, 0.00, 6, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1335, 1700.00, 1500.00, 0.00, 0.00, 7, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1336, 1700.00, 1500.00, 0.00, 0.00, 8, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1337, 2000.00, 1800.00, 0.00, 0.00, 1, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1338, 1700.00, 1500.00, 0.00, 0.00, 2, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1339, 1700.00, 1500.00, 0.00, 0.00, 3, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1340, 1400.00, 1200.00, 0.00, 0.00, 4, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1341, 1700.00, 1500.00, 0.00, 0.00, 5, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1342, 1700.00, 1500.00, 0.00, 0.00, 6, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1343, 1700.00, 1500.00, 0.00, 0.00, 7, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1344, 1700.00, 1500.00, 0.00, 0.00, 8, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1345, 2000.00, 1800.00, 0.00, 0.00, 1, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1346, 1700.00, 1500.00, 0.00, 0.00, 2, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1347, 1700.00, 1500.00, 0.00, 0.00, 3, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1348, 1400.00, 1200.00, 0.00, 0.00, 4, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1349, 1700.00, 1500.00, 0.00, 0.00, 5, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1350, 1700.00, 1500.00, 0.00, 0.00, 6, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1351, 1700.00, 1500.00, 0.00, 0.00, 7, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1352, 1700.00, 1500.00, 0.00, 0.00, 8, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1353, 2000.00, 1800.00, 0.00, 0.00, 1, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1354, 1700.00, 1500.00, 0.00, 0.00, 2, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1355, 1700.00, 1500.00, 0.00, 0.00, 3, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1356, 1400.00, 1200.00, 0.00, 0.00, 4, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1357, 1700.00, 1500.00, 0.00, 0.00, 5, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1358, 1700.00, 1500.00, 0.00, 0.00, 6, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1359, 1700.00, 1500.00, 0.00, 0.00, 7, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1360, 1700.00, 1500.00, 0.00, 0.00, 8, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1361, 2000.00, 1800.00, 0.00, 0.00, 1, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1362, 1700.00, 1500.00, 0.00, 0.00, 2, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1363, 1700.00, 1500.00, 0.00, 0.00, 3, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1364, 1400.00, 1200.00, 0.00, 0.00, 4, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1365, 1700.00, 1500.00, 0.00, 0.00, 5, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1366, 1700.00, 1500.00, 0.00, 0.00, 6, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1367, 1700.00, 1500.00, 0.00, 0.00, 7, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1368, 1700.00, 1500.00, 0.00, 0.00, 8, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1369, 2000.00, 1800.00, 0.00, 0.00, 1, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1370, 1700.00, 1500.00, 0.00, 0.00, 2, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1371, 1700.00, 1500.00, 0.00, 0.00, 3, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1372, 1400.00, 1200.00, 0.00, 0.00, 4, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1373, 1700.00, 1500.00, 0.00, 0.00, 5, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1374, 1700.00, 1500.00, 0.00, 0.00, 6, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1375, 1700.00, 1500.00, 0.00, 0.00, 7, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1376, 1700.00, 1500.00, 0.00, 0.00, 8, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1377, 2000.00, 1800.00, 0.00, 0.00, 1, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1378, 1700.00, 1500.00, 0.00, 0.00, 2, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1379, 1700.00, 1500.00, 0.00, 0.00, 3, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1380, 1400.00, 1200.00, 0.00, 0.00, 4, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1381, 1700.00, 1500.00, 0.00, 0.00, 5, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1382, 1700.00, 1500.00, 0.00, 0.00, 6, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1383, 1700.00, 1500.00, 0.00, 0.00, 7, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1384, 1700.00, 1500.00, 0.00, 0.00, 8, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1385, 2000.00, 1800.00, 0.00, 0.00, 1, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1386, 1700.00, 1500.00, 0.00, 0.00, 2, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1387, 1700.00, 1500.00, 0.00, 0.00, 3, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1388, 1400.00, 1200.00, 0.00, 0.00, 4, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1389, 1700.00, 1500.00, 0.00, 0.00, 5, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1390, 1700.00, 1500.00, 0.00, 0.00, 6, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1391, 1700.00, 1500.00, 0.00, 0.00, 7, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1392, 1700.00, 1500.00, 0.00, 0.00, 8, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1393, 2000.00, 1800.00, 0.00, 0.00, 1, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1394, 1700.00, 1500.00, 0.00, 0.00, 2, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1395, 1700.00, 1500.00, 0.00, 0.00, 3, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1396, 1400.00, 1200.00, 0.00, 0.00, 4, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1397, 1700.00, 1500.00, 0.00, 0.00, 5, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1398, 1700.00, 1500.00, 0.00, 0.00, 6, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1399, 1700.00, 1500.00, 0.00, 0.00, 7, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1400, 1700.00, 1500.00, 0.00, 0.00, 8, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1401, 2000.00, 1800.00, 0.00, 0.00, 1, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1402, 1700.00, 1500.00, 0.00, 0.00, 2, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1403, 1700.00, 1500.00, 0.00, 0.00, 3, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1404, 1400.00, 1200.00, 0.00, 0.00, 4, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1405, 1700.00, 1500.00, 0.00, 0.00, 5, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1406, 1700.00, 1500.00, 0.00, 0.00, 6, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1407, 1700.00, 1500.00, 0.00, 0.00, 7, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1408, 1700.00, 1500.00, 0.00, 0.00, 8, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1409, 2000.00, 1800.00, 0.00, 0.00, 1, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1410, 1700.00, 1500.00, 0.00, 0.00, 2, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1411, 1700.00, 1500.00, 0.00, 0.00, 3, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1412, 1400.00, 1200.00, 0.00, 0.00, 4, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1413, 1700.00, 1500.00, 0.00, 0.00, 5, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1414, 1700.00, 1500.00, 0.00, 0.00, 6, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1415, 1700.00, 1500.00, 0.00, 0.00, 7, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1416, 1700.00, 1500.00, 0.00, 0.00, 8, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1417, 2000.00, 1800.00, 0.00, 0.00, 1, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1418, 1700.00, 1500.00, 0.00, 0.00, 2, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1419, 1700.00, 1500.00, 0.00, 0.00, 3, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1420, 1400.00, 1200.00, 0.00, 0.00, 4, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1421, 1700.00, 1500.00, 0.00, 0.00, 5, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1422, 1700.00, 1500.00, 0.00, 0.00, 6, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1423, 1700.00, 1500.00, 0.00, 0.00, 7, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1424, 1700.00, 1500.00, 0.00, 0.00, 8, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1425, 2000.00, 1800.00, 0.00, 0.00, 1, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1426, 1700.00, 1500.00, 0.00, 0.00, 2, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1427, 1700.00, 1500.00, 0.00, 0.00, 3, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1428, 1400.00, 1200.00, 0.00, 0.00, 4, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1429, 1700.00, 1500.00, 0.00, 0.00, 5, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1430, 1700.00, 1500.00, 0.00, 0.00, 6, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1431, 1700.00, 1500.00, 0.00, 0.00, 7, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1432, 1700.00, 1500.00, 0.00, 0.00, 8, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1433, 2000.00, 1800.00, 0.00, 0.00, 1, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1434, 1700.00, 1500.00, 0.00, 0.00, 2, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1435, 1700.00, 1500.00, 0.00, 0.00, 3, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1436, 1400.00, 1200.00, 0.00, 0.00, 4, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1437, 1700.00, 1500.00, 0.00, 0.00, 5, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1438, 1700.00, 1500.00, 0.00, 0.00, 6, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1439, 1700.00, 1500.00, 0.00, 0.00, 7, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1440, 1700.00, 1500.00, 0.00, 0.00, 8, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1441, 2000.00, 1800.00, 0.00, 0.00, 1, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1442, 1700.00, 1500.00, 0.00, 0.00, 2, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1443, 1700.00, 1500.00, 0.00, 0.00, 3, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1444, 1400.00, 1200.00, 0.00, 0.00, 4, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1445, 1700.00, 1500.00, 0.00, 0.00, 5, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1446, 1700.00, 1500.00, 0.00, 0.00, 6, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1447, 1700.00, 1500.00, 0.00, 0.00, 7, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1448, 1700.00, 1500.00, 0.00, 0.00, 8, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1449, 2000.00, 1800.00, 0.00, 0.00, 1, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1450, 1700.00, 1500.00, 0.00, 0.00, 2, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1451, 1700.00, 1500.00, 0.00, 0.00, 3, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1452, 1400.00, 1200.00, 0.00, 0.00, 4, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1453, 1700.00, 1500.00, 0.00, 0.00, 5, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1454, 1700.00, 1500.00, 0.00, 0.00, 6, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1455, 1700.00, 1500.00, 0.00, 0.00, 7, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1456, 1700.00, 1500.00, 0.00, 0.00, 8, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1457, 2000.00, 1800.00, 0.00, 0.00, 1, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1458, 1700.00, 1500.00, 0.00, 0.00, 2, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1459, 1700.00, 1500.00, 0.00, 0.00, 3, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1460, 1400.00, 1200.00, 0.00, 0.00, 4, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1461, 1700.00, 1500.00, 0.00, 0.00, 5, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1462, 1700.00, 1500.00, 0.00, 0.00, 6, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1463, 1700.00, 1500.00, 0.00, 0.00, 7, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1464, 1700.00, 1500.00, 0.00, 0.00, 8, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1465, 2000.00, 1800.00, 0.00, 0.00, 1, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1466, 1700.00, 1500.00, 0.00, 0.00, 2, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1467, 1700.00, 1500.00, 0.00, 0.00, 3, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1468, 1400.00, 1200.00, 0.00, 0.00, 4, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1469, 1700.00, 1500.00, 0.00, 0.00, 5, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1470, 1700.00, 1500.00, 0.00, 0.00, 6, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1471, 1700.00, 1500.00, 0.00, 0.00, 7, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1472, 1700.00, 1500.00, 0.00, 0.00, 8, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1473, 2000.00, 1800.00, 0.00, 0.00, 1, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1474, 1700.00, 1500.00, 0.00, 0.00, 2, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1475, 1700.00, 1500.00, 0.00, 0.00, 3, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1476, 1400.00, 1200.00, 0.00, 0.00, 4, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1477, 1700.00, 1500.00, 0.00, 0.00, 5, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1478, 1700.00, 1500.00, 0.00, 0.00, 6, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1479, 1700.00, 1500.00, 0.00, 0.00, 7, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1480, 1700.00, 1500.00, 0.00, 0.00, 8, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1481, 2000.00, 1800.00, 0.00, 0.00, 1, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1482, 1700.00, 1500.00, 0.00, 0.00, 2, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1483, 1700.00, 1500.00, 0.00, 0.00, 3, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1484, 1400.00, 1200.00, 0.00, 0.00, 4, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1485, 1700.00, 1500.00, 0.00, 0.00, 5, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1486, 1700.00, 1500.00, 0.00, 0.00, 6, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1487, 1700.00, 1500.00, 0.00, 0.00, 7, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1488, 1700.00, 1500.00, 0.00, 0.00, 8, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1489, 2000.00, 1800.00, 0.00, 0.00, 1, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1490, 1700.00, 1500.00, 0.00, 0.00, 2, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1491, 1700.00, 1500.00, 0.00, 0.00, 3, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1492, 1400.00, 1200.00, 0.00, 0.00, 4, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1493, 1700.00, 1500.00, 0.00, 0.00, 5, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1494, 1700.00, 1500.00, 0.00, 0.00, 6, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1495, 1700.00, 1500.00, 0.00, 0.00, 7, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1496, 1700.00, 1500.00, 0.00, 0.00, 8, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1497, 2000.00, 1800.00, 0.00, 0.00, 1, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1498, 1700.00, 1500.00, 0.00, 0.00, 2, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1499, 1700.00, 1500.00, 0.00, 0.00, 3, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1500, 1400.00, 1200.00, 0.00, 0.00, 4, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1501, 1700.00, 1500.00, 0.00, 0.00, 5, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1502, 1700.00, 1500.00, 0.00, 0.00, 6, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1503, 1700.00, 1500.00, 0.00, 0.00, 7, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1504, 1700.00, 1500.00, 0.00, 0.00, 8, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1505, 2000.00, 1800.00, 0.00, 0.00, 1, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1506, 1700.00, 1500.00, 0.00, 0.00, 2, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1507, 1700.00, 1500.00, 0.00, 0.00, 3, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1508, 1400.00, 1200.00, 0.00, 0.00, 4, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1509, 1700.00, 1500.00, 0.00, 0.00, 5, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1510, 1700.00, 1500.00, 0.00, 0.00, 6, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1511, 1700.00, 1500.00, 0.00, 0.00, 7, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1512, 1700.00, 1500.00, 0.00, 0.00, 8, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1513, 2000.00, 1800.00, 0.00, 0.00, 1, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1514, 1700.00, 1500.00, 0.00, 0.00, 2, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1515, 1700.00, 1500.00, 0.00, 0.00, 3, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1516, 1400.00, 1200.00, 0.00, 0.00, 4, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1517, 1700.00, 1500.00, 0.00, 0.00, 5, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1518, 1700.00, 1500.00, 0.00, 0.00, 6, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1519, 1700.00, 1500.00, 0.00, 0.00, 7, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1520, 1700.00, 1500.00, 0.00, 0.00, 8, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1521, 2000.00, 1800.00, 0.00, 0.00, 1, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1522, 1700.00, 1500.00, 0.00, 0.00, 2, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1523, 1700.00, 1500.00, 0.00, 0.00, 3, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1524, 1400.00, 1200.00, 0.00, 0.00, 4, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1525, 1700.00, 1500.00, 0.00, 0.00, 5, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1526, 1700.00, 1500.00, 0.00, 0.00, 6, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1527, 1700.00, 1500.00, 0.00, 0.00, 7, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1528, 1700.00, 1500.00, 0.00, 0.00, 8, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1529, 2000.00, 1800.00, 0.00, 0.00, 1, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1530, 1700.00, 1500.00, 0.00, 0.00, 2, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1531, 1700.00, 1500.00, 0.00, 0.00, 3, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1532, 1400.00, 1200.00, 0.00, 0.00, 4, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1533, 1700.00, 1500.00, 0.00, 0.00, 5, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1534, 1700.00, 1500.00, 0.00, 0.00, 6, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1535, 1700.00, 1500.00, 0.00, 0.00, 7, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1536, 1700.00, 1500.00, 0.00, 0.00, 8, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1537, 2000.00, 1800.00, 0.00, 0.00, 1, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1538, 1700.00, 1500.00, 0.00, 0.00, 2, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1539, 1700.00, 1500.00, 0.00, 0.00, 3, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1540, 1400.00, 1200.00, 0.00, 0.00, 4, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1541, 1700.00, 1500.00, 0.00, 0.00, 5, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1542, 1700.00, 1500.00, 0.00, 0.00, 6, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1543, 1700.00, 1500.00, 0.00, 0.00, 7, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1544, 1700.00, 1500.00, 0.00, 0.00, 8, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1545, 2000.00, 1800.00, 0.00, 0.00, 1, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1546, 1700.00, 1500.00, 0.00, 0.00, 2, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1547, 1700.00, 1500.00, 0.00, 0.00, 3, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1548, 1400.00, 1200.00, 0.00, 0.00, 4, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1549, 1700.00, 1500.00, 0.00, 0.00, 5, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1550, 1700.00, 1500.00, 0.00, 0.00, 6, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1551, 1700.00, 1500.00, 0.00, 0.00, 7, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1552, 1700.00, 1500.00, 0.00, 0.00, 8, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1553, 2000.00, 1800.00, 0.00, 0.00, 1, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1554, 1700.00, 1500.00, 0.00, 0.00, 2, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1555, 1700.00, 1500.00, 0.00, 0.00, 3, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1556, 1400.00, 1200.00, 0.00, 0.00, 4, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1557, 1700.00, 1500.00, 0.00, 0.00, 5, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1558, 1700.00, 1500.00, 0.00, 0.00, 6, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1559, 1700.00, 1500.00, 0.00, 0.00, 7, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1560, 1700.00, 1500.00, 0.00, 0.00, 8, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1561, 2000.00, 1800.00, 0.00, 0.00, 1, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1562, 1700.00, 1500.00, 0.00, 0.00, 2, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1563, 1700.00, 1500.00, 0.00, 0.00, 3, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1564, 1400.00, 1200.00, 0.00, 0.00, 4, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1565, 1700.00, 1500.00, 0.00, 0.00, 5, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1566, 1700.00, 1500.00, 0.00, 0.00, 6, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1567, 1700.00, 1500.00, 0.00, 0.00, 7, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1568, 1700.00, 1500.00, 0.00, 0.00, 8, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1569, 2000.00, 1800.00, 0.00, 0.00, 1, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1570, 1700.00, 1500.00, 0.00, 0.00, 2, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1571, 1700.00, 1500.00, 0.00, 0.00, 3, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1572, 1400.00, 1200.00, 0.00, 0.00, 4, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1573, 1700.00, 1500.00, 0.00, 0.00, 5, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1574, 1700.00, 1500.00, 0.00, 0.00, 6, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1575, 1700.00, 1500.00, 0.00, 0.00, 7, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1576, 1700.00, 1500.00, 0.00, 0.00, 8, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1577, 2000.00, 1800.00, 0.00, 0.00, 1, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1578, 1700.00, 1500.00, 0.00, 0.00, 2, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1579, 1700.00, 1500.00, 0.00, 0.00, 3, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1580, 1400.00, 1200.00, 0.00, 0.00, 4, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1581, 1700.00, 1500.00, 0.00, 0.00, 5, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1582, 1700.00, 1500.00, 0.00, 0.00, 6, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1583, 1700.00, 1500.00, 0.00, 0.00, 7, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1584, 1700.00, 1500.00, 0.00, 0.00, 8, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1585, 2000.00, 1800.00, 0.00, 0.00, 1, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1586, 1700.00, 1500.00, 0.00, 0.00, 2, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1587, 1700.00, 1500.00, 0.00, 0.00, 3, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1588, 1400.00, 1200.00, 0.00, 0.00, 4, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1589, 1700.00, 1500.00, 0.00, 0.00, 5, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1590, 1700.00, 1500.00, 0.00, 0.00, 6, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1591, 1700.00, 1500.00, 0.00, 0.00, 7, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1592, 1700.00, 1500.00, 0.00, 0.00, 8, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1593, 2000.00, 1800.00, 0.00, 0.00, 1, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1594, 1700.00, 1500.00, 0.00, 0.00, 2, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1595, 1700.00, 1500.00, 0.00, 0.00, 3, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1596, 1400.00, 1200.00, 0.00, 0.00, 4, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1597, 1700.00, 1500.00, 0.00, 0.00, 5, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1598, 1700.00, 1500.00, 0.00, 0.00, 6, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1599, 1700.00, 1500.00, 0.00, 0.00, 7, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1600, 1700.00, 1500.00, 0.00, 0.00, 8, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1601, 2000.00, 1800.00, 0.00, 0.00, 1, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1602, 1700.00, 1500.00, 0.00, 0.00, 2, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1603, 1700.00, 1500.00, 0.00, 0.00, 3, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1604, 1400.00, 1200.00, 0.00, 0.00, 4, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1605, 1700.00, 1500.00, 0.00, 0.00, 5, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1606, 1700.00, 1500.00, 0.00, 0.00, 6, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1607, 1700.00, 1500.00, 0.00, 0.00, 7, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1608, 1700.00, 1500.00, 0.00, 0.00, 8, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1609, 2000.00, 1800.00, 0.00, 0.00, 1, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1610, 1700.00, 1500.00, 0.00, 0.00, 2, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1611, 1700.00, 1500.00, 0.00, 0.00, 3, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1612, 1400.00, 1200.00, 0.00, 0.00, 4, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1613, 1700.00, 1500.00, 0.00, 0.00, 5, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1614, 1700.00, 1500.00, 0.00, 0.00, 6, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1615, 1700.00, 1500.00, 0.00, 0.00, 7, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1616, 1700.00, 1500.00, 0.00, 0.00, 8, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1617, 2000.00, 1800.00, 0.00, 0.00, 1, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1618, 1700.00, 1500.00, 0.00, 0.00, 2, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1619, 1700.00, 1500.00, 0.00, 0.00, 3, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1620, 1400.00, 1200.00, 0.00, 0.00, 4, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1621, 1700.00, 1500.00, 0.00, 0.00, 5, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1622, 1700.00, 1500.00, 0.00, 0.00, 6, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1623, 1700.00, 1500.00, 0.00, 0.00, 7, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1624, 1700.00, 1500.00, 0.00, 0.00, 8, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1625, 2000.00, 1800.00, 0.00, 0.00, 1, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1626, 1700.00, 1500.00, 0.00, 0.00, 2, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1627, 1700.00, 1500.00, 0.00, 0.00, 3, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1628, 1400.00, 1200.00, 0.00, 0.00, 4, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1629, 1700.00, 1500.00, 0.00, 0.00, 5, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1630, 1700.00, 1500.00, 0.00, 0.00, 6, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1631, 1700.00, 1500.00, 0.00, 0.00, 7, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1632, 1700.00, 1500.00, 0.00, 0.00, 8, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1633, 2000.00, 1800.00, 0.00, 0.00, 1, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1634, 1700.00, 1500.00, 0.00, 0.00, 2, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1635, 1700.00, 1500.00, 0.00, 0.00, 3, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1636, 1400.00, 1200.00, 0.00, 0.00, 4, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1637, 1700.00, 1500.00, 0.00, 0.00, 5, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1638, 1700.00, 1500.00, 0.00, 0.00, 6, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1639, 1700.00, 1500.00, 0.00, 0.00, 7, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1640, 1700.00, 1500.00, 0.00, 0.00, 8, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1641, 2000.00, 1800.00, 0.00, 0.00, 1, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1642, 1700.00, 1500.00, 0.00, 0.00, 2, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1643, 1700.00, 1500.00, 0.00, 0.00, 3, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1644, 1400.00, 1200.00, 0.00, 0.00, 4, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1645, 1700.00, 1500.00, 0.00, 0.00, 5, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1646, 1700.00, 1500.00, 0.00, 0.00, 6, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1647, 1700.00, 1500.00, 0.00, 0.00, 7, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1648, 1700.00, 1500.00, 0.00, 0.00, 8, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1649, 2000.00, 1800.00, 0.00, 0.00, 1, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1650, 1700.00, 1500.00, 0.00, 0.00, 2, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1651, 1700.00, 1500.00, 0.00, 0.00, 3, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1652, 1400.00, 1200.00, 0.00, 0.00, 4, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1653, 1700.00, 1500.00, 0.00, 0.00, 5, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00');
INSERT INTO `product_rates` (`id`, `rate_adult`, `rate_child`, `rate_infant`, `rate_private`, `product_period_id`, `is_approved`, `is_deleted`, `created_at`, `updated_at`) VALUES
(1654, 1700.00, 1500.00, 0.00, 0.00, 6, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1655, 1700.00, 1500.00, 0.00, 0.00, 7, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1656, 1700.00, 1500.00, 0.00, 0.00, 8, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1657, 2000.00, 1800.00, 0.00, 0.00, 1, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1658, 1700.00, 1500.00, 0.00, 0.00, 2, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1659, 1700.00, 1500.00, 0.00, 0.00, 3, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1660, 1400.00, 1200.00, 0.00, 0.00, 4, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1661, 1700.00, 1500.00, 0.00, 0.00, 5, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1662, 1700.00, 1500.00, 0.00, 0.00, 6, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1663, 1700.00, 1500.00, 0.00, 0.00, 7, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1664, 1700.00, 1500.00, 0.00, 0.00, 8, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1665, 2000.00, 1800.00, 0.00, 0.00, 1, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1666, 1700.00, 1500.00, 0.00, 0.00, 2, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1667, 1700.00, 1500.00, 0.00, 0.00, 3, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1668, 1400.00, 1200.00, 0.00, 0.00, 4, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1669, 1700.00, 1500.00, 0.00, 0.00, 5, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1670, 1700.00, 1500.00, 0.00, 0.00, 6, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1671, 1700.00, 1500.00, 0.00, 0.00, 7, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1672, 1700.00, 1500.00, 0.00, 0.00, 8, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1673, 2000.00, 1800.00, 0.00, 0.00, 1, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1674, 1700.00, 1500.00, 0.00, 0.00, 2, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1675, 1700.00, 1500.00, 0.00, 0.00, 3, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1676, 1400.00, 1200.00, 0.00, 0.00, 4, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1677, 1700.00, 1500.00, 0.00, 0.00, 5, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1678, 1700.00, 1500.00, 0.00, 0.00, 6, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1679, 1700.00, 1500.00, 0.00, 0.00, 7, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1680, 1700.00, 1500.00, 0.00, 0.00, 8, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1681, 2000.00, 1800.00, 0.00, 0.00, 1, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1682, 1700.00, 1500.00, 0.00, 0.00, 2, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1683, 1700.00, 1500.00, 0.00, 0.00, 3, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1684, 1400.00, 1200.00, 0.00, 0.00, 4, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1685, 1700.00, 1500.00, 0.00, 0.00, 5, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1686, 1700.00, 1500.00, 0.00, 0.00, 6, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1687, 1700.00, 1500.00, 0.00, 0.00, 7, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1688, 1700.00, 1500.00, 0.00, 0.00, 8, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1689, 2000.00, 1800.00, 0.00, 0.00, 1, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1690, 1700.00, 1500.00, 0.00, 0.00, 2, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1691, 1700.00, 1500.00, 0.00, 0.00, 3, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1692, 1400.00, 1200.00, 0.00, 0.00, 4, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1693, 1700.00, 1500.00, 0.00, 0.00, 5, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1694, 1700.00, 1500.00, 0.00, 0.00, 6, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1695, 1700.00, 1500.00, 0.00, 0.00, 7, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1696, 1700.00, 1500.00, 0.00, 0.00, 8, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1697, 2000.00, 1800.00, 0.00, 0.00, 1, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1698, 1700.00, 1500.00, 0.00, 0.00, 2, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1699, 1700.00, 1500.00, 0.00, 0.00, 3, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1700, 1400.00, 1200.00, 0.00, 0.00, 4, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1701, 1700.00, 1500.00, 0.00, 0.00, 5, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1702, 1700.00, 1500.00, 0.00, 0.00, 6, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1703, 1700.00, 1500.00, 0.00, 0.00, 7, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1704, 1700.00, 1500.00, 0.00, 0.00, 8, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1705, 2000.00, 1800.00, 0.00, 0.00, 1, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1706, 1700.00, 1500.00, 0.00, 0.00, 2, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1707, 1700.00, 1500.00, 0.00, 0.00, 3, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1708, 1400.00, 1200.00, 0.00, 0.00, 4, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1709, 1700.00, 1500.00, 0.00, 0.00, 5, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1710, 1700.00, 1500.00, 0.00, 0.00, 6, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1711, 1700.00, 1500.00, 0.00, 0.00, 7, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1712, 1700.00, 1500.00, 0.00, 0.00, 8, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1713, 2000.00, 1800.00, 0.00, 0.00, 1, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1714, 1700.00, 1500.00, 0.00, 0.00, 2, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1715, 1700.00, 1500.00, 0.00, 0.00, 3, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1716, 1400.00, 1200.00, 0.00, 0.00, 4, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1717, 1700.00, 1500.00, 0.00, 0.00, 5, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1718, 1700.00, 1500.00, 0.00, 0.00, 6, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1719, 1700.00, 1500.00, 0.00, 0.00, 7, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1720, 1700.00, 1500.00, 0.00, 0.00, 8, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1721, 2000.00, 1800.00, 0.00, 0.00, 1, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1722, 1700.00, 1500.00, 0.00, 0.00, 2, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1723, 1700.00, 1500.00, 0.00, 0.00, 3, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1724, 1400.00, 1200.00, 0.00, 0.00, 4, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1725, 1700.00, 1500.00, 0.00, 0.00, 5, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1726, 1700.00, 1500.00, 0.00, 0.00, 6, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1727, 1700.00, 1500.00, 0.00, 0.00, 7, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1728, 1700.00, 1500.00, 0.00, 0.00, 8, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1729, 2000.00, 1800.00, 0.00, 0.00, 1, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1730, 1700.00, 1500.00, 0.00, 0.00, 2, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1731, 1700.00, 1500.00, 0.00, 0.00, 3, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1732, 1400.00, 1200.00, 0.00, 0.00, 4, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1733, 1700.00, 1500.00, 0.00, 0.00, 5, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1734, 1700.00, 1500.00, 0.00, 0.00, 6, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1735, 1700.00, 1500.00, 0.00, 0.00, 7, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1736, 1700.00, 1500.00, 0.00, 0.00, 8, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1737, 2000.00, 1800.00, 0.00, 0.00, 1, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1738, 1700.00, 1500.00, 0.00, 0.00, 2, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1739, 1700.00, 1500.00, 0.00, 0.00, 3, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1740, 1400.00, 1200.00, 0.00, 0.00, 4, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1741, 1700.00, 1500.00, 0.00, 0.00, 5, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1742, 1700.00, 1500.00, 0.00, 0.00, 6, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1743, 1700.00, 1500.00, 0.00, 0.00, 7, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1744, 1700.00, 1500.00, 0.00, 0.00, 8, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1745, 2000.00, 1800.00, 0.00, 0.00, 1, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1746, 1700.00, 1500.00, 0.00, 0.00, 2, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1747, 1700.00, 1500.00, 0.00, 0.00, 3, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1748, 1400.00, 1200.00, 0.00, 0.00, 4, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1749, 1700.00, 1500.00, 0.00, 0.00, 5, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1750, 1700.00, 1500.00, 0.00, 0.00, 6, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1751, 1700.00, 1500.00, 0.00, 0.00, 7, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1752, 1700.00, 1500.00, 0.00, 0.00, 8, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1753, 2000.00, 1800.00, 0.00, 0.00, 1, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1754, 1700.00, 1500.00, 0.00, 0.00, 2, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1755, 1700.00, 1500.00, 0.00, 0.00, 3, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1756, 1400.00, 1200.00, 0.00, 0.00, 4, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1757, 1700.00, 1500.00, 0.00, 0.00, 5, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1758, 1700.00, 1500.00, 0.00, 0.00, 6, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1759, 1700.00, 1500.00, 0.00, 0.00, 7, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1760, 1700.00, 1500.00, 0.00, 0.00, 8, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1761, 2000.00, 1800.00, 0.00, 0.00, 1, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1762, 1700.00, 1500.00, 0.00, 0.00, 2, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1763, 1700.00, 1500.00, 0.00, 0.00, 3, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1764, 1400.00, 1200.00, 0.00, 0.00, 4, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1765, 1700.00, 1500.00, 0.00, 0.00, 5, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1766, 1700.00, 1500.00, 0.00, 0.00, 6, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1767, 1700.00, 1500.00, 0.00, 0.00, 7, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1768, 1700.00, 1500.00, 0.00, 0.00, 8, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1769, 2000.00, 1800.00, 0.00, 0.00, 1, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1770, 1700.00, 1500.00, 0.00, 0.00, 2, 1, 0, '2024-12-18 14:53:00', '2024-12-18 14:53:00'),
(1771, 1700.00, 1500.00, 0.00, 0.00, 3, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(1772, 1400.00, 1200.00, 0.00, 0.00, 4, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(1773, 1700.00, 1500.00, 0.00, 0.00, 5, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(1774, 1700.00, 1500.00, 0.00, 0.00, 6, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(1775, 1700.00, 1500.00, 0.00, 0.00, 7, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(1776, 1700.00, 1500.00, 0.00, 0.00, 8, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(1777, 2000.00, 1800.00, 0.00, 0.00, 1, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(1778, 1700.00, 1500.00, 0.00, 0.00, 2, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(1779, 1700.00, 1500.00, 0.00, 0.00, 3, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(1780, 1400.00, 1200.00, 0.00, 0.00, 4, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(1781, 1700.00, 1500.00, 0.00, 0.00, 5, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(1782, 1700.00, 1500.00, 0.00, 0.00, 6, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(1783, 1700.00, 1500.00, 0.00, 0.00, 7, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(1784, 1700.00, 1500.00, 0.00, 0.00, 8, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(1785, 2000.00, 1800.00, 0.00, 0.00, 1, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(1786, 1700.00, 1500.00, 0.00, 0.00, 2, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(1787, 1700.00, 1500.00, 0.00, 0.00, 3, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(1788, 1400.00, 1200.00, 0.00, 0.00, 4, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(1789, 1700.00, 1500.00, 0.00, 0.00, 5, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(1790, 1700.00, 1500.00, 0.00, 0.00, 6, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(1791, 1700.00, 1500.00, 0.00, 0.00, 7, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(1792, 1700.00, 1500.00, 0.00, 0.00, 8, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(1793, 2000.00, 1800.00, 0.00, 0.00, 1, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(1794, 1700.00, 1500.00, 0.00, 0.00, 2, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(1795, 1700.00, 1500.00, 0.00, 0.00, 3, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(1796, 1400.00, 1200.00, 0.00, 0.00, 4, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(1797, 1700.00, 1500.00, 0.00, 0.00, 5, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(1798, 1700.00, 1500.00, 0.00, 0.00, 6, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(1799, 1700.00, 1500.00, 0.00, 0.00, 7, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(1800, 1700.00, 1500.00, 0.00, 0.00, 8, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(1801, 2000.00, 1800.00, 0.00, 0.00, 1, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(1802, 1700.00, 1500.00, 0.00, 0.00, 2, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(1803, 1700.00, 1500.00, 0.00, 0.00, 3, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(1804, 1400.00, 1200.00, 0.00, 0.00, 4, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(1805, 1700.00, 1500.00, 0.00, 0.00, 5, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(1806, 1700.00, 1500.00, 0.00, 0.00, 6, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(1807, 1700.00, 1500.00, 0.00, 0.00, 7, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(1808, 1700.00, 1500.00, 0.00, 0.00, 8, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(1809, 2000.00, 1800.00, 0.00, 0.00, 1, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(1810, 1700.00, 1500.00, 0.00, 0.00, 2, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(1811, 1700.00, 1500.00, 0.00, 0.00, 3, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(1812, 1400.00, 1200.00, 0.00, 0.00, 4, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(1813, 1700.00, 1500.00, 0.00, 0.00, 5, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(1814, 1700.00, 1500.00, 0.00, 0.00, 6, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(1815, 1700.00, 1500.00, 0.00, 0.00, 7, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(1816, 1700.00, 1500.00, 0.00, 0.00, 8, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(1817, 2000.00, 1800.00, 0.00, 0.00, 1, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(1818, 1700.00, 1500.00, 0.00, 0.00, 2, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(1819, 1700.00, 1500.00, 0.00, 0.00, 3, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(1820, 1400.00, 1200.00, 0.00, 0.00, 4, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(1821, 1700.00, 1500.00, 0.00, 0.00, 5, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(1822, 1700.00, 1500.00, 0.00, 0.00, 6, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(1823, 1700.00, 1500.00, 0.00, 0.00, 7, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(1824, 1700.00, 1500.00, 0.00, 0.00, 8, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(1825, 2000.00, 1800.00, 0.00, 0.00, 1, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(1826, 1700.00, 1500.00, 0.00, 0.00, 2, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(1827, 1700.00, 1500.00, 0.00, 0.00, 3, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(1828, 1400.00, 1200.00, 0.00, 0.00, 4, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(1829, 1700.00, 1500.00, 0.00, 0.00, 5, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(1830, 1700.00, 1500.00, 0.00, 0.00, 6, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(1831, 1700.00, 1500.00, 0.00, 0.00, 7, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(1832, 1700.00, 1500.00, 0.00, 0.00, 8, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(1833, 2000.00, 1800.00, 0.00, 0.00, 1, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(1834, 1700.00, 1500.00, 0.00, 0.00, 2, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(1835, 1700.00, 1500.00, 0.00, 0.00, 3, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(1836, 1400.00, 1200.00, 0.00, 0.00, 4, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(1837, 1700.00, 1500.00, 0.00, 0.00, 5, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(1838, 1700.00, 1500.00, 0.00, 0.00, 6, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(1839, 1700.00, 1500.00, 0.00, 0.00, 7, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(1840, 1700.00, 1500.00, 0.00, 0.00, 8, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(1841, 2000.00, 1800.00, 0.00, 0.00, 1, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(1842, 1700.00, 1500.00, 0.00, 0.00, 2, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(1843, 1700.00, 1500.00, 0.00, 0.00, 3, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(1844, 1400.00, 1200.00, 0.00, 0.00, 4, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(1845, 1700.00, 1500.00, 0.00, 0.00, 5, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(1846, 1700.00, 1500.00, 0.00, 0.00, 6, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(1847, 1700.00, 1500.00, 0.00, 0.00, 7, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(1848, 1700.00, 1500.00, 0.00, 0.00, 8, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(1849, 2000.00, 1800.00, 0.00, 0.00, 1, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(1850, 1700.00, 1500.00, 0.00, 0.00, 2, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(1851, 1700.00, 1500.00, 0.00, 0.00, 3, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(1852, 1400.00, 1200.00, 0.00, 0.00, 4, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(1853, 1700.00, 1500.00, 0.00, 0.00, 5, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(1854, 1700.00, 1500.00, 0.00, 0.00, 6, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(1855, 1700.00, 1500.00, 0.00, 0.00, 7, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(1856, 1700.00, 1500.00, 0.00, 0.00, 8, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(1857, 2000.00, 1800.00, 0.00, 0.00, 1, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(1858, 1700.00, 1500.00, 0.00, 0.00, 2, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(1859, 1700.00, 1500.00, 0.00, 0.00, 3, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(1860, 1400.00, 1200.00, 0.00, 0.00, 4, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(1861, 1700.00, 1500.00, 0.00, 0.00, 5, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(1862, 1700.00, 1500.00, 0.00, 0.00, 6, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(1863, 1700.00, 1500.00, 0.00, 0.00, 7, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(1864, 1700.00, 1500.00, 0.00, 0.00, 8, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(1865, 2000.00, 1800.00, 0.00, 0.00, 1, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(1866, 1700.00, 1500.00, 0.00, 0.00, 2, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(1867, 1700.00, 1500.00, 0.00, 0.00, 3, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(1868, 1400.00, 1200.00, 0.00, 0.00, 4, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(1869, 1700.00, 1500.00, 0.00, 0.00, 5, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(1870, 1700.00, 1500.00, 0.00, 0.00, 6, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(1871, 1700.00, 1500.00, 0.00, 0.00, 7, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(1872, 1700.00, 1500.00, 0.00, 0.00, 8, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(1873, 2000.00, 1800.00, 0.00, 0.00, 1, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(1874, 1700.00, 1500.00, 0.00, 0.00, 2, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(1875, 1700.00, 1500.00, 0.00, 0.00, 3, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(1876, 1400.00, 1200.00, 0.00, 0.00, 4, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(1877, 1700.00, 1500.00, 0.00, 0.00, 5, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(1878, 1700.00, 1500.00, 0.00, 0.00, 6, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(1879, 1700.00, 1500.00, 0.00, 0.00, 7, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(1880, 1700.00, 1500.00, 0.00, 0.00, 8, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(1881, 2000.00, 1800.00, 0.00, 0.00, 1, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(1882, 1700.00, 1500.00, 0.00, 0.00, 2, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(1883, 1700.00, 1500.00, 0.00, 0.00, 3, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(1884, 1400.00, 1200.00, 0.00, 0.00, 4, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(1885, 1700.00, 1500.00, 0.00, 0.00, 5, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(1886, 1700.00, 1500.00, 0.00, 0.00, 6, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(1887, 1700.00, 1500.00, 0.00, 0.00, 7, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(1888, 1700.00, 1500.00, 0.00, 0.00, 8, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(1889, 2000.00, 1800.00, 0.00, 0.00, 1, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(1890, 1700.00, 1500.00, 0.00, 0.00, 2, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(1891, 1700.00, 1500.00, 0.00, 0.00, 3, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(1892, 1400.00, 1200.00, 0.00, 0.00, 4, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(1893, 1700.00, 1500.00, 0.00, 0.00, 5, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(1894, 1700.00, 1500.00, 0.00, 0.00, 6, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(1895, 1700.00, 1500.00, 0.00, 0.00, 7, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(1896, 1700.00, 1500.00, 0.00, 0.00, 8, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(1897, 2000.00, 1800.00, 0.00, 0.00, 1, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(1898, 1700.00, 1500.00, 0.00, 0.00, 2, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(1899, 1700.00, 1500.00, 0.00, 0.00, 3, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(1900, 1400.00, 1200.00, 0.00, 0.00, 4, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(1901, 1700.00, 1500.00, 0.00, 0.00, 5, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(1902, 1700.00, 1500.00, 0.00, 0.00, 6, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(1903, 1700.00, 1500.00, 0.00, 0.00, 7, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(1904, 1700.00, 1500.00, 0.00, 0.00, 8, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(1905, 2000.00, 1800.00, 0.00, 0.00, 1, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(1906, 1700.00, 1500.00, 0.00, 0.00, 2, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(1907, 1700.00, 1500.00, 0.00, 0.00, 3, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(1908, 1400.00, 1200.00, 0.00, 0.00, 4, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(1909, 1700.00, 1500.00, 0.00, 0.00, 5, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(1910, 1700.00, 1500.00, 0.00, 0.00, 6, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(1911, 1700.00, 1500.00, 0.00, 0.00, 7, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(1912, 1700.00, 1500.00, 0.00, 0.00, 8, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(1913, 2000.00, 1800.00, 0.00, 0.00, 1, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(1914, 1700.00, 1500.00, 0.00, 0.00, 2, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(1915, 1700.00, 1500.00, 0.00, 0.00, 3, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(1916, 1400.00, 1200.00, 0.00, 0.00, 4, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(1917, 1700.00, 1500.00, 0.00, 0.00, 5, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(1918, 1700.00, 1500.00, 0.00, 0.00, 6, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(1919, 1700.00, 1500.00, 0.00, 0.00, 7, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(1920, 1700.00, 1500.00, 0.00, 0.00, 8, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(1921, 2000.00, 1800.00, 0.00, 0.00, 1, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(1922, 1700.00, 1500.00, 0.00, 0.00, 2, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(1923, 1700.00, 1500.00, 0.00, 0.00, 3, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(1924, 1400.00, 1200.00, 0.00, 0.00, 4, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(1925, 1700.00, 1500.00, 0.00, 0.00, 5, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(1926, 1700.00, 1500.00, 0.00, 0.00, 6, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(1927, 1700.00, 1500.00, 0.00, 0.00, 7, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(1928, 1700.00, 1500.00, 0.00, 0.00, 8, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(1929, 2000.00, 1800.00, 0.00, 0.00, 1, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(1930, 1700.00, 1500.00, 0.00, 0.00, 2, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(1931, 1700.00, 1500.00, 0.00, 0.00, 3, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(1932, 1400.00, 1200.00, 0.00, 0.00, 4, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(1933, 1700.00, 1500.00, 0.00, 0.00, 5, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(1934, 1700.00, 1500.00, 0.00, 0.00, 6, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(1935, 1700.00, 1500.00, 0.00, 0.00, 7, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(1936, 1700.00, 1500.00, 0.00, 0.00, 8, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(1937, 2000.00, 1800.00, 0.00, 0.00, 1, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(1938, 1700.00, 1500.00, 0.00, 0.00, 2, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(1939, 1700.00, 1500.00, 0.00, 0.00, 3, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(1940, 1400.00, 1200.00, 0.00, 0.00, 4, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(1941, 1700.00, 1500.00, 0.00, 0.00, 5, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(1942, 1700.00, 1500.00, 0.00, 0.00, 6, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(1943, 1700.00, 1500.00, 0.00, 0.00, 7, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(1944, 1700.00, 1500.00, 0.00, 0.00, 8, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(1945, 2000.00, 1800.00, 0.00, 0.00, 1, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(1946, 1700.00, 1500.00, 0.00, 0.00, 2, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(1947, 1700.00, 1500.00, 0.00, 0.00, 3, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(1948, 1400.00, 1200.00, 0.00, 0.00, 4, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(1949, 1700.00, 1500.00, 0.00, 0.00, 5, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(1950, 1700.00, 1500.00, 0.00, 0.00, 6, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(1951, 1700.00, 1500.00, 0.00, 0.00, 7, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(1952, 1700.00, 1500.00, 0.00, 0.00, 8, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(1953, 2000.00, 1800.00, 0.00, 0.00, 1, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(1954, 1700.00, 1500.00, 0.00, 0.00, 2, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(1955, 1700.00, 1500.00, 0.00, 0.00, 3, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(1956, 1400.00, 1200.00, 0.00, 0.00, 4, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(1957, 1700.00, 1500.00, 0.00, 0.00, 5, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(1958, 1700.00, 1500.00, 0.00, 0.00, 6, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(1959, 1700.00, 1500.00, 0.00, 0.00, 7, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(1960, 1700.00, 1500.00, 0.00, 0.00, 8, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(1961, 2000.00, 1800.00, 0.00, 0.00, 1, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(1962, 1700.00, 1500.00, 0.00, 0.00, 2, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(1963, 1700.00, 1500.00, 0.00, 0.00, 3, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(1964, 1400.00, 1200.00, 0.00, 0.00, 4, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(1965, 1700.00, 1500.00, 0.00, 0.00, 5, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(1966, 1700.00, 1500.00, 0.00, 0.00, 6, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(1967, 1700.00, 1500.00, 0.00, 0.00, 7, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(1968, 1700.00, 1500.00, 0.00, 0.00, 8, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(1969, 2000.00, 1800.00, 0.00, 0.00, 1, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(1970, 1700.00, 1500.00, 0.00, 0.00, 2, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(1971, 1700.00, 1500.00, 0.00, 0.00, 3, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(1972, 1400.00, 1200.00, 0.00, 0.00, 4, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(1973, 1700.00, 1500.00, 0.00, 0.00, 5, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(1974, 1700.00, 1500.00, 0.00, 0.00, 6, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(1975, 1700.00, 1500.00, 0.00, 0.00, 7, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(1976, 1700.00, 1500.00, 0.00, 0.00, 8, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(1977, 2000.00, 1800.00, 0.00, 0.00, 1, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(1978, 1700.00, 1500.00, 0.00, 0.00, 2, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(1979, 1700.00, 1500.00, 0.00, 0.00, 3, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(1980, 1400.00, 1200.00, 0.00, 0.00, 4, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(1981, 1700.00, 1500.00, 0.00, 0.00, 5, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(1982, 1700.00, 1500.00, 0.00, 0.00, 6, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(1983, 1700.00, 1500.00, 0.00, 0.00, 7, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(1984, 1700.00, 1500.00, 0.00, 0.00, 8, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(1985, 2000.00, 1800.00, 0.00, 0.00, 1, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(1986, 1700.00, 1500.00, 0.00, 0.00, 2, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(1987, 1700.00, 1500.00, 0.00, 0.00, 3, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(1988, 1400.00, 1200.00, 0.00, 0.00, 4, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(1989, 1700.00, 1500.00, 0.00, 0.00, 5, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(1990, 1700.00, 1500.00, 0.00, 0.00, 6, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(1991, 1700.00, 1500.00, 0.00, 0.00, 7, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(1992, 1700.00, 1500.00, 0.00, 0.00, 8, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(1993, 2000.00, 1800.00, 0.00, 0.00, 1, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(1994, 1700.00, 1500.00, 0.00, 0.00, 2, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(1995, 1700.00, 1500.00, 0.00, 0.00, 3, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(1996, 1400.00, 1200.00, 0.00, 0.00, 4, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(1997, 1700.00, 1500.00, 0.00, 0.00, 5, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(1998, 1700.00, 1500.00, 0.00, 0.00, 6, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(1999, 1700.00, 1500.00, 0.00, 0.00, 7, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(2000, 1700.00, 1500.00, 0.00, 0.00, 8, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(2001, 2000.00, 1800.00, 0.00, 0.00, 1, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(2002, 1700.00, 1500.00, 0.00, 0.00, 2, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(2003, 1700.00, 1500.00, 0.00, 0.00, 3, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(2004, 1400.00, 1200.00, 0.00, 0.00, 4, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(2005, 1700.00, 1500.00, 0.00, 0.00, 5, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(2006, 1700.00, 1500.00, 0.00, 0.00, 6, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(2007, 1700.00, 1500.00, 0.00, 0.00, 7, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(2008, 1700.00, 1500.00, 0.00, 0.00, 8, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(2009, 2000.00, 1800.00, 0.00, 0.00, 1, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(2010, 1700.00, 1500.00, 0.00, 0.00, 2, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(2011, 1700.00, 1500.00, 0.00, 0.00, 3, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(2012, 1400.00, 1200.00, 0.00, 0.00, 4, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(2013, 1700.00, 1500.00, 0.00, 0.00, 5, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(2014, 1700.00, 1500.00, 0.00, 0.00, 6, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(2015, 1700.00, 1500.00, 0.00, 0.00, 7, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(2016, 1700.00, 1500.00, 0.00, 0.00, 8, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(2017, 2000.00, 1800.00, 0.00, 0.00, 1, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(2018, 1700.00, 1500.00, 0.00, 0.00, 2, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(2019, 1700.00, 1500.00, 0.00, 0.00, 3, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(2020, 1400.00, 1200.00, 0.00, 0.00, 4, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(2021, 1700.00, 1500.00, 0.00, 0.00, 5, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(2022, 1700.00, 1500.00, 0.00, 0.00, 6, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(2023, 1700.00, 1500.00, 0.00, 0.00, 7, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(2024, 1700.00, 1500.00, 0.00, 0.00, 8, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(2025, 2000.00, 1800.00, 0.00, 0.00, 1, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(2026, 1700.00, 1500.00, 0.00, 0.00, 2, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(2027, 1700.00, 1500.00, 0.00, 0.00, 3, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(2028, 1400.00, 1200.00, 0.00, 0.00, 4, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(2029, 1700.00, 1500.00, 0.00, 0.00, 5, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(2030, 1700.00, 1500.00, 0.00, 0.00, 6, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(2031, 1700.00, 1500.00, 0.00, 0.00, 7, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(2032, 1700.00, 1500.00, 0.00, 0.00, 8, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(2033, 2000.00, 1800.00, 0.00, 0.00, 1, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(2034, 1700.00, 1500.00, 0.00, 0.00, 2, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(2035, 1700.00, 1500.00, 0.00, 0.00, 3, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(2036, 1400.00, 1200.00, 0.00, 0.00, 4, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(2037, 1700.00, 1500.00, 0.00, 0.00, 5, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(2038, 1700.00, 1500.00, 0.00, 0.00, 6, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(2039, 1700.00, 1500.00, 0.00, 0.00, 7, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(2040, 1700.00, 1500.00, 0.00, 0.00, 8, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(2041, 2000.00, 1800.00, 0.00, 0.00, 1, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(2042, 1700.00, 1500.00, 0.00, 0.00, 2, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(2043, 1700.00, 1500.00, 0.00, 0.00, 3, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(2044, 1400.00, 1200.00, 0.00, 0.00, 4, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(2045, 1700.00, 1500.00, 0.00, 0.00, 5, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(2046, 1700.00, 1500.00, 0.00, 0.00, 6, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(2047, 1700.00, 1500.00, 0.00, 0.00, 7, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(2048, 1700.00, 1500.00, 0.00, 0.00, 8, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(2049, 2000.00, 1800.00, 0.00, 0.00, 1, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(2050, 1700.00, 1500.00, 0.00, 0.00, 2, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(2051, 1700.00, 1500.00, 0.00, 0.00, 3, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(2052, 1400.00, 1200.00, 0.00, 0.00, 4, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(2053, 1700.00, 1500.00, 0.00, 0.00, 5, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(2054, 1700.00, 1500.00, 0.00, 0.00, 6, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(2055, 1700.00, 1500.00, 0.00, 0.00, 7, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(2056, 1700.00, 1500.00, 0.00, 0.00, 8, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(2057, 2000.00, 1800.00, 0.00, 0.00, 1, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(2058, 1700.00, 1500.00, 0.00, 0.00, 2, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(2059, 1700.00, 1500.00, 0.00, 0.00, 3, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(2060, 1400.00, 1200.00, 0.00, 0.00, 4, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(2061, 1700.00, 1500.00, 0.00, 0.00, 5, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(2062, 1700.00, 1500.00, 0.00, 0.00, 6, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(2063, 1700.00, 1500.00, 0.00, 0.00, 7, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(2064, 1700.00, 1500.00, 0.00, 0.00, 8, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(2065, 2000.00, 1800.00, 0.00, 0.00, 1, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(2066, 1700.00, 1500.00, 0.00, 0.00, 2, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(2067, 1700.00, 1500.00, 0.00, 0.00, 3, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(2068, 1400.00, 1200.00, 0.00, 0.00, 4, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(2069, 1700.00, 1500.00, 0.00, 0.00, 5, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(2070, 1700.00, 1500.00, 0.00, 0.00, 6, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(2071, 1700.00, 1500.00, 0.00, 0.00, 7, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(2072, 1700.00, 1500.00, 0.00, 0.00, 8, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(2073, 2000.00, 1800.00, 0.00, 0.00, 1, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(2074, 1700.00, 1500.00, 0.00, 0.00, 2, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(2075, 1700.00, 1500.00, 0.00, 0.00, 3, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(2076, 1400.00, 1200.00, 0.00, 0.00, 4, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(2077, 1700.00, 1500.00, 0.00, 0.00, 5, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(2078, 1700.00, 1500.00, 0.00, 0.00, 6, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(2079, 1700.00, 1500.00, 0.00, 0.00, 7, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(2080, 1700.00, 1500.00, 0.00, 0.00, 8, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(2081, 2000.00, 1800.00, 0.00, 0.00, 1, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(2082, 1700.00, 1500.00, 0.00, 0.00, 2, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(2083, 1700.00, 1500.00, 0.00, 0.00, 3, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(2084, 1400.00, 1200.00, 0.00, 0.00, 4, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(2085, 1700.00, 1500.00, 0.00, 0.00, 5, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(2086, 1700.00, 1500.00, 0.00, 0.00, 6, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(2087, 1700.00, 1500.00, 0.00, 0.00, 7, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(2088, 1700.00, 1500.00, 0.00, 0.00, 8, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(2089, 2000.00, 1800.00, 0.00, 0.00, 1, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(2090, 1700.00, 1500.00, 0.00, 0.00, 2, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(2091, 1700.00, 1500.00, 0.00, 0.00, 3, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(2092, 1400.00, 1200.00, 0.00, 0.00, 4, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(2093, 1700.00, 1500.00, 0.00, 0.00, 5, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(2094, 1700.00, 1500.00, 0.00, 0.00, 6, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(2095, 1700.00, 1500.00, 0.00, 0.00, 7, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(2096, 1700.00, 1500.00, 0.00, 0.00, 8, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(2097, 2000.00, 1800.00, 0.00, 0.00, 1, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(2098, 1700.00, 1500.00, 0.00, 0.00, 2, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(2099, 1700.00, 1500.00, 0.00, 0.00, 3, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(2100, 1400.00, 1200.00, 0.00, 0.00, 4, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(2101, 1700.00, 1500.00, 0.00, 0.00, 5, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(2102, 1700.00, 1500.00, 0.00, 0.00, 6, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(2103, 1700.00, 1500.00, 0.00, 0.00, 7, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(2104, 1700.00, 1500.00, 0.00, 0.00, 8, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(2105, 2000.00, 1800.00, 0.00, 0.00, 1, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(2106, 1700.00, 1500.00, 0.00, 0.00, 2, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(2107, 1700.00, 1500.00, 0.00, 0.00, 3, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(2108, 1400.00, 1200.00, 0.00, 0.00, 4, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(2109, 1700.00, 1500.00, 0.00, 0.00, 5, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(2110, 1700.00, 1500.00, 0.00, 0.00, 6, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(2111, 1700.00, 1500.00, 0.00, 0.00, 7, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(2112, 1700.00, 1500.00, 0.00, 0.00, 8, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(2113, 2000.00, 1800.00, 0.00, 0.00, 1, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(2114, 1700.00, 1500.00, 0.00, 0.00, 2, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(2115, 1700.00, 1500.00, 0.00, 0.00, 3, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(2116, 1400.00, 1200.00, 0.00, 0.00, 4, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(2117, 1700.00, 1500.00, 0.00, 0.00, 5, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(2118, 1700.00, 1500.00, 0.00, 0.00, 6, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(2119, 1700.00, 1500.00, 0.00, 0.00, 7, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(2120, 1700.00, 1500.00, 0.00, 0.00, 8, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(2121, 2000.00, 1800.00, 0.00, 0.00, 1, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(2122, 1700.00, 1500.00, 0.00, 0.00, 2, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(2123, 1700.00, 1500.00, 0.00, 0.00, 3, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(2124, 1400.00, 1200.00, 0.00, 0.00, 4, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(2125, 1700.00, 1500.00, 0.00, 0.00, 5, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(2126, 1700.00, 1500.00, 0.00, 0.00, 6, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(2127, 1700.00, 1500.00, 0.00, 0.00, 7, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(2128, 1700.00, 1500.00, 0.00, 0.00, 8, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(2129, 2000.00, 1800.00, 0.00, 0.00, 1, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(2130, 1700.00, 1500.00, 0.00, 0.00, 2, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(2131, 1700.00, 1500.00, 0.00, 0.00, 3, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(2132, 1400.00, 1200.00, 0.00, 0.00, 4, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(2133, 1700.00, 1500.00, 0.00, 0.00, 5, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(2134, 1700.00, 1500.00, 0.00, 0.00, 6, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(2135, 1700.00, 1500.00, 0.00, 0.00, 7, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(2136, 1700.00, 1500.00, 0.00, 0.00, 8, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(2137, 2000.00, 1700.00, 0.00, 0.00, 1, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(2138, 1700.00, 1400.00, 0.00, 0.00, 2, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(2139, 1700.00, 1500.00, 0.00, 0.00, 3, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(2140, 1400.00, 1200.00, 0.00, 0.00, 4, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(2141, 1500.00, 1300.00, 0.00, 0.00, 5, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(2142, 1500.00, 1300.00, 0.00, 0.00, 6, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(2143, 1500.00, 1300.00, 0.00, 0.00, 7, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(2144, 1500.00, 1300.00, 0.00, 0.00, 8, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(2145, 2000.00, 1700.00, 0.00, 0.00, 1, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(2146, 1700.00, 1400.00, 0.00, 0.00, 2, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(2147, 1700.00, 1500.00, 0.00, 0.00, 3, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(2148, 1400.00, 1200.00, 0.00, 0.00, 4, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(2149, 1500.00, 1300.00, 0.00, 0.00, 5, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(2150, 1500.00, 1300.00, 0.00, 0.00, 6, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(2151, 1500.00, 1300.00, 0.00, 0.00, 7, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(2152, 1500.00, 1300.00, 0.00, 0.00, 8, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(2153, 2000.00, 1700.00, 0.00, 0.00, 1, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(2154, 1700.00, 1400.00, 0.00, 0.00, 2, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(2155, 1700.00, 1500.00, 0.00, 0.00, 3, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(2156, 1400.00, 1200.00, 0.00, 0.00, 4, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(2157, 1500.00, 1300.00, 0.00, 0.00, 5, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(2158, 1500.00, 1300.00, 0.00, 0.00, 6, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(2159, 1500.00, 1300.00, 0.00, 0.00, 7, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(2160, 1500.00, 1300.00, 0.00, 0.00, 8, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(2161, 2000.00, 1700.00, 0.00, 0.00, 1, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(2162, 1700.00, 1400.00, 0.00, 0.00, 2, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(2163, 1700.00, 1500.00, 0.00, 0.00, 3, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(2164, 1400.00, 1200.00, 0.00, 0.00, 4, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(2165, 1500.00, 1300.00, 0.00, 0.00, 5, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(2166, 1500.00, 1300.00, 0.00, 0.00, 6, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(2167, 1500.00, 1300.00, 0.00, 0.00, 7, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(2168, 1500.00, 1300.00, 0.00, 0.00, 8, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(2169, 2000.00, 1700.00, 0.00, 0.00, 1, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(2170, 1700.00, 1400.00, 0.00, 0.00, 2, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(2171, 1700.00, 1500.00, 0.00, 0.00, 3, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(2172, 1400.00, 1200.00, 0.00, 0.00, 4, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(2173, 1500.00, 1300.00, 0.00, 0.00, 5, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(2174, 1500.00, 1300.00, 0.00, 0.00, 6, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(2175, 1500.00, 1300.00, 0.00, 0.00, 7, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(2176, 1500.00, 1300.00, 0.00, 0.00, 8, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(2177, 2000.00, 1700.00, 0.00, 0.00, 1, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(2178, 1700.00, 1400.00, 0.00, 0.00, 2, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(2179, 1700.00, 1500.00, 0.00, 0.00, 3, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(2180, 1400.00, 1200.00, 0.00, 0.00, 4, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(2181, 1500.00, 1300.00, 0.00, 0.00, 5, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(2182, 1500.00, 1300.00, 0.00, 0.00, 6, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(2183, 1500.00, 1300.00, 0.00, 0.00, 7, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(2184, 1500.00, 1300.00, 0.00, 0.00, 8, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(2185, 2000.00, 1700.00, 0.00, 0.00, 1, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(2186, 1700.00, 1400.00, 0.00, 0.00, 2, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(2187, 1700.00, 1500.00, 0.00, 0.00, 3, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(2188, 1400.00, 1200.00, 0.00, 0.00, 4, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(2189, 1500.00, 1300.00, 0.00, 0.00, 5, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(2190, 1500.00, 1300.00, 0.00, 0.00, 6, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(2191, 1500.00, 1300.00, 0.00, 0.00, 7, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(2192, 1500.00, 1300.00, 0.00, 0.00, 8, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(2193, 2000.00, 1700.00, 0.00, 0.00, 1, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(2194, 1700.00, 1400.00, 0.00, 0.00, 2, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(2195, 1700.00, 1500.00, 0.00, 0.00, 3, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(2196, 1400.00, 1200.00, 0.00, 0.00, 4, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(2197, 1500.00, 1300.00, 0.00, 0.00, 5, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(2198, 1500.00, 1300.00, 0.00, 0.00, 6, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(2199, 1500.00, 1300.00, 0.00, 0.00, 7, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(2200, 1500.00, 1300.00, 0.00, 0.00, 8, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01');
INSERT INTO `product_rates` (`id`, `rate_adult`, `rate_child`, `rate_infant`, `rate_private`, `product_period_id`, `is_approved`, `is_deleted`, `created_at`, `updated_at`) VALUES
(2201, 2000.00, 1700.00, 0.00, 0.00, 1, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(2202, 1700.00, 1400.00, 0.00, 0.00, 2, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(2203, 1700.00, 1500.00, 0.00, 0.00, 3, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(2204, 1400.00, 1200.00, 0.00, 0.00, 4, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(2205, 1500.00, 1300.00, 0.00, 0.00, 5, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(2206, 1500.00, 1300.00, 0.00, 0.00, 6, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(2207, 1500.00, 1300.00, 0.00, 0.00, 7, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(2208, 1500.00, 1300.00, 0.00, 0.00, 8, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(2209, 2000.00, 1700.00, 0.00, 0.00, 1, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(2210, 1700.00, 1400.00, 0.00, 0.00, 2, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(2211, 1700.00, 1500.00, 0.00, 0.00, 3, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(2212, 1400.00, 1200.00, 0.00, 0.00, 4, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(2213, 1500.00, 1300.00, 0.00, 0.00, 5, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(2214, 1500.00, 1300.00, 0.00, 0.00, 6, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(2215, 1500.00, 1300.00, 0.00, 0.00, 7, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(2216, 1500.00, 1300.00, 0.00, 0.00, 8, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(2217, 2000.00, 1700.00, 0.00, 0.00, 1, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(2218, 1700.00, 1400.00, 0.00, 0.00, 2, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(2219, 1700.00, 1500.00, 0.00, 0.00, 3, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(2220, 1400.00, 1200.00, 0.00, 0.00, 4, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(2221, 1500.00, 1300.00, 0.00, 0.00, 5, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(2222, 1500.00, 1300.00, 0.00, 0.00, 6, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(2223, 1500.00, 1300.00, 0.00, 0.00, 7, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(2224, 1500.00, 1300.00, 0.00, 0.00, 8, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(2225, 2000.00, 1700.00, 0.00, 0.00, 1, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(2226, 1700.00, 1400.00, 0.00, 0.00, 2, 1, 0, '2024-12-18 14:53:01', '2024-12-18 14:53:01'),
(2227, 1700.00, 1500.00, 0.00, 0.00, 3, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2228, 1400.00, 1200.00, 0.00, 0.00, 4, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2229, 1500.00, 1300.00, 0.00, 0.00, 5, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2230, 1500.00, 1300.00, 0.00, 0.00, 6, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2231, 1500.00, 1300.00, 0.00, 0.00, 7, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2232, 1500.00, 1300.00, 0.00, 0.00, 8, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2233, 2000.00, 1700.00, 0.00, 0.00, 1, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2234, 1700.00, 1400.00, 0.00, 0.00, 2, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2235, 1700.00, 1500.00, 0.00, 0.00, 3, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2236, 1400.00, 1200.00, 0.00, 0.00, 4, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2237, 1500.00, 1300.00, 0.00, 0.00, 5, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2238, 1500.00, 1300.00, 0.00, 0.00, 6, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2239, 1500.00, 1300.00, 0.00, 0.00, 7, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2240, 1500.00, 1300.00, 0.00, 0.00, 8, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2241, 2000.00, 1700.00, 0.00, 0.00, 1, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2242, 1700.00, 1400.00, 0.00, 0.00, 2, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2243, 1700.00, 1500.00, 0.00, 0.00, 3, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2244, 1400.00, 1200.00, 0.00, 0.00, 4, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2245, 1500.00, 1300.00, 0.00, 0.00, 5, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2246, 1500.00, 1300.00, 0.00, 0.00, 6, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2247, 1500.00, 1300.00, 0.00, 0.00, 7, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2248, 1500.00, 1300.00, 0.00, 0.00, 8, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2249, 2000.00, 1700.00, 0.00, 0.00, 1, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2250, 1700.00, 1400.00, 0.00, 0.00, 2, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2251, 1700.00, 1500.00, 0.00, 0.00, 3, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2252, 1400.00, 1200.00, 0.00, 0.00, 4, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2253, 1500.00, 1300.00, 0.00, 0.00, 5, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2254, 1500.00, 1300.00, 0.00, 0.00, 6, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2255, 1500.00, 1300.00, 0.00, 0.00, 7, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2256, 1500.00, 1300.00, 0.00, 0.00, 8, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2257, 2000.00, 1700.00, 0.00, 0.00, 1, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2258, 1700.00, 1400.00, 0.00, 0.00, 2, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2259, 1700.00, 1500.00, 0.00, 0.00, 3, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2260, 1400.00, 1200.00, 0.00, 0.00, 4, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2261, 1500.00, 1300.00, 0.00, 0.00, 5, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2262, 1500.00, 1300.00, 0.00, 0.00, 6, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2263, 1500.00, 1300.00, 0.00, 0.00, 7, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2264, 1500.00, 1300.00, 0.00, 0.00, 8, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2265, 2000.00, 1700.00, 0.00, 0.00, 1, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2266, 1700.00, 1400.00, 0.00, 0.00, 2, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2267, 1700.00, 1500.00, 0.00, 0.00, 3, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2268, 1400.00, 1200.00, 0.00, 0.00, 4, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2269, 1500.00, 1300.00, 0.00, 0.00, 5, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2270, 1500.00, 1300.00, 0.00, 0.00, 6, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2271, 1500.00, 1300.00, 0.00, 0.00, 7, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2272, 1500.00, 1300.00, 0.00, 0.00, 8, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2273, 2000.00, 1700.00, 0.00, 0.00, 1, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2274, 1700.00, 1400.00, 0.00, 0.00, 2, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2275, 1700.00, 1500.00, 0.00, 0.00, 3, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2276, 1400.00, 1200.00, 0.00, 0.00, 4, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2277, 1500.00, 1300.00, 0.00, 0.00, 5, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2278, 1500.00, 1300.00, 0.00, 0.00, 6, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2279, 1500.00, 1300.00, 0.00, 0.00, 7, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2280, 1500.00, 1300.00, 0.00, 0.00, 8, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2281, 2000.00, 1700.00, 0.00, 0.00, 1, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2282, 1700.00, 1400.00, 0.00, 0.00, 2, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2283, 1700.00, 1500.00, 0.00, 0.00, 3, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2284, 1400.00, 1200.00, 0.00, 0.00, 4, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2285, 1500.00, 1300.00, 0.00, 0.00, 5, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2286, 1500.00, 1300.00, 0.00, 0.00, 6, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2287, 1500.00, 1300.00, 0.00, 0.00, 7, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2288, 1500.00, 1300.00, 0.00, 0.00, 8, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2289, 2000.00, 1700.00, 0.00, 0.00, 1, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2290, 1700.00, 1400.00, 0.00, 0.00, 2, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2291, 1700.00, 1500.00, 0.00, 0.00, 3, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2292, 1400.00, 1200.00, 0.00, 0.00, 4, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2293, 1500.00, 1300.00, 0.00, 0.00, 5, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2294, 1500.00, 1300.00, 0.00, 0.00, 6, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2295, 1500.00, 1300.00, 0.00, 0.00, 7, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2296, 1500.00, 1300.00, 0.00, 0.00, 8, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2297, 2000.00, 1700.00, 0.00, 0.00, 1, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2298, 1700.00, 1400.00, 0.00, 0.00, 2, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2299, 1700.00, 1500.00, 0.00, 0.00, 3, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2300, 1400.00, 1200.00, 0.00, 0.00, 4, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2301, 1500.00, 1300.00, 0.00, 0.00, 5, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2302, 1500.00, 1300.00, 0.00, 0.00, 6, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2303, 1500.00, 1300.00, 0.00, 0.00, 7, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2304, 1500.00, 1300.00, 0.00, 0.00, 8, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2305, 2000.00, 1700.00, 0.00, 0.00, 1, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2306, 1700.00, 1400.00, 0.00, 0.00, 2, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2307, 1700.00, 1500.00, 0.00, 0.00, 3, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2308, 1400.00, 1200.00, 0.00, 0.00, 4, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2309, 1500.00, 1300.00, 0.00, 0.00, 5, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2310, 1500.00, 1300.00, 0.00, 0.00, 6, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2311, 1500.00, 1300.00, 0.00, 0.00, 7, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2312, 1500.00, 1300.00, 0.00, 0.00, 8, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2313, 2000.00, 1700.00, 0.00, 0.00, 1, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2314, 1700.00, 1400.00, 0.00, 0.00, 2, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2315, 1700.00, 1500.00, 0.00, 0.00, 3, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2316, 1400.00, 1200.00, 0.00, 0.00, 4, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2317, 1500.00, 1300.00, 0.00, 0.00, 5, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2318, 1500.00, 1300.00, 0.00, 0.00, 6, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2319, 1500.00, 1300.00, 0.00, 0.00, 7, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2320, 1500.00, 1300.00, 0.00, 0.00, 8, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2321, 2000.00, 1700.00, 0.00, 0.00, 1, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2322, 1700.00, 1400.00, 0.00, 0.00, 2, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2323, 1700.00, 1500.00, 0.00, 0.00, 3, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2324, 1400.00, 1200.00, 0.00, 0.00, 4, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2325, 1500.00, 1300.00, 0.00, 0.00, 5, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2326, 1500.00, 1300.00, 0.00, 0.00, 6, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2327, 1500.00, 1300.00, 0.00, 0.00, 7, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2328, 1500.00, 1300.00, 0.00, 0.00, 8, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2329, 2000.00, 1700.00, 0.00, 0.00, 1, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2330, 1700.00, 1400.00, 0.00, 0.00, 2, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2331, 1700.00, 1500.00, 0.00, 0.00, 3, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2332, 1400.00, 1200.00, 0.00, 0.00, 4, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2333, 1500.00, 1300.00, 0.00, 0.00, 5, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2334, 1500.00, 1300.00, 0.00, 0.00, 6, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2335, 1500.00, 1300.00, 0.00, 0.00, 7, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2336, 1500.00, 1300.00, 0.00, 0.00, 8, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2337, 2000.00, 1700.00, 0.00, 0.00, 1, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2338, 1700.00, 1400.00, 0.00, 0.00, 2, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2339, 1700.00, 1500.00, 0.00, 0.00, 3, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2340, 1400.00, 1200.00, 0.00, 0.00, 4, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2341, 1500.00, 1300.00, 0.00, 0.00, 5, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2342, 1500.00, 1300.00, 0.00, 0.00, 6, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2343, 1500.00, 1300.00, 0.00, 0.00, 7, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2344, 1500.00, 1300.00, 0.00, 0.00, 8, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2345, 2000.00, 1700.00, 0.00, 0.00, 1, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2346, 1700.00, 1400.00, 0.00, 0.00, 2, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2347, 1700.00, 1500.00, 0.00, 0.00, 3, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2348, 1400.00, 1200.00, 0.00, 0.00, 4, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2349, 1500.00, 1300.00, 0.00, 0.00, 5, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2350, 1500.00, 1300.00, 0.00, 0.00, 6, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2351, 1500.00, 1300.00, 0.00, 0.00, 7, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2352, 1500.00, 1300.00, 0.00, 0.00, 8, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2353, 2000.00, 1700.00, 0.00, 0.00, 1, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2354, 1700.00, 1400.00, 0.00, 0.00, 2, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2355, 1700.00, 1500.00, 0.00, 0.00, 3, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2356, 1400.00, 1200.00, 0.00, 0.00, 4, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2357, 1500.00, 1300.00, 0.00, 0.00, 5, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2358, 1500.00, 1300.00, 0.00, 0.00, 6, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2359, 1500.00, 1300.00, 0.00, 0.00, 7, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2360, 1500.00, 1300.00, 0.00, 0.00, 8, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2361, 2000.00, 1700.00, 0.00, 0.00, 1, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2362, 1700.00, 1400.00, 0.00, 0.00, 2, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2363, 1700.00, 1500.00, 0.00, 0.00, 3, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2364, 1400.00, 1200.00, 0.00, 0.00, 4, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2365, 1500.00, 1300.00, 0.00, 0.00, 5, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2366, 1500.00, 1300.00, 0.00, 0.00, 6, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2367, 1500.00, 1300.00, 0.00, 0.00, 7, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2368, 1500.00, 1300.00, 0.00, 0.00, 8, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2369, 2000.00, 1700.00, 0.00, 0.00, 1, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2370, 1700.00, 1400.00, 0.00, 0.00, 2, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2371, 1700.00, 1500.00, 0.00, 0.00, 3, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2372, 1400.00, 1200.00, 0.00, 0.00, 4, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2373, 1500.00, 1300.00, 0.00, 0.00, 5, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2374, 1500.00, 1300.00, 0.00, 0.00, 6, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2375, 1500.00, 1300.00, 0.00, 0.00, 7, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2376, 1500.00, 1300.00, 0.00, 0.00, 8, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2377, 2000.00, 1700.00, 0.00, 0.00, 1, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2378, 1700.00, 1400.00, 0.00, 0.00, 2, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2379, 1700.00, 1500.00, 0.00, 0.00, 3, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2380, 1400.00, 1200.00, 0.00, 0.00, 4, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2381, 1500.00, 1300.00, 0.00, 0.00, 5, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2382, 1500.00, 1300.00, 0.00, 0.00, 6, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2383, 1500.00, 1300.00, 0.00, 0.00, 7, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2384, 1500.00, 1300.00, 0.00, 0.00, 8, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2385, 2000.00, 1700.00, 0.00, 0.00, 1, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2386, 1700.00, 1400.00, 0.00, 0.00, 2, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2387, 1700.00, 1500.00, 0.00, 0.00, 3, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2388, 1400.00, 1200.00, 0.00, 0.00, 4, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2389, 1500.00, 1300.00, 0.00, 0.00, 5, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2390, 1500.00, 1300.00, 0.00, 0.00, 6, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2391, 1500.00, 1300.00, 0.00, 0.00, 7, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2392, 1500.00, 1300.00, 0.00, 0.00, 8, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2393, 2000.00, 1700.00, 0.00, 0.00, 1, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2394, 1700.00, 1400.00, 0.00, 0.00, 2, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2395, 1700.00, 1500.00, 0.00, 0.00, 3, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2396, 1400.00, 1200.00, 0.00, 0.00, 4, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2397, 1500.00, 1300.00, 0.00, 0.00, 5, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2398, 1500.00, 1300.00, 0.00, 0.00, 6, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2399, 1500.00, 1300.00, 0.00, 0.00, 7, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2400, 1500.00, 1300.00, 0.00, 0.00, 8, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2401, 2000.00, 1700.00, 0.00, 0.00, 1, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2402, 1700.00, 1400.00, 0.00, 0.00, 2, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2403, 1700.00, 1500.00, 0.00, 0.00, 3, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2404, 1400.00, 1200.00, 0.00, 0.00, 4, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2405, 1500.00, 1300.00, 0.00, 0.00, 5, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2406, 1500.00, 1300.00, 0.00, 0.00, 6, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2407, 1500.00, 1300.00, 0.00, 0.00, 7, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2408, 1500.00, 1300.00, 0.00, 0.00, 8, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2409, 2000.00, 1700.00, 0.00, 0.00, 1, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2410, 1700.00, 1400.00, 0.00, 0.00, 2, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2411, 1700.00, 1500.00, 0.00, 0.00, 3, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2412, 1400.00, 1200.00, 0.00, 0.00, 4, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2413, 1500.00, 1300.00, 0.00, 0.00, 5, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2414, 1500.00, 1300.00, 0.00, 0.00, 6, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2415, 1500.00, 1300.00, 0.00, 0.00, 7, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2416, 1500.00, 1300.00, 0.00, 0.00, 8, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2417, 2000.00, 1700.00, 0.00, 0.00, 1, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2418, 1700.00, 1400.00, 0.00, 0.00, 2, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2419, 1700.00, 1500.00, 0.00, 0.00, 3, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2420, 1400.00, 1200.00, 0.00, 0.00, 4, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2421, 1500.00, 1300.00, 0.00, 0.00, 5, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2422, 1500.00, 1300.00, 0.00, 0.00, 6, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2423, 1500.00, 1300.00, 0.00, 0.00, 7, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2424, 1500.00, 1300.00, 0.00, 0.00, 8, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2425, 2000.00, 1700.00, 0.00, 0.00, 1, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2426, 1700.00, 1400.00, 0.00, 0.00, 2, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2427, 1700.00, 1500.00, 0.00, 0.00, 3, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2428, 1400.00, 1200.00, 0.00, 0.00, 4, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2429, 1500.00, 1300.00, 0.00, 0.00, 5, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2430, 1500.00, 1300.00, 0.00, 0.00, 6, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2431, 1500.00, 1300.00, 0.00, 0.00, 7, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2432, 1500.00, 1300.00, 0.00, 0.00, 8, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2433, 2000.00, 1700.00, 0.00, 0.00, 1, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2434, 1700.00, 1400.00, 0.00, 0.00, 2, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2435, 1700.00, 1500.00, 0.00, 0.00, 3, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2436, 1400.00, 1200.00, 0.00, 0.00, 4, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2437, 1500.00, 1300.00, 0.00, 0.00, 5, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2438, 1500.00, 1300.00, 0.00, 0.00, 6, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2439, 1500.00, 1300.00, 0.00, 0.00, 7, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2440, 1500.00, 1300.00, 0.00, 0.00, 8, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2441, 2000.00, 1700.00, 0.00, 0.00, 1, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2442, 1700.00, 1400.00, 0.00, 0.00, 2, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2443, 1700.00, 1500.00, 0.00, 0.00, 3, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2444, 1400.00, 1200.00, 0.00, 0.00, 4, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2445, 1500.00, 1300.00, 0.00, 0.00, 5, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2446, 1500.00, 1300.00, 0.00, 0.00, 6, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2447, 1500.00, 1300.00, 0.00, 0.00, 7, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2448, 1500.00, 1300.00, 0.00, 0.00, 8, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2449, 2000.00, 1700.00, 0.00, 0.00, 1, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2450, 1700.00, 1400.00, 0.00, 0.00, 2, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2451, 1700.00, 1500.00, 0.00, 0.00, 3, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2452, 1400.00, 1200.00, 0.00, 0.00, 4, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2453, 1500.00, 1300.00, 0.00, 0.00, 5, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2454, 1500.00, 1300.00, 0.00, 0.00, 6, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2455, 1500.00, 1300.00, 0.00, 0.00, 7, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2456, 1500.00, 1300.00, 0.00, 0.00, 8, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2457, 2000.00, 1700.00, 0.00, 0.00, 1, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2458, 1700.00, 1400.00, 0.00, 0.00, 2, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2459, 1700.00, 1500.00, 0.00, 0.00, 3, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2460, 1400.00, 1200.00, 0.00, 0.00, 4, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2461, 1500.00, 1300.00, 0.00, 0.00, 5, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2462, 1500.00, 1300.00, 0.00, 0.00, 6, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2463, 1500.00, 1300.00, 0.00, 0.00, 7, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2464, 1500.00, 1300.00, 0.00, 0.00, 8, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2465, 2000.00, 1700.00, 0.00, 0.00, 1, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2466, 1700.00, 1400.00, 0.00, 0.00, 2, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2467, 1700.00, 1500.00, 0.00, 0.00, 3, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2468, 1400.00, 1200.00, 0.00, 0.00, 4, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2469, 1500.00, 1300.00, 0.00, 0.00, 5, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2470, 1500.00, 1300.00, 0.00, 0.00, 6, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2471, 1500.00, 1300.00, 0.00, 0.00, 7, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2472, 1500.00, 1300.00, 0.00, 0.00, 8, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2473, 2000.00, 1700.00, 0.00, 0.00, 1, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2474, 1700.00, 1400.00, 0.00, 0.00, 2, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2475, 1700.00, 1500.00, 0.00, 0.00, 3, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2476, 1400.00, 1200.00, 0.00, 0.00, 4, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2477, 1500.00, 1300.00, 0.00, 0.00, 5, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2478, 1500.00, 1300.00, 0.00, 0.00, 6, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2479, 1500.00, 1300.00, 0.00, 0.00, 7, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2480, 1500.00, 1300.00, 0.00, 0.00, 8, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2481, 2000.00, 1700.00, 0.00, 0.00, 1, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2482, 1700.00, 1400.00, 0.00, 0.00, 2, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2483, 1700.00, 1500.00, 0.00, 0.00, 3, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2484, 1400.00, 1200.00, 0.00, 0.00, 4, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2485, 1500.00, 1300.00, 0.00, 0.00, 5, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2486, 1500.00, 1300.00, 0.00, 0.00, 6, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2487, 1500.00, 1300.00, 0.00, 0.00, 7, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2488, 1500.00, 1300.00, 0.00, 0.00, 8, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2489, 2000.00, 1700.00, 0.00, 0.00, 1, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2490, 1700.00, 1400.00, 0.00, 0.00, 2, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2491, 1700.00, 1500.00, 0.00, 0.00, 3, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2492, 1400.00, 1200.00, 0.00, 0.00, 4, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2493, 1500.00, 1300.00, 0.00, 0.00, 5, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2494, 1500.00, 1300.00, 0.00, 0.00, 6, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2495, 1500.00, 1300.00, 0.00, 0.00, 7, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2496, 1500.00, 1300.00, 0.00, 0.00, 8, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2497, 2000.00, 1700.00, 0.00, 0.00, 1, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2498, 1700.00, 1400.00, 0.00, 0.00, 2, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2499, 1700.00, 1500.00, 0.00, 0.00, 3, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2500, 1400.00, 1200.00, 0.00, 0.00, 4, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2501, 1500.00, 1300.00, 0.00, 0.00, 5, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2502, 1500.00, 1300.00, 0.00, 0.00, 6, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2503, 1500.00, 1300.00, 0.00, 0.00, 7, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2504, 1500.00, 1300.00, 0.00, 0.00, 8, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2505, 2000.00, 1700.00, 0.00, 0.00, 1, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2506, 1700.00, 1400.00, 0.00, 0.00, 2, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2507, 1700.00, 1500.00, 0.00, 0.00, 3, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2508, 1400.00, 1200.00, 0.00, 0.00, 4, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2509, 1500.00, 1300.00, 0.00, 0.00, 5, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2510, 1500.00, 1300.00, 0.00, 0.00, 6, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2511, 1500.00, 1300.00, 0.00, 0.00, 7, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2512, 1500.00, 1300.00, 0.00, 0.00, 8, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2513, 1900.00, 1600.00, 0.00, 0.00, 1, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2514, 1600.00, 1300.00, 0.00, 0.00, 2, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2515, 1700.00, 1500.00, 0.00, 0.00, 3, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2516, 1400.00, 1200.00, 0.00, 0.00, 4, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2517, 1500.00, 1300.00, 0.00, 0.00, 5, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2518, 1500.00, 1300.00, 0.00, 0.00, 6, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2519, 1500.00, 1300.00, 0.00, 0.00, 7, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2520, 1500.00, 1300.00, 0.00, 0.00, 8, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2521, 1900.00, 1600.00, 0.00, 0.00, 1, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2522, 1600.00, 1300.00, 0.00, 0.00, 2, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2523, 1700.00, 1500.00, 0.00, 0.00, 3, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2524, 1400.00, 1200.00, 0.00, 0.00, 4, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2525, 1500.00, 1300.00, 0.00, 0.00, 5, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2526, 1500.00, 1300.00, 0.00, 0.00, 6, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2527, 1500.00, 1300.00, 0.00, 0.00, 7, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2528, 1500.00, 1300.00, 0.00, 0.00, 8, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2529, 1900.00, 1600.00, 0.00, 0.00, 1, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2530, 1600.00, 1300.00, 0.00, 0.00, 2, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2531, 1700.00, 1500.00, 0.00, 0.00, 3, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2532, 1400.00, 1200.00, 0.00, 0.00, 4, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2533, 1500.00, 1300.00, 0.00, 0.00, 5, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2534, 1500.00, 1300.00, 0.00, 0.00, 6, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2535, 1500.00, 1300.00, 0.00, 0.00, 7, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2536, 1500.00, 1300.00, 0.00, 0.00, 8, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2537, 1900.00, 1600.00, 0.00, 0.00, 1, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2538, 1600.00, 1300.00, 0.00, 0.00, 2, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2539, 1700.00, 1500.00, 0.00, 0.00, 3, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2540, 1400.00, 1200.00, 0.00, 0.00, 4, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2541, 1500.00, 1300.00, 0.00, 0.00, 5, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2542, 1500.00, 1300.00, 0.00, 0.00, 6, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2543, 1500.00, 1300.00, 0.00, 0.00, 7, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2544, 1500.00, 1300.00, 0.00, 0.00, 8, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2545, 1900.00, 1600.00, 0.00, 0.00, 1, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2546, 1600.00, 1300.00, 0.00, 0.00, 2, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2547, 1700.00, 1400.00, 0.00, 0.00, 3, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2548, 1400.00, 1100.00, 0.00, 0.00, 4, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2549, 1400.00, 1200.00, 0.00, 0.00, 5, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2550, 1400.00, 1200.00, 0.00, 0.00, 6, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2551, 1400.00, 1200.00, 0.00, 0.00, 7, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2552, 1400.00, 1200.00, 0.00, 0.00, 8, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2553, 2000.00, 1700.00, 0.00, 0.00, 1, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2554, 1700.00, 1400.00, 0.00, 0.00, 2, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2555, 1600.00, 1400.00, 0.00, 0.00, 3, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2556, 1300.00, 1100.00, 0.00, 0.00, 4, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2557, 1500.00, 1300.00, 0.00, 0.00, 5, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2558, 1500.00, 1300.00, 0.00, 0.00, 6, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2559, 1500.00, 1300.00, 0.00, 0.00, 7, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2560, 1500.00, 1300.00, 0.00, 0.00, 8, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2561, 1800.00, 1500.00, 0.00, 0.00, 1, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2562, 1500.00, 1200.00, 0.00, 0.00, 2, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2563, 1700.00, 1500.00, 0.00, 0.00, 3, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2564, 1400.00, 1200.00, 0.00, 0.00, 4, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2565, 1500.00, 1300.00, 0.00, 0.00, 5, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2566, 1500.00, 1300.00, 0.00, 0.00, 6, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2567, 1500.00, 1300.00, 0.00, 0.00, 7, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2568, 1500.00, 1300.00, 0.00, 0.00, 8, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2569, 1900.00, 1600.00, 0.00, 0.00, 1, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2570, 1600.00, 1300.00, 0.00, 0.00, 2, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2571, 1600.00, 1400.00, 0.00, 0.00, 3, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2572, 1300.00, 1100.00, 0.00, 0.00, 4, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2573, 1400.00, 1200.00, 0.00, 0.00, 5, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2574, 1400.00, 1200.00, 0.00, 0.00, 6, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2575, 1400.00, 1200.00, 0.00, 0.00, 7, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2576, 1400.00, 1200.00, 0.00, 0.00, 8, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2577, 2000.00, 1700.00, 0.00, 0.00, 1, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2578, 1700.00, 1400.00, 0.00, 0.00, 2, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2579, 1700.00, 1500.00, 0.00, 0.00, 3, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2580, 1400.00, 1200.00, 0.00, 0.00, 4, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2581, 1500.00, 1300.00, 0.00, 0.00, 5, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2582, 1500.00, 1300.00, 0.00, 0.00, 6, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2583, 1500.00, 1300.00, 0.00, 0.00, 7, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2584, 1500.00, 1300.00, 0.00, 0.00, 8, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2585, 2050.00, 1750.00, 0.00, 0.00, 1, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2586, 1750.00, 1450.00, 0.00, 0.00, 2, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2587, 1800.00, 1600.00, 0.00, 0.00, 3, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2588, 1500.00, 1300.00, 0.00, 0.00, 4, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2589, 1500.00, 1300.00, 0.00, 0.00, 5, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2590, 1500.00, 1300.00, 0.00, 0.00, 6, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2591, 1500.00, 1300.00, 0.00, 0.00, 7, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2592, 1500.00, 1300.00, 0.00, 0.00, 8, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2593, 2000.00, 1700.00, 0.00, 0.00, 1, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2594, 1700.00, 1400.00, 0.00, 0.00, 2, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2595, 1700.00, 1500.00, 0.00, 0.00, 3, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2596, 1400.00, 1200.00, 0.00, 0.00, 4, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2597, 1500.00, 1300.00, 0.00, 0.00, 5, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2598, 1500.00, 1300.00, 0.00, 0.00, 6, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2599, 1500.00, 1300.00, 0.00, 0.00, 7, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02'),
(2600, 1500.00, 1300.00, 0.00, 0.00, 8, 1, 0, '2024-12-18 14:53:02', '2024-12-18 14:53:02');

-- --------------------------------------------------------

--
-- Table structure for table `provinces`
--

CREATE TABLE `provinces` (
  `id` int NOT NULL,
  `is_approved` int NOT NULL,
  `country` int NOT NULL,
  `code` int NOT NULL,
  `name_th` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_en` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pic` varchar(220) COLLATE utf8mb4_unicode_ci NOT NULL,
  `geography_id` int NOT NULL,
  `is_deleted` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `provinces`
--

INSERT INTO `provinces` (`id`, `is_approved`, `country`, `code`, `name_th`, `name_en`, `pic`, `geography_id`, `is_deleted`) VALUES
(1, 1, 219, 10, 'กรุงเทพมหานคร', 'Bangkok', '', 2, 0),
(2, 1, 219, 11, 'สมุทรปราการ', 'Samut Prakan', '', 2, 0),
(3, 1, 219, 12, 'นนทบุรี', 'Nonthaburi', '', 2, 0),
(4, 1, 219, 13, 'ปทุมธานี', 'Pathum Thani', '', 2, 0),
(5, 1, 219, 14, 'พระนครศรีอยุธยา', 'Phra Nakhon Si Ayutthaya', '', 2, 0),
(6, 1, 219, 15, 'อ่างทอง', 'Ang Thong', '', 2, 0),
(7, 1, 219, 16, 'ลพบุรี', 'Loburi', '', 2, 0),
(8, 1, 219, 17, 'สิงห์บุรี', 'Sing Buri', '', 2, 0),
(9, 1, 219, 18, 'ชัยนาท', 'Chai Nat', '', 2, 0),
(10, 1, 219, 19, 'สระบุรี', 'Saraburi', '', 2, 0),
(11, 1, 219, 20, 'ชลบุรี', 'Chon Buri', '', 5, 0),
(12, 1, 219, 21, 'ระยอง', 'Rayong', '', 5, 0),
(13, 1, 219, 22, 'จันทบุรี', 'Chanthaburi', '', 5, 0),
(14, 1, 219, 23, 'ตราด', 'Trat', '', 5, 0),
(15, 1, 219, 24, 'ฉะเชิงเทรา', 'Chachoengsao', '', 5, 0),
(16, 1, 219, 25, 'ปราจีนบุรี', 'Prachin Buri', '', 5, 0),
(17, 1, 219, 26, 'นครนายก', 'Nakhon Nayok', '', 2, 0),
(18, 1, 219, 27, 'สระแก้ว', 'Sa Kaeo', '', 5, 0),
(19, 1, 219, 30, 'นครราชสีมา', 'Nakhon Ratchasima', '', 3, 0),
(20, 1, 219, 31, 'บุรีรัมย์', 'Buri Ram', '', 3, 0),
(21, 1, 219, 32, 'สุรินทร์', 'Surin', '', 3, 0),
(22, 1, 219, 33, 'ศรีสะเกษ', 'Si Sa Ket', '', 3, 0),
(23, 1, 219, 34, 'อุบลราชธานี', 'Ubon Ratchathani', '', 3, 0),
(24, 1, 219, 35, 'ยโสธร', 'Yasothon', '', 3, 0),
(25, 1, 219, 36, 'ชัยภูมิ', 'Chaiyaphum', '', 3, 0),
(26, 1, 219, 37, 'อำนาจเจริญ', 'Amnat Charoen', '', 3, 0),
(27, 1, 219, 39, 'หนองบัวลำภู', 'Nong Bua Lam Phu', '', 3, 0),
(28, 1, 219, 40, 'ขอนแก่น', 'Khon Kaen', '', 3, 0),
(29, 1, 219, 41, 'อุดรธานี', 'Udon Thani', '', 3, 0),
(30, 1, 219, 42, 'เลย', 'Loei', '', 3, 0),
(31, 1, 219, 43, 'หนองคาย', 'Nong Khai', '', 3, 0),
(32, 1, 219, 44, 'มหาสารคาม', 'Maha Sarakham', '', 3, 0),
(33, 1, 219, 45, 'ร้อยเอ็ด', 'Roi Et', '', 3, 0),
(34, 1, 219, 46, 'กาฬสินธุ์', 'Kalasin', '', 3, 0),
(35, 1, 219, 47, 'สกลนคร', 'Sakon Nakhon', '', 3, 0),
(36, 1, 219, 48, 'นครพนม', 'Nakhon Phanom', '', 3, 0),
(37, 1, 219, 49, 'มุกดาหาร', 'Mukdahan', '', 3, 0),
(38, 1, 219, 50, 'เชียงใหม่', 'Chiang Mai', '', 1, 0),
(39, 1, 219, 51, 'ลำพูน', 'Lamphun', '', 1, 0),
(40, 1, 219, 52, 'ลำปาง', 'Lampang', '', 1, 0),
(41, 1, 219, 53, 'อุตรดิตถ์', 'Uttaradit', '', 1, 0),
(42, 1, 219, 54, 'แพร่', 'Phrae', '', 1, 0),
(43, 1, 219, 55, 'น่าน', 'Nan', '', 1, 0),
(44, 1, 219, 56, 'พะเยา', 'Phayao', '', 1, 0),
(45, 1, 219, 57, 'เชียงราย', 'Chiang Rai', '', 1, 0),
(46, 1, 219, 58, 'แม่ฮ่องสอน', 'Mae Hong Son', '', 1, 0),
(47, 1, 219, 60, 'นครสวรรค์', 'Nakhon Sawan', '', 2, 0),
(48, 1, 219, 61, 'อุทัยธานี', 'Uthai Thani', '', 2, 0),
(49, 1, 219, 62, 'กำแพงเพชร', 'Kamphaeng Phet', '', 2, 0),
(50, 1, 219, 63, 'ตาก', 'Tak', '', 4, 0),
(51, 1, 219, 64, 'สุโขทัย', 'Sukhothai', '', 2, 0),
(52, 1, 219, 65, 'พิษณุโลก', 'Phitsanulok', '', 2, 0),
(53, 1, 219, 66, 'พิจิตร', 'Phichit', '', 2, 0),
(54, 1, 219, 67, 'เพชรบูรณ์', 'Phetchabun', '', 2, 0),
(55, 1, 219, 70, 'ราชบุรี', 'Ratchaburi', '', 4, 0),
(56, 1, 219, 71, 'กาญจนบุรี', 'Kanchanaburi', '', 4, 0),
(57, 1, 219, 72, 'สุพรรณบุรี', 'Suphan Buri', '', 2, 0),
(58, 1, 219, 73, 'นครปฐม', 'Nakhon Pathom', '', 2, 0),
(59, 1, 219, 74, 'สมุทรสาคร', 'Samut Sakhon', '', 2, 0),
(60, 1, 219, 75, 'สมุทรสงคราม', 'Samut Songkhram', '', 2, 0),
(61, 1, 219, 76, 'เพชรบุรี', 'Phetchaburi', '', 4, 0),
(62, 1, 219, 77, 'ประจวบคีรีขันธ์', 'Prachuap Khiri Khan', '', 4, 0),
(63, 1, 219, 80, 'นครศรีธรรมราช', 'Nakhon Si Thammarat', '', 6, 0),
(64, 1, 219, 81, 'กระบี่', 'Krabi', '', 6, 0),
(65, 1, 219, 82, 'พังงา', 'Phangnga', '', 6, 0),
(66, 1, 219, 83, 'ภูเก็ต', 'Phuket', 'ee266753723ef57e28ca08e312b7620e.jpeg', 6, 0),
(67, 1, 219, 84, 'สุราษฎร์ธานี', 'Surat Thani', '', 6, 0),
(68, 1, 219, 85, 'ระนอง', 'Ranong', '', 6, 0),
(69, 1, 219, 86, 'ชุมพร', 'Chumphon', '', 6, 0),
(70, 1, 219, 90, 'สงขลา', 'Songkhla', '', 6, 0),
(71, 1, 219, 91, 'สตูล', 'Satun', '', 6, 0),
(72, 1, 219, 92, 'ตรัง', 'Trang', '', 6, 0),
(73, 1, 219, 93, 'พัทลุง', 'Phatthalung', '', 6, 0),
(74, 1, 219, 94, 'ปัตตานี', 'Pattani', '', 6, 0),
(75, 1, 219, 95, 'ยะลา', 'Yala', '', 6, 0),
(76, 1, 219, 96, 'นราธิวาส', 'Narathiwat', '', 6, 0),
(77, 1, 219, 97, 'บึงกาฬ', 'Buogkan', '', 3, 0);

-- --------------------------------------------------------

--
-- Table structure for table `quotations`
--

CREATE TABLE `quotations` (
  `id` int NOT NULL,
  `cus_name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cus_address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `cus_tax` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cus_phone` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cus_email` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bookings_id` int NOT NULL,
  `currency_id` int NOT NULL,
  `payment_id` int NOT NULL,
  `vat_id` int NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `receipts`
--

CREATE TABLE `receipts` (
  `id` int NOT NULL,
  `rec_no` int NOT NULL,
  `rec_full` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rec_date` date NOT NULL,
  `price` double(9,2) NOT NULL,
  `cheque_no` int NOT NULL,
  `cheque_date` date NOT NULL,
  `file` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `bank_account_id` int NOT NULL,
  `bank_cheque_id` int NOT NULL,
  `cover_id` int NOT NULL COMMENT 'invoice cover',
  `payment_id` int NOT NULL,
  `receipts_by` int NOT NULL COMMENT 'user id',
  `is_approved` int NOT NULL,
  `is_deleted` int NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `receipts`
--

INSERT INTO `receipts` (`id`, `rec_no`, `rec_full`, `rec_date`, `price`, `cheque_no`, `cheque_date`, `file`, `note`, `bank_account_id`, `bank_cheque_id`, `cover_id`, `payment_id`, `receipts_by`, `is_approved`, `is_deleted`, `created_at`, `updated_at`) VALUES
(1, 1, 'REC-0000001', '2024-12-20', 0.00, 0, '2024-12-20', '', '', 3, 0, 2, 4, 1, 1, 0, '2024-12-20 05:33:42', '2024-12-20 05:33:42');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_approved` int NOT NULL DEFAULT '0',
  `is_deleted` int NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `is_approved`, `is_deleted`, `created_at`) VALUES
(1, 'Super-Admin', 1, 0, '2021-05-24 07:11:09'),
(2, 'Admin', 1, 0, '2021-05-24 07:11:29'),
(3, 'Agent', 1, 0, '2022-11-17 04:45:32'),
(4, 'User', 1, 0, '2022-11-23 10:43:50');

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `id` int NOT NULL,
  `firstname` varchar(50) COLLATE utf8mb3_unicode_ci NOT NULL,
  `lastname` varchar(50) COLLATE utf8mb3_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb3_unicode_ci NOT NULL,
  `telephone` varchar(100) COLLATE utf8mb3_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb3_unicode_ci NOT NULL,
  `contact_person` text COLLATE utf8mb3_unicode_ci NOT NULL,
  `note` text COLLATE utf8mb3_unicode_ci NOT NULL,
  `photo` varchar(100) COLLATE utf8mb3_unicode_ci NOT NULL,
  `companie_id` int NOT NULL,
  `department_id` int NOT NULL,
  `is_approved` int NOT NULL,
  `is_deleted` int NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int NOT NULL,
  `firstname` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telephone` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` int NOT NULL COMMENT '1 : admin\r\n2 : agent',
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_person` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `department_id` int NOT NULL,
  `role_id` int NOT NULL DEFAULT '0',
  `companie_id` int NOT NULL,
  `is_approved` int NOT NULL DEFAULT '0',
  `is_deleted` int NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `telephone`, `type`, `address`, `contact_person`, `note`, `photo`, `department_id`, `role_id`, `companie_id`, `is_approved`, `is_deleted`, `created_at`, `updated_at`) VALUES
(1, 'Shambhala', 'TMS', 'go@shambhala.travel', '0875694107', 1, '', '', '', '', 0, 1, 0, 1, 0, '2021-05-24 06:51:58', '2021-08-06 05:52:48'),
(2, 'Together', 'Travel', 'together@email.com', '', 1, '', '', '', '', 0, 2, 0, 1, 0, '2024-12-19 03:56:10', '2024-12-19 03:56:10');

-- --------------------------------------------------------

--
-- Table structure for table `vat_type`
--

CREATE TABLE `vat_type` (
  `id` int NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `vat_type`
--

INSERT INTO `vat_type` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'รวมภาษี 7%', '2022-06-16 07:51:10', '2022-06-16 07:51:10'),
(2, 'แยกภาษี 7%', '2022-06-16 07:51:10', '2022-06-16 07:51:10');

-- --------------------------------------------------------

--
-- Table structure for table `vouchers_no`
--

CREATE TABLE `vouchers_no` (
  `id` int NOT NULL,
  `vo_date` date NOT NULL,
  `vo_year` int NOT NULL,
  `vo_year_th` int NOT NULL,
  `vo_month` int NOT NULL,
  `vo_no` int NOT NULL,
  `vo_full` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `booking_id` int NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `zones`
--

CREATE TABLE `zones` (
  `id` int NOT NULL,
  `provinces` int NOT NULL,
  `name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_th` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `start_pickup` time NOT NULL,
  `end_pickup` time NOT NULL,
  `pickup` int NOT NULL,
  `dropoff` int NOT NULL,
  `is_approved` int NOT NULL DEFAULT '0',
  `is_deleted` int NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `zones`
--

INSERT INTO `zones` (`id`, `provinces`, `name`, `name_th`, `start_pickup`, `end_pickup`, `pickup`, `dropoff`, `is_approved`, `is_deleted`, `created_at`, `updated_at`) VALUES
(1, 66, 'Maikhao', 'Maikhao', '00:00:00', '00:00:00', 1, 1, 1, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 66, 'Nai Yang', 'Nai Yang', '00:00:00', '00:00:00', 1, 1, 1, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 66, 'Nai Thon', 'Nai Thon', '00:00:00', '00:00:00', 1, 1, 1, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 66, ' Airport ', ' Airport ', '00:00:00', '00:00:00', 1, 1, 1, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 66, 'Laguna', 'Laguna', '00:00:00', '00:00:00', 1, 1, 1, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 66, 'Buntao', 'Buntao', '00:00:00', '00:00:00', 1, 1, 1, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 66, 'Surin', 'Surin', '00:00:00', '00:00:00', 1, 1, 1, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, 66, 'Layan ', 'Layan ', '00:00:00', '00:00:00', 1, 1, 1, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, 66, 'Talang', 'Talang', '00:00:00', '00:00:00', 1, 1, 1, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(10, 66, 'Ao por', 'Ao por', '00:00:00', '00:00:00', 1, 1, 1, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(11, 66, 'Point Yamu ', 'Point Yamu ', '00:00:00', '00:00:00', 1, 1, 1, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(12, 66, 'Boat Lagoon', 'Boat Lagoon', '00:00:00', '00:00:00', 1, 1, 1, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(13, 66, 'Koh Kaew ', 'Koh Kaew ', '00:00:00', '00:00:00', 1, 1, 1, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(14, 66, 'Koh Siray ', 'Koh Siray ', '00:00:00', '00:00:00', 1, 1, 1, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(15, 66, 'Panwa ', 'Panwa ', '00:00:00', '00:00:00', 1, 1, 1, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(16, 66, 'Kamala ', 'Kamala ', '00:00:00', '00:00:00', 1, 1, 1, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(17, 66, 'Kalim', 'Kalim', '00:00:00', '00:00:00', 1, 1, 1, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(18, 66, ' Tri Trang Beach ', ' Tri Trang Beach ', '00:00:00', '00:00:00', 1, 1, 1, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(19, 66, 'Patong ', 'Patong ', '00:00:00', '00:00:00', 1, 1, 1, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(20, 66, 'Kathu ', 'Kathu ', '00:00:00', '00:00:00', 1, 1, 1, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(21, 66, 'Kata', 'Kata', '00:00:00', '00:00:00', 1, 1, 1, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(22, 66, 'Karon ', 'Karon ', '00:00:00', '00:00:00', 1, 1, 1, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(23, 66, 'Phuket Town ', 'Phuket Town ', '00:00:00', '00:00:00', 1, 1, 1, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(24, 66, 'Rawai', 'Rawai', '00:00:00', '00:00:00', 1, 1, 1, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(25, 66, 'Nai Harn ', 'Nai Harn ', '00:00:00', '00:00:00', 1, 1, 1, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(26, 66, 'Chalong ', 'Chalong ', '00:00:00', '00:00:00', 1, 1, 1, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `agents`
--
ALTER TABLE `agents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banks`
--
ALTER TABLE `banks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bank_account`
--
ALTER TABLE `bank_account`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bloods`
--
ALTER TABLE `bloods`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `boats`
--
ALTER TABLE `boats`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `boats_type`
--
ALTER TABLE `boats_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bookings`
--
ALTER TABLE `bookings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bookings_no`
--
ALTER TABLE `bookings_no`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `booking_extra_charge`
--
ALTER TABLE `booking_extra_charge`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `booking_order_boat`
--
ALTER TABLE `booking_order_boat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `booking_order_transfer`
--
ALTER TABLE `booking_order_transfer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `booking_paid`
--
ALTER TABLE `booking_paid`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `booking_paid_detail`
--
ALTER TABLE `booking_paid_detail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `booking_payment`
--
ALTER TABLE `booking_payment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `booking_products`
--
ALTER TABLE `booking_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `booking_product_rates`
--
ALTER TABLE `booking_product_rates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `booking_status`
--
ALTER TABLE `booking_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `booking_transfer`
--
ALTER TABLE `booking_transfer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `booking_transfer_rates`
--
ALTER TABLE `booking_transfer_rates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `booking_type`
--
ALTER TABLE `booking_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `branches`
--
ALTER TABLE `branches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `captains`
--
ALTER TABLE `captains`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cars`
--
ALTER TABLE `cars`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cars_category`
--
ALTER TABLE `cars_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cars_type`
--
ALTER TABLE `cars_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category_items`
--
ALTER TABLE `category_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `check_in`
--
ALTER TABLE `check_in`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `colors`
--
ALTER TABLE `colors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `companies`
--
ALTER TABLE `companies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `companies_type`
--
ALTER TABLE `companies_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `company_rate`
--
ALTER TABLE `company_rate`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `confirm_agent`
--
ALTER TABLE `confirm_agent`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `country`
--
ALTER TABLE `country`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `crews`
--
ALTER TABLE `crews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `currencys`
--
ALTER TABLE `currencys`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `days`
--
ALTER TABLE `days`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `drivers`
--
ALTER TABLE `drivers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `drivers_assistant`
--
ALTER TABLE `drivers_assistant`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `extra_charges`
--
ALTER TABLE `extra_charges`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `guides`
--
ALTER TABLE `guides`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `guide_language`
--
ALTER TABLE `guide_language`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `history_booking`
--
ALTER TABLE `history_booking`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `history_type`
--
ALTER TABLE `history_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hotel`
--
ALTER TABLE `hotel`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `invoices`
--
ALTER TABLE `invoices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `invoice_cover`
--
ALTER TABLE `invoice_cover`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nationalitys`
--
ALTER TABLE `nationalitys`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_boat`
--
ALTER TABLE `order_boat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_transfer`
--
ALTER TABLE `order_transfer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `park`
--
ALTER TABLE `park`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payments_type`
--
ALTER TABLE `payments_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permission_user`
--
ALTER TABLE `permission_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `place`
--
ALTER TABLE `place`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products_category_items`
--
ALTER TABLE `products_category_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products_day`
--
ALTER TABLE `products_day`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products_file`
--
ALTER TABLE `products_file`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products_itinerary`
--
ALTER TABLE `products_itinerary`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products_photo`
--
ALTER TABLE `products_photo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products_type`
--
ALTER TABLE `products_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_allotments`
--
ALTER TABLE `product_allotments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_category`
--
ALTER TABLE `product_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_periods`
--
ALTER TABLE `product_periods`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_rates`
--
ALTER TABLE `product_rates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `provinces`
--
ALTER TABLE `provinces`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `quotations`
--
ALTER TABLE `quotations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `receipts`
--
ALTER TABLE `receipts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vat_type`
--
ALTER TABLE `vat_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vouchers_no`
--
ALTER TABLE `vouchers_no`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `zones`
--
ALTER TABLE `zones`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `agents`
--
ALTER TABLE `agents`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `banks`
--
ALTER TABLE `banks`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `bank_account`
--
ALTER TABLE `bank_account`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `bloods`
--
ALTER TABLE `bloods`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `boats`
--
ALTER TABLE `boats`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `boats_type`
--
ALTER TABLE `boats_type`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bookings`
--
ALTER TABLE `bookings`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `bookings_no`
--
ALTER TABLE `bookings_no`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `booking_extra_charge`
--
ALTER TABLE `booking_extra_charge`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `booking_order_boat`
--
ALTER TABLE `booking_order_boat`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `booking_order_transfer`
--
ALTER TABLE `booking_order_transfer`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `booking_paid`
--
ALTER TABLE `booking_paid`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `booking_paid_detail`
--
ALTER TABLE `booking_paid_detail`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `booking_payment`
--
ALTER TABLE `booking_payment`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `booking_products`
--
ALTER TABLE `booking_products`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `booking_product_rates`
--
ALTER TABLE `booking_product_rates`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `booking_status`
--
ALTER TABLE `booking_status`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `booking_transfer`
--
ALTER TABLE `booking_transfer`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `booking_transfer_rates`
--
ALTER TABLE `booking_transfer_rates`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2508;

--
-- AUTO_INCREMENT for table `booking_type`
--
ALTER TABLE `booking_type`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `branches`
--
ALTER TABLE `branches`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `captains`
--
ALTER TABLE `captains`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `cars`
--
ALTER TABLE `cars`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cars_category`
--
ALTER TABLE `cars_category`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cars_type`
--
ALTER TABLE `cars_type`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `category_items`
--
ALTER TABLE `category_items`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `check_in`
--
ALTER TABLE `check_in`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `colors`
--
ALTER TABLE `colors`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `companies`
--
ALTER TABLE `companies`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=326;

--
-- AUTO_INCREMENT for table `companies_type`
--
ALTER TABLE `companies_type`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `company_rate`
--
ALTER TABLE `company_rate`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2601;

--
-- AUTO_INCREMENT for table `confirm_agent`
--
ALTER TABLE `confirm_agent`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `country`
--
ALTER TABLE `country`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=251;

--
-- AUTO_INCREMENT for table `crews`
--
ALTER TABLE `crews`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `currencys`
--
ALTER TABLE `currencys`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `days`
--
ALTER TABLE `days`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `department`
--
ALTER TABLE `department`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `drivers`
--
ALTER TABLE `drivers`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `drivers_assistant`
--
ALTER TABLE `drivers_assistant`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `extra_charges`
--
ALTER TABLE `extra_charges`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `guides`
--
ALTER TABLE `guides`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `guide_language`
--
ALTER TABLE `guide_language`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `history_booking`
--
ALTER TABLE `history_booking`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `history_type`
--
ALTER TABLE `history_type`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `hotel`
--
ALTER TABLE `hotel`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=460;

--
-- AUTO_INCREMENT for table `invoices`
--
ALTER TABLE `invoices`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `invoice_cover`
--
ALTER TABLE `invoice_cover`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `nationalitys`
--
ALTER TABLE `nationalitys`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=243;

--
-- AUTO_INCREMENT for table `order_boat`
--
ALTER TABLE `order_boat`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `order_transfer`
--
ALTER TABLE `order_transfer`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `park`
--
ALTER TABLE `park`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payments_type`
--
ALTER TABLE `payments_type`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `permission_role`
--
ALTER TABLE `permission_role`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `permission_user`
--
ALTER TABLE `permission_user`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `place`
--
ALTER TABLE `place`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `products_category_items`
--
ALTER TABLE `products_category_items`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `products_day`
--
ALTER TABLE `products_day`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

--
-- AUTO_INCREMENT for table `products_file`
--
ALTER TABLE `products_file`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products_itinerary`
--
ALTER TABLE `products_itinerary`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `products_photo`
--
ALTER TABLE `products_photo`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products_type`
--
ALTER TABLE `products_type`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `product_allotments`
--
ALTER TABLE `product_allotments`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `product_category`
--
ALTER TABLE `product_category`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `product_periods`
--
ALTER TABLE `product_periods`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `product_rates`
--
ALTER TABLE `product_rates`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2601;

--
-- AUTO_INCREMENT for table `provinces`
--
ALTER TABLE `provinces`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

--
-- AUTO_INCREMENT for table `quotations`
--
ALTER TABLE `quotations`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `receipts`
--
ALTER TABLE `receipts`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `staff`
--
ALTER TABLE `staff`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `vat_type`
--
ALTER TABLE `vat_type`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `vouchers_no`
--
ALTER TABLE `vouchers_no`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `zones`
--
ALTER TABLE `zones`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
