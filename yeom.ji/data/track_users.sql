-- phpMyAdmin SQL Dump
-- version 4.9.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 10, 2020 at 12:58 AM
-- Server version: 5.6.49-cll-lve
-- PHP Version: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `aau_`
--

-- --------------------------------------------------------

--
-- Table structure for table `track_users`
--

CREATE TABLE `track_users` (
  `id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `username` varchar(64) NOT NULL,
  `email` varchar(128) NOT NULL,
  `password` varchar(32) NOT NULL,
  `img` varchar(256) NOT NULL,
  `date_create` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `track_users`
--

INSERT INTO `track_users` (`id`, `name`, `username`, `email`, `password`, `img`, `date_create`) VALUES
(1, 'Stacey Farrell', 'user1', 'user1@gmail.com', '1a1dc91c907325c69271ddf0c944bc72', 'http://via.placeholder.com/400/724/fff/?text=user1', '2020-02-11 12:27:39'),
(2, 'Ericka Monroe', 'user2', 'user2@gmail.com', '1a1dc91c907325c69271ddf0c944bc72', 'http://via.placeholder.com/400/737/fff/?text=user2', '2020-10-18 06:02:47'),
(3, 'Wyatt Bush', 'user3', 'user3@gmail.com', '1a1dc91c907325c69271ddf0c944bc72', 'http://via.placeholder.com/400/702/fff/?text=user3', '2020-01-08 04:54:59'),
(4, 'Lopez Wynn', 'user4', 'user4@gmail.com', '1a1dc91c907325c69271ddf0c944bc72', 'http://via.placeholder.com/400/745/fff/?text=user4', '2020-05-14 08:19:00'),
(5, 'Wade French', 'user5', 'user5@gmail.com', '1a1dc91c907325c69271ddf0c944bc72', 'http://via.placeholder.com/400/719/fff/?text=user5', '2020-03-19 07:40:41'),
(6, 'Anthony Stanley', 'user6', 'user6@gmail.com', '1a1dc91c907325c69271ddf0c944bc72', 'http://via.placeholder.com/400/989/fff/?text=user6', '2020-07-24 10:57:16'),
(7, 'Richard Shepherd', 'user7', 'user7@gmail.com', '1a1dc91c907325c69271ddf0c944bc72', 'http://via.placeholder.com/400/918/fff/?text=user7', '2020-02-10 11:03:48'),
(8, 'Lambert Carroll', 'user8', 'user8@gmail.com', '1a1dc91c907325c69271ddf0c944bc72', 'http://via.placeholder.com/400/776/fff/?text=user8', '2020-08-14 04:33:24'),
(9, 'Barlow Blake', 'user9', 'user9@gmail.com', '1a1dc91c907325c69271ddf0c944bc72', 'http://via.placeholder.com/400/993/fff/?text=user9', '2020-04-10 02:58:59'),
(10, 'Kennedy Thornton', 'user10', 'user10@gmail.com', '1a1dc91c907325c69271ddf0c944bc72', 'http://via.placeholder.com/400/871/fff/?text=user10', '2020-04-26 11:12:13'),
(11, 'GGGGG', 'ji', 'ji@ji.ji', '78b83774d3a907fbea42783d58a95204', 'uploads/1607585669.2241_user_1.jpg', '2020-11-19 16:59:55'),
(12, '', 'won', 'won812@gmail.com', '1a1dc91c907325c69271ddf0c944bc72', 'https://via.placeholder.com/400?text=USER', '2020-11-20 00:58:16'),
(13, '', '', '', 'd41d8cd98f00b204e9800998ecf8427e', 'https://via.placeholder.com/400?text=USER', '2020-12-01 14:57:53'),
(15, '', 'sss', 'ss@gmail.com', '1a1dc91c907325c69271ddf0c944bc72', 'https://via.placeholder.com/400?text=USER', '2020-12-06 23:25:44'),
(14, 'Ellie Miles', 'user0', 'user0@gmail.com', '1a1dc91c907325c69271ddf0c944bc72', 'uploads/1607586465.7416_user_1.jpg', '2020-12-06 11:46:24');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `track_users`
--
ALTER TABLE `track_users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `track_users`
--
ALTER TABLE `track_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
