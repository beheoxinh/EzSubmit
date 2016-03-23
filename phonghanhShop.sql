-- phpMyAdmin SQL Dump
-- http://www.phpmyadmin.net
-- Author ClaudeRoyal_PC
-- Host: localhost
-- Generation Time: NOV 23, 2015 at 07:18 AM

create database phonghanhShop
use phonghanhShop
 
SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

DROP TABLE IF EXISTS `tbl_config`;
CREATE TABLE IF NOT EXISTS `tbl_config` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `detail` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `last_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;


INSERT INTO `tbl_config` (`id`, `code`, `name`, `detail`, `date_added`, `last_modified`) VALUES
(1, 'total_visits', 'Tên truy cập', '0', '0000-00-00 00:00:00', '2008-12-09 11:55:18'),
(2, 'currencyUnit', 'Đơn vị tiền tệ', 'VNĐ', '0000-00-00 00:00:00', '2012-05-12 12:41:10'),
(3, 'adminEmail', 'Email', 'be.con.hay.khoc@gmail.com', '0000-00-00 00:00:00', '2012-05-12 12:41:27');


DROP TABLE IF EXISTS `tbl_content`;
CREATE TABLE IF NOT EXISTS `tbl_content` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(225) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `parent` int(11) NOT NULL DEFAULT '0',
  `subject` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `detail_short` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `detail` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `image` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `image_large` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `sort` int(11) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `last_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `lang` varchar(5) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `new` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=193 ;


DROP TABLE IF EXISTS `tbl_content_category`;
CREATE TABLE IF NOT EXISTS `tbl_content_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(225) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `parent` int(11) NOT NULL DEFAULT '0',
  `subject` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `detail_short` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `detail` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `image` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `image_large` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `sort` int(11) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `last_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `lang` varchar(5) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=78 ;


INSERT INTO `tbl_content_category` (`id`, `code`, `name`, `parent`, `subject`, `detail_short`, `detail`, `image`, `image_large`, `sort`, `status`, `date_added`, `last_modified`, `lang`) VALUES
(1, '', 'Danh mục gốc', 0, '', '', '', NULL, NULL, 0, 0, '0000-00-00 00:00:00', '2009-11-19 09:04:12', ''),
(8, 'vn_news', 'Tin tức & Sự kiện', 2, '', '', '', NULL, NULL, 0, 0, '2009-11-19 09:04:12', '2009-11-19 09:04:12', 'vn'),
(9, 'vn_service', 'Dịch vụ', 2, '', '', '', NULL, NULL, 0, 0, '2009-11-19 09:04:12', '2009-11-19 09:04:12', 'vn'),
(10, 'vn_link', 'Liên kết website', 2, '', '', '', NULL, NULL, 0, 0, '2009-11-19 09:04:12', '2009-11-19 09:04:12', 'vn'),
(11, 'vn_yahoo', 'Hỗ trợ trực tuyến(yahoo)', 2, '', '', '', NULL, NULL, 0, 0, '2009-11-19 09:04:12', '2009-11-19 09:04:12', 'vn'),
(3, 'en', 'English', 1, '', '', '', NULL, NULL, 0, 0, '2009-11-19 09:04:12', '2009-11-19 09:04:12', 'en'),
(2, 'vn', 'Việt nam', 1, '', '', '', NULL, NULL, 0, 0, '2009-11-19 09:04:12', '2009-11-19 09:04:12', 'vn'),
(75, 'vn_logo', 'Logo Quảng cáo', 2, NULL, NULL, NULL, NULL, NULL, 0, 0, '2009-11-19 09:04:12', '2009-11-19 09:04:12', 'vn'),
(76, 'vn_advleft_bottom', 'Quảng cáo trái dưới', 2, NULL, NULL, NULL, NULL, NULL, 0, 0, '2009-11-19 09:04:12', '2009-11-19 09:04:12', 'vn'),
(24, 'vn_advleft_top', 'Quảng cáo trái trên', 2, '', '', '', NULL, NULL, 0, 0, '2009-11-19 09:04:12', '2009-11-19 09:04:12', 'vn'),
(25, 'vn_advright_top', 'Quảng cáo phải trên', 2, '', '', '', NULL, NULL, 0, 0, '2009-11-19 09:04:12', '2009-11-19 09:04:12', 'vn'),
(28, 'vn_intro', 'Giới thiệu', 2, '', '', '', NULL, NULL, 0, 0, '2009-11-19 09:04:12', '2009-11-19 09:04:12', 'vn'),
(30, 'vn_contact', 'Liên hệ', 2, '', '', '', NULL, NULL, 0, 0, '2009-11-19 09:04:12', '2009-11-19 09:04:12', 'vn'),
(74, 'vn_download', 'Tải bảng giá', 2, NULL, NULL, NULL, NULL, NULL, 0, 0, '2009-11-19 09:04:12', '2009-11-19 09:04:12', 'vn'),
(77, 'vn_advright_bottom', 'Quảng cáo phải dưới', 2, NULL, NULL, NULL, NULL, NULL, 0, 0, '2009-11-19 09:04:12', '2009-11-19 09:04:12', 'vn');



