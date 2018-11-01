-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 2018 年 11 朁E01 日 23:20
-- サーバのバージョン： 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `gs_db`
--

-- --------------------------------------------------------

--
-- テーブルの構造 `gs_an_table`
--

CREATE TABLE IF NOT EXISTS `gs_an_table` (
`id` int(12) NOT NULL,
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(256) COLLATE utf8_unicode_ci NOT NULL,
  `contents` text COLLATE utf8_unicode_ci,
  `indate` datetime NOT NULL,
  `age` int(2) NOT NULL,
  `upfile` varchar(128) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- テーブルのデータのダンプ `gs_an_table`
--

INSERT INTO `gs_an_table` (`id`, `name`, `email`, `contents`, `indate`, `age`, `upfile`) VALUES
(20, '川島　遼子', 'ry.sep27@gmail.com', 'uu', '2018-11-01 22:47:47', 0, 'upload/20181101224747d41d8cd98f00b204e9800998ecf8427e.png'),
(21, 'jj', 'jj', 'jj', '2018-11-01 22:48:05', 0, 'upload/20181101224805d41d8cd98f00b204e9800998ecf8427e.png'),
(22, '川島　遼子', 'ry.sep27@gmail.com', '5t', '2018-11-01 23:02:58', 0, 'upload/20181101230258d41d8cd98f00b204e9800998ecf8427e.png'),
(23, '川島　遼子', 'ry.sep27@gmail.com', 'tt', '2018-11-01 23:15:34', 0, 'upload/20181101231534d41d8cd98f00b204e9800998ecf8427e.png'),
(25, 'ss', 's', 'ss', '2018-11-01 23:16:32', 0, 'upload/20181101231632d41d8cd98f00b204e9800998ecf8427e.png'),
(26, 'bb', 'bb', 'bb', '2018-11-01 23:16:56', 0, 'upload/20181101231656d41d8cd98f00b204e9800998ecf8427e.png'),
(27, 'qq', 'qq', 'qq', '2018-11-01 23:17:26', 0, 'upload/20181101231726d41d8cd98f00b204e9800998ecf8427e.png'),
(28, 'hh', 'hh', 'hh', '2018-11-01 23:17:46', 0, 'upload/20181101231746d41d8cd98f00b204e9800998ecf8427e.png');

-- --------------------------------------------------------

--
-- テーブルの構造 `gs_bm_table`
--

CREATE TABLE IF NOT EXISTS `gs_bm_table` (
`id` int(12) NOT NULL,
  `tit` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `url` text COLLATE utf8_unicode_ci,
  `comment` text COLLATE utf8_unicode_ci,
  `datetime` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- テーブルのデータのダンプ `gs_bm_table`
--

INSERT INTO `gs_bm_table` (`id`, `tit`, `url`, `comment`, `datetime`) VALUES
(2, '重力ピエロ', 'https://www.amazon.co.jp/重力ピエロ', 'ddd', '2018-09-22 22:57:02'),
(4, 'ラッシュライフ ', 'https://www.amazon.co.jp/ラッシュライフ ', 'ggg', '2018-09-22 22:59:25'),
(6, '魔王　', 'https://www.amazon.co.jp/魔王', '', '2018-09-24 15:20:25'),
(7, '星野の王子さま', 'https://www.amazon.co.jp/星野の王子さま', 'ｇｇ', '2018-10-03 23:06:42'),
(8, 'アヒルと鴨のコインロッカー', 'https://www.amazon.co.jp/アヒルと鴨のコインロッカー', 'ｇｇ', '2018-10-03 23:07:01'),
(10, 'ハリーポッター', 'https://www.amazon.co.jp/ハリーポッター', 'ｈｈ', '2018-10-03 23:07:47'),
(11, '魔王　', 'https://www.amazon.co.jp/魔王', 'gg', '2018-10-04 20:49:41'),
(12, '重力ピエロ', 'https://www.amazon.co.jp/重力ピエロ', 'gg', '2018-10-04 20:49:57'),
(13, 'アヒルと鴨のコインロッカー', 'https://www.amazon.co.jp/%E3%82%A2%E3%83%92%E3%83%AB%E3%81%A8%E9%B4%A8%E3%81%AE%E3%82%B3%E3%82%A4%E3%83%B3%E3%83%AD%E3%83%83%E3%82%AB%E3%83%BC-%E5%89%B5%E5%85%83%E6%8E%A8%E7%90%86%E6%96%87%E5%BA%AB-%E4%BC%8A%E5%9D%82-%E5%B9%B8%E5%A4%AA%E9%83%8E/dp/4488464017', 'fff', '2018-10-11 21:57:44');

-- --------------------------------------------------------

--
-- テーブルの構造 `gs_user_table`
--

CREATE TABLE IF NOT EXISTS `gs_user_table` (
`id` int(12) NOT NULL,
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `lid` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `lpw` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `kanri_flg` int(1) NOT NULL,
  `life_flg` int(1) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- テーブルのデータのダンプ `gs_user_table`
--

INSERT INTO `gs_user_table` (`id`, `name`, `lid`, `lpw`, `kanri_flg`, `life_flg`) VALUES
(1, 'TEST', 'test', 'test', 0, 0),
(2, 'sample', 'ｙｙ', 'ｈｈ', 0, 0),
(3, 'りょうこ', 'ｙｙ', 'ｈｈ', 1, 0),
(4, 'Ryoko Kawashima', 'ｙｙ', 'ｈｈ', 1, 0),
(5, 'sample', 'ｙｙ', 'ｈｈ', 0, 0),
(6, '管理者A', 'kanri1', 'kanri1', 1, 0),
(7, '一般B', 'ippan1', 'ippan1', 0, 0);

-- --------------------------------------------------------

--
-- テーブルの構造 `mental_test`
--

CREATE TABLE IF NOT EXISTS `mental_test` (
`id` int(12) NOT NULL,
  `q` int(1) NOT NULL,
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `sex` text COLLATE utf8_unicode_ci NOT NULL,
  `age` int(2) NOT NULL,
  `datetime` datetime NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=213 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- テーブルのデータのダンプ `mental_test`
--

INSERT INTO `mental_test` (`id`, `q`, `name`, `sex`, `age`, `datetime`) VALUES
(2, 9, 'りょうこ', '女性', 27, '2018-09-24 14:46:07'),
(14, 9, 'りょうこ', '女性', 27, '2018-09-24 16:10:33'),
(15, 5, '宮田', '男性', 30, '2018-09-24 16:48:41'),
(16, 1, 'ryouma', '男性', 30, '2018-09-24 16:49:40'),
(17, 2, '葛西', '男性', 30, '2018-09-24 16:50:57'),
(98, 7, 'w', '女性', 29, '2018-09-24 21:43:37'),
(100, 7, 'w', '女性', 29, '2018-09-24 21:48:08'),
(101, 7, 'w', '女性', 29, '2018-09-24 21:48:44'),
(102, 7, 'w', '女性', 29, '2018-09-24 21:49:46'),
(103, 7, 'w', '女性', 29, '2018-09-24 21:50:11'),
(104, 3, 'sample', '男性', 37, '2018-09-24 21:50:43'),
(105, 4, 'sample', '女性', 40, '2018-09-24 21:51:00'),
(106, 5, 'sample', '女性', 37, '2018-09-24 21:51:15'),
(107, 6, 'sample', '男性', 38, '2018-09-24 21:51:36'),
(108, 8, 'sample', '男性', 50, '2018-09-24 21:52:13'),
(109, 8, 'sample', '男性', 44, '2018-09-24 21:52:48'),
(110, 9, 'sample', '女性', 37, '2018-09-24 21:53:00'),
(111, 9, 'sample', '女性', 37, '2018-09-24 21:53:41'),
(112, 9, 'sample', '女性', 37, '2018-09-24 21:54:00'),
(113, 3, 'sample', '女性', 20, '2018-09-24 21:54:22'),
(114, 3, 'sample', '女性', 20, '2018-09-24 21:54:49'),
(115, 2, 'sample', '男性', 29, '2018-09-24 21:58:22'),
(116, 2, 'sample', '男性', 29, '2018-09-24 22:02:16'),
(117, 2, 'sample', '男性', 29, '2018-09-24 22:02:38'),
(118, 2, 'sample', '男性', 29, '2018-09-24 22:28:16'),
(119, 2, 'sample', '男性', 29, '2018-09-24 22:34:52'),
(120, 2, 'sample', '男性', 29, '2018-09-24 22:36:18'),
(121, 2, 'sample', '男性', 29, '2018-09-24 22:36:30'),
(122, 1, 'sample', '男性', 38, '2018-09-24 22:37:07'),
(123, 1, 'sample', '男性', 38, '2018-09-24 22:37:34'),
(124, 1, 'sample', '男性', 38, '2018-09-24 22:39:04'),
(125, 1, 'sample', '男性', 38, '2018-09-24 22:39:30'),
(126, 1, 'sample', '男性', 38, '2018-09-24 22:39:50'),
(127, 4, 'sample', '男性', 22, '2018-09-24 22:40:12'),
(128, 4, 'sample', '男性', 22, '2018-09-24 22:42:27'),
(129, 4, 'sample', '男性', 22, '2018-09-24 22:43:07'),
(130, 4, 'sample', '男性', 22, '2018-09-24 22:44:59'),
(131, 4, 'sample', '男性', 22, '2018-09-24 22:46:51'),
(132, 5, 'sample', '男性', 32, '2018-09-24 22:47:08'),
(133, 5, 'sample', '男性', 32, '2018-09-24 23:01:06'),
(134, 5, 'sample', '男性', 32, '2018-09-24 23:04:12'),
(135, 6, 'sample', '男性', 55, '2018-09-24 23:04:38'),
(136, 6, 'sample', '男性', 55, '2018-09-24 23:12:19'),
(137, 6, 'sample', '男性', 55, '2018-09-24 23:14:38'),
(138, 6, 'sample', '男性', 55, '2018-09-24 23:17:20'),
(139, 6, 'sample', '男性', 55, '2018-09-24 23:17:48'),
(140, 2, 'sample', '女性', 32, '2018-09-24 23:18:28'),
(141, 2, 'sample', '女性', 32, '2018-09-24 23:20:00'),
(142, 2, 'sample', '女性', 32, '2018-09-24 23:24:14'),
(143, 2, 'sample', '女性', 32, '2018-09-24 23:24:40'),
(144, 2, 'sample', '女性', 32, '2018-09-24 23:24:50'),
(145, 2, 'sample', '女性', 32, '2018-09-24 23:26:33'),
(146, 2, 'sample', '女性', 32, '2018-09-24 23:27:43'),
(147, 2, 'sample', '女性', 32, '2018-09-24 23:29:08'),
(148, 2, 'sample', '女性', 32, '2018-09-24 23:29:40'),
(149, 2, 'sample', '女性', 32, '2018-09-24 23:29:48'),
(150, 2, 'sample', '女性', 32, '2018-09-24 23:31:43'),
(151, 8, 'sample', '女性', 29, '2018-09-25 00:13:28'),
(152, 8, 'sample', '男性', 31, '2018-09-25 00:14:08'),
(153, 6, 'sample', '男性', 28, '2018-09-25 00:14:46'),
(154, 3, 'sample', '女性', 28, '2018-09-25 00:16:04'),
(155, 5, 'sample', '女性', 29, '2018-09-25 00:21:50'),
(156, 5, 'sample', '女性', 29, '2018-09-25 00:25:05'),
(157, 5, 'sample', '女性', 29, '2018-09-25 00:25:25'),
(158, 5, 'sample', '女性', 29, '2018-09-25 00:25:49'),
(159, 5, 'sample', '女性', 29, '2018-09-25 00:25:57'),
(160, 5, 'sample', '女性', 29, '2018-09-25 00:26:08'),
(161, 5, 'sample', '女性', 29, '2018-09-25 00:26:32'),
(162, 5, 'sample', '女性', 29, '2018-09-25 00:26:41'),
(163, 5, 'sample', '女性', 29, '2018-09-25 00:27:05'),
(164, 5, 'sample', '女性', 29, '2018-09-25 00:27:32'),
(165, 5, 'sample', '女性', 29, '2018-09-25 00:30:50'),
(166, 9, 'りょうこ', '女性', 27, '2018-09-25 00:33:43'),
(167, 5, 'りょうこ', '女性', 27, '2018-09-25 22:34:22'),
(168, 9, 'りょうこ', '女性', 27, '2018-09-26 00:44:00'),
(169, 8, 'りょうこ', '女性', 27, '2018-09-26 01:35:23'),
(170, 5, '宮田', '男性', 27, '2018-09-26 01:38:43'),
(171, 4, 'sample', '男性', 32, '2018-09-26 01:43:12'),
(172, 5, 'sample', '女性', 27, '2018-09-26 19:40:57'),
(173, 5, 'sample', '女性', 27, '2018-09-26 19:46:47'),
(174, 5, 'sample', '女性', 27, '2018-09-26 20:05:09'),
(175, 3, 'sample', '女性', 27, '2018-09-26 20:47:57'),
(176, 3, 'sample', '女性', 27, '2018-09-26 21:44:28'),
(177, 3, 'sample', '女性', 27, '2018-09-26 21:45:04'),
(178, 3, 'sample', '女性', 27, '2018-09-26 21:47:16'),
(179, 3, 'sample', '女性', 27, '2018-09-26 21:47:51'),
(180, 3, 'sample', '女性', 27, '2018-09-26 21:48:16'),
(181, 3, 'sample', '女性', 27, '2018-09-26 21:49:12'),
(182, 3, 'sample', '女性', 27, '2018-09-26 22:02:18'),
(183, 3, 'sample', '女性', 27, '2018-09-26 22:02:32'),
(184, 3, 'sample', '女性', 27, '2018-09-26 22:02:33'),
(185, 3, 'sample', '女性', 27, '2018-09-26 22:02:34'),
(186, 3, 'sample', '女性', 27, '2018-09-26 22:03:12'),
(187, 3, 'sample', '女性', 27, '2018-09-26 22:03:14'),
(188, 3, 'sample', '女性', 27, '2018-09-26 22:03:15'),
(189, 3, 'sample', '女性', 27, '2018-09-26 22:06:09'),
(190, 8, 'sample', '男性', 27, '2018-09-26 22:06:27'),
(191, 8, 'sample', '男性', 27, '2018-09-26 22:17:52'),
(192, 8, 'sample', '男性', 27, '2018-09-26 22:22:51'),
(193, 8, 'sample', '男性', 27, '2018-09-26 22:23:06'),
(194, 8, 'sample', '男性', 27, '2018-09-26 22:25:59'),
(195, 8, 'sample', '男性', 27, '2018-09-26 22:29:05'),
(196, 8, 'sample', '男性', 27, '2018-09-26 22:32:23'),
(197, 7, 'sample', '女性', 27, '2018-09-26 22:34:50'),
(198, 8, 'sample', '女性', 27, '2018-09-26 22:37:21'),
(199, 7, 'sample', '女性', 27, '2018-09-26 22:40:01'),
(200, 7, 'sample', '女性', 27, '2018-09-26 22:43:02'),
(201, 7, 'sample', '女性', 27, '2018-09-26 23:02:11'),
(202, 7, 'sample', '女性', 27, '2018-09-26 23:06:20'),
(203, 7, 'sample', '女性', 27, '2018-09-26 23:54:12'),
(204, 7, 'sample', '女性', 27, '2018-09-26 23:54:39'),
(205, 7, 'sample', '女性', 27, '2018-09-26 23:54:46'),
(206, 5, 'りょうこ', '女性', 27, '2018-09-27 23:32:23'),
(207, 4, 'sample', '男性', 27, '2018-09-27 23:33:35'),
(208, 4, 'sample', '男性', 27, '2018-09-27 23:33:54'),
(209, 1, 'sample', '男性', 38, '2018-09-27 23:34:23'),
(210, 2, 'sample', '女性', 27, '2018-09-28 22:05:28'),
(211, 9, 'sample', '女性', 27, '2018-09-28 22:36:38'),
(212, 3, '松田光秀', '男性', 29, '2018-09-28 23:35:24');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `gs_an_table`
--
ALTER TABLE `gs_an_table`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gs_bm_table`
--
ALTER TABLE `gs_bm_table`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gs_user_table`
--
ALTER TABLE `gs_user_table`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mental_test`
--
ALTER TABLE `mental_test`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `gs_an_table`
--
ALTER TABLE `gs_an_table`
MODIFY `id` int(12) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT for table `gs_bm_table`
--
ALTER TABLE `gs_bm_table`
MODIFY `id` int(12) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `gs_user_table`
--
ALTER TABLE `gs_user_table`
MODIFY `id` int(12) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `mental_test`
--
ALTER TABLE `mental_test`
MODIFY `id` int(12) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=213;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
