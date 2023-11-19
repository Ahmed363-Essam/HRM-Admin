-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Aug 08, 2023 at 05:25 PM
-- Server version: 10.3.38-MariaDB-0ubuntu0.20.04.1
-- PHP Version: 8.2.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `genesis`
--

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
  `branch_id` tinyint(4)  NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `title`, `slug`, `description`, `user_id`, `attachment`, `status_id`, `created_at`, `updated_at`, `branch_id`) VALUES
(1, 'Web Design', 'web-design', 'Our developers are always updated with the latest HTML5 Website, Encoding transcoding, User management CRM, CDN, DRM', 2, NULL, 1, '2023-08-08 17:21:18', NULL, 1),
(2, 'Web Development', 'web-development', 'We also provide Enterprise Web Applications Development, Cross-platform Apps, HRM,CRM, Multivendor E-commerce etc', 2, NULL, 1, '2023-08-08 17:21:18', NULL, 1),
(3, 'Graphics Design', 'graphics-design', 'A Graphic Designer is an artist who creates visual text and imagery. They design creative content for online campaigns, print ads, websites, and even videos.', 2, NULL, 1, '2023-08-08 17:21:18', NULL, 1),
(4, 'Digital Marketing', 'digital-marketing', 'The objective of digital marketing is to develop strong and innovative strategies to promote the business brand, products, and services. A digital marketing professional is expected to effectively use all marketing tools and techniques like PPC, SEO, SEM, email, social media, and display advertising', 2, NULL, 1, '2023-08-08 17:21:18', NULL, 1),
(5, 'Domain', 'domain', 'Most competitive price. Huge Choice & New Extension. Register your perfect domain name today.', 2, NULL, 1, '2023-08-08 17:21:18', NULL, 1),
(6, 'Hosting', 'hosting', 'Web hosting, a service that hosts websites for clients and makes a website accessible on world wide web. We provide essential techniques and services for any website.', 2, NULL, 1, '2023-08-08 17:21:18', NULL, 1);

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
  `branch_id` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `service_brands`
--

INSERT INTO `service_brands` (`id`, `name`, `status_id`, `created_at`, `updated_at`, `branch_id`) VALUES
(1, 'Brand 1', 1, NULL, NULL, 1),
(2, 'Brand 2', 1, NULL, NULL, 1);

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
  `branch_id` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `service_institutions`
--

