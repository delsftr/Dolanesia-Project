-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 22, 2022 at 03:49 PM
-- Server version: 5.7.33
-- PHP Version: 7.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dolanesia`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Mountain', '2022-12-22 08:08:00', '2022-12-22 08:12:04'),
(2, 'Beach', '2022-12-22 08:08:07', '2022-12-22 08:12:08'),
(3, 'Museum', '2022-12-22 08:12:20', '2022-12-22 08:12:20'),
(4, 'Hills', '2022-12-22 08:12:30', '2022-12-22 08:12:30'),
(5, 'Island', '2022-12-22 08:12:38', '2022-12-22 08:12:38'),
(6, 'City', '2022-12-22 08:12:42', '2022-12-22 08:12:42'),
(7, 'Temple', '2022-12-22 08:14:20', '2022-12-22 08:14:20'),
(8, 'Village', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `destinations`
--

CREATE TABLE `destinations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `about` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ticket` int(11) NOT NULL,
  `price` double NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `destinations`
--

INSERT INTO `destinations` (`id`, `name`, `address`, `phone`, `about`, `image`, `ticket`, `price`, `category_id`, `created_at`, `updated_at`) VALUES
(1, 'Bromo Tengger Semeru', 'Area Gn. Bromo, Podokoyo, Kec. Tosari, Pasuruan, Jawa Timur', '123456789', 'Gunung vulkanis yang indah di Taman Nasional Bromo Tengger Semeru ini dilengkapi tangga hingga ke atas kawah', 'pic120222244.jpg', 45, 1500000, 1, '2022-12-22 08:10:45', '2022-12-22 08:28:44'),
(2, 'Borobudur Temple', 'Badrawati, Kw. Candi Borobudur, Borobudur, Kec. Borobudur, Kabupaten Magelang, Jawa Tengah', '1293788266', 'Candi Borobudur adalah sebuah candi Buddha yang terletak di Borobudur, Magelang, Jawa Tengah, Indonesia. Candi ini terletak kurang lebih 100 km di sebelah barat daya Semarang, 86 km di sebelah barat Surakarta, dan 40 km di sebelah barat laut', 'pic220222212.jpg', 97, 700000, 7, '2022-12-22 08:16:12', '2022-12-22 08:44:01'),
(3, 'Menganti Beach', 'Jl. Pantai Menganti, Tj. Karangboto, Karangduwur, Kec. Ayah, Kabupaten Kebumen, Jawa Tengah 54473', '123456789', 'Pantai Menganti merupakan sebuah pantai yang berlokasi di Desa Karangduwur, Kecamatan Ayah, Kabupaten Kebumen, Jawa Tengah', 'pic320222233.jpg', 59, 50000, 1, '2022-12-22 08:18:33', '2022-12-22 08:44:36'),
(4, 'Prambanan Temple', 'Jl. Raya Solo - Yogyakarta No.16, Kranggan, Bokoharjo, Kec. Prambanan, Kabupaten Sleman, Daerah Istimewa Yogyakarta 55571', '1274496401', 'Kompleks candi Hindu yang luas & dibangun pada abad ke-9 dengan struktur batu atas meruncing & patung.', 'pic420222227.jpg', 198, 80000, 1, '2022-12-22 08:21:27', '2022-12-22 08:43:53'),
(5, 'Home Village', 'Jln. Home Village, Padang, Sumatera Barat', '123456789', 'Padang adalah kota terbesar di pantai barat Pulau Sumatra sekaligus ibu kota Provinsi Sumatra Barat, Indonesia. Kota ini adalah pintu gerbang barat Indonesia dari Samudra Hindia', 'pic520222212.jpg', 91, 300000, 8, '2022-12-22 08:25:12', '2022-12-22 08:44:56');

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
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
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
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_12_22_072214_create_categories_table', 1),
(6, '2022_12_22_072222_create_destinations_table', 1),
(7, '2022_12_22_074401_create_transactions_table', 1);

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
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `destination_id` bigint(20) UNSIGNED NOT NULL,
  `ticket_qty` int(11) NOT NULL,
  `subtotal` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `user_id`, `destination_id`, `ticket_qty`, `subtotal`, `created_at`, `updated_at`) VALUES
(1, 2, 1, 5, 7500000, '2022-12-22 08:28:44', '2022-12-22 08:28:44'),
(2, 2, 3, 2, 100000, '2022-12-22 08:28:55', '2022-12-22 08:28:55'),
(3, 3, 5, 3, 900000, '2022-12-22 08:43:34', '2022-12-22 08:43:34'),
(4, 4, 4, 2, 160000, '2022-12-22 08:43:53', '2022-12-22 08:43:53'),
(5, 4, 2, 3, 2100000, '2022-12-22 08:44:01', '2022-12-22 08:44:01'),
(6, 5, 3, 9, 450000, '2022-12-22 08:44:36', '2022-12-22 08:44:36'),
(7, 6, 5, 3, 900000, '2022-12-22 08:44:56', '2022-12-22 08:44:56'),
(8, 6, 5, 3, 900000, '2022-12-22 08:44:56', '2022-12-22 08:44:56');

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
  `gender` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` int(11) NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'tourist',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `gender`, `phone`, `status`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@binus.ac.id', NULL, '$2y$10$0wAkF4YUvClIe2Kr8/CWYu9Go1Ql5IPs6jXAbH8KtWPhzh7pfc/Uu', 'male', 123456789, 'admin', NULL, '2022-12-22 07:59:49', '2022-12-22 07:59:49'),
