-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               5.6.16 - MySQL Community Server (GPL)
-- Server OS:                    Win32
-- HeidiSQL Version:             8.3.0.4694
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Dumping database structure for db_charts
CREATE DATABASE IF NOT EXISTS `db_charts` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `db_charts`;


-- Dumping structure for table db_charts.migrations
CREATE TABLE IF NOT EXISTS `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table db_charts.migrations: ~2 rows (approximately)
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` (`migration`, `batch`) VALUES
	('2014_10_12_000000_create_users_table', 1),
	('2014_10_12_100000_create_password_resets_table', 1),
	('2015_06_29_035010_create_siswas_table', 1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;


-- Dumping structure for table db_charts.password_resets
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  KEY `password_resets_email_index` (`email`),
  KEY `password_resets_token_index` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table db_charts.password_resets: ~0 rows (approximately)
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;


-- Dumping structure for table db_charts.siswas
CREATE TABLE IF NOT EXISTS `siswas` (
  `NIS` varchar(12) COLLATE utf8_unicode_ci NOT NULL,
  `Nama` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `Nilai` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table db_charts.siswas: ~4 rows (approximately)
/*!40000 ALTER TABLE `siswas` DISABLE KEYS */;
INSERT INTO `siswas` (`NIS`, `Nama`, `Nilai`, `created_at`, `updated_at`) VALUES
	('2015001', 'Leonel Messi', 90, '2015-06-29 11:06:56', '2015-06-29 11:06:56'),
	('2015002', 'Cristiano Ronaldo', 90, '2015-06-29 11:10:39', '2015-06-29 11:10:39'),
	('2015003', 'Gareth Bale', 80, '2015-06-29 11:21:58', '2015-06-29 11:21:58'),
	('2015004', 'Luiz Suarez', 80, '2015-06-29 11:21:58', '2015-06-29 11:21:58'),
	('2015005', 'Evan Dimas', 70, '2015-07-03 15:40:54', '2015-07-03 15:40:54'),
	('2015006', 'Aji Santoso', 40, '2015-07-03 15:40:55', '2015-07-03 15:40:55');
/*!40000 ALTER TABLE `siswas` ENABLE KEYS */;


-- Dumping structure for table db_charts.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- Dumping data for table db_charts.users: ~0 rows (approximately)
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
