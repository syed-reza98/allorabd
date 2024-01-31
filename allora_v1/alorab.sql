-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 31, 2024 at 08:25 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `alorab`
--

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `primary_hex` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_visible` tinyint(1) NOT NULL DEFAULT 1,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `name`, `slug`, `url`, `primary_hex`, `is_visible`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Apple', 'apple', 'https://www.apple.com', '#76d730', 0, 'Apple Inc. is an American multinational technology company headquartered in Cupertino, California, that designs, develops, and sells consumer electronics, computer software, and online services.', '2024-01-31 12:24:32', '2024-01-31 12:24:32'),
(2, 'Samsung', 'samsung', 'https://www.samsung.com', '#d97a5f', 1, 'Samsung is a South Korean multinational conglomerate headquartered in Samsung Town, Seoul. It comprises numerous affiliated businesses, most of them united under the Samsung brand, and is the largest South Korean chaebol.', '2024-01-31 12:24:32', '2024-01-31 12:24:32');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` bigint(20) UNSIGNED DEFAULT NULL,
  `is_visible` tinyint(1) NOT NULL DEFAULT 1,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `parent_id`, `is_visible`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Phone', 'phone', NULL, 1, 'A phone is a telecommunications device that permits two or more users to conduct a conversation when they are too far apart to be heard directly.', '2024-01-31 12:24:32', '2024-01-31 12:24:32'),
(2, 'Tablet', 'tablet', NULL, 1, 'A tablet computer, commonly shortened to tablet, is a mobile device, typically with a mobile operating system and touchscreen display processing circuitry, and a rechargeable battery in a single, thin and flat package.', '2024-01-31 12:24:32', '2024-01-31 12:24:32'),
(3, 'Laptop', 'laptop', NULL, 1, 'A laptop computer, or simply laptop, is a portable computer which usually weighs 4-8 pounds (2 to 4 kilograms), depending on display size, hardware, and other factors.', '2024-01-31 12:24:32', '2024-01-31 12:24:32');

-- --------------------------------------------------------

--
-- Table structure for table `category_product`
--