(2, 'Lareina Laras', 'laras@binus.ac.id', NULL, '$2y$10$T94ic3gZQCHD65jooO/anecNzeWOuSCY7QRLdppy2UVOpClgwypJa', 'female', 123456789, 'tourist', NULL, '2022-12-22 08:00:14', '2022-12-22 08:00:14'),
(3, 'Angela Valentine', 'angela@binus.ac.id', NULL, '$2y$10$2esoZswk1OTdHwuBMQ3I.OvwesGaMpNU7N4lpFLBw0/FMOe6HOecW', 'female', 12345678, 'tourist', NULL, '2022-12-22 08:41:59', '2022-12-22 08:41:59'),
(4, 'Della Safitri', 'della@binus.ac.id', NULL, '$2y$10$0Tk..3B7v2//V1AYslHBG.N2KwbAhkxOz5kSjuq0Z.llqsUXtv1DG', 'female', 123456789, 'tourist', NULL, '2022-12-22 08:42:24', '2022-12-22 08:42:24'),
(5, 'Albert David', 'albert@binus.ac.id', NULL, '$2y$10$bO4xiemVCjJiIu9DPX7.L.gK4pTIXA33j4PdzLwLOr739mbrMSfAS', 'male', 123456789, 'tourist', NULL, '2022-12-22 08:42:49', '2022-12-22 08:42:49'),
(6, 'Christopher Joshua', 'christopher@binus.ac.id', NULL, '$2y$10$BVhwtD1iyB7R6YZN51BNju3CwaSpkOyp.0sLc10jFHReZET/eIfPS', 'male', 123456789, 'tourist', NULL, '2022-12-22 08:43:14', '2022-12-22 08:43:14');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `destinations`
--
ALTER TABLE `destinations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `destinations_category_id_foreign` (`category_id`);

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
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transactions_user_id_foreign` (`user_id`),
  ADD KEY `transactions_destination_id_foreign` (`destination_id`);

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
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `destinations`
--
ALTER TABLE `destinations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `destinations`
--
ALTER TABLE `destinations`
  ADD CONSTRAINT `destinations_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`);

--
-- Constraints for table `transactions`
--
ALTER TABLE `transactions`
  ADD CONSTRAINT `transactions_destination_id_foreign` FOREIGN KEY (`destination_id`) REFERENCES `destinations` (`id`),
  ADD CONSTRAINT `transactions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
