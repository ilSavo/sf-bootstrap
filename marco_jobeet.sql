-- phpMyAdmin SQL Dump
-- version 3.3.7deb5build0.10.10.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generato il: 28 mag, 2013 at 04:54 PM
-- Versione MySQL: 5.1.49
-- Versione PHP: 5.3.3-1ubuntu9.10

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `marco_jobeet`
--

-- --------------------------------------------------------

--
-- Struttura della tabella `affiliate`
--

CREATE TABLE IF NOT EXISTS `affiliate` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_597AA5CFE7927C74` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

--
-- Dump dei dati per la tabella `affiliate`
--


-- --------------------------------------------------------

--
-- Struttura della tabella `category`
--

CREATE TABLE IF NOT EXISTS `category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_64C19C15E237E06` (`name`),
  UNIQUE KEY `UNIQ_64C19C1989D9B62` (`slug`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=9 ;

--
-- Dump dei dati per la tabella `category`
--

INSERT INTO `category` (`id`, `name`, `slug`) VALUES
(5, 'Design', 'design'),
(6, 'Programming', 'programming'),
(7, 'Manager', 'manager'),
(8, 'Administrator', 'administrator');

-- --------------------------------------------------------

--
-- Struttura della tabella `category_affiliate`
--

CREATE TABLE IF NOT EXISTS `category_affiliate` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_id` int(11) DEFAULT NULL,
  `affiliate_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_9E1A77FF12469DE2` (`category_id`),
  KEY `IDX_9E1A77FF9F12C49A` (`affiliate_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

--
-- Dump dei dati per la tabella `category_affiliate`
--


-- --------------------------------------------------------

--
-- Struttura della tabella `job`
--

CREATE TABLE IF NOT EXISTS `job` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_id` int(11) DEFAULT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `company` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `logo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `position` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `location` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `how_to_apply` longtext COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `is_public` tinyint(1) DEFAULT NULL,
  `is_activated` tinyint(1) DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `expires_at` datetime NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_FBD8E0F85F37A13B` (`token`),
  KEY `IDX_FBD8E0F812469DE2` (`category_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=69 ;

--
-- Dump dei dati per la tabella `job`
--

INSERT INTO `job` (`id`, `category_id`, `type`, `company`, `logo`, `url`, `position`, `location`, `description`, `how_to_apply`, `token`, `is_public`, `is_activated`, `email`, `expires_at`, `created_at`, `updated_at`) VALUES
(35, 6, 'full-time', 'Labs', 'sensio-labs.gif', 'http://www.sensiolabs.com/', 'Web Developer', 'Paris, France', 'You''ve already developed websites with symfony and you want to work with Open-Source technologies. You have a minimum of 3 years experience in web development with PHP or Java and you wish to participate to development of Web 2.0 sites using the best frameworks available.', 'Send your resume to fabien.potencier [at] sensio.com', 'job_sensio_labs', 1, 1, 'job@example.com', '2012-12-10 00:00:00', '2013-01-22 09:20:00', NULL),
(36, 5, 'part-time', 'Extreme Sensio', 'extreme-sensio.gif', 'http://www.extreme-sensio.com/', 'Web Designer', 'Paris, France', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in.', 'Send your resume to fabien.potencier [at] sensio.com', 'job_extreme_sensio', 1, 1, 'job@example.com', '2012-12-10 00:00:00', '2013-01-22 09:20:20', NULL),
(37, 6, 'full-time', 'Sensio Labs', 'sensio-labs.gif', 'http://www.sensiolabs.com/', 'Web Developer Expired', 'Paris, France', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.', 'Send your resume to lorem.ipsum [at] dolor.sit', 'job_expired', 1, 1, 'job@example.com', '2005-12-31 00:00:00', '2005-12-01 00:00:00', NULL),
(38, 6, 'full-time', 'Company 100', NULL, NULL, 'Web Developer', 'Paris, France', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.', 'Send your resume to lorem.ipsum [at] dolor.sit', 'job_100', 1, 1, 'job@example.com', '2013-02-21 09:20:20', '2013-01-22 09:20:20', NULL),
(39, 6, 'full-time', 'Company 101', NULL, NULL, 'Web Developer', 'Paris, France', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.', 'Send your resume to lorem.ipsum [at] dolor.sit', 'job_101', 1, 1, 'job@example.com', '2013-02-21 09:20:20', '2013-01-22 09:20:20', NULL),
(40, 6, 'full-time', 'Company 102', NULL, NULL, 'Web Developer', 'Paris, France', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.', 'Send your resume to lorem.ipsum [at] dolor.sit', 'job_102', 1, 1, 'job@example.com', '2013-02-21 09:20:20', '2013-01-22 09:20:20', NULL),
(41, 6, 'full-time', 'Company 103', NULL, NULL, 'Web Developer', 'Paris, France', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.', 'Send your resume to lorem.ipsum [at] dolor.sit', 'job_103', 1, 1, 'job@example.com', '2013-02-21 09:20:20', '2013-01-22 09:20:20', NULL),
(42, 6, 'full-time', 'Company 104', NULL, NULL, 'Web Developer', 'Paris, France', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.', 'Send your resume to lorem.ipsum [at] dolor.sit', 'job_104', 1, 1, 'job@example.com', '2013-02-21 09:20:20', '2013-01-22 09:20:20', NULL),
(43, 6, 'full-time', 'Company 105', NULL, NULL, 'Web Developer', 'Paris, France', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.', 'Send your resume to lorem.ipsum [at] dolor.sit', 'job_105', 1, 1, 'job@example.com', '2013-02-21 09:20:20', '2013-01-22 09:20:20', NULL),
(44, 6, 'full-time', 'Company 106', NULL, NULL, 'Web Developer', 'Paris, France', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.', 'Send your resume to lorem.ipsum [at] dolor.sit', 'job_106', 1, 1, 'job@example.com', '2013-02-21 09:20:20', '2013-01-22 09:20:20', NULL),
(45, 6, 'full-time', 'Company 107', NULL, NULL, 'Web Developer', 'Paris, France', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.', 'Send your resume to lorem.ipsum [at] dolor.sit', 'job_107', 1, 1, 'job@example.com', '2013-02-21 09:20:20', '2013-01-22 09:20:20', NULL),
(46, 6, 'full-time', 'Company 108', NULL, NULL, 'Web Developer', 'Paris, France', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.', 'Send your resume to lorem.ipsum [at] dolor.sit', 'job_108', 1, 1, 'job@example.com', '2013-02-21 09:20:20', '2013-01-22 09:20:20', NULL),
(47, 6, 'full-time', 'Company 109', NULL, NULL, 'Web Developer', 'Paris, France', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.', 'Send your resume to lorem.ipsum [at] dolor.sit', 'job_109', 1, 1, 'job@example.com', '2013-02-21 09:20:20', '2013-01-22 09:20:20', NULL),
(48, 6, 'full-time', 'Company 110', NULL, NULL, 'Web Developer', 'Paris, France', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.', 'Send your resume to lorem.ipsum [at] dolor.sit', 'job_110', 1, 1, 'job@example.com', '2013-02-21 09:20:20', '2013-01-22 09:20:20', NULL),
(49, 6, 'full-time', 'Company 111', NULL, NULL, 'Web Developer', 'Paris, France', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.', 'Send your resume to lorem.ipsum [at] dolor.sit', 'job_111', 1, 1, 'job@example.com', '2013-02-21 09:20:20', '2013-01-22 09:20:20', NULL),
(50, 6, 'full-time', 'Company 112', NULL, NULL, 'Web Developer', 'Paris, France', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.', 'Send your resume to lorem.ipsum [at] dolor.sit', 'job_112', 1, 1, 'job@example.com', '2013-02-21 09:20:20', '2013-01-22 09:20:20', NULL),
(51, 6, 'full-time', 'Company 113', NULL, NULL, 'Web Developer', 'Paris, France', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.', 'Send your resume to lorem.ipsum [at] dolor.sit', 'job_113', 1, 1, 'job@example.com', '2013-02-21 09:20:20', '2013-01-22 09:20:20', NULL),
(52, 6, 'full-time', 'Company 114', NULL, NULL, 'Web Developer', 'Paris, France', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.', 'Send your resume to lorem.ipsum [at] dolor.sit', 'job_114', 1, 1, 'job@example.com', '2013-02-21 09:20:20', '2013-01-22 09:20:20', NULL),
(53, 6, 'full-time', 'Company 115', NULL, NULL, 'Web Developer', 'Paris, France', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.', 'Send your resume to lorem.ipsum [at] dolor.sit', 'job_115', 1, 1, 'job@example.com', '2013-02-21 09:20:20', '2013-01-22 09:20:20', NULL),
(54, 6, 'full-time', 'Company 116', NULL, NULL, 'Web Developer', 'Paris, France', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.', 'Send your resume to lorem.ipsum [at] dolor.sit', 'job_116', 1, 1, 'job@example.com', '2013-02-21 09:20:20', '2013-01-22 09:20:20', NULL),
(55, 6, 'full-time', 'Company 117', NULL, NULL, 'Web Developer', 'Paris, France', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.', 'Send your resume to lorem.ipsum [at] dolor.sit', 'job_117', 1, 1, 'job@example.com', '2013-02-21 09:20:20', '2013-01-22 09:20:20', NULL),
(56, 6, 'full-time', 'Company 118', NULL, NULL, 'Web Developer', 'Paris, France', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.', 'Send your resume to lorem.ipsum [at] dolor.sit', 'job_118', 1, 1, 'job@example.com', '2013-02-21 09:20:20', '2013-01-22 09:20:20', NULL),
(57, 6, 'full-time', 'Company 119', NULL, NULL, 'Web Developer', 'Paris, France', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.', 'Send your resume to lorem.ipsum [at] dolor.sit', 'job_119', 1, 1, 'job@example.com', '2013-02-21 09:20:20', '2013-01-22 09:20:20', NULL),
(58, 6, 'full-time', 'Company 120', NULL, NULL, 'Web Developer', 'Paris, France', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.', 'Send your resume to lorem.ipsum [at] dolor.sit', 'job_120', 1, 1, 'job@example.com', '2013-02-21 09:20:20', '2013-01-22 09:20:20', NULL),
(59, 6, 'full-time', 'Company 121', NULL, NULL, 'Web Developer', 'Paris, France', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.', 'Send your resume to lorem.ipsum [at] dolor.sit', 'job_121', 1, 1, 'job@example.com', '2013-02-21 09:20:20', '2013-01-22 09:20:20', NULL),
(60, 6, 'full-time', 'Company 122', NULL, NULL, 'Web Developer', 'Paris, France', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.', 'Send your resume to lorem.ipsum [at] dolor.sit', 'job_122', 1, 1, 'job@example.com', '2013-02-21 09:20:20', '2013-01-22 09:20:20', NULL),
(61, 6, 'full-time', 'Company 123', NULL, NULL, 'Web Developer', 'Paris, France', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.', 'Send your resume to lorem.ipsum [at] dolor.sit', 'job_123', 1, 1, 'job@example.com', '2013-02-21 09:20:20', '2013-01-22 09:20:20', NULL),
(62, 6, 'full-time', 'Company 124', NULL, NULL, 'Web Developer', 'Paris, France', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.', 'Send your resume to lorem.ipsum [at] dolor.sit', 'job_124', 1, 1, 'job@example.com', '2013-02-21 09:20:20', '2013-01-22 09:20:20', NULL),
(63, 6, 'full-time', 'Company 125', NULL, NULL, 'Web Developer', 'Paris, France', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.', 'Send your resume to lorem.ipsum [at] dolor.sit', 'job_125', 1, 1, 'job@example.com', '2013-02-21 09:20:20', '2013-01-22 09:20:20', NULL),
(64, 6, 'full-time', 'Company 126', NULL, NULL, 'Web Developer', 'Paris, France', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.', 'Send your resume to lorem.ipsum [at] dolor.sit', 'job_126', 1, 1, 'job@example.com', '2013-02-21 09:20:20', '2013-01-22 09:20:20', NULL),
(65, 6, 'full-time', 'Company 127', NULL, NULL, 'Web Developer', 'Paris, France', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.', 'Send your resume to lorem.ipsum [at] dolor.sit', 'job_127', 1, 1, 'job@example.com', '2013-02-21 09:20:20', '2013-01-22 09:20:20', NULL),
(66, 6, 'full-time', 'Company 128', NULL, NULL, 'Web Developer', 'Paris, France', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.', 'Send your resume to lorem.ipsum [at] dolor.sit', 'job_128', 1, 1, 'job@example.com', '2013-02-21 09:20:20', '2013-01-22 09:20:20', NULL),
(67, 6, 'full-time', 'Company 129', NULL, NULL, 'Web Developer', 'Paris, France', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.', 'Send your resume to lorem.ipsum [at] dolor.sit', 'job_129', 1, 1, 'job@example.com', '2013-02-21 09:20:20', '2013-01-22 09:20:20', NULL),
(68, 6, 'full-time', 'Company 130', NULL, NULL, 'Web Developer', 'Paris, France', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit.', 'Send your resume to lorem.ipsum [at] dolor.sit', 'job_130', 1, 1, 'job@example.com', '2013-02-21 09:20:20', '2013-01-22 09:20:20', NULL);

--
-- Limiti per le tabelle scaricate
--

--
-- Limiti per la tabella `category_affiliate`
--
ALTER TABLE `category_affiliate`
  ADD CONSTRAINT `FK_9E1A77FF12469DE2` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`),
  ADD CONSTRAINT `FK_9E1A77FF9F12C49A` FOREIGN KEY (`affiliate_id`) REFERENCES `affiliate` (`id`);

--
-- Limiti per la tabella `job`
--
ALTER TABLE `job`
  ADD CONSTRAINT `FK_FBD8E0F812469DE2` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`);
