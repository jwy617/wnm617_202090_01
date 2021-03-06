-- phpMyAdmin SQL Dump
-- version 4.9.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 17, 2020 at 02:48 PM
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
-- Table structure for table `track_animals`
--

CREATE TABLE `track_animals` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  `gender` varchar(64) NOT NULL,
  `breed` varchar(64) NOT NULL,
  `size` varchar(64) NOT NULL,
  `color` varchar(64) NOT NULL,
  `description` text NOT NULL,
  `img` varchar(256) NOT NULL,
  `date_create` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `track_animals`
--

INSERT INTO `track_animals` (`id`, `user_id`, `name`, `gender`, `breed`, `size`, `color`, `description`, `img`, `date_create`) VALUES
(82, 10, 'Bailey', 'Female', 'Golden Retriever', 'X-Large', 'Brown', 'Bailey is an x-large fluffy Golden Retriever. She is always at the strawberry field park. ', 'uploads/1608198854.8669_Golden Retriever_1.jpg', '2020-12-17 02:22:05'),
(50, 8, 'Zaggle', 'Male', 'Bull Terrier', 'X-Large', 'Black', 'Minim proident ipsum ad enim anim ut. Aliquip amet commodo aliquip qui consequat magna. Reprehenderit incididunt dolore laboris esse elit.', 'https:via.placeholder.com/400/756/fff/?text=Zaggle', '2019-03-04 04:27:58'),
(49, 10, 'Milo', 'Male', 'Australian Shepherd', 'Small', 'Bicolor', 'Milo is the nicest Aussie I\'ve ever met. And he has a beautiful bicolor! ', 'uploads/1608198450.939_Australian Shepherd_3.jpg', '2020-04-05 08:35:35'),
(78, 10, 'Izzy', 'Female', 'Italian Greyhound', 'Large', 'Bicolor', 'Izzy is a large Italian Greyhound. She has a cute red collar on her. ', 'uploads/1608197090.7976_Italian Greyhound.jpg', '2020-12-17 02:21:39'),
(48, 5, 'Datagene', 'Female', 'Mixed', 'Small', 'Blue', 'Nisi aute ea aute sit consectetur ipsum do tempor mollit mollit occaecat eiusmod fugiat quis. Mollit velit commodo consequat ex id ipsum ullamco et excepteur labore reprehenderit ut et. Magna id nulla laboris ad anim minim.', 'https:via.placeholder.com/400/785/fff/?text=Datagene', '2019-05-23 10:42:39'),
(47, 7, 'Grok', 'Female', 'Border Collie', 'X-Large', 'Red', 'Laborum cillum enim est ad amet exercitation. Labore eiusmod ad incididunt excepteur adipisicing consequat eiusmod officia quis aliquip aute occaecat cupidatat laborum. Nulla esse consequat do mollit.', 'https:via.placeholder.com/400/925/fff/?text=Grok', '2020-05-18 07:03:54'),
(46, 9, 'Earthpure', 'Male', 'Bichon Frise', 'X-Large', 'Black', 'Fugiat adipisicing enim non tempor elit laborum minim. Anim consequat officia irure qui sit minim dolor eu irure consequat velit deserunt id. Culpa ullamco officia reprehenderit laborum ad elit sint nisi proident aliquip ut deserunt non mollit.', 'https:via.placeholder.com/400/752/fff/?text=Earthpure', '2020-09-12 11:37:07'),
(45, 5, 'Aquafire', 'Male', 'Bichon Frise', 'X-Large', 'Bicolor', 'Ut consequat laboris nisi esse ipsum ullamco sint incididunt occaecat. Sit ad id enim commodo consequat et voluptate adipisicing tempor aliqua sint in laboris. Voluptate labore labore pariatur duis ipsum laboris enim sunt ipsum non aliquip sit dolore pariatur.', 'https:via.placeholder.com/400/714/fff/?text=Aquafire', '2020-05-03 02:44:22'),
(44, 5, 'Quantalia', 'Male', 'Golden Retriever', 'X-Small', 'Red', 'Sint sit magna ea exercitation sunt. Reprehenderit velit ea consequat eu irure irure officia Lorem sint reprehenderit reprehenderit do. Ipsum eiusmod ea voluptate duis sit quis nulla veniam incididunt.', 'https:via.placeholder.com/400/907/fff/?text=Quantalia', '2020-11-14 06:03:06'),
(43, 5, 'Toyletry', 'Female', 'Bull Terrier', 'Large', 'White', 'In excepteur esse velit eu id ut sit. Veniam officia aliquip nisi eu laborum cupidatat magna labore velit. Voluptate dolor deserunt enim dolore proident esse veniam do dolor sit occaecat mollit cupidatat cillum.', 'https:via.placeholder.com/400/827/fff/?text=Toyletry', '2019-10-16 02:15:40'),
(41, 7, 'Enervate', 'Male', 'Mixed', 'Large', 'Yellow', 'Nisi cupidatat adipisicing aute laborum mollit. Id quis ea amet excepteur aliquip veniam quis. Velit irure cillum elit voluptate ipsum esse qui id proident.', 'https:via.placeholder.com/400/889/fff/?text=Enervate', '2019-10-10 12:59:24'),
(42, 2, 'Volax', 'Female', 'Doberman', 'Medium', 'Red', 'Pariatur ex elit sit consequat duis aute. Duis aute Lorem non in id exercitation esse eiusmod nulla commodo. Sit non Lorem dolore cupidatat officia fugiat quis sunt aute do.', 'https:via.placeholder.com/400/811/fff/?text=Volax', '2019-05-28 03:58:37'),
(40, 3, 'Quonk', 'Male', 'Golden Retriever', 'X-Small', 'Bicolor', 'Culpa dolore mollit est labore eu reprehenderit nulla esse pariatur eu reprehenderit elit. Magna esse dolore quis occaecat mollit mollit labore. Exercitation enim enim amet incididunt reprehenderit cillum tempor eiusmod consequat Lorem id.', 'https:via.placeholder.com/400/956/fff/?text=Quonk', '2020-08-08 12:56:29'),
(39, 6, 'Netbook', 'Male', 'Maltese', 'X-Large', 'Bicolor', 'Ad consequat deserunt fugiat fugiat cillum nostrud tempor veniam voluptate dolore ex cupidatat quis labore. Anim occaecat labore nisi consectetur sit mollit cillum fugiat. Adipisicing aliqua voluptate occaecat et.', 'https:via.placeholder.com/400/955/fff/?text=Netbook', '2020-03-05 07:48:14'),
(38, 9, 'Rooforia', 'Male', 'Corgi', 'X-Large', 'Red', 'Dolore cupidatat labore Lorem fugiat. Aliquip eiusmod nulla amet excepteur eiusmod amet aute. Enim deserunt dolor velit consequat ea culpa et officia id occaecat ex amet.', 'https:via.placeholder.com/400/853/fff/?text=Rooforia', '2019-10-08 12:00:18'),
(37, 9, 'Scentric', 'Female', 'Mixed', 'X-Small', 'Tricolor', 'Laboris ex incididunt aliquip Lorem. Nisi ex tempor sit excepteur eiusmod amet ea. Velit sint esse aute amet sit aliquip.', 'https:via.placeholder.com/400/701/fff/?text=Scentric', '2020-01-30 04:27:15'),
(36, 3, 'Rodeomad', 'Male', 'Bull Terrier', 'Large', 'Bicolor', 'Officia duis duis Lorem mollit esse amet velit aute ullamco anim ullamco sit quis deserunt. Dolore et et duis incididunt aliqua laborum amet quis labore id irure. Cupidatat veniam ipsum duis veniam et ipsum mollit consequat adipisicing ad.', 'https:via.placeholder.com/400/887/fff/?text=Rodeomad', '2019-06-18 01:14:40'),
(77, 10, 'Cooper', 'Male', 'Doberman', 'Small', 'Bicolor', 'Cooper has a beautiful bicolor! He is a small male Doberman!', 'uploads/1608196352.5278_Doberman.jpg', '2020-12-17 02:12:22'),
(80, 10, 'Ollie', 'Male', 'Golden Retriever', 'Small', 'Cream', 'Ollies is a small cream color Golden Retriever. He is a baby about 4 months.', 'uploads/1608197446.2496_Golden Retriever_2.jpg', '2020-12-17 02:21:50'),
(35, 2, 'Cincyr', 'Female', 'Border Collie', 'X-Large', 'Bicolor', 'Ex ipsum eu anim sit consequat ut et. Duis incididunt occaecat fugiat consequat irure culpa. Adipisicing voluptate non eu incididunt laboris incididunt irure ex consectetur in do aliqua sit.', 'https:via.placeholder.com/400/945/fff/?text=Cincyr', '2020-01-06 07:39:34'),
(32, 5, 'Xoggle', 'Female', 'Doberman', 'X-Small', 'Bicolor', 'Incididunt ad ut id pariatur consectetur dolore. Eu ea ex esse tempor. Id deserunt amet sint do anim do qui aute.', 'https:via.placeholder.com/400/751/fff/?text=Xoggle', '2020-02-24 09:44:41'),
(33, 9, 'Melbacor', 'Female', 'Border Collie', 'X-Small', 'Black', 'Exercitation cupidatat cillum labore sint id elit proident ex aliquip id id fugiat in. Laborum ea aliqua adipisicing reprehenderit do ad ipsum incididunt. Ut irure fugiat ipsum magna duis pariatur.', 'https:via.placeholder.com/400/776/fff/?text=Melbacor', '2020-05-04 10:12:00'),
(31, 4, 'Yurture', 'Female', 'Poodle', 'Small', 'Black', 'Elit enim in ipsum aliquip officia aliquip do dolor. Ut elit sint consectetur magna amet pariatur. Excepteur fugiat magna ea eu laboris id laboris et sint.', 'https:via.placeholder.com/400/832/fff/?text=Yurture', '2019-04-10 02:23:35'),
(30, 1, 'Orboid', 'Male', 'Doberman', 'Medium', 'Tricolor', 'Velit nisi magna excepteur nulla incididunt. Ut minim quis voluptate ipsum ipsum duis consectetur duis nostrud pariatur. Deserunt excepteur dolore culpa nisi velit minim consectetur ut amet labore commodo excepteur.', 'https:via.placeholder.com/400/700/fff/?text=Orboid', '2020-11-01 08:55:08'),
(86, 16, 'c', 'c', 'c', 'c', 'c', 'c', 'uploads/1608237628.0503_Australian Shepherd_1.jpg', '2020-12-17 13:40:20'),
(28, 7, 'Krag', 'Male', 'Golden Retriever', 'Medium', 'Tricolor', 'Ipsum culpa dolore incididunt id. Ea eiusmod ex aliqua ullamco quis et. Id occaecat exercitation officia minim occaecat voluptate in dolor duis eiusmod elit.', 'https:via.placeholder.com/400/745/fff/?text=Krag', '2019-08-30 08:31:52'),
(27, 6, 'Pholio', 'Male', 'Bull Terrier', 'Medium', 'Brown', 'Eu excepteur exercitation qui ad laboris do deserunt irure ullamco id. Cupidatat anim incididunt officia non enim dolor in dolor id minim consectetur. Velit esse et duis ad laborum et ipsum do id laborum eiusmod.', 'https:via.placeholder.com/400/812/fff/?text=Pholio', '2019-12-09 06:09:48'),
(26, 3, 'Housedown', 'Female', 'Maltese', 'Small', 'Brown', 'Culpa occaecat nostrud eu esse quis id ipsum enim minim minim. Enim magna aute in cillum aute eu amet aliqua exercitation laboris quis in. Elit officia labore esse est minim.', 'https:via.placeholder.com/400/913/fff/?text=Housedown', '2019-08-18 08:59:33'),
(25, 1, 'Enomen', 'Male', 'Border Collie', 'X-Small', 'Tricolor', 'Ex veniam esse amet deserunt ad. Excepteur fugiat magna aliquip in eu excepteur consequat laborum adipisicing dolor sint. Anim consectetur esse minim sint mollit est ullamco consequat consectetur aliqua cillum sunt fugiat.', 'https:via.placeholder.com/400/736/fff/?text=Enomen', '2019-03-11 04:34:10'),
(24, 9, 'Visualix', 'Male', 'Doberman', 'X-Large', 'Brown', 'Magna magna et mollit occaecat. Proident anim ullamco do ex eiusmod eu consectetur. Aliquip elit in aliqua pariatur velit irure fugiat ipsum incididunt consequat cillum proident.', 'https:via.placeholder.com/400/812/fff/?text=Visualix', '2019-11-25 12:14:02'),
(23, 7, 'Barkarama', 'Male', 'Doberman', 'Medium', 'White', 'Qui velit non ex sint nostrud occaecat est adipisicing. Nisi laboris Lorem aute culpa labore nulla quis proident voluptate. Lorem eiusmod ipsum veniam aliquip esse duis.', 'https:via.placeholder.com/400/851/fff/?text=Barkarama', '2020-03-02 03:56:24'),
(22, 2, 'Inrt', 'Male', 'Bull Terrier', 'X-Large', 'Brown', 'Est nostrud occaecat laboris commodo ea velit officia. Lorem consectetur sit irure veniam ut est et excepteur. Reprehenderit nostrud amet ut aute ex consequat.', 'https:via.placeholder.com/400/709/fff/?text=Inrt', '2020-03-18 10:36:12'),
(21, 7, 'Hawkster', 'Male', 'Bull Terrier', 'Medium', 'Grey', 'Reprehenderit laboris est eiusmod adipisicing proident labore officia nostrud. Labore minim aliqua qui voluptate deserunt. Veniam aute ex ad laborum eu commodo tempor adipisicing exercitation mollit ad.', 'https:via.placeholder.com/400/912/fff/?text=Hawkster', '2020-10-05 10:47:45'),
(20, 8, 'Speedbolt', 'Female', 'Corgi', 'Small', 'White', 'Aliqua esse sunt non irure excepteur. Consequat fugiat velit nisi id laboris minim exercitation. Duis pariatur occaecat non ut culpa duis eiusmod irure fugiat.', 'https:via.placeholder.com/400/909/fff/?text=Speedbolt', '2020-11-23 11:59:19'),
(19, 6, 'Colaire', 'Female', 'Border Collie', 'X-Small', 'Black', 'Adipisicing ad tempor et laborum cupidatat sit nostrud eiusmod. Laborum veniam fugiat nulla pariatur officia. Exercitation ipsum ad ex amet enim eiusmod nostrud excepteur.', 'https:via.placeholder.com/400/793/fff/?text=Colaire', '2020-09-06 09:57:03'),
(18, 9, 'Protodyne', 'Male', 'Border Collie', 'X-Small', 'Bicolor', 'Deserunt dolor esse reprehenderit anim minim eiusmod veniam irure occaecat dolor ullamco deserunt. Pariatur laboris non eiusmod minim in ut. Quis fugiat ut ad commodo esse consequat qui in dolore Lorem et.', 'https:via.placeholder.com/400/741/fff/?text=Protodyne', '2020-09-08 01:39:40'),
(17, 8, 'Mixers', 'Male', 'Golden Retriever', 'Small', 'White', 'Aute id duis ea aliquip aute magna mollit deserunt exercitation ex reprehenderit aliqua dolor ex. Duis voluptate deserunt sint reprehenderit ad ex. Esse irure reprehenderit nisi magna occaecat duis veniam aliquip ullamco in sint.', 'https:via.placeholder.com/400/722/fff/?text=Mixers', '2020-05-07 01:06:24'),
(16, 7, 'Elpro', 'Female', 'Golden Retriever', 'X-Large', 'Red', 'Nostrud veniam anim est consequat consequat non anim ex commodo. Enim laborum Lorem officia amet. Enim et nisi elit magna consectetur culpa labore ut minim non aliqua.', 'https:via.placeholder.com/400/720/fff/?text=Elpro', '2019-02-12 03:46:45'),
(15, 9, 'Avenetro', 'Male', 'Golden Retriever', 'Medium', 'Bicolor', 'Nisi incididunt anim ad ut. Aliquip fugiat incididunt culpa mollit. Ullamco sit aliquip ullamco duis.', 'https:via.placeholder.com/400/871/fff/?text=Avenetro', '2020-01-22 12:29:13'),
(14, 1, 'Pasturia', 'Female', 'Corgi', 'Small', 'Bicolor', 'Sint duis pariatur nulla enim quis consectetur non sit consequat adipisicing excepteur anim nulla. Incididunt officia sint commodo magna ipsum laboris dolor cupidatat velit nostrud voluptate sunt. Velit ullamco in exercitation reprehenderit fugiat.', 'https:via.placeholder.com/400/930/fff/?text=Pasturia', '2019-06-08 05:37:56'),
(87, 10, 'Drake', 'Female', 'Bull Terrirer', 'Medium', 'White', 'Drake is a special one. White Bull Terrier!!', 'uploads/1608237782.2172_Bull Terrier.jpg', '2020-12-17 13:42:38'),
(81, 10, 'Buddy', 'Female', 'Border Collie', 'Medium', 'Bicolor', 'Buddy buddy buddy! What a happy dog!', 'uploads/1608197228.7473_Border Collie_1.jpg', '2020-12-17 02:21:57'),
(13, 10, 'Accel', 'Male', 'Bichon Frise', 'Medium', 'White', 'Accel is a male white color Bichon Frise. Found him on 4th st.', 'uploads/1608195408.9053_Bichon Frise.png', '2020-06-05 09:08:26'),
(83, 10, 'Asher', 'Male', 'Border Collie', 'Large', 'Black', 'Asher is a one sleepy dog. He is always laying down on the street. ', 'uploads/1608197883.522_main_doggie_1.jpg', '2020-12-17 02:22:10'),
(12, 10, 'Fin', 'Female', 'Mixed', 'X-Small', 'Cream', 'Fin is a mixed dog. Not sure between which breeds. Doesn\'t matter. It\'s so cute!', 'uploads/1608196878.3133_Mixed_2.jpg', '2020-10-17 05:35:01'),
(11, 10, 'Cape', 'Female', 'Poodle', 'X-Small', 'Brown', 'Cape is an x-small female brown color poodle. Found her near the starbucks.', 'uploads/1608195639.1381_Cute 1.jpg', '2020-06-06 04:11:32'),
(10, 4, 'Xixan', 'Female', 'Doberman', 'Medium', 'Yellow', 'Sint do tempor voluptate consectetur ut pariatur dolore occaecat ipsum qui non do dolor. Amet qui magna deserunt enim sunt consequat ipsum ipsum in ea esse duis ea minim. In minim dolore velit occaecat non.', 'https:via.placeholder.com/400/907/fff/?text=Xixan', '2019-03-26 12:46:21'),
(9, 2, 'Calcu', 'Male', 'Mixed', 'X-Small', 'Bicolor', 'Aute exercitation est eiusmod excepteur irure adipisicing veniam laborum ipsum occaecat cillum proident. Nostrud anim sit aliquip dolore consectetur cillum tempor. Cupidatat ad reprehenderit adipisicing excepteur nostrud laboris fugiat ex minim consectetur tempor culpa culpa.', 'https:via.placeholder.com/400/939/fff/?text=Calcu', '2019-04-26 10:52:58'),
(8, 1, 'Digial', 'Male', 'Bull Terrier', 'Medium', 'Bicolor', 'Occaecat adipisicing ex tempor est eiusmod ipsum esse dolor irure magna minim. Labore Lorem mollit reprehenderit pariatur nulla officia et. In sunt Lorem minim magna velit nostrud aliquip veniam deserunt ipsum amet nulla occaecat.', 'https:via.placeholder.com/400/783/fff/?text=Digial', '2019-12-05 05:45:55'),
(7, 3, 'Cosmosis', 'Female', 'Golden Retriever', 'X-Large', 'Bicolor', 'Ullamco excepteur velit adipisicing ut minim laborum ullamco. Eu dolore consequat excepteur irure cillum voluptate aute nulla incididunt minim commodo. Duis sunt aliqua adipisicing magna Lorem amet commodo commodo officia.', 'https:via.placeholder.com/400/729/fff/?text=Cosmosis', '2020-05-22 03:29:18'),
(6, 8, 'Bostonic', 'Female', 'Mixed', 'Small', 'Red', 'Laborum eiusmod enim exercitation commodo non ipsum officia cillum consectetur. Aliqua nisi cupidatat sunt et nostrud nisi ad id aliquip esse amet incididunt. Consequat exercitation do nisi proident consequat elit tempor laborum velit irure nisi.', 'https:via.placeholder.com/400/931/fff/?text=Bostonic', '2020-04-29 07:44:30'),
(5, 9, 'Pharmacon', 'Female', 'Border Collie', 'X-Small', 'Bicolor', 'Deserunt anim deserunt incididunt tempor adipisicing eiusmod reprehenderit non nostrud laboris fugiat pariatur ut. Qui laborum laborum pariatur est magna nostrud anim enim deserunt. Sint do pariatur aute qui incididunt.', 'https:via.placeholder.com/400/819/fff/?text=Pharmacon', '2020-04-16 06:06:57'),
(4, 10, 'Waverly', 'Female', 'Australian Shepherd', 'Medium', 'Tricolor', 'Waverly is a female Australian Shepherd. Her eye\'s color is persian blue. So beautiful! ', 'uploads/1608198534.4217_Australian Shepherd_1.jpg', '2020-01-15 11:11:43'),
(3, 6, 'Extragen', 'Female', 'Maltese', 'Large', 'Yellow', 'Culpa commodo deserunt anim reprehenderit sint in incididunt ut excepteur dolore cupidatat consectetur. Labore aute nisi nisi eiusmod exercitation consequat aliqua exercitation qui laboris. Ex et voluptate Lorem sunt cupidatat aute officia velit nulla duis adipisicing.', 'https:via.placeholder.com/400/823/fff/?text=Extragen', '2020-09-08 04:49:12'),
(2, 1, 'Syntac', 'Female', 'Border Collie', 'X-Small', 'Brown', 'Sit laborum ut eiusmod excepteur occaecat quis excepteur. Occaecat Lorem qui aliqua cupidatat est deserunt deserunt est magna aliquip ut. Anim consectetur veniam tempor velit reprehenderit magna voluptate.', 'https:via.placeholder.com/400/871/fff/?text=Syntac', '2020-08-16 03:39:45'),
(1, 1, 'Exotechno', 'Female', 'Bull Terrier', 'Small', 'White', 'Incididunt ex incididunt aute eiusmod aliquip eu sit cupidatat ipsum consequat Lorem. Duis pariatur adipisicing pariatur incididunt enim qui id velit laborum laboris. Enim id veniam est voluptate veniam cillum non ea culpa cupidatat culpa eu incididunt.', 'https:via.placeholder.com/400/751/fff/?text=Exotechno', '2019-08-16 02:44:26'),
(75, 16, 'Momo meo', 'Female', 'Corgi', 'Small', 'Yellow', '', 'uploads/1608183767.7379_Cute 3.jpg', '2020-12-10 15:05:59'),
(76, 16, 'aa', 'a', 'aa', 'a', 'a', 'a', 'uploads/1608236883.5566_Australian Shepherd_2.jpg', '2020-12-17 00:38:08'),
(84, 10, 'Hippy', 'Male', 'Border Collie', 'Small', 'Bicolor', 'Hippy is a cute male Border Collie. Found him at Peets coffee on geary st. He is always there around 6 pm.', 'uploads/1608197680.6394_Border Collie_2.jpg', '2020-12-17 02:33:48'),
(85, 10, 'Lego', 'Male', 'Chihuahua', 'X-Small', 'Brown', 'Lego is a male Chihuahua. Cute little bastard :)', 'uploads/1608198839.6433_Chihuahua.jpg', '2020-12-17 02:34:12');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `track_animals`
--
ALTER TABLE `track_animals`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `track_animals`
--
ALTER TABLE `track_animals`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
