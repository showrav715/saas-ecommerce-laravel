-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 04, 2023 at 12:09 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `new_ecommerce`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `email_verify_token` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `password` varchar(255) DEFAULT NULL,
  `remember_token` varchar(255) DEFAULT NULL,
  `role` varchar(20) DEFAULT NULL,
  `verify_code` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `email_verify_token`, `phone`, `photo`, `status`, `password`, `remember_token`, `role`, `verify_code`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@gmail.com', '', '09000000', '7657113971674637826.jpg', 1, '$2a$12$beok/ln93PP2jVpxaDJRVe/sbOtQXjAKhmoVvXcEul03SDK1ucfAS', 'KnQhH1mRFxFrsiRbuu14CGSieOyctZbDCZDPnM0qSuScKz4Ng89PNE4noaME', 'super-admin', 726094, NULL, '2023-01-25 03:10:26'),
(5, 'Drake Stokes', 'drake@gmail.com', NULL, NULL, NULL, 1, '$2y$10$mjZros16zGdJVqFKoakXQO/ZX5R2sXVGwPzF12hj4OITksVl0yyjC', NULL, 'Writer', NULL, '2022-03-07 18:20:35', '2023-02-28 23:49:46');

-- --------------------------------------------------------

--
-- Table structure for table `attributes`
--

