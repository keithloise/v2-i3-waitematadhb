-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 14, 2018 at 01:27 AM
-- Server version: 5.7.21
-- PHP Version: 5.6.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `ss_db_staging-i3`
--

-- --------------------------------------------------------

--
-- Table structure for table `AccordionItem`
--

CREATE TABLE `AccordionItem` (
  `ID` int(11) NOT NULL,
  `ClassName` enum('AccordionItem') DEFAULT 'AccordionItem',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Title` mediumtext,
  `Content` mediumtext,
  `Animate` varchar(255) DEFAULT NULL,
  `AnimateDelays` varchar(255) DEFAULT NULL,
  `AnimateSpeeds` varchar(255) DEFAULT NULL,
  `Archived` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `Sort` int(11) NOT NULL DEFAULT '0',
  `SliderImgID` int(11) NOT NULL DEFAULT '0',
  `ParentID` int(11) NOT NULL DEFAULT '0',
  `PageLinkID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `AccordionItem`
--

INSERT INTO `AccordionItem` (`ID`, `ClassName`, `LastEdited`, `Created`, `Title`, `Content`, `Animate`, `AnimateDelays`, `AnimateSpeeds`, `Archived`, `Sort`, `SliderImgID`, `ParentID`, `PageLinkID`) VALUES
(1, 'AccordionItem', '2018-11-13 16:28:51', '2018-11-13 16:07:11', 'What do practices need to do?', '<ul class=\"intro\"><li>Establish a two to three person Patient Safety team which should preferably comprise of a GP, a practice nurse and a senior administrator.</li>\n<li>Send your Patient Safety team to four evening learning sessions.</li>\n<li>Attend meetings in your practice to discuss data collected during the programme and identify areas for improvement.</li>\n<li>Complete two <a href=\"http://aucklandnc.safetyinpractice.co.nz/resources/general-practice/clinical-modules-2/\">Clinical Modules</a> and one <a href=\"http://aucklandnc.safetyinpractice.co.nz/resources/general-practice/culture-tool-shed-2/\">Safety Culture Tool</a>.</li>\n</ul>', NULL, NULL, NULL, 0, 0, 0, 65, 0),
(2, 'AccordionItem', '2018-11-13 16:45:13', '2018-11-13 16:45:13', 'How long is the programme?', '<div class=\"wpb_accordion_section group\">\n<div id=\"ui-id-4\" class=\"wpb_accordion_content ui-accordion-content vc_clearfix ui-helper-reset ui-widget-content ui-corner-bottom ui-accordion-content-active\">\n<div class=\"wpb_text_column wpb_content_element \">\n<div class=\"wpb_wrapper\">\n<p>Safety in Practice is a 3-year programme. Practices choose to re-enroll annually. Each year practices focus on new <a href=\"http://aucklandnc.safetyinpractice.co.nz/resources/\">modules</a>.</p>\n</div>\n</div>\n</div>\n</div>', NULL, NULL, NULL, 0, 0, 0, 65, 0),
(3, 'AccordionItem', '2018-11-13 16:46:18', '2018-11-13 16:46:18', 'What will practices receive?', '<ul class=\"intro\"><li>Training in quality improvement skills, tools and techniques to make patient care safer.</li>\n<li>Quality improvement support and facilitation to assist with improvements in practice systems and processes.</li>\n<li>An opportunity to share and learn with other practices.</li>\n<li>An annual financial contribution. This amount will be paid by the DHB in installments, as per the payment schedule set out below, provided that all of the mandatory requirements specified are met throughout the year. For the year 2017-18 this was<span> $5,400.00 excl GST.</span></li>\n<li>Participation contributes to RNZCGP Cornerstone<span>®</span> accreditation, RNZCGP MOPS (Maintenance of Professional Standards) and NZNC Professional Development Hours (PDRP).<span>  </span></li>\n</ul>', NULL, NULL, NULL, 0, 0, 0, 65, 0),
(4, 'AccordionItem', '2018-11-13 16:46:53', '2018-11-13 16:46:53', 'Timeline', '<table cellspacing=\"0\" cellpadding=\"0\" align=\"left\"><tbody><tr><td width=\"180\" valign=\"top\">\n<p><span>Month</span></p>\n</td>\n<td valign=\"top\">\n<p><span>Activity</span></p>\n</td>\n</tr><tr><td valign=\"top\">\n<p>May - Jun 2018</p>\n</td>\n<td valign=\"top\">\n<p><a href=\"http://aucklandnc.safetyinpractice.co.nz/sign-up/\">Submit an expression of interest </a>by 30<span>th </span>June 2018</p>\n</td>\n</tr><tr><td valign=\"top\">\n<p>Jul -Aug 2018</p>\n</td>\n<td valign=\"top\">\n<p>Receive and sign contract to participate in the programme</p>\n</td>\n</tr><tr><td valign=\"top\">\n<p>Aug 2018</p>\n</td>\n<td valign=\"top\">\n<p>Attend Learning Session 1</p>\n</td>\n</tr><tr><td valign=\"top\">\n<p>Sep - Nov</p>\n</td>\n<td valign=\"top\">\n<p>Monthly audits and improvement on chosen safety modules</p>\n</td>\n</tr><tr><td valign=\"top\">\n<p>Nov</p>\n</td>\n<td valign=\"top\">\n<p>Attend Learning Session 2</p>\n</td>\n</tr><tr><td valign=\"top\">\n<p>Dec 2018 - Mar 2019</p>\n</td>\n<td valign=\"top\">\n<p>Monthly audits and improvement on chosen safety modules</p>\n</td>\n</tr><tr><td valign=\"top\">\n<p>Feb 2019</p>\n</td>\n<td valign=\"top\">\n<p>Attend Learning Session 3</p>\n</td>\n</tr><tr><td valign=\"top\">\n<p>Mar - Jun 2019</p>\n</td>\n<td valign=\"top\">\n<p>Monthly audits and improvement on chosen safety modules, use chosen culture tool to develop you practice safety culture</p>\n</td>\n</tr><tr><td valign=\"top\">\n<p>Jun 2019</p>\n</td>\n<td valign=\"top\">\n<p>Attend Learning Session 4</p>\n</td>\n</tr></tbody></table>', NULL, NULL, NULL, 0, 0, 0, 65, 0),
(5, 'AccordionItem', '2018-11-13 17:58:30', '2018-11-13 17:58:30', 'What do pharmacies need to do?', '<ul class=\"intro\"><li>Establish a two to three person Patient Safety team which should preferably comprise of staff members from different staff groups.</li>\n<li>Send your Patient Safety team to four evening learning sessions per year.</li>\n<li>Attend meetings in your pharmacy to discuss data collected during the programme and identify areas for improvement.</li>\n<li>Complete one <a href=\"http://aucklandnc.safetyinpractice.co.nz/resources/general-practice/clinical-modules-2/\">Clinical Modules</a> and one <a href=\"http://aucklandnc.safetyinpractice.co.nz/resources/safety-culture-tools-2/\">Safety Culture Tool</a>.</li>\n</ul>', NULL, NULL, NULL, 0, 0, 0, 68, 0),
(6, 'AccordionItem', '2018-11-13 17:58:57', '2018-11-13 17:58:57', 'How long is the programme?', '<div class=\"wpb_accordion_section group\">\n<div id=\"ui-id-4\" class=\"wpb_accordion_content ui-accordion-content vc_clearfix ui-helper-reset ui-widget-content ui-corner-bottom ui-accordion-content-active\">\n<div class=\"wpb_text_column wpb_content_element \">\n<div class=\"wpb_wrapper\">\n<p>Safety in Practice is a 3-year programme. Pharmacies choose to re-enroll annually. Each year practices focus on a <a href=\"http://aucklandnc.safetyinpractice.co.nz/resources/\">new module</a>.</p>\n</div>\n</div>\n</div>\n</div>', NULL, NULL, NULL, 0, 0, 0, 68, 0),
(7, 'AccordionItem', '2018-11-13 17:59:21', '2018-11-13 17:59:21', 'What will pharmacies receive?', '<ul class=\"intro\"><li>Training in quality improvement skills, tools and techniques to make patient care safer.</li>\n<li>Quality improvement support and facilitation to assist with improvements in systems and processes.</li>\n<li>An opportunity to share and learn with other pharmacies.</li>\n<li>A financial contribution of to cover practice staff time (this amount will be paid by the DHB in installments, as per the payment schedule set out below, provided that all of the mandatory requirements specified are met throughout the year).</li>\n</ul>', NULL, NULL, NULL, 0, 0, 0, 68, 0),
(8, 'AccordionItem', '2018-11-13 17:59:38', '2018-11-13 17:59:38', 'Timeline', '<table cellspacing=\"0\" cellpadding=\"0\" align=\"left\"><tbody><tr><td width=\"180\" valign=\"top\">\n<p><span>Month</span></p>\n</td>\n<td valign=\"top\">\n<p><span>Activity</span></p>\n</td>\n</tr><tr><td>\n<p>May - Jun 2018</p>\n</td>\n<td>\n<p><a href=\"http://aucklandnc.safetyinpractice.co.nz/sign-up/\">Submit an expression of interest</a> by 30<span>th </span>June 2018</p>\n</td>\n</tr><tr><td valign=\"top\">\n<p>Jul - Aug 2018</p>\n</td>\n<td valign=\"top\">\n<p>Receive and sign contract to participate in the programme</p>\n</td>\n</tr><tr><td valign=\"top\">\n<p>Aug<span> 2018</span></p>\n</td>\n<td valign=\"top\">\n<p>Attend Learning Session 1</p>\n</td>\n</tr><tr><td valign=\"top\">\n<p>Sep - Nov<span> 2018</span></p>\n</td>\n<td valign=\"top\">\n<p>Monthly audits and improvement on chosen safety modules</p>\n</td>\n</tr><tr><td valign=\"top\">\n<p>Nov<span> 2018</span></p>\n</td>\n<td valign=\"top\">\n<p>Attend Learning Session 2</p>\n</td>\n</tr><tr><td valign=\"top\">\n<p>Dec 2018 - Mar 2019</p>\n</td>\n<td valign=\"top\">\n<p>Monthly audits and improvement on chosen safety modules</p>\n</td>\n</tr><tr><td valign=\"top\">\n<p>Feb 2019</p>\n</td>\n<td valign=\"top\">\n<p>Attend Learning Session 3</p>\n</td>\n</tr><tr><td valign=\"top\">\n<p>Mar - Jun 2019</p>\n</td>\n<td valign=\"top\">\n<p>Monthly audits and improvement on chosen safety modules Use chosen culture tool to develop you practice safety culture</p>\n</td>\n</tr><tr><td valign=\"top\">\n<p>Jun 2019</p>\n</td>\n<td valign=\"top\">\n<p>Attend Learning Session 4</p>\n</td>\n</tr></tbody></table>', NULL, NULL, NULL, 0, 0, 0, 68, 0),
(9, 'AccordionItem', '2018-11-14 12:21:35', '2018-11-14 12:21:35', 'I can\'t get the the medication reconciliation query build to run in Medtech 32?', NULL, NULL, NULL, NULL, 0, 0, 0, 69, 0);

-- --------------------------------------------------------

--
-- Table structure for table `AchievementHolderPage`
--

CREATE TABLE `AchievementHolderPage` (
  `ID` int(11) NOT NULL,
  `PostsPerPage` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `AchievementHolderPage_Live`
--

CREATE TABLE `AchievementHolderPage_Live` (
  `ID` int(11) NOT NULL,
  `PostsPerPage` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `AchievementHolderPage_versions`
--

CREATE TABLE `AchievementHolderPage_versions` (
  `ID` int(11) NOT NULL,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `PostsPerPage` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `AchievementPage`
--

CREATE TABLE `AchievementPage` (
  `ID` int(11) NOT NULL,
  `FeaturedImgID` int(11) NOT NULL DEFAULT '0',
  `AcquiredDateID` int(11) NOT NULL DEFAULT '0',
  `AcquiredDate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `AchievementPage_Live`
--

CREATE TABLE `AchievementPage_Live` (
  `ID` int(11) NOT NULL,
  `FeaturedImgID` int(11) NOT NULL DEFAULT '0',
  `AcquiredDateID` int(11) NOT NULL DEFAULT '0',
  `AcquiredDate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `AchievementPage_versions`
--

CREATE TABLE `AchievementPage_versions` (
  `ID` int(11) NOT NULL,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `FeaturedImgID` int(11) NOT NULL DEFAULT '0',
  `AcquiredDateID` int(11) NOT NULL DEFAULT '0',
  `AcquiredDate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `Animation`
--

CREATE TABLE `Animation` (
  `ID` int(11) NOT NULL,
  `ClassName` enum('Animation') DEFAULT 'Animation',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Title` varchar(255) DEFAULT NULL,
  `Sort` int(11) NOT NULL DEFAULT '0',
  `SiteConfigID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Animation`
--

INSERT INTO `Animation` (`ID`, `ClassName`, `LastEdited`, `Created`, `Title`, `Sort`, `SiteConfigID`) VALUES
(1, 'Animation', '2018-09-20 12:24:00', '2018-09-20 12:14:03', 'fadeIn', 2, 1),
(2, 'Animation', '2018-09-20 12:24:00', '2018-09-20 12:14:14', 'fadeInDown', 3, 1),
(3, 'Animation', '2018-09-20 12:24:00', '2018-09-20 12:14:26', 'fadeInDownBig', 4, 1),
(4, 'Animation', '2018-09-20 12:24:00', '2018-09-20 12:14:33', 'fadeInLeft', 5, 1),
(6, 'Animation', '2018-09-20 12:24:00', '2018-09-20 12:14:55', 'fadeInLeftBig', 6, 1),
(7, 'Animation', '2018-09-20 12:24:00', '2018-09-20 12:15:07', 'fadeInRight', 7, 1),
(9, 'Animation', '2018-09-20 12:24:00', '2018-09-20 12:15:16', 'fadeInRightBig', 8, 1),
(10, 'Animation', '2018-09-20 12:24:00', '2018-09-20 12:15:25', 'fadeInUp', 9, 1),
(11, 'Animation', '2018-09-20 12:24:00', '2018-09-20 12:15:35', 'fadeInUpBig', 10, 1);

-- --------------------------------------------------------

--
-- Table structure for table `AnimationDelay`
--

CREATE TABLE `AnimationDelay` (
  `ID` int(11) NOT NULL,
  `ClassName` enum('AnimationDelay') DEFAULT 'AnimationDelay',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Title` varchar(255) DEFAULT NULL,
  `Sort` int(11) NOT NULL DEFAULT '0',
  `SiteConfigID` int(11) NOT NULL DEFAULT '0',
  `DelayTime` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `AnimationDelay`
--

INSERT INTO `AnimationDelay` (`ID`, `ClassName`, `LastEdited`, `Created`, `Title`, `Sort`, `SiteConfigID`, `DelayTime`) VALUES
(1, 'AnimationDelay', '2018-09-20 12:28:16', '2018-09-20 12:23:18', 'delay-2s', 2, 1, '2s'),
(2, 'AnimationDelay', '2018-09-20 12:28:21', '2018-09-20 12:23:23', 'delay-3s', 3, 1, '3s'),
(3, 'AnimationDelay', '2018-09-20 12:28:26', '2018-09-20 12:23:27', 'delay-4s', 4, 1, '4s'),
(4, 'AnimationDelay', '2018-09-20 12:28:32', '2018-09-20 12:23:32', 'delay-5s', 5, 1, '5s');

-- --------------------------------------------------------

--
-- Table structure for table `AnimationSpeed`
--

CREATE TABLE `AnimationSpeed` (
  `ID` int(11) NOT NULL,
  `ClassName` enum('AnimationSpeed') DEFAULT 'AnimationSpeed',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Title` varchar(255) DEFAULT NULL,
  `Sort` int(11) NOT NULL DEFAULT '0',
  `SiteConfigID` int(11) NOT NULL DEFAULT '0',
  `SpeedTime` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `AnimationSpeed`
--

INSERT INTO `AnimationSpeed` (`ID`, `ClassName`, `LastEdited`, `Created`, `Title`, `Sort`, `SiteConfigID`, `SpeedTime`) VALUES
(1, 'AnimationSpeed', '2018-09-20 12:29:43', '2018-09-20 12:28:56', 'slow', 2, 1, '2s'),
(2, 'AnimationSpeed', '2018-09-20 12:29:43', '2018-09-20 12:29:03', 'slower', 3, 1, '3s'),
(3, 'AnimationSpeed', '2018-09-20 12:29:43', '2018-09-20 12:29:10', 'fast', 4, 1, '800ms'),
(4, 'AnimationSpeed', '2018-09-20 12:29:43', '2018-09-20 12:29:17', 'faster', 5, 1, '500ms');

-- --------------------------------------------------------

--
-- Table structure for table `BlockItem`
--

CREATE TABLE `BlockItem` (
  `ID` int(11) NOT NULL,
  `ClassName` enum('BlockItem') DEFAULT 'BlockItem',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Title` mediumtext,
  `Content` mediumtext,
  `Archived` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `Sort` int(11) NOT NULL DEFAULT '0',
  `BlockBgImageID` int(11) NOT NULL DEFAULT '0',
  `ParentID` int(11) NOT NULL DEFAULT '0',
  `PageLinkID` int(11) NOT NULL DEFAULT '0',
  `ButtonLabel` mediumtext,
  `BgOverlayColor` varchar(6) DEFAULT NULL,
  `TitleText` varchar(6) DEFAULT NULL,
  `TitleColor` varchar(6) DEFAULT NULL,
  `BgHoverColor` varchar(6) DEFAULT NULL,
  `Animate` varchar(255) DEFAULT NULL,
  `AnimateDelay` varchar(255) DEFAULT NULL,
  `AnimateSpeed` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `BlockItem`
--

INSERT INTO `BlockItem` (`ID`, `ClassName`, `LastEdited`, `Created`, `Title`, `Content`, `Archived`, `Sort`, `BlockBgImageID`, `ParentID`, `PageLinkID`, `ButtonLabel`, `BgOverlayColor`, `TitleText`, `TitleColor`, `BgHoverColor`, `Animate`, `AnimateDelay`, `AnimateSpeed`) VALUES
(1, 'BlockItem', '2018-09-20 16:53:02', '2018-09-20 10:03:18', 'PERSON CENTRED DESIGN', '<h3><strong><span class=\"underline-orange\">Person</span> Centred Design</strong></h3><p>We place people at the centre of everything we do.</p><p>We watch + listen to what our patients, whānau + community need + we solve problems from a person perspective.<br><br></p><p class=\"default-btn\"><strong><a href=\"#\">DISCOVER MORE</a></strong></p><p> </p>', 0, 0, 19, 10, 0, NULL, '000000', NULL, 'ffffff', 'ff7b1e', 'fadeInLeft', NULL, NULL),
(2, 'BlockItem', '2018-09-20 13:54:00', '2018-09-20 10:18:12', 'COMMUNITY + CLINICIAN-LED', '<p>Lorem ipsum dolors sit amet consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.<br>Ut enim ad minim veniam, quis nostrud exercitation ullamco la boris nisi ut aliquip ex ea commodo consequat.</p>', 0, 0, 20, 10, 10, 'DISCOVER MORE', '000000', NULL, 'ffffff', 'ff7b1e', 'fadeInUp', NULL, NULL),
(3, 'BlockItem', '2018-09-20 13:55:06', '2018-09-20 13:47:59', 'DATA DRIVEN', NULL, 0, 0, 21, 10, 0, 'Discover More', '000000', NULL, 'ffffff', 'ff7b1e', 'fadeInRight', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `Blog`
--

CREATE TABLE `Blog` (
  `ID` int(11) NOT NULL,
  `PostsPerPage` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Blog`
--

INSERT INTO `Blog` (`ID`, `PostsPerPage`) VALUES
(20, 10),
(43, 10),
(47, 10),
(55, 10),
(58, 10);

-- --------------------------------------------------------

--
-- Table structure for table `BlogCategory`
--

CREATE TABLE `BlogCategory` (
  `ID` int(11) NOT NULL,
  `ClassName` enum('BlogCategory') DEFAULT 'BlogCategory',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Title` varchar(255) DEFAULT NULL,
  `URLSegment` varchar(255) DEFAULT NULL,
  `BlogID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `BlogCategory`
--

INSERT INTO `BlogCategory` (`ID`, `ClassName`, `LastEdited`, `Created`, `Title`, `URLSegment`, `BlogID`) VALUES
(1, 'BlogCategory', '2018-09-28 11:02:55', '2018-09-24 17:06:16', 'Awards', 'awards', 20),
(2, 'BlogCategory', '2018-09-24 17:24:09', '2018-09-24 17:21:41', 'Digital Technology', 'digital-technology', 20),
(3, 'BlogCategory', '2018-10-04 14:41:33', '2018-09-28 10:52:37', 'Events', 'events', 43),
(4, 'BlogCategory', '2018-09-28 11:16:12', '2018-09-28 11:07:40', 'Events', 'events', 3),
(5, 'BlogCategory', '2018-11-12 16:21:28', '2018-11-09 10:27:31', 'Events', 'events', 55),
(6, 'BlogCategory', '2018-11-09 11:44:00', '2018-11-09 10:27:59', 'News', 'news', 58);

-- --------------------------------------------------------

--
-- Table structure for table `BlogEntry`
--

CREATE TABLE `BlogEntry` (
  `ID` int(11) NOT NULL,
  `Date` datetime DEFAULT NULL,
  `Author` mediumtext,
  `Tags` mediumtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `BlogEntry_Live`
--

CREATE TABLE `BlogEntry_Live` (
  `ID` int(11) NOT NULL,
  `Date` datetime DEFAULT NULL,
  `Author` mediumtext,
  `Tags` mediumtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `BlogEntry_versions`
--

CREATE TABLE `BlogEntry_versions` (
  `ID` int(11) NOT NULL,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `Date` datetime DEFAULT NULL,
  `Author` mediumtext,
  `Tags` mediumtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `BlogHolder`
--

CREATE TABLE `BlogHolder` (
  `ID` int(11) NOT NULL,
  `AllowCustomAuthors` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `ShowFullEntry` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `OwnerID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `BlogHolder_Live`
--

CREATE TABLE `BlogHolder_Live` (
  `ID` int(11) NOT NULL,
  `AllowCustomAuthors` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `ShowFullEntry` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `OwnerID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `BlogHolder_versions`
--

CREATE TABLE `BlogHolder_versions` (
  `ID` int(11) NOT NULL,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `AllowCustomAuthors` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `ShowFullEntry` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `OwnerID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `BlogItem`
--

CREATE TABLE `BlogItem` (
  `ID` int(11) NOT NULL,
  `ClassName` enum('BlogItem') DEFAULT 'BlogItem',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Title` varchar(255) DEFAULT NULL,
  `LinkPage` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `Archived` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `Animate` varchar(255) DEFAULT NULL,
  `AnimateDelay` varchar(255) DEFAULT NULL,
  `AnimateSpeed` varchar(255) DEFAULT NULL,
  `Sort` int(11) NOT NULL DEFAULT '0',
  `ParentID` int(11) NOT NULL DEFAULT '0',
  `PageLinkID` int(11) NOT NULL DEFAULT '0',
  `Width` enum('size1of1','size1of2','size1of3','size2of3','size1of4','size3of4','size1of5','size2of5','size3of5','size4of5') DEFAULT 'size1of1',
  `ShowContent` tinyint(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `BlogItem`
--

INSERT INTO `BlogItem` (`ID`, `ClassName`, `LastEdited`, `Created`, `Title`, `LinkPage`, `Archived`, `Animate`, `AnimateDelay`, `AnimateSpeed`, `Sort`, `ParentID`, `PageLinkID`, `Width`, `ShowContent`) VALUES
(1, 'BlogItem', '2018-10-18 13:58:49', '2018-09-28 11:28:55', 'Quality Improvement Workshops', 1, 0, 'fadeInLeft', NULL, NULL, 0, 20, 40, 'size1of3', 0),
(2, 'BlogItem', '2018-10-18 13:58:49', '2018-09-28 11:29:04', 'PHARMAC: Hospital  Medicines into Combined  Pharmaceutical Budget', 1, 0, 'fadeInUp', NULL, NULL, 0, 20, 41, 'size1of3', 0),
(3, 'BlogItem', '2018-10-18 13:58:49', '2018-09-28 11:29:11', 'Artificial Intelligence Technologies in Healthcare', 1, 0, 'fadeInRight', NULL, NULL, 0, 20, 42, 'size1of3', 0),
(4, 'BlogItem', '2018-10-18 13:58:49', '2018-09-28 11:29:29', 'O&G Conference: Across  the Spectrum & Beyond', 1, 0, 'fadeInLeft', NULL, NULL, 0, 20, 46, 'size1of3', 0),
(5, 'BlogItem', '2018-10-18 13:58:59', '2018-09-28 16:26:05', 'Harkness Reunion 20-22 July 2018', 1, 0, NULL, NULL, NULL, 0, 21, 48, 'size1of3', 0),
(6, 'BlogItem', '2018-10-18 13:58:59', '2018-09-28 16:46:23', 'eCALD improving cross-cultural practice', 1, 0, NULL, NULL, NULL, 0, 21, 49, 'size1of3', 0),
(7, 'BlogItem', '2018-10-18 13:58:59', '2018-09-28 16:50:54', 'The potential of mobile health - reaching those in need', 1, 0, NULL, NULL, NULL, 0, 21, 50, 'size1of3', 0),
(8, 'BlogItem', '2018-10-18 16:53:29', '2018-10-17 17:00:38', 'Learning Session 2', 1, 0, 'fadeInLeft', NULL, NULL, 2, 25, 56, 'size1of2', 1),
(9, 'BlogItem', '2018-10-18 16:53:29', '2018-10-17 17:00:46', 'Learning Session 2', 1, 0, 'fadeInRight', NULL, NULL, 1, 25, 57, 'size1of2', 1),
(10, 'BlogItem', '2018-11-09 10:21:45', '2018-10-18 12:38:40', 'Learning set 1 - resources now available', 1, 0, 'fadeInDown', NULL, NULL, 2, 26, 59, 'size1of3', 1),
(11, 'BlogItem', '2018-11-09 10:21:45', '2018-10-18 12:38:56', 'Prescribing Indicators Update', 1, 0, 'fadeInUp', NULL, NULL, 3, 26, 60, 'size1of3', 1),
(12, 'BlogItem', '2018-11-09 10:21:45', '2018-10-18 12:46:45', 'Learning set 2 - RSVP now!', 1, 0, 'fadeInDown', NULL, NULL, 1, 26, 82, 'size1of3', 1);

-- --------------------------------------------------------

--
-- Table structure for table `BlogPost`
--

CREATE TABLE `BlogPost` (
  `ID` int(11) NOT NULL,
  `PublishDate` datetime DEFAULT NULL,
  `AuthorNames` varchar(1024) DEFAULT NULL,
  `Summary` mediumtext,
  `FeaturedImageID` int(11) NOT NULL DEFAULT '0',
  `EventTime` varchar(255) DEFAULT NULL,
  `EventTimeStarted` varchar(255) DEFAULT NULL,
  `EventTimeFinished` varchar(255) DEFAULT NULL,
  `FeaturedImageFeaturedImageID` int(11) NOT NULL DEFAULT '0',
  `EventLocation` varchar(255) DEFAULT NULL,
  `HidePublishDate` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `OverlayPublishDate` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `EventPostDate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `BlogPost`
--

INSERT INTO `BlogPost` (`ID`, `PublishDate`, `AuthorNames`, `Summary`, `FeaturedImageID`, `EventTime`, `EventTimeStarted`, `EventTimeFinished`, `FeaturedImageFeaturedImageID`, `EventLocation`, `HidePublishDate`, `OverlayPublishDate`, `EventPostDate`) VALUES
(21, '2018-08-30 21:00:00', NULL, NULL, 28, NULL, NULL, NULL, 0, NULL, 0, 0, NULL),
(22, '2018-07-27 09:00:00', NULL, NULL, 29, NULL, NULL, NULL, 0, NULL, 0, 0, NULL),
(23, '2018-07-26 09:00:00', NULL, NULL, 31, NULL, NULL, NULL, 0, NULL, 0, 0, NULL),
(24, '2018-07-11 09:00:00', NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, 0, 0, NULL),
(25, '2018-06-10 09:00:00', NULL, NULL, 30, NULL, NULL, NULL, 0, NULL, 0, 0, NULL),
(26, '2017-11-15 09:00:00', NULL, NULL, 32, NULL, NULL, NULL, 0, NULL, 0, 0, NULL),
(40, '2018-09-28 09:30:00', NULL, NULL, 46, NULL, '3:00PM', '4:00PM', 0, 'North Shore Hospital', 0, 0, NULL),
(41, '2018-09-11 12:30:00', NULL, NULL, 47, NULL, '12:30PM', '1:30PM', 0, 'Whenua Pupuke Building  North Shore Hospital', 0, 0, NULL),
(42, '2018-06-29 11:30:00', NULL, NULL, 49, NULL, '11:30AM', '1:00PM', 0, 'Institute for Innovation + Improvement (i3) Large Boardroom, North Shore Hospital', 0, 0, NULL),
(45, '2018-05-12 08:30:00', NULL, NULL, 48, NULL, NULL, NULL, 0, NULL, 0, 0, NULL),
(46, '2018-05-12 08:30:00', NULL, NULL, 48, NULL, '8:30AM', '5:30PM', 0, 'Whenua Pupuke Building North Shore Hospital', 0, 0, NULL),
(48, '2018-09-28 00:00:00', 'Dr Robyn Whittaker', NULL, 50, NULL, NULL, NULL, 0, NULL, 0, 0, NULL),
(49, '2018-10-01 14:42:31', 'Sue Lim, Annette Mortensen ', NULL, 52, NULL, NULL, NULL, 0, NULL, 0, 0, NULL),
(50, '2018-05-18 00:00:00', 'Dr Robyn Whittaker', NULL, 53, NULL, NULL, NULL, 0, NULL, 0, 0, NULL),
(56, '2018-10-17 16:56:00', NULL, NULL, 211, NULL, '5:30pm', '9:00pm', 0, 'Royal New Zealand Yacht Squadron', 1, 1, '2018-11-22'),
(57, '2018-10-17 17:00:00', NULL, NULL, 211, NULL, '5:30pm', '9:00pm', 0, 'Whenua Pupuke - North Shore Hospital', 1, 1, '2018-11-15'),
(59, '2018-09-12 12:29:00', NULL, NULL, 215, NULL, NULL, NULL, 0, NULL, 0, 1, '2018-09-12'),
(60, '2018-09-04 12:35:00', NULL, NULL, 217, NULL, NULL, NULL, 0, NULL, 0, 1, '2018-09-04'),
(61, '2018-08-28 12:46:00', NULL, NULL, 216, NULL, NULL, NULL, 0, NULL, 0, 1, '2018-08-28'),
(82, '2018-10-16 10:19:00', NULL, NULL, 290, NULL, NULL, NULL, 0, NULL, 0, 1, '2018-11-15'),
(83, '2018-08-14 11:32:00', NULL, NULL, 293, NULL, NULL, NULL, 0, NULL, 0, 0, '2018-08-14'),
(84, '2018-07-11 00:00:00', NULL, NULL, 294, NULL, NULL, NULL, 0, NULL, 0, 0, '2018-07-11'),
(85, '2018-07-03 00:00:00', NULL, NULL, 295, NULL, NULL, NULL, 0, NULL, 0, 0, NULL),
(86, '2018-06-20 00:00:00', NULL, NULL, 296, NULL, NULL, NULL, 0, NULL, 0, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `BlogPost_Authors`
--

CREATE TABLE `BlogPost_Authors` (
  `ID` int(11) NOT NULL,
  `BlogPostID` int(11) NOT NULL DEFAULT '0',
  `MemberID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `BlogPost_Authors`
--

INSERT INTO `BlogPost_Authors` (`ID`, `BlogPostID`, `MemberID`) VALUES
(2, 21, 2),
(5, 22, 3),
(6, 23, 3),
(8, 24, 2),
(10, 25, 2),
(12, 26, 2),
(16, 44, 1),
(17, 45, 1),
(21, 85, 1);

-- --------------------------------------------------------

--
-- Table structure for table `BlogPost_Categories`
--

CREATE TABLE `BlogPost_Categories` (
  `ID` int(11) NOT NULL,
  `BlogPostID` int(11) NOT NULL DEFAULT '0',
  `BlogCategoryID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `BlogPost_Categories`
--

INSERT INTO `BlogPost_Categories` (`ID`, `BlogPostID`, `BlogCategoryID`) VALUES
(1, 21, 1),
(2, 22, 1),
(3, 23, 2),
(4, 24, 2),
(5, 25, 1),
(6, 26, 1),
(7, 40, 3),
(8, 41, 3),
(9, 45, 4),
(10, 42, 3),
(11, 46, 3),
(12, 57, 5),
(13, 56, 5),
(14, 61, 6),
(15, 82, 6),
(16, 60, 6),
(17, 59, 6),
(18, 83, 6);

-- --------------------------------------------------------

--
-- Table structure for table `BlogPost_Live`
--

CREATE TABLE `BlogPost_Live` (
  `ID` int(11) NOT NULL,
  `PublishDate` datetime DEFAULT NULL,
  `AuthorNames` varchar(1024) DEFAULT NULL,
  `Summary` mediumtext,
  `FeaturedImageID` int(11) NOT NULL DEFAULT '0',
  `EventTime` varchar(255) DEFAULT NULL,
  `EventTimeStarted` varchar(255) DEFAULT NULL,
  `EventTimeFinished` varchar(255) DEFAULT NULL,
  `FeaturedImageFeaturedImageID` int(11) NOT NULL DEFAULT '0',
  `EventLocation` varchar(255) DEFAULT NULL,
  `HidePublishDate` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `OverlayPublishDate` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `EventPostDate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `BlogPost_Live`
--

INSERT INTO `BlogPost_Live` (`ID`, `PublishDate`, `AuthorNames`, `Summary`, `FeaturedImageID`, `EventTime`, `EventTimeStarted`, `EventTimeFinished`, `FeaturedImageFeaturedImageID`, `EventLocation`, `HidePublishDate`, `OverlayPublishDate`, `EventPostDate`) VALUES
(21, '2018-08-30 21:00:00', NULL, NULL, 28, NULL, NULL, NULL, 0, NULL, 0, 0, NULL),
(22, '2018-07-27 09:00:00', NULL, NULL, 29, NULL, NULL, NULL, 0, NULL, 0, 0, NULL),
(23, '2018-07-26 09:00:00', NULL, NULL, 31, NULL, NULL, NULL, 0, NULL, 0, 0, NULL),
(24, '2018-07-11 09:00:00', NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, 0, 0, NULL),
(25, '2018-06-10 09:00:00', NULL, NULL, 30, NULL, NULL, NULL, 0, NULL, 0, 0, NULL),
(26, '2017-11-15 09:00:00', NULL, NULL, 32, NULL, NULL, NULL, 0, NULL, 0, 0, NULL),
(40, '2018-09-28 09:30:00', NULL, NULL, 46, NULL, '3:00PM', '4:00PM', 0, 'North Shore Hospital', 0, 0, NULL),
(41, '2018-09-11 12:30:00', NULL, NULL, 47, NULL, '12:30PM', '1:30PM', 0, 'Whenua Pupuke Building  North Shore Hospital', 0, 0, NULL),
(42, '2018-06-29 11:30:00', NULL, NULL, 49, NULL, '11:30AM', '1:00PM', 0, 'Institute for Innovation + Improvement (i3) Large Boardroom, North Shore Hospital', 0, 0, NULL),
(46, '2018-05-12 08:30:00', NULL, NULL, 48, NULL, '8:30AM', '5:30PM', 0, 'Whenua Pupuke Building North Shore Hospital', 0, 0, NULL),
(48, '2018-09-28 00:00:00', 'Dr Robyn Whittaker', NULL, 50, NULL, NULL, NULL, 0, NULL, 0, 0, NULL),
(49, '2018-10-01 14:42:31', 'Sue Lim, Annette Mortensen ', NULL, 52, NULL, NULL, NULL, 0, NULL, 0, 0, NULL),
(50, '2018-05-18 00:00:00', 'Dr Robyn Whittaker', NULL, 53, NULL, NULL, NULL, 0, NULL, 0, 0, NULL),
(56, '2018-10-17 16:56:00', NULL, NULL, 211, NULL, '5:30pm', '9:00pm', 0, 'Royal New Zealand Yacht Squadron', 1, 1, '2018-11-22'),
(57, '2018-10-17 17:00:00', NULL, NULL, 211, NULL, '5:30pm', '9:00pm', 0, 'Whenua Pupuke - North Shore Hospital', 1, 1, '2018-11-15'),
(59, '2018-09-12 12:29:00', NULL, NULL, 215, NULL, NULL, NULL, 0, NULL, 0, 1, '2018-09-12'),
(60, '2018-09-04 12:35:00', NULL, NULL, 217, NULL, NULL, NULL, 0, NULL, 0, 1, '2018-09-04'),
(61, '2018-08-28 12:46:00', NULL, NULL, 216, NULL, NULL, NULL, 0, NULL, 0, 1, '2018-08-28'),
(82, '2018-10-16 10:19:00', NULL, NULL, 290, NULL, NULL, NULL, 0, NULL, 0, 1, '2018-11-15'),
(83, '2018-08-14 11:32:00', NULL, NULL, 293, NULL, NULL, NULL, 0, NULL, 0, 0, '2018-08-14'),
(84, '2018-07-11 00:00:00', NULL, NULL, 294, NULL, NULL, NULL, 0, NULL, 0, 0, '2018-07-11'),
(85, '2018-07-03 00:00:00', NULL, NULL, 295, NULL, NULL, NULL, 0, NULL, 0, 0, NULL),
(86, '2018-06-20 00:00:00', NULL, NULL, 296, NULL, NULL, NULL, 0, NULL, 0, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `BlogPost_Tags`
--

CREATE TABLE `BlogPost_Tags` (
  `ID` int(11) NOT NULL,
  `BlogPostID` int(11) NOT NULL DEFAULT '0',
  `BlogTagID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `BlogPost_Tags`
--

INSERT INTO `BlogPost_Tags` (`ID`, `BlogPostID`, `BlogTagID`) VALUES
(1, 22, 1),
(2, 21, 1),
(3, 40, 2),
(4, 41, 2),
(5, 42, 3),
(6, 46, 4);

-- --------------------------------------------------------

--
-- Table structure for table `BlogPost_versions`
--

CREATE TABLE `BlogPost_versions` (
  `ID` int(11) NOT NULL,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `PublishDate` datetime DEFAULT NULL,
  `AuthorNames` varchar(1024) DEFAULT NULL,
  `Summary` mediumtext,
  `FeaturedImageID` int(11) NOT NULL DEFAULT '0',
  `EventTime` varchar(255) DEFAULT NULL,
  `EventTimeStarted` varchar(255) DEFAULT NULL,
  `EventTimeFinished` varchar(255) DEFAULT NULL,
  `FeaturedImageFeaturedImageID` int(11) NOT NULL DEFAULT '0',
  `EventLocation` varchar(255) DEFAULT NULL,
  `HidePublishDate` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `OverlayPublishDate` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `EventPostDate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `BlogPost_versions`
--

INSERT INTO `BlogPost_versions` (`ID`, `RecordID`, `Version`, `PublishDate`, `AuthorNames`, `Summary`, `FeaturedImageID`, `EventTime`, `EventTimeStarted`, `EventTimeFinished`, `FeaturedImageFeaturedImageID`, `EventLocation`, `HidePublishDate`, `OverlayPublishDate`, `EventPostDate`) VALUES
(1, 40, 8, '2018-09-28 09:30:00', NULL, NULL, 46, NULL, '3:00PM', '4:00PM', 0, 'North Shore Hospital', 0, 0, NULL),
(2, 41, 5, '2018-09-11 12:30:00', NULL, NULL, 47, NULL, '12:30PM', '1:30PM', 0, 'Whenua Pupuke Building  North Shore Hospital', 0, 0, NULL),
(3, 46, 4, '2018-05-12 08:30:00', NULL, NULL, 48, NULL, '8:30AM', '5:30PM', 0, 'Auditorium - Whenua Pupuke Building North Shore Hospital, Takapuna', 0, 0, NULL),
(4, 42, 7, '2018-06-29 11:30:00', NULL, NULL, 49, NULL, '11:30AM', '1:00PM', 0, 'Institute for Innovation + Improvement (i3) Large Boardroom, North Shore Hospital', 0, 0, NULL),
(5, 46, 5, '2018-05-12 08:30:00', NULL, NULL, 48, NULL, '8:30AM', '5:30PM', 0, 'Whenua Pupuke Building North Shore Hospital', 0, 0, NULL),
(6, 56, 1, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, 0, 0, NULL),
(7, 56, 2, NULL, NULL, NULL, 211, NULL, NULL, NULL, 0, NULL, 0, 0, NULL),
(8, 56, 3, '2018-10-17 16:56:40', NULL, NULL, 211, NULL, NULL, NULL, 0, NULL, 0, 0, NULL),
(9, 57, 1, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, 0, 0, NULL),
(10, 56, 4, '2018-10-17 16:56:00', NULL, NULL, 211, NULL, '5:30pm', '9:00pm', 0, 'Royal New Zealand Yacht Squadron', 0, 0, NULL),
(11, 56, 5, '2018-10-17 16:56:00', NULL, NULL, 211, NULL, '5:30pm', '9:00pm', 0, 'Royal New Zealand Yacht Squadron', 0, 0, NULL),
(12, 56, 6, '2018-10-17 16:56:00', NULL, NULL, 211, NULL, '5:30pm', '9:00pm', 0, 'Royal New Zealand Yacht Squadron', 0, 0, NULL),
(13, 57, 2, NULL, NULL, NULL, 211, NULL, '5:30pm', '9:00pm', 0, 'Whenua Pupuke - North Shore Hospital', 0, 0, NULL),
(14, 57, 3, '2018-10-17 17:00:17', NULL, NULL, 211, NULL, '5:30pm', '9:00pm', 0, 'Whenua Pupuke - North Shore Hospital', 0, 0, NULL),
(15, 57, 4, '2018-10-17 17:00:00', NULL, NULL, 211, NULL, '5:30pm', '9:00pm', 0, 'Whenua Pupuke - North Shore Hospital', 0, 0, NULL),
(16, 57, 5, '2018-10-17 17:00:00', NULL, NULL, 211, NULL, '5:30pm', '9:00pm', 0, 'Whenua Pupuke - North Shore Hospital', 1, 0, NULL),
(17, 56, 7, '2018-10-17 16:56:00', NULL, NULL, 211, NULL, '5:30pm', '9:00pm', 0, 'Royal New Zealand Yacht Squadron', 1, 0, NULL),
(18, 57, 6, '2018-10-17 17:00:00', NULL, NULL, 211, NULL, '5:30pm', '9:00pm', 0, 'Whenua Pupuke - North Shore Hospital', 0, 1, NULL),
(19, 56, 8, '2018-10-17 16:56:00', NULL, NULL, 211, NULL, '5:30pm', '9:00pm', 0, 'Royal New Zealand Yacht Squadron', 0, 1, NULL),
(20, 56, 9, '2018-11-15 16:56:00', NULL, NULL, 211, NULL, '5:30pm', '9:00pm', 0, 'Royal New Zealand Yacht Squadron', 0, 1, NULL),
(21, 57, 7, '2018-11-22 17:00:00', NULL, NULL, 211, NULL, '5:30pm', '9:00pm', 0, 'Whenua Pupuke - North Shore Hospital', 0, 1, NULL),
(22, 57, 8, '2018-10-18 17:00:00', NULL, NULL, 211, NULL, '5:30pm', '9:00pm', 0, 'Whenua Pupuke - North Shore Hospital', 0, 1, NULL),
(23, 56, 10, '2018-10-18 16:56:00', NULL, NULL, 211, NULL, '5:30pm', '9:00pm', 0, 'Royal New Zealand Yacht Squadron', 0, 1, NULL),
(24, 56, 11, '2018-10-17 16:56:00', NULL, NULL, 211, NULL, '5:30pm', '9:00pm', 0, 'Royal New Zealand Yacht Squadron', 0, 1, NULL),
(25, 57, 9, '2018-10-17 17:00:00', NULL, NULL, 211, NULL, '5:30pm', '9:00pm', 0, 'Whenua Pupuke - North Shore Hospital', 0, 1, NULL),
(26, 59, 1, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, 0, 0, NULL),
(27, 59, 2, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, 0, 0, NULL),
(28, 59, 3, '2018-10-18 12:29:17', NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, 0, 0, NULL),
(29, 59, 4, '2018-10-18 12:29:00', NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, 0, 0, NULL),
(30, 60, 1, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, 0, 0, NULL),
(31, 60, 2, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, 0, 0, NULL),
(32, 60, 3, '2018-10-18 12:35:05', NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, 0, 0, NULL),
(33, 59, 5, '2018-10-18 12:29:00', NULL, NULL, 215, NULL, NULL, NULL, 0, NULL, 0, 0, NULL),
(34, 61, 1, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, 0, 0, NULL),
(35, 61, 2, NULL, NULL, NULL, 216, NULL, NULL, NULL, 0, NULL, 0, 0, NULL),
(36, 61, 3, '2018-10-18 12:46:00', NULL, NULL, 216, NULL, NULL, NULL, 0, NULL, 0, 0, NULL),
(37, 60, 4, '2018-10-18 12:35:00', NULL, NULL, 217, NULL, NULL, NULL, 0, NULL, 0, 0, NULL),
(38, 60, 5, '2018-10-18 12:35:00', NULL, NULL, 217, NULL, NULL, NULL, 0, NULL, 0, 1, NULL),
(39, 59, 6, '2018-10-18 12:29:00', NULL, NULL, 215, NULL, NULL, NULL, 0, NULL, 0, 1, NULL),
(40, 59, 7, '2018-10-18 12:29:00', NULL, NULL, 215, NULL, NULL, NULL, 0, NULL, 0, 1, NULL),
(41, 60, 6, '2018-10-18 12:35:00', NULL, NULL, 217, NULL, NULL, NULL, 0, NULL, 0, 1, NULL),
(42, 61, 4, '2018-10-18 12:46:00', NULL, NULL, 216, NULL, NULL, NULL, 0, NULL, 0, 0, NULL),
(43, 61, 5, '2018-10-18 12:46:00', NULL, NULL, 216, NULL, NULL, NULL, 0, NULL, 0, 1, NULL),
(44, 57, 10, '2018-10-17 17:00:00', NULL, NULL, 211, NULL, '5:30pm', '9:00pm', 0, 'Whenua Pupuke - North Shore Hospital', 0, 1, '2018-11-15'),
(45, 56, 12, '2018-10-17 16:56:00', NULL, NULL, 211, NULL, '5:30pm', '9:00pm', 0, 'Royal New Zealand Yacht Squadron', 0, 1, '2018-11-22'),
(46, 61, 6, '2018-10-18 12:46:00', NULL, NULL, 216, NULL, NULL, NULL, 0, NULL, 0, 1, '2018-08-28'),
(47, 60, 7, '2018-10-18 12:35:00', NULL, NULL, 217, NULL, NULL, NULL, 0, NULL, 0, 1, '2018-09-04'),
(48, 59, 8, '2018-10-18 12:29:00', NULL, NULL, 215, NULL, NULL, NULL, 0, NULL, 0, 1, '2018-09-12'),
(49, 82, 1, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, 0, 0, NULL),
(50, 82, 2, NULL, NULL, NULL, 290, NULL, NULL, NULL, 0, NULL, 0, 1, NULL),
(51, 82, 3, '2018-11-09 10:19:53', NULL, NULL, 290, NULL, NULL, NULL, 0, NULL, 0, 1, NULL),
(52, 82, 4, '2018-11-09 10:19:00', NULL, NULL, 290, NULL, NULL, NULL, 0, NULL, 0, 1, NULL),
(53, 82, 5, '2018-11-09 10:19:00', NULL, NULL, 290, NULL, NULL, NULL, 0, NULL, 0, 1, '2018-11-15'),
(54, 83, 1, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, 0, 0, NULL),
(55, 83, 2, NULL, NULL, NULL, 293, NULL, NULL, NULL, 0, NULL, 0, 0, NULL),
(56, 83, 3, '2018-11-09 11:32:53', NULL, NULL, 293, NULL, NULL, NULL, 0, NULL, 0, 0, NULL),
(57, 83, 4, '2018-11-09 11:32:00', NULL, NULL, 293, NULL, NULL, NULL, 0, NULL, 0, 0, '2018-08-14'),
(58, 82, 6, '2018-11-09 10:19:00', NULL, NULL, 290, NULL, NULL, NULL, 0, NULL, 0, 1, '2018-11-15'),
(59, 82, 7, '2018-10-16 10:19:00', NULL, NULL, 290, NULL, NULL, NULL, 0, NULL, 0, 1, '2018-11-15'),
(60, 59, 9, '2018-09-12 12:29:00', NULL, NULL, 215, NULL, NULL, NULL, 0, NULL, 0, 1, '2018-09-12'),
(61, 60, 8, '2018-09-04 12:35:00', NULL, NULL, 217, NULL, NULL, NULL, 0, NULL, 0, 1, '2018-09-04'),
(62, 61, 7, '2018-08-28 12:46:00', NULL, NULL, 216, NULL, NULL, NULL, 0, NULL, 0, 1, '2018-08-28'),
(63, 83, 5, '2018-08-14 11:32:00', NULL, NULL, 293, NULL, NULL, NULL, 0, NULL, 0, 0, '2018-08-14'),
(64, 84, 1, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, 0, 0, NULL),
(65, 84, 2, '2018-07-11 00:00:00', NULL, NULL, 294, NULL, NULL, NULL, 0, NULL, 0, 0, '2018-07-11'),
(66, 85, 1, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, 0, 0, NULL),
(67, 85, 2, '2018-07-03 00:00:00', NULL, NULL, 295, NULL, NULL, NULL, 0, NULL, 0, 0, NULL),
(68, 86, 1, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, 0, 0, NULL),
(69, 86, 2, '2019-01-20 00:00:00', NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, 0, 0, NULL),
(70, 86, 3, '2018-06-20 00:00:00', NULL, NULL, 296, NULL, NULL, NULL, 0, NULL, 0, 0, NULL),
(71, 57, 11, '2018-10-17 17:00:00', NULL, NULL, 211, NULL, '5:30pm', '9:00pm', 0, 'Whenua Pupuke - North Shore Hospital', 0, 1, '2018-11-15'),
(72, 57, 12, '2018-10-17 17:00:00', NULL, NULL, 211, NULL, '5:30pm', '9:00pm', 0, 'Whenua Pupuke - North Shore Hospital', 0, 1, '2018-11-15'),
(73, 57, 13, '2018-10-17 17:00:00', NULL, '<p>CLICK HERE: <a class=\"external\" title=\"Open external link\" rel=\"external\" href=\"https://bit.ly/2PCibKD\">https://bit.ly/2PCibKD </a>to RSVP now. <br>Please ensure you use one name and one email address per participant.<br>Don\'t forget to add your MCNZ number if you need GP CME.<br>Session 6-9pm, a light dinner will be served from 5.30pm.</p>', 211, NULL, '5:30pm', '9:00pm', 0, 'Whenua Pupuke - North Shore Hospital', 0, 1, '2018-11-15'),
(74, 57, 14, '2018-10-17 17:00:00', NULL, '<p>CLICK HERE: <a class=\"external\" title=\"Open external link\" rel=\"external\" href=\"https://bit.ly/2PCibKD\">https://bit.ly/2PCibKD </a>to RSVP now. <br>Please ensure you use one name and one email address per participant.<br>Don\'t forget to add your MCNZ number if you need GP CME.<br>Session 6-9pm, a light dinner will be served from 5.30pm.</p>', 211, NULL, '5:30pm', '9:00pm', 0, 'Whenua Pupuke - North Shore Hospital', 0, 1, '2018-11-15'),
(75, 57, 15, '2018-10-17 17:00:00', NULL, NULL, 211, NULL, '5:30pm', '9:00pm', 0, 'Whenua Pupuke - North Shore Hospital', 0, 1, '2018-11-15'),
(76, 57, 16, '2018-10-17 17:00:00', NULL, NULL, 211, NULL, '5:30pm', '9:00pm', 0, 'Whenua Pupuke - North Shore Hospital', 0, 1, '2018-11-15'),
(77, 57, 17, '2018-10-17 17:00:00', NULL, NULL, 211, NULL, '5:30pm', '9:00pm', 0, 'Whenua Pupuke - North Shore Hospital', 0, 1, '2018-11-15');

-- --------------------------------------------------------

--
-- Table structure for table `BlogTag`
--

CREATE TABLE `BlogTag` (
  `ID` int(11) NOT NULL,
  `ClassName` enum('BlogTag') DEFAULT 'BlogTag',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Title` varchar(255) DEFAULT NULL,
  `URLSegment` varchar(255) DEFAULT NULL,
  `BlogID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `BlogTag`
--

INSERT INTO `BlogTag` (`ID`, `ClassName`, `LastEdited`, `Created`, `Title`, `URLSegment`, `BlogID`) VALUES
(1, 'BlogTag', '2018-09-28 11:02:55', '2018-09-24 17:16:13', 'Featured', 'featured', 20),
(2, 'BlogTag', '2018-10-04 14:40:43', '2018-10-04 14:40:32', 'September 2018', 'september-2018', 43),
(3, 'BlogTag', '2018-10-04 14:41:20', '2018-10-04 14:41:20', 'June 2018', 'june-2018', 43),
(4, 'BlogTag', '2018-10-04 14:41:33', '2018-10-04 14:41:33', 'May 2018', 'may-2018', 43);

-- --------------------------------------------------------

--
-- Table structure for table `BlogTree`
--

CREATE TABLE `BlogTree` (
  `ID` int(11) NOT NULL,
  `Name` varchar(255) DEFAULT NULL,
  `LandingPageFreshness` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `BlogTree_Live`
--

CREATE TABLE `BlogTree_Live` (
  `ID` int(11) NOT NULL,
  `Name` varchar(255) DEFAULT NULL,
  `LandingPageFreshness` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `BlogTree_versions`
--

CREATE TABLE `BlogTree_versions` (
  `ID` int(11) NOT NULL,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `Name` varchar(255) DEFAULT NULL,
  `LandingPageFreshness` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `Blog_Contributors`
--

CREATE TABLE `Blog_Contributors` (
  `ID` int(11) NOT NULL,
  `BlogID` int(11) NOT NULL DEFAULT '0',
  `MemberID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `Blog_Editors`
--

CREATE TABLE `Blog_Editors` (
  `ID` int(11) NOT NULL,
  `BlogID` int(11) NOT NULL DEFAULT '0',
  `MemberID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `Blog_Live`
--

CREATE TABLE `Blog_Live` (
  `ID` int(11) NOT NULL,
  `PostsPerPage` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Blog_Live`
--

INSERT INTO `Blog_Live` (`ID`, `PostsPerPage`) VALUES
(20, 10),
(43, 10),
(47, 10),
(55, 10),
(58, 10);

-- --------------------------------------------------------

--
-- Table structure for table `Blog_versions`
--

CREATE TABLE `Blog_versions` (
  `ID` int(11) NOT NULL,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `PostsPerPage` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Blog_versions`
--

INSERT INTO `Blog_versions` (`ID`, `RecordID`, `Version`, `PostsPerPage`) VALUES
(1, 43, 9, 10),
(2, 43, 10, 10),
(3, 43, 11, 10),
(4, 43, 12, 10),
(5, 43, 13, 10),
(6, 43, 14, 10),
(7, 55, 1, 10),
(8, 55, 2, 10),
(9, 55, 3, 10),
(10, 58, 1, 10),
(11, 58, 2, 10),
(12, 58, 3, 10),
(13, 58, 4, 10),
(14, 58, 5, 10),
(15, 58, 6, 10),
(16, 58, 7, 10),
(17, 58, 8, 10),
(18, 55, 4, 10),
(19, 55, 5, 10),
(20, 55, 6, 10);

-- --------------------------------------------------------

--
-- Table structure for table `Blog_Writers`
--

CREATE TABLE `Blog_Writers` (
  `ID` int(11) NOT NULL,
  `BlogID` int(11) NOT NULL DEFAULT '0',
  `MemberID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `CSSAssetUpload`
--

CREATE TABLE `CSSAssetUpload` (
  `ID` int(11) NOT NULL,
  `Sort` int(11) NOT NULL DEFAULT '0',
  `SiteConfigID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `CSSAssetUpload`
--

INSERT INTO `CSSAssetUpload` (`ID`, `Sort`, `SiteConfigID`) VALUES
(137, 0, 2),
(138, 0, 2),
(139, 0, 2),
(140, 0, 2),
(141, 0, 2),
(142, 0, 2),
(143, 0, 2),
(144, 0, 2);

-- --------------------------------------------------------

--
-- Table structure for table `DownloadableModule`
--

CREATE TABLE `DownloadableModule` (
  `ID` int(11) NOT NULL,
  `ClassName` enum('DownloadableModule') DEFAULT 'DownloadableModule',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Title` varchar(255) DEFAULT NULL,
  `ModuleType` enum('General Practice','Pharmacy') DEFAULT 'General Practice',
  `Sort` int(11) NOT NULL DEFAULT '0',
  `ImageID` int(11) NOT NULL DEFAULT '0',
  `FileID` int(11) NOT NULL DEFAULT '0',
  `ResourcesModulePageID` int(11) NOT NULL DEFAULT '0',
  `ExternalLink` varchar(255) DEFAULT NULL,
  `PageLinkID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `DownloadableModule`
--

INSERT INTO `DownloadableModule` (`ID`, `ClassName`, `LastEdited`, `Created`, `Title`, `ModuleType`, `Sort`, `ImageID`, `FileID`, `ResourcesModulePageID`, `ExternalLink`, `PageLinkID`) VALUES
(1, 'DownloadableModule', '2018-10-30 10:47:07', '2018-10-30 10:46:55', 'Module', 'General Practice', 0, 0, 236, 73, NULL, 0),
(2, 'DownloadableModule', '2018-10-30 10:49:24', '2018-10-30 10:49:24', 'Data Collection Spreadsheet', 'General Practice', 0, 0, 237, 73, NULL, 0),
(3, 'DownloadableModule', '2018-10-30 10:50:09', '2018-10-30 10:50:09', 'Paper Form', 'General Practice', 0, 0, 238, 73, NULL, 0),
(4, 'DownloadableModule', '2018-10-30 10:50:55', '2018-10-30 10:50:51', 'MedTech Query Build', 'General Practice', 0, 0, 239, 73, NULL, 0),
(5, 'DownloadableModule', '2018-10-30 10:52:22', '2018-10-30 10:52:17', 'MyPractice How to', 'General Practice', 0, 0, 240, 73, NULL, 0),
(6, 'DownloadableModule', '2018-10-30 10:53:47', '2018-10-30 10:53:12', 'Medtech 32 Tips & Tricks', 'General Practice', 0, 0, 241, 73, NULL, 0),
(7, 'DownloadableModule', '2018-10-30 10:55:35', '2018-10-30 10:55:04', 'Module', 'Pharmacy', 0, 0, 242, 73, NULL, 0),
(8, 'DownloadableModule', '2018-10-30 10:56:09', '2018-10-30 10:56:09', 'Data Collection Spreadsheet', 'Pharmacy', 0, 0, 243, 73, NULL, 0),
(9, 'DownloadableModule', '2018-11-09 08:49:09', '2018-11-09 08:49:09', 'Module', 'General Practice', 0, 0, 282, 74, NULL, 0),
(10, 'DownloadableModule', '2018-11-09 08:50:23', '2018-11-09 08:50:23', 'Data Collection Spreadsheet', 'General Practice', 0, 0, 283, 74, NULL, 0),
(11, 'DownloadableModule', '2018-11-09 08:51:06', '2018-11-09 08:50:57', 'Paper Form', 'General Practice', 0, 0, 284, 74, NULL, 0),
(12, 'DownloadableModule', '2018-11-09 08:51:43', '2018-11-09 08:51:28', 'MedTech Query Build', 'General Practice', 0, 0, 285, 74, NULL, 0),
(13, 'DownloadableModule', '2018-11-09 08:52:13', '2018-11-09 08:52:10', 'MedTech Tips & Tricks', 'General Practice', 0, 0, 286, 74, NULL, 0),
(14, 'DownloadableModule', '2018-11-09 08:53:08', '2018-11-09 08:52:59', 'My Practice How to', 'General Practice', 0, 0, 287, 74, NULL, 0),
(15, 'DownloadableModule', '2018-11-09 08:53:36', '2018-11-09 08:53:33', 'Standard Inbox Comments', 'General Practice', 0, 0, 288, 74, NULL, 0),
(16, 'DownloadableModule', '2018-11-09 08:54:11', '2018-11-09 08:54:11', 'Practice Self Assessment', 'General Practice', 0, 0, 289, 74, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `ErrorPage`
--

CREATE TABLE `ErrorPage` (
  `ID` int(11) NOT NULL,
  `ErrorCode` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ErrorPage`
--

INSERT INTO `ErrorPage` (`ID`, `ErrorCode`) VALUES
(4, 404),
(5, 500);

-- --------------------------------------------------------

--
-- Table structure for table `ErrorPage_Live`
--

CREATE TABLE `ErrorPage_Live` (
  `ID` int(11) NOT NULL,
  `ErrorCode` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ErrorPage_Live`
--

INSERT INTO `ErrorPage_Live` (`ID`, `ErrorCode`) VALUES
(4, 404),
(5, 500);

-- --------------------------------------------------------

--
-- Table structure for table `ErrorPage_versions`
--

CREATE TABLE `ErrorPage_versions` (
  `ID` int(11) NOT NULL,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `ErrorCode` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ExperienceLevel`
--

CREATE TABLE `ExperienceLevel` (
  `ID` int(11) NOT NULL,
  `ClassName` enum('ExperienceLevel') DEFAULT 'ExperienceLevel',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Title` varchar(255) DEFAULT NULL,
  `Sort` int(11) NOT NULL DEFAULT '0',
  `ResourcesPageID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ExperienceLevel`
--

INSERT INTO `ExperienceLevel` (`ID`, `ClassName`, `LastEdited`, `Created`, `Title`, `Sort`, `ResourcesPageID`) VALUES
(1, 'ExperienceLevel', '2018-10-30 13:19:27', '2018-10-30 13:19:27', 'Year 1', 0, 72),
(2, 'ExperienceLevel', '2018-10-30 13:19:33', '2018-10-30 13:19:33', 'Year 2+', 0, 72),
(3, 'ExperienceLevel', '2018-10-30 13:19:39', '2018-10-30 13:19:39', 'Year 3+', 0, 72);

-- --------------------------------------------------------

--
-- Table structure for table `File`
--

CREATE TABLE `File` (
  `ID` int(11) NOT NULL,
  `ClassName` enum('File','Folder','Image','Image_Cached','CSSAssetUpload') DEFAULT 'File',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Name` varchar(255) DEFAULT NULL,
  `Title` varchar(255) DEFAULT NULL,
  `Filename` mediumtext,
  `Content` mediumtext,
  `ShowInSearch` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `ParentID` int(11) NOT NULL DEFAULT '0',
  `OwnerID` int(11) NOT NULL DEFAULT '0',
  `SubsiteID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `File`
--

INSERT INTO `File` (`ID`, `ClassName`, `LastEdited`, `Created`, `Name`, `Title`, `Filename`, `Content`, `ShowInSearch`, `ParentID`, `OwnerID`, `SubsiteID`) VALUES
(1, 'Folder', '2018-09-18 10:05:10', '2018-09-18 10:05:10', 'Uploads', 'Uploads', 'assets/Uploads/', NULL, 1, 0, 0, 0),
(2, 'Image', '2018-09-18 10:05:10', '2018-09-18 10:05:10', 'SilverStripeLogo.png', 'SilverStripeLogo.png', 'assets/Uploads/SilverStripeLogo.png', NULL, 1, 1, 0, 0),
(4, 'Folder', '2018-09-18 11:05:53', '2018-09-18 11:05:53', 'SlideImages', 'SlideImages', 'assets/Uploads/SlideImages/', NULL, 1, 1, 1, 0),
(5, 'Image', '2018-09-18 11:05:53', '2018-09-18 11:05:53', 'HeroBanner.jpg', 'HeroBanner', 'assets/Uploads/SlideImages/HeroBanner.jpg', NULL, 1, 4, 1, 0),
(6, 'Image', '2018-09-18 11:07:42', '2018-09-18 11:07:42', 'health-leadership-1938x969px.jpg', 'health leadership 1938x969px', 'assets/Uploads/SlideImages/health-leadership-1938x969px.jpg', NULL, 1, 4, 1, 0),
(9, 'Image', '2018-09-18 18:03:34', '2018-09-18 18:03:34', 'HeroBanner.png', 'HeroBanner', 'assets/Uploads/HeroBanner.png', NULL, 1, 1, 1, 0),
(13, 'Image', '2018-09-18 18:09:08', '2018-09-18 18:09:08', 'logo-i3.png', 'logo i3', 'assets/Uploads/logo-i3.png', NULL, 1, 1, 1, 0),
(14, 'Image', '2018-09-19 10:22:07', '2018-09-19 10:22:07', 'default-bg.png', 'default bg', 'assets/Uploads/default-bg.png', NULL, 1, 1, 1, 0),
(19, 'Image', '2018-09-20 10:38:55', '2018-09-20 10:38:55', 'i3-Person-Centred-Design.png', 'i3 Person Centred Design', 'assets/Uploads/i3-Person-Centred-Design.png', NULL, 1, 1, 1, 0),
(20, 'Image', '2018-09-20 10:39:54', '2018-09-20 10:39:54', 'i3-Community-Clinician-Led2.png', 'i3 Community Clinician Led2', 'assets/Uploads/i3-Community-Clinician-Led2.png', NULL, 1, 1, 1, 0),
(21, 'Image', '2018-09-20 13:47:50', '2018-09-20 13:47:50', 'i3-Data-Driven.png', 'i3 Data Driven', 'assets/Uploads/i3-Data-Driven.png', NULL, 1, 1, 1, 0),
(24, 'Image', '2018-09-21 11:28:06', '2018-09-21 11:28:06', 'work2.jpg', 'work2', 'assets/Uploads/work2.jpg', NULL, 1, 1, 1, 0),
(25, 'Image', '2018-09-21 11:28:45', '2018-09-21 11:28:45', 'work1.png', 'work1', 'assets/Uploads/work1.png', NULL, 1, 1, 1, 0),
(26, 'Image', '2018-09-21 11:29:22', '2018-09-21 11:29:22', 'work3.jpg', 'work3', 'assets/Uploads/work3.jpg', NULL, 1, 1, 1, 0),
(27, 'Image', '2018-09-21 11:39:35', '2018-09-21 11:39:35', 'work4.jpg', 'work4', 'assets/Uploads/work4.jpg', NULL, 1, 1, 1, 0),
(28, 'Image', '2018-09-24 14:50:59', '2018-09-24 14:50:59', 'Diversity-Awards-2018-eCALD.jpg', 'Diversity Awards 2018 eCALD', 'assets/Uploads/Diversity-Awards-2018-eCALD.jpg', NULL, 1, 1, 1, 0),
(29, 'Image', '2018-09-24 14:57:21', '2018-09-24 14:57:21', 'E-Clissold-2.jpg', 'E Clissold 2', 'assets/Uploads/E-Clissold-2.jpg', NULL, 1, 1, 1, 0),
(30, 'Image', '2018-09-24 14:59:06', '2018-09-24 14:59:06', 'J-Ng-Phar-of-Yr-2017-2-1800x1200px.png', 'J Ng Phar of Yr 2017 2 1800x1200px', 'assets/Uploads/J-Ng-Phar-of-Yr-2017-2-1800x1200px.png', NULL, 1, 1, 1, 0),
(31, 'Image', '2018-09-24 14:59:33', '2018-09-24 14:59:33', 'QlikIanHong.jpg', 'QlikIanHong', 'assets/Uploads/QlikIanHong.jpg', NULL, 1, 1, 1, 0),
(32, 'Image', '2018-09-24 17:28:07', '2018-09-24 17:28:07', 'Kelly-HQSC.jpg', 'Kelly HQSC', 'assets/Uploads/Kelly-HQSC.jpg', NULL, 1, 1, 1, 0),
(44, 'Image', '2018-09-27 16:59:35', '2018-09-27 16:59:35', 'Dina-Emmanuel.jpg', 'Dina Emmanuel', 'assets/Uploads/Dina-Emmanuel.jpg', NULL, 1, 1, 1, 0),
(45, 'Image', '2018-09-27 17:00:07', '2018-09-27 17:00:07', 'Eleri-Clissold.jpg', 'Eleri Clissold', 'assets/Uploads/Eleri-Clissold.jpg', NULL, 1, 1, 1, 0),
(46, 'Image', '2018-09-28 10:52:22', '2018-09-28 10:52:22', 'event1.jpg', 'event1', 'assets/Uploads/event1.jpg', NULL, 1, 1, 1, 0),
(47, 'Image', '2018-09-28 10:57:58', '2018-09-28 10:57:58', 'event2.jpg', 'event2', 'assets/Uploads/event2.jpg', NULL, 1, 1, 1, 0),
(48, 'Image', '2018-09-28 11:07:10', '2018-09-28 11:07:10', 'event4.jpg', 'event4', 'assets/Uploads/event4.jpg', NULL, 1, 1, 1, 0),
(49, 'Image', '2018-09-28 11:08:16', '2018-09-28 11:08:16', 'event3.jpg', 'event3', 'assets/Uploads/event3.jpg', NULL, 1, 1, 1, 0),
(50, 'Image', '2018-09-28 16:07:29', '2018-09-28 16:07:29', 'Robyn-Whittaker-Harkness-2018-v2.jpg', 'Robyn Whittaker Harkness 2018 v2', 'assets/Uploads/Robyn-Whittaker-Harkness-2018-v2.jpg', NULL, 1, 1, 1, 0),
(51, 'Image', '2018-09-28 16:19:43', '2018-09-28 16:19:43', 'bg-blogs.png', 'bg blogs', 'assets/Uploads/bg-blogs.png', NULL, 1, 1, 1, 0),
(52, 'Image', '2018-09-28 16:44:07', '2018-09-28 16:44:07', 'blog2.jpg', 'blog2', 'assets/Uploads/blog2.jpg', NULL, 1, 1, 1, 0),
(53, 'Image', '2018-09-28 16:50:14', '2018-09-28 16:50:14', 'blogs3.png', 'blogs3', 'assets/Uploads/blogs3.png', NULL, 1, 1, 1, 0),
(54, 'Image', '2018-10-01 13:25:06', '2018-10-01 13:25:06', 'i3-logo-icon-colour-RGB-500-251-90.png', 'i3 logo icon colour RGB 500 251 90', 'assets/Uploads/i3-logo-icon-colour-RGB-500-251-90.png', NULL, 1, 1, 1, 0),
(55, 'Image', '2018-10-01 13:25:12', '2018-10-01 13:25:12', 'ols7vwansahw01v7vore.jpg', 'ols7vwansahw01v7vore', 'assets/Uploads/ols7vwansahw01v7vore.jpg', NULL, 1, 1, 1, 0),
(56, 'Image', '2018-10-01 17:36:07', '2018-10-01 17:36:07', 'events-banner.jpg', 'events banner', 'assets/Uploads/events-banner.jpg', NULL, 1, 1, 1, 0),
(57, 'Image', '2018-10-04 12:02:50', '2018-10-04 12:02:50', 'MobileLogo.png', 'MobileLogo', 'assets/Uploads/MobileLogo.png', NULL, 1, 1, 1, 0),
(59, 'Image', '2018-10-04 16:48:33', '2018-10-04 16:48:33', 'OurPeople.jpg', 'OurPeople', 'assets/Uploads/OurPeople.jpg', NULL, 1, 1, 1, 0),
(62, 'Image', '2018-10-08 16:11:04', '2018-10-08 16:11:04', 'Micheal-2-BW.jpg', 'Micheal 2 BW', 'assets/Uploads/Micheal-2-BW.jpg', NULL, 1, 1, 1, 0),
(66, 'Image', '2018-10-08 16:22:43', '2018-10-08 16:22:43', 'Michael-BW.jpg', 'Michael BW', 'assets/Uploads/Michael-BW.jpg', NULL, 1, 1, 1, 0),
(90, 'Image', '2018-10-10 11:48:05', '2018-10-10 11:48:05', 'Jane-BW.jpg', 'Jane BW', 'assets/Uploads/Jane-BW.jpg', NULL, 1, 1, 1, 0),
(97, 'Image', '2018-10-10 14:28:23', '2018-10-10 14:28:23', 'Dina-2.jpg', 'Dina 2', 'assets/Uploads/Dina-2.jpg', NULL, 1, 1, 1, 0),
(98, 'Image', '2018-10-10 14:28:34', '2018-10-10 14:28:34', 'Dina.jpg', 'Dina', 'assets/Uploads/Dina.jpg', NULL, 1, 1, 1, 0),
(99, 'Image', '2018-10-10 14:28:38', '2018-10-10 14:28:38', 'Dina-3.jpg', 'Dina 3', 'assets/Uploads/Dina-3.jpg', NULL, 1, 1, 1, 0),
(100, 'Image', '2018-10-10 14:31:26', '2018-10-10 14:31:26', 'Elna.jpg', 'Elna', 'assets/Uploads/Elna.jpg', NULL, 1, 1, 1, 0),
(101, 'Image', '2018-10-10 14:31:30', '2018-10-10 14:31:30', 'Elna-2.jpg', 'Elna 2', 'assets/Uploads/Elna-2.jpg', NULL, 1, 1, 1, 0),
(102, 'Image', '2018-10-10 14:32:06', '2018-10-10 14:32:06', 'Michael.jpg', 'Michael', 'assets/Uploads/Michael.jpg', NULL, 1, 1, 1, 0),
(103, 'Image', '2018-10-10 14:32:15', '2018-10-10 14:32:15', 'Michael-2.jpg', 'Michael 2', 'assets/Uploads/Michael-2.jpg', NULL, 1, 1, 1, 0),
(104, 'Image', '2018-10-10 14:32:33', '2018-10-10 14:32:33', 'Maneesh.jpg', 'Maneesh', 'assets/Uploads/Maneesh.jpg', NULL, 1, 1, 1, 0),
(105, 'Image', '2018-10-10 14:32:37', '2018-10-10 14:32:37', 'Maneesh-2.jpg', 'Maneesh 2', 'assets/Uploads/Maneesh-2.jpg', NULL, 1, 1, 1, 0),
(107, 'Image', '2018-10-10 14:58:42', '2018-10-10 14:58:42', 'Michael-3.jpg', 'Michael 3', 'assets/Uploads/Michael-3.jpg', NULL, 1, 1, 1, 0),
(108, 'Image', '2018-10-10 14:58:45', '2018-10-10 14:58:45', 'Michael-4.jpg', 'Michael 4', 'assets/Uploads/Michael-4.jpg', NULL, 1, 1, 1, 0),
(109, 'Image', '2018-10-10 15:04:07', '2018-10-10 15:04:07', 'Sharon.jpg', 'Sharon', 'assets/Uploads/Sharon.jpg', NULL, 1, 1, 1, 0),
(110, 'Image', '2018-10-10 15:04:12', '2018-10-10 15:04:12', 'Sharon-2.jpg', 'Sharon 2', 'assets/Uploads/Sharon-2.jpg', NULL, 1, 1, 1, 0),
(111, 'Image', '2018-10-10 15:04:26', '2018-10-10 15:04:26', 'SueFrench.jpg', 'SueFrench', 'assets/Uploads/SueFrench.jpg', NULL, 1, 1, 1, 0),
(112, 'Image', '2018-10-10 15:04:36', '2018-10-10 15:04:36', 'Delwyn.jpg', 'Delwyn', 'assets/Uploads/Delwyn.jpg', NULL, 1, 1, 1, 0),
(115, 'Image', '2018-10-10 15:05:07', '2018-10-10 15:05:07', 'Sangeeta.jpg', 'Sangeeta', 'assets/Uploads/Sangeeta.jpg', NULL, 1, 1, 1, 0),
(116, 'Image', '2018-10-10 15:08:06', '2018-10-10 15:08:06', 'Jerome.jpg', 'Jerome', 'assets/Uploads/Jerome.jpg', NULL, 1, 1, 1, 0),
(117, 'Image', '2018-10-10 15:08:10', '2018-10-10 15:08:10', 'Jerome-2.jpg', 'Jerome 2', 'assets/Uploads/Jerome-2.jpg', NULL, 1, 1, 1, 0),
(118, 'Image', '2018-10-10 15:08:16', '2018-10-10 15:08:16', 'Jerome-3.jpg', 'Jerome 3', 'assets/Uploads/Jerome-3.jpg', NULL, 1, 1, 1, 0),
(119, 'Image', '2018-10-10 15:13:01', '2018-10-10 15:13:01', 'Jane-1.jpg', 'Jane 1', 'assets/Uploads/Jane-1.jpg', NULL, 1, 1, 1, 0),
(120, 'Image', '2018-10-10 15:13:05', '2018-10-10 15:13:05', 'Jane-2.jpg', 'Jane 2', 'assets/Uploads/Jane-2.jpg', NULL, 1, 1, 1, 0),
(121, 'Image', '2018-10-10 15:13:44', '2018-10-10 15:13:44', 'Jane-3.jpg', 'Jane 3', 'assets/Uploads/Jane-3.jpg', NULL, 1, 1, 1, 0),
(122, 'Image', '2018-10-10 15:16:42', '2018-10-10 15:16:42', 'Lisa.jpg', 'Lisa', 'assets/Uploads/Lisa.jpg', NULL, 1, 1, 1, 0),
(123, 'Image', '2018-10-10 15:16:48', '2018-10-10 15:16:48', 'Lisa-2.jpg', 'Lisa 2', 'assets/Uploads/Lisa-2.jpg', NULL, 1, 1, 1, 0),
(124, 'Image', '2018-10-10 15:16:54', '2018-10-10 15:16:54', 'Lisa-3.jpg', 'Lisa 3', 'assets/Uploads/Lisa-3.jpg', NULL, 1, 1, 1, 0),
(125, 'Image', '2018-10-10 17:10:02', '2018-10-10 17:10:02', 'Kevin-BW.jpg', 'Kevin BW', 'assets/Uploads/Kevin-BW.jpg', NULL, 1, 1, 1, 0),
(126, 'Image', '2018-10-10 17:11:30', '2018-10-10 17:11:30', 'Kevin-BW2.jpg', 'Kevin BW2', 'assets/Uploads/Kevin-BW2.jpg', NULL, 1, 1, 1, 0),
(127, 'Image', '2018-10-10 17:11:37', '2018-10-10 17:11:37', 'Kevin-2.jpg', 'Kevin 2', 'assets/Uploads/Kevin-2.jpg', NULL, 1, 1, 1, 0),
(128, 'Image', '2018-10-10 17:11:41', '2018-10-10 17:11:41', 'Kevin-3.jpg', 'Kevin 3', 'assets/Uploads/Kevin-3.jpg', NULL, 1, 1, 1, 0),
(131, 'Image', '2018-10-11 14:58:23', '2018-10-11 14:58:23', 'Renee-N.jpg', 'Renee N', 'assets/Uploads/Renee-N.jpg', NULL, 1, 1, 1, 0),
(132, 'Image', '2018-10-11 14:58:32', '2018-10-11 14:58:32', 'Renee-2-N.jpg', 'Renee 2 N', 'assets/Uploads/Renee-2-N.jpg', NULL, 1, 1, 1, 0),
(133, 'Image', '2018-10-11 14:58:35', '2018-10-11 14:58:35', 'Renee-3-N.jpg', 'Renee 3 N', 'assets/Uploads/Renee-3-N.jpg', NULL, 1, 1, 1, 0),
(134, 'Image', '2018-10-12 10:06:49', '2018-10-12 10:06:49', 'Jay-1.jpg', 'Jay 1', 'assets/Uploads/Jay-1.jpg', NULL, 1, 1, 1, 0),
(135, 'Image', '2018-10-12 10:06:50', '2018-10-12 10:06:50', 'Jay-2.jpg', 'Jay 2', 'assets/Uploads/Jay-2.jpg', NULL, 1, 1, 1, 0),
(136, 'Image', '2018-10-12 10:06:54', '2018-10-12 10:06:54', 'Jay-3.jpg', 'Jay 3', 'assets/Uploads/Jay-3.jpg', NULL, 1, 1, 1, 0),
(137, 'CSSAssetUpload', '2018-10-15 16:24:54', '2018-10-15 16:24:44', 'form.css', 'form', 'assets/Uploads/form.css', NULL, 1, 1, 1, 0),
(138, 'CSSAssetUpload', '2018-10-15 16:24:54', '2018-10-15 16:24:45', 'reset.css', 'reset', 'assets/Uploads/reset.css', NULL, 1, 1, 1, 0),
(139, 'CSSAssetUpload', '2018-10-15 16:24:54', '2018-10-15 16:24:45', 'owl.theme.default.css', 'owl.theme.default', 'assets/Uploads/owl.theme.default.css', NULL, 1, 1, 1, 0),
(140, 'CSSAssetUpload', '2018-10-15 16:24:54', '2018-10-15 16:24:45', 'layout.css', 'layout', 'assets/Uploads/layout.css', NULL, 1, 1, 1, 0),
(141, 'CSSAssetUpload', '2018-10-15 16:24:54', '2018-10-15 16:24:46', 'animate.css', 'animate', 'assets/Uploads/animate.css', NULL, 1, 1, 1, 0),
(142, 'CSSAssetUpload', '2018-10-15 16:24:54', '2018-10-15 16:24:46', 'owl.carousel.css', 'owl.carousel', 'assets/Uploads/owl.carousel.css', NULL, 1, 1, 1, 0),
(143, 'CSSAssetUpload', '2018-10-15 16:24:54', '2018-10-15 16:24:46', 'style.css', 'style', 'assets/Uploads/style.css', NULL, 1, 1, 1, 0),
(144, 'CSSAssetUpload', '2018-10-15 16:24:54', '2018-10-15 16:24:46', 'typography.css', 'typography', 'assets/Uploads/typography.css', NULL, 1, 1, 1, 0),
(145, 'Image', '2018-10-15 16:48:32', '2018-10-15 16:48:32', 'SIP-Auckland-North-Central-Logo.png', 'SIP Auckland North Central Logo', 'assets/Uploads/SIP-Auckland-North-Central-Logo.png', NULL, 1, 1, 1, 0),
(192, 'Folder', '2018-10-16 15:09:31', '2018-10-16 15:09:31', 'i3-Assets', 'i3-Assets', 'assets/i3-Assets/', NULL, 1, 0, 1, 0),
(193, 'Folder', '2018-10-16 15:09:31', '2018-10-16 15:09:31', 'css', 'css', 'assets/i3-Assets/css/', NULL, 1, 192, 1, 0),
(194, 'File', '2018-10-16 15:09:31', '2018-10-16 15:09:31', 'form.css', 'form', 'assets/i3-Assets/css/form.css', NULL, 1, 193, 1, 0),
(195, 'File', '2018-10-16 15:09:32', '2018-10-16 15:09:32', 'owl.theme.default.css', 'owl.theme.default', 'assets/i3-Assets/css/owl.theme.default.css', NULL, 1, 193, 1, 0),
(196, 'File', '2018-10-16 15:09:32', '2018-10-16 15:09:32', 'animate.css', 'animate', 'assets/i3-Assets/css/animate.css', NULL, 1, 193, 1, 0),
(197, 'File', '2018-10-16 15:09:32', '2018-10-16 15:09:32', 'layout.css', 'layout', 'assets/i3-Assets/css/layout.css', NULL, 1, 193, 1, 0),
(198, 'File', '2018-10-16 15:09:33', '2018-10-16 15:09:33', 'owl.carousel.css', 'owl.carousel', 'assets/i3-Assets/css/owl.carousel.css', NULL, 1, 193, 1, 0),
(199, 'File', '2018-10-16 15:09:33', '2018-10-16 15:09:33', 'reset.css', 'reset', 'assets/i3-Assets/css/reset.css', NULL, 1, 193, 1, 0),
(200, 'File', '2018-10-16 15:09:33', '2018-10-16 15:09:33', 'style.css', 'style', 'assets/i3-Assets/css/style.css', NULL, 1, 193, 1, 0),
(201, 'File', '2018-10-16 15:09:33', '2018-10-16 15:09:33', 'typography.css', 'typography', 'assets/i3-Assets/css/typography.css', NULL, 1, 193, 1, 0),
(202, 'Folder', '2018-10-16 15:15:17', '2018-10-16 15:15:17', 'javascript', 'javascript', 'assets/i3-Assets/javascript/', NULL, 1, 192, 1, 0),
(203, 'File', '2018-10-16 15:15:17', '2018-10-16 15:15:17', 'jquery.js', 'jquery', 'assets/i3-Assets/javascript/jquery.js', NULL, 1, 202, 1, 0),
(204, 'File', '2018-10-16 15:15:38', '2018-10-16 15:15:38', 'script.js', 'script', 'assets/i3-Assets/javascript/script.js', NULL, 1, 202, 1, 0),
(205, 'File', '2018-10-16 15:15:44', '2018-10-16 15:15:44', 'jquery.min.js', 'jquery.min', 'assets/i3-Assets/javascript/jquery.min.js', NULL, 1, 202, 1, 0),
(206, 'File', '2018-10-16 15:15:50', '2018-10-16 15:15:50', 'owl.carousel.js', 'owl.carousel', 'assets/i3-Assets/javascript/owl.carousel.js', NULL, 1, 202, 1, 0),
(207, 'File', '2018-10-16 15:15:54', '2018-10-16 15:15:54', 'wow.min.js', 'wow.min', 'assets/i3-Assets/javascript/wow.min.js', NULL, 1, 202, 1, 0),
(208, 'File', '2018-10-16 15:15:59', '2018-10-16 15:15:59', 'mods.js', 'mods', 'assets/i3-Assets/javascript/mods.js', NULL, 1, 202, 1, 0),
(209, 'Image', '2018-10-17 11:23:23', '2018-10-17 11:23:23', 'SliderBanner1.jpg', 'SliderBanner1', 'assets/Uploads/SliderBanner1.jpg', NULL, 1, 1, 1, 0),
(211, 'Image', '2018-10-17 13:39:34', '2018-10-17 13:39:34', 'Tools.jpg', 'Tools', 'assets/Uploads/Tools.jpg', NULL, 1, 1, 1, 0),
(212, 'Image', '2018-10-17 14:23:22', '2018-10-17 14:23:22', 'cta1.jpg', 'cta1', 'assets/Uploads/cta1.jpg', NULL, 1, 1, 1, 0),
(213, 'Image', '2018-10-17 14:23:57', '2018-10-17 14:23:57', 'cta2.jpg', 'cta2', 'assets/Uploads/cta2.jpg', NULL, 1, 1, 1, 0),
(214, 'Image', '2018-10-17 14:24:15', '2018-10-17 14:24:15', 'cta3.jpg', 'cta3', 'assets/Uploads/cta3.jpg', NULL, 1, 1, 1, 0),
(215, 'Image', '2018-10-18 12:37:12', '2018-10-18 12:37:12', 'LatestNews.png', 'LatestNews', 'assets/Uploads/LatestNews.png', NULL, 1, 1, 1, 0),
(216, 'Image', '2018-10-18 12:45:54', '2018-10-18 12:45:54', 'michaelhammond.png', 'michaelhammond', 'assets/Uploads/michaelhammond.png', NULL, 1, 1, 1, 0),
(217, 'Image', '2018-10-18 12:46:10', '2018-10-18 12:46:10', 'prescribing-indicators.png', 'prescribing indicators', 'assets/Uploads/prescribing-indicators.png', NULL, 1, 1, 1, 0),
(219, 'Image', '2018-10-18 16:47:20', '2018-10-18 16:47:20', 'Dr-LisaBW.png', 'Dr LisaBW', 'assets/Uploads/Dr-LisaBW.png', NULL, 1, 1, 1, 0),
(220, 'Image', '2018-10-18 16:49:04', '2018-10-18 16:49:04', 'Diana.png', 'Diana', 'assets/Uploads/Diana.png', NULL, 1, 1, 1, 0),
(221, 'Image', '2018-10-18 16:50:09', '2018-10-18 16:50:09', 'Eleri.png', 'Eleri', 'assets/Uploads/Eleri.png', NULL, 1, 1, 1, 0),
(222, 'Image', '2018-10-18 16:57:40', '2018-10-18 16:57:40', 'Neil.png', 'Neil', 'assets/Uploads/Neil.png', NULL, 1, 1, 1, 0),
(223, 'Image', '2018-10-18 16:57:48', '2018-10-18 16:57:48', 'Sue.png', 'Sue', 'assets/Uploads/Sue.png', NULL, 1, 1, 1, 0),
(224, 'Image', '2018-10-18 17:01:28', '2018-10-18 17:01:28', 'Tim.png', 'Tim', 'assets/Uploads/Tim.png', NULL, 1, 1, 1, 0),
(225, 'Image', '2018-10-18 17:01:37', '2018-10-18 17:01:37', 'Micheal.png', 'Micheal', 'assets/Uploads/Micheal.png', NULL, 1, 1, 1, 0),
(226, 'Image', '2018-10-18 17:01:48', '2018-10-18 17:01:48', 'Sreeja.png', 'Sreeja', 'assets/Uploads/Sreeja.png', NULL, 1, 1, 1, 0),
(227, 'Image', '2018-10-23 13:33:43', '2018-10-23 13:33:43', 'SIPFooterLogo.png', 'SIPFooterLogo', 'assets/Uploads/SIPFooterLogo.png', NULL, 1, 1, 1, 0),
(228, 'Image', '2018-10-23 13:36:07', '2018-10-23 13:36:07', 'Waitemata-DHB-logo-small.jpg', 'Waitemata DHB logo small', 'assets/Uploads/Waitemata-DHB-logo-small.jpg', NULL, 1, 1, 1, 0),
(229, 'Image', '2018-10-24 10:53:50', '2018-10-24 10:53:49', 'banner1.jpg', 'banner1', 'assets/Uploads/banner1.jpg', NULL, 1, 1, 1, 0),
(230, 'Image', '2018-10-24 13:09:34', '2018-10-24 13:09:34', 'pills-1354782-1920.jpg', 'pills 1354782 1920', 'assets/Uploads/pills-1354782-1920.jpg', NULL, 1, 1, 1, 0),
(231, 'Image', '2018-10-24 13:59:21', '2018-10-24 13:59:21', 'medic-563425-1920.jpg', 'medic 563425 1920', 'assets/Uploads/medic-563425-1920.jpg', NULL, 1, 1, 1, 0),
(232, 'Image', '2018-10-24 14:12:44', '2018-10-24 14:12:44', 'hospital-840135-1920.jpg', 'hospital 840135 1920', 'assets/Uploads/hospital-840135-1920.jpg', NULL, 1, 1, 1, 0),
(233, 'Image', '2018-10-24 14:51:40', '2018-10-24 14:51:40', 'people-3152585-1920.jpg', 'people 3152585 1920', 'assets/Uploads/people-3152585-1920.jpg', NULL, 1, 1, 1, 0),
(234, 'Image', '2018-10-25 11:10:18', '2018-10-25 11:10:17', 'doctor-563428-1920.jpg', 'doctor 563428 1920', 'assets/Uploads/doctor-563428-1920.jpg', NULL, 1, 1, 1, 0),
(235, 'Image', '2018-10-25 11:13:49', '2018-10-25 11:13:49', 'medications-257336-1920.jpg', 'medications 257336 1920', 'assets/Uploads/medications-257336-1920.jpg', NULL, 1, 1, 1, 0),
(236, 'File', '2018-10-30 10:46:53', '2018-10-30 10:46:53', 'Medication-Reconciliation-Module-2018-19-FINAL.pdf', 'Medication Reconciliation Module 2018 19 FINAL', 'assets/Uploads/Medication-Reconciliation-Module-2018-19-FINAL.pdf', NULL, 1, 1, 1, 0),
(237, 'File', '2018-10-30 10:49:03', '2018-10-30 10:49:02', 'Medication-Reconciliation-GP-Data-Collection-Spreadsheet-2018-19-FINAL.xlsx', 'Medication Reconciliation GP Data Collection Spreadsheet 2018 19 FINAL', 'assets/Uploads/Medication-Reconciliation-GP-Data-Collection-Spreadsheet-2018-19-FINAL.xlsx', NULL, 1, 1, 1, 0),
(238, 'File', '2018-10-30 10:50:05', '2018-10-30 10:50:05', '5.-Medication-Reconciliation-GP-Paper-Form-2017.doc', '5. Medication Reconciliation GP Paper Form 2017', 'assets/Uploads/5.-Medication-Reconciliation-GP-Paper-Form-2017.doc', NULL, 1, 1, 1, 0),
(239, 'File', '2018-10-30 10:50:50', '2018-10-30 10:50:50', 'MedRec2018.zip', 'MedRec2018', 'assets/Uploads/MedRec2018.zip', NULL, 1, 1, 1, 0),
(240, 'File', '2018-10-30 10:52:16', '2018-10-30 10:52:16', 'My-Practice-How-to-MR-RH-warf.pdf', 'My Practice How to MR RH warf', 'assets/Uploads/My-Practice-How-to-MR-RH-warf.pdf', NULL, 1, 1, 1, 0),
(241, 'File', '2018-10-30 10:53:10', '2018-10-30 10:53:10', 'Tips-for-Medtech-32.pdf', 'Tips for Medtech 32', 'assets/Uploads/Tips-for-Medtech-32.pdf', NULL, 1, 1, 1, 0),
(242, 'File', '2018-10-30 10:55:01', '2018-10-30 10:55:01', 'Medication-Reconciliation-Pharmacy-Module-2018-19-1.docx', 'Medication Reconciliation Pharmacy Module 2018 19 1', 'assets/Uploads/Medication-Reconciliation-Pharmacy-Module-2018-19-1.docx', NULL, 1, 1, 1, 0),
(243, 'File', '2018-10-30 10:56:07', '2018-10-30 10:56:07', 'Meds-Rec-Pharmacy-Data-Collection-2018-2019-final.xlsx', 'Meds Rec Pharmacy Data Collection 2018 2019 final', 'assets/Uploads/Meds-Rec-Pharmacy-Data-Collection-2018-2019-final.xlsx', NULL, 1, 1, 1, 0),
(245, 'Image', '2018-10-30 11:10:36', '2018-10-30 11:10:36', 'thermometer-1539191-1920-1030px.jpg', 'thermometer 1539191 1920 1030px', 'assets/Uploads/thermometer-1539191-1920-1030px.jpg', NULL, 1, 1, 1, 0),
(246, 'Image', '2018-10-30 11:49:59', '2018-10-30 11:49:59', 'cta4.jpg', 'cta4', 'assets/Uploads/cta4.jpg', NULL, 1, 1, 1, 0),
(248, 'Image', '2018-10-31 09:28:02', '2018-10-31 09:28:02', 'archive-1850170-1920.jpg', 'archive 1850170 1920', 'assets/Uploads/archive-1850170-1920.jpg', NULL, 1, 1, 1, 0),
(249, 'Image', '2018-10-31 09:30:09', '2018-10-31 09:30:09', 'RC-MSHA-Patient-Safety.jpg', 'RC MSHA Patient Safety', 'assets/Uploads/RC-MSHA-Patient-Safety.jpg', NULL, 1, 1, 1, 0),
(250, 'Image', '2018-10-31 09:41:21', '2018-10-31 09:41:21', 'ClinicalModules.png', 'ClinicalModules', 'assets/Uploads/ClinicalModules.png', NULL, 1, 1, 1, 0),
(251, 'Image', '2018-10-31 09:43:14', '2018-10-31 09:43:14', '160504085309-1-900x600.jpg', '160504085309 1 900x600', 'assets/Uploads/160504085309-1-900x600.jpg', NULL, 1, 1, 1, 0),
(252, 'Image', '2018-10-31 09:44:10', '2018-10-31 09:44:10', '160504085309-1-900x601.jpg', '160504085309 1 900x601', 'assets/Uploads/160504085309-1-900x601.jpg', NULL, 1, 1, 1, 0),
(253, 'File', '2018-10-31 10:43:22', '2018-10-31 10:43:22', 'Learning-Set-4-2017-18-ISBAR-Presentation.pdf', 'Learning Set 4 2017 18 ISBAR Presentation', 'assets/Uploads/Learning-Set-4-2017-18-ISBAR-Presentation.pdf', NULL, 1, 1, 1, 0),
(254, 'Image', '2018-10-31 11:10:30', '2018-10-31 11:10:30', 'book-283251-1920.jpg', 'book 283251 1920', 'assets/Uploads/book-283251-1920.jpg', NULL, 1, 1, 1, 0),
(255, 'Image', '2018-10-31 11:29:32', '2018-10-31 11:29:32', 'bigstock-Mature-doctor-reading-medical-197376040-1200x797.jpg', 'bigstock Mature doctor reading medical 197376040 1200x797', 'assets/Uploads/bigstock-Mature-doctor-reading-medical-197376040-1200x797.jpg', NULL, 1, 1, 1, 0),
(256, 'Image', '2018-10-31 11:32:32', '2018-10-31 11:32:32', 'Results-Handling.jpg', 'Results Handling', 'assets/Uploads/Results-Handling.jpg', NULL, 1, 1, 1, 0),
(257, 'Image', '2018-11-01 13:17:58', '2018-11-01 13:17:58', 'SPSP-logo.jpg', 'SPSP logo', 'assets/Uploads/SPSP-logo.jpg', NULL, 1, 1, 1, 0),
(258, 'Image', '2018-11-01 13:20:25', '2018-11-01 13:20:25', 'wood-3281585-1920.jpg', 'wood 3281585 1920', 'assets/Uploads/wood-3281585-1920.jpg', NULL, 1, 1, 1, 0),
(259, 'Image', '2018-11-01 13:48:52', '2018-11-01 13:48:52', 'SPSP-logo2.jpg', 'SPSP logo2', 'assets/Uploads/SPSP-logo2.jpg', NULL, 1, 1, 1, 0),
(260, 'Image', '2018-11-01 15:06:26', '2018-11-01 15:06:26', 'SPSP-logo3.jpg', 'SPSP logo3', 'assets/Uploads/SPSP-logo3.jpg', NULL, 1, 1, 1, 0),
(261, 'Image', '2018-11-07 13:49:19', '2018-11-07 13:49:19', 'nature-2858213-1920x1030px.png', 'nature 2858213 1920x1030px', 'assets/Uploads/nature-2858213-1920x1030px.png', NULL, 1, 1, 1, 0),
(262, 'Image', '2018-11-08 12:30:21', '2018-11-08 12:30:21', 'woman-3187087-1920.jpg', 'woman 3187087 1920', 'assets/Uploads/woman-3187087-1920.jpg', NULL, 1, 1, 1, 0),
(263, 'Image', '2018-11-08 15:02:01', '2018-11-08 15:02:01', 'color-3207345-1920x1030px.png', 'color 3207345 1920x1030px', 'assets/Uploads/color-3207345-1920x1030px.png', NULL, 1, 1, 1, 0),
(264, 'Image', '2018-11-08 15:29:34', '2018-11-08 15:29:34', 'medications-257336-1921.jpg', 'medications 257336 1921', 'assets/Uploads/medications-257336-1921.jpg', NULL, 1, 1, 1, 0),
(265, 'Image', '2018-11-08 15:44:26', '2018-11-08 15:44:26', 'clasped-hands-541849-1920.jpg', 'clasped hands 541849 1920', 'assets/Uploads/clasped-hands-541849-1920.jpg', NULL, 1, 1, 1, 0),
(266, 'Image', '2018-11-08 15:53:27', '2018-11-08 15:53:27', 'neil-houston-1-08d334.jpg', 'neil houston 1 08d334', 'assets/Uploads/neil-houston-1-08d334.jpg', NULL, 1, 1, 1, 0),
(267, 'Image', '2018-11-08 16:04:30', '2018-11-08 16:04:30', 'bonding-1985863-1920.jpg', 'bonding 1985863 1920', 'assets/Uploads/bonding-1985863-1920.jpg', NULL, 1, 1, 1, 0),
(268, 'Image', '2018-11-08 16:19:06', '2018-11-08 16:19:06', 'action-2277292-1920.jpg', 'action 2277292 1920', 'assets/Uploads/action-2277292-1920.jpg', NULL, 1, 1, 1, 0),
(269, 'Image', '2018-11-08 16:33:52', '2018-11-08 16:33:52', 'AH-plus-logo.png', 'AH plus logo', 'assets/Uploads/AH-plus-logo.png', NULL, 1, 1, 1, 0),
(270, 'Image', '2018-11-08 16:33:56', '2018-11-08 16:33:56', 'Auckland-PHO.jpg', 'Auckland PHO', 'assets/Uploads/Auckland-PHO.jpg', NULL, 1, 1, 1, 0),
(271, 'Image', '2018-11-08 16:34:13', '2018-11-08 16:34:13', 'Comprehensive-Care-PHO.jpg', 'Comprehensive Care PHO', 'assets/Uploads/Comprehensive-Care-PHO.jpg', NULL, 1, 1, 1, 0),
(272, 'Image', '2018-11-08 16:34:24', '2018-11-08 16:34:24', 'East-health-trust-logo.png', 'East health trust logo', 'assets/Uploads/East-health-trust-logo.png', NULL, 1, 1, 1, 0),
(273, 'Image', '2018-11-08 16:34:31', '2018-11-08 16:34:31', 'nhc-vertical-highquality.png', 'nhc vertical highquality', 'assets/Uploads/nhc-vertical-highquality.png', NULL, 1, 1, 1, 0),
(274, 'Image', '2018-11-08 16:34:33', '2018-11-08 16:34:33', 'ProCare-logo-200x100px.png', 'ProCare logo 200x100px', 'assets/Uploads/ProCare-logo-200x100px.png', NULL, 1, 1, 1, 0),
(275, 'Image', '2018-11-08 16:37:31', '2018-11-08 16:37:31', 'AH-plus-logo2.png', 'AH plus logo2', 'assets/Uploads/AH-plus-logo2.png', NULL, 1, 1, 1, 0),
(276, 'Image', '2018-11-08 16:41:25', '2018-11-08 16:41:25', 'Auckland-PHO2.jpg', 'Auckland PHO2', 'assets/Uploads/Auckland-PHO2.jpg', NULL, 1, 1, 1, 0),
(277, 'Image', '2018-11-08 16:42:45', '2018-11-08 16:42:45', 'Comprehensive-Care-PHO2.jpg', 'Comprehensive Care PHO2', 'assets/Uploads/Comprehensive-Care-PHO2.jpg', NULL, 1, 1, 1, 0),
(278, 'Image', '2018-11-08 16:43:28', '2018-11-08 16:43:28', 'East-health-trust-logo2.png', 'East health trust logo2', 'assets/Uploads/East-health-trust-logo2.png', NULL, 1, 1, 1, 0),
(279, 'Image', '2018-11-08 16:44:59', '2018-11-08 16:44:59', 'nhc-vertical-highquality2.png', 'nhc vertical highquality2', 'assets/Uploads/nhc-vertical-highquality2.png', NULL, 1, 1, 1, 0),
(280, 'Image', '2018-11-08 16:45:33', '2018-11-08 16:45:33', 'ProCare-logo-200x100px2.png', 'ProCare logo 200x100px2', 'assets/Uploads/ProCare-logo-200x100px2.png', NULL, 1, 1, 1, 0),
(281, 'Image', '2018-11-08 17:09:34', '2018-11-08 17:09:34', 'RNZCGP-logo.png', 'RNZCGP logo', 'assets/Uploads/RNZCGP-logo.png', NULL, 1, 1, 1, 0),
(282, 'File', '2018-11-09 08:49:07', '2018-11-09 08:49:07', 'Results-Handling-GP-Clinical-Module-2018-19-FINAL.pdf', 'Results Handling GP Clinical Module 2018 19 FINAL', 'assets/Uploads/Results-Handling-GP-Clinical-Module-2018-19-FINAL.pdf', NULL, 1, 1, 1, 0),
(283, 'File', '2018-11-09 08:50:22', '2018-11-09 08:50:22', 'Results-Handling-GP-Clinical-Module-Data-Collection-Spreadsheet-2018-19-FINAL.xlsx', 'Results Handling GP Clinical Module Data Collection Spreadsheet 2018 19 FINAL', 'assets/Uploads/Results-Handling-GP-Clinical-Module-Data-Collection-Spreadsheet-2018-19-FINAL.xlsx', NULL, 1, 1, 1, 0),
(284, 'File', '2018-11-09 08:50:56', '2018-11-09 08:50:56', '5.-Results-Handling-GP-Paper-Form.docx', '5. Results Handling GP Paper Form', 'assets/Uploads/5.-Results-Handling-GP-Paper-Form.docx', NULL, 1, 1, 1, 0),
(285, 'File', '2018-11-09 08:51:12', '2018-11-09 08:51:12', 'ResultsHandling2018.zip', 'ResultsHandling2018', 'assets/Uploads/ResultsHandling2018.zip', NULL, 1, 1, 1, 0),
(286, 'File', '2018-11-09 08:52:09', '2018-11-09 08:52:09', 'Results-Handling-Tips-Tricks.pdf', 'Results Handling Tips Tricks', 'assets/Uploads/Results-Handling-Tips-Tricks.pdf', NULL, 1, 1, 1, 0),
(287, 'File', '2018-11-09 08:52:58', '2018-11-09 08:52:58', 'My-Practice-How-to-MR-RH-warf-1.pdf', 'My Practice How to MR RH warf 1', 'assets/Uploads/My-Practice-How-to-MR-RH-warf-1.pdf', NULL, 1, 1, 1, 0),
(288, 'File', '2018-11-09 08:53:32', '2018-11-09 08:53:32', '12.-Results-Handling-GP-Standard-Comments-within-Practice.pdf', '12. Results Handling GP Standard Comments within Practice', 'assets/Uploads/12.-Results-Handling-GP-Standard-Comments-within-Practice.pdf', NULL, 1, 1, 1, 0),
(289, 'File', '2018-11-09 08:54:09', '2018-11-09 08:54:09', '11.-Results-Handling-GP-Practice-Self-Assessment.pdf', '11. Results Handling GP Practice Self Assessment', 'assets/Uploads/11.-Results-Handling-GP-Practice-Self-Assessment.pdf', NULL, 1, 1, 1, 0),
(290, 'Image', '2018-11-09 10:19:52', '2018-11-09 10:19:52', 'calendar-660670-1920.jpg', 'calendar 660670 1920', 'assets/Uploads/calendar-660670-1920.jpg', NULL, 1, 1, 1, 0),
(292, 'Image', '2018-11-09 10:42:43', '2018-11-09 10:42:43', 'news-1172463-1920.jpg', 'news 1172463 1920', 'assets/Uploads/news-1172463-1920.jpg', NULL, 1, 1, 1, 0),
(293, 'Image', '2018-11-09 11:32:48', '2018-11-09 11:32:48', 'hello-1006426-1920.png', 'hello 1006426 1920', 'assets/Uploads/hello-1006426-1920.png', NULL, 1, 1, 1, 0),
(294, 'Image', '2018-11-09 11:45:13', '2018-11-09 11:45:13', 'button-2076-1920.jpg', 'button 2076 1920', 'assets/Uploads/button-2076-1920.jpg', NULL, 1, 1, 1, 0),
(295, 'Image', '2018-11-09 11:47:31', '2018-11-09 11:47:31', 'road-908176-1920.jpg', 'road 908176 1920', 'assets/Uploads/road-908176-1920.jpg', NULL, 1, 1, 1, 0),
(296, 'Image', '2018-11-09 12:11:28', '2018-11-09 12:11:28', 'statistic-1820320-1280.png', 'statistic 1820320 1280', 'assets/Uploads/statistic-1820320-1280.png', NULL, 1, 1, 1, 0),
(297, 'Image', '2018-11-09 16:29:55', '2018-11-09 16:29:55', 'auckland.jpg', 'auckland', 'assets/Uploads/auckland.jpg', NULL, 1, 1, 1, 0),
(298, 'Image', '2018-11-12 11:37:25', '2018-11-12 11:37:25', 'ADHB2.jpg', 'ADHB2', 'assets/Uploads/ADHB2.jpg', NULL, 1, 1, 1, 0),
(299, 'Image', '2018-11-12 11:39:38', '2018-11-12 11:39:38', 'WaitemataDHBlogosmall.png', 'WaitemataDHBlogosmall', 'assets/Uploads/WaitemataDHBlogosmall.png', NULL, 1, 1, 1, 0),
(300, 'Image', '2018-11-12 11:41:01', '2018-11-12 11:41:01', 'CMDHB.jpg', 'CMDHB', 'assets/Uploads/CMDHB.jpg', NULL, 1, 1, 1, 0),
(301, 'Image', '2018-11-12 11:45:40', '2018-11-12 11:45:40', 'i3-logo-icon-colour-RGB-500-251-91.png', 'i3 logo icon colour RGB 500 251 91', 'assets/Uploads/i3-logo-icon-colour-RGB-500-251-91.png', NULL, 1, 1, 1, 0),
(302, 'Image', '2018-11-12 11:54:05', '2018-11-12 11:54:05', 'SPSP-logo4.jpg', 'SPSP logo4', 'assets/Uploads/SPSP-logo4.jpg', NULL, 1, 1, 1, 0),
(303, 'Image', '2018-11-12 11:55:34', '2018-11-12 11:55:34', 'ka20logo.jpg', 'ka20logo', 'assets/Uploads/ka20logo.jpg', NULL, 1, 1, 1, 0),
(304, 'Image', '2018-11-12 13:15:40', '2018-11-12 13:15:40', 'coffee-break-1177540-1920.jpg', 'coffee break 1177540 1920', 'assets/Uploads/coffee-break-1177540-1920.jpg', NULL, 1, 1, 1, 0),
(305, 'Image', '2018-11-12 16:20:48', '2018-11-12 16:20:48', 'coffee-break-1177540-1921.jpg', 'coffee break 1177540 1921', 'assets/Uploads/coffee-break-1177540-1921.jpg', NULL, 1, 1, 1, 0),
(306, 'Image', '2018-11-14 11:33:09', '2018-11-14 11:33:09', 'question-mark-1872665-1920.jpg', 'question mark 1872665 1920', 'assets/Uploads/question-mark-1872665-1920.jpg', NULL, 1, 1, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `Filters`
--

CREATE TABLE `Filters` (
  `ID` int(11) NOT NULL,
  `ClassName` enum('Filters') DEFAULT 'Filters',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Title` varchar(255) DEFAULT NULL,
  `FilterTagID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `FilterTag`
--

CREATE TABLE `FilterTag` (
  `ID` int(11) NOT NULL,
  `ClassName` enum('FilterTag') DEFAULT 'FilterTag',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Title` varchar(255) DEFAULT NULL,
  `BlogExtensionID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `FooterBlock`
--

CREATE TABLE `FooterBlock` (
  `ID` int(11) NOT NULL,
  `ClassName` enum('FooterBlock') DEFAULT 'FooterBlock',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Title` varchar(255) DEFAULT NULL,
  `Width` enum('size1of1','size1of2','size1of3','size2of3','size1of4','size3of4','size1of5','size2of5','size3of5','size4of5') DEFAULT 'size1of1',
  `Content` mediumtext,
  `Sort` int(11) NOT NULL DEFAULT '0',
  `SiteConfigID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `FooterBlock`
--

INSERT INTO `FooterBlock` (`ID`, `ClassName`, `LastEdited`, `Created`, `Title`, `Width`, `Content`, `Sort`, `SiteConfigID`) VALUES
(1, 'FooterBlock', '2018-10-23 12:04:33', '2018-10-23 12:04:33', 'SITE MAP', 'size1of4', '<ul><li><a href=\"#\">OUR PROGRAMME</a></li>\n<li><a href=\"#\">NEWS</a></li>\n<li><a href=\"#\">RESOURCES</a></li>\n<li><a href=\"#\">EVENTS</a></li>\n<li><a href=\"#\">CONTACT US</a></li>\n</ul>', 0, 2),
(2, 'FooterBlock', '2018-10-23 12:05:37', '2018-10-23 12:05:37', 'QUICK LINKS', 'size1of4', '<ul><li><a href=\"#\">OUR SIP TEAMS</a></li>\n<li><a href=\"#\">TERMS OF USE</a></li>\n<li><a href=\"#\">BLOGS</a></li>\n</ul>', 0, 2),
(3, 'FooterBlock', '2018-10-24 08:44:25', '2018-10-24 08:44:25', 'LATEST TWEETS', 'size1of4', '<p><a class=\"twitter-timeline\" href=\"https://twitter.com/saferpracticenz\" data-width=\"300\" data-height=\"320\" data-theme=\"light\" data-link-color=\"#4da1d8\" data-chrome=\"noheader nofooter transparent\">Latest Tweets</a></p>', 0, 2);

-- --------------------------------------------------------

--
-- Table structure for table `Group`
--

CREATE TABLE `Group` (
  `ID` int(11) NOT NULL,
  `ClassName` enum('Group') DEFAULT 'Group',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Title` varchar(255) DEFAULT NULL,
  `Description` mediumtext,
  `Code` varchar(255) DEFAULT NULL,
  `Locked` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `Sort` int(11) NOT NULL DEFAULT '0',
  `HtmlEditorConfig` mediumtext,
  `ParentID` int(11) NOT NULL DEFAULT '0',
  `AccessAllSubsites` tinyint(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Group`
--

INSERT INTO `Group` (`ID`, `ClassName`, `LastEdited`, `Created`, `Title`, `Description`, `Code`, `Locked`, `Sort`, `HtmlEditorConfig`, `ParentID`, `AccessAllSubsites`) VALUES
(1, 'Group', '2018-09-18 00:05:09', '2018-09-18 00:05:09', 'Content Authors', NULL, 'content-authors', 0, 1, NULL, 0, 1),
(2, 'Group', '2018-09-18 00:05:09', '2018-09-18 00:05:09', 'Administrators', NULL, 'administrators', 0, 0, NULL, 0, 1),
(3, 'Group', '2018-09-24 17:00:46', '2018-09-24 17:00:46', 'Blog users', NULL, 'blog-users', 0, 0, NULL, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `Group_Members`
--

CREATE TABLE `Group_Members` (
  `ID` int(11) NOT NULL,
  `GroupID` int(11) NOT NULL DEFAULT '0',
  `MemberID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Group_Members`
--

INSERT INTO `Group_Members` (`ID`, `GroupID`, `MemberID`) VALUES
(1, 2, 1),
(2, 2, 2),
(3, 2, 3);

-- --------------------------------------------------------

--
-- Table structure for table `Group_Roles`
--

CREATE TABLE `Group_Roles` (
  `ID` int(11) NOT NULL,
  `GroupID` int(11) NOT NULL DEFAULT '0',
  `PermissionRoleID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `Group_Subsites`
--

CREATE TABLE `Group_Subsites` (
  `ID` int(11) NOT NULL,
  `GroupID` int(11) NOT NULL DEFAULT '0',
  `SubsiteID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ImageAndContentItem`
--

CREATE TABLE `ImageAndContentItem` (
  `ID` int(11) NOT NULL,
  `ClassName` enum('ImageAndContentItem') DEFAULT 'ImageAndContentItem',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Title` varchar(255) DEFAULT NULL,
  `Content` mediumtext,
  `BlockType` enum('Text','Image') DEFAULT 'Text',
  `Archived` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `Sort` int(11) NOT NULL DEFAULT '0',
  `ImageID` int(11) NOT NULL DEFAULT '0',
  `ParentID` int(11) NOT NULL DEFAULT '0',
  `Width` enum('size1of1','size1of2','size1of3','size2of3','size1of4','size3of4','size1of5','size2of5','size3of5','size4of5') DEFAULT 'size1of1',
  `ContentSize` varchar(255) DEFAULT NULL,
  `ShowHeader` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `ContentColor` varchar(6) DEFAULT NULL,
  `HeadingSize` varchar(255) DEFAULT NULL,
  `ImageSize` int(11) NOT NULL DEFAULT '0',
  `PaddingTop` varchar(255) DEFAULT NULL,
  `PaddingBot` varchar(255) DEFAULT NULL,
  `PaddingLeft` varchar(255) DEFAULT NULL,
  `PaddingRight` varchar(255) DEFAULT NULL,
  `PageLinkID` int(11) NOT NULL DEFAULT '0',
  `ExternalLink` mediumtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ImageAndContentItem`
--

INSERT INTO `ImageAndContentItem` (`ID`, `ClassName`, `LastEdited`, `Created`, `Title`, `Content`, `BlockType`, `Archived`, `Sort`, `ImageID`, `ParentID`, `Width`, `ContentSize`, `ShowHeader`, `ContentColor`, `HeadingSize`, `ImageSize`, `PaddingTop`, `PaddingBot`, `PaddingLeft`, `PaddingRight`, `PageLinkID`, `ExternalLink`) VALUES
(1, 'ImageAndContentItem', '2018-11-01 14:25:31', '2018-11-01 14:25:10', NULL, NULL, 'Image', 0, 0, 0, 40, 'size1of1', NULL, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, NULL),
(2, 'ImageAndContentItem', '2018-11-01 14:26:17', '2018-11-01 14:26:17', NULL, NULL, 'Image', 0, 0, 0, 41, 'size1of1', NULL, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, NULL),
(3, 'ImageAndContentItem', '2018-11-01 14:28:17', '2018-11-01 14:27:47', 'Image', NULL, 'Image', 0, 0, 0, 42, 'size1of1', NULL, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, NULL),
(7, 'ImageAndContentItem', '2018-11-08 15:54:39', '2018-11-01 14:48:53', 'Text', '<p>Safety in Practice is based on the Scottish Patient Safety Programme in Primary Care (SPSP–PC). SPSP-PC spans the primary care sector including general practices, community pharmacies, dentistry clinics and care homes. The programme has so far rolled out to over 1000 general practices and 1200 community pharmacies across Scotland.</p><p>Dr Neil Houston, GP and national SPSP-PC clinical lead, has played a key role in establishing and supporting Safety in Practice in New Zealand.</p>', 'Text', 0, 0, 0, 43, 'size2of3', '22', 0, '004184', '15', 0, NULL, NULL, NULL, NULL, 0, NULL),
(8, 'ImageAndContentItem', '2018-11-08 15:54:39', '2018-11-01 14:49:11', 'Image', NULL, 'Image', 0, 0, 260, 43, 'size1of3', NULL, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, NULL),
(9, 'ImageAndContentItem', '2018-11-08 15:55:00', '2018-11-08 15:52:58', 'image', NULL, 'Image', 0, 0, 266, 43, 'size1of3', NULL, 0, NULL, '15', 0, NULL, NULL, NULL, NULL, 0, NULL),
(10, 'ImageAndContentItem', '2018-11-08 15:54:53', '2018-11-08 15:53:54', 'text', '<p>Safety in Practice began in 2014 with 23 practices form across the 3 Auckland DHBs, initially led and supported primarily by Ko Awatea and Counties Manukau District Health Board.</p><p>The Scottish programme tools were adapted and tested for use in New Zealand context. We are indebted to the NHS Scotland for its generosity in sharing its resources so generously.</p><p>After a successful first year the programme has gradually spread to more GP practices 75 in 2018, and has also spread to Urgent Care clinics. The scope of the programme has expanded to include development and testing in new clinical areas such as safe opioids management and reliable detection of the deteriorating patient.</p>', 'Text', 0, 0, 0, 43, 'size2of3', '22', 0, '004184', '15', 0, NULL, NULL, NULL, NULL, 0, NULL),
(11, 'ImageAndContentItem', '2018-11-08 15:58:03', '2018-11-08 15:55:31', 'text', '<p> </p><p><br>In 2017, 20 community pharmacies joined an improvement collaborative as part of Safety in Practice <a href=\"http://aucklandnc.safetyinpractice.co.nz/quality-initiatives/quality-initiatives/electronic-outpatient-outcomes/\">working to reduce harm caused by NSAIDs, medicines reconciliation, opioids and anticoagulants.</a></p>', 'Text', 0, 0, 0, 43, 'size4of5', '22', 0, '004184', '15', 0, NULL, NULL, NULL, NULL, 0, NULL),
(12, 'ImageAndContentItem', '2018-11-12 11:50:41', '2018-11-08 16:37:23', 'Alliance Health', NULL, 'Image', 0, 0, 275, 58, 'size1of4', NULL, 0, NULL, '15', 120, '10', '10', '10', '10', 0, 'https://www.alliancehealth.org.nz/'),
(13, 'ImageAndContentItem', '2018-11-12 11:50:41', '2018-11-08 16:41:22', 'Auckland Pho', NULL, 'Image', 0, 0, 276, 58, 'size1of4', NULL, 0, NULL, '15', 120, '10', '10', '10', '10', 0, 'http://www.aucklandpho.co.nz/'),
(14, 'ImageAndContentItem', '2018-11-12 11:50:41', '2018-11-08 16:41:56', 'Comprehensive Care', NULL, 'Image', 0, 0, 277, 58, 'size1of4', NULL, 0, NULL, '15', 120, '10', '10', '10', '10', 0, 'http://www.comprehensivecare.co.nz/'),
(15, 'ImageAndContentItem', '2018-11-12 11:50:41', '2018-11-08 16:43:22', 'East Health Trust', NULL, 'Image', 0, 0, 278, 58, 'size1of4', NULL, 0, NULL, '15', 120, '10', '10', '10', '10', 0, 'http://www.easthealth.co.nz/'),
(17, 'ImageAndContentItem', '2018-11-12 11:50:41', '2018-11-08 16:44:52', 'National Hauora Coalition', NULL, 'Image', 0, 0, 279, 58, 'size1of4', NULL, 0, NULL, '15', 120, '10', '10', '10', '10', 0, 'https://www.nhc.maori.nz/'),
(18, 'ImageAndContentItem', '2018-11-12 11:50:41', '2018-11-08 16:45:29', 'Procare', NULL, 'Image', 0, 0, 280, 58, 'size1of4', NULL, 0, NULL, '15', 120, '10', '10', '10', '10', 0, 'http://www.procare.co.nz/'),
(19, 'ImageAndContentItem', '2018-11-12 11:36:08', '2018-11-08 17:09:25', 'RNZCGP', NULL, 'Image', 0, 0, 281, 60, 'size1of4', NULL, 0, NULL, '15', 100, '10', '10', '10', '10', 0, 'https://www.rnzcgp.org.nz/'),
(20, 'ImageAndContentItem', '2018-11-12 11:49:14', '2018-11-12 11:36:37', 'ADHB', NULL, 'Image', 0, 0, 298, 63, 'size1of4', NULL, 0, NULL, '15', 120, NULL, NULL, NULL, NULL, 0, 'http://www.adhb.health.nz/'),
(21, 'ImageAndContentItem', '2018-11-12 11:49:14', '2018-11-12 11:39:25', 'WDHB', NULL, 'Image', 0, 0, 299, 63, 'size1of4', NULL, 0, NULL, '15', 120, NULL, NULL, NULL, NULL, 0, 'http://www.waitematadhb.govt.nz/'),
(22, 'ImageAndContentItem', '2018-11-12 11:49:14', '2018-11-12 11:40:46', 'CDHB', NULL, 'Image', 0, 0, 300, 63, 'size1of4', NULL, 0, NULL, '15', 120, NULL, NULL, NULL, NULL, 0, 'http://www.countiesmanukau.health.nz/'),
(23, 'ImageAndContentItem', '2018-11-12 11:49:14', '2018-11-12 11:44:23', 'i3', NULL, 'Image', 0, 0, 301, 63, 'size1of4', NULL, 0, NULL, '15', 120, NULL, NULL, NULL, NULL, 0, 'http://i3.waitematadhb.govt.nz/'),
(24, 'ImageAndContentItem', '2018-11-12 11:54:19', '2018-11-12 11:53:58', 'SPSP', NULL, 'Image', 0, 0, 302, 63, 'size1of4', NULL, 0, NULL, '15', 120, NULL, NULL, NULL, NULL, 0, 'http://www.scottishpatientsafetyprogramme.scot.nhs.uk/'),
(25, 'ImageAndContentItem', '2018-11-12 11:55:52', '2018-11-12 11:55:23', 'Ko Awatea', NULL, 'Image', 0, 0, 303, 63, 'size1of4', NULL, 0, NULL, '15', 120, NULL, NULL, NULL, NULL, 0, 'http://koawatea.co.nz/');

-- --------------------------------------------------------

--
-- Table structure for table `ImageWithContentItem`
--

CREATE TABLE `ImageWithContentItem` (
  `ID` int(11) NOT NULL,
  `ClassName` enum('ImageWithContentItem') DEFAULT 'ImageWithContentItem',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Title` varchar(255) DEFAULT NULL,
  `Content` mediumtext,
  `BgOverlayColor` varchar(6) DEFAULT NULL,
  `BgHoverColor` varchar(6) DEFAULT NULL,
  `TitleColor` varchar(6) DEFAULT NULL,
  `Animate` varchar(255) DEFAULT NULL,
  `AnimateDelay` varchar(255) DEFAULT NULL,
  `AnimateSpeed` varchar(255) DEFAULT NULL,
  `Width` enum('size1of1','size1of2','size1of3','size2of3','size1of4','size3of4','size1of5','size2of5','size3of5','size4of5') DEFAULT 'size1of1',
  `Archived` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `Sort` int(11) NOT NULL DEFAULT '0',
  `BlockBgImageID` int(11) NOT NULL DEFAULT '0',
  `ParentID` int(11) NOT NULL DEFAULT '0',
  `PageLinkID` int(11) NOT NULL DEFAULT '0',
  `BgContentColor` varchar(6) DEFAULT NULL,
  `BgContentHoverColor` varchar(6) DEFAULT NULL,
  `ItemImageID` int(11) NOT NULL DEFAULT '0',
  `Link` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `LinkPage` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `ContentPosition` enum('left','right') DEFAULT 'left'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ImageWithContentItem`
--

INSERT INTO `ImageWithContentItem` (`ID`, `ClassName`, `LastEdited`, `Created`, `Title`, `Content`, `BgOverlayColor`, `BgHoverColor`, `TitleColor`, `Animate`, `AnimateDelay`, `AnimateSpeed`, `Width`, `Archived`, `Sort`, `BlockBgImageID`, `ParentID`, `PageLinkID`, `BgContentColor`, `BgContentHoverColor`, `ItemImageID`, `Link`, `LinkPage`, `ContentPosition`) VALUES
(2, 'ImageWithContentItem', '2018-10-18 15:52:50', '2018-09-24 15:14:06', 'Waitemata DHB Celebrates 2018 Diversity Awards Win', NULL, NULL, NULL, NULL, 'fadeIn', NULL, NULL, 'size1of2', 0, 0, 0, 16, 21, NULL, '8f5ea7', 0, 1, 1, 'right'),
(6, 'ImageWithContentItem', '2018-10-18 15:52:50', '2018-09-24 17:32:06', 'Dr Eleri Clissold - IPANZ Young Professional of the Year 2018', NULL, NULL, NULL, NULL, 'fadeIn', NULL, NULL, 'size1of2', 0, 0, 0, 16, 22, NULL, 'ff7b1e', 0, 1, 1, 'right'),
(7, 'ImageWithContentItem', '2018-10-18 15:52:50', '2018-09-24 17:32:24', 'Jerome Ng - Pharmacist of the Year 2017 (PSNZ)', NULL, NULL, NULL, NULL, 'fadeIn', NULL, NULL, 'size1of2', 0, 0, 0, 16, 25, NULL, 'ff7b1e', 0, 1, 1, 'left'),
(8, 'ImageWithContentItem', '2018-10-18 15:52:50', '2018-09-24 17:32:44', 'Kelly Bohot - Best Presentation at HQSC Scientific Symposium', NULL, NULL, NULL, NULL, 'fadeIn', NULL, NULL, 'size1of2', 0, 0, 0, 16, 26, NULL, 'ff7b1e', 0, 1, 1, 'left'),
(9, 'ImageWithContentItem', '2018-10-17 17:10:09', '2018-10-17 17:10:09', 'Learning Session 2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'size1of1', 0, 0, 0, 26, 56, NULL, NULL, 0, 0, 1, 'left'),
(10, 'ImageWithContentItem', '2018-10-24 12:12:28', '2018-10-24 12:12:28', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'size1of1', 0, 0, 0, 32, 0, NULL, NULL, 0, 0, 0, 'left'),
(12, 'ImageWithContentItem', '2018-10-24 14:57:52', '2018-10-24 14:46:09', 'IMPROVED KNOWLEDGE', '<p>\"Our knowledge [of improvement processes] is incredibly improved\"</p>', NULL, NULL, NULL, NULL, NULL, NULL, 'size1of2', 0, 0, 0, 35, 0, '000000', NULL, 0, 0, 0, 'right');

-- --------------------------------------------------------

--
-- Table structure for table `ImageWithTextOverlayItem`
--

CREATE TABLE `ImageWithTextOverlayItem` (
  `ID` int(11) NOT NULL,
  `ClassName` enum('ImageWithTextOverlayItem') DEFAULT 'ImageWithTextOverlayItem',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Title` mediumtext,
  `Content` mediumtext,
  `ButtonLabel` mediumtext,
  `BgOverlayColor` varchar(6) DEFAULT NULL,
  `BgHoverColor` varchar(6) DEFAULT NULL,
  `TitleColor` varchar(6) DEFAULT NULL,
  `Animate` varchar(255) DEFAULT NULL,
  `AnimateDelay` varchar(255) DEFAULT NULL,
  `AnimateSpeed` varchar(255) DEFAULT NULL,
  `Archived` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `Sort` int(11) NOT NULL DEFAULT '0',
  `BlockBgImageID` int(11) NOT NULL DEFAULT '0',
  `ParentID` int(11) NOT NULL DEFAULT '0',
  `PageLinkID` int(11) NOT NULL DEFAULT '0',
  `BlockSize` enum('size1of1','size1of2','size1of3','size2of3','size1of4','size3of4','size1of5','size2of5','size3of5','size4of5') DEFAULT 'size1of1',
  `Width` enum('size1of1','size1of2','size1of3','size2of3','size1of4','size3of4','size1of5','size2of5','size3of5','size4of5') DEFAULT 'size1of1',
  `BgOpacity` mediumtext,
  `TitleSize` int(11) NOT NULL DEFAULT '0',
  `BlurbBg` varchar(6) DEFAULT NULL,
  `BlockImageSize` int(11) NOT NULL DEFAULT '0',
  `BlockImgHeight` int(11) NOT NULL DEFAULT '0',
  `BlockBgColor` varchar(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ImageWithTextOverlayItem`
--

INSERT INTO `ImageWithTextOverlayItem` (`ID`, `ClassName`, `LastEdited`, `Created`, `Title`, `Content`, `ButtonLabel`, `BgOverlayColor`, `BgHoverColor`, `TitleColor`, `Animate`, `AnimateDelay`, `AnimateSpeed`, `Archived`, `Sort`, `BlockBgImageID`, `ParentID`, `PageLinkID`, `BlockSize`, `Width`, `BgOpacity`, `TitleSize`, `BlurbBg`, `BlockImageSize`, `BlockImgHeight`, `BlockBgColor`) VALUES
(1, 'ImageWithTextOverlayItem', '2018-09-21 14:51:00', '2018-09-21 09:43:42', 'PERSON CENTRED DESIGN', '<h2><strong><span class=\"underline-orange\">Person</span> Centred Design</strong></h2><p>We place people at the centre of everything we do</p><p>We watch + listen to what our patients, whānau + community need + we solve problems from a person perspective</p><p> </p><p class=\"default-btn\"><a href=\"[sitetree_link,id=12]\"><strong>DISCOVER MORE</strong></a></p>', NULL, '333333', 'ff7b1e', 'ffffff', 'fadeInLeft', NULL, NULL, 0, 0, 19, 12, 0, 'size1of3', 'size1of3', NULL, 0, NULL, 0, 0, NULL),
(2, 'ImageWithTextOverlayItem', '2018-09-21 10:57:47', '2018-09-21 10:15:01', 'COMMUNITY  +  CLINICIAN-LED', NULL, NULL, '333333', 'ff7b1e', 'ffffff', 'fadeInUp', NULL, NULL, 0, 0, 20, 12, 0, 'size1of1', 'size1of3', NULL, 0, NULL, 0, 0, NULL),
(3, 'ImageWithTextOverlayItem', '2018-09-21 10:57:48', '2018-09-21 10:46:24', 'DATA DRIVEN', NULL, NULL, '333333', 'ff7b1e', 'ffffff', 'fadeInRight', NULL, NULL, 0, 0, 21, 12, 0, 'size1of1', 'size1of3', NULL, 0, NULL, 0, 0, NULL),
(4, 'ImageWithTextOverlayItem', '2018-11-13 15:51:42', '2018-10-17 14:23:24', 'Safer Medicines', NULL, NULL, '004184', '004184', '004184', 'fadeInLeft', NULL, NULL, 0, 0, 212, 23, 0, 'size1of1', 'size1of3', '6', 0, NULL, 0, 0, NULL),
(5, 'ImageWithTextOverlayItem', '2018-11-13 15:51:42', '2018-10-17 14:23:58', 'Reliable Systems', NULL, NULL, '004184', '004184', '004184', 'fadeInUp', NULL, NULL, 0, 0, 213, 23, 0, 'size1of1', 'size1of3', '0', 0, NULL, 0, 0, NULL),
(6, 'ImageWithTextOverlayItem', '2018-11-13 15:51:42', '2018-10-17 14:24:16', 'Safer Culture', NULL, NULL, '004184', '004184', '004184', 'fadeInRight', NULL, NULL, 0, 0, 214, 23, 0, 'size1of1', 'size1of3', '0', 0, NULL, 0, 0, NULL),
(7, 'ImageWithTextOverlayItem', '2018-10-24 12:09:25', '2018-10-24 12:09:20', '67% of medication related admissions are considered potentially avoidable [BMJ]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 31, 0, 'size1of1', 'size1of3', '0', 0, NULL, 0, 0, NULL),
(8, 'ImageWithTextOverlayItem', '2018-10-24 14:06:23', '2018-10-24 13:00:16', '67% of medication related admissions are considered potentially avoidable [BMJ]', NULL, NULL, '27a2dd', '004184', 'ffffff', 'fadeInLeft', NULL, NULL, 0, 0, 230, 33, 0, 'size1of1', 'size1of3', '2', 19, '0070ba', 300, 300, NULL),
(9, 'ImageWithTextOverlayItem', '2018-10-24 14:06:35', '2018-10-24 13:59:40', '8% of primary care patients reported being given the wrong drug or dose [HQSC]', NULL, NULL, '27a2dd', '004184', 'ffffff', 'fadeInUp', NULL, NULL, 0, 0, 231, 33, 0, 'size1of1', 'size1of3', '2', 19, '0070ba', 0, 300, NULL),
(10, 'ImageWithTextOverlayItem', '2018-10-24 14:16:02', '2018-10-24 14:08:04', '29% of patient harm is estimated to occur in the community [NZMJ]', NULL, NULL, '27a2dd', '004184', 'ffffff', 'fadeInRight', NULL, NULL, 0, 0, 232, 33, 0, 'size1of1', 'size1of3', '2', 19, '0070ba', 0, 300, NULL),
(11, 'ImageWithTextOverlayItem', '2018-10-25 11:11:13', '2018-10-25 11:08:02', 'General Practice', NULL, NULL, NULL, '004184', '004184', NULL, NULL, NULL, 0, 0, 234, 37, 0, 'size1of1', 'size1of2', '0', 30, 'ffffff', 0, 450, NULL),
(12, 'ImageWithTextOverlayItem', '2018-10-25 11:14:20', '2018-10-25 11:14:11', 'Pharmacy', NULL, NULL, NULL, '004184', '004184', NULL, NULL, NULL, 0, 0, 235, 37, 0, 'size1of1', 'size1of2', '0', 30, 'ffffff', 0, 450, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `LoginAttempt`
--

CREATE TABLE `LoginAttempt` (
  `ID` int(11) NOT NULL,
  `ClassName` enum('LoginAttempt') DEFAULT 'LoginAttempt',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Email` varchar(255) DEFAULT NULL,
  `Status` enum('Success','Failure') DEFAULT 'Success',
  `IP` varchar(255) DEFAULT NULL,
  `MemberID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `Member`
--

CREATE TABLE `Member` (
  `ID` int(11) NOT NULL,
  `ClassName` enum('Member') DEFAULT 'Member',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `FirstName` varchar(50) DEFAULT NULL,
  `Surname` varchar(50) DEFAULT NULL,
  `Email` varchar(254) DEFAULT NULL,
  `TempIDHash` varchar(160) DEFAULT NULL,
  `TempIDExpired` datetime DEFAULT NULL,
  `Password` varchar(160) DEFAULT NULL,
  `RememberLoginToken` varchar(160) DEFAULT NULL,
  `NumVisit` int(11) NOT NULL DEFAULT '0',
  `LastVisited` datetime DEFAULT NULL,
  `AutoLoginHash` varchar(160) DEFAULT NULL,
  `AutoLoginExpired` datetime DEFAULT NULL,
  `PasswordEncryption` varchar(50) DEFAULT NULL,
  `Salt` varchar(50) DEFAULT NULL,
  `PasswordExpiry` date DEFAULT NULL,
  `LockedOutUntil` datetime DEFAULT NULL,
  `Locale` varchar(6) DEFAULT NULL,
  `FailedLoginCount` int(11) NOT NULL DEFAULT '0',
  `DateFormat` varchar(30) DEFAULT NULL,
  `TimeFormat` varchar(30) DEFAULT NULL,
  `URLSegment` varchar(255) DEFAULT NULL,
  `BlogProfileSummary` mediumtext,
  `BlogProfileImageID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Member`
--

INSERT INTO `Member` (`ID`, `ClassName`, `LastEdited`, `Created`, `FirstName`, `Surname`, `Email`, `TempIDHash`, `TempIDExpired`, `Password`, `RememberLoginToken`, `NumVisit`, `LastVisited`, `AutoLoginHash`, `AutoLoginExpired`, `PasswordEncryption`, `Salt`, `PasswordExpiry`, `LockedOutUntil`, `Locale`, `FailedLoginCount`, `DateFormat`, `TimeFormat`, `URLSegment`, `BlogProfileSummary`, `BlogProfileImageID`) VALUES
(1, 'Member', '2018-11-14 11:26:58', '2018-09-18 00:05:10', 'Keith', 'Loise', 'admin', '4a88aae51ca28531e4898e6d62e0e9ae30b64627', '2018-11-17 11:26:58', '$2y$10$dcbf556245ec64da18733O/QE/Dj6Pa/HNqKicG7/Qo6BCXyjM.hG', NULL, 37, '2018-11-14 13:23:41', NULL, NULL, 'blowfish', '10$dcbf556245ec64da18733a', NULL, NULL, 'en_GB', 0, 'd MMM y', 'h:mm a', 'keith-loise', NULL, 0),
(2, 'Member', '2018-09-24 17:04:34', '2018-09-24 17:04:34', 'Sharon', 'Puddle', 'sharon.puddle@waitematadhb.govt.nz', NULL, NULL, '$2y$10$cde4b9eb2f477e3d5b9c7ulVHv5KdfpjFfUmm41QRP6y/yC81qz5K', NULL, 0, NULL, NULL, NULL, 'blowfish', '10$cde4b9eb2f477e3d5b9c72', NULL, NULL, 'en_US', 0, 'yyyy-MM-dd', 'H:mm', 'sharon-puddle', NULL, 0),
(3, 'Member', '2018-09-24 17:22:07', '2018-09-24 17:19:54', 'Elna', 'Meller', 'elna.meller@waitematadhb.govt.nz', NULL, NULL, '$2y$10$db3b1ca49f691b0ce1a94OfTN0ORejHXASBgBwjRUEHP9VBs3zUMW', NULL, 0, NULL, NULL, NULL, 'blowfish', '10$db3b1ca49f691b0ce1a94a', NULL, NULL, 'en_GB', 0, 'd MMM y', 'h:mm a', 'elna-meller', NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `MemberPassword`
--

CREATE TABLE `MemberPassword` (
  `ID` int(11) NOT NULL,
  `ClassName` enum('MemberPassword') DEFAULT 'MemberPassword',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Password` varchar(160) DEFAULT NULL,
  `Salt` varchar(50) DEFAULT NULL,
  `PasswordEncryption` varchar(50) DEFAULT NULL,
  `MemberID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `MemberPassword`
--

INSERT INTO `MemberPassword` (`ID`, `ClassName`, `LastEdited`, `Created`, `Password`, `Salt`, `PasswordEncryption`, `MemberID`) VALUES
(1, 'MemberPassword', '2018-09-18 00:05:10', '2018-09-18 00:05:10', '$2y$10$dcbf556245ec64da18733O/QE/Dj6Pa/HNqKicG7/Qo6BCXyjM.hG', '10$dcbf556245ec64da18733a', 'blowfish', 1),
(2, 'MemberPassword', '2018-09-24 17:04:34', '2018-09-24 17:04:34', '$2y$10$cde4b9eb2f477e3d5b9c7ulVHv5KdfpjFfUmm41QRP6y/yC81qz5K', '10$cde4b9eb2f477e3d5b9c72', 'blowfish', 2),
(3, 'MemberPassword', '2018-09-24 17:19:54', '2018-09-24 17:19:54', '$2y$10$db3b1ca49f691b0ce1a94OfTN0ORejHXASBgBwjRUEHP9VBs3zUMW', '10$db3b1ca49f691b0ce1a94a', 'blowfish', 3);

-- --------------------------------------------------------

--
-- Table structure for table `Module`
--

CREATE TABLE `Module` (
  `ID` int(11) NOT NULL,
  `ClassName` enum('Module','AccordionModule','BlogModule','CustomSectionModule','FeedModule','ImageAndContentModule','ImageWithContentModule','ImageWithTextOverlayModule','SliderModule','SlideshowModule','TeamModule') DEFAULT 'Module',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Title` varchar(255) DEFAULT NULL,
  `ModuleType` varchar(255) DEFAULT NULL,
  `Sort` int(11) NOT NULL DEFAULT '0',
  `ParentID` int(11) NOT NULL DEFAULT '0',
  `Archived` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `Type` varchar(255) DEFAULT NULL,
  `Content` mediumtext,
  `PaddingTop` varchar(255) DEFAULT NULL,
  `PaddingBot` varchar(255) DEFAULT NULL,
  `SectionBgImageID` int(11) NOT NULL DEFAULT '0',
  `SectionWidth` varchar(255) DEFAULT NULL,
  `PaddingLeft` varchar(255) DEFAULT NULL,
  `PaddingRight` varchar(255) DEFAULT NULL,
  `Animate` varchar(255) DEFAULT NULL,
  `AnimateDelay` varchar(255) DEFAULT NULL,
  `AnimateSpeed` varchar(255) DEFAULT NULL,
  `MainAnimate` varchar(255) DEFAULT NULL,
  `MainAnimateDelay` varchar(255) DEFAULT NULL,
  `MainAnimateSpeed` varchar(255) DEFAULT NULL,
  `BackgroundOverlay` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `BgOverlayColor` varchar(6) DEFAULT NULL,
  `SectionHeader` mediumtext,
  `SectionSubHeader` mediumtext,
  `FloatSection` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `HeaderAnimate` varchar(255) DEFAULT NULL,
  `HeaderAnimateDelay` varchar(255) DEFAULT NULL,
  `HeaderAnimateSpeed` varchar(255) DEFAULT NULL,
  `ContentPosition` enum('left','right','top left','top right') DEFAULT 'left',
  `OffHeader` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `BgColorGradient1` varchar(6) DEFAULT NULL,
  `BgColorGradient2` varchar(6) DEFAULT NULL,
  `Width` enum('size1of1','size1of2','size1of3','size2of3','size1of4','size3of4','size1of5','size2of5','size3of5','size4of5') DEFAULT 'size1of1',
  `BlogStyle` enum('horizontal','vertical') DEFAULT 'horizontal',
  `BtnSectionHeader` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `ButtonLabel` varchar(255) DEFAULT NULL,
  `PageLinkID` int(11) NOT NULL DEFAULT '0',
  `ContentSize` int(11) NOT NULL DEFAULT '0',
  `ContentColor` varchar(6) DEFAULT NULL,
  `SectionHeaderSize` int(11) NOT NULL DEFAULT '0',
  `SectionSubHeaderSize` int(11) NOT NULL DEFAULT '0',
  `ActivateParallax` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `SectionContWidth` enum('Full','size1of2','size1of3','size2of3','size1of4','size3of4','size1of5','size2of5','size3of5','size4of5') DEFAULT 'Full'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Module`
--

INSERT INTO `Module` (`ID`, `ClassName`, `LastEdited`, `Created`, `Title`, `ModuleType`, `Sort`, `ParentID`, `Archived`, `Type`, `Content`, `PaddingTop`, `PaddingBot`, `SectionBgImageID`, `SectionWidth`, `PaddingLeft`, `PaddingRight`, `Animate`, `AnimateDelay`, `AnimateSpeed`, `MainAnimate`, `MainAnimateDelay`, `MainAnimateSpeed`, `BackgroundOverlay`, `BgOverlayColor`, `SectionHeader`, `SectionSubHeader`, `FloatSection`, `HeaderAnimate`, `HeaderAnimateDelay`, `HeaderAnimateSpeed`, `ContentPosition`, `OffHeader`, `BgColorGradient1`, `BgColorGradient2`, `Width`, `BlogStyle`, `BtnSectionHeader`, `ButtonLabel`, `PageLinkID`, `ContentSize`, `ContentColor`, `SectionHeaderSize`, `SectionSubHeaderSize`, `ActivateParallax`, `SectionContWidth`) VALUES
(1, 'Module', '2018-09-18 12:20:16', '2018-09-18 11:47:31', 'Slideshow Section', 'SlideshowModule', 0, 6, 1, NULL, NULL, NULL, NULL, 0, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 'left', 0, NULL, NULL, 'size1of1', 'horizontal', 0, NULL, 0, 0, NULL, 0, 0, 0, ''),
(4, 'Module', '2018-09-18 13:11:41', '2018-09-18 13:11:41', 'Slider Module', NULL, 0, 7, 0, 'SlideshowModule', NULL, NULL, NULL, 0, '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 'left', 0, NULL, NULL, 'size1of1', 'horizontal', 0, NULL, 0, 0, NULL, 0, 0, 0, ''),
(8, 'Module', '2018-09-28 11:28:28', '2018-09-18 15:48:07', 'Intro Section', NULL, 2, 10, 0, 'Module', '<p class=\"intro\">Lorem ipsum <span class=\"orange-lines\"><span class=\"text\">dolors sit amet</span></span> consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et <span class=\"orange-lines\"><span class=\"text\">dolore</span></span> magna aliqua. Ut enim <span class=\"orange-lines\"><span class=\"text\">ad minim veniam,</span></span> quis nostrud exercitation <span class=\"orange-lines\"><span class=\"text\">ullamco</span></span> la boris nisi ut aliquip ex ea commodo <span class=\"orange-lines\">consequat.</span></p><p class=\"default-btn\"><a href=\"../\" target=\"_blank\"><strong>READ OUR STORY</strong> </a></p>', '100', '100', 14, '1000', NULL, NULL, NULL, NULL, NULL, 'fadeIn', NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 'left', 0, NULL, NULL, 'size1of1', 'horizontal', 0, NULL, 0, 0, NULL, 0, 0, 0, ''),
(9, 'SlideshowModule', '2018-09-28 11:28:28', '2018-09-18 16:17:55', 'Slideshow', NULL, 1, 10, 0, 'SlideshowModule', NULL, '0', '0', 0, NULL, '0', '0', 'fadeIn', NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 'left', 0, NULL, NULL, 'size1of1', 'horizontal', 0, NULL, 0, 0, NULL, 0, 0, 0, ''),
(11, 'SliderModule', '2018-10-18 15:52:28', '2018-09-20 17:15:15', 'Our Projects', NULL, 4, 10, 0, 'SliderModule', NULL, '145', '145', 14, NULL, '40', '40', NULL, NULL, NULL, NULL, NULL, NULL, 1, 'f8f1de', '<h1 class=\"section-header\"><strong>OUR <span class=\"color-orange\" style=\"text-decoration: underline;\">PROJECTS</span></strong></h1><p class=\"text-light\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p><p> </p>', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>', 0, 'fadeInLeft', NULL, NULL, 'left', 0, NULL, NULL, 'size1of1', 'horizontal', 0, 'View More', 11, 0, NULL, 0, 0, 0, ''),
(12, 'ImageWithTextOverlayModule', '2018-09-28 11:28:28', '2018-09-21 09:36:40', 'Image with text overlay', NULL, 3, 10, 0, 'ImageWithTextOverlayModule', NULL, '0', '0', 0, NULL, '0', '0', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 'left', 0, NULL, NULL, 'size1of1', 'horizontal', 0, NULL, 0, 0, NULL, 0, 0, 0, ''),
(13, 'Module', '2018-09-21 15:10:25', '2018-09-21 15:02:09', 'Content', NULL, 0, 12, 0, 'Module', '<p><span>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</span></p>', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 'left', 0, NULL, NULL, 'size1of1', 'horizontal', 0, NULL, 0, 0, NULL, 0, 0, 0, ''),
(14, 'Module', '2018-09-21 15:48:46', '2018-09-21 15:48:43', 'Content', NULL, 0, 13, 0, 'Module', '<p><span>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</span></p>', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 'left', 0, NULL, NULL, 'size1of1', 'horizontal', 0, NULL, 0, 0, NULL, 0, 0, 0, ''),
(15, 'Module', '2018-09-21 15:49:30', '2018-09-21 15:49:27', 'Content', NULL, 0, 14, 0, 'Module', '<p><span>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</span></p>', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 'left', 0, NULL, NULL, 'size1of1', 'horizontal', 0, NULL, 0, 0, NULL, 0, 0, 0, ''),
(16, 'ImageWithContentModule', '2018-10-18 15:52:50', '2018-09-24 15:00:41', 'Recent Awards', NULL, 5, 10, 0, 'ImageWithContentModule', NULL, '145', '145', 14, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '<h1 class=\"section-header\" style=\"text-align: center;\"><strong>RECENT <span class=\"color-orange\"><span style=\"text-decoration: underline;\">AWARDS</span></span></strong></h1><p class=\"text-light\" style=\"text-align: center; margin: auto;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p><p class=\"text-light\"> <br> </p>', NULL, 1, 'fadeIn', NULL, NULL, 'left', 0, NULL, NULL, 'size1of1', 'horizontal', 0, 'View More', 20, 0, NULL, 0, 0, 0, ''),
(17, 'Module', '2018-09-24 16:43:07', '2018-09-24 16:43:07', 'Content', NULL, 0, 16, 0, 'Module', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 'left', 0, NULL, NULL, 'size1of1', 'horizontal', 0, NULL, 0, 0, NULL, 0, 0, 0, ''),
(19, 'TeamModule', '2018-10-12 10:08:24', '2018-09-27 13:20:30', 'Our People', NULL, 6, 10, 0, 'TeamModule', NULL, '140', '140', 0, NULL, '0', '0', 'fadeIn', NULL, NULL, NULL, NULL, NULL, 0, NULL, '<h1 class=\"section-header\"><strong>OUR <span class=\"color-orange\"><span style=\"text-decoration: underline;\">PEOPLE</span></span></strong></h1><p class=\"text-light\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p><p class=\"text-light\"> </p>', NULL, 1, 'fadeInUp', NULL, NULL, 'left', 0, NULL, NULL, 'size1of1', 'horizontal', 0, NULL, 0, 0, NULL, 0, 0, 0, ''),
(20, 'BlogModule', '2018-10-18 13:58:49', '2018-09-28 11:28:03', 'Events', NULL, 7, 10, 0, 'BlogModule', NULL, '145', '145', 14, NULL, NULL, NULL, 'fadeIn', NULL, NULL, NULL, NULL, NULL, 0, NULL, '<h1 class=\"section-header\" style=\"text-align: right;\"><strong>WHAT\'S<br><span class=\"color-orange\"><span><span style=\"text-decoration: underline;\">HAPPENING</span></span></span></strong></h1><p class=\"text-light\" style=\"text-align: right; margin: auto; margin-right: 0px; max-width: 600px;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>', NULL, 1, 'fadeInRight', NULL, NULL, 'left', 1, NULL, NULL, 'size2of3', 'vertical', 0, NULL, 0, 0, NULL, 0, 0, 0, ''),
(21, 'BlogModule', '2018-10-18 13:58:59', '2018-09-28 11:28:25', 'Latest Blogs', NULL, 8, 10, 0, 'BlogModule', NULL, '145', '145', 51, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'f8f1de', '<h1 class=\"section-header\" style=\"text-align: left;\"><strong>LATEST<br><span class=\"color-orange\"><span style=\"text-decoration: underline;\">i3 BLOGS</span></span></strong></h1><p class=\"text-light\" style=\"margin-left: 0px; text-align: left; max-width: 600px;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p><p class=\"text-light\" style=\"text-align: left;\"> </p>', NULL, 1, NULL, NULL, NULL, 'right', 1, NULL, NULL, 'size2of3', 'vertical', 0, NULL, 0, 0, NULL, 0, 0, 0, ''),
(22, 'SlideshowModule', '2018-11-13 15:52:40', '2018-10-17 11:20:51', 'Slidershow Banner', NULL, 1, 54, 0, 'SlideshowModule', NULL, '0', '0', 0, NULL, '0', '0', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 'left', 0, NULL, NULL, 'size1of1', 'horizontal', 0, NULL, 0, 0, NULL, 0, 0, 0, 'Full'),
(23, 'ImageWithTextOverlayModule', '2018-11-13 15:52:40', '2018-10-17 14:21:09', 'CTA', NULL, 2, 54, 0, 'ImageWithTextOverlayModule', NULL, '110', '110', 0, '1450', '40', '40', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 'left', 0, NULL, NULL, 'size1of1', 'horizontal', 0, NULL, 0, 0, NULL, 25, 20, 0, 'Full'),
(24, 'Module', '2018-11-13 15:52:40', '2018-10-17 15:40:04', 'Module', NULL, 3, 54, 0, 'Module', '<p class=\"intro\" style=\"text-align: center;\">A quality improvement programme in primary care at Auckland and Waitemata District Health Boards to reduce preventable patient harm</p>', '70', '70', 0, '1450', NULL, NULL, 'fadeInUp', NULL, NULL, 'fadeIn', NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 'left', 0, '004184', '2d6eb4', 'size1of1', 'horizontal', 0, NULL, 0, 0, NULL, 0, 0, 0, 'Full'),
(25, 'BlogModule', '2018-11-13 15:52:40', '2018-10-17 16:38:05', 'Events', NULL, 5, 54, 0, 'BlogModule', NULL, '110', '110', 0, '1450', '40', '40', 'fadeIn', NULL, NULL, NULL, NULL, NULL, 0, NULL, '<h1><strong>EVENTS</strong></h1>', NULL, 0, 'fadeInDown', NULL, NULL, 'top left', 0, 'f0f0f0', 'f0f0f0', 'size1of1', 'horizontal', 1, 'View All', 55, 0, NULL, 0, 0, 0, 'Full'),
(26, 'BlogModule', '2018-11-13 15:52:40', '2018-10-18 12:37:27', 'Latest News', NULL, 6, 54, 0, 'BlogModule', NULL, '110', '110', 0, '1450', '40', '40', 'fadeIn', NULL, NULL, NULL, NULL, NULL, 0, NULL, '<h1><strong>LATEST NEWS</strong></h1>', NULL, 0, 'fadeInUp', NULL, NULL, 'top left', 0, NULL, NULL, 'size1of1', 'vertical', 1, 'View All', 55, 0, NULL, 25, 20, 0, 'Full'),
(27, 'TeamModule', '2018-11-13 15:52:40', '2018-10-18 16:18:06', 'Meet the team', NULL, 7, 54, 0, 'TeamModule', NULL, '110', '110', 0, '1450', '40', '40', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '<h1><strong>MEET THE TEAM</strong></h1>', NULL, 0, 'fadeIn', NULL, NULL, 'left', 0, 'f0f0f0', 'f0f0f0', 'size1of1', 'horizontal', 1, 'View All', 62, 0, NULL, 56, 20, 0, 'Full'),
(28, 'FeedModule', '2018-11-13 15:52:40', '2018-10-19 11:56:36', 'Social Feed and Feedback form', NULL, 4, 54, 0, 'FeedModule', NULL, '100', '70', 0, '1450', '40', '40', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 'left', 0, NULL, NULL, 'size1of1', 'horizontal', 0, NULL, 0, 0, NULL, 0, 0, 0, 'Full'),
(29, 'SlideshowModule', '2018-11-13 15:52:47', '2018-10-24 10:38:36', 'Banner', NULL, 0, 71, 0, 'SlideshowModule', NULL, '0', '0', 0, NULL, '0', '0', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 'left', 0, NULL, NULL, 'size1of1', 'horizontal', 0, NULL, 0, 0, NULL, 0, 0, 0, 'Full'),
(30, 'Module', '2018-11-13 15:52:47', '2018-10-24 11:22:43', 'Section 1', NULL, 0, 71, 0, 'Module', '<p style=\"text-align: center;\">Safety in Practice supports general practices, community pharmacies and urgent care clinics to make changes in areas where they feel quality of patient care can be improved and made safer. </p><p style=\"text-align: center;\">Practices are provided with simple but effective tools to identify areas of risk, implement and measure change.</p>', '70', '70', 0, '1200', '40', '40', NULL, NULL, NULL, 'fadeInUp', NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 'left', 0, 'f0f0f0', 'f0f0f0', 'size1of1', 'horizontal', 0, NULL, 0, 22, '004184', 0, 0, 0, 'Full'),
(33, 'ImageWithTextOverlayModule', '2018-11-13 15:52:47', '2018-10-24 12:58:05', 'Section 2', NULL, 0, 71, 0, 'ImageWithTextOverlayModule', NULL, '100', '100', 0, '1450', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '<h1><strong>Why bother with patient safety?</strong></h1>', NULL, 0, 'fadeInLeft', NULL, NULL, 'left', 0, NULL, NULL, 'size1of1', 'horizontal', 0, NULL, 0, 0, NULL, 0, 0, 0, 'Full'),
(36, 'Module', '2018-11-13 15:52:47', '2018-10-24 15:36:00', 'Section 3', NULL, 0, 71, 0, 'Module', NULL, '100', '100', 233, '1450', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'ffffff', NULL, NULL, 0, NULL, NULL, NULL, 'left', 0, NULL, NULL, 'size1of1', 'horizontal', 0, NULL, 0, 0, NULL, 25, 20, 1, 'Full'),
(37, 'ImageWithTextOverlayModule', '2018-11-13 15:52:47', '2018-10-25 10:03:26', 'Section 4', NULL, 0, 71, 0, 'ImageWithTextOverlayModule', NULL, '100', '100', 0, '1450', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '<h1><strong>What does being part of Safety in Practice involve?</strong></h1>', NULL, 0, 'fadeInLeft', NULL, NULL, 'left', 0, NULL, NULL, 'size1of1', 'horizontal', 0, NULL, 0, 0, NULL, 0, 0, 0, 'Full'),
(43, 'ImageAndContentModule', '2018-11-13 15:53:19', '2018-11-01 14:33:13', 'Image and Content', NULL, 0, 76, 0, 'ImageAndContentModule', NULL, '70', '70', 0, '1450', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 'left', 0, NULL, NULL, 'size1of1', 'horizontal', 0, NULL, 0, 0, NULL, 25, 20, 0, 'Full'),
(46, 'Module', '2018-11-13 17:26:12', '2018-11-08 12:24:15', 'Clinical Modules', NULL, 4, 77, 0, 'Module', NULL, '20', '70', 262, '1450', '70', '70', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 'left', 0, NULL, NULL, 'size1of1', 'horizontal', 0, NULL, 0, 0, NULL, 25, 20, 1, 'Full'),
(47, 'Module', '2018-11-13 17:26:12', '2018-11-08 14:27:23', 'Its been motivating to see the staff...', NULL, 5, 77, 0, 'Module', NULL, '70', '70', 0, '1450', '70', '70', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 'left', 0, 'eeeeee', 'eeeeee', 'size1of1', 'horizontal', 0, NULL, 0, 0, NULL, 25, 20, 0, 'Full'),
(48, 'Module', '2018-11-13 17:26:12', '2018-11-08 14:33:34', 'What areas does the programme...', NULL, 3, 77, 0, 'Module', NULL, '70', '70', 0, '1450', '70', '70', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 'left', 0, NULL, NULL, 'size1of1', 'horizontal', 0, NULL, 0, 0, NULL, 25, 20, 0, 'Full'),
(49, 'Module', '2018-11-13 17:26:12', '2018-11-08 14:37:17', 'Safer Culture Tools', NULL, 6, 77, 0, 'Module', NULL, '70', '70', 0, '1450', '70', '70', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 'left', 0, 'ffffff', 'ffffff', 'size1of1', 'horizontal', 0, NULL, 0, 0, NULL, 25, 20, 0, 'Full'),
(50, 'Module', '2018-11-13 17:26:12', '2018-11-08 14:58:25', 'Safer Culture tools - Modules', NULL, 7, 77, 0, 'Module', NULL, '70', '70', 263, '1450', '70', '70', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 'left', 0, NULL, NULL, 'size1of1', 'horizontal', 0, NULL, 0, 0, NULL, 25, 20, 1, 'Full'),
(51, 'Module', '2018-11-13 17:58:42', '2018-11-08 15:20:47', 'Clinical Modules Header', NULL, 3, 78, 0, 'Module', NULL, '70', '70', 0, '1450', '70', '70', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 'left', 0, NULL, NULL, 'size1of1', 'horizontal', 0, NULL, 0, 0, NULL, 25, 20, 0, 'Full'),
(52, 'Module', '2018-11-13 17:58:42', '2018-11-08 15:25:44', 'Clinical Modules', NULL, 4, 78, 0, 'Module', NULL, '20', '70', 264, '1450', '70', '70', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 'left', 0, NULL, NULL, 'size1of1', 'horizontal', 0, NULL, 0, 0, NULL, 25, 20, 1, 'Full'),
(53, 'Module', '2018-11-13 17:58:42', '2018-11-08 15:37:34', 'Safety Culture Tools ', NULL, 5, 78, 0, 'Module', NULL, '70', '70', 0, '1450', '70', '70', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 'left', 0, NULL, NULL, 'size1of1', 'horizontal', 0, NULL, 0, 0, NULL, 25, 20, 0, 'Full'),
(54, 'Module', '2018-11-13 17:58:42', '2018-11-08 15:40:37', 'Safer Culture Tools - Module', NULL, 6, 78, 0, 'Module', NULL, '70', '70', 265, '1450', '70', '70', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 'left', 0, NULL, NULL, 'size1of1', 'horizontal', 0, NULL, 0, 0, NULL, 25, 20, 1, 'Full'),
(55, 'TeamModule', '2018-11-13 15:52:59', '2018-11-08 16:02:07', 'Meet the Team', NULL, 0, 79, 0, 'TeamModule', NULL, '70', '70', 0, '1450', '70', '70', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 'left', 0, 'f0f0f0', 'f0f0f0', 'size1of1', 'horizontal', 0, NULL, 0, 0, NULL, 25, 20, 0, 'Full'),
(56, 'Module', '2018-11-13 15:53:03', '2018-11-08 16:26:14', 'Our PHO (Primary Health Organisation) partners', NULL, 0, 80, 0, 'Module', NULL, '70', '20', 0, '1450', '70', '70', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 'left', 0, NULL, NULL, 'size1of1', 'horizontal', 0, NULL, 0, 0, NULL, 25, 20, 0, 'Full'),
(58, 'ImageAndContentModule', '2018-11-13 15:53:03', '2018-11-08 16:37:00', 'Primary Health Organisation Images', NULL, 0, 80, 0, 'ImageAndContentModule', NULL, '0', '70', 0, '1450', '70', '70', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 'left', 0, NULL, NULL, 'size1of1', 'horizontal', 0, NULL, 0, 0, NULL, 25, 20, 0, 'Full'),
(59, 'Module', '2018-11-13 15:53:03', '2018-11-08 16:54:38', 'Endorsements', NULL, 0, 80, 0, 'Module', NULL, '70', '20', 0, '1450', '70', '70', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 'left', 0, 'f4f4f3', 'f4f4f3', 'size1of1', 'horizontal', 0, NULL, 0, 0, NULL, 25, 20, 0, 'Full'),
(60, 'ImageAndContentModule', '2018-11-13 15:53:03', '2018-11-08 17:08:50', 'Endorsements Image', NULL, 0, 80, 0, 'ImageAndContentModule', NULL, '0', '70', 0, '1450', '70', '70', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 'left', 0, 'f4f4f3', 'f4f4f3', 'size1of1', 'horizontal', 0, NULL, 0, 0, NULL, 25, 20, 0, 'Full'),
(61, 'Module', '2018-11-13 15:53:15', '2018-11-09 16:14:31', 'SIP Teams', NULL, 0, 87, 0, 'Module', NULL, '70', '70', 0, '1450', '70', '70', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 'left', 0, NULL, NULL, 'size1of1', 'horizontal', 0, NULL, 0, 0, NULL, 25, 20, 0, 'Full'),
(62, 'Module', '2018-11-13 15:53:03', '2018-11-12 10:48:14', 'Key Organisations', NULL, 0, 80, 0, 'Module', NULL, '70', '20', 0, '1450', '70', '70', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 'left', 0, NULL, NULL, 'size1of1', 'horizontal', 0, NULL, 0, 0, NULL, 25, 20, 0, 'Full'),
(63, 'ImageAndContentModule', '2018-11-13 15:53:03', '2018-11-12 11:28:57', 'Key Organisations Images', NULL, 0, 80, 0, 'ImageAndContentModule', NULL, '0', '70', 0, '1450', '70', '70', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 'left', 0, NULL, NULL, 'size1of1', 'horizontal', 0, NULL, 0, 0, NULL, 25, 20, 0, 'Full'),
(65, 'AccordionModule', '2018-11-13 17:26:22', '2018-11-12 16:59:33', 'Accordion Section 1', NULL, 2, 77, 0, 'AccordionModule', NULL, '0', '70', 0, '1450', '70', '70', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 'left', 0, 'f0f0f0', 'f0f0f0', 'size1of1', 'horizontal', 0, NULL, 0, 0, NULL, 25, 20, 0, 'Full'),
(66, 'Module', '2018-11-13 17:45:03', '2018-11-13 17:24:00', 'Accordion 1 Header', NULL, 1, 77, 0, 'Module', NULL, '70', '20', 0, '1450', '70', '70', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 'left', 0, 'f0f0f0', 'f0f0f0', 'size1of1', 'horizontal', 0, NULL, 0, 0, NULL, 25, 20, 0, 'Full'),
(67, 'Module', '2018-11-13 18:01:54', '2018-11-13 17:54:12', 'Accordion 1 Header', NULL, 1, 78, 0, 'Module', NULL, '70', '20', 0, '1450', '70', '70', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 'left', 0, 'f0f0f0', 'f0f0f0', 'size1of1', 'horizontal', 0, NULL, 0, 0, NULL, 25, 20, 0, 'Full'),
(68, 'AccordionModule', '2018-11-13 18:01:31', '2018-11-13 17:57:53', 'Accordion Section 1', NULL, 2, 78, 0, 'AccordionModule', NULL, '0', '70', 0, '1450', '70', '70', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 'left', 0, 'f0f0f0', 'f0f0f0', 'size1of1', 'horizontal', 0, NULL, 0, 0, NULL, 25, 20, 0, 'Full'),
(69, 'AccordionModule', '2018-11-14 11:57:52', '2018-11-14 11:57:52', 'QueryBuildB', NULL, 0, 88, 0, 'AccordionModule', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 'left', 0, NULL, NULL, 'size1of1', 'horizontal', 0, NULL, 0, 0, NULL, 0, 0, 0, 'Full');

-- --------------------------------------------------------

--
-- Table structure for table `ModuleContentItem`
--

CREATE TABLE `ModuleContentItem` (
  `ID` int(11) NOT NULL,
  `ClassName` enum('ModuleContentItem') DEFAULT 'ModuleContentItem',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Title` mediumtext,
  `Content` mediumtext,
  `ContentSize` int(11) NOT NULL DEFAULT '0',
  `ContentColor` varchar(6) DEFAULT NULL,
  `Animate` varchar(255) DEFAULT NULL,
  `AnimateDelays` varchar(255) DEFAULT NULL,
  `AnimateSpeeds` varchar(255) DEFAULT NULL,
  `Archived` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `Sort` int(11) NOT NULL DEFAULT '0',
  `ParentID` int(11) NOT NULL DEFAULT '0',
  `PageLinkID` int(11) NOT NULL DEFAULT '0',
  `Width` enum('size1of1','size1of2','size1of3','size2of3','size1of4','size3of4','size1of5','size2of5','size3of5','size4of5') DEFAULT 'size1of1',
  `BlockPadding` mediumtext,
  `BlockBgColor` varchar(6) DEFAULT NULL,
  `BlockBgColor2` varchar(6) DEFAULT NULL,
  `ContHeaderColor` varchar(6) DEFAULT NULL,
  `ContHeaderSize` int(11) NOT NULL DEFAULT '0',
  `BadgeIcon` mediumtext,
  `NoHeading` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `Alignment` enum('align-center','align-left','align-right') DEFAULT 'align-center'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ModuleContentItem`
--

INSERT INTO `ModuleContentItem` (`ID`, `ClassName`, `LastEdited`, `Created`, `Title`, `Content`, `ContentSize`, `ContentColor`, `Animate`, `AnimateDelays`, `AnimateSpeeds`, `Archived`, `Sort`, `ParentID`, `PageLinkID`, `Width`, `BlockPadding`, `BlockBgColor`, `BlockBgColor2`, `ContHeaderColor`, `ContHeaderSize`, `BadgeIcon`, `NoHeading`, `Alignment`) VALUES
(1, 'ModuleContentItem', '2018-11-13 15:56:52', '2018-10-24 15:19:14', 'Safety in Practice supports general practices,...', '<p class=\"intro\">Safety in Practice supports general practices, community pharmacies and urgent care clinics to make changes in areas where they feel quality of patient care can be improved and made safer. </p><p class=\"intro\">Practices are provided with simple but effective tools to identify areas of risk, implement and measure change.</p>', 19, '004184', NULL, NULL, NULL, 0, 0, 30, 0, 'size1of1', NULL, NULL, NULL, NULL, 10, NULL, 1, 'align-center'),
(2, 'ModuleContentItem', '2018-10-25 10:27:50', '2018-10-24 15:26:24', 'Content 1', '<p class=\"intro\">A quality improvement programme in primary care at Auckland and Waitemata District Health Boards to reduce preventable patient harm</p>', 26, 'ffffff', 'fadeIn', NULL, NULL, 0, 0, 24, 0, 'size1of1', NULL, NULL, NULL, NULL, 10, NULL, 1, 'align-center'),
(3, 'ModuleContentItem', '2018-11-08 15:10:53', '2018-10-24 15:36:41', 'IMPROVED KNOWLEDGE', '<p style=\"text-align: center;\"><span>\"Our knowledge [of improvement processes] is incredibly improved\"</span></p>', 16, 'ffffff', NULL, NULL, NULL, 0, 0, 36, 0, 'size1of4', '40', '004184', '0070ba', 'ffffff', 25, 'fal fa-graduation-cap', 0, 'align-center'),
(4, 'ModuleContentItem', '2018-11-08 15:10:53', '2018-10-24 16:31:28', 'FACILITATING CHANGE', '<p style=\"text-align: center;\">\"We feel a lot easier around managing change processes\"</p>', 16, 'ffffff', 'fadeInUp', NULL, NULL, 0, 0, 36, 0, 'size1of4', '40', '004184', '0070ba', 'ffffff', 25, 'fal fa-flag-checkered', 0, 'align-center'),
(5, 'ModuleContentItem', '2018-11-08 15:10:53', '2018-10-24 16:35:05', 'INCREASED EFFICIENCY', '<p style=\"text-align: center;\">\"Significant tangible improvements in efficiency\"</p>', 16, 'ffffff', NULL, NULL, NULL, 0, 0, 36, 0, 'size1of4', '40', '004184', '0070ba', 'ffffff', 25, 'fal fa-desktop-alt', 0, 'align-center'),
(6, 'ModuleContentItem', '2018-11-08 15:10:53', '2018-10-25 09:14:03', 'REDUCED WORKLOAD', '<p style=\"text-align: center;\">\"Less time chasing up doctors about interpreting somone\'s results\"</p>', 16, 'ffffff', NULL, NULL, NULL, 0, 0, 36, 0, 'size1of4', '40', '004184', '0070ba', 'ffffff', 25, 'fal fa-clock', 0, 'align-center'),
(7, 'ModuleContentItem', '2018-11-08 15:10:53', '2018-10-25 09:25:52', 'IMPROVED PATIENT COMMUNICATION', '<p style=\"text-align: center;\">\"HUGE improvement in the ease of communicating with patients around their results\"</p>', 16, 'ffffff', NULL, NULL, NULL, 0, 0, 36, 0, 'size1of4', '40', '004184', '0070ba', 'ffffff', 25, 'fal fa-users', 0, 'align-center'),
(8, 'ModuleContentItem', '2018-11-08 15:10:53', '2018-10-25 09:34:41', 'INSIGHTS INTO SYSTEMS', '<p style=\"text-align: center;\">\"Initially the team didn\'t think there was a problem...this has highlighted how some GPs don\'t update the medication\"</p>', 16, 'ffffff', NULL, NULL, NULL, 0, 0, 36, 0, 'size1of4', '40', '004184', '0070ba', 'ffffff', 25, 'fal fa-search-plus', 0, 'align-center'),
(9, 'ModuleContentItem', '2018-11-08 15:10:53', '2018-10-25 09:41:43', 'BETTER TEAMWORK', '<p style=\"text-align: center;\">\"Improved communication between GP, nurse and patient\"</p>', 16, 'ffffff', NULL, NULL, NULL, 0, 0, 36, 0, 'size1of4', '40', '004184', '0070ba', 'ffffff', 25, 'fal fa-people-carry', 0, 'align-center'),
(10, 'ModuleContentItem', '2018-11-08 15:10:53', '2018-10-25 09:47:03', 'IMPROVED RELIABILITY', '<p style=\"text-align: center;\">\"We are now all clear that med rec needs to be documented using agreed shortcut keys\"</p>', 16, 'ffffff', NULL, NULL, NULL, 0, 0, 36, 0, 'size1of4', '40', '004184', '0070ba', 'ffffff', 25, 'fal fa-boxes', 0, 'align-center'),
(12, 'ModuleContentItem', '2018-11-08 15:09:55', '2018-11-08 12:26:33', 'Medication Reconciliation', '<p style=\"text-align: center;\"> <strong>Medication Reconciliation</strong></p>', 30, 'ffffff', NULL, NULL, NULL, 0, 2, 46, 0, 'size1of3', '40', '004184', '0070ba', NULL, 10, 'fal fa-prescription', 1, 'align-center'),
(14, 'ModuleContentItem', '2018-11-08 15:09:55', '2018-11-08 13:58:09', 'Results Handling', '<p style=\"text-align: center;\"><strong>Results Handling</strong></p>', 30, 'ffffff', NULL, NULL, NULL, 0, 3, 46, 0, 'size1of3', '40', '004184', '0070ba', NULL, 10, 'fal fa-vials', 1, 'align-center'),
(15, 'ModuleContentItem', '2018-11-08 15:09:55', '2018-11-08 14:04:40', 'Warfarin', '<p style=\"text-align: center;\"><strong>Warfarin</strong></p>', 30, 'ffffff', NULL, NULL, NULL, 0, 4, 46, 0, 'size1of3', '40', '004184', '0070ba', NULL, 10, 'fal fa-pills', 1, 'align-center'),
(16, 'ModuleContentItem', '2018-11-08 15:09:55', '2018-11-08 14:15:27', 'NSAIDs', '<p style=\"text-align: center;\"><strong>NSAIDs</strong></p>', 30, 'ffffff', NULL, NULL, NULL, 0, 5, 46, 0, 'size1of3', '40', '004184', '0070ba', NULL, 10, 'fal fa-tablets', 1, 'align-center'),
(17, 'ModuleContentItem', '2018-11-08 15:09:55', '2018-11-08 14:17:26', 'DMARDs', '<p style=\"text-align: center;\"><strong>DMARDs</strong></p>', 30, 'ffffff', NULL, NULL, NULL, 0, 6, 46, 0, 'size1of3', '40', '004184', '0070ba', NULL, 10, 'fal fa-capsules', 1, 'align-center'),
(18, 'ModuleContentItem', '2018-11-08 15:09:55', '2018-11-08 14:23:28', 'Opiods', '<p style=\"text-align: center;\"><strong>Opiods</strong></p>', 30, 'ffffff', NULL, NULL, NULL, 0, 7, 46, 0, 'size1of3', '40', '004184', '0070ba', NULL, 10, 'fal fa-pills', 1, 'align-center'),
(20, 'ModuleContentItem', '2018-11-08 14:42:32', '2018-11-08 14:28:05', '\"It\'s been motivating to see the staff buy-in in general..', '<p class=\"intro\" style=\"text-align: center;\">\"It\'s been motivating to see the staff buy-in in general on providing a more streamlined results handling process within the practice\"</p>', 26, '333333', NULL, NULL, NULL, 0, 0, 47, 0, 'size1of1', NULL, NULL, NULL, NULL, 10, NULL, 1, 'align-center'),
(21, 'ModuleContentItem', '2018-11-09 16:38:01', '2018-11-08 14:35:29', 'What areas does the programme focus on?', '<p><strong>Clinical Modules</strong></p>', 35, '333333', NULL, NULL, NULL, 0, 0, 48, 0, 'size1of1', NULL, NULL, NULL, '004184', 40, NULL, 0, 'align-left'),
(22, 'ModuleContentItem', '2018-11-08 15:16:11', '2018-11-08 14:38:50', 'text', '<p><strong>Safer Culture Tools</strong></p>', 35, '333333', NULL, NULL, NULL, 0, 0, 49, 0, 'size1of1', NULL, NULL, NULL, NULL, 10, NULL, 1, 'align-center'),
(23, 'ModuleContentItem', '2018-11-08 15:43:20', '2018-11-08 14:59:24', 'Safety Climate Survey', '<p style=\"text-align: center;\"><strong>Safety Climate Change</strong></p>', 30, 'ffffff', NULL, NULL, NULL, 0, 0, 50, 0, 'size1of3', '40', '004184', '0070ba', NULL, 10, 'fal fa-comment-alt', 1, 'align-center'),
(24, 'ModuleContentItem', '2018-11-08 15:13:54', '2018-11-08 15:13:18', 'Trigger Tool', '<p style=\"text-align: center;\"><strong>Trigger Tool</strong></p>', 30, 'ffffff', NULL, NULL, NULL, 0, 0, 50, 0, 'size1of3', '40', '004184', '0070ba', NULL, 10, 'fal fa-bell', 1, 'align-center'),
(25, 'ModuleContentItem', '2018-11-08 15:15:45', '2018-11-08 15:15:15', ' Significant Event Analysis', '<p style=\"text-align: center;\"><strong>Significant Event Analysis</strong></p>', 30, 'ffffff', NULL, NULL, NULL, 0, 0, 50, 0, 'size1of3', '40', '004184', '0070ba', NULL, 10, 'fal fa-lightbulb-exclamation', 1, 'align-center'),
(26, 'ModuleContentItem', '2018-11-13 17:56:22', '2018-11-08 15:21:59', 'What areas does the programme focus on?', '<p><strong>Clinical Modules</strong></p>', 35, '333333', NULL, NULL, NULL, 0, 0, 51, 0, 'size1of1', NULL, NULL, NULL, '004184', 40, NULL, 0, 'align-left'),
(27, 'ModuleContentItem', '2018-11-08 15:33:15', '2018-11-08 15:27:23', 'Anticoagulants', '<p style=\"text-align: center;\"><strong>Anticoagulants</strong></p>', 30, 'ffffff', NULL, NULL, NULL, 0, 0, 52, 0, 'size1of4', '40', '004184', '0070ba', NULL, 10, 'fal fa-tablets', 1, 'align-center'),
(28, 'ModuleContentItem', '2018-11-08 15:32:54', '2018-11-08 15:31:32', 'Medication Reconciliation', '<p style=\"text-align: center;\"><strong>Medication Reconciliation</strong></p>', 30, 'ffffff', NULL, NULL, NULL, 0, 0, 52, 0, 'size1of4', '40', '004184', '0070ba', NULL, 10, 'fal fa-prescription', 1, 'align-center'),
(29, 'ModuleContentItem', '2018-11-08 15:34:26', '2018-11-08 15:34:26', 'NSAIDs', '<p style=\"text-align: center;\"><strong>NSAIDs</strong></p>', 30, 'ffffff', NULL, NULL, NULL, 0, 0, 52, 0, 'size1of4', '40', '004184', '0070ba', NULL, 10, 'fal fa-tablets', 1, 'align-center'),
(30, 'ModuleContentItem', '2018-11-08 15:36:28', '2018-11-08 15:35:36', 'Opiods', '<p style=\"text-align: center;\"><strong>Opiods</strong></p>', 30, 'ffffff', NULL, NULL, NULL, 0, 0, 52, 0, 'size1of4', '40', '004184', '0070ba', NULL, 10, 'fal fa-capsules', 1, 'align-center'),
(31, 'ModuleContentItem', '2018-11-08 15:38:48', '2018-11-08 15:38:18', 'text', '<p><strong>Safety Culture Tools</strong></p>', 35, '333333', NULL, NULL, NULL, 0, 0, 53, 0, 'size1of1', NULL, 'ffffff', 'ffffff', NULL, 10, NULL, 1, 'align-center'),
(32, 'ModuleContentItem', '2018-11-08 15:45:41', '2018-11-08 15:42:50', 'Safety Climate Survey', '<p style=\"text-align: center;\"><strong>Safety Climate Survey</strong></p>', 30, 'ffffff', NULL, NULL, NULL, 0, 0, 54, 0, 'size1of3', '40', '004184', '0070ba', NULL, 10, 'fal fa-comment-alt', 1, 'align-center'),
(33, 'ModuleContentItem', '2018-11-12 10:53:36', '2018-11-08 16:27:10', 'Our PHO (Primary Health Organisation) partner', NULL, 10, NULL, NULL, NULL, NULL, 0, 0, 56, 0, 'size1of1', NULL, NULL, NULL, '333333', 40, NULL, 0, 'align-left'),
(34, 'ModuleContentItem', '2018-11-08 16:36:29', '2018-11-08 16:32:19', 'Images', NULL, 10, NULL, NULL, NULL, NULL, 0, 0, 57, 0, 'size1of1', NULL, NULL, NULL, NULL, 10, NULL, 1, 'align-center'),
(35, 'ModuleContentItem', '2018-11-12 11:51:31', '2018-11-08 16:55:13', 'Endorsements', NULL, 10, NULL, NULL, NULL, NULL, 0, 0, 59, 0, 'size1of1', NULL, NULL, NULL, '333333', 40, NULL, 0, 'align-left'),
(36, 'ModuleContentItem', '2018-11-09 16:24:43', '2018-11-09 16:15:06', 'Our SIP Teams', '<p>Below is a map of all General Practices and Pharmacies in the Auckland North and Central regions who are part of the current Safety in Practice module.</p><p><iframe title=\"Safety in Practice\" src=\"http://www.arcgis.com/apps/Embed/index.html?webmap=25b06a234b1c4d35a30ed725fa44675b&amp;extent=174.0889,-36.9229,175.5253,-36.3543&amp;home=true&amp;zoom=true&amp;previewImage=false&amp;legendlayers=false&amp;scale=true&amp;basemap_gallery=false&amp;disable_scroll=false&amp;theme=dark\" width=\"2000\" height=\"500\" frameborder=\"0\" marginwidth=\"0\" marginheight=\"0\" scrolling=\"no\"></iframe></p>', 19, '333333', NULL, NULL, NULL, 0, 0, 61, 0, 'size1of1', '0', 'ffffff', 'ffffff', NULL, 10, NULL, 1, 'align-center'),
(37, 'ModuleContentItem', '2018-11-12 10:52:42', '2018-11-12 10:49:52', 'Key Organisations', NULL, 10, NULL, NULL, NULL, NULL, 0, 0, 62, 0, 'size1of1', NULL, NULL, NULL, '333333', 40, NULL, 0, 'align-left'),
(38, 'ModuleContentItem', '2018-11-13 17:47:24', '2018-11-13 17:25:01', 'What does being part of Safety in Practice involve?', NULL, 10, NULL, NULL, NULL, NULL, 0, 0, 66, 0, 'size1of1', NULL, NULL, NULL, '004184', 40, NULL, 0, 'align-left'),
(39, 'ModuleContentItem', '2018-11-13 18:01:54', '2018-11-13 17:57:26', 'What does being part of Safety in Practive involve?', NULL, 10, NULL, NULL, NULL, NULL, 0, 0, 67, 0, 'size1of1', NULL, NULL, NULL, '004184', 40, NULL, 0, 'align-left');

-- --------------------------------------------------------

--
-- Table structure for table `ModuleType`
--

CREATE TABLE `ModuleType` (
  `ID` int(11) NOT NULL,
  `ClassName` enum('ModuleType') DEFAULT 'ModuleType',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Title` varchar(255) DEFAULT NULL,
  `Sort` int(11) NOT NULL DEFAULT '0',
  `ResourcesID` int(11) NOT NULL DEFAULT '0',
  `PageLinkID` int(11) NOT NULL DEFAULT '0',
  `ResourcesTypeID` int(11) NOT NULL DEFAULT '0',
  `Icon` varchar(255) DEFAULT NULL,
  `LinkToPage` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `FeaturedImageID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ModuleType`
--

INSERT INTO `ModuleType` (`ID`, `ClassName`, `LastEdited`, `Created`, `Title`, `Sort`, `ResourcesID`, `PageLinkID`, `ResourcesTypeID`, `Icon`, `LinkToPage`, `FeaturedImageID`) VALUES
(1, 'ModuleType', '2018-10-25 14:16:57', '2018-10-25 14:16:57', 'Clinical Modules', 0, 1, 0, 0, NULL, 0, 0),
(2, 'ModuleType', '2018-10-25 14:17:08', '2018-10-25 14:17:08', 'Prescribing Indicator', 0, 1, 0, 0, NULL, 0, 0),
(3, 'ModuleType', '2018-10-25 14:22:42', '2018-10-25 14:22:42', 'fsd', 0, 2, 0, 0, NULL, 0, 0),
(4, 'ModuleType', '2018-10-25 14:44:43', '2018-10-25 14:44:43', 'Clinical Modules', 0, 0, 0, 0, NULL, 0, 0),
(5, 'ModuleType', '2018-10-31 09:28:04', '2018-10-25 14:50:36', 'Clinical Modules', 0, 0, 0, 1, 'fal fa-file-medical', 0, 248),
(6, 'ModuleType', '2018-10-25 15:38:47', '2018-10-25 14:51:01', 'Prescribing Indicators', 0, 0, 0, 1, 'fal fa-file-prescription', 0, 0),
(7, 'ModuleType', '2018-10-31 09:30:10', '2018-10-25 14:51:15', 'Safety Tool Shed', 0, 0, 0, 1, 'fal fa-band-aid', 0, 249),
(8, 'ModuleType', '2018-10-31 09:41:22', '2018-10-25 14:52:56', 'Clinical Modules', 0, 0, 0, 2, 'fal fa-tablets', 0, 250),
(9, 'ModuleType', '2018-10-31 09:51:09', '2018-10-25 14:53:07', 'Safety Tool Shed', 0, 0, 75, 2, 'fal fa-band-aid', 1, 251),
(10, 'ModuleType', '2018-10-26 10:48:24', '2018-10-25 14:53:46', 'Programme Resources', 0, 0, 0, 3, 'fal fa-file-medical-alt', 0, 0),
(11, 'ModuleType', '2018-10-25 16:02:21', '2018-10-25 14:54:15', 'Patient Safety Resources', 0, 0, 0, 3, 'fal fa-notes-medical', 0, 0),
(12, 'ModuleType', '2018-10-25 16:02:09', '2018-10-25 14:54:25', 'Academic Literature', 0, 0, 0, 3, 'fal fa-chalkboard-teacher', 0, 0),
(13, 'ModuleType', '2018-10-31 11:10:37', '2018-10-25 14:57:52', 'Clinical Modules', 0, 0, 0, 4, 'fal fa-file-medical', 0, 254),
(14, 'ModuleType', '2018-10-26 10:49:11', '2018-10-25 14:58:06', 'Safety Tool Shed', 0, 0, 0, 4, 'fal fa-band-aid', 0, 0),
(15, 'ModuleType', '2018-10-31 10:15:40', '2018-10-31 10:15:40', 'Recruitment Resources', 0, 0, 0, 3, 'fal fa-user-plus', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `Navigation`
--

CREATE TABLE `Navigation` (
  `ID` int(11) NOT NULL,
  `ClassName` enum('Navigation') DEFAULT 'Navigation',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Title` varchar(255) DEFAULT NULL,
  `SiteConfigID` int(11) NOT NULL DEFAULT '0',
  `Sort` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Navigation`
--

INSERT INTO `Navigation` (`ID`, `ClassName`, `LastEdited`, `Created`, `Title`, `SiteConfigID`, `Sort`) VALUES
(2, 'Navigation', '2018-10-24 10:35:55', '2018-10-24 10:07:56', 'Main Menu', 2, 2),
(3, 'Navigation', '2018-10-24 10:35:55', '2018-10-24 10:15:41', 'Quick Menu', 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `NavigationItem`
--

CREATE TABLE `NavigationItem` (
  `ID` int(11) NOT NULL,
  `ClassName` enum('NavigationItem') DEFAULT 'NavigationItem',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Title` varchar(255) DEFAULT NULL,
  `ExternalLink` varchar(255) DEFAULT NULL,
  `NavigationID` int(11) NOT NULL DEFAULT '0',
  `PageLinkID` int(11) NOT NULL DEFAULT '0',
  `Sort` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `NavigationItem`
--

INSERT INTO `NavigationItem` (`ID`, `ClassName`, `LastEdited`, `Created`, `Title`, `ExternalLink`, `NavigationID`, `PageLinkID`, `Sort`) VALUES
(1, 'NavigationItem', '2018-10-24 10:02:23', '2018-10-24 10:02:23', 'Our Programme', NULL, 1, 71, 0),
(2, 'NavigationItem', '2018-10-24 10:04:15', '2018-10-24 10:04:05', 'News', '#', 1, 0, 0),
(3, 'NavigationItem', '2018-10-24 10:04:26', '2018-10-24 10:04:26', 'Resources', '#', 1, 0, 0),
(4, 'NavigationItem', '2018-10-24 10:04:39', '2018-10-24 10:04:39', 'Events', NULL, 1, 55, 0),
(5, 'NavigationItem', '2018-10-24 10:04:51', '2018-10-24 10:04:51', 'Contact Us', '#', 1, 0, 0),
(6, 'NavigationItem', '2018-10-24 10:08:14', '2018-10-24 10:08:14', 'Our Programme', NULL, 2, 71, 0),
(7, 'NavigationItem', '2018-10-24 10:08:22', '2018-10-24 10:08:22', 'News', NULL, 2, 58, 0),
(8, 'NavigationItem', '2018-11-12 13:12:22', '2018-10-24 10:08:44', 'Resources', NULL, 2, 72, 0),
(9, 'NavigationItem', '2018-11-12 12:56:31', '2018-10-24 10:14:35', 'Events', NULL, 2, 55, 0),
(10, 'NavigationItem', '2018-10-24 10:14:43', '2018-10-24 10:14:43', 'Contact Us', '#', 2, 0, 0),
(11, 'NavigationItem', '2018-10-24 10:15:05', '2018-10-24 10:15:05', 'FAQS', '#', 2, 0, 0),
(12, 'NavigationItem', '2018-10-24 10:15:58', '2018-10-24 10:15:58', 'General Practice', '#', 3, 0, 0),
(13, 'NavigationItem', '2018-10-24 10:16:07', '2018-10-24 10:16:07', 'Pharmacy', '#', 3, 0, 0),
(14, 'NavigationItem', '2018-10-24 10:16:18', '2018-10-24 10:16:18', 'Urgent Care', '#', 3, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `Page`
--

CREATE TABLE `Page` (
  `ID` int(11) NOT NULL,
  `PageBannerID` int(11) NOT NULL DEFAULT '0',
  `PageBackgroundID` int(11) NOT NULL DEFAULT '0',
  `PaddingTop` varchar(255) DEFAULT NULL,
  `PaddingBot` varchar(255) DEFAULT NULL,
  `PaddingLeft` varchar(255) DEFAULT NULL,
  `PaddingRight` varchar(255) DEFAULT NULL,
  `Width` varchar(255) DEFAULT NULL,
  `NoScrollArrow` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `HeaderContent` mediumtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Page`
--

INSERT INTO `Page` (`ID`, `PageBannerID`, `PageBackgroundID`, `PaddingTop`, `PaddingBot`, `PaddingLeft`, `PaddingRight`, `Width`, `NoScrollArrow`, `HeaderContent`) VALUES
(27, 59, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(28, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(29, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(30, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(31, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(32, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(33, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(34, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(35, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(36, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(37, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(38, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(39, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(40, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(41, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(42, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(43, 56, 14, '100', '100', '45', '45', '1400', 0, NULL),
(46, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(52, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(53, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(54, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(55, 304, 0, '70', '70', '70', '70', '1450', 0, '<p><strong>Our Events</strong></p>'),
(56, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(57, 305, 0, NULL, NULL, NULL, NULL, NULL, 0, '<p><strong>Upcoming Event</strong></p>'),
(58, 292, 0, '70', '70', '70', '70', '1450', 0, '<p><strong>Our News</strong></p>'),
(59, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(60, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(61, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(62, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(63, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(64, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(65, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(66, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(67, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(68, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(69, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(70, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(71, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(72, 234, 0, NULL, NULL, NULL, NULL, NULL, 0, '<p><strong>Our Resources</strong></p>'),
(73, 245, 0, NULL, NULL, NULL, NULL, NULL, 1, '<p><span>Safe, reliable systems</span></p>'),
(74, 256, 0, NULL, NULL, NULL, NULL, NULL, 0, '<p>Safer systems</p>'),
(75, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(76, 258, 0, NULL, NULL, NULL, NULL, NULL, 0, '<p>How it all begun</p>'),
(77, 261, 0, NULL, NULL, NULL, NULL, NULL, 0, '<p><strong>Your journey starts here</strong></p>'),
(78, 261, 0, NULL, NULL, NULL, NULL, NULL, 1, '<p>Where will your journey take you?</p>'),
(79, 267, 0, NULL, NULL, NULL, NULL, NULL, 1, '<p><strong>Meet the team</strong></p>'),
(80, 268, 0, NULL, NULL, NULL, NULL, NULL, 0, '<p>Our Partners</p>'),
(81, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(82, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(83, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(84, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(85, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(86, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(87, 297, 0, NULL, NULL, NULL, NULL, NULL, 0, '<p><strong>Our SIP Teams</strong></p>'),
(88, 306, 0, NULL, NULL, NULL, NULL, NULL, 0, '<p><strong>Finding your way</strong></p>');

-- --------------------------------------------------------

--
-- Table structure for table `Page_Live`
--

CREATE TABLE `Page_Live` (
  `ID` int(11) NOT NULL,
  `PageBannerID` int(11) NOT NULL DEFAULT '0',
  `PageBackgroundID` int(11) NOT NULL DEFAULT '0',
  `PaddingTop` varchar(255) DEFAULT NULL,
  `PaddingBot` varchar(255) DEFAULT NULL,
  `PaddingLeft` varchar(255) DEFAULT NULL,
  `PaddingRight` varchar(255) DEFAULT NULL,
  `Width` varchar(255) DEFAULT NULL,
  `NoScrollArrow` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `HeaderContent` mediumtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Page_Live`
--

INSERT INTO `Page_Live` (`ID`, `PageBannerID`, `PageBackgroundID`, `PaddingTop`, `PaddingBot`, `PaddingLeft`, `PaddingRight`, `Width`, `NoScrollArrow`, `HeaderContent`) VALUES
(27, 59, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(28, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(29, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(30, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(31, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(32, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(33, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(34, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(35, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(36, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(37, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(38, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(39, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(40, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(41, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(42, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(43, 56, 14, '100', '100', '45', '45', '1400', 0, NULL),
(46, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(52, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(53, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(54, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(55, 304, 0, '70', '70', '70', '70', '1450', 0, '<p><strong>Our Events</strong></p>'),
(56, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(57, 305, 0, NULL, NULL, NULL, NULL, NULL, 0, '<p><strong>Upcoming Event</strong></p>'),
(58, 292, 0, '70', '70', '70', '70', '1450', 0, '<p><strong>Our News</strong></p>'),
(59, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(60, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(61, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(62, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(63, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(64, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(65, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(66, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(67, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(68, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(69, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(70, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(71, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(72, 234, 0, NULL, NULL, NULL, NULL, NULL, 0, '<p><strong>Our Resources</strong></p>'),
(73, 245, 0, NULL, NULL, NULL, NULL, NULL, 1, '<p><span>Safe, reliable systems</span></p>'),
(74, 256, 0, NULL, NULL, NULL, NULL, NULL, 0, '<p>Safer systems</p>'),
(75, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(76, 258, 0, NULL, NULL, NULL, NULL, NULL, 0, '<p>How it all begun</p>'),
(77, 261, 0, NULL, NULL, NULL, NULL, NULL, 0, '<p><strong>Your journey starts here</strong></p>'),
(78, 261, 0, NULL, NULL, NULL, NULL, NULL, 1, '<p>Where will your journey take you?</p>'),
(79, 267, 0, NULL, NULL, NULL, NULL, NULL, 1, '<p><strong>Meet the team</strong></p>'),
(80, 268, 0, NULL, NULL, NULL, NULL, NULL, 0, '<p>Our Partners</p>'),
(82, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(83, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(84, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(85, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(86, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(87, 297, 0, NULL, NULL, NULL, NULL, NULL, 0, '<p><strong>Our SIP Teams</strong></p>'),
(88, 306, 0, NULL, NULL, NULL, NULL, NULL, 0, '<p><strong>Finding your way</strong></p>');

-- --------------------------------------------------------

--
-- Table structure for table `Page_versions`
--

CREATE TABLE `Page_versions` (
  `ID` int(11) NOT NULL,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `PageBannerID` int(11) NOT NULL DEFAULT '0',
  `PageBackgroundID` int(11) NOT NULL DEFAULT '0',
  `PaddingTop` varchar(255) DEFAULT NULL,
  `PaddingBot` varchar(255) DEFAULT NULL,
  `PaddingLeft` varchar(255) DEFAULT NULL,
  `PaddingRight` varchar(255) DEFAULT NULL,
  `Width` varchar(255) DEFAULT NULL,
  `NoScrollArrow` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `HeaderContent` mediumtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Page_versions`
--

INSERT INTO `Page_versions` (`ID`, `RecordID`, `Version`, `PageBannerID`, `PageBackgroundID`, `PaddingTop`, `PaddingBot`, `PaddingLeft`, `PaddingRight`, `Width`, `NoScrollArrow`, `HeaderContent`) VALUES
(1, 52, 7, 56, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(2, 52, 8, 56, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(3, 52, 9, 56, 14, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(4, 52, 10, 56, 14, '45', '45', '45', '45', NULL, 0, NULL),
(5, 52, 11, 56, 14, '45', '45', '45', '45', '1200', 0, NULL),
(6, 52, 12, 56, 14, '45', '45', '45', '45', '1400', 0, NULL),
(7, 40, 8, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(8, 41, 5, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(9, 46, 4, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(10, 42, 7, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(11, 46, 5, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(12, 43, 9, 56, 14, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(13, 43, 10, 56, 14, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(14, 52, 13, 56, 14, '45', '45', '45', '45', '1400', 0, NULL),
(15, 52, 14, 56, 14, '45', '45', '45', '45', '1400', 0, NULL),
(16, 43, 11, 56, 14, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(17, 43, 12, 56, 14, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(18, 43, 13, 56, 14, '45', '45', '45', '45', '1400', 0, NULL),
(19, 43, 14, 56, 14, '100', '100', '45', '45', '1400', 0, NULL),
(20, 27, 6, 58, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(21, 27, 7, 59, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(22, 27, 8, 59, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(23, 27, 9, 59, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(24, 27, 10, 59, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(25, 27, 11, 59, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(26, 28, 5, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(27, 29, 4, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(28, 28, 6, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(29, 30, 4, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(30, 31, 3, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(31, 28, 7, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(32, 29, 5, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(33, 30, 5, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(34, 30, 6, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(35, 30, 7, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(36, 29, 6, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(37, 28, 8, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(38, 31, 4, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(39, 38, 3, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(40, 32, 3, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(41, 32, 4, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(42, 33, 3, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(43, 34, 3, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(44, 35, 3, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(45, 30, 8, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(46, 36, 3, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(47, 36, 4, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(48, 37, 3, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(49, 37, 4, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(50, 37, 5, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(51, 37, 6, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(52, 39, 3, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(53, 39, 4, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(54, 38, 4, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(55, 28, 9, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(56, 30, 9, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(57, 34, 4, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(58, 34, 5, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(59, 30, 10, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(60, 29, 7, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(61, 32, 5, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(62, 31, 5, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(63, 33, 4, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(64, 35, 4, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(65, 36, 5, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(66, 37, 7, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(67, 39, 5, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(68, 52, 15, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(69, 52, 16, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(70, 52, 17, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(71, 33, 5, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(72, 53, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(73, 53, 2, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(74, 53, 3, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(75, 54, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(76, 54, 2, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(77, 55, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(78, 56, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(79, 56, 2, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(80, 56, 3, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(81, 55, 2, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(82, 57, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(83, 56, 4, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(84, 56, 5, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(85, 56, 6, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(86, 57, 2, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(87, 57, 3, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(88, 55, 3, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(89, 57, 4, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(90, 57, 5, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(91, 56, 7, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(92, 57, 6, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(93, 56, 8, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(94, 56, 9, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(95, 57, 7, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(96, 57, 8, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(97, 56, 10, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(98, 56, 11, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(99, 57, 9, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(100, 58, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(101, 58, 2, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(102, 59, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(103, 59, 2, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(104, 59, 3, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(105, 59, 4, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(106, 60, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(107, 60, 2, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(108, 60, 3, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(109, 59, 5, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(110, 61, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(111, 61, 2, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(112, 61, 3, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(113, 60, 4, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(114, 60, 5, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(115, 59, 6, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(116, 59, 7, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(117, 60, 6, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(118, 61, 4, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(119, 61, 5, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(120, 57, 10, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(121, 56, 12, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(122, 61, 6, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(123, 60, 7, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(124, 59, 8, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(125, 62, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(126, 62, 2, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(127, 62, 3, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(128, 62, 4, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(129, 63, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(130, 63, 2, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(131, 64, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(132, 64, 2, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(133, 65, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(134, 65, 2, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(135, 66, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(136, 66, 2, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(137, 67, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(138, 67, 2, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(139, 68, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(140, 68, 2, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(141, 69, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(142, 69, 2, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(143, 70, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(144, 70, 2, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(145, 63, 3, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(146, 63, 4, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(147, 64, 3, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(148, 65, 3, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(149, 67, 3, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(150, 66, 3, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(151, 68, 3, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(152, 69, 3, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(153, 70, 3, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(154, 71, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(155, 71, 2, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(156, 71, 3, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(157, 72, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(158, 72, 2, 234, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(159, 72, 3, 234, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(160, 72, 4, 234, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(161, 73, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(162, 73, 2, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(163, 74, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(164, 74, 2, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(165, 73, 3, 0, 0, NULL, NULL, NULL, NULL, NULL, 1, NULL),
(166, 73, 4, 0, 0, NULL, NULL, NULL, NULL, NULL, 1, '<p><span>Safe, reliable systems</span></p>'),
(167, 73, 5, 245, 0, NULL, NULL, NULL, NULL, NULL, 1, '<p><span>Safe, reliable systems</span></p>'),
(168, 73, 6, 245, 0, NULL, NULL, NULL, NULL, NULL, 1, '<p><span>Safe, reliable systems</span></p>'),
(169, 73, 7, 245, 0, NULL, NULL, NULL, NULL, NULL, 1, '<p><span>Safe, reliable systems</span></p>'),
(170, 72, 5, 234, 0, NULL, NULL, NULL, NULL, NULL, 0, '<p>Our Resources</p>'),
(171, 54, 3, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(172, 54, 4, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(173, 75, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(174, 75, 2, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(175, 74, 3, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(176, 74, 4, 256, 0, NULL, NULL, NULL, NULL, NULL, 0, '<p>Safer systems</p>'),
(177, 76, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(178, 76, 2, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(179, 76, 3, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(180, 76, 4, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(181, 76, 5, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(182, 76, 6, 258, 0, NULL, NULL, NULL, NULL, NULL, 0, '<p>How it all begun</p>'),
(183, 76, 7, 258, 0, NULL, NULL, NULL, NULL, NULL, 0, '<p><strong>How it all begun</strong></p>'),
(184, 76, 8, 258, 0, NULL, NULL, NULL, NULL, NULL, 0, '<p>How it all begun</p>'),
(185, 76, 9, 258, 0, NULL, NULL, NULL, NULL, NULL, 0, '<p>How it all begun</p>'),
(186, 72, 6, 234, 0, NULL, NULL, NULL, NULL, NULL, 0, '<p>Our Resources</p>'),
(187, 77, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(188, 77, 2, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(189, 77, 3, 261, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(190, 77, 4, 261, 0, NULL, NULL, NULL, NULL, NULL, 0, '<p>Your journey starts here</p>'),
(191, 77, 5, 261, 0, NULL, NULL, NULL, NULL, NULL, 0, '<p>Your journey starts here</p>'),
(192, 78, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(193, 78, 2, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(194, 78, 3, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(195, 78, 4, 261, 0, NULL, NULL, NULL, NULL, NULL, 0, '<p>Where will your journey take you?</p>'),
(196, 78, 5, 261, 0, NULL, NULL, NULL, NULL, NULL, 1, '<p>Where will your journey take you?</p>'),
(197, 79, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(198, 79, 2, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(199, 79, 3, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(200, 79, 4, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(201, 79, 5, 267, 0, NULL, NULL, NULL, NULL, NULL, 0, '<p><strong>Our people</strong></p>'),
(202, 79, 6, 267, 0, NULL, NULL, NULL, NULL, NULL, 1, '<p><strong>Our people</strong></p>'),
(203, 79, 7, 267, 0, NULL, NULL, NULL, NULL, NULL, 1, '<p><strong>Meet the team</strong></p>'),
(204, 80, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(205, 80, 2, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(206, 79, 8, 267, 0, NULL, NULL, NULL, NULL, NULL, 1, '<p><strong>Meet the team</strong></p>'),
(207, 77, 6, 261, 0, NULL, NULL, NULL, NULL, NULL, 0, '<p>Your journey starts here</p>'),
(208, 78, 6, 261, 0, NULL, NULL, NULL, NULL, NULL, 1, '<p>Where will your journey take you?</p>'),
(209, 71, 4, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(210, 77, 7, 261, 0, NULL, NULL, NULL, NULL, NULL, 0, '<p>Your journey starts here</p>'),
(211, 77, 8, 261, 0, NULL, NULL, NULL, NULL, NULL, 0, '<p>Your journey starts here</p>'),
(212, 78, 7, 261, 0, NULL, NULL, NULL, NULL, NULL, 1, '<p>Where will your journey take you?</p>'),
(213, 78, 8, 261, 0, NULL, NULL, NULL, NULL, NULL, 1, '<p>Where will your journey take you?</p>'),
(214, 80, 3, 268, 0, NULL, NULL, NULL, NULL, NULL, 0, '<h1>Our work is made possible by the hard work and support of our partners</h1>'),
(215, 80, 4, 268, 0, NULL, NULL, NULL, NULL, NULL, 0, '<h1>Our work is made possible by the hard work and support of our partners</h1>'),
(216, 80, 5, 268, 0, NULL, NULL, NULL, NULL, NULL, 0, '<p>Our work is made possible by the hard work and support of our partners</p>'),
(217, 80, 6, 268, 0, NULL, NULL, NULL, NULL, NULL, 0, '<p>Our work is made possible by the <br>hard work and support of our partners</p>'),
(218, 80, 7, 268, 0, NULL, NULL, NULL, NULL, NULL, 0, '<p class=\"intro\">Our work is made possible by the hard work and support of our partners</p>'),
(219, 80, 8, 268, 0, NULL, NULL, NULL, NULL, NULL, 0, '<h3>Our work is made possible <br>by the hard work and <br>support of our partners</h3>'),
(220, 80, 9, 268, 0, NULL, NULL, NULL, NULL, NULL, 0, '<p>Our work is made possible <br>by the hard work and <br>support of our partners</p>'),
(221, 80, 10, 268, 0, NULL, NULL, NULL, NULL, NULL, 0, '<p>Our work is made possible <br>by the hard work and <br>support of our partners</p>'),
(222, 80, 11, 268, 0, NULL, NULL, NULL, NULL, NULL, 0, '<p>Our Partners</p>'),
(223, 81, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(224, 82, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(225, 82, 2, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(226, 82, 3, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(227, 82, 4, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(228, 82, 5, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(229, 58, 3, 291, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(230, 58, 4, 291, 0, NULL, NULL, NULL, NULL, NULL, 0, '<p>News</p>'),
(231, 58, 5, 291, 0, NULL, NULL, NULL, NULL, NULL, 0, '<p><strong>News</strong></p>'),
(232, 58, 6, 292, 0, NULL, NULL, NULL, NULL, NULL, 0, '<p><strong>News</strong></p>'),
(233, 58, 7, 292, 0, '70', '70', '70', '70', '1450', 0, '<p><strong>News</strong></p>'),
(234, 72, 7, 234, 0, NULL, NULL, NULL, NULL, NULL, 0, '<p><strong>Our Resources</strong></p>'),
(235, 58, 8, 292, 0, '70', '70', '70', '70', '1450', 0, '<p><strong>Our News</strong></p>'),
(236, 83, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(237, 83, 2, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(238, 83, 3, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(239, 83, 4, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(240, 82, 6, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(241, 82, 7, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(242, 59, 9, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(243, 60, 8, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(244, 61, 7, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(245, 83, 5, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(246, 84, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(247, 84, 2, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(248, 85, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(249, 85, 2, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(250, 86, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(251, 86, 2, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(252, 86, 3, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(253, 80, 12, 268, 0, NULL, NULL, NULL, NULL, NULL, 0, '<p>Our Partners</p>'),
(254, 80, 13, 268, 0, NULL, NULL, NULL, NULL, NULL, 0, '<p>Our Partners</p>'),
(255, 79, 9, 267, 0, NULL, NULL, NULL, NULL, NULL, 1, '<p><strong>Meet the team</strong></p>'),
(256, 79, 10, 267, 0, NULL, NULL, NULL, NULL, NULL, 1, '<p><strong>Meet the team</strong></p>'),
(257, 79, 11, 267, 0, NULL, NULL, NULL, NULL, NULL, 1, '<p><strong>Meet the team</strong></p>'),
(258, 76, 10, 258, 0, NULL, NULL, NULL, NULL, NULL, 0, '<p>How it all begun</p>'),
(259, 87, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(260, 87, 2, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(261, 87, 3, 297, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(262, 87, 4, 297, 0, NULL, NULL, NULL, NULL, NULL, 0, '<p><strong>Our SIP Teams</strong></p>'),
(263, 87, 5, 297, 0, NULL, NULL, NULL, NULL, NULL, 0, '<p><strong>Our SIP Teams</strong></p>'),
(264, 87, 6, 297, 0, NULL, NULL, NULL, NULL, NULL, 0, '<p><strong>Our SIP Teams</strong></p>'),
(265, 77, 9, 261, 0, NULL, NULL, NULL, NULL, NULL, 0, '<p><strong>Your journey starts here</strong></p>'),
(266, 55, 4, 0, 0, '70', '70', '70', '70', '1450', 0, NULL),
(267, 55, 5, 304, 0, '70', '70', '70', '70', '1450', 0, NULL),
(268, 55, 6, 304, 0, '70', '70', '70', '70', '1450', 0, '<p><strong>Our Events</strong></p>'),
(269, 57, 11, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(270, 57, 12, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(271, 57, 13, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(272, 57, 14, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(273, 57, 15, 305, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(274, 57, 16, 305, 0, NULL, NULL, NULL, NULL, NULL, 0, '<p>Upcoming Event</p>'),
(275, 57, 17, 305, 0, NULL, NULL, NULL, NULL, NULL, 0, '<p><strong>Upcoming Event</strong></p>'),
(276, 88, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(277, 88, 2, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(278, 88, 3, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(279, 88, 4, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(280, 88, 5, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL),
(281, 88, 6, 306, 0, NULL, NULL, NULL, NULL, NULL, 0, '<h2>Finding your way</h2>'),
(282, 88, 7, 306, 0, NULL, NULL, NULL, NULL, NULL, 0, '<p><strong>Finding your way</strong></p>');

-- --------------------------------------------------------

--
-- Table structure for table `Permission`
--

CREATE TABLE `Permission` (
  `ID` int(11) NOT NULL,
  `ClassName` enum('Permission') DEFAULT 'Permission',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Code` varchar(255) DEFAULT NULL,
  `Arg` int(11) NOT NULL DEFAULT '0',
  `Type` int(11) NOT NULL DEFAULT '1',
  `GroupID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Permission`
--

INSERT INTO `Permission` (`ID`, `ClassName`, `LastEdited`, `Created`, `Code`, `Arg`, `Type`, `GroupID`) VALUES
(1, 'Permission', '2018-09-18 00:05:09', '2018-09-18 00:05:09', 'CMS_ACCESS_CMSMain', 0, 1, 1),
(2, 'Permission', '2018-09-18 00:05:09', '2018-09-18 00:05:09', 'CMS_ACCESS_AssetAdmin', 0, 1, 1),
(3, 'Permission', '2018-09-18 00:05:09', '2018-09-18 00:05:09', 'CMS_ACCESS_ReportAdmin', 0, 1, 1),
(4, 'Permission', '2018-09-18 00:05:09', '2018-09-18 00:05:09', 'SITETREE_REORGANISE', 0, 1, 1),
(5, 'Permission', '2018-09-18 00:05:09', '2018-09-18 00:05:09', 'ADMIN', 0, 1, 2),
(6, 'Permission', '2018-09-24 17:00:46', '2018-09-24 17:00:46', 'CMS_ACCESS_CMSMain', 0, 1, 3);

-- --------------------------------------------------------

--
-- Table structure for table `PermissionRole`
--

CREATE TABLE `PermissionRole` (
  `ID` int(11) NOT NULL,
  `ClassName` enum('PermissionRole') DEFAULT 'PermissionRole',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Title` varchar(50) DEFAULT NULL,
  `OnlyAdminCanApply` tinyint(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `PermissionRoleCode`
--

CREATE TABLE `PermissionRoleCode` (
  `ID` int(11) NOT NULL,
  `ClassName` enum('PermissionRoleCode') DEFAULT 'PermissionRoleCode',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Code` varchar(50) DEFAULT NULL,
  `RoleID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ProfilePage`
--

CREATE TABLE `ProfilePage` (
  `ID` int(11) NOT NULL,
  `ProfileImageID` int(11) NOT NULL DEFAULT '0',
  `Position` varchar(255) DEFAULT NULL,
  `Department` enum('i3','eCALD','SIP') DEFAULT 'i3',
  `ProfileImage2ID` int(11) NOT NULL DEFAULT '0',
  `ProfileImage3ID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ProfilePage`
--

INSERT INTO `ProfilePage` (`ID`, `ProfileImageID`, `Position`, `Department`, `ProfileImage2ID`, `ProfileImage3ID`) VALUES
(28, 100, 'Manager of I3', 'i3', 101, 0),
(29, 109, 'Head of Digital Transformation', 'i3', 110, 0),
(30, 102, 'Leapfrog Programme Manager', 'i3', 107, 108),
(31, 112, 'Head of Analytics', 'i3', 0, 0),
(32, 111, 'Innovation + Improvement Project Manager', 'i3', 0, 0),
(33, 131, 'Health Leadership Programme Manager', 'i3', 132, 133),
(34, 104, 'Paediatrician', 'i3', 105, 0),
(35, 115, 'Leapfrog Programme Contractor', 'i3', 0, 0),
(36, 116, 'Lead Advisor Improvement Research + Informatics', 'i3', 117, 118),
(37, 119, 'Information Analyst', 'i3', 120, 121),
(38, 97, 'Innovation + Improvement Project Manager', 'i3', 98, 99),
(39, 122, 'Innovation + Improvement Project Manager', 'i3', 123, 124),
(52, 126, 'Lorem Ipsum', 'i3', 127, 128),
(53, 134, 'Assoc Director of i3 + Head of Person-Centred Design', 'i3', 135, 136),
(63, 219, 'General Practice Clinical Lead', 'SIP', 0, 0),
(64, 220, 'Pharmacy Clinical Lead', 'SIP', 0, 0),
(65, 221, 'Strategic Clinical Lead', 'SIP', 0, 0),
(66, 223, 'Improvement Specialist', 'SIP', 0, 0),
(67, 222, 'Advisor', 'SIP', 0, 0),
(68, 224, 'Project Sponsor', 'SIP', 0, 0),
(69, 225, 'Project Manager', 'SIP', 0, 0),
(70, 226, 'Data Manager', 'SIP', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `ProfilePage_Live`
--

CREATE TABLE `ProfilePage_Live` (
  `ID` int(11) NOT NULL,
  `ProfileImageID` int(11) NOT NULL DEFAULT '0',
  `Position` varchar(255) DEFAULT NULL,
  `Department` enum('i3','eCALD','SIP') DEFAULT 'i3',
  `ProfileImage2ID` int(11) NOT NULL DEFAULT '0',
  `ProfileImage3ID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ProfilePage_Live`
--

INSERT INTO `ProfilePage_Live` (`ID`, `ProfileImageID`, `Position`, `Department`, `ProfileImage2ID`, `ProfileImage3ID`) VALUES
(28, 100, 'Manager of I3', 'i3', 101, 0),
(29, 109, 'Head of Digital Transformation', 'i3', 110, 0),
(30, 102, 'Leapfrog Programme Manager', 'i3', 107, 108),
(31, 112, 'Head of Analytics', 'i3', 0, 0),
(32, 111, 'Innovation + Improvement Project Manager', 'i3', 0, 0),
(33, 131, 'Health Leadership Programme Manager', 'i3', 132, 133),
(34, 104, 'Paediatrician', 'i3', 105, 0),
(35, 115, 'Leapfrog Programme Contractor', 'i3', 0, 0),
(36, 116, 'Lead Advisor Improvement Research + Informatics', 'i3', 117, 118),
(37, 119, 'Information Analyst', 'i3', 120, 121),
(38, 97, 'Innovation + Improvement Project Manager', 'i3', 98, 99),
(39, 122, 'Innovation + Improvement Project Manager', 'i3', 123, 124),
(52, 126, 'Lorem Ipsum', 'i3', 127, 128),
(53, 134, 'Assoc Director of i3 + Head of Person-Centred Design', 'i3', 135, 136),
(63, 219, 'General Practice Clinical Lead', 'SIP', 0, 0),
(64, 220, 'Pharmacy Clinical Lead', 'SIP', 0, 0),
(65, 221, 'Strategic Clinical Lead', 'SIP', 0, 0),
(66, 223, 'Improvement Specialist', 'SIP', 0, 0),
(67, 222, 'Advisor', 'SIP', 0, 0),
(68, 224, 'Project Sponsor', 'SIP', 0, 0),
(69, 225, 'Project Manager', 'SIP', 0, 0),
(70, 226, 'Data Manager', 'SIP', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `ProfilePage_versions`
--

CREATE TABLE `ProfilePage_versions` (
  `ID` int(11) NOT NULL,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `ProfileImageID` int(11) NOT NULL DEFAULT '0',
  `Position` varchar(255) DEFAULT NULL,
  `Department` enum('i3','eCALD','SIP') DEFAULT 'i3',
  `ProfileImage2ID` int(11) NOT NULL DEFAULT '0',
  `ProfileImage3ID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ProfilePage_versions`
--

INSERT INTO `ProfilePage_versions` (`ID`, `RecordID`, `Version`, `ProfileImageID`, `Position`, `Department`, `ProfileImage2ID`, `ProfileImage3ID`) VALUES
(1, 28, 5, 60, 'Lorem Ipsum', 'i3', 0, 0),
(2, 29, 4, 61, 'Head of Digital Transformation', 'i3', 0, 0),
(3, 28, 6, 60, 'Manager of I3', 'i3', 0, 0),
(4, 30, 4, 62, 'Leapfrog Programme Manager', 'i3', 0, 0),
(5, 31, 3, 63, 'Head of Analytics', 'i3', 0, 0),
(6, 28, 7, 60, 'Manager of I3', 'i3', 64, 0),
(7, 29, 5, 61, 'Head of Digital Transformation', 'i3', 65, 0),
(8, 30, 5, 62, 'Leapfrog Programme Manager', 'i3', 66, 0),
(9, 30, 6, 67, 'Leapfrog Programme Manager', 'i3', 68, 0),
(10, 30, 7, 69, 'Leapfrog Programme Manager', 'i3', 70, 0),
(11, 29, 6, 71, 'Head of Digital Transformation', 'i3', 72, 0),
(12, 28, 8, 73, 'Manager of I3', 'i3', 74, 0),
(13, 31, 4, 75, 'Head of Analytics', 'i3', 0, 0),
(14, 38, 3, 77, 'Innovation + Improvement Project Manager', 'i3', 78, 79),
(15, 32, 3, 80, 'Innovation + Improvement Project Manager', 'i3', 0, 0),
(16, 32, 4, 80, 'Innovation + Improvement Project Manager', 'i3', 0, 0),
(17, 33, 3, 81, 'Health Leadership Programme Manager', 'i3', 82, 0),
(18, 34, 3, 83, 'Head of Digital Transformation', 'i3', 84, 0),
(19, 35, 3, 85, 'Leapfrog Programme Contractor', 'i3', 0, 0),
(20, 30, 8, 69, 'Leapfrog Programme Manager', 'i3', 70, 86),
(21, 36, 3, 87, 'Systems Engineer', 'i3', 88, 89),
(22, 36, 4, 87, 'Lead Advisor Improvement Research + Informatics', 'i3', 88, 89),
(23, 37, 3, 43, 'Information Analyst', 'i3', 0, 0),
(24, 37, 4, 90, 'Information Analyst', 'i3', 0, 0),
(25, 37, 5, 91, 'Information Analyst', 'i3', 92, 0),
(26, 37, 6, 91, 'Information Analyst', 'i3', 92, 93),
(27, 39, 3, 94, 'Innovation + Improvement Project Manager', 'i3', 0, 0),
(28, 39, 4, 94, 'Innovation + Improvement Project Manager', 'i3', 95, 96),
(29, 38, 4, 97, 'Innovation + Improvement Project Manager', 'i3', 98, 99),
(30, 28, 9, 100, 'Manager of I3', 'i3', 101, 0),
(31, 30, 9, 102, 'Leapfrog Programme Manager', 'i3', 103, 0),
(32, 34, 4, 104, 'Head of Digital Transformation', 'i3', 105, 0),
(33, 34, 5, 104, 'Paediatrician', 'i3', 105, 0),
(34, 30, 10, 102, 'Leapfrog Programme Manager', 'i3', 107, 108),
(35, 29, 7, 109, 'Head of Digital Transformation', 'i3', 110, 0),
(36, 32, 5, 111, 'Innovation + Improvement Project Manager', 'i3', 0, 0),
(37, 31, 5, 112, 'Head of Analytics', 'i3', 0, 0),
(38, 33, 4, 113, 'Health Leadership Programme Manager', 'i3', 114, 0),
(39, 35, 4, 115, 'Leapfrog Programme Contractor', 'i3', 0, 0),
(40, 36, 5, 116, 'Lead Advisor Improvement Research + Informatics', 'i3', 117, 118),
(41, 37, 7, 119, 'Information Analyst', 'i3', 120, 121),
(42, 39, 5, 122, 'Innovation + Improvement Project Manager', 'i3', 123, 124),
(43, 52, 15, 0, NULL, 'i3', 0, 0),
(44, 52, 16, 126, NULL, 'i3', 127, 128),
(45, 52, 17, 126, 'Lorem Ipsum', 'i3', 127, 128),
(46, 33, 5, 131, 'Health Leadership Programme Manager', 'i3', 132, 133),
(47, 53, 1, 0, NULL, 'i3', 0, 0),
(48, 53, 2, 134, NULL, 'i3', 135, 136),
(49, 53, 3, 134, 'Assoc Director of i3 + Head of Person-Centred Design', 'i3', 135, 136),
(50, 63, 1, 0, NULL, 'i3', 0, 0),
(51, 63, 2, 0, 'General Practice Clinical Lead', 'SIP', 0, 0),
(52, 64, 1, 0, NULL, 'i3', 0, 0),
(53, 64, 2, 0, 'Pharmacy Clinical Lead', 'SIP', 0, 0),
(54, 65, 1, 0, NULL, 'i3', 0, 0),
(55, 65, 2, 0, 'Strategic Clinical Lead', 'SIP', 0, 0),
(56, 66, 1, 0, NULL, 'i3', 0, 0),
(57, 66, 2, 0, 'Improvement Specialist', 'SIP', 0, 0),
(58, 67, 1, 0, NULL, 'i3', 0, 0),
(59, 67, 2, 0, 'Advisor', 'SIP', 0, 0),
(60, 68, 1, 0, NULL, 'i3', 0, 0),
(61, 68, 2, 0, 'Project Sponsor', 'SIP', 0, 0),
(62, 69, 1, 0, NULL, 'i3', 0, 0),
(63, 69, 2, 0, 'Project Manager', 'SIP', 0, 0),
(64, 70, 1, 0, NULL, 'i3', 0, 0),
(65, 70, 2, 0, 'Data Manager', 'SIP', 0, 0),
(66, 63, 3, 218, 'General Practice Clinical Lead', 'SIP', 0, 0),
(67, 63, 4, 219, 'General Practice Clinical Lead', 'SIP', 0, 0),
(68, 64, 3, 220, 'Pharmacy Clinical Lead', 'SIP', 0, 0),
(69, 65, 3, 221, 'Strategic Clinical Lead', 'SIP', 0, 0),
(70, 67, 3, 222, 'Advisor', 'SIP', 0, 0),
(71, 66, 3, 223, 'Improvement Specialist', 'SIP', 0, 0),
(72, 68, 3, 224, 'Project Sponsor', 'SIP', 0, 0),
(73, 69, 3, 225, 'Project Manager', 'SIP', 0, 0),
(74, 70, 3, 226, 'Data Manager', 'SIP', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `ProjectHolderPage`
--

CREATE TABLE `ProjectHolderPage` (
  `ID` int(11) NOT NULL,
  `PostsPerPage` int(11) NOT NULL DEFAULT '0',
  `i3Header` mediumtext,
  `ecaldHeader` mediumtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ProjectHolderPage`
--

INSERT INTO `ProjectHolderPage` (`ID`, `PostsPerPage`, `i3Header`, `ecaldHeader`) VALUES
(10, 0, NULL, NULL),
(11, 10, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ProjectHolderPage_Live`
--

CREATE TABLE `ProjectHolderPage_Live` (
  `ID` int(11) NOT NULL,
  `PostsPerPage` int(11) NOT NULL DEFAULT '0',
  `i3Header` mediumtext,
  `ecaldHeader` mediumtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ProjectHolderPage_Live`
--

INSERT INTO `ProjectHolderPage_Live` (`ID`, `PostsPerPage`, `i3Header`, `ecaldHeader`) VALUES
(10, 0, NULL, NULL),
(11, 10, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ProjectHolderPage_versions`
--

CREATE TABLE `ProjectHolderPage_versions` (
  `ID` int(11) NOT NULL,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `PostsPerPage` int(11) NOT NULL DEFAULT '0',
  `i3Header` mediumtext,
  `ecaldHeader` mediumtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ProjectPage`
--

CREATE TABLE `ProjectPage` (
  `ID` int(11) NOT NULL,
  `ProjectImgID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ProjectPage`
--

INSERT INTO `ProjectPage` (`ID`, `ProjectImgID`) VALUES
(14, 0),
(12, 22);

-- --------------------------------------------------------

--
-- Table structure for table `ProjectPage_Live`
--

CREATE TABLE `ProjectPage_Live` (
  `ID` int(11) NOT NULL,
  `ProjectImgID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ProjectPage_Live`
--

INSERT INTO `ProjectPage_Live` (`ID`, `ProjectImgID`) VALUES
(14, 0),
(12, 22);

-- --------------------------------------------------------

--
-- Table structure for table `ProjectPage_versions`
--

CREATE TABLE `ProjectPage_versions` (
  `ID` int(11) NOT NULL,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `ProjectImgID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `RedirectorPage`
--

CREATE TABLE `RedirectorPage` (
  `ID` int(11) NOT NULL,
  `RedirectionType` enum('Internal','External') DEFAULT 'Internal',
  `ExternalURL` varchar(2083) DEFAULT NULL,
  `LinkToID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `RedirectorPage_Live`
--

CREATE TABLE `RedirectorPage_Live` (
  `ID` int(11) NOT NULL,
  `RedirectionType` enum('Internal','External') DEFAULT 'Internal',
  `ExternalURL` varchar(2083) DEFAULT NULL,
  `LinkToID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `RedirectorPage_versions`
--

CREATE TABLE `RedirectorPage_versions` (
  `ID` int(11) NOT NULL,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `RedirectionType` enum('Internal','External') DEFAULT 'Internal',
  `ExternalURL` varchar(2083) DEFAULT NULL,
  `LinkToID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `Resources`
--

CREATE TABLE `Resources` (
  `ID` int(11) NOT NULL,
  `ClassName` enum('Resources') DEFAULT 'Resources',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Title` varchar(255) DEFAULT NULL,
  `FilterTagID` int(11) NOT NULL DEFAULT '0',
  `FilterLabel` varchar(255) DEFAULT NULL,
  `Sort` int(11) NOT NULL DEFAULT '0',
  `ResourcesPageID` int(11) NOT NULL DEFAULT '0',
  `PageLinkID` int(11) NOT NULL DEFAULT '0',
  `Icon` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Resources`
--

INSERT INTO `Resources` (`ID`, `ClassName`, `LastEdited`, `Created`, `Title`, `FilterTagID`, `FilterLabel`, `Sort`, `ResourcesPageID`, `PageLinkID`, `Icon`) VALUES
(1, 'Resources', '2018-10-25 14:22:32', '2018-10-25 13:55:41', 'General Practice', 0, 'Filter by', 0, 72, 0, 'fal fa-user-md'),
(2, 'Resources', '2018-10-25 14:07:19', '2018-10-25 13:56:31', 'Pharmarcy', 0, 'Module type', 0, 72, 0, NULL),
(3, 'Resources', '2018-10-25 14:07:28', '2018-10-25 14:07:28', 'Urgent Care', 0, NULL, 0, 72, 0, NULL),
(4, 'Resources', '2018-10-25 14:07:36', '2018-10-25 14:07:36', 'Additional Resources', 0, NULL, 0, 72, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ResourcesModulePage`
--

CREATE TABLE `ResourcesModulePage` (
  `ID` int(11) NOT NULL,
  `FeaturedImageID` int(11) NOT NULL DEFAULT '0',
  `ExperienceLevel` enum('Year 1','Year 2+','Year 3+') DEFAULT 'Year 1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ResourcesModulePage`
--

INSERT INTO `ResourcesModulePage` (`ID`, `FeaturedImageID`, `ExperienceLevel`) VALUES
(73, 246, ''),
(74, 255, 'Year 1'),
(75, 252, 'Year 1'),
(81, 0, 'Year 1');

-- --------------------------------------------------------

--
-- Table structure for table `ResourcesModulePage_ExperienceLevel`
--

CREATE TABLE `ResourcesModulePage_ExperienceLevel` (
  `ID` int(11) NOT NULL,
  `ResourcesModulePageID` int(11) NOT NULL DEFAULT '0',
  `ExperienceLevelID` int(11) NOT NULL DEFAULT '0',
  `ExperienceLevelsID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ResourcesModulePage_ExperienceLevel`
--

INSERT INTO `ResourcesModulePage_ExperienceLevel` (`ID`, `ResourcesModulePageID`, `ExperienceLevelID`, `ExperienceLevelsID`) VALUES
(1, 73, 1, 0),
(2, 73, 2, 0),
(3, 73, 3, 0),
(4, 75, 1, 0),
(5, 75, 2, 0),
(6, 75, 3, 0),
(7, 74, 1, 0),
(8, 74, 2, 0),
(9, 74, 3, 0);

-- --------------------------------------------------------

--
-- Table structure for table `ResourcesModulePage_Live`
--

CREATE TABLE `ResourcesModulePage_Live` (
  `ID` int(11) NOT NULL,
  `FeaturedImageID` int(11) NOT NULL DEFAULT '0',
  `ExperienceLevel` enum('Year 1','Year 2+','Year 3+') DEFAULT 'Year 1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ResourcesModulePage_Live`
--

INSERT INTO `ResourcesModulePage_Live` (`ID`, `FeaturedImageID`, `ExperienceLevel`) VALUES
(73, 246, NULL),
(74, 255, 'Year 1'),
(75, 252, 'Year 1');

-- --------------------------------------------------------

--
-- Table structure for table `ResourcesModulePage_ModuleType`
--

CREATE TABLE `ResourcesModulePage_ModuleType` (
  `ID` int(11) NOT NULL,
  `ResourcesModulePageID` int(11) NOT NULL DEFAULT '0',
  `ResourcesTypeID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ResourcesModulePage_ModuleType`
--

INSERT INTO `ResourcesModulePage_ModuleType` (`ID`, `ResourcesModulePageID`, `ResourcesTypeID`) VALUES
(1, 73, 1),
(2, 73, 2),
(4, 75, 1),
(5, 75, 2),
(6, 75, 4),
(7, 74, 1);

-- --------------------------------------------------------

--
-- Table structure for table `ResourcesModulePage_versions`
--

CREATE TABLE `ResourcesModulePage_versions` (
  `ID` int(11) NOT NULL,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `FeaturedImageID` int(11) NOT NULL DEFAULT '0',
  `ExperienceLevel` enum('Year 1','Year 2+','Year 3+') DEFAULT 'Year 1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ResourcesModulePage_versions`
--

INSERT INTO `ResourcesModulePage_versions` (`ID`, `RecordID`, `Version`, `FeaturedImageID`, `ExperienceLevel`) VALUES
(1, 73, 6, 246, 'Year 1'),
(2, 73, 7, 246, ''),
(3, 75, 1, 0, 'Year 1'),
(4, 75, 2, 252, 'Year 1'),
(5, 74, 3, 255, 'Year 1'),
(6, 74, 4, 255, 'Year 1'),
(7, 81, 1, 0, 'Year 1');

-- --------------------------------------------------------

--
-- Table structure for table `ResourcesType`
--

CREATE TABLE `ResourcesType` (
  `ID` int(11) NOT NULL,
  `ClassName` enum('ResourcesType') DEFAULT 'ResourcesType',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Title` varchar(255) DEFAULT NULL,
  `Icon` varchar(255) DEFAULT NULL,
  `Sort` int(11) NOT NULL DEFAULT '0',
  `ResourcesPageID` int(11) NOT NULL DEFAULT '0',
  `PageLinkID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ResourcesType`
--

INSERT INTO `ResourcesType` (`ID`, `ClassName`, `LastEdited`, `Created`, `Title`, `Icon`, `Sort`, `ResourcesPageID`, `PageLinkID`) VALUES
(1, 'ResourcesType', '2018-10-25 14:32:33', '2018-10-25 14:32:33', 'General Practice', 'fal fa-user-md', 0, 72, 0),
(2, 'ResourcesType', '2018-10-25 14:33:34', '2018-10-25 14:33:34', 'Pharmacy Resources', 'fal fa-pills', 0, 72, 0),
(3, 'ResourcesType', '2018-10-25 14:34:54', '2018-10-25 14:34:54', 'Additional Resources', 'fal fa-layer-plus', 0, 72, 0),
(4, 'ResourcesType', '2018-10-25 14:36:30', '2018-10-25 14:36:30', 'Urgent Care', 'fal fa-heartbeat', 0, 72, 0);

-- --------------------------------------------------------

--
-- Table structure for table `ResourcesType_ModuleType`
--

CREATE TABLE `ResourcesType_ModuleType` (
  `ID` int(11) NOT NULL,
  `ResourcesTypeID` int(11) NOT NULL DEFAULT '0',
  `ModuleTypeID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ResourcesType_ModuleType`
--

INSERT INTO `ResourcesType_ModuleType` (`ID`, `ResourcesTypeID`, `ModuleTypeID`) VALUES
(1, 1, 4);

-- --------------------------------------------------------

--
-- Table structure for table `Resources_ModuleType`
--

CREATE TABLE `Resources_ModuleType` (
  `ID` int(11) NOT NULL,
  `ResourcesID` int(11) NOT NULL DEFAULT '0',
  `ModuleTypeID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Resources_ModuleType`
--

INSERT INTO `Resources_ModuleType` (`ID`, `ResourcesID`, `ModuleTypeID`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 3);

-- --------------------------------------------------------

--
-- Table structure for table `SiteConfig`
--

CREATE TABLE `SiteConfig` (
  `ID` int(11) NOT NULL,
  `ClassName` enum('SiteConfig') DEFAULT 'SiteConfig',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Title` varchar(255) DEFAULT NULL,
  `Tagline` varchar(255) DEFAULT NULL,
  `Theme` varchar(255) DEFAULT NULL,
  `CanViewType` enum('Anyone','LoggedInUsers','OnlyTheseUsers') DEFAULT 'Anyone',
  `CanEditType` enum('LoggedInUsers','OnlyTheseUsers') DEFAULT 'LoggedInUsers',
  `CanCreateTopLevelType` enum('LoggedInUsers','OnlyTheseUsers') DEFAULT 'LoggedInUsers',
  `SubsiteID` int(11) NOT NULL DEFAULT '0',
  `SiteDescription` mediumtext,
  `GoogleAnalytics` varchar(255) DEFAULT NULL,
  `LogoWidth` int(11) NOT NULL DEFAULT '0',
  `HeaderPosition` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `HeaderBgColor` varchar(6) DEFAULT NULL,
  `LogoID` int(11) NOT NULL DEFAULT '0',
  `ContactDetails` mediumtext,
  `i3LogoFooterID` int(11) NOT NULL DEFAULT '0',
  `DHBLogoID` int(11) NOT NULL DEFAULT '0',
  `MobileLogoID` int(11) NOT NULL DEFAULT '0',
  `CustomScript` mediumtext,
  `AssetsFolder` mediumtext,
  `HeaderStyles` mediumtext,
  `PreheaderText` mediumtext,
  `OrgLogoID` int(11) NOT NULL DEFAULT '0',
  `FooterStyles` mediumtext,
  `FooterBgColor` varchar(6) DEFAULT NULL,
  `FooterWidth` mediumtext,
  `PaddingLeft` mediumtext,
  `PaddingRight` mediumtext,
  `PaddingTop` mediumtext,
  `PaddingBottom` mediumtext,
  `FooterBorder` mediumtext,
  `FooterBorderBgc` varchar(6) DEFAULT NULL,
  `FooterBgColor2` varchar(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `SiteConfig`
--

INSERT INTO `SiteConfig` (`ID`, `ClassName`, `LastEdited`, `Created`, `Title`, `Tagline`, `Theme`, `CanViewType`, `CanEditType`, `CanCreateTopLevelType`, `SubsiteID`, `SiteDescription`, `GoogleAnalytics`, `LogoWidth`, `HeaderPosition`, `HeaderBgColor`, `LogoID`, `ContactDetails`, `i3LogoFooterID`, `DHBLogoID`, `MobileLogoID`, `CustomScript`, `AssetsFolder`, `HeaderStyles`, `PreheaderText`, `OrgLogoID`, `FooterStyles`, `FooterBgColor`, `FooterWidth`, `PaddingLeft`, `PaddingRight`, `PaddingTop`, `PaddingBottom`, `FooterBorder`, `FooterBorderBgc`, `FooterBgColor2`) VALUES
(1, 'SiteConfig', '2018-10-23 15:57:43', '2018-09-18 00:05:09', 'i3 | institute for innovation + improvement', 'making ideas happen', NULL, 'Anyone', 'LoggedInUsers', 'LoggedInUsers', 0, 'i3', 'UA-109137815-1', 200, 1, '000000', 13, '<p><strong>Institute for Innovation <br>+ Improvement </strong></p><p>West Wing, Building 1 <br>North Shore Hospital <br>Takapuna, Auckland</p><p><a href=\"mailto:i3@waitematadhb.govt.nz\">i3@waitematadhb.govt.nz</a></p>', 54, 55, 57, NULL, 'i3-Assets', 'i3', NULL, 0, 'i3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 'SiteConfig', '2018-11-08 12:13:31', '2018-10-15 15:26:21', 'Safety In Practice', NULL, 'simple', 'Anyone', 'LoggedInUsers', 'LoggedInUsers', 1, NULL, NULL, 179, 0, NULL, 145, NULL, 0, 228, 0, NULL, 'SafetyInPractice', 'SIP', 'Announcement Here', 227, 'SIP', '006db7', '1450', '70', '70', '70', '70', '5', '4da1d8', '004386');

-- --------------------------------------------------------

--
-- Table structure for table `SiteConfig_CreateTopLevelGroups`
--

CREATE TABLE `SiteConfig_CreateTopLevelGroups` (
  `ID` int(11) NOT NULL,
  `SiteConfigID` int(11) NOT NULL DEFAULT '0',
  `GroupID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `SiteConfig_CSSAssets`
--

CREATE TABLE `SiteConfig_CSSAssets` (
  `ID` int(11) NOT NULL,
  `SiteConfigID` int(11) NOT NULL DEFAULT '0',
  `ImageID` int(11) NOT NULL DEFAULT '0',
  `FileID` int(11) NOT NULL DEFAULT '0',
  `SortOrder` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `SiteConfig_CSSAssets`
--

INSERT INTO `SiteConfig_CSSAssets` (`ID`, `SiteConfigID`, `ImageID`, `FileID`, `SortOrder`) VALUES
(1, 2, 146, 0, 0),
(2, 2, 147, 0, 0),
(3, 2, 148, 0, 0),
(4, 2, 149, 0, 0),
(5, 2, 150, 0, 0),
(6, 2, 151, 0, 0),
(7, 2, 152, 0, 0),
(8, 2, 153, 0, 0),
(9, 2, 154, 0, 0),
(10, 2, 155, 0, 0),
(11, 2, 156, 0, 0),
(12, 2, 157, 0, 0),
(13, 2, 158, 0, 0),
(14, 2, 159, 0, 0),
(15, 2, 160, 0, 0),
(16, 2, 161, 0, 0),
(17, 2, 162, 0, 0),
(18, 2, 163, 0, 0),
(19, 2, 164, 0, 0),
(20, 2, 165, 0, 0),
(21, 2, 166, 0, 0),
(22, 2, 167, 0, 0),
(23, 2, 168, 0, 0),
(24, 2, 169, 0, 0),
(81, 2, 0, 172, 1),
(82, 2, 0, 174, 2),
(83, 2, 0, 170, 3),
(84, 2, 0, 175, 4),
(85, 2, 0, 177, 5),
(86, 2, 0, 171, 7),
(87, 2, 0, 173, 6),
(88, 2, 0, 176, 8),
(121, 1, 0, 181, 1),
(122, 1, 0, 182, 2),
(123, 1, 0, 178, 3),
(124, 1, 0, 183, 4),
(125, 1, 0, 179, 6),
(126, 1, 0, 180, 7),
(127, 1, 0, 184, 8),
(128, 1, 0, 185, 5),
(201, 1, 0, 195, 2),
(202, 1, 0, 198, 1),
(203, 1, 0, 196, 3),
(204, 1, 0, 199, 4),
(205, 1, 0, 201, 5),
(206, 1, 0, 194, 6),
(207, 1, 0, 197, 7),
(208, 1, 0, 200, 8);

-- --------------------------------------------------------

--
-- Table structure for table `SiteConfig_EditorGroups`
--

CREATE TABLE `SiteConfig_EditorGroups` (
  `ID` int(11) NOT NULL,
  `SiteConfigID` int(11) NOT NULL DEFAULT '0',
  `GroupID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `SiteConfig_Fonts`
--

CREATE TABLE `SiteConfig_Fonts` (
  `ID` int(11) NOT NULL,
  `SiteConfigID` int(11) NOT NULL DEFAULT '0',
  `FileID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `SiteConfig_JSAssets`
--

CREATE TABLE `SiteConfig_JSAssets` (
  `ID` int(11) NOT NULL,
  `SiteConfigID` int(11) NOT NULL DEFAULT '0',
  `FileID` int(11) NOT NULL DEFAULT '0',
  `SortOrder` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `SiteConfig_JSAssets`
--

INSERT INTO `SiteConfig_JSAssets` (`ID`, `SiteConfigID`, `FileID`, `SortOrder`) VALUES
(1, 1, 186, 1),
(2, 1, 187, 2),
(3, 1, 188, 3),
(4, 1, 189, 4),
(5, 1, 190, 5),
(6, 1, 191, 6),
(7, 1, 203, 1),
(8, 1, 204, 2),
(9, 1, 205, 3),
(10, 1, 206, 4),
(11, 1, 207, 5),
(12, 1, 208, 6);

-- --------------------------------------------------------

--
-- Table structure for table `SiteConfig_ViewerGroups`
--

CREATE TABLE `SiteConfig_ViewerGroups` (
  `ID` int(11) NOT NULL,
  `SiteConfigID` int(11) NOT NULL DEFAULT '0',
  `GroupID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `SiteTree`
--

CREATE TABLE `SiteTree` (
  `ID` int(11) NOT NULL,
  `ClassName` enum('SiteTree','Page','Blog','BlogPost','BlogEntry','ErrorPage','RedirectorPage','VirtualPage','SubsitesVirtualPage','HomePage','MultiContentPage','ProjectPage','ProfilePage','ProjectHolderPage','ResourcesModulePage','ResourcesPage','TeamHolderPage','BlogTree','BlogHolder') DEFAULT 'SiteTree',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `URLSegment` varchar(255) DEFAULT NULL,
  `Title` varchar(255) DEFAULT NULL,
  `MenuTitle` varchar(100) DEFAULT NULL,
  `Content` mediumtext,
  `MetaDescription` mediumtext,
  `ExtraMeta` mediumtext,
  `ShowInMenus` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `ShowInSearch` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `Sort` int(11) NOT NULL DEFAULT '0',
  `HasBrokenFile` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `HasBrokenLink` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `ReportClass` varchar(50) DEFAULT NULL,
  `CanViewType` enum('Anyone','LoggedInUsers','OnlyTheseUsers','Inherit') DEFAULT 'Inherit',
  `CanEditType` enum('LoggedInUsers','OnlyTheseUsers','Inherit') DEFAULT 'Inherit',
  `Version` int(11) NOT NULL DEFAULT '0',
  `ParentID` int(11) NOT NULL DEFAULT '0',
  `SubsiteID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `SiteTree`
--

INSERT INTO `SiteTree` (`ID`, `ClassName`, `LastEdited`, `Created`, `URLSegment`, `Title`, `MenuTitle`, `Content`, `MetaDescription`, `ExtraMeta`, `ShowInMenus`, `ShowInSearch`, `Sort`, `HasBrokenFile`, `HasBrokenLink`, `ReportClass`, `CanViewType`, `CanEditType`, `Version`, `ParentID`, `SubsiteID`) VALUES
(2, 'Page', '2018-09-18 11:02:50', '2018-09-18 00:05:09', 'about-us', 'About Us', NULL, '<p>You can fill this page out with your own content, or delete it and create your own pages.<br></p>', NULL, NULL, 1, 1, 4, 0, 0, NULL, 'Inherit', 'Inherit', 2, 0, 0),
(3, 'Page', '2018-09-18 11:02:50', '2018-09-18 00:05:09', 'contact-us', 'Contact Us', NULL, '<p>You can fill this page out with your own content, or delete it and create your own pages.<br></p>', NULL, NULL, 1, 1, 9, 0, 0, NULL, 'Inherit', 'Inherit', 2, 0, 0),
(4, 'ErrorPage', '2018-09-18 11:02:51', '2018-09-18 00:05:09', 'page-not-found', 'Page not found', NULL, '<p>Sorry, it seems you were trying to access a page that doesn\'t exist.</p><p>Please check the spelling of the URL you were trying to access and try again.</p>', NULL, NULL, 0, 0, 10, 0, 0, NULL, 'Inherit', 'Inherit', 2, 0, 0),
(5, 'ErrorPage', '2018-09-18 11:02:51', '2018-09-18 00:05:10', 'server-error', 'Server error', NULL, '<p>Sorry, there was a problem with handling your request.</p>', NULL, NULL, 0, 0, 11, 0, 0, NULL, 'Inherit', 'Inherit', 2, 0, 0),
(10, 'MultiContentPage', '2018-09-21 08:54:15', '2018-09-18 15:37:46', 'home', 'Home', NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 7, 0, 0),
(11, 'ProjectHolderPage', '2018-09-21 08:54:55', '2018-09-21 08:34:11', 'our-projects', 'Our Projects', NULL, NULL, NULL, NULL, 0, 0, 2, 0, 0, NULL, 'Inherit', 'Inherit', 3, 0, 0),
(12, 'ProjectPage', '2018-09-21 11:17:04', '2018-09-21 08:50:41', 'patient-deterioration-programme', 'Patient Deterioration Programme', NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 3, 11, 0),
(13, 'ProjectPage', '2018-09-21 08:51:35', '2018-09-21 08:51:20', 'data-discovery-using-qlik-sense-for-care-redesign', 'Data Discovery: Using Qlik Sense for Care Redesign', NULL, NULL, NULL, NULL, 1, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 2, 11, 0),
(14, 'ProjectPage', '2018-09-21 11:26:12', '2018-09-21 11:25:49', 'electronic-vitals-system-evitals', 'Electronic Vitals System (eVitals)', NULL, NULL, NULL, NULL, 1, 1, 3, 0, 0, NULL, 'Inherit', 'Inherit', 2, 11, 0),
(20, 'Blog', '2018-10-01 17:23:28', '2018-09-24 17:00:46', 'news', 'Awards', NULL, NULL, NULL, NULL, 0, 0, 5, 0, 0, NULL, 'Inherit', 'Inherit', 10, 0, 0),
(21, 'BlogPost', '2018-09-28 11:02:55', '2018-09-24 17:01:29', 'waitemata-dhb-celebrates-2018-diversity-awards-win', 'Waitemata DHB Celebrates 2018 Diversity Awards Win', NULL, '<p>An innovative Waitemata District Health Board education programme to overcome cultural barriers in communication with patients has been recognised at the 2018 Diversity Awards NZ.</p><p>The eCALD programme was announced as joint winner of the Cultural Celebration Award at the ceremony last night. eCALD was developed at Waitemata DHB’s Institute for Innovation and Improvement (i3) to meet the needs<br>of health professionals working within an increasingly diverse community.</p><p>It delivers online and face-to-face training across a range of areas including refugees, migrants, mental health and<br>religion to improve understanding – and ultimately – communication with patients.<br>Initially launched in 2006, it has since been rolled out nationally by the Ministry of Health and engaged more than 27,000 learners.</p><p>National Programme Director Sue Lim says eCALD has had an overwhelmingly positive impact on health practitioners’ cultural awareness and the application of learning into practice.</p><p>“We all live and work in culturally diverse communities and cultural competence is becoming an essential part of our professional and personal lives. eCALD courses provide learners with insight into how different cultures respond to health-related situations, diverse health beliefs, faith-based practices, different health seeking behaviours and expectations from health systems”.</p><p>Waitemata DHB CEO Dr Dale Bramley says a workforce that is culturally aware and as diverse as the community it serves is an essential part of providing the best care to every patient</p><p>“Empowering our staff and further reducing barriers to healthcare provision, particularly within vulnerable groups, is vital as our communities continue to diversify. The Institute for Innovation and Improvement plays an important role in helping us achieve that through the development of programme like eCALD, and we have seen the programme go from strength to strength as it rolled out across the country,” says Dr Bramley.</p><p>Waitemata DHB continues to champion diversity through its recruitment efforts as well and has nearly doubled its Maori workforce in the last three years. To continue boosting numbers, it recently announced the creation of an additional 50 positions for Maori nurses at all levels.</p>', NULL, NULL, 0, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 7, 20, 0),
(22, 'BlogPost', '2018-09-24 17:50:01', '2018-09-24 17:15:33', 'dr-eleri-clissold-ipanz-young-professional-of-the-year-2018', 'Dr Eleri Clissold - IPANZ Young Professional of the Year 2018', NULL, '<p><span>Ground-breaking work within the Institute for Innovation and Improvement (i3), a core part of Waitemata District Health Board’s (WDHB) commitment to building and enhancing the next generation of health care professionals, has been recognised with a national award.</span></p><p><span>Dr Eleri Clissold was named Young Professional of the Year at the Institute of Public Administration New Zealand (IPANZ) Awards in Wellington. The award recognises young health professionals – those under 30 years of age – who have achieved excellence through their work within the public sector.</span></p><p><span>Dr Clissold, who joined WDHB as a Quality Assurance Fellow in 2015, has designed and implemented an innovative medical education programme for junior doctors using virtual reality that continues to enhance the training experience and deliver better outcomes for patients. <br>She is also leading the Safety in Practice Programme to support primary health care workers.</span></p><p><span>Prior to joining the DHB, Dr Clissold volunteered on a Mercy Ship delivering care to some of the poorest people in Africa before immigrating to New Zealand from her native Wales.</span></p><p><span>This is not the firs<span>t national award for Dr Clissold; she received an Open for Leadership Award from the Health Quality and Safety Commission in 2017. <br>“I\'m delighted that the award has highlighted some of the great work going on at Waitemata WDHB to a wider audience. I\'m privileged to work with fantastic teams across the organisation who have taught me so much in the last two years. I am truly grateful for the support I have received and honoured to receive the award,” says Dr Eleri Clissold.</span></span></p><p><span>Waitemata DHB Chief Executive Dr Dale Bramley says the award is an acknowledgment of the excellent work of i3 and the Fellows Programme, which has produced a number of very promising young clinicians. <br></span></p><p><span>“This is a significant achievement for Dr Clissold who has quickly established herself as an emerging talent,” says Dr Bramley. “It is also a great example of the importance we place on training and development for our workforce in order to fulfil our promise to patients and their families by delivering the very best standards of care.”  <br></span></p><p><span>Dr Clissold has won a scholarship valued at $10,000 to attend a leadership course run by the prestigious Mt Eliza Business School in Melbourne</span></p>', NULL, NULL, 0, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 7, 20, 0),
(23, 'BlogPost', '2018-09-24 17:24:09', '2018-09-24 17:17:34', 'data-tool-used-to-redesign-clinical-care-at-waitemata-dhb', 'Data tool used to redesign clinical care at Waitemata DHB', NULL, NULL, NULL, NULL, 0, 1, 3, 0, 0, NULL, 'Inherit', 'Inherit', 5, 20, 0),
(24, 'BlogPost', '2018-09-24 17:23:36', '2018-09-24 17:22:35', 'clinical-engagement-vital-to-waitemata-dhbs-innovation-success', 'Clinical engagement vital to Waitemata DHB\'s innovation success', NULL, NULL, NULL, NULL, 0, 1, 4, 0, 0, NULL, 'Inherit', 'Inherit', 2, 20, 0),
(25, 'BlogPost', '2018-09-27 14:49:42', '2018-09-24 17:24:29', 'jerome-ng-pharmacist-of-the-year-2017-psnz', 'Jerome Ng - Pharmacist of the Year 2017 (PSNZ)', NULL, '<p>Congratulations to Jerome Ng who has been awarded as the Pharmaceutical Society\'s Pharmacist of the Year for 2017. <br>The Pharmaceutical Society\'s awards were announced at their regional symposium held on Sunday 10 June 2018 at the Waipuna Hotel and Conference Centre. </p><p>The award recognised his overall work in quality and patient safety improvement, research, leadership and teaching, and the desire to advance the pharmacy profession in the interests of better patient outcomes.</p><p>\"It\'s incredibly humbling to receive this award because I\'m just building on all the good work done by the pioneers before me,\" he says.</p><p>\"I would like to thank Penny Andrew, Marilyn Crawley, and Keith Crump, among others, at Waitemata DHB who have provided mentorship over the years.\"</p>', NULL, NULL, 0, 1, 5, 0, 0, NULL, 'Inherit', 'Inherit', 4, 20, 0),
(26, 'BlogPost', '2018-09-24 17:51:14', '2018-09-24 17:27:12', 'kelly-bohot-best-presentation-at-hqsc-scientific-symposium', 'Kelly Bohot - Best Presentation at HQSC Scientific Symposium', NULL, '<p>Congratulations to Kelly Bohot and all the team involved in the Survive Sepsis Improvement Collaborative for winning best presentation at the Health Quality &amp; Safety Commission’s national scientific symposium held yesterday in Auckland.</p><p>Kelly, an Innovation + Improvement Project Manager for i3, presented “An improvement collaborative approach to timely identification and treatment of sepsis at Waitemata DHB” to the symposium.</p><p>\"The real achievement for us was to have the opportunity to present our work at this symposium which sees many of our DHBs and healthcare leaders attend,\" says Kelly.</p><div class=\"text_exposed_show\">\n<p>\"To win the award for best presentation is really the icing on the cake for all the nurses, doctors, educators, and project team who have taken their time to work on this important collaboration.\"</p>\n<p>It’s the third annual scientific symposium to be held and is the only New Zealand scientific symposium focused specifically on the science of health and disability care improvement by highlighting research and methods.</p>\n</div>', NULL, NULL, 0, 1, 6, 0, 0, NULL, 'Inherit', 'Inherit', 3, 20, 0),
(27, 'TeamHolderPage', '2018-10-04 17:22:49', '2018-09-27 10:17:44', 'our-team', 'Our Team', NULL, '<h1 class=\"section-header\" style=\"text-align: center;\"><strong>OUR <span class=\"color-orange\"><span style=\"text-decoration: underline;\">TEAM</span></span><span style=\"text-decoration: underline;\"><span class=\"color-orange\"><br></span></span></strong></h1>', NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 11, 51, 0),
(28, 'ProfilePage', '2018-10-10 14:31:32', '2018-09-27 10:17:56', 'elna-meller-2', 'Elna Meller', NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 9, 27, 0),
(29, 'ProfilePage', '2018-10-10 15:04:13', '2018-09-27 14:35:22', 'sharon-puddle-2', 'Sharon Puddle', NULL, NULL, NULL, NULL, 1, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 7, 27, 0),
(30, 'ProfilePage', '2018-10-10 14:58:47', '2018-09-27 16:11:48', 'michael-sheehan', 'Michael Sheehan', NULL, NULL, NULL, NULL, 1, 1, 3, 0, 0, NULL, 'Inherit', 'Inherit', 10, 27, 0),
(31, 'ProfilePage', '2018-10-10 15:04:37', '2018-09-27 16:40:14', 'delwyn-armstrong', 'Delwyn Armstrong', NULL, NULL, NULL, NULL, 1, 1, 4, 0, 0, NULL, 'Inherit', 'Inherit', 5, 27, 0),
(32, 'ProfilePage', '2018-10-10 15:04:28', '2018-09-27 16:46:52', 'sue-french', 'Sue French', NULL, NULL, NULL, NULL, 1, 1, 5, 0, 0, NULL, 'Inherit', 'Inherit', 5, 27, 0),
(33, 'ProfilePage', '2018-10-11 14:58:37', '2018-09-27 16:49:10', 'renee-kong', 'Renee Kong', NULL, NULL, NULL, NULL, 1, 1, 6, 0, 0, NULL, 'Inherit', 'Inherit', 5, 27, 0),
(34, 'ProfilePage', '2018-10-10 14:36:57', '2018-09-27 16:49:33', 'dr-maneesh-deva', 'Dr Maneesh Deva', NULL, NULL, NULL, NULL, 1, 1, 7, 0, 0, NULL, 'Inherit', 'Inherit', 5, 27, 0),
(35, 'ProfilePage', '2018-10-10 15:05:09', '2018-09-27 16:50:09', 'sangeeta-gupta', 'Sangeeta Gupta', NULL, NULL, NULL, NULL, 1, 1, 8, 0, 0, NULL, 'Inherit', 'Inherit', 4, 27, 0),
(36, 'ProfilePage', '2018-10-10 15:08:19', '2018-09-27 16:57:59', 'dr-jerome-ng', 'Dr Jerome Ng', NULL, NULL, NULL, NULL, 1, 1, 9, 0, 0, NULL, 'Inherit', 'Inherit', 5, 27, 0),
(37, 'ProfilePage', '2018-10-10 15:13:46', '2018-09-27 16:58:32', 'jane-yang', 'Jane Yang', NULL, NULL, NULL, NULL, 1, 1, 10, 0, 0, NULL, 'Inherit', 'Inherit', 7, 27, 0),
(38, 'ProfilePage', '2018-10-10 14:28:39', '2018-09-27 16:59:21', 'dina-emmanuel', 'Dina Emmanuel', NULL, NULL, NULL, NULL, 1, 1, 11, 0, 0, NULL, 'Inherit', 'Inherit', 4, 27, 0),
(39, 'ProfilePage', '2018-10-10 15:16:57', '2018-09-27 16:59:46', 'lisa-sue', 'Lisa Sue', NULL, NULL, NULL, NULL, 1, 1, 12, 0, 0, NULL, 'Inherit', 'Inherit', 5, 27, 0),
(40, 'BlogPost', '2018-10-04 14:40:32', '2018-09-28 09:29:01', 'quality-improvement-workshops', 'Quality Improvement Workshops', NULL, NULL, NULL, NULL, 0, 1, 7, 0, 0, NULL, 'Inherit', 'Inherit', 8, 43, 0),
(41, 'BlogPost', '2018-10-04 14:40:43', '2018-09-28 10:53:48', 'pharmac-hospital-medicines-into-combined-pharmaceutical-budget', 'PHARMAC: Hospital  Medicines into Combined  Pharmaceutical Budget', NULL, NULL, NULL, NULL, 0, 1, 8, 0, 0, NULL, 'Inherit', 'Inherit', 5, 43, 0),
(42, 'BlogPost', '2018-10-04 14:41:20', '2018-09-28 10:58:05', 'artificial-intelligence-technologies-in-healthcare', 'Artificial Intelligence Technologies in Healthcare', NULL, NULL, NULL, NULL, 0, 1, 9, 0, 0, NULL, 'Inherit', 'Inherit', 7, 43, 0),
(43, 'Blog', '2018-10-04 15:43:03', '2018-09-28 10:59:49', 'events', 'Events', NULL, '<h1 class=\"section-header\" style=\"text-align: center;\"><strong>OUR <span><span><span class=\"color-orange\"><span style=\"text-decoration: underline;\">EVENTS</span></span></span></span></strong> </h1>', NULL, NULL, 0, 0, 2, 0, 0, NULL, 'Inherit', 'Inherit', 14, 51, 0),
(46, 'BlogPost', '2018-10-04 14:41:33', '2018-09-28 11:17:16', 'o-and-g-conference-across-the-spectrum-and-beyond', 'O&G Conference: Across  the Spectrum & Beyond', NULL, NULL, NULL, NULL, 0, 1, 10, 0, 0, NULL, 'Inherit', 'Inherit', 5, 43, 0),
(47, 'Blog', '2018-10-01 17:23:43', '2018-09-28 11:19:03', 'blogs', 'Blogs', NULL, NULL, NULL, NULL, 0, 0, 8, 0, 0, NULL, 'Inherit', 'Inherit', 8, 0, 0),
(48, 'BlogPost', '2018-10-01 14:42:11', '2018-09-28 16:01:17', 'harkness-reunion-20-22-july-2018', 'Harkness Reunion 20-22 July 2018', NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 6, 47, 0),
(49, 'BlogPost', '2018-10-01 14:42:31', '2018-09-28 16:09:21', 'pharmac-hospital-medicines-into-combined-pharmaceutical-budget', 'eCALD improving cross-cultural practice', NULL, NULL, NULL, NULL, 0, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 5, 47, 0),
(50, 'BlogPost', '2018-10-01 14:34:48', '2018-09-28 16:44:15', 'the-potential-of-mobile-health-reaching-those-in-need', 'The potential of mobile health - reaching those in need', NULL, NULL, NULL, NULL, 0, 1, 3, 0, 0, NULL, 'Inherit', 'Inherit', 8, 47, 0),
(51, 'Page', '2018-10-01 12:25:04', '2018-10-01 12:24:25', 'connect', 'Connect', NULL, NULL, NULL, NULL, 1, 1, 3, 0, 0, NULL, 'Inherit', 'Inherit', 3, 0, 0),
(52, 'ProfilePage', '2018-10-10 17:11:50', '2018-10-10 16:53:23', 'kevin', 'Kevin', NULL, NULL, NULL, NULL, 1, 1, 13, 0, 0, NULL, 'Inherit', 'Inherit', 17, 27, 0),
(53, 'ProfilePage', '2018-10-12 10:07:28', '2018-10-11 16:27:36', 'jay-obrien', 'Jay O\'Brien', NULL, NULL, NULL, NULL, 1, 1, 14, 0, 0, NULL, 'Inherit', 'Inherit', 3, 27, 0),
(54, 'MultiContentPage', '2018-11-13 15:52:40', '2018-10-15 15:25:46', 'home', 'Home', NULL, '<p>Welcome to SilverStripe! This is the default home page. You can edit this page by opening <a href=\"admin/\">the CMS</a>. You can now access the <a href=\"http://doc.silverstripe.org\">developer documentation</a>, or begin <a href=\"http://doc.silverstripe.org/doku.php?id=tutorials\">the tutorials.</a></p>', NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 4, 0, 1),
(55, 'Blog', '2018-11-12 13:52:05', '2018-10-17 16:38:51', 'events', 'Events', NULL, '<h1><strong>EVENTS</strong></h1>', NULL, NULL, 1, 1, 7, 0, 0, NULL, 'Inherit', 'Inherit', 6, 0, 1),
(56, 'BlogPost', '2018-11-09 10:27:42', '2018-10-17 16:38:57', 'learning-session-2-city', 'Learning Session 2', NULL, '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>', NULL, NULL, 0, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 12, 55, 1),
(57, 'BlogPost', '2018-11-12 16:21:28', '2018-10-17 16:56:56', 'learning-session-2', 'Learning Session 2', NULL, '<p>CLICK HERE: <a class=\"external\" title=\"Open external link\" rel=\"external\" href=\"https://bit.ly/2PCibKD\">https://bit.ly/2PCibKD </a>to RSVP now. <br>Please ensure you use one name and one email address per participant.<br>Don\'t forget to add your MCNZ number if you need GP CME.<br>Session 6-9pm, a light dinner will be served from 5.30pm.</p>', NULL, NULL, 0, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 17, 55, 1),
(58, 'Blog', '2018-11-09 11:27:42', '2018-10-18 12:28:11', 'latest-news', 'Latest News', NULL, NULL, NULL, NULL, 1, 1, 8, 0, 0, NULL, 'Inherit', 'Inherit', 8, 0, 1),
(59, 'BlogPost', '2018-11-09 11:42:48', '2018-10-18 12:28:27', 'learning', 'Learning set 1 - resources now available', NULL, '<p>A huge thank you to all who attended learning set 1 of 2018-19!</p>', NULL, NULL, 0, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 9, 58, 1),
(60, 'BlogPost', '2018-11-09 11:42:58', '2018-10-18 12:34:33', 'prescribing-indicators-update', 'Prescribing Indicators Update', NULL, '<p>When the queries went live with the roll-over of the month, they found that there were some kinks that needed reviewing and so they have withdrawn them to be corrected.  I understand that they will be updated hopefully by next Monday.  The queries that are currently under the Safety tab in Dr Info are INCORRECT for this year, and they will be getting a note put on them to this effect from tonight.  Please don’t try to use these ones as they will obviously not match with your spreadsheet!</p><p>Some of the hiccups that need to be ironed out with any new work!  Our apologies.  As soon as they are correct and updated I will let you know.</p><p>We understand that this is likely to result in a delay for many practices in sending the Prescribing Indicators spreadsheets by Sept 10<span>th</span> so just send them through as soon as you are able. </p><p>Remember to enter ‘0’ in areas where you don’t have any patients showing, including if you don’t have any in any of the categories. </p>', NULL, NULL, 0, 1, 3, 0, 0, NULL, 'Inherit', 'Inherit', 8, 58, 1),
(61, 'BlogPost', '2018-11-09 11:43:24', '2018-10-18 12:42:56', 'introducing-michael', 'Introducing Michael Hammond', NULL, '<p>Please join us in welcoming our new project manager Michael Hammond.</p><p>Michael is no stranger to patient safety, having worked as a clinical pharmacist at both Rotorua primary care services and Waitemata District Health Board. Michael is looking forward to starting a new challenge with the Safety in Practice team and we are very much looking forward to working with him!</p>', NULL, NULL, 0, 1, 4, 0, 0, NULL, 'Inherit', 'Inherit', 7, 58, 1),
(62, 'TeamHolderPage', '2018-11-13 15:53:22', '2018-10-18 16:10:45', 'meet-the-team', 'Meet the team', NULL, NULL, NULL, NULL, 1, 1, 6, 0, 0, NULL, 'Inherit', 'Inherit', 4, 0, 1),
(63, 'ProfilePage', '2018-10-18 16:47:22', '2018-10-18 16:11:34', 'dr-lisa-eskildsen', 'Dr Lisa Eskildsen', NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 4, 62, 1),
(64, 'ProfilePage', '2018-10-18 16:49:06', '2018-10-18 16:14:37', 'diana-phone', 'Diana Phone', NULL, NULL, NULL, NULL, 1, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 3, 62, 1),
(65, 'ProfilePage', '2018-10-18 16:50:10', '2018-10-18 16:15:03', 'dr-eleri-clissold', 'Dr Eleri Clissold', NULL, NULL, NULL, NULL, 1, 1, 3, 0, 0, NULL, 'Inherit', 'Inherit', 3, 62, 1),
(66, 'ProfilePage', '2018-10-18 16:57:49', '2018-10-18 16:15:29', 'sue-french', 'Sue French', NULL, NULL, NULL, NULL, 1, 1, 4, 0, 0, NULL, 'Inherit', 'Inherit', 3, 62, 1),
(67, 'ProfilePage', '2018-10-18 16:57:41', '2018-10-18 16:15:59', 'dr-neil-houston', 'Dr Neil Houston', NULL, NULL, NULL, NULL, 1, 1, 5, 0, 0, NULL, 'Inherit', 'Inherit', 3, 62, 1),
(68, 'ProfilePage', '2018-10-18 17:01:30', '2018-10-18 16:16:31', 'tim-wood', 'Tim Wood', NULL, NULL, NULL, NULL, 1, 1, 6, 0, 0, NULL, 'Inherit', 'Inherit', 3, 62, 1),
(69, 'ProfilePage', '2018-10-18 17:01:39', '2018-10-18 16:16:50', 'michael-hammond', 'Michael Hammond', NULL, NULL, NULL, NULL, 1, 1, 7, 0, 0, NULL, 'Inherit', 'Inherit', 3, 62, 1),
(70, 'ProfilePage', '2018-10-18 17:01:49', '2018-10-18 16:17:08', 'sreeja-nair', 'Sreeja Nair', NULL, NULL, NULL, NULL, 1, 1, 8, 0, 0, NULL, 'Inherit', 'Inherit', 3, 62, 1),
(71, 'MultiContentPage', '2018-11-13 15:52:47', '2018-10-24 09:17:54', 'our-programme', 'Our Programme', NULL, NULL, NULL, NULL, 1, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 4, 0, 1),
(72, 'ResourcesPage', '2018-11-09 11:26:50', '2018-10-25 12:00:54', 'resources', 'Resources', NULL, NULL, NULL, NULL, 1, 1, 9, 0, 0, NULL, 'Inherit', 'Inherit', 7, 0, 1),
(73, 'ResourcesModulePage', '2018-10-30 13:24:19', '2018-10-30 10:13:02', 'medical-reconciliation', 'Medical Reconciliation', NULL, '<p>Adverse Drug Events (ADEs) are the most common post discharge complication, with 20% of patients experiencing an ADE within three weeks of discharge. Many practices report that reliable medication reconciliation when a patient is discharged is difficult to achieve.</p><p>This module helps you measure how reliable your medication reconciliation system is and provides insights into how you might improve.</p>', NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 7, 72, 1),
(74, 'ResourcesModulePage', '2018-10-31 11:32:59', '2018-10-30 10:38:48', 'results-handling', 'Results Handling', NULL, '<p><span>Workload from managing test results is increasing rapidly year on year. The Medical Protection Society identified that 85% of practices have significant risks associated with results handling systems. Recent cases involving the Health and Disability Commissioner have involved failure to follow up on test results. This module helps you measure how reliable your results handling system is and gives you insights into how you might improve. </span></p><p><span>This process opens up lots of discussion about how your current systems work and generates ideas for change. One change which has been widely adopted to develop an agreed set of comments that clinical staff use on reviewing test results and use quick keys to apply to record these comments in the clinical system.</span></p>', NULL, NULL, 1, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 4, 72, 1),
(75, 'ResourcesModulePage', '2018-10-31 09:44:50', '2018-10-31 09:43:57', 'safety-climate-survey', 'Safety Climate Survey', NULL, '<p><span>The Safety Climate Survey comprises five subject areas (Communication, Workload, Leadership, Teamwork and Safety Systems &amp; Learning) with between four to eight questions for each area. </span></p><p><span>The survey will take a person approximately 10-15 minutes to complete, and ideally all staff should complete the survey within a two week timeframe. </span></p>', NULL, NULL, 1, 1, 3, 0, 0, NULL, 'Inherit', 'Inherit', 2, 72, 1),
(76, 'MultiContentPage', '2018-11-13 15:53:19', '2018-11-01 13:10:01', 'history', 'History', NULL, NULL, NULL, NULL, 1, 1, 6, 0, 0, NULL, 'Inherit', 'Inherit', 10, 71, 1),
(77, 'MultiContentPage', '2018-11-13 15:52:53', '2018-11-07 13:48:13', 'sip-for-general-practice', 'SIP for General Practice', NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 9, 71, 1),
(78, 'MultiContentPage', '2018-11-13 15:52:56', '2018-11-08 15:18:05', 'sip-for-pharmacy', 'SIP for Pharmacy', NULL, NULL, NULL, NULL, 1, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 8, 71, 1),
(79, 'MultiContentPage', '2018-11-13 15:52:59', '2018-11-08 16:00:43', 'meet-our-team', 'Our Team', NULL, NULL, NULL, NULL, 1, 1, 3, 0, 0, NULL, 'Inherit', 'Inherit', 11, 71, 1),
(80, 'MultiContentPage', '2018-11-13 15:53:03', '2018-11-08 16:15:07', 'our-partners', 'Our Partners', NULL, NULL, NULL, NULL, 1, 1, 4, 0, 0, NULL, 'Inherit', 'Inherit', 13, 71, 1),
(81, 'ResourcesModulePage', '2018-11-09 10:16:48', '2018-11-09 10:16:48', 'new-resources-module-page', 'New Resources Module Page', NULL, NULL, NULL, NULL, 1, 1, 4, 0, 0, NULL, 'Inherit', 'Inherit', 1, 72, 1),
(82, 'BlogPost', '2018-11-09 11:42:39', '2018-11-09 10:16:55', 'learning-set-2-rsvp-now', 'Learning set 2 - RSVP now!', NULL, '<p>It\'s time to look at your data, have some group discussions and add to your quality improvement toolkit. The Safety in Practice team is looking forward to bringing you the second learning session for the year, combining GP, pharmacy and urgent care teams. This collaboration will help to fuel enhanced learning.</p><p>Registration is from 5.30pm with the session beginning at 6pm. A light dinner will be provided from 5.30pm.</p><p>Important:  It is vital that each individual registers under their own name. This enables a record of attendance to be kept and your certificates to be generated. <br><br>NB: GPs attending this session will be entitled to MOPS points; please make sure these are documented on your registration. Nurses, pharmacists and other staff will receive a certificate for their professional development</p><p><span>Thursday 15th November 5.30-9pm, Royal New Zealand Yacht Squadraon </span><a href=\"https://www.eventfinda.co.nz/2018/safety-in-practice-learning-session-city/auckland/westhaven?_ga=2.132405576.777780009.1539543926-890674783.1534388863\"><span>CLICK HERE</span></a><span> to RSVP now</span></p><p>Thursday 22nd November 5.30-9pm, Whenua Pupuke, North Shore Hospital <a href=\"https://www.eventfinda.co.nz/2018/safety-in-practice-learning-session-north-shore/auckland/takapuna?utm_campaign=were-you-looking-for-events&amp;utm_medium=click-through&amp;utm_source=2018%2Fsafety-in-practice-learning-session-city%2Fauckland%2Fwesthaven\">CLICK HERE</a> to RSVP now</p><p><span> </span></p>', NULL, NULL, 0, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 7, 58, 1),
(83, 'BlogPost', '2018-11-09 11:44:00', '2018-11-09 11:30:27', 'kia-ora', 'Kia ora!', NULL, '<p>A warm welcome to our new and returning clinical teams joining us for the upcoming 2018-19 year.</p><p>We\'re currently finalising our resources for 2018-19, in the meantime feel free to browse the website.</p><p>We look forward to meeting you on the 23rd or 29th be sure to book you place for the events here! </p>', NULL, NULL, 0, 1, 5, 0, 0, NULL, 'Inherit', 'Inherit', 5, 58, 1),
(84, 'BlogPost', '2018-11-09 11:46:17', '2018-11-09 11:44:27', 'invoicing', 'Invoicing', NULL, '<p><span>We\'ve developed an invoice template and FAQ sheet found </span><a href=\"[sitetree_link,id=307]\" class=\"ss-broken\">here </a><span>to help with common problems, alternatively feel free to contact us on </span><a href=\"mailto:info@safetyinpractice.co.nz\">info@safetyinpractice.co.nz</a><span>.</span></p>', NULL, NULL, 0, 1, 6, 0, 1, NULL, 'Inherit', 'Inherit', 2, 58, 1),
(85, 'BlogPost', '2018-11-09 11:48:03', '2018-11-09 11:46:43', 'expressions-of-interest-now-closed', 'Expressions of Interest NOW CLOSED', NULL, '<p><span>A huge thank you to everyone who\'s expressed an interest in Safety in Practice 2018-19. We are now closed to expressions of interest and will be contacting 2018-19 teams shortly.</span></p>', NULL, NULL, 0, 1, 7, 0, 0, NULL, 'Inherit', 'Inherit', 2, 58, 1),
(86, 'BlogPost', '2018-11-09 16:12:47', '2018-11-09 11:52:09', 'learning-set-4-resources-now-available', 'Learning Set 4 - Resources now available', NULL, '<p>A huge thank you to everyone who made Learning Set 4 possible. The event saw 170 individuals from pharmacies, general practices and urgent care clinics across Auckland come together to share and learn.  In particular thank you to Mr Anthony Hill, Health and Disability Commissioner and Debbie Holdsworth, Director of Funding Waitemata DHB for speaking at the event.</p><p>Resources from the evening are now available <a href=\"http://aucklandnc.safetyinpractice.co.nz/resources/\">here</a>.</p>', NULL, NULL, 0, 1, 8, 0, 0, NULL, 'Inherit', 'Inherit', 3, 58, 1),
(87, 'MultiContentPage', '2018-11-13 15:53:15', '2018-11-09 16:13:59', 'our-sip-teams', 'Our SIP Teams', NULL, NULL, NULL, NULL, 1, 1, 5, 0, 0, NULL, 'Inherit', 'Inherit', 6, 71, 1),
(88, 'MultiContentPage', '2018-11-14 11:56:50', '2018-11-12 16:39:07', 'faq', 'FAQ', NULL, '<p>It\'s time to look at your data, have some group discussions and add to your quality improvement toolkit. The Safety in Practice team is looking forward to bringing you the second learning session for the year, combining GP, pharmacy and urgent care teams. This collaboration will help to fuel enhanced learning.</p><p>Registration is from 5.30pm with the session beginning at 6pm. A light dinner will be provided from 5.30pm.</p><p>Important:  It is vital that each individual registers under their own name. This enables a record of attendance to be kept and your certificates to be generated. <br><br>NB: GPs attending this session will be entitled to MOPS points; please make sure these are documented on your registration. Nurses, pharmacists and other staff will receive a certificate for their professional development</p><p><span>Thursday 15th November 5.30-9pm, Royal New Zealand Yacht Squadraon </span><a href=\"https://www.eventfinda.co.nz/2018/safety-in-practice-learning-session-city/auckland/westhaven?_ga=2.132405576.777780009.1539543926-890674783.1534388863\">CLICK HERE</a><span> to RSVP now</span></p><p>Thursday 22nd November 5.30-9pm, Whenua Pupuke, North Shore Hospital <a href=\"https://www.eventfinda.co.nz/2018/safety-in-practice-learning-session-north-shore/auckland/takapuna?utm_campaign=were-you-looking-for-events&amp;utm_medium=click-through&amp;utm_source=2018%2Fsafety-in-practice-learning-session-city%2Fauckland%2Fwesthaven\">CLICK HERE</a> to RSVP now</p><p><span> </span></p>', NULL, NULL, 1, 1, 12, 0, 0, NULL, 'Inherit', 'Inherit', 7, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `SiteTree_CrossSubsiteLinkTracking`
--

CREATE TABLE `SiteTree_CrossSubsiteLinkTracking` (
  `ID` int(11) NOT NULL,
  `SiteTreeID` int(11) NOT NULL DEFAULT '0',
  `ChildID` int(11) NOT NULL DEFAULT '0',
  `FieldName` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `SiteTree_EditorGroups`
--

CREATE TABLE `SiteTree_EditorGroups` (
  `ID` int(11) NOT NULL,
  `SiteTreeID` int(11) NOT NULL DEFAULT '0',
  `GroupID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `SiteTree_ImageTracking`
--

CREATE TABLE `SiteTree_ImageTracking` (
  `ID` int(11) NOT NULL,
  `SiteTreeID` int(11) NOT NULL DEFAULT '0',
  `FileID` int(11) NOT NULL DEFAULT '0',
  `FieldName` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `SiteTree_LinkTracking`
--

CREATE TABLE `SiteTree_LinkTracking` (
  `ID` int(11) NOT NULL,
  `SiteTreeID` int(11) NOT NULL DEFAULT '0',
  `ChildID` int(11) NOT NULL DEFAULT '0',
  `FieldName` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `SiteTree_Live`
--

CREATE TABLE `SiteTree_Live` (
  `ID` int(11) NOT NULL,
  `ClassName` enum('SiteTree','Page','Blog','BlogPost','BlogEntry','ErrorPage','RedirectorPage','VirtualPage','SubsitesVirtualPage','HomePage','MultiContentPage','ProjectPage','ProfilePage','ProjectHolderPage','ResourcesModulePage','ResourcesPage','TeamHolderPage','BlogTree','BlogHolder') DEFAULT 'SiteTree',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `URLSegment` varchar(255) DEFAULT NULL,
  `Title` varchar(255) DEFAULT NULL,
  `MenuTitle` varchar(100) DEFAULT NULL,
  `Content` mediumtext,
  `MetaDescription` mediumtext,
  `ExtraMeta` mediumtext,
  `ShowInMenus` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `ShowInSearch` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `Sort` int(11) NOT NULL DEFAULT '0',
  `HasBrokenFile` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `HasBrokenLink` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `ReportClass` varchar(50) DEFAULT NULL,
  `CanViewType` enum('Anyone','LoggedInUsers','OnlyTheseUsers','Inherit') DEFAULT 'Inherit',
  `CanEditType` enum('LoggedInUsers','OnlyTheseUsers','Inherit') DEFAULT 'Inherit',
  `Version` int(11) NOT NULL DEFAULT '0',
  `ParentID` int(11) NOT NULL DEFAULT '0',
  `SubsiteID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `SiteTree_Live`
--

INSERT INTO `SiteTree_Live` (`ID`, `ClassName`, `LastEdited`, `Created`, `URLSegment`, `Title`, `MenuTitle`, `Content`, `MetaDescription`, `ExtraMeta`, `ShowInMenus`, `ShowInSearch`, `Sort`, `HasBrokenFile`, `HasBrokenLink`, `ReportClass`, `CanViewType`, `CanEditType`, `Version`, `ParentID`, `SubsiteID`) VALUES
(2, 'Page', '2018-09-18 11:02:50', '2018-09-18 00:05:09', 'about-us', 'About Us', NULL, '<p>You can fill this page out with your own content, or delete it and create your own pages.<br></p>', NULL, NULL, 1, 1, 4, 0, 0, NULL, 'Inherit', 'Inherit', 2, 0, 0),
(3, 'Page', '2018-09-18 11:02:51', '2018-09-18 00:05:09', 'contact-us', 'Contact Us', NULL, '<p>You can fill this page out with your own content, or delete it and create your own pages.<br></p>', NULL, NULL, 1, 1, 9, 0, 0, NULL, 'Inherit', 'Inherit', 2, 0, 0),
(4, 'ErrorPage', '2018-09-18 11:02:51', '2018-09-18 00:05:09', 'page-not-found', 'Page not found', NULL, '<p>Sorry, it seems you were trying to access a page that doesn\'t exist.</p><p>Please check the spelling of the URL you were trying to access and try again.</p>', NULL, NULL, 0, 0, 10, 0, 0, NULL, 'Inherit', 'Inherit', 2, 0, 0),
(5, 'ErrorPage', '2018-09-18 11:02:51', '2018-09-18 00:05:10', 'server-error', 'Server error', NULL, '<p>Sorry, there was a problem with handling your request.</p>', NULL, NULL, 0, 0, 11, 0, 0, NULL, 'Inherit', 'Inherit', 2, 0, 0),
(10, 'MultiContentPage', '2018-09-21 08:54:15', '2018-09-18 15:37:46', 'home', 'Home', NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 7, 0, 0),
(11, 'ProjectHolderPage', '2018-09-21 08:54:56', '2018-09-21 08:34:11', 'our-projects', 'Our Projects', NULL, NULL, NULL, NULL, 0, 0, 2, 0, 0, NULL, 'Inherit', 'Inherit', 3, 0, 0),
(12, 'ProjectPage', '2018-09-21 11:17:04', '2018-09-21 08:50:41', 'patient-deterioration-programme', 'Patient Deterioration Programme', NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 3, 11, 0),
(13, 'ProjectPage', '2018-09-21 08:51:35', '2018-09-21 08:51:20', 'data-discovery-using-qlik-sense-for-care-redesign', 'Data Discovery: Using Qlik Sense for Care Redesign', NULL, NULL, NULL, NULL, 1, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 2, 11, 0),
(14, 'ProjectPage', '2018-09-21 11:26:12', '2018-09-21 11:25:49', 'electronic-vitals-system-evitals', 'Electronic Vitals System (eVitals)', NULL, NULL, NULL, NULL, 1, 1, 3, 0, 0, NULL, 'Inherit', 'Inherit', 2, 11, 0),
(20, 'Blog', '2018-10-01 17:23:28', '2018-09-24 17:00:46', 'news', 'Awards', NULL, NULL, NULL, NULL, 0, 0, 5, 0, 0, NULL, 'Inherit', 'Inherit', 10, 0, 0),
(21, 'BlogPost', '2018-09-28 11:02:55', '2018-09-24 17:01:29', 'waitemata-dhb-celebrates-2018-diversity-awards-win', 'Waitemata DHB Celebrates 2018 Diversity Awards Win', NULL, '<p>An innovative Waitemata District Health Board education programme to overcome cultural barriers in communication with patients has been recognised at the 2018 Diversity Awards NZ.</p><p>The eCALD programme was announced as joint winner of the Cultural Celebration Award at the ceremony last night. eCALD was developed at Waitemata DHB’s Institute for Innovation and Improvement (i3) to meet the needs<br>of health professionals working within an increasingly diverse community.</p><p>It delivers online and face-to-face training across a range of areas including refugees, migrants, mental health and<br>religion to improve understanding – and ultimately – communication with patients.<br>Initially launched in 2006, it has since been rolled out nationally by the Ministry of Health and engaged more than 27,000 learners.</p><p>National Programme Director Sue Lim says eCALD has had an overwhelmingly positive impact on health practitioners’ cultural awareness and the application of learning into practice.</p><p>“We all live and work in culturally diverse communities and cultural competence is becoming an essential part of our professional and personal lives. eCALD courses provide learners with insight into how different cultures respond to health-related situations, diverse health beliefs, faith-based practices, different health seeking behaviours and expectations from health systems”.</p><p>Waitemata DHB CEO Dr Dale Bramley says a workforce that is culturally aware and as diverse as the community it serves is an essential part of providing the best care to every patient</p><p>“Empowering our staff and further reducing barriers to healthcare provision, particularly within vulnerable groups, is vital as our communities continue to diversify. The Institute for Innovation and Improvement plays an important role in helping us achieve that through the development of programme like eCALD, and we have seen the programme go from strength to strength as it rolled out across the country,” says Dr Bramley.</p><p>Waitemata DHB continues to champion diversity through its recruitment efforts as well and has nearly doubled its Maori workforce in the last three years. To continue boosting numbers, it recently announced the creation of an additional 50 positions for Maori nurses at all levels.</p>', NULL, NULL, 0, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 7, 20, 0),
(22, 'BlogPost', '2018-09-24 17:50:02', '2018-09-24 17:15:33', 'dr-eleri-clissold-ipanz-young-professional-of-the-year-2018', 'Dr Eleri Clissold - IPANZ Young Professional of the Year 2018', NULL, '<p><span>Ground-breaking work within the Institute for Innovation and Improvement (i3), a core part of Waitemata District Health Board’s (WDHB) commitment to building and enhancing the next generation of health care professionals, has been recognised with a national award.</span></p><p><span>Dr Eleri Clissold was named Young Professional of the Year at the Institute of Public Administration New Zealand (IPANZ) Awards in Wellington. The award recognises young health professionals – those under 30 years of age – who have achieved excellence through their work within the public sector.</span></p><p><span>Dr Clissold, who joined WDHB as a Quality Assurance Fellow in 2015, has designed and implemented an innovative medical education programme for junior doctors using virtual reality that continues to enhance the training experience and deliver better outcomes for patients. <br>She is also leading the Safety in Practice Programme to support primary health care workers.</span></p><p><span>Prior to joining the DHB, Dr Clissold volunteered on a Mercy Ship delivering care to some of the poorest people in Africa before immigrating to New Zealand from her native Wales.</span></p><p><span>This is not the firs<span>t national award for Dr Clissold; she received an Open for Leadership Award from the Health Quality and Safety Commission in 2017. <br>“I\'m delighted that the award has highlighted some of the great work going on at Waitemata WDHB to a wider audience. I\'m privileged to work with fantastic teams across the organisation who have taught me so much in the last two years. I am truly grateful for the support I have received and honoured to receive the award,” says Dr Eleri Clissold.</span></span></p><p><span>Waitemata DHB Chief Executive Dr Dale Bramley says the award is an acknowledgment of the excellent work of i3 and the Fellows Programme, which has produced a number of very promising young clinicians. <br></span></p><p><span>“This is a significant achievement for Dr Clissold who has quickly established herself as an emerging talent,” says Dr Bramley. “It is also a great example of the importance we place on training and development for our workforce in order to fulfil our promise to patients and their families by delivering the very best standards of care.”  <br></span></p><p><span>Dr Clissold has won a scholarship valued at $10,000 to attend a leadership course run by the prestigious Mt Eliza Business School in Melbourne</span></p>', NULL, NULL, 0, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 7, 20, 0),
(23, 'BlogPost', '2018-09-24 17:24:09', '2018-09-24 17:17:34', 'data-tool-used-to-redesign-clinical-care-at-waitemata-dhb', 'Data tool used to redesign clinical care at Waitemata DHB', NULL, NULL, NULL, NULL, 0, 1, 3, 0, 0, NULL, 'Inherit', 'Inherit', 5, 20, 0),
(24, 'BlogPost', '2018-09-24 17:23:36', '2018-09-24 17:22:35', 'clinical-engagement-vital-to-waitemata-dhbs-innovation-success', 'Clinical engagement vital to Waitemata DHB\'s innovation success', NULL, NULL, NULL, NULL, 0, 1, 4, 0, 0, NULL, 'Inherit', 'Inherit', 2, 20, 0),
(25, 'BlogPost', '2018-09-27 14:49:42', '2018-09-24 17:24:29', 'jerome-ng-pharmacist-of-the-year-2017-psnz', 'Jerome Ng - Pharmacist of the Year 2017 (PSNZ)', NULL, '<p>Congratulations to Jerome Ng who has been awarded as the Pharmaceutical Society\'s Pharmacist of the Year for 2017. <br>The Pharmaceutical Society\'s awards were announced at their regional symposium held on Sunday 10 June 2018 at the Waipuna Hotel and Conference Centre. </p><p>The award recognised his overall work in quality and patient safety improvement, research, leadership and teaching, and the desire to advance the pharmacy profession in the interests of better patient outcomes.</p><p>\"It\'s incredibly humbling to receive this award because I\'m just building on all the good work done by the pioneers before me,\" he says.</p><p>\"I would like to thank Penny Andrew, Marilyn Crawley, and Keith Crump, among others, at Waitemata DHB who have provided mentorship over the years.\"</p>', NULL, NULL, 0, 1, 5, 0, 0, NULL, 'Inherit', 'Inherit', 4, 20, 0),
(26, 'BlogPost', '2018-09-24 17:51:14', '2018-09-24 17:27:12', 'kelly-bohot-best-presentation-at-hqsc-scientific-symposium', 'Kelly Bohot - Best Presentation at HQSC Scientific Symposium', NULL, '<p>Congratulations to Kelly Bohot and all the team involved in the Survive Sepsis Improvement Collaborative for winning best presentation at the Health Quality &amp; Safety Commission’s national scientific symposium held yesterday in Auckland.</p><p>Kelly, an Innovation + Improvement Project Manager for i3, presented “An improvement collaborative approach to timely identification and treatment of sepsis at Waitemata DHB” to the symposium.</p><p>\"The real achievement for us was to have the opportunity to present our work at this symposium which sees many of our DHBs and healthcare leaders attend,\" says Kelly.</p><div class=\"text_exposed_show\">\n<p>\"To win the award for best presentation is really the icing on the cake for all the nurses, doctors, educators, and project team who have taken their time to work on this important collaboration.\"</p>\n<p>It’s the third annual scientific symposium to be held and is the only New Zealand scientific symposium focused specifically on the science of health and disability care improvement by highlighting research and methods.</p>\n</div>', NULL, NULL, 0, 1, 6, 0, 0, NULL, 'Inherit', 'Inherit', 3, 20, 0),
(27, 'TeamHolderPage', '2018-10-04 17:22:49', '2018-09-27 10:17:44', 'our-team', 'Our Team', NULL, '<h1 class=\"section-header\" style=\"text-align: center;\"><strong>OUR <span class=\"color-orange\"><span style=\"text-decoration: underline;\">TEAM</span></span><span style=\"text-decoration: underline;\"><span class=\"color-orange\"><br></span></span></strong></h1>', NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 11, 51, 0),
(28, 'ProfilePage', '2018-10-10 14:31:32', '2018-09-27 10:17:56', 'elna-meller-2', 'Elna Meller', NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 9, 27, 0),
(29, 'ProfilePage', '2018-10-10 15:04:13', '2018-09-27 14:35:22', 'sharon-puddle-2', 'Sharon Puddle', NULL, NULL, NULL, NULL, 1, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 7, 27, 0),
(30, 'ProfilePage', '2018-10-10 14:58:47', '2018-09-27 16:11:48', 'michael-sheehan', 'Michael Sheehan', NULL, NULL, NULL, NULL, 1, 1, 3, 0, 0, NULL, 'Inherit', 'Inherit', 10, 27, 0),
(31, 'ProfilePage', '2018-10-10 15:04:37', '2018-09-27 16:40:14', 'delwyn-armstrong', 'Delwyn Armstrong', NULL, NULL, NULL, NULL, 1, 1, 4, 0, 0, NULL, 'Inherit', 'Inherit', 5, 27, 0),
(32, 'ProfilePage', '2018-10-10 15:04:28', '2018-09-27 16:46:52', 'sue-french', 'Sue French', NULL, NULL, NULL, NULL, 1, 1, 5, 0, 0, NULL, 'Inherit', 'Inherit', 5, 27, 0),
(33, 'ProfilePage', '2018-10-11 14:58:37', '2018-09-27 16:49:10', 'renee-kong', 'Renee Kong', NULL, NULL, NULL, NULL, 1, 1, 6, 0, 0, NULL, 'Inherit', 'Inherit', 5, 27, 0),
(34, 'ProfilePage', '2018-10-10 14:36:57', '2018-09-27 16:49:33', 'dr-maneesh-deva', 'Dr Maneesh Deva', NULL, NULL, NULL, NULL, 1, 1, 7, 0, 0, NULL, 'Inherit', 'Inherit', 5, 27, 0),
(35, 'ProfilePage', '2018-10-10 15:05:09', '2018-09-27 16:50:09', 'sangeeta-gupta', 'Sangeeta Gupta', NULL, NULL, NULL, NULL, 1, 1, 8, 0, 0, NULL, 'Inherit', 'Inherit', 4, 27, 0),
(36, 'ProfilePage', '2018-10-10 15:08:19', '2018-09-27 16:57:59', 'dr-jerome-ng', 'Dr Jerome Ng', NULL, NULL, NULL, NULL, 1, 1, 9, 0, 0, NULL, 'Inherit', 'Inherit', 5, 27, 0),
(37, 'ProfilePage', '2018-10-10 15:13:46', '2018-09-27 16:58:32', 'jane-yang', 'Jane Yang', NULL, NULL, NULL, NULL, 1, 1, 10, 0, 0, NULL, 'Inherit', 'Inherit', 7, 27, 0),
(38, 'ProfilePage', '2018-10-10 14:28:39', '2018-09-27 16:59:21', 'dina-emmanuel', 'Dina Emmanuel', NULL, NULL, NULL, NULL, 1, 1, 11, 0, 0, NULL, 'Inherit', 'Inherit', 4, 27, 0),
(39, 'ProfilePage', '2018-10-10 15:16:57', '2018-09-27 16:59:46', 'lisa-sue', 'Lisa Sue', NULL, NULL, NULL, NULL, 1, 1, 12, 0, 0, NULL, 'Inherit', 'Inherit', 5, 27, 0),
(40, 'BlogPost', '2018-10-04 14:40:32', '2018-09-28 09:29:01', 'quality-improvement-workshops', 'Quality Improvement Workshops', NULL, NULL, NULL, NULL, 0, 1, 7, 0, 0, NULL, 'Inherit', 'Inherit', 8, 43, 0),
(41, 'BlogPost', '2018-10-04 14:40:43', '2018-09-28 10:53:48', 'pharmac-hospital-medicines-into-combined-pharmaceutical-budget', 'PHARMAC: Hospital  Medicines into Combined  Pharmaceutical Budget', NULL, NULL, NULL, NULL, 0, 1, 8, 0, 0, NULL, 'Inherit', 'Inherit', 5, 43, 0),
(42, 'BlogPost', '2018-10-04 14:41:20', '2018-09-28 10:58:05', 'artificial-intelligence-technologies-in-healthcare', 'Artificial Intelligence Technologies in Healthcare', NULL, NULL, NULL, NULL, 0, 1, 9, 0, 0, NULL, 'Inherit', 'Inherit', 7, 43, 0),
(43, 'Blog', '2018-10-04 15:43:03', '2018-09-28 10:59:49', 'events-2', 'Events', NULL, '<h1 class=\"section-header\" style=\"text-align: center;\"><strong>OUR <span><span><span class=\"color-orange\"><span style=\"text-decoration: underline;\">EVENTS</span></span></span></span></strong> </h1>', NULL, NULL, 0, 0, 2, 0, 0, NULL, 'Inherit', 'Inherit', 14, 51, 0),
(46, 'BlogPost', '2018-10-04 14:41:33', '2018-09-28 11:17:16', 'o-and-g-conference-across-the-spectrum-and-beyond', 'O&G Conference: Across  the Spectrum & Beyond', NULL, NULL, NULL, NULL, 0, 1, 10, 0, 0, NULL, 'Inherit', 'Inherit', 5, 43, 0),
(47, 'Blog', '2018-10-01 17:23:43', '2018-09-28 11:19:03', 'blogs', 'Blogs', NULL, NULL, NULL, NULL, 0, 0, 8, 0, 0, NULL, 'Inherit', 'Inherit', 8, 0, 0),
(48, 'BlogPost', '2018-10-01 14:42:11', '2018-09-28 16:01:17', 'harkness-reunion-20-22-july-2018', 'Harkness Reunion 20-22 July 2018', NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 6, 47, 0),
(49, 'BlogPost', '2018-10-01 14:42:31', '2018-09-28 16:09:21', 'pharmac-hospital-medicines-into-combined-pharmaceutical-budget', 'eCALD improving cross-cultural practice', NULL, NULL, NULL, NULL, 0, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 5, 47, 0),
(50, 'BlogPost', '2018-10-01 14:34:48', '2018-09-28 16:44:15', 'the-potential-of-mobile-health-reaching-those-in-need', 'The potential of mobile health - reaching those in need', NULL, NULL, NULL, NULL, 0, 1, 3, 0, 0, NULL, 'Inherit', 'Inherit', 8, 47, 0),
(51, 'Page', '2018-10-01 12:25:04', '2018-10-01 12:24:25', 'connect', 'Connect', NULL, NULL, NULL, NULL, 1, 1, 3, 0, 0, NULL, 'Inherit', 'Inherit', 3, 0, 0),
(52, 'ProfilePage', '2018-10-10 17:11:50', '2018-10-10 16:53:23', 'kevin', 'Kevin', NULL, NULL, NULL, NULL, 1, 1, 13, 0, 0, NULL, 'Inherit', 'Inherit', 17, 27, 0),
(53, 'ProfilePage', '2018-10-12 10:07:28', '2018-10-11 16:27:36', 'jay-obrien', 'Jay O\'Brien', NULL, NULL, NULL, NULL, 1, 1, 14, 0, 0, NULL, 'Inherit', 'Inherit', 3, 27, 0),
(54, 'MultiContentPage', '2018-11-13 15:52:40', '2018-10-15 15:25:46', 'home', 'Home', NULL, '<p>Welcome to SilverStripe! This is the default home page. You can edit this page by opening <a href=\"admin/\">the CMS</a>. You can now access the <a href=\"http://doc.silverstripe.org\">developer documentation</a>, or begin <a href=\"http://doc.silverstripe.org/doku.php?id=tutorials\">the tutorials.</a></p>', NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 4, 0, 1),
(55, 'Blog', '2018-11-12 13:52:05', '2018-10-17 16:38:51', 'events', 'Events', NULL, '<h1><strong>EVENTS</strong></h1>', NULL, NULL, 1, 1, 7, 0, 0, NULL, 'Inherit', 'Inherit', 6, 0, 1),
(56, 'BlogPost', '2018-11-09 10:27:42', '2018-10-17 16:38:57', 'learning-session-2-city', 'Learning Session 2', NULL, '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>', NULL, NULL, 0, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 12, 55, 1),
(57, 'BlogPost', '2018-11-12 16:21:28', '2018-10-17 16:56:56', 'learning-session-2', 'Learning Session 2', NULL, '<p>CLICK HERE: <a class=\"external\" title=\"Open external link\" rel=\"external\" href=\"https://bit.ly/2PCibKD\">https://bit.ly/2PCibKD </a>to RSVP now. <br>Please ensure you use one name and one email address per participant.<br>Don\'t forget to add your MCNZ number if you need GP CME.<br>Session 6-9pm, a light dinner will be served from 5.30pm.</p>', NULL, NULL, 0, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 17, 55, 1),
(58, 'Blog', '2018-11-09 11:27:42', '2018-10-18 12:28:11', 'latest-news', 'Latest News', NULL, NULL, NULL, NULL, 1, 1, 8, 0, 0, NULL, 'Inherit', 'Inherit', 8, 0, 1),
(59, 'BlogPost', '2018-11-09 11:42:48', '2018-10-18 12:28:27', 'learning', 'Learning set 1 - resources now available', NULL, '<p>A huge thank you to all who attended learning set 1 of 2018-19!</p>', NULL, NULL, 0, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 9, 58, 1),
(60, 'BlogPost', '2018-11-09 11:42:58', '2018-10-18 12:34:33', 'prescribing-indicators-update', 'Prescribing Indicators Update', NULL, '<p>When the queries went live with the roll-over of the month, they found that there were some kinks that needed reviewing and so they have withdrawn them to be corrected.  I understand that they will be updated hopefully by next Monday.  The queries that are currently under the Safety tab in Dr Info are INCORRECT for this year, and they will be getting a note put on them to this effect from tonight.  Please don’t try to use these ones as they will obviously not match with your spreadsheet!</p><p>Some of the hiccups that need to be ironed out with any new work!  Our apologies.  As soon as they are correct and updated I will let you know.</p><p>We understand that this is likely to result in a delay for many practices in sending the Prescribing Indicators spreadsheets by Sept 10<span>th</span> so just send them through as soon as you are able. </p><p>Remember to enter ‘0’ in areas where you don’t have any patients showing, including if you don’t have any in any of the categories. </p>', NULL, NULL, 0, 1, 3, 0, 0, NULL, 'Inherit', 'Inherit', 8, 58, 1),
(61, 'BlogPost', '2018-11-09 11:43:24', '2018-10-18 12:42:56', 'introducing-michael', 'Introducing Michael Hammond', NULL, '<p>Please join us in welcoming our new project manager Michael Hammond.</p><p>Michael is no stranger to patient safety, having worked as a clinical pharmacist at both Rotorua primary care services and Waitemata District Health Board. Michael is looking forward to starting a new challenge with the Safety in Practice team and we are very much looking forward to working with him!</p>', NULL, NULL, 0, 1, 4, 0, 0, NULL, 'Inherit', 'Inherit', 7, 58, 1),
(62, 'TeamHolderPage', '2018-11-13 15:53:22', '2018-10-18 16:10:45', 'meet-the-team', 'Meet the team', NULL, NULL, NULL, NULL, 1, 1, 6, 0, 0, NULL, 'Inherit', 'Inherit', 4, 0, 1),
(63, 'ProfilePage', '2018-10-18 16:47:22', '2018-10-18 16:11:34', 'dr-lisa-eskildsen', 'Dr Lisa Eskildsen', NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 4, 62, 1),
(64, 'ProfilePage', '2018-10-18 16:49:06', '2018-10-18 16:14:37', 'diana-phone', 'Diana Phone', NULL, NULL, NULL, NULL, 1, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 3, 62, 1),
(65, 'ProfilePage', '2018-10-18 16:50:10', '2018-10-18 16:15:03', 'dr-eleri-clissold', 'Dr Eleri Clissold', NULL, NULL, NULL, NULL, 1, 1, 3, 0, 0, NULL, 'Inherit', 'Inherit', 3, 62, 1),
(66, 'ProfilePage', '2018-10-18 16:57:49', '2018-10-18 16:15:29', 'sue-french', 'Sue French', NULL, NULL, NULL, NULL, 1, 1, 4, 0, 0, NULL, 'Inherit', 'Inherit', 3, 62, 1),
(67, 'ProfilePage', '2018-10-18 16:57:41', '2018-10-18 16:15:59', 'dr-neil-houston', 'Dr Neil Houston', NULL, NULL, NULL, NULL, 1, 1, 5, 0, 0, NULL, 'Inherit', 'Inherit', 3, 62, 1),
(68, 'ProfilePage', '2018-10-18 17:01:30', '2018-10-18 16:16:31', 'tim-wood', 'Tim Wood', NULL, NULL, NULL, NULL, 1, 1, 6, 0, 0, NULL, 'Inherit', 'Inherit', 3, 62, 1),
(69, 'ProfilePage', '2018-10-18 17:01:39', '2018-10-18 16:16:50', 'michael-hammond', 'Michael Hammond', NULL, NULL, NULL, NULL, 1, 1, 7, 0, 0, NULL, 'Inherit', 'Inherit', 3, 62, 1),
(70, 'ProfilePage', '2018-10-18 17:01:49', '2018-10-18 16:17:08', 'sreeja-nair', 'Sreeja Nair', NULL, NULL, NULL, NULL, 1, 1, 8, 0, 0, NULL, 'Inherit', 'Inherit', 3, 62, 1),
(71, 'MultiContentPage', '2018-11-13 15:52:47', '2018-10-24 09:17:54', 'our-programme', 'Our Programme', NULL, NULL, NULL, NULL, 1, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 4, 0, 1),
(72, 'ResourcesPage', '2018-11-09 11:26:50', '2018-10-25 12:00:54', 'resources', 'Resources', NULL, NULL, NULL, NULL, 1, 1, 9, 0, 0, NULL, 'Inherit', 'Inherit', 7, 0, 1),
(73, 'ResourcesModulePage', '2018-10-30 13:24:19', '2018-10-30 10:13:02', 'medical-reconciliation', 'Medical Reconciliation', NULL, '<p>Adverse Drug Events (ADEs) are the most common post discharge complication, with 20% of patients experiencing an ADE within three weeks of discharge. Many practices report that reliable medication reconciliation when a patient is discharged is difficult to achieve.</p><p>This module helps you measure how reliable your medication reconciliation system is and provides insights into how you might improve.</p>', NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 7, 72, 1),
(74, 'ResourcesModulePage', '2018-10-31 11:32:59', '2018-10-30 10:38:48', 'results-handling', 'Results Handling', NULL, '<p><span>Workload from managing test results is increasing rapidly year on year. The Medical Protection Society identified that 85% of practices have significant risks associated with results handling systems. Recent cases involving the Health and Disability Commissioner have involved failure to follow up on test results. This module helps you measure how reliable your results handling system is and gives you insights into how you might improve. </span></p><p><span>This process opens up lots of discussion about how your current systems work and generates ideas for change. One change which has been widely adopted to develop an agreed set of comments that clinical staff use on reviewing test results and use quick keys to apply to record these comments in the clinical system.</span></p>', NULL, NULL, 1, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 4, 72, 1),
(75, 'ResourcesModulePage', '2018-10-31 09:44:50', '2018-10-31 09:43:57', 'safety-climate-survey', 'Safety Climate Survey', NULL, '<p><span>The Safety Climate Survey comprises five subject areas (Communication, Workload, Leadership, Teamwork and Safety Systems &amp; Learning) with between four to eight questions for each area. </span></p><p><span>The survey will take a person approximately 10-15 minutes to complete, and ideally all staff should complete the survey within a two week timeframe. </span></p>', NULL, NULL, 1, 1, 3, 0, 0, NULL, 'Inherit', 'Inherit', 2, 72, 1),
(76, 'MultiContentPage', '2018-11-13 15:53:19', '2018-11-01 13:10:01', 'history', 'History', NULL, NULL, NULL, NULL, 1, 1, 6, 0, 0, NULL, 'Inherit', 'Inherit', 10, 71, 1),
(77, 'MultiContentPage', '2018-11-13 15:52:53', '2018-11-07 13:48:13', 'sip-for-general-practice', 'SIP for General Practice', NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 9, 71, 1),
(78, 'MultiContentPage', '2018-11-13 15:52:56', '2018-11-08 15:18:05', 'sip-for-pharmacy', 'SIP for Pharmacy', NULL, NULL, NULL, NULL, 1, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 8, 71, 1),
(79, 'MultiContentPage', '2018-11-13 15:52:59', '2018-11-08 16:00:43', 'meet-our-team', 'Our Team', NULL, NULL, NULL, NULL, 1, 1, 3, 0, 0, NULL, 'Inherit', 'Inherit', 11, 71, 1),
(80, 'MultiContentPage', '2018-11-13 15:53:03', '2018-11-08 16:15:07', 'our-partners', 'Our Partners', NULL, NULL, NULL, NULL, 1, 1, 4, 0, 0, NULL, 'Inherit', 'Inherit', 13, 71, 1),
(82, 'BlogPost', '2018-11-09 11:42:39', '2018-11-09 10:16:55', 'learning-set-2-rsvp-now', 'Learning set 2 - RSVP now!', NULL, '<p>It\'s time to look at your data, have some group discussions and add to your quality improvement toolkit. The Safety in Practice team is looking forward to bringing you the second learning session for the year, combining GP, pharmacy and urgent care teams. This collaboration will help to fuel enhanced learning.</p><p>Registration is from 5.30pm with the session beginning at 6pm. A light dinner will be provided from 5.30pm.</p><p>Important:  It is vital that each individual registers under their own name. This enables a record of attendance to be kept and your certificates to be generated. <br><br>NB: GPs attending this session will be entitled to MOPS points; please make sure these are documented on your registration. Nurses, pharmacists and other staff will receive a certificate for their professional development</p><p><span>Thursday 15th November 5.30-9pm, Royal New Zealand Yacht Squadraon </span><a href=\"https://www.eventfinda.co.nz/2018/safety-in-practice-learning-session-city/auckland/westhaven?_ga=2.132405576.777780009.1539543926-890674783.1534388863\"><span>CLICK HERE</span></a><span> to RSVP now</span></p><p>Thursday 22nd November 5.30-9pm, Whenua Pupuke, North Shore Hospital <a href=\"https://www.eventfinda.co.nz/2018/safety-in-practice-learning-session-north-shore/auckland/takapuna?utm_campaign=were-you-looking-for-events&amp;utm_medium=click-through&amp;utm_source=2018%2Fsafety-in-practice-learning-session-city%2Fauckland%2Fwesthaven\">CLICK HERE</a> to RSVP now</p><p><span> </span></p>', NULL, NULL, 0, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 7, 58, 1),
(83, 'BlogPost', '2018-11-09 11:44:00', '2018-11-09 11:30:27', 'kia-ora', 'Kia ora!', NULL, '<p>A warm welcome to our new and returning clinical teams joining us for the upcoming 2018-19 year.</p><p>We\'re currently finalising our resources for 2018-19, in the meantime feel free to browse the website.</p><p>We look forward to meeting you on the 23rd or 29th be sure to book you place for the events here! </p>', NULL, NULL, 0, 1, 5, 0, 0, NULL, 'Inherit', 'Inherit', 5, 58, 1),
(84, 'BlogPost', '2018-11-09 11:46:17', '2018-11-09 11:44:27', 'invoicing', 'Invoicing', NULL, '<p><span>We\'ve developed an invoice template and FAQ sheet found </span><a href=\"[sitetree_link,id=307]\" class=\"ss-broken\">here </a><span>to help with common problems, alternatively feel free to contact us on </span><a href=\"mailto:info@safetyinpractice.co.nz\">info@safetyinpractice.co.nz</a><span>.</span></p>', NULL, NULL, 0, 1, 6, 0, 1, NULL, 'Inherit', 'Inherit', 2, 58, 1),
(85, 'BlogPost', '2018-11-09 11:48:03', '2018-11-09 11:46:43', 'expressions-of-interest-now-closed', 'Expressions of Interest NOW CLOSED', NULL, '<p><span>A huge thank you to everyone who\'s expressed an interest in Safety in Practice 2018-19. We are now closed to expressions of interest and will be contacting 2018-19 teams shortly.</span></p>', NULL, NULL, 0, 1, 7, 0, 0, NULL, 'Inherit', 'Inherit', 2, 58, 1),
(86, 'BlogPost', '2018-11-09 16:12:47', '2018-11-09 11:52:09', 'learning-set-4-resources-now-available', 'Learning Set 4 - Resources now available', NULL, '<p>A huge thank you to everyone who made Learning Set 4 possible. The event saw 170 individuals from pharmacies, general practices and urgent care clinics across Auckland come together to share and learn.  In particular thank you to Mr Anthony Hill, Health and Disability Commissioner and Debbie Holdsworth, Director of Funding Waitemata DHB for speaking at the event.</p><p>Resources from the evening are now available <a href=\"http://aucklandnc.safetyinpractice.co.nz/resources/\">here</a>.</p>', NULL, NULL, 0, 1, 8, 0, 0, NULL, 'Inherit', 'Inherit', 3, 58, 1),
(87, 'MultiContentPage', '2018-11-13 15:53:15', '2018-11-09 16:13:59', 'our-sip-teams', 'Our SIP Teams', NULL, NULL, NULL, NULL, 1, 1, 5, 0, 0, NULL, 'Inherit', 'Inherit', 6, 71, 1),
(88, 'MultiContentPage', '2018-11-14 11:56:51', '2018-11-12 16:39:07', 'faq', 'FAQ', NULL, '<p>It\'s time to look at your data, have some group discussions and add to your quality improvement toolkit. The Safety in Practice team is looking forward to bringing you the second learning session for the year, combining GP, pharmacy and urgent care teams. This collaboration will help to fuel enhanced learning.</p><p>Registration is from 5.30pm with the session beginning at 6pm. A light dinner will be provided from 5.30pm.</p><p>Important:  It is vital that each individual registers under their own name. This enables a record of attendance to be kept and your certificates to be generated. <br><br>NB: GPs attending this session will be entitled to MOPS points; please make sure these are documented on your registration. Nurses, pharmacists and other staff will receive a certificate for their professional development</p><p><span>Thursday 15th November 5.30-9pm, Royal New Zealand Yacht Squadraon </span><a href=\"https://www.eventfinda.co.nz/2018/safety-in-practice-learning-session-city/auckland/westhaven?_ga=2.132405576.777780009.1539543926-890674783.1534388863\">CLICK HERE</a><span> to RSVP now</span></p><p>Thursday 22nd November 5.30-9pm, Whenua Pupuke, North Shore Hospital <a href=\"https://www.eventfinda.co.nz/2018/safety-in-practice-learning-session-north-shore/auckland/takapuna?utm_campaign=were-you-looking-for-events&amp;utm_medium=click-through&amp;utm_source=2018%2Fsafety-in-practice-learning-session-city%2Fauckland%2Fwesthaven\">CLICK HERE</a> to RSVP now</p><p><span> </span></p>', NULL, NULL, 1, 1, 12, 0, 0, NULL, 'Inherit', 'Inherit', 7, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `SiteTree_versions`
--

CREATE TABLE `SiteTree_versions` (
  `ID` int(11) NOT NULL,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `WasPublished` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `AuthorID` int(11) NOT NULL DEFAULT '0',
  `PublisherID` int(11) NOT NULL DEFAULT '0',
  `ClassName` enum('SiteTree','Page','Blog','BlogPost','BlogEntry','ErrorPage','RedirectorPage','VirtualPage','SubsitesVirtualPage','HomePage','MultiContentPage','ProjectPage','ProfilePage','ProjectHolderPage','ResourcesModulePage','ResourcesPage','TeamHolderPage','BlogTree','BlogHolder') DEFAULT 'SiteTree',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `URLSegment` varchar(255) DEFAULT NULL,
  `Title` varchar(255) DEFAULT NULL,
  `MenuTitle` varchar(100) DEFAULT NULL,
  `Content` mediumtext,
  `MetaDescription` mediumtext,
  `ExtraMeta` mediumtext,
  `ShowInMenus` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `ShowInSearch` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `Sort` int(11) NOT NULL DEFAULT '0',
  `HasBrokenFile` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `HasBrokenLink` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `ReportClass` varchar(50) DEFAULT NULL,
  `CanViewType` enum('Anyone','LoggedInUsers','OnlyTheseUsers','Inherit') DEFAULT 'Inherit',
  `CanEditType` enum('LoggedInUsers','OnlyTheseUsers','Inherit') DEFAULT 'Inherit',
  `ParentID` int(11) NOT NULL DEFAULT '0',
  `SubsiteID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `SiteTree_versions`
--

INSERT INTO `SiteTree_versions` (`ID`, `RecordID`, `Version`, `WasPublished`, `AuthorID`, `PublisherID`, `ClassName`, `LastEdited`, `Created`, `URLSegment`, `Title`, `MenuTitle`, `Content`, `MetaDescription`, `ExtraMeta`, `ShowInMenus`, `ShowInSearch`, `Sort`, `HasBrokenFile`, `HasBrokenLink`, `ReportClass`, `CanViewType`, `CanEditType`, `ParentID`, `SubsiteID`) VALUES
(1, 1, 1, 1, 0, 0, 'Page', '2018-09-18 00:05:09', '2018-09-18 00:05:09', 'home', 'Home', NULL, '<p>Welcome to SilverStripe! This is the default homepage. You can edit this page by opening <a href=\"admin/\">the CMS</a>.</p><p>You can now access the <a href=\"http://docs.silverstripe.org\">developer documentation</a>, or begin the <a href=\"http://www.silverstripe.org/learn/lessons\">SilverStripe lessons</a>.</p>', NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 0, 0),
(2, 2, 1, 1, 0, 0, 'Page', '2018-09-18 00:05:09', '2018-09-18 00:05:09', 'about-us', 'About Us', NULL, '<p>You can fill this page out with your own content, or delete it and create your own pages.<br></p>', NULL, NULL, 1, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 0, 0),
(3, 3, 1, 1, 0, 0, 'Page', '2018-09-18 00:05:09', '2018-09-18 00:05:09', 'contact-us', 'Contact Us', NULL, '<p>You can fill this page out with your own content, or delete it and create your own pages.<br></p>', NULL, NULL, 1, 1, 3, 0, 0, NULL, 'Inherit', 'Inherit', 0, 0),
(4, 4, 1, 1, 0, 0, 'ErrorPage', '2018-09-18 00:05:09', '2018-09-18 00:05:09', 'page-not-found', 'Page not found', NULL, '<p>Sorry, it seems you were trying to access a page that doesn\'t exist.</p><p>Please check the spelling of the URL you were trying to access and try again.</p>', NULL, NULL, 0, 0, 4, 0, 0, NULL, 'Inherit', 'Inherit', 0, 0),
(5, 5, 1, 1, 0, 0, 'ErrorPage', '2018-09-18 00:05:10', '2018-09-18 00:05:10', 'server-error', 'Server error', NULL, '<p>Sorry, there was a problem with handling your request.</p>', NULL, NULL, 0, 0, 5, 0, 0, NULL, 'Inherit', 'Inherit', 0, 0),
(6, 1, 2, 1, 1, 1, 'HomePage', '2018-09-18 10:24:57', '2018-09-18 00:05:09', 'home', 'Home', NULL, '<p>Welcome to SilverStripe! This is the default homepage. You can edit this page by opening <a href=\"admin/\">the CMS</a>.</p><p>You can now access the <a href=\"http://docs.silverstripe.org\">developer documentation</a>, or begin the <a href=\"http://www.silverstripe.org/learn/lessons\">SilverStripe lessons</a>.</p>', NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 0, 0),
(7, 1, 3, 1, 1, 1, 'HomePage', '2018-09-18 10:52:26', '2018-09-18 00:05:09', 'home', 'Home', NULL, '<p>Welcome to SilverStripe! This is the default homepage. You can edit this page by opening <a href=\"admin/\">the CMS</a>.</p><p>You can now access the <a href=\"http://docs.silverstripe.org\">developer documentation</a>, or begin the <a href=\"http://www.silverstripe.org/learn/lessons\">SilverStripe lessons</a>.</p>', NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 0, 0),
(8, 1, 4, 1, 1, 1, 'HomePage', '2018-09-18 10:52:30', '2018-09-18 00:05:09', 'home', 'Home', NULL, '<p>Welcome to SilverStripe! This is the default homepage. You can edit this page by opening <a href=\"admin/\">the CMS</a>.</p><p>You can now access the <a href=\"http://docs.silverstripe.org\">developer documentation</a>, or begin the <a href=\"http://www.silverstripe.org/learn/lessons\">SilverStripe lessons</a>.</p>', NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 0, 0),
(9, 1, 5, 1, 1, 1, 'HomePage', '2018-09-18 10:52:33', '2018-09-18 00:05:09', 'home', 'Home', NULL, '<p>Welcome to SilverStripe! This is the default homepage. You can edit this page by opening <a href=\"admin/\">the CMS</a>.</p><p>You can now access the <a href=\"http://docs.silverstripe.org\">developer documentation</a>, or begin the <a href=\"http://www.silverstripe.org/learn/lessons\">SilverStripe lessons</a>.</p>', NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 0, 0),
(10, 1, 6, 1, 1, 1, 'HomePage', '2018-09-18 10:52:36', '2018-09-18 00:05:09', 'home', 'Home', NULL, '<p>Welcome to SilverStripe! This is the default homepage. You can edit this page by opening <a href=\"admin/\">the CMS</a>.</p><p>You can now access the <a href=\"http://docs.silverstripe.org\">developer documentation</a>, or begin the <a href=\"http://www.silverstripe.org/learn/lessons\">SilverStripe lessons</a>.</p>', NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 0, 0),
(11, 1, 7, 1, 1, 1, 'HomePage', '2018-09-18 11:02:45', '2018-09-18 00:05:09', 'home', 'Home', NULL, '<p>Welcome to SilverStripe! This is the default homepage. You can edit this page by opening <a href=\"admin/\">the CMS</a>.</p><p>You can now access the <a href=\"http://docs.silverstripe.org\">developer documentation</a>, or begin the <a href=\"http://www.silverstripe.org/learn/lessons\">SilverStripe lessons</a>.</p>', NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 0, 0),
(12, 2, 2, 1, 1, 1, 'Page', '2018-09-18 11:02:45', '2018-09-18 00:05:09', 'about-us', 'About Us', NULL, '<p>You can fill this page out with your own content, or delete it and create your own pages.<br></p>', NULL, NULL, 1, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 0, 0),
(13, 3, 2, 1, 1, 1, 'Page', '2018-09-18 11:02:45', '2018-09-18 00:05:09', 'contact-us', 'Contact Us', NULL, '<p>You can fill this page out with your own content, or delete it and create your own pages.<br></p>', NULL, NULL, 1, 1, 3, 0, 0, NULL, 'Inherit', 'Inherit', 0, 0),
(14, 4, 2, 1, 1, 1, 'ErrorPage', '2018-09-18 11:02:45', '2018-09-18 00:05:09', 'page-not-found', 'Page not found', NULL, '<p>Sorry, it seems you were trying to access a page that doesn\'t exist.</p><p>Please check the spelling of the URL you were trying to access and try again.</p>', NULL, NULL, 0, 0, 4, 0, 0, NULL, 'Inherit', 'Inherit', 0, 0),
(15, 5, 2, 1, 1, 1, 'ErrorPage', '2018-09-18 11:02:45', '2018-09-18 00:05:10', 'server-error', 'Server error', NULL, '<p>Sorry, there was a problem with handling your request.</p>', NULL, NULL, 0, 0, 5, 0, 0, NULL, 'Inherit', 'Inherit', 0, 0),
(16, 6, 1, 0, 1, 0, 'MultiContentPage', '2018-09-18 11:41:25', '2018-09-18 11:41:25', 'new-multi-content-page', 'New Multi Content Page', NULL, NULL, NULL, NULL, 1, 1, 6, 0, 0, NULL, 'Inherit', 'Inherit', 0, 0),
(17, 6, 2, 1, 1, 1, 'MultiContentPage', '2018-09-18 11:41:47', '2018-09-18 11:41:25', 'multi-content', 'Multi Content', NULL, NULL, NULL, NULL, 1, 1, 6, 0, 0, NULL, 'Inherit', 'Inherit', 0, 0),
(18, 7, 1, 0, 1, 0, 'MultiContentPage', '2018-09-18 12:32:12', '2018-09-18 12:32:12', 'new-multi-content-page', 'New Multi Content Page', NULL, NULL, NULL, NULL, 1, 1, 7, 0, 0, NULL, 'Inherit', 'Inherit', 0, 0),
(19, 8, 1, 0, 1, 0, 'MultiContentPage', '2018-09-18 14:07:09', '2018-09-18 14:07:09', 'new-multi-content-page', 'New Multi Content Page', NULL, NULL, NULL, NULL, 1, 1, 6, 0, 0, NULL, 'Inherit', 'Inherit', 0, 0),
(20, 8, 2, 1, 1, 1, 'MultiContentPage', '2018-09-18 14:07:26', '2018-09-18 14:07:09', 'multi-content-page', 'Multi Content Page', NULL, NULL, NULL, NULL, 1, 1, 6, 0, 0, NULL, 'Inherit', 'Inherit', 0, 0),
(21, 9, 1, 0, 1, 0, 'MultiContentPage', '2018-09-18 15:37:02', '2018-09-18 15:37:02', 'new-multi-content-page', 'New Multi Content Page', NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 8, 0),
(22, 10, 1, 0, 1, 0, 'MultiContentPage', '2018-09-18 15:37:46', '2018-09-18 15:37:46', 'new-multi-content-page', 'New Multi Content Page', NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 1, 0),
(23, 10, 2, 0, 1, 0, 'MultiContentPage', '2018-09-18 15:38:11', '2018-09-18 15:37:46', 'new-multi-content-page', 'New Multi Content Page', NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 0, 0),
(24, 10, 3, 1, 1, 1, 'MultiContentPage', '2018-09-18 15:38:11', '2018-09-18 15:37:46', 'new-multi-content-page', 'New Multi Content Page', NULL, NULL, NULL, NULL, 1, 1, 6, 0, 0, NULL, 'Inherit', 'Inherit', 0, 0),
(25, 10, 4, 1, 1, 1, 'MultiContentPage', '2018-09-19 12:16:03', '2018-09-18 15:37:46', 'home', 'Home', NULL, NULL, NULL, NULL, 1, 1, 6, 0, 0, NULL, 'Inherit', 'Inherit', 0, 0),
(26, 10, 5, 1, 1, 1, 'MultiContentPage', '2018-09-19 12:16:11', '2018-09-18 15:37:46', 'home', 'Home', NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 0, 0),
(27, 11, 1, 0, 1, 0, 'ProjectHolderPage', '2018-09-21 08:34:11', '2018-09-21 08:34:11', 'new-project-holder-page', 'New Project Holder Page', NULL, NULL, NULL, NULL, 0, 0, 7, 0, 0, NULL, 'Inherit', 'Inherit', 0, 0),
(28, 10, 6, 1, 1, 1, 'ProjectHolderPage', '2018-09-21 08:48:56', '2018-09-18 15:37:46', 'home', 'Home', NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 0, 0),
(29, 11, 2, 1, 1, 1, 'ProjectHolderPage', '2018-09-21 08:49:26', '2018-09-21 08:34:11', 'our-projects', 'Our Projects', NULL, NULL, NULL, NULL, 0, 0, 7, 0, 0, NULL, 'Inherit', 'Inherit', 0, 0),
(30, 12, 1, 0, 1, 0, 'ProjectPage', '2018-09-21 08:50:41', '2018-09-21 08:50:41', 'new-project-page', 'New Project Page', NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 11, 0),
(31, 12, 2, 1, 1, 1, 'ProjectPage', '2018-09-21 08:51:13', '2018-09-21 08:50:41', 'patient-deterioration-programme', 'Patient Deterioration Programme', NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 11, 0),
(32, 13, 1, 0, 1, 0, 'ProjectPage', '2018-09-21 08:51:20', '2018-09-21 08:51:20', 'new-project-page', 'New Project Page', NULL, NULL, NULL, NULL, 1, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 11, 0),
(33, 13, 2, 1, 1, 1, 'ProjectPage', '2018-09-21 08:51:35', '2018-09-21 08:51:20', 'data-discovery-using-qlik-sense-for-care-redesign', 'Data Discovery: Using Qlik Sense for Care Redesign', NULL, NULL, NULL, NULL, 1, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 11, 0),
(34, 10, 7, 1, 1, 1, 'MultiContentPage', '2018-09-21 08:54:15', '2018-09-18 15:37:46', 'home', 'Home', NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 0, 0),
(35, 11, 3, 1, 1, 1, 'ProjectHolderPage', '2018-09-21 08:54:51', '2018-09-21 08:34:11', 'our-projects', 'Our Projects', NULL, NULL, NULL, NULL, 0, 0, 2, 0, 0, NULL, 'Inherit', 'Inherit', 0, 0),
(36, 12, 3, 1, 1, 1, 'ProjectPage', '2018-09-21 11:17:04', '2018-09-21 08:50:41', 'patient-deterioration-programme', 'Patient Deterioration Programme', NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 11, 0),
(37, 14, 1, 0, 1, 0, 'ProjectPage', '2018-09-21 11:25:49', '2018-09-21 11:25:49', 'new-project-page', 'New Project Page', NULL, NULL, NULL, NULL, 1, 1, 3, 0, 0, NULL, 'Inherit', 'Inherit', 11, 0),
(38, 14, 2, 1, 1, 1, 'ProjectPage', '2018-09-21 11:26:12', '2018-09-21 11:25:49', 'electronic-vitals-system-evitals', 'Electronic Vitals System (eVitals)', NULL, NULL, NULL, NULL, 1, 1, 3, 0, 0, NULL, 'Inherit', 'Inherit', 11, 0),
(39, 15, 1, 0, 1, 0, '', '2018-09-24 14:37:04', '2018-09-24 14:37:04', 'new-achievement-holder-page', 'New Achievement Holder Page', NULL, NULL, NULL, NULL, 0, 0, 7, 0, 0, NULL, 'Inherit', 'Inherit', 0, 0),
(40, 15, 2, 1, 1, 1, '', '2018-09-24 14:37:48', '2018-09-24 14:37:04', 'awards', 'Awards', NULL, NULL, NULL, NULL, 0, 0, 7, 0, 0, NULL, 'Inherit', 'Inherit', 0, 0),
(41, 16, 1, 0, 1, 0, '', '2018-09-24 14:37:53', '2018-09-24 14:37:53', 'new-achievement-page', 'New Achievement Page', NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 15, 0),
(42, 16, 2, 1, 1, 1, '', '2018-09-24 14:38:28', '2018-09-24 14:37:53', 'waitemata-dhb-celebrates-2018-diversity-awards-win', 'Waitemata DHB Celebrates  2018 Diversity Awards Win', NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 15, 0),
(43, 16, 3, 1, 1, 1, '', '2018-09-24 14:51:01', '2018-09-24 14:37:53', 'waitemata-dhb-celebrates-2018-diversity-awards-win', 'Waitemata DHB Celebrates  2018 Diversity Awards Win', NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 15, 0),
(44, 16, 4, 1, 1, 1, '', '2018-09-24 14:55:27', '2018-09-24 14:37:53', 'waitemata-dhb-celebrates-2018-diversity-awards-win', 'Waitemata DHB Celebrates  2018 Diversity Awards Win', NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 15, 0),
(45, 17, 1, 0, 1, 0, '', '2018-09-24 14:56:05', '2018-09-24 14:56:05', 'new-achievement-page', 'New Achievement Page', NULL, NULL, NULL, NULL, 1, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 15, 0),
(46, 17, 2, 1, 1, 1, '', '2018-09-24 14:57:30', '2018-09-24 14:56:05', 'dr-eleri-clissold-ipanz-young-professional-of-the-year-2018', 'Dr Eleri Clissold - IPANZ  Young Professional of the  Year 2018', NULL, NULL, NULL, NULL, 1, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 15, 0),
(47, 18, 1, 0, 1, 0, '', '2018-09-24 14:57:35', '2018-09-24 14:57:35', 'new-achievement-page', 'New Achievement Page', NULL, NULL, NULL, NULL, 1, 1, 3, 0, 0, NULL, 'Inherit', 'Inherit', 15, 0),
(48, 18, 2, 1, 1, 1, '', '2018-09-24 14:58:01', '2018-09-24 14:57:35', 'jerome-ng-pharmacist-of-the-year-2017-psnz', 'Jerome Ng - Pharmacist of  the Year 2017 (PSNZ)', NULL, NULL, NULL, NULL, 1, 1, 3, 0, 0, NULL, 'Inherit', 'Inherit', 15, 0),
(49, 18, 3, 1, 1, 1, '', '2018-09-24 14:59:08', '2018-09-24 14:57:35', 'jerome-ng-pharmacist-of-the-year-2017-psnz', 'Jerome Ng - Pharmacist of  the Year 2017 (PSNZ)', NULL, NULL, NULL, NULL, 1, 1, 3, 0, 0, NULL, 'Inherit', 'Inherit', 15, 0),
(50, 19, 1, 0, 1, 0, '', '2018-09-24 14:59:13', '2018-09-24 14:59:13', 'new-achievement-page', 'New Achievement Page', NULL, NULL, NULL, NULL, 1, 1, 4, 0, 0, NULL, 'Inherit', 'Inherit', 15, 0),
(51, 19, 2, 1, 1, 1, '', '2018-09-24 15:00:01', '2018-09-24 14:59:13', 'data-tool-used-to-redesign-clinical-care-at-waitemata-dhb', 'Data tool used to redesign clinical care at Waitemata DHB', NULL, NULL, NULL, NULL, 1, 1, 4, 0, 0, NULL, 'Inherit', 'Inherit', 15, 0),
(52, 15, 3, 1, 1, 1, '', '2018-09-24 15:00:18', '2018-09-24 14:37:04', 'awards', 'Awards', NULL, NULL, NULL, NULL, 0, 0, 3, 0, 0, NULL, 'Inherit', 'Inherit', 0, 0),
(53, 20, 1, 0, 1, 0, 'Blog', '2018-09-24 17:00:46', '2018-09-24 17:00:46', 'new-blog', 'New Blog', NULL, NULL, NULL, NULL, 1, 1, 8, 0, 0, NULL, 'Inherit', 'Inherit', 0, 0),
(54, 20, 2, 1, 1, 1, 'Blog', '2018-09-24 17:01:13', '2018-09-24 17:00:46', 'news', 'News', NULL, NULL, NULL, NULL, 1, 1, 8, 0, 0, NULL, 'Inherit', 'Inherit', 0, 0),
(55, 21, 1, 0, 1, 0, 'BlogPost', '2018-09-24 17:01:29', '2018-09-24 17:01:29', 'new-blog-post', 'New Blog Post', NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 20, 0),
(56, 21, 2, 0, 1, 0, 'BlogPost', '2018-09-24 17:02:18', '2018-09-24 17:01:29', 'waitemata-dhb-celebrates-2018-diversity-awards-win', 'Waitemata DHB Celebrates 2018 Diversity Awards Win', NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 20, 0),
(57, 21, 3, 1, 1, 1, 'BlogPost', '2018-09-24 17:02:18', '2018-09-24 17:01:29', 'waitemata-dhb-celebrates-2018-diversity-awards-win', 'Waitemata DHB Celebrates 2018 Diversity Awards Win', NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 20, 0),
(58, 21, 4, 1, 1, 1, 'BlogPost', '2018-09-24 17:05:07', '2018-09-24 17:01:29', 'waitemata-dhb-celebrates-2018-diversity-awards-win', 'Waitemata DHB Celebrates 2018 Diversity Awards Win', NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 20, 0),
(59, 22, 1, 0, 1, 0, 'BlogPost', '2018-09-24 17:15:33', '2018-09-24 17:15:33', 'new-blog-post', 'New Blog Post', NULL, NULL, NULL, NULL, 0, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 20, 0),
(60, 22, 2, 0, 1, 0, 'BlogPost', '2018-09-24 17:16:13', '2018-09-24 17:15:33', 'dr-eleri-clissold-ipanz-young-professional-of-the-year-2018', 'Dr Eleri Clissold - IPANZ Young Professional of the Year 2018', NULL, NULL, NULL, NULL, 0, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 20, 0),
(61, 22, 3, 1, 1, 1, 'BlogPost', '2018-09-24 17:16:13', '2018-09-24 17:15:33', 'dr-eleri-clissold-ipanz-young-professional-of-the-year-2018', 'Dr Eleri Clissold - IPANZ Young Professional of the Year 2018', NULL, NULL, NULL, NULL, 0, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 20, 0),
(62, 22, 4, 1, 1, 1, 'BlogPost', '2018-09-24 17:16:24', '2018-09-24 17:15:33', 'dr-eleri-clissold-ipanz-young-professional-of-the-year-2018', 'Dr Eleri Clissold - IPANZ Young Professional of the Year 2018', NULL, NULL, NULL, NULL, 0, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 20, 0),
(63, 21, 5, 1, 1, 1, 'BlogPost', '2018-09-24 17:16:56', '2018-09-24 17:01:29', 'waitemata-dhb-celebrates-2018-diversity-awards-win', 'Waitemata DHB Celebrates 2018 Diversity Awards Win', NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 20, 0),
(64, 22, 5, 1, 1, 1, 'BlogPost', '2018-09-24 17:17:15', '2018-09-24 17:15:33', 'dr-eleri-clissold-ipanz-young-professional-of-the-year-2018', 'Dr Eleri Clissold - IPANZ Young Professional of the Year 2018', NULL, NULL, NULL, NULL, 0, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 20, 0),
(65, 22, 6, 1, 1, 1, 'BlogPost', '2018-09-24 17:17:27', '2018-09-24 17:15:33', 'dr-eleri-clissold-ipanz-young-professional-of-the-year-2018', 'Dr Eleri Clissold - IPANZ Young Professional of the Year 2018', NULL, NULL, NULL, NULL, 0, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 20, 0),
(66, 23, 1, 0, 1, 0, 'BlogPost', '2018-09-24 17:17:34', '2018-09-24 17:17:34', 'new-blog-post', 'New Blog Post', NULL, NULL, NULL, NULL, 0, 1, 3, 0, 0, NULL, 'Inherit', 'Inherit', 20, 0),
(67, 23, 2, 0, 1, 0, 'BlogPost', '2018-09-24 17:19:07', '2018-09-24 17:17:34', 'data-tool-used-to-redesign-clinical-care-at-waitemata-dhb', 'Data tool used to redesign clinical care at Waitemata DHB', NULL, NULL, NULL, NULL, 0, 1, 3, 0, 0, NULL, 'Inherit', 'Inherit', 20, 0),
(68, 23, 3, 1, 1, 1, 'BlogPost', '2018-09-24 17:19:07', '2018-09-24 17:17:34', 'data-tool-used-to-redesign-clinical-care-at-waitemata-dhb', 'Data tool used to redesign clinical care at Waitemata DHB', NULL, NULL, NULL, NULL, 0, 1, 3, 0, 0, NULL, 'Inherit', 'Inherit', 20, 0),
(69, 23, 4, 1, 1, 1, 'BlogPost', '2018-09-24 17:20:04', '2018-09-24 17:17:34', 'data-tool-used-to-redesign-clinical-care-at-waitemata-dhb', 'Data tool used to redesign clinical care at Waitemata DHB', NULL, NULL, NULL, NULL, 0, 1, 3, 0, 0, NULL, 'Inherit', 'Inherit', 20, 0),
(70, 24, 1, 0, 1, 0, 'BlogPost', '2018-09-24 17:22:35', '2018-09-24 17:22:35', 'new-blog-post', 'New Blog Post', NULL, NULL, NULL, NULL, 0, 1, 4, 0, 0, NULL, 'Inherit', 'Inherit', 20, 0),
(71, 24, 2, 1, 1, 1, 'BlogPost', '2018-09-24 17:23:36', '2018-09-24 17:22:35', 'clinical-engagement-vital-to-waitemata-dhbs-innovation-success', 'Clinical engagement vital to Waitemata DHB\'s innovation success', NULL, NULL, NULL, NULL, 0, 1, 4, 0, 0, NULL, 'Inherit', 'Inherit', 20, 0),
(72, 23, 5, 1, 1, 1, 'BlogPost', '2018-09-24 17:24:09', '2018-09-24 17:17:34', 'data-tool-used-to-redesign-clinical-care-at-waitemata-dhb', 'Data tool used to redesign clinical care at Waitemata DHB', NULL, NULL, NULL, NULL, 0, 1, 3, 0, 0, NULL, 'Inherit', 'Inherit', 20, 0),
(73, 21, 6, 1, 1, 1, 'BlogPost', '2018-09-24 17:24:26', '2018-09-24 17:01:29', 'waitemata-dhb-celebrates-2018-diversity-awards-win', 'Waitemata DHB Celebrates 2018 Diversity Awards Win', NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 20, 0),
(74, 25, 1, 0, 1, 0, 'BlogPost', '2018-09-24 17:24:29', '2018-09-24 17:24:29', 'new-blog-post', 'New Blog Post', NULL, NULL, NULL, NULL, 0, 1, 5, 0, 0, NULL, 'Inherit', 'Inherit', 20, 0),
(75, 25, 2, 1, 1, 1, 'BlogPost', '2018-09-24 17:25:53', '2018-09-24 17:24:29', 'jerome-ng-pharmacist-of-the-year-2017-psnz', 'Jerome Ng - Pharmacist of the Year 2017 (PSNZ)', NULL, NULL, NULL, NULL, 0, 1, 5, 0, 0, NULL, 'Inherit', 'Inherit', 20, 0),
(76, 26, 1, 0, 1, 0, 'BlogPost', '2018-09-24 17:27:12', '2018-09-24 17:27:12', 'new-blog-post', 'New Blog Post', NULL, NULL, NULL, NULL, 0, 1, 6, 0, 0, NULL, 'Inherit', 'Inherit', 20, 0),
(77, 26, 2, 1, 1, 1, 'BlogPost', '2018-09-24 17:28:09', '2018-09-24 17:27:12', 'kelly-bohot-best-presentation-at-hqsc-scientific-symposium', 'Kelly Bohot - Best Presentation at HQSC Scientific Symposium', NULL, NULL, NULL, NULL, 0, 1, 6, 0, 0, NULL, 'Inherit', 'Inherit', 20, 0),
(78, 20, 3, 1, 1, 1, 'Blog', '2018-09-24 17:28:46', '2018-09-24 17:00:46', 'news', 'News', NULL, NULL, NULL, NULL, 1, 1, 3, 0, 0, NULL, 'Inherit', 'Inherit', 0, 0),
(79, 21, 7, 1, 1, 1, 'BlogPost', '2018-09-24 17:48:33', '2018-09-24 17:01:29', 'waitemata-dhb-celebrates-2018-diversity-awards-win', 'Waitemata DHB Celebrates 2018 Diversity Awards Win', NULL, '<p>An innovative Waitemata District Health Board education programme to overcome cultural barriers in communication with patients has been recognised at the 2018 Diversity Awards NZ.</p><p>The eCALD programme was announced as joint winner of the Cultural Celebration Award at the ceremony last night. eCALD was developed at Waitemata DHB’s Institute for Innovation and Improvement (i3) to meet the needs<br>of health professionals working within an increasingly diverse community.</p><p>It delivers online and face-to-face training across a range of areas including refugees, migrants, mental health and<br>religion to improve understanding – and ultimately – communication with patients.<br>Initially launched in 2006, it has since been rolled out nationally by the Ministry of Health and engaged more than 27,000 learners.</p><p>National Programme Director Sue Lim says eCALD has had an overwhelmingly positive impact on health practitioners’ cultural awareness and the application of learning into practice.</p><p>“We all live and work in culturally diverse communities and cultural competence is becoming an essential part of our professional and personal lives. eCALD courses provide learners with insight into how different cultures respond to health-related situations, diverse health beliefs, faith-based practices, different health seeking behaviours and expectations from health systems”.</p><p>Waitemata DHB CEO Dr Dale Bramley says a workforce that is culturally aware and as diverse as the community it serves is an essential part of providing the best care to every patient</p><p>“Empowering our staff and further reducing barriers to healthcare provision, particularly within vulnerable groups, is vital as our communities continue to diversify. The Institute for Innovation and Improvement plays an important role in helping us achieve that through the development of programme like eCALD, and we have seen the programme go from strength to strength as it rolled out across the country,” says Dr Bramley.</p><p>Waitemata DHB continues to champion diversity through its recruitment efforts as well and has nearly doubled its Maori workforce in the last three years. To continue boosting numbers, it recently announced the creation of an additional 50 positions for Maori nurses at all levels.</p>', NULL, NULL, 0, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 20, 0),
(80, 22, 7, 1, 1, 1, 'BlogPost', '2018-09-24 17:50:01', '2018-09-24 17:15:33', 'dr-eleri-clissold-ipanz-young-professional-of-the-year-2018', 'Dr Eleri Clissold - IPANZ Young Professional of the Year 2018', NULL, '<p><span>Ground-breaking work within the Institute for Innovation and Improvement (i3), a core part of Waitemata District Health Board’s (WDHB) commitment to building and enhancing the next generation of health care professionals, has been recognised with a national award.</span></p><p><span>Dr Eleri Clissold was named Young Professional of the Year at the Institute of Public Administration New Zealand (IPANZ) Awards in Wellington. The award recognises young health professionals – those under 30 years of age – who have achieved excellence through their work within the public sector.</span></p><p><span>Dr Clissold, who joined WDHB as a Quality Assurance Fellow in 2015, has designed and implemented an innovative medical education programme for junior doctors using virtual reality that continues to enhance the training experience and deliver better outcomes for patients. <br>She is also leading the Safety in Practice Programme to support primary health care workers.</span></p><p><span>Prior to joining the DHB, Dr Clissold volunteered on a Mercy Ship delivering care to some of the poorest people in Africa before immigrating to New Zealand from her native Wales.</span></p><p><span>This is not the firs<span>t national award for Dr Clissold; she received an Open for Leadership Award from the Health Quality and Safety Commission in 2017. <br>“I\'m delighted that the award has highlighted some of the great work going on at Waitemata WDHB to a wider audience. I\'m privileged to work with fantastic teams across the organisation who have taught me so much in the last two years. I am truly grateful for the support I have received and honoured to receive the award,” says Dr Eleri Clissold.</span></span></p><p><span>Waitemata DHB Chief Executive Dr Dale Bramley says the award is an acknowledgment of the excellent work of i3 and the Fellows Programme, which has produced a number of very promising young clinicians. <br></span></p><p><span>“This is a significant achievement for Dr Clissold who has quickly established herself as an emerging talent,” says Dr Bramley. “It is also a great example of the importance we place on training and development for our workforce in order to fulfil our promise to patients and their families by delivering the very best standards of care.”  <br></span></p><p><span>Dr Clissold has won a scholarship valued at $10,000 to attend a leadership course run by the prestigious Mt Eliza Business School in Melbourne</span></p>', NULL, NULL, 0, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 20, 0),
(81, 25, 3, 1, 1, 1, 'BlogPost', '2018-09-24 17:50:41', '2018-09-24 17:24:29', 'jerome-ng-pharmacist-of-the-year-2017-psnz', 'Jerome Ng - Pharmacist of the Year 2017 (PSNZ)', NULL, '<p>Congratulations to Jerome Ng who has been awarded as the Pharmaceutical Society\'s Pharmacist of the Year for 2017.</p><p>The Pharmaceutical Society\'s awards were announced at their regional symposium held on Sunday 10 June 2018 at the Waipuna Hotel and Conference Centre. </p><p>The award recognised his overall work in quality and patient safety improvement, research, leadership and teaching, and the desire to advance the pharmacy profession in the interests of better patient outcomes.</p><p>\"It\'s incredibly humbling to receive this award because I\'m just building on all the good work done by the pioneers before me,\" he says.</p><p>\"I would like to thank Penny Andrew, Marilyn Crawley, and Keith Crump, among others, at Waitemata DHB who have provided mentorship over the years.\"</p>', NULL, NULL, 0, 1, 5, 0, 0, NULL, 'Inherit', 'Inherit', 20, 0),
(82, 26, 3, 1, 1, 1, 'BlogPost', '2018-09-24 17:51:14', '2018-09-24 17:27:12', 'kelly-bohot-best-presentation-at-hqsc-scientific-symposium', 'Kelly Bohot - Best Presentation at HQSC Scientific Symposium', NULL, '<p>Congratulations to Kelly Bohot and all the team involved in the Survive Sepsis Improvement Collaborative for winning best presentation at the Health Quality &amp; Safety Commission’s national scientific symposium held yesterday in Auckland.</p><p>Kelly, an Innovation + Improvement Project Manager for i3, presented “An improvement collaborative approach to timely identification and treatment of sepsis at Waitemata DHB” to the symposium.</p><p>\"The real achievement for us was to have the opportunity to present our work at this symposium which sees many of our DHBs and healthcare leaders attend,\" says Kelly.</p><div class=\"text_exposed_show\">\n<p>\"To win the award for best presentation is really the icing on the cake for all the nurses, doctors, educators, and project team who have taken their time to work on this important collaboration.\"</p>\n<p>It’s the third annual scientific symposium to be held and is the only New Zealand scientific symposium focused specifically on the science of health and disability care improvement by highlighting research and methods.</p>\n</div>', NULL, NULL, 0, 1, 6, 0, 0, NULL, 'Inherit', 'Inherit', 20, 0),
(83, 27, 1, 0, 1, 0, 'TeamHolderPage', '2018-09-27 10:17:44', '2018-09-27 10:17:44', 'new-team-holder-page', 'New Team Holder Page', NULL, NULL, NULL, NULL, 1, 1, 9, 0, 0, NULL, 'Inherit', 'Inherit', 0, 0),
(84, 27, 2, 1, 1, 1, 'TeamHolderPage', '2018-09-27 10:17:52', '2018-09-27 10:17:44', 'our-team', 'Our Team', NULL, NULL, NULL, NULL, 1, 1, 9, 0, 0, NULL, 'Inherit', 'Inherit', 0, 0),
(85, 28, 1, 0, 1, 0, 'ProfilePage', '2018-09-27 10:17:56', '2018-09-27 10:17:56', 'new-profile-page', 'New Profile Page', NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 27, 0),
(86, 28, 2, 1, 1, 1, 'ProfilePage', '2018-09-27 12:18:45', '2018-09-27 10:17:56', 'dr-penny-andrew', 'Dr Penny Andrew', NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 27, 0),
(87, 27, 3, 1, 1, 1, 'TeamHolderPage', '2018-09-27 14:33:25', '2018-09-27 10:17:44', 'our-people', 'Our People', NULL, NULL, NULL, NULL, 1, 1, 9, 0, 0, NULL, 'Inherit', 'Inherit', 0, 0),
(88, 29, 1, 0, 1, 0, 'ProfilePage', '2018-09-27 14:35:22', '2018-09-27 14:35:22', 'new-profile-page', 'New Profile Page', NULL, NULL, NULL, NULL, 1, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 27, 0),
(89, 29, 2, 1, 1, 1, 'ProfilePage', '2018-09-27 14:39:27', '2018-09-27 14:35:22', 'dr-robyn-whittaker', 'Dr Robyn Whittaker', NULL, NULL, NULL, NULL, 1, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 27, 0),
(90, 28, 3, 1, 1, 1, 'ProfilePage', '2018-09-27 14:39:42', '2018-09-27 10:17:56', 'dr-penny-andrew', 'Dr Penny Andrew', NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 27, 0),
(91, 25, 4, 1, 1, 1, 'BlogPost', '2018-09-27 14:49:42', '2018-09-24 17:24:29', 'jerome-ng-pharmacist-of-the-year-2017-psnz', 'Jerome Ng - Pharmacist of the Year 2017 (PSNZ)', NULL, '<p>Congratulations to Jerome Ng who has been awarded as the Pharmaceutical Society\'s Pharmacist of the Year for 2017. <br>The Pharmaceutical Society\'s awards were announced at their regional symposium held on Sunday 10 June 2018 at the Waipuna Hotel and Conference Centre. </p><p>The award recognised his overall work in quality and patient safety improvement, research, leadership and teaching, and the desire to advance the pharmacy profession in the interests of better patient outcomes.</p><p>\"It\'s incredibly humbling to receive this award because I\'m just building on all the good work done by the pioneers before me,\" he says.</p><p>\"I would like to thank Penny Andrew, Marilyn Crawley, and Keith Crump, among others, at Waitemata DHB who have provided mentorship over the years.\"</p>', NULL, NULL, 0, 1, 5, 0, 0, NULL, 'Inherit', 'Inherit', 20, 0),
(92, 30, 1, 0, 1, 0, 'ProfilePage', '2018-09-27 16:11:48', '2018-09-27 16:11:48', 'new-profile-page', 'New Profile Page', NULL, NULL, NULL, NULL, 1, 1, 3, 0, 0, NULL, 'Inherit', 'Inherit', 27, 0),
(93, 30, 2, 1, 1, 1, 'ProfilePage', '2018-09-27 16:17:10', '2018-09-27 16:11:48', 'jay-obrien', 'Jay O\'Brien', NULL, NULL, NULL, NULL, 1, 1, 3, 0, 0, NULL, 'Inherit', 'Inherit', 27, 0),
(94, 29, 3, 1, 1, 1, 'ProfilePage', '2018-09-27 16:17:24', '2018-09-27 14:35:22', 'dr-robyn-whittaker', 'Dr Robyn Whittaker', NULL, NULL, NULL, NULL, 1, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 27, 0),
(95, 28, 4, 1, 1, 1, 'ProfilePage', '2018-09-27 16:17:38', '2018-09-27 10:17:56', 'dr-penny-andrew', 'Dr Penny Andrew', NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 27, 0),
(96, 30, 3, 1, 1, 1, 'ProfilePage', '2018-09-27 16:37:07', '2018-09-27 16:11:48', 'jay-obrien', 'Jay O\'Brien', NULL, NULL, NULL, NULL, 1, 1, 3, 0, 0, NULL, 'Inherit', 'Inherit', 27, 0),
(97, 31, 1, 0, 1, 0, 'ProfilePage', '2018-09-27 16:40:14', '2018-09-27 16:40:14', 'new-profile-page', 'New Profile Page', NULL, NULL, NULL, NULL, 1, 1, 4, 0, 0, NULL, 'Inherit', 'Inherit', 27, 0),
(98, 31, 2, 1, 1, 1, 'ProfilePage', '2018-09-27 16:40:36', '2018-09-27 16:40:14', 'delwyn-armstrong', 'Delwyn Armstrong', NULL, NULL, NULL, NULL, 1, 1, 4, 0, 0, NULL, 'Inherit', 'Inherit', 27, 0),
(99, 32, 1, 0, 1, 0, 'ProfilePage', '2018-09-27 16:46:52', '2018-09-27 16:46:52', 'new-profile-page', 'New Profile Page', NULL, NULL, NULL, NULL, 1, 1, 5, 0, 0, NULL, 'Inherit', 'Inherit', 27, 0),
(100, 32, 2, 1, 1, 1, 'ProfilePage', '2018-09-27 16:49:05', '2018-09-27 16:46:52', 'elna-meller', 'Elna Meller', NULL, NULL, NULL, NULL, 1, 1, 5, 0, 0, NULL, 'Inherit', 'Inherit', 27, 0),
(101, 33, 1, 0, 1, 0, 'ProfilePage', '2018-09-27 16:49:10', '2018-09-27 16:49:10', 'new-profile-page', 'New Profile Page', NULL, NULL, NULL, NULL, 1, 1, 6, 0, 0, NULL, 'Inherit', 'Inherit', 27, 0),
(102, 33, 2, 1, 1, 1, 'ProfilePage', '2018-09-27 16:49:30', '2018-09-27 16:49:10', 'karen-fielding', 'Karen Fielding', NULL, NULL, NULL, NULL, 1, 1, 6, 0, 0, NULL, 'Inherit', 'Inherit', 27, 0),
(103, 34, 1, 0, 1, 0, 'ProfilePage', '2018-09-27 16:49:33', '2018-09-27 16:49:33', 'new-profile-page', 'New Profile Page', NULL, NULL, NULL, NULL, 1, 1, 7, 0, 0, NULL, 'Inherit', 'Inherit', 27, 0),
(104, 34, 2, 1, 1, 1, 'ProfilePage', '2018-09-27 16:49:54', '2018-09-27 16:49:33', 'sharon-puddle', 'Sharon Puddle', NULL, NULL, NULL, NULL, 1, 1, 7, 0, 0, NULL, 'Inherit', 'Inherit', 27, 0),
(105, 35, 1, 0, 1, 0, 'ProfilePage', '2018-09-27 16:50:09', '2018-09-27 16:50:09', 'new-profile-page', 'New Profile Page', NULL, NULL, NULL, NULL, 1, 1, 8, 0, 0, NULL, 'Inherit', 'Inherit', 27, 0),
(106, 35, 2, 1, 1, 1, 'ProfilePage', '2018-09-27 16:50:57', '2018-09-27 16:50:09', 'dr-lara-hopley', 'Dr Lara Hopley', NULL, NULL, NULL, NULL, 1, 1, 8, 0, 0, NULL, 'Inherit', 'Inherit', 27, 0),
(107, 36, 1, 0, 1, 0, 'ProfilePage', '2018-09-27 16:57:59', '2018-09-27 16:57:59', 'new-profile-page', 'New Profile Page', NULL, NULL, NULL, NULL, 1, 1, 9, 0, 0, NULL, 'Inherit', 'Inherit', 27, 0),
(108, 36, 2, 1, 1, 1, 'ProfilePage', '2018-09-27 16:58:29', '2018-09-27 16:57:59', 'barbara-corning-davis', 'Barbara Corning-Davis', NULL, NULL, NULL, NULL, 1, 1, 9, 0, 0, NULL, 'Inherit', 'Inherit', 27, 0),
(109, 37, 1, 0, 1, 0, 'ProfilePage', '2018-09-27 16:58:32', '2018-09-27 16:58:32', 'new-profile-page', 'New Profile Page', NULL, NULL, NULL, NULL, 1, 1, 10, 0, 0, NULL, 'Inherit', 'Inherit', 27, 0),
(110, 37, 2, 1, 1, 1, 'ProfilePage', '2018-09-27 16:59:18', '2018-09-27 16:58:32', 'dr-carlene-lawes', 'Dr Carlene Lawes', NULL, NULL, NULL, NULL, 1, 1, 10, 0, 0, NULL, 'Inherit', 'Inherit', 27, 0),
(111, 38, 1, 0, 1, 0, 'ProfilePage', '2018-09-27 16:59:21', '2018-09-27 16:59:21', 'new-profile-page', 'New Profile Page', NULL, NULL, NULL, NULL, 1, 1, 11, 0, 0, NULL, 'Inherit', 'Inherit', 27, 0),
(112, 38, 2, 1, 1, 1, 'ProfilePage', '2018-09-27 16:59:43', '2018-09-27 16:59:21', 'dina-emmanuel', 'Dina Emmanuel', NULL, NULL, NULL, NULL, 1, 1, 11, 0, 0, NULL, 'Inherit', 'Inherit', 27, 0),
(113, 39, 1, 0, 1, 0, 'ProfilePage', '2018-09-27 16:59:46', '2018-09-27 16:59:46', 'new-profile-page', 'New Profile Page', NULL, NULL, NULL, NULL, 1, 1, 12, 0, 0, NULL, 'Inherit', 'Inherit', 27, 0),
(114, 39, 2, 1, 1, 1, 'ProfilePage', '2018-09-27 17:00:14', '2018-09-27 16:59:46', 'dr-eleri-clissold', 'Dr Eleri Clissold', NULL, NULL, NULL, NULL, 1, 1, 12, 0, 0, NULL, 'Inherit', 'Inherit', 27, 0),
(115, 40, 1, 0, 1, 0, 'BlogPost', '2018-09-28 09:29:01', '2018-09-28 09:29:01', 'new-blog-post', 'New Blog Post', NULL, NULL, NULL, NULL, 0, 1, 7, 0, 0, NULL, 'Inherit', 'Inherit', 20, 0),
(116, 40, 2, 0, 1, 0, 'BlogPost', '2018-09-28 09:45:44', '2018-09-28 09:29:01', 'quality-improvement-workshops', 'Quality Improvement Workshops', NULL, NULL, NULL, NULL, 0, 1, 7, 0, 0, NULL, 'Inherit', 'Inherit', 20, 0),
(117, 40, 3, 1, 1, 1, 'BlogPost', '2018-09-28 09:45:44', '2018-09-28 09:29:01', 'quality-improvement-workshops', 'Quality Improvement Workshops', NULL, NULL, NULL, NULL, 0, 1, 7, 0, 0, NULL, 'Inherit', 'Inherit', 20, 0),
(118, 40, 4, 1, 1, 1, 'BlogPost', '2018-09-28 09:55:18', '2018-09-28 09:29:01', 'quality-improvement-workshops', 'Quality Improvement Workshops', NULL, NULL, NULL, NULL, 0, 1, 7, 0, 0, NULL, 'Inherit', 'Inherit', 20, 0),
(119, 40, 5, 1, 1, 1, 'BlogPost', '2018-09-28 10:52:25', '2018-09-28 09:29:01', 'quality-improvement-workshops', 'Quality Improvement Workshops', NULL, NULL, NULL, NULL, 0, 1, 7, 0, 0, NULL, 'Inherit', 'Inherit', 20, 0),
(120, 41, 1, 0, 1, 0, 'BlogPost', '2018-09-28 10:53:48', '2018-09-28 10:53:48', 'new-blog-post', 'New Blog Post', NULL, NULL, NULL, NULL, 0, 1, 8, 0, 0, NULL, 'Inherit', 'Inherit', 20, 0),
(121, 41, 2, 1, 1, 1, 'BlogPost', '2018-09-28 10:58:02', '2018-09-28 10:53:48', 'pharmac-hospital-medicines-into-combined-pharmaceutical-budget', 'PHARMAC: Hospital  Medicines into Combined  Pharmaceutical Budget', NULL, NULL, NULL, NULL, 0, 1, 8, 0, 0, NULL, 'Inherit', 'Inherit', 20, 0),
(122, 42, 1, 0, 1, 0, 'BlogPost', '2018-09-28 10:58:05', '2018-09-28 10:58:05', 'new-blog-post', 'New Blog Post', NULL, NULL, NULL, NULL, 0, 1, 9, 0, 0, NULL, 'Inherit', 'Inherit', 20, 0),
(123, 43, 1, 0, 1, 0, 'Blog', '2018-09-28 10:59:49', '2018-09-28 10:59:49', 'new-blog', 'New Blog', NULL, NULL, NULL, NULL, 1, 1, 10, 0, 0, NULL, 'Inherit', 'Inherit', 0, 0),
(124, 44, 1, 0, 1, 0, 'BlogPost', '2018-09-28 10:59:58', '2018-09-28 10:59:58', 'new-blog-post', 'New Blog Post', NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 43, 0),
(125, 43, 2, 1, 1, 1, 'Blog', '2018-09-28 11:00:26', '2018-09-28 10:59:49', 'events', 'Events', NULL, NULL, NULL, NULL, 1, 1, 10, 0, 0, NULL, 'Inherit', 'Inherit', 0, 0),
(126, 43, 3, 1, 1, 1, 'Blog', '2018-09-28 11:00:31', '2018-09-28 10:59:49', 'events', 'Events', NULL, NULL, NULL, NULL, 1, 1, 3, 0, 0, NULL, 'Inherit', 'Inherit', 0, 0),
(127, 40, 6, 1, 1, 1, 'BlogPost', '2018-09-28 11:01:09', '2018-09-28 09:29:01', 'quality-improvement-workshops', 'Quality Improvement Workshops', NULL, NULL, NULL, NULL, 0, 1, 7, 0, 0, NULL, 'Inherit', 'Inherit', 43, 0),
(128, 41, 3, 1, 1, 1, 'BlogPost', '2018-09-28 11:01:44', '2018-09-28 10:53:48', 'pharmac-hospital-medicines-into-combined-pharmaceutical-budget', 'PHARMAC: Hospital  Medicines into Combined  Pharmaceutical Budget', NULL, NULL, NULL, NULL, 0, 1, 8, 0, 0, NULL, 'Inherit', 'Inherit', 43, 0),
(129, 42, 2, 0, 1, 0, 'BlogPost', '2018-09-28 11:02:07', '2018-09-28 10:58:05', 'new-blog-post', 'New Blog Post', NULL, NULL, NULL, NULL, 0, 1, 9, 0, 0, NULL, 'Inherit', 'Inherit', 43, 0),
(130, 42, 3, 1, 1, 1, 'BlogPost', '2018-09-28 11:02:07', '2018-09-28 10:58:05', 'new-blog-post', 'New Blog Post', NULL, NULL, NULL, NULL, 0, 1, 9, 0, 0, NULL, 'Inherit', 'Inherit', 43, 0),
(131, 20, 4, 1, 1, 1, 'Blog', '2018-09-28 11:02:26', '2018-09-24 17:00:46', 'news', 'Awards', NULL, NULL, NULL, NULL, 1, 1, 4, 0, 0, NULL, 'Inherit', 'Inherit', 0, 0),
(132, 20, 5, 1, 1, 1, 'Blog', '2018-09-28 11:03:36', '2018-09-24 17:00:46', 'news', 'Awards', NULL, NULL, NULL, NULL, 1, 1, 3, 0, 0, NULL, 'Inherit', 'Inherit', 0, 0),
(133, 45, 1, 0, 1, 0, 'BlogPost', '2018-09-28 11:06:31', '2018-09-28 11:06:31', 'new-blog-post', 'New Blog Post', NULL, NULL, NULL, NULL, 0, 1, 7, 0, 0, NULL, 'Inherit', 'Inherit', 20, 0),
(134, 45, 2, 1, 1, 1, 'BlogPost', '2018-09-28 11:07:40', '2018-09-28 11:06:31', 'o-and-g-conference-across-the-spectrum-and-beyond', 'O&G Conference: Across  the Spectrum & Beyond', NULL, NULL, NULL, NULL, 0, 1, 7, 0, 0, NULL, 'Inherit', 'Inherit', 20, 0),
(135, 42, 4, 1, 1, 1, 'BlogPost', '2018-09-28 11:09:07', '2018-09-28 10:58:05', 'artificial-intelligence-technologies-in-healthcare', 'Artificial Intelligence Technologies in Healthcare', NULL, NULL, NULL, NULL, 0, 1, 9, 0, 0, NULL, 'Inherit', 'Inherit', 43, 0),
(136, 45, 3, 0, 1, 0, 'BlogPost', '2018-09-28 11:09:25', '2018-09-28 11:06:31', 'o-and-g-conference-across-the-spectrum-and-beyond', 'O&G Conference: Across  the Spectrum & Beyond', NULL, NULL, NULL, NULL, 0, 1, 7, 0, 0, NULL, 'Inherit', 'Inherit', 43, 0),
(137, 45, 4, 0, 1, 0, 'BlogPost', '2018-09-28 11:16:12', '2018-09-28 11:06:31', 'o-and-g-conference-across-the-spectrum-and-beyond', 'O&G Conference: Across  the Spectrum & Beyond', NULL, NULL, NULL, NULL, 0, 1, 7, 0, 0, NULL, 'Inherit', 'Inherit', 3, 0),
(138, 45, 5, 0, 1, 0, 'BlogPost', '2018-09-28 11:16:12', '2018-09-28 11:06:31', 'o-and-g-conference-across-the-spectrum-and-beyond', 'O&G Conference: Across  the Spectrum & Beyond', NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 3, 0),
(139, 45, 6, 1, 1, 1, 'Page', '2018-09-28 11:16:26', '2018-09-28 11:06:31', 'o-and-g-conference-across-the-spectrum-and-beyond', 'O&G Conference: Across  the Spectrum & Beyond', NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 3, 0),
(140, 46, 1, 0, 1, 0, 'BlogPost', '2018-09-28 11:17:16', '2018-09-28 11:17:16', 'new-blog-post', 'New Blog Post', NULL, NULL, NULL, NULL, 0, 1, 10, 0, 0, NULL, 'Inherit', 'Inherit', 43, 0),
(141, 46, 2, 1, 1, 1, 'BlogPost', '2018-09-28 11:18:32', '2018-09-28 11:17:16', 'o-and-g-conference-across-the-spectrum-and-beyond', 'O&G Conference: Across  the Spectrum & Beyond', NULL, NULL, NULL, NULL, 0, 1, 10, 0, 0, NULL, 'Inherit', 'Inherit', 43, 0),
(142, 47, 1, 0, 1, 0, 'Blog', '2018-09-28 11:19:03', '2018-09-28 11:19:03', 'new-blog', 'New Blog', NULL, NULL, NULL, NULL, 1, 1, 10, 0, 0, NULL, 'Inherit', 'Inherit', 0, 0),
(143, 47, 2, 1, 1, 1, 'Blog', '2018-09-28 11:19:15', '2018-09-28 11:19:03', 'blogs', 'Blogs', NULL, NULL, NULL, NULL, 1, 1, 10, 0, 0, NULL, 'Inherit', 'Inherit', 0, 0),
(144, 47, 3, 1, 1, 1, 'Blog', '2018-09-28 11:19:20', '2018-09-28 11:19:03', 'blogs', 'Blogs', NULL, NULL, NULL, NULL, 1, 1, 5, 0, 0, NULL, 'Inherit', 'Inherit', 0, 0),
(145, 48, 1, 0, 1, 0, 'BlogPost', '2018-09-28 16:01:17', '2018-09-28 16:01:17', 'new-blog-post', 'New Blog Post', NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 47, 0),
(146, 48, 2, 0, 1, 0, 'BlogPost', '2018-09-28 16:07:31', '2018-09-28 16:01:17', 'harkness-reunion-20-22-july-2018', 'Harkness Reunion 20-22 July 2018', NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 47, 0),
(147, 48, 3, 1, 1, 1, 'BlogPost', '2018-09-28 16:07:31', '2018-09-28 16:01:17', 'harkness-reunion-20-22-july-2018', 'Harkness Reunion 20-22 July 2018', NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 47, 0),
(148, 48, 4, 0, 1, 0, 'BlogPost', '2018-09-28 16:09:15', '2018-09-28 16:01:17', 'harkness-reunion-20-22-july-2018', 'Harkness Reunion 20-22 July 2018', NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 47, 0),
(149, 48, 5, 1, 1, 1, 'BlogPost', '2018-09-28 16:09:15', '2018-09-28 16:01:17', 'harkness-reunion-20-22-july-2018', 'Harkness Reunion 20-22 July 2018', NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 47, 0),
(150, 49, 1, 0, 1, 0, 'BlogPost', '2018-09-28 16:09:21', '2018-09-28 16:09:21', 'new-blog-post', 'New Blog Post', NULL, NULL, NULL, NULL, 0, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 47, 0),
(151, 49, 2, 1, 1, 1, 'BlogPost', '2018-09-28 16:19:19', '2018-09-28 16:09:21', 'pharmac-hospital-medicines-into-combined-pharmaceutical-budget', 'eCALD improving cross-cultural practice', NULL, NULL, NULL, NULL, 0, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 47, 0),
(152, 49, 3, 1, 1, 1, 'BlogPost', '2018-09-28 16:44:10', '2018-09-28 16:09:21', 'pharmac-hospital-medicines-into-combined-pharmaceutical-budget', 'eCALD improving cross-cultural practice', NULL, NULL, NULL, NULL, 0, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 47, 0),
(153, 50, 1, 0, 1, 0, 'BlogPost', '2018-09-28 16:44:15', '2018-09-28 16:44:15', 'new-blog-post', 'New Blog Post', NULL, NULL, NULL, NULL, 0, 1, 3, 0, 0, NULL, 'Inherit', 'Inherit', 47, 0),
(154, 50, 2, 0, 1, 0, 'BlogPost', '2018-09-28 16:47:38', '2018-09-28 16:44:15', 'the-potential-of-mobile-health-reaching-those-in-need', 'The potential of mobile health - reaching those in need', NULL, NULL, NULL, NULL, 0, 1, 3, 0, 0, NULL, 'Inherit', 'Inherit', 47, 0),
(155, 50, 3, 1, 1, 1, 'BlogPost', '2018-09-28 16:47:38', '2018-09-28 16:44:15', 'the-potential-of-mobile-health-reaching-those-in-need', 'The potential of mobile health - reaching those in need', NULL, NULL, NULL, NULL, 0, 1, 3, 0, 0, NULL, 'Inherit', 'Inherit', 47, 0),
(156, 50, 4, 1, 1, 1, 'BlogPost', '2018-09-28 16:48:20', '2018-09-28 16:44:15', 'the-potential-of-mobile-health-reaching-those-in-need', 'The potential of mobile health - reaching those in need', NULL, NULL, NULL, NULL, 0, 1, 3, 0, 0, NULL, 'Inherit', 'Inherit', 47, 0),
(157, 50, 5, 1, 1, 1, 'BlogPost', '2018-09-28 16:50:17', '2018-09-28 16:44:15', 'the-potential-of-mobile-health-reaching-those-in-need', 'The potential of mobile health - reaching those in need', NULL, NULL, NULL, NULL, 0, 1, 3, 0, 0, NULL, 'Inherit', 'Inherit', 47, 0),
(158, 51, 1, 0, 1, 0, 'Page', '2018-10-01 12:24:25', '2018-10-01 12:24:25', 'new-page', 'New Page', NULL, NULL, NULL, NULL, 1, 1, 11, 0, 0, NULL, 'Inherit', 'Inherit', 0, 0),
(159, 51, 2, 1, 1, 1, 'Page', '2018-10-01 12:24:34', '2018-10-01 12:24:25', 'connect', 'Connect', NULL, NULL, NULL, NULL, 1, 1, 11, 0, 0, NULL, 'Inherit', 'Inherit', 0, 0),
(160, 51, 3, 1, 1, 1, 'Page', '2018-10-01 12:24:37', '2018-10-01 12:24:25', 'connect', 'Connect', NULL, NULL, NULL, NULL, 1, 1, 3, 0, 0, NULL, 'Inherit', 'Inherit', 0, 0),
(161, 20, 6, 0, 1, 0, 'Blog', '2018-10-01 12:24:44', '2018-09-24 17:00:46', 'news', 'Awards', NULL, NULL, NULL, NULL, 1, 1, 4, 0, 0, NULL, 'Inherit', 'Inherit', 51, 0),
(162, 20, 7, 1, 1, 1, 'Blog', '2018-10-01 12:24:44', '2018-09-24 17:00:46', 'news', 'Awards', NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 51, 0),
(163, 43, 4, 0, 1, 0, 'Blog', '2018-10-01 12:24:47', '2018-09-28 10:59:49', 'events', 'Events', NULL, NULL, NULL, NULL, 1, 1, 5, 0, 0, NULL, 'Inherit', 'Inherit', 51, 0),
(164, 43, 5, 1, 1, 1, 'Blog', '2018-10-01 12:24:47', '2018-09-28 10:59:49', 'events', 'Events', NULL, NULL, NULL, NULL, 1, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 51, 0),
(165, 47, 4, 0, 1, 0, 'Blog', '2018-10-01 12:24:53', '2018-09-28 11:19:03', 'blogs', 'Blogs', NULL, NULL, NULL, NULL, 1, 1, 6, 0, 0, NULL, 'Inherit', 'Inherit', 51, 0),
(166, 47, 5, 1, 1, 1, 'Blog', '2018-10-01 12:24:53', '2018-09-28 11:19:03', 'blogs', 'Blogs', NULL, NULL, NULL, NULL, 1, 1, 3, 0, 0, NULL, 'Inherit', 'Inherit', 51, 0),
(167, 27, 4, 0, 1, 0, 'TeamHolderPage', '2018-10-01 12:25:00', '2018-09-27 10:17:44', 'our-people', 'Our People', NULL, NULL, NULL, NULL, 1, 1, 11, 0, 0, NULL, 'Inherit', 'Inherit', 51, 0),
(168, 27, 5, 1, 1, 1, 'TeamHolderPage', '2018-10-01 12:25:00', '2018-09-27 10:17:44', 'our-people', 'Our People', NULL, NULL, NULL, NULL, 1, 1, 4, 0, 0, NULL, 'Inherit', 'Inherit', 51, 0),
(169, 50, 6, 1, 1, 1, 'BlogPost', '2018-10-01 14:26:51', '2018-09-28 16:44:15', 'the-potential-of-mobile-health-reaching-those-in-need', 'The potential of mobile health - reaching those in need', NULL, NULL, NULL, NULL, 0, 1, 3, 0, 0, NULL, 'Inherit', 'Inherit', 47, 0),
(170, 50, 7, 1, 1, 1, 'BlogPost', '2018-10-01 14:27:06', '2018-09-28 16:44:15', 'the-potential-of-mobile-health-reaching-those-in-need', 'The potential of mobile health - reaching those in need', NULL, NULL, NULL, NULL, 0, 1, 3, 0, 0, NULL, 'Inherit', 'Inherit', 47, 0),
(171, 50, 8, 1, 1, 1, 'BlogPost', '2018-10-01 14:27:29', '2018-09-28 16:44:15', 'the-potential-of-mobile-health-reaching-those-in-need', 'The potential of mobile health - reaching those in need', NULL, NULL, NULL, NULL, 0, 1, 3, 0, 0, NULL, 'Inherit', 'Inherit', 47, 0),
(172, 48, 6, 1, 1, 1, 'BlogPost', '2018-10-01 14:42:03', '2018-09-28 16:01:17', 'harkness-reunion-20-22-july-2018', 'Harkness Reunion 20-22 July 2018', NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 47, 0),
(173, 49, 4, 0, 1, 0, 'BlogPost', '2018-10-01 14:42:31', '2018-09-28 16:09:21', 'pharmac-hospital-medicines-into-combined-pharmaceutical-budget', 'eCALD improving cross-cultural practice', NULL, NULL, NULL, NULL, 0, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 47, 0),
(174, 49, 5, 1, 1, 1, 'BlogPost', '2018-10-01 14:42:31', '2018-09-28 16:09:21', 'pharmac-hospital-medicines-into-combined-pharmaceutical-budget', 'eCALD improving cross-cultural practice', NULL, NULL, NULL, NULL, 0, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 47, 0),
(175, 40, 7, 1, 1, 1, 'BlogPost', '2018-10-01 15:11:54', '2018-09-28 09:29:01', 'quality-improvement-workshops', 'Quality Improvement Workshops', NULL, NULL, NULL, NULL, 0, 1, 7, 0, 0, NULL, 'Inherit', 'Inherit', 43, 0),
(176, 41, 4, 1, 1, 1, 'BlogPost', '2018-10-01 15:15:00', '2018-09-28 10:53:48', 'pharmac-hospital-medicines-into-combined-pharmaceutical-budget', 'PHARMAC: Hospital  Medicines into Combined  Pharmaceutical Budget', NULL, NULL, NULL, NULL, 0, 1, 8, 0, 0, NULL, 'Inherit', 'Inherit', 43, 0),
(177, 42, 5, 1, 1, 1, 'BlogPost', '2018-10-01 15:15:30', '2018-09-28 10:58:05', 'artificial-intelligence-technologies-in-healthcare', 'Artificial Intelligence Technologies in Healthcare', NULL, NULL, NULL, NULL, 0, 1, 9, 0, 0, NULL, 'Inherit', 'Inherit', 43, 0),
(178, 42, 6, 1, 1, 1, 'BlogPost', '2018-10-01 15:17:04', '2018-09-28 10:58:05', 'artificial-intelligence-technologies-in-healthcare', 'Artificial Intelligence Technologies in Healthcare', NULL, NULL, NULL, NULL, 0, 1, 9, 0, 0, NULL, 'Inherit', 'Inherit', 43, 0),
(179, 46, 3, 1, 1, 1, 'BlogPost', '2018-10-01 15:17:55', '2018-09-28 11:17:16', 'o-and-g-conference-across-the-spectrum-and-beyond', 'O&G Conference: Across  the Spectrum & Beyond', NULL, NULL, NULL, NULL, 0, 1, 10, 0, 0, NULL, 'Inherit', 'Inherit', 43, 0),
(180, 52, 1, 0, 1, 0, '', '2018-10-01 17:21:42', '2018-10-01 17:21:42', 'new-events-holder-page', 'New Events Holder Page', NULL, NULL, NULL, NULL, 1, 1, 11, 0, 0, NULL, 'Inherit', 'Inherit', 0, 0),
(181, 52, 2, 0, 1, 0, '', '2018-10-01 17:22:37', '2018-10-01 17:21:42', 'new-events-holder-page', 'New Events Holder Page', NULL, NULL, NULL, NULL, 1, 1, 11, 0, 0, NULL, 'Inherit', 'Inherit', 51, 0),
(182, 52, 3, 0, 1, 0, '', '2018-10-01 17:22:37', '2018-10-01 17:21:42', 'new-events-holder-page', 'New Events Holder Page', NULL, NULL, NULL, NULL, 1, 1, 5, 0, 0, NULL, 'Inherit', 'Inherit', 51, 0),
(183, 52, 4, 0, 1, 0, '', '2018-10-01 17:22:41', '2018-10-01 17:21:42', 'new-events-holder-page', 'New Events Holder Page', NULL, NULL, NULL, NULL, 1, 1, 4, 0, 0, NULL, 'Inherit', 'Inherit', 51, 0),
(184, 52, 5, 1, 1, 1, '', '2018-10-01 17:22:45', '2018-10-01 17:21:42', 'events-2', 'Events', NULL, NULL, NULL, NULL, 1, 1, 4, 0, 0, NULL, 'Inherit', 'Inherit', 51, 0);
INSERT INTO `SiteTree_versions` (`ID`, `RecordID`, `Version`, `WasPublished`, `AuthorID`, `PublisherID`, `ClassName`, `LastEdited`, `Created`, `URLSegment`, `Title`, `MenuTitle`, `Content`, `MetaDescription`, `ExtraMeta`, `ShowInMenus`, `ShowInSearch`, `Sort`, `HasBrokenFile`, `HasBrokenLink`, `ReportClass`, `CanViewType`, `CanEditType`, `ParentID`, `SubsiteID`) VALUES
(185, 20, 8, 0, 1, 0, 'Blog', '2018-10-01 17:22:53', '2018-09-24 17:00:46', 'news', 'Awards', NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 0, 0),
(186, 20, 9, 1, 1, 1, 'Blog', '2018-10-01 17:22:54', '2018-09-24 17:00:46', 'news', 'Awards', NULL, NULL, NULL, NULL, 1, 1, 5, 0, 0, NULL, 'Inherit', 'Inherit', 0, 0),
(187, 43, 6, 0, 1, 0, 'Blog', '2018-10-01 17:22:58', '2018-09-28 10:59:49', 'events', 'Events', NULL, NULL, NULL, NULL, 1, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 0, 0),
(188, 43, 7, 1, 1, 1, 'Blog', '2018-10-01 17:22:58', '2018-09-28 10:59:49', 'events', 'Events', NULL, NULL, NULL, NULL, 1, 1, 6, 0, 0, NULL, 'Inherit', 'Inherit', 0, 0),
(189, 47, 6, 0, 1, 0, 'Blog', '2018-10-01 17:23:03', '2018-09-28 11:19:03', 'blogs', 'Blogs', NULL, NULL, NULL, NULL, 1, 1, 3, 0, 0, NULL, 'Inherit', 'Inherit', 0, 0),
(190, 47, 7, 1, 1, 1, 'Blog', '2018-10-01 17:23:03', '2018-09-28 11:19:03', 'blogs', 'Blogs', NULL, NULL, NULL, NULL, 1, 1, 7, 0, 0, NULL, 'Inherit', 'Inherit', 0, 0),
(191, 20, 10, 1, 1, 1, 'Blog', '2018-10-01 17:23:28', '2018-09-24 17:00:46', 'news', 'Awards', NULL, NULL, NULL, NULL, 0, 0, 5, 0, 0, NULL, 'Inherit', 'Inherit', 0, 0),
(192, 43, 8, 1, 1, 1, 'Blog', '2018-10-01 17:23:36', '2018-09-28 10:59:49', 'events', 'Events', NULL, NULL, NULL, NULL, 0, 0, 6, 0, 0, NULL, 'Inherit', 'Inherit', 0, 0),
(193, 47, 8, 1, 1, 1, 'Blog', '2018-10-01 17:23:43', '2018-09-28 11:19:03', 'blogs', 'Blogs', NULL, NULL, NULL, NULL, 0, 0, 7, 0, 0, NULL, 'Inherit', 'Inherit', 0, 0),
(194, 52, 6, 1, 1, 1, '', '2018-10-01 17:23:52', '2018-10-01 17:21:42', 'events', 'Events', NULL, NULL, NULL, NULL, 1, 1, 4, 0, 0, NULL, 'Inherit', 'Inherit', 51, 0),
(195, 52, 7, 1, 1, 1, '', '2018-10-01 17:36:10', '2018-10-01 17:21:42', 'events', 'Events', NULL, NULL, NULL, NULL, 1, 1, 4, 0, 0, NULL, 'Inherit', 'Inherit', 51, 0),
(196, 52, 8, 1, 1, 1, '', '2018-10-01 17:46:59', '2018-10-01 17:21:42', 'events', 'Events', NULL, '<h1 class=\"section-header\" style=\"text-align: center;\"><strong>OUR <span style=\"color: #ff7b1e;\"><span style=\"text-decoration: underline;\">EVENTS</span></span></strong> </h1>', NULL, NULL, 1, 1, 4, 0, 0, NULL, 'Inherit', 'Inherit', 51, 0),
(197, 52, 9, 1, 1, 1, '', '2018-10-03 14:56:37', '2018-10-01 17:21:42', 'events', 'Events', NULL, '<h1 class=\"section-header\" style=\"text-align: center;\"><strong>OUR <span style=\"color: #ff7b1e;\"><span style=\"text-decoration: underline;\">EVENTS</span></span></strong> </h1>', NULL, NULL, 1, 1, 4, 0, 0, NULL, 'Inherit', 'Inherit', 51, 0),
(198, 52, 10, 1, 1, 1, '', '2018-10-03 15:29:56', '2018-10-01 17:21:42', 'events', 'Events', NULL, '<h1 class=\"section-header\" style=\"text-align: center;\"><strong>OUR <span style=\"color: #ff7b1e;\"><span style=\"text-decoration: underline;\">EVENTS</span></span></strong> </h1>', NULL, NULL, 1, 1, 4, 0, 0, NULL, 'Inherit', 'Inherit', 51, 0),
(199, 52, 11, 1, 1, 1, '', '2018-10-03 15:31:10', '2018-10-01 17:21:42', 'events', 'Events', NULL, '<h1 class=\"section-header\" style=\"text-align: center;\"><strong>OUR <span style=\"color: #ff7b1e;\"><span style=\"text-decoration: underline;\">EVENTS</span></span></strong> </h1>', NULL, NULL, 1, 1, 4, 0, 0, NULL, 'Inherit', 'Inherit', 51, 0),
(200, 52, 12, 1, 1, 1, '', '2018-10-03 16:51:28', '2018-10-01 17:21:42', 'events', 'Events', NULL, '<h1 class=\"section-header\" style=\"text-align: center;\"><strong>OUR <span style=\"color: #ff7b1e;\"><span style=\"text-decoration: underline;\">EVENTS</span></span></strong> </h1>', NULL, NULL, 1, 1, 4, 0, 0, NULL, 'Inherit', 'Inherit', 51, 0),
(201, 40, 8, 1, 1, 1, 'BlogPost', '2018-10-03 16:56:14', '2018-09-28 09:29:01', 'quality-improvement-workshops', 'Quality Improvement Workshops', NULL, NULL, NULL, NULL, 0, 1, 7, 0, 0, NULL, 'Inherit', 'Inherit', 43, 0),
(202, 41, 5, 1, 1, 1, 'BlogPost', '2018-10-03 17:08:36', '2018-09-28 10:53:48', 'pharmac-hospital-medicines-into-combined-pharmaceutical-budget', 'PHARMAC: Hospital  Medicines into Combined  Pharmaceutical Budget', NULL, NULL, NULL, NULL, 0, 1, 8, 0, 0, NULL, 'Inherit', 'Inherit', 43, 0),
(203, 46, 4, 1, 1, 1, 'BlogPost', '2018-10-03 17:09:06', '2018-09-28 11:17:16', 'o-and-g-conference-across-the-spectrum-and-beyond', 'O&G Conference: Across  the Spectrum & Beyond', NULL, NULL, NULL, NULL, 0, 1, 10, 0, 0, NULL, 'Inherit', 'Inherit', 43, 0),
(204, 42, 7, 1, 1, 1, 'BlogPost', '2018-10-03 17:09:15', '2018-09-28 10:58:05', 'artificial-intelligence-technologies-in-healthcare', 'Artificial Intelligence Technologies in Healthcare', NULL, NULL, NULL, NULL, 0, 1, 9, 0, 0, NULL, 'Inherit', 'Inherit', 43, 0),
(205, 46, 5, 1, 1, 1, 'BlogPost', '2018-10-03 17:14:19', '2018-09-28 11:17:16', 'o-and-g-conference-across-the-spectrum-and-beyond', 'O&G Conference: Across  the Spectrum & Beyond', NULL, NULL, NULL, NULL, 0, 1, 10, 0, 0, NULL, 'Inherit', 'Inherit', 43, 0),
(206, 43, 9, 1, 1, 1, 'Blog', '2018-10-04 14:49:08', '2018-09-28 10:59:49', 'events', 'Events', NULL, NULL, NULL, NULL, 0, 0, 6, 0, 0, NULL, 'Inherit', 'Inherit', 0, 0),
(207, 43, 10, 1, 1, 1, 'Blog', '2018-10-04 14:50:45', '2018-09-28 10:59:49', 'events', 'Events', NULL, '<h1 class=\"section-header\" style=\"text-align: center;\"><strong>OUR <span><span><span class=\"color-orange\"><span style=\"text-decoration: underline;\">EVENTS</span></span></span></span></strong> </h1>', NULL, NULL, 0, 0, 6, 0, 0, NULL, 'Inherit', 'Inherit', 0, 0),
(208, 52, 13, 0, 1, 0, '', '2018-10-04 14:52:48', '2018-10-01 17:21:42', 'events-2', 'Events', NULL, '<h1 class=\"section-header\" style=\"text-align: center;\"><strong>OUR <span style=\"color: #ff7b1e;\"><span style=\"text-decoration: underline;\">EVENTS</span></span></strong> </h1>', NULL, NULL, 1, 1, 4, 0, 0, NULL, 'Inherit', 'Inherit', 0, 0),
(209, 52, 14, 0, 1, 0, '', '2018-10-04 14:52:49', '2018-10-01 17:21:42', 'events-2', 'Events', NULL, '<h1 class=\"section-header\" style=\"text-align: center;\"><strong>OUR <span style=\"color: #ff7b1e;\"><span style=\"text-decoration: underline;\">EVENTS</span></span></strong> </h1>', NULL, NULL, 1, 1, 6, 0, 0, NULL, 'Inherit', 'Inherit', 0, 0),
(210, 43, 11, 0, 1, 0, 'Blog', '2018-10-04 14:52:52', '2018-09-28 10:59:49', 'events', 'Events', NULL, '<h1 class=\"section-header\" style=\"text-align: center;\"><strong>OUR <span><span><span class=\"color-orange\"><span style=\"text-decoration: underline;\">EVENTS</span></span></span></span></strong> </h1>', NULL, NULL, 0, 0, 7, 0, 0, NULL, 'Inherit', 'Inherit', 51, 0),
(211, 43, 12, 1, 1, 1, 'Blog', '2018-10-04 14:52:53', '2018-09-28 10:59:49', 'events', 'Events', NULL, '<h1 class=\"section-header\" style=\"text-align: center;\"><strong>OUR <span><span><span class=\"color-orange\"><span style=\"text-decoration: underline;\">EVENTS</span></span></span></span></strong> </h1>', NULL, NULL, 0, 0, 2, 0, 0, NULL, 'Inherit', 'Inherit', 51, 0),
(212, 43, 13, 1, 1, 1, 'Blog', '2018-10-04 15:04:05', '2018-09-28 10:59:49', 'events', 'Events', NULL, '<h1 class=\"section-header\" style=\"text-align: center;\"><strong>OUR <span><span><span class=\"color-orange\"><span style=\"text-decoration: underline;\">EVENTS</span></span></span></span></strong> </h1>', NULL, NULL, 0, 0, 2, 0, 0, NULL, 'Inherit', 'Inherit', 51, 0),
(213, 43, 14, 1, 1, 1, 'Blog', '2018-10-04 15:43:03', '2018-09-28 10:59:49', 'events', 'Events', NULL, '<h1 class=\"section-header\" style=\"text-align: center;\"><strong>OUR <span><span><span class=\"color-orange\"><span style=\"text-decoration: underline;\">EVENTS</span></span></span></span></strong> </h1>', NULL, NULL, 0, 0, 2, 0, 0, NULL, 'Inherit', 'Inherit', 51, 0),
(214, 27, 6, 1, 1, 1, 'TeamHolderPage', '2018-10-04 16:44:03', '2018-09-27 10:17:44', 'our-people', 'Our People', NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 51, 0),
(215, 27, 7, 1, 1, 1, 'TeamHolderPage', '2018-10-04 16:48:35', '2018-09-27 10:17:44', 'our-people', 'Our People', NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 51, 0),
(216, 27, 8, 1, 1, 1, 'TeamHolderPage', '2018-10-04 16:54:22', '2018-09-27 10:17:44', 'our-team', 'Our Team', NULL, '<h1 class=\"section-header\" style=\"text-align: center;\"><strong>OUR <span class=\"color-orange\"><span style=\"text-decoration: underline;\">TEAM</span></span><span style=\"text-decoration: underline;\"><span class=\"color-orange\"><br></span></span></strong></h1>', NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 51, 0),
(217, 27, 9, 1, 1, 1, 'TeamHolderPage', '2018-10-04 17:22:05', '2018-09-27 10:17:44', 'our-team', 'Our Team', NULL, '<h1 class=\"section-header\" style=\"text-align: center;\"><strong>OUR <span class=\"color-orange\"><span style=\"text-decoration: underline;\">TEAM</span></span><span style=\"text-decoration: underline;\"><span class=\"color-orange\"><br></span></span></strong></h1>', NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 51, 0),
(218, 27, 10, 1, 1, 1, 'TeamHolderPage', '2018-10-04 17:22:38', '2018-09-27 10:17:44', 'our-team', 'Our Team', NULL, '<h1 class=\"section-header\" style=\"text-align: center;\"><strong>OUR <span class=\"color-orange\"><span style=\"text-decoration: underline;\">TEAM</span></span><span style=\"text-decoration: underline;\"><span class=\"color-orange\"><br></span></span></strong></h1>', NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 51, 0),
(219, 27, 11, 1, 1, 1, 'TeamHolderPage', '2018-10-04 17:22:49', '2018-09-27 10:17:44', 'our-team', 'Our Team', NULL, '<h1 class=\"section-header\" style=\"text-align: center;\"><strong>OUR <span class=\"color-orange\"><span style=\"text-decoration: underline;\">TEAM</span></span><span style=\"text-decoration: underline;\"><span class=\"color-orange\"><br></span></span></strong></h1>', NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 51, 0),
(220, 28, 5, 1, 1, 1, 'ProfilePage', '2018-10-08 16:06:26', '2018-09-27 10:17:56', 'elna-meller-2', 'Elna Meller', NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 27, 0),
(221, 29, 4, 1, 1, 1, 'ProfilePage', '2018-10-08 16:08:37', '2018-09-27 14:35:22', 'sharon-puddle-2', 'Sharon Puddle', NULL, NULL, NULL, NULL, 1, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 27, 0),
(222, 28, 6, 1, 1, 1, 'ProfilePage', '2018-10-08 16:08:54', '2018-09-27 10:17:56', 'elna-meller-2', 'Elna Meller', NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 27, 0),
(223, 30, 4, 1, 1, 1, 'ProfilePage', '2018-10-08 16:11:07', '2018-09-27 16:11:48', 'michael-sheehan', 'Michael Sheehan', NULL, NULL, NULL, NULL, 1, 1, 3, 0, 0, NULL, 'Inherit', 'Inherit', 27, 0),
(224, 31, 3, 1, 1, 1, 'ProfilePage', '2018-10-08 16:11:59', '2018-09-27 16:40:14', 'delwyn-armstrong', 'Delwyn Armstrong', NULL, NULL, NULL, NULL, 1, 1, 4, 0, 0, NULL, 'Inherit', 'Inherit', 27, 0),
(225, 28, 7, 1, 1, 1, 'ProfilePage', '2018-10-08 16:22:22', '2018-09-27 10:17:56', 'elna-meller-2', 'Elna Meller', NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 27, 0),
(226, 29, 5, 1, 1, 1, 'ProfilePage', '2018-10-08 16:22:34', '2018-09-27 14:35:22', 'sharon-puddle-2', 'Sharon Puddle', NULL, NULL, NULL, NULL, 1, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 27, 0),
(227, 30, 5, 1, 1, 1, 'ProfilePage', '2018-10-08 16:22:45', '2018-09-27 16:11:48', 'michael-sheehan', 'Michael Sheehan', NULL, NULL, NULL, NULL, 1, 1, 3, 0, 0, NULL, 'Inherit', 'Inherit', 27, 0),
(228, 30, 6, 1, 1, 1, 'ProfilePage', '2018-10-09 09:06:00', '2018-09-27 16:11:48', 'michael-sheehan', 'Michael Sheehan', NULL, NULL, NULL, NULL, 1, 1, 3, 0, 0, NULL, 'Inherit', 'Inherit', 27, 0),
(229, 30, 7, 1, 1, 1, 'ProfilePage', '2018-10-09 09:09:14', '2018-09-27 16:11:48', 'michael-sheehan', 'Michael Sheehan', NULL, NULL, NULL, NULL, 1, 1, 3, 0, 0, NULL, 'Inherit', 'Inherit', 27, 0),
(230, 29, 6, 1, 1, 1, 'ProfilePage', '2018-10-09 09:14:38', '2018-09-27 14:35:22', 'sharon-puddle-2', 'Sharon Puddle', NULL, NULL, NULL, NULL, 1, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 27, 0),
(231, 28, 8, 1, 1, 1, 'ProfilePage', '2018-10-09 09:19:02', '2018-09-27 10:17:56', 'elna-meller-2', 'Elna Meller', NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 27, 0),
(232, 31, 4, 1, 1, 1, 'ProfilePage', '2018-10-09 09:23:24', '2018-09-27 16:40:14', 'delwyn-armstrong', 'Delwyn Armstrong', NULL, NULL, NULL, NULL, 1, 1, 4, 0, 0, NULL, 'Inherit', 'Inherit', 27, 0),
(233, 38, 3, 1, 1, 1, 'ProfilePage', '2018-10-09 14:01:56', '2018-09-27 16:59:21', 'dina-emmanuel', 'Dina Emmanuel', NULL, NULL, NULL, NULL, 1, 1, 11, 0, 0, NULL, 'Inherit', 'Inherit', 27, 0),
(234, 32, 3, 1, 1, 1, 'ProfilePage', '2018-10-09 15:59:23', '2018-09-27 16:46:52', 'elna-meller', 'Sue French', NULL, NULL, NULL, NULL, 1, 1, 5, 0, 0, NULL, 'Inherit', 'Inherit', 27, 0),
(235, 32, 4, 1, 1, 1, 'ProfilePage', '2018-10-09 15:59:34', '2018-09-27 16:46:52', 'sue-french', 'Sue French', NULL, NULL, NULL, NULL, 1, 1, 5, 0, 0, NULL, 'Inherit', 'Inherit', 27, 0),
(236, 33, 3, 1, 1, 1, 'ProfilePage', '2018-10-09 16:02:36', '2018-09-27 16:49:10', 'renee-kong', 'Renee Kong', NULL, NULL, NULL, NULL, 1, 1, 6, 0, 0, NULL, 'Inherit', 'Inherit', 27, 0),
(237, 34, 3, 1, 1, 1, 'ProfilePage', '2018-10-09 16:05:55', '2018-09-27 16:49:33', 'dr-maneesh-deva', 'Dr Maneesh Deva', NULL, NULL, NULL, NULL, 1, 1, 7, 0, 0, NULL, 'Inherit', 'Inherit', 27, 0),
(238, 35, 3, 1, 1, 1, 'ProfilePage', '2018-10-09 16:18:48', '2018-09-27 16:50:09', 'sangeeta-gupta', 'Sangeeta Gupta', NULL, NULL, NULL, NULL, 1, 1, 8, 0, 0, NULL, 'Inherit', 'Inherit', 27, 0),
(239, 30, 8, 1, 1, 1, 'ProfilePage', '2018-10-10 10:46:08', '2018-09-27 16:11:48', 'michael-sheehan', 'Michael Sheehan', NULL, NULL, NULL, NULL, 1, 1, 3, 0, 0, NULL, 'Inherit', 'Inherit', 27, 0),
(240, 36, 3, 1, 1, 1, 'ProfilePage', '2018-10-10 11:16:14', '2018-09-27 16:57:59', 'dr-jerome-ng', 'Dr Jerome Ng', NULL, NULL, NULL, NULL, 1, 1, 9, 0, 0, NULL, 'Inherit', 'Inherit', 27, 0),
(241, 36, 4, 1, 1, 1, 'ProfilePage', '2018-10-10 11:16:28', '2018-09-27 16:57:59', 'dr-jerome-ng', 'Dr Jerome Ng', NULL, NULL, NULL, NULL, 1, 1, 9, 0, 0, NULL, 'Inherit', 'Inherit', 27, 0),
(242, 37, 3, 1, 1, 1, 'ProfilePage', '2018-10-10 11:43:21', '2018-09-27 16:58:32', 'jane-yang', 'Jane Yang', NULL, NULL, NULL, NULL, 1, 1, 10, 0, 0, NULL, 'Inherit', 'Inherit', 27, 0),
(243, 37, 4, 1, 1, 1, 'ProfilePage', '2018-10-10 11:48:08', '2018-09-27 16:58:32', 'jane-yang', 'Jane Yang', NULL, NULL, NULL, NULL, 1, 1, 10, 0, 0, NULL, 'Inherit', 'Inherit', 27, 0),
(244, 37, 5, 1, 1, 1, 'ProfilePage', '2018-10-10 11:55:15', '2018-09-27 16:58:32', 'jane-yang', 'Jane Yang', NULL, NULL, NULL, NULL, 1, 1, 10, 0, 0, NULL, 'Inherit', 'Inherit', 27, 0),
(245, 37, 6, 1, 1, 1, 'ProfilePage', '2018-10-10 12:13:48', '2018-09-27 16:58:32', 'jane-yang', 'Jane Yang', NULL, NULL, NULL, NULL, 1, 1, 10, 0, 0, NULL, 'Inherit', 'Inherit', 27, 0),
(246, 39, 3, 1, 1, 1, 'ProfilePage', '2018-10-10 13:27:29', '2018-09-27 16:59:46', 'lisa-sue', 'Lisa Sue', NULL, NULL, NULL, NULL, 1, 1, 12, 0, 0, NULL, 'Inherit', 'Inherit', 27, 0),
(247, 39, 4, 1, 1, 1, 'ProfilePage', '2018-10-10 14:10:13', '2018-09-27 16:59:46', 'lisa-sue', 'Lisa Sue', NULL, NULL, NULL, NULL, 1, 1, 12, 0, 0, NULL, 'Inherit', 'Inherit', 27, 0),
(248, 38, 4, 1, 1, 1, 'ProfilePage', '2018-10-10 14:28:39', '2018-09-27 16:59:21', 'dina-emmanuel', 'Dina Emmanuel', NULL, NULL, NULL, NULL, 1, 1, 11, 0, 0, NULL, 'Inherit', 'Inherit', 27, 0),
(249, 28, 9, 1, 1, 1, 'ProfilePage', '2018-10-10 14:31:32', '2018-09-27 10:17:56', 'elna-meller-2', 'Elna Meller', NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 27, 0),
(250, 30, 9, 1, 1, 1, 'ProfilePage', '2018-10-10 14:32:22', '2018-09-27 16:11:48', 'michael-sheehan', 'Michael Sheehan', NULL, NULL, NULL, NULL, 1, 1, 3, 0, 0, NULL, 'Inherit', 'Inherit', 27, 0),
(251, 34, 4, 1, 1, 1, 'ProfilePage', '2018-10-10 14:32:38', '2018-09-27 16:49:33', 'dr-maneesh-deva', 'Dr Maneesh Deva', NULL, NULL, NULL, NULL, 1, 1, 7, 0, 0, NULL, 'Inherit', 'Inherit', 27, 0),
(252, 34, 5, 1, 1, 1, 'ProfilePage', '2018-10-10 14:36:57', '2018-09-27 16:49:33', 'dr-maneesh-deva', 'Dr Maneesh Deva', NULL, NULL, NULL, NULL, 1, 1, 7, 0, 0, NULL, 'Inherit', 'Inherit', 27, 0),
(253, 30, 10, 1, 1, 1, 'ProfilePage', '2018-10-10 14:58:47', '2018-09-27 16:11:48', 'michael-sheehan', 'Michael Sheehan', NULL, NULL, NULL, NULL, 1, 1, 3, 0, 0, NULL, 'Inherit', 'Inherit', 27, 0),
(254, 29, 7, 1, 1, 1, 'ProfilePage', '2018-10-10 15:04:13', '2018-09-27 14:35:22', 'sharon-puddle-2', 'Sharon Puddle', NULL, NULL, NULL, NULL, 1, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 27, 0),
(255, 32, 5, 1, 1, 1, 'ProfilePage', '2018-10-10 15:04:28', '2018-09-27 16:46:52', 'sue-french', 'Sue French', NULL, NULL, NULL, NULL, 1, 1, 5, 0, 0, NULL, 'Inherit', 'Inherit', 27, 0),
(256, 31, 5, 1, 1, 1, 'ProfilePage', '2018-10-10 15:04:37', '2018-09-27 16:40:14', 'delwyn-armstrong', 'Delwyn Armstrong', NULL, NULL, NULL, NULL, 1, 1, 4, 0, 0, NULL, 'Inherit', 'Inherit', 27, 0),
(257, 33, 4, 1, 1, 1, 'ProfilePage', '2018-10-10 15:04:57', '2018-09-27 16:49:10', 'renee-kong', 'Renee Kong', NULL, NULL, NULL, NULL, 1, 1, 6, 0, 0, NULL, 'Inherit', 'Inherit', 27, 0),
(258, 35, 4, 1, 1, 1, 'ProfilePage', '2018-10-10 15:05:09', '2018-09-27 16:50:09', 'sangeeta-gupta', 'Sangeeta Gupta', NULL, NULL, NULL, NULL, 1, 1, 8, 0, 0, NULL, 'Inherit', 'Inherit', 27, 0),
(259, 36, 5, 1, 1, 1, 'ProfilePage', '2018-10-10 15:08:19', '2018-09-27 16:57:59', 'dr-jerome-ng', 'Dr Jerome Ng', NULL, NULL, NULL, NULL, 1, 1, 9, 0, 0, NULL, 'Inherit', 'Inherit', 27, 0),
(260, 37, 7, 1, 1, 1, 'ProfilePage', '2018-10-10 15:13:46', '2018-09-27 16:58:32', 'jane-yang', 'Jane Yang', NULL, NULL, NULL, NULL, 1, 1, 10, 0, 0, NULL, 'Inherit', 'Inherit', 27, 0),
(261, 39, 5, 1, 1, 1, 'ProfilePage', '2018-10-10 15:16:57', '2018-09-27 16:59:46', 'lisa-sue', 'Lisa Sue', NULL, NULL, NULL, NULL, 1, 1, 12, 0, 0, NULL, 'Inherit', 'Inherit', 27, 0),
(262, 52, 15, 0, 1, 0, 'ProfilePage', '2018-10-10 16:53:23', '2018-10-10 16:53:23', 'new-profile-page', 'New Profile Page', NULL, NULL, NULL, NULL, 1, 1, 13, 0, 0, NULL, 'Inherit', 'Inherit', 27, 0),
(263, 52, 16, 1, 1, 1, 'ProfilePage', '2018-10-10 17:11:43', '2018-10-10 16:53:23', 'kevin', 'Kevin', NULL, NULL, NULL, NULL, 1, 1, 13, 0, 0, NULL, 'Inherit', 'Inherit', 27, 0),
(264, 52, 17, 1, 1, 1, 'ProfilePage', '2018-10-10 17:11:50', '2018-10-10 16:53:23', 'kevin', 'Kevin', NULL, NULL, NULL, NULL, 1, 1, 13, 0, 0, NULL, 'Inherit', 'Inherit', 27, 0),
(265, 33, 5, 1, 1, 1, 'ProfilePage', '2018-10-11 14:58:37', '2018-09-27 16:49:10', 'renee-kong', 'Renee Kong', NULL, NULL, NULL, NULL, 1, 1, 6, 0, 0, NULL, 'Inherit', 'Inherit', 27, 0),
(266, 53, 1, 0, 1, 0, 'ProfilePage', '2018-10-11 16:27:36', '2018-10-11 16:27:36', 'new-profile-page', 'New Profile Page', NULL, NULL, NULL, NULL, 1, 1, 14, 0, 0, NULL, 'Inherit', 'Inherit', 27, 0),
(267, 53, 2, 1, 1, 1, 'ProfilePage', '2018-10-12 10:07:02', '2018-10-11 16:27:36', 'jay-obrien', 'Jay O\'Brien', NULL, NULL, NULL, NULL, 1, 1, 14, 0, 0, NULL, 'Inherit', 'Inherit', 27, 0),
(268, 53, 3, 1, 1, 1, 'ProfilePage', '2018-10-12 10:07:28', '2018-10-11 16:27:36', 'jay-obrien', 'Jay O\'Brien', NULL, NULL, NULL, NULL, 1, 1, 14, 0, 0, NULL, 'Inherit', 'Inherit', 27, 0),
(269, 54, 1, 1, 1, 1, 'Page', '2018-10-15 15:25:46', '2018-10-15 15:25:46', 'home', 'Home', NULL, '<p>Welcome to SilverStripe! This is the default home page. You can edit this page by opening <a href=\"admin/\">the CMS</a>. You can now access the <a href=\"http://doc.silverstripe.org\">developer documentation</a>, or begin <a href=\"http://doc.silverstripe.org/doku.php?id=tutorials\">the tutorials.</a></p>', NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 0, 1),
(270, 54, 2, 1, 1, 1, 'MultiContentPage', '2018-10-17 11:20:18', '2018-10-15 15:25:46', 'home', 'Home', NULL, '<p>Welcome to SilverStripe! This is the default home page. You can edit this page by opening <a href=\"admin/\">the CMS</a>. You can now access the <a href=\"http://doc.silverstripe.org\">developer documentation</a>, or begin <a href=\"http://doc.silverstripe.org/doku.php?id=tutorials\">the tutorials.</a></p>', NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 0, 1),
(271, 55, 1, 0, 1, 0, 'Blog', '2018-10-17 16:38:51', '2018-10-17 16:38:51', 'new-blog', 'New Blog', NULL, NULL, NULL, NULL, 1, 1, 12, 0, 0, NULL, 'Inherit', 'Inherit', 0, 1),
(272, 56, 1, 0, 1, 0, 'BlogPost', '2018-10-17 16:38:57', '2018-10-17 16:38:57', 'new-blog-post', 'New Blog Post', NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 55, 1),
(273, 56, 2, 0, 1, 0, 'BlogPost', '2018-10-17 16:56:40', '2018-10-17 16:38:57', 'learning-session-2-city', 'Learning Session 2 - City', NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 55, 1),
(274, 56, 3, 1, 1, 1, 'BlogPost', '2018-10-17 16:56:40', '2018-10-17 16:38:57', 'learning-session-2-city', 'Learning Session 2 - City', NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 55, 1),
(275, 55, 2, 1, 1, 1, 'Blog', '2018-10-17 16:56:52', '2018-10-17 16:38:51', 'events', 'Events', NULL, NULL, NULL, NULL, 1, 1, 12, 0, 0, NULL, 'Inherit', 'Inherit', 0, 1),
(276, 57, 1, 0, 1, 0, 'BlogPost', '2018-10-17 16:56:56', '2018-10-17 16:56:56', 'new-blog-post', 'New Blog Post', NULL, NULL, NULL, NULL, 0, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 55, 1),
(277, 56, 4, 1, 1, 1, 'BlogPost', '2018-10-17 16:58:28', '2018-10-17 16:38:57', 'learning-session-2-city', 'Learning Session 2 - City', NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 55, 1),
(278, 56, 5, 1, 1, 1, 'BlogPost', '2018-10-17 16:58:40', '2018-10-17 16:38:57', 'learning-session-2-city', 'Learning Session 2', NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 55, 1),
(279, 56, 6, 1, 1, 1, 'BlogPost', '2018-10-17 16:59:18', '2018-10-17 16:38:57', 'learning-session-2-city', 'Learning Session 2', NULL, '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>', NULL, NULL, 0, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 55, 1),
(280, 57, 2, 0, 1, 0, 'BlogPost', '2018-10-17 17:00:17', '2018-10-17 16:56:56', 'learning-session-2', 'Learning Session 2', NULL, '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>', NULL, NULL, 0, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 55, 1),
(281, 57, 3, 1, 1, 1, 'BlogPost', '2018-10-17 17:00:17', '2018-10-17 16:56:56', 'learning-session-2', 'Learning Session 2', NULL, '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>', NULL, NULL, 0, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 55, 1),
(282, 55, 3, 1, 1, 1, 'Blog', '2018-10-17 17:06:44', '2018-10-17 16:38:51', 'events', 'Events', NULL, '<h1><strong>EVENTS</strong></h1>', NULL, NULL, 1, 1, 12, 0, 0, NULL, 'Inherit', 'Inherit', 0, 1),
(283, 57, 4, 1, 1, 1, 'BlogPost', '2018-10-18 10:25:21', '2018-10-17 16:56:56', 'learning-session-2', 'Learning Session 2', NULL, '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>', NULL, NULL, 0, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 55, 1),
(284, 57, 5, 1, 1, 1, 'BlogPost', '2018-10-18 10:48:48', '2018-10-17 16:56:56', 'learning-session-2', 'Learning Session 2', NULL, '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>', NULL, NULL, 0, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 55, 1),
(285, 56, 7, 1, 1, 1, 'BlogPost', '2018-10-18 10:48:55', '2018-10-17 16:38:57', 'learning-session-2-city', 'Learning Session 2', NULL, '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>', NULL, NULL, 0, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 55, 1),
(286, 57, 6, 1, 1, 1, 'BlogPost', '2018-10-18 12:08:32', '2018-10-17 16:56:56', 'learning-session-2', 'Learning Session 2', NULL, '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>', NULL, NULL, 0, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 55, 1),
(287, 56, 8, 1, 1, 1, 'BlogPost', '2018-10-18 12:21:59', '2018-10-17 16:38:57', 'learning-session-2-city', 'Learning Session 2', NULL, '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>', NULL, NULL, 0, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 55, 1),
(288, 56, 9, 1, 1, 1, 'BlogPost', '2018-10-18 12:22:20', '2018-10-17 16:38:57', 'learning-session-2-city', 'Learning Session 2', NULL, '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>', NULL, NULL, 0, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 55, 1),
(289, 57, 7, 1, 1, 1, 'BlogPost', '2018-10-18 12:22:29', '2018-10-17 16:56:56', 'learning-session-2', 'Learning Session 2', NULL, '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>', NULL, NULL, 0, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 55, 1),
(290, 57, 8, 1, 1, 1, 'BlogPost', '2018-10-18 12:24:50', '2018-10-17 16:56:56', 'learning-session-2', 'Learning Session 2', NULL, '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>', NULL, NULL, 0, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 55, 1),
(291, 56, 10, 1, 1, 1, 'BlogPost', '2018-10-18 12:24:58', '2018-10-17 16:38:57', 'learning-session-2-city', 'Learning Session 2', NULL, '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>', NULL, NULL, 0, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 55, 1),
(292, 56, 11, 1, 1, 1, 'BlogPost', '2018-10-18 12:25:21', '2018-10-17 16:38:57', 'learning-session-2-city', 'Learning Session 2', NULL, '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>', NULL, NULL, 0, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 55, 1),
(293, 57, 9, 1, 1, 1, 'BlogPost', '2018-10-18 12:25:27', '2018-10-17 16:56:56', 'learning-session-2', 'Learning Session 2', NULL, '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>', NULL, NULL, 0, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 55, 1),
(294, 58, 1, 0, 1, 0, 'Blog', '2018-10-18 12:28:11', '2018-10-18 12:28:11', 'new-blog', 'New Blog', NULL, NULL, NULL, NULL, 1, 1, 13, 0, 0, NULL, 'Inherit', 'Inherit', 0, 1),
(295, 58, 2, 1, 1, 1, 'Blog', '2018-10-18 12:28:24', '2018-10-18 12:28:11', 'latest-news', 'Latest News', NULL, NULL, NULL, NULL, 1, 1, 13, 0, 0, NULL, 'Inherit', 'Inherit', 0, 1),
(296, 59, 1, 0, 1, 0, 'BlogPost', '2018-10-18 12:28:27', '2018-10-18 12:28:27', 'new-blog-post', 'New Blog Post', NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 58, 1),
(297, 59, 2, 0, 1, 0, 'BlogPost', '2018-10-18 12:29:17', '2018-10-18 12:28:27', 'learning', 'Learning set 1 - resources now available', NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 58, 1),
(298, 59, 3, 1, 1, 1, 'BlogPost', '2018-10-18 12:29:17', '2018-10-18 12:28:27', 'learning', 'Learning set 1 - resources now available', NULL, NULL, NULL, NULL, 0, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 58, 1),
(299, 59, 4, 1, 1, 1, 'BlogPost', '2018-10-18 12:34:17', '2018-10-18 12:28:27', 'learning', 'Learning set 1 - resources now available', NULL, '<p>A huge thank you to all who attended learning set 1 of 2018-19!<br><br></p>', NULL, NULL, 0, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 58, 1),
(300, 60, 1, 0, 1, 0, 'BlogPost', '2018-10-18 12:34:33', '2018-10-18 12:34:33', 'new-blog-post', 'New Blog Post', NULL, NULL, NULL, NULL, 0, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 58, 1),
(301, 60, 2, 0, 1, 0, 'BlogPost', '2018-10-18 12:35:05', '2018-10-18 12:34:33', 'prescribing-indicators-update', 'Prescribing Indicators Update', NULL, NULL, NULL, NULL, 0, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 58, 1),
(302, 60, 3, 1, 1, 1, 'BlogPost', '2018-10-18 12:35:05', '2018-10-18 12:34:33', 'prescribing-indicators-update', 'Prescribing Indicators Update', NULL, NULL, NULL, NULL, 0, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 58, 1),
(303, 59, 5, 1, 1, 1, 'BlogPost', '2018-10-18 12:37:13', '2018-10-18 12:28:27', 'learning', 'Learning set 1 - resources now available', NULL, '<p>A huge thank you to all who attended learning set 1 of 2018-19!<br><br></p>', NULL, NULL, 0, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 58, 1),
(304, 61, 1, 0, 1, 0, 'BlogPost', '2018-10-18 12:42:56', '2018-10-18 12:42:56', 'new-blog-post', 'New Blog Post', NULL, NULL, NULL, NULL, 0, 1, 3, 0, 0, NULL, 'Inherit', 'Inherit', 58, 1),
(305, 61, 2, 0, 1, 0, 'BlogPost', '2018-10-18 12:46:00', '2018-10-18 12:42:56', 'introducing-michael', 'Introducing Michael Hammond', NULL, NULL, NULL, NULL, 0, 1, 3, 0, 0, NULL, 'Inherit', 'Inherit', 58, 1),
(306, 61, 3, 1, 1, 1, 'BlogPost', '2018-10-18 12:46:00', '2018-10-18 12:42:56', 'introducing-michael', 'Introducing Michael Hammond', NULL, NULL, NULL, NULL, 0, 1, 3, 0, 0, NULL, 'Inherit', 'Inherit', 58, 1),
(307, 60, 4, 1, 1, 1, 'BlogPost', '2018-10-18 12:46:11', '2018-10-18 12:34:33', 'prescribing-indicators-update', 'Prescribing Indicators Update', NULL, NULL, NULL, NULL, 0, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 58, 1),
(308, 60, 5, 1, 1, 1, 'BlogPost', '2018-10-18 14:16:26', '2018-10-18 12:34:33', 'prescribing-indicators-update', 'Prescribing Indicators Update', NULL, NULL, NULL, NULL, 0, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 58, 1),
(309, 59, 6, 1, 1, 1, 'BlogPost', '2018-10-18 14:16:42', '2018-10-18 12:28:27', 'learning', 'Learning set 1 - resources now available', NULL, '<p>A huge thank you to all who attended learning set 1 of 2018-19!<br><br></p>', NULL, NULL, 0, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 58, 1),
(310, 59, 7, 1, 1, 1, 'BlogPost', '2018-10-18 14:17:06', '2018-10-18 12:28:27', 'learning', 'Learning set 1 - resources now available', NULL, '<p>A huge thank you to all who attended learning set 1 of 2018-19!</p>', NULL, NULL, 0, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 58, 1),
(311, 60, 6, 1, 1, 1, 'BlogPost', '2018-10-18 14:17:54', '2018-10-18 12:34:33', 'prescribing-indicators-update', 'Prescribing Indicators Update', NULL, '<p>When the queries went live with the roll-over of the month, they found that there were some kinks that needed reviewing and so they have withdrawn them to be corrected.  I understand that they will be updated hopefully by next Monday.  The queries that are currently under the Safety tab in Dr Info are INCORRECT for this year, and they will be getting a note put on them to this effect from tonight.  Please don’t try to use these ones as they will obviously not match with your spreadsheet!</p><p>Some of the hiccups that need to be ironed out with any new work!  Our apologies.  As soon as they are correct and updated I will let you know.</p><p>We understand that this is likely to result in a delay for many practices in sending the Prescribing Indicators spreadsheets by Sept 10<span>th</span> so just send them through as soon as you are able. </p><p>Remember to enter ‘0’ in areas where you don’t have any patients showing, including if you don’t have any in any of the categories. </p>', NULL, NULL, 0, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 58, 1),
(312, 61, 4, 1, 1, 1, 'BlogPost', '2018-10-18 14:19:58', '2018-10-18 12:42:56', 'introducing-michael', 'Introducing Michael Hammond', NULL, '<p>Please join us in welcoming our new project manager Michael Hammond.</p><p>Michael is no stranger to patient safety, having worked as a clinical pharmacist at both Rotorua primary care services and Waitemata District Health Board. Michael is looking forward to starting a new challenge with the Safety in Practice team and we are very much looking forward to working with him!</p>', NULL, NULL, 0, 1, 3, 0, 0, NULL, 'Inherit', 'Inherit', 58, 1),
(313, 61, 5, 1, 1, 1, 'BlogPost', '2018-10-18 14:23:34', '2018-10-18 12:42:56', 'introducing-michael', 'Introducing Michael Hammond', NULL, '<p>Please join us in welcoming our new project manager Michael Hammond.</p><p>Michael is no stranger to patient safety, having worked as a clinical pharmacist at both Rotorua primary care services and Waitemata District Health Board. Michael is looking forward to starting a new challenge with the Safety in Practice team and we are very much looking forward to working with him!</p>', NULL, NULL, 0, 1, 3, 0, 0, NULL, 'Inherit', 'Inherit', 58, 1),
(314, 57, 10, 1, 1, 1, 'BlogPost', '2018-10-18 14:58:47', '2018-10-17 16:56:56', 'learning-session-2', 'Learning Session 2', NULL, '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>', NULL, NULL, 0, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 55, 1),
(315, 56, 12, 1, 1, 1, 'BlogPost', '2018-10-18 14:59:01', '2018-10-17 16:38:57', 'learning-session-2-city', 'Learning Session 2', NULL, '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>', NULL, NULL, 0, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 55, 1),
(316, 61, 6, 1, 1, 1, 'BlogPost', '2018-10-18 15:02:53', '2018-10-18 12:42:56', 'introducing-michael', 'Introducing Michael Hammond', NULL, '<p>Please join us in welcoming our new project manager Michael Hammond.</p><p>Michael is no stranger to patient safety, having worked as a clinical pharmacist at both Rotorua primary care services and Waitemata District Health Board. Michael is looking forward to starting a new challenge with the Safety in Practice team and we are very much looking forward to working with him!</p>', NULL, NULL, 0, 1, 3, 0, 0, NULL, 'Inherit', 'Inherit', 58, 1),
(317, 60, 7, 1, 1, 1, 'BlogPost', '2018-10-18 15:03:08', '2018-10-18 12:34:33', 'prescribing-indicators-update', 'Prescribing Indicators Update', NULL, '<p>When the queries went live with the roll-over of the month, they found that there were some kinks that needed reviewing and so they have withdrawn them to be corrected.  I understand that they will be updated hopefully by next Monday.  The queries that are currently under the Safety tab in Dr Info are INCORRECT for this year, and they will be getting a note put on them to this effect from tonight.  Please don’t try to use these ones as they will obviously not match with your spreadsheet!</p><p>Some of the hiccups that need to be ironed out with any new work!  Our apologies.  As soon as they are correct and updated I will let you know.</p><p>We understand that this is likely to result in a delay for many practices in sending the Prescribing Indicators spreadsheets by Sept 10<span>th</span> so just send them through as soon as you are able. </p><p>Remember to enter ‘0’ in areas where you don’t have any patients showing, including if you don’t have any in any of the categories. </p>', NULL, NULL, 0, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 58, 1),
(318, 59, 8, 1, 1, 1, 'BlogPost', '2018-10-18 15:03:21', '2018-10-18 12:28:27', 'learning', 'Learning set 1 - resources now available', NULL, '<p>A huge thank you to all who attended learning set 1 of 2018-19!</p>', NULL, NULL, 0, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 58, 1),
(319, 62, 1, 0, 1, 0, 'TeamHolderPage', '2018-10-18 16:10:45', '2018-10-18 16:10:45', 'new-team-holder-page', 'New Team Holder Page', NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 54, 1),
(320, 62, 2, 1, 1, 1, 'TeamHolderPage', '2018-10-18 16:11:04', '2018-10-18 16:10:45', 'meet-the-team', 'Meet the team', NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 54, 1),
(321, 62, 3, 0, 1, 0, 'TeamHolderPage', '2018-10-18 16:11:15', '2018-10-18 16:10:45', 'meet-the-team', 'Meet the team', NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 0, 1),
(322, 62, 4, 1, 1, 1, 'TeamHolderPage', '2018-10-18 16:11:15', '2018-10-18 16:10:45', 'meet-the-team', 'Meet the team', NULL, NULL, NULL, NULL, 1, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 0, 1),
(323, 63, 1, 0, 1, 0, 'ProfilePage', '2018-10-18 16:11:34', '2018-10-18 16:11:34', 'new-profile-page', 'New Profile Page', NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 62, 1),
(324, 63, 2, 1, 1, 1, 'ProfilePage', '2018-10-18 16:14:23', '2018-10-18 16:11:34', 'dr-lisa-eskildsen', 'Dr Lisa Eskildsen', NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 62, 1),
(325, 64, 1, 0, 1, 0, 'ProfilePage', '2018-10-18 16:14:37', '2018-10-18 16:14:37', 'new-profile-page', 'New Profile Page', NULL, NULL, NULL, NULL, 1, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 62, 1),
(326, 64, 2, 1, 1, 1, 'ProfilePage', '2018-10-18 16:14:59', '2018-10-18 16:14:37', 'diana-phone', 'Diana Phone', NULL, NULL, NULL, NULL, 1, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 62, 1),
(327, 65, 1, 0, 1, 0, 'ProfilePage', '2018-10-18 16:15:03', '2018-10-18 16:15:03', 'new-profile-page', 'New Profile Page', NULL, NULL, NULL, NULL, 1, 1, 3, 0, 0, NULL, 'Inherit', 'Inherit', 62, 1),
(328, 65, 2, 1, 1, 1, 'ProfilePage', '2018-10-18 16:15:26', '2018-10-18 16:15:03', 'dr-eleri-clissold', 'Dr Eleri Clissold', NULL, NULL, NULL, NULL, 1, 1, 3, 0, 0, NULL, 'Inherit', 'Inherit', 62, 1),
(329, 66, 1, 0, 1, 0, 'ProfilePage', '2018-10-18 16:15:29', '2018-10-18 16:15:29', 'new-profile-page', 'New Profile Page', NULL, NULL, NULL, NULL, 1, 1, 4, 0, 0, NULL, 'Inherit', 'Inherit', 62, 1),
(330, 66, 2, 1, 1, 1, 'ProfilePage', '2018-10-18 16:15:53', '2018-10-18 16:15:29', 'sue-french', 'Sue French', NULL, NULL, NULL, NULL, 1, 1, 4, 0, 0, NULL, 'Inherit', 'Inherit', 62, 1),
(331, 67, 1, 0, 1, 0, 'ProfilePage', '2018-10-18 16:15:59', '2018-10-18 16:15:59', 'new-profile-page', 'New Profile Page', NULL, NULL, NULL, NULL, 1, 1, 5, 0, 0, NULL, 'Inherit', 'Inherit', 62, 1),
(332, 67, 2, 1, 1, 1, 'ProfilePage', '2018-10-18 16:16:22', '2018-10-18 16:15:59', 'dr-neil-houston', 'Dr Neil Houston', NULL, NULL, NULL, NULL, 1, 1, 5, 0, 0, NULL, 'Inherit', 'Inherit', 62, 1),
(333, 68, 1, 0, 1, 0, 'ProfilePage', '2018-10-18 16:16:31', '2018-10-18 16:16:31', 'new-profile-page', 'New Profile Page', NULL, NULL, NULL, NULL, 1, 1, 6, 0, 0, NULL, 'Inherit', 'Inherit', 62, 1),
(334, 68, 2, 1, 1, 1, 'ProfilePage', '2018-10-18 16:16:47', '2018-10-18 16:16:31', 'tim-wood', 'Tim Wood', NULL, NULL, NULL, NULL, 1, 1, 6, 0, 0, NULL, 'Inherit', 'Inherit', 62, 1),
(335, 69, 1, 0, 1, 0, 'ProfilePage', '2018-10-18 16:16:50', '2018-10-18 16:16:50', 'new-profile-page', 'New Profile Page', NULL, NULL, NULL, NULL, 1, 1, 7, 0, 0, NULL, 'Inherit', 'Inherit', 62, 1),
(336, 69, 2, 1, 1, 1, 'ProfilePage', '2018-10-18 16:17:05', '2018-10-18 16:16:50', 'michael-hammond', 'Michael Hammond', NULL, NULL, NULL, NULL, 1, 1, 7, 0, 0, NULL, 'Inherit', 'Inherit', 62, 1),
(337, 70, 1, 0, 1, 0, 'ProfilePage', '2018-10-18 16:17:08', '2018-10-18 16:17:08', 'new-profile-page', 'New Profile Page', NULL, NULL, NULL, NULL, 1, 1, 8, 0, 0, NULL, 'Inherit', 'Inherit', 62, 1),
(338, 70, 2, 1, 1, 1, 'ProfilePage', '2018-10-18 16:17:25', '2018-10-18 16:17:08', 'sreeja-nair', 'Sreeja Nair', NULL, NULL, NULL, NULL, 1, 1, 8, 0, 0, NULL, 'Inherit', 'Inherit', 62, 1),
(339, 63, 3, 1, 1, 1, 'ProfilePage', '2018-10-18 16:25:44', '2018-10-18 16:11:34', 'dr-lisa-eskildsen', 'Dr Lisa Eskildsen', NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 62, 1),
(340, 63, 4, 1, 1, 1, 'ProfilePage', '2018-10-18 16:47:22', '2018-10-18 16:11:34', 'dr-lisa-eskildsen', 'Dr Lisa Eskildsen', NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 62, 1),
(341, 64, 3, 1, 1, 1, 'ProfilePage', '2018-10-18 16:49:06', '2018-10-18 16:14:37', 'diana-phone', 'Diana Phone', NULL, NULL, NULL, NULL, 1, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 62, 1),
(342, 65, 3, 1, 1, 1, 'ProfilePage', '2018-10-18 16:50:10', '2018-10-18 16:15:03', 'dr-eleri-clissold', 'Dr Eleri Clissold', NULL, NULL, NULL, NULL, 1, 1, 3, 0, 0, NULL, 'Inherit', 'Inherit', 62, 1),
(343, 67, 3, 1, 1, 1, 'ProfilePage', '2018-10-18 16:57:41', '2018-10-18 16:15:59', 'dr-neil-houston', 'Dr Neil Houston', NULL, NULL, NULL, NULL, 1, 1, 5, 0, 0, NULL, 'Inherit', 'Inherit', 62, 1),
(344, 66, 3, 1, 1, 1, 'ProfilePage', '2018-10-18 16:57:49', '2018-10-18 16:15:29', 'sue-french', 'Sue French', NULL, NULL, NULL, NULL, 1, 1, 4, 0, 0, NULL, 'Inherit', 'Inherit', 62, 1),
(345, 68, 3, 1, 1, 1, 'ProfilePage', '2018-10-18 17:01:30', '2018-10-18 16:16:31', 'tim-wood', 'Tim Wood', NULL, NULL, NULL, NULL, 1, 1, 6, 0, 0, NULL, 'Inherit', 'Inherit', 62, 1),
(346, 69, 3, 1, 1, 1, 'ProfilePage', '2018-10-18 17:01:39', '2018-10-18 16:16:50', 'michael-hammond', 'Michael Hammond', NULL, NULL, NULL, NULL, 1, 1, 7, 0, 0, NULL, 'Inherit', 'Inherit', 62, 1),
(347, 70, 3, 1, 1, 1, 'ProfilePage', '2018-10-18 17:01:49', '2018-10-18 16:17:08', 'sreeja-nair', 'Sreeja Nair', NULL, NULL, NULL, NULL, 1, 1, 8, 0, 0, NULL, 'Inherit', 'Inherit', 62, 1),
(348, 71, 1, 0, 1, 0, 'MultiContentPage', '2018-10-24 09:17:54', '2018-10-24 09:17:54', 'new-multi-content-page', 'New Multi Content Page', NULL, NULL, NULL, NULL, 1, 1, 12, 0, 0, NULL, 'Inherit', 'Inherit', 0, 1),
(349, 71, 2, 1, 1, 1, 'MultiContentPage', '2018-10-24 09:19:33', '2018-10-24 09:17:54', 'our-programme', 'Our Programme', NULL, NULL, NULL, NULL, 1, 1, 12, 0, 0, NULL, 'Inherit', 'Inherit', 0, 1),
(350, 71, 3, 1, 1, 1, 'MultiContentPage', '2018-10-24 09:19:37', '2018-10-24 09:17:54', 'our-programme', 'Our Programme', NULL, NULL, NULL, NULL, 1, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 0, 1),
(351, 72, 1, 0, 1, 0, 'Page', '2018-10-25 12:00:54', '2018-10-25 12:00:54', 'new-page', 'New Page', NULL, NULL, NULL, NULL, 1, 1, 12, 0, 0, NULL, 'Inherit', 'Inherit', 0, 1),
(352, 72, 2, 1, 1, 1, 'Page', '2018-10-25 12:01:39', '2018-10-25 12:00:54', 'resources', 'Resources', NULL, NULL, NULL, NULL, 1, 1, 12, 0, 0, NULL, 'Inherit', 'Inherit', 0, 1),
(353, 72, 3, 1, 1, 1, 'Page', '2018-10-25 12:04:07', '2018-10-25 12:00:54', 'resources', 'Resources', NULL, '<p>gdfgdgf</p>', NULL, NULL, 1, 1, 12, 0, 0, NULL, 'Inherit', 'Inherit', 0, 1),
(354, 72, 4, 1, 1, 1, 'ResourcesPage', '2018-10-25 13:53:03', '2018-10-25 12:00:54', 'resources', 'Resources', NULL, '<p>gdfgdgf</p>', NULL, NULL, 1, 1, 12, 0, 0, NULL, 'Inherit', 'Inherit', 0, 1),
(355, 73, 1, 0, 1, 0, 'ResourcesModulePage', '2018-10-30 10:13:02', '2018-10-30 10:13:02', 'new-resources-module-page', 'New Resources Module Page', NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 72, 1),
(356, 73, 2, 1, 1, 1, 'ResourcesModulePage', '2018-10-30 10:15:44', '2018-10-30 10:13:02', 'medical-reconciliation', 'Medical Reconciliation', NULL, '<p>Adverse Drug Events (ADEs) are the most common post discharge complication, with 20% of patients experiencing an ADE within three weeks of discharge. Many practices report that reliable medication reconciliation when a patient is discharged is difficult to achieve.</p><p>This module helps you measure how reliable your medication reconciliation system is and provides insights into how you might improve.</p>', NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 72, 1),
(357, 74, 1, 0, 1, 0, 'ResourcesModulePage', '2018-10-30 10:38:48', '2018-10-30 10:38:48', 'new-resources-module-page', 'New Resources Module Page', NULL, NULL, NULL, NULL, 1, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 72, 1),
(358, 74, 2, 1, 1, 1, 'ResourcesModulePage', '2018-10-30 10:39:15', '2018-10-30 10:38:48', 'results-handling', 'Results Handling', NULL, '<p><span>Workload from managing test results is increasing rapidly year on year. The Medical Protection Society identified that 85% of practices have significant risks associated with results handling systems. Recent cases involving the Health and Disability Commissioner have involved failure to follow up on test results. This module helps you measure how reliable your results handling system is and gives you insights into how you might improve. </span></p><p><span>This process opens up lots of discussion about how your current systems work and generates ideas for change. One change which has been widely adopted to develop an agreed set of comments that clinical staff use on reviewing test results and use quick keys to apply to record these comments in the clinical system.</span></p>', NULL, NULL, 1, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 72, 1),
(359, 73, 3, 1, 1, 1, 'ResourcesModulePage', '2018-10-30 11:06:17', '2018-10-30 10:13:02', 'medical-reconciliation', 'Medical Reconciliation', NULL, '<p>Adverse Drug Events (ADEs) are the most common post discharge complication, with 20% of patients experiencing an ADE within three weeks of discharge. Many practices report that reliable medication reconciliation when a patient is discharged is difficult to achieve.</p><p>This module helps you measure how reliable your medication reconciliation system is and provides insights into how you might improve.</p>', NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 72, 1),
(360, 73, 4, 1, 1, 1, 'ResourcesModulePage', '2018-10-30 11:09:38', '2018-10-30 10:13:02', 'medical-reconciliation', 'Medical Reconciliation', NULL, '<p>Adverse Drug Events (ADEs) are the most common post discharge complication, with 20% of patients experiencing an ADE within three weeks of discharge. Many practices report that reliable medication reconciliation when a patient is discharged is difficult to achieve.</p><p>This module helps you measure how reliable your medication reconciliation system is and provides insights into how you might improve.</p>', NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 72, 1),
(361, 73, 5, 1, 1, 1, 'ResourcesModulePage', '2018-10-30 11:10:38', '2018-10-30 10:13:02', 'medical-reconciliation', 'Medical Reconciliation', NULL, '<p>Adverse Drug Events (ADEs) are the most common post discharge complication, with 20% of patients experiencing an ADE within three weeks of discharge. Many practices report that reliable medication reconciliation when a patient is discharged is difficult to achieve.</p><p>This module helps you measure how reliable your medication reconciliation system is and provides insights into how you might improve.</p>', NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 72, 1),
(362, 73, 6, 1, 1, 1, 'ResourcesModulePage', '2018-10-30 11:50:13', '2018-10-30 10:13:02', 'medical-reconciliation', 'Medical Reconciliation', NULL, '<p>Adverse Drug Events (ADEs) are the most common post discharge complication, with 20% of patients experiencing an ADE within three weeks of discharge. Many practices report that reliable medication reconciliation when a patient is discharged is difficult to achieve.</p><p>This module helps you measure how reliable your medication reconciliation system is and provides insights into how you might improve.</p>', NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 72, 1),
(363, 73, 7, 1, 1, 1, 'ResourcesModulePage', '2018-10-30 12:58:58', '2018-10-30 10:13:02', 'medical-reconciliation', 'Medical Reconciliation', NULL, '<p>Adverse Drug Events (ADEs) are the most common post discharge complication, with 20% of patients experiencing an ADE within three weeks of discharge. Many practices report that reliable medication reconciliation when a patient is discharged is difficult to achieve.</p><p>This module helps you measure how reliable your medication reconciliation system is and provides insights into how you might improve.</p>', NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 72, 1),
(364, 72, 5, 1, 1, 1, 'ResourcesPage', '2018-10-30 16:12:13', '2018-10-25 12:00:54', 'resources', 'Resources', NULL, '<p>gdfgdgf</p>', NULL, NULL, 1, 1, 12, 0, 0, NULL, 'Inherit', 'Inherit', 0, 1),
(365, 54, 3, 1, 1, 1, 'MultiContentPage', '2018-10-30 16:37:32', '2018-10-15 15:25:46', 'homesubsiteid1', 'Home', NULL, '<p>Welcome to SilverStripe! This is the default home page. You can edit this page by opening <a href=\"admin/\">the CMS</a>. You can now access the <a href=\"http://doc.silverstripe.org\">developer documentation</a>, or begin <a href=\"http://doc.silverstripe.org/doku.php?id=tutorials\">the tutorials.</a></p>', NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 0, 1),
(366, 54, 4, 1, 1, 1, 'MultiContentPage', '2018-10-30 16:37:48', '2018-10-15 15:25:46', 'home', 'Home', NULL, '<p>Welcome to SilverStripe! This is the default home page. You can edit this page by opening <a href=\"admin/\">the CMS</a>. You can now access the <a href=\"http://doc.silverstripe.org\">developer documentation</a>, or begin <a href=\"http://doc.silverstripe.org/doku.php?id=tutorials\">the tutorials.</a></p>', NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 0, 1),
(367, 75, 1, 0, 1, 0, 'ResourcesModulePage', '2018-10-31 09:43:57', '2018-10-31 09:43:57', 'new-resources-module-page', 'New Resources Module Page', NULL, NULL, NULL, NULL, 1, 1, 3, 0, 0, NULL, 'Inherit', 'Inherit', 72, 1),
(368, 75, 2, 1, 1, 1, 'ResourcesModulePage', '2018-10-31 09:44:50', '2018-10-31 09:43:57', 'safety-climate-survey', 'Safety Climate Survey', NULL, '<p><span>The Safety Climate Survey comprises five subject areas (Communication, Workload, Leadership, Teamwork and Safety Systems &amp; Learning) with between four to eight questions for each area. </span></p><p><span>The survey will take a person approximately 10-15 minutes to complete, and ideally all staff should complete the survey within a two week timeframe. </span></p>', NULL, NULL, 1, 1, 3, 0, 0, NULL, 'Inherit', 'Inherit', 72, 1);
INSERT INTO `SiteTree_versions` (`ID`, `RecordID`, `Version`, `WasPublished`, `AuthorID`, `PublisherID`, `ClassName`, `LastEdited`, `Created`, `URLSegment`, `Title`, `MenuTitle`, `Content`, `MetaDescription`, `ExtraMeta`, `ShowInMenus`, `ShowInSearch`, `Sort`, `HasBrokenFile`, `HasBrokenLink`, `ReportClass`, `CanViewType`, `CanEditType`, `ParentID`, `SubsiteID`) VALUES
(369, 74, 3, 1, 1, 1, 'ResourcesModulePage', '2018-10-31 11:29:33', '2018-10-30 10:38:48', 'results-handling', 'Results Handling', NULL, '<p><span>Workload from managing test results is increasing rapidly year on year. The Medical Protection Society identified that 85% of practices have significant risks associated with results handling systems. Recent cases involving the Health and Disability Commissioner have involved failure to follow up on test results. This module helps you measure how reliable your results handling system is and gives you insights into how you might improve. </span></p><p><span>This process opens up lots of discussion about how your current systems work and generates ideas for change. One change which has been widely adopted to develop an agreed set of comments that clinical staff use on reviewing test results and use quick keys to apply to record these comments in the clinical system.</span></p>', NULL, NULL, 1, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 72, 1),
(370, 74, 4, 1, 1, 1, 'ResourcesModulePage', '2018-10-31 11:32:44', '2018-10-30 10:38:48', 'results-handling', 'Results Handling', NULL, '<p><span>Workload from managing test results is increasing rapidly year on year. The Medical Protection Society identified that 85% of practices have significant risks associated with results handling systems. Recent cases involving the Health and Disability Commissioner have involved failure to follow up on test results. This module helps you measure how reliable your results handling system is and gives you insights into how you might improve. </span></p><p><span>This process opens up lots of discussion about how your current systems work and generates ideas for change. One change which has been widely adopted to develop an agreed set of comments that clinical staff use on reviewing test results and use quick keys to apply to record these comments in the clinical system.</span></p>', NULL, NULL, 1, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 72, 1),
(371, 76, 1, 0, 1, 0, 'Page', '2018-11-01 13:10:01', '2018-11-01 13:10:01', 'new-page', 'New Page', NULL, NULL, NULL, NULL, 1, 1, 13, 0, 0, NULL, 'Inherit', 'Inherit', 0, 1),
(372, 76, 2, 1, 1, 1, 'Page', '2018-11-01 13:10:39', '2018-11-01 13:10:01', 'history', 'History', NULL, '<div class=\"wpb_row vc_row-fluid standard-section section section-no-parallax  stretch\" data-speed=\"1\">\n<div class=\"col span_12\">\n<div class=\"Module  wpb_column column_container col no-padding module color-dark vc_col-sm-8\">\n<div class=\"wpb_wrapper\">\n<div class=\"wpb_text_column wpb_content_element\">\n<p>Safety in Practice is based on the Scottish Patient Safety Programme in Primary Care (SPSP–PC). SPSP-PC spans the primary care sector including general practices, community pharmacies, dentistry clinics and care homes. The programme has so far rolled out to over 1000 general practices and 1200 community pharmacies across Scotland.</p>\n<p>Dr Neil Houston, GP and national SPSP-PC clinical lead, has played a key role in establishing and supporting Safety in Practice in New Zealand.</p>\n</div>\n</div>\n</div>\n</div>\n<div class=\"col span_12\">\n<div class=\"Module  wpb_column column_container col no-padding module color-dark vc_col-sm-4\">\n<div class=\"wpb_wrapper\">\n<div class=\"wpb_text_column wpb_content_element\">\n<p><a href=\"http://ihub.scot/spsp/primary-care/\"><img class=\"center\" title=\"Scottish Patient Safety Programme\" src=\"http://aucklandnc.safetyinpractice.co.nz/assets/SIP/images/icons-logos/SPSP-logo.jpg\" alt=\"Scottish Patient Safety Programme\" width=\"487\" height=\"287\"></a></p>\n</div>\n</div>\n</div>\n</div>\n</div><div class=\"wpb_row vc_row-fluid standard-section section section-no-parallax  stretch\" data-speed=\"1\">\n<div class=\"col span_12\">\n<div class=\"Module  wpb_column column_container col no-padding module color-dark vc_col-sm-4\">\n<div class=\"wpb_wrapper\">\n<div class=\"wpb_text_column wpb_content_element\">\n<p><img class=\"leftAlone\" title=\"Neil Houston\" src=\"http://aucklandnc.safetyinpractice.co.nz/assets/SIP/images/_resampled/ResizedImageWzYwMCwzMzdd/neil-houston-1-08d334.jpg\" alt=\"Neil Houston\" width=\"600\" height=\"337\"></p>\n</div>\n</div>\n</div>\n</div>\n<div class=\"col span_12\">\n<div class=\"Module  wpb_column column_container col no-padding module color-dark vc_col-sm-8\">\n<div class=\"wpb_wrapper\">\n<div class=\"wpb_text_column wpb_content_element\">\n<p>Safety in Practice began in 2014 with 23 practices form across the 3 Auckland DHBs, initially led and supported primarily by Ko Awatea and Counties Manukau District Health Board.</p>\n<p>The Scottish programme tools were adapted and tested for use in New Zealand context. We are indebted to the NHS Scotland for its generosity in sharing its resources so generously.</p>\n<p>After a successful first year the programme has gradually spread to more GP practices 75 in 2018, and has also spread to Urgent Care clinics. The scope of the programme has expanded to include development and testing in new clinical areas such as safe opioids management and reliable detection of the deteriorating patient.</p>\n<p> </p>\n</div>\n</div>\n</div>\n</div>\n</div><div class=\"Module  wpb_row vc_row-fluid standard-section section section-no-parallax  stretch\" data-speed=\"1\">\n<div class=\"col span_12\">\n<div class=\" wpb_column column_container col no-padding module color-dark vc_col-sm-12\">\n<div class=\"wpb_wrapper\">\n<div class=\"wpb_text_column wpb_content_element\">\n<p>In 2017, 20 community pharmacies joined an improvement collaborative as part of Safety in Practice <a href=\"http://aucklandnc.safetyinpractice.co.nz/quality-initiatives/quality-initiatives/electronic-outpatient-outcomes/\">working to reduce harm caused by NSAIDs, medicines reconciliation, opioids and anticoagulants.</a></p>\n</div>\n</div>\n</div>\n</div>\n</div>', NULL, NULL, 1, 1, 13, 0, 0, NULL, 'Inherit', 'Inherit', 0, 1),
(373, 76, 3, 1, 1, 1, 'Page', '2018-11-01 13:13:14', '2018-11-01 13:10:01', 'history', 'History', NULL, '<p>Safety in Practice is based on the Scottish Patient Safety Programme in Primary Care (SPSP–PC). SPSP-PC spans the primary care sector including general practices, community pharmacies, dentistry clinics and care homes. The programme has so far rolled out to over 1000 general practices and 1200 community pharmacies across Scotland.</p><p>Dr Neil Houston, GP and national SPSP-PC clinical lead, has played a key role in establishing and supporting Safety in Practice in New Zealand.</p><p>Safety in Practice began in 2014 with 23 practices form across the 3 Auckland DHBs, initially led and supported primarily by Ko Awatea and Counties Manukau District Health Board.</p><p>The Scottish programme tools were adapted and tested for use in New Zealand context. We are indebted to the NHS Scotland for its generosity in sharing its resources so generously.</p><p>After a successful first year the programme has gradually spread to more GP practices 75 in 2018, and has also spread to Urgent Care clinics. The scope of the programme has expanded to include development and testing in new clinical areas such as safe opioids management and reliable detection of the deteriorating patient.</p><p>In 2017, 20 community pharmacies joined an improvement collaborative as part of Safety in Practice working to reduce harm caused by NSAIDs, medicines reconciliation, opioids and anticoagulants.</p>', NULL, NULL, 1, 1, 13, 0, 0, NULL, 'Inherit', 'Inherit', 0, 1),
(374, 76, 4, 1, 1, 1, 'Page', '2018-11-01 13:19:32', '2018-11-01 13:10:01', 'history', 'History', NULL, '<p>Safety in Practice is based on the Scottish Patient Safety Programme in Primary Care (SPSP–PC). SPSP-PC spans the primary care sector including general practices, community pharmacies, dentistry clinics and care homes. The programme has so far rolled out to over 1000 general practices and 1200 community pharmacies across Scotland.</p><p>Dr Neil Houston, GP and national SPSP-PC clinical lead, has played a key role in establishing and supporting Safety in Practice in New Zealand.</p><p>Safety in Practice began in 2014 with 23 practices form across the 3 Auckland DHBs, initially led and supported primarily by Ko Awatea and Counties Manukau District Health Board.</p><p>The Scottish programme tools were adapted and tested for use in New Zealand context. We are indebted to the NHS Scotland for its generosity in sharing its resources so generously.</p><p>After a successful first year the programme has gradually spread to more GP practices 75 in 2018, and has also spread to Urgent Care clinics. The scope of the programme has expanded to include development and testing in new clinical areas such as safe opioids management and reliable detection of the deteriorating patient.</p><p>In 2017, 20 community pharmacies joined an improvement collaborative as part of Safety in Practice working to reduce harm caused by NSAIDs, medicines reconciliation, opioids and anticoagulants.</p>', NULL, NULL, 1, 1, 13, 0, 0, NULL, 'Inherit', 'Inherit', 0, 1),
(375, 76, 5, 1, 1, 1, 'MultiContentPage', '2018-11-01 13:19:49', '2018-11-01 13:10:01', 'history', 'History', NULL, NULL, NULL, NULL, 1, 1, 13, 0, 0, NULL, 'Inherit', 'Inherit', 0, 1),
(376, 76, 6, 1, 1, 1, 'MultiContentPage', '2018-11-01 13:21:19', '2018-11-01 13:10:01', 'history', 'History', NULL, NULL, NULL, NULL, 1, 1, 13, 0, 0, NULL, 'Inherit', 'Inherit', 0, 1),
(377, 76, 7, 1, 1, 1, 'MultiContentPage', '2018-11-01 13:21:24', '2018-11-01 13:10:01', 'history', 'History', NULL, NULL, NULL, NULL, 1, 1, 13, 0, 0, NULL, 'Inherit', 'Inherit', 0, 1),
(378, 76, 8, 1, 1, 1, 'MultiContentPage', '2018-11-01 13:25:37', '2018-11-01 13:10:01', 'history', 'History', NULL, NULL, NULL, NULL, 1, 1, 13, 0, 0, NULL, 'Inherit', 'Inherit', 0, 1),
(379, 76, 9, 1, 1, 1, 'MultiContentPage', '2018-11-01 13:25:59', '2018-11-01 13:10:01', 'history', 'History', NULL, NULL, NULL, NULL, 1, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 0, 1),
(380, 72, 6, 1, 1, 1, 'ResourcesPage', '2018-11-01 13:48:13', '2018-10-25 12:00:54', 'resources', 'Resources', NULL, '<p>gdfgdgf</p>', NULL, NULL, 1, 1, 7, 0, 0, NULL, 'Inherit', 'Inherit', 0, 1),
(381, 77, 1, 0, 1, 0, 'MultiContentPage', '2018-11-07 13:48:13', '2018-11-07 13:48:13', 'new-multi-content-page', 'New Multi Content Page', NULL, NULL, NULL, NULL, 1, 1, 12, 0, 0, NULL, 'Inherit', 'Inherit', 0, 1),
(382, 77, 2, 1, 1, 1, 'MultiContentPage', '2018-11-07 13:48:28', '2018-11-07 13:48:13', 'sip-for-general-practice', 'SIP for General Practice', NULL, NULL, NULL, NULL, 1, 1, 12, 0, 0, NULL, 'Inherit', 'Inherit', 0, 1),
(383, 77, 3, 1, 1, 1, 'MultiContentPage', '2018-11-07 13:49:22', '2018-11-07 13:48:13', 'sip-for-general-practice', 'SIP for General Practice', NULL, NULL, NULL, NULL, 1, 1, 12, 0, 0, NULL, 'Inherit', 'Inherit', 0, 1),
(384, 77, 4, 1, 1, 1, 'MultiContentPage', '2018-11-07 13:49:36', '2018-11-07 13:48:13', 'sip-for-general-practice', 'SIP for General Practice', NULL, NULL, NULL, NULL, 1, 1, 12, 0, 0, NULL, 'Inherit', 'Inherit', 0, 1),
(385, 77, 5, 1, 1, 1, 'MultiContentPage', '2018-11-08 15:11:50', '2018-11-07 13:48:13', 'sip-for-general-practice', 'SIP for General Practice', NULL, NULL, NULL, NULL, 1, 1, 4, 0, 0, NULL, 'Inherit', 'Inherit', 0, 1),
(386, 78, 1, 0, 1, 0, 'MultiContentPage', '2018-11-08 15:18:05', '2018-11-08 15:18:05', 'new-multi-content-page', 'New Multi Content Page', NULL, NULL, NULL, NULL, 1, 1, 12, 0, 0, NULL, 'Inherit', 'Inherit', 0, 1),
(387, 78, 2, 1, 1, 1, 'MultiContentPage', '2018-11-08 15:18:15', '2018-11-08 15:18:05', 'sip-for-pharmacy', 'SIP for Pharmacy', NULL, NULL, NULL, NULL, 1, 1, 12, 0, 0, NULL, 'Inherit', 'Inherit', 0, 1),
(388, 78, 3, 1, 1, 1, 'MultiContentPage', '2018-11-08 15:18:19', '2018-11-08 15:18:05', 'sip-for-pharmacy', 'SIP for Pharmacy', NULL, NULL, NULL, NULL, 1, 1, 5, 0, 0, NULL, 'Inherit', 'Inherit', 0, 1),
(389, 78, 4, 1, 1, 1, 'MultiContentPage', '2018-11-08 15:24:31', '2018-11-08 15:18:05', 'sip-for-pharmacy', 'SIP for Pharmacy', NULL, NULL, NULL, NULL, 1, 1, 5, 0, 0, NULL, 'Inherit', 'Inherit', 0, 1),
(390, 78, 5, 1, 1, 1, 'MultiContentPage', '2018-11-08 15:24:49', '2018-11-08 15:18:05', 'sip-for-pharmacy', 'SIP for Pharmacy', NULL, NULL, NULL, NULL, 1, 1, 5, 0, 0, NULL, 'Inherit', 'Inherit', 0, 1),
(391, 79, 1, 0, 1, 0, 'MultiContentPage', '2018-11-08 16:00:43', '2018-11-08 16:00:43', 'new-multi-content-page', 'New Multi Content Page', NULL, NULL, NULL, NULL, 1, 1, 12, 0, 0, NULL, 'Inherit', 'Inherit', 0, 1),
(392, 79, 2, 1, 1, 1, 'MultiContentPage', '2018-11-08 16:01:32', '2018-11-08 16:00:43', 'meet-our-team', 'Meet Our Team', NULL, NULL, NULL, NULL, 1, 1, 12, 0, 0, NULL, 'Inherit', 'Inherit', 0, 1),
(393, 79, 3, 1, 1, 1, 'MultiContentPage', '2018-11-08 16:01:35', '2018-11-08 16:00:43', 'meet-our-team', 'Meet Our Team', NULL, NULL, NULL, NULL, 1, 1, 6, 0, 0, NULL, 'Inherit', 'Inherit', 0, 1),
(394, 79, 4, 1, 1, 1, 'MultiContentPage', '2018-11-08 16:03:29', '2018-11-08 16:00:43', 'meet-our-team', 'Our Team', NULL, NULL, NULL, NULL, 1, 1, 6, 0, 0, NULL, 'Inherit', 'Inherit', 0, 1),
(395, 79, 5, 1, 1, 1, 'MultiContentPage', '2018-11-08 16:04:46', '2018-11-08 16:00:43', 'meet-our-team', 'Our Team', NULL, NULL, NULL, NULL, 1, 1, 6, 0, 0, NULL, 'Inherit', 'Inherit', 0, 1),
(396, 79, 6, 1, 1, 1, 'MultiContentPage', '2018-11-08 16:04:49', '2018-11-08 16:00:43', 'meet-our-team', 'Our Team', NULL, NULL, NULL, NULL, 1, 1, 6, 0, 0, NULL, 'Inherit', 'Inherit', 0, 1),
(397, 79, 7, 1, 1, 1, 'MultiContentPage', '2018-11-08 16:13:26', '2018-11-08 16:00:43', 'meet-our-team', 'Our Team', NULL, NULL, NULL, NULL, 1, 1, 6, 0, 0, NULL, 'Inherit', 'Inherit', 0, 1),
(398, 80, 1, 0, 1, 0, 'MultiContentPage', '2018-11-08 16:15:07', '2018-11-08 16:15:07', 'new-multi-content-page', 'New Multi Content Page', NULL, NULL, NULL, NULL, 1, 1, 12, 0, 0, NULL, 'Inherit', 'Inherit', 0, 1),
(399, 80, 2, 1, 1, 1, 'MultiContentPage', '2018-11-08 16:15:25', '2018-11-08 16:15:07', 'our-partners', 'Our Partners', NULL, NULL, NULL, NULL, 1, 1, 12, 0, 0, NULL, 'Inherit', 'Inherit', 0, 1),
(400, 79, 8, 1, 1, 1, 'MultiContentPage', '2018-11-08 16:15:52', '2018-11-08 16:00:43', 'meet-our-team', 'Our Team', NULL, NULL, NULL, NULL, 1, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 0, 1),
(401, 77, 6, 0, 1, 0, 'MultiContentPage', '2018-11-08 16:15:55', '2018-11-07 13:48:13', 'sip-for-general-practice', 'SIP for General Practice', NULL, NULL, NULL, NULL, 1, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 0, 1),
(402, 78, 6, 0, 1, 0, 'MultiContentPage', '2018-11-08 16:15:59', '2018-11-08 15:18:05', 'sip-for-pharmacy', 'SIP for Pharmacy', NULL, NULL, NULL, NULL, 1, 1, 3, 0, 0, NULL, 'Inherit', 'Inherit', 0, 1),
(403, 71, 4, 1, 1, 1, 'MultiContentPage', '2018-11-08 16:16:30', '2018-10-24 09:17:54', 'our-programme', 'Our Programme', NULL, NULL, NULL, NULL, 1, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 0, 1),
(404, 77, 7, 0, 1, 0, 'MultiContentPage', '2018-11-08 16:16:34', '2018-11-07 13:48:13', 'sip-for-general-practice', 'SIP for General Practice', NULL, NULL, NULL, NULL, 1, 1, 3, 0, 0, NULL, 'Inherit', 'Inherit', 71, 1),
(405, 77, 8, 1, 1, 1, 'MultiContentPage', '2018-11-08 16:16:34', '2018-11-07 13:48:13', 'sip-for-general-practice', 'SIP for General Practice', NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 71, 1),
(406, 78, 7, 0, 1, 0, 'MultiContentPage', '2018-11-08 16:16:38', '2018-11-08 15:18:05', 'sip-for-pharmacy', 'SIP for Pharmacy', NULL, NULL, NULL, NULL, 1, 1, 4, 0, 0, NULL, 'Inherit', 'Inherit', 71, 1),
(407, 78, 8, 1, 1, 1, 'MultiContentPage', '2018-11-08 16:16:38', '2018-11-08 15:18:05', 'sip-for-pharmacy', 'SIP for Pharmacy', NULL, NULL, NULL, NULL, 1, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 71, 1),
(408, 80, 3, 1, 1, 1, 'MultiContentPage', '2018-11-08 16:19:23', '2018-11-08 16:15:07', 'our-partners', 'Our Partners', NULL, NULL, NULL, NULL, 1, 1, 11, 0, 0, NULL, 'Inherit', 'Inherit', 0, 1),
(409, 80, 4, 1, 1, 1, 'MultiContentPage', '2018-11-08 16:19:31', '2018-11-08 16:15:07', 'our-partners', 'Our Partners', NULL, NULL, NULL, NULL, 1, 1, 4, 0, 0, NULL, 'Inherit', 'Inherit', 0, 1),
(410, 80, 5, 1, 1, 1, 'MultiContentPage', '2018-11-08 16:20:31', '2018-11-08 16:15:07', 'our-partners', 'Our Partners', NULL, NULL, NULL, NULL, 1, 1, 4, 0, 0, NULL, 'Inherit', 'Inherit', 0, 1),
(411, 80, 6, 1, 1, 1, 'MultiContentPage', '2018-11-08 16:20:34', '2018-11-08 16:15:07', 'our-partners', 'Our Partners', NULL, NULL, NULL, NULL, 1, 1, 4, 0, 0, NULL, 'Inherit', 'Inherit', 0, 1),
(412, 80, 7, 1, 1, 1, 'MultiContentPage', '2018-11-08 16:21:40', '2018-11-08 16:15:07', 'our-partners', 'Our Partners', NULL, NULL, NULL, NULL, 1, 1, 4, 0, 0, NULL, 'Inherit', 'Inherit', 0, 1),
(413, 80, 8, 1, 1, 1, 'MultiContentPage', '2018-11-08 16:22:15', '2018-11-08 16:15:07', 'our-partners', 'Our Partners', NULL, NULL, NULL, NULL, 1, 1, 4, 0, 0, NULL, 'Inherit', 'Inherit', 0, 1),
(414, 80, 9, 1, 1, 1, 'MultiContentPage', '2018-11-08 16:23:15', '2018-11-08 16:15:07', 'our-partners', 'Our Partners', NULL, NULL, NULL, NULL, 1, 1, 4, 0, 0, NULL, 'Inherit', 'Inherit', 0, 1),
(415, 80, 10, 1, 1, 1, 'MultiContentPage', '2018-11-08 16:23:36', '2018-11-08 16:15:07', 'our-partners', 'Our Partners', NULL, NULL, NULL, NULL, 1, 1, 4, 0, 0, NULL, 'Inherit', 'Inherit', 0, 1),
(416, 80, 11, 1, 1, 1, 'MultiContentPage', '2018-11-08 16:25:33', '2018-11-08 16:15:07', 'our-partners', 'Our Partners', NULL, NULL, NULL, NULL, 1, 1, 4, 0, 0, NULL, 'Inherit', 'Inherit', 0, 1),
(417, 81, 1, 0, 1, 0, 'ResourcesModulePage', '2018-11-09 10:16:48', '2018-11-09 10:16:48', 'new-resources-module-page', 'New Resources Module Page', NULL, NULL, NULL, NULL, 1, 1, 4, 0, 0, NULL, 'Inherit', 'Inherit', 72, 1),
(418, 82, 1, 0, 1, 0, 'BlogPost', '2018-11-09 10:16:55', '2018-11-09 10:16:55', 'new-blog-post', 'New Blog Post', NULL, NULL, NULL, NULL, 0, 1, 4, 0, 0, NULL, 'Inherit', 'Inherit', 58, 1),
(419, 82, 2, 0, 1, 0, 'BlogPost', '2018-11-09 10:19:53', '2018-11-09 10:16:55', 'learning-set-2-rsvp-now', 'Learning set 2 - RSVP now!', NULL, '<p>It\'s time to look at your data, have some group discussions and add to your quality improvement toolkit. The Safety in Practice team is looking forward to bringing you the second learning session for the year, combining GP, pharmacy and urgent care teams. This collaboration will help to fuel enhanced learning.</p><p>Registration is from 5.30pm with the session beginning at 6pm. A light dinner will be provided from 5.30pm.</p><p>Important:  It is vital that each individual registers under their own name. This enables a record of attendance to be kept and your certificates to be generated. <br><br>NB: GPs attending this session will be entitled to MOPS points; please make sure these are documented on your registration. Nurses, pharmacists and other staff will receive a certificate for their professional development</p>', NULL, NULL, 0, 1, 4, 0, 0, NULL, 'Inherit', 'Inherit', 58, 1),
(420, 82, 3, 1, 1, 1, 'BlogPost', '2018-11-09 10:19:53', '2018-11-09 10:16:55', 'learning-set-2-rsvp-now', 'Learning set 2 - RSVP now!', NULL, '<p>It\'s time to look at your data, have some group discussions and add to your quality improvement toolkit. The Safety in Practice team is looking forward to bringing you the second learning session for the year, combining GP, pharmacy and urgent care teams. This collaboration will help to fuel enhanced learning.</p><p>Registration is from 5.30pm with the session beginning at 6pm. A light dinner will be provided from 5.30pm.</p><p>Important:  It is vital that each individual registers under their own name. This enables a record of attendance to be kept and your certificates to be generated. <br><br>NB: GPs attending this session will be entitled to MOPS points; please make sure these are documented on your registration. Nurses, pharmacists and other staff will receive a certificate for their professional development</p>', NULL, NULL, 0, 1, 4, 0, 0, NULL, 'Inherit', 'Inherit', 58, 1),
(421, 82, 4, 1, 1, 1, 'BlogPost', '2018-11-09 10:20:38', '2018-11-09 10:16:55', 'learning-set-2-rsvp-now', 'Learning set 2 - RSVP now!', NULL, '<p>It\'s time to look at your data, have some group discussions and add to your quality improvement toolkit. The Safety in Practice team is looking forward to bringing you the second learning session for the year, combining GP, pharmacy and urgent care teams. This collaboration will help to fuel enhanced learning.</p><p>Registration is from 5.30pm with the session beginning at 6pm. A light dinner will be provided from 5.30pm.</p><p>Important:  It is vital that each individual registers under their own name. This enables a record of attendance to be kept and your certificates to be generated. <br><br>NB: GPs attending this session will be entitled to MOPS points; please make sure these are documented on your registration. Nurses, pharmacists and other staff will receive a certificate for their professional development</p><p><span>Thursday 15th November 5.30-9pm, Royal New Zealand Yacht Squadraon </span><a href=\"https://www.eventfinda.co.nz/2018/safety-in-practice-learning-session-city/auckland/westhaven?_ga=2.132405576.777780009.1539543926-890674783.1534388863\"><span>CLICK HERE</span></a><span> to RSVP now</span></p><p>Thursday 22nd November 5.30-9pm, Whenua Pupuke, North Shore Hospital <a href=\"https://www.eventfinda.co.nz/2018/safety-in-practice-learning-session-north-shore/auckland/takapuna?utm_campaign=were-you-looking-for-events&amp;utm_medium=click-through&amp;utm_source=2018%2Fsafety-in-practice-learning-session-city%2Fauckland%2Fwesthaven\">CLICK HERE</a> to RSVP now</p><p><span> </span></p>', NULL, NULL, 0, 1, 4, 0, 0, NULL, 'Inherit', 'Inherit', 58, 1),
(422, 82, 5, 1, 1, 1, 'BlogPost', '2018-11-09 10:20:56', '2018-11-09 10:16:55', 'learning-set-2-rsvp-now', 'Learning set 2 - RSVP now!', NULL, '<p>It\'s time to look at your data, have some group discussions and add to your quality improvement toolkit. The Safety in Practice team is looking forward to bringing you the second learning session for the year, combining GP, pharmacy and urgent care teams. This collaboration will help to fuel enhanced learning.</p><p>Registration is from 5.30pm with the session beginning at 6pm. A light dinner will be provided from 5.30pm.</p><p>Important:  It is vital that each individual registers under their own name. This enables a record of attendance to be kept and your certificates to be generated. <br><br>NB: GPs attending this session will be entitled to MOPS points; please make sure these are documented on your registration. Nurses, pharmacists and other staff will receive a certificate for their professional development</p><p><span>Thursday 15th November 5.30-9pm, Royal New Zealand Yacht Squadraon </span><a href=\"https://www.eventfinda.co.nz/2018/safety-in-practice-learning-session-city/auckland/westhaven?_ga=2.132405576.777780009.1539543926-890674783.1534388863\"><span>CLICK HERE</span></a><span> to RSVP now</span></p><p>Thursday 22nd November 5.30-9pm, Whenua Pupuke, North Shore Hospital <a href=\"https://www.eventfinda.co.nz/2018/safety-in-practice-learning-session-north-shore/auckland/takapuna?utm_campaign=were-you-looking-for-events&amp;utm_medium=click-through&amp;utm_source=2018%2Fsafety-in-practice-learning-session-city%2Fauckland%2Fwesthaven\">CLICK HERE</a> to RSVP now</p><p><span> </span></p>', NULL, NULL, 0, 1, 4, 0, 0, NULL, 'Inherit', 'Inherit', 58, 1),
(423, 58, 3, 1, 1, 1, 'Blog', '2018-11-09 10:38:35', '2018-10-18 12:28:11', 'latest-news', 'Latest News', NULL, NULL, NULL, NULL, 1, 1, 8, 0, 0, NULL, 'Inherit', 'Inherit', 0, 1),
(424, 58, 4, 1, 1, 1, 'Blog', '2018-11-09 10:38:46', '2018-10-18 12:28:11', 'latest-news', 'Latest News', NULL, NULL, NULL, NULL, 1, 1, 8, 0, 0, NULL, 'Inherit', 'Inherit', 0, 1),
(425, 58, 5, 1, 1, 1, 'Blog', '2018-11-09 10:38:51', '2018-10-18 12:28:11', 'latest-news', 'Latest News', NULL, NULL, NULL, NULL, 1, 1, 8, 0, 0, NULL, 'Inherit', 'Inherit', 0, 1),
(426, 58, 6, 1, 1, 1, 'Blog', '2018-11-09 10:42:45', '2018-10-18 12:28:11', 'latest-news', 'Latest News', NULL, NULL, NULL, NULL, 1, 1, 8, 0, 0, NULL, 'Inherit', 'Inherit', 0, 1),
(427, 58, 7, 1, 1, 1, 'Blog', '2018-11-09 10:44:33', '2018-10-18 12:28:11', 'latest-news', 'Latest News', NULL, NULL, NULL, NULL, 1, 1, 8, 0, 0, NULL, 'Inherit', 'Inherit', 0, 1),
(428, 72, 7, 1, 1, 1, 'ResourcesPage', '2018-11-09 11:26:50', '2018-10-25 12:00:54', 'resources', 'Resources', NULL, NULL, NULL, NULL, 1, 1, 9, 0, 0, NULL, 'Inherit', 'Inherit', 0, 1),
(429, 58, 8, 1, 1, 1, 'Blog', '2018-11-09 11:27:42', '2018-10-18 12:28:11', 'latest-news', 'Latest News', NULL, NULL, NULL, NULL, 1, 1, 8, 0, 0, NULL, 'Inherit', 'Inherit', 0, 1),
(430, 83, 1, 0, 1, 0, 'BlogPost', '2018-11-09 11:30:27', '2018-11-09 11:30:27', 'new-blog-post', 'New Blog Post', NULL, NULL, NULL, NULL, 0, 1, 5, 0, 0, NULL, 'Inherit', 'Inherit', 58, 1),
(431, 83, 2, 0, 1, 0, 'BlogPost', '2018-11-09 11:32:53', '2018-11-09 11:30:27', 'kia-ora', 'Kia ora!', NULL, '<p>A warm welcome to our new and returning clinical teams joining us for the upcoming 2018-19 year.</p><p>We\'re currently finalising our resources for 2018-19, in the meantime feel free to browse the website.</p><p>We look forward to meeting you on the 23rd or 29th be sure to book you place for the events here! </p>', NULL, NULL, 0, 1, 5, 0, 0, NULL, 'Inherit', 'Inherit', 58, 1),
(432, 83, 3, 1, 1, 1, 'BlogPost', '2018-11-09 11:32:53', '2018-11-09 11:30:27', 'kia-ora', 'Kia ora!', NULL, '<p>A warm welcome to our new and returning clinical teams joining us for the upcoming 2018-19 year.</p><p>We\'re currently finalising our resources for 2018-19, in the meantime feel free to browse the website.</p><p>We look forward to meeting you on the 23rd or 29th be sure to book you place for the events here! </p>', NULL, NULL, 0, 1, 5, 0, 0, NULL, 'Inherit', 'Inherit', 58, 1),
(433, 83, 4, 1, 1, 1, 'BlogPost', '2018-11-09 11:33:18', '2018-11-09 11:30:27', 'kia-ora', 'Kia ora!', NULL, '<p>A warm welcome to our new and returning clinical teams joining us for the upcoming 2018-19 year.</p><p>We\'re currently finalising our resources for 2018-19, in the meantime feel free to browse the website.</p><p>We look forward to meeting you on the 23rd or 29th be sure to book you place for the events here! </p>', NULL, NULL, 0, 1, 5, 0, 0, NULL, 'Inherit', 'Inherit', 58, 1),
(434, 82, 6, 1, 1, 1, 'BlogPost', '2018-11-09 11:42:01', '2018-11-09 10:16:55', 'learning-set-2-rsvp-now', 'Learning set 2 - RSVP now!', NULL, '<p>It\'s time to look at your data, have some group discussions and add to your quality improvement toolkit. The Safety in Practice team is looking forward to bringing you the second learning session for the year, combining GP, pharmacy and urgent care teams. This collaboration will help to fuel enhanced learning.</p><p>Registration is from 5.30pm with the session beginning at 6pm. A light dinner will be provided from 5.30pm.</p><p>Important:  It is vital that each individual registers under their own name. This enables a record of attendance to be kept and your certificates to be generated. <br><br>NB: GPs attending this session will be entitled to MOPS points; please make sure these are documented on your registration. Nurses, pharmacists and other staff will receive a certificate for their professional development</p><p><span>Thursday 15th November 5.30-9pm, Royal New Zealand Yacht Squadraon </span><a href=\"https://www.eventfinda.co.nz/2018/safety-in-practice-learning-session-city/auckland/westhaven?_ga=2.132405576.777780009.1539543926-890674783.1534388863\"><span>CLICK HERE</span></a><span> to RSVP now</span></p><p>Thursday 22nd November 5.30-9pm, Whenua Pupuke, North Shore Hospital <a href=\"https://www.eventfinda.co.nz/2018/safety-in-practice-learning-session-north-shore/auckland/takapuna?utm_campaign=were-you-looking-for-events&amp;utm_medium=click-through&amp;utm_source=2018%2Fsafety-in-practice-learning-session-city%2Fauckland%2Fwesthaven\">CLICK HERE</a> to RSVP now</p><p><span> </span></p>', NULL, NULL, 0, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 58, 1),
(435, 82, 7, 1, 1, 1, 'BlogPost', '2018-11-09 11:42:39', '2018-11-09 10:16:55', 'learning-set-2-rsvp-now', 'Learning set 2 - RSVP now!', NULL, '<p>It\'s time to look at your data, have some group discussions and add to your quality improvement toolkit. The Safety in Practice team is looking forward to bringing you the second learning session for the year, combining GP, pharmacy and urgent care teams. This collaboration will help to fuel enhanced learning.</p><p>Registration is from 5.30pm with the session beginning at 6pm. A light dinner will be provided from 5.30pm.</p><p>Important:  It is vital that each individual registers under their own name. This enables a record of attendance to be kept and your certificates to be generated. <br><br>NB: GPs attending this session will be entitled to MOPS points; please make sure these are documented on your registration. Nurses, pharmacists and other staff will receive a certificate for their professional development</p><p><span>Thursday 15th November 5.30-9pm, Royal New Zealand Yacht Squadraon </span><a href=\"https://www.eventfinda.co.nz/2018/safety-in-practice-learning-session-city/auckland/westhaven?_ga=2.132405576.777780009.1539543926-890674783.1534388863\"><span>CLICK HERE</span></a><span> to RSVP now</span></p><p>Thursday 22nd November 5.30-9pm, Whenua Pupuke, North Shore Hospital <a href=\"https://www.eventfinda.co.nz/2018/safety-in-practice-learning-session-north-shore/auckland/takapuna?utm_campaign=were-you-looking-for-events&amp;utm_medium=click-through&amp;utm_source=2018%2Fsafety-in-practice-learning-session-city%2Fauckland%2Fwesthaven\">CLICK HERE</a> to RSVP now</p><p><span> </span></p>', NULL, NULL, 0, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 58, 1),
(436, 59, 9, 1, 1, 1, 'BlogPost', '2018-11-09 11:42:48', '2018-10-18 12:28:27', 'learning', 'Learning set 1 - resources now available', NULL, '<p>A huge thank you to all who attended learning set 1 of 2018-19!</p>', NULL, NULL, 0, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 58, 1),
(437, 60, 8, 1, 1, 1, 'BlogPost', '2018-11-09 11:42:58', '2018-10-18 12:34:33', 'prescribing-indicators-update', 'Prescribing Indicators Update', NULL, '<p>When the queries went live with the roll-over of the month, they found that there were some kinks that needed reviewing and so they have withdrawn them to be corrected.  I understand that they will be updated hopefully by next Monday.  The queries that are currently under the Safety tab in Dr Info are INCORRECT for this year, and they will be getting a note put on them to this effect from tonight.  Please don’t try to use these ones as they will obviously not match with your spreadsheet!</p><p>Some of the hiccups that need to be ironed out with any new work!  Our apologies.  As soon as they are correct and updated I will let you know.</p><p>We understand that this is likely to result in a delay for many practices in sending the Prescribing Indicators spreadsheets by Sept 10<span>th</span> so just send them through as soon as you are able. </p><p>Remember to enter ‘0’ in areas where you don’t have any patients showing, including if you don’t have any in any of the categories. </p>', NULL, NULL, 0, 1, 3, 0, 0, NULL, 'Inherit', 'Inherit', 58, 1),
(438, 61, 7, 1, 1, 1, 'BlogPost', '2018-11-09 11:43:24', '2018-10-18 12:42:56', 'introducing-michael', 'Introducing Michael Hammond', NULL, '<p>Please join us in welcoming our new project manager Michael Hammond.</p><p>Michael is no stranger to patient safety, having worked as a clinical pharmacist at both Rotorua primary care services and Waitemata District Health Board. Michael is looking forward to starting a new challenge with the Safety in Practice team and we are very much looking forward to working with him!</p>', NULL, NULL, 0, 1, 4, 0, 0, NULL, 'Inherit', 'Inherit', 58, 1),
(439, 83, 5, 1, 1, 1, 'BlogPost', '2018-11-09 11:44:00', '2018-11-09 11:30:27', 'kia-ora', 'Kia ora!', NULL, '<p>A warm welcome to our new and returning clinical teams joining us for the upcoming 2018-19 year.</p><p>We\'re currently finalising our resources for 2018-19, in the meantime feel free to browse the website.</p><p>We look forward to meeting you on the 23rd or 29th be sure to book you place for the events here! </p>', NULL, NULL, 0, 1, 5, 0, 0, NULL, 'Inherit', 'Inherit', 58, 1),
(440, 84, 1, 0, 1, 0, 'BlogPost', '2018-11-09 11:44:27', '2018-11-09 11:44:27', 'new-blog-post', 'New Blog Post', NULL, NULL, NULL, NULL, 0, 1, 6, 0, 0, NULL, 'Inherit', 'Inherit', 58, 1),
(441, 84, 2, 1, 1, 1, 'BlogPost', '2018-11-09 11:46:17', '2018-11-09 11:44:27', 'invoicing', 'Invoicing', NULL, '<p><span>We\'ve developed an invoice template and FAQ sheet found </span><a href=\"[sitetree_link,id=307]\" class=\"ss-broken\">here </a><span>to help with common problems, alternatively feel free to contact us on </span><a href=\"mailto:info@safetyinpractice.co.nz\">info@safetyinpractice.co.nz</a><span>.</span></p>', NULL, NULL, 0, 1, 6, 0, 1, NULL, 'Inherit', 'Inherit', 58, 1),
(442, 85, 1, 0, 1, 0, 'BlogPost', '2018-11-09 11:46:43', '2018-11-09 11:46:43', 'new-blog-post', 'New Blog Post', NULL, NULL, NULL, NULL, 0, 1, 7, 0, 0, NULL, 'Inherit', 'Inherit', 58, 1),
(443, 85, 2, 1, 1, 1, 'BlogPost', '2018-11-09 11:48:03', '2018-11-09 11:46:43', 'expressions-of-interest-now-closed', 'Expressions of Interest NOW CLOSED', NULL, '<p><span>A huge thank you to everyone who\'s expressed an interest in Safety in Practice 2018-19. We are now closed to expressions of interest and will be contacting 2018-19 teams shortly.</span></p>', NULL, NULL, 0, 1, 7, 0, 0, NULL, 'Inherit', 'Inherit', 58, 1),
(444, 86, 1, 0, 1, 0, 'BlogPost', '2018-11-09 11:52:09', '2018-11-09 11:52:09', 'new-blog-post', 'New Blog Post', NULL, NULL, NULL, NULL, 0, 1, 8, 0, 0, NULL, 'Inherit', 'Inherit', 58, 1),
(445, 86, 2, 1, 1, 1, 'BlogPost', '2018-11-09 11:59:06', '2018-11-09 11:52:09', 'new-blog-post', 'New Blog Post', NULL, NULL, NULL, NULL, 0, 1, 8, 0, 0, NULL, 'Inherit', 'Inherit', 58, 1),
(446, 86, 3, 1, 1, 1, 'BlogPost', '2018-11-09 12:11:50', '2018-11-09 11:52:09', 'learning-set-4-resources-now-available', 'Learning Set 4 - Resources now available', NULL, '<p>A huge thank you to everyone who made Learning Set 4 possible. The event saw 170 individuals from pharmacies, general practices and urgent care clinics across Auckland come together to share and learn.  In particular thank you to Mr Anthony Hill, Health and Disability Commissioner and Debbie Holdsworth, Director of Funding Waitemata DHB for speaking at the event.</p><p>Resources from the evening are now available <a href=\"http://aucklandnc.safetyinpractice.co.nz/resources/\">here</a>.</p>', NULL, NULL, 0, 1, 8, 0, 0, NULL, 'Inherit', 'Inherit', 58, 1),
(447, 80, 12, 0, 1, 0, 'MultiContentPage', '2018-11-09 16:12:10', '2018-11-08 16:15:07', 'our-partners', 'Our Partners', NULL, NULL, NULL, NULL, 1, 1, 4, 0, 0, NULL, 'Inherit', 'Inherit', 71, 1),
(448, 80, 13, 1, 1, 1, 'MultiContentPage', '2018-11-09 16:12:10', '2018-11-08 16:15:07', 'our-partners', 'Our Partners', NULL, NULL, NULL, NULL, 1, 1, 3, 0, 0, NULL, 'Inherit', 'Inherit', 71, 1),
(449, 79, 9, 0, 1, 0, 'MultiContentPage', '2018-11-09 16:12:30', '2018-11-08 16:00:43', 'meet-our-team', 'Our Team', NULL, NULL, NULL, NULL, 1, 1, 3, 0, 0, NULL, 'Inherit', 'Inherit', 71, 1),
(450, 79, 10, 0, 1, 0, 'MultiContentPage', '2018-11-09 16:12:30', '2018-11-08 16:00:43', 'meet-our-team', 'Our Team', NULL, NULL, NULL, NULL, 1, 1, 4, 0, 0, NULL, 'Inherit', 'Inherit', 71, 1),
(451, 79, 11, 1, 1, 1, 'MultiContentPage', '2018-11-09 16:12:41', '2018-11-08 16:00:43', 'meet-our-team', 'Our Team', NULL, NULL, NULL, NULL, 1, 1, 3, 0, 0, NULL, 'Inherit', 'Inherit', 71, 1),
(452, 76, 10, 1, 1, 1, 'MultiContentPage', '2018-11-09 16:12:44', '2018-11-01 13:10:01', 'history', 'History', NULL, NULL, NULL, NULL, 1, 1, 5, 0, 0, NULL, 'Inherit', 'Inherit', 71, 1),
(453, 87, 1, 0, 1, 0, 'MultiContentPage', '2018-11-09 16:13:59', '2018-11-09 16:13:59', 'new-multi-content-page', 'New Multi Content Page', NULL, NULL, NULL, NULL, 1, 1, 12, 0, 0, NULL, 'Inherit', 'Inherit', 0, 1),
(454, 87, 2, 1, 1, 1, 'MultiContentPage', '2018-11-09 16:14:18', '2018-11-09 16:13:59', 'our-sip-teams', 'Our SIP Teams', NULL, NULL, NULL, NULL, 1, 1, 12, 0, 0, NULL, 'Inherit', 'Inherit', 0, 1),
(455, 87, 3, 1, 1, 1, 'MultiContentPage', '2018-11-09 16:29:57', '2018-11-09 16:13:59', 'our-sip-teams', 'Our SIP Teams', NULL, NULL, NULL, NULL, 1, 1, 12, 0, 0, NULL, 'Inherit', 'Inherit', 0, 1),
(456, 87, 4, 1, 1, 1, 'MultiContentPage', '2018-11-09 16:30:07', '2018-11-09 16:13:59', 'our-sip-teams', 'Our SIP Teams', NULL, NULL, NULL, NULL, 1, 1, 12, 0, 0, NULL, 'Inherit', 'Inherit', 0, 1),
(457, 87, 5, 0, 1, 0, 'MultiContentPage', '2018-11-09 16:37:31', '2018-11-09 16:13:59', 'our-sip-teams', 'Our SIP Teams', NULL, NULL, NULL, NULL, 1, 1, 12, 0, 0, NULL, 'Inherit', 'Inherit', 71, 1),
(458, 87, 6, 1, 1, 1, 'MultiContentPage', '2018-11-09 16:37:31', '2018-11-09 16:13:59', 'our-sip-teams', 'Our SIP Teams', NULL, NULL, NULL, NULL, 1, 1, 5, 0, 0, NULL, 'Inherit', 'Inherit', 71, 1),
(459, 77, 9, 1, 1, 1, 'MultiContentPage', '2018-11-09 16:39:57', '2018-11-07 13:48:13', 'sip-for-general-practice', 'SIP for General Practice', NULL, NULL, NULL, NULL, 1, 1, 1, 0, 0, NULL, 'Inherit', 'Inherit', 71, 1),
(460, 55, 4, 1, 1, 1, 'Blog', '2018-11-12 13:02:03', '2018-10-17 16:38:51', 'events', 'Events', NULL, '<h1><strong>EVENTS</strong></h1>', NULL, NULL, 1, 1, 7, 0, 0, NULL, 'Inherit', 'Inherit', 0, 1),
(461, 55, 5, 1, 1, 1, 'Blog', '2018-11-12 13:16:24', '2018-10-17 16:38:51', 'events', 'Events', NULL, '<h1><strong>EVENTS</strong></h1>', NULL, NULL, 1, 1, 7, 0, 0, NULL, 'Inherit', 'Inherit', 0, 1),
(462, 55, 6, 1, 1, 1, 'Blog', '2018-11-12 13:52:05', '2018-10-17 16:38:51', 'events', 'Events', NULL, '<h1><strong>EVENTS</strong></h1>', NULL, NULL, 1, 1, 7, 0, 0, NULL, 'Inherit', 'Inherit', 0, 1),
(463, 57, 11, 1, 1, 1, 'BlogPost', '2018-11-12 15:59:43', '2018-10-17 16:56:56', 'learning-session-2', 'Learning Session 2', NULL, '<p><span>CLICK HERE: <a class=\"external\" title=\"Open external link\" rel=\"external\" href=\"https://bit.ly/2PCibKD\">https://bit.ly/2PCibKD </a>to RSVP now.</span><br><br>Please ensure you use one name and one email address per participant.</p><p>Don\'t forget to add your MCNZ number if you need GP CME.</p><p><span>Session 6-9pm, a light dinner will be served from 5.30pm.</span></p>', NULL, NULL, 0, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 55, 1),
(464, 57, 12, 1, 1, 1, 'BlogPost', '2018-11-12 16:00:28', '2018-10-17 16:56:56', 'learning-session-2', 'Learning Session 2', NULL, '<p><span>CLICK HERE: <a class=\"external\" title=\"Open external link\" rel=\"external\" href=\"https://bit.ly/2PCibKD\">https://bit.ly/2PCibKD </a>to RSVP now.</span><br>Please ensure you use one name and one email address per participant.<br>Don\'t forget to add your MCNZ number if you need GP CME.<br>Session 6-9pm, a light dinner will be served from 5.30pm.</p>', NULL, NULL, 0, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 55, 1),
(465, 57, 13, 1, 1, 1, 'BlogPost', '2018-11-12 16:01:43', '2018-10-17 16:56:56', 'learning-session-2', 'Learning Session 2', NULL, '<p><span>CLICK HERE: <a class=\"external\" title=\"Open external link\" rel=\"external\" href=\"https://bit.ly/2PCibKD\">https://bit.ly/2PCibKD </a>to RSVP now.</span><br>Please ensure you use one name and one email address per participant.<br>Don\'t forget to add your MCNZ number if you need GP CME.<br>Session 6-9pm, a light dinner will be served from 5.30pm.</p>', NULL, NULL, 0, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 55, 1),
(466, 57, 14, 1, 1, 1, 'BlogPost', '2018-11-12 16:02:17', '2018-10-17 16:56:56', 'learning-session-2', 'Learning Session 2', NULL, '<p>CLICK HERE: <a class=\"external\" title=\"Open external link\" rel=\"external\" href=\"https://bit.ly/2PCibKD\">https://bit.ly/2PCibKD </a>to RSVP now. <br>Please ensure you use one name and one email address per participant.<br>Don\'t forget to add your MCNZ number if you need GP CME.<br>Session 6-9pm, a light dinner will be served from 5.30pm.</p>', NULL, NULL, 0, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 55, 1),
(467, 57, 15, 1, 1, 1, 'BlogPost', '2018-11-12 16:20:59', '2018-10-17 16:56:56', 'learning-session-2', 'Learning Session 2', NULL, '<p>CLICK HERE: <a class=\"external\" title=\"Open external link\" rel=\"external\" href=\"https://bit.ly/2PCibKD\">https://bit.ly/2PCibKD </a>to RSVP now. <br>Please ensure you use one name and one email address per participant.<br>Don\'t forget to add your MCNZ number if you need GP CME.<br>Session 6-9pm, a light dinner will be served from 5.30pm.</p>', NULL, NULL, 0, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 55, 1),
(468, 57, 16, 1, 1, 1, 'BlogPost', '2018-11-12 16:21:24', '2018-10-17 16:56:56', 'learning-session-2', 'Learning Session 2', NULL, '<p>CLICK HERE: <a class=\"external\" title=\"Open external link\" rel=\"external\" href=\"https://bit.ly/2PCibKD\">https://bit.ly/2PCibKD </a>to RSVP now. <br>Please ensure you use one name and one email address per participant.<br>Don\'t forget to add your MCNZ number if you need GP CME.<br>Session 6-9pm, a light dinner will be served from 5.30pm.</p>', NULL, NULL, 0, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 55, 1),
(469, 57, 17, 1, 1, 1, 'BlogPost', '2018-11-12 16:21:28', '2018-10-17 16:56:56', 'learning-session-2', 'Learning Session 2', NULL, '<p>CLICK HERE: <a class=\"external\" title=\"Open external link\" rel=\"external\" href=\"https://bit.ly/2PCibKD\">https://bit.ly/2PCibKD </a>to RSVP now. <br>Please ensure you use one name and one email address per participant.<br>Don\'t forget to add your MCNZ number if you need GP CME.<br>Session 6-9pm, a light dinner will be served from 5.30pm.</p>', NULL, NULL, 0, 1, 2, 0, 0, NULL, 'Inherit', 'Inherit', 55, 1),
(470, 88, 1, 0, 1, 0, 'Page', '2018-11-12 16:39:07', '2018-11-12 16:39:07', 'new-page', 'New Page', NULL, NULL, NULL, NULL, 1, 1, 12, 0, 0, NULL, 'Inherit', 'Inherit', 0, 1),
(471, 88, 2, 1, 1, 1, 'Page', '2018-11-12 16:39:13', '2018-11-12 16:39:07', 'tes', 'Tes', NULL, NULL, NULL, NULL, 1, 1, 12, 0, 0, NULL, 'Inherit', 'Inherit', 0, 1),
(472, 88, 3, 1, 1, 1, 'Page', '2018-11-12 16:39:37', '2018-11-12 16:39:07', 'tes', 'Tes', NULL, '<p>It\'s time to look at your data, have some group discussions and add to your quality improvement toolkit. The Safety in Practice team is looking forward to bringing you the second learning session for the year, combining GP, pharmacy and urgent care teams. This collaboration will help to fuel enhanced learning.</p><p>Registration is from 5.30pm with the session beginning at 6pm. A light dinner will be provided from 5.30pm.</p><p>Important:  It is vital that each individual registers under their own name. This enables a record of attendance to be kept and your certificates to be generated. <br><br>NB: GPs attending this session will be entitled to MOPS points; please make sure these are documented on your registration. Nurses, pharmacists and other staff will receive a certificate for their professional development</p><p><span>Thursday 15th November 5.30-9pm, Royal New Zealand Yacht Squadraon </span><a href=\"https://www.eventfinda.co.nz/2018/safety-in-practice-learning-session-city/auckland/westhaven?_ga=2.132405576.777780009.1539543926-890674783.1534388863\">CLICK HERE</a><span> to RSVP now</span></p><p>Thursday 22nd November 5.30-9pm, Whenua Pupuke, North Shore Hospital <a href=\"https://www.eventfinda.co.nz/2018/safety-in-practice-learning-session-north-shore/auckland/takapuna?utm_campaign=were-you-looking-for-events&amp;utm_medium=click-through&amp;utm_source=2018%2Fsafety-in-practice-learning-session-city%2Fauckland%2Fwesthaven\">CLICK HERE</a> to RSVP now</p><p><span> </span></p>', NULL, NULL, 1, 1, 12, 0, 0, NULL, 'Inherit', 'Inherit', 0, 1),
(473, 88, 4, 1, 1, 1, 'MultiContentPage', '2018-11-14 11:28:57', '2018-11-12 16:39:07', 'tes', 'Tes', NULL, '<p>It\'s time to look at your data, have some group discussions and add to your quality improvement toolkit. The Safety in Practice team is looking forward to bringing you the second learning session for the year, combining GP, pharmacy and urgent care teams. This collaboration will help to fuel enhanced learning.</p><p>Registration is from 5.30pm with the session beginning at 6pm. A light dinner will be provided from 5.30pm.</p><p>Important:  It is vital that each individual registers under their own name. This enables a record of attendance to be kept and your certificates to be generated. <br><br>NB: GPs attending this session will be entitled to MOPS points; please make sure these are documented on your registration. Nurses, pharmacists and other staff will receive a certificate for their professional development</p><p><span>Thursday 15th November 5.30-9pm, Royal New Zealand Yacht Squadraon </span><a href=\"https://www.eventfinda.co.nz/2018/safety-in-practice-learning-session-city/auckland/westhaven?_ga=2.132405576.777780009.1539543926-890674783.1534388863\">CLICK HERE</a><span> to RSVP now</span></p><p>Thursday 22nd November 5.30-9pm, Whenua Pupuke, North Shore Hospital <a href=\"https://www.eventfinda.co.nz/2018/safety-in-practice-learning-session-north-shore/auckland/takapuna?utm_campaign=were-you-looking-for-events&amp;utm_medium=click-through&amp;utm_source=2018%2Fsafety-in-practice-learning-session-city%2Fauckland%2Fwesthaven\">CLICK HERE</a> to RSVP now</p><p><span> </span></p>', NULL, NULL, 1, 1, 12, 0, 0, NULL, 'Inherit', 'Inherit', 0, 1),
(474, 88, 5, 1, 1, 1, 'MultiContentPage', '2018-11-14 11:29:37', '2018-11-12 16:39:07', 'faq', 'FAQ', NULL, '<p>It\'s time to look at your data, have some group discussions and add to your quality improvement toolkit. The Safety in Practice team is looking forward to bringing you the second learning session for the year, combining GP, pharmacy and urgent care teams. This collaboration will help to fuel enhanced learning.</p><p>Registration is from 5.30pm with the session beginning at 6pm. A light dinner will be provided from 5.30pm.</p><p>Important:  It is vital that each individual registers under their own name. This enables a record of attendance to be kept and your certificates to be generated. <br><br>NB: GPs attending this session will be entitled to MOPS points; please make sure these are documented on your registration. Nurses, pharmacists and other staff will receive a certificate for their professional development</p><p><span>Thursday 15th November 5.30-9pm, Royal New Zealand Yacht Squadraon </span><a href=\"https://www.eventfinda.co.nz/2018/safety-in-practice-learning-session-city/auckland/westhaven?_ga=2.132405576.777780009.1539543926-890674783.1534388863\">CLICK HERE</a><span> to RSVP now</span></p><p>Thursday 22nd November 5.30-9pm, Whenua Pupuke, North Shore Hospital <a href=\"https://www.eventfinda.co.nz/2018/safety-in-practice-learning-session-north-shore/auckland/takapuna?utm_campaign=were-you-looking-for-events&amp;utm_medium=click-through&amp;utm_source=2018%2Fsafety-in-practice-learning-session-city%2Fauckland%2Fwesthaven\">CLICK HERE</a> to RSVP now</p><p><span> </span></p>', NULL, NULL, 1, 1, 12, 0, 0, NULL, 'Inherit', 'Inherit', 0, 1),
(475, 88, 6, 1, 1, 1, 'MultiContentPage', '2018-11-14 11:34:36', '2018-11-12 16:39:07', 'faq', 'FAQ', NULL, '<p>It\'s time to look at your data, have some group discussions and add to your quality improvement toolkit. The Safety in Practice team is looking forward to bringing you the second learning session for the year, combining GP, pharmacy and urgent care teams. This collaboration will help to fuel enhanced learning.</p><p>Registration is from 5.30pm with the session beginning at 6pm. A light dinner will be provided from 5.30pm.</p><p>Important:  It is vital that each individual registers under their own name. This enables a record of attendance to be kept and your certificates to be generated. <br><br>NB: GPs attending this session will be entitled to MOPS points; please make sure these are documented on your registration. Nurses, pharmacists and other staff will receive a certificate for their professional development</p><p><span>Thursday 15th November 5.30-9pm, Royal New Zealand Yacht Squadraon </span><a href=\"https://www.eventfinda.co.nz/2018/safety-in-practice-learning-session-city/auckland/westhaven?_ga=2.132405576.777780009.1539543926-890674783.1534388863\">CLICK HERE</a><span> to RSVP now</span></p><p>Thursday 22nd November 5.30-9pm, Whenua Pupuke, North Shore Hospital <a href=\"https://www.eventfinda.co.nz/2018/safety-in-practice-learning-session-north-shore/auckland/takapuna?utm_campaign=were-you-looking-for-events&amp;utm_medium=click-through&amp;utm_source=2018%2Fsafety-in-practice-learning-session-city%2Fauckland%2Fwesthaven\">CLICK HERE</a> to RSVP now</p><p><span> </span></p>', NULL, NULL, 1, 1, 12, 0, 0, NULL, 'Inherit', 'Inherit', 0, 1);
INSERT INTO `SiteTree_versions` (`ID`, `RecordID`, `Version`, `WasPublished`, `AuthorID`, `PublisherID`, `ClassName`, `LastEdited`, `Created`, `URLSegment`, `Title`, `MenuTitle`, `Content`, `MetaDescription`, `ExtraMeta`, `ShowInMenus`, `ShowInSearch`, `Sort`, `HasBrokenFile`, `HasBrokenLink`, `ReportClass`, `CanViewType`, `CanEditType`, `ParentID`, `SubsiteID`) VALUES
(476, 88, 7, 1, 1, 1, 'MultiContentPage', '2018-11-14 11:56:50', '2018-11-12 16:39:07', 'faq', 'FAQ', NULL, '<p>It\'s time to look at your data, have some group discussions and add to your quality improvement toolkit. The Safety in Practice team is looking forward to bringing you the second learning session for the year, combining GP, pharmacy and urgent care teams. This collaboration will help to fuel enhanced learning.</p><p>Registration is from 5.30pm with the session beginning at 6pm. A light dinner will be provided from 5.30pm.</p><p>Important:  It is vital that each individual registers under their own name. This enables a record of attendance to be kept and your certificates to be generated. <br><br>NB: GPs attending this session will be entitled to MOPS points; please make sure these are documented on your registration. Nurses, pharmacists and other staff will receive a certificate for their professional development</p><p><span>Thursday 15th November 5.30-9pm, Royal New Zealand Yacht Squadraon </span><a href=\"https://www.eventfinda.co.nz/2018/safety-in-practice-learning-session-city/auckland/westhaven?_ga=2.132405576.777780009.1539543926-890674783.1534388863\">CLICK HERE</a><span> to RSVP now</span></p><p>Thursday 22nd November 5.30-9pm, Whenua Pupuke, North Shore Hospital <a href=\"https://www.eventfinda.co.nz/2018/safety-in-practice-learning-session-north-shore/auckland/takapuna?utm_campaign=were-you-looking-for-events&amp;utm_medium=click-through&amp;utm_source=2018%2Fsafety-in-practice-learning-session-city%2Fauckland%2Fwesthaven\">CLICK HERE</a> to RSVP now</p><p><span> </span></p>', NULL, NULL, 1, 1, 12, 0, 0, NULL, 'Inherit', 'Inherit', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `SiteTree_ViewerGroups`
--

CREATE TABLE `SiteTree_ViewerGroups` (
  `ID` int(11) NOT NULL,
  `SiteTreeID` int(11) NOT NULL DEFAULT '0',
  `GroupID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `SlideImage`
--

CREATE TABLE `SlideImage` (
  `ID` int(11) NOT NULL,
  `ClassName` enum('SlideImage') DEFAULT 'SlideImage',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Name` varchar(255) DEFAULT NULL,
  `Headline` varchar(255) DEFAULT NULL,
  `Description` mediumtext,
  `SortOrder` int(11) NOT NULL DEFAULT '0',
  `ShowSlide` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `ImageID` int(11) NOT NULL DEFAULT '0',
  `PageID` int(11) NOT NULL DEFAULT '0',
  `PageLinkID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `SlideImage`
--

INSERT INTO `SlideImage` (`ID`, `ClassName`, `LastEdited`, `Created`, `Name`, `Headline`, `Description`, `SortOrder`, `ShowSlide`, `Version`, `ImageID`, `PageID`, `PageLinkID`) VALUES
(1, 'SlideImage', '2018-09-18 11:08:21', '2018-09-18 11:06:21', 'Slide1', 'Accelerate your ideas,  innovation + care redesign', NULL, 0, 0, 3, 5, 1, 0),
(2, 'SlideImage', '2018-09-18 11:08:28', '2018-09-18 11:07:46', 'Slide2', 'test', NULL, 0, 0, 2, 6, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `SlideImage_Live`
--

CREATE TABLE `SlideImage_Live` (
  `ID` int(11) NOT NULL,
  `ClassName` enum('SlideImage') DEFAULT 'SlideImage',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Name` varchar(255) DEFAULT NULL,
  `Headline` varchar(255) DEFAULT NULL,
  `Description` mediumtext,
  `SortOrder` int(11) NOT NULL DEFAULT '0',
  `ShowSlide` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `ImageID` int(11) NOT NULL DEFAULT '0',
  `PageID` int(11) NOT NULL DEFAULT '0',
  `PageLinkID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `SlideImage_versions`
--

CREATE TABLE `SlideImage_versions` (
  `ID` int(11) NOT NULL,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `WasPublished` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `AuthorID` int(11) NOT NULL DEFAULT '0',
  `PublisherID` int(11) NOT NULL DEFAULT '0',
  `ClassName` enum('SlideImage') DEFAULT 'SlideImage',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Name` varchar(255) DEFAULT NULL,
  `Headline` varchar(255) DEFAULT NULL,
  `Description` mediumtext,
  `SortOrder` int(11) NOT NULL DEFAULT '0',
  `ShowSlide` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `ImageID` int(11) NOT NULL DEFAULT '0',
  `PageID` int(11) NOT NULL DEFAULT '0',
  `PageLinkID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `SlideImage_versions`
--

INSERT INTO `SlideImage_versions` (`ID`, `RecordID`, `Version`, `WasPublished`, `AuthorID`, `PublisherID`, `ClassName`, `LastEdited`, `Created`, `Name`, `Headline`, `Description`, `SortOrder`, `ShowSlide`, `ImageID`, `PageID`, `PageLinkID`) VALUES
(1, 1, 1, 0, 1, 0, 'SlideImage', '2018-09-18 11:06:21', '2018-09-18 11:06:21', 'Slide1', 'Accelerate your ideas,  innovation + care redesign', NULL, 0, 0, 5, 1, 0),
(2, 1, 2, 0, 1, 0, 'SlideImage', '2018-09-18 11:06:35', '2018-09-18 11:06:21', 'Slide1', 'Accelerate your ideas,  innovation + care redesign', NULL, 0, 0, 5, 1, 1),
(3, 2, 1, 0, 1, 0, 'SlideImage', '2018-09-18 11:07:46', '2018-09-18 11:07:46', 'Slide2', 'test', NULL, 0, 0, 6, 1, 3),
(4, 1, 3, 0, 1, 0, 'SlideImage', '2018-09-18 11:08:21', '2018-09-18 11:06:21', 'Slide1', 'Accelerate your ideas,  innovation + care redesign', NULL, 0, 0, 5, 1, 0),
(5, 2, 2, 0, 1, 0, 'SlideImage', '2018-09-18 11:08:28', '2018-09-18 11:07:46', 'Slide2', 'test', NULL, 0, 0, 6, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `SliderItem`
--

CREATE TABLE `SliderItem` (
  `ID` int(11) NOT NULL,
  `ClassName` enum('SliderItem') DEFAULT 'SliderItem',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Title` mediumtext,
  `Archived` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `Sort` int(11) NOT NULL DEFAULT '0',
  `ParentID` int(11) NOT NULL DEFAULT '0',
  `PageLinkID` int(11) NOT NULL DEFAULT '0',
  `SliderImgID` int(11) NOT NULL DEFAULT '0',
  `PageDataID` int(11) NOT NULL DEFAULT '0',
  `PageDataIDID` int(11) NOT NULL DEFAULT '0',
  `Content` mediumtext,
  `SliderAnimate` varchar(255) DEFAULT NULL,
  `SliderAnimateDelay` varchar(255) DEFAULT NULL,
  `SliderAnimateSpeed` varchar(255) DEFAULT NULL,
  `Animate` varchar(255) DEFAULT NULL,
  `AnimateDelay` varchar(255) DEFAULT NULL,
  `AnimateSpeed` varchar(255) DEFAULT NULL,
  `Animates` varchar(255) DEFAULT NULL,
  `AnimateDelays` varchar(255) DEFAULT NULL,
  `AnimateSpeeds` varchar(255) DEFAULT NULL,
  `Animation` varchar(255) DEFAULT NULL,
  `AnimationDelays` varchar(255) DEFAULT NULL,
  `AnimationSpeeds` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `SliderItem`
--

INSERT INTO `SliderItem` (`ID`, `ClassName`, `LastEdited`, `Created`, `Title`, `Archived`, `Sort`, `ParentID`, `PageLinkID`, `SliderImgID`, `PageDataID`, `PageDataIDID`, `Content`, `SliderAnimate`, `SliderAnimateDelay`, `SliderAnimateSpeed`, `Animate`, `AnimateDelay`, `AnimateSpeed`, `Animates`, `AnimateDelays`, `AnimateSpeeds`, `Animation`, `AnimationDelays`, `AnimationSpeeds`) VALUES
(1, 'SliderItem', '2018-09-28 17:04:29', '2018-09-20 17:20:19', 'Slider 3', 0, 3, 11, 14, 26, 0, 0, NULL, NULL, NULL, NULL, 'fadeInRight', NULL, NULL, NULL, NULL, NULL, 'fadeInRight', NULL, NULL),
(2, 'SliderItem', '2018-09-28 17:04:01', '2018-09-20 17:28:13', 'Slider 2', 0, 2, 11, 13, 24, 0, 0, NULL, NULL, NULL, NULL, 'fadeInLeft', NULL, NULL, NULL, NULL, NULL, 'fadeInUp', NULL, NULL),
(3, 'SliderItem', '2018-09-28 17:04:10', '2018-09-20 17:28:27', 'Slider 1', 0, 1, 11, 12, 25, 0, 0, NULL, NULL, NULL, NULL, 'fadeInRight', NULL, NULL, NULL, NULL, NULL, 'fadeInLeft', NULL, NULL),
(4, 'SliderItem', '2018-09-28 17:09:23', '2018-09-21 11:39:38', 'slider 4', 0, 4, 11, 13, 27, 0, 0, NULL, NULL, NULL, NULL, 'fadeInLeft', NULL, NULL, NULL, NULL, NULL, 'fadeIn', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `SlideshowItem`
--

CREATE TABLE `SlideshowItem` (
  `ID` int(11) NOT NULL,
  `ClassName` enum('SlideshowItem') DEFAULT 'SlideshowItem',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Title` mediumtext,
  `SliderText` mediumtext,
  `SliderTextColor` varchar(6) DEFAULT NULL,
  `SliderTextSize` int(11) NOT NULL DEFAULT '0',
  `OverlayOpacity` int(11) NOT NULL DEFAULT '0',
  `LinkLabel` mediumtext,
  `ExternalLink` mediumtext,
  `ButtonColor` varchar(6) DEFAULT NULL,
  `ButtonBGColor` varchar(6) DEFAULT NULL,
  `Archived` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `Sort` int(11) NOT NULL DEFAULT '0',
  `BgImageID` int(11) NOT NULL DEFAULT '0',
  `ParentID` int(11) NOT NULL DEFAULT '0',
  `PageLinkID` int(11) NOT NULL DEFAULT '0',
  `Content` mediumtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `SlideshowItem`
--

INSERT INTO `SlideshowItem` (`ID`, `ClassName`, `LastEdited`, `Created`, `Title`, `SliderText`, `SliderTextColor`, `SliderTextSize`, `OverlayOpacity`, `LinkLabel`, `ExternalLink`, `ButtonColor`, `ButtonBGColor`, `Archived`, `Sort`, `BgImageID`, `ParentID`, `PageLinkID`, `Content`) VALUES
(1, 'SlideshowItem', '2018-10-18 11:55:15', '2018-09-18 16:23:52', 'Slide 1', 'Accelerate your ideas,  innovation + care redesign', 'ffffff', 60, 0, NULL, '#', NULL, NULL, 0, 0, 9, 9, 0, NULL),
(2, 'SlideshowItem', '2018-09-19 13:40:41', '2018-09-19 13:40:41', 'Slide 2', 'Institute for innovation + improvement', 'ffffff', 60, 0, NULL, NULL, NULL, NULL, 0, 0, 9, 9, 2, NULL),
(3, 'SlideshowItem', '2018-10-24 11:03:07', '2018-10-17 11:24:09', 'What area does the programme focus on?', 'What area does the programme focus on?', 'ffffff', 40, 0, NULL, NULL, NULL, NULL, 0, 0, 209, 22, 0, NULL),
(4, 'SlideshowItem', '2018-10-24 11:06:55', '2018-10-17 13:40:28', 'Join Us', 'Join our team!', 'ffffff', 40, 0, NULL, NULL, NULL, NULL, 0, 0, 211, 22, 0, NULL),
(5, 'SlideshowItem', '2018-10-24 11:07:44', '2018-10-24 10:54:04', 'Our Aims', 'Our Aims', 'ffffff', 46, 0, NULL, NULL, NULL, NULL, 0, 0, 229, 29, 0, '<ul><li>Reduce preventable harm to patients</li>\n<li>Create safer more reliable systems</li>\n<li>Promote a culture of safety</li>\n<li>Develop quality improvement skill</li>\n</ul>');

-- --------------------------------------------------------

--
-- Table structure for table `SlideshowModule`
--

CREATE TABLE `SlideshowModule` (
  `ID` int(11) NOT NULL,
  `SliderHeight` mediumtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `SlideshowModule`
--

INSERT INTO `SlideshowModule` (`ID`, `SliderHeight`) VALUES
(29, '500');

-- --------------------------------------------------------

--
-- Table structure for table `SlideshowModuleItem`
--

CREATE TABLE `SlideshowModuleItem` (
  `ID` int(11) NOT NULL,
  `ClassName` enum('SlideshowModuleItem') DEFAULT 'SlideshowModuleItem',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Title` mediumtext,
  `SliderText` mediumtext,
  `SliderTextColor` varchar(6) DEFAULT NULL,
  `SliderTextSize` int(11) NOT NULL DEFAULT '0',
  `OverlayOpacity` int(11) NOT NULL DEFAULT '0',
  `LinkLabel` mediumtext,
  `ExternalLink` mediumtext,
  `ButtonColor` varchar(6) DEFAULT NULL,
  `ButtonBGColor` varchar(6) DEFAULT NULL,
  `Archived` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `Sort` int(11) NOT NULL DEFAULT '0',
  `BgImageID` int(11) NOT NULL DEFAULT '0',
  `ParentID` int(11) NOT NULL DEFAULT '0',
  `PageLinkID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `SocialNetworkItem`
--

CREATE TABLE `SocialNetworkItem` (
  `ID` int(11) NOT NULL,
  `ClassName` enum('SocialNetworkItem') DEFAULT 'SocialNetworkItem',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Title` enum('Facebook','Twitter','LinkedIn','Youtube','Vimeo','Instagram','GooglePlus') DEFAULT 'Facebook',
  `Link` varchar(255) DEFAULT NULL,
  `Sort` int(11) NOT NULL DEFAULT '0',
  `SiteConfigID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `SocialNetworkItem`
--

INSERT INTO `SocialNetworkItem` (`ID`, `ClassName`, `LastEdited`, `Created`, `Title`, `Link`, `Sort`, `SiteConfigID`) VALUES
(1, 'SocialNetworkItem', '2018-10-01 12:54:48', '2018-10-01 12:54:48', 'Facebook', 'https://www.facebook.com/i3WaitemataDHB/', 0, 1),
(2, 'SocialNetworkItem', '2018-10-01 12:55:14', '2018-10-01 12:55:14', 'Twitter', 'https://twitter.com/i3waitematadhb', 0, 1),
(3, 'SocialNetworkItem', '2018-10-01 12:55:39', '2018-10-01 12:55:39', 'LinkedIn', 'https://www.linkedin.com/company/waitemata-district-health-board', 0, 1),
(4, 'SocialNetworkItem', '2018-10-01 12:55:57', '2018-10-01 12:55:57', 'Vimeo', 'https://vimeo.com/user21844731', 0, 1),
(5, 'SocialNetworkItem', '2018-10-01 12:56:06', '2018-10-01 12:56:06', 'Youtube', 'https://www.youtube.com/channel/UCYdxVs_nlw2a3aDA9caa1oQ', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `SubModule`
--

CREATE TABLE `SubModule` (
  `ID` int(11) NOT NULL,
  `ClassName` enum('SubModule') DEFAULT 'SubModule',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Title` varchar(255) DEFAULT NULL,
  `Icon` varchar(255) DEFAULT NULL,
  `Sort` int(11) NOT NULL DEFAULT '0',
  `ModuleTypeID` int(11) NOT NULL DEFAULT '0',
  `PageLinkID` int(11) NOT NULL DEFAULT '0',
  `LinkToPage` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `FileID` int(11) NOT NULL DEFAULT '0',
  `ExternalLink` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `SubModule`
--

INSERT INTO `SubModule` (`ID`, `ClassName`, `LastEdited`, `Created`, `Title`, `Icon`, `Sort`, `ModuleTypeID`, `PageLinkID`, `LinkToPage`, `FileID`, `ExternalLink`) VALUES
(1, 'SubModule', '2018-10-30 17:19:13', '2018-10-26 13:49:54', 'Medication Reconciliation', 'fal fa-prescription', 0, 5, 73, 1, 0, NULL),
(2, 'SubModule', '2018-10-31 11:18:48', '2018-10-26 13:58:08', 'Results Handling', 'fal fa-vials', 0, 5, 74, 1, 0, NULL),
(3, 'SubModule', '2018-10-26 14:01:07', '2018-10-26 14:01:07', 'Anticoagulants', 'fal fa-tablets', 0, 5, 0, 0, 0, NULL),
(4, 'SubModule', '2018-10-26 14:04:25', '2018-10-26 14:04:25', 'DMARDs', 'fal fa-capsules', 0, 5, 0, 0, 0, NULL),
(5, 'SubModule', '2018-10-26 14:04:40', '2018-10-26 14:04:40', 'Opiods', 'fal fa-capsules', 0, 5, 0, 0, 0, NULL),
(6, 'SubModule', '2018-10-26 14:05:22', '2018-10-26 14:05:22', 'Protecting Kidneys', 'fal fa-kidneys', 0, 5, 0, 0, 0, NULL),
(7, 'SubModule', '2018-10-26 14:07:24', '2018-10-26 14:07:24', 'NSAIDs', 'fal fa-tablets', 0, 6, 0, 0, 0, NULL),
(8, 'SubModule', '2018-10-26 16:54:51', '2018-10-26 14:08:53', 'High Risk Medicines', 'fal fa-syringe', 0, 6, 0, 0, 0, NULL),
(9, 'SubModule', '2018-10-26 14:09:25', '2018-10-26 14:09:25', 'Kidneys', 'fal fa-kidneys', 0, 6, 0, 0, 0, NULL),
(10, 'SubModule', '2018-10-26 14:19:42', '2018-10-26 14:19:42', 'Safety Climate Survey', 'fal fa-comment-alt', 0, 7, 0, 0, 0, NULL),
(11, 'SubModule', '2018-10-29 09:01:07', '2018-10-26 14:22:35', 'Trigger Tool', 'fal fa-bullseye-pointer', 0, 7, 0, 0, 0, NULL),
(12, 'SubModule', '2018-10-26 14:23:18', '2018-10-26 14:23:18', 'Significant Event Analysis', 'fal fa-calendar-alt', 0, 7, 0, 0, 0, NULL),
(13, 'SubModule', '2018-10-26 14:28:50', '2018-10-26 14:25:03', 'Anticoagulants', 'fal fa-tablets', 0, 8, 0, 0, 0, NULL),
(14, 'SubModule', '2018-10-26 14:33:24', '2018-10-26 14:32:45', 'Medication Reconciliation', 'fal fa-prescription', 0, 8, 0, 0, 0, NULL),
(15, 'SubModule', '2018-10-26 14:33:43', '2018-10-26 14:32:56', 'NSAIDs', 'fal fa-tablets', 0, 8, 0, 0, 0, NULL),
(16, 'SubModule', '2018-10-26 14:33:13', '2018-10-26 14:33:01', 'Opiods', 'fal fa-capsules', 0, 8, 0, 0, 0, NULL),
(17, 'SubModule', '2018-10-26 14:40:08', '2018-10-26 14:40:08', 'Benzodiazepines', 'fal fa-brain', 0, 13, 0, 0, 0, NULL),
(18, 'SubModule', '2018-10-26 14:41:16', '2018-10-26 14:41:16', 'Deteriorating Patient', 'fal fa-bed', 0, 13, 0, 0, 0, NULL),
(19, 'SubModule', '2018-10-26 14:43:27', '2018-10-26 14:41:45', 'NSAIDs', 'fal fa-tablets', 0, 13, 0, 0, 0, NULL),
(20, 'SubModule', '2018-10-26 14:43:14', '2018-10-26 14:42:11', 'Opiods', 'fal fa-capsules', 0, 13, 0, 0, 0, NULL),
(21, 'SubModule', '2018-10-26 14:44:42', '2018-10-26 14:44:42', 'Safety Climate Survey', 'fal fa-comment-alt', 0, 14, 0, 0, 0, NULL),
(22, 'SubModule', '2018-10-26 14:44:55', '2018-10-26 14:44:55', 'Trigger Tool', 'fal fa-bell', 0, 14, 0, 0, 0, NULL),
(24, 'SubModule', '2018-10-31 10:20:37', '2018-10-31 10:20:37', 'Goodfellow Unit Webinar 2017', 'fal fa-microphone-alt', 0, 11, 0, 0, 0, NULL),
(25, 'SubModule', '2018-10-31 10:43:25', '2018-10-31 10:23:24', 'ISBAR Communication Tool', 'fal fa-users-class', 0, 11, 0, 0, 253, NULL),
(26, 'SubModule', '2018-10-31 10:26:30', '2018-10-31 10:26:30', 'Pharmacy Programme 2018-19', 'fal fa-file-alt', 0, 15, 0, 0, 0, NULL),
(27, 'SubModule', '2018-10-31 10:28:17', '2018-10-31 10:28:17', 'GP Programme 2018-19', 'fal fa-file-medical', 0, 15, 0, 0, 0, NULL),
(28, 'SubModule', '2018-10-31 10:59:10', '2018-10-31 10:29:52', 'Howard et al 2003', 'fal fa-lightbulb-exclamation', 0, 12, 0, 0, 0, 'http://qualitysafety.bmj.com/content/12/4/280.long');

-- --------------------------------------------------------

--
-- Table structure for table `Subsite`
--

CREATE TABLE `Subsite` (
  `ID` int(11) NOT NULL,
  `ClassName` enum('Subsite') DEFAULT 'Subsite',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Title` varchar(255) DEFAULT NULL,
  `RedirectURL` varchar(255) DEFAULT NULL,
  `DefaultSite` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `Theme` varchar(50) DEFAULT NULL,
  `Language` varchar(6) DEFAULT NULL,
  `IsPublic` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `PageTypeBlacklist` mediumtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `Subsite`
--

INSERT INTO `Subsite` (`ID`, `ClassName`, `LastEdited`, `Created`, `Title`, `RedirectURL`, `DefaultSite`, `Theme`, `Language`, `IsPublic`, `PageTypeBlacklist`) VALUES
(1, 'Subsite', '2018-10-15 15:25:46', '2018-10-15 15:25:46', 'SafetyInPractice', NULL, 0, 'simple', 'en_GB', 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `SubsiteDomain`
--

CREATE TABLE `SubsiteDomain` (
  `ID` int(11) NOT NULL,
  `ClassName` enum('SubsiteDomain') DEFAULT 'SubsiteDomain',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Domain` varchar(255) DEFAULT NULL,
  `Protocol` enum('http','https','automatic') DEFAULT 'automatic',
  `IsPrimary` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `SubsiteID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `SubsitesVirtualPage`
--

CREATE TABLE `SubsitesVirtualPage` (
  `ID` int(11) NOT NULL,
  `CustomMetaTitle` varchar(255) DEFAULT NULL,
  `CustomMetaKeywords` varchar(255) DEFAULT NULL,
  `CustomMetaDescription` mediumtext,
  `CustomExtraMeta` mediumtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `SubsitesVirtualPage_Live`
--

CREATE TABLE `SubsitesVirtualPage_Live` (
  `ID` int(11) NOT NULL,
  `CustomMetaTitle` varchar(255) DEFAULT NULL,
  `CustomMetaKeywords` varchar(255) DEFAULT NULL,
  `CustomMetaDescription` mediumtext,
  `CustomExtraMeta` mediumtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `SubsitesVirtualPage_versions`
--

CREATE TABLE `SubsitesVirtualPage_versions` (
  `ID` int(11) NOT NULL,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `CustomMetaTitle` varchar(255) DEFAULT NULL,
  `CustomMetaKeywords` varchar(255) DEFAULT NULL,
  `CustomMetaDescription` mediumtext,
  `CustomExtraMeta` mediumtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `TeamHolderPage`
--

CREATE TABLE `TeamHolderPage` (
  `ID` int(11) NOT NULL,
  `i3Header` mediumtext,
  `ecaldHeader` mediumtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `TeamHolderPage`
--

INSERT INTO `TeamHolderPage` (`ID`, `i3Header`, `ecaldHeader`) VALUES
(27, '<p class=\"section-header\"><strong><span class=\"color-orange\">i3 </span> <span style=\"text-decoration: underline;\">TEAM</span></strong></p><p class=\"text-light\">W<span class=\"text-light\">e are a diverse team with skills and experience in allied health, anthropology, digital technology, engineering, health psychology, improvement science, informatics, law, medicine, nursing, operations management, public health and research</span></p><p class=\"text-light\"> </p>', '<p class=\"section-header\"><strong><span>eCALD TEAM</span></strong></p><p class=\"text-light\">W<span class=\"text-light\">e are a diverse team with skills and experience in allied health, anthropology, digital technology, engineering, health psychology, improvement science, informatics, law, medicine, nursing, operations management, public health and research</span></p>'),
(62, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `TeamHolderPage_Live`
--

CREATE TABLE `TeamHolderPage_Live` (
  `ID` int(11) NOT NULL,
  `i3Header` mediumtext,
  `ecaldHeader` mediumtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `TeamHolderPage_Live`
--

INSERT INTO `TeamHolderPage_Live` (`ID`, `i3Header`, `ecaldHeader`) VALUES
(27, '<p class=\"section-header\"><strong><span class=\"color-orange\">i3 </span> <span style=\"text-decoration: underline;\">TEAM</span></strong></p><p class=\"text-light\">W<span class=\"text-light\">e are a diverse team with skills and experience in allied health, anthropology, digital technology, engineering, health psychology, improvement science, informatics, law, medicine, nursing, operations management, public health and research</span></p><p class=\"text-light\"> </p>', '<p class=\"section-header\"><strong><span>eCALD TEAM</span></strong></p><p class=\"text-light\">W<span class=\"text-light\">e are a diverse team with skills and experience in allied health, anthropology, digital technology, engineering, health psychology, improvement science, informatics, law, medicine, nursing, operations management, public health and research</span></p>'),
(62, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `TeamHolderPage_versions`
--

CREATE TABLE `TeamHolderPage_versions` (
  `ID` int(11) NOT NULL,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `i3Header` mediumtext,
  `ecaldHeader` mediumtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `TeamHolderPage_versions`
--

INSERT INTO `TeamHolderPage_versions` (`ID`, `RecordID`, `Version`, `i3Header`, `ecaldHeader`) VALUES
(1, 27, 9, '<p class=\"section-header\"><strong><span class=\"color-orange\">i3 </span> <span style=\"text-decoration: underline;\">TEAM</span></strong></p><p class=\"text-light\">W<span class=\"text-light\">e are a diverse team with skills and experience in allied health, anthropology, digital technology, engineering, health psychology, improvement science, informatics, law, medicine, nursing, operations management, public health and research</span></p><p class=\"section-header\"><span class=\"text-light\"></span><span style=\"text-decoration: underline;\"><br></span></p><p class=\"text-light\"> </p>', NULL),
(2, 27, 10, '<p class=\"section-header\"><strong><span class=\"color-orange\">i3 </span> <span style=\"text-decoration: underline;\">TEAM</span></strong></p><p class=\"text-light\">W<span class=\"text-light\">e are a diverse team with skills and experience in allied health, anthropology, digital technology, engineering, health psychology, improvement science, informatics, law, medicine, nursing, operations management, public health and research</span></p><p class=\"section-header\"><span style=\"text-decoration: underline;\"> </span></p><p class=\"text-light\"> </p>', '<p class=\"section-header\"><strong><span>eCALD TEAM</span></strong></p><p class=\"text-light\">W<span class=\"text-light\">e are a diverse team with skills and experience in allied health, anthropology, digital technology, engineering, health psychology, improvement science, informatics, law, medicine, nursing, operations management, public health and research</span></p>'),
(3, 27, 11, '<p class=\"section-header\"><strong><span class=\"color-orange\">i3 </span> <span style=\"text-decoration: underline;\">TEAM</span></strong></p><p class=\"text-light\">W<span class=\"text-light\">e are a diverse team with skills and experience in allied health, anthropology, digital technology, engineering, health psychology, improvement science, informatics, law, medicine, nursing, operations management, public health and research</span></p><p class=\"text-light\"> </p>', '<p class=\"section-header\"><strong><span>eCALD TEAM</span></strong></p><p class=\"text-light\">W<span class=\"text-light\">e are a diverse team with skills and experience in allied health, anthropology, digital technology, engineering, health psychology, improvement science, informatics, law, medicine, nursing, operations management, public health and research</span></p>'),
(4, 62, 1, NULL, NULL),
(5, 62, 2, NULL, NULL),
(6, 62, 3, NULL, NULL),
(7, 62, 4, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `TeamItem`
--

CREATE TABLE `TeamItem` (
  `ID` int(11) NOT NULL,
  `ClassName` enum('TeamItem') DEFAULT 'TeamItem',
  `LastEdited` datetime DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Title` varchar(255) DEFAULT NULL,
  `LinkPage` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `Archived` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `Sort` int(11) NOT NULL DEFAULT '0',
  `ParentID` int(11) NOT NULL DEFAULT '0',
  `PageLinkID` int(11) NOT NULL DEFAULT '0',
  `Animate` varchar(255) DEFAULT NULL,
  `AnimateDelay` varchar(255) DEFAULT NULL,
  `AnimateSpeed` varchar(255) DEFAULT NULL,
  `ShowArrow` tinyint(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `TeamItem`
--

INSERT INTO `TeamItem` (`ID`, `ClassName`, `LastEdited`, `Created`, `Title`, `LinkPage`, `Archived`, `Sort`, `ParentID`, `PageLinkID`, `Animate`, `AnimateDelay`, `AnimateSpeed`, `ShowArrow`) VALUES
(1, 'TeamItem', '2018-10-09 14:03:01', '2018-09-27 13:20:50', 'Elna Meller', 1, 0, 1, 19, 28, 'fadeInLeft', NULL, NULL, 0),
(2, 'TeamItem', '2018-10-09 14:03:01', '2018-09-27 14:40:01', 'Sharon Puddle', 1, 0, 2, 19, 29, 'fadeInDown', NULL, NULL, 0),
(3, 'TeamItem', '2018-10-09 14:03:01', '2018-09-27 16:31:56', 'Michael Sheehan', 1, 0, 3, 19, 30, 'fadeInUp', NULL, NULL, 0),
(4, 'TeamItem', '2018-10-09 14:03:02', '2018-09-27 16:40:51', 'Delwyn Armstrong', 1, 0, 5, 19, 31, 'fadeInRight', NULL, NULL, 0),
(5, 'TeamItem', '2018-10-10 17:16:08', '2018-09-27 16:51:20', 'Sue French', 1, 1, 13, 19, 32, 'fadeInDown', NULL, NULL, 0),
(6, 'TeamItem', '2018-10-10 11:18:22', '2018-09-27 16:51:32', 'Renee Kong', 0, 0, 6, 19, 33, 'fadeInUp', NULL, NULL, 0),
(7, 'TeamItem', '2018-10-10 11:18:22', '2018-09-27 16:51:42', 'Dr Maneesh Deva', 0, 0, 7, 19, 34, 'fadeInRight', NULL, NULL, 0),
(8, 'TeamItem', '2018-10-10 11:18:22', '2018-09-27 16:51:52', 'Sangeeta Gupta', 0, 0, 8, 19, 35, 'fadeInLeft', NULL, NULL, 0),
(9, 'TeamItem', '2018-10-10 11:18:22', '2018-09-27 17:00:38', 'Dr Jerome Ng', 1, 0, 9, 19, 36, 'fadeIn', NULL, NULL, 0),
(10, 'TeamItem', '2018-10-10 11:48:16', '2018-09-27 17:00:55', 'Jane Yang', 0, 0, 10, 19, 37, 'fadeInLeft', NULL, NULL, 0),
(11, 'TeamItem', '2018-10-09 14:03:02', '2018-09-27 17:01:06', 'Dina Emmanuel', 1, 0, 4, 19, 38, 'fadeInRight', NULL, NULL, 0),
(12, 'TeamItem', '2018-10-10 13:27:44', '2018-09-27 17:01:17', 'Lisa Sue', 0, 0, 11, 19, 39, 'fadeInLeft', NULL, NULL, 0),
(13, 'TeamItem', '2018-10-10 17:16:40', '2018-10-10 17:12:09', 'Kevin', 1, 0, 12, 19, 52, 'fadeInUp', NULL, NULL, 0),
(14, 'TeamItem', '2018-10-12 10:07:58', '2018-10-12 10:07:58', 'Jay O\'Brien', 1, 0, 0, 19, 53, NULL, NULL, NULL, 0),
(15, 'TeamItem', '2018-10-23 16:27:13', '2018-10-18 16:18:19', 'Dr Lisa Eskildsen', 1, 0, 0, 27, 63, 'fadeInLeft', NULL, NULL, 1),
(16, 'TeamItem', '2018-10-23 16:27:19', '2018-10-18 16:18:27', 'Diana Phone', 1, 0, 0, 27, 64, 'fadeInUp', NULL, NULL, 1),
(17, 'TeamItem', '2018-10-23 16:27:25', '2018-10-18 16:18:36', 'Dr Eleri Clissold', 1, 0, 0, 27, 65, 'fadeInRight', NULL, NULL, 1),
(18, 'TeamItem', '2018-10-23 16:27:31', '2018-10-18 16:18:46', 'Sue French', 1, 0, 0, 27, 66, 'fadeInDown', NULL, NULL, 1),
(19, 'TeamItem', '2018-10-23 16:27:42', '2018-10-18 16:18:55', 'Dr Neil Houston', 1, 0, 0, 27, 67, 'fadeInDown', NULL, NULL, 1),
(20, 'TeamItem', '2018-10-23 16:27:57', '2018-10-18 16:19:07', 'Tim Wood', 1, 0, 0, 27, 68, 'fadeInRight', NULL, NULL, 1),
(21, 'TeamItem', '2018-10-23 16:27:52', '2018-10-18 16:19:15', 'Michael Hammond', 1, 0, 0, 27, 69, 'fadeInLeft', NULL, NULL, 1),
(22, 'TeamItem', '2018-10-23 16:28:03', '2018-10-18 16:19:23', 'Sreeja Nair', 1, 0, 0, 27, 70, 'fadeInUp', NULL, NULL, 1),
(23, 'TeamItem', '2018-11-08 16:05:52', '2018-11-08 16:05:52', 'Dr Lisa Eskildsen', 1, 0, 0, 55, 63, NULL, NULL, NULL, 1),
(24, 'TeamItem', '2018-11-08 16:10:41', '2018-11-08 16:10:41', 'Diana Phone', 1, 0, 0, 55, 64, NULL, NULL, NULL, 1),
(25, 'TeamItem', '2018-11-08 16:11:05', '2018-11-08 16:11:05', 'Dr Eleri Clissold', 1, 0, 0, 55, 65, NULL, NULL, NULL, 1),
(26, 'TeamItem', '2018-11-08 16:11:14', '2018-11-08 16:11:14', 'Sue French', 1, 0, 0, 55, 66, NULL, NULL, NULL, 1),
(27, 'TeamItem', '2018-11-08 16:11:25', '2018-11-08 16:11:25', 'Dr Neil Houston', 1, 0, 0, 55, 67, NULL, NULL, NULL, 1),
(28, 'TeamItem', '2018-11-08 16:11:38', '2018-11-08 16:11:38', 'Tim Wood', 1, 0, 0, 55, 68, NULL, NULL, NULL, 1),
(29, 'TeamItem', '2018-11-08 16:11:48', '2018-11-08 16:11:48', 'Michael Hammond', 1, 0, 0, 55, 69, NULL, NULL, NULL, 1),
(30, 'TeamItem', '2018-11-08 16:11:59', '2018-11-08 16:11:59', 'Sreeja Nair', 1, 0, 0, 55, 70, NULL, NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `VirtualPage`
--

CREATE TABLE `VirtualPage` (
  `ID` int(11) NOT NULL,
  `VersionID` int(11) NOT NULL DEFAULT '0',
  `CopyContentFromID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `VirtualPage_Live`
--

CREATE TABLE `VirtualPage_Live` (
  `ID` int(11) NOT NULL,
  `VersionID` int(11) NOT NULL DEFAULT '0',
  `CopyContentFromID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `VirtualPage_versions`
--

CREATE TABLE `VirtualPage_versions` (
  `ID` int(11) NOT NULL,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `VersionID` int(11) NOT NULL DEFAULT '0',
  `CopyContentFromID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `_obsolete_BlogModule`
--

CREATE TABLE `_obsolete_BlogModule` (
  `ID` int(11) NOT NULL,
  `ButtonLabel` varchar(255) DEFAULT NULL,
  `PageLinkID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `_obsolete_BlogModule`
--

INSERT INTO `_obsolete_BlogModule` (`ID`, `ButtonLabel`, `PageLinkID`) VALUES
(20, 'View All Events', 43),
(21, 'View All Blogs', 47),
(25, 'View All', 55),
(26, 'View All', 58);

-- --------------------------------------------------------

--
-- Table structure for table `_obsolete_ImageWithContentModule`
--

CREATE TABLE `_obsolete_ImageWithContentModule` (
  `ID` int(11) NOT NULL,
  `ButtonLabel` varchar(255) DEFAULT NULL,
  `PageLinkID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `_obsolete_ImageWithContentModule`
--

INSERT INTO `_obsolete_ImageWithContentModule` (`ID`, `ButtonLabel`, `PageLinkID`) VALUES
(16, 'View All', 20);

-- --------------------------------------------------------

--
-- Table structure for table `_obsolete_ImageWithTextOverlayModule`
--

CREATE TABLE `_obsolete_ImageWithTextOverlayModule` (
  `ID` int(11) NOT NULL,
  `PageLinkID` int(11) NOT NULL DEFAULT '0',
  `ButtonLabel` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `_obsolete_ImageWithTextOverlayModule`
--

INSERT INTO `_obsolete_ImageWithTextOverlayModule` (`ID`, `PageLinkID`, `ButtonLabel`) VALUES
(23, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `_obsolete_Page`
--

CREATE TABLE `_obsolete_Page` (
  `ID` int(11) NOT NULL,
  `Animation` enum('slide','fade') DEFAULT 'slide',
  `Loop` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `Animate` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `ThumbnailNav` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `SliderControlNav` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `SliderDirectionNav` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `CarouselControlNav` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `CarouselDirectionNav` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `CarouselThumbnailCt` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `_obsolete_Page`
--

INSERT INTO `_obsolete_Page` (`ID`, `Animation`, `Loop`, `Animate`, `ThumbnailNav`, `SliderControlNav`, `SliderDirectionNav`, `CarouselControlNav`, `CarouselDirectionNav`, `CarouselThumbnailCt`) VALUES
(1, 'slide', 1, 1, 0, 1, 1, 0, 1, 6),
(2, NULL, 1, 1, 0, 1, 1, 0, 1, 6),
(3, NULL, 1, 1, 0, 1, 1, 0, 1, 6),
(4, NULL, 1, 1, 0, 1, 1, 0, 1, 6),
(5, NULL, 1, 1, 0, 1, 1, 0, 1, 6);

-- --------------------------------------------------------

--
-- Table structure for table `_obsolete_Page_Live`
--

CREATE TABLE `_obsolete_Page_Live` (
  `ID` int(11) NOT NULL,
  `Animation` enum('slide','fade') DEFAULT 'slide',
  `Loop` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `Animate` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `ThumbnailNav` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `SliderControlNav` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `SliderDirectionNav` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `CarouselControlNav` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `CarouselDirectionNav` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `CarouselThumbnailCt` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `_obsolete_Page_Live`
--

INSERT INTO `_obsolete_Page_Live` (`ID`, `Animation`, `Loop`, `Animate`, `ThumbnailNav`, `SliderControlNav`, `SliderDirectionNav`, `CarouselControlNav`, `CarouselDirectionNav`, `CarouselThumbnailCt`) VALUES
(1, 'slide', 1, 1, 0, 1, 1, 0, 1, 6),
(2, NULL, 1, 1, 0, 1, 1, 0, 1, 6),
(3, NULL, 1, 1, 0, 1, 1, 0, 1, 6),
(4, NULL, 1, 1, 0, 1, 1, 0, 1, 6),
(5, NULL, 1, 1, 0, 1, 1, 0, 1, 6);

-- --------------------------------------------------------

--
-- Table structure for table `_obsolete_Page_versions`
--

CREATE TABLE `_obsolete_Page_versions` (
  `ID` int(11) NOT NULL,
  `RecordID` int(11) NOT NULL DEFAULT '0',
  `Version` int(11) NOT NULL DEFAULT '0',
  `Animation` enum('slide','fade') DEFAULT 'slide',
  `Loop` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `Animate` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `ThumbnailNav` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `SliderControlNav` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `SliderDirectionNav` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `CarouselControlNav` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `CarouselDirectionNav` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `CarouselThumbnailCt` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `_obsolete_Page_versions`
--

INSERT INTO `_obsolete_Page_versions` (`ID`, `RecordID`, `Version`, `Animation`, `Loop`, `Animate`, `ThumbnailNav`, `SliderControlNav`, `SliderDirectionNav`, `CarouselControlNav`, `CarouselDirectionNav`, `CarouselThumbnailCt`) VALUES
(1, 1, 3, 'slide', 0, 1, 0, 0, 0, 0, 0, 6),
(2, 1, 4, 'slide', 0, 1, 0, 1, 0, 0, 0, 6),
(3, 1, 5, 'slide', 0, 1, 0, 1, 1, 0, 0, 6),
(4, 1, 6, 'slide', 1, 1, 0, 1, 1, 0, 0, 6),
(5, 1, 7, 'slide', 1, 1, 0, 1, 1, 0, 1, 6),
(6, 2, 2, NULL, 1, 1, 0, 1, 1, 0, 1, 6),
(7, 3, 2, NULL, 1, 1, 0, 1, 1, 0, 1, 6),
(8, 4, 2, NULL, 1, 1, 0, 1, 1, 0, 1, 6),
(9, 5, 2, NULL, 1, 1, 0, 1, 1, 0, 1, 6);

-- --------------------------------------------------------

--
-- Table structure for table `_obsolete_SliderModule`
--

CREATE TABLE `_obsolete_SliderModule` (
  `ID` int(11) NOT NULL,
  `ButtonLabel` varchar(255) DEFAULT NULL,
  `PageLinkID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `_obsolete_SliderModule`
--

INSERT INTO `_obsolete_SliderModule` (`ID`, `ButtonLabel`, `PageLinkID`) VALUES
(11, 'View More', 11);

-- --------------------------------------------------------

--
-- Table structure for table `_obsolete_SlideshowModule`
--

CREATE TABLE `_obsolete_SlideshowModule` (
  `ID` int(11) NOT NULL,
  `SliderExtensionID` int(11) NOT NULL DEFAULT '0',
  `Animation` enum('slide','fade') DEFAULT 'slide',
  `Loop` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `Animate` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `ThumbnailNav` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `SliderControlNav` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `SliderDirectionNav` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `CarouselControlNav` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `CarouselDirectionNav` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `CarouselThumbnailCt` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `_obsolete_TeamModule`
--

CREATE TABLE `_obsolete_TeamModule` (
  `ID` int(11) NOT NULL,
  `ButtonLabel` varchar(255) DEFAULT NULL,
  `PageLinkID` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `_obsolete_TeamModule`
--

INSERT INTO `_obsolete_TeamModule` (`ID`, `ButtonLabel`, `PageLinkID`) VALUES
(19, NULL, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `AccordionItem`
--
ALTER TABLE `AccordionItem`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `SliderImgID` (`SliderImgID`),
  ADD KEY `ParentID` (`ParentID`),
  ADD KEY `PageLinkID` (`PageLinkID`),
  ADD KEY `ClassName` (`ClassName`);

--
-- Indexes for table `AchievementHolderPage`
--
ALTER TABLE `AchievementHolderPage`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `AchievementHolderPage_Live`
--
ALTER TABLE `AchievementHolderPage_Live`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `AchievementHolderPage_versions`
--
ALTER TABLE `AchievementHolderPage_versions`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`),
  ADD KEY `RecordID` (`RecordID`),
  ADD KEY `Version` (`Version`);

--
-- Indexes for table `AchievementPage`
--
ALTER TABLE `AchievementPage`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `FeaturedImgID` (`FeaturedImgID`),
  ADD KEY `AcquiredDateID` (`AcquiredDateID`);

--
-- Indexes for table `AchievementPage_Live`
--
ALTER TABLE `AchievementPage_Live`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `FeaturedImgID` (`FeaturedImgID`),
  ADD KEY `AcquiredDateID` (`AcquiredDateID`);

--
-- Indexes for table `AchievementPage_versions`
--
ALTER TABLE `AchievementPage_versions`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`),
  ADD KEY `RecordID` (`RecordID`),
  ADD KEY `Version` (`Version`),
  ADD KEY `FeaturedImgID` (`FeaturedImgID`),
  ADD KEY `AcquiredDateID` (`AcquiredDateID`);

--
-- Indexes for table `Animation`
--
ALTER TABLE `Animation`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `SiteConfigID` (`SiteConfigID`),
  ADD KEY `ClassName` (`ClassName`);

--
-- Indexes for table `AnimationDelay`
--
ALTER TABLE `AnimationDelay`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `SiteConfigID` (`SiteConfigID`),
  ADD KEY `ClassName` (`ClassName`);

--
-- Indexes for table `AnimationSpeed`
--
ALTER TABLE `AnimationSpeed`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `SiteConfigID` (`SiteConfigID`),
  ADD KEY `ClassName` (`ClassName`);

--
-- Indexes for table `BlockItem`
--
ALTER TABLE `BlockItem`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `BlockBgImageID` (`BlockBgImageID`),
  ADD KEY `ParentID` (`ParentID`),
  ADD KEY `PageLinkID` (`PageLinkID`),
  ADD KEY `ClassName` (`ClassName`);

--
-- Indexes for table `Blog`
--
ALTER TABLE `Blog`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `BlogCategory`
--
ALTER TABLE `BlogCategory`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `BlogID` (`BlogID`),
  ADD KEY `ClassName` (`ClassName`);

--
-- Indexes for table `BlogEntry`
--
ALTER TABLE `BlogEntry`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `BlogEntry_Live`
--
ALTER TABLE `BlogEntry_Live`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `BlogEntry_versions`
--
ALTER TABLE `BlogEntry_versions`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`),
  ADD KEY `RecordID` (`RecordID`),
  ADD KEY `Version` (`Version`);

--
-- Indexes for table `BlogHolder`
--
ALTER TABLE `BlogHolder`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `OwnerID` (`OwnerID`);

--
-- Indexes for table `BlogHolder_Live`
--
ALTER TABLE `BlogHolder_Live`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `OwnerID` (`OwnerID`);

--
-- Indexes for table `BlogHolder_versions`
--
ALTER TABLE `BlogHolder_versions`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`),
  ADD KEY `RecordID` (`RecordID`),
  ADD KEY `Version` (`Version`),
  ADD KEY `OwnerID` (`OwnerID`);

--
-- Indexes for table `BlogItem`
--
ALTER TABLE `BlogItem`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ParentID` (`ParentID`),
  ADD KEY `PageLinkID` (`PageLinkID`),
  ADD KEY `ClassName` (`ClassName`);

--
-- Indexes for table `BlogPost`
--
ALTER TABLE `BlogPost`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `FeaturedImageID` (`FeaturedImageID`),
  ADD KEY `FeaturedImageFeaturedImageID` (`FeaturedImageFeaturedImageID`);

--
-- Indexes for table `BlogPost_Authors`
--
ALTER TABLE `BlogPost_Authors`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `BlogPostID` (`BlogPostID`),
  ADD KEY `MemberID` (`MemberID`);

--
-- Indexes for table `BlogPost_Categories`
--
ALTER TABLE `BlogPost_Categories`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `BlogPostID` (`BlogPostID`),
  ADD KEY `BlogCategoryID` (`BlogCategoryID`);

--
-- Indexes for table `BlogPost_Live`
--
ALTER TABLE `BlogPost_Live`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `FeaturedImageID` (`FeaturedImageID`),
  ADD KEY `FeaturedImageFeaturedImageID` (`FeaturedImageFeaturedImageID`);

--
-- Indexes for table `BlogPost_Tags`
--
ALTER TABLE `BlogPost_Tags`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `BlogPostID` (`BlogPostID`),
  ADD KEY `BlogTagID` (`BlogTagID`);

--
-- Indexes for table `BlogPost_versions`
--
ALTER TABLE `BlogPost_versions`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`),
  ADD KEY `RecordID` (`RecordID`),
  ADD KEY `Version` (`Version`),
  ADD KEY `FeaturedImageID` (`FeaturedImageID`),
  ADD KEY `FeaturedImageFeaturedImageID` (`FeaturedImageFeaturedImageID`);

--
-- Indexes for table `BlogTag`
--
ALTER TABLE `BlogTag`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `BlogID` (`BlogID`),
  ADD KEY `ClassName` (`ClassName`);

--
-- Indexes for table `BlogTree`
--
ALTER TABLE `BlogTree`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `BlogTree_Live`
--
ALTER TABLE `BlogTree_Live`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `BlogTree_versions`
--
ALTER TABLE `BlogTree_versions`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`),
  ADD KEY `RecordID` (`RecordID`),
  ADD KEY `Version` (`Version`);

--
-- Indexes for table `Blog_Contributors`
--
ALTER TABLE `Blog_Contributors`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `BlogID` (`BlogID`),
  ADD KEY `MemberID` (`MemberID`);

--
-- Indexes for table `Blog_Editors`
--
ALTER TABLE `Blog_Editors`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `BlogID` (`BlogID`),
  ADD KEY `MemberID` (`MemberID`);

--
-- Indexes for table `Blog_Live`
--
ALTER TABLE `Blog_Live`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `Blog_versions`
--
ALTER TABLE `Blog_versions`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`),
  ADD KEY `RecordID` (`RecordID`),
  ADD KEY `Version` (`Version`);

--
-- Indexes for table `Blog_Writers`
--
ALTER TABLE `Blog_Writers`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `BlogID` (`BlogID`),
  ADD KEY `MemberID` (`MemberID`);

--
-- Indexes for table `CSSAssetUpload`
--
ALTER TABLE `CSSAssetUpload`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `SiteConfigID` (`SiteConfigID`);

--
-- Indexes for table `DownloadableModule`
--
ALTER TABLE `DownloadableModule`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ImageID` (`ImageID`),
  ADD KEY `FileID` (`FileID`),
  ADD KEY `ClassName` (`ClassName`),
  ADD KEY `ResourcesModulePageID` (`ResourcesModulePageID`),
  ADD KEY `PageLinkID` (`PageLinkID`);

--
-- Indexes for table `ErrorPage`
--
ALTER TABLE `ErrorPage`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `ErrorPage_Live`
--
ALTER TABLE `ErrorPage_Live`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `ErrorPage_versions`
--
ALTER TABLE `ErrorPage_versions`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`),
  ADD KEY `RecordID` (`RecordID`),
  ADD KEY `Version` (`Version`);

--
-- Indexes for table `ExperienceLevel`
--
ALTER TABLE `ExperienceLevel`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ResourcesPageID` (`ResourcesPageID`),
  ADD KEY `ClassName` (`ClassName`);

--
-- Indexes for table `File`
--
ALTER TABLE `File`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ParentID` (`ParentID`),
  ADD KEY `OwnerID` (`OwnerID`),
  ADD KEY `ClassName` (`ClassName`),
  ADD KEY `SubsiteID` (`SubsiteID`);

--
-- Indexes for table `Filters`
--
ALTER TABLE `Filters`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `FilterTagID` (`FilterTagID`),
  ADD KEY `ClassName` (`ClassName`);

--
-- Indexes for table `FilterTag`
--
ALTER TABLE `FilterTag`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `BlogExtensionID` (`BlogExtensionID`),
  ADD KEY `ClassName` (`ClassName`);

--
-- Indexes for table `FooterBlock`
--
ALTER TABLE `FooterBlock`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `SiteConfigID` (`SiteConfigID`),
  ADD KEY `ClassName` (`ClassName`);

--
-- Indexes for table `Group`
--
ALTER TABLE `Group`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ParentID` (`ParentID`),
  ADD KEY `ClassName` (`ClassName`);

--
-- Indexes for table `Group_Members`
--
ALTER TABLE `Group_Members`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `GroupID` (`GroupID`),
  ADD KEY `MemberID` (`MemberID`);

--
-- Indexes for table `Group_Roles`
--
ALTER TABLE `Group_Roles`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `GroupID` (`GroupID`),
  ADD KEY `PermissionRoleID` (`PermissionRoleID`);

--
-- Indexes for table `Group_Subsites`
--
ALTER TABLE `Group_Subsites`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `GroupID` (`GroupID`),
  ADD KEY `SubsiteID` (`SubsiteID`);

--
-- Indexes for table `ImageAndContentItem`
--
ALTER TABLE `ImageAndContentItem`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ImageID` (`ImageID`),
  ADD KEY `ParentID` (`ParentID`),
  ADD KEY `ClassName` (`ClassName`),
  ADD KEY `PageLinkID` (`PageLinkID`);

--
-- Indexes for table `ImageWithContentItem`
--
ALTER TABLE `ImageWithContentItem`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `BlockBgImageID` (`BlockBgImageID`),
  ADD KEY `ParentID` (`ParentID`),
  ADD KEY `ClassName` (`ClassName`),
  ADD KEY `PageLinkID` (`PageLinkID`),
  ADD KEY `ItemImageID` (`ItemImageID`);

--
-- Indexes for table `ImageWithTextOverlayItem`
--
ALTER TABLE `ImageWithTextOverlayItem`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `BlockBgImageID` (`BlockBgImageID`),
  ADD KEY `ParentID` (`ParentID`),
  ADD KEY `PageLinkID` (`PageLinkID`),
  ADD KEY `ClassName` (`ClassName`);

--
-- Indexes for table `LoginAttempt`
--
ALTER TABLE `LoginAttempt`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `MemberID` (`MemberID`),
  ADD KEY `ClassName` (`ClassName`);

--
-- Indexes for table `Member`
--
ALTER TABLE `Member`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `Email` (`Email`),
  ADD KEY `ClassName` (`ClassName`),
  ADD KEY `BlogProfileImageID` (`BlogProfileImageID`);

--
-- Indexes for table `MemberPassword`
--
ALTER TABLE `MemberPassword`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `MemberID` (`MemberID`),
  ADD KEY `ClassName` (`ClassName`);

--
-- Indexes for table `Module`
--
ALTER TABLE `Module`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ClassName` (`ClassName`),
  ADD KEY `ParentID` (`ParentID`),
  ADD KEY `SectionBgImageID` (`SectionBgImageID`),
  ADD KEY `PageLinkID` (`PageLinkID`);

--
-- Indexes for table `ModuleContentItem`
--
ALTER TABLE `ModuleContentItem`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ParentID` (`ParentID`),
  ADD KEY `PageLinkID` (`PageLinkID`),
  ADD KEY `ClassName` (`ClassName`);

--
-- Indexes for table `ModuleType`
--
ALTER TABLE `ModuleType`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ResourcesID` (`ResourcesID`),
  ADD KEY `PageLinkID` (`PageLinkID`),
  ADD KEY `ClassName` (`ClassName`),
  ADD KEY `ResourcesTypeID` (`ResourcesTypeID`),
  ADD KEY `FeaturedImageID` (`FeaturedImageID`);

--
-- Indexes for table `Navigation`
--
ALTER TABLE `Navigation`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `SiteConfigID` (`SiteConfigID`),
  ADD KEY `ClassName` (`ClassName`);

--
-- Indexes for table `NavigationItem`
--
ALTER TABLE `NavigationItem`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `NavigationID` (`NavigationID`),
  ADD KEY `PageLinkID` (`PageLinkID`),
  ADD KEY `ClassName` (`ClassName`);

--
-- Indexes for table `Page`
--
ALTER TABLE `Page`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `PageBannerID` (`PageBannerID`),
  ADD KEY `PageBackgroundID` (`PageBackgroundID`);

--
-- Indexes for table `Page_Live`
--
ALTER TABLE `Page_Live`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `PageBannerID` (`PageBannerID`),
  ADD KEY `PageBackgroundID` (`PageBackgroundID`);

--
-- Indexes for table `Page_versions`
--
ALTER TABLE `Page_versions`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`),
  ADD KEY `RecordID` (`RecordID`),
  ADD KEY `Version` (`Version`),
  ADD KEY `PageBannerID` (`PageBannerID`),
  ADD KEY `PageBackgroundID` (`PageBackgroundID`);

--
-- Indexes for table `Permission`
--
ALTER TABLE `Permission`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `GroupID` (`GroupID`),
  ADD KEY `Code` (`Code`),
  ADD KEY `ClassName` (`ClassName`);

--
-- Indexes for table `PermissionRole`
--
ALTER TABLE `PermissionRole`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ClassName` (`ClassName`);

--
-- Indexes for table `PermissionRoleCode`
--
ALTER TABLE `PermissionRoleCode`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `RoleID` (`RoleID`),
  ADD KEY `ClassName` (`ClassName`);

--
-- Indexes for table `ProfilePage`
--
ALTER TABLE `ProfilePage`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ProfileImageID` (`ProfileImageID`),
  ADD KEY `ProfileImage2ID` (`ProfileImage2ID`),
  ADD KEY `ProfileImage3ID` (`ProfileImage3ID`);

--
-- Indexes for table `ProfilePage_Live`
--
ALTER TABLE `ProfilePage_Live`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ProfileImageID` (`ProfileImageID`),
  ADD KEY `ProfileImage2ID` (`ProfileImage2ID`),
  ADD KEY `ProfileImage3ID` (`ProfileImage3ID`);

--
-- Indexes for table `ProfilePage_versions`
--
ALTER TABLE `ProfilePage_versions`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`),
  ADD KEY `RecordID` (`RecordID`),
  ADD KEY `Version` (`Version`),
  ADD KEY `ProfileImageID` (`ProfileImageID`),
  ADD KEY `ProfileImage2ID` (`ProfileImage2ID`),
  ADD KEY `ProfileImage3ID` (`ProfileImage3ID`);

--
-- Indexes for table `ProjectHolderPage`
--
ALTER TABLE `ProjectHolderPage`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `ProjectHolderPage_Live`
--
ALTER TABLE `ProjectHolderPage_Live`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `ProjectHolderPage_versions`
--
ALTER TABLE `ProjectHolderPage_versions`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`),
  ADD KEY `RecordID` (`RecordID`),
  ADD KEY `Version` (`Version`);

--
-- Indexes for table `ProjectPage`
--
ALTER TABLE `ProjectPage`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ProjectImgID` (`ProjectImgID`);

--
-- Indexes for table `ProjectPage_Live`
--
ALTER TABLE `ProjectPage_Live`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ProjectImgID` (`ProjectImgID`);

--
-- Indexes for table `ProjectPage_versions`
--
ALTER TABLE `ProjectPage_versions`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`),
  ADD KEY `RecordID` (`RecordID`),
  ADD KEY `Version` (`Version`),
  ADD KEY `ProjectImgID` (`ProjectImgID`);

--
-- Indexes for table `RedirectorPage`
--
ALTER TABLE `RedirectorPage`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `LinkToID` (`LinkToID`);

--
-- Indexes for table `RedirectorPage_Live`
--
ALTER TABLE `RedirectorPage_Live`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `LinkToID` (`LinkToID`);

--
-- Indexes for table `RedirectorPage_versions`
--
ALTER TABLE `RedirectorPage_versions`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`),
  ADD KEY `RecordID` (`RecordID`),
  ADD KEY `Version` (`Version`),
  ADD KEY `LinkToID` (`LinkToID`);

--
-- Indexes for table `Resources`
--
ALTER TABLE `Resources`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `FilterTagID` (`FilterTagID`),
  ADD KEY `ClassName` (`ClassName`),
  ADD KEY `ResourcesPageID` (`ResourcesPageID`),
  ADD KEY `PageLinkID` (`PageLinkID`);

--
-- Indexes for table `ResourcesModulePage`
--
ALTER TABLE `ResourcesModulePage`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `FeaturedImageID` (`FeaturedImageID`);

--
-- Indexes for table `ResourcesModulePage_ExperienceLevel`
--
ALTER TABLE `ResourcesModulePage_ExperienceLevel`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ResourcesModulePageID` (`ResourcesModulePageID`),
  ADD KEY `ExperienceLevelID` (`ExperienceLevelID`),
  ADD KEY `ExperienceLevelsID` (`ExperienceLevelsID`);

--
-- Indexes for table `ResourcesModulePage_Live`
--
ALTER TABLE `ResourcesModulePage_Live`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `FeaturedImageID` (`FeaturedImageID`);

--
-- Indexes for table `ResourcesModulePage_ModuleType`
--
ALTER TABLE `ResourcesModulePage_ModuleType`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ResourcesModulePageID` (`ResourcesModulePageID`),
  ADD KEY `ResourcesTypeID` (`ResourcesTypeID`);

--
-- Indexes for table `ResourcesModulePage_versions`
--
ALTER TABLE `ResourcesModulePage_versions`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`),
  ADD KEY `RecordID` (`RecordID`),
  ADD KEY `Version` (`Version`),
  ADD KEY `FeaturedImageID` (`FeaturedImageID`);

--
-- Indexes for table `ResourcesType`
--
ALTER TABLE `ResourcesType`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ResourcesPageID` (`ResourcesPageID`),
  ADD KEY `PageLinkID` (`PageLinkID`),
  ADD KEY `ClassName` (`ClassName`);

--
-- Indexes for table `ResourcesType_ModuleType`
--
ALTER TABLE `ResourcesType_ModuleType`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ResourcesTypeID` (`ResourcesTypeID`),
  ADD KEY `ModuleTypeID` (`ModuleTypeID`);

--
-- Indexes for table `Resources_ModuleType`
--
ALTER TABLE `Resources_ModuleType`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ResourcesID` (`ResourcesID`),
  ADD KEY `ModuleTypeID` (`ModuleTypeID`);

--
-- Indexes for table `SiteConfig`
--
ALTER TABLE `SiteConfig`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ClassName` (`ClassName`),
  ADD KEY `SubsiteID` (`SubsiteID`),
  ADD KEY `LogoID` (`LogoID`),
  ADD KEY `i3LogoFooterID` (`i3LogoFooterID`),
  ADD KEY `DHBLogoID` (`DHBLogoID`),
  ADD KEY `MobileLogoID` (`MobileLogoID`),
  ADD KEY `OrgLogoID` (`OrgLogoID`);

--
-- Indexes for table `SiteConfig_CreateTopLevelGroups`
--
ALTER TABLE `SiteConfig_CreateTopLevelGroups`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `SiteConfigID` (`SiteConfigID`),
  ADD KEY `GroupID` (`GroupID`);

--
-- Indexes for table `SiteConfig_CSSAssets`
--
ALTER TABLE `SiteConfig_CSSAssets`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `SiteConfigID` (`SiteConfigID`),
  ADD KEY `ImageID` (`ImageID`),
  ADD KEY `FileID` (`FileID`);

--
-- Indexes for table `SiteConfig_EditorGroups`
--
ALTER TABLE `SiteConfig_EditorGroups`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `SiteConfigID` (`SiteConfigID`),
  ADD KEY `GroupID` (`GroupID`);

--
-- Indexes for table `SiteConfig_Fonts`
--
ALTER TABLE `SiteConfig_Fonts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `SiteConfigID` (`SiteConfigID`),
  ADD KEY `FileID` (`FileID`);

--
-- Indexes for table `SiteConfig_JSAssets`
--
ALTER TABLE `SiteConfig_JSAssets`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `SiteConfigID` (`SiteConfigID`),
  ADD KEY `FileID` (`FileID`);

--
-- Indexes for table `SiteConfig_ViewerGroups`
--
ALTER TABLE `SiteConfig_ViewerGroups`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `SiteConfigID` (`SiteConfigID`),
  ADD KEY `GroupID` (`GroupID`);

--
-- Indexes for table `SiteTree`
--
ALTER TABLE `SiteTree`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ParentID` (`ParentID`),
  ADD KEY `URLSegment` (`URLSegment`),
  ADD KEY `ClassName` (`ClassName`),
  ADD KEY `SubsiteID` (`SubsiteID`);

--
-- Indexes for table `SiteTree_CrossSubsiteLinkTracking`
--
ALTER TABLE `SiteTree_CrossSubsiteLinkTracking`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `SiteTreeID` (`SiteTreeID`),
  ADD KEY `ChildID` (`ChildID`);

--
-- Indexes for table `SiteTree_EditorGroups`
--
ALTER TABLE `SiteTree_EditorGroups`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `SiteTreeID` (`SiteTreeID`),
  ADD KEY `GroupID` (`GroupID`);

--
-- Indexes for table `SiteTree_ImageTracking`
--
ALTER TABLE `SiteTree_ImageTracking`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `SiteTreeID` (`SiteTreeID`),
  ADD KEY `FileID` (`FileID`);

--
-- Indexes for table `SiteTree_LinkTracking`
--
ALTER TABLE `SiteTree_LinkTracking`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `SiteTreeID` (`SiteTreeID`),
  ADD KEY `ChildID` (`ChildID`);

--
-- Indexes for table `SiteTree_Live`
--
ALTER TABLE `SiteTree_Live`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ParentID` (`ParentID`),
  ADD KEY `URLSegment` (`URLSegment`),
  ADD KEY `ClassName` (`ClassName`),
  ADD KEY `SubsiteID` (`SubsiteID`);

--
-- Indexes for table `SiteTree_versions`
--
ALTER TABLE `SiteTree_versions`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `RecordID_Version` (`RecordID`,`Version`),
  ADD KEY `RecordID` (`RecordID`),
  ADD KEY `Version` (`Version`),
  ADD KEY `AuthorID` (`AuthorID`),
  ADD KEY `PublisherID` (`PublisherID`),
  ADD KEY `ParentID` (`ParentID`),
  ADD KEY `URLSegment` (`URLSegment`),
  ADD KEY `ClassName` (`ClassName`),
  ADD KEY `SubsiteID` (`SubsiteID`);

--
-- Indexes for table `SiteTree_ViewerGroups`
--
ALTER TABLE `SiteTree_ViewerGroups`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `SiteTreeID` (`SiteTreeID`),
  ADD KEY `GroupID` (`GroupID`);

--
-- Indexes for table `SlideImage`
--
ALTER TABLE `SlideImage`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ImageID` (`ImageID`),
  ADD KEY `PageID` (`PageID`),
  ADD KEY `PageLinkID` (`PageLinkID`),
  ADD KEY `ClassName` (`ClassName`);

--
-- Indexes for table `SlideImage_Live`
--
ALTER TABLE `SlideImage_Live`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ImageID` (`ImageID`),
  ADD KEY `PageID` (`PageID`),
  ADD KEY `PageLinkID` (`PageLinkID`),
  ADD KEY `ClassName` (`ClassName`);

--
-- Indexes for table `SlideImage_versions`
--
ALTER TABLE `SlideImage_versions`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `RecordID_Version` (`RecordID`,`Version`),
  ADD KEY `RecordID` (`RecordID`),
  ADD KEY `Version` (`Version`),
  ADD KEY `AuthorID` (`AuthorID`),
  ADD KEY `PublisherID` (`PublisherID`),
  ADD KEY `ImageID` (`ImageID`),
  ADD KEY `PageID` (`PageID`),
  ADD KEY `PageLinkID` (`PageLinkID`),
  ADD KEY `ClassName` (`ClassName`);

--
-- Indexes for table `SliderItem`
--
ALTER TABLE `SliderItem`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ParentID` (`ParentID`),
  ADD KEY `PageLinkID` (`PageLinkID`),
  ADD KEY `ClassName` (`ClassName`),
  ADD KEY `SliderImgID` (`SliderImgID`),
  ADD KEY `PageDataID` (`PageDataID`),
  ADD KEY `PageDataIDID` (`PageDataIDID`);

--
-- Indexes for table `SlideshowItem`
--
ALTER TABLE `SlideshowItem`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `BgImageID` (`BgImageID`),
  ADD KEY `ParentID` (`ParentID`),
  ADD KEY `PageLinkID` (`PageLinkID`),
  ADD KEY `ClassName` (`ClassName`);

--
-- Indexes for table `SlideshowModule`
--
ALTER TABLE `SlideshowModule`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `SlideshowModuleItem`
--
ALTER TABLE `SlideshowModuleItem`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `BgImageID` (`BgImageID`),
  ADD KEY `ParentID` (`ParentID`),
  ADD KEY `PageLinkID` (`PageLinkID`),
  ADD KEY `ClassName` (`ClassName`);

--
-- Indexes for table `SocialNetworkItem`
--
ALTER TABLE `SocialNetworkItem`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `SiteConfigID` (`SiteConfigID`),
  ADD KEY `ClassName` (`ClassName`);

--
-- Indexes for table `SubModule`
--
ALTER TABLE `SubModule`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ModuleTypeID` (`ModuleTypeID`),
  ADD KEY `PageLinkID` (`PageLinkID`),
  ADD KEY `ClassName` (`ClassName`),
  ADD KEY `FileID` (`FileID`);

--
-- Indexes for table `Subsite`
--
ALTER TABLE `Subsite`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ClassName` (`ClassName`);

--
-- Indexes for table `SubsiteDomain`
--
ALTER TABLE `SubsiteDomain`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `SubsiteID` (`SubsiteID`),
  ADD KEY `ClassName` (`ClassName`);

--
-- Indexes for table `SubsitesVirtualPage`
--
ALTER TABLE `SubsitesVirtualPage`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `SubsitesVirtualPage_Live`
--
ALTER TABLE `SubsitesVirtualPage_Live`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `SubsitesVirtualPage_versions`
--
ALTER TABLE `SubsitesVirtualPage_versions`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`),
  ADD KEY `RecordID` (`RecordID`),
  ADD KEY `Version` (`Version`);

--
-- Indexes for table `TeamHolderPage`
--
ALTER TABLE `TeamHolderPage`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `TeamHolderPage_Live`
--
ALTER TABLE `TeamHolderPage_Live`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `TeamHolderPage_versions`
--
ALTER TABLE `TeamHolderPage_versions`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`),
  ADD KEY `RecordID` (`RecordID`),
  ADD KEY `Version` (`Version`);

--
-- Indexes for table `TeamItem`
--
ALTER TABLE `TeamItem`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ParentID` (`ParentID`),
  ADD KEY `PageLinkID` (`PageLinkID`),
  ADD KEY `ClassName` (`ClassName`);

--
-- Indexes for table `VirtualPage`
--
ALTER TABLE `VirtualPage`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `CopyContentFromID` (`CopyContentFromID`);

--
-- Indexes for table `VirtualPage_Live`
--
ALTER TABLE `VirtualPage_Live`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `CopyContentFromID` (`CopyContentFromID`);

--
-- Indexes for table `VirtualPage_versions`
--
ALTER TABLE `VirtualPage_versions`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`),
  ADD KEY `RecordID` (`RecordID`),
  ADD KEY `Version` (`Version`),
  ADD KEY `CopyContentFromID` (`CopyContentFromID`);

--
-- Indexes for table `_obsolete_BlogModule`
--
ALTER TABLE `_obsolete_BlogModule`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `PageLinkID` (`PageLinkID`);

--
-- Indexes for table `_obsolete_ImageWithContentModule`
--
ALTER TABLE `_obsolete_ImageWithContentModule`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `PageLinkID` (`PageLinkID`);

--
-- Indexes for table `_obsolete_ImageWithTextOverlayModule`
--
ALTER TABLE `_obsolete_ImageWithTextOverlayModule`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `PageLinkID` (`PageLinkID`);

--
-- Indexes for table `_obsolete_Page`
--
ALTER TABLE `_obsolete_Page`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `_obsolete_Page_Live`
--
ALTER TABLE `_obsolete_Page_Live`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `_obsolete_Page_versions`
--
ALTER TABLE `_obsolete_Page_versions`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `RecordID_Version` (`RecordID`,`Version`),
  ADD KEY `RecordID` (`RecordID`),
  ADD KEY `Version` (`Version`);

--
-- Indexes for table `_obsolete_SliderModule`
--
ALTER TABLE `_obsolete_SliderModule`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `PageLinkID` (`PageLinkID`);

--
-- Indexes for table `_obsolete_SlideshowModule`
--
ALTER TABLE `_obsolete_SlideshowModule`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `SliderExtensionID` (`SliderExtensionID`);

--
-- Indexes for table `_obsolete_TeamModule`
--
ALTER TABLE `_obsolete_TeamModule`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `PageLinkID` (`PageLinkID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `AccordionItem`
--
ALTER TABLE `AccordionItem`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `AchievementHolderPage`
--
ALTER TABLE `AchievementHolderPage`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `AchievementHolderPage_Live`
--
ALTER TABLE `AchievementHolderPage_Live`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `AchievementHolderPage_versions`
--
ALTER TABLE `AchievementHolderPage_versions`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `AchievementPage`
--
ALTER TABLE `AchievementPage`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `AchievementPage_Live`
--
ALTER TABLE `AchievementPage_Live`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `AchievementPage_versions`
--
ALTER TABLE `AchievementPage_versions`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `Animation`
--
ALTER TABLE `Animation`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `AnimationDelay`
--
ALTER TABLE `AnimationDelay`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `AnimationSpeed`
--
ALTER TABLE `AnimationSpeed`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `BlockItem`
--
ALTER TABLE `BlockItem`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `Blog`
--
ALTER TABLE `Blog`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `BlogCategory`
--
ALTER TABLE `BlogCategory`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `BlogEntry`
--
ALTER TABLE `BlogEntry`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `BlogEntry_Live`
--
ALTER TABLE `BlogEntry_Live`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `BlogEntry_versions`
--
ALTER TABLE `BlogEntry_versions`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `BlogHolder`
--
ALTER TABLE `BlogHolder`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `BlogHolder_Live`
--
ALTER TABLE `BlogHolder_Live`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `BlogHolder_versions`
--
ALTER TABLE `BlogHolder_versions`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `BlogItem`
--
ALTER TABLE `BlogItem`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `BlogPost`
--
ALTER TABLE `BlogPost`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87;

--
-- AUTO_INCREMENT for table `BlogPost_Authors`
--
ALTER TABLE `BlogPost_Authors`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `BlogPost_Categories`
--
ALTER TABLE `BlogPost_Categories`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `BlogPost_Live`
--
ALTER TABLE `BlogPost_Live`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87;

--
-- AUTO_INCREMENT for table `BlogPost_Tags`
--
ALTER TABLE `BlogPost_Tags`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `BlogPost_versions`
--
ALTER TABLE `BlogPost_versions`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

--
-- AUTO_INCREMENT for table `BlogTag`
--
ALTER TABLE `BlogTag`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `BlogTree`
--
ALTER TABLE `BlogTree`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `BlogTree_Live`
--
ALTER TABLE `BlogTree_Live`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `BlogTree_versions`
--
ALTER TABLE `BlogTree_versions`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `Blog_Contributors`
--
ALTER TABLE `Blog_Contributors`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `Blog_Editors`
--
ALTER TABLE `Blog_Editors`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `Blog_Live`
--
ALTER TABLE `Blog_Live`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `Blog_versions`
--
ALTER TABLE `Blog_versions`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `Blog_Writers`
--
ALTER TABLE `Blog_Writers`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `CSSAssetUpload`
--
ALTER TABLE `CSSAssetUpload`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=145;

--
-- AUTO_INCREMENT for table `DownloadableModule`
--
ALTER TABLE `DownloadableModule`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `ErrorPage`
--
ALTER TABLE `ErrorPage`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `ErrorPage_Live`
--
ALTER TABLE `ErrorPage_Live`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `ErrorPage_versions`
--
ALTER TABLE `ErrorPage_versions`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ExperienceLevel`
--
ALTER TABLE `ExperienceLevel`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `File`
--
ALTER TABLE `File`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=307;

--
-- AUTO_INCREMENT for table `Filters`
--
ALTER TABLE `Filters`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `FilterTag`
--
ALTER TABLE `FilterTag`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `FooterBlock`
--
ALTER TABLE `FooterBlock`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `Group`
--
ALTER TABLE `Group`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `Group_Members`
--
ALTER TABLE `Group_Members`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `Group_Roles`
--
ALTER TABLE `Group_Roles`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `Group_Subsites`
--
ALTER TABLE `Group_Subsites`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ImageAndContentItem`
--
ALTER TABLE `ImageAndContentItem`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `ImageWithContentItem`
--
ALTER TABLE `ImageWithContentItem`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `ImageWithTextOverlayItem`
--
ALTER TABLE `ImageWithTextOverlayItem`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `LoginAttempt`
--
ALTER TABLE `LoginAttempt`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `Member`
--
ALTER TABLE `Member`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `MemberPassword`
--
ALTER TABLE `MemberPassword`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `Module`
--
ALTER TABLE `Module`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT for table `ModuleContentItem`
--
ALTER TABLE `ModuleContentItem`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `ModuleType`
--
ALTER TABLE `ModuleType`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `Navigation`
--
ALTER TABLE `Navigation`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `NavigationItem`
--
ALTER TABLE `NavigationItem`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `Page`
--
ALTER TABLE `Page`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- AUTO_INCREMENT for table `Page_Live`
--
ALTER TABLE `Page_Live`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- AUTO_INCREMENT for table `Page_versions`
--
ALTER TABLE `Page_versions`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=283;

--
-- AUTO_INCREMENT for table `Permission`
--
ALTER TABLE `Permission`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `PermissionRole`
--
ALTER TABLE `PermissionRole`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `PermissionRoleCode`
--
ALTER TABLE `PermissionRoleCode`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ProfilePage`
--
ALTER TABLE `ProfilePage`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT for table `ProfilePage_Live`
--
ALTER TABLE `ProfilePage_Live`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT for table `ProfilePage_versions`
--
ALTER TABLE `ProfilePage_versions`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT for table `ProjectHolderPage`
--
ALTER TABLE `ProjectHolderPage`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `ProjectHolderPage_Live`
--
ALTER TABLE `ProjectHolderPage_Live`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `ProjectHolderPage_versions`
--
ALTER TABLE `ProjectHolderPage_versions`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ProjectPage`
--
ALTER TABLE `ProjectPage`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `ProjectPage_Live`
--
ALTER TABLE `ProjectPage_Live`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `ProjectPage_versions`
--
ALTER TABLE `ProjectPage_versions`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `RedirectorPage`
--
ALTER TABLE `RedirectorPage`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `RedirectorPage_Live`
--
ALTER TABLE `RedirectorPage_Live`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `RedirectorPage_versions`
--
ALTER TABLE `RedirectorPage_versions`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `Resources`
--
ALTER TABLE `Resources`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `ResourcesModulePage`
--
ALTER TABLE `ResourcesModulePage`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- AUTO_INCREMENT for table `ResourcesModulePage_ExperienceLevel`
--
ALTER TABLE `ResourcesModulePage_ExperienceLevel`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `ResourcesModulePage_Live`
--
ALTER TABLE `ResourcesModulePage_Live`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT for table `ResourcesModulePage_ModuleType`
--
ALTER TABLE `ResourcesModulePage_ModuleType`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `ResourcesModulePage_versions`
--
ALTER TABLE `ResourcesModulePage_versions`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `ResourcesType`
--
ALTER TABLE `ResourcesType`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `ResourcesType_ModuleType`
--
ALTER TABLE `ResourcesType_ModuleType`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `Resources_ModuleType`
--
ALTER TABLE `Resources_ModuleType`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `SiteConfig`
--
ALTER TABLE `SiteConfig`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `SiteConfig_CreateTopLevelGroups`
--
ALTER TABLE `SiteConfig_CreateTopLevelGroups`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `SiteConfig_CSSAssets`
--
ALTER TABLE `SiteConfig_CSSAssets`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=209;

--
-- AUTO_INCREMENT for table `SiteConfig_EditorGroups`
--
ALTER TABLE `SiteConfig_EditorGroups`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `SiteConfig_Fonts`
--
ALTER TABLE `SiteConfig_Fonts`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `SiteConfig_JSAssets`
--
ALTER TABLE `SiteConfig_JSAssets`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `SiteConfig_ViewerGroups`
--
ALTER TABLE `SiteConfig_ViewerGroups`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `SiteTree`
--
ALTER TABLE `SiteTree`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- AUTO_INCREMENT for table `SiteTree_CrossSubsiteLinkTracking`
--
ALTER TABLE `SiteTree_CrossSubsiteLinkTracking`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `SiteTree_EditorGroups`
--
ALTER TABLE `SiteTree_EditorGroups`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `SiteTree_ImageTracking`
--
ALTER TABLE `SiteTree_ImageTracking`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `SiteTree_LinkTracking`
--
ALTER TABLE `SiteTree_LinkTracking`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `SiteTree_Live`
--
ALTER TABLE `SiteTree_Live`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- AUTO_INCREMENT for table `SiteTree_versions`
--
ALTER TABLE `SiteTree_versions`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=477;

--
-- AUTO_INCREMENT for table `SiteTree_ViewerGroups`
--
ALTER TABLE `SiteTree_ViewerGroups`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `SlideImage`
--
ALTER TABLE `SlideImage`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `SlideImage_Live`
--
ALTER TABLE `SlideImage_Live`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `SlideImage_versions`
--
ALTER TABLE `SlideImage_versions`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `SliderItem`
--
ALTER TABLE `SliderItem`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `SlideshowItem`
--
ALTER TABLE `SlideshowItem`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `SlideshowModule`
--
ALTER TABLE `SlideshowModule`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `SlideshowModuleItem`
--
ALTER TABLE `SlideshowModuleItem`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `SocialNetworkItem`
--
ALTER TABLE `SocialNetworkItem`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `SubModule`
--
ALTER TABLE `SubModule`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `Subsite`
--
ALTER TABLE `Subsite`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `SubsiteDomain`
--
ALTER TABLE `SubsiteDomain`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `SubsitesVirtualPage`
--
ALTER TABLE `SubsitesVirtualPage`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `SubsitesVirtualPage_Live`
--
ALTER TABLE `SubsitesVirtualPage_Live`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `SubsitesVirtualPage_versions`
--
ALTER TABLE `SubsitesVirtualPage_versions`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `TeamHolderPage`
--
ALTER TABLE `TeamHolderPage`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT for table `TeamHolderPage_Live`
--
ALTER TABLE `TeamHolderPage_Live`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT for table `TeamHolderPage_versions`
--
ALTER TABLE `TeamHolderPage_versions`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `TeamItem`
--
ALTER TABLE `TeamItem`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `VirtualPage`
--
ALTER TABLE `VirtualPage`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `VirtualPage_Live`
--
ALTER TABLE `VirtualPage_Live`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `VirtualPage_versions`
--
ALTER TABLE `VirtualPage_versions`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `_obsolete_BlogModule`
--
ALTER TABLE `_obsolete_BlogModule`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `_obsolete_ImageWithContentModule`
--
ALTER TABLE `_obsolete_ImageWithContentModule`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `_obsolete_ImageWithTextOverlayModule`
--
ALTER TABLE `_obsolete_ImageWithTextOverlayModule`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `_obsolete_Page`
--
ALTER TABLE `_obsolete_Page`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `_obsolete_Page_Live`
--
ALTER TABLE `_obsolete_Page_Live`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `_obsolete_Page_versions`
--
ALTER TABLE `_obsolete_Page_versions`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `_obsolete_SliderModule`
--
ALTER TABLE `_obsolete_SliderModule`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `_obsolete_SlideshowModule`
--
ALTER TABLE `_obsolete_SlideshowModule`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `_obsolete_TeamModule`
--
ALTER TABLE `_obsolete_TeamModule`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
