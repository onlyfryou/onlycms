-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1:3306
-- Üretim Zamanı: 15 Ağu 2020, 10:45:31
-- Sunucu sürümü: 10.4.10-MariaDB
-- PHP Sürümü: 7.4.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `panel`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `brands`
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
-- Tablo döküm verisi `brands`
--

INSERT INTO `brands` (`id`, `title`, `img_url`, `rank`, `isActive`, `createdAt`) VALUES
(4, '<p>a<span style=\"background-color: rgb(255, 255, 0);\"><b>naysaslkdfhsldkfhdflkj lkasj</b></span>dflksasjdlk alk lkasdalksjd</p>', '<p>iletimsisdmidsmf sidmfisdmsdifms imsdfisdmismd </p>', 0, 1, '2017-12-29 08:04:45');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `courses`
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
-- Tablo döküm verisi `courses`
--

INSERT INTO `courses` (`id`, `url`, `title`, `description`, `img_url`, `event_date`, `rank`, `isActive`, `createdAt`) VALUES
(2, 'codeigniter-4-egitimi', 'Codeigniter 4 Eğitimi', '<p>Bu eğitimde codeigniter ile ilgili birçok kavramı elden geçireceğiz..</p>', 'videosinif-proje.png', '2018-02-24 12:00:00', 0, 1, '2017-12-29 00:41:16');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `email_settings`
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
-- Tablo döküm verisi `email_settings`
--

INSERT INTO `email_settings` (`id`, `protocol`, `host`, `port`, `user`, `password`, `from`, `to`, `user_name`, `isActive`, `createdAt`) VALUES
(2, 'smtp', 'ssl://smtp.gmail.com', '465', 'forgetpassonlycms@gmail.com', '205965asd', 'forgetpassonlycms@gmail.com', 'forgetpassonlycms@outlook.com', 'only', 1, '2020-08-08');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `files`
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
-- Tablo döküm verisi `files`
--

INSERT INTO `files` (`id`, `gallery_id`, `url`, `rank`, `isActive`, `createdAt`) VALUES
(1, 11, 'uploads/galleries_v/files/kataloglarimiz/web-tasarim-fiyat-teklifi.pdf', 1, 0, '2018-01-06 21:38:13'),
(4, 11, 'uploads/galleries_v/files/kataloglarimiz/nodejs-icerik.docx', 0, 1, '2018-01-06 22:05:25');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `galleries`
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
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `galleries`
--

INSERT INTO `galleries` (`id`, `url`, `title`, `gallery_type`, `folder_name`, `isActive`, `createdAt`, `rank`) VALUES
(13, 'saddasda', 'saddasda', 'image', 'saddasda', 1, '2020-08-12 14:50:24', 1),
(14, 'teknokent-egitim-etkinligi', 'Teknokent eğitim etkinliği', 'image', 'teknokent-egitim-etkinligi', 1, '2020-08-12 14:54:37', 0),
(15, 'qweqwe', 'qweqwe', 'video', '', 1, '2020-08-12 14:59:12', 2);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `images`
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
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `images`
--

INSERT INTO `images` (`id`, `gallery_id`, `url`, `rank`, `isActive`, `createdAt`) VALUES
(27, 12, 'uploads/galleries_v/images/bayram-resimleri/ekran-resmi-2018-01-03-23-52-59.png', 1, 1, '2018-01-06 23:32:59'),
(28, 12, 'uploads/galleries_v/images/bayram-resimleri/ekran-resmi-2018-01-03-23-52-34.png', 2, 1, '2018-01-06 23:32:59'),
(30, 12, 'uploads/galleries_v/images/bayram-resimleri/ekran-resmi-2018-01-04-00-09-58.png', 3, 1, '2018-01-06 23:32:59'),
(31, 13, 'uploads/galleries_v/images/saddasda/unnamed.jpg', 0, 1, '2020-08-12 14:50:30');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `members`
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
-- Tablo için tablo yapısı `news`
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `news`
--

INSERT INTO `news` (`id`, `url`, `title`, `description`, `news_type`, `img_url`, `video_url`, `rank`, `isActive`, `createdAt`) VALUES
(2, 'iphonex-satislari-beklenilenin-altindaaaaaa', 'iphoneX Satışları Beklenilenin altındaaaaaa', '<p>iphoneX Satışları <b>Beklenilenin altındaaaaaaaa</b><br></p>', 'image', 'ipphone8.jpeg', '#', 1, 1, '2017-12-25 22:59:32'),
(3, 'kablosuzkedi-den-yeni-bir-egitim-serisi-geldi-like/dislike', 'kablosuzkedi den yeni bir egitim serisi geldi like/dislike', '<p>kablosuzkedi den yeni bir egitim serisi geldi like/dislike<br></p>', 'image', 'kablosuzkedi-2-768x858.png', '#', 0, 1, '2017-12-25 23:02:02');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `popups`
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
-- Tablo için tablo yapısı `portfolios`
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `portfolios`
--

INSERT INTO `portfolios` (`id`, `url`, `title`, `description`, `finishedAt`, `client`, `category_id`, `place`, `portfolio_url`, `rank`, `isActive`, `createdAt`) VALUES
(1, 'sadasd', 'sadasdsa', 'asdads', '2020-08-14 00:00:00', 'asddas', 1, 'sdasda', 'asdasd', 1, 1, '2020-08-14 00:00:00'),
(2, 'web-tasarim-hizmeti', 'Web Tasarım Hizmeti', '<p>asda</p>', '2020-08-21 00:00:00', 'asdas', 1, 'adssad', 'asdsad', 0, 1, '2020-08-14 13:47:33'),
(3, 'asdasd', 'ASDASD', '<p>ADSAS</p>', '2020-08-14 00:00:00', 'ASDAD', 1, '', 'ADSAD', 0, 1, '2020-08-14 13:50:24'),
(4, 'asdsad', 'asdsad', '<p>asdsad</p>', '2020-08-14 00:00:00', 'adsssdasd', 1, 'asdadsasd', '', 0, 1, '2020-08-14 14:05:43');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `portfolio_categories`
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
-- Tablo döküm verisi `portfolio_categories`
--

