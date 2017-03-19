-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 19, 2017 at 04:24 PM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 5.5.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rpsinnovator`
--

-- --------------------------------------------------------

--
-- Table structure for table `assignmentbystudents`
--

CREATE TABLE `assignmentbystudents` (
  `assignment_id` int(11) NOT NULL,
  `student_id` text NOT NULL,
  `teacher_id` text NOT NULL,
  `assignment_title` text NOT NULL,
  `assignment_file` text NOT NULL,
  `date` datetime NOT NULL,
  `branch_year` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `complaint_box`
--

CREATE TABLE `complaint_box` (
  `complaint_id` int(11) NOT NULL,
  `complaint_user_name` text COLLATE utf8_unicode_ci NOT NULL,
  `complaint_user_card` text COLLATE utf8_unicode_ci NOT NULL,
  `complaint_title` text COLLATE utf8_unicode_ci NOT NULL,
  `comlaint_box` text COLLATE utf8_unicode_ci NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mymessage`
--

CREATE TABLE `mymessage` (
  `msg_id` int(11) NOT NULL,
  `sender` text COLLATE utf8_unicode_ci NOT NULL,
  `receiver` text COLLATE utf8_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `msg_title` text COLLATE utf8_unicode_ci NOT NULL,
  `msg_detail` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `replycomplaintbox`
--

CREATE TABLE `replycomplaintbox` (
  `reply_id` int(11) NOT NULL,
  `reply_name` text NOT NULL,
  `complaint_id` int(11) NOT NULL,
  `complaint_by` text NOT NULL,
  `date` date NOT NULL,
  `comment` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `student_confession`
--

CREATE TABLE `student_confession` (
  `confess_id` int(11) NOT NULL,
  `user_name` text NOT NULL,
  `user_libcard` text NOT NULL,
  `date` datetime NOT NULL,
  `confession_title` text NOT NULL,
  `confession` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `teacher_db`
--

CREATE TABLE `teacher_db` (
  `post_id` int(11) NOT NULL,
  `users_name` varchar(20) NOT NULL,
  `user_libcard` text NOT NULL,
  `user_date` datetime NOT NULL,
  `post_title` text NOT NULL,
  `post_content` text NOT NULL,
  `post_file` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `teacher_db_timetable`
--

CREATE TABLE `teacher_db_timetable` (
  `table_id` int(11) NOT NULL,
  `user_name` text NOT NULL,
  `user_libcard` text NOT NULL,
  `date` datetime NOT NULL,
  `title` text NOT NULL,
  `timetable` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `teacher_notice`
--

CREATE TABLE `teacher_notice` (
  `notice_id` int(11) NOT NULL,
  `user_name` text NOT NULL,
  `user_libcard` text NOT NULL,
  `date` datetime NOT NULL,
  `notice_title` text NOT NULL,
  `notice` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `teacher_studentmarks`
--

CREATE TABLE `teacher_studentmarks` (
  `sheet_id` int(11) NOT NULL,
  `user_name` int(11) NOT NULL,
  `user_libcard` int(11) NOT NULL,
  `date` int(11) NOT NULL,
  `sheet_title` int(11) NOT NULL,
  `marksheet` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users_details`
--

CREATE TABLE `users_details` (
  `users_id` int(11) NOT NULL,
  `user_name` text NOT NULL,
  `user_libaraycard` text NOT NULL,
  `user_email` text NOT NULL,
  `user_password` text NOT NULL,
  `user_branch` text NOT NULL,
  `user_gender` text NOT NULL,
  `user_reg_date` datetime NOT NULL,
  `user_bday` text NOT NULL,
  `user_address` text NOT NULL,
  `user_profile` text NOT NULL,
  `user_contact` text NOT NULL,
  `teacher_identity` int(11) NOT NULL,
  `branch_year` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `assignmentbystudents`
--
ALTER TABLE `assignmentbystudents`
  ADD PRIMARY KEY (`assignment_id`);

--
-- Indexes for table `complaint_box`
--
ALTER TABLE `complaint_box`
  ADD PRIMARY KEY (`complaint_id`);

--
-- Indexes for table `mymessage`
--
ALTER TABLE `mymessage`
  ADD PRIMARY KEY (`msg_id`);

--
-- Indexes for table `replycomplaintbox`
--
ALTER TABLE `replycomplaintbox`
  ADD PRIMARY KEY (`reply_id`);

--
-- Indexes for table `student_confession`
--
ALTER TABLE `student_confession`
  ADD PRIMARY KEY (`confess_id`);

--
-- Indexes for table `teacher_db`
--
ALTER TABLE `teacher_db`
  ADD PRIMARY KEY (`post_id`);

--
-- Indexes for table `teacher_db_timetable`
--
ALTER TABLE `teacher_db_timetable`
  ADD PRIMARY KEY (`table_id`);

--
-- Indexes for table `teacher_notice`
--
ALTER TABLE `teacher_notice`
  ADD PRIMARY KEY (`notice_id`);

--
-- Indexes for table `teacher_studentmarks`
--
ALTER TABLE `teacher_studentmarks`
  ADD PRIMARY KEY (`sheet_id`);

--
-- Indexes for table `users_details`
--
ALTER TABLE `users_details`
  ADD PRIMARY KEY (`users_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `assignmentbystudents`
--
ALTER TABLE `assignmentbystudents`
  MODIFY `assignment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `complaint_box`
--
ALTER TABLE `complaint_box`
  MODIFY `complaint_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `mymessage`
--
ALTER TABLE `mymessage`
  MODIFY `msg_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `replycomplaintbox`
--
ALTER TABLE `replycomplaintbox`
  MODIFY `reply_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `student_confession`
--
ALTER TABLE `student_confession`
  MODIFY `confess_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `teacher_db`
--
ALTER TABLE `teacher_db`
  MODIFY `post_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT for table `teacher_db_timetable`
--
ALTER TABLE `teacher_db_timetable`
  MODIFY `table_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `teacher_notice`
--
ALTER TABLE `teacher_notice`
  MODIFY `notice_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `teacher_studentmarks`
--
ALTER TABLE `teacher_studentmarks`
  MODIFY `sheet_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `users_details`
--
ALTER TABLE `users_details`
  MODIFY `users_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=128;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
