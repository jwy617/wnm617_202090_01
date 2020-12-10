-- phpMyAdmin SQL Dump
-- version 4.9.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 10, 2020 at 12:59 AM
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
  `breed` varchar(64) NOT NULL,
  `size` varchar(64) NOT NULL,
  `color` varchar(64) NOT NULL,
  `description` text NOT NULL,
  `img` varchar(256) NOT NULL,
  `date_create` datetime NOT NULL,
  `date_update` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `track_animals`
--

INSERT INTO `track_animals` (`id`, `user_id`, `name`, `breed`, `size`, `color`, `description`, `img`, `date_create`, `date_update`) VALUES
(1, 8, 'Geeky', 'Mixed', 'Large', 'Brown', 'Excepteur deserunt commodo aute est excepteur commodo laborum consectetur. Velit exercitation adipisicing deserunt sunt dolor amet. Ex adipisicing labore dolor in et esse irure consectetur laboris incididunt occaecat.', 'https:via.placeholder.com/400/944/fff/?text=Geeky', '2020-08-02 11:59:04', '0000-00-00 00:00:00'),
(2, 2, 'Bullzone', 'Standard Poodle', 'X-Lrage', 'Black', 'Ex in ad id nostrud adipisicing excepteur enim labore enim mollit ea anim. Aute Lorem eiusmod aute cillum. Laborum ea nostrud est deserunt commodo sit nisi sunt duis proident minim adipisicing.', 'https:via.placeholder.com/400/923/fff/?text=Bullzone', '2020-01-12 04:56:54', '0000-00-00 00:00:00'),
(3, 2, 'Sureplex', 'Pitbull Terrier', 'Large', 'Brown', 'Nisi occaecat sit nisi ex qui excepteur deserunt labore sunt incididunt ad amet eu. Incididunt dolor aliqua ea consectetur irure. Laborum mollit veniam duis dolor enim dolore.', 'https:via.placeholder.com/400/862/fff/?text=Sureplex', '2020-06-11 06:17:17', '0000-00-00 00:00:00'),
(4, 10, 'Aquoavo', 'Mixed', 'Small', 'White', 'Ullamco ullamco aliqua fugiat veniam dolor do veniam excepteur sunt ullamco. Occaecat dolore minim occaecat Lorem. Sunt elit quis sit nulla.', 'https:via.placeholder.com/400/849/fff/?text=Aquoavo', '2020-10-20 12:29:37', '0000-00-00 00:00:00'),
(5, 8, 'Comtext', 'Pitbull Terrier', 'Medium', 'Black', 'Officia occaecat occaecat non cillum culpa fugiat adipisicing proident laborum. Anim excepteur adipisicing eiusmod qui nisi ex commodo amet culpa do est voluptate nisi consectetur. Sit ipsum qui dolore non nostrud qui eu incididunt.', 'https:via.placeholder.com/400/746/fff/?text=Comtext', '2020-09-26 07:59:33', '0000-00-00 00:00:00'),
(6, 4, 'Kozgene', 'Border Collie', 'Medium', 'Brown', 'Commodo anim aliquip sint et. Enim cillum pariatur sint adipisicing voluptate ullamco. Dolor fugiat cupidatat nostrud voluptate eu mollit qui in deserunt mollit est.', 'https:via.placeholder.com/400/765/fff/?text=Kozgene', '2020-06-08 04:39:02', '0000-00-00 00:00:00'),
(7, 7, 'Accusage', 'Border Collie', 'Small', 'White', 'Velit amet qui ipsum amet labore fugiat id sit magna culpa adipisicing cillum eiusmod. Commodo cillum ut nisi anim sunt velit nostrud eiusmod magna ea minim. Ea deserunt veniam labore nostrud aliqua consectetur.', 'https:via.placeholder.com/400/722/fff/?text=Accusage', '2020-10-06 08:26:16', '0000-00-00 00:00:00'),
(8, 10, 'Kegular', 'Border Collie', 'Large', 'Black', 'Laboris do ex laboris cillum cillum et enim ut occaecat tempor quis qui reprehenderit aute. Dolore enim nostrud ut sunt excepteur excepteur aute laborum nisi ea pariatur dolor. Nisi nulla consectetur veniam elit ea deserunt excepteur cupidatat enim qui.', 'https:via.placeholder.com/400/712/fff/?text=Kegular', '2020-04-07 06:04:45', '0000-00-00 00:00:00'),
(9, 8, 'Equitox', 'Standard Poodle', 'X-Large', 'Gray', 'Aute sint pariatur eiusmod eiusmod voluptate irure amet eiusmod minim ad aliquip cillum. Lorem mollit sit esse cillum occaecat sit et consequat est culpa. Et mollit aliqua dolor cillum dolor est id reprehenderit reprehenderit laboris dolore voluptate culpa.', 'https:via.placeholder.com/400/978/fff/?text=Equitox', '2020-08-22 06:02:34', '0000-00-00 00:00:00'),
(10, 8, 'Eclipsent', 'Standard Poodle', 'Large', 'Brown', 'Ex do aliqua quis consectetur quis aliqua enim. Duis ad mollit consequat nisi ipsum. Ex do culpa voluptate non amet nulla est voluptate ad dolore ipsum reprehenderit.', 'https:via.placeholder.com/400/763/fff/?text=Eclipsent', '2020-10-17 02:20:44', '0000-00-00 00:00:00'),
(11, 10, 'Limage', 'Border Collie', 'Small', 'Brown', 'Enim mollit eu pariatur mollit cillum qui enim sunt officia quis ex fugiat nostrud consequat. Occaecat ipsum sint non eu nostrud ea. Proident veniam ut non duis consequat sunt occaecat minim non magna dolore.', 'https:via.placeholder.com/400/701/fff/?text=Limage', '2020-01-08 08:43:15', '0000-00-00 00:00:00'),
(12, 2, 'Norali', 'Border Collie', 'Medium', 'White', 'Sunt ut officia id pariatur in. Est ipsum ullamco duis occaecat eu. Ex sint laboris nisi est eiusmod mollit est enim ea.', 'https:via.placeholder.com/400/840/fff/?text=Norali', '2020-08-27 09:54:37', '0000-00-00 00:00:00'),
(13, 1, 'Newcube', 'Golden Retriever', 'Medium', 'Brown', 'Pariatur deserunt eu qui amet cupidatat ad amet irure. Deserunt anim reprehenderit adipisicing enim. Cupidatat laborum anim labore nisi ullamco et quis ea enim esse.', 'https:via.placeholder.com/400/865/fff/?text=Newcube', '2020-06-18 02:08:00', '0000-00-00 00:00:00'),
(14, 4, 'Eplode', 'Standard Poodle', 'Medium', 'Brown', 'Mollit proident nisi fugiat quis labore ullamco id dolore id magna tempor cillum. Sint consequat mollit consectetur do non anim anim in excepteur duis nulla. Tempor ipsum commodo exercitation commodo voluptate velit.', 'https:via.placeholder.com/400/730/fff/?text=Eplode', '2020-06-28 12:10:27', '0000-00-00 00:00:00'),
(15, 9, 'Paprikut', 'Doberman', 'Large', 'Gray', 'Nostrud esse est magna veniam anim dolor et. Est deserunt minim ea minim ullamco. Voluptate Lorem nisi reprehenderit elit irure ad.', 'https:via.placeholder.com/400/981/fff/?text=Paprikut', '2020-07-28 01:34:46', '0000-00-00 00:00:00'),
(16, 9, 'Exiand', 'Standard Poodle', 'Large', 'Brown', 'Cupidatat proident cillum nisi ullamco. Cillum sunt amet culpa excepteur proident reprehenderit. Ut laboris cupidatat ullamco occaecat esse.', 'https:via.placeholder.com/400/985/fff/?text=Exiand', '2020-03-01 11:19:52', '0000-00-00 00:00:00'),
(17, 2, 'Telpod', 'Doberman', 'Medium', 'White', 'Amet pariatur excepteur commodo nostrud fugiat officia ipsum dolor ullamco velit proident proident minim. Irure laborum duis aute nostrud do elit aliqua. Fugiat mollit irure ex veniam voluptate nostrud.', 'https:via.placeholder.com/400/987/fff/?text=Telpod', '2020-05-17 09:19:28', '0000-00-00 00:00:00'),
(18, 9, 'Acusage', 'Standard Poodle', 'X-Large', 'Black', 'Sunt qui mollit culpa in minim esse tempor adipisicing in enim ullamco. Qui eu dolor irure ea id pariatur exercitation nostrud id ipsum enim amet ut ad. In id dolor non fugiat occaecat anim.', 'https:via.placeholder.com/400/980/fff/?text=Acusage', '2020-01-11 10:42:00', '0000-00-00 00:00:00'),
(19, 1, 'Brainquil', 'Pitbull Terrier', 'Large', 'Black', 'Voluptate sunt cupidatat ea deserunt aliqua proident aliquip laboris sint id in consectetur mollit quis. Est cillum aliqua esse cupidatat tempor reprehenderit ut tempor eu mollit cillum ullamco. Adipisicing officia culpa consectetur veniam magna.', 'https:via.placeholder.com/400/893/fff/?text=Brainquil', '2020-10-01 02:26:30', '0000-00-00 00:00:00'),
(20, 8, 'Tropolis', 'Golden Retriever', 'X-Large', 'Black', 'Dolor excepteur reprehenderit ex adipisicing. Non eiusmod proident culpa tempor pariatur excepteur consequat magna excepteur aute non est culpa. Magna sit est culpa pariatur id dolor.', 'https:via.placeholder.com/400/802/fff/?text=Tropolis', '2020-08-06 02:28:13', '0000-00-00 00:00:00'),
(21, 6, 'Gronk', 'Border Collie', 'Medium', 'Brown', 'Laboris culpa eu excepteur aute minim veniam eiusmod velit anim exercitation. Lorem id et minim tempor dolore esse non est id fugiat fugiat laboris minim ullamco. Consequat minim duis nulla dolore consectetur tempor Lorem eu dolor in qui.', 'https:via.placeholder.com/400/886/fff/?text=Gronk', '2020-02-22 12:44:38', '0000-00-00 00:00:00'),
(22, 4, 'Lyria', 'Mixed', 'Small', 'Brown', 'Veniam voluptate incididunt enim ea aute ipsum irure incididunt sit. Enim cillum non nisi sunt ullamco cupidatat nisi quis exercitation et enim est. Minim commodo anim adipisicing ad aute.', 'https:via.placeholder.com/400/799/fff/?text=Lyria', '2020-10-14 12:27:23', '0000-00-00 00:00:00'),
(23, 7, 'Cubicide', 'Doberman', 'Large', 'White', 'Labore amet amet proident enim minim ullamco ut nostrud duis dolor cillum elit irure nulla. Sunt et laborum deserunt officia. Minim mollit nulla officia dolore non cupidatat minim magna ex duis ad.', 'https:via.placeholder.com/400/705/fff/?text=Cubicide', '2020-08-12 06:56:57', '0000-00-00 00:00:00'),
(24, 6, 'Apextri', 'Mixed', 'X-Small', 'Brown', 'Enim aute commodo sint excepteur ut. Eu amet mollit dolore voluptate ex id reprehenderit. Irure minim duis deserunt quis minim pariatur ipsum consequat ad sit adipisicing sit.', 'https:via.placeholder.com/400/793/fff/?text=Apextri', '2020-06-04 06:44:40', '0000-00-00 00:00:00'),
(25, 1, 'Immunics', 'Standard Poodle', 'Large', 'Brown', 'Commodo minim nisi incididunt ullamco cillum occaecat incididunt reprehenderit aliquip dolore. Anim nostrud nostrud magna amet sint tempor. Veniam anim dolore velit ex magna qui tempor commodo cupidatat cupidatat aliquip in id.', 'https:via.placeholder.com/400/739/fff/?text=Immunics', '2020-02-18 03:57:41', '0000-00-00 00:00:00'),
(26, 6, 'Magnina', 'Mixed', 'X-Large', 'Black', 'Culpa dolore et cupidatat mollit pariatur dolore labore consectetur ea minim aute ad. Culpa dolor ullamco qui ut non eu anim aliquip do cillum cupidatat proident commodo. Ipsum incididunt cillum consectetur cillum dolor dolore enim ad proident sit enim id.', 'https:via.placeholder.com/400/899/fff/?text=Magnina', '2020-10-04 11:26:24', '0000-00-00 00:00:00'),
(27, 10, 'Fangold', 'Standard Poodle', 'Medium', 'White', 'Occaecat minim magna eu do cillum aliquip magna cupidatat. Culpa laborum labore id voluptate nulla tempor adipisicing sunt anim deserunt ea fugiat. Eiusmod id in reprehenderit nulla exercitation reprehenderit mollit ullamco duis consequat duis ut est excepteur.', 'https:via.placeholder.com/400/832/fff/?text=Fangold', '2020-09-04 11:06:28', '0000-00-00 00:00:00'),
(28, 7, 'Xerex', 'Golden Retriever', 'Large', 'Brown', 'Consequat fugiat nisi nisi ea nulla reprehenderit irure laborum irure esse sunt aliqua eu non. Aliqua proident sit fugiat exercitation occaecat dolore adipisicing eiusmod. Eiusmod exercitation esse mollit exercitation aliquip laborum.', 'https:via.placeholder.com/400/948/fff/?text=Xerex', '2020-03-29 12:44:00', '0000-00-00 00:00:00'),
(29, 6, 'Imaginart', 'Standard Poodle', 'X-Large', 'Brown', 'Deserunt adipisicing culpa veniam nulla ad ipsum sit irure cillum commodo. Anim velit irure sint eiusmod. Nostrud laboris eiusmod proident occaecat est sint irure pariatur enim laboris exercitation ex.', 'https:via.placeholder.com/400/979/fff/?text=Imaginart', '2020-07-07 08:14:11', '0000-00-00 00:00:00'),
(30, 2, 'Netplax', 'Pitbull Terrier', 'Medium', 'Brown', 'Excepteur ad laboris proident proident occaecat elit culpa occaecat commodo. Dolore incididunt exercitation veniam sit exercitation esse. Consequat deserunt proident amet velit adipisicing sit dolor officia laborum sunt labore laborum quis.', 'https:via.placeholder.com/400/992/fff/?text=Netplax', '2020-01-01 09:28:02', '0000-00-00 00:00:00'),
(31, 9, 'Sunclipse', 'Standard Poodle', 'X-Large', 'Brown', 'Sit consectetur dolor consequat pariatur mollit commodo. Enim aute laboris do consequat laboris commodo ad et sint cupidatat Lorem cupidatat laboris fugiat. Qui officia laborum reprehenderit sunt proident.', 'https:via.placeholder.com/400/787/fff/?text=Sunclipse', '2020-10-04 05:50:41', '0000-00-00 00:00:00'),
(32, 2, 'Enomen', 'Standard Poodle', 'Medium', 'Brown', 'Commodo voluptate labore reprehenderit eu excepteur do ea anim ullamco proident. Anim veniam consectetur velit anim amet nisi adipisicing anim est. Exercitation veniam do occaecat magna.', 'https:via.placeholder.com/400/772/fff/?text=Enomen', '2020-07-08 10:36:25', '0000-00-00 00:00:00'),
(33, 5, 'Intergeek', 'Doberman', 'X-Large', 'White', 'Excepteur incididunt mollit nulla aute qui adipisicing qui mollit id. Irure do labore elit excepteur nostrud elit laboris deserunt. Ut consequat magna veniam veniam officia fugiat enim irure cupidatat enim Lorem magna.', 'https:via.placeholder.com/400/725/fff/?text=Intergeek', '2020-06-12 12:43:30', '0000-00-00 00:00:00'),
(34, 3, 'Rocklogic', 'Mixed', 'Small', 'White', 'Non proident ullamco adipisicing exercitation tempor exercitation quis anim reprehenderit. Deserunt nisi eiusmod et deserunt culpa aute consequat mollit incididunt sit dolor in consectetur adipisicing. Aliquip pariatur Lorem deserunt cupidatat consequat excepteur sint.', 'https:via.placeholder.com/400/725/fff/?text=Rocklogic', '2020-06-07 04:13:35', '0000-00-00 00:00:00'),
(35, 4, 'Zosis', 'Mixed', 'X-Small', 'Brown', 'Ad dolore velit minim exercitation. Lorem esse esse sunt veniam deserunt sunt sint anim officia. Duis excepteur labore enim eiusmod magna ea dolore proident.', 'https:via.placeholder.com/400/939/fff/?text=Zosis', '2020-02-27 09:21:47', '0000-00-00 00:00:00'),
(36, 7, 'Combogen', 'Pitbull Terrier', 'X-Large', 'White', 'Ea sit sint exercitation nisi nostrud esse enim commodo sit eiusmod consectetur. Non ipsum labore qui ad eiusmod commodo laborum. Elit deserunt elit non Lorem est qui enim occaecat exercitation.', 'https:via.placeholder.com/400/921/fff/?text=Combogen', '2020-05-01 09:35:15', '0000-00-00 00:00:00'),
(37, 5, 'Lyrichord', 'Golden Retriever', 'Medium', 'Brown', 'Proident cupidatat magna officia quis id Lorem fugiat incididunt. Mollit commodo commodo officia sit exercitation nostrud exercitation ad. Mollit veniam ea veniam ullamco anim tempor aliquip.', 'https:via.placeholder.com/400/851/fff/?text=Lyrichord', '2020-08-04 06:57:07', '0000-00-00 00:00:00'),
(38, 6, 'Dognosis', 'Mixed', 'X-Large', 'Black', 'Sint ex amet reprehenderit quis fugiat officia qui pariatur reprehenderit ut. Aute ut cillum labore veniam pariatur deserunt. Ullamco pariatur voluptate est consectetur labore aute aute.', 'https:via.placeholder.com/400/843/fff/?text=Dognosis', '2020-07-20 07:51:19', '0000-00-00 00:00:00'),
(39, 4, 'Ceprene', 'Golden Retriever', 'X-Large', 'White', 'Nisi nostrud cupidatat proident anim voluptate nostrud ea cillum cillum Lorem laboris commodo cupidatat. Nisi eu ut duis ipsum nisi eu et amet adipisicing officia est incididunt et dolore. Lorem exercitation dolor labore aliqua officia voluptate.', 'https:via.placeholder.com/400/772/fff/?text=Ceprene', '2020-07-08 09:22:11', '0000-00-00 00:00:00'),
(40, 3, 'Bovis', 'Standard Poodle', 'Large', 'Gray', 'Labore commodo ipsum pariatur do. Magna sint deserunt labore aute dolor eu exercitation velit occaecat culpa sit. Irure ut excepteur minim fugiat fugiat.', 'https:via.placeholder.com/400/965/fff/?text=Bovis', '2020-09-17 02:01:48', '0000-00-00 00:00:00'),
(41, 3, 'Cablam', 'Mixed', 'X-Large', 'Brown', 'Pariatur ad incididunt aute ipsum commodo aute id esse et consectetur et enim. Officia ipsum est dolore aliqua. Velit incididunt elit Lorem magna ipsum fugiat in Lorem.', 'https:via.placeholder.com/400/767/fff/?text=Cablam', '2020-06-26 10:30:11', '0000-00-00 00:00:00'),
(42, 7, 'Menbrain', 'Pitbull Terrier', 'Small', 'Black', 'Eiusmod exercitation ut voluptate laborum. Anim non incididunt reprehenderit cillum. Dolor dolore non sint Lorem duis qui.', 'https:via.placeholder.com/400/925/fff/?text=Menbrain', '2020-06-02 04:31:14', '0000-00-00 00:00:00'),
(43, 7, 'Conjurica', 'Doberman', 'Small', 'White', 'Tempor anim exercitation non nulla sint officia aute ut sit laborum. Minim laborum ipsum ut officia. Eu do fugiat culpa eu reprehenderit laboris sint eiusmod aliqua ipsum.', 'https:via.placeholder.com/400/967/fff/?text=Conjurica', '2020-07-28 07:05:37', '0000-00-00 00:00:00'),
(44, 7, 'Jumpstack', 'Golden Retriever', 'X-Large', 'Brown', 'Laboris occaecat labore incididunt in non Lorem id dolore quis ullamco. Commodo adipisicing sint non aute magna ex tempor voluptate ex irure mollit pariatur. Non minim do id pariatur laborum in amet quis.', 'https:via.placeholder.com/400/808/fff/?text=Jumpstack', '2020-05-02 08:09:21', '0000-00-00 00:00:00'),
(45, 1, 'Zanymax', 'Border Collie', 'Small', 'White', 'Elit amet in ut magna occaecat magna eiusmod id eiusmod anim aute sint ea velit. Velit labore velit amet anim officia. Irure in proident mollit quis dolor exercitation aliquip mollit dolore eiusmod ex.', 'https:via.placeholder.com/400/890/fff/?text=Zanymax', '2020-03-10 10:42:04', '0000-00-00 00:00:00'),
(46, 8, 'Genmex', 'Pitbull Terrier', 'Large', 'Brown', 'Ea dolore laborum reprehenderit mollit. Aute enim tempor quis est velit amet. Ex voluptate proident consequat elit non voluptate deserunt ad nisi aute.', 'https:via.placeholder.com/400/761/fff/?text=Genmex', '2020-08-16 02:11:47', '0000-00-00 00:00:00'),
(47, 5, 'Pharmacon', 'Border Collie', 'Medium', 'Gray', 'Minim pariatur et consequat magna. Veniam enim do occaecat amet velit ad. Sint labore pariatur ex do ad consectetur officia fugiat reprehenderit mollit do nulla magna.', 'https:via.placeholder.com/400/915/fff/?text=Pharmacon', '2020-06-16 02:44:24', '0000-00-00 00:00:00'),
(48, 7, 'Andershun', 'Border Collie', 'Small', 'Brown', 'Eu ipsum proident dolore veniam do sunt commodo ipsum qui ut aute est nisi adipisicing. Culpa adipisicing enim excepteur aliqua in eiusmod. Magna tempor irure dolor consectetur fugiat dolore.', 'https:via.placeholder.com/400/897/fff/?text=Andershun', '2020-10-04 07:15:24', '0000-00-00 00:00:00'),
(49, 2, 'Trollery', 'Mixed', 'X-Small', 'White', 'Nulla do labore occaecat reprehenderit veniam. Ex in non consequat nulla velit enim non eiusmod pariatur sunt. Quis officia amet ipsum cupidatat consectetur est Lorem anim consectetur est consectetur irure.', 'https:via.placeholder.com/400/843/fff/?text=Trollery', '2020-02-12 01:57:47', '0000-00-00 00:00:00'),
(50, 2, 'Softmicro', 'Golden Retriever', '0Medium', 'Brown', 'Nostrud nisi laborum et ut magna eiusmod tempor enim deserunt nulla non minim dolor. Aliqua veniam Lorem duis occaecat proident eiusmod ad eiusmod aliquip veniam consequat. Anim voluptate velit officia dolore id sit duis ea et pariatur.', 'https:via.placeholder.com/400/801/fff/?text=Softmicro', '2020-01-19 08:45:08', '0000-00-00 00:00:00'),
(57, 1, 'Mooo', 'be', 'large', 'blue', 'aaaaaa', 'http://via.placeholder.com/400?text=ANIMAL', '2020-12-03 14:59:39', '0000-00-00 00:00:00'),
(58, 11, 'Mushroom', 'Golden Eeeed', 'Small', 'Red', 'Mushroom is a red doggie. Special doggie.........', 'http://via.placeholder.com/400?text=ANIMAL', '2020-12-03 15:07:35', '0000-00-00 00:00:00'),
(59, 11, 'Hohoho', 'Yorkie', 'Small', 'White', 'Yea! A white yorkie!', 'http://via.placeholder.com/400?text=ANIMAL', '2020-12-06 11:44:41', '0000-00-00 00:00:00'),
(60, 11, 'Olle', 'Calico Tuxedo', 'Large', 'Brown', 'Olleeeeeee', 'uploads_animals/1607585615.3429_Cute 4.jpg', '2020-12-06 11:45:28', '0000-00-00 00:00:00'),
(64, 14, 'Ollie', 'Golden Retriever', 'Large', 'Brown', 'Ollie is a large brown golden retriever. ', 'http://via.placeholder.com/400?text=ANIMAL', '2020-12-10 00:47:29', '0000-00-00 00:00:00'),
(62, 2, '', '', '', '', '', 'http://via.placeholder.com/400?text=ANIMAL', '2020-12-09 13:18:33', '0000-00-00 00:00:00'),
(63, 3, '', '', '', '', '', 'http://via.placeholder.com/400?text=ANIMAL', '2020-12-09 16:12:56', '0000-00-00 00:00:00'),
(65, 14, 'Buddy', 'Border Collie', 'Medium', 'Black', '', 'http://via.placeholder.com/400?text=ANIMAL', '2020-12-10 00:49:15', '0000-00-00 00:00:00'),
(66, 14, 'Pumba', 'Pitbull Terrier', 'Medium', 'White', '', 'http://via.placeholder.com/400?text=ANIMAL', '2020-12-10 00:49:49', '0000-00-00 00:00:00'),
(67, 14, 'Milo', 'Standard Poodle', 'X-Large', 'Brown', '', 'http://via.placeholder.com/400?text=ANIMAL', '2020-12-10 00:50:23', '0000-00-00 00:00:00'),
(68, 14, 'Bailey', 'Mixed', '', '', '', 'http://via.placeholder.com/400?text=ANIMAL', '2020-12-10 00:50:33', '0000-00-00 00:00:00'),
(69, 14, 'Izzy', 'Chihuahua', '', '', '', 'http://via.placeholder.com/400?text=ANIMAL', '2020-12-10 00:50:51', '0000-00-00 00:00:00'),
(70, 14, 'Fin', 'Italian Greyhound', 'Gray', '', '', 'http://via.placeholder.com/400?text=ANIMAL', '2020-12-10 00:51:06', '0000-00-00 00:00:00'),
(71, 14, 'Drake', 'White Bull Terrier', '', '', '', 'http://via.placeholder.com/400?text=ANIMAL', '2020-12-10 00:51:25', '0000-00-00 00:00:00'),
(72, 14, 'Cooper', 'Doberman', 'Black', '', '', 'http://via.placeholder.com/400?text=ANIMAL', '2020-12-10 00:51:36', '0000-00-00 00:00:00');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
