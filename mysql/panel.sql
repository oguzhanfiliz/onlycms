-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Aug 20, 2020 at 03:22 PM
-- Server version: 10.4.10-MariaDB
-- PHP Version: 7.4.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `panel`
--

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

DROP TABLE IF EXISTS `brands`;
CREATE TABLE IF NOT EXISTS `brands` (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_turkish_ci DEFAULT '',
  `img_url` varchar(255) COLLATE utf8_turkish_ci DEFAULT '',
  `rank` int(255) DEFAULT NULL,
  `isActive` tinyint(4) DEFAULT NULL,
  `createdAt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `title`, `img_url`, `rank`, `isActive`, `createdAt`) VALUES
(4, '<p>a<span style=\"background-color: rgb(255, 255, 0);\"><b>naysaslkdfhsldkfhdflkj lkasj</b></span>dflksasjdlk alk lkasdalksjd</p>', '<p>iletimsisdmidsmf sidmfisdmsdifms imsdfisdmismd </p>', 0, 1, '2017-12-29 08:04:45');

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

DROP TABLE IF EXISTS `courses`;
CREATE TABLE IF NOT EXISTS `courses` (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `url` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `description` text COLLATE utf8_turkish_ci DEFAULT NULL,
  `img_url` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `event_date` datetime DEFAULT NULL,
  `rank` int(11) DEFAULT NULL,
  `isActive` tinyint(4) DEFAULT NULL,
  `createdAt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `url`, `title`, `description`, `img_url`, `event_date`, `rank`, `isActive`, `createdAt`) VALUES
(2, 'codeigniter-4-egitimi', 'Codeigniter 4 Eğitimi', '<p>Bu eğitimde codeigniter ile ilgili birçok kavramı elden geçireceğiz..</p>', 'videosinif-proje.png', '2018-02-24 12:00:00', 0, 1, '2017-12-29 00:41:16');

-- --------------------------------------------------------

--
-- Table structure for table `email_settings`
--

