-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 30, 2021 at 10:59 PM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 7.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `prak_web_lanjut`
--

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `version` varchar(255) NOT NULL,
  `class` varchar(255) NOT NULL,
  `group` varchar(255) NOT NULL,
  `namespace` varchar(255) NOT NULL,
  `time` int(11) NOT NULL,
  `batch` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `version`, `class`, `group`, `namespace`, `time`, `batch`) VALUES
(4, '2021-09-30-184944', 'App\\Database\\Migrations\\Posts', 'default', 'App', 1633032490, 1);

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `post_id` int(11) UNSIGNED NOT NULL,
  `judul` varchar(100) NOT NULL,
  `deskripsi` text NOT NULL,
  `gambar` varchar(150) DEFAULT NULL,
  `author` varchar(100) NOT NULL,
  `kategori` varchar(100) NOT NULL,
  `slug` varchar(100) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`post_id`, `judul`, `deskripsi`, `gambar`, `author`, `kategori`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Rerum numquam sed doloribus.', 'Totam minima neque est rerum quia. Quaerat ipsum officia exercitationem. Quisquam rerum soluta quo dolorem quaerat sequi aliquid incidunt. Veniam aut et voluptatum quia cupiditate.', NULL, 'Prof. Carleton Fahey', 'nature', 'nesciunt-quia-maiores-eum', '2021-10-01 03:11:11', '2021-10-01 03:11:11'),
(2, 'Ut et sed.', 'Doloremque odit est velit qui sed atque vel. Nihil et vel ipsam. Itaque rerum voluptate molestiae dolorem tempora qui.', NULL, 'Mr. Eddie Thompson', 'programming', 'autem-vitae-sunt', '2021-10-01 03:11:11', '2021-10-01 03:11:11'),
(3, 'Est at sint.', 'Praesentium sint quae neque cumque. Aut et incidunt nulla. Sint cum aut nobis molestiae qui porro. Id dicta aut quae aut laborum ut amet.', NULL, 'Gloria Conroy', 'cat', 'eaque-nam-voluptatibus-voluptatem', '2021-10-01 03:11:12', '2021-10-01 03:11:12'),
(4, 'Aut atque et temporibus.', 'Nisi explicabo quam ex voluptatem et debitis voluptas. Ad blanditiis ipsa eos enim. Est voluptas fuga ut ea soluta.', NULL, 'Prof. Hilton Raynor', 'sport', 'quia-aspernatur-et-eum', '2021-10-01 03:11:12', '2021-10-01 03:11:12'),
(5, 'Id commodi sed.', 'Quos nisi et qui fugiat illum molestiae iure qui. Iste vitae sint possimus dolores asperiores. Incidunt eos dolorum quia eveniet.', NULL, 'Miss Dovie Cruickshank', 'lifestyle', 'aut-quasi-et-incidunt', '2021-10-01 03:11:12', '2021-10-01 03:11:12'),
(6, 'Voluptatibus sapiente vel.', 'Ab in quasi maiores aut in. Est consequatur aut vero qui sed voluptate. Cupiditate sapiente sed sequi est illo ut. Molestiae et qui in molestiae ut.', NULL, 'Mrs. Maya Carter Jr.', 'food', 'atque-praesentium-quae', '2021-10-01 03:11:12', '2021-10-01 03:11:12');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`post_id`),
  ADD UNIQUE KEY `slug` (`slug`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `post_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
