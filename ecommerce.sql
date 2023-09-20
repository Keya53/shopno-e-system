-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 20, 2023 at 05:31 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecommerce`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `category_id` int(100) NOT NULL,
  `category_name` varchar(255) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`category_id`, `category_name`, `date`) VALUES
(1, 'Mobile', '2022-11-05 18:00:00'),
(2, 'Electronics', '2022-10-29 18:00:00'),
(3, 'Sari', '2022-10-30 18:00:00'),
(4, 'SmartPhone', '2022-11-06 18:00:00'),
(5, 'Ladis', '2022-11-16 17:04:44'),
(6, 'Baby Dress', '2022-11-16 17:05:53'),
(7, 'Books', '2023-06-21 04:43:21');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
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
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1);

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
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `product_id` int(255) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_category` int(100) NOT NULL,
  `price` int(100) NOT NULL,
  `image` varchar(255) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `active` varchar(1) NOT NULL DEFAULT 'Y'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`product_id`, `product_name`, `product_category`, `price`, `image`, `date`, `active`) VALUES
(1, 'Watch', 4, 1500, '1750400024253074.jpg', '2023-06-21 04:39:31', 'Y'),
(4, 'Car', 2, 50000, '1750176949068163.jpg', '2023-06-21 04:39:50', 'N'),
(8, 'Blu-pozzi', 8, 10000000, '1774818065910753.jpg', '2023-08-21 07:30:26', 'Y'),
(9, 'LaFerrari', 8, 12000000, '1774818151320899.jpg', '2023-08-21 06:14:47', 'Y'),
(10, 'Ferrari 488', 8, 15000000, '1774818213648869.jpg', '2023-08-21 06:15:46', 'Y'),
(11, 'A16-grey', 1, 15000, '1774818568595984.jpg', '2023-08-21 07:21:14', 'Y'),
(12, 'Reno5', 1, 13500, '1774818625915700.jpg', '2023-08-21 07:21:56', 'Y'),
(13, 'Durgesh Nondini', 2, 550, 'durgesh nondini.jpg', '2023-08-29 04:32:42', 'Y'),
(14, 'SamsungA03', 1, 20000, 'SamsungA03.jpg', '2023-08-24 05:08:47', 'Y'),
(15, 'SamsungB04', 1, 18000, 'SamsungB04.jpg', '2023-08-24 05:08:59', 'Y'),
(16, 'Flower Fold', 3, 7500, 'flower-foldjpg.jpg', '2023-08-24 05:18:58', 'Y'),
(17, 'Jamdani', 3, 5000, 'images.jpg', '2023-08-24 05:21:06', 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `product_stock`
--

CREATE TABLE `product_stock` (
  `id` int(100) NOT NULL,
  `product_id` int(100) NOT NULL,
  `quantity` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product_stock`
--

INSERT INTO `product_stock` (`id`, `product_id`, `quantity`, `created_at`, `updated_at`) VALUES
(4, 1, 47, '2023-06-21 04:32:00', '2023-06-21 04:32:00'),
(6, 4, 25, '2023-08-16 11:35:39', '2023-06-21 04:32:00'),
(8, 5, 94, '2022-12-16 06:41:22', '2022-12-16 06:41:22'),
(10, 7, 20, '2023-08-16 11:38:48', NULL),
(11, 6, 10, '2023-08-16 11:39:24', NULL),
(12, 16, 10, '2023-08-24 05:20:01', '2023-08-24 07:16:18'),
(13, 17, 7, '2023-08-24 05:20:40', '2023-08-24 07:20:18');

-- --------------------------------------------------------

--
-- Table structure for table `sell_product`
--

CREATE TABLE `sell_product` (
  `id` int(100) NOT NULL,
  `product_id` int(255) NOT NULL,
  `quentity` int(100) NOT NULL,
  `price` int(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sell_product`
--

INSERT INTO `sell_product` (`id`, `product_id`, `quentity`, `price`, `created_at`) VALUES
(146, 1, 3, 4500, '2023-03-29 06:58:40'),
(147, 1, 2, 3000, '2023-03-29 06:59:48'),
(148, 1, 3, 4500, '2023-03-29 07:00:17'),
(149, 2, 2, 21000, '2023-03-29 07:03:31'),
(150, 1, 3, 4500, '2023-03-29 07:06:34'),
(151, 1, 3, 4500, '2023-06-21 04:32:00'),
(152, 4, 1, 50000, '2023-06-21 04:32:00');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `roll` int(11) NOT NULL,
  `class` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`id`, `name`, `roll`, `class`) VALUES
(2, 'Keya', 112, 11),
(3, 'Peya', 3332, 13),
(4, 'Ridwan', 238792, 5),
(5, 'Ridwan', 238792, 12),
(6, 'Ridwan', 238792, 12),
(7, 'Ridwan', 238792, 12),
(8, 'Ridwan', 238792, 12),
(9, 'Ridwan', 238792, 12),
(10, 'Robel', 3454, 443),
(11, 'Robel', 3454, 443),
(12, 'asxas', 34, 44),
(13, 'Ridwan', 238792, 3),
(14, 'Raisa', 1, 3),
(15, 'Mawa', 1, 1),
(16, 'Arnab', 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `student_course`
--

CREATE TABLE `student_course` (
  `id` int(11) NOT NULL,
  `courseName` varchar(255) NOT NULL,
  `courseCode` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student_course`
--

INSERT INTO `student_course` (`id`, `courseName`, `courseCode`) VALUES
(9, 'D', '321'),
(9, 'a', '342'),
(11, 'm', '543534'),
(11, 'f', 't54'),
(12, 'dgdfg', 't45'),
(12, 'dbfghfgd', '12'),
(13, 'Database', '321'),
(13, 'msfslfnsknfkjfd', 't45'),
(14, 'English', '129'),
(14, 'Bangla', '101'),
(15, 'bangla', '101'),
(15, 'englis', '201'),
(16, 'bangla', '105');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(100) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `email`, `password`) VALUES
(1, 'keya1994.sec@gmail.com', '12345678'),
(3, 'pori@gmail.com', '12345678');

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
(1, 'keya', 'keya@gmail.com', NULL, '$2y$10$WCYW9CU09aA4sihEEyD04eCv2rOeaDyQuio3v1ZxtqWi/vml/UeS.', NULL, '2023-07-18 04:49:32', '2023-07-18 04:49:32'),
(2, 'Rubel', 'rubel@gmail.com', NULL, '$2y$10$dU.YABSTO7MoLt7Typ9oou.He.VwSVgMhZBhpcsbkY0E6tBQc0NM2', NULL, '2023-07-18 04:53:07', '2023-07-18 04:53:07');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
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
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `product_stock`
--
ALTER TABLE `product_stock`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sell_product`
--
ALTER TABLE `sell_product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_course`
--
ALTER TABLE `student_course`
  ADD KEY `id-fk` (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
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
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `category_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `product_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `product_stock`
--
ALTER TABLE `product_stock`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `sell_product`
--
ALTER TABLE `sell_product`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=153;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `student_course`
--
ALTER TABLE `student_course`
  ADD CONSTRAINT `student_course_ibfk_1` FOREIGN KEY (`id`) REFERENCES `student` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
