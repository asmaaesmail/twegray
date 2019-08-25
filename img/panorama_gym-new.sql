-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 08, 2019 at 02:12 PM
-- Server version: 10.3.17-MariaDB
-- PHP Version: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `panorama_gym-new`
--

-- --------------------------------------------------------

--
-- Table structure for table `changes`
--

CREATE TABLE `changes` (
  `id` int(10) UNSIGNED NOT NULL,
  `date` date DEFAULT NULL,
  `weight` double(8,2) NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `components`
--

CREATE TABLE `components` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `calories` double(8,2) NOT NULL,
  `protein` double(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `components`
--

INSERT INTO `components` (`id`, `name`, `description`, `calories`, `protein`, `created_at`, `updated_at`) VALUES
(1, 'شوفان', '100 جرام', 18.00, 55.00, '2019-01-17 09:03:27', '2019-01-17 09:03:27'),
(2, 'حليب كامل الدسم', '1 كوب', 10.00, 100.00, '2019-01-17 09:04:30', '2019-01-17 09:04:30'),
(3, 'فراخ مشوية', '250 جم', 20.00, 120.00, '2019-01-17 09:22:27', '2019-01-17 09:22:27'),
(4, 'سلطه', 'طبق صغير', 90.00, 55.00, '2019-01-17 09:25:40', '2019-01-17 09:25:40');

-- --------------------------------------------------------

--
-- Table structure for table `days`
--

CREATE TABLE `days` (
  `id` int(10) UNSIGNED NOT NULL,
  `day` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `days`
--

INSERT INTO `days` (`id`, `day`, `created_at`, `updated_at`) VALUES
(1, 'السبت', NULL, NULL),
(2, 'الاحد', NULL, NULL),
(3, 'الاثنين', NULL, NULL),
(4, 'الثلاثاء', NULL, NULL),
(5, 'الاربعاء', NULL, NULL),
(6, 'الخميس', NULL, NULL),
(7, 'الجمعة', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `exercises`
--

CREATE TABLE `exercises` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `video` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `exercises`
--

INSERT INTO `exercises` (`id`, `name`, `details`, `image`, `video`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'باي 4', 'يكرر 3 مرات', 'photos/exercises/5wmDVeYkcdXLJTdsod3llq1rV1nT1MOqVsfLofZz.jpeg', 'https://www.youtube.com/watch?v=HaazjK042XQ', 1, '2019-01-17 08:56:03', '2019-01-17 08:56:03'),
(2, 'تراي', 'يكرر 3 مرات', 'photos/exercises/IYJLSN4BKtNmXzaT7M8QPfEI1QeEM6HblQKO3nI6.jpeg', 'https://www.youtube.com/watch?v=VFjEYsVll0E', 1, '2019-01-17 08:57:43', '2019-01-17 08:57:43'),
(3, 'الاحماء', '150-300 دقيقة في الأسبوع', 'photos/exercises/nKAWzcrENXoFsmSFdrxSfpeg7KiXBT9KaYmZgaXZ.jpeg', 'https://youtu.be/r7UFGjB29hM', 2, '2019-01-17 09:16:40', '2019-01-17 09:46:34'),
(4, 'الكارديو', '150-300 دقيقة في الأسبوع', 'photos/exercises/KEfKb7gZrPNPtuWsr7apNbu211FHyFupwYRIvTtb.jpeg', 'https://youtu.be/eHpXmLP6hwQ', 2, '2019-01-17 09:19:05', '2019-01-17 09:49:05');

-- --------------------------------------------------------

--
-- Table structure for table `exercises_days`
--

CREATE TABLE `exercises_days` (
  `id` int(10) UNSIGNED NOT NULL,
  `day_id` int(10) UNSIGNED NOT NULL,
  `exercise_table_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `exercises_days`
--

INSERT INTO `exercises_days` (`id`, `day_id`, `exercise_table_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, NULL, NULL),
(2, 3, 1, NULL, NULL),
(3, 5, 1, NULL, NULL),
(4, 2, 2, NULL, NULL),
(5, 4, 2, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `exercise_tables`
--

CREATE TABLE `exercise_tables` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notes` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `exercise_tables`
--

INSERT INTO `exercise_tables` (`id`, `name`, `notes`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'باي تراي', 'لا يوجد', 2, '2019-01-17 08:58:21', '2019-01-17 08:58:21'),
(2, 'احماء وكارديو', 'يكرر يوميا', 2, '2019-01-17 09:20:08', '2019-01-17 09:20:08');

-- --------------------------------------------------------

--
-- Table structure for table `meals`
--

CREATE TABLE `meals` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notes` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `time` time NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `meals`
--

INSERT INTO `meals` (`id`, `name`, `notes`, `time`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'ضخامه من 60 الي 70 افطار', 'يضرب جميعا في الخلاط', '07:00:00', 1, '2019-01-17 09:05:52', '2019-01-17 09:05:52'),
(2, 'ضخامه من 60 الي 90 غداء', 'السلطه بدون طماطم', '06:00:00', 2, '2019-01-17 09:27:03', '2019-01-17 09:27:03');

-- --------------------------------------------------------

--
-- Table structure for table `meal_component`
--

CREATE TABLE `meal_component` (
  `id` int(10) UNSIGNED NOT NULL,
  `meal_id` int(10) UNSIGNED NOT NULL,
  `component_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `meal_component`
--

INSERT INTO `meal_component` (`id`, `meal_id`, `component_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, NULL, NULL),
(2, 1, 2, NULL, NULL),
(3, 2, 3, NULL, NULL),
(4, 2, 4, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_01_02_125842_create_exercises_table', 1),
(4, '2019_01_02_130715_create_exercise_tables_table', 1),
(5, '2019_01_02_132048_create_tables_exercises_table', 1),
(6, '2019_01_02_133548_create_systems_table', 1),
(7, '2019_01_02_134408_create_meals_table', 1),
(8, '2019_01_02_135100_create_components_table', 1),
(9, '2019_01_02_135932_create_system_meal_table', 1),
(10, '2019_01_02_140509_create_meal_component_table', 1),
(11, '2019_01_02_140840_create_subscriptions_table', 1),
(12, '2019_01_02_141052_create_changes_table', 1),
(13, '2019_01_02_142012_create_user_tables_table', 1),
(14, '2019_01_02_142846_create_user_system_table', 1),
(15, '2019_01_02_143120_create_statics_table', 1),
(16, '2019_01_03_115210_add_role_to_users_table', 1),
(17, '2019_01_08_130938_add_url_to_statics_table', 1),
(18, '2019_01_08_131124_add_name_to_statics_table', 1),
(19, '2019_01_13_081227_create_subscriber_user_table', 1),
(20, '2019_01_15_112617_create_days_table', 1),
(21, '2019_01_15_113111_create_exercises_days_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `statics`
--

CREATE TABLE `statics` (
  `id` int(10) UNSIGNED NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `subscriber_user`
--

CREATE TABLE `subscriber_user` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `subscriber_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subscriber_user`
--

INSERT INTO `subscriber_user` (`id`, `user_id`, `subscriber_id`, `created_at`, `updated_at`) VALUES
(1, 2, 3, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `subscriptions`
--

CREATE TABLE `subscriptions` (
  `id` int(10) UNSIGNED NOT NULL,
  `start` date NOT NULL,
  `finish` date NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subscriptions`
--

INSERT INTO `subscriptions` (`id`, `start`, `finish`, `user_id`, `created_at`, `updated_at`) VALUES
(1, '2019-01-19', '2019-02-19', 3, '2019-01-17 08:53:36', '2019-01-17 08:53:36'),
(2, '2019-01-21', '2019-03-13', 4, '2019-01-17 09:02:26', '2019-01-17 09:02:26');

-- --------------------------------------------------------

--
-- Table structure for table `systems`
--

CREATE TABLE `systems` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `days` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `systems`
--

INSERT INTO `systems` (`id`, `name`, `days`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'ضخامه من 60 الي 70', '7', 1, '2019-01-17 09:06:45', '2019-01-17 09:06:45'),
(2, 'ضخامه من 60 الي 90', '10 ايام', 2, '2019-01-17 09:28:01', '2019-01-17 09:28:01');

-- --------------------------------------------------------

--
-- Table structure for table `system_meal`
--

CREATE TABLE `system_meal` (
  `id` int(10) UNSIGNED NOT NULL,
  `system_id` int(10) UNSIGNED NOT NULL,
  `meal_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `system_meal`
--

INSERT INTO `system_meal` (`id`, `system_id`, `meal_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, NULL, NULL),
(2, 2, 2, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tables_exercises`
--

CREATE TABLE `tables_exercises` (
  `id` int(10) UNSIGNED NOT NULL,
  `exercise_id` int(10) UNSIGNED NOT NULL,
  `exercise_tables_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tables_exercises`
--

INSERT INTO `tables_exercises` (`id`, `exercise_id`, `exercise_tables_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, NULL, NULL),
(2, 2, 1, NULL, NULL),
(3, 3, 2, NULL, NULL),
(4, 4, 2, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` enum('male','female') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `height` double(8,2) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `weight` double(8,2) DEFAULT NULL,
  `notes` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `member_code` int(10) UNSIGNED DEFAULT NULL,
  `job` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `role` enum('admin','subscriber','trainer') COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `status`, `image`, `phone`, `gender`, `height`, `age`, `weight`, `notes`, `member_code`, `job`, `remember_token`, `created_at`, `updated_at`, `role`) VALUES
(1, 'admin', 'admin@admin.com', NULL, '$2y$10$r17zusYJ6FoeLYugBm0Dm.Efe1JP8la7Wt.3Kx3odVL/wwYLlDQcq', 1, NULL, '01234567899', NULL, NULL, NULL, NULL, '[\"0\",\"1\",\"2\",\"3\",\"4\",\"5\"]', NULL, 'manager', 'xtjjSQSk3Q035CJ4MkKU5IGACJXawqhbFwZavrnX0Sm8P1wBripCTSn6FDtA', NULL, '2019-01-23 10:43:37', 'admin'),
(2, 'shrouk', 'shery@s.com', NULL, '$2y$10$qs1.4IPN2NkDbrgERUE1DObrEOA21dAQKnfY1XadK4657LHDrKO0W', 1, 'photos/profile/4YiH8ceM7HIhlO2w3y2DyFn3d5e4CMWJ65qXhswr.png', '12358966', NULL, NULL, NULL, NULL, '[\"0\",\"1\",\"2\",\"3\",\"4\",\"5\"]', NULL, 'مدرب', '4SmFyvr6KJbex9YblEJHMFBf2aT3HK9IJE6ig7YFOxMYn2dcBxvLq7anCzd6', '2019-01-17 08:52:38', '2019-01-23 10:40:39', 'trainer'),
(3, 'Ahmed', NULL, NULL, '$2y$10$4HbjlahBH0O1/ugJoVKBU.dUxmHgcS6LPVzTQS5x1bFVJjUE/LNIm', 1, 'photos/profile/V2jq8l02QS3lQvePBhzhG5dWwhv7zXIz6joqYHFk.png', NULL, 'male', 170.00, 23, 70.00, NULL, 666, NULL, 'RKLOofxws5WGzNhHYjojUgWvwJt5epBIerdpKhgZv3vw6SYaqAPynFqz7TAM', '2019-01-17 08:53:36', '2019-01-17 08:53:36', 'subscriber'),
(4, 'Aya', NULL, NULL, '$2y$10$M/hGC.LkSJllb3LcC8rbe.MjonAmFVEGfvpZLbO5J8IfSK3JMt7Li', 1, 'photos/profile/VXHUwvpUCyrfYgrdkzLJBBV2NDfpgtT1v18z07cM.png', NULL, 'female', 150.00, 20, 60.00, NULL, 123, NULL, NULL, '2019-01-17 09:02:26', '2019-01-17 09:02:26', 'subscriber');

-- --------------------------------------------------------

--
-- Table structure for table `user_meal`
--

CREATE TABLE `user_meal` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `system_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_meal`
--

INSERT INTO `user_meal` (`id`, `user_id`, `system_id`, `created_at`, `updated_at`) VALUES
(1, 3, 2, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_tables`
--

CREATE TABLE `user_tables` (
  `id` int(10) UNSIGNED NOT NULL,
  `start` date NOT NULL,
  `end` date NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `exercise_tables_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_tables`
--

INSERT INTO `user_tables` (`id`, `start`, `end`, `user_id`, `exercise_tables_id`, `created_at`, `updated_at`) VALUES
(1, '2019-01-21', '2019-01-30', 3, 1, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `changes`
--
ALTER TABLE `changes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `changes_user_id_foreign` (`user_id`);

--
-- Indexes for table `components`
--
ALTER TABLE `components`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `days`
--
ALTER TABLE `days`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `exercises`
--
ALTER TABLE `exercises`
  ADD PRIMARY KEY (`id`),
  ADD KEY `exercises_user_id_foreign` (`user_id`);

--
-- Indexes for table `exercises_days`
--
ALTER TABLE `exercises_days`
  ADD PRIMARY KEY (`id`),
  ADD KEY `exercises_days_day_id_foreign` (`day_id`),
  ADD KEY `exercises_days_exercise_table_id_foreign` (`exercise_table_id`);

--
-- Indexes for table `exercise_tables`
--
ALTER TABLE `exercise_tables`
  ADD PRIMARY KEY (`id`),
  ADD KEY `exercise_tables_user_id_foreign` (`user_id`);

--
-- Indexes for table `meals`
--
ALTER TABLE `meals`
  ADD PRIMARY KEY (`id`),
  ADD KEY `meals_user_id_foreign` (`user_id`);

--
-- Indexes for table `meal_component`
--
ALTER TABLE `meal_component`
  ADD PRIMARY KEY (`id`),
  ADD KEY `meal_component_meal_id_foreign` (`meal_id`),
  ADD KEY `meal_component_component_id_foreign` (`component_id`);

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
-- Indexes for table `statics`
--
ALTER TABLE `statics`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscriber_user`
--
ALTER TABLE `subscriber_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subscriber_user_user_id_foreign` (`user_id`),
  ADD KEY `subscriber_user_subscriber_id_foreign` (`subscriber_id`);

--
-- Indexes for table `subscriptions`
--
ALTER TABLE `subscriptions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subscriptions_user_id_foreign` (`user_id`);

--
-- Indexes for table `systems`
--
ALTER TABLE `systems`
  ADD PRIMARY KEY (`id`),
  ADD KEY `systems_user_id_foreign` (`user_id`);

--
-- Indexes for table `system_meal`
--
ALTER TABLE `system_meal`
  ADD PRIMARY KEY (`id`),
  ADD KEY `system_meal_system_id_foreign` (`system_id`),
  ADD KEY `system_meal_meal_id_foreign` (`meal_id`);

--
-- Indexes for table `tables_exercises`
--
ALTER TABLE `tables_exercises`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tables_exercises_exercise_id_foreign` (`exercise_id`),
  ADD KEY `tables_exercises_exercise_tables_id_foreign` (`exercise_tables_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_member_code_unique` (`member_code`);

--
-- Indexes for table `user_meal`
--
ALTER TABLE `user_meal`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_meal_user_id_foreign` (`user_id`),
  ADD KEY `user_meal_system_id_foreign` (`system_id`);

--
-- Indexes for table `user_tables`
--
ALTER TABLE `user_tables`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_tables_user_id_foreign` (`user_id`),
  ADD KEY `user_tables_exercise_tables_id_foreign` (`exercise_tables_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `changes`
--
ALTER TABLE `changes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `components`
--
ALTER TABLE `components`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `days`
--
ALTER TABLE `days`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `exercises`
--
ALTER TABLE `exercises`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `exercises_days`
--
ALTER TABLE `exercises_days`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `exercise_tables`
--
ALTER TABLE `exercise_tables`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `meals`
--
ALTER TABLE `meals`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `meal_component`
--
ALTER TABLE `meal_component`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `statics`
--
ALTER TABLE `statics`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `subscriber_user`
--
ALTER TABLE `subscriber_user`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `subscriptions`
--
ALTER TABLE `subscriptions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `systems`
--
ALTER TABLE `systems`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `system_meal`
--
ALTER TABLE `system_meal`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tables_exercises`
--
ALTER TABLE `tables_exercises`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `user_meal`
--
ALTER TABLE `user_meal`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `user_tables`
--
ALTER TABLE `user_tables`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
