-- phpMyAdmin SQL Dump
-- version 4.9.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 17, 2020 at 05:24 PM
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
  `favorite_animal` varchar(64) NOT NULL,
  `about_me` varchar(128) NOT NULL,
  `date_create` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `track_users`
--

INSERT INTO `track_users` (`id`, `name`, `username`, `email`, `password`, `img`, `favorite_animal`, `about_me`, `date_create`) VALUES
(6, 'Delaney Boyle', 'user6', 'user6@gmail.com', '1a1dc91c907325c69271ddf0c944bc72', 'http://via.placeholder.com/400/732/fff/?text=user6', 'Corgi', 'Qui ad sit aliqua et sint culpa culpa pariatur ad ea officia. Laboris anim laboris et ipsum consequat ipsum aliqua minim non eni', '2019-08-04 01:48:16'),
(5, 'Reynolds Ellison', 'user5', 'user5@gmail.com', '1a1dc91c907325c69271ddf0c944bc72', 'http://via.placeholder.com/400/826/fff/?text=user5', 'Golden Retriever', 'Cillum incididunt laboris eu in. Mollit deserunt aute dolor ut enim pariatur. Est proident fugiat in aliquip commodo tempor aute', '2019-11-29 10:07:13'),
(4, 'Kris Roberson', 'user4', 'user4@gmail.com', '1a1dc91c907325c69271ddf0c944bc72', 'http://via.placeholder.com/400/726/fff/?text=user4', 'Border Collie', 'Sunt ipsum mollit nisi excepteur velit id nisi eiusmod magna nisi consectetur. Incididunt aliqua sint est adipisicing excepteur ', '2020-06-19 08:26:38'),
(3, 'Eugenia Calhoun', 'user3', 'user3@gmail.com', '1a1dc91c907325c69271ddf0c944bc72', 'http://via.placeholder.com/400/788/fff/?text=user3', 'Bichon Frise', 'Do ut qui aliquip eu quis officia anim incididunt officia quis consequat cupidatat officia ullamco. Enim ad exercitation in ut v', '2019-03-09 10:33:09'),
(2, 'Wong Hoffman', 'user2', 'user2@gmail.com', '1a1dc91c907325c69271ddf0c944bc72', 'http://via.placeholder.com/400/796/fff/?text=user2', 'Corgi', 'Ad anim voluptate quis eiusmod anim quis voluptate elit quis aute tempor ut. Commodo velit voluptate in aliqua est ut consequat ', '2020-01-28 06:01:57'),
(1, 'Robert Shannon', 'user1', 'user1@gmail.com', '1a1dc91c907325c69271ddf0c944bc72', 'uploads/1608235908.474_user_6.jpg', 'Bull Terrier', '', '2020-09-08 03:54:17'),
(7, 'Maria Cantu', 'user7', 'user7@gmail.com', '1a1dc91c907325c69271ddf0c944bc72', 'http://via.placeholder.com/400/911/fff/?text=user7', 'Bull Terrier', 'Incididunt elit mollit cillum velit officia nostrud id irure est id non. Ex in minim consequat irure sit nisi dolor laboris. Aut', '2019-09-19 08:01:58'),
(8, 'Blanca Conrad', 'user8', 'user8@gmail.com', '1a1dc91c907325c69271ddf0c944bc72', 'uploads/1608181550.6636_user_6.jpg', 'Bichon Frise', 'Fugiat dolor consectetur magna exercitation laboris aute et. Amet minim labore occaecat sint consequat est exercitation mollit e', '2020-04-10 01:29:46'),
(9, 'Ericka Pugh', 'user9', 'user9@gmail.com', '1a1dc91c907325c69271ddf0c944bc72', 'http://via.placeholder.com/400/800/fff/?text=user9', 'Corgi', 'Ullamco elit pariatur duis consequat. Duis nulla nisi dolore commodo esse do. Officia adipisicing mollit consequat cillum labore', '2020-06-13 02:47:58'),
(10, 'Monica Haley', 'user0', 'monicahaley@gmail.com', '1a1dc91c907325c69271ddf0c944bc72', 'uploads/1608191090.0863_user_1.jpg', 'Border Collie', 'If you watched the movie, \'Hachi,\' and no tear, don\'t even try to talk to me.', '2020-04-07 03:10:05'),
(17, '', 'user20', 'user@gmail.com', '1a1dc91c907325c69271ddf0c944bc72', 'https://via.placeholder.com/400?text=USER', '', '', '2020-12-17 17:19:19'),
(16, 'ji', 'ji', 'ji@gmail.com', '78b83774d3a907fbea42783d58a95204', 'uploads/1608249904.6845_user_7.jpg', '', '', '2020-12-10 14:45:15');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