INSERT INTO `service_institutions` (`id`, `name`, `slug`, `status_id`, `created_at`, `updated_at`, `branch_id`) VALUES
(1, 'Kukua 10 bed Hospital', 'kukua-10-bed-hospital', 1, NULL, NULL, 1),
(2, 'Chhakhar 10 bed Hospital', 'chhakhar-10-bed-hospital', 1, NULL, NULL, 1),
(3, 'Kirtipasha 10 bed Hospital (RHC)', 'kirtipasha-10-bed-hospital-rhc', 1, NULL, NULL, 1),
(4, 'Guinak 10 bed Hospital (RHC)', 'guinak-10-bed-hospital-rhc', 1, NULL, NULL, 1),
(5, 'Sandwip 10 bed Hospital (RHC)', 'sandwip-10-bed-hospital-rhc', 1, NULL, NULL, 1),
(6, 'St. Martin 10 bed Hospital', 'st-martin-10-bed-hospital', 1, NULL, NULL, 1),
(7, 'Kalikapur 10 bed Hospital (RHC)', 'kalikapur-10-bed-hospital-rhc', 1, NULL, NULL, 1),
(8, 'Talbalchhari 10 bed Hospital (RHC)', 'talbalchhari-10-bed-hospital-rhc', 1, NULL, NULL, 1),
(9, 'Kaptai 10 bed Hospital', 'kaptai-10-bed-hospital', 1, NULL, NULL, 1),
(10, 'Hajratpur 10 bed Hospital', 'hajratpur-10-bed-hospital', 1, NULL, NULL, 1),
(11, 'Kunda 10 bed Hospital', 'kunda-10-bed-hospital', 1, NULL, NULL, 1),
(12, 'Gopinathpur 10 bed Hospital (RHC)', 'gopinathpur-10-bed-hospital-rhc', 1, NULL, NULL, 1),
(13, 'Kopilmuni 10 bed Hospital', 'kopilmuni-10-bed-hospital', 1, NULL, NULL, 1),
(14, 'Khokshabari 10 bed Hospital (RHC)', 'khokshabari-10-bed-hospital-rhc', 1, NULL, NULL, 1),
(15, 'Ramchandrapur 10 bed Hospital (RHC)', 'ramchandrapur-10-bed-hospital-rhc', 1, NULL, NULL, 1),
(16, 'Raiganj 10 bed Hospital (RHC)', 'raiganj-10-bed-hospital-rhc', 1, NULL, NULL, 1),
(17, 'Dahagram 10 bed Hospital', 'dahagram-10-bed-hospital', 1, NULL, NULL, 1),
(18, 'Taltali 20 bed Hospital', 'taltali-20-bed-hospital', 1, NULL, NULL, 1),
(19, 'Walankathi 20 bed Hospital', 'walankathi-20-bed-hospital', 1, NULL, NULL, 1),
(20, 'South Char Aicha 20 bed Hospital', 'south-char-aicha-20-bed-hospital', 1, NULL, NULL, 1),
(21, 'Kuakata 20 bed Hospital', 'kuakata-20-bed-hospital', 1, NULL, NULL, 1),
(22, 'Kathaltoli 20 bed Hospital', 'kathaltoli-20-bed-hospital', 1, NULL, NULL, 1),
(23, 'Bibirhat 20 bed Hospital', 'bibirhat-20-bed-hospital', 1, NULL, NULL, 1),
(24, 'Haramia 20 bed Hospital', 'haramia-20-bed-hospital', 1, NULL, NULL, 1),
(25, 'Sonaimuri 20 bed Hospital', 'sonaimuri-20-bed-hospital', 1, NULL, NULL, 1),
(26, 'Mohichail 20 bed Hospital', 'mohichail-20-bed-hospital', 1, NULL, NULL, 1),
(27, 'Bagmara 20 bed Hospital', 'bagmara-20-bed-hospital', 1, NULL, NULL, 1),
(28, 'Donarchar 20 bed Hospital', 'donarchar-20-bed-hospital', 1, NULL, NULL, 1),
(29, 'Jodda 20 bed Hospital', 'jodda-20-bed-hospital', 1, NULL, NULL, 1),
(30, 'Char Alexander 20 bed Hospital', 'char-alexander-20-bed-hospital', 1, NULL, NULL, 1),
(31, 'Char Algi 20 bed Hospital', 'char-algi-20-bed-hospital', 1, NULL, NULL, 1),
(32, 'Kreshnanagar 20 bed Hospital', 'kreshnanagar-20-bed-hospital', 1, NULL, NULL, 1),
(33, 'Jinjira 20 bed Hospital', 'jinjira-20-bed-hospital', 1, NULL, NULL, 1),
(34, 'Aminbazar 20 bed Hospital', 'aminbazar-20-bed-hospital', 1, NULL, NULL, 1),
(35, 'Baspur 20 bed Hospital', 'baspur-20-bed-hospital', 1, NULL, NULL, 1),
(36, 'Kabirajpur 20 bed Hospital', 'kabirajpur-20-bed-hospital', 1, NULL, NULL, 1),
(37, 'Monohargram 20 bed Hospital', 'monohargram-20-bed-hospital', 1, NULL, NULL, 1),
(38, 'Fatullah 20 bed Hospital', 'fatullah-20-bed-hospital', 1, NULL, NULL, 1),
(39, 'Siddirganj 20 bed Hospital', 'siddirganj-20-bed-hospital', 1, NULL, NULL, 1),
(40, 'Tarabunia 20 bed Hospital', 'tarabunia-20-bed-hospital', 1, NULL, NULL, 1),
(41, 'Kodalpur 20 bed Hospital', 'kodalpur-20-bed-hospital', 1, NULL, NULL, 1),
(42, 'Birolpolita 20 bed Hospital', 'birolpolita-20-bed-hospital', 1, NULL, NULL, 1),
(43, 'Binadpur 20 bed Hospital', 'binadpur-20-bed-hospital', 1, NULL, NULL, 1),
(44, 'Charanchal 20 bed Hospital', 'charanchal-20-bed-hospital', 1, NULL, NULL, 1),
(45, 'Santahar 20 bed Hospital', 'santahar-20-bed-hospital', 1, NULL, NULL, 1),
(46, 'Nandigram 20 bed Hospital', 'nandigram-20-bed-hospital', 1, NULL, NULL, 1),
(47, 'Aliahat 20 bed Hospital', 'aliahat-20-bed-hospital', 1, NULL, NULL, 1),
(48, 'Kaitak 20 bed Hospital', 'kaitak-20-bed-hospital', 1, NULL, NULL, 1),
(49, 'Maddyanagar 20 bed Hospital', 'maddyanagar-20-bed-hospital', 1, NULL, NULL, 1),
(50, 'Bamna Upazila Health Complex, Barguna', 'bamna-upazila-health-complex-barguna', 1, NULL, NULL, 1),
(51, 'Babuganj Upazila Health Complex, Barishal', 'babuganj-upazila-health-complex-barishal', 1, NULL, NULL, 1),
(52, 'Bakerganj Upazila Health Complex, Barishal', 'bakerganj-upazila-health-complex-barishal', 1, NULL, NULL, 1),
(53, 'Banaripara Upazila Health Complex, Barishal', 'banaripara-upazila-health-complex-barishal', 1, NULL, NULL, 1),
(54, 'Hijla Upazila Health Complex, Barishal', 'hijla-upazila-health-complex-barishal', 1, NULL, NULL, 1),
(55, 'Mehendiganj Upazila Health Complex, Barishal', 'mehendiganj-upazila-health-complex-barishal', 1, NULL, NULL, 1),
(56, 'Wazirpur Upazila Health Complex, Barishal', 'wazirpur-upazila-health-complex-barishal', 1, NULL, NULL, 1),
(57, 'Manpura Upazila Health Complex, Bhola', 'manpura-upazila-health-complex-bhola', 1, NULL, NULL, 1),
(58, 'Tajumuddin Upazila Health Complex, Bhola', 'tajumuddin-upazila-health-complex-bhola', 1, NULL, NULL, 1),
(59, 'Kathalia Upazila Health Complex, Jhalokati', 'kathalia-upazila-health-complex-jhalokati', 1, NULL, NULL, 1),
(60, 'Rajapur Upazila Health Complex, Jhalokati', 'rajapur-upazila-health-complex-jhalokati', 1, NULL, NULL, 1),
(61, 'Bauphal Upazila Health Complex, Patuakhali', 'bauphal-upazila-health-complex-patuakhali', 1, NULL, NULL, 1),
(62, 'Dashmina Upazila Health Complex, Patuakhali', 'dashmina-upazila-health-complex-patuakhali', 1, NULL, NULL, 1),
(63, 'Dumki Upazila Health Complex, Patuakhali', 'dumki-upazila-health-complex-patuakhali', 1, NULL, NULL, 1),
(64, 'Mirzaganj Upazila Health Complex, Patuakhali', 'mirzaganj-upazila-health-complex-patuakhali', 1, NULL, NULL, 1),
(65, 'Rangabali Upazila Health Complex, Patuakhali', 'rangabali-upazila-health-complex-patuakhali', 1, NULL, NULL, 1),
(66, 'Bhandaria Upazila Health Complex, Pirojpur', 'bhandaria-upazila-health-complex-pirojpur', 1, NULL, NULL, 1),
(67, 'Indurkani Upazila Health Complex, Pirojpur', 'indurkani-upazila-health-complex-pirojpur', 1, NULL, NULL, 1),
(68, 'Kawkhali Upazila Health Complex, Pirojpur', 'kawkhali-upazila-health-complex-pirojpur', 1, NULL, NULL, 1),
(69, 'Nazirpur Upazila Health Complex, Pirojpur', 'nazirpur-upazila-health-complex-pirojpur', 1, NULL, NULL, 1),
(70, 'Alikadam Upazila Health Complex, Bandarban', 'alikadam-upazila-health-complex-bandarban', 1, NULL, NULL, 1),
(71, 'Lama Upazila Health Complex, Bandarban', 'lama-upazila-health-complex-bandarban', 1, NULL, NULL, 1),
(72, 'Naikhongchari Upazila Health Complex, Bandarban', 'naikhongchari-upazila-health-complex-bandarban', 1, NULL, NULL, 1),
(73, 'Rowangchari Upazila Health Complex, Bandarban', 'rowangchari-upazila-health-complex-bandarban', 1, NULL, NULL, 1),
(74, 'Ruma Upazila Health Complex, Bandarban', 'ruma-upazila-health-complex-bandarban', 1, NULL, NULL, 1),
(75, 'Thanchi Upazila Health Complex, Bandarban', 'thanchi-upazila-health-complex-bandarban', 1, NULL, NULL, 1),
(76, 'Akhaura Upazila Health Complex, Brahmanbaria', 'akhaura-upazila-health-complex-brahmanbaria', 1, NULL, NULL, 1),
(77, 'Ashugonj Upazila Health Complex, Brahmanbaria', 'ashugonj-upazila-health-complex-brahmanbaria', 1, NULL, NULL, 1),
(78, 'Bijoynagar Upazila Health Complex, Brahmanbaria', 'bijoynagar-upazila-health-complex-brahmanbaria', 1, NULL, NULL, 1),
(79, 'Bancharampur Upazila Health Complex, Brahmanbaria', 'bancharampur-upazila-health-complex-brahmanbaria', 1, NULL, NULL, 1),
(80, 'Kashba Upazila Health Complex, Brahmanbaria', 'kashba-upazila-health-complex-brahmanbaria', 1, NULL, NULL, 1),
(81, 'Nabinagar Upazila Health Complex, Brahmanbaria', 'nabinagar-upazila-health-complex-brahmanbaria', 1, NULL, NULL, 1),
(82, 'Faridganj Upazila Health Complex, Chandpur', 'faridganj-upazila-health-complex-chandpur', 1, NULL, NULL, 1),
(83, 'Haimchar Upazila Health Complex, Chandpur', 'haimchar-upazila-health-complex-chandpur', 1, NULL, NULL, 1),
(84, 'Matlab(uttar) Upazila Health Complex, Chandpur', 'matlabuttar-upazila-health-complex-chandpur', 1, NULL, NULL, 1),
(85, 'Saharasthi Upazila Health Complex, Chandpur', 'saharasthi-upazila-health-complex-chandpur', 1, NULL, NULL, 1),
(86, 'Fatikchari Upazila Health Complex, Chattogram', 'fatikchari-upazila-health-complex-chattogram', 1, NULL, NULL, 1),
(87, 'Roujan Upazila Health Complex, Chattogram', 'roujan-upazila-health-complex-chattogram', 1, NULL, NULL, 1),
(88, 'Sandwip Upazila Health Complex, Chattogram', 'sandwip-upazila-health-complex-chattogram', 1, NULL, NULL, 1),
(89, 'Satkania Upazila Health Complex, Chattogram', 'satkania-upazila-health-complex-chattogram', 1, NULL, NULL, 1),
(90, 'Pekua Upazila Health Complex, Cox\'s Bazar', 'pekua-upazila-health-complex-coxs-bazar', 1, NULL, NULL, 1),
(91, 'Ramu Upazila Health Complex, Cox\'s Bazar', 'ramu-upazila-health-complex-coxs-bazar', 1, NULL, NULL, 1),
(92, 'Teknaf Upazila Health Complex, Cox\'s Bazar', 'teknaf-upazila-health-complex-coxs-bazar', 1, NULL, NULL, 1),
(93, 'Ukhia Upazila Health Complex, Cox\'s Bazar', 'ukhia-upazila-health-complex-coxs-bazar', 1, NULL, NULL, 1),
(94, 'Barura Upazila Health Complex, Cumilla', 'barura-upazila-health-complex-cumilla', 1, NULL, NULL, 1),
(95, 'Brahmmanpara Upazila Health Complex, Cumilla', 'brahmmanpara-upazila-health-complex-cumilla', 1, NULL, NULL, 1),
(96, 'Burichong Upazila Health Complex, Cumilla', 'burichong-upazila-health-complex-cumilla', 1, NULL, NULL, 1),
(97, 'Chandina Upazila Health Complex, Cumilla', 'chandina-upazila-health-complex-cumilla', 1, NULL, NULL, 1),
(98, 'Comilla Sadar Daxin Upazila Health Complex, Cumilla', 'comilla-sadar-daxin-upazila-health-complex-cumilla', 1, NULL, NULL, 1),
(99, 'Daudkandi Upazila Health Complex, Cumilla', 'daudkandi-upazila-health-complex-cumilla', 1, NULL, NULL, 1),
(100, 'Laksham Upazila Health Complex, Cumilla', 'laksham-upazila-health-complex-cumilla', 1, NULL, NULL, 1),
(101, 'Monoharganj Upazila Health Complex, Cumilla', 'monoharganj-upazila-health-complex-cumilla', 1, NULL, NULL, 1),
(102, 'Meghna Upazila Health Complex, Cumilla', 'meghna-upazila-health-complex-cumilla', 1, NULL, NULL, 1),
(103, 'Titas Upazila Health Complex, Cumilla', 'titas-upazila-health-complex-cumilla', 1, NULL, NULL, 1),
(104, 'Daganbhuiya Upazila Health Complex, Feni', 'daganbhuiya-upazila-health-complex-feni', 1, NULL, NULL, 1),
(105, 'Fulgazi Upazila Health Complex, Feni', 'fulgazi-upazila-health-complex-feni', 1, NULL, NULL, 1),
(106, 'Sonagazi Upazila Health Complex, Feni', 'sonagazi-upazila-health-complex-feni', 1, NULL, NULL, 1),
(107, 'Dighinala Upazila Health Complex, Khagrachhari', 'dighinala-upazila-health-complex-khagrachhari', 1, NULL, NULL, 1),
(108, 'Lakshmichari Upazila Health Complex, Khagrachhari', 'lakshmichari-upazila-health-complex-khagrachhari', 1, NULL, NULL, 1),
(109, 'Mohalchari Upazila Health Complex, Khagrachhari', 'mohalchari-upazila-health-complex-khagrachhari', 1, NULL, NULL, 1),
(110, 'Manikchari Upazila Health Complex, Khagrachhari', 'manikchari-upazila-health-complex-khagrachhari', 1, NULL, NULL, 1),
(111, 'Matiranga Upazila Health Complex, Khagrachhari', 'matiranga-upazila-health-complex-khagrachhari', 1, NULL, NULL, 1),
(112, 'Panchari Upazila Health Complex, Khagrachhari', 'panchari-upazila-health-complex-khagrachhari', 1, NULL, NULL, 1),
(113, 'Ramgarh Upazila Health Complex, Khagrachhari', 'ramgarh-upazila-health-complex-khagrachhari', 1, NULL, NULL, 1),
(114, 'Kamolnagar Upazila Health Complex, Lakshmipur', 'kamolnagar-upazila-health-complex-lakshmipur', 1, NULL, NULL, 1),
(115, 'Ramganj Upazila Health Complex, Lakshmipur', 'ramganj-upazila-health-complex-lakshmipur', 1, NULL, NULL, 1),
(116, 'Ramgati Upazila Health Complex, Lakshmipur', 'ramgati-upazila-health-complex-lakshmipur', 1, NULL, NULL, 1),
(117, 'Kabirhat Upazila Health Complex, Noakhali', 'kabirhat-upazila-health-complex-noakhali', 1, NULL, NULL, 1),
(118, 'Sonaimuri Upazila Health Complex, Noakhali', 'sonaimuri-upazila-health-complex-noakhali', 1, NULL, NULL, 1),
(119, 'Baghaichari Upazila Health Complex, Rangamati', 'baghaichari-upazila-health-complex-rangamati', 1, NULL, NULL, 1),
(120, 'Barkal Upazila Health Complex, Rangamati', 'barkal-upazila-health-complex-rangamati', 1, NULL, NULL, 1),
(121, 'Belaichari Upazila Health Complex, Rangamati', 'belaichari-upazila-health-complex-rangamati', 1, NULL, NULL, 1),
(122, 'Juraichari Upazila Health Complex, Rangamati', 'juraichari-upazila-health-complex-rangamati', 1, NULL, NULL, 1),
(123, 'Kaptai Upazila Health Complex, Rangamati', 'kaptai-upazila-health-complex-rangamati', 1, NULL, NULL, 1),
(124, 'Kawkhali Upazila Health Complex, Rangamati', 'kawkhali-upazila-health-complex-rangamati', 1, NULL, NULL, 1),
(125, 'Langadu Upazila Health Complex, Rangamati', 'langadu-upazila-health-complex-rangamati', 1, NULL, NULL, 1),
(126, 'Naniarchar Upazila Health Complex, Rangamati', 'naniarchar-upazila-health-complex-rangamati', 1, NULL, NULL, 1),
(127, 'Rajasthali Upazila Health Complex, Rangamati', 'rajasthali-upazila-health-complex-rangamati', 1, NULL, NULL, 1),
(128, 'Keraniganj Upazila Health Complex, Dhaka', 'keraniganj-upazila-health-complex-dhaka', 1, NULL, NULL, 1),
(129, 'Alfadanga Upazila Health Complex, Faridpur', 'alfadanga-upazila-health-complex-faridpur', 1, NULL, NULL, 1),
(130, 'Charbhadrason Upazila Health Complex, Faridpur', 'charbhadrason-upazila-health-complex-faridpur', 1, NULL, NULL, 1),
(131, 'Modhukhali Upazila Health Complex, Faridpur', 'modhukhali-upazila-health-complex-faridpur', 1, NULL, NULL, 1),
(132, 'Sadarpur Upazila Health Complex, Faridpur', 'sadarpur-upazila-health-complex-faridpur', 1, NULL, NULL, 1),
(133, 'Saltha Upazila Health Complex, Faridpur', 'saltha-upazila-health-complex-faridpur', 1, NULL, NULL, 1),
(134, 'Kaliakair Upazila Health Complex, Gazipur', 'kaliakair-upazila-health-complex-gazipur', 1, NULL, NULL, 1),
(135, 'Sreepur Upazila Health Complex, Gazipur', 'sreepur-upazila-health-complex-gazipur', 1, NULL, NULL, 1),
(136, 'Kotwalipara Upazila Health Complex, Gopalganj', 'kotwalipara-upazila-health-complex-gopalganj', 1, NULL, NULL, 1),
(137, 'Mukshedpur Upazila Health Complex, Gopalganj', 'mukshedpur-upazila-health-complex-gopalganj', 1, NULL, NULL, 1),
(138, 'Tungipara Upazila Health Complex, Gopalganj', 'tungipara-upazila-health-complex-gopalganj', 1, NULL, NULL, 1),
(139, 'Austagram Upazila Health Complex, Kishorgonj', 'austagram-upazila-health-complex-kishorgonj', 1, NULL, NULL, 1),
(140, 'Bajitpur Upazila Health Complex, Kishorgonj', 'bajitpur-upazila-health-complex-kishorgonj', 1, NULL, NULL, 1),
(141, 'Hossainpur Upazila Health Complex, Kishorgonj', 'hossainpur-upazila-health-complex-kishorgonj', 1, NULL, NULL, 1),
(142, 'Itna Upazila Health Complex, Kishorgonj', 'itna-upazila-health-complex-kishorgonj', 1, NULL, NULL, 1),
(143, 'Katiadi Upazila Health Complex, Kishorgonj', 'katiadi-upazila-health-complex-kishorgonj', 1, NULL, NULL, 1),
(144, 'Kuliarchar Upazila Health Complex, Kishorgonj', 'kuliarchar-upazila-health-complex-kishorgonj', 1, NULL, NULL, 1),
(145, 'Mithamoin Upazila Health Complex, Kishorgonj', 'mithamoin-upazila-health-complex-kishorgonj', 1, NULL, NULL, 1),
(146, 'Nikli Upazila Health Complex, Kishorgonj', 'nikli-upazila-health-complex-kishorgonj', 1, NULL, NULL, 1),
(147, 'Pakundia Upazila Health Complex, Kishorgonj', 'pakundia-upazila-health-complex-kishorgonj', 1, NULL, NULL, 1),
(148, 'Kalkini Upazila Health Complex, Madaripur', 'kalkini-upazila-health-complex-madaripur', 1, NULL, NULL, 1),
(149, 'Rajoir Upazila Health Complex, Madaripur', 'rajoir-upazila-health-complex-madaripur', 1, NULL, NULL, 1),
(150, 'Daulatpur Upazila Health Complex, Manikganj', 'daulatpur-upazila-health-complex-manikganj', 1, NULL, NULL, 1),
(151, 'Ghior Upazila Health Complex, Manikganj', 'ghior-upazila-health-complex-manikganj', 1, NULL, NULL, 1),
(152, 'Harirampur Upazila Health Complex, Manikganj', 'harirampur-upazila-health-complex-manikganj', 1, NULL, NULL, 1),
(153, 'Saturia Upazila Health Complex, Manikganj', 'saturia-upazila-health-complex-manikganj', 1, NULL, NULL, 1),
(154, 'Shibalaya Upazila Health Complex, Manikganj', 'shibalaya-upazila-health-complex-manikganj', 1, NULL, NULL, 1),
(155, 'Singair Upazila Health Complex, Manikganj', 'singair-upazila-health-complex-manikganj', 1, NULL, NULL, 1),
(156, 'Araihazar Upazila Health Complex, Narayanganj', 'araihazar-upazila-health-complex-narayanganj', 1, NULL, NULL, 1),
(157, 'Bandar Upazila Health Complex, Narayanganj', 'bandar-upazila-health-complex-narayanganj', 1, NULL, NULL, 1),
(158, 'Rupganj Upazila Health Complex, Narayanganj', 'rupganj-upazila-health-complex-narayanganj', 1, NULL, NULL, 1),
(159, 'Sonargaon Upazila Health Complex, Narayanganj', 'sonargaon-upazila-health-complex-narayanganj', 1, NULL, NULL, 1),
(160, 'Belabo Upazila Health Complex, Narsingdi', 'belabo-upazila-health-complex-narsingdi', 1, NULL, NULL, 1),
(161, 'Palash Upazila Health Complex, Narsingdi', 'palash-upazila-health-complex-narsingdi', 1, NULL, NULL, 1),
(162, 'Raipura Upazila Health Complex, Narsingdi', 'raipura-upazila-health-complex-narsingdi', 1, NULL, NULL, 1),
(163, 'Shibpur Upazila Health Complex, Narsingdi', 'shibpur-upazila-health-complex-narsingdi', 1, NULL, NULL, 1),
(164, 'Baliakandi Upazila Health Complex, Rajbari', 'baliakandi-upazila-health-complex-rajbari', 1, NULL, NULL, 1),
(165, 'Kalukhali Upazila Health Complex, Rajbari', 'kalukhali-upazila-health-complex-rajbari', 1, NULL, NULL, 1),
(166, 'Bhedarganj Upazila Health Complex, Shariatpur', 'bhedarganj-upazila-health-complex-shariatpur', 1, NULL, NULL, 1),
(167, 'Damudya Upazila Health Complex, Shariatpur', 'damudya-upazila-health-complex-shariatpur', 1, NULL, NULL, 1),
(168, 'Goshairhat Upazila Health Complex, Shariatpur', 'goshairhat-upazila-health-complex-shariatpur', 1, NULL, NULL, 1),
(169, 'Naria Upazila Health Complex, Shariatpur', 'naria-upazila-health-complex-shariatpur', 1, NULL, NULL, 1),
(170, 'Zanjira Upazila Health Complex, Shariatpur', 'zanjira-upazila-health-complex-shariatpur', 1, NULL, NULL, 1),
(171, 'Bhuapur Upazila Health Complex, Tangail', 'bhuapur-upazila-health-complex-tangail', 1, NULL, NULL, 1),
(172, 'Delduar Upazila Health Complex, Tangail', 'delduar-upazila-health-complex-tangail', 1, NULL, NULL, 1),
(173, 'Gopalpur Upazila Health Complex, Tangail', 'gopalpur-upazila-health-complex-tangail', 1, NULL, NULL, 1),
(174, 'Mirzapur Upazila Health Complex, Tangail', 'mirzapur-upazila-health-complex-tangail', 1, NULL, NULL, 1),
(175, 'Nagarpur Upazila Health Complex, Tangail', 'nagarpur-upazila-health-complex-tangail', 1, NULL, NULL, 1),
(176, 'Morrelganj Upazila Health Complex, Bagerhat', 'morrelganj-upazila-health-complex-bagerhat', 1, NULL, NULL, 1),
(177, 'Sarankhola Upazila Health Complex, Bagerhat', 'sarankhola-upazila-health-complex-bagerhat', 1, NULL, NULL, 1),
(178, 'Alamdanga Upazila Health Complex, Chuadanga', 'alamdanga-upazila-health-complex-chuadanga', 1, NULL, NULL, 1),
(179, 'Damurhuda Upazila Health Complex, Chuadanga', 'damurhuda-upazila-health-complex-chuadanga', 1, NULL, NULL, 1),
(180, 'Jibannagar Upazila Health Complex, Chuadanga', 'jibannagar-upazila-health-complex-chuadanga', 1, NULL, NULL, 1),
(181, 'Bagherpara Upazila Health Complex, Jashore', 'bagherpara-upazila-health-complex-jashore', 1, NULL, NULL, 1),
(182, 'Jhikargacha Upazila Health Complex, Jashore', 'jhikargacha-upazila-health-complex-jashore', 1, NULL, NULL, 1),
(183, 'Monirampur Upazila Health Complex, Jashore', 'monirampur-upazila-health-complex-jashore', 1, NULL, NULL, 1),
(184, 'Sarsa Upazila Health Complex, Jashore', 'sarsa-upazila-health-complex-jashore', 1, NULL, NULL, 1),
(185, 'Shailkupa Upazila Health Complex, Jhenaidah', 'shailkupa-upazila-health-complex-jhenaidah', 1, NULL, NULL, 1),
(186, 'Batiaghata Upazila Health Complex, Khulna', 'batiaghata-upazila-health-complex-khulna', 1, NULL, NULL, 1),
(187, 'Dighalia Upazila Health Complex, Khulna', 'dighalia-upazila-health-complex-khulna', 1, NULL, NULL, 1),
(188, 'Dumuria Upazila Health Complex, Khulna', 'dumuria-upazila-health-complex-khulna', 1, NULL, NULL, 1),
(189, 'Koyra Upazila Health Complex, Khulna', 'koyra-upazila-health-complex-khulna', 1, NULL, NULL, 1),
(190, 'Paikgacha Upazila Health Complex, Khulna', 'paikgacha-upazila-health-complex-khulna', 1, NULL, NULL, 1),
(191, 'Rupsha Upazila Health Complex, Khulna', 'rupsha-upazila-health-complex-khulna', 1, NULL, NULL, 1),
(192, 'Terokhada Upazila Health Complex, Khulna', 'terokhada-upazila-health-complex-khulna', 1, NULL, NULL, 1),
(193, 'Khoksha Upazila Health Complex, Kushtia', 'khoksha-upazila-health-complex-kushtia', 1, NULL, NULL, 1),
(194, 'Kumarkhali Upazila Health Complex, Kushtia', 'kumarkhali-upazila-health-complex-kushtia', 1, NULL, NULL, 1),
(195, 'Mohammadpur Upazila Health Complex, Magura', 'mohammadpur-upazila-health-complex-magura', 1, NULL, NULL, 1),
(196, 'Shalikha Upazila Health Complex, Magura', 'shalikha-upazila-health-complex-magura', 1, NULL, NULL, 1),
(197, 'Sreepur Upazila Health Complex, Magura', 'sreepur-upazila-health-complex-magura', 1, NULL, NULL, 1),
(198, 'Mujibnagar Upazila Health Complex, Meherpur', 'mujibnagar-upazila-health-complex-meherpur', 1, NULL, NULL, 1),
(199, 'Lohagara Upazila Health Complex, Narail', 'lohagara-upazila-health-complex-narail', 1, NULL, NULL, 1),
(200, 'Assasuni Upazila Health Complex, Satkhira', 'assasuni-upazila-health-complex-satkhira', 1, NULL, NULL, 1),
(201, 'Debhata Upazila Health Complex, Satkhira', 'debhata-upazila-health-complex-satkhira', 1, NULL, NULL, 1),
(202, 'Kaliganj Upazila Health Complex, Satkhira', 'kaliganj-upazila-health-complex-satkhira', 1, NULL, NULL, 1),
(203, 'Bakshiganj Upazila Health Complex, Jamalpur', 'bakshiganj-upazila-health-complex-jamalpur', 1, NULL, NULL, 1),
(204, 'Dewanganj Upazila Health Complex, Jamalpur', 'dewanganj-upazila-health-complex-jamalpur', 1, NULL, NULL, 1),
(205, 'Madarganj Upazila Health Complex, Jamalpur', 'madarganj-upazila-health-complex-jamalpur', 1, NULL, NULL, 1),
(206, 'Bhaluka Upazila Health Complex, Mymensingh', 'bhaluka-upazila-health-complex-mymensingh', 1, NULL, NULL, 1),
(207, 'Dhubaura Upazila Health Complex, Mymensingh', 'dhubaura-upazila-health-complex-mymensingh', 1, NULL, NULL, 1),
(208, 'Fulbaria Upazila Health Complex, Mymensingh', 'fulbaria-upazila-health-complex-mymensingh', 1, NULL, NULL, 1),
(209, 'Gouripur Upazila Health Complex, Mymensingh', 'gouripur-upazila-health-complex-mymensingh', 1, NULL, NULL, 1),
(210, 'Haluaghat Upazila Health Complex, Mymensingh', 'haluaghat-upazila-health-complex-mymensingh', 1, NULL, NULL, 1),
(211, 'Muktagacha Upazila Health Complex, Mymensingh', 'muktagacha-upazila-health-complex-mymensingh', 1, NULL, NULL, 1),
(212, 'Atpara Upazila Health Complex, Netrakona', 'atpara-upazila-health-complex-netrakona', 1, NULL, NULL, 1),
(213, 'Barhatta Upazila Health Complex, Netrakona', 'barhatta-upazila-health-complex-netrakona', 1, NULL, NULL, 1),
(214, 'Durgapur Upazila Health Complex, Netrakona', 'durgapur-upazila-health-complex-netrakona', 1, NULL, NULL, 1),
(215, 'Khaliajuri Upazila Health Complex, Netrakona', 'khaliajuri-upazila-health-complex-netrakona', 1, NULL, NULL, 1),
(216, 'Jhenaigati Upazila Health Complex, Sherpur', 'jhenaigati-upazila-health-complex-sherpur', 1, NULL, NULL, 1),
(217, 'Nakhla Upazila Health Complex, Sherpur', 'nakhla-upazila-health-complex-sherpur', 1, NULL, NULL, 1),
(218, 'Nalitabari Upazila Health Complex, Sherpur', 'nalitabari-upazila-health-complex-sherpur', 1, NULL, NULL, 1),
(219, 'Sribordi Upazila health Complex, Sherpur', 'sribordi-upazila-health-complex-sherpur', 1, NULL, NULL, 1),
(220, 'Dhupchachia Upazila Health Complex, Bogura', 'dhupchachia-upazila-health-complex-bogura', 1, NULL, NULL, 1),
(221, 'Nandigram Upazila Health Complex, Bogura', 'nandigram-upazila-health-complex-bogura', 1, NULL, NULL, 1),
(222, 'Shajahanpur Upazila Health Complex, Bogura', 'shajahanpur-upazila-health-complex-bogura', 1, NULL, NULL, 1),
(223, 'Sherpur Upazila Health Complex, Bogura', 'sherpur-upazila-health-complex-bogura', 1, NULL, NULL, 1),
(224, 'Bholahat Upazila Health Complex, Chapai Nawabganj', 'bholahat-upazila-health-complex-chapai-nawabganj', 1, NULL, NULL, 1),
(225, 'Gomastapur Upazila Health Complex, Chapai Nawabganj', 'gomastapur-upazila-health-complex-chapai-nawabganj', 1, NULL, NULL, 1),
(226, 'Nachol Upazila Health Complex, Chapai Nawabganj', 'nachol-upazila-health-complex-chapai-nawabganj', 1, NULL, NULL, 1),
(227, 'Khetlal Upazila Health Complex, Joypurhat', 'khetlal-upazila-health-complex-joypurhat', 1, NULL, NULL, 1),
(228, 'Panchbibi Upazila Health Complex, Joypurhat', 'panchbibi-upazila-health-complex-joypurhat', 1, NULL, NULL, 1),
(229, 'Atrai Upazila Health Complex, Naogaon', 'atrai-upazila-health-complex-naogaon', 1, NULL, NULL, 1),
(230, 'Niamatpur Upazila Health Complex, Naogaon', 'niamatpur-upazila-health-complex-naogaon', 1, NULL, NULL, 1),
(231, 'Porsha Upazila Health Complex, Naogaon', 'porsha-upazila-health-complex-naogaon', 1, NULL, NULL, 1),
(232, 'Raninagar Upazila Health Complex, Naogaon', 'raninagar-upazila-health-complex-naogaon', 1, NULL, NULL, 1),
(233, 'Bagatipara Upazila Health Complex, Natore', 'bagatipara-upazila-health-complex-natore', 1, NULL, NULL, 1),
(234, 'Baraigram Upazila Health Complex, Natore', 'baraigram-upazila-health-complex-natore', 1, NULL, NULL, 1),
(235, 'Gurudashpur Upazila Health Complex, Natore', 'gurudashpur-upazila-health-complex-natore', 1, NULL, NULL, 1),
(236, 'Singra Upazila Health Complex, Natore', 'singra-upazila-health-complex-natore', 1, NULL, NULL, 1),
(237, 'Atgharia Upazila Health Complex, Pabna', 'atgharia-upazila-health-complex-pabna', 1, NULL, NULL, 1),
(238, 'Bera Upazila Health Complex, Pabna', 'bera-upazila-health-complex-pabna', 1, NULL, NULL, 1),
(239, 'Bhangura Upazila Health Complex, Pabna', 'bhangura-upazila-health-complex-pabna', 1, NULL, NULL, 1),
(240, 'Iswardi Upazila Health Complex, Pabna', 'iswardi-upazila-health-complex-pabna', 1, NULL, NULL, 1),
(241, 'Santhia Upazila Health Complex, Pabna', 'santhia-upazila-health-complex-pabna', 1, NULL, NULL, 1),
(242, 'Bagha Upazila Health Complex, Rajshahi', 'bagha-upazila-health-complex-rajshahi', 1, NULL, NULL, 1),
(243, 'Bagmara Upazila Health Complex, Rajshahi', 'bagmara-upazila-health-complex-rajshahi', 1, NULL, NULL, 1),
(244, 'Godagari Upazila Health Complex, Rajshahi', 'godagari-upazila-health-complex-rajshahi', 1, NULL, NULL, 1),
(245, 'Mohanpur Upazila Health Complex, Rajshahi', 'mohanpur-upazila-health-complex-rajshahi', 1, NULL, NULL, 1),
(246, 'Paba Upazila Health Complex, Rajshahi', 'paba-upazila-health-complex-rajshahi', 1, NULL, NULL, 1),
(247, 'Belkuchi Upazila Health Complex, Sirajganj', 'belkuchi-upazila-health-complex-sirajganj', 1, NULL, NULL, 1),
(248, 'Chowhali Upazila Health Complex, Sirajganj', 'chowhali-upazila-health-complex-sirajganj', 1, NULL, NULL, 1),
(249, 'Kamarkhanda Upazila Health Complex, Sirajganj', 'kamarkhanda-upazila-health-complex-sirajganj', 1, NULL, NULL, 1),
(250, 'Kazipur Upazila Health Complex, Sirajganj', 'kazipur-upazila-health-complex-sirajganj', 1, NULL, NULL, 1),
(251, 'Raiganj Upazila Health Complex, Sirajganj', 'raiganj-upazila-health-complex-sirajganj', 1, NULL, NULL, 1),
(252, 'Shahzadpur Upazila Health Complex, Sirajganj', 'shahzadpur-upazila-health-complex-sirajganj', 1, NULL, NULL, 1),
(253, 'Tarash Upazila Health Complex, Sirajganj', 'tarash-upazila-health-complex-sirajganj', 1, NULL, NULL, 1),
(254, 'Ullapara Upazila Health Complex, Sirajganj', 'ullapara-upazila-health-complex-sirajganj', 1, NULL, NULL, 1),
(255, 'Birol Upazila Health Complex, Dinajpur', 'birol-upazila-health-complex-dinajpur', 1, NULL, NULL, 1),
(256, 'Birampur Upazila Health Complex, Dinajpur', 'birampur-upazila-health-complex-dinajpur', 1, NULL, NULL, 1),
(257, 'Birganj Upazila Health Complex, Dinajpur', 'birganj-upazila-health-complex-dinajpur', 1, NULL, NULL, 1),
(258, 'Chirirbandar Upazila Health Complex, Dinajpur', 'chirirbandar-upazila-health-complex-dinajpur', 1, NULL, NULL, 1),
(259, 'Fulbari Upazila Health Complex, Dinajpur', 'fulbari-upazila-health-complex-dinajpur', 1, NULL, NULL, 1),
(260, 'Ghoraghat Upazila Health Complex, Dinajpur', 'ghoraghat-upazila-health-complex-dinajpur', 1, NULL, NULL, 1),
(261, 'Hakimpur Upazila Health Complex, Dinajpur', 'hakimpur-upazila-health-complex-dinajpur', 1, NULL, NULL, 1),
(262, 'Kaharol Upazila Health Complex, Dinajpur', 'kaharol-upazila-health-complex-dinajpur', 1, NULL, NULL, 1),
(263, 'Khansama Upazila Health Complex, Dinajpur', 'khansama-upazila-health-complex-dinajpur', 1, NULL, NULL, 1),
(264, 'Nawabganj Upazila Health Complex, Dinajpur', 'nawabganj-upazila-health-complex-dinajpur', 1, NULL, NULL, 1),
(265, 'Fulchari Upazila Health Complex, Gaibandha', 'fulchari-upazila-health-complex-gaibandha', 1, NULL, NULL, 1),
(266, 'Palashbari Upazila Health Complex, Gaibandha', 'palashbari-upazila-health-complex-gaibandha', 1, NULL, NULL, 1),
(267, 'Sadullapur Upazila Health Complex, Gaibandha', 'sadullapur-upazila-health-complex-gaibandha', 1, NULL, NULL, 1),
(268, 'Shaghatta Upazila Health Complex, Gaibandha', 'shaghatta-upazila-health-complex-gaibandha', 1, NULL, NULL, 1),
(269, 'Sundarganj Upazila Health Complex, Gaibandha', 'sundarganj-upazila-health-complex-gaibandha', 1, NULL, NULL, 1),
(270, 'Bhurungamari Upazila Health Complex, Kurigram', 'bhurungamari-upazila-health-complex-kurigram', 1, NULL, NULL, 1),
(271, 'Nageswari Upazila Health Complex, Kurigram', 'nageswari-upazila-health-complex-kurigram', 1, NULL, NULL, 1),
(272, 'Fulbari Upazila Health Complex, Kurigram', 'fulbari-upazila-health-complex-kurigram', 1, NULL, NULL, 1),
(273, 'Rajarhat Upazila Health Complex, Kurigram', 'rajarhat-upazila-health-complex-kurigram', 1, NULL, NULL, 1),
(274, 'Rajibpur Upazila Health Complex, Kurigram', 'rajibpur-upazila-health-complex-kurigram', 1, NULL, NULL, 1),
(275, 'Rowmari Upazila Health Complex, Kurigram', 'rowmari-upazila-health-complex-kurigram', 1, NULL, NULL, 1),
(276, 'Aditmari Upazila Health Complex, Lalmonirhat', 'aditmari-upazila-health-complex-lalmonirhat', 1, NULL, NULL, 1),
(277, 'Hatibandha Upazila Health Complex, Lalmonirhat', 'hatibandha-upazila-health-complex-lalmonirhat', 1, NULL, NULL, 1),
(278, 'Patgram Upazila Health Complex, Lalmonirhat', 'patgram-upazila-health-complex-lalmonirhat', 1, NULL, NULL, 1),
(279, 'Jaldhaka Upazila Health Complex, Nilphamari', 'jaldhaka-upazila-health-complex-nilphamari', 1, NULL, NULL, 1),
(280, 'Kishoreganj Upazila Health Complex, Nilphamari', 'kishoreganj-upazila-health-complex-nilphamari', 1, NULL, NULL, 1),
(281, 'Saidpur Upazila Health Complex, Nilphamari', 'saidpur-upazila-health-complex-nilphamari', 1, NULL, NULL, 1),
(282, 'Atwari Upazila Health Complex, Panchagarh', 'atwari-upazila-health-complex-panchagarh', 1, NULL, NULL, 1),
(283, 'Badarganj Upazila Health Complex, Rangpur', 'badarganj-upazila-health-complex-rangpur', 1, NULL, NULL, 1),
(284, 'Kownia Upazila Health Complex, Rangpur', 'kownia-upazila-health-complex-rangpur', 1, NULL, NULL, 1),
(285, 'Pirgacha Upazila Health Complex, Rangpur', 'pirgacha-upazila-health-complex-rangpur', 1, NULL, NULL, 1),
(286, 'Taraganj Upazila Health Complex, Rangpur', 'taraganj-upazila-health-complex-rangpur', 1, NULL, NULL, 1),
(287, 'Pirganj Upazila Health Complex, Thakurgaon', 'pirganj-upazila-health-complex-thakurgaon', 1, NULL, NULL, 1),
(288, 'Ajmiriganj Upazila Health Complex, Habiganj', 'ajmiriganj-upazila-health-complex-habiganj', 1, NULL, NULL, 1),
(289, 'Bahubal Upazila Health Complex, Habiganj', 'bahubal-upazila-health-complex-habiganj', 1, NULL, NULL, 1),
(290, 'Baniachong Upazila Health Complex, Habiganj', 'baniachong-upazila-health-complex-habiganj', 1, NULL, NULL, 1),
(291, 'Chunarughat Upazila Health Complex, Hobigonj., Habiganj', 'chunarughat-upazila-health-complex-hobigonj-habiganj', 1, NULL, NULL, 1),
(292, 'Lakhai Upazila Health Complex, Habiganj', 'lakhai-upazila-health-complex-habiganj', 1, NULL, NULL, 1),
(293, 'Nabiganj Upazila Health Complex, Habiganj', 'nabiganj-upazila-health-complex-habiganj', 1, NULL, NULL, 1),
(294, 'Barlekha Upazila Health Complex, Maulvibazar', 'barlekha-upazila-health-complex-maulvibazar', 1, NULL, NULL, 1),
(295, 'Juri Upazila Health Complex, Maulvibazar', 'juri-upazila-health-complex-maulvibazar', 1, NULL, NULL, 1),
(296, 'Kamalganj Upazila Health Complex, Maulvibazar', 'kamalganj-upazila-health-complex-maulvibazar', 1, NULL, NULL, 1),
(297, 'Rajnagar Upazila Health Complex, Maulvibazar', 'rajnagar-upazila-health-complex-maulvibazar', 1, NULL, NULL, 1),
(298, 'Sreemangal Upazila Health Complex, Maulvibazar', 'sreemangal-upazila-health-complex-maulvibazar', 1, NULL, NULL, 1),
(299, 'Biswambarpur Upazila Health Complex, Sunamganj', 'biswambarpur-upazila-health-complex-sunamganj', 1, NULL, NULL, 1),
(300, 'Chhatak Upazila Health Complex, Sunamganj', 'chhatak-upazila-health-complex-sunamganj', 1, NULL, NULL, 1),
(301, 'Dakshin Sunamganj Upazila Health Complex, Sunamganj', 'dakshin-sunamganj-upazila-health-complex-sunamganj', 1, NULL, NULL, 1),
(302, 'Derai Upazila Health Complex, Sunamganj', 'derai-upazila-health-complex-sunamganj', 1, NULL, NULL, 1),
(303, 'Dharmapasha Upazila Health Complex, Sunamganj', 'dharmapasha-upazila-health-complex-sunamganj', 1, NULL, NULL, 1),
(304, 'Doarabazar Upazila Health Complex, Sunamganj', 'doarabazar-upazila-health-complex-sunamganj', 1, NULL, NULL, 1),
(305, 'Jamalganj Upazila Health Complex, Sunamganj', 'jamalganj-upazila-health-complex-sunamganj', 1, NULL, NULL, 1),
(306, 'Sulla Upazila Health Complex, Sunamganj', 'sulla-upazila-health-complex-sunamganj', 1, NULL, NULL, 1),
(307, 'Taherpur Upazila Health Complex, Sunamganj', 'taherpur-upazila-health-complex-sunamganj', 1, NULL, NULL, 1),
(308, 'Balaganj Upazila Health Complex, Sylhet', 'balaganj-upazila-health-complex-sylhet', 1, NULL, NULL, 1),
(309, 'Bishwanath Upazila Health Complex, Sylhet', 'bishwanath-upazila-health-complex-sylhet', 1, NULL, NULL, 1),
(310, 'Companyganj Upazila Health Complex, Sylhet', 'companyganj-upazila-health-complex-sylhet', 1, NULL, NULL, 1),
(311, 'Dakhin Surma Upazila Health Complex, Sylhet', 'dakhin-surma-upazila-health-complex-sylhet', 1, NULL, NULL, 1),
(312, 'Fenchuganj Upazila Health Complex, Sylhet', 'fenchuganj-upazila-health-complex-sylhet', 1, NULL, NULL, 1),
(313, 'Jaintapur Upazila Health Complex, Sylhet', 'jaintapur-upazila-health-complex-sylhet', 1, NULL, NULL, 1),
(314, 'Kanaighat Upazila Health Complex, Sylhet', 'kanaighat-upazila-health-complex-sylhet', 1, NULL, NULL, 1),
(315, 'Zokiganj Upazila Health Complex, Sylhet', 'zokiganj-upazila-health-complex-sylhet', 1, NULL, NULL, 1),
(316, 'Amtali Upazila Health Complex, Barguna', 'amtali-upazila-health-complex-barguna', 1, NULL, NULL, 1),
(317, 'Betagi Upazila Health Complex, Barguna', 'betagi-upazila-health-complex-barguna', 1, NULL, NULL, 1),
(318, 'Patharghata Upazila Health Complex, Barguna', 'patharghata-upazila-health-complex-barguna', 1, NULL, NULL, 1),
(319, 'Agailjhara Upazila Health Complex, Barishal', 'agailjhara-upazila-health-complex-barishal', 1, NULL, NULL, 1),
(320, 'Gournadi Upazila Health Complex, Barishal', 'gournadi-upazila-health-complex-barishal', 1, NULL, NULL, 1),
(321, 'Muladi Upazila Health Complex, Barishal', 'muladi-upazila-health-complex-barishal', 1, NULL, NULL, 1),
(322, 'Borhanuddin Upazila Health Complex, Bhola', 'borhanuddin-upazila-health-complex-bhola', 1, NULL, NULL, 1),
(323, 'Charfession Upazila Health Complex, Bhola', 'charfession-upazila-health-complex-bhola', 1, NULL, NULL, 1),
(324, 'Daulatkhan Upazila Health Complex, Bhola', 'daulatkhan-upazila-health-complex-bhola', 1, NULL, NULL, 1),
(325, 'Lalmohan Upazila Health Complex, Bhola', 'lalmohan-upazila-health-complex-bhola', 1, NULL, NULL, 1),
(326, 'Nalchithi Upazila Health Complex, Jhalokati', 'nalchithi-upazila-health-complex-jhalokati', 1, NULL, NULL, 1),
(327, 'Galachipa Upazila Health Complex, Patuakhali', 'galachipa-upazila-health-complex-patuakhali', 1, NULL, NULL, 1),
(328, 'Kalapara Upazila Health Complex, Patuakhali', 'kalapara-upazila-health-complex-patuakhali', 1, NULL, NULL, 1),
(329, 'Mathbaria Upazila Health Complex, Pirojpur', 'mathbaria-upazila-health-complex-pirojpur', 1, NULL, NULL, 1),
(330, 'Nesarabad Upazila Health Complex, Pirojpur', 'nesarabad-upazila-health-complex-pirojpur', 1, NULL, NULL, 1),
(331, 'Nasirnagar Upazila Health Complex, Brahmanbaria', 'nasirnagar-upazila-health-complex-brahmanbaria', 1, NULL, NULL, 1),
(332, 'Sarail Upazila Health Complex, Brahmanbaria', 'sarail-upazila-health-complex-brahmanbaria', 1, NULL, NULL, 1),
(333, 'Haziganj Upazila Health Complex, Chandpur', 'haziganj-upazila-health-complex-chandpur', 1, NULL, NULL, 1),
(334, 'Kachua Upazila Health Complex, Chandpur', 'kachua-upazila-health-complex-chandpur', 1, NULL, NULL, 1),
(335, 'Matlab(daxin) Upazila Health Complex, Chandpur', 'matlabdaxin-upazila-health-complex-chandpur', 1, NULL, NULL, 1),
(336, 'Anwara Upazila Health Complex, Chattogram', 'anwara-upazila-health-complex-chattogram', 1, NULL, NULL, 1),
(337, 'Banshkhali Upazila Health Complex, Chattogram', 'banshkhali-upazila-health-complex-chattogram', 1, NULL, NULL, 1),
(338, 'Boalkhali Upazila Health Complex, Chattogram', 'boalkhali-upazila-health-complex-chattogram', 1, NULL, NULL, 1),
(339, 'Chandanaish Upazila Health Complex, Chattogram', 'chandanaish-upazila-health-complex-chattogram', 1, NULL, NULL, 1),
(340, 'Hathazari Upazila Health Complex, Chattogram', 'hathazari-upazila-health-complex-chattogram', 1, NULL, NULL, 1),
(341, 'Lohagara Upazila Health Complex, Chattogram', 'lohagara-upazila-health-complex-chattogram', 1, NULL, NULL, 1),
(342, 'Mirarsarai Upazila Health Complex, Chattogram', 'mirarsarai-upazila-health-complex-chattogram', 1, NULL, NULL, 1),
(343, 'Patiya Upazila Health Complex, Chattogram', 'patiya-upazila-health-complex-chattogram', 1, NULL, NULL, 1),
(344, 'Rangunia Upazila Health Complex, Chattogram', 'rangunia-upazila-health-complex-chattogram', 1, NULL, NULL, 1),
(345, 'Sitakunda Upazila Health Complex, Chattogram', 'sitakunda-upazila-health-complex-chattogram', 1, NULL, NULL, 1),
(346, 'Chakaria Upazila Health Complex, Cox\'s Bazar', 'chakaria-upazila-health-complex-coxs-bazar', 1, NULL, NULL, 1),
(347, 'Kutubdia Upazila Health Complex, Cox\'s Bazar', 'kutubdia-upazila-health-complex-coxs-bazar', 1, NULL, NULL, 1),
(348, 'Moheshkhali Upazila Health Complex, Cox\'s Bazar', 'moheshkhali-upazila-health-complex-coxs-bazar', 1, NULL, NULL, 1),
(349, 'Chaddagram Upazila Health Complex, Cumilla', 'chaddagram-upazila-health-complex-cumilla', 1, NULL, NULL, 1),
(350, 'Debidwar Upazila Health Complex, Cumilla', 'debidwar-upazila-health-complex-cumilla', 1, NULL, NULL, 1),
(351, 'Homna Upazila Health Complex, Cumilla', 'homna-upazila-health-complex-cumilla', 1, NULL, NULL, 1),
(352, 'Langolkot Upazila Health Complex, Cumilla', 'langolkot-upazila-health-complex-cumilla', 1, NULL, NULL, 1),
(353, 'Muradnagar Upazila Health Complex, Cumilla', 'muradnagar-upazila-health-complex-cumilla', 1, NULL, NULL, 1),
(354, 'Chhagalnaya Upazila Health Complex, Feni', 'chhagalnaya-upazila-health-complex-feni', 1, NULL, NULL, 1),
(355, 'Parsuram Upazila Health Complex, Feni', 'parsuram-upazila-health-complex-feni', 1, NULL, NULL, 1),
(356, 'Raipur Upazila Health Complex, Lakshmipur', 'raipur-upazila-health-complex-lakshmipur', 1, NULL, NULL, 1),
(357, 'Begumganj Upazila Health Complex, Noakhali', 'begumganj-upazila-health-complex-noakhali', 1, NULL, NULL, 1),
(358, 'Chatkhil Upazila Health Complex, Noakhali', 'chatkhil-upazila-health-complex-noakhali', 1, NULL, NULL, 1),
(359, 'Companiganj Upazila Health Complex, Noakhali', 'companiganj-upazila-health-complex-noakhali', 1, NULL, NULL, 1),
(360, 'Hatiya Upazila Health Complex, Noakhali', 'hatiya-upazila-health-complex-noakhali', 1, NULL, NULL, 1),
(361, 'Senbag Upazila Health Complex, Noakhali', 'senbag-upazila-health-complex-noakhali', 1, NULL, NULL, 1),
(362, 'Subarnachar Upazila Health Complex, Noakhali', 'subarnachar-upazila-health-complex-noakhali', 1, NULL, NULL, 1),
(363, 'Dhamrai Upazila Health Complex, Dhaka', 'dhamrai-upazila-health-complex-dhaka', 1, NULL, NULL, 1),
(364, 'Dohar Upazila Health Complex, Dhaka', 'dohar-upazila-health-complex-dhaka', 1, NULL, NULL, 1),
(365, 'Nawabganj Upazila Health Complex, Dhaka', 'nawabganj-upazila-health-complex-dhaka', 1, NULL, NULL, 1),
(366, 'Savar Upazila Health Complex, Dhaka', 'savar-upazila-health-complex-dhaka', 1, NULL, NULL, 1),
(367, 'Bhanga Upazila Health Complex, Faridpur', 'bhanga-upazila-health-complex-faridpur', 1, NULL, NULL, 1),
(368, 'Boalmari Upazila Health Complex, Faridpur', 'boalmari-upazila-health-complex-faridpur', 1, NULL, NULL, 1),
(369, 'Nagarkanda Upazila Health Complex, Faridpur', 'nagarkanda-upazila-health-complex-faridpur', 1, NULL, NULL, 1),
(370, 'Kaliganj Upazila Health Complex, Gazipur', 'kaliganj-upazila-health-complex-gazipur', 1, NULL, NULL, 1),
(371, 'Kapasia Upazila Health Complex, Gazipur', 'kapasia-upazila-health-complex-gazipur', 1, NULL, NULL, 1),
(372, 'Kashiani Upazila Health Complex, Gopalganj', 'kashiani-upazila-health-complex-gopalganj', 1, NULL, NULL, 1),
(373, 'Bhairab Upazila Health Complex, Kishorgonj', 'bhairab-upazila-health-complex-kishorgonj', 1, NULL, NULL, 1),
(374, 'Karimganj Upazila Health Complex, Kishorgonj', 'karimganj-upazila-health-complex-kishorgonj', 1, NULL, NULL, 1),
(375, 'Tarail Upazila Health Complex, Kishorgonj', 'tarail-upazila-health-complex-kishorgonj', 1, NULL, NULL, 1),
(376, 'Shibchar Upazila Health Complex, Madaripur', 'shibchar-upazila-health-complex-madaripur', 1, NULL, NULL, 1),
(377, 'Gazaria Upazila Health Complex, Munshiganj', 'gazaria-upazila-health-complex-munshiganj', 1, NULL, NULL, 1),
(378, 'Louhajang Upazila Health Complex, Munshiganj', 'louhajang-upazila-health-complex-munshiganj', 1, NULL, NULL, 1),
(379, 'Serajdikhan Upazila Health Complex, Munshiganj', 'serajdikhan-upazila-health-complex-munshiganj', 1, NULL, NULL, 1),
(380, 'Sreenagar Upazila Health Complex, Munshiganj', 'sreenagar-upazila-health-complex-munshiganj', 1, NULL, NULL, 1),
(381, 'Tungibari Upazila Health Complex, Munshiganj', 'tungibari-upazila-health-complex-munshiganj', 1, NULL, NULL, 1),
(382, 'Monohardi Upazila Health Complex, Narsingdi', 'monohardi-upazila-health-complex-narsingdi', 1, NULL, NULL, 1),
(383, 'Goalanda Upazila Health Complex, Rajbari', 'goalanda-upazila-health-complex-rajbari', 1, NULL, NULL, 1),
(384, 'Pangsha Upazila Health Complex, Rajbari', 'pangsha-upazila-health-complex-rajbari', 1, NULL, NULL, 1),
(385, 'Basail Upazila Health Complex, Tangail', 'basail-upazila-health-complex-tangail', 1, NULL, NULL, 1),
(386, 'Dhanbari Upazila Health Complex, Tangail', 'dhanbari-upazila-health-complex-tangail', 1, NULL, NULL, 1),
(387, 'Ghatail Upazila Health Complex, Tangail', 'ghatail-upazila-health-complex-tangail', 1, NULL, NULL, 1),
(388, 'Kalihati Upazila Health Complex, Tangail', 'kalihati-upazila-health-complex-tangail', 1, NULL, NULL, 1),
(389, 'Modhupur Upazila Health Complex, Tangail', 'modhupur-upazila-health-complex-tangail', 1, NULL, NULL, 1),
(390, 'Sakhipur Upazila Health Complex, Tangail', 'sakhipur-upazila-health-complex-tangail', 1, NULL, NULL, 1),
(391, 'Chitalmari Upazila Health Complex, Bagerhat', 'chitalmari-upazila-health-complex-bagerhat', 1, NULL, NULL, 1),
(392, 'Fakirhat Upazila Health Complex, Bagerhat', 'fakirhat-upazila-health-complex-bagerhat', 1, NULL, NULL, 1),
(393, 'Kachua Upazila Health Complex, Bagerhat', 'kachua-upazila-health-complex-bagerhat', 1, NULL, NULL, 1),
(394, 'Mollahat Upazila Health Complex, Bagerhat', 'mollahat-upazila-health-complex-bagerhat', 1, NULL, NULL, 1),
(395, 'Mongla Upazila Health Complex, Bagerhat', 'mongla-upazila-health-complex-bagerhat', 1, NULL, NULL, 1),
(396, 'Rampal Upazila Health Complex, Bagerhat', 'rampal-upazila-health-complex-bagerhat', 1, NULL, NULL, 1),
(397, 'Abhoynagar Upazila Health Complex, Jashore', 'abhoynagar-upazila-health-complex-jashore', 1, NULL, NULL, 1),
(398, 'Chowgacha Upazila Health Complex, Jashore', 'chowgacha-upazila-health-complex-jashore', 1, NULL, NULL, 1),
(399, 'Keshabpur Upazila Health Complex, Jashore', 'keshabpur-upazila-health-complex-jashore', 1, NULL, NULL, 1),
(400, 'Harinakunda Upazila Health Complex, Jhenaidah', 'harinakunda-upazila-health-complex-jhenaidah', 1, NULL, NULL, 1),
(401, 'Kaliganj Upazila Health Complex, Jhenaidah', 'kaliganj-upazila-health-complex-jhenaidah', 1, NULL, NULL, 1),
(402, 'Kotchandpur Upazila Health Complex, Jhenaidah', 'kotchandpur-upazila-health-complex-jhenaidah', 1, NULL, NULL, 1),
(403, 'Moheshpur Upazila Health Complex, Jhenaidah', 'moheshpur-upazila-health-complex-jhenaidah', 1, NULL, NULL, 1),
(404, 'Dacope Upazila Health Complex, Khulna', 'dacope-upazila-health-complex-khulna', 1, NULL, NULL, 1),
(405, 'Fultala Upazila Health Complex, Khulna', 'fultala-upazila-health-complex-khulna', 1, NULL, NULL, 1),
(406, 'Bheramara Upazila Health Complex, Kushtia', 'bheramara-upazila-health-complex-kushtia', 1, NULL, NULL, 1),
(407, 'Daulatpur Upazila Health Complex, Kushtia', 'daulatpur-upazila-health-complex-kushtia', 1, NULL, NULL, 1),
(408, 'Mirpur Upazila Health Complex, Kushtia', 'mirpur-upazila-health-complex-kushtia', 1, NULL, NULL, 1),
(409, 'Gangni Upazila Health Complex, Meherpur', 'gangni-upazila-health-complex-meherpur', 1, NULL, NULL, 1),
(410, 'Kalia Upazila Health Complex, Narail', 'kalia-upazila-health-complex-narail', 1, NULL, NULL, 1),
(411, 'Kalaroa Upazila Health Complex, Satkhira', 'kalaroa-upazila-health-complex-satkhira', 1, NULL, NULL, 1),
(412, 'Shyamnagar Upazila Health Complex, Satkhira', 'shyamnagar-upazila-health-complex-satkhira', 1, NULL, NULL, 1),
(413, 'Tala Upazila Health Complex, Satkhira', 'tala-upazila-health-complex-satkhira', 1, NULL, NULL, 1),
(414, 'Islampur Upazila Health Complex, Jamalpur', 'islampur-upazila-health-complex-jamalpur', 1, NULL, NULL, 1),
(415, 'Melandaha Upazila Health Complex, Jamalpur', 'melandaha-upazila-health-complex-jamalpur', 1, NULL, NULL, 1),
(416, 'Sarishabari Upazila Health Complex, Jamalpur', 'sarishabari-upazila-health-complex-jamalpur', 1, NULL, NULL, 1),
(417, 'Gofargaon Upazila Health Complex, Mymensingh', 'gofargaon-upazila-health-complex-mymensingh', 1, NULL, NULL, 1),
(418, 'Iswarganj Upazila Health Complex, Mymensingh', 'iswarganj-upazila-health-complex-mymensingh', 1, NULL, NULL, 1),
(419, 'Nandail Upazila Health Complex, Mymensingh', 'nandail-upazila-health-complex-mymensingh', 1, NULL, NULL, 1),
(420, 'Phulpur Upazila Health Complex, Mymensingh, Mymensingh', 'phulpur-upazila-health-complex-mymensingh-mymensingh', 1, NULL, NULL, 1),
(421, 'Trisal Upazila Health Complex, Mymensingh', 'trisal-upazila-health-complex-mymensingh', 1, NULL, NULL, 1),
(422, 'Kalmakanda Upazila Health Complex, Netrakona', 'kalmakanda-upazila-health-complex-netrakona', 1, NULL, NULL, 1),
(423, 'Kendua Upazila Health Complex, Netrakona', 'kendua-upazila-health-complex-netrakona', 1, NULL, NULL, 1),
(424, 'Madan Upazila Health Complex, Netrakona', 'madan-upazila-health-complex-netrakona', 1, NULL, NULL, 1),
(425, 'Mohanganj Upazila  Health  Complex, Netrakona', 'mohanganj-upazila-health-complex-netrakona', 1, NULL, NULL, 1),
(426, 'Purbadhala Upazila Health Complex, Netrakona', 'purbadhala-upazila-health-complex-netrakona', 1, NULL, NULL, 1),
(427, 'Adamdighi Upazila Health Complex, Bogura', 'adamdighi-upazila-health-complex-bogura', 1, NULL, NULL, 1),
(428, 'Dhunat Upazila Health Complex, Bogura', 'dhunat-upazila-health-complex-bogura', 1, NULL, NULL, 1),
(429, 'Gabtali Upazila Health Complex, Bogura', 'gabtali-upazila-health-complex-bogura', 1, NULL, NULL, 1),
(430, 'Kahaloo Upazila Health Complex, Bogura', 'kahaloo-upazila-health-complex-bogura', 1, NULL, NULL, 1),
(431, 'Sariakandi Upazila Health Complex, Bogura', 'sariakandi-upazila-health-complex-bogura', 1, NULL, NULL, 1),
(432, 'Shibganj Upazila Health Complex, Bogra., Bogura', 'shibganj-upazila-health-complex-bogra-bogura', 1, NULL, NULL, 1),
(433, 'Sonatala Upazila Health Complex, Bogura', 'sonatala-upazila-health-complex-bogura', 1, NULL, NULL, 1),
(434, 'Shibganj Upazila Health Complex, Chapai Nawabganj', 'shibganj-upazila-health-complex-chapai-nawabganj', 1, NULL, NULL, 1),
(435, 'Akkelpur Upazila Health Complex, Joypurhat', 'akkelpur-upazila-health-complex-joypurhat', 1, NULL, NULL, 1),
(436, 'Kalai Upazila Health Complex, Joypurhat', 'kalai-upazila-health-complex-joypurhat', 1, NULL, NULL, 1),
(437, 'Badalgachi Upazila Health Complex, Naogaon', 'badalgachi-upazila-health-complex-naogaon', 1, NULL, NULL, 1),
(438, 'Dhamairhat Upazila Health Complex, Naogaon', 'dhamairhat-upazila-health-complex-naogaon', 1, NULL, NULL, 1),
(439, 'Mohadevpur Upazila Health Complex, Naogaon', 'mohadevpur-upazila-health-complex-naogaon', 1, NULL, NULL, 1),
(440, 'Manda Upazila Health Complex, Naogaon', 'manda-upazila-health-complex-naogaon', 1, NULL, NULL, 1),
(441, 'Patnitala Upazila Health Complex, Naogaon', 'patnitala-upazila-health-complex-naogaon', 1, NULL, NULL, 1),
(442, 'Sapahar Upazila Health Complex, Naogaon', 'sapahar-upazila-health-complex-naogaon', 1, NULL, NULL, 1),
(443, 'Lalpur Upazila Health Complex, Natore', 'lalpur-upazila-health-complex-natore', 1, NULL, NULL, 1),
(444, 'Chatmohar Upazila Health Complex, Pabna', 'chatmohar-upazila-health-complex-pabna', 1, NULL, NULL, 1),
(445, 'Faridpur Upazila Health Complex, Pabna', 'faridpur-upazila-health-complex-pabna', 1, NULL, NULL, 1),
(446, 'Sujanagar Upazila Health Complex, Pabna', 'sujanagar-upazila-health-complex-pabna', 1, NULL, NULL, 1),
(447, 'Charghat Upazila Health Complex, Rajshahi', 'charghat-upazila-health-complex-rajshahi', 1, NULL, NULL, 1),
(448, 'Durgapur Upazila Health Complex, Rajshahi', 'durgapur-upazila-health-complex-rajshahi', 1, NULL, NULL, 1),
(449, 'Puthia Upazila Health Complex, Rajshahi', 'puthia-upazila-health-complex-rajshahi', 1, NULL, NULL, 1),
(450, 'Tanore Upazila Health Complex, Rajshahi', 'tanore-upazila-health-complex-rajshahi', 1, NULL, NULL, 1),
(451, 'Bochaganj Upazila Health Complex, Dinajpur', 'bochaganj-upazila-health-complex-dinajpur', 1, NULL, NULL, 1),
(452, 'Parbatipur Upazila Health Complex, Dinajpur', 'parbatipur-upazila-health-complex-dinajpur', 1, NULL, NULL, 1),
(453, 'Gobindaganj Upazila Health Complex, Gaibandha', 'gobindaganj-upazila-health-complex-gaibandha', 1, NULL, NULL, 1),
(454, 'Chilmari Upazila Health Complex, Kurigram', 'chilmari-upazila-health-complex-kurigram', 1, NULL, NULL, 1);
INSERT INTO `service_institutions` (`id`, `name`, `slug`, `status_id`, `created_at`, `updated_at`, `branch_id`) VALUES
(455, 'Ulipur Upazila Health Complex, Kurigram', 'ulipur-upazila-health-complex-kurigram', 1, NULL, NULL, 1),
(456, 'Kaliganj Upazila Health Complex, Lalmonirhat', 'kaliganj-upazila-health-complex-lalmonirhat', 1, NULL, NULL, 1),
(457, 'Dimla Upazila Health Complex, Nilphamari', 'dimla-upazila-health-complex-nilphamari', 1, NULL, NULL, 1),
(458, 'Domar Upazila Health Complex, Nilphamari', 'domar-upazila-health-complex-nilphamari', 1, NULL, NULL, 1),
(459, 'Boda Upazila Health Complex, Panchagarh', 'boda-upazila-health-complex-panchagarh', 1, NULL, NULL, 1),
(460, 'Debiganj Upazila Health Complex, Panchagarh', 'debiganj-upazila-health-complex-panchagarh', 1, NULL, NULL, 1),
(461, 'Tetulia Upazila Health Complex, Panchagarh', 'tetulia-upazila-health-complex-panchagarh', 1, NULL, NULL, 1),
(462, 'Gangachara Upazila Health Complex, Rangpur', 'gangachara-upazila-health-complex-rangpur', 1, NULL, NULL, 1),
(463, 'Mithapukur Upazila Health Complex, Rangpur', 'mithapukur-upazila-health-complex-rangpur', 1, NULL, NULL, 1),
(464, 'Pirganj Upazila Health Complex, Rangpur', 'pirganj-upazila-health-complex-rangpur', 1, NULL, NULL, 1),
(465, 'Baliadangi Upazila Health Complex, Thakurgaon', 'baliadangi-upazila-health-complex-thakurgaon', 1, NULL, NULL, 1),
(466, 'Haripur Upazila Health Complex, Thakurgaon', 'haripur-upazila-health-complex-thakurgaon', 1, NULL, NULL, 1),
(467, 'Ranisankhail Upazila Health Complex, Thakurgaon', 'ranisankhail-upazila-health-complex-thakurgaon', 1, NULL, NULL, 1),
(468, 'Madhabpur Upazila Health Complex, Habiganj', 'madhabpur-upazila-health-complex-habiganj', 1, NULL, NULL, 1),
(469, 'Kulaura Upazila Health Complex, Maulvibazar', 'kulaura-upazila-health-complex-maulvibazar', 1, NULL, NULL, 1),
(470, 'Jagannathpur Upazila Health Complex, Sunamganj', 'jagannathpur-upazila-health-complex-sunamganj', 1, NULL, NULL, 1),
(471, 'Beanibazar Upazila Health Complex, Sylhet', 'beanibazar-upazila-health-complex-sylhet', 1, NULL, NULL, 1),
(472, 'Golapganj Upazila Health Complex, Sylhet', 'golapganj-upazila-health-complex-sylhet', 1, NULL, NULL, 1),
(473, 'Gowainghat Upazila Health Complex, Sylhet', 'gowainghat-upazila-health-complex-sylhet', 1, NULL, NULL, 1),
(474, 'Barguna District Hospital', 'barguna-district-hospital', 1, NULL, NULL, 1),
(475, 'Barishal General Hospital', 'barishal-general-hospital', 1, NULL, NULL, 1),
(476, 'Bhola District Hospital', 'bhola-district-hospital', 1, NULL, NULL, 1),
(477, 'Jhalokathi District Hospital', 'jhalokathi-district-hospital', 1, NULL, NULL, 1),
(478, 'Pirojpur District Hospital', 'pirojpur-district-hospital', 1, NULL, NULL, 1),
(479, 'Bandarban District Hospital', 'bandarban-district-hospital', 1, NULL, NULL, 1),
(480, 'Comilla General Hospital', 'comilla-general-hospital', 1, NULL, NULL, 1),
(481, 'Khagrachari District Hospital', 'khagrachari-district-hospital', 1, NULL, NULL, 1),
(482, 'Lakshmipur District Hospital', 'lakshmipur-district-hospital', 1, NULL, NULL, 1),
(483, 'Rangamati General Hospital', 'rangamati-general-hospital', 1, NULL, NULL, 1),
(484, 'Faridpur General Hospital', 'faridpur-general-hospital', 1, NULL, NULL, 1),
(485, 'Madaripur District Hospital', 'madaripur-district-hospital', 1, NULL, NULL, 1),
(486, 'Narayanganj General (Victoria) Hospital', 'narayanganj-general-victoria-hospital', 1, NULL, NULL, 1),
(487, 'Narsingdi District Hospital', 'narsingdi-district-hospital', 1, NULL, NULL, 1),
(488, 'Rajbari District Hospital', 'rajbari-district-hospital', 1, NULL, NULL, 1),
(489, 'Shariatpur District Hospital', 'shariatpur-district-hospital', 1, NULL, NULL, 1),
(490, 'Bagerhat District Hospital', 'bagerhat-district-hospital', 1, NULL, NULL, 1),
(491, 'Chuadanga District Hospital', 'chuadanga-district-hospital', 1, NULL, NULL, 1),
(492, 'Jhenaidah District Hospital', 'jhenaidah-district-hospital', 1, NULL, NULL, 1),
(493, 'Narail District Hospital', 'narail-district-hospital', 1, NULL, NULL, 1),
(494, 'Satkhira District Hospital', 'satkhira-district-hospital', 1, NULL, NULL, 1),
(495, 'Netrokona District Hospital', 'netrokona-district-hospital', 1, NULL, NULL, 1),
(496, 'Sherpur District Hospital', 'sherpur-district-hospital', 1, NULL, NULL, 1),
(497, 'Chapai Nababganj District Hospital', 'chapai-nababganj-district-hospital', 1, NULL, NULL, 1),
(498, 'Naogaon District Hospital', 'naogaon-district-hospital', 1, NULL, NULL, 1),
(499, 'Natore District Hospital', 'natore-district-hospital', 1, NULL, NULL, 1),
(500, 'Lalmonirhat District Hospital', 'lalmonirhat-district-hospital', 1, NULL, NULL, 1),
(501, 'Nilphamari District Hospital', 'nilphamari-district-hospital', 1, NULL, NULL, 1),
(502, 'Panchagarh District Hospital', 'panchagarh-district-hospital', 1, NULL, NULL, 1),
(503, 'Thakurgaon District Hospital', 'thakurgaon-district-hospital', 1, NULL, NULL, 1),
(504, 'Sylhet Shahid Shamsuddin Ahmed District Hospita', 'sylhet-shahid-shamsuddin-ahmed-district-hospita', 1, NULL, NULL, 1),
(505, 'Joypurhat District Hospital', 'joypurhat-district-hospital', 1, NULL, NULL, 1),
(506, 'Gaibandha 200 bed Hospital', 'gaibandha-200-bed-hospital', 1, NULL, NULL, 1),
(507, 'Patuakhali 250 bed Sadar Hospital', 'patuakhali-250-bed-sadar-hospital', 1, NULL, NULL, 1),
(508, 'Brahmanbaria 250 Bed District Sadar Hospital', 'brahmanbaria-250-bed-district-sadar-hospital', 1, NULL, NULL, 1),
(509, 'Chandpur 250 Bed General Hospital', 'chandpur-250-bed-general-hospital', 1, NULL, NULL, 1),
(510, 'Chittagong 250 Bed General Hospital', 'chittagong-250-bed-general-hospital', 1, NULL, NULL, 1),
(511, 'Cox\'s Bazar 250 Bed District Sadar Hospital', 'coxs-bazar-250-bed-district-sadar-hospital', 1, NULL, NULL, 1),
(512, 'Feni 250 Bed District Sadar Hospital', 'feni-250-bed-district-sadar-hospital', 1, NULL, NULL, 1),
(513, 'Noakhali 250 Bed General Hospital', 'noakhali-250-bed-general-hospital', 1, NULL, NULL, 1),
(514, 'Gopalganj 250 bed General Hospital', 'gopalganj-250-bed-general-hospital', 1, NULL, NULL, 1),
(515, 'Kishoreganj 250 Bed District Sadar Hospital', 'kishoreganj-250-bed-district-sadar-hospital', 1, NULL, NULL, 1),
(516, 'Manikganj 250 Bed District Hospital', 'manikganj-250-bed-district-hospital', 1, NULL, NULL, 1),
(517, 'Munshiganj District Hospital', 'munshiganj-district-hospital', 1, NULL, NULL, 1),
(518, 'Tangail 250 Bed District Hospital', 'tangail-250-bed-district-hospital', 1, NULL, NULL, 1),
(519, 'Jessore 250 bed General Hospital', 'jessore-250-bed-general-hospital', 1, NULL, NULL, 1),
(520, 'Khulna 250 Bed General Hospital, Khulna', 'khulna-250-bed-general-hospital-khulna', 1, NULL, NULL, 1),
(521, 'Kushtia 250 bed General Hospital', 'kushtia-250-bed-general-hospital', 1, NULL, NULL, 1),
(522, 'Magura District Hospital', 'magura-district-hospital', 1, NULL, NULL, 1),
(523, 'Meherpur 250 bed District Hospital', 'meherpur-250-bed-district-hospital', 1, NULL, NULL, 1),
(524, 'Jamalpur 250 Beded General Hospital', 'jamalpur-250-beded-general-hospital', 1, NULL, NULL, 1),
(525, 'Bogra 250 bed Mohammad Ali District Hospital', 'bogra-250-bed-mohammad-ali-district-hospital', 1, NULL, NULL, 1),
(526, 'Pabna 250 bed General Hospital', 'pabna-250-bed-general-hospital', 1, NULL, NULL, 1),
(527, 'Sirajganj General Hospital', 'sirajganj-general-hospital', 1, NULL, NULL, 1),
(528, 'Dinajpur 250 bed General Hospital', 'dinajpur-250-bed-general-hospital', 1, NULL, NULL, 1),
(529, 'Kurigram District Hospital', 'kurigram-district-hospital', 1, NULL, NULL, 1),
(530, 'Habiganj District Hospital', 'habiganj-district-hospital', 1, NULL, NULL, 1),
(531, 'Moulvibazar 250 bed District Sadar Hospital', 'moulvibazar-250-bed-district-sadar-hospital', 1, NULL, NULL, 1),
(532, 'Sunamganj 250 bed District Sadar Hospital', 'sunamganj-250-bed-district-sadar-hospital', 1, NULL, NULL, 1),
(533, 'Kurmitola 500 Bed General Hospital', 'kurmitola-500-bed-general-hospital', 1, NULL, NULL, 1),
(534, 'Mugda 500 Bed General Hospital, Dhaka', 'mugda-500-bed-general-hospital-dhaka', 1, NULL, NULL, 1),
(535, 'Cox\'s Bazar Medical College Hospital', 'coxs-bazar-medical-college-hospital', 1, NULL, NULL, 1),
(536, 'Cumilla Medical College Hospital', 'cumilla-medical-college-hospital', 1, NULL, NULL, 1),
(537, 'Mugda Medical College Hospital, Dhaka', 'mugda-medical-college-hospital-dhaka', 1, NULL, NULL, 1),
(538, 'Faridpur Medical College Hospital', 'faridpur-medical-college-hospital', 1, NULL, NULL, 1),
(539, 'Shaheed Tajuddin Ahmad Medical College Hospital,\r\nGazipur', 'shaheed-tajuddin-ahmad-medical-college-hospital-gazipur', 1, NULL, NULL, 1),
(540, 'Shahid Syed Nazrul Islam Medical College Hospital', 'shahid-syed-nazrul-islam-medical-college-hospital', 1, NULL, NULL, 1),
(541, 'Sheikh Hasina Medical College Hospital, Tangail', 'sheikh-hasina-medical-college-hospital-tangail', 1, NULL, NULL, 1),
(542, 'Khulna Medical College Hospital', 'khulna-medical-college-hospital', 1, NULL, NULL, 1),
(543, 'Satkhira Medical College Hospital', 'satkhira-medical-college-hospital', 1, NULL, NULL, 1),
(544, 'Shaheed Ziaur Rahman Medical College Hospital, Bogra', 'shaheed-ziaur-rahman-medical-college-hospital-bogra', 1, NULL, NULL, 1),
(545, 'M Abdur Rahim Medical College Hospital', 'm-abdur-rahim-medical-college-hospital', 1, NULL, NULL, 1),
(546, 'Sher-e-bangla Medical College Hospital', 'sher-e-bangla-medical-college-hospital', 1, NULL, NULL, 1),
(547, 'Chittagong Medical College Hospital', 'chittagong-medical-college-hospital', 1, NULL, NULL, 1),
(548, 'Sir Salimullah Medical College Hospital', 'sir-salimullah-medical-college-hospital', 1, NULL, NULL, 1),
(549, 'Mymensingh Medical College Hospital', 'mymensingh-medical-college-hospital', 1, NULL, NULL, 1),
(550, 'Rajshahi Medical College Hospital', 'rajshahi-medical-college-hospital', 1, NULL, NULL, 1),
(551, 'Rangpur Medical College Hospital', 'rangpur-medical-college-hospital', 1, NULL, NULL, 1),
(552, 'Sylhet MAG Osmani Medical College Hospital', 'sylhet-mag-osmani-medical-college-hospital', 1, NULL, NULL, 1),
(553, 'Dhaka Dental College Hospital (Code:10000028)', 'dhaka-dental-college-hospital-code10000028', 1, NULL, NULL, 1),
(554, 'Sheikh Lutfar Rahman Dental College Hospital, Gopalganj.\r\n(Code:10025187)', 'sheikh-lutfar-rahman-dental-college-hospital-gopalganj-code10025187', 1, NULL, NULL, 1),
(555, 'Kurmitola 500 Bed General Hospital (Code:10017209)', 'kurmitola-500-bed-general-hospital-code10017209', 1, NULL, NULL, 1),
(556, 'Mugda 500 Bed General Hospital, Dhaka (Code:10013720)', 'mugda-500-bed-general-hospital-dhaka-code10013720', 1, NULL, NULL, 1),
(557, 'Govt. Homeopathic Medical College Hospital (Code:10019120)', 'govt-homeopathic-medical-college-hospital-code10019120', 1, NULL, NULL, 1),
(558, 'Govt. Unani & Ayurvedic Medical College Hospital (Code:10002305)', 'govt-unani-ayurvedic-medical-college-hospital-code10002305', 1, NULL, NULL, 1),
(559, 'Govt. Unani & Ayurvedic Medical College Hospital, Sylhet\r\n(Code:10002203)', 'govt-unani-ayurvedic-medical-college-hospital-sylhet-code10002203', 1, NULL, NULL, 1),
(560, 'Sher-e-bangla Medical College Hospital (Code:10001978)', 'sher-e-bangla-medical-college-hospital-code10001978', 1, NULL, NULL, 1),
(561, 'Chittagong Medical College Hospital (Code:10000756)', 'chittagong-medical-college-hospital-code10000756', 1, NULL, NULL, 1),
(562, 'Comilla Medical College Hospital (Code:10000867)', 'comilla-medical-college-hospital-code10000867', 1, NULL, NULL, 1),
(563, 'Sir Salimullah Medical College Hospital (Code:10000056)', 'sir-salimullah-medical-college-hospital-code10000056', 1, NULL, NULL, 1),
(564, 'Dhaka Medical College Hospital (Code:10000033)', 'dhaka-medical-college-hospital-code10000033', 1, NULL, NULL, 1),
(565, 'Shaheed Suhrawardy Medical College Hospital (Code:10000051)', 'shaheed-suhrawardy-medical-college-hospital-code10000051', 1, NULL, NULL, 1),
(566, 'Faridpur Medical College Hospital (Code:10000108)', 'faridpur-medical-college-hospital-code10000108', 1, NULL, NULL, 1),
(567, 'Shaheed Taj Uddin Ahmad Medical College Hospital, Gazipur\r\n(Code:10023251)', 'shaheed-taj-uddin-ahmad-medical-college-hospital-gazipur-code10023251', 1, NULL, NULL, 1),
(568, 'Shahid Syed Nazrul Islam Medical College Hospital (Code:10024987)', 'shahid-syed-nazrul-islam-medical-college-hospital-code10024987', 1, NULL, NULL, 1),
(569, 'Sheikh Hasina Medical College Hospital, Tangail (Code:10024593)', 'sheikh-hasina-medical-college-hospital-tangail-code10024593', 1, NULL, NULL, 1),
(570, 'Khulna Medical College Hospital (Code:10001807)', 'khulna-medical-college-hospital-code10001807', 1, NULL, NULL, 1),
(571, 'Satkhira 250 bed Medical College Hospital (Code:10024591)', 'satkhira-250-bed-medical-college-hospital-code10024591', 1, NULL, NULL, 1),
(572, 'Mymensingh Medical College Hospital (Code:10000397)', 'mymensingh-medical-college-hospital-code10000397', 1, NULL, NULL, 1),
(573, 'Shaheed Ziaur Rahman Medical College Hospital, Bogra\r\n(Code:10001111)', 'shaheed-ziaur-rahman-medical-college-hospital-bogra-code10001111', 1, NULL, NULL, 1),
(574, 'Rajshahi Medical College Hospital (Code:10001560)', 'rajshahi-medical-college-hospital-code10001560', 1, NULL, NULL, 1),
(575, 'M Abdur Rahim Medical College Hospital (Code:10002288)', 'm-abdur-rahim-medical-college-hospital-code10002288', 1, NULL, NULL, 1),
(576, 'Rangpur Medical College Hospital (Code:10001618)', 'rangpur-medical-college-hospital-code10001618', 1, NULL, NULL, 1),
(577, 'Sylhet MAG Osmani Medical College Hospital (Code:10002195)', 'sylhet-mag-osmani-medical-college-hospital-code10002195', 1, NULL, NULL, 1),
(578, 'Barguna District Hospital (Code:10001943)', 'barguna-district-hospital-code10001943', 1, NULL, NULL, 1),
(579, 'Barishal General Hospital (Code:10001972)', 'barishal-general-hospital-code10001972', 1, NULL, NULL, 1),
(580, 'Bhola District Hospital (Code:10002002)', 'bhola-district-hospital-code10002002', 1, NULL, NULL, 1),
(581, 'Jhalokathi District Hospital (Code:10002025)', 'jhalokathi-district-hospital-code10002025', 1, NULL, NULL, 1),
(582, 'Patuakhali 250 bed Sadar Hospital (Code:10002051)', 'patuakhali-250-bed-sadar-hospital-code10002051', 1, NULL, NULL, 1),
(583, 'Pirojpur District Hospital (Code:10002067)', 'pirojpur-district-hospital-code10002067', 1, NULL, NULL, 1),
(584, 'District Family Planning Office, Pirojpur (Code:10024005)', 'district-family-planning-office-pirojpur-code10024005', 1, NULL, NULL, 1),
(585, 'Bandarban District Hospital (Code:10000655)', 'bandarban-district-hospital-code10000655', 1, NULL, NULL, 1),
(586, 'Bangladesh Korea Moitree Hospital (Code:10002298)', 'bangladesh-korea-moitree-hospital-code10002298', 1, NULL, NULL, 1),
(587, 'Brahmanbaria 250 Bed District Sadar Hospital (Code:10000672)', 'brahmanbaria-250-bed-district-sadar-hospital-code10000672', 1, NULL, NULL, 1),
(588, 'Chandpur 250 Bed General Hospital (Code:10000700)', 'chandpur-250-bed-general-hospital-code10000700', 1, NULL, NULL, 1),
(589, 'Divisional Police Hospital, Chattogram (Code:10025023)', 'divisional-police-hospital-chattogram-code10025023', 1, NULL, NULL, 1),
(590, 'Chittagong 250 Bed General Hospital (Code:10000753)', 'chittagong-250-bed-general-hospital-code10000753', 1, NULL, NULL, 1),
(591, 'Cox\'s Bazar 250 Bed District Sadar Hospital\r\n(Code:10000922)', 'coxs-bazar-250-bed-district-sadar-hospital-code10000922', 1, NULL, NULL, 1),
(592, 'Comilla General Hospital (Code:10000864)', 'comilla-general-hospital-code10000864', 1, NULL, NULL, 1),
(593, 'Feni 250 Bed District Sadar Hospital (Code:10000954)', 'feni-250-bed-district-sadar-hospital-code10000954', 1, NULL, NULL, 1),
(594, 'Khagrachari District Hospital (Code:10000976)', 'khagrachari-district-hospital-code10000976', 1, NULL, NULL, 1),
(595, 'Lakshmipur District Hospital (Code:10001001)', 'lakshmipur-district-hospital-code10001001', 1, NULL, NULL, 1),
(596, 'Noakhali 250 Bed General Hospital (Code:10001049)', 'noakhali-250-bed-general-hospital-code10001049', 1, NULL, NULL, 1),
(597, 'Rangamati General Hospital (Code:10001088)', 'rangamati-general-hospital-code10001088', 1, NULL, NULL, 1),
(598, 'Kuwait Bangladesh Friendship Govt. Hospital\r\n(Code:10023662)', 'kuwait-bangladesh-friendship-govt-hospital-code10023662', 1, NULL, NULL, 1),
(599, 'Faridpur General Hospital (Code:10000105)', 'faridpur-general-hospital-code10000105', 1, NULL, NULL, 1),
(600, 'Shaheed Ahsan Ullah Master General Hospital\r\n(Code:10000129)', 'shaheed-ahsan-ullah-master-general-hospital-code10000129', 1, NULL, NULL, 1),
(601, 'Gazipur District Hospital (Code:10000137)', 'gazipur-district-hospital-code10000137', 1, NULL, NULL, 1),
(602, 'Gopalganj 250 bed General Hospital (Code:10002233)', 'gopalganj-250-bed-general-hospital-code10002233', 1, NULL, NULL, 1),
(603, 'Kishoreganj 250 Bed District Sadar Hospital (Code:10000243)', 'kishoreganj-250-bed-district-sadar-hospital-code10000243', 1, NULL, NULL, 1),
(604, 'Madaripur District Hospital (Code:10000263)', 'madaripur-district-hospital-code10000263', 1, NULL, NULL, 1),
(605, 'Manikganj 250 Bed District Hospital (Code:10000297)', 'manikganj-250-bed-district-hospital-code10000297', 1, NULL, NULL, 1),
(606, 'Munshiganj 250 bed District Hospital (Code:10000328)', 'munshiganj-250-bed-district-hospital-code10000328', 1, NULL, NULL, 1),
(607, 'Narayanganj 300 Bed Hospital (Code:10000425)', 'narayanganj-300-bed-hospital-code10000425', 1, NULL, NULL, 1),
(608, 'Narayanganj General (Victoria) Hospital (Code:10000427)', 'narayanganj-general-victoria-hospital-code10000427', 1, NULL, NULL, 1),
(609, 'Narsingdi District Hospital (Code:10000452)', 'narsingdi-district-hospital-code10000452', 1, NULL, NULL, 1),
(610, 'Narsingdi 100 Bed Zilla Hospital (Code:10000453)', 'narsingdi-100-bed-zilla-hospital-code10000453', 1, NULL, NULL, 1),
(611, 'Rajbari District Hospital (Code:10000536)', 'rajbari-district-hospital-code10000536', 1, NULL, NULL, 1),
(612, 'Shariatpur District Hospital (Code:10000559)', 'shariatpur-district-hospital-code10000559', 1, NULL, NULL, 1),
(613, 'Tangail 250 Bed District Hospital (Code:10000647)', 'tangail-250-bed-district-hospital-code10000647', 1, NULL, NULL, 1),
(614, 'Bagerhat District Hospital (Code:10001693)', 'bagerhat-district-hospital-code10001693', 1, NULL, NULL, 1),
(615, 'Chuadanga District Hospital (Code:10001723)', 'chuadanga-district-hospital-code10001723', 1, NULL, NULL, 1),
(616, 'Jessore 250 bed General Hospital (Code:10013096)', 'jessore-250-bed-general-hospital-code10013096', 1, NULL, NULL, 1),
(617, 'Jhenaidah District Hospital (Code:10001776)', 'jhenaidah-district-hospital-code10001776', 1, NULL, NULL, 1),
(618, 'Khulna 250 Bed General Hospital, Khulna\r\n(Code:10001805)', 'khulna-250-bed-general-hospital-khulna-code10001805', 1, NULL, NULL, 1),
(619, 'Kushtia 250 bed General Hospital (Code:10001862)', 'kushtia-250-bed-general-hospital-code10001862', 1, NULL, NULL, 1),
(620, 'Magura District Hospital (Code:10001876)', 'magura-district-hospital-code10001876', 1, NULL, NULL, 1),
(621, 'Meherpur 250 bed District Hospital (Code:10001898)', 'meherpur-250-bed-district-hospital-code10001898', 1, NULL, NULL, 1),
(622, 'Narail District Hospital (Code:10001913)', 'narail-district-hospital-code10001913', 1, NULL, NULL, 1),
(623, 'Satkhira District Hospital (Code:10001926)', 'satkhira-district-hospital-code10001926', 1, NULL, NULL, 1),
(624, 'Jamalpur 250 Beded General Hospital (Code:10000208)', 'jamalpur-250-beded-general-hospital-code10000208', 1, NULL, NULL, 1),
(625, 'Netrokona District Hospital (Code:10000496)', 'netrokona-district-hospital-code10000496', 1, NULL, NULL, 1),
(626, 'Sherpur District Hospital (Code:10000576)', 'sherpur-district-hospital-code10000576', 1, NULL, NULL, 1),
(627, 'Bogra 250 bed Mohammad Ali District Hospital\r\n(Code:10001109)', 'bogra-250-bed-mohammad-ali-district-hospital-code10001109', 1, NULL, NULL, 1),
(628, 'Chapai Nababganj District Hospital (Code:10001186)', 'chapai-nababganj-district-hospital-code10001186', 1, NULL, NULL, 1),
(629, 'Joypurhat District Hospital (Code:10001298)', 'joypurhat-district-hospital-code10001298', 1, NULL, NULL, 1),
(630, 'Naogaon District Hospital (Code:10001394)', 'naogaon-district-hospital-code10001394', 1, NULL, NULL, 1),
(631, 'Natore District Hospital (Code:10001433)', 'natore-district-hospital-code10001433', 1, NULL, NULL, 1),
(632, 'Pabna 250 bed General Hospital (Code:10001484)', 'pabna-250-bed-general-hospital-code10001484', 1, NULL, NULL, 1),
(633, '250 Bed Bongamata Sheikh Fazilatunnesa Mujib General Hospital, Sirajganj. (Code:10001648)', '250-bed-bongamata-sheikh-fazilatunnesa-mujib-general-hospital-sirajganj-code10001648', 1, NULL, NULL, 1),
(634, 'Dinajpur 250 bed General Hospital (Code:10001214)', 'dinajpur-250-bed-general-hospital-code10001214', 1, NULL, NULL, 1),
(635, 'Gaibandha District Hospital (Code:10001254)', 'gaibandha-district-hospital-code10001254', 1, NULL, NULL, 1),
(636, 'Kurigram 250 bed District Hospital (Code:10001317)', 'kurigram-250-bed-district-hospital-code10001317', 1, NULL, NULL, 1),
(637, 'Lalmonirhat District Hospital (Code:10001353)', 'lalmonirhat-district-hospital-code10001353', 1, NULL, NULL, 1),
(638, 'Nilphamari District Hospital (Code:10001464)', 'nilphamari-district-hospital-code10001464', 1, NULL, NULL, 1),
(639, 'Saidpur 100 Bed Hospital (Code:10001469)', 'saidpur-100-bed-hospital-code10001469', 1, NULL, NULL, 1),
(640, 'Panchagarh District Hospital (Code:10001514)', 'panchagarh-district-hospital-code10001514', 1, NULL, NULL, 1),
(641, 'Thakurgaon District Hospital (Code:10001687)', 'thakurgaon-district-hospital-code10001687', 1, NULL, NULL, 1),
(642, 'Habiganj District Hospital (Code:10002071)', 'habiganj-district-hospital-code10002071', 1, NULL, NULL, 1),
(643, 'Moulvibazar 250 bed District Sadar Hospital (Code:10002116)', 'moulvibazar-250-bed-district-sadar-hospital-code10002116', 1, NULL, NULL, 1),
(644, 'Sunamganj 250 bed District Sadar Hospital (Code:10002157)', 'sunamganj-250-bed-district-sadar-hospital-code10002157', 1, NULL, NULL, 1),
(645, 'Sylhet Shahid Shamsuddin Ahmed District Hospital\r\n(Code:10002196)', 'sylhet-shahid-shamsuddin-ahmed-district-hospital-code10002196', 1, NULL, NULL, 1);

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
  `branch_id` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `service_machines`
--

INSERT INTO `service_machines` (`id`, `machine_name`, `brand_id`, `model_id`, `origin`, `status_id`, `created_at`, `updated_at`, `branch_id`) VALUES
(1, 'Machine 1', 1, 1, 'Country A', 1, NULL, NULL, 1),
(2, 'Machine 2', 2, 2, 'Country B', 1, NULL, NULL, 1);

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
  `branch_id` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `service_models`
--

INSERT INTO `service_models` (`id`, `name`, `status_id`, `created_at`, `updated_at`, `branch_id`) VALUES
(1, 'Model 1', 1, NULL, NULL, 1),
(2, 'Model 2', 1, NULL, NULL, 1);

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
  `branch_id` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

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
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

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