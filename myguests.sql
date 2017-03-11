-- phpMyAdmin SQL Dump
-- version phpStudy 2014
-- http://www.phpmyadmin.net
--
-- 主机: localhost
-- 生成日期: 2017 年 02 月 24 日 17:54
-- 服务器版本: 5.5.38
-- PHP 版本: 5.3.29

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- 数据库: `mydb`
--

-- --------------------------------------------------------

--
-- 表的结构 `myguests`
--

CREATE TABLE IF NOT EXISTS `myguests` (
  `id` int(6) unsigned NOT NULL AUTO_INCREMENT,
  `firstname` varchar(30) NOT NULL,
  `lastname` varchar(30) NOT NULL,
  `email` varchar(65533) DEFAULT NULL,
  `reg_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=gbk AUTO_INCREMENT=55 ;

--
-- 转存表中的数据 `myguests`
--


INSERT INTO `myguests` (`id`, `firstname`, `lastname`, `email`, `reg_date`) VALUES
(1, 'Julie9', 'Dooley', 'http://yl.sofedu.com/Public/images/images/p_000.jpg', '2017-02-24 02:00:34'),
(2, 'Muzlo8', 'Loo', 'http://yl.sofedu.com/Public/images/images/p_001.jpg', '2017-02-24 02:00:34'),
(3, 'Leblan7', 'Jodan', 'http://yl.sofedu.com/Public/images/images/p_002.jpg', '2017-02-24 02:00:34'),
(4, 'Andy6', 'Devis', 'http://yl.sofedu.com/Public/images/images/p_003.jpg', '2017-02-24 02:00:34'),
(5, 'John1', 'Doe', 'http://yl.sofedu.com/Public/images/images/p_004.jpg', '2017-02-24 02:00:34'),
(6, 'Mary2', 'Moe', 'http://yl.sofedu.com/Public/images/images/p_005.jpg', '2017-02-24 02:00:34'),
(7, 'XXOO3', 'Ased', 'http://yl.sofedu.com/Public/images/images/p_006.jpg', '2017-02-24 02:00:34'),
(8, 'Verky4', 'Door', 'http://yl.sofedu.com/Public/images/images/p_007.jpg', '2017-02-24 02:00:34'),
(9, 'Java5', 'Plue', 'http://yl.sofedu.com/Public/images/images/p_008.jpg', '2017-02-24 02:00:34'),
(10, 'Julie9', 'Dooley', 'http://yl.sofedu.com/Public/images/images/p_009.jpg', '2017-02-24 02:00:34'),
(11, 'Muzlo8', 'Loo', 'http://yl.sofedu.com/Public/images/images/p_010.jpg', '2017-02-24 02:00:34'),
(12, 'Leblan7', 'Jodan', 'http://yl.sofedu.com/Public/images/images/p_011.jpg', '2017-02-24 02:00:34'),
(13, 'Andy6', 'Devis', 'http://yl.sofedu.com/Public/images/images/p_012.jpg', '2017-02-24 02:00:34'),
(14, 'John1', 'Doe', 'http://yl.sofedu.com/Public/images/images/p_013.jpg', '2017-02-24 02:00:34'),
(15, 'Mary2', 'Moe', 'http://yl.sofedu.com/Public/images/images/p_014.jpg', '2017-02-24 02:00:34'),
(16, 'XXOO3', 'Ased', 'http://yl.sofedu.com/Public/images/images/p_015.jpg', '2017-02-24 02:00:34'),
(17, 'Verky4', 'Door', 'http://yl.sofedu.com/Public/images/images/p_016.jpg', '2017-02-24 02:00:34'),
(18, 'Java5', 'Plue', 'http://yl.sofedu.com/Public/images/images/p_017.jpg', '2017-02-24 02:00:34'),
(19, 'Java5', 'Plue', 'http://yl.sofedu.com/Public/images/images/p_018.jpg', '2017-02-24 02:00:34'),
(20, 'Java5', 'Plue', 'http://yl.sofedu.com/Public/images/images/p_019.jpg', '2017-02-24 02:00:34');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