DROP TABLE IF EXISTS `tbl_member`;
CREATE TABLE IF NOT EXISTS `tbl_member` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `sex` int(3) DEFAULT NULL,
  `company` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `city` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `country` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `tel` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `fax` varchar(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `website` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `uid` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `pwd` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `status` int(11) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `last_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;


INSERT INTO `tbl_member` (`id`, `name`, `sex`, `company`, `address`, `city`, `country`, `tel`, `fax`, `email`, `website`, `uid`, `pwd`, `status`, `date_added`, `last_modified`) VALUES
(1, 'Thùy My', 0, 'FPT University', 'Hòa Lạc Campus', 'Hà Nội', 'Vietnam', '123456', '0240880763', 'be.con.hay.khoc@gmail.com', 'www.google.com', 'mattihi1mi', '123456', 0, '2015-10-20 20:51:45', '2015-10-20 23:55:15');



DROP TABLE IF EXISTS `tbl_order`;
CREATE TABLE IF NOT EXISTS `tbl_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `member_id` int(11) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `last_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=29 ;


INSERT INTO `tbl_order` (`id`, `code`, `member_id`, `date_added`, `last_modified`) VALUES
(28, '0', 10, '2009-06-22 15:12:03', '0000-00-00 00:00:00'),
(27, '0', 8, '2009-06-22 14:14:53', '0000-00-00 00:00:00');


DROP TABLE IF EXISTS `tbl_order_detail`;
CREATE TABLE IF NOT EXISTS `tbl_order_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL DEFAULT '0',
  `product_id` int(11) NOT NULL DEFAULT '0',
  `quantity` int(11) NOT NULL DEFAULT '0',
  `price` float DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=32 ;

DROP TABLE IF EXISTS `tbl_product`;
CREATE TABLE IF NOT EXISTS `tbl_product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(225) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `parent` int(11) NOT NULL DEFAULT '0',
  `subject` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `detail_short` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `detail` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `image` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `image_large` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `sort` int(11) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `last_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `lang` varchar(5) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `price` float DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=291 ;

DROP TABLE IF EXISTS `tbl_product_category`;
CREATE TABLE IF NOT EXISTS `tbl_product_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(225) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `parent` int(11) NOT NULL DEFAULT '0',
  `subject` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `detail_short` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `detail` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `image` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `image_large` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `sort` int(11) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `last_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `lang` varchar(5) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=174 ;


INSERT INTO `tbl_product_category` (`id`, `code`, `name`, `parent`, `subject`, `detail_short`, `detail`, `image`, `image_large`, `sort`, `status`, `date_added`, `last_modified`, `lang`) VALUES
(1, NULL, 'Danh mục gốc', 0, NULL, NULL, NULL, NULL, NULL, 0, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', NULL),
(2, 'vn', 'Việt nam', 1, '', '', '', NULL, NULL, 0, 0, '2008-03-24 08:36:30', '2008-03-27 10:29:34', 'vn'),
(77, '', 'Sản phẩm ', 2, '', '', '', NULL, NULL, 1, 0, '2008-12-17 08:43:26', '2009-10-13 11:44:49', 'vn'),
(163, '', 'VGA - Card màn hình', 77, '', '', '', NULL, NULL, 1, 0, '2012-05-14 12:29:56', '2012-05-14 12:29:56', 'vn'),
(164, '', 'CPU - Chip xử lý', 77, '', '', '', NULL, NULL, 2, 0, '2012-05-14 12:30:29', '2012-05-14 12:30:29', 'vn'),
(165, '', 'Main - Bo Mạch Chủ', 77, '', '', '', NULL, NULL, 3, 0, '2012-05-14 12:30:57', '2012-05-14 12:30:57', 'vn'),
(166, '', 'PSU - Nguồn cấp điện', 77, '', '', '', NULL, NULL, 4, 0, '2012-05-14 12:31:09', '2012-05-14 12:31:09', 'vn'),
(167, '', 'Monitor - Màn hình', 77, '', '', '', NULL, NULL, 5, 0, '2012-05-14 12:31:38', '2012-05-14 12:31:38', 'vn'),
(168, '', 'PC Cases - Vỏ máy', 77, '', '', '', NULL, NULL, 6, 0, '2012-05-14 12:32:12', '2012-05-14 12:32:12', 'vn'),
(169, '', 'Radiators - Tản nhiệt', 77, '', '', '', NULL, NULL, 7, 0, '2012-05-14 12:32:26', '2012-05-14 12:32:26', 'vn'),
(170, '', 'Đồ chơi linh tinh', 77, '', '', '', NULL, NULL, 8, 0, '2012-05-14 12:33:05', '2012-05-14 12:33:05', 'vn');


DROP TABLE IF EXISTS `tbl_product_new`;
CREATE TABLE IF NOT EXISTS `tbl_product_new` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL DEFAULT '0',
  `sort` int(11) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `last_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `lang` varchar(5) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=83 ;

DROP TABLE IF EXISTS `tbl_product_special`;
CREATE TABLE IF NOT EXISTS `tbl_product_special` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL DEFAULT '0',
  `sort` int(11) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `last_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `lang` varchar(5) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=66 ;


DROP TABLE IF EXISTS `tbl_user`;
CREATE TABLE IF NOT EXISTS `tbl_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `pwd` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;


INSERT INTO `tbl_user` (`id`, `uid`, `pwd`) VALUES (1, 'beheoxinh', '202cb962ac59075b964b07152d234b70');
DELETE FROM `tbl_user`where uid='admin';

DROP TABLE IF EXISTS `tbl_visitor`;
CREATE TABLE IF NOT EXISTS `tbl_visitor` (
  `session_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `activity` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `member` enum('y','n') CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT 'n',
  `ip_address` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `url` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `user_agent` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`session_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

