-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 20, 2018 at 10:02 AM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blog_admin`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `password`, `phone`, `status`, `created_at`, `updated_at`) VALUES
(1, 'aliraza.khan@ssasoft.com', 'aliraza.khan@ssasoft.com', '$2y$10$qVcmjjq7rW7Sq1ZSCAq5XeKLwqxTJMFWo52SQrnwl646qI.ktrmqi', '4086425772', 1, '2018-06-18 02:20:05', '2018-06-20 02:59:15'),
(3, 'admin@gmail.com', 'admin@gmail.com', '$2y$10$aoSdBgV8w.51bZ6zmrHoQOGxTSAFvxi8grXTLzUZtrNnsyCLRSB2m', '4086425772', 1, '2018-06-18 06:33:55', '2018-06-18 06:56:16'),
(4, 'ali@gmail.com', 'ali@gmail.com', '$2y$10$4RPj8t3McG/LHR4EtI7.p.oTdHeXb8hp4tSFnGlJdFuDC.jYlndme', '4086425772', 1, '2018-06-18 06:57:53', '2018-06-18 07:01:10'),
(5, 'admasain@gmail.com', 'aliraza.khan@ssasasaasoft.com', '$2y$10$Nv7WQds1pxOz8zxYkFFYae3CKbTush6vXVjxX.gfVZ0UYHcj1YG/e', NULL, NULL, '2018-06-18 07:05:49', '2018-06-18 07:05:49'),
(6, 'admasain@gmail.com', 'aliasasasraza.khan@ssasasaasoft.com', '$2y$10$62Q5x2EvBl.T9XOAHHOeB.KsYDiU88LjepwGcwYgqLGxhMg5boOG6', NULL, NULL, '2018-06-18 07:06:30', '2018-06-18 07:06:30'),
(7, 'admasain@gmail.com', 'aliasasaaaasraza.khan@ssasasaasoft.com', '$2y$10$n8K/qO65IAIViGEIzaEs6uEs55GMJFKfDx6D7HsDN//giuafrU4Ga', NULL, NULL, '2018-06-18 07:07:04', '2018-06-18 07:07:04'),
(8, 'admasain@gmail.com', 'aliasaaaasaaaasraza.khan@ssasasaasoft.com', '$2y$10$Drb.E/lUVAC5BSaHUo6agOHJ7cWV/9uaN.7f7ue/A4d4AJFUIZAQu', NULL, NULL, '2018-06-18 07:07:28', '2018-06-18 07:07:28'),
(9, 'admasain@gmail.com', 'aliasaassaasaaaasraza.khan@ssasasaasoft.com', '$2y$10$2LlKsQ/AwcfZiIirQpfaEuwMlwaPGO7Qp3cbcr6brAxUxrUlD98HW', NULL, NULL, '2018-06-18 07:08:24', '2018-06-18 07:08:24'),
(10, 'adasasamin@gmail.com', 'adasasasmin@gmail.com', '$2y$10$srqjDMDjyJZAiKWP1sTXfOnFvFOfbC8xN3THa9WdethBGs0onIvtm', NULL, NULL, '2018-06-18 07:10:48', '2018-06-18 07:10:48'),
(11, 'ali', 'alirazakhanaa334@gmail.com', '$2y$10$ME70fgkpaRbRJkZS8UvP4.HfS63cic5OcHHHLZ6uH5TrNM0xsIrIi', NULL, NULL, '2018-06-19 06:37:09', '2018-06-19 06:37:09');

-- --------------------------------------------------------

--
-- Table structure for table `admin_roles`
--

CREATE TABLE `admin_roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `admin_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_roles`
--

