-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.4.24-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Version:             12.1.0.6537
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

-- Dumping structure for table dbmyapi.books
CREATE TABLE IF NOT EXISTS `books` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `title` text NOT NULL,
  `author` varchar(100) NOT NULL,
  `publisher` varchar(100) DEFAULT NULL,
  `publication_year` varchar(4) DEFAULT NULL,
  `cover` text DEFAULT NULL,
  `description` text DEFAULT NULL,
  `price` double DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `created_by` int(10) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `updated_by` int(10) DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `deleted_by` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table dbmyapi.books: ~2 rows (approximately)
INSERT INTO `books` (`id`, `title`, `author`, `publisher`, `publication_year`, `cover`, `description`, `price`, `created_at`, `created_by`, `updated_at`, `updated_by`, `deleted_at`, `deleted_by`) VALUES
	(1, 'Who Moved My Cheese?', 'Spencer Johnson', 'Putnam', '1999', 'https://images-na.ssl-images-amazon.com/images/s/compressed.photo.goodreads.com/books/13886397171/4894.jpg', '"Who Moved My Cheese?" is a simple parable that reveals profound truths. It is an amusing and enlightening story of four characters who live in a "Maze" and look for "Cheese" to nourish them and make them happy.\r\n\r\nTwo are mice named Sniff and Scurry. And two are "Littlepeople" - beings the size of mice who look and act a lot like people. Their names are Hem and Haw. \r\n\r\n"Cheese" is a metaphor for what you want to have in life whether it\'s a good job, a loving relationship, money, a possession, health, or spiritual peace of mind. \r\n\r\nAnd the "Maze" is where you look for what you want the organisation you work in or the family or community you live in.\r\n\r\nIn the story, the characters are faced with unexpected change. Eventually, one of them deals with it successfully, and writes what he has learned from his experience on the Maze walls.\r\n\r\nWhen you come to see "The Handwriting on the Wall," you can discover for yourself how to deal with change, so that you can enjoy less stress and more success (however you define it) in your work and in your life.\r\n\r\nWritten for all ages, the story takes less than an hour to read, but its unique insights can last for a lifetime.', 45000, '2024-05-10 16:30:47', 1, NULL, NULL, NULL, NULL),
	(2, 'The Psychology of Money', 'Morgan Housel', 'Harriman House', '2020', 'https://images-na.ssl-images-amazon.com/images/s/compressed.photo.goodreads.com/books/15815277741/41881472.jpg', 'Doing well with money isn\'t necessarily about what you know. It\'s about how you behave. And behavior is hard to teach, even to really smart people. Money--investing, personal Finance, and business decisions--is typically taught as a math-based field, where data and formulas tell us exactly what to do. But in the real world people don\'t make financial decisions on a spreadsheet. They make them at the dinner table, or in a meeting room, where personal history, your own unique view of the world, ego, pride, marketing, and odd incentives are scrambled together. In The Psychology of Money, award-winning author Morgan Housel shares 19 short stories exploring the strange ways people think about money and teaches you how to make better sense of one of life\'s most important topics.', 100000, '2024-05-10 16:33:00', 1, NULL, NULL, NULL, NULL),
	(3, 'The Picture of Dorian Gray', 'Oscar Wilde', 'Penguin Classics', '1980', 'https://m.media-amazon.com/images/I/41V02rH3E-L._SY445_SX342_.jpg', 'Lord Henry takes an interest in Dorian, a remarkably good looking but shallow young man, and sets about influencing him with his believes that beauty and the pursuit of personal pleasure are the only things in life worth pursuing.', 150000, '2024-05-26 18:32:08', NULL, '2024-05-26 18:32:08', NULL, NULL, NULL);

-- Dumping structure for table dbmyapi.failed_jobs
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table dbmyapi.failed_jobs: ~0 rows (approximately)

