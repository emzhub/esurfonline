-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Aug 27, 2018 at 04:13 AM
-- Server version: 10.1.25-MariaDB
-- PHP Version: 7.0.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `elrojavy_esurfmkc`
--

-- --------------------------------------------------------

--
-- Table structure for table `ci_sessions`
--

CREATE TABLE `ci_sessions` (
  `id` varchar(40) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `timestamp` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `data` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `es_admin`
--

CREATE TABLE `es_admin` (
  `id` int(11) NOT NULL,
  `school_id` varchar(50) NOT NULL,
  `program_type` varchar(50) NOT NULL,
  `uid` int(11) NOT NULL,
  `username` varchar(80) NOT NULL,
  `date` varchar(50) NOT NULL,
  `time` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `es_avatar`
--

CREATE TABLE `es_avatar` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `es_messag`
--

CREATE TABLE `es_messag` (
  `id` int(11) NOT NULL,
  `msg_id` int(8) NOT NULL,
  `from_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `date` varchar(50) NOT NULL,
  `time` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `es_messag`
--

INSERT INTO `es_messag` (`id`, `msg_id`, `from_id`, `title`, `message`, `date`, `time`) VALUES
(1, 67494465, 6649424, 'Good Morning Note', '<h3 xss=removed>Good Morning Quotes and Texts for Him:</h3><ul xss=removed><li xss=removed>Each my morning is wonderful because the day I will spend with you.</li><li xss=removed>You are still in the arms of sleep, and I embrace you and wish you a good morning!</li><li xss=removed>I woke up thousands of miles away from you, but it doesn’t matter because you are in my heart.</li><li xss=removed>Good morning! I hope that your day will be fine and you will not get stuck in traffic like yesterday.</li><li xss=removed>Dear, wake up and start your day, the fact that I am at <a href=\"http://sweetytextmessages.com/best-happy-birthday-mom-quotes-and-wishes.html\" xss=removed>my mother’s</a> place doesn’t mean that you should spend the whole day in the bed.</li><li xss=removed>I wish you a <a href=\"http://sweetytextmessages.com/good-morning-quotes.html\" xss=removed>good morning</a>, let your boss be kind to you today!</li><li xss=removed>Wake up! Your morning present is waiting for you in the kitchen, don’t forget to wash a plate!</li></ul>', '18-07-2018 05:07 AM', 1531890456),
(3, 3323661, 6649424, 'Sexy Good Morning Note', '<p xss=removed>How happy would your girlfriend be when you present her with good morning messages having quotes and wishes for her? It would refresh her morning, and it would add a spark to her day. There is a possibility that she might return you a sweet message, or a kiss via phone. Sending good morning messages tailor-made for your girlfriend is not easy, and it requires a lot of creativity depending on the nature that your girlfriend might be having.</p><p xss=removed>You can indeed be the perfect man for your girlfriend if you can make her happy. All you have to do is think about the relationship that you might be having and then think from your heart and deliver something nice to her. So, it is recommended that you send good morning message to your girlfriend to make her day.</p><p xss=removed><img src=\"https://i0.wp.com/fogut.com/wp-content/uploads/2017/10/Sweet-Romantic-Good-Morning-Quotes-Text-Messages-for-Her.jpg?w=750&ssl=1\" xss=removed><br></p><p xss=removed><br></p><p xss=removed>1. They say, even the moon has flaws. Even I think so, because imperfectly perfect is a sight rare to find, And so are you. Have a Splendid Good Morning!</p><p xss=removed>2. There is a reason why distance seems gruesome, those many days, hours and minutes, which I spend without you, makes me strong enough, to love you without any boundaries. Have a Blissful Morning!</p><p xss=removed>3. Those sweet nothings, those morning talks, those little memories. Have occupied a major part of my heart and soul, And I wish to create more with you. Have a Hopeful Morning!</p><p xss=removed>4. Every morning I wish to wake up to your pretty face, taking in every ounce of energy I could gather. For the entire day to sail smoothly and effortlessly. Have a Wishful Good Morning!</p>', '18-07-2018 05:14 AM', 1531890875),
(4, 5400818, 6649424, 'codeplay', '<p xss=removed><span xss=removed>what if i need to send a email from local server. i mean is there any way to access the nearest mailing server and make it send mail for me. i mean i can find the address of a yahoo mailing server and then i use that server for mailing purposes... is this possible?</span><span xss=removed>what if i need to send a email from local server. i mean is there any way to access the nearest mailing server and make it send mail for me. i mean i can find the address of a yahoo mailing server and then i use that server for mailing purposes... is this possible?</span><span xss=removed>what if i need to send a email from local server. i mean is there any way to access the nearest mailing server and make it send mail for me. i mean i can find the address of a yahoo mailing server and then i use that server for mailing purposes... is this possible?</span><br></p>', '18-07-2018 03:55 PM', 1531929347),
(6, 1473777, 6649424, 'crase', '<p><span xss=removed>Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus et aut officiis debitis cum soluta nobis est eligendi placeat facere aut rerum.</span><br></p>', '18-07-2018 03:59 PM', 1531929578),
(9, 49962207, 6649424, 'make we roll blunt', '<p xss=removed>In this section, we\'ll go through an example that demonstrates the use of pagination in CodeIgniter. It\'s the best way to understand how things work altogether.</p><p xss=removed>In our example, we\'ll build a pretty simple user listing in which we\'ll fetch records from the users MySQL table. In order to successfully run this example, make sure that you have the <code class=\"inline\" xss=removed>uid</code> and <code class=\"inline\" xss=removed>uname</code> fields in your users table.</p>', '22-07-2018 02:03 PM', 1532268232);

-- --------------------------------------------------------

--
-- Table structure for table `es_message_sent`
--

CREATE TABLE `es_message_sent` (
  `message_id` int(11) NOT NULL,
  `date` datetime NOT NULL,
  `user_from` int(11) NOT NULL,
  `user_to` int(11) NOT NULL,
  `subject` varchar(100) NOT NULL,
  `content` text NOT NULL,
  `location` varchar(100) NOT NULL,
  `status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE `groups` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `name` varchar(20) NOT NULL,
  `description` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `groups`
--

INSERT INTO `groups` (`id`, `name`, `description`) VALUES
(1, 'admin', 'Administrator'),
(2, 'student', 'General Students'),
(3, 'super', 'Super Admin'),
(4, 'hod', 'Head of department'),
(5, 'lecturer', 'Teachers'),
(6, 'src', 'Student union body'),
(7, 'librarian', 'Book Keeper');

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `id` int(11) NOT NULL,
  `msg_id` int(11) NOT NULL,
  `filename` varchar(100) NOT NULL,
  `created_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`id`, `msg_id`, `filename`, `created_at`) VALUES
(1, 67494465, 'striped-blouse-fashion_4460x4460.png', '2018-07-18'),
(2, 3323661, 'model-poses-with-knee-up_4460x4460.jpg', '2018-07-18'),
(3, 5400818, 'IMG_6374.JPG', '2018-07-18'),
(5, 1473777, 'IMG_6440.JPG', '2018-07-18'),
(8, 49962207, 'IMG_6499.JPG', '2018-07-22');

-- --------------------------------------------------------

--
-- Table structure for table `login_attempts`
--

CREATE TABLE `login_attempts` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `login` varchar(100) NOT NULL,
  `time` int(11) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `profile`
--

CREATE TABLE `profile` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `middle_name` varchar(50) NOT NULL,
  `last_name` varchar(64) NOT NULL,
  `email` varchar(40) NOT NULL,
  `phone_number` varchar(20) NOT NULL,
  `gender` varchar(7) NOT NULL,
  `dob` varchar(40) NOT NULL,
  `club` varchar(50) NOT NULL,
  `date` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='profile detail of a particular user, using their user id';

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `uid` int(10) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `salt` varchar(255) DEFAULT NULL,
  `email` varchar(254) NOT NULL,
  `activation_code` varchar(40) DEFAULT NULL,
  `forgotten_password_code` varchar(40) DEFAULT NULL,
  `forgotten_password_time` int(11) UNSIGNED DEFAULT NULL,
  `remember_code` varchar(40) DEFAULT NULL,
  `created_on` int(11) UNSIGNED NOT NULL,
  `last_login` int(11) UNSIGNED DEFAULT NULL,
  `status` int(10) NOT NULL,
  `active` tinyint(1) UNSIGNED DEFAULT NULL,
  `school_id` varchar(50) DEFAULT NULL,
  `department_id` varchar(50) DEFAULT NULL,
  `program_type` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `uid`, `ip_address`, `username`, `password`, `salt`, `email`, `activation_code`, `forgotten_password_code`, `forgotten_password_time`, `remember_code`, `created_on`, `last_login`, `status`, `active`, `school_id`, `department_id`, `program_type`) VALUES
(1, 6649424, '127.0.0.1', 'administrator', '$2a$07$SeBknntpZror9uyftVopmu61qg0ms8Qv1yV6FG.kQOSM.9QhmTo36', '', 'admin@admin.com', '', NULL, NULL, 'a4eREW7ra5Fd1B0nVT/XYe', 1268889823, 1532268160, 0, 1, 'Admin', 'istrator', 'ADMIN');

-- --------------------------------------------------------

--
-- Table structure for table `users_groups`
--

CREATE TABLE `users_groups` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `group_id` mediumint(8) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users_groups`
--

INSERT INTO `users_groups` (`id`, `user_id`, `group_id`) VALUES
(1, 1, 1),
(22, 22, 1),
(26, 23, 1),
(28, 27, 2),
(29, 28, 2),
(30, 29, 2),
(31, 30, 5),
(32, 31, 5),
(34, 33, 4),
(35, 34, 4),
(36, 35, 4),
(38, 37, 6),
(39, 38, 7),
(40, 39, 2),
(41, 40, 2),
(42, 41, 2),
(43, 42, 1),
(44, 43, 1),
(45, 44, 5),
(46, 45, 5),
(47, 46, 4),
(48, 47, 4),
(49, 48, 2),
(50, 49, 2),
(51, 50, 2),
(52, 64, 4),
(53, 65, 1),
(54, 66, 1);

-- --------------------------------------------------------

--
-- Table structure for table `vi_blog_files`
--

CREATE TABLE `vi_blog_files` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `image_id` int(11) NOT NULL,
  `comment` text NOT NULL,
  `file_name` varchar(150) NOT NULL,
  `file_ext` varchar(10) NOT NULL,
  `file_type` varchar(150) NOT NULL,
  `file_size` double NOT NULL,
  `date` varchar(50) NOT NULL,
  `time` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `vi_brands`
--

CREATE TABLE `vi_brands` (
  `id` int(11) NOT NULL,
  `cat_id` int(11) NOT NULL,
  `brand_id` int(11) NOT NULL,
  `brand_name` varchar(255) NOT NULL,
  `date` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vi_brands`
--

INSERT INTO `vi_brands` (`id`, `cat_id`, `brand_id`, `brand_name`, `date`) VALUES
(1, 38352628, 16529521, 'gold', '19-08-2018 11:29 AM'),
(3, 79958158, 19364349, 'hp charger', '19-08-2018 12:00 PM'),
(4, 79958158, 135899, 'laptop', '19-08-2018 12:00 PM');

-- --------------------------------------------------------

--
-- Table structure for table `vi_category`
--

CREATE TABLE `vi_category` (
  `id` int(11) NOT NULL,
  `cat_id` int(11) NOT NULL,
  `cat_name` varchar(255) NOT NULL,
  `date` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vi_category`
--

INSERT INTO `vi_category` (`id`, `cat_id`, `cat_name`, `date`) VALUES
(1, 38352628, 'clothing', '19-08-2018 11:28 AM'),
(2, 2299281, 'bags', '19-08-2018 11:28 AM'),
(3, 37906925, 'shoes', '19-08-2018 11:28 AM'),
(4, 79958158, 'electronic', '19-08-2018 11:28 AM');

-- --------------------------------------------------------

--
-- Table structure for table `vi_items`
--

CREATE TABLE `vi_items` (
  `id` int(11) NOT NULL,
  `item_id` varchar(50) NOT NULL,
  `item_name` varchar(200) NOT NULL,
  `item_caption` varchar(500) NOT NULL,
  `item_description` varchar(2000) NOT NULL,
  `item_group` int(11) NOT NULL,
  `item_status` int(11) NOT NULL DEFAULT '0',
  `item_category_id` int(11) NOT NULL,
  `item_subcategory_id` int(11) NOT NULL,
  `item_price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vi_items`
--

INSERT INTO `vi_items` (`id`, `item_id`, `item_name`, `item_caption`, `item_description`, `item_group`, `item_status`, `item_category_id`, `item_subcategory_id`, `item_price`) VALUES
(1, '74924608', 'vivo', 'freaf', '<p xss=removed><br class=\"Apple-interchange-newline\">Both <code xss=removed>.container</code> and <code xss=removed>.container-fluid</code> are responsive (i.e. they change the layout based on the screen width), but in different ways (I know, the naming doesn\'t make it sound that way).</p><p xss=removed><strong xss=removed>Short Answer:</strong></p><p xss=removed><code xss=removed>.container</code> is jumpy / choppy resizing, and</p><p xss=removed><code xss=removed>.container-fluid</code> is continuous / fine resizing at width: 100%.</p><p xss=removed><strong xss=removed>From a functionality perspective:</strong></p><p xss=removed><code xss=removed>.container-fluid</code> continuously resizes as you change the width of your window/browser by any amount, leaving no extra empty space on the sides ever, unlike how <code xss=removed>.container</code> does. (Hence the naming: \"fluid\" as opposed to \"digital\", \"discrete\", \"chunked\", or \"quantized\").</p><p xss=removed><code xss=removed>.container</code> resizes in chunks at several certain widths. In other words, it will be different specific aka \"fixed\" widths different ranges of screen widths.</p><p xss=removed>Semantics: \"fixed width\"</p><p xss=removed>You can see how naming confusion can arise. Technically, we can say <code xss=removed>.container</code> is \"fixed width\", but it is fixed only in the sense that it doesn\'t resize at every granular width. It\'s actually not \"fixed\" in the sense that it\'s always stays at a specific pixel width, since it actually can change size.</p><p xss=removed><strong xss=removed>From a fundamental perspective:</strong></p><p xss=removed><code xss=removed>.container-fluid</code> has the CSS property <code xss=removed>width: 100%;</code>, so it continually readjusts at every screen width granularity.</p><pre class=\"default prettyprint prettyprinted\" xss=removed><code xss=removed><span class=\"pun\" xss=removed>.</span><span class=\"pln\" xss=removed>container</span><span class=\"pun\" xss=removed', 1, 1, 38352628, 16529521, 867),
(2, '30409791', 'public', 'wakannow now now', '<p xss=removed><strong xss=removed>Beyond</strong></p><p xss=removed>You can make any fixed widths element responsive via media queries, not just <code xss=removed>.container</code>elements, since media queries is exactly how <code xss=removed>.container</code> is implemented by bootstrap in the background (see JKillian\'s answer for the code).</p>', 2, 1, 38352628, 16529521, 234),
(3, '52173162', 'codeigniter', 'codeigniter laravel api', '<div class=\"layout__content-with-sidebar\" xss=removed><div class=\"post-body view view--loaded\"><div class=\"post-body__body\"><div class=\"post-body__content\" xss=removed><p xss=removed><a href=\"http://www.codeigniter.com/\" xss=removed>CodeIgniter</a> is becoming well known for its power as a PHP based web application framework, but it\'s not often that we see examples of it being used for anything else. Today we\'ll learn how we can use CodeIgniter to create a RESTful API for your existing web applications, and demonstrate how to interact with your own API or other RESTful web-services, such as Facebook and Twitter.</p><p xss=removed>As you may know, you can find a wide selection of <a href=\"https://codecanyon.net/search?term=codeigniter\" target=\"_self\" xss=removed>CodeIgniter scripts and apps</a> on Envato Market, from <a href=\"https://codecanyon.net/item/codeigniter-membership-script/526888\" target=\"_self\" xss=removed>membership scripts</a> to <a href=\"https://codecanyon.net/item/quick-menu-manager-for-codeigniter/15395878\" target=\"_self\" xss=removed>menu managers</a> and much more.</p><h3 class=\"nolinks\" xss=removed>Tutorial Details</h3><ul xss=removed><li xss=removed><b>Program</b>: CodeIgniter, <a href=\"http://github.com/philsturgeon/codeigniter-restserver\" xss=removed>CodeIgniter REST server</a> and <a href=\"http://github.com/philsturgeon/codeigniter-restclient\" xss=removed>CodeIgniter REST client</a></li><li><b>Difficulty:</b> Medium</li><li><b>Estimated Completion Time:</b> 30 minutes</li></ul><h3 class=\"nolinks\" xss=removed>Introduction</h3><p xss=removed>If you have been following the <em xss=removed><a href=\"http://net.tutsplus.com/videos/screencasts/codeigniter-from-scratch-day-7-pagination/\" xss=removed>CodeIgniter From Scratch</a></em> series you will know by now that it is relatively quick and easy to put together simple web applications, such as blogs, CMS systems, brochure sites, etc. One thing you may not have thought about is using CodeIgniter to crea', 1, 1, 79958158, 135899, 400),
(8, '345076', 'go down low', 'wakannow people', '<p>$brandid$brandid$brandid$brandid$brandid$brandid$brandid$brandid$brandid$brandid$brandid$brandid$brandid$brandid$brandid$brandid$brandid$brandid$brandid$brandid$brandid$brandid$brandid$brandid$brandid$brandid$brandid$brandid<br></p>', 2, 1, 38352628, 16529521, 768);

-- --------------------------------------------------------

--
-- Table structure for table `vi_item_images`
--

CREATE TABLE `vi_item_images` (
  `id` int(11) NOT NULL,
  `item_id` varchar(100) NOT NULL,
  `image_id` int(11) NOT NULL,
  `vendor_id` varchar(100) NOT NULL,
  `image_url` varchar(500) NOT NULL,
  `image_status` int(11) NOT NULL DEFAULT '0',
  `created_at` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vi_item_images`
--

INSERT INTO `vi_item_images` (`id`, `item_id`, `image_id`, `vendor_id`, `image_url`, `image_status`, `created_at`) VALUES
(16, '74924608', 28178927, '6649424', '../mkc/files/upload/product/', 1, '2018-08-25'),
(17, '74924608', 8035287, '6649424', '../mkc/files/upload/product/fullsizeoutput_2d.jpeg', 1, '2018-08-25'),
(18, '74924608', 6976224, '6649424', '../mkc/files/upload/product/fullsizeoutput_2e.jpeg', 1, '2018-08-25'),
(19, '74924608', 30162363, '6649424', '../mkc/files/upload/product/fullsizeoutput_2f.jpeg', 1, '2018-08-25'),
(20, '30409791', 2500288, '6649424', '../mkc/files/upload/product/', 1, '2018-08-25'),
(21, '30409791', 3771887, '6649424', '../mkc/files/upload/product/fullsizeoutput_12.jpeg', 1, '2018-08-25'),
(22, '30409791', 22697089, '6649424', '../mkc/files/upload/product/fullsizeoutput_13.jpeg', 1, '2018-08-25'),
(23, '30409791', 6912653, '6649424', '../mkc/files/upload/product/fullsizeoutput_14.jpeg', 1, '2018-08-25'),
(24, '36087966', 523759, '6649424', '../mkc/files/upload/product/', 1, '2018-08-26'),
(25, '36087966', 206527, '6649424', '../mkc/files/upload/product/IMG_6399.JPG', 1, '2018-08-26'),
(26, '36087966', 20225812, '6649424', '../mkc/files/upload/product/fullsizeoutput_15.jpeg', 1, '2018-08-26'),
(27, '36087966', 1125288, '6649424', '../mkc/files/upload/product/IMG_6415.JPG', 1, '2018-08-26'),
(28, '4475361', 10827180, '6649424', '../mkc/files/upload/product/', 1, '2018-08-26'),
(29, '4475361', 2282658, '6649424', '../mkc/files/upload/product/IMG_6541.JPG', 1, '2018-08-26'),
(30, '3247809', 79165756, '6649424', '../mkc/files/upload/product/', 1, '2018-08-26'),
(31, '3247809', 9585853, '6649424', '../mkc/files/upload/product/IMG_6542.JPG', 1, '2018-08-26'),
(32, '56000541', 7226244, '6649424', '../mkc/files/upload/product/', 1, '2018-08-26'),
(33, '52173162', 9546036, '6649424', '../mkc/files/upload/product/', 1, '2018-08-26'),
(34, '52173162', 33404775, '6649424', '../mkc/files/upload/product/IMG_6434.JPG', 1, '2018-08-26'),
(35, '52173162', 2495975, '6649424', '../mkc/files/upload/product/IMG_6440.JPG', 1, '2018-08-26'),
(36, '345076', 81888555, '6649424', '../mkc/files/upload/product/345076/', 1, '2018-08-27'),
(37, '345076', 36779336, '6649424', '../mkc/files/upload/product/345076/', 1, '2018-08-27');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ci_sessions`
--
ALTER TABLE `ci_sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ci_sessions_timestamp` (`timestamp`);

--
-- Indexes for table `es_admin`
--
ALTER TABLE `es_admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `es_avatar`
--
ALTER TABLE `es_avatar`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`);

--
-- Indexes for table `es_messag`
--
ALTER TABLE `es_messag`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `es_message_sent`
--
ALTER TABLE `es_message_sent`
  ADD PRIMARY KEY (`message_id`);

--
-- Indexes for table `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login_attempts`
--
ALTER TABLE `login_attempts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `profile`
--
ALTER TABLE `profile`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users_groups`
--
ALTER TABLE `users_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uc_users_groups` (`user_id`,`group_id`),
  ADD KEY `fk_users_groups_users1_idx` (`user_id`),
  ADD KEY `fk_users_groups_groups1_idx` (`group_id`);

--
-- Indexes for table `vi_blog_files`
--
ALTER TABLE `vi_blog_files`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vi_brands`
--
ALTER TABLE `vi_brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vi_category`
--
ALTER TABLE `vi_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vi_items`
--
ALTER TABLE `vi_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vi_item_images`
--
ALTER TABLE `vi_item_images`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `es_admin`
--
ALTER TABLE `es_admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `es_avatar`
--
ALTER TABLE `es_avatar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `es_messag`
--
ALTER TABLE `es_messag`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `es_message_sent`
--
ALTER TABLE `es_message_sent`
  MODIFY `message_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `groups`
--
ALTER TABLE `groups`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `login_attempts`
--
ALTER TABLE `login_attempts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `profile`
--
ALTER TABLE `profile`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `users_groups`
--
ALTER TABLE `users_groups`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;
--
-- AUTO_INCREMENT for table `vi_blog_files`
--
ALTER TABLE `vi_blog_files`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `vi_brands`
--
ALTER TABLE `vi_brands`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `vi_category`
--
ALTER TABLE `vi_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `vi_items`
--
ALTER TABLE `vi_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `vi_item_images`
--
ALTER TABLE `vi_item_images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