CREATE TABLE `category_product` (
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category_product`
--

INSERT INTO `category_product` (`category_id`, `product_id`) VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 10),
(1, 11),
(2, 4),
(2, 5),
(2, 6),
(2, 12),
(2, 13),
(3, 7),
(3, 8),
(3, 9),
(3, 14),
(3, 15),
(3, 16);

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_of_birth` date DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `name`, `email`, `phone`, `date_of_birth`, `address`, `zip_code`, `city`, `created_at`, `updated_at`) VALUES
(1, 'Prof. Benedict Russel DVM', 'keaton02@example.org', '1-201-373-7679', '1975-08-16', '40675 Ayden Trafficway\nNew Maria, GA 23178', '40819', 'New Jeffereyland', '2024-01-31 12:24:33', '2024-01-31 12:24:33'),
(2, 'Soledad Beier', 'gemmerich@example.org', '240-842-3937', '2016-06-25', '57027 Rashad Grove\nSouth Markchester, AR 68510', '01948', 'North Parker', '2024-01-31 12:24:33', '2024-01-31 12:24:33'),
(3, 'Esta Schuster', 'devante.lindgren@example.org', '907.512.5695', '1983-02-27', '644 Nils Hill\nNew Hayleefurt, UT 79251', '19761', 'Mannshire', '2024-01-31 12:24:33', '2024-01-31 12:24:33'),
(4, 'Merl Jakubowski', 'rosina.kunde@example.net', '+1 (669) 389-5108', '2010-12-07', '63841 Kertzmann Well Apt. 273\nNew Cedrickfort, WY 34971-1910', '75973-9288', 'Port Gerda', '2024-01-31 12:24:33', '2024-01-31 12:24:33'),
(5, 'Josephine Larson', 'schimmel.bulah@example.com', '(940) 305-3067', '1993-09-15', '20226 Torp Squares Apt. 937\nNew Carminemouth, VT 50406-7433', '75497', 'Bernierchester', '2024-01-31 12:24:33', '2024-01-31 12:24:33'),
(6, 'Lorna Larkin', 'weber.wilford@example.net', '724-472-8830', '1991-01-16', '9149 Oberbrunner Center\nThielshire, MS 68336', '85076-3457', 'Franciscaside', '2024-01-31 12:24:33', '2024-01-31 12:24:33'),
(7, 'Mrs. Amelia Bergnaum', 'agorczany@example.org', '1-937-984-2805', '2006-03-08', '87232 Dibbert Green Suite 377\nRansomberg, TX 32968', '94335', 'Port Valentin', '2024-01-31 12:24:33', '2024-01-31 12:24:33'),
(8, 'Hilma Monahan', 'omari84@example.com', '+1 (947) 204-8583', '1989-11-20', '333 Hettinger Shoals\nLake Rosalyn, MN 84571-4093', '57713', 'Stehrville', '2024-01-31 12:24:33', '2024-01-31 12:24:33'),
(9, 'Prof. Kody Runolfsson', 'jevon33@example.net', '(380) 398-1591', '1994-01-21', '488 Beatty Land Suite 687\nErdmanland, AL 38441-5758', '53705-4515', 'Kobyland', '2024-01-31 12:24:33', '2024-01-31 12:24:33'),
(10, 'Ms. Eileen Ritchie', 'brooklyn61@example.org', '+15673784819', '2006-10-27', '71774 Little Crest Suite 471\nEast Elijah, SD 85022', '46072-6663', 'West Laverneton', '2024-01-31 12:24:33', '2024-01-31 12:24:33');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_10_09_205047_create_categories_table', 1),
(6, '2023_10_09_205123_create_brands_table', 1),
(7, '2023_10_09_205127_create_products_table', 1),
(8, '2023_10_09_205134_create_customers_table', 1),
(9, '2023_10_09_205145_create_orders_table', 1),
(10, '2023_10_09_213959_create_order_items_table', 1),
(11, '2023_10_09_214645_create_category_product_table', 1),
(12, '2023_10_15_113015_create_permission_tables', 1);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 1),
(2, 'App\\Models\\User', 2),
(2, 'App\\Models\\User', 3),
(2, 'App\\Models\\User', 4),
(2, 'App\\Models\\User', 5),
(2, 'App\\Models\\User', 6),
(2, 'App\\Models\\User', 7),
(2, 'App\\Models\\User', 8),
(2, 'App\\Models\\User', 9),
(2, 'App\\Models\\User', 10),
(2, 'App\\Models\\User', 11),
(2, 'App\\Models\\User', 12);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` bigint(20) UNSIGNED NOT NULL,
  `number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_price` decimal(10,2) NOT NULL,
  `shipping_price` decimal(10,2) NOT NULL DEFAULT 0.00,
  `status` enum('pending','processing','completed','declined') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `notes` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `customer_id`, `number`, `total_price`, `shipping_price`, `status`, `notes`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, '106513', '678.79', '17.97', 'declined', 'Et commodi iure vel provident repellendus sunt. Asperiores aut error quis mollitia eum. Corporis reprehenderit neque laboriosam et sed consequatur voluptatem pariatur.', NULL, '2024-01-31 12:24:33', '2024-01-31 12:24:33'),
(2, 2, '169340', '710.74', '82.20', 'declined', 'Qui at accusamus eaque vero ipsa. Error ex quia tempore fugit soluta temporibus tempora. Accusamus facere et iste soluta omnis ex. Nisi quo qui et qui nihil incidunt.', NULL, '2024-01-31 12:24:33', '2024-01-31 12:24:33'),
(3, 3, '103239', '936.50', '52.92', 'completed', 'Est voluptatum ipsam reprehenderit culpa architecto. Nihil quia voluptatem et nesciunt corporis debitis. Suscipit rem minus blanditiis ea possimus architecto. In non et est.', NULL, '2024-01-31 12:24:33', '2024-01-31 12:44:02'),
(4, 4, '697050', '858.45', '26.91', 'processing', 'Libero quae dolorem consequatur ipsam molestiae non et aspernatur. Vitae et corporis nostrum autem laboriosam deserunt. Facere rerum fugiat quam distinctio et quo.', NULL, '2024-01-31 12:24:33', '2024-01-31 12:24:33'),
(5, 5, '958068', '726.26', '99.80', 'declined', 'Quam alias quaerat amet vel. At autem repellendus velit autem exercitationem. Enim officiis ipsa praesentium dolorem.', NULL, '2024-01-31 12:24:33', '2024-01-31 12:24:33'),
(6, 7, '881522', '641.41', '73.38', 'pending', 'Nulla ut numquam sint qui sint. Rem sunt nobis rerum alias quaerat. Aut magni earum aliquam officiis aspernatur id ratione. Voluptas earum incidunt excepturi incidunt nulla. Quis omnis ut doloribus magni similique.', NULL, '2024-01-31 12:24:33', '2024-01-31 12:24:33'),
(7, 8, '265610', '949.02', '32.33', 'declined', 'Ut iusto inventore est vitae debitis numquam voluptas. Expedita dignissimos qui sed rerum et at. Voluptatum est voluptas omnis quo.', NULL, '2024-01-31 12:24:33', '2024-01-31 12:24:33'),
(8, 8, '950583', '457.08', '56.62', 'pending', 'Non ut tempore est et quis. Facilis non autem expedita dolorum voluptatum necessitatibus. Voluptas amet repudiandae voluptas ut.', NULL, '2024-01-31 12:24:33', '2024-01-31 12:24:33'),
(9, 10, '119865', '492.57', '90.63', 'declined', 'Et impedit ex hic vitae. Et consequuntur aut suscipit rerum. Eaque et quia quaerat vel ut.', NULL, '2024-01-31 12:24:33', '2024-01-31 12:24:33');

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `quantity` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `unit_price` decimal(10,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`id`, `order_id`, `product_id`, `quantity`, `unit_price`, `created_at`, `updated_at`) VALUES
(1, 1, 13, 2, '434.59', '2024-01-31 12:24:33', '2024-01-31 12:24:33'),
(2, 1, 7, 1, '261.00', '2024-01-31 12:24:33', '2024-01-31 12:24:33'),
(3, 1, 3, 1, '159.40', '2024-01-31 12:24:33', '2024-01-31 12:24:33'),
(4, 2, 4, 2, '310.97', '2024-01-31 12:24:33', '2024-01-31 12:24:33'),
(5, 2, 8, 3, '287.47', '2024-01-31 12:24:33', '2024-01-31 12:24:33'),
(6, 2, 11, 2, '530.94', '2024-01-31 12:24:33', '2024-01-31 12:24:33'),
(7, 3, 3, 1, '159.40', '2024-01-31 12:24:33', '2024-01-31 12:24:33'),
(8, 3, 8, 2, '287.47', '2024-01-31 12:24:33', '2024-01-31 12:24:33'),
(9, 3, 1, 1, '688.73', '2024-01-31 12:24:33', '2024-01-31 12:24:33'),
(10, 4, 13, 1, '434.59', '2024-01-31 12:24:33', '2024-01-31 12:24:33'),
(11, 4, 3, 2, '159.40', '2024-01-31 12:24:33', '2024-01-31 12:24:33'),
(12, 4, 14, 3, '989.63', '2024-01-31 12:24:33', '2024-01-31 12:24:33'),
(13, 5, 1, 2, '688.73', '2024-01-31 12:24:33', '2024-01-31 12:24:33'),
(14, 5, 4, 1, '310.97', '2024-01-31 12:24:33', '2024-01-31 12:24:33'),
(15, 5, 9, 2, '238.85', '2024-01-31 12:24:33', '2024-01-31 12:24:33'),
(16, 6, 15, 1, '721.70', '2024-01-31 12:24:33', '2024-01-31 12:24:33'),
(17, 6, 7, 3, '261.00', '2024-01-31 12:24:33', '2024-01-31 12:24:33'),
(18, 6, 8, 2, '287.47', '2024-01-31 12:24:33', '2024-01-31 12:24:33'),
(19, 7, 4, 1, '310.97', '2024-01-31 12:24:33', '2024-01-31 12:24:33'),
(20, 7, 3, 3, '159.40', '2024-01-31 12:24:33', '2024-01-31 12:24:33'),
(21, 7, 9, 2, '238.85', '2024-01-31 12:24:33', '2024-01-31 12:24:33'),
(22, 8, 4, 3, '310.97', '2024-01-31 12:24:33', '2024-01-31 12:24:33'),
(23, 8, 5, 2, '710.70', '2024-01-31 12:24:33', '2024-01-31 12:24:33'),
(24, 8, 2, 2, '613.46', '2024-01-31 12:24:33', '2024-01-31 12:24:33'),
(25, 9, 11, 1, '530.94', '2024-01-31 12:24:33', '2024-01-31 12:24:33'),
(26, 9, 15, 1, '721.70', '2024-01-31 12:24:33', '2024-01-31 12:24:33'),
(27, 9, 12, 1, '161.69', '2024-01-31 12:24:33', '2024-01-31 12:24:33');

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'view-any Brand', 'web', '2024-01-31 12:24:32', '2024-01-31 12:24:32'),
(2, 'view Brand', 'web', '2024-01-31 12:24:32', '2024-01-31 12:24:32'),
(3, 'create Brand', 'web', '2024-01-31 12:24:32', '2024-01-31 12:24:32'),
(4, 'update Brand', 'web', '2024-01-31 12:24:32', '2024-01-31 12:24:32'),
(5, 'delete Brand', 'web', '2024-01-31 12:24:32', '2024-01-31 12:24:32'),
(6, 'restore Brand', 'web', '2024-01-31 12:24:32', '2024-01-31 12:24:32'),
(7, 'force-delete Brand', 'web', '2024-01-31 12:24:32', '2024-01-31 12:24:32'),
(8, 'replicate Brand', 'web', '2024-01-31 12:24:32', '2024-01-31 12:24:32'),
(9, 'reorder Brand', 'web', '2024-01-31 12:24:32', '2024-01-31 12:24:32'),
(10, 'view-any Category', 'web', '2024-01-31 12:24:32', '2024-01-31 12:24:32'),
(11, 'view Category', 'web', '2024-01-31 12:24:32', '2024-01-31 12:24:32'),
(12, 'create Category', 'web', '2024-01-31 12:24:32', '2024-01-31 12:24:32'),
(13, 'update Category', 'web', '2024-01-31 12:24:32', '2024-01-31 12:24:32'),
(14, 'delete Category', 'web', '2024-01-31 12:24:32', '2024-01-31 12:24:32'),
(15, 'restore Category', 'web', '2024-01-31 12:24:32', '2024-01-31 12:24:32'),
(16, 'force-delete Category', 'web', '2024-01-31 12:24:32', '2024-01-31 12:24:32'),
(17, 'replicate Category', 'web', '2024-01-31 12:24:32', '2024-01-31 12:24:32'),
(18, 'reorder Category', 'web', '2024-01-31 12:24:32', '2024-01-31 12:24:32'),
(19, 'view-any Customer', 'web', '2024-01-31 12:24:32', '2024-01-31 12:24:32'),
(20, 'view Customer', 'web', '2024-01-31 12:24:32', '2024-01-31 12:24:32'),
(21, 'create Customer', 'web', '2024-01-31 12:24:32', '2024-01-31 12:24:32'),
(22, 'update Customer', 'web', '2024-01-31 12:24:32', '2024-01-31 12:24:32'),
(23, 'delete Customer', 'web', '2024-01-31 12:24:32', '2024-01-31 12:24:32'),
(24, 'restore Customer', 'web', '2024-01-31 12:24:32', '2024-01-31 12:24:32'),
(25, 'force-delete Customer', 'web', '2024-01-31 12:24:32', '2024-01-31 12:24:32'),
(26, 'replicate Customer', 'web', '2024-01-31 12:24:32', '2024-01-31 12:24:32'),
(27, 'reorder Customer', 'web', '2024-01-31 12:24:32', '2024-01-31 12:24:32'),
(28, 'view-any Order', 'web', '2024-01-31 12:24:32', '2024-01-31 12:24:32'),
(29, 'view Order', 'web', '2024-01-31 12:24:32', '2024-01-31 12:24:32'),
(30, 'create Order', 'web', '2024-01-31 12:24:32', '2024-01-31 12:24:32'),
(31, 'update Order', 'web', '2024-01-31 12:24:32', '2024-01-31 12:24:32'),
(32, 'delete Order', 'web', '2024-01-31 12:24:32', '2024-01-31 12:24:32'),
(33, 'restore Order', 'web', '2024-01-31 12:24:32', '2024-01-31 12:24:32'),
(34, 'force-delete Order', 'web', '2024-01-31 12:24:32', '2024-01-31 12:24:32'),
(35, 'replicate Order', 'web', '2024-01-31 12:24:32', '2024-01-31 12:24:32'),
(36, 'reorder Order', 'web', '2024-01-31 12:24:32', '2024-01-31 12:24:32'),
(37, 'view-any OrderItem', 'web', '2024-01-31 12:24:32', '2024-01-31 12:24:32'),
(38, 'view OrderItem', 'web', '2024-01-31 12:24:32', '2024-01-31 12:24:32'),
(39, 'create OrderItem', 'web', '2024-01-31 12:24:32', '2024-01-31 12:24:32'),
(40, 'update OrderItem', 'web', '2024-01-31 12:24:32', '2024-01-31 12:24:32'),
(41, 'delete OrderItem', 'web', '2024-01-31 12:24:32', '2024-01-31 12:24:32'),
(42, 'restore OrderItem', 'web', '2024-01-31 12:24:32', '2024-01-31 12:24:32'),
(43, 'force-delete OrderItem', 'web', '2024-01-31 12:24:32', '2024-01-31 12:24:32'),
(44, 'replicate OrderItem', 'web', '2024-01-31 12:24:32', '2024-01-31 12:24:32'),
(45, 'reorder OrderItem', 'web', '2024-01-31 12:24:32', '2024-01-31 12:24:32'),
(46, 'view-any Product', 'web', '2024-01-31 12:24:32', '2024-01-31 12:24:32'),
(47, 'view Product', 'web', '2024-01-31 12:24:32', '2024-01-31 12:24:32'),
(48, 'create Product', 'web', '2024-01-31 12:24:32', '2024-01-31 12:24:32'),
(49, 'update Product', 'web', '2024-01-31 12:24:32', '2024-01-31 12:24:32'),
(50, 'delete Product', 'web', '2024-01-31 12:24:32', '2024-01-31 12:24:32'),
(51, 'restore Product', 'web', '2024-01-31 12:24:32', '2024-01-31 12:24:32'),
(52, 'force-delete Product', 'web', '2024-01-31 12:24:32', '2024-01-31 12:24:32'),
(53, 'replicate Product', 'web', '2024-01-31 12:24:32', '2024-01-31 12:24:32'),
(54, 'reorder Product', 'web', '2024-01-31 12:24:32', '2024-01-31 12:24:32'),
(55, 'view-any User', 'web', '2024-01-31 12:24:32', '2024-01-31 12:24:32'),
(56, 'view User', 'web', '2024-01-31 12:24:32', '2024-01-31 12:24:32'),
(57, 'create User', 'web', '2024-01-31 12:24:32', '2024-01-31 12:24:32'),
(58, 'update User', 'web', '2024-01-31 12:24:32', '2024-01-31 12:24:32'),
(59, 'delete User', 'web', '2024-01-31 12:24:32', '2024-01-31 12:24:32'),
(60, 'restore User', 'web', '2024-01-31 12:24:32', '2024-01-31 12:24:32'),
(61, 'force-delete User', 'web', '2024-01-31 12:24:32', '2024-01-31 12:24:32'),
(62, 'replicate User', 'web', '2024-01-31 12:24:32', '2024-01-31 12:24:32'),
(63, 'reorder User', 'web', '2024-01-31 12:24:32', '2024-01-31 12:24:32');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `brand_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sku` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quantity` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `price` decimal(10,2) NOT NULL,
  `is_visible` tinyint(1) NOT NULL DEFAULT 0,
  `is_featured` tinyint(1) NOT NULL DEFAULT 0,
  `type` enum('deliverable','downloadable') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'deliverable',
  `published_at` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `brand_id`, `name`, `slug`, `sku`, `image_url`, `description`, `quantity`, `price`, `is_visible`, `is_featured`, `type`, `published_at`, `created_at`, `updated_at`) VALUES
