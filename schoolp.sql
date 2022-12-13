-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 04, 2022 at 07:57 AM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `schoolp`
--

-- --------------------------------------------------------

--
-- Table structure for table `activities`
--

CREATE TABLE `activities` (
  `id` int(11) NOT NULL,
  `studentid` int(11) NOT NULL,
  `present` varchar(10) NOT NULL,
  `absent` varchar(10) NOT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_by` int(11) DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `activities`
--

INSERT INTO `activities` (`id`, `studentid`, `present`, `absent`, `status`, `created_at`, `created_by`, `updated_at`, `updated_by`) VALUES
(1, 566, '240', '3', 1, '2022-06-27 03:23:58', 7, '2022-06-26 23:21:02', 7);

-- --------------------------------------------------------

--
-- Table structure for table `auth`
--

CREATE TABLE `auth` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `userName` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `contact` varchar(13) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `role_id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_by` int(11) DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `auth`
--

INSERT INTO `auth` (`id`, `name`, `userName`, `email`, `contact`, `password`, `role_id`, `image`, `status`, `created_at`, `created_by`, `updated_at`, `updated_by`) VALUES
(7, 'Nasim', 'nasim', 'nasim@gmail.com', '06065650', '6116afedcb0bc31083935c1c262ff4c9', 3, '', 1, '2022-06-28 03:55:36', NULL, '0000-00-00 00:00:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `fees_category`
--

CREATE TABLE `fees_category` (
  `id` int(11) NOT NULL,
  `name` varchar(40) NOT NULL,
  `amount` int(11) NOT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `fees_category`
--

INSERT INTO `fees_category` (`id`, `name`, `amount`, `status`) VALUES
(1, 'Session Fee', 4000, 1),
(2, 'Monthly fee', 5000, 1),
(3, 'Admission Fee', 3000, 1);

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE `groups` (
  `id` int(11) NOT NULL,
  `name` varchar(40) NOT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `groups`
--

INSERT INTO `groups` (`id`, `name`, `status`) VALUES
(1, 'Science', 1),
(2, 'Commerce', 1),
(3, 'Arts', 1);

-- --------------------------------------------------------

--
-- Table structure for table `months`
--

CREATE TABLE `months` (
  `id` int(11) NOT NULL,
  `name` varchar(40) NOT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `months`
--

INSERT INTO `months` (`id`, `name`, `status`) VALUES
(1, 'January', 1),
(2, 'February', 1),
(3, 'March', 1),
(4, 'April', 1),
(5, 'May', 1),
(6, 'June', 1),
(7, 'July', 1),
(8, 'August', 1),
(9, 'September', 1),
(10, 'October', 1),
(11, 'November', 1),
(12, 'December', 1);

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `id` int(11) NOT NULL,
  `role` varchar(255) NOT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`id`, `role`, `status`) VALUES
(1, 'superadmin', 1),
(2, 'admin', 1),
(3, 'user', 1);

-- --------------------------------------------------------

--
-- Table structure for table `routine`
--

CREATE TABLE `routine` (
  `id` int(11) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `sub_id` int(11) NOT NULL,
  `day` int(11) NOT NULL,
  `time` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` int(11) NOT NULL,
  `studentName` varchar(40) NOT NULL,
  `gender` varchar(11) NOT NULL,
  `fatherName` varchar(40) NOT NULL,
  `motherName` varchar(40) NOT NULL,
  `birthDate` date NOT NULL,
  `class` varchar(11) NOT NULL,
  `groups` varchar(20) NOT NULL,
  `classRoll` int(11) NOT NULL,
  `contactNo` varchar(13) NOT NULL,
  `status` int(11) DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_by` int(11) DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `studentName`, `gender`, `fatherName`, `motherName`, `birthDate`, `class`, `groups`, `classRoll`, `contactNo`, `status`, `created_at`, `created_by`, `updated_at`, `updated_by`) VALUES
(1, 'Nasim', 'Male', 'Abdul Hai', 'Meherunnessa', '2022-06-16', 'One', 'None', 1, '64564564', 1, '2022-06-28 08:34:16', 7, '2022-06-28 04:34:16', 0),
(2, 'Kamal Hosen', 'Male', 'Hosen', 'Komola', '2022-06-01', 'Two', 'None', 2, '060565650', 1, '2022-06-28 08:35:24', NULL, '2022-06-28 04:35:24', 0),
(3, 'Md Mahadi Rahman', 'Male', 'Rahman', 'Mobassera Rahman', '1999-05-27', 'Three', 'None', 3, '786877', 1, '2022-06-28 06:45:17', 0, '2022-06-28 02:45:17', 0),
(4, 'Rabib Hasan', 'Male', 'Hasan', 'Hasna', '1998-01-02', 'Four', 'None', 4, '5456457', 1, '2022-06-28 08:34:45', 0, '2022-06-28 04:34:45', 0),
(5, 'Ashab Uddin', 'Male', 'Ali', 'Asha Beghum', '1996-08-07', 'Four', 'None', 5, '65477', 1, '2022-06-28 08:37:16', 0, '2022-06-28 04:37:16', 0),
(6, 'Harunur Rashid', 'Male', 'Rashid', 'Halima', '1995-04-08', 'Three', 'None', 6, '7657457457', 1, '2022-06-28 04:39:28', 0, '2022-06-28 08:39:28', NULL),
(7, 'Miftaul Jannat', 'Female', 'Johir Uddin', 'Mafiya', '1996-07-05', 'Three', 'None', 7, '7687', 1, '2022-06-28 04:41:10', 0, '2022-06-28 08:41:10', NULL),
(8, 'Saiful Islam', 'Male', 'Saif Uddin', 'Sofiya', '1993-03-04', 'Five', 'None', 4, '6645645', 1, '2022-06-28 10:14:46', 0, '2022-06-28 14:14:46', NULL),
(9, 'Nasim Ahmed', 'Male', 'Abdul Hai', 'Meherunnesa', '1994-06-16', 'Five', 'None', 5, '76856', 1, '2022-06-28 14:16:50', 0, '2022-06-28 10:16:50', 0),
(10, 'Sofiya Akter', 'Female', 'Mohammad Sofiq', 'Shanta Beghum', '1998-02-05', 'Five', 'None', 8, '377835858', 1, '2022-06-28 10:18:45', 0, '2022-06-28 14:18:45', NULL),
(11, 'Shahnaj Akter', 'Female', 'Shaho Alom', 'Shahina Beghum', '1999-04-06', 'Five', 'None', 1, '76788', 1, '2022-06-28 10:20:24', 0, '2022-06-28 14:20:24', NULL),
(12, 'Shahina Akter', 'Female', 'Md Shahin', 'Sharmin Akter', '2000-01-17', 'Five', 'None', 10, '67777766', 1, '2022-06-28 10:21:55', 0, '2022-06-28 14:21:55', NULL),
(13, 'Shanta Akter', 'Female', 'Giyas Uddin', 'Sofiya Beghum', '2000-11-22', 'Three', 'None', 9, '878678', 1, '2022-06-28 10:23:25', 0, '2022-06-28 14:23:25', NULL),
(14, 'Hasina', 'Female', 'Mujib', 'Fazilutennesa', '1996-10-28', 'Four', 'None', 10, '686488', 1, '2022-06-28 10:25:46', 0, '2022-06-28 14:25:46', NULL),
(15, 'Shahidul Islam', 'Male', 'Shahid', 'Shahida Beghum', '2015-01-09', 'One', 'None', 2, '6787876767', 1, '2022-07-02 02:46:14', 0, '2022-07-02 06:46:14', NULL),
(16, 'Harunur Rashid', 'Male', 'Rashid Mia', 'Rashida', '2016-03-24', 'One', 'None', 3, '6756567', 1, '2022-07-02 02:47:05', 0, '2022-07-02 06:47:05', NULL),
(17, 'Mifta', 'Female', 'Monir Hossen', 'Maya', '2016-02-03', 'One', 'None', 4, '646477', 1, '2022-07-02 02:47:58', 0, '2022-07-02 06:47:58', NULL),
(18, 'Arif Hossen', 'Male', 'Alli Hossen', 'Aaysha', '2016-03-01', 'One', 'None', 5, '5464645', 1, '2022-07-02 02:48:53', 0, '2022-07-02 06:48:53', NULL),
(19, 'Tawhid', 'Male', 'Father', 'Mother', '2016-02-03', 'One', 'None', 6, '65475464', 1, '2022-07-02 02:51:38', 0, '2022-07-02 06:51:38', NULL),
(20, 'Alomgir Hossen', 'Male', 'Alom', 'Amena', '2014-03-04', 'Two', 'None', 1, '564646', 1, '2022-07-02 02:53:23', 0, '2022-07-02 06:53:23', NULL),
(21, 'Aaysha', 'Female', 'Ashab Uddin', 'Asha', '2014-03-03', 'Two', 'None', 3, '3545646', 1, '2022-07-02 02:53:59', 0, '2022-07-02 06:53:59', NULL),
(22, 'Mariya DB', 'Female', 'Oracal', 'InnoDB', '2014-10-10', 'Two', 'None', 4, '64564564', 1, '2022-07-02 02:54:51', 0, '2022-07-02 06:54:51', NULL),
(23, 'Marufa Akter', 'Female', 'Malek', 'Maleka Beghum', '2014-03-30', 'Two', 'None', 5, '34566', 1, '2022-07-02 02:55:42', 0, '2022-07-02 06:55:42', NULL),
(24, 'Jibon Ahmed', 'Male', 'Jalil', 'Jala', '2014-02-02', 'One', 'None', 6, '545466', 1, '2022-07-02 02:56:59', 0, '2022-07-02 06:56:59', NULL),
(25, 'Rabib Hasan', 'Male', 'Rahman', 'Hasna', '2014-07-06', 'Three', 'None', 4, '6476457', 1, '2022-07-02 02:58:08', 0, '2022-07-02 06:58:08', NULL),
(26, 'Rakib Hasan', 'Male', 'Rashid', 'Rabeya', '2014-03-04', 'Three', 'None', 1, '64557', 1, '2022-07-02 02:58:45', 0, '2022-07-02 06:58:45', NULL),
(27, 'Rabeya', 'Female', 'Rahim', 'Rahima', '2014-09-06', 'Three', 'None', 2, '5646', 1, '2022-07-02 02:59:20', 0, '2022-07-02 06:59:20', NULL),
(28, 'Tawhid', 'Male', 'Tahidul', 'Toha', '2013-01-02', 'Four', 'None', 11, '435466', 1, '2022-07-02 03:00:25', 0, '2022-07-02 07:00:25', NULL),
(29, 'Tahidul', 'Male', 'Tanvir Islam', 'Tara', '2013-02-20', 'Four', 'None', 12, '', 1, '2022-07-02 03:01:13', 0, '2022-07-02 07:01:13', NULL),
(30, 'Tania', 'Female', 'Tamim', 'Tushi', '2013-02-20', 'Four', 'None', 14, '5645646', 1, '2022-07-02 03:02:04', 0, '2022-07-02 07:02:04', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `student_fee`
--

CREATE TABLE `student_fee` (
  `id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `total` varchar(255) NOT NULL,
  `months` int(11) NOT NULL,
  `years` year(4) NOT NULL,
  `payment` decimal(10,2) NOT NULL DEFAULT '0.00',
  `status` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_by` int(11) DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_by` int(11) DEFAULT NULL,
  `last_pay_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student_fee`
--

INSERT INTO `student_fee` (`id`, `student_id`, `total`, `months`, `years`, `payment`, `status`, `created_at`, `created_by`, `updated_at`, `updated_by`, `last_pay_date`) VALUES
(1, 1, '9000', 1, 2022, '9000.00', NULL, '2022-07-04 05:56:05', 0, '2022-06-30 07:35:27', NULL, '2022-07-04'),
(2, 1, '4000', 2, 2022, '4000.00', NULL, '2022-07-04 05:32:39', 0, '2022-07-04 01:32:39', NULL, NULL),
(3, 5, '5000', 0, 2022, '5000.00', NULL, '2022-07-04 05:31:18', 0, '2022-07-04 01:31:18', 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `student_fees_details`
--

CREATE TABLE `student_fees_details` (
  `id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `student_fee_id` int(11) NOT NULL,
  `fees_id` int(11) NOT NULL,
  `amount` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student_fees_details`
--

INSERT INTO `student_fees_details` (`id`, `student_id`, `student_fee_id`, `fees_id`, `amount`) VALUES
(1, 1, 1, 1, '4000.00'),
(2, 1, 1, 2, '5000.00'),
(15, 5, 3, 2, '5000.00'),
(18, 1, 2, 1, '4000.00');

-- --------------------------------------------------------

--
-- Table structure for table `student_marks`
--

CREATE TABLE `student_marks` (
  `id` int(11) NOT NULL,
  `class_name` varchar(255) NOT NULL,
  `student_id` int(11) NOT NULL,
  `subject_id` varchar(10) DEFAULT NULL,
  `term_id` int(11) NOT NULL,
  `sub` int(11) NOT NULL,
  `obj` int(11) NOT NULL,
  `prac` int(11) NOT NULL,
  `total` varchar(255) CHARACTER SET utf8 NOT NULL,
  `gp` decimal(3,2) NOT NULL,
  `gl` varchar(20) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_by` int(11) DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student_marks`
--

INSERT INTO `student_marks` (`id`, `class_name`, `student_id`, `subject_id`, `term_id`, `sub`, `obj`, `prac`, `total`, `gp`, `gl`, `created_at`, `created_by`, `updated_at`, `updated_by`) VALUES
(3, 'Two', 2, '2', 1, 60, 0, 0, '60', '3.50', 'A-', '2022-06-28 01:26:54', 7, '2022-06-28 05:26:54', NULL),
(4, 'Three', 0, '3', 1, 35, 15, 10, '60', '3.50', 'A-', '2022-06-28 02:58:17', 7, '2022-06-28 06:58:17', NULL),
(5, 'Three', 3, '3', 1, 35, 15, 10, '60', '3.50', 'A-', '2022-06-28 02:59:55', 7, '2022-06-28 06:58:49', NULL),
(6, 'Five', 11, '14', 2, 44, 36, 0, '80', '5.00', 'A+', '2022-06-28 10:30:41', 7, '2022-06-28 14:30:41', NULL),
(7, 'Three', 3, '14', 1, 44, 30, 0, '74', '4.00', 'A', '2022-06-29 01:03:08', 7, '2022-06-29 05:03:08', NULL),
(8, 'Five', 10, '14', 2, 45, 25, 15, '85', '5.00', 'A+', '2022-07-03 00:40:15', 7, '2022-06-29 05:05:31', NULL),
(11, 'One', 15, '1', 1, 66, 0, 0, '66', '3.50', 'A-', '2022-07-02 03:50:09', 7, '2022-07-02 07:50:09', NULL),
(12, 'Five', 10, '13', 2, 40, 25, 15, '80', '5.00', 'A+', '2022-07-03 00:33:24', 7, '2022-07-03 04:33:24', NULL),
(13, 'Five', 10, '17', 2, 45, 15, 0, '60', '3.50', 'A-', '2022-07-03 00:33:53', 7, '2022-07-03 04:33:53', NULL),
(14, 'Five', 10, '15', 2, 50, 35, 0, '85', '5.00', 'A+', '2022-07-03 00:34:40', 7, '2022-07-03 04:34:40', NULL),
(15, 'Five', 10, '16', 2, 40, 20, 0, '60', '3.50', 'A-', '2022-07-03 00:35:09', 7, '2022-07-03 04:35:09', NULL),
(16, 'Five', 10, '18', 2, 65, 0, 0, '65', '3.50', 'A-', '2022-07-03 00:36:13', 7, '2022-07-03 04:36:13', NULL),
(17, 'Five', 10, '19', 2, 35, 25, 20, '80', '5.00', 'A+', '2022-07-03 00:36:36', 7, '2022-07-03 04:36:36', NULL),
(18, 'Five', 12, '13', 2, 13, 10, 7, '30', '0.00', 'F', '2022-07-03 00:38:16', 7, '2022-07-03 04:38:16', NULL),
(19, 'Five', 12, '14', 2, 35, 20, 10, '65', '3.50', 'A-', '2022-07-03 00:38:50', 7, '2022-07-03 04:38:50', NULL),
(20, 'Five', 12, '15', 2, 48, 33, 0, '81', '5.00', 'A+', '2022-07-03 00:40:49', 7, '2022-07-03 04:40:49', NULL),
(21, 'Five', 12, '16', 2, 50, 25, 0, '75', '4.00', 'A', '2022-07-03 00:41:17', 7, '2022-07-03 04:41:17', NULL),
(22, 'Five', 12, '17', 2, 38, 20, 0, '58', '3.00', 'B', '2022-07-03 00:41:47', 7, '2022-07-03 04:41:47', NULL),
(23, 'Five', 12, '18', 2, 47, 0, 0, '47', '2.00', 'C', '2022-07-03 00:42:05', 7, '2022-07-03 04:42:05', NULL),
(24, 'Five', 12, '19', 2, 28, 20, 10, '58', '3.00', 'B', '2022-07-03 00:42:30', 7, '2022-07-03 04:42:30', NULL),
(25, 'Five', 9, '13', 2, 48, 35, 15, '98', '5.00', 'A+', '2022-07-03 00:44:10', 7, '2022-07-03 04:44:10', NULL),
(26, 'Five', 9, '14', 2, 50, 32, 15, '97', '5.00', 'A+', '2022-07-03 00:44:51', 7, '2022-07-03 04:44:51', NULL),
(27, 'Five', 9, '15', 2, 50, 37, 0, '87', '5.00', 'A+', '2022-07-03 00:45:27', 7, '2022-07-03 04:45:27', NULL),
(28, 'Five', 9, '16', 2, 56, 38, 0, '94', '5.00', 'A+', '2022-07-03 00:45:52', 7, '2022-07-03 04:45:52', NULL),
(29, 'Five', 9, '17', 2, 45, 35, 0, '80', '5.00', 'A+', '2022-07-03 00:46:14', 7, '2022-07-03 04:46:14', NULL),
(30, 'Five', 9, '18', 2, 88, 0, 0, '88', '5.00', 'A+', '2022-07-03 00:46:28', 7, '2022-07-03 04:46:28', NULL),
(31, 'Five', 9, '19', 2, 35, 30, 15, '80', '5.00', 'A+', '2022-07-03 00:46:59', 7, '2022-07-03 04:46:59', NULL),
(32, 'Two', 20, '7', 1, 50, 20, 0, '70', '4.00', 'A', '2022-07-03 00:50:17', 7, '2022-07-03 04:50:17', NULL),
(33, 'Two', 20, '11', 1, 40, 30, 0, '70', '4.00', 'A', '2022-07-03 00:50:59', 7, '2022-07-03 04:50:59', NULL),
(34, 'Two', 21, '7', 1, 60, 10, 0, '70', '4.00', 'A', '2022-07-03 00:51:26', 7, '2022-07-03 04:51:26', NULL),
(35, 'Two', 21, '2', 1, 80, 0, 0, '80', '5.00', 'A+', '2022-07-03 00:51:48', 7, '2022-07-03 04:51:48', NULL),
(36, 'Two', 21, '11', 1, 50, 20, 0, '70', '4.00', 'A', '2022-07-03 00:52:11', 7, '2022-07-03 04:52:11', NULL),
(37, 'Two', 23, '2', 1, 80, 0, 0, '80', '5.00', 'A+', '2022-07-03 00:52:28', 7, '2022-07-03 04:52:28', NULL),
(38, 'Two', 23, '7', 1, 50, 20, 0, '70', '4.00', 'A', '2022-07-03 00:52:46', 7, '2022-07-03 04:52:46', NULL),
(39, 'Two', 23, '11', 1, 40, 20, 0, '60', '3.50', 'A-', '2022-07-03 00:53:03', 7, '2022-07-03 04:53:03', NULL),
(40, 'One', 15, '6', 1, 80, 0, 0, '80', '5.00', 'A+', '2022-07-03 00:54:12', 7, '2022-07-03 04:54:12', NULL),
(41, 'One', 15, '10', 1, 80, 0, 0, '80', '5.00', 'A+', '2022-07-03 00:54:29', 7, '2022-07-03 04:54:29', NULL),
(42, 'One', 16, '1', 1, 85, 0, 0, '85', '5.00', 'A+', '2022-07-03 00:54:52', 7, '2022-07-03 04:54:52', NULL),
(43, 'One', 16, '6', 1, 77, 0, 0, '77', '4.00', 'A', '2022-07-03 00:55:16', 7, '2022-07-03 04:55:16', NULL),
(44, 'One', 16, '10', 1, 70, 0, 0, '70', '4.00', 'A', '2022-07-03 00:55:32', 7, '2022-07-03 04:55:32', NULL),
(45, 'One', 17, '1', 1, 50, 0, 0, '50', '3.00', 'B', '2022-07-03 00:55:51', 7, '2022-07-03 04:55:51', NULL),
(46, 'One', 17, '6', 1, 66, 0, 0, '66', '3.50', 'A-', '2022-07-03 00:56:06', 7, '2022-07-03 04:56:06', NULL),
(47, 'One', 17, '10', 1, 60, 0, 0, '60', '3.50', 'A-', '2022-07-03 00:56:24', 7, '2022-07-03 04:56:24', NULL),
(48, 'One', 18, '1', 1, 80, 0, 0, '80', '5.00', 'A+', '2022-07-03 00:56:45', 7, '2022-07-03 04:56:45', NULL),
(49, 'One', 18, '6', 1, 88, 0, 0, '88', '5.00', 'A+', '2022-07-03 00:56:57', 7, '2022-07-03 04:56:57', NULL),
(50, 'One', 18, '10', 1, 80, 0, 0, '80', '5.00', 'A+', '2022-07-03 00:57:10', 7, '2022-07-03 04:57:10', NULL),
(51, 'One', 19, '1', 1, 77, 0, 0, '77', '4.00', 'A', '2022-07-03 00:57:46', 7, '2022-07-03 04:57:46', NULL),
(52, 'One', 19, '6', 1, 80, 0, 0, '80', '5.00', 'A+', '2022-07-03 00:58:05', 7, '2022-07-03 04:58:05', NULL),
(53, 'One', 19, '10', 1, 68, 0, 0, '68', '3.50', 'A-', '2022-07-03 00:58:20', 7, '2022-07-03 04:58:20', NULL),
(54, 'One', 24, '1', 1, 50, 0, 0, '50', '3.00', 'B', '2022-07-03 00:58:34', 7, '2022-07-03 04:58:34', NULL),
(55, 'One', 24, '10', 1, 45, 0, 0, '45', '2.00', 'C', '2022-07-03 00:58:48', 7, '2022-07-03 04:58:48', NULL),
(56, 'One', 24, '6', 1, 30, 0, 0, '30', '0.00', 'F', '2022-07-03 00:59:00', 7, '2022-07-03 04:59:00', NULL),
(57, 'One', 1, '1', 1, 67, 0, 0, '67', '3.50', 'A-', '2022-07-03 00:59:17', 7, '2022-07-03 04:59:17', NULL),
(58, 'One', 1, '6', 1, 70, 0, 0, '70', '4.00', 'A', '2022-07-03 00:59:33', 7, '2022-07-03 04:59:33', NULL),
(59, 'One', 1, '10', 1, 80, 0, 0, '80', '5.00', 'A+', '2022-07-03 00:59:50', 7, '2022-07-03 04:59:50', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `subject`
--

CREATE TABLE `subject` (
  `id` int(11) NOT NULL,
  `class_name` varchar(255) NOT NULL,
  `name` varchar(40) NOT NULL,
  `sub` int(11) DEFAULT NULL,
  `obj` int(11) DEFAULT NULL,
  `prac` int(11) DEFAULT NULL,
  `pass` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_by` int(11) DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `subject`
--

INSERT INTO `subject` (`id`, `class_name`, `name`, `sub`, `obj`, `prac`, `pass`, `status`, `created_at`, `created_by`, `updated_at`, `updated_by`) VALUES
(1, 'One', 'Bangla', 100, 0, 0, 33, 1, '2022-06-28 08:29:58', 7, '2022-06-28 04:29:58', 0),
(2, 'Two', 'English', 100, 0, 0, 33, 1, '2022-06-28 04:44:32', 1, '2022-06-28 04:23:22', 1),
(3, 'Three', 'ICT', 50, 30, 20, 33, 1, '2022-06-28 06:57:12', 0, '2022-06-28 02:57:12', 0),
(4, 'Four', 'Mathmatic', 70, 30, 0, 33, 1, '2022-06-28 03:06:56', 0, '2022-06-28 07:06:56', NULL),
(5, 'Three', 'Mathmatic', 70, 30, 0, 33, 1, '2022-06-28 03:12:47', 0, '2022-06-28 07:12:47', NULL),
(6, 'One', 'Mathmatic', 100, 0, 0, 33, 1, '2022-06-28 08:30:10', 0, '2022-06-28 04:30:10', 0),
(7, 'Two', 'Mathmatic', 70, 30, 0, 33, 1, '2022-06-28 08:15:37', 0, '2022-06-28 04:15:37', 0),
(8, 'Three', 'Bangla', 60, 40, 0, 33, 1, '2022-06-28 08:31:24', 0, '2022-06-28 04:31:24', 0),
(9, 'Four', 'Bangla', 60, 40, 0, 33, 1, '2022-06-28 08:31:09', 0, '2022-06-28 04:31:09', 0),
(10, 'One', 'English', 100, 0, 0, 33, 1, '2022-06-28 04:28:41', 0, '2022-06-28 08:28:41', NULL),
(11, 'Two', 'Bangla', 60, 40, 0, 33, 1, '2022-06-28 08:30:54', 0, '2022-06-28 04:30:54', 0),
(12, 'Four', 'ICT', 50, 30, 20, 33, 1, '2022-06-28 04:32:30', 0, '2022-06-28 08:32:30', NULL),
(13, 'Five', 'Science', 50, 30, 20, 33, 1, '2022-06-28 10:26:43', 0, '2022-06-28 14:26:43', NULL),
(14, 'Five', 'Social Studies', 50, 30, 20, 33, 1, '2022-06-28 14:37:42', 0, '2022-06-28 10:37:42', 0),
(15, 'Five', 'Islamic Studies', 60, 40, 0, 33, 1, '2022-06-28 14:37:55', 0, '2022-06-28 10:37:55', 0),
(16, 'Five', 'Mathmatic', 60, 40, 0, 33, 1, '2022-06-28 10:27:42', 0, '2022-06-28 14:27:42', NULL),
(17, 'Five', 'Bangla', 60, 40, 0, 33, 1, '2022-06-28 10:27:58', 0, '2022-06-28 14:27:58', NULL),
(18, 'Five', 'English', 100, 0, 0, 33, 1, '2022-06-28 10:28:12', 0, '2022-06-28 14:28:12', NULL),
(19, 'Five', 'ICT', 50, 30, 20, 33, 1, '2022-06-28 10:28:32', 0, '2022-06-28 14:28:32', NULL),
(20, 'Four', 'Science', 50, 30, 20, 33, 1, '2022-06-28 10:29:06', 0, '2022-06-28 14:29:06', NULL),
(21, 'Four', 'Social Studies', 50, 30, 20, 33, 1, '2022-06-28 14:37:06', 0, '2022-06-28 10:37:06', 0),
(22, 'Four', 'Islamic Studies', 60, 40, 0, 33, 1, '2022-06-28 14:37:30', 0, '2022-06-28 10:37:30', 0),
(23, 'Four', 'English', 100, 0, 0, 33, 1, '2022-07-02 02:37:38', 0, '2022-07-02 06:37:38', NULL),
(24, 'Three', 'English', 100, 0, 0, 33, 1, '2022-07-02 02:38:19', 0, '2022-07-02 06:38:19', NULL),
(25, 'Three', 'Science', 60, 40, 0, 33, 1, '2022-07-02 02:38:56', 0, '2022-07-02 06:38:56', NULL),
(26, 'Three', 'Social Studies', 60, 40, 0, 33, 1, '2022-07-02 02:39:19', 0, '2022-07-02 06:39:19', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `teacher`
--

CREATE TABLE `teacher` (
  `id` int(11) NOT NULL,
  `teacherName` varchar(40) NOT NULL,
  `gender` varchar(11) NOT NULL,
  `designation` varchar(40) NOT NULL,
  `birthDate` date NOT NULL,
  `subject` varchar(40) NOT NULL,
  `contactNo` varchar(13) NOT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_by` int(11) DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `teacher`
--

INSERT INTO `teacher` (`id`, `teacherName`, `gender`, `designation`, `birthDate`, `subject`, `contactNo`, `status`, `created_at`, `created_by`, `updated_at`, `updated_by`) VALUES
(1, 'Nasim', 'Male', 'Teacher', '1994-06-16', 'Mathmatic', '01857933015', 1, '2022-07-03 05:20:12', 7, '2022-07-03 01:20:12', 0),
(2, 'Mahadi Rahman', 'Male', 'Teacher', '1998-01-10', 'English', '01539057829', 1, '2022-07-03 01:21:25', 0, '2022-07-03 05:21:25', NULL),
(3, 'Zalal Uddin', 'Male', 'Teacher', '1993-12-12', 'Bangla', '01353475732', 1, '2022-07-03 01:22:18', 0, '2022-07-03 05:22:18', NULL),
(4, 'Md Zahid', 'Male', 'Teacher', '1993-02-02', 'Mathmatic', '01745294723', 1, '2022-07-03 01:23:09', 0, '2022-07-03 05:23:09', NULL),
(5, 'Biplob Uddin', 'Male', 'Teacher', '1995-01-10', 'Mathmatic', '01348598245', 1, '2022-07-03 01:23:56', 0, '2022-07-03 05:23:56', NULL),
(6, 'Sajedul Islam', 'Male', 'Teacher', '1995-03-30', 'English', '01374575894', 1, '2022-07-03 05:25:48', 0, '2022-07-03 01:25:48', 0);

-- --------------------------------------------------------

--
-- Table structure for table `term`
--

CREATE TABLE `term` (
  `id` int(11) NOT NULL,
  `term` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `term`
--

INSERT INTO `term` (`id`, `term`) VALUES
(1, 'Half Yearly Exam'),
(2, 'Final Exam'),
(3, 'Monthly Exam');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activities`
--
ALTER TABLE `activities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `auth`
--
ALTER TABLE `auth`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `userName` (`userName`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `fees_category`
--
ALTER TABLE `fees_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `months`
--
ALTER TABLE `months`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `role` (`role`);

--
-- Indexes for table `routine`
--
ALTER TABLE `routine`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_fee`
--
ALTER TABLE `student_fee`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_fees_details`
--
ALTER TABLE `student_fees_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_marks`
--
ALTER TABLE `student_marks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subject`
--
ALTER TABLE `subject`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teacher`
--
ALTER TABLE `teacher`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `term`
--
ALTER TABLE `term`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activities`
--
ALTER TABLE `activities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `auth`
--
ALTER TABLE `auth`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `fees_category`
--
ALTER TABLE `fees_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `groups`
--
ALTER TABLE `groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `months`
--
ALTER TABLE `months`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `role`
--
ALTER TABLE `role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `routine`
--
ALTER TABLE `routine`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `student_fee`
--
ALTER TABLE `student_fee`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `student_fees_details`
--
ALTER TABLE `student_fees_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `student_marks`
--
ALTER TABLE `student_marks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `subject`
--
ALTER TABLE `subject`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `teacher`
--
ALTER TABLE `teacher`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `term`
--
ALTER TABLE `term`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
