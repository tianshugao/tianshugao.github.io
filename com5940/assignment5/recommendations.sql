-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 23, 2020 at 05:19 AM
-- Server version: 5.7.26
-- PHP Version: 7.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `com5961`
--

-- --------------------------------------------------------

--
-- Table structure for table `recommendations`
--

CREATE TABLE `recommendations` (
  `ID` int(2) NOT NULL,
  `Name` varchar(30) DEFAULT NULL,
  `Genre` varchar(30) DEFAULT NULL,
  `Highlight` varchar(60) DEFAULT NULL,
  `Venue_in_China` varchar(26) DEFAULT NULL,
  `Frequency_in_China` varchar(12) DEFAULT NULL,
  `Years_active` varchar(12) DEFAULT NULL,
  `Birthplace` varchar(11) DEFAULT NULL,
  `Sponsor` varchar(28) DEFAULT NULL,
  `price` varchar(10) DEFAULT NULL,
  `website` varchar(81) DEFAULT NULL,
  `Popularity` int(1) DEFAULT NULL,
  `Post_url` varchar(115) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `recommendations`
--

INSERT INTO `recommendations` (`ID`, `Name`, `Genre`, `Highlight`, `Venue_in_China`, `Frequency_in_China`, `Years_active`, `Birthplace`, `Sponsor`, `price`, `website`, `Popularity`, `Post_url`) VALUES
(1, 'Rye Music Festival', 'Popular,Rock,Ballad', 'superstar singers', 'Beijing', 'once a year', '2018-present', 'Beijing', 'Taihe Music', '', 'https://weibo.com/u/6623512134', 5, 'https://dl.airtable.com/.attachments/fbc0d44f4241a23ccf2b010152dfda50/e3cde62a/u33694922014112594975fm26gp0.jpg'),
(2, 'Strawberry Music Festival', 'Popular,Rock', '', 'tier 1 and 2 cities', 'unfixed', '2009-present', 'Beijing', 'Modernsky', '', 'https://weibo.com/u/3206027307', 5, 'https://dl.airtable.com/.attachments/717e063dd35ef28cbe40221ea11e37e9/9ebbe38c/timg.jpg'),
(3, 'Midi Music Festival', 'Rock', 'the first Chinese original music festival', 'across mainland China', 'unfixed', '2000-present', 'Beijing', 'Beijing Midi School of Music', '', 'http://www.midifestival.com/', 5, 'https://dl.airtable.com/.attachments/8c575c8e59345a563d393bd3fb5798f6/4e9f1886/midi.jpg'),
(4, 'Creamfields Music Festival', 'Electronic', 'the most famous electronic music festival in UK', 'tier 1 cities', 'unfixed', '1998-present', 'UK', 'Cream', '', 'https://www.creamfields.com/', 4, 'https://dl.airtable.com/.attachments/a068fd605ed7837759122a80f79e57a4/3e1a99d2/timg2.jpg'),
(5, 'Grammy Festival', 'Rock,Jazz,Popular,Electronic', 'sponsored by Grammy Award', 'Beijing', 'once', '2018', 'US', 'Grammy Award', '', 'http://www.grammy.com', 4, 'https://dl.airtable.com/.attachments/107956a50270e846c0a2dc60c4282b13/40c6b434/grammy.jpg'),
(6, 'EDC', 'Electronic', 'the largest electronic dance music festival in North America', 'tier 1 cities', 'once a year', '1991-present', 'US', 'Insomniac Events', '', 'https://lasvegas.electricdaisycarnival.com/', 4, 'https://dl.airtable.com/.attachments/76dadbd1d5fc4107e4f7eb2869800fcb/db9b09c8/edc.jpg'),
(7, 'Simple Life Festival', 'Popular,Ballad', 'culture-related', 'Taibei, Taizhong, Shanghai', 'once a year', '2006-present', 'Taibei', 'Li Zongsheng, Zhang Peiren', '', 'http://simplelife.streetvoice.cn/', 4, 'https://dl.airtable.com/.attachments/3c80f54ed63cff210d2781e6d748b75a/5633701e/simplelife.jpg'),
(8, 'Super Wave Music Festival', 'Electronic,Rap', '', 'Haikou', 'once a year', '2019-present', 'Haikou', 'Donganyiding', '', 'https://weibo.com/u/7255987962', 3, 'https://dl.airtable.com/.attachments/43b6ed1af26eb45a545dd53bf4c0aaa1/4df1fa76/007V3nVUly8g61k69hzcyj30u00u0wg5.jpg'),
(9, 'Budweiser STORM Music Festival', 'Electronic', 'the largest Chinese electronic festival', 'tire 1 cities', 'unfixed', '2013-present', 'Shanghai', 'Budweiser', '', 'https://www.bud.cn/mobile/electric2019.html', 3, 'https://dl.airtable.com/.attachments/be3b922c676e295532fd7bf7a3902657/3f62da74/baiwei.jpg'),
(10, 'MTA Music Festival', 'Rock,Popular,Ballad', 'Combined music with technology and art;  held on a desert', 'Zhangjiakou', 'once a year', '2016-present', 'Zhangjiakou', 'Sound Summer', '', 'http://www.mtafestival.com/', 3, 'https://dl.airtable.com/.attachments/5c1c40a56287ad999398c87a7fd551b0/30ac274a/mta.jpg'),
(11, 'Daydream Festival', 'Electronic,Rock,Popular', 'one of the most famous music festival in Belgium', 'Shanghai', 'once', '2018', 'Belgium ', '', '', 'https://daydreamfestival.nl/', 3, 'https://dl.airtable.com/.attachments/a68364ca6e496584687d540565e0059a/8c00fd46/daydream.jpg'),
(12, 'Inmusic Festival', 'Popular,Rock,Ballad,Rap', 'held on a grassland', 'Zhangjiakou', 'once a year', '2009-present', 'Zhangjiakou', 'Sunshine Media', '', 'https://weibo.com/p/1002062796919865/home?from=page_100206&mod=TAB&is_all=1#place', 3, 'https://dl.airtable.com/.attachments/f3c658a2ab9d461ba6541b97a58a3b61/b8fd6ed5/zhangbei.JPG'),
(13, 'Beishan Music Festival ', 'Jazz', '', 'Zhuhai', 'twice a year', '2010-present', 'Zhuhai', 'Huameitianpei Education', '', 'https://weibo.com/beishanfestival', 2, 'https://dl.airtable.com/.attachments/2b61594af6726bdee8157a32303c3305/22445fce/beishan.jpg'),
(14, 'East Sea Music Festival', 'Rock,Electronic,Ballad', 'held alongside the ocean', 'Zhoushan', 'once a year', '2011-present', 'Zhoushan', 'Blue Imagine', '', 'https://weibo.com/eastwaves', 2, 'https://dl.airtable.com/.attachments/cfc7126b4db0e2db442534ff77b8cf3b/b2398eb0/eastsea.jpg'),
(16, 'Zebra Music Festival', 'Rock,Popular,Electronic,Ballad', '', 'tire 1 cities', 'unfixed', '2009-present', 'Chengdu', 'Zebra Media', '', 'https://sg.weibo.com/user/zebramedia', 2, 'https://dl.airtable.com/.attachments/f4806c4bda8848f92121a15855a909de/832b3720/zebra.JPG'),
(17, 'Majiao Music Festival', 'Rock', NULL, 'Handan', NULL, '2018-present', NULL, NULL, NULL, NULL, 2, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `recommendations`
--
ALTER TABLE `recommendations`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `recommendations`
--
ALTER TABLE `recommendations`
  MODIFY `ID` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
