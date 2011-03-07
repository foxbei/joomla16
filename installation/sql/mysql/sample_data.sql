-- phpMyAdmin SQL Dump
-- version 3.2.0.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jan 11, 2011 at 05:02 PM
-- Server version: 5.1.36
-- PHP Version: 5.2.11

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `yoo_joomla16_demo`
--

-- --------------------------------------------------------

--
-- Table structure for table `#__assets`
--

DROP TABLE IF EXISTS `#__assets`;
CREATE TABLE IF NOT EXISTS `#__assets` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `parent_id` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set parent.',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `level` int(10) unsigned NOT NULL COMMENT 'The cached level in the nested tree.',
  `name` varchar(50) NOT NULL COMMENT 'The unique name for the asset.\n',
  `title` varchar(100) NOT NULL COMMENT 'The descriptive title for the asset.',
  `rules` varchar(5120) NOT NULL COMMENT 'JSON encoded access control.',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_asset_name` (`name`),
  KEY `idx_lft_rgt` (`lft`,`rgt`),
  KEY `idx_parent_id` (`parent_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=45 ;

--
-- Dumping data for table `#__assets`
--

INSERT INTO `#__assets` (`id`, `parent_id`, `lft`, `rgt`, `level`, `name`, `title`, `rules`) VALUES
(1, 0, 1, 414, 0, 'root.1', 'Root Asset', '{"core.login.site":{"6":1,"2":1},"core.login.admin":{"6":1},"core.admin":{"8":1},"core.manage":{"7":1},"core.create":{"6":1,"3":1},"core.delete":{"6":1},"core.edit":{"6":1,"4":1},"core.edit.state":{"6":1,"5":1},"core.edit.own":{"6":1,"3":1}}'),
(2, 1, 1, 2, 1, 'com_admin', 'com_admin', '{}'),
(3, 1, 3, 6, 1, 'com_banners', 'com_banners', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(4, 1, 7, 8, 1, 'com_cache', 'com_cache', '{"core.admin":{"7":1},"core.manage":{"7":1}}'),
(5, 1, 9, 10, 1, 'com_checkin', 'com_checkin', '{"core.admin":{"7":1},"core.manage":{"7":1}}'),
(6, 1, 11, 12, 1, 'com_config', 'com_config', '{}'),
(7, 1, 13, 16, 1, 'com_contact', 'com_contact', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(8, 1, 17, 20, 1, 'com_content', 'com_content', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":[],"core.edit":{"4":1},"core.edit.state":{"5":1},"core.edit.own":[]}'),
(9, 1, 21, 22, 1, 'com_cpanel', 'com_cpanel', '{}'),
(10, 1, 23, 24, 1, 'com_installer', 'com_installer', '{"core.admin":{"7":1},"core.manage":{"7":1},"core.delete":[],"core.edit.state":[]}'),
(11, 1, 25, 26, 1, 'com_languages', 'com_languages', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(12, 1, 27, 28, 1, 'com_login', 'com_login', '{}'),
(13, 1, 29, 30, 1, 'com_mailto', 'com_mailto', '{}'),
(14, 1, 31, 32, 1, 'com_massmail', 'com_massmail', '{}'),
(15, 1, 33, 34, 1, 'com_media', 'com_media', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":{"5":1}}'),
(16, 1, 35, 36, 1, 'com_menus', 'com_menus', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(17, 1, 37, 38, 1, 'com_messages', 'com_messages', '{"core.admin":{"7":1},"core.manage":{"7":1}}'),
(18, 1, 39, 40, 1, 'com_modules', 'com_modules', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(19, 1, 41, 44, 1, 'com_newsfeeds', 'com_newsfeeds', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(20, 1, 45, 46, 1, 'com_plugins', 'com_plugins', '{"core.admin":{"7":1},"core.manage":[],"core.edit":[],"core.edit.state":[]}'),
(21, 1, 47, 48, 1, 'com_redirect', 'com_redirect', '{"core.admin":{"7":1},"core.manage":[]}'),
(22, 1, 49, 50, 1, 'com_search', 'com_search', '{"core.admin":{"7":1},"core.manage":{"6":1}}'),
(23, 1, 51, 52, 1, 'com_templates', 'com_templates', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(24, 1, 53, 54, 1, 'com_users', 'com_users', '{"core.admin":{"7":1},"core.manage":[],"core.create":[],"core.delete":[],"core.edit":[],"core.edit.own":{"6":1},"core.edit.state":[]}'),
(25, 1, 55, 58, 1, 'com_weblinks', 'com_weblinks', '{"core.admin":{"7":1},"core.manage":{"6":1},"core.create":{"3":1},"core.delete":[],"core.edit":{"4":1},"core.edit.state":{"5":1},"core.edit.own":[]}'),
(26, 1, 59, 60, 1, 'com_wrapper', 'com_wrapper', '{}'),
(27, 8, 18, 19, 2, 'com_content.category.2', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(28, 3, 4, 5, 2, 'com_banners.category.3', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(29, 7, 14, 15, 2, 'com_contact.category.4', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(30, 19, 42, 43, 2, 'com_newsfeeds.category.5', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(31, 25, 56, 57, 2, 'com_weblinks.category.6', 'Uncategorised', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(32, 33, 21, 22, 3, 'com_content.article.1', 'About Joomla!', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(33, 8, 20, 25, 2, 'com_content.category.7', 'Joomla!', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(34, 8, 26, 35, 2, 'com_content.category.8', 'YOOtheme', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(35, 33, 23, 24, 3, 'com_content.article.2', 'Joomla! Features', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(36, 34, 29, 30, 3, 'com_content.article.3', 'Template', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(37, 34, 33, 34, 3, 'com_content.article.4', 'ZOO', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(38, 34, 31, 32, 3, 'com_content.article.5', 'Ready for Joomla 1.6', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(39, 34, 27, 28, 3, 'com_content.article.6', 'Stock Icons', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(40, 8, 36, 45, 2, 'com_content.category.9', 'Blog', '{"core.create":[],"core.delete":[],"core.edit":[],"core.edit.state":[],"core.edit.own":[]}'),
(41, 40, 37, 38, 3, 'com_content.article.7', 'New Warp 5.5 framework', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(42, 40, 39, 40, 3, 'com_content.article.8', 'New Icon Set released', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(43, 40, 41, 42, 3, 'com_content.article.9', 'ZOO 2.1 final arrived', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}'),
(44, 40, 43, 44, 3, 'com_content.article.10', 'Free Social Icons Set', '{"core.delete":[],"core.edit":[],"core.edit.state":[]}');

-- --------------------------------------------------------

--
-- Table structure for table `#__banners`
--

DROP TABLE IF EXISTS `#__banners`;
CREATE TABLE IF NOT EXISTS `#__banners` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(11) NOT NULL DEFAULT '0',
  `type` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) NOT NULL DEFAULT '',
  `imptotal` int(11) NOT NULL DEFAULT '0',
  `impmade` int(11) NOT NULL DEFAULT '0',
  `clicks` int(11) NOT NULL DEFAULT '0',
  `clickurl` varchar(200) NOT NULL DEFAULT '',
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `description` text NOT NULL,
  `custombannercode` varchar(2048) NOT NULL,
  `sticky` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `params` text NOT NULL,
  `own_prefix` tinyint(1) NOT NULL DEFAULT '0',
  `metakey_prefix` varchar(255) NOT NULL DEFAULT '',
  `purchase_type` tinyint(4) NOT NULL DEFAULT '-1',
  `track_clicks` tinyint(4) NOT NULL DEFAULT '-1',
  `track_impressions` tinyint(4) NOT NULL DEFAULT '-1',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `reset` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `language` char(7) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `idx_state` (`state`),
  KEY `idx_own_prefix` (`own_prefix`),
  KEY `idx_metakey_prefix` (`metakey_prefix`),
  KEY `idx_banner_catid` (`catid`),
  KEY `idx_language` (`language`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `#__banners`
--


-- --------------------------------------------------------

--
-- Table structure for table `#__banner_clients`
--

DROP TABLE IF EXISTS `#__banner_clients`;
CREATE TABLE IF NOT EXISTS `#__banner_clients` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `contact` varchar(255) NOT NULL DEFAULT '',
  `email` varchar(255) NOT NULL DEFAULT '',
  `extrainfo` text NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `metakey` text NOT NULL,
  `own_prefix` tinyint(4) NOT NULL DEFAULT '0',
  `metakey_prefix` varchar(255) NOT NULL DEFAULT '',
  `purchase_type` tinyint(4) NOT NULL DEFAULT '-1',
  `track_clicks` tinyint(4) NOT NULL DEFAULT '-1',
  `track_impressions` tinyint(4) NOT NULL DEFAULT '-1',
  PRIMARY KEY (`id`),
  KEY `idx_own_prefix` (`own_prefix`),
  KEY `idx_metakey_prefix` (`metakey_prefix`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `#__banner_clients`
--


-- --------------------------------------------------------

--
-- Table structure for table `#__banner_tracks`
--

DROP TABLE IF EXISTS `#__banner_tracks`;
CREATE TABLE IF NOT EXISTS `#__banner_tracks` (
  `track_date` datetime NOT NULL,
  `track_type` int(10) unsigned NOT NULL,
  `banner_id` int(10) unsigned NOT NULL,
  `count` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`track_date`,`track_type`,`banner_id`),
  KEY `idx_track_date` (`track_date`),
  KEY `idx_track_type` (`track_type`),
  KEY `idx_banner_id` (`banner_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `#__banner_tracks`
--


-- --------------------------------------------------------

--
-- Table structure for table `#__categories`
--

DROP TABLE IF EXISTS `#__categories`;
CREATE TABLE IF NOT EXISTS `#__categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `lft` int(11) NOT NULL DEFAULT '0',
  `rgt` int(11) NOT NULL DEFAULT '0',
  `level` int(10) unsigned NOT NULL DEFAULT '0',
  `path` varchar(255) NOT NULL DEFAULT '',
  `extension` varchar(50) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  `description` varchar(5120) NOT NULL DEFAULT '',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `metadesc` varchar(1024) NOT NULL COMMENT 'The meta description for the page.',
  `metakey` varchar(1024) NOT NULL COMMENT 'The meta keywords for the page.',
  `metadata` varchar(2048) NOT NULL COMMENT 'JSON encoded metadata properties.',
  `created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `cat_idx` (`extension`,`published`,`access`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_path` (`path`),
  KEY `idx_left_right` (`lft`,`rgt`),
  KEY `idx_alias` (`alias`),
  KEY `idx_language` (`language`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `#__categories`
--

INSERT INTO `#__categories` (`id`, `asset_id`, `parent_id`, `lft`, `rgt`, `level`, `path`, `extension`, `title`, `alias`, `note`, `description`, `published`, `checked_out`, `checked_out_time`, `access`, `params`, `metadesc`, `metakey`, `metadata`, `created_user_id`, `created_time`, `modified_user_id`, `modified_time`, `hits`, `language`) VALUES
(1, 0, 0, 0, 17, 0, '', 'system', 'ROOT', 'root', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{}', '', '', '', 0, '2009-10-18 16:07:09', 0, '0000-00-00 00:00:00', 0, '*'),
(2, 27, 1, 1, 2, 1, 'uncategorised', 'com_content', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2010-06-28 13:26:37', 0, '0000-00-00 00:00:00', 0, '*'),
(3, 28, 1, 3, 4, 1, 'uncategorised', 'com_banners', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":"","foobar":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2010-06-28 13:27:35', 0, '0000-00-00 00:00:00', 0, '*'),
(4, 29, 1, 5, 6, 1, 'uncategorised', 'com_contact', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2010-06-28 13:27:57', 0, '0000-00-00 00:00:00', 0, '*'),
(5, 30, 1, 7, 8, 1, 'uncategorised', 'com_newsfeeds', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2010-06-28 13:28:15', 0, '0000-00-00 00:00:00', 0, '*'),
(6, 31, 1, 9, 10, 1, 'uncategorised', 'com_weblinks', 'Uncategorised', 'uncategorised', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"target":"","image":""}', '', '', '{"page_title":"","author":"","robots":""}', 42, '2010-06-28 13:28:33', 0, '0000-00-00 00:00:00', 0, '*'),
(7, 33, 1, 11, 12, 1, 'joomla', 'com_content', 'Joomla!', 'joomla', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 42, '2011-01-07 14:41:27', 42, '2011-01-07 14:43:06', 0, '*'),
(8, 34, 1, 13, 14, 1, 'yootheme', 'com_content', 'YOOtheme', 'yootheme', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 42, '2011-01-07 14:41:35', 0, '0000-00-00 00:00:00', 0, '*'),
(9, 40, 1, 15, 16, 1, 'blog', 'com_content', 'Blog', 'blog', '', '', 1, 0, '0000-00-00 00:00:00', 1, '{"category_layout":"","image":""}', '', '', '{"author":"","robots":""}', 42, '2011-01-07 16:20:01', 42, '2011-01-11 13:53:46', 0, '*');

-- --------------------------------------------------------

--
-- Table structure for table `#__contact_details`
--

DROP TABLE IF EXISTS `#__contact_details`;
CREATE TABLE IF NOT EXISTS `#__contact_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) NOT NULL DEFAULT '',
  `con_position` varchar(255) DEFAULT NULL,
  `address` text,
  `suburb` varchar(100) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `postcode` varchar(100) DEFAULT NULL,
  `telephone` varchar(255) DEFAULT NULL,
  `fax` varchar(255) DEFAULT NULL,
  `misc` mediumtext,
  `image` varchar(255) DEFAULT NULL,
  `imagepos` varchar(20) DEFAULT NULL,
  `email_to` varchar(255) DEFAULT NULL,
  `default_con` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `catid` int(11) NOT NULL DEFAULT '0',
  `access` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `mobile` varchar(255) NOT NULL DEFAULT '',
  `webpage` varchar(255) NOT NULL DEFAULT '',
  `sortname1` varchar(255) NOT NULL,
  `sortname2` varchar(255) NOT NULL,
  `sortname3` varchar(255) NOT NULL,
  `language` char(7) NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `metadata` text NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Set if article is featured.',
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`published`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_featured_catid` (`featured`,`catid`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `#__contact_details`
--


-- --------------------------------------------------------

--
-- Table structure for table `#__content`
--

DROP TABLE IF EXISTS `#__content`;
CREATE TABLE IF NOT EXISTS `#__content` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `title` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) NOT NULL DEFAULT '',
  `title_alias` varchar(255) NOT NULL DEFAULT '',
  `introtext` mediumtext NOT NULL,
  `fulltext` mediumtext NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `sectionid` int(10) unsigned NOT NULL DEFAULT '0',
  `mask` int(10) unsigned NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `images` text NOT NULL,
  `urls` text NOT NULL,
  `attribs` varchar(5120) NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `parentid` int(10) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `metadata` text NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Set if article is featured.',
  `language` char(7) NOT NULL COMMENT 'The language code for the article.',
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`state`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_featured_catid` (`featured`,`catid`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `#__content`
--

INSERT INTO `#__content` (`id`, `asset_id`, `title`, `alias`, `title_alias`, `introtext`, `fulltext`, `state`, `sectionid`, `mask`, `catid`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `images`, `urls`, `attribs`, `version`, `parentid`, `ordering`, `metakey`, `metadesc`, `access`, `hits`, `metadata`, `featured`, `language`, `xreference`) VALUES
(1, 32, 'About Joomla!', 'about-joomla', '', '<strong>Joomla! is a free open source framework and content publishing system designed for quickly creating highly interactive multi-language Web sites, online communities, media portals, blogs and eCommerce applications.</strong>\r\n\r\n<p>Joomla! provides an easy-to-use graphical user interface that simplifies the management and publishing of large volumes of content including HTML, documents, and rich media.  Joomla! is used by organisations of all sizes for Public Web sites, Intranets, and Extranets and is supported by a community of thousands of users.</p>\r\n', '\r\nWith a fully documented library of developer resources, Joomla! allows the customisation of every aspect of a Web site including presentation, layout, administration, and the rapid integration with third-party applications.\r\n\r\n<p>Joomla! has a rich heritage and has been crowned CMS king many times over.  Now with more power under the hood, Joomla! is shifting gear and provides developer power while making the user experience all the more friendly.  For those who always wanted increased extensibility, Joomla! 1.5 can make this happen.</p>\r\n\r\n<p>A new framework, ground-up refactoring, and a highly-active development team brings the excitement of ''the next generation CMS'' to your fingertips.  Whether you are a systems architect or a complete ''noob'' Joomla! can take you to the next level of content delivery. ''More than a CMS'' is something we have been playing with as a catchcry because the new Joomla! API has such incredible power and flexibility, you are free to take whatever direction your creative mind takes you and Joomla! can help you get there so much more easily than ever before.</p>\r\n\r\n<p>Thinking Web publishing? Think Joomla!</p>', 1, 0, 0, 7, '2011-01-07 14:41:04', 42, '', '2011-01-07 14:42:52', 42, 0, '0000-00-00 00:00:00', '2011-01-07 14:41:04', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":""}', 3, 0, 1, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(2, 35, 'Joomla! Features', 'joomla-features', '', '<h4>Joomla! features:</h4>\r\n<ul>\r\n	<li>Completely database driven site engines </li>\r\n	<li>News, products, or services sections fully editable and manageable</li>\r\n	<li>Topics sections can be added to by contributing Authors </li>\r\n	<li>Fully customisable layouts including <em>left</em>, <em>center</em>, and <em>right </em>Menu boxes </li>\r\n	<li>Browser upload of images to your own library for use anywhere in the site </li>\r\n	<li>Dynamic Forum/Poll/Voting booth for on-the-spot results </li>\r\n	<li>Runs on Linux, FreeBSD, MacOSX server, Solaris, and AIX</li>\r\n</ul>\r\n', '\r\n<h4>Extensive Administration:</h4>\r\n<ul>\r\n	<li>Change order of objects including news, FAQs, Articles etc. </li>\r\n	<li>Random Newsflash generator </li>\r\n	<li>Remote Author submission Module for News, Articles, FAQs, and Links </li>\r\n	<li>Object hierarchy - as many Sections, departments, divisions, and pages as you want </li>\r\n	<li>Image library - store all your PNGs, PDFs, DOCs, XLSs, GIFs, and JPEGs online for easy use </li>\r\n	<li>Automatic Path-Finder. Place a picture and let Joomla! fix the link </li>\r\n	<li>News Feed Manager. Choose from over 360 News Feeds from around the world </li>\r\n	<li>E-mail a friend and Print format available for every story and Article </li>\r\n	<li>In-line Text editor similar to any basic word processor software </li>\r\n	<li>User editable look and feel </li>\r\n	<li>Polls/Surveys - Now put a different one on each page </li>\r\n	<li>Custom Page Modules. Download custom page Modules to spice up your site </li>\r\n	<li>Template Manager. Download Templates and implement them in seconds </li>\r\n	<li>Layout preview. See how it looks before going live </li>\r\n	<li>Banner Manager. Make money out of your site</li>\r\n</ul>', 1, 0, 0, 7, '2011-01-07 14:42:43', 42, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2011-01-07 14:42:43', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":""}', 1, 0, 0, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(3, 36, 'Template', 'template', '', '<h2>Warp5 Framework</h2>\r\n<p>This template is based on the Warp5 framework. Warp5 is a fast and powerful template framework for Joomla that lets you create sophisticated Joomla templates in no time. It provides a hybrid fluid-pixel grid and all the elaborate functionalities that make our templates easy to edit, nice to look at and super fast, in every browser. Visit the <a href="http://warp.yootheme.com" target="_blank">Warp5 website</a> and take a look at all <a href="http://warp.yootheme.com/features" target="_blank">the features...</a></p>\r\n\r\n<div class="floatbox">\r\n\r\n	<div class="float-left width50">\r\n		<div class="correct-png ie6-zoom" style="margin-right: 15px; padding-left: 60px; background: transparent url(images/yootheme/icon_menusystem.png) no-repeat scroll 0 0;">\r\n			<h3 style="padding-top: 5px; margin-top: 0px;">Menu System</h3>\r\n			<p>The menu system enhances Joomla''s menu functions to create clearly arranged interfaces even for comprehensive sites. <a href="http://warp.yootheme.com/menu-system" target="_blank">Learn more...</a></p>\r\n		</div>\r\n	</div>\r\n	\r\n	<div class="float-left width50">\r\n		<div class="correct-png ie6-zoom" style="padding-left: 60px; background: transparent url(images/yootheme/icon_modulesystem.png) no-repeat scroll 0 0;">\r\n			<h3 style="padding-top: 5px; margin-top: 0px;">Module System</h3>\r\n			<p>The module system provides a clear grid for Joomla modules and a wide diversity of templates for module variations. <a href="http://warp.yootheme.com/module-system" target="_blank">Learn more...</a></p>\r\n		</div>\r\n	</div>\r\n	\r\n</div>\r\n\r\n<hr class="dotted" />\r\n\r\n<h2>Design and Styles</h2>\r\n<p>We included a lot of different module and typography styles. So you can give your site a unique look and it will also ease your work when setting up your content.</p>\r\n\r\n<div class="floatbox">\r\n\r\n	<div class="float-left width50">\r\n		<div class="correct-png ie6-zoom" style="margin-right: 15px; padding-left: 60px; background: transparent url(images/yootheme/icon_modulevariations.png) no-repeat scroll 0 0;">\r\n			<h3 style="padding-top: 5px; margin-top: 0px;">Module Variations</h3>\r\n			<p>This template comes with a wide variety of module stylings in many different shapes and colours. Take a look at all the different <a href="index.php?option=com_content&view=article&id=48&Itemid=58">module variations.</a></p>\r\n		</div>\r\n	</div>\r\n	\r\n	<div class="float-left width50">\r\n		<div class="correct-png ie6-zoom" style="padding-left: 60px; background: transparent url(images/yootheme/icon_typography.png) no-repeat scroll 0 0;">\r\n			<h3 style="padding-top: 5px; margin-top: 0px;">Typography</h3>\r\n			<p>This templates delivers you sophisticated typography and various stylings. Take a look at the <a href="index.php?option=com_content&view=article&id=46&Itemid=55">style guide</a> about all possible HTML tag styles.</p>\r\n		</div>\r\n	</div>\r\n	\r\n</div>\r\n\r\n<hr class="dotted" />\r\n\r\n<h2>Installation and Customization</h2>\r\n<p>New to YOOtheme? Don''t worry! We provide a lot help to install and cutomize our tempaltes to get you started right away with your web project.</p>\r\n\r\n<div class="floatbox">\r\n\r\n	<div class="float-left width50">\r\n		<div class="correct-png ie6-zoom" style="margin-right: 15px; padding-left: 60px; background: transparent url(images/yootheme/icon_installation.png) no-repeat scroll 0 0;">\r\n			<h3 style="padding-top: 5px; margin-top: 0px;">Installation Package</h3>\r\n			<p>We provide a full Joomla installation package with the demo content of the website for this template. So you can take a look at how everything is set up in the Joomla backend.</p>\r\n			<div class="info">Make sure you click "Install Sample Data" during the installation process.</div>\r\n		</div>\r\n	</div>\r\n	\r\n	<div class="float-left width50">\r\n		<div class="correct-png ie6-zoom" style="padding-left: 60px; background: transparent url(images/yootheme/icon_fireworks.png) no-repeat scroll 0 0;">\r\n			<h3 style="padding-top: 5px; margin-top: 0px;">Sliced Image Source Files</h3>\r\n			<p>The editable fully sliced image source files of this template are available as download. With them you can completely customise your template''s look to match your or your client''s corporate identity.</p>\r\n			<div class="info">Adobe Fireworks CS4 is required to edit the image source files.</div>\r\n		</div>\r\n	</div>\r\n	\r\n</div>\r\n\r\n<hr class="dotted" />\r\n\r\n<h2>Compatibility and Help</h2>\r\n\r\n<p>This template is fully compatible with all YOOtheme products like the <a target="_blank" href="http://tools.yootheme.com/">YOOtools</a>, the <a target="_blank" href="http://zoo.yootheme.com/">ZOO</a> and the <a target="_blank" href="http://teamlog.yootheme.com/">Teamlog extension</a>. Learn more about how to install and set up a YOOtheme template and go to the <a href="http://warp.yootheme.com/documentation" target="_blank" title="How to install and set up a YOOtheme template">Warp5 documentation</a>.</p>', '', 1, 0, 0, 8, '2011-01-07 15:01:30', 42, '', '2011-01-11 12:50:16', 42, 0, '0000-00-00 00:00:00', '2011-01-07 15:01:30', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":""}', 11, 0, 3, '', '', 1, 49, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(4, 37, 'ZOO', 'zoo', '', '<p>\r\n<a rel="shadowbox;width=872;height=480" href="http://zoo.yootheme.com/images/stories/videos/zoo_20_video_tour.flv" style="float: right; display: block; margin-left: 10px;">\r\n<img height="105" width="250" alt="Take the video tour on the ZOO!" title="Take the video tour on the ZOO!" src="images/yootheme/zoo_video_tour.png" />\r\n</a>ZOO is a flexible and powerful content application builder to manage your content. It offers a lot of cool features like nested categories, content arrangement via drag ''n drop, a clean JavaScript powered user interface and a native comments and tagging system.\r\n</p>\r\n\r\n<p class="readmore"><a href="http://zoo.yootheme.com/" class="readmore" target="_blank">Read more...</a></p>\r\n\r\n<h2>Apps for every Purpose</h2>\r\n\r\n<p>Apps are little extension for ZOO 2.0 which are optimized for different types of content catalogs like blogs, business directories and many more. ZOO 2.0 already has some basic apps on board to create websites and blogs. We developed an comprehensive app bundle to cover all kinds of purposes! All of them work out of the box and get you started right away! We will develop new apps in the near future for ZOO! Our range of apps will constantly grow.</p>\r\n\r\n<p class="readmore"><a href="http://zoo.yootheme.com/app-bundle" class="readmore" target="_blank">Read more...</a></p>\r\n\r\n<h2>Content Builder</h2>\r\n\r\n<p>One of the ZOO''s key features is the ability to create your very own custom content types. For each type you create you can select the elements the type should consist of, like text, images or a file download. Any combination is imaginable! You can also add and remove elements from a custom type at any time, even if you already created items of that type. The elements are completely pluggable and can easily be added to your custom app.</p>\r\n\r\n<p class="readmore"><a href="http://zoo.yootheme.com/content-builder" class="readmore" target="_blank">Read more...</a></p>', '', 1, 0, 0, 8, '2011-01-07 15:02:07', 42, '', '2011-01-07 16:21:52', 42, 0, '0000-00-00 00:00:00', '2011-01-07 15:02:07', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":""}', 2, 0, 2, '', '', 1, 17, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(5, 38, 'Ready for Joomla 1.6', 'warp', '', '<p class="fluid-image"><img width="604" height="238" alt="New Warp 5.5 framework" title="New Warp 5.5 framework" src="images/yootheme/blog_warp55.jpg" /></p>\r\n\r\n<p>In 2010 we followed closely the development of the next major Joomla release: Joomla 1.6. After 15 betas and one <a href="http://www.joomla.org/announcements/release-news/5328-joomla-16-rc1-now-available.html">Release Candidate</a> the stable version <a href="http://www.joomla.org/announcements/general-news/5348-joomlar-16-has-arrived.html">Joomla 1.6.0</a> was released on the 11. January 2011. Joomla 1.6 introduces some anticipated features like better user access control management and nested categories for structuring your content. You can read on <a href="http://docs.joomla.org/What''s_new_in_Joomla_1.6">"What''s new in Joomla 1.6"</a> for a detailed list of all the changes and enhancements of Joomla 1.6. A lot of developers already started testing and evaluating Joomla 1.6 for their future website projects. Thats why we received a lot of tweets and emails from you guys, asking for Joomla 1.6 compatible templates. We hear you and this post is for everyone who is excited to run our templates with the new major version of the Joomla CMS!</p>\r\n\r\n<p>Lets go back a few weeks... Our mission started in December with the announcement of the Joomla 1.6 RC1 and we began to work on the next major update of our Warp theme framework. It was important to us to ensure that all great template features you are using right now, are also available in our Joomla 1.6 templates. This includes features of the Warp 5.5 framework like style presets, dropdown &amp; accordion menus, CSS/JS/Image compression and Javascript effects. Further we want to run all our templates native on version 1.6 and also support the new features that Joomla brings along. Today we are glad to announce that we have a new Warp framework version for you which is Joomla 1.6 ready! We also took the time port the latest Warp 5.5 templates, so can start right away and try them with Joomla 1.6. All in all we are excited to present you 19 templates for Joomla 1.6 starting with "Phoenix" our June 2009 template until our latest January 2011 template called "Spark". Now its your turn to try them out! Most work went in converting our overrides for Joomla 1.6 to make the core components HTML output look great with our templates. All component overrides are not final yet and we will update them in future template releases. Consider the template releases as beta and in case you experience any issues please let us know so we can fix them. Just get in touch by sending a <a href="http://twitter.com/yootheme">tweet</a>, <a href="mailto:support@yootheme.com">email</a> or leave comment. We will also keep our eyes on the next 1.6 releases and apply template updates if needed.</p>\r\n\r\n<p>Everyone who wants to try out our Joomla 1.6 templates today, just grab a copy of <a href="http://www.joomla.org" title="Joomla 1.6">Joomla 1.6</a> and head over to our <a href="http://www.yootheme.com/member-area/downloads" title="Template Downloads">downloads</a>. Enjoy!</p>', '', 1, 0, 0, 8, '2011-01-07 15:11:46', 42, '', '2011-01-11 15:46:00', 42, 0, '0000-00-00 00:00:00', '2011-01-07 15:11:46', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":""}', 10, 0, 1, '', '', 1, 86, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(6, 39, 'Stock Icons', 'stock-icons', '', '<p>YOOtheme is a well-known template and extension provider who helps you to create professional websites. But to make your website or interface design a real eye-catcher we got one thing missing: Icons! Icons are an essential tool to simplify user interfaces. We complete this with our beautiful and handcrafted icon sets for web and print projects. We got commercial icon sets and free stuff. Enjoy browsing through all the icons at <a href="http://icons.yootheme.com/" target="_blank">our new icons website</a>!</p>\r\n\r\n<h2>Icon Club</h2>\r\n\r\n<p>You are looking for some high quality, royalty free, vector stock icons? Join the YOOtheme icon club! You will get full access to all our commercial icon sets which are currently available. Additionally you will also get access to all upcoming icon releases during the term of your membership. You can use our royalty free stock icons for as many clients or websites you wish.</p>\r\n\r\n<div class="iconbox">\r\n	<img height="130" width="260" alt="Club Icon Sets" title="Club Icon Sets" src="images/yootheme/icons_club.png" style="float: left; margin-right: 15px;" />\r\n	<h3 style="margin-top: 0px;">Club Icon Sets</h3>\r\n	<p>All icon sets are available in the PNG file format and in 8 different standard sizes, ranging from 16x16 to 512x512 pixels. Each icon is handcrafted and optimized for each specific size. Vector PDF files of all icons are also available. They are compatible with Adobe Illustrator and can be rescaled to any size without a single loss to the details.</p>\r\n	<p class="readmore" style="margin-bottom: 0px;"><a href="http://icons.yootheme.com/index.php?option=com_content&amp;view=article&amp;id=5&amp;Itemid=16" class="readmore" target="_blank">Read more...</a></p>\r\n</div>\r\n\r\n<h2>Free Icon Sets</h2>\r\n\r\n<p>The free icon sets are also available in 32-bit transparency PNG and scaleable vector PDF format. They are designed to match with all our commercial icon sets.</p>\r\n\r\n<div class="iconbox">\r\n	<img height="130" width="260" alt="Social Bookmarks Icon Set" title="Social Bookmarks Icon Set" src="images/yootheme/icons_freebies.png" style="float: left; margin-right: 15px;" />\r\n	<h3 style="margin-top: 0px;">Social Bookmarks Icon Set</h3>\r\n	<p>This free icon set contains 47 high quality social network icons. They are perfect for displaying your social bookmarks on your website or to link to external profiles and services.</p>\r\n	<p class="readmore" style="margin-bottom: 0px;"><a href="http://icons.yootheme.com/index.php?option=com_content&amp;view=article&amp;id=6&amp;Itemid=17" class="readmore" target="_blank">Read more...</a></p>\r\n</div>', '', 1, 0, 0, 8, '2011-01-07 16:18:29', 42, '', '2011-01-07 16:20:56', 42, 0, '0000-00-00 00:00:00', '2011-01-07 16:18:29', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":""}', 2, 0, 0, '', '', 1, 12, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(7, 41, 'New Warp 5.5 framework', 'new-warp-55-framework', '', '<p class="fluid-image"><img width="604" height="238" alt="New Warp 5.5 framework" title="New Warp 5.5 framework" src="images/yootheme/blog_warp55.jpg" /></p>\r\n\r\n<p>Over the last couple of months we developed the new Warp 5.5 theme framework which is the new foundation of all our YOOtheme templates. In this time we have rewritten the complete Warp theme framework to make it more modular, flexible and also extendible. All templates from 2010 and 2009 are updated to run on the new framework. This means more than 20 templates are using Warp 5.5!</p>\r\n\r\n', '\r\n\r\n<p>Currently we are very focused on our Warp framework and a lot of development is going on. With Warp 5.5 we updated the whole php code base. Now Warp is a platform independent CMS theme framework. This improvements on the framework level were very important to add more features in the future. This means you can expect more Warp updates soon... In <a href="https://www.yootheme.com/blog/item/root/new-warp-55-framework" target="_blank">this article</a> we want to highlight some of the key features of our new Warp 5.5 theme framework. Enjoy!</p>', 1, 0, 0, 9, '2011-01-07 16:27:06', 42, '', '2011-01-11 14:06:47', 42, 0, '0000-00-00 00:00:00', '2011-01-07 16:27:06', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":""}', 2, 0, 3, '', '', 1, 1, '{"robots":"","author":"","rights":"","xreference":""}', 1, '*', ''),
(8, 42, 'New Icon Set released', 'new-icon-set-released', '', '<p class="fluid-image"><img width="604" height="238" alt="Beautiful and handcrafted icon sets for web and print projects" title="Beautiful and handcrafted icon sets for web and print projects" src="images/yootheme/blog_icons_boxes.jpg" /></p>\r\n\r\n<p>YOOtheme is a well-known template and extension provider who helps you to create professional websites. But to make your website or interface design a real eye-catcher we got one thing missing: Icons! Icons are an essential tool to simplify user interfaces. We complete this with our beautiful and handcrafted icon sets for web and print projects. We got commercial icon sets and free stuff. Enjoy browsing through all the icons on our new <a href="http://www.yootheme.com/icons" target="_blank">icon club website</a>!</p>\r\n\r\n', '\r\n\r\n<p>We are very happy to present you our new icon set release. The Boxes Icon Set! We put a lot of effort in this release and we are proud that it is the biggest club icon set in our portfolio now! It contains 34 high quality icons in 32-bit transparency PNG file format and in 8 different standard sizes, ranging from 16x16 to 512x512 pixels. This makes 272 extremely detailed icons which are handmade and optimized for each specific size. Of course vector PDF files are available so you can change the colors and customize the icons! </p>\r\n\r\n<p> Spice up your websites, catalogs or shops with our new boxes icon set. Our Premium members will also get all the vector PDF files for easy customization and resizing. Have a look at this set and <a href="http://www.yootheme.com/icons/icon-club" target="_blank">join our icon club today!</a></p>', 1, 0, 0, 9, '2011-01-07 16:27:48', 42, '', '2011-01-11 14:07:09', 42, 0, '0000-00-00 00:00:00', '2011-01-07 16:27:48', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":""}', 2, 0, 2, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 1, '*', ''),
(9, 43, 'ZOO 2.1 final arrived', 'zoo-21-final-arrived', '', '<p>The wait is over... We are really excited to announce that ZOO 2.1 is FINAL. We release the new version of ZOO 2.1 and as promised everybody can download ZOO for free. Since the BETA release we have made quite a few changes and fixed all known bugs. You can find more in information in the changelog file of the download package.</p>\r\n\r\n<p class="fluid-image" style="text-align: center;"><img width="604" height="283" alt="ZOO 2.1 final arrived" title="ZOO 2.1 final arrived" src="images/yootheme/blog_zoo20.png" /></p>\r\n\r\n', '\r\n\r\n<p>ZOO 2.1 come with two, free pre-installed apps: the pages and the blog app. Both are ready to use after the installation of the ZOO 2.1. All types, elements and layouts of the apps are predefined you can start using them right away. No configuring needed. Besides the ZOO component itself a item, tag and comment module as well as a search plugin are bundled in the download package. They allow a seamless integration into Joomla and provide a richer tool set to create your website. Go and <a target="_blank" href="http://zoo.yootheme.com">grab your own copy of ZOO 2.1</a> and take it for a spin.</p>', 1, 0, 0, 9, '2011-01-07 16:28:31', 42, '', '2011-01-11 14:06:59', 42, 0, '0000-00-00 00:00:00', '2011-01-07 16:28:31', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":""}', 2, 0, 1, '', '', 1, 0, '{"robots":"","author":"","rights":"","xreference":""}', 0, '*', ''),
(10, 44, 'Free Social Icons Set', 'free-social-icons-set', '', '<p class="fluid-image"><img width="604" height="238" alt="Free Social Icons Set" title="Free Social Icons Set" src="images/yootheme/blog_icons_socialbookmarks.jpg" /></p>\r\n\r\n<p>Today we want to bring you the complete <a target="_blank" href="http://icons.yootheme.com/freebies">social bookmarks icon set as freebie</a>, including all sizes and even the vector source files. Using social bookmarks icons on your website has never been prettier. Easily share and bookmark content and spread it all over the world! We provide our social bookmarks icons with a high brand recognition, looking straight-lined and equally fresh styled. Of course they are designed to match with all our <a href="http://icons.yootheme.com/icon-club">club icon sets</a>.</p>\r\n\r\n', '\r\n\r\n<p>This freebie features most popular web and social media icons, such as Facebook, Twitter, Flickr, Google and many others. For each of them we created different color and shape variations to give you a wider selection of matching icons for your website. The whole set contains 47 high quality icons in 32-bit transparency PNG file format and in 8 different standard sizes, ranging from 16x16 to 512x512 pixels. This makes 376 extremely detailed icons which are handmade and optimized for each specific size. The set also includes vector PDF files of all icons that are compatible with Adobe Illustrator and can be rescaled to any size without a single loss to the details.</p>\r\n\r\nSo <a href="http://www.yootheme.com/member-area/downloads/category/freebie-icons">download</a>, enjoy and and please feel free to <a target="_blank" href="http://twitter.com/">Twitter</a>, <a target="_blank" href="http://digg.com/">Digg</a> or <a target="_blank" href="mailto:?subject=Great free icons!">recommend </a> them. Are you missing your favorite social media icon? - Tell us and we''ll see what we can do about it!', 1, 0, 0, 9, '2011-01-07 16:29:19', 42, '', '2011-01-11 14:07:18', 42, 0, '0000-00-00 00:00:00', '2011-01-07 16:29:19', '0000-00-00 00:00:00', '', '', '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_vote":"","show_hits":"","show_noauth":"","alternative_readmore":"","article_layout":""}', 2, 0, 0, '', '', 1, 4, '{"robots":"","author":"","rights":"","xreference":""}', 1, '*', '');

-- --------------------------------------------------------

--
-- Table structure for table `#__content_frontpage`
--

DROP TABLE IF EXISTS `#__content_frontpage`;
CREATE TABLE IF NOT EXISTS `#__content_frontpage` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`content_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `#__content_frontpage`
--

INSERT INTO `#__content_frontpage` (`content_id`, `ordering`) VALUES
(10, 1),
(8, 2),
(7, 3);

-- --------------------------------------------------------

--
-- Table structure for table `#__content_rating`
--

DROP TABLE IF EXISTS `#__content_rating`;
CREATE TABLE IF NOT EXISTS `#__content_rating` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `rating_sum` int(10) unsigned NOT NULL DEFAULT '0',
  `rating_count` int(10) unsigned NOT NULL DEFAULT '0',
  `lastip` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`content_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `#__content_rating`
--


-- --------------------------------------------------------

--
-- Table structure for table `#__core_log_searches`
--

DROP TABLE IF EXISTS `#__core_log_searches`;
CREATE TABLE IF NOT EXISTS `#__core_log_searches` (
  `search_term` varchar(128) NOT NULL DEFAULT '',
  `hits` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `#__core_log_searches`
--


-- --------------------------------------------------------

--
-- Table structure for table `#__extensions`
--

DROP TABLE IF EXISTS `#__extensions`;
CREATE TABLE IF NOT EXISTS `#__extensions` (
  `extension_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `type` varchar(20) NOT NULL,
  `element` varchar(100) NOT NULL,
  `folder` varchar(100) NOT NULL,
  `client_id` tinyint(3) NOT NULL,
  `enabled` tinyint(3) NOT NULL DEFAULT '1',
  `access` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `protected` tinyint(3) NOT NULL DEFAULT '0',
  `manifest_cache` text NOT NULL,
  `params` text NOT NULL,
  `custom_data` text NOT NULL,
  `system_data` text NOT NULL,
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) DEFAULT '0',
  `state` int(11) DEFAULT '0',
  PRIMARY KEY (`extension_id`),
  KEY `element_clientid` (`element`,`client_id`),
  KEY `element_folder_clientid` (`element`,`folder`,`client_id`),
  KEY `extension` (`type`,`element`,`folder`,`client_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10001 ;

--
-- Dumping data for table `#__extensions`
--

INSERT INTO `#__extensions` (`extension_id`, `name`, `type`, `element`, `folder`, `client_id`, `enabled`, `access`, `protected`, `manifest_cache`, `params`, `custom_data`, `system_data`, `checked_out`, `checked_out_time`, `ordering`, `state`) VALUES
(1, 'com_mailto', 'component', 'com_mailto', '', 0, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(2, 'com_wrapper', 'component', 'com_wrapper', '', 0, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(3, 'com_admin', 'component', 'com_admin', '', 1, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(4, 'com_banners', 'component', 'com_banners', '', 1, 1, 1, 0, '', '{"purchase_type":"3","track_impressions":"0","track_clicks":"0","metakey_prefix":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(5, 'com_cache', 'component', 'com_cache', '', 1, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(6, 'com_categories', 'component', 'com_categories', '', 1, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(7, 'com_checkin', 'component', 'com_checkin', '', 1, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(8, 'com_contact', 'component', 'com_contact', '', 1, 1, 1, 0, '', '{"show_contact_category":"hide","show_contact_list":"0","presentation_style":"sliders","show_name":"1","show_position":"1","show_email":"0","show_street_address":"1","show_suburb":"1","show_state":"1","show_postcode":"1","show_country":"1","show_telephone":"1","show_mobile":"1","show_fax":"1","show_webpage":"1","show_misc":"1","show_image":"1","image":"","allow_vcard":"0","show_articles":"0","show_profile":"0","show_links":"0","linka_name":"","linkb_name":"","linkc_name":"","linkd_name":"","linke_name":"","contact_icons":"0","icon_address":"","icon_email":"","icon_telephone":"","icon_mobile":"","icon_fax":"","icon_misc":"","show_headings":"1","show_position_headings":"1","show_email_headings":"0","show_telephone_headings":"1","show_mobile_headings":"0","show_fax_headings":"0","allow_vcard_headings":"0","show_suburb_headings":"1","show_state_headings":"1","show_country_headings":"1","show_email_form":"1","show_email_copy":"1","banned_email":"","banned_subject":"","banned_text":"","validate_session":"1","custom_reply":"0","redirect":"","show_category_crumb":"0","metakey":"","metadesc":"","robots":"","author":"","rights":"","xreference":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(9, 'com_cpanel', 'component', 'com_cpanel', '', 1, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10, 'com_installer', 'component', 'com_installer', '', 1, 1, 1, 1, '', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(11, 'com_languages', 'component', 'com_languages', '', 1, 1, 1, 1, '', '{"administrator":"zh-CN","site":"zh-CN"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(12, 'com_login', 'component', 'com_login', '', 1, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(13, 'com_media', 'component', 'com_media', '', 1, 1, 0, 1, '', '{"upload_extensions":"bmp,csv,doc,gif,ico,jpg,jpeg,odg,odp,ods,odt,pdf,png,ppt,swf,txt,xcf,xls,BMP,CSV,DOC,GIF,ICO,JPG,JPEG,ODG,ODP,ODS,ODT,PDF,PNG,PPT,SWF,TXT,XCF,XLS","upload_maxsize":"10","file_path":"images","image_path":"images","restrict_uploads":"1","allowed_media_usergroup":"3","check_mime":"1","image_extensions":"bmp,gif,jpg,png","ignore_extensions":"","upload_mime":"image\\/jpeg,image\\/gif,image\\/png,image\\/bmp,application\\/x-shockwave-flash,application\\/msword,application\\/excel,application\\/pdf,application\\/powerpoint,text\\/plain,application\\/x-zip","upload_mime_illegal":"text\\/html","enable_flash":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(14, 'com_menus', 'component', 'com_menus', '', 1, 1, 1, 1, '', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(15, 'com_messages', 'component', 'com_messages', '', 1, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(16, 'com_modules', 'component', 'com_modules', '', 1, 1, 1, 1, '', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(17, 'com_newsfeeds', 'component', 'com_newsfeeds', '', 1, 1, 1, 0, '', '{"show_feed_image":"1","show_feed_description":"1","show_item_description":"1","feed_word_count":"0","show_headings":"1","show_name":"1","show_articles":"0","show_link":"1","show_description":"1","show_description_image":"1","display_num":"","show_pagination_limit":"1","show_pagination":"1","show_pagination_results":"1","show_cat_items":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(18, 'com_plugins', 'component', 'com_plugins', '', 1, 1, 1, 1, '', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(19, 'com_search', 'component', 'com_search', '', 1, 1, 1, 1, '', '{"enabled":"0","show_date":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(20, 'com_templates', 'component', 'com_templates', '', 1, 1, 1, 1, '', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(21, 'com_weblinks', 'component', 'com_weblinks', '', 1, 1, 1, 0, '', '{"show_comp_description":"1","comp_description":"","show_link_hits":"1","show_link_description":"1","show_other_cats":"0","show_headings":"0","show_numbers":"0","show_report":"1","count_clicks":"1","target":"0","link_icons":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(22, 'com_content', 'component', 'com_content', '', 1, 1, 0, 1, '', '{"article_layout":"_:default","show_title":"1","link_titles":"1","show_intro":"1","show_category":"1","link_category":"1","show_parent_category":"0","link_parent_category":"0","show_author":"1","link_author":"0","show_create_date":"0","show_modify_date":"0","show_publish_date":"1","show_item_navigation":"1","show_vote":"0","show_readmore":"1","show_readmore_title":"1","readmore_limit":"100","show_icons":"1","show_print_icon":"1","show_email_icon":"1","show_hits":"1","show_noauth":"0","category_layout":"_:blog","show_category_title":"0","show_description":"0","show_description_image":"0","maxLevel":"1","show_empty_categories":"0","show_no_articles":"1","show_subcat_desc":"1","show_cat_num_articles":"0","show_base_description":"1","maxLevelcat":"-1","show_empty_categories_cat":"0","show_subcat_desc_cat":"1","show_cat_num_articles_cat":"1","num_leading_articles":"1","num_intro_articles":"4","num_columns":"2","num_links":"4","multi_column_order":"0","orderby_pri":"order","orderby_sec":"rdate","order_date":"published","show_pagination_limit":"1","filter_field":"hide","show_headings":"1","list_show_date":"0","date_format":"","list_show_hits":"1","list_show_author":"1","show_pagination":"2","show_pagination_results":"1","show_feed_link":"1","feed_summary":"0","filters":{"1":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"6":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"7":{"filter_type":"NONE","filter_tags":"","filter_attributes":""},"2":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"3":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"4":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"5":{"filter_type":"BL","filter_tags":"","filter_attributes":""},"8":{"filter_type":"NONE","filter_tags":"","filter_attributes":""}}}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(23, 'com_config', 'component', 'com_config', '', 1, 1, 0, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(24, 'com_redirect', 'component', 'com_redirect', '', 1, 1, 0, 1, '', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(25, 'com_users', 'component', 'com_users', '', 1, 1, 0, 1, '', '{"allowUserRegistration":"1","new_usertype":"2","useractivation":"1","frontend_userparams":"1","mailSubjectPrefix":"","mailBodySuffix":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(100, 'PHPMailer', 'library', 'phpmailer', '', 0, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(101, 'SimplePie', 'library', 'simplepie', '', 0, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(102, 'phputf8', 'library', 'phputf8', '', 0, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(103, 'Joomla! Web Application Framework', 'library', 'joomla', '', 0, 1, 1, 0, 'a:11:{s:6:"legacy";b:0;s:4:"name";s:33:"Joomla! Web Application Framework";s:4:"type";s:7:"library";s:12:"creationDate";s:4:"2008";s:6:"author";s:6:"Joomla";s:9:"copyright";s:67:"Copyright (C) 2005 - 2011 Open Source Matters. All rights reserved.";s:11:"authorEmail";s:16:"admin@joomla.org";s:9:"authorUrl";s:21:"http://www.joomla.org";s:7:"version";s:5:"1.6.0";s:11:"description";s:90:"The Joomla! Web Application Framework is the Core of the Joomla! Content Management System";s:5:"group";s:0:"";}', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(200, 'mod_articles_archive', 'module', 'mod_articles_archive', '', 0, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(201, 'mod_articles_latest', 'module', 'mod_articles_latest', '', 0, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(202, 'mod_articles_popular', 'module', 'mod_articles_popular', '', 0, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(203, 'mod_banners', 'module', 'mod_banners', '', 0, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(204, 'mod_breadcrumbs', 'module', 'mod_breadcrumbs', '', 0, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(205, 'mod_custom', 'module', 'mod_custom', '', 0, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(206, 'mod_feed', 'module', 'mod_feed', '', 0, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(207, 'mod_footer', 'module', 'mod_footer', '', 0, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(208, 'mod_login', 'module', 'mod_login', '', 0, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(209, 'mod_menu', 'module', 'mod_menu', '', 0, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(210, 'mod_articles_news', 'module', 'mod_articles_news', '', 0, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(211, 'mod_random_image', 'module', 'mod_random_image', '', 0, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(212, 'mod_related_items', 'module', 'mod_related_items', '', 0, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(213, 'mod_search', 'module', 'mod_search', '', 0, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(214, 'mod_stats', 'module', 'mod_stats', '', 0, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(215, 'mod_syndicate', 'module', 'mod_syndicate', '', 0, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(216, 'mod_users_latest', 'module', 'mod_users_latest', '', 0, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(217, 'mod_weblinks', 'module', 'mod_weblinks', '', 0, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(218, 'mod_whosonline', 'module', 'mod_whosonline', '', 0, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(219, 'mod_wrapper', 'module', 'mod_wrapper', '', 0, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(220, 'mod_articles_category', 'module', 'mod_articles_category', '', 0, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(221, 'mod_articles_categories', 'module', 'mod_articles_categories', '', 0, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(222, 'mod_languages', 'module', 'mod_languages', '', 0, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(300, 'mod_custom', 'module', 'mod_custom', '', 1, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(301, 'mod_feed', 'module', 'mod_feed', '', 1, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(302, 'mod_latest', 'module', 'mod_latest', '', 1, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(303, 'mod_logged', 'module', 'mod_logged', '', 1, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(304, 'mod_login', 'module', 'mod_login', '', 1, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(305, 'mod_menu', 'module', 'mod_menu', '', 1, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(306, 'mod_online', 'module', 'mod_online', '', 1, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(307, 'mod_popular', 'module', 'mod_popular', '', 1, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(308, 'mod_quickicon', 'module', 'mod_quickicon', '', 1, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(309, 'mod_status', 'module', 'mod_status', '', 1, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(310, 'mod_submenu', 'module', 'mod_submenu', '', 1, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(311, 'mod_title', 'module', 'mod_title', '', 1, 1, 1, 0, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(312, 'mod_toolbar', 'module', 'mod_toolbar', '', 1, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(313, 'mod_unread', 'module', 'mod_unread', '', 1, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(400, 'plg_authentication_gmail', 'plugin', 'gmail', 'authentication', 0, 0, 1, 0, '', '{"applysuffix":"0","suffix":"","verifypeer":"1","user_blacklist":""}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(401, 'plg_authentication_joomla', 'plugin', 'joomla', 'authentication', 0, 1, 1, 1, '', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(402, 'plg_authentication_ldap', 'plugin', 'ldap', 'authentication', 0, 0, 1, 0, '', '{"host":"","port":"389","use_ldapV3":"0","negotiate_tls":"0","no_referrals":"0","auth_method":"bind","base_dn":"","search_string":"","users_dn":"","username":"admin","password":"bobby7","ldap_fullname":"fullName","ldap_email":"mail","ldap_uid":"uid"}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(404, 'plg_content_emailcloak', 'plugin', 'emailcloak', 'content', 0, 1, 1, 0, '', '{"mode":"1"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(405, 'plg_content_geshi', 'plugin', 'geshi', 'content', 0, 0, 1, 0, '', '{}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(406, 'plg_content_loadmodule', 'plugin', 'loadmodule', 'content', 0, 1, 1, 0, '', '{"style":"none"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(407, 'plg_content_pagebreak', 'plugin', 'pagebreak', 'content', 0, 1, 1, 1, '', '{"title":"1","multipage_toc":"1","showall":"1"}', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(408, 'plg_content_pagenavigation', 'plugin', 'pagenavigation', 'content', 0, 0, 1, 1, '', '{"position":"1"}', '', '', 0, '0000-00-00 00:00:00', 5, 0),
(409, 'plg_content_vote', 'plugin', 'vote', 'content', 0, 1, 1, 1, '', '{}', '', '', 0, '0000-00-00 00:00:00', 6, 0),
(410, 'plg_editors_codemirror', 'plugin', 'codemirror', 'editors', 0, 1, 1, 1, '', '{"linenumbers":"0","tabmode":"indent"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(411, 'plg_editors_none', 'plugin', 'none', 'editors', 0, 1, 1, 1, '', '{}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(412, 'plg_editors_tinymce', 'plugin', 'tinymce', 'editors', 0, 1, 1, 1, '', '{"mode":"2","skin":"0","compressed":"0","cleanup_startup":"0","cleanup_save":"2","entity_encoding":"raw","lang_mode":"0","lang_code":"en","text_direction":"ltr","content_css":"1","content_css_custom":"","relative_urls":"1","newlines":"0","invalid_elements":"script,applet,iframe","extended_elements":"","toolbar":"top","toolbar_align":"left","html_height":"550","html_width":"750","resizing":"true","resize_horizontal":"false","element_path":"1","fonts":"1","paste":"1","searchreplace":"1","insertdate":"1","format_date":"%Y-%m-%d","inserttime":"1","format_time":"%H:%M:%S","colors":"1","table":"1","smilies":"1","media":"1","hr":"1","directionality":"1","fullscreen":"1","style":"1","layer":"1","xhtmlxtras":"1","visualchars":"1","nonbreaking":"1","template":"1","blockquote":"1","wordcount":"1","advimage":"1","advlink":"1","advlist":"1","autosave":"1","contextmenu":"1","inlinepopups":"1","custom_plugin":"","custom_button":""}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(413, 'plg_editors-xtd_article', 'plugin', 'article', 'editors-xtd', 0, 1, 1, 1, '', '{}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(414, 'plg_editors-xtd_image', 'plugin', 'image', 'editors-xtd', 0, 1, 1, 0, '', '{}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(415, 'plg_editors-xtd_pagebreak', 'plugin', 'pagebreak', 'editors-xtd', 0, 1, 1, 0, '', '{}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(416, 'plg_editors-xtd_readmore', 'plugin', 'readmore', 'editors-xtd', 0, 1, 1, 0, '', '{}', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(417, 'plg_search_categories', 'plugin', 'categories', 'search', 0, 1, 1, 0, '', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(418, 'plg_search_contacts', 'plugin', 'contacts', 'search', 0, 1, 1, 0, '', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(419, 'plg_search_content', 'plugin', 'content', 'search', 0, 1, 1, 0, '', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(420, 'plg_search_newsfeeds', 'plugin', 'newsfeeds', 'search', 0, 1, 1, 0, '', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(421, 'plg_search_weblinks', 'plugin', 'weblinks', 'search', 0, 1, 1, 0, '', '{"search_limit":"50","search_content":"1","search_archived":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(422, 'plg_system_languagefilter', 'plugin', 'languagefilter', 'system', 0, 0, 1, 1, '', '{}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(423, 'plg_system_p3p', 'plugin', 'p3p', 'system', 0, 1, 1, 1, '', '{"headers":"NOI ADM DEV PSAi COM NAV OUR OTRo STP IND DEM"}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(424, 'plg_system_cache', 'plugin', 'cache', 'system', 0, 0, 1, 1, '', '{"browsercache":"0","cachetime":"15"}', '', '', 0, '0000-00-00 00:00:00', 3, 0),
(425, 'plg_system_debug', 'plugin', 'debug', 'system', 0, 1, 1, 0, '', '{"profile":"1","queries":"1","memory":"1","language_files":"1","language_strings":"1","strip-first":"1","strip-prefix":"","strip-suffix":""}', '', '', 0, '0000-00-00 00:00:00', 4, 0),
(426, 'plg_system_log', 'plugin', 'log', 'system', 0, 1, 1, 1, '', '{}', '', '', 0, '0000-00-00 00:00:00', 5, 0),
(427, 'plg_system_redirect', 'plugin', 'redirect', 'system', 0, 1, 1, 1, '', '{}', '', '', 0, '0000-00-00 00:00:00', 6, 0),
(428, 'plg_system_remember', 'plugin', 'remember', 'system', 0, 1, 1, 1, '', '{}', '', '', 0, '0000-00-00 00:00:00', 7, 0),
(429, 'plg_system_sef', 'plugin', 'sef', 'system', 0, 1, 1, 0, '', '{}', '', '', 0, '0000-00-00 00:00:00', 8, 0),
(430, 'plg_system_logout', 'plugin', 'logout', 'system', 0, 1, 1, 1, '', '{}', '', '', 0, '0000-00-00 00:00:00', 9, 0),
(431, 'plg_user_contactcreator', 'plugin', 'contactcreator', 'user', 0, 0, 1, 1, '', '{"autowebpage":"","category":"34","autopublish":"0"}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(432, 'plg_user_joomla', 'plugin', 'joomla', 'user', 0, 1, 1, 0, '', '{"autoregister":"1"}', '', '', 0, '0000-00-00 00:00:00', 2, 0),
(433, 'plg_user_profile', 'plugin', 'profile', 'user', 0, 0, 1, 1, '', '{"register-require_address1":"1","register-require_address2":"1","register-require_city":"1","register-require_region":"1","register-require_country":"1","register-require_postal_code":"1","register-require_phone":"1","register-require_website":"1","register-require_favoritebook":"1","register-require_aboutme":"1","register-require_tos":"1","register-require_dob":"1","profile-require_address1":"1","profile-require_address2":"1","profile-require_city":"1","profile-require_region":"1","profile-require_country":"1","profile-require_postal_code":"1","profile-require_phone":"1","profile-require_website":"1","profile-require_favoritebook":"1","profile-require_aboutme":"1","profile-require_tos":"1","profile-require_dob":"1"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(434, 'plg_extension_joomla', 'plugin', 'joomla', 'extension', 0, 1, 1, 1, '', '{}', '', '', 0, '0000-00-00 00:00:00', 1, 0),
(435, 'plg_content_joomla', 'plugin', 'joomla', 'content', 0, 1, 1, 0, '', '{}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(502, 'bluestork', 'template', 'bluestork', '', 1, 1, 1, 0, '{"legacy":false,"name":"bluestork","type":"template","creationDate":"07\\/02\\/09","author":"Ron Severdia","copyright":"Copyright (C) 2005 - 2011 Open Source Matters, Inc. All rights reserved.","authorEmail":"contact@kontentdesign.com","authorUrl":"http:\\/\\/www.kontentdesign.com","version":"1.6.0","description":"TPL_BLUESTORK_XML_DESCRIPTION","group":""}', '{"useRoundedCorners":"1","showSiteName":"0","textBig":"0","highContrast":"0"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(600, 'English (United Kingdom)', 'language', 'en-GB', '', 0, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(601, 'English (United Kingdom)', 'language', 'en-GB', '', 1, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(700, 'Joomla! CMS', 'file', 'joomla', '', 0, 1, 1, 1, '', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10000, 'yoo_expo', 'template', 'yoo_expo', '', 0, 1, 1, 0, '{"legacy":false,"name":"yoo_expo","type":"template","creationDate":"January 2011","author":"YOOtheme","copyright":"Copyright (C) 2007 - 2011 YOOtheme GmbH","authorEmail":"info@yootheme.com","authorUrl":"http:\\/\\/www.yootheme.com","version":"5.5.0","description":"Expo is the December 2010 theme of the YOOtheme club. It is based on YOOtheme''s Warp CMS theme framework. NOTE: It is not free or public. This theme is for members of the YOOtheme club only.","group":""}', '{"presets":"{}","allow_dynamic_preset":"1","style":"default","background":"default","wrapper":"default","font":"default","template_width":"960","template_width_unit":"px","date":"1","load_googlefonts":"0","compression":"0","left_width":"240","left_space":"0","right_width":"240","right_space":"0","contentleft_width":"240","contentleft_space":"0","contentright_width":"240","contentright_space":"0","menu_width":"250"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10001, '中文 (简体)', 'language', 'zh-CN', '', 0, 1, 1, 0, 'a:11:{s:6:"legacy";b:0;s:4:"name";s:15:"中文 (简体)";s:4:"type";s:8:"language";s:12:"creationDate";s:10:"2011-01-13";s:6:"author";s:12:"Joomlacn.org";s:9:"copyright";s:53:"Copyright (C) 2010 joomlacn.org. All rights reserved.";s:11:"authorEmail";s:22:"joomlacn.org@gmail.com";s:9:"authorUrl";s:16:"www.joomlacn.org";s:7:"version";s:5:"1.6.0";s:11:"description";s:27:"简体中文前台语言包";s:5:"group";s:0:"";}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10002, '中文 (简体)', 'language', 'zh-CN', '', 1, 1, 1, 0, 'a:11:{s:6:"legacy";b:0;s:4:"name";s:15:"中文 (简体)";s:4:"type";s:8:"language";s:12:"creationDate";s:10:"2011-01-13";s:6:"author";s:12:"Joomlacn.org";s:9:"copyright";s:58:"Copyright (C)2010-2011 joomlacn.org . All rights reserved.";s:11:"authorEmail";s:22:"joomlacn.org@gmail.com";s:9:"authorUrl";s:16:"www.joomlacn.org";s:7:"version";s:5:"1.6.0";s:11:"description";s:33:"简体中文后台管理语言包";s:5:"group";s:0:"";}', '', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10003, 'yoo_air', 'template', 'yoo_air', '', 0, 1, 1, 0, '{"legacy":false,"name":"yoo_air","type":"template","creationDate":"January 2011","author":"YOOtheme","copyright":"Copyright (C) 2007 - 2011 YOOtheme GmbH","authorEmail":"info@yootheme.com","authorUrl":"http:\\/\\/www.yootheme.com","version":"5.5.0","description":"Air is the October 2010 theme of the YOOtheme club. It is based on YOOtheme''s Warp CMS theme framework. NOTE: It is not free or public. This theme is for members of the YOOtheme club only.","group":""}', '{"presets":"{}","allow_dynamic_preset":"1","menubar":"default","color":"default","background":"default","font":"default","template_width":"980","template_width_unit":"px","date":"1","load_googlefonts":"0","compression":"0","left_width":"250","left_space":"10","right_width":"250","right_space":"10","contentleft_width":"250","contentleft_space":"10","contentright_width":"250","contentright_space":"10","menu_width":"250"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10004, 'yoo_bloc', 'template', 'yoo_bloc', '', 0, 1, 1, 0, '{"legacy":false,"name":"yoo_bloc","type":"template","creationDate":"January 2011","author":"YOOtheme","copyright":"Copyright (C) 2007 - 2011 YOOtheme GmbH","authorEmail":"info@yootheme.com","authorUrl":"http:\\/\\/www.yootheme.com","version":"5.5.0","description":"Bloc is the June 2010 theme of the YOOtheme club. It is based on YOOtheme''s Warp CMS theme framework. NOTE: It is not free or public. This theme is for members of the YOOtheme club only.","group":""}', '{"presets":"{}","allow_dynamic_preset":"1","color":"default","template_width":"840","template_width_unit":"px","date":"1","compression":"0","left_width":"210","left_space":"20","right_width":"210","right_space":"0","contentleft_width":"210","contentleft_space":"0","contentright_width":"210","contentright_space":"0","menu_width":"250"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10005, 'yoo_crystal', 'template', 'yoo_crystal', '', 0, 1, 1, 0, '{"legacy":false,"name":"yoo_crystal","type":"template","creationDate":"January 2011","author":"YOOtheme","copyright":"Copyright (C) 2007 - 2011 YOOtheme GmbH","authorEmail":"info@yootheme.com","authorUrl":"http:\\/\\/www.yootheme.com","version":"5.5.0","description":"Crystal is the September 2009 theme of the YOOtheme club. It is based on YOOtheme''s Warp CMS theme framework. NOTE: It is not free or public. This theme is for members of the YOOtheme club only.","group":""}', '{"presets":"{}","allow_dynamic_preset":"1","color":"default","template_width":"980","template_width_unit":"px","date":"1","compression":"0","left_width":"200","left_space":"15","right_width":"200","right_space":"15","contentleft_width":"200","contentleft_space":"0","contentright_width":"200","contentright_space":"0","menu_width":"300"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10006, 'yoo_enterprise', 'template', 'yoo_enterprise', '', 0, 1, 1, 0, '{"legacy":false,"name":"yoo_enterprise","type":"template","creationDate":"January 2011","author":"YOOtheme","copyright":"Copyright (C) 2007 - 2011 YOOtheme GmbH","authorEmail":"info@yootheme.com","authorUrl":"http:\\/\\/www.yootheme.com","version":"5.5.0","description":"Enterprise is the April 2010 theme of the YOOtheme club. It is based on YOOtheme''s Warp CMS theme framework. NOTE: It is not free or public. This theme is for members of the YOOtheme club only.","group":""}', '{"presets":"{}","allow_dynamic_preset":"1","color":"default","template_width":"980","template_width_unit":"px","date":"1","compression":"0","left_width":"245","left_space":"0","right_width":"245","right_space":"0","contentleft_width":"245","contentleft_space":"0","contentright_width":"245","contentright_space":"0","menu_width":"250"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10007, 'yoo_explorer', 'template', 'yoo_explorer', '', 0, 1, 1, 0, '{"legacy":false,"name":"yoo_explorer","type":"template","creationDate":"January 2011","author":"YOOtheme","copyright":"Copyright (C) 2007 - 2011 YOOtheme GmbH","authorEmail":"info@yootheme.com","authorUrl":"http:\\/\\/www.yootheme.com","version":"5.5.0","description":"Explorer is the December 2009 theme of the YOOtheme club. It is based on YOOtheme''s Warp CMS theme framework. NOTE: It is not free or public. This theme is for members of the YOOtheme club only.","group":""}', '{"presets":"{}","allow_dynamic_preset":"1","color":"default","template_width":"900","template_width_unit":"px","date":"1","compression":"0","left_width":"220","left_space":"15","right_width":"220","right_space":"15","contentleft_width":"200","contentleft_space":"15","contentright_width":"200","contentright_space":"15","menu_width":"250"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10008, 'yoo_flux', 'template', 'yoo_flux', '', 0, 1, 1, 0, '{"legacy":false,"name":"yoo_flux","type":"template","creationDate":"January 2011","author":"YOOtheme","copyright":"Copyright (C) 2007 - 2011 YOOtheme GmbH","authorEmail":"info@yootheme.com","authorUrl":"http:\\/\\/www.yootheme.com","version":"5.5.0","description":"Flux is the August 2009 theme of the YOOtheme club. It is based on YOOtheme''s Warp CMS theme framework. NOTE: It is not free or public. This theme is for members of the YOOtheme club only.","group":""}', '{"presets":"{}","allow_dynamic_preset":"1","color":"default","template_width":"980","template_width_unit":"px","date":"1","compression":"0","left_width":"200","left_space":"15","right_width":"200","right_space":"15","contentleft_width":"200","contentleft_space":"15","contentright_width":"200","contentright_space":"15","menu_width":"250"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10009, 'yoo_intro', 'template', 'yoo_intro', '', 0, 1, 1, 0, '{"legacy":false,"name":"yoo_intro","type":"template","creationDate":"January 2011","author":"YOOtheme","copyright":"Copyright (C) 2007 - 2011 YOOtheme GmbH","authorEmail":"info@yootheme.com","authorUrl":"http:\\/\\/www.yootheme.com","version":"5.5.0","description":"Intro is the March 2010 theme of the YOOtheme club. It is based on YOOtheme''s Warp CMS theme framework. NOTE: It is not free or public. This theme is for members of the YOOtheme club only.","group":""}', '{"presets":"{}","allow_dynamic_preset":"1","color":"default","template_width":"940","template_width_unit":"px","date":"1","compression":"0","left_width":"270","left_space":"0","right_width":"270","right_space":"0","contentleft_width":"200","contentleft_space":"0","contentright_width":"200","contentright_space":"0","menu_width":"200"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10010, 'yoo_mellow', 'template', 'yoo_mellow', '', 0, 1, 1, 0, '{"legacy":false,"name":"yoo_mellow","type":"template","creationDate":"January 2011","author":"YOOtheme","copyright":"Copyright (C) 2007 - 2011 YOOtheme GmbH","authorEmail":"info@yootheme.com","authorUrl":"http:\\/\\/www.yootheme.com","version":"5.5.0","description":"Mellow is the October 2009 theme of the YOOtheme club. It is based on YOOtheme''s Warp CMS theme framework. NOTE: It is not free or public. This theme is for members of the YOOtheme club only.","group":""}', '{"presets":"{}","allow_dynamic_preset":"1","color":"default","template_width":"940","template_width_unit":"px","date":"1","compression":"0","left_width":"200","left_space":"10","right_width":"200","right_space":"10","contentleft_width":"190","contentleft_space":"5","contentright_width":"190","contentright_space":"5","menu_width":"320"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10011, 'yoo_neo', 'template', 'yoo_neo', '', 0, 1, 1, 0, '{"legacy":false,"name":"yoo_neo","type":"template","creationDate":"January 2011","author":"YOOtheme","copyright":"Copyright (C) 2007 - 2011 YOOtheme GmbH","authorEmail":"info@yootheme.com","authorUrl":"http:\\/\\/www.yootheme.com","version":"5.5.0","description":"Neo is the August 2010 theme of the YOOtheme club. It is based on YOOtheme''s Warp CMS theme framework. NOTE: It is not free or public. This theme is for members of the YOOtheme club only.","group":""}', '{"presets":"{}","allow_dynamic_preset":"1","color":"default","template_width":"840","template_width_unit":"px","date":"1","load_googlefonts":"0","compression":"0","left_width":"250","left_space":"0","right_width":"250","right_space":"0","contentleft_width":"200","contentleft_space":"0","contentright_width":"200","contentright_space":"0","menu_width":"250"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10012, 'yoo_noble', 'template', 'yoo_noble', '', 0, 1, 1, 0, '{"legacy":false,"name":"yoo_noble","type":"template","creationDate":"January 2011","author":"YOOtheme","copyright":"Copyright (C) 2007 - 2011 YOOtheme GmbH","authorEmail":"info@yootheme.com","authorUrl":"http:\\/\\/www.yootheme.com","version":"5.5.0","description":"Noble is the September 2010 theme of the YOOtheme club. It is based on YOOtheme''s Warp CMS theme framework. NOTE: It is not free or public. This theme is for members of the YOOtheme club only.","group":""}', '{"presets":"{}","allow_dynamic_preset":"1","color":"default","background":"default","texture":"default","illustration":"default","font":"default","template_width":"1000","template_width_unit":"px","date":"1","load_googlefonts":"0","compression":"0","left_width":"150","left_space":"20","right_width":"150","right_space":"20","contentleft_width":"220","contentleft_space":"0","contentright_width":"220","contentright_space":"0","menu_width":"200"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10013, 'yoo_phoenix', 'template', 'yoo_phoenix', '', 0, 1, 1, 0, '{"legacy":false,"name":"yoo_phoenix","type":"template","creationDate":"January 2011","author":"YOOtheme","copyright":"Copyright (C) 2007 - 2011 YOOtheme GmbH","authorEmail":"info@yootheme.com","authorUrl":"http:\\/\\/www.yootheme.com","version":"5.5.0","description":"Phoenix is the July 2009 theme of the YOOtheme club. It is based on YOOtheme''s Warp CMS theme framework. NOTE: It is not free or public. This theme is for members of the YOOtheme club only.","group":""}', '{"presets":"{}","allow_dynamic_preset":"1","color":"default","template_width":"960","template_width_unit":"px","date":"1","compression":"0","left_width":"200","left_space":"15","right_width":"200","right_space":"15","contentleft_width":"195","contentleft_space":"15","contentright_width":"195","contentright_space":"15","menu_width":"300"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10014, 'yoo_planet', 'template', 'yoo_planet', '', 0, 1, 1, 0, '{"legacy":false,"name":"yoo_planet","type":"template","creationDate":"January 2011","author":"YOOtheme","copyright":"Copyright (C) 2007 - 2011 YOOtheme GmbH","authorEmail":"info@yootheme.com","authorUrl":"http:\\/\\/www.yootheme.com","version":"5.5.0","description":"Planet is the January 2010 theme of the YOOtheme club. It is based on YOOtheme''s Warp CMS theme framework. NOTE: It is not free or public. This theme is for members of the YOOtheme club only.","group":""}', '{"presets":"{}","allow_dynamic_preset":"1","color":"default","template_width":"900","template_width_unit":"px","date":"1","compression":"0","left_width":"220","left_space":"5","right_width":"220","right_space":"5","contentleft_width":"220","contentleft_space":"5","contentright_width":"220","contentright_space":"5","menu_width":"250"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10015, 'yoo_pure', 'template', 'yoo_pure', '', 0, 1, 1, 0, '{"legacy":false,"name":"yoo_pure","type":"template","creationDate":"January 2011","author":"YOOtheme","copyright":"Copyright (C) 2007 - 2011 YOOtheme GmbH","authorEmail":"info@yootheme.com","authorUrl":"http:\\/\\/www.yootheme.com","version":"5.5.0","description":"Pure is the November 2010 theme of the YOOtheme club. It is based on YOOtheme''s Warp CMS theme framework. NOTE: It is not free or public. This theme is for members of the YOOtheme club only.","group":""}', '{"presets":"{}","allow_dynamic_preset":"1","style":"default","color":"default","texture":"default","font":"default","template_width":"980","template_width_unit":"px","date":"1","load_googlefonts":"0","compression":"0","left_width":"240","left_space":"0","right_width":"240","right_space":"0","contentleft_width":"240","contentleft_space":"0","contentright_width":"240","contentright_space":"0","menu_width":"250"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10016, 'yoo_royalplaza', 'template', 'yoo_royalplaza', '', 0, 1, 1, 0, 'a:11:{s:6:"legacy";b:0;s:4:"name";s:14:"yoo_royalplaza";s:4:"type";s:8:"template";s:12:"creationDate";s:12:"January 2011";s:6:"author";s:8:"YOOtheme";s:9:"copyright";s:39:"Copyright (C) 2007 - 2011 YOOtheme GmbH";s:11:"authorEmail";s:17:"info@yootheme.com";s:9:"authorUrl";s:23:"http://www.yootheme.com";s:7:"version";s:5:"5.5.0";s:11:"description";s:193:"Royal Plaza is the July 2010 theme of the YOOtheme club. It is based on YOOtheme''s Warp CMS theme framework. NOTE: It is not free or public. This theme is for members of the YOOtheme club only.";s:5:"group";s:0:"";}', '{"presets":"{}","allow_dynamic_preset":"1","color":"default","template_width":"840","template_width_unit":"px","date":"1","compression":"0","left_width":"210","left_space":"15","right_width":"210","right_space":"15","contentleft_width":"210","contentleft_space":"15","contentright_width":"210","contentright_space":"15","menu_width":"250"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10017, 'yoo_spark', 'template', 'yoo_spark', '', 0, 1, 1, 0, 'a:11:{s:6:"legacy";b:0;s:4:"name";s:9:"yoo_spark";s:4:"type";s:8:"template";s:12:"creationDate";s:12:"January 2011";s:6:"author";s:8:"YOOtheme";s:9:"copyright";s:39:"Copyright (C) 2007 - 2011 YOOtheme GmbH";s:11:"authorEmail";s:17:"info@yootheme.com";s:9:"authorUrl";s:23:"http://www.yootheme.com";s:7:"version";s:5:"5.5.0";s:11:"description";s:190:"Spark is the January 2011 theme of the YOOtheme club. It is based on YOOtheme''s Warp CMS theme framework. NOTE: It is not free or public. This theme is for members of the YOOtheme club only.";s:5:"group";s:0:"";}', '{"presets":"{}","allow_dynamic_preset":"1","style":"default","background":"default","bganimation":"1","font":"default","template_width":"900","template_width_unit":"px","date":"1","load_googlefonts":"0","compression":"0","left_width":"240","left_space":"0","right_width":"240","right_space":"0","contentleft_width":"240","contentleft_space":"0","contentright_width":"240","contentright_space":"0","menu_width":"250"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10018, 'yoo_studio', 'template', 'yoo_studio', '', 0, 1, 1, 0, 'a:11:{s:6:"legacy";b:0;s:4:"name";s:10:"yoo_studio";s:4:"type";s:8:"template";s:12:"creationDate";s:12:"January 2011";s:6:"author";s:8:"YOOtheme";s:9:"copyright";s:39:"Copyright (C) 2007 - 2011 YOOtheme GmbH";s:11:"authorEmail";s:17:"info@yootheme.com";s:9:"authorUrl";s:23:"http://www.yootheme.com";s:7:"version";s:5:"5.5.0";s:11:"description";s:187:"Studio is the May 2010 theme of the YOOtheme club. It is based on YOOtheme''s Warp CMS theme framework. NOTE: It is not free or public. This theme is for members of the YOOtheme club only.";s:5:"group";s:0:"";}', '{"presets":"{}","allow_dynamic_preset":"1","color":"default","template_width":"960","template_width_unit":"px","date":"1","compression":"0","left_width":"280","left_space":"0","right_width":"280","right_space":"0","menu_width":"250"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10019, 'yoo_symphony', 'template', 'yoo_symphony', '', 0, 1, 1, 0, 'a:11:{s:6:"legacy";b:0;s:4:"name";s:12:"yoo_symphony";s:4:"type";s:8:"template";s:12:"creationDate";s:12:"January 2011";s:6:"author";s:8:"YOOtheme";s:9:"copyright";s:39:"Copyright (C) 2007 - 2011 YOOtheme GmbH";s:11:"authorEmail";s:17:"info@yootheme.com";s:9:"authorUrl";s:23:"http://www.yootheme.com";s:7:"version";s:5:"5.5.0";s:11:"description";s:194:"Symphony is the November 2009 theme of the YOOtheme club. It is based on YOOtheme''s Warp CMS theme framework. NOTE: It is not free or public. This theme is for members of the YOOtheme club only.";s:5:"group";s:0:"";}', '{"presets":"{}","allow_dynamic_preset":"1","color":"default","template_width":"880","template_width_unit":"px","date":"1","compression":"0","left_width":"200","left_space":"0","right_width":"200","right_space":"0","contentleft_width":"200","contentleft_space":"15","contentright_width":"200","contentright_space":"15","menu_width":"250"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10020, 'yoo_vox', 'template', 'yoo_vox', '', 0, 1, 1, 0, 'a:11:{s:6:"legacy";b:0;s:4:"name";s:7:"yoo_vox";s:4:"type";s:8:"template";s:12:"creationDate";s:12:"January 2011";s:6:"author";s:8:"YOOtheme";s:9:"copyright";s:39:"Copyright (C) 2007 - 2011 YOOtheme GmbH";s:11:"authorEmail";s:17:"info@yootheme.com";s:9:"authorUrl";s:23:"http://www.yootheme.com";s:7:"version";s:5:"5.5.0";s:11:"description";s:189:"Vox is the February 2010 theme of the YOOtheme club. It is based on YOOtheme''s Warp CMS theme framework. NOTE: It is not free or public. This theme is for members of the YOOtheme club only.";s:5:"group";s:0:"";}', '{"presets":"{}","allow_dynamic_preset":"1","color":"default","template_width":"940","template_width_unit":"px","date":"1","compression":"0","left_width":"239","left_space":"16","right_width":"239","right_space":"16","contentleft_width":"200","contentleft_space":"15","contentright_width":"200","contentright_space":"15","menu_width":"250"}', '', '', 0, '0000-00-00 00:00:00', 0, 0),
(10021, 'yoo_vanilla', 'template', 'yoo_vanilla', '', 0, 1, 1, 0, 'a:11:{s:6:"legacy";b:0;s:4:"name";s:11:"yoo_vanilla";s:4:"type";s:8:"template";s:12:"creationDate";s:13:"February 2011";s:6:"author";s:8:"YOOtheme";s:9:"copyright";s:39:"Copyright (C) 2007 - 2011 YOOtheme GmbH";s:11:"authorEmail";s:17:"info@yootheme.com";s:9:"authorUrl";s:23:"http://www.yootheme.com";s:7:"version";s:5:"5.5.0";s:11:"description";s:193:"Vanilla is the February 2011 theme of the YOOtheme club. It is based on YOOtheme''s Warp CMS theme framework. NOTE: It is not free or public. This theme is for members of the YOOtheme club only.";s:5:"group";s:0:"";}', '{"presets":"{}","allow_dynamic_preset":"1","style":"plain","bgcolor":"blue","color":"blue","contentwrapper":"0","font":"default","template_width":"960","template_width_unit":"px","date":"1","load_googlefonts":"0","compression":"0","left_width":"240","left_space":"0","right_width":"240","right_space":"0","contentleft_width":"240","contentleft_space":"0","contentright_width":"240","contentright_space":"0","menu_width":"250"}', '', '', 0, '0000-00-00 00:00:00', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `#__languages`
--

DROP TABLE IF EXISTS `#__languages`;
CREATE TABLE IF NOT EXISTS `#__languages` (
  `lang_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `lang_code` char(7) NOT NULL,
  `title` varchar(50) NOT NULL,
  `title_native` varchar(50) NOT NULL,
  `sef` varchar(50) NOT NULL,
  `image` varchar(50) NOT NULL,
  `description` varchar(512) NOT NULL,
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `published` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`lang_id`),
  UNIQUE KEY `idx_sef` (`sef`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `#__languages`
--

INSERT INTO `#__languages` (`lang_id`, `lang_code`, `title`, `title_native`, `sef`, `image`, `description`, `metakey`, `metadesc`, `published`) VALUES
(1, 'zh-CN', 'Chinese(CN)', 'Chinese(CN)', 'zh-cn', 'zh-cn', '', '', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `#__menu`
--

DROP TABLE IF EXISTS `#__menu`;
CREATE TABLE IF NOT EXISTS `#__menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `menutype` varchar(24) NOT NULL COMMENT 'The type of menu this item belongs to. FK to #__menu_types.menutype',
  `title` varchar(255) NOT NULL COMMENT 'The display title of the menu item.',
  `alias` varchar(255) NOT NULL COMMENT 'The SEF alias of the menu item.',
  `note` varchar(255) NOT NULL DEFAULT '',
  `path` varchar(1024) NOT NULL COMMENT 'The computed path of the menu item based on the alias field.',
  `link` varchar(1024) NOT NULL COMMENT 'The actually link the menu item refers to.',
  `type` varchar(16) NOT NULL COMMENT 'The type of link: Component, URL, Alias, Separator',
  `published` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'The published state of the menu link.',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '1' COMMENT 'The parent menu item in the menu tree.',
  `level` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'The relative level in the tree.',
  `component_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to #__extensions.id',
  `ordering` int(11) NOT NULL DEFAULT '0' COMMENT 'The relative ordering of the menu item in the tree.',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to #__users.id',
  `checked_out_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'The time the menu item was checked out.',
  `browserNav` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'The click behaviour of the link.',
  `access` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'The access level required to view the menu item.',
  `img` varchar(255) NOT NULL COMMENT 'The image of the menu item.',
  `template_style_id` int(10) unsigned NOT NULL DEFAULT '0',
  `params` text NOT NULL COMMENT 'JSON encoded data for the menu item.',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `home` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Indicates if this menu item is the home or default page.',
  `language` char(7) NOT NULL DEFAULT '',
  `client_id` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_client_id_parent_id_alias` (`client_id`,`parent_id`,`alias`),
  KEY `idx_componentid` (`component_id`,`menutype`,`published`,`access`),
  KEY `idx_menutype` (`menutype`),
  KEY `idx_left_right` (`lft`,`rgt`),
  KEY `idx_alias` (`alias`),
  KEY `idx_path` (`path`(333)),
  KEY `idx_language` (`language`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=128 ;

--
-- Dumping data for table `#__menu`
--

INSERT INTO `#__menu` (`id`, `menutype`, `title`, `alias`, `note`, `path`, `link`, `type`, `published`, `parent_id`, `level`, `component_id`, `ordering`, `checked_out`, `checked_out_time`, `browserNav`, `access`, `img`, `template_style_id`, `params`, `lft`, `rgt`, `home`, `language`, `client_id`) VALUES
(1, '', 'Menu_Item_Root', 'root', '', '', '', '', 1, 0, 0, 0, 0, 0, '0000-00-00 00:00:00', 0, 0, '', 0, '', 0, 87, 0, '*', 0),
(2, 'menu', 'com_banners', 'Banners', '', 'Banners', 'index.php?option=com_banners', 'component', 0, 1, 1, 4, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners', 0, '', 1, 10, 0, '*', 1),
(3, 'menu', 'com_banners', 'Banners', '', 'Banners/Banners', 'index.php?option=com_banners', 'component', 0, 2, 2, 4, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners', 0, '', 2, 3, 0, '*', 1),
(4, 'menu', 'com_banners_categories', 'Categories', '', 'Banners/Categories', 'index.php?option=com_categories&extension=com_banners', 'component', 0, 2, 2, 6, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-cat', 0, '', 4, 5, 0, '*', 1),
(5, 'menu', 'com_banners_clients', 'Clients', '', 'Banners/Clients', 'index.php?option=com_banners&view=clients', 'component', 0, 2, 2, 4, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-clients', 0, '', 6, 7, 0, '*', 1),
(6, 'menu', 'com_banners_tracks', 'Tracks', '', 'Banners/Tracks', 'index.php?option=com_banners&view=tracks', 'component', 0, 2, 2, 4, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:banners-tracks', 0, '', 8, 9, 0, '*', 1),
(7, 'menu', 'com_contact', 'Contacts', '', 'Contacts', 'index.php?option=com_contact', 'component', 0, 1, 1, 8, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact', 0, '', 11, 16, 0, '*', 1),
(8, 'menu', 'com_contact', 'Contacts', '', 'Contacts/Contacts', 'index.php?option=com_contact', 'component', 0, 7, 2, 8, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact', 0, '', 12, 13, 0, '*', 1),
(9, 'menu', 'com_contact_categories', 'Categories', '', 'Contacts/Categories', 'index.php?option=com_categories&extension=com_contact', 'component', 0, 7, 2, 6, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:contact-cat', 0, '', 14, 15, 0, '*', 1),
(10, 'menu', 'com_messages', 'Messaging', '', 'Messaging', 'index.php?option=com_messages', 'component', 0, 1, 1, 15, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:messages', 0, '', 17, 22, 0, '*', 1),
(11, 'menu', 'com_messages_add', 'New Private Message', '', 'Messaging/New Private Message', 'index.php?option=com_messages&task=message.add', 'component', 0, 10, 2, 15, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:messages-add', 0, '', 18, 19, 0, '*', 1),
(12, 'menu', 'com_messages_read', 'Read Private Message', '', 'Messaging/Read Private Message', 'index.php?option=com_messages', 'component', 0, 10, 2, 15, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:messages-read', 0, '', 20, 21, 0, '*', 1),
(13, 'menu', 'com_newsfeeds', 'News Feeds', '', 'News Feeds', 'index.php?option=com_newsfeeds', 'component', 0, 1, 1, 17, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds', 0, '', 23, 28, 0, '*', 1),
(14, 'menu', 'com_newsfeeds_feeds', 'Feeds', '', 'News Feeds/Feeds', 'index.php?option=com_newsfeeds', 'component', 0, 13, 2, 17, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds', 0, '', 24, 25, 0, '*', 1),
(15, 'menu', 'com_newsfeeds_categories', 'Categories', '', 'News Feeds/Categories', 'index.php?option=com_categories&extension=com_newsfeeds', 'component', 0, 13, 2, 6, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:newsfeeds-cat', 0, '', 26, 27, 0, '*', 1),
(16, 'menu', 'com_redirect', 'Redirect', '', 'Redirect', 'index.php?option=com_redirect', 'component', 0, 1, 1, 24, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:redirect', 0, '', 37, 38, 0, '*', 1),
(17, 'menu', 'com_search', 'Search', '', 'Search', 'index.php?option=com_search', 'component', 0, 1, 1, 19, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:search', 0, '', 29, 30, 0, '*', 1),
(18, 'menu', 'com_weblinks', 'Weblinks', '', 'Weblinks', 'index.php?option=com_weblinks', 'component', 0, 1, 1, 21, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:weblinks', 0, '', 31, 36, 0, '*', 1),
(19, 'menu', 'com_weblinks_links', 'Links', '', 'Weblinks/Links', 'index.php?option=com_weblinks', 'component', 0, 18, 2, 21, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:weblinks', 0, '', 32, 33, 0, '*', 1),
(20, 'menu', 'com_weblinks_categories', 'Categories', '', 'Weblinks/Categories', 'index.php?option=com_categories&extension=com_weblinks', 'component', 0, 18, 2, 6, 0, 0, '0000-00-00 00:00:00', 0, 0, 'class:weblinks-cat', 0, '', 34, 35, 0, '*', 1),
(101, 'mainmenu', 'Home', 'home', '', 'home', 'index.php?option=com_content&view=article&id=5', 'component', 1, 1, 1, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","show_category":"0","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"0","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 39, 40, 1, '*', 0),
(102, 'topmenu', 'About Joomla!', 'about-joomla', '', 'about-joomla', 'index.php?option=com_content&view=article&id=1', 'component', 1, 1, 1, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 41, 42, 0, '*', 0),
(103, 'topmenu', 'Features', 'features', '', 'features', 'index.php?option=com_content&view=article&id=2', 'component', 1, 1, 1, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 43, 44, 0, '*', 0),
(104, 'topmenu', 'News', 'news', '', 'news', 'index.php?option=com_content&view=category&layout=blog&id=7', 'component', 1, 1, 1, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_category_title":"","show_description":"","show_description_image":"","maxLevel":"","show_empty_categories":"","show_no_articles":"","show_subcat_desc":"","show_cat_num_articles":"","page_subheading":"","num_leading_articles":"","num_intro_articles":"","num_columns":"","num_links":"","multi_column_order":"","orderby_pri":"","orderby_sec":"","order_date":"","show_pagination":"","show_pagination_results":"","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_readmore":"","show_readmore_title":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 45, 46, 0, '*', 0),
(105, 'mainmenu', 'Template', 'template', '', 'template', 'index.php?option=com_content&view=article&id=3', 'component', 1, 1, 1, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","show_category":"0","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"0","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 47, 54, 0, '*', 0),
(106, 'mainmenu', 'ZOO || Content Application Builder', 'zoo', '', 'template/zoo', 'index.php?option=com_content&view=article&id=4', 'component', 1, 105, 2, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","show_category":"0","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"0","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"images\\/yootheme\\/menuicon_zoo.png","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 50, 51, 0, '*', 0),
(109, 'mainmenu', 'Icons || For Web and Print Projects', 'icons', '', 'template/icons', 'index.php?option=com_content&view=article&id=6', 'component', 1, 105, 2, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_title":"","link_titles":"","show_intro":"","show_category":"0","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"0","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"images\\/yootheme\\/menuicon_icons.png","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 52, 53, 0, '*', 0),
(110, 'mainmenu', 'Joomla', 'joomla', '', 'joomla', 'index.php?option=com_content&view=category&layout=blog&id=9', 'component', 1, 1, 1, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_category_title":"","show_description":"","show_description_image":"","maxLevel":"","show_empty_categories":"","show_no_articles":"","show_subcat_desc":"","show_cat_num_articles":"","page_subheading":"","num_leading_articles":"0","num_intro_articles":"4","num_columns":"1","num_links":"","multi_column_order":"","show_subcategory_content":"","orderby_pri":"","orderby_sec":"","order_date":"","show_pagination":"","show_pagination_results":"","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_readmore":"","show_readmore_title":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 59, 74, 0, '*', 0),
(111, 'mainmenu', 'Content || All com_content views', 'content--all-comcontent-views', '', 'joomla/content--all-comcontent-views', '', 'separator', 1, 110, 2, 0, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu_image":"","menu_text":1}', 60, 67, 0, '*', 0),
(112, 'mainmenu', 'Login || All com_user views', 'login--all-comuser-views', '', 'joomla/login--all-comuser-views', '', 'separator', 1, 110, 2, 0, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu_image":"","menu_text":1}', 68, 73, 0, '*', 0),
(124, 'blogmenu', 'Level 2', 'level-2a', '', 'accordion-a/level-2a', 'index.php?Itemid=', 'alias', 1, 121, 2, 0, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"aliasoptions":"101","menu-anchor_title":"","menu-anchor_css":"","menu_image":""}', 76, 77, 0, '*', 0),
(123, 'blogmenu', 'Accordion B', 'accordion-b', '', 'accordion-b', '', 'separator', 1, 1, 1, 0, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu_image":"","menu_text":1}', 81, 86, 0, '*', 0),
(125, 'blogmenu', 'Level 2', 'level-2b', '', 'accordion-a/level-2b', 'index.php?Itemid=', 'alias', 1, 121, 2, 0, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"aliasoptions":"101","menu-anchor_title":"","menu-anchor_css":"","menu_image":""}', 78, 79, 0, '*', 0),
(126, 'blogmenu', 'Level 2', 'level-2c', '', 'accordion-b/level-2c', 'index.php?Itemid=', 'alias', 1, 123, 2, 0, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"aliasoptions":"101","menu-anchor_title":"","menu-anchor_css":"","menu_image":""}', 82, 83, 0, '*', 0),
(127, 'blogmenu', 'Level 2', 'level-2d', '', 'accordion-b/level-2d', 'index.php?Itemid=', 'alias', 1, 123, 2, 0, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"aliasoptions":"101","menu-anchor_title":"","menu-anchor_css":"","menu_image":""}', 84, 85, 0, '*', 0),
(114, 'mainmenu', 'Category List', 'category-list', '', 'joomla/content--all-comcontent-views/category-list', 'index.php?option=com_content&view=category&id=9', 'component', 1, 111, 3, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_category_title":"","show_description":"","show_description_image":"","maxLevel":"","show_empty_categories":"","show_no_articles":"","show_subcat_desc":"","show_cat_num_articles":"","page_subheading":"","show_pagination_limit":"","filter_field":"","show_headings":"","list_show_date":"","date_format":"","list_show_hits":"","list_show_author":"","show_pagination":"","show_pagination_results":"","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_readmore":"","show_readmore_title":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 61, 62, 0, '*', 0),
(115, 'mainmenu', 'List All Categories', 'list-all-categories', '', 'joomla/content--all-comcontent-views/list-all-categories', 'index.php?option=com_content&view=categories&id=0', 'component', 1, 111, 3, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_base_description":"","categories_description":"","maxLevelcat":"","show_empty_categories_cat":"","show_subcat_desc_cat":"","show_cat_num_articles_cat":"","show_category_title":"","show_description":"","show_description_image":"","maxLevel":"","show_empty_categories":"","show_no_articles":"","show_subcat_desc":"","show_cat_num_articles":"","num_leading_articles":"1","num_intro_articles":"4","num_columns":"2","num_links":"4","multi_column_order":"","orderby_pri":"","orderby_sec":"","order_date":"","show_pagination":"","show_pagination_results":"","show_pagination_limit":"","filter_field":"","show_headings":"","list_show_date":"","date_format":"","list_show_hits":"","list_show_author":"","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_readmore":"","show_readmore_title":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 63, 64, 0, '*', 0),
(116, 'mainmenu', 'Featured Articles', 'featured-articles', '', 'joomla/content--all-comcontent-views/featured-articles', 'index.php?option=com_content&view=featured', 'component', 1, 111, 3, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"num_leading_articles":"1","num_intro_articles":"4","num_columns":"2","num_links":"","multi_column_order":"","orderby_pri":"","orderby_sec":"","order_date":"","show_pagination":"","show_pagination_results":"","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_readmore":"","show_readmore_title":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 65, 66, 0, '*', 0),
(117, 'mainmenu', 'Login Form', 'login-form', '', 'joomla/login--all-comuser-views/login-form', 'index.php?option=com_users&view=login', 'component', 1, 112, 3, 25, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"login_redirect_url":"","logindescription_show":"1","login_description":"","login_image":"","logout_redirect_url":"","logoutdescription_show":"1","logout_description":"","logout_image":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 69, 70, 0, '*', 0),
(118, 'mainmenu', 'Registration Form', 'registration-form', '', 'joomla/login--all-comuser-views/registration-form', 'index.php?option=com_users&view=registration', 'component', 1, 112, 3, 25, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 71, 72, 0, '*', 0),
(121, 'blogmenu', 'Accordion A', 'accordion-a', '', 'accordion-a', 'index.php?option=com_content&view=category&id=9', 'component', 1, 1, 1, 22, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"show_category_title":"","show_description":"","show_description_image":"","maxLevel":"","show_empty_categories":"","show_no_articles":"","show_subcat_desc":"","show_cat_num_articles":"","page_subheading":"","show_pagination_limit":"","filter_field":"","show_headings":"","list_show_date":"","date_format":"","list_show_hits":"","list_show_author":"","orderby_pri":"","orderby_sec":"","order_date":"","show_pagination":"","show_pagination_results":"","display_num":"10","show_title":"","link_titles":"","show_intro":"","show_category":"","link_category":"","show_parent_category":"","link_parent_category":"","show_author":"","link_author":"","show_create_date":"","show_modify_date":"","show_publish_date":"","show_item_navigation":"","show_vote":"","show_readmore":"","show_readmore_title":"","show_icons":"","show_print_icon":"","show_email_icon":"","show_hits":"","show_noauth":"","show_feed_link":"","feed_summary":"","menu-anchor_title":"","menu-anchor_css":"","menu_image":"","menu_text":1,"page_title":"","show_page_heading":0,"page_heading":"","pageclass_sfx":"","menu-meta_description":"","menu-meta_keywords":"","robots":"","secure":0}', 75, 80, 0, '*', 0),
(120, 'mainmenu', 'Warp5 || Template Framework', 'warp5', '', 'template/warp5', 'index.php?Itemid=', 'alias', 1, 105, 2, 0, 0, 0, '0000-00-00 00:00:00', 0, 1, '', 0, '{"aliasoptions":"105","menu-anchor_title":"","menu-anchor_css":"","menu_image":"images\\/yootheme\\/menuicon_warp5.png"}', 48, 49, 0, '*', 0);

-- --------------------------------------------------------

--
-- Table structure for table `#__menu_types`
--

DROP TABLE IF EXISTS `#__menu_types`;
CREATE TABLE IF NOT EXISTS `#__menu_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `menutype` varchar(24) NOT NULL,
  `title` varchar(48) NOT NULL,
  `description` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_menutype` (`menutype`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `#__menu_types`
--

INSERT INTO `#__menu_types` (`id`, `menutype`, `title`, `description`) VALUES
(1, 'mainmenu', '主菜单', '这个站的主菜单'),
(2, 'topmenu', '顶部菜单', ''),
(4, 'blogmenu', '博客菜单', '');

-- --------------------------------------------------------

--
-- Table structure for table `#__messages`
--

DROP TABLE IF EXISTS `#__messages`;
CREATE TABLE IF NOT EXISTS `#__messages` (
  `message_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id_from` int(10) unsigned NOT NULL DEFAULT '0',
  `user_id_to` int(10) unsigned NOT NULL DEFAULT '0',
  `folder_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `date_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `priority` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `subject` varchar(255) NOT NULL DEFAULT '',
  `message` text NOT NULL,
  PRIMARY KEY (`message_id`),
  KEY `useridto_state` (`user_id_to`,`state`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `#__messages`
--


-- --------------------------------------------------------

--
-- Table structure for table `#__messages_cfg`
--

DROP TABLE IF EXISTS `#__messages_cfg`;
CREATE TABLE IF NOT EXISTS `#__messages_cfg` (
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `cfg_name` varchar(100) NOT NULL DEFAULT '',
  `cfg_value` varchar(255) NOT NULL DEFAULT '',
  UNIQUE KEY `idx_user_var_name` (`user_id`,`cfg_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `#__messages_cfg`
--


-- --------------------------------------------------------

--
-- Table structure for table `#__modules`
--

DROP TABLE IF EXISTS `#__modules`;
CREATE TABLE IF NOT EXISTS `#__modules` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  `content` text NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  `position` varchar(50) DEFAULT NULL,
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `module` varchar(50) DEFAULT NULL,
  `access` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `showtitle` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `params` text NOT NULL,
  `client_id` tinyint(4) NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `published` (`published`,`access`),
  KEY `newsfeeds` (`module`,`published`),
  KEY `idx_language` (`language`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=44 ;

--
-- Dumping data for table `#__modules`
--

INSERT INTO `#__modules` (`id`, `title`, `note`, `content`, `ordering`, `position`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `published`, `module`, `access`, `showtitle`, `params`, `client_id`, `language`) VALUES
(1, '主菜单', '', '', 1, 'menu', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 1, 0, '{"menutype":"mainmenu","startLevel":"1","endLevel":"0","showAllChildren":"1","tag_id":"","class_sfx":"menu-dropdown","window_open":"","layout":"_:default","moduleclass_sfx":"style-menu","cache":"1","cache_time":"900","cachemode":"itemid"}', 0, '*'),
(2, 'Login', '', '', 1, 'login', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_login', 1, 1, '', 1, '*'),
(3, 'Popular Articles', '', '', 3, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_popular', 3, 1, '{"count":"5","catid":"","user_id":"0","layout":"_:default","moduleclass_sfx":"","cache":"0","automatic_title":"1"}', 1, '*'),
(4, 'Recently Added Articles', '', '', 4, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_latest', 3, 1, '{"count":"5","ordering":"c_dsc","catid":"","user_id":"0","layout":"_:default","moduleclass_sfx":"","cache":"0","automatic_title":"1"}', 1, '*'),
(6, 'Unread Messages', '', '', 1, 'header', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_unread', 3, 1, '', 1, '*'),
(7, 'Online Users', '', '', 2, 'header', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_online', 3, 1, '', 1, '*'),
(8, 'Toolbar', '', '', 1, 'toolbar', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_toolbar', 3, 1, '', 1, '*'),
(9, 'Quick Icons', '', '', 1, 'icon', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_quickicon', 3, 1, '', 1, '*'),
(10, 'Logged-in Users', '', '', 2, 'cpanel', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_logged', 3, 1, '{"count":"5","name":"1","layout":"_:default","moduleclass_sfx":"","cache":"0","automatic_title":"1"}', 1, '*'),
(12, 'Admin Menu', '', '', 1, 'menu', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 3, 1, '{"layout":"","moduleclass_sfx":"","shownew":"1","showhelp":"1","cache":"0"}', 1, '*'),
(13, 'Admin Submenu', '', '', 1, 'submenu', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_submenu', 3, 1, '', 1, '*'),
(14, 'User Status', '', '', 1, 'status', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_status', 3, 1, '', 1, '*'),
(15, 'Title', '', '', 1, 'title', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_title', 3, 1, '', 1, '*'),
(16, 'Login', '', '', 1, 'menu', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_login', 1, 1, '{"pretext":"","posttext":"","login":"","logout":"","greeting":"1","name":"0","usesecure":"0","layout":"_:default","moduleclass_sfx":"","cache":"0"}', 0, '*'),
(17, 'Breadcrumbs', '', '', 1, 'breadcrumbs', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_breadcrumbs', 1, 1, '{"showHere":"1","showHome":"1","homeText":"Home","showLast":"1","separator":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"itemid"}', 0, '*'),
(19, 'Logo', '', '<p><a href="index.php"><img src="images/logo.png" border="0" /></a></p>', 1, 'logo', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{"prepare_content":"1","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(20, '顶部菜单', '', '', 2, 'toolbarright', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 1, 0, '{"menutype":"topmenu","startLevel":"1","endLevel":"0","showAllChildren":"0","tag_id":"","class_sfx":"","window_open":"","layout":"_:default","moduleclass_sfx":"style-menu","cache":"1","cache_time":"900","cachemode":"itemid"}', 0, '*'),
(21, 'Search', '', '', 1, 'search', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_search', 1, 0, '{"label":"","width":"20","text":"","button":"","button_pos":"right","imagebutton":"","button_text":"","set_itemid":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"itemid"}', 0, '*'),
(22, 'Feeds', '', '<a class="twitter" title="Follow us on Twitter" href="http://twitter.com/yootheme" target="_blank"><img height="24" width="24" alt="Follow us on Twitter" src="images/yootheme/toolbar_twitter.png" /></a>\r\n<a class="rss" title="Subscribe to our RSS feed" href="http://www.yootheme.com/rss" target="_blank"><img height="24" width="24" alt="Subscribe to our RSS feed" src="images/yootheme/toolbar_feed.png" /></a>', 1, 'toolbarright', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{"prepare_content":"1","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(23, 'Bottom (Warp)', '', '<a href="http://warp.yootheme.com" target="_blank" style="display: block; text-align: center; padding-top: 5px;">\r\n  <img class="correct-png" src="images/yootheme/bottom_warp.png" alt="Visit the Warp5 website!" title="Visit the Warp5 website!" width="91" height="35" />\r\n</a>', 4, 'bottom', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{"prepare_content":"1","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(24, 'Bottom (YOOtheme)', '', '<a href="http://www.yootheme.com" target="_blank" style="display: block; text-align: center; padding-top: 5px;">\r\n  <img class="correct-png" src="images/yootheme/bottom_yootheme.png" alt="Visit the YOOtheme website!" title="Visit the YOOtheme website!" width="150" height="35" />\r\n</a>', 1, 'bottom', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{"prepare_content":"1","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(25, 'Bottom (YOOtools)', '', '<a href="http://tools.yootheme.com" target="_blank" style="display: block; text-align: center; padding-top: 5px;">\r\n  <img class="correct-png" src="images/yootheme/bottom_yootools.png" alt="Visit the YOOtools website!" title="Visit the YOOtools website!" width="127" height="35" />\r\n</a>', 2, 'bottom', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{"prepare_content":"1","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(26, 'Bottom (ZOO)', '', '<a href="http://zoo.yootheme.com" target="_blank" style="display: block; text-align: center; padding-top: 5px;">\r\n  <img class="correct-png" src="images/yootheme/bottom_zoo.png" alt="Visit the ZOO website!" title="Visit the ZOO website!" width="58" height="35" />\r\n</a>', 3, 'bottom', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{"prepare_content":"1","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(27, '版权菜单', '', '', 1, 'footer', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 1, 1, '{"menutype":"topmenu","startLevel":"1","endLevel":"0","showAllChildren":"0","tag_id":"","class_sfx":"","window_open":"","layout":"_:default","moduleclass_sfx":"style-menu","cache":"1","cache_time":"900","cachemode":"itemid"}', 0, '*'),
(28, 'Footer', '', 'Validates to <a href="http://validator.w3.org/check?uri=http://www.yootheme.com/demo/themes/joomla/2010/expo&doctype=HTML5" target="_blank">XHTML 1.0</a> and <a href="http://jigsaw.w3.org/css-validator/validator?uri=http://www.yootheme.com/demo/themes/joomla/2010/expo&profile=css3" target="_blank">CSS 3</a>\r\n<p>Copyright © 2010 <a href="http://www.yootheme.com" target="_blank">YOOtheme</a></p>', 1, 'footer', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{"prepare_content":"0","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(29, 'Sub Menu', '', '', 1, 'right', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_menu', 1, 1, '{"menutype":"blogmenu","startLevel":"1","endLevel":"0","showAllChildren":"1","tag_id":"","class_sfx":"menu-accordion","window_open":"","layout":"_:default","moduleclass_sfx":"style-menu","cache":"1","cache_time":"900","cachemode":"itemid"}', 0, '*'),
(30, 'Joomla 1.6 native!', '', 'We updated more than 19 template for Joomla 1.6. All templates are based on our latest Warp 5.5 theme framework!\r\n<p style="margin-bottom: 6px;"><a class="readmore" href="https://www.yootheme.com/blog/item/root/joomla-16-here-we-come" target="_blank">Take a look...</a></p>', 10, 'right', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"1","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(31, 'Warp Features', '', '<ul class="links" style="margin: 0;">\r\n	<li><a href="https://www.yootheme.com/blog/item/root/stay-fresh-with-warp" target="_blank">Update notifications</a></li>\r\n	<li><a href="https://www.yootheme.com/blog/item/root/stay-fresh-with-warp" target="_blank">File verification</a></li>\r\n	<li><a href="https://www.yootheme.com/blog/item/root/stay-fresh-with-warp" target="_blank">New Joomla Overrides</a></li>\r\n	<li><a href="https://www.yootheme.com/blog/item/root/stay-fresh-with-warp" target="_blank">Ajax Search</a></li>\r\n	<li><a href="https://www.yootheme.com/blog/item/root/new-warp-55-framework" target="_blank">CSS/JS/Image Compression</a></li>\r\n	<li><a href="https://www.yootheme.com/blog/item/root/new-warp-55-framework" target="_blank">Mootools 1.2 ready</a></li>\r\n	<li><a href="https://www.yootheme.com/blog/item/root/new-warp-55-framework" target="_blank">Color Presets</a></li>\r\n	<li><a href="http://www.yootheme.com/warp/menu-system" target="_blank">Powerfull Menu System</a></li>\r\n	<li><a href="http://www.yootheme.com/warp/features" target="_blank">And much more...</a></li>\r\n</ul>', 11, 'right', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"1","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(32, 'ZOO', '', '<a href="http://zoo.yootheme.com" target="_blank" style="display: block; text-align: center;">\r\n<img class="correct-png" src="images/yootheme/icon_zoo.png" alt="A flexible and powerful content application builder to manage your content" title="A flexible and powerful content application builder to manage your content" width="140" height="130" />\r\n</a>\r\n<p>A flexible and powerful content application builder to manage your content. Get <a href="http://zoo.yootheme.com" target="_blank">ZOO</a> today.</p>', 4, 'right', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"1","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(33, 'Teamlog', '', '<a href="http://teamlog.yootheme.com" target="_blank" style="display: block; text-align: center;">\r\n<img class="correct-png" src="images/yootheme/icon_teamlog.png" alt="Web based Time Tracking Solution for Joomla! 1.5 focused on simplicity" title="Web based Time Tracking Solution for Joomla! 1.5 focused on simplicity" width="140" height="150" />\r\n</a>\r\n<p>Web based Time Tracking Solution for Joomla! 1.5 focused on simplicity. Get the <a href="http://teamlog.yootheme.com" target="_blank">Teamlog extension</a> for free.</p>', 5, 'right', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"1","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(34, 'Javascript Library', '', 'All client side effects use the JavaScript framework <a href="http://www.mootools.net" target="_blank">MooTools</a> which offers most reliable functionality and compact size!', 8, 'right', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"1","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(35, 'Validating Code', '', '<p>This template validates to XHTML and CSS web standards and is designed to be compatible with all modern browsers.</p>\r\n<p>\r\n  <img class="correct-png" style="margin-right: 10px" src="images/yootheme/browser_firefox.png" alt="Firefox 3.0+" title="Firefox 3.0+" width="20" height="20" />\r\n  <img class="correct-png" style="margin-right: 10px" src="images/yootheme/browser_ie7.png" alt="Internet Explorer 7+" title="Internet Explorer 7+" width="20" height="20" />\r\n  <img class="correct-png" style="margin-right: 10px" src="images/yootheme/browser_safari.png" alt="Safari 3.1+" title="Safari 3.1+" width="20" height="20" />\r\n  <img class="correct-png" style="margin-right: 10px" src="images/yootheme/browser_opera.png" alt="Opera 9.5+" title="Opera 9.5+" width="20" height="20" />\r\n  <img class="correct-png" style="margin-right: 10px" src="images/yootheme/browser_camino.png" alt="Camino 1.0+" title="Camino 1.0+" width="20" height="20" />\r\n  <img class="correct-png" style="margin-right: 10px" src="images/yootheme/browser_konqueror.png" alt="Konqueror" title="Konqueror" width="20" height="20" />\r\n  <img class="correct-png" style="margin-right: 10px" src="images/yootheme/browser_chrome.png" alt="Chrome 1.0+" title="Chrome 1.0+" width="20" height="20" />\r\n</p>', 9, 'right', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 1, '{"prepare_content":"1","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(36, 'Icon Set Homepage', '', '<a href="http://icons.yootheme.com/icon-club#set6" target="_blank" style="display: block; text-align: center; text-decoration: none;">\r\n	<img src="images/yootheme/icons_set06.png" width="128" height="85" alt="Homepage Icon Set" />\r\n	<span style="display: block; font-size: 16px; line-height: 18px; text-transform: uppercase; margin-top: 5px;">Homepage<br />Icon Set</span>\r\n</a>', 1, 'top', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{"prepare_content":"1","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(37, 'Icon Set Community', '', '<a href="http://icons.yootheme.com/icon-club#set4" target="_blank" style="display: block; text-align: center; text-decoration: none;">\r\n	<img src="images/yootheme/icons_set04.png" width="128" height="85" alt="Community Icon Set" />\r\n	<span style="display: block; font-size: 16px; line-height: 18px; text-transform: uppercase; margin-top: 5px;">Community<br />Icon Set</span>\r\n</a>', 0, 'top', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{"prepare_content":"1","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(38, 'Icon Set Actions', '', '<a href="http://icons.yootheme.com/icon-club#set3" target="_blank" style="display: block; text-align: center; text-decoration: none;">\r\n	<img src="images/yootheme/icons_set03.png" width="128" height="85" alt="Actions Icon Set" />\r\n	<span style="display: block; font-size: 16px; line-height: 18px; text-transform: uppercase; margin-top: 5px;">Actions<br />Icon Set</span>\r\n</a>', 0, 'top', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{"prepare_content":"1","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(39, 'Icon Set Symbols', '', '<a href="http://icons.yootheme.com/icon-club#set2" target="_blank" style="display: block; text-align: center; text-decoration: none;">\r\n	<img src="images/yootheme/icons_set02.png" width="128" height="85" alt="Symbols Icon Set" />\r\n	<span style="display: block; font-size: 16px; line-height: 18px; text-transform: uppercase; margin-top: 5px;">Symbols<br />Icon Set</span>\r\n</a>', 0, 'top', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_custom', 1, 0, '{"prepare_content":"1","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(40, 'Who''s online', '', '', 7, 'right', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_whosonline', 1, 1, '{"showmode":"0","linknames":"0","linktowhat":"0","layout":"_:default","moduleclass_sfx":"","cache":"0"}', 0, '*'),
(41, 'Login', '', '', 7, 'right', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_login', 1, 1, '{"pretext":"","posttext":"","login":"","logout":"","greeting":"1","name":"0","usesecure":"0","layout":"_:default","moduleclass_sfx":"","cache":"0"}', 0, '*'),
(42, 'Most Read Content', '', '', 2, 'right', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_articles_popular', 1, 1, '{"show_front":"1","count":"5","catid":["7","8","9"],"layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*'),
(43, 'Latest News', '', '', 3, 'right', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 1, 'mod_articles_latest', 1, 1, '{"catid":["7","8","9"],"count":"2","ordering":"c_dsc","user_id":"0","show_featured":"","layout":"_:default","moduleclass_sfx":"","cache":"1","cache_time":"900","cachemode":"static"}', 0, '*');

-- --------------------------------------------------------

--
-- Table structure for table `#__modules_menu`
--

DROP TABLE IF EXISTS `#__modules_menu`;
CREATE TABLE IF NOT EXISTS `#__modules_menu` (
  `moduleid` int(11) NOT NULL DEFAULT '0',
  `menuid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`moduleid`,`menuid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `#__modules_menu`
--

INSERT INTO `#__modules_menu` (`moduleid`, `menuid`) VALUES
(1, 0),
(2, 0),
(3, 0),
(4, 0),
(6, 0),
(7, 0),
(8, 0),
(9, 0),
(10, 0),
(12, 0),
(13, 0),
(14, 0),
(15, 0),
(16, 0),
(17, 0),
(18, 0),
(19, 0),
(20, 0),
(21, 0),
(22, 0),
(23, 0),
(24, 0),
(25, 0),
(26, 0),
(27, 0),
(28, 0),
(29, 101),
(30, 101),
(31, 101),
(32, 105),
(32, 106),
(32, 120),
(33, 105),
(33, 106),
(33, 120),
(34, 105),
(34, 120),
(35, 105),
(35, 120),
(36, 109),
(37, 109),
(38, 109),
(39, 109),
(40, 110),
(40, 111),
(40, 112),
(40, 113),
(40, 114),
(40, 115),
(40, 116),
(40, 117),
(40, 118),
(41, 110),
(41, 111),
(41, 112),
(41, 113),
(41, 114),
(41, 115),
(41, 116),
(41, 117),
(41, 118),
(42, 110),
(42, 111),
(42, 112),
(42, 113),
(42, 114),
(42, 115),
(42, 116),
(42, 117),
(42, 118),
(43, 110),
(43, 111),
(43, 112),
(43, 113),
(43, 114),
(43, 115),
(43, 116),
(43, 117),
(43, 118);

-- --------------------------------------------------------

--
-- Table structure for table `#__newsfeeds`
--

DROP TABLE IF EXISTS `#__newsfeeds`;
CREATE TABLE IF NOT EXISTS `#__newsfeeds` (
  `catid` int(11) NOT NULL DEFAULT '0',
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL DEFAULT '',
  `alias` varchar(100) NOT NULL DEFAULT '',
  `link` varchar(200) NOT NULL DEFAULT '',
  `filename` varchar(200) DEFAULT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `numarticles` int(10) unsigned NOT NULL DEFAULT '1',
  `cache_time` int(10) unsigned NOT NULL DEFAULT '3600',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `rtl` tinyint(4) NOT NULL DEFAULT '0',
  `access` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL DEFAULT '',
  `params` text NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `metadata` text NOT NULL,
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`published`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `#__newsfeeds`
--


-- --------------------------------------------------------

--
-- Table structure for table `#__redirect_links`
--

DROP TABLE IF EXISTS `#__redirect_links`;
CREATE TABLE IF NOT EXISTS `#__redirect_links` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `old_url` varchar(150) NOT NULL,
  `new_url` varchar(150) NOT NULL,
  `referer` varchar(150) NOT NULL,
  `comment` varchar(255) NOT NULL,
  `published` tinyint(4) NOT NULL,
  `created_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_link_old` (`old_url`),
  KEY `idx_link_modifed` (`modified_date`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=15 ;

--
-- Dumping data for table `#__redirect_links`
--

INSERT INTO `#__redirect_links` (`id`, `old_url`, `new_url`, `referer`, `comment`, `published`, `created_date`, `modified_date`) VALUES
(1, 'http://192.168.1.50/YOOtheme/Templates/Joomla16/index.php/joomla/content--all-comcontent-views/images/yootheme/icon_modulevariations.png', '', 'http://192.168.1.50/YOOtheme/Templates/Joomla16/index.php/joomla/content--all-comcontent-views/list-all-categories/8-yootheme', '', 0, '2011-01-11 10:13:42', '0000-00-00 00:00:00'),
(2, 'http://192.168.1.50/YOOtheme/Templates/Joomla16/index.php/joomla/content--all-comcontent-views/images/yootheme/icon_modulesystem.png', '', 'http://192.168.1.50/YOOtheme/Templates/Joomla16/index.php/joomla/content--all-comcontent-views/list-all-categories/8-yootheme', '', 0, '2011-01-11 10:13:43', '0000-00-00 00:00:00'),
(3, 'http://192.168.1.50/YOOtheme/Templates/Joomla16/index.php/joomla/content--all-comcontent-views/images/yootheme/icon_fireworks.png', '', 'http://192.168.1.50/YOOtheme/Templates/Joomla16/index.php/joomla/content--all-comcontent-views/list-all-categories/8-yootheme', '', 0, '2011-01-11 10:13:43', '0000-00-00 00:00:00'),
(4, 'http://192.168.1.50/YOOtheme/Templates/Joomla16/index.php/joomla/content--all-comcontent-views/images/yootheme/icon_menusystem.png', '', 'http://192.168.1.50/YOOtheme/Templates/Joomla16/index.php/joomla/content--all-comcontent-views/list-all-categories/8-yootheme', '', 0, '2011-01-11 10:13:43', '0000-00-00 00:00:00'),
(5, 'http://192.168.1.50/YOOtheme/Templates/Joomla16/index.php/joomla/content--all-comcontent-views/images/yootheme/icon_typography.png', '', 'http://192.168.1.50/YOOtheme/Templates/Joomla16/index.php/joomla/content--all-comcontent-views/list-all-categories/8-yootheme', '', 0, '2011-01-11 10:13:43', '0000-00-00 00:00:00'),
(6, 'http://192.168.1.50/YOOtheme/Templates/Joomla16/index.php/joomla/content--all-comcontent-views/images/yootheme/icon_installation.png', '', 'http://192.168.1.50/YOOtheme/Templates/Joomla16/index.php/joomla/content--all-comcontent-views/list-all-categories/8-yootheme', '', 0, '2011-01-11 10:13:43', '0000-00-00 00:00:00'),
(7, 'http://192.168.1.50/YOOtheme/Templates/Joomla16/index.php/joomla/content--all-comcontent-views/index.php', '', 'http://192.168.1.50/YOOtheme/Templates/Joomla16/index.php/joomla/content--all-comcontent-views/list-all-categories', '', 0, '2011-01-11 10:27:46', '0000-00-00 00:00:00'),
(8, 'http://192.168.1.50/YOOtheme/Templates/Joomla16/index.php/images/yootheme/icon_typography.png', '', 'http://192.168.1.50/YOOtheme/Templates/Joomla16/index.php/template', '', 0, '2011-01-11 12:38:29', '0000-00-00 00:00:00'),
(9, 'http://192.168.1.50/YOOtheme/Templates/Joomla16/index.php/images/yootheme/icon_installation.png', '', 'http://192.168.1.50/YOOtheme/Templates/Joomla16/index.php/template', '', 0, '2011-01-11 12:38:29', '0000-00-00 00:00:00'),
(10, 'http://192.168.1.50/YOOtheme/Templates/Joomla16/index.php/images/yootheme/icon_menusystem.png', '', 'http://192.168.1.50/YOOtheme/Templates/Joomla16/index.php/template', '', 0, '2011-01-11 12:38:29', '0000-00-00 00:00:00'),
(11, 'http://192.168.1.50/YOOtheme/Templates/Joomla16/index.php/images/yootheme/icon_modulesystem.png', '', 'http://192.168.1.50/YOOtheme/Templates/Joomla16/index.php/template', '', 0, '2011-01-11 12:38:29', '0000-00-00 00:00:00'),
(12, 'http://192.168.1.50/YOOtheme/Templates/Joomla16/index.php/images/yootheme/icon_fireworks.png', '', 'http://192.168.1.50/YOOtheme/Templates/Joomla16/index.php/template', '', 0, '2011-01-11 12:38:29', '0000-00-00 00:00:00'),
(13, 'http://192.168.1.50/YOOtheme/Templates/Joomla16/index.php/images/yootheme/icon_modulevariations.png', '', 'http://192.168.1.50/YOOtheme/Templates/Joomla16/index.php/template', '', 0, '2011-01-11 12:38:29', '0000-00-00 00:00:00'),
(14, 'http://192.168.1.50/YOOtheme/Templates/Joomla16/index.php?Itemid=107', '', 'http://192.168.1.50/YOOtheme/Templates/Joomla16/index.php/template', '', 0, '2011-01-11 12:45:40', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `#__schemas`
--

DROP TABLE IF EXISTS `#__schemas`;
CREATE TABLE IF NOT EXISTS `#__schemas` (
  `extension_id` int(11) NOT NULL,
  `version_id` varchar(20) NOT NULL,
  PRIMARY KEY (`extension_id`,`version_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `#__schemas`
--


-- --------------------------------------------------------

--
-- Table structure for table `#__session`
--

DROP TABLE IF EXISTS `#__session`;
CREATE TABLE IF NOT EXISTS `#__session` (
  `session_id` varchar(32) NOT NULL DEFAULT '',
  `client_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `guest` tinyint(4) unsigned DEFAULT '1',
  `time` varchar(14) DEFAULT '',
  `data` varchar(20480) DEFAULT NULL,
  `userid` int(11) DEFAULT '0',
  `username` varchar(150) DEFAULT '',
  `usertype` varchar(50) DEFAULT '',
  PRIMARY KEY (`session_id`),
  KEY `whosonline` (`guest`,`usertype`),
  KEY `userid` (`userid`),
  KEY `time` (`time`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `#__session`
--

INSERT INTO `#__session` (`session_id`, `client_id`, `guest`, `time`, `data`, `userid`, `username`, `usertype`) VALUES
('6g22t85kvjtair36cnjobdqjt4', 0, 1, '1295490329', 'IxQMZB2X1nkep4f8QDtuvQjFyJ75veDca96RfihQU2TRGulQaAxJ4PO2-NthTi2GwLHcWZL2z_Ygg7Munp5GOKwveBCCl8fh5tcrcbTomYAn_bFl-F1EQ7dGJQLAN6SEB0qlv-IzeI4629J5OgemvHJYbNkoTC2q7sEQIfrUHIowNdARjSv3xZteylQJf5ODD2veRaYE0J-wOPF5zxO6OVxMuGIL_NW39lT3Y73V0kAdwR2AvS2CsG8MzSitIMy15gyb9HitEF9GFv2RgiE2IEUbZNrdYtU8AACr4SazX89g9EkC639q9M2XlDoBrkr4_TA5RgUmymyT-imWhijQMyMcQpv1mAOqcLEgqcAOnTFbb69cx9gV579KKdXb6sCYxILaDUstTl4GMB3ZkWTTJ940usagtuukfWIeFcHq_O-jTXHZvPKB0Pm8W09cPV34PMClXurZmypkoQtEFLpXfRQfSNAOU5_HyGYI6TthL3FC9mz34Q_f2-KwIqQHP4JpeAsJrDPoHilN5X2P3x51IZdBpAkkpHLWhI_ZXNeWrAeJ5WGiKVbStASj7XhZFHsX8Lvo1e9uFmZphTjbynTC3pRKMwNrIxkasX1foyrRKpYTizKDS1sLIB6MwPv2cK7dBggKPd_woZXKoH3fuDoj6d1syiAQy3v9_oyEAJ87vc4Pv-6xDN9TZY0FjwKgBncFe-C1Q5cm_x4tMFIRBtvCPdwLqZMekHILtAT_1LSUTpE-uAfTxLQ_SyrKI5E7LfitU2wYs66eQuVbJ7iMcQW_OYSP_Kd2rE8pPibrAd_mLP6oP1Cf7eTyemGSrC9gzC_zuJYxI9mk9PIkB9dWpwi7VwStdtF9fKGk7Rvm2kQbnJhiiGe0X8mziHRQ7Dd5G86IA6G2iUNN_0URcxdlG55EOMlJPEh9Ypg8WxexE3u7oWr4yKIn7FLxFFrIVt2DtFhp411fRjf9yNsAd--oUqKXh9fl0SOMdxOuVoMRciWvAxxvOMW1JMnUhk7TRZxGoljH31Vz2Jp2N0tyRKDsTKVYaHxxiI3xujhtAUrtsM9E7lHkRbauNgZUJpVRrtUltVBGiGXt9gHKI5U0UAXduJlqa8AC_6CcJWGip7CgyIEyV4hLlClTQxxkWQWsKoi-OWfiianFIN33iUe8z5wY2xO8_taVezx94vMJ4ra24Pm4Av6jNbTdEgjWsT8VkmVAVI5d62yTBkFUCJu9eaPRodiGuubZQxMP8BT_Wkyo_hfrq4O3DkN5jtJM5WDRfiDNL2nOTTDe5FWLwU_3_gApEaxN1uAyVfPKqY5hfEzOb5fNAF-gVGdyR3vtXrUqgNOnI4UQ9tcPMsIfWN_AI2PU92Urpw..', 0, '', ''),
('gido9u1rh7822f85k3f7l38341', 1, 0, '1295490423', 'LrFWJfTKkPxX-1VBMA2bAdTIApU4FtNvcTal3aeZxfVPaUwFbldWa91-qbusr8txySoW8XTkUbJ_etlNlvowDc6DjdEHj2hN7vzZ0o4-yWR2i7qDBepAaajYhL7Hxc33QsGxtLcUJ_32kaCacOLQOExFJbdRAa9EtGSpydJdtwC6-41DNtPfePVQAOHApGJh3H_53nJkrenVf2Ce0zee_CCW5_8imr9sZ6A9SOmOEx4ctciiNbbge8RJvjr7f_sk21ZXVVd1G3cAFO--XzSDUMKAoYyG-t4OQD6_CHSus5-HixmNJwxCpEsr4of6wL8HEZ8MLCp3uOyAigTi9ujtBAH8QX0F2Qmgfqgcq0-CjCmIYvwEV-ZD3fIdS1PTgCF5-4TK-TaOeA2LYV11DyPuyBBl_smYH3foAbbwZpofm-AHmfSeiwcIJQ5VT-Zkpov0ZRIU0mwvLsbNfERZxVt82p41LSDIy5bmmJ1baQmcV9gV6NF2Ao_kU8Y5xID9MZ60CTAqWWgJDU5WQquP1yoCTTYx-wm4Cim0EbZ4O9cWa1HOYhKqvAqQlNS6hjW3QrRbqQH9-t3uY7wjGSvcA12KAauPlC8Q2_oIDhDYv__ZNBceAh0VXid-gieSJRGmz5TUZYCVbKmp-Ge9Xd1sSgbv49RrJCdt51yQQURzqkJ4S-Aq820E-RbB8w3XLDRSA57fQSoWck7HczP_rGbHKGUa9DsCh2EXxe_Yq4McQhFIX4LES_Mb9JpCpOygs9G2R7hVtIK9PmOcOcWVwSUY9Px62yxfS9ZZlsprz1VT0IsvPlL12lxxjVFMNLViEXm2xkH50YUGLx0YMdwU2P8fENuIhB68M9fuPlhjFRk-HOQiYOV2mAgqzPdg3oknj8IVsUbtBIT6JOJx7932yGMnhM4DvwcpOFOYiTH2vPAq8xz7h3oJnCBL1ZAD67XhYYlkII76NkfpcBAzm5yuFBkkje_G0E5DZpOkS4atJrNVW6XSDeEQsCiOKuh2Jhps6ELu21cLBY5e4bOrxyteciFCgtlUeMBxZz8_CvxTjfWsLvA86fZHMv4gJucwHMngq_u6YwIXGGj1SMFdgXJF7tLc_yTory1cQKVV-0Hj-IW4fIybYNTKXjJMGdM0LD_Q6LFdL2HeaADaF2XIfXr-pTa1rFQfisdKAaj2-HSWDwIPUaQbJZGjJwK0LIfd6fJfNQ6sWf6xmlS43xlwNvWSWM4PeFRzjfCyf0_Z-x1riT_-eFseI-35r_4xZivGfgINFJFwB_N4PULPYkimfwFUviLZJIaW8aRm07tubf4EAin_b_8ypqtFWZM_gTozsVWMRGCNUBPrRBXajGCGBURWqE5UNcOBIzBVVgNEnsu72LklgsZEpSUDA1T720pFNLPQWA7UW8rR3oyxuL02Ow2c3MvyGp4kicKulEFC-lN-38vdog5af27ZAbWKo5X6Ok803yJYk5u_k8Nz29Hx-kSLkaQnbmvThA3x0S5NXXDskfmHVMuZ5ma69WVQXwHVc-tryPgpFZrINWFLPm8WyrqN8jut5xv-yojOv-wn77by7tEIvnxTtURhQExuSJIr4guG5RTfqeDomh8MkReFx9TOQ7t4rU-5kRoA0_Mta__p6EYDi9rFDEWAX4FT0CSjxtcveIaza1nUGEu-uLb7yQnY9NqFfFAxsKCm1xg_ZaRujLnn2V2EsCB7jwtq1jlvq4tm78VbDMFLb3sB54ZR6yVNuO-qgu1jhzaWEtR7FaA7VLSlNZyfayg.', 42, 'admin', '');

-- --------------------------------------------------------

--
-- Table structure for table `#__template_styles`
--

DROP TABLE IF EXISTS `#__template_styles`;
CREATE TABLE IF NOT EXISTS `#__template_styles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `template` varchar(50) NOT NULL DEFAULT '',
  `client_id` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `home` char(7) NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `params` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_template` (`template`),
  KEY `idx_home` (`home`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `#__template_styles`
--

INSERT INTO `#__template_styles` (`id`, `template`, `client_id`, `home`, `title`, `params`) VALUES
(2, 'bluestork', 1, '1', 'Bluestork', '{"useRoundedCorners":"1","showSiteName":"0"}'),
(10, 'yoo_crystal', 0, '0', 'yoo_crystal', '{"presets":"{}","allow_dynamic_preset":"1","color":"default","template_width":"980","template_width_unit":"px","date":"1","compression":"0","left_width":"200","left_space":"15","right_width":"200","right_space":"15","contentleft_width":"200","contentleft_space":"0","contentright_width":"200","contentright_space":"0","menu_width":"300"}'),
(9, 'yoo_bloc', 0, '0', 'yoo_bloc', '{"presets":"{}","allow_dynamic_preset":"1","color":"default","template_width":"840","template_width_unit":"px","date":"1","compression":"0","left_width":"210","left_space":"20","right_width":"210","right_space":"0","contentleft_width":"210","contentleft_space":"0","contentright_width":"210","contentright_space":"0","menu_width":"250"}'),
(8, 'yoo_air', 0, '0', 'yoo_air', '{"presets":"{}","allow_dynamic_preset":"1","menubar":"default","color":"default","background":"default","font":"default","template_width":"980","template_width_unit":"px","date":"1","load_googlefonts":"0","compression":"0","left_width":"250","left_space":"10","right_width":"250","right_space":"10","contentleft_width":"250","contentleft_space":"10","contentright_width":"250","contentright_space":"10","menu_width":"250"}'),
(11, 'yoo_enterprise', 0, '0', 'yoo_enterprise', '{"presets":"{}","allow_dynamic_preset":"1","color":"default","template_width":"980","template_width_unit":"px","date":"1","compression":"0","left_width":"245","left_space":"0","right_width":"245","right_space":"0","contentleft_width":"245","contentleft_space":"0","contentright_width":"245","contentright_space":"0","menu_width":"250"}'),
(12, 'yoo_explorer', 0, '0', 'yoo_explorer', '{"presets":"{}","allow_dynamic_preset":"1","color":"default","template_width":"900","template_width_unit":"px","date":"1","compression":"0","left_width":"220","left_space":"15","right_width":"220","right_space":"15","contentleft_width":"200","contentleft_space":"15","contentright_width":"200","contentright_space":"15","menu_width":"250"}'),
(13, 'yoo_flux', 0, '0', 'yoo_flux', '{"presets":"{}","allow_dynamic_preset":"1","color":"default","template_width":"980","template_width_unit":"px","date":"1","compression":"0","left_width":"200","left_space":"15","right_width":"200","right_space":"15","contentleft_width":"200","contentleft_space":"15","contentright_width":"200","contentright_space":"15","menu_width":"250"}'),
(14, 'yoo_intro', 0, '0', 'yoo_intro', '{"presets":"{}","allow_dynamic_preset":"1","color":"default","template_width":"940","template_width_unit":"px","date":"1","compression":"0","left_width":"270","left_space":"0","right_width":"270","right_space":"0","contentleft_width":"200","contentleft_space":"0","contentright_width":"200","contentright_space":"0","menu_width":"200"}'),
(15, 'yoo_mellow', 0, '0', 'yoo_mellow', '{"presets":"{}","allow_dynamic_preset":"1","color":"default","template_width":"940","template_width_unit":"px","date":"1","compression":"0","left_width":"200","left_space":"10","right_width":"200","right_space":"10","contentleft_width":"190","contentleft_space":"5","contentright_width":"190","contentright_space":"5","menu_width":"320"}'),
(16, 'yoo_neo', 0, '0', 'yoo_neo', '{"presets":"{}","allow_dynamic_preset":"1","color":"default","template_width":"840","template_width_unit":"px","date":"1","load_googlefonts":"0","compression":"0","left_width":"250","left_space":"0","right_width":"250","right_space":"0","contentleft_width":"200","contentleft_space":"0","contentright_width":"200","contentright_space":"0","menu_width":"250"}'),
(17, 'yoo_noble', 0, '0', 'yoo_noble', '{"presets":"{}","allow_dynamic_preset":"1","color":"default","background":"default","texture":"default","illustration":"default","font":"default","template_width":"1000","template_width_unit":"px","date":"1","load_googlefonts":"0","compression":"0","left_width":"150","left_space":"20","right_width":"150","right_space":"20","contentleft_width":"220","contentleft_space":"0","contentright_width":"220","contentright_space":"0","menu_width":"200"}'),
(18, 'yoo_phoenix', 0, '0', 'yoo_phoenix', '{"presets":"{}","allow_dynamic_preset":"1","color":"default","template_width":"960","template_width_unit":"px","date":"1","compression":"0","left_width":"200","left_space":"15","right_width":"200","right_space":"15","contentleft_width":"195","contentleft_space":"15","contentright_width":"195","contentright_space":"15","menu_width":"300"}'),
(19, 'yoo_planet', 0, '0', 'yoo_planet', '{"presets":"{}","allow_dynamic_preset":"1","color":"default","template_width":"900","template_width_unit":"px","date":"1","compression":"0","left_width":"220","left_space":"5","right_width":"220","right_space":"5","contentleft_width":"220","contentleft_space":"5","contentright_width":"220","contentright_space":"5","menu_width":"250"}'),
(20, 'yoo_pure', 0, '0', 'yoo_pure', '{"presets":"{}","allow_dynamic_preset":"1","style":"default","color":"default","texture":"default","font":"default","template_width":"980","template_width_unit":"px","date":"1","load_googlefonts":"0","compression":"0","left_width":"240","left_space":"0","right_width":"240","right_space":"0","contentleft_width":"240","contentleft_space":"0","contentright_width":"240","contentright_space":"0","menu_width":"250"}'),
(21, 'yoo_royalplaza', 0, '0', 'yoo_royalplaza', '{"presets":"{}","allow_dynamic_preset":"1","color":"default","template_width":"840","template_width_unit":"px","date":"1","compression":"0","left_width":"210","left_space":"15","right_width":"210","right_space":"15","contentleft_width":"210","contentleft_space":"15","contentright_width":"210","contentright_space":"15","menu_width":"250"}'),
(22, 'yoo_spark', 0, '0', 'yoo_spark', '{"presets":"{}","allow_dynamic_preset":"1","style":"default","background":"default","bganimation":"1","font":"default","template_width":"900","template_width_unit":"px","date":"1","load_googlefonts":"0","compression":"0","left_width":"240","left_space":"0","right_width":"240","right_space":"0","contentleft_width":"240","contentleft_space":"0","contentright_width":"240","contentright_space":"0","menu_width":"250"}'),
(23, 'yoo_studio', 0, '0', 'yoo_studio', '{"allow_dynamic_preset":"1","color":"red","template_width":"960","template_width_unit":"px","date":"1","compression":"0","left_width":"280","left_space":"0","right_width":"280","right_space":"0","menu_width":"250"}'),
(24, 'yoo_symphony', 0, '0', 'yoo_symphony', '{"presets":"{}","allow_dynamic_preset":"1","color":"default","template_width":"880","template_width_unit":"px","date":"1","compression":"0","left_width":"200","left_space":"0","right_width":"200","right_space":"0","contentleft_width":"200","contentleft_space":"15","contentright_width":"200","contentright_space":"15","menu_width":"250"}'),
(25, 'yoo_vox', 0, '0', 'yoo_vox', '{"allow_dynamic_preset":"1","color":"flaresred","template_width":"940","template_width_unit":"px","date":"1","compression":"0","left_width":"239","left_space":"16","right_width":"239","right_space":"16","contentleft_width":"200","contentleft_space":"15","contentright_width":"200","contentright_space":"15","menu_width":"250"}'),
(26, 'yoo_expo', 0, '1', 'yoo_expo', '{"allow_dynamic_preset":"1","style":"default","background":"ocean","wrapper":"glass","font":"default","template_width":"980","template_width_unit":"px","date":"1","load_googlefonts":"0","compression":"0","left_width":"250","left_space":"10","right_width":"250","right_space":"10","contentleft_width":"250","contentleft_space":"10","contentright_width":"250","contentright_space":"10","menu_width":"250"}'),
(27, 'yoo_vanilla', 0, '0', 'yoo_vanilla', '{"presets":"{}","allow_dynamic_preset":"1","style":"plain","bgcolor":"blue","color":"blue","contentwrapper":"0","font":"default","template_width":"960","template_width_unit":"px","date":"1","load_googlefonts":"0","compression":"0","left_width":"240","left_space":"0","right_width":"240","right_space":"0","contentleft_width":"240","contentleft_space":"0","contentright_width":"240","contentright_space":"0","menu_width":"250"}');

-- --------------------------------------------------------

--
-- Table structure for table `#__updates`
--

DROP TABLE IF EXISTS `#__updates`;
CREATE TABLE IF NOT EXISTS `#__updates` (
  `update_id` int(11) NOT NULL AUTO_INCREMENT,
  `update_site_id` int(11) DEFAULT '0',
  `extension_id` int(11) DEFAULT '0',
  `categoryid` int(11) DEFAULT '0',
  `name` varchar(100) DEFAULT '',
  `description` text NOT NULL,
  `element` varchar(100) DEFAULT '',
  `type` varchar(20) DEFAULT '',
  `folder` varchar(20) DEFAULT '',
  `client_id` tinyint(3) DEFAULT '0',
  `version` varchar(10) DEFAULT '',
  `data` text NOT NULL,
  `detailsurl` text NOT NULL,
  PRIMARY KEY (`update_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Available Updates' AUTO_INCREMENT=1 ;

--
-- Dumping data for table `#__updates`
--


-- --------------------------------------------------------

--
-- Table structure for table `#__update_categories`
--

DROP TABLE IF EXISTS `#__update_categories`;
CREATE TABLE IF NOT EXISTS `#__update_categories` (
  `categoryid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT '',
  `description` text NOT NULL,
  `parent` int(11) DEFAULT '0',
  `updatesite` int(11) DEFAULT '0',
  PRIMARY KEY (`categoryid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Update Categories' AUTO_INCREMENT=1 ;

--
-- Dumping data for table `#__update_categories`
--


-- --------------------------------------------------------

--
-- Table structure for table `#__update_sites`
--

DROP TABLE IF EXISTS `#__update_sites`;
CREATE TABLE IF NOT EXISTS `#__update_sites` (
  `update_site_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT '',
  `type` varchar(20) DEFAULT '',
  `location` text NOT NULL,
  `enabled` int(11) DEFAULT '0',
  PRIMARY KEY (`update_site_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COMMENT='Update Sites' AUTO_INCREMENT=3 ;

--
-- Dumping data for table `#__update_sites`
--

INSERT INTO `#__update_sites` (`update_site_id`, `name`, `type`, `location`, `enabled`) VALUES
(1, 'Joomla Core', 'collection', 'http://update.joomla.org/core/list.xml', 1),
(2, 'Joomla Extension Directory', 'collection', 'http://update.joomla.org/jed/list.xml', 1);

-- --------------------------------------------------------

--
-- Table structure for table `#__update_sites_extensions`
--

DROP TABLE IF EXISTS `#__update_sites_extensions`;
CREATE TABLE IF NOT EXISTS `#__update_sites_extensions` (
  `update_site_id` int(11) NOT NULL DEFAULT '0',
  `extension_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`update_site_id`,`extension_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Links extensions to update sites';

--
-- Dumping data for table `#__update_sites_extensions`
--

INSERT INTO `#__update_sites_extensions` (`update_site_id`, `extension_id`) VALUES
(1, 700),
(2, 700);

-- --------------------------------------------------------

--
-- Table structure for table `#__usergroups`
--

DROP TABLE IF EXISTS `#__usergroups`;
CREATE TABLE IF NOT EXISTS `#__usergroups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Adjacency List Reference Id',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `title` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_usergroup_parent_title_lookup` (`parent_id`,`title`),
  KEY `idx_usergroup_title_lookup` (`title`),
  KEY `idx_usergroup_adjacency_lookup` (`parent_id`),
  KEY `idx_usergroup_nested_set_lookup` (`lft`,`rgt`) USING BTREE
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `#__usergroups`
--

INSERT INTO `#__usergroups` (`id`, `parent_id`, `lft`, `rgt`, `title`) VALUES
(1, 0, 1, 20, 'Public'),
(2, 1, 6, 17, 'Registered'),
(3, 2, 7, 14, 'Author'),
(4, 3, 8, 11, 'Editor'),
(5, 4, 9, 10, 'Publisher'),
(6, 1, 2, 5, 'Manager'),
(7, 6, 3, 4, 'Administrator'),
(8, 1, 18, 19, 'Super Users');

-- --------------------------------------------------------

--
-- Table structure for table `#__users`
--

DROP TABLE IF EXISTS `#__users`;
CREATE TABLE IF NOT EXISTS `#__users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `username` varchar(150) NOT NULL DEFAULT '',
  `email` varchar(100) NOT NULL DEFAULT '',
  `password` varchar(100) NOT NULL DEFAULT '',
  `usertype` varchar(25) NOT NULL DEFAULT '',
  `block` tinyint(4) NOT NULL DEFAULT '0',
  `sendEmail` tinyint(4) DEFAULT '0',
  `registerDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `lastvisitDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `activation` varchar(100) NOT NULL DEFAULT '',
  `params` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `usertype` (`usertype`),
  KEY `idx_name` (`name`),
  KEY `idx_block` (`block`),
  KEY `username` (`username`),
  KEY `email` (`email`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=43 ;


-- --------------------------------------------------------

--
-- Table structure for table `#__user_profiles`
--

DROP TABLE IF EXISTS `#__user_profiles`;
CREATE TABLE IF NOT EXISTS `#__user_profiles` (
  `user_id` int(11) NOT NULL,
  `profile_key` varchar(100) NOT NULL,
  `profile_value` varchar(255) NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  UNIQUE KEY `idx_user_id_profile_key` (`user_id`,`profile_key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='Simple user profile storage table';

--
-- Dumping data for table `#__user_profiles`
--


-- --------------------------------------------------------

--
-- Table structure for table `#__user_usergroup_map`
--

DROP TABLE IF EXISTS `#__user_usergroup_map`;
CREATE TABLE IF NOT EXISTS `#__user_usergroup_map` (
  `user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Foreign Key to #__users.id',
  `group_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Foreign Key to #__usergroups.id',
  PRIMARY KEY (`user_id`,`group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


-- --------------------------------------------------------

--
-- Table structure for table `#__viewlevels`
--

DROP TABLE IF EXISTS `#__viewlevels`;
CREATE TABLE IF NOT EXISTS `#__viewlevels` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `title` varchar(100) NOT NULL DEFAULT '',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `rules` varchar(5120) NOT NULL COMMENT 'JSON encoded access control.',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_assetgroup_title_lookup` (`title`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `#__viewlevels`
--

INSERT INTO `#__viewlevels` (`id`, `title`, `ordering`, `rules`) VALUES
(1, 'Public', 0, '[1]'),
(2, 'Registered', 1, '[6,2,8]'),
(3, 'Special', 2, '[6,3,8]');

-- --------------------------------------------------------

--
-- Table structure for table `#__weblinks`
--

DROP TABLE IF EXISTS `#__weblinks`;
CREATE TABLE IF NOT EXISTS `#__weblinks` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `catid` int(11) NOT NULL DEFAULT '0',
  `sid` int(11) NOT NULL DEFAULT '0',
  `title` varchar(250) NOT NULL DEFAULT '',
  `alias` varchar(255) NOT NULL DEFAULT '',
  `url` varchar(250) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hits` int(11) NOT NULL DEFAULT '0',
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `archived` tinyint(1) NOT NULL DEFAULT '0',
  `approved` tinyint(1) NOT NULL DEFAULT '1',
  `access` int(11) NOT NULL DEFAULT '1',
  `params` text NOT NULL,
  `language` char(7) NOT NULL DEFAULT '',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `metadata` text NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Set if link is featured.',
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`state`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_featured_catid` (`featured`,`catid`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `#__weblinks`
--

