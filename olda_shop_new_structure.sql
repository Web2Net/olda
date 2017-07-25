-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Хост: localhost
-- Время создания: Июл 23 2017 г., 08:14
-- Версия сервера: 10.1.21-MariaDB
-- Версия PHP: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `olda`
--

-- --------------------------------------------------------

--
-- Структура таблицы `shop_item`
--

CREATE TABLE `shop_item` (
  `id` int(11) UNSIGNED NOT NULL,
  `1Cid` varchar(255) NOT NULL,
  `connect` varchar(255) NOT NULL,
  `caption` varchar(255) NOT NULL,
  `seolink` varchar(255) NOT NULL,
  `desc_full` text NOT NULL,
  `desc_short` text NOT NULL,
  `show` int(1) NOT NULL DEFAULT '1',
  `flagman` int(1) NOT NULL,
  `good_price` tinyint(1) NOT NULL,
  `sell_out` tinyint(1) NOT NULL,
  `on_main` tinyint(1) NOT NULL,
  `price_diler` decimal(10,2) NOT NULL,
  `price_roznica` decimal(10,2) NOT NULL,
  `date` datetime DEFAULT NULL,
  `last_update` datetime NOT NULL,
  `img` varchar(155) NOT NULL,
  `article` varchar(100) NOT NULL DEFAULT '0',
  `order` smallint(5) UNSIGNED NOT NULL,
  `hit` int(1) NOT NULL,
  `garantiya` int(10) UNSIGNED NOT NULL,
  `nalichie` varchar(50) NOT NULL DEFAULT '+',
  `package` varchar(50) NOT NULL DEFAULT '0',
  `param_connect` varchar(255) NOT NULL DEFAULT '',
  `branch_connect` varchar(255) NOT NULL,
  `gallery_connect` varchar(255) NOT NULL,
  `companion_connect` varchar(255) NOT NULL,
  `p1` varchar(255) NOT NULL,
  `p2` varchar(255) NOT NULL,
  `p3` varchar(255) NOT NULL,
  `p4` varchar(255) NOT NULL,
  `p5` varchar(255) NOT NULL COMMENT 'Цена по входу',
  `p6` varchar(255) NOT NULL,
  `postavschik` varchar(50) NOT NULL,
  `brand` varchar(50) NOT NULL,
  `meta_t` varchar(255) NOT NULL,
  `meta_k` text NOT NULL,
  `meta_d` text NOT NULL,
  `see` int(11) NOT NULL,
  `print` enum('1','0') NOT NULL DEFAULT '1',
  `pos` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `shop_item_en`
--

CREATE TABLE `shop_item_en` (
  `lid` int(11) NOT NULL,
  `pid` varchar(11) NOT NULL,
  `caption` varchar(255) NOT NULL,
  `desc_short` text NOT NULL,
  `desc_full` text NOT NULL,
  `meta_t` varchar(255) NOT NULL,
  `meta_k` text NOT NULL,
  `meta_d` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `shop_item_ru`
--

CREATE TABLE `shop_item_ru` (
  `lid` int(11) NOT NULL,
  `pid` varchar(11) NOT NULL,
  `caption` varchar(255) NOT NULL,
  `desc_short` text NOT NULL,
  `desc_full` text NOT NULL,
  `meta_t` varchar(255) NOT NULL,
  `meta_k` text NOT NULL,
  `meta_d` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `shop_item_ua`
--

CREATE TABLE `shop_item_ua` (
  `lid` int(11) NOT NULL,
  `pid` varchar(11) NOT NULL,
  `caption` varchar(255) NOT NULL,
  `desc_short` text NOT NULL,
  `desc_full` text NOT NULL,
  `meta_t` varchar(255) NOT NULL,
  `meta_k` text NOT NULL,
  `meta_d` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `shop_tag`
--

CREATE TABLE `shop_tag` (
  `id` int(11) UNSIGNED NOT NULL,
  `connect` varchar(255) NOT NULL,
  `caption` varchar(255) NOT NULL,
  `seolink` varchar(255) NOT NULL,
  `desc_short` varchar(555) NOT NULL,
  `desc_full` text NOT NULL,
  `img` varchar(255) NOT NULL,
  `show` int(1) NOT NULL,
  `hit` int(1) NOT NULL,
  `level` int(1) NOT NULL,
  `meta_t` varchar(255) NOT NULL,
  `meta_k` text NOT NULL,
  `meta_d` text NOT NULL,
  `date` datetime NOT NULL,
  `see` int(11) NOT NULL,
  `pos` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `shop_tag`
--

INSERT INTO `shop_tag` (`id`, `connect`, `caption`, `seolink`, `desc_short`, `desc_full`, `img`, `show`, `hit`, `level`, `meta_t`, `meta_k`, `meta_d`, `date`, `see`, `pos`) VALUES
(1, ';', '', 'stennovye-materialy', '', '', '', 1, 0, 0, '', '', '', '2017-07-23 08:12:39', 0, 1499711802),
(2, ';', '', 'kirpich-ryadovoy', '', '', '', 1, 0, 0, '', '', '', '2017-07-23 08:15:31', 0, 1500786931),
(3, ';', '', 'keramicheskie-bloki', '', '', '', 1, 0, 0, '', '', '', '2017-07-23 08:16:07', 0, 1500786967),
(4, ';', '', 'kirpich-oblitsovochnyy', '', '', '', 1, 0, 0, '', '', '', '2017-07-23 08:16:19', 0, 1500786979),
(5, ';', '', 'kirpich-klinkernyy', '', '', '', 1, 0, 0, '', '', '', '2017-07-23 08:16:36', 0, 1500786996),
(6, ';', '', 'sukhie-stroitelnye-smesi', '', '', '', 1, 0, 0, '', '', '', '2017-07-23 08:16:47', 0, 1500787007),
(7, ';', '', 'shlakoblok', '', '', '', 1, 0, 0, '', '', '', '2017-07-23 08:17:06', 0, 1500787026),
(8, ';', '', 'trotuarnaya-plitka', '', '', '', 1, 0, 0, '', '', '', '2017-07-23 08:17:16', 0, 1500787036),
(9, ';', '', 'aerok-berezan', '', '', '', 1, 1, 1, '', '', '', '2017-07-23 08:18:49', 0, 1500787313),
(10, ';', '', 'aerok-obukhov', '', '', '', 1, 1, 1, '', '', '', '2017-07-23 08:20:04', 0, 1500787291),
(11, ';', '', 'zhitomir', '', '', '', 1, 1, 1, '', '', '', '2017-07-23 08:20:40', 0, 1500787129),
(12, ';', '', 'stounlayt', '', '', '', 1, 1, 1, '', '', '', '2017-07-23 08:21:14', 0, 1500787268),
(13, ';', '', 'khsm', '', '', '', 1, 1, 1, '', '', '', '2017-07-23 08:21:35', 0, 1500787234),
(14, ';', '', 'chernigov', '', '', '', 1, 1, 1, '', '', '', '2017-07-23 08:21:58', 0, 1500787198),
(15, ';48;49;50;51;', '', 'ogneupornyy', '', '', '', 1, 2, 1, '', '', '', '2017-07-23 08:23:14', 0, 1500787388),
(16, ';45;46;47;', '', '2nf', '', '', '', 1, 2, 1, '', '', '', '2017-07-23 08:23:38', 0, 1500787413),
(17, ';43;44;', '', 'polnotelyy-m100', '', '', '', 1, 2, 1, '', '', '', '2017-07-23 08:23:58', 0, 1500787432),
(18, ';61;', '', 'keramkomfort-sbk', '', '', '', 1, 3, 1, '', '', '', '2017-07-23 08:24:39', 0, 1500787474),
(19, ';57;58;59;60;', '', 'rusyniya', '', '', '', 1, 3, 1, '', '', '', '2017-07-23 08:24:59', 0, 1500787493),
(20, ';55;56;', '', 'porotherm', '', '', '', 1, 3, 1, '', '', '', '2017-07-23 08:25:14', 0, 1500787511),
(21, ';52;53;54;', '', 'keraterm', '', '', '', 1, 3, 1, '', '', '', '2017-07-23 08:25:30', 0, 1500787526),
(22, ';', '', 'belaya-tserkov', '', '', '', 1, 4, 1, '', '', '', '2017-07-23 08:26:21', 0, 1500787577),
(23, ';', '', 'kerameyya', '', '', '', 1, 4, 1, '', '', '', '2017-07-23 08:26:49', 0, 1500787604),
(24, ';', '', 'sbk', '', '', '', 1, 5, 1, '', '', '', '2017-07-23 08:28:08', 0, 1500787684),
(25, ';', '', 'belaya-tserkov', '', '', '', 1, 5, 1, '', '', '', '2017-07-23 08:29:09', 0, 1500787744),
(26, ';', '', 'kerameyya', '', '', '', 1, 5, 1, '', '', '', '2017-07-23 08:29:52', 0, 1500787789),
(27, ';98;99;100;101;102;103;104;105;106;107;108;109;', '', 'gruntovki-i-ehmulsii', '', '', '', 1, 6, 1, '', '', '', '2017-07-23 08:30:39', 0, 1500787835),
(28, ';92;88;89;90;91;93;94;95;96;97;', '', 'smesi-dlya-ustroystva-polov', '', '', '', 1, 6, 1, '', '', '', '2017-07-23 08:30:59', 0, 1500787855),
(29, ';85;86;87;', '', 'shtukaturki-dekorativnye', '', '', '', 1, 6, 1, '', '', '', '2017-07-23 08:31:17', 0, 1500787872),
(30, ';84;', '', 'shpaklevka-fasadnaya', '', '', '', 1, 6, 1, '', '', '', '2017-07-23 08:31:34', 0, 1500787890),
(31, ';78;79;80;81;82;83;', '', 'shtukaturnye-smesi', '', '', '', 1, 6, 1, '', '', '', '2017-07-23 08:31:58', 0, 1500787913),
(32, ';73;74;75;76;77;', '', 'smesi-dlya-ustroystva-gidroizolyatsii', '', '', '', 1, 6, 1, '', '', '', '2017-07-23 08:32:22', 0, 1500787937),
(33, ';69;70;71;72;', '', 'smesi-stroitelnye-montazhnye', '', '', '', 1, 6, 1, '', '', '', '2017-07-23 08:32:42', 0, 1500787956),
(34, ';65;66;67;68;', '', 'smesi-dlya-kladki-teploizolyatsionnykh-blokov', '', '', '', 1, 6, 1, '', '', '', '2017-07-23 08:33:03', 0, 1500787983),
(35, ';62;63;64;', '', 'smesi-kleevye', '', '', '', 1, 6, 1, '', '', '', '2017-07-23 08:34:03', 0, 1500788039),
(36, ';', '', '190x190x390', '', '', '', 1, 7, 1, '', '', '', '2017-07-23 08:35:33', 0, 1500788195),
(37, ';', '', '115x188x500', '', '', '', 1, 7, 1, '', '', '', '2017-07-23 08:36:08', 0, 1500788108),
(38, ';', '', '250x188x400', '', '', '', 1, 7, 1, '', '', '', '2017-07-23 08:36:39', 0, 1500788162),
(39, ';', '', '90x190x390', '', '', '', 1, 7, 1, '', '', '', '2017-07-23 08:37:06', 0, 1500788222),
(40, ';', '', '120x190x390', '', '', '', 1, 7, 1, '', '', '', '2017-07-23 08:37:30', 0, 1500788301),
(41, ';', '', 'eko', '', '', '', 1, 8, 1, '', '', '', '2017-07-23 08:38:07', 0, 1500788245),
(42, ';', '', 'staryy-gorod', '', '', '', 1, 8, 1, '', '', '', '2017-07-23 08:38:25', 0, 1500788282),
(43, ';17;', '', 'lubny', '', '', '', 1, 0, 2, '', '', '', '2017-07-23 08:43:52', 0, 1500788632),
(44, ';17;', '', 'vinnitsa', '', '', '', 1, 0, 2, '', '', '', '2017-07-23 08:44:10', 0, 1500788650),
(45, ';16;', '', '2nf-sbk--ozera-romni', '', '', '', 1, 0, 2, '', '', '', '2017-07-23 08:44:44', 0, 1500788684),
(46, ';16;', '', '2nf-teplokeram-kerameyya', '', '', '', 1, 0, 2, '', '', '', '2017-07-23 08:45:05', 0, 1500788705),
(47, ';16;', '', '2nf-ivano-frankivsk', '', '', '', 1, 0, 2, '', '', '', '2017-07-23 08:45:21', 0, 1500788721),
(48, ';15;', '', 'pb-5', '', '', '', 1, 0, 2, '', '', '', '2017-07-23 08:45:48', 0, 1500788748),
(49, ';15;', '', 'sh-8', '', '', '', 1, 0, 2, '', '', '', '2017-07-23 08:46:01', 0, 1500788761),
(50, ';15;', '', 'pechnaya-m-200-zaporizhzhya', '', '', '', 1, 0, 2, '', '', '', '2017-07-23 08:46:21', 0, 1500788781),
(51, ';15;', '', 'sh-5', '', '', '', 1, 0, 2, '', '', '', '2017-07-23 08:46:32', 0, 1500788792),
(52, ';21;', '', 'keraterm-12', '', '', '', 1, 0, 2, '', '', '', '2017-07-23 08:48:02', 0, 1500788882),
(53, ';21;', '', 'keraterm-25', '', '', '', 1, 0, 2, '', '', '', '2017-07-23 08:48:17', 0, 1500788897),
(54, ';21;', '', 'keraterm-38', '', '', '', 1, 0, 2, '', '', '', '2017-07-23 08:48:28', 0, 1500788908),
(55, ';20;', '', 'porotherm-25', '', '', '', 1, 0, 2, '', '', '', '2017-07-23 08:49:16', 0, 1500788956),
(56, ';20;', '', 'porotherm-38', '', '', '', 1, 0, 2, '', '', '', '2017-07-23 08:49:27', 0, 1500788967),
(57, ';19;', '', 'ecoblock-12', '', '', '', 1, 0, 2, '', '', '', '2017-07-23 08:49:51', 0, 1500788991),
(58, ';19;', '', 'ecoblock-25', '', '', '', 1, 0, 2, '', '', '', '2017-07-23 08:50:10', 0, 1500789010),
(59, ';19;', '', 'ecoblock-38', '', '', '', 1, 0, 2, '', '', '', '2017-07-23 08:50:22', 0, 1500789022),
(60, ';19;', '', 'ecoblock-45', '', '', '', 1, 0, 2, '', '', '', '2017-07-23 08:50:32', 0, 1500789032),
(61, ';18;', '', 'keramkomfortsbk', '', '', '', 1, 0, 2, '', '', '', '2017-07-23 08:50:58', 0, 1500789058),
(62, ';35;', '', 'dlya-oblitsovki', '', '', '', 1, 0, 2, '', '', '', '2017-07-23 08:56:59', 0, 1500789419),
(63, ';35;', '', 'dlya-sistem-utepleniya', '', '', '', 1, 0, 2, '', '', '', '2017-07-23 08:57:15', 0, 1500789435),
(64, ';35;', '', 'termostoykie', '', '', '', 1, 0, 2, '', '', '', '2017-07-23 08:57:30', 0, 1500789450),
(65, ';34;', '', 'pst090', '', '', '', 1, 0, 2, '', '', '', '2017-07-23 09:00:35', 0, 1500789635),
(66, ';34;', '', 'pst092', '', '', '', 1, 0, 2, '', '', '', '2017-07-23 09:00:50', 0, 1500789650),
(67, ';34;', '', 'pst050', '', '', '', 1, 0, 2, '', '', '', '2017-07-23 09:01:03', 0, 1500789663),
(68, ';34;', '', 'dops', '', '', '', 1, 0, 2, '', '', '', '2017-07-23 09:01:13', 0, 1500789673),
(69, ';33;', '', 'pbr-25-12-15', '', '', '', 1, 0, 2, '', '', '', '2017-07-23 09:01:41', 0, 1500789701),
(70, ';33;', '', 'psm-075', '', '', '', 1, 0, 2, '', '', '', '2017-07-23 09:01:58', 0, 1500789718),
(71, ';33;', '', 'psm-300-100-150-200', '', '', '', 1, 0, 2, '', '', '', '2017-07-23 09:02:11', 0, 1500789731),
(72, ';33;', '', 'gips-smes-kleevaya-gipsovaya', '', '', '', 1, 0, 2, '', '', '', '2017-07-23 09:02:27', 0, 1500789747),
(73, ';32;', '', 'prg-01', '', '', '', 1, 0, 2, '', '', '', '2017-07-23 09:02:53', 0, 1500789773),
(74, ';32;', '', 'prg-02', '', '', '', 1, 0, 2, '', '', '', '2017-07-23 09:03:05', 0, 1500789785),
(75, ';32;', '', 'prg-03', '', '', '', 1, 0, 2, '', '', '', '2017-07-23 09:03:12', 0, 1500789792),
(76, ';32;', '', 'prg-04', '', '', '', 1, 0, 2, '', '', '', '2017-07-23 09:03:21', 0, 1500789801),
(77, ';32;', '', 'prg-05', '', '', '', 1, 0, 2, '', '', '', '2017-07-23 09:03:29', 0, 1500789809),
(78, ';31;', '', 'ptssh-007', '', '', '', 1, 0, 2, '', '', '', '2017-07-23 09:04:05', 0, 1500789833),
(79, ';31;', '', 'ptssh-008', '', '', '', 1, 0, 2, '', '', '', '2017-07-23 09:04:28', 0, 1500789868),
(80, ';31;', '', 'ptssh-009', '', '', '', 1, 0, 2, '', '', '', '2017-07-23 09:04:38', 0, 1500789878),
(81, ';31;', '', 'ptssh-017', '', '', '', 1, 0, 2, '', '', '', '2017-07-23 09:04:44', 0, 1500789884),
(82, ';31;', '', 'ptssh-018', '', '', '', 1, 0, 2, '', '', '', '2017-07-23 09:04:51', 0, 1500789891),
(83, ';31;', '', 'ptssh-051', '', '', '', 1, 0, 2, '', '', '', '2017-07-23 09:04:59', 0, 1500789899),
(84, ';30;', '', 'ptsn-027', '', '', '', 1, 0, 2, '', '', '', '2017-07-23 09:05:42', 0, 1500789942),
(85, ';29;', '', 'ptssh-054-relef', '', '', '', 1, 0, 2, '', '', '', '2017-07-23 09:06:01', 0, 1500789961),
(86, ';29;', '', 'ptssh-055-barashek', '', '', '', 1, 0, 2, '', '', '', '2017-07-23 09:06:19', 0, 1500789979),
(87, ';29;', '', 'ptssh-056-koroed', '', '', '', 1, 0, 2, '', '', '', '2017-07-23 09:06:30', 0, 1500789990),
(88, ';28;', '', 'psp-031', '', '', '', 1, 0, 2, '', '', '', '2017-07-23 09:07:17', 0, 1500790037),
(89, ';28;', '', 'psp-032', '', '', '', 1, 0, 2, '', '', '', '2017-07-23 09:07:25', 0, 1500790045),
(90, ';28;', '', 'psp-033', '', '', '', 1, 0, 2, '', '', '', '2017-07-23 09:07:32', 0, 1500790052),
(91, ';28;', '', 'psp-052', '', '', '', 1, 0, 2, '', '', '', '2017-07-23 09:08:00', 0, 1500790080),
(92, ';28;', '', 'psp-030', '', '', '', 1, 0, 2, '', '', '', '2017-07-23 09:08:12', 0, 1500790092),
(93, ';28;', '', 'psv-015', '', '', '', 1, 0, 2, '', '', '', '2017-07-23 09:09:51', 0, 1500790146),
(94, ';28;', '', 'psv-016', '', '', '', 1, 0, 2, '', '', '', '2017-07-23 09:10:21', 0, 1500790136),
(95, ';28;', '', 'psv-017', '', '', '', 1, 0, 2, '', '', '', '2017-07-23 09:10:38', 0, 1500790116),
(96, ';28;', '', 'psv-400', '', '', '', 1, 0, 2, '', '', '', '2017-07-23 09:08:56', 0, 1500790107),
(97, ';28;', '', 'psv-407', '', '', '', 1, 0, 2, '', '', '', '2017-07-23 09:09:06', 0, 1500790100),
(98, ';27;', '', 'pgs114', '', '', '', 1, 0, 2, '', '', '', '2017-07-23 09:11:37', 0, 1500790297),
(99, ';27;', '', 'pgs115', '', '', '', 1, 0, 2, '', '', '', '2017-07-23 09:11:45', 0, 1500790305),
(100, ';27;', '', 'pgs116', '', '', '', 1, 0, 2, '', '', '', '2017-07-23 09:11:53', 0, 1500790313),
(101, ';27;', '', 'pgs117', '', '', '', 1, 0, 2, '', '', '', '2017-07-23 09:12:00', 0, 1500790320),
(102, ';27;', '', 'pgs122', '', '', '', 1, 0, 2, '', '', '', '2017-07-23 09:12:10', 0, 1500790330),
(103, ';27;', '', 'po-105', '', '', '', 1, 0, 2, '', '', '', '2017-07-23 09:12:20', 0, 1500790340),
(104, ';27;', '', 'ps-112', '', '', '', 1, 0, 2, '', '', '', '2017-07-23 09:12:29', 0, 1500790349),
(105, ';27;', '', 'pss-110', '', '', '', 1, 0, 2, '', '', '', '2017-07-23 09:12:37', 0, 1500790357),
(106, ';27;', '', 'pl-125', '', '', '', 1, 0, 2, '', '', '', '2017-07-23 09:12:45', 0, 1500790365),
(107, ';27;', '', 'pl-127', '', '', '', 1, 0, 2, '', '', '', '2017-07-23 09:12:54', 0, 1500790374),
(108, ';27;', '', 'pgs-131', '', '', '', 1, 0, 2, '', '', '', '2017-07-23 09:13:02', 0, 1500790382),
(109, ';27;', '', 'pmr-141', '', '', '', 1, 0, 2, '', '', '', '2017-07-23 09:13:11', 0, 1500790391);

-- --------------------------------------------------------

--
-- Структура таблицы `shop_tag_en`
--

CREATE TABLE `shop_tag_en` (
  `lid` int(11) NOT NULL,
  `pid` varchar(11) NOT NULL,
  `caption` varchar(255) NOT NULL,
  `desc_short` varchar(555) NOT NULL,
  `desc_full` text NOT NULL,
  `meta_t` varchar(255) NOT NULL,
  `meta_k` text NOT NULL,
  `meta_d` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `shop_tag_en`
--

INSERT INTO `shop_tag_en` (`lid`, `pid`, `caption`, `desc_short`, `desc_full`, `meta_t`, `meta_k`, `meta_d`) VALUES
(1, '1', '', '', '', '', '', ''),
(2, '2', '', '', '', '', '', ''),
(3, '3', '', '', '', '', '', ''),
(4, '4', '', '', '', '', '', ''),
(5, '5', '', '', '', '', '', ''),
(6, '6', '', '', '', '', '', ''),
(7, '7', '', '', '', '', '', ''),
(8, '8', '', '', '', '', '', ''),
(9, '9', '', '', '', '', '', ''),
(10, '10', '', '', '', '', '', ''),
(11, '11', '', '', '', '', '', ''),
(12, '12', '', '', '', '', '', ''),
(13, '13', '', '', '', '', '', ''),
(14, '14', '', '', '', '', '', ''),
(15, '15', '', '', '', '', '', ''),
(16, '16', '', '', '', '', '', ''),
(17, '17', '', '', '', '', '', ''),
(18, '18', '', '', '', '', '', ''),
(19, '19', '', '', '', '', '', ''),
(20, '20', '', '', '', '', '', ''),
(21, '21', '', '', '', '', '', ''),
(22, '22', '', '', '', '', '', ''),
(23, '23', '', '', '', '', '', ''),
(24, '24', '', '', '', '', '', ''),
(25, '25', '', '', '', '', '', ''),
(26, '26', '', '', '', '', '', ''),
(27, '27', '', '', '', '', '', ''),
(28, '28', '', '', '', '', '', ''),
(29, '29', '', '', '', '', '', ''),
(30, '30', '', '', '', '', '', ''),
(31, '31', '', '', '', '', '', ''),
(32, '32', '', '', '', '', '', ''),
(33, '33', '', '', '', '', '', ''),
(34, '34', '', '', '', '', '', ''),
(35, '35', '', '', '', '', '', ''),
(36, '36', '', '', '', '', '', ''),
(37, '37', '', '', '', '', '', ''),
(38, '38', '', '', '', '', '', ''),
(39, '39', '', '', '', '', '', ''),
(40, '40', '', '', '', '', '', ''),
(41, '41', '', '', '', '', '', ''),
(42, '42', '', '', '', '', '', ''),
(43, '43', '', '', '', '', '', ''),
(44, '44', '', '', '', '', '', ''),
(45, '45', '', '', '', '', '', ''),
(46, '46', '', '', '', '', '', ''),
(47, '47', '', '', '', '', '', ''),
(48, '48', '', '', '', '', '', ''),
(49, '49', '', '', '', '', '', ''),
(50, '50', '', '', '', '', '', ''),
(51, '51', '', '', '', '', '', ''),
(52, '52', '', '', '', '', '', ''),
(53, '53', '', '', '', '', '', ''),
(54, '54', '', '', '', '', '', ''),
(55, '55', '', '', '', '', '', ''),
(56, '56', '', '', '', '', '', ''),
(57, '57', '', '', '', '', '', ''),
(58, '58', '', '', '', '', '', ''),
(59, '59', '', '', '', '', '', ''),
(60, '60', '', '', '', '', '', ''),
(61, '61', '', '', '', '', '', ''),
(62, '62', '', '', '', '', '', ''),
(63, '63', '', '', '', '', '', ''),
(64, '64', '', '', '', '', '', ''),
(65, '65', '', '', '', '', '', ''),
(66, '66', '', '', '', '', '', ''),
(67, '67', '', '', '', '', '', ''),
(68, '68', '', '', '', '', '', ''),
(69, '69', '', '', '', '', '', ''),
(70, '70', '', '', '', '', '', ''),
(71, '71', '', '', '', '', '', ''),
(72, '72', '', '', '', '', '', ''),
(73, '73', '', '', '', '', '', ''),
(74, '74', '', '', '', '', '', ''),
(75, '75', '', '', '', '', '', ''),
(76, '76', '', '', '', '', '', ''),
(77, '77', '', '', '', '', '', ''),
(78, '78', '', '', '', '', '', ''),
(79, '79', '', '', '', '', '', ''),
(80, '80', '', '', '', '', '', ''),
(81, '81', '', '', '', '', '', ''),
(82, '82', '', '', '', '', '', ''),
(83, '83', '', '', '', '', '', ''),
(84, '84', '', '', '', '', '', ''),
(85, '85', '', '', '', '', '', ''),
(86, '86', '', '', '', '', '', ''),
(87, '87', '', '', '', '', '', ''),
(88, '88', '', '', '', '', '', ''),
(89, '89', '', '', '', '', '', ''),
(90, '90', '', '', '', '', '', ''),
(91, '91', '', '', '', '', '', ''),
(92, '92', '', '', '', '', '', ''),
(93, '93', '', '', '', '', '', ''),
(94, '94', '', '', '', '', '', ''),
(95, '95', '', '', '', '', '', ''),
(96, '96', '', '', '', '', '', ''),
(97, '97', '', '', '', '', '', ''),
(98, '98', '', '', '', '', '', ''),
(99, '99', '', '', '', '', '', ''),
(100, '100', '', '', '', '', '', ''),
(101, '101', '', '', '', '', '', ''),
(102, '102', '', '', '', '', '', ''),
(103, '103', '', '', '', '', '', ''),
(104, '104', '', '', '', '', '', ''),
(105, '105', '', '', '', '', '', ''),
(106, '106', '', '', '', '', '', ''),
(107, '107', '', '', '', '', '', ''),
(108, '108', '', '', '', '', '', ''),
(109, '109', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Структура таблицы `shop_tag_ru`
--

CREATE TABLE `shop_tag_ru` (
  `lid` int(11) NOT NULL,
  `pid` varchar(11) NOT NULL,
  `caption` varchar(255) NOT NULL,
  `desc_short` varchar(555) NOT NULL,
  `desc_full` text NOT NULL,
  `meta_t` varchar(255) NOT NULL,
  `meta_k` text NOT NULL,
  `meta_d` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `shop_tag_ru`
--

INSERT INTO `shop_tag_ru` (`lid`, `pid`, `caption`, `desc_short`, `desc_full`, `meta_t`, `meta_k`, `meta_d`) VALUES
(1, '1', 'Стенновые материалы', '', '', 'Стенновые материалы', 'Стенновые, материалы, ', 'Стенновые материалы'),
(2, '2', 'Кирпич рядовой', '', '', 'Кирпич рядовой', 'Кирпич, рядовой, ', 'Кирпич рядовой'),
(3, '3', 'Керамические блоки', '', '', 'Керамические блоки', 'Керамические, блоки, ', 'Керамические блоки'),
(4, '4', 'Кирпич облицовочный', '', '', 'Кирпич облицовочный', 'Кирпич, облицовочный, ', 'Кирпич облицовочный'),
(5, '5', 'Кирпич клинкерный', '', '', 'Кирпич клинкерный', 'Кирпич, клинкерный, ', 'Кирпич клинкерный'),
(6, '6', 'Сухие строительные смеси', '', '', 'Сухие строительные смеси', 'Сухие, строительные, смеси, ', 'Сухие строительные смеси'),
(7, '7', 'Шлакоблок', '', '', 'Шлакоблок', 'Шлакоблок, ', 'Шлакоблок'),
(8, '8', 'Тротуарная плитка', '', '', 'Тротуарная плитка', 'Тротуарная, плитка, ', 'Тротуарная плитка'),
(9, '9', 'Аерок Березань', '', '', 'Аерок Березань', 'Аерок, Березань, ', 'Аерок Березань'),
(10, '10', 'Аерок Обухов', '', '', 'Аерок Обухов', 'Аерок, Обухов, ', 'Аерок Обухов'),
(11, '11', 'Житомир', '', '', 'Житомир', 'Житомир, ', 'Житомир'),
(12, '12', 'Стоунлайт', '', '', 'Стоунлайт', 'Стоунлайт, ', 'Стоунлайт'),
(13, '13', 'Хсм', '', '', 'Хсм', 'Хсм, ', 'Хсм'),
(14, '14', 'Чернигов', '', '', 'Чернигов', 'Чернигов, ', 'Чернигов'),
(15, '15', 'Огнеупорный', '', '', 'Огнеупорный', 'Огнеупорный, ', 'Огнеупорный'),
(16, '16', '2НФ', '', '', '2НФ', '2НФ, ', '2НФ'),
(17, '17', 'Полнотелый М100', '', '', 'Полнотелый М100', 'Полнотелый, М100, ', 'Полнотелый М100'),
(18, '18', 'Керамкомфорт (СБК)', '', '', 'Керамкомфорт (СБК)', 'Керамкомфорт, (СБК), ', 'Керамкомфорт (СБК)'),
(19, '19', 'Русыния', '', '', 'Русыния', 'Русыния, ', 'Русыния'),
(20, '20', 'Porotherm', '', '', 'Porotherm', 'Porotherm, ', 'Porotherm'),
(21, '21', 'Кератерм', '', '', 'Кератерм', 'Кератерм, ', 'Кератерм'),
(22, '22', 'Белая церковь', '', '', 'Белая церковь', 'Белая, церковь, ', 'Белая церковь'),
(23, '23', 'Керамейя', '', '', 'Керамейя', 'Керамейя, ', 'Керамейя'),
(24, '24', 'СБК', '', '', 'СБК', 'СБК, ', 'СБК'),
(25, '25', 'Белая Церковь', '', '', 'Белая Церковь', 'Белая, Церковь, ', 'Белая Церковь'),
(26, '26', 'Керамейя', '', '', 'Керамейя', 'Керамейя, ', 'Керамейя'),
(27, '27', 'Грунтовки и эмульсии', '', '', 'Грунтовки и эмульсии', 'Грунтовки, эмульсии, ', 'Грунтовки и эмульсии'),
(28, '28', 'Смеси для устройства полов', '', '', 'Смеси для устройства полов', 'Смеси, для, устройства, полов, ', 'Смеси для устройства полов'),
(29, '29', 'Штукатурки декоративные', '', '', 'Штукатурки декоративные', 'Штукатурки, декоративные, ', 'Штукатурки декоративные'),
(30, '30', 'Шпаклевка фасадная', '', '', 'Шпаклевка фасадная', 'Шпаклевка, фасадная, ', 'Шпаклевка фасадная'),
(31, '31', 'Штукатурные смеси', '', '', 'Штукатурные смеси', 'Штукатурные, смеси, ', 'Штукатурные смеси'),
(32, '32', 'Смеси для устройства гидроизоляции', '', '', 'Смеси для устройства гидроизоляции', 'Смеси, для, устройства, гидроизоляции, ', 'Смеси для устройства гидроизоляции'),
(33, '33', 'Смеси строительные монтажные', '', '', 'Смеси строительные монтажные', 'Смеси, строительные, монтажные, ', 'Смеси строительные монтажные'),
(34, '34', 'Смеси для кладки теплоизоляционных блоков', '', '', 'Смеси для кладки теплоизоляционных блоков', 'Смеси, для, кладки, теплоизоляционных, блоков, ', 'Смеси для кладки теплоизоляционных блоков'),
(35, '35', 'Смеси клеевые', '', '', 'Смеси клеевые', 'Смеси, клеевые, ', 'Смеси клеевые'),
(36, '36', '190х190х390', '', '', '190х190х390', '190х190х390, ', '190х190х390'),
(37, '37', '115x188x500', '', '', '115x188x500', '115x188x500, ', '115x188x500'),
(38, '38', '250x188x400', '', '', '250x188x400', '250x188x400, ', '250x188x400'),
(39, '39', '90x190x390', '', '', '90x190x390', '90x190x390, ', '90x190x390'),
(40, '40', '120x190x390', '', '', '120x190x390', '120x190x390, ', '120x190x390'),
(41, '41', 'Еко', '', '', 'Еко', 'Еко, ', 'Еко'),
(42, '42', 'Старый город', '', '', 'Старый город', 'Старый, город, ', 'Старый город'),
(43, '43', 'Лубны', '', '', 'Лубны', 'Лубны, ', 'Лубны'),
(44, '44', 'Винница', '', '', 'Винница', 'Винница, ', 'Винница'),
(45, '45', '2НФ СБК - Озера Ромни', '', '', '2НФ СБК - Озера Ромни', '2НФ, СБК, Озера, Ромни, ', '2НФ СБК - Озера Ромни'),
(46, '46', '2НФ Теплокерам (КЕРАМЕЙЯ)', '', '', '2НФ Теплокерам (КЕРАМЕЙЯ)', '2НФ, Теплокерам, (КЕРАМЕЙЯ), ', '2НФ Теплокерам (КЕРАМЕЙЯ)'),
(47, '47', '2НФ Івано-Франківськ', '', '', '2НФ Івано-Франківськ', '2НФ, Івано-Франківськ, ', '2НФ Івано-Франківськ'),
(48, '48', 'ПБ-5', '', '', 'ПБ-5', 'ПБ-5, ', 'ПБ-5'),
(49, '49', 'Ш-8', '', '', 'Ш-8', 'Ш-8, ', 'Ш-8'),
(50, '50', 'Печная М-200 Запоріжжя', '', '', 'Печная М-200 Запоріжжя', 'Печная, М-200, Запоріжжя, ', 'Печная М-200 Запоріжжя'),
(51, '51', 'Ш-5', '', '', 'Ш-5', 'Ш-5, ', 'Ш-5'),
(52, '52', 'Кератерм 12', '', '', 'Кератерм 12', 'Кератерм, ', 'Кератерм 12'),
(53, '53', 'Кератерм 25', '', '', 'Кератерм 25', 'Кератерм, ', 'Кератерм 25'),
(54, '54', 'Кератерм 38', '', '', 'Кератерм 38', 'Кератерм, ', 'Кератерм 38'),
(55, '55', 'Porotherm 25', '', '', 'Porotherm 25', 'Porotherm, ', 'Porotherm 25'),
(56, '56', 'Porotherm 38', '', '', 'Porotherm 38', 'Porotherm, ', 'Porotherm 38'),
(57, '57', 'ECOBLOCK-12', '', '', 'ECOBLOCK-12', 'ECOBLOCK-12, ', 'ECOBLOCK-12'),
(58, '58', 'ECOBLOCK-25', '', '', 'ECOBLOCK-25', 'ECOBLOCK-25, ', 'ECOBLOCK-25'),
(59, '59', 'ECOBLOCK-38', '', '', 'ECOBLOCK-38', 'ECOBLOCK-38, ', 'ECOBLOCK-38'),
(60, '60', 'ECOBLOCK-45', '', '', 'ECOBLOCK-45', 'ECOBLOCK-45, ', 'ECOBLOCK-45'),
(61, '61', 'Керамкомфорт(СБК)', '', '', 'Керамкомфорт(СБК)', 'Керамкомфорт(СБК), ', 'Керамкомфорт(СБК)'),
(62, '62', 'Для облицовки', '', '', 'Для облицовки', 'Для, облицовки, ', 'Для облицовки'),
(63, '63', 'Для систем утепления', '', '', 'Для систем утепления', 'Для, систем, утепления, ', 'Для систем утепления'),
(64, '64', 'Термостойкие', '', '', 'Термостойкие', 'Термостойкие, ', 'Термостойкие'),
(65, '65', 'Пст090', '', '', 'Пст090', 'Пст090, ', 'Пст090'),
(66, '66', 'ПСТ092', '', '', 'ПСТ092', 'ПСТ092, ', 'ПСТ092'),
(67, '67', 'Пст050', '', '', 'Пст050', 'Пст050, ', 'Пст050'),
(68, '68', 'Допс', '', '', 'Допс', 'Допс, ', 'Допс'),
(69, '69', 'ПБР-25 (12; 15)', '', '', 'ПБР-25 (12; 15)', 'ПБР-25, (12;, 15), ', 'ПБР-25 (12; 15)'),
(70, '70', 'ПСМ-075', '', '', 'ПСМ-075', 'ПСМ-075, ', 'ПСМ-075'),
(71, '71', 'ПСМ-300 (100, 150, 200)', '', '', 'ПСМ-300 (100, 150, 200)', 'ПСМ-300, (100,, 150,, 200), ', 'ПСМ-300 (100, 150, 200)'),
(72, '72', 'GIPS Смесь клеевая гипсовая', '', '', 'GIPS Смесь клеевая гипсовая', 'GIPS, Смесь, клеевая, гипсовая, ', 'GIPS Смесь клеевая гипсовая'),
(73, '73', 'ПРГ 01', '', '', 'ПРГ 01', 'ПРГ, ', 'ПРГ 01'),
(74, '74', 'ПРГ 02', '', '', 'ПРГ 02', 'ПРГ, ', 'ПРГ 02'),
(75, '75', 'ПРГ 03', '', '', 'ПРГ 03', 'ПРГ, ', 'ПРГ 03'),
(76, '76', 'ПРГ 04', '', '', 'ПРГ 04', 'ПРГ, ', 'ПРГ 04'),
(77, '77', 'ПРГ 05', '', '', 'ПРГ 05', 'ПРГ, ', 'ПРГ 05'),
(78, '78', 'ПЦШ -007', '', '', 'ПЦШ -017', 'ПЦШ, -017, ', 'ПЦШ -017'),
(79, '79', 'ПЦШ -008', '', '', 'ПЦШ -008', 'ПЦШ, -008, ', 'ПЦШ -008'),
(80, '80', 'ПЦШ -009', '', '', 'ПЦШ -009', 'ПЦШ, -009, ', 'ПЦШ -009'),
(81, '81', 'ПЦШ -017', '', '', 'ПЦШ -017', 'ПЦШ, -017, ', 'ПЦШ -017'),
(82, '82', 'ПЦШ -018', '', '', 'ПЦШ -018', 'ПЦШ, -018, ', 'ПЦШ -018'),
(83, '83', 'ПЦШ -051', '', '', 'ПЦШ -051', 'ПЦШ, -051, ', 'ПЦШ -051'),
(84, '84', 'ПЦН-027', '', '', 'ПЦН-027', 'ПЦН-027, ', 'ПЦН-027'),
(85, '85', 'ПЦШ-054 Рельеф', '', '', 'ПЦШ-054 Рельеф', 'ПЦШ-054, Рельеф, ', 'ПЦШ-054 Рельеф'),
(86, '86', 'ПЦШ-055 Барашек', '', '', 'ПЦШ-055 Барашек', 'ПЦШ-055, Барашек, ', 'ПЦШ-055 Барашек'),
(87, '87', 'ПЦШ-056 Короед', '', '', 'ПЦШ-056 Короед', 'ПЦШ-056, Короед, ', 'ПЦШ-056 Короед'),
(88, '88', 'ПСП 031', '', '', 'ПСП 031', 'ПСП, 031, ', 'ПСП 031'),
(89, '89', 'ПСП 032', '', '', 'ПСП 032', 'ПСП, 032, ', 'ПСП 032'),
(90, '90', 'ПСП 033', '', '', 'ПСП 033', 'ПСП, 033, ', 'ПСП 033'),
(91, '91', 'ПСП 052', '', '', 'ПСП 052', 'ПСП, 052, ', 'ПСП 052'),
(92, '92', 'ПСП 030', '', '', 'ПСП 030', 'ПСП, 030, ', 'ПСП 030'),
(93, '93', 'ПСВ 015', '', '', 'ПСВ 015', 'ПСВ, 015, ', 'ПСВ 015'),
(94, '94', 'ПСВ 016', '', '', 'ПСВ 016', 'ПСВ, 016, ', 'ПСВ 016'),
(95, '95', 'ПСВ 017', '', '', 'ПСВ 017', 'ПСВ, 017, ', 'ПСВ 017'),
(96, '96', 'ПСВ 400', '', '', 'ПСВ 400', 'ПСВ, 400, ', 'ПСВ 400'),
(97, '97', 'ПСВ 407', '', '', 'ПСВ 407', 'ПСВ, 407, ', 'ПСВ 407'),
(98, '98', 'ПГС114', '', '', 'ПГС114', 'ПГС114, ', 'ПГС114'),
(99, '99', 'ПГС115', '', '', 'ПГС115', 'ПГС115, ', 'ПГС115'),
(100, '100', 'ПГС116', '', '', 'ПГС116', 'ПГС116, ', 'ПГС116'),
(101, '101', 'ПГС117', '', '', 'ПГС117', 'ПГС117, ', 'ПГС117'),
(102, '102', 'ПГС122', '', '', 'ПГС122', 'ПГС122, ', 'ПГС122'),
(103, '103', 'По 105', '', '', 'По 105', 'По, 105, ', 'По 105'),
(104, '104', 'Пс-112', '', '', 'Пс-112', 'Пс-112, ', 'Пс-112'),
(105, '105', 'ПСС-110', '', '', 'ПСС-110', 'ПСС-110, ', 'ПСС-110'),
(106, '106', 'ПЛ-125', '', '', 'ПЛ-125', 'ПЛ-125, ', 'ПЛ-125'),
(107, '107', 'ПЛ-127', '', '', 'ПЛ-127', 'ПЛ-127, ', 'ПЛ-127'),
(108, '108', 'пгс 131', '', '', 'пгс 131', 'пгс, 131, ', 'пгс 131'),
(109, '109', 'ПМР 141', '', '', 'ПМР 141', 'ПМР, 141, ', 'ПМР 141');

-- --------------------------------------------------------

--
-- Структура таблицы `shop_tag_ua`
--

CREATE TABLE `shop_tag_ua` (
  `lid` int(11) NOT NULL,
  `pid` varchar(11) NOT NULL,
  `caption` varchar(255) NOT NULL,
  `desc_short` varchar(555) NOT NULL,
  `desc_full` text NOT NULL,
  `meta_t` varchar(255) NOT NULL,
  `meta_k` text NOT NULL,
  `meta_d` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `shop_tag_ua`
--

INSERT INTO `shop_tag_ua` (`lid`, `pid`, `caption`, `desc_short`, `desc_full`, `meta_t`, `meta_k`, `meta_d`) VALUES
(1, '1', '', '', '', '', '', ''),
(2, '2', '', '', '', '', '', ''),
(3, '3', '', '', '', '', '', ''),
(4, '4', '', '', '', '', '', ''),
(5, '5', '', '', '', '', '', ''),
(6, '6', '', '', '', '', '', ''),
(7, '7', '', '', '', '', '', ''),
(8, '8', '', '', '', '', '', ''),
(9, '9', '', '', '', '', '', ''),
(10, '10', '', '', '', '', '', ''),
(11, '11', '', '', '', '', '', ''),
(12, '12', '', '', '', '', '', ''),
(13, '13', '', '', '', '', '', ''),
(14, '14', '', '', '', '', '', ''),
(15, '15', '', '', '', '', '', ''),
(16, '16', '', '', '', '', '', ''),
(17, '17', '', '', '', '', '', ''),
(18, '18', '', '', '', '', '', ''),
(19, '19', '', '', '', '', '', ''),
(20, '20', '', '', '', '', '', ''),
(21, '21', '', '', '', '', '', ''),
(22, '22', '', '', '', '', '', ''),
(23, '23', '', '', '', '', '', ''),
(24, '24', '', '', '', '', '', ''),
(25, '25', '', '', '', '', '', ''),
(26, '26', '', '', '', '', '', ''),
(27, '27', '', '', '', '', '', ''),
(28, '28', '', '', '', '', '', ''),
(29, '29', '', '', '', '', '', ''),
(30, '30', '', '', '', '', '', ''),
(31, '31', '', '', '', '', '', ''),
(32, '32', '', '', '', '', '', ''),
(33, '33', '', '', '', '', '', ''),
(34, '34', '', '', '', '', '', ''),
(35, '35', '', '', '', '', '', ''),
(36, '36', '', '', '', '', '', ''),
(37, '37', '', '', '', '', '', ''),
(38, '38', '', '', '', '', '', ''),
(39, '39', '', '', '', '', '', ''),
(40, '40', '', '', '', '', '', ''),
(41, '41', '', '', '', '', '', ''),
(42, '42', '', '', '', '', '', ''),
(43, '43', '', '', '', '', '', ''),
(44, '44', '', '', '', '', '', ''),
(45, '45', '', '', '', '', '', ''),
(46, '46', '', '', '', '', '', ''),
(47, '47', '', '', '', '', '', ''),
(48, '48', '', '', '', '', '', ''),
(49, '49', '', '', '', '', '', ''),
(50, '50', '', '', '', '', '', ''),
(51, '51', '', '', '', '', '', ''),
(52, '52', '', '', '', '', '', ''),
(53, '53', '', '', '', '', '', ''),
(54, '54', '', '', '', '', '', ''),
(55, '55', '', '', '', '', '', ''),
(56, '56', '', '', '', '', '', ''),
(57, '57', '', '', '', '', '', ''),
(58, '58', '', '', '', '', '', ''),
(59, '59', '', '', '', '', '', ''),
(60, '60', '', '', '', '', '', ''),
(61, '61', '', '', '', '', '', ''),
(62, '62', '', '', '', '', '', ''),
(63, '63', '', '', '', '', '', ''),
(64, '64', '', '', '', '', '', ''),
(65, '65', '', '', '', '', '', ''),
(66, '66', '', '', '', '', '', ''),
(67, '67', '', '', '', '', '', ''),
(68, '68', '', '', '', '', '', ''),
(69, '69', '', '', '', '', '', ''),
(70, '70', '', '', '', '', '', ''),
(71, '71', '', '', '', '', '', ''),
(72, '72', '', '', '', '', '', ''),
(73, '73', '', '', '', '', '', ''),
(74, '74', '', '', '', '', '', ''),
(75, '75', '', '', '', '', '', ''),
(76, '76', '', '', '', '', '', ''),
(77, '77', '', '', '', '', '', ''),
(78, '78', '', '', '', '', '', ''),
(79, '79', '', '', '', '', '', ''),
(80, '80', '', '', '', '', '', ''),
(81, '81', '', '', '', '', '', ''),
(82, '82', '', '', '', '', '', ''),
(83, '83', '', '', '', '', '', ''),
(84, '84', '', '', '', '', '', ''),
(85, '85', '', '', '', '', '', ''),
(86, '86', '', '', '', '', '', ''),
(87, '87', '', '', '', '', '', ''),
(88, '88', '', '', '', '', '', ''),
(89, '89', '', '', '', '', '', ''),
(90, '90', '', '', '', '', '', ''),
(91, '91', '', '', '', '', '', ''),
(92, '92', '', '', '', '', '', ''),
(93, '93', '', '', '', '', '', ''),
(94, '94', '', '', '', '', '', ''),
(95, '95', '', '', '', '', '', ''),
(96, '96', '', '', '', '', '', ''),
(97, '97', '', '', '', '', '', ''),
(98, '98', '', '', '', '', '', ''),
(99, '99', '', '', '', '', '', ''),
(100, '100', '', '', '', '', '', ''),
(101, '101', '', '', '', '', '', ''),
(102, '102', '', '', '', '', '', ''),
(103, '103', '', '', '', '', '', ''),
(104, '104', '', '', '', '', '', ''),
(105, '105', '', '', '', '', '', ''),
(106, '106', '', '', '', '', '', ''),
(107, '107', '', '', '', '', '', ''),
(108, '108', '', '', '', '', '', ''),
(109, '109', '', '', '', '', '', '');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `shop_item`
--
ALTER TABLE `shop_item`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `shop_item_en`
--
ALTER TABLE `shop_item_en`
  ADD PRIMARY KEY (`lid`);

--
-- Индексы таблицы `shop_item_ru`
--
ALTER TABLE `shop_item_ru`
  ADD PRIMARY KEY (`lid`);

--
-- Индексы таблицы `shop_item_ua`
--
ALTER TABLE `shop_item_ua`
  ADD PRIMARY KEY (`lid`);

--
-- Индексы таблицы `shop_tag`
--
ALTER TABLE `shop_tag`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `shop_tag_en`
--
ALTER TABLE `shop_tag_en`
  ADD PRIMARY KEY (`lid`);

--
-- Индексы таблицы `shop_tag_ru`
--
ALTER TABLE `shop_tag_ru`
  ADD PRIMARY KEY (`lid`);

--
-- Индексы таблицы `shop_tag_ua`
--
ALTER TABLE `shop_tag_ua`
  ADD PRIMARY KEY (`lid`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `shop_item`
--
ALTER TABLE `shop_item`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `shop_item_en`
--
ALTER TABLE `shop_item_en`
  MODIFY `lid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `shop_item_ru`
--
ALTER TABLE `shop_item_ru`
  MODIFY `lid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `shop_item_ua`
--
ALTER TABLE `shop_item_ua`
  MODIFY `lid` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `shop_tag`
--
ALTER TABLE `shop_tag`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=110;
--
-- AUTO_INCREMENT для таблицы `shop_tag_en`
--
ALTER TABLE `shop_tag_en`
  MODIFY `lid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=110;
--
-- AUTO_INCREMENT для таблицы `shop_tag_ru`
--
ALTER TABLE `shop_tag_ru`
  MODIFY `lid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=110;
--
-- AUTO_INCREMENT для таблицы `shop_tag_ua`
--
ALTER TABLE `shop_tag_ua`
  MODIFY `lid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=110;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;