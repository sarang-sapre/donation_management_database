-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               8.0.28 - MySQL Community Server - GPL
-- Server OS:                    Win64
-- HeidiSQL Version:             11.3.0.6295
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

-- Dumping data for table ngo.donation_type: ~2 rows (approximately)
DELETE FROM `donation_type`;
/*!40000 ALTER TABLE `donation_type` DISABLE KEYS */;
INSERT INTO `donation_type` (`ID`, `DONATION_TYPE`) VALUES
	(1, 'सरकार'),
	(2, 'खाजगी');
/*!40000 ALTER TABLE `donation_type` ENABLE KEYS */;

-- Dumping data for table ngo.ngo_config: ~0 rows (approximately)
DELETE FROM `ngo_config`;
/*!40000 ALTER TABLE `ngo_config` DISABLE KEYS */;
INSERT INTO `ngo_config` (`ID`, `KEY`, `VALUE`) VALUES
	(1, 'REST_KEY', '90c5bf61-28e3-11ed-88e9-508140925a24');
/*!40000 ALTER TABLE `ngo_config` ENABLE KEYS */;

-- Dumping data for table ngo.ngo_records_type: ~2 rows (approximately)
DELETE FROM `ngo_records_type`;
/*!40000 ALTER TABLE `ngo_records_type` DISABLE KEYS */;
INSERT INTO `ngo_records_type` (`ID`, `RECORD_TYPE`) VALUES
	(1, 'DONATION'),
	(2, 'USAGE');
/*!40000 ALTER TABLE `ngo_records_type` ENABLE KEYS */;

-- Dumping data for table ngo.products: ~48 rows (approximately)
DELETE FROM `products`;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` (`ID`, `PRODUCT_NM`, `PRODUCT_CODE`, `PRODUCT_ORDER`) VALUES
	(1, 'गहु', NULL, 1),
	(2, 'तांदुळ', NULL, 2),
	(3, 'तुरडाळ', NULL, 3),
	(4, 'पि.मुगडाळ/हि.मुगडाळ', NULL, 4),
	(5, 'मसुरडाळ', NULL, 5),
	(6, 'हरभरा डाळ', NULL, 6),
	(7, 'उडीद डाळ', NULL, 7),
	(8, 'मटकी डाळ', NULL, 8),
	(9, 'मटकी', NULL, 9),
	(10, 'हरभरा', NULL, 10),
	(11, 'छोले', NULL, 11),
	(12, 'वाटाणा', NULL, 12),
	(13, 'चवळी', NULL, 13),
	(14, 'ही. मुग', NULL, 14),
	(15, 'अ. मसुर', NULL, 15),
	(16, 'राजमा', NULL, 16),
	(17, 'घेवडा', NULL, 17),
	(18, 'गुळ', NULL, 18),
	(19, 'साखर', NULL, 19),
	(20, 'चहापावडर', NULL, 20),
	(21, 'तुप', NULL, 21),
	(22, 'पापड', NULL, 22),
	(23, 'लोणचे', NULL, 23),
	(24, 'गोड तेल', NULL, 24),
	(25, 'खोबर', NULL, 25),
	(26, 'शेंगदाणे', NULL, 26),
	(27, 'मीठ', NULL, 27),
	(28, 'रवा', NULL, 28),
	(29, 'पोहे', NULL, 29),
	(30, 'साबुदाना/भगर', NULL, 30),
	(31, 'हा. नुडल्स', NULL, 31),
	(32, 'शवई-/उपमा शेवाई', NULL, 32),
	(33, 'सोयाबिन', NULL, 33),
	(34, 'हिंग', NULL, 34),
	(35, 'जिरे', NULL, 35),
	(36, 'मोहरी', NULL, 36),
	(37, 'हळद', NULL, 37),
	(38, 'धनेपावडर', NULL, 38),
	(39, 'लाल तिखट', NULL, 39),
	(40, 'कांदा म. घरचा म.)', NULL, 40),
	(41, 'गोडा म.(पनीर म.)/इतर मसाले', NULL, 41),
	(42, 'गरम म.(किचनकिंग म.)', NULL, 42),
	(43, 'चिंच, आमसुल', NULL, 43),
	(44, 'बडिशेप, धनाडाळ', NULL, 44),
	(45, 'ओवा', NULL, 45),
	(46, 'जवस', NULL, 46),
	(47, 'कारळ, तीळ', NULL, 47),
	(48, 'ज्वारी', NULL, 48),
	(49, 'abc', NULL, 49);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;

-- Dumping data for table ngo.users: ~1 rows (approximately)
DELETE FROM `users`;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`ID`, `USER_ID`, `PASSWORD`, `PASSWORD_SALT`, `CREATE_DATE`, `FIRST_NM`, `MIDDLE_NM`, `LAST_NM`) VALUES
	(1, 'SUPERADMIN', '1a2efba208406d0244cdd425f5ed784ab9390a8c', '0d1bff07-254b-11ed-be2f-508140925a24', '2022-08-25 20:54:20', NULL, NULL, NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