-- Dumping structure for table dbmyapi.migrations
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table dbmyapi.migrations: ~9 rows (approximately)
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(1, '2014_10_12_000000_create_users_table', 1),
	(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
	(3, '2019_08_19_000000_create_failed_jobs_table', 1),
	(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
	(5, '2016_06_01_000001_create_oauth_auth_codes_table', 2),
	(6, '2016_06_01_000002_create_oauth_access_tokens_table', 2),
	(7, '2016_06_01_000003_create_oauth_refresh_tokens_table', 2),
	(8, '2016_06_01_000004_create_oauth_clients_table', 2),
	(9, '2016_06_01_000005_create_oauth_personal_access_clients_table', 2);

-- Dumping structure for table dbmyapi.oauth_access_tokens
CREATE TABLE IF NOT EXISTS `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `client_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_access_tokens_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table dbmyapi.oauth_access_tokens: ~2 rows (approximately)
INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
	('2521a718c9bfedc4d6cb69a56217e4fc6c358002018f3ae234cecaeaa7da5c705a4dc64e1ea2a799', 2, '9c23bc60-e22c-409b-be80-c6427be59835', 'All Yours', '[]', 1, '2024-05-26 18:26:58', '2024-05-26 18:28:00', '2024-11-27 01:26:58'),
	('28aaa5e88212634021bd47edd9623d66692d3f1658325fd668f4b36be6a337cbd814c2cedd69b249', 2, '9c23bc60-e22c-409b-be80-c6427be59835', 'All Yours', '[]', 0, '2024-05-26 18:31:35', '2024-05-26 18:31:35', '2024-11-27 01:31:35');

-- Dumping structure for table dbmyapi.oauth_auth_codes
CREATE TABLE IF NOT EXISTS `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL,
  `client_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_auth_codes_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table dbmyapi.oauth_auth_codes: ~0 rows (approximately)

-- Dumping structure for table dbmyapi.oauth_clients
CREATE TABLE IF NOT EXISTS `oauth_clients` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_clients_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table dbmyapi.oauth_clients: ~1 rows (approximately)
INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `provider`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
	('9c23bc60-e22c-409b-be80-c6427be59835', NULL, 'Laravel Personal Access Client', 'Ffi4cCrroP69G3GHTDplp4Aiv85cajGGFqkOjoWV', NULL, 'http://localhost', 1, 0, 0, '2024-05-26 18:23:02', '2024-05-26 18:23:02');

-- Dumping structure for table dbmyapi.oauth_personal_access_clients
CREATE TABLE IF NOT EXISTS `oauth_personal_access_clients` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `client_id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table dbmyapi.oauth_personal_access_clients: ~1 rows (approximately)
INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
	(1, '9c23bc60-e22c-409b-be80-c6427be59835', '2024-05-26 18:23:02', '2024-05-26 18:23:02');

-- Dumping structure for table dbmyapi.oauth_refresh_tokens
CREATE TABLE IF NOT EXISTS `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table dbmyapi.oauth_refresh_tokens: ~0 rows (approximately)

-- Dumping structure for table dbmyapi.password_reset_tokens
CREATE TABLE IF NOT EXISTS `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table dbmyapi.password_reset_tokens: ~0 rows (approximately)

-- Dumping structure for table dbmyapi.personal_access_tokens
CREATE TABLE IF NOT EXISTS `personal_access_tokens` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table dbmyapi.personal_access_tokens: ~0 rows (approximately)

-- Dumping structure for table dbmyapi.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table dbmyapi.users: ~2 rows (approximately)
INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
	(1, 'Demo', 'demo.laravel1@gmail.com', NULL, '$2y$12$kA.vC2odxhtybi8vD0/qmeZDLqQ62repuQsrU1eWujbi5y1PXAKg.', NULL, '2024-05-26 18:17:21', '2024-05-26 18:17:21'),
	(2, 'Augusta Ada Byron', 'ada.lovelace@gmail.com', NULL, '$2y$12$yTKHYGMPi.eY9rkmazmICe6a.IBqdu055EHfIvskjWA3NXa1AI0Pa', NULL, '2024-05-26 18:20:00', '2024-05-26 18:20:00'),
	(3, 'Demo Two', 'demo.laravel2@gmail.com', NULL, '$2y$12$N45VJZpLW.3TmkzbWbuAC.HqfRFypAndWYjkx.SG/EKpHeaccynpS', NULL, '2024-05-26 18:20:59', '2024-05-26 18:20:59');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
