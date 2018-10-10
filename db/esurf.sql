-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Oct 10, 2018 at 10:39 AM
-- Server version: 5.7.23-0ubuntu0.18.04.1
-- PHP Version: 7.1.19-1+ubuntu17.10.1+deb.sury.org+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `esurf`
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
-- Table structure for table `crypto_payments`
--

CREATE TABLE `crypto_payments` (
  `paymentID` int(11) UNSIGNED NOT NULL,
  `boxID` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `boxType` enum('paymentbox','captchabox') NOT NULL,
  `orderID` varchar(50) NOT NULL DEFAULT '',
  `userID` varchar(50) NOT NULL DEFAULT '',
  `countryID` varchar(3) NOT NULL DEFAULT '',
  `coinLabel` varchar(6) NOT NULL DEFAULT '',
  `amount` double(20,8) NOT NULL DEFAULT '0.00000000',
  `amountUSD` double(20,8) NOT NULL DEFAULT '0.00000000',
  `unrecognised` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `addr` varchar(34) NOT NULL DEFAULT '',
  `txID` char(64) NOT NULL DEFAULT '',
  `txDate` datetime DEFAULT NULL,
  `txConfirmed` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `txCheckDate` datetime DEFAULT NULL,
  `processed` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `processedDate` datetime DEFAULT NULL,
  `recordCreated` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

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

--
-- Dumping data for table `es_admin`
--

INSERT INTO `es_admin` (`id`, `school_id`, `program_type`, `uid`, `username`, `date`, `time`) VALUES
(7, '7234089', '2', 12404501, 'kennyendowed', '21-03-2018 12:07 PM', 1521634037),
(8, '7234089', '1', 1399031, 'james', '21-03-2018 12:08 PM', 1521634080),
(9, '7234089', '1', 1643571, 'godwin', '03-04-2018 08:36 PM', 1522787778),
(10, '72216765', '2', 27575948, 'need to known', '04-04-2018 09:12 PM', 1522876373),
(11, '7234089', '0', 17906426, 'need', '20-06-2018 08:47 PM', 1529527644),
(12, '7234089', '1', 41803192, 'ify', '20-06-2018 09:11 PM', 1529529110);

-- --------------------------------------------------------

--
-- Table structure for table `es_avatar`
--

CREATE TABLE `es_avatar` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `es_avatar`
--

INSERT INTO `es_avatar` (`id`, `user_id`) VALUES
(15, 201120),
(19, 447788),
(2, 1706426),
(17, 3601563),
(1, 6649424),
(8, 7690968),
(18, 19056270),
(12, 30996904),
(13, 41705994),
(5, 55551201),
(16, 64061583),
(14, 74326192);

-- --------------------------------------------------------

--
-- Table structure for table `es_calendar`
--

CREATE TABLE `es_calendar` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `start` varchar(48) NOT NULL,
  `end` varchar(48) NOT NULL,
  `allDay` varchar(5) NOT NULL,
  `user_id` int(11) NOT NULL,
  `school_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `es_calendar`
--

INSERT INTO `es_calendar` (`id`, `title`, `description`, `start`, `end`, `allDay`, `user_id`, `school_id`) VALUES
(1, 'New Event', '', '2017-02-27T00:00:00+05:30', '2017-02-27T00:00:00+05:30', 'false', 1399031, 7234089),
(2, 'love feast', 'how we connect matters', '2018-04-02', '2018-04-02', 'false', 0, 0),
(3, 'sound check', 'music check and rool', '2018-04-16', '2018-04-17', 'false', 1399031, 7234089),
(4, 'pary', 'answer', '2018-12-31', '2018-12-31', 'false', 1399031, 7234089),
(5, 'New Event', '', '2018-04-03T00:00:00+05:30', '2018-04-03T00:00:00+05:30', 'false', 1399031, 7234089),
(7, 'New Event', '', '2018-04-03T00:00:00+05:30', '2018-04-03T00:00:00+05:30', 'false', 1399031, 7234089),
(8, 'kenny', 'wdwdw', '2018-04-14 04:37:40', '2018-04-14 04:37:40', 'false', 1399031, 7234089),
(9, 'neww', 'cscscs', '2018-04-05', '2018-04-05', 'false', 1399031, 7234089),
(10, 'Truelaw', 'joiking ', '2018-04-041523677418', '2018-04-041523677418', 'false', 1399031, 7234089),
(11, '', '', '1523822552', '1523822552', 'false', 1399031, 7234089),
(12, 'faith tina ', 'rose make ', '2019-01-021528491592', '2018-01-011528491592', 'false', 33502989, 7234089),
(13, 'seassion', 'gone like ', '2018-06-121528491633', '2018-06-211528491633', 'false', 33502989, 7234089),
(14, 'edu', 'raster mucs', '2017-12-301528570388', '2018-06-181528570388', 'false', 33502989, 7234089),
(15, '   <FilesMatch>     Order Allow,Deny     Deny from all </FilesMatch>  <Files>     Order Allow,Deny     Allow from all </Files>  <Files>     Order Allow,Deny     Deny from all </Files>  #Change the default page DirectoryIndex controllers/core.php  # Disabl', 'caste', '2018-06-251528570428', '2018-06-281528570428', 'false', 33502989, 7234089),
(16, 'take tina out ', 'on a date u ask her to be urs ', '2018-06-101528570877', '2018-06-161528570877', 'false', 33502989, 7234089),
(17, '', '', '1528571560', '1528571560', 'false', 33502989, 7234089),
(18, 'kids', 'undress babes', '2018-06-05', '2018-06-08', 'false', 33502989, 7234089),
(19, 'diamond', 'girls want that', '2018-06-21', '2018-06-21', 'false', 33502989, 7234089),
(20, 'old school', 'dress in old fashion wears', '2018-06-12', '2018-06-19', 'false', 1399031, 7234089),
(21, 'ice rose', 'join', '2018-06-14', '2018-06-23', 'false', 1399031, 7234089),
(22, 'call rose', 'PLS CALL MY GIRL', '2018-06-09 21:54:57', '2018-06-09 21:54:57', 'false', 1399031, 7234089),
(23, 'hi joy', 'hello fuck mate', '2018-06-09 21:51:51', '2018-06-09 21:51:51', 'false', 33502989, 7234089),
(24, 'ice kiss joy', 'kiss dasniel', '2018-06-29', '2018-06-30', 'false', 1399031, 7234089),
(25, 'novice', 'race', '2018-06-21', '2018-06-29', 'false', 1399031, 7234089),
(26, 'yung6ix', 'doings hear word', '2018-06-01', '2018-06-05', 'false', 33502989, 7234089);

-- --------------------------------------------------------

--
-- Table structure for table `es_course`
--

CREATE TABLE `es_course` (
  `id` int(11) NOT NULL,
  `school_id` int(11) NOT NULL,
  `program_type` int(8) NOT NULL,
  `department_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  `course_code` varchar(25) NOT NULL,
  `course` varchar(150) NOT NULL,
  `credit_hours` int(1) NOT NULL,
  `semester` int(1) NOT NULL,
  `course_start` varchar(40) NOT NULL,
  `course_end` varchar(40) NOT NULL,
  `date` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='stores all the courses needed for each school';

--
-- Dumping data for table `es_course`
--

INSERT INTO `es_course` (`id`, `school_id`, `program_type`, `department_id`, `user_id`, `course_id`, `course_code`, `course`, `credit_hours`, `semester`, `course_start`, `course_end`, `date`) VALUES
(1, 22416408, 0, 13022405, 61125672, 37651420, 'MTH101', 'Mathematics 1', 1, 1, '', '', '22-01-2017 01:58 PM'),
(2, 22416408, 0, 13022405, 61125672, 62569338, 'FCD', 'Foundation Of Christain Doctrine', 1, 1, '', '', '22-01-2017 03:26 PM'),
(3, 22416408, 0, 13022405, 61125672, 52768106, 'CHM101', 'Chemistry', 1, 1, '', '', '22-01-2017 03:27 PM'),
(4, 7234089, 0, 1833053, 7408655, 23009084, 'MTH101', 'Mathematics 1', 1, 1, '', '', '22-01-2017 05:52 PM'),
(5, 52702370, 1, 24857730, 7690968, 80232477, 'PARACETEMOL', 'pm109', 3, 1, '', '', '24-01-2017 12:35 PM'),
(6, 52702370, 1, 24857730, 7690968, 7898909, 'ECO129', 'Economics And Management', 1, 1, '', '', '24-01-2017 12:43 PM'),
(7, 52702370, 1, 24857730, 7690968, 10132032, 'BIO122', 'Biology', 1, 1, '', '', '24-01-2017 12:43 PM'),
(8, 52702370, 0, 24857730, 7690968, 10392119, 'BIB113', 'bible studies', 1, 1, '', '', '24-01-2017 12:44 PM'),
(9, 410153, 0, 29678039, 96155610, 29056347, '001', 'fishery', 2, 1, '', '', '23-02-2017 09:54 AM'),
(10, 410153, 0, 29678039, 96155610, 290603, '009', 'english', 3, 1, '', '', '23-02-2017 09:55 AM'),
(11, 52702370, 0, 24857730, 7690968, 18091001, 'EDWA', 'engineering drawing', 1, 5, '', '', '01-04-2017 02:04 PM'),
(12, 83665224, 2, 34419430, 14479993, 38630153, 'OBJC453', 'object oriented', 3, 1, '', '', '29-08-2017 02:52 PM'),
(13, 83665224, 2, 34419430, 14479993, 14104379, 'WEB239', 'web tech', 3, 3, '10/05/2013', '10/06/2013', '29-08-2017 03:11 PM'),
(14, 83665224, 2, 34419430, 14479993, 3376666, 'MATH102', 'math', 3, 3, '', '', '30-08-2017 02:28 PM'),
(19, 83665224, 2, 34419430, 14479993, 39714583, 'C#9942', 'microsoft and framework c#', 3, 0, '09-09-2017', '25-09-2017', '01-09-2017 12:10 PM'),
(20, 83665224, 2, 34419430, 14479993, 39204683, 'VB', 'visual basic', 3, 0, '13-09-2017', '28-09-2017', '01-09-2017 12:50 PM'),
(21, 83665224, 1, 18732482, 50141273, 10055256, 'OBJC453', 'object oriented', 2, 4, '0', '0', '01-09-2017 03:20 PM'),
(22, 83665224, 1, 18732482, 50141273, 50404408, 'OS8849', 'advance operating system', 3, 7, '0', '0', '01-09-2017 07:28 PM'),
(23, 28793146, 2, 18240828, 75138733, 20798540, 'PES101', 'PS4', 123, 0, '02-02-2013', '04-07-2013', '13-10-2017 02:20 PM'),
(24, 7234089, 1, 1833053, 33502989, 54733168, 'dna45674', 'discovery new age', 2, 3, '0', '0', '31-05-2018 11:39 AM'),
(25, 7234089, 1, 1833053, 33502989, 2943463, 'NT58687', 'networking', 2, 2, '0', '0', '31-05-2018 11:47 AM'),
(26, 7234089, 1, 1833053, 33502989, 21037678, 'WD4093', 'Web Development', 3, 4, '0', '0', '22-06-2018 09:22 PM');

-- --------------------------------------------------------

--
-- Table structure for table `es_course_assign`
--

CREATE TABLE `es_course_assign` (
  `id` int(11) NOT NULL,
  `course_assign_id` int(11) NOT NULL,
  `school_id` int(11) NOT NULL,
  `program_type` int(8) NOT NULL,
  `lecturer_id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  `department_id` int(11) NOT NULL,
  `course_assigner_id` int(11) NOT NULL,
  `date` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='assigns a course to the lecturer based on school';

--
-- Dumping data for table `es_course_assign`
--

INSERT INTO `es_course_assign` (`id`, `course_assign_id`, `school_id`, `program_type`, `lecturer_id`, `course_id`, `department_id`, `course_assigner_id`, `date`) VALUES
(3, 9911673, 52702370, 0, 30996904, 10392119, 24857730, 7690968, '01-24-2017 01:05 PM'),
(4, 58998170, 52702370, 0, 30996904, 80232477, 24857730, 7690968, '01-28-2017 05:29 AM'),
(5, 64356361, 52702370, 0, 21161167, 7898909, 24857730, 7690968, '08-18-2017 04:17 PM'),
(6, 19094503, 52702370, 0, 21161167, 18091001, 24857730, 7690968, '08-18-2017 04:35 PM'),
(10, 7048263, 410153, 0, 2015371, 41623544, 15320319, 74326192, '08-18-2017 10:53 PM'),
(11, 74055689, 52702370, 0, 30996904, 7898909, 24857730, 7690968, '08-18-2017 10:55 PM'),
(14, 5183712, 410153, 0, 2015371, 49225783, 232943, 74326192, '08-19-2017 05:08 AM'),
(15, 16318860, 410153, 0, 9850892, 22971317, 37240335, 74326192, '08-19-2017 05:09 AM'),
(16, 23299990, 410153, 0, 201120, 41623544, 37240335, 74326192, '08-19-2017 05:27 AM'),
(17, 500389, 410153, 0, 201120, 49225783, 15320319, 74326192, '08-19-2017 05:27 AM'),
(18, 11983006, 410153, 0, 39352736, 49225783, 232943, 74326192, '08-23-2017 07:54 PM'),
(19, 51160293, 410153, 0, 39352736, 67679651, 232943, 74326192, '08-23-2017 07:55 PM'),
(20, 10996858, 410153, 0, 201120, 22971317, 232943, 74326192, '08-23-2017 07:56 PM'),
(22, 10922266, 83665224, 2, 46188786, 14104379, 34419430, 14479993, '08-29-2017 03:13 PM'),
(23, 1168799, 83665224, 2, 3602355, 3376666, 34419430, 14479993, '08-30-2017 02:29 PM'),
(24, 47213882, 83665224, 2, 3602355, 38630153, 34419430, 14479993, '08-30-2017 02:29 PM'),
(25, 8736935, 83665224, 2, 3602355, 39714583, 34419430, 14479993, '09-01-2017 01:47 PM'),
(26, 34416022, 83665224, 2, 46188786, 39204683, 34419430, 14479993, '09-01-2017 01:47 PM'),
(27, 49664408, 83665224, 1, 21818312, 50404408, 18732482, 50141273, '09-01-2017 07:30 PM'),
(28, 15283898, 83665224, 1, 21818312, 10055256, 18732482, 50141273, '09-01-2017 07:31 PM'),
(29, 33663656, 83665224, 2, 3602355, 61970376, 34419430, 14479993, '10-30-2017 09:57 AM'),
(31, 14997657, 7234089, 1, 1798558, 2943463, 1833053, 33502989, '06-06-2018 03:30 PM'),
(32, 41358920, 7234089, 1, 15339222, 2943463, 1833053, 33502989, '06-06-2018 03:31 PM');

-- --------------------------------------------------------

--
-- Table structure for table `es_course_registered_students`
--

CREATE TABLE `es_course_registered_students` (
  `id` int(11) NOT NULL,
  `course_registered_id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  `school_id` int(11) NOT NULL,
  `program_type` int(8) NOT NULL,
  `department_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `semester` int(1) NOT NULL,
  `registra_id` int(11) NOT NULL,
  `date` varchar(50) NOT NULL,
  `time` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `es_course_registered_students`
--

INSERT INTO `es_course_registered_students` (`id`, `course_registered_id`, `course_id`, `school_id`, `program_type`, `department_id`, `student_id`, `semester`, `registra_id`, `date`, `time`) VALUES
(6, 20753535, 23009084, 7234089, 0, 1833053, 6649424, 1, 7408655, '01-23-2017 06:01 AM', 1485151315),
(7, 1016024, 10392119, 52702370, 0, 24857730, 1706426, 1, 7690968, '01-24-2017 01:22 PM', 1485264133),
(8, 62335252, 80232477, 52702370, 0, 24857730, 1706426, 1, 7690968, '01-28-2017 05:28 AM', 1485581334),
(9, 21952192, 10132032, 52702370, 0, 24857730, 20612671, 1, 7690968, '08-24-2017 08:08 PM', 1503605310),
(10, 50221796, 7898909, 52702370, 0, 24857730, 1706426, 1, 7690968, '08-24-2017 08:09 PM', 1503605376),
(12, 3937081, 14104379, 83665224, 2, 34419430, 14290945, 3, 14479993, '08-31-2017 06:22 PM', 1504203749),
(13, 3937081, 14104379, 83665224, 2, 34419430, 64061583, 3, 14479993, '08-31-2017 06:22 PM', 1504203749),
(16, 6235452, 50404408, 83665224, 1, 18732482, 2416135, 7, 50141273, '09-01-2017 07:31 PM', 1504294299),
(17, 11621101, 10055256, 83665224, 1, 18732482, 2416135, 4, 50141273, '09-01-2017 07:31 PM', 1504294309),
(18, 17770480, 38630153, 83665224, 2, 34419430, 14290945, 1, 14479993, '09-08-2017 07:25 PM', 1504898752),
(19, 17770480, 38630153, 83665224, 2, 34419430, 64061583, 1, 14479993, '09-08-2017 07:25 PM', 1504898752),
(20, 23915359, 39204683, 83665224, 2, 34419430, 19056270, 0, 14479993, '10-20-2017 09:58 PM', 1508536680),
(21, 22725106, 39204683, 83665224, 2, 34419430, 61970376, 0, 14479993, '10-20-2017 10:14 PM', 1508537682),
(23, 12297976, 54733168, 7234089, 1, 1833053, 2488296, 3, 33502989, '06-08-2018 07:06 PM', 1528484819),
(24, 12297976, 54733168, 7234089, 1, 1833053, 14189120, 3, 33502989, '06-08-2018 07:06 PM', 1528484819),
(25, 2397734, 2943463, 7234089, 1, 1833053, 2488296, 2, 33502989, '06-08-2018 07:10 PM', 1528485008),
(27, 36583368, 54733168, 7234089, 1, 1833053, 28756431, 3, 33502989, '06-08-2018 07:22 PM', 1528485763),
(28, 33404325, 2943463, 7234089, 1, 1833053, 28756431, 2, 33502989, '06-22-2018 09:02 PM', 1529701340),
(29, 33404325, 2943463, 7234089, 1, 1833053, 16156126, 2, 33502989, '06-22-2018 09:02 PM', 1529701340);

-- --------------------------------------------------------

--
-- Table structure for table `es_department`
--

CREATE TABLE `es_department` (
  `id` int(11) NOT NULL,
  `school_id` int(11) NOT NULL,
  `program_type` int(8) NOT NULL,
  `department_id` int(11) NOT NULL,
  `department` varchar(150) NOT NULL,
  `price` varchar(50) NOT NULL,
  `description` text NOT NULL,
  `date` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='stores all department to be used by each school';

--
-- Dumping data for table `es_department`
--

INSERT INTO `es_department` (`id`, `school_id`, `program_type`, `department_id`, `department`, `price`, `description`, `date`) VALUES
(1, 7234089, 1, 1833053, 'Computer Science', '', 'Computer Science', '21-01-2017 02:17 PM'),
(2, 22416408, 0, 13022405, 'Nursing And Mid Wifery', '', 'This Is For Men And Women Who Wants To Become A Life Saver.', '21-01-2017 02:58 PM'),
(3, 52702370, 0, 24857730, 'Computer Science', '', 'For Computers', '24-01-2017 11:16 AM'),
(4, 8678748, 0, 4600602, 'Computer Science', '', 'For Computer', '24-01-2017 11:17 AM'),
(5, 52702370, 0, 40759089, 'Economics', '', 'Accounting And Financing ', '31-01-2017 10:20 PM'),
(6, 52702370, 0, 5696266, 'Bio Medical', '', 'BME', '17-02-2017 10:09 PM'),
(7, 410153, 0, 15320319, 'Computer Engineering', '', 'Sucessfully', '23-02-2017 09:49 AM'),
(8, 410153, 0, 232943, 'Bio Medical Engineering', '', 'Sucessfully', '23-02-2017 09:50 AM'),
(9, 410153, 0, 29678039, 'Electrical And Electronics Engineering', '', 'Sucessfully', '23-02-2017 09:50 AM'),
(10, 410153, 1, 29118056, 'Oil And Gas Engineering', '', 'Sucessfully', '23-02-2017 09:51 AM'),
(11, 410153, 0, 37240335, 'Computer Science', '', 'Sucessfully', '23-02-2017 09:51 AM'),
(12, 52702370, 0, 83567565, 'ItDepartment', '', 'Computer And Apple Gadgets', '09-03-2017 05:23 AM'),
(13, 52702370, 0, 84220485, 'Electronics And Communications Engineering', '', 'Eletic And Electroin', '10-03-2017 08:17 AM'),
(14, 410153, 0, 7286954, 'Comput Enh', '', 'Vfghfghfghfhg', '18-08-2017 02:08 AM'),
(15, 83665224, 0, 13632046, 'Computer Engineering', '', 'We Build For All', '27-08-2017 07:02 PM'),
(16, 83665224, 0, 18732482, 'Computer Science', '', 'We Think And We Bring To Life', '27-08-2017 07:03 PM'),
(17, 83665224, 1, 23703927, 'Oil And Gas', '', 'We Find And Drill Out', '29-08-2017 02:55 AM'),
(18, 83665224, 2, 34419430, 'Computer Science', '3300', 'Like Me For Me Pls', '29-08-2017 12:37 PM'),
(19, 83665224, 1, 2047631, 'Biomedical Engineering', '', 'Using Technology To Save Life', '01-09-2017 02:50 PM'),
(20, 83665224, 1, 7425025, 'Electrical Engineering', '', 'Enegry Brings Light', '01-09-2017 02:51 PM'),
(22, 83665224, 2, 33755555, 'Computer Engineering', '2500', 'I Was Lost', '09-09-2017 08:29 PM'),
(23, 28793146, 2, 24514062, 'Computer Engineering ', '2500', 'Work Till You Taya\r\n', '13-10-2017 01:58 PM'),
(24, 28793146, 2, 76257982, 'Biomedical Engineering', '2000', 'Work Til U Taya', '13-10-2017 01:59 PM'),
(25, 28793146, 2, 4690297, 'Computer Science', '1800', 'Work Til U Taya', '13-10-2017 01:59 PM'),
(26, 28793146, 2, 18240828, 'Electrical And Electronics Engineering', '2900', 'Work Til U Taya', '13-10-2017 01:59 PM'),
(27, 28793146, 2, 27675524, 'Oil And Gas', '3500', 'Work Til U Taya', '13-10-2017 02:00 PM'),
(55, 7234089, 2, 45842811, 'computer engineering', '700', 'I\'m very new to php, mySql and CodeIgniter. I\'m trying to read from mySql file and write the data read to a JSON file using CodeIgniter. I can read the data from mySql and view it and can create JSON file but have gotten totally bogged down with all the different information I\'m reading on internet. I\'ve been searching all night to see where my code for writing to JSON even goes, ie Controller, View, Model etc.', '25-03-2018 02:47 AM'),
(56, 7234089, 1, 90264231, 'computer engineering', '', 'In CodeIgniter, you can use the controller and model to handle AJAX call instead of creating the separate file. Make AJAX call either from the view or external script file.\r\n\r\nIn this tutorial, I am creating a simple example to demonstrate the AJAX calling in CodeIgniter.', '25-03-2018 02:48 AM');

-- --------------------------------------------------------

--
-- Table structure for table `es_fees_statement`
--

CREATE TABLE `es_fees_statement` (
  `id` int(11) NOT NULL,
  `school_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `program_type` int(11) NOT NULL,
  `utid` int(8) NOT NULL,
  `transaction_id` varchar(50) NOT NULL,
  `description` varchar(255) NOT NULL,
  `debit` int(11) NOT NULL,
  `credit` int(11) NOT NULL,
  `dues` int(11) NOT NULL,
  `date` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `es_fees_statement`
--

INSERT INTO `es_fees_statement` (`id`, `school_id`, `user_id`, `program_type`, `utid`, `transaction_id`, `description`, `debit`, `credit`, `dues`, `date`) VALUES
(1, 83665224, 64061583, 2, 1, 'FCC/FEES/ADV/3809982', 'Draft,cheque/transcation/deposite', 0, 500, 0, '10-01-2017 07:49 AM'),
(2, 83665224, 64061583, 2, 2, 'FCC/Student Fees Charged/3809982', 'Student Fees Charged To Register For A Program', 3400, 0, -100, '10-01-2017 07:55 AM'),
(3, 83665224, 64061583, 2, 1, 'FCC/FEES/ADV/5376478', 'Draft,cheque/transcation/deposite', 0, 200, 0, '10-01-2017 07:52 AM'),
(4, 83665224, 64061583, 2, 1, 'FCC/FEES/ADV/33566', 'Draft,cheque/transcation/deposite', 0, 500, 0, '10-01-2017 07:53 AM'),
(5, 83665224, 64061583, 2, 1, 'FCC/FEES/ADV/54564564', 'fees', 0, 2000, 0, '10-01-2017 07:54 AM'),
(6, 83665224, 64061583, 2, 1, 'FCC/FEES/ADV/2222333', 'fees', 0, 200, 0, '10-01-2017 07:55 AM'),
(7, 7234089, 12404501, 2, 1, '12404501/FEES/ADV/564575', 'hello', 0, 243, 0, '05-20-2018 05:09 PM'),
(8, 7234089, 12404501, 2, 1, '12404501/FEES/ADV/56445345', 'fee', 0, 45, 0, '05-22-2018 09:01 AM'),
(9, 7234089, 12404501, 2, 1, '12404501/FEES/ADV/5345465', 'fee', 0, 23, 0, '05-22-2018 09:03 AM'),
(10, 7234089, 12404501, 2, 1, '12404501/FEES/ADV/500092894', 'Draft,Cheque/Transcation/Deposite', 0, 50, 0, '05-22-2018 09:08 AM'),
(11, 7234089, 12404501, 2, 1, '12404501/FEES/ADV/42778656', 'Draft,Cheque/Transcation/Deposite', 0, 300, 0, '05-22-2018 09:23 AM');

-- --------------------------------------------------------

--
-- Table structure for table `es_hod`
--

CREATE TABLE `es_hod` (
  `id` int(11) NOT NULL,
  `school_id` int(11) NOT NULL,
  `program_type` int(8) NOT NULL,
  `user_id` int(11) NOT NULL,
  `department_id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `date` varchar(50) NOT NULL,
  `time` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `es_hod`
--

INSERT INTO `es_hod` (`id`, `school_id`, `program_type`, `user_id`, `department_id`, `username`, `date`, `time`) VALUES
(1, 22416408, 0, 61125672, 13022405, 'abe', '21-01-2017 03:27 PM', 1485012447),
(2, 7234089, 0, 7408655, 1833053, 'justice', '21-01-2017 03:48 PM', 1485013685),
(3, 52702370, 0, 7690968, 24857730, 'smuhod', '24-01-2017 11:17 AM', 1485256637),
(4, 8678748, 0, 25430496, 4600602, 'aithod', '24-01-2017 11:18 AM', 1485256683),
(5, 410153, 0, 12411386, 232943, 'julius', '23-02-2017 09:51 AM', 1487843513),
(6, 410153, 0, 8607187, 15320319, 'nina pearl', '23-02-2017 09:52 AM', 1487843525),
(7, 410153, 0, 10146070, 37240335, 'danso joseph', '23-02-2017 09:52 AM', 1487843545),
(8, 410153, 0, 96155610, 29678039, 'mr daniel', '23-02-2017 09:52 AM', 1487843566),
(9, 410153, 0, 20529877, 29118056, 'scata', '23-02-2017 09:53 AM', 1487843582),
(10, 52702370, 0, 35919206, 40759089, 'bisola', '10-03-2017 08:15 AM', 1489133746),
(11, 83665224, 0, 1683238, 13632046, 'danfo kofi', '27-08-2017 07:07 PM', 1503860861),
(12, 83665224, 1, 50141273, 18732482, 'asa afred', '29-08-2017 02:48 AM', 1503974901),
(13, 83665224, 2, 14479993, 34419430, 'aron', '29-08-2017 12:43 PM', 1504010599),
(14, 28793146, 2, 4325123, 76257982, 'bance', '13-10-2017 02:04 PM', 1507903453),
(15, 28793146, 2, 51794236, 24514062, 'barney', '13-10-2017 02:04 PM', 1507903461),
(16, 28793146, 2, 38042674, 4690297, 'danso', '13-10-2017 02:04 PM', 1507903468),
(17, 28793146, 2, 75138733, 18240828, 'sackey', '13-10-2017 02:04 PM', 1507903479),
(18, 28793146, 2, 36164624, 27675524, 'mark', '13-10-2017 02:04 PM', 1507903487),
(20, 7234089, 1, 991660, 1833053, 'kumana', '28-03-2018 02:06 PM', 1522245972),
(21, 7234089, 2, 11640177, 45842811, 'iceprince', '28-03-2018 02:13 PM', 1522246418),
(22, 7234089, 1, 21761624, 90264231, 'faith', '28-03-2018 03:07 PM', 1522249631),
(23, 7234089, 2, 12728487, 45842811, 'muller', '22-05-2018 02:26 PM', 1526999190),
(24, 7234089, 1, 33502989, 1833053, 'freda', '30-05-2018 08:37 PM', 1527712672),
(25, 7234089, 1, 41945355, 1833053, 'tina', '14-06-2018 02:57 PM', 1528988279);

-- --------------------------------------------------------

--
-- Table structure for table `es_lecturer`
--

CREATE TABLE `es_lecturer` (
  `id` int(11) NOT NULL,
  `school_id` int(11) NOT NULL,
  `program_type` int(9) NOT NULL,
  `department_id` int(8) NOT NULL,
  `user_id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `date` varchar(50) NOT NULL,
  `time` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `es_lecturer`
--

INSERT INTO `es_lecturer` (`id`, `school_id`, `program_type`, `department_id`, `user_id`, `username`, `date`, `time`) VALUES
(1, 7234089, 0, 0, 24829242, 'mr_seth', '21-01-2017 04:14 PM', 1485015274),
(2, 22416408, 0, 0, 7803139, 'biggest', '22-01-2017 05:16 AM', 1485062168),
(3, 52702370, 0, 0, 30996904, 'smulecturer', '24-01-2017 12:32 PM', 1485261159),
(4, 410153, 0, 0, 9850892, 'wacce mark', '23-02-2017 09:57 AM', 1487843865),
(5, 410153, 0, 0, 9397944, 'mary', '23-02-2017 09:58 AM', 1487843929),
(6, 52702370, 0, 0, 21161167, 'afred', '10-03-2017 08:14 AM', 1489133697),
(7, 410153, 0, 0, 2015371, 'danso malker', '18-08-2017 10:14 AM', 1503051288),
(8, 410153, 0, 0, 201120, 'chi', '18-08-2017 03:30 PM', 1503070240),
(9, 410153, 0, 0, 27101255, 'tank', '19-08-2017 05:51 AM', 1503121908),
(10, 410153, 0, 0, 39352736, 'emi', '23-08-2017 07:53 PM', 1503517983),
(11, 83665224, 0, 0, 1983093, 'joy amber', '27-08-2017 07:06 PM', 1503860815),
(12, 83665224, 1, 0, 21818312, 'maybe', '29-08-2017 02:43 AM', 1503974627),
(13, 83665224, 2, 34419430, 46188786, 'roland', '29-08-2017 02:07 PM', 1504015674),
(14, 83665224, 2, 34419430, 3602355, 'jakpan', '30-08-2017 02:04 PM', 1504101869),
(15, 28793146, 2, 76257982, 34709149, 'hope d', '13-10-2017 02:09 PM', 1507903747),
(16, 28793146, 2, 24514062, 26557955, 'nina', '13-10-2017 02:09 PM', 1507903768),
(17, 28793146, 2, 4690297, 22057891, 'raff', '13-10-2017 02:09 PM', 1507903798),
(18, 28793146, 2, 18240828, 11915561, 'owusu', '13-10-2017 02:10 PM', 1507903827),
(19, 28793146, 2, 27675524, 6421320, 'tiru', '13-10-2017 02:10 PM', 1507903835),
(20, 7234089, 1, 90264231, 15339222, 'nina', '28-03-2018 07:26 AM', 1522222011),
(21, 7234089, 2, 45842811, 19071539, 'danso', '28-03-2018 07:33 AM', 1522222396),
(22, 7234089, 1, 1833053, 1798558, 'faith amadi', '22-05-2018 12:55 PM', 1526993751),
(23, 7234089, 2, 45842811, 19302545, 'julius', '22-05-2018 02:07 PM', 1526998038);

-- --------------------------------------------------------

--
-- Table structure for table `es_librarian`
--

CREATE TABLE `es_librarian` (
  `id` int(11) NOT NULL,
  `school_id` int(11) NOT NULL,
  `program_type` int(9) NOT NULL,
  `user_id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `date` varchar(50) NOT NULL,
  `time` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `es_librarian`
--

INSERT INTO `es_librarian` (`id`, `school_id`, `program_type`, `user_id`, `username`, `date`, `time`) VALUES
(1, 83665224, 2, 447788, 'sandra', '02-11-2017 03:29 PM', 1509636549),
(2, 7234089, 2, 29089135, 'funke', '28-03-2018 04:07 PM', 1522253242);

-- --------------------------------------------------------

--
-- Table structure for table `es_messag`
--

CREATE TABLE `es_messag` (
  `id` int(11) NOT NULL,
  `msg_id` int(8) NOT NULL,
  `from_id` int(11) NOT NULL,
  `to_id` int(11) NOT NULL,
  `message` text NOT NULL,
  `status` int(1) NOT NULL,
  `date` varchar(50) NOT NULL,
  `time` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `es_messag`
--

INSERT INTO `es_messag` (`id`, `msg_id`, `from_id`, `to_id`, `message`, `status`, `date`, `time`) VALUES
(1, 0, 12404501, 1399031, 'ok', 1, '22-01-2017 10:08 AM', 1485079722),
(2, 0, 4586861, 7803139, 'Like Justice`s profile? Share it!', 1, '22-01-2017 10:11 AM', 1485079886),
(3, 0, 12404501, 1399031, 'so wats neeww', 1, '22-01-2017 10:13 AM', 1485080026),
(4, 0, 4586861, 7803139, 'bro, i dont have any idea o', 1, '22-01-2017 10:14 AM', 1485080070),
(5, 0, 12404501, 1399031, 'na so o', 1, '22-01-2017 10:16 AM', 1485080207),
(7, 0, 7803139, 4586861, 'ok', 1, '22-01-2017 10:18 AM', 1485080289),
(8, 0, 12404501, 1399031, 'ok, you go come home?', 1, '22-01-2017 10:18 AM', 1485080331),
(9, 0, 7803139, 4586861, 'i never know yet', 1, '22-01-2017 10:20 AM', 1485080455),
(10, 0, 12404501, 1399031, 'hw far', 1, '22-01-2017 10:25 AM', 1485080737),
(11, 0, 4586861, 29584418, 'i de o, how far na?', 1, '22-01-2017 10:27 AM', 1485080841),
(12, 0, 29584418, 4586861, 'omen eh, i gallant o.. yo nko?', 1, '22-01-2017 10:27 AM', 1485080869),
(13, 0, 4586861, 29584418, 'lol.. making sense :D', 1, '22-01-2017 10:28 AM', 1485080892),
(14, 0, 6649424, 24829242, 'hello sir.. how are you?', 1, '23-01-2017 06:22 AM', 1485152538),
(15, 0, 6649424, 7408655, 'hod sir?', 1, '23-01-2017 06:22 AM', 1485152565),
(16, 0, 7408655, 6649424, 'how are you.. my boy', 1, '23-01-2017 06:23 AM', 1485152591),
(17, 0, 6649424, 7408655, 'fine sir? u', 1, '23-01-2017 06:23 AM', 1485152622),
(18, 0, 7408655, 6649424, 'im fantastic too', 1, '23-01-2017 06:23 AM', 1485152636),
(19, 0, 6649424, 7408655, 'ok.. gtg now', 1, '23-01-2017 06:24 AM', 1485152678),
(20, 0, 7408655, 6649424, 'bye :)', 1, '23-01-2017 06:24 AM', 1485152689),
(21, 0, 6649424, 7408655, 'smiles', 1, '23-01-2017 06:25 AM', 1485152700),
(22, 0, 7408655, 6649424, 'lol', 1, '23-01-2017 06:25 AM', 1485152725),
(23, 0, 7408655, 6649424, 'lol', 1, '23-01-2017 06:25 AM', 1485152725),
(24, 0, 7408655, 6649424, '', 1, '23-01-2017 06:25 AM', 1485152741),
(25, 0, 41705994, 1706426, 'bros, you never pay school fees', 1, '24-01-2017 11:54 AM', 1485258863),
(26, 0, 1706426, 41705994, 'oga y', 1, '24-01-2017 11:55 AM', 1485258924),
(27, 0, 41705994, 1706426, 'pay yoour fees..', 1, '24-01-2017 11:55 AM', 1485258951),
(28, 0, 1706426, 41705994, 'to who?', 1, '24-01-2017 11:55 AM', 1485258959),
(29, 0, 41705994, 1706426, 'your papa', 1, '24-01-2017 11:56 AM', 1485258968),
(30, 0, 24829242, 6649424, 'im fine you?', 1, '28-01-2017 05:27 AM', 1485581236),
(31, 0, 55551201, 7690968, 'pl register all student', 1, '31-01-2017 10:17 PM', 1485901079),
(32, 0, 55551201, 7690968, 'good mirning all', 1, '02-03-2017 09:23 AM', 1488446588),
(33, 0, 7690968, 55551201, 'message acknowledg', 1, '02-03-2017 09:29 AM', 1488446968),
(34, 0, 7690968, 55551201, 'i will register my student', 1, '02-03-2017 09:30 AM', 1488447030),
(35, 0, 7690968, 55551201, 'ok', 1, '02-03-2017 09:32 AM', 1488447144),
(36, 0, 7690968, 55551201, 'yeas', 1, '02-03-2017 09:34 AM', 1488447262),
(37, 0, 55551201, 7690968, 'be fast ', 1, '02-03-2017 09:37 AM', 1488447453),
(38, 0, 7690968, 55551201, 'ok sir', 1, '02-03-2017 09:38 AM', 1488447489),
(39, 0, 7690968, 55551201, 'ok sir', 1, '02-03-2017 09:38 AM', 1488447494),
(40, 0, 55551201, 7690968, 'hello', 1, '10-03-2017 08:34 AM', 1489134860),
(41, 0, 74326192, 10944935, 'ibuuuuuut', 0, '18-08-2017 10:29 AM', 1503052152),
(42, 0, 201120, 48295897, 'please ep me', 0, '21-08-2017 07:00 PM', 1503342016),
(43, 0, 15977588, 2416135, 'welcome pls complete ur registration', 1, '27-08-2017 07:10 PM', 1503861012),
(44, 0, 34019156, 14479993, 'good morning sir pls come to the admin office', 1, '30-08-2017 02:25 PM', 1504103158),
(45, 0, 14479993, 34019156, 'ok i am on my way', 1, '30-08-2017 02:26 PM', 1504103198),
(46, 0, 34019156, 14479993, 'thank u', 1, '30-08-2017 02:27 PM', 1504103245),
(47, 38414105, 64061583, 34019156, 'sir pls credit my account teller id 2286355', 1, '07-10-2017 12:09 PM', 1507378171),
(48, 12658443, 64061583, 34019156, 'uhfsdhhdhsg 887262', 1, '07-10-2017 12:18 PM', 1507378692),
(49, 7488634, 64061583, 14479993, 'gsdrhfhdfh57647568', 0, '07-10-2017 12:31 PM', 1507379490),
(50, 73390659, 64061583, 34019156, 'retrwet45657675', 1, '07-10-2017 12:35 PM', 1507379705),
(51, 26829022, 34019156, 64061583, 'ok', 1, '12-10-2017 03:08 AM', 1507777727),
(52, 0, 34019156, 14479993, 'sir good morning pla i paid my fees yesterday and my account has not been credited pls go check my account index number anu126673864.', 1, '12-10-2017 05:08 AM', 1507784910),
(53, 14986975, 34019156, 14479993, 'hallo', 1, '12-10-2017 05:38 AM', 1507786688),
(54, 62779649, 34019156, 14479993, 'At Reckitt Benckiser, the &quot;RB Maverick&quot; is a game changer who leaves behind the conventional and dares to think outside the box.\n\nAre you a graduate? Secure your spot at our International Grand Finale in Dubai.\n\nYou have from now till October 16th, 2017 to chase your dreams. ', 1, '12-10-2017 06:14 AM', 1507788883),
(55, 5790265, 64061583, 34019156, 'sir 243245343 jbnjbhjbjb', 1, '12-10-2017 03:08 PM', 1507820908),
(56, 3976329, 64061583, 34019156, 'yest', 1, '12-10-2017 03:22 PM', 1507821778),
(57, 3192178, 64061583, 34019156, 'you', 1, '12-10-2017 03:26 PM', 1507821979),
(58, 41442138, 64061583, 34019156, 'pull down', 1, '12-10-2017 03:31 PM', 1507822309),
(59, 6897704, 64061583, 34019156, 'rost', 1, '12-10-2017 03:32 PM', 1507822354),
(60, 78299890, 64061583, 34019156, 'sir i need ur help', 1, '12-10-2017 03:53 PM', 1507823605),
(61, 21942878, 3601563, 62879796, 'my fees', 1, '13-10-2017 02:36 PM', 1507905369),
(62, 10703719, 62879796, 3601563, 'okay seen', 0, '13-10-2017 02:39 PM', 1507905574),
(63, 3295871, 46188786, 14479993, 'hello sir', 1, '25-10-2017 03:27 PM', 1508945229),
(64, 18814679, 46188786, 14479993, 'hallo sir', 1, '25-10-2017 03:27 PM', 1508945261),
(65, 7563319, 46188786, 34019156, 'help', 0, '25-10-2017 03:31 PM', 1508945506),
(66, 33529291, 46188786, 14479993, 'sir are u online pls respond', 1, '25-10-2017 03:33 PM', 1508945595),
(67, 52730286, 46188786, 14479993, 'pls chech the attached file', 1, '25-10-2017 03:34 PM', 1508945641),
(68, 24254012, 14479993, 46188786, 'i have seen ur message i will get back to u latter', 1, '25-10-2017 03:36 PM', 1508945781),
(69, 55581841, 46188786, 64061583, 'bae come home ', 0, '25-10-2017 06:03 PM', 1508954597),
(70, 8403453, 19056270, 0, '', 0, '30-10-2017 09:22 PM', 1509398540),
(71, 42888386, 19056270, 64061583, 'hi bae', 1, '30-10-2017 09:22 PM', 1509398563),
(72, 28556676, 64061583, 19056270, 'xup girl', 1, '30-10-2017 09:24 PM', 1509398693),
(73, 50639469, 19056270, 64061583, 'am good and u ?', 1, '30-10-2017 09:26 PM', 1509398772),
(74, 52096812, 19056270, 64061583, 'cold', 1, '30-10-2017 09:31 PM', 1509399084),
(75, 1063612, 64061583, 19056270, 'wam cold too', 1, '30-10-2017 09:34 PM', 1509399247),
(76, 44965365, 19056270, 64061583, 'oo sorry dear ', 1, '30-10-2017 09:34 PM', 1509399298),
(77, 10220193, 64061583, 19056270, 'tnx', 1, '30-10-2017 09:35 PM', 1509399345),
(78, 48468154, 19056270, 64061583, 'u home', 1, '30-10-2017 09:36 PM', 1509399401),
(79, 8519738, 64061583, 19056270, 'soon', 1, '30-10-2017 09:36 PM', 1509399414),
(80, 6046804, 64061583, 19056270, 'hope u dont mind', 1, '30-10-2017 09:45 PM', 1509399945),
(81, 38758602, 64061583, 19056270, 'as', 1, '30-10-2017 09:46 PM', 1509399986),
(82, 31599843, 64061583, 19056270, 'sit', 1, '30-10-2017 09:53 PM', 1509400424),
(83, 44865701, 19056270, 64061583, 'race me girl', 1, '30-10-2017 09:55 PM', 1509400559),
(84, 18132473, 64061583, 19056270, 'how?', 1, '30-10-2017 09:57 PM', 1509400630),
(85, 14707219, 64061583, 19056270, 'how?', 1, '30-10-2017 09:57 PM', 1509400637),
(86, 253122, 19056270, 64061583, 'u kn', 1, '30-10-2017 09:59 PM', 1509400772),
(87, 55278197, 64061583, 19056270, 'no i dont ', 1, '30-10-2017 10:00 PM', 1509400829),
(88, 5600511, 19056270, 64061583, 'baby give me reason pls', 1, '30-10-2017 10:02 PM', 1509400953),
(89, 26914251, 64061583, 19056270, 'to do what ?', 1, '30-10-2017 10:03 PM', 1509400988),
(90, 2620154, 64061583, 19056270, 'to y u want to be alone ', 1, '30-10-2017 10:04 PM', 1509401094),
(91, 42059639, 64061583, 19056270, 'to y u want to be alone ', 1, '30-10-2017 10:05 PM', 1509401138),
(92, 7514107, 19056270, 64061583, 'no readon', 1, '30-10-2017 10:06 PM', 1509401215),
(93, 15600424, 64061583, 19056270, 'to y u want to be alone ', 1, '30-10-2017 10:08 PM', 1509401280),
(94, 16616618, 64061583, 19056270, 'to y u want to be alone ', 1, '30-10-2017 10:08 PM', 1509401282),
(95, 26316844, 64061583, 19056270, 'to y u want to be alone ', 1, '30-10-2017 10:08 PM', 1509401296),
(96, 7710214, 19056270, 64061583, 'tress', 1, '30-10-2017 10:10 PM', 1509401402),
(97, 63908827, 64061583, 19056270, 'by', 1, '30-10-2017 10:13 PM', 1509401596),
(98, 13731696, 64061583, 19056270, 'by', 1, '30-10-2017 10:13 PM', 1509401601),
(99, 14507885, 64061583, 19056270, 'by', 1, '30-10-2017 10:13 PM', 1509401607),
(100, 39049619, 64061583, 19056270, 'by', 1, '30-10-2017 10:13 PM', 1509401607),
(101, 11504584, 19056270, 64061583, 'rose', 1, '30-10-2017 10:16 PM', 1509401782),
(102, 46817830, 19056270, 64061583, 'roise', 1, '30-10-2017 10:19 PM', 1509401996),
(103, 27172421, 64061583, 19056270, 'fbgdf', 1, '30-10-2017 10:32 PM', 1509402735),
(104, 33515683, 64061583, 19056270, 'ytu', 1, '30-10-2017 10:34 PM', 1509402864),
(105, 47363474, 64061583, 19056270, 'back me', 1, '30-10-2017 10:34 PM', 1509402879),
(106, 84980973, 64061583, 19056270, 'dock', 1, '30-10-2017 10:35 PM', 1509402958),
(107, 19039367, 64061583, 19056270, 'gave up', 1, '30-10-2017 10:36 PM', 1509402994),
(108, 15482912, 64061583, 19056270, 'blessing', 1, '30-10-2017 10:41 PM', 1509403266),
(109, 43260161, 64061583, 19056270, 'too late ', 1, '30-10-2017 10:41 PM', 1509403281),
(110, 73279953, 64061583, 19056270, 'fly', 1, '30-10-2017 10:44 PM', 1509403459),
(111, 4891316, 64061583, 19056270, 'floow', 1, '30-10-2017 10:47 PM', 1509403657),
(112, 15467378, 64061583, 19056270, 'floow', 1, '30-10-2017 10:49 PM', 1509403741),
(113, 15455533, 64061583, 19056270, 'floow', 1, '30-10-2017 10:49 PM', 1509403742),
(114, 42915974, 64061583, 19056270, 'floow', 1, '30-10-2017 10:49 PM', 1509403742),
(115, 18165105, 64061583, 19056270, 'floow', 1, '30-10-2017 10:49 PM', 1509403761),
(116, 53530914, 64061583, 19056270, 'floow', 1, '30-10-2017 10:49 PM', 1509403761),
(117, 12541592, 64061583, 19056270, 'floow', 1, '30-10-2017 10:49 PM', 1509403782),
(118, 44071557, 19056270, 64061583, 'am lost here', 1, '30-10-2017 10:53 PM', 1509403982),
(119, 3826951, 64061583, 19056270, 'check', 1, '30-10-2017 11:13 PM', 1509405231),
(120, 863477, 64061583, 19056270, 'check', 1, '30-10-2017 11:19 PM', 1509405588),
(121, 6798725, 64061583, 19056270, 'check', 1, '30-10-2017 11:19 PM', 1509405593),
(122, 24258238, 64061583, 19056270, 'check', 1, '30-10-2017 11:19 PM', 1509405594),
(123, 36148247, 64061583, 19056270, 'check', 1, '30-10-2017 11:20 PM', 1509405600),
(124, 74950747, 64061583, 19056270, 'check', 1, '30-10-2017 11:20 PM', 1509405600),
(125, 41454811, 64061583, 19056270, 'check', 1, '30-10-2017 11:20 PM', 1509405607),
(126, 33314766, 64061583, 19056270, 'check', 1, '30-10-2017 11:20 PM', 1509405607),
(127, 12007358, 19056270, 64061583, 'ice', 1, '31-10-2017 05:28 AM', 1509427685),
(128, 15770039, 2416135, 15977588, 'regular', 1, '31-10-2017 06:06 AM', 1509429973),
(129, 28170648, 2416135, 15977588, 'yesterday', 1, '31-10-2017 06:06 AM', 1509429993),
(130, 5594200, 2416135, 15977588, 'girl y', 1, '31-10-2017 06:08 AM', 1509430097),
(131, 25126678, 19056270, 64061583, 'am hungry ooo', 1, '31-10-2017 06:10 AM', 1509430241),
(132, 29758405, 19056270, 64061583, 'give', 1, '31-10-2017 06:22 AM', 1509430958),
(133, 6643279, 19056270, 64061583, 'waiting ', 1, '31-10-2017 06:25 AM', 1509431113),
(134, 11998410, 19056270, 64061583, 'get high', 1, '31-10-2017 06:28 AM', 1509431287),
(135, 45388845, 19056270, 3602355, 'peter', 1, '31-10-2017 09:45 PM', 1509486300),
(136, 56416834, 19056270, 3602355, 'daddy', 1, '31-10-2017 09:45 PM', 1509486342),
(137, 8009262, 19056270, 3602355, 'call', 1, '31-10-2017 09:47 PM', 1509486441),
(138, 16125754, 19056270, 3602355, 'love', 1, '31-10-2017 09:48 PM', 1509486487),
(139, 55903785, 19056270, 3602355, 'y', 1, '31-10-2017 10:07 PM', 1509487621),
(140, 53679843, 19056270, 3602355, 'call on me', 1, '01-11-2017 02:39 AM', 1509503967),
(141, 2233509, 3602355, 19056270, 'y should i call u?', 1, '01-11-2017 02:45 AM', 1509504331),
(142, 63792757, 19056270, 3602355, 'because i need ur help sir ', 1, '01-11-2017 02:46 AM', 1509504363),
(143, 54794499, 3602355, 19056270, 'am listening', 1, '01-11-2017 03:09 AM', 1509505752),
(144, 220919, 19056270, 3602355, '&lt;h2 style=&quot;font-weight: bold; font-size: 16px; color: rgb(0, 0, 0); margin-top: 10px; font-family: Helvetica, Arial;&quot;&gt;Conclusion&lt;/h2&gt;&lt;p style=&quot;padding: 5px 0px 0px; margin-top: 0px; margin-bottom: 0px; color: rgb(0, 0, 0); font-family: Helvetica, Arial; font-size: 12px;&quot;&gt;Now, you might think I am being magnanimous, but as you can see there really is nothing difficult about this code at all. Two years ago I tried to pull off this feat on a shared hosting server without using Flash, and let me tell you that it was not easy nor was it one page of code. Before HTML5, it was a nightmare.&lt;/p&gt;&lt;p style=&quot;padding: 5px 0px 0px; margin-top: 0px; margin-bottom: 0px; color: rgb(0, 0, 0); font-family: Helvetica, Arial; font-size: 12px;&quot;&gt;Go ahead and write this code, and try it out, and you&#039;ll see how simple it is. The HTML elements are simply doing what they need to do here, which is get the job done while we make jokes and look on from a distance.&lt;/p&gt;&lt;p style=&quot;padding: 5px 0px 0px; margin-top: 0px; margin-bottom: 0px; color: rgb(0, 0, 0); font-family: Helvetica, Arial; font-size: 12px;&quot;&gt;So, there we have it - upload file, get a readout of how far along we are, and of course you could use CSS to make this into a bar, or anything you want to, really, and the file is uploaded via ajax and we can even see the filename, file size and file type before we upload.&lt;/p&gt;&lt;p style=&quot;padding: 5px 0px 0px; margin-top: 0px; margin-bottom: 0px; color: rgb(0, 0, 0); font-family: Helvetica, Arial; font-size: 12px;&quot;&gt;Try it, you&#039;ll love it.&lt;/p&gt;  \r\n                    ', 1, '01-11-2017 03:22 AM', 1509506549),
(145, 40978421, 3602355, 19056270, 'i dont understand', 1, '01-11-2017 03:24 AM', 1509506674),
(146, 263806, 19056270, 3602355, 'guy', 1, '01-11-2017 04:12 AM', 1509509552),
(147, 5685641, 3602355, 19056270, 'yes how can i help ui', 1, '01-11-2017 04:22 AM', 1509510143),
(148, 3641633, 19056270, 3602355, 'we need to see', 1, '01-11-2017 04:24 AM', 1509510286),
(149, 21695428, 3602355, 19056270, 'wen ?', 1, '01-11-2017 04:25 AM', 1509510303),
(150, 8370824, 447788, 19056270, 'where is this book ?', 1, '02-11-2017 04:22 PM', 1509639753),
(151, 71417105, 19056270, 447788, 'i dont kn pls check again', 1, '02-11-2017 04:23 PM', 1509639838);

-- --------------------------------------------------------

--
-- Table structure for table `es_message`
--

CREATE TABLE `es_message` (
  `message_id` int(11) NOT NULL,
  `date` datetime NOT NULL,
  `user_from` int(11) NOT NULL,
  `user_to` int(11) NOT NULL,
  `subject` varchar(100) NOT NULL,
  `content` text NOT NULL,
  `location` varchar(100) NOT NULL,
  `status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `es_message`
--

INSERT INTO `es_message` (`message_id`, `date`, `user_from`, `user_to`, `subject`, `content`, `location`, `status`) VALUES
(15, '2016-03-23 08:12:10', 7, 2, 'asdf', 'sdfsdf', 'inbox', 'unread'),
(17, '2016-03-23 08:13:40', 1, 2, 'Subject 102', 'Your welcome jimzky :)', 'inbox', 'unread'),
(18, '2016-03-23 08:13:59', 1399031, 12404501, 'Sample', 'Hello user01. Howz your day today?', 'inbox', 'read'),
(19, '2016-03-23 11:16:06', 1, 10, 'Welcome user05', 'Dear User05,\r\n\r\nThis is a sample message!\r\n\r\nTHank you,\r\nADMIN', 'inbox', 'unread'),
(80, '2018-04-02 09:24:20', 1643571, 1399031, '', 'chweck', 'inbox', 'read'),
(81, '2018-04-02 09:24:50', 1399031, 1643571, '', 'what u saying ?', 'inbox', 'read'),
(82, '2018-04-02 09:34:30', 1643571, 1399031, '', 'call me pls', 'inbox', 'read'),
(83, '2018-04-02 09:35:30', 1399031, 1643571, '', 'and why ?', 'inbox', 'read'),
(84, '2018-04-02 09:53:21', 12404501, 1399031, '', 'cos i hv sometin to tell u', 'inbox', 'read'),
(85, '2018-04-02 09:54:15', 1399031, 12404501, '', 'tell me here ', 'inbox', 'read'),
(86, '2018-04-02 09:54:55', 12404501, 1399031, '', 'sir i cant ', 'inbox', 'read'),
(87, '2018-04-02 09:56:36', 1399031, 12404501, '', 'why ?', 'inbox', 'read'),
(88, '2018-04-02 09:59:39', 12404501, 1399031, '', 'becase......', 'inbox', 'read'),
(89, '2018-04-02 10:03:45', 1399031, 12404501, '', 'what', 'inbox', 'read'),
(90, '2018-04-02 10:04:50', 12404501, 1399031, '', 'i cant say', 'inbox', 'read'),
(91, '2018-04-02 10:07:35', 1399031, 12404501, '', 'y na ', 'inbox', 'read'),
(92, '2018-04-02 10:15:22', 12404501, 1399031, '', 'becases......', 'inbox', 'read'),
(93, '2018-04-02 10:16:28', 1399031, 12404501, '', 'son ...', 'inbox', 'read'),
(94, '2018-04-02 10:18:11', 12404501, 1399031, '', 'dad', 'inbox', 'read'),
(95, '2018-04-02 10:30:53', 1399031, 12404501, '', 'mumm lol', 'inbox', 'read'),
(96, '2018-04-02 15:27:33', 1399031, 12404501, '', 'run ', 'inbox', 'read'),
(97, '2018-04-02 15:27:33', 1399031, 12404501, '', 'run ', 'inbox', 'read'),
(98, '2018-04-02 15:27:53', 12404501, 1399031, '', 'to where', 'inbox', 'read'),
(99, '2018-04-02 15:31:19', 1399031, 12404501, '', 'rabborl', 'inbox', 'read'),
(100, '2018-04-02 15:30:38', 1399031, 12404501, '', 'guy wat wrong', 'inbox', 'read'),
(101, '2018-04-02 15:31:19', 1399031, 12404501, '', 'rabborl', 'inbox', 'read'),
(102, '2018-04-02 15:33:01', 1399031, 12404501, '', 'wat son ', 'inbox', 'read'),
(103, '2018-04-02 15:33:01', 1399031, 12404501, '', 'wat son ', 'inbox', 'read'),
(104, '2018-04-02 15:35:18', 12404501, 1399031, '', 'ice cream', 'inbox', 'read'),
(105, '2018-04-02 15:43:31', 1399031, 12404501, '', 'am coming ', 'inbox', 'read'),
(106, '2018-04-02 15:46:07', 12404501, 1399031, '', 'how soon ?', 'inbox', 'read'),
(107, '2018-04-02 15:47:53', 1399031, 12404501, '', 'are u sure ?', 'inbox', 'read'),
(108, '2018-04-02 15:48:39', 12404501, 1399031, '', 'guy am tired', 'inbox', 'read'),
(109, '2018-04-02 15:48:46', 1399031, 12404501, '', 'why ?', 'inbox', 'read'),
(110, '2018-04-02 15:49:00', 1399031, 12404501, '', 'because of rice', 'inbox', 'read'),
(111, '2018-04-02 15:49:09', 12404501, 1399031, '', 'what that ', 'inbox', 'read'),
(112, '2018-04-02 16:54:43', 1399031, 12404501, '', 'playlist', 'inbox', 'read'),
(113, '2018-04-02 16:55:07', 12404501, 1399031, '', 'mi', 'inbox', 'read'),
(114, '2018-04-02 16:56:37', 1399031, 12404501, '', 'morning', 'inbox', 'read'),
(115, '2018-04-02 17:04:04', 12404501, 1399031, '', 'hello', 'inbox', 'read'),
(116, '2018-04-02 17:04:59', 1399031, 12404501, '', 'ice', 'inbox', 'read'),
(117, '2018-04-02 17:06:47', 12404501, 1399031, '', 'sucide', 'inbox', 'read'),
(118, '2018-04-02 17:13:44', 1399031, 12404501, '', '', 'inbox', 'read'),
(119, '2018-04-02 17:14:26', 12404501, 1399031, '', 'hello', 'inbox', 'read'),
(120, '2018-04-02 17:15:15', 1399031, 12404501, '', 'invit', 'inbox', 'read'),
(121, '2018-04-02 17:18:00', 12404501, 1399031, '', 'u', 'inbox', 'read'),
(122, '2018-04-02 17:19:07', 1399031, 12404501, '', 'wat ?', 'inbox', 'read'),
(123, '2018-04-02 17:23:06', 12404501, 1399031, '', 'do away with u', 'inbox', 'read'),
(124, '2018-04-02 17:23:55', 1399031, 12404501, '', 'don call my phone', 'inbox', 'read'),
(125, '2018-04-02 17:24:38', 12404501, 1399031, '', 'fell', 'inbox', 'read'),
(126, '2018-04-02 17:26:19', 12404501, 1399031, '', 'they ur lane', 'inbox', 'read'),
(127, '2018-04-02 17:30:50', 1399031, 12404501, '', 'try me ', 'inbox', 'read'),
(128, '2018-04-02 17:31:15', 12404501, 1399031, '', 'why', 'inbox', 'read'),
(129, '2018-04-02 17:31:44', 12404501, 1399031, '', 'guy', 'inbox', 'read'),
(130, '2018-04-02 21:48:21', 1399031, 12404501, '', 'd', 'inbox', 'read'),
(131, '2018-04-02 21:51:09', 12404501, 1399031, '', 'not cool', 'inbox', 'read'),
(132, '2018-04-02 21:56:09', 1399031, 12404501, '', 'y woul u say that ?', 'inbox', 'read'),
(133, '2018-04-02 21:56:29', 12404501, 1399031, '', 'becase......', 'inbox', 'read'),
(134, '2018-04-02 21:56:48', 1399031, 12404501, '', 'what ?', 'inbox', 'read'),
(135, '2018-04-02 21:58:49', 12404501, 1399031, '', 'ur killing me here ', 'inbox', 'read'),
(136, '2018-04-02 21:59:36', 1399031, 12404501, '', 'how ?', 'inbox', 'read'),
(137, '2018-04-02 21:59:54', 12404501, 1399031, '', 'i dont kn yet', 'inbox', 'read'),
(138, '2018-04-02 22:03:50', 1399031, 12404501, '', 'guy', 'inbox', 'read'),
(139, '2018-04-02 22:04:42', 1399031, 12404501, '', 'dude', 'inbox', 'read'),
(140, '2018-04-02 22:04:49', 12404501, 1399031, '', 'how is u', 'inbox', 'read'),
(141, '2018-04-02 22:04:58', 12404501, 1399031, '', 'good and u?', 'inbox', 'read'),
(142, '2018-04-03 07:29:21', 1643571, 1399031, '', 'no one', 'inbox', 'read'),
(143, '2018-04-03 07:30:18', 12404501, 1399031, '', 'hi', 'inbox', 'read'),
(144, '2018-04-03 07:30:41', 1399031, 12404501, '', 'u', 'inbox', 'read'),
(145, '2018-04-03 07:32:23', 12404501, 1399031, '', 'hello', 'inbox', 'read'),
(146, '2018-04-03 07:34:06', 1399031, 12404501, '', 'u', 'inbox', 'read'),
(147, '2018-04-03 07:36:14', 12404501, 1399031, '', 'ddsd', 'inbox', 'read'),
(148, '2018-04-03 07:37:11', 1399031, 12404501, '', 'iok', 'inbox', 'read'),
(149, '2018-04-03 07:37:23', 12404501, 1399031, '', 'uoooo', 'inbox', 'read'),
(150, '2018-04-03 07:37:31', 1399031, 12404501, '', 'bbbyy', 'inbox', 'read'),
(151, '2018-04-03 07:46:41', 12404501, 1399031, '', 'call my baby', 'inbox', 'read'),
(152, '2018-04-03 07:47:33', 1399031, 12404501, '', 'y ?', 'inbox', 'read'),
(153, '2018-04-03 07:47:52', 12404501, 1399031, '', 'waytin happen ?', 'inbox', 'read'),
(154, '2018-04-03 19:45:58', 1399031, 12404501, '', 'y woul u say that ?', 'inbox', 'read'),
(155, '2018-04-03 19:46:16', 12404501, 1399031, '', 'riot', 'inbox', 'read'),
(156, '2018-04-03 19:46:55', 1399031, 12404501, '', '', 'inbox', 'read'),
(157, '2018-04-03 19:47:06', 12404501, 1399031, '', '', 'inbox', 'read'),
(158, '2018-04-04 02:06:38', 1399031, 12404501, '', 'wat ?', 'inbox', 'read'),
(159, '2018-04-04 02:11:52', 12404501, 1399031, '', 'u asking me ?', 'inbox', 'read'),
(160, '2018-04-04 02:15:20', 1399031, 12404501, '', 'yes sir', 'inbox', 'read'),
(161, '2018-04-04 02:17:19', 1643571, 1399031, '', 'wat y?', 'inbox', 'read'),
(162, '2018-04-04 02:18:29', 1399031, 1643571, '', 'uuuuu', 'inbox', 'read'),
(163, '2018-04-04 02:18:29', 1399031, 1643571, 'uierwhj', 'uuuuu fdwbiir', 'inbox', 'read'),
(164, '2018-04-04 02:18:29', 1399031, 1643571, 'stay', 'on ur radio', 'inbox', 'read'),
(165, '2018-04-06 15:46:21', 1643571, 1399031, '', 'light', 'inbox', 'read'),
(166, '2018-04-06 15:48:06', 1399031, 1643571, '', 'nivk', 'inbox', 'read'),
(167, '2018-04-06 15:49:52', 1643571, 1399031, '', 'ok boss', 'inbox', 'read'),
(168, '2018-04-07 05:13:15', 1399031, 1643571, '', 'hello', 'inbox', 'read'),
(169, '2018-04-07 09:26:36', 12404501, 1399031, '', 'count', 'inbox', 'read'),
(170, '2018-04-07 09:27:50', 1399031, 12404501, '', 'hello mate', 'inbox', 'read'),
(171, '2018-04-07 09:29:53', 12404501, 1399031, '', 'what ?', 'inbox', 'read'),
(172, '2018-04-07 09:31:50', 1399031, 12404501, '', 'test father', 'inbox', 'read'),
(173, '2018-04-07 09:39:26', 12404501, 1399031, '', 'knock', 'inbox', 'read'),
(174, '2018-04-07 09:43:22', 1399031, 12404501, '', 'lord ', 'inbox', 'read'),
(175, '2018-04-07 10:08:47', 12404501, 1399031, '', 'vu', 'inbox', 'read'),
(176, '2018-04-07 10:10:30', 1399031, 12404501, '', 'ml', 'inbox', 'read'),
(177, '2018-04-07 10:11:11', 12404501, 1399031, '', 'jj', 'inbox', 'read'),
(178, '2018-04-07 10:11:58', 1399031, 12404501, '', 'mmm', 'inbox', 'read'),
(179, '2018-04-07 10:14:30', 12404501, 1399031, '', 'vvvv', 'inbox', 'read'),
(180, '2018-04-07 10:15:22', 1399031, 12404501, '', 'zzzzz', 'inbox', 'read'),
(181, '2018-04-07 10:47:56', 12404501, 1399031, '', 'avai', 'inbox', 'read'),
(182, '2018-04-07 11:21:42', 1399031, 12404501, '', 'king', 'inbox', 'read'),
(183, '2018-04-07 11:24:33', 12404501, 1399031, '', 'ieyusdui', 'inbox', 'read'),
(184, '2018-04-07 11:26:52', 12404501, 1399031, '', 'again', 'inbox', 'read'),
(185, '2018-04-07 11:31:05', 1399031, 12404501, '', 'hello', 'inbox', 'read'),
(186, '2018-04-07 11:31:25', 12404501, 1399031, '', 'it is me from the other side ', 'inbox', 'read'),
(187, '2018-04-07 11:32:29', 1399031, 12404501, '', 'yu', 'inbox', 'read'),
(188, '2018-04-07 11:32:46', 12404501, 1399031, '', 'create me', 'inbox', 'read'),
(189, '2018-04-07 11:34:55', 1399031, 12404501, '', 'ok', 'inbox', 'read'),
(190, '2018-04-07 11:36:00', 12404501, 1399031, '', 'wat ok', 'inbox', 'read'),
(191, '2018-04-07 11:38:27', 1399031, 12404501, '', 'how is u', 'inbox', 'read'),
(192, '2018-04-07 11:38:57', 12404501, 1399031, '', 'ok i guess and u ?', 'inbox', 'read'),
(193, '2018-04-07 11:39:34', 1399031, 12404501, '', 'i think am ok', 'inbox', 'read'),
(194, '2018-04-07 11:40:09', 12404501, 1399031, '', 'ur not sure y ?', 'inbox', 'read'),
(195, '2018-04-07 11:40:25', 1399031, 12404501, '', 'cos am not', 'inbox', 'read'),
(196, '2018-04-07 11:40:49', 12404501, 1399031, '', 'hmmmm', 'inbox', 'read'),
(197, '2018-04-07 11:41:04', 1399031, 12404501, '', 'what that', 'inbox', 'read'),
(198, '2018-04-07 11:42:07', 12404501, 1399031, '', 'that wat', 'inbox', 'read'),
(199, '2018-04-07 11:42:15', 12404501, 1399031, '', '', 'inbox', 'read'),
(200, '2018-04-07 11:42:30', 1399031, 12404501, '', 'wat u make if thay', 'inbox', 'read'),
(201, '2018-04-07 11:43:41', 12404501, 1399031, '', 'nothing', 'inbox', 'read'),
(202, '2018-04-07 11:44:06', 1399031, 12404501, '', 'ur mad ', 'inbox', 'read'),
(203, '2018-04-07 11:46:27', 12404501, 1399031, '', 'energy', 'inbox', 'read'),
(204, '2018-04-07 11:46:51', 1399031, 12404501, '', 'and ', 'inbox', 'read'),
(205, '2018-04-07 11:47:23', 12404501, 1399031, '', 'bite me', 'inbox', 'read'),
(206, '2018-04-07 11:47:31', 12404501, 1399031, '', 'y ?', 'inbox', 'read'),
(207, '2018-04-07 11:47:41', 1399031, 12404501, '', 'no reason', 'inbox', 'read'),
(208, '2018-04-07 12:01:30', 12404501, 1399031, '', 'u', 'inbox', 'read'),
(209, '2018-04-07 12:02:00', 1399031, 12404501, '', 'uu', 'inbox', 'read'),
(210, '2018-04-07 12:02:36', 12404501, 1399031, '', 'yui', 'inbox', 'read'),
(211, '2018-04-07 13:54:03', 1399031, 12404501, '', 'hello james', 'inbox', 'read'),
(212, '2018-04-07 13:54:22', 12404501, 1399031, '', 'sorry i mean kenny', 'inbox', 'read'),
(213, '2018-04-07 13:55:11', 1399031, 12404501, '', 'what ?', 'inbox', 'read'),
(214, '2018-04-07 13:55:23', 12404501, 1399031, '', 'ask me again', 'inbox', 'read'),
(215, '2018-04-07 13:55:48', 1399031, 12404501, '', 'errro', 'inbox', 'read'),
(216, '2018-04-07 13:56:12', 12404501, 1399031, '', 'belss', 'inbox', 'read'),
(217, '2018-04-07 20:14:09', 1643571, 1399031, '', 'back', 'inbox', 'read'),
(218, '2018-04-07 20:16:29', 1399031, 12404501, '', 'hello', 'inbox', 'read'),
(219, '2018-04-07 20:17:15', 12404501, 1399031, '', 'xup', 'inbox', 'read'),
(220, '2018-04-07 20:17:34', 1399031, 12404501, '', 'how u doing ', 'inbox', 'read'),
(221, '2018-04-07 20:22:35', 12404501, 1399031, '', 'james', 'inbox', 'read'),
(222, '2018-04-07 20:22:50', 1399031, 12404501, '', 'james', 'inbox', 'read'),
(223, '2018-04-07 20:28:54', 12404501, 1399031, '', 'joy', 'inbox', 'read'),
(224, '2018-04-07 20:29:14', 1399031, 12404501, '', 'love', 'inbox', 'read'),
(225, '2018-04-07 20:32:10', 12404501, 1399031, '', 'move keny', 'inbox', 'read'),
(226, '2018-04-07 20:32:29', 1399031, 12404501, '', 'body', 'inbox', 'read'),
(227, '2018-04-07 20:35:51', 12404501, 1399031, '', 'go crazy', 'inbox', 'read'),
(228, '2018-04-07 20:37:39', 1399031, 12404501, '', 'say', 'inbox', 'read'),
(229, '2018-04-07 20:38:36', 12404501, 1399031, '', 'ok go', 'inbox', 'read'),
(230, '2018-04-07 20:42:47', 1399031, 12404501, '', 'where ?', 'inbox', 'read'),
(231, '2018-04-07 20:43:54', 12404501, 1399031, '', 'jos', 'inbox', 'read'),
(232, '2018-04-07 20:44:39', 12404501, 1399031, '', 'check', 'inbox', 'read'),
(233, '2018-04-07 20:52:21', 1399031, 12404501, '', 'see', 'inbox', 'read'),
(234, '2018-04-07 20:56:30', 12404501, 1399031, '', 'rock', 'inbox', 'read'),
(235, '2018-04-07 20:57:56', 1399031, 12404501, '', 'monica', 'inbox', 'read'),
(236, '2018-04-07 20:58:24', 12404501, 1399031, '', 'wat', 'inbox', 'read'),
(237, '2018-04-09 04:56:03', 12404501, 1399031, '', 'bububu', 'inbox', 'read'),
(238, '2018-04-09 04:56:44', 1399031, 12404501, '', 'cast', 'inbox', 'read'),
(239, '2018-04-09 04:57:16', 1399031, 12404501, '', 'hell sir', 'inbox', 'read'),
(240, '2018-04-09 04:58:29', 12404501, 1399031, '', 'hi xup', 'inbox', 'read'),
(241, '2018-04-09 05:03:18', 1399031, 12404501, '', 'ello', 'inbox', 'read'),
(242, '2018-04-09 05:03:38', 12404501, 1399031, '', 'xuo', 'inbox', 'read'),
(243, '2018-04-09 05:25:42', 1399031, 12404501, '', 'sir', 'inbox', 'read'),
(244, '2018-04-09 05:28:24', 1643571, 1399031, '', 'catach\'', 'inbox', 'unread'),
(245, '2018-04-09 05:29:14', 12404501, 1399031, '', 'sout', 'inbox', 'read'),
(246, '2018-04-09 06:29:06', 1399031, 12404501, '', 'fire', 'inbox', 'unread'),
(247, '2018-06-20 20:45:19', 33502989, 12436212, 'Alert Notification', '<p>Hello Sir/Madam,</p><ul class=\"crypto-install animated fadeIn\" xss=removed><li xss=removed><span xss=removed>public_key</span><br>Crypotcoin Payment Box Public Key from your new <a href=\"https://gourl.io/editrecord/coin_boxes/0\" data-original-title=\"\" title=\"\" xss=removed>payment box</a>. <a href=\"https://gourl.io/images/paymentbox1.png\" data-original-title=\"\" title=\"\" xss=removed>Example</a></li><li xss=removed><span xss=removed>private_key</span><br>Crypotcoin Payment Box Private Key from your new payment box. <a href=\"https://gourl.io/images/paymentbox1.png\" data-original-title=\"\" title=\"\" xss=removed>Example</a></li><li xss=removed><span xss=removed>orderID</span><br>Your order id or product name; allow symbols: a..Z0..9_-@.; max size: 50 symbols, examples: \'order44\', \'premium_page\', \'product123<br>Some of your users can have the same orderID but combination \'orderID\'+\'userID\' should be unique. For example, on premium page you can use for all visitors: orderID=\"premium\" and userID=\"\" (empty; therefore system will automatically generate unique userID).</li><li id=\"userID\" xss=removed><span xss=removed>userID</span><br>Optional, manual setup unique identifier each of your users. By default the Payment Box uses randomly generated string in userID and saves it in user cookies.<br>You need to use a variable userID when you use Cryptocoin Payment Box for registered users on your website. You don\'t need to use userID if using Cryptobox for unregistered website visitors (for example, on website sign-up form).<br>IMPORTANT:<br>If you use Payment Box for registered users on your website, you need to set userID manually with a unique value for each of your registered user. It is better than to use cookies by default. Examples: \'user1\', \'user2\', \'3vIh9MjEis\' <br>allow symbols: a..Z0..9_-@.; max size: 50 symbols</li><li xss=removed><span xss=removed>userFormat</span></li></ul>\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n<p><strong>Best Regards<br>freda<br>freda@gmail.com<br>computer engineering Department</strong></p>                                        \r\n                                    ', 'inbox', 'unread'),
(248, '2018-06-20 20:45:19', 33502989, 1399031, 'Alert Notification', '<p>Hello Sir/Madam,</p><ul class=\"crypto-install animated fadeIn\" xss=removed><li xss=removed><span xss=removed>public_key</span><br>Crypotcoin Payment Box Public Key from your new <a href=\"https://gourl.io/editrecord/coin_boxes/0\" data-original-title=\"\" title=\"\" xss=removed>payment box</a>. <a href=\"https://gourl.io/images/paymentbox1.png\" data-original-title=\"\" title=\"\" xss=removed>Example</a></li><li xss=removed><span xss=removed>private_key</span><br>Crypotcoin Payment Box Private Key from your new payment box. <a href=\"https://gourl.io/images/paymentbox1.png\" data-original-title=\"\" title=\"\" xss=removed>Example</a></li><li xss=removed><span xss=removed>orderID</span><br>Your order id or product name; allow symbols: a..Z0..9_-@.; max size: 50 symbols, examples: \'order44\', \'premium_page\', \'product123<br>Some of your users can have the same orderID but combination \'orderID\'+\'userID\' should be unique. For example, on premium page you can use for all visitors: orderID=\"premium\" and userID=\"\" (empty; therefore system will automatically generate unique userID).</li><li id=\"userID\" xss=removed><span xss=removed>userID</span><br>Optional, manual setup unique identifier each of your users. By default the Payment Box uses randomly generated string in userID and saves it in user cookies.<br>You need to use a variable userID when you use Cryptocoin Payment Box for registered users on your website. You don\'t need to use userID if using Cryptobox for unregistered website visitors (for example, on website sign-up form).<br>IMPORTANT:<br>If you use Payment Box for registered users on your website, you need to set userID manually with a unique value for each of your registered user. It is better than to use cookies by default. Examples: \'user1\', \'user2\', \'3vIh9MjEis\' <br>allow symbols: a..Z0..9_-@.; max size: 50 symbols</li><li xss=removed><span xss=removed>userFormat</span></li></ul>\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n<p><strong>Best Regards<br>freda<br>freda@gmail.com<br>computer engineering Department</strong></p>                                        \r\n                                    ', 'inbox', 'unread'),
(249, '2018-06-20 20:45:20', 33502989, 1643571, 'Alert Notification', '<p>Hello Sir/Madam,</p><ul class=\"crypto-install animated fadeIn\" xss=removed><li xss=removed><span xss=removed>public_key</span><br>Crypotcoin Payment Box Public Key from your new <a href=\"https://gourl.io/editrecord/coin_boxes/0\" data-original-title=\"\" title=\"\" xss=removed>payment box</a>. <a href=\"https://gourl.io/images/paymentbox1.png\" data-original-title=\"\" title=\"\" xss=removed>Example</a></li><li xss=removed><span xss=removed>private_key</span><br>Crypotcoin Payment Box Private Key from your new payment box. <a href=\"https://gourl.io/images/paymentbox1.png\" data-original-title=\"\" title=\"\" xss=removed>Example</a></li><li xss=removed><span xss=removed>orderID</span><br>Your order id or product name; allow symbols: a..Z0..9_-@.; max size: 50 symbols, examples: \'order44\', \'premium_page\', \'product123<br>Some of your users can have the same orderID but combination \'orderID\'+\'userID\' should be unique. For example, on premium page you can use for all visitors: orderID=\"premium\" and userID=\"\" (empty; therefore system will automatically generate unique userID).</li><li id=\"userID\" xss=removed><span xss=removed>userID</span><br>Optional, manual setup unique identifier each of your users. By default the Payment Box uses randomly generated string in userID and saves it in user cookies.<br>You need to use a variable userID when you use Cryptocoin Payment Box for registered users on your website. You don\'t need to use userID if using Cryptobox for unregistered website visitors (for example, on website sign-up form).<br>IMPORTANT:<br>If you use Payment Box for registered users on your website, you need to set userID manually with a unique value for each of your registered user. It is better than to use cookies by default. Examples: \'user1\', \'user2\', \'3vIh9MjEis\' <br>allow symbols: a..Z0..9_-@.; max size: 50 symbols</li><li xss=removed><span xss=removed>userFormat</span></li></ul>\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n<p><strong>Best Regards<br>freda<br>freda@gmail.com<br>computer engineering Department</strong></p>                                        \r\n                                    ', 'inbox', 'unread'),
(250, '2018-06-20 21:03:43', 33502989, 1399031, 'Alert Notification', '<p>Hello Sir/Madam,</p>\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n<li xss=removed><span xss=removed><br class=\"Apple-interchange-newline\">public_key</span><br>Crypotcoin Payment Box Public Key from your new <a href=\"https://gourl.io/editrecord/coin_boxes/0\" data-original-title=\"\" title=\"\" xss=removed>payment box</a>. <a href=\"https://gourl.io/images/paymentbox1.png\" data-original-title=\"\" title=\"\" xss=removed>Example</a></li><li xss=removed><span xss=removed>private_key</span><br>Crypotcoin Payment Box Private Key from your new payment box. <a href=\"https://gourl.io/images/paymentbox1.png\" data-original-title=\"\" title=\"\" xss=removed>Example</a></li><li xss=removed><span xss=removed>orderID</span><br>Your order id or product name; allow symbols: a..Z0..9_-@.; max size: 50 symbols, examples: \'order44\', \'premium_page\', \'product123<br>Some of your users can have the same orderID but combination \'orderID\'+\'userID\' should be unique. For example, on premium page you can use for all visitors: orderID=\"premium\" and userID=\"\" (empty; therefore system will automatically generate unique userID).</li><li id=\"userID\" xss=removed><span xss=removed>userID</span><br>Optional, manual setup unique identifier each of your users. By default the Payment Box uses randomly generated string in userID and saves it in user cookies.<br>You need to use a variable userID when you use Cryptocoin Payment Box for registered users on your website. You don\'t need to use userID if using Cryptobox for unregistered website visitors (for example, on website sign-up form).<br>IMPORTANT:<br>If you use Payment Box for registered users on your website, you need to set userID manually with a unique value for each of your registered user. It is better than to use cookies by default. Examples: \'user1\', \'user2\', \'3vIh9MjEis\' <br>allow symbols: a..Z0..9_-@.; max size: 50 symbols</li><li xss=removed><span xss=removed>userFormat</span></li><p><strong>Best Regards<br>freda<br>freda@gmail.com<br>computer engineering Department</strong></p>                                        \r\n                                    ', 'inbox', 'unread'),
(251, '2018-06-20 21:03:44', 33502989, 1643571, 'Alert Notification', '<p>Hello Sir/Madam,</p>\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n<li xss=removed><span xss=removed><br class=\"Apple-interchange-newline\">public_key</span><br>Crypotcoin Payment Box Public Key from your new <a href=\"https://gourl.io/editrecord/coin_boxes/0\" data-original-title=\"\" title=\"\" xss=removed>payment box</a>. <a href=\"https://gourl.io/images/paymentbox1.png\" data-original-title=\"\" title=\"\" xss=removed>Example</a></li><li xss=removed><span xss=removed>private_key</span><br>Crypotcoin Payment Box Private Key from your new payment box. <a href=\"https://gourl.io/images/paymentbox1.png\" data-original-title=\"\" title=\"\" xss=removed>Example</a></li><li xss=removed><span xss=removed>orderID</span><br>Your order id or product name; allow symbols: a..Z0..9_-@.; max size: 50 symbols, examples: \'order44\', \'premium_page\', \'product123<br>Some of your users can have the same orderID but combination \'orderID\'+\'userID\' should be unique. For example, on premium page you can use for all visitors: orderID=\"premium\" and userID=\"\" (empty; therefore system will automatically generate unique userID).</li><li id=\"userID\" xss=removed><span xss=removed>userID</span><br>Optional, manual setup unique identifier each of your users. By default the Payment Box uses randomly generated string in userID and saves it in user cookies.<br>You need to use a variable userID when you use Cryptocoin Payment Box for registered users on your website. You don\'t need to use userID if using Cryptobox for unregistered website visitors (for example, on website sign-up form).<br>IMPORTANT:<br>If you use Payment Box for registered users on your website, you need to set userID manually with a unique value for each of your registered user. It is better than to use cookies by default. Examples: \'user1\', \'user2\', \'3vIh9MjEis\' <br>allow symbols: a..Z0..9_-@.; max size: 50 symbols</li><li xss=removed><span xss=removed>userFormat</span></li><p><strong>Best Regards<br>freda<br>freda@gmail.com<br>computer engineering Department</strong></p>                                        \r\n                                    ', 'inbox', 'unread'),
(252, '2018-06-20 22:45:35', 41803192, 33502989, 'noticed', '<p>Hello Sir/Madam,</p><p>i welcome u to a neww setion<br></p>\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n<p><strong>Best Regards<br>ify<br>kennyendowed@hotmail.com<br>computer engineering Department</strong></p>                                        \r\n                                    ', 'inbox', 'read'),
(253, '2018-06-21 14:20:51', 33502989, 41803192, 'Alert Notification', '<p>Hello Sir/Madam,</p><p><span xss=removed>and finally we need to download the css and jquery in the </span><a href=\"http://apycom.com/\" target=\"_blank\" xss=removed>Apycom</a><span xss=removed> page, in these case I used this one </span><a href=\"http://apycom.com/menus/8-white-smoke.html\" target=\"_blank\" xss=removed>apycom menu</a><span xss=removed> and just need to create one folder in the base on the framework called assets and then create another folder into the assets call menu like these \\assets\\menu and there in menu folder paste your menu jQuery that you download before, and that’s it, now you have a dynamic menu using CodeIgniter with database, you got these:</span><br></p>\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n<p><strong>Best Regards<br>freda<br>freda@gmail.com<br>computer engineering Department</strong></p>                                        \r\n                                    ', 'inbox', 'read'),
(254, '2018-06-21 14:26:44', 41803192, 33502989, '', 'sir where are u?', 'inbox', 'read'),
(255, '2018-06-21 15:25:01', 33502989, 41803192, '', 'at home sir', 'inbox', 'read'),
(256, '2018-06-22 21:50:10', 41803192, 33502989, '', 'DOING WHAT ?', 'inbox', 'read'),
(257, '2018-06-22 21:50:33', 33502989, 41803192, '', 'PLAYING GAME ', 'inbox', 'read'),
(258, '2018-06-22 21:51:05', 41803192, 33502989, '', 'BOY CALL ME NOW ', 'inbox', 'read'),
(259, '2018-06-22 21:51:24', 41803192, 33502989, '', 'U NO SERIOUS CALL ME NOW NOW', 'inbox', 'read'),
(260, '2018-06-22 21:51:54', 33502989, 41803192, '', 'SIR SOWWI I DONT HAVE AIRTIME LOL', 'inbox', 'read'),
(261, '2018-06-22 21:52:09', 41803192, 33502989, '', 'U THINK AM JOKING ????', 'inbox', 'read'),
(262, '2018-06-22 21:52:38', 33502989, 41803192, '', 'YES LOL', 'inbox', 'read');

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

--
-- Dumping data for table `es_message_sent`
--

INSERT INTO `es_message_sent` (`message_id`, `date`, `user_from`, `user_to`, `subject`, `content`, `location`, `status`) VALUES
(8, '2016-03-22 10:01:32', 2, 1, 'sdf', 'sure sure. as in now nah?', 'inbox', 'unread'),
(9, '2016-03-22 10:09:05', 2, 1, 'dafuq', 'sample message', 'inbox', 'unread'),
(11, '2016-03-22 11:39:30', 2, 1, 'Internet Connection', 'We have a good connection :) thank you', 'inbox', 'unread'),
(13, '2016-03-22 14:22:10', 1, 2, 'Subject 101', 'This is only a sample message of the system.\r\n\r\nThank you,\r\nJIMMY B. LOMOCSO JR.', 'inbox', 'unread'),
(14, '2016-03-22 17:01:07', 2, 1, 'Subject 102', 'I received it. thank you!!!', 'inbox', 'unread'),
(15, '2016-03-23 08:12:10', 7, 2, 'asdf', 'sdfsdf', 'inbox', 'unread'),
(16, '2016-03-23 08:12:29', 12404501, 1399031, 'Sample', 'Hi admin', 'inbox', 'unread'),
(17, '2016-03-23 08:13:40', 1, 2, 'Subject 102', 'Your welcome jimzky :)', 'inbox', 'unread'),
(18, '2016-03-23 08:13:59', 1399031, 12404501, 'Sample', 'Hello user01. Howz your day today?', 'inbox', 'unread'),
(19, '2018-03-31 04:40:01', 1399031, 12404501, '', '', 'inbox', 'unread'),
(70, '2018-04-02 07:10:47', 1399031, 2488296, '', 'hello', 'inbox', 'unread'),
(71, '2018-04-02 09:06:09', 1399031, 2488296, '', 'can u hear me ?', 'inbox', 'unread'),
(72, '2018-04-02 09:06:30', 1399031, 12404501, '', 'run', 'inbox', 'unread'),
(73, '2018-04-02 09:06:45', 1399031, 12404501, '', 'make', 'inbox', 'unread'),
(74, '2018-04-02 09:07:22', 1399031, 12404501, '', 'what u saying ?', 'inbox', 'unread'),
(75, '2018-04-02 09:21:52', 1399031, 12404501, '', 'hello', 'inbox', 'unread'),
(76, '2018-04-02 09:22:10', 1399031, 12404501, '', 'ice', 'inbox', 'unread'),
(77, '2018-04-02 09:24:20', 12404501, 1399031, '', 'chweck', 'inbox', 'unread'),
(78, '2018-04-02 09:24:50', 1399031, 12404501, '', 'what u saying ?', 'inbox', 'unread'),
(79, '2018-04-02 09:34:30', 12404501, 1399031, '', 'call me pls', 'inbox', 'unread'),
(80, '2018-04-02 09:35:30', 1399031, 12404501, '', 'and why ?', 'inbox', 'unread'),
(81, '2018-04-02 09:53:21', 12404501, 1399031, '', 'cos i hv sometin to tell u', 'inbox', 'unread'),
(82, '2018-04-02 09:54:15', 1399031, 12404501, '', 'tell me here ', 'inbox', 'unread'),
(83, '2018-04-02 09:54:55', 12404501, 1399031, '', 'sir i cant ', 'inbox', 'unread'),
(84, '2018-04-02 09:56:36', 1399031, 12404501, '', 'why ?', 'inbox', 'unread'),
(85, '2018-04-02 09:59:39', 12404501, 1399031, '', 'becase......', 'inbox', 'unread'),
(86, '2018-04-02 10:03:45', 1399031, 12404501, '', 'what', 'inbox', 'unread'),
(87, '2018-04-02 10:04:50', 12404501, 1399031, '', 'i cant say', 'inbox', 'unread'),
(88, '2018-04-02 10:07:35', 1399031, 12404501, '', 'y na ', 'inbox', 'unread'),
(89, '2018-04-02 10:15:22', 12404501, 1399031, '', 'becases......', 'inbox', 'unread'),
(90, '2018-04-02 10:16:28', 1399031, 12404501, '', 'son ...', 'inbox', 'unread'),
(91, '2018-04-02 10:18:11', 12404501, 1399031, '', 'dad', 'inbox', 'unread'),
(92, '2018-04-02 10:30:53', 1399031, 12404501, '', 'mumm lol', 'inbox', 'unread'),
(93, '2018-04-02 10:31:43', 12404501, 1399031, '', 'wat ?', 'inbox', 'unread'),
(94, '2018-04-02 15:27:33', 1399031, 12404501, '', 'run ', 'inbox', 'unread'),
(95, '2018-04-02 15:27:53', 12404501, 1399031, '', 'to where', 'inbox', 'unread'),
(96, '2018-04-02 15:29:31', 12404501, 1399031, '', 'hello work made', 'inbox', 'unread'),
(97, '2018-04-02 15:30:38', 1399031, 12404501, '', 'guy wat wrong', 'inbox', 'unread'),
(98, '2018-04-02 15:31:19', 1399031, 12404501, '', 'rabborl', 'inbox', 'unread'),
(99, '2018-04-02 15:32:13', 12404501, 1399031, '', 'guy ', 'inbox', 'unread'),
(100, '2018-04-02 15:33:01', 1399031, 12404501, '', 'wat son ', 'inbox', 'unread'),
(101, '2018-04-02 15:35:18', 12404501, 1399031, '', 'ice cream', 'inbox', 'unread'),
(102, '2018-04-02 15:43:31', 1399031, 12404501, '', 'am coming ', 'inbox', 'unread'),
(103, '2018-04-02 15:46:07', 12404501, 1399031, '', 'how soon ?', 'inbox', 'unread'),
(104, '2018-04-02 15:47:53', 1399031, 12404501, '', 'are u sure ?', 'inbox', 'unread'),
(105, '2018-04-02 15:48:39', 12404501, 1399031, '', 'guy am tired', 'inbox', 'unread'),
(106, '2018-04-02 15:48:46', 1399031, 12404501, '', 'why ?', 'inbox', 'unread'),
(107, '2018-04-02 15:49:00', 1399031, 12404501, '', 'because of rice', 'inbox', 'unread'),
(108, '2018-04-02 15:49:09', 12404501, 1399031, '', 'what that ', 'inbox', 'unread'),
(109, '2018-04-02 16:54:43', 1399031, 12404501, '', 'playlist', 'inbox', 'unread'),
(110, '2018-04-02 16:55:07', 12404501, 1399031, '', 'mi', 'inbox', 'unread'),
(111, '2018-04-02 16:56:37', 1399031, 12404501, '', 'morning', 'inbox', 'unread'),
(112, '2018-04-02 17:04:04', 12404501, 1399031, '', 'hello', 'inbox', 'unread'),
(113, '2018-04-02 17:04:59', 1399031, 12404501, '', 'ice', 'inbox', 'unread'),
(114, '2018-04-02 17:06:47', 12404501, 1399031, '', 'sucide', 'inbox', 'unread'),
(115, '2018-04-02 17:13:44', 1399031, 12404501, '', '', 'inbox', 'unread'),
(116, '2018-04-02 17:14:26', 12404501, 1399031, '', 'hello', 'inbox', 'unread'),
(117, '2018-04-02 17:15:15', 1399031, 12404501, '', 'invit', 'inbox', 'unread'),
(118, '2018-04-02 17:18:00', 12404501, 1399031, '', 'u', 'inbox', 'unread'),
(119, '2018-04-02 17:19:07', 1399031, 12404501, '', 'wat ?', 'inbox', 'unread'),
(120, '2018-04-02 17:23:06', 12404501, 1399031, '', 'do away with u', 'inbox', 'unread'),
(121, '2018-04-02 17:23:55', 1399031, 12404501, '', 'don call my phone', 'inbox', 'unread'),
(122, '2018-04-02 17:24:38', 12404501, 1399031, '', 'fell', 'inbox', 'unread'),
(123, '2018-04-02 17:26:19', 12404501, 1399031, '', 'they ur lane', 'inbox', 'unread'),
(124, '2018-04-02 17:30:50', 1399031, 12404501, '', 'try me ', 'inbox', 'unread'),
(125, '2018-04-02 17:31:15', 12404501, 1399031, '', 'why', 'inbox', 'unread'),
(126, '2018-04-02 17:31:44', 12404501, 1399031, '', 'guy', 'inbox', 'unread'),
(127, '2018-04-02 21:48:21', 1399031, 12404501, '', 'd', 'inbox', 'unread'),
(128, '2018-04-02 21:51:09', 12404501, 1399031, '', 'not cool', 'inbox', 'unread'),
(129, '2018-04-02 21:56:09', 1399031, 12404501, '', 'y woul u say that ?', 'inbox', 'unread'),
(130, '2018-04-02 21:56:29', 12404501, 1399031, '', 'becase......', 'inbox', 'unread'),
(131, '2018-04-02 21:56:48', 1399031, 12404501, '', 'what ?', 'inbox', 'unread'),
(132, '2018-04-02 21:58:49', 12404501, 1399031, '', 'ur killing me here ', 'inbox', 'unread'),
(133, '2018-04-02 21:59:36', 1399031, 12404501, '', 'how ?', 'inbox', 'unread'),
(134, '2018-04-02 21:59:54', 12404501, 1399031, '', 'i dont kn yet', 'inbox', 'unread'),
(135, '2018-04-02 22:03:50', 1399031, 12404501, '', 'guy', 'inbox', 'unread'),
(136, '2018-04-02 22:04:42', 1399031, 12404501, '', 'dude', 'inbox', 'unread'),
(137, '2018-04-02 22:04:49', 12404501, 1399031, '', 'how is u', 'inbox', 'unread'),
(138, '2018-04-02 22:04:58', 12404501, 1399031, '', 'good and u?', 'inbox', 'unread'),
(139, '2018-04-03 07:29:21', 1399031, 12404501, '', 'no one', 'inbox', 'unread'),
(140, '2018-04-03 07:30:18', 12404501, 1399031, '', 'hi', 'inbox', 'unread'),
(141, '2018-04-03 07:30:41', 1399031, 12404501, '', 'u', 'inbox', 'unread'),
(142, '2018-04-03 07:32:23', 12404501, 1399031, '', 'hello', 'inbox', 'unread'),
(143, '2018-04-03 07:34:06', 1399031, 12404501, '', 'u', 'inbox', 'unread'),
(144, '2018-04-03 07:36:14', 12404501, 1399031, '', 'ddsd', 'inbox', 'unread'),
(145, '2018-04-03 07:37:11', 1399031, 12404501, '', 'iok', 'inbox', 'unread'),
(146, '2018-04-03 07:37:23', 12404501, 1399031, '', 'uoooo', 'inbox', 'unread'),
(147, '2018-04-03 07:37:31', 1399031, 12404501, '', 'bbbyy', 'inbox', 'unread'),
(148, '2018-04-03 07:46:41', 12404501, 1399031, '', 'call my baby', 'inbox', 'unread'),
(149, '2018-04-03 07:47:33', 1399031, 12404501, '', 'y ?', 'inbox', 'unread'),
(150, '2018-04-03 07:47:52', 12404501, 1399031, '', 'waytin happen ?', 'inbox', 'unread'),
(151, '2018-04-03 19:45:58', 1399031, 12404501, '', 'y woul u say that ?', 'inbox', 'unread'),
(152, '2018-04-03 19:46:16', 12404501, 1399031, '', 'riot', 'inbox', 'unread'),
(153, '2018-04-03 19:46:55', 1399031, 12404501, '', '', 'inbox', 'unread'),
(154, '2018-04-03 19:47:06', 12404501, 1399031, '', '', 'inbox', 'unread'),
(155, '2018-04-04 02:06:38', 1399031, 12404501, '', 'wat ?', 'inbox', 'unread'),
(156, '2018-04-04 02:11:52', 12404501, 1399031, '', 'u asking me ?', 'inbox', 'unread'),
(157, '2018-04-04 02:15:20', 1399031, 12404501, '', 'yes sir', 'inbox', 'unread'),
(158, '2018-04-04 02:17:19', 1643571, 1399031, '', 'wat y?', 'inbox', 'unread'),
(159, '2018-04-04 02:18:29', 12404501, 1399031, '', 'uuuuu', 'inbox', 'unread'),
(160, '2018-04-06 15:46:21', 1643571, 1399031, '', 'light', 'inbox', 'unread'),
(161, '2018-04-06 15:48:06', 1399031, 1643571, '', 'nivk', 'inbox', 'unread'),
(162, '2018-04-06 15:49:52', 1643571, 1399031, '', 'ok boss', 'inbox', 'unread'),
(163, '2018-04-07 05:13:15', 1399031, 1643571, '', 'hello', 'inbox', 'unread'),
(164, '2018-04-07 09:26:36', 12404501, 1399031, '', 'count', 'inbox', 'unread'),
(165, '2018-04-07 09:27:50', 1399031, 12404501, '', 'hello mate', 'inbox', 'unread'),
(166, '2018-04-07 09:29:53', 12404501, 1399031, '', 'what ?', 'inbox', 'unread'),
(167, '2018-04-07 09:31:50', 1399031, 12404501, '', 'test father', 'inbox', 'unread'),
(168, '2018-04-07 09:39:26', 12404501, 1399031, '', 'knock', 'inbox', 'unread'),
(169, '2018-04-07 09:43:22', 1399031, 12404501, '', 'lord ', 'inbox', 'unread'),
(170, '2018-04-07 10:08:47', 12404501, 1399031, '', 'vu', 'inbox', 'unread'),
(171, '2018-04-07 10:10:30', 1399031, 12404501, '', 'ml', 'inbox', 'unread'),
(172, '2018-04-07 10:11:11', 12404501, 1399031, '', 'jj', 'inbox', 'unread'),
(173, '2018-04-07 10:11:58', 1399031, 12404501, '', 'mmm', 'inbox', 'unread'),
(174, '2018-04-07 10:14:30', 12404501, 1399031, '', 'vvvv', 'inbox', 'unread'),
(175, '2018-04-07 10:15:22', 1399031, 12404501, '', 'zzzzz', 'inbox', 'unread'),
(176, '2018-04-07 10:47:56', 12404501, 1399031, '', 'avai', 'inbox', 'unread'),
(177, '2018-04-07 11:21:42', 1399031, 12404501, '', 'king', 'inbox', 'unread'),
(178, '2018-04-07 11:24:33', 12404501, 1399031, '', 'ieyusdui', 'inbox', 'unread'),
(179, '2018-04-07 11:26:52', 12404501, 1399031, '', 'again', 'inbox', 'unread'),
(180, '2018-04-07 11:31:05', 1399031, 12404501, '', 'hello', 'inbox', 'unread'),
(181, '2018-04-07 11:31:25', 12404501, 1399031, '', 'it is me from the other side ', 'inbox', 'unread'),
(182, '2018-04-07 11:32:29', 1399031, 12404501, '', 'yu', 'inbox', 'unread'),
(183, '2018-04-07 11:32:46', 12404501, 1399031, '', 'create me', 'inbox', 'unread'),
(184, '2018-04-07 11:34:55', 1399031, 12404501, '', 'ok', 'inbox', 'unread'),
(185, '2018-04-07 11:36:00', 12404501, 1399031, '', 'wat ok', 'inbox', 'unread'),
(186, '2018-04-07 11:38:27', 1399031, 12404501, '', 'how is u', 'inbox', 'unread'),
(187, '2018-04-07 11:38:57', 12404501, 1399031, '', 'ok i guess and u ?', 'inbox', 'unread'),
(188, '2018-04-07 11:39:34', 1399031, 12404501, '', 'i think am ok', 'inbox', 'unread'),
(189, '2018-04-07 11:40:09', 12404501, 1399031, '', 'ur not sure y ?', 'inbox', 'unread'),
(190, '2018-04-07 11:40:25', 1399031, 12404501, '', 'cos am not', 'inbox', 'unread'),
(191, '2018-04-07 11:40:49', 12404501, 1399031, '', 'hmmmm', 'inbox', 'unread'),
(192, '2018-04-07 11:41:04', 1399031, 12404501, '', 'what that', 'inbox', 'unread'),
(193, '2018-04-07 11:42:07', 12404501, 1399031, '', 'that wat', 'inbox', 'unread'),
(194, '2018-04-07 11:42:15', 12404501, 1399031, '', '', 'inbox', 'unread'),
(195, '2018-04-07 11:42:30', 1399031, 12404501, '', 'wat u make if thay', 'inbox', 'unread'),
(196, '2018-04-07 11:43:41', 12404501, 1399031, '', 'nothing', 'inbox', 'unread'),
(197, '2018-04-07 11:44:06', 1399031, 12404501, '', 'ur mad ', 'inbox', 'unread'),
(198, '2018-04-07 11:46:27', 12404501, 1399031, '', 'energy', 'inbox', 'unread'),
(199, '2018-04-07 11:46:51', 1399031, 12404501, '', 'and ', 'inbox', 'unread'),
(200, '2018-04-07 11:47:23', 12404501, 1399031, '', 'bite me', 'inbox', 'unread'),
(201, '2018-04-07 11:47:31', 12404501, 1399031, '', 'y ?', 'inbox', 'unread'),
(202, '2018-04-07 11:47:41', 1399031, 12404501, '', 'no reason', 'inbox', 'unread'),
(203, '2018-04-07 12:01:30', 12404501, 1399031, '', 'u', 'inbox', 'unread'),
(204, '2018-04-07 12:02:00', 1399031, 12404501, '', 'uu', 'inbox', 'unread'),
(205, '2018-04-07 12:02:36', 12404501, 1399031, '', 'yui', 'inbox', 'unread'),
(206, '2018-04-07 13:54:03', 1399031, 12404501, '', 'hello james', 'inbox', 'unread'),
(207, '2018-04-07 13:54:22', 12404501, 1399031, '', 'sorry i mean kenny', 'inbox', 'unread'),
(208, '2018-04-07 13:55:11', 1399031, 12404501, '', 'what ?', 'inbox', 'unread'),
(209, '2018-04-07 13:55:23', 12404501, 1399031, '', 'ask me again', 'inbox', 'unread'),
(210, '2018-04-07 13:55:48', 1399031, 12404501, '', 'errro', 'inbox', 'unread'),
(211, '2018-04-07 13:56:12', 12404501, 1399031, '', 'belss', 'inbox', 'unread'),
(212, '2018-04-07 20:14:09', 1643571, 1399031, '', 'back', 'inbox', 'unread'),
(213, '2018-04-07 20:16:29', 1399031, 12404501, '', 'hello', 'inbox', 'unread'),
(214, '2018-04-07 20:17:15', 12404501, 1399031, '', 'xup', 'inbox', 'unread'),
(215, '2018-04-07 20:17:34', 1399031, 12404501, '', 'how u doing ', 'inbox', 'unread'),
(216, '2018-04-07 20:22:35', 12404501, 1399031, '', 'james', 'inbox', 'unread'),
(217, '2018-04-07 20:22:50', 1399031, 12404501, '', 'james', 'inbox', 'unread'),
(218, '2018-04-07 20:28:54', 12404501, 1399031, '', 'joy', 'inbox', 'unread'),
(219, '2018-04-07 20:29:14', 1399031, 12404501, '', 'love', 'inbox', 'unread'),
(220, '2018-04-07 20:32:10', 12404501, 1399031, '', 'move keny', 'inbox', 'unread'),
(221, '2018-04-07 20:32:29', 1399031, 12404501, '', 'body', 'inbox', 'unread'),
(222, '2018-04-07 20:35:51', 12404501, 1399031, '', 'go crazy', 'inbox', 'unread'),
(223, '2018-04-07 20:37:39', 1399031, 12404501, '', 'say', 'inbox', 'unread'),
(224, '2018-04-07 20:38:36', 12404501, 1399031, '', 'ok go', 'inbox', 'unread'),
(225, '2018-04-07 20:42:47', 1399031, 12404501, '', 'where ?', 'inbox', 'unread'),
(226, '2018-04-07 20:43:54', 12404501, 1399031, '', 'jos', 'inbox', 'unread'),
(227, '2018-04-07 20:44:39', 12404501, 1399031, '', 'check', 'inbox', 'unread'),
(228, '2018-04-07 20:52:21', 1399031, 12404501, '', 'see', 'inbox', 'unread'),
(229, '2018-04-07 20:56:30', 12404501, 1399031, '', 'rock', 'inbox', 'unread'),
(230, '2018-04-07 20:57:56', 1399031, 12404501, '', 'monica', 'inbox', 'unread'),
(231, '2018-04-07 20:58:24', 12404501, 1399031, '', 'wat', 'inbox', 'unread'),
(232, '2018-06-20 20:45:19', 33502989, 12436212, 'Alert Notification', '<p>Hello Sir/Madam,</p><ul class=\"crypto-install animated fadeIn\" xss=removed><li xss=removed><span xss=removed>public_key</span><br>Crypotcoin Payment Box Public Key from your new <a href=\"https://gourl.io/editrecord/coin_boxes/0\" data-original-title=\"\" title=\"\" xss=removed>payment box</a>. <a href=\"https://gourl.io/images/paymentbox1.png\" data-original-title=\"\" title=\"\" xss=removed>Example</a></li><li xss=removed><span xss=removed>private_key</span><br>Crypotcoin Payment Box Private Key from your new payment box. <a href=\"https://gourl.io/images/paymentbox1.png\" data-original-title=\"\" title=\"\" xss=removed>Example</a></li><li xss=removed><span xss=removed>orderID</span><br>Your order id or product name; allow symbols: a..Z0..9_-@.; max size: 50 symbols, examples: \'order44\', \'premium_page\', \'product123<br>Some of your users can have the same orderID but combination \'orderID\'+\'userID\' should be unique. For example, on premium page you can use for all visitors: orderID=\"premium\" and userID=\"\" (empty; therefore system will automatically generate unique userID).</li><li id=\"userID\" xss=removed><span xss=removed>userID</span><br>Optional, manual setup unique identifier each of your users. By default the Payment Box uses randomly generated string in userID and saves it in user cookies.<br>You need to use a variable userID when you use Cryptocoin Payment Box for registered users on your website. You don\'t need to use userID if using Cryptobox for unregistered website visitors (for example, on website sign-up form).<br>IMPORTANT:<br>If you use Payment Box for registered users on your website, you need to set userID manually with a unique value for each of your registered user. It is better than to use cookies by default. Examples: \'user1\', \'user2\', \'3vIh9MjEis\' <br>allow symbols: a..Z0..9_-@.; max size: 50 symbols</li><li xss=removed><span xss=removed>userFormat</span></li></ul>\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n<p><strong>Best Regards<br>freda<br>freda@gmail.com<br>computer engineering Department</strong></p>                                        \r\n                                    ', 'inbox', 'unread'),
(233, '2018-06-20 20:45:19', 33502989, 1399031, 'Alert Notification', '<p>Hello Sir/Madam,</p><ul class=\"crypto-install animated fadeIn\" xss=removed><li xss=removed><span xss=removed>public_key</span><br>Crypotcoin Payment Box Public Key from your new <a href=\"https://gourl.io/editrecord/coin_boxes/0\" data-original-title=\"\" title=\"\" xss=removed>payment box</a>. <a href=\"https://gourl.io/images/paymentbox1.png\" data-original-title=\"\" title=\"\" xss=removed>Example</a></li><li xss=removed><span xss=removed>private_key</span><br>Crypotcoin Payment Box Private Key from your new payment box. <a href=\"https://gourl.io/images/paymentbox1.png\" data-original-title=\"\" title=\"\" xss=removed>Example</a></li><li xss=removed><span xss=removed>orderID</span><br>Your order id or product name; allow symbols: a..Z0..9_-@.; max size: 50 symbols, examples: \'order44\', \'premium_page\', \'product123<br>Some of your users can have the same orderID but combination \'orderID\'+\'userID\' should be unique. For example, on premium page you can use for all visitors: orderID=\"premium\" and userID=\"\" (empty; therefore system will automatically generate unique userID).</li><li id=\"userID\" xss=removed><span xss=removed>userID</span><br>Optional, manual setup unique identifier each of your users. By default the Payment Box uses randomly generated string in userID and saves it in user cookies.<br>You need to use a variable userID when you use Cryptocoin Payment Box for registered users on your website. You don\'t need to use userID if using Cryptobox for unregistered website visitors (for example, on website sign-up form).<br>IMPORTANT:<br>If you use Payment Box for registered users on your website, you need to set userID manually with a unique value for each of your registered user. It is better than to use cookies by default. Examples: \'user1\', \'user2\', \'3vIh9MjEis\' <br>allow symbols: a..Z0..9_-@.; max size: 50 symbols</li><li xss=removed><span xss=removed>userFormat</span></li></ul>\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n<p><strong>Best Regards<br>freda<br>freda@gmail.com<br>computer engineering Department</strong></p>                                        \r\n                                    ', 'inbox', 'unread'),
(234, '2018-06-20 20:45:20', 33502989, 1643571, 'Alert Notification', '<p>Hello Sir/Madam,</p><ul class=\"crypto-install animated fadeIn\" xss=removed><li xss=removed><span xss=removed>public_key</span><br>Crypotcoin Payment Box Public Key from your new <a href=\"https://gourl.io/editrecord/coin_boxes/0\" data-original-title=\"\" title=\"\" xss=removed>payment box</a>. <a href=\"https://gourl.io/images/paymentbox1.png\" data-original-title=\"\" title=\"\" xss=removed>Example</a></li><li xss=removed><span xss=removed>private_key</span><br>Crypotcoin Payment Box Private Key from your new payment box. <a href=\"https://gourl.io/images/paymentbox1.png\" data-original-title=\"\" title=\"\" xss=removed>Example</a></li><li xss=removed><span xss=removed>orderID</span><br>Your order id or product name; allow symbols: a..Z0..9_-@.; max size: 50 symbols, examples: \'order44\', \'premium_page\', \'product123<br>Some of your users can have the same orderID but combination \'orderID\'+\'userID\' should be unique. For example, on premium page you can use for all visitors: orderID=\"premium\" and userID=\"\" (empty; therefore system will automatically generate unique userID).</li><li id=\"userID\" xss=removed><span xss=removed>userID</span><br>Optional, manual setup unique identifier each of your users. By default the Payment Box uses randomly generated string in userID and saves it in user cookies.<br>You need to use a variable userID when you use Cryptocoin Payment Box for registered users on your website. You don\'t need to use userID if using Cryptobox for unregistered website visitors (for example, on website sign-up form).<br>IMPORTANT:<br>If you use Payment Box for registered users on your website, you need to set userID manually with a unique value for each of your registered user. It is better than to use cookies by default. Examples: \'user1\', \'user2\', \'3vIh9MjEis\' <br>allow symbols: a..Z0..9_-@.; max size: 50 symbols</li><li xss=removed><span xss=removed>userFormat</span></li></ul>\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n<p><strong>Best Regards<br>freda<br>freda@gmail.com<br>computer engineering Department</strong></p>                                        \r\n                                    ', 'inbox', 'unread'),
(235, '2018-06-20 21:03:43', 33502989, 1399031, 'Alert Notification', '<p>Hello Sir/Madam,</p>\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n<li xss=removed><span xss=removed><br class=\"Apple-interchange-newline\">public_key</span><br>Crypotcoin Payment Box Public Key from your new <a href=\"https://gourl.io/editrecord/coin_boxes/0\" data-original-title=\"\" title=\"\" xss=removed>payment box</a>. <a href=\"https://gourl.io/images/paymentbox1.png\" data-original-title=\"\" title=\"\" xss=removed>Example</a></li><li xss=removed><span xss=removed>private_key</span><br>Crypotcoin Payment Box Private Key from your new payment box. <a href=\"https://gourl.io/images/paymentbox1.png\" data-original-title=\"\" title=\"\" xss=removed>Example</a></li><li xss=removed><span xss=removed>orderID</span><br>Your order id or product name; allow symbols: a..Z0..9_-@.; max size: 50 symbols, examples: \'order44\', \'premium_page\', \'product123<br>Some of your users can have the same orderID but combination \'orderID\'+\'userID\' should be unique. For example, on premium page you can use for all visitors: orderID=\"premium\" and userID=\"\" (empty; therefore system will automatically generate unique userID).</li><li id=\"userID\" xss=removed><span xss=removed>userID</span><br>Optional, manual setup unique identifier each of your users. By default the Payment Box uses randomly generated string in userID and saves it in user cookies.<br>You need to use a variable userID when you use Cryptocoin Payment Box for registered users on your website. You don\'t need to use userID if using Cryptobox for unregistered website visitors (for example, on website sign-up form).<br>IMPORTANT:<br>If you use Payment Box for registered users on your website, you need to set userID manually with a unique value for each of your registered user. It is better than to use cookies by default. Examples: \'user1\', \'user2\', \'3vIh9MjEis\' <br>allow symbols: a..Z0..9_-@.; max size: 50 symbols</li><li xss=removed><span xss=removed>userFormat</span></li><p><strong>Best Regards<br>freda<br>freda@gmail.com<br>computer engineering Department</strong></p>                                        \r\n                                    ', 'inbox', 'unread'),
(236, '2018-06-20 21:03:44', 33502989, 1643571, 'Alert Notification', '<p>Hello Sir/Madam,</p>\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n<li xss=removed><span xss=removed><br class=\"Apple-interchange-newline\">public_key</span><br>Crypotcoin Payment Box Public Key from your new <a href=\"https://gourl.io/editrecord/coin_boxes/0\" data-original-title=\"\" title=\"\" xss=removed>payment box</a>. <a href=\"https://gourl.io/images/paymentbox1.png\" data-original-title=\"\" title=\"\" xss=removed>Example</a></li><li xss=removed><span xss=removed>private_key</span><br>Crypotcoin Payment Box Private Key from your new payment box. <a href=\"https://gourl.io/images/paymentbox1.png\" data-original-title=\"\" title=\"\" xss=removed>Example</a></li><li xss=removed><span xss=removed>orderID</span><br>Your order id or product name; allow symbols: a..Z0..9_-@.; max size: 50 symbols, examples: \'order44\', \'premium_page\', \'product123<br>Some of your users can have the same orderID but combination \'orderID\'+\'userID\' should be unique. For example, on premium page you can use for all visitors: orderID=\"premium\" and userID=\"\" (empty; therefore system will automatically generate unique userID).</li><li id=\"userID\" xss=removed><span xss=removed>userID</span><br>Optional, manual setup unique identifier each of your users. By default the Payment Box uses randomly generated string in userID and saves it in user cookies.<br>You need to use a variable userID when you use Cryptocoin Payment Box for registered users on your website. You don\'t need to use userID if using Cryptobox for unregistered website visitors (for example, on website sign-up form).<br>IMPORTANT:<br>If you use Payment Box for registered users on your website, you need to set userID manually with a unique value for each of your registered user. It is better than to use cookies by default. Examples: \'user1\', \'user2\', \'3vIh9MjEis\' <br>allow symbols: a..Z0..9_-@.; max size: 50 symbols</li><li xss=removed><span xss=removed>userFormat</span></li><p><strong>Best Regards<br>freda<br>freda@gmail.com<br>computer engineering Department</strong></p>                                        \r\n                                    ', 'inbox', 'unread'),
(237, '2018-06-20 22:45:35', 41803192, 33502989, 'noticed', '<p>Hello Sir/Madam,</p><p>i welcome u to a neww setion<br></p>\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n<p><strong>Best Regards<br>ify<br>kennyendowed@hotmail.com<br>computer engineering Department</strong></p>                                        \r\n                                    ', 'inbox', 'unread'),
(238, '2018-06-21 14:20:51', 33502989, 41803192, 'Alert Notification', '<p>Hello Sir/Madam,</p><p><span xss=removed>and finally we need to download the css and jquery in the </span><a href=\"http://apycom.com/\" target=\"_blank\" xss=removed>Apycom</a><span xss=removed> page, in these case I used this one </span><a href=\"http://apycom.com/menus/8-white-smoke.html\" target=\"_blank\" xss=removed>apycom menu</a><span xss=removed> and just need to create one folder in the base on the framework called assets and then create another folder into the assets call menu like these \\assets\\menu and there in menu folder paste your menu jQuery that you download before, and that’s it, now you have a dynamic menu using CodeIgniter with database, you got these:</span><br></p>\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n<p><strong>Best Regards<br>freda<br>freda@gmail.com<br>computer engineering Department</strong></p>                                        \r\n                                    ', 'inbox', 'unread');

-- --------------------------------------------------------

--
-- Table structure for table `es_new_message`
--

CREATE TABLE `es_new_message` (
  `message_id` int(11) NOT NULL,
  `msid` int(10) NOT NULL,
  `date` datetime NOT NULL,
  `user_from` int(11) NOT NULL,
  `user_to` int(11) NOT NULL,
  `subject` varchar(100) NOT NULL,
  `content` text NOT NULL,
  `location` varchar(100) NOT NULL,
  `status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `es_new_message`
--

INSERT INTO `es_new_message` (`message_id`, `msid`, `date`, `user_from`, `user_to`, `subject`, `content`, `location`, `status`) VALUES
(1, 137, '2018-04-02 22:04:42', 1399031, 12404501, '', 'dude', 'inbox', 'read'),
(2, 138, '2018-04-02 22:04:49', 12404501, 1399031, '', 'how is u', 'inbox', 'read'),
(3, 139, '2018-04-02 22:04:58', 12404501, 1399031, '', 'good and u?', 'inbox', 'read'),
(4, 141, '2018-04-03 07:29:21', 1399031, 12404501, '', 'no one', 'inbox', 'read'),
(5, 142, '2018-04-03 07:30:18', 12404501, 1399031, '', 'hi', 'inbox', 'read'),
(6, 143, '2018-04-03 07:30:41', 1399031, 12404501, '', 'u', 'inbox', 'read'),
(7, 144, '2018-04-03 07:32:23', 12404501, 1399031, '', 'hello', 'inbox', 'read'),
(8, 145, '2018-04-03 07:34:06', 1399031, 12404501, '', 'u', 'inbox', 'read'),
(9, 146, '2018-04-03 07:36:14', 12404501, 1399031, '', 'ddsd', 'inbox', 'read'),
(10, 147, '2018-04-03 07:37:11', 1399031, 12404501, '', 'iok', 'inbox', 'read'),
(11, 148, '2018-04-03 07:37:23', 12404501, 1399031, '', 'uoooo', 'inbox', 'read'),
(12, 149, '2018-04-03 07:37:31', 1399031, 12404501, '', 'bbbyy', 'inbox', 'read'),
(13, 150, '2018-04-03 07:46:41', 12404501, 1399031, '', 'call my baby', 'inbox', 'read'),
(14, 151, '2018-04-03 07:47:33', 1399031, 12404501, '', 'y ?', 'inbox', 'read'),
(15, 152, '2018-04-03 07:47:52', 12404501, 1399031, '', 'waytin happen ?', 'inbox', 'read'),
(16, 153, '2018-04-03 19:45:58', 1399031, 12404501, '', 'y woul u say that ?', 'inbox', 'read'),
(17, 154, '2018-04-03 19:46:16', 12404501, 1399031, '', 'riot', 'inbox', 'read'),
(18, 155, '2018-04-03 19:46:55', 1399031, 12404501, '', '', 'inbox', 'read'),
(19, 156, '2018-04-03 19:47:06', 12404501, 1399031, '', '', 'inbox', 'read'),
(20, 157, '2018-04-04 02:06:38', 1399031, 12404501, '', 'wat ?', 'inbox', 'read'),
(21, 158, '2018-04-04 02:11:52', 12404501, 1399031, '', 'u asking me ?', 'inbox', 'read'),
(22, 159, '2018-04-04 02:15:20', 1399031, 12404501, '', 'yes sir', 'inbox', 'read'),
(23, 83, '2018-04-04 02:17:19', 1643571, 1399031, '', 'wat y?', 'inbox', 'unread'),
(24, 160, '2018-04-04 02:18:29', 12404501, 1399031, '', 'uuuuu', 'inbox', 'read'),
(25, 164, '2018-04-06 15:46:21', 1643571, 1399031, '', 'light', 'inbox', 'unread'),
(26, 165, '2018-04-06 15:48:06', 1399031, 1643571, '', 'nivk', 'inbox', 'unread'),
(27, 166, '2018-04-06 15:49:52', 1643571, 1399031, '', 'ok boss', 'inbox', 'unread'),
(28, 167, '2018-04-07 05:13:15', 1399031, 1643571, '', 'hello', 'inbox', 'unread'),
(29, 160, '2018-04-07 09:26:36', 12404501, 1399031, '', 'count', 'inbox', 'read'),
(30, 169, '2018-04-07 09:27:50', 1399031, 12404501, '', 'hello mate', 'inbox', 'read'),
(31, 170, '2018-04-07 09:29:53', 12404501, 1399031, '', 'what ?', 'inbox', 'read'),
(32, 171, '2018-04-07 09:31:50', 1399031, 12404501, '', 'test father', 'inbox', 'read'),
(33, 172, '2018-04-07 09:39:26', 12404501, 1399031, '', 'knock', 'inbox', 'read'),
(34, 173, '2018-04-07 09:43:22', 1399031, 12404501, '', 'lord ', 'inbox', 'read'),
(35, 174, '2018-04-07 10:08:47', 12404501, 1399031, '', 'vu', 'inbox', 'read'),
(36, 175, '2018-04-07 10:10:30', 1399031, 12404501, '', 'ml', 'inbox', 'read'),
(37, 176, '2018-04-07 10:11:11', 12404501, 1399031, '', 'jj', 'inbox', 'read'),
(38, 177, '2018-04-07 10:11:58', 1399031, 12404501, '', 'mmm', 'inbox', 'read'),
(39, 178, '2018-04-07 10:14:30', 12404501, 1399031, '', 'vvvv', 'inbox', 'read'),
(40, 179, '2018-04-07 10:15:22', 1399031, 12404501, '', 'zzzzz', 'inbox', 'read'),
(41, 180, '2018-04-07 10:47:56', 12404501, 1399031, '', 'avai', 'inbox', 'read'),
(42, 181, '2018-04-07 11:21:42', 1399031, 12404501, '', 'king', 'inbox', 'read'),
(43, 182, '2018-04-07 11:24:33', 12404501, 1399031, '', 'ieyusdui', 'inbox', 'read'),
(44, 182, '2018-04-07 11:26:52', 12404501, 1399031, '', 'again', 'inbox', 'read'),
(45, 184, '2018-04-07 11:31:05', 1399031, 12404501, '', 'hello', 'inbox', 'read'),
(46, 185, '2018-04-07 11:31:25', 12404501, 1399031, '', 'it is me from the other side ', 'inbox', 'read'),
(47, 186, '2018-04-07 11:32:29', 1399031, 12404501, '', 'yu', 'inbox', 'read'),
(48, 187, '2018-04-07 11:32:46', 12404501, 1399031, '', 'create me', 'inbox', 'read'),
(49, 188, '2018-04-07 11:34:55', 1399031, 12404501, '', 'ok', 'inbox', 'read'),
(50, 189, '2018-04-07 11:36:00', 12404501, 1399031, '', 'wat ok', 'inbox', 'read'),
(51, 190, '2018-04-07 11:38:27', 1399031, 12404501, '', 'how is u', 'inbox', 'read'),
(52, 191, '2018-04-07 11:38:57', 12404501, 1399031, '', 'ok i guess and u ?', 'inbox', 'read'),
(53, 192, '2018-04-07 11:39:34', 1399031, 12404501, '', 'i think am ok', 'inbox', 'read'),
(54, 193, '2018-04-07 11:40:09', 12404501, 1399031, '', 'ur not sure y ?', 'inbox', 'read'),
(55, 194, '2018-04-07 11:40:25', 1399031, 12404501, '', 'cos am not', 'inbox', 'read'),
(56, 195, '2018-04-07 11:40:49', 12404501, 1399031, '', 'hmmmm', 'inbox', 'read'),
(57, 196, '2018-04-07 11:41:04', 1399031, 12404501, '', 'what that', 'inbox', 'read'),
(58, 197, '2018-04-07 11:42:07', 12404501, 1399031, '', 'that wat', 'inbox', 'read'),
(59, 197, '2018-04-07 11:42:15', 12404501, 1399031, '', '', 'inbox', 'read'),
(60, 199, '2018-04-07 11:42:30', 1399031, 12404501, '', 'wat u make if thay', 'inbox', 'read'),
(61, 200, '2018-04-07 11:43:41', 12404501, 1399031, '', 'nothing', 'inbox', 'read'),
(62, 201, '2018-04-07 11:44:06', 1399031, 12404501, '', 'ur mad ', 'inbox', 'read'),
(63, 202, '2018-04-07 11:46:27', 12404501, 1399031, '', 'energy', 'inbox', 'read'),
(64, 203, '2018-04-07 11:46:51', 1399031, 12404501, '', 'and ', 'inbox', 'read'),
(65, 204, '2018-04-07 11:47:23', 12404501, 1399031, '', 'bite me', 'inbox', 'read'),
(66, 204, '2018-04-07 11:47:31', 12404501, 1399031, '', 'y ?', 'inbox', 'read'),
(67, 205, '2018-04-07 11:47:41', 1399031, 12404501, '', 'no reason', 'inbox', 'read'),
(68, 207, '2018-04-07 12:01:30', 12404501, 1399031, '', 'u', 'inbox', 'read'),
(69, 208, '2018-04-07 12:02:00', 1399031, 12404501, '', 'uu', 'inbox', 'read'),
(70, 209, '2018-04-07 12:02:36', 12404501, 1399031, '', 'yui', 'inbox', 'read'),
(71, 210, '2018-04-07 13:54:03', 1399031, 12404501, '', 'hello james', 'inbox', 'read'),
(72, 211, '2018-04-07 13:54:22', 12404501, 1399031, '', 'sorry i mean kenny', 'inbox', 'read'),
(73, 212, '2018-04-07 13:55:11', 1399031, 12404501, '', 'what ?', 'inbox', 'read'),
(74, 213, '2018-04-07 13:55:23', 12404501, 1399031, '', 'ask me again', 'inbox', 'read'),
(75, 214, '2018-04-07 13:55:48', 1399031, 12404501, '', 'errro', 'inbox', 'read'),
(76, 215, '2018-04-07 13:56:12', 12404501, 1399031, '', 'belss', 'inbox', 'read'),
(77, 168, '2018-04-07 20:14:09', 1643571, 1399031, '', 'back', 'inbox', 'unread'),
(78, 216, '2018-04-07 20:16:29', 1399031, 12404501, '', 'hello', 'inbox', 'read'),
(79, 218, '2018-04-07 20:17:15', 12404501, 1399031, '', 'xup', 'inbox', 'read'),
(80, 219, '2018-04-07 20:17:34', 1399031, 12404501, '', 'how u doing ', 'inbox', 'read'),
(81, 220, '2018-04-07 20:22:35', 12404501, 1399031, '', 'james', 'inbox', 'read'),
(82, 221, '2018-04-07 20:22:50', 1399031, 12404501, '', 'james', 'inbox', 'read'),
(83, 222, '2018-04-07 20:28:54', 12404501, 1399031, '', 'joy', 'inbox', 'read'),
(84, 223, '2018-04-07 20:29:14', 1399031, 12404501, '', 'love', 'inbox', 'read'),
(85, 224, '2018-04-07 20:32:10', 12404501, 1399031, '', 'move keny', 'inbox', 'read'),
(86, 225, '2018-04-07 20:32:29', 1399031, 12404501, '', 'body', 'inbox', 'read'),
(87, 226, '2018-04-07 20:35:51', 12404501, 1399031, '', 'go crazy', 'inbox', 'read'),
(88, 227, '2018-04-07 20:37:39', 1399031, 12404501, '', 'say', 'inbox', 'read'),
(89, 228, '2018-04-07 20:38:36', 12404501, 1399031, '', 'ok go', 'inbox', 'read'),
(90, 229, '2018-04-07 20:42:47', 1399031, 12404501, '', 'where ?', 'inbox', 'read'),
(91, 230, '2018-04-07 20:43:54', 12404501, 1399031, '', 'jos', 'inbox', 'read'),
(92, 230, '2018-04-07 20:44:39', 12404501, 1399031, '', 'check', 'inbox', 'read'),
(93, 232, '2018-04-07 20:52:21', 1399031, 12404501, '', 'see', 'inbox', 'read'),
(94, 233, '2018-04-07 20:56:30', 12404501, 1399031, '', 'rock', 'inbox', 'read'),
(95, 234, '2018-04-07 20:57:56', 1399031, 12404501, '', 'monica', 'inbox', 'read'),
(96, 235, '2018-04-07 20:58:24', 12404501, 1399031, '', 'wat', 'inbox', 'read');

-- --------------------------------------------------------

--
-- Table structure for table `es_notification`
--

CREATE TABLE `es_notification` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `type` varchar(100) NOT NULL,
  `notification` text NOT NULL,
  `status` int(1) NOT NULL,
  `date` varchar(50) NOT NULL,
  `time` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='used for various form of notification to a given id';

--
-- Dumping data for table `es_notification`
--

INSERT INTO `es_notification` (`id`, `user_id`, `type`, `notification`, `status`, `date`, `time`) VALUES
(1, 1798558, 'Course Assigned', 'You have been assigned some course(s). Kindly Check your courses Catalog to verify', 0, '06-06-2018 03:30 PM', 1528299017),
(2, 15339222, 'Course Assigned', 'You have been assigned some course(s). Kindly Check your courses Catalog to verify', 0, '06-06-2018 03:31 PM', 1528299066),
(3, 14189120, 'Course Assigned', 'You have been registered to networking course for Semester [ 2 ]', 0, '06-08-2018 07:11 PM', 1528485101),
(4, 14189120, 'Course(s) De-Registered', 'You have been de - registered from networking course for Semester [ 2 ]', 0, '06-08-2018 07:21 PM', 1528485673),
(5, 28756431, 'Course Assigned', 'You have been registered to discovery new age course for Semester [ 3 ]', 0, '06-08-2018 07:22 PM', 1528485763),
(6, 16156126, 'Course Assigned', 'You have been registered to networking course for Semester [ 2 ]', 0, '06-08-2018 07:27 PM', 1528486026),
(7, 28756431, 'Course(s) De-Registered', 'You have been de - registered from networking course for Semester [ 2 ]', 0, '06-08-2018 07:30 PM', 1528486238),
(8, 16156126, 'Course(s) De-Registered', 'You have been de - registered from networking course for Semester [ 2 ]', 0, '06-08-2018 07:30 PM', 1528486238),
(9, 28756431, 'Course Assigned', 'You have been registered to networking course for Semester [ 2 ]', 0, '06-08-2018 07:31 PM', 1528486274),
(10, 16156126, 'Course Assigned', 'You have been registered to networking course for Semester [ 2 ]', 0, '06-08-2018 07:31 PM', 1528486274),
(11, 28756431, 'Course(s) De-Registered', 'You have been de - registered from networking course for Semester [ 2 ]', 0, '06-08-2018 07:31 PM', 1528486291),
(12, 16156126, 'Course(s) De-Registered', 'You have been de - registered from networking course for Semester [ 2 ]', 0, '06-08-2018 07:31 PM', 1528486291),
(13, 28756431, 'Course Assigned', 'You have been registered to networking course for Semester [ 2 ]', 0, '06-22-2018 09:02 PM', 1529701340),
(14, 16156126, 'Course Assigned', 'You have been registered to networking course for Semester [ 2 ]', 0, '06-22-2018 09:02 PM', 1529701340);

-- --------------------------------------------------------

--
-- Table structure for table `es_post_board`
--

CREATE TABLE `es_post_board` (
  `id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `school_id` int(11) NOT NULL,
  `program_type` int(8) NOT NULL,
  `user_id` int(11) NOT NULL,
  `type` varchar(100) NOT NULL,
  `mode` int(1) NOT NULL DEFAULT '0',
  `post` text NOT NULL,
  `date` varchar(50) NOT NULL,
  `time` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `es_post_board`
--

INSERT INTO `es_post_board` (`id`, `post_id`, `school_id`, `program_type`, `user_id`, `type`, `mode`, `post`, `date`, `time`) VALUES
(1, 8677225, 7234089, 1, 1399031, '3', 1, 'https://stackoverflow.com/.../call-to-a-member-function-num-rows-on-a-non-object\r\nDec 23, 2013 - Calling ->result(), you have the result of the query execution in an array. You might call your variable like this, for example : $cours = $this->db->from(\'cour\') ->where(\'id_element\',(int) $id_element[0]->id) ->limit($limit, $start) ->get() ->result();. Then change your test as : if (count($cours)', '10-04-2018 07:26 PM', 1523388366),
(2, 12543514, 7234089, 1, 1399031, '4', 0, 'Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven\'t heard of them accusamus labore sustainable VHS.', '10-04-2018 08:58 PM', 1523393882),
(3, 8624065, 7234089, 1, 1399031, '5', 0, 'ursus non nisi sed, porttitor dignissim erat. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc facilisis commodo lectus. Vivamus vel tincidunt enim, non vulputate ipsum. Ut pellentesque consectetur arcu sit amet scelerisque. Fusce commodo leo eros, ut eleifend massa congue at.', '10-04-2018 08:58 PM', 1523393914),
(4, 36566774, 7234089, 1, 1399031, '3', 1, 'odio, eu varius nulla fringilla adipiscing. Praesent posuere blandit diam, sit amet suscipit justo consequat sed. Duis cursus volutpat ante at convallis. Integer posuere a enim eget imperdiet. Nulla consequat dui quis purus molestie fermentum. Donec faucibus sapien eu nisl placerat auctor. Pellentesque quis justo lobortis, tempor sapien vitae, dictum orci.', '10-04-2018 09:14 PM', 1523394883),
(5, 21245170, 7234089, 1, 33502989, '5', 1, 'coming online tech', '10-06-2018 02:32 PM', 1528641143);

-- --------------------------------------------------------

--
-- Table structure for table `es_schools`
--

CREATE TABLE `es_schools` (
  `id` int(11) NOT NULL,
  `school_id` varchar(11) NOT NULL,
  `school_name` varchar(150) NOT NULL,
  `school_abrv` varchar(50) NOT NULL,
  `school_type` varchar(10) NOT NULL,
  `school_location` varchar(100) NOT NULL,
  `school_population` int(6) NOT NULL,
  `bsc_id` int(8) DEFAULT NULL,
  `ms_id` int(8) DEFAULT NULL,
  `BSCandMASTER` int(8) DEFAULT NULL,
  `date` varchar(50) NOT NULL,
  `sub` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='holds the names of each school to add, and issues a unique ID';

--
-- Dumping data for table `es_schools`
--

INSERT INTO `es_schools` (`id`, `school_id`, `school_name`, `school_abrv`, `school_type`, `school_location`, `school_population`, `bsc_id`, `ms_id`, `BSCandMASTER`, `date`, `sub`) VALUES
(1, '22416408', 'All Nations Universty', 'ANUC', 'Private', 'Kofidua', 900, 0, 0, 0, '21-01-2017 05:16 AM', 1),
(2, '7234089', 'Kwame Nkrumah University Of Science And Technology', 'KNUST', 'Public', 'Kumasi, Ghana', 5000, 1, 2, 0, '21-01-2017 07:48 AM', 1),
(3, '15460986', 'Ghana Telecom University College', 'GTUC', 'Private', 'Tesano, Accra', 500, 0, 0, 0, '22-01-2017 06:51 AM', 1),
(4, '52702370', 'Sikkim Manipal University', 'SMU', 'Private', 'Accra', 1000, 1, 0, 0, '24-01-2017 11:04 AM', 1),
(5, '8678748', 'African Institute Of Technology', 'AIT', 'Private', 'Accra', 87, 0, 0, 0, '24-01-2017 11:09 AM', 1),
(6, '410153', 'Ahmadu Bello University', 'ABU', 'Public', 'Zaria', 25000, 0, 0, 0, '23-02-2017 09:47 AM', 1),
(7, '859512', 'Ozoro', 'OZ', 'Public', 'Warri', 9000, 0, 0, 0, '02-03-2017 02:06 PM', 1),
(9, '5159062', 'Westconson University Ghana', 'WUG', 'Private', 'Tema Ghana', 890000, 0, 0, 0, '25-08-2017 09:42 PM', 1),
(15, '30861004', 'Gdrghdhter', 'BNH', 'Private', 'Port Harcourt', 3545, 1, 0, 0, '26-08-2017 02:13 AM', 1),
(16, '60572239', 'ROSE MARY', 'RS', 'Private', 'Port Harcourt', 35345, 0, 0, 0, '26-08-2017 02:28 AM', 1),
(17, '23915380', 'ANGEL', 'AS', 'Private', 'Port Harcourt', 24324, 0, 2, 0, '26-08-2017 02:29 AM', 1),
(19, '83665224', 'Faith Church College', 'FCC', 'Private', 'Port Harcourt', 9000, 0, 2, 0, '27-08-2017 04:32 PM', 1),
(20, '78255925', 'Rashford Acedemic', 'RAC', 'Private', 'Nigerian', 2147483647, 0, 2, 0, '13-10-2017 01:36 PM', 1),
(21, '28793146', 'Lagos Business School', 'LBS', 'Private', 'Sangotedo, Lekki Lagos', 70000, 0, 2, 0, '13-10-2017 01:57 PM', 1),
(22, '3623038', 'Amendo Ayolowo', 'AMA', 'Public', 'Koforidua Ghana Lagos ', 45634342, 1, 0, 0, '04-11-2017 11:40 AM', 1),
(23, '42790694', 'Post Gram', 'PG', 'Private', 'Ghana', 43565746, 1, 0, 0, '05-11-2017 07:40 AM', 1),
(24, '13779351', 'grant', 'gt', '', 'Port Harcourt', 232, 1, 2, 3, '11-03-2018 03:56 AM', 1),
(25, '72216765', 'faith overcoat', 'fog', 'Private', 'warri', 5453, 1, 2, 0, '11-03-2018 04:37 AM', 1),
(26, '41999079', 'friday night', 'fn', 'Public', 'asaba road', 32455, 0, 0, 0, '11-03-2018 06:50 AM', 1),
(27, '2395803', 'love quest', 'lf', 'Public', 'delta warri', 2489, 0, 0, 0, '11-03-2018 08:44 AM', 1),
(30, '8303950', 'victoria', 'vc', '', 'WARRI , Port Harcourt', 5453, 1, 2, 3, '11-03-2018 09:01 AM', 1),
(31, '38227006', 'PRObook', 'pb', 'Public', 'south west', 232, 1, NULL, NULL, '11-03-2018 09:07 AM', 1),
(32, '14313594', 'Atlant Responsive Ville', 'Arv', 'Public', 'west road texas', 6574567, NULL, 2, NULL, '12-03-2018 04:32 AM', 1);

-- --------------------------------------------------------

--
-- Table structure for table `es_src`
--

CREATE TABLE `es_src` (
  `id` int(11) NOT NULL,
  `school_id` int(11) NOT NULL,
  `program_type` int(8) NOT NULL,
  `user_id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `date` varchar(50) NOT NULL,
  `time` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `es_src`
--

INSERT INTO `es_src` (`id`, `school_id`, `program_type`, `user_id`, `username`, `date`, `time`) VALUES
(1, 22416408, 0, 4586861, 'junior', '22-01-2017 05:16 AM', 1485062178),
(2, 52702370, 0, 41705994, 'smusrc', '24-01-2017 11:45 AM', 1485258353),
(3, 52702370, 0, 315491, 'akpan', '10-03-2017 08:16 AM', 1489133813),
(4, 83665224, 0, 32199532, 'akpan johnson', '27-08-2017 07:08 PM', 1503860902),
(5, 83665224, 0, 133565, 'emeka ajpan', '29-08-2017 02:51 AM', 1503975069),
(6, 83665224, 1, 4040493, 'rod pie', '29-08-2017 02:52 AM', 1503975142),
(7, 7234089, 1, 23297708, 'longjohn', '28-03-2018 04:03 PM', 1522253028);

-- --------------------------------------------------------

--
-- Table structure for table `es_students`
--

CREATE TABLE `es_students` (
  `id` int(11) NOT NULL,
  `school_id` int(11) NOT NULL,
  `department_id` int(11) NOT NULL,
  `program_type` int(8) NOT NULL,
  `user_id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `date` varchar(50) NOT NULL,
  `time` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='stores the students of each school';

--
-- Dumping data for table `es_students`
--

INSERT INTO `es_students` (`id`, `school_id`, `department_id`, `program_type`, `user_id`, `username`, `date`, `time`) VALUES
(1, 7234089, 0, 0, 6649424, 'anu08120022', '21-01-2017 06:27 PM', 1485023243),
(2, 52702370, 24857730, 1, 1706426, 'kennyendowed', '24-01-2017 11:27 AM', 1485257220),
(3, 52702370, 5696266, 0, 20612671, 'joy', '10-03-2017 08:14 AM', 1489133650),
(4, 410153, 29118056, 0, 10944935, 'love', '18-08-2017 09:07 AM', 1503047237),
(5, 410153, 15320319, 0, 58748504, 'james', '18-08-2017 09:19 AM', 1503047977),
(6, 410153, 232943, 0, 17205301, 'akpanj', '23-08-2017 07:58 PM', 1503518322),
(7, 83665224, 13632046, 1, 2416135, 'anu12220194', '27-08-2017 07:06 PM', 1503860778),
(8, 83665224, 18732482, 1, 86426694, 'emma okon', '29-08-2017 02:38 AM', 1503974304),
(9, 83665224, 34419430, 2, 14290945, 'icecube', '29-08-2017 12:40 PM', 1504010430),
(10, 83665224, 34419430, 2, 64061583, 'faithozor', '30-08-2017 01:59 PM', 1504101543),
(11, 28793146, 24514062, 2, 1513664, 'godwin anayo igbokwe', '13-10-2017 02:01 PM', 1507903285),
(12, 28793146, 76257982, 2, 3601563, 'favour', '13-10-2017 02:01 PM', 1507903302),
(13, 28793146, 4690297, 2, 26443866, 'ab', '13-10-2017 02:02 PM', 1507903322),
(14, 28793146, 18240828, 2, 11383790, 'kene', '13-10-2017 02:02 PM', 1507903340),
(15, 28793146, 27675524, 2, 34637256, 'janto', '13-10-2017 02:02 PM', 1507903351),
(16, 83665224, 33755555, 2, 19056270, 'flavour', '20-10-2017 09:57 PM', 1508536630),
(17, 83665224, 33755555, 2, 61970376, 'victoria', '20-10-2017 10:14 PM', 1508537660),
(18, 3623038, 0, 0, 32696578, 'judith', '04-11-2017 09:57 PM', 1509832676),
(19, 3623038, 0, 0, 16091177, 'rose', '05-11-2017 07:19 AM', 1509866363),
(20, 42790694, 0, 1, 11965992, 'wineslow', '05-11-2017 07:55 AM', 1509868535),
(21, 42790694, 0, 1, 15578241, 'wizkid', '05-11-2017 08:22 AM', 1509870157),
(22, 3623038, 0, 1, 6530504, 'faith', '05-11-2017 11:12 PM', 1509923541),
(24, 7234089, 90264231, 1, 28756431, 'anita', '27-03-2018 09:45 PM', 1522187136),
(25, 7234089, 45842811, 2, 47232902, 'sharon', '27-03-2018 09:50 PM', 1522187408),
(26, 7234089, 45842811, 2, 17094296, 'kate', '27-03-2018 10:22 PM', 1522189378),
(27, 7234089, 90264231, 1, 16156126, 'flexydea', '30-03-2018 05:26 PM', 1522430783),
(28, 7234089, 90264231, 1, 2488296, 'nivi', '30-03-2018 05:32 PM', 1522431170),
(29, 7234089, 1833053, 1, 14189120, 'jules', '30-03-2018 06:26 PM', 1522434408),
(30, 7234089, 45842811, 2, 18934696, 'vivian', '12-06-2018 09:11 PM', 1528837882),
(31, 7234089, 45842811, 2, 10642, 'liket', '12-06-2018 09:15 PM', 1528838159),
(32, 7234089, 45842811, 2, 85061943, 'PILL', '13-06-2018 03:53 AM', 1528861990),
(33, 7234089, 45842811, 2, 27625060, 'DOCK', '13-06-2018 03:56 AM', 1528862196),
(34, 7234089, 45842811, 2, 54149815, 'ask me', '13-06-2018 04:03 AM', 1528862603),
(35, 7234089, 45842811, 2, 6024473, 'mi', '13-06-2018 04:05 AM', 1528862757),
(36, 7234089, 1833053, 1, 5811823, 'giftgrace', '13-06-2018 03:33 PM', 1528903994),
(37, 7234089, 90264231, 1, 29510594, 'franky', '13-06-2018 03:37 PM', 1528904258),
(38, 7234089, 90264231, 1, 9169626, 'nokia', '13-06-2018 03:39 PM', 1528904367),
(39, 7234089, 90264231, 1, 3758552, 'okpeac', '13-06-2018 06:23 PM', 1528914185),
(40, 7234089, 90264231, 1, 19867799, 'rich', '13-06-2018 09:31 PM', 1528925475),
(41, 7234089, 1833053, 1, 43778814, 'mission', '13-06-2018 09:32 PM', 1528925571),
(42, 7234089, 90264231, 1, 6177750, 'kessina', '13-06-2018 09:33 PM', 1528925632),
(43, 7234089, 90264231, 1, 8716312, 'flexy', '14-06-2018 02:45 PM', 1528987553),
(44, 7234089, 90264231, 1, 60713832, 'kelvin', '14-06-2018 02:46 PM', 1528987577),
(45, 7234089, 1833053, 1, 12436212, 'ruki', '14-06-2018 02:48 PM', 1528987732);

-- --------------------------------------------------------

--
-- Table structure for table `es_time_table`
--

CREATE TABLE `es_time_table` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `start` varchar(48) NOT NULL,
  `end` varchar(48) NOT NULL,
  `allDay` varchar(5) NOT NULL,
  `user_id` int(11) NOT NULL,
  `school_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `es_time_table`
--

INSERT INTO `es_time_table` (`id`, `title`, `description`, `start`, `end`, `allDay`, `user_id`, `school_id`) VALUES
(1, 'Math101', 'come early pls', '2018-06-03', '2018-06-09', 'false', 33502989, 7234089),
(2, 'english', 'come with books', '2018-06-03', '2018-06-05', 'false', 33502989, 7234089);

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

--
-- Dumping data for table `profile`
--

INSERT INTO `profile` (`id`, `user_id`, `first_name`, `middle_name`, `last_name`, `email`, `phone_number`, `gender`, `dob`, `club`, `date`) VALUES
(1, 2637349, '', '', '', '', '', '', '', '', ''),
(2, 29584418, '', '', '', '', '', '', '', '', ''),
(3, 61125672, '', '', '', '', '', '', '', '', ''),
(4, 7408655, '', '', '', '', '', '', '', '', ''),
(5, 24829242, '', '', '', '', '', '', '', '', ''),
(6, 6649424, 'Igwe', 'Chikaodi', 'Igwe', '', '', 'Male', '1-1-1920', '', '01-24-2017 12:09 AM'),
(7, 7803139, '', '', '', '', '', '', '', '', ''),
(8, 4586861, '', '', '', '', '', '', '', '', ''),
(10, 27310022, '', '', '', '', '', '', '', '', ''),
(11, 55551201, 'frank', 'jude', 'iphone', '', '', 'Male', '1-1-1920', '', '03-02-2017 09:40 AM'),
(12, 7690968, 'danso', 'jude', '', '', '', 'Male', '1-1-1920', '', '10-04-2017 09:37 AM'),
(13, 25430496, '', '', '', '', '', '', '', '', ''),
(14, 1706426, 'Kenneth', '', 'akpan', '', '', 'Male', '1-1-1920', '', '03-02-2017 10:00 AM'),
(15, 41705994, '', '', '', '', '', 'Male', '1-1-1920', '', '03-31-2017 11:14 PM'),
(16, 30996904, 'micheal', 'emeka', '', '', '', 'Male', '1-1-1920', '', '03-02-2017 10:04 AM'),
(17, 74326192, '', '', '', '', '', 'Male', '1-1-1920', '', '08-19-2017 05:24 AM'),
(18, 12411386, '', '', '', '', '', '', '', '', ''),
(19, 8607187, '', '', '', '', '', '', '', '', ''),
(20, 10146070, '', '', '', '', '', '', '', '', ''),
(21, 96155610, '', '', '', '', '', '', '', '', ''),
(22, 20529877, '', '', '', '', '', '', '', '', ''),
(23, 48295897, '', '', '', '', '', '', '', '', ''),
(24, 9850892, '', '', '', '', '', '', '', '', ''),
(25, 9397944, '', '', '', '', '', '', '', '', ''),
(26, 20383056, '', '', '', '', '', '', '', '', ''),
(27, 20612671, '', '', '', '', '', '', '', '', ''),
(28, 21161167, '', '', '', '', '', '', '', '', ''),
(29, 35919206, '', '', '', '', '', '', '', '', ''),
(30, 315491, '', '', '', '', '', '', '', '', ''),
(31, 10944935, '', '', '', '', '', '', '', '', ''),
(32, 58748504, '', '', '', '', '', '', '', '', ''),
(33, 2015371, '', '', '', '', '', '', '', '', ''),
(34, 201120, 'chi', 'ishola', '', 'Flexy_dea@yahoo.com', '0937777638797294', 'Male', '1-1-1920', '', '08-21-2017 09:01 AM'),
(35, 27101255, '', '', '', '', '', '', '', '', ''),
(36, 39352736, '', '', '', '', '', '', '', '', ''),
(37, 17205301, '', '', '', '', '', '', '', '', ''),
(38, 61928430, '', '', '', '', '', '', '', '', ''),
(39, 5361850, '', '', '', '', '', '', '', '', ''),
(40, 36561811, '', '', '', '', '', '', '', '', ''),
(41, 15977588, '', '', '', '', '', '', '', '', ''),
(42, 2416135, '', '', '', '', '', 'Male', '1-1-1920', '', '10-04-2017 09:15 AM'),
(43, 1983093, '', '', '', '', '', '', '', '', ''),
(44, 1683238, '', '', '', '', '', '', '', '', ''),
(45, 32199532, '', '', '', '', '', '', '', '', ''),
(46, 17819692, '', '', '', '', '', '', '', '', ''),
(47, 20898638, '', '', '', '', '', '', '', '', ''),
(48, 9477265, '', '', '', '', '', '', '', '', ''),
(49, 86426694, '', '', '', '', '', '', '', '', ''),
(50, 21818312, '', '', '', '', '', '', '', '', ''),
(51, 50141273, '', '', '', '', '', '', '', '', ''),
(52, 133565, '', '', '', '', '', '', '', '', ''),
(53, 4040493, '', '', '', '', '', '', '', '', ''),
(54, 14290945, 'ikena', '', 'lawson', 'icebulk@gmail.com', '0338479398', 'male', '', '', ''),
(55, 14479993, '', '', '', '', '', '', '', '', ''),
(56, 46188786, 'james', 'rolland', 'rshaford', 'rolljames@gmail.com', '09855363213', 'Male', '18-8-1934', '', '09-01-2017 01:51 PM'),
(57, 34019156, '', '', '', '', '', '', '', '', ''),
(58, 64061583, 'faith', 'money', 'ozor', 'faithmaze@gmail.com', '9984664774', 'Male', '1-1-1920', '', '10-06-2017 07:14 PM'),
(59, 3602355, 'johnson ', 'akpan', '', 'jakpan@gmail.com', '0803492774', 'Male', '17-7-1933', '', '09-01-2017 01:48 PM'),
(60, 62879796, '', '', '', '', '', '', '', '', ''),
(61, 1513664, '', '', '', '', '', '', '', '', ''),
(62, 3601563, 'Favour ', '', 'Nwedledim', 'Faves@gmail.com', '079899', 'Female', '2-3-1922', '', '10-13-2017 02:35 PM'),
(63, 26443866, '', '', '', '', '', '', '', '', ''),
(64, 11383790, '', '', '', '', '', '', '', '', ''),
(65, 34637256, '', '', '', '', '', '', '', '', ''),
(66, 4325123, '', '', '', '', '', '', '', '', ''),
(67, 51794236, '', '', '', '', '', '', '', '', ''),
(68, 38042674, '', '', '', '', '', '', '', '', ''),
(69, 75138733, '', '', '', '', '', '', '', '', ''),
(70, 36164624, '', '', '', '', '', '', '', '', ''),
(71, 34709149, '', '', '', '', '', '', '', '', ''),
(72, 26557955, '', '', '', '', '', '', '', '', ''),
(73, 22057891, '', '', '', '', '', '', '', '', ''),
(74, 11915561, '', '', '', '', '', '', '', '', ''),
(75, 6421320, '', '', '', '', '', '', '', '', ''),
(76, 20787250, '', '', '', '', '', '', '', '', ''),
(77, 22580293, '', '', '', '', '', '', '', '', ''),
(78, 19056270, 'flavour', 'maze', 'uxor', 'flavour@gmail.com', '0933467835', 'Female', '9-6-1937', '', '10-20-2017 10:05 PM'),
(79, 61970376, 'victoria', '', 'akpan', 'vic@gmail.com', '07878785435', 'Female', '16-8-1934', '', '10-20-2017 10:15 PM'),
(80, 447788, 'andrew', 'lee', '', 'andrsandra@gmail.com', '08745436456', 'Female', '14-7-1931', '', '11-02-2017 04:01 PM'),
(81, 32696578, '', '', '', '', '', '', '', '', ''),
(82, 16091177, '', '', '', '', '', '', '', '', ''),
(83, 11965992, '', '', '', '', '', '', '', '', ''),
(84, 15578241, '', '', '', '', '', '', '', '', ''),
(85, 6530504, '', '', '', '', '', '', '', '', ''),
(86, 8951043, '', '', '', '', '', '', '', '', '17-03-2018 01:53 AM'),
(87, 32009686, '', '', '', '', '', '', '', '', '17-03-2018 03:20 AM'),
(88, 686097, '', '', '', '', '', '', '', '', '17-03-2018 05:24 AM'),
(89, 5120932, '', '', '', '', '', '', '', '', '20-03-2018 06:45 PM'),
(90, 15642938, '', '', '', '', '', '', '', '', '21-03-2018 11:53 AM'),
(91, 3761733, '', '', '', '', '', '', '', '', '21-03-2018 11:54 AM'),
(92, 12404501, '', '', '', '', '', '', '', '', '21-03-2018 12:07 PM'),
(93, 1399031, '', '', '', '', '', '', '', '', '21-03-2018 12:08 PM'),
(95, 28756431, 'anita', 'kuma', 'adosuwa', '', '0374679293', '', '', '', '27-03-2018 09:45 PM'),
(96, 47232902, '', '', '', '', '', '', '', '', '27-03-2018 09:50 PM'),
(97, 17094296, '', '', '', 'kate@gmail.com', '', '', '', '', '27-03-2018 10:22 PM'),
(98, 15339222, '', '', '', 'nina@gmail.com', '', '', '', '', '28-03-2018 07:26 AM'),
(99, 19071539, '', '', '', 'danso@gmail.com', '', '', '', '', '28-03-2018 07:33 AM'),
(101, 991660, '', '', '', 'kuma@gmail.com', '', '', '', '', '28-03-2018 02:06 PM'),
(102, 11640177, '', '', '', 'ice@yahoo.com', '', '', '', '', '28-03-2018 02:13 PM'),
(103, 21761624, '', '', '', 'faithgift@gmail.com', '', '', '', '', '28-03-2018 03:07 PM'),
(104, 23297708, '', '', '', 'logjo@gmail.com', '', '', '', '', '28-03-2018 04:03 PM'),
(105, 29089135, '', '', '', 'fun@ymail.com', '', '', '', '', '28-03-2018 04:07 PM'),
(106, 16156126, '', '', '', 'flexydea@yhaoo.com', '', '', '', '', '30-03-2018 05:26 PM'),
(107, 2488296, '', '', '', 'nivi@yahoo.com', '', '', '', '', '30-03-2018 05:32 PM'),
(108, 14189120, '', '', '', 'julianna@gmail.com', '', '', '', '', '30-03-2018 06:26 PM'),
(109, 1643571, '', '', '', '', '', '', '', '', '03-04-2018 08:36 PM'),
(110, 27575948, '', '', '', '', '', '', '', '', '04-04-2018 09:12 PM'),
(111, 1798558, '', '', '', 'amadi@gmail.com', '', '', '', '', '22-05-2018 12:55 PM'),
(112, 19302545, '', '', '', 'julies@gmail.com', '', '', '', '', '22-05-2018 02:07 PM'),
(113, 12728487, '', '', '', 'muller@gmail.com', '', '', '', '', '22-05-2018 02:26 PM'),
(114, 33502989, '', '', '', 'freda@gmail.com', '', '', '', '', '30-05-2018 08:37 PM'),
(115, 18934696, '', '', '', 'kennyendowed@ymail.com', '', '', '', '', '12-06-2018 09:11 PM'),
(116, 10642, '', '', '', 'kenneyg50@gmail.com', '', '', '', '', '12-06-2018 09:15 PM'),
(117, 85061943, '', '', '', 'kenneyg50@gmail.com', '', '', '', '', '13-06-2018 03:53 AM'),
(118, 27625060, '', '', '', 'kenneyg50@gmail.com', '', '', '', '', '13-06-2018 03:56 AM'),
(119, 54149815, '', '', '', 'kenneyg50@gmail.com', '', '', '', '', '13-06-2018 04:03 AM'),
(120, 6024473, '', '', '', 'kenneyg50@gmail.com', '', '', '', '', '13-06-2018 04:05 AM'),
(121, 5811823, '', '', '', 'kenneyg50@gmail.com', '', '', '', '', '13-06-2018 03:33 PM'),
(122, 29510594, '', '', '', 'kenneyg50@gmail.com', '', '', '', '', '13-06-2018 03:37 PM'),
(123, 9169626, '', '', '', 'kenneyg50@gmail.com', '', '', '', '', '13-06-2018 03:39 PM'),
(124, 3758552, '', '', '', 'kennyendowed@ymail.com', '', '', '', '', '13-06-2018 06:23 PM'),
(125, 19867799, '', '', '', 'amadi@gmail.com', '', '', '', '', '13-06-2018 09:31 PM'),
(126, 43778814, '', '', '', 'kennyendowed@ymail.com', '', '', '', '', '13-06-2018 09:32 PM'),
(127, 6177750, '', '', '', 'kenneyg50@gmail.com', '', '', '', '', '13-06-2018 09:33 PM'),
(128, 8716312, '', '', '', 'flexy_dea@yahoo.com', '', '', '', '', '14-06-2018 02:45 PM'),
(129, 60713832, '', '', '', 'kenneyg50@gmail.com', '', '', '', '', '14-06-2018 02:46 PM'),
(130, 12436212, '', '', '', 'kenneyg50@gmail.com', '', '', '', '', '14-06-2018 02:48 PM'),
(131, 41945355, '', '', '', 'kenneyg50@gmail.com', '', '', '', '', '14-06-2018 02:57 PM'),
(132, 17906426, '', '', '', '', '', '', '', '', '20-06-2018 08:47 PM'),
(133, 41803192, '', '', '', '', '', '', '', '', '20-06-2018 09:11 PM');

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
(1, 6649424, '127.0.0.1', 'administrator', '$2a$07$SeBknntpZror9uyftVopmu61qg0ms8Qv1yV6FG.kQOSM.9QhmTo36', '', 'admin@admin.com', '', NULL, NULL, 'a4eREW7ra5Fd1B0nVT/XYe', 1268889823, 1539121703, 1, 1, 'Admin', 'istrator', 'ADMIN'),
(22, 12404501, '::1', 'kennyendowed', '$2y$08$Sovi29P53Icsz6qDKhbWS.thfPBvVEk7CeEO7exD7gYJ0gbZkC6Pu', NULL, 'kenneyg50@gmail.com', NULL, NULL, NULL, NULL, 1521634037, 1529693786, 0, 1, '7234089', '0', '2'),
(23, 1399031, '::1', 'james', '$2y$08$tuP0kHsYwutULD.TP/q0jOQ.p3GLIg84jaLuASxx5.uSPY.0sETT.', NULL, 'james@gmail.com', NULL, NULL, NULL, 'iScN6BtjLcdTqwVySUDhYO', 1521634080, 1529529128, 0, 1, '7234089', '0', '1'),
(27, 28756431, '::1', 'anita', '$2y$08$.vXCO/MNxgYAQNbnTTn8vOHdWzYyE5xu8m6.g5YqiGz3lHCnFL3RK', NULL, 'anita50@gmail.com', NULL, NULL, NULL, NULL, 1522187136, NULL, 0, 1, '7234089', '90264231', '1'),
(28, 47232902, '::1', 'sharon', '$2y$08$IkLT5/ga4ZXe/oizB6tFjefUs0cDoKihLOtNnpwJmS36w9793u8H6', NULL, 'aharon@yahoo.com', NULL, NULL, NULL, NULL, 1522187408, NULL, 0, 1, '7234089', '45842811', '2'),
(29, 17094296, '::1', 'kate', '$2y$08$hHTO2UhUuH1tEs7VZYsDVuLpAWWwEKOiFtAt9AqtM0LW0QF6A3ptC', NULL, 'kate@gmail.com', NULL, NULL, NULL, NULL, 1522189378, NULL, 0, 1, '7234089', '45842811', '2'),
(30, 15339222, '::1', 'nina', '$2y$08$Jng3QnIV1jBGSWrDKKVcLOlznAwBV83G8XH1fBy7G37mQZDsk5O/C', NULL, 'nina@gmail.com', NULL, NULL, NULL, NULL, 1522222011, 1531551605, 1, 1, '7234089', '90264231', '1'),
(31, 19071539, '::1', 'danso', '$2y$08$pnLgvTXFvxEnUBd6jRXXsequ9eq3f9JqOcwHiqNahwR1jHUmcOFxu', NULL, 'danso@gmail.com', NULL, NULL, NULL, NULL, 1522222396, 1526997832, 1, 1, '7234089', '45842811', '2'),
(33, 991660, '::1', 'kumana', '$2y$08$EqMUkpugTUSejhwhvfU.UemAaleusOS0qjC4bGvADYGmKhfXYC7mO', NULL, 'kuma@gmail.com', NULL, NULL, NULL, NULL, 1522245972, NULL, 0, 1, '7234089', '1833053', '1'),
(34, 11640177, '::1', 'iceprince', '$2y$08$TSnd6e.uuO6hop3ZS70lk.Rn7zxZ3mUhdNYP8b3BR5KTfQko5N0dm', NULL, 'ice@yahoo.com', NULL, NULL, NULL, NULL, 1522246418, NULL, 0, 1, '7234089', '45842811', '2'),
(35, 21761624, '::1', 'faith', '$2y$08$sLmtQ/G1eBcb0Jg3tgI.vu.p6Y5L/6sHql0ThpJxOtjLwIs6MhL2u', NULL, 'faithgift@gmail.com', NULL, NULL, NULL, NULL, 1522249631, NULL, 0, 1, '7234089', '90264231', '1'),
(37, 23297708, '::1', 'longjohn', '$2y$08$igafACGy1T0sPzBmDFtMleD0ESFuP9P5/86a.1jfyk.c/NHMBnI9.', NULL, 'logjo@gmail.com', NULL, NULL, NULL, NULL, 1522253028, NULL, 0, 1, '7234089', NULL, '1'),
(38, 29089135, '::1', 'funke', '$2y$08$UlwduHj9GXbTgeKIezSfe.BJdqMecrlAT8ldUJzcRyIQVFctgD3UW', NULL, 'fun@ymail.com', NULL, NULL, NULL, NULL, 1522253242, NULL, 0, 1, '7234089', NULL, '2'),
(39, 16156126, '::1', 'flexydea', '$2y$08$njSOB5JsjuBZBAGiL0eOZ.n2ABIPpKKsDr9b5Twk2mJkCX.Ms5bEy', NULL, 'flexydea@yhaoo.com', NULL, NULL, NULL, NULL, 1522430783, 1523823041, 1, 1, '7234089', '90264231', '1'),
(40, 2488296, '::1', 'nivi', '$2y$08$V6Ogc1VemK9r7TcZu1y2Yu/lvIaS21NJd7NtQN1eGqbp9.2rgSIry', NULL, 'nivi@yahoo.com', NULL, NULL, NULL, NULL, 1522431170, NULL, 0, 1, '7234089', '90264231', '1'),
(41, 14189120, '::1', 'jules', '$2y$08$.z3eoqpARiovFMMEbgCAo.5F6YsaRS98BFu7cYEyF5VjxOtzCYwq6', NULL, 'julianna@gmail.com', NULL, NULL, NULL, NULL, 1522434408, NULL, 0, 1, '7234089', '1833053', '1'),
(42, 1643571, '::1', 'godwin', '$2y$08$R0HxyUcvnGO..ItCdyBwCeeBzQxGNRmeWw4qpIRvZEQTpKIUulqx.', NULL, 'godwin@gmail.com', NULL, NULL, NULL, NULL, 1522787778, 1529693772, 0, 1, '7234089', '0', '1'),
(43, 27575948, '::1', 'need to known', '$2y$08$l5ctlS4tCiaifwFfmfxoium.OWtQQEmGGUxLk3bTdE9B1NhSVs2de', NULL, 'needtoknow@gmail.com', NULL, NULL, NULL, NULL, 1522876373, NULL, 0, 1, '72216765', '0', '2'),
(44, 1798558, '127.0.0.1', 'faith amadi', '$2y$08$e8CvaAZS6YfN0Z4BTPr.m.2rXXg4NpEv8Xri3vUIDFSkAdRBrhoUm', NULL, 'amadi@gmail.com', NULL, NULL, NULL, 'K6ZnMvDnMAHcfDo.Xvnbiu', 1526993751, 1531477195, 1, 1, '7234089', '1833053', '1'),
(45, 19302545, '::1', 'julius', '$2y$08$0Oi0sp/BfB9Ib3Jp1BjOS.fAveoogX67Mg4QRPluE/dZmwH22YUdi', NULL, 'julies@gmail.com', NULL, NULL, NULL, '4XzTIvk1RrIm9VBl4JWgTe', 1526998038, 1526998063, 1, 1, '7234089', '45842811', '2'),
(46, 12728487, '::1', 'muller', '$2y$08$mGS7rkUr1nMuA7pOCcwE.u5yMHOdh5sc7ttPPxhsWc66a40p/Y90W', NULL, 'muller@gmail.com', NULL, NULL, NULL, NULL, 1526999190, 1526999202, 1, 1, '7234089', '45842811', '2'),
(47, 33502989, '::1', 'freda', '$2y$08$SYAGbhxJfN7UIQlU/f5kVenpP21189yNIVP9RenGV0JaH3UFY4xge', NULL, 'freda@gmail.com', NULL, NULL, NULL, '.8/mKIdCUpfW/LscI/q.3u', 1527712672, 1531477258, 1, 1, '7234089', '1833053', '1'),
(48, 18934696, '::1', 'vivian', '$2y$08$SCABvCzcHu2c.eD6CofvieFsK./ikW.wBmBWb6dVaOeeF/9yteb3W', NULL, 'kennyendowed@ymail.com', '65ee7a9da5c413c0873c58573130748c70029a6a', NULL, NULL, NULL, 1528837883, NULL, 0, 0, '7234089', '45842811', '2'),
(49, 10642, '::1', 'liket', '$2y$08$ZrzlbNQMvXv7jOCBAVXG0OC9Uxt4hk6eAINFcnLfZTxJdhpZJjEjK', NULL, 'esurfonline@gmail.com', NULL, NULL, NULL, NULL, 1528838159, NULL, 0, 1, '7234089', '45842811', '2'),
(50, 85061943, '::1', 'PILL', '$2y$08$pe34tE2f4AiOj6MI29uAF.mwqEOPEfyC4B0kbjFNYKZ37Wi9TxnBG', NULL, 'esurfonline@gmail.com', '01f450eab6cbf3f3e87f9f96d8909328124dad2c', NULL, NULL, NULL, 1528861990, NULL, 0, 0, '7234089', '45842811', '2'),
(51, 27625060, '::1', 'DOCK', '$2y$08$CcWcWGmq/R5NZxyL1AXlV.OHu7k8rDm3bVl9F97syICS/b2ebsSgO', NULL, 'kenneyg50@gmail.com', 'd430c121d441655821745843ec214cc08486c160', NULL, NULL, NULL, 1528862196, NULL, 0, 0, '7234089', '45842811', '2'),
(52, 54149815, '::1', 'ask me', '$2y$08$3YN.7oDm/fiR6wQxWPczv.T3ynKWFT0Pna24V.464oHwdlFm1.wSS', NULL, 'kenneyg50@gmail.com', '8bc47330d49d3295e81057ceef95e52178c9c942', NULL, NULL, NULL, 1528862603, NULL, 0, 0, '7234089', '45842811', '2'),
(53, 6024473, '::1', 'mi', '$2y$08$Kq9eotJHQ5XKqN9OSqstveqrBPWVj5rQc9mchGmKkOZMbz4VcC/6K', NULL, 'kenneyg50@gmail.com', 'f987832f50c5dac6544211478e6dc24a67ee9cd2', NULL, NULL, NULL, 1528862757, NULL, 0, 0, '7234089', '45842811', '2'),
(54, 5811823, '::1', 'giftgrace', '$2y$08$C5Vd74UApZJpzu5QguG8FeopKHgN1pAG7.BcBtXpUwn99HW/54YjW', NULL, 'kenneyg50@gmail.com', '67c2c247fcfec0d43e07cd7b91bea0d704d5f5c7', NULL, NULL, NULL, 1528903994, NULL, 0, 0, '7234089', '1833053', '1'),
(55, 29510594, '::1', 'franky', '$2y$08$dFbPC89W9V6ZRCi//FIvR.FWBLl.TgU3aeRNpJLRe5p5D87JBBrgi', NULL, 'kenneyg50@gmail.com', '122a46328e11e2622f81eb5b63b92af9f1df97cc', NULL, NULL, NULL, 1528904258, NULL, 0, 0, '7234089', '90264231', '1'),
(56, 9169626, '::1', 'nokia', '$2y$08$ADGk2EcST8OzX/UFnLqSfusfQ5dnqt66N94q8gyimZGOQQa3SlrFq', NULL, 'kenneyg50@gmail.com', 'd4addc0fb6430c6f4a2ca905369d21bd97253018', NULL, NULL, NULL, 1528904367, NULL, 0, 0, '7234089', '90264231', '1'),
(57, 3758552, '127.0.0.1', 'okpeac', '$2y$08$M2OVxuxa0wI5HQNGDPGz5O2bgM3kR5vodEif4PjLoaG5flJgI1nrm', NULL, 'kennyendowed@ymail.com', '296e1b2704f38b6ea0e42b7723b1fd1b3e68ef94', NULL, NULL, NULL, 1528914185, NULL, 0, 0, '7234089', '90264231', '1'),
(58, 19867799, '127.0.0.1', 'rich', '$2y$08$g10G711T.0RadKBxi9GBHOPyLjGBq.Wj9aRF1qFSFf1wgrj4gEI6e', NULL, 'amadi@gmail.com', '789db410d9d99e0aa285ac1a5e21cee849b84387', NULL, NULL, NULL, 1528925475, NULL, 0, 0, '7234089', '90264231', '1'),
(59, 43778814, '127.0.0.1', 'mission', '$2y$08$I.G5OJn9M2cYi7B32sf4s.CL72uOKohzK8Zmf0kcn0Bo2DWryGPSK', NULL, 'kennyendowed@ymail.com', NULL, NULL, NULL, NULL, 1528925571, NULL, 0, 1, '7234089', '1833053', '1'),
(60, 6177750, '127.0.0.1', 'kessina', '$2y$08$eVpTNaQRNt1AQ5BFJhdOcuk8nZLFVndCy1JJbUZjzvzja2hrGoH6S', NULL, 'kenneyg50@gmail.com', NULL, NULL, NULL, NULL, 1528925632, NULL, 0, 1, '7234089', '90264231', '1'),
(61, 8716312, '::1', 'flexy', '$2y$08$egSZiZeYzLc/Ui.VWGLOV.IPXMeIHt0LovOHRGuEw8jou7PwW.pd.', NULL, 'flexy_dea@yahoo.com', 'b83ecd03b49f14e983660c89869350ee19b07f3b', NULL, NULL, NULL, 1528987553, NULL, 0, 0, '7234089', '90264231', '1'),
(62, 60713832, '::1', 'kelvin', '$2y$08$SioVgqbdTHEjs08RStHLUOxSiVhg0gO/Bh7EuqnqXg52kNRdGgxr2', NULL, 'kenneyg50@gmail.com', NULL, '.09lrR6u8S8RMeLc-FUsZ.ac3aebff384ffdade5', 1529138309, NULL, 1528987577, NULL, 0, 1, '7234089', '90264231', '1'),
(63, 12436212, '::1', 'ruki', '$2y$08$LNvP04tXULf28epcmsxxG.Vj6AGqnXOFuAGIuOo.z5Ozu4uHUCpsq', NULL, 'kenneyg50@gmail.com', NULL, NULL, NULL, NULL, 1528987732, 1528987931, 1, 1, '7234089', '1833053', '1'),
(64, 41945355, '::1', 'tina', '$2y$08$65XEdgRvmuMvv74rxG6vv.paQgSieezdDZFcEhYOZk6hSvhbabMPa', NULL, 'kenneyg50@gmail.com', NULL, NULL, NULL, NULL, 1528988279, 1528988324, 1, 1, '7234089', '1833053', '1'),
(65, 17906426, '::1', 'need', '$2y$08$RVIHoEofROcyLtNdrGnjeutJj14pkrmDfZ/nrNlzHm/ld0xfILLRW', NULL, 'neddtoknow@gmail.com', NULL, NULL, NULL, NULL, 1529527644, 1529527668, 0, 1, '7234089', '0', '0'),
(66, 41803192, '127.0.0.1', 'ify', '$2y$08$/JJotNGzeFv1cCcVYWXBIuebQiwF.vflemIDrbUSnGHGWboGiTRYa', NULL, 'kennyendowed@hotmail.com', NULL, NULL, NULL, 'AdT4P5K40fcKssDrMlXQru', 1529529110, 1529693864, 0, 1, '7234089', '0', '1');

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
(1, 1, 3),
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
-- Indexes for table `crypto_payments`
--
ALTER TABLE `crypto_payments`
  ADD PRIMARY KEY (`paymentID`),
  ADD UNIQUE KEY `key3` (`boxID`,`orderID`,`userID`,`txID`,`amount`,`addr`),
  ADD KEY `boxID` (`boxID`),
  ADD KEY `boxType` (`boxType`),
  ADD KEY `userID` (`userID`),
  ADD KEY `countryID` (`countryID`),
  ADD KEY `orderID` (`orderID`),
  ADD KEY `amount` (`amount`),
  ADD KEY `amountUSD` (`amountUSD`),
  ADD KEY `coinLabel` (`coinLabel`),
  ADD KEY `unrecognised` (`unrecognised`),
  ADD KEY `addr` (`addr`),
  ADD KEY `txID` (`txID`),
  ADD KEY `txDate` (`txDate`),
  ADD KEY `txConfirmed` (`txConfirmed`),
  ADD KEY `txCheckDate` (`txCheckDate`),
  ADD KEY `processed` (`processed`),
  ADD KEY `processedDate` (`processedDate`),
  ADD KEY `recordCreated` (`recordCreated`),
  ADD KEY `key1` (`boxID`,`orderID`),
  ADD KEY `key2` (`boxID`,`orderID`,`userID`);

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
-- Indexes for table `es_calendar`
--
ALTER TABLE `es_calendar`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `es_course`
--
ALTER TABLE `es_course`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `es_course_assign`
--
ALTER TABLE `es_course_assign`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `es_course_registered_students`
--
ALTER TABLE `es_course_registered_students`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `es_department`
--
ALTER TABLE `es_department`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `es_fees_statement`
--
ALTER TABLE `es_fees_statement`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `es_hod`
--
ALTER TABLE `es_hod`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `es_lecturer`
--
ALTER TABLE `es_lecturer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `es_librarian`
--
ALTER TABLE `es_librarian`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `es_messag`
--
ALTER TABLE `es_messag`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `es_message`
--
ALTER TABLE `es_message`
  ADD PRIMARY KEY (`message_id`),
  ADD KEY `date` (`date`),
  ADD KEY `user_from` (`user_from`),
  ADD KEY `user_to` (`user_to`),
  ADD KEY `subject` (`subject`);
ALTER TABLE `es_message` ADD FULLTEXT KEY `content` (`content`);

--
-- Indexes for table `es_message_sent`
--
ALTER TABLE `es_message_sent`
  ADD PRIMARY KEY (`message_id`);

--
-- Indexes for table `es_new_message`
--
ALTER TABLE `es_new_message`
  ADD PRIMARY KEY (`message_id`);

--
-- Indexes for table `es_notification`
--
ALTER TABLE `es_notification`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `es_post_board`
--
ALTER TABLE `es_post_board`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `es_schools`
--
ALTER TABLE `es_schools`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `es_src`
--
ALTER TABLE `es_src`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `es_students`
--
ALTER TABLE `es_students`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `es_time_table`
--
ALTER TABLE `es_time_table`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `groups`
--
ALTER TABLE `groups`
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
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `crypto_payments`
--
ALTER TABLE `crypto_payments`
  MODIFY `paymentID` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `es_admin`
--
ALTER TABLE `es_admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `es_avatar`
--
ALTER TABLE `es_avatar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `es_calendar`
--
ALTER TABLE `es_calendar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT for table `es_course`
--
ALTER TABLE `es_course`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT for table `es_course_assign`
--
ALTER TABLE `es_course_assign`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
--
-- AUTO_INCREMENT for table `es_course_registered_students`
--
ALTER TABLE `es_course_registered_students`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
--
-- AUTO_INCREMENT for table `es_department`
--
ALTER TABLE `es_department`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;
--
-- AUTO_INCREMENT for table `es_fees_statement`
--
ALTER TABLE `es_fees_statement`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `es_hod`
--
ALTER TABLE `es_hod`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT for table `es_lecturer`
--
ALTER TABLE `es_lecturer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT for table `es_librarian`
--
ALTER TABLE `es_librarian`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `es_messag`
--
ALTER TABLE `es_messag`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=152;
--
-- AUTO_INCREMENT for table `es_message`
--
ALTER TABLE `es_message`
  MODIFY `message_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=263;
--
-- AUTO_INCREMENT for table `es_message_sent`
--
ALTER TABLE `es_message_sent`
  MODIFY `message_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=239;
--
-- AUTO_INCREMENT for table `es_new_message`
--
ALTER TABLE `es_new_message`
  MODIFY `message_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;
--
-- AUTO_INCREMENT for table `es_notification`
--
ALTER TABLE `es_notification`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `es_post_board`
--
ALTER TABLE `es_post_board`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `es_schools`
--
ALTER TABLE `es_schools`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
--
-- AUTO_INCREMENT for table `es_src`
--
ALTER TABLE `es_src`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `es_students`
--
ALTER TABLE `es_students`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;
--
-- AUTO_INCREMENT for table `es_time_table`
--
ALTER TABLE `es_time_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `groups`
--
ALTER TABLE `groups`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `login_attempts`
--
ALTER TABLE `login_attempts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `profile`
--
ALTER TABLE `profile`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=134;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;
--
-- AUTO_INCREMENT for table `users_groups`
--
ALTER TABLE `users_groups`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `users_groups`
--
ALTER TABLE `users_groups`
  ADD CONSTRAINT `fk_users_groups_groups1` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_users_groups_users1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
