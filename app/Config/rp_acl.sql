-- phpMyAdmin SQL Dump
-- version 3.4.11.1deb1.precise~ppa.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jan 04, 2013 at 07:32 PM
-- Server version: 5.5.28
-- PHP Version: 5.3.10-1ubuntu3.4

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `rp_acl`
--

-- --------------------------------------------------------

--
-- Table structure for table `acos`
--

CREATE TABLE IF NOT EXISTS `acos` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) DEFAULT NULL,
  `model` varchar(255) DEFAULT NULL,
  `foreign_key` int(10) DEFAULT NULL,
  `alias` varchar(255) DEFAULT NULL,
  `lft` int(10) DEFAULT NULL,
  `rght` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=132 ;

--
-- Dumping data for table `acos`
--

INSERT INTO `acos` (`id`, `parent_id`, `model`, `foreign_key`, `alias`, `lft`, `rght`) VALUES
(80, NULL, NULL, NULL, 'controllers', 1, 104),
(81, 80, NULL, NULL, 'Groups', 2, 13),
(82, 81, NULL, NULL, 'index', 3, 4),
(83, 81, NULL, NULL, 'view', 5, 6),
(84, 81, NULL, NULL, 'add', 7, 8),
(85, 81, NULL, NULL, 'edit', 9, 10),
(86, 81, NULL, NULL, 'delete', 11, 12),
(87, 80, NULL, NULL, 'Pages', 14, 17),
(88, 87, NULL, NULL, 'display', 15, 16),
(89, 80, NULL, NULL, 'Posts', 18, 29),
(90, 89, NULL, NULL, 'index', 19, 20),
(91, 89, NULL, NULL, 'view', 21, 22),
(92, 89, NULL, NULL, 'add', 23, 24),
(93, 89, NULL, NULL, 'edit', 25, 26),
(94, 89, NULL, NULL, 'delete', 27, 28),
(95, 80, NULL, NULL, 'Users', 30, 45),
(96, 95, NULL, NULL, 'login', 31, 32),
(97, 95, NULL, NULL, 'logout', 33, 34),
(98, 95, NULL, NULL, 'index', 35, 36),
(99, 95, NULL, NULL, 'view', 37, 38),
(100, 95, NULL, NULL, 'add', 39, 40),
(101, 95, NULL, NULL, 'edit', 41, 42),
(102, 95, NULL, NULL, 'delete', 43, 44),
(103, 80, NULL, NULL, 'Widgets', 46, 57),
(104, 103, NULL, NULL, 'index', 47, 48),
(105, 103, NULL, NULL, 'view', 49, 50),
(106, 103, NULL, NULL, 'add', 51, 52),
(107, 103, NULL, NULL, 'edit', 53, 54),
(108, 103, NULL, NULL, 'delete', 55, 56),
(109, 80, NULL, NULL, 'Acl', 58, 103),
(110, 109, NULL, NULL, 'Acos', 59, 66),
(111, 110, NULL, NULL, 'admin_index', 60, 61),
(112, 110, NULL, NULL, 'admin_empty_acos', 62, 63),
(113, 110, NULL, NULL, 'admin_build_acl', 64, 65),
(114, 109, NULL, NULL, 'Aros', 67, 102),
(115, 114, NULL, NULL, 'admin_index', 68, 69),
(116, 114, NULL, NULL, 'admin_check', 70, 71),
(117, 114, NULL, NULL, 'admin_users', 72, 73),
(118, 114, NULL, NULL, 'admin_update_user_role', 74, 75),
(119, 114, NULL, NULL, 'admin_ajax_role_permissions', 76, 77),
(120, 114, NULL, NULL, 'admin_role_permissions', 78, 79),
(121, 114, NULL, NULL, 'admin_user_permissions', 80, 81),
(122, 114, NULL, NULL, 'admin_empty_permissions', 82, 83),
(123, 114, NULL, NULL, 'admin_clear_user_specific_permissions', 84, 85),
(124, 114, NULL, NULL, 'admin_grant_all_controllers', 86, 87),
(125, 114, NULL, NULL, 'admin_deny_all_controllers', 88, 89),
(126, 114, NULL, NULL, 'admin_get_role_controller_permission', 90, 91),
(127, 114, NULL, NULL, 'admin_grant_role_permission', 92, 93),
(128, 114, NULL, NULL, 'admin_deny_role_permission', 94, 95),
(129, 114, NULL, NULL, 'admin_get_user_controller_permission', 96, 97),
(130, 114, NULL, NULL, 'admin_grant_user_permission', 98, 99),
(131, 114, NULL, NULL, 'admin_deny_user_permission', 100, 101);

-- --------------------------------------------------------

--
-- Table structure for table `aros`
--

