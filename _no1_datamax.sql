/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

CREATE TABLE `categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` bigint unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `categories_parent_id_foreign` (`parent_id`),
  CONSTRAINT `categories_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `products` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `harga` int unsigned NOT NULL DEFAULT '0',
  `user_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `products_user_id_foreign` (`user_id`),
  CONSTRAINT `products_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `categories` (`id`, `name`, `parent_id`) VALUES
(1, 'Umum', NULL);
INSERT INTO `categories` (`id`, `name`, `parent_id`) VALUES
(2, 'Handphone dan Aksesoris', NULL);
INSERT INTO `categories` (`id`, `name`, `parent_id`) VALUES
(3, 'Baju dan Aksesoris', NULL);
INSERT INTO `categories` (`id`, `name`, `parent_id`) VALUES
(4, 'Makanan dan Minuman', NULL),
(5, 'Motor', NULL),
(6, 'Aksesoris', 2),
(7, 'Casing', 2),
(8, 'Samsung', 2),
(9, 'Kering', 4),
(10, 'Basah', 5),
(11, 'Honda', 5),
(12, 'Yamaha', 5),
(13, 'Suzuki', 5),
(14, 'Fashion Pria', 3),
(15, 'Fashion Wanita', 3);

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(13, '2020_12_27_054830_create_users_table', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(14, '2020_12_27_055056_create_products_table', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(15, '2020_12_27_055925_add_relationship_fields_to_products_table', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(16, '2020_12_27_064909_create_categories_table', 1),
(17, '2020_12_27_065256_add_relationship_fields_to_categories_table', 1);

INSERT INTO `products` (`id`, `name`, `harga`, `user_id`) VALUES
(1, 'Bakso aci telur puyuh', 95000, 1);
INSERT INTO `products` (`id`, `name`, `harga`, `user_id`) VALUES
(2, 'Es Teler', 34000, 2);
INSERT INTO `products` (`id`, `name`, `harga`, `user_id`) VALUES
(3, 'Rice bowl ayam suwir scrambl', 12000, 3);
INSERT INTO `products` (`id`, `name`, `harga`, `user_id`) VALUES
(4, 'Puding Strawberry', 19000, 4),
(5, 'roti korea', 50000, 5),
(6, 'RED Jelly', 13000, 6),
(7, 'Biji Salak', 35000, 7),
(8, 'Huawei', 23000, 8),
(9, 'soto', 15000, 9),
(10, 'Ciki', 25000, 10),
(11, 'Donken frozen', 24000, 11),
(12, 'Bebek goreng', 35000, 12),
(13, 'Pudding Strawberry', 55000, 13),
(14, 'Iphone 7', 60000, 14),
(15, 'Seprei Home Made Anti Luntur', 85000, 15);

INSERT INTO `users` (`id`, `uid`, `email`) VALUES
(1, 'USEM000000001', 'John Stone');
INSERT INTO `users` (`id`, `uid`, `email`) VALUES
(2, 'USEM000000002', 'Ponnappa Priya');
INSERT INTO `users` (`id`, `uid`, `email`) VALUES
(3, 'USEM000000003', 'Mia Wong');
INSERT INTO `users` (`id`, `uid`, `email`) VALUES
(4, 'USEM000000004', 'Peter Stanbridge'),
(5, 'USEM000000005', 'Natalie Lee-Walsh'),
(6, 'USEM000000006', 'Ang Li'),
(7, 'USEM000000007', 'Nguta Ithya'),
(8, 'USEM000000008', 'Tamzyn French'),
(9, 'USEM000000009', 'Salome Simoes'),
(10, 'USEM0000000010', 'Trevor Virtue'),
(11, 'USEM0000000011', 'Tarryn Campbell-Gillies'),
(12, 'USEM0000000012', 'Eugenia Anders'),
(13, 'USEM0000000013', 'Andrew Kazantzis'),
(14, 'USEM0000000014', 'Verona Blair'),
(15, 'USEM0000000015', 'Jane Meldrum');


/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;