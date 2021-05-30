-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 02, 2021 at 03:57 PM
-- Server version: 10.3.25-MariaDB
-- PHP Version: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shuvobeb_bagi294`
--

DELIMITER $$
--
-- Functions
--
$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `bgwyaddresses`
--

CREATE TABLE `bgwyaddresses` (
  `id` int(10) UNSIGNED NOT NULL,
  `address_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_id` int(10) UNSIGNED DEFAULT NULL COMMENT 'null if guest checkout',
  `cart_id` int(10) UNSIGNED DEFAULT NULL COMMENT 'only for cart_addresses',
  `order_id` int(10) UNSIGNED DEFAULT NULL COMMENT 'only for order_addresses',
  `first_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address1` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address2` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postcode` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vat_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `default_address` tinyint(1) NOT NULL DEFAULT 0 COMMENT 'only for customer_addresses',
  `additional` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `bgwyaddresses`
--

INSERT INTO `bgwyaddresses` (`id`, `address_type`, `customer_id`, `cart_id`, `order_id`, `first_name`, `last_name`, `gender`, `company_name`, `address1`, `address2`, `postcode`, `city`, `state`, `country`, `email`, `phone`, `vat_id`, `default_address`, `additional`, `created_at`, `updated_at`) VALUES
(1, 'cart_billing', 2, 4, NULL, 'akib', 'hasan', NULL, 'akib', 'alamnagar', NULL, '7400', 'jeshore', 'jeshore', 'BD', 'tonuakibhasan@gmail.com', '01859487474', NULL, 0, NULL, '2021-02-25 03:13:34', '2021-02-25 03:13:34'),
(2, 'cart_shipping', 2, 4, NULL, 'akib', 'hasan', NULL, 'akib', 'alamnagar', NULL, '7400', 'jeshore', 'jeshore', 'BD', 'tonuakibhasan@gmail.com', '01859487474', NULL, 0, NULL, '2021-02-25 03:13:34', '2021-02-25 03:13:34'),
(3, 'customer', 2, 4, NULL, 'akib', 'hasan', NULL, 'akib', 'alamnagar', NULL, '7400', 'jeshore', 'jeshore', 'BD', 'tonuakibhasan@gmail.com', '01859487474', NULL, 0, NULL, '2021-02-25 03:13:44', '2021-02-25 03:13:44'),
(4, 'order_shipping', 2, NULL, 1, 'akib', 'hasan', NULL, 'akib', 'alamnagar', NULL, '7400', 'jeshore', 'jeshore', 'BD', 'tonuakibhasan@gmail.com', '01859487474', NULL, 0, NULL, '2021-02-25 03:13:56', '2021-02-25 03:13:56'),
(5, 'order_billing', 2, NULL, 1, 'akib', 'hasan', NULL, 'akib', 'alamnagar', NULL, '7400', 'jeshore', 'jeshore', 'BD', 'tonuakibhasan@gmail.com', '01859487474', NULL, 0, NULL, '2021-02-25 03:13:56', '2021-02-25 03:13:56'),
(6, 'cart_billing', 3, 10, NULL, 'Mezba', 'Uddin', NULL, NULL, 'A', NULL, 'D', 'B', 'C', 'BD', 'csemezba@gmail.com', '3', NULL, 0, NULL, '2021-02-25 19:45:53', '2021-02-25 19:45:53'),
(7, 'cart_shipping', 3, 10, NULL, 'Mezba', 'Uddin', NULL, NULL, 'A', NULL, 'D', 'B', 'C', 'BD', 'csemezba@gmail.com', '3', NULL, 0, NULL, '2021-02-25 19:45:53', '2021-02-25 19:45:53'),
(8, 'order_shipping', 3, NULL, 2, 'Mezba', 'Uddin', NULL, NULL, 'A', NULL, 'D', 'B', 'C', 'BD', 'csemezba@gmail.com', '3', NULL, 0, NULL, '2021-02-25 19:46:10', '2021-02-25 19:46:10'),
(9, 'order_billing', 3, NULL, 2, 'Mezba', 'Uddin', NULL, NULL, 'A', NULL, 'D', 'B', 'C', 'BD', 'csemezba@gmail.com', '3', NULL, 0, NULL, '2021-02-25 19:46:10', '2021-02-25 19:46:10'),
(10, 'cart_billing', 3, 11, NULL, 'Mezba', 'Uddin', NULL, 'a', 'G', NULL, '5', 'T', 'Q', 'BD', 'csemezba@gmail.com', '5', NULL, 0, NULL, '2021-02-25 19:47:01', '2021-02-25 19:47:01'),
(11, 'cart_shipping', 3, 11, NULL, 'Mezba', 'Uddin', NULL, 'a', 'G', NULL, '5', 'T', 'Q', 'BD', 'csemezba@gmail.com', '5', NULL, 0, NULL, '2021-02-25 19:47:01', '2021-02-25 19:47:01'),
(12, 'order_shipping', 3, NULL, 3, 'Mezba', 'Uddin', NULL, 'a', 'G', NULL, '5', 'T', 'Q', 'BD', 'csemezba@gmail.com', '5', NULL, 0, NULL, '2021-02-25 19:47:17', '2021-02-25 19:47:17'),
(13, 'order_billing', 3, NULL, 3, 'Mezba', 'Uddin', NULL, 'a', 'G', NULL, '5', 'T', 'Q', 'BD', 'csemezba@gmail.com', '5', NULL, 0, NULL, '2021-02-25 19:47:17', '2021-02-25 19:47:17'),
(14, 'cart_billing', 3, 12, NULL, 'Mezba', 'Uddin', NULL, 'a', 'A', NULL, '5', 'B', '3', 'AD', 'csemezba@gmail.com', '4', NULL, 0, NULL, '2021-02-25 19:48:08', '2021-02-25 19:49:12'),
(15, 'cart_shipping', 3, 12, NULL, 'Mezba', 'Uddin', NULL, 'a', 'A', NULL, '5', 'B', '3', 'AD', 'csemezba@gmail.com', '4', NULL, 0, NULL, '2021-02-25 19:48:08', '2021-02-25 19:49:12'),
(16, 'order_shipping', 3, NULL, 4, 'Mezba', 'Uddin', NULL, 'a', 'A', NULL, '5', 'B', '3', 'AD', 'csemezba@gmail.com', '4', NULL, 0, NULL, '2021-02-25 19:49:22', '2021-02-25 19:49:22'),
(17, 'order_billing', 3, NULL, 4, 'Mezba', 'Uddin', NULL, 'a', 'A', NULL, '5', 'B', '3', 'AD', 'csemezba@gmail.com', '4', NULL, 0, NULL, '2021-02-25 19:49:22', '2021-02-25 19:49:22');

-- --------------------------------------------------------

--
-- Table structure for table `bgwyadmins`
--

CREATE TABLE `bgwyadmins` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `api_token` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `role_id` int(10) UNSIGNED NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `bgwyadmins`
--

INSERT INTO `bgwyadmins` (`id`, `name`, `email`, `password`, `api_token`, `status`, `role_id`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@velocity.com', '$2y$10$bJWItsmCWL2hROgA3ItL7udFxnylcKtABjPtb5s7bvziOS8tu4ErS', 'axJrgjhRuVJ6cQKI89WiHRVxYP9tA1doGEbXLrMhMMohW10fgRtq1yUSzcEoOLIs4vYCyOZTBRqj88bJ', 1, 1, NULL, '2021-02-24 16:15:51', '2021-02-25 04:18:16');

-- --------------------------------------------------------

--
-- Table structure for table `bgwyadmin_password_resets`
--

CREATE TABLE `bgwyadmin_password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `bgwyattributes`
--

CREATE TABLE `bgwyattributes` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `validation` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `is_required` tinyint(1) NOT NULL DEFAULT 0,
  `is_unique` tinyint(1) NOT NULL DEFAULT 0,
  `value_per_locale` tinyint(1) NOT NULL DEFAULT 0,
  `value_per_channel` tinyint(1) NOT NULL DEFAULT 0,
  `is_filterable` tinyint(1) NOT NULL DEFAULT 0,
  `is_configurable` tinyint(1) NOT NULL DEFAULT 0,
  `is_user_defined` tinyint(1) NOT NULL DEFAULT 1,
  `is_visible_on_front` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `swatch_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `use_in_flat` tinyint(1) NOT NULL DEFAULT 1,
  `is_comparable` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `bgwyattributes`
--

INSERT INTO `bgwyattributes` (`id`, `code`, `admin_name`, `type`, `validation`, `position`, `is_required`, `is_unique`, `value_per_locale`, `value_per_channel`, `is_filterable`, `is_configurable`, `is_user_defined`, `is_visible_on_front`, `created_at`, `updated_at`, `swatch_type`, `use_in_flat`, `is_comparable`) VALUES
(1, 'sku', 'SKU', 'text', NULL, 1, 1, 1, 0, 0, 0, 0, 0, 0, '2021-02-24 16:15:51', '2021-02-24 16:15:51', NULL, 1, 0),
(2, 'name', 'Name', 'text', NULL, 2, 1, 0, 1, 1, 0, 0, 0, 0, '2021-02-24 16:15:51', '2021-02-24 16:15:51', NULL, 1, 1),
(3, 'url_key', 'URL Key', 'text', NULL, 3, 1, 1, 0, 0, 0, 0, 0, 0, '2021-02-24 16:15:51', '2021-02-24 16:15:51', NULL, 1, 0),
(4, 'tax_category_id', 'Tax Category', 'select', NULL, 4, 0, 0, 0, 1, 0, 0, 0, 0, '2021-02-24 16:15:51', '2021-02-24 16:15:51', NULL, 1, 0),
(5, 'new', 'New', 'boolean', NULL, 5, 0, 0, 0, 0, 0, 0, 0, 0, '2021-02-24 16:15:51', '2021-02-24 16:15:51', NULL, 1, 0),
(6, 'featured', 'Featured', 'boolean', NULL, 6, 0, 0, 0, 0, 0, 0, 0, 0, '2021-02-24 16:15:51', '2021-02-24 16:15:51', NULL, 1, 0),
(7, 'visible_individually', 'Visible Individually', 'boolean', NULL, 7, 1, 0, 0, 0, 0, 0, 0, 0, '2021-02-24 16:15:51', '2021-02-24 16:15:51', NULL, 1, 0),
(8, 'status', 'Status', 'boolean', NULL, 8, 1, 0, 0, 0, 0, 0, 0, 0, '2021-02-24 16:15:51', '2021-02-24 16:15:51', NULL, 1, 0),
(9, 'short_description', 'Short Description', 'textarea', NULL, 9, 1, 0, 1, 1, 0, 0, 0, 0, '2021-02-24 16:15:51', '2021-02-24 16:15:51', NULL, 1, 0),
(10, 'description', 'Description', 'textarea', NULL, 10, 1, 0, 1, 1, 0, 0, 0, 0, '2021-02-24 16:15:51', '2021-02-24 16:15:51', NULL, 1, 1),
(11, 'price', 'Price', 'price', 'decimal', 11, 1, 0, 0, 0, 1, 0, 0, 0, '2021-02-24 16:15:51', '2021-02-24 16:15:51', NULL, 1, 1),
(12, 'cost', 'Cost', 'price', 'decimal', 12, 0, 0, 0, 1, 0, 0, 1, 0, '2021-02-24 16:15:51', '2021-02-24 16:15:51', NULL, 1, 0),
(13, 'special_price', 'Special Price', 'price', 'decimal', 13, 0, 0, 0, 0, 0, 0, 0, 0, '2021-02-24 16:15:51', '2021-02-24 16:15:51', NULL, 1, 0),
(14, 'special_price_from', 'Special Price From', 'date', NULL, 14, 0, 0, 0, 1, 0, 0, 0, 0, '2021-02-24 16:15:51', '2021-02-24 16:15:51', NULL, 1, 0),
(15, 'special_price_to', 'Special Price To', 'date', NULL, 15, 0, 0, 0, 1, 0, 0, 0, 0, '2021-02-24 16:15:51', '2021-02-24 16:15:51', NULL, 1, 0),
(16, 'meta_title', 'Meta Title', 'textarea', NULL, 16, 0, 0, 1, 1, 0, 0, 0, 0, '2021-02-24 16:15:51', '2021-02-24 16:15:51', NULL, 1, 0),
(17, 'meta_keywords', 'Meta Keywords', 'textarea', NULL, 17, 0, 0, 1, 1, 0, 0, 0, 0, '2021-02-24 16:15:51', '2021-02-24 16:15:51', NULL, 1, 0),
(18, 'meta_description', 'Meta Description', 'textarea', NULL, 18, 0, 0, 1, 1, 0, 0, 1, 0, '2021-02-24 16:15:51', '2021-02-24 16:15:51', NULL, 1, 0),
(19, 'width', 'Width', 'text', 'decimal', 19, 0, 0, 0, 0, 0, 0, 1, 0, '2021-02-24 16:15:51', '2021-02-24 16:15:51', NULL, 1, 0),
(20, 'height', 'Height', 'text', 'decimal', 20, 0, 0, 0, 0, 0, 0, 1, 0, '2021-02-24 16:15:51', '2021-02-24 16:15:51', NULL, 1, 0),
(21, 'depth', 'Depth', 'text', 'decimal', 21, 0, 0, 0, 0, 0, 0, 1, 0, '2021-02-24 16:15:51', '2021-02-24 16:15:51', NULL, 1, 0),
(22, 'weight', 'Weight', 'text', 'decimal', 22, 1, 0, 0, 0, 0, 0, 0, 0, '2021-02-24 16:15:51', '2021-02-24 16:15:51', NULL, 1, 0),
(23, 'color', 'Color', 'select', NULL, 23, 0, 0, 0, 0, 1, 1, 1, 0, '2021-02-24 16:15:51', '2021-02-24 16:15:51', NULL, 1, 0),
(24, 'size', 'Size', 'select', NULL, 24, 0, 0, 0, 0, 1, 1, 1, 0, '2021-02-24 16:15:51', '2021-02-24 16:15:51', NULL, 1, 0),
(25, 'brand', 'Brand', 'select', NULL, 25, 0, 0, 0, 0, 1, 0, 0, 1, '2021-02-24 16:15:51', '2021-02-24 16:15:51', NULL, 1, 0),
(26, 'guest_checkout', 'Guest Checkout', 'boolean', NULL, 8, 1, 0, 0, 0, 0, 0, 0, 0, '2021-02-24 16:15:51', '2021-02-24 16:15:51', NULL, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `bgwyattribute_families`
--

CREATE TABLE `bgwyattribute_families` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `is_user_defined` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `bgwyattribute_families`
--

INSERT INTO `bgwyattribute_families` (`id`, `code`, `name`, `status`, `is_user_defined`) VALUES
(1, 'default', 'Default', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `bgwyattribute_groups`
--

CREATE TABLE `bgwyattribute_groups` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` int(11) NOT NULL,
  `is_user_defined` tinyint(1) NOT NULL DEFAULT 1,
  `attribute_family_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `bgwyattribute_groups`
--

INSERT INTO `bgwyattribute_groups` (`id`, `name`, `position`, `is_user_defined`, `attribute_family_id`) VALUES
(1, 'General', 1, 0, 1),
(2, 'Description', 2, 0, 1),
(3, 'Meta Description', 3, 0, 1),
(4, 'Price', 4, 0, 1),
(5, 'Shipping', 5, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `bgwyattribute_group_mappings`
--

CREATE TABLE `bgwyattribute_group_mappings` (
  `attribute_id` int(10) UNSIGNED NOT NULL,
  `attribute_group_id` int(10) UNSIGNED NOT NULL,
  `position` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `bgwyattribute_group_mappings`
--

INSERT INTO `bgwyattribute_group_mappings` (`attribute_id`, `attribute_group_id`, `position`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 3),
(4, 1, 4),
(5, 1, 5),
(6, 1, 6),
(7, 1, 7),
(8, 1, 8),
(9, 2, 1),
(10, 2, 2),
(11, 4, 1),
(12, 4, 2),
(13, 4, 3),
(14, 4, 4),
(15, 4, 5),
(16, 3, 1),
(17, 3, 2),
(18, 3, 3),
(19, 5, 1),
(20, 5, 2),
(21, 5, 3),
(22, 5, 4),
(23, 1, 10),
(24, 1, 11),
(25, 1, 12),
(26, 1, 9);

-- --------------------------------------------------------

--
-- Table structure for table `bgwyattribute_options`
--

CREATE TABLE `bgwyattribute_options` (
  `id` int(10) UNSIGNED NOT NULL,
  `admin_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `attribute_id` int(10) UNSIGNED NOT NULL,
  `swatch_value` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `bgwyattribute_options`
--

INSERT INTO `bgwyattribute_options` (`id`, `admin_name`, `sort_order`, `attribute_id`, `swatch_value`) VALUES
(1, 'Red', 1, 23, NULL),
(2, 'Green', 2, 23, NULL),
(3, 'Yellow', 3, 23, NULL),
(4, 'Black', 4, 23, NULL),
(5, 'White', 5, 23, NULL),
(6, 'S', 1, 24, NULL),
(7, 'M', 2, 24, NULL),
(8, 'L', 3, 24, NULL),
(9, 'XL', 4, 24, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `bgwyattribute_option_translations`
--

CREATE TABLE `bgwyattribute_option_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `label` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attribute_option_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `bgwyattribute_option_translations`
--

INSERT INTO `bgwyattribute_option_translations` (`id`, `locale`, `label`, `attribute_option_id`) VALUES
(1, 'en', 'Red', 1),
(2, 'en', 'Green', 2),
(3, 'en', 'Yellow', 3),
(4, 'en', 'Black', 4),
(5, 'en', 'White', 5),
(6, 'en', 'S', 6),
(7, 'en', 'M', 7),
(8, 'en', 'L', 8),
(9, 'en', 'XL', 9);

-- --------------------------------------------------------

--
-- Table structure for table `bgwyattribute_translations`
--

CREATE TABLE `bgwyattribute_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attribute_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `bgwyattribute_translations`
--

INSERT INTO `bgwyattribute_translations` (`id`, `locale`, `name`, `attribute_id`) VALUES
(1, 'en', 'SKU', 1),
(2, 'en', 'Name', 2),
(3, 'en', 'URL Key', 3),
(4, 'en', 'Tax Category', 4),
(5, 'en', 'New', 5),
(6, 'en', 'Featured', 6),
(7, 'en', 'Visible Individually', 7),
(8, 'en', 'Status', 8),
(9, 'en', 'Short Description', 9),
(10, 'en', 'Description', 10),
(11, 'en', 'Price', 11),
(12, 'en', 'Cost', 12),
(13, 'en', 'Special Price', 13),
(14, 'en', 'Special Price From', 14),
(15, 'en', 'Special Price To', 15),
(16, 'en', 'Meta Description', 16),
(17, 'en', 'Meta Keywords', 17),
(18, 'en', 'Meta Description', 18),
(19, 'en', 'Width', 19),
(20, 'en', 'Height', 20),
(21, 'en', 'Depth', 21),
(22, 'en', 'Weight', 22),
(23, 'en', 'Color', 23),
(24, 'en', 'Size', 24),
(25, 'en', 'Brand', 25),
(26, 'en', 'Allow Guest Checkout', 26);

-- --------------------------------------------------------

--
-- Table structure for table `bgwybookings`
--

CREATE TABLE `bgwybookings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `qty` int(11) DEFAULT 0,
  `from` int(11) DEFAULT NULL,
  `to` int(11) DEFAULT NULL,
  `order_item_id` int(10) UNSIGNED DEFAULT NULL,
  `booking_product_event_ticket_id` int(10) UNSIGNED DEFAULT NULL,
  `order_id` int(10) UNSIGNED DEFAULT NULL,
  `product_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `bgwybooking_products`
--

CREATE TABLE `bgwybooking_products` (
  `id` int(10) UNSIGNED NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `qty` int(11) DEFAULT 0,
  `location` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `show_location` tinyint(1) NOT NULL DEFAULT 0,
  `available_every_week` tinyint(1) DEFAULT NULL,
  `available_from` datetime DEFAULT NULL,
  `available_to` datetime DEFAULT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `bgwybooking_product_appointment_slots`
--

CREATE TABLE `bgwybooking_product_appointment_slots` (
  `id` int(10) UNSIGNED NOT NULL,
  `duration` int(11) DEFAULT NULL,
  `break_time` int(11) DEFAULT NULL,
  `same_slot_all_days` tinyint(1) DEFAULT NULL,
  `slots` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `booking_product_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `bgwybooking_product_default_slots`
--

CREATE TABLE `bgwybooking_product_default_slots` (
  `id` int(10) UNSIGNED NOT NULL,
  `booking_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `duration` int(11) DEFAULT NULL,
  `break_time` int(11) DEFAULT NULL,
  `slots` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `booking_product_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `bgwybooking_product_event_tickets`
--

CREATE TABLE `bgwybooking_product_event_tickets` (
  `id` int(10) UNSIGNED NOT NULL,
  `price` decimal(12,4) DEFAULT 0.0000,
  `qty` int(11) DEFAULT 0,
  `special_price` decimal(12,4) DEFAULT NULL,
  `special_price_from` datetime DEFAULT NULL,
  `special_price_to` datetime DEFAULT NULL,
  `booking_product_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `bgwybooking_product_event_ticket_translations`
--

CREATE TABLE `bgwybooking_product_event_ticket_translations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `booking_product_event_ticket_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `bgwybooking_product_rental_slots`
--

CREATE TABLE `bgwybooking_product_rental_slots` (
  `id` int(10) UNSIGNED NOT NULL,
  `renting_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `daily_price` decimal(12,4) DEFAULT 0.0000,
  `hourly_price` decimal(12,4) DEFAULT 0.0000,
  `same_slot_all_days` tinyint(1) DEFAULT NULL,
  `slots` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `booking_product_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `bgwybooking_product_table_slots`
--

CREATE TABLE `bgwybooking_product_table_slots` (
  `id` int(10) UNSIGNED NOT NULL,
  `price_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guest_limit` int(11) NOT NULL DEFAULT 0,
  `duration` int(11) NOT NULL,
  `break_time` int(11) NOT NULL,
  `prevent_scheduling_before` int(11) NOT NULL,
  `same_slot_all_days` tinyint(1) DEFAULT NULL,
  `slots` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `booking_product_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `bgwycart`
--

CREATE TABLE `bgwycart` (
  `id` int(10) UNSIGNED NOT NULL,
  `customer_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_first_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_last_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_method` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `coupon_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_gift` tinyint(1) NOT NULL DEFAULT 0,
  `items_count` int(11) DEFAULT NULL,
  `items_qty` decimal(12,4) DEFAULT NULL,
  `exchange_rate` decimal(12,4) DEFAULT NULL,
  `global_currency_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `base_currency_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `channel_currency_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cart_currency_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `grand_total` decimal(12,4) DEFAULT 0.0000,
  `base_grand_total` decimal(12,4) DEFAULT 0.0000,
  `sub_total` decimal(12,4) DEFAULT 0.0000,
  `base_sub_total` decimal(12,4) DEFAULT 0.0000,
  `tax_total` decimal(12,4) DEFAULT 0.0000,
  `base_tax_total` decimal(12,4) DEFAULT 0.0000,
  `discount_amount` decimal(12,4) DEFAULT 0.0000,
  `base_discount_amount` decimal(12,4) DEFAULT 0.0000,
  `checkout_method` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_guest` tinyint(1) DEFAULT NULL,
  `is_active` tinyint(1) DEFAULT 1,
  `conversion_time` datetime DEFAULT NULL,
  `customer_id` int(10) UNSIGNED DEFAULT NULL,
  `channel_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `applied_cart_rule_ids` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `bgwycart`
--

INSERT INTO `bgwycart` (`id`, `customer_email`, `customer_first_name`, `customer_last_name`, `shipping_method`, `coupon_code`, `is_gift`, `items_count`, `items_qty`, `exchange_rate`, `global_currency_code`, `base_currency_code`, `channel_currency_code`, `cart_currency_code`, `grand_total`, `base_grand_total`, `sub_total`, `base_sub_total`, `tax_total`, `base_tax_total`, `discount_amount`, `base_discount_amount`, `checkout_method`, `is_guest`, `is_active`, `conversion_time`, `customer_id`, `channel_id`, `created_at`, `updated_at`, `applied_cart_rule_ids`) VALUES
(1, 'saddam.snowtex007@gmail.com', 'Saddam', 'Hossen', NULL, NULL, 0, 1, 1.0000, NULL, 'USD', 'USD', 'USD', 'USD', 350.0000, 350.0000, 350.0000, 350.0000, 0.0000, 0.0000, 0.0000, 0.0000, NULL, 0, 1, NULL, 1, 1, '2021-02-24 05:03:27', '2021-02-24 05:03:32', ''),
(3, NULL, NULL, NULL, NULL, NULL, 0, 4, 5.0000, NULL, 'USD', 'USD', 'USD', 'USD', 7290.0000, 7290.0000, 7290.0000, 7290.0000, 0.0000, 0.0000, 0.0000, 0.0000, NULL, 1, 1, NULL, NULL, 1, '2021-02-24 23:07:59', '2021-02-24 23:23:02', ''),
(4, 'tonuakibhasan@gmail.com', 'akib', 'hasan', 'free_free', NULL, 0, 1, 1.0000, NULL, 'USD', 'USD', 'USD', 'USD', 1000.0000, 1000.0000, 1000.0000, 1000.0000, 0.0000, 0.0000, 0.0000, 0.0000, NULL, 0, 0, NULL, 2, 1, '2021-02-25 03:13:15', '2021-02-25 03:13:56', ''),
(5, NULL, NULL, NULL, NULL, NULL, 0, 2, 4.0000, NULL, 'USD', 'USD', 'BDT', 'BDT', 39.0000, 39.0000, 39.0000, 39.0000, 0.0000, 0.0000, 0.0000, 0.0000, NULL, 1, 1, NULL, NULL, 1, '2021-02-25 03:59:53', '2021-02-25 03:59:56', ''),
(6, NULL, NULL, NULL, NULL, NULL, 0, 1, 1.0000, NULL, 'USD', 'USD', 'BDT', 'USD', 25.0000, 25.0000, 25.0000, 25.0000, 0.0000, 0.0000, 0.0000, 0.0000, NULL, 1, 1, NULL, NULL, 1, '2021-02-25 04:15:08', '2021-02-25 04:15:29', ''),
(7, NULL, NULL, NULL, NULL, NULL, 0, 2, 2.0000, NULL, 'USD', 'USD', 'BDT', 'BDT', 61.0000, 61.0000, 61.0000, 61.0000, 0.0000, 0.0000, 0.0000, 0.0000, NULL, 1, 1, NULL, NULL, 1, '2021-02-25 05:01:48', '2021-02-25 05:01:55', ''),
(9, NULL, NULL, NULL, NULL, NULL, 0, 1, 1.0000, NULL, 'USD', 'USD', 'BDT', 'BDT', 800.0000, 800.0000, 800.0000, 800.0000, 0.0000, 0.0000, 0.0000, 0.0000, NULL, 1, 1, NULL, NULL, 1, '2021-02-25 06:07:14', '2021-02-25 06:07:14', ''),
(10, 'csemezba@gmail.com', 'Mezba', 'Uddin', 'flatrate_flatrate', NULL, 0, 2, 2.0000, NULL, 'USD', 'USD', 'BDT', 'BDT', 1080.0000, 1080.0000, 1060.0000, 1060.0000, 0.0000, 0.0000, 0.0000, 0.0000, NULL, 0, 0, NULL, 3, 1, '2021-02-25 19:43:14', '2021-02-25 19:46:10', ''),
(11, 'csemezba@gmail.com', 'Mezba', 'Uddin', 'flatrate_flatrate', NULL, 0, 2, 2.0000, NULL, 'USD', 'USD', 'BDT', 'BDT', 1080.0000, 1080.0000, 1060.0000, 1060.0000, 0.0000, 0.0000, 0.0000, 0.0000, NULL, 0, 0, NULL, 3, 1, '2021-02-25 19:46:24', '2021-02-25 19:47:18', ''),
(12, 'csemezba@gmail.com', 'Mezba', 'Uddin', 'flatrate_flatrate', NULL, 0, 2, 2.0000, NULL, 'USD', 'USD', 'BDT', 'BDT', 1000.0000, 1000.0000, 980.0000, 980.0000, 0.0000, 0.0000, 0.0000, 0.0000, NULL, 0, 0, NULL, 3, 1, '2021-02-25 19:47:28', '2021-02-25 19:49:22', ''),
(13, NULL, NULL, NULL, NULL, NULL, 0, 2, 2.0000, NULL, 'USD', 'USD', 'BDT', 'BDT', 75.0000, 75.0000, 75.0000, 75.0000, 0.0000, 0.0000, 0.0000, 0.0000, NULL, 1, 1, NULL, NULL, 1, '2021-02-28 03:06:11', '2021-02-28 03:08:16', '');

-- --------------------------------------------------------

--
-- Table structure for table `bgwycart_items`
--

CREATE TABLE `bgwycart_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `quantity` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `sku` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `coupon_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `weight` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `total_weight` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `base_total_weight` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `price` decimal(12,4) NOT NULL DEFAULT 1.0000,
  `base_price` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `total` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `base_total` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `tax_percent` decimal(12,4) DEFAULT 0.0000,
  `tax_amount` decimal(12,4) DEFAULT 0.0000,
  `base_tax_amount` decimal(12,4) DEFAULT 0.0000,
  `discount_percent` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `discount_amount` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `base_discount_amount` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `additional` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `cart_id` int(10) UNSIGNED NOT NULL,
  `tax_category_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `custom_price` decimal(12,4) DEFAULT NULL,
  `applied_cart_rule_ids` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `bgwycart_items`
--

INSERT INTO `bgwycart_items` (`id`, `quantity`, `sku`, `type`, `name`, `coupon_code`, `weight`, `total_weight`, `base_total_weight`, `price`, `base_price`, `total`, `base_total`, `tax_percent`, `tax_amount`, `base_tax_amount`, `discount_percent`, `discount_amount`, `base_discount_amount`, `additional`, `parent_id`, `product_id`, `cart_id`, `tax_category_id`, `created_at`, `updated_at`, `custom_price`, `applied_cart_rule_ids`) VALUES
(1, 1, '1001', 'simple', 'Tiffany Sugar Free Lemon Biscuit 162gm', NULL, 262.0000, 262.0000, 262.0000, 350.0000, 350.0000, 350.0000, 350.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, '{\"quantity\":1,\"product_id\":\"1\",\"_token\":\"WbTMSVn5g3EwKn1YvBku9ukfZEIcFxDQdZsUqRpy\"}', NULL, 1, 1, NULL, '2021-02-24 05:03:27', '2021-02-24 05:03:32', NULL, ''),
(3, 1, '1011', 'simple', 'Minicate Rice (Premium)', NULL, 1.0000, 1.0000, 1.0000, 60.0000, 60.0000, 60.0000, 60.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, '{\"quantity\":1,\"product_id\":\"10\",\"_token\":\"jOeL36FcFKwDz2NfyT1igkQWvKRw0hPm8sbiZvCh\"}', NULL, 10, 3, NULL, '2021-02-24 23:07:59', '2021-02-24 23:23:02', NULL, ''),
(4, 2, '1009', 'simple', 'GOLDEN HARVEST CHICKEN SHAMMI KABAB (10PCS)', NULL, 10.0000, 20.0000, 20.0000, 1000.0000, 1000.0000, 2000.0000, 2000.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, '{\"quantity\":2,\"product_id\":\"8\",\"_token\":\"jOeL36FcFKwDz2NfyT1igkQWvKRw0hPm8sbiZvCh\"}', NULL, 8, 3, NULL, '2021-02-24 23:08:06', '2021-02-24 23:23:02', NULL, ''),
(5, 1, '1008', 'simple', 'Nido 1 plus 1800g - Dubai', NULL, 1800.0000, 1800.0000, 1800.0000, 4600.0000, 4600.0000, 4600.0000, 4600.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, '{\"quantity\":1,\"product_id\":\"7\",\"_token\":\"jOeL36FcFKwDz2NfyT1igkQWvKRw0hPm8sbiZvCh\"}', NULL, 7, 3, NULL, '2021-02-24 23:23:01', '2021-02-24 23:23:02', NULL, ''),
(6, 1, '1006', 'simple', 'Anchor Fortified Full Cream Milk Powder (1kg)', NULL, 1000.0000, 1000.0000, 1000.0000, 630.0000, 630.0000, 630.0000, 630.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, '{\"quantity\":1,\"product_id\":\"6\",\"_token\":\"jOeL36FcFKwDz2NfyT1igkQWvKRw0hPm8sbiZvCh\"}', NULL, 6, 3, NULL, '2021-02-24 23:23:02', '2021-02-24 23:23:02', NULL, ''),
(7, 1, '1009', 'simple', 'GOLDEN HARVEST CHICKEN SHAMMI KABAB (10PCS)', NULL, 10.0000, 10.0000, 10.0000, 1000.0000, 1000.0000, 1000.0000, 1000.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, '{\"quantity\":1,\"product_id\":\"8\",\"_token\":\"TdNdZBzMkiY8AhFLkQnOrxhIyQrshGFKdxh11tGv\"}', NULL, 8, 4, NULL, '2021-02-25 03:13:15', '2021-02-25 03:13:56', NULL, ''),
(8, 1, '9003', 'simple', ' Egg Chicken Red 1PCS', NULL, 30.0000, 30.0000, 30.0000, 9.0000, 9.0000, 9.0000, 9.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, '{\"quantity\":1,\"product_id\":\"58\",\"_token\":\"x96d6WAfO5o3qEQx2hhjuzKTHmHdk9sRnyqUUR1Q\"}', NULL, 58, 5, NULL, '2021-02-25 03:59:53', '2021-02-25 03:59:56', NULL, ''),
(9, 3, '9002', 'simple', ' Lemon (Local)', NULL, 10.0000, 30.0000, 30.0000, 10.0000, 10.0000, 30.0000, 30.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, '{\"quantity\":3,\"product_id\":\"57\",\"_token\":\"x96d6WAfO5o3qEQx2hhjuzKTHmHdk9sRnyqUUR1Q\"}', NULL, 57, 5, NULL, '2021-02-25 03:59:53', '2021-02-25 03:59:56', NULL, ''),
(10, 1, '3000', 'simple', 'Shokti Mishti Doi', NULL, 25.0000, 25.0000, 25.0000, 25.0000, 25.0000, 25.0000, 25.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, '{\"quantity\":1,\"product_id\":\"24\",\"_token\":\"GdRSdswTCkm76nJOu6gJqh5xaizLxDJuLz4dO59Z\"}', NULL, 24, 6, NULL, '2021-02-25 04:15:08', '2021-02-25 04:15:29', NULL, ''),
(11, 1, '1018', 'simple', 'PUMPKIN GREEN [SWEET GOURD] PCS', NULL, 1000.0000, 1000.0000, 1000.0000, 45.0000, 45.0000, 45.0000, 45.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, '{\"quantity\":1,\"product_id\":\"14\",\"_token\":\"DmXyVDJg8HSJFNAGe0RKBkL7sFlpwvuXP1rJqUJL\"}', NULL, 14, 7, NULL, '2021-02-25 05:01:48', '2021-02-25 05:01:55', NULL, ''),
(12, 1, '1019', 'simple', 'Pudina Pata', NULL, 20.0000, 20.0000, 20.0000, 16.0000, 16.0000, 16.0000, 16.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, '{\"quantity\":1,\"product_id\":\"15\",\"_token\":\"DmXyVDJg8HSJFNAGe0RKBkL7sFlpwvuXP1rJqUJL\"}', NULL, 15, 7, NULL, '2021-02-25 05:01:50', '2021-02-25 05:01:55', NULL, ''),
(14, 1, '2003', 'simple', 'Taki Fish (Hawor)', NULL, 500.0000, 500.0000, 500.0000, 800.0000, 800.0000, 800.0000, 800.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, '{\"quantity\":1,\"product_id\":\"20\",\"_token\":\"uhffGk8N4MDIK8UNnJNa6O2ekvzUbp8hvuyultkI\"}', NULL, 20, 9, NULL, '2021-02-25 06:07:14', '2021-02-25 06:07:14', NULL, ''),
(15, 1, '1011', 'simple', 'Minicate Rice (Premium)', NULL, 1.0000, 1.0000, 1.0000, 60.0000, 60.0000, 60.0000, 60.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, '{\"quantity\":1,\"product_id\":\"10\",\"_token\":\"lMIUbSwvsYN3KpK3NaJ4FpBxYg7dM6AwnF0YMNup\"}', NULL, 10, 10, NULL, '2021-02-25 19:43:14', '2021-02-25 19:46:10', NULL, ''),
(16, 1, '1010', 'simple', 'GOLDEN HARVEST MOROG POLAW 400 GM', NULL, 600.0000, 600.0000, 600.0000, 1000.0000, 1000.0000, 1000.0000, 1000.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, '{\"quantity\":1,\"product_id\":\"9\",\"_token\":\"lMIUbSwvsYN3KpK3NaJ4FpBxYg7dM6AwnF0YMNup\"}', NULL, 9, 10, NULL, '2021-02-25 19:43:16', '2021-02-25 19:46:10', NULL, ''),
(17, 1, '1010', 'simple', 'GOLDEN HARVEST MOROG POLAW 400 GM', NULL, 600.0000, 600.0000, 600.0000, 1000.0000, 1000.0000, 1000.0000, 1000.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, '{\"quantity\":1,\"product_id\":\"9\",\"_token\":\"lMIUbSwvsYN3KpK3NaJ4FpBxYg7dM6AwnF0YMNup\"}', NULL, 9, 11, NULL, '2021-02-25 19:46:24', '2021-02-25 19:47:17', NULL, ''),
(18, 1, '1011', 'simple', 'Minicate Rice (Premium)', NULL, 1.0000, 1.0000, 1.0000, 60.0000, 60.0000, 60.0000, 60.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, '{\"quantity\":1,\"product_id\":\"10\",\"_token\":\"lMIUbSwvsYN3KpK3NaJ4FpBxYg7dM6AwnF0YMNup\"}', NULL, 10, 11, NULL, '2021-02-25 19:46:24', '2021-02-25 19:47:17', NULL, ''),
(19, 1, '1004', 'simple', 'Kazi Farms Kitchen Chicken Strips (250gm)', NULL, 250.0000, 250.0000, 250.0000, 350.0000, 350.0000, 350.0000, 350.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, '{\"quantity\":1,\"product_id\":\"4\",\"_token\":\"lMIUbSwvsYN3KpK3NaJ4FpBxYg7dM6AwnF0YMNup\"}', NULL, 4, 12, NULL, '2021-02-25 19:47:28', '2021-02-25 19:49:21', NULL, ''),
(20, 1, '1006', 'simple', 'Anchor Fortified Full Cream Milk Powder (1kg)', NULL, 1000.0000, 1000.0000, 1000.0000, 630.0000, 630.0000, 630.0000, 630.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, '{\"quantity\":1,\"product_id\":\"6\",\"_token\":\"lMIUbSwvsYN3KpK3NaJ4FpBxYg7dM6AwnF0YMNup\"}', NULL, 6, 12, NULL, '2021-02-25 19:47:30', '2021-02-25 19:49:21', NULL, ''),
(21, 1, '3000', 'simple', 'Shokti Mishti Doi', NULL, 25.0000, 25.0000, 25.0000, 25.0000, 25.0000, 25.0000, 25.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, '{\"quantity\":1,\"product_id\":\"24\",\"_token\":\"4JI0xalCoPDSeIh9YWaxroEAZRYEZelPOf7ARB8Z\"}', NULL, 24, 13, NULL, '2021-02-28 03:06:11', '2021-02-28 03:08:16', NULL, ''),
(22, 1, '3001', 'simple', 'Shokti+ Sweetened Yogurt- Plain', NULL, 80.0000, 80.0000, 80.0000, 50.0000, 50.0000, 50.0000, 50.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, '{\"quantity\":1,\"product_id\":\"25\",\"_token\":\"4JI0xalCoPDSeIh9YWaxroEAZRYEZelPOf7ARB8Z\"}', NULL, 25, 13, NULL, '2021-02-28 03:06:12', '2021-02-28 03:08:16', NULL, '');

-- --------------------------------------------------------

--
-- Table structure for table `bgwycart_item_inventories`
--

CREATE TABLE `bgwycart_item_inventories` (
  `id` int(10) UNSIGNED NOT NULL,
  `qty` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `inventory_source_id` int(10) UNSIGNED DEFAULT NULL,
  `cart_item_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `bgwycart_payment`
--

CREATE TABLE `bgwycart_payment` (
  `id` int(10) UNSIGNED NOT NULL,
  `method` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `method_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cart_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `bgwycart_payment`
--

INSERT INTO `bgwycart_payment` (`id`, `method`, `method_title`, `cart_id`, `created_at`, `updated_at`) VALUES
(1, 'cashondelivery', NULL, 4, '2021-02-25 03:13:49', '2021-02-25 03:13:49'),
(2, 'cashondelivery', NULL, 10, '2021-02-25 19:46:04', '2021-02-25 19:46:04'),
(3, 'cashondelivery', NULL, 11, '2021-02-25 19:47:08', '2021-02-25 19:47:08'),
(6, 'moneytransfer', NULL, 12, '2021-02-25 19:49:19', '2021-02-25 19:49:19');

-- --------------------------------------------------------

--
-- Table structure for table `bgwycart_rules`
--

CREATE TABLE `bgwycart_rules` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `starts_from` datetime DEFAULT NULL,
  `ends_till` datetime DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `coupon_type` int(11) NOT NULL DEFAULT 1,
  `use_auto_generation` tinyint(1) NOT NULL DEFAULT 0,
  `usage_per_customer` int(11) NOT NULL DEFAULT 0,
  `uses_per_coupon` int(11) NOT NULL DEFAULT 0,
  `times_used` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `condition_type` tinyint(1) NOT NULL DEFAULT 1,
  `conditions` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `end_other_rules` tinyint(1) NOT NULL DEFAULT 0,
  `uses_attribute_conditions` tinyint(1) NOT NULL DEFAULT 0,
  `action_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discount_amount` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `discount_quantity` int(11) NOT NULL DEFAULT 1,
  `discount_step` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `apply_to_shipping` tinyint(1) NOT NULL DEFAULT 0,
  `free_shipping` tinyint(1) NOT NULL DEFAULT 0,
  `sort_order` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `bgwycart_rule_channels`
--

CREATE TABLE `bgwycart_rule_channels` (
  `cart_rule_id` int(10) UNSIGNED NOT NULL,
  `channel_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `bgwycart_rule_coupons`
--

CREATE TABLE `bgwycart_rule_coupons` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `usage_limit` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `usage_per_customer` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `times_used` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `type` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `is_primary` tinyint(1) NOT NULL DEFAULT 0,
  `expired_at` date DEFAULT NULL,
  `cart_rule_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `bgwycart_rule_coupon_usage`
--

CREATE TABLE `bgwycart_rule_coupon_usage` (
  `id` int(10) UNSIGNED NOT NULL,
  `times_used` int(11) NOT NULL DEFAULT 0,
  `cart_rule_coupon_id` int(10) UNSIGNED NOT NULL,
  `customer_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `bgwycart_rule_customers`
--

CREATE TABLE `bgwycart_rule_customers` (
  `id` int(10) UNSIGNED NOT NULL,
  `times_used` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `cart_rule_id` int(10) UNSIGNED NOT NULL,
  `customer_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `bgwycart_rule_customer_groups`
--

CREATE TABLE `bgwycart_rule_customer_groups` (
  `cart_rule_id` int(10) UNSIGNED NOT NULL,
  `customer_group_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `bgwycart_rule_translations`
--

CREATE TABLE `bgwycart_rule_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `label` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cart_rule_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `bgwycart_shipping_rates`
--

CREATE TABLE `bgwycart_shipping_rates` (
  `id` int(10) UNSIGNED NOT NULL,
  `carrier` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `carrier_title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `method` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `method_title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `method_description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` double DEFAULT 0,
  `base_price` double DEFAULT 0,
  `cart_address_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `discount_amount` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `base_discount_amount` decimal(12,4) NOT NULL DEFAULT 0.0000
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `bgwycart_shipping_rates`
--

INSERT INTO `bgwycart_shipping_rates` (`id`, `carrier`, `carrier_title`, `method`, `method_title`, `method_description`, `price`, `base_price`, `cart_address_id`, `created_at`, `updated_at`, `discount_amount`, `base_discount_amount`) VALUES
(3, 'flatrate', 'Flat Rate', 'flatrate_flatrate', 'Flat Rate', 'Flat Rate Shipping', 10, 10, 2, '2021-02-25 03:13:44', '2021-02-25 03:13:44', 0.0000, 0.0000),
(4, 'free', 'Free Shipping', 'free_free', 'Free Shipping', 'Free Shipping', 0, 0, 2, '2021-02-25 03:13:44', '2021-02-25 03:13:56', 0.0000, 0.0000),
(5, 'flatrate', 'Flat Rate', 'flatrate_flatrate', 'Flat Rate', 'Flat Rate Shipping', 20, 20, 7, '2021-02-25 19:45:54', '2021-02-25 19:46:10', 0.0000, 0.0000),
(6, 'free', 'Free Shipping', 'free_free', 'Free Shipping', 'Free Shipping', 0, 0, 7, '2021-02-25 19:45:54', '2021-02-25 19:45:54', 0.0000, 0.0000),
(7, 'flatrate', 'Flat Rate', 'flatrate_flatrate', 'Flat Rate', 'Flat Rate Shipping', 20, 20, 11, '2021-02-25 19:47:01', '2021-02-25 19:47:17', 0.0000, 0.0000),
(8, 'free', 'Free Shipping', 'free_free', 'Free Shipping', 'Free Shipping', 0, 0, 11, '2021-02-25 19:47:01', '2021-02-25 19:47:01', 0.0000, 0.0000),
(11, 'flatrate', 'Flat Rate', 'flatrate_flatrate', 'Flat Rate', 'Flat Rate Shipping', 20, 20, 15, '2021-02-25 19:49:13', '2021-02-25 19:49:21', 0.0000, 0.0000),
(12, 'free', 'Free Shipping', 'free_free', 'Free Shipping', 'Free Shipping', 0, 0, 15, '2021-02-25 19:49:13', '2021-02-25 19:49:13', 0.0000, 0.0000);

-- --------------------------------------------------------

--
-- Table structure for table `bgwycatalog_rules`
--

CREATE TABLE `bgwycatalog_rules` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `starts_from` date DEFAULT NULL,
  `ends_till` date DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `condition_type` tinyint(1) NOT NULL DEFAULT 1,
  `conditions` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `end_other_rules` tinyint(1) NOT NULL DEFAULT 0,
  `action_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discount_amount` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `sort_order` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `bgwycatalog_rule_channels`
--

CREATE TABLE `bgwycatalog_rule_channels` (
  `catalog_rule_id` int(10) UNSIGNED NOT NULL,
  `channel_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `bgwycatalog_rule_customer_groups`
--

CREATE TABLE `bgwycatalog_rule_customer_groups` (
  `catalog_rule_id` int(10) UNSIGNED NOT NULL,
  `customer_group_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `bgwycatalog_rule_products`
--

CREATE TABLE `bgwycatalog_rule_products` (
  `id` int(10) UNSIGNED NOT NULL,
  `starts_from` datetime DEFAULT NULL,
  `ends_till` datetime DEFAULT NULL,
  `end_other_rules` tinyint(1) NOT NULL DEFAULT 0,
  `action_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discount_amount` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `sort_order` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `product_id` int(10) UNSIGNED NOT NULL,
  `customer_group_id` int(10) UNSIGNED NOT NULL,
  `catalog_rule_id` int(10) UNSIGNED NOT NULL,
  `channel_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `bgwycatalog_rule_product_prices`
--

CREATE TABLE `bgwycatalog_rule_product_prices` (
  `id` int(10) UNSIGNED NOT NULL,
  `price` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `rule_date` date NOT NULL,
  `starts_from` datetime DEFAULT NULL,
  `ends_till` datetime DEFAULT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `customer_group_id` int(10) UNSIGNED NOT NULL,
  `catalog_rule_id` int(10) UNSIGNED NOT NULL,
  `channel_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `bgwycategories`
--

CREATE TABLE `bgwycategories` (
  `id` int(10) UNSIGNED NOT NULL,
  `position` int(11) NOT NULL DEFAULT 0,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `_lft` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `_rgt` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `display_mode` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'products_and_description',
  `category_icon_path` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `additional` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `bgwycategories`
--

INSERT INTO `bgwycategories` (`id`, `position`, `image`, `status`, `_lft`, `_rgt`, `parent_id`, `created_at`, `updated_at`, `display_mode`, `category_icon_path`, `additional`) VALUES
(1, 1, NULL, 1, 1, 36, NULL, '2021-02-24 16:15:51', '2021-02-24 16:15:51', 'products_and_description', NULL, NULL),
(2, 1, 'category/2/GuZe5P1VstBXhhPDUt1UUiEb8pL5rzftjvaJYtA9.jpeg', 1, 14, 15, 1, '2021-02-24 05:33:40', '2021-02-24 05:33:40', 'products_and_description', NULL, NULL),
(3, 2, 'category/3/QJ9G8h9M2pF2RbcNfroNPAacu3ef4ebrituQHzvt.jpeg', 1, 16, 17, 1, '2021-02-24 05:35:23', '2021-02-24 05:35:23', 'products_and_description', NULL, NULL),
(4, 3, 'category/4/nrS26946AppG2AZLvH1cy8KlCh8T9n6g2fYkR686.jpeg', 1, 18, 19, 1, '2021-02-24 05:36:50', '2021-02-24 05:36:50', 'products_and_description', NULL, NULL),
(5, 4, 'category/5/7X6GJ75YvTZ18HCz1HCgXmDUsPVD2MVuWl1brw7f.jpeg', 1, 20, 21, 1, '2021-02-24 05:37:48', '2021-02-24 05:37:48', 'products_and_description', NULL, NULL),
(6, 5, 'category/6/8o3VKMWGaD39dMwwyvcPcjcr5SLoTTTpY9Ff8wXD.jpeg', 1, 22, 23, 1, '2021-02-24 05:39:08', '2021-02-24 05:39:08', 'products_and_description', NULL, NULL),
(7, 6, 'category/7/UI6E5e8BMVDoY7VieUKqy7BZfhOhn3vgJngjdPeK.jpeg', 1, 24, 25, 1, '2021-02-24 05:40:12', '2021-02-24 05:40:12', 'products_and_description', NULL, NULL),
(8, 7, 'category/8/70Y2xiviYvfCju8vE5yNfdDf5hh37ivWTzqXHevu.jpeg', 1, 26, 27, 1, '2021-02-24 05:41:25', '2021-02-24 05:41:25', 'products_and_description', NULL, NULL),
(9, 8, 'category/9/LzbKsJPSoBojTBStVwzo4WnKsOO4nwpjS6O6SwfX.jpeg', 1, 28, 29, 1, '2021-02-24 05:43:35', '2021-02-24 05:43:35', 'products_and_description', NULL, NULL),
(10, 9, 'category/10/VlJM38TztUvQdehwszvCtfM0xqqGu109Ix7gDVBo.jpeg', 1, 30, 31, 1, '2021-02-24 05:44:43', '2021-02-24 05:44:43', 'products_and_description', NULL, NULL),
(11, 10, 'category/11/Zwbu36RiRy0ZB1xBayvNOztcVeL3cgfDtyNKjkvX.jpeg', 1, 32, 33, 1, '2021-02-24 05:46:00', '2021-02-24 05:46:00', 'products_and_description', NULL, NULL),
(12, 11, 'category/12/CEosawDgph9YsyPYyerI3tRptptsevQNLEWgd30G.jpeg', 1, 34, 35, 1, '2021-02-24 05:47:07', '2021-02-24 05:47:07', 'products_and_description', NULL, NULL);

--
-- Triggers `bgwycategories`
--
DELIMITER $$
CREATE TRIGGER `trig_categories_insert` AFTER INSERT ON `bgwycategories` FOR EACH ROW BEGIN
                            DECLARE urlPath VARCHAR(255);
            DECLARE localeCode VARCHAR(255);
            DECLARE done INT;
            DECLARE curs CURSOR FOR (SELECT bgwycategory_translations.locale
                    FROM bgwycategory_translations
                    WHERE category_id = NEW.id);
            DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = 1;


            IF EXISTS (
                SELECT *
                FROM bgwycategory_translations
                WHERE category_id = NEW.id
            )
            THEN

                OPEN curs;

            	SET done = 0;
                REPEAT
                	FETCH curs INTO localeCode;

                    SELECT get_url_path_of_category(NEW.id, localeCode) INTO urlPath;

                    IF NEW.parent_id IS NULL
                    THEN
                        SET urlPath = '';
                    END IF;

                    UPDATE bgwycategory_translations
                    SET url_path = urlPath
                    WHERE
                        bgwycategory_translations.category_id = NEW.id
                        AND bgwycategory_translations.locale = localeCode;

                UNTIL done END REPEAT;

                CLOSE curs;

            END IF;
            END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `trig_categories_update` AFTER UPDATE ON `bgwycategories` FOR EACH ROW BEGIN
                            DECLARE urlPath VARCHAR(255);
            DECLARE localeCode VARCHAR(255);
            DECLARE done INT;
            DECLARE curs CURSOR FOR (SELECT bgwycategory_translations.locale
                    FROM bgwycategory_translations
                    WHERE category_id = NEW.id);
            DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = 1;


            IF EXISTS (
                SELECT *
                FROM bgwycategory_translations
                WHERE category_id = NEW.id
            )
            THEN

                OPEN curs;

            	SET done = 0;
                REPEAT
                	FETCH curs INTO localeCode;

                    SELECT get_url_path_of_category(NEW.id, localeCode) INTO urlPath;

                    IF NEW.parent_id IS NULL
                    THEN
                        SET urlPath = '';
                    END IF;

                    UPDATE bgwycategory_translations
                    SET url_path = urlPath
                    WHERE
                        bgwycategory_translations.category_id = NEW.id
                        AND bgwycategory_translations.locale = localeCode;

                UNTIL done END REPEAT;

                CLOSE curs;

            END IF;
            END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `bgwycategory_filterable_attributes`
--

CREATE TABLE `bgwycategory_filterable_attributes` (
  `category_id` int(10) UNSIGNED NOT NULL,
  `attribute_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `bgwycategory_filterable_attributes`
--

INSERT INTO `bgwycategory_filterable_attributes` (`category_id`, `attribute_id`) VALUES
(2, 11),
(3, 11),
(4, 11),
(5, 11),
(6, 11),
(7, 11),
(8, 11),
(9, 11),
(10, 11),
(11, 11),
(12, 11);

-- --------------------------------------------------------

--
-- Table structure for table `bgwycategory_translations`
--

CREATE TABLE `bgwycategory_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `locale_id` int(10) UNSIGNED DEFAULT NULL,
  `url_path` varchar(2048) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'maintained by database triggers'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `bgwycategory_translations`
--

INSERT INTO `bgwycategory_translations` (`id`, `name`, `slug`, `description`, `meta_title`, `meta_description`, `meta_keywords`, `category_id`, `locale`, `locale_id`, `url_path`) VALUES
(1, 'Root', 'root', 'Root', '', '', '', 1, 'en', NULL, ''),
(2, 'Essentials', 'essentials', '<p>Essentials categories</p>', '', '', '', 2, 'en', 1, 'essentials'),
(3, 'Essentials', 'essentials', '<p>Essentials categories</p>', '', '', '', 2, 'fr', 2, 'essentials'),
(4, 'Essentials', 'essentials', '<p>Essentials categories</p>', '', '', '', 2, 'nl', 3, 'essentials'),
(5, 'Essentials', 'essentials', '<p>Essentials categories</p>', '', '', '', 2, 'tr', 4, 'essentials'),
(6, 'Frozen Foods', 'frozen-foods', '<p>Frozen Foods Categories</p>', '', '', '', 3, 'en', 1, 'frozen-foods'),
(7, 'Frozen Foods', 'frozen-foods', '<p>Frozen Foods Categories</p>', '', '', '', 3, 'fr', 2, 'frozen-foods'),
(8, 'Frozen Foods', 'frozen-foods', '<p>Frozen Foods Categories</p>', '', '', '', 3, 'nl', 3, 'frozen-foods'),
(9, 'Frozen Foods', 'frozen-foods', '<p>Frozen Foods Categories</p>', '', '', '', 3, 'tr', 4, 'frozen-foods'),
(10, 'Baby Care', 'baby-care', '<p>Baby care category</p>', '', '', '', 4, 'en', 1, 'baby-care'),
(11, 'Baby Care', 'baby-care', '<p>Baby care category</p>', '', '', '', 4, 'fr', 2, 'baby-care'),
(12, 'Baby Care', 'baby-care', '<p>Baby care category</p>', '', '', '', 4, 'nl', 3, 'baby-care'),
(13, 'Baby Care', 'baby-care', '<p>Baby care category</p>', '', '', '', 4, 'tr', 4, 'baby-care'),
(14, 'Bakery & Snacks', 'bakery-snacks', '<p>Bakery &amp; Snacks Category</p>', '', '', '', 5, 'en', 1, 'bakery-snacks'),
(15, 'Bakery & Snacks', 'bakery-snacks', '<p>Bakery &amp; Snacks Category</p>', '', '', '', 5, 'fr', 2, 'bakery-snacks'),
(16, 'Bakery & Snacks', 'bakery-snacks', '<p>Bakery &amp; Snacks Category</p>', '', '', '', 5, 'nl', 3, 'bakery-snacks'),
(17, 'Bakery & Snacks', 'bakery-snacks', '<p>Bakery &amp; Snacks Category</p>', '', '', '', 5, 'tr', 4, 'bakery-snacks'),
(18, 'Beauty & Hygiene', 'beauty-hygiene', '<p>Beauty &amp; Hygiene</p>', '', '', '', 6, 'en', 1, 'beauty-hygiene'),
(19, 'Beauty & Hygiene', 'beauty-hygiene', '<p>Beauty &amp; Hygiene</p>', '', '', '', 6, 'fr', 2, 'beauty-hygiene'),
(20, 'Beauty & Hygiene', 'beauty-hygiene', '<p>Beauty &amp; Hygiene</p>', '', '', '', 6, 'nl', 3, 'beauty-hygiene'),
(21, 'Beauty & Hygiene', 'beauty-hygiene', '<p>Beauty &amp; Hygiene</p>', '', '', '', 6, 'tr', 4, 'beauty-hygiene'),
(22, 'Beverages', 'beverages', '<p>Beverages categories</p>', '', '', '', 7, 'en', 1, 'beverages'),
(23, 'Beverages', 'beverages', '<p>Beverages categories</p>', '', '', '', 7, 'fr', 2, 'beverages'),
(24, 'Beverages', 'beverages', '<p>Beverages categories</p>', '', '', '', 7, 'nl', 3, 'beverages'),
(25, 'Beverages', 'beverages', '<p>Beverages categories</p>', '', '', '', 7, 'tr', 4, 'beverages'),
(26, 'Dairy', 'dairy', '<p>Dairy Categories</p>', '', '', '', 8, 'en', 1, 'dairy'),
(27, 'Dairy', 'dairy', '<p>Dairy Categories</p>', '', '', '', 8, 'fr', 2, 'dairy'),
(28, 'Dairy', 'dairy', '<p>Dairy Categories</p>', '', '', '', 8, 'nl', 3, 'dairy'),
(29, 'Dairy', 'dairy', '<p>Dairy Categories</p>', '', '', '', 8, 'tr', 4, 'dairy'),
(30, 'Fish', 'fish', '<p>Fish categories</p>', '', '', '', 9, 'en', 1, 'fish'),
(31, 'Fish', 'fish', '<p>Fish categories</p>', '', '', '', 9, 'fr', 2, 'fish'),
(32, 'Fish', 'fish', '<p>Fish categories</p>', '', '', '', 9, 'nl', 3, 'fish'),
(33, 'Fish', 'fish', '<p>Fish categories</p>', '', '', '', 9, 'tr', 4, 'fish'),
(34, 'Fresh Produce', 'fresh-produce', '<p>Fresh produce categories</p>', '', '', '', 10, 'en', 1, 'fresh-produce'),
(35, 'Fresh Produce', 'fresh-produce', '<p>Fresh produce categories</p>', '', '', '', 10, 'fr', 2, 'fresh-produce'),
(36, 'Fresh Produce', 'fresh-produce', '<p>Fresh produce categories</p>', '', '', '', 10, 'nl', 3, 'fresh-produce'),
(37, 'Fresh Produce', 'fresh-produce', '<p>Fresh produce categories</p>', '', '', '', 10, 'tr', 4, 'fresh-produce'),
(38, 'Grocery', 'grocery', '<p>Grocery category</p>', '', '', '', 11, 'en', 1, 'grocery'),
(39, 'Grocery', 'grocery', '<p>Grocery category</p>', '', '', '', 11, 'fr', 2, 'grocery'),
(40, 'Grocery', 'grocery', '<p>Grocery category</p>', '', '', '', 11, 'nl', 3, 'grocery'),
(41, 'Grocery', 'grocery', '<p>Grocery category</p>', '', '', '', 11, 'tr', 4, 'grocery'),
(42, 'Healthy Living', 'healthy-living', '<p>Healthy Living Category</p>', '', '', '', 12, 'en', 1, 'healthy-living'),
(43, 'Healthy Living', 'healthy-living', '<p>Healthy Living Category</p>', '', '', '', 12, 'fr', 2, 'healthy-living'),
(44, 'Healthy Living', 'healthy-living', '<p>Healthy Living Category</p>', '', '', '', 12, 'nl', 3, 'healthy-living'),
(45, 'Healthy Living', 'healthy-living', '<p>Healthy Living Category</p>', '', '', '', 12, 'tr', 4, 'healthy-living');

--
-- Triggers `bgwycategory_translations`
--
DELIMITER $$
CREATE TRIGGER `trig_category_translations_insert` BEFORE INSERT ON `bgwycategory_translations` FOR EACH ROW BEGIN
                            DECLARE parentUrlPath varchar(255);
            DECLARE urlPath varchar(255);

            IF NOT EXISTS (
                SELECT id
                FROM bgwycategories
                WHERE
                    id = NEW.category_id
                    AND parent_id IS NULL
            )
            THEN

                SELECT
                    GROUP_CONCAT(parent_translations.slug SEPARATOR '/') INTO parentUrlPath
                FROM
                    bgwycategories AS node,
                    bgwycategories AS parent
                    JOIN bgwycategory_translations AS parent_translations ON parent.id = parent_translations.category_id
                WHERE
                    node._lft >= parent._lft
                    AND node._rgt <= parent._rgt
                    AND node.id = (SELECT parent_id FROM bgwycategories WHERE id = NEW.category_id)
                    AND node.parent_id IS NOT NULL
                    AND parent.parent_id IS NOT NULL
                    AND parent_translations.locale = NEW.locale
                GROUP BY
                    node.id;

                IF parentUrlPath IS NULL
                THEN
                    SET urlPath = NEW.slug;
                ELSE
                    SET urlPath = concat(parentUrlPath, '/', NEW.slug);
                END IF;

                SET NEW.url_path = urlPath;

            END IF;
            END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `trig_category_translations_update` BEFORE UPDATE ON `bgwycategory_translations` FOR EACH ROW BEGIN
                            DECLARE parentUrlPath varchar(255);
            DECLARE urlPath varchar(255);

            IF NOT EXISTS (
                SELECT id
                FROM bgwycategories
                WHERE
                    id = NEW.category_id
                    AND parent_id IS NULL
            )
            THEN

                SELECT
                    GROUP_CONCAT(parent_translations.slug SEPARATOR '/') INTO parentUrlPath
                FROM
                    bgwycategories AS node,
                    bgwycategories AS parent
                    JOIN bgwycategory_translations AS parent_translations ON parent.id = parent_translations.category_id
                WHERE
                    node._lft >= parent._lft
                    AND node._rgt <= parent._rgt
                    AND node.id = (SELECT parent_id FROM bgwycategories WHERE id = NEW.category_id)
                    AND node.parent_id IS NOT NULL
                    AND parent.parent_id IS NOT NULL
                    AND parent_translations.locale = NEW.locale
                GROUP BY
                    node.id;

                IF parentUrlPath IS NULL
                THEN
                    SET urlPath = NEW.slug;
                ELSE
                    SET urlPath = concat(parentUrlPath, '/', NEW.slug);
                END IF;

                SET NEW.url_path = urlPath;

            END IF;
            END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `bgwychannels`
--

CREATE TABLE `bgwychannels` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `timezone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `theme` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hostname` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `favicon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `home_page_content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `footer_content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `default_locale_id` int(10) UNSIGNED NOT NULL,
  `base_currency_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `root_category_id` int(10) UNSIGNED DEFAULT NULL,
  `home_seo` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `bgwychannels`
--

INSERT INTO `bgwychannels` (`id`, `code`, `name`, `description`, `timezone`, `theme`, `hostname`, `logo`, `favicon`, `home_page_content`, `footer_content`, `default_locale_id`, `base_currency_id`, `created_at`, `updated_at`, `root_category_id`, `home_seo`) VALUES
(1, 'default', 'Default', '', NULL, 'velocity', '', NULL, NULL, '<p>@include(\"shop::home.slider\") @include(\"shop::home.featured-products\") @include(\"shop::home.new-products\")</p>\r\n<div class=\"banner-container\">\r\n<div class=\"left-banner\"><img src=\"https://s3-ap-southeast-1.amazonaws.com/cdn.uvdesk.com/website/1/201902045c581f9494b8a1.png\" /></div>\r\n<div class=\"right-banner\"><img src=\"https://s3-ap-southeast-1.amazonaws.com/cdn.uvdesk.com/website/1/201902045c581fb045cf02.png\" /> <img src=\"https://s3-ap-southeast-1.amazonaws.com/cdn.uvdesk.com/website/1/201902045c581fc352d803.png\" /></div>\r\n</div>', '<div class=\"list-container\"><span class=\"list-heading\">Quick Links</span>\r\n<ul class=\"list-group\">\r\n<li><a href=\"@php echo route(\'shop.cms.page\', \'about-us\') @endphp\">About Us</a></li>\r\n<li><a href=\"@php echo route(\'shop.cms.page\', \'return-policy\') @endphp\">Return Policy</a></li>\r\n<li><a href=\"@php echo route(\'shop.cms.page\', \'refund-policy\') @endphp\">Refund Policy</a></li>\r\n<li><a href=\"@php echo route(\'shop.cms.page\', \'terms-conditions\') @endphp\">Terms and conditions</a></li>\r\n<li><a href=\"@php echo route(\'shop.cms.page\', \'terms-of-use\') @endphp\">Terms of Use</a></li>\r\n<li><a href=\"@php echo route(\'shop.cms.page\', \'contact-us\') @endphp\">Contact Us</a></li>\r\n</ul>\r\n</div>\r\n<div class=\"list-container\"><span class=\"list-heading\">Connect With Us</span>\r\n<ul class=\"list-group\">\r\n<li><a href=\"#\"><span class=\"icon icon-facebook\"></span>Facebook </a></li>\r\n<li><a href=\"#\"><span class=\"icon icon-twitter\"></span> Twitter </a></li>\r\n<li><a href=\"#\"><span class=\"icon icon-instagram\"></span> Instagram </a></li>\r\n<li><a href=\"#\"> <span class=\"icon icon-google-plus\"></span>Google+ </a></li>\r\n<li><a href=\"#\"> <span class=\"icon icon-linkedin\"></span>LinkedIn </a></li>\r\n</ul>\r\n</div>', 1, 3, NULL, '2021-02-25 03:30:24', 1, '{\"meta_title\":\"Velocity Ecommerce\",\"meta_description\":\"Demo store meta description\",\"meta_keywords\":\"Demo store meta keyword\"}');

-- --------------------------------------------------------

--
-- Table structure for table `bgwychannel_currencies`
--

CREATE TABLE `bgwychannel_currencies` (
  `channel_id` int(10) UNSIGNED NOT NULL,
  `currency_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `bgwychannel_currencies`
--

INSERT INTO `bgwychannel_currencies` (`channel_id`, `currency_id`) VALUES
(1, 1),
(1, 3);

-- --------------------------------------------------------

--
-- Table structure for table `bgwychannel_inventory_sources`
--

CREATE TABLE `bgwychannel_inventory_sources` (
  `channel_id` int(10) UNSIGNED NOT NULL,
  `inventory_source_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `bgwychannel_inventory_sources`
--

INSERT INTO `bgwychannel_inventory_sources` (`channel_id`, `inventory_source_id`) VALUES
(1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `bgwychannel_locales`
--

CREATE TABLE `bgwychannel_locales` (
  `channel_id` int(10) UNSIGNED NOT NULL,
  `locale_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `bgwychannel_locales`
--

INSERT INTO `bgwychannel_locales` (`channel_id`, `locale_id`) VALUES
(1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `bgwycms_pages`
--

CREATE TABLE `bgwycms_pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `layout` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `bgwycms_pages`
--

INSERT INTO `bgwycms_pages` (`id`, `layout`, `created_at`, `updated_at`) VALUES
(1, NULL, '2021-02-24 16:15:51', '2021-02-24 16:15:51'),
(2, NULL, '2021-02-24 16:15:51', '2021-02-24 16:15:51'),
(3, NULL, '2021-02-24 16:15:51', '2021-02-24 16:15:51'),
(4, NULL, '2021-02-24 16:15:51', '2021-02-24 16:15:51'),
(5, NULL, '2021-02-24 16:15:51', '2021-02-24 16:15:51'),
(6, NULL, '2021-02-24 16:15:51', '2021-02-24 16:15:51'),
(7, NULL, '2021-02-24 16:15:51', '2021-02-24 16:15:51'),
(8, NULL, '2021-02-24 16:15:51', '2021-02-24 16:15:51'),
(9, NULL, '2021-02-24 16:15:51', '2021-02-24 16:15:51'),
(10, NULL, '2021-02-24 16:15:51', '2021-02-24 16:15:51'),
(11, NULL, '2021-02-24 16:15:51', '2021-02-24 16:15:51');

-- --------------------------------------------------------

--
-- Table structure for table `bgwycms_page_channels`
--

CREATE TABLE `bgwycms_page_channels` (
  `cms_page_id` int(10) UNSIGNED NOT NULL,
  `channel_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `bgwycms_page_translations`
--

CREATE TABLE `bgwycms_page_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `page_title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url_key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `html_content` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cms_page_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `bgwycms_page_translations`
--

INSERT INTO `bgwycms_page_translations` (`id`, `page_title`, `url_key`, `html_content`, `meta_title`, `meta_description`, `meta_keywords`, `locale`, `cms_page_id`) VALUES
(1, 'About Us', 'about-us', '<div class=\"static-container\"><div class=\"mb-5\">About us page content</div></div>', 'about us', '', 'aboutus', 'en', 1),
(2, 'Return Policy', 'return-policy', '<div class=\"static-container\"><div class=\"mb-5\">Return policy page content</div></div>', 'return policy', '', 'return, policy', 'en', 2),
(3, 'Refund Policy', 'refund-policy', '<div class=\"static-container\"><div class=\"mb-5\">Refund policy page content</div></div>', 'Refund policy', '', 'refund, policy', 'en', 3),
(4, 'Terms & Conditions', 'terms-conditions', '<div class=\"static-container\"><div class=\"mb-5\">Terms & conditions page content</div></div>', 'Terms & Conditions', '', 'term, conditions', 'en', 4),
(5, 'Terms of use', 'terms-of-use', '<div class=\"static-container\"><div class=\"mb-5\">Terms of use page content</div></div>', 'Terms of use', '', 'term, use', 'en', 5),
(6, 'Contact Us', 'contact-us', '<div class=\"static-container\"><div class=\"mb-5\">Contact us page content</div></div>', 'Contact Us', '', 'contact, us', 'en', 6),
(7, 'Customer Service', 'cutomer-service', '<div class=\"static-container\"><div class=\"mb-5\">Customer service  page content</div></div>', 'Customer Service', '', 'customer, service', 'en', 7),
(8, 'What\'s New', 'whats-new', '<div class=\"static-container\"><div class=\"mb-5\">What\'s New page content</div></div>', 'What\'s New', '', 'new', 'en', 8),
(9, 'Payment Policy', 'payment-policy', '<div class=\"static-container\"><div class=\"mb-5\">Payment Policy page content</div></div>', 'Payment Policy', '', 'payment, policy', 'en', 9),
(10, 'Shipping Policy', 'shipping-policy', '<div class=\"static-container\"><div class=\"mb-5\">Shipping Policy  page content</div></div>', 'Shipping Policy', '', 'shipping, policy', 'en', 10),
(11, 'Privacy Policy', 'privacy-policy', '<div class=\"static-container\"><div class=\"mb-5\">Privacy Policy  page content</div></div>', 'Privacy Policy', '', 'privacy, policy', 'en', 11);

-- --------------------------------------------------------

--
-- Table structure for table `bgwycore_config`
--

CREATE TABLE `bgwycore_config` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `channel_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `locale_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `bgwycore_config`
--

INSERT INTO `bgwycore_config` (`id`, `code`, `value`, `channel_code`, `locale_code`, `created_at`, `updated_at`) VALUES
(1, 'catalog.products.guest-checkout.allow-guest-checkout', '1', NULL, NULL, '2021-02-24 16:15:51', '2021-02-24 16:15:51'),
(2, 'emails.general.notifications.emails.general.notifications.verification', '1', NULL, NULL, '2021-02-24 16:15:51', '2021-02-24 16:15:51'),
(3, 'emails.general.notifications.emails.general.notifications.registration', '1', NULL, NULL, '2021-02-24 16:15:51', '2021-02-24 16:15:51'),
(4, 'emails.general.notifications.emails.general.notifications.customer', '1', NULL, NULL, '2021-02-24 16:15:51', '2021-02-24 16:15:51'),
(5, 'emails.general.notifications.emails.general.notifications.new-order', '1', NULL, NULL, '2021-02-24 16:15:51', '2021-02-24 16:15:51'),
(6, 'emails.general.notifications.emails.general.notifications.new-admin', '1', NULL, NULL, '2021-02-24 16:15:51', '2021-02-24 16:15:51'),
(7, 'emails.general.notifications.emails.general.notifications.new-invoice', '1', NULL, NULL, '2021-02-24 16:15:51', '2021-02-24 16:15:51'),
(8, 'emails.general.notifications.emails.general.notifications.new-refund', '1', NULL, NULL, '2021-02-24 16:15:51', '2021-02-24 16:15:51'),
(9, 'emails.general.notifications.emails.general.notifications.new-shipment', '1', NULL, NULL, '2021-02-24 16:15:51', '2021-02-24 16:15:51'),
(10, 'emails.general.notifications.emails.general.notifications.new-inventory-source', '1', NULL, NULL, '2021-02-24 16:15:51', '2021-02-24 16:15:51'),
(11, 'emails.general.notifications.emails.general.notifications.cancel-order', '1', NULL, NULL, '2021-02-24 16:15:51', '2021-02-24 16:15:51'),
(12, 'customer.settings.social_login.enable_facebook', '1', 'default', NULL, '2021-02-24 16:15:51', '2021-02-24 16:15:51'),
(13, 'customer.settings.social_login.enable_twitter', '0', 'default', NULL, '2021-02-24 16:15:51', '2021-02-28 00:48:37'),
(14, 'customer.settings.social_login.enable_google', '1', 'default', NULL, '2021-02-24 16:15:51', '2021-02-24 16:15:51'),
(15, 'customer.settings.social_login.enable_linkedin', '0', 'default', NULL, '2021-02-24 16:15:51', '2021-02-28 00:48:37'),
(16, 'customer.settings.social_login.enable_github', '0', 'default', NULL, '2021-02-24 16:15:51', '2021-02-28 00:48:37'),
(17, 'general.content.shop.compare_option', '1', 'default', 'en', '2021-02-24 16:15:51', '2021-02-24 16:15:51'),
(18, 'general.content.shop.compare_option', '1', 'default', 'fr', '2021-02-24 16:15:51', '2021-02-24 16:15:51'),
(19, 'general.content.shop.compare_option', '1', 'default', 'ar', '2021-02-24 16:15:51', '2021-02-24 16:15:51'),
(20, 'general.content.shop.compare_option', '1', 'default', 'de', '2021-02-24 16:15:51', '2021-02-24 16:15:51'),
(21, 'general.content.shop.compare_option', '1', 'default', 'es', '2021-02-24 16:15:51', '2021-02-24 16:15:51'),
(22, 'general.content.shop.compare_option', '1', 'default', 'fa', '2021-02-24 16:15:51', '2021-02-24 16:15:51'),
(23, 'general.content.shop.compare_option', '1', 'default', 'it', '2021-02-24 16:15:51', '2021-02-24 16:15:51'),
(24, 'general.content.shop.compare_option', '1', 'default', 'ja', '2021-02-24 16:15:51', '2021-02-24 16:15:51'),
(25, 'general.content.shop.compare_option', '1', 'default', 'nl', '2021-02-24 16:15:51', '2021-02-24 16:15:51'),
(26, 'general.content.shop.compare_option', '1', 'default', 'pl', '2021-02-24 16:15:51', '2021-02-24 16:15:51'),
(27, 'general.content.shop.compare_option', '1', 'default', 'pt_BR', '2021-02-24 16:15:51', '2021-02-24 16:15:51'),
(28, 'general.content.shop.compare_option', '1', 'default', 'tr', '2021-02-24 16:15:51', '2021-02-24 16:15:51'),
(29, 'general.general.locale_options.weight_unit', 'kgs', 'default', NULL, '2021-02-24 05:05:20', '2021-02-24 05:05:20'),
(30, 'general.general.email_settings.sender_name', 'saddam.itsd@goldenharvestbd.com', 'default', NULL, '2021-02-24 05:05:20', '2021-02-24 05:05:20'),
(31, 'general.general.email_settings.shop_email_from', 'saddam.itsd@goldenharvestbd.com', 'default', NULL, '2021-02-24 05:05:20', '2021-02-24 05:05:20'),
(32, 'general.general.email_settings.admin_name', 'Admin', 'default', NULL, '2021-02-24 05:05:20', '2021-02-24 05:05:20'),
(33, 'general.general.email_settings.admin_email', 'admin@velocity.shuvobebaho.com', 'default', NULL, '2021-02-24 05:05:20', '2021-02-24 05:05:20'),
(34, 'customer.settings.address.street_lines', '', 'default', NULL, '2021-02-28 00:48:37', '2021-02-28 00:48:37'),
(35, 'customer.settings.newsletter.subscription', '1', NULL, NULL, '2021-02-28 00:48:37', '2021-02-28 00:48:37'),
(36, 'customer.settings.email.verification', '0', NULL, NULL, '2021-02-28 00:48:37', '2021-02-28 00:48:37');

-- --------------------------------------------------------

--
-- Table structure for table `bgwycountries`
--

CREATE TABLE `bgwycountries` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `bgwycountries`
--

INSERT INTO `bgwycountries` (`id`, `code`, `name`) VALUES
(1, 'AF', 'Afghanistan'),
(2, 'AX', 'Åland Islands'),
(3, 'AL', 'Albania'),
(4, 'DZ', 'Algeria'),
(5, 'AS', 'American Samoa'),
(6, 'AD', 'Andorra'),
(7, 'AO', 'Angola'),
(8, 'AI', 'Anguilla'),
(9, 'AQ', 'Antarctica'),
(10, 'AG', 'Antigua & Barbuda'),
(11, 'AR', 'Argentina'),
(12, 'AM', 'Armenia'),
(13, 'AW', 'Aruba'),
(14, 'AC', 'Ascension Island'),
(15, 'AU', 'Australia'),
(16, 'AT', 'Austria'),
(17, 'AZ', 'Azerbaijan'),
(18, 'BS', 'Bahamas'),
(19, 'BH', 'Bahrain'),
(20, 'BD', 'Bangladesh'),
(21, 'BB', 'Barbados'),
(22, 'BY', 'Belarus'),
(23, 'BE', 'Belgium'),
(24, 'BZ', 'Belize'),
(25, 'BJ', 'Benin'),
(26, 'BM', 'Bermuda'),
(27, 'BT', 'Bhutan'),
(28, 'BO', 'Bolivia'),
(29, 'BA', 'Bosnia & Herzegovina'),
(30, 'BW', 'Botswana'),
(31, 'BR', 'Brazil'),
(32, 'IO', 'British Indian Ocean Territory'),
(33, 'VG', 'British Virgin Islands'),
(34, 'BN', 'Brunei'),
(35, 'BG', 'Bulgaria'),
(36, 'BF', 'Burkina Faso'),
(37, 'BI', 'Burundi'),
(38, 'KH', 'Cambodia'),
(39, 'CM', 'Cameroon'),
(40, 'CA', 'Canada'),
(41, 'IC', 'Canary Islands'),
(42, 'CV', 'Cape Verde'),
(43, 'BQ', 'Caribbean Netherlands'),
(44, 'KY', 'Cayman Islands'),
(45, 'CF', 'Central African Republic'),
(46, 'EA', 'Ceuta & Melilla'),
(47, 'TD', 'Chad'),
(48, 'CL', 'Chile'),
(49, 'CN', 'China'),
(50, 'CX', 'Christmas Island'),
(51, 'CC', 'Cocos (Keeling) Islands'),
(52, 'CO', 'Colombia'),
(53, 'KM', 'Comoros'),
(54, 'CG', 'Congo - Brazzaville'),
(55, 'CD', 'Congo - Kinshasa'),
(56, 'CK', 'Cook Islands'),
(57, 'CR', 'Costa Rica'),
(58, 'CI', 'Côte d’Ivoire'),
(59, 'HR', 'Croatia'),
(60, 'CU', 'Cuba'),
(61, 'CW', 'Curaçao'),
(62, 'CY', 'Cyprus'),
(63, 'CZ', 'Czechia'),
(64, 'DK', 'Denmark'),
(65, 'DG', 'Diego Garcia'),
(66, 'DJ', 'Djibouti'),
(67, 'DM', 'Dominica'),
(68, 'DO', 'Dominican Republic'),
(69, 'EC', 'Ecuador'),
(70, 'EG', 'Egypt'),
(71, 'SV', 'El Salvador'),
(72, 'GQ', 'Equatorial Guinea'),
(73, 'ER', 'Eritrea'),
(74, 'EE', 'Estonia'),
(75, 'ET', 'Ethiopia'),
(76, 'EZ', 'Eurozone'),
(77, 'FK', 'Falkland Islands'),
(78, 'FO', 'Faroe Islands'),
(79, 'FJ', 'Fiji'),
(80, 'FI', 'Finland'),
(81, 'FR', 'France'),
(82, 'GF', 'French Guiana'),
(83, 'PF', 'French Polynesia'),
(84, 'TF', 'French Southern Territories'),
(85, 'GA', 'Gabon'),
(86, 'GM', 'Gambia'),
(87, 'GE', 'Georgia'),
(88, 'DE', 'Germany'),
(89, 'GH', 'Ghana'),
(90, 'GI', 'Gibraltar'),
(91, 'GR', 'Greece'),
(92, 'GL', 'Greenland'),
(93, 'GD', 'Grenada'),
(94, 'GP', 'Guadeloupe'),
(95, 'GU', 'Guam'),
(96, 'GT', 'Guatemala'),
(97, 'GG', 'Guernsey'),
(98, 'GN', 'Guinea'),
(99, 'GW', 'Guinea-Bissau'),
(100, 'GY', 'Guyana'),
(101, 'HT', 'Haiti'),
(102, 'HN', 'Honduras'),
(103, 'HK', 'Hong Kong SAR China'),
(104, 'HU', 'Hungary'),
(105, 'IS', 'Iceland'),
(106, 'IN', 'India'),
(107, 'ID', 'Indonesia'),
(108, 'IR', 'Iran'),
(109, 'IQ', 'Iraq'),
(110, 'IE', 'Ireland'),
(111, 'IM', 'Isle of Man'),
(112, 'IL', 'Israel'),
(113, 'IT', 'Italy'),
(114, 'JM', 'Jamaica'),
(115, 'JP', 'Japan'),
(116, 'JE', 'Jersey'),
(117, 'JO', 'Jordan'),
(118, 'KZ', 'Kazakhstan'),
(119, 'KE', 'Kenya'),
(120, 'KI', 'Kiribati'),
(121, 'XK', 'Kosovo'),
(122, 'KW', 'Kuwait'),
(123, 'KG', 'Kyrgyzstan'),
(124, 'LA', 'Laos'),
(125, 'LV', 'Latvia'),
(126, 'LB', 'Lebanon'),
(127, 'LS', 'Lesotho'),
(128, 'LR', 'Liberia'),
(129, 'LY', 'Libya'),
(130, 'LI', 'Liechtenstein'),
(131, 'LT', 'Lithuania'),
(132, 'LU', 'Luxembourg'),
(133, 'MO', 'Macau SAR China'),
(134, 'MK', 'Macedonia'),
(135, 'MG', 'Madagascar'),
(136, 'MW', 'Malawi'),
(137, 'MY', 'Malaysia'),
(138, 'MV', 'Maldives'),
(139, 'ML', 'Mali'),
(140, 'MT', 'Malta'),
(141, 'MH', 'Marshall Islands'),
(142, 'MQ', 'Martinique'),
(143, 'MR', 'Mauritania'),
(144, 'MU', 'Mauritius'),
(145, 'YT', 'Mayotte'),
(146, 'MX', 'Mexico'),
(147, 'FM', 'Micronesia'),
(148, 'MD', 'Moldova'),
(149, 'MC', 'Monaco'),
(150, 'MN', 'Mongolia'),
(151, 'ME', 'Montenegro'),
(152, 'MS', 'Montserrat'),
(153, 'MA', 'Morocco'),
(154, 'MZ', 'Mozambique'),
(155, 'MM', 'Myanmar (Burma)'),
(156, 'NA', 'Namibia'),
(157, 'NR', 'Nauru'),
(158, 'NP', 'Nepal'),
(159, 'NL', 'Netherlands'),
(160, 'NC', 'New Caledonia'),
(161, 'NZ', 'New Zealand'),
(162, 'NI', 'Nicaragua'),
(163, 'NE', 'Niger'),
(164, 'NG', 'Nigeria'),
(165, 'NU', 'Niue'),
(166, 'NF', 'Norfolk Island'),
(167, 'KP', 'North Korea'),
(168, 'MP', 'Northern Mariana Islands'),
(169, 'NO', 'Norway'),
(170, 'OM', 'Oman'),
(171, 'PK', 'Pakistan'),
(172, 'PW', 'Palau'),
(173, 'PS', 'Palestinian Territories'),
(174, 'PA', 'Panama'),
(175, 'PG', 'Papua New Guinea'),
(176, 'PY', 'Paraguay'),
(177, 'PE', 'Peru'),
(178, 'PH', 'Philippines'),
(179, 'PN', 'Pitcairn Islands'),
(180, 'PL', 'Poland'),
(181, 'PT', 'Portugal'),
(182, 'PR', 'Puerto Rico'),
(183, 'QA', 'Qatar'),
(184, 'RE', 'Réunion'),
(185, 'RO', 'Romania'),
(186, 'RU', 'Russia'),
(187, 'RW', 'Rwanda'),
(188, 'WS', 'Samoa'),
(189, 'SM', 'San Marino'),
(190, 'ST', 'São Tomé & Príncipe'),
(191, 'SA', 'Saudi Arabia'),
(192, 'SN', 'Senegal'),
(193, 'RS', 'Serbia'),
(194, 'SC', 'Seychelles'),
(195, 'SL', 'Sierra Leone'),
(196, 'SG', 'Singapore'),
(197, 'SX', 'Sint Maarten'),
(198, 'SK', 'Slovakia'),
(199, 'SI', 'Slovenia'),
(200, 'SB', 'Solomon Islands'),
(201, 'SO', 'Somalia'),
(202, 'ZA', 'South Africa'),
(203, 'GS', 'South Georgia & South Sandwich Islands'),
(204, 'KR', 'South Korea'),
(205, 'SS', 'South Sudan'),
(206, 'ES', 'Spain'),
(207, 'LK', 'Sri Lanka'),
(208, 'BL', 'St. Barthélemy'),
(209, 'SH', 'St. Helena'),
(210, 'KN', 'St. Kitts & Nevis'),
(211, 'LC', 'St. Lucia'),
(212, 'MF', 'St. Martin'),
(213, 'PM', 'St. Pierre & Miquelon'),
(214, 'VC', 'St. Vincent & Grenadines'),
(215, 'SD', 'Sudan'),
(216, 'SR', 'Suriname'),
(217, 'SJ', 'Svalbard & Jan Mayen'),
(218, 'SZ', 'Swaziland'),
(219, 'SE', 'Sweden'),
(220, 'CH', 'Switzerland'),
(221, 'SY', 'Syria'),
(222, 'TW', 'Taiwan'),
(223, 'TJ', 'Tajikistan'),
(224, 'TZ', 'Tanzania'),
(225, 'TH', 'Thailand'),
(226, 'TL', 'Timor-Leste'),
(227, 'TG', 'Togo'),
(228, 'TK', 'Tokelau'),
(229, 'TO', 'Tonga'),
(230, 'TT', 'Trinidad & Tobago'),
(231, 'TA', 'Tristan da Cunha'),
(232, 'TN', 'Tunisia'),
(233, 'TR', 'Turkey'),
(234, 'TM', 'Turkmenistan'),
(235, 'TC', 'Turks & Caicos Islands'),
(236, 'TV', 'Tuvalu'),
(237, 'UM', 'U.S. Outlying Islands'),
(238, 'VI', 'U.S. Virgin Islands'),
(239, 'UG', 'Uganda'),
(240, 'UA', 'Ukraine'),
(241, 'AE', 'United Arab Emirates'),
(242, 'GB', 'United Kingdom'),
(243, 'UN', 'United Nations'),
(244, 'US', 'United States'),
(245, 'UY', 'Uruguay'),
(246, 'UZ', 'Uzbekistan'),
(247, 'VU', 'Vanuatu'),
(248, 'VA', 'Vatican City'),
(249, 'VE', 'Venezuela'),
(250, 'VN', 'Vietnam'),
(251, 'WF', 'Wallis & Futuna'),
(252, 'EH', 'Western Sahara'),
(253, 'YE', 'Yemen'),
(254, 'ZM', 'Zambia'),
(255, 'ZW', 'Zimbabwe');

-- --------------------------------------------------------

--
-- Table structure for table `bgwycountry_states`
--

CREATE TABLE `bgwycountry_states` (
  `id` int(10) UNSIGNED NOT NULL,
  `country_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `default_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `bgwycountry_states`
--

INSERT INTO `bgwycountry_states` (`id`, `country_code`, `code`, `default_name`, `country_id`) VALUES
(1, 'US', 'AL', 'Alabama', 244),
(2, 'US', 'AK', 'Alaska', 244),
(3, 'US', 'AS', 'American Samoa', 244),
(4, 'US', 'AZ', 'Arizona', 244),
(5, 'US', 'AR', 'Arkansas', 244),
(6, 'US', 'AE', 'Armed Forces Africa', 244),
(7, 'US', 'AA', 'Armed Forces Americas', 244),
(8, 'US', 'AE', 'Armed Forces Canada', 244),
(9, 'US', 'AE', 'Armed Forces Europe', 244),
(10, 'US', 'AE', 'Armed Forces Middle East', 244),
(11, 'US', 'AP', 'Armed Forces Pacific', 244),
(12, 'US', 'CA', 'California', 244),
(13, 'US', 'CO', 'Colorado', 244),
(14, 'US', 'CT', 'Connecticut', 244),
(15, 'US', 'DE', 'Delaware', 244),
(16, 'US', 'DC', 'District of Columbia', 244),
(17, 'US', 'FM', 'Federated States Of Micronesia', 244),
(18, 'US', 'FL', 'Florida', 244),
(19, 'US', 'GA', 'Georgia', 244),
(20, 'US', 'GU', 'Guam', 244),
(21, 'US', 'HI', 'Hawaii', 244),
(22, 'US', 'ID', 'Idaho', 244),
(23, 'US', 'IL', 'Illinois', 244),
(24, 'US', 'IN', 'Indiana', 244),
(25, 'US', 'IA', 'Iowa', 244),
(26, 'US', 'KS', 'Kansas', 244),
(27, 'US', 'KY', 'Kentucky', 244),
(28, 'US', 'LA', 'Louisiana', 244),
(29, 'US', 'ME', 'Maine', 244),
(30, 'US', 'MH', 'Marshall Islands', 244),
(31, 'US', 'MD', 'Maryland', 244),
(32, 'US', 'MA', 'Massachusetts', 244),
(33, 'US', 'MI', 'Michigan', 244),
(34, 'US', 'MN', 'Minnesota', 244),
(35, 'US', 'MS', 'Mississippi', 244),
(36, 'US', 'MO', 'Missouri', 244),
(37, 'US', 'MT', 'Montana', 244),
(38, 'US', 'NE', 'Nebraska', 244),
(39, 'US', 'NV', 'Nevada', 244),
(40, 'US', 'NH', 'New Hampshire', 244),
(41, 'US', 'NJ', 'New Jersey', 244),
(42, 'US', 'NM', 'New Mexico', 244),
(43, 'US', 'NY', 'New York', 244),
(44, 'US', 'NC', 'North Carolina', 244),
(45, 'US', 'ND', 'North Dakota', 244),
(46, 'US', 'MP', 'Northern Mariana Islands', 244),
(47, 'US', 'OH', 'Ohio', 244),
(48, 'US', 'OK', 'Oklahoma', 244),
(49, 'US', 'OR', 'Oregon', 244),
(50, 'US', 'PW', 'Palau', 244),
(51, 'US', 'PA', 'Pennsylvania', 244),
(52, 'US', 'PR', 'Puerto Rico', 244),
(53, 'US', 'RI', 'Rhode Island', 244),
(54, 'US', 'SC', 'South Carolina', 244),
(55, 'US', 'SD', 'South Dakota', 244),
(56, 'US', 'TN', 'Tennessee', 244),
(57, 'US', 'TX', 'Texas', 244),
(58, 'US', 'UT', 'Utah', 244),
(59, 'US', 'VT', 'Vermont', 244),
(60, 'US', 'VI', 'Virgin Islands', 244),
(61, 'US', 'VA', 'Virginia', 244),
(62, 'US', 'WA', 'Washington', 244),
(63, 'US', 'WV', 'West Virginia', 244),
(64, 'US', 'WI', 'Wisconsin', 244),
(65, 'US', 'WY', 'Wyoming', 244),
(66, 'CA', 'AB', 'Alberta', 40),
(67, 'CA', 'BC', 'British Columbia', 40),
(68, 'CA', 'MB', 'Manitoba', 40),
(69, 'CA', 'NL', 'Newfoundland and Labrador', 40),
(70, 'CA', 'NB', 'New Brunswick', 40),
(71, 'CA', 'NS', 'Nova Scotia', 40),
(72, 'CA', 'NT', 'Northwest Territories', 40),
(73, 'CA', 'NU', 'Nunavut', 40),
(74, 'CA', 'ON', 'Ontario', 40),
(75, 'CA', 'PE', 'Prince Edward Island', 40),
(76, 'CA', 'QC', 'Quebec', 40),
(77, 'CA', 'SK', 'Saskatchewan', 40),
(78, 'CA', 'YT', 'Yukon Territory', 40),
(79, 'DE', 'NDS', 'Niedersachsen', 88),
(80, 'DE', 'BAW', 'Baden-Württemberg', 88),
(81, 'DE', 'BAY', 'Bayern', 88),
(82, 'DE', 'BER', 'Berlin', 88),
(83, 'DE', 'BRG', 'Brandenburg', 88),
(84, 'DE', 'BRE', 'Bremen', 88),
(85, 'DE', 'HAM', 'Hamburg', 88),
(86, 'DE', 'HES', 'Hessen', 88),
(87, 'DE', 'MEC', 'Mecklenburg-Vorpommern', 88),
(88, 'DE', 'NRW', 'Nordrhein-Westfalen', 88),
(89, 'DE', 'RHE', 'Rheinland-Pfalz', 88),
(90, 'DE', 'SAR', 'Saarland', 88),
(91, 'DE', 'SAS', 'Sachsen', 88),
(92, 'DE', 'SAC', 'Sachsen-Anhalt', 88),
(93, 'DE', 'SCN', 'Schleswig-Holstein', 88),
(94, 'DE', 'THE', 'Thüringen', 88),
(95, 'AT', 'WI', 'Wien', 16),
(96, 'AT', 'NO', 'Niederösterreich', 16),
(97, 'AT', 'OO', 'Oberösterreich', 16),
(98, 'AT', 'SB', 'Salzburg', 16),
(99, 'AT', 'KN', 'Kärnten', 16),
(100, 'AT', 'ST', 'Steiermark', 16),
(101, 'AT', 'TI', 'Tirol', 16),
(102, 'AT', 'BL', 'Burgenland', 16),
(103, 'AT', 'VB', 'Vorarlberg', 16),
(104, 'CH', 'AG', 'Aargau', 220),
(105, 'CH', 'AI', 'Appenzell Innerrhoden', 220),
(106, 'CH', 'AR', 'Appenzell Ausserrhoden', 220),
(107, 'CH', 'BE', 'Bern', 220),
(108, 'CH', 'BL', 'Basel-Landschaft', 220),
(109, 'CH', 'BS', 'Basel-Stadt', 220),
(110, 'CH', 'FR', 'Freiburg', 220),
(111, 'CH', 'GE', 'Genf', 220),
(112, 'CH', 'GL', 'Glarus', 220),
(113, 'CH', 'GR', 'Graubünden', 220),
(114, 'CH', 'JU', 'Jura', 220),
(115, 'CH', 'LU', 'Luzern', 220),
(116, 'CH', 'NE', 'Neuenburg', 220),
(117, 'CH', 'NW', 'Nidwalden', 220),
(118, 'CH', 'OW', 'Obwalden', 220),
(119, 'CH', 'SG', 'St. Gallen', 220),
(120, 'CH', 'SH', 'Schaffhausen', 220),
(121, 'CH', 'SO', 'Solothurn', 220),
(122, 'CH', 'SZ', 'Schwyz', 220),
(123, 'CH', 'TG', 'Thurgau', 220),
(124, 'CH', 'TI', 'Tessin', 220),
(125, 'CH', 'UR', 'Uri', 220),
(126, 'CH', 'VD', 'Waadt', 220),
(127, 'CH', 'VS', 'Wallis', 220),
(128, 'CH', 'ZG', 'Zug', 220),
(129, 'CH', 'ZH', 'Zürich', 220),
(130, 'ES', 'A Coruсa', 'A Coruña', 206),
(131, 'ES', 'Alava', 'Alava', 206),
(132, 'ES', 'Albacete', 'Albacete', 206),
(133, 'ES', 'Alicante', 'Alicante', 206),
(134, 'ES', 'Almeria', 'Almeria', 206),
(135, 'ES', 'Asturias', 'Asturias', 206),
(136, 'ES', 'Avila', 'Avila', 206),
(137, 'ES', 'Badajoz', 'Badajoz', 206),
(138, 'ES', 'Baleares', 'Baleares', 206),
(139, 'ES', 'Barcelona', 'Barcelona', 206),
(140, 'ES', 'Burgos', 'Burgos', 206),
(141, 'ES', 'Caceres', 'Caceres', 206),
(142, 'ES', 'Cadiz', 'Cadiz', 206),
(143, 'ES', 'Cantabria', 'Cantabria', 206),
(144, 'ES', 'Castellon', 'Castellon', 206),
(145, 'ES', 'Ceuta', 'Ceuta', 206),
(146, 'ES', 'Ciudad Real', 'Ciudad Real', 206),
(147, 'ES', 'Cordoba', 'Cordoba', 206),
(148, 'ES', 'Cuenca', 'Cuenca', 206),
(149, 'ES', 'Girona', 'Girona', 206),
(150, 'ES', 'Granada', 'Granada', 206),
(151, 'ES', 'Guadalajara', 'Guadalajara', 206),
(152, 'ES', 'Guipuzcoa', 'Guipuzcoa', 206),
(153, 'ES', 'Huelva', 'Huelva', 206),
(154, 'ES', 'Huesca', 'Huesca', 206),
(155, 'ES', 'Jaen', 'Jaen', 206),
(156, 'ES', 'La Rioja', 'La Rioja', 206),
(157, 'ES', 'Las Palmas', 'Las Palmas', 206),
(158, 'ES', 'Leon', 'Leon', 206),
(159, 'ES', 'Lleida', 'Lleida', 206),
(160, 'ES', 'Lugo', 'Lugo', 206),
(161, 'ES', 'Madrid', 'Madrid', 206),
(162, 'ES', 'Malaga', 'Malaga', 206),
(163, 'ES', 'Melilla', 'Melilla', 206),
(164, 'ES', 'Murcia', 'Murcia', 206),
(165, 'ES', 'Navarra', 'Navarra', 206),
(166, 'ES', 'Ourense', 'Ourense', 206),
(167, 'ES', 'Palencia', 'Palencia', 206),
(168, 'ES', 'Pontevedra', 'Pontevedra', 206),
(169, 'ES', 'Salamanca', 'Salamanca', 206),
(170, 'ES', 'Santa Cruz de Tenerife', 'Santa Cruz de Tenerife', 206),
(171, 'ES', 'Segovia', 'Segovia', 206),
(172, 'ES', 'Sevilla', 'Sevilla', 206),
(173, 'ES', 'Soria', 'Soria', 206),
(174, 'ES', 'Tarragona', 'Tarragona', 206),
(175, 'ES', 'Teruel', 'Teruel', 206),
(176, 'ES', 'Toledo', 'Toledo', 206),
(177, 'ES', 'Valencia', 'Valencia', 206),
(178, 'ES', 'Valladolid', 'Valladolid', 206),
(179, 'ES', 'Vizcaya', 'Vizcaya', 206),
(180, 'ES', 'Zamora', 'Zamora', 206),
(181, 'ES', 'Zaragoza', 'Zaragoza', 206),
(182, 'FR', '1', 'Ain', 81),
(183, 'FR', '2', 'Aisne', 81),
(184, 'FR', '3', 'Allier', 81),
(185, 'FR', '4', 'Alpes-de-Haute-Provence', 81),
(186, 'FR', '5', 'Hautes-Alpes', 81),
(187, 'FR', '6', 'Alpes-Maritimes', 81),
(188, 'FR', '7', 'Ardèche', 81),
(189, 'FR', '8', 'Ardennes', 81),
(190, 'FR', '9', 'Ariège', 81),
(191, 'FR', '10', 'Aube', 81),
(192, 'FR', '11', 'Aude', 81),
(193, 'FR', '12', 'Aveyron', 81),
(194, 'FR', '13', 'Bouches-du-Rhône', 81),
(195, 'FR', '14', 'Calvados', 81),
(196, 'FR', '15', 'Cantal', 81),
(197, 'FR', '16', 'Charente', 81),
(198, 'FR', '17', 'Charente-Maritime', 81),
(199, 'FR', '18', 'Cher', 81),
(200, 'FR', '19', 'Corrèze', 81),
(201, 'FR', '2A', 'Corse-du-Sud', 81),
(202, 'FR', '2B', 'Haute-Corse', 81),
(203, 'FR', '21', 'Côte-d\'Or', 81),
(204, 'FR', '22', 'Côtes-d\'Armor', 81),
(205, 'FR', '23', 'Creuse', 81),
(206, 'FR', '24', 'Dordogne', 81),
(207, 'FR', '25', 'Doubs', 81),
(208, 'FR', '26', 'Drôme', 81),
(209, 'FR', '27', 'Eure', 81),
(210, 'FR', '28', 'Eure-et-Loir', 81),
(211, 'FR', '29', 'Finistère', 81),
(212, 'FR', '30', 'Gard', 81),
(213, 'FR', '31', 'Haute-Garonne', 81),
(214, 'FR', '32', 'Gers', 81),
(215, 'FR', '33', 'Gironde', 81),
(216, 'FR', '34', 'Hérault', 81),
(217, 'FR', '35', 'Ille-et-Vilaine', 81),
(218, 'FR', '36', 'Indre', 81),
(219, 'FR', '37', 'Indre-et-Loire', 81),
(220, 'FR', '38', 'Isère', 81),
(221, 'FR', '39', 'Jura', 81),
(222, 'FR', '40', 'Landes', 81),
(223, 'FR', '41', 'Loir-et-Cher', 81),
(224, 'FR', '42', 'Loire', 81),
(225, 'FR', '43', 'Haute-Loire', 81),
(226, 'FR', '44', 'Loire-Atlantique', 81),
(227, 'FR', '45', 'Loiret', 81),
(228, 'FR', '46', 'Lot', 81),
(229, 'FR', '47', 'Lot-et-Garonne', 81),
(230, 'FR', '48', 'Lozère', 81),
(231, 'FR', '49', 'Maine-et-Loire', 81),
(232, 'FR', '50', 'Manche', 81),
(233, 'FR', '51', 'Marne', 81),
(234, 'FR', '52', 'Haute-Marne', 81),
(235, 'FR', '53', 'Mayenne', 81),
(236, 'FR', '54', 'Meurthe-et-Moselle', 81),
(237, 'FR', '55', 'Meuse', 81),
(238, 'FR', '56', 'Morbihan', 81),
(239, 'FR', '57', 'Moselle', 81),
(240, 'FR', '58', 'Nièvre', 81),
(241, 'FR', '59', 'Nord', 81),
(242, 'FR', '60', 'Oise', 81),
(243, 'FR', '61', 'Orne', 81),
(244, 'FR', '62', 'Pas-de-Calais', 81),
(245, 'FR', '63', 'Puy-de-Dôme', 81),
(246, 'FR', '64', 'Pyrénées-Atlantiques', 81),
(247, 'FR', '65', 'Hautes-Pyrénées', 81),
(248, 'FR', '66', 'Pyrénées-Orientales', 81),
(249, 'FR', '67', 'Bas-Rhin', 81),
(250, 'FR', '68', 'Haut-Rhin', 81),
(251, 'FR', '69', 'Rhône', 81),
(252, 'FR', '70', 'Haute-Saône', 81),
(253, 'FR', '71', 'Saône-et-Loire', 81),
(254, 'FR', '72', 'Sarthe', 81),
(255, 'FR', '73', 'Savoie', 81),
(256, 'FR', '74', 'Haute-Savoie', 81),
(257, 'FR', '75', 'Paris', 81),
(258, 'FR', '76', 'Seine-Maritime', 81),
(259, 'FR', '77', 'Seine-et-Marne', 81),
(260, 'FR', '78', 'Yvelines', 81),
(261, 'FR', '79', 'Deux-Sèvres', 81),
(262, 'FR', '80', 'Somme', 81),
(263, 'FR', '81', 'Tarn', 81),
(264, 'FR', '82', 'Tarn-et-Garonne', 81),
(265, 'FR', '83', 'Var', 81),
(266, 'FR', '84', 'Vaucluse', 81),
(267, 'FR', '85', 'Vendée', 81),
(268, 'FR', '86', 'Vienne', 81),
(269, 'FR', '87', 'Haute-Vienne', 81),
(270, 'FR', '88', 'Vosges', 81),
(271, 'FR', '89', 'Yonne', 81),
(272, 'FR', '90', 'Territoire-de-Belfort', 81),
(273, 'FR', '91', 'Essonne', 81),
(274, 'FR', '92', 'Hauts-de-Seine', 81),
(275, 'FR', '93', 'Seine-Saint-Denis', 81),
(276, 'FR', '94', 'Val-de-Marne', 81),
(277, 'FR', '95', 'Val-d\'Oise', 81),
(278, 'RO', 'AB', 'Alba', 185),
(279, 'RO', 'AR', 'Arad', 185),
(280, 'RO', 'AG', 'Argeş', 185),
(281, 'RO', 'BC', 'Bacău', 185),
(282, 'RO', 'BH', 'Bihor', 185),
(283, 'RO', 'BN', 'Bistriţa-Năsăud', 185),
(284, 'RO', 'BT', 'Botoşani', 185),
(285, 'RO', 'BV', 'Braşov', 185),
(286, 'RO', 'BR', 'Brăila', 185),
(287, 'RO', 'B', 'Bucureşti', 185),
(288, 'RO', 'BZ', 'Buzău', 185),
(289, 'RO', 'CS', 'Caraş-Severin', 185),
(290, 'RO', 'CL', 'Călăraşi', 185),
(291, 'RO', 'CJ', 'Cluj', 185),
(292, 'RO', 'CT', 'Constanţa', 185),
(293, 'RO', 'CV', 'Covasna', 185),
(294, 'RO', 'DB', 'Dâmboviţa', 185),
(295, 'RO', 'DJ', 'Dolj', 185),
(296, 'RO', 'GL', 'Galaţi', 185),
(297, 'RO', 'GR', 'Giurgiu', 185),
(298, 'RO', 'GJ', 'Gorj', 185),
(299, 'RO', 'HR', 'Harghita', 185),
(300, 'RO', 'HD', 'Hunedoara', 185),
(301, 'RO', 'IL', 'Ialomiţa', 185),
(302, 'RO', 'IS', 'Iaşi', 185),
(303, 'RO', 'IF', 'Ilfov', 185),
(304, 'RO', 'MM', 'Maramureş', 185),
(305, 'RO', 'MH', 'Mehedinţi', 185),
(306, 'RO', 'MS', 'Mureş', 185),
(307, 'RO', 'NT', 'Neamţ', 185),
(308, 'RO', 'OT', 'Olt', 185),
(309, 'RO', 'PH', 'Prahova', 185),
(310, 'RO', 'SM', 'Satu-Mare', 185),
(311, 'RO', 'SJ', 'Sălaj', 185),
(312, 'RO', 'SB', 'Sibiu', 185),
(313, 'RO', 'SV', 'Suceava', 185),
(314, 'RO', 'TR', 'Teleorman', 185),
(315, 'RO', 'TM', 'Timiş', 185),
(316, 'RO', 'TL', 'Tulcea', 185),
(317, 'RO', 'VS', 'Vaslui', 185),
(318, 'RO', 'VL', 'Vâlcea', 185),
(319, 'RO', 'VN', 'Vrancea', 185),
(320, 'FI', 'Lappi', 'Lappi', 80),
(321, 'FI', 'Pohjois-Pohjanmaa', 'Pohjois-Pohjanmaa', 80),
(322, 'FI', 'Kainuu', 'Kainuu', 80),
(323, 'FI', 'Pohjois-Karjala', 'Pohjois-Karjala', 80),
(324, 'FI', 'Pohjois-Savo', 'Pohjois-Savo', 80),
(325, 'FI', 'Etelä-Savo', 'Etelä-Savo', 80),
(326, 'FI', 'Etelä-Pohjanmaa', 'Etelä-Pohjanmaa', 80),
(327, 'FI', 'Pohjanmaa', 'Pohjanmaa', 80),
(328, 'FI', 'Pirkanmaa', 'Pirkanmaa', 80),
(329, 'FI', 'Satakunta', 'Satakunta', 80),
(330, 'FI', 'Keski-Pohjanmaa', 'Keski-Pohjanmaa', 80),
(331, 'FI', 'Keski-Suomi', 'Keski-Suomi', 80),
(332, 'FI', 'Varsinais-Suomi', 'Varsinais-Suomi', 80),
(333, 'FI', 'Etelä-Karjala', 'Etelä-Karjala', 80),
(334, 'FI', 'Päijät-Häme', 'Päijät-Häme', 80),
(335, 'FI', 'Kanta-Häme', 'Kanta-Häme', 80),
(336, 'FI', 'Uusimaa', 'Uusimaa', 80),
(337, 'FI', 'Itä-Uusimaa', 'Itä-Uusimaa', 80),
(338, 'FI', 'Kymenlaakso', 'Kymenlaakso', 80),
(339, 'FI', 'Ahvenanmaa', 'Ahvenanmaa', 80),
(340, 'EE', 'EE-37', 'Harjumaa', 74),
(341, 'EE', 'EE-39', 'Hiiumaa', 74),
(342, 'EE', 'EE-44', 'Ida-Virumaa', 74),
(343, 'EE', 'EE-49', 'Jõgevamaa', 74),
(344, 'EE', 'EE-51', 'Järvamaa', 74),
(345, 'EE', 'EE-57', 'Läänemaa', 74),
(346, 'EE', 'EE-59', 'Lääne-Virumaa', 74),
(347, 'EE', 'EE-65', 'Põlvamaa', 74),
(348, 'EE', 'EE-67', 'Pärnumaa', 74),
(349, 'EE', 'EE-70', 'Raplamaa', 74),
(350, 'EE', 'EE-74', 'Saaremaa', 74),
(351, 'EE', 'EE-78', 'Tartumaa', 74),
(352, 'EE', 'EE-82', 'Valgamaa', 74),
(353, 'EE', 'EE-84', 'Viljandimaa', 74),
(354, 'EE', 'EE-86', 'Võrumaa', 74),
(355, 'LV', 'LV-DGV', 'Daugavpils', 125),
(356, 'LV', 'LV-JEL', 'Jelgava', 125),
(357, 'LV', 'Jēkabpils', 'Jēkabpils', 125),
(358, 'LV', 'LV-JUR', 'Jūrmala', 125),
(359, 'LV', 'LV-LPX', 'Liepāja', 125),
(360, 'LV', 'LV-LE', 'Liepājas novads', 125),
(361, 'LV', 'LV-REZ', 'Rēzekne', 125),
(362, 'LV', 'LV-RIX', 'Rīga', 125),
(363, 'LV', 'LV-RI', 'Rīgas novads', 125),
(364, 'LV', 'Valmiera', 'Valmiera', 125),
(365, 'LV', 'LV-VEN', 'Ventspils', 125),
(366, 'LV', 'Aglonas novads', 'Aglonas novads', 125),
(367, 'LV', 'LV-AI', 'Aizkraukles novads', 125),
(368, 'LV', 'Aizputes novads', 'Aizputes novads', 125),
(369, 'LV', 'Aknīstes novads', 'Aknīstes novads', 125),
(370, 'LV', 'Alojas novads', 'Alojas novads', 125),
(371, 'LV', 'Alsungas novads', 'Alsungas novads', 125),
(372, 'LV', 'LV-AL', 'Alūksnes novads', 125),
(373, 'LV', 'Amatas novads', 'Amatas novads', 125),
(374, 'LV', 'Apes novads', 'Apes novads', 125),
(375, 'LV', 'Auces novads', 'Auces novads', 125),
(376, 'LV', 'Babītes novads', 'Babītes novads', 125),
(377, 'LV', 'Baldones novads', 'Baldones novads', 125),
(378, 'LV', 'Baltinavas novads', 'Baltinavas novads', 125),
(379, 'LV', 'LV-BL', 'Balvu novads', 125),
(380, 'LV', 'LV-BU', 'Bauskas novads', 125),
(381, 'LV', 'Beverīnas novads', 'Beverīnas novads', 125),
(382, 'LV', 'Brocēnu novads', 'Brocēnu novads', 125),
(383, 'LV', 'Burtnieku novads', 'Burtnieku novads', 125),
(384, 'LV', 'Carnikavas novads', 'Carnikavas novads', 125),
(385, 'LV', 'Cesvaines novads', 'Cesvaines novads', 125),
(386, 'LV', 'Ciblas novads', 'Ciblas novads', 125),
(387, 'LV', 'LV-CE', 'Cēsu novads', 125),
(388, 'LV', 'Dagdas novads', 'Dagdas novads', 125),
(389, 'LV', 'LV-DA', 'Daugavpils novads', 125),
(390, 'LV', 'LV-DO', 'Dobeles novads', 125),
(391, 'LV', 'Dundagas novads', 'Dundagas novads', 125),
(392, 'LV', 'Durbes novads', 'Durbes novads', 125),
(393, 'LV', 'Engures novads', 'Engures novads', 125),
(394, 'LV', 'Garkalnes novads', 'Garkalnes novads', 125),
(395, 'LV', 'Grobiņas novads', 'Grobiņas novads', 125),
(396, 'LV', 'LV-GU', 'Gulbenes novads', 125),
(397, 'LV', 'Iecavas novads', 'Iecavas novads', 125),
(398, 'LV', 'Ikšķiles novads', 'Ikšķiles novads', 125),
(399, 'LV', 'Ilūkstes novads', 'Ilūkstes novads', 125),
(400, 'LV', 'Inčukalna novads', 'Inčukalna novads', 125),
(401, 'LV', 'Jaunjelgavas novads', 'Jaunjelgavas novads', 125),
(402, 'LV', 'Jaunpiebalgas novads', 'Jaunpiebalgas novads', 125),
(403, 'LV', 'Jaunpils novads', 'Jaunpils novads', 125),
(404, 'LV', 'LV-JL', 'Jelgavas novads', 125),
(405, 'LV', 'LV-JK', 'Jēkabpils novads', 125),
(406, 'LV', 'Kandavas novads', 'Kandavas novads', 125),
(407, 'LV', 'Kokneses novads', 'Kokneses novads', 125),
(408, 'LV', 'Krimuldas novads', 'Krimuldas novads', 125),
(409, 'LV', 'Krustpils novads', 'Krustpils novads', 125),
(410, 'LV', 'LV-KR', 'Krāslavas novads', 125),
(411, 'LV', 'LV-KU', 'Kuldīgas novads', 125),
(412, 'LV', 'Kārsavas novads', 'Kārsavas novads', 125),
(413, 'LV', 'Lielvārdes novads', 'Lielvārdes novads', 125),
(414, 'LV', 'LV-LM', 'Limbažu novads', 125),
(415, 'LV', 'Lubānas novads', 'Lubānas novads', 125),
(416, 'LV', 'LV-LU', 'Ludzas novads', 125),
(417, 'LV', 'Līgatnes novads', 'Līgatnes novads', 125),
(418, 'LV', 'Līvānu novads', 'Līvānu novads', 125),
(419, 'LV', 'LV-MA', 'Madonas novads', 125),
(420, 'LV', 'Mazsalacas novads', 'Mazsalacas novads', 125),
(421, 'LV', 'Mālpils novads', 'Mālpils novads', 125),
(422, 'LV', 'Mārupes novads', 'Mārupes novads', 125),
(423, 'LV', 'Naukšēnu novads', 'Naukšēnu novads', 125),
(424, 'LV', 'Neretas novads', 'Neretas novads', 125),
(425, 'LV', 'Nīcas novads', 'Nīcas novads', 125),
(426, 'LV', 'LV-OG', 'Ogres novads', 125),
(427, 'LV', 'Olaines novads', 'Olaines novads', 125),
(428, 'LV', 'Ozolnieku novads', 'Ozolnieku novads', 125),
(429, 'LV', 'LV-PR', 'Preiļu novads', 125),
(430, 'LV', 'Priekules novads', 'Priekules novads', 125),
(431, 'LV', 'Priekuļu novads', 'Priekuļu novads', 125),
(432, 'LV', 'Pārgaujas novads', 'Pārgaujas novads', 125),
(433, 'LV', 'Pāvilostas novads', 'Pāvilostas novads', 125),
(434, 'LV', 'Pļaviņu novads', 'Pļaviņu novads', 125),
(435, 'LV', 'Raunas novads', 'Raunas novads', 125),
(436, 'LV', 'Riebiņu novads', 'Riebiņu novads', 125),
(437, 'LV', 'Rojas novads', 'Rojas novads', 125),
(438, 'LV', 'Ropažu novads', 'Ropažu novads', 125),
(439, 'LV', 'Rucavas novads', 'Rucavas novads', 125),
(440, 'LV', 'Rugāju novads', 'Rugāju novads', 125),
(441, 'LV', 'Rundāles novads', 'Rundāles novads', 125),
(442, 'LV', 'LV-RE', 'Rēzeknes novads', 125),
(443, 'LV', 'Rūjienas novads', 'Rūjienas novads', 125),
(444, 'LV', 'Salacgrīvas novads', 'Salacgrīvas novads', 125),
(445, 'LV', 'Salas novads', 'Salas novads', 125),
(446, 'LV', 'Salaspils novads', 'Salaspils novads', 125),
(447, 'LV', 'LV-SA', 'Saldus novads', 125),
(448, 'LV', 'Saulkrastu novads', 'Saulkrastu novads', 125),
(449, 'LV', 'Siguldas novads', 'Siguldas novads', 125),
(450, 'LV', 'Skrundas novads', 'Skrundas novads', 125),
(451, 'LV', 'Skrīveru novads', 'Skrīveru novads', 125),
(452, 'LV', 'Smiltenes novads', 'Smiltenes novads', 125),
(453, 'LV', 'Stopiņu novads', 'Stopiņu novads', 125),
(454, 'LV', 'Strenču novads', 'Strenču novads', 125),
(455, 'LV', 'Sējas novads', 'Sējas novads', 125),
(456, 'LV', 'LV-TA', 'Talsu novads', 125),
(457, 'LV', 'LV-TU', 'Tukuma novads', 125),
(458, 'LV', 'Tērvetes novads', 'Tērvetes novads', 125),
(459, 'LV', 'Vaiņodes novads', 'Vaiņodes novads', 125),
(460, 'LV', 'LV-VK', 'Valkas novads', 125),
(461, 'LV', 'LV-VM', 'Valmieras novads', 125),
(462, 'LV', 'Varakļānu novads', 'Varakļānu novads', 125),
(463, 'LV', 'Vecpiebalgas novads', 'Vecpiebalgas novads', 125),
(464, 'LV', 'Vecumnieku novads', 'Vecumnieku novads', 125),
(465, 'LV', 'LV-VE', 'Ventspils novads', 125),
(466, 'LV', 'Viesītes novads', 'Viesītes novads', 125),
(467, 'LV', 'Viļakas novads', 'Viļakas novads', 125),
(468, 'LV', 'Viļānu novads', 'Viļānu novads', 125),
(469, 'LV', 'Vārkavas novads', 'Vārkavas novads', 125),
(470, 'LV', 'Zilupes novads', 'Zilupes novads', 125),
(471, 'LV', 'Ādažu novads', 'Ādažu novads', 125),
(472, 'LV', 'Ērgļu novads', 'Ērgļu novads', 125),
(473, 'LV', 'Ķeguma novads', 'Ķeguma novads', 125),
(474, 'LV', 'Ķekavas novads', 'Ķekavas novads', 125),
(475, 'LT', 'LT-AL', 'Alytaus Apskritis', 131),
(476, 'LT', 'LT-KU', 'Kauno Apskritis', 131),
(477, 'LT', 'LT-KL', 'Klaipėdos Apskritis', 131),
(478, 'LT', 'LT-MR', 'Marijampolės Apskritis', 131),
(479, 'LT', 'LT-PN', 'Panevėžio Apskritis', 131),
(480, 'LT', 'LT-SA', 'Šiaulių Apskritis', 131),
(481, 'LT', 'LT-TA', 'Tauragės Apskritis', 131),
(482, 'LT', 'LT-TE', 'Telšių Apskritis', 131),
(483, 'LT', 'LT-UT', 'Utenos Apskritis', 131),
(484, 'LT', 'LT-VL', 'Vilniaus Apskritis', 131),
(485, 'BR', 'AC', 'Acre', 31),
(486, 'BR', 'AL', 'Alagoas', 31),
(487, 'BR', 'AP', 'Amapá', 31),
(488, 'BR', 'AM', 'Amazonas', 31),
(489, 'BR', 'BA', 'Bahia', 31),
(490, 'BR', 'CE', 'Ceará', 31),
(491, 'BR', 'ES', 'Espírito Santo', 31),
(492, 'BR', 'GO', 'Goiás', 31),
(493, 'BR', 'MA', 'Maranhão', 31),
(494, 'BR', 'MT', 'Mato Grosso', 31),
(495, 'BR', 'MS', 'Mato Grosso do Sul', 31),
(496, 'BR', 'MG', 'Minas Gerais', 31),
(497, 'BR', 'PA', 'Pará', 31),
(498, 'BR', 'PB', 'Paraíba', 31),
(499, 'BR', 'PR', 'Paraná', 31),
(500, 'BR', 'PE', 'Pernambuco', 31),
(501, 'BR', 'PI', 'Piauí', 31),
(502, 'BR', 'RJ', 'Rio de Janeiro', 31),
(503, 'BR', 'RN', 'Rio Grande do Norte', 31),
(504, 'BR', 'RS', 'Rio Grande do Sul', 31),
(505, 'BR', 'RO', 'Rondônia', 31),
(506, 'BR', 'RR', 'Roraima', 31),
(507, 'BR', 'SC', 'Santa Catarina', 31),
(508, 'BR', 'SP', 'São Paulo', 31),
(509, 'BR', 'SE', 'Sergipe', 31),
(510, 'BR', 'TO', 'Tocantins', 31),
(511, 'BR', 'DF', 'Distrito Federal', 31),
(512, 'HR', 'HR-01', 'Zagrebačka županija', 59),
(513, 'HR', 'HR-02', 'Krapinsko-zagorska županija', 59),
(514, 'HR', 'HR-03', 'Sisačko-moslavačka županija', 59),
(515, 'HR', 'HR-04', 'Karlovačka županija', 59),
(516, 'HR', 'HR-05', 'Varaždinska županija', 59),
(517, 'HR', 'HR-06', 'Koprivničko-križevačka županija', 59),
(518, 'HR', 'HR-07', 'Bjelovarsko-bilogorska županija', 59),
(519, 'HR', 'HR-08', 'Primorsko-goranska županija', 59),
(520, 'HR', 'HR-09', 'Ličko-senjska županija', 59),
(521, 'HR', 'HR-10', 'Virovitičko-podravska županija', 59),
(522, 'HR', 'HR-11', 'Požeško-slavonska županija', 59),
(523, 'HR', 'HR-12', 'Brodsko-posavska županija', 59),
(524, 'HR', 'HR-13', 'Zadarska županija', 59),
(525, 'HR', 'HR-14', 'Osječko-baranjska županija', 59),
(526, 'HR', 'HR-15', 'Šibensko-kninska županija', 59),
(527, 'HR', 'HR-16', 'Vukovarsko-srijemska županija', 59),
(528, 'HR', 'HR-17', 'Splitsko-dalmatinska županija', 59),
(529, 'HR', 'HR-18', 'Istarska županija', 59),
(530, 'HR', 'HR-19', 'Dubrovačko-neretvanska županija', 59),
(531, 'HR', 'HR-20', 'Međimurska županija', 59),
(532, 'HR', 'HR-21', 'Grad Zagreb', 59),
(533, 'IN', 'AN', 'Andaman and Nicobar Islands', 106),
(534, 'IN', 'AP', 'Andhra Pradesh', 106),
(535, 'IN', 'AR', 'Arunachal Pradesh', 106),
(536, 'IN', 'AS', 'Assam', 106),
(537, 'IN', 'BR', 'Bihar', 106),
(538, 'IN', 'CH', 'Chandigarh', 106),
(539, 'IN', 'CT', 'Chhattisgarh', 106),
(540, 'IN', 'DN', 'Dadra and Nagar Haveli', 106),
(541, 'IN', 'DD', 'Daman and Diu', 106),
(542, 'IN', 'DL', 'Delhi', 106),
(543, 'IN', 'GA', 'Goa', 106),
(544, 'IN', 'GJ', 'Gujarat', 106),
(545, 'IN', 'HR', 'Haryana', 106),
(546, 'IN', 'HP', 'Himachal Pradesh', 106),
(547, 'IN', 'JK', 'Jammu and Kashmir', 106),
(548, 'IN', 'JH', 'Jharkhand', 106),
(549, 'IN', 'KA', 'Karnataka', 106),
(550, 'IN', 'KL', 'Kerala', 106),
(551, 'IN', 'LD', 'Lakshadweep', 106),
(552, 'IN', 'MP', 'Madhya Pradesh', 106),
(553, 'IN', 'MH', 'Maharashtra', 106),
(554, 'IN', 'MN', 'Manipur', 106),
(555, 'IN', 'ML', 'Meghalaya', 106),
(556, 'IN', 'MZ', 'Mizoram', 106),
(557, 'IN', 'NL', 'Nagaland', 106),
(558, 'IN', 'OR', 'Odisha', 106),
(559, 'IN', 'PY', 'Puducherry', 106),
(560, 'IN', 'PB', 'Punjab', 106),
(561, 'IN', 'RJ', 'Rajasthan', 106),
(562, 'IN', 'SK', 'Sikkim', 106),
(563, 'IN', 'TN', 'Tamil Nadu', 106),
(564, 'IN', 'TG', 'Telangana', 106),
(565, 'IN', 'TR', 'Tripura', 106),
(566, 'IN', 'UP', 'Uttar Pradesh', 106),
(567, 'IN', 'UT', 'Uttarakhand', 106),
(568, 'IN', 'WB', 'West Bengal', 106);

-- --------------------------------------------------------

--
-- Table structure for table `bgwycountry_state_translations`
--

CREATE TABLE `bgwycountry_state_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `default_name` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country_state_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `bgwycountry_state_translations`
--

INSERT INTO `bgwycountry_state_translations` (`id`, `locale`, `default_name`, `country_state_id`) VALUES
(1, 'ar', 'ألاباما', 1),
(2, 'ar', 'ألاسكا', 2),
(3, 'ar', 'ساموا الأمريكية', 3),
(4, 'ar', 'أريزونا', 4),
(5, 'ar', 'أركنساس', 5),
(6, 'ar', 'القوات المسلحة أفريقيا', 6),
(7, 'ar', 'القوات المسلحة الأمريكية', 7),
(8, 'ar', 'القوات المسلحة الكندية', 8),
(9, 'ar', 'القوات المسلحة أوروبا', 9),
(10, 'ar', 'القوات المسلحة الشرق الأوسط', 10),
(11, 'ar', 'القوات المسلحة في المحيط الهادئ', 11),
(12, 'ar', 'كاليفورنيا', 12),
(13, 'ar', 'كولورادو', 13),
(14, 'ar', 'كونيتيكت', 14),
(15, 'ar', 'ديلاوير', 15),
(16, 'ar', 'مقاطعة كولومبيا', 16),
(17, 'ar', 'ولايات ميكرونيزيا الموحدة', 17),
(18, 'ar', 'فلوريدا', 18),
(19, 'ar', 'جورجيا', 19),
(20, 'ar', 'غوام', 20),
(21, 'ar', 'هاواي', 21),
(22, 'ar', 'ايداهو', 22),
(23, 'ar', 'إلينوي', 23),
(24, 'ar', 'إنديانا', 24),
(25, 'ar', 'أيوا', 25),
(26, 'ar', 'كانساس', 26),
(27, 'ar', 'كنتاكي', 27),
(28, 'ar', 'لويزيانا', 28),
(29, 'ar', 'مين', 29),
(30, 'ar', 'جزر مارشال', 30),
(31, 'ar', 'ماريلاند', 31),
(32, 'ar', 'ماساتشوستس', 32),
(33, 'ar', 'ميشيغان', 33),
(34, 'ar', 'مينيسوتا', 34),
(35, 'ar', 'ميسيسيبي', 35),
(36, 'ar', 'ميسوري', 36),
(37, 'ar', 'مونتانا', 37),
(38, 'ar', 'نبراسكا', 38),
(39, 'ar', 'نيفادا', 39),
(40, 'ar', 'نيو هامبشاير', 40),
(41, 'ar', 'نيو جيرسي', 41),
(42, 'ar', 'المكسيك جديدة', 42),
(43, 'ar', 'نيويورك', 43),
(44, 'ar', 'شمال كارولينا', 44),
(45, 'ar', 'شمال داكوتا', 45),
(46, 'ar', 'جزر مريانا الشمالية', 46),
(47, 'ar', 'أوهايو', 47),
(48, 'ar', 'أوكلاهوما', 48),
(49, 'ar', 'ولاية أوريغون', 49),
(50, 'ar', 'بالاو', 50),
(51, 'ar', 'بنسلفانيا', 51),
(52, 'ar', 'بورتوريكو', 52),
(53, 'ar', 'جزيرة رود', 53),
(54, 'ar', 'كارولينا الجنوبية', 54),
(55, 'ar', 'جنوب داكوتا', 55),
(56, 'ar', 'تينيسي', 56),
(57, 'ar', 'تكساس', 57),
(58, 'ar', 'يوتا', 58),
(59, 'ar', 'فيرمونت', 59),
(60, 'ar', 'جزر فيرجن', 60),
(61, 'ar', 'فرجينيا', 61),
(62, 'ar', 'واشنطن', 62),
(63, 'ar', 'فرجينيا الغربية', 63),
(64, 'ar', 'ولاية ويسكونسن', 64),
(65, 'ar', 'وايومنغ', 65),
(66, 'ar', 'ألبرتا', 66),
(67, 'ar', 'كولومبيا البريطانية', 67),
(68, 'ar', 'مانيتوبا', 68),
(69, 'ar', 'نيوفاوندلاند ولابرادور', 69),
(70, 'ar', 'برونزيك جديد', 70),
(71, 'ar', 'مقاطعة نفوفا سكوشيا', 71),
(72, 'ar', 'الاقاليم الشمالية الغربية', 72),
(73, 'ar', 'نونافوت', 73),
(74, 'ar', 'أونتاريو', 74),
(75, 'ar', 'جزيرة الأمير ادوارد', 75),
(76, 'ar', 'كيبيك', 76),
(77, 'ar', 'ساسكاتشوان', 77),
(78, 'ar', 'إقليم يوكون', 78),
(79, 'ar', 'Niedersachsen', 79),
(80, 'ar', 'بادن فورتمبيرغ', 80),
(81, 'ar', 'بايرن ميونيخ', 81),
(82, 'ar', 'برلين', 82),
(83, 'ar', 'براندنبورغ', 83),
(84, 'ar', 'بريمن', 84),
(85, 'ar', 'هامبورغ', 85),
(86, 'ar', 'هيسن', 86),
(87, 'ar', 'مكلنبورغ-فوربومرن', 87),
(88, 'ar', 'نوردراين فيستفالن', 88),
(89, 'ar', 'راينلاند-بفالز', 89),
(90, 'ar', 'سارلاند', 90),
(91, 'ar', 'ساكسن', 91),
(92, 'ar', 'سكسونيا أنهالت', 92),
(93, 'ar', 'شليسفيغ هولشتاين', 93),
(94, 'ar', 'تورنغن', 94),
(95, 'ar', 'فيينا', 95),
(96, 'ar', 'النمسا السفلى', 96),
(97, 'ar', 'النمسا العليا', 97),
(98, 'ar', 'سالزبورغ', 98),
(99, 'ar', 'Каринтия', 99),
(100, 'ar', 'STEIERMARK', 100),
(101, 'ar', 'تيرول', 101),
(102, 'ar', 'بورغنلاند', 102),
(103, 'ar', 'فورارلبرغ', 103),
(104, 'ar', 'أرجاو', 104),
(105, 'ar', 'Appenzell Innerrhoden', 105),
(106, 'ar', 'أبنزل أوسيرهودن', 106),
(107, 'ar', 'برن', 107),
(108, 'ar', 'كانتون ريف بازل', 108),
(109, 'ar', 'بازل شتات', 109),
(110, 'ar', 'فرايبورغ', 110),
(111, 'ar', 'Genf', 111),
(112, 'ar', 'جلاروس', 112),
(113, 'ar', 'غراوبوندن', 113),
(114, 'ar', 'العصر الجوارسي أو الجوري', 114),
(115, 'ar', 'لوزيرن', 115),
(116, 'ar', 'في Neuenburg', 116),
(117, 'ar', 'نيدوالدن', 117),
(118, 'ar', 'أوبوالدن', 118),
(119, 'ar', 'سانت غالن', 119),
(120, 'ar', 'شافهاوزن', 120),
(121, 'ar', 'سولوتورن', 121),
(122, 'ar', 'شفيتس', 122),
(123, 'ar', 'ثورجو', 123),
(124, 'ar', 'تيتشينو', 124),
(125, 'ar', 'أوري', 125),
(126, 'ar', 'وادت', 126),
(127, 'ar', 'اليس', 127),
(128, 'ar', 'زوغ', 128),
(129, 'ar', 'زيورخ', 129),
(130, 'ar', 'Corunha', 130),
(131, 'ar', 'ألافا', 131),
(132, 'ar', 'الباسيتي', 132),
(133, 'ar', 'اليكانتي', 133),
(134, 'ar', 'الميريا', 134),
(135, 'ar', 'أستورياس', 135),
(136, 'ar', 'أفيلا', 136),
(137, 'ar', 'بطليوس', 137),
(138, 'ar', 'البليار', 138),
(139, 'ar', 'برشلونة', 139),
(140, 'ar', 'برغش', 140),
(141, 'ar', 'كاسيريس', 141),
(142, 'ar', 'كاديز', 142),
(143, 'ar', 'كانتابريا', 143),
(144, 'ar', 'كاستيلون', 144),
(145, 'ar', 'سبتة', 145),
(146, 'ar', 'سيوداد ريال', 146),
(147, 'ar', 'قرطبة', 147),
(148, 'ar', 'كوينكا', 148),
(149, 'ar', 'جيرونا', 149),
(150, 'ar', 'غرناطة', 150),
(151, 'ar', 'غوادالاخارا', 151),
(152, 'ar', 'بجويبوزكوا', 152),
(153, 'ar', 'هويلفا', 153),
(154, 'ar', 'هويسكا', 154),
(155, 'ar', 'خاين', 155),
(156, 'ar', 'لاريوخا', 156),
(157, 'ar', 'لاس بالماس', 157),
(158, 'ar', 'ليون', 158),
(159, 'ar', 'يدا', 159),
(160, 'ar', 'لوغو', 160),
(161, 'ar', 'مدريد', 161),
(162, 'ar', 'ملقة', 162),
(163, 'ar', 'مليلية', 163),
(164, 'ar', 'مورسيا', 164),
(165, 'ar', 'نافارا', 165),
(166, 'ar', 'أورينس', 166),
(167, 'ar', 'بلنسية', 167),
(168, 'ar', 'بونتيفيدرا', 168),
(169, 'ar', 'سالامانكا', 169),
(170, 'ar', 'سانتا كروز دي تينيريفي', 170),
(171, 'ar', 'سيغوفيا', 171),
(172, 'ar', 'اشبيلية', 172),
(173, 'ar', 'سوريا', 173),
(174, 'ar', 'تاراغونا', 174),
(175, 'ar', 'تيرويل', 175),
(176, 'ar', 'توليدو', 176),
(177, 'ar', 'فالنسيا', 177),
(178, 'ar', 'بلد الوليد', 178),
(179, 'ar', 'فيزكايا', 179),
(180, 'ar', 'زامورا', 180),
(181, 'ar', 'سرقسطة', 181),
(182, 'ar', 'عين', 182),
(183, 'ar', 'أيسن', 183),
(184, 'ar', 'اليي', 184),
(185, 'ar', 'ألب البروفنس العليا', 185),
(186, 'ar', 'أوتس ألب', 186),
(187, 'ar', 'ألب ماريتيم', 187),
(188, 'ar', 'ARDECHE', 188),
(189, 'ar', 'Ardennes', 189),
(190, 'ar', 'آردن', 190),
(191, 'ar', 'أوب', 191),
(192, 'ar', 'اود', 192),
(193, 'ar', 'أفيرون', 193),
(194, 'ar', 'بوكاس دو رون', 194),
(195, 'ar', 'كالفادوس', 195),
(196, 'ar', 'كانتال', 196),
(197, 'ar', 'شارانت', 197),
(198, 'ar', 'سيين إت مارن', 198),
(199, 'ar', 'شير', 199),
(200, 'ar', 'كوريز', 200),
(201, 'ar', 'سود كورس-دو-', 201),
(202, 'ar', 'هوت كورس', 202),
(203, 'ar', 'كوستا دوركوريز', 203),
(204, 'ar', 'كوتس دورمور', 204),
(205, 'ar', 'كروز', 205),
(206, 'ar', 'دوردوني', 206),
(207, 'ar', 'دوبس', 207),
(208, 'ar', 'DrômeFinistère', 208),
(209, 'ar', 'أور', 209),
(210, 'ar', 'أور ولوار', 210),
(211, 'ar', 'فينيستير', 211),
(212, 'ar', 'جارد', 212),
(213, 'ar', 'هوت غارون', 213),
(214, 'ar', 'الخيام', 214),
(215, 'ar', 'جيروند', 215),
(216, 'ar', 'هيرولت', 216),
(217, 'ar', 'إيل وفيلان', 217),
(218, 'ar', 'إندر', 218),
(219, 'ar', 'أندر ولوار', 219),
(220, 'ar', 'إيسر', 220),
(221, 'ar', 'العصر الجوارسي أو الجوري', 221),
(222, 'ar', 'اندز', 222),
(223, 'ar', 'لوار وشير', 223),
(224, 'ar', 'لوار', 224),
(225, 'ar', 'هوت-لوار', 225),
(226, 'ar', 'وار أتلانتيك', 226),
(227, 'ar', 'لورا', 227),
(228, 'ar', 'كثيرا', 228),
(229, 'ar', 'الكثير غارون', 229),
(230, 'ar', 'لوزر', 230),
(231, 'ar', 'مين-إي-لوار', 231),
(232, 'ar', 'المانش', 232),
(233, 'ar', 'مارن', 233),
(234, 'ar', 'هوت مارن', 234),
(235, 'ar', 'مايين', 235),
(236, 'ar', 'مورت وموزيل', 236),
(237, 'ar', 'ميوز', 237),
(238, 'ar', 'موربيهان', 238),
(239, 'ar', 'موسيل', 239),
(240, 'ar', 'نيفر', 240),
(241, 'ar', 'نورد', 241),
(242, 'ar', 'إيل دو فرانس', 242),
(243, 'ar', 'أورن', 243),
(244, 'ar', 'با-دو-كاليه', 244),
(245, 'ar', 'بوي دي دوم', 245),
(246, 'ar', 'البرانيس ​​الأطلسية', 246),
(247, 'ar', 'أوتس-بيرينيهs', 247),
(248, 'ar', 'بيرينيه-أورينتال', 248),
(249, 'ar', 'بس رين', 249),
(250, 'ar', 'أوت رين', 250),
(251, 'ar', 'رون [3]', 251),
(252, 'ar', 'هوت-سون', 252),
(253, 'ar', 'سون ولوار', 253),
(254, 'ar', 'سارت', 254),
(255, 'ar', 'سافوا', 255),
(256, 'ar', 'هاوت سافوي', 256),
(257, 'ar', 'باريس', 257),
(258, 'ar', 'سين البحرية', 258),
(259, 'ar', 'سيين إت مارن', 259),
(260, 'ar', 'إيفلين', 260),
(261, 'ar', 'دوكس سفرس', 261),
(262, 'ar', 'السوم', 262),
(263, 'ar', 'تارن', 263),
(264, 'ar', 'تارن وغارون', 264),
(265, 'ar', 'فار', 265),
(266, 'ar', 'فوكلوز', 266),
(267, 'ar', 'تارن', 267),
(268, 'ar', 'فيين', 268),
(269, 'ar', 'هوت فيين', 269),
(270, 'ar', 'الفوج', 270),
(271, 'ar', 'يون', 271),
(272, 'ar', 'تيريتوير-دي-بلفور', 272),
(273, 'ar', 'إيسون', 273),
(274, 'ar', 'هوت دو سين', 274),
(275, 'ar', 'سين سان دوني', 275),
(276, 'ar', 'فال دو مارن', 276),
(277, 'ar', 'فال دواز', 277),
(278, 'ar', 'ألبا', 278),
(279, 'ar', 'اراد', 279),
(280, 'ar', 'ARGES', 280),
(281, 'ar', 'باكاو', 281),
(282, 'ar', 'بيهور', 282),
(283, 'ar', 'بيستريتا ناسود', 283),
(284, 'ar', 'بوتوساني', 284),
(285, 'ar', 'براشوف', 285),
(286, 'ar', 'برايلا', 286),
(287, 'ar', 'بوخارست', 287),
(288, 'ar', 'بوزاو', 288),
(289, 'ar', 'كاراس سيفيرين', 289),
(290, 'ar', 'كالاراسي', 290),
(291, 'ar', 'كلوج', 291),
(292, 'ar', 'كونستانتا', 292),
(293, 'ar', 'كوفاسنا', 293),
(294, 'ar', 'دامبوفيتا', 294),
(295, 'ar', 'دولج', 295),
(296, 'ar', 'جالاتي', 296),
(297, 'ar', 'Giurgiu', 297),
(298, 'ar', 'غيورغيو', 298),
(299, 'ar', 'هارغيتا', 299),
(300, 'ar', 'هونيدوارا', 300),
(301, 'ar', 'ايالوميتا', 301),
(302, 'ar', 'ياشي', 302),
(303, 'ar', 'إيلفوف', 303),
(304, 'ar', 'مارامريس', 304),
(305, 'ar', 'MEHEDINTI', 305),
(306, 'ar', 'موريس', 306),
(307, 'ar', 'نيامتس', 307),
(308, 'ar', 'أولت', 308),
(309, 'ar', 'براهوفا', 309),
(310, 'ar', 'ساتو ماري', 310),
(311, 'ar', 'سالاج', 311),
(312, 'ar', 'سيبيو', 312),
(313, 'ar', 'سوسيفا', 313),
(314, 'ar', 'تيليورمان', 314),
(315, 'ar', 'تيم هو', 315),
(316, 'ar', 'تولسيا', 316),
(317, 'ar', 'فاسلوي', 317),
(318, 'ar', 'فالسيا', 318),
(319, 'ar', 'فرانتشا', 319),
(320, 'ar', 'Lappi', 320),
(321, 'ar', 'Pohjois-Pohjanmaa', 321),
(322, 'ar', 'كاينو', 322),
(323, 'ar', 'Pohjois-كارجالا', 323),
(324, 'ar', 'Pohjois-سافو', 324),
(325, 'ar', 'Etelä-سافو', 325),
(326, 'ar', 'Etelä-Pohjanmaa', 326),
(327, 'ar', 'Pohjanmaa', 327),
(328, 'ar', 'بيركنما', 328),
(329, 'ar', 'ساتا كونتا', 329),
(330, 'ar', 'كسكي-Pohjanmaa', 330),
(331, 'ar', 'كسكي-سومي', 331),
(332, 'ar', 'Varsinais-سومي', 332),
(333, 'ar', 'Etelä-كارجالا', 333),
(334, 'ar', 'Päijät-Häme', 334),
(335, 'ar', 'كانتا-HAME', 335),
(336, 'ar', 'أوسيما', 336),
(337, 'ar', 'أوسيما', 337),
(338, 'ar', 'كومنلاكسو', 338),
(339, 'ar', 'Ahvenanmaa', 339),
(340, 'ar', 'Harjumaa', 340),
(341, 'ar', 'هيوما', 341),
(342, 'ar', 'المؤسسة الدولية للتنمية فيروما', 342),
(343, 'ar', 'جوغفما', 343),
(344, 'ar', 'يارفا', 344),
(345, 'ar', 'انيما', 345),
(346, 'ar', 'اني فيريوما', 346),
(347, 'ar', 'بولفاما', 347),
(348, 'ar', 'بارنوما', 348),
(349, 'ar', 'Raplamaa', 349),
(350, 'ar', 'Saaremaa', 350),
(351, 'ar', 'Tartumaa', 351),
(352, 'ar', 'Valgamaa', 352),
(353, 'ar', 'Viljandimaa', 353),
(354, 'ar', 'روايات Salacgr novvas', 354),
(355, 'ar', 'داوجافبيلس', 355),
(356, 'ar', 'يلغافا', 356),
(357, 'ar', 'يكاب', 357),
(358, 'ar', 'يورمال', 358),
(359, 'ar', 'يابايا', 359),
(360, 'ar', 'ليباج أبريس', 360),
(361, 'ar', 'ريزكن', 361),
(362, 'ar', 'ريغا', 362),
(363, 'ar', 'مقاطعة ريغا', 363),
(364, 'ar', 'فالميرا', 364),
(365, 'ar', 'فنتسبيلز', 365),
(366, 'ar', 'روايات Aglonas', 366),
(367, 'ar', 'Aizkraukles novads', 367),
(368, 'ar', 'Aizkraukles novads', 368),
(369, 'ar', 'Aknīstes novads', 369),
(370, 'ar', 'Alojas novads', 370),
(371, 'ar', 'روايات Alsungas', 371),
(372, 'ar', 'ألكسنس أبريز', 372),
(373, 'ar', 'روايات أماتاس', 373),
(374, 'ar', 'قرود الروايات', 374),
(375, 'ar', 'روايات أوسيس', 375),
(376, 'ar', 'بابيت الروايات', 376),
(377, 'ar', 'Baldones الروايات', 377),
(378, 'ar', 'بالتينافاس الروايات', 378),
(379, 'ar', 'روايات بالفو', 379),
(380, 'ar', 'Bauskas الروايات', 380),
(381, 'ar', 'Beverīnas novads', 381),
(382, 'ar', 'Novads Brocēnu', 382),
(383, 'ar', 'Novads Burtnieku', 383),
(384, 'ar', 'Carnikavas novads', 384),
(385, 'ar', 'Cesvaines novads', 385),
(386, 'ar', 'Ciblas novads', 386),
(387, 'ar', 'تسو أبريس', 387),
(388, 'ar', 'Dagdas novads', 388),
(389, 'ar', 'Daugavpils novads', 389),
(390, 'ar', 'روايات دوبيليس', 390),
(391, 'ar', 'ديربيس الروايات', 391),
(392, 'ar', 'ديربيس الروايات', 392),
(393, 'ar', 'يشرك الروايات', 393),
(394, 'ar', 'Garkalnes novads', 394),
(395, 'ar', 'Grobiņas novads', 395),
(396, 'ar', 'غولبينيس الروايات', 396),
(397, 'ar', 'إيكافاس روايات', 397),
(398, 'ar', 'Ikškiles novads', 398),
(399, 'ar', 'Ilūkstes novads', 399),
(400, 'ar', 'روايات Inčukalna', 400),
(401, 'ar', 'Jaunjelgavas novads', 401),
(402, 'ar', 'Jaunpiebalgas novads', 402),
(403, 'ar', 'روايات Jaunpiebalgas', 403),
(404, 'ar', 'Jelgavas novads', 404),
(405, 'ar', 'جيكابيلس أبريز', 405),
(406, 'ar', 'روايات كاندافاس', 406),
(407, 'ar', 'Kokneses الروايات', 407),
(408, 'ar', 'Krimuldas novads', 408),
(409, 'ar', 'Krustpils الروايات', 409),
(410, 'ar', 'Krāslavas Apriņķis', 410),
(411, 'ar', 'كولدوغاس أبريز', 411),
(412, 'ar', 'Kārsavas novads', 412),
(413, 'ar', 'روايات ييلفاريس', 413),
(414, 'ar', 'ليمباو أبريز', 414),
(415, 'ar', 'روايات لباناس', 415),
(416, 'ar', 'روايات لودزاس', 416),
(417, 'ar', 'مقاطعة ليجاتني', 417),
(418, 'ar', 'مقاطعة ليفاني', 418),
(419, 'ar', 'مادونا روايات', 419),
(420, 'ar', 'Mazsalacas novads', 420),
(421, 'ar', 'روايات مالبلز', 421),
(422, 'ar', 'Mārupes novads', 422),
(423, 'ar', 'نوفاو نوكشنو', 423),
(424, 'ar', 'روايات نيريتاس', 424),
(425, 'ar', 'روايات نيكاس', 425),
(426, 'ar', 'أغنام الروايات', 426),
(427, 'ar', 'أولينيس الروايات', 427),
(428, 'ar', 'روايات Ozolnieku', 428),
(429, 'ar', 'بريسيو أبرييس', 429),
(430, 'ar', 'Priekules الروايات', 430),
(431, 'ar', 'كوندادو دي بريكوي', 431),
(432, 'ar', 'Pärgaujas novads', 432),
(433, 'ar', 'روايات بافيلوستاس', 433),
(434, 'ar', 'بلافيناس مقاطعة', 434),
(435, 'ar', 'روناس روايات', 435),
(436, 'ar', 'Riebiņu novads', 436),
(437, 'ar', 'روجاس روايات', 437),
(438, 'ar', 'Novads روباو', 438),
(439, 'ar', 'روكافاس روايات', 439),
(440, 'ar', 'روغاجو روايات', 440),
(441, 'ar', 'رندلس الروايات', 441),
(442, 'ar', 'Radzeknes novads', 442),
(443, 'ar', 'Rūjienas novads', 443),
(444, 'ar', 'بلدية سالاسغريفا', 444),
(445, 'ar', 'روايات سالاس', 445),
(446, 'ar', 'Salaspils novads', 446),
(447, 'ar', 'روايات سالدوس', 447),
(448, 'ar', 'Novuls Saulkrastu', 448),
(449, 'ar', 'سيغولداس روايات', 449),
(450, 'ar', 'Skrundas novads', 450),
(451, 'ar', 'مقاطعة Skrīveri', 451),
(452, 'ar', 'يبتسم الروايات', 452),
(453, 'ar', 'روايات Stopiņu', 453),
(454, 'ar', 'روايات Stren novu', 454),
(455, 'ar', 'سجاس روايات', 455),
(456, 'ar', 'روايات تالسو', 456),
(457, 'ar', 'توكوما الروايات', 457),
(458, 'ar', 'Tērvetes novads', 458),
(459, 'ar', 'Vaiņodes novads', 459),
(460, 'ar', 'فالكاس الروايات', 460),
(461, 'ar', 'فالميراس الروايات', 461),
(462, 'ar', 'مقاطعة فاكلاني', 462),
(463, 'ar', 'Vecpiebalgas novads', 463),
(464, 'ar', 'روايات Vecumnieku', 464),
(465, 'ar', 'فنتسبيلس الروايات', 465),
(466, 'ar', 'Viesītes Novads', 466),
(467, 'ar', 'Viļakas novads', 467),
(468, 'ar', 'روايات فيناو', 468),
(469, 'ar', 'Vārkavas novads', 469),
(470, 'ar', 'روايات زيلوبس', 470),
(471, 'ar', 'مقاطعة أدازي', 471),
(472, 'ar', 'مقاطعة Erglu', 472),
(473, 'ar', 'مقاطعة كيغمس', 473),
(474, 'ar', 'مقاطعة كيكافا', 474),
(475, 'ar', 'Alytaus Apskritis', 475),
(476, 'ar', 'كاونو ابكريتيس', 476),
(477, 'ar', 'Klaipėdos apskritis', 477),
(478, 'ar', 'Marijampol\'s apskritis', 478),
(479, 'ar', 'Panevėžio apskritis', 479),
(480, 'ar', 'uliaulių apskritis', 480),
(481, 'ar', 'Taurag\'s apskritis', 481),
(482, 'ar', 'Telšių apskritis', 482),
(483, 'ar', 'Utenos apskritis', 483),
(484, 'ar', 'فيلنياوس ابكريتيس', 484),
(485, 'ar', 'فدان', 485),
(486, 'ar', 'ألاغواس', 486),
(487, 'ar', 'أمابا', 487),
(488, 'ar', 'أمازوناس', 488),
(489, 'ar', 'باهيا', 489),
(490, 'ar', 'سيارا', 490),
(491, 'ar', 'إسبيريتو سانتو', 491),
(492, 'ar', 'غوياس', 492),
(493, 'ar', 'مارانهاو', 493),
(494, 'ar', 'ماتو جروسو', 494),
(495, 'ar', 'ماتو جروسو دو سول', 495),
(496, 'ar', 'ميناس جريس', 496),
(497, 'ar', 'بارا', 497),
(498, 'ar', 'بارايبا', 498),
(499, 'ar', 'بارانا', 499),
(500, 'ar', 'بيرنامبوكو', 500),
(501, 'ar', 'بياوي', 501),
(502, 'ar', 'ريو دي جانيرو', 502),
(503, 'ar', 'ريو غراندي دو نورتي', 503),
(504, 'ar', 'ريو غراندي دو سول', 504),
(505, 'ar', 'روندونيا', 505),
(506, 'ar', 'رورايما', 506),
(507, 'ar', 'سانتا كاتارينا', 507),
(508, 'ar', 'ساو باولو', 508),
(509, 'ar', 'سيرغيبي', 509),
(510, 'ar', 'توكانتينز', 510),
(511, 'ar', 'وفي مقاطعة الاتحادية', 511),
(512, 'ar', 'Zagrebačka زوبانيا', 512),
(513, 'ar', 'Krapinsko-zagorska زوبانيا', 513),
(514, 'ar', 'Sisačko-moslavačka زوبانيا', 514),
(515, 'ar', 'كارلوفيتش شوبانيا', 515),
(516, 'ar', 'فارادينسكا زوبانيجا', 516),
(517, 'ar', 'Koprivničko-križevačka زوبانيجا', 517),
(518, 'ar', 'بيلوفارسكو-بيلوجورسكا', 518),
(519, 'ar', 'بريمورسكو غورانسكا سوبانيا', 519),
(520, 'ar', 'ليكو سينيسكا زوبانيا', 520),
(521, 'ar', 'Virovitičko-podravska زوبانيا', 521),
(522, 'ar', 'Požeško-slavonska županija', 522),
(523, 'ar', 'Brodsko-posavska županija', 523),
(524, 'ar', 'زادارسكا زوبانيجا', 524),
(525, 'ar', 'Osječko-baranjska županija', 525),
(526, 'ar', 'شيبنسكو-كنينسكا سوبانيا', 526),
(527, 'ar', 'Virovitičko-podravska زوبانيا', 527),
(528, 'ar', 'Splitsko-dalmatinska زوبانيا', 528),
(529, 'ar', 'Istarska زوبانيا', 529),
(530, 'ar', 'Dubrovačko-neretvanska زوبانيا', 530),
(531, 'ar', 'Međimurska زوبانيا', 531),
(532, 'ar', 'غراد زغرب', 532),
(533, 'ar', 'جزر أندامان ونيكوبار', 533),
(534, 'ar', 'ولاية اندرا براديش', 534),
(535, 'ar', 'اروناتشال براديش', 535),
(536, 'ar', 'أسام', 536),
(537, 'ar', 'بيهار', 537),
(538, 'ar', 'شانديغار', 538),
(539, 'ar', 'تشهاتيسجاره', 539),
(540, 'ar', 'دادرا ونجار هافيلي', 540),
(541, 'ar', 'دامان وديو', 541),
(542, 'ar', 'دلهي', 542),
(543, 'ar', 'غوا', 543),
(544, 'ar', 'غوجارات', 544),
(545, 'ar', 'هاريانا', 545),
(546, 'ar', 'هيماشال براديش', 546),
(547, 'ar', 'جامو وكشمير', 547),
(548, 'ar', 'جهارخاند', 548),
(549, 'ar', 'كارناتاكا', 549),
(550, 'ar', 'ولاية كيرالا', 550),
(551, 'ar', 'اكشادويب', 551),
(552, 'ar', 'ماديا براديش', 552),
(553, 'ar', 'ماهاراشترا', 553),
(554, 'ar', 'مانيبور', 554),
(555, 'ar', 'ميغالايا', 555),
(556, 'ar', 'ميزورام', 556),
(557, 'ar', 'ناجالاند', 557),
(558, 'ar', 'أوديشا', 558),
(559, 'ar', 'بودوتشيري', 559),
(560, 'ar', 'البنجاب', 560),
(561, 'ar', 'راجستان', 561),
(562, 'ar', 'سيكيم', 562),
(563, 'ar', 'تاميل نادو', 563),
(564, 'ar', 'تيلانجانا', 564),
(565, 'ar', 'تريبورا', 565),
(566, 'ar', 'ولاية اوتار براديش', 566),
(567, 'ar', 'أوتارانتشال', 567),
(568, 'ar', 'البنغال الغربية', 568),
(569, 'fa', 'آلاباما', 1),
(570, 'fa', 'آلاسکا', 2),
(571, 'fa', 'ساموآ آمریکایی', 3),
(572, 'fa', 'آریزونا', 4),
(573, 'fa', 'آرکانزاس', 5),
(574, 'fa', 'نیروهای مسلح آفریقا', 6),
(575, 'fa', 'Armed Forces America', 7),
(576, 'fa', 'نیروهای مسلح کانادا', 8),
(577, 'fa', 'نیروهای مسلح اروپا', 9),
(578, 'fa', 'نیروهای مسلح خاورمیانه', 10),
(579, 'fa', 'نیروهای مسلح اقیانوس آرام', 11),
(580, 'fa', 'کالیفرنیا', 12),
(581, 'fa', 'کلرادو', 13),
(582, 'fa', 'کانکتیکات', 14),
(583, 'fa', 'دلاور', 15),
(584, 'fa', 'منطقه کلمبیا', 16),
(585, 'fa', 'ایالات فدرال میکرونزی', 17),
(586, 'fa', 'فلوریدا', 18),
(587, 'fa', 'جورجیا', 19),
(588, 'fa', 'گوام', 20),
(589, 'fa', 'هاوایی', 21),
(590, 'fa', 'آیداهو', 22),
(591, 'fa', 'ایلینویز', 23),
(592, 'fa', 'ایندیانا', 24),
(593, 'fa', 'آیووا', 25),
(594, 'fa', 'کانزاس', 26),
(595, 'fa', 'کنتاکی', 27),
(596, 'fa', 'لوئیزیانا', 28),
(597, 'fa', 'ماین', 29),
(598, 'fa', 'مای', 30),
(599, 'fa', 'مریلند', 31),
(600, 'fa', ' ', 32),
(601, 'fa', 'میشیگان', 33),
(602, 'fa', 'مینه سوتا', 34),
(603, 'fa', 'می سی سی پی', 35),
(604, 'fa', 'میسوری', 36),
(605, 'fa', 'مونتانا', 37),
(606, 'fa', 'نبراسکا', 38),
(607, 'fa', 'نواد', 39),
(608, 'fa', 'نیوهمپشایر', 40),
(609, 'fa', 'نیوجرسی', 41),
(610, 'fa', 'نیومکزیکو', 42),
(611, 'fa', 'نیویورک', 43),
(612, 'fa', 'کارولینای شمالی', 44),
(613, 'fa', 'داکوتای شمالی', 45),
(614, 'fa', 'جزایر ماریانای شمالی', 46),
(615, 'fa', 'اوهایو', 47),
(616, 'fa', 'اوکلاهما', 48),
(617, 'fa', 'اورگان', 49),
(618, 'fa', 'پالائو', 50),
(619, 'fa', 'پنسیلوانیا', 51),
(620, 'fa', 'پورتوریکو', 52),
(621, 'fa', 'رود آیلند', 53),
(622, 'fa', 'کارولینای جنوبی', 54),
(623, 'fa', 'داکوتای جنوبی', 55),
(624, 'fa', 'تنسی', 56),
(625, 'fa', 'تگزاس', 57),
(626, 'fa', 'یوتا', 58),
(627, 'fa', 'ورمونت', 59),
(628, 'fa', 'جزایر ویرجین', 60),
(629, 'fa', 'ویرجینیا', 61),
(630, 'fa', 'واشنگتن', 62),
(631, 'fa', 'ویرجینیای غربی', 63),
(632, 'fa', 'ویسکانسین', 64),
(633, 'fa', 'وایومینگ', 65),
(634, 'fa', 'آلبرتا', 66),
(635, 'fa', 'بریتیش کلمبیا', 67),
(636, 'fa', 'مانیتوبا', 68),
(637, 'fa', 'نیوفاندلند و لابرادور', 69),
(638, 'fa', 'نیوبرانزویک', 70),
(639, 'fa', 'نوا اسکوشیا', 71),
(640, 'fa', 'سرزمینهای شمال غربی', 72),
(641, 'fa', 'نوناووت', 73),
(642, 'fa', 'انتاریو', 74),
(643, 'fa', 'جزیره پرنس ادوارد', 75),
(644, 'fa', 'کبک', 76),
(645, 'fa', 'ساسکاتچوان', 77),
(646, 'fa', 'قلمرو یوکان', 78),
(647, 'fa', 'نیدرزاکسن', 79),
(648, 'fa', 'بادن-وورتمبرگ', 80),
(649, 'fa', 'بایرن', 81),
(650, 'fa', 'برلین', 82),
(651, 'fa', 'براندنبورگ', 83),
(652, 'fa', 'برمن', 84),
(653, 'fa', 'هامبور', 85),
(654, 'fa', 'هسن', 86),
(655, 'fa', 'مکلنبورگ-وورپومرن', 87),
(656, 'fa', 'نوردراین-وستفالن', 88),
(657, 'fa', 'راینلاند-پلاتینات', 89),
(658, 'fa', 'سارلند', 90),
(659, 'fa', 'ساچسن', 91),
(660, 'fa', 'ساچسن-آنهالت', 92),
(661, 'fa', 'شلسویگ-هولشتاین', 93),
(662, 'fa', 'تورینگی', 94),
(663, 'fa', 'وین', 95),
(664, 'fa', 'اتریش پایین', 96),
(665, 'fa', 'اتریش فوقانی', 97),
(666, 'fa', 'سالزبورگ', 98),
(667, 'fa', 'کارنتا', 99),
(668, 'fa', 'Steiermar', 100),
(669, 'fa', 'تیرول', 101),
(670, 'fa', 'بورگنلن', 102),
(671, 'fa', 'Vorarlber', 103),
(672, 'fa', 'آرگ', 104),
(673, 'fa', '', 105),
(674, 'fa', 'اپنزلسرهودن', 106),
(675, 'fa', 'بر', 107),
(676, 'fa', 'بازل-لندشفت', 108),
(677, 'fa', 'بازل استاد', 109),
(678, 'fa', 'فرایبورگ', 110),
(679, 'fa', 'گنف', 111),
(680, 'fa', 'گلاروس', 112),
(681, 'fa', 'Graubünde', 113),
(682, 'fa', 'ژورا', 114),
(683, 'fa', 'لوزرن', 115),
(684, 'fa', 'نوینبور', 116),
(685, 'fa', 'نیدالد', 117),
(686, 'fa', 'اوبولدن', 118),
(687, 'fa', 'سنت گالن', 119),
(688, 'fa', 'شافهاوز', 120),
(689, 'fa', 'سولوتور', 121),
(690, 'fa', 'شووی', 122),
(691, 'fa', 'تورگاو', 123),
(692, 'fa', 'تسسی', 124),
(693, 'fa', 'اوری', 125),
(694, 'fa', 'وادت', 126),
(695, 'fa', 'والی', 127),
(696, 'fa', 'ز', 128),
(697, 'fa', 'زوریخ', 129),
(698, 'fa', 'کورونا', 130),
(699, 'fa', 'آلاوا', 131),
(700, 'fa', 'آلبوم', 132),
(701, 'fa', 'آلیکانت', 133),
(702, 'fa', 'آلمریا', 134),
(703, 'fa', 'آستوریا', 135),
(704, 'fa', 'آویلا', 136),
(705, 'fa', 'باداژوز', 137),
(706, 'fa', 'ضرب و شتم', 138),
(707, 'fa', 'بارسلون', 139),
(708, 'fa', 'بورگو', 140),
(709, 'fa', 'کاسر', 141),
(710, 'fa', 'کادی', 142),
(711, 'fa', 'کانتابریا', 143),
(712, 'fa', 'کاستلون', 144),
(713, 'fa', 'سوت', 145),
(714, 'fa', 'سیوداد واقعی', 146),
(715, 'fa', 'کوردوب', 147),
(716, 'fa', 'Cuenc', 148),
(717, 'fa', 'جیرون', 149),
(718, 'fa', 'گراناد', 150),
(719, 'fa', 'گوادالاجار', 151),
(720, 'fa', 'Guipuzcoa', 152),
(721, 'fa', 'هولوا', 153),
(722, 'fa', 'هوسک', 154),
(723, 'fa', 'جی', 155),
(724, 'fa', 'لا ریوجا', 156),
(725, 'fa', 'لاس پالماس', 157),
(726, 'fa', 'لئو', 158),
(727, 'fa', 'Lleid', 159),
(728, 'fa', 'لوگ', 160),
(729, 'fa', 'مادری', 161),
(730, 'fa', 'مالاگ', 162),
(731, 'fa', 'ملیلی', 163),
(732, 'fa', 'مورسیا', 164),
(733, 'fa', 'ناوار', 165),
(734, 'fa', 'اورنس', 166),
(735, 'fa', 'پالنسی', 167),
(736, 'fa', 'پونتوودر', 168),
(737, 'fa', 'سالامانک', 169),
(738, 'fa', 'سانتا کروز د تنریفه', 170),
(739, 'fa', 'سوگویا', 171),
(740, 'fa', 'سوی', 172),
(741, 'fa', 'سوریا', 173),
(742, 'fa', 'تاراگونا', 174),
(743, 'fa', 'ترئو', 175),
(744, 'fa', 'تولدو', 176),
(745, 'fa', 'والنسیا', 177),
(746, 'fa', 'والادولی', 178),
(747, 'fa', 'ویزکایا', 179),
(748, 'fa', 'زامور', 180),
(749, 'fa', 'ساراگوز', 181),
(750, 'fa', 'عی', 182),
(751, 'fa', 'آیز', 183),
(752, 'fa', 'آلی', 184),
(753, 'fa', 'آلپ-دو-هاوت-پرووانس', 185),
(754, 'fa', 'هاوتس آلپ', 186),
(755, 'fa', 'Alpes-Maritime', 187),
(756, 'fa', 'اردچه', 188),
(757, 'fa', 'آرد', 189),
(758, 'fa', 'محاصر', 190),
(759, 'fa', 'آبه', 191),
(760, 'fa', 'Aud', 192),
(761, 'fa', 'آویرون', 193),
(762, 'fa', 'BOCAS DO Rhône', 194),
(763, 'fa', 'نوعی عرق', 195),
(764, 'fa', 'کانتینال', 196),
(765, 'fa', 'چارنت', 197),
(766, 'fa', 'چارنت-دریایی', 198),
(767, 'fa', 'چ', 199),
(768, 'fa', 'کور', 200),
(769, 'fa', 'کرس دو ساد', 201),
(770, 'fa', 'هاوت کورس', 202),
(771, 'fa', 'کوستا دورکرز', 203),
(772, 'fa', 'تخت دارمور', 204),
(773, 'fa', 'درهم', 205),
(774, 'fa', 'دوردگن', 206),
(775, 'fa', 'دوب', 207),
(776, 'fa', 'تعریف اول', 208),
(777, 'fa', 'یور', 209),
(778, 'fa', 'Eure-et-Loi', 210),
(779, 'fa', 'فمینیست', 211),
(780, 'fa', 'باغ', 212),
(781, 'fa', 'اوت-گارون', 213),
(782, 'fa', 'گر', 214),
(783, 'fa', 'جیروند', 215),
(784, 'fa', 'هیر', 216),
(785, 'fa', 'هشدار داده می شود', 217),
(786, 'fa', 'ایندور', 218),
(787, 'fa', 'Indre-et-Loir', 219),
(788, 'fa', 'ایزر', 220),
(789, 'fa', 'یور', 221),
(790, 'fa', 'لندز', 222),
(791, 'fa', 'Loir-et-Che', 223),
(792, 'fa', 'وام گرفتن', 224),
(793, 'fa', 'Haute-Loir', 225),
(794, 'fa', 'Loire-Atlantiqu', 226),
(795, 'fa', 'لیرت', 227),
(796, 'fa', 'لوط', 228),
(797, 'fa', 'لوت و گارون', 229),
(798, 'fa', 'لوزر', 230),
(799, 'fa', 'ماین et-Loire', 231),
(800, 'fa', 'مانچ', 232),
(801, 'fa', 'مارن', 233),
(802, 'fa', 'هاوت-مارن', 234),
(803, 'fa', 'مایین', 235),
(804, 'fa', 'مورته-et-Moselle', 236),
(805, 'fa', 'مسخره کردن', 237),
(806, 'fa', 'موربیان', 238),
(807, 'fa', 'موزل', 239),
(808, 'fa', 'Nièvr', 240),
(809, 'fa', 'نورد', 241),
(810, 'fa', 'اوی', 242),
(811, 'fa', 'ارن', 243),
(812, 'fa', 'پاس-کاله', 244),
(813, 'fa', 'Puy-de-Dôm', 245),
(814, 'fa', 'Pyrénées-Atlantiques', 246),
(815, 'fa', 'Hautes-Pyrénée', 247),
(816, 'fa', 'Pyrénées-Orientales', 248),
(817, 'fa', 'بس راین', 249),
(818, 'fa', 'هاوت-رین', 250),
(819, 'fa', 'رو', 251),
(820, 'fa', 'Haute-Saône', 252),
(821, 'fa', 'Saône-et-Loire', 253),
(822, 'fa', 'سارته', 254),
(823, 'fa', 'ساووی', 255),
(824, 'fa', 'هاو-ساووی', 256),
(825, 'fa', 'پاری', 257),
(826, 'fa', 'Seine-Maritime', 258),
(827, 'fa', 'Seine-et-Marn', 259),
(828, 'fa', 'ایولینز', 260),
(829, 'fa', 'Deux-Sèvres', 261),
(830, 'fa', 'سمی', 262),
(831, 'fa', 'ضعف', 263),
(832, 'fa', 'Tarn-et-Garonne', 264),
(833, 'fa', 'وار', 265),
(834, 'fa', 'ووکلوز', 266),
(835, 'fa', 'وندیه', 267),
(836, 'fa', 'وین', 268),
(837, 'fa', 'هاوت-وین', 269),
(838, 'fa', 'رأی دادن', 270),
(839, 'fa', 'یون', 271),
(840, 'fa', 'سرزمین-دو-بلفورت', 272),
(841, 'fa', 'اسون', 273),
(842, 'fa', 'هاوتز دی سی', 274),
(843, 'fa', 'Seine-Saint-Deni', 275),
(844, 'fa', 'والد مارن', 276),
(845, 'fa', 'Val-d\'Ois', 277),
(846, 'fa', 'آلبا', 278),
(847, 'fa', 'آرا', 279),
(848, 'fa', 'Argeș', 280),
(849, 'fa', 'باکو', 281),
(850, 'fa', 'بیهور', 282),
(851, 'fa', 'بیستریا-نسوود', 283),
(852, 'fa', 'بوتانی', 284),
(853, 'fa', 'برازوف', 285),
(854, 'fa', 'Brăila', 286),
(855, 'fa', 'București', 287),
(856, 'fa', 'بوز', 288),
(857, 'fa', 'کارا- Severin', 289),
(858, 'fa', 'کالیراسی', 290),
(859, 'fa', 'كلوژ', 291),
(860, 'fa', 'کنستانس', 292),
(861, 'fa', 'کواسنا', 293),
(862, 'fa', 'Dâmbovița', 294),
(863, 'fa', 'دال', 295),
(864, 'fa', 'گالشی', 296),
(865, 'fa', 'جورجیو', 297),
(866, 'fa', 'گور', 298),
(867, 'fa', 'هارگیتا', 299),
(868, 'fa', 'هوندهار', 300),
(869, 'fa', 'ایالومیشا', 301),
(870, 'fa', 'Iași', 302),
(871, 'fa', 'Ilfo', 303),
(872, 'fa', 'Maramureș', 304),
(873, 'fa', 'Mehedinți', 305),
(874, 'fa', 'Mureș', 306),
(875, 'fa', 'Neamț', 307),
(876, 'fa', 'اولت', 308),
(877, 'fa', 'پرهوا', 309),
(878, 'fa', 'ستو ماره', 310),
(879, 'fa', 'سلاج', 311),
(880, 'fa', 'سیبیو', 312),
(881, 'fa', 'سوساو', 313),
(882, 'fa', 'تلورمان', 314),
(883, 'fa', 'تیمیچ', 315),
(884, 'fa', 'تولسا', 316),
(885, 'fa', 'واسلوئی', 317),
(886, 'fa', 'Vâlcea', 318),
(887, 'fa', 'ورانسا', 319),
(888, 'fa', 'لاپی', 320),
(889, 'fa', 'Pohjois-Pohjanmaa', 321),
(890, 'fa', 'کائینو', 322),
(891, 'fa', 'Pohjois-Karjala', 323),
(892, 'fa', 'Pohjois-Savo', 324),
(893, 'fa', 'اتل-ساوو', 325),
(894, 'fa', 'کسکی-پوهانما', 326),
(895, 'fa', 'Pohjanmaa', 327),
(896, 'fa', 'پیرکانما', 328),
(897, 'fa', 'ساتاکونتا', 329),
(898, 'fa', 'کسکی-پوهانما', 330),
(899, 'fa', 'کسکی-سوومی', 331),
(900, 'fa', 'Varsinais-Suomi', 332),
(901, 'fa', 'اتلی کرجالا', 333),
(902, 'fa', 'Päijät-HAM', 334),
(903, 'fa', 'کانتا-هوم', 335),
(904, 'fa', 'یوسیما', 336),
(905, 'fa', 'اوسیم', 337),
(906, 'fa', 'کیمنلاکو', 338),
(907, 'fa', 'آونوانما', 339),
(908, 'fa', 'هارژوم', 340),
(909, 'fa', 'سلا', 341),
(910, 'fa', 'آیدا-ویروما', 342),
(911, 'fa', 'Jõgevamaa', 343),
(912, 'fa', 'جوروماا', 344),
(913, 'fa', 'لونما', 345),
(914, 'fa', 'لون-ویروما', 346),
(915, 'fa', 'پالوماا', 347),
(916, 'fa', 'پورنوما', 348),
(917, 'fa', 'Raplama', 349),
(918, 'fa', 'ساارما', 350),
(919, 'fa', 'تارتوما', 351),
(920, 'fa', 'والگام', 352),
(921, 'fa', 'ویلجاندیم', 353),
(922, 'fa', 'Võrumaa', 354),
(923, 'fa', 'داگاوپیل', 355),
(924, 'fa', 'جلگاو', 356),
(925, 'fa', 'جکابیل', 357),
(926, 'fa', 'جرمل', 358),
(927, 'fa', 'لیپجا', 359),
(928, 'fa', 'شهرستان لیپاج', 360),
(929, 'fa', 'روژن', 361),
(930, 'fa', 'راگ', 362),
(931, 'fa', 'شهرستان ریگ', 363),
(932, 'fa', 'والمییرا', 364),
(933, 'fa', 'Ventspils', 365),
(934, 'fa', 'آگلوناس نوادا', 366),
(935, 'fa', 'تازه کاران آیزکرایکلس', 367),
(936, 'fa', 'تازه واردان', 368),
(937, 'fa', 'شهرستا', 369),
(938, 'fa', 'نوازندگان آلوجاس', 370),
(939, 'fa', 'تازه های آلسونگاس', 371),
(940, 'fa', 'شهرستان آلوکس', 372),
(941, 'fa', 'تازه کاران آماتاس', 373),
(942, 'fa', 'میمون های تازه', 374),
(943, 'fa', 'نوادا را آویز می کند', 375),
(944, 'fa', 'شهرستان بابی', 376),
(945, 'fa', 'Baldones novad', 377),
(946, 'fa', 'نوین های بالتیناوا', 378),
(947, 'fa', 'Balvu novad', 379),
(948, 'fa', 'نوازندگان باسکاس', 380),
(949, 'fa', 'شهرستان بورین', 381),
(950, 'fa', 'شهرستان بروچن', 382),
(951, 'fa', 'بوردنیکو نوآوران', 383),
(952, 'fa', 'تازه کارنیکاوا', 384),
(953, 'fa', 'نوازان سزوینس', 385),
(954, 'fa', 'نوادگان Cibla', 386),
(955, 'fa', 'شهرستان Cesis', 387),
(956, 'fa', 'تازه های داگدا', 388),
(957, 'fa', 'داوگاوپیلز نوادا', 389),
(958, 'fa', 'دابل نوادی', 390),
(959, 'fa', 'تازه کارهای دنداگاس', 391),
(960, 'fa', 'نوباد دوربس', 392),
(961, 'fa', 'مشغول تازه کارها است', 393),
(962, 'fa', 'گرکالنس نواد', 394),
(963, 'fa', 'یا شهرستان گروبی', 395),
(964, 'fa', 'تازه های گلبنس', 396),
(965, 'fa', 'Iecavas novads', 397),
(966, 'fa', 'شهرستان ایسکل', 398),
(967, 'fa', 'ایالت ایلکست', 399),
(968, 'fa', 'کنددو د اینچوکالن', 400),
(969, 'fa', 'نوجواد Jaunjelgavas', 401),
(970, 'fa', 'تازه های Jaunpiebalgas', 402),
(971, 'fa', 'شهرستان جونپیلس', 403),
(972, 'fa', 'شهرستان جگلو', 404),
(973, 'fa', 'شهرستان جکابیل', 405),
(974, 'fa', 'شهرستان کنداوا', 406),
(975, 'fa', 'شهرستان کوکنز', 407),
(976, 'fa', 'شهرستان کریمولد', 408),
(977, 'fa', 'شهرستان کرستپیل', 409),
(978, 'fa', 'شهرستان کراسلاو', 410),
(979, 'fa', 'کاندادو د کلدیگا', 411),
(980, 'fa', 'کاندادو د کارساوا', 412),
(981, 'fa', 'شهرستان لیولوارد', 413),
(982, 'fa', 'شهرستان لیمباشی', 414),
(983, 'fa', 'ای ولسوالی لوبون', 415),
(984, 'fa', 'شهرستان لودزا', 416),
(985, 'fa', 'شهرستان لیگات', 417),
(986, 'fa', 'شهرستان لیوانی', 418),
(987, 'fa', 'شهرستان مادونا', 419),
(988, 'fa', 'شهرستان مازسال', 420),
(989, 'fa', 'شهرستان مالپیلس', 421),
(990, 'fa', 'شهرستان Mārupe', 422),
(991, 'fa', 'ا کنددو د نوکشنی', 423),
(992, 'fa', 'کاملاً یک شهرستان', 424),
(993, 'fa', 'شهرستان نیکا', 425),
(994, 'fa', 'شهرستان اوگر', 426),
(995, 'fa', 'شهرستان اولین', 427),
(996, 'fa', 'شهرستان اوزولنیکی', 428),
(997, 'fa', 'شهرستان پرلیلی', 429),
(998, 'fa', 'شهرستان Priekule', 430),
(999, 'fa', 'Condado de Priekuļi', 431),
(1000, 'fa', 'شهرستان در حال حرکت', 432),
(1001, 'fa', 'شهرستان پاویلوستا', 433),
(1002, 'fa', 'شهرستان Plavinas', 4),
(1003, 'fa', 'شهرستان راونا', 435),
(1004, 'fa', 'شهرستان ریبیشی', 436),
(1005, 'fa', 'شهرستان روجا', 437),
(1006, 'fa', 'شهرستان روپازی', 438),
(1007, 'fa', 'شهرستان روساوا', 439),
(1008, 'fa', 'شهرستان روگی', 440),
(1009, 'fa', 'شهرستان راندل', 441),
(1010, 'fa', 'شهرستان ریزکن', 442),
(1011, 'fa', 'شهرستان روژینا', 443),
(1012, 'fa', 'شهرداری Salacgriva', 444),
(1013, 'fa', 'منطقه جزیره', 445),
(1014, 'fa', 'شهرستان Salaspils', 446),
(1015, 'fa', 'شهرستان سالدوس', 447),
(1016, 'fa', 'شهرستان ساولکرستی', 448),
(1017, 'fa', 'شهرستان سیگولدا', 449),
(1018, 'fa', 'شهرستان Skrunda', 450),
(1019, 'fa', 'شهرستان Skrīveri', 451),
(1020, 'fa', 'شهرستان Smiltene', 452),
(1021, 'fa', 'شهرستان ایستینی', 453),
(1022, 'fa', 'شهرستان استرنشی', 454),
(1023, 'fa', 'منطقه کاشت', 455),
(1024, 'fa', 'شهرستان تالسی', 456),
(1025, 'fa', 'توکومس', 457),
(1026, 'fa', 'شهرستان تورت', 458),
(1027, 'fa', 'یا شهرستان وایودود', 459),
(1028, 'fa', 'شهرستان والکا', 460),
(1029, 'fa', 'شهرستان Valmiera', 461),
(1030, 'fa', 'شهرستان وارکانی', 462),
(1031, 'fa', 'شهرستان Vecpiebalga', 463),
(1032, 'fa', 'شهرستان وکومنیکی', 464),
(1033, 'fa', 'شهرستان ونتسپیل', 465),
(1034, 'fa', 'کنددو د بازدید', 466),
(1035, 'fa', 'شهرستان ویلاکا', 467),
(1036, 'fa', 'شهرستان ویلانی', 468),
(1037, 'fa', 'شهرستان واركاوا', 469),
(1038, 'fa', 'شهرستان زیلوپ', 470),
(1039, 'fa', 'شهرستان آدازی', 471),
(1040, 'fa', 'شهرستان ارگلو', 472),
(1041, 'fa', 'شهرستان کگومس', 473),
(1042, 'fa', 'شهرستان ککاوا', 474),
(1043, 'fa', 'شهرستان Alytus', 475),
(1044, 'fa', 'شهرستان Kaunas', 476),
(1045, 'fa', 'شهرستان کلایپدا', 477),
(1046, 'fa', 'شهرستان ماریجامپولی', 478),
(1047, 'fa', 'شهرستان پانویسیز', 479),
(1048, 'fa', 'شهرستان سیاولیا', 480),
(1049, 'fa', 'شهرستان تاجیج', 481),
(1050, 'fa', 'شهرستان تلشیا', 482),
(1051, 'fa', 'شهرستان اوتنا', 483),
(1052, 'fa', 'شهرستان ویلنیوس', 484),
(1053, 'fa', 'جریب', 485),
(1054, 'fa', 'حالت', 486),
(1055, 'fa', 'آمپá', 487),
(1056, 'fa', 'آمازون', 488),
(1057, 'fa', 'باهی', 489),
(1058, 'fa', 'سارا', 490),
(1059, 'fa', 'روح القدس', 491),
(1060, 'fa', 'برو', 492),
(1061, 'fa', 'مارانهائ', 493),
(1062, 'fa', 'ماتو گروسو', 494),
(1063, 'fa', 'Mato Grosso do Sul', 495),
(1064, 'fa', 'ایالت میناس گرایس', 496),
(1065, 'fa', 'پار', 497),
(1066, 'fa', 'حالت', 498),
(1067, 'fa', 'پارانا', 499),
(1068, 'fa', 'حال', 500),
(1069, 'fa', 'پیازو', 501),
(1070, 'fa', 'ریو دوژانیرو', 502),
(1071, 'fa', 'ریو گراند دو نورته', 503),
(1072, 'fa', 'ریو گراند دو سول', 504),
(1073, 'fa', 'Rondôni', 505),
(1074, 'fa', 'Roraim', 506),
(1075, 'fa', 'سانتا کاتارینا', 507),
(1076, 'fa', 'پ', 508),
(1077, 'fa', 'Sergip', 509),
(1078, 'fa', 'توکانتین', 510),
(1079, 'fa', 'منطقه فدرال', 511),
(1080, 'fa', 'شهرستان زاگرب', 512),
(1081, 'fa', 'Condado de Krapina-Zagorj', 513),
(1082, 'fa', 'شهرستان سیساک-موسلاوینا', 514),
(1083, 'fa', 'شهرستان کارلوواک', 515),
(1084, 'fa', 'شهرداری واراžدین', 516),
(1085, 'fa', 'Condo de Koprivnica-Križevci', 517),
(1086, 'fa', 'محل سکونت د بیلوار-بلوگورا', 518),
(1087, 'fa', 'Condado de Primorje-Gorski kotar', 519),
(1088, 'fa', 'شهرستان لیکا-سنج', 520),
(1089, 'fa', 'Condado de Virovitica-Podravina', 521),
(1090, 'fa', 'شهرستان پوژگا-اسلاونیا', 522),
(1091, 'fa', 'Condado de Brod-Posavina', 523),
(1092, 'fa', 'شهرستان زجر', 524),
(1093, 'fa', 'Condado de Osijek-Baranja', 525),
(1094, 'fa', 'Condo de Sibenik-Knin', 526),
(1095, 'fa', 'Condado de Vukovar-Srijem', 527),
(1096, 'fa', 'شهرستان اسپلیت-Dalmatia', 528),
(1097, 'fa', 'شهرستان ایستیا', 529),
(1098, 'fa', 'Condado de Dubrovnik-Neretva', 530),
(1099, 'fa', 'شهرستان Međimurje', 531),
(1100, 'fa', 'شهر زاگرب', 532),
(1101, 'fa', 'جزایر آندامان و نیکوبار', 533),
(1102, 'fa', 'آندرا پرادش', 534),
(1103, 'fa', 'آروناچال پرادش', 535),
(1104, 'fa', 'آسام', 536),
(1105, 'fa', 'Biha', 537),
(1106, 'fa', 'چاندیگار', 538),
(1107, 'fa', 'چاتیسگار', 539),
(1108, 'fa', 'دادرا و نگار هاولی', 540),
(1109, 'fa', 'دامان و دیو', 541),
(1110, 'fa', 'دهلی', 542),
(1111, 'fa', 'گوا', 543),
(1112, 'fa', 'گجرات', 544),
(1113, 'fa', 'هاریانا', 545),
(1114, 'fa', 'هیماچال پرادش', 546),
(1115, 'fa', 'جامو و کشمیر', 547),
(1116, 'fa', 'جهخند', 548),
(1117, 'fa', 'کارناتاکا', 549),
(1118, 'fa', 'کرال', 550),
(1119, 'fa', 'لاکشادوپ', 551),
(1120, 'fa', 'مادیا پرادش', 552),
(1121, 'fa', 'ماهاراشترا', 553),
(1122, 'fa', 'مانی پور', 554),
(1123, 'fa', 'مگالایا', 555),
(1124, 'fa', 'مزورام', 556),
(1125, 'fa', 'ناگلند', 557),
(1126, 'fa', 'ادیشا', 558),
(1127, 'fa', 'میناکاری', 559),
(1128, 'fa', 'پنجا', 560),
(1129, 'fa', 'راجستان', 561),
(1130, 'fa', 'سیکیم', 562),
(1131, 'fa', 'تامیل نادو', 563),
(1132, 'fa', 'تلنگانا', 564),
(1133, 'fa', 'تریپورا', 565),
(1134, 'fa', 'اوتار پرادش', 566),
(1135, 'fa', 'اوتاراکند', 567),
(1136, 'fa', 'بنگال غرب', 568),
(1137, 'pt_BR', 'Alabama', 1),
(1138, 'pt_BR', 'Alaska', 2),
(1139, 'pt_BR', 'Samoa Americana', 3),
(1140, 'pt_BR', 'Arizona', 4),
(1141, 'pt_BR', 'Arkansas', 5),
(1142, 'pt_BR', 'Forças Armadas da África', 6),
(1143, 'pt_BR', 'Forças Armadas das Américas', 7),
(1144, 'pt_BR', 'Forças Armadas do Canadá', 8),
(1145, 'pt_BR', 'Forças Armadas da Europa', 9),
(1146, 'pt_BR', 'Forças Armadas do Oriente Médio', 10),
(1147, 'pt_BR', 'Forças Armadas do Pacífico', 11),
(1148, 'pt_BR', 'California', 12),
(1149, 'pt_BR', 'Colorado', 13),
(1150, 'pt_BR', 'Connecticut', 14),
(1151, 'pt_BR', 'Delaware', 15),
(1152, 'pt_BR', 'Distrito de Columbia', 16),
(1153, 'pt_BR', 'Estados Federados da Micronésia', 17),
(1154, 'pt_BR', 'Florida', 18),
(1155, 'pt_BR', 'Geórgia', 19),
(1156, 'pt_BR', 'Guam', 20),
(1157, 'pt_BR', 'Havaí', 21),
(1158, 'pt_BR', 'Idaho', 22),
(1159, 'pt_BR', 'Illinois', 23),
(1160, 'pt_BR', 'Indiana', 24),
(1161, 'pt_BR', 'Iowa', 25),
(1162, 'pt_BR', 'Kansas', 26),
(1163, 'pt_BR', 'Kentucky', 27),
(1164, 'pt_BR', 'Louisiana', 28),
(1165, 'pt_BR', 'Maine', 29),
(1166, 'pt_BR', 'Ilhas Marshall', 30),
(1167, 'pt_BR', 'Maryland', 31),
(1168, 'pt_BR', 'Massachusetts', 32),
(1169, 'pt_BR', 'Michigan', 33),
(1170, 'pt_BR', 'Minnesota', 34),
(1171, 'pt_BR', 'Mississippi', 35),
(1172, 'pt_BR', 'Missouri', 36),
(1173, 'pt_BR', 'Montana', 37),
(1174, 'pt_BR', 'Nebraska', 38),
(1175, 'pt_BR', 'Nevada', 39),
(1176, 'pt_BR', 'New Hampshire', 40),
(1177, 'pt_BR', 'Nova Jersey', 41),
(1178, 'pt_BR', 'Novo México', 42),
(1179, 'pt_BR', 'Nova York', 43),
(1180, 'pt_BR', 'Carolina do Norte', 44),
(1181, 'pt_BR', 'Dakota do Norte', 45),
(1182, 'pt_BR', 'Ilhas Marianas do Norte', 46),
(1183, 'pt_BR', 'Ohio', 47),
(1184, 'pt_BR', 'Oklahoma', 48),
(1185, 'pt_BR', 'Oregon', 4),
(1186, 'pt_BR', 'Palau', 50),
(1187, 'pt_BR', 'Pensilvânia', 51),
(1188, 'pt_BR', 'Porto Rico', 52),
(1189, 'pt_BR', 'Rhode Island', 53),
(1190, 'pt_BR', 'Carolina do Sul', 54),
(1191, 'pt_BR', 'Dakota do Sul', 55),
(1192, 'pt_BR', 'Tennessee', 56),
(1193, 'pt_BR', 'Texas', 57),
(1194, 'pt_BR', 'Utah', 58),
(1195, 'pt_BR', 'Vermont', 59),
(1196, 'pt_BR', 'Ilhas Virgens', 60),
(1197, 'pt_BR', 'Virginia', 61),
(1198, 'pt_BR', 'Washington', 62),
(1199, 'pt_BR', 'West Virginia', 63),
(1200, 'pt_BR', 'Wisconsin', 64),
(1201, 'pt_BR', 'Wyoming', 65),
(1202, 'pt_BR', 'Alberta', 66),
(1203, 'pt_BR', 'Colúmbia Britânica', 67),
(1204, 'pt_BR', 'Manitoba', 68),
(1205, 'pt_BR', 'Terra Nova e Labrador', 69),
(1206, 'pt_BR', 'New Brunswick', 70),
(1207, 'pt_BR', 'Nova Escócia', 7),
(1208, 'pt_BR', 'Territórios do Noroeste', 72),
(1209, 'pt_BR', 'Nunavut', 73),
(1210, 'pt_BR', 'Ontario', 74),
(1211, 'pt_BR', 'Ilha do Príncipe Eduardo', 75),
(1212, 'pt_BR', 'Quebec', 76),
(1213, 'pt_BR', 'Saskatchewan', 77),
(1214, 'pt_BR', 'Território yukon', 78),
(1215, 'pt_BR', 'Niedersachsen', 79),
(1216, 'pt_BR', 'Baden-Wurttemberg', 80),
(1217, 'pt_BR', 'Bayern', 81),
(1218, 'pt_BR', 'Berlim', 82),
(1219, 'pt_BR', 'Brandenburg', 83),
(1220, 'pt_BR', 'Bremen', 84),
(1221, 'pt_BR', 'Hamburgo', 85),
(1222, 'pt_BR', 'Hessen', 86),
(1223, 'pt_BR', 'Mecklenburg-Vorpommern', 87),
(1224, 'pt_BR', 'Nordrhein-Westfalen', 88),
(1225, 'pt_BR', 'Renânia-Palatinado', 8),
(1226, 'pt_BR', 'Sarre', 90),
(1227, 'pt_BR', 'Sachsen', 91),
(1228, 'pt_BR', 'Sachsen-Anhalt', 92),
(1229, 'pt_BR', 'Schleswig-Holstein', 93),
(1230, 'pt_BR', 'Turíngia', 94),
(1231, 'pt_BR', 'Viena', 95),
(1232, 'pt_BR', 'Baixa Áustria', 96),
(1233, 'pt_BR', 'Oberösterreich', 97),
(1234, 'pt_BR', 'Salzburg', 98),
(1235, 'pt_BR', 'Caríntia', 99),
(1236, 'pt_BR', 'Steiermark', 100),
(1237, 'pt_BR', 'Tirol', 101),
(1238, 'pt_BR', 'Burgenland', 102),
(1239, 'pt_BR', 'Vorarlberg', 103),
(1240, 'pt_BR', 'Aargau', 104),
(1241, 'pt_BR', 'Appenzell Innerrhoden', 105),
(1242, 'pt_BR', 'Appenzell Ausserrhoden', 106),
(1243, 'pt_BR', 'Bern', 107),
(1244, 'pt_BR', 'Basel-Landschaft', 108),
(1245, 'pt_BR', 'Basel-Stadt', 109),
(1246, 'pt_BR', 'Freiburg', 110),
(1247, 'pt_BR', 'Genf', 111),
(1248, 'pt_BR', 'Glarus', 112),
(1249, 'pt_BR', 'Grisons', 113),
(1250, 'pt_BR', 'Jura', 114),
(1251, 'pt_BR', 'Luzern', 115),
(1252, 'pt_BR', 'Neuenburg', 116),
(1253, 'pt_BR', 'Nidwalden', 117),
(1254, 'pt_BR', 'Obwalden', 118),
(1255, 'pt_BR', 'St. Gallen', 119),
(1256, 'pt_BR', 'Schaffhausen', 120),
(1257, 'pt_BR', 'Solothurn', 121),
(1258, 'pt_BR', 'Schwyz', 122),
(1259, 'pt_BR', 'Thurgau', 123),
(1260, 'pt_BR', 'Tessin', 124),
(1261, 'pt_BR', 'Uri', 125),
(1262, 'pt_BR', 'Waadt', 126),
(1263, 'pt_BR', 'Wallis', 127),
(1264, 'pt_BR', 'Zug', 128),
(1265, 'pt_BR', 'Zurique', 129),
(1266, 'pt_BR', 'Corunha', 130),
(1267, 'pt_BR', 'Álava', 131),
(1268, 'pt_BR', 'Albacete', 132),
(1269, 'pt_BR', 'Alicante', 133),
(1270, 'pt_BR', 'Almeria', 134),
(1271, 'pt_BR', 'Astúrias', 135),
(1272, 'pt_BR', 'Avila', 136),
(1273, 'pt_BR', 'Badajoz', 137),
(1274, 'pt_BR', 'Baleares', 138),
(1275, 'pt_BR', 'Barcelona', 139),
(1276, 'pt_BR', 'Burgos', 140),
(1277, 'pt_BR', 'Caceres', 141),
(1278, 'pt_BR', 'Cadiz', 142),
(1279, 'pt_BR', 'Cantábria', 143),
(1280, 'pt_BR', 'Castellon', 144),
(1281, 'pt_BR', 'Ceuta', 145),
(1282, 'pt_BR', 'Ciudad Real', 146),
(1283, 'pt_BR', 'Cordoba', 147),
(1284, 'pt_BR', 'Cuenca', 148),
(1285, 'pt_BR', 'Girona', 149),
(1286, 'pt_BR', 'Granada', 150),
(1287, 'pt_BR', 'Guadalajara', 151),
(1288, 'pt_BR', 'Guipuzcoa', 152),
(1289, 'pt_BR', 'Huelva', 153),
(1290, 'pt_BR', 'Huesca', 154),
(1291, 'pt_BR', 'Jaen', 155),
(1292, 'pt_BR', 'La Rioja', 156),
(1293, 'pt_BR', 'Las Palmas', 157),
(1294, 'pt_BR', 'Leon', 158),
(1295, 'pt_BR', 'Lleida', 159),
(1296, 'pt_BR', 'Lugo', 160),
(1297, 'pt_BR', 'Madri', 161),
(1298, 'pt_BR', 'Málaga', 162),
(1299, 'pt_BR', 'Melilla', 163),
(1300, 'pt_BR', 'Murcia', 164),
(1301, 'pt_BR', 'Navarra', 165),
(1302, 'pt_BR', 'Ourense', 166),
(1303, 'pt_BR', 'Palencia', 167),
(1304, 'pt_BR', 'Pontevedra', 168),
(1305, 'pt_BR', 'Salamanca', 169),
(1306, 'pt_BR', 'Santa Cruz de Tenerife', 170),
(1307, 'pt_BR', 'Segovia', 171),
(1308, 'pt_BR', 'Sevilla', 172),
(1309, 'pt_BR', 'Soria', 173),
(1310, 'pt_BR', 'Tarragona', 174),
(1311, 'pt_BR', 'Teruel', 175),
(1312, 'pt_BR', 'Toledo', 176),
(1313, 'pt_BR', 'Valencia', 177),
(1314, 'pt_BR', 'Valladolid', 178),
(1315, 'pt_BR', 'Vizcaya', 179),
(1316, 'pt_BR', 'Zamora', 180),
(1317, 'pt_BR', 'Zaragoza', 181),
(1318, 'pt_BR', 'Ain', 182),
(1319, 'pt_BR', 'Aisne', 183),
(1320, 'pt_BR', 'Allier', 184),
(1321, 'pt_BR', 'Alpes da Alta Provença', 185),
(1322, 'pt_BR', 'Altos Alpes', 186),
(1323, 'pt_BR', 'Alpes-Maritimes', 187),
(1324, 'pt_BR', 'Ardèche', 188),
(1325, 'pt_BR', 'Ardennes', 189),
(1326, 'pt_BR', 'Ariege', 190),
(1327, 'pt_BR', 'Aube', 191),
(1328, 'pt_BR', 'Aude', 192),
(1329, 'pt_BR', 'Aveyron', 193),
(1330, 'pt_BR', 'BOCAS DO Rhône', 194),
(1331, 'pt_BR', 'Calvados', 195),
(1332, 'pt_BR', 'Cantal', 196),
(1333, 'pt_BR', 'Charente', 197),
(1334, 'pt_BR', 'Charente-Maritime', 198),
(1335, 'pt_BR', 'Cher', 199),
(1336, 'pt_BR', 'Corrèze', 200),
(1337, 'pt_BR', 'Corse-du-Sud', 201),
(1338, 'pt_BR', 'Alta Córsega', 202),
(1339, 'pt_BR', 'Costa d\'OrCorrèze', 203),
(1340, 'pt_BR', 'Cotes d\'Armor', 204),
(1341, 'pt_BR', 'Creuse', 205),
(1342, 'pt_BR', 'Dordogne', 206),
(1343, 'pt_BR', 'Doubs', 207),
(1344, 'pt_BR', 'DrômeFinistère', 208),
(1345, 'pt_BR', 'Eure', 209),
(1346, 'pt_BR', 'Eure-et-Loir', 210),
(1347, 'pt_BR', 'Finistère', 211),
(1348, 'pt_BR', 'Gard', 212),
(1349, 'pt_BR', 'Haute-Garonne', 213),
(1350, 'pt_BR', 'Gers', 214),
(1351, 'pt_BR', 'Gironde', 215),
(1352, 'pt_BR', 'Hérault', 216),
(1353, 'pt_BR', 'Ille-et-Vilaine', 217),
(1354, 'pt_BR', 'Indre', 218),
(1355, 'pt_BR', 'Indre-et-Loire', 219),
(1356, 'pt_BR', 'Isère', 220),
(1357, 'pt_BR', 'Jura', 221),
(1358, 'pt_BR', 'Landes', 222),
(1359, 'pt_BR', 'Loir-et-Cher', 223),
(1360, 'pt_BR', 'Loire', 224),
(1361, 'pt_BR', 'Haute-Loire', 22),
(1362, 'pt_BR', 'Loire-Atlantique', 226),
(1363, 'pt_BR', 'Loiret', 227),
(1364, 'pt_BR', 'Lot', 228),
(1365, 'pt_BR', 'Lot e Garona', 229),
(1366, 'pt_BR', 'Lozère', 230),
(1367, 'pt_BR', 'Maine-et-Loire', 231),
(1368, 'pt_BR', 'Manche', 232),
(1369, 'pt_BR', 'Marne', 233),
(1370, 'pt_BR', 'Haute-Marne', 234),
(1371, 'pt_BR', 'Mayenne', 235),
(1372, 'pt_BR', 'Meurthe-et-Moselle', 236),
(1373, 'pt_BR', 'Meuse', 237),
(1374, 'pt_BR', 'Morbihan', 238),
(1375, 'pt_BR', 'Moselle', 239),
(1376, 'pt_BR', 'Nièvre', 240),
(1377, 'pt_BR', 'Nord', 241),
(1378, 'pt_BR', 'Oise', 242),
(1379, 'pt_BR', 'Orne', 243),
(1380, 'pt_BR', 'Pas-de-Calais', 244),
(1381, 'pt_BR', 'Puy-de-Dôme', 24),
(1382, 'pt_BR', 'Pirineus Atlânticos', 246),
(1383, 'pt_BR', 'Hautes-Pyrénées', 247),
(1384, 'pt_BR', 'Pirineus Orientais', 248),
(1385, 'pt_BR', 'Bas-Rhin', 249),
(1386, 'pt_BR', 'Alto Reno', 250),
(1387, 'pt_BR', 'Rhône', 251),
(1388, 'pt_BR', 'Haute-Saône', 252),
(1389, 'pt_BR', 'Saône-et-Loire', 253),
(1390, 'pt_BR', 'Sarthe', 25),
(1391, 'pt_BR', 'Savoie', 255),
(1392, 'pt_BR', 'Alta Sabóia', 256),
(1393, 'pt_BR', 'Paris', 257),
(1394, 'pt_BR', 'Seine-Maritime', 258),
(1395, 'pt_BR', 'Seine-et-Marne', 259),
(1396, 'pt_BR', 'Yvelines', 260),
(1397, 'pt_BR', 'Deux-Sèvres', 261),
(1398, 'pt_BR', 'Somme', 262),
(1399, 'pt_BR', 'Tarn', 263),
(1400, 'pt_BR', 'Tarn-et-Garonne', 264),
(1401, 'pt_BR', 'Var', 265),
(1402, 'pt_BR', 'Vaucluse', 266),
(1403, 'pt_BR', 'Compradora', 267),
(1404, 'pt_BR', 'Vienne', 268),
(1405, 'pt_BR', 'Haute-Vienne', 269),
(1406, 'pt_BR', 'Vosges', 270),
(1407, 'pt_BR', 'Yonne', 271),
(1408, 'pt_BR', 'Território de Belfort', 272),
(1409, 'pt_BR', 'Essonne', 273),
(1410, 'pt_BR', 'Altos do Sena', 274),
(1411, 'pt_BR', 'Seine-Saint-Denis', 275),
(1412, 'pt_BR', 'Val-de-Marne', 276),
(1413, 'pt_BR', 'Val-d\'Oise', 277),
(1414, 'pt_BR', 'Alba', 278),
(1415, 'pt_BR', 'Arad', 279),
(1416, 'pt_BR', 'Arges', 280),
(1417, 'pt_BR', 'Bacau', 281),
(1418, 'pt_BR', 'Bihor', 282),
(1419, 'pt_BR', 'Bistrita-Nasaud', 283),
(1420, 'pt_BR', 'Botosani', 284),
(1421, 'pt_BR', 'Brașov', 285),
(1422, 'pt_BR', 'Braila', 286),
(1423, 'pt_BR', 'Bucareste', 287),
(1424, 'pt_BR', 'Buzau', 288),
(1425, 'pt_BR', 'Caras-Severin', 289),
(1426, 'pt_BR', 'Călărași', 290),
(1427, 'pt_BR', 'Cluj', 291),
(1428, 'pt_BR', 'Constanta', 292),
(1429, 'pt_BR', 'Covasna', 29),
(1430, 'pt_BR', 'Dambovita', 294),
(1431, 'pt_BR', 'Dolj', 295),
(1432, 'pt_BR', 'Galati', 296),
(1433, 'pt_BR', 'Giurgiu', 297),
(1434, 'pt_BR', 'Gorj', 298),
(1435, 'pt_BR', 'Harghita', 299),
(1436, 'pt_BR', 'Hunedoara', 300),
(1437, 'pt_BR', 'Ialomita', 301),
(1438, 'pt_BR', 'Iasi', 302),
(1439, 'pt_BR', 'Ilfov', 303),
(1440, 'pt_BR', 'Maramures', 304),
(1441, 'pt_BR', 'Maramures', 305),
(1442, 'pt_BR', 'Mures', 306),
(1443, 'pt_BR', 'alemão', 307),
(1444, 'pt_BR', 'Olt', 308),
(1445, 'pt_BR', 'Prahova', 309),
(1446, 'pt_BR', 'Satu-Mare', 310),
(1447, 'pt_BR', 'Salaj', 311),
(1448, 'pt_BR', 'Sibiu', 312),
(1449, 'pt_BR', 'Suceava', 313),
(1450, 'pt_BR', 'Teleorman', 314),
(1451, 'pt_BR', 'Timis', 315),
(1452, 'pt_BR', 'Tulcea', 316),
(1453, 'pt_BR', 'Vaslui', 317),
(1454, 'pt_BR', 'dale', 318),
(1455, 'pt_BR', 'Vrancea', 319),
(1456, 'pt_BR', 'Lappi', 320),
(1457, 'pt_BR', 'Pohjois-Pohjanmaa', 321),
(1458, 'pt_BR', 'Kainuu', 322),
(1459, 'pt_BR', 'Pohjois-Karjala', 323),
(1460, 'pt_BR', 'Pohjois-Savo', 324),
(1461, 'pt_BR', 'Sul Savo', 325),
(1462, 'pt_BR', 'Ostrobothnia do sul', 326),
(1463, 'pt_BR', 'Pohjanmaa', 327),
(1464, 'pt_BR', 'Pirkanmaa', 328),
(1465, 'pt_BR', 'Satakunta', 329),
(1466, 'pt_BR', 'Keski-Pohjanmaa', 330),
(1467, 'pt_BR', 'Keski-Suomi', 331),
(1468, 'pt_BR', 'Varsinais-Suomi', 332),
(1469, 'pt_BR', 'Carélia do Sul', 333),
(1470, 'pt_BR', 'Päijät-Häme', 334),
(1471, 'pt_BR', 'Kanta-Häme', 335),
(1472, 'pt_BR', 'Uusimaa', 336),
(1473, 'pt_BR', 'Uusimaa', 337),
(1474, 'pt_BR', 'Kymenlaakso', 338),
(1475, 'pt_BR', 'Ahvenanmaa', 339),
(1476, 'pt_BR', 'Harjumaa', 340),
(1477, 'pt_BR', 'Hiiumaa', 341),
(1478, 'pt_BR', 'Ida-Virumaa', 342),
(1479, 'pt_BR', 'Condado de Jõgeva', 343),
(1480, 'pt_BR', 'Condado de Järva', 344),
(1481, 'pt_BR', 'Läänemaa', 345),
(1482, 'pt_BR', 'Condado de Lääne-Viru', 346),
(1483, 'pt_BR', 'Condado de Põlva', 347),
(1484, 'pt_BR', 'Condado de Pärnu', 348),
(1485, 'pt_BR', 'Raplamaa', 349),
(1486, 'pt_BR', 'Saaremaa', 350),
(1487, 'pt_BR', 'Tartumaa', 351),
(1488, 'pt_BR', 'Valgamaa', 352),
(1489, 'pt_BR', 'Viljandimaa', 353),
(1490, 'pt_BR', 'Võrumaa', 354),
(1491, 'pt_BR', 'Daugavpils', 355),
(1492, 'pt_BR', 'Jelgava', 356),
(1493, 'pt_BR', 'Jekabpils', 357),
(1494, 'pt_BR', 'Jurmala', 358),
(1495, 'pt_BR', 'Liepaja', 359),
(1496, 'pt_BR', 'Liepaja County', 360),
(1497, 'pt_BR', 'Rezekne', 361),
(1498, 'pt_BR', 'Riga', 362),
(1499, 'pt_BR', 'Condado de Riga', 363),
(1500, 'pt_BR', 'Valmiera', 364),
(1501, 'pt_BR', 'Ventspils', 365),
(1502, 'pt_BR', 'Aglonas novads', 366),
(1503, 'pt_BR', 'Aizkraukles novads', 367),
(1504, 'pt_BR', 'Aizputes novads', 368),
(1505, 'pt_BR', 'Condado de Akniste', 369),
(1506, 'pt_BR', 'Alojas novads', 370),
(1507, 'pt_BR', 'Alsungas novads', 371),
(1508, 'pt_BR', 'Aluksne County', 372),
(1509, 'pt_BR', 'Amatas novads', 373),
(1510, 'pt_BR', 'Macacos novads', 374),
(1511, 'pt_BR', 'Auces novads', 375),
(1512, 'pt_BR', 'Babītes novads', 376),
(1513, 'pt_BR', 'Baldones novads', 377),
(1514, 'pt_BR', 'Baltinavas novads', 378),
(1515, 'pt_BR', 'Balvu novads', 379),
(1516, 'pt_BR', 'Bauskas novads', 380),
(1517, 'pt_BR', 'Condado de Beverina', 381),
(1518, 'pt_BR', 'Condado de Broceni', 382),
(1519, 'pt_BR', 'Burtnieku novads', 383),
(1520, 'pt_BR', 'Carnikavas novads', 384),
(1521, 'pt_BR', 'Cesvaines novads', 385),
(1522, 'pt_BR', 'Ciblas novads', 386),
(1523, 'pt_BR', 'Cesis county', 387),
(1524, 'pt_BR', 'Dagdas novads', 388),
(1525, 'pt_BR', 'Daugavpils novads', 389),
(1526, 'pt_BR', 'Dobeles novads', 390),
(1527, 'pt_BR', 'Dundagas novads', 391),
(1528, 'pt_BR', 'Durbes novads', 392),
(1529, 'pt_BR', 'Engad novads', 393),
(1530, 'pt_BR', 'Garkalnes novads', 394),
(1531, 'pt_BR', 'O condado de Grobiņa', 395),
(1532, 'pt_BR', 'Gulbenes novads', 396),
(1533, 'pt_BR', 'Iecavas novads', 397),
(1534, 'pt_BR', 'Ikskile county', 398),
(1535, 'pt_BR', 'Ilūkste county', 399),
(1536, 'pt_BR', 'Condado de Inčukalns', 400),
(1537, 'pt_BR', 'Jaunjelgavas novads', 401),
(1538, 'pt_BR', 'Jaunpiebalgas novads', 402),
(1539, 'pt_BR', 'Jaunpils novads', 403),
(1540, 'pt_BR', 'Jelgavas novads', 404),
(1541, 'pt_BR', 'Jekabpils county', 405),
(1542, 'pt_BR', 'Kandavas novads', 406),
(1543, 'pt_BR', 'Kokneses novads', 407),
(1544, 'pt_BR', 'Krimuldas novads', 408),
(1545, 'pt_BR', 'Krustpils novads', 409),
(1546, 'pt_BR', 'Condado de Kraslava', 410),
(1547, 'pt_BR', 'Condado de Kuldīga', 411),
(1548, 'pt_BR', 'Condado de Kārsava', 412),
(1549, 'pt_BR', 'Condado de Lielvarde', 413),
(1550, 'pt_BR', 'Condado de Limbaži', 414),
(1551, 'pt_BR', 'O distrito de Lubāna', 415),
(1552, 'pt_BR', 'Ludzas novads', 416),
(1553, 'pt_BR', 'Ligatne county', 417),
(1554, 'pt_BR', 'Livani county', 418),
(1555, 'pt_BR', 'Madonas novads', 419),
(1556, 'pt_BR', 'Mazsalacas novads', 420),
(1557, 'pt_BR', 'Mālpils county', 421),
(1558, 'pt_BR', 'Mārupe county', 422),
(1559, 'pt_BR', 'O condado de Naukšēni', 423),
(1560, 'pt_BR', 'Neretas novads', 424),
(1561, 'pt_BR', 'Nīca county', 425),
(1562, 'pt_BR', 'Ogres novads', 426),
(1563, 'pt_BR', 'Olaines novads', 427),
(1564, 'pt_BR', 'Ozolnieku novads', 428),
(1565, 'pt_BR', 'Preiļi county', 429),
(1566, 'pt_BR', 'Priekules novads', 430),
(1567, 'pt_BR', 'Condado de Priekuļi', 431),
(1568, 'pt_BR', 'Moving county', 432),
(1569, 'pt_BR', 'Condado de Pavilosta', 433),
(1570, 'pt_BR', 'Condado de Plavinas', 434),
(1571, 'pt_BR', 'Raunas novads', 435),
(1572, 'pt_BR', 'Condado de Riebiņi', 436),
(1573, 'pt_BR', 'Rojas novads', 437),
(1574, 'pt_BR', 'Ropazi county', 438),
(1575, 'pt_BR', 'Rucavas novads', 439),
(1576, 'pt_BR', 'Rugāji county', 440),
(1577, 'pt_BR', 'Rundāle county', 441),
(1578, 'pt_BR', 'Rezekne county', 442),
(1579, 'pt_BR', 'Rūjiena county', 443),
(1580, 'pt_BR', 'O município de Salacgriva', 444),
(1581, 'pt_BR', 'Salas novads', 445),
(1582, 'pt_BR', 'Salaspils novads', 446),
(1583, 'pt_BR', 'Saldus novads', 447),
(1584, 'pt_BR', 'Saulkrastu novads', 448),
(1585, 'pt_BR', 'Siguldas novads', 449),
(1586, 'pt_BR', 'Skrundas novads', 450),
(1587, 'pt_BR', 'Skrīveri county', 451),
(1588, 'pt_BR', 'Smiltenes novads', 452),
(1589, 'pt_BR', 'Condado de Stopini', 453),
(1590, 'pt_BR', 'Condado de Strenči', 454),
(1591, 'pt_BR', 'Região de semeadura', 455),
(1592, 'pt_BR', 'Talsu novads', 456),
(1593, 'pt_BR', 'Tukuma novads', 457),
(1594, 'pt_BR', 'Condado de Tērvete', 458),
(1595, 'pt_BR', 'O condado de Vaiņode', 459),
(1596, 'pt_BR', 'Valkas novads', 460),
(1597, 'pt_BR', 'Valmieras novads', 461),
(1598, 'pt_BR', 'Varaklani county', 462);
INSERT INTO `bgwycountry_state_translations` (`id`, `locale`, `default_name`, `country_state_id`) VALUES
(1599, 'pt_BR', 'Vecpiebalgas novads', 463),
(1600, 'pt_BR', 'Vecumnieku novads', 464),
(1601, 'pt_BR', 'Ventspils novads', 465),
(1602, 'pt_BR', 'Condado de Viesite', 466),
(1603, 'pt_BR', 'Condado de Vilaka', 467),
(1604, 'pt_BR', 'Vilani county', 468),
(1605, 'pt_BR', 'Condado de Varkava', 469),
(1606, 'pt_BR', 'Zilupes novads', 470),
(1607, 'pt_BR', 'Adazi county', 471),
(1608, 'pt_BR', 'Erglu county', 472),
(1609, 'pt_BR', 'Kegums county', 473),
(1610, 'pt_BR', 'Kekava county', 474),
(1611, 'pt_BR', 'Alytaus Apskritis', 475),
(1612, 'pt_BR', 'Kauno Apskritis', 476),
(1613, 'pt_BR', 'Condado de Klaipeda', 477),
(1614, 'pt_BR', 'Marijampolė county', 478),
(1615, 'pt_BR', 'Panevezys county', 479),
(1616, 'pt_BR', 'Siauliai county', 480),
(1617, 'pt_BR', 'Taurage county', 481),
(1618, 'pt_BR', 'Telšiai county', 482),
(1619, 'pt_BR', 'Utenos Apskritis', 483),
(1620, 'pt_BR', 'Vilniaus Apskritis', 484),
(1621, 'pt_BR', 'Acre', 485),
(1622, 'pt_BR', 'Alagoas', 486),
(1623, 'pt_BR', 'Amapá', 487),
(1624, 'pt_BR', 'Amazonas', 488),
(1625, 'pt_BR', 'Bahia', 489),
(1626, 'pt_BR', 'Ceará', 490),
(1627, 'pt_BR', 'Espírito Santo', 491),
(1628, 'pt_BR', 'Goiás', 492),
(1629, 'pt_BR', 'Maranhão', 493),
(1630, 'pt_BR', 'Mato Grosso', 494),
(1631, 'pt_BR', 'Mato Grosso do Sul', 495),
(1632, 'pt_BR', 'Minas Gerais', 496),
(1633, 'pt_BR', 'Pará', 497),
(1634, 'pt_BR', 'Paraíba', 498),
(1635, 'pt_BR', 'Paraná', 499),
(1636, 'pt_BR', 'Pernambuco', 500),
(1637, 'pt_BR', 'Piauí', 501),
(1638, 'pt_BR', 'Rio de Janeiro', 502),
(1639, 'pt_BR', 'Rio Grande do Norte', 503),
(1640, 'pt_BR', 'Rio Grande do Sul', 504),
(1641, 'pt_BR', 'Rondônia', 505),
(1642, 'pt_BR', 'Roraima', 506),
(1643, 'pt_BR', 'Santa Catarina', 507),
(1644, 'pt_BR', 'São Paulo', 508),
(1645, 'pt_BR', 'Sergipe', 509),
(1646, 'pt_BR', 'Tocantins', 510),
(1647, 'pt_BR', 'Distrito Federal', 511),
(1648, 'pt_BR', 'Condado de Zagreb', 512),
(1649, 'pt_BR', 'Condado de Krapina-Zagorje', 513),
(1650, 'pt_BR', 'Condado de Sisak-Moslavina', 514),
(1651, 'pt_BR', 'Condado de Karlovac', 515),
(1652, 'pt_BR', 'Concelho de Varaždin', 516),
(1653, 'pt_BR', 'Condado de Koprivnica-Križevci', 517),
(1654, 'pt_BR', 'Condado de Bjelovar-Bilogora', 518),
(1655, 'pt_BR', 'Condado de Primorje-Gorski kotar', 519),
(1656, 'pt_BR', 'Condado de Lika-Senj', 520),
(1657, 'pt_BR', 'Condado de Virovitica-Podravina', 521),
(1658, 'pt_BR', 'Condado de Požega-Slavonia', 522),
(1659, 'pt_BR', 'Condado de Brod-Posavina', 523),
(1660, 'pt_BR', 'Condado de Zadar', 524),
(1661, 'pt_BR', 'Condado de Osijek-Baranja', 525),
(1662, 'pt_BR', 'Condado de Šibenik-Knin', 526),
(1663, 'pt_BR', 'Condado de Vukovar-Srijem', 527),
(1664, 'pt_BR', 'Condado de Split-Dalmácia', 528),
(1665, 'pt_BR', 'Condado de Ístria', 529),
(1666, 'pt_BR', 'Condado de Dubrovnik-Neretva', 530),
(1667, 'pt_BR', 'Međimurska županija', 531),
(1668, 'pt_BR', 'Grad Zagreb', 532),
(1669, 'pt_BR', 'Ilhas Andaman e Nicobar', 533),
(1670, 'pt_BR', 'Andhra Pradesh', 534),
(1671, 'pt_BR', 'Arunachal Pradesh', 535),
(1672, 'pt_BR', 'Assam', 536),
(1673, 'pt_BR', 'Bihar', 537),
(1674, 'pt_BR', 'Chandigarh', 538),
(1675, 'pt_BR', 'Chhattisgarh', 539),
(1676, 'pt_BR', 'Dadra e Nagar Haveli', 540),
(1677, 'pt_BR', 'Daman e Diu', 541),
(1678, 'pt_BR', 'Delhi', 542),
(1679, 'pt_BR', 'Goa', 543),
(1680, 'pt_BR', 'Gujarat', 544),
(1681, 'pt_BR', 'Haryana', 545),
(1682, 'pt_BR', 'Himachal Pradesh', 546),
(1683, 'pt_BR', 'Jammu e Caxemira', 547),
(1684, 'pt_BR', 'Jharkhand', 548),
(1685, 'pt_BR', 'Karnataka', 549),
(1686, 'pt_BR', 'Kerala', 550),
(1687, 'pt_BR', 'Lakshadweep', 551),
(1688, 'pt_BR', 'Madhya Pradesh', 552),
(1689, 'pt_BR', 'Maharashtra', 553),
(1690, 'pt_BR', 'Manipur', 554),
(1691, 'pt_BR', 'Meghalaya', 555),
(1692, 'pt_BR', 'Mizoram', 556),
(1693, 'pt_BR', 'Nagaland', 557),
(1694, 'pt_BR', 'Odisha', 558),
(1695, 'pt_BR', 'Puducherry', 559),
(1696, 'pt_BR', 'Punjab', 560),
(1697, 'pt_BR', 'Rajasthan', 561),
(1698, 'pt_BR', 'Sikkim', 562),
(1699, 'pt_BR', 'Tamil Nadu', 563),
(1700, 'pt_BR', 'Telangana', 564),
(1701, 'pt_BR', 'Tripura', 565),
(1702, 'pt_BR', 'Uttar Pradesh', 566),
(1703, 'pt_BR', 'Uttarakhand', 567),
(1704, 'pt_BR', 'Bengala Ocidental', 568);

-- --------------------------------------------------------

--
-- Table structure for table `bgwycountry_translations`
--

CREATE TABLE `bgwycountry_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `bgwycountry_translations`
--

INSERT INTO `bgwycountry_translations` (`id`, `locale`, `name`, `country_id`) VALUES
(1, 'ar', 'أفغانستان', 1),
(2, 'ar', 'جزر آلاند', 2),
(3, 'ar', 'ألبانيا', 3),
(4, 'ar', 'الجزائر', 4),
(5, 'ar', 'ساموا الأمريكية', 5),
(6, 'ar', 'أندورا', 6),
(7, 'ar', 'أنغولا', 7),
(8, 'ar', 'أنغيلا', 8),
(9, 'ar', 'القارة القطبية الجنوبية', 9),
(10, 'ar', 'أنتيغوا وبربودا', 10),
(11, 'ar', 'الأرجنتين', 11),
(12, 'ar', 'أرمينيا', 12),
(13, 'ar', 'أروبا', 13),
(14, 'ar', 'جزيرة الصعود', 14),
(15, 'ar', 'أستراليا', 15),
(16, 'ar', 'النمسا', 16),
(17, 'ar', 'أذربيجان', 17),
(18, 'ar', 'الباهاما', 18),
(19, 'ar', 'البحرين', 19),
(20, 'ar', 'بنغلاديش', 20),
(21, 'ar', 'بربادوس', 21),
(22, 'ar', 'روسيا البيضاء', 22),
(23, 'ar', 'بلجيكا', 23),
(24, 'ar', 'بليز', 24),
(25, 'ar', 'بنين', 25),
(26, 'ar', 'برمودا', 26),
(27, 'ar', 'بوتان', 27),
(28, 'ar', 'بوليفيا', 28),
(29, 'ar', 'البوسنة والهرسك', 29),
(30, 'ar', 'بوتسوانا', 30),
(31, 'ar', 'البرازيل', 31),
(32, 'ar', 'إقليم المحيط البريطاني الهندي', 32),
(33, 'ar', 'جزر فيرجن البريطانية', 33),
(34, 'ar', 'بروناي', 34),
(35, 'ar', 'بلغاريا', 35),
(36, 'ar', 'بوركينا فاسو', 36),
(37, 'ar', 'بوروندي', 37),
(38, 'ar', 'كمبوديا', 38),
(39, 'ar', 'الكاميرون', 39),
(40, 'ar', 'كندا', 40),
(41, 'ar', 'جزر الكناري', 41),
(42, 'ar', 'الرأس الأخضر', 42),
(43, 'ar', 'الكاريبي هولندا', 43),
(44, 'ar', 'جزر كايمان', 44),
(45, 'ar', 'جمهورية افريقيا الوسطى', 45),
(46, 'ar', 'سبتة ومليلية', 46),
(47, 'ar', 'تشاد', 47),
(48, 'ar', 'تشيلي', 48),
(49, 'ar', 'الصين', 49),
(50, 'ar', 'جزيرة الكريسماس', 50),
(51, 'ar', 'جزر كوكوس (كيلينغ)', 51),
(52, 'ar', 'كولومبيا', 52),
(53, 'ar', 'جزر القمر', 53),
(54, 'ar', 'الكونغو - برازافيل', 54),
(55, 'ar', 'الكونغو - كينشاسا', 55),
(56, 'ar', 'جزر كوك', 56),
(57, 'ar', 'كوستاريكا', 57),
(58, 'ar', 'ساحل العاج', 58),
(59, 'ar', 'كرواتيا', 59),
(60, 'ar', 'كوبا', 60),
(61, 'ar', 'كوراساو', 61),
(62, 'ar', 'قبرص', 62),
(63, 'ar', 'التشيك', 63),
(64, 'ar', 'الدنمارك', 64),
(65, 'ar', 'دييغو غارسيا', 65),
(66, 'ar', 'جيبوتي', 66),
(67, 'ar', 'دومينيكا', 67),
(68, 'ar', 'جمهورية الدومنيكان', 68),
(69, 'ar', 'الإكوادور', 69),
(70, 'ar', 'مصر', 70),
(71, 'ar', 'السلفادور', 71),
(72, 'ar', 'غينيا الإستوائية', 72),
(73, 'ar', 'إريتريا', 73),
(74, 'ar', 'استونيا', 74),
(75, 'ar', 'أثيوبيا', 75),
(76, 'ar', 'منطقة اليورو', 76),
(77, 'ar', 'جزر فوكلاند', 77),
(78, 'ar', 'جزر فاروس', 78),
(79, 'ar', 'فيجي', 79),
(80, 'ar', 'فنلندا', 80),
(81, 'ar', 'فرنسا', 81),
(82, 'ar', 'غيانا الفرنسية', 82),
(83, 'ar', 'بولينيزيا الفرنسية', 83),
(84, 'ar', 'المناطق الجنوبية لفرنسا', 84),
(85, 'ar', 'الغابون', 85),
(86, 'ar', 'غامبيا', 86),
(87, 'ar', 'جورجيا', 87),
(88, 'ar', 'ألمانيا', 88),
(89, 'ar', 'غانا', 89),
(90, 'ar', 'جبل طارق', 90),
(91, 'ar', 'اليونان', 91),
(92, 'ar', 'الأرض الخضراء', 92),
(93, 'ar', 'غرينادا', 93),
(94, 'ar', 'جوادلوب', 94),
(95, 'ar', 'غوام', 95),
(96, 'ar', 'غواتيمالا', 96),
(97, 'ar', 'غيرنسي', 97),
(98, 'ar', 'غينيا', 98),
(99, 'ar', 'غينيا بيساو', 99),
(100, 'ar', 'غيانا', 100),
(101, 'ar', 'هايتي', 101),
(102, 'ar', 'هندوراس', 102),
(103, 'ar', 'هونج كونج SAR الصين', 103),
(104, 'ar', 'هنغاريا', 104),
(105, 'ar', 'أيسلندا', 105),
(106, 'ar', 'الهند', 106),
(107, 'ar', 'إندونيسيا', 107),
(108, 'ar', 'إيران', 108),
(109, 'ar', 'العراق', 109),
(110, 'ar', 'أيرلندا', 110),
(111, 'ar', 'جزيرة آيل أوف مان', 111),
(112, 'ar', 'إسرائيل', 112),
(113, 'ar', 'إيطاليا', 113),
(114, 'ar', 'جامايكا', 114),
(115, 'ar', 'اليابان', 115),
(116, 'ar', 'جيرسي', 116),
(117, 'ar', 'الأردن', 117),
(118, 'ar', 'كازاخستان', 118),
(119, 'ar', 'كينيا', 119),
(120, 'ar', 'كيريباس', 120),
(121, 'ar', 'كوسوفو', 121),
(122, 'ar', 'الكويت', 122),
(123, 'ar', 'قرغيزستان', 123),
(124, 'ar', 'لاوس', 124),
(125, 'ar', 'لاتفيا', 125),
(126, 'ar', 'لبنان', 126),
(127, 'ar', 'ليسوتو', 127),
(128, 'ar', 'ليبيريا', 128),
(129, 'ar', 'ليبيا', 129),
(130, 'ar', 'ليختنشتاين', 130),
(131, 'ar', 'ليتوانيا', 131),
(132, 'ar', 'لوكسمبورغ', 132),
(133, 'ar', 'ماكاو SAR الصين', 133),
(134, 'ar', 'مقدونيا', 134),
(135, 'ar', 'مدغشقر', 135),
(136, 'ar', 'مالاوي', 136),
(137, 'ar', 'ماليزيا', 137),
(138, 'ar', 'جزر المالديف', 138),
(139, 'ar', 'مالي', 139),
(140, 'ar', 'مالطا', 140),
(141, 'ar', 'جزر مارشال', 141),
(142, 'ar', 'مارتينيك', 142),
(143, 'ar', 'موريتانيا', 143),
(144, 'ar', 'موريشيوس', 144),
(145, 'ar', 'ضائع', 145),
(146, 'ar', 'المكسيك', 146),
(147, 'ar', 'ميكرونيزيا', 147),
(148, 'ar', 'مولدوفا', 148),
(149, 'ar', 'موناكو', 149),
(150, 'ar', 'منغوليا', 150),
(151, 'ar', 'الجبل الأسود', 151),
(152, 'ar', 'مونتسيرات', 152),
(153, 'ar', 'المغرب', 153),
(154, 'ar', 'موزمبيق', 154),
(155, 'ar', 'ميانمار (بورما)', 155),
(156, 'ar', 'ناميبيا', 156),
(157, 'ar', 'ناورو', 157),
(158, 'ar', 'نيبال', 158),
(159, 'ar', 'نيبال', 159),
(160, 'ar', 'كاليدونيا الجديدة', 160),
(161, 'ar', 'نيوزيلاندا', 161),
(162, 'ar', 'نيكاراغوا', 162),
(163, 'ar', 'النيجر', 163),
(164, 'ar', 'نيجيريا', 164),
(165, 'ar', 'نيوي', 165),
(166, 'ar', 'جزيرة نورفولك', 166),
(167, 'ar', 'كوريا الشماليه', 167),
(168, 'ar', 'جزر مريانا الشمالية', 168),
(169, 'ar', 'النرويج', 169),
(170, 'ar', 'سلطنة عمان', 170),
(171, 'ar', 'باكستان', 171),
(172, 'ar', 'بالاو', 172),
(173, 'ar', 'الاراضي الفلسطينية', 173),
(174, 'ar', 'بناما', 174),
(175, 'ar', 'بابوا غينيا الجديدة', 175),
(176, 'ar', 'باراغواي', 176),
(177, 'ar', 'بيرو', 177),
(178, 'ar', 'الفلبين', 178),
(179, 'ar', 'جزر بيتكيرن', 179),
(180, 'ar', 'بولندا', 180),
(181, 'ar', 'البرتغال', 181),
(182, 'ar', 'بورتوريكو', 182),
(183, 'ar', 'دولة قطر', 183),
(184, 'ar', 'جمع شمل', 184),
(185, 'ar', 'رومانيا', 185),
(186, 'ar', 'روسيا', 186),
(187, 'ar', 'رواندا', 187),
(188, 'ar', 'ساموا', 188),
(189, 'ar', 'سان مارينو', 189),
(190, 'ar', 'سانت كيتس ونيفيس', 190),
(191, 'ar', 'المملكة العربية السعودية', 191),
(192, 'ar', 'السنغال', 192),
(193, 'ar', 'صربيا', 193),
(194, 'ar', 'سيشيل', 194),
(195, 'ar', 'سيراليون', 195),
(196, 'ar', 'سنغافورة', 196),
(197, 'ar', 'سينت مارتن', 197),
(198, 'ar', 'سلوفاكيا', 198),
(199, 'ar', 'سلوفينيا', 199),
(200, 'ar', 'جزر سليمان', 200),
(201, 'ar', 'الصومال', 201),
(202, 'ar', 'جنوب أفريقيا', 202),
(203, 'ar', 'جورجيا الجنوبية وجزر ساندويتش الجنوبية', 203),
(204, 'ar', 'كوريا الجنوبية', 204),
(205, 'ar', 'جنوب السودان', 205),
(206, 'ar', 'إسبانيا', 206),
(207, 'ar', 'سيريلانكا', 207),
(208, 'ar', 'سانت بارتيليمي', 208),
(209, 'ar', 'سانت هيلانة', 209),
(210, 'ar', 'سانت كيتس ونيفيس', 210),
(211, 'ar', 'شارع لوسيا', 211),
(212, 'ar', 'سانت مارتن', 212),
(213, 'ar', 'سانت بيير وميكلون', 213),
(214, 'ar', 'سانت فنسنت وجزر غرينادين', 214),
(215, 'ar', 'السودان', 215),
(216, 'ar', 'سورينام', 216),
(217, 'ar', 'سفالبارد وجان ماين', 217),
(218, 'ar', 'سوازيلاند', 218),
(219, 'ar', 'السويد', 219),
(220, 'ar', 'سويسرا', 220),
(221, 'ar', 'سوريا', 221),
(222, 'ar', 'تايوان', 222),
(223, 'ar', 'طاجيكستان', 223),
(224, 'ar', 'تنزانيا', 224),
(225, 'ar', 'تايلاند', 225),
(226, 'ar', 'تيمور', 226),
(227, 'ar', 'توجو', 227),
(228, 'ar', 'توكيلاو', 228),
(229, 'ar', 'تونغا', 229),
(230, 'ar', 'ترينيداد وتوباغو', 230),
(231, 'ar', 'تريستان دا كونها', 231),
(232, 'ar', 'تونس', 232),
(233, 'ar', 'ديك رومي', 233),
(234, 'ar', 'تركمانستان', 234),
(235, 'ar', 'جزر تركس وكايكوس', 235),
(236, 'ar', 'توفالو', 236),
(237, 'ar', 'جزر الولايات المتحدة البعيدة', 237),
(238, 'ar', 'جزر فيرجن الأمريكية', 238),
(239, 'ar', 'أوغندا', 239),
(240, 'ar', 'أوكرانيا', 240),
(241, 'ar', 'الإمارات العربية المتحدة', 241),
(242, 'ar', 'المملكة المتحدة', 242),
(243, 'ar', 'الأمم المتحدة', 243),
(244, 'ar', 'الولايات المتحدة الأمريكية', 244),
(245, 'ar', 'أوروغواي', 245),
(246, 'ar', 'أوزبكستان', 246),
(247, 'ar', 'فانواتو', 247),
(248, 'ar', 'مدينة الفاتيكان', 248),
(249, 'ar', 'فنزويلا', 249),
(250, 'ar', 'فيتنام', 250),
(251, 'ar', 'واليس وفوتونا', 251),
(252, 'ar', 'الصحراء الغربية', 252),
(253, 'ar', 'اليمن', 253),
(254, 'ar', 'زامبيا', 254),
(255, 'ar', 'زيمبابوي', 255),
(256, 'fa', 'افغانستان', 1),
(257, 'fa', 'جزایر الند', 2),
(258, 'fa', 'آلبانی', 3),
(259, 'fa', 'الجزایر', 4),
(260, 'fa', 'ساموآ آمریکایی', 5),
(261, 'fa', 'آندورا', 6),
(262, 'fa', 'آنگولا', 7),
(263, 'fa', 'آنگولا', 8),
(264, 'fa', 'جنوبگان', 9),
(265, 'fa', 'آنتیگوا و باربودا', 10),
(266, 'fa', 'آرژانتین', 11),
(267, 'fa', 'ارمنستان', 12),
(268, 'fa', 'آروبا', 13),
(269, 'fa', 'جزیره صعود', 14),
(270, 'fa', 'استرالیا', 15),
(271, 'fa', 'اتریش', 16),
(272, 'fa', 'آذربایجان', 17),
(273, 'fa', 'باهاما', 18),
(274, 'fa', 'بحرین', 19),
(275, 'fa', 'بنگلادش', 20),
(276, 'fa', 'باربادوس', 21),
(277, 'fa', 'بلاروس', 22),
(278, 'fa', 'بلژیک', 23),
(279, 'fa', 'بلژیک', 24),
(280, 'fa', 'بنین', 25),
(281, 'fa', 'برمودا', 26),
(282, 'fa', 'بوتان', 27),
(283, 'fa', 'بولیوی', 28),
(284, 'fa', 'بوسنی و هرزگوین', 29),
(285, 'fa', 'بوتسوانا', 30),
(286, 'fa', 'برزیل', 31),
(287, 'fa', 'قلمرو اقیانوس هند انگلیس', 32),
(288, 'fa', 'جزایر ویرجین انگلیس', 33),
(289, 'fa', 'برونئی', 34),
(290, 'fa', 'بلغارستان', 35),
(291, 'fa', 'بورکینا فاسو', 36),
(292, 'fa', 'بوروندی', 37),
(293, 'fa', 'کامبوج', 38),
(294, 'fa', 'کامرون', 39),
(295, 'fa', 'کانادا', 40),
(296, 'fa', 'جزایر قناری', 41),
(297, 'fa', 'کیپ ورد', 42),
(298, 'fa', 'کارائیب هلند', 43),
(299, 'fa', 'Cayman Islands', 44),
(300, 'fa', 'جمهوری آفریقای مرکزی', 45),
(301, 'fa', 'سوتا و ملیلا', 46),
(302, 'fa', 'چاد', 47),
(303, 'fa', 'شیلی', 48),
(304, 'fa', 'چین', 49),
(305, 'fa', 'جزیره کریسمس', 50),
(306, 'fa', 'جزایر کوکو (Keeling)', 51),
(307, 'fa', 'کلمبیا', 52),
(308, 'fa', 'کومور', 53),
(309, 'fa', 'کنگو - برزاویل', 54),
(310, 'fa', 'کنگو - کینشاسا', 55),
(311, 'fa', 'جزایر کوک', 56),
(312, 'fa', 'کاستاریکا', 57),
(313, 'fa', 'ساحل عاج', 58),
(314, 'fa', 'کرواسی', 59),
(315, 'fa', 'کوبا', 60),
(316, 'fa', 'کوراسائو', 61),
(317, 'fa', 'قبرس', 62),
(318, 'fa', 'چک', 63),
(319, 'fa', 'دانمارک', 64),
(320, 'fa', 'دیگو گارسیا', 65),
(321, 'fa', 'جیبوتی', 66),
(322, 'fa', 'دومینیکا', 67),
(323, 'fa', 'جمهوری دومینیکن', 68),
(324, 'fa', 'اکوادور', 69),
(325, 'fa', 'مصر', 70),
(326, 'fa', 'السالوادور', 71),
(327, 'fa', 'گینه استوایی', 72),
(328, 'fa', 'اریتره', 73),
(329, 'fa', 'استونی', 74),
(330, 'fa', 'اتیوپی', 75),
(331, 'fa', 'منطقه یورو', 76),
(332, 'fa', 'جزایر فالکلند', 77),
(333, 'fa', 'جزایر فارو', 78),
(334, 'fa', 'فیجی', 79),
(335, 'fa', 'فنلاند', 80),
(336, 'fa', 'فرانسه', 81),
(337, 'fa', 'گویان فرانسه', 82),
(338, 'fa', 'پلی‌نزی فرانسه', 83),
(339, 'fa', 'سرزمین های جنوبی فرانسه', 84),
(340, 'fa', 'گابن', 85),
(341, 'fa', 'گامبیا', 86),
(342, 'fa', 'جورجیا', 87),
(343, 'fa', 'آلمان', 88),
(344, 'fa', 'غنا', 89),
(345, 'fa', 'جبل الطارق', 90),
(346, 'fa', 'یونان', 91),
(347, 'fa', 'گرینلند', 92),
(348, 'fa', 'گرنادا', 93),
(349, 'fa', 'گوادلوپ', 94),
(350, 'fa', 'گوام', 95),
(351, 'fa', 'گواتمالا', 96),
(352, 'fa', 'گورنسی', 97),
(353, 'fa', 'گینه', 98),
(354, 'fa', 'گینه بیسائو', 99),
(355, 'fa', 'گویان', 100),
(356, 'fa', 'هائیتی', 101),
(357, 'fa', 'هندوراس', 102),
(358, 'fa', 'هنگ کنگ SAR چین', 103),
(359, 'fa', 'مجارستان', 104),
(360, 'fa', 'ایسلند', 105),
(361, 'fa', 'هند', 106),
(362, 'fa', 'اندونزی', 107),
(363, 'fa', 'ایران', 108),
(364, 'fa', 'عراق', 109),
(365, 'fa', 'ایرلند', 110),
(366, 'fa', 'جزیره من', 111),
(367, 'fa', 'اسرائيل', 112),
(368, 'fa', 'ایتالیا', 113),
(369, 'fa', 'جامائیکا', 114),
(370, 'fa', 'ژاپن', 115),
(371, 'fa', 'پیراهن ورزشی', 116),
(372, 'fa', 'اردن', 117),
(373, 'fa', 'قزاقستان', 118),
(374, 'fa', 'کنیا', 119),
(375, 'fa', 'کیریباتی', 120),
(376, 'fa', 'کوزوو', 121),
(377, 'fa', 'کویت', 122),
(378, 'fa', 'قرقیزستان', 123),
(379, 'fa', 'لائوس', 124),
(380, 'fa', 'لتونی', 125),
(381, 'fa', 'لبنان', 126),
(382, 'fa', 'لسوتو', 127),
(383, 'fa', 'لیبریا', 128),
(384, 'fa', 'لیبی', 129),
(385, 'fa', 'لیختن اشتاین', 130),
(386, 'fa', 'لیتوانی', 131),
(387, 'fa', 'لوکزامبورگ', 132),
(388, 'fa', 'ماکائو SAR چین', 133),
(389, 'fa', 'مقدونیه', 134),
(390, 'fa', 'ماداگاسکار', 135),
(391, 'fa', 'مالاوی', 136),
(392, 'fa', 'مالزی', 137),
(393, 'fa', 'مالدیو', 138),
(394, 'fa', 'مالی', 139),
(395, 'fa', 'مالت', 140),
(396, 'fa', 'جزایر مارشال', 141),
(397, 'fa', 'مارتینیک', 142),
(398, 'fa', 'موریتانی', 143),
(399, 'fa', 'موریس', 144),
(400, 'fa', 'گمشده', 145),
(401, 'fa', 'مکزیک', 146),
(402, 'fa', 'میکرونزی', 147),
(403, 'fa', 'مولداوی', 148),
(404, 'fa', 'موناکو', 149),
(405, 'fa', 'مغولستان', 150),
(406, 'fa', 'مونته نگرو', 151),
(407, 'fa', 'مونتسرات', 152),
(408, 'fa', 'مراکش', 153),
(409, 'fa', 'موزامبیک', 154),
(410, 'fa', 'میانمار (برمه)', 155),
(411, 'fa', 'ناميبيا', 156),
(412, 'fa', 'نائورو', 157),
(413, 'fa', 'نپال', 158),
(414, 'fa', 'هلند', 159),
(415, 'fa', 'کالدونیای جدید', 160),
(416, 'fa', 'نیوزلند', 161),
(417, 'fa', 'نیکاراگوئه', 162),
(418, 'fa', 'نیجر', 163),
(419, 'fa', 'نیجریه', 164),
(420, 'fa', 'نیو', 165),
(421, 'fa', 'جزیره نورفولک', 166),
(422, 'fa', 'کره شمالی', 167),
(423, 'fa', 'جزایر ماریانای شمالی', 168),
(424, 'fa', 'نروژ', 169),
(425, 'fa', 'عمان', 170),
(426, 'fa', 'پاکستان', 171),
(427, 'fa', 'پالائو', 172),
(428, 'fa', 'سرزمین های فلسطینی', 173),
(429, 'fa', 'پاناما', 174),
(430, 'fa', 'پاپوا گینه نو', 175),
(431, 'fa', 'پاراگوئه', 176),
(432, 'fa', 'پرو', 177),
(433, 'fa', 'فیلیپین', 178),
(434, 'fa', 'جزایر پیکریرن', 179),
(435, 'fa', 'لهستان', 180),
(436, 'fa', 'کشور پرتغال', 181),
(437, 'fa', 'پورتوریکو', 182),
(438, 'fa', 'قطر', 183),
(439, 'fa', 'تجدید دیدار', 184),
(440, 'fa', 'رومانی', 185),
(441, 'fa', 'روسیه', 186),
(442, 'fa', 'رواندا', 187),
(443, 'fa', 'ساموآ', 188),
(444, 'fa', 'سان مارینو', 189),
(445, 'fa', 'سنت کیتس و نوویس', 190),
(446, 'fa', 'عربستان سعودی', 191),
(447, 'fa', 'سنگال', 192),
(448, 'fa', 'صربستان', 193),
(449, 'fa', 'سیشل', 194),
(450, 'fa', 'سیرالئون', 195),
(451, 'fa', 'سنگاپور', 196),
(452, 'fa', 'سینت ماارتن', 197),
(453, 'fa', 'اسلواکی', 198),
(454, 'fa', 'اسلوونی', 199),
(455, 'fa', 'جزایر سلیمان', 200),
(456, 'fa', 'سومالی', 201),
(457, 'fa', 'آفریقای جنوبی', 202),
(458, 'fa', 'جزایر جورجیا جنوبی و جزایر ساندویچ جنوبی', 203),
(459, 'fa', 'کره جنوبی', 204),
(460, 'fa', 'سودان جنوبی', 205),
(461, 'fa', 'اسپانیا', 206),
(462, 'fa', 'سری لانکا', 207),
(463, 'fa', 'سنت بارتلی', 208),
(464, 'fa', 'سنت هلنا', 209),
(465, 'fa', 'سنت کیتز و نوویس', 210),
(466, 'fa', 'سنت لوسیا', 211),
(467, 'fa', 'سنت مارتین', 212),
(468, 'fa', 'سنت پیر و میکلون', 213),
(469, 'fa', 'سنت وینسنت و گرنادینها', 214),
(470, 'fa', 'سودان', 215),
(471, 'fa', 'سورینام', 216),
(472, 'fa', 'اسوالبارد و جان ماین', 217),
(473, 'fa', 'سوازیلند', 218),
(474, 'fa', 'سوئد', 219),
(475, 'fa', 'سوئیس', 220),
(476, 'fa', 'سوریه', 221),
(477, 'fa', 'تایوان', 222),
(478, 'fa', 'تاجیکستان', 223),
(479, 'fa', 'تانزانیا', 224),
(480, 'fa', 'تایلند', 225),
(481, 'fa', 'تیمور-لست', 226),
(482, 'fa', 'رفتن', 227),
(483, 'fa', 'توکلو', 228),
(484, 'fa', 'تونگا', 229),
(485, 'fa', 'ترینیداد و توباگو', 230),
(486, 'fa', 'تریستان دا کانونا', 231),
(487, 'fa', 'تونس', 232),
(488, 'fa', 'بوقلمون', 233),
(489, 'fa', 'ترکمنستان', 234),
(490, 'fa', 'جزایر تورکس و کایکوس', 235),
(491, 'fa', 'تووالو', 236),
(492, 'fa', 'جزایر دور افتاده ایالات متحده آمریکا', 237),
(493, 'fa', 'جزایر ویرجین ایالات متحده', 238),
(494, 'fa', 'اوگاندا', 239),
(495, 'fa', 'اوکراین', 240),
(496, 'fa', 'امارات متحده عربی', 241),
(497, 'fa', 'انگلستان', 242),
(498, 'fa', 'سازمان ملل', 243),
(499, 'fa', 'ایالات متحده', 244),
(500, 'fa', 'اروگوئه', 245),
(501, 'fa', 'ازبکستان', 246),
(502, 'fa', 'وانواتو', 247),
(503, 'fa', 'شهر واتیکان', 248),
(504, 'fa', 'ونزوئلا', 249),
(505, 'fa', 'ویتنام', 250),
(506, 'fa', 'والیس و فوتونا', 251),
(507, 'fa', 'صحرای غربی', 252),
(508, 'fa', 'یمن', 253),
(509, 'fa', 'زامبیا', 254),
(510, 'fa', 'زیمبابوه', 255),
(511, 'pt_BR', 'Afeganistão', 1),
(512, 'pt_BR', 'Ilhas Åland', 2),
(513, 'pt_BR', 'Albânia', 3),
(514, 'pt_BR', 'Argélia', 4),
(515, 'pt_BR', 'Samoa Americana', 5),
(516, 'pt_BR', 'Andorra', 6),
(517, 'pt_BR', 'Angola', 7),
(518, 'pt_BR', 'Angola', 8),
(519, 'pt_BR', 'Antártico', 9),
(520, 'pt_BR', 'Antígua e Barbuda', 10),
(521, 'pt_BR', 'Argentina', 11),
(522, 'pt_BR', 'Armênia', 12),
(523, 'pt_BR', 'Aruba', 13),
(524, 'pt_BR', 'Ilha de escalada', 14),
(525, 'pt_BR', 'Austrália', 15),
(526, 'pt_BR', 'Áustria', 16),
(527, 'pt_BR', 'Azerbaijão', 17),
(528, 'pt_BR', 'Bahamas', 18),
(529, 'pt_BR', 'Bahrain', 19),
(530, 'pt_BR', 'Bangladesh', 20),
(531, 'pt_BR', 'Barbados', 21),
(532, 'pt_BR', 'Bielorrússia', 22),
(533, 'pt_BR', 'Bélgica', 23),
(534, 'pt_BR', 'Bélgica', 24),
(535, 'pt_BR', 'Benin', 25),
(536, 'pt_BR', 'Bermuda', 26),
(537, 'pt_BR', 'Butão', 27),
(538, 'pt_BR', 'Bolívia', 28),
(539, 'pt_BR', 'Bósnia e Herzegovina', 29),
(540, 'pt_BR', 'Botsuana', 30),
(541, 'pt_BR', 'Brasil', 31),
(542, 'pt_BR', 'Território Britânico do Oceano Índico', 32),
(543, 'pt_BR', 'Ilhas Virgens Britânicas', 33),
(544, 'pt_BR', 'Brunei', 34),
(545, 'pt_BR', 'Bulgária', 35),
(546, 'pt_BR', 'Burkina Faso', 36),
(547, 'pt_BR', 'Burundi', 37),
(548, 'pt_BR', 'Camboja', 38),
(549, 'pt_BR', 'Camarões', 39),
(550, 'pt_BR', 'Canadá', 40),
(551, 'pt_BR', 'Ilhas Canárias', 41),
(552, 'pt_BR', 'Cabo Verde', 42),
(553, 'pt_BR', 'Holanda do Caribe', 43),
(554, 'pt_BR', 'Ilhas Cayman', 44),
(555, 'pt_BR', 'República Centro-Africana', 45),
(556, 'pt_BR', 'Ceuta e Melilla', 46),
(557, 'pt_BR', 'Chade', 47),
(558, 'pt_BR', 'Chile', 48),
(559, 'pt_BR', 'China', 49),
(560, 'pt_BR', 'Ilha Christmas', 50),
(561, 'pt_BR', 'Ilhas Cocos (Keeling)', 51),
(562, 'pt_BR', 'Colômbia', 52),
(563, 'pt_BR', 'Comores', 53),
(564, 'pt_BR', 'Congo - Brazzaville', 54),
(565, 'pt_BR', 'Congo - Kinshasa', 55),
(566, 'pt_BR', 'Ilhas Cook', 56),
(567, 'pt_BR', 'Costa Rica', 57),
(568, 'pt_BR', 'Costa do Marfim', 58),
(569, 'pt_BR', 'Croácia', 59),
(570, 'pt_BR', 'Cuba', 60),
(571, 'pt_BR', 'Curaçao', 61),
(572, 'pt_BR', 'Chipre', 62),
(573, 'pt_BR', 'Czechia', 63),
(574, 'pt_BR', 'Dinamarca', 64),
(575, 'pt_BR', 'Diego Garcia', 65),
(576, 'pt_BR', 'Djibuti', 66),
(577, 'pt_BR', 'Dominica', 67),
(578, 'pt_BR', 'República Dominicana', 68),
(579, 'pt_BR', 'Equador', 69),
(580, 'pt_BR', 'Egito', 70),
(581, 'pt_BR', 'El Salvador', 71),
(582, 'pt_BR', 'Guiné Equatorial', 72),
(583, 'pt_BR', 'Eritreia', 73),
(584, 'pt_BR', 'Estônia', 74),
(585, 'pt_BR', 'Etiópia', 75),
(586, 'pt_BR', 'Zona Euro', 76),
(587, 'pt_BR', 'Ilhas Malvinas', 77),
(588, 'pt_BR', 'Ilhas Faroe', 78),
(589, 'pt_BR', 'Fiji', 79),
(590, 'pt_BR', 'Finlândia', 80),
(591, 'pt_BR', 'França', 81),
(592, 'pt_BR', 'Guiana Francesa', 82),
(593, 'pt_BR', 'Polinésia Francesa', 83),
(594, 'pt_BR', 'Territórios Franceses do Sul', 84),
(595, 'pt_BR', 'Gabão', 85),
(596, 'pt_BR', 'Gâmbia', 86),
(597, 'pt_BR', 'Geórgia', 87),
(598, 'pt_BR', 'Alemanha', 88),
(599, 'pt_BR', 'Gana', 89),
(600, 'pt_BR', 'Gibraltar', 90),
(601, 'pt_BR', 'Grécia', 91),
(602, 'pt_BR', 'Gronelândia', 92),
(603, 'pt_BR', 'Granada', 93),
(604, 'pt_BR', 'Guadalupe', 94),
(605, 'pt_BR', 'Guam', 95),
(606, 'pt_BR', 'Guatemala', 96),
(607, 'pt_BR', 'Guernsey', 97),
(608, 'pt_BR', 'Guiné', 98),
(609, 'pt_BR', 'Guiné-Bissau', 99),
(610, 'pt_BR', 'Guiana', 100),
(611, 'pt_BR', 'Haiti', 101),
(612, 'pt_BR', 'Honduras', 102),
(613, 'pt_BR', 'Região Administrativa Especial de Hong Kong, China', 103),
(614, 'pt_BR', 'Hungria', 104),
(615, 'pt_BR', 'Islândia', 105),
(616, 'pt_BR', 'Índia', 106),
(617, 'pt_BR', 'Indonésia', 107),
(618, 'pt_BR', 'Irã', 108),
(619, 'pt_BR', 'Iraque', 109),
(620, 'pt_BR', 'Irlanda', 110),
(621, 'pt_BR', 'Ilha de Man', 111),
(622, 'pt_BR', 'Israel', 112),
(623, 'pt_BR', 'Itália', 113),
(624, 'pt_BR', 'Jamaica', 114),
(625, 'pt_BR', 'Japão', 115),
(626, 'pt_BR', 'Jersey', 116),
(627, 'pt_BR', 'Jordânia', 117),
(628, 'pt_BR', 'Cazaquistão', 118),
(629, 'pt_BR', 'Quênia', 119),
(630, 'pt_BR', 'Quiribati', 120),
(631, 'pt_BR', 'Kosovo', 121),
(632, 'pt_BR', 'Kuwait', 122),
(633, 'pt_BR', 'Quirguistão', 123),
(634, 'pt_BR', 'Laos', 124),
(635, 'pt_BR', 'Letônia', 125),
(636, 'pt_BR', 'Líbano', 126),
(637, 'pt_BR', 'Lesoto', 127),
(638, 'pt_BR', 'Libéria', 128),
(639, 'pt_BR', 'Líbia', 129),
(640, 'pt_BR', 'Liechtenstein', 130),
(641, 'pt_BR', 'Lituânia', 131),
(642, 'pt_BR', 'Luxemburgo', 132),
(643, 'pt_BR', 'Macau SAR China', 133),
(644, 'pt_BR', 'Macedônia', 134),
(645, 'pt_BR', 'Madagascar', 135),
(646, 'pt_BR', 'Malawi', 136),
(647, 'pt_BR', 'Malásia', 137),
(648, 'pt_BR', 'Maldivas', 138),
(649, 'pt_BR', 'Mali', 139),
(650, 'pt_BR', 'Malta', 140),
(651, 'pt_BR', 'Ilhas Marshall', 141),
(652, 'pt_BR', 'Martinica', 142),
(653, 'pt_BR', 'Mauritânia', 143),
(654, 'pt_BR', 'Maurício', 144),
(655, 'pt_BR', 'Maiote', 145),
(656, 'pt_BR', 'México', 146),
(657, 'pt_BR', 'Micronésia', 147),
(658, 'pt_BR', 'Moldávia', 148),
(659, 'pt_BR', 'Mônaco', 149),
(660, 'pt_BR', 'Mongólia', 150),
(661, 'pt_BR', 'Montenegro', 151),
(662, 'pt_BR', 'Montserrat', 152),
(663, 'pt_BR', 'Marrocos', 153),
(664, 'pt_BR', 'Moçambique', 154),
(665, 'pt_BR', 'Mianmar (Birmânia)', 155),
(666, 'pt_BR', 'Namíbia', 156),
(667, 'pt_BR', 'Nauru', 157),
(668, 'pt_BR', 'Nepal', 158),
(669, 'pt_BR', 'Holanda', 159),
(670, 'pt_BR', 'Nova Caledônia', 160),
(671, 'pt_BR', 'Nova Zelândia', 161),
(672, 'pt_BR', 'Nicarágua', 162),
(673, 'pt_BR', 'Níger', 163),
(674, 'pt_BR', 'Nigéria', 164),
(675, 'pt_BR', 'Niue', 165),
(676, 'pt_BR', 'Ilha Norfolk', 166),
(677, 'pt_BR', 'Coréia do Norte', 167),
(678, 'pt_BR', 'Ilhas Marianas do Norte', 168),
(679, 'pt_BR', 'Noruega', 169),
(680, 'pt_BR', 'Omã', 170),
(681, 'pt_BR', 'Paquistão', 171),
(682, 'pt_BR', 'Palau', 172),
(683, 'pt_BR', 'Territórios Palestinos', 173),
(684, 'pt_BR', 'Panamá', 174),
(685, 'pt_BR', 'Papua Nova Guiné', 175),
(686, 'pt_BR', 'Paraguai', 176),
(687, 'pt_BR', 'Peru', 177),
(688, 'pt_BR', 'Filipinas', 178),
(689, 'pt_BR', 'Ilhas Pitcairn', 179),
(690, 'pt_BR', 'Polônia', 180),
(691, 'pt_BR', 'Portugal', 181),
(692, 'pt_BR', 'Porto Rico', 182),
(693, 'pt_BR', 'Catar', 183),
(694, 'pt_BR', 'Reunião', 184),
(695, 'pt_BR', 'Romênia', 185),
(696, 'pt_BR', 'Rússia', 186),
(697, 'pt_BR', 'Ruanda', 187),
(698, 'pt_BR', 'Samoa', 188),
(699, 'pt_BR', 'São Marinho', 189),
(700, 'pt_BR', 'São Cristóvão e Nevis', 190),
(701, 'pt_BR', 'Arábia Saudita', 191),
(702, 'pt_BR', 'Senegal', 192),
(703, 'pt_BR', 'Sérvia', 193),
(704, 'pt_BR', 'Seychelles', 194),
(705, 'pt_BR', 'Serra Leoa', 195),
(706, 'pt_BR', 'Cingapura', 196),
(707, 'pt_BR', 'São Martinho', 197),
(708, 'pt_BR', 'Eslováquia', 198),
(709, 'pt_BR', 'Eslovênia', 199),
(710, 'pt_BR', 'Ilhas Salomão', 200),
(711, 'pt_BR', 'Somália', 201),
(712, 'pt_BR', 'África do Sul', 202),
(713, 'pt_BR', 'Ilhas Geórgia do Sul e Sandwich do Sul', 203),
(714, 'pt_BR', 'Coréia do Sul', 204),
(715, 'pt_BR', 'Sudão do Sul', 205),
(716, 'pt_BR', 'Espanha', 206),
(717, 'pt_BR', 'Sri Lanka', 207),
(718, 'pt_BR', 'São Bartolomeu', 208),
(719, 'pt_BR', 'Santa Helena', 209),
(720, 'pt_BR', 'São Cristóvão e Nevis', 210),
(721, 'pt_BR', 'Santa Lúcia', 211),
(722, 'pt_BR', 'São Martinho', 212),
(723, 'pt_BR', 'São Pedro e Miquelon', 213),
(724, 'pt_BR', 'São Vicente e Granadinas', 214),
(725, 'pt_BR', 'Sudão', 215),
(726, 'pt_BR', 'Suriname', 216),
(727, 'pt_BR', 'Svalbard e Jan Mayen', 217),
(728, 'pt_BR', 'Suazilândia', 218),
(729, 'pt_BR', 'Suécia', 219),
(730, 'pt_BR', 'Suíça', 220),
(731, 'pt_BR', 'Síria', 221),
(732, 'pt_BR', 'Taiwan', 222),
(733, 'pt_BR', 'Tajiquistão', 223),
(734, 'pt_BR', 'Tanzânia', 224),
(735, 'pt_BR', 'Tailândia', 225),
(736, 'pt_BR', 'Timor-Leste', 226),
(737, 'pt_BR', 'Togo', 227),
(738, 'pt_BR', 'Tokelau', 228),
(739, 'pt_BR', 'Tonga', 229),
(740, 'pt_BR', 'Trinidad e Tobago', 230),
(741, 'pt_BR', 'Tristan da Cunha', 231),
(742, 'pt_BR', 'Tunísia', 232),
(743, 'pt_BR', 'Turquia', 233),
(744, 'pt_BR', 'Turquemenistão', 234),
(745, 'pt_BR', 'Ilhas Turks e Caicos', 235),
(746, 'pt_BR', 'Tuvalu', 236),
(747, 'pt_BR', 'Ilhas periféricas dos EUA', 237),
(748, 'pt_BR', 'Ilhas Virgens dos EUA', 238),
(749, 'pt_BR', 'Uganda', 239),
(750, 'pt_BR', 'Ucrânia', 240),
(751, 'pt_BR', 'Emirados Árabes Unidos', 241),
(752, 'pt_BR', 'Reino Unido', 242),
(753, 'pt_BR', 'Nações Unidas', 243),
(754, 'pt_BR', 'Estados Unidos', 244),
(755, 'pt_BR', 'Uruguai', 245),
(756, 'pt_BR', 'Uzbequistão', 246),
(757, 'pt_BR', 'Vanuatu', 247),
(758, 'pt_BR', 'Cidade do Vaticano', 248),
(759, 'pt_BR', 'Venezuela', 249),
(760, 'pt_BR', 'Vietnã', 250),
(761, 'pt_BR', 'Wallis e Futuna', 251),
(762, 'pt_BR', 'Saara Ocidental', 252),
(763, 'pt_BR', 'Iêmen', 253),
(764, 'pt_BR', 'Zâmbia', 254),
(765, 'pt_BR', 'Zimbábue', 255);

-- --------------------------------------------------------

--
-- Table structure for table `bgwycurrencies`
--

CREATE TABLE `bgwycurrencies` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `symbol` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `bgwycurrencies`
--

INSERT INTO `bgwycurrencies` (`id`, `code`, `name`, `created_at`, `updated_at`, `symbol`) VALUES
(1, 'USD', 'US Dollar', NULL, '2021-02-25 03:40:45', '৳'),
(3, 'BDT', 'Taka', '2021-02-24 04:21:51', '2021-02-25 03:20:27', '৳');

-- --------------------------------------------------------

--
-- Table structure for table `bgwycurrency_exchange_rates`
--

CREATE TABLE `bgwycurrency_exchange_rates` (
  `id` int(10) UNSIGNED NOT NULL,
  `rate` decimal(24,12) NOT NULL,
  `target_currency` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `bgwycustomers`
--

CREATE TABLE `bgwycustomers` (
  `id` int(10) UNSIGNED NOT NULL,
  `first_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `api_token` varchar(80) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_group_id` int(10) UNSIGNED DEFAULT NULL,
  `subscribed_to_news_letter` tinyint(1) NOT NULL DEFAULT 0,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_verified` tinyint(1) NOT NULL DEFAULT 0,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `notes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `bgwycustomers`
--

INSERT INTO `bgwycustomers` (`id`, `first_name`, `last_name`, `gender`, `date_of_birth`, `email`, `status`, `password`, `api_token`, `customer_group_id`, `subscribed_to_news_letter`, `remember_token`, `created_at`, `updated_at`, `is_verified`, `token`, `notes`, `phone`) VALUES
(1, 'Saddam', 'Hossen', NULL, NULL, 'saddam.snowtex007@gmail.com', 1, '$2y$10$M0XYJaofciKOWTPLiZoXnuW50vO26x5JoD.1ZneUtjAxta5hyt2Im', 'dUIxcFOxKRgiI5Tr1nEFBXkbdIDnlIasZkVP0ueje3dDSZQKfiHhw3gLAJy5xpfRdcoBimWk6LV9uguI', 2, 0, NULL, '2021-02-24 04:59:11', '2021-02-24 04:59:11', 1, '06d1a3c4be2039064ec0c7774783e087', NULL, NULL),
(2, 'akib', 'hasan', NULL, NULL, 'tonuakibhasan@gmail.com', 1, '$2y$10$/OAECM4ntB4d/gBsbXNca.WIhL7gim6Wj2Ga.eUUa.w0wP.3mdMC.', 'JaETHVJnECpetTzBdhKULflCqmOwXyqHAFrThPyvR3X6346R1MtbCC4J2Rh8S29lIGtxmDSAf187ay7q', 2, 0, NULL, '2021-02-25 03:12:40', '2021-02-25 03:12:40', 1, '894fd21aa470937c30c44dbb08a746ea', NULL, NULL),
(3, 'Mezba', 'Uddin', 'Male', NULL, 'csemezba@gmail.com', 1, '$2y$10$oRIZEiAP3Fyl/L4/lerRKeTAb1yhqyosOqmQutcHdHV14AHu3FYcu', 'iT2A4ZFW9wmKFlMWGa8RcytmGTfPGI4taz9fbcFWo1utqs97BGyvERsQbrsOrCUhBWYDhT3H52waaVRe', 2, 0, NULL, '2021-02-25 19:44:13', '2021-02-25 19:45:02', 1, '2b49361c21ce2dcada3c736044a2d87e', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `bgwycustomer_groups`
--

CREATE TABLE `bgwycustomer_groups` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_user_defined` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `bgwycustomer_groups`
--

INSERT INTO `bgwycustomer_groups` (`id`, `name`, `is_user_defined`, `created_at`, `updated_at`, `code`) VALUES
(1, 'Guest', 0, NULL, NULL, 'guest'),
(2, 'General', 0, NULL, NULL, 'general'),
(3, 'Wholesale', 0, NULL, NULL, 'wholesale');

-- --------------------------------------------------------

--
-- Table structure for table `bgwycustomer_password_resets`
--

CREATE TABLE `bgwycustomer_password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `bgwycustomer_social_accounts`
--

CREATE TABLE `bgwycustomer_social_accounts` (
  `id` int(10) UNSIGNED NOT NULL,
  `provider_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `bgwydownloadable_link_purchased`
--

CREATE TABLE `bgwydownloadable_link_purchased` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `download_bought` int(11) NOT NULL DEFAULT 0,
  `download_used` int(11) NOT NULL DEFAULT 0,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_id` int(10) UNSIGNED NOT NULL,
  `order_id` int(10) UNSIGNED NOT NULL,
  `order_item_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `bgwyinventory_sources`
--

CREATE TABLE `bgwyinventory_sources` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_number` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_fax` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `street` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `postcode` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `priority` int(11) NOT NULL DEFAULT 0,
  `latitude` decimal(10,5) DEFAULT NULL,
  `longitude` decimal(10,5) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `bgwyinventory_sources`
--

INSERT INTO `bgwyinventory_sources` (`id`, `code`, `name`, `description`, `contact_name`, `contact_email`, `contact_number`, `contact_fax`, `country`, `state`, `city`, `street`, `postcode`, `priority`, `latitude`, `longitude`, `status`, `created_at`, `updated_at`) VALUES
(1, 'default', 'Default', NULL, 'Detroit Warehouse', 'warehouse@example.com', '1234567899', NULL, 'US', 'MI', 'Detroit', '12th Street', '48127', 0, NULL, NULL, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `bgwyinvoices`
--

CREATE TABLE `bgwyinvoices` (
  `id` int(10) UNSIGNED NOT NULL,
  `increment_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_sent` tinyint(1) NOT NULL DEFAULT 0,
  `total_qty` int(11) DEFAULT NULL,
  `base_currency_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `channel_currency_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_currency_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_total` decimal(12,4) DEFAULT 0.0000,
  `base_sub_total` decimal(12,4) DEFAULT 0.0000,
  `grand_total` decimal(12,4) DEFAULT 0.0000,
  `base_grand_total` decimal(12,4) DEFAULT 0.0000,
  `shipping_amount` decimal(12,4) DEFAULT 0.0000,
  `base_shipping_amount` decimal(12,4) DEFAULT 0.0000,
  `tax_amount` decimal(12,4) DEFAULT 0.0000,
  `base_tax_amount` decimal(12,4) DEFAULT 0.0000,
  `discount_amount` decimal(12,4) DEFAULT 0.0000,
  `base_discount_amount` decimal(12,4) DEFAULT 0.0000,
  `order_id` int(10) UNSIGNED DEFAULT NULL,
  `order_address_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `transaction_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `bgwyinvoices`
--

INSERT INTO `bgwyinvoices` (`id`, `increment_id`, `state`, `email_sent`, `total_qty`, `base_currency_code`, `channel_currency_code`, `order_currency_code`, `sub_total`, `base_sub_total`, `grand_total`, `base_grand_total`, `shipping_amount`, `base_shipping_amount`, `tax_amount`, `base_tax_amount`, `discount_amount`, `base_discount_amount`, `order_id`, `order_address_id`, `created_at`, `updated_at`, `transaction_id`) VALUES
(1, NULL, 'paid', 0, 2, 'USD', 'BDT', 'BDT', 980.0000, 980.0000, 1000.0000, 1000.0000, 20.0000, 20.0000, 0.0000, 0.0000, 0.0000, 0.0000, 4, 17, '2021-02-27 23:33:20', '2021-02-27 23:33:20', NULL),
(2, NULL, 'paid', 0, 2, 'USD', 'BDT', 'BDT', 1060.0000, 1060.0000, 1080.0000, 1080.0000, 20.0000, 20.0000, 0.0000, 0.0000, 0.0000, 0.0000, 3, 13, '2021-02-27 23:34:29', '2021-02-27 23:34:29', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `bgwyinvoice_items`
--

CREATE TABLE `bgwyinvoice_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sku` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `price` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `base_price` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `total` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `base_total` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `tax_amount` decimal(12,4) DEFAULT 0.0000,
  `base_tax_amount` decimal(12,4) DEFAULT 0.0000,
  `product_id` int(10) UNSIGNED DEFAULT NULL,
  `product_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_item_id` int(10) UNSIGNED DEFAULT NULL,
  `invoice_id` int(10) UNSIGNED DEFAULT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `additional` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `discount_percent` decimal(12,4) DEFAULT 0.0000,
  `discount_amount` decimal(12,4) DEFAULT 0.0000,
  `base_discount_amount` decimal(12,4) DEFAULT 0.0000
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `bgwyinvoice_items`
--

INSERT INTO `bgwyinvoice_items` (`id`, `name`, `description`, `sku`, `qty`, `price`, `base_price`, `total`, `base_total`, `tax_amount`, `base_tax_amount`, `product_id`, `product_type`, `order_item_id`, `invoice_id`, `parent_id`, `additional`, `created_at`, `updated_at`, `discount_percent`, `discount_amount`, `base_discount_amount`) VALUES
(1, 'Kazi Farms Kitchen Chicken Strips (250gm)', NULL, '1004', 1, 350.0000, 350.0000, 350.0000, 350.0000, 0.0000, 0.0000, 4, 'Webkul\\Product\\Models\\Product', 6, 1, NULL, '{\"quantity\":1,\"product_id\":\"4\",\"_token\":\"lMIUbSwvsYN3KpK3NaJ4FpBxYg7dM6AwnF0YMNup\",\"locale\":\"en\"}', '2021-02-27 23:33:20', '2021-02-27 23:33:20', 0.0000, 0.0000, 0.0000),
(2, 'Anchor Fortified Full Cream Milk Powder (1kg)', NULL, '1006', 1, 630.0000, 630.0000, 630.0000, 630.0000, 0.0000, 0.0000, 6, 'Webkul\\Product\\Models\\Product', 7, 1, NULL, '{\"quantity\":1,\"product_id\":\"6\",\"_token\":\"lMIUbSwvsYN3KpK3NaJ4FpBxYg7dM6AwnF0YMNup\",\"locale\":\"en\"}', '2021-02-27 23:33:20', '2021-02-27 23:33:20', 0.0000, 0.0000, 0.0000),
(3, 'GOLDEN HARVEST MOROG POLAW 400 GM', NULL, '1010', 1, 1000.0000, 1000.0000, 1000.0000, 1000.0000, 0.0000, 0.0000, 9, 'Webkul\\Product\\Models\\Product', 4, 2, NULL, '{\"quantity\":1,\"product_id\":\"9\",\"_token\":\"lMIUbSwvsYN3KpK3NaJ4FpBxYg7dM6AwnF0YMNup\",\"locale\":\"en\"}', '2021-02-27 23:34:29', '2021-02-27 23:34:29', 0.0000, 0.0000, 0.0000),
(4, 'Minicate Rice (Premium)', NULL, '1011', 1, 60.0000, 60.0000, 60.0000, 60.0000, 0.0000, 0.0000, 10, 'Webkul\\Product\\Models\\Product', 5, 2, NULL, '{\"quantity\":1,\"product_id\":\"10\",\"_token\":\"lMIUbSwvsYN3KpK3NaJ4FpBxYg7dM6AwnF0YMNup\",\"locale\":\"en\"}', '2021-02-27 23:34:29', '2021-02-27 23:34:29', 0.0000, 0.0000, 0.0000);

-- --------------------------------------------------------

--
-- Table structure for table `bgwylocales`
--

CREATE TABLE `bgwylocales` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `direction` enum('ltr','rtl') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'ltr',
  `locale_image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `bgwylocales`
--

INSERT INTO `bgwylocales` (`id`, `code`, `name`, `created_at`, `updated_at`, `direction`, `locale_image`) VALUES
(1, 'en', 'English', NULL, NULL, 'ltr', NULL),
(2, 'fr', 'French', NULL, NULL, 'ltr', NULL),
(3, 'nl', 'Dutch', NULL, NULL, 'ltr', NULL),
(4, 'tr', 'Türkçe', NULL, NULL, 'ltr', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `bgwymigrations`
--

CREATE TABLE `bgwymigrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `bgwymigrations`
--

INSERT INTO `bgwymigrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_admin_password_resets_table', 1),
(3, '2014_10_12_100000_create_password_resets_table', 1),
(4, '2018_06_12_111907_create_admins_table', 1),
(5, '2018_06_13_055341_create_roles_table', 1),
(6, '2018_07_05_130148_create_attributes_table', 1),
(7, '2018_07_05_132854_create_attribute_translations_table', 1),
(8, '2018_07_05_135150_create_attribute_families_table', 1),
(9, '2018_07_05_135152_create_attribute_groups_table', 1),
(10, '2018_07_05_140832_create_attribute_options_table', 1),
(11, '2018_07_05_140856_create_attribute_option_translations_table', 1),
(12, '2018_07_05_142820_create_categories_table', 1),
(13, '2018_07_10_055143_create_locales_table', 1),
(14, '2018_07_20_054426_create_countries_table', 1),
(15, '2018_07_20_054502_create_currencies_table', 1),
(16, '2018_07_20_054542_create_currency_exchange_rates_table', 1),
(17, '2018_07_20_064849_create_channels_table', 1),
(18, '2018_07_21_142836_create_category_translations_table', 1),
(19, '2018_07_23_110040_create_inventory_sources_table', 1),
(20, '2018_07_24_082635_create_customer_groups_table', 1),
(21, '2018_07_24_082930_create_customers_table', 1),
(22, '2018_07_24_083025_create_customer_addresses_table', 1),
(23, '2018_07_27_065727_create_products_table', 1),
(24, '2018_07_27_070011_create_product_attribute_values_table', 1),
(25, '2018_07_27_092623_create_product_reviews_table', 1),
(26, '2018_07_27_113941_create_product_images_table', 1),
(27, '2018_07_27_113956_create_product_inventories_table', 1),
(28, '2018_08_03_114203_create_sliders_table', 1),
(29, '2018_08_30_064755_create_tax_categories_table', 1),
(30, '2018_08_30_065042_create_tax_rates_table', 1),
(31, '2018_08_30_065840_create_tax_mappings_table', 1),
(32, '2018_09_05_150444_create_cart_table', 1),
(33, '2018_09_05_150915_create_cart_items_table', 1),
(34, '2018_09_11_064045_customer_password_resets', 1),
(35, '2018_09_19_092845_create_cart_address', 1),
(36, '2018_09_19_093453_create_cart_payment', 1),
(37, '2018_09_19_093508_create_cart_shipping_rates_table', 1),
(38, '2018_09_20_060658_create_core_config_table', 1),
(39, '2018_09_27_113154_create_orders_table', 1),
(40, '2018_09_27_113207_create_order_items_table', 1),
(41, '2018_09_27_113405_create_order_address_table', 1),
(42, '2018_09_27_115022_create_shipments_table', 1),
(43, '2018_09_27_115029_create_shipment_items_table', 1),
(44, '2018_09_27_115135_create_invoices_table', 1),
(45, '2018_09_27_115144_create_invoice_items_table', 1),
(46, '2018_10_01_095504_create_order_payment_table', 1),
(47, '2018_10_03_025230_create_wishlist_table', 1),
(48, '2018_10_12_101803_create_country_translations_table', 1),
(49, '2018_10_12_101913_create_country_states_table', 1),
(50, '2018_10_12_101923_create_country_state_translations_table', 1),
(51, '2018_11_15_153257_alter_order_table', 1),
(52, '2018_11_15_163729_alter_invoice_table', 1),
(53, '2018_11_16_173504_create_subscribers_list_table', 1),
(54, '2018_11_17_165758_add_is_verified_column_in_customers_table', 1),
(55, '2018_11_21_144411_create_cart_item_inventories_table', 1),
(56, '2018_11_26_110500_change_gender_column_in_customers_table', 1),
(57, '2018_11_27_174449_change_content_column_in_sliders_table', 1),
(58, '2018_12_05_132625_drop_foreign_key_core_config_table', 1),
(59, '2018_12_05_132629_alter_core_config_table', 1),
(60, '2018_12_06_185202_create_product_flat_table', 1),
(61, '2018_12_21_101307_alter_channels_table', 1),
(62, '2018_12_24_123812_create_channel_inventory_sources_table', 1),
(63, '2018_12_24_184402_alter_shipments_table', 1),
(64, '2018_12_26_165327_create_product_ordered_inventories_table', 1),
(65, '2018_12_31_161114_alter_channels_category_table', 1),
(66, '2019_01_11_122452_add_vendor_id_column_in_product_inventories_table', 1),
(67, '2019_01_25_124522_add_updated_at_column_in_product_flat_table', 1),
(68, '2019_01_29_123053_add_min_price_and_max_price_column_in_product_flat_table', 1),
(69, '2019_01_31_164117_update_value_column_type_to_text_in_core_config_table', 1),
(70, '2019_02_21_145238_alter_product_reviews_table', 1),
(71, '2019_02_21_152709_add_swatch_type_column_in_attributes_table', 1),
(72, '2019_02_21_153035_alter_customer_id_in_product_reviews_table', 1),
(73, '2019_02_21_153851_add_swatch_value_columns_in_attribute_options_table', 1),
(74, '2019_03_15_123337_add_display_mode_column_in_categories_table', 1),
(75, '2019_03_28_103658_add_notes_column_in_customers_table', 1),
(76, '2019_04_24_155820_alter_product_flat_table', 1),
(77, '2019_05_13_024320_remove_tables', 1),
(78, '2019_05_13_024321_create_cart_rules_table', 1),
(79, '2019_05_13_024322_create_cart_rule_channels_table', 1),
(80, '2019_05_13_024323_create_cart_rule_customer_groups_table', 1),
(81, '2019_05_13_024324_create_cart_rule_translations_table', 1),
(82, '2019_05_13_024325_create_cart_rule_customers_table', 1),
(83, '2019_05_13_024326_create_cart_rule_coupons_table', 1),
(84, '2019_05_13_024327_create_cart_rule_coupon_usage_table', 1),
(85, '2019_05_22_165833_update_zipcode_column_type_to_varchar_in_cart_address_table', 1),
(86, '2019_05_23_113407_add_remaining_column_in_product_flat_table', 1),
(87, '2019_05_23_155520_add_discount_columns_in_invoice_items_table', 1),
(88, '2019_05_23_184029_rename_discount_columns_in_cart_table', 1),
(89, '2019_06_04_114009_add_phone_column_in_customers_table', 1),
(90, '2019_06_06_195905_update_custom_price_to_nullable_in_cart_items', 1),
(91, '2019_06_15_183412_add_code_column_in_customer_groups_table', 1),
(92, '2019_06_17_180258_create_product_downloadable_samples_table', 1),
(93, '2019_06_17_180314_create_product_downloadable_sample_translations_table', 1),
(94, '2019_06_17_180325_create_product_downloadable_links_table', 1),
(95, '2019_06_17_180346_create_product_downloadable_link_translations_table', 1),
(96, '2019_06_19_162817_remove_unique_in_phone_column_in_customers_table', 1),
(97, '2019_06_21_130512_update_weight_column_deafult_value_in_cart_items_table', 1),
(98, '2019_06_21_202249_create_downloadable_link_purchased_table', 1),
(99, '2019_07_02_180307_create_booking_products_table', 1),
(100, '2019_07_05_114157_add_symbol_column_in_currencies_table', 1),
(101, '2019_07_05_154415_create_booking_product_default_slots_table', 1),
(102, '2019_07_05_154429_create_booking_product_appointment_slots_table', 1),
(103, '2019_07_05_154440_create_booking_product_event_tickets_table', 1),
(104, '2019_07_05_154451_create_booking_product_rental_slots_table', 1),
(105, '2019_07_05_154502_create_booking_product_table_slots_table', 1),
(106, '2019_07_11_151210_add_locale_id_in_category_translations', 1),
(107, '2019_07_23_033128_alter_locales_table', 1),
(108, '2019_07_23_174708_create_velocity_contents_table', 1),
(109, '2019_07_23_175212_create_velocity_contents_translations_table', 1),
(110, '2019_07_29_142734_add_use_in_flat_column_in_attributes_table', 1),
(111, '2019_07_30_153530_create_cms_pages_table', 1),
(112, '2019_07_31_143339_create_category_filterable_attributes_table', 1),
(113, '2019_08_02_105320_create_product_grouped_products_table', 1),
(114, '2019_08_12_184925_add_additional_cloumn_in_wishlist_table', 1),
(115, '2019_08_20_170510_create_product_bundle_options_table', 1),
(116, '2019_08_20_170520_create_product_bundle_option_translations_table', 1),
(117, '2019_08_20_170528_create_product_bundle_option_products_table', 1),
(118, '2019_08_21_123707_add_seo_column_in_channels_table', 1),
(119, '2019_09_11_184511_create_refunds_table', 1),
(120, '2019_09_11_184519_create_refund_items_table', 1),
(121, '2019_09_26_163950_remove_channel_id_from_customers_table', 1),
(122, '2019_10_03_105451_change_rate_column_in_currency_exchange_rates_table', 1),
(123, '2019_10_21_105136_order_brands', 1),
(124, '2019_10_24_173358_change_postcode_column_type_in_order_address_table', 1),
(125, '2019_10_24_173437_change_postcode_column_type_in_cart_address_table', 1),
(126, '2019_10_24_173507_change_postcode_column_type_in_customer_addresses_table', 1),
(127, '2019_11_21_194541_add_column_url_path_to_category_translations', 1),
(128, '2019_11_21_194608_add_stored_function_to_get_url_path_of_category', 1),
(129, '2019_11_21_194627_add_trigger_to_category_translations', 1),
(130, '2019_11_21_194648_add_url_path_to_existing_category_translations', 1),
(131, '2019_11_21_194703_add_trigger_to_categories', 1),
(132, '2019_11_25_171136_add_applied_cart_rule_ids_column_in_cart_table', 1),
(133, '2019_11_25_171208_add_applied_cart_rule_ids_column_in_cart_items_table', 1),
(134, '2019_11_30_124437_add_applied_cart_rule_ids_column_in_orders_table', 1),
(135, '2019_11_30_165644_add_discount_columns_in_cart_shipping_rates_table', 1),
(136, '2019_12_03_175253_create_remove_catalog_rule_tables', 1),
(137, '2019_12_03_184613_create_catalog_rules_table', 1),
(138, '2019_12_03_184651_create_catalog_rule_channels_table', 1),
(139, '2019_12_03_184732_create_catalog_rule_customer_groups_table', 1),
(140, '2019_12_06_101110_create_catalog_rule_products_table', 1),
(141, '2019_12_06_110507_create_catalog_rule_product_prices_table', 1),
(142, '2019_12_30_155256_create_velocity_meta_data', 1),
(143, '2020_01_02_201029_add_api_token_columns', 1),
(144, '2020_01_06_173505_alter_trigger_category_translations', 1),
(145, '2020_01_06_173524_alter_stored_function_url_path_category', 1),
(146, '2020_01_06_195305_alter_trigger_on_categories', 1),
(147, '2020_01_09_154851_add_shipping_discount_columns_in_orders_table', 1),
(148, '2020_01_09_202815_add_inventory_source_name_column_in_shipments_table', 1),
(149, '2020_01_10_122226_update_velocity_meta_data', 1),
(150, '2020_01_10_151902_customer_address_improvements', 1),
(151, '2020_01_13_131431_alter_float_value_column_type_in_product_attribute_values_table', 1),
(152, '2020_01_13_155803_add_velocity_locale_icon', 1),
(153, '2020_01_13_192149_add_category_velocity_meta_data', 1),
(154, '2020_01_14_191854_create_cms_page_translations_table', 1),
(155, '2020_01_14_192206_remove_columns_from_cms_pages_table', 1),
(156, '2020_01_15_130209_create_cms_page_channels_table', 1),
(157, '2020_01_15_145637_add_product_policy', 1),
(158, '2020_01_15_152121_add_banner_link', 1),
(159, '2020_01_28_102422_add_new_column_and_rename_name_column_in_customer_addresses_table', 1),
(160, '2020_01_29_124748_alter_name_column_in_country_state_translations_table', 1),
(161, '2020_02_18_165639_create_bookings_table', 1),
(162, '2020_02_21_121201_create_booking_product_event_ticket_translations_table', 1),
(163, '2020_02_24_190025_add_is_comparable_column_in_attributes_table', 1),
(164, '2020_02_25_181902_propagate_company_name', 1),
(165, '2020_02_26_163908_change_column_type_in_cart_rules_table', 1),
(166, '2020_02_28_105104_fix_order_columns', 1),
(167, '2020_02_28_111958_create_customer_compare_products_table', 1),
(168, '2020_03_23_201431_alter_booking_products_table', 1),
(169, '2020_04_13_224524_add_locale_in_sliders_table', 1),
(170, '2020_04_16_130351_remove_channel_from_tax_category', 1),
(171, '2020_04_16_185147_add_table_addresses', 1),
(172, '2020_05_06_171638_create_order_comments_table', 1),
(173, '2020_05_21_171500_create_product_customer_group_prices_table', 1),
(174, '2020_06_08_161708_add_sale_prices_to_booking_product_event_tickets', 1),
(175, '2020_06_10_201453_add_locale_velocity_meta_data', 1),
(176, '2020_06_25_162154_create_customer_social_accounts_table', 1),
(177, '2020_06_25_162340_change_email_password_columns_in_customers_table', 1),
(178, '2020_06_30_163510_remove_unique_name_in_tax_categories_table', 1),
(179, '2020_07_31_142021_update_cms_page_translations_table_field_html_content', 1),
(180, '2020_08_01_132239_add_header_content_count_velocity_meta_data_table', 1),
(181, '2020_08_12_114128_removing_foriegn_key', 1),
(182, '2020_08_17_104228_add_channel_to_velocity_meta_data_table', 1),
(183, '2020_09_07_120413_add_unique_index_to_increment_id_in_orders_table', 1),
(184, '2020_09_07_195157_add_additional_to_category', 1);

-- --------------------------------------------------------

--
-- Table structure for table `bgwyorders`
--

CREATE TABLE `bgwyorders` (
  `id` int(10) UNSIGNED NOT NULL,
  `increment_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `channel_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_guest` tinyint(1) DEFAULT NULL,
  `customer_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_first_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_last_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_company_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_vat_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_method` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `coupon_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_gift` tinyint(1) NOT NULL DEFAULT 0,
  `total_item_count` int(11) DEFAULT NULL,
  `total_qty_ordered` int(11) DEFAULT NULL,
  `base_currency_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `channel_currency_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_currency_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `grand_total` decimal(12,4) DEFAULT 0.0000,
  `base_grand_total` decimal(12,4) DEFAULT 0.0000,
  `grand_total_invoiced` decimal(12,4) DEFAULT 0.0000,
  `base_grand_total_invoiced` decimal(12,4) DEFAULT 0.0000,
  `grand_total_refunded` decimal(12,4) DEFAULT 0.0000,
  `base_grand_total_refunded` decimal(12,4) DEFAULT 0.0000,
  `sub_total` decimal(12,4) DEFAULT 0.0000,
  `base_sub_total` decimal(12,4) DEFAULT 0.0000,
  `sub_total_invoiced` decimal(12,4) DEFAULT 0.0000,
  `base_sub_total_invoiced` decimal(12,4) DEFAULT 0.0000,
  `sub_total_refunded` decimal(12,4) DEFAULT 0.0000,
  `base_sub_total_refunded` decimal(12,4) DEFAULT 0.0000,
  `discount_percent` decimal(12,4) DEFAULT 0.0000,
  `discount_amount` decimal(12,4) DEFAULT 0.0000,
  `base_discount_amount` decimal(12,4) DEFAULT 0.0000,
  `discount_invoiced` decimal(12,4) DEFAULT 0.0000,
  `base_discount_invoiced` decimal(12,4) DEFAULT 0.0000,
  `discount_refunded` decimal(12,4) DEFAULT 0.0000,
  `base_discount_refunded` decimal(12,4) DEFAULT 0.0000,
  `tax_amount` decimal(12,4) DEFAULT 0.0000,
  `base_tax_amount` decimal(12,4) DEFAULT 0.0000,
  `tax_amount_invoiced` decimal(12,4) DEFAULT 0.0000,
  `base_tax_amount_invoiced` decimal(12,4) DEFAULT 0.0000,
  `tax_amount_refunded` decimal(12,4) DEFAULT 0.0000,
  `base_tax_amount_refunded` decimal(12,4) DEFAULT 0.0000,
  `shipping_amount` decimal(12,4) DEFAULT 0.0000,
  `base_shipping_amount` decimal(12,4) DEFAULT 0.0000,
  `shipping_invoiced` decimal(12,4) DEFAULT 0.0000,
  `base_shipping_invoiced` decimal(12,4) DEFAULT 0.0000,
  `shipping_refunded` decimal(12,4) DEFAULT 0.0000,
  `base_shipping_refunded` decimal(12,4) DEFAULT 0.0000,
  `customer_id` int(10) UNSIGNED DEFAULT NULL,
  `customer_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `channel_id` int(10) UNSIGNED DEFAULT NULL,
  `channel_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `cart_id` int(11) DEFAULT NULL,
  `applied_cart_rule_ids` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_discount_amount` decimal(12,4) DEFAULT 0.0000,
  `base_shipping_discount_amount` decimal(12,4) DEFAULT 0.0000
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `bgwyorders`
--

INSERT INTO `bgwyorders` (`id`, `increment_id`, `status`, `channel_name`, `is_guest`, `customer_email`, `customer_first_name`, `customer_last_name`, `customer_company_name`, `customer_vat_id`, `shipping_method`, `shipping_title`, `shipping_description`, `coupon_code`, `is_gift`, `total_item_count`, `total_qty_ordered`, `base_currency_code`, `channel_currency_code`, `order_currency_code`, `grand_total`, `base_grand_total`, `grand_total_invoiced`, `base_grand_total_invoiced`, `grand_total_refunded`, `base_grand_total_refunded`, `sub_total`, `base_sub_total`, `sub_total_invoiced`, `base_sub_total_invoiced`, `sub_total_refunded`, `base_sub_total_refunded`, `discount_percent`, `discount_amount`, `base_discount_amount`, `discount_invoiced`, `base_discount_invoiced`, `discount_refunded`, `base_discount_refunded`, `tax_amount`, `base_tax_amount`, `tax_amount_invoiced`, `base_tax_amount_invoiced`, `tax_amount_refunded`, `base_tax_amount_refunded`, `shipping_amount`, `base_shipping_amount`, `shipping_invoiced`, `base_shipping_invoiced`, `shipping_refunded`, `base_shipping_refunded`, `customer_id`, `customer_type`, `channel_id`, `channel_type`, `created_at`, `updated_at`, `cart_id`, `applied_cart_rule_ids`, `shipping_discount_amount`, `base_shipping_discount_amount`) VALUES
(1, '1', 'pending', 'Default', 0, 'tonuakibhasan@gmail.com', 'akib', 'hasan', NULL, NULL, 'free_free', 'Free Shipping - Free Shipping', 'Free Shipping', NULL, 0, 1, 1, 'USD', 'USD', 'USD', 1000.0000, 1000.0000, 0.0000, 0.0000, 0.0000, 0.0000, 1000.0000, 1000.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 2, 'Webkul\\Customer\\Models\\Customer', 1, 'Webkul\\Core\\Models\\Channel', '2021-02-25 03:13:56', '2021-02-25 03:13:56', 4, '', 0.0000, 0.0000),
(2, '2', 'pending', 'Default', 0, 'csemezba@gmail.com', 'Mezba', 'Uddin', NULL, NULL, 'flatrate_flatrate', 'Flat Rate - Flat Rate', 'Flat Rate Shipping', NULL, 0, 2, 2, 'USD', 'BDT', 'BDT', 1080.0000, 1080.0000, 0.0000, 0.0000, 0.0000, 0.0000, 1060.0000, 1060.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 20.0000, 20.0000, 0.0000, 0.0000, 0.0000, 0.0000, 3, 'Webkul\\Customer\\Models\\Customer', 1, 'Webkul\\Core\\Models\\Channel', '2021-02-25 19:46:10', '2021-02-25 19:46:10', 10, '', 0.0000, 0.0000),
(3, '3', 'completed', 'Default', 0, 'csemezba@gmail.com', 'Mezba', 'Uddin', NULL, NULL, 'flatrate_flatrate', 'Flat Rate - Flat Rate', 'Flat Rate Shipping', NULL, 0, 2, 2, 'USD', 'BDT', 'BDT', 1080.0000, 1080.0000, 1080.0000, 1080.0000, 0.0000, 0.0000, 1060.0000, 1060.0000, 1060.0000, 1060.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 20.0000, 20.0000, 20.0000, 20.0000, 0.0000, 0.0000, 3, 'Webkul\\Customer\\Models\\Customer', 1, 'Webkul\\Core\\Models\\Channel', '2021-02-25 19:47:17', '2021-02-27 23:35:44', 11, '', 0.0000, 0.0000),
(4, '4', 'completed', 'Default', 0, 'csemezba@gmail.com', 'Mezba', 'Uddin', NULL, NULL, 'flatrate_flatrate', 'Flat Rate - Flat Rate', 'Flat Rate Shipping', NULL, 0, 2, 2, 'USD', 'BDT', 'BDT', 1000.0000, 1000.0000, 1000.0000, 1000.0000, 0.0000, 0.0000, 980.0000, 980.0000, 980.0000, 980.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 20.0000, 20.0000, 20.0000, 20.0000, 0.0000, 0.0000, 3, 'Webkul\\Customer\\Models\\Customer', 1, 'Webkul\\Core\\Models\\Channel', '2021-02-25 19:49:22', '2021-02-27 23:33:20', 12, '', 0.0000, 0.0000);

-- --------------------------------------------------------

--
-- Table structure for table `bgwyorder_brands`
--

CREATE TABLE `bgwyorder_brands` (
  `id` int(10) UNSIGNED NOT NULL,
  `order_id` int(10) UNSIGNED DEFAULT NULL,
  `order_item_id` int(10) UNSIGNED DEFAULT NULL,
  `product_id` int(10) UNSIGNED DEFAULT NULL,
  `brand` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `bgwyorder_brands`
--

INSERT INTO `bgwyorder_brands` (`id`, `order_id`, `order_item_id`, `product_id`, `brand`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 8, NULL, '2021-02-25 03:13:56', '2021-02-25 03:13:56'),
(2, 2, 2, 10, NULL, '2021-02-25 19:46:10', '2021-02-25 19:46:10'),
(3, 2, 3, 9, NULL, '2021-02-25 19:46:10', '2021-02-25 19:46:10'),
(4, 3, 4, 9, NULL, '2021-02-25 19:47:18', '2021-02-25 19:47:18'),
(5, 3, 5, 10, NULL, '2021-02-25 19:47:18', '2021-02-25 19:47:18'),
(6, 4, 6, 4, NULL, '2021-02-25 19:49:22', '2021-02-25 19:49:22'),
(7, 4, 7, 6, NULL, '2021-02-25 19:49:22', '2021-02-25 19:49:22');

-- --------------------------------------------------------

--
-- Table structure for table `bgwyorder_comments`
--

CREATE TABLE `bgwyorder_comments` (
  `id` int(10) UNSIGNED NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_notified` tinyint(1) NOT NULL DEFAULT 0,
  `order_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `bgwyorder_comments`
--

INSERT INTO `bgwyorder_comments` (`id`, `comment`, `customer_notified`, `order_id`, `created_at`, `updated_at`) VALUES
(1, 'test', 1, 4, '2021-02-27 23:32:04', '2021-02-27 23:32:04');

-- --------------------------------------------------------

--
-- Table structure for table `bgwyorder_items`
--

CREATE TABLE `bgwyorder_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `sku` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `coupon_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `weight` decimal(12,4) DEFAULT 0.0000,
  `total_weight` decimal(12,4) DEFAULT 0.0000,
  `qty_ordered` int(11) DEFAULT 0,
  `qty_shipped` int(11) DEFAULT 0,
  `qty_invoiced` int(11) DEFAULT 0,
  `qty_canceled` int(11) DEFAULT 0,
  `qty_refunded` int(11) DEFAULT 0,
  `price` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `base_price` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `total` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `base_total` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `total_invoiced` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `base_total_invoiced` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `amount_refunded` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `base_amount_refunded` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `discount_percent` decimal(12,4) DEFAULT 0.0000,
  `discount_amount` decimal(12,4) DEFAULT 0.0000,
  `base_discount_amount` decimal(12,4) DEFAULT 0.0000,
  `discount_invoiced` decimal(12,4) DEFAULT 0.0000,
  `base_discount_invoiced` decimal(12,4) DEFAULT 0.0000,
  `discount_refunded` decimal(12,4) DEFAULT 0.0000,
  `base_discount_refunded` decimal(12,4) DEFAULT 0.0000,
  `tax_percent` decimal(12,4) DEFAULT 0.0000,
  `tax_amount` decimal(12,4) DEFAULT 0.0000,
  `base_tax_amount` decimal(12,4) DEFAULT 0.0000,
  `tax_amount_invoiced` decimal(12,4) DEFAULT 0.0000,
  `base_tax_amount_invoiced` decimal(12,4) DEFAULT 0.0000,
  `tax_amount_refunded` decimal(12,4) DEFAULT 0.0000,
  `base_tax_amount_refunded` decimal(12,4) DEFAULT 0.0000,
  `product_id` int(10) UNSIGNED DEFAULT NULL,
  `product_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_id` int(10) UNSIGNED DEFAULT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `additional` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `bgwyorder_items`
--

INSERT INTO `bgwyorder_items` (`id`, `sku`, `type`, `name`, `coupon_code`, `weight`, `total_weight`, `qty_ordered`, `qty_shipped`, `qty_invoiced`, `qty_canceled`, `qty_refunded`, `price`, `base_price`, `total`, `base_total`, `total_invoiced`, `base_total_invoiced`, `amount_refunded`, `base_amount_refunded`, `discount_percent`, `discount_amount`, `base_discount_amount`, `discount_invoiced`, `base_discount_invoiced`, `discount_refunded`, `base_discount_refunded`, `tax_percent`, `tax_amount`, `base_tax_amount`, `tax_amount_invoiced`, `base_tax_amount_invoiced`, `tax_amount_refunded`, `base_tax_amount_refunded`, `product_id`, `product_type`, `order_id`, `parent_id`, `additional`, `created_at`, `updated_at`) VALUES
(1, '1009', 'simple', 'GOLDEN HARVEST CHICKEN SHAMMI KABAB (10PCS)', NULL, 10.0000, 10.0000, 1, 0, 0, 0, 0, 1000.0000, 1000.0000, 1000.0000, 1000.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 8, 'Webkul\\Product\\Models\\Product', 1, NULL, '{\"quantity\":1,\"product_id\":\"8\",\"_token\":\"TdNdZBzMkiY8AhFLkQnOrxhIyQrshGFKdxh11tGv\",\"locale\":\"en\"}', '2021-02-25 03:13:56', '2021-02-25 03:13:56'),
(2, '1011', 'simple', 'Minicate Rice (Premium)', NULL, 1.0000, 1.0000, 1, 0, 0, 0, 0, 60.0000, 60.0000, 60.0000, 60.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 10, 'Webkul\\Product\\Models\\Product', 2, NULL, '{\"quantity\":1,\"product_id\":\"10\",\"_token\":\"lMIUbSwvsYN3KpK3NaJ4FpBxYg7dM6AwnF0YMNup\",\"locale\":\"en\"}', '2021-02-25 19:46:10', '2021-02-25 19:46:10'),
(3, '1010', 'simple', 'GOLDEN HARVEST MOROG POLAW 400 GM', NULL, 600.0000, 600.0000, 1, 0, 0, 0, 0, 1000.0000, 1000.0000, 1000.0000, 1000.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 9, 'Webkul\\Product\\Models\\Product', 2, NULL, '{\"quantity\":1,\"product_id\":\"9\",\"_token\":\"lMIUbSwvsYN3KpK3NaJ4FpBxYg7dM6AwnF0YMNup\",\"locale\":\"en\"}', '2021-02-25 19:46:10', '2021-02-25 19:46:10'),
(4, '1010', 'simple', 'GOLDEN HARVEST MOROG POLAW 400 GM', NULL, 600.0000, 600.0000, 1, 1, 1, 0, 0, 1000.0000, 1000.0000, 1000.0000, 1000.0000, 1000.0000, 1000.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 9, 'Webkul\\Product\\Models\\Product', 3, NULL, '{\"quantity\":1,\"product_id\":\"9\",\"_token\":\"lMIUbSwvsYN3KpK3NaJ4FpBxYg7dM6AwnF0YMNup\",\"locale\":\"en\"}', '2021-02-25 19:47:17', '2021-02-27 23:35:44'),
(5, '1011', 'simple', 'Minicate Rice (Premium)', NULL, 1.0000, 1.0000, 1, 1, 1, 0, 0, 60.0000, 60.0000, 60.0000, 60.0000, 60.0000, 60.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 10, 'Webkul\\Product\\Models\\Product', 3, NULL, '{\"quantity\":1,\"product_id\":\"10\",\"_token\":\"lMIUbSwvsYN3KpK3NaJ4FpBxYg7dM6AwnF0YMNup\",\"locale\":\"en\"}', '2021-02-25 19:47:17', '2021-02-27 23:35:44'),
(6, '1004', 'simple', 'Kazi Farms Kitchen Chicken Strips (250gm)', NULL, 250.0000, 250.0000, 1, 1, 1, 0, 0, 350.0000, 350.0000, 350.0000, 350.0000, 350.0000, 350.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 4, 'Webkul\\Product\\Models\\Product', 4, NULL, '{\"quantity\":1,\"product_id\":\"4\",\"_token\":\"lMIUbSwvsYN3KpK3NaJ4FpBxYg7dM6AwnF0YMNup\",\"locale\":\"en\"}', '2021-02-25 19:49:22', '2021-02-27 23:33:20'),
(7, '1006', 'simple', 'Anchor Fortified Full Cream Milk Powder (1kg)', NULL, 1000.0000, 1000.0000, 1, 1, 1, 0, 0, 630.0000, 630.0000, 630.0000, 630.0000, 630.0000, 630.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 0.0000, 6, 'Webkul\\Product\\Models\\Product', 4, NULL, '{\"quantity\":1,\"product_id\":\"6\",\"_token\":\"lMIUbSwvsYN3KpK3NaJ4FpBxYg7dM6AwnF0YMNup\",\"locale\":\"en\"}', '2021-02-25 19:49:22', '2021-02-27 23:33:20');

-- --------------------------------------------------------

--
-- Table structure for table `bgwyorder_payment`
--

CREATE TABLE `bgwyorder_payment` (
  `id` int(10) UNSIGNED NOT NULL,
  `method` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `method_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `bgwyorder_payment`
--

INSERT INTO `bgwyorder_payment` (`id`, `method`, `method_title`, `order_id`, `created_at`, `updated_at`) VALUES
(1, 'cashondelivery', NULL, 1, '2021-02-25 03:13:56', '2021-02-25 03:13:56'),
(2, 'cashondelivery', NULL, 2, '2021-02-25 19:46:10', '2021-02-25 19:46:10'),
(3, 'cashondelivery', NULL, 3, '2021-02-25 19:47:17', '2021-02-25 19:47:17'),
(4, 'moneytransfer', NULL, 4, '2021-02-25 19:49:22', '2021-02-25 19:49:22');

-- --------------------------------------------------------

--
-- Table structure for table `bgwypassword_resets`
--

CREATE TABLE `bgwypassword_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `bgwyproducts`
--

CREATE TABLE `bgwyproducts` (
  `id` int(10) UNSIGNED NOT NULL,
  `sku` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `attribute_family_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `bgwyproducts`
--

INSERT INTO `bgwyproducts` (`id`, `sku`, `type`, `created_at`, `updated_at`, `parent_id`, `attribute_family_id`) VALUES
(1, '1001', 'simple', '2021-02-24 04:52:20', '2021-02-24 04:52:20', NULL, 1),
(2, '1002', 'simple', '2021-02-24 05:07:52', '2021-02-24 05:07:52', NULL, 1),
(3, '1003', 'simple', '2021-02-24 05:12:08', '2021-02-24 05:12:08', NULL, 1),
(4, '1004', 'simple', '2021-02-24 05:14:24', '2021-02-24 05:14:24', NULL, 1),
(5, '1005', 'simple', '2021-02-24 05:16:19', '2021-02-24 05:16:19', NULL, 1),
(6, '1006', 'simple', '2021-02-24 05:18:58', '2021-02-24 05:18:58', NULL, 1),
(7, '1008', 'simple', '2021-02-24 05:50:59', '2021-02-24 05:50:59', NULL, 1),
(8, '1009', 'simple', '2021-02-24 05:54:36', '2021-02-24 05:54:36', NULL, 1),
(9, '1010', 'simple', '2021-02-24 05:56:55', '2021-02-24 05:56:55', NULL, 1),
(10, '1011', 'simple', '2021-02-24 05:59:37', '2021-02-24 05:59:37', NULL, 1),
(11, '1015', 'simple', '2021-02-24 21:53:37', '2021-02-24 21:53:37', NULL, 1),
(12, '1016', 'simple', '2021-02-24 21:55:53', '2021-02-24 21:55:53', NULL, 1),
(13, '1017', 'simple', '2021-02-24 21:58:28', '2021-02-24 21:58:28', NULL, 1),
(14, '1018', 'simple', '2021-02-24 22:01:36', '2021-02-24 22:01:36', NULL, 1),
(15, '1019', 'simple', '2021-02-24 22:04:22', '2021-02-24 22:04:22', NULL, 1),
(16, '1020', 'simple', '2021-02-24 22:06:01', '2021-02-24 22:06:01', NULL, 1),
(17, '2000', 'simple', '2021-02-24 22:09:24', '2021-02-24 22:09:24', NULL, 1),
(18, '2001', 'simple', '2021-02-24 22:11:14', '2021-02-24 22:11:14', NULL, 1),
(19, '2002', 'simple', '2021-02-24 22:12:52', '2021-02-24 22:12:52', NULL, 1),
(20, '2003', 'simple', '2021-02-24 22:15:01', '2021-02-24 22:15:01', NULL, 1),
(21, '2004', 'simple', '2021-02-24 22:17:08', '2021-02-24 22:17:08', NULL, 1),
(22, '2005', 'simple', '2021-02-24 22:19:25', '2021-02-24 22:19:25', NULL, 1),
(23, '2006', 'simple', '2021-02-24 22:26:01', '2021-02-24 22:26:01', NULL, 1),
(24, '3000', 'simple', '2021-02-24 22:29:29', '2021-02-24 22:29:29', NULL, 1),
(25, '3001', 'simple', '2021-02-24 22:32:02', '2021-02-24 22:32:02', NULL, 1),
(26, '3002', 'simple', '2021-02-24 22:33:35', '2021-02-24 22:33:35', NULL, 1),
(27, '3003', 'simple', '2021-02-24 22:37:26', '2021-02-24 22:37:26', NULL, 1),
(28, '4000', 'simple', '2021-02-24 22:39:24', '2021-02-24 22:39:24', NULL, 1),
(29, '4001', 'simple', '2021-02-24 22:41:02', '2021-02-24 22:41:02', NULL, 1),
(30, '4002', 'simple', '2021-02-24 22:42:42', '2021-02-24 22:42:42', NULL, 1),
(31, '4003', 'simple', '2021-02-24 22:44:29', '2021-02-24 22:44:29', NULL, 1),
(32, '4004', 'simple', '2021-02-24 22:48:22', '2021-02-24 22:48:22', NULL, 1),
(33, '4005', 'simple', '2021-02-24 22:51:32', '2021-02-24 22:51:32', NULL, 1),
(34, '5000', 'simple', '2021-02-24 22:55:02', '2021-02-24 22:55:02', NULL, 1),
(35, '5001', 'simple', '2021-02-24 22:57:11', '2021-02-24 22:57:11', NULL, 1),
(36, '5002', 'simple', '2021-02-24 22:58:51', '2021-02-24 22:58:51', NULL, 1),
(37, '5003', 'simple', '2021-02-24 23:00:49', '2021-02-24 23:00:49', NULL, 1),
(38, '5004', 'simple', '2021-02-24 23:02:38', '2021-02-24 23:02:38', NULL, 1),
(39, '5005', 'simple', '2021-02-24 23:04:55', '2021-02-24 23:04:55', NULL, 1),
(40, '6000', 'simple', '2021-02-24 23:07:05', '2021-02-24 23:07:05', NULL, 1),
(41, '6001', 'simple', '2021-02-24 23:09:50', '2021-02-24 23:09:50', NULL, 1),
(42, '6002', 'simple', '2021-02-24 23:11:33', '2021-02-24 23:11:33', NULL, 1),
(43, '6003', 'simple', '2021-02-24 23:17:52', '2021-02-24 23:17:52', NULL, 1),
(44, '6004', 'simple', '2021-02-24 23:19:09', '2021-02-24 23:19:09', NULL, 1),
(45, '7000', 'simple', '2021-02-24 23:35:50', '2021-02-24 23:35:50', NULL, 1),
(46, '7001', 'simple', '2021-02-24 23:37:37', '2021-02-24 23:37:37', NULL, 1),
(47, '7002', 'simple', '2021-02-24 23:39:15', '2021-02-24 23:39:15', NULL, 1),
(48, '7003', 'simple', '2021-02-24 23:41:12', '2021-02-24 23:41:12', NULL, 1),
(49, '7004', 'simple', '2021-02-24 23:42:51', '2021-02-24 23:42:51', NULL, 1),
(50, '7005', 'simple', '2021-02-24 23:44:50', '2021-02-24 23:44:50', NULL, 1),
(51, '8000', 'simple', '2021-02-24 23:49:00', '2021-02-24 23:49:00', NULL, 1),
(52, '8001', 'simple', '2021-02-24 23:51:59', '2021-02-24 23:51:59', NULL, 1),
(53, '8002', 'simple', '2021-02-24 23:54:59', '2021-02-24 23:54:59', NULL, 1),
(54, '8003', 'simple', '2021-02-24 23:59:11', '2021-02-24 23:59:11', NULL, 1),
(55, '9000', 'simple', '2021-02-25 00:03:16', '2021-02-25 00:03:16', NULL, 1),
(56, '9001', 'simple', '2021-02-25 00:14:34', '2021-02-25 00:14:34', NULL, 1),
(57, '9002', 'simple', '2021-02-25 00:16:04', '2021-02-25 00:16:04', NULL, 1),
(58, '9003', 'simple', '2021-02-25 00:18:21', '2021-02-25 00:18:21', NULL, 1),
(59, '9004', 'simple', '2021-02-25 00:20:06', '2021-02-25 00:20:06', NULL, 1),
(60, 'temporary-sku-557634', 'simple', '2021-02-27 23:41:49', '2021-02-27 23:41:49', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `bgwyproduct_attribute_values`
--

CREATE TABLE `bgwyproduct_attribute_values` (
  `id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `channel` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text_value` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `boolean_value` tinyint(1) DEFAULT NULL,
  `integer_value` int(11) DEFAULT NULL,
  `float_value` decimal(12,4) DEFAULT NULL,
  `datetime_value` datetime DEFAULT NULL,
  `date_value` date DEFAULT NULL,
  `json_value` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `attribute_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `bgwyproduct_attribute_values`
--

INSERT INTO `bgwyproduct_attribute_values` (`id`, `locale`, `channel`, `text_value`, `boolean_value`, `integer_value`, `float_value`, `datetime_value`, `date_value`, `json_value`, `product_id`, `attribute_id`) VALUES
(1, 'en', 'default', '<p><span style=\"color: rgba(0, 0, 0, 0.65); font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\';\">Tiffany sugar-free lemon-flavored cream biscuits are for people who are on sugar restricted diet or just prefer lowering their sugar consumption.</span></p>', NULL, NULL, NULL, NULL, NULL, NULL, 1, 9),
(2, 'en', 'default', '<p><span style=\"color: rgba(0, 0, 0, 0.65); font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\';\">Tiffany sugar-free lemon-flavored cream biscuits are for people who are on sugar restricted diet or just prefer lowering their sugar consumption.</span></p>', NULL, NULL, NULL, NULL, NULL, NULL, 1, 10),
(3, NULL, NULL, '1001', NULL, NULL, NULL, NULL, NULL, NULL, 1, 1),
(4, 'en', 'default', 'Tiffany Sugar Free Lemon Biscuit 162gm', NULL, NULL, NULL, NULL, NULL, NULL, 1, 2),
(5, NULL, NULL, 'tiffany-sugar-free-lemon-biscuit-162gm', NULL, NULL, NULL, NULL, NULL, NULL, 1, 3),
(6, NULL, 'default', NULL, NULL, 0, NULL, NULL, NULL, NULL, 1, 4),
(7, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 1, 5),
(8, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 1, 6),
(9, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 1, 7),
(10, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 1, 8),
(11, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 1, 23),
(12, NULL, NULL, NULL, NULL, 6, NULL, NULL, NULL, NULL, 1, 24),
(13, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 1, 26),
(14, 'en', 'default', '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 16),
(15, 'en', 'default', '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 17),
(16, 'en', 'default', '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 18),
(17, NULL, NULL, NULL, NULL, NULL, 350.0000, NULL, NULL, NULL, 1, 11),
(18, NULL, 'default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 12),
(19, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 13),
(20, NULL, 'default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 14),
(21, NULL, 'default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 15),
(22, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 19),
(23, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 20),
(24, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 1, 21),
(25, NULL, NULL, '262', NULL, NULL, NULL, NULL, NULL, NULL, 1, 22),
(26, 'en', 'default', '<p><span style=\"color: rgba(0, 0, 0, 0.65); font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\';\">It\'s a delicious Chocolate Muffin Cake</span></p>', NULL, NULL, NULL, NULL, NULL, NULL, 2, 9),
(27, 'en', 'default', '<p><span style=\"color: rgba(0, 0, 0, 0.65); font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\';\">Blended love with low-fat cocoa powder from the finest sources, to bake soft and sweet Chocolate Muffins.</span></p>', NULL, NULL, NULL, NULL, NULL, NULL, 2, 10),
(28, NULL, NULL, '1002', NULL, NULL, NULL, NULL, NULL, NULL, 2, 1),
(29, 'en', 'default', 'Dan Cake Chocolate Muffin Cake 50gm', NULL, NULL, NULL, NULL, NULL, NULL, 2, 2),
(30, NULL, NULL, 'dan-cake-chocolate-muffin-cake-50gm', NULL, NULL, NULL, NULL, NULL, NULL, 2, 3),
(31, NULL, 'default', NULL, NULL, 0, NULL, NULL, NULL, NULL, 2, 4),
(32, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 2, 5),
(33, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 2, 6),
(34, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 2, 7),
(35, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 2, 8),
(36, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 2, 23),
(37, NULL, NULL, NULL, NULL, 6, NULL, NULL, NULL, NULL, 2, 24),
(38, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 2, 26),
(39, 'en', 'default', '', NULL, NULL, NULL, NULL, NULL, NULL, 2, 16),
(40, 'en', 'default', '', NULL, NULL, NULL, NULL, NULL, NULL, 2, 17),
(41, 'en', 'default', '', NULL, NULL, NULL, NULL, NULL, NULL, 2, 18),
(42, NULL, NULL, NULL, NULL, NULL, 30.0000, NULL, NULL, NULL, 2, 11),
(43, NULL, 'default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 12),
(44, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 13),
(45, NULL, 'default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 14),
(46, NULL, 'default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 15),
(47, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 2, 19),
(48, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 2, 20),
(49, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 2, 21),
(50, NULL, NULL, '50', NULL, NULL, NULL, NULL, NULL, NULL, 2, 22),
(51, 'en', 'default', '<p><span style=\"color: rgba(0, 0, 0, 0.65); font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\';\">With a layer of austere vanilla cream sandwiched between two finely baked chocolate cakes.</span></p>', NULL, NULL, NULL, NULL, NULL, NULL, 3, 9),
(52, 'en', 'default', '<p><span style=\"color: rgba(0, 0, 0, 0.65); font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\';\">This chocolate layer cake is specially made from low-fat cocoa powder and skimmed milk, which does not only make it healthy but also flavorsome and appetizing.&nbsp;</span></p>', NULL, NULL, NULL, NULL, NULL, NULL, 3, 10),
(53, NULL, NULL, '1003', NULL, NULL, NULL, NULL, NULL, NULL, 3, 1),
(54, 'en', 'default', 'Dan Cake Chocolate Layer Cake12x25g 300g', NULL, NULL, NULL, NULL, NULL, NULL, 3, 2),
(55, NULL, NULL, 'dan-cake-chocolate-layer-cake12x25g-300g', NULL, NULL, NULL, NULL, NULL, NULL, 3, 3),
(56, NULL, 'default', NULL, NULL, 0, NULL, NULL, NULL, NULL, 3, 4),
(57, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 3, 5),
(58, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 3, 6),
(59, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 3, 7),
(60, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 3, 8),
(61, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 3, 23),
(62, NULL, NULL, NULL, NULL, 6, NULL, NULL, NULL, NULL, 3, 24),
(63, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 3, 26),
(64, 'en', 'default', '', NULL, NULL, NULL, NULL, NULL, NULL, 3, 16),
(65, 'en', 'default', '', NULL, NULL, NULL, NULL, NULL, NULL, 3, 17),
(66, 'en', 'default', '', NULL, NULL, NULL, NULL, NULL, NULL, 3, 18),
(67, NULL, NULL, NULL, NULL, NULL, 240.0000, NULL, NULL, NULL, 3, 11),
(68, NULL, 'default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 12),
(69, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 13),
(70, NULL, 'default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 14),
(71, NULL, 'default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 15),
(72, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 3, 19),
(73, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 3, 20),
(74, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 3, 21),
(75, NULL, NULL, '300', NULL, NULL, NULL, NULL, NULL, NULL, 3, 22),
(76, 'en', 'default', '<p><span style=\"color: rgba(0, 0, 0, 0.65); font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\';\">Individually frozen for convenience.</span></p>', NULL, NULL, NULL, NULL, NULL, NULL, 4, 9),
(77, 'en', 'default', '<p><span style=\"color: rgba(0, 0, 0, 0.65); font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\';\">Kazi Farms Kitchen chicken strips are a Good source of protein and loaded with sustenance.</span></p>', NULL, NULL, NULL, NULL, NULL, NULL, 4, 10),
(78, NULL, NULL, '1004', NULL, NULL, NULL, NULL, NULL, NULL, 4, 1),
(79, 'en', 'default', 'Kazi Farms Kitchen Chicken Strips (250gm)', NULL, NULL, NULL, NULL, NULL, NULL, 4, 2),
(80, NULL, NULL, 'kazi-farms-kitchen-chicken-strips-250gm', NULL, NULL, NULL, NULL, NULL, NULL, 4, 3),
(81, NULL, 'default', NULL, NULL, 0, NULL, NULL, NULL, NULL, 4, 4),
(82, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 4, 5),
(83, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 4, 6),
(84, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 4, 7),
(85, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 4, 8),
(86, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 4, 23),
(87, NULL, NULL, NULL, NULL, 6, NULL, NULL, NULL, NULL, 4, 24),
(88, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 4, 26),
(89, 'en', 'default', '', NULL, NULL, NULL, NULL, NULL, NULL, 4, 16),
(90, 'en', 'default', '', NULL, NULL, NULL, NULL, NULL, NULL, 4, 17),
(91, 'en', 'default', '', NULL, NULL, NULL, NULL, NULL, NULL, 4, 18),
(92, NULL, NULL, NULL, NULL, NULL, 350.0000, NULL, NULL, NULL, 4, 11),
(93, NULL, 'default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, 12),
(94, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, 13),
(95, NULL, 'default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, 14),
(96, NULL, 'default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 4, 15),
(97, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 4, 19),
(98, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 4, 20),
(99, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 4, 21),
(100, NULL, NULL, '250', NULL, NULL, NULL, NULL, NULL, NULL, 4, 22),
(101, 'en', 'default', '<p><span style=\"color: rgba(0, 0, 0, 0.65); font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\';\">The best source of calcium</span></p>', NULL, NULL, NULL, NULL, NULL, NULL, 5, 9),
(102, 'en', 'default', '<p><span style=\"color: rgba(0, 0, 0, 0.65); font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\';\">Farm Fresh milk is rich, and a great source of Vitamin D.</span></p>', NULL, NULL, NULL, NULL, NULL, NULL, 5, 10),
(103, NULL, NULL, '1005', NULL, NULL, NULL, NULL, NULL, NULL, 5, 1),
(104, 'en', 'default', 'Farm Fresh Primium Liquied Milk 500ml', NULL, NULL, NULL, NULL, NULL, NULL, 5, 2),
(105, NULL, NULL, 'farm-fresh-primium-liquied-milk-500ml', NULL, NULL, NULL, NULL, NULL, NULL, 5, 3),
(106, NULL, 'default', NULL, NULL, 0, NULL, NULL, NULL, NULL, 5, 4),
(107, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 5, 5),
(108, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 5, 6),
(109, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 5, 7),
(110, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 5, 8),
(111, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 5, 23),
(112, NULL, NULL, NULL, NULL, 6, NULL, NULL, NULL, NULL, 5, 24),
(113, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 5, 26),
(114, 'en', 'default', '', NULL, NULL, NULL, NULL, NULL, NULL, 5, 16),
(115, 'en', 'default', '', NULL, NULL, NULL, NULL, NULL, NULL, 5, 17),
(116, 'en', 'default', '', NULL, NULL, NULL, NULL, NULL, NULL, 5, 18),
(117, NULL, NULL, NULL, NULL, NULL, 200.0000, NULL, NULL, NULL, 5, 11),
(118, NULL, 'default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, 12),
(119, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, 13),
(120, NULL, 'default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, 14),
(121, NULL, 'default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, 15),
(122, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 5, 19),
(123, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 5, 20),
(124, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 5, 21),
(125, NULL, NULL, '500', NULL, NULL, NULL, NULL, NULL, NULL, 5, 22),
(126, 'en', 'default', '<p><span style=\"color: rgba(0, 0, 0, 0.65); font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\';\">Ingredients: Whole Cow\'s Milk, Emulsifier (Soya Lecithin), Vitamins and Minerals</span></p>', NULL, NULL, NULL, NULL, NULL, NULL, 6, 9),
(127, 'en', 'default', '<p><span style=\"color: rgba(0, 0, 0, 0.65); font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\';\">Anchor Fortified Milk Powder is high in calcium, protein, minerals, and vitamins that are important for a child\'s growth and development.</span></p>', NULL, NULL, NULL, NULL, NULL, NULL, 6, 10),
(128, NULL, NULL, '1006', NULL, NULL, NULL, NULL, NULL, NULL, 6, 1),
(129, 'en', 'default', 'Anchor Fortified Full Cream Milk Powder (1kg)', NULL, NULL, NULL, NULL, NULL, NULL, 6, 2),
(130, NULL, NULL, 'anchor-fortified-full-cream-milk-powder-1kg', NULL, NULL, NULL, NULL, NULL, NULL, 6, 3),
(131, NULL, 'default', NULL, NULL, 0, NULL, NULL, NULL, NULL, 6, 4),
(132, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 6, 5),
(133, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 6, 6),
(134, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 6, 7),
(135, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 6, 8),
(136, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 6, 23),
(137, NULL, NULL, NULL, NULL, 6, NULL, NULL, NULL, NULL, 6, 24),
(138, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 6, 26),
(139, 'en', 'default', '', NULL, NULL, NULL, NULL, NULL, NULL, 6, 16),
(140, 'en', 'default', '', NULL, NULL, NULL, NULL, NULL, NULL, 6, 17),
(141, 'en', 'default', '', NULL, NULL, NULL, NULL, NULL, NULL, 6, 18),
(142, NULL, NULL, NULL, NULL, NULL, 630.0000, NULL, NULL, NULL, 6, 11),
(143, NULL, 'default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6, 12),
(144, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6, 13),
(145, NULL, 'default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6, 14),
(146, NULL, 'default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 6, 15),
(147, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 6, 19),
(148, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 6, 20),
(149, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 6, 21),
(150, NULL, NULL, '1000', NULL, NULL, NULL, NULL, NULL, NULL, 6, 22),
(151, 'en', 'default', '<p>NIDO 1+ starts with the goodness of milk.</p>', NULL, NULL, NULL, NULL, NULL, NULL, 7, 9),
(152, 'en', 'default', '<p>It also includes vitamins, minerals, and prebiotics.</p>', NULL, NULL, NULL, NULL, NULL, NULL, 7, 10),
(153, NULL, NULL, '1008', NULL, NULL, NULL, NULL, NULL, NULL, 7, 1),
(154, 'en', 'default', 'Nido 1 plus 1800g - Dubai', NULL, NULL, NULL, NULL, NULL, NULL, 7, 2),
(155, NULL, NULL, 'nido-1-plus-1800g---dubai', NULL, NULL, NULL, NULL, NULL, NULL, 7, 3),
(156, NULL, 'default', NULL, NULL, 0, NULL, NULL, NULL, NULL, 7, 4),
(157, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 7, 5),
(158, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 7, 6),
(159, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 7, 7),
(160, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 7, 8),
(161, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 7, 23),
(162, NULL, NULL, NULL, NULL, 6, NULL, NULL, NULL, NULL, 7, 24),
(163, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 7, 26),
(164, 'en', 'default', '', NULL, NULL, NULL, NULL, NULL, NULL, 7, 16),
(165, 'en', 'default', '', NULL, NULL, NULL, NULL, NULL, NULL, 7, 17),
(166, 'en', 'default', '', NULL, NULL, NULL, NULL, NULL, NULL, 7, 18),
(167, NULL, NULL, NULL, NULL, NULL, 4600.0000, NULL, NULL, NULL, 7, 11),
(168, NULL, 'default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 7, 12),
(169, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 7, 13),
(170, NULL, 'default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 7, 14),
(171, NULL, 'default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 7, 15),
(172, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 7, 19),
(173, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 7, 20),
(174, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 7, 21),
(175, NULL, NULL, '1800', NULL, NULL, NULL, NULL, NULL, NULL, 7, 22),
(176, 'en', 'default', '<p>SHAMMI KABAB</p>', NULL, NULL, NULL, NULL, NULL, NULL, 8, 9),
(177, 'en', 'default', '<table style=\"border-collapse: collapse; color: rgba(0, 0, 0, 0.65); font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\';\" border=\"0\" width=\"376\" cellspacing=\"0\" cellpadding=\"0\">\r\n<tbody style=\"box-sizing: border-box;\">\r\n<tr style=\"box-sizing: border-box;\">\r\n<td class=\"xl66\" style=\"box-sizing: border-box;\" width=\"376\" height=\"20\">GOLDEN HARVEST CHICKEN SHAMMI KABAB (10PCS) is now available. Retails in 600gm.&nbsp;</td>\r\n</tr>\r\n</tbody>\r\n</table>', NULL, NULL, NULL, NULL, NULL, NULL, 8, 10),
(178, NULL, NULL, '1009', NULL, NULL, NULL, NULL, NULL, NULL, 8, 1),
(179, 'en', 'default', 'GOLDEN HARVEST CHICKEN SHAMMI KABAB (10PCS)', NULL, NULL, NULL, NULL, NULL, NULL, 8, 2),
(180, NULL, NULL, 'golden-harvest-chicken-shammi-kabab-10pcs', NULL, NULL, NULL, NULL, NULL, NULL, 8, 3),
(181, NULL, 'default', NULL, NULL, 0, NULL, NULL, NULL, NULL, 8, 4),
(182, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 8, 5),
(183, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 8, 6),
(184, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 8, 7),
(185, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 8, 8),
(186, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 8, 23),
(187, NULL, NULL, NULL, NULL, 6, NULL, NULL, NULL, NULL, 8, 24),
(188, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 8, 26),
(189, 'en', 'default', '', NULL, NULL, NULL, NULL, NULL, NULL, 8, 16),
(190, 'en', 'default', '', NULL, NULL, NULL, NULL, NULL, NULL, 8, 17),
(191, 'en', 'default', '', NULL, NULL, NULL, NULL, NULL, NULL, 8, 18),
(192, NULL, NULL, NULL, NULL, NULL, 1000.0000, NULL, NULL, NULL, 8, 11),
(193, NULL, 'default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8, 12),
(194, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8, 13),
(195, NULL, 'default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8, 14),
(196, NULL, 'default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8, 15),
(197, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 8, 19),
(198, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 8, 20),
(199, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 8, 21),
(200, NULL, NULL, '10', NULL, NULL, NULL, NULL, NULL, NULL, 8, 22),
(201, 'en', 'default', '<p>MOROG POLAW</p>', NULL, NULL, NULL, NULL, NULL, NULL, 9, 9),
(202, 'en', 'default', '<table style=\"border-collapse: collapse; color: rgba(0, 0, 0, 0.65); font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\';\" border=\"0\" width=\"376\" cellspacing=\"0\" cellpadding=\"0\">\r\n<tbody style=\"box-sizing: border-box;\">\r\n<tr style=\"box-sizing: border-box;\">\r\n<td class=\"xl66\" style=\"box-sizing: border-box;\" width=\"376\" height=\"20\">GOLDEN HARVEST MOROG POLAW is now available. This product retails in 400 gm packs.&nbsp;&nbsp;</td>\r\n</tr>\r\n</tbody>\r\n</table>', NULL, NULL, NULL, NULL, NULL, NULL, 9, 10),
(203, NULL, NULL, '1010', NULL, NULL, NULL, NULL, NULL, NULL, 9, 1),
(204, 'en', 'default', 'GOLDEN HARVEST MOROG POLAW 400 GM', NULL, NULL, NULL, NULL, NULL, NULL, 9, 2),
(205, NULL, NULL, 'golden-harvest-morog-polaw-400-gm', NULL, NULL, NULL, NULL, NULL, NULL, 9, 3),
(206, NULL, 'default', NULL, NULL, 0, NULL, NULL, NULL, NULL, 9, 4),
(207, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 9, 5),
(208, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 9, 6),
(209, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 9, 7),
(210, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 9, 8),
(211, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 9, 23),
(212, NULL, NULL, NULL, NULL, 6, NULL, NULL, NULL, NULL, 9, 24),
(213, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 9, 26),
(214, 'en', 'default', '', NULL, NULL, NULL, NULL, NULL, NULL, 9, 16),
(215, 'en', 'default', '', NULL, NULL, NULL, NULL, NULL, NULL, 9, 17),
(216, 'en', 'default', '', NULL, NULL, NULL, NULL, NULL, NULL, 9, 18),
(217, NULL, NULL, NULL, NULL, NULL, 1000.0000, NULL, NULL, NULL, 9, 11),
(218, NULL, 'default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9, 12),
(219, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9, 13),
(220, NULL, 'default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9, 14),
(221, NULL, 'default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9, 15),
(222, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 9, 19),
(223, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 9, 20),
(224, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 9, 21),
(225, NULL, NULL, '600', NULL, NULL, NULL, NULL, NULL, NULL, 9, 22),
(226, 'en', 'default', '<p>Miniket Rice</p>', NULL, NULL, NULL, NULL, NULL, NULL, 10, 9),
(227, 'en', 'default', '<p>Miniket Rice is extensively used for preparing various delicacies.</p>', NULL, NULL, NULL, NULL, NULL, NULL, 10, 10),
(228, NULL, NULL, '1011', NULL, NULL, NULL, NULL, NULL, NULL, 10, 1),
(229, 'en', 'default', 'Minicate Rice (Premium)', NULL, NULL, NULL, NULL, NULL, NULL, 10, 2),
(230, NULL, NULL, 'minicate-rice-premium', NULL, NULL, NULL, NULL, NULL, NULL, 10, 3),
(231, NULL, 'default', NULL, NULL, 0, NULL, NULL, NULL, NULL, 10, 4),
(232, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 10, 5),
(233, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 10, 6),
(234, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 10, 7),
(235, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 10, 8),
(236, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 10, 23),
(237, NULL, NULL, NULL, NULL, 6, NULL, NULL, NULL, NULL, 10, 24),
(238, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 10, 26),
(239, 'en', 'default', '', NULL, NULL, NULL, NULL, NULL, NULL, 10, 16),
(240, 'en', 'default', '', NULL, NULL, NULL, NULL, NULL, NULL, 10, 17),
(241, 'en', 'default', '', NULL, NULL, NULL, NULL, NULL, NULL, 10, 18),
(242, NULL, NULL, NULL, NULL, NULL, 60.0000, NULL, NULL, NULL, 10, 11),
(243, NULL, 'default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10, 12),
(244, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10, 13),
(245, NULL, 'default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10, 14),
(246, NULL, 'default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10, 15),
(247, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 10, 19),
(248, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 10, 20),
(249, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 10, 21),
(250, NULL, NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, 10, 22),
(251, 'en', 'default', '<p><span style=\"color: rgba(0, 0, 0, 0.65); font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\';\">Loaded with fiber, both soluble and insoluble.</span></p>', NULL, NULL, NULL, NULL, NULL, NULL, 11, 9),
(252, 'en', 'default', '<p><span style=\"color: rgba(0, 0, 0, 0.65); font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\';\">It can also be a good way to get magnesium and vitamins C and B6.</span></p>', NULL, NULL, NULL, NULL, NULL, NULL, 11, 10),
(253, NULL, NULL, '1015', NULL, NULL, NULL, NULL, NULL, NULL, 11, 1),
(254, 'en', 'default', 'Banana (Sagor) [1 Pc.]', NULL, NULL, NULL, NULL, NULL, NULL, 11, 2),
(255, NULL, NULL, 'banana-sagor-1-pc', NULL, NULL, NULL, NULL, NULL, NULL, 11, 3),
(256, NULL, 'default', NULL, NULL, 0, NULL, NULL, NULL, NULL, 11, 4),
(257, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 11, 5),
(258, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 11, 6),
(259, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 11, 7),
(260, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 11, 8),
(261, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 11, 23),
(262, NULL, NULL, NULL, NULL, 6, NULL, NULL, NULL, NULL, 11, 24),
(263, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 11, 26),
(264, 'en', 'default', '', NULL, NULL, NULL, NULL, NULL, NULL, 11, 16),
(265, 'en', 'default', '', NULL, NULL, NULL, NULL, NULL, NULL, 11, 17),
(266, 'en', 'default', '', NULL, NULL, NULL, NULL, NULL, NULL, 11, 18),
(267, NULL, NULL, NULL, NULL, NULL, 10.0000, NULL, NULL, NULL, 11, 11),
(268, NULL, 'default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11, 12),
(269, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11, 13),
(270, NULL, 'default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11, 14),
(271, NULL, 'default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 11, 15),
(272, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 11, 19),
(273, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 11, 20),
(274, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 11, 21),
(275, NULL, NULL, '100', NULL, NULL, NULL, NULL, NULL, NULL, 11, 22),
(276, 'en', 'default', '<p><span style=\"color: rgba(0, 0, 0, 0.65); font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\';\">Cabbage Is Packed With Vitamin C.</span></p>', NULL, NULL, NULL, NULL, NULL, NULL, 12, 9),
(277, 'en', 'default', '<p><span style=\"color: rgba(0, 0, 0, 0.65); font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\';\">It Helps Improve Digestion.</span></p>', NULL, NULL, NULL, NULL, NULL, NULL, 12, 10),
(278, NULL, NULL, '1016', NULL, NULL, NULL, NULL, NULL, NULL, 12, 1),
(279, 'en', 'default', 'Cabbage [Badacopi] Local Pcs', NULL, NULL, NULL, NULL, NULL, NULL, 12, 2),
(280, NULL, NULL, 'cabbage-badacopi-local-pcs', NULL, NULL, NULL, NULL, NULL, NULL, 12, 3),
(281, NULL, 'default', NULL, NULL, 0, NULL, NULL, NULL, NULL, 12, 4),
(282, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 12, 5),
(283, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 12, 6),
(284, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 12, 7),
(285, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 12, 8),
(286, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 12, 23),
(287, NULL, NULL, NULL, NULL, 6, NULL, NULL, NULL, NULL, 12, 24),
(288, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 12, 26),
(289, 'en', 'default', '', NULL, NULL, NULL, NULL, NULL, NULL, 12, 16),
(290, 'en', 'default', '', NULL, NULL, NULL, NULL, NULL, NULL, 12, 17),
(291, 'en', 'default', '', NULL, NULL, NULL, NULL, NULL, NULL, 12, 18),
(292, NULL, NULL, NULL, NULL, NULL, 20.0000, NULL, NULL, NULL, 12, 11),
(293, NULL, 'default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12, 12),
(294, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12, 13),
(295, NULL, 'default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12, 14),
(296, NULL, 'default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 12, 15),
(297, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 12, 19),
(298, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 12, 20),
(299, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 12, 21),
(300, NULL, NULL, '1000', NULL, NULL, NULL, NULL, NULL, NULL, 12, 22),
(301, 'en', 'default', '<p><span style=\"color: rgba(0, 0, 0, 0.65); font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\';\">Papaya also known as Carica Papaya, it has an elongated shape with yellow-orange color that makes it juicy and so favorable.</span></p>', NULL, NULL, NULL, NULL, NULL, NULL, 13, 9),
(302, 'en', 'default', '<p><span style=\"color: rgba(0, 0, 0, 0.65); font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\';\">The ripe fruit can be eaten cooked and is used as an ingredient in salads and stews. Ripe papaya has a lot of health benefits as it helps cleanse the body internally of any toxins, eating ripe papaya daily helps with skin conditions like acne blemishes and pigmentation, may help in lowering blood sugar and ease digestion.</span></p>', NULL, NULL, NULL, NULL, NULL, NULL, 13, 10),
(303, NULL, NULL, '1017', NULL, NULL, NULL, NULL, NULL, NULL, 13, 1),
(304, 'en', 'default', 'Papaya Ripe Thai Bulk', NULL, NULL, NULL, NULL, NULL, NULL, 13, 2),
(305, NULL, NULL, 'papaya-ripe-thai-bulk', NULL, NULL, NULL, NULL, NULL, NULL, 13, 3),
(306, NULL, 'default', NULL, NULL, 0, NULL, NULL, NULL, NULL, 13, 4),
(307, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 13, 5),
(308, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 13, 6),
(309, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 13, 7),
(310, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 13, 8),
(311, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 13, 23),
(312, NULL, NULL, NULL, NULL, 6, NULL, NULL, NULL, NULL, 13, 24),
(313, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 13, 26),
(314, 'en', 'default', '', NULL, NULL, NULL, NULL, NULL, NULL, 13, 16),
(315, 'en', 'default', '', NULL, NULL, NULL, NULL, NULL, NULL, 13, 17),
(316, 'en', 'default', '', NULL, NULL, NULL, NULL, NULL, NULL, 13, 18),
(317, NULL, NULL, NULL, NULL, NULL, 70.0000, NULL, NULL, NULL, 13, 11),
(318, NULL, 'default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 13, 12),
(319, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 13, 13),
(320, NULL, 'default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 13, 14),
(321, NULL, 'default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 13, 15),
(322, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 13, 19),
(323, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 13, 20),
(324, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 13, 21),
(325, NULL, NULL, '1000', NULL, NULL, NULL, NULL, NULL, NULL, 13, 22),
(326, 'en', 'default', '<p><span style=\"color: rgba(0, 0, 0, 0.65); font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\';\">PUMPKIN GREEN [SWEET GOURD] is rich in vitamins&nbsp;A,&nbsp;C, D, E, K, B1, B2, B3, B6 and minerals such as potassium, calcium, iron, phosphorus, selenium, zinc, magnesium, boron, cobalt.</span></p>', NULL, NULL, NULL, NULL, NULL, NULL, 14, 9),
(327, 'en', 'default', '<ul style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1em; color: rgba(0, 0, 0, 0.65); font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\';\">\r\n<li style=\"box-sizing: border-box;\">It has &nbsp;excellent taste and various way to prepare it.</li>\r\n<li style=\"box-sizing: border-box;\">It is perfect for human nutrition.</li>\r\n</ul>', NULL, NULL, NULL, NULL, NULL, NULL, 14, 10),
(328, NULL, NULL, '1018', NULL, NULL, NULL, NULL, NULL, NULL, 14, 1),
(329, 'en', 'default', 'PUMPKIN GREEN [SWEET GOURD] PCS', NULL, NULL, NULL, NULL, NULL, NULL, 14, 2),
(330, NULL, NULL, 'pumpkin-green-sweet-gourd-pcs', NULL, NULL, NULL, NULL, NULL, NULL, 14, 3),
(331, NULL, 'default', NULL, NULL, 0, NULL, NULL, NULL, NULL, 14, 4),
(332, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 14, 5),
(333, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 14, 6),
(334, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 14, 7),
(335, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 14, 8),
(336, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 14, 23),
(337, NULL, NULL, NULL, NULL, 6, NULL, NULL, NULL, NULL, 14, 24),
(338, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 14, 26),
(339, 'en', 'default', '', NULL, NULL, NULL, NULL, NULL, NULL, 14, 16),
(340, 'en', 'default', '', NULL, NULL, NULL, NULL, NULL, NULL, 14, 17),
(341, 'en', 'default', '', NULL, NULL, NULL, NULL, NULL, NULL, 14, 18),
(342, NULL, NULL, NULL, NULL, NULL, 45.0000, NULL, NULL, NULL, 14, 11),
(343, NULL, 'default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14, 12),
(344, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14, 13),
(345, NULL, 'default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14, 14),
(346, NULL, 'default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 14, 15),
(347, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 14, 19),
(348, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 14, 20),
(349, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 14, 21),
(350, NULL, NULL, '1000', NULL, NULL, NULL, NULL, NULL, NULL, 14, 22),
(351, 'en', 'default', '<p><span style=\"color: rgba(0, 0, 0, 0.65); font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\';\">Pudina Pata is favourite aromatic leaves for bengalis.</span></p>', NULL, NULL, NULL, NULL, NULL, NULL, 15, 9),
(352, 'en', 'default', '<ul style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1em; color: rgba(0, 0, 0, 0.65); font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\';\">\r\n<li style=\"box-sizing: border-box;\">It can be use in scpicy and sweet dishes both.</li>\r\n<li style=\"box-sizing: border-box;\">It makes your dishes more aromatic and delicious.</li>\r\n</ul>', NULL, NULL, NULL, NULL, NULL, NULL, 15, 10),
(353, NULL, NULL, '1019', NULL, NULL, NULL, NULL, NULL, NULL, 15, 1),
(354, 'en', 'default', 'Pudina Pata', NULL, NULL, NULL, NULL, NULL, NULL, 15, 2),
(355, NULL, NULL, 'pudina-pata', NULL, NULL, NULL, NULL, NULL, NULL, 15, 3),
(356, NULL, 'default', NULL, NULL, 0, NULL, NULL, NULL, NULL, 15, 4),
(357, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 15, 5),
(358, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 15, 6),
(359, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 15, 7),
(360, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 15, 8),
(361, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 15, 23),
(362, NULL, NULL, NULL, NULL, 6, NULL, NULL, NULL, NULL, 15, 24),
(363, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 15, 26),
(364, 'en', 'default', '', NULL, NULL, NULL, NULL, NULL, NULL, 15, 16),
(365, 'en', 'default', '', NULL, NULL, NULL, NULL, NULL, NULL, 15, 17),
(366, 'en', 'default', '', NULL, NULL, NULL, NULL, NULL, NULL, 15, 18),
(367, NULL, NULL, NULL, NULL, NULL, 16.0000, NULL, NULL, NULL, 15, 11),
(368, NULL, 'default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15, 12),
(369, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15, 13),
(370, NULL, 'default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15, 14),
(371, NULL, 'default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 15, 15),
(372, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 15, 19),
(373, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 15, 20),
(374, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 15, 21),
(375, NULL, NULL, '20', NULL, NULL, NULL, NULL, NULL, NULL, 15, 22),
(376, 'en', 'default', '<p><span style=\"color: rgba(0, 0, 0, 0.65); font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\';\">Pudina Pata is favourite aromatic leaves for bengalis.</span></p>', NULL, NULL, NULL, NULL, NULL, NULL, 16, 9),
(377, 'en', 'default', '<ul style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1em; color: rgba(0, 0, 0, 0.65); font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\';\">\r\n<li style=\"box-sizing: border-box;\">It can be use in scpicy and sweet dishes both.</li>\r\n<li style=\"box-sizing: border-box;\">It makes your dishes more aromatic and delicious.</li>\r\n</ul>', NULL, NULL, NULL, NULL, NULL, NULL, 16, 10),
(378, NULL, NULL, '1020', NULL, NULL, NULL, NULL, NULL, NULL, 16, 1),
(379, 'en', 'default', 'Dragon Fruits Imported Bulk', NULL, NULL, NULL, NULL, NULL, NULL, 16, 2),
(380, NULL, NULL, 'dragon-fruits-imported-bulk', NULL, NULL, NULL, NULL, NULL, NULL, 16, 3),
(381, NULL, 'default', NULL, NULL, 0, NULL, NULL, NULL, NULL, 16, 4),
(382, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 16, 5),
(383, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 16, 6),
(384, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 16, 7),
(385, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 16, 8),
(386, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 16, 23),
(387, NULL, NULL, NULL, NULL, 6, NULL, NULL, NULL, NULL, 16, 24),
(388, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 16, 26),
(389, 'en', 'default', '', NULL, NULL, NULL, NULL, NULL, NULL, 16, 16),
(390, 'en', 'default', '', NULL, NULL, NULL, NULL, NULL, NULL, 16, 17),
(391, 'en', 'default', '', NULL, NULL, NULL, NULL, NULL, NULL, 16, 18),
(392, NULL, NULL, NULL, NULL, NULL, 580.0000, NULL, NULL, NULL, 16, 11),
(393, NULL, 'default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 16, 12),
(394, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 16, 13),
(395, NULL, 'default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 16, 14),
(396, NULL, 'default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 16, 15),
(397, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 16, 19),
(398, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 16, 20),
(399, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 16, 21),
(400, NULL, NULL, '500', NULL, NULL, NULL, NULL, NULL, NULL, 16, 22),
(401, 'en', 'default', '<p>It\'s a very good fish in good condition.</p>', NULL, NULL, NULL, NULL, NULL, NULL, 17, 9),
(402, 'en', 'default', '<p>It\'s a very good fish in good condition.</p>', NULL, NULL, NULL, NULL, NULL, NULL, 17, 10),
(403, NULL, NULL, '2000', NULL, NULL, NULL, NULL, NULL, NULL, 17, 1),
(404, 'en', 'default', 'AYER FISH BIG (HAWOR)', NULL, NULL, NULL, NULL, NULL, NULL, 17, 2),
(405, NULL, NULL, 'ayer-fish-big-hawor', NULL, NULL, NULL, NULL, NULL, NULL, 17, 3),
(406, NULL, 'default', NULL, NULL, 0, NULL, NULL, NULL, NULL, 17, 4),
(407, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 17, 5),
(408, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 17, 6),
(409, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 17, 7),
(410, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 17, 8),
(411, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 17, 23),
(412, NULL, NULL, NULL, NULL, 6, NULL, NULL, NULL, NULL, 17, 24),
(413, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 17, 26),
(414, 'en', 'default', '', NULL, NULL, NULL, NULL, NULL, NULL, 17, 16),
(415, 'en', 'default', '', NULL, NULL, NULL, NULL, NULL, NULL, 17, 17),
(416, 'en', 'default', '', NULL, NULL, NULL, NULL, NULL, NULL, 17, 18),
(417, NULL, NULL, NULL, NULL, NULL, 1500.0000, NULL, NULL, NULL, 17, 11),
(418, NULL, 'default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 17, 12),
(419, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 17, 13),
(420, NULL, 'default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 17, 14),
(421, NULL, 'default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 17, 15),
(422, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 17, 19),
(423, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 17, 20),
(424, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 17, 21),
(425, NULL, NULL, '1500', NULL, NULL, NULL, NULL, NULL, NULL, 17, 22),
(426, 'en', 'default', '<p>It\'s a very good fish in good condition.</p>', NULL, NULL, NULL, NULL, NULL, NULL, 18, 9),
(427, 'en', 'default', '<p>It\'s a very good fish in good condition.</p>', NULL, NULL, NULL, NULL, NULL, NULL, 18, 10),
(428, NULL, NULL, '2001', NULL, NULL, NULL, NULL, NULL, NULL, 18, 1),
(429, 'en', 'default', 'KALI BAUSH FISH MEDIUM (HAWOR)', NULL, NULL, NULL, NULL, NULL, NULL, 18, 2),
(430, NULL, NULL, 'kali-baush-fish-medium-hawor', NULL, NULL, NULL, NULL, NULL, NULL, 18, 3),
(431, NULL, 'default', NULL, NULL, 0, NULL, NULL, NULL, NULL, 18, 4),
(432, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 18, 5),
(433, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 18, 6),
(434, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 18, 7),
(435, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 18, 8),
(436, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 18, 23),
(437, NULL, NULL, NULL, NULL, 6, NULL, NULL, NULL, NULL, 18, 24),
(438, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 18, 26),
(439, 'en', 'default', '', NULL, NULL, NULL, NULL, NULL, NULL, 18, 16),
(440, 'en', 'default', '', NULL, NULL, NULL, NULL, NULL, NULL, 18, 17),
(441, 'en', 'default', '', NULL, NULL, NULL, NULL, NULL, NULL, 18, 18),
(442, NULL, NULL, NULL, NULL, NULL, 1200.0000, NULL, NULL, NULL, 18, 11),
(443, NULL, 'default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 18, 12),
(444, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 18, 13),
(445, NULL, 'default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 18, 14),
(446, NULL, 'default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 18, 15),
(447, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 18, 19),
(448, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 18, 20),
(449, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 18, 21),
(450, NULL, NULL, '1000', NULL, NULL, NULL, NULL, NULL, NULL, 18, 22),
(451, 'en', 'default', '<table style=\"box-sizing: border-box; border-collapse: collapse; color: rgba(0, 0, 0, 0.65); font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\';\" border=\"0\" width=\"233\" cellspacing=\"0\" cellpadding=\"0\"><colgroup style=\"box-sizing: border-box;\"><col style=\"box-sizing: border-box;\" width=\"233\" /></colgroup>\r\n<tbody style=\"box-sizing: border-box;\">\r\n<tr style=\"box-sizing: border-box;\">\r\n<td class=\"xl70\" style=\"box-sizing: border-box;\" width=\"233\" height=\"20\">AYER FISH MEDIUM (HAWOR)</td>\r\n</tr>\r\n</tbody>\r\n</table>', NULL, NULL, NULL, NULL, NULL, NULL, 19, 9),
(452, 'en', 'default', '<table style=\"box-sizing: border-box; border-collapse: collapse; color: rgba(0, 0, 0, 0.65); font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\';\" border=\"0\" width=\"233\" cellspacing=\"0\" cellpadding=\"0\"><colgroup style=\"box-sizing: border-box;\"><col style=\"box-sizing: border-box;\" width=\"233\" /></colgroup>\r\n<tbody style=\"box-sizing: border-box;\">\r\n<tr style=\"box-sizing: border-box;\">\r\n<td class=\"xl70\" style=\"box-sizing: border-box;\" width=\"233\" height=\"20\">AYER FISH MEDIUM (HAWOR)</td>\r\n</tr>\r\n</tbody>\r\n</table>', NULL, NULL, NULL, NULL, NULL, NULL, 19, 10),
(453, NULL, NULL, '2002', NULL, NULL, NULL, NULL, NULL, NULL, 19, 1),
(454, 'en', 'default', 'AYER FISH MEDIUM (HAWOR)', NULL, NULL, NULL, NULL, NULL, NULL, 19, 2),
(455, NULL, NULL, 'ayer-fish-medium-hawor', NULL, NULL, NULL, NULL, NULL, NULL, 19, 3),
(456, NULL, 'default', NULL, NULL, 0, NULL, NULL, NULL, NULL, 19, 4),
(457, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 19, 5),
(458, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 19, 6),
(459, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 19, 7),
(460, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 19, 8),
(461, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 19, 23),
(462, NULL, NULL, NULL, NULL, 6, NULL, NULL, NULL, NULL, 19, 24),
(463, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 19, 26),
(464, 'en', 'default', '', NULL, NULL, NULL, NULL, NULL, NULL, 19, 16),
(465, 'en', 'default', '', NULL, NULL, NULL, NULL, NULL, NULL, 19, 17),
(466, 'en', 'default', '', NULL, NULL, NULL, NULL, NULL, NULL, 19, 18),
(467, NULL, NULL, NULL, NULL, NULL, 1555.0000, NULL, NULL, NULL, 19, 11),
(468, NULL, 'default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 19, 12),
(469, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 19, 13),
(470, NULL, 'default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 19, 14),
(471, NULL, 'default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 19, 15),
(472, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 19, 19),
(473, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 19, 20),
(474, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 19, 21),
(475, NULL, NULL, '1000', NULL, NULL, NULL, NULL, NULL, NULL, 19, 22),
(476, 'en', 'default', '<p>It\'s a very good fish in a good condition.</p>', NULL, NULL, NULL, NULL, NULL, NULL, 20, 9),
(477, 'en', 'default', '<p>It\'s a very good fish in a good condition.</p>', NULL, NULL, NULL, NULL, NULL, NULL, 20, 10),
(478, NULL, NULL, '2003', NULL, NULL, NULL, NULL, NULL, NULL, 20, 1),
(479, 'en', 'default', 'Taki Fish (Hawor)', NULL, NULL, NULL, NULL, NULL, NULL, 20, 2),
(480, NULL, NULL, 'taki-fish-hawor', NULL, NULL, NULL, NULL, NULL, NULL, 20, 3),
(481, NULL, 'default', NULL, NULL, 0, NULL, NULL, NULL, NULL, 20, 4),
(482, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 20, 5),
(483, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 20, 6),
(484, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 20, 7),
(485, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 20, 8),
(486, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 20, 23),
(487, NULL, NULL, NULL, NULL, 6, NULL, NULL, NULL, NULL, 20, 24),
(488, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 20, 26),
(489, 'en', 'default', '', NULL, NULL, NULL, NULL, NULL, NULL, 20, 16),
(490, 'en', 'default', '', NULL, NULL, NULL, NULL, NULL, NULL, 20, 17),
(491, 'en', 'default', '', NULL, NULL, NULL, NULL, NULL, NULL, 20, 18),
(492, NULL, NULL, NULL, NULL, NULL, 800.0000, NULL, NULL, NULL, 20, 11),
(493, NULL, 'default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 20, 12),
(494, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 20, 13),
(495, NULL, 'default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 20, 14),
(496, NULL, 'default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 20, 15),
(497, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 20, 19),
(498, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 20, 20),
(499, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 20, 21),
(500, NULL, NULL, '500', NULL, NULL, NULL, NULL, NULL, NULL, 20, 22),
(501, 'en', 'default', '<p>It\'s a very good fish and in a very good condition.</p>', NULL, NULL, NULL, NULL, NULL, NULL, 21, 9),
(502, 'en', 'default', '<p>It\'s a very good fish and in a very good condition.</p>', NULL, NULL, NULL, NULL, NULL, NULL, 21, 10),
(503, NULL, NULL, '2004', NULL, NULL, NULL, NULL, NULL, NULL, 21, 1),
(504, 'en', 'default', 'Mrigal Fish (1-2.99 kg/Pc)', NULL, NULL, NULL, NULL, NULL, NULL, 21, 2),
(505, NULL, NULL, 'mrigal-fish-1-299-kgpc', NULL, NULL, NULL, NULL, NULL, NULL, 21, 3),
(506, NULL, 'default', NULL, NULL, 0, NULL, NULL, NULL, NULL, 21, 4),
(507, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 21, 5),
(508, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 21, 6),
(509, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 21, 7),
(510, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 21, 8),
(511, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 21, 23),
(512, NULL, NULL, NULL, NULL, 6, NULL, NULL, NULL, NULL, 21, 24),
(513, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 21, 26),
(514, 'en', 'default', '', NULL, NULL, NULL, NULL, NULL, NULL, 21, 16),
(515, 'en', 'default', '', NULL, NULL, NULL, NULL, NULL, NULL, 21, 17),
(516, 'en', 'default', '', NULL, NULL, NULL, NULL, NULL, NULL, 21, 18),
(517, NULL, NULL, NULL, NULL, NULL, 500.0000, NULL, NULL, NULL, 21, 11),
(518, NULL, 'default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 21, 12),
(519, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 21, 13),
(520, NULL, 'default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 21, 14),
(521, NULL, 'default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 21, 15),
(522, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 21, 19),
(523, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 21, 20),
(524, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 21, 21),
(525, NULL, NULL, '1000', NULL, NULL, NULL, NULL, NULL, NULL, 21, 22),
(526, 'en', 'default', '<p>It\'s a very good fish and in a good condition.</p>', NULL, NULL, NULL, NULL, NULL, NULL, 22, 9),
(527, 'en', 'default', '<p>It\'s a very good fish and in a good condition.</p>', NULL, NULL, NULL, NULL, NULL, NULL, 22, 10),
(528, NULL, NULL, '2005', NULL, NULL, NULL, NULL, NULL, NULL, 22, 1),
(529, 'en', 'default', 'Pabda Fish', NULL, NULL, NULL, NULL, NULL, NULL, 22, 2),
(530, NULL, NULL, 'pabda-fish', NULL, NULL, NULL, NULL, NULL, NULL, 22, 3),
(531, NULL, 'default', NULL, NULL, 0, NULL, NULL, NULL, NULL, 22, 4),
(532, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 22, 5),
(533, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 22, 6),
(534, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 22, 7),
(535, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 22, 8),
(536, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 22, 23),
(537, NULL, NULL, NULL, NULL, 6, NULL, NULL, NULL, NULL, 22, 24),
(538, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 22, 26),
(539, 'en', 'default', '', NULL, NULL, NULL, NULL, NULL, NULL, 22, 16);
INSERT INTO `bgwyproduct_attribute_values` (`id`, `locale`, `channel`, `text_value`, `boolean_value`, `integer_value`, `float_value`, `datetime_value`, `date_value`, `json_value`, `product_id`, `attribute_id`) VALUES
(540, 'en', 'default', '', NULL, NULL, NULL, NULL, NULL, NULL, 22, 17),
(541, 'en', 'default', '', NULL, NULL, NULL, NULL, NULL, NULL, 22, 18),
(542, NULL, NULL, NULL, NULL, NULL, 420.0000, NULL, NULL, NULL, 22, 11),
(543, NULL, 'default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 22, 12),
(544, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 22, 13),
(545, NULL, 'default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 22, 14),
(546, NULL, 'default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 22, 15),
(547, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 22, 19),
(548, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 22, 20),
(549, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 22, 21),
(550, NULL, NULL, '500', NULL, NULL, NULL, NULL, NULL, NULL, 22, 22),
(551, 'en', 'default', '<p><span style=\"color: rgba(0, 0, 0, 0.65); font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\';\">While prawns contain higher than average amounts of cholesterol, they do not lead to higher cholesterol levels in the body due to their healthy fat profile.</span></p>', NULL, NULL, NULL, NULL, NULL, NULL, 23, 9),
(552, 'en', 'default', '<p><span style=\"color: rgba(0, 0, 0, 0.65); font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\';\">Prawns are a great source of Vitamins B-6, B-12 and Niacin, which help the body produce energy, build muscle and replenish red blood cells.</span></p>', NULL, NULL, NULL, NULL, NULL, NULL, 23, 10),
(553, NULL, NULL, '2006', NULL, NULL, NULL, NULL, NULL, NULL, 23, 1),
(554, 'en', 'default', 'Golda Chingri', NULL, NULL, NULL, NULL, NULL, NULL, 23, 2),
(555, NULL, NULL, 'golda-chingri', NULL, NULL, NULL, NULL, NULL, NULL, 23, 3),
(556, NULL, 'default', NULL, NULL, 0, NULL, NULL, NULL, NULL, 23, 4),
(557, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 23, 5),
(558, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 23, 6),
(559, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 23, 7),
(560, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 23, 8),
(561, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 23, 23),
(562, NULL, NULL, NULL, NULL, 6, NULL, NULL, NULL, NULL, 23, 24),
(563, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 23, 26),
(564, 'en', 'default', '', NULL, NULL, NULL, NULL, NULL, NULL, 23, 16),
(565, 'en', 'default', '', NULL, NULL, NULL, NULL, NULL, NULL, 23, 17),
(566, 'en', 'default', '', NULL, NULL, NULL, NULL, NULL, NULL, 23, 18),
(567, NULL, NULL, NULL, NULL, NULL, 2500.0000, NULL, NULL, NULL, 23, 11),
(568, NULL, 'default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 23, 12),
(569, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 23, 13),
(570, NULL, 'default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 23, 14),
(571, NULL, 'default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 23, 15),
(572, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 23, 19),
(573, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 23, 20),
(574, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 23, 21),
(575, NULL, NULL, '1000', NULL, NULL, NULL, NULL, NULL, NULL, 23, 22),
(576, 'en', 'default', '<div class=\"header\" style=\"box-sizing: border-box; color: rgba(0, 0, 0, 0.65); font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\';\">\r\n<div class=\"title-container\" style=\"box-sizing: border-box;\">\r\n<h1 class=\"title\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0.5em; color: rgba(0, 0, 0, 0.85); font-weight: 500; font-size: 1.5em;\">Shokti Mishti Doi keep you healthy</h1>\r\n<p>&nbsp;</p>\r\n</div>\r\n</div>', NULL, NULL, NULL, NULL, NULL, NULL, 24, 9),
(577, 'en', 'default', '<h1 class=\"title\" style=\"font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; box-sizing: border-box; margin-top: 0px; margin-bottom: 0.5em; color: rgba(0, 0, 0, 0.85); font-weight: 500; font-size: 1.5em;\">Shokti Mishti Doi keep you healthy</h1>', NULL, NULL, NULL, NULL, NULL, NULL, 24, 10),
(578, NULL, NULL, '3000', NULL, NULL, NULL, NULL, NULL, NULL, 24, 1),
(579, 'en', 'default', 'Shokti Mishti Doi', NULL, NULL, NULL, NULL, NULL, NULL, 24, 2),
(580, NULL, NULL, 'shokti-mishti-doi', NULL, NULL, NULL, NULL, NULL, NULL, 24, 3),
(581, NULL, 'default', NULL, NULL, 0, NULL, NULL, NULL, NULL, 24, 4),
(582, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 24, 5),
(583, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 24, 6),
(584, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 24, 7),
(585, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 24, 8),
(586, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 24, 23),
(587, NULL, NULL, NULL, NULL, 6, NULL, NULL, NULL, NULL, 24, 24),
(588, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 24, 26),
(589, 'en', 'default', '', NULL, NULL, NULL, NULL, NULL, NULL, 24, 16),
(590, 'en', 'default', '', NULL, NULL, NULL, NULL, NULL, NULL, 24, 17),
(591, 'en', 'default', '', NULL, NULL, NULL, NULL, NULL, NULL, 24, 18),
(592, NULL, NULL, NULL, NULL, NULL, 25.0000, NULL, NULL, NULL, 24, 11),
(593, NULL, 'default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 24, 12),
(594, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 24, 13),
(595, NULL, 'default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 24, 14),
(596, NULL, 'default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 24, 15),
(597, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 24, 19),
(598, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 24, 20),
(599, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 24, 21),
(600, NULL, NULL, '25', NULL, NULL, NULL, NULL, NULL, NULL, 24, 22),
(601, 'en', 'default', '<h1 class=\"title\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0.5em; color: rgba(0, 0, 0, 0.85); font-weight: 500; font-size: 1.5em; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\';\">Shokti+ Sweetened Yogurt- Plain is good for health</h1>', NULL, NULL, NULL, NULL, NULL, NULL, 25, 9),
(602, 'en', 'default', '<h1 class=\"title\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0.5em; color: rgba(0, 0, 0, 0.85); font-weight: 500; font-size: 1.5em; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\';\">Shokti+ Sweetened Yogurt- Plain is good for health</h1>', NULL, NULL, NULL, NULL, NULL, NULL, 25, 10),
(603, NULL, NULL, '3001', NULL, NULL, NULL, NULL, NULL, NULL, 25, 1),
(604, 'en', 'default', 'Shokti+ Sweetened Yogurt- Plain', NULL, NULL, NULL, NULL, NULL, NULL, 25, 2),
(605, NULL, NULL, 'shokti-sweetened-yogurt--plain', NULL, NULL, NULL, NULL, NULL, NULL, 25, 3),
(606, NULL, 'default', NULL, NULL, 0, NULL, NULL, NULL, NULL, 25, 4),
(607, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 25, 5),
(608, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 25, 6),
(609, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 25, 7),
(610, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 25, 8),
(611, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 25, 23),
(612, NULL, NULL, NULL, NULL, 6, NULL, NULL, NULL, NULL, 25, 24),
(613, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 25, 26),
(614, 'en', 'default', '', NULL, NULL, NULL, NULL, NULL, NULL, 25, 16),
(615, 'en', 'default', '', NULL, NULL, NULL, NULL, NULL, NULL, 25, 17),
(616, 'en', 'default', '', NULL, NULL, NULL, NULL, NULL, NULL, 25, 18),
(617, NULL, NULL, NULL, NULL, NULL, 50.0000, NULL, NULL, NULL, 25, 11),
(618, NULL, 'default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 25, 12),
(619, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 25, 13),
(620, NULL, 'default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 25, 14),
(621, NULL, 'default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 25, 15),
(622, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 25, 19),
(623, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 25, 20),
(624, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 25, 21),
(625, NULL, NULL, '80', NULL, NULL, NULL, NULL, NULL, NULL, 25, 22),
(626, 'en', 'default', '<p><span style=\"color: rgba(0, 0, 0, 0.65); font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\';\">Milk Vita Liquid Milk 1ltr is pasteurize milk</span></p>', NULL, NULL, NULL, NULL, NULL, NULL, 26, 9),
(627, 'en', 'default', '<p><span style=\"color: rgba(0, 0, 0, 0.65); font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\';\">You can make delicious sweet dishes by using Milk Vita Liquid Milk 1lt.</span></p>', NULL, NULL, NULL, NULL, NULL, NULL, 26, 10),
(628, NULL, NULL, '3002', NULL, NULL, NULL, NULL, NULL, NULL, 26, 1),
(629, 'en', 'default', ' Milk Vita Liquid Milk 1ltr', NULL, NULL, NULL, NULL, NULL, NULL, 26, 2),
(630, NULL, NULL, '-milk-vita-liquid-milk-1ltr', NULL, NULL, NULL, NULL, NULL, NULL, 26, 3),
(631, NULL, 'default', NULL, NULL, 0, NULL, NULL, NULL, NULL, 26, 4),
(632, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 26, 5),
(633, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 26, 6),
(634, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 26, 7),
(635, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 26, 8),
(636, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 26, 23),
(637, NULL, NULL, NULL, NULL, 6, NULL, NULL, NULL, NULL, 26, 24),
(638, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 26, 26),
(639, 'en', 'default', '', NULL, NULL, NULL, NULL, NULL, NULL, 26, 16),
(640, 'en', 'default', '', NULL, NULL, NULL, NULL, NULL, NULL, 26, 17),
(641, 'en', 'default', '', NULL, NULL, NULL, NULL, NULL, NULL, 26, 18),
(642, NULL, NULL, NULL, NULL, NULL, 80.0000, NULL, NULL, NULL, 26, 11),
(643, NULL, 'default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 26, 12),
(644, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 26, 13),
(645, NULL, 'default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 26, 14),
(646, NULL, 'default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 26, 15),
(647, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 26, 19),
(648, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 26, 20),
(649, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 26, 21),
(650, NULL, NULL, '1000', NULL, NULL, NULL, NULL, NULL, NULL, 26, 22),
(651, 'en', 'default', '<h1 class=\"title\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0.5em; color: rgba(0, 0, 0, 0.85); font-weight: 500; font-size: 1.5em; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\';\">Aarong Dairy Shredded Mozzarella Cheese 200 g good for health</h1>', NULL, NULL, NULL, NULL, NULL, NULL, 27, 9),
(652, 'en', 'default', '<h1 class=\"title\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0.5em; color: rgba(0, 0, 0, 0.85); font-weight: 500; font-size: 1.5em; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\';\">Aarong Dairy Shredded Mozzarella Cheese 200 g good for health</h1>', NULL, NULL, NULL, NULL, NULL, NULL, 27, 10),
(653, NULL, NULL, '3003', NULL, NULL, NULL, NULL, NULL, NULL, 27, 1),
(654, 'en', 'default', 'Aarong Dairy Shredded Mozzarella Cheese 200 g', NULL, NULL, NULL, NULL, NULL, NULL, 27, 2),
(655, NULL, NULL, 'aarong-dairy-shredded-mozzarella-cheese-200-g', NULL, NULL, NULL, NULL, NULL, NULL, 27, 3),
(656, NULL, 'default', NULL, NULL, 0, NULL, NULL, NULL, NULL, 27, 4),
(657, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 27, 5),
(658, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 27, 6),
(659, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 27, 7),
(660, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 27, 8),
(661, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 27, 23),
(662, NULL, NULL, NULL, NULL, 6, NULL, NULL, NULL, NULL, 27, 24),
(663, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 27, 26),
(664, 'en', 'default', '', NULL, NULL, NULL, NULL, NULL, NULL, 27, 16),
(665, 'en', 'default', '', NULL, NULL, NULL, NULL, NULL, NULL, 27, 17),
(666, 'en', 'default', '', NULL, NULL, NULL, NULL, NULL, NULL, 27, 18),
(667, NULL, NULL, NULL, NULL, NULL, 220.0000, NULL, NULL, NULL, 27, 11),
(668, NULL, 'default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 27, 12),
(669, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 27, 13),
(670, NULL, 'default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 27, 14),
(671, NULL, 'default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 27, 15),
(672, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 27, 19),
(673, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 27, 20),
(674, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 27, 21),
(675, NULL, NULL, '200', NULL, NULL, NULL, NULL, NULL, NULL, 27, 22),
(676, 'en', 'default', '<p>For&nbsp;<span style=\"color: rgba(0, 0, 0, 0.85); font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; font-size: 21px;\">Coffee Lovers</span></p>', NULL, NULL, NULL, NULL, NULL, NULL, 28, 9),
(677, 'en', 'default', '<p>For&nbsp;<span style=\"color: rgba(0, 0, 0, 0.85); font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; font-size: 21px;\">Coffee Lovers</span></p>', NULL, NULL, NULL, NULL, NULL, NULL, 28, 10),
(678, NULL, NULL, '4000', NULL, NULL, NULL, NULL, NULL, NULL, 28, 1),
(679, 'en', 'default', ' Coffee Lovers', NULL, NULL, NULL, NULL, NULL, NULL, 28, 2),
(680, NULL, NULL, '-coffee-lovers', NULL, NULL, NULL, NULL, NULL, NULL, 28, 3),
(681, NULL, 'default', NULL, NULL, 0, NULL, NULL, NULL, NULL, 28, 4),
(682, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 28, 5),
(683, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 28, 6),
(684, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 28, 7),
(685, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 28, 8),
(686, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 28, 23),
(687, NULL, NULL, NULL, NULL, 6, NULL, NULL, NULL, NULL, 28, 24),
(688, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 28, 26),
(689, 'en', 'default', '', NULL, NULL, NULL, NULL, NULL, NULL, 28, 16),
(690, 'en', 'default', '', NULL, NULL, NULL, NULL, NULL, NULL, 28, 17),
(691, 'en', 'default', '', NULL, NULL, NULL, NULL, NULL, NULL, 28, 18),
(692, NULL, NULL, NULL, NULL, NULL, 450.0000, NULL, NULL, NULL, 28, 11),
(693, NULL, 'default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 28, 12),
(694, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 28, 13),
(695, NULL, 'default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 28, 14),
(696, NULL, 'default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 28, 15),
(697, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 28, 19),
(698, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 28, 20),
(699, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 28, 21),
(700, NULL, NULL, '500', NULL, NULL, NULL, NULL, NULL, NULL, 28, 22),
(701, 'en', 'default', '<div class=\"header\" style=\"box-sizing: border-box; color: rgba(0, 0, 0, 0.65); font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\';\">\r\n<div class=\"title-container\" style=\"box-sizing: border-box;\">\r\n<h1 class=\"title\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0.5em; color: rgba(0, 0, 0, 0.85); font-weight: 500; font-size: 1.5em;\">Mirinda Orange Pet 1 Ltr , so good</h1>\r\n<p>&nbsp;</p>\r\n</div>\r\n</div>', NULL, NULL, NULL, NULL, NULL, NULL, 29, 9),
(702, 'en', 'default', '<h1 class=\"title\" style=\"font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; box-sizing: border-box; margin-top: 0px; margin-bottom: 0.5em; color: rgba(0, 0, 0, 0.85); font-weight: 500; font-size: 1.5em;\">Mirinda Orange Pet 1 Ltr , so good</h1>', NULL, NULL, NULL, NULL, NULL, NULL, 29, 10),
(703, NULL, NULL, '4001', NULL, NULL, NULL, NULL, NULL, NULL, 29, 1),
(704, 'en', 'default', 'Mirinda Orange Pet 1 Ltr', NULL, NULL, NULL, NULL, NULL, NULL, 29, 2),
(705, NULL, NULL, 'mirinda-orange-pet-1-ltr', NULL, NULL, NULL, NULL, NULL, NULL, 29, 3),
(706, NULL, 'default', NULL, NULL, 0, NULL, NULL, NULL, NULL, 29, 4),
(707, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 29, 5),
(708, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 29, 6),
(709, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 29, 7),
(710, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 29, 8),
(711, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 29, 23),
(712, NULL, NULL, NULL, NULL, 6, NULL, NULL, NULL, NULL, 29, 24),
(713, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 29, 26),
(714, 'en', 'default', '', NULL, NULL, NULL, NULL, NULL, NULL, 29, 16),
(715, 'en', 'default', '', NULL, NULL, NULL, NULL, NULL, NULL, 29, 17),
(716, 'en', 'default', '', NULL, NULL, NULL, NULL, NULL, NULL, 29, 18),
(717, NULL, NULL, NULL, NULL, NULL, 70.0000, NULL, NULL, NULL, 29, 11),
(718, NULL, 'default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 29, 12),
(719, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 29, 13),
(720, NULL, 'default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 29, 14),
(721, NULL, 'default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 29, 15),
(722, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 29, 19),
(723, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 29, 20),
(724, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 29, 21),
(725, NULL, NULL, '1000', NULL, NULL, NULL, NULL, NULL, NULL, 29, 22),
(726, 'en', 'default', '<h1 class=\"title\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0.5em; color: rgba(0, 0, 0, 0.85); font-weight: 500; font-size: 1.5em; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\';\">FANTA GRAPE CAN 320/330ML, sooo good</h1>', NULL, NULL, NULL, NULL, NULL, NULL, 30, 9),
(727, 'en', 'default', '<h1 class=\"title\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0.5em; color: rgba(0, 0, 0, 0.85); font-weight: 500; font-size: 1.5em; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\';\">FANTA GRAPE CAN 320/330ML, sooo good</h1>', NULL, NULL, NULL, NULL, NULL, NULL, 30, 10),
(728, NULL, NULL, '4002', NULL, NULL, NULL, NULL, NULL, NULL, 30, 1),
(729, 'en', 'default', 'FANTA GRAPE CAN 320/330ML', NULL, NULL, NULL, NULL, NULL, NULL, 30, 2),
(730, NULL, NULL, 'fanta-grape-can-320330ml', NULL, NULL, NULL, NULL, NULL, NULL, 30, 3),
(731, NULL, 'default', NULL, NULL, 0, NULL, NULL, NULL, NULL, 30, 4),
(732, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 30, 5),
(733, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 30, 6),
(734, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 30, 7),
(735, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 30, 8),
(736, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 30, 23),
(737, NULL, NULL, NULL, NULL, 6, NULL, NULL, NULL, NULL, 30, 24),
(738, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 30, 26),
(739, 'en', 'default', '', NULL, NULL, NULL, NULL, NULL, NULL, 30, 16),
(740, 'en', 'default', '', NULL, NULL, NULL, NULL, NULL, NULL, 30, 17),
(741, 'en', 'default', '', NULL, NULL, NULL, NULL, NULL, NULL, 30, 18),
(742, NULL, NULL, NULL, NULL, NULL, 150.0000, NULL, NULL, NULL, 30, 11),
(743, NULL, 'default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 30, 12),
(744, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 30, 13),
(745, NULL, 'default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 30, 14),
(746, NULL, 'default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 30, 15),
(747, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 30, 19),
(748, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 30, 20),
(749, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 30, 21),
(750, NULL, NULL, '350', NULL, NULL, NULL, NULL, NULL, NULL, 30, 22),
(751, 'en', 'default', '<p><span style=\"color: rgba(0, 0, 0, 0.65); font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\';\">Nescafe Original Coffee a Frothy instant coffee right at home.</span></p>', NULL, NULL, NULL, NULL, NULL, NULL, 31, 9),
(752, 'en', 'default', '<p><span style=\"color: rgba(0, 0, 0, 0.65); font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\';\">It made using specially selected and carefully roasted beans to create a captivating \'coffee experience\'.</span></p>', NULL, NULL, NULL, NULL, NULL, NULL, 31, 10),
(753, NULL, NULL, '4003', NULL, NULL, NULL, NULL, NULL, NULL, 31, 1),
(754, 'en', 'default', 'Nescafe Original Coffee Jar', NULL, NULL, NULL, NULL, NULL, NULL, 31, 2),
(755, NULL, NULL, 'nescafe-original-coffee-jar', NULL, NULL, NULL, NULL, NULL, NULL, 31, 3),
(756, NULL, 'default', NULL, NULL, 0, NULL, NULL, NULL, NULL, 31, 4),
(757, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 31, 5),
(758, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 31, 6),
(759, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 31, 7),
(760, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 31, 8),
(761, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 31, 23),
(762, NULL, NULL, NULL, NULL, 6, NULL, NULL, NULL, NULL, 31, 24),
(763, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 31, 26),
(764, 'en', 'default', '', NULL, NULL, NULL, NULL, NULL, NULL, 31, 16),
(765, 'en', 'default', '', NULL, NULL, NULL, NULL, NULL, NULL, 31, 17),
(766, 'en', 'default', '', NULL, NULL, NULL, NULL, NULL, NULL, 31, 18),
(767, NULL, NULL, NULL, NULL, NULL, 520.0000, NULL, NULL, NULL, 31, 11),
(768, NULL, 'default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 31, 12),
(769, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 31, 13),
(770, NULL, 'default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 31, 14),
(771, NULL, 'default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 31, 15),
(772, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 31, 19),
(773, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 31, 20),
(774, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 31, 21),
(775, NULL, NULL, '210', NULL, NULL, NULL, NULL, NULL, NULL, 31, 22),
(776, 'en', 'default', '<p>&nbsp;</p>\r\n<p><span style=\"color: rgba(0, 0, 0, 0.85); font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; font-size: 21px;\">Sharbat Rooh Afza (750ml), soo good</span></p>', NULL, NULL, NULL, NULL, NULL, NULL, 32, 9),
(777, 'en', 'default', '<p>&nbsp;</p>\r\n<p><span style=\"color: rgba(0, 0, 0, 0.85); font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; font-size: 21px;\">Sharbat Rooh Afza (750ml), soo good</span></p>', NULL, NULL, NULL, NULL, NULL, NULL, 32, 10),
(778, NULL, NULL, '4004', NULL, NULL, NULL, NULL, NULL, NULL, 32, 1),
(779, 'en', 'default', ' Sharbat Rooh Afza (750ml)', NULL, NULL, NULL, NULL, NULL, NULL, 32, 2),
(780, NULL, NULL, '-sharbat-rooh-afza-750ml', NULL, NULL, NULL, NULL, NULL, NULL, 32, 3),
(781, NULL, 'default', NULL, NULL, 0, NULL, NULL, NULL, NULL, 32, 4),
(782, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 32, 5),
(783, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 32, 6),
(784, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 32, 7),
(785, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 32, 8),
(786, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 32, 23),
(787, NULL, NULL, NULL, NULL, 6, NULL, NULL, NULL, NULL, 32, 24),
(788, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 32, 26),
(789, 'en', 'default', '', NULL, NULL, NULL, NULL, NULL, NULL, 32, 16),
(790, 'en', 'default', '', NULL, NULL, NULL, NULL, NULL, NULL, 32, 17),
(791, 'en', 'default', '', NULL, NULL, NULL, NULL, NULL, NULL, 32, 18),
(792, NULL, NULL, NULL, NULL, NULL, 250.0000, NULL, NULL, NULL, 32, 11),
(793, NULL, 'default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 32, 12),
(794, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 32, 13),
(795, NULL, 'default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 32, 14),
(796, NULL, 'default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 32, 15),
(797, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 32, 19),
(798, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 32, 20),
(799, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 32, 21),
(800, NULL, NULL, '750', NULL, NULL, NULL, NULL, NULL, NULL, 32, 22),
(801, 'en', 'default', '<p>&nbsp;</p>\r\n<p><span style=\"color: rgba(0, 0, 0, 0.85); font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; font-size: 21px;\">Schweppes Dry Ginger Ale Can, soo good</span></p>', NULL, NULL, NULL, NULL, NULL, NULL, 33, 9),
(802, 'en', 'default', '<p>&nbsp;</p>\r\n<p><span style=\"color: rgba(0, 0, 0, 0.85); font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; font-size: 21px;\">Schweppes Dry Ginger Ale Can, soo good</span></p>', NULL, NULL, NULL, NULL, NULL, NULL, 33, 10),
(803, NULL, NULL, '4005', NULL, NULL, NULL, NULL, NULL, NULL, 33, 1),
(804, 'en', 'default', ' Schweppes Dry Ginger Ale Can', NULL, NULL, NULL, NULL, NULL, NULL, 33, 2),
(805, NULL, NULL, '-schweppes-dry-ginger-ale-can', NULL, NULL, NULL, NULL, NULL, NULL, 33, 3),
(806, NULL, 'default', NULL, NULL, 0, NULL, NULL, NULL, NULL, 33, 4),
(807, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 33, 5),
(808, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 33, 6),
(809, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 33, 7),
(810, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 33, 8),
(811, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 33, 23),
(812, NULL, NULL, NULL, NULL, 6, NULL, NULL, NULL, NULL, 33, 24),
(813, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 33, 26),
(814, 'en', 'default', '', NULL, NULL, NULL, NULL, NULL, NULL, 33, 16),
(815, 'en', 'default', '', NULL, NULL, NULL, NULL, NULL, NULL, 33, 17),
(816, 'en', 'default', '', NULL, NULL, NULL, NULL, NULL, NULL, 33, 18),
(817, NULL, NULL, NULL, NULL, NULL, 200.0000, NULL, NULL, NULL, 33, 11),
(818, NULL, 'default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 33, 12),
(819, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 33, 13),
(820, NULL, 'default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 33, 14),
(821, NULL, 'default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 33, 15),
(822, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 33, 19),
(823, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 33, 20),
(824, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 33, 21),
(825, NULL, NULL, '330', NULL, NULL, NULL, NULL, NULL, NULL, 33, 22),
(826, 'en', 'default', '<div class=\"title-container\" style=\"box-sizing: border-box; color: rgba(0, 0, 0, 0.65); font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\';\">\r\n<ul style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1em; color: rgba(0, 0, 0, 0.65); font-size: 14px;\">\r\n<li dir=\"ltr\" style=\"box-sizing: border-box;\">\r\n<p dir=\"ltr\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1em;\" role=\"presentation\"><span style=\"box-sizing: border-box;\">Banishes dirt.</span></p>\r\n</li>\r\n<li dir=\"ltr\" style=\"box-sizing: border-box;\">\r\n<p dir=\"ltr\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1em;\" role=\"presentation\"><span style=\"box-sizing: border-box;\">Removes excess oil, acne, and unwanted spots of skin.</span></p>\r\n</li>\r\n<li dir=\"ltr\" style=\"box-sizing: border-box;\">\r\n<p dir=\"ltr\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1em;\" role=\"presentation\"><span style=\"box-sizing: border-box;\">Prevents tightening of the pores.</span></p>\r\n</li>\r\n</ul>\r\n</div>', NULL, NULL, NULL, NULL, NULL, NULL, 34, 9),
(827, 'en', 'default', '<ul style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1em; color: rgba(0, 0, 0, 0.65); font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\';\">\r\n<li dir=\"ltr\" style=\"box-sizing: border-box;\">\r\n<p dir=\"ltr\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1em;\" role=\"presentation\"><span style=\"box-sizing: border-box;\">Makes skin fresh, lively &amp; radiant.</span></p>\r\n</li>\r\n<li dir=\"ltr\" style=\"box-sizing: border-box;\">\r\n<p dir=\"ltr\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1em;\" role=\"presentation\"><span style=\"box-sizing: border-box;\">Ingredients: Chandan, Tulsi, Neem, Rose, Lentils, Jasthimadhu.</span></p>\r\n</li>\r\n<li dir=\"ltr\" style=\"box-sizing: border-box;\">\r\n<p dir=\"ltr\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1em;\" role=\"presentation\"><span style=\"box-sizing: border-box;\">For dry skin: Instead of water, apply it with milk or olive</span></p>\r\n</li>\r\n</ul>', NULL, NULL, NULL, NULL, NULL, NULL, 34, 10),
(828, NULL, NULL, '5000', NULL, NULL, NULL, NULL, NULL, NULL, 34, 1),
(829, 'en', 'default', 'Organikare Uptan Face Pack (50g)', NULL, NULL, NULL, NULL, NULL, NULL, 34, 2),
(830, NULL, NULL, 'organikare-uptan-face-pack-50g', NULL, NULL, NULL, NULL, NULL, NULL, 34, 3),
(831, NULL, 'default', NULL, NULL, 0, NULL, NULL, NULL, NULL, 34, 4),
(832, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 34, 5),
(833, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 34, 6),
(834, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 34, 7),
(835, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 34, 8),
(836, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 34, 23),
(837, NULL, NULL, NULL, NULL, 6, NULL, NULL, NULL, NULL, 34, 24),
(838, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 34, 26),
(839, 'en', 'default', '', NULL, NULL, NULL, NULL, NULL, NULL, 34, 16),
(840, 'en', 'default', '', NULL, NULL, NULL, NULL, NULL, NULL, 34, 17),
(841, 'en', 'default', '', NULL, NULL, NULL, NULL, NULL, NULL, 34, 18),
(842, NULL, NULL, NULL, NULL, NULL, 300.0000, NULL, NULL, NULL, 34, 11),
(843, NULL, 'default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 34, 12),
(844, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 34, 13),
(845, NULL, 'default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 34, 14),
(846, NULL, 'default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 34, 15),
(847, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 34, 19),
(848, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 34, 20),
(849, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 34, 21),
(850, NULL, NULL, '100', NULL, NULL, NULL, NULL, NULL, NULL, 34, 22),
(851, 'en', 'default', '<table style=\"box-sizing: border-box; border-collapse: collapse; color: rgba(0, 0, 0, 0.65); font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\';\" border=\"0\" width=\"341\" cellspacing=\"0\" cellpadding=\"0\"><colgroup style=\"box-sizing: border-box;\"><col style=\"box-sizing: border-box;\" width=\"341\" /></colgroup>\r\n<tbody style=\"box-sizing: border-box;\">\r\n<tr style=\"box-sizing: border-box;\">\r\n<td class=\"xl68\" style=\"box-sizing: border-box;\" width=\"341\" height=\"20\">HIMALAYA VOLUME&amp;BOUNCE AD SHAMPOO 400ML</td>\r\n</tr>\r\n</tbody>\r\n</table>', NULL, NULL, NULL, NULL, NULL, NULL, 35, 9),
(852, 'en', 'default', '<table style=\"box-sizing: border-box; border-collapse: collapse; color: rgba(0, 0, 0, 0.65); font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\';\" border=\"0\" width=\"341\" cellspacing=\"0\" cellpadding=\"0\"><colgroup style=\"box-sizing: border-box;\"><col style=\"box-sizing: border-box;\" width=\"341\" /></colgroup>\r\n<tbody style=\"box-sizing: border-box;\">\r\n<tr style=\"box-sizing: border-box;\">\r\n<td class=\"xl68\" style=\"box-sizing: border-box;\" width=\"341\" height=\"20\">HIMALAYA VOLUME&amp;BOUNCE AD SHAMPOO 400ML</td>\r\n</tr>\r\n</tbody>\r\n</table>', NULL, NULL, NULL, NULL, NULL, NULL, 35, 10),
(853, NULL, NULL, '5001', NULL, NULL, NULL, NULL, NULL, NULL, 35, 1),
(854, 'en', 'default', 'HIMALAYA VOLUME&BOUNCE AD SHAMPOO 400ML', NULL, NULL, NULL, NULL, NULL, NULL, 35, 2),
(855, NULL, NULL, 'himalaya-volumebounce-ad-shampoo-400ml', NULL, NULL, NULL, NULL, NULL, NULL, 35, 3),
(856, NULL, 'default', NULL, NULL, 0, NULL, NULL, NULL, NULL, 35, 4),
(857, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 35, 5),
(858, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 35, 6),
(859, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 35, 7),
(860, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 35, 8),
(861, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 35, 23),
(862, NULL, NULL, NULL, NULL, 6, NULL, NULL, NULL, NULL, 35, 24),
(863, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 35, 26),
(864, 'en', 'default', '', NULL, NULL, NULL, NULL, NULL, NULL, 35, 16),
(865, 'en', 'default', '', NULL, NULL, NULL, NULL, NULL, NULL, 35, 17),
(866, 'en', 'default', '', NULL, NULL, NULL, NULL, NULL, NULL, 35, 18),
(867, NULL, NULL, NULL, NULL, NULL, 399.0000, NULL, NULL, NULL, 35, 11),
(868, NULL, 'default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 35, 12),
(869, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 35, 13),
(870, NULL, 'default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 35, 14),
(871, NULL, 'default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 35, 15),
(872, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 35, 19),
(873, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 35, 20),
(874, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 35, 21),
(875, NULL, NULL, '300', NULL, NULL, NULL, NULL, NULL, NULL, 35, 22),
(876, 'en', 'default', '<p><span style=\"color: rgba(0, 0, 0, 0.65); font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\';\">HIMALAYA REVITALIZING NIGHT CREAM 50GM</span></p>', NULL, NULL, NULL, NULL, NULL, NULL, 36, 9),
(877, 'en', 'default', '<p><span style=\"color: rgba(0, 0, 0, 0.65); font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\';\">HIMALAYA REVITALIZING NIGHT CREAM 50GM</span></p>', NULL, NULL, NULL, NULL, NULL, NULL, 36, 10),
(878, NULL, NULL, '5002', NULL, NULL, NULL, NULL, NULL, NULL, 36, 1),
(879, 'en', 'default', ' HIMALAYA REVITALIZING NIGHT CREAM 50GM', NULL, NULL, NULL, NULL, NULL, NULL, 36, 2),
(880, NULL, NULL, '-himalaya-revitalizing-night-cream-50gm', NULL, NULL, NULL, NULL, NULL, NULL, 36, 3),
(881, NULL, 'default', NULL, NULL, 0, NULL, NULL, NULL, NULL, 36, 4),
(882, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 36, 5),
(883, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 36, 6),
(884, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 36, 7),
(885, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 36, 8),
(886, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 36, 23),
(887, NULL, NULL, NULL, NULL, 6, NULL, NULL, NULL, NULL, 36, 24),
(888, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 36, 26),
(889, 'en', 'default', '', NULL, NULL, NULL, NULL, NULL, NULL, 36, 16),
(890, 'en', 'default', '', NULL, NULL, NULL, NULL, NULL, NULL, 36, 17),
(891, 'en', 'default', '', NULL, NULL, NULL, NULL, NULL, NULL, 36, 18),
(892, NULL, NULL, NULL, NULL, NULL, 225.0000, NULL, NULL, NULL, 36, 11),
(893, NULL, 'default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 36, 12),
(894, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 36, 13),
(895, NULL, 'default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 36, 14),
(896, NULL, 'default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 36, 15),
(897, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 36, 19),
(898, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 36, 20),
(899, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 36, 21),
(900, NULL, NULL, '50', NULL, NULL, NULL, NULL, NULL, NULL, 36, 22),
(901, 'en', 'default', '<p><span style=\"color: rgba(0, 0, 0, 0.65); font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\';\">Cr&egrave;me 21 Nor Skin B Lotion Pro Vit B5 250m</span></p>', NULL, NULL, NULL, NULL, NULL, NULL, 37, 9),
(902, 'en', 'default', '<p><span style=\"color: rgba(0, 0, 0, 0.65); font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\';\">Cr&egrave;me 21 Nor Skin B Lotion Pro Vit B5 250m</span></p>', NULL, NULL, NULL, NULL, NULL, NULL, 37, 10),
(903, NULL, NULL, '5003', NULL, NULL, NULL, NULL, NULL, NULL, 37, 1),
(904, 'en', 'default', 'Crème 21 Nor Skin B Lotion Pro Vit B5 250m', NULL, NULL, NULL, NULL, NULL, NULL, 37, 2),
(905, NULL, NULL, 'creme-21-nor-skin-b-lotion-pro-vit-b5-250m', NULL, NULL, NULL, NULL, NULL, NULL, 37, 3),
(906, NULL, 'default', NULL, NULL, 0, NULL, NULL, NULL, NULL, 37, 4),
(907, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 37, 5),
(908, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 37, 6),
(909, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 37, 7),
(910, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 37, 8),
(911, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 37, 23),
(912, NULL, NULL, NULL, NULL, 6, NULL, NULL, NULL, NULL, 37, 24),
(913, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 37, 26),
(914, 'en', 'default', '', NULL, NULL, NULL, NULL, NULL, NULL, 37, 16),
(915, 'en', 'default', '', NULL, NULL, NULL, NULL, NULL, NULL, 37, 17),
(916, 'en', 'default', '', NULL, NULL, NULL, NULL, NULL, NULL, 37, 18),
(917, NULL, NULL, NULL, NULL, NULL, 450.0000, NULL, NULL, NULL, 37, 11),
(918, NULL, 'default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 37, 12),
(919, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 37, 13),
(920, NULL, 'default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 37, 14),
(921, NULL, 'default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 37, 15),
(922, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 37, 19),
(923, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 37, 20),
(924, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 37, 21),
(925, NULL, NULL, '250', NULL, NULL, NULL, NULL, NULL, NULL, 37, 22),
(926, 'en', 'default', '<p><span style=\"color: rgba(0, 0, 0, 0.65); font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\';\">H&amp;S AD COOL MENTHOL SHAMPOO 1000ML</span></p>', NULL, NULL, NULL, NULL, NULL, NULL, 38, 9),
(927, 'en', 'default', '<p><span style=\"color: rgba(0, 0, 0, 0.65); font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\';\">H&amp;S AD COOL MENTHOL SHAMPOO 1000ML</span></p>', NULL, NULL, NULL, NULL, NULL, NULL, 38, 10),
(928, NULL, NULL, '5004', NULL, NULL, NULL, NULL, NULL, NULL, 38, 1),
(929, 'en', 'default', 'H&S AD COOL MENTHOL SHAMPOO 1000ML', NULL, NULL, NULL, NULL, NULL, NULL, 38, 2),
(930, NULL, NULL, 'hs-ad-cool-menthol-shampoo-1000ml', NULL, NULL, NULL, NULL, NULL, NULL, 38, 3),
(931, NULL, 'default', NULL, NULL, 0, NULL, NULL, NULL, NULL, 38, 4),
(932, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 38, 5),
(933, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 38, 6),
(934, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 38, 7),
(935, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 38, 8),
(936, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 38, 23),
(937, NULL, NULL, NULL, NULL, 6, NULL, NULL, NULL, NULL, 38, 24),
(938, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 38, 26),
(939, 'en', 'default', '', NULL, NULL, NULL, NULL, NULL, NULL, 38, 16),
(940, 'en', 'default', '', NULL, NULL, NULL, NULL, NULL, NULL, 38, 17),
(941, 'en', 'default', '', NULL, NULL, NULL, NULL, NULL, NULL, 38, 18),
(942, NULL, NULL, NULL, NULL, NULL, 1300.0000, NULL, NULL, NULL, 38, 11),
(943, NULL, 'default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 38, 12),
(944, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 38, 13),
(945, NULL, 'default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 38, 14),
(946, NULL, 'default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 38, 15),
(947, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 38, 19),
(948, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 38, 20),
(949, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 38, 21),
(950, NULL, NULL, '1000', NULL, NULL, NULL, NULL, NULL, NULL, 38, 22),
(951, 'en', 'default', '<h1 class=\"title\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0.5em; color: rgba(0, 0, 0, 0.85); font-weight: 500; font-size: 1.5em; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\';\">ORAL B BLACK CAVITY DEF 123 SOFT T BRUSH 4P</h1>', NULL, NULL, NULL, NULL, NULL, NULL, 39, 9),
(952, 'en', 'default', '<h1 class=\"title\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0.5em; color: rgba(0, 0, 0, 0.85); font-weight: 500; font-size: 1.5em; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\';\">ORAL B BLACK CAVITY DEF 123 SOFT T BRUSH 4P</h1>', NULL, NULL, NULL, NULL, NULL, NULL, 39, 10),
(953, NULL, NULL, '5005', NULL, NULL, NULL, NULL, NULL, NULL, 39, 1),
(954, 'en', 'default', 'ORAL B BLACK CAVITY DEF 123 SOFT T BRUSH 4P', NULL, NULL, NULL, NULL, NULL, NULL, 39, 2),
(955, NULL, NULL, 'oral-b-black-cavity-def-123-soft-t-brush-4p', NULL, NULL, NULL, NULL, NULL, NULL, 39, 3),
(956, NULL, 'default', NULL, NULL, 0, NULL, NULL, NULL, NULL, 39, 4),
(957, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 39, 5),
(958, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 39, 6),
(959, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 39, 7),
(960, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 39, 8),
(961, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 39, 23),
(962, NULL, NULL, NULL, NULL, 6, NULL, NULL, NULL, NULL, 39, 24),
(963, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 39, 26),
(964, 'en', 'default', '', NULL, NULL, NULL, NULL, NULL, NULL, 39, 16),
(965, 'en', 'default', '', NULL, NULL, NULL, NULL, NULL, NULL, 39, 17),
(966, 'en', 'default', '', NULL, NULL, NULL, NULL, NULL, NULL, 39, 18),
(967, NULL, NULL, NULL, NULL, NULL, 165.0000, NULL, NULL, NULL, 39, 11),
(968, NULL, 'default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 39, 12),
(969, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 39, 13),
(970, NULL, 'default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 39, 14),
(971, NULL, 'default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 39, 15),
(972, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 39, 19),
(973, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 39, 20),
(974, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 39, 21),
(975, NULL, NULL, '25', NULL, NULL, NULL, NULL, NULL, NULL, 39, 22),
(976, 'en', 'default', '<table style=\"box-sizing: border-box; border-collapse: collapse; color: rgba(0, 0, 0, 0.65); font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\';\" border=\"0\" width=\"393\" cellspacing=\"0\" cellpadding=\"0\"><colgroup style=\"box-sizing: border-box;\"><col style=\"box-sizing: border-box;\" width=\"393\" /></colgroup>\r\n<tbody style=\"box-sizing: border-box;\">\r\n<tr style=\"box-sizing: border-box;\">\r\n<td class=\"xl66\" style=\"box-sizing: border-box;\" width=\"393\" height=\"82\">GOLDMARK CHOCOLATE CHIPS C BIS 60GM&nbsp;<span class=\"font5\" style=\"box-sizing: border-box;\">B2G1 Free</span></td>\r\n</tr>\r\n</tbody>\r\n</table>', NULL, NULL, NULL, NULL, NULL, NULL, 40, 9),
(977, 'en', 'default', '<table style=\"box-sizing: border-box; border-collapse: collapse; color: rgba(0, 0, 0, 0.65); font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\';\" border=\"0\" width=\"393\" cellspacing=\"0\" cellpadding=\"0\"><colgroup style=\"box-sizing: border-box;\"><col style=\"box-sizing: border-box;\" width=\"393\" /></colgroup>\r\n<tbody style=\"box-sizing: border-box;\">\r\n<tr style=\"box-sizing: border-box;\">\r\n<td class=\"xl66\" style=\"box-sizing: border-box;\" width=\"393\" height=\"82\">GOLDMARK CHOCOLATE CHIPS C BIS 60GM&nbsp;<span class=\"font5\" style=\"box-sizing: border-box;\">B2G1 Free</span></td>\r\n</tr>\r\n</tbody>\r\n</table>', NULL, NULL, NULL, NULL, NULL, NULL, 40, 10),
(978, NULL, NULL, '6000', NULL, NULL, NULL, NULL, NULL, NULL, 40, 1),
(979, 'en', 'default', 'GOLDMARK CHOCOLATE CHIPS C BIS 60GM B2G1', NULL, NULL, NULL, NULL, NULL, NULL, 40, 2),
(980, NULL, NULL, 'goldmark-chocolate-chips-c-bis-60gm-b2g1', NULL, NULL, NULL, NULL, NULL, NULL, 40, 3),
(981, NULL, 'default', NULL, NULL, 0, NULL, NULL, NULL, NULL, 40, 4),
(982, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 40, 5),
(983, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 40, 6),
(984, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 40, 7),
(985, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 40, 8),
(986, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 40, 23),
(987, NULL, NULL, NULL, NULL, 6, NULL, NULL, NULL, NULL, 40, 24),
(988, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 40, 26),
(989, 'en', 'default', '', NULL, NULL, NULL, NULL, NULL, NULL, 40, 16),
(990, 'en', 'default', '', NULL, NULL, NULL, NULL, NULL, NULL, 40, 17),
(991, 'en', 'default', '', NULL, NULL, NULL, NULL, NULL, NULL, 40, 18),
(992, NULL, NULL, NULL, NULL, NULL, 50.0000, NULL, NULL, NULL, 40, 11),
(993, NULL, 'default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 40, 12),
(994, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 40, 13),
(995, NULL, 'default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 40, 14),
(996, NULL, 'default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 40, 15),
(997, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 40, 19),
(998, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 40, 20),
(999, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 40, 21),
(1000, NULL, NULL, '100', NULL, NULL, NULL, NULL, NULL, NULL, 40, 22),
(1001, 'en', 'default', '<h1 class=\"title\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0.5em; color: rgba(0, 0, 0, 0.85); font-weight: 500; font-size: 1.5em; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\';\">MUNCHYS FUNMIX ASSOR BISCUITS TIN 700GM</h1>', NULL, NULL, NULL, NULL, NULL, NULL, 41, 9);
INSERT INTO `bgwyproduct_attribute_values` (`id`, `locale`, `channel`, `text_value`, `boolean_value`, `integer_value`, `float_value`, `datetime_value`, `date_value`, `json_value`, `product_id`, `attribute_id`) VALUES
(1002, 'en', 'default', '<h1 class=\"title\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0.5em; color: rgba(0, 0, 0, 0.85); font-weight: 500; font-size: 1.5em; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\';\">MUNCHYS FUNMIX ASSOR BISCUITS TIN 700GM</h1>', NULL, NULL, NULL, NULL, NULL, NULL, 41, 10),
(1003, NULL, NULL, '6001', NULL, NULL, NULL, NULL, NULL, NULL, 41, 1),
(1004, 'en', 'default', 'MUNCHYS FUNMIX ASSOR BISCUITS TIN 700GM', NULL, NULL, NULL, NULL, NULL, NULL, 41, 2),
(1005, NULL, NULL, 'munchys-funmix-assor-biscuits-tin-700gm', NULL, NULL, NULL, NULL, NULL, NULL, 41, 3),
(1006, NULL, 'default', NULL, NULL, 0, NULL, NULL, NULL, NULL, 41, 4),
(1007, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 41, 5),
(1008, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 41, 6),
(1009, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 41, 7),
(1010, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 41, 8),
(1011, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 41, 23),
(1012, NULL, NULL, NULL, NULL, 6, NULL, NULL, NULL, NULL, 41, 24),
(1013, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 41, 26),
(1014, 'en', 'default', '', NULL, NULL, NULL, NULL, NULL, NULL, 41, 16),
(1015, 'en', 'default', '', NULL, NULL, NULL, NULL, NULL, NULL, 41, 17),
(1016, 'en', 'default', '', NULL, NULL, NULL, NULL, NULL, NULL, 41, 18),
(1017, NULL, NULL, NULL, NULL, NULL, 1230.0000, NULL, NULL, NULL, 41, 11),
(1018, NULL, 'default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 41, 12),
(1019, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 41, 13),
(1020, NULL, 'default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 41, 14),
(1021, NULL, 'default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 41, 15),
(1022, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 41, 19),
(1023, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 41, 20),
(1024, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 41, 21),
(1025, NULL, NULL, '1500', NULL, NULL, NULL, NULL, NULL, NULL, 41, 22),
(1026, 'en', 'default', '<h1 class=\"title\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0.5em; color: rgba(0, 0, 0, 0.85); font-weight: 500; font-size: 1.5em; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\';\">DR.OETKER NONA PANCAKE ORIGINAL BOX 400G</h1>', NULL, NULL, NULL, NULL, NULL, NULL, 42, 9),
(1027, 'en', 'default', '<h1 class=\"title\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0.5em; color: rgba(0, 0, 0, 0.85); font-weight: 500; font-size: 1.5em; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\';\">DR.OETKER NONA PANCAKE ORIGINAL BOX 400G</h1>', NULL, NULL, NULL, NULL, NULL, NULL, 42, 10),
(1028, NULL, NULL, '6002', NULL, NULL, NULL, NULL, NULL, NULL, 42, 1),
(1029, 'en', 'default', 'DR.OETKER NONA PANCAKE ORIGINAL BOX 400G', NULL, NULL, NULL, NULL, NULL, NULL, 42, 2),
(1030, NULL, NULL, 'droetker-nona-pancake-original-box-400g', NULL, NULL, NULL, NULL, NULL, NULL, 42, 3),
(1031, NULL, 'default', NULL, NULL, 0, NULL, NULL, NULL, NULL, 42, 4),
(1032, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 42, 5),
(1033, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 42, 6),
(1034, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 42, 7),
(1035, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 42, 8),
(1036, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 42, 23),
(1037, NULL, NULL, NULL, NULL, 6, NULL, NULL, NULL, NULL, 42, 24),
(1038, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 42, 26),
(1039, 'en', 'default', '', NULL, NULL, NULL, NULL, NULL, NULL, 42, 16),
(1040, 'en', 'default', '', NULL, NULL, NULL, NULL, NULL, NULL, 42, 17),
(1041, 'en', 'default', '', NULL, NULL, NULL, NULL, NULL, NULL, 42, 18),
(1042, NULL, NULL, NULL, NULL, NULL, 250.0000, NULL, NULL, NULL, 42, 11),
(1043, NULL, 'default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 42, 12),
(1044, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 42, 13),
(1045, NULL, 'default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 42, 14),
(1046, NULL, 'default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 42, 15),
(1047, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 42, 19),
(1048, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 42, 20),
(1049, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 42, 21),
(1050, NULL, NULL, '300', NULL, NULL, NULL, NULL, NULL, NULL, 42, 22),
(1051, 'en', 'default', '<h1 class=\"title\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0.5em; color: rgba(0, 0, 0, 0.85); font-weight: 500; font-size: 1.5em; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\';\">CBL MUNCHEE CHOCO MO WHITE CHOC C BIS 100G</h1>', NULL, NULL, NULL, NULL, NULL, NULL, 43, 9),
(1052, 'en', 'default', '<h1 class=\"title\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0.5em; color: rgba(0, 0, 0, 0.85); font-weight: 500; font-size: 1.5em; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\';\">CBL MUNCHEE CHOCO MO WHITE CHOC C BIS 100G</h1>', NULL, NULL, NULL, NULL, NULL, NULL, 43, 10),
(1053, NULL, NULL, '6003', NULL, NULL, NULL, NULL, NULL, NULL, 43, 1),
(1054, 'en', 'default', 'CBL MUNCHEE CHOCO MO WHITE CHOC C BIS 100G', NULL, NULL, NULL, NULL, NULL, NULL, 43, 2),
(1055, NULL, NULL, 'cbl-munchee-choco-mo-white-choc-c-bis-100g', NULL, NULL, NULL, NULL, NULL, NULL, 43, 3),
(1056, NULL, 'default', NULL, NULL, 0, NULL, NULL, NULL, NULL, 43, 4),
(1057, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 43, 5),
(1058, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 43, 6),
(1059, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 43, 7),
(1060, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 43, 8),
(1061, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 43, 23),
(1062, NULL, NULL, NULL, NULL, 6, NULL, NULL, NULL, NULL, 43, 24),
(1063, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 43, 26),
(1064, 'en', 'default', '', NULL, NULL, NULL, NULL, NULL, NULL, 43, 16),
(1065, 'en', 'default', '', NULL, NULL, NULL, NULL, NULL, NULL, 43, 17),
(1066, 'en', 'default', '', NULL, NULL, NULL, NULL, NULL, NULL, 43, 18),
(1067, NULL, NULL, NULL, NULL, NULL, 150.0000, NULL, NULL, NULL, 43, 11),
(1068, NULL, 'default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 43, 12),
(1069, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 43, 13),
(1070, NULL, 'default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 43, 14),
(1071, NULL, 'default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 43, 15),
(1072, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 43, 19),
(1073, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 43, 20),
(1074, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 43, 21),
(1075, NULL, NULL, '350', NULL, NULL, NULL, NULL, NULL, NULL, 43, 22),
(1076, 'en', 'default', '<h1 class=\"title\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0.5em; color: rgba(0, 0, 0, 0.85); font-weight: 500; font-size: 1.5em; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\';\">Danish Festival Assort Biscuits &amp; Crackerss Tin 750g</h1>', NULL, NULL, NULL, NULL, NULL, NULL, 44, 9),
(1077, 'en', 'default', '<h1 class=\"title\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0.5em; color: rgba(0, 0, 0, 0.85); font-weight: 500; font-size: 1.5em; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\';\">Danish Festival Assort Biscuits &amp; Crackerss Tin 750g</h1>', NULL, NULL, NULL, NULL, NULL, NULL, 44, 10),
(1078, NULL, NULL, '6004', NULL, NULL, NULL, NULL, NULL, NULL, 44, 1),
(1079, 'en', 'default', 'Danish Festival Assort Biscuits & Crackerss Tin 750g', NULL, NULL, NULL, NULL, NULL, NULL, 44, 2),
(1080, NULL, NULL, 'danish-festival-assort-biscuits-crackerss-tin-750g', NULL, NULL, NULL, NULL, NULL, NULL, 44, 3),
(1081, NULL, 'default', NULL, NULL, 0, NULL, NULL, NULL, NULL, 44, 4),
(1082, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 44, 5),
(1083, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 44, 6),
(1084, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 44, 7),
(1085, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 44, 8),
(1086, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 44, 23),
(1087, NULL, NULL, NULL, NULL, 6, NULL, NULL, NULL, NULL, 44, 24),
(1088, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 44, 26),
(1089, 'en', 'default', '', NULL, NULL, NULL, NULL, NULL, NULL, 44, 16),
(1090, 'en', 'default', '', NULL, NULL, NULL, NULL, NULL, NULL, 44, 17),
(1091, 'en', 'default', '', NULL, NULL, NULL, NULL, NULL, NULL, 44, 18),
(1092, NULL, NULL, NULL, NULL, NULL, 350.0000, NULL, NULL, NULL, 44, 11),
(1093, NULL, 'default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 44, 12),
(1094, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 44, 13),
(1095, NULL, 'default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 44, 14),
(1096, NULL, 'default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 44, 15),
(1097, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 44, 19),
(1098, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 44, 20),
(1099, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 44, 21),
(1100, NULL, NULL, '1000', NULL, NULL, NULL, NULL, NULL, NULL, 44, 22),
(1101, 'en', 'default', '<h1 class=\"title\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0.5em; color: rgba(0, 0, 0, 0.85); font-weight: 500; font-size: 1.5em; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\';\">Dove Baby Lotion Sensitive Moisture 200ml</h1>', NULL, NULL, NULL, NULL, NULL, NULL, 45, 9),
(1102, 'en', 'default', '<h1 class=\"title\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0.5em; color: rgba(0, 0, 0, 0.85); font-weight: 500; font-size: 1.5em; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\';\">Dove Baby Lotion Sensitive Moisture 200ml</h1>', NULL, NULL, NULL, NULL, NULL, NULL, 45, 10),
(1103, NULL, NULL, '7000', NULL, NULL, NULL, NULL, NULL, NULL, 45, 1),
(1104, 'en', 'default', 'Dove Baby Lotion Sensitive Moisture 200ml', NULL, NULL, NULL, NULL, NULL, NULL, 45, 2),
(1105, NULL, NULL, 'dove-baby-lotion-sensitive-moisture-200ml', NULL, NULL, NULL, NULL, NULL, NULL, 45, 3),
(1106, NULL, 'default', NULL, NULL, 0, NULL, NULL, NULL, NULL, 45, 4),
(1107, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 45, 5),
(1108, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 45, 6),
(1109, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 45, 7),
(1110, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 45, 8),
(1111, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 45, 23),
(1112, NULL, NULL, NULL, NULL, 6, NULL, NULL, NULL, NULL, 45, 24),
(1113, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 45, 26),
(1114, 'en', 'default', '', NULL, NULL, NULL, NULL, NULL, NULL, 45, 16),
(1115, 'en', 'default', '', NULL, NULL, NULL, NULL, NULL, NULL, 45, 17),
(1116, 'en', 'default', '', NULL, NULL, NULL, NULL, NULL, NULL, 45, 18),
(1117, NULL, NULL, NULL, NULL, NULL, 525.0000, NULL, NULL, NULL, 45, 11),
(1118, NULL, 'default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 45, 12),
(1119, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 45, 13),
(1120, NULL, 'default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 45, 14),
(1121, NULL, 'default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 45, 15),
(1122, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 45, 19),
(1123, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 45, 20),
(1124, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 45, 21),
(1125, NULL, NULL, '350', NULL, NULL, NULL, NULL, NULL, NULL, 45, 22),
(1126, 'en', 'default', '<div class=\"title-container\" style=\"box-sizing: border-box; color: rgba(0, 0, 0, 0.65); font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\';\">\r\n<h1 class=\"title\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0.5em; color: rgba(0, 0, 0, 0.85); font-weight: 500; font-size: 1.5em;\">HUGGIES DRY DIAPERS XL 11-16KG 48PCS</h1>\r\n<p>&nbsp;</p>\r\n</div>', NULL, NULL, NULL, NULL, NULL, NULL, 46, 9),
(1127, 'en', 'default', '<div class=\"title-container\" style=\"box-sizing: border-box; color: rgba(0, 0, 0, 0.65); font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\';\">\r\n<h1 class=\"title\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0.5em; color: rgba(0, 0, 0, 0.85); font-weight: 500; font-size: 1.5em;\">HUGGIES DRY DIAPERS XL 11-16KG 48PCS</h1>\r\n<p>&nbsp;</p>\r\n</div>', NULL, NULL, NULL, NULL, NULL, NULL, 46, 10),
(1128, NULL, NULL, '7001', NULL, NULL, NULL, NULL, NULL, NULL, 46, 1),
(1129, 'en', 'default', 'HUGGIES DRY DIAPERS XL 11-16KG 48PCS', NULL, NULL, NULL, NULL, NULL, NULL, 46, 2),
(1130, NULL, NULL, 'huggies-dry-diapers-xl-11-16kg-48pcs', NULL, NULL, NULL, NULL, NULL, NULL, 46, 3),
(1131, NULL, 'default', NULL, NULL, 0, NULL, NULL, NULL, NULL, 46, 4),
(1132, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 46, 5),
(1133, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 46, 6),
(1134, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 46, 7),
(1135, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 46, 8),
(1136, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 46, 23),
(1137, NULL, NULL, NULL, NULL, 6, NULL, NULL, NULL, NULL, 46, 24),
(1138, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 46, 26),
(1139, 'en', 'default', '', NULL, NULL, NULL, NULL, NULL, NULL, 46, 16),
(1140, 'en', 'default', '', NULL, NULL, NULL, NULL, NULL, NULL, 46, 17),
(1141, 'en', 'default', '', NULL, NULL, NULL, NULL, NULL, NULL, 46, 18),
(1142, NULL, NULL, NULL, NULL, NULL, 1536.0000, NULL, NULL, NULL, 46, 11),
(1143, NULL, 'default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 46, 12),
(1144, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 46, 13),
(1145, NULL, 'default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 46, 14),
(1146, NULL, 'default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 46, 15),
(1147, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 46, 19),
(1148, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 46, 20),
(1149, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 46, 21),
(1150, NULL, NULL, '1000', NULL, NULL, NULL, NULL, NULL, NULL, 46, 22),
(1151, 'en', 'default', '<h1 class=\"title\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0.5em; color: rgba(0, 0, 0, 0.85); font-weight: 500; font-size: 1.5em; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\';\">HUGGIES DRY PANTS MEDIUM 6-12KG 60PCS+4C</h1>', NULL, NULL, NULL, NULL, NULL, NULL, 47, 9),
(1152, 'en', 'default', '<h1 class=\"title\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0.5em; color: rgba(0, 0, 0, 0.85); font-weight: 500; font-size: 1.5em; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\';\">HUGGIES DRY PANTS MEDIUM 6-12KG 60PCS+4C</h1>', NULL, NULL, NULL, NULL, NULL, NULL, 47, 10),
(1153, NULL, NULL, '7002', NULL, NULL, NULL, NULL, NULL, NULL, 47, 1),
(1154, 'en', 'default', 'HUGGIES DRY PANTS MEDIUM 6-12KG 60PCS+4C', NULL, NULL, NULL, NULL, NULL, NULL, 47, 2),
(1155, NULL, NULL, 'huggies-dry-pants-medium-6-12kg-60pcs4c', NULL, NULL, NULL, NULL, NULL, NULL, 47, 3),
(1156, NULL, 'default', NULL, NULL, 0, NULL, NULL, NULL, NULL, 47, 4),
(1157, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 47, 5),
(1158, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 47, 6),
(1159, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 47, 7),
(1160, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 47, 8),
(1161, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 47, 23),
(1162, NULL, NULL, NULL, NULL, 6, NULL, NULL, NULL, NULL, 47, 24),
(1163, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 47, 26),
(1164, 'en', 'default', '', NULL, NULL, NULL, NULL, NULL, NULL, 47, 16),
(1165, 'en', 'default', '', NULL, NULL, NULL, NULL, NULL, NULL, 47, 17),
(1166, 'en', 'default', '', NULL, NULL, NULL, NULL, NULL, NULL, 47, 18),
(1167, NULL, NULL, NULL, NULL, NULL, 1536.0000, NULL, NULL, NULL, 47, 11),
(1168, NULL, 'default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 47, 12),
(1169, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 47, 13),
(1170, NULL, 'default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 47, 14),
(1171, NULL, 'default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 47, 15),
(1172, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 47, 19),
(1173, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 47, 20),
(1174, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 47, 21),
(1175, NULL, NULL, '1000', NULL, NULL, NULL, NULL, NULL, NULL, 47, 22),
(1176, 'en', 'default', '<div class=\"title-container\" style=\"box-sizing: border-box; color: rgba(0, 0, 0, 0.65); font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\';\">\r\n<h1 class=\"title\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0.5em; color: rgba(0, 0, 0, 0.85); font-weight: 500; font-size: 1.5em;\">PAMPERS BABY DRY PANTS XL 12-17KG 36PCS</h1>\r\n<p>&nbsp;</p>\r\n</div>', NULL, NULL, NULL, NULL, NULL, NULL, 48, 9),
(1177, 'en', 'default', '<div class=\"title-container\" style=\"box-sizing: border-box; color: rgba(0, 0, 0, 0.65); font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\';\">\r\n<h1 class=\"title\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0.5em; color: rgba(0, 0, 0, 0.85); font-weight: 500; font-size: 1.5em;\">PAMPERS BABY DRY PANTS XL 12-17KG 36PCS</h1>\r\n<p>&nbsp;</p>\r\n</div>', NULL, NULL, NULL, NULL, NULL, NULL, 48, 10),
(1178, NULL, NULL, '7003', NULL, NULL, NULL, NULL, NULL, NULL, 48, 1),
(1179, 'en', 'default', 'PAMPERS BABY DRY PANTS XL 12-17KG 36PCS', NULL, NULL, NULL, NULL, NULL, NULL, 48, 2),
(1180, NULL, NULL, 'pampers-baby-dry-pants-xl-12-17kg-36pcs', NULL, NULL, NULL, NULL, NULL, NULL, 48, 3),
(1181, NULL, 'default', NULL, NULL, 0, NULL, NULL, NULL, NULL, 48, 4),
(1182, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 48, 5),
(1183, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 48, 6),
(1184, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 48, 7),
(1185, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 48, 8),
(1186, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 48, 23),
(1187, NULL, NULL, NULL, NULL, 6, NULL, NULL, NULL, NULL, 48, 24),
(1188, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 48, 26),
(1189, 'en', 'default', '', NULL, NULL, NULL, NULL, NULL, NULL, 48, 16),
(1190, 'en', 'default', '', NULL, NULL, NULL, NULL, NULL, NULL, 48, 17),
(1191, 'en', 'default', '', NULL, NULL, NULL, NULL, NULL, NULL, 48, 18),
(1192, NULL, NULL, NULL, NULL, NULL, 1380.0000, NULL, NULL, NULL, 48, 11),
(1193, NULL, 'default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 48, 12),
(1194, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 48, 13),
(1195, NULL, 'default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 48, 14),
(1196, NULL, 'default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 48, 15),
(1197, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 48, 19),
(1198, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 48, 20),
(1199, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 48, 21),
(1200, NULL, NULL, '1000', NULL, NULL, NULL, NULL, NULL, NULL, 48, 22),
(1201, 'en', 'default', '<div class=\"header\" style=\"box-sizing: border-box; color: rgba(0, 0, 0, 0.65); font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\';\">\r\n<div class=\"title-container\" style=\"box-sizing: border-box;\">\r\n<h1 class=\"title\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0.5em; color: rgba(0, 0, 0, 0.85); font-weight: 500; font-size: 1.5em;\">NEO CARE BABY DIAPER LARGE 7-18KG 50PCS</h1>\r\n<p>&nbsp;</p>\r\n</div>\r\n</div>', NULL, NULL, NULL, NULL, NULL, NULL, 49, 9),
(1202, 'en', 'default', '<div class=\"header\" style=\"box-sizing: border-box; color: rgba(0, 0, 0, 0.65); font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\';\">\r\n<div class=\"title-container\" style=\"box-sizing: border-box;\">\r\n<h1 class=\"title\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0.5em; color: rgba(0, 0, 0, 0.85); font-weight: 500; font-size: 1.5em;\">NEO CARE BABY DIAPER LARGE 7-18KG 50PCS</h1>\r\n<p>&nbsp;</p>\r\n</div>\r\n</div>', NULL, NULL, NULL, NULL, NULL, NULL, 49, 10),
(1203, NULL, NULL, '7004', NULL, NULL, NULL, NULL, NULL, NULL, 49, 1),
(1204, 'en', 'default', 'NEO CARE BABY DIAPER LARGE 7-18KG 50PCS', NULL, NULL, NULL, NULL, NULL, NULL, 49, 2),
(1205, NULL, NULL, 'neo-care-baby-diaper-large-7-18kg-50pcs', NULL, NULL, NULL, NULL, NULL, NULL, 49, 3),
(1206, NULL, 'default', NULL, NULL, 0, NULL, NULL, NULL, NULL, 49, 4),
(1207, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 49, 5),
(1208, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 49, 6),
(1209, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 49, 7),
(1210, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 49, 8),
(1211, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 49, 23),
(1212, NULL, NULL, NULL, NULL, 6, NULL, NULL, NULL, NULL, 49, 24),
(1213, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 49, 26),
(1214, 'en', 'default', '', NULL, NULL, NULL, NULL, NULL, NULL, 49, 16),
(1215, 'en', 'default', '', NULL, NULL, NULL, NULL, NULL, NULL, 49, 17),
(1216, 'en', 'default', '', NULL, NULL, NULL, NULL, NULL, NULL, 49, 18),
(1217, NULL, NULL, NULL, NULL, NULL, 1320.0000, NULL, NULL, NULL, 49, 11),
(1218, NULL, 'default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 49, 12),
(1219, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 49, 13),
(1220, NULL, 'default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 49, 14),
(1221, NULL, 'default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 49, 15),
(1222, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 49, 19),
(1223, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 49, 20),
(1224, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 49, 21),
(1225, NULL, NULL, '1000', NULL, NULL, NULL, NULL, NULL, NULL, 49, 22),
(1226, 'en', 'default', '<div class=\"header\" style=\"box-sizing: border-box; color: rgba(0, 0, 0, 0.65); font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\';\">\r\n<div class=\"title-container\" style=\"box-sizing: border-box;\">\r\n<h1 class=\"title\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0.5em; color: rgba(0, 0, 0, 0.85); font-weight: 500; font-size: 1.5em;\">KODOMO TOOTH PASTE ORANGE 40/45g</h1>\r\n<p>&nbsp;</p>\r\n</div>\r\n</div>', NULL, NULL, NULL, NULL, NULL, NULL, 50, 9),
(1227, 'en', 'default', '<div class=\"header\" style=\"box-sizing: border-box; color: rgba(0, 0, 0, 0.65); font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\';\">\r\n<div class=\"title-container\" style=\"box-sizing: border-box;\">\r\n<h1 class=\"title\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0.5em; color: rgba(0, 0, 0, 0.85); font-weight: 500; font-size: 1.5em;\">KODOMO TOOTH PASTE ORANGE 40/45g</h1>\r\n<p>&nbsp;</p>\r\n</div>\r\n</div>', NULL, NULL, NULL, NULL, NULL, NULL, 50, 10),
(1228, NULL, NULL, '7005', NULL, NULL, NULL, NULL, NULL, NULL, 50, 1),
(1229, 'en', 'default', 'KODOMO TOOTH PASTE ORANGE 40/45g', NULL, NULL, NULL, NULL, NULL, NULL, 50, 2),
(1230, NULL, NULL, 'kodomo-tooth-paste-orange-4045g', NULL, NULL, NULL, NULL, NULL, NULL, 50, 3),
(1231, NULL, 'default', NULL, NULL, 0, NULL, NULL, NULL, NULL, 50, 4),
(1232, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 50, 5),
(1233, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 50, 6),
(1234, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 50, 7),
(1235, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 50, 8),
(1236, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 50, 23),
(1237, NULL, NULL, NULL, NULL, 6, NULL, NULL, NULL, NULL, 50, 24),
(1238, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 50, 26),
(1239, 'en', 'default', '', NULL, NULL, NULL, NULL, NULL, NULL, 50, 16),
(1240, 'en', 'default', '', NULL, NULL, NULL, NULL, NULL, NULL, 50, 17),
(1241, 'en', 'default', '', NULL, NULL, NULL, NULL, NULL, NULL, 50, 18),
(1242, NULL, NULL, NULL, NULL, NULL, 150.0000, NULL, NULL, NULL, 50, 11),
(1243, NULL, 'default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 50, 12),
(1244, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 50, 13),
(1245, NULL, 'default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 50, 14),
(1246, NULL, 'default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 50, 15),
(1247, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 50, 19),
(1248, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 50, 20),
(1249, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 50, 21),
(1250, NULL, NULL, '150', NULL, NULL, NULL, NULL, NULL, NULL, 50, 22),
(1251, 'en', 'default', '<div class=\"header\" style=\"box-sizing: border-box; color: rgba(0, 0, 0, 0.65); font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\';\">\r\n<div class=\"title-container\" style=\"box-sizing: border-box;\">\r\n<h1 class=\"title\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0.5em; color: rgba(0, 0, 0, 0.85); font-weight: 500; font-size: 1.5em;\">GOLDEN HARVEST MINI SINGARA 300GM</h1>\r\n<p>&nbsp;</p>\r\n</div>\r\n</div>', NULL, NULL, NULL, NULL, NULL, NULL, 51, 9),
(1252, 'en', 'default', '<div class=\"header\" style=\"box-sizing: border-box; color: rgba(0, 0, 0, 0.65); font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\';\">\r\n<div class=\"title-container\" style=\"box-sizing: border-box;\">\r\n<h1 class=\"title\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0.5em; color: rgba(0, 0, 0, 0.85); font-weight: 500; font-size: 1.5em;\">GOLDEN HARVEST MINI SINGARA 300GM</h1>\r\n<p>&nbsp;</p>\r\n</div>\r\n</div>', NULL, NULL, NULL, NULL, NULL, NULL, 51, 10),
(1253, NULL, NULL, '8000', NULL, NULL, NULL, NULL, NULL, NULL, 51, 1),
(1254, 'en', 'default', 'GOLDEN HARVEST MINI SINGARA 300GM', NULL, NULL, NULL, NULL, NULL, NULL, 51, 2),
(1255, NULL, NULL, 'golden-harvest-mini-singara-300gm', NULL, NULL, NULL, NULL, NULL, NULL, 51, 3),
(1256, NULL, 'default', NULL, NULL, 0, NULL, NULL, NULL, NULL, 51, 4),
(1257, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 51, 5),
(1258, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 51, 6),
(1259, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 51, 7),
(1260, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 51, 8),
(1261, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 51, 23),
(1262, NULL, NULL, NULL, NULL, 6, NULL, NULL, NULL, NULL, 51, 24),
(1263, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 51, 26),
(1264, 'en', 'default', '', NULL, NULL, NULL, NULL, NULL, NULL, 51, 16),
(1265, 'en', 'default', '', NULL, NULL, NULL, NULL, NULL, NULL, 51, 17),
(1266, 'en', 'default', '', NULL, NULL, NULL, NULL, NULL, NULL, 51, 18),
(1267, NULL, NULL, NULL, NULL, NULL, 130.0000, NULL, NULL, NULL, 51, 11),
(1268, NULL, 'default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 51, 12),
(1269, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 51, 13),
(1270, NULL, 'default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 51, 14),
(1271, NULL, 'default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 51, 15),
(1272, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 51, 19),
(1273, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 51, 20),
(1274, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 51, 21),
(1275, NULL, NULL, '250', NULL, NULL, NULL, NULL, NULL, NULL, 51, 22),
(1276, 'en', 'default', '<div class=\"header\" style=\"box-sizing: border-box; color: rgba(0, 0, 0, 0.65); font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\';\">\r\n<div class=\"title-container\" style=\"box-sizing: border-box;\">\r\n<h1 class=\"title\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0.5em; color: rgba(0, 0, 0, 0.85); font-weight: 500; font-size: 1.5em;\">GOLDEN HARVEST VEGETABLE SAMOSA 400G</h1>\r\n<p>&nbsp;</p>\r\n</div>\r\n</div>', NULL, NULL, NULL, NULL, NULL, NULL, 52, 9),
(1277, 'en', 'default', '<div class=\"header\" style=\"box-sizing: border-box; color: rgba(0, 0, 0, 0.65); font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\';\">\r\n<div class=\"title-container\" style=\"box-sizing: border-box;\">\r\n<h1 class=\"title\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0.5em; color: rgba(0, 0, 0, 0.85); font-weight: 500; font-size: 1.5em;\">GOLDEN HARVEST VEGETABLE SAMOSA 400G</h1>\r\n<p>&nbsp;</p>\r\n</div>\r\n</div>', NULL, NULL, NULL, NULL, NULL, NULL, 52, 10),
(1278, NULL, NULL, '8001', NULL, NULL, NULL, NULL, NULL, NULL, 52, 1),
(1279, 'en', 'default', 'GOLDEN HARVEST VEGETABLE SAMOSA 400G', NULL, NULL, NULL, NULL, NULL, NULL, 52, 2),
(1280, NULL, NULL, 'golden-harvest-vegetable-samosa-400g', NULL, NULL, NULL, NULL, NULL, NULL, 52, 3),
(1281, NULL, 'default', NULL, NULL, 0, NULL, NULL, NULL, NULL, 52, 4),
(1282, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 52, 5),
(1283, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 52, 6),
(1284, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 52, 7),
(1285, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 52, 8),
(1286, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 52, 23),
(1287, NULL, NULL, NULL, NULL, 6, NULL, NULL, NULL, NULL, 52, 24),
(1288, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 52, 26),
(1289, 'en', 'default', '', NULL, NULL, NULL, NULL, NULL, NULL, 52, 16),
(1290, 'en', 'default', '', NULL, NULL, NULL, NULL, NULL, NULL, 52, 17),
(1291, 'en', 'default', '', NULL, NULL, NULL, NULL, NULL, NULL, 52, 18),
(1292, NULL, NULL, NULL, NULL, NULL, 200.0000, NULL, NULL, NULL, 52, 11),
(1293, NULL, 'default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 52, 12),
(1294, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 52, 13),
(1295, NULL, 'default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 52, 14),
(1296, NULL, 'default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 52, 15),
(1297, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 52, 19),
(1298, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 52, 20),
(1299, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 52, 21),
(1300, NULL, NULL, '300', NULL, NULL, NULL, NULL, NULL, NULL, 52, 22),
(1301, 'en', 'default', '<h1 class=\"title\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0.5em; color: rgba(0, 0, 0, 0.85); font-weight: 500; font-size: 1.5em; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\';\">GOLDEN HARVEST BEEF M SPRING ROLL15PC</h1>', NULL, NULL, NULL, NULL, NULL, NULL, 53, 9),
(1302, 'en', 'default', '<h1 class=\"title\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0.5em; color: rgba(0, 0, 0, 0.85); font-weight: 500; font-size: 1.5em; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\';\">GOLDEN HARVEST BEEF M SPRING ROLL15PC</h1>', NULL, NULL, NULL, NULL, NULL, NULL, 53, 10),
(1303, NULL, NULL, '8002', NULL, NULL, NULL, NULL, NULL, NULL, 53, 1),
(1304, 'en', 'default', 'GOLDEN HARVEST BEEF M SPRING ROLL15PC', NULL, NULL, NULL, NULL, NULL, NULL, 53, 2),
(1305, NULL, NULL, 'golden-harvest-beef-m-spring-roll15pc', NULL, NULL, NULL, NULL, NULL, NULL, 53, 3),
(1306, NULL, 'default', NULL, NULL, 0, NULL, NULL, NULL, NULL, 53, 4),
(1307, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 53, 5),
(1308, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 53, 6),
(1309, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 53, 7),
(1310, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 53, 8),
(1311, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 53, 23),
(1312, NULL, NULL, NULL, NULL, 6, NULL, NULL, NULL, NULL, 53, 24),
(1313, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 53, 26),
(1314, 'en', 'default', '', NULL, NULL, NULL, NULL, NULL, NULL, 53, 16),
(1315, 'en', 'default', '', NULL, NULL, NULL, NULL, NULL, NULL, 53, 17),
(1316, 'en', 'default', '', NULL, NULL, NULL, NULL, NULL, NULL, 53, 18),
(1317, NULL, NULL, NULL, NULL, NULL, 250.0000, NULL, NULL, NULL, 53, 11),
(1318, NULL, 'default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 53, 12),
(1319, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 53, 13),
(1320, NULL, 'default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 53, 14),
(1321, NULL, 'default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 53, 15),
(1322, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 53, 19),
(1323, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 53, 20),
(1324, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 53, 21),
(1325, NULL, NULL, '250', NULL, NULL, NULL, NULL, NULL, NULL, 53, 22),
(1326, 'en', 'default', '<h1 class=\"title\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0.5em; color: rgba(0, 0, 0, 0.85); font-weight: 500; font-size: 1.5em; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\';\">GOLDEN HARVEST PARATA MEG FAMILY1600GX2P</h1>', NULL, NULL, NULL, NULL, NULL, NULL, 54, 9),
(1327, 'en', 'default', '<h1 class=\"title\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0.5em; color: rgba(0, 0, 0, 0.85); font-weight: 500; font-size: 1.5em; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\';\">GOLDEN HARVEST PARATA MEG FAMILY1600GX2P</h1>', NULL, NULL, NULL, NULL, NULL, NULL, 54, 10),
(1328, NULL, NULL, '8003', NULL, NULL, NULL, NULL, NULL, NULL, 54, 1),
(1329, 'en', 'default', 'GOLDEN HARVEST PARATA MEG FAMILY1600GX2P', NULL, NULL, NULL, NULL, NULL, NULL, 54, 2),
(1330, NULL, NULL, 'golden-harvest-parata-meg-family1600gx2p', NULL, NULL, NULL, NULL, NULL, NULL, 54, 3),
(1331, NULL, 'default', NULL, NULL, 0, NULL, NULL, NULL, NULL, 54, 4),
(1332, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 54, 5),
(1333, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 54, 6),
(1334, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 54, 7),
(1335, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 54, 8),
(1336, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 54, 23),
(1337, NULL, NULL, NULL, NULL, 6, NULL, NULL, NULL, NULL, 54, 24),
(1338, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 54, 26),
(1339, 'en', 'default', '', NULL, NULL, NULL, NULL, NULL, NULL, 54, 16),
(1340, 'en', 'default', '', NULL, NULL, NULL, NULL, NULL, NULL, 54, 17),
(1341, 'en', 'default', '', NULL, NULL, NULL, NULL, NULL, NULL, 54, 18),
(1342, NULL, NULL, NULL, NULL, NULL, 300.0000, NULL, NULL, NULL, 54, 11),
(1343, NULL, 'default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 54, 12),
(1344, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 54, 13),
(1345, NULL, 'default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 54, 14),
(1346, NULL, 'default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 54, 15),
(1347, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 54, 19),
(1348, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 54, 20),
(1349, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 54, 21),
(1350, NULL, NULL, '500', NULL, NULL, NULL, NULL, NULL, NULL, 54, 22),
(1351, 'en', 'default', '<div class=\"title-container\" style=\"box-sizing: border-box; color: rgba(0, 0, 0, 0.65); font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\';\">\r\n<h1 class=\"title\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0.5em; color: rgba(0, 0, 0, 0.85); font-weight: 500; font-size: 1.5em;\">Rok Concent Floor Cleaner Jesmin 900ml</h1>\r\n<p>&nbsp;</p>\r\n</div>', NULL, NULL, NULL, NULL, NULL, NULL, 55, 9),
(1352, 'en', 'default', '<div class=\"title-container\" style=\"box-sizing: border-box; color: rgba(0, 0, 0, 0.65); font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\';\">\r\n<h1 class=\"title\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0.5em; color: rgba(0, 0, 0, 0.85); font-weight: 500; font-size: 1.5em;\">Rok Concent Floor Cleaner Jesmin 900ml</h1>\r\n<p>&nbsp;</p>\r\n</div>', NULL, NULL, NULL, NULL, NULL, NULL, 55, 10),
(1353, NULL, NULL, '9000', NULL, NULL, NULL, NULL, NULL, NULL, 55, 1),
(1354, 'en', 'default', 'Rok Concent Floor Cleaner Jesmin 900ml', NULL, NULL, NULL, NULL, NULL, NULL, 55, 2),
(1355, NULL, NULL, 'rok-concent-floor-cleaner-jesmin-900ml', NULL, NULL, NULL, NULL, NULL, NULL, 55, 3),
(1356, NULL, 'default', NULL, NULL, 0, NULL, NULL, NULL, NULL, 55, 4),
(1357, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 55, 5),
(1358, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 55, 6),
(1359, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 55, 7),
(1360, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 55, 8),
(1361, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 55, 23),
(1362, NULL, NULL, NULL, NULL, 6, NULL, NULL, NULL, NULL, 55, 24),
(1363, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 55, 26),
(1364, 'en', 'default', '', NULL, NULL, NULL, NULL, NULL, NULL, 55, 16),
(1365, 'en', 'default', '', NULL, NULL, NULL, NULL, NULL, NULL, 55, 17),
(1366, 'en', 'default', '', NULL, NULL, NULL, NULL, NULL, NULL, 55, 18),
(1367, NULL, NULL, NULL, NULL, NULL, 250.0000, NULL, NULL, NULL, 55, 11),
(1368, NULL, 'default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 55, 12),
(1369, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 55, 13),
(1370, NULL, 'default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 55, 14),
(1371, NULL, 'default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 55, 15),
(1372, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 55, 19),
(1373, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 55, 20),
(1374, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 55, 21),
(1375, NULL, NULL, '500', NULL, NULL, NULL, NULL, NULL, NULL, 55, 22),
(1376, 'en', 'default', '<h1 class=\"title\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0.5em; color: rgba(0, 0, 0, 0.85); font-weight: 500; font-size: 1.5em; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\';\">Potato Seasonal (New) Bulk</h1>', NULL, NULL, NULL, NULL, NULL, NULL, 56, 9),
(1377, 'en', 'default', '<h1 class=\"title\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0.5em; color: rgba(0, 0, 0, 0.85); font-weight: 500; font-size: 1.5em; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\';\">Potato Seasonal (New) Bulk</h1>', NULL, NULL, NULL, NULL, NULL, NULL, 56, 10),
(1378, NULL, NULL, '9001', NULL, NULL, NULL, NULL, NULL, NULL, 56, 1),
(1379, 'en', 'default', 'Potato Seasonal (New) Bulk', NULL, NULL, NULL, NULL, NULL, NULL, 56, 2),
(1380, NULL, NULL, 'potato-seasonal-new-bulk', NULL, NULL, NULL, NULL, NULL, NULL, 56, 3),
(1381, NULL, 'default', NULL, NULL, 0, NULL, NULL, NULL, NULL, 56, 4),
(1382, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 56, 5),
(1383, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 56, 6),
(1384, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 56, 7),
(1385, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 56, 8),
(1386, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 56, 23),
(1387, NULL, NULL, NULL, NULL, 6, NULL, NULL, NULL, NULL, 56, 24),
(1388, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 56, 26),
(1389, 'en', 'default', '', NULL, NULL, NULL, NULL, NULL, NULL, 56, 16),
(1390, 'en', 'default', '', NULL, NULL, NULL, NULL, NULL, NULL, 56, 17),
(1391, 'en', 'default', '', NULL, NULL, NULL, NULL, NULL, NULL, 56, 18),
(1392, NULL, NULL, NULL, NULL, NULL, 20.0000, NULL, NULL, NULL, 56, 11),
(1393, NULL, 'default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 56, 12),
(1394, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 56, 13),
(1395, NULL, 'default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 56, 14),
(1396, NULL, 'default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 56, 15),
(1397, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 56, 19),
(1398, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 56, 20),
(1399, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 56, 21),
(1400, NULL, NULL, '1000', NULL, NULL, NULL, NULL, NULL, NULL, 56, 22),
(1401, 'en', 'default', '<p>&nbsp;</p>\r\n<p><span style=\"color: rgba(0, 0, 0, 0.85); font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; font-size: 21px;\">Lemon (Local)</span></p>', NULL, NULL, NULL, NULL, NULL, NULL, 57, 9),
(1402, 'en', 'default', '<p>&nbsp;</p>\r\n<p><span style=\"color: rgba(0, 0, 0, 0.85); font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; font-size: 21px;\">Lemon (Local)</span></p>', NULL, NULL, NULL, NULL, NULL, NULL, 57, 10),
(1403, NULL, NULL, '9002', NULL, NULL, NULL, NULL, NULL, NULL, 57, 1),
(1404, 'en', 'default', ' Lemon (Local)', NULL, NULL, NULL, NULL, NULL, NULL, 57, 2),
(1405, NULL, NULL, '-lemon-local', NULL, NULL, NULL, NULL, NULL, NULL, 57, 3),
(1406, NULL, 'default', NULL, NULL, 0, NULL, NULL, NULL, NULL, 57, 4),
(1407, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 57, 5),
(1408, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 57, 6),
(1409, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 57, 7),
(1410, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 57, 8),
(1411, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 57, 23),
(1412, NULL, NULL, NULL, NULL, 6, NULL, NULL, NULL, NULL, 57, 24),
(1413, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 57, 26),
(1414, 'en', 'default', '', NULL, NULL, NULL, NULL, NULL, NULL, 57, 16),
(1415, 'en', 'default', '', NULL, NULL, NULL, NULL, NULL, NULL, 57, 17),
(1416, 'en', 'default', '', NULL, NULL, NULL, NULL, NULL, NULL, 57, 18),
(1417, NULL, NULL, NULL, NULL, NULL, 10.0000, NULL, NULL, NULL, 57, 11),
(1418, NULL, 'default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 57, 12),
(1419, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 57, 13),
(1420, NULL, 'default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 57, 14),
(1421, NULL, 'default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 57, 15),
(1422, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 57, 19),
(1423, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 57, 20),
(1424, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 57, 21),
(1425, NULL, NULL, '10', NULL, NULL, NULL, NULL, NULL, NULL, 57, 22),
(1426, 'en', 'default', '<p>&nbsp;</p>\r\n<p><span style=\"color: rgba(0, 0, 0, 0.85); font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; font-size: 21px;\">Egg Chicken Red 1PCS</span></p>', NULL, NULL, NULL, NULL, NULL, NULL, 58, 9),
(1427, 'en', 'default', '<p>&nbsp;</p>\r\n<p><span style=\"color: rgba(0, 0, 0, 0.85); font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; font-size: 21px;\">Egg Chicken Red 1PCS</span></p>', NULL, NULL, NULL, NULL, NULL, NULL, 58, 10),
(1428, NULL, NULL, '9003', NULL, NULL, NULL, NULL, NULL, NULL, 58, 1),
(1429, 'en', 'default', ' Egg Chicken Red 1PCS', NULL, NULL, NULL, NULL, NULL, NULL, 58, 2),
(1430, NULL, NULL, '-egg-chicken-red-1pcs', NULL, NULL, NULL, NULL, NULL, NULL, 58, 3),
(1431, NULL, 'default', NULL, NULL, 0, NULL, NULL, NULL, NULL, 58, 4),
(1432, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 58, 5),
(1433, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 58, 6),
(1434, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 58, 7),
(1435, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 58, 8),
(1436, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 58, 23),
(1437, NULL, NULL, NULL, NULL, 6, NULL, NULL, NULL, NULL, 58, 24),
(1438, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 58, 26),
(1439, 'en', 'default', '', NULL, NULL, NULL, NULL, NULL, NULL, 58, 16),
(1440, 'en', 'default', '', NULL, NULL, NULL, NULL, NULL, NULL, 58, 17),
(1441, 'en', 'default', '', NULL, NULL, NULL, NULL, NULL, NULL, 58, 18),
(1442, NULL, NULL, NULL, NULL, NULL, 9.0000, NULL, NULL, NULL, 58, 11),
(1443, NULL, 'default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 12),
(1444, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 13),
(1445, NULL, 'default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 14),
(1446, NULL, 'default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 58, 15),
(1447, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 58, 19),
(1448, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 58, 20),
(1449, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 58, 21),
(1450, NULL, NULL, '30', NULL, NULL, NULL, NULL, NULL, NULL, 58, 22),
(1451, 'en', 'default', '<h1 class=\"title\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0.5em; color: rgba(0, 0, 0, 0.85); font-weight: 500; font-size: 1.5em; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\';\">Onion Local Premium Bulk</h1>', NULL, NULL, NULL, NULL, NULL, NULL, 59, 9),
(1452, 'en', 'default', '<h1 class=\"title\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0.5em; color: rgba(0, 0, 0, 0.85); font-weight: 500; font-size: 1.5em; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\';\">Onion Local Premium Bulk</h1>', NULL, NULL, NULL, NULL, NULL, NULL, 59, 10),
(1453, NULL, NULL, '9004', NULL, NULL, NULL, NULL, NULL, NULL, 59, 1),
(1454, 'en', 'default', 'Onion Local Premium Bulk', NULL, NULL, NULL, NULL, NULL, NULL, 59, 2),
(1455, NULL, NULL, 'onion-local-premium-bulk', NULL, NULL, NULL, NULL, NULL, NULL, 59, 3),
(1456, NULL, 'default', NULL, NULL, 0, NULL, NULL, NULL, NULL, 59, 4),
(1457, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 59, 5),
(1458, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 59, 6),
(1459, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 59, 7),
(1460, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 59, 8),
(1461, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 59, 23);
INSERT INTO `bgwyproduct_attribute_values` (`id`, `locale`, `channel`, `text_value`, `boolean_value`, `integer_value`, `float_value`, `datetime_value`, `date_value`, `json_value`, `product_id`, `attribute_id`) VALUES
(1462, NULL, NULL, NULL, NULL, 6, NULL, NULL, NULL, NULL, 59, 24),
(1463, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 59, 26),
(1464, 'en', 'default', '', NULL, NULL, NULL, NULL, NULL, NULL, 59, 16),
(1465, 'en', 'default', '', NULL, NULL, NULL, NULL, NULL, NULL, 59, 17),
(1466, 'en', 'default', '', NULL, NULL, NULL, NULL, NULL, NULL, 59, 18),
(1467, NULL, NULL, NULL, NULL, NULL, 40.0000, NULL, NULL, NULL, 59, 11),
(1468, NULL, 'default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 59, 12),
(1469, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 59, 13),
(1470, NULL, 'default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 59, 14),
(1471, NULL, 'default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 59, 15),
(1472, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 59, 19),
(1473, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 59, 20),
(1474, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 59, 21),
(1475, NULL, NULL, '1000', NULL, NULL, NULL, NULL, NULL, NULL, 59, 22),
(1476, 'en', 'default', '<h1 class=\"title\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0.5em; color: rgba(0, 0, 0, 0.85); font-weight: 500; font-size: 1.5em; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\';\">Onion Local Premium Bulk</h1>', NULL, NULL, NULL, NULL, NULL, NULL, 60, 9),
(1477, 'en', 'default', '<h1 class=\"title\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0.5em; color: rgba(0, 0, 0, 0.85); font-weight: 500; font-size: 1.5em; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\';\">Onion Local Premium Bulk</h1>', NULL, NULL, NULL, NULL, NULL, NULL, 60, 10),
(1478, NULL, NULL, 'temporary-sku-557634', NULL, NULL, NULL, NULL, NULL, NULL, 60, 1),
(1479, 'en', 'default', 'Copy of Onion Local Premium Bulk (c59eb5)', NULL, NULL, NULL, NULL, NULL, NULL, 60, 2),
(1480, NULL, NULL, 'copy-of-onion-local-premium-bulk-c59eb5', NULL, NULL, NULL, NULL, NULL, NULL, 60, 3),
(1481, NULL, 'default', NULL, NULL, 0, NULL, NULL, NULL, NULL, 60, 4),
(1482, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 60, 5),
(1483, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 60, 6),
(1484, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, 60, 7),
(1485, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 60, 8),
(1486, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, 60, 23),
(1487, NULL, NULL, NULL, NULL, 6, NULL, NULL, NULL, NULL, 60, 24),
(1488, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, 60, 26),
(1489, 'en', 'default', '', NULL, NULL, NULL, NULL, NULL, NULL, 60, 16),
(1490, 'en', 'default', '', NULL, NULL, NULL, NULL, NULL, NULL, 60, 17),
(1491, 'en', 'default', '', NULL, NULL, NULL, NULL, NULL, NULL, 60, 18),
(1492, NULL, NULL, NULL, NULL, NULL, 40.0000, NULL, NULL, NULL, 60, 11),
(1493, NULL, 'default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 60, 12),
(1494, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 60, 13),
(1495, NULL, 'default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 60, 14),
(1496, NULL, 'default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 60, 15),
(1497, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 60, 19),
(1498, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 60, 20),
(1499, NULL, NULL, '', NULL, NULL, NULL, NULL, NULL, NULL, 60, 21),
(1500, NULL, NULL, '1000', NULL, NULL, NULL, NULL, NULL, NULL, 60, 22);

-- --------------------------------------------------------

--
-- Table structure for table `bgwyproduct_bundle_options`
--

CREATE TABLE `bgwyproduct_bundle_options` (
  `id` int(10) UNSIGNED NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_required` tinyint(1) NOT NULL DEFAULT 1,
  `sort_order` int(11) NOT NULL DEFAULT 0,
  `product_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `bgwyproduct_bundle_option_products`
--

CREATE TABLE `bgwyproduct_bundle_option_products` (
  `id` int(10) UNSIGNED NOT NULL,
  `qty` int(11) NOT NULL DEFAULT 0,
  `is_user_defined` tinyint(1) NOT NULL DEFAULT 1,
  `is_default` tinyint(1) NOT NULL DEFAULT 0,
  `sort_order` int(11) NOT NULL DEFAULT 0,
  `product_bundle_option_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `bgwyproduct_bundle_option_translations`
--

CREATE TABLE `bgwyproduct_bundle_option_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `label` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_bundle_option_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `bgwyproduct_categories`
--

CREATE TABLE `bgwyproduct_categories` (
  `product_id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `bgwyproduct_categories`
--

INSERT INTO `bgwyproduct_categories` (`product_id`, `category_id`) VALUES
(6, 8),
(4, 8),
(3, 5),
(7, 4),
(8, 3),
(9, 3),
(10, 2),
(11, 10),
(12, 10),
(13, 10),
(14, 10),
(15, 10),
(16, 10),
(17, 9),
(18, 9),
(19, 9),
(20, 9),
(21, 9),
(22, 9),
(23, 9),
(24, 8),
(25, 8),
(26, 8),
(27, 8),
(28, 7),
(29, 7),
(30, 7),
(31, 7),
(32, 7),
(33, 7),
(34, 6),
(35, 6),
(36, 6),
(37, 6),
(38, 6),
(39, 6),
(40, 5),
(41, 5),
(42, 5),
(43, 5),
(44, 5),
(45, 4),
(46, 4),
(47, 4),
(48, 4),
(49, 4),
(50, 4),
(51, 3),
(52, 3),
(53, 3),
(54, 3),
(55, 2),
(56, 2),
(57, 2),
(58, 2),
(59, 2),
(60, 2);

-- --------------------------------------------------------

--
-- Table structure for table `bgwyproduct_cross_sells`
--

CREATE TABLE `bgwyproduct_cross_sells` (
  `parent_id` int(10) UNSIGNED NOT NULL,
  `child_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `bgwyproduct_customer_group_prices`
--

CREATE TABLE `bgwyproduct_customer_group_prices` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `qty` int(11) NOT NULL DEFAULT 0,
  `value_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `product_id` int(10) UNSIGNED NOT NULL,
  `customer_group_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `bgwyproduct_downloadable_links`
--

CREATE TABLE `bgwyproduct_downloadable_links` (
  `id` int(10) UNSIGNED NOT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `sample_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sample_file` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sample_file_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sample_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `downloads` int(11) NOT NULL DEFAULT 0,
  `sort_order` int(11) DEFAULT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `bgwyproduct_downloadable_link_translations`
--

CREATE TABLE `bgwyproduct_downloadable_link_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_downloadable_link_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `bgwyproduct_downloadable_samples`
--

CREATE TABLE `bgwyproduct_downloadable_samples` (
  `id` int(10) UNSIGNED NOT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `bgwyproduct_downloadable_sample_translations`
--

CREATE TABLE `bgwyproduct_downloadable_sample_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_downloadable_sample_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `bgwyproduct_flat`
--

CREATE TABLE `bgwyproduct_flat` (
  `id` int(10) UNSIGNED NOT NULL,
  `sku` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url_key` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `new` tinyint(1) DEFAULT NULL,
  `featured` tinyint(1) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `thumbnail` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` decimal(12,4) DEFAULT NULL,
  `cost` decimal(12,4) DEFAULT NULL,
  `special_price` decimal(12,4) DEFAULT NULL,
  `special_price_from` date DEFAULT NULL,
  `special_price_to` date DEFAULT NULL,
  `weight` decimal(12,4) DEFAULT NULL,
  `color` int(11) DEFAULT NULL,
  `color_label` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `size` int(11) DEFAULT NULL,
  `size_label` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `channel` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `visible_individually` tinyint(1) DEFAULT NULL,
  `min_price` decimal(12,4) DEFAULT NULL,
  `max_price` decimal(12,4) DEFAULT NULL,
  `short_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `width` decimal(12,4) DEFAULT NULL,
  `height` decimal(12,4) DEFAULT NULL,
  `depth` decimal(12,4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `bgwyproduct_flat`
--

INSERT INTO `bgwyproduct_flat` (`id`, `sku`, `name`, `description`, `url_key`, `new`, `featured`, `status`, `thumbnail`, `price`, `cost`, `special_price`, `special_price_from`, `special_price_to`, `weight`, `color`, `color_label`, `size`, `size_label`, `created_at`, `locale`, `channel`, `product_id`, `updated_at`, `parent_id`, `visible_individually`, `min_price`, `max_price`, `short_description`, `meta_title`, `meta_keywords`, `meta_description`, `width`, `height`, `depth`) VALUES
(1, '1001', 'Tiffany Sugar Free Lemon Biscuit 162gm', '<p><span style=\"color: rgba(0, 0, 0, 0.65); font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\';\">Tiffany sugar-free lemon-flavored cream biscuits are for people who are on sugar restricted diet or just prefer lowering their sugar consumption.</span></p>', 'tiffany-sugar-free-lemon-biscuit-162gm', 1, 1, 1, NULL, 350.0000, NULL, NULL, NULL, NULL, 262.0000, 1, 'Red', 6, 'S', '2021-02-24 10:52:20', 'en', 'default', 1, '2021-02-24 10:52:20', NULL, 1, 350.0000, 350.0000, '<p><span style=\"color: rgba(0, 0, 0, 0.65); font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\';\">Tiffany sugar-free lemon-flavored cream biscuits are for people who are on sugar restricted diet or just prefer lowering their sugar consumption.</span></p>', '', '', '', 0.0000, 0.0000, 0.0000),
(2, '1002', 'Dan Cake Chocolate Muffin Cake 50gm', '<p><span style=\"color: rgba(0, 0, 0, 0.65); font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\';\">Blended love with low-fat cocoa powder from the finest sources, to bake soft and sweet Chocolate Muffins.</span></p>', 'dan-cake-chocolate-muffin-cake-50gm', 1, 1, 1, NULL, 30.0000, NULL, NULL, NULL, NULL, 50.0000, 1, 'Red', 6, 'S', '2021-02-24 11:07:52', 'en', 'default', 2, '2021-02-24 11:07:52', NULL, 1, 30.0000, 30.0000, '<p><span style=\"color: rgba(0, 0, 0, 0.65); font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\';\">It\'s a delicious Chocolate Muffin Cake</span></p>', '', '', '', 0.0000, 0.0000, 0.0000),
(3, '1003', 'Dan Cake Chocolate Layer Cake12x25g 300g', '<p><span style=\"color: rgba(0, 0, 0, 0.65); font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\';\">This chocolate layer cake is specially made from low-fat cocoa powder and skimmed milk, which does not only make it healthy but also flavorsome and appetizing.&nbsp;</span></p>', 'dan-cake-chocolate-layer-cake12x25g-300g', 1, 1, 1, NULL, 240.0000, NULL, NULL, NULL, NULL, 300.0000, 1, 'Red', 6, 'S', '2021-02-24 11:12:08', 'en', 'default', 3, '2021-02-24 11:12:08', NULL, 1, 240.0000, 240.0000, '<p><span style=\"color: rgba(0, 0, 0, 0.65); font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\';\">With a layer of austere vanilla cream sandwiched between two finely baked chocolate cakes.</span></p>', '', '', '', 0.0000, 0.0000, 0.0000),
(4, '1004', 'Kazi Farms Kitchen Chicken Strips (250gm)', '<p><span style=\"color: rgba(0, 0, 0, 0.65); font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\';\">Kazi Farms Kitchen chicken strips are a Good source of protein and loaded with sustenance.</span></p>', 'kazi-farms-kitchen-chicken-strips-250gm', 1, 1, 1, NULL, 350.0000, NULL, NULL, NULL, NULL, 250.0000, 1, 'Red', 6, 'S', '2021-02-24 11:14:24', 'en', 'default', 4, '2021-02-24 11:14:24', NULL, 1, 350.0000, 350.0000, '<p><span style=\"color: rgba(0, 0, 0, 0.65); font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\';\">Individually frozen for convenience.</span></p>', '', '', '', 0.0000, 0.0000, 0.0000),
(5, '1005', 'Farm Fresh Primium Liquied Milk 500ml', '<p><span style=\"color: rgba(0, 0, 0, 0.65); font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\';\">Farm Fresh milk is rich, and a great source of Vitamin D.</span></p>', 'farm-fresh-primium-liquied-milk-500ml', 1, 1, 1, NULL, 200.0000, NULL, NULL, NULL, NULL, 500.0000, 1, 'Red', 6, 'S', '2021-02-24 11:16:19', 'en', 'default', 5, '2021-02-24 11:16:19', NULL, 1, 200.0000, 200.0000, '<p><span style=\"color: rgba(0, 0, 0, 0.65); font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\';\">The best source of calcium</span></p>', '', '', '', 0.0000, 0.0000, 0.0000),
(6, '1006', 'Anchor Fortified Full Cream Milk Powder (1kg)', '<p><span style=\"color: rgba(0, 0, 0, 0.65); font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\';\">Anchor Fortified Milk Powder is high in calcium, protein, minerals, and vitamins that are important for a child\'s growth and development.</span></p>', 'anchor-fortified-full-cream-milk-powder-1kg', 1, 1, 1, NULL, 630.0000, NULL, NULL, NULL, NULL, 1000.0000, 1, 'Red', 6, 'S', '2021-02-24 11:18:58', 'en', 'default', 6, '2021-02-24 11:18:58', NULL, 1, 630.0000, 630.0000, '<p><span style=\"color: rgba(0, 0, 0, 0.65); font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\';\">Ingredients: Whole Cow\'s Milk, Emulsifier (Soya Lecithin), Vitamins and Minerals</span></p>', '', '', '', 0.0000, 0.0000, 0.0000),
(7, '1008', 'Nido 1 plus 1800g - Dubai', '<p>It also includes vitamins, minerals, and prebiotics.</p>', 'nido-1-plus-1800g---dubai', 1, 0, 1, NULL, 4600.0000, NULL, NULL, NULL, NULL, 1800.0000, 1, 'Red', 6, 'S', '2021-02-24 11:50:59', 'en', 'default', 7, '2021-02-24 11:50:59', NULL, 1, 4600.0000, 4600.0000, '<p>NIDO 1+ starts with the goodness of milk.</p>', '', '', '', 0.0000, 0.0000, 0.0000),
(8, '1009', 'GOLDEN HARVEST CHICKEN SHAMMI KABAB (10PCS)', '<table style=\"border-collapse: collapse; color: rgba(0, 0, 0, 0.65); font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\';\" border=\"0\" width=\"376\" cellspacing=\"0\" cellpadding=\"0\">\r\n<tbody style=\"box-sizing: border-box;\">\r\n<tr style=\"box-sizing: border-box;\">\r\n<td class=\"xl66\" style=\"box-sizing: border-box;\" width=\"376\" height=\"20\">GOLDEN HARVEST CHICKEN SHAMMI KABAB (10PCS) is now available. Retails in 600gm.&nbsp;</td>\r\n</tr>\r\n</tbody>\r\n</table>', 'golden-harvest-chicken-shammi-kabab-10pcs', 1, 1, 1, NULL, 1000.0000, NULL, NULL, NULL, NULL, 10.0000, 1, 'Red', 6, 'S', '2021-02-24 11:54:36', 'en', 'default', 8, '2021-02-24 11:54:36', NULL, 1, 1000.0000, 1000.0000, '<p>SHAMMI KABAB</p>', '', '', '', 0.0000, 0.0000, 0.0000),
(9, '1010', 'GOLDEN HARVEST MOROG POLAW 400 GM', '<table style=\"border-collapse: collapse; color: rgba(0, 0, 0, 0.65); font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\';\" border=\"0\" width=\"376\" cellspacing=\"0\" cellpadding=\"0\">\r\n<tbody style=\"box-sizing: border-box;\">\r\n<tr style=\"box-sizing: border-box;\">\r\n<td class=\"xl66\" style=\"box-sizing: border-box;\" width=\"376\" height=\"20\">GOLDEN HARVEST MOROG POLAW is now available. This product retails in 400 gm packs.&nbsp;&nbsp;</td>\r\n</tr>\r\n</tbody>\r\n</table>', 'golden-harvest-morog-polaw-400-gm', 1, 1, 1, NULL, 1000.0000, NULL, NULL, NULL, NULL, 600.0000, 1, 'Red', 6, 'S', '2021-02-24 11:56:55', 'en', 'default', 9, '2021-02-24 11:56:55', NULL, 1, 1000.0000, 1000.0000, '<p>MOROG POLAW</p>', '', '', '', 0.0000, 0.0000, 0.0000),
(10, '1011', 'Minicate Rice (Premium)', '<p>Miniket Rice is extensively used for preparing various delicacies.</p>', 'minicate-rice-premium', 1, 1, 1, NULL, 60.0000, NULL, NULL, NULL, NULL, 1.0000, 1, 'Red', 6, 'S', '2021-02-24 11:59:37', 'en', 'default', 10, '2021-02-24 11:59:37', NULL, 1, 60.0000, 60.0000, '<p>Miniket Rice</p>', '', '', '', 0.0000, 0.0000, 0.0000),
(11, '1015', 'Banana (Sagor) [1 Pc.]', '<p><span style=\"color: rgba(0, 0, 0, 0.65); font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\';\">It can also be a good way to get magnesium and vitamins C and B6.</span></p>', 'banana-sagor-1-pc', 0, 0, 1, NULL, 10.0000, NULL, NULL, NULL, NULL, 100.0000, 1, 'Red', 6, 'S', '2021-02-25 03:53:37', 'en', 'default', 11, '2021-02-25 03:53:37', NULL, 1, 10.0000, 10.0000, '<p><span style=\"color: rgba(0, 0, 0, 0.65); font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\';\">Loaded with fiber, both soluble and insoluble.</span></p>', '', '', '', 0.0000, 0.0000, 0.0000),
(12, '1016', 'Cabbage [Badacopi] Local Pcs', '<p><span style=\"color: rgba(0, 0, 0, 0.65); font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\';\">It Helps Improve Digestion.</span></p>', 'cabbage-badacopi-local-pcs', 0, 0, 1, NULL, 20.0000, NULL, NULL, NULL, NULL, 1000.0000, 1, 'Red', 6, 'S', '2021-02-25 03:55:53', 'en', 'default', 12, '2021-02-25 03:55:53', NULL, 1, 20.0000, 20.0000, '<p><span style=\"color: rgba(0, 0, 0, 0.65); font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\';\">Cabbage Is Packed With Vitamin C.</span></p>', '', '', '', 0.0000, 0.0000, 0.0000),
(13, '1017', 'Papaya Ripe Thai Bulk', '<p><span style=\"color: rgba(0, 0, 0, 0.65); font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\';\">The ripe fruit can be eaten cooked and is used as an ingredient in salads and stews. Ripe papaya has a lot of health benefits as it helps cleanse the body internally of any toxins, eating ripe papaya daily helps with skin conditions like acne blemishes and pigmentation, may help in lowering blood sugar and ease digestion.</span></p>', 'papaya-ripe-thai-bulk', 0, 0, 1, NULL, 70.0000, NULL, NULL, NULL, NULL, 1000.0000, 1, 'Red', 6, 'S', '2021-02-25 03:58:28', 'en', 'default', 13, '2021-02-25 03:58:28', NULL, 1, 70.0000, 70.0000, '<p><span style=\"color: rgba(0, 0, 0, 0.65); font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\';\">Papaya also known as Carica Papaya, it has an elongated shape with yellow-orange color that makes it juicy and so favorable.</span></p>', '', '', '', 0.0000, 0.0000, 0.0000),
(14, '1018', 'PUMPKIN GREEN [SWEET GOURD] PCS', '<ul style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1em; color: rgba(0, 0, 0, 0.65); font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\';\">\r\n<li style=\"box-sizing: border-box;\">It has &nbsp;excellent taste and various way to prepare it.</li>\r\n<li style=\"box-sizing: border-box;\">It is perfect for human nutrition.</li>\r\n</ul>', 'pumpkin-green-sweet-gourd-pcs', 0, 0, 1, NULL, 45.0000, NULL, NULL, NULL, NULL, 1000.0000, 1, 'Red', 6, 'S', '2021-02-25 04:01:36', 'en', 'default', 14, '2021-02-25 04:01:36', NULL, 1, 45.0000, 45.0000, '<p><span style=\"color: rgba(0, 0, 0, 0.65); font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\';\">PUMPKIN GREEN [SWEET GOURD] is rich in vitamins&nbsp;A,&nbsp;C, D, E, K, B1, B2, B3, B6 and minerals such as potassium, calcium, iron, phosphorus, selenium, zinc, magnesium, boron, cobalt.</span></p>', '', '', '', 0.0000, 0.0000, 0.0000),
(15, '1019', 'Pudina Pata', '<ul style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1em; color: rgba(0, 0, 0, 0.65); font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\';\">\r\n<li style=\"box-sizing: border-box;\">It can be use in scpicy and sweet dishes both.</li>\r\n<li style=\"box-sizing: border-box;\">It makes your dishes more aromatic and delicious.</li>\r\n</ul>', 'pudina-pata', 0, 0, 1, NULL, 16.0000, NULL, NULL, NULL, NULL, 20.0000, 1, 'Red', 6, 'S', '2021-02-25 04:04:22', 'en', 'default', 15, '2021-02-25 04:04:22', NULL, 1, 16.0000, 16.0000, '<p><span style=\"color: rgba(0, 0, 0, 0.65); font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\';\">Pudina Pata is favourite aromatic leaves for bengalis.</span></p>', '', '', '', 0.0000, 0.0000, 0.0000),
(16, '1020', 'Dragon Fruits Imported Bulk', '<ul style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1em; color: rgba(0, 0, 0, 0.65); font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\';\">\r\n<li style=\"box-sizing: border-box;\">It can be use in scpicy and sweet dishes both.</li>\r\n<li style=\"box-sizing: border-box;\">It makes your dishes more aromatic and delicious.</li>\r\n</ul>', 'dragon-fruits-imported-bulk', 0, 0, 1, NULL, 580.0000, NULL, NULL, NULL, NULL, 500.0000, 1, 'Red', 6, 'S', '2021-02-25 04:06:01', 'en', 'default', 16, '2021-02-25 04:06:01', NULL, 1, 580.0000, 580.0000, '<p><span style=\"color: rgba(0, 0, 0, 0.65); font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\';\">Pudina Pata is favourite aromatic leaves for bengalis.</span></p>', '', '', '', 0.0000, 0.0000, 0.0000),
(17, '2000', 'AYER FISH BIG (HAWOR)', '<p>It\'s a very good fish in good condition.</p>', 'ayer-fish-big-hawor', 0, 0, 1, NULL, 1500.0000, NULL, NULL, NULL, NULL, 1500.0000, 1, 'Red', 6, 'S', '2021-02-25 04:09:24', 'en', 'default', 17, '2021-02-25 04:09:24', NULL, 1, 1500.0000, 1500.0000, '<p>It\'s a very good fish in good condition.</p>', '', '', '', 0.0000, 0.0000, 0.0000),
(18, '2001', 'KALI BAUSH FISH MEDIUM (HAWOR)', '<p>It\'s a very good fish in good condition.</p>', 'kali-baush-fish-medium-hawor', 0, 0, 1, NULL, 1200.0000, NULL, NULL, NULL, NULL, 1000.0000, 1, 'Red', 6, 'S', '2021-02-25 04:11:14', 'en', 'default', 18, '2021-02-25 04:11:14', NULL, 1, 1200.0000, 1200.0000, '<p>It\'s a very good fish in good condition.</p>', '', '', '', 0.0000, 0.0000, 0.0000),
(19, '2002', 'AYER FISH MEDIUM (HAWOR)', '<table style=\"box-sizing: border-box; border-collapse: collapse; color: rgba(0, 0, 0, 0.65); font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\';\" border=\"0\" width=\"233\" cellspacing=\"0\" cellpadding=\"0\"><colgroup style=\"box-sizing: border-box;\"><col style=\"box-sizing: border-box;\" width=\"233\" /></colgroup>\r\n<tbody style=\"box-sizing: border-box;\">\r\n<tr style=\"box-sizing: border-box;\">\r\n<td class=\"xl70\" style=\"box-sizing: border-box;\" width=\"233\" height=\"20\">AYER FISH MEDIUM (HAWOR)</td>\r\n</tr>\r\n</tbody>\r\n</table>', 'ayer-fish-medium-hawor', 0, 0, 1, NULL, 1555.0000, NULL, NULL, NULL, NULL, 1000.0000, 1, 'Red', 6, 'S', '2021-02-25 04:12:52', 'en', 'default', 19, '2021-02-25 04:12:52', NULL, 1, 1555.0000, 1555.0000, '<table style=\"box-sizing: border-box; border-collapse: collapse; color: rgba(0, 0, 0, 0.65); font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\';\" border=\"0\" width=\"233\" cellspacing=\"0\" cellpadding=\"0\"><colgroup style=\"box-sizing: border-box;\"><col style=\"box-sizing: border-box;\" width=\"233\" /></colgroup>\r\n<tbody style=\"box-sizing: border-box;\">\r\n<tr style=\"box-sizing: border-box;\">\r\n<td class=\"xl70\" style=\"box-sizing: border-box;\" width=\"233\" height=\"20\">AYER FISH MEDIUM (HAWOR)</td>\r\n</tr>\r\n</tbody>\r\n</table>', '', '', '', 0.0000, 0.0000, 0.0000),
(20, '2003', 'Taki Fish (Hawor)', '<p>It\'s a very good fish in a good condition.</p>', 'taki-fish-hawor', 0, 0, 1, NULL, 800.0000, NULL, NULL, NULL, NULL, 500.0000, 1, 'Red', 6, 'S', '2021-02-25 04:15:01', 'en', 'default', 20, '2021-02-25 04:15:01', NULL, 1, 800.0000, 800.0000, '<p>It\'s a very good fish in a good condition.</p>', '', '', '', 0.0000, 0.0000, 0.0000),
(21, '2004', 'Mrigal Fish (1-2.99 kg/Pc)', '<p>It\'s a very good fish and in a very good condition.</p>', 'mrigal-fish-1-299-kgpc', 0, 0, 1, NULL, 500.0000, NULL, NULL, NULL, NULL, 1000.0000, 1, 'Red', 6, 'S', '2021-02-25 04:17:08', 'en', 'default', 21, '2021-02-25 04:17:08', NULL, 1, 500.0000, 500.0000, '<p>It\'s a very good fish and in a very good condition.</p>', '', '', '', 0.0000, 0.0000, 0.0000),
(22, '2005', 'Pabda Fish', '<p>It\'s a very good fish and in a good condition.</p>', 'pabda-fish', 0, 0, 1, NULL, 420.0000, NULL, NULL, NULL, NULL, 500.0000, 1, 'Red', 6, 'S', '2021-02-25 04:19:25', 'en', 'default', 22, '2021-02-25 04:19:25', NULL, 1, 420.0000, 420.0000, '<p>It\'s a very good fish and in a good condition.</p>', '', '', '', 0.0000, 0.0000, 0.0000),
(23, '2006', 'Golda Chingri', '<p><span style=\"color: rgba(0, 0, 0, 0.65); font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\';\">Prawns are a great source of Vitamins B-6, B-12 and Niacin, which help the body produce energy, build muscle and replenish red blood cells.</span></p>', 'golda-chingri', 0, 0, 1, NULL, 2500.0000, NULL, NULL, NULL, NULL, 1000.0000, 1, 'Red', 6, 'S', '2021-02-25 04:26:01', 'en', 'default', 23, '2021-02-25 04:26:01', NULL, 1, 2500.0000, 2500.0000, '<p><span style=\"color: rgba(0, 0, 0, 0.65); font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\';\">While prawns contain higher than average amounts of cholesterol, they do not lead to higher cholesterol levels in the body due to their healthy fat profile.</span></p>', '', '', '', 0.0000, 0.0000, 0.0000),
(24, '3000', 'Shokti Mishti Doi', '<h1 class=\"title\" style=\"font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; box-sizing: border-box; margin-top: 0px; margin-bottom: 0.5em; color: rgba(0, 0, 0, 0.85); font-weight: 500; font-size: 1.5em;\">Shokti Mishti Doi keep you healthy</h1>', 'shokti-mishti-doi', 0, 0, 1, NULL, 25.0000, NULL, NULL, NULL, NULL, 25.0000, 1, 'Red', 6, 'S', '2021-02-25 04:29:29', 'en', 'default', 24, '2021-02-25 04:29:29', NULL, 1, 25.0000, 25.0000, '<div class=\"header\" style=\"box-sizing: border-box; color: rgba(0, 0, 0, 0.65); font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\';\">\r\n<div class=\"title-container\" style=\"box-sizing: border-box;\">\r\n<h1 class=\"title\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0.5em; color: rgba(0, 0, 0, 0.85); font-weight: 500; font-size: 1.5em;\">Shokti Mishti Doi keep you healthy</h1>\r\n<p>&nbsp;</p>\r\n</div>\r\n</div>', '', '', '', 0.0000, 0.0000, 0.0000),
(25, '3001', 'Shokti+ Sweetened Yogurt- Plain', '<h1 class=\"title\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0.5em; color: rgba(0, 0, 0, 0.85); font-weight: 500; font-size: 1.5em; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\';\">Shokti+ Sweetened Yogurt- Plain is good for health</h1>', 'shokti-sweetened-yogurt--plain', 0, 0, 1, NULL, 50.0000, NULL, NULL, NULL, NULL, 80.0000, 1, 'Red', 6, 'S', '2021-02-25 04:32:02', 'en', 'default', 25, '2021-02-25 04:32:02', NULL, 1, 50.0000, 50.0000, '<h1 class=\"title\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0.5em; color: rgba(0, 0, 0, 0.85); font-weight: 500; font-size: 1.5em; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\';\">Shokti+ Sweetened Yogurt- Plain is good for health</h1>', '', '', '', 0.0000, 0.0000, 0.0000),
(26, '3002', ' Milk Vita Liquid Milk 1ltr', '<p><span style=\"color: rgba(0, 0, 0, 0.65); font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\';\">You can make delicious sweet dishes by using Milk Vita Liquid Milk 1lt.</span></p>', '-milk-vita-liquid-milk-1ltr', 0, 0, 1, NULL, 80.0000, NULL, NULL, NULL, NULL, 1000.0000, 1, 'Red', 6, 'S', '2021-02-25 04:33:35', 'en', 'default', 26, '2021-02-25 04:33:35', NULL, 1, 80.0000, 80.0000, '<p><span style=\"color: rgba(0, 0, 0, 0.65); font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\';\">Milk Vita Liquid Milk 1ltr is pasteurize milk</span></p>', '', '', '', 0.0000, 0.0000, 0.0000),
(27, '3003', 'Aarong Dairy Shredded Mozzarella Cheese 200 g', '<h1 class=\"title\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0.5em; color: rgba(0, 0, 0, 0.85); font-weight: 500; font-size: 1.5em; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\';\">Aarong Dairy Shredded Mozzarella Cheese 200 g good for health</h1>', 'aarong-dairy-shredded-mozzarella-cheese-200-g', 0, 0, 1, NULL, 220.0000, NULL, NULL, NULL, NULL, 200.0000, 1, 'Red', 6, 'S', '2021-02-25 04:37:26', 'en', 'default', 27, '2021-02-25 04:37:26', NULL, 1, 220.0000, 220.0000, '<h1 class=\"title\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0.5em; color: rgba(0, 0, 0, 0.85); font-weight: 500; font-size: 1.5em; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\';\">Aarong Dairy Shredded Mozzarella Cheese 200 g good for health</h1>', '', '', '', 0.0000, 0.0000, 0.0000),
(28, '4000', ' Coffee Lovers', '<p>For&nbsp;<span style=\"color: rgba(0, 0, 0, 0.85); font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; font-size: 21px;\">Coffee Lovers</span></p>', '-coffee-lovers', 0, 0, 1, NULL, 450.0000, NULL, NULL, NULL, NULL, 500.0000, 1, 'Red', 6, 'S', '2021-02-25 04:39:24', 'en', 'default', 28, '2021-02-25 04:39:24', NULL, 1, 450.0000, 450.0000, '<p>For&nbsp;<span style=\"color: rgba(0, 0, 0, 0.85); font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; font-size: 21px;\">Coffee Lovers</span></p>', '', '', '', 0.0000, 0.0000, 0.0000),
(29, '4001', 'Mirinda Orange Pet 1 Ltr', '<h1 class=\"title\" style=\"font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; box-sizing: border-box; margin-top: 0px; margin-bottom: 0.5em; color: rgba(0, 0, 0, 0.85); font-weight: 500; font-size: 1.5em;\">Mirinda Orange Pet 1 Ltr , so good</h1>', 'mirinda-orange-pet-1-ltr', 0, 0, 1, NULL, 70.0000, NULL, NULL, NULL, NULL, 1000.0000, 1, 'Red', 6, 'S', '2021-02-25 04:41:02', 'en', 'default', 29, '2021-02-25 04:41:02', NULL, 1, 70.0000, 70.0000, '<div class=\"header\" style=\"box-sizing: border-box; color: rgba(0, 0, 0, 0.65); font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\';\">\r\n<div class=\"title-container\" style=\"box-sizing: border-box;\">\r\n<h1 class=\"title\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0.5em; color: rgba(0, 0, 0, 0.85); font-weight: 500; font-size: 1.5em;\">Mirinda Orange Pet 1 Ltr , so good</h1>\r\n<p>&nbsp;</p>\r\n</div>\r\n</div>', '', '', '', 0.0000, 0.0000, 0.0000),
(30, '4002', 'FANTA GRAPE CAN 320/330ML', '<h1 class=\"title\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0.5em; color: rgba(0, 0, 0, 0.85); font-weight: 500; font-size: 1.5em; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\';\">FANTA GRAPE CAN 320/330ML, sooo good</h1>', 'fanta-grape-can-320330ml', 0, 0, 1, NULL, 150.0000, NULL, NULL, NULL, NULL, 350.0000, 1, 'Red', 6, 'S', '2021-02-25 04:42:42', 'en', 'default', 30, '2021-02-25 04:42:42', NULL, 1, 150.0000, 150.0000, '<h1 class=\"title\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0.5em; color: rgba(0, 0, 0, 0.85); font-weight: 500; font-size: 1.5em; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\';\">FANTA GRAPE CAN 320/330ML, sooo good</h1>', '', '', '', 0.0000, 0.0000, 0.0000),
(31, '4003', 'Nescafe Original Coffee Jar', '<p><span style=\"color: rgba(0, 0, 0, 0.65); font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\';\">It made using specially selected and carefully roasted beans to create a captivating \'coffee experience\'.</span></p>', 'nescafe-original-coffee-jar', 0, 0, 1, NULL, 520.0000, NULL, NULL, NULL, NULL, 210.0000, 1, 'Red', 6, 'S', '2021-02-25 04:44:29', 'en', 'default', 31, '2021-02-25 04:44:29', NULL, 1, 520.0000, 520.0000, '<p><span style=\"color: rgba(0, 0, 0, 0.65); font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\';\">Nescafe Original Coffee a Frothy instant coffee right at home.</span></p>', '', '', '', 0.0000, 0.0000, 0.0000),
(32, '4004', ' Sharbat Rooh Afza (750ml)', '<p>&nbsp;</p>\r\n<p><span style=\"color: rgba(0, 0, 0, 0.85); font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; font-size: 21px;\">Sharbat Rooh Afza (750ml), soo good</span></p>', '-sharbat-rooh-afza-750ml', 0, 0, 1, NULL, 250.0000, NULL, NULL, NULL, NULL, 750.0000, 1, 'Red', 6, 'S', '2021-02-25 04:48:22', 'en', 'default', 32, '2021-02-25 04:48:22', NULL, 1, 250.0000, 250.0000, '<p>&nbsp;</p>\r\n<p><span style=\"color: rgba(0, 0, 0, 0.85); font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; font-size: 21px;\">Sharbat Rooh Afza (750ml), soo good</span></p>', '', '', '', 0.0000, 0.0000, 0.0000),
(33, '4005', ' Schweppes Dry Ginger Ale Can', '<p>&nbsp;</p>\r\n<p><span style=\"color: rgba(0, 0, 0, 0.85); font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; font-size: 21px;\">Schweppes Dry Ginger Ale Can, soo good</span></p>', '-schweppes-dry-ginger-ale-can', 0, 0, 1, NULL, 200.0000, NULL, NULL, NULL, NULL, 330.0000, 1, 'Red', 6, 'S', '2021-02-25 04:51:32', 'en', 'default', 33, '2021-02-25 04:51:32', NULL, 1, 200.0000, 200.0000, '<p>&nbsp;</p>\r\n<p><span style=\"color: rgba(0, 0, 0, 0.85); font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; font-size: 21px;\">Schweppes Dry Ginger Ale Can, soo good</span></p>', '', '', '', 0.0000, 0.0000, 0.0000),
(34, '5000', 'Organikare Uptan Face Pack (50g)', '<ul style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1em; color: rgba(0, 0, 0, 0.65); font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\';\">\r\n<li dir=\"ltr\" style=\"box-sizing: border-box;\">\r\n<p dir=\"ltr\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1em;\" role=\"presentation\"><span style=\"box-sizing: border-box;\">Makes skin fresh, lively &amp; radiant.</span></p>\r\n</li>\r\n<li dir=\"ltr\" style=\"box-sizing: border-box;\">\r\n<p dir=\"ltr\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1em;\" role=\"presentation\"><span style=\"box-sizing: border-box;\">Ingredients: Chandan, Tulsi, Neem, Rose, Lentils, Jasthimadhu.</span></p>\r\n</li>\r\n<li dir=\"ltr\" style=\"box-sizing: border-box;\">\r\n<p dir=\"ltr\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1em;\" role=\"presentation\"><span style=\"box-sizing: border-box;\">For dry skin: Instead of water, apply it with milk or olive</span></p>\r\n</li>\r\n</ul>', 'organikare-uptan-face-pack-50g', 0, 0, 1, NULL, 300.0000, NULL, NULL, NULL, NULL, 100.0000, 1, 'Red', 6, 'S', '2021-02-25 04:55:02', 'en', 'default', 34, '2021-02-25 04:55:02', NULL, 1, 300.0000, 300.0000, '<div class=\"title-container\" style=\"box-sizing: border-box; color: rgba(0, 0, 0, 0.65); font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\';\">\r\n<ul style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1em; color: rgba(0, 0, 0, 0.65); font-size: 14px;\">\r\n<li dir=\"ltr\" style=\"box-sizing: border-box;\">\r\n<p dir=\"ltr\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1em;\" role=\"presentation\"><span style=\"box-sizing: border-box;\">Banishes dirt.</span></p>\r\n</li>\r\n<li dir=\"ltr\" style=\"box-sizing: border-box;\">\r\n<p dir=\"ltr\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1em;\" role=\"presentation\"><span style=\"box-sizing: border-box;\">Removes excess oil, acne, and unwanted spots of skin.</span></p>\r\n</li>\r\n<li dir=\"ltr\" style=\"box-sizing: border-box;\">\r\n<p dir=\"ltr\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 1em;\" role=\"presentation\"><span style=\"box-sizing: border-box;\">Prevents tightening of the pores.</span></p>\r\n</li>\r\n</ul>\r\n</div>', '', '', '', 0.0000, 0.0000, 0.0000),
(35, '5001', 'HIMALAYA VOLUME&BOUNCE AD SHAMPOO 400ML', '<table style=\"box-sizing: border-box; border-collapse: collapse; color: rgba(0, 0, 0, 0.65); font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\';\" border=\"0\" width=\"341\" cellspacing=\"0\" cellpadding=\"0\"><colgroup style=\"box-sizing: border-box;\"><col style=\"box-sizing: border-box;\" width=\"341\" /></colgroup>\r\n<tbody style=\"box-sizing: border-box;\">\r\n<tr style=\"box-sizing: border-box;\">\r\n<td class=\"xl68\" style=\"box-sizing: border-box;\" width=\"341\" height=\"20\">HIMALAYA VOLUME&amp;BOUNCE AD SHAMPOO 400ML</td>\r\n</tr>\r\n</tbody>\r\n</table>', 'himalaya-volumebounce-ad-shampoo-400ml', 0, 0, 1, NULL, 399.0000, NULL, NULL, NULL, NULL, 300.0000, 1, 'Red', 6, 'S', '2021-02-25 04:57:11', 'en', 'default', 35, '2021-02-25 04:57:11', NULL, 1, 399.0000, 399.0000, '<table style=\"box-sizing: border-box; border-collapse: collapse; color: rgba(0, 0, 0, 0.65); font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\';\" border=\"0\" width=\"341\" cellspacing=\"0\" cellpadding=\"0\"><colgroup style=\"box-sizing: border-box;\"><col style=\"box-sizing: border-box;\" width=\"341\" /></colgroup>\r\n<tbody style=\"box-sizing: border-box;\">\r\n<tr style=\"box-sizing: border-box;\">\r\n<td class=\"xl68\" style=\"box-sizing: border-box;\" width=\"341\" height=\"20\">HIMALAYA VOLUME&amp;BOUNCE AD SHAMPOO 400ML</td>\r\n</tr>\r\n</tbody>\r\n</table>', '', '', '', 0.0000, 0.0000, 0.0000),
(36, '5002', ' HIMALAYA REVITALIZING NIGHT CREAM 50GM', '<p><span style=\"color: rgba(0, 0, 0, 0.65); font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\';\">HIMALAYA REVITALIZING NIGHT CREAM 50GM</span></p>', '-himalaya-revitalizing-night-cream-50gm', 0, 0, 1, NULL, 225.0000, NULL, NULL, NULL, NULL, 50.0000, 1, 'Red', 6, 'S', '2021-02-25 04:58:51', 'en', 'default', 36, '2021-02-25 04:58:51', NULL, 1, 225.0000, 225.0000, '<p><span style=\"color: rgba(0, 0, 0, 0.65); font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\';\">HIMALAYA REVITALIZING NIGHT CREAM 50GM</span></p>', '', '', '', 0.0000, 0.0000, 0.0000),
(37, '5003', 'Crème 21 Nor Skin B Lotion Pro Vit B5 250m', '<p><span style=\"color: rgba(0, 0, 0, 0.65); font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\';\">Cr&egrave;me 21 Nor Skin B Lotion Pro Vit B5 250m</span></p>', 'creme-21-nor-skin-b-lotion-pro-vit-b5-250m', 0, 0, 1, NULL, 450.0000, NULL, NULL, NULL, NULL, 250.0000, 1, 'Red', 6, 'S', '2021-02-25 05:00:49', 'en', 'default', 37, '2021-02-25 05:00:49', NULL, 1, 450.0000, 450.0000, '<p><span style=\"color: rgba(0, 0, 0, 0.65); font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\';\">Cr&egrave;me 21 Nor Skin B Lotion Pro Vit B5 250m</span></p>', '', '', '', 0.0000, 0.0000, 0.0000),
(38, '5004', 'H&S AD COOL MENTHOL SHAMPOO 1000ML', '<p><span style=\"color: rgba(0, 0, 0, 0.65); font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\';\">H&amp;S AD COOL MENTHOL SHAMPOO 1000ML</span></p>', 'hs-ad-cool-menthol-shampoo-1000ml', 0, 0, 1, NULL, 1300.0000, NULL, NULL, NULL, NULL, 1000.0000, 1, 'Red', 6, 'S', '2021-02-25 05:02:38', 'en', 'default', 38, '2021-02-25 05:02:38', NULL, 1, 1300.0000, 1300.0000, '<p><span style=\"color: rgba(0, 0, 0, 0.65); font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\';\">H&amp;S AD COOL MENTHOL SHAMPOO 1000ML</span></p>', '', '', '', 0.0000, 0.0000, 0.0000),
(39, '5005', 'ORAL B BLACK CAVITY DEF 123 SOFT T BRUSH 4P', '<h1 class=\"title\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0.5em; color: rgba(0, 0, 0, 0.85); font-weight: 500; font-size: 1.5em; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\';\">ORAL B BLACK CAVITY DEF 123 SOFT T BRUSH 4P</h1>', 'oral-b-black-cavity-def-123-soft-t-brush-4p', 0, 0, 1, NULL, 165.0000, NULL, NULL, NULL, NULL, 25.0000, 1, 'Red', 6, 'S', '2021-02-25 05:04:55', 'en', 'default', 39, '2021-02-25 05:04:55', NULL, 1, 165.0000, 165.0000, '<h1 class=\"title\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0.5em; color: rgba(0, 0, 0, 0.85); font-weight: 500; font-size: 1.5em; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\';\">ORAL B BLACK CAVITY DEF 123 SOFT T BRUSH 4P</h1>', '', '', '', 0.0000, 0.0000, 0.0000),
(40, '6000', 'GOLDMARK CHOCOLATE CHIPS C BIS 60GM B2G1', '<table style=\"box-sizing: border-box; border-collapse: collapse; color: rgba(0, 0, 0, 0.65); font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\';\" border=\"0\" width=\"393\" cellspacing=\"0\" cellpadding=\"0\"><colgroup style=\"box-sizing: border-box;\"><col style=\"box-sizing: border-box;\" width=\"393\" /></colgroup>\r\n<tbody style=\"box-sizing: border-box;\">\r\n<tr style=\"box-sizing: border-box;\">\r\n<td class=\"xl66\" style=\"box-sizing: border-box;\" width=\"393\" height=\"82\">GOLDMARK CHOCOLATE CHIPS C BIS 60GM&nbsp;<span class=\"font5\" style=\"box-sizing: border-box;\">B2G1 Free</span></td>\r\n</tr>\r\n</tbody>\r\n</table>', 'goldmark-chocolate-chips-c-bis-60gm-b2g1', 0, 0, 1, NULL, 50.0000, NULL, NULL, NULL, NULL, 100.0000, 1, 'Red', 6, 'S', '2021-02-25 05:07:05', 'en', 'default', 40, '2021-02-25 05:07:05', NULL, 1, 50.0000, 50.0000, '<table style=\"box-sizing: border-box; border-collapse: collapse; color: rgba(0, 0, 0, 0.65); font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\';\" border=\"0\" width=\"393\" cellspacing=\"0\" cellpadding=\"0\"><colgroup style=\"box-sizing: border-box;\"><col style=\"box-sizing: border-box;\" width=\"393\" /></colgroup>\r\n<tbody style=\"box-sizing: border-box;\">\r\n<tr style=\"box-sizing: border-box;\">\r\n<td class=\"xl66\" style=\"box-sizing: border-box;\" width=\"393\" height=\"82\">GOLDMARK CHOCOLATE CHIPS C BIS 60GM&nbsp;<span class=\"font5\" style=\"box-sizing: border-box;\">B2G1 Free</span></td>\r\n</tr>\r\n</tbody>\r\n</table>', '', '', '', 0.0000, 0.0000, 0.0000),
(41, '6001', 'MUNCHYS FUNMIX ASSOR BISCUITS TIN 700GM', '<h1 class=\"title\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0.5em; color: rgba(0, 0, 0, 0.85); font-weight: 500; font-size: 1.5em; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\';\">MUNCHYS FUNMIX ASSOR BISCUITS TIN 700GM</h1>', 'munchys-funmix-assor-biscuits-tin-700gm', 0, 0, 1, NULL, 1230.0000, NULL, NULL, NULL, NULL, 1500.0000, 1, 'Red', 6, 'S', '2021-02-25 05:09:50', 'en', 'default', 41, '2021-02-25 05:09:50', NULL, 1, 1230.0000, 1230.0000, '<h1 class=\"title\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0.5em; color: rgba(0, 0, 0, 0.85); font-weight: 500; font-size: 1.5em; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\';\">MUNCHYS FUNMIX ASSOR BISCUITS TIN 700GM</h1>', '', '', '', 0.0000, 0.0000, 0.0000),
(42, '6002', 'DR.OETKER NONA PANCAKE ORIGINAL BOX 400G', '<h1 class=\"title\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0.5em; color: rgba(0, 0, 0, 0.85); font-weight: 500; font-size: 1.5em; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\';\">DR.OETKER NONA PANCAKE ORIGINAL BOX 400G</h1>', 'droetker-nona-pancake-original-box-400g', 0, 0, 1, NULL, 250.0000, NULL, NULL, NULL, NULL, 300.0000, 1, 'Red', 6, 'S', '2021-02-25 05:11:33', 'en', 'default', 42, '2021-02-25 05:11:33', NULL, 1, 250.0000, 250.0000, '<h1 class=\"title\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0.5em; color: rgba(0, 0, 0, 0.85); font-weight: 500; font-size: 1.5em; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\';\">DR.OETKER NONA PANCAKE ORIGINAL BOX 400G</h1>', '', '', '', 0.0000, 0.0000, 0.0000),
(43, '6003', 'CBL MUNCHEE CHOCO MO WHITE CHOC C BIS 100G', '<h1 class=\"title\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0.5em; color: rgba(0, 0, 0, 0.85); font-weight: 500; font-size: 1.5em; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\';\">CBL MUNCHEE CHOCO MO WHITE CHOC C BIS 100G</h1>', 'cbl-munchee-choco-mo-white-choc-c-bis-100g', 0, 0, 1, NULL, 150.0000, NULL, NULL, NULL, NULL, 350.0000, 1, 'Red', 6, 'S', '2021-02-25 05:17:52', 'en', 'default', 43, '2021-02-25 05:17:52', NULL, 1, 150.0000, 150.0000, '<h1 class=\"title\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0.5em; color: rgba(0, 0, 0, 0.85); font-weight: 500; font-size: 1.5em; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\';\">CBL MUNCHEE CHOCO MO WHITE CHOC C BIS 100G</h1>', '', '', '', 0.0000, 0.0000, 0.0000),
(44, '6004', 'Danish Festival Assort Biscuits & Crackerss Tin 750g', '<h1 class=\"title\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0.5em; color: rgba(0, 0, 0, 0.85); font-weight: 500; font-size: 1.5em; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\';\">Danish Festival Assort Biscuits &amp; Crackerss Tin 750g</h1>', 'danish-festival-assort-biscuits-crackerss-tin-750g', 0, 0, 1, NULL, 350.0000, NULL, NULL, NULL, NULL, 1000.0000, 1, 'Red', 6, 'S', '2021-02-25 05:19:09', 'en', 'default', 44, '2021-02-25 05:19:09', NULL, 1, 350.0000, 350.0000, '<h1 class=\"title\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0.5em; color: rgba(0, 0, 0, 0.85); font-weight: 500; font-size: 1.5em; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\';\">Danish Festival Assort Biscuits &amp; Crackerss Tin 750g</h1>', '', '', '', 0.0000, 0.0000, 0.0000),
(45, '7000', 'Dove Baby Lotion Sensitive Moisture 200ml', '<h1 class=\"title\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0.5em; color: rgba(0, 0, 0, 0.85); font-weight: 500; font-size: 1.5em; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\';\">Dove Baby Lotion Sensitive Moisture 200ml</h1>', 'dove-baby-lotion-sensitive-moisture-200ml', 0, 0, 1, NULL, 525.0000, NULL, NULL, NULL, NULL, 350.0000, 1, 'Red', 6, 'S', '2021-02-25 05:35:50', 'en', 'default', 45, '2021-02-25 05:35:50', NULL, 1, 525.0000, 525.0000, '<h1 class=\"title\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0.5em; color: rgba(0, 0, 0, 0.85); font-weight: 500; font-size: 1.5em; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\';\">Dove Baby Lotion Sensitive Moisture 200ml</h1>', '', '', '', 0.0000, 0.0000, 0.0000),
(46, '7001', 'HUGGIES DRY DIAPERS XL 11-16KG 48PCS', '<div class=\"title-container\" style=\"box-sizing: border-box; color: rgba(0, 0, 0, 0.65); font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\';\">\r\n<h1 class=\"title\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0.5em; color: rgba(0, 0, 0, 0.85); font-weight: 500; font-size: 1.5em;\">HUGGIES DRY DIAPERS XL 11-16KG 48PCS</h1>\r\n<p>&nbsp;</p>\r\n</div>', 'huggies-dry-diapers-xl-11-16kg-48pcs', 0, 0, 1, NULL, 1536.0000, NULL, NULL, NULL, NULL, 1000.0000, 1, 'Red', 6, 'S', '2021-02-25 05:37:37', 'en', 'default', 46, '2021-02-25 05:37:37', NULL, 1, 1536.0000, 1536.0000, '<div class=\"title-container\" style=\"box-sizing: border-box; color: rgba(0, 0, 0, 0.65); font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\';\">\r\n<h1 class=\"title\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0.5em; color: rgba(0, 0, 0, 0.85); font-weight: 500; font-size: 1.5em;\">HUGGIES DRY DIAPERS XL 11-16KG 48PCS</h1>\r\n<p>&nbsp;</p>\r\n</div>', '', '', '', 0.0000, 0.0000, 0.0000);
INSERT INTO `bgwyproduct_flat` (`id`, `sku`, `name`, `description`, `url_key`, `new`, `featured`, `status`, `thumbnail`, `price`, `cost`, `special_price`, `special_price_from`, `special_price_to`, `weight`, `color`, `color_label`, `size`, `size_label`, `created_at`, `locale`, `channel`, `product_id`, `updated_at`, `parent_id`, `visible_individually`, `min_price`, `max_price`, `short_description`, `meta_title`, `meta_keywords`, `meta_description`, `width`, `height`, `depth`) VALUES
(47, '7002', 'HUGGIES DRY PANTS MEDIUM 6-12KG 60PCS+4C', '<h1 class=\"title\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0.5em; color: rgba(0, 0, 0, 0.85); font-weight: 500; font-size: 1.5em; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\';\">HUGGIES DRY PANTS MEDIUM 6-12KG 60PCS+4C</h1>', 'huggies-dry-pants-medium-6-12kg-60pcs4c', 0, 0, 1, NULL, 1536.0000, NULL, NULL, NULL, NULL, 1000.0000, 1, 'Red', 6, 'S', '2021-02-25 05:39:15', 'en', 'default', 47, '2021-02-25 05:39:15', NULL, 1, 1536.0000, 1536.0000, '<h1 class=\"title\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0.5em; color: rgba(0, 0, 0, 0.85); font-weight: 500; font-size: 1.5em; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\';\">HUGGIES DRY PANTS MEDIUM 6-12KG 60PCS+4C</h1>', '', '', '', 0.0000, 0.0000, 0.0000),
(48, '7003', 'PAMPERS BABY DRY PANTS XL 12-17KG 36PCS', '<div class=\"title-container\" style=\"box-sizing: border-box; color: rgba(0, 0, 0, 0.65); font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\';\">\r\n<h1 class=\"title\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0.5em; color: rgba(0, 0, 0, 0.85); font-weight: 500; font-size: 1.5em;\">PAMPERS BABY DRY PANTS XL 12-17KG 36PCS</h1>\r\n<p>&nbsp;</p>\r\n</div>', 'pampers-baby-dry-pants-xl-12-17kg-36pcs', 0, 0, 1, NULL, 1380.0000, NULL, NULL, NULL, NULL, 1000.0000, 1, 'Red', 6, 'S', '2021-02-25 05:41:12', 'en', 'default', 48, '2021-02-25 05:41:12', NULL, 0, 1380.0000, 1380.0000, '<div class=\"title-container\" style=\"box-sizing: border-box; color: rgba(0, 0, 0, 0.65); font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\';\">\r\n<h1 class=\"title\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0.5em; color: rgba(0, 0, 0, 0.85); font-weight: 500; font-size: 1.5em;\">PAMPERS BABY DRY PANTS XL 12-17KG 36PCS</h1>\r\n<p>&nbsp;</p>\r\n</div>', '', '', '', 0.0000, 0.0000, 0.0000),
(49, '7004', 'NEO CARE BABY DIAPER LARGE 7-18KG 50PCS', '<div class=\"header\" style=\"box-sizing: border-box; color: rgba(0, 0, 0, 0.65); font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\';\">\r\n<div class=\"title-container\" style=\"box-sizing: border-box;\">\r\n<h1 class=\"title\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0.5em; color: rgba(0, 0, 0, 0.85); font-weight: 500; font-size: 1.5em;\">NEO CARE BABY DIAPER LARGE 7-18KG 50PCS</h1>\r\n<p>&nbsp;</p>\r\n</div>\r\n</div>', 'neo-care-baby-diaper-large-7-18kg-50pcs', 0, 0, 1, NULL, 1320.0000, NULL, NULL, NULL, NULL, 1000.0000, 1, 'Red', 6, 'S', '2021-02-25 05:42:51', 'en', 'default', 49, '2021-02-25 05:42:51', NULL, 1, 1320.0000, 1320.0000, '<div class=\"header\" style=\"box-sizing: border-box; color: rgba(0, 0, 0, 0.65); font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\';\">\r\n<div class=\"title-container\" style=\"box-sizing: border-box;\">\r\n<h1 class=\"title\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0.5em; color: rgba(0, 0, 0, 0.85); font-weight: 500; font-size: 1.5em;\">NEO CARE BABY DIAPER LARGE 7-18KG 50PCS</h1>\r\n<p>&nbsp;</p>\r\n</div>\r\n</div>', '', '', '', 0.0000, 0.0000, 0.0000),
(50, '7005', 'KODOMO TOOTH PASTE ORANGE 40/45g', '<div class=\"header\" style=\"box-sizing: border-box; color: rgba(0, 0, 0, 0.65); font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\';\">\r\n<div class=\"title-container\" style=\"box-sizing: border-box;\">\r\n<h1 class=\"title\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0.5em; color: rgba(0, 0, 0, 0.85); font-weight: 500; font-size: 1.5em;\">KODOMO TOOTH PASTE ORANGE 40/45g</h1>\r\n<p>&nbsp;</p>\r\n</div>\r\n</div>', 'kodomo-tooth-paste-orange-4045g', 0, 0, 1, NULL, 150.0000, NULL, NULL, NULL, NULL, 150.0000, 1, 'Red', 6, 'S', '2021-02-25 05:44:50', 'en', 'default', 50, '2021-02-25 05:44:50', NULL, 1, 150.0000, 150.0000, '<div class=\"header\" style=\"box-sizing: border-box; color: rgba(0, 0, 0, 0.65); font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\';\">\r\n<div class=\"title-container\" style=\"box-sizing: border-box;\">\r\n<h1 class=\"title\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0.5em; color: rgba(0, 0, 0, 0.85); font-weight: 500; font-size: 1.5em;\">KODOMO TOOTH PASTE ORANGE 40/45g</h1>\r\n<p>&nbsp;</p>\r\n</div>\r\n</div>', '', '', '', 0.0000, 0.0000, 0.0000),
(51, '8000', 'GOLDEN HARVEST MINI SINGARA 300GM', '<div class=\"header\" style=\"box-sizing: border-box; color: rgba(0, 0, 0, 0.65); font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\';\">\r\n<div class=\"title-container\" style=\"box-sizing: border-box;\">\r\n<h1 class=\"title\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0.5em; color: rgba(0, 0, 0, 0.85); font-weight: 500; font-size: 1.5em;\">GOLDEN HARVEST MINI SINGARA 300GM</h1>\r\n<p>&nbsp;</p>\r\n</div>\r\n</div>', 'golden-harvest-mini-singara-300gm', 0, 0, 1, NULL, 130.0000, NULL, NULL, NULL, NULL, 250.0000, 1, 'Red', 6, 'S', '2021-02-25 05:49:00', 'en', 'default', 51, '2021-02-25 05:49:00', NULL, 1, 130.0000, 130.0000, '<div class=\"header\" style=\"box-sizing: border-box; color: rgba(0, 0, 0, 0.65); font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\';\">\r\n<div class=\"title-container\" style=\"box-sizing: border-box;\">\r\n<h1 class=\"title\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0.5em; color: rgba(0, 0, 0, 0.85); font-weight: 500; font-size: 1.5em;\">GOLDEN HARVEST MINI SINGARA 300GM</h1>\r\n<p>&nbsp;</p>\r\n</div>\r\n</div>', '', '', '', 0.0000, 0.0000, 0.0000),
(52, '8001', 'GOLDEN HARVEST VEGETABLE SAMOSA 400G', '<div class=\"header\" style=\"box-sizing: border-box; color: rgba(0, 0, 0, 0.65); font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\';\">\r\n<div class=\"title-container\" style=\"box-sizing: border-box;\">\r\n<h1 class=\"title\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0.5em; color: rgba(0, 0, 0, 0.85); font-weight: 500; font-size: 1.5em;\">GOLDEN HARVEST VEGETABLE SAMOSA 400G</h1>\r\n<p>&nbsp;</p>\r\n</div>\r\n</div>', 'golden-harvest-vegetable-samosa-400g', 0, 0, 1, NULL, 200.0000, NULL, NULL, NULL, NULL, 300.0000, 1, 'Red', 6, 'S', '2021-02-25 05:51:59', 'en', 'default', 52, '2021-02-25 05:51:59', NULL, 1, 200.0000, 200.0000, '<div class=\"header\" style=\"box-sizing: border-box; color: rgba(0, 0, 0, 0.65); font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\';\">\r\n<div class=\"title-container\" style=\"box-sizing: border-box;\">\r\n<h1 class=\"title\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0.5em; color: rgba(0, 0, 0, 0.85); font-weight: 500; font-size: 1.5em;\">GOLDEN HARVEST VEGETABLE SAMOSA 400G</h1>\r\n<p>&nbsp;</p>\r\n</div>\r\n</div>', '', '', '', 0.0000, 0.0000, 0.0000),
(53, '8002', 'GOLDEN HARVEST BEEF M SPRING ROLL15PC', '<h1 class=\"title\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0.5em; color: rgba(0, 0, 0, 0.85); font-weight: 500; font-size: 1.5em; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\';\">GOLDEN HARVEST BEEF M SPRING ROLL15PC</h1>', 'golden-harvest-beef-m-spring-roll15pc', 0, 0, 1, NULL, 250.0000, NULL, NULL, NULL, NULL, 250.0000, 1, 'Red', 6, 'S', '2021-02-25 05:54:59', 'en', 'default', 53, '2021-02-25 05:54:59', NULL, 1, 250.0000, 250.0000, '<h1 class=\"title\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0.5em; color: rgba(0, 0, 0, 0.85); font-weight: 500; font-size: 1.5em; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\';\">GOLDEN HARVEST BEEF M SPRING ROLL15PC</h1>', '', '', '', 0.0000, 0.0000, 0.0000),
(54, '8003', 'GOLDEN HARVEST PARATA MEG FAMILY1600GX2P', '<h1 class=\"title\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0.5em; color: rgba(0, 0, 0, 0.85); font-weight: 500; font-size: 1.5em; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\';\">GOLDEN HARVEST PARATA MEG FAMILY1600GX2P</h1>', 'golden-harvest-parata-meg-family1600gx2p', 0, 0, 1, NULL, 300.0000, NULL, NULL, NULL, NULL, 500.0000, 1, 'Red', 6, 'S', '2021-02-25 05:59:11', 'en', 'default', 54, '2021-02-25 05:59:11', NULL, 1, 300.0000, 300.0000, '<h1 class=\"title\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0.5em; color: rgba(0, 0, 0, 0.85); font-weight: 500; font-size: 1.5em; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\';\">GOLDEN HARVEST PARATA MEG FAMILY1600GX2P</h1>', '', '', '', 0.0000, 0.0000, 0.0000),
(55, '9000', 'Rok Concent Floor Cleaner Jesmin 900ml', '<div class=\"title-container\" style=\"box-sizing: border-box; color: rgba(0, 0, 0, 0.65); font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\';\">\r\n<h1 class=\"title\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0.5em; color: rgba(0, 0, 0, 0.85); font-weight: 500; font-size: 1.5em;\">Rok Concent Floor Cleaner Jesmin 900ml</h1>\r\n<p>&nbsp;</p>\r\n</div>', 'rok-concent-floor-cleaner-jesmin-900ml', 0, 0, 1, NULL, 250.0000, NULL, NULL, NULL, NULL, 500.0000, 1, 'Red', 6, 'S', '2021-02-25 06:03:16', 'en', 'default', 55, '2021-02-25 06:03:16', NULL, 1, 250.0000, 250.0000, '<div class=\"title-container\" style=\"box-sizing: border-box; color: rgba(0, 0, 0, 0.65); font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\';\">\r\n<h1 class=\"title\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0.5em; color: rgba(0, 0, 0, 0.85); font-weight: 500; font-size: 1.5em;\">Rok Concent Floor Cleaner Jesmin 900ml</h1>\r\n<p>&nbsp;</p>\r\n</div>', '', '', '', 0.0000, 0.0000, 0.0000),
(56, '9001', 'Potato Seasonal (New) Bulk', '<h1 class=\"title\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0.5em; color: rgba(0, 0, 0, 0.85); font-weight: 500; font-size: 1.5em; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\';\">Potato Seasonal (New) Bulk</h1>', 'potato-seasonal-new-bulk', 0, 0, 1, NULL, 20.0000, NULL, NULL, NULL, NULL, 1000.0000, 1, 'Red', 6, 'S', '2021-02-25 06:14:34', 'en', 'default', 56, '2021-02-25 06:14:34', NULL, 1, 20.0000, 20.0000, '<h1 class=\"title\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0.5em; color: rgba(0, 0, 0, 0.85); font-weight: 500; font-size: 1.5em; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\';\">Potato Seasonal (New) Bulk</h1>', '', '', '', 0.0000, 0.0000, 0.0000),
(57, '9002', ' Lemon (Local)', '<p>&nbsp;</p>\r\n<p><span style=\"color: rgba(0, 0, 0, 0.85); font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; font-size: 21px;\">Lemon (Local)</span></p>', '-lemon-local', 0, 0, 1, NULL, 10.0000, NULL, NULL, NULL, NULL, 10.0000, 1, 'Red', 6, 'S', '2021-02-25 06:16:04', 'en', 'default', 57, '2021-02-25 06:16:04', NULL, 1, 10.0000, 10.0000, '<p>&nbsp;</p>\r\n<p><span style=\"color: rgba(0, 0, 0, 0.85); font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; font-size: 21px;\">Lemon (Local)</span></p>', '', '', '', 0.0000, 0.0000, 0.0000),
(58, '9003', ' Egg Chicken Red 1PCS', '<p>&nbsp;</p>\r\n<p><span style=\"color: rgba(0, 0, 0, 0.85); font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; font-size: 21px;\">Egg Chicken Red 1PCS</span></p>', '-egg-chicken-red-1pcs', 0, 0, 1, NULL, 9.0000, NULL, NULL, NULL, NULL, 30.0000, 1, 'Red', 6, 'S', '2021-02-25 06:18:21', 'en', 'default', 58, '2021-02-25 06:18:21', NULL, 1, 9.0000, 9.0000, '<p>&nbsp;</p>\r\n<p><span style=\"color: rgba(0, 0, 0, 0.85); font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; font-size: 21px;\">Egg Chicken Red 1PCS</span></p>', '', '', '', 0.0000, 0.0000, 0.0000),
(59, '9004', 'Onion Local Premium Bulk', '<h1 class=\"title\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0.5em; color: rgba(0, 0, 0, 0.85); font-weight: 500; font-size: 1.5em; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\';\">Onion Local Premium Bulk</h1>', 'onion-local-premium-bulk', 0, 0, 1, NULL, 40.0000, NULL, NULL, NULL, NULL, 1000.0000, 1, 'Red', 6, 'S', '2021-02-25 06:20:06', 'en', 'default', 59, '2021-02-25 06:20:06', NULL, 1, 40.0000, 40.0000, '<h1 class=\"title\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0.5em; color: rgba(0, 0, 0, 0.85); font-weight: 500; font-size: 1.5em; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\';\">Onion Local Premium Bulk</h1>', '', '', '', 0.0000, 0.0000, 0.0000),
(60, 'temporary-sku-557634', 'Copy of Onion Local Premium Bulk (c59eb5)', '<h1 class=\"title\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0.5em; color: rgba(0, 0, 0, 0.85); font-weight: 500; font-size: 1.5em; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\';\">Onion Local Premium Bulk</h1>', 'copy-of-onion-local-premium-bulk-c59eb5', 0, 0, 0, NULL, 40.0000, NULL, NULL, NULL, NULL, 1000.0000, 1, 'Red', 6, 'S', NULL, 'en', 'default', 60, NULL, NULL, 1, 40.0000, 40.0000, '<h1 class=\"title\" style=\"box-sizing: border-box; margin-top: 0px; margin-bottom: 0.5em; color: rgba(0, 0, 0, 0.85); font-weight: 500; font-size: 1.5em; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, \'Noto Sans\', sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\';\">Onion Local Premium Bulk</h1>', '', '', '', 0.0000, 0.0000, 0.0000);

-- --------------------------------------------------------

--
-- Table structure for table `bgwyproduct_grouped_products`
--

CREATE TABLE `bgwyproduct_grouped_products` (
  `id` int(10) UNSIGNED NOT NULL,
  `qty` int(11) NOT NULL DEFAULT 0,
  `sort_order` int(11) NOT NULL DEFAULT 0,
  `product_id` int(10) UNSIGNED NOT NULL,
  `associated_product_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `bgwyproduct_images`
--

CREATE TABLE `bgwyproduct_images` (
  `id` int(10) UNSIGNED NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `path` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `bgwyproduct_images`
--

INSERT INTO `bgwyproduct_images` (`id`, `type`, `path`, `product_id`) VALUES
(1, NULL, 'product/1/xayyTsvjPmQTR10RnzTsxfJO0yFWV38SV4oj3LU2.jpeg', 1),
(2, NULL, 'product/2/X91j3gvlaaLrTAkinq3io4VzKFzGVjsk0A10i5E0.jpeg', 2),
(3, NULL, 'product/3/tQ1w49XZavbdNLu12nbiS74VZo6qfTKsbT69jIpU.jpeg', 3),
(4, NULL, 'product/4/aio1ff0686gglu6KOOY2LrbYfe0f9Npy0tBQWWE9.jpeg', 4),
(5, NULL, 'product/5/883UbhKRB7g8qPeyxapWVR1ocfg6TWBuSd7hmNkC.jpeg', 5),
(6, NULL, 'product/6/7GOpbInWDqUAMxwzkhWVtwCSeRMsVeyARGOyezb6.jpeg', 6),
(7, NULL, 'product/7/x9QpsaEVOUvJEduTQ5yoyitFZqz4loRqLekLAXvO.jpeg', 7),
(8, NULL, 'product/8/1J9yBLp4slI424x1zDApd1LY7uCwrqFjMJ595btL.jpeg', 8),
(9, NULL, 'product/9/4rnUI0vSpahRk93uJOa1TJzoCj9Zzs8QSERN9ps1.jpeg', 9),
(10, NULL, 'product/10/3d58lXDBgP7PP5FcgFMkr0L0DcLHV7Ej9zzNbx19.jpeg', 10),
(11, NULL, 'product/11/qGt9VAdwSzn4AoERGPfZ0NiZzZwfBFhi3nzfKqwi.jpeg', 11),
(12, NULL, 'product/12/8kBKKpu2oHf9fiR3SCI1Bz0Ye3OWQ16bTOBgrZwu.jpeg', 12),
(13, NULL, 'product/13/zyeRwgnrW4dXkXwgFtgvLDWOPpGNvz33tCXJWoyI.jpeg', 13),
(14, NULL, 'product/14/74STEnCKtLEnta65TcQGGHBl5I1tXA6ntwGFKfM9.jpeg', 14),
(15, NULL, 'product/15/0raxGFXvcJ7xIKYqOOHk3CwnkLyHUHgcoqnpDjMb.jpeg', 15),
(16, NULL, 'product/16/B49Sp5nRbnhvY3Ak4aH99Xm26etKSm5uoqtPeh98.jpeg', 16),
(17, NULL, 'product/17/rxIyWWPe0bfyIqQdlRTbmZanhbVfve0axm0Vosik.jpeg', 17),
(18, NULL, 'product/18/rEmULZrDfLGBB3cnmZMVBYCgPXGbN4YTt4k3d1bg.jpeg', 18),
(19, NULL, 'product/19/ZPS3B9mBYC2tkxKxF4mRfZSjDTOf6dne9jCvySPl.jpeg', 19),
(20, NULL, 'product/20/raVA1KJjh8IEsXZ2scaH7mlyI0mbdlcgpua7jIn7.jpeg', 20),
(21, NULL, 'product/21/fw9gmFG0fDEDkzR8LSG9hZss1ETy9E8MTJUs0tja.jpeg', 21),
(22, NULL, 'product/22/dWhWTGnkDbDi5zLI7JJEIp2QyUiTY4SotMc7cHMd.jpeg', 22),
(23, NULL, 'product/23/qKFCEAJoIDPkVOZJirBHYzeXIQ33KmVf4LOmB9x3.jpeg', 23),
(24, NULL, 'product/24/Ct9GOjryTHNUx6eLn6BBaraY2W4tGwc5gInFeQrZ.jpeg', 24),
(25, NULL, 'product/25/T16aKt5UlFCJFxhaoZxbZKo9zuUE8IQZgQNtHTqM.jpeg', 25),
(26, NULL, 'product/26/qogbUzdv5HrKd7q2qrSCNgGAptqBJDQGQJuxgv69.jpeg', 26),
(27, NULL, 'product/27/YVPppdsfX8PsDtnjyHpS9qonZw5m7ztJfS7k0C9x.jpeg', 27),
(28, NULL, 'product/28/mJjxCXhEurllc6RCvdOAueZ4Fo7VmbVUl5yO1NPn.jpeg', 28),
(29, NULL, 'product/29/WkesDcPToP5B9e1hqapxTSMUzhhDZ0kDr0QdgH3F.jpeg', 29),
(30, NULL, 'product/30/DGHGfnTiyGbDKs5CVPrqa32g0ZXfavzp3pYShMRP.jpeg', 30),
(31, NULL, 'product/31/TFUVYe1ZfdMlBMmQbenAXlKchDnCODAbYpdDt8B8.jpeg', 31),
(32, NULL, 'product/32/UCpFYExdlC7wfzzWoFSsrspuTMpIbizlOgFJIrDi.jpeg', 32),
(33, NULL, 'product/33/it4TUuFPPLK7KisqARMcoTke6do4S36F8TqwqcDL.jpeg', 33),
(34, NULL, 'product/34/nLZnQEyHZdp0xV7XeLhjKYPDwnDAWzVeQRAMfxlc.jpeg', 34),
(35, NULL, 'product/35/pP5IMPr1dd6BDYnEk7e569dbZf8AJMRdg4XGPXu1.jpeg', 35),
(36, NULL, 'product/36/WwunABiwG7AXo4xVyuIA202muAoe2gjfxjjCLOUe.jpeg', 36),
(37, NULL, 'product/37/ZEAUNP4cEUbhPyzcJGOR8IEGqLMbqbpYIPwh8FPG.jpeg', 37),
(38, NULL, 'product/38/HMtPc7zgbBVa11CgColZ1IYORImnnsJwukGLJTWK.jpeg', 38),
(39, NULL, 'product/39/PUD9KtAGaihNk3QIHGF7wbw03UduJ7qfMIUIv51u.jpeg', 39),
(40, NULL, 'product/40/0f0rXltjnZIqUWIsF1dgqtuUPifVYvwXTZE1XQMj.jpeg', 40),
(41, NULL, 'product/41/FFq6BbXhSlmrKFzET2EfBxaMV1JMX9CzKFXl7JNt.jpeg', 41),
(42, NULL, 'product/42/LrbdlnF8h43BvLpmHL4AU8UQc6qBXQuOmjET90wJ.jpeg', 42),
(43, NULL, 'product/43/UPw1RjTfBdiIMDowSjoCxuVkIJYhqO4Vgw6sMTm5.jpeg', 43),
(44, NULL, 'product/44/r6RqvoH4gFgukueCh8Cgqmlk9YLsD8RJOlo5cLVU.jpeg', 44),
(45, NULL, 'product/45/mIUD86j85sROfhtl1RbOIcsyJL1IfcDV7kf7JYIB.jpeg', 45),
(46, NULL, 'product/46/6MtLt5ELdtHnqMRcVVYs6B7UNwD2iioBX4Ti2U27.jpeg', 46),
(47, NULL, 'product/47/dNa44QKH3W85wdLBNOV9KfLbdFqtSPH7e7cKteAS.jpeg', 47),
(48, NULL, 'product/48/eQBhDBT6AEO1KuoiZtJHU0enbS4u5MDjxcVsDCBj.jpeg', 48),
(49, NULL, 'product/49/TiEH8LrrZASGCPCwECGDYgjw5fmGunf4w14Wv6q6.jpeg', 49),
(50, NULL, 'product/50/nBMSh3hmRMABrnrnDzvfRecYurELGqaq9SJYKsNI.jpeg', 50),
(51, NULL, 'product/51/EIjEmHRaoWpFHyH0q1AIwoHA34C8kmxbBHbkfmui.jpeg', 51),
(52, NULL, 'product/52/kNTJ8ukRbwPQWw6jamIZyHaZCOPGsKGhS3SZwq0D.jpeg', 52),
(53, NULL, 'product/53/JKpPmyBpRnJQ4hLwhbGNgDT1yHNONa8fNN7xtO2h.jpeg', 53),
(54, NULL, 'product/54/fRFn05KnN5ZcaVaTQmqlaqDV7ZXzH8mkVy1t66ly.jpeg', 54),
(55, NULL, 'product/55/hIqjmfpzCwlAW3NMomDxnE1mJdnWjpkobZP5fep1.jpeg', 55),
(56, NULL, 'product/56/9HweiOjNHupr7bjGpiGEvHggolNDrzNmCV0IFtyK.jpeg', 56),
(57, NULL, 'product/57/S29CDsxmyuut3NZ05ut8iLw0jcEttSRGdSwtARty.jpeg', 57),
(58, NULL, 'product/58/9kP9a5BGhiWheK5gEKaZ7JovWShPw4nWV1fk8xmN.jpeg', 58),
(59, NULL, 'product/59/rfGqf5IYNbpssPgjP6UBJ0xCYlOccvocYXRDXauD.jpeg', 59),
(60, NULL, 'product/59/rfGqf5IYNbpssPgjP6UBJ0xCYlOccvocYXRDXauD.jpeg', 60);

-- --------------------------------------------------------

--
-- Table structure for table `bgwyproduct_inventories`
--

CREATE TABLE `bgwyproduct_inventories` (
  `id` int(10) UNSIGNED NOT NULL,
  `qty` int(11) NOT NULL DEFAULT 0,
  `product_id` int(10) UNSIGNED NOT NULL,
  `inventory_source_id` int(10) UNSIGNED NOT NULL,
  `vendor_id` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `bgwyproduct_inventories`
--

INSERT INTO `bgwyproduct_inventories` (`id`, `qty`, `product_id`, `inventory_source_id`, `vendor_id`) VALUES
(1, 100, 1, 1, 0),
(2, 100, 2, 1, 0),
(3, 100, 3, 1, 0),
(4, 99, 4, 1, 0),
(5, 100, 5, 1, 0),
(6, 99, 6, 1, 0),
(7, 100, 7, 1, 0),
(8, 100, 8, 1, 0),
(9, 99, 9, 1, 0),
(10, 99, 10, 1, 0),
(11, 100, 11, 1, 0),
(12, 100, 12, 1, 0),
(13, 50, 13, 1, 0),
(14, 50, 14, 1, 0),
(15, 100, 15, 1, 0),
(16, 200, 16, 1, 0),
(17, 20, 17, 1, 0),
(18, 15, 18, 1, 0),
(19, 8, 19, 1, 0),
(20, 20, 20, 1, 0),
(21, 20, 21, 1, 0),
(22, 150, 22, 1, 0),
(23, 200, 23, 1, 0),
(24, 100, 24, 1, 0),
(25, 100, 25, 1, 0),
(26, 100, 26, 1, 0),
(27, 50, 27, 1, 0),
(28, 25, 28, 1, 0),
(29, 500, 29, 1, 0),
(30, 50, 30, 1, 0),
(31, 20, 31, 1, 0),
(32, 50, 32, 1, 0),
(33, 100, 33, 1, 0),
(34, 20, 34, 1, 0),
(35, 100, 35, 1, 0),
(36, 50, 36, 1, 0),
(37, 50, 37, 1, 0),
(38, 100, 38, 1, 0),
(39, 150, 39, 1, 0),
(40, 100, 40, 1, 0),
(41, 20, 41, 1, 0),
(42, 50, 42, 1, 0),
(43, 200, 43, 1, 0),
(44, 50, 44, 1, 0),
(45, 25, 45, 1, 0),
(46, 100, 46, 1, 0),
(47, 100, 47, 1, 0),
(48, 50, 48, 1, 0),
(49, 50, 49, 1, 0),
(50, 150, 50, 1, 0),
(51, 50, 51, 1, 0),
(52, 50, 52, 1, 0),
(53, 20, 53, 1, 0),
(54, 50, 54, 1, 0),
(55, 50, 55, 1, 0),
(56, 100, 56, 1, 0),
(57, 1000, 57, 1, 0),
(58, 2000, 58, 1, 0),
(59, 1000, 59, 1, 0),
(60, 1000, 60, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `bgwyproduct_ordered_inventories`
--

CREATE TABLE `bgwyproduct_ordered_inventories` (
  `id` int(10) UNSIGNED NOT NULL,
  `qty` int(11) NOT NULL DEFAULT 0,
  `product_id` int(10) UNSIGNED NOT NULL,
  `channel_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `bgwyproduct_ordered_inventories`
--

INSERT INTO `bgwyproduct_ordered_inventories` (`id`, `qty`, `product_id`, `channel_id`) VALUES
(1, 1, 8, 1),
(2, 1, 10, 1),
(3, 1, 9, 1),
(4, 0, 4, 1),
(5, 0, 6, 1);

-- --------------------------------------------------------

--
-- Table structure for table `bgwyproduct_relations`
--

CREATE TABLE `bgwyproduct_relations` (
  `parent_id` int(10) UNSIGNED NOT NULL,
  `child_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `bgwyproduct_reviews`
--

CREATE TABLE `bgwyproduct_reviews` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rating` int(11) NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `bgwyproduct_super_attributes`
--

CREATE TABLE `bgwyproduct_super_attributes` (
  `product_id` int(10) UNSIGNED NOT NULL,
  `attribute_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `bgwyproduct_up_sells`
--

CREATE TABLE `bgwyproduct_up_sells` (
  `parent_id` int(10) UNSIGNED NOT NULL,
  `child_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `bgwyrefunds`
--

CREATE TABLE `bgwyrefunds` (
  `id` int(10) UNSIGNED NOT NULL,
  `increment_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_sent` tinyint(1) NOT NULL DEFAULT 0,
  `total_qty` int(11) DEFAULT NULL,
  `base_currency_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `channel_currency_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_currency_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `adjustment_refund` decimal(12,4) DEFAULT 0.0000,
  `base_adjustment_refund` decimal(12,4) DEFAULT 0.0000,
  `adjustment_fee` decimal(12,4) DEFAULT 0.0000,
  `base_adjustment_fee` decimal(12,4) DEFAULT 0.0000,
  `sub_total` decimal(12,4) DEFAULT 0.0000,
  `base_sub_total` decimal(12,4) DEFAULT 0.0000,
  `grand_total` decimal(12,4) DEFAULT 0.0000,
  `base_grand_total` decimal(12,4) DEFAULT 0.0000,
  `shipping_amount` decimal(12,4) DEFAULT 0.0000,
  `base_shipping_amount` decimal(12,4) DEFAULT 0.0000,
  `tax_amount` decimal(12,4) DEFAULT 0.0000,
  `base_tax_amount` decimal(12,4) DEFAULT 0.0000,
  `discount_percent` decimal(12,4) DEFAULT 0.0000,
  `discount_amount` decimal(12,4) DEFAULT 0.0000,
  `base_discount_amount` decimal(12,4) DEFAULT 0.0000,
  `order_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `bgwyrefund_items`
--

CREATE TABLE `bgwyrefund_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sku` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `price` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `base_price` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `total` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `base_total` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `tax_amount` decimal(12,4) DEFAULT 0.0000,
  `base_tax_amount` decimal(12,4) DEFAULT 0.0000,
  `discount_percent` decimal(12,4) DEFAULT 0.0000,
  `discount_amount` decimal(12,4) DEFAULT 0.0000,
  `base_discount_amount` decimal(12,4) DEFAULT 0.0000,
  `product_id` int(10) UNSIGNED DEFAULT NULL,
  `product_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_item_id` int(10) UNSIGNED DEFAULT NULL,
  `refund_id` int(10) UNSIGNED DEFAULT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `additional` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `bgwyroles`
--

CREATE TABLE `bgwyroles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permission_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `permissions` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `bgwyroles`
--

INSERT INTO `bgwyroles` (`id`, `name`, `description`, `permission_type`, `permissions`, `created_at`, `updated_at`) VALUES
(1, 'Administrator', 'Administrator rolem', 'all', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `bgwyshipments`
--

CREATE TABLE `bgwyshipments` (
  `id` int(10) UNSIGNED NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total_qty` int(11) DEFAULT NULL,
  `total_weight` int(11) DEFAULT NULL,
  `carrier_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `carrier_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `track_number` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_sent` tinyint(1) NOT NULL DEFAULT 0,
  `customer_id` int(10) UNSIGNED DEFAULT NULL,
  `customer_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_id` int(10) UNSIGNED NOT NULL,
  `order_address_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `inventory_source_id` int(10) UNSIGNED DEFAULT NULL,
  `inventory_source_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `bgwyshipments`
--

INSERT INTO `bgwyshipments` (`id`, `status`, `total_qty`, `total_weight`, `carrier_code`, `carrier_title`, `track_number`, `email_sent`, `customer_id`, `customer_type`, `order_id`, `order_address_id`, `created_at`, `updated_at`, `inventory_source_id`, `inventory_source_name`) VALUES
(1, NULL, 2, NULL, NULL, 'a', 'b', 0, 3, 'Webkul\\Customer\\Models\\Customer', 4, 16, '2021-02-27 23:32:54', '2021-02-27 23:32:54', 1, 'Default'),
(2, NULL, 2, NULL, NULL, '', '', 0, 3, 'Webkul\\Customer\\Models\\Customer', 3, 12, '2021-02-27 23:35:44', '2021-02-27 23:35:44', 1, 'Default');

-- --------------------------------------------------------

--
-- Table structure for table `bgwyshipment_items`
--

CREATE TABLE `bgwyshipment_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sku` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qty` int(11) DEFAULT NULL,
  `weight` int(11) DEFAULT NULL,
  `price` decimal(12,4) DEFAULT 0.0000,
  `base_price` decimal(12,4) DEFAULT 0.0000,
  `total` decimal(12,4) DEFAULT 0.0000,
  `base_total` decimal(12,4) DEFAULT 0.0000,
  `product_id` int(10) UNSIGNED DEFAULT NULL,
  `product_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_item_id` int(10) UNSIGNED DEFAULT NULL,
  `shipment_id` int(10) UNSIGNED NOT NULL,
  `additional` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `bgwyshipment_items`
--

INSERT INTO `bgwyshipment_items` (`id`, `name`, `description`, `sku`, `qty`, `weight`, `price`, `base_price`, `total`, `base_total`, `product_id`, `product_type`, `order_item_id`, `shipment_id`, `additional`, `created_at`, `updated_at`) VALUES
(1, 'Kazi Farms Kitchen Chicken Strips (250gm)', NULL, '1004', 1, 250, 350.0000, 350.0000, 350.0000, 350.0000, 4, 'Webkul\\Product\\Models\\Product', 6, 1, '{\"quantity\":1,\"product_id\":\"4\",\"_token\":\"lMIUbSwvsYN3KpK3NaJ4FpBxYg7dM6AwnF0YMNup\",\"locale\":\"en\"}', '2021-02-27 23:32:54', '2021-02-27 23:32:54'),
(2, 'Anchor Fortified Full Cream Milk Powder (1kg)', NULL, '1006', 1, 1000, 630.0000, 630.0000, 630.0000, 630.0000, 6, 'Webkul\\Product\\Models\\Product', 7, 1, '{\"quantity\":1,\"product_id\":\"6\",\"_token\":\"lMIUbSwvsYN3KpK3NaJ4FpBxYg7dM6AwnF0YMNup\",\"locale\":\"en\"}', '2021-02-27 23:32:54', '2021-02-27 23:32:54'),
(3, 'GOLDEN HARVEST MOROG POLAW 400 GM', NULL, '1010', 1, 600, 1000.0000, 1000.0000, 1000.0000, 1000.0000, 9, 'Webkul\\Product\\Models\\Product', 4, 2, '{\"quantity\":1,\"product_id\":\"9\",\"_token\":\"lMIUbSwvsYN3KpK3NaJ4FpBxYg7dM6AwnF0YMNup\",\"locale\":\"en\"}', '2021-02-27 23:35:44', '2021-02-27 23:35:44'),
(4, 'Minicate Rice (Premium)', NULL, '1011', 1, 1, 60.0000, 60.0000, 60.0000, 60.0000, 10, 'Webkul\\Product\\Models\\Product', 5, 2, '{\"quantity\":1,\"product_id\":\"10\",\"_token\":\"lMIUbSwvsYN3KpK3NaJ4FpBxYg7dM6AwnF0YMNup\",\"locale\":\"en\"}', '2021-02-27 23:35:44', '2021-02-27 23:35:44');

-- --------------------------------------------------------

--
-- Table structure for table `bgwysliders`
--

CREATE TABLE `bgwysliders` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `path` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `channel_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `slider_path` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `bgwysliders`
--

INSERT INTO `bgwysliders` (`id`, `title`, `path`, `content`, `channel_id`, `created_at`, `updated_at`, `slider_path`, `locale`) VALUES
(1, 'Slider 1', 'slider_images/Default/efg3z0nKG5hUxHuhZcpjRHSoc5i3JOruiUxJUAcg.jpeg', '', 1, '2021-02-24 23:30:49', '2021-02-24 23:30:49', '', 'en');

-- --------------------------------------------------------

--
-- Table structure for table `bgwysubscribers_list`
--

CREATE TABLE `bgwysubscribers_list` (
  `id` int(10) UNSIGNED NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_subscribed` tinyint(1) NOT NULL DEFAULT 0,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `channel_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `bgwytax_categories`
--

CREATE TABLE `bgwytax_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `bgwytax_categories_tax_rates`
--

CREATE TABLE `bgwytax_categories_tax_rates` (
  `id` int(10) UNSIGNED NOT NULL,
  `tax_category_id` int(10) UNSIGNED NOT NULL,
  `tax_rate_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `bgwytax_rates`
--

CREATE TABLE `bgwytax_rates` (
  `id` int(10) UNSIGNED NOT NULL,
  `identifier` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_zip` tinyint(1) NOT NULL DEFAULT 0,
  `zip_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip_from` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip_to` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tax_rate` decimal(12,4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `bgwyusers`
--

CREATE TABLE `bgwyusers` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `bgwyvelocity_contents`
--

CREATE TABLE `bgwyvelocity_contents` (
  `id` int(10) UNSIGNED NOT NULL,
  `content_type` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` int(10) UNSIGNED DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `bgwyvelocity_contents_translations`
--

CREATE TABLE `bgwyvelocity_contents_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `content_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `custom_title` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `custom_heading` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `page_link` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link_target` tinyint(1) NOT NULL DEFAULT 0,
  `catalog_type` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `products` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `bgwyvelocity_customer_compare_products`
--

CREATE TABLE `bgwyvelocity_customer_compare_products` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_flat_id` int(10) UNSIGNED NOT NULL,
  `customer_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `bgwyvelocity_meta_data`
--

CREATE TABLE `bgwyvelocity_meta_data` (
  `id` int(10) UNSIGNED NOT NULL,
  `home_page_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `footer_left_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `footer_middle_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `slider` tinyint(1) NOT NULL DEFAULT 0,
  `advertisement` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `sidebar_category_count` int(11) NOT NULL DEFAULT 9,
  `featured_product_count` int(11) NOT NULL DEFAULT 10,
  `new_products_count` int(11) NOT NULL DEFAULT 10,
  `subscription_bar_content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `product_view_images` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `product_policy` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `locale` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `channel` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `header_content_count` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `bgwyvelocity_meta_data`
--

INSERT INTO `bgwyvelocity_meta_data` (`id`, `home_page_content`, `footer_left_content`, `footer_middle_content`, `slider`, `advertisement`, `sidebar_category_count`, `featured_product_count`, `new_products_count`, `subscription_bar_content`, `created_at`, `updated_at`, `product_view_images`, `product_policy`, `locale`, `channel`, `header_content_count`) VALUES
(1, '<p>@include(\'shop::home.advertisements.advertisement-four\')@include(\'shop::home.featured-products\') @include(\'shop::home.product-policy\') @include(\'shop::home.advertisements.advertisement-three\') @include(\'shop::home.new-products\')&nbsp; @include(\'shop::home.category\', [\'category\' => \'dairy\']) @include(\'shop::home.category\', [\'category\' => \'fish\']) @include(\'shop::home.category\', [\'category\' => \'beverages\']) @include(\'shop::home.category\', [\'category\' => \'fresh-produce\']) @include(\'shop::home.category\', [\'category\' => \'frozen-foods\']) @include(\'shop::home.category\', [\'category\' => \'bakery-snacks\']) @include(\'shop::home.category\', [\'category\' => \'beauty-hygiene\']) @include(\'shop::home.category\', [\'category\' => \'essentials\'])</p>\r\n<p></p>\r\n<p></p>\r\n<p></p>', '<p>We love to craft softwares and solve the real world problems with the binaries. We are highly committed to our goals. We invest our resources to create world class easy to use softwares and applications for the enterprise business with the top notch, on the edge technology expertise.</p>', '<div class=\"col-lg-6 col-md-12 col-sm-12 no-padding\">\r\n<ul type=\"none\">\r\n<li><a href=\"{!! url(\'page/about-us\') !!}\">About Us</a></li>\r\n<li><a href=\"{!! url(\'page/cutomer-service\') !!}\">Customer Service</a></li>\r\n<li><a href=\"{!! url(\'page/whats-new\') !!}\">What&rsquo;s New</a></li>\r\n<li><a href=\"{!! url(\'page/contact-us\') !!}\">Contact Us </a></li>\r\n</ul>\r\n</div>\r\n<div class=\"col-lg-6 col-md-12 col-sm-12 no-padding\">\r\n<ul type=\"none\">\r\n<li><a href=\"{!! url(\'page/return-policy\') !!}\"> Order and Returns </a></li>\r\n<li><a href=\"{!! url(\'page/payment-policy\') !!}\"> Payment Policy </a></li>\r\n<li><a href=\"{!! url(\'page/shipping-policy\') !!}\"> Shipping Policy</a></li>\r\n<li><a href=\"{!! url(\'page/privacy-policy\') !!}\"> Privacy and Cookies Policy </a></li>\r\n</ul>\r\n</div>', 1, '{\"4\":{\"5\":\"velocity\\/images\\/dQJ0dxXh5vq1D0SmNixaMLTGzsul2MycQorFrKp0.jpeg\",\"6\":\"velocity\\/images\\/bm9A8aFZYgdZotFACHQWovy76AUTewOZrkuYGjk1.jpeg\",\"7\":\"velocity\\/images\\/mOWzSJHFuGNe0jUIGu6hSHRTT9T4WrWFXsbbAvCm.jpeg\",\"8\":\"velocity\\/images\\/rFM8R6sn97g3ZRS0pgGMJB09ZKGPUPvTIo6fCgzx.jpeg\"},\"3\":{\"4\":\"velocity\\/images\\/DJL6vkgO1b3yc8AnGbkpK90ZmbvCPPRwhHMAbxzG.jpeg\",\"5\":\"velocity\\/images\\/9GyYRJKnjTxjnMcYz1m9l0xCAKeqSCQWrkuOV1LQ.jpeg\",\"6\":\"velocity\\/images\\/fgHkHToYiPPonoSJbI8IOLVho1MgKrQRwC1AgP4A.jpeg\"},\"2\":{\"3\":\"velocity\\/images\\/qrLBNxMAuuNcG7cMcroUDrvd2SsXmxtYw3EOqGnX.jpeg\",\"4\":\"velocity\\/images\\/HQx4aYFZDezrzwPc0uJhVOYaOhUjxfW9r9Md7PLh.jpeg\"}}', 9, 10, 10, '<div class=\"social-icons col-lg-6\"><a href=\"https://webkul.com\" target=\"_blank\" class=\"unset\" rel=\"noopener noreferrer\"><i class=\"fs24 within-circle rango-facebook\" title=\"facebook\"></i> </a> <a href=\"https://webkul.com\" target=\"_blank\" class=\"unset\" rel=\"noopener noreferrer\"><i class=\"fs24 within-circle rango-twitter\" title=\"twitter\"></i> </a> <a href=\"https://webkul.com\" target=\"_blank\" class=\"unset\" rel=\"noopener noreferrer\"><i class=\"fs24 within-circle rango-linked-in\" title=\"linkedin\"></i> </a> <a href=\"https://webkul.com\" target=\"_blank\" class=\"unset\" rel=\"noopener noreferrer\"><i class=\"fs24 within-circle rango-pintrest\" title=\"Pinterest\"></i> </a> <a href=\"https://webkul.com\" target=\"_blank\" class=\"unset\" rel=\"noopener noreferrer\"><i class=\"fs24 within-circle rango-youtube\" title=\"Youtube\"></i> </a> <a href=\"https://webkul.com\" target=\"_blank\" class=\"unset\" rel=\"noopener noreferrer\"><i class=\"fs24 within-circle rango-instagram\" title=\"instagram\"></i></a></div>', NULL, '2021-02-25 05:11:33', NULL, '<div class=\"row col-12 remove-padding-margin\">\r\n<div class=\"col-lg-4 col-sm-12 product-policy-wrapper\">\r\n<div class=\"card\">\r\n<div class=\"policy\">\r\n<div class=\"left\"><i class=\"rango-van-ship fs40\"></i></div>\r\n<div class=\"right\"><span class=\"font-setting fs20\">Free Shipping on Order ৳20 or More</span></div>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"col-lg-4 col-sm-12 product-policy-wrapper\">\r\n<div class=\"card\">\r\n<div class=\"policy\">\r\n<div class=\"left\"><i class=\"rango-exchnage fs40\"></i></div>\r\n<div class=\"right\"><span class=\"font-setting fs20\">Product Replace &amp; Return Available </span></div>\r\n</div>\r\n</div>\r\n</div>\r\n<div class=\"col-lg-4 col-sm-12 product-policy-wrapper\">\r\n<div class=\"card\">\r\n<div class=\"policy\">\r\n<div class=\"left\"><i class=\"rango-exchnage fs40\"></i></div>\r\n<div class=\"right\"><span class=\"font-setting fs20\">Product Exchange and EMI Available </span></div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', 'en', 'default', '5');

-- --------------------------------------------------------

--
-- Table structure for table `bgwywishlist`
--

CREATE TABLE `bgwywishlist` (
  `id` int(10) UNSIGNED NOT NULL,
  `channel_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `customer_id` int(10) UNSIGNED NOT NULL,
  `item_options` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `moved_to_cart` date DEFAULT NULL,
  `shared` tinyint(1) DEFAULT NULL,
  `time_of_moving` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `additional` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bgwyaddresses`
--
ALTER TABLE `bgwyaddresses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `addresses_customer_id_foreign` (`customer_id`),
  ADD KEY `addresses_cart_id_foreign` (`cart_id`),
  ADD KEY `addresses_order_id_foreign` (`order_id`);

--
-- Indexes for table `bgwyadmins`
--
ALTER TABLE `bgwyadmins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`),
  ADD UNIQUE KEY `admins_api_token_unique` (`api_token`);

--
-- Indexes for table `bgwyadmin_password_resets`
--
ALTER TABLE `bgwyadmin_password_resets`
  ADD KEY `admin_password_resets_email_index` (`email`);

--
-- Indexes for table `bgwyattributes`
--
ALTER TABLE `bgwyattributes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `attributes_code_unique` (`code`);

--
-- Indexes for table `bgwyattribute_families`
--
ALTER TABLE `bgwyattribute_families`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bgwyattribute_groups`
--
ALTER TABLE `bgwyattribute_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `attribute_groups_attribute_family_id_name_unique` (`attribute_family_id`,`name`);

--
-- Indexes for table `bgwyattribute_group_mappings`
--
ALTER TABLE `bgwyattribute_group_mappings`
  ADD PRIMARY KEY (`attribute_id`,`attribute_group_id`),
  ADD KEY `attribute_group_mappings_attribute_group_id_foreign` (`attribute_group_id`);

--
-- Indexes for table `bgwyattribute_options`
--
ALTER TABLE `bgwyattribute_options`
  ADD PRIMARY KEY (`id`),
  ADD KEY `attribute_options_attribute_id_foreign` (`attribute_id`);

--
-- Indexes for table `bgwyattribute_option_translations`
--
ALTER TABLE `bgwyattribute_option_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `attribute_option_translations_attribute_option_id_locale_unique` (`attribute_option_id`,`locale`);

--
-- Indexes for table `bgwyattribute_translations`
--
ALTER TABLE `bgwyattribute_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `attribute_translations_attribute_id_locale_unique` (`attribute_id`,`locale`);

--
-- Indexes for table `bgwybookings`
--
ALTER TABLE `bgwybookings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bookings_order_id_foreign` (`order_id`),
  ADD KEY `bookings_product_id_foreign` (`product_id`);

--
-- Indexes for table `bgwybooking_products`
--
ALTER TABLE `bgwybooking_products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `booking_products_product_id_foreign` (`product_id`);

--
-- Indexes for table `bgwybooking_product_appointment_slots`
--
ALTER TABLE `bgwybooking_product_appointment_slots`
  ADD PRIMARY KEY (`id`),
  ADD KEY `booking_product_appointment_slots_booking_product_id_foreign` (`booking_product_id`);

--
-- Indexes for table `bgwybooking_product_default_slots`
--
ALTER TABLE `bgwybooking_product_default_slots`
  ADD PRIMARY KEY (`id`),
  ADD KEY `booking_product_default_slots_booking_product_id_foreign` (`booking_product_id`);

--
-- Indexes for table `bgwybooking_product_event_tickets`
--
ALTER TABLE `bgwybooking_product_event_tickets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `booking_product_event_tickets_booking_product_id_foreign` (`booking_product_id`);

--
-- Indexes for table `bgwybooking_product_event_ticket_translations`
--
ALTER TABLE `bgwybooking_product_event_ticket_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `booking_product_event_ticket_translations_locale_unique` (`booking_product_event_ticket_id`,`locale`);

--
-- Indexes for table `bgwybooking_product_rental_slots`
--
ALTER TABLE `bgwybooking_product_rental_slots`
  ADD PRIMARY KEY (`id`),
  ADD KEY `booking_product_rental_slots_booking_product_id_foreign` (`booking_product_id`);

--
-- Indexes for table `bgwybooking_product_table_slots`
--
ALTER TABLE `bgwybooking_product_table_slots`
  ADD PRIMARY KEY (`id`),
  ADD KEY `booking_product_table_slots_booking_product_id_foreign` (`booking_product_id`);

--
-- Indexes for table `bgwycart`
--
ALTER TABLE `bgwycart`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cart_customer_id_foreign` (`customer_id`),
  ADD KEY `cart_channel_id_foreign` (`channel_id`);

--
-- Indexes for table `bgwycart_items`
--
ALTER TABLE `bgwycart_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cart_items_product_id_foreign` (`product_id`),
  ADD KEY `cart_items_cart_id_foreign` (`cart_id`),
  ADD KEY `cart_items_tax_category_id_foreign` (`tax_category_id`),
  ADD KEY `cart_items_parent_id_foreign` (`parent_id`);

--
-- Indexes for table `bgwycart_item_inventories`
--
ALTER TABLE `bgwycart_item_inventories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bgwycart_payment`
--
ALTER TABLE `bgwycart_payment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cart_payment_cart_id_foreign` (`cart_id`);

--
-- Indexes for table `bgwycart_rules`
--
ALTER TABLE `bgwycart_rules`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bgwycart_rule_channels`
--
ALTER TABLE `bgwycart_rule_channels`
  ADD PRIMARY KEY (`cart_rule_id`,`channel_id`),
  ADD KEY `cart_rule_channels_channel_id_foreign` (`channel_id`);

--
-- Indexes for table `bgwycart_rule_coupons`
--
ALTER TABLE `bgwycart_rule_coupons`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cart_rule_coupons_cart_rule_id_foreign` (`cart_rule_id`);

--
-- Indexes for table `bgwycart_rule_coupon_usage`
--
ALTER TABLE `bgwycart_rule_coupon_usage`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cart_rule_coupon_usage_cart_rule_coupon_id_foreign` (`cart_rule_coupon_id`),
  ADD KEY `cart_rule_coupon_usage_customer_id_foreign` (`customer_id`);

--
-- Indexes for table `bgwycart_rule_customers`
--
ALTER TABLE `bgwycart_rule_customers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cart_rule_customers_cart_rule_id_foreign` (`cart_rule_id`),
  ADD KEY `cart_rule_customers_customer_id_foreign` (`customer_id`);

--
-- Indexes for table `bgwycart_rule_customer_groups`
--
ALTER TABLE `bgwycart_rule_customer_groups`
  ADD PRIMARY KEY (`cart_rule_id`,`customer_group_id`),
  ADD KEY `cart_rule_customer_groups_customer_group_id_foreign` (`customer_group_id`);

--
-- Indexes for table `bgwycart_rule_translations`
--
ALTER TABLE `bgwycart_rule_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `cart_rule_translations_cart_rule_id_locale_unique` (`cart_rule_id`,`locale`);

--
-- Indexes for table `bgwycart_shipping_rates`
--
ALTER TABLE `bgwycart_shipping_rates`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cart_shipping_rates_cart_address_id_foreign` (`cart_address_id`);

--
-- Indexes for table `bgwycatalog_rules`
--
ALTER TABLE `bgwycatalog_rules`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bgwycatalog_rule_channels`
--
ALTER TABLE `bgwycatalog_rule_channels`
  ADD PRIMARY KEY (`catalog_rule_id`,`channel_id`),
  ADD KEY `catalog_rule_channels_channel_id_foreign` (`channel_id`);

--
-- Indexes for table `bgwycatalog_rule_customer_groups`
--
ALTER TABLE `bgwycatalog_rule_customer_groups`
  ADD PRIMARY KEY (`catalog_rule_id`,`customer_group_id`),
  ADD KEY `catalog_rule_customer_groups_customer_group_id_foreign` (`customer_group_id`);

--
-- Indexes for table `bgwycatalog_rule_products`
--
ALTER TABLE `bgwycatalog_rule_products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `catalog_rule_products_product_id_foreign` (`product_id`),
  ADD KEY `catalog_rule_products_customer_group_id_foreign` (`customer_group_id`),
  ADD KEY `catalog_rule_products_catalog_rule_id_foreign` (`catalog_rule_id`),
  ADD KEY `catalog_rule_products_channel_id_foreign` (`channel_id`);

--
-- Indexes for table `bgwycatalog_rule_product_prices`
--
ALTER TABLE `bgwycatalog_rule_product_prices`
  ADD PRIMARY KEY (`id`),
  ADD KEY `catalog_rule_product_prices_product_id_foreign` (`product_id`),
  ADD KEY `catalog_rule_product_prices_customer_group_id_foreign` (`customer_group_id`),
  ADD KEY `catalog_rule_product_prices_catalog_rule_id_foreign` (`catalog_rule_id`),
  ADD KEY `catalog_rule_product_prices_channel_id_foreign` (`channel_id`);

--
-- Indexes for table `bgwycategories`
--
ALTER TABLE `bgwycategories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `categories__lft__rgt_parent_id_index` (`_lft`,`_rgt`,`parent_id`);

--
-- Indexes for table `bgwycategory_filterable_attributes`
--
ALTER TABLE `bgwycategory_filterable_attributes`
  ADD KEY `category_filterable_attributes_category_id_foreign` (`category_id`),
  ADD KEY `category_filterable_attributes_attribute_id_foreign` (`attribute_id`);

--
-- Indexes for table `bgwycategory_translations`
--
ALTER TABLE `bgwycategory_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `category_translations_category_id_slug_locale_unique` (`category_id`,`slug`,`locale`),
  ADD KEY `category_translations_locale_id_foreign` (`locale_id`);

--
-- Indexes for table `bgwychannels`
--
ALTER TABLE `bgwychannels`
  ADD PRIMARY KEY (`id`),
  ADD KEY `channels_default_locale_id_foreign` (`default_locale_id`),
  ADD KEY `channels_base_currency_id_foreign` (`base_currency_id`),
  ADD KEY `channels_root_category_id_foreign` (`root_category_id`);

--
-- Indexes for table `bgwychannel_currencies`
--
ALTER TABLE `bgwychannel_currencies`
  ADD PRIMARY KEY (`channel_id`,`currency_id`),
  ADD KEY `channel_currencies_currency_id_foreign` (`currency_id`);

--
-- Indexes for table `bgwychannel_inventory_sources`
--
ALTER TABLE `bgwychannel_inventory_sources`
  ADD UNIQUE KEY `channel_inventory_sources_channel_id_inventory_source_id_unique` (`channel_id`,`inventory_source_id`),
  ADD KEY `channel_inventory_sources_inventory_source_id_foreign` (`inventory_source_id`);

--
-- Indexes for table `bgwychannel_locales`
--
ALTER TABLE `bgwychannel_locales`
  ADD PRIMARY KEY (`channel_id`,`locale_id`),
  ADD KEY `channel_locales_locale_id_foreign` (`locale_id`);

--
-- Indexes for table `bgwycms_pages`
--
ALTER TABLE `bgwycms_pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bgwycms_page_channels`
--
ALTER TABLE `bgwycms_page_channels`
  ADD UNIQUE KEY `cms_page_channels_cms_page_id_channel_id_unique` (`cms_page_id`,`channel_id`),
  ADD KEY `cms_page_channels_channel_id_foreign` (`channel_id`);

--
-- Indexes for table `bgwycms_page_translations`
--
ALTER TABLE `bgwycms_page_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `cms_page_translations_cms_page_id_url_key_locale_unique` (`cms_page_id`,`url_key`,`locale`);

--
-- Indexes for table `bgwycore_config`
--
ALTER TABLE `bgwycore_config`
  ADD PRIMARY KEY (`id`),
  ADD KEY `core_config_channel_id_foreign` (`channel_code`);

--
-- Indexes for table `bgwycountries`
--
ALTER TABLE `bgwycountries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bgwycountry_states`
--
ALTER TABLE `bgwycountry_states`
  ADD PRIMARY KEY (`id`),
  ADD KEY `country_states_country_id_foreign` (`country_id`);

--
-- Indexes for table `bgwycountry_state_translations`
--
ALTER TABLE `bgwycountry_state_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `country_state_translations_country_state_id_foreign` (`country_state_id`);

--
-- Indexes for table `bgwycountry_translations`
--
ALTER TABLE `bgwycountry_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `country_translations_country_id_foreign` (`country_id`);

--
-- Indexes for table `bgwycurrencies`
--
ALTER TABLE `bgwycurrencies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bgwycurrency_exchange_rates`
--
ALTER TABLE `bgwycurrency_exchange_rates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `currency_exchange_rates_target_currency_unique` (`target_currency`);

--
-- Indexes for table `bgwycustomers`
--
ALTER TABLE `bgwycustomers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `customers_email_unique` (`email`),
  ADD UNIQUE KEY `customers_api_token_unique` (`api_token`),
  ADD KEY `customers_customer_group_id_foreign` (`customer_group_id`);

--
-- Indexes for table `bgwycustomer_groups`
--
ALTER TABLE `bgwycustomer_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `customer_groups_code_unique` (`code`);

--
-- Indexes for table `bgwycustomer_password_resets`
--
ALTER TABLE `bgwycustomer_password_resets`
  ADD KEY `customer_password_resets_email_index` (`email`);

--
-- Indexes for table `bgwycustomer_social_accounts`
--
ALTER TABLE `bgwycustomer_social_accounts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `customer_social_accounts_provider_id_unique` (`provider_id`),
  ADD KEY `customer_social_accounts_customer_id_foreign` (`customer_id`);

--
-- Indexes for table `bgwydownloadable_link_purchased`
--
ALTER TABLE `bgwydownloadable_link_purchased`
  ADD PRIMARY KEY (`id`),
  ADD KEY `downloadable_link_purchased_customer_id_foreign` (`customer_id`),
  ADD KEY `downloadable_link_purchased_order_id_foreign` (`order_id`),
  ADD KEY `downloadable_link_purchased_order_item_id_foreign` (`order_item_id`);

--
-- Indexes for table `bgwyinventory_sources`
--
ALTER TABLE `bgwyinventory_sources`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `inventory_sources_code_unique` (`code`);

--
-- Indexes for table `bgwyinvoices`
--
ALTER TABLE `bgwyinvoices`
  ADD PRIMARY KEY (`id`),
  ADD KEY `invoices_order_id_foreign` (`order_id`),
  ADD KEY `invoices_order_address_id_foreign` (`order_address_id`);

--
-- Indexes for table `bgwyinvoice_items`
--
ALTER TABLE `bgwyinvoice_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `invoice_items_invoice_id_foreign` (`invoice_id`),
  ADD KEY `invoice_items_parent_id_foreign` (`parent_id`);

--
-- Indexes for table `bgwylocales`
--
ALTER TABLE `bgwylocales`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `locales_code_unique` (`code`);

--
-- Indexes for table `bgwymigrations`
--
ALTER TABLE `bgwymigrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bgwyorders`
--
ALTER TABLE `bgwyorders`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `orders_increment_id_unique` (`increment_id`),
  ADD KEY `orders_customer_id_foreign` (`customer_id`),
  ADD KEY `orders_channel_id_foreign` (`channel_id`);

--
-- Indexes for table `bgwyorder_brands`
--
ALTER TABLE `bgwyorder_brands`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_brands_order_id_foreign` (`order_id`),
  ADD KEY `order_brands_order_item_id_foreign` (`order_item_id`),
  ADD KEY `order_brands_product_id_foreign` (`product_id`),
  ADD KEY `order_brands_brand_foreign` (`brand`);

--
-- Indexes for table `bgwyorder_comments`
--
ALTER TABLE `bgwyorder_comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_comments_order_id_foreign` (`order_id`);

--
-- Indexes for table `bgwyorder_items`
--
ALTER TABLE `bgwyorder_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_items_order_id_foreign` (`order_id`),
  ADD KEY `order_items_parent_id_foreign` (`parent_id`);

--
-- Indexes for table `bgwyorder_payment`
--
ALTER TABLE `bgwyorder_payment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_payment_order_id_foreign` (`order_id`);

--
-- Indexes for table `bgwypassword_resets`
--
ALTER TABLE `bgwypassword_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `bgwyproducts`
--
ALTER TABLE `bgwyproducts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_sku_unique` (`sku`),
  ADD KEY `products_attribute_family_id_foreign` (`attribute_family_id`),
  ADD KEY `products_parent_id_foreign` (`parent_id`);

--
-- Indexes for table `bgwyproduct_attribute_values`
--
ALTER TABLE `bgwyproduct_attribute_values`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `chanel_locale_attribute_value_index_unique` (`channel`,`locale`,`attribute_id`,`product_id`),
  ADD KEY `product_attribute_values_product_id_foreign` (`product_id`),
  ADD KEY `product_attribute_values_attribute_id_foreign` (`attribute_id`);

--
-- Indexes for table `bgwyproduct_bundle_options`
--
ALTER TABLE `bgwyproduct_bundle_options`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_bundle_options_product_id_foreign` (`product_id`);

--
-- Indexes for table `bgwyproduct_bundle_option_products`
--
ALTER TABLE `bgwyproduct_bundle_option_products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_bundle_option_products_product_bundle_option_id_foreign` (`product_bundle_option_id`),
  ADD KEY `product_bundle_option_products_product_id_foreign` (`product_id`);

--
-- Indexes for table `bgwyproduct_bundle_option_translations`
--
ALTER TABLE `bgwyproduct_bundle_option_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `product_bundle_option_translations_option_id_locale_unique` (`product_bundle_option_id`,`locale`);

--
-- Indexes for table `bgwyproduct_categories`
--
ALTER TABLE `bgwyproduct_categories`
  ADD KEY `product_categories_product_id_foreign` (`product_id`),
  ADD KEY `product_categories_category_id_foreign` (`category_id`);

--
-- Indexes for table `bgwyproduct_cross_sells`
--
ALTER TABLE `bgwyproduct_cross_sells`
  ADD KEY `product_cross_sells_parent_id_foreign` (`parent_id`),
  ADD KEY `product_cross_sells_child_id_foreign` (`child_id`);

--
-- Indexes for table `bgwyproduct_customer_group_prices`
--
ALTER TABLE `bgwyproduct_customer_group_prices`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_customer_group_prices_product_id_foreign` (`product_id`),
  ADD KEY `product_customer_group_prices_customer_group_id_foreign` (`customer_group_id`);

--
-- Indexes for table `bgwyproduct_downloadable_links`
--
ALTER TABLE `bgwyproduct_downloadable_links`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_downloadable_links_product_id_foreign` (`product_id`);

--
-- Indexes for table `bgwyproduct_downloadable_link_translations`
--
ALTER TABLE `bgwyproduct_downloadable_link_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `link_translations_link_id_foreign` (`product_downloadable_link_id`);

--
-- Indexes for table `bgwyproduct_downloadable_samples`
--
ALTER TABLE `bgwyproduct_downloadable_samples`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_downloadable_samples_product_id_foreign` (`product_id`);

--
-- Indexes for table `bgwyproduct_downloadable_sample_translations`
--
ALTER TABLE `bgwyproduct_downloadable_sample_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sample_translations_sample_id_foreign` (`product_downloadable_sample_id`);

--
-- Indexes for table `bgwyproduct_flat`
--
ALTER TABLE `bgwyproduct_flat`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `product_flat_unique_index` (`product_id`,`channel`,`locale`),
  ADD KEY `product_flat_parent_id_foreign` (`parent_id`);

--
-- Indexes for table `bgwyproduct_grouped_products`
--
ALTER TABLE `bgwyproduct_grouped_products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_grouped_products_product_id_foreign` (`product_id`),
  ADD KEY `product_grouped_products_associated_product_id_foreign` (`associated_product_id`);

--
-- Indexes for table `bgwyproduct_images`
--
ALTER TABLE `bgwyproduct_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_images_product_id_foreign` (`product_id`);

--
-- Indexes for table `bgwyproduct_inventories`
--
ALTER TABLE `bgwyproduct_inventories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `product_source_vendor_index_unique` (`product_id`,`inventory_source_id`,`vendor_id`),
  ADD KEY `product_inventories_inventory_source_id_foreign` (`inventory_source_id`);

--
-- Indexes for table `bgwyproduct_ordered_inventories`
--
ALTER TABLE `bgwyproduct_ordered_inventories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `product_ordered_inventories_product_id_channel_id_unique` (`product_id`,`channel_id`),
  ADD KEY `product_ordered_inventories_channel_id_foreign` (`channel_id`);

--
-- Indexes for table `bgwyproduct_relations`
--
ALTER TABLE `bgwyproduct_relations`
  ADD KEY `product_relations_parent_id_foreign` (`parent_id`),
  ADD KEY `product_relations_child_id_foreign` (`child_id`);

--
-- Indexes for table `bgwyproduct_reviews`
--
ALTER TABLE `bgwyproduct_reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_reviews_product_id_foreign` (`product_id`),
  ADD KEY `product_reviews_customer_id_foreign` (`customer_id`);

--
-- Indexes for table `bgwyproduct_super_attributes`
--
ALTER TABLE `bgwyproduct_super_attributes`
  ADD KEY `product_super_attributes_product_id_foreign` (`product_id`),
  ADD KEY `product_super_attributes_attribute_id_foreign` (`attribute_id`);

--
-- Indexes for table `bgwyproduct_up_sells`
--
ALTER TABLE `bgwyproduct_up_sells`
  ADD KEY `product_up_sells_parent_id_foreign` (`parent_id`),
  ADD KEY `product_up_sells_child_id_foreign` (`child_id`);

--
-- Indexes for table `bgwyrefunds`
--
ALTER TABLE `bgwyrefunds`
  ADD PRIMARY KEY (`id`),
  ADD KEY `refunds_order_id_foreign` (`order_id`);

--
-- Indexes for table `bgwyrefund_items`
--
ALTER TABLE `bgwyrefund_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `refund_items_order_item_id_foreign` (`order_item_id`),
  ADD KEY `refund_items_refund_id_foreign` (`refund_id`),
  ADD KEY `refund_items_parent_id_foreign` (`parent_id`);

--
-- Indexes for table `bgwyroles`
--
ALTER TABLE `bgwyroles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bgwyshipments`
--
ALTER TABLE `bgwyshipments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `shipments_order_id_foreign` (`order_id`),
  ADD KEY `shipments_inventory_source_id_foreign` (`inventory_source_id`),
  ADD KEY `shipments_order_address_id_foreign` (`order_address_id`);

--
-- Indexes for table `bgwyshipment_items`
--
ALTER TABLE `bgwyshipment_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `shipment_items_shipment_id_foreign` (`shipment_id`);

--
-- Indexes for table `bgwysliders`
--
ALTER TABLE `bgwysliders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sliders_channel_id_foreign` (`channel_id`);

--
-- Indexes for table `bgwysubscribers_list`
--
ALTER TABLE `bgwysubscribers_list`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subscribers_list_channel_id_foreign` (`channel_id`);

--
-- Indexes for table `bgwytax_categories`
--
ALTER TABLE `bgwytax_categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tax_categories_code_unique` (`code`);

--
-- Indexes for table `bgwytax_categories_tax_rates`
--
ALTER TABLE `bgwytax_categories_tax_rates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tax_map_index_unique` (`tax_category_id`,`tax_rate_id`),
  ADD KEY `tax_categories_tax_rates_tax_rate_id_foreign` (`tax_rate_id`);

--
-- Indexes for table `bgwytax_rates`
--
ALTER TABLE `bgwytax_rates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tax_rates_identifier_unique` (`identifier`);

--
-- Indexes for table `bgwyusers`
--
ALTER TABLE `bgwyusers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `bgwyvelocity_contents`
--
ALTER TABLE `bgwyvelocity_contents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bgwyvelocity_contents_translations`
--
ALTER TABLE `bgwyvelocity_contents_translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `velocity_contents_translations_content_id_foreign` (`content_id`);

--
-- Indexes for table `bgwyvelocity_customer_compare_products`
--
ALTER TABLE `bgwyvelocity_customer_compare_products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `velocity_customer_compare_products_product_flat_id_foreign` (`product_flat_id`),
  ADD KEY `velocity_customer_compare_products_customer_id_foreign` (`customer_id`);

--
-- Indexes for table `bgwyvelocity_meta_data`
--
ALTER TABLE `bgwyvelocity_meta_data`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bgwywishlist`
--
ALTER TABLE `bgwywishlist`
  ADD PRIMARY KEY (`id`),
  ADD KEY `wishlist_channel_id_foreign` (`channel_id`),
  ADD KEY `wishlist_product_id_foreign` (`product_id`),
  ADD KEY `wishlist_customer_id_foreign` (`customer_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bgwyaddresses`
--
ALTER TABLE `bgwyaddresses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `bgwyadmins`
--
ALTER TABLE `bgwyadmins`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `bgwyattributes`
--
ALTER TABLE `bgwyattributes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `bgwyattribute_families`
--
ALTER TABLE `bgwyattribute_families`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `bgwyattribute_groups`
--
ALTER TABLE `bgwyattribute_groups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `bgwyattribute_options`
--
ALTER TABLE `bgwyattribute_options`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `bgwyattribute_option_translations`
--
ALTER TABLE `bgwyattribute_option_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `bgwyattribute_translations`
--
ALTER TABLE `bgwyattribute_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `bgwybookings`
--
ALTER TABLE `bgwybookings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bgwybooking_products`
--
ALTER TABLE `bgwybooking_products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bgwybooking_product_appointment_slots`
--
ALTER TABLE `bgwybooking_product_appointment_slots`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bgwybooking_product_default_slots`
--
ALTER TABLE `bgwybooking_product_default_slots`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bgwybooking_product_event_tickets`
--
ALTER TABLE `bgwybooking_product_event_tickets`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bgwybooking_product_event_ticket_translations`
--
ALTER TABLE `bgwybooking_product_event_ticket_translations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bgwybooking_product_rental_slots`
--
ALTER TABLE `bgwybooking_product_rental_slots`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bgwybooking_product_table_slots`
--
ALTER TABLE `bgwybooking_product_table_slots`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bgwycart`
--
ALTER TABLE `bgwycart`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `bgwycart_items`
--
ALTER TABLE `bgwycart_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `bgwycart_item_inventories`
--
ALTER TABLE `bgwycart_item_inventories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bgwycart_payment`
--
ALTER TABLE `bgwycart_payment`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `bgwycart_rules`
--
ALTER TABLE `bgwycart_rules`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bgwycart_rule_coupons`
--
ALTER TABLE `bgwycart_rule_coupons`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bgwycart_rule_coupon_usage`
--
ALTER TABLE `bgwycart_rule_coupon_usage`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bgwycart_rule_customers`
--
ALTER TABLE `bgwycart_rule_customers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bgwycart_rule_translations`
--
ALTER TABLE `bgwycart_rule_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bgwycart_shipping_rates`
--
ALTER TABLE `bgwycart_shipping_rates`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `bgwycatalog_rules`
--
ALTER TABLE `bgwycatalog_rules`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bgwycatalog_rule_products`
--
ALTER TABLE `bgwycatalog_rule_products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bgwycatalog_rule_product_prices`
--
ALTER TABLE `bgwycatalog_rule_product_prices`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bgwycategories`
--
ALTER TABLE `bgwycategories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `bgwycategory_translations`
--
ALTER TABLE `bgwycategory_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `bgwychannels`
--
ALTER TABLE `bgwychannels`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `bgwycms_pages`
--
ALTER TABLE `bgwycms_pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `bgwycms_page_translations`
--
ALTER TABLE `bgwycms_page_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `bgwycore_config`
--
ALTER TABLE `bgwycore_config`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `bgwycountries`
--
ALTER TABLE `bgwycountries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=256;

--
-- AUTO_INCREMENT for table `bgwycountry_states`
--
ALTER TABLE `bgwycountry_states`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=569;

--
-- AUTO_INCREMENT for table `bgwycountry_state_translations`
--
ALTER TABLE `bgwycountry_state_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1705;

--
-- AUTO_INCREMENT for table `bgwycountry_translations`
--
ALTER TABLE `bgwycountry_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=766;

--
-- AUTO_INCREMENT for table `bgwycurrencies`
--
ALTER TABLE `bgwycurrencies`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `bgwycurrency_exchange_rates`
--
ALTER TABLE `bgwycurrency_exchange_rates`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bgwycustomers`
--
ALTER TABLE `bgwycustomers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `bgwycustomer_groups`
--
ALTER TABLE `bgwycustomer_groups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `bgwycustomer_social_accounts`
--
ALTER TABLE `bgwycustomer_social_accounts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bgwydownloadable_link_purchased`
--
ALTER TABLE `bgwydownloadable_link_purchased`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bgwyinventory_sources`
--
ALTER TABLE `bgwyinventory_sources`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `bgwyinvoices`
--
ALTER TABLE `bgwyinvoices`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `bgwyinvoice_items`
--
ALTER TABLE `bgwyinvoice_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `bgwylocales`
--
ALTER TABLE `bgwylocales`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `bgwymigrations`
--
ALTER TABLE `bgwymigrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=185;

--
-- AUTO_INCREMENT for table `bgwyorders`
--
ALTER TABLE `bgwyorders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `bgwyorder_brands`
--
ALTER TABLE `bgwyorder_brands`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `bgwyorder_comments`
--
ALTER TABLE `bgwyorder_comments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `bgwyorder_items`
--
ALTER TABLE `bgwyorder_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `bgwyorder_payment`
--
ALTER TABLE `bgwyorder_payment`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `bgwyproducts`
--
ALTER TABLE `bgwyproducts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `bgwyproduct_attribute_values`
--
ALTER TABLE `bgwyproduct_attribute_values`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1501;

--
-- AUTO_INCREMENT for table `bgwyproduct_bundle_options`
--
ALTER TABLE `bgwyproduct_bundle_options`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bgwyproduct_bundle_option_products`
--
ALTER TABLE `bgwyproduct_bundle_option_products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bgwyproduct_bundle_option_translations`
--
ALTER TABLE `bgwyproduct_bundle_option_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bgwyproduct_customer_group_prices`
--
ALTER TABLE `bgwyproduct_customer_group_prices`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bgwyproduct_downloadable_links`
--
ALTER TABLE `bgwyproduct_downloadable_links`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bgwyproduct_downloadable_link_translations`
--
ALTER TABLE `bgwyproduct_downloadable_link_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bgwyproduct_downloadable_samples`
--
ALTER TABLE `bgwyproduct_downloadable_samples`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bgwyproduct_downloadable_sample_translations`
--
ALTER TABLE `bgwyproduct_downloadable_sample_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bgwyproduct_flat`
--
ALTER TABLE `bgwyproduct_flat`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `bgwyproduct_grouped_products`
--
ALTER TABLE `bgwyproduct_grouped_products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bgwyproduct_images`
--
ALTER TABLE `bgwyproduct_images`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `bgwyproduct_inventories`
--
ALTER TABLE `bgwyproduct_inventories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `bgwyproduct_ordered_inventories`
--
ALTER TABLE `bgwyproduct_ordered_inventories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `bgwyproduct_reviews`
--
ALTER TABLE `bgwyproduct_reviews`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bgwyrefunds`
--
ALTER TABLE `bgwyrefunds`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bgwyrefund_items`
--
ALTER TABLE `bgwyrefund_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bgwyroles`
--
ALTER TABLE `bgwyroles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `bgwyshipments`
--
ALTER TABLE `bgwyshipments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `bgwyshipment_items`
--
ALTER TABLE `bgwyshipment_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `bgwysliders`
--
ALTER TABLE `bgwysliders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `bgwysubscribers_list`
--
ALTER TABLE `bgwysubscribers_list`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bgwytax_categories`
--
ALTER TABLE `bgwytax_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bgwytax_categories_tax_rates`
--
ALTER TABLE `bgwytax_categories_tax_rates`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bgwytax_rates`
--
ALTER TABLE `bgwytax_rates`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bgwyusers`
--
ALTER TABLE `bgwyusers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bgwyvelocity_contents`
--
ALTER TABLE `bgwyvelocity_contents`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bgwyvelocity_contents_translations`
--
ALTER TABLE `bgwyvelocity_contents_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bgwyvelocity_customer_compare_products`
--
ALTER TABLE `bgwyvelocity_customer_compare_products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bgwyvelocity_meta_data`
--
ALTER TABLE `bgwyvelocity_meta_data`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `bgwywishlist`
--
ALTER TABLE `bgwywishlist`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bgwyaddresses`
--
ALTER TABLE `bgwyaddresses`
  ADD CONSTRAINT `addresses_cart_id_foreign` FOREIGN KEY (`cart_id`) REFERENCES `bgwycart` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `addresses_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `bgwycustomers` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `addresses_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `bgwyorders` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `bgwyattribute_groups`
--
ALTER TABLE `bgwyattribute_groups`
  ADD CONSTRAINT `attribute_groups_attribute_family_id_foreign` FOREIGN KEY (`attribute_family_id`) REFERENCES `bgwyattribute_families` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `bgwyattribute_group_mappings`
--
ALTER TABLE `bgwyattribute_group_mappings`
  ADD CONSTRAINT `attribute_group_mappings_attribute_group_id_foreign` FOREIGN KEY (`attribute_group_id`) REFERENCES `bgwyattribute_groups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `attribute_group_mappings_attribute_id_foreign` FOREIGN KEY (`attribute_id`) REFERENCES `bgwyattributes` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `bgwyattribute_options`
--
ALTER TABLE `bgwyattribute_options`
  ADD CONSTRAINT `attribute_options_attribute_id_foreign` FOREIGN KEY (`attribute_id`) REFERENCES `bgwyattributes` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `bgwyattribute_option_translations`
--
ALTER TABLE `bgwyattribute_option_translations`
  ADD CONSTRAINT `attribute_option_translations_attribute_option_id_foreign` FOREIGN KEY (`attribute_option_id`) REFERENCES `bgwyattribute_options` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `bgwyattribute_translations`
--
ALTER TABLE `bgwyattribute_translations`
  ADD CONSTRAINT `attribute_translations_attribute_id_foreign` FOREIGN KEY (`attribute_id`) REFERENCES `bgwyattributes` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `bgwybookings`
--
ALTER TABLE `bgwybookings`
  ADD CONSTRAINT `bookings_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `bgwyorders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `bookings_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `bgwyproducts` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `bgwybooking_products`
--
ALTER TABLE `bgwybooking_products`
  ADD CONSTRAINT `booking_products_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `bgwyproducts` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `bgwybooking_product_appointment_slots`
--
ALTER TABLE `bgwybooking_product_appointment_slots`
  ADD CONSTRAINT `booking_product_appointment_slots_booking_product_id_foreign` FOREIGN KEY (`booking_product_id`) REFERENCES `bgwybooking_products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `bgwybooking_product_default_slots`
--
ALTER TABLE `bgwybooking_product_default_slots`
  ADD CONSTRAINT `booking_product_default_slots_booking_product_id_foreign` FOREIGN KEY (`booking_product_id`) REFERENCES `bgwybooking_products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `bgwybooking_product_event_tickets`
--
ALTER TABLE `bgwybooking_product_event_tickets`
  ADD CONSTRAINT `booking_product_event_tickets_booking_product_id_foreign` FOREIGN KEY (`booking_product_id`) REFERENCES `bgwybooking_products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `bgwybooking_product_event_ticket_translations`
--
ALTER TABLE `bgwybooking_product_event_ticket_translations`
  ADD CONSTRAINT `booking_product_event_ticket_translations_locale_foreign` FOREIGN KEY (`booking_product_event_ticket_id`) REFERENCES `bgwybooking_product_event_tickets` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `bgwybooking_product_rental_slots`
--
ALTER TABLE `bgwybooking_product_rental_slots`
  ADD CONSTRAINT `booking_product_rental_slots_booking_product_id_foreign` FOREIGN KEY (`booking_product_id`) REFERENCES `bgwybooking_products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `bgwybooking_product_table_slots`
--
ALTER TABLE `bgwybooking_product_table_slots`
  ADD CONSTRAINT `booking_product_table_slots_booking_product_id_foreign` FOREIGN KEY (`booking_product_id`) REFERENCES `bgwybooking_products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `bgwycart`
--
ALTER TABLE `bgwycart`
  ADD CONSTRAINT `cart_channel_id_foreign` FOREIGN KEY (`channel_id`) REFERENCES `bgwychannels` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `cart_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `bgwycustomers` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `bgwycart_items`
--
ALTER TABLE `bgwycart_items`
  ADD CONSTRAINT `cart_items_cart_id_foreign` FOREIGN KEY (`cart_id`) REFERENCES `bgwycart` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `cart_items_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `bgwycart_items` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `cart_items_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `bgwyproducts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `cart_items_tax_category_id_foreign` FOREIGN KEY (`tax_category_id`) REFERENCES `bgwytax_categories` (`id`);

--
-- Constraints for table `bgwycart_payment`
--
ALTER TABLE `bgwycart_payment`
  ADD CONSTRAINT `cart_payment_cart_id_foreign` FOREIGN KEY (`cart_id`) REFERENCES `bgwycart` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `bgwycart_rule_channels`
--
ALTER TABLE `bgwycart_rule_channels`
  ADD CONSTRAINT `cart_rule_channels_cart_rule_id_foreign` FOREIGN KEY (`cart_rule_id`) REFERENCES `bgwycart_rules` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `cart_rule_channels_channel_id_foreign` FOREIGN KEY (`channel_id`) REFERENCES `bgwychannels` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `bgwycart_rule_coupons`
--
ALTER TABLE `bgwycart_rule_coupons`
  ADD CONSTRAINT `cart_rule_coupons_cart_rule_id_foreign` FOREIGN KEY (`cart_rule_id`) REFERENCES `bgwycart_rules` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `bgwycart_rule_coupon_usage`
--
ALTER TABLE `bgwycart_rule_coupon_usage`
  ADD CONSTRAINT `cart_rule_coupon_usage_cart_rule_coupon_id_foreign` FOREIGN KEY (`cart_rule_coupon_id`) REFERENCES `bgwycart_rule_coupons` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `cart_rule_coupon_usage_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `bgwycustomers` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `bgwycart_rule_customers`
--
ALTER TABLE `bgwycart_rule_customers`
  ADD CONSTRAINT `cart_rule_customers_cart_rule_id_foreign` FOREIGN KEY (`cart_rule_id`) REFERENCES `bgwycart_rules` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `cart_rule_customers_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `bgwycustomers` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `bgwycart_rule_customer_groups`
--
ALTER TABLE `bgwycart_rule_customer_groups`
  ADD CONSTRAINT `cart_rule_customer_groups_cart_rule_id_foreign` FOREIGN KEY (`cart_rule_id`) REFERENCES `bgwycart_rules` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `cart_rule_customer_groups_customer_group_id_foreign` FOREIGN KEY (`customer_group_id`) REFERENCES `bgwycustomer_groups` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `bgwycart_rule_translations`
--
ALTER TABLE `bgwycart_rule_translations`
  ADD CONSTRAINT `cart_rule_translations_cart_rule_id_foreign` FOREIGN KEY (`cart_rule_id`) REFERENCES `bgwycart_rules` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `bgwycart_shipping_rates`
--
ALTER TABLE `bgwycart_shipping_rates`
  ADD CONSTRAINT `cart_shipping_rates_cart_address_id_foreign` FOREIGN KEY (`cart_address_id`) REFERENCES `bgwyaddresses` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `bgwycatalog_rule_channels`
--
ALTER TABLE `bgwycatalog_rule_channels`
  ADD CONSTRAINT `catalog_rule_channels_catalog_rule_id_foreign` FOREIGN KEY (`catalog_rule_id`) REFERENCES `bgwycatalog_rules` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `catalog_rule_channels_channel_id_foreign` FOREIGN KEY (`channel_id`) REFERENCES `bgwychannels` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `bgwycatalog_rule_customer_groups`
--
ALTER TABLE `bgwycatalog_rule_customer_groups`
  ADD CONSTRAINT `catalog_rule_customer_groups_catalog_rule_id_foreign` FOREIGN KEY (`catalog_rule_id`) REFERENCES `bgwycatalog_rules` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `catalog_rule_customer_groups_customer_group_id_foreign` FOREIGN KEY (`customer_group_id`) REFERENCES `bgwycustomer_groups` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `bgwycatalog_rule_products`
--
ALTER TABLE `bgwycatalog_rule_products`
  ADD CONSTRAINT `catalog_rule_products_catalog_rule_id_foreign` FOREIGN KEY (`catalog_rule_id`) REFERENCES `bgwycatalog_rules` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `catalog_rule_products_channel_id_foreign` FOREIGN KEY (`channel_id`) REFERENCES `bgwychannels` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `catalog_rule_products_customer_group_id_foreign` FOREIGN KEY (`customer_group_id`) REFERENCES `bgwycustomer_groups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `catalog_rule_products_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `bgwyproducts` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `bgwycatalog_rule_product_prices`
--
ALTER TABLE `bgwycatalog_rule_product_prices`
  ADD CONSTRAINT `catalog_rule_product_prices_catalog_rule_id_foreign` FOREIGN KEY (`catalog_rule_id`) REFERENCES `bgwycatalog_rules` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `catalog_rule_product_prices_channel_id_foreign` FOREIGN KEY (`channel_id`) REFERENCES `bgwychannels` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `catalog_rule_product_prices_customer_group_id_foreign` FOREIGN KEY (`customer_group_id`) REFERENCES `bgwycustomer_groups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `catalog_rule_product_prices_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `bgwyproducts` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `bgwycategory_filterable_attributes`
--
ALTER TABLE `bgwycategory_filterable_attributes`
  ADD CONSTRAINT `category_filterable_attributes_attribute_id_foreign` FOREIGN KEY (`attribute_id`) REFERENCES `bgwyattributes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `category_filterable_attributes_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `bgwycategories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `bgwycategory_translations`
--
ALTER TABLE `bgwycategory_translations`
  ADD CONSTRAINT `category_translations_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `bgwycategories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `category_translations_locale_id_foreign` FOREIGN KEY (`locale_id`) REFERENCES `bgwylocales` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `bgwychannels`
--
ALTER TABLE `bgwychannels`
  ADD CONSTRAINT `channels_base_currency_id_foreign` FOREIGN KEY (`base_currency_id`) REFERENCES `bgwycurrencies` (`id`),
  ADD CONSTRAINT `channels_default_locale_id_foreign` FOREIGN KEY (`default_locale_id`) REFERENCES `bgwylocales` (`id`),
  ADD CONSTRAINT `channels_root_category_id_foreign` FOREIGN KEY (`root_category_id`) REFERENCES `bgwycategories` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `bgwychannel_currencies`
--
ALTER TABLE `bgwychannel_currencies`
  ADD CONSTRAINT `channel_currencies_channel_id_foreign` FOREIGN KEY (`channel_id`) REFERENCES `bgwychannels` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `channel_currencies_currency_id_foreign` FOREIGN KEY (`currency_id`) REFERENCES `bgwycurrencies` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `bgwychannel_inventory_sources`
--
ALTER TABLE `bgwychannel_inventory_sources`
  ADD CONSTRAINT `channel_inventory_sources_channel_id_foreign` FOREIGN KEY (`channel_id`) REFERENCES `bgwychannels` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `channel_inventory_sources_inventory_source_id_foreign` FOREIGN KEY (`inventory_source_id`) REFERENCES `bgwyinventory_sources` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `bgwychannel_locales`
--
ALTER TABLE `bgwychannel_locales`
  ADD CONSTRAINT `channel_locales_channel_id_foreign` FOREIGN KEY (`channel_id`) REFERENCES `bgwychannels` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `channel_locales_locale_id_foreign` FOREIGN KEY (`locale_id`) REFERENCES `bgwylocales` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `bgwycms_page_channels`
--
ALTER TABLE `bgwycms_page_channels`
  ADD CONSTRAINT `cms_page_channels_channel_id_foreign` FOREIGN KEY (`channel_id`) REFERENCES `bgwychannels` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `cms_page_channels_cms_page_id_foreign` FOREIGN KEY (`cms_page_id`) REFERENCES `bgwycms_pages` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `bgwycms_page_translations`
--
ALTER TABLE `bgwycms_page_translations`
  ADD CONSTRAINT `cms_page_translations_cms_page_id_foreign` FOREIGN KEY (`cms_page_id`) REFERENCES `bgwycms_pages` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `bgwycountry_states`
--
ALTER TABLE `bgwycountry_states`
  ADD CONSTRAINT `country_states_country_id_foreign` FOREIGN KEY (`country_id`) REFERENCES `bgwycountries` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `bgwycountry_state_translations`
--
ALTER TABLE `bgwycountry_state_translations`
  ADD CONSTRAINT `country_state_translations_country_state_id_foreign` FOREIGN KEY (`country_state_id`) REFERENCES `bgwycountry_states` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `bgwycountry_translations`
--
ALTER TABLE `bgwycountry_translations`
  ADD CONSTRAINT `country_translations_country_id_foreign` FOREIGN KEY (`country_id`) REFERENCES `bgwycountries` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `bgwycurrency_exchange_rates`
--
ALTER TABLE `bgwycurrency_exchange_rates`
  ADD CONSTRAINT `currency_exchange_rates_target_currency_foreign` FOREIGN KEY (`target_currency`) REFERENCES `bgwycurrencies` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `bgwycustomers`
--
ALTER TABLE `bgwycustomers`
  ADD CONSTRAINT `customers_customer_group_id_foreign` FOREIGN KEY (`customer_group_id`) REFERENCES `bgwycustomer_groups` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `bgwycustomer_social_accounts`
--
ALTER TABLE `bgwycustomer_social_accounts`
  ADD CONSTRAINT `customer_social_accounts_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `bgwycustomers` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `bgwydownloadable_link_purchased`
--
ALTER TABLE `bgwydownloadable_link_purchased`
  ADD CONSTRAINT `downloadable_link_purchased_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `bgwycustomers` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `downloadable_link_purchased_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `bgwyorders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `downloadable_link_purchased_order_item_id_foreign` FOREIGN KEY (`order_item_id`) REFERENCES `bgwyorder_items` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `bgwyinvoices`
--
ALTER TABLE `bgwyinvoices`
  ADD CONSTRAINT `invoices_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `bgwyorders` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `bgwyinvoice_items`
--
ALTER TABLE `bgwyinvoice_items`
  ADD CONSTRAINT `invoice_items_invoice_id_foreign` FOREIGN KEY (`invoice_id`) REFERENCES `bgwyinvoices` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `invoice_items_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `bgwyinvoice_items` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `bgwyorders`
--
ALTER TABLE `bgwyorders`
  ADD CONSTRAINT `orders_channel_id_foreign` FOREIGN KEY (`channel_id`) REFERENCES `bgwychannels` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `orders_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `bgwycustomers` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `bgwyorder_brands`
--
ALTER TABLE `bgwyorder_brands`
  ADD CONSTRAINT `order_brands_brand_foreign` FOREIGN KEY (`brand`) REFERENCES `bgwyattribute_options` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `order_brands_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `bgwyorders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `order_brands_order_item_id_foreign` FOREIGN KEY (`order_item_id`) REFERENCES `bgwyorder_items` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `order_brands_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `bgwyproducts` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `bgwyorder_comments`
--
ALTER TABLE `bgwyorder_comments`
  ADD CONSTRAINT `order_comments_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `bgwyorders` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `bgwyorder_items`
--
ALTER TABLE `bgwyorder_items`
  ADD CONSTRAINT `order_items_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `bgwyorders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `order_items_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `bgwyorder_items` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `bgwyorder_payment`
--
ALTER TABLE `bgwyorder_payment`
  ADD CONSTRAINT `order_payment_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `bgwyorders` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `bgwyproducts`
--
ALTER TABLE `bgwyproducts`
  ADD CONSTRAINT `products_attribute_family_id_foreign` FOREIGN KEY (`attribute_family_id`) REFERENCES `bgwyattribute_families` (`id`),
  ADD CONSTRAINT `products_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `bgwyproducts` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `bgwyproduct_attribute_values`
--
ALTER TABLE `bgwyproduct_attribute_values`
  ADD CONSTRAINT `product_attribute_values_attribute_id_foreign` FOREIGN KEY (`attribute_id`) REFERENCES `bgwyattributes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `product_attribute_values_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `bgwyproducts` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `bgwyproduct_bundle_options`
--
ALTER TABLE `bgwyproduct_bundle_options`
  ADD CONSTRAINT `product_bundle_options_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `bgwyproducts` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `bgwyproduct_bundle_option_products`
--
ALTER TABLE `bgwyproduct_bundle_option_products`
  ADD CONSTRAINT `product_bundle_option_products_product_bundle_option_id_foreign` FOREIGN KEY (`product_bundle_option_id`) REFERENCES `bgwyproduct_bundle_options` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `product_bundle_option_products_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `bgwyproducts` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `bgwyproduct_bundle_option_translations`
--
ALTER TABLE `bgwyproduct_bundle_option_translations`
  ADD CONSTRAINT `product_bundle_option_translations_option_id_foreign` FOREIGN KEY (`product_bundle_option_id`) REFERENCES `bgwyproduct_bundle_options` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `bgwyproduct_categories`
--
ALTER TABLE `bgwyproduct_categories`
  ADD CONSTRAINT `product_categories_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `bgwycategories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `product_categories_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `bgwyproducts` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `bgwyproduct_cross_sells`
--
ALTER TABLE `bgwyproduct_cross_sells`
  ADD CONSTRAINT `product_cross_sells_child_id_foreign` FOREIGN KEY (`child_id`) REFERENCES `bgwyproducts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `product_cross_sells_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `bgwyproducts` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `bgwyproduct_customer_group_prices`
--
ALTER TABLE `bgwyproduct_customer_group_prices`
  ADD CONSTRAINT `product_customer_group_prices_customer_group_id_foreign` FOREIGN KEY (`customer_group_id`) REFERENCES `bgwycustomer_groups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `product_customer_group_prices_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `bgwyproducts` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `bgwyproduct_downloadable_links`
--
ALTER TABLE `bgwyproduct_downloadable_links`
  ADD CONSTRAINT `product_downloadable_links_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `bgwyproducts` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `bgwyproduct_downloadable_link_translations`
--
ALTER TABLE `bgwyproduct_downloadable_link_translations`
  ADD CONSTRAINT `link_translations_link_id_foreign` FOREIGN KEY (`product_downloadable_link_id`) REFERENCES `bgwyproduct_downloadable_links` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `bgwyproduct_downloadable_samples`
--
ALTER TABLE `bgwyproduct_downloadable_samples`
  ADD CONSTRAINT `product_downloadable_samples_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `bgwyproducts` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `bgwyproduct_downloadable_sample_translations`
--
ALTER TABLE `bgwyproduct_downloadable_sample_translations`
  ADD CONSTRAINT `sample_translations_sample_id_foreign` FOREIGN KEY (`product_downloadable_sample_id`) REFERENCES `bgwyproduct_downloadable_samples` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `bgwyproduct_flat`
--
ALTER TABLE `bgwyproduct_flat`
  ADD CONSTRAINT `product_flat_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `bgwyproduct_flat` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `product_flat_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `bgwyproducts` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `bgwyproduct_grouped_products`
--
ALTER TABLE `bgwyproduct_grouped_products`
  ADD CONSTRAINT `product_grouped_products_associated_product_id_foreign` FOREIGN KEY (`associated_product_id`) REFERENCES `bgwyproducts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `product_grouped_products_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `bgwyproducts` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `bgwyproduct_images`
--
ALTER TABLE `bgwyproduct_images`
  ADD CONSTRAINT `product_images_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `bgwyproducts` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `bgwyproduct_inventories`
--
ALTER TABLE `bgwyproduct_inventories`
  ADD CONSTRAINT `product_inventories_inventory_source_id_foreign` FOREIGN KEY (`inventory_source_id`) REFERENCES `bgwyinventory_sources` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `product_inventories_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `bgwyproducts` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `bgwyproduct_ordered_inventories`
--
ALTER TABLE `bgwyproduct_ordered_inventories`
  ADD CONSTRAINT `product_ordered_inventories_channel_id_foreign` FOREIGN KEY (`channel_id`) REFERENCES `bgwychannels` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `product_ordered_inventories_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `bgwyproducts` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `bgwyproduct_relations`
--
ALTER TABLE `bgwyproduct_relations`
  ADD CONSTRAINT `product_relations_child_id_foreign` FOREIGN KEY (`child_id`) REFERENCES `bgwyproducts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `product_relations_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `bgwyproducts` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `bgwyproduct_reviews`
--
ALTER TABLE `bgwyproduct_reviews`
  ADD CONSTRAINT `product_reviews_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `bgwyproducts` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `bgwyproduct_super_attributes`
--
ALTER TABLE `bgwyproduct_super_attributes`
  ADD CONSTRAINT `product_super_attributes_attribute_id_foreign` FOREIGN KEY (`attribute_id`) REFERENCES `bgwyattributes` (`id`),
  ADD CONSTRAINT `product_super_attributes_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `bgwyproducts` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `bgwyproduct_up_sells`
--
ALTER TABLE `bgwyproduct_up_sells`
  ADD CONSTRAINT `product_up_sells_child_id_foreign` FOREIGN KEY (`child_id`) REFERENCES `bgwyproducts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `product_up_sells_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `bgwyproducts` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `bgwyrefunds`
--
ALTER TABLE `bgwyrefunds`
  ADD CONSTRAINT `refunds_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `bgwyorders` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `bgwyrefund_items`
--
ALTER TABLE `bgwyrefund_items`
  ADD CONSTRAINT `refund_items_order_item_id_foreign` FOREIGN KEY (`order_item_id`) REFERENCES `bgwyorder_items` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `refund_items_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `bgwyrefund_items` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `refund_items_refund_id_foreign` FOREIGN KEY (`refund_id`) REFERENCES `bgwyrefunds` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `bgwyshipments`
--
ALTER TABLE `bgwyshipments`
  ADD CONSTRAINT `shipments_inventory_source_id_foreign` FOREIGN KEY (`inventory_source_id`) REFERENCES `bgwyinventory_sources` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `shipments_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `bgwyorders` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `bgwyshipment_items`
--
ALTER TABLE `bgwyshipment_items`
  ADD CONSTRAINT `shipment_items_shipment_id_foreign` FOREIGN KEY (`shipment_id`) REFERENCES `bgwyshipments` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `bgwysliders`
--
ALTER TABLE `bgwysliders`
  ADD CONSTRAINT `sliders_channel_id_foreign` FOREIGN KEY (`channel_id`) REFERENCES `bgwychannels` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `bgwysubscribers_list`
--
ALTER TABLE `bgwysubscribers_list`
  ADD CONSTRAINT `subscribers_list_channel_id_foreign` FOREIGN KEY (`channel_id`) REFERENCES `bgwychannels` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `bgwytax_categories_tax_rates`
--
ALTER TABLE `bgwytax_categories_tax_rates`
  ADD CONSTRAINT `tax_categories_tax_rates_tax_category_id_foreign` FOREIGN KEY (`tax_category_id`) REFERENCES `bgwytax_categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `tax_categories_tax_rates_tax_rate_id_foreign` FOREIGN KEY (`tax_rate_id`) REFERENCES `bgwytax_rates` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `bgwyvelocity_contents_translations`
--
ALTER TABLE `bgwyvelocity_contents_translations`
  ADD CONSTRAINT `velocity_contents_translations_content_id_foreign` FOREIGN KEY (`content_id`) REFERENCES `bgwyvelocity_contents` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `bgwyvelocity_customer_compare_products`
--
ALTER TABLE `bgwyvelocity_customer_compare_products`
  ADD CONSTRAINT `velocity_customer_compare_products_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `bgwycustomers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `velocity_customer_compare_products_product_flat_id_foreign` FOREIGN KEY (`product_flat_id`) REFERENCES `bgwyproduct_flat` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `bgwywishlist`
--
ALTER TABLE `bgwywishlist`
  ADD CONSTRAINT `wishlist_channel_id_foreign` FOREIGN KEY (`channel_id`) REFERENCES `bgwychannels` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `wishlist_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `bgwycustomers` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `wishlist_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `bgwyproducts` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
