-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 20, 2022 at 12:15 AM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `chattwo`
--

-- --------------------------------------------------------

--
-- Table structure for table `chatrooms`
--

CREATE TABLE `chatrooms` (
  `id` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `msg` varchar(200) NOT NULL,
  `created_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `chatrooms`
--

INSERT INTO `chatrooms` (`id`, `userid`, `msg`, `created_on`) VALUES
(6, 29, 'hi\n', '2022-07-19 02:01:26'),
(7, 29, 'hi\n', '2022-07-19 02:02:23'),
(8, 27, 'hi mohamed', '2022-07-19 02:02:36'),
(9, 29, 'yahooewer\n\n\n', '2022-07-19 02:03:31'),
(10, 29, 'hi', '2022-07-19 02:40:44');

-- --------------------------------------------------------

--
-- Table structure for table `chat_message`
--

CREATE TABLE `chat_message` (
  `chat_message_id` int(11) NOT NULL,
  `to_user_id` int(11) NOT NULL,
  `from_user_id` int(11) NOT NULL,
  `chat_message` mediumtext CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` enum('Yes','No') CHARACTER SET utf8 COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `chat_message`
--

INSERT INTO `chat_message` (`chat_message_id`, `to_user_id`, `from_user_id`, `chat_message`, `timestamp`, `status`) VALUES
(1, 27, 29, 'hi', '2022-07-19 00:39:05', 'Yes'),
(2, 27, 29, 'dflmlmgldfg', '2022-07-19 00:39:20', 'Yes'),
(3, 27, 29, 'ok', '2022-07-19 00:40:03', 'Yes'),
(4, 27, 29, 'ok', '2022-07-19 00:41:35', 'Yes'),
(5, 27, 29, 'ok', '2022-07-19 01:21:09', 'Yes'),
(6, 29, 27, 'hi', '2022-07-19 01:22:13', 'Yes'),
(7, 27, 29, 'hi', '2022-07-19 01:27:45', 'Yes'),
(8, 27, 29, 'go', '2022-07-19 01:27:56', 'Yes'),
(9, 27, 29, 'k', '2022-07-19 01:28:00', 'Yes'),
(10, 27, 29, 'k', '2022-07-19 01:28:03', 'Yes'),
(11, 27, 29, 'j', '2022-07-19 01:28:10', 'Yes'),
(12, 27, 29, 'j', '2022-07-19 01:28:21', 'Yes'),
(13, 27, 29, 'sdasdas', '2022-07-19 01:28:30', 'Yes'),
(14, 29, 27, 'd', '2022-07-19 01:28:45', 'Yes'),
(15, 29, 27, 'ads', '2022-07-19 01:28:47', 'Yes'),
(16, 29, 27, 'asdas', '2022-07-19 01:28:50', 'Yes');

-- --------------------------------------------------------

--
-- Table structure for table `chat_user_table`
--

CREATE TABLE `chat_user_table` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(250) NOT NULL,
  `user_email` varchar(250) NOT NULL,
  `user_password` varchar(100) NOT NULL,
  `user_profile` varchar(100) NOT NULL,
  `user_status` enum('Disabled','Enable') NOT NULL,
  `user_created_on` datetime NOT NULL,
  `user_verification_code` varchar(100) NOT NULL,
  `user_login_status` enum('Logout','Login') NOT NULL,
  `user_token` varchar(100) DEFAULT NULL,
  `user_connection_id` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `chat_user_table`
--

INSERT INTO `chat_user_table` (`user_id`, `user_name`, `user_email`, `user_password`, `user_profile`, `user_status`, `user_created_on`, `user_verification_code`, `user_login_status`, `user_token`, `user_connection_id`) VALUES
(27, 'abdalla', 'anaabdoa193@yahoo.com', 'asdfgh', 'images/617536266.jpg', 'Enable', '2022-07-18 21:37:35', 'a9aca970c95b98ea87ca16c2b10b557d', 'Login', '7de187d883d0c16b95618e11d2349993', 265),
(29, 'mohamed', 'abdall128@outlook.com', 'asdfgh', 'images/224735422.jpg', 'Enable', '2022-07-18 23:03:35', 'defcf62677aa3ef07a8ff024f13655cb', 'Login', '5febd5e8706d2cb8c92e627d5fd79b19', 281);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `chatrooms`
--
ALTER TABLE `chatrooms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chat_message`
--
ALTER TABLE `chat_message`
  ADD PRIMARY KEY (`chat_message_id`);

--
-- Indexes for table `chat_user_table`
--
ALTER TABLE `chat_user_table`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `chatrooms`
--
ALTER TABLE `chatrooms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `chat_message`
--
ALTER TABLE `chat_message`
  MODIFY `chat_message_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `chat_user_table`
--
ALTER TABLE `chat_user_table`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