(1, 1, 'iPhone 12', 'iphone-12', 'iphone-12', '01HNGCJ424JKE32A0YY62XFT76.png', 'iPhone 12. Description.', 22, '688.73', 1, 1, 'downloadable', '2023-06-09', '2024-07-23 18:00:00', '2024-01-31 12:30:06'),
(2, 1, 'iPhone 12 Pro', 'iphone-12-pro', 'iphone-12-pro', '01HNGCZRRDVK88T651ZG7XXG0F.png', 'iPhone 12 Pro. Description.', 56, '613.46', 0, 0, 'deliverable', '2023-11-07', '2024-09-23 18:00:00', '2024-01-31 12:37:33'),
(3, 1, 'iPhone SE', 'iphone-se', 'iphone-se', 'https://via.placeholder.com/300x300', 'iPhone SE. Description.', 85, '159.40', 1, 0, 'deliverable', '2023-06-16', '2024-08-25 18:00:00', '2024-01-31 12:24:32'),
(4, 1, 'iPad Pro', 'ipad-pro', 'ipad-pro', 'https://via.placeholder.com/300x300', 'iPad Pro. Description.', 17, '310.97', 1, 1, 'downloadable', '2023-07-24', '2024-12-07 18:00:00', '2024-01-31 12:24:32'),
(5, 1, 'iPad Air', 'ipad-air', 'ipad-air', 'https://via.placeholder.com/300x300', 'iPad Air. Description.', 25, '710.70', 0, 1, 'downloadable', '2023-04-28', '2024-05-16 18:00:00', '2024-01-31 12:24:32'),
(6, 1, 'iPad', 'ipad', 'ipad', 'https://via.placeholder.com/300x300', 'iPad. Description.', 5, '284.69', 1, 1, 'downloadable', '2023-07-06', '2024-06-21 18:00:00', '2024-01-31 12:24:32'),
(7, 1, 'MacBook Pro', 'macbook-pro', 'macbook-pro', 'https://via.placeholder.com/300x300', 'MacBook Pro. Description.', 31, '261.00', 1, 1, 'deliverable', '2024-01-17', '2024-04-26 18:00:00', '2024-01-31 12:24:32'),
(8, 1, 'MacBook Air', 'macbook-air', 'macbook-air', 'https://via.placeholder.com/300x300', 'MacBook Air. Description.', 22, '287.47', 1, 0, 'deliverable', '2023-11-04', '2024-09-08 18:00:00', '2024-01-31 12:24:32'),
(9, 1, 'MacBook', 'macbook', 'macbook', 'https://via.placeholder.com/300x300', 'MacBook. Description.', 78, '238.85', 1, 0, 'deliverable', '2023-08-03', '2024-04-27 18:00:00', '2024-01-31 12:24:32'),
(10, 2, 'Galaxy S21', 'galaxy-s21', 'galaxy-s21', 'https://via.placeholder.com/300x300', 'Galaxy S21. Description.', 98, '526.93', 1, 0, 'downloadable', '2023-11-29', '2024-07-11 18:00:00', '2024-01-31 12:24:32'),
(11, 2, 'Galaxy S21 Ultra', 'galaxy-s21-ultra', 'galaxy-s21-ultra', 'https://via.placeholder.com/300x300', 'Galaxy S21 Ultra. Description.', 12, '530.94', 0, 0, 'deliverable', '2023-07-28', '2024-04-02 18:00:00', '2024-01-31 12:24:32'),
(12, 2, 'Galaxy Tab S7', 'galaxy-tab-s7', 'galaxy-tab-s7', 'https://via.placeholder.com/300x300', 'Galaxy Tab S7. Description.', 81, '161.69', 0, 0, 'deliverable', '2023-11-02', '2024-08-10 18:00:00', '2024-01-31 12:24:32'),
(13, 2, 'Galaxy Tab S6 Lite', 'galaxy-tab-s6-lite', 'galaxy-tab-s6-lite', 'https://via.placeholder.com/300x300', 'Galaxy Tab S6 Lite. Description.', 97, '434.59', 1, 0, 'deliverable', '2023-11-13', '2024-02-13 18:00:00', '2024-01-31 12:24:33'),
(14, 2, 'Galaxy Book Flex', 'galaxy-book-flex', 'galaxy-book-flex', 'https://via.placeholder.com/300x300', 'Galaxy Book Flex. Description.', 6, '989.63', 1, 0, 'deliverable', '2023-08-22', '2024-02-26 18:00:00', '2024-01-31 12:24:33'),
(15, 2, 'Galaxy Book Ion', 'galaxy-book-ion', 'galaxy-book-ion', 'https://via.placeholder.com/300x300', 'Galaxy Book Ion. Description.', 67, '721.70', 1, 1, 'downloadable', '2023-07-15', '2024-06-16 18:00:00', '2024-01-31 12:24:33'),
(16, 2, 'Galaxy Book S', 'galaxy-book-s', 'galaxy-book-s', 'https://via.placeholder.com/300x300', 'Galaxy Book S. Description.', 85, '322.57', 0, 1, 'deliverable', '2023-03-02', '2024-01-04 18:00:00', '2024-01-31 12:24:33');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'web', '2024-01-31 12:24:32', '2024-01-31 12:24:32'),
(2, 'user', 'web', '2024-01-31 12:24:32', '2024-01-31 12:24:32');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 1),
(1, 2),
(2, 1),
(2, 2),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(10, 2),
(11, 1),
(11, 2),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(19, 2),
(20, 1),
(20, 2),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(28, 2),
(29, 1),
(29, 2),
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(37, 2),
(38, 1),
(38, 2),
(39, 1),
(40, 1),
(41, 1),
(42, 1),
(43, 1),
(44, 1),
(45, 1),
(46, 1),
(46, 2),
(47, 1),
(47, 2),
(48, 1),
(49, 1),
(50, 1),
(51, 1),
(52, 1),
(53, 1),
(54, 1),
(55, 1),
(55, 2),
(56, 1),
(56, 2),
(57, 1),
(58, 1),
(59, 1),
(60, 1),
(61, 1),
(62, 1),
(63, 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Joe Bloggs', 'admin@demo.com', '2024-01-31 12:24:32', '$2y$12$SzBHSA8RS57hHL38wMS9WOVJRm1RzmYyLmh3k/Bpl7KAqKvHUn/Hu', '8IdRZYLhiX2FOLcHsz7TWDxQZzyzkvoxPafKvauNUbb4NgEoH5WPFkV0YEXO', '2024-01-31 12:24:32', '2024-01-31 12:24:32'),
(2, 'Test User', 'user@demo.com', '2024-01-31 12:24:32', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi$2y$12$SzBHSA8RS57hHL38wMS9WOVJRm1RzmYyLmh3k/Bpl7KAqKvHUn/Hu', 'fePBI4wz2e', '2024-01-31 12:24:32', '2024-01-31 12:24:32'),
(3, 'Miss Mercedes Lebsack I', 'dickens.emmie@example.net', '2024-01-31 12:24:32', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'jijJzRwqX0', '2024-01-31 12:24:32', '2024-01-31 12:24:32'),
(4, 'Nolan Cronin', 'camren37@example.org', '2024-01-31 12:24:32', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'zJlqz6BSdw', '2024-01-31 12:24:32', '2024-01-31 12:24:32'),
(5, 'Orval Langworth', 'camden62@example.com', '2024-01-31 12:24:32', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'U3iBDx2xrB', '2024-01-31 12:24:32', '2024-01-31 12:24:32'),
(6, 'Emilie Rath', 'gilberto22@example.org', '2024-01-31 12:24:32', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '5jZhJocl8w', '2024-01-31 12:24:32', '2024-01-31 12:24:32'),
(7, 'Kamron Lakin', 'ahirthe@example.net', '2024-01-31 12:24:32', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'CxTEZkAbId', '2024-01-31 12:24:32', '2024-01-31 12:24:32'),
(8, 'Miss Aida Goldner Jr.', 'douglas.roob@example.org', '2024-01-31 12:24:32', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'gACrEaI92t', '2024-01-31 12:24:32', '2024-01-31 12:24:32'),
(9, 'Keshawn Dietrich', 'jada68@example.net', '2024-01-31 12:24:32', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'IYaKBnRSt0', '2024-01-31 12:24:32', '2024-01-31 12:24:32'),
(10, 'Dr. Nestor Ziemann', 'norval62@example.net', '2024-01-31 12:24:32', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'zN4rzuSPsT', '2024-01-31 12:24:32', '2024-01-31 12:24:32'),
(11, 'Prof. Brianne Hintz', 'bcrooks@example.com', '2024-01-31 12:24:32', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', '1LPwEFJnM1', '2024-01-31 12:24:32', '2024-01-31 12:24:32'),
(12, 'Hermina Mohr', 'klakin@example.com', '2024-01-31 12:24:32', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'p05VTFFIdy', '2024-01-31 12:24:32', '2024-01-31 12:24:32');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `brands_slug_unique` (`slug`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`),
  ADD KEY `categories_parent_id_foreign` (`parent_id`);

--
-- Indexes for table `category_product`
--
ALTER TABLE `category_product`
  ADD PRIMARY KEY (`category_id`,`product_id`),
  ADD KEY `category_product_product_id_foreign` (`product_id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `customers_email_unique` (`email`);

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
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `orders_number_unique` (`number`),
  ADD KEY `orders_customer_id_foreign` (`customer_id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_items_order_id_foreign` (`order_id`),
  ADD KEY `order_items_product_id_foreign` (`product_id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_slug_unique` (`slug`),
  ADD UNIQUE KEY `products_sku_unique` (`sku`),
  ADD KEY `products_brand_id_foreign` (`brand_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `category_product`
--
ALTER TABLE `category_product`
  ADD CONSTRAINT `category_product_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `category_product_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `order_items`
--
ALTER TABLE `order_items`
  ADD CONSTRAINT `order_items_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `order_items_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_brand_id_foreign` FOREIGN KEY (`brand_id`) REFERENCES `brands` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
