-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               8.4.0 - MySQL Community Server - GPL
-- Server OS:                    Win64
-- HeidiSQL Version:             12.7.0.6850
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for quan_li_dat_mc
CREATE DATABASE IF NOT EXISTS `quan_li_dat_mc` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `quan_li_dat_mc`;

-- Dumping structure for table quan_li_dat_mc.account
CREATE TABLE IF NOT EXISTS `account` (
  `idAcc` int NOT NULL,
  `email` varchar(35) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `password` varchar(35) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `name` varchar(35) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `city` varchar(35) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `zipcode` int NOT NULL DEFAULT (0),
  `DOB` date NOT NULL,
  PRIMARY KEY (`idAcc`) USING BTREE,
  UNIQUE KEY `idAcc` (`idAcc`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table quan_li_dat_mc.account: ~23 rows (approximately)
INSERT INTO `account` (`idAcc`, `email`, `password`, `name`, `city`, `zipcode`, `DOB`) VALUES
	(1, 'nguyenvana@gmail.com', 'binh113', 'Nguyễn Tú May', 'Hà Nội', 10000, '2000-04-05'),
	(2, 'coyta@gmail.com', 'binh112', 'Nguyễn Văn Doanh', 'Hà Nội', 10000, '1999-04-15'),
	(3, 'oidoioi@gmail.com', '123456', 'Võ Hoàng Yến', 'Thái Bình', 36000, '1997-04-15'),
	(4, 'vuanh@gmail.com', '123456', 'Trấn Thành', 'Sài Gòn', 12000, '1996-11-11'),
	(5, 'binh3110@gmail.com', 'binh222', 'Đỗ Thanh Bình', 'Nam Định', 99000, '2002-11-01'),
	(6, 'anhyeuem@gmail.com', 'binh2003', 'Nguyễn Ri Con', 'Thái Bình', 34000, '1996-05-04'),
	(7, 'qwert@gmail.com', '1234567', 'Jack Bến Tre', 'Bến Tre', 20000, '1997-02-01'),
	(8, 'sontung@gmail.com', 'sontung', 'Sơn Tùng MTP', 'Thái Bình', 100000, '1996-03-05'),
	(9, 'datka@gmail.com', 'datka', 'Đạt KKa', 'Đồng Nai', 43000, '2000-08-29'),
	(10, 'chidung@gmail.com', 'chidung', 'Chí Dũng', 'Hà Nội', 10000, '2003-12-12'),
	(11, 'xuanbach@gmail.com', 'xuanbach', 'Xuân Bách', 'Hà Nội', 12000, '2001-11-21'),
	(12, 'thuylinh@gmail.com', 'thuylinh', 'Nguyễn Thùy Linh', 'Sóc Trăng', 15000, '2002-04-08'),
	(13, 'thaison@gmail.com', 'thaison', 'Nguyễn Thái Sơn', 'Thái Bình', 100000, '2003-12-20'),
	(14, 'wangminh@gmail.com', 'wangmimh', 'Phạm Quang Minh', 'Hải Dương', 20000, '2002-10-18'),
	(15, 'phamluc@gmail.com', 'phamluc', 'Phạm Thế Lực', 'Bình Dương', 30000, '1999-07-08'),
	(16, 'thenam@gmail.com', 'thenam', 'Nguyễn Thế Nam', 'Hải Dương', 14000, '2000-09-23'),
	(17, 'hongthai@gmail.com', 'hongthai', 'Phạm Hông Thái', 'Hà Nội', 23000, '1998-12-12'),
	(18, 'quyduong@gmail.com', 'quyduong', 'Bùi Quý Dương', 'Nam Định', 29000, '1996-07-27'),
	(19, 'viettrung@gmail.com', 'viettrung', 'Nguyễn Việt Trung', 'Bình Định', 25000, '2000-10-12'),
	(20, 'ducnhi@gmail.com', 'ducnhi', 'Bùi Đức Nhì', 'Bình Dương', 17000, '2002-10-26'),
	(21, 'thewuyen@gmail.com', 'thewuyen', 'Phạm Thế Quyền', 'Thái Bình', 60000, '1998-10-18'),
	(22, 'khanhhuyen@gmail.com', 'khanhhuyen', 'Nguyễn Khánh Huyền', 'Đăk Lắk', 66000, '1997-05-09'),
	(23, 'dinhvu@gmail.com', 'dinhhvu', 'Bùi Đình Vũ', 'Sài Gòn', 70000, '1999-09-12'),
	(24, 'dinhtruong@gmail.com', 'dinhtruong', 'Đinh Văn Trường', 'Sóc Trăng', 27000, '2001-12-29');

-- Dumping structure for table quan_li_dat_mc.admin
CREATE TABLE IF NOT EXISTS `admin` (
  `idAcc` int NOT NULL,
  PRIMARY KEY (`idAcc`) USING BTREE,
  UNIQUE KEY `idAcc` (`idAcc`) USING BTREE,
  CONSTRAINT `FK_admin_manager` FOREIGN KEY (`idAcc`) REFERENCES `manager` (`idAcc`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table quan_li_dat_mc.admin: ~0 rows (approximately)

-- Dumping structure for table quan_li_dat_mc.book
CREATE TABLE IF NOT EXISTS `book` (
  `idBook` int NOT NULL,
  `idEvent` int NOT NULL,
  `idSale` int DEFAULT NULL,
  `totalPrice` int NOT NULL,
  `status` bit(1) NOT NULL DEFAULT (0x00),
  `create` datetime NOT NULL DEFAULT (sysdate()),
  PRIMARY KEY (`idBook`) USING BTREE,
  UNIQUE KEY `idBook` (`idBook`) USING BTREE,
  KEY `FK_book_event` (`idEvent`) USING BTREE,
  KEY `Fk_book_sale` (`idSale`) USING BTREE,
  CONSTRAINT `FK_book_event` FOREIGN KEY (`idEvent`) REFERENCES `event` (`idEvent`) ON DELETE CASCADE,
  CONSTRAINT `FK_book_sale` FOREIGN KEY (`idSale`) REFERENCES `sale` (`idAcc`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table quan_li_dat_mc.book: ~8 rows (approximately)
INSERT INTO `book` (`idBook`, `idEvent`, `idSale`, `totalPrice`, `status`, `create`) VALUES
	(1, 1, 8, 1200000, b'1', '2023-10-29 11:48:08'),
	(2, 2, 13, 1500000, b'1', '2022-02-02 05:48:41'),
	(3, 3, 15, 2000000, b'1', '2024-04-02 15:49:19'),
	(4, 4, 8, 2000000, b'1', '2024-09-19 17:49:38'),
	(5, 5, 8, 2300000, b'1', '2023-08-16 01:50:13'),
	(6, 6, 13, 3000000, b'1', '2023-06-23 03:50:43'),
	(7, 7, 13, 3400000, b'1', '2024-07-25 17:52:09'),
	(8, 8, 15, 3900000, b'0', '2024-01-03 23:52:36'),
	(9, 9, 24, 4400000, b'1', '2024-12-05 15:52:55'),
	(10, 10, 24, 5000000, b'0', '2024-03-17 22:53:11');

-- Dumping structure for table quan_li_dat_mc.calendar
CREATE TABLE IF NOT EXISTS `calendar` (
  `idCal` int NOT NULL,
  `idBook` int DEFAULT NULL,
  `timeStart` datetime NOT NULL,
  `timeEnd` datetime NOT NULL,
  `idMC` int NOT NULL,
  PRIMARY KEY (`idCal`) USING BTREE,
  UNIQUE KEY `idCal` (`idCal`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table quan_li_dat_mc.calendar: ~11 rows (approximately)
INSERT INTO `calendar` (`idCal`, `idBook`, `timeStart`, `timeEnd`, `idMC`) VALUES
	(1, 1, '2024-09-11 21:54:13', '2024-09-12 21:54:18', 3),
	(2, 2, '2024-06-17 15:54:35', '2024-06-17 21:54:31', 4),
	(3, 3, '2024-08-11 21:54:44', '2024-08-14 21:54:46', 5),
	(4, 4, '2024-02-06 21:54:54', '2024-02-11 21:54:56', 6),
	(5, 5, '2024-11-11 18:55:07', '2024-11-12 06:55:08', 7),
	(6, 6, '2024-06-21 21:55:18', '2024-06-25 21:55:19', 8),
	(7, 7, '2024-04-03 21:55:34', '2024-04-05 21:55:35', 9),
	(8, 8, '2024-07-13 14:55:44', '2024-07-13 21:55:46', 10),
	(9, 9, '2024-06-11 15:55:59', '2024-06-12 18:55:59', 11),
	(10, 10, '2024-12-24 15:56:10', '2024-12-26 21:56:11', 12),
	(11, 11, '2024-06-11 21:56:18', '2024-06-12 21:56:20', 13);

-- Dumping structure for table quan_li_dat_mc.chat
CREATE TABLE IF NOT EXISTS `chat` (
  `idChat` int NOT NULL,
  `idMan` int NOT NULL,
  `idCus` int NOT NULL,
  `message` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `time` datetime NOT NULL DEFAULT (sysdate()),
  `isManSent` bit(1) NOT NULL,
  PRIMARY KEY (`idChat`) USING BTREE,
  UNIQUE KEY `idChat` (`idChat`) USING BTREE,
  KEY `FK_manager` (`idMan`) USING BTREE,
  KEY `FK_customer` (`idCus`) USING BTREE,
  CONSTRAINT `FK_customer` FOREIGN KEY (`idCus`) REFERENCES `customer` (`idAcc`) ON UPDATE CASCADE,
  CONSTRAINT `FK_manager` FOREIGN KEY (`idMan`) REFERENCES `manager` (`idAcc`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table quan_li_dat_mc.chat: ~14 rows (approximately)
INSERT INTO `chat` (`idChat`, `idMan`, `idCus`, `message`, `time`, `isManSent`) VALUES
	(1, 8, 3, 'Chào bạn', '2024-03-14 21:57:44', b'0'),
	(2, 8, 3, 'Hello', '2023-12-11 14:58:12', b'1'),
	(3, 8, 3, 'Húuu', '2024-08-25 09:58:26', b'0'),
	(4, 8, 3, 'Bạn tỏ chức ở đâu', '2024-06-08 01:58:55', b'1'),
	(5, 8, 3, 'Tầm 2000 ng', '2024-06-11 12:59:23', b'0'),
	(6, 8, 3, 'Bạn tổ chức khi nào?', '2024-06-14 06:59:44', b'1'),
	(7, 8, 3, 'Xin lỗi tôi nhầm số', '2024-04-08 22:08:25', b'1'),
	(8, 8, 3, 'Tôi rất chào bạn', '2024-10-06 18:08:54', b'0'),
	(9, 8, 3, 'Oke bạn nhé', '2024-08-23 11:09:58', b'1'),
	(10, 8, 3, 'Oke chốt như vậy nhé', '2024-03-17 17:10:21', b'0'),
	(11, 8, 3, 'Cảm ơn bạn', '2024-03-03 17:10:38', b'1'),
	(12, 8, 3, 'Tôi có thể giúp gì cho bạn không?', '2024-05-07 06:11:10', b'0'),
	(13, 13, 11, 'Hồi hộp quá', '2024-06-22 03:11:39', b'1'),
	(14, 15, 6, 'Tôi mong chờ đến ngày quá', '2024-10-13 16:12:15', b'0');

-- Dumping structure for table quan_li_dat_mc.customer
CREATE TABLE IF NOT EXISTS `customer` (
  `idAcc` int NOT NULL,
  `idOffer` int NOT NULL DEFAULT '0',
  `countOfBook` int NOT NULL,
  `paymentMethod` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`idAcc`) USING BTREE,
  UNIQUE KEY `idAcc` (`idAcc`) USING BTREE,
  KEY `FK_customer_offer` (`idOffer`) USING BTREE,
  CONSTRAINT `FK_customer_account` FOREIGN KEY (`idAcc`) REFERENCES `account` (`idAcc`) ON UPDATE CASCADE,
  CONSTRAINT `FK_customer_offer` FOREIGN KEY (`idOffer`) REFERENCES `offer` (`idOffer`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table quan_li_dat_mc.customer: ~10 rows (approximately)
INSERT INTO `customer` (`idAcc`, `idOffer`, `countOfBook`, `paymentMethod`) VALUES
	(3, 1, 2, 'MoMo'),
	(4, 1, 1, 'Tien Mat'),
	(5, 2, 1, 'Epay'),
	(6, 2, 2, 'Paypal'),
	(7, 3, 1, 'ZaloPay'),
	(8, 1, 1, 'ZaloPay'),
	(10, 1, 3, 'Tien Mat'),
	(11, 2, 1, 'MoMo'),
	(12, 4, 2, 'ZaloPay'),
	(13, 6, 1, 'ZaloPay'),
	(14, 5, 1, 'ZaloPay');

-- Dumping structure for table quan_li_dat_mc.event
CREATE TABLE IF NOT EXISTS `event` (
  `idEvent` int NOT NULL,
  `idCus` int NOT NULL,
  `idScale` int NOT NULL,
  `idType` int NOT NULL,
  `name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `place` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `timeStart` datetime NOT NULL,
  `timeEnd` datetime NOT NULL,
  PRIMARY KEY (`idEvent`) USING BTREE,
  UNIQUE KEY `idEvent` (`idEvent`) USING BTREE,
  KEY `FK_event_customer` (`idCus`) USING BTREE,
  KEY `FK_event_type_event` (`idType`) USING BTREE,
  KEY `FK_event_sale_event` (`idScale`) USING BTREE,
  CONSTRAINT `FK_event_customer` FOREIGN KEY (`idCus`) REFERENCES `customer` (`idAcc`) ON UPDATE CASCADE,
  CONSTRAINT `FK_event_sale_event` FOREIGN KEY (`idScale`) REFERENCES `sale_event` (`idScale`) ON UPDATE CASCADE,
  CONSTRAINT `FK_event_type_event` FOREIGN KEY (`idType`) REFERENCES `type_event` (`idType`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table quan_li_dat_mc.event: ~11 rows (approximately)
INSERT INTO `event` (`idEvent`, `idCus`, `idScale`, `idType`, `name`, `place`, `timeStart`, `timeEnd`) VALUES
	(1, 3, 1, 6, 'Đám cưới', 'Nam Định', '2024-05-07 21:20:58', '2024-05-08 21:21:00'),
	(2, 4, 2, 9, 'Sinh nhật', 'Bắc Ninh', '2024-04-11 21:22:45', '2024-04-11 20:23:48'),
	(3, 5, 3, 9, 'Sinh nhật', 'PTIT', '2024-06-11 21:23:16', '2024-06-11 23:23:18'),
	(4, 6, 1, 3, 'Hội thảo', 'Hà Nội', '2024-06-15 18:23:41', '2024-06-15 21:23:45'),
	(5, 7, 3, 8, 'Họp lớp', 'PTIT', '2024-02-06 18:30:16', '2024-02-06 21:30:16'),
	(6, 8, 2, 7, 'Du lịch', 'Nha Trang', '2024-05-21 00:30:43', '2024-05-25 00:30:45'),
	(7, 10, 3, 8, 'Rap Việt', 'Hà Nội', '2024-01-11 21:25:14', '2024-01-15 21:25:16'),
	(8, 11, 3, 4, 'Hội thảo', 'Nam Định', '2024-03-11 18:26:08', '2024-03-11 21:26:09'),
	(9, 12, 5, 5, 'Chào đón tân sinh viên', 'PTIT', '2024-06-11 05:30:45', '2024-06-11 12:30:47'),
	(10, 13, 2, 5, 'Hội thảo', 'Trung tâm thể thao', '2024-06-13 18:30:18', '2024-06-13 21:30:18'),
	(11, 14, 2, 2, 'Họp lớp', 'Karaoke 797', '2024-07-11 21:30:43', '2024-07-12 03:30:44');

-- Dumping structure for table quan_li_dat_mc.images
CREATE TABLE IF NOT EXISTS `images` (
  `idMC` int NOT NULL,
  `image` varchar(600) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`idMC`,`image`) USING BTREE,
  CONSTRAINT `FK_images_mc` FOREIGN KEY (`idMC`) REFERENCES `mc` (`idAcc`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table quan_li_dat_mc.images: ~11 rows (approximately)
INSERT INTO `images` (`idMC`, `image`) VALUES
	(3, 'https://www.google.com/imgres?q=l%E1%BA%A1i%20v%C4%83n%20s%C3%A2m&imgurl=https%3A%2F%2Fupload.wikimedia.org%2Fwikipedia%2Fcommons%2Fa%2Fa3%2FNB_Lai_Van_Sam.png&imgrefurl=https%3A%2F%2Fvi.wikipedia.org%2Fwiki%2FL%25E1%25BA%25A1i_V%25C4%2583n_S%25C3%25A2m&docid=MSWcK3Ild3GpWM&tbnid=SLRtKXfLgffSoM&vet=12ahUKEwi9qMye09OGAxXnslYBHRJcCiMQM3oECBQQAA..i&w=739&h=768&hcb=2&ved=2ahUKEwi9qMye09OGAxXnslYBHRJcCiMQM3oECBQQAA'),
	(4, 'https://www.google.com/imgres?q=Tr%E1%BA%A5n%20th%C3%A0nh&imgurl=https%3A%2F%2Fupload.wikimedia.org%2Fwikipedia%2Fcommons%2F2%2F2a%2FTr%25E1%25BA%25A5n_Th%25C3%25A0nh_191226.png&imgrefurl=https%3A%2F%2Fvi.wikipedia.org%2Fwiki%2FTr%25E1%25BA%25A5n_Th%25C3%25A0nh&docid=za0S4G7m939H1M&tbnid=rKo5N_ayIQ1DIM&vet=12ahUKEwixsODR09OGAxV7klYBHbdjDE4QM3oECBgQAA..i&w=1800&h=2160&hcb=2&itg=1&ved=2ahUKEwixsODR09OGAxV7klYBHbdjDE4QM3oECBgQAA'),
	(5, 'https://www.google.com/imgres?q=phan%20ann%20t%E1%BB%ABng%20y%C3%AAu&imgurl=https%3A%2F%2Fi1.sndcdn.com%2Fartworks-000634518262-d7assp-t500x500.jpg&imgrefurl=https%3A%2F%2Fsoundcloud.com%2Fphanduyanhstar1992%2Ftung-yeu-vocal-phan-duy-anh&docid=1RfBSA9ejjyUPM&tbnid=mdYz9iWoUJjeEM&vet=12ahUKEwjfzJrr09OGAxVLrVYBHZBCBrUQM3oECHEQAA..i&w=500&h=500&hcb=2&ved=2ahUKEwjfzJrr09OGAxVLrVYBHZBCBrUQM3oECHEQAA\r\n'),
	(6, 'https://www.google.com/imgres?q=%C4%91%E1%BA%A1i%20ngh%C4%A9a&imgurl=https%3A%2F%2Ftoquoc.mediacdn.vn%2F280518851207290880%2F2023%2F2%2F6%2Fdn1-16756447886581896364747.jpg&imgrefurl=https%3A%2F%2Ftoquoc.vn%2Fmc-dai-nghia-con-duong-den-voi-nghe-dien-va-tich-cuc-lam-thien-nguyen-20230206075443256.htm&docid=hTfSn44wFSfNvM&tbnid=QWlKqNr5wWsRUM&vet=12ahUKEwjl4IuG1NOGAxURklYBHRYdCNUQM3oECGQQAA..i&w=720&h=480&hcb=2&ved=2ahUKEwjl4IuG1NOGAxURklYBHRYdCNUQM3oECGQQAA'),
	(7, 'https://www.google.com/imgres?q=qu%C3%BD%20b%C3%ACnh&imgurl=https%3A%2F%2Fthanhnien.mediacdn.vn%2FUploaded%2Fhienth%2F2022_11_15%2Fcanon-canon-eos-5d-mark-iv-47483844-47542645872-4134.jpg&imgrefurl=https%3A%2F%2Fthanhnien.vn%2Fquy-binh-tiet-lo-cuoc-song-ben-vo-doanh-nhan-sau-khi-chao-don-con-dau-long-1851521873.htm&docid=dslC692Fx5YvMM&tbnid=gSzOTRosTWEZLM&vet=12ahUKEwi6oP2O1NOGAxV1sFYBHfeTBhIQM3oECBUQAA..i&w=1516&h=852&hcb=2&ved=2ahUKEwi6oP2O1NOGAxV1sFYBHfeTBhIQM3oECBUQAA'),
	(8, 'https://www.google.com/imgres?q=th%C3%A0nh%20trung&imgurl=https%3A%2F%2Fupload.wikimedia.org%2Fwikipedia%2Fcommons%2F7%2F70%2FThanhTrung1983.jpg&imgrefurl=https%3A%2F%2Fvi.wikipedia.org%2Fwiki%2FTh%25C3%25A0nh_Trung_(MC)&docid=XGJxQfXVPBTl4M&tbnid=yNyt_nNAv_CokM&vet=12ahUKEwi63cCX1NOGAxXF2jQHHX66BH4QM3oECBMQAA..i&w=1440&h=2073&hcb=2&ved=2ahUKEwi63cCX1NOGAxXF2jQHHX66BH4QM3oECBMQAA'),
	(9, 'https://www.google.com/imgres?q=mc%20di%E1%BB%85m%20qu%E1%BB%B3nh&imgurl=https%3A%2F%2Fnld.mediacdn.vn%2F291774122806476800%2F2021%2F9%2F22%2Fanh-chup-man-hinh-2021-09-22-luc-25403-ch-1632297316684542636541.png&imgrefurl=https%3A%2F%2Fnld.com.vn%2Fvan-nghe%2Fmc-diem-quynh-giu-chuc-giam-doc-vfc-thay-dao-dien-do-thanh-hai-20210922145759917.htm&docid=6YJ1_iubnDwq2M&tbnid=Zmn_lDO2Gb6y9M&vet=12ahUKEwil2pCh1NOGAxV55TQHHeX5AZwQM3oECBcQAA..i&w=499&h=386&hcb=2&ved=2ahUKEwil2pCh1NOGAxV55TQHHeX5AZwQM3oECBcQAA'),
	(10, 'https://www.google.com/imgres?q=mc%20M%E1%BB%B9%20lan&imgurl=https%3A%2F%2Fvnn-imgs-f.vgcloud.vn%2F2020%2F01%2F23%2F16%2Fmc-my-lan-danh-tung-mac-ao-dai-doi-don-tet-1.jpg&imgrefurl=https%3A%2F%2Fvietnamnet.vn%2Fmc-my-lan-danh-tung-mac-ao-dai-doi-don-tet-611482.html&docid=_0dIdmOZgwtWoM&tbnid=cAlisusslENs1M&vet=12ahUKEwj-y-DG3NOGAxWvka8BHZ4wAioQM3oECBQQAA..i&w=600&h=900&hcb=2&ved=2ahUKEwj-y-DG3NOGAxWvka8BHZ4wAioQM3oECBQQAA'),
	(11, 'https://www.google.com/imgres?q=mc%20th%C3%BAy%20h%E1%BA%B1ng&imgurl=http%3A%2F%2Fgiadinh.mediacdn.vn%2F2018%2Fvquy1155-1-1515465880720.jpg&imgrefurl=https%3A%2F%2Fgiadinh.suckhoedoisong.vn%2Froi-ban-tin-thoi-su-dung-nhan-btv-thuy-hang-gio-ra-sao-172180109094158993.htm&docid=9b4ruFgmPei6yM&tbnid=lNpr2Carg9dbfM&vet=12ahUKEwig9fDW3NOGAxVLfPUHHVMbA2UQM3oECBUQAA..i&w=2000&h=3000&hcb=2&ved=2ahUKEwig9fDW3NOGAxVLfPUHHVMbA2UQM3oECBUQAA'),
	(12, 'https://www.google.com/imgres?q=mc%20thu%20ph%C6%B0%C6%A1ng&imgurl=https%3A%2F%2Fgiadinh.mediacdn.vn%2F296230595582509056%2F2021%2F9%2F13%2Fphoto1631507578327-1631507579382748191022.png&imgrefurl=https%3A%2F%2Fgiadinh.suckhoedoisong.vn%2Fhuy-mc-chong-cu-thu-phuong-cuoc-hon-nhan-thu-hai-thay-doi-doi-toi-172211014082452398.htm&docid=lWNH4Qc9YaO1HM&tbnid=wOko4GT79Wl4mM&vet=12ahUKEwja88Hk3NOGAxVHoq8BHRzLDdgQM3oECGQQAA..i&w=620&h=387&hcb=2&ved=2ahUKEwja88Hk3NOGAxVHoq8BHRzLDdgQM3oECGQQAA'),
	(13, 'https://www.google.com/imgres?q=mc%20kh%C3%A1nh%20trang&imgurl=https%3A%2F%2Fcdn-images.vtv.vn%2F2022%2F6%2F12%2F12013416132728155394987022649701645881375557n-165504611180976270593.jpg&imgrefurl=https%3A%2F%2Fvtv.vn%2Ftruyen-hinh%2Fbtv-khanh-trang-chon-dung-3-kieu-toc-de-len-hinh-20220612212208519.htm&docid=FdcQK92XdVasPM&tbnid=zhT3s23aiMXduM&vet=12ahUKEwjiq5Lu3NOGAxXnbPUHHd3cCBcQM3oECBwQAA..i&w=960&h=960&hcb=2&ved=2ahUKEwjiq5Lu3NOGAxXnbPUHHd3cCBcQM3oECBwQAA'),
	(14, 'https://www.google.com/imgres?q=mc%20ho%C3%A0ng%20oanh&imgurl=https%3A%2F%2Fimages2.thanhnien.vn%2F528068263637045248%2F2023%2F3%2F31%2Fsbt3278-16802336896572066962793.jpg&imgrefurl=https%3A%2F%2Fthanhnien.vn%2Fa-hau-hoang-oanh-toi-dang-khong-co-nhu-cau-yeu-duong-185230331105525019.htm&docid=wh3F-lm1IXN-IM&tbnid=fjsgwcS5HcGGgM&vet=12ahUKEwjx6qn53NOGAxURn68BHWcTAycQM3oECF4QAA..i&w=2000&h=1386&hcb=2&ved=2ahUKEwjx6qn53NOGAxURn68BHWcTAycQM3oECF4QAA');

-- Dumping structure for table quan_li_dat_mc.language_mc
CREATE TABLE IF NOT EXISTS `language_mc` (
  `idLang` int NOT NULL,
  `Lang` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`idLang`) USING BTREE,
  UNIQUE KEY `idLang` (`idLang`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table quan_li_dat_mc.language_mc: ~6 rows (approximately)
INSERT INTO `language_mc` (`idLang`, `Lang`) VALUES
	(1, 'Tiếng Việt'),
	(2, 'Tiếng Anh'),
	(3, 'Tiếng Ả Rập'),
	(4, 'Tiếng Hàn Quốc'),
	(5, 'Tiếng lào'),
	(6, 'Tiếng Thái'),
	(7, 'Tiếng Nga');

-- Dumping structure for table quan_li_dat_mc.lang_of_mc
CREATE TABLE IF NOT EXISTS `lang_of_mc` (
  `idLang` int NOT NULL,
  `idMC` int NOT NULL,
  PRIMARY KEY (`idLang`,`idMC`) USING BTREE,
  KEY `Fk_mc` (`idMC`) USING BTREE,
  CONSTRAINT `FK_language_mc` FOREIGN KEY (`idLang`) REFERENCES `language_mc` (`idLang`) ON DELETE CASCADE,
  CONSTRAINT `FK_mc` FOREIGN KEY (`idMC`) REFERENCES `mc` (`idAcc`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table quan_li_dat_mc.lang_of_mc: ~19 rows (approximately)
INSERT INTO `lang_of_mc` (`idLang`, `idMC`) VALUES
	(1, 3),
	(2, 3),
	(3, 3),
	(4, 3),
	(5, 3),
	(6, 3),
	(2, 4),
	(3, 5),
	(4, 6),
	(5, 7),
	(6, 8),
	(1, 10),
	(1, 11),
	(2, 11),
	(3, 11),
	(4, 11),
	(5, 11),
	(3, 12),
	(1, 13),
	(1, 14);

-- Dumping structure for table quan_li_dat_mc.level_mc
CREATE TABLE IF NOT EXISTS `level_mc` (
  `idLevel` int NOT NULL,
  `level` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`idLevel`) USING BTREE,
  UNIQUE KEY `idLevel` (`idLevel`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table quan_li_dat_mc.level_mc: ~4 rows (approximately)
INSERT INTO `level_mc` (`idLevel`, `level`) VALUES
	(1, 'Chuyên NGhiệp'),
	(2, 'Bán Chuyên'),
	(3, 'Nổi Tiếng'),
	(4, 'MC Truyền Hình');

-- Dumping structure for table quan_li_dat_mc.manager
CREATE TABLE IF NOT EXISTS `manager` (
  `idAcc` int NOT NULL,
  PRIMARY KEY (`idAcc`) USING BTREE,
  UNIQUE KEY `idAcc` (`idAcc`) USING BTREE,
  CONSTRAINT `FK_manager_account` FOREIGN KEY (`idAcc`) REFERENCES `account` (`idAcc`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table quan_li_dat_mc.manager: ~4 rows (approximately)
INSERT INTO `manager` (`idAcc`) VALUES
	(8),
	(13),
	(15),
	(22),
	(24);

-- Dumping structure for table quan_li_dat_mc.mc
CREATE TABLE IF NOT EXISTS `mc` (
  `idAcc` int NOT NULL,
  `idLevel` int NOT NULL,
  `video` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `experience` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`idAcc`) USING BTREE,
  UNIQUE KEY `idAcc` (`idAcc`) USING BTREE,
  KEY `FK_mc_level_mc` (`idLevel`) USING BTREE,
  CONSTRAINT `FK_mc_account` FOREIGN KEY (`idAcc`) REFERENCES `account` (`idAcc`) ON DELETE CASCADE,
  CONSTRAINT `FK_mc_level_mc` FOREIGN KEY (`idLevel`) REFERENCES `level_mc` (`idLevel`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table quan_li_dat_mc.mc: ~11 rows (approximately)
INSERT INTO `mc` (`idAcc`, `idLevel`, `video`, `experience`) VALUES
	(3, 2, 'https://www.youtube.com/watch?v=ZQF9k8edwAo&ab_channel=ALOMediaEntertainment', 2),
	(4, 1, 'https://www.youtube.com/watch?v=kfH16-5-PZA&ab_channel=HTVEntertainment', 0),
	(5, 2, 'https://www.youtube.com/watch?v=YRFSTg9IXNc&ab_channel=ACVEntertainment', 1),
	(6, 3, 'https://www.youtube.com/watch?v=OvlztfSB_fM&ab_channel=%C4%90%E1%BA%A0INGH%C4%A8AOFFICIAL', 5),
	(7, 2, 'https://www.youtube.com/watch?v=Bj_Dg9OeiPI&ab_channel=SoloC%C3%B9ngBolero', 2),
	(8, 4, 'https://www.youtube.com/c/Th%C3%A0nhTrungTV', 8),
	(9, 3, 'https://www.youtube.com/watch?v=fHlrwt8xaHo&ab_channel=VTVGo', 3),
	(10, 3, 'https://www.youtube.com/watch?v=hP3qYkMx6Mw&ab_channel=Ti%E1%BB%83uS%E1%BB%ADNg%C6%B0%E1%BB%9DiN%E1%BB%95iTi%E1%BA%BFng', 5),
	(11, 4, 'https://www.youtube.com/watch?v=H8iWxubT5-g&ab_channel=HoaiNamLe', 6),
	(12, 4, 'https://www.youtube.com/watch?v=oOnT_GUa5XM&ab_channel=TuanTran', 6),
	(13, 4, 'https://www.youtube.com/watch?v=r1WEu5mVoNk&ab_channel=TI%E1%BB%82US%E1%BB%ACNG%C6%AF%E1%BB%9CIN%E1%BB%94ITI%E1%BA%BENG', 6),
	(14, 4, 'https://www.youtube.com/watch?v=PlyfuAZlnJE&ab_channel=%C3%81H%E1%BA%ADu-MCHo%C3%A0ngOanh', 6);

-- Dumping structure for table quan_li_dat_mc.offer
CREATE TABLE IF NOT EXISTS `offer` (
  `idOffer` int NOT NULL,
  `discount` int NOT NULL,
  `countOfBook` int NOT NULL,
  PRIMARY KEY (`idOffer`) USING BTREE,
  UNIQUE KEY `idOffer` (`idOffer`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table quan_li_dat_mc.offer: ~8 rows (approximately)
INSERT INTO `offer` (`idOffer`, `discount`, `countOfBook`) VALUES
	(1, 0, 0),
	(2, 2, 100000),
	(3, 3, 200000),
	(4, 5, 200000),
	(5, 7, 400000),
	(6, 9, 600000),
	(7, 12, 700000),
	(8, 15, 1000000),
	(9, 20, 1500000),
	(10, 30, 2000000);

-- Dumping structure for table quan_li_dat_mc.rate
CREATE TABLE IF NOT EXISTS `rate` (
  `idRate` int NOT NULL,
  `idCus` int NOT NULL,
  `idMC` int NOT NULL,
  `rate` int NOT NULL DEFAULT '0',
  `comment` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `createAt` datetime NOT NULL DEFAULT (sysdate()),
  PRIMARY KEY (`idRate`,`idCus`) USING BTREE,
  UNIQUE KEY `idRate` (`idRate`) USING BTREE,
  KEY `FK_rate_mc` (`idMC`) USING BTREE,
  KEY `FK_rate_customer` (`idCus`) USING BTREE,
  CONSTRAINT `FK_rate_customer` FOREIGN KEY (`idCus`) REFERENCES `customer` (`idAcc`),
  CONSTRAINT `FK_rate_mc` FOREIGN KEY (`idMC`) REFERENCES `mc` (`idAcc`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table quan_li_dat_mc.rate: ~11 rows (approximately)
INSERT INTO `rate` (`idRate`, `idCus`, `idMC`, `rate`, `comment`, `createAt`) VALUES
	(1, 3, 3, 5, 'Tuyệt vời', '2023-09-14 12:42:44'),
	(2, 4, 4, 4, 'Wow', '2022-02-05 22:38:18'),
	(3, 5, 5, 4, 'Sừ ba ra shi', '2024-02-24 04:39:02'),
	(4, 5, 6, 4, 'Sư gôi', '2024-04-12 12:39:27'),
	(5, 6, 3, 4, 'Waooooo', '2023-11-12 09:40:03'),
	(6, 7, 4, 3, 'Húuuuuuuu', '2023-07-19 13:40:32'),
	(7, 3, 5, 2, 'Quá cảm xúc', '2024-03-30 21:41:13'),
	(8, 8, 5, 5, 'Quá hay', '2023-10-12 00:41:33'),
	(9, 7, 9, 1, 'Không còn từ ngữ nào để khen', '2024-08-15 16:44:21'),
	(10, 14, 8, 3, 'Quá đỉnh!!!!', '2024-07-13 06:44:57'),
	(11, 3, 3, 3, 'Ở mây dinhhh gút dóp ', '2023-06-20 14:45:28'),
	(12, 6, 10, 2, 'Tuyệt cà là vời', '2023-08-07 02:45:59'),
	(13, 3, 3, 4, 'Quả là chuyên nghiệp', '2024-06-19 13:46:26');

-- Dumping structure for table quan_li_dat_mc.sale
CREATE TABLE IF NOT EXISTS `sale` (
  `idAcc` int NOT NULL,
  `wage` int DEFAULT NULL,
  PRIMARY KEY (`idAcc`) USING BTREE,
  UNIQUE KEY `Index 2` (`idAcc`) USING BTREE,
  CONSTRAINT `FK_sale_manager` FOREIGN KEY (`idAcc`) REFERENCES `manager` (`idAcc`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table quan_li_dat_mc.sale: ~4 rows (approximately)
INSERT INTO `sale` (`idAcc`, `wage`) VALUES
	(8, 1200000),
	(13, 5000000),
	(15, 2000000),
	(24, 3200000);

-- Dumping structure for table quan_li_dat_mc.sale_event
CREATE TABLE IF NOT EXISTS `sale_event` (
  `idScale` int NOT NULL,
  `scale` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`idScale`) USING BTREE,
  UNIQUE KEY `idScale` (`idScale`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table quan_li_dat_mc.sale_event: ~4 rows (approximately)
INSERT INTO `sale_event` (`idScale`, `scale`) VALUES
	(1, 'Sự kiện quy mô dưới 200 người'),
	(2, 'Sự kiện quy mô dưới 500 người'),
	(3, 'Sự kiện quy mô dưới 1000 người'),
	(4, 'Sự kiện quy mô dưới 2000 người'),
	(5, 'Sự kiện quy mô trên 2000 người');

-- Dumping structure for table quan_li_dat_mc.scaleev_of_mc
CREATE TABLE IF NOT EXISTS `scaleev_of_mc` (
  `idScale` int NOT NULL,
  `idMC` int NOT NULL,
  PRIMARY KEY (`idScale`,`idMC`) USING BTREE,
  KEY `FK_scaleev_of_mc_mc` (`idMC`) USING BTREE,
  CONSTRAINT `FK_scaleev_of_mc_mc` FOREIGN KEY (`idMC`) REFERENCES `mc` (`idAcc`) ON DELETE CASCADE,
  CONSTRAINT `FK_scaleev_of_mc_scale_event` FOREIGN KEY (`idScale`) REFERENCES `sale_event` (`idScale`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table quan_li_dat_mc.scaleev_of_mc: ~15 rows (approximately)
INSERT INTO `scaleev_of_mc` (`idScale`, `idMC`) VALUES
	(1, 3),
	(2, 3),
	(3, 3),
	(2, 4),
	(3, 5),
	(1, 8),
	(4, 8),
	(3, 9),
	(1, 10),
	(2, 10),
	(3, 10),
	(2, 11),
	(3, 12),
	(1, 14),
	(2, 14),
	(3, 14);

-- Dumping structure for table quan_li_dat_mc.sdt
CREATE TABLE IF NOT EXISTS `sdt` (
  `idAcc` int NOT NULL,
  `SDT` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`idAcc`,`SDT`) USING BTREE,
  CONSTRAINT `FK_sdt_account` FOREIGN KEY (`idAcc`) REFERENCES `account` (`idAcc`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table quan_li_dat_mc.sdt: ~21 rows (approximately)
INSERT INTO `sdt` (`idAcc`, `SDT`) VALUES
	(1, '096123456'),
	(2, '097145678'),
	(3, '038812309'),
	(4, '036198456'),
	(5, '098724567'),
	(6, '012659432'),
	(7, '032749146'),
	(8, '086371267'),
	(9, '065874562'),
	(10, '033387436'),
	(11, '038621978'),
	(12, '089243112'),
	(13, '087212566'),
	(14, '066546872'),
	(15, '086209431'),
	(16, '034129479'),
	(17, '093154391'),
	(18, '043514947'),
	(19, '026315211'),
	(20, '031254987'),
	(21, '097862141'),
	(22, '045723714'),
	(23, '079024128'),
	(24, '089162549');

-- Dumping structure for table quan_li_dat_mc.typeev_of_mc
CREATE TABLE IF NOT EXISTS `typeev_of_mc` (
  `idType` int NOT NULL,
  `idMC` int NOT NULL,
  PRIMARY KEY (`idType`,`idMC`) USING BTREE,
  KEY `FK_typeev_of_mc_mc` (`idMC`) USING BTREE,
  CONSTRAINT `FK_typeev_of_mc_mc` FOREIGN KEY (`idMC`) REFERENCES `mc` (`idAcc`) ON UPDATE CASCADE,
  CONSTRAINT `FK_typeev_of_mc_type_event` FOREIGN KEY (`idType`) REFERENCES `type_event` (`idType`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table quan_li_dat_mc.typeev_of_mc: ~14 rows (approximately)
INSERT INTO `typeev_of_mc` (`idType`, `idMC`) VALUES
	(2, 3),
	(1, 4),
	(2, 4),
	(3, 4),
	(1, 5),
	(2, 5),
	(3, 5),
	(4, 5),
	(4, 6),
	(3, 7),
	(2, 11),
	(3, 12),
	(1, 13),
	(2, 13),
	(4, 13),
	(3, 14);

-- Dumping structure for table quan_li_dat_mc.type_event
CREATE TABLE IF NOT EXISTS `type_event` (
  `idType` int NOT NULL,
  `type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`idType`) USING BTREE,
  UNIQUE KEY `idType` (`idType`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Dumping data for table quan_li_dat_mc.type_event: ~11 rows (approximately)
INSERT INTO `type_event` (`idType`, `type`) VALUES
	(1, 'MC sự kiện'),
	(2, 'MC Sự kiện giải trí'),
	(3, 'MC Hội thảo'),
	(4, 'MC Chính luận'),
	(5, 'MC Chương trình âm nhạc'),
	(6, 'MC Đám cưới'),
	(7, 'MC Team building'),
	(8, 'MC Lễ họp báo'),
	(9, 'MC Sinh nhật'),
	(10, 'MC Cuộc thi'),
	(11, 'MC Sự kiện triển lãm');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