CREATE TABLE IF NOT EXISTS `aros` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) DEFAULT NULL,
  `model` varchar(255) DEFAULT NULL,
  `foreign_key` int(10) DEFAULT NULL,
  `alias` varchar(255) DEFAULT NULL,
  `lft` int(10) DEFAULT NULL,
  `rght` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `aros`
--

INSERT INTO `aros` (`id`, `parent_id`, `model`, `foreign_key`, `alias`, `lft`, `rght`) VALUES
(1, NULL, 'Group', 1, NULL, 1, 4),
(2, NULL, 'Group', 2, NULL, 5, 8),
(3, NULL, 'Group', 3, NULL, 9, 14),
(4, 1, 'User', 1, NULL, 2, 3),
(5, 2, 'User', 2, NULL, 6, 7),
(6, 3, 'User', 3, NULL, 10, 11),
(7, 3, 'User', 4, NULL, 12, 13);

-- --------------------------------------------------------

--
-- Table structure for table `aros_acos`
--

CREATE TABLE IF NOT EXISTS `aros_acos` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `aro_id` int(10) NOT NULL,
  `aco_id` int(10) NOT NULL,
  `_create` varchar(2) NOT NULL DEFAULT '0',
  `_read` varchar(2) NOT NULL DEFAULT '0',
  `_update` varchar(2) NOT NULL DEFAULT '0',
  `_delete` varchar(2) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `ARO_ACO_KEY` (`aro_id`,`aco_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=46 ;

--
-- Dumping data for table `aros_acos`
--

INSERT INTO `aros_acos` (`id`, `aro_id`, `aco_id`, `_create`, `_read`, `_update`, `_delete`) VALUES
(16, 3, 80, '-1', '-1', '-1', '-1'),
(17, 1, 80, '1', '1', '1', '1'),
(18, 2, 99, '1', '1', '1', '1'),
(19, 2, 106, '1', '1', '1', '1'),
(20, 2, 108, '1', '1', '1', '1'),
(21, 2, 107, '1', '1', '1', '1'),
(22, 2, 104, '1', '1', '1', '1'),
(23, 2, 105, '1', '1', '1', '1'),
(24, 3, 88, '1', '1', '1', '1'),
(25, 3, 92, '1', '1', '1', '1'),
(27, 3, 90, '1', '1', '1', '1'),
(28, 3, 91, '1', '1', '1', '1'),
(29, 2, 97, '1', '1', '1', '1'),
(30, 3, 97, '1', '1', '1', '1'),
(31, 2, 96, '1', '1', '1', '1'),
(32, 3, 96, '1', '1', '1', '1'),
(33, 2, 98, '1', '1', '1', '1'),
(36, 2, 100, '1', '1', '1', '1'),
(37, 2, 88, '1', '1', '1', '1'),
(38, 2, 92, '1', '1', '1', '1'),
(39, 2, 94, '1', '1', '1', '1'),
(40, 2, 93, '1', '1', '1', '1'),
(41, 2, 90, '1', '1', '1', '1'),
(42, 2, 91, '1', '1', '1', '1'),
(43, 2, 83, '1', '1', '1', '1'),
(44, 2, 82, '1', '1', '1', '1'),
(45, 3, 93, '1', '1', '1', '1');

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE IF NOT EXISTS `groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `groups`
--

INSERT INTO `groups` (`id`, `name`, `created`, `modified`) VALUES
(1, 'administrators', '2013-01-03 15:56:13', '2013-01-03 15:56:13'),
(2, 'managers', '2013-01-03 15:57:45', '2013-01-03 15:57:45'),
(3, 'users', '2013-01-03 15:57:59', '2013-01-03 15:57:59');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE IF NOT EXISTS `posts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `body` text,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `user_id`, `title`, `body`, `created`, `modified`) VALUES
(1, 3, 'Test', 'Post', '2013-01-03 16:50:08', '2013-01-03 16:53:14');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` char(40) NOT NULL,
  `group_id` int(11) NOT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `group_id`, `created`, `modified`) VALUES
(1, 'admin', '85f7c039a0bf3da99d50063f870137f95b9213cb', 1, '2013-01-03 15:59:11', '2013-01-04 15:33:12'),
(2, 'manager', '07fd8421286e573186ff8b063c0ecd10b82ac724', 2, '2013-01-03 16:00:37', '2013-01-04 17:51:37'),
(3, 'user', '7c8d4f3126dcf0c3e09d847c27aa79cabfc2e371', 3, '2013-01-03 16:00:56', '2013-01-03 16:00:56'),
(4, 'user1', '6a8e1b4bd3c7b361c5fbeb68ef6463fc9d71ae2e', 3, '2013-01-03 16:52:08', '2013-01-03 16:52:08');

-- --------------------------------------------------------

--
-- Table structure for table `widgets`
--

CREATE TABLE IF NOT EXISTS `widgets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `part_no` varchar(12) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
