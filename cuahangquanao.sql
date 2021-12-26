-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 25, 2021 at 05:34 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cuahangquanao`
--

-- --------------------------------------------------------

--
-- Table structure for table `accountrole`
--

CREATE TABLE `accountrole` (
  `chucvu_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `accounts`
--

CREATE TABLE `accounts` (
  `user_id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `status` int(11) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `accounts`
--

INSERT INTO `accounts` (`user_id`, `name`, `email`, `username`, `password`, `image`, `phone`, `status`, `created_at`, `updated_at`) VALUES
(1, 'aaaa', 'admin@gmail.com', NULL, '$2y$10$GeqckT853QVnKc5RbmhDCOWn6chieBHOjOSZAo892dBtihOAWQEk2', NULL, NULL, 1, '2021-12-24 03:11:13', '2021-12-24 03:11:13');

-- --------------------------------------------------------

--
-- Table structure for table `age`
--

CREATE TABLE `age` (
  `age_id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `age`
--

INSERT INTO `age` (`age_id`, `name`) VALUES
(1, 'trẻ con (3 - 11 tuổi)'),
(2, 'thiếu niên (12 - 19 tuổi)'),
(3, 'người lớn (20 -35 tuổi)'),
(4, 'trung niên (35 - 50)'),
(5, 'người già (> 50)');

-- --------------------------------------------------------

--
-- Table structure for table `brand`
--

CREATE TABLE `brand` (
  `brand_id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `brand`
--

INSERT INTO `brand` (`brand_id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Gucci', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `category_detail`
--

CREATE TABLE `category_detail` (
  `cateagesex_id` int(11) NOT NULL,
  `catesex_id` int(11) NOT NULL,
  `age_id` int(11) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `category_detail`
--

INSERT INTO `category_detail` (`cateagesex_id`, `catesex_id`, `age_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, NULL, NULL),
(2, 1, 2, NULL, NULL),
(3, 1, 3, NULL, NULL),
(4, 1, 4, NULL, NULL),
(5, 1, 5, NULL, NULL),
(6, 2, 1, NULL, NULL),
(7, 2, 2, NULL, NULL),
(8, 2, 3, NULL, NULL),
(9, 2, 4, NULL, NULL),
(10, 2, 5, NULL, NULL),
(11, 3, 1, NULL, NULL),
(12, 3, 2, NULL, NULL),
(13, 3, 3, NULL, NULL),
(14, 3, 4, NULL, NULL),
(15, 3, 5, NULL, NULL),
(16, 4, 1, NULL, NULL),
(17, 4, 2, NULL, NULL),
(18, 4, 3, NULL, NULL),
(19, 4, 4, NULL, NULL),
(20, 4, 5, NULL, NULL),
(21, 5, 1, NULL, NULL),
(22, 5, 2, NULL, NULL),
(23, 5, 3, NULL, NULL),
(24, 5, 4, NULL, NULL),
(25, 5, 5, NULL, NULL),
(26, 6, 1, NULL, NULL),
(27, 6, 2, NULL, NULL),
(28, 6, 3, NULL, NULL),
(29, 6, 4, NULL, NULL),
(30, 6, 5, NULL, NULL),
(31, 7, 1, NULL, NULL),
(32, 7, 2, NULL, NULL),
(33, 7, 3, NULL, NULL),
(34, 7, 4, NULL, NULL),
(35, 7, 5, NULL, NULL),
(36, 8, 1, NULL, NULL),
(37, 8, 2, NULL, NULL),
(38, 8, 3, NULL, NULL),
(39, 8, 4, NULL, NULL),
(40, 8, 5, NULL, NULL),
(41, 9, 1, NULL, NULL),
(42, 9, 2, NULL, NULL),
(43, 9, 3, NULL, NULL),
(44, 9, 4, NULL, NULL),
(45, 9, 5, NULL, NULL),
(46, 10, 1, NULL, NULL),
(47, 10, 2, NULL, NULL),
(48, 10, 3, NULL, NULL),
(49, 10, 4, NULL, NULL),
(50, 10, 5, NULL, NULL),
(51, 11, 1, NULL, NULL),
(52, 11, 2, NULL, NULL),
(53, 11, 3, NULL, NULL),
(54, 11, 4, NULL, NULL),
(55, 11, 5, NULL, NULL),
(56, 12, 1, NULL, NULL),
(57, 12, 2, NULL, NULL),
(58, 12, 3, NULL, NULL),
(59, 12, 4, NULL, NULL),
(60, 12, 5, NULL, NULL),
(61, 13, 1, NULL, NULL),
(62, 13, 2, NULL, NULL),
(63, 13, 3, NULL, NULL),
(64, 13, 4, NULL, NULL),
(65, 13, 5, NULL, NULL),
(66, 14, 1, NULL, NULL),
(67, 14, 2, NULL, NULL),
(68, 14, 3, NULL, NULL),
(69, 14, 4, NULL, NULL),
(70, 14, 5, NULL, NULL),
(71, 15, 1, NULL, NULL),
(72, 15, 2, NULL, NULL),
(73, 15, 3, NULL, NULL),
(74, 15, 4, NULL, NULL),
(75, 15, 5, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `category_product`
--

CREATE TABLE `category_product` (
  `category_id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `category_product`
--

INSERT INTO `category_product` (`category_id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Áo', 1, NULL, NULL),
(2, 'Quần', 1, NULL, NULL),
(3, 'Giày', 1, NULL, NULL),
(4, 'Dép', 1, NULL, NULL),
(5, 'Phụ kiện', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `catesex`
--

CREATE TABLE `catesex` (
  `catesex_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `sex_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `catesex`
--

INSERT INTO `catesex` (`catesex_id`, `category_id`, `sex_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 3),
(4, 2, 1),
(5, 2, 2),
(6, 2, 3),
(7, 3, 1),
(8, 3, 2),
(9, 3, 3),
(10, 4, 1),
(11, 4, 2),
(12, 4, 3),
(13, 5, 1),
(14, 5, 2),
(15, 5, 3);

-- --------------------------------------------------------

--
-- Table structure for table `chucnang`
--

CREATE TABLE `chucnang` (
  `chucnang_id` int(11) NOT NULL,
  `name` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `commment`
--

CREATE TABLE `commment` (
  `cmt_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `content` varchar(1000) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `customer_id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `status` int(11) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`customer_id`, `name`, `email`, `password`, `image`, `phone`, `status`, `created_at`, `updated_at`) VALUES
(1, 'đạt bùi', 'buitridat@gmail.com', '$2y$10$VWRon..kRBolmjaP.Gs3iOnISzpfh8mvi8hmVmq/ast.Ig1VClMgi', NULL, '0346464947', 0, '2021-12-08 06:26:49', '2021-12-25 14:04:35'),
(2, 'bùi trí đạt', 'buitridat123@gmail.com', '$2y$10$X9OwywTvPIYaz8t6kT3CQuHGBBrjPOl1jJcyDvrJxJBwEZ4XizgKS', NULL, NULL, 0, '2021-12-08 06:43:40', '2021-12-25 14:56:32'),
(3, 'bùi trí đạt', 'buitridat1234@gmail.com', '$2y$10$cO7zkRYA9k5LCucKGkaF0eVpKPZfb/Z5sNsjTKpY15lBR9hG/KIdq', NULL, NULL, 0, '2021-12-08 06:44:36', '2021-12-25 14:04:35'),
(4, 'a', 'aaaaa@gmail.com', '$2y$10$556t.K0VuZxJHk8UqrzUmutif0Lkw4oZlCRFxH4SwtACwpQ.QHTkG', NULL, NULL, 0, '2021-12-16 07:04:51', '2021-12-25 14:56:33'),
(5, 'abc', 'buitridat240601@gmail.com', '$2y$10$rtBjhc.UMF9d1rk.Wu/41Oyif1zoQClPoQmtzAaG8FfrzU/uICfzG', NULL, NULL, 1, '2021-12-16 07:05:10', '2021-12-25 12:27:43'),
(6, 'aaaa', 'hao456c@gmail.com', '$2y$10$3ggqqdtk06ubUNc.7UzzXOrwXSnUato7oWMPpRsI0wYWKrteq3dqq', NULL, NULL, 1, '2021-12-23 10:38:15', '2021-12-25 12:23:56'),
(7, 'aaaa', 'lhp.bao@gmail.com', '$2y$10$49Rxi.EchzyYqGgcXdN6uudaGmM/tpIu05Jl29alXL3NzVD66xW3O', NULL, NULL, 1, '2021-12-24 03:07:35', '2021-12-25 12:24:12'),
(8, 'aaaa', 'a@gmail.com', '$2y$10$TZGxMnXe8ahfkxVdijIPD.VA6DX/XGn3m6PiC42HVjiHNpV3kTXz.', NULL, NULL, 1, '2021-12-24 03:09:22', '2021-12-25 12:24:44'),
(9, 'aaaa', 'lhp2.bao@gmail.com', '$2y$10$49Rxi.EchzyYqGgcXdN6uudaGmM/tpIu05Jl29alXL3NzVD66xW3O', NULL, NULL, 1, '2021-12-24 03:07:35', '2021-12-25 12:24:44'),
(10, 'aaaa', 'lhp23.bao@gmail.com', '$2y$10$49Rxi.EchzyYqGgcXdN6uudaGmM/tpIu05Jl29alXL3NzVD66xW3O', NULL, NULL, 1, '2021-12-24 03:07:35', '2021-12-25 12:24:44');

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
-- Table structure for table `gioitinh`
--

CREATE TABLE `gioitinh` (
  `sex_id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `gioitinh`
--

INSERT INTO `gioitinh` (`sex_id`, `name`) VALUES
(1, 'Nam'),
(2, 'Nữ'),
(3, 'Cả Hai');

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
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `nhapdetail`
--

CREATE TABLE `nhapdetail` (
  `nhap_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `orderdetail`
--

CREATE TABLE `orderdetail` (
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `price` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `subtotal` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `orderdetail`
--

INSERT INTO `orderdetail` (`order_id`, `product_id`, `price`, `quantity`, `subtotal`, `created_at`, `updated_at`) VALUES
(4, 1, 8900000, 1, 8900000, '2021-12-12 05:54:18', '2021-12-12 05:54:18'),
(5, 1, 8900000, 1, 8900000, '2021-12-12 05:55:08', '2021-12-12 05:55:08'),
(5, 2, 19000000, 3, 57000000, '2021-12-12 05:55:08', '2021-12-12 05:55:08'),
(5, 3, 4000000, 1, 4000000, '2021-12-12 05:55:08', '2021-12-12 05:55:08'),
(6, 1, 8900000, 1, 8900000, '2021-12-12 05:56:41', '2021-12-12 05:56:41'),
(6, 2, 19000000, 3, 57000000, '2021-12-12 05:56:41', '2021-12-12 05:56:41'),
(6, 3, 4000000, 1, 4000000, '2021-12-12 05:56:41', '2021-12-12 05:56:41'),
(7, 1, 8900000, 1, 8900000, '2021-12-12 06:25:15', '2021-12-12 06:25:15'),
(7, 2, 19000000, 10, 190000000, '2021-12-12 06:25:15', '2021-12-12 06:25:15'),
(7, 3, 4000000, 1, 4000000, '2021-12-12 06:25:15', '2021-12-12 06:25:15'),
(9, 3, 4000000, 2, 8000000, '2021-12-12 06:43:53', '2021-12-12 06:43:53'),
(10, 1, 8900000, 4, 35600000, '2021-12-23 14:57:33', '2021-12-23 14:57:33'),
(10, 2, 19000000, 2, 38000000, '2021-12-23 14:57:32', '2021-12-23 14:57:32'),
(10, 3, 4000000, 1, 4000000, '2021-12-23 14:57:32', '2021-12-23 14:57:32');

-- --------------------------------------------------------

--
-- Table structure for table `orderquanao`
--

CREATE TABLE `orderquanao` (
  `order_id` int(11) NOT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `total` int(11) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `orderquanao`
--

INSERT INTO `orderquanao` (`order_id`, `customer_id`, `user_id`, `status`, `total`, `address`, `created_at`, `updated_at`) VALUES
(4, 1, NULL, 1, 8900000, '0', '2021-12-12 05:54:18', '2021-12-25 04:42:41'),
(5, 1, NULL, 1, 69900000, '0', '2021-12-12 05:55:08', '2021-12-25 04:48:14'),
(6, 1, NULL, 1, 69900000, 'Hà Nội', '2021-12-12 05:56:41', '2021-12-25 04:42:52'),
(7, 1, NULL, 1, 202900000, '001', '2021-12-12 06:25:15', '2021-12-25 04:43:54'),
(8, 1, NULL, 1, 0, '001', '2021-12-12 06:35:58', '2021-12-25 05:42:40'),
(9, 1, NULL, 1, 8000000, '001', '2021-12-12 06:43:53', '2021-12-25 14:05:05'),
(10, 6, NULL, 0, 77600000, '0', '2021-12-23 14:57:32', '2021-12-25 04:41:00');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `phankhuc`
--

CREATE TABLE `phankhuc` (
  `phankhuc_id` int(11) NOT NULL,
  `name` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `phieunhap`
--

CREATE TABLE `phieunhap` (
  `nhap_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `phieuxuat`
--

CREATE TABLE `phieuxuat` (
  `xuat_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `product_id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL,
  `description` varchar(1000) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `brand_id` int(11) DEFAULT NULL,
  `rating` int(11) DEFAULT NULL,
  `cateagesex_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`product_id`, `name`, `quantity`, `price`, `image`, `description`, `status`, `brand_id`, `rating`, `cateagesex_id`, `created_at`, `updated_at`) VALUES
(1, 'Gucci Kids GG Motif Polo Shirt', 95, 8900000, NULL, 'Siêu đẹp', 1, 1, NULL, 1, NULL, '2021-12-23 14:57:33'),
(2, 'Gucci Interlocking G Patch Trousers', 88, 19000000, NULL, NULL, 0, 1, NULL, 18, NULL, '2021-12-25 14:04:51'),
(3, 'Gucci Kids Vintage Logo Printed T-Shirt', 96, 4000000, NULL, NULL, 0, 1, NULL, 1, NULL, '2021-12-25 14:04:52'),
(4, 'Gucci Kids Vintage Logo Printed T-Shirt test', 96, 4000000, NULL, NULL, 1, 1, NULL, 1, NULL, '2021-12-23 14:57:33');

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `chucvu_id` int(11) NOT NULL,
  `name` varchar(20) DEFAULT NULL,
  `chucnang_id` int(11) NOT NULL,
  `phankhuc_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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

-- --------------------------------------------------------

--
-- Table structure for table `xuatdetail`
--

CREATE TABLE `xuatdetail` (
  `xuat_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accountrole`
--
ALTER TABLE `accountrole`
  ADD PRIMARY KEY (`chucvu_id`,`user_id`),
  ADD KEY `fk_user_acc` (`user_id`);

--
-- Indexes for table `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `age`
--
ALTER TABLE `age`
  ADD PRIMARY KEY (`age_id`);

--
-- Indexes for table `brand`
--
ALTER TABLE `brand`
  ADD PRIMARY KEY (`brand_id`);

--
-- Indexes for table `category_detail`
--
ALTER TABLE `category_detail`
  ADD PRIMARY KEY (`cateagesex_id`,`catesex_id`,`age_id`),
  ADD KEY `fk_csid_catesex` (`catesex_id`),
  ADD KEY `fk_ageid_age` (`age_id`);

--
-- Indexes for table `category_product`
--
ALTER TABLE `category_product`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `catesex`
--
ALTER TABLE `catesex`
  ADD PRIMARY KEY (`catesex_id`,`category_id`,`sex_id`),
  ADD KEY `fk_cateid_catepro` (`category_id`),
  ADD KEY `fk_sexid_gioitinh` (`sex_id`);

--
-- Indexes for table `chucnang`
--
ALTER TABLE `chucnang`
  ADD PRIMARY KEY (`chucnang_id`);

--
-- Indexes for table `commment`
--
ALTER TABLE `commment`
  ADD PRIMARY KEY (`cmt_id`,`product_id`,`customer_id`),
  ADD KEY `fk_proid_prod` (`product_id`),
  ADD KEY `fk_cusid_customer` (`customer_id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `gioitinh`
--
ALTER TABLE `gioitinh`
  ADD PRIMARY KEY (`sex_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nhapdetail`
--
ALTER TABLE `nhapdetail`
  ADD PRIMARY KEY (`nhap_id`,`product_id`),
  ADD KEY `fk_proid_product` (`product_id`);

--
-- Indexes for table `orderdetail`
--
ALTER TABLE `orderdetail`
  ADD PRIMARY KEY (`order_id`,`product_id`),
  ADD KEY `fk_productid_pro` (`product_id`);

--
-- Indexes for table `orderquanao`
--
ALTER TABLE `orderquanao`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `fk_cusid_cus` (`customer_id`),
  ADD KEY `fk_userid_accounts` (`user_id`);

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
-- Indexes for table `phankhuc`
--
ALTER TABLE `phankhuc`
  ADD PRIMARY KEY (`phankhuc_id`);

--
-- Indexes for table `phieunhap`
--
ALTER TABLE `phieunhap`
  ADD PRIMARY KEY (`nhap_id`),
  ADD KEY `fk_userid_ac` (`user_id`);

--
-- Indexes for table `phieuxuat`
--
ALTER TABLE `phieuxuat`
  ADD PRIMARY KEY (`xuat_id`),
  ADD KEY `fk_userid_acc` (`user_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `fk_brandid_brand` (`brand_id`),
  ADD KEY `fk_cateas_catedel` (`cateagesex_id`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`chucvu_id`,`chucnang_id`,`phankhuc_id`),
  ADD KEY `fk_cnid_chucnang` (`chucnang_id`),
  ADD KEY `fk_pkid_phankhuc` (`phankhuc_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `xuatdetail`
--
ALTER TABLE `xuatdetail`
  ADD PRIMARY KEY (`xuat_id`,`product_id`),
  ADD KEY `fk_proid_product2` (`product_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accounts`
--
ALTER TABLE `accounts`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `age`
--
ALTER TABLE `age`
  MODIFY `age_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `brand`
--
ALTER TABLE `brand`
  MODIFY `brand_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `category_detail`
--
ALTER TABLE `category_detail`
  MODIFY `cateagesex_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT for table `category_product`
--
ALTER TABLE `category_product`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `catesex`
--
ALTER TABLE `catesex`
  MODIFY `catesex_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `chucnang`
--
ALTER TABLE `chucnang`
  MODIFY `chucnang_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `commment`
--
ALTER TABLE `commment`
  MODIFY `cmt_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gioitinh`
--
ALTER TABLE `gioitinh`
  MODIFY `sex_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `orderquanao`
--
ALTER TABLE `orderquanao`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `phankhuc`
--
ALTER TABLE `phankhuc`
  MODIFY `phankhuc_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `phieunhap`
--
ALTER TABLE `phieunhap`
  MODIFY `nhap_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `phieuxuat`
--
ALTER TABLE `phieuxuat`
  MODIFY `xuat_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `role`
--
ALTER TABLE `role`
  MODIFY `chucvu_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `accountrole`
--
ALTER TABLE `accountrole`
  ADD CONSTRAINT `fk_chucvu_role` FOREIGN KEY (`chucvu_id`) REFERENCES `role` (`chucvu_id`),
  ADD CONSTRAINT `fk_user_acc` FOREIGN KEY (`user_id`) REFERENCES `accounts` (`user_id`);

--
-- Constraints for table `category_detail`
--
ALTER TABLE `category_detail`
  ADD CONSTRAINT `fk_ageid_age` FOREIGN KEY (`age_id`) REFERENCES `age` (`age_id`),
  ADD CONSTRAINT `fk_csid_catesex` FOREIGN KEY (`catesex_id`) REFERENCES `catesex` (`catesex_id`);

--
-- Constraints for table `catesex`
--
ALTER TABLE `catesex`
  ADD CONSTRAINT `fk_cateid_catepro` FOREIGN KEY (`category_id`) REFERENCES `category_product` (`category_id`),
  ADD CONSTRAINT `fk_sexid_gioitinh` FOREIGN KEY (`sex_id`) REFERENCES `gioitinh` (`sex_id`);

--
-- Constraints for table `commment`
--
ALTER TABLE `commment`
  ADD CONSTRAINT `fk_cusid_customer` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`),
  ADD CONSTRAINT `fk_proid_prod` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`);

--
-- Constraints for table `nhapdetail`
--
ALTER TABLE `nhapdetail`
  ADD CONSTRAINT `fk_nhapid_pn` FOREIGN KEY (`nhap_id`) REFERENCES `phieunhap` (`nhap_id`),
  ADD CONSTRAINT `fk_proid_product` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`);

--
-- Constraints for table `orderdetail`
--
ALTER TABLE `orderdetail`
  ADD CONSTRAINT `fk_orderid_order` FOREIGN KEY (`order_id`) REFERENCES `orderquanao` (`order_id`),
  ADD CONSTRAINT `fk_productid_pro` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`);

--
-- Constraints for table `orderquanao`
--
ALTER TABLE `orderquanao`
  ADD CONSTRAINT `fk_cusid_cus` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`),
  ADD CONSTRAINT `fk_userid_accounts` FOREIGN KEY (`user_id`) REFERENCES `accounts` (`user_id`);

--
-- Constraints for table `phieunhap`
--
ALTER TABLE `phieunhap`
  ADD CONSTRAINT `fk_userid_ac` FOREIGN KEY (`user_id`) REFERENCES `accounts` (`user_id`);

--
-- Constraints for table `phieuxuat`
--
ALTER TABLE `phieuxuat`
  ADD CONSTRAINT `fk_userid_acc` FOREIGN KEY (`user_id`) REFERENCES `accounts` (`user_id`);

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `fk_brandid_brand` FOREIGN KEY (`brand_id`) REFERENCES `brand` (`brand_id`),
  ADD CONSTRAINT `fk_cateas_catedel` FOREIGN KEY (`cateagesex_id`) REFERENCES `category_detail` (`cateagesex_id`);

--
-- Constraints for table `role`
--
ALTER TABLE `role`
  ADD CONSTRAINT `fk_cnid_chucnang` FOREIGN KEY (`chucnang_id`) REFERENCES `chucnang` (`chucnang_id`),
  ADD CONSTRAINT `fk_pkid_phankhuc` FOREIGN KEY (`phankhuc_id`) REFERENCES `phankhuc` (`phankhuc_id`);

--
-- Constraints for table `xuatdetail`
--
ALTER TABLE `xuatdetail`
  ADD CONSTRAINT `fk_proid_product2` FOREIGN KEY (`product_id`) REFERENCES `product` (`product_id`),
  ADD CONSTRAINT `fk_xuatid_pn` FOREIGN KEY (`xuat_id`) REFERENCES `phieuxuat` (`xuat_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