INSERT INTO `admin_roles` (`id`, `admin_id`, `role_id`, `created_at`, `updated_at`) VALUES
(2, 3, 1, NULL, NULL),
(3, 4, 1, NULL, NULL),
(4, 4, 2, NULL, NULL),
(5, 9, 1, NULL, NULL),
(6, 10, 1, NULL, NULL),
(7, 2, 2, NULL, NULL),
(8, 1, 2, NULL, NULL),
(9, 11, 3, NULL, NULL),
(10, 1, 1, NULL, NULL),
(11, 1, 3, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'cat1', 'cat1', '2018-06-18 02:21:42', '2018-06-18 02:21:42'),
(2, 'cat2', 'cat2', '2018-06-18 02:21:49', '2018-06-18 02:21:49');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2018_06_07_084855_create_posts_table', 1),
(4, '2018_06_07_085316_create_tags_table', 1),
(5, '2018_06_07_085412_create_categories_table', 1),
(6, '2018_06_07_085530_create_post_tags_table', 1),
(7, '2018_06_07_085547_create_post_categories_table', 1),
(8, '2018_06_07_090416_create_admins_table', 1),
(9, '2018_06_07_090646_create_roles_table', 1),
(10, '2018_06_07_090813_create_admin_roles_table', 1),
(11, '2018_06_13_103656_create_permissions_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `for` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `for`, `created_at`, `updated_at`) VALUES
(1, 'post-create', 'post', '2018-06-13 07:00:47', '2018-06-13 07:00:47'),
(2, 'post-update', 'post', '2018-06-13 07:02:40', '2018-06-13 07:02:40'),
(3, 'post-delete', 'post', '2018-06-13 07:02:51', '2018-06-13 07:02:51'),
(4, 'user-create', 'user', '2018-06-13 07:03:03', '2018-06-13 07:03:03'),
(5, 'user-update', 'user', '2018-06-13 07:03:12', '2018-06-13 07:03:12'),
(6, 'user-delete', 'user', '2018-06-13 07:03:24', '2018-06-13 07:03:24'),
(7, 'post-publish', 'post', '2018-06-13 07:04:08', '2018-06-13 07:04:08'),
(8, 'tag-crud', 'other', '2018-06-13 07:04:25', '2018-06-13 07:04:25'),
(9, 'category-crud', 'other', '2018-06-13 07:04:39', '2018-06-13 07:04:39');

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `role_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`role_id`, `permission_id`) VALUES
(1, 8),
(1, 1),
(2, 3),
(1, 2),
(1, 3),
(3, 7),
(3, 8),
(3, 9),
(3, 1),
(3, 2),
(3, 3),
(3, 4),
(3, 5),
(3, 6),
(1, 4),
(1, 5),
(1, 6),
(1, 9),
(2, 1),
(2, 2),
(2, 7),
(2, 4),
(2, 5),
(2, 6),
(2, 8),
(2, 9);

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subtitle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL,
  `posted_by` int(11) DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `subtitle`, `slug`, `body`, `status`, `posted_by`, `image`, `created_at`, `updated_at`) VALUES
(2, 'asa', 'sasa', 'Standards', 'post1', 1, NULL, NULL, '2018-06-18 02:47:00', '2018-06-18 02:47:00'),
(3, 'aa', 'qwq', 'Volunteer', 'asa', 1, NULL, NULL, '2018-06-18 02:54:41', '2018-06-18 02:54:41');

-- --------------------------------------------------------

--
-- Table structure for table `post_categories`
--

CREATE TABLE `post_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `post_id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `post_categories`
--

INSERT INTO `post_categories` (`id`, `post_id`, `category_id`, `created_at`, `updated_at`) VALUES
(3, 2, 1, '2018-06-18 02:47:00', '2018-06-18 02:47:00'),
(4, 2, 2, '2018-06-18 02:47:00', '2018-06-18 02:47:00'),
(5, 3, 1, '2018-06-18 02:54:41', '2018-06-18 02:54:41');

-- --------------------------------------------------------

--
-- Table structure for table `post_tags`
--

CREATE TABLE `post_tags` (
  `id` int(10) UNSIGNED NOT NULL,
  `post_id` int(10) UNSIGNED NOT NULL,
  `tag_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `post_tags`
--

INSERT INTO `post_tags` (`id`, `post_id`, `tag_id`, `created_at`, `updated_at`) VALUES
(3, 2, 1, '2018-06-18 02:47:00', '2018-06-18 02:47:00'),
(4, 2, 2, '2018-06-18 02:47:00', '2018-06-18 02:47:00'),
(5, 3, 2, '2018-06-18 02:54:41', '2018-06-18 02:54:41');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Editor', '2018-06-13 07:20:02', '2018-06-18 04:46:04'),
(2, 'Publisher', '2018-06-18 07:00:14', '2018-06-18 07:00:14'),
(3, 'Writer', '2018-06-18 07:00:35', '2018-06-18 07:00:35');

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'tagee', 'tage', '2018-06-18 02:21:20', '2018-06-18 02:21:20'),
(2, 'tag2', 'tag2', '2018-06-18 02:21:29', '2018-06-18 02:21:29');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`);

--
-- Indexes for table `admin_roles`
--
ALTER TABLE `admin_roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `post_categories`
--
ALTER TABLE `post_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_categories_post_id_index` (`post_id`),
  ADD KEY `post_categories_category_id_index` (`category_id`);

--
-- Indexes for table `post_tags`
--
ALTER TABLE `post_tags`
  ADD PRIMARY KEY (`id`),
  ADD KEY `post_tags_post_id_index` (`post_id`),
  ADD KEY `post_tags_tag_id_index` (`tag_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `admin_roles`
--
ALTER TABLE `admin_roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `post_categories`
--
ALTER TABLE `post_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `post_tags`
--
ALTER TABLE `post_tags`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `post_categories`
--
ALTER TABLE `post_categories`
  ADD CONSTRAINT `post_categories_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `post_tags`
--
ALTER TABLE `post_tags`
  ADD CONSTRAINT `post_tags_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