CREATE TABLE `attributes` (
  `id` bigint(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `user_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `attributes`
--

INSERT INTO `attributes` (`id`, `name`, `user_id`) VALUES
(1, 'Size', 22),
(2, 'Ram', 22);

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE `banners` (
  `id` bigint(20) NOT NULL,
  `header` varchar(80) DEFAULT NULL,
  `title` varchar(80) DEFAULT NULL,
  `subtitle` varchar(80) DEFAULT NULL,
  `photo` varchar(50) DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `link` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `banners`
--

INSERT INTO `banners` (`id`, `header`, `title`, `subtitle`, `photo`, `user_id`, `link`) VALUES
(4, 'SALE UP TO 50%', 'EXO TRAVEL BAGS', 'BAGS AND SHOES', '14380314671666778259.png', 22, '#'),
(5, 'Baby Products', 'SALE', 'SALE UP TO 30%', '21292117771666778281.png', 22, '#'),
(6, 'Casual Shoes', 'NEW ARRIVALS', 'SALE UP TO 30%', '14263743671666778319.png', 22, '#');

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` int(10) UNSIGNED NOT NULL,
  `category_id` int(191) NOT NULL,
  `title` varchar(191) NOT NULL,
  `slug` varchar(191) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `description` longtext NOT NULL,
  `views` int(11) NOT NULL DEFAULT 0,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `category_id`, `title`, `slug`, `photo`, `description`, `views`, `status`, `created_at`, `updated_at`) VALUES
(66, 8, 'When she reached the first hills of the Italic Mountains, she had a last view back on the skyline of her hometown Bookmarksgrove', 'when-she-reached-the-first-hills-of-the-italic-mountains-she-had-a-last-view-back-on-the-skyline-of-her-hometown-bookmarksgrove', '1152189561674729229.jpg', '<p style=\"text-align:justify;\">Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksgrove right at the coast of the Semantics, a large language ocean. A small river named Duden flows by their place and supplies it with the necessary regelialia. It is a paradisematic country, in which roasted parts of sentences fly into your mouth. Even the all-powerful Pointing has no control about the blind texts it is an almost unorthographic life One day however a small line of blind text by the name of Lorem Ipsum decided to leave for the far World of Grammar. The Big Oxmox advised her not to do so, because there were thousands of bad Commas, wild Question Marks and devious Semikoli, but the Little Blind Text didn’t listen. She packed her seven versalia, put her initial into the belt and made herself on the way. When she reached the first hills of the Italic Mountains, she had a last view back on the skyline of her hometown Bookmarksgrove, the headline of Alphabet Village and the subline of her own road, the Line Lane. Pityful a rethoric question ran over her cheek, then</p>\r\n\r\n<p style=\"text-align:justify;\"><span style=\"color:rgb(0,0,0);font-family:\'Open Sans\', Arial, sans-serif;\">Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksgrove right at the coast of the Semantics, a large language ocean. A small river named Duden flows by their place and supplies it with the necessary regelialia. It is a paradisematic country, in which roasted parts of sentences fly into your mouth. Even the all-powerful Pointing has no control about the blind texts it is an almost unorthographic life One day however a small line of blind text by the name of Lorem Ipsum decided to leave for the far World of Grammar. The Big Oxmox advised her not to do so, because there were thousands of bad Commas, wild Question Marks and devious Semikoli, but the Little Blind Text didn’t listen. She packed her seven versalia, put her initial into the belt and made herself on the way. When she reached the first hills of the Italic Mountains, she had a last view back on the skyline of her hometown Bookmarksgrove, the headline of Alphabet Village and the subline of her own road, the Line Lane. Pityful a rethoric question ran over her cheek, then</span></p>\r\n\r\n<p style=\"text-align:justify;\"><span style=\"color:rgb(0,0,0);font-family:\'Open Sans\', Arial, sans-serif;\">Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksgrove right at the coast of the Semantics, a large language ocean. A small river named Duden flows by their place and supplies it with the necessary regelialia. It is a paradisematic country, in which roasted parts of sentences fly into your mouth. Even the all-powerful Pointing has no control about the blind texts it is an almost unorthographic life One day however a small line of blind text by the name of Lorem Ipsum decided to leave for the far World of Grammar. The Big Oxmox advised her not to do so, because there were thousands of bad Commas, wild Question Marks and devious Semikoli, but the Little Blind Text didn’t listen. She packed her seven versalia, put her initial into the belt and made herself on the way. When she reached the first hills of the Italic Mountains, she had a last view back on the skyline of her hometown Bookmarksgrove, the headline of Alphabet Village and the subline of her own road, the Line Lane. Pityful a rethoric question ran over her cheek, then</span></p>\r\n\r\n<p style=\"text-align:justify;\"><span style=\"color:rgb(0,0,0);font-family:\'Open Sans\', Arial, sans-serif;\">Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksgrove right at the coast of the Semantics, a large language ocean. A small river named Duden flows by their place and supplies it with the necessary regelialia. It is a paradisematic country, in which roasted parts of sentences fly into your mouth. Even the all-powerful Pointing has no control about the blind texts it is an almost unorthographic life One day however a small line of blind text by the name of Lorem Ipsum decided to leave for the far World of Grammar. The Big Oxmox advised her not to do so, because there were thousands of bad Commas, wild Question Marks and devious Semikoli, but the Little Blind Text didn’t listen. She packed her seven versalia, put her initial into the belt and made herself on the way. When she reached the first hills of the Italic Mountains, she had a last view back on the skyline of her hometown Bookmarksgrove, the headline of Alphabet Village and the subline of her own road, the Line Lane. Pityful a rethoric question ran over her cheek, then</span></p>', 0, 1, '2022-02-12 23:09:25', '2023-01-26 04:33:49'),
(67, 9, 'She packed her seven versalia, put her initial into the belt and made herself on the way', 'she-packed-her-seven-versalia-put-her-initial-into-the-belt-and-made-herself-on-the-way', '6733040431674729210.jpg', '<p style=\"text-align:justify;\">Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksgrove right at the coast of the Semantics, a large language ocean. A small river named Duden flows by their place and supplies it with the necessary regelialia. It is a paradisematic country, in which roasted parts of sentences fly into your mouth. Even the all-powerful Pointing has no control about the blind texts it is an almost unorthographic life One day however a small line of blind text by the name of Lorem Ipsum decided to leave for the far World of Grammar. The Big Oxmox advised her not to do so, because there were thousands of bad Commas, wild Question Marks and devious Semikoli, but the Little Blind Text didn’t listen. She packed her seven versalia, put her initial into the belt and made herself on the way. When she reached the first hills of the Italic Mountains, she had a last view back on the skyline of her hometown Bookmarksgrove, the headline of Alphabet Village and the subline of her own road, the Line Lane. Pityful a rethoric question ran over her cheek, then</p>\r\n\r\n<p style=\"text-align:justify;\"><span style=\"color:rgb(0,0,0);font-family:\'Open Sans\', Arial, sans-serif;\">Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksgrove right at the coast of the Semantics, a large language ocean. A small river named Duden flows by their place and supplies it with the necessary regelialia. It is a paradisematic country, in which roasted parts of sentences fly into your mouth. Even the all-powerful Pointing has no control about the blind texts it is an almost unorthographic life One day however a small line of blind text by the name of Lorem Ipsum decided to leave for the far World of Grammar. The Big Oxmox advised her not to do so, because there were thousands of bad Commas, wild Question Marks and devious Semikoli, but the Little Blind Text didn’t listen. She packed her seven versalia, put her initial into the belt and made herself on the way. When she reached the first hills of the Italic Mountains, she had a last view back on the skyline of her hometown Bookmarksgrove, the headline of Alphabet Village and the subline of her own road, the Line Lane. Pityful a rethoric question ran over her cheek, then</span></p>\r\n\r\n<p style=\"text-align:justify;\"><span style=\"color:rgb(0,0,0);font-family:\'Open Sans\', Arial, sans-serif;\">Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksgrove right at the coast of the Semantics, a large language ocean. A small river named Duden flows by their place and supplies it with the necessary regelialia. It is a paradisematic country, in which roasted parts of sentences fly into your mouth. Even the all-powerful Pointing has no control about the blind texts it is an almost unorthographic life One day however a small line of blind text by the name of Lorem Ipsum decided to leave for the far World of Grammar. The Big Oxmox advised her not to do so, because there were thousands of bad Commas, wild Question Marks and devious Semikoli, but the Little Blind Text didn’t listen. She packed her seven versalia, put her initial into the belt and made herself on the way. When she reached the first hills of the Italic Mountains, she had a last view back on the skyline of her hometown Bookmarksgrove, the headline of Alphabet Village and the subline of her own road, the Line Lane. Pityful a rethoric question ran over her cheek, then</span></p>\r\n\r\n<p style=\"text-align:justify;\"><span style=\"color:rgb(0,0,0);font-family:\'Open Sans\', Arial, sans-serif;\">Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksgrove right at the coast of the Semantics, a large language ocean. A small river named Duden flows by their place and supplies it with the necessary regelialia. It is a paradisematic country, in which roasted parts of sentences fly into your mouth. Even the all-powerful Pointing has no control about the blind texts it is an almost unorthographic life One day however a small line of blind text by the name of Lorem Ipsum decided to leave for the far World of Grammar. The Big Oxmox advised her not to do so, because there were thousands of bad Commas, wild Question Marks and devious Semikoli, but the Little Blind Text didn’t listen. She packed her seven versalia, put her initial into the belt and made herself on the way. When she reached the first hills of the Italic Mountains, she had a last view back on the skyline of her hometown Bookmarksgrove, the headline of Alphabet Village and the subline of her own road, the Line Lane. Pityful a rethoric question ran over her cheek, then</span><span style=\"color:rgb(0,0,0);font-family:\'Open Sans\', Arial, sans-serif;\"><br></span></p>', 1, 1, '2022-02-12 23:11:32', '2023-01-26 04:33:30');

-- --------------------------------------------------------

--
-- Table structure for table `blog_categories`
--

CREATE TABLE `blog_categories` (
  `id` bigint(20) NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `blog_categories`
--

INSERT INTO `blog_categories` (`id`, `name`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(8, 'News', 'news', 1, NULL, NULL),
(9, 'Announces', 'announces', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `bottom_banners`
--

CREATE TABLE `bottom_banners` (
  `id` bigint(20) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `text` varchar(255) DEFAULT NULL,
  `btn_text` varchar(70) DEFAULT NULL,
  `btn_link` varchar(150) DEFAULT NULL,
  `photo` varchar(55) DEFAULT NULL,
  `user_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bottom_banners`
--

INSERT INTO `bottom_banners` (`id`, `title`, `text`, `btn_text`, `btn_link`, `photo`, `user_id`) VALUES
(1, 'Shipping policy', 'Free shipping worldwide on all baskets over', 'Order Now', '#', '21435450881673325393.png', 22);

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` bigint(20) NOT NULL,
  `name` varchar(55) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `user_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `name`, `status`, `user_id`) VALUES
(1, 'Sony', 1, 22),
(2, 'Samsung', 1, 22),
(3, 'Mi', 1, 22),
(4, 'Colorfull', 1, 22),
(5, 'SmartMan', 1, 22);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `slug` varchar(100) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `photo` varchar(60) DEFAULT NULL,
  `feature` tinyint(4) NOT NULL DEFAULT 0,
  `serial` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `user_id`, `name`, `slug`, `status`, `photo`, `feature`, `serial`) VALUES
(1, 22, 'HTML5', 'HTML5', 1, '11481281091680415220.png', 1, 2),
(16, 22, 'HTML53', 'HTML53', 1, '3722402261666777787.png', 1, 0),
(17, 22, 'CSS32', 'CSS32', 1, '6467871291666777781.png', 1, 0),
(18, 22, 'HTML52', 'HTML52', 1, '6018833021666777774.png', 1, 1),
(19, 22, 'Man Fashion', 'Man-Fashion', 1, '3110561271666778081.png', 1, 5),
(20, 22, 'Bags and Shoes', 'Bags-and-Shoes', 1, '7752887311666778098.png', 1, 6);

-- --------------------------------------------------------

--
-- Table structure for table `colors`
--

CREATE TABLE `colors` (
  `id` bigint(20) NOT NULL,
  `color_name` varchar(50) NOT NULL,
  `color_code` varchar(50) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `color_slug` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `colors`
--

INSERT INTO `colors` (`id`, `color_name`, `color_code`, `user_id`, `color_slug`) VALUES
(1, 'test1', '#0051F3', 22, 'test1'),
(2, 'te / 66', '#BA7070', 22, 'te-66');

-- --------------------------------------------------------

--
-- Table structure for table `contact_messages`
--

CREATE TABLE `contact_messages` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contact_messages`
--

INSERT INTO `contact_messages` (`id`, `name`, `email`, `subject`, `message`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'test', 'test@gmail.com', 'asdfasd', 'fasdfa', 22, '2022-10-26 23:18:10', '2022-10-26 23:18:10'),
(2, 'test', 'test@gmail.com', 'Hello Subject', 'Hi', 22, '2022-11-22 22:32:56', '2022-11-22 22:32:56');

-- --------------------------------------------------------

--
-- Table structure for table `contact_pages`
--

CREATE TABLE `contact_pages` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `title` text DEFAULT NULL,
  `text` text DEFAULT NULL,
  `office_address` text DEFAULT NULL,
  `contact_number` text DEFAULT NULL,
  `email_address` text DEFAULT NULL,
  `career_info` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contact_pages`
--

INSERT INTO `contact_pages` (`id`, `user_id`, `title`, `text`, `office_address`, `contact_number`, `email_address`, `career_info`) VALUES
(0, 22, 'Get In Touch', 'Nullam vel enim risus. Integer rhoncus hendrerit sem egestas porttitor.', 'Level 13, 2 Elizabeth St, Melbourne, Victoria 3000 Australia', '(1) 000 991 8830, (800) 8001-8588', 'Info@patron.com, support@patron.com', '<p><span style=\"color: rgb(118, 118, 120); font-family: Jost, sans-serif; font-size: 16px;\">If you’re interested in employment opportunities at Unicoder, please email us:</span><br style=\"color: rgb(118, 118, 120); font-family: Jost, sans-serif; font-size: 16px;\"><font color=\"#0d6efd\" face=\"Jost, sans-serif\"><span style=\"font-size: 16px; background-color: rgb(255, 255, 255);\">support@unicoderbd.com</span></font><br></p>'),
(5, 33, 'Get In Touch', 'Nullam vel enim risus. Integer rhoncus hendrerit sem egestas porttitor.', 'Level 13, 2 Elizabeth St, Melbourne, Victoria 3000 Australia', '(1) 000 991 8830, (800) 8001-8588', 'Info@patron.com, support@patron.com', '<p><span style=\"color: rgb(118, 118, 120); font-family: Jost, sans-serif; font-size: 16px;\">If you’re interested in employment opportunities at Unicoder, please email us:</span><br style=\"color: rgb(118, 118, 120); font-family: Jost, sans-serif; font-size: 16px;\"><font color=\"#0d6efd\" face=\"Jost, sans-serif\"><span style=\"font-size: 16px; background-color: rgb(255, 255, 255);\">support@unicoderbd.com</span></font><br></p>'),
(19, 47, 'Get In Touch', 'Nullam vel enim risus. Integer rhoncus hendrerit sem egestas porttitor.', 'Level 13, 2 Elizabeth St, Melbourne, Victoria 3000 Australia', '(1) 000 991 8830, (800) 8001-8588', 'Info@patron.com, support@patron.com', '<p><span style=\"color: rgb(118, 118, 120); font-family: Jost, sans-serif; font-size: 16px;\">If you’re interested in employment opportunities at Unicoder, please email us:</span><br style=\"color: rgb(118, 118, 120); font-family: Jost, sans-serif; font-size: 16px;\"><font color=\"#0d6efd\" face=\"Jost, sans-serif\"><span style=\"font-size: 16px; background-color: rgb(255, 255, 255);\">support@unicoderbd.com</span></font><br></p>'),
(20, 48, 'Get In Touch', 'Nullam vel enim risus. Integer rhoncus hendrerit sem egestas porttitor.', 'Level 13, 2 Elizabeth St, Melbourne, Victoria 3000 Australia', '(1) 000 991 8830, (800) 8001-8588', 'Info@patron.com, support@patron.com', '<p><span style=\"color: rgb(118, 118, 120); font-family: Jost, sans-serif; font-size: 16px;\">If you’re interested in employment opportunities at Unicoder, please email us:</span><br style=\"color: rgb(118, 118, 120); font-family: Jost, sans-serif; font-size: 16px;\"><font color=\"#0d6efd\" face=\"Jost, sans-serif\"><span style=\"font-size: 16px; background-color: rgb(255, 255, 255);\">support@unicoderbd.com</span></font><br></p>');

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `unique_key` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `dial_code` varchar(10) DEFAULT NULL,
  `currency_id` int(11) NOT NULL,
  `flag` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `unique_key`, `name`, `code`, `dial_code`, `currency_id`, `flag`, `created_at`, `updated_at`) VALUES
(1, 190, 'United States', 'US', '+1', 1, 'https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/US.svg', '2022-03-02 21:39:20', '2022-03-02 21:39:20'),
(2, 67, 'Germany', 'DE', '+49', 4, 'https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/DE.svg', '2022-03-02 21:39:30', '2022-03-02 21:39:30'),
(3, 189, 'United Kingdom', 'GB', '+44', 5, 'https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/GB.svg', '2022-03-02 21:39:42', '2022-03-02 21:39:42'),
(4, 135, 'Nigeria', 'NG', '+234', 13, 'https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/NG.svg', '2022-03-02 21:39:55', '2022-03-02 21:39:55'),
(5, 15, 'Bangladesh', 'BD', '+880', 6, 'https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/BD.svg', '2022-03-02 21:40:06', '2022-03-02 21:40:06'),
(6, 92, 'Japan', 'JP', '+81', 11, 'https://cdn.jsdelivr.net/npm/country-flag-emoji-json@2.0.0/dist/images/JP.svg', '2022-03-02 21:40:23', '2022-03-02 21:40:23');

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(50) NOT NULL,
  `expired` date NOT NULL,
  `percentage` int(11) NOT NULL DEFAULT 1,
  `status` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `coupons`
--

INSERT INTO `coupons` (`id`, `user_id`, `code`, `expired`, `percentage`, `status`) VALUES
(2, 22, 'test', '2022-11-29', 5, 1),
(3, 22, 'test1', '2022-12-30', 2, 1),
(4, 22, 'hii', '2023-05-11', 10, 1);

-- --------------------------------------------------------

--
-- Table structure for table `currencies`
--

CREATE TABLE `currencies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `default` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '1 => default, 0 => not default',
  `symbol` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `status` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '1 => active, 0 => inactive',
  `value` decimal(11,2) UNSIGNED NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `currencies`
--

INSERT INTO `currencies` (`id`, `default`, `symbol`, `code`, `status`, `value`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 1, '$', 'USD', 1, '1.00', 22, '2021-12-19 16:12:58', '2022-11-29 22:53:30'),
(4, 0, '€', 'EUR', 1, '0.89', 22, '2021-12-19 16:12:58', '2022-12-06 15:31:17'),
(7, 0, '₹', 'INR', 1, '75.00', 22, '2022-01-25 14:28:23', '2022-11-29 22:37:29'),
(8, 0, '₦', 'NGN', 1, '416.00', 22, '2022-02-05 17:41:35', '2022-11-29 21:14:16'),
(11, 0, 'SAR', 'SAR', 1, '1.00', 22, '2022-02-05 17:41:35', '2022-11-29 21:14:16');

-- --------------------------------------------------------

--
-- Table structure for table `disputes`
--

CREATE TABLE `disputes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `escrow_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `admin_id` int(11) DEFAULT NULL,
  `message` varchar(255) NOT NULL,
  `file` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `disputes`
--

INSERT INTO `disputes` (`id`, `escrow_id`, `user_id`, `admin_id`, `message`, `file`, `created_at`, `updated_at`) VALUES
(1, 1, 14, NULL, 'hello', NULL, '2022-03-03 01:29:05', '2022-03-03 01:29:05'),
(2, 2, 14, NULL, 'ERno', NULL, '2022-03-03 01:29:58', '2022-03-03 01:29:58'),
(3, 2, NULL, 1, 'What is problem', NULL, '2022-03-03 01:30:43', '2022-03-03 01:30:43'),
(4, 3, 17, NULL, 'DSVDSVSD', NULL, '2022-03-06 13:09:48', '2022-03-06 13:09:48'),
(5, 3, 17, NULL, 'SDDSFDS', '10955731221646547069.png', '2022-03-06 13:11:09', '2022-03-06 13:11:09'),
(6, 3, 17, NULL, 'ASDASDAS', '20502737791646547093.png', '2022-03-06 13:11:33', '2022-03-06 13:11:33'),
(7, 6, 17, NULL, 'czxc', NULL, '2022-03-06 16:18:51', '2022-03-06 16:18:51'),
(8, 6, NULL, 1, 'asaS', NULL, '2022-03-06 16:19:15', '2022-03-06 16:19:15'),
(9, 7, 17, NULL, 'dfdsf', NULL, '2022-03-07 12:56:57', '2022-03-07 12:56:57'),
(10, 7, 17, NULL, 'dsfdf', NULL, '2022-03-07 12:57:04', '2022-03-07 12:57:04'),
(11, 7, NULL, 1, 'sdsdas', NULL, '2022-03-07 13:02:25', '2022-03-07 13:02:25');

-- --------------------------------------------------------

--
-- Table structure for table `domains`
--

CREATE TABLE `domains` (
  `id` bigint(20) NOT NULL,
  `package_order_id` bigint(20) UNSIGNED NOT NULL,
  `domain` varchar(50) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `will_expire` date NOT NULL,
  `data` text NOT NULL,
  `is_trial` tinyint(4) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `domains`
--

INSERT INTO `domains` (`id`, `package_order_id`, `domain`, `status`, `will_expire`, `data`, `is_trial`, `user_id`) VALUES
(2, 44, 'test.localhost', 1, '2023-04-10', '{\"id\":2,\"name\":\"Premium\",\"description\":\"Premium Package\",\"days\":7,\"price\":5,\"category_limit\":8,\"product_limit\":50,\"customer_limit\":50,\"brand_limit\":6,\"variant_limit\":50,\"custom_domain\":1,\"customer_panel_access\":1,\"support\":1,\"qr_code\":1,\"facebook_pixel\":1,\"google_analytics\":0,\"is_featured\":1,\"status\":1}', 0, 22),
(6, 22, 'test5.localhost', 1, '2023-02-20', '{\"id\":2,\"name\":\"Premium\",\"description\":\"Premium Package\",\"days\":7,\"price\":5,\"category_limit\":0,\"product_limit\":5,\"customer_limit\":5,\"brand_limit\":5,\"variant_limit\":50,\"custom_domain\":1,\"customer_panel_access\":1,\"whatsapp_modules\":1,\"support\":1,\"qr_code\":1,\"facebook_pixel\":1,\"google_analytics\":0,\"is_featured\":1,\"status\":1}', 0, 33),
(20, 47, 'showrav.localhost', 1, '2024-04-03', '{\"id\":3,\"name\":\"Standard\",\"description\":\"StandardPackage\",\"days\":365,\"price\":50,\"category_limit\":5000,\"product_limit\":5,\"customer_limit\":5,\"brand_limit\":5,\"variant_limit\":50,\"custom_domain\":1,\"customer_panel_access\":1,\"support\":1,\"qr_code\":1,\"facebook_pixel\":1,\"google_analytics\":0,\"is_featured\":0,\"status\":1}', 0, 47),
(21, 48, 'showrav1.localhost', 1, '2024-04-03', '{\"id\":3,\"name\":\"Standard\",\"description\":\"StandardPackage\",\"days\":365,\"price\":50,\"category_limit\":5000,\"product_limit\":5,\"customer_limit\":5,\"brand_limit\":5,\"variant_limit\":50,\"custom_domain\":1,\"customer_panel_access\":1,\"support\":1,\"qr_code\":1,\"facebook_pixel\":1,\"google_analytics\":0,\"is_featured\":0,\"status\":1}', 0, 48);

-- --------------------------------------------------------

--
-- Table structure for table `domain_requests`
--

CREATE TABLE `domain_requests` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `domain` varchar(255) NOT NULL,
  `message` text DEFAULT NULL,
  `domain_type` varchar(25) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `domain_requests`
--

INSERT INTO `domain_requests` (`id`, `user_id`, `domain`, `message`, `domain_type`, `status`, `created_at`, `updated_at`) VALUES
(2, 22, 'geniusocean.xyz', NULL, 'Custom_domain', 0, NULL, NULL),
(4, 22, 'showrav.localhost', NULL, 'Sub_domain', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `email_templates`
--

CREATE TABLE `email_templates` (
  `id` int(11) NOT NULL,
  `email_type` varchar(255) DEFAULT NULL,
  `email_subject` mediumtext DEFAULT NULL,
  `email_body` longtext DEFAULT NULL,
  `sms` text DEFAULT NULL,
  `codes` text DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `email_templates`
--

INSERT INTO `email_templates` (`id`, `email_type`, `email_subject`, `email_body`, `sms`, `codes`, `status`) VALUES
(1, 'user_register', 'Register Successfully', '<p>Hello <b>{name}</b>,</p><p>Transfer money <b>{amount} {curr}</b> to <b>{trans_to}</b> is successful.</p><p><b><u><font color=\"#000000\" style=\"background-color: rgb(255, 255, 0);\">Transfer details:</font></u></b></p><ul><li style=\"margin-left: 25px;\">Amount :&nbsp; <b>{amount} {curr}</b></li><li style=\"margin-left: 25px;\">Charge: <b>{charge} {curr}</b></li><li style=\"margin-left: 25px;\">Remaining Balance : <b>{after_balance} {curr}</b></li><li style=\"margin-left: 25px;\">Transaction ID : <b>{trnx}</b></li></ul><p>Time : {date_time}</p><p><br></p>', 'Hello {name},\n\nTransfer money {amount} {curr} to {trans_to} is successful.\n\nTransfer details:\n\nAmount :  {amount} {curr}\nCharge: {charge} {curr}\nRemaining Balance : {after_balance} {curr}\nTransaction ID : {trnx}\nTime : {date_time}\n\n', '{\"name\":\"User name\",\"website\":\"Website Title\",\"owner_site_name\":\"Owner Site Title\"}', 1);

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
-- Table structure for table `galleries`
--

CREATE TABLE `galleries` (
  `id` bigint(20) NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `photo` varchar(70) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `galleries`
--

INSERT INTO `galleries` (`id`, `product_id`, `photo`) VALUES
(5, 6, '10104423071673417206.png'),
(6, 6, '6397644101673417207.png'),
(7, 6, '2709756031673417207.png'),
(8, 6, '13169658621673417207.png'),
(9, 10, '21064278741673419420.png'),
(11, 10, '12697681671673419421.png'),
(12, 10, '13863670881673427985.png'),
(13, 10, '7293347161673427985.png'),
(14, 11, '8632649751680156905.jpg'),
(15, 11, '9976764071680156905.png'),
(16, 11, '18488563761680156905.png');

-- --------------------------------------------------------

--
-- Table structure for table `generalsettings`
--

CREATE TABLE `generalsettings` (
  `id` int(191) NOT NULL,
  `logo` varchar(191) DEFAULT NULL,
  `header_logo` varchar(255) DEFAULT NULL,
  `favicon` varchar(191) NOT NULL,
  `title` varchar(191) NOT NULL,
  `loader` varchar(191) NOT NULL,
  `smtp_host` varchar(255) DEFAULT NULL,
  `mail_type` varchar(255) DEFAULT NULL,
  `smtp_port` varchar(255) DEFAULT NULL,
  `smtp_user` varchar(255) DEFAULT NULL,
  `smtp_pass` varchar(255) DEFAULT NULL,
  `mail_encryption` varchar(255) DEFAULT NULL,
  `from_email` varchar(255) DEFAULT NULL,
  `from_name` varchar(255) DEFAULT NULL,
  `theme_color` varchar(255) DEFAULT NULL,
  `is_tawk` tinyint(4) NOT NULL DEFAULT 0,
  `tawk_id` varchar(222) DEFAULT NULL,
  `is_verify` tinyint(4) DEFAULT 0,
  `is_cookie` tinyint(4) NOT NULL DEFAULT 0,
  `cookie_btn_text` varchar(255) DEFAULT NULL,
  `cookie_text` text DEFAULT NULL,
  `is_maintenance` tinyint(4) DEFAULT 0,
  `maintenance` text DEFAULT NULL,
  `registration` tinyint(1) NOT NULL DEFAULT 1,
  `sms_notify` tinyint(1) NOT NULL DEFAULT 1,
  `email_notify` tinyint(1) NOT NULL DEFAULT 1,
  `phone` varchar(20) DEFAULT NULL,
  `recaptcha` tinyint(1) NOT NULL DEFAULT 0,
  `recaptcha_key` varchar(255) DEFAULT NULL,
  `cookie` text DEFAULT NULL,
  `menu` text DEFAULT NULL,
  `recaptcha_secret` varchar(255) DEFAULT NULL,
  `currency_icon` varchar(5) DEFAULT NULL,
  `currency_code` varchar(5) DEFAULT NULL,
  `currency_possition` varchar(8) DEFAULT NULL,
  `debug_mode` tinyint(4) NOT NULL DEFAULT 0,
  `domain_setting` text DEFAULT NULL,
  `banner_title` varchar(255) DEFAULT NULL,
  `banner_text` text DEFAULT NULL,
  `banner_photo` varchar(50) DEFAULT NULL,
  `banner_video` varchar(50) DEFAULT NULL,
  `email` varchar(191) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `footer_text` text DEFAULT NULL,
  `copyright_text` varchar(255) DEFAULT NULL,
  `contact_page_title` varchar(255) DEFAULT NULL,
  `contact_page_text` text DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `generalsettings`
--

INSERT INTO `generalsettings` (`id`, `logo`, `header_logo`, `favicon`, `title`, `loader`, `smtp_host`, `mail_type`, `smtp_port`, `smtp_user`, `smtp_pass`, `mail_encryption`, `from_email`, `from_name`, `theme_color`, `is_tawk`, `tawk_id`, `is_verify`, `is_cookie`, `cookie_btn_text`, `cookie_text`, `is_maintenance`, `maintenance`, `registration`, `sms_notify`, `email_notify`, `phone`, `recaptcha`, `recaptcha_key`, `cookie`, `menu`, `recaptcha_secret`, `currency_icon`, `currency_code`, `currency_possition`, `debug_mode`, `domain_setting`, `banner_title`, `banner_text`, `banner_photo`, `banner_video`, `email`, `address`, `footer_text`, `copyright_text`, `contact_page_title`, `contact_page_text`) VALUES
(1, '1571567292logo.png', '2748628781680422691.png', '18672906451677478267.png', 'Ecommerce New', '1564224328loading3.gif', 'smtp.mailtrap.io', 'php_mailer', '2525', '77c8df7c3e0779', '509dc95e1382f5', 'tls', 'geniustest@gmail.com', 'GeniusTest', '#5B53F1', 0, '6124fa49d6e7610a49b1c136/1fds73cxyZ', 1, 1, 'cookie_btn_text', NULL, 1, 'Site Down', 1, 1, 1, '090000001', 0, '6LeIxAcTAAAAAJcZVRqyHh71UMIEGNQ_MXjiZKhI', '{\"status\":\"1\",\"button_text\":\"Allow Cookie\",\"cookie_text\":\"Our site use cookies when you visit our website, including any other media form, mobile website, or mobile application related or connected to help customize the site and improve your experience.\"}', '{\"Home\":{\"title\":\"Home\",\"dropdown\":\"no\",\"href\":\"\\/\",\"target\":\"self\"},\"About\":{\"title\":\"About\",\"dropdown\":\"yes\",\"href\":\"\\/about\",\"target\":\"self\"},\"API\":{\"title\":\"API\",\"dropdown\":\"yes\",\"href\":\"\\/api-documentation\",\"target\":\"self\"},\"Blogs\":{\"title\":\"Blogs\",\"dropdown\":\"yes\",\"href\":\"\\/blogs\",\"target\":\"self\"},\"Contact\":{\"title\":\"Contact\",\"dropdown\":\"yes\",\"href\":\"\\/contact\",\"target\":\"self\"}}', 'test', '$', 'USD', 'left', 1, '<p>&lt;script&gt;alert(\'a\')&lt;/script&gt;</p>', 'Design with the user in mind.', 'Hunky burke absolutely your arm panky you quid easy.', '13188466211674973000.png', 'https://www.youtube.com/watch?v=vQWlgd7hV4A', 'support300@gmail.com', '7058 Najrul Islam Road, Dhaka.', 'Lorem ipsum dolor sit amet consectetur.', 'Copyright © 2023 Reserved Passion by Repto Corporate', 'Get In Touch', 'Porro illum impedit nemo hic, similique at, qui ducimus praesentium ullam voluptatem culpa temporibus eveniet, esse accusamus');

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `id` int(191) NOT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT 0,
  `language` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(10) NOT NULL,
  `file` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `is_default`, `language`, `code`, `file`) VALUES
(12, 1, 'English', 'en', 'en.json'),
(20, 0, 'Hindi', 'hi', 'hindi.json');

-- --------------------------------------------------------

--
-- Table structure for table `locations`
--

CREATE TABLE `locations` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `location` varchar(50) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `locations`
--

INSERT INTO `locations` (`id`, `user_id`, `location`, `status`) VALUES
(2, 22, 'DHAKA', 1),
(3, 22, 'TANGAIL', 1),
(4, 22, 'MIRPUR', 1),
(5, 22, 'KHULNA', 1),
(6, 22, 'GAZIPUR', 1);

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2021_09_25_053316_create_admins_table', 2),
(6, '2021_12_19_042602_create_site_contents_table', 3),
(7, '2021_12_20_032716_create_currencies_table', 4),
(8, '2021_12_20_041453_create_wallets_table', 5),
(9, '2021_12_20_061743_create_charges_table', 6),
(10, '2021_12_21_041624_create_countries_table', 7),
(11, '2021_12_21_095225_create_transactions_table', 8),
(12, '2021_12_22_044221_create_request_money_table', 9),
(13, '2021_12_23_053336_create_exchange_money_table', 10),
(14, '2021_12_28_083959_create_modules_table', 11),
(15, '2021_12_29_035701_create_vouchers_table', 12),
(16, '2021_12_30_050418_create_withdraws_table', 13),
(17, '2021_12_30_111614_create_withdrawals_table', 14),
(18, '2022_01_02_102323_create_payments_table', 15),
(19, '2022_01_03_032851_create_invoices_table', 16),
(20, '2022_01_03_034414_create_inv_items_table', 17),
(21, '2022_01_04_092638_create_k_y_c_s_table', 18),
(22, '2022_01_04_103906_create_kyc_forms_table', 18),
(23, '2022_01_09_035144_create_escrows_table', 19),
(24, '2022_01_09_064757_create_disputes_table', 20),
(25, '2022_01_16_053729_create_api_creds_table', 21),
(26, '2022_01_16_060854_create_merchant_payments_table', 22),
(27, '2022_01_17_100203_create_permission_tables', 23),
(28, '2022_01_20_050330_create_sms_gateways_table', 24),
(29, '2022_01_30_031517_create_login_logs_table', 25),
(30, '2022_02_02_091116_create_support_tickets_table', 26),
(31, '2022_02_02_091130_create_ticket_messages_table', 26);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `seller_id` bigint(20) UNSIGNED NOT NULL,
  `cart` text NOT NULL,
  `order_total` double NOT NULL DEFAULT 0,
  `discount` text NOT NULL,
  `shipping` text NOT NULL,
  `name` varchar(40) NOT NULL,
  `email` varchar(30) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `delivery_address` text NOT NULL,
  `zip` varchar(25) DEFAULT NULL,
  `payment_status` int(11) NOT NULL DEFAULT 0,
  `order_status` int(11) NOT NULL DEFAULT 0,
  `txn_id` varchar(40) NOT NULL,
  `payment_method` varchar(25) NOT NULL,
  `order_number` varchar(25) NOT NULL,
  `note` text DEFAULT NULL,
  `currency` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `seller_id`, `cart`, `order_total`, `discount`, `shipping`, `name`, `email`, `phone`, `delivery_address`, `zip`, `payment_status`, `order_status`, `txn_id`, `payment_method`, `order_number`, `note`, `currency`, `created_at`, `updated_at`) VALUES
(17, 24, 22, '{\"6-test\":{\"name\":\"Smart Blazar for Men\",\"slug\":\"smart-blazar-for-men\",\"type\":\"0\",\"quantity\":1,\"item_stock\":5,\"main_price\":5,\"cart_single_price\":6,\"cart_item_price\":6,\"photo\":\"http:\\/\\/test.localhost\\/assets\\/images\\/22\\/19219784691666848965.png\",\"color\":null,\"attributes\":{\"Size\":{\"id\":1,\"user_id\":0,\"attribute_id\":1,\"name\":\"test\",\"price\":1,\"attribute\":{\"id\":1,\"name\":\"Size\",\"user_id\":22}}}}}', 8, '[]', '{\"location\":{\"id\":6,\"user_id\":22,\"location\":\"GAZIPUR\",\"status\":1},\"shipping\":{\"id\":1,\"shipping\":\"test\",\"locations\":\"[\\\"6\\\"]\",\"price\":2,\"status\":1,\"user_id\":22}}', 'test', 'test@gmail.com', '3453453', 'Test Address1', '123133', 1, 0, '20230219111212800110168189304543550', 'Paytm', 'seller-ukDUgtFUY', '', '{\"id\":7,\"default\":0,\"symbol\":\"\\u20b9\",\"code\":\"INR\",\"status\":1,\"value\":\"75.00\",\"user_id\":22,\"created_at\":\"2022-01-26T02:28:23.000000Z\",\"updated_at\":\"2022-11-30T10:37:29.000000Z\"}', '2023-02-19 02:11:33', '2023-02-19 02:11:33'),
(18, 24, 22, '{\"4-test__test2__test1\":{\"name\":\"Men Cotton Dress Shirts\",\"slug\":\"men-cotton-dress-shirts\",\"type\":\"1\",\"quantity\":1,\"item_stock\":5,\"main_price\":15,\"cart_single_price\":17,\"cart_item_price\":17,\"photo\":\"http:\\/\\/test.localhost\\/assets\\/images\\/22\\/21254325931666848598.png\",\"color\":{\"id\":1,\"color_name\":\"test1\",\"color_code\":\"#0051F3\",\"user_id\":22,\"color_slug\":\"test1\"},\"attributes\":{\"Size\":{\"id\":1,\"user_id\":0,\"attribute_id\":1,\"name\":\"test\",\"price\":1,\"attribute\":{\"id\":1,\"name\":\"Size\",\"user_id\":22}},\"Ram\":{\"id\":3,\"user_id\":0,\"attribute_id\":2,\"name\":\"test2\",\"price\":1,\"attribute\":{\"id\":2,\"name\":\"Ram\",\"user_id\":22}}}}}', 23, '[]', '{\"location\":{\"id\":2,\"user_id\":22,\"location\":\"DHAKA\",\"status\":1},\"shipping\":{\"id\":2,\"shipping\":\"test3\",\"locations\":\"[\\\"6\\\",\\\"4\\\",\\\"2\\\"]\",\"price\":6,\"status\":1,\"user_id\":22}}', 'test', 'test@gmail.com', '3453453', 'Test Address1', '123133', 1, 0, 'pay_LIEaJ34pyp7rjP', 'Razorpay', 'seller-MG9dA0MJ7', '', '{\"id\":7,\"default\":0,\"symbol\":\"\\u20b9\",\"code\":\"INR\",\"status\":1,\"value\":\"75.00\",\"user_id\":22,\"created_at\":\"2022-01-26T02:28:23.000000Z\",\"updated_at\":\"2022-11-30T10:37:29.000000Z\"}', '2023-02-19 02:18:34', '2023-02-19 02:18:34'),
(19, 24, 22, '{\"4-test__test2__test1\":{\"name\":\"Men Cotton Dress Shirts\",\"slug\":\"men-cotton-dress-shirts\",\"type\":\"1\",\"quantity\":1,\"item_stock\":5,\"main_price\":15,\"cart_single_price\":17,\"cart_item_price\":17,\"photo\":\"http:\\/\\/test.localhost\\/assets\\/images\\/22\\/21254325931666848598.png\",\"color\":{\"id\":1,\"color_name\":\"test1\",\"color_code\":\"#0051F3\",\"user_id\":22,\"color_slug\":\"test1\"},\"attributes\":{\"Size\":{\"id\":1,\"user_id\":0,\"attribute_id\":1,\"name\":\"test\",\"price\":1,\"attribute\":{\"id\":1,\"name\":\"Size\",\"user_id\":22}},\"Ram\":{\"id\":3,\"user_id\":0,\"attribute_id\":2,\"name\":\"test2\",\"price\":1,\"attribute\":{\"id\":2,\"name\":\"Ram\",\"user_id\":22}}}},\"5-test__test1\":{\"name\":\"Women White T-Shirt\",\"slug\":\"women-white-tshirt\",\"type\":\"0\",\"quantity\":1,\"item_stock\":5,\"main_price\":45,\"cart_single_price\":46,\"cart_item_price\":46,\"photo\":\"http:\\/\\/test.localhost\\/assets\\/images\\/22\\/20171823701666848896.png\",\"color\":{\"id\":1,\"color_name\":\"test1\",\"color_code\":\"#0051F3\",\"user_id\":22,\"color_slug\":\"test1\"},\"attributes\":{\"Size\":{\"id\":1,\"user_id\":0,\"attribute_id\":1,\"name\":\"test\",\"price\":1,\"attribute\":{\"id\":1,\"name\":\"Size\",\"user_id\":22}}}}}', 69, '[]', '{\"location\":{\"id\":2,\"user_id\":22,\"location\":\"DHAKA\",\"status\":1},\"shipping\":{\"id\":2,\"shipping\":\"test3\",\"locations\":\"[\\\"6\\\",\\\"4\\\",\\\"2\\\"]\",\"price\":6,\"status\":1,\"user_id\":22}}', 'test', 'test@gmail.com', '3453453', 'Test Address1', '123133', 1, 0, '87146845963903130', 'Paypal', 'seller-DtVJgHj9X', '', '{\"id\":4,\"default\":0,\"symbol\":\"\\u20ac\",\"code\":\"EUR\",\"status\":1,\"value\":\"0.89\",\"user_id\":22,\"created_at\":\"2021-12-20T04:12:58.000000Z\",\"updated_at\":\"2022-12-07T03:31:17.000000Z\"}', '2023-02-19 02:21:16', '2023-02-19 02:21:16'),
(20, 24, 22, '{\"5-test__test1\":{\"name\":\"Women White T-Shirt\",\"slug\":\"women-white-tshirt\",\"type\":\"0\",\"quantity\":1,\"item_stock\":5,\"main_price\":45,\"cart_single_price\":46,\"cart_item_price\":46,\"photo\":\"http:\\/\\/test.localhost\\/assets\\/images\\/22\\/20171823701666848896.png\",\"color\":{\"id\":1,\"color_name\":\"test1\",\"color_code\":\"#0051F3\",\"user_id\":22,\"color_slug\":\"test1\"},\"attributes\":{\"Size\":{\"id\":1,\"user_id\":0,\"attribute_id\":1,\"name\":\"test\",\"price\":1,\"attribute\":{\"id\":1,\"name\":\"Size\",\"user_id\":22}}}}}', 52, '[]', '{\"location\":{\"id\":2,\"user_id\":22,\"location\":\"DHAKA\",\"status\":1},\"shipping\":{\"id\":2,\"shipping\":\"test3\",\"locations\":\"[\\\"6\\\",\\\"4\\\",\\\"2\\\"]\",\"price\":6,\"status\":1,\"user_id\":22}}', 'test', 'test@gmail.com', '3453453', 'Test Address1', '123133', 1, 0, '40115408820', 'Paytm', 'seller-xIMrnhFAe', NULL, '{\"id\":4,\"default\":0,\"symbol\":\"\\u20ac\",\"code\":\"EUR\",\"status\":1,\"value\":\"0.89\",\"user_id\":22,\"created_at\":\"2021-12-20T04:12:58.000000Z\",\"updated_at\":\"2022-12-07T03:31:17.000000Z\"}', '2023-02-19 02:29:30', '2023-02-19 02:29:30'),
(21, 22, 22, '{\"5-test__test1\":{\"name\":\"Women White T-Shirt\",\"slug\":\"women-white-tshirt\",\"type\":\"0\",\"quantity\":1,\"item_stock\":5,\"main_price\":45,\"cart_single_price\":46,\"cart_item_price\":46,\"photo\":\"http:\\/\\/test.localhost\\/assets\\/images\\/22\\/20171823701666848896.png\",\"color\":{\"id\":1,\"color_name\":\"test1\",\"color_code\":\"#0051F3\",\"user_id\":22,\"color_slug\":\"test1\"},\"attributes\":{\"Size\":{\"id\":1,\"user_id\":0,\"attribute_id\":1,\"name\":\"test\",\"price\":1,\"attribute\":{\"id\":1,\"name\":\"Size\",\"user_id\":22}}}}}', 52, '[]', '{\"location\":{\"id\":2,\"user_id\":22,\"location\":\"DHAKA\",\"status\":1},\"shipping\":{\"id\":2,\"shipping\":\"test3\",\"locations\":\"[\\\"6\\\",\\\"4\\\",\\\"2\\\"]\",\"price\":6,\"status\":1,\"user_id\":22}}', 'showrav Hasan', 'teacher@gmail.com', 'Hasan', 'Munshinogor,Delduar,Tangail,Dhaka,Bangladesh', '1234', 1, 2, '40115866726', 'Authorize.net', 'seller-3lS6BlYdq', NULL, '{\"id\":1,\"default\":1,\"symbol\":\"$\",\"code\":\"USD\",\"status\":1,\"value\":\"1.00\",\"user_id\":22,\"created_at\":\"2021-12-20T04:12:58.000000Z\",\"updated_at\":\"2022-11-30T10:53:30.000000Z\"}', '2023-02-28 00:16:12', '2023-03-30 11:29:31'),
(22, 24, 22, '{\"4-test__test2__test1\":{\"name\":\"Men Cotton Dress Shirts\",\"slug\":\"men-cotton-dress-shirts\",\"type\":\"1\",\"quantity\":1,\"item_stock\":\"5\",\"main_price\":\"15\",\"cart_single_price\":17,\"cart_item_price\":17,\"photo\":\"https:\\/\\/test.geniusocean.xyz\\/assets\\/images\\/22\\/21254325931666848598.png\",\"color\":{\"id\":1,\"color_name\":\"test1\",\"color_code\":\"#0051F3\",\"user_id\":\"22\",\"color_slug\":\"test1\"},\"attributes\":{\"Size\":{\"id\":1,\"user_id\":\"0\",\"attribute_id\":\"1\",\"name\":\"test\",\"price\":\"1\",\"attribute\":{\"id\":1,\"name\":\"Size\",\"user_id\":\"22\"}},\"Ram\":{\"id\":3,\"user_id\":\"0\",\"attribute_id\":\"2\",\"name\":\"test2\",\"price\":\"1\",\"attribute\":{\"id\":2,\"name\":\"Ram\",\"user_id\":\"22\"}}}}}', 23, '[]', '{\"location\":{\"id\":2,\"user_id\":\"22\",\"location\":\"DHAKA\",\"status\":\"1\"},\"shipping\":{\"id\":2,\"shipping\":\"test3\",\"locations\":\"[\\\"6\\\",\\\"4\\\",\\\"2\\\"]\",\"price\":\"6\",\"status\":\"1\",\"user_id\":\"22\"}}', 'test', 'test@gmail.com', '3453453', 'Test Address1', '123133', 1, 0, 'txn_3Mgm6rJlIV5dN9n71ZLVM1TM', 'Stripe', 'seller-Rx72sq8jb', '', '{\"id\":1,\"default\":\"1\",\"symbol\":\"$\",\"code\":\"USD\",\"status\":\"1\",\"value\":\"1.00\",\"user_id\":\"22\",\"created_at\":\"2021-12-19T15:12:58.000000Z\",\"updated_at\":\"2022-11-29T21:53:30.000000Z\"}', '2023-03-01 16:38:06', '2023-03-01 16:38:06'),
(23, 22, 22, '{\"6-test\":{\"name\":\"Smart Blazar for Men\",\"slug\":\"smart-blazar-for-men\",\"type\":\"0\",\"quantity\":1,\"item_stock\":\"5\",\"main_price\":\"5\",\"cart_single_price\":6,\"cart_item_price\":6,\"photo\":\"https:\\/\\/test.geniusocean.xyz\\/assets\\/images\\/22\\/19219784691666848965.png\",\"color\":null,\"attributes\":{\"Size\":{\"id\":1,\"user_id\":\"0\",\"attribute_id\":\"1\",\"name\":\"test\",\"price\":\"1\",\"attribute\":{\"id\":1,\"name\":\"Size\",\"user_id\":\"22\"}}}},\"4-test__test2__test1\":{\"name\":\"Men Cotton Dress Shirts\",\"slug\":\"men-cotton-dress-shirts\",\"type\":\"1\",\"quantity\":1,\"item_stock\":\"5\",\"main_price\":\"15\",\"cart_single_price\":17,\"cart_item_price\":17,\"photo\":\"https:\\/\\/test.geniusocean.xyz\\/assets\\/images\\/22\\/21254325931666848598.png\",\"color\":{\"id\":1,\"color_name\":\"test1\",\"color_code\":\"#0051F3\",\"user_id\":\"22\",\"color_slug\":\"test1\"},\"attributes\":{\"Size\":{\"id\":1,\"user_id\":\"0\",\"attribute_id\":\"1\",\"name\":\"test\",\"price\":\"1\",\"attribute\":{\"id\":1,\"name\":\"Size\",\"user_id\":\"22\"}},\"Ram\":{\"id\":3,\"user_id\":\"0\",\"attribute_id\":\"2\",\"name\":\"test2\",\"price\":\"1\",\"attribute\":{\"id\":2,\"name\":\"Ram\",\"user_id\":\"22\"}}}}}', 29, '[]', '{\"location\":{\"id\":2,\"user_id\":\"22\",\"location\":\"DHAKA\",\"status\":\"1\"},\"shipping\":{\"id\":2,\"shipping\":\"test3\",\"locations\":\"[\\\"6\\\",\\\"4\\\",\\\"2\\\"]\",\"price\":\"6\",\"status\":\"1\",\"user_id\":\"22\"}}', 'test1', 'seller@gmail.com', '3453453', 'Uttara', '1230', 1, 0, '405439610', 'Paystack', 'seller-bDMJwkHTe', '', '{\"id\":8,\"default\":\"0\",\"symbol\":\"\\u20a6\",\"code\":\"NGN\",\"status\":\"1\",\"value\":\"416.00\",\"user_id\":\"22\",\"created_at\":\"2022-02-05T16:41:35.000000Z\",\"updated_at\":\"2022-11-29T20:14:16.000000Z\"}', '2023-03-01 18:16:12', '2023-03-01 18:16:12'),
(24, 24, 22, '{\"4-test__test2__test1\":{\"name\":\"Men Cotton Dress Shirts\",\"slug\":\"men-cotton-dress-shirts\",\"type\":\"1\",\"quantity\":1,\"item_stock\":\"5\",\"main_price\":\"15\",\"cart_single_price\":17,\"cart_item_price\":17,\"photo\":\"https:\\/\\/test.geniusocean.xyz\\/assets\\/images\\/22\\/21254325931666848598.png\",\"color\":{\"id\":1,\"color_name\":\"test1\",\"color_code\":\"#0051F3\",\"user_id\":\"22\",\"color_slug\":\"test1\"},\"attributes\":{\"Size\":{\"id\":1,\"user_id\":\"0\",\"attribute_id\":\"1\",\"name\":\"test\",\"price\":\"1\",\"attribute\":{\"id\":1,\"name\":\"Size\",\"user_id\":\"22\"}},\"Ram\":{\"id\":3,\"user_id\":\"0\",\"attribute_id\":\"2\",\"name\":\"test2\",\"price\":\"1\",\"attribute\":{\"id\":2,\"name\":\"Ram\",\"user_id\":\"22\"}}}}}', 66.438202247191, '[]', '{\"location\":{\"id\":3,\"user_id\":\"22\",\"location\":\"TANGAIL\",\"status\":\"1\"},\"shipping\":{\"id\":6,\"shipping\":\"asdfasdf\",\"locations\":\"[\\\"3\\\"]\",\"price\":\"49.438202247191\",\"status\":\"1\",\"user_id\":\"22\"}}', 'test', 'test@gmail.com', '3453453', 'Test Address1', '123133', 1, 0, 'txn_3Mq7IcJlIV5dN9n70SlY00DH', 'Stripe', 'seller-OIimRZqUY', '', '{\"id\":1,\"default\":\"1\",\"symbol\":\"$\",\"code\":\"USD\",\"status\":\"1\",\"value\":\"1.00\",\"user_id\":\"22\",\"created_at\":\"2021-12-19T15:12:58.000000Z\",\"updated_at\":\"2022-11-29T21:53:30.000000Z\"}', '2023-03-27 11:04:51', '2023-03-27 11:04:51'),
(25, 22, 22, '{\"11-css32__test1\":{\"name\":\"Jonahtan Andrew\",\"slug\":\"jonahtan-andrew\",\"type\":\"1\",\"quantity\":1,\"item_stock\":\"22\",\"main_price\":\"22\",\"cart_single_price\":28.449999999999999289457264239899814128875732421875,\"cart_item_price\":28.449999999999999289457264239899814128875732421875,\"photo\":\"https:\\/\\/test.geniusocean.xyz\\/assets\\/images\\/22\\/18846129071680156905.jpg\",\"color\":{\"id\":1,\"color_name\":\"test1\",\"color_code\":\"#0051F3\",\"user_id\":\"22\",\"color_slug\":\"test1\"},\"attributes\":{\"Ram\":{\"id\":4,\"user_id\":\"0\",\"attribute_id\":\"2\",\"name\":\"CSS32\",\"price\":\"6.45\",\"attribute\":{\"id\":2,\"name\":\"Ram\",\"user_id\":\"22\"}}}}}', 31.605, '{\"coupon\":{\"id\":4,\"user_id\":\"22\",\"code\":\"hii\",\"expired\":\"2023-05-11\",\"percentage\":\"10\",\"status\":\"1\"},\"discount\":2.845000000000000195399252334027551114559173583984375}', '{\"location\":{\"id\":2,\"user_id\":\"22\",\"location\":\"DHAKA\",\"status\":\"1\"},\"shipping\":{\"id\":2,\"shipping\":\"test3\",\"locations\":\"[\\\"6\\\",\\\"4\\\",\\\"2\\\"]\",\"price\":\"6\",\"status\":\"1\",\"user_id\":\"22\"}}', 'test1', 'seller@gmail.com', '3453453', 'Uttara', '1230', 1, 0, 'txn_3MrGKEJlIV5dN9n71spx6hvG', 'Stripe', 'seller-8M7DopplC', '', '{\"id\":1,\"default\":\"1\",\"symbol\":\"$\",\"code\":\"USD\",\"status\":\"1\",\"value\":\"1.00\",\"user_id\":\"22\",\"created_at\":\"2021-12-19T15:12:58.000000Z\",\"updated_at\":\"2022-11-29T21:53:30.000000Z\"}', '2023-03-30 14:55:15', '2023-03-30 14:55:15'),
(26, 22, 22, '{\"3-test__test1\":{\"name\":\"Women Black Fashion Shirt\",\"slug\":\"women-black-fashion-shirt\",\"type\":\"1\",\"quantity\":1,\"item_stock\":\"5\",\"main_price\":\"20\",\"cart_single_price\":21,\"cart_item_price\":21,\"photo\":\"https:\\/\\/test.geniusocean.xyz\\/assets\\/images\\/22\\/8603419871666848625.png\",\"color\":{\"id\":1,\"color_name\":\"test1\",\"color_code\":\"#0051F3\",\"user_id\":\"22\",\"color_slug\":\"test1\"},\"attributes\":{\"Size\":{\"id\":1,\"user_id\":\"0\",\"attribute_id\":\"1\",\"name\":\"test\",\"price\":\"1\",\"attribute\":{\"id\":1,\"name\":\"Size\",\"user_id\":\"22\"}}}}}', 27, '[]', '{\"location\":{\"id\":2,\"user_id\":\"22\",\"location\":\"DHAKA\",\"status\":\"1\"},\"shipping\":{\"id\":2,\"shipping\":\"test3\",\"locations\":\"[\\\"6\\\",\\\"4\\\",\\\"2\\\"]\",\"price\":\"6\",\"status\":\"1\",\"user_id\":\"22\"}}', 'test1', 'seller@gmail.com', '3453453', 'Uttara', '1230', 1, 0, 'txn_3MrGM0JlIV5dN9n701ssV0VR', 'Stripe', 'seller-nG1vcXINK', '', '{\"id\":1,\"default\":\"1\",\"symbol\":\"$\",\"code\":\"USD\",\"status\":\"1\",\"value\":\"1.00\",\"user_id\":\"22\",\"created_at\":\"2021-12-19T15:12:58.000000Z\",\"updated_at\":\"2022-11-29T21:53:30.000000Z\"}', '2023-03-30 14:57:05', '2023-03-30 14:57:05');

-- --------------------------------------------------------

--
-- Table structure for table `packages`
--

CREATE TABLE `packages` (
  `id` bigint(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` text DEFAULT NULL,
  `days` int(11) NOT NULL,
  `price` double NOT NULL,
  `category_limit` int(11) NOT NULL,
  `product_limit` int(11) NOT NULL,
  `customer_limit` int(11) NOT NULL,
  `brand_limit` int(11) NOT NULL,
  `variant_limit` int(11) NOT NULL,
  `custom_domain` tinyint(4) NOT NULL,
  `customer_panel_access` tinyint(4) NOT NULL,
  `support` tinyint(4) NOT NULL,
  `qr_code` tinyint(4) NOT NULL,
  `facebook_pixel` tinyint(4) NOT NULL,
  `google_analytics` tinyint(4) NOT NULL,
  `is_featured` tinyint(4) NOT NULL,
  `status` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `packages`
--

INSERT INTO `packages` (`id`, `name`, `description`, `days`, `price`, `category_limit`, `product_limit`, `customer_limit`, `brand_limit`, `variant_limit`, `custom_domain`, `customer_panel_access`, `support`, `qr_code`, `facebook_pixel`, `google_analytics`, `is_featured`, `status`) VALUES
(2, 'Premium', 'Premium Package', 7, 5, 8, 50, 50, 6, 50, 1, 1, 1, 1, 1, 0, 1, 1),
(3, 'Standard', 'StandardPackage', 365, 50, 5000, 5, 5, 5, 50, 1, 1, 1, 1, 1, 0, 0, 1),
(4, 'Free', 'Free Package', 365, 0, 0, 5, 5, 5, 50, 1, 1, 1, 1, 1, 0, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `package_features`
--

CREATE TABLE `package_features` (
  `id` bigint(20) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `package_features`
--

INSERT INTO `package_features` (`id`, `name`, `status`) VALUES
(1, 'Custom Domain', 1),
(3, 'Subdomain', 1),
(4, 'Blog', 1),
(5, 'Service', 1),
(6, 'Pages', 1);

-- --------------------------------------------------------

--
-- Table structure for table `package_orders`
--

CREATE TABLE `package_orders` (
  `id` bigint(20) NOT NULL,
  `order_no` varchar(40) NOT NULL,
  `amount` double NOT NULL DEFAULT 0,
  `txn` varchar(40) NOT NULL,
  `will_expire` date NOT NULL,
  `user_id` int(11) NOT NULL,
  `package_id` int(11) NOT NULL,
  `method` varchar(20) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `payment_status` tinyint(4) NOT NULL,
  `currency` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `package_orders`
--

INSERT INTO `package_orders` (`id`, `order_no`, `amount`, `txn`, `will_expire`, `user_id`, `package_id`, `method`, `status`, `payment_status`, `currency`, `created_at`, `updated_at`) VALUES
(3, '22ORD-1664963554', 5, 'I2rioJbc9', '2023-01-02', 22, 2, 'Mobile Money', 0, 1, '{\"id\":1,\"default\":1,\"symbol\":\"$\",\"code\":\"USD\",\"status\":1,\"value\":\"1.00\",\"user_id\":22,\"created_at\":\"2021-12-20T04:12:58.000000Z\",\"updated_at\":\"2022-11-30T10:53:30.000000Z\"}', '2022-10-05 03:52:34', '2022-12-26 03:50:14'),
(5, '22ORD-1671422620', 5, 'txn_3MGaZjJlIV5dN9n70pTUt3Bh', '2023-01-02', 22, 2, '2', 1, 1, '{\"id\":1,\"default\":1,\"symbol\":\"$\",\"code\":\"USD\",\"status\":1,\"value\":\"1.00\",\"user_id\":22,\"created_at\":\"2021-12-20T04:12:58.000000Z\",\"updated_at\":\"2022-11-30T10:53:30.000000Z\"}', '2022-12-18 22:03:40', '2022-12-26 03:49:10'),
(6, '22ORD-1671423084', 5, 'txn_3MGahDJlIV5dN9n70ZJ3ATHd', '2023-12-19', 22, 3, 'Stripe', 1, 1, '{\"id\":1,\"default\":1,\"symbol\":\"$\",\"code\":\"USD\",\"status\":1,\"value\":\"1.00\",\"user_id\":22,\"created_at\":\"2021-12-20T04:12:58.000000Z\",\"updated_at\":\"2022-11-30T10:53:30.000000Z\"}', '2022-12-18 22:11:24', '2022-12-18 22:11:24'),
(7, '22ORD-1671449981', 5, '40S09499XD662672S', '2023-12-19', 22, 3, 'Paypal', 1, 1, '{\"id\":1,\"default\":1,\"symbol\":\"$\",\"code\":\"USD\",\"status\":1,\"value\":\"1.00\",\"user_id\":22,\"created_at\":\"2021-12-20T04:12:58.000000Z\",\"updated_at\":\"2022-11-30T10:53:30.000000Z\"}', '2022-12-19 05:39:41', '2022-12-19 05:39:41'),
(8, '22ORD-1671524166', 5, '40110274001', '2023-12-20', 22, 3, 'Authorize.net', 1, 1, '{\"id\":1,\"default\":1,\"symbol\":\"$\",\"code\":\"USD\",\"status\":1,\"value\":\"1.00\",\"user_id\":22,\"created_at\":\"2021-12-20T04:12:58.000000Z\",\"updated_at\":\"2022-11-30T10:53:30.000000Z\"}', '2022-12-20 02:16:06', '2022-12-20 02:16:06'),
(9, '22ORD-1671527737', 5, '20221220111212800110168263804338584', '2023-12-20', 22, 3, 'Paytm', 1, 1, '{\"id\":1,\"default\":1,\"symbol\":\"$\",\"code\":\"USD\",\"status\":1,\"value\":\"1.00\",\"user_id\":22,\"created_at\":\"2021-12-20T04:12:58.000000Z\",\"updated_at\":\"2022-11-30T10:53:30.000000Z\"}', '2022-12-20 03:15:37', '2022-12-20 03:15:37'),
(10, '22ORD-1671528745', 5, 'pay_Ku7G4g3NcP7yN8', '2022-12-20', 22, 3, 'Razorpay', 1, 1, '{\"id\":1,\"default\":1,\"symbol\":\"$\",\"code\":\"USD\",\"status\":1,\"value\":\"1.00\",\"user_id\":22,\"created_at\":\"2021-12-20T04:12:58.000000Z\",\"updated_at\":\"2022-11-30T10:53:30.000000Z\"}', '2022-12-20 03:32:25', '2022-12-20 03:32:25'),
(11, '22ORD-1671612475', 5, '720876445', '2023-01-02', 22, 2, 'Mobile Money', 0, 1, '{\"id\":1,\"default\":1,\"symbol\":\"$\",\"code\":\"USD\",\"status\":1,\"value\":\"1.00\",\"user_id\":22,\"created_at\":\"2021-12-20T04:12:58.000000Z\",\"updated_at\":\"2022-11-30T10:53:30.000000Z\"}', '2022-12-21 02:47:55', '2022-12-26 04:06:30'),
(12, '22ORD-1672144881', 5, '883109051', '2023-12-27', 22, 3, 'Paystack', 1, 1, '{\"id\":1,\"default\":1,\"symbol\":\"$\",\"code\":\"USD\",\"status\":1,\"value\":\"1.00\",\"user_id\":22,\"created_at\":\"2021-12-20T04:12:58.000000Z\",\"updated_at\":\"2022-11-30T10:53:30.000000Z\"}', '2022-12-27 06:41:21', '2022-12-27 06:41:21'),
(13, '22ORD-1672548284', 5, '20230101111212800110168910304398272', '2024-01-01', 22, 3, 'Paytm', 1, 1, '{\"id\":1,\"default\":1,\"symbol\":\"$\",\"code\":\"USD\",\"status\":1,\"value\":\"1.00\",\"user_id\":22,\"created_at\":\"2021-12-20T04:12:58.000000Z\",\"updated_at\":\"2022-11-30T10:53:30.000000Z\"}', '2022-12-31 22:44:44', '2022-12-31 22:44:44'),
(14, '22ORD-1672733960', 5, '6FX06579KX809964J', '2024-01-03', 22, 3, 'Paypal', 1, 1, '{\"id\":1,\"default\":1,\"symbol\":\"$\",\"code\":\"USD\",\"status\":1,\"value\":\"1.00\",\"user_id\":22,\"created_at\":\"2021-12-20T04:12:58.000000Z\",\"updated_at\":\"2022-11-30T10:53:30.000000Z\"}', '2023-01-03 02:19:20', '2023-01-03 02:19:20'),
(15, '22ORD-1672734261', 5, '6FX06579KX809964J', '2024-01-03', 22, 3, 'Paypal', 1, 1, '{\"id\":1,\"default\":1,\"symbol\":\"$\",\"code\":\"USD\",\"status\":1,\"value\":\"1.00\",\"user_id\":22,\"created_at\":\"2021-12-20T04:12:58.000000Z\",\"updated_at\":\"2022-11-30T10:53:30.000000Z\"}', '2023-01-03 02:24:21', '2023-01-03 02:24:21'),
(16, '22ORD-1672734274', 5, '6FX06579KX809964J', '2024-01-03', 22, 3, 'Paypal', 1, 1, '{\"id\":1,\"default\":1,\"symbol\":\"$\",\"code\":\"USD\",\"status\":1,\"value\":\"1.00\",\"user_id\":22,\"created_at\":\"2021-12-20T04:12:58.000000Z\",\"updated_at\":\"2022-11-30T10:53:30.000000Z\"}', '2023-01-03 02:24:34', '2023-01-03 02:24:34'),
(17, '22ORD-1672734361', 5, 'txn_3MM5orJlIV5dN9n70H7NfUna', '2023-01-10', 22, 2, 'Stripe', 1, 1, '{\"id\":1,\"default\":1,\"symbol\":\"$\",\"code\":\"USD\",\"status\":1,\"value\":\"1.00\",\"user_id\":22,\"created_at\":\"2021-12-20T04:12:58.000000Z\",\"updated_at\":\"2022-11-30T10:53:30.000000Z\"}', '2023-01-03 02:26:01', '2023-01-03 02:26:01'),
(18, '22ORD-1673339365', 5, '88D32668C17442125', '2024-01-10', 22, 3, 'Paypal', 1, 1, '{\"id\":1,\"default\":1,\"symbol\":\"$\",\"code\":\"USD\",\"status\":1,\"value\":\"1.00\",\"user_id\":22,\"created_at\":\"2021-12-20T04:12:58.000000Z\",\"updated_at\":\"2022-11-30T10:53:30.000000Z\"}', '2023-01-10 02:29:25', '2023-01-10 02:29:25'),
(19, '22ORD-1673428052', 5, 'txn_3MP0HPJlIV5dN9n71RFXEp49', '2024-01-11', 22, 3, 'Stripe', 1, 1, '{\"id\":1,\"default\":1,\"symbol\":\"$\",\"code\":\"USD\",\"status\":1,\"value\":\"1.00\",\"user_id\":22,\"created_at\":\"2021-12-20T04:12:58.000000Z\",\"updated_at\":\"2022-11-30T10:53:30.000000Z\"}', '2023-01-11 03:07:32', '2023-01-11 03:07:32'),
(22, '33ORD-1676282927', 5, 'txn_3MayxmJlIV5dN9n71fvtQMmd', '2023-02-20', 33, 2, 'stripe', 1, 1, '{\"id\":1,\"default\":1,\"symbol\":\"$\",\"code\":\"USD\",\"status\":1,\"value\":\"1.00\",\"user_id\":22,\"created_at\":\"2021-12-19T22:12:58.000000Z\",\"updated_at\":\"2022-11-30T04:53:30.000000Z\"}', '2023-02-13 04:08:47', '2023-02-13 04:08:47'),
(23, '22ORD-1676802064', 5, '863525127', '2024-02-19', 22, 3, 'Paystack', 1, 1, '{\"id\":8,\"default\":0,\"symbol\":\"\\u20a6\",\"code\":\"NGN\",\"status\":1,\"value\":\"416.00\",\"user_id\":22,\"created_at\":\"2022-02-06T05:41:35.000000Z\",\"updated_at\":\"2022-11-30T09:14:16.000000Z\"}', '2023-02-19 04:21:04', '2023-02-19 04:21:04'),
(24, '22ORD-1676802279', 5, 'pay_LIGjUPqZ9H8Yve', '2024-02-19', 22, 3, 'Razorpay', 1, 1, '{\"id\":7,\"default\":0,\"symbol\":\"\\u20b9\",\"code\":\"INR\",\"status\":1,\"value\":\"75.00\",\"user_id\":22,\"created_at\":\"2022-01-26T02:28:23.000000Z\",\"updated_at\":\"2022-11-30T10:37:29.000000Z\"}', '2023-02-19 04:24:39', '2023-02-19 04:24:39'),
(25, '22ORD-1676802706', 5, '20230219111212800110168300704717216', '2023-02-26', 22, 2, 'Paytm', 1, 1, '{\"id\":7,\"default\":0,\"symbol\":\"\\u20b9\",\"code\":\"INR\",\"status\":1,\"value\":\"75.00\",\"user_id\":22,\"created_at\":\"2022-01-26T02:28:23.000000Z\",\"updated_at\":\"2022-11-30T10:37:29.000000Z\"}', '2023-02-19 04:31:46', '2023-02-19 04:31:46'),
(26, '22ORD-1676804238', 0, 'CgvC6Nko8', '2024-02-19', 22, 4, 'Free', 1, 1, '{\"id\":7,\"default\":0,\"symbol\":\"\\u20b9\",\"code\":\"INR\",\"status\":1,\"value\":\"75.00\",\"user_id\":22,\"created_at\":\"2022-01-26T02:28:23.000000Z\",\"updated_at\":\"2022-11-30T10:37:29.000000Z\"}', '2023-02-19 04:57:18', '2023-02-19 04:57:18'),
(27, '22ORD-1676804287', 0, 'oEIMU2kmw', '2023-02-27', 22, 2, 'Authorize.Net', 0, 1, '{\"id\":7,\"default\":0,\"symbol\":\"\\u20b9\",\"code\":\"INR\",\"status\":1,\"value\":\"75.00\",\"user_id\":22,\"created_at\":\"2022-01-26T02:28:23.000000Z\",\"updated_at\":\"2022-11-30T10:37:29.000000Z\"}', '2023-02-19 04:58:07', '2023-02-20 03:39:54'),
(28, '22ORD-1676885900', 0, 'fVOe4qkwN', '2025-02-18', 22, 4, '--', 0, 1, '{\"id\":1,\"default\":1,\"symbol\":\"$\",\"code\":\"USD\",\"status\":1,\"value\":\"1.00\",\"user_id\":22,\"created_at\":\"2021-12-20T04:12:58.000000Z\",\"updated_at\":\"2022-11-30T10:53:30.000000Z\"}', '2023-02-20 03:38:20', '2023-02-20 03:38:20'),
(29, '22ORD-1676886092', 0, 'K5CDV4HBy', '2024-02-20', 22, 4, '--', 0, 1, '{\"id\":1,\"default\":1,\"symbol\":\"$\",\"code\":\"USD\",\"status\":1,\"value\":\"1.00\",\"user_id\":22,\"created_at\":\"2021-12-20T04:12:58.000000Z\",\"updated_at\":\"2022-11-30T10:53:30.000000Z\"}', '2023-02-20 03:41:32', '2023-02-20 03:41:32'),
(41, '22ORD-1680150807', 5, 'txn_3MrDAwJlIV5dN9n71zA1477Q', '2023-04-06', 22, 2, 'Stripe', 1, 1, '{\"id\":1,\"default\":\"1\",\"symbol\":\"$\",\"code\":\"USD\",\"status\":\"1\",\"value\":\"1.00\",\"user_id\":\"22\",\"created_at\":\"2021-12-19T15:12:58.000000Z\",\"updated_at\":\"2022-11-29T21:53:30.000000Z\"}', '2023-03-30 11:33:27', '2023-03-30 11:33:27'),
(42, '22ORD-1680420011', 5, 'pay_LYq1gp448eFTge', '2023-04-13', 22, 2, 'Razorpay', 1, 1, '{\"id\":7,\"default\":0,\"symbol\":\"\\u20b9\",\"code\":\"INR\",\"status\":1,\"value\":\"75.00\",\"user_id\":22,\"created_at\":\"2022-01-26T02:28:23.000000Z\",\"updated_at\":\"2022-11-30T10:37:29.000000Z\"}', '2023-04-02 01:20:11', '2023-04-02 01:20:11'),
(43, '22ORD-1680420430', 50, '39N73693HR856600C', '2024-04-01', 22, 3, 'Paypal', 1, 1, '{\"id\":1,\"default\":1,\"symbol\":\"$\",\"code\":\"USD\",\"status\":1,\"value\":\"1.00\",\"user_id\":22,\"created_at\":\"2021-12-20T04:12:58.000000Z\",\"updated_at\":\"2022-11-30T10:53:30.000000Z\"}', '2023-04-02 01:27:10', '2023-04-02 01:27:10'),
(44, '22ORD-1680503733', 5, '8KV3005946888373X', '2023-04-10', 22, 2, 'Paypal', 1, 1, '{\"id\":1,\"default\":1,\"symbol\":\"$\",\"code\":\"USD\",\"status\":1,\"value\":\"1.00\",\"user_id\":22,\"created_at\":\"2021-12-20T04:12:58.000000Z\",\"updated_at\":\"2022-11-30T10:53:30.000000Z\"}', '2023-04-03 00:35:33', '2023-04-03 00:35:33'),
(47, '47ORD-1680598532', 50, 'chg_TS06A2320231155t4F80404462', '2024-04-03', 47, 3, 'Tap', 1, 1, '{\"id\":11,\"default\":0,\"symbol\":\"SAR\",\"code\":\"SAR\",\"status\":1,\"value\":\"1.00\",\"user_id\":22,\"created_at\":\"2022-02-05T23:41:35.000000Z\",\"updated_at\":\"2022-11-30T03:14:16.000000Z\"}', '2023-04-04 02:55:32', '2023-04-04 02:55:32'),
(48, '48ORD-1680599389', 50, 'chg_TS07A3220231209i2O20404412', '2024-04-03', 48, 3, 'Tap', 1, 1, '{\"id\":11,\"default\":0,\"symbol\":\"SAR\",\"code\":\"SAR\",\"status\":1,\"value\":\"1.00\",\"user_id\":22,\"created_at\":\"2022-02-05T23:41:35.000000Z\",\"updated_at\":\"2022-11-30T03:14:16.000000Z\"}', '2023-04-04 03:09:49', '2023-04-04 03:09:49');

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(191) NOT NULL,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `title`, `slug`, `details`, `lang`) VALUES
(13, 'About', 'about', '<p style=\"color:rgb(108,117,125);font-family:Nunito, \'Segoe UI\', arial;font-size:14px;text-align:justify;\">Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksgrove right at the coast of the Semantics, a large language ocean. A small river named Duden flows by their place and supplies it with the necessary regelialia. It is a paradisematic country, in which roasted parts of sentences fly into your mouth. Even the all-powerful Pointing has no control about the blind texts it is an almost unorthographic life One day however a small line of blind text by the name of Lorem Ipsum decided to leave for the far World of Grammar. The Big Oxmox advised her not to do so, because there were thousands of bad Commas, wild Question Marks and devious Semikoli, but the Little Blind Text didn’t listen. She packed her seven versalia, put her initial into the belt and made herself on the way. When she reached the first hills of the Italic Mountains, she had a last view back on the skyline of her hometown Bookmarksgrove, the headline of Alphabet Village and the subline of her own road, the Line Lane. Pityful a rethoric question ran over her cheek, then</p>\r\n\r\n<p style=\"color:rgb(108,117,125);font-family:Nunito, \'Segoe UI\', arial;font-size:14px;text-align:justify;\"><span style=\"color:rgb(0,0,0);font-family:\'Open Sans\', Arial, sans-serif;\"> Far far away, behind the word mountains, far from the countries Vokalia and Consonantia,</span></p>\r\n\r\n<p style=\"color:rgb(108,117,125);font-family:Nunito, \'Segoe UI\', arial;font-size:14px;text-align:justify;\"><span style=\"color:rgb(0,0,0);font-family:\'Open Sans\', Arial, sans-serif;\"><br></span></p>\r\n\r\n<p style=\"color:rgb(108,117,125);font-family:Nunito, \'Segoe UI\', arial;font-size:14px;text-align:justify;\"><span style=\"color:rgb(0,0,0);font-family:\'Open Sans\', Arial, sans-serif;\"><br></span></p>\r\n\r\n<p style=\"color:rgb(108,117,125);font-family:Nunito, \'Segoe UI\', arial;font-size:14px;text-align:justify;\"><span style=\"color:rgb(0,0,0);font-family:\'Open Sans\', Arial, sans-serif;\"> there live the blind texts. Separated they live in Bookmarksgrove right at the coast of the Semantics</span></p>\r\n\r\n<p style=\"color:rgb(108,117,125);font-family:Nunito, \'Segoe UI\', arial;font-size:14px;text-align:justify;\"><span style=\"color:rgb(0,0,0);font-family:\'Open Sans\', Arial, sans-serif;\"><br></span></p>\r\n\r\n<p style=\"color:rgb(108,117,125);font-family:Nunito, \'Segoe UI\', arial;font-size:14px;text-align:justify;\"><span style=\"color:rgb(0,0,0);font-family:\'Open Sans\', Arial, sans-serif;\"> She packed her seven versalia, put her initial into the belt and made herself on the way</span></p>\r\n\r\n<p style=\"color:rgb(108,117,125);font-family:Nunito, \'Segoe UI\', arial;font-size:14px;text-align:justify;\"><span style=\"color:rgb(0,0,0);font-family:\'Open Sans\', Arial, sans-serif;\">Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksgrove right at the coast of the Semantics, a large language ocean. A small river named Duden flows by their place and supplies it with the necessary regelialia. It is a paradisematic country, in which roasted parts of sentences fly into your mouth. Even the all-powerful Pointing has no control about the blind texts it is an almost unorthographic life One day however a small line of blind text by the name of Lorem Ipsum decided to leave for the far World of Grammar. </span></p>\r\n\r\n<p style=\"color:rgb(108,117,125);font-family:Nunito, \'Segoe UI\', arial;font-size:14px;text-align:justify;\"><span style=\"color:rgb(0,0,0);font-family:\'Open Sans\', Arial, sans-serif;\"><br></span></p>\r\n\r\n<p style=\"color:rgb(108,117,125);font-family:Nunito, \'Segoe UI\', arial;font-size:14px;text-align:justify;\"><span style=\"color:rgb(0,0,0);font-family:\'Open Sans\', Arial, sans-serif;\">The Big Oxmox advised her not to do so, because there were thousands of bad Commas, wild Question Marks and devious Semikoli, but the Little Blind Text didn’t listen. She packed her seven versalia, put her initial into the belt and made herself on the way. When she reached the first hills of the Italic Mountains, she had a last view back on the skyline of her hometown Bookmarksgrove, the headline of Alphabet Village and the subline of her own road, the Line Lane. Pityful a rethoric question ran over her cheek, then</span></p>\r\n\r\n<p style=\"color:rgb(108,117,125);font-family:Nunito, \'Segoe UI\', arial;font-size:14px;text-align:justify;\"><span style=\"color:rgb(0,0,0);font-family:\'Open Sans\', Arial, sans-serif;\">Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksgrove right at the coast of the Semantics, a large language ocean. A small river named Duden flows by their place and supplies it with the necessary regelialia. It is a paradisematic country, in which roasted parts of sentences fly into your mouth. Even the all-powerful Pointing has no control about the blind texts it is an almost unorthographic life One day however a small line of blind text by the name of Lorem Ipsum decided to leave for the far World of Grammar. The Big Oxmox advised her not to do so, because there were thousands of bad Commas, wild Question Marks and devious Semikoli, but the Little Blind Text didn’t listen. She packed her seven versalia, put her initial into the belt and made herself on the way. When she reached the first hills of the Italic Mountains, she had a last view back on the skyline of her hometown Bookmarksgrove, the headline of Alphabet Village and the subline of her own road, the Line Lane. Pityful a rethoric question ran over her cheek, then</span><span style=\"color:rgb(0,0,0);font-family:\'Open Sans\', Arial, sans-serif;\"><br></span></p>', 'en'),
(14, 'Announcement', 'announcement', '<p>The standard Lorem Ipsum passage, used since the 1500s</p>\r\n\r\n<p style=\"text-align:justify;color:rgb(0,0,0);font-family:\'Open Sans\', Arial, sans-serif;\">\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\"</p>\r\n\r\n<p>Section 1.10.32 of \"de Finibus Bonorum et Malorum\", written by Cicero in 45 BC</p>\r\n\r\n<p style=\"text-align:justify;color:rgb(0,0,0);font-family:\'Open Sans\', Arial, sans-serif;\">\"Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?\"</p>\r\n\r\n<p>1914 translation by H. Rackham</p>\r\n\r\n<p style=\"text-align:justify;color:rgb(0,0,0);font-family:\'Open Sans\', Arial, sans-serif;\">\"But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial example, which of us ever undertakes laborious physical exercise, except to obtain some advantage from it? But who has any right to find fault with a man who chooses to enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure?\"</p>\r\n\r\n<p>Section 1.10.33 of \"de Finibus Bonorum et Malorum\", written by Cicero in 45 BC</p>\r\n\r\n<p style=\"text-align:justify;color:rgb(0,0,0);font-family:\'Open Sans\', Arial, sans-serif;\">\"At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.</p>', 'en');

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
-- Table structure for table `payment_gateways`
--

CREATE TABLE `payment_gateways` (
  `id` int(191) NOT NULL,
  `subtitle` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` enum('manual','automatic') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'manual',
  `information` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keyword` varchar(191) DEFAULT NULL,
  `currency_id` varchar(191) NOT NULL DEFAULT '0',
  `checkout` int(191) NOT NULL DEFAULT 1,
  `status` int(1) NOT NULL DEFAULT 1,
  `subscription` int(191) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `payment_gateways`
--

INSERT INTO `payment_gateways` (`id`, `subtitle`, `title`, `details`, `name`, `type`, `information`, `keyword`, `currency_id`, `checkout`, `status`, `subscription`) VALUES
(8, NULL, NULL, NULL, 'Authorize.Net', 'automatic', '{\"login_id\":\"76zu9VgUSxrJ\",\"txn_key\":\"2Vj62a6skSrP5U3X\",\"text\":\"Pay Via Authorize.Net\",\"sandbox_check\":1}', 'authorize', '[\"1\",\"4\"]', 1, 1, 1),
(9, NULL, NULL, '', 'Razorpay', 'automatic', '{\"key\":\"rzp_test_xDH74d48cwl8DF\",\"secret\":\"cr0H1BiQ20hVzhpHfHuNbGri\",\"text\":\"Pay via your Razorpay account.\"}', 'razorpay', '[\"7\"]', 1, 1, 1),
(11, NULL, NULL, '', 'Paytm', 'automatic', '{\"merchant\":\"tkogux49985047638244\",\"secret\":\"LhNGUUKE9xCQ9xY8\",\"website\":\"WEBSTAGING\",\"industry\":\"Retail\",\"text\":\"Pay via your Paytm account.\",\"sandbox_check\":1}', 'paytm', '[\"7\"]', 1, 1, 1),
(12, NULL, NULL, '', 'Paystack', 'automatic', '{\"key\":\"pk_test_162a56d42131cbb01932ed0d2c48f9cb99d8e8e2\",\"email\":\"junnuns@gmail.com\",\"text\":\"Pay via your Paystack account.\"}', 'paystack', '[\"8\"]', 1, 1, 1),
(14, NULL, NULL, NULL, 'Stripe', 'automatic', '{\"key\":\"pk_test_UnU1Coi1p5qFGwtpjZMRMgJM\",\"secret\":\"sk_test_QQcg3vGsKRPlW6T3dXcNJsor\",\"text\":\"Pay via your Credit Card.\"}', 'stripe', '[\"1\",\"4\"]', 1, 1, 1),
(15, NULL, NULL, '', 'Paypal', 'automatic', '{\"client_id\":\"AcWYnysKa_elsQIAnlfsJXokR64Z31CeCbpis9G3msDC-BvgcbAwbacfDfEGSP-9Dp9fZaGgD05pX5Qi\",\"client_secret\":\"EGZXTq6d6vBPq8kysVx8WQA5NpavMpDzOLVOb9u75UfsJ-cFzn6aeBXIMyJW2lN1UZtJg5iDPNL9ocYE\",\"text\":\"Pay via your PayPal account.\",\"sandbox_check\":1}', 'paypal', '[\"1\",\"4\"]', 1, 1, 1),
(19, '5-6 days', 'Wire Bank', '<p>Wire bank&nbsp;</p><p>ACC NO. : 268653464646546465.</p><p>Deep branch</p>', 'Wire Bank', 'manual', NULL, 'manual', '[\"1\",\"4\",\"6\"]', 1, 1, 1),
(21, NULL, NULL, '', 'Tap', 'automatic', '{\"public_key\":\"pk_test_5xDVLGWKURITH8J79Bs4wQg6\",\"secret_key\":\"sk_test_HjetmBafySQKp26q0NWrkX7z\",\"text\":\"Pay via your Tap account.\",\"sandbox_check\":1}', 'tap', '[\"11\"]', 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(209, 'dashboard info', 'admin', '2022-02-16 23:31:25', '2022-02-16 23:31:25'),
(210, 'profit report', 'admin', '2022-02-16 23:31:25', '2022-02-16 23:31:25'),
(211, 'transactions', 'admin', '2022-02-16 23:31:25', '2022-02-16 23:31:25'),
(212, 'manage user', 'admin', '2022-02-16 23:31:25', '2022-02-16 23:31:25'),
(213, 'edit user', 'admin', '2022-02-16 23:31:25', '2022-02-16 23:31:25'),
(214, 'update user', 'admin', '2022-02-16 23:31:25', '2022-02-16 23:31:25'),
(215, 'user balance modify', 'admin', '2022-02-16 23:31:25', '2022-02-16 23:31:25'),
(216, 'user login', 'admin', '2022-02-16 23:31:25', '2022-02-16 23:31:25'),
(217, 'user login logs', 'admin', '2022-02-16 23:31:25', '2022-02-16 23:31:25'),
(218, 'manage merchant', 'admin', '2022-02-16 23:31:25', '2022-02-16 23:31:25'),
(219, 'edit merchant', 'admin', '2022-02-16 23:31:25', '2022-02-16 23:31:25'),
(220, 'update merchant', 'admin', '2022-02-16 23:31:25', '2022-02-16 23:31:25'),
(221, 'merchant balance modify', 'admin', '2022-02-16 23:31:25', '2022-02-16 23:31:25'),
(222, 'merchant login', 'admin', '2022-02-16 23:31:25', '2022-02-16 23:31:25'),
(223, 'merchant login logs', 'admin', '2022-02-16 23:31:25', '2022-02-16 23:31:25'),
(224, 'manage currency', 'admin', '2022-02-16 23:31:25', '2022-02-16 23:31:25'),
(225, 'add currency', 'admin', '2022-02-16 23:31:25', '2022-02-16 23:31:25'),
(226, 'edit currency', 'admin', '2022-02-16 23:31:25', '2022-02-16 23:31:25'),
(227, 'update currency', 'admin', '2022-02-16 23:31:25', '2022-02-16 23:31:25'),
(228, 'update currency api', 'admin', '2022-02-16 23:31:25', '2022-02-16 23:31:25'),
(229, 'manage charges', 'admin', '2022-02-16 23:31:25', '2022-02-16 23:31:25'),
(230, 'edit charge', 'admin', '2022-02-16 23:31:25', '2022-02-16 23:31:25'),
(231, 'update charge', 'admin', '2022-02-16 23:31:25', '2022-02-16 23:31:25'),
(232, 'manage country', 'admin', '2022-02-16 23:31:25', '2022-02-16 23:31:25'),
(233, 'add country', 'admin', '2022-02-16 23:31:25', '2022-02-16 23:31:25'),
(234, 'update country', 'admin', '2022-02-16 23:31:25', '2022-02-16 23:31:25'),
(235, 'manage modules', 'admin', '2022-02-16 23:31:25', '2022-02-16 23:31:25'),
(236, 'update module', 'admin', '2022-02-16 23:31:25', '2022-02-16 23:31:25'),
(237, 'manage kyc', 'admin', '2022-02-16 23:31:25', '2022-02-16 23:31:25'),
(238, 'manage kyc form', 'admin', '2022-02-16 23:31:25', '2022-02-16 23:31:25'),
(239, 'kyc form add', 'admin', '2022-02-16 23:31:25', '2022-02-16 23:31:25'),
(240, 'kyc form update', 'admin', '2022-02-16 23:31:25', '2022-02-16 23:31:25'),
(241, 'kyc form delete', 'admin', '2022-02-16 23:31:25', '2022-02-16 23:31:25'),
(242, 'kyc info', 'admin', '2022-02-16 23:31:25', '2022-02-16 23:31:25'),
(243, 'kyc details', 'admin', '2022-02-16 23:31:25', '2022-02-16 23:31:25'),
(244, 'kyc approve', 'admin', '2022-02-16 23:31:25', '2022-02-16 23:31:25'),
(245, 'kyc reject', 'admin', '2022-02-16 23:31:25', '2022-02-16 23:31:25'),
(246, 'manage escrow', 'admin', '2022-02-16 23:31:25', '2022-02-16 23:31:25'),
(247, 'escrow on-hold', 'admin', '2022-02-16 23:31:25', '2022-02-16 23:31:25'),
(248, 'escrow disputed', 'admin', '2022-02-16 23:31:25', '2022-02-16 23:31:25'),
(249, 'escrow details', 'admin', '2022-02-16 23:31:25', '2022-02-16 23:31:25'),
(250, 'dispute store', 'admin', '2022-02-16 23:31:25', '2022-02-16 23:31:25'),
(251, 'escrow return payment', 'admin', '2022-02-16 23:31:25', '2022-02-16 23:31:25'),
(252, 'escrow file download', 'admin', '2022-02-16 23:31:25', '2022-02-16 23:31:25'),
(253, 'escrow close', 'admin', '2022-02-16 23:31:25', '2022-02-16 23:31:25'),
(254, 'manage role', 'admin', '2022-02-16 23:31:25', '2022-02-16 23:31:25'),
(255, 'create role', 'admin', '2022-02-16 23:31:25', '2022-02-16 23:31:25'),
(256, 'edit permissions', 'admin', '2022-02-16 23:31:25', '2022-02-16 23:31:25'),
(257, 'update permissions', 'admin', '2022-02-16 23:31:25', '2022-02-16 23:31:25'),
(258, 'manage staff', 'admin', '2022-02-16 23:31:25', '2022-02-16 23:31:25'),
(259, 'add staff', 'admin', '2022-02-16 23:31:25', '2022-02-16 23:31:25'),
(260, 'update staff', 'admin', '2022-02-16 23:31:25', '2022-02-16 23:31:25'),
(261, 'general setting', 'admin', '2022-02-16 23:31:25', '2022-02-16 23:31:25'),
(262, 'general settings update', 'admin', '2022-02-16 23:31:25', '2022-02-16 23:31:25'),
(263, 'general settings logo favicon', 'admin', '2022-02-16 23:31:25', '2022-02-16 23:31:25'),
(264, 'general settings status update', 'admin', '2022-02-16 23:31:25', '2022-02-16 23:31:25'),
(265, 'menu builder', 'admin', '2022-02-16 23:31:25', '2022-02-16 23:31:25'),
(266, 'maintainance', 'admin', '2022-02-16 23:31:25', '2022-02-16 23:31:25'),
(267, 'email templates', 'admin', '2022-02-16 23:31:25', '2022-02-16 23:31:25'),
(268, 'template edit', 'admin', '2022-02-16 23:31:25', '2022-02-16 23:31:25'),
(269, 'template update', 'admin', '2022-02-16 23:31:25', '2022-02-16 23:31:25'),
(270, 'email config', 'admin', '2022-02-16 23:31:26', '2022-02-16 23:31:26'),
(271, 'group email', 'admin', '2022-02-16 23:31:26', '2022-02-16 23:31:26'),
(272, 'sms gateways', 'admin', '2022-02-16 23:31:26', '2022-02-16 23:31:26'),
(273, 'sms gateway edit', 'admin', '2022-02-16 23:31:26', '2022-02-16 23:31:26'),
(274, 'sms gateway update', 'admin', '2022-02-16 23:31:26', '2022-02-16 23:31:26'),
(275, 'sms templates', 'admin', '2022-02-16 23:31:26', '2022-02-16 23:31:26'),
(276, 'sms template edit', 'admin', '2022-02-16 23:31:26', '2022-02-16 23:31:26'),
(277, 'sms template update', 'admin', '2022-02-16 23:31:26', '2022-02-16 23:31:26'),
(278, 'site contents', 'admin', '2022-02-16 23:31:26', '2022-02-16 23:31:26'),
(279, 'edit site contents', 'admin', '2022-02-16 23:31:26', '2022-02-16 23:31:26'),
(280, 'site content update', 'admin', '2022-02-16 23:31:26', '2022-02-16 23:31:26'),
(281, 'site sub-content update', 'admin', '2022-02-16 23:31:26', '2022-02-16 23:31:26'),
(282, 'section status update', 'admin', '2022-02-16 23:31:26', '2022-02-16 23:31:26'),
(283, 'withdraw method', 'admin', '2022-02-16 23:31:26', '2022-02-16 23:31:26'),
(284, 'withdraw method search', 'admin', '2022-02-16 23:31:26', '2022-02-16 23:31:26'),
(285, 'withdraw method create', 'admin', '2022-02-16 23:31:26', '2022-02-16 23:31:26'),
(286, 'withdraw method edit', 'admin', '2022-02-16 23:31:26', '2022-02-16 23:31:26'),
(287, 'withdraw method update', 'admin', '2022-02-16 23:31:26', '2022-02-16 23:31:26'),
(288, 'pending withdraw', 'admin', '2022-02-16 23:31:26', '2022-02-16 23:31:26'),
(289, 'accepted withdraw', 'admin', '2022-02-16 23:31:26', '2022-02-16 23:31:26'),
(290, 'rejected withdraw', 'admin', '2022-02-16 23:31:26', '2022-02-16 23:31:26'),
(291, 'withdraw accept', 'admin', '2022-02-16 23:31:26', '2022-02-16 23:31:26'),
(292, 'withdraw reject', 'admin', '2022-02-16 23:31:26', '2022-02-16 23:31:26'),
(293, 'manage payment gateway', 'admin', '2022-02-16 23:31:26', '2022-02-16 23:31:26'),
(294, 'add payment gateway', 'admin', '2022-02-16 23:31:26', '2022-02-16 23:31:26'),
(295, 'store payment gateway', 'admin', '2022-02-16 23:31:26', '2022-02-16 23:31:26'),
(296, 'edit payment gateway', 'admin', '2022-02-16 23:31:26', '2022-02-16 23:31:26'),
(297, 'update payment gateway', 'admin', '2022-02-16 23:31:26', '2022-02-16 23:31:26'),
(298, 'manage deposit', 'admin', '2022-02-16 23:31:26', '2022-02-16 23:31:26'),
(299, 'approve deposit', 'admin', '2022-02-16 23:31:26', '2022-02-16 23:31:26'),
(300, 'reject deposit', 'admin', '2022-02-16 23:31:26', '2022-02-16 23:31:26'),
(301, 'manage page', 'admin', '2022-02-16 23:31:26', '2022-02-16 23:31:26'),
(302, 'page create', 'admin', '2022-02-16 23:31:26', '2022-02-16 23:31:26'),
(303, 'page store', 'admin', '2022-02-16 23:31:26', '2022-02-16 23:31:26'),
(304, 'page edit', 'admin', '2022-02-16 23:31:26', '2022-02-16 23:31:26'),
(305, 'page update', 'admin', '2022-02-16 23:31:26', '2022-02-16 23:31:26'),
(306, 'page remove', 'admin', '2022-02-16 23:31:26', '2022-02-16 23:31:26'),
(307, 'manage cookie', 'admin', '2022-02-16 23:31:26', '2022-02-16 23:31:26'),
(308, 'update cookie', 'admin', '2022-02-16 23:31:26', '2022-02-16 23:31:26'),
(309, 'manage blog-category', 'admin', '2022-02-16 23:31:26', '2022-02-16 23:31:26'),
(310, 'store blog-category', 'admin', '2022-02-16 23:31:26', '2022-02-16 23:31:26'),
(311, 'update blog-category', 'admin', '2022-02-16 23:31:26', '2022-02-16 23:31:26'),
(312, 'manage blog', 'admin', '2022-02-16 23:31:26', '2022-02-16 23:31:26'),
(313, 'blog create', 'admin', '2022-02-16 23:31:26', '2022-02-16 23:31:26'),
(314, 'blog store', 'admin', '2022-02-16 23:31:26', '2022-02-16 23:31:26'),
(315, 'blog edit', 'admin', '2022-02-16 23:31:26', '2022-02-16 23:31:26'),
(316, 'blog update', 'admin', '2022-02-16 23:31:26', '2022-02-16 23:31:26'),
(317, 'blog destroy', 'admin', '2022-02-16 23:31:26', '2022-02-16 23:31:26'),
(318, 'manage language', 'admin', '2022-02-16 23:31:26', '2022-02-16 23:31:26'),
(319, 'manage ticket', 'admin', '2022-02-16 23:31:26', '2022-02-16 23:31:26'),
(320, 'reply ticket', 'admin', '2022-02-16 23:31:26', '2022-02-16 23:31:26'),
(321, 'seo settings', 'admin', '2022-02-16 23:31:26', '2022-02-16 23:31:26');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `brand_id` bigint(20) DEFAULT NULL,
  `subcategory_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `sku` varchar(20) DEFAULT NULL,
  `details` text DEFAULT NULL,
  `current_price` double NOT NULL DEFAULT 0,
  `previous_price` double NOT NULL DEFAULT 0,
  `base_price` double NOT NULL DEFAULT 0,
  `stock` int(11) NOT NULL DEFAULT 0,
  `type` varchar(25) DEFAULT NULL,
  `photo` varchar(30) DEFAULT NULL,
  `file_type` tinyint(4) DEFAULT NULL,
  `file` varchar(50) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  `tags` text DEFAULT NULL,
  `meta_tag` varchar(255) DEFAULT NULL,
  `meta_content` varchar(255) DEFAULT NULL,
  `new` tinyint(4) NOT NULL DEFAULT 1,
  `trending` tinyint(4) NOT NULL DEFAULT 0,
  `best` tinyint(4) NOT NULL DEFAULT 0,
  `featured` tinyint(4) NOT NULL DEFAULT 0,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `rating` double NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `user_id`, `category_id`, `brand_id`, `subcategory_id`, `name`, `slug`, `sku`, `details`, `current_price`, `previous_price`, `base_price`, `stock`, `type`, `photo`, `file_type`, `file`, `link`, `tags`, `meta_tag`, `meta_content`, `new`, `trending`, `best`, `featured`, `status`, `rating`, `created_at`, `updated_at`) VALUES
(3, 22, 1, NULL, 1, 'Women Black Fashion Shirt', 'women-black-fashion-shirt', 'pr611jsv1-a', '<p><span style=\"color:rgb(77,81,86);font-family:arial, sans-serif;\">In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available.</span><br></p>', 20, 30, 21, 5, '1', '8603419871666848625.png', 0, NULL, 'https://getbootstrap.com', 'a,b,c,d', 'a,b,d', 'In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate', 1, 1, 1, 1, 1, 0, '2022-10-18 03:46:45', '2022-11-21 04:43:45'),
(4, 22, 16, NULL, NULL, 'Men Cotton Dress Shirts', 'men-cotton-dress-shirts', 'pr611jsv1-a', '<p>adfasdfadfa</p>', 15, 20, 17, 5, '1', '21254325931666848598.png', 0, NULL, 'https://getbootstrap.com', 'afda,a,fasdf,ad', 'adsfa,a,fa,f', 'adsfasfad', 1, 1, 1, 1, 1, 0, '2022-10-24 23:20:58', '2022-11-20 22:36:34'),
(5, 22, 1, 5, NULL, 'Women White T-Shirt', 'women-white-tshirt', 'pr611jsv1-a', '<p><span style=\"color:rgb(118,118,120);font-family:Jost, sans-serif;font-size:18px;text-align:center;\">Cillum eu id enim aliquip aute ullamco anim. Culpa deserunt nostrud excepteur voluptate velit ipsum esse enim.</span><br></p>', 45, 50, 46, 5, '0', '20171823701666848896.png', 1, NULL, NULL, 'a,b,c,d', NULL, NULL, 1, 0, 1, 1, 1, 4.6667, '2022-10-26 23:34:57', '2022-12-19 02:18:46'),
(6, 22, 16, 4, NULL, 'Smart Blazar for Men', 'smart-blazar-for-men', '1x33153TBG', '<p><span style=\"color:rgb(118,118,120);font-family:Jost, sans-serif;font-size:18px;text-align:center;\">Cillum eu id enim aliquip aute ullamco anim. Culpa deserunt nostrud excepteur voluptate velit ipsum esse enim.</span><br></p>', 5, 5, 6, 5, '0', '19219784691666848965.png', 1, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 1, 1, 0, '2022-10-26 23:36:05', '2022-12-04 04:11:24'),
(10, 22, 1, 1, NULL, 'test', 'test', 'QiJqblyk', '<p>asdfasdfadf</p>', 5, 5, 5, 5, '0', '882915921673425021.png', 1, NULL, NULL, NULL, NULL, NULL, 1, 0, 0, 0, 1, 0, '2023-01-11 00:43:40', '2023-01-11 02:17:01'),
(11, 22, 16, 3, NULL, 'Jonahtan Andrew', 'jonahtan-andrew', '0M5yiYuU', '<p>qweeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee wrweqttttttttttttttttttttttttttttttttt reeeeeeeeeeeeeeeeeee</p>', 22, 222, 28.45, 22, '1', '18846129071680156905.jpg', 0, NULL, 'https://demo.royalscripts.com/smm', 'tr,ty,ui', 'terter,rtyrt', 'tryrt,tryrtyrt', 1, 1, 1, 1, 1, 0, '2023-03-30 13:15:05', '2023-03-30 13:17:32');

-- --------------------------------------------------------

--
-- Table structure for table `product_attributes`
--

CREATE TABLE `product_attributes` (
  `id` bigint(20) NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `variation_id` text DEFAULT NULL,
  `attribute_id` text DEFAULT NULL,
  `variations` varchar(255) DEFAULT NULL,
  `colors` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product_attributes`
--

INSERT INTO `product_attributes` (`id`, `product_id`, `variation_id`, `attribute_id`, `variations`, `colors`) VALUES
(1, 3, '{\"1\":[\"1\",\"2\"]}', '1,2', '1,2', '1'),
(2, 4, '{\"1\":[\"1\",\"2\"],\"2\":[\"3\",\"4\"]}', '1,2', '1,2,3,4', '1,2'),
(3, 5, '{\"1\":[\"1\",\"2\"]}', '1', '1,2', '1'),
(4, 6, '{\"1\":[\"1\"]}', '1', '1', NULL),
(6, 10, NULL, NULL, NULL, NULL),
(7, 11, '{\"2\":[\"4\"]}', '2', '4', '1,2');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `seller_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `rating` int(11) NOT NULL,
  `review` text DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id`, `user_id`, `seller_id`, `product_id`, `rating`, `review`, `status`, `created_at`, `updated_at`) VALUES
(2, 24, 22, 5, 4, 'asdfadfa', 1, '2022-12-19 00:35:05', '2022-12-19 00:35:05'),
(3, 24, 22, 5, 5, 'adfadf', 1, '2022-12-19 02:13:18', '2022-12-19 02:13:18'),
(4, 24, 22, 5, 5, 'fgsdfgs', 1, '2022-12-19 02:18:46', '2022-12-19 02:18:46');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) NOT NULL,
  `name` varchar(25) DEFAULT NULL,
  `data` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `data`) VALUES
(6, 'Writer', '[\"Package Management\",\"Manage Orders\",\"Customer\",\"Support Tickets\",\"Manage Role\",\"Manage Staff\",\"Manage Domain\",\"Payment Gateway\",\"Frontend Settings\"]'),
(7, 'test2', '[\"Package Management\",\"Role\",\"Staff\",\"Email Settings\"]');

-- --------------------------------------------------------

--
-- Table structure for table `seo_settings`
--

CREATE TABLE `seo_settings` (
  `id` bigint(20) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `meta_tag` text DEFAULT NULL,
  `meta_description` text DEFAULT NULL,
  `meta_image` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `seo_settings`
--

INSERT INTO `seo_settings` (`id`, `title`, `meta_tag`, `meta_description`, `meta_image`) VALUES
(1, 'Genius Wallet - Advanced Wallet CMS with Payment Gateway API', 'wallet,wallet cms,Genius,Genius Wallet', 'Genius Wallet - Advanced Wallet CMS with Payment Gateway API!', '15872004791677732614.png');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` bigint(20) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `text` text DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `title`, `text`, `photo`, `status`) VALUES
(2, 'Online Business', 'What a plonker chimney pot some quid dodgy chav matic boy.', '14942459841674965028.png', 1),
(3, 'Human Resource', 'What a plonker chimney pot some quid dodgy chav matic boy.', '20405971311674965046.png', 1),
(4, 'Project Managment', 'What a plonker chimney pot some quid dodgy chav matic boy.', '12345262441674965062.png', 1),
(5, 'Business Insurance', 'What a plonker chimney pot some quid dodgy chav matic boy.', '9731038341674965077.png', 1),
(6, 'Online Marketing', 'What a plonker chimney pot some quid dodgy chav matic boy.', '1373389321674965093.png', 1),
(7, 'Business Strategy', 'What a plonker chimney pot some quid dodgy chav matic boy.', '20061847871674965107.png', 1);

-- --------------------------------------------------------

--
-- Table structure for table `shippings`
--

CREATE TABLE `shippings` (
  `id` bigint(20) NOT NULL,
  `shipping` varchar(70) DEFAULT NULL,
  `locations` varchar(100) DEFAULT NULL,
  `price` double NOT NULL DEFAULT 0,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `user_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `shippings`
--

INSERT INTO `shippings` (`id`, `shipping`, `locations`, `price`, `status`, `user_id`) VALUES
(1, 'test', '[\"6\"]', 2, 1, 22),
(2, 'test3', '[\"6\",\"4\",\"2\"]', 6, 1, 22),
(6, 'asdfasdf', '[\"3\"]', 49.438202247191, 1, 22);

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `title` varchar(255) NOT NULL,
  `text` varchar(255) NOT NULL,
  `photo` varchar(80) NOT NULL,
  `type` varchar(20) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `url` varchar(255) NOT NULL,
  `btn_text` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `user_id`, `title`, `text`, `photo`, `type`, `status`, `url`, `btn_text`) VALUES
(1, 22, 'This is demo title', 'This is demo textt', '16773613451677732457.jpg', 'right', 1, 'https://demo.royalscripts.com/products/geniuscart/', 'Order Now'),
(2, 22, 'test', 'test', '15553193511665632640.jpg', 'center', 1, 'http://product.geniusocean.com/geniusportfolio/', 'Order Now');

-- --------------------------------------------------------

--
-- Table structure for table `sms_gateways`
--

CREATE TABLE `sms_gateways` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `config` text NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sms_gateways`
--

INSERT INTO `sms_gateways` (`id`, `name`, `config`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Twilio', '{\r\n\"sid\":\"\",\"token\":\"\",\"from_number\":\"\"\r\n}', 0, NULL, '2022-01-19 23:56:26'),
(2, 'Nexmo', '{\"api_key\":\"f0842415\",\"api_secret\":\"5FqSGPgFIKbf8nDr\"}', 1, NULL, '2022-01-20 02:22:11');

-- --------------------------------------------------------

--
-- Table structure for table `subcategories`
--

CREATE TABLE `subcategories` (
  `id` bigint(20) NOT NULL,
  `category_id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `slug` varchar(100) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `subcategories`
--

INSERT INTO `subcategories` (`id`, `category_id`, `name`, `slug`, `status`) VALUES
(1, 1, 'HTML5', 'HTML5', 1),
(2, 1, 'CSS', 'CSS', 0),
(3, 1, 'JAVASCRIPT 2', 'JAVASCRIPT', 1);

-- --------------------------------------------------------

--
-- Table structure for table `support_tickets`
--

CREATE TABLE `support_tickets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `user_type` varchar(15) DEFAULT NULL,
  `guest_email` varchar(255) DEFAULT NULL,
  `guest_name` varchar(255) DEFAULT NULL,
  `ticket_num` varchar(255) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0 = pending, 1 = replied. ',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `support_tickets`
--

INSERT INTO `support_tickets` (`id`, `user_id`, `user_type`, `guest_email`, `guest_name`, `ticket_num`, `subject`, `status`, `created_at`, `updated_at`) VALUES
(7, 22, 'seller', NULL, NULL, 'TKT64870745', 'test', 1, '2022-12-17 21:49:51', '2022-12-17 22:07:20'),
(8, 22, 'seller', NULL, NULL, 'TKT61805996', 'Hello Subject', 1, '2022-12-17 22:21:20', '2022-12-26 00:37:10'),
(9, 22, 'seller', NULL, NULL, 'TKT50319076', 'asdasd', 0, '2023-03-30 16:47:46', '2023-03-30 16:47:46');

-- --------------------------------------------------------

--
-- Table structure for table `testimonials`
--

CREATE TABLE `testimonials` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `designation` varchar(255) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `message` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `testimonials`
--

INSERT INTO `testimonials` (`id`, `name`, `designation`, `photo`, `message`) VALUES
(2, 'Test1', 'Creative Director', '5717909891674967175.png', 'Deserunt hic consequatur ex placeat! atque repellendus inventore quisquam, perferendis, eum reiciendis quia nesciunt fuga magni.'),
(3, 'Jhon Due', 'Creative Director', '6624266031674967189.png', 'Deserunt hic consequatur ex placeat! atque repellendus inventore quisquam, perferendis, eum reiciendis quia nesciunt fuga magni.'),
(4, 'SmartMan', 'Designation', '684758781674967210.jpg', 'Deserunt hic consequatur ex placeat! atque repellendus inventore quisquam, perferendis, eum reiciendis quia nesciunt fuga magni.');

-- --------------------------------------------------------

--
-- Table structure for table `ticket_messages`
--

CREATE TABLE `ticket_messages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `ticket_id` int(11) NOT NULL,
  `ticket_num` varchar(255) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `user_type` varchar(15) DEFAULT NULL,
  `admin_id` int(11) DEFAULT NULL,
  `message` varchar(255) NOT NULL,
  `file` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ticket_messages`
--

INSERT INTO `ticket_messages` (`id`, `ticket_id`, `ticket_num`, `user_id`, `user_type`, `admin_id`, `message`, `file`, `created_at`, `updated_at`) VALUES
(8, 7, 'TKT64870745', 22, 'seller', NULL, 'hi', NULL, '2022-12-17 21:54:37', '2022-12-17 21:54:37'),
(9, 7, 'TKT64870745', 22, 'seller', NULL, 'asfad', NULL, '2022-12-17 21:56:45', '2022-12-17 21:56:45'),
(10, 7, 'TKT64870745', 22, 'seller', 1, 'afadf', NULL, '2022-12-17 22:07:20', '2022-12-17 22:07:20'),
(11, 7, 'TKT64870745', 22, 'seller', 1, 'dsfadsf', '1882419411671336751.png', '2022-12-17 22:12:31', '2022-12-17 22:12:31'),
(12, 8, 'TKT61805996', 22, 'seller', NULL, 'dafd', NULL, '2022-12-17 22:21:30', '2022-12-17 22:21:30'),
(13, 8, 'TKT61805996', 22, 'seller', 1, 'hi', NULL, '2022-12-26 00:37:10', '2022-12-26 00:37:10'),
(14, 9, 'TKT50319076', 22, 'seller', NULL, 'sadasdasd', NULL, '2023-03-30 16:47:49', '2023-03-30 16:47:49'),
(15, 9, 'TKT50319076', 22, 'seller', NULL, 'asdadasd', NULL, '2023-03-30 16:47:53', '2023-03-30 16:47:53');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `zip` varchar(25) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `email_verified` tinyint(1) DEFAULT 0,
  `verification_link` varchar(255) DEFAULT NULL,
  `verify_code` int(11) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(15) DEFAULT NULL,
  `domain_id` bigint(20) UNSIGNED DEFAULT NULL,
  `owner_id` bigint(20) NOT NULL DEFAULT 0,
  `is_end` tinyint(4) NOT NULL DEFAULT 0,
  `force_login` tinyint(4) NOT NULL DEFAULT 0,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `photo`, `phone`, `country`, `city`, `address`, `zip`, `status`, `email_verified`, `verification_link`, `verify_code`, `password`, `role`, `domain_id`, `owner_id`, `is_end`, `force_login`, `remember_token`, `created_at`, `updated_at`) VALUES
(22, 'test1', 'seller@gmail.com', '722198691665464111.jpg', '3453453', NULL, NULL, NULL, NULL, 1, 1, NULL, 936350, '$2y$10$L3CagJ1kt2rC1juOEAToZOWJzdYIFa9zRWut13c.D1dcgDfrV3dXe', 'seller', 2, 0, 1, 0, NULL, '2022-10-05 03:52:34', '2023-02-28 02:16:13'),
(24, 'testt', 'test@gmail.com', '2863463371669174799.png', '3453453', 'Japan', 'Test City1', 'Test Address1', '123133', 1, 0, NULL, NULL, '$2y$10$AayFraS.cuRs7mdsjIYWn.LPH1IwBipxXlXDZhz61XhyP8tDoRfve', NULL, NULL, 22, 0, 0, NULL, '2022-11-21 23:32:51', '2023-03-30 14:55:52'),
(33, 'test5', 'test5@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, '$2y$10$YbyqAHN2cqp6swFjANkrfuXClF/9W3/UGMb3qDstYAeZXURjvnwbS', 'seller', 6, 0, 0, 0, NULL, '2023-02-13 04:08:46', '2023-02-13 05:03:55'),
(47, 'showrav', 'showrav@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, '$2y$10$RDBtkTtW4sWIA0j7A46I6ONUhsSeHFTddyouQgeXPo6XJ3xtBiGzW', 'seller', 20, 0, 0, 0, NULL, '2023-04-04 02:55:32', '2023-04-04 02:55:32'),
(48, 'showrav11', 'showrav1@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, NULL, NULL, '$2y$10$tCzmpQXPOcAXJVvQE3wGsOy.xeR8azZ/olLIdkqmnHO.qA1RhFBqW', 'seller', 21, 0, 0, 0, NULL, '2023-04-04 03:09:49', '2023-04-04 03:09:49');

-- --------------------------------------------------------

--
-- Table structure for table `user_blogs`
--

CREATE TABLE `user_blogs` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `category_id` int(191) NOT NULL,
  `title` varchar(191) NOT NULL,
  `slug` varchar(191) DEFAULT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `description` longtext NOT NULL,
  `views` int(11) NOT NULL DEFAULT 0,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_blogs`
--

INSERT INTO `user_blogs` (`id`, `user_id`, `category_id`, `title`, `slug`, `photo`, `description`, `views`, `status`, `created_at`, `updated_at`) VALUES
(66, 22, 8, 'Post Format Gallery Blogs', 'post-format-gallery-blogs', '3557266931666780371.png', '<p style=\"text-align: justify;\"><font color=\"#000000\" face=\"Open Sans, Arial, sans-serif\">Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksgrove right at the coast of the Semantics, a large language ocean. A small river named Duden flows by their place and supplies it with the necessary regelialia. It is a paradisematic country, in which roasted parts of sentences fly into your mouth. Even the all-powerful Pointing has no control about the blind texts it is an almost unorthographic life One day however a small line of blind text by the name of Lorem Ipsum decided to leave for the far World of Grammar. The Big Oxmox advised her not to do so, because there were thousands of bad Commas, wild Question Marks and devious Semikoli, but the Little Blind Text didn’t listen. She packed her seven versalia, put her initial into the belt and made herself on the way. When she reached the first hills of the Italic Mountains, she had a last view back on the skyline of her hometown Bookmarksgrove, the headline of Alphabet Village and the subline of her own road, the Line Lane. Pityful a rethoric question ran over her cheek, then</font></p><p style=\"text-align: justify;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksgrove right at the coast of the Semantics, a large language ocean. A small river named Duden flows by their place and supplies it with the necessary regelialia. It is a paradisematic country, in which roasted parts of sentences fly into your mouth. Even the all-powerful Pointing has no control about the blind texts it is an almost unorthographic life One day however a small line of blind text by the name of Lorem Ipsum decided to leave for the far World of Grammar. The Big Oxmox advised her not to do so, because there were thousands of bad Commas, wild Question Marks and devious Semikoli, but the Little Blind Text didn’t listen. She packed her seven versalia, put her initial into the belt and made herself on the way. When she reached the first hills of the Italic Mountains, she had a last view back on the skyline of her hometown Bookmarksgrove, the headline of Alphabet Village and the subline of her own road, the Line Lane. Pityful a rethoric question ran over her cheek, then</span></p><p style=\"text-align: justify;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksgrove right at the coast of the Semantics, a large language ocean. A small river named Duden flows by their place and supplies it with the necessary regelialia. It is a paradisematic country, in which roasted parts of sentences fly into your mouth. Even the all-powerful Pointing has no control about the blind texts it is an almost unorthographic life One day however a small line of blind text by the name of Lorem Ipsum decided to leave for the far World of Grammar. The Big Oxmox advised her not to do so, because there were thousands of bad Commas, wild Question Marks and devious Semikoli, but the Little Blind Text didn’t listen. She packed her seven versalia, put her initial into the belt and made herself on the way. When she reached the first hills of the Italic Mountains, she had a last view back on the skyline of her hometown Bookmarksgrove, the headline of Alphabet Village and the subline of her own road, the Line Lane. Pityful a rethoric question ran over her cheek, then</span></p><p style=\"text-align: justify;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksgrove right at the coast of the Semantics, a large language ocean. A small river named Duden flows by their place and supplies it with the necessary regelialia. It is a paradisematic country, in which roasted parts of sentences fly into your mouth. Even the all-powerful Pointing has no control about the blind texts it is an almost unorthographic life One day however a small line of blind text by the name of Lorem Ipsum decided to leave for the far World of Grammar. The Big Oxmox advised her not to do so, because there were thousands of bad Commas, wild Question Marks and devious Semikoli, but the Little Blind Text didn’t listen. She packed her seven versalia, put her initial into the belt and made herself on the way. When she reached the first hills of the Italic Mountains, she had a last view back on the skyline of her hometown Bookmarksgrove, the headline of Alphabet Village and the subline of her own road, the Line Lane. Pityful a rethoric question ran over her cheek, then</span></p>', 0, 1, '2022-02-12 23:09:25', '2022-10-26 04:32:51'),
(67, 22, 9, 'Post Format Audio Blogs', 'post-format-audio-blogs', '1686358531666780389.png', '<p style=\"text-align:justify;\">Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksgrove right at the coast of the Semantics, a large language ocean. A small river named Duden flows by their place and supplies it with the necessary regelialia. It is a paradisematic country, in which roasted parts of sentences fly into your mouth. Even the all-powerful Pointing has no control about the blind texts it is an almost unorthographic life One day however a small line of blind text by the name of Lorem Ipsum decided to leave for the far World of Grammar. The Big Oxmox advised her not to do so, because there were thousands of bad Commas, wild Question Marks and devious Semikoli, but the Little Blind Text didn’t listen. She packed her seven versalia, put her initial into the belt and made herself on the way. When she reached the first hills of the Italic Mountains, she had a last view back on the skyline of her hometown Bookmarksgrove, the headline of Alphabet Village and the subline of her own road, the Line Lane. Pityful a rethoric question ran over her cheek, then</p>\r\n\r\n<p style=\"text-align:justify;\"><span style=\"color:rgb(0,0,0);font-family:\'Open Sans\', Arial, sans-serif;\">Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksgrove right at the coast of the Semantics, a large language ocean. A small river named Duden flows by their place and supplies it with the necessary regelialia. It is a paradisematic country, in which roasted parts of sentences fly into your mouth. Even the all-powerful Pointing has no control about the blind texts it is an almost unorthographic life One day however a small line of blind text by the name of Lorem Ipsum decided to leave for the far World of Grammar. The Big Oxmox advised her not to do so, because there were thousands of bad Commas, wild Question Marks and devious Semikoli, but the Little Blind Text didn’t listen. She packed her seven versalia, put her initial into the belt and made herself on the way. When she reached the first hills of the Italic Mountains, she had a last view back on the skyline of her hometown Bookmarksgrove, the headline of Alphabet Village and the subline of her own road, the Line Lane. Pityful a rethoric question ran over her cheek, then</span></p>\r\n\r\n<p style=\"text-align:justify;\"><span style=\"color:rgb(0,0,0);font-family:\'Open Sans\', Arial, sans-serif;\">Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksgrove right at the coast of the Semantics, a large language ocean. A small river named Duden flows by their place and supplies it with the necessary regelialia. It is a paradisematic country, in which roasted parts of sentences fly into your mouth. Even the all-powerful Pointing has no control about the blind texts it is an almost unorthographic life One day however a small line of blind text by the name of Lorem Ipsum decided to leave for the far World of Grammar. The Big Oxmox advised her not to do so, because there were thousands of bad Commas, wild Question Marks and devious Semikoli, but the Little Blind Text didn’t listen. She packed her seven versalia, put her initial into the belt and made herself on the way. When she reached the first hills of the Italic Mountains, she had a last view back on the skyline of her hometown Bookmarksgrove, the headline of Alphabet Village and the subline of her own road, the Line Lane. Pityful a rethoric question ran over her cheek, then</span></p>\r\n\r\n<p style=\"text-align:justify;\"><span style=\"color:rgb(0,0,0);font-family:\'Open Sans\', Arial, sans-serif;\">Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksgrove right at the coast of the Semantics, a large language ocean. A small river named Duden flows by their place and supplies it with the necessary regelialia. It is a paradisematic country, in which roasted parts of sentences fly into your mouth. Even the all-powerful Pointing has no control about the blind texts it is an almost unorthographic life One day however a small line of blind text by the name of Lorem Ipsum decided to leave for the far World of Grammar. The Big Oxmox advised her not to do so, because there were thousands of bad Commas, wild Question Marks and devious Semikoli, but the Little Blind Text didn’t listen. She packed her seven versalia, put her initial into the belt and made herself on the way. When she reached the first hills of the Italic Mountains, she had a last view back on the skyline of her hometown Bookmarksgrove, the headline of Alphabet Village and the subline of her own road, the Line Lane. Pityful a rethoric question ran over her cheek, then</span><span style=\"color:rgb(0,0,0);font-family:\'Open Sans\', Arial, sans-serif;\"><br></span></p>', 1, 1, '2022-02-12 23:11:32', '2022-10-26 04:33:09'),
(70, 22, 9, 'A Beautiful Sunday Morning', 'a-beautiful-sunday-morning', '9577690851666780411.png', '<p style=\"text-align: justify;\">Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksgrove right at the coast of the Semantics, a large language ocean. A small river named Duden flows by their place and supplies it with the necessary regelialia. It is a paradisematic country, in which roasted parts of sentences fly into your mouth. Even the all-powerful Pointing has no control about the blind texts it is an almost unorthographic life One day however a small line of blind text by the name of Lorem Ipsum decided to leave for the far World of Grammar. The Big Oxmox advised her not to do so, because there were thousands of bad Commas, wild Question Marks and devious Semikoli, but the Little Blind Text didn’t listen. She packed her seven versalia, put her initial into the belt and made herself on the way. When she reached the first hills of the Italic Mountains, she had a last view back on the skyline of her hometown Bookmarksgrove, the headline of Alphabet Village and the subline of her own road, the Line Lane. Pityful a rethoric question ran over her cheek, then</p><p style=\"text-align: justify;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksgrove right at the coast of the Semantics, a large language ocean. A small river named Duden flows by their place and supplies it with the necessary regelialia. It is a paradisematic country, in which roasted parts of sentences fly into your mouth. Even the all-powerful Pointing has no control about the blind texts it is an almost unorthographic life One day however a small line of blind text by the name of Lorem Ipsum decided to leave for the far World of Grammar. The Big Oxmox advised her not to do so, because there were thousands of bad Commas, wild Question Marks and devious Semikoli, but the Little Blind Text didn’t listen. She packed her seven versalia, put her initial into the belt and made herself on the way. When she reached the first hills of the Italic Mountains, she had a last view back on the skyline of her hometown Bookmarksgrove, the headline of Alphabet Village and the subline of her own road, the Line Lane. Pityful a rethoric question ran over her cheek, then</span></p><p style=\"text-align: justify;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksgrove right at the coast of the Semantics, a large language ocean. A small river named Duden flows by their place and supplies it with the necessary regelialia. It is a paradisematic country, in which roasted parts of sentences fly into your mouth. Even the all-powerful Pointing has no control about the blind texts it is an almost unorthographic life One day however a small line of blind text by the name of Lorem Ipsum decided to leave for the far World of Grammar. The Big Oxmox advised her not to do so, because there were thousands of bad Commas, wild Question Marks and devious Semikoli, but the Little Blind Text didn’t listen. She packed her seven versalia, put her initial into the belt and made herself on the way. When she reached the first hills of the Italic Mountains, she had a last view back on the skyline of her hometown Bookmarksgrove, the headline of Alphabet Village and the subline of her own road, the Line Lane. Pityful a rethoric question ran over her cheek, then</span></p><p style=\"text-align: justify;\"><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif;\">Far far away, behind the word mountains, far from the countries Vokalia and Consonantia, there live the blind texts. Separated they live in Bookmarksgrove right at the coast of the Semantics, a large language ocean. A small river named Duden flows by their place and supplies it with the necessary regelialia. It is a paradisematic country, in which roasted parts of sentences fly into your mouth. Even the all-powerful Pointing has no control about the blind texts it is an almost unorthographic life One day however a small line of blind text by the name of Lorem Ipsum decided to leave for the far World of Grammar. The Big Oxmox advised her not to do so, because there were thousands of bad Commas, wild Question Marks and devious Semikoli, but the Little Blind Text didn’t listen. She packed her seven versalia, put her initial into the belt and made herself on the way. When she reached the first hills of the Italic Mountains, she had a last view back on the skyline of her hometown Bookmarksgrove, the headline of Alphabet Village and the subline of her own road, the Line Lane. Pityful a rethoric question ran over her cheek, then</span></p>', 0, 1, '2022-10-26 04:33:31', '2022-10-26 04:33:31');

-- --------------------------------------------------------

--
-- Table structure for table `user_blog_categories`
--

CREATE TABLE `user_blog_categories` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `user_blog_categories`
--

INSERT INTO `user_blog_categories` (`id`, `user_id`, `name`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(8, 22, 'News', 'news', 1, NULL, NULL),
(9, 22, 'Announces', 'announces', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_currencies`
--

CREATE TABLE `user_currencies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `default` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '1 => default, 0 => not default',
  `symbol` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `status` int(10) UNSIGNED NOT NULL DEFAULT 0 COMMENT '1 => active, 0 => inactive',
  `value` decimal(11,2) UNSIGNED NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_currencies`
--

INSERT INTO `user_currencies` (`id`, `default`, `symbol`, `code`, `status`, `value`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 1, '$', 'USD', 1, '1.00', 22, '2021-12-19 22:12:58', '2022-11-30 04:53:30'),
(4, 0, '€', 'EUR', 1, '0.89', 22, '2021-12-19 22:12:58', '2022-12-06 21:31:17'),
(6, 0, '৳', 'BDT', 1, '102.00', 22, '2021-12-20 18:48:53', '2022-11-30 05:06:44'),
(7, 0, '₹', 'INR', 1, '75.00', 22, '2022-01-25 20:28:23', '2022-11-30 04:37:29'),
(8, 0, '₦', 'NGN', 1, '416.00', 22, '2022-02-05 23:41:35', '2022-11-30 03:14:16'),
(12, 1, '$', 'USD', 1, '1.00', 33, '2023-02-13 04:09:25', '2023-02-13 04:09:25'),
(13, 1, '$', 'USD', 1, '1.00', 35, '2023-02-28 02:14:57', '2023-02-28 02:14:57');

-- --------------------------------------------------------

--
-- Table structure for table `user_generalsettings`
--

CREATE TABLE `user_generalsettings` (
  `id` bigint(191) NOT NULL,
  `user_id` int(20) UNSIGNED NOT NULL,
  `footer_logo` varchar(191) DEFAULT NULL,
  `header_logo` varchar(255) DEFAULT NULL,
  `favicon` varchar(191) DEFAULT NULL,
  `title` varchar(191) NOT NULL,
  `theme_color` varchar(255) DEFAULT NULL,
  `is_verify` tinyint(4) DEFAULT 0,
  `contact_no` varchar(20) DEFAULT NULL,
  `menu` text DEFAULT NULL,
  `currency_possition` varchar(8) DEFAULT NULL,
  `support_number` varchar(25) DEFAULT NULL,
  `currency_show` tinyint(4) NOT NULL DEFAULT 1,
  `language_show` tinyint(4) NOT NULL DEFAULT 1,
  `footer_text` text NOT NULL,
  `copyright_text` text DEFAULT NULL,
  `copyright_show` tinyint(4) DEFAULT 1,
  `order_prefix` varchar(191) DEFAULT NULL,
  `email` varchar(122) DEFAULT NULL,
  `facebook_pixel` varchar(191) DEFAULT NULL,
  `google_analytics` varchar(111) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_generalsettings`
--

INSERT INTO `user_generalsettings` (`id`, `user_id`, `footer_logo`, `header_logo`, `favicon`, `title`, `theme_color`, `is_verify`, `contact_no`, `menu`, `currency_possition`, `support_number`, `currency_show`, `language_show`, `footer_text`, `copyright_text`, `copyright_show`, `order_prefix`, `email`, `facebook_pixel`, `google_analytics`) VALUES
(1, 22, '17749903761677476931.png', '8017965341666679064.png', '4376527201677476942.png', 'seller', '#000000', 1, '+88000000000', '{\"Home\":{\"title\":\"Home\",\"dropdown\":\"no\",\"href\":\"\\/\",\"target\":\"self\"},\"About\":{\"title\":\"About\",\"dropdown\":\"yes\",\"href\":\"\\/about\",\"target\":\"self\"},\"API\":{\"title\":\"API\",\"dropdown\":\"yes\",\"href\":\"\\/api-documentation\",\"target\":\"self\"},\"Blogs\":{\"title\":\"Blogs\",\"dropdown\":\"yes\",\"href\":\"\\/blogs\",\"target\":\"self\"},\"Contact\":{\"title\":\"Contact\",\"dropdown\":\"yes\",\"href\":\"\\/contact\",\"target\":\"self\"}}', 'right', '09080000', 1, 1, 'Sophisticated simplicity for the\r\nindependent mind.', '© 2022 BigBazar All right reserved..', 0, 'seller', 'seller@gmail.com', '4534534545', '35353453'),
(11, 33, NULL, '', '', 'seller', '#5B53F1', 1, '', '', 'right', NULL, 0, 0, '', NULL, 1, NULL, NULL, NULL, NULL),
(0, 0, NULL, '', '', 'seller', '#5B53F1', 1, '', '', 'right', NULL, 0, 0, '', NULL, 1, NULL, NULL, NULL, NULL),
(25, 47, NULL, '', '', 'seller', '#5B53F1', 1, '', '', 'right', NULL, 0, 0, '', NULL, 1, NULL, NULL, NULL, NULL),
(26, 48, NULL, '', '', 'seller', '#5B53F1', 1, '', '', 'right', NULL, 0, 0, '', NULL, 1, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_pages`
--

CREATE TABLE `user_pages` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `title` text NOT NULL,
  `slug` varchar(255) NOT NULL,
  `details` text NOT NULL,
  `meta_tag` varchar(255) DEFAULT NULL,
  `meta_description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_pages`
--

INSERT INTO `user_pages` (`id`, `user_id`, `title`, `slug`, `details`, `meta_tag`, `meta_description`) VALUES
(1, 22, 'Policy', 'policy', '<p><span style=\"font-weight:bold;color:rgb(95,99,104);font-family:arial, sans-serif;\">Lorem ipsum</span><span style=\"color:rgb(77,81,86);font-family:arial, sans-serif;\"> is placeholder </span><span style=\"font-weight:bold;color:rgb(95,99,104);font-family:arial, sans-serif;\">text</span><span style=\"color:rgb(77,81,86);font-family:arial, sans-serif;\"> commonly used in the graphic, print, and publishing industries for previewing layouts and visual mockups.</span><br></p>', NULL, NULL),
(2, 22, 'About Us', 'about-us', '<p><span style=\"color:rgb(77,81,86);font-family:arial, sans-serif;\">In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. Lorem ipsum may be used as a placeholder before final copy is available.</span><br></p>', NULL, NULL),
(3, 22, 'asdasds', 'asdasds', '<p>adddddddasdfg dddddddddddddddasdfg dddddddddd sfgsdgsd sdggggggg ddd asdddddddddddddd asdddddddddddddasdf ggggggggggggg</p>', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_payment_gateways`
--

CREATE TABLE `user_payment_gateways` (
  `id` int(191) NOT NULL,
  `subtitle` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` enum('manual','automatic') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'manual',
  `information` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keyword` varchar(191) DEFAULT NULL,
  `currency_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '*',
  `status` int(1) NOT NULL DEFAULT 1,
  `user_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `user_payment_gateways`
--

INSERT INTO `user_payment_gateways` (`id`, `subtitle`, `title`, `details`, `name`, `type`, `information`, `keyword`, `currency_id`, `status`, `user_id`) VALUES
(1, '(5 - 6 days)', 'Cash On Delivery', 'Cash on Delivery!', 'Cash On Delivery', 'manual', NULL, 'cod', '*', 1, 22),
(2, '(5 - 6 days)', 'Mobile Money', '<b>Payment Number: </b>69234324233423', 'Mobile Money', 'manual', NULL, 'mobile-money', '*', 1, 22),
(8, NULL, 'Authorize.Net', NULL, 'Authorize.Net', 'automatic', '{\"login_id\":\"76zu9VgUSxrJ\",\"txn_key\":\"2Vj62a6skSrP5U3X\",\"sandbox_check\":1,\"text\":\"Pay Via Authorize.Net\"}', 'authorize', '\"1,4\"', 1, 22),
(9, NULL, 'Razorpay', NULL, 'Razorpay', 'automatic', '{\"key\":\"rzp_test_xDH74d48cwl8DF\",\"secret\":\"cr0H1BiQ20hVzhpHfHuNbGri\",\"text\":\"Pay via your Razorpay account.\"}', 'razorpay', '\"7\"', 1, 22),
(11, NULL, 'Paytm', NULL, 'Paytm', 'automatic', '{\"merchant\":\"tkogux49985047638244\",\"secret\":\"LhNGUUKE9xCQ9xY8\",\"website\":\"WEBSTAGING\",\"industry\":\"Retail\",\"sandbox_check\":1,\"text\":\"Pay via your Paytm account.\"}', 'paytm', '\"7\"', 1, 22),
(12, NULL, 'Paystack', NULL, 'Paystack', 'automatic', '{\"key\":\"pk_test_162a56d42131cbb01932ed0d2c48f9cb99d8e8e2\",\"email\":\"junnuns@gmail.com\",\"text\":\"Pay via your Paystack account.\"}', 'paystack', '\"8\"', 1, 22),
(14, NULL, 'Stripe', NULL, 'Stripe', 'automatic', '{\"key\":\"pk_test_UnU1Coi1p5qFGwtpjZMRMgJM\",\"secret\":\"sk_test_QQcg3vGsKRPlW6T3dXcNJsor\",\"text\":\"Pay via your Credit Card.\"}', 'stripe', '\"1,4\"', 1, 22),
(15, NULL, 'Paypal', NULL, 'Paypal', 'automatic', '{\"client_id\":\"AcWYnysKa_elsQIAnlfsJXokR64Z31CeCbpis9G3msDC-BvgcbAwbacfDfEGSP-9Dp9fZaGgD05pX5Qi\",\"client_secret\":\"EGZXTq6d6vBPq8kysVx8WQA5NpavMpDzOLVOb9u75UfsJ-cFzn6aeBXIMyJW2lN1UZtJg5iDPNL9ocYE\",\"sandbox_check\":1,\"text\":\"Pay via your PayPal account.\"}', 'paypal', '\"1,4\"', 1, 22),
(73, '(5 - 6 days)', 'Cash On Delivery', 'Cash on Delivery', 'Cash On Delivery', 'manual', 'NULL', 'cod', '*', 1, 33),
(74, '(5 - 6 days)', 'Mobile Money', '<b>Payment Number: </b>69234324233423', 'Mobile Money', 'manual', 'NULL', 'mobile-money', '*', 1, 33),
(75, 'NULL', 'Authorize.Net', 'NULL', 'Authorize.Net', 'automatic', '{\"login_id\":\"76zu9VgUSxrJ\",\"txn_key\":\"2Vj62a6skSrP5U3X\",\"sandbox_check\":1,\"text\":\"Pay Via Authorize.Net\"}', 'authorize', '\"\\\"1,4\\\"\"', 1, 33),
(76, 'NULL', 'Razorpay', 'NULL', 'Razorpay', 'automatic', '{\"key\":\"rzp_test_xDH74d48cwl8DF\",\"secret\":\"cr0H1BiQ20hVzhpHfHuNbGri\",\"text\":\"Pay via your Razorpay account.\"}', 'razorpay', '\"\\\"7\\\"\"', 1, 33),
(77, 'NULL', 'Paytm', 'NULL', 'Paytm', 'automatic', '{\"merchant\":\"tkogux49985047638244\",\"secret\":\"LhNGUUKE9xCQ9xY8\",\"website\":\"WEBSTAGING\",\"industry\":\"Retail\",\"sandbox_check\":1,\"text\":\"Pay via your Paytm account.\"}', 'paytm', '\"\\\"7\\\"\"', 1, 33),
(78, 'NULL', 'Paystack', 'NULL', 'Paystack', 'automatic', '{\"key\":\"pk_test_162a56d42131cbb01932ed0d2c48f9cb99d8e8e2\",\"email\":\"junnuns@gmail.com\",\"text\":\"Pay via your Paystack account.\"}', 'paystack', '\"\\\"8\\\"\"', 1, 33),
(79, 'NULL', 'Stripe', 'NULL', 'Stripe', 'automatic', '{\"key\":\"pk_test_UnU1Coi1p5qFGwtpjZMRMgJM\",\"secret\":\"sk_test_QQcg3vGsKRPlW6T3dXcNJsor\",\"text\":\"Pay via your Credit Card.\"}', 'stripe', '\"\\\"1,4\\\"\"', 1, 33),
(80, 'NULL', 'Paypal', 'NULL', 'Paypal', 'automatic', '{\"client_id\":\"AcWYnysKa_elsQIAnlfsJXokR64Z31CeCbpis9G3msDC-BvgcbAwbacfDfEGSP-9Dp9fZaGgD05pX5Qi\",\"client_secret\":\"EGZXTq6d6vBPq8kysVx8WQA5NpavMpDzOLVOb9u75UfsJ-cFzn6aeBXIMyJW2lN1UZtJg5iDPNL9ocYE\",\"sandbox_check\":1,\"text\":\"Pay via your PayPal account.\"}', 'paypal', '\"\\\"1,4\\\"\"', 1, 33),
(189, '(5 - 6 days)', 'Cash On Delivery', 'Cash on Delivery', 'Cash On Delivery', 'manual', 'NULL', 'cod', '\"NULL\"', 1, 47),
(190, '(5 - 6 days)', 'Mobile Money', '<b>Payment Number: </b>69234324233423', 'Mobile Money', 'manual', 'NULL', 'mobile-money', '\"NULL\"', 1, 47),
(191, 'NULL', 'Authorize.Net', 'NULL', 'Authorize.Net', 'automatic', '{\"login_id\":\"76zu9VgUSxrJ\",\"txn_key\":\"2Vj62a6skSrP5U3X\",\"sandbox_check\":1,\"text\":\"Pay Via Authorize.Net\"}', 'authorize', '\"\\\"1,4\\\"\"', 1, 47),
(192, 'NULL', 'Razorpay', 'NULL', 'Razorpay', 'automatic', '{\"key\":\"rzp_test_xDH74d48cwl8DF\",\"secret\":\"cr0H1BiQ20hVzhpHfHuNbGri\",\"text\":\"Pay via your Razorpay account.\"}', 'razorpay', '\"\\\"7\\\"\"', 1, 47),
(193, 'NULL', 'Paytm', 'NULL', 'Paytm', 'automatic', '{\"merchant\":\"tkogux49985047638244\",\"secret\":\"LhNGUUKE9xCQ9xY8\",\"website\":\"WEBSTAGING\",\"industry\":\"Retail\",\"sandbox_check\":1,\"text\":\"Pay via your Paytm account.\"}', 'paytm', '\"\\\"7\\\"\"', 1, 47),
(194, 'NULL', 'Paystack', 'NULL', 'Paystack', 'automatic', '{\"key\":\"pk_test_162a56d42131cbb01932ed0d2c48f9cb99d8e8e2\",\"email\":\"junnuns@gmail.com\",\"text\":\"Pay via your Paystack account.\"}', 'paystack', '\"\\\"8\\\"\"', 1, 47),
(195, 'NULL', 'Stripe', 'NULL', 'Stripe', 'automatic', '{\"key\":\"pk_test_UnU1Coi1p5qFGwtpjZMRMgJM\",\"secret\":\"sk_test_QQcg3vGsKRPlW6T3dXcNJsor\",\"text\":\"Pay via your Credit Card.\"}', 'stripe', '\"\\\"1,4\\\"\"', 1, 47),
(196, 'NULL', 'Paypal', 'NULL', 'Paypal', 'automatic', '{\"client_id\":\"AcWYnysKa_elsQIAnlfsJXokR64Z31CeCbpis9G3msDC-BvgcbAwbacfDfEGSP-9Dp9fZaGgD05pX5Qi\",\"client_secret\":\"EGZXTq6d6vBPq8kysVx8WQA5NpavMpDzOLVOb9u75UfsJ-cFzn6aeBXIMyJW2lN1UZtJg5iDPNL9ocYE\",\"sandbox_check\":1,\"text\":\"Pay via your PayPal account.\"}', 'paypal', '\"\\\"1,4\\\"\"', 1, 47),
(197, '(5 - 6 days)', 'Cash On Delivery', 'Cash on Delivery', 'Cash On Delivery', 'manual', 'NULL', 'cod', '\"NULL\"', 1, 48),
(198, '(5 - 6 days)', 'Mobile Money', '<b>Payment Number: </b>69234324233423', 'Mobile Money', 'manual', 'NULL', 'mobile-money', '\"NULL\"', 1, 48),
(199, 'NULL', 'Authorize.Net', 'NULL', 'Authorize.Net', 'automatic', '{\"login_id\":\"76zu9VgUSxrJ\",\"txn_key\":\"2Vj62a6skSrP5U3X\",\"sandbox_check\":1,\"text\":\"Pay Via Authorize.Net\"}', 'authorize', '\"\\\"1,4\\\"\"', 1, 48),
(200, 'NULL', 'Razorpay', 'NULL', 'Razorpay', 'automatic', '{\"key\":\"rzp_test_xDH74d48cwl8DF\",\"secret\":\"cr0H1BiQ20hVzhpHfHuNbGri\",\"text\":\"Pay via your Razorpay account.\"}', 'razorpay', '\"\\\"7\\\"\"', 1, 48),
(201, 'NULL', 'Paytm', 'NULL', 'Paytm', 'automatic', '{\"merchant\":\"tkogux49985047638244\",\"secret\":\"LhNGUUKE9xCQ9xY8\",\"website\":\"WEBSTAGING\",\"industry\":\"Retail\",\"sandbox_check\":1,\"text\":\"Pay via your Paytm account.\"}', 'paytm', '\"\\\"7\\\"\"', 1, 48),
(202, 'NULL', 'Paystack', 'NULL', 'Paystack', 'automatic', '{\"key\":\"pk_test_162a56d42131cbb01932ed0d2c48f9cb99d8e8e2\",\"email\":\"junnuns@gmail.com\",\"text\":\"Pay via your Paystack account.\"}', 'paystack', '\"\\\"8\\\"\"', 1, 48),
(203, 'NULL', 'Stripe', 'NULL', 'Stripe', 'automatic', '{\"key\":\"pk_test_UnU1Coi1p5qFGwtpjZMRMgJM\",\"secret\":\"sk_test_QQcg3vGsKRPlW6T3dXcNJsor\",\"text\":\"Pay via your Credit Card.\"}', 'stripe', '\"\\\"1,4\\\"\"', 1, 48),
(204, 'NULL', 'Paypal', 'NULL', 'Paypal', 'automatic', '{\"client_id\":\"AcWYnysKa_elsQIAnlfsJXokR64Z31CeCbpis9G3msDC-BvgcbAwbacfDfEGSP-9Dp9fZaGgD05pX5Qi\",\"client_secret\":\"EGZXTq6d6vBPq8kysVx8WQA5NpavMpDzOLVOb9u75UfsJ-cFzn6aeBXIMyJW2lN1UZtJg5iDPNL9ocYE\",\"sandbox_check\":1,\"text\":\"Pay via your PayPal account.\"}', 'paypal', '\"\\\"1,4\\\"\"', 1, 48);

-- --------------------------------------------------------

--
-- Table structure for table `user_services`
--

CREATE TABLE `user_services` (
  `id` bigint(20) NOT NULL,
  `title` varchar(100) DEFAULT NULL,
  `text` varchar(100) DEFAULT NULL,
  `status` tinyint(4) DEFAULT 1,
  `icon` varchar(50) DEFAULT NULL,
  `user_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_services`
--

INSERT INTO `user_services` (`id`, `title`, `text`, `status`, `icon`, `user_id`) VALUES
(1, 'Free Shipping', 'Order Over $100', 1, 'fas fa-shipping-fast', 22),
(2, 'Win $100 To Shop', 'Enter Now', 1, 'fas fa-american-sign-language-interpreting', 22),
(3, 'Best Online Support', 'Hour: 10:00AM - 5:00PM', 1, 'fab fa-facebook-messenger', 22),
(5, 'Money Gurantee', 'With A 30 Days', 1, 'far fa-money-bill-alt', 22);

-- --------------------------------------------------------

--
-- Table structure for table `user_social_links`
--

CREATE TABLE `user_social_links` (
  `id` bigint(20) NOT NULL,
  `icon` varchar(50) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `icon1` varchar(50) DEFAULT NULL,
  `url1` varchar(255) DEFAULT NULL,
  `icon2` varchar(50) DEFAULT NULL,
  `url2` varchar(255) DEFAULT NULL,
  `icon3` varchar(50) DEFAULT NULL,
  `url3` varchar(255) DEFAULT NULL,
  `icon4` varchar(50) DEFAULT NULL,
  `url4` varchar(255) DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_social_links`
--

INSERT INTO `user_social_links` (`id`, `icon`, `url`, `icon1`, `url1`, `icon2`, `url2`, `icon3`, `url3`, `icon4`, `url4`, `user_id`) VALUES
(1, 'fab fa-facebook-f', '#', 'fab fa-google', '#', 'fab fa-youtube', '#', 'fab fa-instagram', '#', 'fab fa-twitter', '#', 22);

-- --------------------------------------------------------

--
-- Table structure for table `variations`
--

CREATE TABLE `variations` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `attribute_id` int(11) DEFAULT NULL,
  `name` varchar(100) NOT NULL,
  `price` double NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `variations`
--

INSERT INTO `variations` (`id`, `user_id`, `attribute_id`, `name`, `price`) VALUES
(1, 0, 1, 'test', 1),
(2, 0, 1, 'CSS3', 6.4),
(3, 0, 2, 'test2', 1),
(4, 0, 2, 'CSS32', 6.45),
(5, 22, 2, 'CSS3', 10),
(6, 22, 3, 'sadasweeee', 212);

-- --------------------------------------------------------

--
-- Table structure for table `wishlists`
--

CREATE TABLE `wishlists` (
  `id` bigint(20) NOT NULL,
  `user_id` int(191) UNSIGNED NOT NULL,
  `product_id` int(191) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attributes`
--
ALTER TABLE `attributes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog_categories`
--
ALTER TABLE `blog_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bottom_banners`
--
ALTER TABLE `bottom_banners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `colors`
--
ALTER TABLE `colors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_messages`
--
ALTER TABLE `contact_messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_pages`
--
ALTER TABLE `contact_pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `currencies`
--
ALTER TABLE `currencies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `disputes`
--
ALTER TABLE `disputes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `domains`
--
ALTER TABLE `domains`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `domain_requests`
--
ALTER TABLE `domain_requests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `email_templates`
--
ALTER TABLE `email_templates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `galleries`
--
ALTER TABLE `galleries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `generalsettings`
--
ALTER TABLE `generalsettings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `locations`
--
ALTER TABLE `locations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `packages`
--
ALTER TABLE `packages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `package_features`
--
ALTER TABLE `package_features`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `package_orders`
--
ALTER TABLE `package_orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `payment_gateways`
--
ALTER TABLE `payment_gateways`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_attributes`
--
ALTER TABLE `product_attributes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `seo_settings`
--
ALTER TABLE `seo_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shippings`
--
ALTER TABLE `shippings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sms_gateways`
--
ALTER TABLE `sms_gateways`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subcategories`
--
ALTER TABLE `subcategories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `support_tickets`
--
ALTER TABLE `support_tickets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `testimonials`
--
ALTER TABLE `testimonials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ticket_messages`
--
ALTER TABLE `ticket_messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `user_blogs`
--
ALTER TABLE `user_blogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_blog_categories`
--
ALTER TABLE `user_blog_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_currencies`
--
ALTER TABLE `user_currencies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_generalsettings`
--
ALTER TABLE `user_generalsettings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_pages`
--
ALTER TABLE `user_pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_payment_gateways`
--
ALTER TABLE `user_payment_gateways`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_services`
--
ALTER TABLE `user_services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_social_links`
--
ALTER TABLE `user_social_links`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `variations`
--
ALTER TABLE `variations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wishlists`
--
ALTER TABLE `wishlists`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `attributes`
--
ALTER TABLE `attributes`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `banners`
--
ALTER TABLE `banners`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT for table `blog_categories`
--
ALTER TABLE `blog_categories`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `bottom_banners`
--
ALTER TABLE `bottom_banners`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `colors`
--
ALTER TABLE `colors`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `contact_messages`
--
ALTER TABLE `contact_messages`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `contact_pages`
--
ALTER TABLE `contact_pages`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `currencies`
--
ALTER TABLE `currencies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `disputes`
--
ALTER TABLE `disputes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `domains`
--
ALTER TABLE `domains`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `domain_requests`
--
ALTER TABLE `domain_requests`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `email_templates`
--
ALTER TABLE `email_templates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `galleries`
--
ALTER TABLE `galleries`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `generalsettings`
--
ALTER TABLE `generalsettings`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `locations`
--
ALTER TABLE `locations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `packages`
--
ALTER TABLE `packages`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `package_features`
--
ALTER TABLE `package_features`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `package_orders`
--
ALTER TABLE `package_orders`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `payment_gateways`
--
ALTER TABLE `payment_gateways`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=322;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `product_attributes`
--
ALTER TABLE `product_attributes`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `seo_settings`
--
ALTER TABLE `seo_settings`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `shippings`
--
ALTER TABLE `shippings`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sms_gateways`
--
ALTER TABLE `sms_gateways`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `subcategories`
--
ALTER TABLE `subcategories`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `support_tickets`
--
ALTER TABLE `support_tickets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `testimonials`
--
ALTER TABLE `testimonials`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `ticket_messages`
--
ALTER TABLE `ticket_messages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `user_blogs`
--
ALTER TABLE `user_blogs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT for table `user_blog_categories`
--
ALTER TABLE `user_blog_categories`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `user_currencies`
--
ALTER TABLE `user_currencies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `user_generalsettings`
--
ALTER TABLE `user_generalsettings`
  MODIFY `id` bigint(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `user_pages`
--
ALTER TABLE `user_pages`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `user_payment_gateways`
--
ALTER TABLE `user_payment_gateways`
  MODIFY `id` int(191) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=205;

--
-- AUTO_INCREMENT for table `user_services`
--
ALTER TABLE `user_services`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `user_social_links`
--
ALTER TABLE `user_social_links`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `variations`
--
ALTER TABLE `variations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `wishlists`
--
ALTER TABLE `wishlists`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