INSERT INTO `portfolio_categories` (`id`, `title`, `isActive`, `createdAt`) VALUES
(1, 'Video', 1, '2020-08-14 11:53:48'),
(3, 'Resim', 1, '2020-08-14 12:10:32');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `portfolio_images`
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `portfolio_images`
--

INSERT INTO `portfolio_images` (`id`, `portfolio_id`, `img_url`, `rank`, `isActive`, `isCover`, `createdAt`) VALUES
(1, 2, 'unnamed.jpg', 0, 1, 0, '2020-08-14 15:11:04');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `products`
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
-- Tablo döküm verisi `products`
--

INSERT INTO `products` (`id`, `url`, `title`, `description`, `rank`, `isActive`, `createdAt`) VALUES
(2, 'deneme-url-2', 'Deneme Ürünü 2', 'Bu bir deneme ürünü aciklamasidir 2', 4, 1, NULL),
(6, 'monitor-askisi-50-45-cm-buyuklugundedir', 'Monitör Askısı 50.45 cm büyüklüğündedir', '<p>test amacli üretildi..</p>', 1, 1, '2017-12-14 00:43:46'),
(9, 'testt-testt', 'testt testt', '<p>alert denemesidier..</p>', 2, 1, '2017-12-20 01:22:10'),
(11, 'asda', 'asda', '<p>sdsdsds</p>', 3, 1, '2017-12-20 01:24:32'),
(12, 'mantar-tablo', 'Mantar Tablo', 'Bu tablo o kadar güzel bir tablodur ki!!!', 0, 1, '2018-01-11 13:39:23');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `product_images`
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
-- Tablo döküm verisi `product_images`
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
-- Tablo için tablo yapısı `references`
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
-- Tablo döküm verisi `references`
--

INSERT INTO `references` (`id`, `url`, `title`, `description`, `img_url`, `rank`, `isActive`, `createdAt`) VALUES
(2, 'bu-bir-deneme-referans-bilgisidir---2', 'bu bir deneme referans bilgisidir.. 2', '<p>asdasdasd bu refransimiza cok güveniyoruz.. 2</p>', 'videosinif-proje.png', 1, 1, '2017-12-27 00:18:34');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `services`
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

--
-- Tablo döküm verisi `services`
--

INSERT INTO `services` (`id`, `url`, `title`, `description`, `img_url`, `rank`, `isActive`, `createdAt`) VALUES
(2, 'bu-bir-deneme-referans-bilgisidir---2', 'bu bir deneme referans bilgisidir.. 2', '<p>asdasdasd bu refransimiza cok güveniyoruz.. 2</p>', 'unnamed1.jpg', 0, 0, '2017-12-27 00:18:34'),
(3, 'deneme-urunu-s', 'Deneme ürünü s', '<p>Deneme ürünü s&nbsp;<br></p>', 'unnamed.jpg', 1, 1, '2020-08-14 08:22:31');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `settings`
--

DROP TABLE IF EXISTS `settings`;
CREATE TABLE IF NOT EXISTS `settings` (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `company_name` varchar(255) COLLATE utf8_turkish_ci DEFAULT NULL,
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
-- Tablo döküm verisi `settings`
--

INSERT INTO `settings` (`id`, `company_name`, `address`, `about_us`, `mission`, `vision`, `logo`, `phone_1`, `phone_2`, `fax_1`, `fax_2`, `email`, `facebook`, `twitter`, `instagram`, `linkedin`, `createdAt`, `updatedAt`) VALUES
(2, 'KuvarSSoft', '                                                                                                                                                                <p>Teknokent<br></p>                                                                                                                                                ', '                                                                                                                                                                <p>Teknokent<br></p>                                                                                                                                                ', '                                                                                                                                                                <p>Teknokent<br></p>                                                                                                                                                ', '                                                                                                                                                                <p>Teknokent<br></p>                                                                                                                                                ', 'teknokent1.PNG', '05444355071', '05444355071', '05444355071', '05444355071', 'oguzhanfiliz@outlook.com', 'http://facebook.com/onlyfryou', 'http://twitter.com/onlyfryouu1', 'http://instagram.com/busraoguzhan_', 'linedk.com/kasdasdk', '2020-08-12 16:18:32', '2020-08-12 16:22:54');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `slides`
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
-- Tablo için tablo yapısı `users`
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
-- Tablo döküm verisi `users`
--

INSERT INTO `users` (`id`, `user_name`, `full_name`, `email`, `password`, `isActive`, `createdAt`) VALUES
(1, 'only', 'Oğuzhan Filiz', 'onlyfryou@icloud.com', '96e79218965eb72c92a549dd5a330112', 1, NULL);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `videos`
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
-- Tablo döküm verisi `videos`
--

INSERT INTO `videos` (`id`, `gallery_id`, `url`, `rank`, `isActive`, `createdAt`) VALUES
(1, 10, 'https://www.youtube.com/embed/2eZRRRiPQo8', 1, 1, NULL),
(3, 10, 'https://www.youtube.com/embed/2eZRRRiPQo8', 0, 1, '2018-01-06 22:55:52'),
(4, 15, 'https://www.youtube.com/watch?v=Yqel7Ovn6t4', 0, 1, '2020-08-12 14:59:23');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
