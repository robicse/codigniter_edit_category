-- phpMyAdmin SQL Dump
-- version 4.3.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 10, 2016 at 02:01 PM
-- Server version: 5.6.24
-- PHP Version: 5.6.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `codigniter_admin_login`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE IF NOT EXISTS `tbl_admin` (
  `id` int(11) NOT NULL,
  `admin_name` varchar(50) NOT NULL,
  `admin_email` varchar(100) NOT NULL,
  `admin_password` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`id`, `admin_name`, `admin_email`, `admin_password`) VALUES
(1, 'Robi Hasan', 'robicse8@gmail.com', 'e10adc3949ba59abbe56e057f20f883e'),
(2, 'Md. Robeul Islam', 'robeulcse1@gmail.com', 'e10adc3949ba59abbe56e057f20f883e');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_blog`
--

CREATE TABLE IF NOT EXISTS `tbl_blog` (
  `blog_id` int(5) NOT NULL,
  `category_id` int(2) NOT NULL,
  `blog_title` varchar(100) CHARACTER SET utf8 NOT NULL,
  `blog_short_description` text CHARACTER SET utf8 NOT NULL,
  `blog_long_description` text CHARACTER SET utf8 NOT NULL,
  `author_name` varchar(50) CHARACTER SET utf8 NOT NULL,
  `author_email` varchar(100) CHARACTER SET utf8 NOT NULL,
  `created_date_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `publication_status` tinyint(1) NOT NULL,
  `hit_count` int(3) DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_blog`
--

INSERT INTO `tbl_blog` (`blog_id`, `category_id`, `blog_title`, `blog_short_description`, `blog_long_description`, `author_name`, `author_email`, `created_date_time`, `publication_status`, `hit_count`) VALUES
(6, 0, 'গজারিয়ায় গণহত্যার শহীদদের স্মরণ', '<a href="http://www.prothom-alo.com/bangladesh/article/853834/গজারিয়ায়-গণহত্যার-শহীদদের-স্মরণ">মুন্সিগঞ্জের গজারিয়ায় গণহত্যার শিকার শহীদদের স্মরণে আজ সোমবার নানা কর্মসূচি পালিত হয়েছে। কর্মসূচির মধ্যে ছিল আলোচনা সভা, গণকবরে পুষ্পমাল্য অর্পণ এবং নতুন প্রজন্মের</a>', '<a href="http://www.prothom-alo.com/bangladesh/article/853834/গজারিয়ায়-গণহত্যার-শহীদদের-স্মরণ">মুন্সিগঞ্জের গজারিয়ায় গণহত্যার শিকার শহীদদের স্মরণে আজ সোমবার নানা কর্মসূচি পালিত হয়েছে। কর্মসূচির মধ্যে ছিল আলোচনা সভা, গণকবরে পুষ্পমাল্য অর্পণ এবং নতুন প্রজন্মের শিক্ষার্থীদের নিয়ে স্মৃতিচারণা অনুষ্ঠান। \r\nগজারিয়া পাবলিক লাইব্রেরি, মুক্তিযুদ্ধ নিয়ে কাজ করা মুক্ত আসর নামের একটি সংগঠন ও...</a>', 'Robi', 'robicse8@gmail.com', '2016-05-10 07:57:39', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_category`
--

CREATE TABLE IF NOT EXISTS `tbl_category` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(60) CHARACTER SET utf8 NOT NULL,
  `category_description` text CHARACTER SET utf8 NOT NULL,
  `publication_status` int(1) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_category`
--

INSERT INTO `tbl_category` (`category_id`, `category_name`, `category_description`, `publication_status`) VALUES
(1, 'বাংলাদেশ', '<h2 class="title"><a href="http://www.prothom-alo.com/bangladesh/article/838726/মক্কার-বলীখেলায়-চ্যাম্পিয়ন-শামশু-বলী">মক্কার বলীখেলায় চ্যাম্পিয়ন শামশু বলী</a></h2>', 1),
(2, 'আন্তর্জাতিক', '<h3 class="subtitle"><a href="http://www.prothom-alo.com/international/article/838603/‘বিপজ্জনক-রকম’-অতিরিক্ত-ক্ষমতা-কাটছাঁট-করুন">থাই সামরিক সরকারকে জাতিসংঘ মানবাধিকারপ্রধান</a></h3>', 1),
(3, 'অর্থনীতি', '<h2 class="title"><a href="http://www.prothom-alo.com/economy/article/838699/ব্যবসায়-সাফল্য-চাইলে-নেতাকে-ছাত্র-হতে-হবে">ব্যবসায় সাফল্য চাইলে নেতাকে ছাত্র হতে হবে</a></h2>', 0),
(4, 'মতামত', '<h2 class="title"><a href="http://www.prothom-alo.com/opinion/article/837721/নিয়ন্ত্রণমূলক-নয়-সুরক্ষামূলক-আইন-চাই">নিয়ন্ত্রণমূলক নয়, সুরক্ষামূলক আইন চাই</a></h2>', 1),
(5, 'বিনোদন', '<h2 class="title"><a href="http://www.prothom-alo.com/entertainment/article/838627/জাহিদ-হাসানের-অঙ্গীকার">জাহিদ হাসানের অঙ্গীকার!</a></h2>', 0),
(6, 'খেলা', '<h2 class="title"><a href="http://www.prothom-alo.com/sports/article/838540/রোনালদো-নেই-বেল-তো-আছেন">রোনালদো নেই, বেল তো আছেন!</a></h2>', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_blog`
--
ALTER TABLE `tbl_blog`
  ADD PRIMARY KEY (`blog_id`);

--
-- Indexes for table `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`category_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_blog`
--
ALTER TABLE `tbl_blog`
  MODIFY `blog_id` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
