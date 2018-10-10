-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jul 18, 2018 at 07:47 AM
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
-- Database: `esurf_blog`
--

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
(3, 3323661, 6649424, 'Sexy Good Morning Note', '<p xss=removed>How happy would your girlfriend be when you present her with good morning messages having quotes and wishes for her? It would refresh her morning, and it would add a spark to her day. There is a possibility that she might return you a sweet message, or a kiss via phone. Sending good morning messages tailor-made for your girlfriend is not easy, and it requires a lot of creativity depending on the nature that your girlfriend might be having.</p><p xss=removed>You can indeed be the perfect man for your girlfriend if you can make her happy. All you have to do is think about the relationship that you might be having and then think from your heart and deliver something nice to her. So, it is recommended that you send good morning message to your girlfriend to make her day.</p><p xss=removed><img src=\"https://i0.wp.com/fogut.com/wp-content/uploads/2017/10/Sweet-Romantic-Good-Morning-Quotes-Text-Messages-for-Her.jpg?w=750&ssl=1\" xss=removed><br></p><p xss=removed><br></p><p xss=removed>1. They say, even the moon has flaws. Even I think so, because imperfectly perfect is a sight rare to find, And so are you. Have a Splendid Good Morning!</p><p xss=removed>2. There is a reason why distance seems gruesome, those many days, hours and minutes, which I spend without you, makes me strong enough, to love you without any boundaries. Have a Blissful Morning!</p><p xss=removed>3. Those sweet nothings, those morning talks, those little memories. Have occupied a major part of my heart and soul, And I wish to create more with you. Have a Hopeful Morning!</p><p xss=removed>4. Every morning I wish to wake up to your pretty face, taking in every ounce of energy I could gather. For the entire day to sail smoothly and effortlessly. Have a Wishful Good Morning!</p>', '18-07-2018 05:14 AM', 1531890875);

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
(1, 67494465, 'striped-blouse-fashion_4460x4460.jpg', '2018-07-18'),
(2, 3323661, 'model-poses-with-knee-up_4460x4460.jpg', '2018-07-18');

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
(1, 6649424, '127.0.0.1', 'administrator', '$2a$07$SeBknntpZror9uyftVopmu61qg0ms8Qv1yV6FG.kQOSM.9QhmTo36', '', 'admin@admin.com', '', NULL, NULL, 'a4eREW7ra5Fd1B0nVT/XYe', 1268889823, 1531890423, 0, 1, 'Admin', 'istrator', 'ADMIN');

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

--
-- Indexes for dumped tables
--

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