DROP TABLE IF EXISTS `email_settings`;
CREATE TABLE IF NOT EXISTS `email_settings` (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `protocol` varchar(10) COLLATE utf8_turkish_ci DEFAULT NULL,
  `host` varchar(100) COLLATE utf8_turkish_ci DEFAULT NULL,
  `port` varchar(10) COLLATE utf8_turkish_ci DEFAULT '',
  `user` varchar(100) COLLATE utf8_turkish_ci DEFAULT '',
  `password` varchar(100) COLLATE utf8_turkish_ci DEFAULT '',
  `from` varchar(100) COLLATE utf8_turkish_ci DEFAULT '',
  `to` varchar(100) COLLATE utf8_turkish_ci DEFAULT '',
  `user_name` varchar(100) COLLATE utf8_turkish_ci DEFAULT NULL,
  `isActive` tinyint(1) DEFAULT NULL,
  `createdAt` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Dumping data for table `email_settings`
--

INSERT INTO `email_settings` (`id`, `protocol`, `host`, `port`, `user`, `password`, `from`, `to`, `user_name`, `isActive`, `createdAt`) VALUES
(2, 'smtp', 'ssl://smtp.gmail.com', '465', 'forgetpassonlycms@gmail.com', '205965asd', 'forgetpassonlycms@gmail.com', 'forgetpassonlycms@outlook.com', 'only', 1, '2020-08-08');

-- --------------------------------------------------------

--
-- Table structure for table `files`
--

DROP TABLE IF EXISTS `files`;
CREATE TABLE IF NOT EXISTS `files` (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `gallery_id` int(11) DEFAULT NULL,
  `url` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `rank` int(255) DEFAULT NULL,
  `isActive` tinyint(255) DEFAULT NULL,
  `createdAt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Dumping data for table `files`
--

INSERT INTO `files` (`id`, `gallery_id`, `url`, `rank`, `isActive`, `createdAt`) VALUES
(1, 11, 'uploads/galleries_v/files/kataloglarimiz/web-tasarim-fiyat-teklifi.pdf', 1, 0, '2018-01-06 21:38:13'),
(4, 11, 'uploads/galleries_v/files/kataloglarimiz/nodejs-icerik.docx', 0, 1, '2018-01-06 22:05:25');

-- --------------------------------------------------------

--
-- Table structure for table `galleries`
--

DROP TABLE IF EXISTS `galleries`;
CREATE TABLE IF NOT EXISTS `galleries` (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `url` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `title` varchar(100) COLLATE utf8_turkish_ci DEFAULT NULL,
  `gallery_type` varchar(50) COLLATE utf8_turkish_ci DEFAULT NULL,
  `folder_name` varchar(50) COLLATE utf8_turkish_ci DEFAULT NULL,
  `isActive` tinyint(4) DEFAULT NULL,
  `createdAt` datetime DEFAULT NULL,
  `rank` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Dumping data for table `galleries`
--

INSERT INTO `galleries` (`id`, `url`, `title`, `gallery_type`, `folder_name`, `isActive`, `createdAt`, `rank`) VALUES
(13, 'saddasda', 'saddasda', 'image', 'saddasda', 1, '2020-08-12 14:50:24', 1),
(14, 'teknokent-egitim-etkinligi', 'Teknokent eğitim etkinliği', 'image', 'teknokent-egitim-etkinligi', 1, '2020-08-12 14:54:37', 0),
(15, 'qweqwe', 'qweqwe', 'video', '', 1, '2020-08-12 14:59:12', 2),
(16, 'qweqwe', 'QWEQWE', 'image', 'qweqwe', 1, '2020-08-18 13:40:40', 0),
(17, '123123123', '123123123', 'image', '123123123', 1, '2020-08-18 13:40:58', 0),
(18, 'asdsadas', 'asdsadas', 'file', 'asdsadas', 1, '2020-08-19 12:09:45', 0),
(19, 'hakkimizda', 'Hakkımızda', 'image', 'hakkimizda', 1, '2020-08-20 11:06:50', 0);

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

DROP TABLE IF EXISTS `images`;
CREATE TABLE IF NOT EXISTS `images` (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `gallery_id` int(11) DEFAULT NULL,
  `url` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `rank` int(255) DEFAULT NULL,
  `isActive` tinyint(255) DEFAULT NULL,
  `createdAt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`id`, `gallery_id`, `url`, `rank`, `isActive`, `createdAt`) VALUES
(27, 12, 'uploads/galleries_v/images/bayram-resimleri/ekran-resmi-2018-01-03-23-52-59.png', 1, 1, '2018-01-06 23:32:59'),
(28, 12, 'uploads/galleries_v/images/bayram-resimleri/ekran-resmi-2018-01-03-23-52-34.png', 2, 1, '2018-01-06 23:32:59'),
(30, 12, 'uploads/galleries_v/images/bayram-resimleri/ekran-resmi-2018-01-04-00-09-58.png', 3, 1, '2018-01-06 23:32:59'),
(31, 13, 'uploads/galleries_v/images/saddasda/unnamed.jpg', 0, 1, '2020-08-12 14:50:30'),
(32, 17, 'uploads/galleries_v/images/123123123/0ea9c273-07fe-434b-82cb-7ee3ff7384a1-1024x683.jpeg', 0, 1, '2020-08-18 13:41:03'),
(33, 19, 'uploads/galleries_v/images/hakkimizda/0ea9c273-07fe-434b-82cb-7ee3ff7384a1-1024x683.jpeg', 0, 1, '2020-08-20 11:06:55'),
(34, 19, 'uploads/galleries_v/images/hakkimizda/0ea9c273-07fe-434b-82cb-7ee3ff7384a1-1024x6831.jpeg', 0, 1, '2020-08-20 11:06:58');

-- --------------------------------------------------------

--
-- Table structure for table `members`
--

DROP TABLE IF EXISTS `members`;
CREATE TABLE IF NOT EXISTS `members` (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `email` varchar(50) COLLATE utf8_turkish_ci DEFAULT NULL,
  `isActive` tinyint(50) DEFAULT NULL,
  `createdAt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
CREATE TABLE IF NOT EXISTS `news` (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `url` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `description` text COLLATE utf8_turkish_ci DEFAULT NULL,
  `news_type` varchar(10) COLLATE utf8_turkish_ci DEFAULT NULL,
  `img_url` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `video_url` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `rank` int(11) DEFAULT NULL,
  `isActive` tinyint(4) DEFAULT NULL,
  `createdAt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `url`, `title`, `description`, `news_type`, `img_url`, `video_url`, `rank`, `isActive`, `createdAt`) VALUES
(2, 'iphonex-satislari-beklenilenin-altindaaaaaa', 'iphoneX Satışları Beklenilenin altındaaaaaa', '<p>iphoneX Satışları <b>Beklenilenin altındaaaaaaaa</b><br></p>', 'image', 'ipphone8.jpeg', '#', 1, 1, '2017-12-25 22:59:32'),
(3, 'kablosuzkedi-den-yeni-bir-egitim-serisi-geldi-like/dislike', 'kablosuzkedi den yeni bir egitim serisi geldi like/dislike', '<p>kablosuzkedi den yeni bir egitim serisi geldi like/dislike<br></p>', 'image', 'kablosuzkedi-2-768x858.png', '#', 0, 1, '2017-12-25 23:02:02'),
(4, 'jknzdznojzdvnbmo', 'jknzdznöjzdvnbmö', '<p>ADAWDA</p>', 'video', '#', 'https://www.youtube.com/watch?v=MbynufJDv1s', 0, 1, '2020-08-18 13:40:25');

-- --------------------------------------------------------

--
-- Table structure for table `popups`
--

DROP TABLE IF EXISTS `popups`;
CREATE TABLE IF NOT EXISTS `popups` (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `description` text COLLATE utf8_turkish_ci DEFAULT NULL,
  `page` varchar(50) COLLATE utf8_turkish_ci DEFAULT NULL,
  `isActive` tinyint(4) DEFAULT NULL,
  `createdAt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `portfolios`
--

DROP TABLE IF EXISTS `portfolios`;
CREATE TABLE IF NOT EXISTS `portfolios` (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `url` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `description` text COLLATE utf8_turkish_ci DEFAULT NULL,
  `finishedAt` datetime DEFAULT NULL,
  `client` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `place` varchar(100) COLLATE utf8_turkish_ci DEFAULT NULL,
  `portfolio_url` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `rank` int(11) DEFAULT NULL,
  `isActive` tinyint(4) DEFAULT NULL,
  `createdAt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Dumping data for table `portfolios`
--

INSERT INTO `portfolios` (`id`, `url`, `title`, `description`, `finishedAt`, `client`, `category_id`, `place`, `portfolio_url`, `rank`, `isActive`, `createdAt`) VALUES
(1, 'sadasd', 'sadasdsa', 'asdads', '2020-08-14 00:00:00', 'asddas', 1, 'sdasda', 'asdasd', 3, 1, '2020-08-14 00:00:00'),
(2, 'web-tasarim-hizmeti', 'Web Tasarım Hizmeti', '                            <p><span style=\"background-color: rgb(0, 0, 0);\">Teknokent&nbsp;</span>Kuvarssoft SrgTeknoloji<span style=\"background-color: rgb(0, 0, 0);\">Teknokent&nbsp;</span>Kuvarssoft SrgTeknoloji<span style=\"background-color: rgb(0, 0, 0);\">Teknokent&nbsp;</span>Kuvarssoft SrgTeknoloji<span style=\"background-color: rgb(0, 0, 0);\">Teknokent&nbsp;</span>Kuvarssoft SrgTeknoloji<span style=\"background-color: rgb(0, 0, 0);\">Teknokent&nbsp;</span>Kuvarssoft SrgTeknoloji<span style=\"background-color: rgb(0, 0, 0);\">Teknokent&nbsp;</span>Kuvarssoft SrgTeknoloji<span style=\"background-color: rgb(0, 0, 0);\">Teknokent&nbsp;</span>Kuvarssoft SrgTeknoloji<span style=\"background-color: rgb(0, 0, 0);\">Teknokent&nbsp;</span>Kuvarssoft SrgTeknoloji<span style=\"background-color: rgb(0, 0, 0);\">Teknokent&nbsp;</span>Kuvarssoft SrgTeknoloji<span style=\"background-color: rgb(0, 0, 0);\">Teknokent&nbsp;</span>Kuvarssoft SrgTeknoloji<span style=\"background-color: rgb(0, 0, 0);\">Teknokent&nbsp;</span>Kuvarssoft SrgTeknoloji<span style=\"background-color: rgb(0, 0, 0);\">Teknokent&nbsp;</span>Kuvarssoft SrgTeknoloji<span style=\"background-color: rgb(0, 0, 0);\">Teknokent&nbsp;</span>Kuvarssoft SrgTeknoloji<span style=\"background-color: rgb(0, 0, 0);\">Teknokent&nbsp;</span>Kuvarssoft SrgTeknoloji<span style=\"background-color: rgb(0, 0, 0);\">Teknokent&nbsp;</span>Kuvarssoft SrgTeknoloji<span style=\"background-color: rgb(0, 0, 0);\">Teknokent&nbsp;</span>Kuvarssoft SrgTeknoloji<span style=\"background-color: rgb(0, 0, 0);\">Teknokent&nbsp;</span>Kuvarssoft SrgTeknoloji<span style=\"background-color: rgb(0, 0, 0);\">Teknokent&nbsp;</span>Kuvarssoft SrgTeknoloji<span style=\"background-color: rgb(0, 0, 0);\">Teknokent&nbsp;</span>Kuvarssoft SrgTeknoloji<span style=\"background-color: rgb(0, 0, 0);\">Teknokent&nbsp;</span>Kuvarssoft SrgTeknoloji<span style=\"background-color: rgb(0, 0, 0);\">Teknokent&nbsp;</span>Kuvarssoft SrgTeknoloji<span style=\"background-color: rgb(0, 0, 0);\">Teknokent&nbsp;</span>Kuvarssoft SrgTeknoloji<span style=\"background-color: rgb(0, 0, 0);\">Teknokent&nbsp;</span>Kuvarssoft SrgTeknoloji<span style=\"background-color: rgb(0, 0, 0);\">Teknokent&nbsp;</span>Kuvarssoft SrgTeknoloji<span style=\"background-color: rgb(0, 0, 0);\">Teknokent&nbsp;</span>Kuvarssoft SrgTeknoloji<span style=\"background-color: rgb(0, 0, 0);\">Teknokent&nbsp;</span>Kuvarssoft SrgTeknoloji<span style=\"background-color: rgb(0, 0, 0);\">Teknokent&nbsp;</span>Kuvarssoft SrgTeknoloji<span style=\"background-color: rgb(0, 0, 0);\">Teknokent&nbsp;</span>Kuvarssoft SrgTeknoloji<span style=\"background-color: rgb(0, 0, 0);\">Teknokent&nbsp;</span>Kuvarssoft SrgTeknoloji<span style=\"background-color: rgb(0, 0, 0);\">Teknokent&nbsp;</span>Kuvarssoft SrgTeknoloji<span style=\"background-color: rgb(0, 0, 0);\">Teknokent&nbsp;</span>Kuvarssoft SrgTeknoloji<span style=\"background-color: rgb(0, 0, 0);\">Teknokent&nbsp;</span>Kuvarssoft SrgTeknoloji<span style=\"background-color: rgb(0, 0, 0);\">Teknokent&nbsp;</span>Kuvarssoft SrgTeknoloji<span style=\"background-color: rgb(0, 0, 0);\">Teknokent&nbsp;</span>Kuvarssoft SrgTeknoloji<span style=\"background-color: rgb(0, 0, 0);\">Teknokent&nbsp;</span>Kuvarssoft SrgTeknoloji<span style=\"background-color: rgb(0, 0, 0);\">Teknokent&nbsp;</span>Kuvarssoft SrgTeknoloji<span style=\"background-color: rgb(0, 0, 0);\">Teknokent&nbsp;</span>Kuvarssoft SrgTeknoloji<span style=\"background-color: rgb(0, 0, 0);\">Teknokent&nbsp;</span>Kuvarssoft SrgTeknoloji<br></p>                        ', '2020-08-21 00:00:00', 'asdas', 1, 'adssad', 'asdsad', 1, 1, '2020-08-14 13:47:33'),
(3, 'asdasd', 'ASDASD', '                                                        <p>Kütahya Teknokent Bünyesinde 15 firma 25 proje ve daha birsürü aksiyon bulunmaktadır.Kütahya Teknokent Bünyesinde 15 firma 25 proje ve daha birsürü aksiyon bulunmaktadır.Kütahya Teknokent Bünyesinde 15 firma 25 proje ve daha birsürü aksiyon bulunmaktadır.Kütahya Teknokent Bünyesinde 15 firma 25 proje ve daha birsürü aksiyon bulunmaktadır.Kütahya Teknokent Bünyesinde 15 firma 25 proje ve daha birsürü aksiyon bulunmaktadır.Kütahya Teknokent Bünyesinde 15 firma 25 proje ve daha birsürü aksiyon bulunmaktadır.Kütahya Teknokent Bünyesinde 15 firma 25 proje ve daha birsürü aksiyon bulunmaktadır.Kütahya Teknokent Bünyesinde 15 firma 25 proje ve daha birsürü aksiyon bulunmaktadır.Kütahya Teknokent Bünyesinde 15 firma 25 proje ve daha birsürü aksiyon bulunmaktadır.Kütahya Teknokent Bünyesinde 15 firma 25 proje ve daha birsürü aksiyon bulunmaktadır.Kütahya Teknokent Bünyesinde 15 firma 25 proje ve daha birsürü aksiyon bulunmaktadır.Kütahya Teknokent Bünyesinde 15 firma 25 proje ve daha birsürü aksiyon bulunmaktadır.Kütahya Teknokent Bünyesinde 15 firma 25 proje ve daha birsürü aksiyon bulunmaktadır.Kütahya Teknokent Bünyesinde 15 firma 25 proje ve daha birsürü aksiyon bulunmaktadır.<br></p>                                                ', '2020-08-14 00:00:00', 'ASDAD', 1, 'Kütahya', 'ADSAD', 0, 1, '2020-08-14 13:50:24'),
(4, 'asdsad', 'asdsad', '                            <p>asdsad</p>                        ', '2020-08-14 00:00:00', 'adsssdasd', 3, 'asdadsasd', '', 2, 1, '2020-08-14 14:05:43'),
(5, 'srg-teknoloji', 'Srg Teknoloji', '<p>Srg TeknolojiSrg TeknolojiSrg TeknolojiSrg TeknolojiSrg TeknolojiSrg TeknolojiSrg TeknolojiSrg TeknolojiSrg TeknolojiSrg TeknolojiSrg TeknolojiSrg Teknoloji<br></p>', '2020-09-04 00:00:00', 'Kimya', 3, 'Kütahya', 'www.kuvarssoft.com', 0, 1, '2020-08-19 16:12:16');

-- --------------------------------------------------------

--
-- Table structure for table `portfolio_categories`
--

DROP TABLE IF EXISTS `portfolio_categories`;
CREATE TABLE IF NOT EXISTS `portfolio_categories` (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(100) COLLATE utf8_turkish_ci DEFAULT NULL,
  `isActive` int(11) NOT NULL,
  `createdAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Dumping data for table `portfolio_categories`
--

INSERT INTO `portfolio_categories` (`id`, `title`, `isActive`, `createdAt`) VALUES
(1, 'Video', 1, '2020-08-14 11:53:48'),
(3, 'Resim', 1, '2020-08-14 12:10:32');

-- --------------------------------------------------------

--
-- Table structure for table `portfolio_images`
--

DROP TABLE IF EXISTS `portfolio_images`;
CREATE TABLE IF NOT EXISTS `portfolio_images` (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `portfolio_id` int(11) DEFAULT NULL,
  `img_url` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `rank` int(11) DEFAULT NULL,
  `isActive` tinyint(11) DEFAULT NULL,
  `isCover` tinyint(11) DEFAULT NULL,
  `createdAt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Dumping data for table `portfolio_images`
--

INSERT INTO `portfolio_images` (`id`, `portfolio_id`, `img_url`, `rank`, `isActive`, `isCover`, `createdAt`) VALUES
(14, 3, 'project-short21.jpg', 0, 1, 0, '2020-08-19 15:23:40'),
(15, 3, 'project-short13.jpg', 0, 1, 0, '2020-08-19 15:23:40'),
(16, 3, 'project-short4.jpg', 0, 1, 0, '2020-08-19 15:23:40'),
(17, 2, 'project-short14.jpg', 0, 1, 0, '2020-08-19 15:23:57'),
(18, 2, 'project-short22.jpg', 0, 1, 0, '2020-08-19 15:23:57'),
(19, 2, 'project-short5.jpg', 0, 1, 0, '2020-08-19 15:23:57'),
(20, 4, 'project-short23.jpg', 0, 1, 0, '2020-08-19 15:24:02'),
(21, 4, 'project-short15.jpg', 0, 1, 0, '2020-08-19 15:24:02'),
(22, 4, 'project-short6.jpg', 0, 1, 0, '2020-08-19 15:24:02'),
(23, 1, 'project-short24.jpg', 0, 1, 0, '2020-08-19 15:24:06'),
(24, 1, 'project-short16.jpg', 0, 1, 0, '2020-08-19 15:24:06'),
(25, 1, 'project-short7.jpg', 0, 1, 0, '2020-08-19 15:24:06'),
(26, 5, 'project-short25.jpg', 0, 1, 0, '2020-08-19 16:13:43'),
(27, 5, 'project-short8.jpg', 0, 1, 0, '2020-08-19 16:13:43'),
(28, 5, 'project-short17.jpg', 0, 1, 0, '2020-08-19 16:13:43');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `url` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `description` text COLLATE utf8_turkish_ci DEFAULT NULL,
  `rank` int(11) DEFAULT NULL,
  `isActive` tinyint(4) DEFAULT NULL,
  `createdAt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `url`, `title`, `description`, `rank`, `isActive`, `createdAt`) VALUES
(2, 'deneme-url-2', 'Deneme Ürünü 2', 'Bu bir deneme ürünü aciklamasidir 2', 4, 1, NULL),
(6, 'monitor-askisi-50-45-cm-buyuklugundedir', 'Monitör Askısı 50.45 cm büyüklüğündedir', '<p>test amacli üretildi..</p>', 1, 1, '2017-12-14 00:43:46'),
(9, 'testt-testt', 'testt testt', '<p>alert denemesidier..</p>', 2, 1, '2017-12-20 01:22:10'),
(11, 'asda', 'asda', '<p>sdsdsds</p>', 3, 1, '2017-12-20 01:24:32'),
(12, 'mantar-tablo', 'Mantar Tablo', '                                                                                    Bu tablo o kadar güzel bir tablodur ki!!!asdsaBu <span style=\"background-color: rgb(255, 255, 0);\">tablo </span>o kadar güzel bir tablodur ki!!!asdsaBu tablo o kadar güzel bir tablodur ki!!!asdsaBu tablo o kadar güzel bir tablodur ki!!!asdsaBu tablo o kadar güzel bir tablodur ki!!!asdsaBu tablo o kadar güzel bir tablodur ki!!!asdsaBu tablo o kadar güzel bir tablodur ki!!!asdsaBu tablo o kadar güzel bir tablodur ki!!!asdsaBu tablo o kadar güzel bir tablodur ki!!!asdsaBu tablo o kadar güzel bir tablodur ki!!!asdsaBu tablo o kadar güzel bir tablodur ki!!!asdsaBu tablo o kadar güzel bir tablodur ki!!!asdsaBu tablo o kadar güzel bir tablodur ki!!!asdsaBu tablo o <span style=\"background-color: rgb(255, 255, 0);\">kadar </span>güzel bir tablodur ki!!!asdsaBu tablo o kadar güzel bir tablodur ki!!!asdsaBu tablo o kadar güzel bir tablodur ki!!!asdsaBu tablo o kadar güzel bir tablodur ki!!!asdsaBu tablo o kadar güzel bir tablodur ki!!!asdsaBu tablo o kadar güzel bir tablodur ki!!!asdsaBu tablo o kadar güzel bir tablodur ki!!!asdsaBu tablo o kadar güzel bir tablodur ki!!!asdsaBu tablo o kadar güzel bir tablodur ki!!!asdsaBu tablo o kadar güzel bir tablodur ki!!!asdsaBu tablo o kadar güzel bir tablodur ki!!!asdsaBu tablo o kadar güzel bir tablodur ki!!!asdsaBu tablo o kadar güzel bir tablodur ki!!!asdsaBu tablo o kadar güzel bir tablodur ki!!!asdsaBu tablo o kadar güzel bir tablodur ki!!!asdsaBu tablo o kadar güzel bir tablodur ki!!!asdsaBu tablo o kadar güzel bir tablodur ki!!!asdsaBu tablo o kadar güzel bir tablodur ki!!!asdsaBu tablo o kadar güzel bir tablodur ki!!!asdsaBu tablo o kadar güzel bir tablodur ki!!!asdsaBu tablo o kadar güzel bir tablodur ki!!!asdsaBu tablo o kadar güzel bir tablodur ki!!!asdsa                        ', 0, 1, '2018-01-11 13:39:23');

-- --------------------------------------------------------

--
-- Table structure for table `product_images`
--

DROP TABLE IF EXISTS `product_images`;
CREATE TABLE IF NOT EXISTS `product_images` (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `product_id` int(11) DEFAULT NULL,
  `img_url` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `rank` int(11) DEFAULT NULL,
  `isActive` tinyint(11) DEFAULT NULL,
  `isCover` tinyint(11) DEFAULT NULL,
  `createdAt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Dumping data for table `product_images`
--

INSERT INTO `product_images` (`id`, `product_id`, `img_url`, `rank`, `isActive`, `isCover`, `createdAt`) VALUES
(44, NULL, 'kablosuzkedi-2-768x858.png', 15, 0, 0, '2017-12-29 08:22:07'),
(45, NULL, 'videosinif-proje.png', 14, 0, 0, '2017-12-29 08:22:07'),
(46, NULL, 'ipphone8.jpeg', 0, 1, 0, '2017-12-29 08:25:35'),
(47, 6, 'ekran-resmi-2017-12-30-00-23-49--2-.png', 0, 1, 0, '2018-01-06 20:02:16'),
(48, 6, 'ekran-resmi-2017-12-30-00-26-11--2-.png', 2, 1, 0, '2018-01-06 20:02:16'),
(49, 6, 'ekran-resmi-2017-12-30-00-26-19--2-.png', 3, 1, 0, '2018-01-06 20:02:16'),
(50, 6, 'ekran-resmi-2017-12-30-00-27-36--2-.png', 1, 1, 0, '2018-01-06 20:02:16'),
(51, 12, 'ekran-resmi-2018-01-05-23-44-19--2-.png', 1, 1, 0, '2018-01-11 13:39:57'),
(52, 12, 'ekran-resmi-2018-01-05-23-44-19.png', 2, 1, 0, '2018-01-11 13:39:57'),
(53, 12, 'ekran-resmi-2018-01-05-18-47-54.png', 0, 1, 0, '2018-01-11 13:39:57'),
(54, 12, 'ekran-resmi-2018-01-04-00-38-12.png', 3, 1, 1, '2018-01-11 13:39:57'),
(56, 9, 'unnamed.jpg', 0, 1, 0, '2020-08-12 14:43:43'),
(57, 12, 'unnamed1.jpg', 0, 1, 0, '2020-08-12 14:44:02');

-- --------------------------------------------------------

--
-- Table structure for table `references`
--

DROP TABLE IF EXISTS `references`;
CREATE TABLE IF NOT EXISTS `references` (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `url` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `description` text COLLATE utf8_turkish_ci DEFAULT NULL,
  `img_url` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `rank` int(11) DEFAULT NULL,
  `isActive` tinyint(4) DEFAULT NULL,
  `createdAt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Dumping data for table `references`
--

INSERT INTO `references` (`id`, `url`, `title`, `description`, `img_url`, `rank`, `isActive`, `createdAt`) VALUES
(2, 'bu-bir-deneme-referans-bilgisidir---2', 'bu bir deneme referans bilgisidir.. 2', '<p>asdasdasd bu refransimiza cok güveniyoruz.. 2</p>', 'videosinif-proje.png', 1, 1, '2017-12-27 00:18:34');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

DROP TABLE IF EXISTS `services`;
CREATE TABLE IF NOT EXISTS `services` (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `url` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `description` text COLLATE utf8_turkish_ci DEFAULT NULL,
  `img_url` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `rank` int(11) DEFAULT NULL,
  `isActive` tinyint(4) DEFAULT NULL,
  `createdAt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
CREATE TABLE IF NOT EXISTS `settings` (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `company_name` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `slogan` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `address` text COLLATE utf8_turkish_ci NOT NULL,
  `about_us` longtext COLLATE utf8_turkish_ci DEFAULT NULL,
  `mission` longtext COLLATE utf8_turkish_ci DEFAULT NULL,
  `vision` longtext COLLATE utf8_turkish_ci DEFAULT NULL,
  `logo` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `phone_1` varchar(15) COLLATE utf8_turkish_ci DEFAULT NULL,
  `phone_2` varchar(15) COLLATE utf8_turkish_ci DEFAULT NULL,
  `fax_1` varchar(15) COLLATE utf8_turkish_ci DEFAULT NULL,
  `fax_2` varchar(15) COLLATE utf8_turkish_ci DEFAULT NULL,
  `email` varchar(50) COLLATE utf8_turkish_ci DEFAULT NULL,
  `facebook` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `twitter` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `instagram` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `linkedin` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `company_name`, `slogan`, `address`, `about_us`, `mission`, `vision`, `logo`, `phone_1`, `phone_2`, `fax_1`, `fax_2`, `email`, `facebook`, `twitter`, `instagram`, `linkedin`, `createdAt`, `updatedAt`) VALUES
(2, 'KuvarSSoftt', 'Teknokent', '                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                <p>Teknokent<br></p>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                ', '                                                                                                                                                                  <div class=\"col-md-6\">\r\n                    <div class=\"overflow-hidden mb-2\">\r\n                        <h2 class=\"text-color-dark font-weight-normal text-5 mb-0 pt-0 mt-0 appear-animation\" data-appear-animation=\"maskUp\" data-appear-animation-delay=\"1200\">Dumlupınar <strong class=\"font-weight-extra-bold\">TGB\'nin Vizyonu</strong></h2>\r\n                    </div>\r\n                    <p class=\"appear-animation\" data-appear-animation=\"fadeInUpShorter\" data-appear-animation-delay=\"1400\">Ülkemizin gelişmişlik seviyesine katkı sağlamak amacıyla\r\n                        yüksek/ileri teknolojiler alanında inovasyon kültürünün gelişmesini teşvik edici,\r\n                        yaratıcılık ve girişimcilik alanında önemli projelerin ekonomiye kazandırılması ve\r\n                        ticarileştirilmesi, üniversite-sanayi işbirliğinin gelişimine katkı sağlamak amacıyla ortak\r\n                        proje geliştirmek ve firmalar arasında sinerji oluşturmak üzere\r\n                        eşleştirme ve kümeleme çalışmalarıyla sürdürülebilir Ar-Ge ve inovasyon ekosistemi içerisinde,\r\n                        akademik ve endüstriyel girişimciliği destekleyerek, bölgesel ve ulusal düzeyde en yüksek katma\r\n                        değeri yaratmaktır.\r\n                </p></div>\r\n\r\n\r\n                <h2 class=\"text-color-dark font-weight-normal text-5 mb-0 pt-0 mt-0 appear-animation\" data-appear-animation=\"maskUp\" data-appear-animation-delay=\"1200\">Dumlupınar TGB\'nin Vizyonu <strong class=\"font-weight-extra-bold\"> Amaçları / Misyonu</strong></h2>\r\n            \r\n            <p class=\"appear-animation\" data-appear-animation=\"fadeInUpShorter\" data-appear-animation-delay=\"1400\">\r\n            </p><ul><b>\r\n                    <li>Türkiye\'de Teknoloji geliştiricisi Ar-Ge kurum ve kuruluşları ile teknoloji kullanıcısı sanayi\r\n                        şirketleri veya diğer teknoloji ya da Ar-Ge kurum ve kuruluşları\r\n                        arasında bilgilendirme, koordinasyon, araştırmayı yönlendirme, yeni Ar-Ge şirketlerinin\r\n                        oluşturulmasını teşvik etme, iş birliği geliştirme, fikri mülkiyet haklarının\r\n                        korunması, pazarlanması, satılması, fikri mülkiyetin satışından elde edilen gelirlerin\r\n                        yönetilmesi konularında destek vermek,\r\n                    </li>\r\n                    <li>Kütahya’da girişimcilik ekosistemini güçlendirmek ve bilişim, medikal, biyomedikal,\r\n                        elektrik-elektronik, savunma sanayi, maden, tarım ve diğer sektörlerin potansiyellerini\r\n                        değerlendirmek bölgenin güç çeşitliliğini öne çıkaracak yeni projeler ile bölgesel gelişmeyi\r\n                        hedeflemek ve ulusal ve uluslararası arenada söz sahibi olmak,\r\n                    </li>\r\n                    <li>Girişimciliği ve yenilikçiliği teşvik etmek ve desteklemek.</li>\r\n                    <li>Seçilmiş sektörlerde küresel ölçekte rekabet edebilir nitelikte şirketler yaratmak, öncelikli\r\n                        sektörlerden yeteri başvuru alınamaması halinde medikal,\r\n                        biyomedikal gibi yüksek katma değerli ürünler üretilen alanlarda verimliliği arttırmaya yönelik\r\n                        yöntem, teknik, teknoloji ve ürünlerin geliştirilmesini ve bunların uygulanmasını sağlamak.\r\n                    </li>\r\n                    <li> Ar-Ge yeteneği ve geleneğine sahip ulusal ve uluslararası şirketlerin faaliyetlerini\r\n                        sürdürebilmeleri için gerekli teknolojik alt yapıyı temin etmek.\r\n                    </li>\r\n                    <li>Yerel, ulusal ve uluslararası stratejik iş birlikleri ve üniversite-sanayi iş birliğinde\r\n                        sistematik ve doğru yöntemlerle mevcut zenginlik ve birikimi kullanılabilir hale getirmek,\r\n                        teknoloji transferine uygun ortam oluşturmak.\r\n                    </li>\r\n                    <li> İşleyişi ve yönetimi bakımından her yönüyle hesap verebilir ve izlenebilir olmak.</li>\r\n                    <li> Kümelenme odaklı bir yapı ile bölgenin potansiyeli dikkate alınarak, güçlü yanlar ve ihtiyaçlar\r\n                        doğrultusunda yüksek katma değerli ürünler geliştirmek.\r\n                    </li>\r\n                    <li> Bölge şirketlerinin kendi aralarında ve küme grupları/oluşumları arasında sinerji\r\n                        yaratmaktır.\r\n                    </li>\r\n            </b></ul><b>\r\n            </b>                                                                                                                                                ', '                                                                                                                                                                                                         <div class=\"overflow-hidden mb-2\">\r\n                        <h2 class=\"text-color-dark font-weight-normal text-5 mb-0 pt-0 mt-0 appear-animation\" data-appear-animation=\"maskUp\" data-appear-animation-delay=\"1200\">Dumlupınar <strong class=\"font-weight-extra-bold\">TGB\'nin Vizyonu</strong></h2>\r\n                    </div>\r\n                    <p class=\"appear-animation\" data-appear-animation=\"fadeInUpShorter\" data-appear-animation-delay=\"1400\">Ülkemizin gelişmişlik seviyesine katkı sağlamak amacıyla\r\n                        yüksek/ileri teknolojiler alanında inovasyon kültürünün gelişmesini teşvik edici,\r\n                        yaratıcılık ve girişimcilik alanında önemli projelerin ekonomiye kazandırılması ve\r\n                        ticarileştirilmesi, üniversite-sanayi işbirliğinin gelişimine katkı sağlamak amacıyla ortak\r\n                        proje geliştirmek ve firmalar arasında sinerji oluşturmak üzere\r\n                        eşleştirme ve kümeleme çalışmalarıyla sürdürülebilir Ar-Ge ve inovasyon ekosistemi içerisinde,\r\n                        akademik ve endüstriyel girişimciliği destekleyerek, bölgesel ve ulusal düzeyde en yüksek katma\r\n                        değeri yaratmaktır.\r\n                \r\n\r\n\r\n                </p><h2 class=\"text-color-dark font-weight-normal text-5 mb-0 pt-0 mt-0 appear-animation\" data-appear-animation=\"maskUp\" data-appear-animation-delay=\"1200\">Dumlupınar TGB\'nin Vizyonu <strong class=\"font-weight-extra-bold\"> Amaçları / Misyonu</strong></h2>\r\n            \r\n            <p class=\"appear-animation\" data-appear-animation=\"fadeInUpShorter\" data-appear-animation-delay=\"1400\">\r\n            </p><ul><b>\r\n                    <li>Türkiye\'de Teknoloji geliştiricisi Ar-Ge kurum ve kuruluşları ile teknoloji kullanıcısı sanayi\r\n                        şirketleri veya diğer teknoloji ya da Ar-Ge kurum ve kuruluşları\r\n                        arasında bilgilendirme, koordinasyon, araştırmayı yönlendirme, yeni Ar-Ge şirketlerinin\r\n                        oluşturulmasını teşvik etme, iş birliği geliştirme, fikri mülkiyet haklarının\r\n                        korunması, pazarlanması, satılması, fikri mülkiyetin satışından elde edilen gelirlerin\r\n                        yönetilmesi konularında destek vermek,\r\n                    </li>\r\n                    <li>Kütahya’da girişimcilik ekosistemini güçlendirmek ve bilişim, medikal, biyomedikal,\r\n                        elektrik-elektronik, savunma sanayi, maden, tarım ve diğer sektörlerin potansiyellerini\r\n                        değerlendirmek bölgenin güç çeşitliliğini öne çıkaracak yeni projeler ile bölgesel gelişmeyi\r\n                        hedeflemek ve ulusal ve uluslararası arenada söz sahibi olmak,\r\n                    </li>\r\n                    <li>Girişimciliği ve yenilikçiliği teşvik etmek ve desteklemek.</li>\r\n                    <li>Seçilmiş sektörlerde küresel ölçekte rekabet edebilir nitelikte şirketler yaratmak, öncelikli\r\n                        sektörlerden yeteri başvuru alınamaması halinde medikal,\r\n                        biyomedikal gibi yüksek katma değerli ürünler üretilen alanlarda verimliliği arttırmaya yönelik\r\n                        yöntem, teknik, teknoloji ve ürünlerin geliştirilmesini ve bunların uygulanmasını sağlamak.\r\n                    </li>\r\n                    <li> Ar-Ge yeteneği ve geleneğine sahip ulusal ve uluslararası şirketlerin faaliyetlerini\r\n                        sürdürebilmeleri için gerekli teknolojik alt yapıyı temin etmek.\r\n                    </li>\r\n                    <li>Yerel, ulusal ve uluslararası stratejik iş birlikleri ve üniversite-sanayi iş birliğinde\r\n                        sistematik ve doğru yöntemlerle mevcut zenginlik ve birikimi kullanılabilir hale getirmek,\r\n                        teknoloji transferine uygun ortam oluşturmak.\r\n                    </li>\r\n                    <li> İşleyişi ve yönetimi bakımından her yönüyle hesap verebilir ve izlenebilir olmak.</li>\r\n                    <li> Kümelenme odaklı bir yapı ile bölgenin potansiyeli dikkate alınarak, güçlü yanlar ve ihtiyaçlar\r\n                        doğrultusunda yüksek katma değerli ürünler geliştirmek.\r\n                    </li>\r\n                    <li> Bölge şirketlerinin kendi aralarında ve küme grupları/oluşumları arasında sinerji\r\n                        yaratmaktır.\r\n                    </li>\r\n            </b></ul><b>\r\n            </b>                                                                                                                                                                                    ', '                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                <p>Teknokent<br></p>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                ', 'kuvarssoftt.png', '05444355071', '05444355071', '05444355071', '05444355071', 'oguzhanfiliz@outlook.com', 'http://facebook.com/onlyfryou', 'http://twitter.com/onlyfryouu1', 'http://instagram.com/busraoguzhan_', 'linedk.com/kasdasdk', '2020-08-12 16:18:32', '2020-08-20 13:50:58');

-- --------------------------------------------------------

--
-- Table structure for table `slides`
--

DROP TABLE IF EXISTS `slides`;
CREATE TABLE IF NOT EXISTS `slides` (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(50) COLLATE utf8_turkish_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `allowButton` tinyint(4) DEFAULT NULL,
  `button_url` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `button_caption` varchar(25) COLLATE utf8_turkish_ci DEFAULT NULL,
  `animation_type` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `animation_time` int(11) DEFAULT NULL,
  `rank` int(11) DEFAULT NULL,
  `isActive` tinyint(4) DEFAULT NULL,
  `createdAt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `teams`
--

DROP TABLE IF EXISTS `teams`;
CREATE TABLE IF NOT EXISTS `teams` (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `url` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `description` text COLLATE utf8_turkish_ci DEFAULT NULL,
  `category` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `img_url` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `rank` int(11) DEFAULT NULL,
  `isActive` tinyint(4) DEFAULT NULL,
  `createdAt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Dumping data for table `teams`
--

INSERT INTO `teams` (`id`, `url`, `title`, `description`, `category`, `img_url`, `rank`, `isActive`, `createdAt`) VALUES
(4, 'prof--dr--ersan-oz', 'Prof. Dr. Ersan ÖZ', 'GENEL MÜDÜR', 'Genel Müdür', 'ersanoz.png', 0, 1, '2020-08-20 14:32:08'),
(5, 'doc--dr--fatih-sen', 'Doç. Dr. Fatih ŞEN', 'GENEL MÜDÜR YARDIMCISI', 'GENEL MÜDÜR YARDIMCISI', 'fatihsen1.png', 0, 1, '2020-08-20 14:33:12'),
(6, 'fatih-emre', 'Fatih Emre', 'İŞ GELIŞTIRME VE ŞIRKETLEŞME UZMANI', 'İŞ GELIŞTIRME VE ŞIRKETLEŞME UZMANI', 'resim31.jpg', 0, 1, '2020-08-20 14:39:34');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_name` varchar(50) COLLATE utf8_turkish_ci DEFAULT NULL,
  `full_name` varchar(50) COLLATE utf8_turkish_ci DEFAULT NULL,
  `email` varchar(50) COLLATE utf8_turkish_ci DEFAULT NULL,
  `password` varchar(100) COLLATE utf8_turkish_ci DEFAULT NULL,
  `isActive` tinyint(4) DEFAULT NULL,
  `createdAt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `user_name`, `full_name`, `email`, `password`, `isActive`, `createdAt`) VALUES
(1, 'only', 'Oğuzhan Filiz', 'onlyfryou@icloud.com', '96e79218965eb72c92a549dd5a330112', 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `videos`
--

DROP TABLE IF EXISTS `videos`;
CREATE TABLE IF NOT EXISTS `videos` (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `gallery_id` int(11) DEFAULT NULL,
  `url` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
  `rank` int(255) DEFAULT NULL,
  `isActive` tinyint(255) DEFAULT NULL,
  `createdAt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Dumping data for table `videos`
--

INSERT INTO `videos` (`id`, `gallery_id`, `url`, `rank`, `isActive`, `createdAt`) VALUES
(1, 10, 'https://www.youtube.com/embed/2eZRRRiPQo8', 1, 1, NULL),
(3, 10, 'https://www.youtube.com/embed/2eZRRRiPQo8', 0, 1, '2018-01-06 22:55:52'),
(4, 15, 'https://www.youtube.com/watch?v=Yqel7Ovn6t4', 0, 1, '2020-08-12 14:59:23');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
