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

-- Dumping structure for procedure ngo.ngo_get_donation
DROP PROCEDURE IF EXISTS `ngo_get_donation`;
DELIMITER //
CREATE PROCEDURE `ngo_get_donation`(
	IN `in_from_date` VARCHAR(50),
	IN `in_to_date` VARCHAR(50)
)
    COMMENT 'Get donations by date'
BEGIN

SET @to_date = (SELECT IF(in_to_date='' OR in_to_date IS NULL ,DATE_ADD(DATE(NOW()),INTERVAL 1 DAY),in_to_date));
SET @from_date = (SELECT IF(in_from_date='' OR in_from_date IS NULL ,DATE_SUB(DATE(NOW()),interval 1 DAY),in_from_date));

SET @SQL = CONCAT("SELECT a.RECORD_ID,b.DONATION_TYPE,p.PRODUCT_NM,DATE_FORMAT(DATE(a.RECORD_DATE),'%d-%m-%Y') AS RECORD_DATE,a.QUANTITY,a.AMOUNT,a.PERSON_COUNT FROM ngo_records a LEFT JOIN donation_type b ON (a.DONATION_TYPE = b.ID) LEFT JOIN products p ON (a.PRODUCT_ID = p.ID) WHERE a.RECORD_TYPE = 1 AND a.CREATE_DATE >= '",@from_date,"' AND a.CREATE_DATE <= '",@to_date,"';");


PREPARE stmt3 FROM @SQL;
EXECUTE stmt3;
DEALLOCATE PREPARE stmt3;

-- CREATE TABLE TEMP_DATE AS SELECT @SQL;

END//
DELIMITER ;

-- Dumping structure for procedure ngo.ngo_get_usage
DROP PROCEDURE IF EXISTS `ngo_get_usage`;
DELIMITER //
CREATE PROCEDURE `ngo_get_usage`(
	IN `in_from_date` VARCHAR(50),
	IN `in_to_date` VARCHAR(50)
)
    COMMENT 'Get usage by date'
BEGIN

SET @to_date = (SELECT IF(in_to_date='' OR in_to_date IS NULL ,DATE_ADD(DATE(NOW()),INTERVAL 1 DAY),in_to_date));
SET @from_date = (SELECT IF(in_from_date='' OR in_from_date IS NULL ,DATE_SUB(DATE(NOW()),interval 1 DAY),in_from_date));

SET @SQL = CONCAT("SELECT a.RECORD_ID,b.DONATION_TYPE AS USAGE_TYPE,p.PRODUCT_NM,DATE_FORMAT(DATE(a.RECORD_DATE),'%d-%m-%Y') AS RECORD_DATE,a.QUANTITY,a.AMOUNT,a.PERSON_COUNT FROM ngo_records a LEFT JOIN donation_type b ON (a.DONATION_TYPE = b.ID) LEFT JOIN products p ON (a.PRODUCT_ID = p.ID) WHERE a.RECORD_TYPE = 2 AND a.CREATE_DATE >= '",@from_date,"' AND a.CREATE_DATE <= '",@to_date,"';");


PREPARE stmt3 FROM @SQL;
EXECUTE stmt3;
DEALLOCATE PREPARE stmt3;

-- CREATE TABLE TEMP_DATE AS SELECT @SQL;

END//
DELIMITER ;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
