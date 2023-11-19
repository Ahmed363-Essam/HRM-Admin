-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Oct 12, 2023 at 07:49 AM
-- Server version: 11.0.2-MariaDB
-- PHP Version: 8.1.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hrm`
--

-- --------------------------------------------------------

--
-- Table structure for table `accounts`
--

CREATE TABLE `accounts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `company_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) DEFAULT NULL,
  `ac_name` varchar(200) DEFAULT NULL,
  `ac_number` varchar(100) DEFAULT NULL,
  `code` varchar(200) DEFAULT NULL,
  `branch` varchar(200) DEFAULT NULL,
  `amount` double(16,2) NOT NULL DEFAULT 0.00,
  `status_id` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `created_by` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `updated_by` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `branch_id` bigint(20) UNSIGNED DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `accounts`
--

INSERT INTO `accounts` (`id`, `company_id`, `name`, `ac_name`, `ac_number`, `code`, `branch`, `amount`, `status_id`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`, `branch_id`) VALUES
(1, 2, 'Account 1', 'John Doe', '123456789', '123456789', 'California', 160000.00, 1, 2, 2, '2023-10-12 07:48:59', '2023-10-12 07:48:59', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `activity_log`
--

CREATE TABLE `activity_log` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `log_name` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `subject_type` varchar(255) DEFAULT NULL,
  `subject_id` bigint(20) UNSIGNED DEFAULT NULL,
  `causer_type` varchar(255) DEFAULT NULL,
  `causer_id` bigint(20) UNSIGNED DEFAULT NULL,
  `event` varchar(255) DEFAULT NULL,
  `properties` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`properties`)),
  `batch_uuid` char(36) DEFAULT NULL,
  `ip_address` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `branch_id` bigint(20) UNSIGNED DEFAULT 1,
  `company_id` bigint(20) UNSIGNED DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `activity_log`
--

INSERT INTO `activity_log` (`id`, `log_name`, `description`, `subject_type`, `subject_id`, `causer_type`, `causer_id`, `event`, `properties`, `batch_uuid`, `ip_address`, `created_at`, `updated_at`, `branch_id`, `company_id`) VALUES
(1, 'default', 'created', 'App\\Models\\Company\\Company', 1, NULL, NULL, 'created', '[]', NULL, NULL, '2023-10-12 07:48:58', '2023-10-12 07:48:58', 1, 1),
(2, 'default', 'created', 'App\\Models\\Hrm\\Shift\\Shift', 1, NULL, NULL, 'created', '[]', NULL, NULL, '2023-10-12 07:48:58', '2023-10-12 07:48:58', 1, 1),
(3, 'default', 'created', 'App\\Models\\coreApp\\Setting\\Setting', 1, NULL, NULL, 'created', '[]', NULL, NULL, '2023-10-12 07:48:58', '2023-10-12 07:48:58', 1, 1),
(4, 'default', 'created', 'App\\Models\\coreApp\\Setting\\Setting', 2, NULL, NULL, 'created', '[]', NULL, NULL, '2023-10-12 07:48:58', '2023-10-12 07:48:58', 1, 1),
(5, 'default', 'created', 'App\\Models\\coreApp\\Setting\\Setting', 3, NULL, NULL, 'created', '[]', NULL, NULL, '2023-10-12 07:48:58', '2023-10-12 07:48:58', 1, 1),
(6, 'default', 'created', 'App\\Models\\coreApp\\Setting\\Setting', 4, NULL, NULL, 'created', '[]', NULL, NULL, '2023-10-12 07:48:58', '2023-10-12 07:48:58', 1, 1),
(7, 'default', 'created', 'App\\Models\\coreApp\\Setting\\Setting', 5, NULL, NULL, 'created', '[]', NULL, NULL, '2023-10-12 07:48:58', '2023-10-12 07:48:58', 1, 1),
(8, 'default', 'created', 'App\\Models\\coreApp\\Setting\\Setting', 6, NULL, NULL, 'created', '[]', NULL, NULL, '2023-10-12 07:48:58', '2023-10-12 07:48:58', 1, 1),
(9, 'default', 'created', 'App\\Models\\coreApp\\Setting\\Setting', 7, NULL, NULL, 'created', '[]', NULL, NULL, '2023-10-12 07:48:58', '2023-10-12 07:48:58', 1, 1),
(10, 'default', 'created', 'App\\Models\\coreApp\\Setting\\Setting', 8, NULL, NULL, 'created', '[]', NULL, NULL, '2023-10-12 07:48:58', '2023-10-12 07:48:58', 1, 1),
(11, 'default', 'created', 'App\\Models\\coreApp\\Setting\\Setting', 9, NULL, NULL, 'created', '[]', NULL, NULL, '2023-10-12 07:48:58', '2023-10-12 07:48:58', 1, 1),
(12, 'default', 'created', 'App\\Models\\coreApp\\Setting\\Setting', 10, NULL, NULL, 'created', '[]', NULL, NULL, '2023-10-12 07:48:58', '2023-10-12 07:48:58', 1, 1),
(13, 'default', 'created', 'App\\Models\\coreApp\\Setting\\Setting', 11, NULL, NULL, 'created', '[]', NULL, NULL, '2023-10-12 07:48:58', '2023-10-12 07:48:58', 1, 1),
(14, 'default', 'created', 'App\\Models\\coreApp\\Setting\\Setting', 12, NULL, NULL, 'created', '[]', NULL, NULL, '2023-10-12 07:48:58', '2023-10-12 07:48:58', 1, 1),
(15, 'default', 'created', 'App\\Models\\coreApp\\Setting\\Setting', 13, NULL, NULL, 'created', '[]', NULL, NULL, '2023-10-12 07:48:58', '2023-10-12 07:48:58', 1, 1),
(16, 'default', 'created', 'App\\Models\\coreApp\\Setting\\Setting', 14, NULL, NULL, 'created', '[]', NULL, NULL, '2023-10-12 07:48:58', '2023-10-12 07:48:58', 1, 1),
(17, 'default', 'created', 'App\\Models\\coreApp\\Setting\\Setting', 15, NULL, NULL, 'created', '[]', NULL, NULL, '2023-10-12 07:48:58', '2023-10-12 07:48:58', 1, 1),
(18, 'default', 'created', 'App\\Models\\Hrm\\Attendance\\DutySchedule', 1, NULL, NULL, 'created', '[]', NULL, NULL, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1, 1),
(19, 'default', 'created', 'App\\Models\\Hrm\\Attendance\\Weekend', 1, NULL, NULL, 'created', '[]', NULL, NULL, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1, 1),
(20, 'default', 'created', 'App\\Models\\Hrm\\Attendance\\Weekend', 2, NULL, NULL, 'created', '[]', NULL, NULL, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1, 1),
(21, 'default', 'created', 'App\\Models\\Hrm\\Attendance\\Weekend', 3, NULL, NULL, 'created', '[]', NULL, NULL, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1, 1),
(22, 'default', 'created', 'App\\Models\\Hrm\\Attendance\\Weekend', 4, NULL, NULL, 'created', '[]', NULL, NULL, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1, 1),
(23, 'default', 'created', 'App\\Models\\Hrm\\Attendance\\Weekend', 5, NULL, NULL, 'created', '[]', NULL, NULL, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1, 1),
(24, 'default', 'created', 'App\\Models\\Hrm\\Attendance\\Weekend', 6, NULL, NULL, 'created', '[]', NULL, NULL, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1, 1),
(25, 'default', 'created', 'App\\Models\\Hrm\\Attendance\\Weekend', 7, NULL, NULL, 'created', '[]', NULL, NULL, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1, 1),
(26, 'default', 'created', 'App\\Models\\Hrm\\Attendance\\Holiday', 1, NULL, NULL, 'created', '[]', NULL, NULL, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1, 1),
(27, 'default', 'created', 'App\\Models\\Hrm\\Attendance\\Holiday', 2, NULL, NULL, 'created', '[]', NULL, NULL, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1, 1),
(28, 'default', 'created', 'App\\Models\\Hrm\\Attendance\\Holiday', 3, NULL, NULL, 'created', '[]', NULL, NULL, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1, 1),
(29, 'default', 'created', 'App\\Models\\Hrm\\Attendance\\Holiday', 4, NULL, NULL, 'created', '[]', NULL, NULL, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1, 1),
(30, 'default', 'created', 'App\\Models\\Hrm\\Attendance\\Holiday', 5, NULL, NULL, 'created', '[]', NULL, NULL, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1, 1),
(31, 'default', 'created', 'App\\Models\\Hrm\\Attendance\\Holiday', 6, NULL, NULL, 'created', '[]', NULL, NULL, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1, 1),
(32, 'default', 'created', 'App\\Models\\Hrm\\Attendance\\Holiday', 7, NULL, NULL, 'created', '[]', NULL, NULL, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1, 1),
(33, 'default', 'created', 'App\\Models\\Hrm\\Attendance\\Holiday', 8, NULL, NULL, 'created', '[]', NULL, NULL, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1, 1),
(34, 'default', 'created', 'App\\Models\\Hrm\\Attendance\\Holiday', 9, NULL, NULL, 'created', '[]', NULL, NULL, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1, 1),
(35, 'default', 'created', 'App\\Models\\Hrm\\Attendance\\Holiday', 10, NULL, NULL, 'created', '[]', NULL, NULL, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1, 1),
(36, 'default', 'created', 'App\\Models\\Hrm\\Attendance\\Holiday', 11, NULL, NULL, 'created', '[]', NULL, NULL, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1, 1),
(37, 'default', 'created', 'App\\Models\\Hrm\\Attendance\\Holiday', 12, NULL, NULL, 'created', '[]', NULL, NULL, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1, 1),
(38, 'default', 'created', 'App\\Models\\Hrm\\Attendance\\Holiday', 13, NULL, NULL, 'created', '[]', NULL, NULL, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1, 1),
(39, 'default', 'created', 'App\\Models\\Hrm\\Attendance\\Holiday', 14, NULL, NULL, 'created', '[]', NULL, NULL, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1, 1),
(40, 'default', 'created', 'App\\Models\\Hrm\\Attendance\\Holiday', 15, NULL, NULL, 'created', '[]', NULL, NULL, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1, 1),
(41, 'default', 'created', 'App\\Models\\Hrm\\Attendance\\Holiday', 16, NULL, NULL, 'created', '[]', NULL, NULL, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1, 1),
(42, 'default', 'created', 'App\\Models\\Hrm\\Attendance\\DutySchedule', 2, NULL, NULL, 'created', '[]', NULL, NULL, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1, 1),
(43, 'default', 'created', 'App\\Models\\Hrm\\Attendance\\Attendance', 1, NULL, NULL, 'created', '[]', NULL, NULL, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1, 1),
(44, 'default', 'created', 'App\\Models\\Hrm\\Attendance\\Attendance', 2, NULL, NULL, 'created', '[]', NULL, NULL, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1, 1),
(45, 'default', 'created', 'App\\Models\\Hrm\\Attendance\\Attendance', 3, NULL, NULL, 'created', '[]', NULL, NULL, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1, 1),
(46, 'default', 'created', 'App\\Models\\Hrm\\Attendance\\Attendance', 4, NULL, NULL, 'created', '[]', NULL, NULL, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1, 1),
(47, 'default', 'created', 'App\\Models\\Hrm\\Attendance\\Attendance', 5, NULL, NULL, 'created', '[]', NULL, NULL, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1, 1),
(48, 'default', 'created', 'App\\Models\\Hrm\\Attendance\\Attendance', 6, NULL, NULL, 'created', '[]', NULL, NULL, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1, 1),
(49, 'default', 'created', 'App\\Models\\Hrm\\Attendance\\Attendance', 7, NULL, NULL, 'created', '[]', NULL, NULL, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1, 1),
(50, 'default', 'created', 'App\\Models\\Hrm\\Attendance\\Attendance', 8, NULL, NULL, 'created', '[]', NULL, NULL, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1, 1),
(51, 'default', 'created', 'App\\Models\\Hrm\\Attendance\\Attendance', 9, NULL, NULL, 'created', '[]', NULL, NULL, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1, 1),
(52, 'default', 'created', 'App\\Models\\Hrm\\Attendance\\Attendance', 10, NULL, NULL, 'created', '[]', NULL, NULL, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1, 1),
(53, 'default', 'created', 'App\\Models\\Hrm\\Attendance\\Attendance', 11, NULL, NULL, 'created', '[]', NULL, NULL, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1, 1),
(54, 'default', 'created', 'App\\Models\\Hrm\\Attendance\\Attendance', 12, NULL, NULL, 'created', '[]', NULL, NULL, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1, 1),
(55, 'default', 'created', 'App\\Models\\Hrm\\Attendance\\Attendance', 13, NULL, NULL, 'created', '[]', NULL, NULL, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1, 1),
(56, 'default', 'created', 'App\\Models\\Hrm\\Attendance\\Attendance', 14, NULL, NULL, 'created', '[]', NULL, NULL, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1, 1),
(57, 'default', 'created', 'App\\Models\\Hrm\\Attendance\\Attendance', 15, NULL, NULL, 'created', '[]', NULL, NULL, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1, 1),
(58, 'default', 'created', 'App\\Models\\Hrm\\Attendance\\Attendance', 16, NULL, NULL, 'created', '[]', NULL, NULL, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1, 1),
(59, 'default', 'created', 'App\\Models\\Hrm\\Attendance\\Attendance', 17, NULL, NULL, 'created', '[]', NULL, NULL, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1, 1),
(60, 'default', 'created', 'App\\Models\\Hrm\\Attendance\\Attendance', 18, NULL, NULL, 'created', '[]', NULL, NULL, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1, 1),
(61, 'default', 'created', 'App\\Models\\Hrm\\Attendance\\Attendance', 19, NULL, NULL, 'created', '[]', NULL, NULL, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1, 1),
(62, 'default', 'created', 'App\\Models\\Hrm\\Attendance\\Attendance', 20, NULL, NULL, 'created', '[]', NULL, NULL, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1, 1),
(63, 'default', 'created', 'App\\Models\\Hrm\\Attendance\\Attendance', 21, NULL, NULL, 'created', '[]', NULL, NULL, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1, 1),
(64, 'default', 'created', 'App\\Models\\Hrm\\Attendance\\Attendance', 22, NULL, NULL, 'created', '[]', NULL, NULL, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1, 1),
(65, 'default', 'created', 'App\\Models\\Hrm\\Attendance\\Attendance', 23, NULL, NULL, 'created', '[]', NULL, NULL, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1, 1),
(66, 'default', 'created', 'App\\Models\\Hrm\\Attendance\\Attendance', 24, NULL, NULL, 'created', '[]', NULL, NULL, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1, 1),
(67, 'default', 'created', 'App\\Models\\Hrm\\Attendance\\Attendance', 25, NULL, NULL, 'created', '[]', NULL, NULL, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1, 1),
(68, 'default', 'created', 'App\\Models\\Hrm\\Attendance\\Attendance', 26, NULL, NULL, 'created', '[]', NULL, NULL, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1, 1),
(69, 'default', 'created', 'App\\Models\\Hrm\\Attendance\\Attendance', 27, NULL, NULL, 'created', '[]', NULL, NULL, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1, 1),
(70, 'default', 'created', 'App\\Models\\Hrm\\Attendance\\Attendance', 28, NULL, NULL, 'created', '[]', NULL, NULL, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1, 1),
(71, 'default', 'created', 'App\\Models\\Hrm\\Attendance\\Attendance', 29, NULL, NULL, 'created', '[]', NULL, NULL, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1, 1),
(72, 'default', 'created', 'App\\Models\\Hrm\\Attendance\\Attendance', 30, NULL, NULL, 'created', '[]', NULL, NULL, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1, 1),
(73, 'default', 'created', 'App\\Models\\Hrm\\Attendance\\Attendance', 31, NULL, NULL, 'created', '[]', NULL, NULL, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1, 1),
(74, 'default', 'created', 'App\\Models\\Hrm\\Attendance\\Attendance', 32, NULL, NULL, 'created', '[]', NULL, NULL, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1, 1),
(75, 'default', 'created', 'App\\Models\\Hrm\\Attendance\\Attendance', 33, NULL, NULL, 'created', '[]', NULL, NULL, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1, 1),
(76, 'default', 'created', 'App\\Models\\Hrm\\Attendance\\Attendance', 34, NULL, NULL, 'created', '[]', NULL, NULL, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1, 1),
(77, 'default', 'created', 'App\\Models\\Hrm\\Attendance\\Attendance', 35, NULL, NULL, 'created', '[]', NULL, NULL, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1, 1),
(78, 'default', 'created', 'App\\Models\\Hrm\\Attendance\\Attendance', 36, NULL, NULL, 'created', '[]', NULL, NULL, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1, 1),
(79, 'default', 'created', 'App\\Models\\Hrm\\Attendance\\Attendance', 37, NULL, NULL, 'created', '[]', NULL, NULL, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1, 1),
(80, 'default', 'created', 'App\\Models\\Hrm\\Attendance\\Attendance', 38, NULL, NULL, 'created', '[]', NULL, NULL, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1, 1),
(81, 'default', 'created', 'App\\Models\\Hrm\\Attendance\\Attendance', 39, NULL, NULL, 'created', '[]', NULL, NULL, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1, 1),
(82, 'default', 'created', 'App\\Models\\Hrm\\Attendance\\Attendance', 40, NULL, NULL, 'created', '[]', NULL, NULL, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1, 1),
(83, 'default', 'created', 'App\\Models\\Hrm\\Attendance\\Attendance', 41, NULL, NULL, 'created', '[]', NULL, NULL, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1, 1),
(84, 'default', 'created', 'App\\Models\\Hrm\\Attendance\\Attendance', 42, NULL, NULL, 'created', '[]', NULL, NULL, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1, 1),
(85, 'default', 'created', 'App\\Models\\Hrm\\Attendance\\Attendance', 43, NULL, NULL, 'created', '[]', NULL, NULL, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1, 1),
(86, 'default', 'created', 'App\\Models\\Hrm\\Attendance\\Attendance', 44, NULL, NULL, 'created', '[]', NULL, NULL, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1, 1),
(87, 'default', 'created', 'App\\Models\\Hrm\\Attendance\\Attendance', 45, NULL, NULL, 'created', '[]', NULL, NULL, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1, 1),
(88, 'default', 'created', 'App\\Models\\Hrm\\Attendance\\Attendance', 46, NULL, NULL, 'created', '[]', NULL, NULL, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1, 1),
(89, 'default', 'created', 'App\\Models\\Hrm\\Attendance\\Attendance', 47, NULL, NULL, 'created', '[]', NULL, NULL, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1, 1),
(90, 'default', 'created', 'App\\Models\\Hrm\\Attendance\\Attendance', 48, NULL, NULL, 'created', '[]', NULL, NULL, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1, 1),
(91, 'default', 'created', 'App\\Models\\Hrm\\Attendance\\Attendance', 49, NULL, NULL, 'created', '[]', NULL, NULL, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1, 1),
(92, 'default', 'created', 'App\\Models\\Hrm\\Attendance\\Attendance', 50, NULL, NULL, 'created', '[]', NULL, NULL, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1, 1),
(93, 'default', 'created', 'App\\Models\\Hrm\\Attendance\\Attendance', 51, NULL, NULL, 'created', '[]', NULL, NULL, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1, 1),
(94, 'default', 'created', 'App\\Models\\Hrm\\Attendance\\Attendance', 52, NULL, NULL, 'created', '[]', NULL, NULL, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1, 1),
(95, 'default', 'created', 'App\\Models\\Hrm\\Attendance\\Attendance', 53, NULL, NULL, 'created', '[]', NULL, NULL, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1, 1),
(96, 'default', 'created', 'App\\Models\\Hrm\\Attendance\\Attendance', 54, NULL, NULL, 'created', '[]', NULL, NULL, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1, 1),
(97, 'default', 'created', 'App\\Models\\Hrm\\Attendance\\Attendance', 55, NULL, NULL, 'created', '[]', NULL, NULL, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1, 1),
(98, 'default', 'created', 'App\\Models\\Hrm\\Attendance\\Attendance', 56, NULL, NULL, 'created', '[]', NULL, NULL, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1, 1),
(99, 'default', 'created', 'App\\Models\\Hrm\\Attendance\\Attendance', 57, NULL, NULL, 'created', '[]', NULL, NULL, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1, 1),
(100, 'default', 'created', 'App\\Models\\Hrm\\Attendance\\Attendance', 58, NULL, NULL, 'created', '[]', NULL, NULL, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1, 1),
(101, 'default', 'created', 'App\\Models\\Hrm\\Attendance\\Attendance', 59, NULL, NULL, 'created', '[]', NULL, NULL, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1, 1),
(102, 'default', 'created', 'App\\Models\\Hrm\\Attendance\\Attendance', 60, NULL, NULL, 'created', '[]', NULL, NULL, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1, 1),
(103, 'default', 'created', 'App\\Models\\Hrm\\Attendance\\Attendance', 61, NULL, NULL, 'created', '[]', NULL, NULL, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1, 1),
(104, 'default', 'created', 'App\\Models\\Hrm\\Attendance\\Attendance', 62, NULL, NULL, 'created', '[]', NULL, NULL, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1, 1),
(105, 'default', 'created', 'App\\Models\\Hrm\\Attendance\\Attendance', 63, NULL, NULL, 'created', '[]', NULL, NULL, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1, 1),
(106, 'default', 'created', 'App\\Models\\Hrm\\Attendance\\Attendance', 64, NULL, NULL, 'created', '[]', NULL, NULL, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1, 1),
(107, 'default', 'created', 'App\\Models\\Hrm\\Attendance\\Attendance', 65, NULL, NULL, 'created', '[]', NULL, NULL, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1, 1),
(108, 'default', 'created', 'App\\Models\\Hrm\\Attendance\\Attendance', 66, NULL, NULL, 'created', '[]', NULL, NULL, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1, 1),
(109, 'default', 'created', 'App\\Models\\Hrm\\Attendance\\Attendance', 67, NULL, NULL, 'created', '[]', NULL, NULL, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1, 1),
(110, 'default', 'created', 'App\\Models\\Hrm\\Attendance\\Attendance', 68, NULL, NULL, 'created', '[]', NULL, NULL, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1, 1),
(111, 'default', 'created', 'App\\Models\\Hrm\\Attendance\\Attendance', 69, NULL, NULL, 'created', '[]', NULL, NULL, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1, 1),
(112, 'default', 'created', 'App\\Models\\Hrm\\Attendance\\Attendance', 70, NULL, NULL, 'created', '[]', NULL, NULL, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1, 1),
(113, 'default', 'created', 'App\\Models\\Hrm\\Attendance\\Attendance', 71, NULL, NULL, 'created', '[]', NULL, NULL, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1, 1),
(114, 'default', 'created', 'App\\Models\\Hrm\\Attendance\\Attendance', 72, NULL, NULL, 'created', '[]', NULL, NULL, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1, 1),
(115, 'default', 'created', 'App\\Models\\Hrm\\Attendance\\Attendance', 73, NULL, NULL, 'created', '[]', NULL, NULL, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1, 1),
(116, 'default', 'created', 'App\\Models\\Hrm\\Attendance\\Attendance', 74, NULL, NULL, 'created', '[]', NULL, NULL, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1, 1),
(117, 'default', 'created', 'App\\Models\\Hrm\\Attendance\\Attendance', 75, NULL, NULL, 'created', '[]', NULL, NULL, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1, 1),
(118, 'default', 'created', 'App\\Models\\Hrm\\Attendance\\Attendance', 76, NULL, NULL, 'created', '[]', NULL, NULL, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1, 1),
(119, 'default', 'created', 'App\\Models\\Hrm\\Attendance\\Attendance', 77, NULL, NULL, 'created', '[]', NULL, NULL, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1, 1),
(120, 'default', 'created', 'App\\Models\\Hrm\\Attendance\\Attendance', 78, NULL, NULL, 'created', '[]', NULL, NULL, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1, 1),
(121, 'default', 'created', 'App\\Models\\Hrm\\Attendance\\Attendance', 79, NULL, NULL, 'created', '[]', NULL, NULL, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1, 1),
(122, 'default', 'created', 'App\\Models\\Hrm\\Attendance\\Attendance', 80, NULL, NULL, 'created', '[]', NULL, NULL, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1, 1),
(123, 'default', 'created', 'App\\Models\\Hrm\\Attendance\\Attendance', 81, NULL, NULL, 'created', '[]', NULL, NULL, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1, 1),
(124, 'default', 'created', 'App\\Models\\Hrm\\Attendance\\Attendance', 82, NULL, NULL, 'created', '[]', NULL, NULL, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1, 1),
(125, 'default', 'created', 'App\\Models\\Hrm\\Attendance\\Attendance', 83, NULL, NULL, 'created', '[]', NULL, NULL, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1, 1),
(126, 'default', 'created', 'App\\Models\\Hrm\\Attendance\\Attendance', 84, NULL, NULL, 'created', '[]', NULL, NULL, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1, 1),
(127, 'default', 'created', 'App\\Models\\Hrm\\Attendance\\Attendance', 85, NULL, NULL, 'created', '[]', NULL, NULL, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1, 1),
(128, 'default', 'created', 'App\\Models\\Hrm\\Attendance\\Attendance', 86, NULL, NULL, 'created', '[]', NULL, NULL, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1, 1),
(129, 'default', 'created', 'App\\Models\\Hrm\\Attendance\\Attendance', 87, NULL, NULL, 'created', '[]', NULL, NULL, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1, 1),
(130, 'default', 'created', 'App\\Models\\Hrm\\Attendance\\Attendance', 88, NULL, NULL, 'created', '[]', NULL, NULL, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1, 1),
(131, 'default', 'created', 'App\\Models\\Hrm\\Attendance\\Attendance', 89, NULL, NULL, 'created', '[]', NULL, NULL, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1, 1),
(132, 'default', 'created', 'App\\Models\\Hrm\\Attendance\\Attendance', 90, NULL, NULL, 'created', '[]', NULL, NULL, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1, 1),
(133, 'default', 'created', 'App\\Models\\Hrm\\Attendance\\Attendance', 91, NULL, NULL, 'created', '[]', NULL, NULL, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1, 1),
(134, 'default', 'created', 'App\\Models\\Hrm\\Attendance\\Attendance', 92, NULL, NULL, 'created', '[]', NULL, NULL, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1, 1),
(135, 'default', 'created', 'App\\Models\\Hrm\\Attendance\\Attendance', 93, NULL, NULL, 'created', '[]', NULL, NULL, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `advance_salaries`
--

CREATE TABLE `advance_salaries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `advance_type_id` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `company_id` bigint(20) UNSIGNED NOT NULL,
  `date` date NOT NULL,
  `amount` double(16,2) DEFAULT NULL,
  `request_amount` double(16,2) NOT NULL DEFAULT 0.00,
  `paid_amount` double(16,2) NOT NULL DEFAULT 0.00,
  `due_amount` double(16,2) NOT NULL DEFAULT 0.00,
  `recovery_mode` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1=Installment, 2=One Time',
  `recovery_cycle` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1=Monthly, 2=Yearly',
  `installment_amount` double(16,2) NOT NULL DEFAULT 0.00,
  `recover_from` date NOT NULL,
  `pay` bigint(20) UNSIGNED NOT NULL DEFAULT 9,
  `status_id` bigint(20) UNSIGNED NOT NULL DEFAULT 2,
  `approver_id` bigint(20) UNSIGNED DEFAULT NULL,
  `remarks` text DEFAULT NULL,
  `return_status` bigint(20) UNSIGNED NOT NULL DEFAULT 22,
  `created_by` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `updated_by` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `branch_id` bigint(20) UNSIGNED DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `advance_salary_logs`
--

CREATE TABLE `advance_salary_logs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `amount` double(16,2) NOT NULL,
  `due_amount` double(16,2) DEFAULT NULL,
  `is_pay` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0=Company Pay, 1= Staff Pay',
  `advance_salary_id` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `created_by` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `updated_by` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `payment_note` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `branch_id` bigint(20) UNSIGNED DEFAULT 1,
  `company_id` bigint(20) UNSIGNED DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `advance_types`
--

CREATE TABLE `advance_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `company_id` bigint(20) UNSIGNED NOT NULL,
  `status_id` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `created_by` bigint(20) UNSIGNED DEFAULT 1,
  `updated_by` bigint(20) UNSIGNED DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `branch_id` bigint(20) UNSIGNED DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `advance_types`
--

INSERT INTO `advance_types` (`id`, `name`, `company_id`, `status_id`, `created_by`, `updated_by`, `created_at`, `updated_at`, `branch_id`) VALUES
(1, 'Salary Advance', 2, 1, 1, 1, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1),
(2, 'Loan', 2, 1, 1, 1, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1);

-- --------------------------------------------------------

--
-- Table structure for table `all_contents`
--

CREATE TABLE `all_contents` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `company_id` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `type` varchar(50) NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `content` longtext NOT NULL,
  `meta_title` text NOT NULL,
  `meta_description` varchar(1000) DEFAULT NULL,
  `keywords` varchar(1000) DEFAULT NULL,
  `meta_image` varchar(255) DEFAULT NULL,
  `created_by` bigint(20) UNSIGNED DEFAULT 1,
  `updated_by` bigint(20) UNSIGNED DEFAULT 1,
  `status_id` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `branch_id` bigint(20) UNSIGNED DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `all_contents`
--

INSERT INTO `all_contents` (`id`, `company_id`, `user_id`, `type`, `title`, `slug`, `content`, `meta_title`, `meta_description`, `keywords`, `meta_image`, `created_by`, `updated_by`, `status_id`, `created_at`, `updated_at`, `branch_id`) VALUES
(1, 1, 1, 'page', 'About Us', 'about-us', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla quam velit, vulputate eu pharetra nec, mattis ac neque. Duis vulputate commodo lectus, ac blandit elit tincidunt id. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla quam velit, vulputate eu pharetra nec, mattis ac neque. Duis vulputate commodo lectus, ac blandit elit tincidunt id. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla quam velit, vulputate eu pharetra nec, mattis ac neque. Duis vulputate commodo lectus, ac blandit elit tincidunt id.</p>', 'About Us', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla quam velit, vulputate eu pharetra nec, mattis ac neque. Duis vulputate commodo lectus, ac blandit elit tincidunt id. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla quam velit, vulputate eu pharetra nec, mattis ac neque. Duis vulputate commodo lectus, ac blandit elit tincidunt id. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla quam velit, vulputate eu pharetra nec, mattis ac neque. Duis vulputate commodo lectus, ac blandit elit tincidunt id.', 'about, us, about us', '', 1, 1, 1, '2022-03-22 00:39:40', '2022-03-22 00:39:40', 1),
(2, 1, 1, 'page', 'Contact Us', 'contact-us', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla quam velit, vulputate eu pharetra nec, mattis ac neque. Duis vulputate commodo lectus, ac blandit elit tincidunt id. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla quam velit, vulputate eu pharetra nec, mattis ac neque. Duis vulputate commodo lectus, ac blandit elit tincidunt id. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla quam velit, vulputate eu pharetra nec, mattis ac neque. Duis vulputate commodo lectus, ac blandit elit tincidunt id.</p>', 'Contact Us', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla quam velit, vulputate eu pharetra nec, mattis ac neque. Duis vulputate commodo lectus, ac blandit elit tincidunt id. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla quam velit, vulputate eu pharetra nec, mattis ac neque. Duis vulputate commodo lectus, ac blandit elit tincidunt id. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla quam velit, vulputate eu pharetra nec, mattis ac neque. Duis vulputate commodo lectus, ac blandit elit tincidunt id.', 'contact, us, contact us', '', 1, 1, 1, '2022-03-22 00:39:40', '2022-03-22 00:39:40', 1),
(3, 1, 1, 'page', 'Privacy Policy', 'privacy-policy', '<p>This HRM Privacy Policy includes how we collect, use, disclose, transfer, and store your personal data for the activities mentioned-below, including your visit to HRM website that links to this page, your attendance to our marketing and learning events both online and offline, and for our business account management. Your choices and rights related to your personal data are extensively described here.</p>\r\n\r\n<p>We are very expressive towards our firm commitment to help our users comprehend what information we collect about them and what may happen to that information through this Privacy Policy.</p>\r\n\r\n<p><span style=\"font-size:22pt\"><strong>Privacy Policy</strong></span></p>\r\n\r\n<p>Your privacy is valuable and HRM values it. In this Privacy Policy, we describe the information that we collect about you when you visit our website, HRM (the &quot;Website&quot;) and use the services available on the Website (&quot;Services&quot;), and how we use and disclose that information.</p>\r\n\r\n<p>If you have any questions or comments about the Privacy Policy, please contact us at info@HRM. This Policy is incorporated into and is subject to the HRM Terms of Use, which can be accessed at HRM /terms-and-condition. Your use of the Website and/or Services and any personal information you provide on the Website remains subject to the terms of the Policy and HRM &#39;s Terms of Use.</p>\r\n\r\n<p><span style=\"font-size:22pt\"><strong>A.</strong> </span><span style=\"font-size:22pt\"><strong>TYPE OF INFORMATION WE COLLECT</strong></span><a name=\"_GoBack\"></a></p>\r\n\r\n<p><strong>1. PERSONAL INFORMATION</strong></p>\r\n\r\n<p>&quot;Personal information&quot; is defined to include information that whether on its own or in combination with other information may be used to readily identify or contact you such as: name, address, email address, phone number etc.</p>\r\n\r\n<p>We collect personal information from Service Professionals offering their products and services. This information is partially or completely accessible to all visitors using HRM &#39;s website or mobile application, either directly or by submitting a request for a service. Service Professionals and customers are required to create an account to be able to access certain portions of our Website, such as to submit questions, participate in polls or surveys, to request a quote, to submit a bid in response to a quote, and request information. - Service Professionals, if and when they create and use an account with HRM, will be required to disclose and provide to HRM information including personal contact details, bank details, personal identification details and participate in polls or surveys or feedbacks etc. Such information gathered shall be utilized to ensure greater customer satisfaction and help a customer satiate their needs.</p>\r\n\r\n<p>The type of personal information that we collect from you varies based on your particular interaction with our Website or mobile application.</p>\r\n\r\n<p><strong>Consumers</strong>: During the Account registration process and during your usage of HRM &#39;s website or application, we will collect information such as your name, postal code, telephone email address and other personal information. You also may provide us with your, mailing address, and demographic information (e.g., gender, age, political preference, education, race or ethnic origin, and other information relevant to user surveys and/or offers). We may also collect personal information that you post in your Offer, Profile, Wants, or Feedback, and any comments or discussions you post in any blog, chat room, or other correspondence site on the Website or mobile application, or any comments you provide during dispute resolution with other users of the Website or mobile application.</p>\r\n\r\n<p>Service Professionals: If you are a Service Professional and would like to post any information about yourself, we will require you to register for an Account. During the Account registration process, we will collect your business name, telephone number, address, zip code, travel preferences, a description of your services, a headline for your profile, first and last name, and email address. Other information may also be required to be provided to HRM whilst you avail and use HRM &rsquo;s website or application. In addition, you may require to provide other content or information about your business, including photographs and videos.</p>\r\n\r\n<p>HRM reserves the right to record the conversations between service professionals and consumers facilitated by HRM through the messaging/chat mechanism on the platform or the calls made through the virtual numbers provided to safeguard the privacy of consumers and service professionals. All the chat/messaging logs or call recordings can be used to but not limited to monitor and prohibit abuse, safeguard the rights of consumers and service professionals, resolve disputes.</p>\r\n\r\n<p><strong>2. PERSONAL INFORMATION FROM SOCIAL NETWORKING SITES</strong></p>\r\n\r\n<p>You may log into our Website through your Facebook account. If you do so, you must enter the email address and password that you use for your Facebook account. We will ask that you grant us permission to access and collect your Facebook basic information (this includes your name, profile picture, gender, networks, user IDs, list of friends, date of birth, email address, and any other information you have set to public on your Facebook account). If you allow us to have access to this information, then we will have access to this information even if you have chosen not to make that information public.</p>\r\n\r\n<p>We store the information that we receive from Facebook with other information that we collect from you or receive about you.</p>\r\n\r\n<p><strong>3. AUTOMATIC INFORMATION, USE OF COOKIES AND OTHER TRACKING DEVICES</strong></p>\r\n\r\n<p>We and our third party service providers, which include ad networks, use cookies, web beacons, and other tracking technologies to collect information about your use of our Website and Services, such as your browser type, your ISP or operating system, your domain name, your access time, the URL of the previous website you visited, your page views, your IP address, and the type of device that you use. We also track how frequently you visit our Website and use our Services. We use this information (including the information collected by our third party service providers) for Website analytics (including to determine which portions of our Website are used most frequently, what our users like/do not like), to assist us in determining relevant advertising) both on and off our Website), to evaluate the success of our advertising campaigns, and as otherwise described in this policy. Currently, we do not honor browser requests not to be tracked.</p>\r\n\r\n<p>We may obtain your device ID, which is sent to HRM &#39;s servers and used in fraud prevention efforts.</p>\r\n\r\n<p><strong>Cookies</strong>: We and our third party service providers collect information from you by using cookies. A cookie is a small file stored on user&#39;s computer hard drive containing information about the user. The cookie helps us analyze web traffic or informs you about your use of a particular website. Cookies allow web applications to respond to you as an individual, tailoring its operations to your needs, likes and dislikes by gathering and remembering information about your preferences. When you visit the Website, we may send one or more cookies (i.e., a small text file containing a string of alphanumeric characters) to your computer that identifies your browser.</p>\r\n\r\n<p>Some of these cookies may be connected to third-party companies or websites. The terms of use of such cookies are governed by this Policy and the privacy policy of the relevant third party company or website. For example, Google measures the performance of advertisements by placing cookies on your computer when you click on ads. If you visit the Website when you have such cookies on your computer, we and Google will be able to tell that you saw the ad delivered by Google. The terms of use of these cookies are governed by this Policy and Google&#39;s Privacy Policy.</p>\r\n\r\n<p><strong>Disabling Cookies</strong>: You can choose to accept or decline cookies. Most web browsers automatically accept cookies, but you can usually modify your browser setting to decline cookies if you prefer. If you disable cookies, you may be prevented from taking full advantage of the Website because it may not function properly if the ability to accept cookies is disabled.</p>\r\n\r\n<p>Clear GIFs, pixel tags and other technologies. Clear GIFs are tiny graphics with a unique identifier, similar in function to cookies. In contrast to cookies, which are stored on your computer&#39;s hard drive, clear GIFs are embedded invisibly on web pages. We may use clear GIFs (a.k.a. web beacons, web bugs or pixel tags), in connection with our Website to, among other things, track the activities of Website visitors, help us manage content, and compile statistics about Website usage. We and our third party service providers also use clear GIFs in HTML emails to our customers, to help us track email response rates, identify when our emails are viewed, and track whether our emails are forwarded.</p>\r\n\r\n<p><span style=\"font-size:22pt\"><strong>B. Usage of the Information We Collect</strong></span></p>\r\n\r\n<p><strong>1.Use of your PERSONAL INFORMATION</strong></p>\r\n\r\n<p>We collect your personal information and aggregate information about the use of our Website and Services to better understand your needs and to provide you with a better Website experience. Specifically, we may use your personal information for any of the following reasons:</p>\r\n\r\n<p>To provide our Services to you, including registering you for our Services, verifying your identity and authority to use our Services, and to otherwise enable you to use our Website and our Services;</p>\r\n\r\n<p>For customer support and to respond to your inquiries;</p>\r\n\r\n<p>For internal record-keeping purposes;</p>\r\n\r\n<p>To process billing and payment, including sharing with third party payment gateways in connection with Website and/or HRM &#39;s products and Services;</p>\r\n\r\n<p>To improve and maintain our Website and our Services (for example, we track information entered through the &quot;Search&quot; function; this helps us determine which areas of our Website users like best and areas that we may want to enhance; we also will use for trouble-shooting purposes, where applicable);</p>\r\n\r\n<p>To periodically send promotional emails to the email address you provide regarding new products from HRM, special offers from HRM or other information about HRM that we think you may find interesting;</p>\r\n\r\n<p>To contact you via email, telephone, facsimile or mail, or, where requested, by text message, to deliver certain services or information you have requested;</p>\r\n\r\n<p>For HRM &lsquo;s market research purposes, including, but not limited to, the customization of the Website according to your interests;</p>\r\n\r\n<p>We may use your demographic information (i.e., age, postal code, residential and commercial addresses, and other various data) to more effectively facilitate the promotion of goods and services to appropriate target audiences and for other research and analytical purposes;</p>\r\n\r\n<p>To resolve disputes, to protect ourselves and other users of our Website and Services, and to enforce our Terms of Use;</p>\r\n\r\n<p>We also may compare personal information collected through the Website and Services to verify its accuracy with personal information collected from third parties;</p>\r\n\r\n<p>We may combine aggregate data with the personal information we collect about you.</p>\r\n\r\n<p>From time to time, HRM may use personal information for new and unanticipated uses not previously disclosed in our Privacy Policy. If our information practices change regarding information previously collected, HRM shall make reasonable efforts to provide notice and obtain consent of any such uses as may be required by law.</p>\r\n\r\n<p>For a better experience, while using our service, we may require you to provide us with certain personally identifiable information e.g. users name, address, location, phone number, device information. The information that We request will be retained by us and used as described in this privacy policy. The app does use third party services that may collect information used to identify you. Link to privacy policy of third party service providers used by the app</p>\r\n\r\n<p><span style=\"font-size:22pt\"><strong>C. E-mail Newsletters, Referral, Votes and Surveys</strong></span></p>\r\n\r\n<p>At our sole discretion, HRM may offer any of the following free services on the Website, which you may select to use or receive at your option. Certain of the following services may require you to provide additional personal information as detailed below:</p>\r\n\r\n<p><strong>1. E-mail NEWSLETTERS</strong></p>\r\n\r\n<p>We may offer a free electronic newsletter to users. We will gather the email addresses of users who sign up for HRM for the newsletter mailing list. Users may remove themselves from this mailing list by opting out of receiving newsletters during the registration process, by following the link provided in each newsletter that points users to a subscription management page where the user can unsubscribe from receiving newsletters or by changing their preferences in their Profile Settings page.</p>\r\n\r\n<p><strong>2.&quot;REFER TO A FRIEND&quot;</strong></p>\r\n\r\n<p>Our Website users can voluntarily choose to electronically forward a link, page, or document to someone else by clicking &quot;send to a friend.&quot; To do so, the user must provide his or her email address, as well as the email address of the recipient. The user&#39;s email address is used only in the case of transmission errors and, of course, to let the recipient know who sent the email. The information is not used for any other purpose.</p>\r\n\r\n<p><strong>3.VOTING</strong></p>\r\n\r\n<p>We may offer interactive polls to users so they can easily share their opinions with other users and see what our audience thinks about important issues, Services, and/or the Website. Opinions or other responses to polls are aggregated and are not identifiable to any particular user. We may use a system to &quot;tag&quot; users after they have voted, so they can vote only once on a particular question. This tag is not correlated with information about individual users.</p>\r\n\r\n<p><strong>4.SURVEYS</strong></p>\r\n\r\n<p>We may conduct user surveys from time to time to better target our content to our Website users. We will not share individual responses from these surveys with any third party. We will share aggregate data with third party service providers, partners, and other third parties. We also will post aggregate data containing survey responses on our Website; that data may be viewed and downloaded by other users of our Website.</p>\r\n\r\n<p><span style=\"font-size:22pt\"><strong>D. Security</strong></span></p>\r\n\r\n<p>We employ procedural and technological security measures, which are reasonably designed to help protect your personal information from unauthorized access or disclosure. HRM may use encryption, passwords, and physical security measures to help protect your personal information against unauthorized access and disclosure. No security measures, however, are 100% complete. Therefore, we do not promise and cannot guarantee, and thus you should not expect, that your personal information or private communications will not be collected and used by others. You should take steps to protect against unauthorized access to your password, phone, and computer by, among other things, signing off after using a shared computer, choosing a robust password that nobody else knows or can easily guess, and keeping your log-in and password private. HRM is not responsible for the unauthorized use of your information or for any lost, stolen, compromised passwords, or for any activity on your Account via unauthorized password activity.</p>\r\n\r\n<p><span style=\"font-size:22pt\"><strong>E. Disclosure</strong></span></p>\r\n\r\n<p>We may share the information that we collect about you, including your personal information, as follows:</p>\r\n\r\n<p><strong>1. DISCLOSING INFORMATION TO PROTECT US AND OTHERS </strong></p>\r\n\r\n<p>We may disclose your information including Personal Information if: (i) HRM reasonably believes that disclosure is necessary in order to comply with a legal process (such as a court order, search warrant, etc.) or other legal requirement of any governmental authority, (ii) disclosure would potentially mitigate our liability in an actual or potential lawsuit, (iii) reasonably necessary to enforce this Privacy Policy, our Terms of Use etc. (iv) disclosure is intended to help investigate or prevent unauthorized transactions or other illegal activities, or (v) necessary or appropriate to protect our rights or property, or the rights or property of any person or entity.</p>\r\n\r\n<p><strong>2. DISCLOSING INFORMATION TO THIRD PARTY SERVICE PROVIDERS AND BUSINESS PARTNERS </strong></p>\r\n\r\n<p>We may contract with various third parties for the provision and maintenance of the Website, Services and our business operations, and HRM may need to share your personal information and data generated by cookies and aggregate information (collectively, &quot;information&quot;) with these vendors and service agencies. For example, we may provide your information to a credit card processing company to process your payment. The vendors and service agencies will not receive any right to use your personal information beyond what is necessary to perform its obligations to provide the Services to you. If you complete a survey, we also may share your information with the survey provider; if we offer a survey in conjunction with another entity, we also will disclose the results to that entity.</p>\r\n\r\n<p><strong>3.DISCLOSURE TO NON-AFFILIATED THIRD PARTIES IN FURTHERANCE OF YOUR REQUEST</strong></p>\r\n\r\n<p>Your request for services may be shared with third party websites with whom we have a contractual relationship in order to provide your request with maximum exposure. The post on the third party website will include the details of your request, including your location, and other contact details. Interested bidders, however, will be able to click on your request on such third party site, and will be directed to our Website where they will have access to your contact details (Partial or complete), as would any other service provider on our Website interested in bidding on your request.</p>\r\n\r\n<p><strong>4.DISCLOSING TO OTHER USERS OF OUR WEBSITE</strong></p>\r\n\r\n<p>If you are a Service Professional, the information that you post (other than your payment information) is available to other users of our Website and our Services. Comments that users post to our Website also will be available to other visitors to our Website (see our discussion of User Generated Content below). In addition, we will post the results (in aggregate form) of surveys to our Website. If you are a consumer, name, and location, as well as the details of your request, are available to all visitors to our Website. Bidding professionals also will be permitted to see the consumer&#39;s full name, telephone number, email address and the -location</p>\r\n\r\n<p><strong>5.DISCLOSURE OF THE INFORMATION TO LAW ENFORCEMENT OR GOVERNMENT OFFICIALS</strong></p>\r\n\r\n<p>We will disclose your information, including, without limitation, your name, city, state, telephone number, email address, user ID history, quoting and listing history, and fraud complaints, to law enforcement or other government officials if we are required to do so by law, regulation or other government authority or otherwise in cooperation with an investigation of a governmental authority.</p>\r\n\r\n<p><strong>6.DURING THE CHANGE OF CONTROL OR BANKRUPTCY</strong></p>\r\n\r\n<p>In the event that HRM undergoes a change in control, including, without limitation, a merger or sale of all or substantially all of HRM&#39;s assets to which this Website relates or other corporate reorganization in which HRM participates, and is thus merged with or acquired by a third party entity (a &quot;Successor&quot;), HRM hereby reserves the right to transfer the information we have collected from the users of the Website and/or Services to such Successor.</p>\r\n\r\n<p>In addition, in the event of HRM&#39;s bankruptcy, reorganization, receivership, or assignment for the benefit of creditors, or the application or laws or equitable principles affecting creditors&#39; rights generally, HRM may not be able to control how your information is transferred, used, or treated and reserves the right to transfer the information we have collected from the users of the Website and/or Services to non-affiliated third parties in such event.</p>\r\n\r\n<p><strong>7.PROPOSE FOR INFORMATION DISCLOSURE</strong></p>\r\n\r\n<p>We may share your personal information with other Registered Users to whom you explicitly ask us to send your information or if you explicitly consent to such disclosure upon receipt of a specific Service. For instance, when you contract for a specific Service with another Registered User, HRM will send that Registered User a notice that includes the personal information that you have chosen to allow HRM to reveal to users with whom you contract.</p>\r\n\r\n<p><span style=\"font-size:22pt\"><strong>F. EXTERNAL WEBSITES LINKS</strong></span></p>\r\n\r\n<p>The Website may contain links to other websites or resources over which HRM does not have any control. Such links do not constitute an endorsement by HRM of those external websites. You acknowledge that HRM is providing these links to you only as a convenience, and further agree that HRM is not responsible for the content of such external websites. We are not responsible for the protection and privacy of any information which you provide while visiting such external websites and such sites are not governed by this Policy. Your use of any external website is subject to the terms of use and privacy policy located on the linked to external website.</p>\r\n\r\n<p><span style=\"font-size:22pt\"><strong>G. EDIT YOUR PERSONAL INFORMATION</strong></span></p>\r\n\r\n<p>You may choose to restrict the collection or use of your personal information in the following ways:</p>\r\n\r\n<p>You can review, correct and delete your personal information by logging into the Website and navigating to your preferences page in &quot;Edit Profile.&quot; You must promptly update your personal information if it changes or is inaccurate. Typically, we will not manually alter your personal information because it is very difficult to verify your identity remotely. Nonetheless, upon your request we will close your Account and remove your personal information from view as soon as reasonably possible based on your Account activity and in accordance with applicable law. We do retain information from closed Accounts in order to comply with the law, prevent fraud, collect any fees owed, resolve disputes, troubleshoot problems, assist with any investigations of any Registered User, enforce our Terms of Use, and take any other actions otherwise permitted by law that we deem necessary in our sole and absolute discretion. You should understand, however, that once you publicly post a Request, Offer, Want, Feedback, or any other information onto the Website, you may not be able to change or remove it. Once we have deleted or removed your Account, you agree that HRM shall not be responsible for any personal information that was not included within your deleted and/or removed Account that remains on the Website.</p>\r\n\r\n<p><span style=\"font-size:22pt\"><strong>H. CHOICES YOU HAVE DURING THE USE OF YOUR PERSONAL INFORMATION?</strong></span></p>\r\n\r\n<p>We may send periodic promotional or informational emails to you. You may opt-out of such communications by following the opt-out instructions contained in the email. Please note that it may take up to 10 business days for us to process opt-out requests. If you opt-out of receiving emails about recommendations or other information we think may interest you, we may still send you emails about your Account or any Services you have requested or received from us.</p>\r\n\r\n<p><span style=\"font-size:22pt\"><strong>I. AD NETWORKS BY THIRD PARTIES</strong></span></p>\r\n\r\n<p>We participate in third party ad networks that may display advertisements on other websites based on your visits to our Site as well as other websites. This enables us and these third parties to target advertisements by displaying ads for products and services in which you might be interested. Third party ad network providers, advertisers, sponsors and/or traffic measurement services may use cookies, JavaScript, web beacons (including clear GIFs), Flash LSOs and other technologies to measure the effectiveness of their ads and to personalize advertising content to you. These third party cookies and other technologies are governed by each third party&#39;s specific privacy policy, and not by HRM &#39;s Policy. We may provide these third-party advertisers with information about your usage of our Site and our services, as well as aggregate or non-personally identifiable information about visitors to our Site and users of our service.</p>\r\n\r\n<p><span style=\"font-size:22pt\"><strong>J. YOUR FULL NAME AND USE OF HRM INFORMATION </strong></span></p>\r\n\r\n<p><strong>1. FULL NAME OF YOURS</strong></p>\r\n\r\n<p>As a Registered User of the Website you will select a Full Name during the registration process. All of your activities on the Website will be traceable to your Full Name. Certain other people, including other Registered Users with whom you have transacted business via the Website, can see a large part of your activity on the Website. If you book a service with a Registered User, cancel a scheduled service with a Registered User, receive an offer on your posted service from a Registered User, or have posted a service, HRM may send a notice to you or the appropriate Registered User that includes your Full Name. Thus, if you associate your real name with your Full Name, the people to whom you have revealed your name may be able to personally identify your Website activities.</p>\r\n\r\n<p><strong>2.USING INFORMATION FROM HRM </strong></p>\r\n\r\n<p>The Website facilitates your sharing of personal information with others in order to negotiate, provide, and use the Services. If you agree to contract for a service with another Registered User, you may need to reveal your name, email, phone number, or personal address to that individual so that the service may be performed. Please respect the privacy of others. You agree to use the information of other users solely for the following purposes: (a) HRM -transaction-related purposes; and (b) using Services offered through the Website.</p>\r\n\r\n<p><strong>3. PROTECT YOUR ACCOUNT</strong></p>\r\n\r\n<p>Your password is the key to your Account. When creating your password, you should use unique numbers, letters, special characters, and combinations thereof. In addition, DO NOT disclose your password to anyone. If you do share your password or your personal information with others, you are solely responsible for all actions taken via your Account. If you lose control of your password, you may lose substantial control over your personal information and be subject to legally binding actions taken on your behalf. Thus, IF YOUR PASSWORD HAS BEEN COMPROMISED FOR ANY REASON, YOU MUST IMMEDIATELY NOTIFY HRM TO CHANGE YOUR PASSWORD.</p>\r\n\r\n<p><span style=\"font-size:22pt\"><strong>K. CONTENT GENERATED BY USERS</strong></span></p>\r\n\r\n<p>We invite you to post content on our Website, including your comments, feedback, pictures, and any other information that you would like to be available on our Website. If you post content to our Website, all of the information that you post will be available to all visitors to our Website. If you post your own content on our Website or Services, your posting may become public and HRM cannot prevent such information from being used in a manner that may violate this Policy, the law, or your personal privacy.</p>\r\n\r\n<p><span style=\"font-size:22pt\"><strong>L. UPDATES OF PRIVACY POLICY</strong></span></p>\r\n\r\n<p>THIS POLICY IS CURRENT AS OF THE EFFECTIVE DATE SET FORTH ABOVE. HRM MAY, IN ITS SOLE AND ABSOLUTE DISCRETION, CHANGE THIS POLICY FROM TIME TO TIME BY UPDATING THIS DOCUMENT. HRM WILL POST ITS UPDATED POLICY ON THE WEBSITE ON THIS PAGE. HRM ENCOURAGES YOU TO REVIEW THIS POLICY REGULARLY FOR ANY CHANGES. YOUR CONTINUED USE OF THIS WEBSITE AND/OR CONTINUED PROVISION OF PERSONAL INFORMATION TO US WILL BE SUBJECT TO THE TERMS OF THE THEN-CURRENT POLICY.</p>\r\n\r\n<p>&copy;2022 HRM All Rights Reserved</p>\r\n\r\n<p><br />\r\n&nbsp;</p>', 'Privacy Policy', NULL, 'privacy, policy, privacy policy', '', 1, 1, 1, '2022-03-22 00:39:40', '2022-03-26 18:59:57', 1),
(4, 1, 1, 'page', 'Support 24/7', 'support-24-7', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla quam velit, vulputate eu pharetra nec, mattis ac neque. Duis vulputate commodo lectus, ac blandit elit tincidunt id. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla quam velit, vulputate eu pharetra nec, mattis ac neque. Duis vulputate commodo lectus, ac blandit elit tincidunt id. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla quam velit, vulputate eu pharetra nec, mattis ac neque. Duis vulputate commodo lectus, ac blandit elit tincidunt id.</p>', 'Terms of Use', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla quam velit, vulputate eu pharetra nec, mattis ac neque. Duis vulputate commodo lectus, ac blandit elit tincidunt id. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla quam velit, vulputate eu pharetra nec, mattis ac neque. Duis vulputate commodo lectus, ac blandit elit tincidunt id. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla quam velit, vulputate eu pharetra nec, mattis ac neque. Duis vulputate commodo lectus, ac blandit elit tincidunt id.', 'supports, 24, 7, support 24/7', '', 1, 1, 1, '2022-03-22 00:39:40', '2022-03-22 00:39:40', 1);
INSERT INTO `all_contents` (`id`, `company_id`, `user_id`, `type`, `title`, `slug`, `content`, `meta_title`, `meta_description`, `keywords`, `meta_image`, `created_by`, `updated_by`, `status_id`, `created_at`, `updated_at`, `branch_id`) VALUES
(5, 1, 1, 'page', 'Terms of Use', 'terms-of-use', '<p><span style=\"font-size:22pt\"><strong>Terms and Conditions</strong></span><br />\r\n24hourworx, along with its subsidiaries and affiliates provides the information and services on its World Wide Web site(s) &quot; www.24hourworx.com&quot; under the following terms and conditions (the &ldquo;T &amp; C&rdquo;). By accessing and/or using the Site, you indicate your acceptance of these Terms.</p>\r\n\r\n<p>By using our Site, you agree to not knowingly circumvent, evade, or fail to comply with all applicable Terms to the extent that they apply to you.</p>\r\n\r\n<p><strong>Laws and Regulations</strong></p>\r\n\r\n<p>Access to the site and use of it are subject to all applicable international, federal, state and local laws and regulations. User agrees not to use the Site in any way that violates such laws or regulations.</p>\r\n\r\n<p><strong>Copyright and Trademarks</strong></p>\r\n\r\n<p>The information available on or through this Site is the property of 24hourworx, or its licensors, and is protected by copyright, trademark, and other intellectual property laws. Users may not modify, copy, distribute, transmit, display, publish, sell, license, create derivative works or otherwise use any content or information available on or through this Site, directly or indirectly, for commercial or public purposes. Users may not use the trademarks, logos and service marks (&quot;Marks&quot;) for any purpose including, but not limited to use as &quot;hot links&quot; or meta tags in other pages or sites on the World Wide Web without the written permission of 24hourworx or such third party that may own the Mark.</p>\r\n\r\n<p><strong>TAMPERING</strong></p>\r\n\r\n<p>User agrees not to modify, move, add to, delete, tamper, manipulate, or otherwise disrupt 24hourworx Web site or the information contained in 24hourworx &#39;s Web site, including by not circumventing 24hourworx technical controls and security measures. User also agrees not to decompile, reverse engineer, disassemble or unlawfully use, modify, copy or reproduce any of the software, copyrighted or trademarked material, trade secrets, or other proprietary or confidential information contained in the Site.</p>\r\n\r\n<p>By using or accessing this web site you agree that other than with respect to the non-scheduled, non-recurring collection of data done with the express consent of the applicable company or individual, you will not access the Site in a manner that sends more requests to 24hourworx servers than a human can reasonably produce in the same period of time or collect or harvest any personally identifiable information.</p>\r\n\r\n<p><strong>THIRD PARTY INFORMATION</strong></p>\r\n\r\n<p>Although 24hourworx monitors the information on the Site, some of the information is supplied by independent third parties. While 24hourworx makes every effort to insure the accuracy of all information on the Site, 24hourworx makes no warranty as to the accuracy of any such information.</p>\r\n\r\n<p><strong>LINKS TO THIRD PARTY SITES</strong></p>\r\n\r\n<p>This Site may contain links that will let you access other Web sites that are not under the control of 24hourworx. The links are only provided as a convenience and 24hourworx does not endorse any of these sites. 24hourworx assumes no responsibility or liability for any material that may accessed on other Web sites reached through this Site, nor does 24hourworx make any representation regarding the quality of any product or service contained at any such site.</p>\r\n\r\n<p><strong>LINKS FROM THIRD PARTY SITES</strong></p>\r\n\r\n<p>24hourworx prohibits unauthorized links to the Site and the framing of any information contained on the site or any portion of the Site. 24hourworx reserves the right to disable any unauthorized links or frames. 24hourworx has no responsibility or liability for any material on other Web sites that may contain links to this Site.</p>\r\n\r\n<p><strong>NO WARRANTIES</strong></p>\r\n\r\n<p>Information and documents provided on this Site are provided &quot;as is&quot; without warranty of any kind, either express or implied, including without limitation warranties of merchantability, fitness for a particular purpose, and non-infringement. 24hourworx uses reasonable efforts to include accurate and up-to-date information on this Site; it does not, however, make any warranties or representations as to its accuracy or completeness. 24hourworx periodically adds, changes, improves, or updates the information and documents on this Site without notice. 24hourworx assumes no liability or responsibility for any errors or omissions in the content of this Site. Your use of this Site is at your own risk.</p>\r\n\r\n<p><strong>PRIVACY</strong></p>\r\n\r\n<p>Protecting the privacy of our clients and users of our Sites is important to 24hourworx. The 24hourworx Web Site Privacy Statement describes how we use and protect information you provide to us. Please visit our PRIVACY POLICY for more information.</p>\r\n\r\n<p><strong>SECURITY</strong></p>\r\n\r\n<p>Data transmitted to and from 24hourworx client Sites is encrypted for the user&#39;s protection. However, the security of information transmitted through the Internet can never be guaranteed. 24hourworx is not responsible for any interception or interruption of any communications through the Internet or for changes to or losses of data. User is responsible for maintaining the security and confidentiality of any password, user name or ID, or other form of user authentication required by 24hourworx (&ldquo;Authentication&rdquo;) involved in obtaining access to password protected or secure areas of 24hourworx sites and shall not disclose any confidential account access credentials or confidential information to Unauthorized Third Parties. An &ldquo;Unauthorized Third Party&rdquo; refers to any third party or business that seeks to access or accesses 24hourworx sites or systems using the account credentials (e.g., username and password) of an 24hourworx client or client employee, regardless of the their purported consent, in order to access, copy or obtain 24hourworx information, whether such information is accessed, copied or obtained by an automated data gathering program or by other means, including data scrapers, data aggregators and any third parties seeking to monetize data obtained from 24hourworx without 24hourworx&rsquo;s express consent. In order to protect you and your data, 24hourworx may suspend your use of a client site, without notice, pending an investigation, if any such unauthorized disclosure or use or breach of security is suspected.</p>\r\n\r\n<p><strong>TRANSMISSION OF PERSONAL DATA</strong></p>\r\n\r\n<p>User acknowledges and agrees that by providing 24hourworx with any personal information through the Site, user consents to the transmission of such personal user information over international borders as necessary for processing in accordance with 24hourworx&#39;s standard business practices and the 24hourworx Web Site Privacy Statement.</p>\r\n\r\n<p><strong>ACCESS TO PASSWORD PROTECTED/SECURE AREAS</strong></p>\r\n\r\n<p>Access to and use of password protected and/or secure area of the Site is restricted to authorized users only. Unauthorized access, including any access by Unauthorized Third Parties, to such areas is prohibited and may lead to criminal prosecution.</p>\r\n\r\n<p><span style=\"font-size:14pt\"><strong>Fees and Payment</strong></span></p>\r\n\r\n<p>All charges associated with Customer&rsquo;s Account (&ldquo;Fees&rdquo;) are set forth in the applicable SOF or Website, and are due and payable in full within thirty (30) days from the invoice date or as stated in the applicable SOF. Payment obligations are non-cancelable, regardless of utilization by the Customer and except as expressly permitted in this Agreement, Fees paid are non-refundable. Customer will pay the Fees through an accepted payment method as specified in the applicable SOF or Website. Unless otherwise set forth in the SOF, Customer&rsquo;s subscription to the Services will renew automatically for a Subscription Term in accordance with the renewal terms and conditions set forth in Section 6(b) below. During the Term, the Customer may not reduce their Service Plan or User count.</p>\r\n\r\n<p><strong>Late</strong> <strong>Payments</strong>-&nbsp;If undisputed Fees are more than thirty (30) days overdue, then, following written notification from 24hourworx, 24hourworx may suspend Customer&rsquo;s access to the 24hourworx Technology, including, without limitation, Customer&rsquo;s Account, until such unpaid Fees are paid in full.</p>\r\n\r\n<p><strong>Payment</strong> <strong>Disputes</strong>-&nbsp;24hourworx will not exercise its rights under Section 5(b) (Late Payments), 6(d) (Termination for Cause) or Section 6(c)(i) (Suspension of Service) with respect to non-payment by Customer if Customer is disputing the applicable charges reasonably and in good faith and is cooperating diligently to resolve the dispute. If the parties are unable to resolve such a dispute within thirty (30) days, each party will have the right to seek any remedies it may have under this Agreement, at law or in equity, irrespective of any terms that would limit remedies on account of a dispute. For clarity, any undisputed amounts must be paid in full.</p>\r\n\r\n<p><strong>Orders</strong> <strong>by</strong> <strong>Affiliates</strong>-&nbsp;Customer&rsquo;s Affiliates may purchase Services directly from 24hourworx by executing an SOF which is governed by the terms of this Agreement. Such SOF will establish a new and separate agreement between the Customer&rsquo;s Affiliate and the 24hourworx entity signing such SOF. If the Affiliate resides in a different country than Customer, then the SOF may include modifications to terms applicable to the transaction(s) (including but not limited to tax terms and governing law).</p>\r\n\r\n<p><span style=\"font-size:12pt\"><strong>Term, Termination and Suspension</strong></span></p>\r\n\r\n<p><strong>Term</strong>-&nbsp;This Agreement is effective as of the Effective Date (or, for online Customers, the date of sign up on the Website) and will continue through the then-current Subscription Term. Service Plans commence on the start date specified in the relevant SOF (or, for online Customers, the date of sign up on the Website) and continue for the Subscription Term specified therein.</p>\r\n\r\n<p><strong>Renewal</strong>-&nbsp; Unless a party gives written notice of non-renewal at least sixty (60) days prior to the expiration of the relevant Subscription Term, Service Plans will automatically renew for a period equal to the previous Subscription Term or one year (whichever is shorter). 24hourworx reserves the right to increase the Fees at the beginning of each Subscription Term.</p>\r\n\r\n<p><strong>Suspension</strong>-&nbsp;24hourworx may suspend Customer&rsquo;s access to the Services, Software, Mobile Apps and/or Customer&rsquo;s Account, on the following grounds: (i) late payment/non-payment of undisputed Fees, per the process noted above; (ii) non-renewal of the Services by Customer; (iii) Customer&rsquo;s or its Users&rsquo; breach of Section 2 (Use Restrictions); or (iv) in the event suspension is deemed necessary by 24hourworx to prevent or address the introduction of Malicious Software (as defined in Section&nbsp; 8.b below), a security incident, or other harm to Customer, 24hourworx, or 24hourworx&#39; other customers.&nbsp; 24hourworx will notify Customer of any such suspension. 24hourworx will use diligent efforts to attempt to limit, where commercially feasible, the suspension to affected Users or 24hourworx Technology, and will immediately restore the availability of the same as soon as the issues leading to the suspension are resolved.&nbsp; Such suspension will in no way affect Customer&rsquo;s other obligations under this Agreement.</p>\r\n\r\n<p><strong>Termination</strong> <strong>for</strong> <strong>Cause</strong>-&nbsp;Either party may terminate this Agreement by written notice to the other party in the event that (i) such other party materially breaches this Agreement and does not cure such breach within thirty (30) days of such notice, or (ii) immediately in the event the other party becomes the subject of a petition in bankruptcy or any other proceeding relating to insolvency, receivership, liquidation or assignment for the benefit of creditors.</p>\r\n\r\n<p><strong>Free</strong> <strong>Trial</strong> <strong>Customers</strong>-&nbsp;Upon the expiration of Customer&rsquo;s free trial, 24hourworx may immediately suspend Customer&rsquo;s access to the Services. Customer must export Customer Data before the end of the free trial or Customer Data will be permanently deleted. 24hourworx will have no obligation to maintain, store or otherwise retain Customer Data beyond the end of the free trial period.</p>\r\n\r\n<p><strong>Data</strong> <strong>Export</strong>-&nbsp;Upon termination or expiration of this Agreement or any SOF for any reason, Customer&rsquo;s access to the Services, Software, Mobile Apps, APIs and other 24hourworx Technology will terminate.&nbsp; 24hourworx strongly recommends that Customer export all Customer Data before Customer closes Customer&rsquo;s Account. Customer agrees, following the termination or expiration of this Agreement or an unrenewed Subscription Term, that Customer Data will be retained or deleted in accordance with the Supplemental Terms, as applicable to Customer. Where Customer Data is retained by 24hourworx and can be exported, and provided that Customer is current on its payment obligations as described in Section 5, Customer may contact 24hourworx within fourteen (14) days following the effective date of termination to have 24hourworx export Customer&rsquo;s Customer Data. Customer Data cannot be recovered once it is deleted.</p>\r\n\r\n<p><strong>Confidentiality</strong>-&nbsp;Each party will protect the other&rsquo;s Confidential Information from unauthorized use, access, or disclosure in the same manner as it protects its own Confidential Information of similar nature or importance, and in any event, using no less than reasonable care. Except as otherwise expressly permitted pursuant to this Agreement, the receiving party may use the disclosing party&rsquo;s Confidential Information solely to exercise its respective rights and perform its respective obligations under this Agreement, and will disclose such Confidential Information solely to those of its respective employees, representatives and agents who have a need to know such Confidential Information for such purposes and who are bound by obligations to maintain the confidentiality of, and not misuse, such Confidential Information.&nbsp; The provisions of this section will supersede any non-disclosure agreement by and between the parties entered into prior to this Agreement that would purport to address the confidentiality of any information shared by the parties, including Customer Data, and such agreement will have no further force or effect with respect to the foregoing.&nbsp; If the receiving party is required by law or court order to disclose Confidential Information of the disclosing party, then the receiving party will, to the extent legally permitted, provide the disclosing party with advance written notification and cooperate in any effort to obtain confidential treatment of the Confidential Information.&nbsp; The receiving party acknowledges that disclosure of Confidential Information would cause substantial harm for which damages alone would not be a sufficient remedy, and therefore that upon any such disclosure by the receiving party, the disclosing party will be entitled to seek appropriate equitable relief in addition to whatever other remedies it might have at law.&nbsp;</p>\r\n\r\n<p><span style=\"font-size:12pt\"><strong>Warranties/Disclaimer of Warranties</strong></span></p>\r\n\r\n<p><strong>Service</strong> <strong>Warranty</strong>-&nbsp;24hourworx warrants that the Services, Software or Mobile Apps will perform in all material respects in accordance with the Documentation. Provided that Customer provides written notice of a claim within thirty (30) days after first becoming aware of a breach of the foregoing warranty, 24hourworx will use diligent efforts to correct the Services, Software, or &nbsp;Mobile Apps so the foregoing warranty is met, and if 24hourworx is unable to make such corrections in a timely manner, either party may terminate the applicable SOF, and Customer, as its sole and exclusive remedy, will be entitled to receive a refund of any unused Fees that Customer has pre-paid for the applicable Services, Software or Mobile Apps purchased thereunder. This warranty will not apply if the error or non-conformance was caused by Customer&rsquo;s breach of this Agreement or Customer&rsquo;s or its Users&rsquo; misuse of the Services, Software, and Mobile Apps, modifications to the Services, Software, and Mobile Apps by anyone other than 24hourworx or its representatives, or third-party hardware, software, or services used in connection with the Services, Software, and Mobile Apps.</p>\r\n\r\n<p><strong>Malware</strong> <strong>Warranty</strong>-&nbsp;24hourworx warrants that the Services hosted by 24hourworx will be monitored using commercially available means to attempt to detect and prevent the introduction of any computer instructions, circuitry or other technology means whose purpose or effect is to disrupt, damage or interfere with the authorized use of, or allow access to, the computer and communications facilities or equipment of 24hourworx or Customer, including, without limitation, any code containing viruses, Trojan horses, worms, backdoors, trap doors, time-out devices or similar destructive or harmful code or code that self-replicates (collectively, &ldquo;Malicious Software&rdquo;).</p>\r\n\r\n<p><strong>Warranty</strong> <strong>Disclaimer</strong>-&nbsp;Except as expressly set forth in this agreement, neither party makes any other warranties, express or implied, statutory or otherwise, and all such warranties are hereby disclaimed, including but not limited to warranties of merchant ability, title, fitness for a particular purpose, or non-infringement.&nbsp;</p>\r\n\r\n<p><span style=\"font-size:14pt\"><strong>Indemnification</strong></span></p>\r\n\r\n<p><strong>Indemnification by Customer</strong>-&nbsp;Customer will defend 24hourworx and its Affiliates from any third party claim (&ldquo;Claim&rdquo;), and will indemnify and hold harmless&nbsp; 24hourworx and its Affiliates from and against any damages and costs awarded against 24hourworx and its Affiliates, or agreed in settlement by Customer (including reasonable attorneys&rsquo; fees) resulting from such Claim, to the extent caused by: (i) Customer&rsquo;s or its Affiliate&rsquo;s unauthorized supply, disclosure, or processing of Customer Data, including Personal Data therein, or (ii) Customer&rsquo;s or its Affiliate&rsquo;s violation of laws applicable to Customer&rsquo;s or its Affiliate&rsquo;s business.</p>\r\n\r\n<p><strong>Indemnification Procedures</strong>-&nbsp;In the event of a potential indemnity obligation, the indemnified party will: (i) promptly notify the indemnifying party in writing of the claim, (ii) allow the indemnifying party the right to control the investigation, defense and settlement (if applicable) of such claim at the indemnifying party&rsquo;s sole cost and expense, and (iii) upon request of the indemnifying party, provide all necessary cooperation at the indemnifying party&rsquo;s expense. Failure by the indemnified party to notify the indemnifying party of a claim under this Section will not relieve the indemnifying party of its obligations under this Section, however, the indemnifying party will not be liable for any litigation expenses that the indemnified party incurred prior to the time when notice is given or for any damages and/or costs resulting from any material prejudice caused by the delay or failure to provide notice to the indemnifying party in accordance with this Section. The indemnifying party may not settle any claim that would bind the indemnified party to any obligation (other than payment covered by the indemnifying party or ceasing to use infringing materials) or require any admission of fault by the indemnified party, without the indemnified party&rsquo;s prior written consent, such consent not to be unreasonably withheld, conditioned or delayed. Any indemnification obligation under this Section 10 will not apply if the indemnified party settles or makes any admission with respect to a claim without the indemnifying party&rsquo;s prior written consent.&nbsp;</p>\r\n\r\n<p><span style=\"font-size:14pt\"><strong>Miscellaneous</strong></span></p>\r\n\r\n<p>&nbsp;<strong>Use</strong> <strong>of</strong> <strong>Third Parties for Payment Processing</strong>-&nbsp;24hourworx may use a third-party service provider to manage payment processing provided that such service provider is not permitted to store, retain, or use Customer&rsquo;s payment account information except to process Customer&rsquo;s payment information for 24hourworx. Customer must notify 24hourworx of any change in Customer&rsquo;s payment account information, either by updating Customer&rsquo;s Account or by e-mailing 24hourworx at support @24hourworx.com.</p>\r\n\r\n<p><strong>Assignment</strong>-&nbsp;Neither party may assign any of its rights or obligations hereunder, whether by operation of law or otherwise, without the other party&rsquo;s prior written consent (not to be unreasonably withheld); provided, however, either party may assign this Agreement in its entirety (including all SOFs), without the other party&rsquo;s consent to its Affiliate or in connection with a merger, acquisition, corporate reorganization, or sale of all or substantially all of its assets. Any attempted assignment in violation of this section will be null and void.</p>\r\n\r\n<p><strong>Entire Agreement</strong>-&nbsp;This Agreement, together with any SOF, the Privacy Notice, and Supplemental Terms, constitutes the entire agreement and supersedes any and all prior agreements or communications between Customer and 24hourworx regarding the subject matter hereof. In the event of a conflict between&nbsp;the Privacy Notice, the Supplemental Terms, or any SOF or purchase order and this Agreement, the order of precedence will be, first, the Privacy Notice, second, the SOF, third, the Supplemental Terms, and fourth, this Agreement.&nbsp; If any provision in this Agreement is held by a court of competent jurisdiction to be unenforceable, such provision will be modified by the court and interpreted so as to best accomplish the original provision, and the remaining provisions of this Agreement will remain in effect.</p>\r\n\r\n<p><strong>Publicity</strong> <strong>Right</strong>-&nbsp;24hourworx may identify Customer as a 24hourworx customer in its promotional materials.&nbsp; Customer may request that 24hourworx stop doing so by submitting an email &nbsp;at any time. Please note that it may take us up to thirty (30) days to process a request.</p>\r\n\r\n<p><strong>Relationship</strong> <strong>of</strong> <strong>the</strong> <strong>Parties</strong>-&nbsp;The parties are independent contractors. This Agreement does not create a partnership, franchise, joint venture, agency, fiduciary or employment relationship among the parties.</p>\r\n\r\n<p><strong>Anti-Corruption</strong>-&nbsp;Neither party has received or been offered any illegal or improper bribe, kickback, payment, gift, or thing of value from an employee or agent of the other party in connection with this Agreement. Reasonable gifts and entertainment provided in the ordinary course of business do not violate the above restriction. If Customer learns of any violation of the above restriction, Customer will use reasonable efforts to promptly notify 24hourworx.</p>\r\n\r\n<p><strong>Governing</strong> <strong>Law</strong>-&nbsp;This Agreement is governed by the laws of the State of California without regard to conflict of laws principles. The parties hereby submit to the exclusive personal jurisdiction of the federal and state courts of the State of California, San Francisco County for any claims or dispute relating to this Agreement.</p>\r\n\r\n<p><strong>Dispute</strong> <strong>Resolution</strong></p>\r\n\r\n<p>Any dispute, claim or controversy arising out of or relating to this Agreement or the breach, termination, enforcement, interpretation, or validity thereof, including the determination of the scope or applicability of this Agreement to arbitrate, will be determined by arbitration in San Francisco, California. The arbitration will be administered by JAMS pursuant to its arbitration rules and procedures. Judgment on the Award may be entered in any court having jurisdiction. This section will not preclude parties from seeking provisional remedies in aid of arbitration from a court of appropriate jurisdiction.&nbsp;</p>\r\n\r\n<p><span style=\"font-size:16pt\"><strong>Definitions</strong></span></p>\r\n\r\n<p>&ldquo;Account&rdquo;&nbsp;means any accounts or instances created by or on behalf of Customer for access to and use of any of the Services.</p>\r\n\r\n<p>&ldquo;Affiliate&quot; or &quot;Subsidiary&quot;&nbsp;&nbsp;means, with respect to a party to this Agreement, any entity that directly or indirectly controls, is controlled by, or is under common control with such party, where &ldquo;control&rdquo; means the possession, directly or indirectly, of the power to direct, or cause the direction of the management and policies of such entity, whether through the ownership of voting securities, by contract, or otherwise.</p>\r\n\r\n<p>&ldquo;Confidential Information&rdquo;&nbsp;means all information disclosed by one party to the other party, orally, in writing or electronically, that is designated as &ldquo;confidential&rdquo; (or with a similar legend), or which a reasonable person should understand to be confidential given the nature of the information and circumstances of disclosure. Confidential Information does not include any information that: (a)&nbsp;was publicly known and made generally available in the public domain prior to the time of disclosure by the disclosing party; (b)&nbsp;becomes publicly known and made generally available through no action or inaction of the receiving party; (c)&nbsp;is already in the possession of the receiving party at the time of disclosure by the disclosing party; (d)&nbsp;is obtained by the receiving party from a third party without a breach of such third party&rsquo;s obligations of confidentiality; (e)&nbsp;is independently developed by the receiving party without use of or reference to the disclosing party&rsquo;s Confidential Information.</p>\r\n\r\n<p>&ldquo;Customer Data&rdquo;&nbsp;means, all electronic data, text, messages or other materials, including, without limitation, Personal Data of Users and End Users, submitted to the Services by Customer or its Users through Customer&rsquo;s Account in connection with Customer&rsquo; use of the Services.</p>\r\n\r\n<p>&ldquo;Documentation&rdquo;&nbsp;means, the then-current, generally available user documentation provided by 24hourworx detailing the functionalities of the Software and the Services.</p>\r\n\r\n<p>&ldquo;End User&rdquo;&nbsp;means, any person or entity other than Customer or Customer&rsquo;s Users with whom Customer interacts using the Services.</p>\r\n\r\n<p>&ldquo;24hourworx Technology&rdquo;&nbsp;means, (i) the Services, Software, Mobile Apps, Documentation, 24hourworx&rsquo; APIs, 24hourworx&rsquo; website(s) and any content published on the 24hourworx&rsquo; websites, (ii) any training materials, support materials, templates, tools, methodologies or know-how, (iii) 24hourworx&rsquo; Confidential Information and (iv) any modifications or derivative works of the foregoing.</p>\r\n\r\n<p>&ldquo;Mobile App&rdquo;&nbsp;means, the 24hourworx-branded Software applications provided by 24hourworx to enable access and use of the Services through mobile or other handheld devices (such as apps on iOS or Android devices).</p>\r\n\r\n<p>&ldquo;Personal Data&rdquo;&nbsp;means, data relating to an individual who is or can be identified either from the data or from the data in conjunction with other information that is in, or is likely to come into, the possession of the data controller (as defined under applicable data protection laws).</p>\r\n\r\n<p>&ldquo;Service Order Form&nbsp;or&nbsp;SOF&rdquo;&nbsp;means, (i) any&nbsp;service order referencing this Agreement and executed by Customer and 24hourworx, or&nbsp;(ii) any online ordering document or process completed by Customer, including any online registration through a Website,&nbsp;each of which detail, the Services subscribed to and corresponding Service Plans, the number of Users authorized to use the Services, Fees payable to 24hourworx, the applicable Subscription Term, and any relevant additional terms and conditions. This may also include any change order forms.</p>\r\n\r\n<p>&ldquo;Services&rdquo;&nbsp;means, the 24hourworx software-based service offerings identified on the SOF and any Updates, including any Software, API or Documentation made available by 24hourworx with such offering, but excludes any applications or APIs separately provided by third parties.</p>\r\n\r\n<p>&ldquo;Service Plans&rdquo;&nbsp;means, the pricing plans and other packaged offering limitations for and the applicable Services for which Customer subscribes with respect to any User.</p>\r\n\r\n<p>&ldquo;Software&rdquo;&nbsp;means the generally available software provided by 24hourworx in connection with Customer&rsquo;s use of the Services, and includes Mobile Apps, but excludes any applications or APIs that are provided by third parties.</p>\r\n\r\n<p>&ldquo;Subscription Term&rdquo;&nbsp;means, the period stated on a SOF during which Customer subscribes to the Services.</p>\r\n\r\n<p>&ldquo;Supplemental Terms&rdquo; means, the Services specific terms found, which are located currently at www.24hourworx.com.</p>\r\n\r\n<p>&ldquo;Update&rdquo;&nbsp;means, the generally available updates, upgrades, hot fixes, patches, workarounds to the Software or Service provided by 24hourworx to all subscribing customers, but&nbsp;excludes separately priced new products or modules.</p>\r\n\r\n<p>&ldquo;User&rdquo; or &ldquo;Agent&rdquo;&nbsp;means, any individual who is authorized by Customer to use the Services, including an Account administrator, employees, consultants, contractors, and agents of Customer or its Affiliates, and third parties with which Customer or its Affiliates transact business.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&copy; Copyright&nbsp;2022 24hourworx, Inc. ALL RIGHTS RESERVED.</p>', 'Terms of Use', NULL, 'terms, of, use, terms of use', '', 1, 1, 1, '2022-03-22 00:39:40', '2022-03-26 19:08:52', 1),
(6, 1, 1, 'company-policies', 'company-policies', 'company-policies', '\n                <h1>Company Policies</h1>\n\n                <h2>1. Code of Conduct and Ethics Policy</h2>\n                <p>Our company is committed to maintaining the highest ethical standards in all aspects of our business operations...</p>\n\n                <h2>2. Equal Employment Opportunity (EEO) Policy</h2>\n                <p>Our company provides equal employment opportunities to all employees and applicants without regard to...</p>\n\n                ', 'company-policies', 'company-policies', 'company-policies', 'sample.jpg', 1, 1, 1, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1);

-- --------------------------------------------------------

--
-- Table structure for table `api_setups`
--

CREATE TABLE `api_setups` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `key` varchar(255) DEFAULT NULL,
  `secret` varchar(255) DEFAULT NULL,
  `endpoint` varchar(255) DEFAULT NULL,
  `docs_url` varchar(255) DEFAULT NULL,
  `company_id` bigint(20) UNSIGNED NOT NULL,
  `status_id` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `branch_id` bigint(20) UNSIGNED DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `api_setups`
--

INSERT INTO `api_setups` (`id`, `name`, `key`, `secret`, `endpoint`, `docs_url`, `company_id`, `status_id`, `created_at`, `updated_at`, `branch_id`) VALUES
(1, 'google', NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, 1),
(2, 'barikoi', NULL, NULL, NULL, NULL, 1, 4, NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `appoinments`
--

CREATE TABLE `appoinments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `company_id` bigint(20) UNSIGNED NOT NULL,
  `created_by` bigint(20) UNSIGNED NOT NULL,
  `appoinment_with` bigint(20) UNSIGNED NOT NULL,
  `appoinment_start_at` varchar(255) DEFAULT NULL,
  `appoinment_end_at` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `date` date DEFAULT NULL,
  `attachment_file_id` bigint(20) UNSIGNED DEFAULT NULL,
  `status_id` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `branch_id` bigint(20) UNSIGNED DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `appoinment_participants`
--

CREATE TABLE `appoinment_participants` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `participant_id` bigint(20) UNSIGNED NOT NULL,
  `appoinment_id` bigint(20) UNSIGNED NOT NULL,
  `is_agree` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0: Not agree, 1: Agree',
  `is_present` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0: Absent, 1: Present',
  `present_at` datetime DEFAULT NULL,
  `appoinment_started_at` datetime DEFAULT NULL,
  `appoinment_ended_at` datetime DEFAULT NULL,
  `appoinment_duration` varchar(255) DEFAULT NULL COMMENT 'appoinment duration in minutes',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `branch_id` bigint(20) UNSIGNED DEFAULT 1,
  `company_id` bigint(20) UNSIGNED DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `appraisals`
--

CREATE TABLE `appraisals` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `company_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `rates` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`rates`)),
  `rating` double(8,2) DEFAULT 0.00,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `added_by` bigint(20) UNSIGNED NOT NULL,
  `date` date DEFAULT NULL,
  `remarks` longtext DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `branch_id` bigint(20) UNSIGNED DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `appraisals`
--

INSERT INTO `appraisals` (`id`, `company_id`, `name`, `rates`, `rating`, `user_id`, `added_by`, `date`, `remarks`, `created_at`, `updated_at`, `branch_id`) VALUES
(1, 1, 'Project Management', '[{\"id\":1,\"rating\":1},{\"id\":2,\"rating\":1},{\"id\":3,\"rating\":1},{\"id\":4,\"rating\":1},{\"id\":5,\"rating\":1},{\"id\":6,\"rating\":1}]', 1.00, 4, 2, '2023-10-12', NULL, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1);

-- --------------------------------------------------------

--
-- Table structure for table `appreciates`
--

CREATE TABLE `appreciates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `appreciate_by` bigint(20) UNSIGNED NOT NULL,
  `message` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `branch_id` bigint(20) UNSIGNED DEFAULT 1,
  `company_id` bigint(20) UNSIGNED DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `app_screens`
--

CREATE TABLE `app_screens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `status_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `branch_id` bigint(20) UNSIGNED DEFAULT 1,
  `company_id` bigint(20) UNSIGNED DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `app_screens`
--

INSERT INTO `app_screens` (`id`, `name`, `slug`, `position`, `icon`, `status_id`, `created_at`, `updated_at`, `branch_id`, `company_id`) VALUES
(1, 'Support', 'support', 1, 'assets/appScreenIcons/support.png', 1, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1, 1),
(2, 'Attendance', 'attendance', 2, 'assets/appScreenIcons/attendance.png', 1, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1, 1),
(3, 'Task', 'task', 3, 'assets/appScreenIcons/task.png', 1, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1, 1),
(4, 'Notice', 'notice', 4, 'assets/appScreenIcons/notice.png', 1, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1, 1),
(5, 'Expense', 'expense', 5, 'assets/appScreenIcons/expense.png', 1, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1, 1),
(6, 'Leave', 'leave', 6, 'assets/appScreenIcons/leave.png', 1, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1, 1),
(7, 'Approval', 'approval', 7, 'assets/appScreenIcons/approval.png', 1, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1, 1),
(8, 'Phonebook', 'phonebook', 8, 'assets/appScreenIcons/phonebook.png', 1, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1, 1),
(9, 'Visit', 'visit', 9, 'assets/appScreenIcons/visit.png', 1, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1, 1),
(10, 'Appointments', 'appointments', 10, 'assets/appScreenIcons/appointments.png', 1, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1, 1),
(11, 'Break', 'break', 11, 'assets/appScreenIcons/break.png', 1, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1, 1),
(12, 'Report', 'report', 12, 'assets/appScreenIcons/report.png', 1, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1, 1),
(13, 'Payroll', 'payroll', 13, 'assets/appScreenIcons/payroll.png', 1, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `assign_leaves`
--

CREATE TABLE `assign_leaves` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `company_id` bigint(20) UNSIGNED NOT NULL,
  `type_id` bigint(20) UNSIGNED NOT NULL,
  `days` int(11) NOT NULL,
  `status_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `department_id` bigint(20) UNSIGNED DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `branch_id` bigint(20) UNSIGNED DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `attendances`
--

CREATE TABLE `attendances` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `company_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `date` date DEFAULT NULL,
  `check_in` timestamp NULL DEFAULT NULL,
  `check_out` timestamp NULL DEFAULT NULL,
  `stay_time` varchar(255) DEFAULT NULL,
  `late_reason` varchar(255) DEFAULT NULL,
  `late_time` int(11) NOT NULL DEFAULT 0,
  `in_status` enum('OT','L','A') DEFAULT 'OT' COMMENT 'OT=On Time, L=Late, A=Absent',
  `out_status` enum('LT','LE','LL') DEFAULT NULL COMMENT 'LT=Left Timely, LE=Left Early, LL = Left Later',
  `checkin_ip` varchar(255) DEFAULT NULL,
  `checkout_ip` varchar(255) DEFAULT NULL,
  `remote_mode_in` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0 = home , 1 = office',
  `remote_mode_out` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0 = home , 1 = office',
  `check_in_location` varchar(255) DEFAULT NULL,
  `check_out_location` varchar(255) DEFAULT NULL,
  `check_in_latitude` double DEFAULT NULL COMMENT 'check in latitude',
  `check_in_longitude` double DEFAULT NULL COMMENT 'check in longitude',
  `check_out_latitude` double DEFAULT NULL COMMENT 'check out latitude',
  `check_out_longitude` double DEFAULT NULL COMMENT 'check out longitude',
  `check_in_city` varchar(255) DEFAULT NULL COMMENT 'city',
  `check_in_country_code` varchar(255) DEFAULT NULL COMMENT 'countryCode',
  `check_in_country` varchar(255) DEFAULT 'Bangladesh' COMMENT 'country',
  `check_out_city` varchar(255) DEFAULT NULL COMMENT 'city',
  `check_out_country_code` varchar(255) DEFAULT NULL COMMENT 'countryCode',
  `check_out_country` varchar(255) DEFAULT 'Bangladesh' COMMENT 'country',
  `status_id` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `face_image` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `in_status_approve` enum('OT') DEFAULT NULL COMMENT 'OT=On Time',
  `in_status_approve_by` bigint(20) UNSIGNED DEFAULT NULL,
  `out_status_approve` enum('LT') DEFAULT NULL COMMENT 'LT=Left Timely',
  `out_status_approve_by` bigint(20) UNSIGNED DEFAULT NULL,
  `branch_id` bigint(20) UNSIGNED DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `attendances`
--

INSERT INTO `attendances` (`id`, `company_id`, `user_id`, `date`, `check_in`, `check_out`, `stay_time`, `late_reason`, `late_time`, `in_status`, `out_status`, `checkin_ip`, `checkout_ip`, `remote_mode_in`, `remote_mode_out`, `check_in_location`, `check_out_location`, `check_in_latitude`, `check_in_longitude`, `check_out_latitude`, `check_out_longitude`, `check_in_city`, `check_in_country_code`, `check_in_country`, `check_out_city`, `check_out_country_code`, `check_out_country`, `status_id`, `face_image`, `created_at`, `updated_at`, `in_status_approve`, `in_status_approve_by`, `out_status_approve`, `out_status_approve_by`, `branch_id`) VALUES
(1, 1, 1, '2022-01-01', '2022-01-01 03:00:00', '2022-01-01 12:00:00', NULL, 'N/A', 0, 'OT', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Bangladesh', NULL, NULL, 'Bangladesh', 1, NULL, '2023-10-12 07:48:59', '2023-10-12 07:48:59', NULL, NULL, NULL, NULL, 1),
(2, 1, 1, '2022-01-02', '2022-01-02 03:00:00', '2022-01-02 12:00:00', NULL, 'N/A', 0, 'OT', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Bangladesh', NULL, NULL, 'Bangladesh', 1, NULL, '2023-10-12 07:48:59', '2023-10-12 07:48:59', NULL, NULL, NULL, NULL, 1),
(3, 1, 1, '2022-01-03', '2022-01-03 03:00:00', '2022-01-03 12:00:00', NULL, 'N/A', 0, 'OT', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Bangladesh', NULL, NULL, 'Bangladesh', 1, NULL, '2023-10-12 07:48:59', '2023-10-12 07:48:59', NULL, NULL, NULL, NULL, 1),
(4, 1, 1, '2022-01-04', '2022-01-04 03:00:00', '2022-01-04 11:00:00', NULL, 'N/A', 0, 'OT', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Bangladesh', NULL, NULL, 'Bangladesh', 1, NULL, '2023-10-12 07:48:59', '2023-10-12 07:48:59', NULL, NULL, NULL, NULL, 1),
(5, 1, 1, '2022-01-05', '2022-01-05 03:00:00', '2022-01-05 11:00:00', NULL, 'N/A', 0, 'OT', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Bangladesh', NULL, NULL, 'Bangladesh', 1, NULL, '2023-10-12 07:48:59', '2023-10-12 07:48:59', NULL, NULL, NULL, NULL, 1),
(6, 1, 1, '2022-01-06', '2022-01-06 03:00:00', '2022-01-06 11:00:00', NULL, 'N/A', 0, 'OT', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Bangladesh', NULL, NULL, 'Bangladesh', 1, NULL, '2023-10-12 07:48:59', '2023-10-12 07:48:59', NULL, NULL, NULL, NULL, 1),
(7, 1, 1, '2022-01-07', '2022-01-07 03:00:00', '2022-01-07 10:00:00', NULL, 'N/A', 0, 'OT', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Bangladesh', NULL, NULL, 'Bangladesh', 1, NULL, '2023-10-12 07:48:59', '2023-10-12 07:48:59', NULL, NULL, NULL, NULL, 1),
(8, 1, 1, '2022-01-08', '2022-01-08 03:00:00', '2022-01-08 10:00:00', NULL, 'N/A', 0, 'OT', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Bangladesh', NULL, NULL, 'Bangladesh', 1, NULL, '2023-10-12 07:48:59', '2023-10-12 07:48:59', NULL, NULL, NULL, NULL, 1),
(9, 1, 1, '2022-01-09', '2022-01-09 03:00:00', '2022-01-09 12:00:00', NULL, 'N/A', 0, 'OT', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Bangladesh', NULL, NULL, 'Bangladesh', 1, NULL, '2023-10-12 07:48:59', '2023-10-12 07:48:59', NULL, NULL, NULL, NULL, 1),
(10, 1, 1, '2022-01-10', '2022-01-10 03:00:00', '2022-01-10 12:00:00', NULL, 'N/A', 0, 'OT', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Bangladesh', NULL, NULL, 'Bangladesh', 1, NULL, '2023-10-12 07:48:59', '2023-10-12 07:48:59', NULL, NULL, NULL, NULL, 1),
(11, 1, 1, '2022-01-11', '2022-01-11 03:00:00', '2022-01-11 12:00:00', NULL, 'N/A', 0, 'OT', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Bangladesh', NULL, NULL, 'Bangladesh', 1, NULL, '2023-10-12 07:48:59', '2023-10-12 07:48:59', NULL, NULL, NULL, NULL, 1),
(12, 1, 1, '2022-01-12', '2022-01-12 03:00:00', '2022-01-12 11:00:00', NULL, 'N/A', 0, 'OT', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Bangladesh', NULL, NULL, 'Bangladesh', 1, NULL, '2023-10-12 07:48:59', '2023-10-12 07:48:59', NULL, NULL, NULL, NULL, 1),
(13, 1, 1, '2022-01-13', '2022-01-13 03:00:00', '2022-01-13 12:00:00', NULL, 'N/A', 0, 'OT', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Bangladesh', NULL, NULL, 'Bangladesh', 1, NULL, '2023-10-12 07:48:59', '2023-10-12 07:48:59', NULL, NULL, NULL, NULL, 1),
(14, 1, 1, '2022-01-14', '2022-01-14 03:00:00', '2022-01-14 11:00:00', NULL, 'N/A', 0, 'OT', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Bangladesh', NULL, NULL, 'Bangladesh', 1, NULL, '2023-10-12 07:48:59', '2023-10-12 07:48:59', NULL, NULL, NULL, NULL, 1),
(15, 1, 1, '2022-01-15', '2022-01-15 03:00:00', '2022-01-15 11:00:00', NULL, 'N/A', 0, 'OT', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Bangladesh', NULL, NULL, 'Bangladesh', 1, NULL, '2023-10-12 07:48:59', '2023-10-12 07:48:59', NULL, NULL, NULL, NULL, 1),
(16, 1, 1, '2022-01-16', '2022-01-16 03:00:00', '2022-01-16 10:00:00', NULL, 'N/A', 0, 'OT', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Bangladesh', NULL, NULL, 'Bangladesh', 1, NULL, '2023-10-12 07:48:59', '2023-10-12 07:48:59', NULL, NULL, NULL, NULL, 1),
(17, 1, 1, '2022-01-17', '2022-01-17 03:00:00', '2022-01-17 12:00:00', NULL, 'N/A', 0, 'OT', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Bangladesh', NULL, NULL, 'Bangladesh', 1, NULL, '2023-10-12 07:48:59', '2023-10-12 07:48:59', NULL, NULL, NULL, NULL, 1),
(18, 1, 1, '2022-01-18', '2022-01-18 03:00:00', '2022-01-18 11:00:00', NULL, 'N/A', 0, 'OT', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Bangladesh', NULL, NULL, 'Bangladesh', 1, NULL, '2023-10-12 07:48:59', '2023-10-12 07:48:59', NULL, NULL, NULL, NULL, 1),
(19, 1, 1, '2022-01-19', '2022-01-19 03:00:00', '2022-01-19 11:00:00', NULL, 'N/A', 0, 'OT', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Bangladesh', NULL, NULL, 'Bangladesh', 1, NULL, '2023-10-12 07:48:59', '2023-10-12 07:48:59', NULL, NULL, NULL, NULL, 1),
(20, 1, 1, '2022-01-20', '2022-01-20 03:00:00', '2022-01-20 12:00:00', NULL, 'N/A', 0, 'OT', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Bangladesh', NULL, NULL, 'Bangladesh', 1, NULL, '2023-10-12 07:48:59', '2023-10-12 07:48:59', NULL, NULL, NULL, NULL, 1),
(21, 1, 1, '2022-01-21', '2022-01-21 03:00:00', '2022-01-21 10:00:00', NULL, 'N/A', 0, 'OT', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Bangladesh', NULL, NULL, 'Bangladesh', 1, NULL, '2023-10-12 07:48:59', '2023-10-12 07:48:59', NULL, NULL, NULL, NULL, 1),
(22, 1, 1, '2022-01-22', '2022-01-22 03:00:00', '2022-01-22 12:00:00', NULL, 'N/A', 0, 'OT', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Bangladesh', NULL, NULL, 'Bangladesh', 1, NULL, '2023-10-12 07:48:59', '2023-10-12 07:48:59', NULL, NULL, NULL, NULL, 1),
(23, 1, 1, '2022-01-23', '2022-01-23 03:00:00', '2022-01-23 10:00:00', NULL, 'N/A', 0, 'OT', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Bangladesh', NULL, NULL, 'Bangladesh', 1, NULL, '2023-10-12 07:48:59', '2023-10-12 07:48:59', NULL, NULL, NULL, NULL, 1),
(24, 1, 1, '2022-01-24', '2022-01-24 03:00:00', '2022-01-24 11:00:00', NULL, 'N/A', 0, 'OT', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Bangladesh', NULL, NULL, 'Bangladesh', 1, NULL, '2023-10-12 07:48:59', '2023-10-12 07:48:59', NULL, NULL, NULL, NULL, 1),
(25, 1, 1, '2022-01-25', '2022-01-25 03:00:00', '2022-01-25 12:00:00', NULL, 'N/A', 0, 'OT', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Bangladesh', NULL, NULL, 'Bangladesh', 1, NULL, '2023-10-12 07:48:59', '2023-10-12 07:48:59', NULL, NULL, NULL, NULL, 1),
(26, 1, 1, '2022-01-26', '2022-01-26 03:00:00', '2022-01-26 11:00:00', NULL, 'N/A', 0, 'OT', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Bangladesh', NULL, NULL, 'Bangladesh', 1, NULL, '2023-10-12 07:48:59', '2023-10-12 07:48:59', NULL, NULL, NULL, NULL, 1),
(27, 1, 1, '2022-01-27', '2022-01-27 03:00:00', '2022-01-27 12:00:00', NULL, 'N/A', 0, 'OT', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Bangladesh', NULL, NULL, 'Bangladesh', 1, NULL, '2023-10-12 07:48:59', '2023-10-12 07:48:59', NULL, NULL, NULL, NULL, 1),
(28, 1, 1, '2022-01-28', '2022-01-28 03:00:00', '2022-01-28 12:00:00', NULL, 'N/A', 0, 'OT', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Bangladesh', NULL, NULL, 'Bangladesh', 1, NULL, '2023-10-12 07:48:59', '2023-10-12 07:48:59', NULL, NULL, NULL, NULL, 1),
(29, 1, 1, '2022-01-29', '2022-01-29 03:00:00', '2022-01-29 10:00:00', NULL, 'N/A', 0, 'OT', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Bangladesh', NULL, NULL, 'Bangladesh', 1, NULL, '2023-10-12 07:48:59', '2023-10-12 07:48:59', NULL, NULL, NULL, NULL, 1),
(30, 1, 1, '2022-01-30', '2022-01-30 03:00:00', '2022-01-30 10:00:00', NULL, 'N/A', 0, 'OT', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Bangladesh', NULL, NULL, 'Bangladesh', 1, NULL, '2023-10-12 07:48:59', '2023-10-12 07:48:59', NULL, NULL, NULL, NULL, 1),
(31, 1, 1, '2022-01-31', '2022-01-31 03:00:00', '2022-01-31 10:00:00', NULL, 'N/A', 0, 'OT', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Bangladesh', NULL, NULL, 'Bangladesh', 1, NULL, '2023-10-12 07:48:59', '2023-10-12 07:48:59', NULL, NULL, NULL, NULL, 1),
(32, 1, 1, '2022-02-01', '2022-02-01 03:00:00', '2022-02-01 12:00:00', NULL, 'N/A', 0, 'OT', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Bangladesh', NULL, NULL, 'Bangladesh', 1, NULL, '2023-10-12 07:48:59', '2023-10-12 07:48:59', NULL, NULL, NULL, NULL, 1),
(33, 1, 1, '2022-02-02', '2022-02-02 03:00:00', '2022-02-02 12:00:00', NULL, 'N/A', 0, 'OT', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Bangladesh', NULL, NULL, 'Bangladesh', 1, NULL, '2023-10-12 07:48:59', '2023-10-12 07:48:59', NULL, NULL, NULL, NULL, 1),
(34, 1, 1, '2022-02-03', '2022-02-03 03:00:00', '2022-02-03 12:00:00', NULL, 'N/A', 0, 'OT', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Bangladesh', NULL, NULL, 'Bangladesh', 1, NULL, '2023-10-12 07:48:59', '2023-10-12 07:48:59', NULL, NULL, NULL, NULL, 1),
(35, 1, 1, '2022-02-04', '2022-02-04 03:00:00', '2022-02-04 11:00:00', NULL, 'N/A', 0, 'OT', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Bangladesh', NULL, NULL, 'Bangladesh', 1, NULL, '2023-10-12 07:48:59', '2023-10-12 07:48:59', NULL, NULL, NULL, NULL, 1),
(36, 1, 1, '2022-02-05', '2022-02-05 03:00:00', '2022-02-05 12:00:00', NULL, 'N/A', 0, 'OT', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Bangladesh', NULL, NULL, 'Bangladesh', 1, NULL, '2023-10-12 07:48:59', '2023-10-12 07:48:59', NULL, NULL, NULL, NULL, 1),
(37, 1, 1, '2022-02-06', '2022-02-06 03:00:00', '2022-02-06 11:00:00', NULL, 'N/A', 0, 'OT', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Bangladesh', NULL, NULL, 'Bangladesh', 1, NULL, '2023-10-12 07:48:59', '2023-10-12 07:48:59', NULL, NULL, NULL, NULL, 1),
(38, 1, 1, '2022-02-07', '2022-02-07 03:00:00', '2022-02-07 11:00:00', NULL, 'N/A', 0, 'OT', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Bangladesh', NULL, NULL, 'Bangladesh', 1, NULL, '2023-10-12 07:48:59', '2023-10-12 07:48:59', NULL, NULL, NULL, NULL, 1),
(39, 1, 1, '2022-02-08', '2022-02-08 03:00:00', '2022-02-08 11:00:00', NULL, 'N/A', 0, 'OT', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Bangladesh', NULL, NULL, 'Bangladesh', 1, NULL, '2023-10-12 07:48:59', '2023-10-12 07:48:59', NULL, NULL, NULL, NULL, 1),
(40, 1, 1, '2022-02-09', '2022-02-09 03:00:00', '2022-02-09 12:00:00', NULL, 'N/A', 0, 'OT', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Bangladesh', NULL, NULL, 'Bangladesh', 1, NULL, '2023-10-12 07:48:59', '2023-10-12 07:48:59', NULL, NULL, NULL, NULL, 1),
(41, 1, 1, '2022-02-10', '2022-02-10 03:00:00', '2022-02-10 11:00:00', NULL, 'N/A', 0, 'OT', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Bangladesh', NULL, NULL, 'Bangladesh', 1, NULL, '2023-10-12 07:48:59', '2023-10-12 07:48:59', NULL, NULL, NULL, NULL, 1),
(42, 1, 1, '2022-02-11', '2022-02-11 03:00:00', '2022-02-11 11:00:00', NULL, 'N/A', 0, 'OT', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Bangladesh', NULL, NULL, 'Bangladesh', 1, NULL, '2023-10-12 07:48:59', '2023-10-12 07:48:59', NULL, NULL, NULL, NULL, 1),
(43, 1, 1, '2022-02-12', '2022-02-12 03:00:00', '2022-02-12 12:00:00', NULL, 'N/A', 0, 'OT', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Bangladesh', NULL, NULL, 'Bangladesh', 1, NULL, '2023-10-12 07:48:59', '2023-10-12 07:48:59', NULL, NULL, NULL, NULL, 1),
(44, 1, 1, '2022-02-13', '2022-02-13 03:00:00', '2022-02-13 11:00:00', NULL, 'N/A', 0, 'OT', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Bangladesh', NULL, NULL, 'Bangladesh', 1, NULL, '2023-10-12 07:48:59', '2023-10-12 07:48:59', NULL, NULL, NULL, NULL, 1),
(45, 1, 1, '2022-02-14', '2022-02-14 03:00:00', '2022-02-14 10:00:00', NULL, 'N/A', 0, 'OT', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Bangladesh', NULL, NULL, 'Bangladesh', 1, NULL, '2023-10-12 07:48:59', '2023-10-12 07:48:59', NULL, NULL, NULL, NULL, 1),
(46, 1, 1, '2022-02-15', '2022-02-15 03:00:00', '2022-02-15 10:00:00', NULL, 'N/A', 0, 'OT', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Bangladesh', NULL, NULL, 'Bangladesh', 1, NULL, '2023-10-12 07:48:59', '2023-10-12 07:48:59', NULL, NULL, NULL, NULL, 1),
(47, 1, 1, '2022-02-16', '2022-02-16 03:00:00', '2022-02-16 11:00:00', NULL, 'N/A', 0, 'OT', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Bangladesh', NULL, NULL, 'Bangladesh', 1, NULL, '2023-10-12 07:48:59', '2023-10-12 07:48:59', NULL, NULL, NULL, NULL, 1),
(48, 1, 1, '2022-02-17', '2022-02-17 03:00:00', '2022-02-17 10:00:00', NULL, 'N/A', 0, 'OT', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Bangladesh', NULL, NULL, 'Bangladesh', 1, NULL, '2023-10-12 07:48:59', '2023-10-12 07:48:59', NULL, NULL, NULL, NULL, 1),
(49, 1, 1, '2022-02-18', '2022-02-18 03:00:00', '2022-02-18 10:00:00', NULL, 'N/A', 0, 'OT', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Bangladesh', NULL, NULL, 'Bangladesh', 1, NULL, '2023-10-12 07:48:59', '2023-10-12 07:48:59', NULL, NULL, NULL, NULL, 1),
(50, 1, 1, '2022-02-19', '2022-02-19 03:00:00', '2022-02-19 11:00:00', NULL, 'N/A', 0, 'OT', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Bangladesh', NULL, NULL, 'Bangladesh', 1, NULL, '2023-10-12 07:48:59', '2023-10-12 07:48:59', NULL, NULL, NULL, NULL, 1),
(51, 1, 1, '2022-02-20', '2022-02-20 03:00:00', '2022-02-20 12:00:00', NULL, 'N/A', 0, 'OT', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Bangladesh', NULL, NULL, 'Bangladesh', 1, NULL, '2023-10-12 07:48:59', '2023-10-12 07:48:59', NULL, NULL, NULL, NULL, 1),
(52, 1, 1, '2022-02-21', '2022-02-21 03:00:00', '2022-02-21 12:00:00', NULL, 'N/A', 0, 'OT', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Bangladesh', NULL, NULL, 'Bangladesh', 1, NULL, '2023-10-12 07:48:59', '2023-10-12 07:48:59', NULL, NULL, NULL, NULL, 1),
(53, 1, 1, '2022-02-22', '2022-02-22 03:00:00', '2022-02-22 12:00:00', NULL, 'N/A', 0, 'OT', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Bangladesh', NULL, NULL, 'Bangladesh', 1, NULL, '2023-10-12 07:48:59', '2023-10-12 07:48:59', NULL, NULL, NULL, NULL, 1),
(54, 1, 1, '2022-02-23', '2022-02-23 03:00:00', '2022-02-23 12:00:00', NULL, 'N/A', 0, 'OT', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Bangladesh', NULL, NULL, 'Bangladesh', 1, NULL, '2023-10-12 07:48:59', '2023-10-12 07:48:59', NULL, NULL, NULL, NULL, 1),
(55, 1, 1, '2022-02-24', '2022-02-24 03:00:00', '2022-02-24 10:00:00', NULL, 'N/A', 0, 'OT', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Bangladesh', NULL, NULL, 'Bangladesh', 1, NULL, '2023-10-12 07:48:59', '2023-10-12 07:48:59', NULL, NULL, NULL, NULL, 1),
(56, 1, 1, '2022-02-25', '2022-02-25 03:00:00', '2022-02-25 11:00:00', NULL, 'N/A', 0, 'OT', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Bangladesh', NULL, NULL, 'Bangladesh', 1, NULL, '2023-10-12 07:48:59', '2023-10-12 07:48:59', NULL, NULL, NULL, NULL, 1),
(57, 1, 1, '2022-02-26', '2022-02-26 03:00:00', '2022-02-26 10:00:00', NULL, 'N/A', 0, 'OT', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Bangladesh', NULL, NULL, 'Bangladesh', 1, NULL, '2023-10-12 07:48:59', '2023-10-12 07:48:59', NULL, NULL, NULL, NULL, 1),
(58, 1, 1, '2022-02-27', '2022-02-27 03:00:00', '2022-02-27 10:00:00', NULL, 'N/A', 0, 'OT', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Bangladesh', NULL, NULL, 'Bangladesh', 1, NULL, '2023-10-12 07:48:59', '2023-10-12 07:48:59', NULL, NULL, NULL, NULL, 1),
(59, 1, 1, '2022-02-28', '2022-02-28 03:00:00', '2022-02-28 10:00:00', NULL, 'N/A', 0, 'OT', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Bangladesh', NULL, NULL, 'Bangladesh', 1, NULL, '2023-10-12 07:48:59', '2023-10-12 07:48:59', NULL, NULL, NULL, NULL, 1),
(60, 1, 1, '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 'N/A', 0, 'OT', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Bangladesh', NULL, NULL, 'Bangladesh', 1, NULL, '2023-10-12 07:48:59', '2023-10-12 07:48:59', NULL, NULL, NULL, NULL, 1),
(61, 1, 1, '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 'N/A', 0, 'OT', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Bangladesh', NULL, NULL, 'Bangladesh', 1, NULL, '2023-10-12 07:48:59', '2023-10-12 07:48:59', NULL, NULL, NULL, NULL, 1),
(62, 1, 1, '0000-00-00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL, 'N/A', 0, 'OT', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Bangladesh', NULL, NULL, 'Bangladesh', 1, NULL, '2023-10-12 07:48:59', '2023-10-12 07:48:59', NULL, NULL, NULL, NULL, 1),
(63, 1, 1, '2022-03-01', '2022-03-01 03:00:00', '2022-03-01 12:00:00', NULL, 'N/A', 0, 'OT', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Bangladesh', NULL, NULL, 'Bangladesh', 1, NULL, '2023-10-12 07:48:59', '2023-10-12 07:48:59', NULL, NULL, NULL, NULL, 1),
(64, 1, 1, '2022-03-02', '2022-03-02 03:00:00', '2022-03-02 11:00:00', NULL, 'N/A', 0, 'OT', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Bangladesh', NULL, NULL, 'Bangladesh', 1, NULL, '2023-10-12 07:48:59', '2023-10-12 07:48:59', NULL, NULL, NULL, NULL, 1),
(65, 1, 1, '2022-03-03', '2022-03-03 03:00:00', '2022-03-03 12:00:00', NULL, 'N/A', 0, 'OT', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Bangladesh', NULL, NULL, 'Bangladesh', 1, NULL, '2023-10-12 07:48:59', '2023-10-12 07:48:59', NULL, NULL, NULL, NULL, 1),
(66, 1, 1, '2022-03-04', '2022-03-04 03:00:00', '2022-03-04 12:00:00', NULL, 'N/A', 0, 'OT', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Bangladesh', NULL, NULL, 'Bangladesh', 1, NULL, '2023-10-12 07:48:59', '2023-10-12 07:48:59', NULL, NULL, NULL, NULL, 1),
(67, 1, 1, '2022-03-05', '2022-03-05 03:00:00', '2022-03-05 11:00:00', NULL, 'N/A', 0, 'OT', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Bangladesh', NULL, NULL, 'Bangladesh', 1, NULL, '2023-10-12 07:48:59', '2023-10-12 07:48:59', NULL, NULL, NULL, NULL, 1),
(68, 1, 1, '2022-03-06', '2022-03-06 03:00:00', '2022-03-06 10:00:00', NULL, 'N/A', 0, 'OT', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Bangladesh', NULL, NULL, 'Bangladesh', 1, NULL, '2023-10-12 07:48:59', '2023-10-12 07:48:59', NULL, NULL, NULL, NULL, 1),
(69, 1, 1, '2022-03-07', '2022-03-07 03:00:00', '2022-03-07 10:00:00', NULL, 'N/A', 0, 'OT', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Bangladesh', NULL, NULL, 'Bangladesh', 1, NULL, '2023-10-12 07:48:59', '2023-10-12 07:48:59', NULL, NULL, NULL, NULL, 1),
(70, 1, 1, '2022-03-08', '2022-03-08 03:00:00', '2022-03-08 12:00:00', NULL, 'N/A', 0, 'OT', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Bangladesh', NULL, NULL, 'Bangladesh', 1, NULL, '2023-10-12 07:48:59', '2023-10-12 07:48:59', NULL, NULL, NULL, NULL, 1),
(71, 1, 1, '2022-03-09', '2022-03-09 03:00:00', '2022-03-09 10:00:00', NULL, 'N/A', 0, 'OT', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Bangladesh', NULL, NULL, 'Bangladesh', 1, NULL, '2023-10-12 07:48:59', '2023-10-12 07:48:59', NULL, NULL, NULL, NULL, 1),
(72, 1, 1, '2022-03-10', '2022-03-10 03:00:00', '2022-03-10 12:00:00', NULL, 'N/A', 0, 'OT', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Bangladesh', NULL, NULL, 'Bangladesh', 1, NULL, '2023-10-12 07:48:59', '2023-10-12 07:48:59', NULL, NULL, NULL, NULL, 1),
(73, 1, 1, '2022-03-11', '2022-03-11 03:00:00', '2022-03-11 11:00:00', NULL, 'N/A', 0, 'OT', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Bangladesh', NULL, NULL, 'Bangladesh', 1, NULL, '2023-10-12 07:48:59', '2023-10-12 07:48:59', NULL, NULL, NULL, NULL, 1),
(74, 1, 1, '2022-03-12', '2022-03-12 03:00:00', '2022-03-12 10:00:00', NULL, 'N/A', 0, 'OT', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Bangladesh', NULL, NULL, 'Bangladesh', 1, NULL, '2023-10-12 07:48:59', '2023-10-12 07:48:59', NULL, NULL, NULL, NULL, 1),
(75, 1, 1, '2022-03-13', '2022-03-13 03:00:00', '2022-03-13 11:00:00', NULL, 'N/A', 0, 'OT', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Bangladesh', NULL, NULL, 'Bangladesh', 1, NULL, '2023-10-12 07:48:59', '2023-10-12 07:48:59', NULL, NULL, NULL, NULL, 1),
(76, 1, 1, '2022-03-14', '2022-03-14 03:00:00', '2022-03-14 11:00:00', NULL, 'N/A', 0, 'OT', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Bangladesh', NULL, NULL, 'Bangladesh', 1, NULL, '2023-10-12 07:48:59', '2023-10-12 07:48:59', NULL, NULL, NULL, NULL, 1),
(77, 1, 1, '2022-03-15', '2022-03-15 03:00:00', '2022-03-15 10:00:00', NULL, 'N/A', 0, 'OT', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Bangladesh', NULL, NULL, 'Bangladesh', 1, NULL, '2023-10-12 07:48:59', '2023-10-12 07:48:59', NULL, NULL, NULL, NULL, 1),
(78, 1, 1, '2022-03-16', '2022-03-16 03:00:00', '2022-03-16 12:00:00', NULL, 'N/A', 0, 'OT', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Bangladesh', NULL, NULL, 'Bangladesh', 1, NULL, '2023-10-12 07:48:59', '2023-10-12 07:48:59', NULL, NULL, NULL, NULL, 1),
(79, 1, 1, '2022-03-17', '2022-03-17 03:00:00', '2022-03-17 11:00:00', NULL, 'N/A', 0, 'OT', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Bangladesh', NULL, NULL, 'Bangladesh', 1, NULL, '2023-10-12 07:48:59', '2023-10-12 07:48:59', NULL, NULL, NULL, NULL, 1),
(80, 1, 1, '2022-03-18', '2022-03-18 03:00:00', '2022-03-18 10:00:00', NULL, 'N/A', 0, 'OT', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Bangladesh', NULL, NULL, 'Bangladesh', 1, NULL, '2023-10-12 07:48:59', '2023-10-12 07:48:59', NULL, NULL, NULL, NULL, 1),
(81, 1, 1, '2022-03-19', '2022-03-19 03:00:00', '2022-03-19 10:00:00', NULL, 'N/A', 0, 'OT', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Bangladesh', NULL, NULL, 'Bangladesh', 1, NULL, '2023-10-12 07:48:59', '2023-10-12 07:48:59', NULL, NULL, NULL, NULL, 1),
(82, 1, 1, '2022-03-20', '2022-03-20 03:00:00', '2022-03-20 10:00:00', NULL, 'N/A', 0, 'OT', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Bangladesh', NULL, NULL, 'Bangladesh', 1, NULL, '2023-10-12 07:48:59', '2023-10-12 07:48:59', NULL, NULL, NULL, NULL, 1),
(83, 1, 1, '2022-03-21', '2022-03-21 03:00:00', '2022-03-21 10:00:00', NULL, 'N/A', 0, 'OT', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Bangladesh', NULL, NULL, 'Bangladesh', 1, NULL, '2023-10-12 07:48:59', '2023-10-12 07:48:59', NULL, NULL, NULL, NULL, 1),
(84, 1, 1, '2022-03-22', '2022-03-22 03:00:00', '2022-03-22 12:00:00', NULL, 'N/A', 0, 'OT', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Bangladesh', NULL, NULL, 'Bangladesh', 1, NULL, '2023-10-12 07:48:59', '2023-10-12 07:48:59', NULL, NULL, NULL, NULL, 1),
(85, 1, 1, '2022-03-23', '2022-03-23 03:00:00', '2022-03-23 11:00:00', NULL, 'N/A', 0, 'OT', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Bangladesh', NULL, NULL, 'Bangladesh', 1, NULL, '2023-10-12 07:48:59', '2023-10-12 07:48:59', NULL, NULL, NULL, NULL, 1),
(86, 1, 1, '2022-03-24', '2022-03-24 03:00:00', '2022-03-24 12:00:00', NULL, 'N/A', 0, 'OT', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Bangladesh', NULL, NULL, 'Bangladesh', 1, NULL, '2023-10-12 07:48:59', '2023-10-12 07:48:59', NULL, NULL, NULL, NULL, 1),
(87, 1, 1, '2022-03-25', '2022-03-25 03:00:00', '2022-03-25 12:00:00', NULL, 'N/A', 0, 'OT', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Bangladesh', NULL, NULL, 'Bangladesh', 1, NULL, '2023-10-12 07:48:59', '2023-10-12 07:48:59', NULL, NULL, NULL, NULL, 1),
(88, 1, 1, '2022-03-26', '2022-03-26 03:00:00', '2022-03-26 11:00:00', NULL, 'N/A', 0, 'OT', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Bangladesh', NULL, NULL, 'Bangladesh', 1, NULL, '2023-10-12 07:48:59', '2023-10-12 07:48:59', NULL, NULL, NULL, NULL, 1),
(89, 1, 1, '2022-03-27', '2022-03-27 03:00:00', '2022-03-27 11:00:00', NULL, 'N/A', 0, 'OT', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Bangladesh', NULL, NULL, 'Bangladesh', 1, NULL, '2023-10-12 07:48:59', '2023-10-12 07:48:59', NULL, NULL, NULL, NULL, 1),
(90, 1, 1, '2022-03-28', '2022-03-28 03:00:00', '2022-03-28 10:00:00', NULL, 'N/A', 0, 'OT', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Bangladesh', NULL, NULL, 'Bangladesh', 1, NULL, '2023-10-12 07:48:59', '2023-10-12 07:48:59', NULL, NULL, NULL, NULL, 1),
(91, 1, 1, '2022-03-29', '2022-03-29 03:00:00', '2022-03-29 12:00:00', NULL, 'N/A', 0, 'OT', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Bangladesh', NULL, NULL, 'Bangladesh', 1, NULL, '2023-10-12 07:48:59', '2023-10-12 07:48:59', NULL, NULL, NULL, NULL, 1),
(92, 1, 1, '2022-03-30', '2022-03-30 03:00:00', '2022-03-30 12:00:00', NULL, 'N/A', 0, 'OT', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Bangladesh', NULL, NULL, 'Bangladesh', 1, NULL, '2023-10-12 07:48:59', '2023-10-12 07:48:59', NULL, NULL, NULL, NULL, 1),
(93, 1, 1, '2022-03-31', '2022-03-31 03:00:00', '2022-03-31 10:00:00', NULL, 'N/A', 0, 'OT', NULL, NULL, NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Bangladesh', NULL, NULL, 'Bangladesh', 1, NULL, '2023-10-12 07:48:59', '2023-10-12 07:48:59', NULL, NULL, NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `author_infos`
--

CREATE TABLE `author_infos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `authorable_type` varchar(255) NOT NULL,
  `authorable_id` bigint(20) UNSIGNED NOT NULL,
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by` bigint(20) UNSIGNED DEFAULT NULL,
  `approved_by` bigint(20) UNSIGNED DEFAULT NULL,
  `approved_at` timestamp NULL DEFAULT NULL,
  `rejected_by` bigint(20) UNSIGNED DEFAULT NULL,
  `rejected_at` timestamp NULL DEFAULT NULL,
  `cancelled_by` bigint(20) UNSIGNED DEFAULT NULL,
  `cancelled_at` timestamp NULL DEFAULT NULL,
  `published_by` bigint(20) UNSIGNED DEFAULT NULL,
  `published_at` timestamp NULL DEFAULT NULL,
  `unpublished_by` bigint(20) UNSIGNED DEFAULT NULL,
  `unpublished_at` timestamp NULL DEFAULT NULL,
  `deleted_by` bigint(20) UNSIGNED DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `archived_by` bigint(20) UNSIGNED DEFAULT NULL,
  `archived_at` timestamp NULL DEFAULT NULL,
  `restored_by` bigint(20) UNSIGNED DEFAULT NULL,
  `restored_at` timestamp NULL DEFAULT NULL,
  `referred_by` bigint(20) UNSIGNED DEFAULT NULL,
  `referred_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `branch_id` bigint(20) UNSIGNED DEFAULT 1,
  `company_id` bigint(20) UNSIGNED DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `awards`
--

CREATE TABLE `awards` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `company_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_by` bigint(20) UNSIGNED NOT NULL,
  `award_type_id` bigint(20) UNSIGNED NOT NULL,
  `date` date DEFAULT NULL,
  `gift` varchar(255) DEFAULT NULL,
  `amount` double(16,2) DEFAULT NULL,
  `gift_info` varchar(255) DEFAULT NULL,
  `description` longtext NOT NULL,
  `status_id` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `attachment` bigint(20) UNSIGNED DEFAULT NULL,
  `goal_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `branch_id` bigint(20) UNSIGNED DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `awards`
--

INSERT INTO `awards` (`id`, `company_id`, `user_id`, `created_by`, `award_type_id`, `date`, `gift`, `amount`, `gift_info`, `description`, `status_id`, `attachment`, `goal_id`, `created_at`, `updated_at`, `branch_id`) VALUES
(1, 2, 2, 2, 1, '2020-01-01', 'Gift 1', 100.00, 'Gift info 1', '<strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 1, NULL, NULL, '2019-12-31 18:00:00', '2019-12-31 18:00:00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `award_types`
--

CREATE TABLE `award_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `company_id` bigint(20) UNSIGNED NOT NULL,
  `status_id` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `created_by` bigint(20) UNSIGNED DEFAULT 1,
  `updated_by` bigint(20) UNSIGNED DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `branch_id` bigint(20) UNSIGNED DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `award_types`
--

INSERT INTO `award_types` (`id`, `name`, `company_id`, `status_id`, `created_by`, `updated_by`, `created_at`, `updated_at`, `branch_id`) VALUES
(1, 'Award 1', 1, 1, 2, 2, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1),
(2, 'Award 2', 1, 1, 2, 2, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1),
(3, 'Award 3', 1, 1, 2, 2, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1);

-- --------------------------------------------------------

--
-- Table structure for table `bank_accounts`
--

CREATE TABLE `bank_accounts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `account_number` varchar(255) NOT NULL COMMENT 'Account Number',
  `bank_name` varchar(255) NOT NULL COMMENT 'Bank Name',
  `branch_name` varchar(255) NOT NULL COMMENT 'Bank branch name',
  `ifsc_code` varchar(255) DEFAULT NULL COMMENT 'IFSC Code',
  `account_type` enum('savings','current') NOT NULL DEFAULT 'savings',
  `account_holder_name` varchar(191) DEFAULT NULL,
  `account_holder_mobile` varchar(191) DEFAULT NULL,
  `account_holder_email` varchar(191) DEFAULT NULL,
  `status_id` bigint(20) UNSIGNED DEFAULT NULL,
  `author_info_id` bigint(20) UNSIGNED DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `branch_id` bigint(20) UNSIGNED DEFAULT 1,
  `company_id` bigint(20) UNSIGNED DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `branches`
--

CREATE TABLE `branches` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `user_id` bigint(20) NOT NULL,
  `company_id` bigint(20) NOT NULL,
  `status_id` bigint(20) NOT NULL DEFAULT 1 COMMENT '1=active,4=inactive',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `branch_id` bigint(20) UNSIGNED DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `branches`
--

INSERT INTO `branches` (`id`, `name`, `address`, `phone`, `email`, `user_id`, `company_id`, `status_id`, `deleted_at`, `created_at`, `updated_at`, `branch_id`) VALUES
(1, 'Head Office', 'Texas, USA', '1697096938', 'admin@gmail.com', 1, 1, 1, NULL, '2023-10-12 07:48:58', '2023-10-12 07:48:58', 1);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL COMMENT 'name',
  `type` tinyint(4) NOT NULL COMMENT '1=income 2=expense',
  `serial` varchar(255) NOT NULL COMMENT 'serial',
  `description` varchar(255) DEFAULT NULL COMMENT 'description',
  `status_id` bigint(20) UNSIGNED DEFAULT NULL,
  `author_info_id` bigint(20) UNSIGNED DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `branch_id` bigint(20) UNSIGNED DEFAULT 1,
  `company_id` bigint(20) UNSIGNED DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

CREATE TABLE `clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `zip` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `status_id` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `company_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `branch_id` bigint(20) UNSIGNED DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `clients`
--

INSERT INTO `clients` (`id`, `name`, `email`, `phone`, `address`, `city`, `state`, `zip`, `country`, `website`, `date`, `status_id`, `company_id`, `created_at`, `updated_at`, `deleted_at`, `branch_id`) VALUES
(1, 'John Doe', 'john@gmail.com', '123456789', '123 Main St', 'New York', 'NY', '10001', 'USA', 'www.john.com', NULL, 1, 2, '2023-10-12 07:48:59', '2023-10-12 07:48:59', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `commissions`
--

CREATE TABLE `commissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `company_id` bigint(20) UNSIGNED NOT NULL,
  `type` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1: addition, 2: deduction',
  `mode` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1: percentage, 2: fixed',
  `amount` double NOT NULL DEFAULT 0,
  `status_id` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `created_by` bigint(20) UNSIGNED DEFAULT 1,
  `updated_by` bigint(20) UNSIGNED DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `branch_id` bigint(20) UNSIGNED DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `commissions`
--

INSERT INTO `commissions` (`id`, `name`, `company_id`, `type`, `mode`, `amount`, `status_id`, `created_by`, `updated_by`, `created_at`, `updated_at`, `branch_id`) VALUES
(1, 'Basic', 2, 1, 2, 50, 1, 1, 1, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1),
(2, 'HRA', 2, 1, 2, 40, 1, 1, 1, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1),
(3, 'Medical', 2, 1, 2, 10, 1, 1, 1, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1);

-- --------------------------------------------------------

--
-- Table structure for table `companies`
--

CREATE TABLE `companies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `country_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `company_name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `total_employee` int(11) DEFAULT NULL,
  `business_type` varchar(255) DEFAULT NULL,
  `trade_licence_number` varchar(255) DEFAULT NULL,
  `subdomain` varchar(255) DEFAULT NULL,
  `trade_licence_id` bigint(20) UNSIGNED DEFAULT NULL,
  `status_id` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `is_main_company` enum('yes','no') NOT NULL DEFAULT 'no',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `branch_id` bigint(20) UNSIGNED DEFAULT 1,
  `company_id` bigint(20) UNSIGNED DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `companies`
--

INSERT INTO `companies` (`id`, `country_id`, `name`, `company_name`, `email`, `phone`, `total_employee`, `business_type`, `trade_licence_number`, `subdomain`, `trade_licence_id`, `status_id`, `is_main_company`, `created_at`, `updated_at`, `branch_id`, `company_id`) VALUES
(1, 223, 'Admin', 'Company 1', 'admin@onesttech.com', '+8801959335555', 400, 'Service', NULL, NULL, NULL, 1, 'yes', '2023-10-12 07:48:58', '2023-10-12 07:48:58', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `company_configs`
--

CREATE TABLE `company_configs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(255) NOT NULL,
  `value` varchar(255) NOT NULL,
  `company_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `branch_id` bigint(20) UNSIGNED DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `company_configs`
--

INSERT INTO `company_configs` (`id`, `key`, `value`, `company_id`, `created_at`, `updated_at`, `branch_id`) VALUES
(1, 'date_format', 'd-m-Y', 1, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1),
(2, 'time_format', 'h', 1, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1),
(3, 'ip_check', '0', 1, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1),
(4, 'leave_assign', '0', 1, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1),
(5, 'currency_symbol', '$', 1, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1),
(6, 'location_service', '0', 1, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1),
(7, 'app_sync_time', '', 1, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1),
(8, 'live_data_store_time', '', 1, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1),
(9, 'lang', 'en', 1, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1),
(10, 'multi_checkin', '0', 1, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1),
(11, 'currency', '2', 1, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1),
(12, 'timezone', 'Asia/Dhaka', 1, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1),
(13, 'currency_code', 'USD', 1, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1),
(14, 'location_check', '0', 1, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1),
(15, 'attendance_method', 'N', 1, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1),
(16, 'google', 'AIzaSyBVF8ZCdPLYBEC2-PCRww1_Q0Abe5GYP1c', 1, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1),
(17, 'firebase', 'AIzaSyCtelHxMcrwX5Y3r6KNkTrnOUOC6aylOJk', 1, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1);

-- --------------------------------------------------------

--
-- Table structure for table `competences`
--

CREATE TABLE `competences` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `competence_type_id` bigint(20) UNSIGNED DEFAULT NULL,
  `company_id` bigint(20) UNSIGNED NOT NULL,
  `status_id` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `created_by` bigint(20) UNSIGNED DEFAULT 1,
  `updated_by` bigint(20) UNSIGNED DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `branch_id` bigint(20) UNSIGNED DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `competences`
--

INSERT INTO `competences` (`id`, `name`, `competence_type_id`, `company_id`, `status_id`, `created_by`, `updated_by`, `created_at`, `updated_at`, `branch_id`) VALUES
(1, 'Leadership', 1, 2, 1, 2, 2, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1),
(2, 'Project Management', 1, 2, 1, 2, 2, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1),
(3, 'Allocating Resources', 2, 2, 1, 2, 2, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1),
(4, 'Team Work', 2, 2, 1, 2, 2, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1),
(5, 'Business Process', 3, 2, 1, 2, 2, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1),
(6, 'Oral Communication', 3, 2, 1, 2, 2, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1);

-- --------------------------------------------------------

--
-- Table structure for table `competence_types`
--

CREATE TABLE `competence_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `company_id` bigint(20) UNSIGNED NOT NULL,
  `status_id` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `created_by` bigint(20) UNSIGNED DEFAULT 1,
  `updated_by` bigint(20) UNSIGNED DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `branch_id` bigint(20) UNSIGNED DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `competence_types`
--

INSERT INTO `competence_types` (`id`, `name`, `company_id`, `status_id`, `created_by`, `updated_by`, `created_at`, `updated_at`, `branch_id`) VALUES
(1, 'Organizational Competencies', 2, 1, 2, 2, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1),
(2, 'Technical Competencies', 2, 1, 2, 2, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1),
(3, 'Behavioral Competencies', 2, 1, 2, 2, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1);

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `contact_for` int(11) NOT NULL DEFAULT 0 COMMENT '1 for support,0 for query',
  `phone` varchar(255) DEFAULT NULL,
  `message` longtext NOT NULL,
  `contact_status` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0 for unread,1 for read',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `branch_id` bigint(20) UNSIGNED DEFAULT 1,
  `company_id` bigint(20) UNSIGNED DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `conversations`
--

CREATE TABLE `conversations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sender_id` bigint(20) UNSIGNED NOT NULL,
  `receiver_id` bigint(20) UNSIGNED NOT NULL,
  `type` enum('notification','message') NOT NULL DEFAULT 'notification' COMMENT 'notification: notification, message: message',
  `title` varchar(255) DEFAULT NULL,
  `message` text DEFAULT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `image_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `branch_id` bigint(20) UNSIGNED DEFAULT 1,
  `company_id` bigint(20) UNSIGNED DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `conversations`
--

INSERT INTO `conversations` (`id`, `sender_id`, `receiver_id`, `type`, `title`, `message`, `read_at`, `image_id`, `created_at`, `updated_at`, `branch_id`, `company_id`) VALUES
(1, 1, 3, 'notification', 'New Message', 'Thank you for joining', NULL, NULL, NULL, NULL, 1, 1),
(2, 1, 6, 'notification', 'New Message', 'Thank you for joining', NULL, NULL, NULL, NULL, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `country_code` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `time_zone` varchar(191) DEFAULT NULL,
  `currency_code` varchar(191) DEFAULT NULL,
  `currency_symbol` varchar(191) DEFAULT NULL,
  `currency_name` varchar(191) DEFAULT NULL,
  `currency_symbol_placement` enum('before','after') DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `branch_id` bigint(20) UNSIGNED DEFAULT 1,
  `company_id` bigint(20) UNSIGNED DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `country_code`, `name`, `time_zone`, `currency_code`, `currency_symbol`, `currency_name`, `currency_symbol_placement`, `created_at`, `updated_at`, `branch_id`, `company_id`) VALUES
(1, 'AF', 'Afghanistan', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2023-10-12 07:48:58', '2023-10-12 07:48:58', 1, 1),
(2, 'AL', 'Albania', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2023-10-12 07:48:58', '2023-10-12 07:48:58', 1, 1),
(3, 'DZ', 'Algeria', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2023-10-12 07:48:58', '2023-10-12 07:48:58', 1, 1),
(4, 'AD', 'Andorra', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2023-10-12 07:48:58', '2023-10-12 07:48:58', 1, 1),
(5, 'AO', 'Angola', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2023-10-12 07:48:58', '2023-10-12 07:48:58', 1, 1),
(6, 'AI', 'Anguilla', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2023-10-12 07:48:58', '2023-10-12 07:48:58', 1, 1),
(7, 'AQ', 'Antarctica', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2023-10-12 07:48:58', '2023-10-12 07:48:58', 1, 1),
(8, 'AG', 'Antigua and Barbuda', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2023-10-12 07:48:58', '2023-10-12 07:48:58', 1, 1),
(9, 'AR', 'Argentina', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2023-10-12 07:48:58', '2023-10-12 07:48:58', 1, 1),
(10, 'AM', 'Armenia', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2023-10-12 07:48:58', '2023-10-12 07:48:58', 1, 1),
(11, 'AW', 'Aruba', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2023-10-12 07:48:58', '2023-10-12 07:48:58', 1, 1),
(12, 'AU', 'Australia', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2023-10-12 07:48:58', '2023-10-12 07:48:58', 1, 1),
(13, 'AT', 'Austria', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2023-10-12 07:48:58', '2023-10-12 07:48:58', 1, 1),
(14, 'AZ', 'Azerbaijan', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2023-10-12 07:48:58', '2023-10-12 07:48:58', 1, 1),
(15, 'BS', 'Bahamas', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2023-10-12 07:48:58', '2023-10-12 07:48:58', 1, 1),
(16, 'BH', 'Bahrain', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2023-10-12 07:48:58', '2023-10-12 07:48:58', 1, 1),
(17, 'BD', 'Bangladesh', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2023-10-12 07:48:58', '2023-10-12 07:48:58', 1, 1),
(18, 'BB', 'Barbados', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2023-10-12 07:48:58', '2023-10-12 07:48:58', 1, 1),
(19, 'BY', 'Belarus', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2023-10-12 07:48:58', '2023-10-12 07:48:58', 1, 1),
(20, 'BE', 'Belgium', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2023-10-12 07:48:58', '2023-10-12 07:48:58', 1, 1),
(21, 'BZ', 'Belize', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2023-10-12 07:48:58', '2023-10-12 07:48:58', 1, 1),
(22, 'BJ', 'Benin', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2023-10-12 07:48:58', '2023-10-12 07:48:58', 1, 1),
(23, 'BM', 'Bermuda', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2023-10-12 07:48:58', '2023-10-12 07:48:58', 1, 1),
(24, 'BT', 'Bhutan', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2023-10-12 07:48:58', '2023-10-12 07:48:58', 1, 1),
(25, 'BO', 'Bolivia', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2023-10-12 07:48:58', '2023-10-12 07:48:58', 1, 1),
(26, 'BA', 'Bosnia and Herzegovina', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2023-10-12 07:48:58', '2023-10-12 07:48:58', 1, 1),
(27, 'BW', 'Botswana', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2023-10-12 07:48:58', '2023-10-12 07:48:58', 1, 1),
(28, 'BR', 'Brazil', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2023-10-12 07:48:58', '2023-10-12 07:48:58', 1, 1),
(29, 'IO', 'British Indian Ocean Territory', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2023-10-12 07:48:58', '2023-10-12 07:48:58', 1, 1),
(30, 'BN', 'Brunei Darussalam', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2023-10-12 07:48:58', '2023-10-12 07:48:58', 1, 1),
(31, 'BG', 'Bulgaria', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2023-10-12 07:48:58', '2023-10-12 07:48:58', 1, 1),
(32, 'BF', 'Burkina Faso', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2023-10-12 07:48:58', '2023-10-12 07:48:58', 1, 1),
(33, 'BI', 'Burundi', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2023-10-12 07:48:58', '2023-10-12 07:48:58', 1, 1),
(34, 'KH', 'Cambodia', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2023-10-12 07:48:58', '2023-10-12 07:48:58', 1, 1),
(35, 'CM', 'Cameroon', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2023-10-12 07:48:58', '2023-10-12 07:48:58', 1, 1),
(36, 'CA', 'Canada', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2023-10-12 07:48:58', '2023-10-12 07:48:58', 1, 1),
(37, 'CV', 'Cape Verde', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2023-10-12 07:48:58', '2023-10-12 07:48:58', 1, 1),
(38, 'KY', 'Cayman Islands', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2023-10-12 07:48:58', '2023-10-12 07:48:58', 1, 1),
(39, 'CF', 'Central African Republic', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2023-10-12 07:48:58', '2023-10-12 07:48:58', 1, 1),
(40, 'TD', 'Chad', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2023-10-12 07:48:58', '2023-10-12 07:48:58', 1, 1),
(41, 'CL', 'Chile', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2023-10-12 07:48:58', '2023-10-12 07:48:58', 1, 1),
(42, 'CN', 'China', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2023-10-12 07:48:58', '2023-10-12 07:48:58', 1, 1),
(43, 'CX', 'Christmas Island', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2023-10-12 07:48:58', '2023-10-12 07:48:58', 1, 1),
(44, 'CC', 'Cocos (Keeling) Islands', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2023-10-12 07:48:58', '2023-10-12 07:48:58', 1, 1),
(45, 'CO', 'Colombia', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2023-10-12 07:48:58', '2023-10-12 07:48:58', 1, 1),
(46, 'KM', 'Comoros', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2023-10-12 07:48:58', '2023-10-12 07:48:58', 1, 1),
(47, 'CD', 'Democratic Republic of the Congo', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2023-10-12 07:48:58', '2023-10-12 07:48:58', 1, 1),
(48, 'CG', 'Republic of Congo', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2023-10-12 07:48:58', '2023-10-12 07:48:58', 1, 1),
(49, 'CK', 'Cook Islands', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2023-10-12 07:48:58', '2023-10-12 07:48:58', 1, 1),
(50, 'CR', 'Costa Rica', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2023-10-12 07:48:58', '2023-10-12 07:48:58', 1, 1),
(51, 'HR', 'Croatia (Hrvatska)', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2023-10-12 07:48:58', '2023-10-12 07:48:58', 1, 1),
(52, 'CU', 'Cuba', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2023-10-12 07:48:58', '2023-10-12 07:48:58', 1, 1),
(53, 'CY', 'Cyprus', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2023-10-12 07:48:58', '2023-10-12 07:48:58', 1, 1),
(54, 'CZ', 'Czech Republic', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2023-10-12 07:48:58', '2023-10-12 07:48:58', 1, 1),
(55, 'DK', 'Denmark', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2023-10-12 07:48:58', '2023-10-12 07:48:58', 1, 1),
(56, 'DJ', 'Djibouti', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2023-10-12 07:48:58', '2023-10-12 07:48:58', 1, 1),
(57, 'DM', 'Dominica', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2023-10-12 07:48:58', '2023-10-12 07:48:58', 1, 1),
(58, 'DO', 'Dominican Republic', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2023-10-12 07:48:58', '2023-10-12 07:48:58', 1, 1),
(59, 'EC', 'Ecuador', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2023-10-12 07:48:58', '2023-10-12 07:48:58', 1, 1),
(60, 'EG', 'Egypt', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2023-10-12 07:48:58', '2023-10-12 07:48:58', 1, 1),
(61, 'SV', 'El Salvador', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2023-10-12 07:48:58', '2023-10-12 07:48:58', 1, 1),
(62, 'GQ', 'Equatorial Guinea', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2023-10-12 07:48:58', '2023-10-12 07:48:58', 1, 1),
(63, 'ER', 'Eritrea', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2023-10-12 07:48:58', '2023-10-12 07:48:58', 1, 1),
(64, 'EE', 'Estonia', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2023-10-12 07:48:58', '2023-10-12 07:48:58', 1, 1),
(65, 'ET', 'Ethiopia', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2023-10-12 07:48:58', '2023-10-12 07:48:58', 1, 1),
(66, 'FK', 'Falkland Islands (Malvinas)', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2023-10-12 07:48:58', '2023-10-12 07:48:58', 1, 1),
(67, 'FO', 'Faroe Islands', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2023-10-12 07:48:58', '2023-10-12 07:48:58', 1, 1),
(68, 'FJ', 'Fiji', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2023-10-12 07:48:58', '2023-10-12 07:48:58', 1, 1),
(69, 'FI', 'Finland', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2023-10-12 07:48:58', '2023-10-12 07:48:58', 1, 1),
(70, 'FR', 'France', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2023-10-12 07:48:58', '2023-10-12 07:48:58', 1, 1),
(71, 'GF', 'French Guiana', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2023-10-12 07:48:58', '2023-10-12 07:48:58', 1, 1),
(72, 'PF', 'French Polynesia', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2023-10-12 07:48:58', '2023-10-12 07:48:58', 1, 1),
(73, 'TF', 'French Southern Territories', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2023-10-12 07:48:58', '2023-10-12 07:48:58', 1, 1),
(74, 'GA', 'Gabon', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2023-10-12 07:48:58', '2023-10-12 07:48:58', 1, 1),
(75, 'GM', 'Gambia', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2023-10-12 07:48:58', '2023-10-12 07:48:58', 1, 1),
(76, 'GE', 'Georgia', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2023-10-12 07:48:58', '2023-10-12 07:48:58', 1, 1),
(77, 'DE', 'Germany', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2023-10-12 07:48:58', '2023-10-12 07:48:58', 1, 1),
(78, 'GH', 'Ghana', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2023-10-12 07:48:58', '2023-10-12 07:48:58', 1, 1),
(79, 'GI', 'Gibraltar', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2023-10-12 07:48:58', '2023-10-12 07:48:58', 1, 1),
(80, 'GR', 'Greece', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2023-10-12 07:48:58', '2023-10-12 07:48:58', 1, 1),
(81, 'GL', 'Greenland', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2023-10-12 07:48:58', '2023-10-12 07:48:58', 1, 1),
(82, 'GD', 'Grenada', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2023-10-12 07:48:58', '2023-10-12 07:48:58', 1, 1),
(83, 'GP', 'Guadeloupe', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2023-10-12 07:48:58', '2023-10-12 07:48:58', 1, 1),
(84, 'GU', 'Guam', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2023-10-12 07:48:58', '2023-10-12 07:48:58', 1, 1),
(85, 'GT', 'Guatemala', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2023-10-12 07:48:58', '2023-10-12 07:48:58', 1, 1),
(86, 'GN', 'Guinea', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2023-10-12 07:48:58', '2023-10-12 07:48:58', 1, 1),
(87, 'GW', 'Guinea-Bissau', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2023-10-12 07:48:58', '2023-10-12 07:48:58', 1, 1),
(88, 'GY', 'Guyana', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2023-10-12 07:48:58', '2023-10-12 07:48:58', 1, 1),
(89, 'HT', 'Haiti', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2023-10-12 07:48:58', '2023-10-12 07:48:58', 1, 1),
(90, 'HN', 'Honduras', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2023-10-12 07:48:58', '2023-10-12 07:48:58', 1, 1),
(91, 'HK', 'Hong Kong', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2023-10-12 07:48:58', '2023-10-12 07:48:58', 1, 1),
(92, 'HU', 'Hungary', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2023-10-12 07:48:58', '2023-10-12 07:48:58', 1, 1),
(93, 'IS', 'Iceland', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2023-10-12 07:48:58', '2023-10-12 07:48:58', 1, 1),
(94, 'IN', 'India', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2023-10-12 07:48:58', '2023-10-12 07:48:58', 1, 1),
(95, 'IM', 'Isle of Man', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2023-10-12 07:48:58', '2023-10-12 07:48:58', 1, 1),
(96, 'ID', 'Indonesia', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2023-10-12 07:48:58', '2023-10-12 07:48:58', 1, 1),
(97, 'IR', 'Iran (Islamic Republic of)', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2023-10-12 07:48:58', '2023-10-12 07:48:58', 1, 1),
(98, 'IQ', 'Iraq', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2023-10-12 07:48:58', '2023-10-12 07:48:58', 1, 1),
(99, 'IE', 'Ireland', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2023-10-12 07:48:58', '2023-10-12 07:48:58', 1, 1),
(100, 'IL', 'Israel', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2023-10-12 07:48:58', '2023-10-12 07:48:58', 1, 1),
(101, 'IT', 'Italy', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2023-10-12 07:48:58', '2023-10-12 07:48:58', 1, 1),
(102, 'CI', 'Ivory Coast', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2023-10-12 07:48:58', '2023-10-12 07:48:58', 1, 1),
(103, 'JE', 'Jersey', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2023-10-12 07:48:58', '2023-10-12 07:48:58', 1, 1),
(104, 'JM', 'Jamaica', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2023-10-12 07:48:58', '2023-10-12 07:48:58', 1, 1),
(105, 'JP', 'Japan', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2023-10-12 07:48:58', '2023-10-12 07:48:58', 1, 1),
(106, 'JO', 'Jordan', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2023-10-12 07:48:58', '2023-10-12 07:48:58', 1, 1),
(107, 'KZ', 'Kazakhstan', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2023-10-12 07:48:58', '2023-10-12 07:48:58', 1, 1),
(108, 'KE', 'Kenya', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2023-10-12 07:48:58', '2023-10-12 07:48:58', 1, 1),
(109, 'KI', 'Kiribati', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2023-10-12 07:48:58', '2023-10-12 07:48:58', 1, 1),
(110, 'KP', 'Korea, Democratic People\'s Republic of', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2023-10-12 07:48:58', '2023-10-12 07:48:58', 1, 1),
(111, 'KR', 'Korea, Republic of', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2023-10-12 07:48:58', '2023-10-12 07:48:58', 1, 1),
(112, 'XK', 'Kosovo', '', NULL, NULL, NULL, NULL, '2023-10-12 07:48:58', '2023-10-12 07:48:58', 1, 1),
(113, 'KW', 'Kuwait', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2023-10-12 07:48:58', '2023-10-12 07:48:58', 1, 1),
(114, 'KG', 'Kyrgyzstan', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2023-10-12 07:48:58', '2023-10-12 07:48:58', 1, 1),
(115, 'LA', 'Lao People\'s Democratic Republic', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2023-10-12 07:48:58', '2023-10-12 07:48:58', 1, 1),
(116, 'LV', 'Latvia', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2023-10-12 07:48:58', '2023-10-12 07:48:58', 1, 1),
(117, 'LB', 'Lebanon', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2023-10-12 07:48:58', '2023-10-12 07:48:58', 1, 1),
(118, 'LS', 'Lesotho', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2023-10-12 07:48:58', '2023-10-12 07:48:58', 1, 1),
(119, 'LR', 'Liberia', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2023-10-12 07:48:58', '2023-10-12 07:48:58', 1, 1),
(120, 'LY', 'Libyan Arab Jamahiriya', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2023-10-12 07:48:58', '2023-10-12 07:48:58', 1, 1),
(121, 'LI', 'Liechtenstein', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2023-10-12 07:48:58', '2023-10-12 07:48:58', 1, 1),
(122, 'LT', 'Lithuania', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2023-10-12 07:48:58', '2023-10-12 07:48:58', 1, 1),
(123, 'LU', 'Luxembourg', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2023-10-12 07:48:58', '2023-10-12 07:48:58', 1, 1),
(124, 'MO', 'Macau', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2023-10-12 07:48:58', '2023-10-12 07:48:58', 1, 1),
(125, 'MK', 'North Macedonia', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2023-10-12 07:48:58', '2023-10-12 07:48:58', 1, 1),
(126, 'MG', 'Madagascar', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2023-10-12 07:48:58', '2023-10-12 07:48:58', 1, 1),
(127, 'MW', 'Malawi', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2023-10-12 07:48:58', '2023-10-12 07:48:58', 1, 1),
(128, 'MY', 'Malaysia', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2023-10-12 07:48:58', '2023-10-12 07:48:58', 1, 1),
(129, 'MV', 'Maldives', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2023-10-12 07:48:58', '2023-10-12 07:48:58', 1, 1),
(130, 'ML', 'Mali', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2023-10-12 07:48:58', '2023-10-12 07:48:58', 1, 1),
(131, 'MT', 'Malta', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2023-10-12 07:48:58', '2023-10-12 07:48:58', 1, 1),
(132, 'MH', 'Marshall Islands', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2023-10-12 07:48:58', '2023-10-12 07:48:58', 1, 1),
(133, 'MQ', 'Martinique', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2023-10-12 07:48:58', '2023-10-12 07:48:58', 1, 1),
(134, 'MR', 'Mauritania', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2023-10-12 07:48:58', '2023-10-12 07:48:58', 1, 1),
(135, 'MU', 'Mauritius', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2023-10-12 07:48:58', '2023-10-12 07:48:58', 1, 1),
(136, 'MX', 'Mexico', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2023-10-12 07:48:58', '2023-10-12 07:48:58', 1, 1),
(137, 'FM', 'Micronesia, Federated States of', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2023-10-12 07:48:58', '2023-10-12 07:48:58', 1, 1),
(138, 'MD', 'Moldova, Republic of', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2023-10-12 07:48:58', '2023-10-12 07:48:58', 1, 1),
(139, 'MC', 'Monaco', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2023-10-12 07:48:58', '2023-10-12 07:48:58', 1, 1),
(140, 'MN', 'Mongolia', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2023-10-12 07:48:58', '2023-10-12 07:48:58', 1, 1),
(141, 'ME', 'Montenegro', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2023-10-12 07:48:58', '2023-10-12 07:48:58', 1, 1),
(142, 'MS', 'Montserrat', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2023-10-12 07:48:58', '2023-10-12 07:48:58', 1, 1),
(143, 'MA', 'Morocco', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2023-10-12 07:48:58', '2023-10-12 07:48:58', 1, 1),
(144, 'MZ', 'Mozambique', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2023-10-12 07:48:58', '2023-10-12 07:48:58', 1, 1),
(145, 'MM', 'Myanmar', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2023-10-12 07:48:58', '2023-10-12 07:48:58', 1, 1),
(146, 'NA', 'Namibia', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2023-10-12 07:48:58', '2023-10-12 07:48:58', 1, 1),
(147, 'NR', 'Nauru', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2023-10-12 07:48:58', '2023-10-12 07:48:58', 1, 1),
(148, 'NP', 'Nepal', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2023-10-12 07:48:58', '2023-10-12 07:48:58', 1, 1),
(149, 'NL', 'Netherlands', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2023-10-12 07:48:58', '2023-10-12 07:48:58', 1, 1),
(150, 'NC', 'New Caledonia', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2023-10-12 07:48:58', '2023-10-12 07:48:58', 1, 1),
(151, 'NZ', 'New Zealand', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2023-10-12 07:48:58', '2023-10-12 07:48:58', 1, 1),
(152, 'NI', 'Nicaragua', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2023-10-12 07:48:58', '2023-10-12 07:48:58', 1, 1),
(153, 'NE', 'Niger', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2023-10-12 07:48:58', '2023-10-12 07:48:58', 1, 1),
(154, 'NG', 'Nigeria', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2023-10-12 07:48:58', '2023-10-12 07:48:58', 1, 1),
(155, 'NU', 'Niue', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2023-10-12 07:48:58', '2023-10-12 07:48:58', 1, 1),
(156, 'NF', 'Norfolk Island', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2023-10-12 07:48:58', '2023-10-12 07:48:58', 1, 1),
(157, 'MP', 'Northern Mariana Islands', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2023-10-12 07:48:58', '2023-10-12 07:48:58', 1, 1),
(158, 'NO', 'Norway', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2023-10-12 07:48:58', '2023-10-12 07:48:58', 1, 1),
(159, 'OM', 'Oman', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2023-10-12 07:48:58', '2023-10-12 07:48:58', 1, 1),
(160, 'PK', 'Pakistan', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2023-10-12 07:48:58', '2023-10-12 07:48:58', 1, 1),
(161, 'PW', 'Palau', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2023-10-12 07:48:58', '2023-10-12 07:48:58', 1, 1),
(162, 'PS', 'Palestine', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2023-10-12 07:48:58', '2023-10-12 07:48:58', 1, 1),
(163, 'PA', 'Panama', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2023-10-12 07:48:58', '2023-10-12 07:48:58', 1, 1),
(164, 'PG', 'Papua New Guinea', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2023-10-12 07:48:58', '2023-10-12 07:48:58', 1, 1),
(165, 'PY', 'Paraguay', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2023-10-12 07:48:58', '2023-10-12 07:48:58', 1, 1),
(166, 'PE', 'Peru', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2023-10-12 07:48:58', '2023-10-12 07:48:58', 1, 1),
(167, 'PH', 'Philippines', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2023-10-12 07:48:58', '2023-10-12 07:48:58', 1, 1),
(168, 'PN', 'Pitcairn', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2023-10-12 07:48:58', '2023-10-12 07:48:58', 1, 1),
(169, 'PL', 'Poland', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2023-10-12 07:48:58', '2023-10-12 07:48:58', 1, 1),
(170, 'PT', 'Portugal', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2023-10-12 07:48:58', '2023-10-12 07:48:58', 1, 1),
(171, 'PR', 'Puerto Rico', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2023-10-12 07:48:58', '2023-10-12 07:48:58', 1, 1),
(172, 'QA', 'Qatar', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2023-10-12 07:48:58', '2023-10-12 07:48:58', 1, 1),
(173, 'RE', 'Reunion', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2023-10-12 07:48:58', '2023-10-12 07:48:58', 1, 1),
(174, 'RO', 'Romania', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2023-10-12 07:48:58', '2023-10-12 07:48:58', 1, 1),
(175, 'RU', 'Russian Federation', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2023-10-12 07:48:58', '2023-10-12 07:48:58', 1, 1),
(176, 'RW', 'Rwanda', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2023-10-12 07:48:58', '2023-10-12 07:48:58', 1, 1),
(177, 'KN', 'Saint Kitts and Nevis', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2023-10-12 07:48:58', '2023-10-12 07:48:58', 1, 1),
(178, 'LC', 'Saint Lucia', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2023-10-12 07:48:58', '2023-10-12 07:48:58', 1, 1),
(179, 'VC', 'Saint Vincent and the Grenadines', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2023-10-12 07:48:58', '2023-10-12 07:48:58', 1, 1),
(180, 'WS', 'Samoa', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2023-10-12 07:48:58', '2023-10-12 07:48:58', 1, 1),
(181, 'SM', 'San Marino', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2023-10-12 07:48:58', '2023-10-12 07:48:58', 1, 1),
(182, 'ST', 'Sao Tome and Principe', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2023-10-12 07:48:58', '2023-10-12 07:48:58', 1, 1),
(183, 'SA', 'Saudi Arabia', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2023-10-12 07:48:58', '2023-10-12 07:48:58', 1, 1),
(184, 'SN', 'Senegal', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2023-10-12 07:48:58', '2023-10-12 07:48:58', 1, 1),
(185, 'RS', 'Serbia', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2023-10-12 07:48:58', '2023-10-12 07:48:58', 1, 1),
(186, 'SC', 'Seychelles', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2023-10-12 07:48:58', '2023-10-12 07:48:58', 1, 1),
(187, 'SL', 'Sierra Leone', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2023-10-12 07:48:58', '2023-10-12 07:48:58', 1, 1),
(188, 'SG', 'Singapore', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2023-10-12 07:48:58', '2023-10-12 07:48:58', 1, 1),
(189, 'SK', 'Slovakia', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2023-10-12 07:48:58', '2023-10-12 07:48:58', 1, 1),
(190, 'SI', 'Slovenia', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2023-10-12 07:48:58', '2023-10-12 07:48:58', 1, 1),
(191, 'SB', 'Solomon Islands', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2023-10-12 07:48:58', '2023-10-12 07:48:58', 1, 1),
(192, 'SO', 'Somalia', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2023-10-12 07:48:58', '2023-10-12 07:48:58', 1, 1),
(193, 'ZA', 'South Africa', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2023-10-12 07:48:58', '2023-10-12 07:48:58', 1, 1),
(194, 'SS', 'South Sudan', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2023-10-12 07:48:58', '2023-10-12 07:48:58', 1, 1),
(195, 'GS', 'South Georgia South Sandwich Islands', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2023-10-12 07:48:58', '2023-10-12 07:48:58', 1, 1),
(196, 'ES', 'Spain', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2023-10-12 07:48:58', '2023-10-12 07:48:58', 1, 1),
(197, 'LK', 'Sri Lanka', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2023-10-12 07:48:58', '2023-10-12 07:48:58', 1, 1),
(198, 'SH', 'St. Helena', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2023-10-12 07:48:58', '2023-10-12 07:48:58', 1, 1),
(199, 'PM', 'St. Pierre and Miquelon', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2023-10-12 07:48:58', '2023-10-12 07:48:58', 1, 1),
(200, 'SD', 'Sudan', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2023-10-12 07:48:58', '2023-10-12 07:48:58', 1, 1),
(201, 'SR', 'Suriname', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2023-10-12 07:48:58', '2023-10-12 07:48:58', 1, 1),
(202, 'SJ', 'Svalbard and Jan Mayen Islands', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2023-10-12 07:48:58', '2023-10-12 07:48:58', 1, 1),
(203, 'SZ', 'Swaziland', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2023-10-12 07:48:58', '2023-10-12 07:48:58', 1, 1),
(204, 'SE', 'Sweden', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2023-10-12 07:48:58', '2023-10-12 07:48:58', 1, 1),
(205, 'CH', 'Switzerland', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2023-10-12 07:48:58', '2023-10-12 07:48:58', 1, 1),
(206, 'SY', 'Syrian Arab Republic', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2023-10-12 07:48:58', '2023-10-12 07:48:58', 1, 1),
(207, 'TW', 'Taiwan', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2023-10-12 07:48:58', '2023-10-12 07:48:58', 1, 1),
(208, 'TJ', 'Tajikistan', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2023-10-12 07:48:58', '2023-10-12 07:48:58', 1, 1),
(209, 'TZ', 'Tanzania, United Republic of', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2023-10-12 07:48:58', '2023-10-12 07:48:58', 1, 1),
(210, 'TH', 'Thailand', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2023-10-12 07:48:58', '2023-10-12 07:48:58', 1, 1),
(211, 'TG', 'Togo', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2023-10-12 07:48:58', '2023-10-12 07:48:58', 1, 1),
(212, 'TK', 'Tokelau', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2023-10-12 07:48:58', '2023-10-12 07:48:58', 1, 1),
(213, 'TO', 'Tonga', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2023-10-12 07:48:58', '2023-10-12 07:48:58', 1, 1),
(214, 'TT', 'Trinidad and Tobago', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2023-10-12 07:48:58', '2023-10-12 07:48:58', 1, 1),
(215, 'TN', 'Tunisia', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2023-10-12 07:48:58', '2023-10-12 07:48:58', 1, 1),
(216, 'TR', 'Turkey', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2023-10-12 07:48:58', '2023-10-12 07:48:58', 1, 1),
(217, 'TM', 'Turkmenistan', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2023-10-12 07:48:58', '2023-10-12 07:48:58', 1, 1),
(218, 'TC', 'Turks and Caicos Islands', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2023-10-12 07:48:58', '2023-10-12 07:48:58', 1, 1),
(219, 'TV', 'Tuvalu', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2023-10-12 07:48:58', '2023-10-12 07:48:58', 1, 1),
(220, 'UG', 'Uganda', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2023-10-12 07:48:58', '2023-10-12 07:48:58', 1, 1),
(221, 'UA', 'Ukraine', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2023-10-12 07:48:58', '2023-10-12 07:48:58', 1, 1),
(222, 'AE', 'United Arab Emirates', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2023-10-12 07:48:58', '2023-10-12 07:48:58', 1, 1),
(223, 'GB', 'United Kingdom', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2023-10-12 07:48:58', '2023-10-12 07:48:58', 1, 1),
(224, 'US', 'United States', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2023-10-12 07:48:58', '2023-10-12 07:48:58', 1, 1),
(225, 'UM', 'United States minor outlying islands', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2023-10-12 07:48:58', '2023-10-12 07:48:58', 1, 1),
(226, 'UY', 'Uruguay', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2023-10-12 07:48:58', '2023-10-12 07:48:58', 1, 1),
(227, 'UZ', 'Uzbekistan', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2023-10-12 07:48:58', '2023-10-12 07:48:58', 1, 1),
(228, 'VU', 'Vanuatu', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2023-10-12 07:48:58', '2023-10-12 07:48:58', 1, 1),
(229, 'VA', 'Vatican City State', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2023-10-12 07:48:58', '2023-10-12 07:48:58', 1, 1),
(230, 'VE', 'Venezuela', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2023-10-12 07:48:58', '2023-10-12 07:48:58', 1, 1),
(231, 'VN', 'Vietnam', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2023-10-12 07:48:58', '2023-10-12 07:48:58', 1, 1),
(232, 'VG', 'Virgin Islands (British)', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2023-10-12 07:48:58', '2023-10-12 07:48:58', 1, 1),
(233, 'VI', 'Virgin Islands (U.S.)', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2023-10-12 07:48:58', '2023-10-12 07:48:58', 1, 1),
(234, 'WF', 'Wallis and Futuna Islands', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2023-10-12 07:48:58', '2023-10-12 07:48:58', 1, 1),
(235, 'EH', 'Western Sahara', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2023-10-12 07:48:58', '2023-10-12 07:48:58', 1, 1),
(236, 'YE', 'Yemen', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2023-10-12 07:48:58', '2023-10-12 07:48:58', 1, 1),
(237, 'ZM', 'Zambia', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2023-10-12 07:48:58', '2023-10-12 07:48:58', 1, 1),
(238, 'ZW', 'Zimbabwe', 'Europe/Tirane', NULL, NULL, NULL, NULL, '2023-10-12 07:48:58', '2023-10-12 07:48:58', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `currencies`
--

CREATE TABLE `currencies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `symbol` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `branch_id` bigint(20) UNSIGNED DEFAULT 1,
  `company_id` bigint(20) UNSIGNED DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `currencies`
--

INSERT INTO `currencies` (`id`, `name`, `code`, `symbol`, `created_at`, `updated_at`, `branch_id`, `company_id`) VALUES
(1, 'Leke', 'ALL', 'Lek', '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(2, 'Dollars', 'USD', '$', '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(3, 'Afghanis', 'AFN', '؋', '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(4, 'Pesos', 'ARS', '$', '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(5, 'Guilders', 'AWG', 'ƒ', '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(6, 'Dollars', 'AUD', '$', '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(7, 'New Manats', 'AZN', 'ман', '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(8, 'Dollars', 'BSD', '$', '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(9, 'Dollars', 'BBD', '$', '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(10, 'Rubles', 'BYR', 'p.', '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(11, 'Euro', 'EUR', '€', '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(12, 'Dollars', 'BZD', 'BZ$', '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(13, 'Dollars', 'BMD', '$', '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(14, 'Bolivianos', 'BOB', '$b', '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(15, 'Convertible Marka', 'BAM', 'KM', '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(16, 'Pula', 'BWP', 'P', '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(17, 'Leva', 'BGN', 'лв', '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(18, 'Reais', 'BRL', 'R$', '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(19, 'Pounds', 'GBP', '£', '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(20, 'Dollars', 'BND', '$', '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(21, 'Riels', 'KHR', '៛', '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(22, 'Dollars', 'CAD', '$', '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(23, 'Dollars', 'KYD', '$', '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(24, 'Pesos', 'CLP', '$', '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(25, 'Yuan Renminbi', 'CNY', '¥', '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(26, 'Pesos', 'COP', '$', '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(27, 'Colón', 'CRC', '₡', '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(28, 'Kuna', 'HRK', 'kn', '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(29, 'Pesos', 'CUP', '₱', '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(30, 'Koruny', 'CZK', 'Kč', '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(31, 'Kroner', 'DKK', 'kr', '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(32, 'Pesos', 'DOP ', 'RD$', '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(33, 'Dollars', 'XCD', '$', '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(34, 'Pounds', 'EGP', '£', '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(35, 'Colones', 'SVC', '$', '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(36, 'Pounds', 'FKP', '£', '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(37, 'Dollars', 'FJD', '$', '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(38, 'Cedis', 'GHC', '¢', '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(39, 'Pounds', 'GIP', '£', '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(40, 'Quetzales', 'GTQ', 'Q', '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(41, 'Pounds', 'GGP', '£', '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(42, 'Dollars', 'GYD', '$', '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(43, 'Lempiras', 'HNL', 'L', '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(44, 'Dollars', 'HKD', '$', '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(45, 'Forint', 'HUF', 'Ft', '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(46, 'Kronur', 'ISK', 'kr', '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(47, 'Rupees', 'INR', '₹', '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(48, 'Rupiahs', 'IDR', 'Rp', '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(49, 'Rials', 'IRR', '﷼', '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(50, 'Pounds', 'IMP', '£', '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(51, 'New Shekels', 'ILS', '₪', '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(52, 'Dollars', 'JMD', 'J$', '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(53, 'Yen', 'JPY', '¥', '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(54, 'Pounds', 'JEP', '£', '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(55, 'Tenge', 'KZT', 'лв', '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(56, 'Won', 'KPW', '₩', '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(57, 'Won', 'KRW', '₩', '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(58, 'Soms', 'KGS', 'лв', '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(59, 'Kips', 'LAK', '₭', '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(60, 'Lati', 'LVL', 'Ls', '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(61, 'Pounds', 'LBP', '£', '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(62, 'Dollars', 'LRD', '$', '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(63, 'Switzerland Francs', 'CHF', 'CHF', '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(64, 'Litai', 'LTL', 'Lt', '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(65, 'Denars', 'MKD', 'ден', '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(66, 'Ringgits', 'MYR', 'RM', '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(67, 'Rupees', 'MUR', '₨', '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(68, 'Pesos', 'MXN', '$', '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(69, 'Tugriks', 'MNT', '₮', '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(70, 'Meticais', 'MZN', 'MT', '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(71, 'Dollars', 'NAD', '$', '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(72, 'Rupees', 'NPR', '₨', '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(73, 'Guilders', 'ANG', 'ƒ', '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(74, 'Dollars', 'NZD', '$', '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(75, 'Cordobas', 'NIO', 'C$', '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(76, 'Nairas', 'NGN', '₦', '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(77, 'Krone', 'NOK', 'kr', '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(78, 'Rials', 'OMR', '﷼', '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(79, 'Rupees', 'PKR', '₨', '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(80, 'Balboa', 'PAB', 'B/.', '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(81, 'Guarani', 'PYG', 'Gs', '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(82, 'Nuevos Soles', 'PEN', 'S/.', '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(83, 'Pesos', 'PHP', 'Php', '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(84, 'Zlotych', 'PLN', 'zł', '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(85, 'Rials', 'QAR', '﷼', '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(86, 'New Lei', 'RON', 'lei', '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(87, 'Rubles', 'RUB', 'руб', '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(88, 'Pounds', 'SHP', '£', '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(89, 'Riyals', 'SAR', '﷼', '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(90, 'Dinars', 'RSD', 'Дин.', '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(91, 'Rupees', 'SCR', '₨', '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(92, 'Dollars', 'SGD', '$', '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(93, 'Dollars', 'SBD', '$', '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(94, 'Shillings', 'SOS', 'S', '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(95, 'Rand', 'ZAR', 'R', '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(96, 'Rupees', 'LKR', '₨', '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(97, 'Kronor', 'SEK', 'kr', '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(98, 'Dollars', 'SRD', '$', '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(99, 'Pounds', 'SYP', '£', '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(100, 'New Dollars', 'TWD', 'NT$', '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(101, 'Baht', 'THB', '฿', '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(102, 'Dollars', 'TTD', 'TT$', '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(103, 'Lira', 'TRY', 'TL', '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(104, 'Liras', 'TRL', '£', '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(105, 'Dollars', 'TVD', '$', '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(106, 'Hryvnia', 'UAH', '₴', '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(107, 'Pesos', 'UYU', '$U', '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(108, 'Sums', 'UZS', 'лв', '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(109, 'Bolivares Fuertes', 'VEF', 'Bs', '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(110, 'Dong', 'VND', '₫', '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(111, 'Rials', 'YER', '﷼', '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(112, 'Taka', 'BDT', '৳', '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(113, 'Zimbabwe Dollars', 'ZWD', 'Z$', '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(114, 'Kenya', 'KES', 'KSh', '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(115, 'Nigeria', 'naira', '₦', '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(116, 'Ghana', 'GHS', 'GH₵', '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(117, 'Ethiopian', 'ETB', 'Br', '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(118, 'Tanzania', 'TZS', 'TSh', '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(119, 'Uganda', 'UGX', 'USh', '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(120, 'Rwandan', 'FRW', 'FRw', '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(121, 'UAE Dirham', 'AED', 'د.إ', '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `daily_leaves`
--

CREATE TABLE `daily_leaves` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `company_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `approved_by_tl` bigint(20) UNSIGNED DEFAULT NULL,
  `approved_at_tl` timestamp NULL DEFAULT NULL,
  `approved_by_hr` bigint(20) UNSIGNED DEFAULT NULL,
  `approved_at_hr` timestamp NULL DEFAULT NULL,
  `rejected_by_tl` bigint(20) UNSIGNED DEFAULT NULL,
  `rejected_at_tl` timestamp NULL DEFAULT NULL,
  `rejected_by_hr` bigint(20) UNSIGNED DEFAULT NULL,
  `rejected_at_hr` timestamp NULL DEFAULT NULL,
  `leave_type` enum('early_leave','late_arrive') DEFAULT NULL,
  `date` date DEFAULT NULL,
  `time` time DEFAULT NULL,
  `reason` text DEFAULT NULL,
  `status_id` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `branch_id` bigint(20) UNSIGNED DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `database_backups`
--

CREATE TABLE `database_backups` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `path` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `branch_id` bigint(20) UNSIGNED DEFAULT 1,
  `company_id` bigint(20) UNSIGNED DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `date_formats`
--

CREATE TABLE `date_formats` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `format` varchar(255) DEFAULT NULL,
  `normal_view` varchar(255) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_by` int(11) DEFAULT 1,
  `updated_by` int(11) DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `branch_id` bigint(20) UNSIGNED DEFAULT 1,
  `company_id` bigint(20) UNSIGNED DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `date_formats`
--

INSERT INTO `date_formats` (`id`, `format`, `normal_view`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`, `branch_id`, `company_id`) VALUES
(1, 'jS M, Y', '17th May, 2019', 1, 1, 1, '2023-10-11 19:48:28', '2023-10-12 07:48:28', 1, 1),
(2, 'Y-m-d', '2019-05-17', 1, 1, 1, '2023-10-11 19:48:28', '2023-10-12 07:48:28', 1, 1),
(3, 'Y-d-m', '2019-17-05', 1, 1, 1, '2023-10-11 19:48:28', '2023-10-12 07:48:28', 1, 1),
(4, 'd-m-Y', '17-05-2019', 1, 1, 1, '2023-10-11 19:48:28', '2023-10-12 07:48:28', 1, 1),
(5, 'm-d-Y', '05-17-2019', 1, 1, 1, '2023-10-11 19:48:28', '2023-10-12 07:48:28', 1, 1),
(6, 'Y/m/d', '2019/05/17', 1, 1, 1, '2023-10-11 19:48:28', '2023-10-12 07:48:28', 1, 1),
(7, 'Y/d/m', '2019/17/05', 1, 1, 1, '2023-10-11 19:48:28', '2023-10-12 07:48:28', 1, 1),
(8, 'd/m/Y', '17/05/2019', 1, 1, 1, '2023-10-11 19:48:28', '2023-10-12 07:48:28', 1, 1),
(9, 'm/d/Y', '05/17/2019', 1, 1, 1, '2023-10-11 19:48:28', '2023-10-12 07:48:28', 1, 1),
(10, 'l jS \\of F Y', 'Monday 17th of May 2019', 1, 1, 1, '2023-10-11 19:48:28', '2023-10-12 07:48:28', 1, 1),
(11, 'jS \\of F Y', '17th of May 2019', 1, 1, 1, '2023-10-11 19:48:28', '2023-10-12 07:48:28', 1, 1),
(12, 'g:ia \\o\\n l jS F Y', '12:00am on Monday 17th May 2019', 1, 1, 1, '2023-10-11 19:48:28', '2023-10-12 07:48:28', 1, 1),
(13, 'F j, Y, g:i a', 'May 7, 2019, 6:20 pm', 1, 1, 1, '2023-10-11 19:48:28', '2023-10-12 07:48:28', 1, 1),
(14, 'F j, Y', 'May 17, 2019', 1, 1, 1, '2023-10-11 19:48:28', '2023-10-12 07:48:28', 1, 1),
(15, '\\i\\t \\i\\s \\t\\h\\e jS \\d\\a\\y', 'it is the 17th day', 1, 1, 1, '2023-10-11 19:48:28', '2023-10-12 07:48:28', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `company_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `status_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `branch_id` bigint(20) UNSIGNED DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`id`, `company_id`, `title`, `status_id`, `created_at`, `updated_at`, `deleted_at`, `branch_id`) VALUES
(1, 1, 'Management', 1, NULL, NULL, NULL, 1),
(2, 1, 'IT', 1, NULL, NULL, NULL, 1),
(3, 1, 'Sales', 1, NULL, NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `deposits`
--

CREATE TABLE `deposits` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `income_expense_category_id` bigint(20) UNSIGNED NOT NULL,
  `company_id` bigint(20) UNSIGNED NOT NULL,
  `date` date NOT NULL,
  `amount` double(16,2) DEFAULT NULL,
  `request_amount` double(16,2) NOT NULL DEFAULT 0.00,
  `ref` varchar(200) DEFAULT NULL,
  `payment_method_id` bigint(20) UNSIGNED DEFAULT NULL,
  `transaction_id` bigint(20) UNSIGNED DEFAULT NULL,
  `pay` bigint(20) UNSIGNED NOT NULL DEFAULT 9,
  `status_id` bigint(20) UNSIGNED NOT NULL DEFAULT 2,
  `approver_id` bigint(20) UNSIGNED DEFAULT NULL,
  `remarks` text DEFAULT NULL,
  `created_by` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `updated_by` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `attachment` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `branch_id` bigint(20) UNSIGNED DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `designations`
--

CREATE TABLE `designations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `company_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(100) NOT NULL,
  `status_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `branch_id` bigint(20) UNSIGNED DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `designations`
--

INSERT INTO `designations` (`id`, `company_id`, `title`, `status_id`, `created_at`, `updated_at`, `deleted_at`, `branch_id`) VALUES
(1, 1, 'Admin', 1, NULL, NULL, NULL, 1),
(2, 1, 'HR', 1, NULL, NULL, NULL, 1),
(3, 1, 'Staff', 1, NULL, NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `discussions`
--

CREATE TABLE `discussions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `company_id` bigint(20) UNSIGNED NOT NULL,
  `subject` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `project_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `show_to_customer` bigint(20) UNSIGNED NOT NULL DEFAULT 22,
  `status_id` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `last_activity` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `branch_id` bigint(20) UNSIGNED DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `discussions`
--

INSERT INTO `discussions` (`id`, `company_id`, `subject`, `description`, `project_id`, `user_id`, `show_to_customer`, `status_id`, `last_activity`, `created_at`, `updated_at`, `branch_id`) VALUES
(1, 2, 'Discussion 1', '<strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 1, 4, 33, 1, '2023-10-12 07:48:59', '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1);

-- --------------------------------------------------------

--
-- Table structure for table `discussion_comments`
--

CREATE TABLE `discussion_comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED DEFAULT NULL,
  `company_id` bigint(20) UNSIGNED NOT NULL,
  `description` longtext NOT NULL,
  `show_to_customer` tinyint(4) NOT NULL DEFAULT 1 COMMENT '0=no,1=yes',
  `discussion_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `attachment` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `branch_id` bigint(20) UNSIGNED DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `discussion_comments`
--

INSERT INTO `discussion_comments` (`id`, `comment_id`, `company_id`, `description`, `show_to_customer`, `discussion_id`, `user_id`, `attachment`, `created_at`, `updated_at`, `branch_id`) VALUES
(1, NULL, 2, '<strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 33, 1, 4, NULL, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1),
(2, 1, 2, '<strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 33, 1, 3, NULL, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1);

-- --------------------------------------------------------

--
-- Table structure for table `discussion_likes`
--

CREATE TABLE `discussion_likes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `discussion_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `like` int(11) DEFAULT 0,
  `dislike` int(11) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `branch_id` bigint(20) UNSIGNED DEFAULT 1,
  `company_id` bigint(20) UNSIGNED DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `domains`
--

CREATE TABLE `domains` (
  `id` int(10) UNSIGNED NOT NULL,
  `domain` varchar(255) NOT NULL,
  `tenant_id` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `branch_id` bigint(20) UNSIGNED DEFAULT 1,
  `company_id` bigint(20) UNSIGNED DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `duty_schedules`
--

CREATE TABLE `duty_schedules` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `company_id` bigint(20) UNSIGNED NOT NULL,
  `shift_id` bigint(20) UNSIGNED NOT NULL,
  `start_time` time DEFAULT NULL,
  `end_time` time DEFAULT NULL,
  `consider_time` varchar(255) DEFAULT '0',
  `hour` int(11) NOT NULL DEFAULT 0,
  `status_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `end_on_same_date` tinyint(1) NOT NULL DEFAULT 1,
  `branch_id` bigint(20) UNSIGNED DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `duty_schedules`
--

INSERT INTO `duty_schedules` (`id`, `company_id`, `shift_id`, `start_time`, `end_time`, `consider_time`, `hour`, `status_id`, `created_at`, `updated_at`, `end_on_same_date`, `branch_id`) VALUES
(1, 1, 1, '09:00:00', '17:00:00', '15', 8, 1, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1, 1),
(2, 1, 1, '09:00:00', '18:00:00', '30', 8, 1, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `employee_breaks`
--

CREATE TABLE `employee_breaks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `company_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `date` date NOT NULL,
  `break_time` time DEFAULT NULL,
  `back_time` time DEFAULT NULL,
  `reason` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `branch_id` bigint(20) UNSIGNED DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `employee_tasks`
--

CREATE TABLE `employee_tasks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `assigned_id` bigint(20) UNSIGNED NOT NULL,
  `created_by` bigint(20) UNSIGNED NOT NULL,
  `due_date` date DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `attachment_file_id` bigint(20) UNSIGNED DEFAULT NULL,
  `status_id` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `branch_id` bigint(20) UNSIGNED DEFAULT 1,
  `company_id` bigint(20) UNSIGNED DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `employee_tasks`
--

INSERT INTO `employee_tasks` (`id`, `assigned_id`, `created_by`, `due_date`, `title`, `description`, `attachment_file_id`, `status_id`, `created_at`, `updated_at`, `branch_id`, `company_id`) VALUES
(1, 1, 1, '2023-10-15', 'Aliquam sint cumque harum beatae.', 'Tenetur ut aut rem omnis. At inventore et nisi quibusdam eos tempore dolor. Consequuntur architecto autem voluptate magni impedit ipsum.', NULL, 1, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `expenses`
--

CREATE TABLE `expenses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `income_expense_category_id` bigint(20) UNSIGNED NOT NULL,
  `company_id` bigint(20) UNSIGNED NOT NULL,
  `date` date NOT NULL,
  `amount` double(16,2) DEFAULT NULL,
  `request_amount` double(16,2) NOT NULL DEFAULT 0.00,
  `pay` bigint(20) UNSIGNED NOT NULL DEFAULT 9,
  `status_id` bigint(20) UNSIGNED NOT NULL DEFAULT 2,
  `ref` varchar(200) DEFAULT NULL,
  `transaction_id` bigint(20) UNSIGNED DEFAULT NULL,
  `payment_method_id` bigint(20) UNSIGNED DEFAULT NULL,
  `approver_id` bigint(20) UNSIGNED DEFAULT NULL,
  `remarks` text DEFAULT NULL,
  `created_by` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `updated_by` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `attachment` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `branch_id` bigint(20) UNSIGNED DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `expense_claims`
--

CREATE TABLE `expense_claims` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `company_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `invoice_number` varchar(191) DEFAULT NULL COMMENT 'invoice number',
  `claim_date` date DEFAULT NULL COMMENT 'date of claim',
  `remarks` varchar(191) DEFAULT NULL COMMENT 'remarks of payment',
  `payable_amount` double(10,2) DEFAULT NULL COMMENT 'amount of payment',
  `due_amount` double(10,2) DEFAULT NULL COMMENT 'due amount of payment',
  `attachment_file_id` bigint(20) UNSIGNED DEFAULT NULL,
  `status_id` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `branch_id` bigint(20) UNSIGNED DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `expense_claim_details`
--

CREATE TABLE `expense_claim_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `company_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `hrm_expense_id` bigint(20) UNSIGNED NOT NULL,
  `expense_claim_id` bigint(20) UNSIGNED NOT NULL,
  `amount` double(15,2) NOT NULL DEFAULT 0.00,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `branch_id` bigint(20) UNSIGNED DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `expire_notifications`
--

CREATE TABLE `expire_notifications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `receiver_id` bigint(20) UNSIGNED NOT NULL COMMENT 'it will come from user table',
  `employee_id` bigint(20) UNSIGNED NOT NULL COMMENT 'it will come from user table',
  `branch_id` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `company_id` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `title` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `is_read` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `branch_id` bigint(20) UNSIGNED DEFAULT 1,
  `company_id` bigint(20) UNSIGNED DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `features`
--

CREATE TABLE `features` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `type` enum('company_growth','advance_features','awesome_features') DEFAULT NULL,
  `attachment_file_id` bigint(20) UNSIGNED DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `short_description` varchar(255) DEFAULT NULL,
  `long_description` longtext DEFAULT NULL,
  `status_id` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `branch_id` bigint(20) UNSIGNED DEFAULT 1,
  `company_id` bigint(20) UNSIGNED DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `features`
--

INSERT INTO `features` (`id`, `type`, `attachment_file_id`, `title`, `short_description`, `long_description`, `status_id`, `created_at`, `updated_at`, `branch_id`, `company_id`) VALUES
(1, 'company_growth', NULL, 'Employee-Centric', 'Make the lives of your employees less problematic. Try to create an atmosphere where your employees feel like giving their best every day. You can only expect more work efficiency if you are able to keep your employees happier.', 'Make the lives of your employees less problematic. Try to create an atmosphere where your employees feel like giving their best every day. You can only expect more work efficiency if you are able to keep your employees happier.', 1, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1, 1),
(2, 'company_growth', NULL, 'Development-Centric', 'To meet your business demands, it is very crucial to meet current and future growth requirements. For fulfilling them, employees’ development is a must. Through your agile strategies and planning it out beforehand can be helpful to reach your goals.', 'To meet your business demands, it is very crucial to meet current and future growth requirements. For fulfilling them, employees’ development is a must. Through your agile strategies and planning it out beforehand can be helpful to reach your goals.', 1, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1, 1),
(3, 'company_growth', NULL, 'Individual Progress', 'Having the ability to develop individual relationships with the employees can be beneficial for any company. You can easily get to know their general behavior, social aspects of life, emotional well- being and act upon it to improve employee experience.', 'Having the ability to develop individual relationships with the employees can be beneficial for any company. You can easily get to know their general behavior, social aspects of life, emotional well- being and act upon it to improve employee experience.', 1, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1, 1),
(4, 'company_growth', NULL, 'Decision Making', 'It is very essential to know how to use data rather than just collecting them. Crunching data after getting helpful information can make an impact on decision-making. Easily dive into future possibilities, also analyze potential outcomes beforehand.', 'It is very essential to know how to use data rather than just collecting them. Crunching data after getting helpful information can make an impact on decision-making. Easily dive into future possibilities, also analyze potential outcomes beforehand.', 1, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1, 1),
(5, 'company_growth', NULL, 'Continuity', 'It may occur to anybody, even the HR management people can get sick. Keeping constant workflow and overcome such disruptions, it is vital to get notified earlier or get to know employees’ health condition, effectiveness, feelings towards their job.', 'It may occur to anybody, even the HR management people can get sick. Keeping constant workflow and overcome such disruptions, it is vital to get notified earlier or get to know employees’ health condition, effectiveness, feelings towards their job.', 1, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1, 1),
(6, 'company_growth', NULL, 'Universal', 'Universality is the most vital feature for HRM software. It really doesn’t matter if you are running only a two-person job or a company of 500+ employees, this software is applicable for any. It is truly reliable for any type of organization.', 'Universality is the most vital feature for HRM software. It really doesn’t matter if you are running only a two-person job or a company of 500+ employees, this software is applicable for any. It is truly reliable for any type of organization.', 1, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1, 1),
(7, 'advance_features', NULL, 'Leave', 'Employees can express their Leave Type, Find Assigned Leaves and get Leave Request approval. They can also submit necessary documents to ensure the validity of their leave.', 'Employees can express their Leave Type, Find Assigned Leaves and get Leave Request approval. They can also submit necessary documents to ensure the validity of their leave.', 1, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1, 1),
(8, 'advance_features', NULL, 'Attendance', 'Records employees’ In /Out time, Working hours, Overtime automatically in its system. Whether they are working from home or office, their activities can be easily traceable to authority.', 'Records employees’ In /Out time, Working hours, Overtime automatically in its system. Whether they are working from home or office, their activities can be easily traceable to authority.', 1, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1, 1),
(9, 'advance_features', NULL, 'Expense', 'For any additional expenses, managing legal claims or keeping track on payment history can be easily done in few clicks. You can also Keep an updated routine for any additional disbursement.', 'For any additional expenses, managing legal claims or keeping track on payment history can be easily done in few clicks. You can also Keep an updated routine for any additional disbursement.', 1, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1, 1),
(10, 'advance_features', NULL, 'Visit', 'For outdoor visits or participating in crucial meetings, employees can input their check in/out timings too. Also such visits can be monitored by the officials anytime of the day.', 'For outdoor visits or participating in crucial meetings, employees can input their check in/out timings too. Also such visits can be monitored by the officials anytime of the day.', 1, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1, 1),
(11, 'advance_features', NULL, 'Notice', 'Let everyone aware of any upcoming events, disciplinary, holidays at once. You can also update any notice for individuals, departmental wise or even for all without any effort.', 'Let everyone aware of any upcoming events, disciplinary, holidays at once. You can also update any notice for individuals, departmental wise or even for all without any effort.', 1, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1, 1),
(12, 'advance_features', NULL, 'Report', 'Collects data of individuals -Working days/On time/Late Comings/Early Leave/Overtime and creates monthly/half-yearly, annual report based on their regular performance.', 'Collects data of individuals -Working days/On time/Late Comings/Early Leave/Overtime and creates monthly/half-yearly, annual report based on their regular performance.', 1, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1, 1),
(13, 'awesome_features', NULL, 'Employee Data', 'Records everything that indicates all necessary information for any of the employees.', 'Records everything that indicates all necessary information for any of the employees.', 1, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1, 1),
(14, 'awesome_features', NULL, 'Custom Permission', 'Provide accessibility to the designated personnel for further analysis of any individual.', 'Provide accessibility to the designated personnel for further analysis of any individual.', 1, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1, 1),
(15, 'awesome_features', NULL, 'Employee Onboarding', 'Onboard employees online and make a remarkable first impression during the process.', 'Onboard employees online and make a remarkable first impression during the process.', 1, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1, 1),
(16, 'awesome_features', NULL, 'Announcement', 'Celebrate special moments with everyone in the company with a few words.', 'Celebrate special moments with everyone in the company with a few words.', 1, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1, 1),
(17, 'awesome_features', NULL, 'Custom Profile', 'You can also get to customize your own profile as you may seem right for the company.', 'You can also get to customize your own profile as you may seem right for the company.', 1, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1, 1),
(18, 'awesome_features', NULL, 'Project & Tasks', 'Allows transparent access to overview employee’s assigned tasks for daily reports.', 'Allows transparent access to overview employee’s assigned tasks for daily reports.', 1, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `front_teams`
--

CREATE TABLE `front_teams` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `designation` varchar(255) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `attachment` bigint(20) UNSIGNED DEFAULT NULL,
  `fb_url` varchar(255) DEFAULT NULL,
  `tw_url` varchar(255) DEFAULT NULL,
  `ln_url` varchar(255) DEFAULT NULL,
  `sky_url` varchar(255) DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `status_id` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `branch_id` bigint(20) UNSIGNED DEFAULT 1,
  `company_id` bigint(20) UNSIGNED DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `goals`
--

CREATE TABLE `goals` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `company_id` bigint(20) UNSIGNED NOT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `target` varchar(255) DEFAULT NULL,
  `goal_type_id` bigint(20) UNSIGNED DEFAULT NULL,
  `progress` int(11) DEFAULT 0,
  `status_id` bigint(20) UNSIGNED NOT NULL DEFAULT 24,
  `description` longtext DEFAULT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `rating` int(11) DEFAULT 0,
  `created_by` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `branch_id` bigint(20) UNSIGNED DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `goals`
--

INSERT INTO `goals` (`id`, `company_id`, `subject`, `target`, `goal_type_id`, `progress`, `status_id`, `description`, `start_date`, `end_date`, `rating`, `created_by`, `created_at`, `updated_at`, `branch_id`) VALUES
(1, 1, 'Employee Experience', 'Employee Experience', 1, 1, 24, 'demo description', '2023-10-12', '2024-10-12', 0, 2, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1);

-- --------------------------------------------------------

--
-- Table structure for table `goal_types`
--

CREATE TABLE `goal_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `company_id` bigint(20) UNSIGNED NOT NULL,
  `status_id` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `created_by` bigint(20) UNSIGNED DEFAULT 1,
  `updated_by` bigint(20) UNSIGNED DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `branch_id` bigint(20) UNSIGNED DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `goal_types`
--

INSERT INTO `goal_types` (`id`, `name`, `company_id`, `status_id`, `created_by`, `updated_by`, `created_at`, `updated_at`, `branch_id`) VALUES
(1, 'Employee Experience', 2, 1, 1, 1, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1),
(2, 'Objective', 2, 1, 1, 1, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1),
(3, 'Target', 2, 1, 1, 1, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1),
(4, 'KPI', 2, 1, 1, 1, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1),
(5, 'Measure', 2, 1, 1, 1, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1),
(6, 'Indicator', 2, 1, 1, 1, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1);

-- --------------------------------------------------------

--
-- Table structure for table `holidays`
--

CREATE TABLE `holidays` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `company_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `type` varchar(191) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `attachment_id` bigint(20) UNSIGNED DEFAULT NULL,
  `status_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `branch_id` bigint(20) UNSIGNED DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `holidays`
--

INSERT INTO `holidays` (`id`, `company_id`, `title`, `type`, `description`, `start_date`, `end_date`, `attachment_id`, `status_id`, `created_at`, `updated_at`, `branch_id`) VALUES
(1, 1, 'New Year', 'Federal Holiday', '', '2023-01-01', '2023-01-01', NULL, 1, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1),
(2, 1, 'Martin Luther King Jr Day', 'Federal Holiday', '3rd Monday in January', '2023-01-17', '2023-01-17', NULL, 1, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1),
(3, 1, 'Washington\'s Birthday', 'Federal Holiday', '3rd Monday in February', '2023-02-21', '2023-02-21', NULL, 1, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1),
(4, 1, 'Memorial Day', 'Federal Holiday', 'Last Monday in May', '2023-05-26', '2023-05-26', NULL, 1, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1),
(5, 1, 'Independence Day', 'Federal Holiday', '', '2023-07-04', '2023-07-04', NULL, 1, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1),
(6, 1, 'Labor Day', 'Federal Holiday', '1st Monday in September', '2023-09-01', '2023-09-01', NULL, 1, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1),
(7, 1, 'Columbus Day', 'Federal Holiday', '2nd Monday in October', '2023-10-13', '2023-10-13', NULL, 1, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1),
(8, 1, 'Veterans Day', 'Federal Holiday', '11th November', '2023-11-11', '2023-11-11', NULL, 1, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1),
(9, 1, 'Thanksgiving Day', 'Federal Holiday', '4th Thursday in November', '2023-11-24', '2023-11-24', NULL, 1, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1),
(10, 1, 'Christmas Day', 'Federal Holiday', '', '2023-12-25', '2023-12-25', NULL, 1, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1),
(11, 1, '21 February - Language Day', NULL, '21 February - Language Day', '2022-02-21', '2022-02-21', NULL, 1, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1),
(12, 1, '1st May - Labour Day', NULL, '1st May - Labour Day', '2022-05-01', '2022-05-01', NULL, 1, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1),
(13, 1, '9th May - Independence Day', NULL, '9th May - Independence Day', '2022-05-09', '2022-05-09', NULL, 1, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1),
(14, 1, '15th August - Nation Day', NULL, '15th August - Nation Day', '2022-08-15', '2022-08-15', NULL, 1, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1),
(15, 1, '25th December - Christmas Day', NULL, '25th December - Christmas Day', '2022-12-25', '2022-12-25', NULL, 1, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1),
(16, 1, '26th December - Boxing Day', NULL, '26th December - Boxing Day', '2022-12-26', '2022-12-26', NULL, 1, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1);

-- --------------------------------------------------------

--
-- Table structure for table `home_pages`
--

CREATE TABLE `home_pages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `contents` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`contents`)),
  `status_id` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `created_by` bigint(20) UNSIGNED NOT NULL,
  `updated_by` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `branch_id` bigint(20) UNSIGNED DEFAULT 1,
  `company_id` bigint(20) UNSIGNED DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `hrm_expenses`
--

CREATE TABLE `hrm_expenses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `company_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `income_expense_category_id` bigint(20) UNSIGNED NOT NULL,
  `date` date DEFAULT NULL COMMENT 'date of expense',
  `remarks` varchar(191) DEFAULT NULL COMMENT 'remarks of expense',
  `amount` double(10,2) DEFAULT NULL COMMENT 'amount of expense',
  `attachment_file_id` bigint(20) UNSIGNED DEFAULT NULL,
  `status_id` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `is_claimed_status_id` bigint(20) UNSIGNED NOT NULL,
  `claimed_approved_status_id` bigint(20) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `branch_id` bigint(20) UNSIGNED DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `hrm_expenses`
--

INSERT INTO `hrm_expenses` (`id`, `company_id`, `user_id`, `income_expense_category_id`, `date`, `remarks`, `amount`, `attachment_file_id`, `status_id`, `is_claimed_status_id`, `claimed_approved_status_id`, `deleted_at`, `created_at`, `updated_at`, `branch_id`) VALUES
(1, 1, 1, 1, '2023-10-12', 'remarks', 159.00, NULL, 1, 11, 9, NULL, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1),
(2, 1, 1, 2, '2023-10-12', 'remarks', 159.00, NULL, 1, 11, 9, NULL, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1),
(3, 1, 1, 3, '2023-10-12', 'remarks', 151.00, NULL, 1, 11, 9, NULL, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1),
(4, 1, 1, 4, '2023-10-12', 'remarks', 174.00, NULL, 1, 11, 9, NULL, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1),
(5, 1, 1, 5, '2023-10-12', 'remarks', 178.00, NULL, 1, 11, 9, NULL, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1),
(6, 1, 1, 6, '2023-10-12', 'remarks', 105.00, NULL, 1, 11, 9, NULL, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1),
(7, 1, 1, 7, '2023-10-12', 'remarks', 104.00, NULL, 1, 11, 9, NULL, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1),
(8, 1, 1, 8, '2023-10-12', 'remarks', 170.00, NULL, 1, 11, 9, NULL, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1),
(9, 1, 1, 9, '2023-10-12', 'remarks', 123.00, NULL, 1, 11, 9, NULL, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1),
(10, 1, 1, 10, '2023-10-12', 'remarks', 126.00, NULL, 1, 11, 9, NULL, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1),
(11, 1, 1, 11, '2023-10-12', 'remarks', 131.00, NULL, 1, 11, 9, NULL, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1),
(12, 1, 1, 12, '2023-10-12', 'remarks', 128.00, NULL, 1, 11, 9, NULL, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1),
(13, 1, 1, 13, '2023-10-12', 'remarks', 102.00, NULL, 1, 11, 9, NULL, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1),
(14, 1, 1, 14, '2023-10-12', 'remarks', 162.00, NULL, 1, 11, 9, NULL, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1),
(15, 1, 1, 15, '2023-10-12', 'remarks', 172.00, NULL, 1, 11, 9, NULL, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1),
(16, 1, 1, 16, '2023-10-12', 'remarks', 130.00, NULL, 1, 11, 9, NULL, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1),
(17, 1, 1, 17, '2023-10-12', 'remarks', 133.00, NULL, 1, 11, 9, NULL, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1),
(18, 1, 1, 18, '2023-10-12', 'remarks', 171.00, NULL, 1, 11, 9, NULL, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1),
(19, 1, 1, 19, '2023-10-12', 'remarks', 188.00, NULL, 1, 11, 9, NULL, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1),
(20, 1, 1, 20, '2023-10-12', 'remarks', 154.00, NULL, 1, 11, 9, NULL, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1),
(21, 1, 1, 21, '2023-10-12', 'remarks', 194.00, NULL, 1, 11, 9, NULL, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1),
(22, 1, 1, 22, '2023-10-12', 'remarks', 106.00, NULL, 1, 11, 9, NULL, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1),
(23, 1, 1, 23, '2023-10-12', 'remarks', 173.00, NULL, 1, 11, 9, NULL, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1),
(24, 1, 1, 24, '2023-10-12', 'remarks', 127.00, NULL, 1, 11, 9, NULL, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1),
(25, 1, 1, 1, '2023-10-12', 'remarks', 123.00, NULL, 1, 11, 9, NULL, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1),
(26, 1, 1, 2, '2023-10-12', 'remarks', 133.00, NULL, 1, 11, 9, NULL, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1),
(27, 1, 1, 3, '2023-10-12', 'remarks', 195.00, NULL, 1, 11, 9, NULL, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1),
(28, 1, 1, 4, '2023-10-12', 'remarks', 157.00, NULL, 1, 11, 9, NULL, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1),
(29, 1, 1, 5, '2023-10-12', 'remarks', 115.00, NULL, 1, 11, 9, NULL, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1),
(30, 1, 1, 6, '2023-10-12', 'remarks', 189.00, NULL, 1, 11, 9, NULL, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1),
(31, 1, 1, 7, '2023-10-12', 'remarks', 195.00, NULL, 1, 11, 9, NULL, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1),
(32, 1, 1, 8, '2023-10-12', 'remarks', 171.00, NULL, 1, 11, 9, NULL, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1),
(33, 1, 1, 9, '2023-10-12', 'remarks', 143.00, NULL, 1, 11, 9, NULL, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1),
(34, 1, 1, 10, '2023-10-12', 'remarks', 127.00, NULL, 1, 11, 9, NULL, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1),
(35, 1, 1, 11, '2023-10-12', 'remarks', 194.00, NULL, 1, 11, 9, NULL, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1),
(36, 1, 1, 12, '2023-10-12', 'remarks', 189.00, NULL, 1, 11, 9, NULL, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1),
(37, 1, 1, 13, '2023-10-12', 'remarks', 159.00, NULL, 1, 11, 9, NULL, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1),
(38, 1, 1, 14, '2023-10-12', 'remarks', 189.00, NULL, 1, 11, 9, NULL, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1),
(39, 1, 1, 15, '2023-10-12', 'remarks', 156.00, NULL, 1, 11, 9, NULL, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1),
(40, 1, 1, 16, '2023-10-12', 'remarks', 179.00, NULL, 1, 11, 9, NULL, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1),
(41, 1, 1, 17, '2023-10-12', 'remarks', 130.00, NULL, 1, 11, 9, NULL, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1),
(42, 1, 1, 18, '2023-10-12', 'remarks', 164.00, NULL, 1, 11, 9, NULL, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1),
(43, 1, 1, 19, '2023-10-12', 'remarks', 185.00, NULL, 1, 11, 9, NULL, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1),
(44, 1, 1, 20, '2023-10-12', 'remarks', 126.00, NULL, 1, 11, 9, NULL, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1),
(45, 1, 1, 21, '2023-10-12', 'remarks', 121.00, NULL, 1, 11, 9, NULL, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1),
(46, 1, 1, 22, '2023-10-12', 'remarks', 112.00, NULL, 1, 11, 9, NULL, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1),
(47, 1, 1, 23, '2023-10-12', 'remarks', 117.00, NULL, 1, 11, 9, NULL, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1),
(48, 1, 1, 24, '2023-10-12', 'remarks', 111.00, NULL, 1, 11, 9, NULL, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1),
(49, 1, 1, 25, '2023-10-12', 'remarks', 192.00, NULL, 1, 11, 9, NULL, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1),
(50, 1, 1, 26, '2023-10-12', 'remarks', 193.00, NULL, 1, 11, 9, NULL, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1),
(51, 1, 1, 27, '2023-10-12', 'remarks', 198.00, NULL, 1, 11, 9, NULL, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1),
(52, 1, 1, 28, '2023-10-12', 'remarks', 152.00, NULL, 1, 11, 9, NULL, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1),
(53, 1, 1, 29, '2023-10-12', 'remarks', 198.00, NULL, 1, 11, 9, NULL, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1),
(54, 1, 1, 30, '2023-10-12', 'remarks', 169.00, NULL, 1, 11, 9, NULL, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1),
(55, 1, 1, 31, '2023-10-12', 'remarks', 160.00, NULL, 1, 11, 9, NULL, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1),
(56, 1, 1, 32, '2023-10-12', 'remarks', 130.00, NULL, 1, 11, 9, NULL, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1),
(57, 1, 1, 33, '2023-10-12', 'remarks', 139.00, NULL, 1, 11, 9, NULL, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1),
(58, 1, 1, 34, '2023-10-12', 'remarks', 126.00, NULL, 1, 11, 9, NULL, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1),
(59, 1, 1, 35, '2023-10-12', 'remarks', 140.00, NULL, 1, 11, 9, NULL, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1),
(60, 1, 1, 36, '2023-10-12', 'remarks', 193.00, NULL, 1, 11, 9, NULL, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1),
(61, 1, 1, 37, '2023-10-12', 'remarks', 113.00, NULL, 1, 11, 9, NULL, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1),
(62, 1, 1, 38, '2023-10-12', 'remarks', 118.00, NULL, 1, 11, 9, NULL, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1),
(63, 1, 1, 39, '2023-10-12', 'remarks', 184.00, NULL, 1, 11, 9, NULL, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1),
(64, 1, 1, 40, '2023-10-12', 'remarks', 166.00, NULL, 1, 11, 9, NULL, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1),
(65, 1, 1, 41, '2023-10-12', 'remarks', 107.00, NULL, 1, 11, 9, NULL, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1),
(66, 1, 1, 42, '2023-10-12', 'remarks', 154.00, NULL, 1, 11, 9, NULL, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1),
(67, 1, 1, 43, '2023-10-12', 'remarks', 143.00, NULL, 1, 11, 9, NULL, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1),
(68, 1, 1, 44, '2023-10-12', 'remarks', 125.00, NULL, 1, 11, 9, NULL, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1),
(69, 1, 1, 45, '2023-10-12', 'remarks', 156.00, NULL, 1, 11, 9, NULL, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1),
(70, 1, 1, 46, '2023-10-12', 'remarks', 185.00, NULL, 1, 11, 9, NULL, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1),
(71, 1, 1, 47, '2023-10-12', 'remarks', 189.00, NULL, 1, 11, 9, NULL, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1),
(72, 1, 1, 48, '2023-10-12', 'remarks', 118.00, NULL, 1, 11, 9, NULL, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1);

-- --------------------------------------------------------

--
-- Table structure for table `hrm_languages`
--

CREATE TABLE `hrm_languages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `language_id` int(11) NOT NULL,
  `is_default` int(11) NOT NULL DEFAULT 0,
  `status_id` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `branch_id` bigint(20) UNSIGNED DEFAULT 1,
  `company_id` bigint(20) UNSIGNED DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `hrm_languages`
--

INSERT INTO `hrm_languages` (`id`, `language_id`, `is_default`, `status_id`, `created_at`, `updated_at`, `branch_id`, `company_id`) VALUES
(1, 19, 1, 1, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `income_expense_categories`
--

CREATE TABLE `income_expense_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `company_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `is_income` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0=Expense, 1=Income',
  `attachment_file_id` bigint(20) UNSIGNED DEFAULT NULL,
  `status_id` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `branch_id` bigint(20) UNSIGNED DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `income_expense_categories`
--

INSERT INTO `income_expense_categories` (`id`, `company_id`, `name`, `is_income`, `attachment_file_id`, `status_id`, `created_at`, `updated_at`, `branch_id`) VALUES
(1, 1, 'Advance Salary', 0, NULL, 1, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1),
(2, 1, 'Employee Loan', 0, NULL, 1, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1),
(3, 1, 'Advertising', 0, NULL, 1, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1),
(4, 1, 'Bank Charges', 0, NULL, 1, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1),
(5, 1, 'Business Development', 0, NULL, 1, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1),
(6, 1, 'Business Travel', 0, NULL, 1, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1),
(7, 1, 'Communication', 0, NULL, 1, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1),
(8, 1, 'Customer Service', 0, NULL, 1, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1),
(9, 1, 'Delivery', 0, NULL, 1, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1),
(10, 1, 'Events', 0, NULL, 1, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1),
(11, 1, 'Food & Beverage', 0, NULL, 1, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1),
(12, 1, 'Gifts', 0, NULL, 1, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1),
(13, 1, 'Hospitality', 0, NULL, 1, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1),
(14, 1, 'Human Resources', 0, NULL, 1, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1),
(15, 1, 'Maintenance', 0, NULL, 1, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1),
(16, 1, 'Marketing', 0, NULL, 1, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1),
(17, 1, 'Meeting', 0, NULL, 1, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1),
(18, 1, 'Office Supplies', 0, NULL, 1, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1),
(19, 1, 'Purchasing', 0, NULL, 1, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1),
(20, 1, 'Public Relations', 0, NULL, 1, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1),
(21, 1, 'Food', 0, NULL, 1, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1),
(22, 1, 'Others', 0, NULL, 1, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1),
(23, 1, 'Project', 1, NULL, 1, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1),
(24, 1, 'Income', 1, NULL, 1, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1),
(25, 1, 'Advance Salary', 0, NULL, 1, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1),
(26, 1, 'Employee Loan', 0, NULL, 1, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1),
(27, 1, 'Advertising', 0, NULL, 1, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1),
(28, 1, 'Bank Charges', 0, NULL, 1, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1),
(29, 1, 'Business Development', 0, NULL, 1, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1),
(30, 1, 'Business Travel', 0, NULL, 1, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1),
(31, 1, 'Communication', 0, NULL, 1, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1),
(32, 1, 'Customer Service', 0, NULL, 1, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1),
(33, 1, 'Delivery', 0, NULL, 1, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1),
(34, 1, 'Events', 0, NULL, 1, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1),
(35, 1, 'Food & Beverage', 0, NULL, 1, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1),
(36, 1, 'Gifts', 0, NULL, 1, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1),
(37, 1, 'Hospitality', 0, NULL, 1, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1),
(38, 1, 'Human Resources', 0, NULL, 1, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1),
(39, 1, 'Maintenance', 0, NULL, 1, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1),
(40, 1, 'Marketing', 0, NULL, 1, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1),
(41, 1, 'Meeting', 0, NULL, 1, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1),
(42, 1, 'Office Supplies', 0, NULL, 1, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1),
(43, 1, 'Purchasing', 0, NULL, 1, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1),
(44, 1, 'Public Relations', 0, NULL, 1, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1),
(45, 1, 'Food', 0, NULL, 1, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1),
(46, 1, 'Others', 0, NULL, 1, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1),
(47, 1, 'Project', 1, NULL, 1, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1),
(48, 1, 'Income', 1, NULL, 1, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1);

-- --------------------------------------------------------

--
-- Table structure for table `indicators`
--

CREATE TABLE `indicators` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `company_id` bigint(20) UNSIGNED NOT NULL,
  `department_id` bigint(20) UNSIGNED DEFAULT NULL,
  `shift_id` bigint(20) UNSIGNED DEFAULT NULL,
  `designation_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `rates` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`rates`)),
  `rating` double(8,2) DEFAULT NULL,
  `added_by` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `branch_id` bigint(20) UNSIGNED DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `indicators`
--

INSERT INTO `indicators` (`id`, `company_id`, `department_id`, `shift_id`, `designation_id`, `name`, `rates`, `rating`, `added_by`, `created_at`, `updated_at`, `branch_id`) VALUES
(1, 1, 18, 4, 43, 'Project Management', '[{\"id\":1,\"rating\":1},{\"id\":2,\"rating\":1},{\"id\":3,\"rating\":1},{\"id\":4,\"rating\":1},{\"id\":5,\"rating\":1},{\"id\":6,\"rating\":1}]', 1.00, 2, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1);

-- --------------------------------------------------------

--
-- Table structure for table `ip_setups`
--

CREATE TABLE `ip_setups` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `location` varchar(255) NOT NULL,
  `ip_address` varchar(255) NOT NULL,
  `status_id` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `company_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `branch_id` bigint(20) UNSIGNED DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jitsi_meetings`
--

CREATE TABLE `jitsi_meetings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `meeting_id` text DEFAULT NULL,
  `time_start_before` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `branch_id` bigint(20) UNSIGNED DEFAULT 1,
  `company_id` bigint(20) UNSIGNED DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL,
  `branch_id` bigint(20) UNSIGNED DEFAULT 1,
  `company_id` bigint(20) UNSIGNED DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `native` varchar(255) DEFAULT NULL,
  `rtl` tinyint(4) DEFAULT 0,
  `status` tinyint(4) DEFAULT 1 COMMENT '1=active, 0=inactive',
  `json_exist` tinyint(4) DEFAULT 0,
  `is_default` tinyint(4) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `branch_id` bigint(20) UNSIGNED DEFAULT 1,
  `company_id` bigint(20) UNSIGNED DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `code`, `name`, `native`, `rtl`, `status`, `json_exist`, `is_default`, `created_at`, `updated_at`, `branch_id`, `company_id`) VALUES
(1, 'af', 'Afrikaans', 'Afrikaans', 0, 0, 0, 0, NULL, NULL, 1, 1),
(2, 'am', 'Amharic', 'አማርኛ', 0, 0, 0, 0, NULL, NULL, 1, 1),
(3, 'ar', 'Arabic', 'العربية', 1, 1, 0, 0, NULL, NULL, 1, 1),
(4, 'ay', 'Aymara', 'Aymar', 0, 0, 0, 0, NULL, NULL, 1, 1),
(5, 'az', 'Azerbaijani', 'Azərbaycanca / آذربايجان', 0, 0, 0, 0, NULL, NULL, 1, 1),
(6, 'be', 'Belarusian', 'Беларуская', 0, 0, 0, 0, NULL, NULL, 1, 1),
(7, 'bg', 'Bulgarian', 'Български', 0, 0, 0, 0, NULL, NULL, 1, 1),
(8, 'bi', 'Bislama', 'Bislama', 0, 0, 0, 0, NULL, NULL, 1, 1),
(9, 'bn', 'Bengali', 'বাংলা', 0, 1, 0, 0, NULL, NULL, 1, 1),
(10, 'bs', 'Bosnian', 'Bosanski', 0, 0, 0, 0, NULL, NULL, 1, 1),
(11, 'ca', 'Catalan', 'Català', 0, 0, 0, 0, NULL, NULL, 1, 1),
(12, 'ch', 'Chamorro', 'Chamoru', 0, 0, 0, 0, NULL, NULL, 1, 1),
(13, 'cs', 'Czech', 'Česky', 0, 0, 0, 0, NULL, NULL, 1, 1),
(14, 'da', 'Danish', 'Dansk', 0, 0, 0, 0, NULL, NULL, 1, 1),
(15, 'de', 'German', 'Deutsch', 0, 0, 0, 0, NULL, NULL, 1, 1),
(16, 'dv', 'Divehi', 'ދިވެހިބަސް', 1, 0, 0, 0, NULL, NULL, 1, 1),
(17, 'dz', 'Dzongkha', 'ཇོང་ཁ', 0, 0, 0, 0, NULL, NULL, 1, 1),
(18, 'el', 'Greek', 'Ελληνικά', 0, 0, 0, 0, NULL, NULL, 1, 1),
(19, 'en', 'English', 'English', 0, 1, 0, 1, NULL, '2023-10-12 07:48:33', 1, 1),
(20, 'es', 'Spanish', 'Español', 0, 1, 0, 0, NULL, NULL, 1, 1),
(21, 'et', 'Estonian', 'Eesti', 0, 0, 0, 0, NULL, NULL, 1, 1),
(22, 'eu', 'Basque', 'Euskara', 0, 0, 0, 0, NULL, NULL, 1, 1),
(23, 'fa', 'Persian', 'فارسی', 1, 0, 0, 0, NULL, NULL, 1, 1),
(24, 'ff', 'Peul', 'Fulfulde', 0, 0, 0, 0, NULL, NULL, 1, 1),
(25, 'fi', 'Finnish', 'Suomi', 0, 0, 0, 0, NULL, NULL, 1, 1),
(26, 'fj', 'Fijian', 'Na Vosa Vakaviti', 0, 0, 0, 0, NULL, NULL, 1, 1),
(27, 'fo', 'Faroese', 'Føroyskt', 0, 0, 0, 0, NULL, NULL, 1, 1),
(28, 'fr', 'French', 'Français', 0, 0, 0, 0, NULL, NULL, 1, 1),
(29, 'ga', 'Irish', 'Gaeilge', 0, 0, 0, 0, NULL, NULL, 1, 1),
(30, 'gl', 'Galician', 'Galego', 0, 0, 0, 0, NULL, NULL, 1, 1),
(31, 'gn', 'Guarani', 'Avañe\'ẽ', 0, 0, 0, 0, NULL, NULL, 1, 1),
(32, 'gv', 'Manx', 'Gaelg', 0, 0, 0, 0, NULL, NULL, 1, 1),
(33, 'he', 'Hebrew', 'עברית', 1, 0, 0, 0, NULL, NULL, 1, 1),
(34, 'hi', 'Hindi', 'हिन्दी', 0, 0, 0, 0, NULL, NULL, 1, 1),
(35, 'hr', 'Croatian', 'Hrvatski', 0, 0, 0, 0, NULL, NULL, 1, 1),
(36, 'ht', 'Haitian', 'Krèyol ayisyen', 0, 0, 0, 0, NULL, NULL, 1, 1),
(37, 'hu', 'Hungarian', 'Magyar', 0, 0, 0, 0, NULL, NULL, 1, 1),
(38, 'hy', 'Armenian', 'Հայերեն', 0, 0, 0, 0, NULL, NULL, 1, 1),
(39, 'indo', 'Indonesian', 'Bahasa Indonesia', 0, 0, 0, 0, NULL, NULL, 1, 1),
(40, 'is', 'Icelandic', 'Íslenska', 0, 0, 0, 0, NULL, NULL, 1, 1),
(41, 'it', 'Italian', 'Italiano', 0, 0, 0, 0, NULL, NULL, 1, 1),
(42, 'ja', 'Japanese', '日本語', 0, 0, 0, 0, NULL, NULL, 1, 1),
(43, 'ka', 'Georgian', 'ქართული', 0, 0, 0, 0, NULL, NULL, 1, 1),
(44, 'kg', 'Kongo', 'KiKongo', 0, 0, 0, 0, NULL, NULL, 1, 1),
(45, 'kk', 'Kazakh', 'Қазақша', 0, 0, 0, 0, NULL, NULL, 1, 1),
(46, 'kl', 'Greenlandic', 'Kalaallisut', 0, 0, 0, 0, NULL, NULL, 1, 1),
(47, 'km', 'Cambodian', 'ភាសាខ្មែរ', 0, 0, 0, 0, NULL, NULL, 1, 1),
(48, 'ko', 'Korean', '한국어', 0, 0, 0, 0, NULL, NULL, 1, 1),
(49, 'ku', 'Kurdish', 'Kurdî / كوردی', 1, 0, 0, 0, NULL, NULL, 1, 1),
(50, 'ky', 'Kirghiz', 'Kırgızca / Кыргызча', 0, 0, 0, 0, NULL, NULL, 1, 1),
(51, 'la', 'Latin', 'Latina', 0, 0, 0, 0, NULL, NULL, 1, 1),
(52, 'lb', 'Luxembourgish', 'Lëtzebuergesch', 0, 0, 0, 0, NULL, NULL, 1, 1),
(53, 'ln', 'Lingala', 'Lingála', 0, 0, 0, 0, NULL, NULL, 1, 1),
(54, 'lo', 'Laotian', 'ລາວ / Pha xa lao', 0, 0, 0, 0, NULL, NULL, 1, 1),
(55, 'lt', 'Lithuanian', 'Lietuvių', 0, 0, 0, 0, NULL, NULL, 1, 1),
(56, 'lu', 'Luxembourg', 'Luxembourg', 0, 0, 0, 0, NULL, NULL, 1, 1),
(57, 'lv', 'Latvian', 'Latviešu', 0, 0, 0, 0, NULL, NULL, 1, 1),
(58, 'mg', 'Malagasy', 'Malagasy', 0, 0, 0, 0, NULL, NULL, 1, 1),
(59, 'mh', 'Marshallese', 'Kajin Majel / Ebon', 0, 0, 0, 0, NULL, NULL, 1, 1),
(60, 'mi', 'Maori', 'Māori', 0, 0, 0, 0, NULL, NULL, 1, 1),
(61, 'mk', 'Macedonian', 'Македонски', 0, 0, 0, 0, NULL, NULL, 1, 1),
(62, 'mn', 'Mongolian', 'Монгол', 0, 0, 0, 0, NULL, NULL, 1, 1),
(63, 'ms', 'Malay', 'Bahasa Melayu', 0, 0, 0, 0, NULL, NULL, 1, 1),
(64, 'mt', 'Maltese', 'bil-Malti', 0, 0, 0, 0, NULL, NULL, 1, 1),
(65, 'my', 'Burmese', 'မြန်မာစာ', 0, 0, 0, 0, NULL, NULL, 1, 1),
(66, 'na', 'Nauruan', 'Dorerin Naoero', 0, 0, 0, 0, NULL, NULL, 1, 1),
(67, 'nb', 'Bokmål', 'Bokmål', 0, 0, 0, 0, NULL, NULL, 1, 1),
(68, 'nd', 'North Ndebele', 'Sindebele', 0, 0, 0, 0, NULL, NULL, 1, 1),
(69, 'ne', 'Nepali', 'नेपाली', 0, 0, 0, 0, NULL, NULL, 1, 1),
(70, 'nl', 'Dutch', 'Nederlands', 0, 0, 0, 0, NULL, NULL, 1, 1),
(71, 'nn', 'Norwegian Nynorsk', 'Norsk (nynorsk)', 0, 0, 0, 0, NULL, NULL, 1, 1),
(72, 'no', 'Norwegian', 'Norsk (bokmål / riksmål)', 0, 0, 0, 0, NULL, NULL, 1, 1),
(73, 'nr', 'South Ndebele', 'isiNdebele', 0, 0, 0, 0, NULL, NULL, 1, 1),
(74, 'ny', 'Chichewa', 'Chi-Chewa', 0, 0, 0, 0, NULL, NULL, 1, 1),
(75, 'oc', 'Occitan', 'Occitan', 0, 0, 0, 0, NULL, NULL, 1, 1),
(76, 'pa', 'Panjabi / Punjabi', 'ਪੰਜਾਬੀ / पंजाबी / پنجابي', 0, 0, 0, 0, NULL, NULL, 1, 1),
(77, 'pl', 'Polish', 'Polski', 0, 0, 0, 0, NULL, NULL, 1, 1),
(78, 'ps', 'Pashto', 'پښتو', 1, 0, 0, 0, NULL, NULL, 1, 1),
(79, 'pt', 'Portuguese', 'Português', 0, 0, 0, 0, NULL, NULL, 1, 1),
(80, 'qu', 'Quechua', 'Runa Simi', 0, 0, 0, 0, NULL, NULL, 1, 1),
(81, 'rn', 'Kirundi', 'Kirundi', 0, 0, 0, 0, NULL, NULL, 1, 1),
(82, 'ro', 'Romanian', 'Română', 0, 0, 0, 0, NULL, NULL, 1, 1),
(83, 'ru', 'Russian', 'Русский', 0, 0, 0, 0, NULL, NULL, 1, 1),
(84, 'rw', 'Rwandi', 'Kinyarwandi', 0, 0, 0, 0, NULL, NULL, 1, 1),
(85, 'sg', 'Sango', 'Sängö', 0, 0, 0, 0, NULL, NULL, 1, 1),
(86, 'si', 'Sinhalese', 'සිංහල', 0, 0, 0, 0, NULL, NULL, 1, 1),
(87, 'sk', 'Slovak', 'Slovenčina', 0, 0, 0, 0, NULL, NULL, 1, 1),
(88, 'sl', 'Slovenian', 'Slovenščina', 0, 0, 0, 0, NULL, NULL, 1, 1),
(89, 'sm', 'Samoan', 'Gagana Samoa', 0, 0, 0, 0, NULL, NULL, 1, 1),
(90, 'sn', 'Shona', 'chiShona', 0, 0, 0, 0, NULL, NULL, 1, 1),
(91, 'so', 'Somalia', 'Soomaaliga', 0, 0, 0, 0, NULL, NULL, 1, 1),
(92, 'sq', 'Albanian', 'Shqip', 0, 0, 0, 0, NULL, NULL, 1, 1),
(93, 'sr', 'Serbian', 'Српски', 0, 0, 0, 0, NULL, NULL, 1, 1),
(94, 'ss', 'Swati', 'SiSwati', 0, 0, 0, 0, NULL, NULL, 1, 1),
(95, 'st', 'Southern Sotho', 'Sesotho', 0, 0, 0, 0, NULL, NULL, 1, 1),
(96, 'sv', 'Swedish', 'Svenska', 0, 0, 0, 0, NULL, NULL, 1, 1),
(97, 'sw', 'Swahili', 'Kiswahili', 0, 0, 0, 0, NULL, NULL, 1, 1),
(98, 'ta', 'Tamil', 'தமிழ்', 0, 0, 0, 0, NULL, NULL, 1, 1),
(99, 'tg', 'Tajik', 'Тоҷикӣ', 0, 0, 0, 0, NULL, NULL, 1, 1),
(100, 'th', 'Thai', 'ไทย / Phasa Thai', 0, 0, 0, 0, NULL, NULL, 1, 1),
(101, 'ti', 'Tigrinya', 'ትግርኛ', 0, 0, 0, 0, NULL, NULL, 1, 1),
(102, 'tk', 'Turkmen', 'Туркмен /تركمن ', 0, 0, 0, 0, NULL, NULL, 1, 1),
(103, 'tn', 'Tswana', 'Setswana', 0, 0, 0, 0, NULL, NULL, 1, 1),
(104, 'to', 'Tonga', 'Lea Faka-Tonga', 0, 0, 0, 0, NULL, NULL, 1, 1),
(105, 'tr', 'Turkish', 'Türkçe', 0, 0, 0, 0, NULL, NULL, 1, 1),
(106, 'ts', 'Tsonga', 'Xitsonga', 0, 0, 0, 0, NULL, NULL, 1, 1),
(107, 'uk', 'Ukrainian', 'Українська', 0, 0, 0, 0, NULL, NULL, 1, 1),
(108, 'ur', 'Urdu', 'اردو', 1, 0, 0, 0, NULL, NULL, 1, 1),
(109, 'uz', 'Uzbek', 'Ўзбек', 0, 0, 0, 0, NULL, NULL, 1, 1),
(110, 've', 'Venda', 'Tshivenḓa', 0, 0, 0, 0, NULL, NULL, 1, 1),
(111, 'vi', 'Vietnamese', 'Tiếng Việt', 0, 0, 0, 0, NULL, NULL, 1, 1),
(112, 'xh', 'Xhosa', 'isiXhosa', 0, 0, 0, 0, NULL, NULL, 1, 1),
(113, 'zh', 'Chinese', '中文', 0, 0, 0, 0, NULL, NULL, 1, 1),
(114, 'zu', 'Zulu', 'isiZulu', 0, 0, 0, 0, NULL, NULL, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `late_in_out_reasons`
--

CREATE TABLE `late_in_out_reasons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `company_id` bigint(20) UNSIGNED NOT NULL,
  `attendance_id` bigint(20) UNSIGNED NOT NULL,
  `type` enum('in','out') NOT NULL DEFAULT 'in' COMMENT 'in = late in reason out = late out reason',
  `reason` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `branch_id` bigint(20) UNSIGNED DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `leave_requests`
--

CREATE TABLE `leave_requests` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `company_id` bigint(20) UNSIGNED NOT NULL,
  `assign_leave_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `apply_date` date NOT NULL,
  `leave_from` date NOT NULL,
  `leave_to` date NOT NULL,
  `days` int(11) NOT NULL,
  `reason` longtext DEFAULT NULL,
  `substitute_id` bigint(20) UNSIGNED DEFAULT NULL,
  `attachment_file_id` bigint(20) UNSIGNED DEFAULT NULL,
  `status_id` bigint(20) UNSIGNED NOT NULL,
  `author_info_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `branch_id` bigint(20) UNSIGNED DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `leave_settings`
--

CREATE TABLE `leave_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `company_id` bigint(20) UNSIGNED NOT NULL,
  `sandwich_leave` tinyint(1) NOT NULL DEFAULT 0,
  `month` varchar(255) NOT NULL DEFAULT '1',
  `prorate_leave` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `branch_id` bigint(20) UNSIGNED DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `leave_settings`
--

INSERT INTO `leave_settings` (`id`, `company_id`, `sandwich_leave`, `month`, `prorate_leave`, `created_at`, `updated_at`, `branch_id`) VALUES
(1, 1, 0, '1', 0, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1),
(2, 1, 0, '1', 0, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1);

-- --------------------------------------------------------

--
-- Table structure for table `leave_types`
--

CREATE TABLE `leave_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `company_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(50) NOT NULL,
  `status_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `branch_id` bigint(20) UNSIGNED DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `leave_types`
--

INSERT INTO `leave_types` (`id`, `company_id`, `name`, `status_id`, `created_at`, `updated_at`, `deleted_at`, `branch_id`) VALUES
(1, 1, 'Casual Leave', 1, '2023-10-12 07:48:59', '2023-10-12 07:48:59', NULL, 1),
(2, 1, 'Sick Leave', 1, '2023-10-12 07:48:59', '2023-10-12 07:48:59', NULL, 1),
(3, 1, 'Maternity Leave', 1, '2023-10-12 07:48:59', '2023-10-12 07:48:59', NULL, 1),
(4, 1, 'Paternity Leave', 1, '2023-10-12 07:48:59', '2023-10-12 07:48:59', NULL, 1),
(5, 1, 'Leave Without Pay', 1, '2023-10-12 07:48:59', '2023-10-12 07:48:59', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `location_binds`
--

CREATE TABLE `location_binds` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `company_id` bigint(20) UNSIGNED NOT NULL,
  `latitude` double DEFAULT NULL COMMENT 'latitude',
  `longitude` double DEFAULT NULL COMMENT 'longitude',
  `address` varchar(255) DEFAULT NULL COMMENT 'address',
  `distance` varchar(255) DEFAULT NULL,
  `status_id` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `branch_id` bigint(20) UNSIGNED DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `location_logs`
--

CREATE TABLE `location_logs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `company_id` bigint(20) UNSIGNED NOT NULL,
  `date` date DEFAULT NULL,
  `time` time DEFAULT NULL,
  `distance` double(10,2) DEFAULT NULL COMMENT 'in km',
  `latitude` double DEFAULT NULL COMMENT 'latitude',
  `longitude` double DEFAULT NULL COMMENT 'longitude',
  `speed` double DEFAULT NULL COMMENT 'speed',
  `heading` varchar(255) DEFAULT NULL COMMENT 'heading',
  `city` varchar(255) DEFAULT NULL COMMENT 'city',
  `address` varchar(255) DEFAULT NULL COMMENT 'address',
  `countryCode` varchar(255) DEFAULT NULL COMMENT 'countryCode',
  `country` varchar(255) DEFAULT 'Bangladesh' COMMENT 'country',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `branch_id` bigint(20) UNSIGNED DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `location_logs`
--

INSERT INTO `location_logs` (`id`, `user_id`, `company_id`, `date`, `time`, `distance`, `latitude`, `longitude`, `speed`, `heading`, `city`, `address`, `countryCode`, `country`, `created_at`, `updated_at`, `branch_id`) VALUES
(1, 1, 1, '2023-10-12', NULL, NULL, 23.745873078476, 90.411955519613, NULL, NULL, 'Dhaka', 'Mouchak Market', 'BD', 'Bangladesh', '2023-10-12 07:53:59', '2023-10-12 07:48:59', 1),
(2, 1, 1, '2023-10-12', NULL, NULL, 23.749672763707, 90.412549994151, NULL, NULL, 'Dhaka', 'Malibagh Railgate', 'BD', 'Bangladesh', '2023-10-12 07:58:59', '2023-10-12 07:48:59', 1),
(3, 1, 1, '2023-10-12', NULL, NULL, 23.754717457574, 90.411955519613, NULL, NULL, 'Dhaka', 'Abul Hotel', 'BD', 'Bangladesh', '2023-10-12 08:03:59', '2023-10-12 07:48:59', 1),
(4, 1, 1, '2023-10-12', NULL, NULL, 23.757355822102, 90.417207247317, NULL, NULL, 'Dhaka', 'Hazipara CNG Filling Station', 'BD', 'Bangladesh', '2023-10-12 08:08:59', '2023-10-12 07:48:59', 1),
(5, 1, 1, '2023-10-12', NULL, NULL, 23.759271507911, 90.41830791183, NULL, NULL, 'Dhaka', 'Better Life Hospital', 'BD', 'Bangladesh', '2023-10-12 08:13:59', '2023-10-12 07:48:59', 1),
(6, 1, 1, '2023-10-12', NULL, NULL, 23.763217417111, 90.420239927571, NULL, NULL, 'Dhaka', 'Delta Health Care', 'BD', 'Bangladesh', '2023-10-12 08:18:59', '2023-10-12 07:48:59', 1),
(7, 1, 1, '2023-10-12', NULL, NULL, 23.764851708347, 90.42122998741, NULL, NULL, 'Dhaka', 'Salam Dairy Farm', 'BD', 'Bangladesh', '2023-10-12 08:23:59', '2023-10-12 07:48:59', 1),
(8, 1, 1, '2023-10-12', NULL, NULL, 23.765391036421, 90.42156171645, NULL, NULL, 'Dhaka', 'Korean & Japanese Language', 'BD', 'Bangladesh', '2023-10-12 08:28:59', '2023-10-12 07:48:59', 1),
(9, 1, 1, '2023-10-12', NULL, NULL, 23.766234689909, 90.422097586363, NULL, NULL, 'Dhaka', 'Hatirjheel South U Loop', 'BD', 'Bangladesh', '2023-10-12 08:33:59', '2023-10-12 07:48:59', 1),
(10, 1, 1, '2023-10-12', NULL, NULL, 23.772114801902, 90.425267897515, NULL, NULL, 'Dhaka', 'Dominos Pizza Badda', 'BD', 'Bangladesh', '2023-10-12 08:38:59', '2023-10-12 07:48:59', 1),
(11, 1, 1, '2023-10-12', NULL, NULL, 23.774690859943, 90.425944114355, NULL, NULL, 'Dhaka', 'Fiza Electronics', 'BD', 'Bangladesh', '2023-10-12 08:43:59', '2023-10-12 07:48:59', 1),
(12, 1, 1, '2023-10-12', NULL, NULL, 23.781516809915, 90.425486846806, NULL, NULL, 'Dhaka', 'Pran Center', 'BD', 'Bangladesh', '2023-10-12 08:48:59', '2023-10-12 07:48:59', 1),
(13, 1, 1, '2023-10-12', NULL, NULL, 23.783564762627, 90.426040656381, NULL, NULL, 'Dhaka', 'Hossen Market', 'BD', 'Bangladesh', '2023-10-12 08:53:59', '2023-10-12 07:48:59', 1),
(14, 1, 1, '2023-10-12', NULL, NULL, 23.78945852103, 90.424781308677, NULL, NULL, 'Dhaka', 'Waterfall Garden Cafe', 'BD', 'Bangladesh', '2023-10-12 08:58:59', '2023-10-12 07:48:59', 1),
(15, 1, 1, '2023-10-12', NULL, NULL, 23.792353237388, 90.424288190542, NULL, NULL, 'Dhaka', 'Confidence Shopping Mall', 'BD', 'Bangladesh', '2023-10-12 09:03:59', '2023-10-12 07:48:59', 1),
(16, 1, 1, '2023-10-12', NULL, NULL, 23.798142476641, 90.423218503432, NULL, NULL, 'Dhaka', 'NotunBazar Bus Stop', 'BD', 'Bangladesh', '2023-10-12 09:08:59', '2023-10-12 07:48:59', 1),
(17, 1, 1, '2023-10-12', NULL, NULL, 23.798142476641, 90.423218503432, NULL, NULL, 'Dhaka', 'NotunBazar Bus Stop', 'BD', 'Bangladesh', '2023-10-12 09:13:59', '2023-10-12 07:48:59', 1),
(18, 1, 1, '2023-10-12', NULL, NULL, 23.810518366199, 90.419819781696, NULL, NULL, 'Dhaka', 'Morol Bazar Nodda', 'BD', 'Bangladesh', '2023-10-12 09:18:59', '2023-10-12 07:48:59', 1),
(19, 1, 1, '2023-10-12', NULL, NULL, 23.819284196867, 90.416504510435, NULL, NULL, 'Dhaka', 'Parves Bike Service Center', 'BD', 'Bangladesh', '2023-10-12 09:23:59', '2023-10-12 07:48:59', 1),
(20, 1, 1, '2023-10-12', NULL, NULL, 23.825155514855, 90.420843949887, NULL, NULL, 'Dhaka', 'BRTC Double Decker Bus Stop', 'BD', 'Bangladesh', '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1),
(21, 1, 1, '2023-10-12', NULL, NULL, 23.836283524846, 90.418225867126, NULL, NULL, 'Dhaka', 'Le Meridien Dhaka', 'BD', 'Bangladesh', '2023-10-12 09:28:59', '2023-10-12 07:48:59', 1),
(22, 1, 1, '2023-10-12', NULL, NULL, 23.846025722666, 90.412345750642, NULL, NULL, 'Dhaka', 'Kawral Foot Over Bridge', 'BD', 'Bangladesh', '2023-10-12 09:33:59', '2023-10-12 07:48:59', 1),
(23, 1, 1, '2023-10-12', NULL, NULL, 23.850279148582, 90.409296004818, NULL, NULL, 'Dhaka', 'Airport Rail Station', 'BD', 'Bangladesh', '2023-10-12 09:38:59', '2023-10-12 07:48:59', 1),
(24, 1, 1, '2023-10-12', NULL, NULL, 23.85091055879, 90.410942260564, NULL, NULL, 'Dhaka', 'Airport Police Station', 'BD', 'Bangladesh', '2023-10-12 09:43:59', '2023-10-12 07:48:59', 1),
(25, 1, 1, '2023-10-12', NULL, NULL, 23.745873078476, 90.411955519613, NULL, NULL, 'Dhaka', 'Mouchak Market', 'BD', 'Bangladesh', '2023-10-12 07:53:59', '2023-10-12 07:48:59', 1),
(26, 1, 1, '2023-10-12', NULL, NULL, 23.749672763707, 90.412549994151, NULL, NULL, 'Dhaka', 'Malibagh Railgate', 'BD', 'Bangladesh', '2023-10-12 07:58:59', '2023-10-12 07:48:59', 1),
(27, 1, 1, '2023-10-12', NULL, NULL, 23.754717457574, 90.411955519613, NULL, NULL, 'Dhaka', 'Abul Hotel', 'BD', 'Bangladesh', '2023-10-12 08:03:59', '2023-10-12 07:48:59', 1),
(28, 1, 1, '2023-10-12', NULL, NULL, 23.757355822102, 90.417207247317, NULL, NULL, 'Dhaka', 'Hazipara CNG Filling Station', 'BD', 'Bangladesh', '2023-10-12 08:08:59', '2023-10-12 07:48:59', 1),
(29, 1, 1, '2023-10-12', NULL, NULL, 23.759271507911, 90.41830791183, NULL, NULL, 'Dhaka', 'Better Life Hospital', 'BD', 'Bangladesh', '2023-10-12 08:13:59', '2023-10-12 07:48:59', 1),
(30, 1, 1, '2023-10-12', NULL, NULL, 23.763217417111, 90.420239927571, NULL, NULL, 'Dhaka', 'Delta Health Care', 'BD', 'Bangladesh', '2023-10-12 08:18:59', '2023-10-12 07:48:59', 1),
(31, 1, 1, '2023-10-12', NULL, NULL, 23.764851708347, 90.42122998741, NULL, NULL, 'Dhaka', 'Salam Dairy Farm', 'BD', 'Bangladesh', '2023-10-12 08:23:59', '2023-10-12 07:48:59', 1),
(32, 1, 1, '2023-10-12', NULL, NULL, 23.765391036421, 90.42156171645, NULL, NULL, 'Dhaka', 'Korean & Japanese Language', 'BD', 'Bangladesh', '2023-10-12 08:28:59', '2023-10-12 07:48:59', 1),
(33, 1, 1, '2023-10-12', NULL, NULL, 23.766234689909, 90.422097586363, NULL, NULL, 'Dhaka', 'Hatirjheel South U Loop', 'BD', 'Bangladesh', '2023-10-12 08:33:59', '2023-10-12 07:48:59', 1),
(34, 1, 1, '2023-10-12', NULL, NULL, 23.772114801902, 90.425267897515, NULL, NULL, 'Dhaka', 'Dominos Pizza Badda', 'BD', 'Bangladesh', '2023-10-12 08:38:59', '2023-10-12 07:48:59', 1),
(35, 1, 1, '2023-10-12', NULL, NULL, 23.774690859943, 90.425944114355, NULL, NULL, 'Dhaka', 'Fiza Electronics', 'BD', 'Bangladesh', '2023-10-12 08:43:59', '2023-10-12 07:48:59', 1),
(36, 1, 1, '2023-10-12', NULL, NULL, 23.781516809915, 90.425486846806, NULL, NULL, 'Dhaka', 'Pran Center', 'BD', 'Bangladesh', '2023-10-12 08:48:59', '2023-10-12 07:48:59', 1),
(37, 1, 1, '2023-10-12', NULL, NULL, 23.783564762627, 90.426040656381, NULL, NULL, 'Dhaka', 'Hossen Market', 'BD', 'Bangladesh', '2023-10-12 08:53:59', '2023-10-12 07:48:59', 1),
(38, 1, 1, '2023-10-12', NULL, NULL, 23.78945852103, 90.424781308677, NULL, NULL, 'Dhaka', 'Waterfall Garden Cafe', 'BD', 'Bangladesh', '2023-10-12 08:58:59', '2023-10-12 07:48:59', 1),
(39, 1, 1, '2023-10-12', NULL, NULL, 23.792353237388, 90.424288190542, NULL, NULL, 'Dhaka', 'Confidence Shopping Mall', 'BD', 'Bangladesh', '2023-10-12 09:03:59', '2023-10-12 07:48:59', 1),
(40, 1, 1, '2023-10-12', NULL, NULL, 23.798142476641, 90.423218503432, NULL, NULL, 'Dhaka', 'NotunBazar Bus Stop', 'BD', 'Bangladesh', '2023-10-12 09:08:59', '2023-10-12 07:48:59', 1),
(41, 1, 1, '2023-10-12', NULL, NULL, 23.798142476641, 90.423218503432, NULL, NULL, 'Dhaka', 'NotunBazar Bus Stop', 'BD', 'Bangladesh', '2023-10-12 09:13:59', '2023-10-12 07:48:59', 1),
(42, 1, 1, '2023-10-12', NULL, NULL, 23.810518366199, 90.419819781696, NULL, NULL, 'Dhaka', 'Morol Bazar Nodda', 'BD', 'Bangladesh', '2023-10-12 09:18:59', '2023-10-12 07:48:59', 1),
(43, 1, 1, '2023-10-12', NULL, NULL, 23.819284196867, 90.416504510435, NULL, NULL, 'Dhaka', 'Parves Bike Service Center', 'BD', 'Bangladesh', '2023-10-12 09:23:59', '2023-10-12 07:48:59', 1),
(44, 1, 1, '2023-10-12', NULL, NULL, 23.825155514855, 90.420843949887, NULL, NULL, 'Dhaka', 'BRTC Double Decker Bus Stop', 'BD', 'Bangladesh', '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1),
(45, 1, 1, '2023-10-12', NULL, NULL, 23.836283524846, 90.418225867126, NULL, NULL, 'Dhaka', 'Le Meridien Dhaka', 'BD', 'Bangladesh', '2023-10-12 09:28:59', '2023-10-12 07:48:59', 1),
(46, 1, 1, '2023-10-12', NULL, NULL, 23.846025722666, 90.412345750642, NULL, NULL, 'Dhaka', 'Kawral Foot Over Bridge', 'BD', 'Bangladesh', '2023-10-12 09:33:59', '2023-10-12 07:48:59', 1),
(47, 1, 1, '2023-10-12', NULL, NULL, 23.850279148582, 90.409296004818, NULL, NULL, 'Dhaka', 'Airport Rail Station', 'BD', 'Bangladesh', '2023-10-12 09:38:59', '2023-10-12 07:48:59', 1),
(48, 1, 1, '2023-10-12', NULL, NULL, 23.85091055879, 90.410942260564, NULL, NULL, 'Dhaka', 'Airport Police Station', 'BD', 'Bangladesh', '2023-10-12 09:43:59', '2023-10-12 07:48:59', 1);

-- --------------------------------------------------------

--
-- Table structure for table `meetings`
--

CREATE TABLE `meetings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `company_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `location` text DEFAULT NULL,
  `duration` varchar(255) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `start_at` time DEFAULT NULL,
  `end_at` time DEFAULT NULL,
  `attachment_file_id` bigint(20) UNSIGNED DEFAULT NULL,
  `status_id` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `branch_id` bigint(20) UNSIGNED DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `meetings`
--

INSERT INTO `meetings` (`id`, `company_id`, `user_id`, `title`, `description`, `location`, `duration`, `date`, `start_at`, `end_at`, `attachment_file_id`, `status_id`, `created_at`, `updated_at`, `branch_id`) VALUES
(1, 1, 1, 'Quia quia atque omnis est unde sed est omnis.', 'Sint at qui aperiam similique voluptatem. Cupiditate incidunt ea vitae corporis qui. Inventore et laudantium voluptas reprehenderit tempore ea.', NULL, NULL, '2023-10-01', NULL, NULL, NULL, 1, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1);

-- --------------------------------------------------------

--
-- Table structure for table `meeting_members`
--

CREATE TABLE `meeting_members` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `meeting_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `is_present` tinyint(4) NOT NULL DEFAULT 0,
  `status_id` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `branch_id` bigint(20) UNSIGNED DEFAULT 1,
  `company_id` bigint(20) UNSIGNED DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `meeting_participants`
--

CREATE TABLE `meeting_participants` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `participant_id` bigint(20) UNSIGNED NOT NULL,
  `meeting_id` bigint(20) UNSIGNED NOT NULL,
  `is_going` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0: Not going, 1: Going',
  `is_present` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0: Absent, 1: Present',
  `present_at` datetime DEFAULT NULL,
  `meeting_started_at` datetime DEFAULT NULL,
  `meeting_ended_at` datetime DEFAULT NULL,
  `meeting_duration` time DEFAULT NULL COMMENT 'Meeting duration in minutes',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `branch_id` bigint(20) UNSIGNED DEFAULT 1,
  `company_id` bigint(20) UNSIGNED DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `meeting_setups`
--

CREATE TABLE `meeting_setups` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `host_name` varchar(255) DEFAULT NULL,
  `key` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  `status_id` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `company_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `branch_id` bigint(20) UNSIGNED DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `position` int(11) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `all_content_id` int(11) DEFAULT NULL,
  `type` int(11) NOT NULL DEFAULT 1 COMMENT '1=menu,2=footer',
  `status_id` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `branch_id` bigint(20) UNSIGNED DEFAULT 1,
  `company_id` bigint(20) UNSIGNED DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `meta_information`
--

CREATE TABLE `meta_information` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `type` enum('all_shop','all_brand','all_search','login','registration','student_registration','affiliate_registration','be_a_seller','compare_list','add_to_cart','about_us','faqs','contact_us','careers','return_refund','support_policy','privacy_policy','terms_condition') DEFAULT NULL,
  `meta_title` varchar(255) DEFAULT NULL,
  `meta_description` varchar(255) DEFAULT NULL,
  `meta_image` varchar(255) DEFAULT NULL,
  `meta_keywords` varchar(255) DEFAULT NULL,
  `created_by` bigint(20) UNSIGNED DEFAULT NULL,
  `updated_by` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `branch_id` bigint(20) UNSIGNED DEFAULT 1,
  `company_id` bigint(20) UNSIGNED DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `meta_information`
--

INSERT INTO `meta_information` (`id`, `type`, `meta_title`, `meta_description`, `meta_image`, `meta_keywords`, `created_by`, `updated_by`, `created_at`, `updated_at`, `branch_id`, `company_id`) VALUES
(1, 'all_shop', 'all_shop-title', 'all_shop-description', 'all_shop-image', 'all_shop-keywors', NULL, NULL, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(2, 'all_brand', 'all_brand-title', 'all_brand-description', 'all_brand-image', 'all_brand-keywors', NULL, NULL, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(3, 'all_search', 'all_search-title', 'all_search-description', 'all_search-image', 'all_search-keywors', NULL, NULL, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(4, 'login', 'login-title', 'login-description', 'login-image', 'login-keywors', NULL, NULL, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(5, 'registration', 'registration-title', 'registration-description', 'registration-image', 'registration-keywors', NULL, NULL, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(6, 'student_registration', 'student_registration-title', 'student_registration-description', 'student_registration-image', 'student_registration-keywors', NULL, NULL, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(7, 'affiliate_registration', 'affiliate_registration-title', 'affiliate_registration-description', 'affiliate_registration-image', 'affiliate_registration-keywors', NULL, NULL, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(8, 'be_a_seller', 'be_a_seller-title', 'be_a_seller-description', 'be_a_seller-image', 'be_a_seller-keywors', NULL, NULL, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(9, 'compare_list', 'compare_list-title', 'compare_list-description', 'compare_list-image', 'compare_list-keywors', NULL, NULL, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(10, 'add_to_cart', 'add_to_cart-title', 'add_to_cart-description', 'add_to_cart-image', 'add_to_cart-keywors', NULL, NULL, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(11, 'about_us', 'about_us-title', 'about_us-description', 'about_us-image', 'about_us-keywors', NULL, NULL, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(12, 'faqs', 'faqs-title', 'faqs-description', 'faqs-image', 'faqs-keywors', NULL, NULL, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(13, 'contact_us', 'contact_us-title', 'contact_us-description', 'contact_us-image', 'contact_us-keywors', NULL, NULL, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(14, 'careers', 'careers-title', 'careers-description', 'careers-image', 'careers-keywors', NULL, NULL, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL,
  `branch_id` bigint(20) UNSIGNED DEFAULT 1,
  `company_id` bigint(20) UNSIGNED DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`, `branch_id`, `company_id`) VALUES
(1, '2013_10_11_000000_create_countries_table', 1, 1, 1),
(2, '2014_01_11_000000_create_statuses_table', 1, 1, 1),
(3, '2014_10_11_000001_create_activity_log_table', 1, 1, 1),
(4, '2014_10_11_000001_create_branches_table', 1, 1, 1),
(5, '2014_10_11_000002_create_uploads_table', 1, 1, 1),
(6, '2014_10_11_000003_create_companies_table', 1, 1, 1),
(7, '2014_10_11_000004_create_roles_table', 1, 1, 1),
(8, '2014_10_11_000004_create_shifts_table', 1, 1, 1),
(9, '2014_10_11_000005_create_departments_table', 1, 1, 1),
(10, '2014_10_11_000005_create_designations_table', 1, 1, 1),
(11, '2014_10_12_000000_create_users_table', 1, 1, 1),
(12, '2014_10_12_000001_create_author_infos_table', 1, 1, 1),
(13, '2014_10_12_100000_create_password_resets_table', 1, 1, 1),
(14, '2019_05_03_000001_create_customer_columns', 1, 1, 1),
(15, '2019_05_03_000002_create_subscriptions_table', 1, 1, 1),
(16, '2019_05_03_000003_create_subscription_items_table', 1, 1, 1),
(17, '2019_08_19_000000_create_failed_jobs_table', 1, 1, 1),
(18, '2019_09_15_000010_create_tenants_table', 1, 1, 1),
(19, '2019_09_15_000020_create_domains_table', 1, 1, 1),
(20, '2019_12_14_000001_create_personal_access_tokens_table', 1, 1, 1),
(21, '2020_06_01_130821_create_settings_table', 1, 1, 1),
(22, '2020_06_01_130822_create_permissions_table', 1, 1, 1),
(23, '2020_06_01_130824_create_role_users_table', 1, 1, 1),
(24, '2021_09_24_050720_create_bank_accounts_table', 1, 1, 1),
(25, '2021_09_25_070000_create_payment_types_table', 1, 1, 1),
(26, '2021_09_25_080345_create_categories_table', 1, 1, 1),
(27, '2021_10_31_121218_create_translations_table', 1, 1, 1),
(28, '2021_11_03_044301_create_social_identities_table', 1, 1, 1),
(29, '2021_11_14_070513_create_notifications_old_table', 1, 1, 1),
(30, '2021_11_14_070607_create_conversations_table', 1, 1, 1),
(31, '2022_01_05_105820_create_leave_types_table', 1, 1, 1),
(32, '2022_01_05_111318_create_assign_leaves_table', 1, 1, 1),
(33, '2022_01_05_112116_create_leave_requests_table', 1, 1, 1),
(34, '2022_01_23_165353_create_weekends_table', 1, 1, 1),
(35, '2022_01_23_165357_create_holidays_table', 1, 1, 1),
(36, '2022_01_26_104953_create_duty_schedules_table', 1, 1, 1),
(37, '2022_02_07_144952_create_attendances_table', 1, 1, 1),
(38, '2022_02_07_175133_create_leave_settings_table', 1, 1, 1),
(39, '2022_02_10_151245_create_late_in_out_reasons_table', 1, 1, 1),
(40, '2022_03_01_174425_create_company_configs_table', 1, 1, 1),
(41, '2022_03_02_170908_create_ip_setups_table', 1, 1, 1),
(42, '2022_03_05_000002_create_expense_categories_table', 1, 1, 1),
(43, '2022_03_05_050001_create_payment_methods_table', 1, 1, 1),
(44, '2022_03_05_060051_create_accounts_table', 1, 1, 1),
(45, '2022_03_05_060052_create_transactions_table', 1, 1, 1),
(46, '2022_03_05_061025_create_expenses_table', 1, 1, 1),
(47, '2022_03_05_061055_create_deposits_table', 1, 1, 1),
(48, '2022_03_05_100003_create_hrm_expenses_table', 1, 1, 1),
(49, '2022_03_05_100004_create_expense_claims_table', 1, 1, 1),
(50, '2022_03_05_100006_create_expense_claim_details_table', 1, 1, 1),
(51, '2022_03_05_100007_create_payment_histories_table', 1, 1, 1),
(52, '2022_03_05_100008_create_payment_history_details_table', 1, 1, 1),
(53, '2022_03_05_100009_create_payment_history_logs_table', 1, 1, 1),
(54, '2022_03_06_101527_create_visits_table', 1, 1, 1),
(55, '2022_03_06_103136_create_visit_images_table', 1, 1, 1),
(56, '2022_03_06_104118_create_visit_notes_table', 1, 1, 1),
(57, '2022_03_06_104139_create_visit_schedules_table', 1, 1, 1),
(58, '2022_03_09_174416_create_subscription_plans_table', 1, 1, 1),
(59, '2022_03_10_110216_create_app_screens_table', 1, 1, 1),
(60, '2022_03_10_114654_create_support_tickets_table', 1, 1, 1),
(61, '2022_03_10_131726_create_notices_table', 1, 1, 1),
(62, '2022_03_10_132017_create_notice_view_logs_table', 1, 1, 1),
(63, '2022_03_12_114157_create_appreciates_table', 1, 1, 1),
(64, '2022_03_13_104916_create_meetings_table', 1, 1, 1),
(65, '2022_03_13_112149_create_meeting_participants_table', 1, 1, 1),
(66, '2022_03_13_112853_create_appoinments_table', 1, 1, 1),
(67, '2022_03_13_112914_create_appoinment_participants_table', 1, 1, 1),
(68, '2022_03_13_113319_create_employee_tasks_table', 1, 1, 1),
(69, '2022_03_13_123151_create_employee_breaks_table', 1, 1, 1),
(70, '2022_03_15_131235_create_all_contents_table', 1, 1, 1),
(71, '2022_03_16_104248_create_contacts_table', 1, 1, 1),
(72, '2022_03_30_061715_create_features_table', 1, 1, 1),
(73, '2022_03_30_113900_create_testimonials_table', 1, 1, 1),
(74, '2022_03_31_140233_create_teams_table', 1, 1, 1),
(75, '2022_03_31_140552_create_team_members_table', 1, 1, 1),
(76, '2022_04_06_042459_create_sms_logs_table', 1, 1, 1),
(77, '2022_04_07_035721_create_user_devices_table', 1, 1, 1),
(78, '2022_04_07_044946_create_notification_types_table', 1, 1, 1),
(79, '2022_04_12_065957_create_ticket_replies_table', 1, 1, 1),
(80, '2022_05_16_071031_create_notifications_table', 1, 1, 1),
(81, '2022_05_17_062749_create_daily_leaves_table', 1, 1, 1),
(82, '2022_05_19_055538_create_notice_departments_table', 1, 1, 1),
(83, '2022_06_05_101104_create_meta_information_table', 1, 1, 1),
(84, '2022_06_09_093509_create_time_zones_table', 1, 1, 1),
(85, '2022_06_11_075042_create_date_formats_table', 1, 1, 1),
(86, '2022_06_12_080741_create_api_setups_table', 1, 1, 1),
(87, '2022_06_12_100839_create_currencies_table', 1, 1, 1),
(88, '2022_06_15_090457_create_advance_types_table', 1, 1, 1),
(89, '2022_06_15_130017_create_advance_salaries_table', 1, 1, 1),
(90, '2022_06_15_131620_create_advance_salary_logs_table', 1, 1, 1),
(91, '2022_06_16_115529_create_commissions_table', 1, 1, 1),
(92, '2022_06_16_122623_create_salary_setups_table', 1, 1, 1),
(93, '2022_06_16_122641_create_salary_setup_details_table', 1, 1, 1),
(94, '2022_06_16_122709_create_salary_generates_table', 1, 1, 1),
(95, '2022_06_16_122750_create_salary_payment_logs_table', 1, 1, 1),
(96, '2022_06_18_154114_create_languages_table', 1, 1, 1),
(97, '2022_06_18_155339_create_hrm_languages_table', 1, 1, 1),
(98, '2022_06_21_055621_add_lang_column_to_users_table', 1, 1, 1),
(99, '2022_06_23_030258_create_location_logs_table', 1, 1, 1),
(100, '2022_06_25_080155_create_database_backups_table', 1, 1, 1),
(101, '2022_06_27_115744_create_meeting_setups_table', 1, 1, 1),
(102, '2022_06_27_121222_create_virtual_meetings_table', 1, 1, 1),
(103, '2022_06_27_121626_create_meeting_members_table', 1, 1, 1),
(104, '2022_06_27_123238_create_jitsi_meetings_table', 1, 1, 1),
(105, '2022_07_18_113807_database_updates_for_v_3_1', 1, 1, 1),
(106, '2022_07_21_132450_create_location_binds_table', 1, 1, 1),
(107, '2022_07_25_160849_create_clients_table', 1, 1, 1),
(108, '2022_07_25_160850_create_goal_types_table', 1, 1, 1),
(109, '2022_07_25_160851_create_goals_table', 1, 1, 1),
(110, '2022_07_26_160617_create_projects_table', 1, 1, 1),
(111, '2022_07_26_160618_create_project_membars_table', 1, 1, 1),
(112, '2022_07_26_165806_create_discussions_table', 1, 1, 1),
(113, '2022_07_26_165807_create_discussion_comments_table', 1, 1, 1),
(114, '2022_07_26_165908_create_notes_table', 1, 1, 1),
(115, '2022_07_26_170007_create_project_files_table', 1, 1, 1),
(116, '2022_07_26_170008_create_project_file_comments_table', 1, 1, 1),
(117, '2022_07_26_170031_create_project_activities_table', 1, 1, 1),
(118, '2022_07_26_170205_create_project_payments_table', 1, 1, 1),
(119, '2022_08_01_140657_create_tasks_table', 1, 1, 1),
(120, '2022_08_01_140658_create_task_followers_table', 1, 1, 1),
(121, '2022_08_01_140658_create_task_members_table', 1, 1, 1),
(122, '2022_08_01_141239_create_task_discussions_table', 1, 1, 1),
(123, '2022_08_01_141255_create_task_discussion_comments_table', 1, 1, 1),
(124, '2022_08_01_141323_create_task_notes_table', 1, 1, 1),
(125, '2022_08_01_141341_create_task_files_table', 1, 1, 1),
(126, '2022_08_01_141401_create_task_file_comments_table', 1, 1, 1),
(127, '2022_08_01_142250_create_task_activities_table', 1, 1, 1),
(128, '2022_08_03_130453_create_award_types_table', 1, 1, 1),
(129, '2022_08_03_130519_create_awards_table', 1, 1, 1),
(130, '2022_08_04_101142_create_travel_types_table', 1, 1, 1),
(131, '2022_08_04_101522_create_travel_table', 1, 1, 1),
(132, '2022_08_04_161248_create_competence_types_table', 1, 1, 1),
(133, '2022_08_04_161249_create_competences_table', 1, 1, 1),
(134, '2022_08_04_161325_create_indicators_table', 1, 1, 1),
(135, '2022_08_04_161344_create_appraisals_table', 1, 1, 1),
(136, '2022_08_10_132731_database_update_for_v33', 1, 1, 1),
(137, '2022_09_04_172317_add_is_default_column_to_languages_table', 1, 1, 1),
(138, '2022_09_19_104223_create_services_table', 1, 1, 1),
(139, '2022_09_19_104344_create_portfolios_table', 1, 1, 1),
(140, '2022_09_19_105655_create_front_teams_table', 1, 1, 1),
(141, '2022_09_19_112019_create_menus_table', 1, 1, 1),
(142, '2022_09_19_112527_create_home_pages_table', 1, 1, 1),
(143, '2022_12_26_130845_add_web_app_login_column_to_role_table', 1, 1, 1),
(144, '2023_02_23_133359_add_department_id_table_to_salary_generates', 1, 1, 1),
(145, '2023_02_23_181308_create_salary_sheet_reports_table', 1, 1, 1),
(146, '2023_06_15_105713_create_discussion_likes_table', 1, 1, 1),
(147, '2023_07_19_170603_create_service_institutions_table', 1, 1, 1),
(148, '2023_07_19_174340_create_service_brands_table', 1, 1, 1),
(149, '2023_07_19_174345_create_service_models_table', 1, 1, 1),
(150, '2023_07_19_174348_create_service_machines_table', 1, 1, 1),
(151, '2023_07_19_174429_create_service_packages_table', 1, 1, 1),
(152, '2023_07_19_174445_create_module_services_table', 1, 1, 1),
(153, '2023_08_02_105949_create_service_package_details_table', 1, 1, 1),
(154, '2023_08_03_112309_create_module_service_details_table', 1, 1, 1),
(155, '2023_09_07_144201_create_user_document_types_table', 1, 1, 1),
(156, '2023_09_07_144203_create_user_documents_table', 1, 1, 1),
(157, '2023_09_19_111522_create_user_document_requests_table', 1, 1, 1),
(158, '2023_09_20_114428_create_expire_notifications_table', 1, 1, 1),
(159, '2023_09_21_155520_create_jobs_table', 1, 1, 1),
(160, '2023_10_05_151021_add_attendance_approval_to_attendances_table', 1, 1, 1),
(161, '2026_12_20_103236_add_branch_id_column_to_all_table', 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `module_services`
--

CREATE TABLE `module_services` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `institution_id` bigint(20) UNSIGNED DEFAULT NULL,
  `package_id` bigint(20) UNSIGNED DEFAULT NULL,
  `date` date NOT NULL,
  `status_id` int(11) DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `branch_id` bigint(20) UNSIGNED DEFAULT 1,
  `company_id` bigint(20) UNSIGNED DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `module_service_details`
--

CREATE TABLE `module_service_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `module_service_id` bigint(20) UNSIGNED DEFAULT NULL,
  `installation_date` date NOT NULL,
  `contract_person_id` bigint(20) UNSIGNED DEFAULT NULL,
  `machine_id` bigint(20) UNSIGNED DEFAULT NULL,
  `serial_number` bigint(20) DEFAULT NULL,
  `supply_date` date NOT NULL,
  `status_id` int(11) DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `branch_id` bigint(20) UNSIGNED DEFAULT 1,
  `company_id` bigint(20) UNSIGNED DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `notes`
--

CREATE TABLE `notes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `company_id` bigint(20) UNSIGNED NOT NULL,
  `description` longtext NOT NULL,
  `show_to_customer` bigint(20) UNSIGNED NOT NULL DEFAULT 22,
  `project_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `status_id` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `last_activity` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `branch_id` bigint(20) UNSIGNED DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `notices`
--

CREATE TABLE `notices` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_by` bigint(20) UNSIGNED NOT NULL,
  `company_id` bigint(20) UNSIGNED NOT NULL,
  `department_id` bigint(20) UNSIGNED DEFAULT NULL,
  `attachment_file_id` bigint(20) UNSIGNED DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `status_id` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `branch_id` bigint(20) UNSIGNED DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notices`
--

INSERT INTO `notices` (`id`, `created_by`, `company_id`, `department_id`, `attachment_file_id`, `subject`, `date`, `description`, `status_id`, `created_at`, `updated_at`, `branch_id`) VALUES
(1, 1, 1, 1, NULL, 'Placeat voluptatum est iusto minus sed cumque.', '2023-10-12', 'Facere deserunt ad voluptate veritatis unde et. Eos ipsam sint adipisci cumque.', 1, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1),
(2, 1, 1, 1, NULL, 'Odio totam nihil odio omnis laudantium nostrum.', '2023-10-12', 'Officia nobis eligendi debitis sed illo a iste molestiae. Assumenda provident dolores consequatur qui. Odit qui molestiae harum.', 1, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1),
(3, 1, 1, 1, NULL, 'Est quo quidem soluta repellendus voluptates reprehenderit.', '2023-10-12', 'Consequatur sunt molestiae accusamus quam pariatur. Dolorem molestiae quasi recusandae quam veritatis asperiores. Illo maxime error ut non molestiae esse.', 1, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1),
(4, 1, 1, 1, NULL, 'Dolor sint vel atque dolorem earum aut.', '2023-10-12', 'Nemo aut nisi pariatur et a corporis sint. Doloremque dignissimos unde deserunt aut accusamus exercitationem necessitatibus. Quod vero voluptatem fugit nobis temporibus. Sunt molestiae quod sapiente quis accusantium reprehenderit assumenda temporibus.', 1, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1),
(5, 1, 1, 1, NULL, 'Ut numquam sit quasi aut velit est.', '2023-10-12', 'Expedita esse animi et id laborum. Sit qui soluta dolores aut voluptatum qui tempora. Sit nisi molestiae aspernatur ut quo.', 1, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1),
(6, 1, 1, 1, NULL, 'Illum ut quia repellat sunt nemo impedit.', '2023-10-12', 'Fugiat et harum veniam labore ea velit. Placeat dolore aliquid tempore dolores. Consequatur voluptates impedit voluptatem libero praesentium.', 1, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1),
(7, 1, 1, 1, NULL, 'Sequi consequatur in nesciunt.', '2023-10-12', 'Quam ipsa ut iste. Quod et consequatur dolores dolores nam. Asperiores soluta possimus est accusantium soluta ullam illum. Sed et est earum enim aperiam voluptatem in.', 1, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1),
(8, 1, 1, 1, NULL, 'Temporibus sed quia fugiat ipsum.', '2023-10-12', 'Illo ducimus porro enim sit tenetur eius ea voluptates. Voluptas doloremque voluptatem distinctio consequuntur ea saepe. Magnam quo laudantium voluptas ut necessitatibus occaecati occaecati dolorem. Eveniet aut non necessitatibus.', 1, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1),
(9, 1, 1, 1, NULL, 'Totam veritatis harum tempora.', '2023-10-12', 'Itaque numquam rem possimus ullam ullam. Ea voluptas est et. Pariatur optio facilis ratione voluptates libero.', 1, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1),
(10, 1, 1, 1, NULL, 'Veritatis possimus possimus quo.', '2023-10-12', 'Earum minima corporis perspiciatis provident adipisci qui dolor. Itaque voluptatem porro assumenda sit esse voluptatem illum. Laborum sint omnis eius architecto repellendus voluptas. Illum iusto ipsa omnis placeat quasi.', 1, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1),
(11, 1, 1, 2, NULL, 'Sit iusto explicabo harum et libero neque.', '2023-10-12', 'Aliquid totam impedit omnis dolore. Et sit similique quam praesentium id. Optio necessitatibus maiores ut aliquam consectetur temporibus eum.', 1, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1),
(12, 1, 1, 2, NULL, 'Voluptatem autem expedita dolores totam fuga.', '2023-10-12', 'Deserunt unde corrupti repellendus velit eos aut totam. Qui aliquam quisquam unde.', 1, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1),
(13, 1, 1, 2, NULL, 'Minus dolorem nostrum corporis neque rem voluptate.', '2023-10-12', 'Iure quo quia beatae neque eius. Accusantium iure omnis molestias perspiciatis. Expedita pariatur ut est ipsum error qui.', 1, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1),
(14, 1, 1, 2, NULL, 'Deserunt et velit ut culpa nesciunt non.', '2023-10-12', 'Qui quaerat natus ipsam perferendis repellat voluptates ut molestias. Quis quia rerum neque. Aspernatur est est voluptatem beatae ipsum.', 1, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1),
(15, 1, 1, 2, NULL, 'Nemo error sint molestias fugiat quos error est maiores.', '2023-10-12', 'Asperiores sed assumenda voluptates aut beatae. Voluptas non dicta autem maiores. Accusamus ipsa dolore libero nam ea voluptatibus et quaerat.', 1, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1),
(16, 1, 1, 2, NULL, 'Soluta qui nihil incidunt eum quis deserunt minima.', '2023-10-12', 'Voluptates ab molestiae et ad rerum enim voluptatem. Incidunt vel dolorem enim sint quaerat assumenda provident. Atque mollitia impedit in hic.', 1, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1),
(17, 1, 1, 2, NULL, 'Optio sed error velit.', '2023-10-12', 'Aliquam vero soluta tenetur architecto et deleniti. Non corrupti reprehenderit eum voluptatem cum unde. Exercitationem occaecati et esse maiores eum.', 1, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1),
(18, 1, 1, 2, NULL, 'Et voluptatem repellat assumenda est voluptatem quos temporibus.', '2023-10-12', 'Ut mollitia hic autem neque voluptas. Quia quam doloribus rerum ea repellendus laborum. Dolores porro eum magni quam laboriosam magnam. Quia explicabo ad unde autem reprehenderit ut.', 1, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1),
(19, 1, 1, 2, NULL, 'Sed quisquam est consectetur soluta aut sunt.', '2023-10-12', 'Aut unde et autem. Ut quasi in id rem perspiciatis error quo. Dignissimos et et ad qui cumque.', 1, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1),
(20, 1, 1, 2, NULL, 'Sunt quisquam sequi et quo et.', '2023-10-12', 'Unde voluptas vero omnis tenetur modi quisquam. Quaerat sunt sit sit. Fugit error fugit aliquam ut. Cumque deserunt alias voluptatem ipsa quaerat ut itaque. Omnis quibusdam in aut repellat labore sed.', 1, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1),
(21, 1, 1, 3, NULL, 'Blanditiis quia placeat id quia.', '2023-10-12', 'Repudiandae vero perferendis culpa velit rerum unde perspiciatis. Hic voluptatem alias eum ab itaque. Assumenda labore quo nemo minima quidem sint ipsam molestias.', 1, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1),
(22, 1, 1, 3, NULL, 'Consequuntur harum laudantium quasi blanditiis facilis ad.', '2023-10-12', 'Eius laboriosam nostrum autem quas necessitatibus et optio sed. Rerum sunt porro aut delectus rerum voluptatem. Sapiente dolorem iste temporibus et aperiam.', 1, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1),
(23, 1, 1, 3, NULL, 'Vel est est non ad.', '2023-10-12', 'Atque consequatur ratione qui. Fugiat est asperiores inventore beatae rerum a vel voluptate.', 1, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1),
(24, 1, 1, 3, NULL, 'Rerum eos veritatis libero unde ut voluptatem.', '2023-10-12', 'Nobis consequatur et ut assumenda. Tenetur odio autem iusto maiores consequatur quia aut.', 1, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1),
(25, 1, 1, 3, NULL, 'Delectus libero consequatur et libero rem ipsam nostrum est.', '2023-10-12', 'Eum ipsam nemo velit est occaecati vel. Aut cumque sit ea dolorem quia. Tenetur provident sint enim rem expedita.', 1, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1),
(26, 1, 1, 3, NULL, 'Voluptas officia ut nihil beatae eum impedit modi.', '2023-10-12', 'Qui et rem necessitatibus non est quas sit. Tempore quia et harum ratione quia et nulla.', 1, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1),
(27, 1, 1, 3, NULL, 'Recusandae possimus dolore molestiae voluptas tenetur accusamus.', '2023-10-12', 'Non culpa vero mollitia. Et quisquam sed excepturi et sed qui quasi. Aut atque delectus velit autem quo nemo. Qui explicabo cupiditate aperiam rerum.', 1, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1),
(28, 1, 1, 3, NULL, 'Doloribus fuga consequuntur qui perferendis sed.', '2023-10-12', 'Blanditiis veritatis voluptatum qui et. Rerum dolor eum illum quia eveniet fugit. Eius doloribus adipisci corrupti expedita illo dolores vel.', 1, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1),
(29, 1, 1, 3, NULL, 'Voluptatum culpa est cumque quo doloribus.', '2023-10-12', 'Deleniti et facilis rerum delectus iste veritatis. Accusantium velit quia qui atque qui nulla. Ratione voluptatum iusto enim laborum.', 1, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1),
(30, 1, 1, 3, NULL, 'Possimus neque quas et sed reiciendis eaque.', '2023-10-12', 'Veritatis iste autem sapiente. Velit quis et consectetur aut explicabo. Et aut fugit delectus corrupti et ut. Totam porro rerum placeat dolor porro ut et suscipit. Sed accusantium fugiat unde earum eveniet nobis dolore.', 1, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1);

-- --------------------------------------------------------

--
-- Table structure for table `notice_departments`
--

CREATE TABLE `notice_departments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `department_id` int(11) NOT NULL,
  `noticeable_id` int(11) NOT NULL,
  `noticeable_type` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `branch_id` bigint(20) UNSIGNED DEFAULT 1,
  `company_id` bigint(20) UNSIGNED DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `notice_view_logs`
--

CREATE TABLE `notice_view_logs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `company_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `notice_id` bigint(20) UNSIGNED NOT NULL,
  `is_view` tinyint(4) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `branch_id` bigint(20) UNSIGNED DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notice_view_logs`
--

INSERT INTO `notice_view_logs` (`id`, `company_id`, `user_id`, `notice_id`, `is_view`, `created_at`, `updated_at`, `branch_id`) VALUES
(1, 1, 1, 1, 0, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1),
(2, 1, 1, 2, 0, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1),
(3, 1, 1, 3, 0, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1),
(4, 1, 1, 4, 0, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1),
(5, 1, 1, 5, 0, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1),
(6, 1, 1, 6, 0, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1),
(7, 1, 1, 7, 0, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1),
(8, 1, 1, 8, 0, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1),
(9, 1, 1, 9, 0, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1),
(10, 1, 1, 10, 0, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sender_id` bigint(20) UNSIGNED DEFAULT NULL,
  `receiver_id` bigint(20) UNSIGNED DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `message` varchar(255) DEFAULT NULL,
  `image_id` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `notifiable_type` varchar(255) NOT NULL,
  `notifiable_id` bigint(20) UNSIGNED NOT NULL,
  `data` text NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `notification_for` varchar(255) DEFAULT NULL,
  `id_for` bigint(20) DEFAULT NULL,
  `branch_id` bigint(20) UNSIGNED DEFAULT 1,
  `company_id` bigint(20) UNSIGNED DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `sender_id`, `receiver_id`, `title`, `message`, `image_id`, `type`, `notifiable_type`, `notifiable_id`, `data`, `read_at`, `created_at`, `updated_at`, `notification_for`, `id_for`, `branch_id`, `company_id`) VALUES
(1, 1, 3, 'New Notification', 'Thank you for joining', NULL, NULL, '', 0, '', NULL, NULL, NULL, NULL, NULL, 1, 1),
(2, 1, 6, 'New Notification', 'Thank you for joining', NULL, 'notification', '', 0, '', NULL, NULL, NULL, NULL, NULL, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `notifications_old`
--

CREATE TABLE `notifications_old` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sender_id` bigint(20) UNSIGNED NOT NULL,
  `receiver_id` bigint(20) UNSIGNED DEFAULT NULL,
  `type` enum('notification','message') NOT NULL DEFAULT 'notification' COMMENT 'notification: notification, message: message',
  `title` varchar(255) DEFAULT NULL,
  `message` text DEFAULT NULL,
  `image_id` bigint(20) UNSIGNED DEFAULT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `branch_id` bigint(20) UNSIGNED DEFAULT 1,
  `company_id` bigint(20) UNSIGNED DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `notification_types`
--

CREATE TABLE `notification_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(255) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `status_id` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `icon` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `branch_id` bigint(20) UNSIGNED DEFAULT 1,
  `company_id` bigint(20) UNSIGNED DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notification_types`
--

INSERT INTO `notification_types` (`id`, `type`, `title`, `description`, `status_id`, `icon`, `created_at`, `updated_at`, `branch_id`, `company_id`) VALUES
(1, 'leave_request', 'Leave Request', 'Your Leave Request has been sent', 1, NULL, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1, 1),
(2, 'leave_approved', 'Leave Approved', 'Your Leave Application has been approved', 1, NULL, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1, 1),
(3, 'leave_rejected', 'Leave Rejected', 'Your Leave Application has been Rejected', 1, NULL, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1, 1),
(4, 'leave_cancelled', 'Leave Cancelled', 'Your Leave Application has been Cancelled', 1, NULL, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1, 1),
(5, 'leave_referred', 'Leave Referred', 'Your Leave Application has been Referred ', 1, NULL, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1, 1),
(6, 'notice', 'Notice', 'Notice ', 1, NULL, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `branch_id` bigint(20) UNSIGNED DEFAULT 1,
  `company_id` bigint(20) UNSIGNED DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payment_histories`
--

CREATE TABLE `payment_histories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `company_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `expense_claim_id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(191) DEFAULT NULL COMMENT 'invoice number',
  `payment_date` date DEFAULT NULL COMMENT 'date of payment',
  `remarks` varchar(191) DEFAULT NULL COMMENT 'remarks of payment',
  `payable_amount` double(10,2) DEFAULT NULL COMMENT 'amount of payment',
  `paid_amount` double(10,2) DEFAULT NULL COMMENT 'paid amount of payment',
  `due_amount` double(10,2) DEFAULT NULL COMMENT 'due amount of payment',
  `attachment_file_id` bigint(20) UNSIGNED DEFAULT NULL,
  `payment_status_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `branch_id` bigint(20) UNSIGNED DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payment_history_details`
--

CREATE TABLE `payment_history_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `company_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `payment_history_id` bigint(20) UNSIGNED NOT NULL,
  `payment_method_id` bigint(20) UNSIGNED NOT NULL,
  `payment_details` longtext DEFAULT NULL COMMENT 'remarks of payment',
  `payment_status_id` bigint(20) UNSIGNED NOT NULL,
  `payment_date` date DEFAULT NULL COMMENT 'date of payment',
  `paid_by_id` bigint(20) UNSIGNED DEFAULT NULL,
  `bank_name` varchar(191) DEFAULT NULL COMMENT 'bank name',
  `bank_branch` varchar(191) DEFAULT NULL COMMENT 'bank branch',
  `bank_account_number` varchar(191) DEFAULT NULL COMMENT 'bank account number',
  `bank_account_name` varchar(191) DEFAULT NULL COMMENT 'bank account name',
  `bank_transaction_number` varchar(191) DEFAULT NULL COMMENT 'bank transaction number',
  `bank_transaction_date` date DEFAULT NULL COMMENT 'bank transaction date',
  `bank_transaction_ref` varchar(191) DEFAULT NULL COMMENT 'bank transaction ref',
  `cheque_number` varchar(191) DEFAULT NULL COMMENT 'cheque number',
  `cheque_date` date DEFAULT NULL COMMENT 'cheque date',
  `cheque_bank_name` varchar(191) DEFAULT NULL COMMENT 'cheque bank name',
  `cheque_branch` varchar(191) DEFAULT NULL COMMENT 'cheque branch',
  `cheque_ref` varchar(191) DEFAULT NULL COMMENT 'cheque ref',
  `cash_number` varchar(191) DEFAULT NULL COMMENT 'cash number',
  `cash_date` date DEFAULT NULL COMMENT 'cash date',
  `cash_ref` varchar(191) DEFAULT NULL COMMENT 'cash ref',
  `paid_amount` double(15,2) NOT NULL DEFAULT 0.00,
  `due_amount` double(15,2) NOT NULL DEFAULT 0.00,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `branch_id` bigint(20) UNSIGNED DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payment_history_logs`
--

CREATE TABLE `payment_history_logs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `company_id` bigint(20) UNSIGNED NOT NULL,
  `payment_history_id` bigint(20) UNSIGNED NOT NULL,
  `expense_claim_id` bigint(20) UNSIGNED NOT NULL,
  `payable_amount` double(10,2) DEFAULT NULL COMMENT 'amount of payment',
  `paid_amount` double(10,2) DEFAULT NULL COMMENT 'paid amount of payment',
  `due_amount` double(10,2) DEFAULT NULL COMMENT 'due amount of payment',
  `date` date DEFAULT NULL,
  `paid_by_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `branch_id` bigint(20) UNSIGNED DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payment_methods`
--

CREATE TABLE `payment_methods` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `company_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `attachment_file_id` bigint(20) UNSIGNED DEFAULT NULL,
  `status_id` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `branch_id` bigint(20) UNSIGNED DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payment_methods`
--

INSERT INTO `payment_methods` (`id`, `company_id`, `name`, `attachment_file_id`, `status_id`, `created_at`, `updated_at`, `deleted_at`, `branch_id`) VALUES
(1, 1, 'Cash', NULL, 1, '2023-10-12 07:48:59', '2023-10-12 07:48:59', NULL, 1),
(2, 1, 'Cheque', NULL, 1, '2023-10-12 07:48:59', '2023-10-12 07:48:59', NULL, 1),
(3, 1, 'Bank Transfer', NULL, 1, '2023-10-12 07:48:59', '2023-10-12 07:48:59', NULL, 1),
(4, 1, 'Credit Card', NULL, 1, '2023-10-12 07:48:59', '2023-10-12 07:48:59', NULL, 1),
(5, 1, 'Debit Card', NULL, 1, '2023-10-12 07:48:59', '2023-10-12 07:48:59', NULL, 1),
(6, 1, 'Paypal', NULL, 1, '2023-10-12 07:48:59', '2023-10-12 07:48:59', NULL, 1),
(7, 1, 'Stripe', NULL, 1, '2023-10-12 07:48:59', '2023-10-12 07:48:59', NULL, 1),
(8, 1, 'Payoneer', NULL, 1, '2023-10-12 07:48:59', '2023-10-12 07:48:59', NULL, 1),
(9, 1, 'Paytm', NULL, 1, '2023-10-12 07:48:59', '2023-10-12 07:48:59', NULL, 1),
(10, 1, 'Amazon Pay', NULL, 1, '2023-10-12 07:48:59', '2023-10-12 07:48:59', NULL, 1),
(11, 1, 'Google Pay', NULL, 1, '2023-10-12 07:48:59', '2023-10-12 07:48:59', NULL, 1),
(12, 1, 'Apple Pay', NULL, 1, '2023-10-12 07:48:59', '2023-10-12 07:48:59', NULL, 1),
(13, 1, 'Phone Pay', NULL, 1, '2023-10-12 07:48:59', '2023-10-12 07:48:59', NULL, 1),
(14, 1, 'Other', NULL, 1, '2023-10-12 07:48:59', '2023-10-12 07:48:59', NULL, 1),
(15, 1, 'Cash', NULL, 1, '2023-10-12 07:48:59', '2023-10-12 07:48:59', NULL, 1),
(16, 1, 'Cheque', NULL, 1, '2023-10-12 07:48:59', '2023-10-12 07:48:59', NULL, 1),
(17, 1, 'Bank Transfer', NULL, 1, '2023-10-12 07:48:59', '2023-10-12 07:48:59', NULL, 1),
(18, 1, 'Credit Card', NULL, 1, '2023-10-12 07:48:59', '2023-10-12 07:48:59', NULL, 1),
(19, 1, 'Debit Card', NULL, 1, '2023-10-12 07:48:59', '2023-10-12 07:48:59', NULL, 1),
(20, 1, 'Paypal', NULL, 1, '2023-10-12 07:48:59', '2023-10-12 07:48:59', NULL, 1),
(21, 1, 'Stripe', NULL, 1, '2023-10-12 07:48:59', '2023-10-12 07:48:59', NULL, 1),
(22, 1, 'Payoneer', NULL, 1, '2023-10-12 07:48:59', '2023-10-12 07:48:59', NULL, 1),
(23, 1, 'Paytm', NULL, 1, '2023-10-12 07:48:59', '2023-10-12 07:48:59', NULL, 1),
(24, 1, 'Amazon Pay', NULL, 1, '2023-10-12 07:48:59', '2023-10-12 07:48:59', NULL, 1),
(25, 1, 'Google Pay', NULL, 1, '2023-10-12 07:48:59', '2023-10-12 07:48:59', NULL, 1),
(26, 1, 'Apple Pay', NULL, 1, '2023-10-12 07:48:59', '2023-10-12 07:48:59', NULL, 1),
(27, 1, 'Phone Pay', NULL, 1, '2023-10-12 07:48:59', '2023-10-12 07:48:59', NULL, 1),
(28, 1, 'Other', NULL, 1, '2023-10-12 07:48:59', '2023-10-12 07:48:59', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `payment_types`
--

CREATE TABLE `payment_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `type` int(11) NOT NULL DEFAULT 1 COMMENT '1 - cash, 2 - credit card, 3 - debit card, 4 - bank',
  `status_id` bigint(20) UNSIGNED DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `branch_id` bigint(20) UNSIGNED DEFAULT 1,
  `company_id` bigint(20) UNSIGNED DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payment_types`
--

INSERT INTO `payment_types` (`id`, `name`, `type`, `status_id`, `deleted_at`, `created_at`, `updated_at`, `branch_id`, `company_id`) VALUES
(1, 'Cash', 1, 1, NULL, NULL, NULL, 1, 1),
(2, 'Credit Card', 2, 1, NULL, NULL, NULL, 1, 1),
(3, 'Debit Card', 3, 1, NULL, NULL, NULL, 1, 1),
(4, 'Bank', 4, 1, NULL, NULL, NULL, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `attribute` varchar(255) DEFAULT NULL,
  `keywords` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `branch_id` bigint(20) UNSIGNED DEFAULT 1,
  `company_id` bigint(20) UNSIGNED DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `attribute`, `keywords`, `created_at`, `updated_at`, `branch_id`, `company_id`) VALUES
(1, 'hr_menu', '{\"menu\":\"hr_menu\"}', '2023-10-12 07:48:58', '2023-10-12 07:48:58', 1, 1),
(2, 'designations', '{\"read\":\"designation_read\",\"create\":\"designation_create\",\"update\":\"designation_update\",\"delete\":\"designation_delete\"}', '2023-10-12 07:48:58', '2023-10-12 07:48:58', 1, 1),
(3, 'departments', '{\"read\":\"department_read\",\"create\":\"department_create\",\"update\":\"department_update\",\"delete\":\"department_delete\"}', '2023-10-12 07:48:58', '2023-10-12 07:48:58', 1, 1),
(4, 'users', '{\"read\":\"user_read\",\"profile\":\"profile_view\",\"create\":\"user_create\",\"edit\":\"user_edit\",\"user_permission\":\"user_permission\",\"update\":\"user_update\",\"delete\":\"user_delete\",\"menu\":\"user_menu\",\"make_hr\":\"make_hr\",\"profile_image_view\":\"profile_image_view\"}', '2023-10-12 07:48:58', '2023-10-12 07:48:58', 1, 1),
(5, 'user_device', '{\"list\":\"user_device_list\",\"reset\":\"reset_device\"}', '2023-10-12 07:48:58', '2023-10-12 07:48:58', 1, 1),
(6, 'profile', '{\"attendance_profile\":\"attendance_profile\",\"contract_profile\":\"contract_profile\",\"phonebook_profile\":\"phonebook_profile\",\"support_ticket_profile\":\"support_ticket_profile\",\"advance_profile\":\"advance_profile\",\"commission_profile\":\"commission_profile\",\"appointment_profile\":\"appointment_profile\",\"visit_profile\":\"visit_profile\",\"leave_request_profile\":\"leave_request_profile\",\"notice_profile\":\"notice_profile\",\"salary_profile\":\"salary_profile\",\"project_profile\":\"project_profile\",\"task_profile\":\"task_profile\",\"award_profile\":\"award_profile\",\"travel_profile\":\"travel_profile\"}', '2023-10-12 07:48:58', '2023-10-12 07:48:58', 1, 1),
(7, 'roles', '{\"read\":\"role_read\",\"create\":\"role_create\",\"update\":\"role_update\",\"delete\":\"role_delete\"}', '2023-10-12 07:48:58', '2023-10-12 07:48:58', 1, 1),
(8, 'branch', '{\"read\":\"branch_read\",\"create\":\"branch_create\",\"update\":\"branch_update\",\"delete\":\"branch_delete\"}', '2023-10-12 07:48:58', '2023-10-12 07:48:58', 1, 1),
(9, 'leave_type', '{\"read\":\"leave_type_read\",\"create\":\"leave_type_create\",\"update\":\"leave_type_update\",\"delete\":\"leave_type_delete\",\"menu\":\"leave_menu\"}', '2023-10-12 07:48:58', '2023-10-12 07:48:58', 1, 1),
(10, 'leave_assign', '{\"read\":\"leave_assign_read\",\"create\":\"leave_assign_create\",\"update\":\"leave_assign_update\",\"delete\":\"leave_assign_delete\"}', '2023-10-12 07:48:58', '2023-10-12 07:48:58', 1, 1),
(11, 'daily_leave', '{\"read\":\"daily_leave_read\"}', '2023-10-12 07:48:58', '2023-10-12 07:48:58', 1, 1),
(12, 'leave_request', '{\"read\":\"leave_request_read\",\"update\":\"leave_request_update\",\"store\":\"leave_request_store\",\"create\":\"leave_request_create\",\"approve\":\"leave_request_approve\",\"reject\":\"leave_request_reject\",\"delete\":\"leave_request_delete\"}', '2023-10-12 07:48:58', '2023-10-12 07:48:58', 1, 1),
(13, 'weekend', '{\"read\":\"weekend_read\",\"update\":\"weekend_update\"}', '2023-10-12 07:48:58', '2023-10-12 07:48:58', 1, 1),
(14, 'holiday', '{\"read\":\"holiday_read\",\"create\":\"holiday_create\",\"update\":\"holiday_update\",\"delete\":\"holiday_delete\"}', '2023-10-12 07:48:58', '2023-10-12 07:48:58', 1, 1),
(15, 'schedule', '{\"read\":\"schedule_read\",\"create\":\"schedule_create\",\"update\":\"schedule_update\",\"delete\":\"schedule_delete\"}', '2023-10-12 07:48:58', '2023-10-12 07:48:58', 1, 1),
(16, 'attendance', '{\"read\":\"attendance_read\",\"create\":\"attendance_create\",\"update\":\"attendance_update\",\"delete\":\"attendance_delete\",\"menu\":\"attendance_menu\"}', '2023-10-12 07:48:58', '2023-10-12 07:48:58', 1, 1),
(17, 'shift', '{\"read\":\"shift_read\",\"create\":\"shift_create\",\"update\":\"shift_update\",\"delete\":\"shift_delete\",\"menu\":\"shift_menu\"}', '2023-10-12 07:48:58', '2023-10-12 07:48:58', 1, 1),
(18, 'payroll', '{\"menu\":\"payroll_menu\",\"payroll_item read\":\"list_payroll_item\",\"payroll_item create\":\"create_payroll_item\",\"payroll_item store\":\"store_payroll_item\",\"payroll_item edit\":\"edit_payroll_item\",\"payroll_item update\":\"update_payroll_item\",\"payroll_item delete\":\"delete_payroll_item\",\"payroll_item view\":\"view_payroll_item\",\"payroll_item menu\":\"payroll_item_menu\",\"list_payroll_set \":\"list_payroll_set\",\"create_payroll_set\":\"create_payroll_set\",\"store_payroll_set\":\"store_payroll_set\",\"edit_payroll_set\":\"edit_payroll_set\",\"update_payroll_set\":\"update_payroll_set\",\"delete_payroll_set\":\"delete_payroll_set\",\"view_payroll_set\":\"view_payroll_set\",\"payroll_set_menu\":\"payroll_set_menu\"}', '2023-10-12 07:48:58', '2023-10-12 07:48:58', 1, 1),
(19, 'payslip', '{\"menu\":\"payslip_menu\",\"salary_generate\":\"salary_generate\",\"salary_view\":\"salary_view\",\"salary_delete\":\"salary_delete\",\"salary_edit\":\"salary_edit\",\"salary_update\":\"salary_update\",\"salary_payment\":\"salary_payment\",\"payslip_list\":\"payslip_list\"}', '2023-10-12 07:48:58', '2023-10-12 07:48:58', 1, 1),
(20, 'announcement', '{\"menu\":\"announcement_menu\",\"notice_menu\":\"notice_menu\",\"notice_list\":\"notice_list\",\"notice_edit\":\"notice_edit\",\"notice_update\":\"notice_update\",\"notice_create\":\"notice_create\",\"notice_delete\":\"notice_delete\"}', '2023-10-12 07:48:58', '2023-10-12 07:48:58', 1, 1),
(21, 'advance_type', '{\"menu\":\"advance_type_menu\",\"advance_type_create\":\"advance_type_create\",\"advance_type_store\":\"advance_type_store\",\"advance_type_edit\":\"advance_type_edit\",\"advance_type_update\":\"advance_type_update\",\"advance_type_delete\":\"advance_type_delete\",\"advance_type_view\":\"advance_type_view\",\"advance_type_list\":\"advance_type_list\"}', '2023-10-12 07:48:58', '2023-10-12 07:48:58', 1, 1),
(22, 'advance_pay', '{\"menu\":\"advance_salaries_menu\",\"advance_salaries_create\":\"advance_salaries_create\",\"advance_salaries_store\":\"advance_salaries_store\",\"advance_salaries_edit\":\"advance_salaries_edit\",\"advance_salaries_update\":\"advance_salaries_update\",\"advance_salaries_delete\":\"advance_salaries_delete\",\"advance_salaries_view\":\"advance_salaries_view\",\"advance_salaries_approve\":\"advance_salaries_approve\",\"advance_salaries_list\":\"advance_salaries_list\",\"advance_salaries_pay\":\"advance_salaries_pay\",\"advance_salaries_invoice\":\"advance_salaries_invoice\",\"advance_salaries_search\":\"advance_salaries_search\"}', '2023-10-12 07:48:58', '2023-10-12 07:48:58', 1, 1),
(23, 'salary', '{\"menu\":\"salary_menu\",\"salary_store\":\"salary_store\",\"salary_edit\":\"salary_edit\",\"salary_update\":\"salary_update\",\"salary_delete\":\"salary_delete\",\"salary_view\":\"salary_view\",\"salary_list\":\"salary_list\",\"salary_pay\":\"salary_pay\",\"salary_invoice\":\"salary_invoice\",\"salary_approve\":\"salary_approve\",\"salary_generate\":\"salary_generate\",\"salary_calculate\":\"salary_calculate\",\"salary_search\":\"salary_search\"}', '2023-10-12 07:48:58', '2023-10-12 07:48:58', 1, 1),
(24, 'account', '{\"menu\":\"account_menu\",\"account_create\":\"account_create\",\"account_store\":\"account_store\",\"account_edit\":\"account_edit\",\"account_update\":\"account_update\",\"account_delete\":\"account_delete\",\"account_view\":\"account_view\",\"account_list\":\"account_list\",\"account_search\":\"account_search\"}', '2023-10-12 07:48:58', '2023-10-12 07:48:58', 1, 1),
(25, 'deposit', '{\"menu\":\"deposit_menu\",\"deposit_create\":\"deposit_create\",\"deposit_store\":\"deposit_store\",\"deposit_edit\":\"deposit_edit\",\"deposit_update\":\"deposit_update\",\"deposit_delete\":\"deposit_delete\",\"deposit_list\":\"deposit_list\"}', '2023-10-12 07:48:58', '2023-10-12 07:48:58', 1, 1),
(26, 'expense', '{\"menu\":\"expense_menu\",\"expense_create\":\"expense_create\",\"expense_store\":\"expense_store\",\"expense_edit\":\"expense_edit\",\"expense_update\":\"expense_update\",\"expense_delete\":\"expense_delete\",\"expense_list\":\"expense_list\",\"expense_approve\":\"expense_approve\",\"expense_invoice\":\"expense_invoice\",\"expense_pay\":\"expense_pay\",\"expense_view\":\"expense_view\"}', '2023-10-12 07:48:58', '2023-10-12 07:48:58', 1, 1),
(27, 'deposit_category', '{\"menu\":\"deposit_category_menu\",\"deposit_category_create\":\"deposit_category_create\",\"deposit_category_store\":\"deposit_category_store\",\"deposit_category_edit\":\"deposit_category_edit\",\"deposit_category_update\":\"deposit_category_update\",\"deposit_category_delete\":\"deposit_category_delete\",\"deposit_category_list\":\"deposit_category_list\"}', '2023-10-12 07:48:58', '2023-10-12 07:48:58', 1, 1),
(28, 'payment_method', '{\"menu\":\"payment_method_menu\",\"payment_method_create\":\"payment_method_create\",\"payment_method_store\":\"payment_method_store\",\"payment_method_edit\":\"payment_method_edit\",\"payment_method_update\":\"payment_method_update\",\"payment_method_delete\":\"payment_method_delete\",\"payment_method_list\":\"payment_method_list\"}', '2023-10-12 07:48:58', '2023-10-12 07:48:58', 1, 1),
(29, 'transaction', '{\"menu\":\"transaction_menu\",\"transaction_create\":\"transaction_create\",\"transaction_store\":\"transaction_store\",\"transaction_edit\":\"transaction_edit\",\"transaction_update\":\"transaction_update\",\"transaction_delete\":\"transaction_delete\",\"transaction_view\":\"transaction_view\",\"transaction_list\":\"transaction_list\"}', '2023-10-12 07:48:58', '2023-10-12 07:48:58', 1, 1),
(30, 'project', '{\"menu\":\"project_menu\",\"project_create\":\"project_create\",\"project_store\":\"project_store\",\"project_edit\":\"project_edit\",\"project_update\":\"project_update\",\"project_delete\":\"project_delete\",\"project_view\":\"project_view\",\"project_list\":\"project_list\",\"project_activity_view\":\"project_activity_view\",\"project_member_view\":\"project_member_view\",\"project_member_delete\":\"project_member_delete\",\"project_complete\":\"project_complete\",\"project_payment\":\"project_payment\",\"project_invoice_view\":\"project_invoice_view\"}', '2023-10-12 07:48:58', '2023-10-12 07:48:58', 1, 1),
(31, 'project_discussion', '{\"project_discussion_create\":\"project_discussion_create\",\"project_discussion_store\":\"project_discussion_store\",\"project_discussion_edit\":\"project_discussion_edit\",\"project_discussion_update\":\"project_discussion_update\",\"project_discussion_delete\":\"project_discussion_delete\",\"project_discussion_view\":\"project_discussion_view\",\"project_discussion_list\":\"project_discussion_list\",\"project_discussion_comment\":\"project_discussion_comment\",\"project_discussion_reply\":\"project_discussion_reply\"}', '2023-10-12 07:48:58', '2023-10-12 07:48:58', 1, 1),
(32, 'project_file', '{\"project_file_create\":\"project_file_create\",\"project_file_store\":\"project_file_store\",\"project_file_edit\":\"project_file_edit\",\"project_file_update\":\"project_file_update\",\"project_file_delete\":\"project_file_delete\",\"project_file_view\":\"project_file_view\",\"project_file_list\":\"project_file_list\",\"project_file_download\":\"project_file_download\",\"project_file_comment\":\"project_file_comment\",\"project_file_reply\":\"project_file_reply\"}', '2023-10-12 07:48:58', '2023-10-12 07:48:58', 1, 1),
(33, 'project_notes', '{\"project_notes_create\":\"project_notes_create\",\"project_notes_store\":\"project_notes_store\",\"project_notes_edit\":\"project_notes_edit\",\"project_notes_update\":\"project_notes_update\",\"project_notes_delete\":\"project_notes_delete\",\"project_notes_list\":\"project_notes_list\",\"project_files_comment\":\"project_files_comment\"}', '2023-10-12 07:48:58', '2023-10-12 07:48:58', 1, 1),
(34, 'general_settings', '{\"general_settings_read\":\"general_settings_read\",\"general_settings_update\":\"general_settings_update\",\"email_settings_update\":\"email_settings_update\",\"storage_settings_update\":\"storage_settings_update\"}', '2023-10-12 07:48:58', '2023-10-12 07:48:58', 1, 1),
(35, 'task', '{\"menu\":\"task_menu\",\"task_create\":\"task_create\",\"task_store\":\"task_store\",\"task_edit\":\"task_edit\",\"task_update\":\"task_update\",\"task_delete\":\"task_delete\",\"task_view\":\"task_view\",\"task_list\":\"task_list\",\"task_activity_view\":\"task_activity_view\",\"task_assign_view\":\"task_assign_view\",\"task_assign_delete\":\"task_assign_delete\",\"task_complete\":\"task_complete\"}', '2023-10-12 07:48:58', '2023-10-12 07:48:58', 1, 1),
(36, 'client', '{\"menu\":\"client_menu\",\"client_create\":\"client_create\",\"client_store\":\"client_store\",\"client_edit\":\"client_edit\",\"client_update\":\"client_update\",\"client_delete\":\"client_delete\",\"client_view\":\"client_view\",\"client_list\":\"client_list\"}', '2023-10-12 07:48:58', '2023-10-12 07:48:58', 1, 1),
(37, 'task_discussion', '{\"task_discussion_create\":\"task_discussion_create\",\"task_discussion_store\":\"task_discussion_store\",\"task_discussion_edit\":\"task_discussion_edit\",\"task_discussion_update\":\"task_discussion_update\",\"task_discussion_delete\":\"task_discussion_delete\",\"task_discussion_view\":\"task_discussion_view\",\"task_discussion_list\":\"task_discussion_list\",\"task_discussion_comment\":\"task_discussion_comment\",\"task_discussion_reply\":\"task_discussion_reply\"}', '2023-10-12 07:48:58', '2023-10-12 07:48:58', 1, 1),
(38, 'task_file', '{\"task_file_create\":\"task_file_create\",\"task_file_store\":\"task_file_store\",\"task_file_edit\":\"task_file_edit\",\"task_file_update\":\"task_file_update\",\"task_file_delete\":\"task_file_delete\",\"task_file_view\":\"task_file_view\",\"task_file_list\":\"task_file_list\",\"task_file_download\":\"task_file_download\",\"task_file_comment\":\"task_file_comment\",\"task_file_reply\":\"task_file_reply\"}', '2023-10-12 07:48:58', '2023-10-12 07:48:58', 1, 1),
(39, 'task_notes', '{\"task_notes_create\":\"task_notes_create\",\"task_notes_store\":\"task_notes_store\",\"task_notes_edit\":\"task_notes_edit\",\"task_notes_update\":\"task_notes_update\",\"task_notes_delete\":\"task_notes_delete\",\"task_notes_list\":\"task_notes_list\",\"task_files_comment\":\"task_files_comment\"}', '2023-10-12 07:48:58', '2023-10-12 07:48:58', 1, 1),
(40, 'award_type', '{\"menu\":\"award_type_menu\",\"award_type_create\":\"award_type_create\",\"award_type_store\":\"award_type_store\",\"award_type_edit\":\"award_type_edit\",\"award_type_update\":\"award_type_update\",\"award_type_delete\":\"award_type_delete\",\"award_type_list\":\"award_type_list\"}', '2023-10-12 07:48:58', '2023-10-12 07:48:58', 1, 1),
(41, 'award', '{\"menu\":\"award_menu\",\"award_create\":\"award_create\",\"award_store\":\"award_store\",\"award_edit\":\"award_edit\",\"award_update\":\"award_update\",\"award_delete\":\"award_delete\",\"award_view\":\"award_view\",\"award_list\":\"award_list\"}', '2023-10-12 07:48:58', '2023-10-12 07:48:58', 1, 1),
(42, 'travel_type', '{\"menu\":\"travel_type_menu\",\"travel_type_create\":\"travel_type_create\",\"travel_type_store\":\"travel_type_store\",\"travel_type_edit\":\"travel_type_edit\",\"travel_type_update\":\"travel_type_update\",\"travel_type_delete\":\"travel_type_delete\",\"travel_type_list\":\"travel_type_list\"}', '2023-10-12 07:48:58', '2023-10-12 07:48:58', 1, 1),
(43, 'travel', '{\"menu\":\"travel_menu\",\"travel_create\":\"travel_create\",\"travel_store\":\"travel_store\",\"travel_edit\":\"travel_edit\",\"travel_update\":\"travel_update\",\"travel_delete\":\"travel_delete\",\"travel_view\":\"travel_view\",\"travel_list\":\"travel_list\",\"travel_approve\":\"travel_approve\",\"travel_payment\":\"travel_payment\"}', '2023-10-12 07:48:58', '2023-10-12 07:48:58', 1, 1),
(44, 'meeting', '{\"menu\":\"meeting_menu\",\"meeting_create\":\"meeting_create\",\"meeting_store\":\"meeting_store\",\"meeting_edit\":\"meeting_edit\",\"meeting_update\":\"meeting_update\",\"meeting_delete\":\"meeting_delete\",\"meeting_view\":\"meeting_view\",\"meeting_list\":\"meeting_list\"}', '2023-10-12 07:48:58', '2023-10-12 07:48:58', 1, 1),
(45, 'appointment', '{\"appointment_menu\":\"appointment_menu\",\"appointment_read\":\"appointment_read\",\"appointment_create\":\"appointment_create\",\"appointment_approve\":\"appointment_approve\",\"appointment_reject\":\"appointment_reject\",\"appointment_delete\":\"appointment_delete\"}', '2023-10-12 07:48:58', '2023-10-12 07:48:58', 1, 1),
(46, 'performance', '{\"menu\":\"performance_menu\",\"settings\":\"performance_settings\"}', '2023-10-12 07:48:58', '2023-10-12 07:48:58', 1, 1),
(47, 'performance_indicator', '{\"menu\":\"performance_indicator_menu\",\"performance_indicator_create\":\"performance_indicator_create\",\"performance_indicator_store\":\"performance_indicator_store\",\"performance_indicator_edit\":\"performance_indicator_edit\",\"performance_indicator_update\":\"performance_indicator_update\",\"performance_indicator_delete\":\"performance_indicator_delete\",\"performance_indicator_list\":\"performance_indicator_list\",\"performance_indicator_view\":\"performance_indicator_view\"}', '2023-10-12 07:48:58', '2023-10-12 07:48:58', 1, 1),
(48, 'performance_appraisal', '{\"menu\":\"performance_appraisal_menu\",\"performance_appraisal_create\":\"performance_appraisal_create\",\"performance_appraisal_store\":\"performance_appraisal_store\",\"performance_appraisal_edit\":\"performance_appraisal_edit\",\"performance_appraisal_update\":\"performance_appraisal_update\",\"performance_appraisal_delete\":\"performance_appraisal_delete\",\"performance_appraisal_list\":\"performance_appraisal_list\",\"performance_appraisal_view\":\"performance_appraisal_view\"}', '2023-10-12 07:48:58', '2023-10-12 07:48:58', 1, 1),
(49, 'performance_goal_type', '{\"menu\":\"performance_goal_type_menu\",\"performance_goal_type_create\":\"performance_goal_type_create\",\"performance_goal_type_store\":\"performance_goal_type_store\",\"performance_goal_type_edit\":\"performance_goal_type_edit\",\"performance_goal_type_update\":\"performance_goal_type_update\",\"performance_goal_type_delete\":\"performance_goal_type_delete\",\"performance_goal_type_list\":\"performance_goal_type_list\"}', '2023-10-12 07:48:58', '2023-10-12 07:48:58', 1, 1),
(50, 'performance_goal', '{\"menu\":\"performance_goal_menu\",\"performance_goal_create\":\"performance_goal_create\",\"performance_goal_store\":\"performance_goal_store\",\"performance_goal_edit\":\"performance_goal_edit\",\"performance_goal_update\":\"performance_goal_update\",\"performance_goal_delete\":\"performance_goal_delete\",\"performance_goal_view\":\"performance_goal_view\",\"performance_goal_list\":\"performance_goal_list\"}', '2023-10-12 07:48:58', '2023-10-12 07:48:58', 1, 1),
(51, 'performance_competence_type', '{\"menu\":\"performance_competence_type_menu\",\"performance_competence_type_create\":\"performance_competence_type_create\",\"performance_competence_type_store\":\"performance_competence_type_store\",\"performance_competence_type_edit\":\"performance_competence_type_edit\",\"performance_competence_type_update\":\"performance_competence_type_update\",\"performance_competence_type_delete\":\"performance_competence_type_delete\",\"performance_competence_type_list\":\"performance_competence_type_list\"}', '2023-10-12 07:48:58', '2023-10-12 07:48:58', 1, 1),
(52, 'performance_competence', '{\"menu\":\"performance_competence_menu\",\"performance_competence_create\":\"performance_competence_create\",\"performance_competence_store\":\"performance_competence_store\",\"performance_competence_edit\":\"performance_competence_edit\",\"performance_competence_update\":\"performance_competence_update\",\"performance_competence_delete\":\"performance_competence_delete\",\"performance_competence_list\":\"performance_competence_list\"}', '2023-10-12 07:48:58', '2023-10-12 07:48:58', 1, 1),
(53, 'report', '{\"attendance_report\":\"attendance_report_read\",\"live_tracking_read\":\"live_tracking_read\",\"menu\":\"report_menu\"}', '2023-10-12 07:48:58', '2023-10-12 07:48:58', 1, 1),
(54, 'leave_settings', '{\"read\":\"leave_settings_read\",\"update\":\"leave_settings_update\"}', '2023-10-12 07:48:58', '2023-10-12 07:48:58', 1, 1),
(55, 'ip', '{\"read\":\"ip_read\",\"create\":\"ip_create\",\"update\":\"ip_update\",\"delete\":\"ip_delete\"}', '2023-10-12 07:48:58', '2023-10-12 07:48:58', 1, 1),
(56, 'company_setup', '{\"menu\":\"company_setup_menu\",\"activation_read\":\"company_setup_activation\",\"activation_update\":\"company_setup_activation_update\",\"configuration_read\":\"company_setup_configuration\",\"configuration_update\":\"company_setup_configuration_update\",\"location_read\":\"company_setup_location\",\"company_update\":\"company_settings_update\"}', '2023-10-12 07:48:58', '2023-10-12 07:48:58', 1, 1),
(57, 'location', '{\"location_create\":\"location_create\",\"location_store\":\"location_store\",\"location_edit\":\"location_edit\",\"location_update\":\"location_update\",\"location_delete\":\"location_delete\"}', '2023-10-12 07:48:58', '2023-10-12 07:48:58', 1, 1),
(58, 'api_setup', '{\"read\":\"locationApi\"}', '2023-10-12 07:48:58', '2023-10-12 07:48:58', 1, 1),
(59, 'claim', '{\"read\":\"claim_read\",\"create\":\"claim_create\",\"update\":\"claim_update\",\"delete\":\"claim_delete\"}', '2023-10-12 07:48:58', '2023-10-12 07:48:58', 1, 1),
(60, 'payment', '{\"read\":\"payment_read\",\"create\":\"payment_create\",\"update\":\"payment_update\",\"delete\":\"payment_delete\"}', '2023-10-12 07:48:58', '2023-10-12 07:48:58', 1, 1),
(61, 'visit', '{\"menu\":\"visit_menu\",\"read\":\"visit_read\",\"update\":\"visit_update\",\"view\":\"visit_view\"}', '2023-10-12 07:48:58', '2023-10-12 07:48:58', 1, 1),
(62, 'app_settings', '{\"menu\":\"app_settings_menu\",\"update\":\"app_settings_update\"}', '2023-10-12 07:48:58', '2023-10-12 07:48:58', 1, 1),
(63, 'web_setup', '{\"menu\":\"web_setup_menu\"}', '2023-10-12 07:48:58', '2023-10-12 07:48:58', 1, 1),
(64, 'content', '{\"menu\":\"content_menu\",\"read\":\"content_read\",\"update\":\"content_update\",\"delete\":\"content_delete\"}', '2023-10-12 07:48:58', '2023-10-12 07:48:58', 1, 1),
(65, 'menu', '{\"menu\":\"menu\",\"create\":\"menu_create\",\"menu_store\":\"menu_store\",\"menu_edit\":\"menu_edit\",\"update\":\"menu_update\",\"delete\":\"menu_delete\"}', '2023-10-12 07:48:58', '2023-10-12 07:48:58', 1, 1),
(66, 'service', '{\"menu\":\"service_menu\",\"create\":\"service_create\",\"service_store\":\"service_store\",\"edit\":\"portfolio_edit\",\"update\":\"service_update\",\"delete\":\"service_delete\"}', '2023-10-12 07:48:58', '2023-10-12 07:48:58', 1, 1),
(67, 'portfolio', '{\"menu\":\"portfolio_menu\",\"create\":\"portfolio_create\",\"portfolio_store\":\"portfolio_store\",\"edit\":\"portfolio_edit\",\"update\":\"portfolio_update\",\"delete\":\"portfolio_delete\"}', '2023-10-12 07:48:58', '2023-10-12 07:48:58', 1, 1),
(68, 'contact', '{\"menu\":\"contact_menu\",\"read\":\"contact_read\",\"create\":\"contact_create\",\"update\":\"contact_update\",\"delete\":\"contact_delete\"}', '2023-10-12 07:48:58', '2023-10-12 07:48:58', 1, 1),
(69, 'language', '{\"menu\":\"language_menu\",\"create\":\"language_create\",\"edit\":\"language_edit\",\"update\":\"language_update\",\"delete\":\"language_delete\",\"make_default\":\"make_default\",\"setup_language\":\"setup_language\"}', '2023-10-12 07:48:58', '2023-10-12 07:48:58', 1, 1),
(70, 'team_member', '{\"menu\":\"team_member_menu\",\"read\":\"team_member_read\",\"create\":\"team_member_create\",\"team_member_store\":\"team_member_store\",\"team_member_edit\":\"team_member_edit\",\"update\":\"team_member_update\",\"delete\":\"team_member_delete\"}', '2023-10-12 07:48:58', '2023-10-12 07:48:58', 1, 1),
(71, 'support', '{\"support_menu\":\"support_menu\",\"support_read\":\"support_read\",\"support_create\":\"support_create\",\"support_reply\":\"support_reply\",\"support_delete\":\"support_delete\"}', '2023-10-12 07:48:58', '2023-10-12 07:48:58', 1, 1);

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
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `branch_id` bigint(20) UNSIGNED DEFAULT 1,
  `company_id` bigint(20) UNSIGNED DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `portfolios`
--

CREATE TABLE `portfolios` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `attachment` bigint(20) UNSIGNED DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `status_id` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `branch_id` bigint(20) UNSIGNED DEFAULT 1,
  `company_id` bigint(20) UNSIGNED DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `invoice` varchar(255) DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `company_id` bigint(20) UNSIGNED NOT NULL,
  `date` date DEFAULT NULL,
  `progress_from_tasks` int(11) DEFAULT 1,
  `progress` int(11) DEFAULT 0,
  `billing_type` enum('hourly','fixed') DEFAULT NULL,
  `per_rate` double(16,2) DEFAULT NULL,
  `total_rate` double(16,2) DEFAULT NULL,
  `estimated_hour` double(16,2) DEFAULT NULL,
  `status_id` bigint(20) UNSIGNED NOT NULL DEFAULT 24,
  `priority` bigint(20) UNSIGNED NOT NULL DEFAULT 24,
  `description` longtext NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `payment` bigint(20) UNSIGNED NOT NULL DEFAULT 9,
  `amount` double(16,2) DEFAULT NULL,
  `paid` double(16,2) NOT NULL DEFAULT 0.00,
  `due` double(16,2) NOT NULL DEFAULT 0.00,
  `created_by` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `notify_all_users` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0=no,1=yes',
  `notify_all_users_email` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0=no,1=yes',
  `goal_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `branch_id` bigint(20) UNSIGNED DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`id`, `name`, `invoice`, `client_id`, `company_id`, `date`, `progress_from_tasks`, `progress`, `billing_type`, `per_rate`, `total_rate`, `estimated_hour`, `status_id`, `priority`, `description`, `start_date`, `end_date`, `payment`, `amount`, `paid`, `due`, `created_by`, `notify_all_users`, `notify_all_users_email`, `goal_id`, `created_at`, `updated_at`, `branch_id`) VALUES
(1, 'eCommerce Project', '1', 1, 2, '2023-10-12', 1, 1, 'hourly', 15.00, 0.00, 300.00, 26, 29, '<strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '2023-10-12', '2023-11-12', 9, 4500.00, 0.00, 4500.00, 2, 0, 0, NULL, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1);

-- --------------------------------------------------------

--
-- Table structure for table `project_activities`
--

CREATE TABLE `project_activities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `company_id` bigint(20) UNSIGNED NOT NULL,
  `description` longtext NOT NULL,
  `project_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `last_activity` timestamp NULL DEFAULT NULL,
  `branch_id` bigint(20) UNSIGNED DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `project_files`
--

CREATE TABLE `project_files` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `company_id` bigint(20) UNSIGNED NOT NULL,
  `subject` varchar(255) NOT NULL,
  `show_to_customer` bigint(20) UNSIGNED NOT NULL DEFAULT 22,
  `project_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `attachment` bigint(20) UNSIGNED DEFAULT NULL,
  `status_id` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `last_activity` timestamp NULL DEFAULT NULL,
  `branch_id` bigint(20) UNSIGNED DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `project_files`
--

INSERT INTO `project_files` (`id`, `company_id`, `subject`, `show_to_customer`, `project_id`, `user_id`, `attachment`, `status_id`, `created_at`, `updated_at`, `last_activity`, `branch_id`) VALUES
(1, 1, 'Demo File', 22, 1, 3, NULL, 1, '2023-10-12 07:48:59', '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1);

-- --------------------------------------------------------

--
-- Table structure for table `project_file_comments`
--

CREATE TABLE `project_file_comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED DEFAULT NULL,
  `company_id` bigint(20) UNSIGNED NOT NULL,
  `description` longtext NOT NULL,
  `show_to_customer` tinyint(4) NOT NULL DEFAULT 1 COMMENT '0=no,1=yes',
  `project_file_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `attachment` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `branch_id` bigint(20) UNSIGNED DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `project_file_comments`
--

INSERT INTO `project_file_comments` (`id`, `comment_id`, `company_id`, `description`, `show_to_customer`, `project_file_id`, `user_id`, `attachment`, `created_at`, `updated_at`, `branch_id`) VALUES
(1, NULL, 2, '<strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 33, 1, 4, NULL, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1),
(2, 1, 2, '<strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 33, 1, 3, NULL, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1);

-- --------------------------------------------------------

--
-- Table structure for table `project_membars`
--

CREATE TABLE `project_membars` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `company_id` bigint(20) UNSIGNED NOT NULL,
  `project_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `added_by` bigint(20) UNSIGNED NOT NULL,
  `status_id` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `branch_id` bigint(20) UNSIGNED DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `project_membars`
--

INSERT INTO `project_membars` (`id`, `company_id`, `project_id`, `user_id`, `added_by`, `status_id`, `created_at`, `updated_at`, `branch_id`) VALUES
(1, 2, 1, 4, 2, 1, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1);

-- --------------------------------------------------------

--
-- Table structure for table `project_payments`
--

CREATE TABLE `project_payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `amount` double(16,2) NOT NULL,
  `due_amount` double(16,2) DEFAULT NULL,
  `project_id` bigint(20) UNSIGNED NOT NULL,
  `company_id` bigint(20) UNSIGNED NOT NULL,
  `transaction_id` bigint(20) UNSIGNED DEFAULT NULL,
  `payment_method_id` bigint(20) UNSIGNED DEFAULT NULL,
  `paid_by` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `created_by` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `updated_by` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `payment_note` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `branch_id` bigint(20) UNSIGNED DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `company_id` bigint(20) UNSIGNED NOT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `permissions` longtext DEFAULT NULL,
  `upper_roles` varchar(255) DEFAULT NULL,
  `status_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `app_login` tinyint(1) DEFAULT 1,
  `web_login` tinyint(1) DEFAULT 1,
  `branch_id` bigint(20) UNSIGNED DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `company_id`, `slug`, `permissions`, `upper_roles`, `status_id`, `created_at`, `updated_at`, `deleted_at`, `app_login`, `web_login`, `branch_id`) VALUES
(1, 'superadmin', 1, 'superadmin', '[\"team_menu\",\"team_list\",\"team_create\",\"team_update\",\"team_edit\",\"team_delete\",\"team_member_view\",\"team_member_create\",\"team_member_edit\",\"team_member_delete\",\"team_member_assign\",\"team_member_unassign\",\"dashboard\",\"hr_menu\",\"designation_read\",\"designation_create\",\"designation_update\",\"designation_delete\",\"shift_read\",\"shift_create\",\"shift_update\",\"shift_delete\",\"department_read\",\"department_create\",\"department_update\",\"department_delete\",\"user_menu\",\"user_read\",\"profile_view\",\"user_create\",\"user_edit\",\"user_update\",\"user_delete\",\"user_banned\",\"user_unbanned\",\"make_hr\",\"user_permission\",\"profile_image_view\",\"user_device_list\",\"reset_device\",\"phonebook_profile\",\"support_ticket_profile\",\"advance_profile\",\"commission_profile\",\"salary_profile\",\"project_profile\",\"task_profile\",\"award_profile\",\"travel_profile\",\"attendance_profile\",\"appointment_profile\",\"visit_profile\",\"leave_request_profile\",\"notice_profile\",\"role_read\",\"role_create\",\"role_update\",\"role_delete\",\"branch_read\",\"branch_create\",\"branch_update\",\"branch_delete\",\"leave_menu\",\"leave_type_read\",\"leave_type_create\",\"leave_type_update\",\"leave_type_delete\",\"leave_assign_read\",\"leave_assign_create\",\"leave_assign_update\",\"leave_assign_delete\",\"leave_request_read\",\"leave_request_create\",\"leave_request_store\",\"leave_request_update\",\"leave_request_approve\",\"leave_request_reject\",\"leave_request_delete\",\"daily_leave_read\",\"appointment_read\",\"appointment_menu\",\"appointment_create\",\"appointment_approve\",\"appointment_reject\",\"appointment_delete\",\"weekend_read\",\"weekend_update\",\"attendance_update\",\"holiday_read\",\"holiday_create\",\"holiday_update\",\"holiday_delete\",\"schedule_read\",\"schedule_create\",\"schedule_update\",\"schedule_delete\",\"attendance_menu\",\"attendance_read\",\"attendance_create\",\"attendance_update\",\"attendance_delete\",\"generate_qr_code\",\"leave_settings_read\",\"leave_settings_update\",\"company_settings_read\",\"company_settings_update\",\"locationApi\",\"company_setup_menu\",\"company_setup_activation\",\"company_setup_configuration\",\"company_setup_ip_whitelist\",\"company_setup_location\",\"location_create\",\"location_store\",\"location_edit\",\"location_update\",\"location_delete\",\"ip_read\",\"ip_create\",\"ip_update\",\"ip_delete\",\"attendance_report_read\",\"live_tracking_read\",\"report_menu\",\"report\",\"claim_read\",\"claim_create\",\"claim_update\",\"claim_delete\",\"payment_read\",\"payment_create\",\"payment_update\",\"payment_delete\",\"visit_menu\",\"visit_read\",\"visit_view\",\"visit_update\",\"payroll_menu\",\"list_payroll_item\",\"create_payroll_item\",\"store_payroll_item\",\"update_payroll_item\",\"delete_payroll_item\",\"view_payroll_item\",\"payroll_item_menu\",\"list_payroll_set\",\"create_payroll_set\",\"store_payroll_set\",\"update_payroll_set\",\"delete_payroll_set\",\"view_payroll_set\",\"edit_payroll_set\",\"payroll_set_menu\",\"advance_salaries_menu\",\"advance_salaries_create\",\"advance_salaries_store\",\"advance_salaries_edit\",\"advance_salaries_update\",\"advance_salaries_delete\",\"advance_salaries_view\",\"advance_salaries_approve\",\"advance_salaries_list\",\"advance_salaries_pay\",\"advance_salaries_invoice\",\"advance_salaries_search\",\"payslip_menu\",\"salary_generate\",\"salary_view\",\"salary_delete\",\"salary_edit\",\"salary_update\",\"salary_payment\",\"payslip_list\",\"advance_type_menu\",\"advance_type_create\",\"advance_type_store\",\"advance_type_edit\",\"advance_type_update\",\"advance_type_delete\",\"advance_type_view\",\"advance_type_list\",\"salary_menu\",\"salary_store\",\"salary_edit\",\"salary_update\",\"salary_delete\",\"salary_view\",\"salary_list\",\"salary_search\",\"salary_pay\",\"salary_invoice\",\"salary_approve\",\"salary_generate\",\"salary_calculate\",\"account_menu\",\"account_create\",\"account_store\",\"account_edit\",\"account_update\",\"account_delete\",\"account_view\",\"account_list\",\"account_search\",\"deposit_menu\",\"deposit_create\",\"deposit_store\",\"deposit_edit\",\"deposit_update\",\"deposit_delete\",\"deposit_list\",\"expense_menu\",\"expense_create\",\"expense_store\",\"expense_edit\",\"expense_update\",\"expense_delete\",\"expense_list\",\"expense_view\",\"expense_approve\",\"expense_invoice\",\"expense_pay\",\"transaction_menu\",\"transaction_create\",\"transaction_store\",\"transaction_edit\",\"transaction_update\",\"transaction_delete\",\"transaction_view\",\"transaction_list\",\"deposit_category_menu\",\"deposit_category_create\",\"deposit_category_store\",\"deposit_category_edit\",\"deposit_category_update\",\"deposit_category_delete\",\"deposit_category_list\",\"payment_method_menu\",\"payment_method_create\",\"payment_method_store\",\"payment_method_edit\",\"payment_method_update\",\"payment_method_delete\",\"payment_method_list\",\"project_menu\",\"project_create\",\"project_store\",\"project_edit\",\"project_update\",\"project_delete\",\"project_view\",\"project_list\",\"project_activity_view\",\"project_member_view\",\"project_member_delete\",\"project_complete\",\"project_payment\",\"project_invoice_view\",\"project_discussion_create\",\"project_discussion_store\",\"project_discussion_edit\",\"project_discussion_update\",\"project_discussion_delete\",\"project_discussion_view\",\"project_discussion_list\",\"project_discussion_comment\",\"project_discussion_reply\",\"project_file_create\",\"project_file_store\",\"project_file_edit\",\"project_file_update\",\"project_file_delete\",\"project_file_view\",\"project_file_list\",\"project_file_download\",\"project_file_comment\",\"project_file_reply\",\"project_notes_create\",\"project_notes_store\",\"project_notes_edit\",\"project_notes_update\",\"project_notes_delete\",\"project_notes_list\",\"client_menu\",\"client_create\",\"client_store\",\"client_edit\",\"client_update\",\"client_delete\",\"client_view\",\"client_list\",\"task_menu\",\"task_create\",\"task_store\",\"task_edit\",\"task_update\",\"task_delete\",\"task_view\",\"task_list\",\"task_activity_view\",\"task_assign_view\",\"task_assign_delete\",\"task_complete\",\"task_discussion_create\",\"task_discussion_store\",\"task_discussion_edit\",\"task_discussion_update\",\"task_discussion_delete\",\"task_discussion_view\",\"task_discussion_list\",\"task_discussion_comment\",\"task_discussion_reply\",\"task_file_create\",\"task_file_store\",\"task_file_edit\",\"task_file_update\",\"task_file_delete\",\"task_file_view\",\"task_file_list\",\"task_file_download\",\"task_file_comment\",\"task_file_reply\",\"task_notes_create\",\"task_notes_store\",\"task_notes_edit\",\"task_notes_update\",\"task_notes_delete\",\"task_notes_list\",\"task_files_comment\",\"award_type_menu\",\"award_type_create\",\"award_type_store\",\"award_type_edit\",\"award_type_update\",\"award_type_delete\",\"award_type_view\",\"award_type_list\",\"award_menu\",\"award_create\",\"award_store\",\"award_edit\",\"award_update\",\"award_delete\",\"award_list\",\"travel_type_menu\",\"travel_type_create\",\"travel_type_store\",\"travel_type_edit\",\"travel_type_update\",\"travel_type_delete\",\"travel_type_view\",\"travel_type_list\",\"travel_menu\",\"travel_create\",\"travel_store\",\"travel_edit\",\"travel_update\",\"travel_delete\",\"travel_list\",\"travel_approve\",\"travel_payment\",\"meeting_menu\",\"meeting_create\",\"meeting_store\",\"meeting_edit\",\"meeting_update\",\"meeting_delete\",\"meeting_list\",\"performance_menu\",\"performance_settings\",\"performance_indicator_menu\",\"performance_indicator_list\",\"performance_indicator_create\",\"performance_indicator_store\",\"performance_indicator_edit\",\"performance_indicator_update\",\"performance_indicator_delete\",\"performance_appraisal_menu\",\"performance_appraisal_create\",\"performance_appraisal_store\",\"performance_appraisal_edit\",\"performance_appraisal_update\",\"performance_appraisal_delete\",\"performance_appraisal_list\",\"performance_appraisal_view\",\"performance_goal_type_menu\",\"performance_goal_type_create\",\"performance_goal_type_store\",\"performance_goal_type_edit\",\"performance_goal_type_update\",\"performance_goal_type_delete\",\"performance_goal_type_list\",\"performance_goal_menu\",\"performance_goal_create\",\"performance_goal_store\",\"performance_goal_edit\",\"performance_goal_update\",\"performance_goal_delete\",\"performance_goal_view\",\"performance_goal_list\",\"performance_competence_type_list\",\"performance_competence_type_menu\",\"performance_competence_type_create\",\"performance_competence_type_store\",\"performance_competence_type_edit\",\"performance_competence_type_update\",\"performance_competence_type_delete\",\"performance_competence_type_view\",\"performance_competence_menu\",\"performance_competence_create\",\"performance_competence_store\",\"performance_competence_edit\",\"performance_competence_update\",\"performance_competence_delete\",\"performance_competence_view\",\"performance_competence_list\",\"app_settings_menu\",\"app_settings_update\",\"language_menu\",\"make_default\",\"general_settings_read\",\"general_settings_update\",\"email_settings_update\",\"storage_settings_update\",\"language_create\",\"language_store\",\"language_edit\",\"language_update\",\"language_delete\",\"setup_language\",\"content_menu\",\"content_create\",\"content_store\",\"content_edit\",\"content_update\",\"content_delete\",\"contact_menu\",\"contact_create\",\"contact_store\",\"contact_edit\",\"contact_update\",\"contact_delete\",\"announcement_menu\",\"notice_menu\",\"notice_list\",\"notice_create\",\"notice_update\",\"notice_edit\",\"notice_delete\",\"send_sms_menu\",\"send_sms_list\",\"send_sms_create\",\"send_sms_update\",\"send_sms_edit\",\"send_sms_delete\",\"send_email_menu\",\"send_email_list\",\"send_email_create\",\"send_email_update\",\"send_email_edit\",\"send_email_delete\",\"send_notification_menu\",\"send_notification_list\",\"send_notification_create\",\"send_notification_update\",\"send_notification_edit\",\"send_notification_delete\",\"announcement_menu\",\"notice_menu\",\"notice_list\",\"notice_create\",\"notice_update\",\"notice_edit\",\"notice_delete\",\"send_sms_menu\",\"send_sms_list\",\"send_sms_create\",\"send_sms_update\",\"send_sms_edit\",\"send_sms_delete\",\"send_email_menu\",\"send_email_list\",\"send_email_create\",\"send_email_update\",\"send_email_edit\",\"send_email_delete\",\"send_notification_menu\",\"send_notification_list\",\"send_notification_create\",\"send_notification_update\",\"send_notification_edit\",\"send_notification_delete\",\"support_menu\",\"support_read\",\"support_create\",\"support_reply\",\"support_delete\"]', NULL, 1, NULL, NULL, NULL, 1, 1, 1),
(2, 'admin', 1, 'admin', '[\"team_menu\",\"team_list\",\"team_create\",\"team_update\",\"team_edit\",\"team_delete\",\"team_member_view\",\"team_member_create\",\"team_member_edit\",\"team_member_delete\",\"team_member_assign\",\"team_member_unassign\",\"dashboard\",\"hr_menu\",\"designation_read\",\"designation_create\",\"designation_update\",\"designation_delete\",\"shift_read\",\"shift_create\",\"shift_update\",\"shift_delete\",\"department_read\",\"department_create\",\"department_update\",\"department_delete\",\"user_menu\",\"user_read\",\"profile_view\",\"user_create\",\"user_edit\",\"user_update\",\"user_delete\",\"user_banned\",\"user_unbanned\",\"make_hr\",\"user_permission\",\"profile_image_view\",\"user_device_list\",\"reset_device\",\"phonebook_profile\",\"support_ticket_profile\",\"advance_profile\",\"commission_profile\",\"salary_profile\",\"project_profile\",\"task_profile\",\"award_profile\",\"travel_profile\",\"attendance_profile\",\"appointment_profile\",\"visit_profile\",\"leave_request_profile\",\"notice_profile\",\"role_read\",\"role_create\",\"role_update\",\"role_delete\",\"branch_read\",\"branch_create\",\"branch_update\",\"branch_delete\",\"leave_menu\",\"leave_type_read\",\"leave_type_create\",\"leave_type_update\",\"leave_type_delete\",\"leave_assign_read\",\"leave_assign_create\",\"leave_assign_update\",\"leave_assign_delete\",\"leave_request_read\",\"leave_request_create\",\"leave_request_store\",\"leave_request_update\",\"leave_request_approve\",\"leave_request_reject\",\"leave_request_delete\",\"daily_leave_read\",\"appointment_read\",\"appointment_menu\",\"appointment_create\",\"appointment_approve\",\"appointment_reject\",\"appointment_delete\",\"weekend_read\",\"weekend_update\",\"attendance_update\",\"holiday_read\",\"holiday_create\",\"holiday_update\",\"holiday_delete\",\"schedule_read\",\"schedule_create\",\"schedule_update\",\"schedule_delete\",\"attendance_menu\",\"attendance_read\",\"attendance_create\",\"attendance_update\",\"attendance_delete\",\"generate_qr_code\",\"leave_settings_read\",\"leave_settings_update\",\"company_settings_read\",\"company_settings_update\",\"locationApi\",\"company_setup_menu\",\"company_setup_activation\",\"company_setup_configuration\",\"company_setup_ip_whitelist\",\"company_setup_location\",\"location_create\",\"location_store\",\"location_edit\",\"location_update\",\"location_delete\",\"ip_read\",\"ip_create\",\"ip_update\",\"ip_delete\",\"attendance_report_read\",\"live_tracking_read\",\"report_menu\",\"report\",\"claim_read\",\"claim_create\",\"claim_update\",\"claim_delete\",\"payment_read\",\"payment_create\",\"payment_update\",\"payment_delete\",\"visit_menu\",\"visit_read\",\"visit_view\",\"visit_update\",\"payroll_menu\",\"list_payroll_item\",\"create_payroll_item\",\"store_payroll_item\",\"update_payroll_item\",\"delete_payroll_item\",\"view_payroll_item\",\"payroll_item_menu\",\"list_payroll_set\",\"create_payroll_set\",\"store_payroll_set\",\"update_payroll_set\",\"delete_payroll_set\",\"view_payroll_set\",\"edit_payroll_set\",\"payroll_set_menu\",\"advance_salaries_menu\",\"advance_salaries_create\",\"advance_salaries_store\",\"advance_salaries_edit\",\"advance_salaries_update\",\"advance_salaries_delete\",\"advance_salaries_view\",\"advance_salaries_approve\",\"advance_salaries_list\",\"advance_salaries_pay\",\"advance_salaries_invoice\",\"advance_salaries_search\",\"payslip_menu\",\"salary_generate\",\"salary_view\",\"salary_delete\",\"salary_edit\",\"salary_update\",\"salary_payment\",\"payslip_list\",\"advance_type_menu\",\"advance_type_create\",\"advance_type_store\",\"advance_type_edit\",\"advance_type_update\",\"advance_type_delete\",\"advance_type_view\",\"advance_type_list\",\"salary_menu\",\"salary_store\",\"salary_edit\",\"salary_update\",\"salary_delete\",\"salary_view\",\"salary_list\",\"salary_search\",\"salary_pay\",\"salary_invoice\",\"salary_approve\",\"salary_generate\",\"salary_calculate\",\"account_menu\",\"account_create\",\"account_store\",\"account_edit\",\"account_update\",\"account_delete\",\"account_view\",\"account_list\",\"account_search\",\"deposit_menu\",\"deposit_create\",\"deposit_store\",\"deposit_edit\",\"deposit_update\",\"deposit_delete\",\"deposit_list\",\"expense_menu\",\"expense_create\",\"expense_store\",\"expense_edit\",\"expense_update\",\"expense_delete\",\"expense_list\",\"expense_view\",\"expense_approve\",\"expense_invoice\",\"expense_pay\",\"transaction_menu\",\"transaction_create\",\"transaction_store\",\"transaction_edit\",\"transaction_update\",\"transaction_delete\",\"transaction_view\",\"transaction_list\",\"deposit_category_menu\",\"deposit_category_create\",\"deposit_category_store\",\"deposit_category_edit\",\"deposit_category_update\",\"deposit_category_delete\",\"deposit_category_list\",\"payment_method_menu\",\"payment_method_create\",\"payment_method_store\",\"payment_method_edit\",\"payment_method_update\",\"payment_method_delete\",\"payment_method_list\",\"project_menu\",\"project_create\",\"project_store\",\"project_edit\",\"project_update\",\"project_delete\",\"project_view\",\"project_list\",\"project_activity_view\",\"project_member_view\",\"project_member_delete\",\"project_complete\",\"project_payment\",\"project_invoice_view\",\"project_discussion_create\",\"project_discussion_store\",\"project_discussion_edit\",\"project_discussion_update\",\"project_discussion_delete\",\"project_discussion_view\",\"project_discussion_list\",\"project_discussion_comment\",\"project_discussion_reply\",\"project_file_create\",\"project_file_store\",\"project_file_edit\",\"project_file_update\",\"project_file_delete\",\"project_file_view\",\"project_file_list\",\"project_file_download\",\"project_file_comment\",\"project_file_reply\",\"project_notes_create\",\"project_notes_store\",\"project_notes_edit\",\"project_notes_update\",\"project_notes_delete\",\"project_notes_list\",\"client_menu\",\"client_create\",\"client_store\",\"client_edit\",\"client_update\",\"client_delete\",\"client_view\",\"client_list\",\"task_menu\",\"task_create\",\"task_store\",\"task_edit\",\"task_update\",\"task_delete\",\"task_view\",\"task_list\",\"task_activity_view\",\"task_assign_view\",\"task_assign_delete\",\"task_complete\",\"task_discussion_create\",\"task_discussion_store\",\"task_discussion_edit\",\"task_discussion_update\",\"task_discussion_delete\",\"task_discussion_view\",\"task_discussion_list\",\"task_discussion_comment\",\"task_discussion_reply\",\"task_file_create\",\"task_file_store\",\"task_file_edit\",\"task_file_update\",\"task_file_delete\",\"task_file_view\",\"task_file_list\",\"task_file_download\",\"task_file_comment\",\"task_file_reply\",\"task_notes_create\",\"task_notes_store\",\"task_notes_edit\",\"task_notes_update\",\"task_notes_delete\",\"task_notes_list\",\"task_files_comment\",\"award_type_menu\",\"award_type_create\",\"award_type_store\",\"award_type_edit\",\"award_type_update\",\"award_type_delete\",\"award_type_view\",\"award_type_list\",\"award_menu\",\"award_create\",\"award_store\",\"award_edit\",\"award_update\",\"award_delete\",\"award_list\",\"travel_type_menu\",\"travel_type_create\",\"travel_type_store\",\"travel_type_edit\",\"travel_type_update\",\"travel_type_delete\",\"travel_type_view\",\"travel_type_list\",\"travel_menu\",\"travel_create\",\"travel_store\",\"travel_edit\",\"travel_update\",\"travel_delete\",\"travel_list\",\"travel_approve\",\"travel_payment\",\"meeting_menu\",\"meeting_create\",\"meeting_store\",\"meeting_edit\",\"meeting_update\",\"meeting_delete\",\"meeting_list\",\"performance_menu\",\"performance_settings\",\"performance_indicator_menu\",\"performance_indicator_list\",\"performance_indicator_create\",\"performance_indicator_store\",\"performance_indicator_edit\",\"performance_indicator_update\",\"performance_indicator_delete\",\"performance_appraisal_menu\",\"performance_appraisal_create\",\"performance_appraisal_store\",\"performance_appraisal_edit\",\"performance_appraisal_update\",\"performance_appraisal_delete\",\"performance_appraisal_list\",\"performance_appraisal_view\",\"performance_goal_type_menu\",\"performance_goal_type_create\",\"performance_goal_type_store\",\"performance_goal_type_edit\",\"performance_goal_type_update\",\"performance_goal_type_delete\",\"performance_goal_type_list\",\"performance_goal_menu\",\"performance_goal_create\",\"performance_goal_store\",\"performance_goal_edit\",\"performance_goal_update\",\"performance_goal_delete\",\"performance_goal_view\",\"performance_goal_list\",\"performance_competence_type_list\",\"performance_competence_type_menu\",\"performance_competence_type_create\",\"performance_competence_type_store\",\"performance_competence_type_edit\",\"performance_competence_type_update\",\"performance_competence_type_delete\",\"performance_competence_type_view\",\"performance_competence_menu\",\"performance_competence_create\",\"performance_competence_store\",\"performance_competence_edit\",\"performance_competence_update\",\"performance_competence_delete\",\"performance_competence_view\",\"performance_competence_list\",\"app_settings_menu\",\"app_settings_update\",\"language_menu\",\"make_default\",\"general_settings_read\",\"general_settings_update\",\"email_settings_update\",\"storage_settings_update\",\"language_create\",\"language_store\",\"language_edit\",\"language_update\",\"language_delete\",\"setup_language\",\"content_menu\",\"content_create\",\"content_store\",\"content_edit\",\"content_update\",\"content_delete\",\"contact_menu\",\"contact_create\",\"contact_store\",\"contact_edit\",\"contact_update\",\"contact_delete\",\"announcement_menu\",\"notice_menu\",\"notice_list\",\"notice_create\",\"notice_update\",\"notice_edit\",\"notice_delete\",\"send_sms_menu\",\"send_sms_list\",\"send_sms_create\",\"send_sms_update\",\"send_sms_edit\",\"send_sms_delete\",\"send_email_menu\",\"send_email_list\",\"send_email_create\",\"send_email_update\",\"send_email_edit\",\"send_email_delete\",\"send_notification_menu\",\"send_notification_list\",\"send_notification_create\",\"send_notification_update\",\"send_notification_edit\",\"send_notification_delete\",\"announcement_menu\",\"notice_menu\",\"notice_list\",\"notice_create\",\"notice_update\",\"notice_edit\",\"notice_delete\",\"send_sms_menu\",\"send_sms_list\",\"send_sms_create\",\"send_sms_update\",\"send_sms_edit\",\"send_sms_delete\",\"send_email_menu\",\"send_email_list\",\"send_email_create\",\"send_email_update\",\"send_email_edit\",\"send_email_delete\",\"send_notification_menu\",\"send_notification_list\",\"send_notification_create\",\"send_notification_update\",\"send_notification_edit\",\"send_notification_delete\",\"support_menu\",\"support_read\",\"support_create\",\"support_reply\",\"support_delete\"]', NULL, 1, NULL, NULL, NULL, 1, 1, 1),
(3, 'hr', 1, 'hr', '[\"team_menu\",\"team_list\",\"team_create\",\"team_update\",\"team_edit\",\"team_delete\",\"team_member_view\",\"team_member_create\",\"team_member_edit\",\"team_member_delete\",\"team_member_assign\",\"team_member_unassign\",\"dashboard\",\"designation_read\",\"designation_create\",\"designation_update\",\"designation_delete\",\"shift_read\",\"shift_create\",\"shift_update\",\"shift_delete\",\"department_read\",\"department_create\",\"department_update\",\"department_delete\",\"user_menu\",\"user_read\",\"profile_view\",\"user_create\",\"user_edit\",\"user_update\",\"user_delete\",\"user_banned\",\"user_unbanned\",\"make_hr\",\"user_permission\",\"profile_image_view\",\"user_device_list\",\"reset_device\",\"role_read\",\"role_create\",\"role_update\",\"role_delete\",\"branch_read\",\"branch_create\",\"branch_update\",\"branch_delete\",\"leave_menu\",\"leave_type_read\",\"leave_type_create\",\"leave_type_update\",\"leave_type_delete\",\"leave_assign_read\",\"leave_assign_create\",\"leave_assign_update\",\"leave_assign_delete\",\"leave_request_read\",\"leave_request_create\",\"leave_request_approve\",\"leave_request_reject\",\"leave_request_delete\",\"appointment_read\",\"appointment_menu\",\"appointment_create\",\"appointment_approve\",\"appointment_reject\",\"appointment_delete\",\"weekend_read\",\"weekend_update\",\"attendance_update\",\"holiday_read\",\"holiday_create\",\"holiday_update\",\"holiday_delete\",\"schedule_read\",\"schedule_create\",\"schedule_update\",\"schedule_delete\",\"attendance_menu\",\"attendance_read\",\"attendance_create\",\"attendance_update\",\"attendance_delete\",\"leave_settings_read\",\"leave_settings_update\",\"company_settings_read\",\"company_settings_update\",\"locationApi\",\"company_setup_menu\",\"company_setup_activation\",\"company_setup_configuration\",\"company_setup_ip_whitelist\",\"company_setup_location\",\"ip_read\",\"ip_create\",\"ip_update\",\"ip_delete\",\"attendance_report_read\",\"live_tracking_read\",\"report_menu\",\"report\",\"claim_read\",\"claim_create\",\"claim_update\",\"claim_delete\",\"payment_read\",\"payment_create\",\"payment_update\",\"payment_delete\",\"visit_menu\",\"visit_read\",\"visit_view\",\"visit_update\",\"payroll_menu\",\"list_payroll_item\",\"create_payroll_item\",\"store_payroll_item\",\"update_payroll_item\",\"delete_payroll_item\",\"view_payroll_item\",\"payroll_item_menu\",\"list_payroll_set\",\"create_payroll_set\",\"store_payroll_set\",\"update_payroll_set\",\"delete_payroll_set\",\"view_payroll_set\",\"edit_payroll_set\",\"payroll_set_menu\",\"advance_salaries_menu\",\"advance_salaries_create\",\"advance_salaries_store\",\"advance_salaries_edit\",\"advance_salaries_update\",\"advance_salaries_delete\",\"advance_salaries_view\",\"advance_salaries_approve\",\"advance_salaries_list\",\"advance_salaries_pay\",\"advance_salaries_invoice\",\"advance_salaries_search\",\"payslip_menu\",\"salary_generate\",\"salary_view\",\"salary_delete\",\"salary_edit\",\"salary_update\",\"salary_payment\",\"payslip_list\",\"advance_type_menu\",\"advance_type_create\",\"advance_type_store\",\"advance_type_edit\",\"advance_type_update\",\"advance_type_delete\",\"advance_type_view\",\"advance_type_list\",\"salary_menu\",\"salary_store\",\"salary_edit\",\"salary_update\",\"salary_delete\",\"salary_view\",\"salary_list\",\"salary_search\",\"salary_pay\",\"salary_invoice\",\"salary_approve\",\"salary_generate\",\"salary_calculate\",\"account_menu\",\"account_create\",\"account_store\",\"account_edit\",\"account_update\",\"account_delete\",\"account_view\",\"account_list\",\"account_search\",\"deposit_menu\",\"deposit_create\",\"deposit_store\",\"deposit_edit\",\"deposit_update\",\"deposit_delete\",\"deposit_list\",\"expense_menu\",\"expense_create\",\"expense_store\",\"expense_edit\",\"expense_update\",\"expense_delete\",\"expense_list\",\"expense_view\",\"expense_approve\",\"expense_invoice\",\"expense_pay\",\"transaction_menu\",\"transaction_create\",\"transaction_store\",\"transaction_edit\",\"transaction_update\",\"transaction_delete\",\"transaction_view\",\"transaction_list\",\"deposit_category_menu\",\"deposit_category_create\",\"deposit_category_store\",\"deposit_category_edit\",\"deposit_category_update\",\"deposit_category_delete\",\"deposit_category_list\",\"payment_method_menu\",\"payment_method_create\",\"payment_method_store\",\"payment_method_edit\",\"payment_method_update\",\"payment_method_delete\",\"payment_method_list\",\"travel_menu\",\"travel_create\",\"travel_store\",\"travel_edit\",\"travel_update\",\"travel_delete\",\"travel_list\",\"travel_view\",\"travel_approve\",\"travel_invoice\",\"travel_pay\",\"meeting_menu\",\"meeting_create\",\"meeting_store\",\"meeting_edit\",\"meeting_update\",\"meeting_delete\",\"meeting_list\",\"meeting_view\",\"task_menu\",\"task.create\",\"task.index\",\"task.view\",\"task.edit\",\"announcement_menu\",\"notice_menu\",\"notice_list\",\"notice_create\",\"notice_update\",\"notice_edit\",\"notice_delete\",\"send_sms_menu\",\"send_sms_list\",\"send_sms_create\",\"send_sms_update\",\"send_sms_edit\",\"send_sms_delete\",\"send_email_menu\",\"send_email_list\",\"send_email_create\",\"send_email_update\",\"send_email_edit\",\"send_email_delete\",\"send_notification_menu\",\"send_notification_list\",\"send_notification_create\",\"send_notification_update\",\"send_notification_edit\",\"send_notification_delete\",\"announcement_menu\",\"notice_menu\",\"notice_list\",\"notice_create\",\"notice_update\",\"notice_edit\",\"notice_delete\",\"send_sms_menu\",\"send_sms_list\",\"send_sms_create\",\"send_sms_update\",\"send_sms_edit\",\"send_sms_delete\",\"send_email_menu\",\"send_email_list\",\"send_email_create\",\"send_email_update\",\"send_email_edit\",\"send_email_delete\",\"send_notification_menu\",\"send_notification_list\",\"send_notification_create\",\"send_notification_update\",\"send_notification_edit\",\"send_notification_delete\",\"support_menu\",\"support_read\",\"support_create\",\"support_reply\",\"support_delete\"]', NULL, 1, NULL, NULL, NULL, 1, 1, 1),
(4, 'staff', 1, 'staff', '[\"profile_view\",\"user_update\",\"attendance_profile\",\"contract_profile\",\"phonebook_profile\",\"support_ticket_profile\",\"advance_profile\",\"commission_profile\",\"appointment_profile\",\"visit_profile\",\"leave_request_profile\",\"notice_profile\",\"salary_profile\",\"project_profile\",\"task_profile\",\"award_profile\",\"travel_profile\",\"leave_menu\",\"leave_request_read\",\"leave_request_update\",\"leave_request_store\",\"leave_request_create\",\"leave_request_delete\",\"attendance_read\",\"attendance_create\",\"attendance_menu\",\"support_menu\",\"support_read\",\"support_read_all\",\"support_create\",\"support_reply\",\"support_delete\"]', NULL, 1, NULL, NULL, NULL, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `role_users`
--

CREATE TABLE `role_users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `branch_id` bigint(20) UNSIGNED DEFAULT 1,
  `company_id` bigint(20) UNSIGNED DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `salary_generates`
--

CREATE TABLE `salary_generates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `company_id` bigint(20) UNSIGNED NOT NULL,
  `date` date NOT NULL,
  `amount` double(16,2) NOT NULL,
  `due_amount` double(16,2) DEFAULT NULL,
  `gross_salary` double(16,2) NOT NULL,
  `status_id` bigint(20) UNSIGNED NOT NULL DEFAULT 9,
  `created_by` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `updated_by` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `total_working_day` int(11) DEFAULT NULL,
  `present` int(11) DEFAULT NULL,
  `absent` int(11) DEFAULT NULL,
  `late` int(11) DEFAULT NULL,
  `left_early` int(11) DEFAULT NULL,
  `is_calculated` tinyint(4) NOT NULL DEFAULT 0,
  `adjust` double(16,2) DEFAULT NULL,
  `absent_amount` double(16,2) DEFAULT NULL,
  `advance_amount` double(16,2) DEFAULT NULL,
  `advance_details` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`advance_details`)),
  `allowance_amount` double(16,2) DEFAULT NULL,
  `allowance_details` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`allowance_details`)),
  `deduction_amount` double(16,2) DEFAULT NULL,
  `deduction_details` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`deduction_details`)),
  `net_salary` double(16,2) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `department_id` int(11) DEFAULT NULL,
  `branch_id` bigint(20) UNSIGNED DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `salary_payment_logs`
--

CREATE TABLE `salary_payment_logs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `amount` double(16,2) NOT NULL,
  `due_amount` double(16,2) DEFAULT NULL,
  `salary_generate_id` bigint(20) UNSIGNED DEFAULT NULL,
  `company_id` bigint(20) UNSIGNED NOT NULL,
  `transaction_id` bigint(20) UNSIGNED DEFAULT NULL,
  `payment_method_id` bigint(20) UNSIGNED DEFAULT NULL,
  `paid_by` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_by` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `updated_by` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `payment_note` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `branch_id` bigint(20) UNSIGNED DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `salary_setups`
--

CREATE TABLE `salary_setups` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `company_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `gross_salary` double(16,2) NOT NULL,
  `status_id` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `created_by` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `updated_by` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `branch_id` bigint(20) UNSIGNED DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `salary_setup_details`
--

CREATE TABLE `salary_setup_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `company_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `salary_setup_id` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `commission_id` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `amount` double(16,2) NOT NULL,
  `amount_type` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1=fixed, 2=percentage',
  `status_id` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `created_by` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `updated_by` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `branch_id` bigint(20) UNSIGNED DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `salary_sheet_reports`
--

CREATE TABLE `salary_sheet_reports` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sl_no` int(11) NOT NULL,
  `name_of_the_employee` varchar(255) NOT NULL,
  `employee_id` varchar(255) NOT NULL,
  `designation` varchar(255) NOT NULL,
  `w_days` int(11) NOT NULL,
  `present` int(11) NOT NULL,
  `absent` int(11) NOT NULL,
  `tardy` int(11) NOT NULL,
  `tardy_days` varchar(255) NOT NULL,
  `gross_salary` double NOT NULL,
  `basic_50` double NOT NULL,
  `hra_40` double NOT NULL,
  `medical_10` double NOT NULL,
  `performance_incentive` double NOT NULL,
  `absent_amount` double NOT NULL,
  `advance` double NOT NULL,
  `tardy_amount` double NOT NULL,
  `incentive` double NOT NULL,
  `net_salary` double NOT NULL,
  `company_id` bigint(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `branch_id` bigint(20) UNSIGNED DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `attachment` bigint(20) UNSIGNED DEFAULT NULL,
  `status_id` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `branch_id` bigint(20) UNSIGNED DEFAULT 1,
  `company_id` bigint(20) UNSIGNED DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `service_brands`
--

CREATE TABLE `service_brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `status_id` int(11) DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `branch_id` bigint(20) UNSIGNED DEFAULT 1,
  `company_id` bigint(20) UNSIGNED DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `service_brands`
--

INSERT INTO `service_brands` (`id`, `name`, `status_id`, `created_at`, `updated_at`, `branch_id`, `company_id`) VALUES
(1, 'Brand 1', 1, NULL, NULL, 1, 1),
(2, 'Brand 2', 1, NULL, NULL, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `service_institutions`
--

CREATE TABLE `service_institutions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `status_id` int(11) DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `branch_id` bigint(20) UNSIGNED DEFAULT 1,
  `company_id` bigint(20) UNSIGNED DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `service_institutions`
--

INSERT INTO `service_institutions` (`id`, `name`, `slug`, `status_id`, `created_at`, `updated_at`, `branch_id`, `company_id`) VALUES
(1, 'Kukua 10 bed Hospital', 'kukua-10-bed-hospital', 1, NULL, NULL, 1, 1),
(2, 'Chhakhar 10 bed Hospital', 'chhakhar-10-bed-hospital', 1, NULL, NULL, 1, 1),
(3, 'Kirtipasha 10 bed Hospital (RHC)', 'kirtipasha-10-bed-hospital-rhc', 1, NULL, NULL, 1, 1),
(4, 'Guinak 10 bed Hospital (RHC)', 'guinak-10-bed-hospital-rhc', 1, NULL, NULL, 1, 1),
(5, 'Sandwip 10 bed Hospital (RHC)', 'sandwip-10-bed-hospital-rhc', 1, NULL, NULL, 1, 1),
(6, 'St. Martin 10 bed Hospital', 'st-martin-10-bed-hospital', 1, NULL, NULL, 1, 1),
(7, 'Kalikapur 10 bed Hospital (RHC)', 'kalikapur-10-bed-hospital-rhc', 1, NULL, NULL, 1, 1),
(8, 'Talbalchhari 10 bed Hospital (RHC)', 'talbalchhari-10-bed-hospital-rhc', 1, NULL, NULL, 1, 1),
(9, 'Kaptai 10 bed Hospital', 'kaptai-10-bed-hospital', 1, NULL, NULL, 1, 1),
(10, 'Hajratpur 10 bed Hospital', 'hajratpur-10-bed-hospital', 1, NULL, NULL, 1, 1),
(11, 'Kunda 10 bed Hospital', 'kunda-10-bed-hospital', 1, NULL, NULL, 1, 1),
(12, 'Gopinathpur 10 bed Hospital (RHC)', 'gopinathpur-10-bed-hospital-rhc', 1, NULL, NULL, 1, 1),
(13, 'Kopilmuni 10 bed Hospital', 'kopilmuni-10-bed-hospital', 1, NULL, NULL, 1, 1),
(14, 'Khokshabari 10 bed Hospital (RHC)', 'khokshabari-10-bed-hospital-rhc', 1, NULL, NULL, 1, 1),
(15, 'Ramchandrapur 10 bed Hospital (RHC)', 'ramchandrapur-10-bed-hospital-rhc', 1, NULL, NULL, 1, 1),
(16, 'Raiganj 10 bed Hospital (RHC)', 'raiganj-10-bed-hospital-rhc', 1, NULL, NULL, 1, 1),
(17, 'Dahagram 10 bed Hospital', 'dahagram-10-bed-hospital', 1, NULL, NULL, 1, 1),
(18, 'Taltali 20 bed Hospital', 'taltali-20-bed-hospital', 1, NULL, NULL, 1, 1),
(19, 'Walankathi 20 bed Hospital', 'walankathi-20-bed-hospital', 1, NULL, NULL, 1, 1),
(20, 'South Char Aicha 20 bed Hospital', 'south-char-aicha-20-bed-hospital', 1, NULL, NULL, 1, 1),
(21, 'Kuakata 20 bed Hospital', 'kuakata-20-bed-hospital', 1, NULL, NULL, 1, 1),
(22, 'Kathaltoli 20 bed Hospital', 'kathaltoli-20-bed-hospital', 1, NULL, NULL, 1, 1),
(23, 'Bibirhat 20 bed Hospital', 'bibirhat-20-bed-hospital', 1, NULL, NULL, 1, 1),
(24, 'Haramia 20 bed Hospital', 'haramia-20-bed-hospital', 1, NULL, NULL, 1, 1),
(25, 'Sonaimuri 20 bed Hospital', 'sonaimuri-20-bed-hospital', 1, NULL, NULL, 1, 1),
(26, 'Mohichail 20 bed Hospital', 'mohichail-20-bed-hospital', 1, NULL, NULL, 1, 1),
(27, 'Bagmara 20 bed Hospital', 'bagmara-20-bed-hospital', 1, NULL, NULL, 1, 1),
(28, 'Donarchar 20 bed Hospital', 'donarchar-20-bed-hospital', 1, NULL, NULL, 1, 1),
(29, 'Jodda 20 bed Hospital', 'jodda-20-bed-hospital', 1, NULL, NULL, 1, 1),
(30, 'Char Alexander 20 bed Hospital', 'char-alexander-20-bed-hospital', 1, NULL, NULL, 1, 1),
(31, 'Char Algi 20 bed Hospital', 'char-algi-20-bed-hospital', 1, NULL, NULL, 1, 1),
(32, 'Kreshnanagar 20 bed Hospital', 'kreshnanagar-20-bed-hospital', 1, NULL, NULL, 1, 1),
(33, 'Jinjira 20 bed Hospital', 'jinjira-20-bed-hospital', 1, NULL, NULL, 1, 1),
(34, 'Aminbazar 20 bed Hospital', 'aminbazar-20-bed-hospital', 1, NULL, NULL, 1, 1),
(35, 'Baspur 20 bed Hospital', 'baspur-20-bed-hospital', 1, NULL, NULL, 1, 1),
(36, 'Kabirajpur 20 bed Hospital', 'kabirajpur-20-bed-hospital', 1, NULL, NULL, 1, 1),
(37, 'Monohargram 20 bed Hospital', 'monohargram-20-bed-hospital', 1, NULL, NULL, 1, 1),
(38, 'Fatullah 20 bed Hospital', 'fatullah-20-bed-hospital', 1, NULL, NULL, 1, 1),
(39, 'Siddirganj 20 bed Hospital', 'siddirganj-20-bed-hospital', 1, NULL, NULL, 1, 1),
(40, 'Tarabunia 20 bed Hospital', 'tarabunia-20-bed-hospital', 1, NULL, NULL, 1, 1),
(41, 'Kodalpur 20 bed Hospital', 'kodalpur-20-bed-hospital', 1, NULL, NULL, 1, 1),
(42, 'Birolpolita 20 bed Hospital', 'birolpolita-20-bed-hospital', 1, NULL, NULL, 1, 1),
(43, 'Binadpur 20 bed Hospital', 'binadpur-20-bed-hospital', 1, NULL, NULL, 1, 1),
(44, 'Charanchal 20 bed Hospital', 'charanchal-20-bed-hospital', 1, NULL, NULL, 1, 1),
(45, 'Santahar 20 bed Hospital', 'santahar-20-bed-hospital', 1, NULL, NULL, 1, 1),
(46, 'Nandigram 20 bed Hospital', 'nandigram-20-bed-hospital', 1, NULL, NULL, 1, 1),
(47, 'Aliahat 20 bed Hospital', 'aliahat-20-bed-hospital', 1, NULL, NULL, 1, 1),
(48, 'Kaitak 20 bed Hospital', 'kaitak-20-bed-hospital', 1, NULL, NULL, 1, 1),
(49, 'Maddyanagar 20 bed Hospital', 'maddyanagar-20-bed-hospital', 1, NULL, NULL, 1, 1),
(50, 'Bamna Upazila Health Complex, Barguna', 'bamna-upazila-health-complex-barguna', 1, NULL, NULL, 1, 1),
(51, 'Babuganj Upazila Health Complex, Barishal', 'babuganj-upazila-health-complex-barishal', 1, NULL, NULL, 1, 1),
(52, 'Bakerganj Upazila Health Complex, Barishal', 'bakerganj-upazila-health-complex-barishal', 1, NULL, NULL, 1, 1),
(53, 'Banaripara Upazila Health Complex, Barishal', 'banaripara-upazila-health-complex-barishal', 1, NULL, NULL, 1, 1),
(54, 'Hijla Upazila Health Complex, Barishal', 'hijla-upazila-health-complex-barishal', 1, NULL, NULL, 1, 1),
(55, 'Mehendiganj Upazila Health Complex, Barishal', 'mehendiganj-upazila-health-complex-barishal', 1, NULL, NULL, 1, 1),
(56, 'Wazirpur Upazila Health Complex, Barishal', 'wazirpur-upazila-health-complex-barishal', 1, NULL, NULL, 1, 1),
(57, 'Manpura Upazila Health Complex, Bhola', 'manpura-upazila-health-complex-bhola', 1, NULL, NULL, 1, 1),
(58, 'Tajumuddin Upazila Health Complex, Bhola', 'tajumuddin-upazila-health-complex-bhola', 1, NULL, NULL, 1, 1),
(59, 'Kathalia Upazila Health Complex, Jhalokati', 'kathalia-upazila-health-complex-jhalokati', 1, NULL, NULL, 1, 1),
(60, 'Rajapur Upazila Health Complex, Jhalokati', 'rajapur-upazila-health-complex-jhalokati', 1, NULL, NULL, 1, 1),
(61, 'Bauphal Upazila Health Complex, Patuakhali', 'bauphal-upazila-health-complex-patuakhali', 1, NULL, NULL, 1, 1),
(62, 'Dashmina Upazila Health Complex, Patuakhali', 'dashmina-upazila-health-complex-patuakhali', 1, NULL, NULL, 1, 1),
(63, 'Dumki Upazila Health Complex, Patuakhali', 'dumki-upazila-health-complex-patuakhali', 1, NULL, NULL, 1, 1),
(64, 'Mirzaganj Upazila Health Complex, Patuakhali', 'mirzaganj-upazila-health-complex-patuakhali', 1, NULL, NULL, 1, 1),
(65, 'Rangabali Upazila Health Complex, Patuakhali', 'rangabali-upazila-health-complex-patuakhali', 1, NULL, NULL, 1, 1),
(66, 'Bhandaria Upazila Health Complex, Pirojpur', 'bhandaria-upazila-health-complex-pirojpur', 1, NULL, NULL, 1, 1),
(67, 'Indurkani Upazila Health Complex, Pirojpur', 'indurkani-upazila-health-complex-pirojpur', 1, NULL, NULL, 1, 1),
(68, 'Kawkhali Upazila Health Complex, Pirojpur', 'kawkhali-upazila-health-complex-pirojpur', 1, NULL, NULL, 1, 1),
(69, 'Nazirpur Upazila Health Complex, Pirojpur', 'nazirpur-upazila-health-complex-pirojpur', 1, NULL, NULL, 1, 1),
(70, 'Alikadam Upazila Health Complex, Bandarban', 'alikadam-upazila-health-complex-bandarban', 1, NULL, NULL, 1, 1),
(71, 'Lama Upazila Health Complex, Bandarban', 'lama-upazila-health-complex-bandarban', 1, NULL, NULL, 1, 1),
(72, 'Naikhongchari Upazila Health Complex, Bandarban', 'naikhongchari-upazila-health-complex-bandarban', 1, NULL, NULL, 1, 1),
(73, 'Rowangchari Upazila Health Complex, Bandarban', 'rowangchari-upazila-health-complex-bandarban', 1, NULL, NULL, 1, 1),
(74, 'Ruma Upazila Health Complex, Bandarban', 'ruma-upazila-health-complex-bandarban', 1, NULL, NULL, 1, 1),
(75, 'Thanchi Upazila Health Complex, Bandarban', 'thanchi-upazila-health-complex-bandarban', 1, NULL, NULL, 1, 1),
(76, 'Akhaura Upazila Health Complex, Brahmanbaria', 'akhaura-upazila-health-complex-brahmanbaria', 1, NULL, NULL, 1, 1),
(77, 'Ashugonj Upazila Health Complex, Brahmanbaria', 'ashugonj-upazila-health-complex-brahmanbaria', 1, NULL, NULL, 1, 1),
(78, 'Bijoynagar Upazila Health Complex, Brahmanbaria', 'bijoynagar-upazila-health-complex-brahmanbaria', 1, NULL, NULL, 1, 1),
(79, 'Bancharampur Upazila Health Complex, Brahmanbaria', 'bancharampur-upazila-health-complex-brahmanbaria', 1, NULL, NULL, 1, 1),
(80, 'Kashba Upazila Health Complex, Brahmanbaria', 'kashba-upazila-health-complex-brahmanbaria', 1, NULL, NULL, 1, 1),
(81, 'Nabinagar Upazila Health Complex, Brahmanbaria', 'nabinagar-upazila-health-complex-brahmanbaria', 1, NULL, NULL, 1, 1),
(82, 'Faridganj Upazila Health Complex, Chandpur', 'faridganj-upazila-health-complex-chandpur', 1, NULL, NULL, 1, 1),
(83, 'Haimchar Upazila Health Complex, Chandpur', 'haimchar-upazila-health-complex-chandpur', 1, NULL, NULL, 1, 1),
(84, 'Matlab(uttar) Upazila Health Complex, Chandpur', 'matlabuttar-upazila-health-complex-chandpur', 1, NULL, NULL, 1, 1),
(85, 'Saharasthi Upazila Health Complex, Chandpur', 'saharasthi-upazila-health-complex-chandpur', 1, NULL, NULL, 1, 1),
(86, 'Fatikchari Upazila Health Complex, Chattogram', 'fatikchari-upazila-health-complex-chattogram', 1, NULL, NULL, 1, 1),
(87, 'Roujan Upazila Health Complex, Chattogram', 'roujan-upazila-health-complex-chattogram', 1, NULL, NULL, 1, 1),
(88, 'Sandwip Upazila Health Complex, Chattogram', 'sandwip-upazila-health-complex-chattogram', 1, NULL, NULL, 1, 1),
(89, 'Satkania Upazila Health Complex, Chattogram', 'satkania-upazila-health-complex-chattogram', 1, NULL, NULL, 1, 1),
(90, 'Pekua Upazila Health Complex, Cox\'s Bazar', 'pekua-upazila-health-complex-coxs-bazar', 1, NULL, NULL, 1, 1),
(91, 'Ramu Upazila Health Complex, Cox\'s Bazar', 'ramu-upazila-health-complex-coxs-bazar', 1, NULL, NULL, 1, 1),
(92, 'Teknaf Upazila Health Complex, Cox\'s Bazar', 'teknaf-upazila-health-complex-coxs-bazar', 1, NULL, NULL, 1, 1),
(93, 'Ukhia Upazila Health Complex, Cox\'s Bazar', 'ukhia-upazila-health-complex-coxs-bazar', 1, NULL, NULL, 1, 1),
(94, 'Barura Upazila Health Complex, Cumilla', 'barura-upazila-health-complex-cumilla', 1, NULL, NULL, 1, 1),
(95, 'Brahmmanpara Upazila Health Complex, Cumilla', 'brahmmanpara-upazila-health-complex-cumilla', 1, NULL, NULL, 1, 1),
(96, 'Burichong Upazila Health Complex, Cumilla', 'burichong-upazila-health-complex-cumilla', 1, NULL, NULL, 1, 1),
(97, 'Chandina Upazila Health Complex, Cumilla', 'chandina-upazila-health-complex-cumilla', 1, NULL, NULL, 1, 1),
(98, 'Comilla Sadar Daxin Upazila Health Complex, Cumilla', 'comilla-sadar-daxin-upazila-health-complex-cumilla', 1, NULL, NULL, 1, 1),
(99, 'Daudkandi Upazila Health Complex, Cumilla', 'daudkandi-upazila-health-complex-cumilla', 1, NULL, NULL, 1, 1),
(100, 'Laksham Upazila Health Complex, Cumilla', 'laksham-upazila-health-complex-cumilla', 1, NULL, NULL, 1, 1),
(101, 'Monoharganj Upazila Health Complex, Cumilla', 'monoharganj-upazila-health-complex-cumilla', 1, NULL, NULL, 1, 1),
(102, 'Meghna Upazila Health Complex, Cumilla', 'meghna-upazila-health-complex-cumilla', 1, NULL, NULL, 1, 1),
(103, 'Titas Upazila Health Complex, Cumilla', 'titas-upazila-health-complex-cumilla', 1, NULL, NULL, 1, 1),
(104, 'Daganbhuiya Upazila Health Complex, Feni', 'daganbhuiya-upazila-health-complex-feni', 1, NULL, NULL, 1, 1),
(105, 'Fulgazi Upazila Health Complex, Feni', 'fulgazi-upazila-health-complex-feni', 1, NULL, NULL, 1, 1),
(106, 'Sonagazi Upazila Health Complex, Feni', 'sonagazi-upazila-health-complex-feni', 1, NULL, NULL, 1, 1),
(107, 'Dighinala Upazila Health Complex, Khagrachhari', 'dighinala-upazila-health-complex-khagrachhari', 1, NULL, NULL, 1, 1),
(108, 'Lakshmichari Upazila Health Complex, Khagrachhari', 'lakshmichari-upazila-health-complex-khagrachhari', 1, NULL, NULL, 1, 1),
(109, 'Mohalchari Upazila Health Complex, Khagrachhari', 'mohalchari-upazila-health-complex-khagrachhari', 1, NULL, NULL, 1, 1),
(110, 'Manikchari Upazila Health Complex, Khagrachhari', 'manikchari-upazila-health-complex-khagrachhari', 1, NULL, NULL, 1, 1),
(111, 'Matiranga Upazila Health Complex, Khagrachhari', 'matiranga-upazila-health-complex-khagrachhari', 1, NULL, NULL, 1, 1),
(112, 'Panchari Upazila Health Complex, Khagrachhari', 'panchari-upazila-health-complex-khagrachhari', 1, NULL, NULL, 1, 1),
(113, 'Ramgarh Upazila Health Complex, Khagrachhari', 'ramgarh-upazila-health-complex-khagrachhari', 1, NULL, NULL, 1, 1),
(114, 'Kamolnagar Upazila Health Complex, Lakshmipur', 'kamolnagar-upazila-health-complex-lakshmipur', 1, NULL, NULL, 1, 1),
(115, 'Ramganj Upazila Health Complex, Lakshmipur', 'ramganj-upazila-health-complex-lakshmipur', 1, NULL, NULL, 1, 1),
(116, 'Ramgati Upazila Health Complex, Lakshmipur', 'ramgati-upazila-health-complex-lakshmipur', 1, NULL, NULL, 1, 1),
(117, 'Kabirhat Upazila Health Complex, Noakhali', 'kabirhat-upazila-health-complex-noakhali', 1, NULL, NULL, 1, 1),
(118, 'Sonaimuri Upazila Health Complex, Noakhali', 'sonaimuri-upazila-health-complex-noakhali', 1, NULL, NULL, 1, 1),
(119, 'Baghaichari Upazila Health Complex, Rangamati', 'baghaichari-upazila-health-complex-rangamati', 1, NULL, NULL, 1, 1),
(120, 'Barkal Upazila Health Complex, Rangamati', 'barkal-upazila-health-complex-rangamati', 1, NULL, NULL, 1, 1),
(121, 'Belaichari Upazila Health Complex, Rangamati', 'belaichari-upazila-health-complex-rangamati', 1, NULL, NULL, 1, 1),
(122, 'Juraichari Upazila Health Complex, Rangamati', 'juraichari-upazila-health-complex-rangamati', 1, NULL, NULL, 1, 1),
(123, 'Kaptai Upazila Health Complex, Rangamati', 'kaptai-upazila-health-complex-rangamati', 1, NULL, NULL, 1, 1),
(124, 'Kawkhali Upazila Health Complex, Rangamati', 'kawkhali-upazila-health-complex-rangamati', 1, NULL, NULL, 1, 1),
(125, 'Langadu Upazila Health Complex, Rangamati', 'langadu-upazila-health-complex-rangamati', 1, NULL, NULL, 1, 1),
(126, 'Naniarchar Upazila Health Complex, Rangamati', 'naniarchar-upazila-health-complex-rangamati', 1, NULL, NULL, 1, 1),
(127, 'Rajasthali Upazila Health Complex, Rangamati', 'rajasthali-upazila-health-complex-rangamati', 1, NULL, NULL, 1, 1),
(128, 'Keraniganj Upazila Health Complex, Dhaka', 'keraniganj-upazila-health-complex-dhaka', 1, NULL, NULL, 1, 1),
(129, 'Alfadanga Upazila Health Complex, Faridpur', 'alfadanga-upazila-health-complex-faridpur', 1, NULL, NULL, 1, 1),
(130, 'Charbhadrason Upazila Health Complex, Faridpur', 'charbhadrason-upazila-health-complex-faridpur', 1, NULL, NULL, 1, 1),
(131, 'Modhukhali Upazila Health Complex, Faridpur', 'modhukhali-upazila-health-complex-faridpur', 1, NULL, NULL, 1, 1),
(132, 'Sadarpur Upazila Health Complex, Faridpur', 'sadarpur-upazila-health-complex-faridpur', 1, NULL, NULL, 1, 1),
(133, 'Saltha Upazila Health Complex, Faridpur', 'saltha-upazila-health-complex-faridpur', 1, NULL, NULL, 1, 1),
(134, 'Kaliakair Upazila Health Complex, Gazipur', 'kaliakair-upazila-health-complex-gazipur', 1, NULL, NULL, 1, 1),
(135, 'Sreepur Upazila Health Complex, Gazipur', 'sreepur-upazila-health-complex-gazipur', 1, NULL, NULL, 1, 1),
(136, 'Kotwalipara Upazila Health Complex, Gopalganj', 'kotwalipara-upazila-health-complex-gopalganj', 1, NULL, NULL, 1, 1),
(137, 'Mukshedpur Upazila Health Complex, Gopalganj', 'mukshedpur-upazila-health-complex-gopalganj', 1, NULL, NULL, 1, 1),
(138, 'Tungipara Upazila Health Complex, Gopalganj', 'tungipara-upazila-health-complex-gopalganj', 1, NULL, NULL, 1, 1),
(139, 'Austagram Upazila Health Complex, Kishorgonj', 'austagram-upazila-health-complex-kishorgonj', 1, NULL, NULL, 1, 1),
(140, 'Bajitpur Upazila Health Complex, Kishorgonj', 'bajitpur-upazila-health-complex-kishorgonj', 1, NULL, NULL, 1, 1),
(141, 'Hossainpur Upazila Health Complex, Kishorgonj', 'hossainpur-upazila-health-complex-kishorgonj', 1, NULL, NULL, 1, 1),
(142, 'Itna Upazila Health Complex, Kishorgonj', 'itna-upazila-health-complex-kishorgonj', 1, NULL, NULL, 1, 1),
(143, 'Katiadi Upazila Health Complex, Kishorgonj', 'katiadi-upazila-health-complex-kishorgonj', 1, NULL, NULL, 1, 1),
(144, 'Kuliarchar Upazila Health Complex, Kishorgonj', 'kuliarchar-upazila-health-complex-kishorgonj', 1, NULL, NULL, 1, 1),
(145, 'Mithamoin Upazila Health Complex, Kishorgonj', 'mithamoin-upazila-health-complex-kishorgonj', 1, NULL, NULL, 1, 1),
(146, 'Nikli Upazila Health Complex, Kishorgonj', 'nikli-upazila-health-complex-kishorgonj', 1, NULL, NULL, 1, 1),
(147, 'Pakundia Upazila Health Complex, Kishorgonj', 'pakundia-upazila-health-complex-kishorgonj', 1, NULL, NULL, 1, 1),
(148, 'Kalkini Upazila Health Complex, Madaripur', 'kalkini-upazila-health-complex-madaripur', 1, NULL, NULL, 1, 1),
(149, 'Rajoir Upazila Health Complex, Madaripur', 'rajoir-upazila-health-complex-madaripur', 1, NULL, NULL, 1, 1),
(150, 'Daulatpur Upazila Health Complex, Manikganj', 'daulatpur-upazila-health-complex-manikganj', 1, NULL, NULL, 1, 1),
(151, 'Ghior Upazila Health Complex, Manikganj', 'ghior-upazila-health-complex-manikganj', 1, NULL, NULL, 1, 1),
(152, 'Harirampur Upazila Health Complex, Manikganj', 'harirampur-upazila-health-complex-manikganj', 1, NULL, NULL, 1, 1),
(153, 'Saturia Upazila Health Complex, Manikganj', 'saturia-upazila-health-complex-manikganj', 1, NULL, NULL, 1, 1),
(154, 'Shibalaya Upazila Health Complex, Manikganj', 'shibalaya-upazila-health-complex-manikganj', 1, NULL, NULL, 1, 1),
(155, 'Singair Upazila Health Complex, Manikganj', 'singair-upazila-health-complex-manikganj', 1, NULL, NULL, 1, 1),
(156, 'Araihazar Upazila Health Complex, Narayanganj', 'araihazar-upazila-health-complex-narayanganj', 1, NULL, NULL, 1, 1),
(157, 'Bandar Upazila Health Complex, Narayanganj', 'bandar-upazila-health-complex-narayanganj', 1, NULL, NULL, 1, 1),
(158, 'Rupganj Upazila Health Complex, Narayanganj', 'rupganj-upazila-health-complex-narayanganj', 1, NULL, NULL, 1, 1),
(159, 'Sonargaon Upazila Health Complex, Narayanganj', 'sonargaon-upazila-health-complex-narayanganj', 1, NULL, NULL, 1, 1),
(160, 'Belabo Upazila Health Complex, Narsingdi', 'belabo-upazila-health-complex-narsingdi', 1, NULL, NULL, 1, 1),
(161, 'Palash Upazila Health Complex, Narsingdi', 'palash-upazila-health-complex-narsingdi', 1, NULL, NULL, 1, 1),
(162, 'Raipura Upazila Health Complex, Narsingdi', 'raipura-upazila-health-complex-narsingdi', 1, NULL, NULL, 1, 1),
(163, 'Shibpur Upazila Health Complex, Narsingdi', 'shibpur-upazila-health-complex-narsingdi', 1, NULL, NULL, 1, 1),
(164, 'Baliakandi Upazila Health Complex, Rajbari', 'baliakandi-upazila-health-complex-rajbari', 1, NULL, NULL, 1, 1),
(165, 'Kalukhali Upazila Health Complex, Rajbari', 'kalukhali-upazila-health-complex-rajbari', 1, NULL, NULL, 1, 1),
(166, 'Bhedarganj Upazila Health Complex, Shariatpur', 'bhedarganj-upazila-health-complex-shariatpur', 1, NULL, NULL, 1, 1),
(167, 'Damudya Upazila Health Complex, Shariatpur', 'damudya-upazila-health-complex-shariatpur', 1, NULL, NULL, 1, 1),
(168, 'Goshairhat Upazila Health Complex, Shariatpur', 'goshairhat-upazila-health-complex-shariatpur', 1, NULL, NULL, 1, 1),
(169, 'Naria Upazila Health Complex, Shariatpur', 'naria-upazila-health-complex-shariatpur', 1, NULL, NULL, 1, 1),
(170, 'Zanjira Upazila Health Complex, Shariatpur', 'zanjira-upazila-health-complex-shariatpur', 1, NULL, NULL, 1, 1),
(171, 'Bhuapur Upazila Health Complex, Tangail', 'bhuapur-upazila-health-complex-tangail', 1, NULL, NULL, 1, 1),
(172, 'Delduar Upazila Health Complex, Tangail', 'delduar-upazila-health-complex-tangail', 1, NULL, NULL, 1, 1),
(173, 'Gopalpur Upazila Health Complex, Tangail', 'gopalpur-upazila-health-complex-tangail', 1, NULL, NULL, 1, 1),
(174, 'Mirzapur Upazila Health Complex, Tangail', 'mirzapur-upazila-health-complex-tangail', 1, NULL, NULL, 1, 1),
(175, 'Nagarpur Upazila Health Complex, Tangail', 'nagarpur-upazila-health-complex-tangail', 1, NULL, NULL, 1, 1),
(176, 'Morrelganj Upazila Health Complex, Bagerhat', 'morrelganj-upazila-health-complex-bagerhat', 1, NULL, NULL, 1, 1),
(177, 'Sarankhola Upazila Health Complex, Bagerhat', 'sarankhola-upazila-health-complex-bagerhat', 1, NULL, NULL, 1, 1),
(178, 'Alamdanga Upazila Health Complex, Chuadanga', 'alamdanga-upazila-health-complex-chuadanga', 1, NULL, NULL, 1, 1),
(179, 'Damurhuda Upazila Health Complex, Chuadanga', 'damurhuda-upazila-health-complex-chuadanga', 1, NULL, NULL, 1, 1),
(180, 'Jibannagar Upazila Health Complex, Chuadanga', 'jibannagar-upazila-health-complex-chuadanga', 1, NULL, NULL, 1, 1),
(181, 'Bagherpara Upazila Health Complex, Jashore', 'bagherpara-upazila-health-complex-jashore', 1, NULL, NULL, 1, 1),
(182, 'Jhikargacha Upazila Health Complex, Jashore', 'jhikargacha-upazila-health-complex-jashore', 1, NULL, NULL, 1, 1),
(183, 'Monirampur Upazila Health Complex, Jashore', 'monirampur-upazila-health-complex-jashore', 1, NULL, NULL, 1, 1),
(184, 'Sarsa Upazila Health Complex, Jashore', 'sarsa-upazila-health-complex-jashore', 1, NULL, NULL, 1, 1),
(185, 'Shailkupa Upazila Health Complex, Jhenaidah', 'shailkupa-upazila-health-complex-jhenaidah', 1, NULL, NULL, 1, 1),
(186, 'Batiaghata Upazila Health Complex, Khulna', 'batiaghata-upazila-health-complex-khulna', 1, NULL, NULL, 1, 1),
(187, 'Dighalia Upazila Health Complex, Khulna', 'dighalia-upazila-health-complex-khulna', 1, NULL, NULL, 1, 1),
(188, 'Dumuria Upazila Health Complex, Khulna', 'dumuria-upazila-health-complex-khulna', 1, NULL, NULL, 1, 1),
(189, 'Koyra Upazila Health Complex, Khulna', 'koyra-upazila-health-complex-khulna', 1, NULL, NULL, 1, 1),
(190, 'Paikgacha Upazila Health Complex, Khulna', 'paikgacha-upazila-health-complex-khulna', 1, NULL, NULL, 1, 1),
(191, 'Rupsha Upazila Health Complex, Khulna', 'rupsha-upazila-health-complex-khulna', 1, NULL, NULL, 1, 1),
(192, 'Terokhada Upazila Health Complex, Khulna', 'terokhada-upazila-health-complex-khulna', 1, NULL, NULL, 1, 1),
(193, 'Khoksha Upazila Health Complex, Kushtia', 'khoksha-upazila-health-complex-kushtia', 1, NULL, NULL, 1, 1),
(194, 'Kumarkhali Upazila Health Complex, Kushtia', 'kumarkhali-upazila-health-complex-kushtia', 1, NULL, NULL, 1, 1),
(195, 'Mohammadpur Upazila Health Complex, Magura', 'mohammadpur-upazila-health-complex-magura', 1, NULL, NULL, 1, 1),
(196, 'Shalikha Upazila Health Complex, Magura', 'shalikha-upazila-health-complex-magura', 1, NULL, NULL, 1, 1),
(197, 'Sreepur Upazila Health Complex, Magura', 'sreepur-upazila-health-complex-magura', 1, NULL, NULL, 1, 1),
(198, 'Mujibnagar Upazila Health Complex, Meherpur', 'mujibnagar-upazila-health-complex-meherpur', 1, NULL, NULL, 1, 1),
(199, 'Lohagara Upazila Health Complex, Narail', 'lohagara-upazila-health-complex-narail', 1, NULL, NULL, 1, 1),
(200, 'Assasuni Upazila Health Complex, Satkhira', 'assasuni-upazila-health-complex-satkhira', 1, NULL, NULL, 1, 1),
(201, 'Debhata Upazila Health Complex, Satkhira', 'debhata-upazila-health-complex-satkhira', 1, NULL, NULL, 1, 1),
(202, 'Kaliganj Upazila Health Complex, Satkhira', 'kaliganj-upazila-health-complex-satkhira', 1, NULL, NULL, 1, 1),
(203, 'Bakshiganj Upazila Health Complex, Jamalpur', 'bakshiganj-upazila-health-complex-jamalpur', 1, NULL, NULL, 1, 1),
(204, 'Dewanganj Upazila Health Complex, Jamalpur', 'dewanganj-upazila-health-complex-jamalpur', 1, NULL, NULL, 1, 1),
(205, 'Madarganj Upazila Health Complex, Jamalpur', 'madarganj-upazila-health-complex-jamalpur', 1, NULL, NULL, 1, 1),
(206, 'Bhaluka Upazila Health Complex, Mymensingh', 'bhaluka-upazila-health-complex-mymensingh', 1, NULL, NULL, 1, 1),
(207, 'Dhubaura Upazila Health Complex, Mymensingh', 'dhubaura-upazila-health-complex-mymensingh', 1, NULL, NULL, 1, 1),
(208, 'Fulbaria Upazila Health Complex, Mymensingh', 'fulbaria-upazila-health-complex-mymensingh', 1, NULL, NULL, 1, 1),
(209, 'Gouripur Upazila Health Complex, Mymensingh', 'gouripur-upazila-health-complex-mymensingh', 1, NULL, NULL, 1, 1),
(210, 'Haluaghat Upazila Health Complex, Mymensingh', 'haluaghat-upazila-health-complex-mymensingh', 1, NULL, NULL, 1, 1),
(211, 'Muktagacha Upazila Health Complex, Mymensingh', 'muktagacha-upazila-health-complex-mymensingh', 1, NULL, NULL, 1, 1),
(212, 'Atpara Upazila Health Complex, Netrakona', 'atpara-upazila-health-complex-netrakona', 1, NULL, NULL, 1, 1),
(213, 'Barhatta Upazila Health Complex, Netrakona', 'barhatta-upazila-health-complex-netrakona', 1, NULL, NULL, 1, 1),
(214, 'Durgapur Upazila Health Complex, Netrakona', 'durgapur-upazila-health-complex-netrakona', 1, NULL, NULL, 1, 1),
(215, 'Khaliajuri Upazila Health Complex, Netrakona', 'khaliajuri-upazila-health-complex-netrakona', 1, NULL, NULL, 1, 1),
(216, 'Jhenaigati Upazila Health Complex, Sherpur', 'jhenaigati-upazila-health-complex-sherpur', 1, NULL, NULL, 1, 1),
(217, 'Nakhla Upazila Health Complex, Sherpur', 'nakhla-upazila-health-complex-sherpur', 1, NULL, NULL, 1, 1),
(218, 'Nalitabari Upazila Health Complex, Sherpur', 'nalitabari-upazila-health-complex-sherpur', 1, NULL, NULL, 1, 1),
(219, 'Sribordi Upazila health Complex, Sherpur', 'sribordi-upazila-health-complex-sherpur', 1, NULL, NULL, 1, 1),
(220, 'Dhupchachia Upazila Health Complex, Bogura', 'dhupchachia-upazila-health-complex-bogura', 1, NULL, NULL, 1, 1),
(221, 'Nandigram Upazila Health Complex, Bogura', 'nandigram-upazila-health-complex-bogura', 1, NULL, NULL, 1, 1),
(222, 'Shajahanpur Upazila Health Complex, Bogura', 'shajahanpur-upazila-health-complex-bogura', 1, NULL, NULL, 1, 1),
(223, 'Sherpur Upazila Health Complex, Bogura', 'sherpur-upazila-health-complex-bogura', 1, NULL, NULL, 1, 1),
(224, 'Bholahat Upazila Health Complex, Chapai Nawabganj', 'bholahat-upazila-health-complex-chapai-nawabganj', 1, NULL, NULL, 1, 1),
(225, 'Gomastapur Upazila Health Complex, Chapai Nawabganj', 'gomastapur-upazila-health-complex-chapai-nawabganj', 1, NULL, NULL, 1, 1),
(226, 'Nachol Upazila Health Complex, Chapai Nawabganj', 'nachol-upazila-health-complex-chapai-nawabganj', 1, NULL, NULL, 1, 1),
(227, 'Khetlal Upazila Health Complex, Joypurhat', 'khetlal-upazila-health-complex-joypurhat', 1, NULL, NULL, 1, 1),
(228, 'Panchbibi Upazila Health Complex, Joypurhat', 'panchbibi-upazila-health-complex-joypurhat', 1, NULL, NULL, 1, 1),
(229, 'Atrai Upazila Health Complex, Naogaon', 'atrai-upazila-health-complex-naogaon', 1, NULL, NULL, 1, 1),
(230, 'Niamatpur Upazila Health Complex, Naogaon', 'niamatpur-upazila-health-complex-naogaon', 1, NULL, NULL, 1, 1),
(231, 'Porsha Upazila Health Complex, Naogaon', 'porsha-upazila-health-complex-naogaon', 1, NULL, NULL, 1, 1),
(232, 'Raninagar Upazila Health Complex, Naogaon', 'raninagar-upazila-health-complex-naogaon', 1, NULL, NULL, 1, 1),
(233, 'Bagatipara Upazila Health Complex, Natore', 'bagatipara-upazila-health-complex-natore', 1, NULL, NULL, 1, 1),
(234, 'Baraigram Upazila Health Complex, Natore', 'baraigram-upazila-health-complex-natore', 1, NULL, NULL, 1, 1),
(235, 'Gurudashpur Upazila Health Complex, Natore', 'gurudashpur-upazila-health-complex-natore', 1, NULL, NULL, 1, 1),
(236, 'Singra Upazila Health Complex, Natore', 'singra-upazila-health-complex-natore', 1, NULL, NULL, 1, 1),
(237, 'Atgharia Upazila Health Complex, Pabna', 'atgharia-upazila-health-complex-pabna', 1, NULL, NULL, 1, 1),
(238, 'Bera Upazila Health Complex, Pabna', 'bera-upazila-health-complex-pabna', 1, NULL, NULL, 1, 1),
(239, 'Bhangura Upazila Health Complex, Pabna', 'bhangura-upazila-health-complex-pabna', 1, NULL, NULL, 1, 1),
(240, 'Iswardi Upazila Health Complex, Pabna', 'iswardi-upazila-health-complex-pabna', 1, NULL, NULL, 1, 1),
(241, 'Santhia Upazila Health Complex, Pabna', 'santhia-upazila-health-complex-pabna', 1, NULL, NULL, 1, 1),
(242, 'Bagha Upazila Health Complex, Rajshahi', 'bagha-upazila-health-complex-rajshahi', 1, NULL, NULL, 1, 1),
(243, 'Bagmara Upazila Health Complex, Rajshahi', 'bagmara-upazila-health-complex-rajshahi', 1, NULL, NULL, 1, 1),
(244, 'Godagari Upazila Health Complex, Rajshahi', 'godagari-upazila-health-complex-rajshahi', 1, NULL, NULL, 1, 1),
(245, 'Mohanpur Upazila Health Complex, Rajshahi', 'mohanpur-upazila-health-complex-rajshahi', 1, NULL, NULL, 1, 1),
(246, 'Paba Upazila Health Complex, Rajshahi', 'paba-upazila-health-complex-rajshahi', 1, NULL, NULL, 1, 1),
(247, 'Belkuchi Upazila Health Complex, Sirajganj', 'belkuchi-upazila-health-complex-sirajganj', 1, NULL, NULL, 1, 1),
(248, 'Chowhali Upazila Health Complex, Sirajganj', 'chowhali-upazila-health-complex-sirajganj', 1, NULL, NULL, 1, 1),
(249, 'Kamarkhanda Upazila Health Complex, Sirajganj', 'kamarkhanda-upazila-health-complex-sirajganj', 1, NULL, NULL, 1, 1),
(250, 'Kazipur Upazila Health Complex, Sirajganj', 'kazipur-upazila-health-complex-sirajganj', 1, NULL, NULL, 1, 1),
(251, 'Raiganj Upazila Health Complex, Sirajganj', 'raiganj-upazila-health-complex-sirajganj', 1, NULL, NULL, 1, 1),
(252, 'Shahzadpur Upazila Health Complex, Sirajganj', 'shahzadpur-upazila-health-complex-sirajganj', 1, NULL, NULL, 1, 1),
(253, 'Tarash Upazila Health Complex, Sirajganj', 'tarash-upazila-health-complex-sirajganj', 1, NULL, NULL, 1, 1),
(254, 'Ullapara Upazila Health Complex, Sirajganj', 'ullapara-upazila-health-complex-sirajganj', 1, NULL, NULL, 1, 1),
(255, 'Birol Upazila Health Complex, Dinajpur', 'birol-upazila-health-complex-dinajpur', 1, NULL, NULL, 1, 1),
(256, 'Birampur Upazila Health Complex, Dinajpur', 'birampur-upazila-health-complex-dinajpur', 1, NULL, NULL, 1, 1),
(257, 'Birganj Upazila Health Complex, Dinajpur', 'birganj-upazila-health-complex-dinajpur', 1, NULL, NULL, 1, 1),
(258, 'Chirirbandar Upazila Health Complex, Dinajpur', 'chirirbandar-upazila-health-complex-dinajpur', 1, NULL, NULL, 1, 1),
(259, 'Fulbari Upazila Health Complex, Dinajpur', 'fulbari-upazila-health-complex-dinajpur', 1, NULL, NULL, 1, 1),
(260, 'Ghoraghat Upazila Health Complex, Dinajpur', 'ghoraghat-upazila-health-complex-dinajpur', 1, NULL, NULL, 1, 1),
(261, 'Hakimpur Upazila Health Complex, Dinajpur', 'hakimpur-upazila-health-complex-dinajpur', 1, NULL, NULL, 1, 1),
(262, 'Kaharol Upazila Health Complex, Dinajpur', 'kaharol-upazila-health-complex-dinajpur', 1, NULL, NULL, 1, 1),
(263, 'Khansama Upazila Health Complex, Dinajpur', 'khansama-upazila-health-complex-dinajpur', 1, NULL, NULL, 1, 1),
(264, 'Nawabganj Upazila Health Complex, Dinajpur', 'nawabganj-upazila-health-complex-dinajpur', 1, NULL, NULL, 1, 1),
(265, 'Fulchari Upazila Health Complex, Gaibandha', 'fulchari-upazila-health-complex-gaibandha', 1, NULL, NULL, 1, 1),
(266, 'Palashbari Upazila Health Complex, Gaibandha', 'palashbari-upazila-health-complex-gaibandha', 1, NULL, NULL, 1, 1),
(267, 'Sadullapur Upazila Health Complex, Gaibandha', 'sadullapur-upazila-health-complex-gaibandha', 1, NULL, NULL, 1, 1),
(268, 'Shaghatta Upazila Health Complex, Gaibandha', 'shaghatta-upazila-health-complex-gaibandha', 1, NULL, NULL, 1, 1),
(269, 'Sundarganj Upazila Health Complex, Gaibandha', 'sundarganj-upazila-health-complex-gaibandha', 1, NULL, NULL, 1, 1),
(270, 'Bhurungamari Upazila Health Complex, Kurigram', 'bhurungamari-upazila-health-complex-kurigram', 1, NULL, NULL, 1, 1),
(271, 'Nageswari Upazila Health Complex, Kurigram', 'nageswari-upazila-health-complex-kurigram', 1, NULL, NULL, 1, 1),
(272, 'Fulbari Upazila Health Complex, Kurigram', 'fulbari-upazila-health-complex-kurigram', 1, NULL, NULL, 1, 1),
(273, 'Rajarhat Upazila Health Complex, Kurigram', 'rajarhat-upazila-health-complex-kurigram', 1, NULL, NULL, 1, 1),
(274, 'Rajibpur Upazila Health Complex, Kurigram', 'rajibpur-upazila-health-complex-kurigram', 1, NULL, NULL, 1, 1),
(275, 'Rowmari Upazila Health Complex, Kurigram', 'rowmari-upazila-health-complex-kurigram', 1, NULL, NULL, 1, 1),
(276, 'Aditmari Upazila Health Complex, Lalmonirhat', 'aditmari-upazila-health-complex-lalmonirhat', 1, NULL, NULL, 1, 1),
(277, 'Hatibandha Upazila Health Complex, Lalmonirhat', 'hatibandha-upazila-health-complex-lalmonirhat', 1, NULL, NULL, 1, 1),
(278, 'Patgram Upazila Health Complex, Lalmonirhat', 'patgram-upazila-health-complex-lalmonirhat', 1, NULL, NULL, 1, 1),
(279, 'Jaldhaka Upazila Health Complex, Nilphamari', 'jaldhaka-upazila-health-complex-nilphamari', 1, NULL, NULL, 1, 1),
(280, 'Kishoreganj Upazila Health Complex, Nilphamari', 'kishoreganj-upazila-health-complex-nilphamari', 1, NULL, NULL, 1, 1),
(281, 'Saidpur Upazila Health Complex, Nilphamari', 'saidpur-upazila-health-complex-nilphamari', 1, NULL, NULL, 1, 1),
(282, 'Atwari Upazila Health Complex, Panchagarh', 'atwari-upazila-health-complex-panchagarh', 1, NULL, NULL, 1, 1),
(283, 'Badarganj Upazila Health Complex, Rangpur', 'badarganj-upazila-health-complex-rangpur', 1, NULL, NULL, 1, 1),
(284, 'Kownia Upazila Health Complex, Rangpur', 'kownia-upazila-health-complex-rangpur', 1, NULL, NULL, 1, 1),
(285, 'Pirgacha Upazila Health Complex, Rangpur', 'pirgacha-upazila-health-complex-rangpur', 1, NULL, NULL, 1, 1),
(286, 'Taraganj Upazila Health Complex, Rangpur', 'taraganj-upazila-health-complex-rangpur', 1, NULL, NULL, 1, 1),
(287, 'Pirganj Upazila Health Complex, Thakurgaon', 'pirganj-upazila-health-complex-thakurgaon', 1, NULL, NULL, 1, 1),
(288, 'Ajmiriganj Upazila Health Complex, Habiganj', 'ajmiriganj-upazila-health-complex-habiganj', 1, NULL, NULL, 1, 1),
(289, 'Bahubal Upazila Health Complex, Habiganj', 'bahubal-upazila-health-complex-habiganj', 1, NULL, NULL, 1, 1),
(290, 'Baniachong Upazila Health Complex, Habiganj', 'baniachong-upazila-health-complex-habiganj', 1, NULL, NULL, 1, 1),
(291, 'Chunarughat Upazila Health Complex, Hobigonj., Habiganj', 'chunarughat-upazila-health-complex-hobigonj-habiganj', 1, NULL, NULL, 1, 1),
(292, 'Lakhai Upazila Health Complex, Habiganj', 'lakhai-upazila-health-complex-habiganj', 1, NULL, NULL, 1, 1),
(293, 'Nabiganj Upazila Health Complex, Habiganj', 'nabiganj-upazila-health-complex-habiganj', 1, NULL, NULL, 1, 1),
(294, 'Barlekha Upazila Health Complex, Maulvibazar', 'barlekha-upazila-health-complex-maulvibazar', 1, NULL, NULL, 1, 1),
(295, 'Juri Upazila Health Complex, Maulvibazar', 'juri-upazila-health-complex-maulvibazar', 1, NULL, NULL, 1, 1),
(296, 'Kamalganj Upazila Health Complex, Maulvibazar', 'kamalganj-upazila-health-complex-maulvibazar', 1, NULL, NULL, 1, 1),
(297, 'Rajnagar Upazila Health Complex, Maulvibazar', 'rajnagar-upazila-health-complex-maulvibazar', 1, NULL, NULL, 1, 1),
(298, 'Sreemangal Upazila Health Complex, Maulvibazar', 'sreemangal-upazila-health-complex-maulvibazar', 1, NULL, NULL, 1, 1),
(299, 'Biswambarpur Upazila Health Complex, Sunamganj', 'biswambarpur-upazila-health-complex-sunamganj', 1, NULL, NULL, 1, 1),
(300, 'Chhatak Upazila Health Complex, Sunamganj', 'chhatak-upazila-health-complex-sunamganj', 1, NULL, NULL, 1, 1),
(301, 'Dakshin Sunamganj Upazila Health Complex, Sunamganj', 'dakshin-sunamganj-upazila-health-complex-sunamganj', 1, NULL, NULL, 1, 1),
(302, 'Derai Upazila Health Complex, Sunamganj', 'derai-upazila-health-complex-sunamganj', 1, NULL, NULL, 1, 1),
(303, 'Dharmapasha Upazila Health Complex, Sunamganj', 'dharmapasha-upazila-health-complex-sunamganj', 1, NULL, NULL, 1, 1),
(304, 'Doarabazar Upazila Health Complex, Sunamganj', 'doarabazar-upazila-health-complex-sunamganj', 1, NULL, NULL, 1, 1),
(305, 'Jamalganj Upazila Health Complex, Sunamganj', 'jamalganj-upazila-health-complex-sunamganj', 1, NULL, NULL, 1, 1),
(306, 'Sulla Upazila Health Complex, Sunamganj', 'sulla-upazila-health-complex-sunamganj', 1, NULL, NULL, 1, 1),
(307, 'Taherpur Upazila Health Complex, Sunamganj', 'taherpur-upazila-health-complex-sunamganj', 1, NULL, NULL, 1, 1),
(308, 'Balaganj Upazila Health Complex, Sylhet', 'balaganj-upazila-health-complex-sylhet', 1, NULL, NULL, 1, 1),
(309, 'Bishwanath Upazila Health Complex, Sylhet', 'bishwanath-upazila-health-complex-sylhet', 1, NULL, NULL, 1, 1),
(310, 'Companyganj Upazila Health Complex, Sylhet', 'companyganj-upazila-health-complex-sylhet', 1, NULL, NULL, 1, 1),
(311, 'Dakhin Surma Upazila Health Complex, Sylhet', 'dakhin-surma-upazila-health-complex-sylhet', 1, NULL, NULL, 1, 1),
(312, 'Fenchuganj Upazila Health Complex, Sylhet', 'fenchuganj-upazila-health-complex-sylhet', 1, NULL, NULL, 1, 1),
(313, 'Jaintapur Upazila Health Complex, Sylhet', 'jaintapur-upazila-health-complex-sylhet', 1, NULL, NULL, 1, 1),
(314, 'Kanaighat Upazila Health Complex, Sylhet', 'kanaighat-upazila-health-complex-sylhet', 1, NULL, NULL, 1, 1),
(315, 'Zokiganj Upazila Health Complex, Sylhet', 'zokiganj-upazila-health-complex-sylhet', 1, NULL, NULL, 1, 1),
(316, 'Amtali Upazila Health Complex, Barguna', 'amtali-upazila-health-complex-barguna', 1, NULL, NULL, 1, 1),
(317, 'Betagi Upazila Health Complex, Barguna', 'betagi-upazila-health-complex-barguna', 1, NULL, NULL, 1, 1),
(318, 'Patharghata Upazila Health Complex, Barguna', 'patharghata-upazila-health-complex-barguna', 1, NULL, NULL, 1, 1),
(319, 'Agailjhara Upazila Health Complex, Barishal', 'agailjhara-upazila-health-complex-barishal', 1, NULL, NULL, 1, 1),
(320, 'Gournadi Upazila Health Complex, Barishal', 'gournadi-upazila-health-complex-barishal', 1, NULL, NULL, 1, 1),
(321, 'Muladi Upazila Health Complex, Barishal', 'muladi-upazila-health-complex-barishal', 1, NULL, NULL, 1, 1),
(322, 'Borhanuddin Upazila Health Complex, Bhola', 'borhanuddin-upazila-health-complex-bhola', 1, NULL, NULL, 1, 1),
(323, 'Charfession Upazila Health Complex, Bhola', 'charfession-upazila-health-complex-bhola', 1, NULL, NULL, 1, 1),
(324, 'Daulatkhan Upazila Health Complex, Bhola', 'daulatkhan-upazila-health-complex-bhola', 1, NULL, NULL, 1, 1),
(325, 'Lalmohan Upazila Health Complex, Bhola', 'lalmohan-upazila-health-complex-bhola', 1, NULL, NULL, 1, 1),
(326, 'Nalchithi Upazila Health Complex, Jhalokati', 'nalchithi-upazila-health-complex-jhalokati', 1, NULL, NULL, 1, 1),
(327, 'Galachipa Upazila Health Complex, Patuakhali', 'galachipa-upazila-health-complex-patuakhali', 1, NULL, NULL, 1, 1),
(328, 'Kalapara Upazila Health Complex, Patuakhali', 'kalapara-upazila-health-complex-patuakhali', 1, NULL, NULL, 1, 1),
(329, 'Mathbaria Upazila Health Complex, Pirojpur', 'mathbaria-upazila-health-complex-pirojpur', 1, NULL, NULL, 1, 1),
(330, 'Nesarabad Upazila Health Complex, Pirojpur', 'nesarabad-upazila-health-complex-pirojpur', 1, NULL, NULL, 1, 1),
(331, 'Nasirnagar Upazila Health Complex, Brahmanbaria', 'nasirnagar-upazila-health-complex-brahmanbaria', 1, NULL, NULL, 1, 1),
(332, 'Sarail Upazila Health Complex, Brahmanbaria', 'sarail-upazila-health-complex-brahmanbaria', 1, NULL, NULL, 1, 1),
(333, 'Haziganj Upazila Health Complex, Chandpur', 'haziganj-upazila-health-complex-chandpur', 1, NULL, NULL, 1, 1),
(334, 'Kachua Upazila Health Complex, Chandpur', 'kachua-upazila-health-complex-chandpur', 1, NULL, NULL, 1, 1),
(335, 'Matlab(daxin) Upazila Health Complex, Chandpur', 'matlabdaxin-upazila-health-complex-chandpur', 1, NULL, NULL, 1, 1),
(336, 'Anwara Upazila Health Complex, Chattogram', 'anwara-upazila-health-complex-chattogram', 1, NULL, NULL, 1, 1),
(337, 'Banshkhali Upazila Health Complex, Chattogram', 'banshkhali-upazila-health-complex-chattogram', 1, NULL, NULL, 1, 1),
(338, 'Boalkhali Upazila Health Complex, Chattogram', 'boalkhali-upazila-health-complex-chattogram', 1, NULL, NULL, 1, 1),
(339, 'Chandanaish Upazila Health Complex, Chattogram', 'chandanaish-upazila-health-complex-chattogram', 1, NULL, NULL, 1, 1),
(340, 'Hathazari Upazila Health Complex, Chattogram', 'hathazari-upazila-health-complex-chattogram', 1, NULL, NULL, 1, 1),
(341, 'Lohagara Upazila Health Complex, Chattogram', 'lohagara-upazila-health-complex-chattogram', 1, NULL, NULL, 1, 1),
(342, 'Mirarsarai Upazila Health Complex, Chattogram', 'mirarsarai-upazila-health-complex-chattogram', 1, NULL, NULL, 1, 1),
(343, 'Patiya Upazila Health Complex, Chattogram', 'patiya-upazila-health-complex-chattogram', 1, NULL, NULL, 1, 1),
(344, 'Rangunia Upazila Health Complex, Chattogram', 'rangunia-upazila-health-complex-chattogram', 1, NULL, NULL, 1, 1),
(345, 'Sitakunda Upazila Health Complex, Chattogram', 'sitakunda-upazila-health-complex-chattogram', 1, NULL, NULL, 1, 1),
(346, 'Chakaria Upazila Health Complex, Cox\'s Bazar', 'chakaria-upazila-health-complex-coxs-bazar', 1, NULL, NULL, 1, 1),
(347, 'Kutubdia Upazila Health Complex, Cox\'s Bazar', 'kutubdia-upazila-health-complex-coxs-bazar', 1, NULL, NULL, 1, 1),
(348, 'Moheshkhali Upazila Health Complex, Cox\'s Bazar', 'moheshkhali-upazila-health-complex-coxs-bazar', 1, NULL, NULL, 1, 1),
(349, 'Chaddagram Upazila Health Complex, Cumilla', 'chaddagram-upazila-health-complex-cumilla', 1, NULL, NULL, 1, 1),
(350, 'Debidwar Upazila Health Complex, Cumilla', 'debidwar-upazila-health-complex-cumilla', 1, NULL, NULL, 1, 1),
(351, 'Homna Upazila Health Complex, Cumilla', 'homna-upazila-health-complex-cumilla', 1, NULL, NULL, 1, 1),
(352, 'Langolkot Upazila Health Complex, Cumilla', 'langolkot-upazila-health-complex-cumilla', 1, NULL, NULL, 1, 1),
(353, 'Muradnagar Upazila Health Complex, Cumilla', 'muradnagar-upazila-health-complex-cumilla', 1, NULL, NULL, 1, 1),
(354, 'Chhagalnaya Upazila Health Complex, Feni', 'chhagalnaya-upazila-health-complex-feni', 1, NULL, NULL, 1, 1),
(355, 'Parsuram Upazila Health Complex, Feni', 'parsuram-upazila-health-complex-feni', 1, NULL, NULL, 1, 1),
(356, 'Raipur Upazila Health Complex, Lakshmipur', 'raipur-upazila-health-complex-lakshmipur', 1, NULL, NULL, 1, 1),
(357, 'Begumganj Upazila Health Complex, Noakhali', 'begumganj-upazila-health-complex-noakhali', 1, NULL, NULL, 1, 1),
(358, 'Chatkhil Upazila Health Complex, Noakhali', 'chatkhil-upazila-health-complex-noakhali', 1, NULL, NULL, 1, 1),
(359, 'Companiganj Upazila Health Complex, Noakhali', 'companiganj-upazila-health-complex-noakhali', 1, NULL, NULL, 1, 1),
(360, 'Hatiya Upazila Health Complex, Noakhali', 'hatiya-upazila-health-complex-noakhali', 1, NULL, NULL, 1, 1),
(361, 'Senbag Upazila Health Complex, Noakhali', 'senbag-upazila-health-complex-noakhali', 1, NULL, NULL, 1, 1),
(362, 'Subarnachar Upazila Health Complex, Noakhali', 'subarnachar-upazila-health-complex-noakhali', 1, NULL, NULL, 1, 1),
(363, 'Dhamrai Upazila Health Complex, Dhaka', 'dhamrai-upazila-health-complex-dhaka', 1, NULL, NULL, 1, 1),
(364, 'Dohar Upazila Health Complex, Dhaka', 'dohar-upazila-health-complex-dhaka', 1, NULL, NULL, 1, 1),
(365, 'Nawabganj Upazila Health Complex, Dhaka', 'nawabganj-upazila-health-complex-dhaka', 1, NULL, NULL, 1, 1),
(366, 'Savar Upazila Health Complex, Dhaka', 'savar-upazila-health-complex-dhaka', 1, NULL, NULL, 1, 1),
(367, 'Bhanga Upazila Health Complex, Faridpur', 'bhanga-upazila-health-complex-faridpur', 1, NULL, NULL, 1, 1),
(368, 'Boalmari Upazila Health Complex, Faridpur', 'boalmari-upazila-health-complex-faridpur', 1, NULL, NULL, 1, 1),
(369, 'Nagarkanda Upazila Health Complex, Faridpur', 'nagarkanda-upazila-health-complex-faridpur', 1, NULL, NULL, 1, 1),
(370, 'Kaliganj Upazila Health Complex, Gazipur', 'kaliganj-upazila-health-complex-gazipur', 1, NULL, NULL, 1, 1),
(371, 'Kapasia Upazila Health Complex, Gazipur', 'kapasia-upazila-health-complex-gazipur', 1, NULL, NULL, 1, 1),
(372, 'Kashiani Upazila Health Complex, Gopalganj', 'kashiani-upazila-health-complex-gopalganj', 1, NULL, NULL, 1, 1),
(373, 'Bhairab Upazila Health Complex, Kishorgonj', 'bhairab-upazila-health-complex-kishorgonj', 1, NULL, NULL, 1, 1),
(374, 'Karimganj Upazila Health Complex, Kishorgonj', 'karimganj-upazila-health-complex-kishorgonj', 1, NULL, NULL, 1, 1),
(375, 'Tarail Upazila Health Complex, Kishorgonj', 'tarail-upazila-health-complex-kishorgonj', 1, NULL, NULL, 1, 1),
(376, 'Shibchar Upazila Health Complex, Madaripur', 'shibchar-upazila-health-complex-madaripur', 1, NULL, NULL, 1, 1),
(377, 'Gazaria Upazila Health Complex, Munshiganj', 'gazaria-upazila-health-complex-munshiganj', 1, NULL, NULL, 1, 1),
(378, 'Louhajang Upazila Health Complex, Munshiganj', 'louhajang-upazila-health-complex-munshiganj', 1, NULL, NULL, 1, 1),
(379, 'Serajdikhan Upazila Health Complex, Munshiganj', 'serajdikhan-upazila-health-complex-munshiganj', 1, NULL, NULL, 1, 1),
(380, 'Sreenagar Upazila Health Complex, Munshiganj', 'sreenagar-upazila-health-complex-munshiganj', 1, NULL, NULL, 1, 1),
(381, 'Tungibari Upazila Health Complex, Munshiganj', 'tungibari-upazila-health-complex-munshiganj', 1, NULL, NULL, 1, 1),
(382, 'Monohardi Upazila Health Complex, Narsingdi', 'monohardi-upazila-health-complex-narsingdi', 1, NULL, NULL, 1, 1),
(383, 'Goalanda Upazila Health Complex, Rajbari', 'goalanda-upazila-health-complex-rajbari', 1, NULL, NULL, 1, 1),
(384, 'Pangsha Upazila Health Complex, Rajbari', 'pangsha-upazila-health-complex-rajbari', 1, NULL, NULL, 1, 1),
(385, 'Basail Upazila Health Complex, Tangail', 'basail-upazila-health-complex-tangail', 1, NULL, NULL, 1, 1),
(386, 'Dhanbari Upazila Health Complex, Tangail', 'dhanbari-upazila-health-complex-tangail', 1, NULL, NULL, 1, 1),
(387, 'Ghatail Upazila Health Complex, Tangail', 'ghatail-upazila-health-complex-tangail', 1, NULL, NULL, 1, 1),
(388, 'Kalihati Upazila Health Complex, Tangail', 'kalihati-upazila-health-complex-tangail', 1, NULL, NULL, 1, 1),
(389, 'Modhupur Upazila Health Complex, Tangail', 'modhupur-upazila-health-complex-tangail', 1, NULL, NULL, 1, 1),
(390, 'Sakhipur Upazila Health Complex, Tangail', 'sakhipur-upazila-health-complex-tangail', 1, NULL, NULL, 1, 1),
(391, 'Chitalmari Upazila Health Complex, Bagerhat', 'chitalmari-upazila-health-complex-bagerhat', 1, NULL, NULL, 1, 1),
(392, 'Fakirhat Upazila Health Complex, Bagerhat', 'fakirhat-upazila-health-complex-bagerhat', 1, NULL, NULL, 1, 1),
(393, 'Kachua Upazila Health Complex, Bagerhat', 'kachua-upazila-health-complex-bagerhat', 1, NULL, NULL, 1, 1),
(394, 'Mollahat Upazila Health Complex, Bagerhat', 'mollahat-upazila-health-complex-bagerhat', 1, NULL, NULL, 1, 1),
(395, 'Mongla Upazila Health Complex, Bagerhat', 'mongla-upazila-health-complex-bagerhat', 1, NULL, NULL, 1, 1),
(396, 'Rampal Upazila Health Complex, Bagerhat', 'rampal-upazila-health-complex-bagerhat', 1, NULL, NULL, 1, 1),
(397, 'Abhoynagar Upazila Health Complex, Jashore', 'abhoynagar-upazila-health-complex-jashore', 1, NULL, NULL, 1, 1),
(398, 'Chowgacha Upazila Health Complex, Jashore', 'chowgacha-upazila-health-complex-jashore', 1, NULL, NULL, 1, 1),
(399, 'Keshabpur Upazila Health Complex, Jashore', 'keshabpur-upazila-health-complex-jashore', 1, NULL, NULL, 1, 1),
(400, 'Harinakunda Upazila Health Complex, Jhenaidah', 'harinakunda-upazila-health-complex-jhenaidah', 1, NULL, NULL, 1, 1),
(401, 'Kaliganj Upazila Health Complex, Jhenaidah', 'kaliganj-upazila-health-complex-jhenaidah', 1, NULL, NULL, 1, 1),
(402, 'Kotchandpur Upazila Health Complex, Jhenaidah', 'kotchandpur-upazila-health-complex-jhenaidah', 1, NULL, NULL, 1, 1),
(403, 'Moheshpur Upazila Health Complex, Jhenaidah', 'moheshpur-upazila-health-complex-jhenaidah', 1, NULL, NULL, 1, 1),
(404, 'Dacope Upazila Health Complex, Khulna', 'dacope-upazila-health-complex-khulna', 1, NULL, NULL, 1, 1),
(405, 'Fultala Upazila Health Complex, Khulna', 'fultala-upazila-health-complex-khulna', 1, NULL, NULL, 1, 1),
(406, 'Bheramara Upazila Health Complex, Kushtia', 'bheramara-upazila-health-complex-kushtia', 1, NULL, NULL, 1, 1),
(407, 'Daulatpur Upazila Health Complex, Kushtia', 'daulatpur-upazila-health-complex-kushtia', 1, NULL, NULL, 1, 1),
(408, 'Mirpur Upazila Health Complex, Kushtia', 'mirpur-upazila-health-complex-kushtia', 1, NULL, NULL, 1, 1),
(409, 'Gangni Upazila Health Complex, Meherpur', 'gangni-upazila-health-complex-meherpur', 1, NULL, NULL, 1, 1),
(410, 'Kalia Upazila Health Complex, Narail', 'kalia-upazila-health-complex-narail', 1, NULL, NULL, 1, 1),
(411, 'Kalaroa Upazila Health Complex, Satkhira', 'kalaroa-upazila-health-complex-satkhira', 1, NULL, NULL, 1, 1),
(412, 'Shyamnagar Upazila Health Complex, Satkhira', 'shyamnagar-upazila-health-complex-satkhira', 1, NULL, NULL, 1, 1),
(413, 'Tala Upazila Health Complex, Satkhira', 'tala-upazila-health-complex-satkhira', 1, NULL, NULL, 1, 1),
(414, 'Islampur Upazila Health Complex, Jamalpur', 'islampur-upazila-health-complex-jamalpur', 1, NULL, NULL, 1, 1),
(415, 'Melandaha Upazila Health Complex, Jamalpur', 'melandaha-upazila-health-complex-jamalpur', 1, NULL, NULL, 1, 1),
(416, 'Sarishabari Upazila Health Complex, Jamalpur', 'sarishabari-upazila-health-complex-jamalpur', 1, NULL, NULL, 1, 1),
(417, 'Gofargaon Upazila Health Complex, Mymensingh', 'gofargaon-upazila-health-complex-mymensingh', 1, NULL, NULL, 1, 1),
(418, 'Iswarganj Upazila Health Complex, Mymensingh', 'iswarganj-upazila-health-complex-mymensingh', 1, NULL, NULL, 1, 1),
(419, 'Nandail Upazila Health Complex, Mymensingh', 'nandail-upazila-health-complex-mymensingh', 1, NULL, NULL, 1, 1),
(420, 'Phulpur Upazila Health Complex, Mymensingh, Mymensingh', 'phulpur-upazila-health-complex-mymensingh-mymensingh', 1, NULL, NULL, 1, 1),
(421, 'Trisal Upazila Health Complex, Mymensingh', 'trisal-upazila-health-complex-mymensingh', 1, NULL, NULL, 1, 1),
(422, 'Kalmakanda Upazila Health Complex, Netrakona', 'kalmakanda-upazila-health-complex-netrakona', 1, NULL, NULL, 1, 1),
(423, 'Kendua Upazila Health Complex, Netrakona', 'kendua-upazila-health-complex-netrakona', 1, NULL, NULL, 1, 1),
(424, 'Madan Upazila Health Complex, Netrakona', 'madan-upazila-health-complex-netrakona', 1, NULL, NULL, 1, 1),
(425, 'Mohanganj Upazila  Health  Complex, Netrakona', 'mohanganj-upazila-health-complex-netrakona', 1, NULL, NULL, 1, 1),
(426, 'Purbadhala Upazila Health Complex, Netrakona', 'purbadhala-upazila-health-complex-netrakona', 1, NULL, NULL, 1, 1),
(427, 'Adamdighi Upazila Health Complex, Bogura', 'adamdighi-upazila-health-complex-bogura', 1, NULL, NULL, 1, 1),
(428, 'Dhunat Upazila Health Complex, Bogura', 'dhunat-upazila-health-complex-bogura', 1, NULL, NULL, 1, 1),
(429, 'Gabtali Upazila Health Complex, Bogura', 'gabtali-upazila-health-complex-bogura', 1, NULL, NULL, 1, 1),
(430, 'Kahaloo Upazila Health Complex, Bogura', 'kahaloo-upazila-health-complex-bogura', 1, NULL, NULL, 1, 1),
(431, 'Sariakandi Upazila Health Complex, Bogura', 'sariakandi-upazila-health-complex-bogura', 1, NULL, NULL, 1, 1),
(432, 'Shibganj Upazila Health Complex, Bogra., Bogura', 'shibganj-upazila-health-complex-bogra-bogura', 1, NULL, NULL, 1, 1),
(433, 'Sonatala Upazila Health Complex, Bogura', 'sonatala-upazila-health-complex-bogura', 1, NULL, NULL, 1, 1),
(434, 'Shibganj Upazila Health Complex, Chapai Nawabganj', 'shibganj-upazila-health-complex-chapai-nawabganj', 1, NULL, NULL, 1, 1),
(435, 'Akkelpur Upazila Health Complex, Joypurhat', 'akkelpur-upazila-health-complex-joypurhat', 1, NULL, NULL, 1, 1),
(436, 'Kalai Upazila Health Complex, Joypurhat', 'kalai-upazila-health-complex-joypurhat', 1, NULL, NULL, 1, 1),
(437, 'Badalgachi Upazila Health Complex, Naogaon', 'badalgachi-upazila-health-complex-naogaon', 1, NULL, NULL, 1, 1),
(438, 'Dhamairhat Upazila Health Complex, Naogaon', 'dhamairhat-upazila-health-complex-naogaon', 1, NULL, NULL, 1, 1),
(439, 'Mohadevpur Upazila Health Complex, Naogaon', 'mohadevpur-upazila-health-complex-naogaon', 1, NULL, NULL, 1, 1),
(440, 'Manda Upazila Health Complex, Naogaon', 'manda-upazila-health-complex-naogaon', 1, NULL, NULL, 1, 1),
(441, 'Patnitala Upazila Health Complex, Naogaon', 'patnitala-upazila-health-complex-naogaon', 1, NULL, NULL, 1, 1),
(442, 'Sapahar Upazila Health Complex, Naogaon', 'sapahar-upazila-health-complex-naogaon', 1, NULL, NULL, 1, 1);
INSERT INTO `service_institutions` (`id`, `name`, `slug`, `status_id`, `created_at`, `updated_at`, `branch_id`, `company_id`) VALUES
(443, 'Lalpur Upazila Health Complex, Natore', 'lalpur-upazila-health-complex-natore', 1, NULL, NULL, 1, 1),
(444, 'Chatmohar Upazila Health Complex, Pabna', 'chatmohar-upazila-health-complex-pabna', 1, NULL, NULL, 1, 1),
(445, 'Faridpur Upazila Health Complex, Pabna', 'faridpur-upazila-health-complex-pabna', 1, NULL, NULL, 1, 1),
(446, 'Sujanagar Upazila Health Complex, Pabna', 'sujanagar-upazila-health-complex-pabna', 1, NULL, NULL, 1, 1),
(447, 'Charghat Upazila Health Complex, Rajshahi', 'charghat-upazila-health-complex-rajshahi', 1, NULL, NULL, 1, 1),
(448, 'Durgapur Upazila Health Complex, Rajshahi', 'durgapur-upazila-health-complex-rajshahi', 1, NULL, NULL, 1, 1),
(449, 'Puthia Upazila Health Complex, Rajshahi', 'puthia-upazila-health-complex-rajshahi', 1, NULL, NULL, 1, 1),
(450, 'Tanore Upazila Health Complex, Rajshahi', 'tanore-upazila-health-complex-rajshahi', 1, NULL, NULL, 1, 1),
(451, 'Bochaganj Upazila Health Complex, Dinajpur', 'bochaganj-upazila-health-complex-dinajpur', 1, NULL, NULL, 1, 1),
(452, 'Parbatipur Upazila Health Complex, Dinajpur', 'parbatipur-upazila-health-complex-dinajpur', 1, NULL, NULL, 1, 1),
(453, 'Gobindaganj Upazila Health Complex, Gaibandha', 'gobindaganj-upazila-health-complex-gaibandha', 1, NULL, NULL, 1, 1),
(454, 'Chilmari Upazila Health Complex, Kurigram', 'chilmari-upazila-health-complex-kurigram', 1, NULL, NULL, 1, 1),
(455, 'Ulipur Upazila Health Complex, Kurigram', 'ulipur-upazila-health-complex-kurigram', 1, NULL, NULL, 1, 1),
(456, 'Kaliganj Upazila Health Complex, Lalmonirhat', 'kaliganj-upazila-health-complex-lalmonirhat', 1, NULL, NULL, 1, 1),
(457, 'Dimla Upazila Health Complex, Nilphamari', 'dimla-upazila-health-complex-nilphamari', 1, NULL, NULL, 1, 1),
(458, 'Domar Upazila Health Complex, Nilphamari', 'domar-upazila-health-complex-nilphamari', 1, NULL, NULL, 1, 1),
(459, 'Boda Upazila Health Complex, Panchagarh', 'boda-upazila-health-complex-panchagarh', 1, NULL, NULL, 1, 1),
(460, 'Debiganj Upazila Health Complex, Panchagarh', 'debiganj-upazila-health-complex-panchagarh', 1, NULL, NULL, 1, 1),
(461, 'Tetulia Upazila Health Complex, Panchagarh', 'tetulia-upazila-health-complex-panchagarh', 1, NULL, NULL, 1, 1),
(462, 'Gangachara Upazila Health Complex, Rangpur', 'gangachara-upazila-health-complex-rangpur', 1, NULL, NULL, 1, 1),
(463, 'Mithapukur Upazila Health Complex, Rangpur', 'mithapukur-upazila-health-complex-rangpur', 1, NULL, NULL, 1, 1),
(464, 'Pirganj Upazila Health Complex, Rangpur', 'pirganj-upazila-health-complex-rangpur', 1, NULL, NULL, 1, 1),
(465, 'Baliadangi Upazila Health Complex, Thakurgaon', 'baliadangi-upazila-health-complex-thakurgaon', 1, NULL, NULL, 1, 1),
(466, 'Haripur Upazila Health Complex, Thakurgaon', 'haripur-upazila-health-complex-thakurgaon', 1, NULL, NULL, 1, 1),
(467, 'Ranisankhail Upazila Health Complex, Thakurgaon', 'ranisankhail-upazila-health-complex-thakurgaon', 1, NULL, NULL, 1, 1),
(468, 'Madhabpur Upazila Health Complex, Habiganj', 'madhabpur-upazila-health-complex-habiganj', 1, NULL, NULL, 1, 1),
(469, 'Kulaura Upazila Health Complex, Maulvibazar', 'kulaura-upazila-health-complex-maulvibazar', 1, NULL, NULL, 1, 1),
(470, 'Jagannathpur Upazila Health Complex, Sunamganj', 'jagannathpur-upazila-health-complex-sunamganj', 1, NULL, NULL, 1, 1),
(471, 'Beanibazar Upazila Health Complex, Sylhet', 'beanibazar-upazila-health-complex-sylhet', 1, NULL, NULL, 1, 1),
(472, 'Golapganj Upazila Health Complex, Sylhet', 'golapganj-upazila-health-complex-sylhet', 1, NULL, NULL, 1, 1),
(473, 'Gowainghat Upazila Health Complex, Sylhet', 'gowainghat-upazila-health-complex-sylhet', 1, NULL, NULL, 1, 1),
(474, 'Barguna District Hospital', 'barguna-district-hospital', 1, NULL, NULL, 1, 1),
(475, 'Barishal General Hospital', 'barishal-general-hospital', 1, NULL, NULL, 1, 1),
(476, 'Bhola District Hospital', 'bhola-district-hospital', 1, NULL, NULL, 1, 1),
(477, 'Jhalokathi District Hospital', 'jhalokathi-district-hospital', 1, NULL, NULL, 1, 1),
(478, 'Pirojpur District Hospital', 'pirojpur-district-hospital', 1, NULL, NULL, 1, 1),
(479, 'Bandarban District Hospital', 'bandarban-district-hospital', 1, NULL, NULL, 1, 1),
(480, 'Comilla General Hospital', 'comilla-general-hospital', 1, NULL, NULL, 1, 1),
(481, 'Khagrachari District Hospital', 'khagrachari-district-hospital', 1, NULL, NULL, 1, 1),
(482, 'Lakshmipur District Hospital', 'lakshmipur-district-hospital', 1, NULL, NULL, 1, 1),
(483, 'Rangamati General Hospital', 'rangamati-general-hospital', 1, NULL, NULL, 1, 1),
(484, 'Faridpur General Hospital', 'faridpur-general-hospital', 1, NULL, NULL, 1, 1),
(485, 'Madaripur District Hospital', 'madaripur-district-hospital', 1, NULL, NULL, 1, 1),
(486, 'Narayanganj General (Victoria) Hospital', 'narayanganj-general-victoria-hospital', 1, NULL, NULL, 1, 1),
(487, 'Narsingdi District Hospital', 'narsingdi-district-hospital', 1, NULL, NULL, 1, 1),
(488, 'Rajbari District Hospital', 'rajbari-district-hospital', 1, NULL, NULL, 1, 1),
(489, 'Shariatpur District Hospital', 'shariatpur-district-hospital', 1, NULL, NULL, 1, 1),
(490, 'Bagerhat District Hospital', 'bagerhat-district-hospital', 1, NULL, NULL, 1, 1),
(491, 'Chuadanga District Hospital', 'chuadanga-district-hospital', 1, NULL, NULL, 1, 1),
(492, 'Jhenaidah District Hospital', 'jhenaidah-district-hospital', 1, NULL, NULL, 1, 1),
(493, 'Narail District Hospital', 'narail-district-hospital', 1, NULL, NULL, 1, 1),
(494, 'Satkhira District Hospital', 'satkhira-district-hospital', 1, NULL, NULL, 1, 1),
(495, 'Netrokona District Hospital', 'netrokona-district-hospital', 1, NULL, NULL, 1, 1),
(496, 'Sherpur District Hospital', 'sherpur-district-hospital', 1, NULL, NULL, 1, 1),
(497, 'Chapai Nababganj District Hospital', 'chapai-nababganj-district-hospital', 1, NULL, NULL, 1, 1),
(498, 'Naogaon District Hospital', 'naogaon-district-hospital', 1, NULL, NULL, 1, 1),
(499, 'Natore District Hospital', 'natore-district-hospital', 1, NULL, NULL, 1, 1),
(500, 'Lalmonirhat District Hospital', 'lalmonirhat-district-hospital', 1, NULL, NULL, 1, 1),
(501, 'Nilphamari District Hospital', 'nilphamari-district-hospital', 1, NULL, NULL, 1, 1),
(502, 'Panchagarh District Hospital', 'panchagarh-district-hospital', 1, NULL, NULL, 1, 1),
(503, 'Thakurgaon District Hospital', 'thakurgaon-district-hospital', 1, NULL, NULL, 1, 1),
(504, 'Sylhet Shahid Shamsuddin Ahmed District Hospita', 'sylhet-shahid-shamsuddin-ahmed-district-hospita', 1, NULL, NULL, 1, 1),
(505, 'Joypurhat District Hospital', 'joypurhat-district-hospital', 1, NULL, NULL, 1, 1),
(506, 'Gaibandha 200 bed Hospital', 'gaibandha-200-bed-hospital', 1, NULL, NULL, 1, 1),
(507, 'Patuakhali 250 bed Sadar Hospital', 'patuakhali-250-bed-sadar-hospital', 1, NULL, NULL, 1, 1),
(508, 'Brahmanbaria 250 Bed District Sadar Hospital', 'brahmanbaria-250-bed-district-sadar-hospital', 1, NULL, NULL, 1, 1),
(509, 'Chandpur 250 Bed General Hospital', 'chandpur-250-bed-general-hospital', 1, NULL, NULL, 1, 1),
(510, 'Chittagong 250 Bed General Hospital', 'chittagong-250-bed-general-hospital', 1, NULL, NULL, 1, 1),
(511, 'Cox\'s Bazar 250 Bed District Sadar Hospital', 'coxs-bazar-250-bed-district-sadar-hospital', 1, NULL, NULL, 1, 1),
(512, 'Feni 250 Bed District Sadar Hospital', 'feni-250-bed-district-sadar-hospital', 1, NULL, NULL, 1, 1),
(513, 'Noakhali 250 Bed General Hospital', 'noakhali-250-bed-general-hospital', 1, NULL, NULL, 1, 1),
(514, 'Gopalganj 250 bed General Hospital', 'gopalganj-250-bed-general-hospital', 1, NULL, NULL, 1, 1),
(515, 'Kishoreganj 250 Bed District Sadar Hospital', 'kishoreganj-250-bed-district-sadar-hospital', 1, NULL, NULL, 1, 1),
(516, 'Manikganj 250 Bed District Hospital', 'manikganj-250-bed-district-hospital', 1, NULL, NULL, 1, 1),
(517, 'Munshiganj District Hospital', 'munshiganj-district-hospital', 1, NULL, NULL, 1, 1),
(518, 'Tangail 250 Bed District Hospital', 'tangail-250-bed-district-hospital', 1, NULL, NULL, 1, 1),
(519, 'Jessore 250 bed General Hospital', 'jessore-250-bed-general-hospital', 1, NULL, NULL, 1, 1),
(520, 'Khulna 250 Bed General Hospital, Khulna', 'khulna-250-bed-general-hospital-khulna', 1, NULL, NULL, 1, 1),
(521, 'Kushtia 250 bed General Hospital', 'kushtia-250-bed-general-hospital', 1, NULL, NULL, 1, 1),
(522, 'Magura District Hospital', 'magura-district-hospital', 1, NULL, NULL, 1, 1),
(523, 'Meherpur 250 bed District Hospital', 'meherpur-250-bed-district-hospital', 1, NULL, NULL, 1, 1),
(524, 'Jamalpur 250 Beded General Hospital', 'jamalpur-250-beded-general-hospital', 1, NULL, NULL, 1, 1),
(525, 'Bogra 250 bed Mohammad Ali District Hospital', 'bogra-250-bed-mohammad-ali-district-hospital', 1, NULL, NULL, 1, 1),
(526, 'Pabna 250 bed General Hospital', 'pabna-250-bed-general-hospital', 1, NULL, NULL, 1, 1),
(527, 'Sirajganj General Hospital', 'sirajganj-general-hospital', 1, NULL, NULL, 1, 1),
(528, 'Dinajpur 250 bed General Hospital', 'dinajpur-250-bed-general-hospital', 1, NULL, NULL, 1, 1),
(529, 'Kurigram District Hospital', 'kurigram-district-hospital', 1, NULL, NULL, 1, 1),
(530, 'Habiganj District Hospital', 'habiganj-district-hospital', 1, NULL, NULL, 1, 1),
(531, 'Moulvibazar 250 bed District Sadar Hospital', 'moulvibazar-250-bed-district-sadar-hospital', 1, NULL, NULL, 1, 1),
(532, 'Sunamganj 250 bed District Sadar Hospital', 'sunamganj-250-bed-district-sadar-hospital', 1, NULL, NULL, 1, 1),
(533, 'Kurmitola 500 Bed General Hospital', 'kurmitola-500-bed-general-hospital', 1, NULL, NULL, 1, 1),
(534, 'Mugda 500 Bed General Hospital, Dhaka', 'mugda-500-bed-general-hospital-dhaka', 1, NULL, NULL, 1, 1),
(535, 'Cox\'s Bazar Medical College Hospital', 'coxs-bazar-medical-college-hospital', 1, NULL, NULL, 1, 1),
(536, 'Cumilla Medical College Hospital', 'cumilla-medical-college-hospital', 1, NULL, NULL, 1, 1),
(537, 'Mugda Medical College Hospital, Dhaka', 'mugda-medical-college-hospital-dhaka', 1, NULL, NULL, 1, 1),
(538, 'Faridpur Medical College Hospital', 'faridpur-medical-college-hospital', 1, NULL, NULL, 1, 1),
(539, 'Shaheed Tajuddin Ahmad Medical College Hospital,\r\nGazipur', 'shaheed-tajuddin-ahmad-medical-college-hospital-gazipur', 1, NULL, NULL, 1, 1),
(540, 'Shahid Syed Nazrul Islam Medical College Hospital', 'shahid-syed-nazrul-islam-medical-college-hospital', 1, NULL, NULL, 1, 1),
(541, 'Sheikh Hasina Medical College Hospital, Tangail', 'sheikh-hasina-medical-college-hospital-tangail', 1, NULL, NULL, 1, 1),
(542, 'Khulna Medical College Hospital', 'khulna-medical-college-hospital', 1, NULL, NULL, 1, 1),
(543, 'Satkhira Medical College Hospital', 'satkhira-medical-college-hospital', 1, NULL, NULL, 1, 1),
(544, 'Shaheed Ziaur Rahman Medical College Hospital, Bogra', 'shaheed-ziaur-rahman-medical-college-hospital-bogra', 1, NULL, NULL, 1, 1),
(545, 'M Abdur Rahim Medical College Hospital', 'm-abdur-rahim-medical-college-hospital', 1, NULL, NULL, 1, 1),
(546, 'Sher-e-bangla Medical College Hospital', 'sher-e-bangla-medical-college-hospital', 1, NULL, NULL, 1, 1),
(547, 'Chittagong Medical College Hospital', 'chittagong-medical-college-hospital', 1, NULL, NULL, 1, 1),
(548, 'Sir Salimullah Medical College Hospital', 'sir-salimullah-medical-college-hospital', 1, NULL, NULL, 1, 1),
(549, 'Mymensingh Medical College Hospital', 'mymensingh-medical-college-hospital', 1, NULL, NULL, 1, 1),
(550, 'Rajshahi Medical College Hospital', 'rajshahi-medical-college-hospital', 1, NULL, NULL, 1, 1),
(551, 'Rangpur Medical College Hospital', 'rangpur-medical-college-hospital', 1, NULL, NULL, 1, 1),
(552, 'Sylhet MAG Osmani Medical College Hospital', 'sylhet-mag-osmani-medical-college-hospital', 1, NULL, NULL, 1, 1),
(553, 'Dhaka Dental College Hospital (Code:10000028)', 'dhaka-dental-college-hospital-code10000028', 1, NULL, NULL, 1, 1),
(554, 'Sheikh Lutfar Rahman Dental College Hospital, Gopalganj.\r\n(Code:10025187)', 'sheikh-lutfar-rahman-dental-college-hospital-gopalganj-code10025187', 1, NULL, NULL, 1, 1),
(555, 'Kurmitola 500 Bed General Hospital (Code:10017209)', 'kurmitola-500-bed-general-hospital-code10017209', 1, NULL, NULL, 1, 1),
(556, 'Mugda 500 Bed General Hospital, Dhaka (Code:10013720)', 'mugda-500-bed-general-hospital-dhaka-code10013720', 1, NULL, NULL, 1, 1),
(557, 'Govt. Homeopathic Medical College Hospital (Code:10019120)', 'govt-homeopathic-medical-college-hospital-code10019120', 1, NULL, NULL, 1, 1),
(558, 'Govt. Unani & Ayurvedic Medical College Hospital (Code:10002305)', 'govt-unani-ayurvedic-medical-college-hospital-code10002305', 1, NULL, NULL, 1, 1),
(559, 'Govt. Unani & Ayurvedic Medical College Hospital, Sylhet\r\n(Code:10002203)', 'govt-unani-ayurvedic-medical-college-hospital-sylhet-code10002203', 1, NULL, NULL, 1, 1),
(560, 'Sher-e-bangla Medical College Hospital (Code:10001978)', 'sher-e-bangla-medical-college-hospital-code10001978', 1, NULL, NULL, 1, 1),
(561, 'Chittagong Medical College Hospital (Code:10000756)', 'chittagong-medical-college-hospital-code10000756', 1, NULL, NULL, 1, 1),
(562, 'Comilla Medical College Hospital (Code:10000867)', 'comilla-medical-college-hospital-code10000867', 1, NULL, NULL, 1, 1),
(563, 'Sir Salimullah Medical College Hospital (Code:10000056)', 'sir-salimullah-medical-college-hospital-code10000056', 1, NULL, NULL, 1, 1),
(564, 'Dhaka Medical College Hospital (Code:10000033)', 'dhaka-medical-college-hospital-code10000033', 1, NULL, NULL, 1, 1),
(565, 'Shaheed Suhrawardy Medical College Hospital (Code:10000051)', 'shaheed-suhrawardy-medical-college-hospital-code10000051', 1, NULL, NULL, 1, 1),
(566, 'Faridpur Medical College Hospital (Code:10000108)', 'faridpur-medical-college-hospital-code10000108', 1, NULL, NULL, 1, 1),
(567, 'Shaheed Taj Uddin Ahmad Medical College Hospital, Gazipur\r\n(Code:10023251)', 'shaheed-taj-uddin-ahmad-medical-college-hospital-gazipur-code10023251', 1, NULL, NULL, 1, 1),
(568, 'Shahid Syed Nazrul Islam Medical College Hospital (Code:10024987)', 'shahid-syed-nazrul-islam-medical-college-hospital-code10024987', 1, NULL, NULL, 1, 1),
(569, 'Sheikh Hasina Medical College Hospital, Tangail (Code:10024593)', 'sheikh-hasina-medical-college-hospital-tangail-code10024593', 1, NULL, NULL, 1, 1),
(570, 'Khulna Medical College Hospital (Code:10001807)', 'khulna-medical-college-hospital-code10001807', 1, NULL, NULL, 1, 1),
(571, 'Satkhira 250 bed Medical College Hospital (Code:10024591)', 'satkhira-250-bed-medical-college-hospital-code10024591', 1, NULL, NULL, 1, 1),
(572, 'Mymensingh Medical College Hospital (Code:10000397)', 'mymensingh-medical-college-hospital-code10000397', 1, NULL, NULL, 1, 1),
(573, 'Shaheed Ziaur Rahman Medical College Hospital, Bogra\r\n(Code:10001111)', 'shaheed-ziaur-rahman-medical-college-hospital-bogra-code10001111', 1, NULL, NULL, 1, 1),
(574, 'Rajshahi Medical College Hospital (Code:10001560)', 'rajshahi-medical-college-hospital-code10001560', 1, NULL, NULL, 1, 1),
(575, 'M Abdur Rahim Medical College Hospital (Code:10002288)', 'm-abdur-rahim-medical-college-hospital-code10002288', 1, NULL, NULL, 1, 1),
(576, 'Rangpur Medical College Hospital (Code:10001618)', 'rangpur-medical-college-hospital-code10001618', 1, NULL, NULL, 1, 1),
(577, 'Sylhet MAG Osmani Medical College Hospital (Code:10002195)', 'sylhet-mag-osmani-medical-college-hospital-code10002195', 1, NULL, NULL, 1, 1),
(578, 'Barguna District Hospital (Code:10001943)', 'barguna-district-hospital-code10001943', 1, NULL, NULL, 1, 1),
(579, 'Barishal General Hospital (Code:10001972)', 'barishal-general-hospital-code10001972', 1, NULL, NULL, 1, 1),
(580, 'Bhola District Hospital (Code:10002002)', 'bhola-district-hospital-code10002002', 1, NULL, NULL, 1, 1),
(581, 'Jhalokathi District Hospital (Code:10002025)', 'jhalokathi-district-hospital-code10002025', 1, NULL, NULL, 1, 1),
(582, 'Patuakhali 250 bed Sadar Hospital (Code:10002051)', 'patuakhali-250-bed-sadar-hospital-code10002051', 1, NULL, NULL, 1, 1),
(583, 'Pirojpur District Hospital (Code:10002067)', 'pirojpur-district-hospital-code10002067', 1, NULL, NULL, 1, 1),
(584, 'District Family Planning Office, Pirojpur (Code:10024005)', 'district-family-planning-office-pirojpur-code10024005', 1, NULL, NULL, 1, 1),
(585, 'Bandarban District Hospital (Code:10000655)', 'bandarban-district-hospital-code10000655', 1, NULL, NULL, 1, 1),
(586, 'Bangladesh Korea Moitree Hospital (Code:10002298)', 'bangladesh-korea-moitree-hospital-code10002298', 1, NULL, NULL, 1, 1),
(587, 'Brahmanbaria 250 Bed District Sadar Hospital (Code:10000672)', 'brahmanbaria-250-bed-district-sadar-hospital-code10000672', 1, NULL, NULL, 1, 1),
(588, 'Chandpur 250 Bed General Hospital (Code:10000700)', 'chandpur-250-bed-general-hospital-code10000700', 1, NULL, NULL, 1, 1),
(589, 'Divisional Police Hospital, Chattogram (Code:10025023)', 'divisional-police-hospital-chattogram-code10025023', 1, NULL, NULL, 1, 1),
(590, 'Chittagong 250 Bed General Hospital (Code:10000753)', 'chittagong-250-bed-general-hospital-code10000753', 1, NULL, NULL, 1, 1),
(591, 'Cox\'s Bazar 250 Bed District Sadar Hospital\r\n(Code:10000922)', 'coxs-bazar-250-bed-district-sadar-hospital-code10000922', 1, NULL, NULL, 1, 1),
(592, 'Comilla General Hospital (Code:10000864)', 'comilla-general-hospital-code10000864', 1, NULL, NULL, 1, 1),
(593, 'Feni 250 Bed District Sadar Hospital (Code:10000954)', 'feni-250-bed-district-sadar-hospital-code10000954', 1, NULL, NULL, 1, 1),
(594, 'Khagrachari District Hospital (Code:10000976)', 'khagrachari-district-hospital-code10000976', 1, NULL, NULL, 1, 1),
(595, 'Lakshmipur District Hospital (Code:10001001)', 'lakshmipur-district-hospital-code10001001', 1, NULL, NULL, 1, 1),
(596, 'Noakhali 250 Bed General Hospital (Code:10001049)', 'noakhali-250-bed-general-hospital-code10001049', 1, NULL, NULL, 1, 1),
(597, 'Rangamati General Hospital (Code:10001088)', 'rangamati-general-hospital-code10001088', 1, NULL, NULL, 1, 1),
(598, 'Kuwait Bangladesh Friendship Govt. Hospital\r\n(Code:10023662)', 'kuwait-bangladesh-friendship-govt-hospital-code10023662', 1, NULL, NULL, 1, 1),
(599, 'Faridpur General Hospital (Code:10000105)', 'faridpur-general-hospital-code10000105', 1, NULL, NULL, 1, 1),
(600, 'Shaheed Ahsan Ullah Master General Hospital\r\n(Code:10000129)', 'shaheed-ahsan-ullah-master-general-hospital-code10000129', 1, NULL, NULL, 1, 1),
(601, 'Gazipur District Hospital (Code:10000137)', 'gazipur-district-hospital-code10000137', 1, NULL, NULL, 1, 1),
(602, 'Gopalganj 250 bed General Hospital (Code:10002233)', 'gopalganj-250-bed-general-hospital-code10002233', 1, NULL, NULL, 1, 1),
(603, 'Kishoreganj 250 Bed District Sadar Hospital (Code:10000243)', 'kishoreganj-250-bed-district-sadar-hospital-code10000243', 1, NULL, NULL, 1, 1),
(604, 'Madaripur District Hospital (Code:10000263)', 'madaripur-district-hospital-code10000263', 1, NULL, NULL, 1, 1),
(605, 'Manikganj 250 Bed District Hospital (Code:10000297)', 'manikganj-250-bed-district-hospital-code10000297', 1, NULL, NULL, 1, 1),
(606, 'Munshiganj 250 bed District Hospital (Code:10000328)', 'munshiganj-250-bed-district-hospital-code10000328', 1, NULL, NULL, 1, 1),
(607, 'Narayanganj 300 Bed Hospital (Code:10000425)', 'narayanganj-300-bed-hospital-code10000425', 1, NULL, NULL, 1, 1),
(608, 'Narayanganj General (Victoria) Hospital (Code:10000427)', 'narayanganj-general-victoria-hospital-code10000427', 1, NULL, NULL, 1, 1),
(609, 'Narsingdi District Hospital (Code:10000452)', 'narsingdi-district-hospital-code10000452', 1, NULL, NULL, 1, 1),
(610, 'Narsingdi 100 Bed Zilla Hospital (Code:10000453)', 'narsingdi-100-bed-zilla-hospital-code10000453', 1, NULL, NULL, 1, 1),
(611, 'Rajbari District Hospital (Code:10000536)', 'rajbari-district-hospital-code10000536', 1, NULL, NULL, 1, 1),
(612, 'Shariatpur District Hospital (Code:10000559)', 'shariatpur-district-hospital-code10000559', 1, NULL, NULL, 1, 1),
(613, 'Tangail 250 Bed District Hospital (Code:10000647)', 'tangail-250-bed-district-hospital-code10000647', 1, NULL, NULL, 1, 1),
(614, 'Bagerhat District Hospital (Code:10001693)', 'bagerhat-district-hospital-code10001693', 1, NULL, NULL, 1, 1),
(615, 'Chuadanga District Hospital (Code:10001723)', 'chuadanga-district-hospital-code10001723', 1, NULL, NULL, 1, 1),
(616, 'Jessore 250 bed General Hospital (Code:10013096)', 'jessore-250-bed-general-hospital-code10013096', 1, NULL, NULL, 1, 1),
(617, 'Jhenaidah District Hospital (Code:10001776)', 'jhenaidah-district-hospital-code10001776', 1, NULL, NULL, 1, 1),
(618, 'Khulna 250 Bed General Hospital, Khulna\r\n(Code:10001805)', 'khulna-250-bed-general-hospital-khulna-code10001805', 1, NULL, NULL, 1, 1),
(619, 'Kushtia 250 bed General Hospital (Code:10001862)', 'kushtia-250-bed-general-hospital-code10001862', 1, NULL, NULL, 1, 1),
(620, 'Magura District Hospital (Code:10001876)', 'magura-district-hospital-code10001876', 1, NULL, NULL, 1, 1),
(621, 'Meherpur 250 bed District Hospital (Code:10001898)', 'meherpur-250-bed-district-hospital-code10001898', 1, NULL, NULL, 1, 1),
(622, 'Narail District Hospital (Code:10001913)', 'narail-district-hospital-code10001913', 1, NULL, NULL, 1, 1),
(623, 'Satkhira District Hospital (Code:10001926)', 'satkhira-district-hospital-code10001926', 1, NULL, NULL, 1, 1),
(624, 'Jamalpur 250 Beded General Hospital (Code:10000208)', 'jamalpur-250-beded-general-hospital-code10000208', 1, NULL, NULL, 1, 1),
(625, 'Netrokona District Hospital (Code:10000496)', 'netrokona-district-hospital-code10000496', 1, NULL, NULL, 1, 1),
(626, 'Sherpur District Hospital (Code:10000576)', 'sherpur-district-hospital-code10000576', 1, NULL, NULL, 1, 1),
(627, 'Bogra 250 bed Mohammad Ali District Hospital\r\n(Code:10001109)', 'bogra-250-bed-mohammad-ali-district-hospital-code10001109', 1, NULL, NULL, 1, 1),
(628, 'Chapai Nababganj District Hospital (Code:10001186)', 'chapai-nababganj-district-hospital-code10001186', 1, NULL, NULL, 1, 1),
(629, 'Joypurhat District Hospital (Code:10001298)', 'joypurhat-district-hospital-code10001298', 1, NULL, NULL, 1, 1),
(630, 'Naogaon District Hospital (Code:10001394)', 'naogaon-district-hospital-code10001394', 1, NULL, NULL, 1, 1),
(631, 'Natore District Hospital (Code:10001433)', 'natore-district-hospital-code10001433', 1, NULL, NULL, 1, 1),
(632, 'Pabna 250 bed General Hospital (Code:10001484)', 'pabna-250-bed-general-hospital-code10001484', 1, NULL, NULL, 1, 1),
(633, '250 Bed Bongamata Sheikh Fazilatunnesa Mujib General Hospital, Sirajganj. (Code:10001648)', '250-bed-bongamata-sheikh-fazilatunnesa-mujib-general-hospital-sirajganj-code10001648', 1, NULL, NULL, 1, 1),
(634, 'Dinajpur 250 bed General Hospital (Code:10001214)', 'dinajpur-250-bed-general-hospital-code10001214', 1, NULL, NULL, 1, 1),
(635, 'Gaibandha District Hospital (Code:10001254)', 'gaibandha-district-hospital-code10001254', 1, NULL, NULL, 1, 1),
(636, 'Kurigram 250 bed District Hospital (Code:10001317)', 'kurigram-250-bed-district-hospital-code10001317', 1, NULL, NULL, 1, 1),
(637, 'Lalmonirhat District Hospital (Code:10001353)', 'lalmonirhat-district-hospital-code10001353', 1, NULL, NULL, 1, 1),
(638, 'Nilphamari District Hospital (Code:10001464)', 'nilphamari-district-hospital-code10001464', 1, NULL, NULL, 1, 1),
(639, 'Saidpur 100 Bed Hospital (Code:10001469)', 'saidpur-100-bed-hospital-code10001469', 1, NULL, NULL, 1, 1),
(640, 'Panchagarh District Hospital (Code:10001514)', 'panchagarh-district-hospital-code10001514', 1, NULL, NULL, 1, 1),
(641, 'Thakurgaon District Hospital (Code:10001687)', 'thakurgaon-district-hospital-code10001687', 1, NULL, NULL, 1, 1),
(642, 'Habiganj District Hospital (Code:10002071)', 'habiganj-district-hospital-code10002071', 1, NULL, NULL, 1, 1),
(643, 'Moulvibazar 250 bed District Sadar Hospital (Code:10002116)', 'moulvibazar-250-bed-district-sadar-hospital-code10002116', 1, NULL, NULL, 1, 1),
(644, 'Sunamganj 250 bed District Sadar Hospital (Code:10002157)', 'sunamganj-250-bed-district-sadar-hospital-code10002157', 1, NULL, NULL, 1, 1),
(645, 'Sylhet Shahid Shamsuddin Ahmed District Hospital\r\n(Code:10002196)', 'sylhet-shahid-shamsuddin-ahmed-district-hospital-code10002196', 1, NULL, NULL, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `service_machines`
--

CREATE TABLE `service_machines` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `machine_name` varchar(255) NOT NULL,
  `brand_id` bigint(20) UNSIGNED DEFAULT NULL,
  `model_id` bigint(20) UNSIGNED DEFAULT NULL,
  `origin` varchar(255) NOT NULL,
  `status_id` int(11) DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `branch_id` bigint(20) UNSIGNED DEFAULT 1,
  `company_id` bigint(20) UNSIGNED DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `service_machines`
--

INSERT INTO `service_machines` (`id`, `machine_name`, `brand_id`, `model_id`, `origin`, `status_id`, `created_at`, `updated_at`, `branch_id`, `company_id`) VALUES
(1, 'Machine 1', 1, 1, 'Country A', 1, NULL, NULL, 1, 1),
(2, 'Machine 2', 2, 2, 'Country B', 1, NULL, NULL, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `service_models`
--

CREATE TABLE `service_models` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `status_id` int(11) DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `branch_id` bigint(20) UNSIGNED DEFAULT 1,
  `company_id` bigint(20) UNSIGNED DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `service_models`
--

INSERT INTO `service_models` (`id`, `name`, `status_id`, `created_at`, `updated_at`, `branch_id`, `company_id`) VALUES
(1, 'Model 1', 1, NULL, NULL, 1, 1),
(2, 'Model 2', 1, NULL, NULL, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `service_packages`
--

CREATE TABLE `service_packages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `package_no` varchar(255) NOT NULL,
  `contract_date` date NOT NULL,
  `status_id` int(11) DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `branch_id` bigint(20) UNSIGNED DEFAULT 1,
  `company_id` bigint(20) UNSIGNED DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `service_package_details`
--

CREATE TABLE `service_package_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `machine_id` bigint(20) UNSIGNED DEFAULT NULL,
  `brand_id` bigint(20) UNSIGNED DEFAULT NULL,
  `model_id` bigint(20) UNSIGNED DEFAULT NULL,
  `package_id` bigint(20) UNSIGNED DEFAULT NULL,
  `origin` varchar(255) DEFAULT NULL,
  `quantity` int(11) NOT NULL DEFAULT 1,
  `warranty_period` int(11) DEFAULT NULL,
  `status_id` int(11) DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `branch_id` bigint(20) UNSIGNED DEFAULT 1,
  `company_id` bigint(20) UNSIGNED DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `company_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `value` varchar(191) NOT NULL,
  `image_id` bigint(20) DEFAULT NULL,
  `context` varchar(191) DEFAULT 'app',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `branch_id` bigint(20) UNSIGNED DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `company_id`, `name`, `value`, `image_id`, `context`, `created_at`, `updated_at`, `branch_id`) VALUES
(1, 2, 'company_name', 'HRM', NULL, 'app', '2023-10-12 07:48:58', '2023-10-12 07:48:58', 1),
(2, 2, 'company_logo_backend', 'uploads/settings/logo/logo-white.png', NULL, 'app', '2023-10-12 07:48:58', '2023-10-12 07:48:58', 1),
(3, 2, 'company_logo_frontend', 'uploads/settings/logo/logo-black.png', NULL, 'app', '2023-10-12 07:48:58', '2023-10-12 07:48:58', 1),
(4, 2, 'company_icon', 'uploads/settings/logo/favicon.png', NULL, 'app', '2023-10-12 07:48:58', '2023-10-12 07:48:58', 1),
(5, 2, 'android_url', 'https://play.google.com/store/apps/details?id=com.worx24hour.hrm', NULL, 'app', '2023-10-12 07:48:58', '2023-10-12 07:48:58', 1),
(6, 2, 'android_icon', 'assets/favicon.png', NULL, 'app', '2023-10-12 07:48:58', '2023-10-12 07:48:58', 1),
(7, 2, 'ios_url', 'https://apps.apple.com/us/app/24hourworx/id1620313188', NULL, 'app', '2023-10-12 07:48:58', '2023-10-12 07:48:58', 1),
(8, 2, 'ios_icon', 'assets/favicon.png', NULL, 'app', '2023-10-12 07:48:58', '2023-10-12 07:48:58', 1),
(9, 2, 'language', 'en', NULL, 'app', '2023-10-12 07:48:58', '2023-10-12 07:48:58', 1),
(10, 2, 'emailSettingsProvider', 'smtp', NULL, 'app', '2023-10-12 07:48:58', '2023-10-12 07:48:58', 1),
(11, 2, 'emailSettings_from_name', 'hrm@onest.com', NULL, 'app', '2023-10-12 07:48:58', '2023-10-12 07:48:58', 1),
(12, 2, 'emailSettings_from_email', 'hrm@onest.com', NULL, 'app', '2023-10-12 07:48:58', '2023-10-12 07:48:58', 1),
(13, 2, 'site_under_maintenance', '0', NULL, 'app', '2023-10-12 07:48:58', '2023-10-12 07:48:58', 1),
(14, 2, 'company_description', 'Onest Tech believes in painting the perfect picture of your idea while maintaining industry standards.', NULL, 'app', '2023-10-12 07:48:58', '2023-10-12 07:48:58', 1),
(15, 2, 'app_theme', '1', NULL, 'app', '2023-10-12 07:48:58', '2023-10-12 07:48:58', 1);

-- --------------------------------------------------------

--
-- Table structure for table `shifts`
--

CREATE TABLE `shifts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `company_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `status_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `branch_id` bigint(20) UNSIGNED DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shifts`
--

INSERT INTO `shifts` (`id`, `company_id`, `name`, `status_id`, `created_at`, `updated_at`, `branch_id`) VALUES
(1, 1, 'Day', 1, '2023-10-12 07:48:58', '2023-10-12 07:48:58', 1);

-- --------------------------------------------------------

--
-- Table structure for table `sms_logs`
--

CREATE TABLE `sms_logs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `receiver_number` varchar(255) DEFAULT NULL,
  `message` longtext DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `branch_id` bigint(20) UNSIGNED DEFAULT 1,
  `company_id` bigint(20) UNSIGNED DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `social_identities`
--

CREATE TABLE `social_identities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `provider_name` varchar(255) DEFAULT NULL,
  `provider_id` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `branch_id` bigint(20) UNSIGNED DEFAULT 1,
  `company_id` bigint(20) UNSIGNED DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `statuses`
--

CREATE TABLE `statuses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(30) NOT NULL COMMENT 'hare name=status situation',
  `class` varchar(50) DEFAULT NULL COMMENT 'hare class=what type of class name property like success,danger,info,purple',
  `color_code` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `branch_id` bigint(20) UNSIGNED DEFAULT 1,
  `company_id` bigint(20) UNSIGNED DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `statuses`
--

INSERT INTO `statuses` (`id`, `name`, `class`, `color_code`, `created_at`, `updated_at`, `branch_id`, `company_id`) VALUES
(1, 'Active', 'success', '449d44', NULL, NULL, 1, 1),
(2, 'Pending', 'warning', 'ec971f', NULL, NULL, 1, 1),
(3, 'Suspended', 'danger', 'c9302c', NULL, NULL, 1, 1),
(4, 'Inactive', 'danger', 'c9302c', NULL, NULL, 1, 1),
(5, 'Approve', 'success', '449d44', NULL, NULL, 1, 1),
(6, 'Reject', 'danger', 'c9302c', NULL, NULL, 1, 1),
(7, 'Cancel', 'danger', 'c9302c', NULL, NULL, 1, 1),
(8, 'Paid', 'success', '449d44', NULL, NULL, 1, 1),
(9, 'Unpaid', 'danger', 'c9302c', NULL, NULL, 1, 1),
(10, 'Claimed', 'primary', '337ab7', NULL, NULL, 1, 1),
(11, 'Not Claimed', 'danger', 'c9302c', NULL, NULL, 1, 1),
(12, 'Open', 'danger', 'ffFD815B', NULL, NULL, 1, 1),
(13, 'Close', 'success', '449d44', NULL, NULL, 1, 1),
(14, 'High', 'danger', 'c9302c', NULL, NULL, 1, 1),
(15, 'Medium', 'primary', '337ab7', NULL, NULL, 1, 1),
(16, 'Low', 'warning', 'ec971f', NULL, NULL, 1, 1),
(17, 'Referred', 'warning', 'ec971f', NULL, NULL, 1, 1),
(18, 'Debit', 'danger', 'ffFD815B', NULL, NULL, 1, 1),
(19, 'Credit', 'success', '449d44', NULL, NULL, 1, 1),
(20, 'Partially Paid', 'info', '9DBBCE', NULL, NULL, 1, 1),
(21, 'Partially Returned', 'warning', 'ec971f', NULL, NULL, 1, 1),
(22, 'No', 'danger', 'c9302c', NULL, NULL, 1, 1),
(23, 'Returned', 'success', '449d44', NULL, NULL, 1, 1),
(24, 'Not Started', 'warning', 'ec971f', NULL, NULL, 1, 1),
(25, 'On Hold', 'info', '9DBBCE', NULL, NULL, 1, 1),
(26, 'In Progress', 'main', '7F58FE', NULL, NULL, 1, 1),
(27, 'Completed', 'success', '449d44', NULL, NULL, 1, 1),
(28, 'Cancelled', 'danger', 'c9302c', NULL, NULL, 1, 1),
(29, 'Urgent', 'danger', 'c9302c', NULL, NULL, 1, 1),
(30, 'High', 'danger', 'c9302c', NULL, NULL, 1, 1),
(31, 'Medium', 'primary', '337ab7', NULL, NULL, 1, 1),
(32, 'Low', 'warning', 'ec971f', NULL, NULL, 1, 1),
(33, 'Yes', 'primary', '337ab7', NULL, NULL, 1, 1),
(34, 'Terminated', 'danger', 'c9302c', NULL, NULL, 1, 1),
(35, 'Resign', 'danger', 'c9302c', NULL, NULL, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `subscriptions`
--

CREATE TABLE `subscriptions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `stripe_id` varchar(255) NOT NULL,
  `stripe_status` varchar(255) NOT NULL,
  `stripe_price` varchar(255) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `trial_ends_at` timestamp NULL DEFAULT NULL,
  `ends_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `branch_id` bigint(20) UNSIGNED DEFAULT 1,
  `company_id` bigint(20) UNSIGNED DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `subscription_items`
--

CREATE TABLE `subscription_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `subscription_id` bigint(20) UNSIGNED NOT NULL,
  `stripe_id` varchar(255) NOT NULL,
  `stripe_product` varchar(255) NOT NULL,
  `stripe_price` varchar(255) NOT NULL,
  `quantity` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `branch_id` bigint(20) UNSIGNED DEFAULT 1,
  `company_id` bigint(20) UNSIGNED DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `subscription_plans`
--

CREATE TABLE `subscription_plans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `identifier` varchar(191) NOT NULL,
  `stripe_id` varchar(191) NOT NULL,
  `status_id` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `branch_id` bigint(20) UNSIGNED DEFAULT 1,
  `company_id` bigint(20) UNSIGNED DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subscription_plans`
--

INSERT INTO `subscription_plans` (`id`, `title`, `identifier`, `stripe_id`, `status_id`, `created_at`, `updated_at`, `branch_id`, `company_id`) VALUES
(1, 'Basic', 'basic', 'plan_HeC7XMT2SVe21K', 1, NULL, NULL, 1, 1),
(2, 'Pro', 'pro', 'plan_HeC7XMT2SVe21L', 1, NULL, NULL, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `support_tickets`
--

CREATE TABLE `support_tickets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `company_id` bigint(20) UNSIGNED NOT NULL,
  `date` date DEFAULT NULL,
  `code` varchar(191) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `assigned_id` bigint(20) UNSIGNED DEFAULT NULL,
  `attachment_file_id` bigint(20) UNSIGNED DEFAULT NULL,
  `subject` varchar(191) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `status_id` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `type_id` bigint(20) UNSIGNED NOT NULL DEFAULT 12 COMMENT '12 = open , 13 = close',
  `priority_id` bigint(20) UNSIGNED NOT NULL DEFAULT 14 COMMENT '14 = high , 15 = medium , 16 = low',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `branch_id` bigint(20) UNSIGNED DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tasks`
--

CREATE TABLE `tasks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `company_id` bigint(20) UNSIGNED NOT NULL,
  `date` date DEFAULT NULL,
  `progress` int(11) DEFAULT 0,
  `status_id` bigint(20) UNSIGNED NOT NULL DEFAULT 24,
  `priority` bigint(20) UNSIGNED NOT NULL DEFAULT 24,
  `description` longtext NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `created_by` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `notify_all_users` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0=no,1=yes',
  `notify_all_users_email` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0=no,1=yes',
  `type` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0=Regular , 1= Project',
  `project_id` bigint(20) UNSIGNED DEFAULT NULL,
  `reminder` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0=no,1=yes',
  `goal_id` bigint(20) UNSIGNED DEFAULT NULL,
  `service_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `branch_id` bigint(20) UNSIGNED DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tasks`
--

INSERT INTO `tasks` (`id`, `name`, `company_id`, `date`, `progress`, `status_id`, `priority`, `description`, `start_date`, `end_date`, `created_by`, `notify_all_users`, `notify_all_users_email`, `type`, `project_id`, `reminder`, `goal_id`, `service_id`, `created_at`, `updated_at`, `branch_id`) VALUES
(1, 'eCommerce task', 2, '2023-10-12', 1, 26, 29, '<strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '2023-10-12', '2023-11-12', 2, 0, 0, 0, NULL, 0, NULL, NULL, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1);

-- --------------------------------------------------------

--
-- Table structure for table `task_activities`
--

CREATE TABLE `task_activities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `company_id` bigint(20) UNSIGNED NOT NULL,
  `description` longtext NOT NULL,
  `task_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `last_activity` timestamp NULL DEFAULT NULL,
  `branch_id` bigint(20) UNSIGNED DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `task_discussions`
--

CREATE TABLE `task_discussions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `company_id` bigint(20) UNSIGNED NOT NULL,
  `subject` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `task_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `show_to_customer` bigint(20) UNSIGNED NOT NULL DEFAULT 22,
  `status_id` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `file_id` bigint(20) UNSIGNED DEFAULT NULL COMMENT 'this will be attachment file',
  `last_activity` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `branch_id` bigint(20) UNSIGNED DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `task_discussions`
--

INSERT INTO `task_discussions` (`id`, `company_id`, `subject`, `description`, `task_id`, `user_id`, `show_to_customer`, `status_id`, `file_id`, `last_activity`, `created_at`, `updated_at`, `branch_id`) VALUES
(1, 2, 'Discussion 1', '<strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 1, 4, 33, 1, NULL, '2023-10-12 07:48:59', '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1);

-- --------------------------------------------------------

--
-- Table structure for table `task_discussion_comments`
--

CREATE TABLE `task_discussion_comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED DEFAULT NULL,
  `company_id` bigint(20) UNSIGNED NOT NULL,
  `description` longtext NOT NULL,
  `show_to_customer` tinyint(4) NOT NULL DEFAULT 1 COMMENT '0=no,1=yes',
  `task_discussion_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `attachment` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `branch_id` bigint(20) UNSIGNED DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `task_discussion_comments`
--

INSERT INTO `task_discussion_comments` (`id`, `comment_id`, `company_id`, `description`, `show_to_customer`, `task_discussion_id`, `user_id`, `attachment`, `created_at`, `updated_at`, `branch_id`) VALUES
(1, NULL, 2, '<strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 33, 1, 4, NULL, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1),
(2, 1, 2, '<strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 33, 1, 3, NULL, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1);

-- --------------------------------------------------------

--
-- Table structure for table `task_files`
--

CREATE TABLE `task_files` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `company_id` bigint(20) UNSIGNED NOT NULL,
  `subject` varchar(255) NOT NULL,
  `show_to_customer` bigint(20) UNSIGNED NOT NULL DEFAULT 22,
  `task_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `attachment` bigint(20) UNSIGNED DEFAULT NULL,
  `status_id` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `last_activity` timestamp NULL DEFAULT NULL,
  `branch_id` bigint(20) UNSIGNED DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `task_files`
--

INSERT INTO `task_files` (`id`, `company_id`, `subject`, `show_to_customer`, `task_id`, `user_id`, `attachment`, `status_id`, `created_at`, `updated_at`, `last_activity`, `branch_id`) VALUES
(1, 1, 'Demo File', 22, 1, 3, NULL, 1, '2023-10-12 07:48:59', '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1);

-- --------------------------------------------------------

--
-- Table structure for table `task_file_comments`
--

CREATE TABLE `task_file_comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED DEFAULT NULL,
  `company_id` bigint(20) UNSIGNED NOT NULL,
  `description` longtext NOT NULL,
  `show_to_customer` tinyint(4) NOT NULL DEFAULT 1 COMMENT '0=no,1=yes',
  `task_file_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `attachment` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `branch_id` bigint(20) UNSIGNED DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `task_file_comments`
--

INSERT INTO `task_file_comments` (`id`, `comment_id`, `company_id`, `description`, `show_to_customer`, `task_file_id`, `user_id`, `attachment`, `created_at`, `updated_at`, `branch_id`) VALUES
(1, NULL, 2, '<strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 33, 1, 4, NULL, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1),
(2, 1, 2, '<strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 33, 1, 3, NULL, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1);

-- --------------------------------------------------------

--
-- Table structure for table `task_followers`
--

CREATE TABLE `task_followers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `company_id` bigint(20) UNSIGNED NOT NULL,
  `task_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `added_by` bigint(20) UNSIGNED NOT NULL,
  `status_id` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_creator` bigint(20) UNSIGNED DEFAULT NULL,
  `branch_id` bigint(20) UNSIGNED DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `task_members`
--

CREATE TABLE `task_members` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `company_id` bigint(20) UNSIGNED NOT NULL,
  `task_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `added_by` bigint(20) UNSIGNED NOT NULL,
  `status_id` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `branch_id` bigint(20) UNSIGNED DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `task_members`
--

INSERT INTO `task_members` (`id`, `company_id`, `task_id`, `user_id`, `added_by`, `status_id`, `created_at`, `updated_at`, `branch_id`) VALUES
(1, 2, 1, 4, 2, 1, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1);

-- --------------------------------------------------------

--
-- Table structure for table `task_notes`
--

CREATE TABLE `task_notes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `company_id` bigint(20) UNSIGNED NOT NULL,
  `description` longtext NOT NULL,
  `show_to_customer` bigint(20) UNSIGNED NOT NULL DEFAULT 22,
  `task_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `status_id` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `last_activity` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `branch_id` bigint(20) UNSIGNED DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `teams`
--

CREATE TABLE `teams` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) DEFAULT NULL,
  `attachment_file_id` bigint(20) UNSIGNED DEFAULT NULL,
  `company_id` bigint(20) UNSIGNED NOT NULL,
  `status_id` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `team_lead_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `branch_id` bigint(20) UNSIGNED DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `teams`
--

INSERT INTO `teams` (`id`, `name`, `attachment_file_id`, `company_id`, `status_id`, `user_id`, `team_lead_id`, `created_at`, `updated_at`, `branch_id`) VALUES
(1, 'Management', NULL, 1, 1, 1, 1, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1),
(2, 'IT', NULL, 1, 1, 1, 1, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1),
(3, 'Sales', NULL, 1, 1, 1, 1, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1);

-- --------------------------------------------------------

--
-- Table structure for table `team_members`
--

CREATE TABLE `team_members` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `expire_date` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `branch_id` bigint(20) UNSIGNED DEFAULT 1,
  `company_id` bigint(20) UNSIGNED DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `team_members`
--

INSERT INTO `team_members` (`id`, `team_id`, `user_id`, `expire_date`, `created_at`, `updated_at`, `branch_id`, `company_id`) VALUES
(1, 1, 1, NULL, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tenants`
--

CREATE TABLE `tenants` (
  `id` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`data`)),
  `branch_id` bigint(20) UNSIGNED DEFAULT 1,
  `company_id` bigint(20) UNSIGNED DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `testimonials`
--

CREATE TABLE `testimonials` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `message` varchar(255) DEFAULT NULL,
  `company_id` bigint(20) UNSIGNED NOT NULL,
  `status_id` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `branch_id` bigint(20) UNSIGNED DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `testimonials`
--

INSERT INTO `testimonials` (`id`, `message`, `company_id`, `status_id`, `created_at`, `updated_at`, `branch_id`) VALUES
(1, ' Never felt this much relaxed in last couple of years It’s quiet comprehensible and helped me manage things very easily. A great software indeed!', 1, 1, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1);

-- --------------------------------------------------------

--
-- Table structure for table `ticket_replies`
--

CREATE TABLE `ticket_replies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `support_ticket_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `message` longtext NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `branch_id` bigint(20) UNSIGNED DEFAULT 1,
  `company_id` bigint(20) UNSIGNED DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `time_zones`
--

CREATE TABLE `time_zones` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(255) DEFAULT NULL,
  `time_zone` varchar(255) DEFAULT NULL,
  `active_status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `branch_id` bigint(20) UNSIGNED DEFAULT 1,
  `company_id` bigint(20) UNSIGNED DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `time_zones`
--

INSERT INTO `time_zones` (`id`, `code`, `time_zone`, `active_status`, `created_at`, `updated_at`, `branch_id`, `company_id`) VALUES
(1, 'AD', 'Europe/Andorra', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(2, 'AE', 'Asia/Dubai', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(3, 'AF', 'Asia/Kabul', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(4, 'AG', 'America/Antigua', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(5, 'AI', 'America/Anguilla', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(6, 'AL', 'Europe/Tirane', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(7, 'AM', 'Asia/Yerevan', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(8, 'AO', 'Africa/Luanda', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(9, 'AQ', 'Antarctica/McMurdo', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(10, 'AQ', 'Antarctica/Casey', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(11, 'AQ', 'Antarctica/Davis', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(12, 'AQ', 'Antarctica/DumontDUrville', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(13, 'AQ', 'Antarctica/Mawson', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(14, 'AQ', 'Antarctica/Palmer', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(15, 'AQ', 'Antarctica/Rothera', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(16, 'AQ', 'Antarctica/Syowa', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(17, 'AQ', 'Antarctica/Troll', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(18, 'AQ', 'Antarctica/Vostok', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(19, 'AR', 'America/Argentina/Buenos_Aires', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(20, 'AR', 'America/Argentina/Cordoba', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(21, 'AR', 'America/Argentina/Salta', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(22, 'AR', 'America/Argentina/Jujuy', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(23, 'AR', 'America/Argentina/Tucuman', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(24, 'AR', 'America/Argentina/Catamarca', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(25, 'AR', 'America/Argentina/La_Rioja', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(26, 'AR', 'America/Argentina/San_Juan', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(27, 'AR', 'America/Argentina/Mendoza', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(28, 'AR', 'America/Argentina/San_Luis', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(29, 'AR', 'America/Argentina/Rio_Gallegos', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(30, 'AR', 'America/Argentina/Ushuaia', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(31, 'AS', 'Pacific/Pago_Pago', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(32, 'AT', 'Europe/Vienna', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(33, 'AU', 'Australia/Lord_Howe', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(34, 'AU', 'Antarctica/Macquarie', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(35, 'AU', 'Australia/Hobart', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(36, 'AU', 'Australia/Currie', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(37, 'AU', 'Australia/Melbourne', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(38, 'AU', 'Australia/Sydney', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(39, 'AU', 'Australia/Broken_Hill', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(40, 'AU', 'Australia/Brisbane', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(41, 'AU', 'Australia/Lindeman', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(42, 'AU', 'Australia/Adelaide', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(43, 'AU', 'Australia/Darwin', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(44, 'AU', 'Australia/Perth', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(45, 'AU', 'Australia/Eucla', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(46, 'AW', 'America/Aruba', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(47, 'AX', 'Europe/Mariehamn', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(48, 'AZ', 'Asia/Baku', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(49, 'BA', 'Europe/Sarajevo', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(50, 'BB', 'America/Barbados', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(51, 'BD', 'Asia/Dhaka', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(52, 'BE', 'Europe/Brussels', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(53, 'BF', 'Africa/Ouagadougou', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(54, 'BG', 'Europe/Sofia', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(55, 'BH', 'Asia/Bahrain', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(56, 'BI', 'Africa/Bujumbura', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(57, 'BJ', 'Africa/Porto-Novo', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(58, 'BL', 'America/St_Barthelemy', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(59, 'BM', 'Atlantic/Bermuda', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(60, 'BN', 'Asia/Brunei', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(61, 'BO', 'America/La_Paz', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(62, 'BQ', 'America/Kralendijk', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(63, 'BR', 'America/Noronha', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(64, 'BR', 'America/Belem', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(65, 'BR', 'America/Fortaleza', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(66, 'BR', 'America/Recife', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(67, 'BR', 'America/Araguaina', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(68, 'BR', 'America/Maceio', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(69, 'BR', 'America/Bahia', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(70, 'BR', 'America/Sao_Paulo', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(71, 'BR', 'America/Campo_Grande', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(72, 'BR', 'America/Cuiaba', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(73, 'BR', 'America/Santarem', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(74, 'BR', 'America/Porto_Velho', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(75, 'BR', 'America/Boa_Vista', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(76, 'BR', 'America/Manaus', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(77, 'BR', 'America/Eirunepe', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(78, 'BR', 'America/Rio_Branco', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(79, 'BS', 'America/Nassau', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(80, 'BT', 'Asia/Thimphu', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(81, 'BW', 'Africa/Gaborone', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(82, 'BY', 'Europe/Minsk', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(83, 'BZ', 'America/Belize', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(84, 'CA', 'America/St_Johns', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(85, 'CA', 'America/Halifax', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(86, 'CA', 'America/Glace_Bay', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(87, 'CA', 'America/Moncton', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(88, 'CA', 'America/Goose_Bay', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(89, 'CA', 'America/Blanc-Sablon', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(90, 'CA', 'America/Toronto', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(91, 'CA', 'America/Nipigon', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(92, 'CA', 'America/Thunder_Bay', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(93, 'CA', 'America/Iqaluit', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(94, 'CA', 'America/Pangnirtung', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(95, 'CA', 'America/Atikokan', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(96, 'CA', 'America/Winnipeg', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(97, 'CA', 'America/Rainy_River', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(98, 'CA', 'America/Resolute', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(99, 'CA', 'America/Rankin_Inlet', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(100, 'CA', 'America/Regina', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(101, 'CA', 'America/Swift_Current', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(102, 'CA', 'America/Edmonton', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(103, 'CA', 'America/Cambridge_Bay', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(104, 'CA', 'America/Yellowknife', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(105, 'CA', 'America/Inuvik', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(106, 'CA', 'America/Creston', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(107, 'CA', 'America/Dawson_Creek', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(108, 'CA', 'America/Fort_Nelson', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(109, 'CA', 'America/Vancouver', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(110, 'CA', 'America/Whitehorse', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(111, 'CA', 'America/Dawson', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(112, 'CC', 'Indian/Cocos', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(113, 'CD', 'Africa/Kinshasa', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(114, 'CD', 'Africa/Lubumbashi', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(115, 'CF', 'Africa/Bangui', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(116, 'CG', 'Africa/Brazzaville', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(117, 'CH', 'Europe/Zurich', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(118, 'CI', 'Africa/Abidjan', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(119, 'CK', 'Pacific/Rarotonga', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(120, 'CL', 'America/Santiago', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(121, 'CL', 'America/Punta_Arenas', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(122, 'CL', 'Pacific/Easter', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(123, 'CM', 'Africa/Douala', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(124, 'CN', 'Asia/Shanghai', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(125, 'CN', 'Asia/Urumqi', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(126, 'CO', 'America/Bogota', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(127, 'CR', 'America/Costa_Rica', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(128, 'CU', 'America/Havana', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(129, 'CV', 'Atlantic/Cape_Verde', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(130, 'CW', 'America/Curacao', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(131, 'CX', 'Indian/Christmas', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(132, 'CY', 'Asia/Nicosia', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(133, 'CY', 'Asia/Famagusta', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(134, 'CZ', 'Europe/Prague', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(135, 'DE', 'Europe/Berlin', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(136, 'DE', 'Europe/Busingen', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(137, 'DJ', 'Africa/Djibouti', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(138, 'DK', 'Europe/Copenhagen', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(139, 'DM', 'America/Dominica', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(140, 'DO', 'America/Santo_Domingo', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(141, 'DZ', 'Africa/Algiers', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(142, 'EC', 'America/Guayaquil', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(143, 'EC', 'Pacific/Galapagos', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(144, 'EE', 'Europe/Tallinn', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(145, 'EG', 'Africa/Cairo', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(146, 'EH', 'Africa/El_Aaiun', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(147, 'ER', 'Africa/Asmara', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(148, 'ES', 'Europe/Madrid', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(149, 'ES', 'Africa/Ceuta', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(150, 'ES', 'Atlantic/Canary', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(151, 'ET', 'Africa/Addis_Ababa', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(152, 'FI', 'Europe/Helsinki', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(153, 'FJ', 'Pacific/Fiji', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(154, 'FK', 'Atlantic/Stanley', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(155, 'FM', 'Pacific/Chuuk', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(156, 'FM', 'Pacific/Pohnpei', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(157, 'FM', 'Pacific/Kosrae', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(158, 'FO', 'Atlantic/Faroe', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(159, 'FR', 'Europe/Paris', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(160, 'GA', 'Africa/Libreville', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(161, 'GB', 'Europe/London', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(162, 'GD', 'America/Grenada', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(163, 'GE', 'Asia/Tbilisi', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(164, 'GF', 'America/Cayenne', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(165, 'GG', 'Europe/Guernsey', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(166, 'GH', 'Africa/Accra', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(167, 'GI', 'Europe/Gibraltar', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(168, 'GL', 'America/Godthab', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(169, 'GL', 'America/Danmarkshavn', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(170, 'GL', 'America/Scoresbysund', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(171, 'GL', 'America/Thule', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(172, 'GM', 'Africa/Banjul', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(173, 'GN', 'Africa/Conakry', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(174, 'GP', 'America/Guadeloupe', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(175, 'GQ', 'Africa/Malabo', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(176, 'GR', 'Europe/Athens', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(177, 'GS', 'Atlantic/South_Georgia', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(178, 'GT', 'America/Guatemala', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(179, 'GU', 'Pacific/Guam', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(180, 'GW', 'Africa/Bissau', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(181, 'GY', 'America/Guyana', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(182, 'HK', 'Asia/Hong_Kong', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(183, 'HN', 'America/Tegucigalpa', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(184, 'HR', 'Europe/Zagreb', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(185, 'HT', 'America/Port-au-Prince', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(186, 'HU', 'Europe/Budapest', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(187, 'ID', 'Asia/Jakarta', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(188, 'ID', 'Asia/Pontianak', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(189, 'ID', 'Asia/Makassar', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(190, 'ID', 'Asia/Jayapura', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(191, 'IE', 'Europe/Dublin', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(192, 'IL', 'Asia/Jerusalem', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(193, 'IM', 'Europe/Isle_of_Man', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(194, 'IN', 'Asia/Kolkata', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(195, 'IO', 'Indian/Chagos', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(196, 'IQ', 'Asia/Baghdad', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(197, 'IR', 'Asia/Tehran', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(198, 'IS', 'Atlantic/Reykjavik', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(199, 'IT', 'Europe/Rome', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(200, 'JE', 'Europe/Jersey', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(201, 'JM', 'America/Jamaica', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(202, 'JO', 'Asia/Amman', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(203, 'JP', 'Asia/Tokyo', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(204, 'KE', 'Africa/Nairobi', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(205, 'KG', 'Asia/Bishkek', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(206, 'KH', 'Asia/Phnom_Penh', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(207, 'KI', 'Pacific/Tarawa', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(208, 'KI', 'Pacific/Enderbury', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(209, 'KI', 'Pacific/Kiritimati', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(210, 'KM', 'Indian/Comoro', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(211, 'KN', 'America/St_Kitts', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(212, 'KP', 'Asia/Pyongyang', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(213, 'KR', 'Asia/Seoul', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(214, 'KW', 'Asia/Kuwait', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(215, 'KY', 'America/Cayman', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(216, 'KZ', 'Asia/Almaty', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(217, 'KZ', 'Asia/Qyzylorda', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(218, 'KZ', 'Asia/Aqtobe', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(219, 'KZ', 'Asia/Aqtau', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(220, 'KZ', 'Asia/Atyrau', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(221, 'KZ', 'Asia/Oral', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(222, 'LA', 'Asia/Vientiane', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(223, 'LB', 'Asia/Beirut', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(224, 'LC', 'America/St_Lucia', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(225, 'LI', 'Europe/Vaduz', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(226, 'LK', 'Asia/Colombo', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(227, 'LR', 'Africa/Monrovia', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(228, 'LS', 'Africa/Maseru', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(229, 'LT', 'Europe/Vilnius', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(230, 'LU', 'Europe/Luxembourg', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(231, 'LV', 'Europe/Riga', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(232, 'LY', 'Africa/Tripoli', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(233, 'MA', 'Africa/Casablanca', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(234, 'MC', 'Europe/Monaco', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(235, 'MD', 'Europe/Chisinau', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(236, 'ME', 'Europe/Podgorica', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(237, 'MF', 'America/Marigot', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(238, 'MG', 'Indian/Antananarivo', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(239, 'MH', 'Pacific/Majuro', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(240, 'MH', 'Pacific/Kwajalein', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(241, 'MK', 'Europe/Skopje', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(242, 'ML', 'Africa/Bamako', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(243, 'MM', 'Asia/Yangon', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(244, 'MN', 'Asia/Ulaanbaatar', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(245, 'MN', 'Asia/Hovd', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(246, 'MN', 'Asia/Choibalsan', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(247, 'MO', 'Asia/Macau', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(248, 'MP', 'Pacific/Saipan', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(249, 'MQ', 'America/Martinique', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(250, 'MR', 'Africa/Nouakchott', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(251, 'MS', 'America/Montserrat', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(252, 'MT', 'Europe/Malta', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(253, 'MU', 'Indian/Mauritius', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(254, 'MV', 'Indian/Maldives', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(255, 'MW', 'Africa/Blantyre', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(256, 'MX', 'America/Mexico_City', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(257, 'MX', 'America/Cancun', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(258, 'MX', 'America/Merida', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(259, 'MX', 'America/Monterrey', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(260, 'MX', 'America/Matamoros', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(261, 'MX', 'America/Mazatlan', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(262, 'MX', 'America/Chihuahua', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(263, 'MX', 'America/Ojinaga', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(264, 'MX', 'America/Hermosillo', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(265, 'MX', 'America/Tijuana', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(266, 'MX', 'America/Bahia_Banderas', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(267, 'MY', 'Asia/Kuala_Lumpur', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(268, 'MY', 'Asia/Kuching', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(269, 'MZ', 'Africa/Maputo', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(270, 'NA', 'Africa/Windhoek', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(271, 'NC', 'Pacific/Noumea', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(272, 'NE', 'Africa/Niamey', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(273, 'NF', 'Pacific/Norfolk', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(274, 'NG', 'Africa/Lagos', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(275, 'NI', 'America/Managua', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(276, 'NL', 'Europe/Amsterdam', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(277, 'NO', 'Europe/Oslo', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(278, 'NP', 'Asia/Kathmandu', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(279, 'NR', 'Pacific/Nauru', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(280, 'NU', 'Pacific/Niue', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(281, 'NZ', 'Pacific/Auckland', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(282, 'NZ', 'Pacific/Chatham', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(283, 'OM', 'Asia/Muscat', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(284, 'PA', 'America/Panama', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(285, 'PE', 'America/Lima', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(286, 'PF', 'Pacific/Tahiti', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(287, 'PF', 'Pacific/Marquesas', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(288, 'PF', 'Pacific/Gambier', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(289, 'PG', 'Pacific/Port_Moresby', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(290, 'PG', 'Pacific/Bougainville', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(291, 'PH', 'Asia/Manila', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(292, 'PK', 'Asia/Karachi', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(293, 'PL', 'Europe/Warsaw', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(294, 'PM', 'America/Miquelon', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(295, 'PN', 'Pacific/Pitcairn', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(296, 'PR', 'America/Puerto_Rico', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(297, 'PS', 'Asia/Gaza', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(298, 'PS', 'Asia/Hebron', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(299, 'PT', 'Europe/Lisbon', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(300, 'PT', 'Atlantic/Madeira', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(301, 'PT', 'Atlantic/Azores', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(302, 'PW', 'Pacific/Palau', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(303, 'PY', 'America/Asuncion', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(304, 'QA', 'Asia/Qatar', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(305, 'RE', 'Indian/Reunion', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(306, 'RO', 'Europe/Bucharest', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(307, 'RS', 'Europe/Belgrade', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(308, 'RU', 'Europe/Kaliningrad', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(309, 'RU', 'Europe/Moscow', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(310, 'RU', 'Europe/Simferopol', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(311, 'RU', 'Europe/Volgograd', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(312, 'RU', 'Europe/Kirov', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(313, 'RU', 'Europe/Astrakhan', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(314, 'RU', 'Europe/Saratov', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(315, 'RU', 'Europe/Ulyanovsk', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(316, 'RU', 'Europe/Samara', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(317, 'RU', 'Asia/Yekaterinburg', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(318, 'RU', 'Asia/Omsk', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(319, 'RU', 'Asia/Novosibirsk', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(320, 'RU', 'Asia/Barnaul', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(321, 'RU', 'Asia/Tomsk', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(322, 'RU', 'Asia/Novokuznetsk', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(323, 'RU', 'Asia/Krasnoyarsk', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(324, 'RU', 'Asia/Irkutsk', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(325, 'RU', 'Asia/Chita', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(326, 'RU', 'Asia/Yakutsk', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(327, 'RU', 'Asia/Khandyga', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(328, 'RU', 'Asia/Vladivostok', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(329, 'RU', 'Asia/Ust-Nera', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(330, 'RU', 'Asia/Magadan', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(331, 'RU', 'Asia/Sakhalin', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(332, 'RU', 'Asia/Srednekolymsk', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(333, 'RU', 'Asia/Kamchatka', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(334, 'RU', 'Asia/Anadyr', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(335, 'RW', 'Africa/Kigali', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(336, 'SA', 'Asia/Riyadh', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(337, 'SB', 'Pacific/Guadalcanal', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(338, 'SC', 'Indian/Mahe', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(339, 'SD', 'Africa/Khartoum', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(340, 'SE', 'Europe/Stockholm', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(341, 'SG', 'Asia/Singapore', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(342, 'SH', 'Atlantic/St_Helena', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(343, 'SI', 'Europe/Ljubljana', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(344, 'SJ', 'Arctic/Longyearbyen', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(345, 'SK', 'Europe/Bratislava', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(346, 'SL', 'Africa/Freetown', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(347, 'SM', 'Europe/San_Marino', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(348, 'SN', 'Africa/Dakar', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(349, 'SO', 'Africa/Mogadishu', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(350, 'SR', 'America/Paramaribo', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(351, 'SS', 'Africa/Juba', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(352, 'ST', 'Africa/Sao_Tome', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(353, 'SV', 'America/El_Salvador', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(354, 'SX', 'America/Lower_Princes', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(355, 'SY', 'Asia/Damascus', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(356, 'SZ', 'Africa/Mbabane', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(357, 'TC', 'America/Grand_Turk', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(358, 'TD', 'Africa/Ndjamena', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(359, 'TF', 'Indian/Kerguelen', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(360, 'TG', 'Africa/Lome', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(361, 'TH', 'Asia/Bangkok', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(362, 'TJ', 'Asia/Dushanbe', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(363, 'TK', 'Pacific/Fakaofo', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(364, 'TL', 'Asia/Dili', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(365, 'TM', 'Asia/Ashgabat', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(366, 'TN', 'Africa/Tunis', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(367, 'TO', 'Pacific/Tongatapu', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(368, 'TR', 'Europe/Istanbul', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(369, 'TT', 'America/Port_of_Spain', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(370, 'TV', 'Pacific/Funafuti', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(371, 'TW', 'Asia/Taipei', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(372, 'TZ', 'Africa/Dar_es_Salaam', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(373, 'UA', 'Europe/Kiev', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(374, 'UA', 'Europe/Uzhgorod', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(375, 'UA', 'Europe/Zaporozhye', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(376, 'UG', 'Africa/Kampala', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(377, 'UM', 'Pacific/Midway', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(378, 'UM', 'Pacific/Wake', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(379, 'US', 'America/New_York', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(380, 'US', 'America/Detroit', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(381, 'US', 'America/Kentucky/Louisville', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(382, 'US', 'America/Kentucky/Monticello', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(383, 'US', 'America/Indiana/Indianapolis', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(384, 'US', 'America/Indiana/Vincennes', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(385, 'US', 'America/Indiana/Winamac', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(386, 'US', 'America/Indiana/Marengo', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(387, 'US', 'America/Indiana/Petersburg', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(388, 'US', 'America/Indiana/Vevay', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(389, 'US', 'America/Chicago', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(390, 'US', 'America/Indiana/Tell_City', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(391, 'US', 'America/Indiana/Knox', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(392, 'US', 'America/Menominee', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(393, 'US', 'America/North_Dakota/Center', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(394, 'US', 'America/North_Dakota/New_Salem', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(395, 'US', 'America/North_Dakota/Beulah', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(396, 'US', 'America/Denver', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(397, 'US', 'America/Boise', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(398, 'US', 'America/Phoenix', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(399, 'US', 'America/Los_Angeles', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(400, 'US', 'America/Anchorage', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(401, 'US', 'America/Juneau', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(402, 'US', 'America/Sitka', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(403, 'US', 'America/Metlakatla', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(404, 'US', 'America/Yakutat', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(405, 'US', 'America/Nome', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(406, 'US', 'America/Adak', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(407, 'US', 'Pacific/Honolulu', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(408, 'UY', 'America/Montevideo', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(409, 'UZ', 'Asia/Samarkand', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(410, 'UZ', 'Asia/Tashkent', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(411, 'VA', 'Europe/Vatican', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(412, 'VC', 'America/St_Vincent', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(413, 'VE', 'America/Caracas', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(414, 'VG', 'America/Tortola', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(415, 'VI', 'America/St_Thomas', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(416, 'VN', 'Asia/Ho_Chi_Minh', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(417, 'VU', 'Pacific/Efate', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(418, 'WF', 'Pacific/Wallis', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(419, 'WS', 'Pacific/Apia', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(420, 'YE', 'Asia/Aden', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(421, 'YT', 'Indian/Mayotte', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(422, 'ZA', 'Africa/Johannesburg', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(423, 'ZM', 'Africa/Lusaka', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1),
(424, 'ZW', 'Africa/Harare', 1, '2023-10-12 07:48:28', '2023-10-12 07:48:28', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `company_id` bigint(20) UNSIGNED NOT NULL,
  `account_id` bigint(20) UNSIGNED NOT NULL,
  `date` date DEFAULT NULL,
  `description` varchar(400) DEFAULT NULL,
  `amount` double(16,2) NOT NULL DEFAULT 0.00,
  `transaction_type` bigint(20) UNSIGNED NOT NULL DEFAULT 18,
  `status_id` bigint(20) UNSIGNED NOT NULL DEFAULT 9,
  `created_by` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `updated_by` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `branch_id` bigint(20) UNSIGNED DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `translations`
--

CREATE TABLE `translations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `default` varchar(191) NOT NULL,
  `en` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `bn` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `branch_id` bigint(20) UNSIGNED DEFAULT 1,
  `company_id` bigint(20) UNSIGNED DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `travel`
--

CREATE TABLE `travel` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `company_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_by` bigint(20) UNSIGNED NOT NULL,
  `travel_type_id` bigint(20) UNSIGNED NOT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `status_id` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `expect_amount` double(16,2) DEFAULT NULL,
  `amount` double(16,2) DEFAULT NULL,
  `description` longtext NOT NULL,
  `attachment` bigint(20) UNSIGNED DEFAULT NULL,
  `purpose` varchar(255) DEFAULT NULL,
  `place` varchar(255) DEFAULT NULL,
  `mode` enum('bus','train','plane') DEFAULT NULL,
  `goal_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `branch_id` bigint(20) UNSIGNED DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `travel`
--

INSERT INTO `travel` (`id`, `company_id`, `user_id`, `created_by`, `travel_type_id`, `start_date`, `end_date`, `status_id`, `expect_amount`, `amount`, `description`, `attachment`, `purpose`, `place`, `mode`, `goal_id`, `created_at`, `updated_at`, `branch_id`) VALUES
(1, 1, 2, 2, 1, '2023-10-12', '2023-10-19', 1, 100.00, 100.00, '<strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', NULL, 'test', 'test', 'bus', NULL, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1);

-- --------------------------------------------------------

--
-- Table structure for table `travel_types`
--

CREATE TABLE `travel_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `company_id` bigint(20) UNSIGNED NOT NULL,
  `status_id` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `created_by` bigint(20) UNSIGNED DEFAULT 1,
  `updated_by` bigint(20) UNSIGNED DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `branch_id` bigint(20) UNSIGNED DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `travel_types`
--

INSERT INTO `travel_types` (`id`, `name`, `company_id`, `status_id`, `created_by`, `updated_by`, `created_at`, `updated_at`, `branch_id`) VALUES
(1, 'Business', 1, 2, 2, 1, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1),
(2, 'Personal', 1, 2, 2, 1, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1),
(3, 'Vacation', 1, 2, 2, 1, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1),
(4, 'Other', 1, 2, 2, 1, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1);

-- --------------------------------------------------------

--
-- Table structure for table `uploads`
--

CREATE TABLE `uploads` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `file_original_name` varchar(255) DEFAULT NULL,
  `file_name` varchar(255) DEFAULT NULL,
  `img_path` varchar(255) DEFAULT NULL,
  `big_path` varchar(255) DEFAULT NULL COMMENT '1920 x 1080',
  `small_path` varchar(255) DEFAULT NULL COMMENT '300 x 300',
  `thumbnail_path` varchar(255) DEFAULT NULL COMMENT '500 x 400',
  `extension` varchar(10) DEFAULT NULL,
  `type` varchar(15) DEFAULT NULL,
  `file_size` int(11) DEFAULT NULL,
  `width` int(11) DEFAULT NULL,
  `height` int(11) DEFAULT NULL,
  `status_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `branch_id` bigint(20) UNSIGNED DEFAULT 1,
  `company_id` bigint(20) UNSIGNED DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `uploads`
--

INSERT INTO `uploads` (`id`, `user_id`, `file_original_name`, `file_name`, `img_path`, `big_path`, `small_path`, `thumbnail_path`, `extension`, `type`, `file_size`, `width`, `height`, `status_id`, `created_at`, `updated_at`, `branch_id`, `company_id`) VALUES
(1, 1, 'dark_logo', 'dark_logo.png', 'static/dark_logo.png', 'static/dark_logo.png', 'static/dark_logo.png', 'static/dark_logo.png', '.png', 'png', 0, 100, 100, 1, '2023-10-12 07:48:58', '2023-10-12 07:48:58', 1, 1),
(2, 1, 'white_logo', 'white_logo.png', 'static/white_logo.png', 'static/white_logo.png', 'static/white_logo.png', 'static/white_logo.png', '.png', 'png', 0, 100, 100, 1, '2023-10-12 07:48:58', '2023-10-12 07:48:58', 1, 1),
(3, 1, 'fav', 'fav.png', 'static/fav.png', 'static/fav.png', 'static/fav.png', 'static/fav.png', '.png', 'png', 0, 100, 100, 1, '2023-10-12 07:48:58', '2023-10-12 07:48:58', 1, 1),
(4, 1, 'background_image', 'background_image.png', 'static/background_image.png', 'static/background_image.png', 'static/background_image.png', 'static/background_image.png', '.png', 'png', 0, 100, 100, 1, '2023-10-12 07:48:58', '2023-10-12 07:48:58', 1, 1),
(5, 1, 'android_icon', 'android_icon.png', 'static/android_icon.png', 'static/android_icon.png', 'static/android_icon.png', 'static/android_icon.png', '.png', 'png', 0, 100, 100, 1, '2023-10-12 07:48:58', '2023-10-12 07:48:58', 1, 1),
(6, 1, 'iso_icon', 'iso_icon.png', 'static/iso_icon.png', 'static/iso_icon.png', 'static/iso_icon.png', 'static/iso_icon.png', '.png', 'png', 0, 100, 100, 1, '2023-10-12 07:48:58', '2023-10-12 07:48:58', 1, 1),
(7, 1, 'support', 'support.png', 'static/support.png', 'static/support.png', 'static/support.png', 'static/support.png', '.png', 'png', 0, 100, 100, 1, '2023-10-12 07:48:58', '2023-10-12 07:48:58', 1, 1),
(8, 1, 'attendance', 'attendance.png', 'static/attendance.png', 'static/attendance.png', 'static/attendance.png', 'static/attendance.png', '.png', 'png', 0, 100, 100, 1, '2023-10-12 07:48:58', '2023-10-12 07:48:58', 1, 1),
(9, 1, 'notice', 'notice.png', 'static/notice.png', 'static/notice.png', 'static/notice.png', 'static/notice.png', '.png', 'png', 0, 100, 100, 1, '2023-10-12 07:48:58', '2023-10-12 07:48:58', 1, 1),
(10, 1, 'expense', 'expense.png', 'static/expense.png', 'static/expense.png', 'static/expense.png', 'static/expense.png', '.png', 'png', 0, 100, 100, 1, '2023-10-12 07:48:58', '2023-10-12 07:48:58', 1, 1),
(11, 1, 'leave', 'leave.png', 'static/leave.png', 'static/leave.png', 'static/leave.png', 'static/leave.png', '.png', 'png', 0, 100, 100, 1, '2023-10-12 07:48:58', '2023-10-12 07:48:58', 1, 1),
(12, 1, 'approval', 'approval.png', 'static/approval.png', 'static/approval.png', 'static/approval.png', 'static/approval.png', '.png', 'png', 0, 100, 100, 1, '2023-10-12 07:48:58', '2023-10-12 07:48:58', 1, 1),
(13, 1, 'phonebook', 'phonebook.png', 'static/phonebook.png', 'static/phonebook.png', 'static/phonebook.png', 'static/phonebook.png', '.png', 'png', 0, 100, 100, 1, '2023-10-12 07:48:58', '2023-10-12 07:48:58', 1, 1),
(14, 1, 'visit', 'visit.png', 'static/visit.png', 'static/visit.png', 'static/visit.png', 'static/visit.png', '.png', 'png', 0, 100, 100, 1, '2023-10-12 07:48:58', '2023-10-12 07:48:58', 1, 1),
(15, 1, 'appointments', 'appointments.png', 'static/appointments.png', 'static/appointments.png', 'static/appointments.png', 'static/appointments.png', '.png', 'png', 0, 100, 100, 1, '2023-10-12 07:48:58', '2023-10-12 07:48:58', 1, 1),
(16, 1, 'break', 'break.png', 'static/break.png', 'static/break.png', 'static/break.png', 'static/break.png', '.png', 'png', 0, 100, 100, 1, '2023-10-12 07:48:58', '2023-10-12 07:48:58', 1, 1),
(17, 1, 'report', 'report.png', 'static/report.png', 'static/report.png', 'static/report.png', 'static/report.png', '.png', 'png', 0, 100, 100, 1, '2023-10-12 07:48:58', '2023-10-12 07:48:58', 1, 1),
(21, 1, 'portfolio1', 'portfolio1.png', 'static/portfolio1.png', 'static/portfolio1.png', 'static/portfolio1.png', 'static/portfolio1.png', '.png', 'png', 0, 100, 100, 1, '2023-10-12 07:48:58', '2023-10-12 07:48:58', 1, 1),
(22, 1, 'portfolio2', 'portfolio2.png', 'static/portfolio2.png', 'static/portfolio2.png', 'static/portfolio2.png', 'static/portfolio2.png', '.png', 'png', 0, 100, 100, 1, '2023-10-12 07:48:58', '2023-10-12 07:48:58', 1, 1),
(23, 1, 'portfolio3', 'portfolio3.png', 'static/portfolio3.png', 'static/portfolio3.png', 'static/portfolio3.png', 'static/portfolio3.png', '.png', 'png', 0, 100, 100, 1, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1, 1),
(24, 1, 'portfolio4', 'portfolio4.png', 'static/portfolio4.png', 'static/portfolio4.png', 'static/portfolio4.png', 'static/portfolio4.png', '.png', 'png', 0, 100, 100, 1, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1, 1),
(25, 1, 'portfolio5', 'portfolio5.png', 'static/portfolio5.png', 'static/portfolio5.png', 'static/portfolio5.png', 'static/portfolio5.png', '.png', 'png', 0, 100, 100, 1, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1, 1),
(26, 1, 'portfolio6', 'portfolio6.png', 'static/portfolio6.png', 'static/portfolio6.png', 'static/portfolio6.png', 'static/portfolio6.png', '.png', 'png', 0, 100, 100, 1, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1, 1),
(27, 1, 'portfolio7', 'portfolio7.png', 'static/portfolio7.png', 'static/portfolio7.png', 'static/portfolio7.png', 'static/portfolio7.png', '.png', 'png', 0, 100, 100, 1, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1, 1),
(28, 1, 'portfolio8', 'portfolio8.png', 'static/portfolio8.png', 'static/portfolio8.png', 'static/portfolio8.png', 'static/portfolio8.png', '.png', 'png', 0, 100, 100, 1, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1, 1),
(29, 1, 'team1', 'team1.png', 'static/team1.png', 'static/team1.png', 'static/team1.png', 'static/team1.png', '.png', 'png', 0, 100, 100, 1, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1, 1),
(30, 1, 'team2', 'team2.png', 'static/team2.png', 'static/team2.png', 'static/team2.png', 'static/team2.png', '.png', 'png', 0, 100, 100, 1, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1, 1),
(31, 1, 'team3', 'team3.png', 'static/team3.png', 'static/team3.png', 'static/team3.png', 'static/team3.png', '.png', 'png', 0, 100, 100, 1, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1, 1),
(32, 1, 'team4', 'team4.png', 'static/team4.png', 'static/team4.png', 'static/team4.png', 'static/team4.png', '.png', 'png', 0, 100, 100, 1, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1, 1),
(33, 1, 'team5', 'team5.png', 'static/team5.png', 'static/team5.png', 'static/team5.png', 'static/team5.png', '.png', 'png', 0, 100, 100, 1, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1, 1),
(34, 1, 'team6', 'team6.png', 'static/team6.png', 'static/team6.png', 'static/team6.png', 'static/team6.png', '.png', 'png', 0, 100, 100, 1, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1, 1),
(35, 1, 'team7', 'team7.png', 'static/team7.png', 'static/team7.png', 'static/team7.png', 'static/team7.png', '.png', 'png', 0, 100, 100, 1, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1, 1),
(36, 1, 'team8', 'team8.png', 'static/team8.png', 'static/team8.png', 'static/team8.png', 'static/team8.png', '.png', 'png', 0, 100, 100, 1, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1, 1),
(37, 1, 'team8', 'team8.png', 'static/app-screen/screen-1.png', 'static/app-screen/screen-1.png', 'static/app-screen/screen-1.png', 'static/app-screen/screen-1.png', '.png', 'png', 0, 300, 700, 1, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1, 1),
(38, 1, 'team8', 'team8.png', 'static/app-screen/screen-2.png', 'static/app-screen/screen-2.png', 'static/app-screen/screen-2.png', 'static/app-screen/screen-2.png', '.png', 'png', 0, 300, 700, 1, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1, 1),
(39, 1, 'team8', 'team8.png', 'static/app-screen/screen-3.png', 'static/app-screen/screen-3.png', 'static/app-screen/screen-3.png', 'static/app-screen/screen-3.png', '.png', 'png', 0, 300, 700, 1, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `company_id` bigint(20) UNSIGNED NOT NULL,
  `country_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `userID` int(11) DEFAULT NULL,
  `face_recognition` tinyint(4) DEFAULT 1,
  `face_data` longtext DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `is_admin` varchar(255) NOT NULL DEFAULT '0',
  `is_hr` tinyint(4) DEFAULT NULL,
  `role_id` bigint(20) UNSIGNED DEFAULT NULL,
  `department_id` bigint(20) UNSIGNED DEFAULT NULL,
  `shift_id` bigint(20) UNSIGNED DEFAULT NULL,
  `designation_id` bigint(20) UNSIGNED DEFAULT NULL,
  `permissions` text DEFAULT NULL,
  `verification_code` varchar(255) DEFAULT NULL COMMENT 'email verification code',
  `manager_id` bigint(20) UNSIGNED DEFAULT NULL,
  `employee_id` varchar(255) DEFAULT NULL,
  `employee_type` enum('Permanent','On Probation','Contractual','Intern') NOT NULL DEFAULT 'On Probation',
  `grade` varchar(255) DEFAULT NULL,
  `nationality` varchar(255) DEFAULT NULL,
  `facebook_link` varchar(255) DEFAULT NULL,
  `linkedin_link` varchar(255) DEFAULT NULL,
  `instagram_link` varchar(255) DEFAULT NULL,
  `passport_number` varchar(255) DEFAULT NULL,
  `passport_file_id` bigint(20) UNSIGNED DEFAULT NULL,
  `passport_expire_date` varchar(255) DEFAULT NULL,
  `passport_is_notified` tinyint(4) NOT NULL DEFAULT 0,
  `eid_number` varchar(255) DEFAULT NULL,
  `eid_file_id` bigint(20) UNSIGNED DEFAULT NULL,
  `eid_expire_date` varchar(255) DEFAULT NULL,
  `eid_is_notified` tinyint(4) NOT NULL DEFAULT 0,
  `visa_number` varchar(255) DEFAULT NULL,
  `visa_file_id` bigint(20) UNSIGNED DEFAULT NULL,
  `visa_expire_date` varchar(255) DEFAULT NULL,
  `visa_is_notified` tinyint(4) NOT NULL DEFAULT 0,
  `insurance_number` varchar(255) DEFAULT NULL,
  `insurance_file_id` bigint(20) UNSIGNED DEFAULT NULL,
  `insurance_expire_date` varchar(255) DEFAULT NULL,
  `insurance_is_notified` tinyint(4) NOT NULL DEFAULT 0,
  `labour_card_number` varchar(255) DEFAULT NULL,
  `labour_card_file_id` bigint(20) UNSIGNED DEFAULT NULL,
  `labour_card_expire_date` varchar(255) DEFAULT NULL,
  `labour_card_is_notified` tinyint(4) NOT NULL DEFAULT 0,
  `nid_card_number` varchar(255) DEFAULT NULL,
  `nid_card_id` bigint(20) UNSIGNED DEFAULT NULL COMMENT 'this will be uploaded file',
  `tin` varchar(255) DEFAULT NULL,
  `tin_id_front_file` varchar(255) DEFAULT NULL,
  `tin_id_back_file` varchar(255) DEFAULT NULL,
  `bank_name` varchar(255) DEFAULT NULL,
  `bank_account` varchar(255) DEFAULT NULL,
  `emergency_name` varchar(255) DEFAULT NULL,
  `emergency_mobile_number` varchar(255) DEFAULT NULL,
  `emergency_mobile_relationship` varchar(255) DEFAULT NULL,
  `_token` varchar(255) DEFAULT NULL COMMENT 'email verify token',
  `email_verify_token` varchar(255) DEFAULT NULL COMMENT 'email verify token',
  `is_email_verified` enum('verified','non-verified') NOT NULL DEFAULT 'verified',
  `email_verified_at` timestamp NULL DEFAULT NULL COMMENT 'email verified at',
  `phone_verify_token` varchar(255) DEFAULT NULL COMMENT 'phone verify token',
  `is_phone_verified` enum('verified','non-verified') NOT NULL DEFAULT 'verified',
  `phone_verified_at` timestamp NULL DEFAULT NULL COMMENT 'phone verified at',
  `password` varchar(255) NOT NULL,
  `password_hints` varchar(255) DEFAULT NULL COMMENT 'user can set a password hint for easy remember',
  `avatar_id` bigint(20) UNSIGNED DEFAULT NULL,
  `status_id` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `last_login_at` timestamp NULL DEFAULT NULL COMMENT 'last login at',
  `last_logout_at` timestamp NULL DEFAULT NULL COMMENT 'last logout at',
  `last_login_ip` varchar(255) DEFAULT NULL COMMENT 'last login ip',
  `device_token` longtext DEFAULT NULL COMMENT 'device_token from firebase',
  `login_access` tinyint(4) NOT NULL DEFAULT 1 COMMENT '0 = off, 1 = on',
  `address` varchar(191) DEFAULT NULL,
  `gender` enum('Male','Female','Unisex','Others') DEFAULT NULL,
  `birth_date` date DEFAULT NULL,
  `religion` enum('Islam','Hindu','Christian') NOT NULL DEFAULT 'Islam',
  `blood_group` enum('A+','A-','B+','B-','O+','O-','AB+','AB-') DEFAULT NULL,
  `joining_date` date DEFAULT NULL,
  `basic_salary` double(16,2) NOT NULL DEFAULT 0.00,
  `marital_status` enum('Married','Unmarried') NOT NULL DEFAULT 'Unmarried',
  `contract_start_date` date DEFAULT NULL,
  `contract_end_date` date DEFAULT NULL,
  `payslip_type` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1 = monthly, 2 = weekly, 3 = daily',
  `late_check_in` int(11) NOT NULL DEFAULT 0,
  `early_check_out` int(11) NOT NULL DEFAULT 0,
  `extra_leave` int(11) NOT NULL DEFAULT 0,
  `monthly_leave` int(11) NOT NULL DEFAULT 0,
  `is_free_location` tinyint(4) NOT NULL DEFAULT 0,
  `time_zone` varchar(191) NOT NULL DEFAULT 'Asia/Dhaka',
  `speak_language` varchar(191) NOT NULL DEFAULT 'english',
  `social_id` varchar(255) DEFAULT NULL,
  `social_type` varchar(255) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `face_image` bigint(20) UNSIGNED DEFAULT NULL,
  `stripe_id` varchar(255) DEFAULT NULL,
  `pm_type` varchar(255) DEFAULT NULL,
  `pm_last_four` varchar(4) DEFAULT NULL,
  `trial_ends_at` timestamp NULL DEFAULT NULL,
  `lang` varchar(255) DEFAULT NULL,
  `branch_id` bigint(20) UNSIGNED DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `company_id`, `country_id`, `name`, `userID`, `face_recognition`, `face_data`, `email`, `phone`, `is_admin`, `is_hr`, `role_id`, `department_id`, `shift_id`, `designation_id`, `permissions`, `verification_code`, `manager_id`, `employee_id`, `employee_type`, `grade`, `nationality`, `facebook_link`, `linkedin_link`, `instagram_link`, `passport_number`, `passport_file_id`, `passport_expire_date`, `passport_is_notified`, `eid_number`, `eid_file_id`, `eid_expire_date`, `eid_is_notified`, `visa_number`, `visa_file_id`, `visa_expire_date`, `visa_is_notified`, `insurance_number`, `insurance_file_id`, `insurance_expire_date`, `insurance_is_notified`, `labour_card_number`, `labour_card_file_id`, `labour_card_expire_date`, `labour_card_is_notified`, `nid_card_number`, `nid_card_id`, `tin`, `tin_id_front_file`, `tin_id_back_file`, `bank_name`, `bank_account`, `emergency_name`, `emergency_mobile_number`, `emergency_mobile_relationship`, `_token`, `email_verify_token`, `is_email_verified`, `email_verified_at`, `phone_verify_token`, `is_phone_verified`, `phone_verified_at`, `password`, `password_hints`, `avatar_id`, `status_id`, `last_login_at`, `last_logout_at`, `last_login_ip`, `device_token`, `login_access`, `address`, `gender`, `birth_date`, `religion`, `blood_group`, `joining_date`, `basic_salary`, `marital_status`, `contract_start_date`, `contract_end_date`, `payslip_type`, `late_check_in`, `early_check_out`, `extra_leave`, `monthly_leave`, `is_free_location`, `time_zone`, `speak_language`, `social_id`, `social_type`, `remember_token`, `deleted_at`, `created_at`, `updated_at`, `face_image`, `stripe_id`, `pm_type`, `pm_last_four`, `trial_ends_at`, `lang`, `branch_id`) VALUES
(1, 1, 223, 'Admin', NULL, 1, NULL, 'admin@onesttech.com', 'null', '1', 0, 2, 1, 1, 1, '[\"team_menu\",\"team_list\",\"team_create\",\"team_update\",\"team_edit\",\"team_delete\",\"team_member_view\",\"team_member_create\",\"team_member_edit\",\"team_member_delete\",\"team_member_assign\",\"team_member_unassign\",\"dashboard\",\"hr_menu\",\"designation_read\",\"designation_create\",\"designation_update\",\"designation_delete\",\"shift_read\",\"shift_create\",\"shift_update\",\"shift_delete\",\"department_read\",\"department_create\",\"department_update\",\"department_delete\",\"user_menu\",\"user_read\",\"profile_view\",\"user_create\",\"user_edit\",\"user_update\",\"user_delete\",\"user_banned\",\"user_unbanned\",\"make_hr\",\"user_permission\",\"profile_image_view\",\"user_device_list\",\"reset_device\",\"phonebook_profile\",\"support_ticket_profile\",\"advance_profile\",\"commission_profile\",\"salary_profile\",\"project_profile\",\"task_profile\",\"award_profile\",\"travel_profile\",\"attendance_profile\",\"appointment_profile\",\"visit_profile\",\"leave_request_profile\",\"notice_profile\",\"role_read\",\"role_create\",\"role_update\",\"role_delete\",\"branch_read\",\"branch_create\",\"branch_update\",\"branch_delete\",\"leave_menu\",\"leave_type_read\",\"leave_type_create\",\"leave_type_update\",\"leave_type_delete\",\"leave_assign_read\",\"leave_assign_create\",\"leave_assign_update\",\"leave_assign_delete\",\"leave_request_read\",\"leave_request_create\",\"leave_request_store\",\"leave_request_update\",\"leave_request_approve\",\"leave_request_reject\",\"leave_request_delete\",\"daily_leave_read\",\"appointment_read\",\"appointment_menu\",\"appointment_create\",\"appointment_approve\",\"appointment_reject\",\"appointment_delete\",\"weekend_read\",\"weekend_update\",\"attendance_update\",\"holiday_read\",\"holiday_create\",\"holiday_update\",\"holiday_delete\",\"schedule_read\",\"schedule_create\",\"schedule_update\",\"schedule_delete\",\"attendance_menu\",\"attendance_read\",\"attendance_create\",\"attendance_update\",\"attendance_delete\",\"generate_qr_code\",\"leave_settings_read\",\"leave_settings_update\",\"company_settings_read\",\"company_settings_update\",\"locationApi\",\"company_setup_menu\",\"company_setup_activation\",\"company_setup_configuration\",\"company_setup_ip_whitelist\",\"company_setup_location\",\"location_create\",\"location_store\",\"location_edit\",\"location_update\",\"location_delete\",\"ip_read\",\"ip_create\",\"ip_update\",\"ip_delete\",\"attendance_report_read\",\"live_tracking_read\",\"report_menu\",\"report\",\"claim_read\",\"claim_create\",\"claim_update\",\"claim_delete\",\"payment_read\",\"payment_create\",\"payment_update\",\"payment_delete\",\"visit_menu\",\"visit_read\",\"visit_view\",\"visit_update\",\"payroll_menu\",\"list_payroll_item\",\"create_payroll_item\",\"store_payroll_item\",\"update_payroll_item\",\"delete_payroll_item\",\"view_payroll_item\",\"payroll_item_menu\",\"list_payroll_set\",\"create_payroll_set\",\"store_payroll_set\",\"update_payroll_set\",\"delete_payroll_set\",\"view_payroll_set\",\"edit_payroll_set\",\"payroll_set_menu\",\"advance_salaries_menu\",\"advance_salaries_create\",\"advance_salaries_store\",\"advance_salaries_edit\",\"advance_salaries_update\",\"advance_salaries_delete\",\"advance_salaries_view\",\"advance_salaries_approve\",\"advance_salaries_list\",\"advance_salaries_pay\",\"advance_salaries_invoice\",\"advance_salaries_search\",\"payslip_menu\",\"salary_generate\",\"salary_view\",\"salary_delete\",\"salary_edit\",\"salary_update\",\"salary_payment\",\"payslip_list\",\"advance_type_menu\",\"advance_type_create\",\"advance_type_store\",\"advance_type_edit\",\"advance_type_update\",\"advance_type_delete\",\"advance_type_view\",\"advance_type_list\",\"salary_menu\",\"salary_store\",\"salary_edit\",\"salary_update\",\"salary_delete\",\"salary_view\",\"salary_list\",\"salary_search\",\"salary_pay\",\"salary_invoice\",\"salary_approve\",\"salary_generate\",\"salary_calculate\",\"account_menu\",\"account_create\",\"account_store\",\"account_edit\",\"account_update\",\"account_delete\",\"account_view\",\"account_list\",\"account_search\",\"deposit_menu\",\"deposit_create\",\"deposit_store\",\"deposit_edit\",\"deposit_update\",\"deposit_delete\",\"deposit_list\",\"expense_menu\",\"expense_create\",\"expense_store\",\"expense_edit\",\"expense_update\",\"expense_delete\",\"expense_list\",\"expense_view\",\"expense_approve\",\"expense_invoice\",\"expense_pay\",\"transaction_menu\",\"transaction_create\",\"transaction_store\",\"transaction_edit\",\"transaction_update\",\"transaction_delete\",\"transaction_view\",\"transaction_list\",\"deposit_category_menu\",\"deposit_category_create\",\"deposit_category_store\",\"deposit_category_edit\",\"deposit_category_update\",\"deposit_category_delete\",\"deposit_category_list\",\"payment_method_menu\",\"payment_method_create\",\"payment_method_store\",\"payment_method_edit\",\"payment_method_update\",\"payment_method_delete\",\"payment_method_list\",\"project_menu\",\"project_create\",\"project_store\",\"project_edit\",\"project_update\",\"project_delete\",\"project_view\",\"project_list\",\"project_activity_view\",\"project_member_view\",\"project_member_delete\",\"project_complete\",\"project_payment\",\"project_invoice_view\",\"project_discussion_create\",\"project_discussion_store\",\"project_discussion_edit\",\"project_discussion_update\",\"project_discussion_delete\",\"project_discussion_view\",\"project_discussion_list\",\"project_discussion_comment\",\"project_discussion_reply\",\"project_file_create\",\"project_file_store\",\"project_file_edit\",\"project_file_update\",\"project_file_delete\",\"project_file_view\",\"project_file_list\",\"project_file_download\",\"project_file_comment\",\"project_file_reply\",\"project_notes_create\",\"project_notes_store\",\"project_notes_edit\",\"project_notes_update\",\"project_notes_delete\",\"project_notes_list\",\"client_menu\",\"client_create\",\"client_store\",\"client_edit\",\"client_update\",\"client_delete\",\"client_view\",\"client_list\",\"task_menu\",\"task_create\",\"task_store\",\"task_edit\",\"task_update\",\"task_delete\",\"task_view\",\"task_list\",\"task_activity_view\",\"task_assign_view\",\"task_assign_delete\",\"task_complete\",\"task_discussion_create\",\"task_discussion_store\",\"task_discussion_edit\",\"task_discussion_update\",\"task_discussion_delete\",\"task_discussion_view\",\"task_discussion_list\",\"task_discussion_comment\",\"task_discussion_reply\",\"task_file_create\",\"task_file_store\",\"task_file_edit\",\"task_file_update\",\"task_file_delete\",\"task_file_view\",\"task_file_list\",\"task_file_download\",\"task_file_comment\",\"task_file_reply\",\"task_notes_create\",\"task_notes_store\",\"task_notes_edit\",\"task_notes_update\",\"task_notes_delete\",\"task_notes_list\",\"task_files_comment\",\"award_type_menu\",\"award_type_create\",\"award_type_store\",\"award_type_edit\",\"award_type_update\",\"award_type_delete\",\"award_type_view\",\"award_type_list\",\"award_menu\",\"award_create\",\"award_store\",\"award_edit\",\"award_update\",\"award_delete\",\"award_list\",\"travel_type_menu\",\"travel_type_create\",\"travel_type_store\",\"travel_type_edit\",\"travel_type_update\",\"travel_type_delete\",\"travel_type_view\",\"travel_type_list\",\"travel_menu\",\"travel_create\",\"travel_store\",\"travel_edit\",\"travel_update\",\"travel_delete\",\"travel_list\",\"travel_approve\",\"travel_payment\",\"meeting_menu\",\"meeting_create\",\"meeting_store\",\"meeting_edit\",\"meeting_update\",\"meeting_delete\",\"meeting_list\",\"performance_menu\",\"performance_settings\",\"performance_indicator_menu\",\"performance_indicator_list\",\"performance_indicator_create\",\"performance_indicator_store\",\"performance_indicator_edit\",\"performance_indicator_update\",\"performance_indicator_delete\",\"performance_appraisal_menu\",\"performance_appraisal_create\",\"performance_appraisal_store\",\"performance_appraisal_edit\",\"performance_appraisal_update\",\"performance_appraisal_delete\",\"performance_appraisal_list\",\"performance_appraisal_view\",\"performance_goal_type_menu\",\"performance_goal_type_create\",\"performance_goal_type_store\",\"performance_goal_type_edit\",\"performance_goal_type_update\",\"performance_goal_type_delete\",\"performance_goal_type_list\",\"performance_goal_menu\",\"performance_goal_create\",\"performance_goal_store\",\"performance_goal_edit\",\"performance_goal_update\",\"performance_goal_delete\",\"performance_goal_view\",\"performance_goal_list\",\"performance_competence_type_list\",\"performance_competence_type_menu\",\"performance_competence_type_create\",\"performance_competence_type_store\",\"performance_competence_type_edit\",\"performance_competence_type_update\",\"performance_competence_type_delete\",\"performance_competence_type_view\",\"performance_competence_menu\",\"performance_competence_create\",\"performance_competence_store\",\"performance_competence_edit\",\"performance_competence_update\",\"performance_competence_delete\",\"performance_competence_view\",\"performance_competence_list\",\"app_settings_menu\",\"app_settings_update\",\"language_menu\",\"make_default\",\"general_settings_read\",\"general_settings_update\",\"email_settings_update\",\"storage_settings_update\",\"language_create\",\"language_store\",\"language_edit\",\"language_update\",\"language_delete\",\"setup_language\",\"content_menu\",\"content_create\",\"content_store\",\"content_edit\",\"content_update\",\"content_delete\",\"contact_menu\",\"contact_create\",\"contact_store\",\"contact_edit\",\"contact_update\",\"contact_delete\",\"announcement_menu\",\"notice_menu\",\"notice_list\",\"notice_create\",\"notice_update\",\"notice_edit\",\"notice_delete\",\"send_sms_menu\",\"send_sms_list\",\"send_sms_create\",\"send_sms_update\",\"send_sms_edit\",\"send_sms_delete\",\"send_email_menu\",\"send_email_list\",\"send_email_create\",\"send_email_update\",\"send_email_edit\",\"send_email_delete\",\"send_notification_menu\",\"send_notification_list\",\"send_notification_create\",\"send_notification_update\",\"send_notification_edit\",\"send_notification_delete\",\"announcement_menu\",\"notice_menu\",\"notice_list\",\"notice_create\",\"notice_update\",\"notice_edit\",\"notice_delete\",\"send_sms_menu\",\"send_sms_list\",\"send_sms_create\",\"send_sms_update\",\"send_sms_edit\",\"send_sms_delete\",\"send_email_menu\",\"send_email_list\",\"send_email_create\",\"send_email_update\",\"send_email_edit\",\"send_email_delete\",\"send_notification_menu\",\"send_notification_list\",\"send_notification_create\",\"send_notification_update\",\"send_notification_edit\",\"send_notification_delete\",\"support_menu\",\"support_read\",\"support_create\",\"support_reply\",\"support_delete\"]', NULL, NULL, NULL, 'On Probation', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'xLYdB8sUKk', 'verified', '2023-10-12 07:48:58', NULL, 'verified', NULL, '$2y$10$9Nooh34IOU91SKSl6badrenXLiozsXztXEn6zHOxBjKpMfnglb5ty', NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, 'Islam', NULL, NULL, 0.00, 'Unmarried', NULL, NULL, 1, 0, 0, 0, 0, 0, 'Asia/Dhaka', 'english', NULL, NULL, 'KKi1V4kNbK', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `user_devices`
--

CREATE TABLE `user_devices` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `device_token` longtext DEFAULT NULL COMMENT 'device_token from firebase',
  `device_name` varchar(255) DEFAULT NULL COMMENT 'device_name from firebase',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `branch_id` bigint(20) UNSIGNED DEFAULT 1,
  `company_id` bigint(20) UNSIGNED DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_documents`
--

CREATE TABLE `user_documents` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `document_title` varchar(255) DEFAULT NULL,
  `document_number` varchar(255) DEFAULT NULL,
  `document_expiration` date DEFAULT NULL,
  `document_request_description` text DEFAULT NULL,
  `document_request_approved` tinyint(1) DEFAULT NULL,
  `document_request_date` date DEFAULT NULL,
  `document_notification_date` date DEFAULT NULL,
  `attachment_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `user_document_type_id` bigint(20) UNSIGNED NOT NULL,
  `branch_id` bigint(20) UNSIGNED DEFAULT 1,
  `company_id` bigint(20) UNSIGNED DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_document_requests`
--

CREATE TABLE `user_document_requests` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `branch_id` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `company_id` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `request_type` varchar(255) NOT NULL,
  `request_description` text DEFAULT NULL,
  `approved` tinyint(1) DEFAULT NULL,
  `request_date` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_document_requests`
--

INSERT INTO `user_document_requests` (`id`, `user_id`, `branch_id`, `company_id`, `request_type`, `request_description`, `approved`, `request_date`, `created_at`, `updated_at`, `status_id`) VALUES
(1, 1, 1, 1, 'Others', 'Sample request description 1', 1, '2023-09-14', '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1);

-- --------------------------------------------------------

--
-- Table structure for table `user_document_types`
--

CREATE TABLE `user_document_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(91) NOT NULL,
  `status_id` bigint(20) NOT NULL DEFAULT 1 COMMENT '1=active,4=inactive',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `branch_id` bigint(20) UNSIGNED DEFAULT 1,
  `company_id` bigint(20) UNSIGNED DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_document_types`
--

INSERT INTO `user_document_types` (`id`, `name`, `status_id`, `created_at`, `updated_at`, `branch_id`, `company_id`) VALUES
(1, 'Resume/CV', 1, '2023-10-12 07:48:48', '2023-10-12 07:48:48', 1, 1),
(2, 'Job Offer Letter', 1, '2023-10-12 07:48:48', '2023-10-12 07:48:48', 1, 1),
(3, 'Employment Contract', 1, '2023-10-12 07:48:48', '2023-10-12 07:48:48', 1, 1),
(4, 'W-4 Form', 1, '2023-10-12 07:48:48', '2023-10-12 07:48:48', 1, 1),
(5, 'I-9 Form', 1, '2023-10-12 07:48:48', '2023-10-12 07:48:48', 1, 1),
(6, 'Payroll Records', 1, '2023-10-12 07:48:48', '2023-10-12 07:48:48', 1, 1),
(7, 'Employee Handbook', 1, '2023-10-12 07:48:48', '2023-10-12 07:48:48', 1, 1),
(8, 'Performance Appraisals', 1, '2023-10-12 07:48:48', '2023-10-12 07:48:48', 1, 1),
(9, 'Benefits Enrollment Forms', 1, '2023-10-12 07:48:48', '2023-10-12 07:48:48', 1, 1),
(10, 'Termination Documentation', 1, '2023-10-12 07:48:48', '2023-10-12 07:48:48', 1, 1),
(11, 'Training Certificates', 1, '2023-10-12 07:48:48', '2023-10-12 07:48:48', 1, 1),
(12, 'Health and Safety Documents', 1, '2023-10-12 07:48:48', '2023-10-12 07:48:48', 1, 1),
(13, 'Workplace Policies', 1, '2023-10-12 07:48:48', '2023-10-12 07:48:48', 1, 1),
(14, 'Emergency Contact Information', 1, '2023-10-12 07:48:48', '2023-10-12 07:48:48', 1, 1),
(15, 'Non-Disclosure Agreements', 1, '2023-10-12 07:48:48', '2023-10-12 07:48:48', 1, 1),
(16, 'Employee Self-Assessments', 1, '2023-10-12 07:48:48', '2023-10-12 07:48:48', 1, 1),
(17, 'Professional Development Plans', 1, '2023-10-12 07:48:48', '2023-10-12 07:48:48', 1, 1),
(18, 'Tax Forms (e.g., 1099)', 1, '2023-10-12 07:48:48', '2023-10-12 07:48:48', 1, 1),
(19, 'Equal Opportunity Forms', 1, '2023-10-12 07:48:48', '2023-10-12 07:48:48', 1, 1),
(20, 'Direct Deposit Authorization', 1, '2023-10-12 07:48:48', '2023-10-12 07:48:48', 1, 1),
(21, 'Sick Leave and Vacation Requests', 1, '2023-10-12 07:48:48', '2023-10-12 07:48:48', 1, 1),
(22, 'Employee Recognition Awards', 1, '2023-10-12 07:48:48', '2023-10-12 07:48:48', 1, 1),
(23, 'Pension and Retirement Plans', 1, '2023-10-12 07:48:48', '2023-10-12 07:48:48', 1, 1),
(24, 'Overtime Records', 1, '2023-10-12 07:48:48', '2023-10-12 07:48:48', 1, 1),
(25, 'Expense Reports', 1, '2023-10-12 07:48:48', '2023-10-12 07:48:48', 1, 1),
(26, 'Passport', 1, '2023-10-12 07:48:48', '2023-10-12 07:48:48', 1, 1),
(27, 'Social Security Number (SSN)', 1, '2023-10-12 07:48:48', '2023-10-12 07:48:48', 1, 1),
(28, 'Work Authorization (e.g., Work Permit)', 1, '2023-10-12 07:48:48', '2023-10-12 07:48:48', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `virtual_meetings`
--

CREATE TABLE `virtual_meetings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `duration` int(11) DEFAULT 0 COMMENT '0 means unlimited',
  `start_time` timestamp NULL DEFAULT NULL,
  `end_time` timestamp NULL DEFAULT NULL,
  `host` varchar(255) NOT NULL DEFAULT 'jitsi',
  `description` text DEFAULT NULL,
  `datetime` text DEFAULT NULL,
  `status_id` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `company_id` bigint(20) UNSIGNED NOT NULL,
  `created_by` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `branch_id` bigint(20) UNSIGNED DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `visits`
--

CREATE TABLE `visits` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `company_id` bigint(20) UNSIGNED NOT NULL,
  `date` date NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `status` enum('created','started','reached','completed','cancelled') NOT NULL DEFAULT 'created',
  `cancel_note` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `branch_id` bigint(20) UNSIGNED DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `visits`
--

INSERT INTO `visits` (`id`, `company_id`, `date`, `title`, `description`, `user_id`, `status`, `cancel_note`, `created_at`, `updated_at`, `branch_id`) VALUES
(1, 1, '2017-07-22', 'Vitae rem harum facilis laborum nostrum.', 'Dolor inventore porro sapiente consequatur. Praesentium similique veritatis vitae molestiae doloremque aut non. Et accusantium facere ullam aut officiis voluptas.', 1, 'completed', NULL, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1),
(2, 1, '1975-05-16', 'Non saepe deleniti vitae voluptas vel.', 'Necessitatibus occaecati qui velit architecto ut dignissimos. Placeat nemo nesciunt omnis non adipisci rerum. Qui facilis laudantium unde non sed quia ipsa.', 1, 'completed', NULL, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1),
(3, 1, '2014-04-04', 'Et earum sint sunt et aut itaque magnam.', 'Non at numquam sint et. Ad nesciunt fugit quis quasi laboriosam corrupti.', 1, 'started', NULL, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1),
(4, 1, '1981-10-30', 'Nihil eligendi nihil tenetur vitae magni est ut.', 'Dolorem sequi dolorem eius placeat eos. Explicabo minus laboriosam qui harum quidem. Molestias iste iure amet vero id harum.', 1, 'completed', NULL, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1),
(5, 1, '2022-07-24', 'Qui cupiditate rem molestias voluptates quos.', 'Voluptatem accusantium velit assumenda sunt cum officia libero. Consequatur est ipsam ipsam eum nesciunt eum sit. Deleniti quasi porro eum quia.', 1, 'cancelled', NULL, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1),
(6, 1, '2013-01-20', 'Ipsa quaerat velit expedita assumenda vitae consectetur repudiandae.', 'Est ut suscipit voluptatibus eaque hic praesentium. Aut autem aut reiciendis aperiam. Sunt saepe occaecati et voluptas.', 1, 'cancelled', NULL, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1);

-- --------------------------------------------------------

--
-- Table structure for table `visit_images`
--

CREATE TABLE `visit_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `imageable_id` int(10) UNSIGNED NOT NULL,
  `imageable_type` varchar(255) NOT NULL,
  `file_title` varchar(255) DEFAULT NULL,
  `file_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `branch_id` bigint(20) UNSIGNED DEFAULT 1,
  `company_id` bigint(20) UNSIGNED DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `visit_notes`
--

CREATE TABLE `visit_notes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `visit_id` bigint(20) UNSIGNED NOT NULL,
  `note` text NOT NULL,
  `status` enum('created','started','reached') NOT NULL DEFAULT 'created',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `branch_id` bigint(20) UNSIGNED DEFAULT 1,
  `company_id` bigint(20) UNSIGNED DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `visit_notes`
--

INSERT INTO `visit_notes` (`id`, `visit_id`, `note`, `status`, `created_at`, `updated_at`, `branch_id`, `company_id`) VALUES
(1, 1, 'Placeat non et quam nulla nam. Quis eos dolores qui voluptatem placeat error. Quo quo fugiat vel sint. Natus et quia assumenda asperiores.', 'created', '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1, 1),
(2, 2, 'Molestiae nesciunt ipsam ut consequatur rerum impedit. Minus est illo odit temporibus. Fugit facilis quam dolorum eum. Tempora vero accusamus reiciendis culpa perspiciatis enim sunt.', 'created', '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1, 1),
(3, 3, 'Est dolorum saepe maiores illo laborum blanditiis. Culpa consequatur rem autem alias odio. Incidunt minima nesciunt asperiores ratione. Officia magni pariatur reprehenderit cupiditate.', 'created', '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1, 1),
(4, 4, 'Ut corrupti ea totam. Nihil consequatur repudiandae ullam earum qui officiis sunt. Odio porro et distinctio.', 'created', '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1, 1),
(5, 5, 'Vel sed eum odio quia eos. Dolorum aperiam nihil ut rerum. Vel iusto hic nihil repudiandae maiores.', 'created', '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1, 1),
(6, 6, 'Cumque placeat similique sed ut dolor doloremque praesentium. Autem sed ut omnis sit culpa. Quis tenetur repudiandae sunt veniam consectetur repellat nostrum.', 'created', '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `visit_schedules`
--

CREATE TABLE `visit_schedules` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `visit_id` bigint(20) UNSIGNED NOT NULL,
  `latitude` varchar(255) DEFAULT NULL,
  `longitude` varchar(255) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `note` longtext DEFAULT NULL,
  `status` enum('created','started','reached','end') NOT NULL DEFAULT 'created',
  `started_at` timestamp NULL DEFAULT NULL,
  `reached_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `branch_id` bigint(20) UNSIGNED DEFAULT 1,
  `company_id` bigint(20) UNSIGNED DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `visit_schedules`
--

INSERT INTO `visit_schedules` (`id`, `title`, `visit_id`, `latitude`, `longitude`, `location`, `note`, `status`, `started_at`, `reached_at`, `created_at`, `updated_at`, `branch_id`, `company_id`) VALUES
(1, 'Reached Destination', 1, NULL, NULL, NULL, NULL, 'reached', NULL, NULL, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1, 1),
(2, 'End Visit', 2, NULL, NULL, NULL, NULL, 'end', NULL, NULL, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1, 1),
(3, 'Visit Rescheduled', 3, NULL, NULL, NULL, NULL, 'created', NULL, NULL, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1, 1),
(4, 'End Visit', 4, NULL, NULL, NULL, NULL, 'end', NULL, NULL, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1, 1),
(5, 'Reached Destination', 5, NULL, NULL, NULL, NULL, 'reached', NULL, NULL, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1, 1),
(6, 'Reached Destination', 6, NULL, NULL, NULL, NULL, 'reached', NULL, NULL, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `weekends`
--

CREATE TABLE `weekends` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `company_id` bigint(20) UNSIGNED NOT NULL,
  `name` enum('saturday','sunday','monday','tuesday','wednesday','thursday','friday') NOT NULL,
  `order` int(11) DEFAULT NULL,
  `is_weekend` enum('yes','no') DEFAULT 'no',
  `status_id` bigint(20) UNSIGNED NOT NULL,
  `created_by` bigint(20) UNSIGNED DEFAULT 1,
  `updated_by` bigint(20) UNSIGNED DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `branch_id` bigint(20) UNSIGNED DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `weekends`
--

INSERT INTO `weekends` (`id`, `company_id`, `name`, `order`, `is_weekend`, `status_id`, `created_by`, `updated_by`, `created_at`, `updated_at`, `branch_id`) VALUES
(1, 1, 'saturday', NULL, 'yes', 1, 1, 1, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1),
(2, 1, 'sunday', NULL, 'yes', 1, 1, 1, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1),
(3, 1, 'monday', NULL, 'no', 1, 1, 1, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1),
(4, 1, 'tuesday', NULL, 'no', 1, 1, 1, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1),
(5, 1, 'wednesday', NULL, 'no', 1, 1, 1, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1),
(6, 1, 'thursday', NULL, 'no', 1, 1, 1, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1),
(7, 1, 'friday', NULL, 'no', 1, 1, 1, '2023-10-12 07:48:59', '2023-10-12 07:48:59', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `accounts_company_id_foreign` (`company_id`),
  ADD KEY `status_id` (`status_id`),
  ADD KEY `created_by` (`created_by`),
  ADD KEY `updated_by` (`updated_by`);

--
-- Indexes for table `activity_log`
--
ALTER TABLE `activity_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subject` (`subject_type`,`subject_id`),
  ADD KEY `causer` (`causer_type`,`causer_id`),
  ADD KEY `activity_log_log_name_index` (`log_name`),
  ADD KEY `activity_log_batch_uuid_index` (`batch_uuid`);

--
-- Indexes for table `advance_salaries`
--
ALTER TABLE `advance_salaries`
  ADD PRIMARY KEY (`id`),
  ADD KEY `advance_salaries_company_id_foreign` (`company_id`),
  ADD KEY `advance_salaries_id_amount_date_index` (`id`,`amount`,`date`),
  ADD KEY `advance_type_id` (`advance_type_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `pay` (`pay`),
  ADD KEY `status_id` (`status_id`),
  ADD KEY `approver_id` (`approver_id`),
  ADD KEY `return_status` (`return_status`),
  ADD KEY `created_by` (`created_by`),
  ADD KEY `updated_by` (`updated_by`);

--
-- Indexes for table `advance_salary_logs`
--
ALTER TABLE `advance_salary_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `advance_salary_logs_id_amount_index` (`id`,`amount`),
  ADD KEY `advance_salary_id` (`advance_salary_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `created_by` (`created_by`),
  ADD KEY `updated_by` (`updated_by`);

--
-- Indexes for table `advance_types`
--
ALTER TABLE `advance_types`
  ADD PRIMARY KEY (`id`),
  ADD KEY `advance_types_company_id_foreign` (`company_id`),
  ADD KEY `advance_types_id_index` (`id`),
  ADD KEY `status_id` (`status_id`);

--
-- Indexes for table `all_contents`
--
ALTER TABLE `all_contents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `all_contents_company_id_foreign` (`company_id`),
  ADD KEY `all_contents_user_id_foreign` (`user_id`),
  ADD KEY `all_contents_created_by_foreign` (`created_by`),
  ADD KEY `all_contents_updated_by_foreign` (`updated_by`),
  ADD KEY `all_contents_type_title_slug_index` (`type`,`title`,`slug`),
  ADD KEY `status_id` (`status_id`);

--
-- Indexes for table `api_setups`
--
ALTER TABLE `api_setups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `api_setups_company_id_foreign` (`company_id`),
  ADD KEY `status_id` (`status_id`);

--
-- Indexes for table `appoinments`
--
ALTER TABLE `appoinments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `appoinments_company_id_foreign` (`company_id`),
  ADD KEY `appoinments_created_by_foreign` (`created_by`),
  ADD KEY `appoinments_appoinment_with_foreign` (`appoinment_with`),
  ADD KEY `appoinments_attachment_file_id_foreign` (`attachment_file_id`),
  ADD KEY `status_id` (`status_id`);

--
-- Indexes for table `appoinment_participants`
--
ALTER TABLE `appoinment_participants`
  ADD PRIMARY KEY (`id`),
  ADD KEY `appoinment_participants_participant_id_foreign` (`participant_id`),
  ADD KEY `appoinment_participants_appoinment_id_foreign` (`appoinment_id`);

--
-- Indexes for table `appraisals`
--
ALTER TABLE `appraisals`
  ADD PRIMARY KEY (`id`),
  ADD KEY `appraisals_company_id_foreign` (`company_id`),
  ADD KEY `appraisals_user_id_foreign` (`user_id`),
  ADD KEY `appraisals_added_by_foreign` (`added_by`);

--
-- Indexes for table `appreciates`
--
ALTER TABLE `appreciates`
  ADD PRIMARY KEY (`id`),
  ADD KEY `appreciates_user_id_foreign` (`user_id`),
  ADD KEY `appreciates_appreciate_by_foreign` (`appreciate_by`);

--
-- Indexes for table `app_screens`
--
ALTER TABLE `app_screens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `app_screens_status_id_foreign` (`status_id`);

--
-- Indexes for table `assign_leaves`
--
ALTER TABLE `assign_leaves`
  ADD PRIMARY KEY (`id`),
  ADD KEY `assign_leaves_type_id_foreign` (`type_id`),
  ADD KEY `assign_leaves_status_id_foreign` (`status_id`),
  ADD KEY `assign_leaves_company_id_type_id_status_id_index` (`company_id`,`type_id`,`status_id`);

--
-- Indexes for table `attendances`
--
ALTER TABLE `attendances`
  ADD PRIMARY KEY (`id`),
  ADD KEY `attendances_company_id_foreign` (`company_id`),
  ADD KEY `attendances_user_id_foreign` (`user_id`),
  ADD KEY `attendances_status_id_foreign` (`status_id`),
  ADD KEY `attendances_face_image_foreign` (`face_image`),
  ADD KEY `attendances_in_status_approve_by_foreign` (`in_status_approve_by`),
  ADD KEY `attendances_out_status_approve_by_foreign` (`out_status_approve_by`);

--
-- Indexes for table `author_infos`
--
ALTER TABLE `author_infos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `author_infos_authorable_type_authorable_id_index` (`authorable_type`,`authorable_id`),
  ADD KEY `author_infos_created_by_foreign` (`created_by`),
  ADD KEY `author_infos_updated_by_foreign` (`updated_by`),
  ADD KEY `author_infos_approved_by_foreign` (`approved_by`),
  ADD KEY `author_infos_rejected_by_foreign` (`rejected_by`),
  ADD KEY `author_infos_cancelled_by_foreign` (`cancelled_by`),
  ADD KEY `author_infos_published_by_foreign` (`published_by`),
  ADD KEY `author_infos_unpublished_by_foreign` (`unpublished_by`),
  ADD KEY `author_infos_deleted_by_foreign` (`deleted_by`),
  ADD KEY `author_infos_archived_by_foreign` (`archived_by`),
  ADD KEY `author_infos_restored_by_foreign` (`restored_by`),
  ADD KEY `author_infos_referred_by_foreign` (`referred_by`);

--
-- Indexes for table `awards`
--
ALTER TABLE `awards`
  ADD PRIMARY KEY (`id`),
  ADD KEY `awards_company_id_foreign` (`company_id`),
  ADD KEY `awards_user_id_foreign` (`user_id`),
  ADD KEY `awards_created_by_foreign` (`created_by`),
  ADD KEY `awards_award_type_id_foreign` (`award_type_id`),
  ADD KEY `awards_attachment_foreign` (`attachment`),
  ADD KEY `awards_goal_id_foreign` (`goal_id`),
  ADD KEY `awards_id_award_type_id_company_id_status_id_user_id_index` (`id`,`award_type_id`,`company_id`,`status_id`,`user_id`),
  ADD KEY `status_id` (`status_id`);

--
-- Indexes for table `award_types`
--
ALTER TABLE `award_types`
  ADD PRIMARY KEY (`id`),
  ADD KEY `award_types_company_id_foreign` (`company_id`),
  ADD KEY `award_types_id_index` (`id`),
  ADD KEY `status_id` (`status_id`);

--
-- Indexes for table `bank_accounts`
--
ALTER TABLE `bank_accounts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `bank_accounts_account_number_unique` (`account_number`),
  ADD KEY `bank_accounts_user_id_index` (`user_id`),
  ADD KEY `bank_accounts_status_id_index` (`status_id`),
  ADD KEY `bank_accounts_author_info_id_index` (`author_info_id`);

--
-- Indexes for table `branches`
--
ALTER TABLE `branches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `categories_name_type_serial_index` (`name`,`type`,`serial`),
  ADD KEY `categories_status_id_index` (`status_id`),
  ADD KEY `categories_author_info_id_index` (`author_info_id`);

--
-- Indexes for table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `clients_email_unique` (`email`),
  ADD KEY `clients_company_id_foreign` (`company_id`),
  ADD KEY `status_id` (`status_id`);

--
-- Indexes for table `commissions`
--
ALTER TABLE `commissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `commissions_company_id_foreign` (`company_id`),
  ADD KEY `commissions_id_index` (`id`),
  ADD KEY `status_id` (`status_id`);

--
-- Indexes for table `companies`
--
ALTER TABLE `companies`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `companies_email_unique` (`email`),
  ADD UNIQUE KEY `companies_phone_unique` (`phone`),
  ADD KEY `companies_country_id_foreign` (`country_id`),
  ADD KEY `trade_licence_id` (`trade_licence_id`),
  ADD KEY `status_id` (`status_id`);

--
-- Indexes for table `company_configs`
--
ALTER TABLE `company_configs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `company_configs_company_id_foreign` (`company_id`);

--
-- Indexes for table `competences`
--
ALTER TABLE `competences`
  ADD PRIMARY KEY (`id`),
  ADD KEY `competences_competence_type_id_foreign` (`competence_type_id`),
  ADD KEY `competences_company_id_foreign` (`company_id`),
  ADD KEY `competences_id_status_id_company_id_index` (`id`,`status_id`,`company_id`),
  ADD KEY `status_id` (`status_id`);

--
-- Indexes for table `competence_types`
--
ALTER TABLE `competence_types`
  ADD PRIMARY KEY (`id`),
  ADD KEY `competence_types_company_id_foreign` (`company_id`),
  ADD KEY `competence_types_id_status_id_company_id_index` (`id`,`status_id`,`company_id`),
  ADD KEY `status_id` (`status_id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `conversations`
--
ALTER TABLE `conversations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `conversations_sender_id_foreign` (`sender_id`),
  ADD KEY `conversations_receiver_id_foreign` (`receiver_id`),
  ADD KEY `conversations_image_id_foreign` (`image_id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `countries_country_code_unique` (`country_code`),
  ADD UNIQUE KEY `countries_name_unique` (`name`);

--
-- Indexes for table `currencies`
--
ALTER TABLE `currencies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `daily_leaves`
--
ALTER TABLE `daily_leaves`
  ADD PRIMARY KEY (`id`),
  ADD KEY `daily_leaves_company_id_foreign` (`company_id`),
  ADD KEY `daily_leaves_user_id_foreign` (`user_id`),
  ADD KEY `daily_leaves_approved_by_tl_foreign` (`approved_by_tl`),
  ADD KEY `daily_leaves_approved_by_hr_foreign` (`approved_by_hr`),
  ADD KEY `daily_leaves_rejected_by_tl_foreign` (`rejected_by_tl`),
  ADD KEY `daily_leaves_rejected_by_hr_foreign` (`rejected_by_hr`),
  ADD KEY `status_id` (`status_id`);

--
-- Indexes for table `database_backups`
--
ALTER TABLE `database_backups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `date_formats`
--
ALTER TABLE `date_formats`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `departments_company_id_foreign` (`company_id`),
  ADD KEY `departments_status_id_foreign` (`status_id`);

--
-- Indexes for table `deposits`
--
ALTER TABLE `deposits`
  ADD PRIMARY KEY (`id`),
  ADD KEY `deposits_income_expense_category_id_foreign` (`income_expense_category_id`),
  ADD KEY `deposits_company_id_foreign` (`company_id`),
  ADD KEY `deposits_attachment_foreign` (`attachment`),
  ADD KEY `deposits_id_amount_date_index` (`id`,`amount`,`date`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `payment_method_id` (`payment_method_id`),
  ADD KEY `transaction_id` (`transaction_id`),
  ADD KEY `pay` (`pay`),
  ADD KEY `status_id` (`status_id`),
  ADD KEY `approver_id` (`approver_id`),
  ADD KEY `created_by` (`created_by`),
  ADD KEY `updated_by` (`updated_by`);

--
-- Indexes for table `designations`
--
ALTER TABLE `designations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `designations_company_id_foreign` (`company_id`),
  ADD KEY `designations_status_id_foreign` (`status_id`);

--
-- Indexes for table `discussions`
--
ALTER TABLE `discussions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `discussions_company_id_foreign` (`company_id`),
  ADD KEY `discussions_project_id_foreign` (`project_id`),
  ADD KEY `discussions_user_id_foreign` (`user_id`),
  ADD KEY `discussions_id_project_id_company_id_status_id_user_id_index` (`id`,`project_id`,`company_id`,`status_id`,`user_id`),
  ADD KEY `show_to_customer` (`show_to_customer`),
  ADD KEY `status_id` (`status_id`);

--
-- Indexes for table `discussion_comments`
--
ALTER TABLE `discussion_comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `discussion_comments_company_id_foreign` (`company_id`),
  ADD KEY `discussion_comments_discussion_id_foreign` (`discussion_id`),
  ADD KEY `discussion_comments_user_id_foreign` (`user_id`),
  ADD KEY `discussion_comments_attachment_foreign` (`attachment`),
  ADD KEY `discussion_comments_id_discussion_id_company_id_user_id_index` (`id`,`discussion_id`,`company_id`,`user_id`);

--
-- Indexes for table `discussion_likes`
--
ALTER TABLE `discussion_likes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `discussion_likes_discussion_id_foreign` (`discussion_id`),
  ADD KEY `discussion_likes_user_id_foreign` (`user_id`);

--
-- Indexes for table `domains`
--
ALTER TABLE `domains`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `domains_domain_unique` (`domain`),
  ADD KEY `domains_tenant_id_foreign` (`tenant_id`);

--
-- Indexes for table `duty_schedules`
--
ALTER TABLE `duty_schedules`
  ADD PRIMARY KEY (`id`),
  ADD KEY `duty_schedules_company_id_foreign` (`company_id`),
  ADD KEY `duty_schedules_shift_id_foreign` (`shift_id`),
  ADD KEY `duty_schedules_status_id_foreign` (`status_id`),
  ADD KEY `duty_schedules_id_index` (`id`);

--
-- Indexes for table `employee_breaks`
--
ALTER TABLE `employee_breaks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `employee_breaks_company_id_foreign` (`company_id`),
  ADD KEY `employee_breaks_user_id_foreign` (`user_id`);

--
-- Indexes for table `employee_tasks`
--
ALTER TABLE `employee_tasks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `employee_tasks_assigned_id_foreign` (`assigned_id`),
  ADD KEY `employee_tasks_created_by_foreign` (`created_by`),
  ADD KEY `employee_tasks_attachment_file_id_foreign` (`attachment_file_id`),
  ADD KEY `status_id` (`status_id`);

--
-- Indexes for table `expenses`
--
ALTER TABLE `expenses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `expenses_income_expense_category_id_foreign` (`income_expense_category_id`),
  ADD KEY `expenses_company_id_foreign` (`company_id`),
  ADD KEY `expenses_attachment_foreign` (`attachment`),
  ADD KEY `expenses_id_amount_date_index` (`id`,`amount`,`date`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `pay` (`pay`),
  ADD KEY `status_id` (`status_id`),
  ADD KEY `transaction_id` (`transaction_id`),
  ADD KEY `payment_method_id` (`payment_method_id`),
  ADD KEY `approver_id` (`approver_id`),
  ADD KEY `created_by` (`created_by`),
  ADD KEY `updated_by` (`updated_by`);

--
-- Indexes for table `expense_claims`
--
ALTER TABLE `expense_claims`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `expense_claims_invoice_number_unique` (`invoice_number`),
  ADD KEY `expense_claims_company_id_foreign` (`company_id`),
  ADD KEY `expense_claims_user_id_foreign` (`user_id`),
  ADD KEY `expense_claims_attachment_file_id_foreign` (`attachment_file_id`),
  ADD KEY `status_id` (`status_id`);

--
-- Indexes for table `expense_claim_details`
--
ALTER TABLE `expense_claim_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `expense_claim_details_company_id_foreign` (`company_id`),
  ADD KEY `expense_claim_details_user_id_foreign` (`user_id`),
  ADD KEY `expense_claim_details_hrm_expense_id_foreign` (`hrm_expense_id`),
  ADD KEY `expense_claim_details_expense_claim_id_foreign` (`expense_claim_id`);

--
-- Indexes for table `expire_notifications`
--
ALTER TABLE `expire_notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `features`
--
ALTER TABLE `features`
  ADD PRIMARY KEY (`id`),
  ADD KEY `features_attachment_file_id_foreign` (`attachment_file_id`),
  ADD KEY `status_id` (`status_id`);

--
-- Indexes for table `front_teams`
--
ALTER TABLE `front_teams`
  ADD PRIMARY KEY (`id`),
  ADD KEY `front_teams_attachment_foreign` (`attachment`),
  ADD KEY `front_teams_user_id_foreign` (`user_id`),
  ADD KEY `status_id` (`status_id`);

--
-- Indexes for table `goals`
--
ALTER TABLE `goals`
  ADD PRIMARY KEY (`id`),
  ADD KEY `goals_company_id_foreign` (`company_id`),
  ADD KEY `goals_goal_type_id_foreign` (`goal_type_id`),
  ADD KEY `status_id` (`status_id`),
  ADD KEY `created_by` (`created_by`);

--
-- Indexes for table `goal_types`
--
ALTER TABLE `goal_types`
  ADD PRIMARY KEY (`id`),
  ADD KEY `goal_types_company_id_foreign` (`company_id`),
  ADD KEY `goal_types_id_status_id_company_id_index` (`id`,`status_id`,`company_id`),
  ADD KEY `status_id` (`status_id`);

--
-- Indexes for table `holidays`
--
ALTER TABLE `holidays`
  ADD PRIMARY KEY (`id`),
  ADD KEY `holidays_company_id_foreign` (`company_id`),
  ADD KEY `holidays_attachment_id_foreign` (`attachment_id`),
  ADD KEY `holidays_status_id_foreign` (`status_id`),
  ADD KEY `holidays_id_index` (`id`);

--
-- Indexes for table `home_pages`
--
ALTER TABLE `home_pages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `status_id` (`status_id`),
  ADD KEY `created_by` (`created_by`),
  ADD KEY `updated_by` (`updated_by`);

--
-- Indexes for table `hrm_expenses`
--
ALTER TABLE `hrm_expenses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `hrm_expenses_company_id_foreign` (`company_id`),
  ADD KEY `hrm_expenses_user_id_foreign` (`user_id`),
  ADD KEY `hrm_expenses_income_expense_category_id_foreign` (`income_expense_category_id`),
  ADD KEY `hrm_expenses_attachment_file_id_foreign` (`attachment_file_id`),
  ADD KEY `status_id` (`status_id`),
  ADD KEY `claimed_status_id` (`is_claimed_status_id`),
  ADD KEY `claimed_approved_status_id` (`claimed_approved_status_id`);

--
-- Indexes for table `hrm_languages`
--
ALTER TABLE `hrm_languages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `status_id` (`status_id`);

--
-- Indexes for table `income_expense_categories`
--
ALTER TABLE `income_expense_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `income_expense_categories_company_id_foreign` (`company_id`),
  ADD KEY `income_expense_categories_attachment_file_id_foreign` (`attachment_file_id`),
  ADD KEY `status_id` (`status_id`);

--
-- Indexes for table `indicators`
--
ALTER TABLE `indicators`
  ADD PRIMARY KEY (`id`),
  ADD KEY `indicators_company_id_foreign` (`company_id`),
  ADD KEY `indicators_department_id_foreign` (`department_id`),
  ADD KEY `indicators_shift_id_foreign` (`shift_id`),
  ADD KEY `indicators_designation_id_foreign` (`designation_id`),
  ADD KEY `indicators_added_by_foreign` (`added_by`);

--
-- Indexes for table `ip_setups`
--
ALTER TABLE `ip_setups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ip_setups_status_id_foreign` (`status_id`),
  ADD KEY `ip_setups_company_id_foreign` (`company_id`);

--
-- Indexes for table `jitsi_meetings`
--
ALTER TABLE `jitsi_meetings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `late_in_out_reasons`
--
ALTER TABLE `late_in_out_reasons`
  ADD PRIMARY KEY (`id`),
  ADD KEY `late_in_out_reasons_company_id_foreign` (`company_id`),
  ADD KEY `late_in_out_reasons_attendance_id_foreign` (`attendance_id`);

--
-- Indexes for table `leave_requests`
--
ALTER TABLE `leave_requests`
  ADD PRIMARY KEY (`id`),
  ADD KEY `leave_requests_company_id_foreign` (`company_id`),
  ADD KEY `leave_requests_assign_leave_id_foreign` (`assign_leave_id`),
  ADD KEY `leave_requests_user_id_foreign` (`user_id`),
  ADD KEY `leave_requests_substitute_id_foreign` (`substitute_id`),
  ADD KEY `leave_requests_attachment_file_id_foreign` (`attachment_file_id`),
  ADD KEY `leave_requests_status_id_foreign` (`status_id`),
  ADD KEY `leave_requests_author_info_id_foreign` (`author_info_id`);

--
-- Indexes for table `leave_settings`
--
ALTER TABLE `leave_settings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `leave_settings_company_id_foreign` (`company_id`);

--
-- Indexes for table `leave_types`
--
ALTER TABLE `leave_types`
  ADD PRIMARY KEY (`id`),
  ADD KEY `leave_types_company_id_foreign` (`company_id`),
  ADD KEY `leave_types_status_id_foreign` (`status_id`),
  ADD KEY `leave_types_name_status_id_index` (`name`,`status_id`);

--
-- Indexes for table `location_binds`
--
ALTER TABLE `location_binds`
  ADD PRIMARY KEY (`id`),
  ADD KEY `location_binds_user_id_foreign` (`user_id`),
  ADD KEY `location_binds_company_id_foreign` (`company_id`),
  ADD KEY `status_id` (`status_id`);

--
-- Indexes for table `location_logs`
--
ALTER TABLE `location_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `location_logs_user_id_foreign` (`user_id`),
  ADD KEY `location_logs_company_id_foreign` (`company_id`),
  ADD KEY `location_logs_id_user_id_company_id_date_index` (`id`,`user_id`,`company_id`,`date`);

--
-- Indexes for table `meetings`
--
ALTER TABLE `meetings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `meetings_company_id_foreign` (`company_id`),
  ADD KEY `meetings_user_id_foreign` (`user_id`),
  ADD KEY `meetings_attachment_file_id_foreign` (`attachment_file_id`),
  ADD KEY `status_id` (`status_id`);

--
-- Indexes for table `meeting_members`
--
ALTER TABLE `meeting_members`
  ADD PRIMARY KEY (`id`),
  ADD KEY `status_id` (`status_id`);

--
-- Indexes for table `meeting_participants`
--
ALTER TABLE `meeting_participants`
  ADD PRIMARY KEY (`id`),
  ADD KEY `meeting_participants_participant_id_foreign` (`participant_id`),
  ADD KEY `meeting_participants_meeting_id_foreign` (`meeting_id`);

--
-- Indexes for table `meeting_setups`
--
ALTER TABLE `meeting_setups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `meeting_setups_company_id_foreign` (`company_id`),
  ADD KEY `status_id` (`status_id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD KEY `status_id` (`status_id`);

--
-- Indexes for table `meta_information`
--
ALTER TABLE `meta_information`
  ADD PRIMARY KEY (`id`),
  ADD KEY `meta_information_created_by_foreign` (`created_by`),
  ADD KEY `meta_information_updated_by_foreign` (`updated_by`),
  ADD KEY `meta_information_id_type_index` (`id`,`type`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `module_services`
--
ALTER TABLE `module_services`
  ADD PRIMARY KEY (`id`),
  ADD KEY `module_services_institution_id_foreign` (`institution_id`),
  ADD KEY `module_services_package_id_foreign` (`package_id`);

--
-- Indexes for table `module_service_details`
--
ALTER TABLE `module_service_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `module_service_details_module_service_id_foreign` (`module_service_id`),
  ADD KEY `module_service_details_contract_person_id_foreign` (`contract_person_id`),
  ADD KEY `module_service_details_machine_id_foreign` (`machine_id`);

--
-- Indexes for table `notes`
--
ALTER TABLE `notes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notes_company_id_foreign` (`company_id`),
  ADD KEY `notes_project_id_foreign` (`project_id`),
  ADD KEY `notes_user_id_foreign` (`user_id`),
  ADD KEY `notes_id_project_id_company_id_status_id_user_id_index` (`id`,`project_id`,`company_id`,`status_id`,`user_id`),
  ADD KEY `show_to_customer` (`show_to_customer`),
  ADD KEY `status_id` (`status_id`);

--
-- Indexes for table `notices`
--
ALTER TABLE `notices`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notices_created_by_foreign` (`created_by`),
  ADD KEY `notices_company_id_foreign` (`company_id`),
  ADD KEY `notices_department_id_foreign` (`department_id`),
  ADD KEY `notices_attachment_file_id_foreign` (`attachment_file_id`),
  ADD KEY `notices_status_id_foreign` (`status_id`);

--
-- Indexes for table `notice_departments`
--
ALTER TABLE `notice_departments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notice_view_logs`
--
ALTER TABLE `notice_view_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notice_view_logs_company_id_foreign` (`company_id`),
  ADD KEY `notice_view_logs_user_id_foreign` (`user_id`),
  ADD KEY `notice_view_logs_notice_id_foreign` (`notice_id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`);

--
-- Indexes for table `notifications_old`
--
ALTER TABLE `notifications_old`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_old_sender_id_foreign` (`sender_id`),
  ADD KEY `notifications_old_receiver_id_foreign` (`receiver_id`),
  ADD KEY `notifications_old_image_id_foreign` (`image_id`);

--
-- Indexes for table `notification_types`
--
ALTER TABLE `notification_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `notification_types_type_unique` (`type`),
  ADD KEY `notification_types_icon_foreign` (`icon`),
  ADD KEY `status_id` (`status_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `payment_histories`
--
ALTER TABLE `payment_histories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `payment_histories_code_unique` (`code`),
  ADD KEY `payment_histories_company_id_foreign` (`company_id`),
  ADD KEY `payment_histories_user_id_foreign` (`user_id`),
  ADD KEY `payment_histories_expense_claim_id_foreign` (`expense_claim_id`),
  ADD KEY `payment_histories_attachment_file_id_foreign` (`attachment_file_id`),
  ADD KEY `status_id` (`payment_status_id`);

--
-- Indexes for table `payment_history_details`
--
ALTER TABLE `payment_history_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `payment_history_details_company_id_foreign` (`company_id`),
  ADD KEY `payment_history_details_user_id_foreign` (`user_id`),
  ADD KEY `payment_history_details_payment_history_id_foreign` (`payment_history_id`),
  ADD KEY `payment_history_details_payment_method_id_foreign` (`payment_method_id`),
  ADD KEY `payment_history_details_paid_by_id_foreign` (`paid_by_id`),
  ADD KEY `payment_status_id` (`payment_status_id`);

--
-- Indexes for table `payment_history_logs`
--
ALTER TABLE `payment_history_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `payment_history_logs_user_id_foreign` (`user_id`),
  ADD KEY `payment_history_logs_company_id_foreign` (`company_id`),
  ADD KEY `payment_history_logs_payment_history_id_foreign` (`payment_history_id`),
  ADD KEY `payment_history_logs_expense_claim_id_foreign` (`expense_claim_id`),
  ADD KEY `payment_history_logs_paid_by_id_foreign` (`paid_by_id`);

--
-- Indexes for table `payment_methods`
--
ALTER TABLE `payment_methods`
  ADD PRIMARY KEY (`id`),
  ADD KEY `payment_methods_company_id_foreign` (`company_id`),
  ADD KEY `payment_methods_attachment_file_id_foreign` (`attachment_file_id`),
  ADD KEY `status_id` (`status_id`);

--
-- Indexes for table `payment_types`
--
ALTER TABLE `payment_types`
  ADD PRIMARY KEY (`id`),
  ADD KEY `payment_types_status_id_index` (`status_id`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `portfolios`
--
ALTER TABLE `portfolios`
  ADD PRIMARY KEY (`id`),
  ADD KEY `portfolios_attachment_foreign` (`attachment`),
  ADD KEY `portfolios_user_id_foreign` (`user_id`),
  ADD KEY `status_id` (`status_id`);

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`),
  ADD KEY `projects_client_id_foreign` (`client_id`),
  ADD KEY `projects_company_id_foreign` (`company_id`),
  ADD KEY `projects_goal_id_foreign` (`goal_id`),
  ADD KEY `projects_id_client_id_company_id_status_id_index` (`id`,`client_id`,`company_id`,`status_id`),
  ADD KEY `status_id` (`status_id`),
  ADD KEY `priority` (`priority`),
  ADD KEY `payment` (`payment`),
  ADD KEY `created_by` (`created_by`);

--
-- Indexes for table `project_activities`
--
ALTER TABLE `project_activities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `project_activities_company_id_foreign` (`company_id`),
  ADD KEY `project_activities_project_id_foreign` (`project_id`),
  ADD KEY `project_activities_user_id_foreign` (`user_id`),
  ADD KEY `project_activities_id_project_id_company_id_user_id_index` (`id`,`project_id`,`company_id`,`user_id`);

--
-- Indexes for table `project_files`
--
ALTER TABLE `project_files`
  ADD PRIMARY KEY (`id`),
  ADD KEY `project_files_company_id_foreign` (`company_id`),
  ADD KEY `project_files_project_id_foreign` (`project_id`),
  ADD KEY `project_files_user_id_foreign` (`user_id`),
  ADD KEY `project_files_attachment_foreign` (`attachment`),
  ADD KEY `project_files_id_project_id_company_id_status_id_user_id_index` (`id`,`project_id`,`company_id`,`status_id`,`user_id`),
  ADD KEY `show_to_customer` (`show_to_customer`),
  ADD KEY `status_id` (`status_id`);

--
-- Indexes for table `project_file_comments`
--
ALTER TABLE `project_file_comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `project_file_comments_company_id_foreign` (`company_id`),
  ADD KEY `project_file_comments_project_file_id_foreign` (`project_file_id`),
  ADD KEY `project_file_comments_user_id_foreign` (`user_id`),
  ADD KEY `project_file_comments_attachment_foreign` (`attachment`),
  ADD KEY `project_file_comments_id_project_file_id_user_id_index` (`id`,`project_file_id`,`user_id`);

--
-- Indexes for table `project_membars`
--
ALTER TABLE `project_membars`
  ADD PRIMARY KEY (`id`),
  ADD KEY `project_membars_company_id_foreign` (`company_id`),
  ADD KEY `project_membars_project_id_foreign` (`project_id`),
  ADD KEY `project_membars_user_id_foreign` (`user_id`),
  ADD KEY `project_membars_added_by_foreign` (`added_by`),
  ADD KEY `project_membars_id_project_id_company_id_status_id_user_id_index` (`id`,`project_id`,`company_id`,`status_id`,`user_id`),
  ADD KEY `status_id` (`status_id`);

--
-- Indexes for table `project_payments`
--
ALTER TABLE `project_payments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `project_payments_project_id_foreign` (`project_id`),
  ADD KEY `project_payments_company_id_foreign` (`company_id`),
  ADD KEY `project_payments_id_amount_index` (`id`,`amount`),
  ADD KEY `transaction_id` (`transaction_id`),
  ADD KEY `payment_method_id` (`payment_method_id`),
  ADD KEY `paid_by` (`paid_by`),
  ADD KEY `created_by` (`created_by`),
  ADD KEY `updated_by` (`updated_by`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `roles_company_id_foreign` (`company_id`),
  ADD KEY `roles_status_id_foreign` (`status_id`);

--
-- Indexes for table `role_users`
--
ALTER TABLE `role_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role_users_user_id_foreign` (`user_id`),
  ADD KEY `role_users_role_id_foreign` (`role_id`);

--
-- Indexes for table `salary_generates`
--
ALTER TABLE `salary_generates`
  ADD PRIMARY KEY (`id`),
  ADD KEY `salary_generates_company_id_foreign` (`company_id`),
  ADD KEY `salary_generates_id_amount_date_index` (`id`,`amount`,`date`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `status_id` (`status_id`),
  ADD KEY `created_by` (`created_by`),
  ADD KEY `updated_by` (`updated_by`);

--
-- Indexes for table `salary_payment_logs`
--
ALTER TABLE `salary_payment_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `salary_payment_logs_salary_generate_id_foreign` (`salary_generate_id`),
  ADD KEY `salary_payment_logs_company_id_foreign` (`company_id`),
  ADD KEY `salary_payment_logs_id_amount_index` (`id`,`amount`),
  ADD KEY `transaction_id` (`transaction_id`),
  ADD KEY `payment_method_id` (`payment_method_id`),
  ADD KEY `paid_by` (`paid_by`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `created_by` (`created_by`),
  ADD KEY `updated_by` (`updated_by`);

--
-- Indexes for table `salary_setups`
--
ALTER TABLE `salary_setups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `salary_setups_company_id_foreign` (`company_id`),
  ADD KEY `salary_setups_id_gross_salary_index` (`id`,`gross_salary`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `status_id` (`status_id`),
  ADD KEY `created_by` (`created_by`),
  ADD KEY `updated_by` (`updated_by`);

--
-- Indexes for table `salary_setup_details`
--
ALTER TABLE `salary_setup_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `salary_setup_details_company_id_foreign` (`company_id`),
  ADD KEY `salary_setup_details_id_amount_index` (`id`,`amount`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `salary_setup_id` (`salary_setup_id`),
  ADD KEY `commission_id` (`commission_id`),
  ADD KEY `status_id` (`status_id`),
  ADD KEY `created_by` (`created_by`),
  ADD KEY `updated_by` (`updated_by`);

--
-- Indexes for table `salary_sheet_reports`
--
ALTER TABLE `salary_sheet_reports`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`),
  ADD KEY `services_user_id_foreign` (`user_id`),
  ADD KEY `services_attachment_foreign` (`attachment`),
  ADD KEY `status_id` (`status_id`);

--
-- Indexes for table `service_brands`
--
ALTER TABLE `service_brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `service_institutions`
--
ALTER TABLE `service_institutions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `service_institutions_slug_unique` (`slug`),
  ADD KEY `service_institutions_name_index` (`name`);

--
-- Indexes for table `service_machines`
--
ALTER TABLE `service_machines`
  ADD PRIMARY KEY (`id`),
  ADD KEY `service_machines_brand_id_foreign` (`brand_id`),
  ADD KEY `service_machines_model_id_foreign` (`model_id`);

--
-- Indexes for table `service_models`
--
ALTER TABLE `service_models`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `service_packages`
--
ALTER TABLE `service_packages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `service_package_details`
--
ALTER TABLE `service_package_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `service_package_details_machine_id_foreign` (`machine_id`),
  ADD KEY `service_package_details_brand_id_foreign` (`brand_id`),
  ADD KEY `service_package_details_model_id_foreign` (`model_id`),
  ADD KEY `service_package_details_package_id_foreign` (`package_id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `settings_company_id_foreign` (`company_id`),
  ADD KEY `settings_name_value_context_index` (`name`,`value`,`context`);

--
-- Indexes for table `shifts`
--
ALTER TABLE `shifts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `shifts_company_id_foreign` (`company_id`),
  ADD KEY `shifts_status_id_foreign` (`status_id`);

--
-- Indexes for table `sms_logs`
--
ALTER TABLE `sms_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `social_identities`
--
ALTER TABLE `social_identities`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `social_identities_provider_id_unique` (`provider_id`),
  ADD KEY `social_identities_user_id_foreign` (`user_id`);

--
-- Indexes for table `statuses`
--
ALTER TABLE `statuses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `statuses_name_class_index` (`name`,`class`),
  ADD KEY `statuses_name_index` (`name`),
  ADD KEY `statuses_class_index` (`class`);

--
-- Indexes for table `subscriptions`
--
ALTER TABLE `subscriptions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `subscriptions_stripe_id_unique` (`stripe_id`),
  ADD KEY `subscriptions_user_id_stripe_status_index` (`user_id`,`stripe_status`);

--
-- Indexes for table `subscription_items`
--
ALTER TABLE `subscription_items`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `subscription_items_subscription_id_stripe_price_unique` (`subscription_id`,`stripe_price`),
  ADD UNIQUE KEY `subscription_items_stripe_id_unique` (`stripe_id`);

--
-- Indexes for table `subscription_plans`
--
ALTER TABLE `subscription_plans`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `subscription_plans_identifier_unique` (`identifier`),
  ADD UNIQUE KEY `subscription_plans_stripe_id_unique` (`stripe_id`),
  ADD KEY `status_id` (`status_id`);

--
-- Indexes for table `support_tickets`
--
ALTER TABLE `support_tickets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `support_tickets_company_id_foreign` (`company_id`),
  ADD KEY `support_tickets_user_id_foreign` (`user_id`),
  ADD KEY `support_tickets_assigned_id_foreign` (`assigned_id`),
  ADD KEY `support_tickets_attachment_file_id_foreign` (`attachment_file_id`),
  ADD KEY `support_tickets_status_id_foreign` (`status_id`),
  ADD KEY `support_tickets_type_id_foreign` (`type_id`),
  ADD KEY `support_tickets_priority_id_foreign` (`priority_id`);

--
-- Indexes for table `tasks`
--
ALTER TABLE `tasks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tasks_company_id_foreign` (`company_id`),
  ADD KEY `tasks_goal_id_foreign` (`goal_id`),
  ADD KEY `tasks_id_company_id_status_id_index` (`id`,`company_id`,`status_id`),
  ADD KEY `status_id` (`status_id`),
  ADD KEY `priority` (`priority`),
  ADD KEY `created_by` (`created_by`),
  ADD KEY `project_id` (`project_id`);

--
-- Indexes for table `task_activities`
--
ALTER TABLE `task_activities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `task_activities_company_id_foreign` (`company_id`),
  ADD KEY `task_activities_task_id_foreign` (`task_id`),
  ADD KEY `task_activities_user_id_foreign` (`user_id`),
  ADD KEY `task_activities_id_task_id_company_id_user_id_index` (`id`,`task_id`,`company_id`,`user_id`);

--
-- Indexes for table `task_discussions`
--
ALTER TABLE `task_discussions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `task_discussions_company_id_foreign` (`company_id`),
  ADD KEY `task_discussions_task_id_foreign` (`task_id`),
  ADD KEY `task_discussions_user_id_foreign` (`user_id`),
  ADD KEY `task_discussions_file_id_foreign` (`file_id`),
  ADD KEY `task_discussions_id_task_id_company_id_status_id_user_id_index` (`id`,`task_id`,`company_id`,`status_id`,`user_id`),
  ADD KEY `show_to_customer` (`show_to_customer`),
  ADD KEY `status_id` (`status_id`);

--
-- Indexes for table `task_discussion_comments`
--
ALTER TABLE `task_discussion_comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `task_discussion_comments_company_id_foreign` (`company_id`),
  ADD KEY `task_discussion_comments_task_discussion_id_foreign` (`task_discussion_id`),
  ADD KEY `task_discussion_comments_user_id_foreign` (`user_id`),
  ADD KEY `task_discussion_comments_attachment_foreign` (`attachment`),
  ADD KEY `task_discussion_comments_id_task_discussion_id_company_id_index` (`id`,`task_discussion_id`,`company_id`);

--
-- Indexes for table `task_files`
--
ALTER TABLE `task_files`
  ADD PRIMARY KEY (`id`),
  ADD KEY `task_files_company_id_foreign` (`company_id`),
  ADD KEY `task_files_task_id_foreign` (`task_id`),
  ADD KEY `task_files_user_id_foreign` (`user_id`),
  ADD KEY `task_files_attachment_foreign` (`attachment`),
  ADD KEY `task_files_id_task_id_company_id_status_id_user_id_index` (`id`,`task_id`,`company_id`,`status_id`,`user_id`),
  ADD KEY `show_to_customer` (`show_to_customer`),
  ADD KEY `status_id` (`status_id`);

--
-- Indexes for table `task_file_comments`
--
ALTER TABLE `task_file_comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `task_file_comments_company_id_foreign` (`company_id`),
  ADD KEY `task_file_comments_task_file_id_foreign` (`task_file_id`),
  ADD KEY `task_file_comments_user_id_foreign` (`user_id`),
  ADD KEY `task_file_comments_attachment_foreign` (`attachment`),
  ADD KEY `task_file_comments_id_task_file_id_user_id_index` (`id`,`task_file_id`,`user_id`);

--
-- Indexes for table `task_followers`
--
ALTER TABLE `task_followers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `task_followers_company_id_foreign` (`company_id`),
  ADD KEY `task_followers_task_id_foreign` (`task_id`),
  ADD KEY `task_followers_user_id_foreign` (`user_id`),
  ADD KEY `task_followers_added_by_foreign` (`added_by`),
  ADD KEY `task_followers_id_task_id_company_id_status_id_user_id_index` (`id`,`task_id`,`company_id`,`status_id`,`user_id`),
  ADD KEY `task_followers_is_creator_foreign` (`is_creator`),
  ADD KEY `status_id` (`status_id`);

--
-- Indexes for table `task_members`
--
ALTER TABLE `task_members`
  ADD PRIMARY KEY (`id`),
  ADD KEY `task_members_company_id_foreign` (`company_id`),
  ADD KEY `task_members_task_id_foreign` (`task_id`),
  ADD KEY `task_members_user_id_foreign` (`user_id`),
  ADD KEY `task_members_added_by_foreign` (`added_by`),
  ADD KEY `task_members_id_task_id_company_id_status_id_user_id_index` (`id`,`task_id`,`company_id`,`status_id`,`user_id`),
  ADD KEY `status_id` (`status_id`);

--
-- Indexes for table `task_notes`
--
ALTER TABLE `task_notes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `task_notes_company_id_foreign` (`company_id`),
  ADD KEY `task_notes_task_id_foreign` (`task_id`),
  ADD KEY `task_notes_user_id_foreign` (`user_id`),
  ADD KEY `task_notes_id_task_id_company_id_status_id_user_id_index` (`id`,`task_id`,`company_id`,`status_id`,`user_id`),
  ADD KEY `show_to_customer` (`show_to_customer`),
  ADD KEY `status_id` (`status_id`);

--
-- Indexes for table `teams`
--
ALTER TABLE `teams`
  ADD PRIMARY KEY (`id`),
  ADD KEY `teams_attachment_file_id_foreign` (`attachment_file_id`),
  ADD KEY `teams_company_id_foreign` (`company_id`),
  ADD KEY `teams_user_id_foreign` (`user_id`),
  ADD KEY `teams_team_lead_id_foreign` (`team_lead_id`),
  ADD KEY `status_id` (`status_id`);

--
-- Indexes for table `team_members`
--
ALTER TABLE `team_members`
  ADD PRIMARY KEY (`id`),
  ADD KEY `team_members_team_id_foreign` (`team_id`),
  ADD KEY `team_members_user_id_foreign` (`user_id`);

--
-- Indexes for table `tenants`
--
ALTER TABLE `tenants`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `testimonials`
--
ALTER TABLE `testimonials`
  ADD PRIMARY KEY (`id`),
  ADD KEY `testimonials_company_id_foreign` (`company_id`),
  ADD KEY `status_id` (`status_id`);

--
-- Indexes for table `ticket_replies`
--
ALTER TABLE `ticket_replies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ticket_replies_support_ticket_id_foreign` (`support_ticket_id`),
  ADD KEY `ticket_replies_user_id_foreign` (`user_id`);

--
-- Indexes for table `time_zones`
--
ALTER TABLE `time_zones`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transactions_company_id_foreign` (`company_id`),
  ADD KEY `transactions_account_id_foreign` (`account_id`),
  ADD KEY `transaction_type` (`transaction_type`),
  ADD KEY `status_id` (`status_id`),
  ADD KEY `created_by` (`created_by`),
  ADD KEY `updated_by` (`updated_by`);

--
-- Indexes for table `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `travel`
--
ALTER TABLE `travel`
  ADD PRIMARY KEY (`id`),
  ADD KEY `travel_company_id_foreign` (`company_id`),
  ADD KEY `travel_user_id_foreign` (`user_id`),
  ADD KEY `travel_created_by_foreign` (`created_by`),
  ADD KEY `travel_travel_type_id_foreign` (`travel_type_id`),
  ADD KEY `travel_attachment_foreign` (`attachment`),
  ADD KEY `travel_goal_id_foreign` (`goal_id`),
  ADD KEY `travel_id_travel_type_id_company_id_status_id_user_id_index` (`id`,`travel_type_id`,`company_id`,`status_id`,`user_id`),
  ADD KEY `status_id` (`status_id`);

--
-- Indexes for table `travel_types`
--
ALTER TABLE `travel_types`
  ADD PRIMARY KEY (`id`),
  ADD KEY `travel_types_company_id_foreign` (`company_id`),
  ADD KEY `travel_types_id_status_id_company_id_index` (`id`,`status_id`,`company_id`),
  ADD KEY `status_id` (`status_id`);

--
-- Indexes for table `uploads`
--
ALTER TABLE `uploads`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uploads_status_id_index` (`status_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_phone_unique` (`phone`),
  ADD KEY `users_company_id_foreign` (`company_id`),
  ADD KEY `users_country_id_foreign` (`country_id`),
  ADD KEY `users_role_id_foreign` (`role_id`),
  ADD KEY `users_department_id_foreign` (`department_id`),
  ADD KEY `users_shift_id_foreign` (`shift_id`),
  ADD KEY `users_designation_id_foreign` (`designation_id`),
  ADD KEY `users_manager_id_foreign` (`manager_id`),
  ADD KEY `users_passport_file_id_foreign` (`passport_file_id`),
  ADD KEY `users_eid_file_id_foreign` (`eid_file_id`),
  ADD KEY `users_visa_file_id_foreign` (`visa_file_id`),
  ADD KEY `users_insurance_file_id_foreign` (`insurance_file_id`),
  ADD KEY `users_labour_card_file_id_foreign` (`labour_card_file_id`),
  ADD KEY `users_nid_card_id_foreign` (`nid_card_id`),
  ADD KEY `users_avatar_id_foreign` (`avatar_id`),
  ADD KEY `users_face_image_foreign` (`face_image`),
  ADD KEY `users_status_id_index` (`status_id`),
  ADD KEY `users_stripe_id_index` (`stripe_id`);

--
-- Indexes for table `user_devices`
--
ALTER TABLE `user_devices`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_devices_user_id_foreign` (`user_id`);

--
-- Indexes for table `user_documents`
--
ALTER TABLE `user_documents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_documents_attachment_id_foreign` (`attachment_id`),
  ADD KEY `user_documents_user_id_index` (`user_id`),
  ADD KEY `user_documents_user_document_type_id_index` (`user_document_type_id`),
  ADD KEY `user_documents_document_number_index` (`document_number`),
  ADD KEY `user_documents_document_expiration_index` (`document_expiration`);

--
-- Indexes for table `user_document_requests`
--
ALTER TABLE `user_document_requests`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_document_requests_status_id_foreign` (`status_id`),
  ADD KEY `user_document_requests_user_id_index` (`user_id`),
  ADD KEY `user_document_requests_request_type_index` (`request_type`),
  ADD KEY `user_document_requests_approved_index` (`approved`),
  ADD KEY `user_document_requests_request_date_index` (`request_date`);

--
-- Indexes for table `user_document_types`
--
ALTER TABLE `user_document_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_document_types_name_unique` (`name`),
  ADD KEY `user_document_types_name_index` (`name`);

--
-- Indexes for table `virtual_meetings`
--
ALTER TABLE `virtual_meetings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `virtual_meetings_company_id_foreign` (`company_id`),
  ADD KEY `virtual_meetings_created_by_foreign` (`created_by`),
  ADD KEY `status_id` (`status_id`);

--
-- Indexes for table `visits`
--
ALTER TABLE `visits`
  ADD PRIMARY KEY (`id`),
  ADD KEY `visits_company_id_foreign` (`company_id`),
  ADD KEY `visits_user_id_foreign` (`user_id`);

--
-- Indexes for table `visit_images`
--
ALTER TABLE `visit_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `visit_notes`
--
ALTER TABLE `visit_notes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `visit_notes_visit_id_foreign` (`visit_id`);

--
-- Indexes for table `visit_schedules`
--
ALTER TABLE `visit_schedules`
  ADD PRIMARY KEY (`id`),
  ADD KEY `visit_schedules_visit_id_foreign` (`visit_id`);

--
-- Indexes for table `weekends`
--
ALTER TABLE `weekends`
  ADD PRIMARY KEY (`id`),
  ADD KEY `weekends_company_id_foreign` (`company_id`),
  ADD KEY `weekends_status_id_foreign` (`status_id`),
  ADD KEY `weekends_id_index` (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accounts`
--
ALTER TABLE `accounts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `activity_log`
--
ALTER TABLE `activity_log`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=136;

--
-- AUTO_INCREMENT for table `advance_salaries`
--
ALTER TABLE `advance_salaries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `advance_salary_logs`
--
ALTER TABLE `advance_salary_logs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `advance_types`
--
ALTER TABLE `advance_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `all_contents`
--
ALTER TABLE `all_contents`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `api_setups`
--
ALTER TABLE `api_setups`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `appoinments`
--
ALTER TABLE `appoinments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `appoinment_participants`
--
ALTER TABLE `appoinment_participants`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `appraisals`
--
ALTER TABLE `appraisals`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `appreciates`
--
ALTER TABLE `appreciates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `app_screens`
--
ALTER TABLE `app_screens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `assign_leaves`
--
ALTER TABLE `assign_leaves`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `attendances`
--
ALTER TABLE `attendances`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=94;

--
-- AUTO_INCREMENT for table `author_infos`
--
ALTER TABLE `author_infos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `awards`
--
ALTER TABLE `awards`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `award_types`
--
ALTER TABLE `award_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `bank_accounts`
--
ALTER TABLE `bank_accounts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `branches`
--
ALTER TABLE `branches`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `clients`
--
ALTER TABLE `clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `commissions`
--
ALTER TABLE `commissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `companies`
--
ALTER TABLE `companies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `company_configs`
--
ALTER TABLE `company_configs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `competences`
--
ALTER TABLE `competences`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `competence_types`
--
ALTER TABLE `competence_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `conversations`
--
ALTER TABLE `conversations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=239;

--
-- AUTO_INCREMENT for table `currencies`
--
ALTER TABLE `currencies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=122;

--
-- AUTO_INCREMENT for table `daily_leaves`
--
ALTER TABLE `daily_leaves`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `database_backups`
--
ALTER TABLE `database_backups`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `date_formats`
--
ALTER TABLE `date_formats`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `deposits`
--
ALTER TABLE `deposits`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `designations`
--
ALTER TABLE `designations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `discussions`
--
ALTER TABLE `discussions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `discussion_comments`
--
ALTER TABLE `discussion_comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `discussion_likes`
--
ALTER TABLE `discussion_likes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `domains`
--
ALTER TABLE `domains`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `duty_schedules`
--
ALTER TABLE `duty_schedules`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `employee_breaks`
--
ALTER TABLE `employee_breaks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `employee_tasks`
--
ALTER TABLE `employee_tasks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `expenses`
--
ALTER TABLE `expenses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `expense_claims`
--
ALTER TABLE `expense_claims`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `expense_claim_details`
--
ALTER TABLE `expense_claim_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `expire_notifications`
--
ALTER TABLE `expire_notifications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `features`
--
ALTER TABLE `features`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `front_teams`
--
ALTER TABLE `front_teams`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `goals`
--
ALTER TABLE `goals`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `goal_types`
--
ALTER TABLE `goal_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `holidays`
--
ALTER TABLE `holidays`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `home_pages`
--
ALTER TABLE `home_pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hrm_expenses`
--
ALTER TABLE `hrm_expenses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT for table `hrm_languages`
--
ALTER TABLE `hrm_languages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `income_expense_categories`
--
ALTER TABLE `income_expense_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `indicators`
--
ALTER TABLE `indicators`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ip_setups`
--
ALTER TABLE `ip_setups`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jitsi_meetings`
--
ALTER TABLE `jitsi_meetings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=115;

--
-- AUTO_INCREMENT for table `late_in_out_reasons`
--
ALTER TABLE `late_in_out_reasons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `leave_requests`
--
ALTER TABLE `leave_requests`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `leave_settings`
--
ALTER TABLE `leave_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `leave_types`
--
ALTER TABLE `leave_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `location_binds`
--
ALTER TABLE `location_binds`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `location_logs`
--
ALTER TABLE `location_logs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `meetings`
--
ALTER TABLE `meetings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `meeting_members`
--
ALTER TABLE `meeting_members`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `meeting_participants`
--
ALTER TABLE `meeting_participants`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `meeting_setups`
--
ALTER TABLE `meeting_setups`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `meta_information`
--
ALTER TABLE `meta_information`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=162;

--
-- AUTO_INCREMENT for table `module_services`
--
ALTER TABLE `module_services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `module_service_details`
--
ALTER TABLE `module_service_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `notes`
--
ALTER TABLE `notes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `notices`
--
ALTER TABLE `notices`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `notice_departments`
--
ALTER TABLE `notice_departments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `notice_view_logs`
--
ALTER TABLE `notice_view_logs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `notifications_old`
--
ALTER TABLE `notifications_old`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `notification_types`
--
ALTER TABLE `notification_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `payment_histories`
--
ALTER TABLE `payment_histories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payment_history_details`
--
ALTER TABLE `payment_history_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payment_history_logs`
--
ALTER TABLE `payment_history_logs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payment_methods`
--
ALTER TABLE `payment_methods`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `payment_types`
--
ALTER TABLE `payment_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `portfolios`
--
ALTER TABLE `portfolios`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `project_activities`
--
ALTER TABLE `project_activities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `project_files`
--
ALTER TABLE `project_files`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `project_file_comments`
--
ALTER TABLE `project_file_comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `project_membars`
--
ALTER TABLE `project_membars`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `project_payments`
--
ALTER TABLE `project_payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `role_users`
--
ALTER TABLE `role_users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `salary_generates`
--
ALTER TABLE `salary_generates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `salary_payment_logs`
--
ALTER TABLE `salary_payment_logs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `salary_setups`
--
ALTER TABLE `salary_setups`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `salary_setup_details`
--
ALTER TABLE `salary_setup_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `salary_sheet_reports`
--
ALTER TABLE `salary_sheet_reports`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `service_brands`
--
ALTER TABLE `service_brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `service_institutions`
--
ALTER TABLE `service_institutions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=646;

--
-- AUTO_INCREMENT for table `service_machines`
--
ALTER TABLE `service_machines`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `service_models`
--
ALTER TABLE `service_models`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `service_packages`
--
ALTER TABLE `service_packages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `service_package_details`
--
ALTER TABLE `service_package_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `shifts`
--
ALTER TABLE `shifts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sms_logs`
--
ALTER TABLE `sms_logs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `social_identities`
--
ALTER TABLE `social_identities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `statuses`
--
ALTER TABLE `statuses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `subscriptions`
--
ALTER TABLE `subscriptions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `subscription_items`
--
ALTER TABLE `subscription_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `subscription_plans`
--
ALTER TABLE `subscription_plans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `support_tickets`
--
ALTER TABLE `support_tickets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tasks`
--
ALTER TABLE `tasks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `task_activities`
--
ALTER TABLE `task_activities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `task_discussions`
--
ALTER TABLE `task_discussions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `task_discussion_comments`
--
ALTER TABLE `task_discussion_comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `task_files`
--
ALTER TABLE `task_files`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `task_file_comments`
--
ALTER TABLE `task_file_comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `task_followers`
--
ALTER TABLE `task_followers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `task_members`
--
ALTER TABLE `task_members`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `task_notes`
--
ALTER TABLE `task_notes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `teams`
--
ALTER TABLE `teams`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `team_members`
--
ALTER TABLE `team_members`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `testimonials`
--
ALTER TABLE `testimonials`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ticket_replies`
--
ALTER TABLE `ticket_replies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `time_zones`
--
ALTER TABLE `time_zones`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=425;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `translations`
--
ALTER TABLE `translations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `travel`
--
ALTER TABLE `travel`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `travel_types`
--
ALTER TABLE `travel_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `uploads`
--
ALTER TABLE `uploads`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `user_devices`
--
ALTER TABLE `user_devices`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_documents`
--
ALTER TABLE `user_documents`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_document_requests`
--
ALTER TABLE `user_document_requests`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `user_document_types`
--
ALTER TABLE `user_document_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `virtual_meetings`
--
ALTER TABLE `virtual_meetings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `visits`
--
ALTER TABLE `visits`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `visit_images`
--
ALTER TABLE `visit_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `visit_notes`
--
ALTER TABLE `visit_notes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `visit_schedules`
--
ALTER TABLE `visit_schedules`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `weekends`
--
ALTER TABLE `weekends`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `accounts`
--
ALTER TABLE `accounts`
  ADD CONSTRAINT `accounts_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `accounts_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `accounts_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`),
  ADD CONSTRAINT `accounts_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`);

--
-- Constraints for table `advance_salaries`
--
ALTER TABLE `advance_salaries`
  ADD CONSTRAINT `advance_salaries_advance_type_id_foreign` FOREIGN KEY (`advance_type_id`) REFERENCES `advance_types` (`id`),
  ADD CONSTRAINT `advance_salaries_approver_id_foreign` FOREIGN KEY (`approver_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `advance_salaries_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `advance_salaries_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `advance_salaries_pay_foreign` FOREIGN KEY (`pay`) REFERENCES `statuses` (`id`),
  ADD CONSTRAINT `advance_salaries_return_status_foreign` FOREIGN KEY (`return_status`) REFERENCES `statuses` (`id`),
  ADD CONSTRAINT `advance_salaries_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`),
  ADD CONSTRAINT `advance_salaries_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `advance_salaries_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `advance_salary_logs`
--
ALTER TABLE `advance_salary_logs`
  ADD CONSTRAINT `advance_salary_logs_advance_salary_id_foreign` FOREIGN KEY (`advance_salary_id`) REFERENCES `advance_salaries` (`id`),
  ADD CONSTRAINT `advance_salary_logs_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `advance_salary_logs_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `advance_salary_logs_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `advance_types`
--
ALTER TABLE `advance_types`
  ADD CONSTRAINT `advance_types_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `advance_types_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`);

--
-- Constraints for table `all_contents`
--
ALTER TABLE `all_contents`
  ADD CONSTRAINT `all_contents_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `all_contents_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `all_contents_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`),
  ADD CONSTRAINT `all_contents_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `all_contents_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `api_setups`
--
ALTER TABLE `api_setups`
  ADD CONSTRAINT `api_setups_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `api_setups_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`);

--
-- Constraints for table `appoinments`
--
ALTER TABLE `appoinments`
  ADD CONSTRAINT `appoinments_appoinment_with_foreign` FOREIGN KEY (`appoinment_with`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `appoinments_attachment_file_id_foreign` FOREIGN KEY (`attachment_file_id`) REFERENCES `uploads` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `appoinments_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`),
  ADD CONSTRAINT `appoinments_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `appoinments_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`);

--
-- Constraints for table `appoinment_participants`
--
ALTER TABLE `appoinment_participants`
  ADD CONSTRAINT `appoinment_participants_appoinment_id_foreign` FOREIGN KEY (`appoinment_id`) REFERENCES `appoinments` (`id`),
  ADD CONSTRAINT `appoinment_participants_participant_id_foreign` FOREIGN KEY (`participant_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `appraisals`
--
ALTER TABLE `appraisals`
  ADD CONSTRAINT `appraisals_added_by_foreign` FOREIGN KEY (`added_by`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `appraisals_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `appraisals_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `appreciates`
--
ALTER TABLE `appreciates`
  ADD CONSTRAINT `appreciates_appreciate_by_foreign` FOREIGN KEY (`appreciate_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `appreciates_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `app_screens`
--
ALTER TABLE `app_screens`
  ADD CONSTRAINT `app_screens_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`);

--
-- Constraints for table `assign_leaves`
--
ALTER TABLE `assign_leaves`
  ADD CONSTRAINT `assign_leaves_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `assign_leaves_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`),
  ADD CONSTRAINT `assign_leaves_type_id_foreign` FOREIGN KEY (`type_id`) REFERENCES `leave_types` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `attendances`
--
ALTER TABLE `attendances`
  ADD CONSTRAINT `attendances_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `attendances_face_image_foreign` FOREIGN KEY (`face_image`) REFERENCES `uploads` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `attendances_in_status_approve_by_foreign` FOREIGN KEY (`in_status_approve_by`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `attendances_out_status_approve_by_foreign` FOREIGN KEY (`out_status_approve_by`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `attendances_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`),
  ADD CONSTRAINT `attendances_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `author_infos`
--
ALTER TABLE `author_infos`
  ADD CONSTRAINT `author_infos_approved_by_foreign` FOREIGN KEY (`approved_by`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `author_infos_archived_by_foreign` FOREIGN KEY (`archived_by`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `author_infos_cancelled_by_foreign` FOREIGN KEY (`cancelled_by`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `author_infos_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `author_infos_deleted_by_foreign` FOREIGN KEY (`deleted_by`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `author_infos_published_by_foreign` FOREIGN KEY (`published_by`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `author_infos_referred_by_foreign` FOREIGN KEY (`referred_by`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `author_infos_rejected_by_foreign` FOREIGN KEY (`rejected_by`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `author_infos_restored_by_foreign` FOREIGN KEY (`restored_by`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `author_infos_unpublished_by_foreign` FOREIGN KEY (`unpublished_by`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `author_infos_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `awards`
--
ALTER TABLE `awards`
  ADD CONSTRAINT `awards_attachment_foreign` FOREIGN KEY (`attachment`) REFERENCES `uploads` (`id`),
  ADD CONSTRAINT `awards_award_type_id_foreign` FOREIGN KEY (`award_type_id`) REFERENCES `award_types` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `awards_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `awards_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `awards_goal_id_foreign` FOREIGN KEY (`goal_id`) REFERENCES `goals` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `awards_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`),
  ADD CONSTRAINT `awards_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `award_types`
--
ALTER TABLE `award_types`
  ADD CONSTRAINT `award_types_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `award_types_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`);

--
-- Constraints for table `bank_accounts`
--
ALTER TABLE `bank_accounts`
  ADD CONSTRAINT `bank_accounts_author_info_id_foreign` FOREIGN KEY (`author_info_id`) REFERENCES `author_infos` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `bank_accounts_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `bank_accounts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_author_info_id_foreign` FOREIGN KEY (`author_info_id`) REFERENCES `author_infos` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `categories_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `clients`
--
ALTER TABLE `clients`
  ADD CONSTRAINT `clients_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `clients_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`);

--
-- Constraints for table `commissions`
--
ALTER TABLE `commissions`
  ADD CONSTRAINT `commissions_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `commissions_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`);

--
-- Constraints for table `companies`
--
ALTER TABLE `companies`
  ADD CONSTRAINT `companies_country_id_foreign` FOREIGN KEY (`country_id`) REFERENCES `countries` (`id`),
  ADD CONSTRAINT `companies_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`),
  ADD CONSTRAINT `companies_trade_licence_id_foreign` FOREIGN KEY (`trade_licence_id`) REFERENCES `uploads` (`id`);

--
-- Constraints for table `company_configs`
--
ALTER TABLE `company_configs`
  ADD CONSTRAINT `company_configs_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `competences`
--
ALTER TABLE `competences`
  ADD CONSTRAINT `competences_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `competences_competence_type_id_foreign` FOREIGN KEY (`competence_type_id`) REFERENCES `competence_types` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `competences_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`);

--
-- Constraints for table `competence_types`
--
ALTER TABLE `competence_types`
  ADD CONSTRAINT `competence_types_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `competence_types_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`);

--
-- Constraints for table `conversations`
--
ALTER TABLE `conversations`
  ADD CONSTRAINT `conversations_image_id_foreign` FOREIGN KEY (`image_id`) REFERENCES `uploads` (`id`),
  ADD CONSTRAINT `conversations_receiver_id_foreign` FOREIGN KEY (`receiver_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `conversations_sender_id_foreign` FOREIGN KEY (`sender_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `daily_leaves`
--
ALTER TABLE `daily_leaves`
  ADD CONSTRAINT `daily_leaves_approved_by_hr_foreign` FOREIGN KEY (`approved_by_hr`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `daily_leaves_approved_by_tl_foreign` FOREIGN KEY (`approved_by_tl`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `daily_leaves_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `daily_leaves_rejected_by_hr_foreign` FOREIGN KEY (`rejected_by_hr`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `daily_leaves_rejected_by_tl_foreign` FOREIGN KEY (`rejected_by_tl`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `daily_leaves_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`),
  ADD CONSTRAINT `daily_leaves_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `departments`
--
ALTER TABLE `departments`
  ADD CONSTRAINT `departments_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `departments_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`);

--
-- Constraints for table `deposits`
--
ALTER TABLE `deposits`
  ADD CONSTRAINT `deposits_approver_id_foreign` FOREIGN KEY (`approver_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `deposits_attachment_foreign` FOREIGN KEY (`attachment`) REFERENCES `uploads` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `deposits_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `deposits_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `deposits_income_expense_category_id_foreign` FOREIGN KEY (`income_expense_category_id`) REFERENCES `income_expense_categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `deposits_pay_foreign` FOREIGN KEY (`pay`) REFERENCES `statuses` (`id`),
  ADD CONSTRAINT `deposits_payment_method_id_foreign` FOREIGN KEY (`payment_method_id`) REFERENCES `payment_methods` (`id`),
  ADD CONSTRAINT `deposits_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`),
  ADD CONSTRAINT `deposits_transaction_id_foreign` FOREIGN KEY (`transaction_id`) REFERENCES `transactions` (`id`),
  ADD CONSTRAINT `deposits_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `deposits_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `designations`
--
ALTER TABLE `designations`
  ADD CONSTRAINT `designations_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `designations_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`);

--
-- Constraints for table `discussions`
--
ALTER TABLE `discussions`
  ADD CONSTRAINT `discussions_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `discussions_project_id_foreign` FOREIGN KEY (`project_id`) REFERENCES `projects` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `discussions_show_to_customer_foreign` FOREIGN KEY (`show_to_customer`) REFERENCES `statuses` (`id`),
  ADD CONSTRAINT `discussions_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`),
  ADD CONSTRAINT `discussions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `discussion_comments`
--
ALTER TABLE `discussion_comments`
  ADD CONSTRAINT `discussion_comments_attachment_foreign` FOREIGN KEY (`attachment`) REFERENCES `uploads` (`id`),
  ADD CONSTRAINT `discussion_comments_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `discussion_comments_discussion_id_foreign` FOREIGN KEY (`discussion_id`) REFERENCES `discussions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `discussion_comments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `discussion_likes`
--
ALTER TABLE `discussion_likes`
  ADD CONSTRAINT `discussion_likes_discussion_id_foreign` FOREIGN KEY (`discussion_id`) REFERENCES `discussions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `discussion_likes_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `domains`
--
ALTER TABLE `domains`
  ADD CONSTRAINT `domains_tenant_id_foreign` FOREIGN KEY (`tenant_id`) REFERENCES `tenants` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `duty_schedules`
--
ALTER TABLE `duty_schedules`
  ADD CONSTRAINT `duty_schedules_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `duty_schedules_shift_id_foreign` FOREIGN KEY (`shift_id`) REFERENCES `shifts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `duty_schedules_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`);

--
-- Constraints for table `employee_breaks`
--
ALTER TABLE `employee_breaks`
  ADD CONSTRAINT `employee_breaks_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `employee_breaks_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `employee_tasks`
--
ALTER TABLE `employee_tasks`
  ADD CONSTRAINT `employee_tasks_assigned_id_foreign` FOREIGN KEY (`assigned_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `employee_tasks_attachment_file_id_foreign` FOREIGN KEY (`attachment_file_id`) REFERENCES `uploads` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `employee_tasks_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `employee_tasks_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`);

--
-- Constraints for table `expenses`
--
ALTER TABLE `expenses`
  ADD CONSTRAINT `expenses_approver_id_foreign` FOREIGN KEY (`approver_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `expenses_attachment_foreign` FOREIGN KEY (`attachment`) REFERENCES `uploads` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `expenses_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `expenses_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `expenses_income_expense_category_id_foreign` FOREIGN KEY (`income_expense_category_id`) REFERENCES `income_expense_categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `expenses_pay_foreign` FOREIGN KEY (`pay`) REFERENCES `statuses` (`id`),
  ADD CONSTRAINT `expenses_payment_method_id_foreign` FOREIGN KEY (`payment_method_id`) REFERENCES `payment_methods` (`id`),
  ADD CONSTRAINT `expenses_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`),
  ADD CONSTRAINT `expenses_transaction_id_foreign` FOREIGN KEY (`transaction_id`) REFERENCES `transactions` (`id`),
  ADD CONSTRAINT `expenses_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `expenses_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `expense_claims`
--
ALTER TABLE `expense_claims`
  ADD CONSTRAINT `expense_claims_attachment_file_id_foreign` FOREIGN KEY (`attachment_file_id`) REFERENCES `uploads` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `expense_claims_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `expense_claims_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`),
  ADD CONSTRAINT `expense_claims_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `expense_claim_details`
--
ALTER TABLE `expense_claim_details`
  ADD CONSTRAINT `expense_claim_details_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `expense_claim_details_expense_claim_id_foreign` FOREIGN KEY (`expense_claim_id`) REFERENCES `expense_claims` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `expense_claim_details_hrm_expense_id_foreign` FOREIGN KEY (`hrm_expense_id`) REFERENCES `hrm_expenses` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `expense_claim_details_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `features`
--
ALTER TABLE `features`
  ADD CONSTRAINT `features_attachment_file_id_foreign` FOREIGN KEY (`attachment_file_id`) REFERENCES `uploads` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `features_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`);

--
-- Constraints for table `front_teams`
--
ALTER TABLE `front_teams`
  ADD CONSTRAINT `front_teams_attachment_foreign` FOREIGN KEY (`attachment`) REFERENCES `uploads` (`id`),
  ADD CONSTRAINT `front_teams_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`),
  ADD CONSTRAINT `front_teams_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `goals`
--
ALTER TABLE `goals`
  ADD CONSTRAINT `goals_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `goals_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `goals_goal_type_id_foreign` FOREIGN KEY (`goal_type_id`) REFERENCES `goal_types` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `goals_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`);

--
-- Constraints for table `goal_types`
--
ALTER TABLE `goal_types`
  ADD CONSTRAINT `goal_types_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `goal_types_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`);

--
-- Constraints for table `holidays`
--
ALTER TABLE `holidays`
  ADD CONSTRAINT `holidays_attachment_id_foreign` FOREIGN KEY (`attachment_id`) REFERENCES `uploads` (`id`),
  ADD CONSTRAINT `holidays_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `holidays_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `home_pages`
--
ALTER TABLE `home_pages`
  ADD CONSTRAINT `home_pages_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `home_pages_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`),
  ADD CONSTRAINT `home_pages_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`);

--
-- Constraints for table `hrm_expenses`
--
ALTER TABLE `hrm_expenses`
  ADD CONSTRAINT `hrm_expenses_attachment_file_id_foreign` FOREIGN KEY (`attachment_file_id`) REFERENCES `uploads` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `hrm_expenses_claimed_approved_status_id_foreign` FOREIGN KEY (`claimed_approved_status_id`) REFERENCES `statuses` (`id`),
  ADD CONSTRAINT `hrm_expenses_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `hrm_expenses_income_expense_category_id_foreign` FOREIGN KEY (`income_expense_category_id`) REFERENCES `income_expense_categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `hrm_expenses_is_claimed_status_id_foreign` FOREIGN KEY (`is_claimed_status_id`) REFERENCES `statuses` (`id`),
  ADD CONSTRAINT `hrm_expenses_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`),
  ADD CONSTRAINT `hrm_expenses_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `hrm_languages`
--
ALTER TABLE `hrm_languages`
  ADD CONSTRAINT `hrm_languages_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`);

--
-- Constraints for table `income_expense_categories`
--
ALTER TABLE `income_expense_categories`
  ADD CONSTRAINT `income_expense_categories_attachment_file_id_foreign` FOREIGN KEY (`attachment_file_id`) REFERENCES `uploads` (`id`),
  ADD CONSTRAINT `income_expense_categories_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `income_expense_categories_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`);

--
-- Constraints for table `indicators`
--
ALTER TABLE `indicators`
  ADD CONSTRAINT `indicators_added_by_foreign` FOREIGN KEY (`added_by`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `indicators_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `indicators_department_id_foreign` FOREIGN KEY (`department_id`) REFERENCES `departments` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `indicators_designation_id_foreign` FOREIGN KEY (`designation_id`) REFERENCES `designations` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `indicators_shift_id_foreign` FOREIGN KEY (`shift_id`) REFERENCES `shifts` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `ip_setups`
--
ALTER TABLE `ip_setups`
  ADD CONSTRAINT `ip_setups_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `ip_setups_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`);

--
-- Constraints for table `late_in_out_reasons`
--
ALTER TABLE `late_in_out_reasons`
  ADD CONSTRAINT `late_in_out_reasons_attendance_id_foreign` FOREIGN KEY (`attendance_id`) REFERENCES `attendances` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `late_in_out_reasons_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `leave_requests`
--
ALTER TABLE `leave_requests`
  ADD CONSTRAINT `leave_requests_assign_leave_id_foreign` FOREIGN KEY (`assign_leave_id`) REFERENCES `assign_leaves` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `leave_requests_attachment_file_id_foreign` FOREIGN KEY (`attachment_file_id`) REFERENCES `uploads` (`id`),
  ADD CONSTRAINT `leave_requests_author_info_id_foreign` FOREIGN KEY (`author_info_id`) REFERENCES `author_infos` (`id`),
  ADD CONSTRAINT `leave_requests_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `leave_requests_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`),
  ADD CONSTRAINT `leave_requests_substitute_id_foreign` FOREIGN KEY (`substitute_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `leave_requests_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `leave_settings`
--
ALTER TABLE `leave_settings`
  ADD CONSTRAINT `leave_settings_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `leave_types`
--
ALTER TABLE `leave_types`
  ADD CONSTRAINT `leave_types_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `leave_types_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`);

--
-- Constraints for table `location_binds`
--
ALTER TABLE `location_binds`
  ADD CONSTRAINT `location_binds_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `location_binds_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`),
  ADD CONSTRAINT `location_binds_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `location_logs`
--
ALTER TABLE `location_logs`
  ADD CONSTRAINT `location_logs_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `location_logs_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `meetings`
--
ALTER TABLE `meetings`
  ADD CONSTRAINT `meetings_attachment_file_id_foreign` FOREIGN KEY (`attachment_file_id`) REFERENCES `uploads` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `meetings_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`),
  ADD CONSTRAINT `meetings_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`),
  ADD CONSTRAINT `meetings_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `meeting_members`
--
ALTER TABLE `meeting_members`
  ADD CONSTRAINT `meeting_members_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`);

--
-- Constraints for table `meeting_participants`
--
ALTER TABLE `meeting_participants`
  ADD CONSTRAINT `meeting_participants_meeting_id_foreign` FOREIGN KEY (`meeting_id`) REFERENCES `meetings` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `meeting_participants_participant_id_foreign` FOREIGN KEY (`participant_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `meeting_setups`
--
ALTER TABLE `meeting_setups`
  ADD CONSTRAINT `meeting_setups_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `meeting_setups_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`);

--
-- Constraints for table `menus`
--
ALTER TABLE `menus`
  ADD CONSTRAINT `menus_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`);

--
-- Constraints for table `meta_information`
--
ALTER TABLE `meta_information`
  ADD CONSTRAINT `meta_information_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `meta_information_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `module_services`
--
ALTER TABLE `module_services`
  ADD CONSTRAINT `module_services_institution_id_foreign` FOREIGN KEY (`institution_id`) REFERENCES `service_institutions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `module_services_package_id_foreign` FOREIGN KEY (`package_id`) REFERENCES `service_packages` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `module_service_details`
--
ALTER TABLE `module_service_details`
  ADD CONSTRAINT `module_service_details_contract_person_id_foreign` FOREIGN KEY (`contract_person_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `module_service_details_machine_id_foreign` FOREIGN KEY (`machine_id`) REFERENCES `service_machines` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `module_service_details_module_service_id_foreign` FOREIGN KEY (`module_service_id`) REFERENCES `module_services` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `notes`
--
ALTER TABLE `notes`
  ADD CONSTRAINT `notes_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `notes_project_id_foreign` FOREIGN KEY (`project_id`) REFERENCES `projects` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `notes_show_to_customer_foreign` FOREIGN KEY (`show_to_customer`) REFERENCES `statuses` (`id`),
  ADD CONSTRAINT `notes_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`),
  ADD CONSTRAINT `notes_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `notices`
--
ALTER TABLE `notices`
  ADD CONSTRAINT `notices_attachment_file_id_foreign` FOREIGN KEY (`attachment_file_id`) REFERENCES `uploads` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `notices_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`),
  ADD CONSTRAINT `notices_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `notices_department_id_foreign` FOREIGN KEY (`department_id`) REFERENCES `departments` (`id`),
  ADD CONSTRAINT `notices_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`);

--
-- Constraints for table `notice_view_logs`
--
ALTER TABLE `notice_view_logs`
  ADD CONSTRAINT `notice_view_logs_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`),
  ADD CONSTRAINT `notice_view_logs_notice_id_foreign` FOREIGN KEY (`notice_id`) REFERENCES `notices` (`id`),
  ADD CONSTRAINT `notice_view_logs_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `notifications_old`
--
ALTER TABLE `notifications_old`
  ADD CONSTRAINT `notifications_old_image_id_foreign` FOREIGN KEY (`image_id`) REFERENCES `uploads` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `notifications_old_receiver_id_foreign` FOREIGN KEY (`receiver_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `notifications_old_sender_id_foreign` FOREIGN KEY (`sender_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `notification_types`
--
ALTER TABLE `notification_types`
  ADD CONSTRAINT `notification_types_icon_foreign` FOREIGN KEY (`icon`) REFERENCES `uploads` (`id`),
  ADD CONSTRAINT `notification_types_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`);

--
-- Constraints for table `payment_histories`
--
ALTER TABLE `payment_histories`
  ADD CONSTRAINT `payment_histories_attachment_file_id_foreign` FOREIGN KEY (`attachment_file_id`) REFERENCES `uploads` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `payment_histories_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `payment_histories_expense_claim_id_foreign` FOREIGN KEY (`expense_claim_id`) REFERENCES `expense_claims` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `payment_histories_payment_status_id_foreign` FOREIGN KEY (`payment_status_id`) REFERENCES `statuses` (`id`),
  ADD CONSTRAINT `payment_histories_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `payment_history_details`
--
ALTER TABLE `payment_history_details`
  ADD CONSTRAINT `payment_history_details_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `payment_history_details_paid_by_id_foreign` FOREIGN KEY (`paid_by_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `payment_history_details_payment_history_id_foreign` FOREIGN KEY (`payment_history_id`) REFERENCES `payment_histories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `payment_history_details_payment_method_id_foreign` FOREIGN KEY (`payment_method_id`) REFERENCES `payment_methods` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `payment_history_details_payment_status_id_foreign` FOREIGN KEY (`payment_status_id`) REFERENCES `statuses` (`id`),
  ADD CONSTRAINT `payment_history_details_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `payment_history_logs`
--
ALTER TABLE `payment_history_logs`
  ADD CONSTRAINT `payment_history_logs_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `payment_history_logs_expense_claim_id_foreign` FOREIGN KEY (`expense_claim_id`) REFERENCES `expense_claims` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `payment_history_logs_paid_by_id_foreign` FOREIGN KEY (`paid_by_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `payment_history_logs_payment_history_id_foreign` FOREIGN KEY (`payment_history_id`) REFERENCES `payment_histories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `payment_history_logs_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `payment_methods`
--
ALTER TABLE `payment_methods`
  ADD CONSTRAINT `payment_methods_attachment_file_id_foreign` FOREIGN KEY (`attachment_file_id`) REFERENCES `uploads` (`id`),
  ADD CONSTRAINT `payment_methods_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `payment_methods_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`);

--
-- Constraints for table `payment_types`
--
ALTER TABLE `payment_types`
  ADD CONSTRAINT `payment_types_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `portfolios`
--
ALTER TABLE `portfolios`
  ADD CONSTRAINT `portfolios_attachment_foreign` FOREIGN KEY (`attachment`) REFERENCES `uploads` (`id`),
  ADD CONSTRAINT `portfolios_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`),
  ADD CONSTRAINT `portfolios_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `projects`
--
ALTER TABLE `projects`
  ADD CONSTRAINT `projects_client_id_foreign` FOREIGN KEY (`client_id`) REFERENCES `clients` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `projects_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `projects_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `projects_goal_id_foreign` FOREIGN KEY (`goal_id`) REFERENCES `goals` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `projects_payment_foreign` FOREIGN KEY (`payment`) REFERENCES `statuses` (`id`),
  ADD CONSTRAINT `projects_priority_foreign` FOREIGN KEY (`priority`) REFERENCES `statuses` (`id`),
  ADD CONSTRAINT `projects_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`);

--
-- Constraints for table `project_activities`
--
ALTER TABLE `project_activities`
  ADD CONSTRAINT `project_activities_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `project_activities_project_id_foreign` FOREIGN KEY (`project_id`) REFERENCES `projects` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `project_activities_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `project_files`
--
ALTER TABLE `project_files`
  ADD CONSTRAINT `project_files_attachment_foreign` FOREIGN KEY (`attachment`) REFERENCES `uploads` (`id`),
  ADD CONSTRAINT `project_files_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `project_files_project_id_foreign` FOREIGN KEY (`project_id`) REFERENCES `projects` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `project_files_show_to_customer_foreign` FOREIGN KEY (`show_to_customer`) REFERENCES `statuses` (`id`),
  ADD CONSTRAINT `project_files_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`),
  ADD CONSTRAINT `project_files_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `project_file_comments`
--
ALTER TABLE `project_file_comments`
  ADD CONSTRAINT `project_file_comments_attachment_foreign` FOREIGN KEY (`attachment`) REFERENCES `uploads` (`id`),
  ADD CONSTRAINT `project_file_comments_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `project_file_comments_project_file_id_foreign` FOREIGN KEY (`project_file_id`) REFERENCES `project_files` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `project_file_comments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `project_membars`
--
ALTER TABLE `project_membars`
  ADD CONSTRAINT `project_membars_added_by_foreign` FOREIGN KEY (`added_by`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `project_membars_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `project_membars_project_id_foreign` FOREIGN KEY (`project_id`) REFERENCES `projects` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `project_membars_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`),
  ADD CONSTRAINT `project_membars_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `project_payments`
--
ALTER TABLE `project_payments`
  ADD CONSTRAINT `project_payments_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `project_payments_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `project_payments_paid_by_foreign` FOREIGN KEY (`paid_by`) REFERENCES `clients` (`id`),
  ADD CONSTRAINT `project_payments_payment_method_id_foreign` FOREIGN KEY (`payment_method_id`) REFERENCES `payment_methods` (`id`),
  ADD CONSTRAINT `project_payments_project_id_foreign` FOREIGN KEY (`project_id`) REFERENCES `projects` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `project_payments_transaction_id_foreign` FOREIGN KEY (`transaction_id`) REFERENCES `transactions` (`id`),
  ADD CONSTRAINT `project_payments_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`);

--
-- Constraints for table `roles`
--
ALTER TABLE `roles`
  ADD CONSTRAINT `roles_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `roles_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`);

--
-- Constraints for table `role_users`
--
ALTER TABLE `role_users`
  ADD CONSTRAINT `role_users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_users_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `salary_generates`
--
ALTER TABLE `salary_generates`
  ADD CONSTRAINT `salary_generates_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `salary_generates_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `salary_generates_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`),
  ADD CONSTRAINT `salary_generates_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `salary_generates_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `salary_payment_logs`
--
ALTER TABLE `salary_payment_logs`
  ADD CONSTRAINT `salary_payment_logs_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `salary_payment_logs_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `salary_payment_logs_paid_by_foreign` FOREIGN KEY (`paid_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `salary_payment_logs_payment_method_id_foreign` FOREIGN KEY (`payment_method_id`) REFERENCES `payment_methods` (`id`),
  ADD CONSTRAINT `salary_payment_logs_salary_generate_id_foreign` FOREIGN KEY (`salary_generate_id`) REFERENCES `salary_generates` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `salary_payment_logs_transaction_id_foreign` FOREIGN KEY (`transaction_id`) REFERENCES `transactions` (`id`),
  ADD CONSTRAINT `salary_payment_logs_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `salary_payment_logs_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `salary_setups`
--
ALTER TABLE `salary_setups`
  ADD CONSTRAINT `salary_setups_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `salary_setups_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `salary_setups_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`),
  ADD CONSTRAINT `salary_setups_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `salary_setups_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `salary_setup_details`
--
ALTER TABLE `salary_setup_details`
  ADD CONSTRAINT `salary_setup_details_commission_id_foreign` FOREIGN KEY (`commission_id`) REFERENCES `commissions` (`id`),
  ADD CONSTRAINT `salary_setup_details_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `salary_setup_details_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `salary_setup_details_salary_setup_id_foreign` FOREIGN KEY (`salary_setup_id`) REFERENCES `salary_setups` (`id`),
  ADD CONSTRAINT `salary_setup_details_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`),
  ADD CONSTRAINT `salary_setup_details_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `salary_setup_details_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `services`
--
ALTER TABLE `services`
  ADD CONSTRAINT `services_attachment_foreign` FOREIGN KEY (`attachment`) REFERENCES `uploads` (`id`),
  ADD CONSTRAINT `services_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`),
  ADD CONSTRAINT `services_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `service_machines`
--
ALTER TABLE `service_machines`
  ADD CONSTRAINT `service_machines_brand_id_foreign` FOREIGN KEY (`brand_id`) REFERENCES `service_brands` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `service_machines_model_id_foreign` FOREIGN KEY (`model_id`) REFERENCES `service_models` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `service_package_details`
--
ALTER TABLE `service_package_details`
  ADD CONSTRAINT `service_package_details_brand_id_foreign` FOREIGN KEY (`brand_id`) REFERENCES `service_brands` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `service_package_details_machine_id_foreign` FOREIGN KEY (`machine_id`) REFERENCES `service_machines` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `service_package_details_model_id_foreign` FOREIGN KEY (`model_id`) REFERENCES `service_models` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `service_package_details_package_id_foreign` FOREIGN KEY (`package_id`) REFERENCES `service_packages` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `settings`
--
ALTER TABLE `settings`
  ADD CONSTRAINT `settings_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `shifts`
--
ALTER TABLE `shifts`
  ADD CONSTRAINT `shifts_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`),
  ADD CONSTRAINT `shifts_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`);

--
-- Constraints for table `social_identities`
--
ALTER TABLE `social_identities`
  ADD CONSTRAINT `social_identities_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `subscription_plans`
--
ALTER TABLE `subscription_plans`
  ADD CONSTRAINT `subscription_plans_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`);

--
-- Constraints for table `support_tickets`
--
ALTER TABLE `support_tickets`
  ADD CONSTRAINT `support_tickets_assigned_id_foreign` FOREIGN KEY (`assigned_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `support_tickets_attachment_file_id_foreign` FOREIGN KEY (`attachment_file_id`) REFERENCES `uploads` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `support_tickets_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`),
  ADD CONSTRAINT `support_tickets_priority_id_foreign` FOREIGN KEY (`priority_id`) REFERENCES `statuses` (`id`),
  ADD CONSTRAINT `support_tickets_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`),
  ADD CONSTRAINT `support_tickets_type_id_foreign` FOREIGN KEY (`type_id`) REFERENCES `statuses` (`id`),
  ADD CONSTRAINT `support_tickets_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `tasks`
--
ALTER TABLE `tasks`
  ADD CONSTRAINT `tasks_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `tasks_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `tasks_goal_id_foreign` FOREIGN KEY (`goal_id`) REFERENCES `goals` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `tasks_priority_foreign` FOREIGN KEY (`priority`) REFERENCES `statuses` (`id`),
  ADD CONSTRAINT `tasks_project_id_foreign` FOREIGN KEY (`project_id`) REFERENCES `projects` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `tasks_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`);

--
-- Constraints for table `task_activities`
--
ALTER TABLE `task_activities`
  ADD CONSTRAINT `task_activities_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `task_activities_task_id_foreign` FOREIGN KEY (`task_id`) REFERENCES `tasks` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `task_activities_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `task_discussions`
--
ALTER TABLE `task_discussions`
  ADD CONSTRAINT `task_discussions_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `task_discussions_file_id_foreign` FOREIGN KEY (`file_id`) REFERENCES `uploads` (`id`),
  ADD CONSTRAINT `task_discussions_show_to_customer_foreign` FOREIGN KEY (`show_to_customer`) REFERENCES `statuses` (`id`),
  ADD CONSTRAINT `task_discussions_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`),
  ADD CONSTRAINT `task_discussions_task_id_foreign` FOREIGN KEY (`task_id`) REFERENCES `tasks` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `task_discussions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `task_discussion_comments`
--
ALTER TABLE `task_discussion_comments`
  ADD CONSTRAINT `task_discussion_comments_attachment_foreign` FOREIGN KEY (`attachment`) REFERENCES `uploads` (`id`),
  ADD CONSTRAINT `task_discussion_comments_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `task_discussion_comments_task_discussion_id_foreign` FOREIGN KEY (`task_discussion_id`) REFERENCES `task_discussions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `task_discussion_comments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `task_files`
--
ALTER TABLE `task_files`
  ADD CONSTRAINT `task_files_attachment_foreign` FOREIGN KEY (`attachment`) REFERENCES `uploads` (`id`),
  ADD CONSTRAINT `task_files_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `task_files_show_to_customer_foreign` FOREIGN KEY (`show_to_customer`) REFERENCES `statuses` (`id`),
  ADD CONSTRAINT `task_files_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`),
  ADD CONSTRAINT `task_files_task_id_foreign` FOREIGN KEY (`task_id`) REFERENCES `tasks` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `task_files_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `task_file_comments`
--
ALTER TABLE `task_file_comments`
  ADD CONSTRAINT `task_file_comments_attachment_foreign` FOREIGN KEY (`attachment`) REFERENCES `uploads` (`id`),
  ADD CONSTRAINT `task_file_comments_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `task_file_comments_task_file_id_foreign` FOREIGN KEY (`task_file_id`) REFERENCES `task_files` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `task_file_comments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `task_followers`
--
ALTER TABLE `task_followers`
  ADD CONSTRAINT `task_followers_added_by_foreign` FOREIGN KEY (`added_by`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `task_followers_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `task_followers_is_creator_foreign` FOREIGN KEY (`is_creator`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `task_followers_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`),
  ADD CONSTRAINT `task_followers_task_id_foreign` FOREIGN KEY (`task_id`) REFERENCES `tasks` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `task_followers_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `task_members`
--
ALTER TABLE `task_members`
  ADD CONSTRAINT `task_members_added_by_foreign` FOREIGN KEY (`added_by`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `task_members_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `task_members_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`),
  ADD CONSTRAINT `task_members_task_id_foreign` FOREIGN KEY (`task_id`) REFERENCES `tasks` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `task_members_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `task_notes`
--
ALTER TABLE `task_notes`
  ADD CONSTRAINT `task_notes_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `task_notes_show_to_customer_foreign` FOREIGN KEY (`show_to_customer`) REFERENCES `statuses` (`id`),
  ADD CONSTRAINT `task_notes_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`),
  ADD CONSTRAINT `task_notes_task_id_foreign` FOREIGN KEY (`task_id`) REFERENCES `tasks` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `task_notes_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `teams`
--
ALTER TABLE `teams`
  ADD CONSTRAINT `teams_attachment_file_id_foreign` FOREIGN KEY (`attachment_file_id`) REFERENCES `uploads` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `teams_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `teams_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`),
  ADD CONSTRAINT `teams_team_lead_id_foreign` FOREIGN KEY (`team_lead_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `teams_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `team_members`
--
ALTER TABLE `team_members`
  ADD CONSTRAINT `team_members_team_id_foreign` FOREIGN KEY (`team_id`) REFERENCES `teams` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `team_members_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `testimonials`
--
ALTER TABLE `testimonials`
  ADD CONSTRAINT `testimonials_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `testimonials_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`);

--
-- Constraints for table `ticket_replies`
--
ALTER TABLE `ticket_replies`
  ADD CONSTRAINT `ticket_replies_support_ticket_id_foreign` FOREIGN KEY (`support_ticket_id`) REFERENCES `support_tickets` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `ticket_replies_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `transactions`
--
ALTER TABLE `transactions`
  ADD CONSTRAINT `transactions_account_id_foreign` FOREIGN KEY (`account_id`) REFERENCES `accounts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `transactions_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `transactions_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `transactions_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`),
  ADD CONSTRAINT `transactions_transaction_type_foreign` FOREIGN KEY (`transaction_type`) REFERENCES `statuses` (`id`),
  ADD CONSTRAINT `transactions_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`);

--
-- Constraints for table `travel`
--
ALTER TABLE `travel`
  ADD CONSTRAINT `travel_attachment_foreign` FOREIGN KEY (`attachment`) REFERENCES `uploads` (`id`),
  ADD CONSTRAINT `travel_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `travel_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `travel_goal_id_foreign` FOREIGN KEY (`goal_id`) REFERENCES `goals` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `travel_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`),
  ADD CONSTRAINT `travel_travel_type_id_foreign` FOREIGN KEY (`travel_type_id`) REFERENCES `travel_types` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `travel_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `travel_types`
--
ALTER TABLE `travel_types`
  ADD CONSTRAINT `travel_types_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `travel_types_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`);

--
-- Constraints for table `uploads`
--
ALTER TABLE `uploads`
  ADD CONSTRAINT `uploads_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_avatar_id_foreign` FOREIGN KEY (`avatar_id`) REFERENCES `uploads` (`id`),
  ADD CONSTRAINT `users_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `users_country_id_foreign` FOREIGN KEY (`country_id`) REFERENCES `countries` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `users_department_id_foreign` FOREIGN KEY (`department_id`) REFERENCES `departments` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `users_designation_id_foreign` FOREIGN KEY (`designation_id`) REFERENCES `designations` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `users_eid_file_id_foreign` FOREIGN KEY (`eid_file_id`) REFERENCES `uploads` (`id`),
  ADD CONSTRAINT `users_face_image_foreign` FOREIGN KEY (`face_image`) REFERENCES `uploads` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `users_insurance_file_id_foreign` FOREIGN KEY (`insurance_file_id`) REFERENCES `uploads` (`id`),
  ADD CONSTRAINT `users_labour_card_file_id_foreign` FOREIGN KEY (`labour_card_file_id`) REFERENCES `uploads` (`id`),
  ADD CONSTRAINT `users_manager_id_foreign` FOREIGN KEY (`manager_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `users_nid_card_id_foreign` FOREIGN KEY (`nid_card_id`) REFERENCES `uploads` (`id`),
  ADD CONSTRAINT `users_passport_file_id_foreign` FOREIGN KEY (`passport_file_id`) REFERENCES `uploads` (`id`),
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `users_shift_id_foreign` FOREIGN KEY (`shift_id`) REFERENCES `shifts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `users_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `users_visa_file_id_foreign` FOREIGN KEY (`visa_file_id`) REFERENCES `uploads` (`id`);

--
-- Constraints for table `user_devices`
--
ALTER TABLE `user_devices`
  ADD CONSTRAINT `user_devices_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `user_documents`
--
ALTER TABLE `user_documents`
  ADD CONSTRAINT `user_documents_attachment_id_foreign` FOREIGN KEY (`attachment_id`) REFERENCES `uploads` (`id`),
  ADD CONSTRAINT `user_documents_user_document_type_id_foreign` FOREIGN KEY (`user_document_type_id`) REFERENCES `user_document_types` (`id`),
  ADD CONSTRAINT `user_documents_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `user_document_requests`
--
ALTER TABLE `user_document_requests`
  ADD CONSTRAINT `user_document_requests_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`),
  ADD CONSTRAINT `user_document_requests_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `virtual_meetings`
--
ALTER TABLE `virtual_meetings`
  ADD CONSTRAINT `virtual_meetings_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `virtual_meetings_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `virtual_meetings_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`);

--
-- Constraints for table `visits`
--
ALTER TABLE `visits`
  ADD CONSTRAINT `visits_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `visits_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `visit_notes`
--
ALTER TABLE `visit_notes`
  ADD CONSTRAINT `visit_notes_visit_id_foreign` FOREIGN KEY (`visit_id`) REFERENCES `visits` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `visit_schedules`
--
ALTER TABLE `visit_schedules`
  ADD CONSTRAINT `visit_schedules_visit_id_foreign` FOREIGN KEY (`visit_id`) REFERENCES `visits` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `weekends`
--
ALTER TABLE `weekends`
  ADD CONSTRAINT `weekends_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `companies` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `weekends_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `statuses` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
