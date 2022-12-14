-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 07, 2022 at 06:51 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `šola`
--

-- --------------------------------------------------------

--
-- Table structure for table `assignment`
--

CREATE TABLE `assignment` (
  `ID` int(11) NOT NULL,
  `teacher` int(11) NOT NULL,
  `subject` int(11) NOT NULL,
  `due` date NOT NULL,
  `title` varchar(50) NOT NULL,
  `class` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `assignment`
--

INSERT INTO `assignment` (`ID`, `teacher`, `subject`, `due`, `title`, `class`) VALUES
(1, 13, 6, '2023-10-27', 'sasaeses', 3),
(2, 13, 2, '2022-11-24', 'saeseaese', 0);

-- --------------------------------------------------------

--
-- Table structure for table `atends`
--

CREATE TABLE `atends` (
  `id` int(11) NOT NULL,
  `user` int(11) NOT NULL,
  `ID_class` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `atends`
--

INSERT INTO `atends` (`id`, `user`, `ID_class`) VALUES
(3, 20, 3);

-- --------------------------------------------------------

--
-- Table structure for table `class`
--

CREATE TABLE `class` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `schedule` varchar(100) DEFAULT NULL,
  `homeroom` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `class`
--

INSERT INTO `class` (`id`, `name`, `schedule`, `homeroom`) VALUES
(3, 'R2A', '0', 10),
(4, 'sdaesea', '0', 13);

-- --------------------------------------------------------

--
-- Table structure for table `extra_subjects`
--

CREATE TABLE `extra_subjects` (
  `ID` int(11) NOT NULL,
  `ID_sub` int(11) NOT NULL,
  `ID_user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `extra_subjects`
--

INSERT INTO `extra_subjects` (`ID`, `ID_sub`, `ID_user`) VALUES
(25, 5, 3),
(26, 5, 3),
(27, 5, 555),
(28, 5, 555),
(29, 6, 20),
(30, 0, 20),
(31, 0, 20),
(32, 0, 20),
(33, 0, 20),
(34, 0, 20),
(35, 0, 20),
(36, 0, 20),
(37, 0, 20),
(38, 0, 20),
(39, 0, 20),
(40, 0, 20),
(41, 0, 20),
(42, 0, 20),
(43, 1, 20),
(44, 1, 20),
(45, 1, 20),
(46, 1, 20),
(47, 1, 20),
(48, 6, 20),
(49, 6, 20),
(50, 2, 20),
(51, 2, 20),
(52, 2, 20),
(53, 2, 20),
(54, 6, 20),
(55, 2, 20),
(56, 2, 20),
(57, 2, 20),
(58, 2, 20),
(59, 6, 20),
(60, 6, 20),
(61, 6, 20),
(62, 6, 20),
(63, 6, 20),
(64, 6, 20),
(65, 6, 20),
(66, 6, 20),
(67, 6, 20),
(68, 2, 20),
(69, 7, 20);

-- --------------------------------------------------------

--
-- Table structure for table `schedule`
--

CREATE TABLE `schedule` (
  `ID` int(11) NOT NULL,
  `CLASS` int(11) NOT NULL,
  `TEACHER` int(11) NOT NULL,
  `SUBJECT` int(11) NOT NULL,
  `HOUR` int(11) NOT NULL,
  `DAY` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `schedule`
--

INSERT INTO `schedule` (`ID`, `CLASS`, `TEACHER`, `SUBJECT`, `HOUR`, `DAY`) VALUES
(1, 0, 10, 4, 0, 1),
(2, 0, 10, 2, 0, 2),
(3, 0, 10, 1, 0, 3),
(4, 0, 10, 1, 0, 4),
(5, 0, 10, 1, 0, 5),
(6, 0, 10, 6, 1, 1),
(7, 0, 10, 1, 1, 2),
(8, 0, 10, 1, 1, 3),
(9, 0, 10, 1, 1, 4),
(10, 0, 10, 1, 1, 5),
(11, 0, 10, 3, 2, 1),
(12, 0, 10, 1, 2, 2),
(13, 0, 10, 1, 2, 3),
(14, 0, 10, 1, 2, 4),
(15, 0, 10, 1, 2, 5),
(16, 0, 10, 1, 3, 1),
(17, 0, 10, 1, 3, 2),
(18, 0, 10, 1, 3, 3),
(19, 0, 10, 1, 3, 4),
(20, 0, 10, 1, 3, 5),
(21, 0, 10, 1, 4, 1),
(22, 0, 10, 1, 4, 2),
(23, 0, 10, 1, 4, 3),
(24, 0, 10, 1, 4, 4),
(25, 0, 10, 1, 4, 5),
(26, 0, 10, 1, 5, 1),
(27, 0, 10, 1, 5, 2),
(28, 0, 10, 1, 5, 3),
(29, 0, 10, 1, 5, 4),
(30, 0, 10, 1, 5, 5),
(31, 0, 10, 1, 6, 1),
(32, 0, 10, 1, 6, 2),
(33, 0, 10, 1, 6, 3),
(34, 0, 10, 1, 6, 4),
(35, 0, 10, 1, 6, 5),
(36, 0, 10, 1, 7, 1),
(37, 0, 10, 1, 7, 2),
(38, 0, 10, 1, 7, 3),
(39, 0, 10, 1, 7, 4),
(40, 0, 10, 1, 7, 5),
(41, 0, 10, 1, 8, 1),
(42, 0, 10, 1, 8, 2),
(43, 0, 10, 1, 8, 3),
(44, 0, 10, 1, 8, 4),
(45, 0, 10, 1, 8, 5),
(46, 0, 10, 4, 0, 1),
(47, 0, 10, 2, 0, 2),
(48, 0, 10, 1, 0, 3),
(49, 0, 10, 1, 0, 4),
(50, 0, 10, 1, 0, 5),
(51, 0, 10, 6, 1, 1),
(52, 0, 10, 1, 1, 2),
(53, 0, 10, 1, 1, 3),
(54, 0, 10, 1, 1, 4),
(55, 0, 10, 1, 1, 5),
(56, 0, 10, 3, 2, 1),
(57, 0, 10, 1, 2, 2),
(58, 0, 10, 1, 2, 3),
(59, 0, 10, 1, 2, 4),
(60, 0, 10, 1, 2, 5),
(61, 0, 10, 1, 3, 1),
(62, 0, 10, 1, 3, 2),
(63, 0, 10, 1, 3, 3),
(64, 0, 10, 1, 3, 4),
(65, 0, 10, 1, 3, 5),
(66, 0, 10, 1, 4, 1),
(67, 0, 10, 1, 4, 2),
(68, 0, 10, 1, 4, 3),
(69, 0, 10, 1, 4, 4),
(70, 0, 10, 1, 4, 5),
(71, 0, 10, 1, 5, 1),
(72, 0, 10, 1, 5, 2),
(73, 0, 10, 1, 5, 3),
(74, 0, 10, 1, 5, 4),
(75, 0, 10, 1, 5, 5),
(76, 0, 10, 1, 6, 1),
(77, 0, 10, 1, 6, 2),
(78, 0, 10, 1, 6, 3),
(79, 0, 10, 1, 6, 4),
(80, 0, 10, 1, 6, 5),
(81, 0, 10, 1, 7, 1),
(82, 0, 10, 1, 7, 2),
(83, 0, 10, 1, 7, 3),
(84, 0, 10, 1, 7, 4),
(85, 0, 10, 1, 7, 5),
(86, 0, 10, 1, 8, 1),
(87, 0, 10, 1, 8, 2),
(88, 0, 10, 1, 8, 3),
(89, 0, 10, 1, 8, 4),
(90, 0, 10, 1, 8, 5),
(91, 0, 10, 4, 0, 1),
(92, 0, 10, 2, 0, 2),
(93, 0, 10, 1, 0, 3),
(94, 0, 10, 1, 0, 4),
(95, 0, 10, 1, 0, 5),
(96, 0, 10, 6, 1, 1),
(97, 0, 10, 1, 1, 2),
(98, 0, 10, 1, 1, 3),
(99, 0, 10, 1, 1, 4),
(100, 0, 10, 1, 1, 5),
(101, 0, 10, 3, 2, 1),
(102, 0, 10, 1, 2, 2),
(103, 0, 10, 1, 2, 3),
(104, 0, 10, 1, 2, 4),
(105, 0, 10, 1, 2, 5),
(106, 0, 10, 1, 3, 1),
(107, 0, 10, 1, 3, 2),
(108, 0, 10, 1, 3, 3),
(109, 0, 10, 1, 3, 4),
(110, 0, 10, 1, 3, 5),
(111, 0, 10, 1, 4, 1),
(112, 0, 10, 1, 4, 2),
(113, 0, 10, 1, 4, 3),
(114, 0, 10, 1, 4, 4),
(115, 0, 10, 1, 4, 5),
(116, 0, 10, 1, 5, 1),
(117, 0, 10, 1, 5, 2),
(118, 0, 10, 1, 5, 3),
(119, 0, 10, 1, 5, 4),
(120, 0, 10, 1, 5, 5),
(121, 0, 10, 1, 6, 1),
(122, 0, 10, 1, 6, 2),
(123, 0, 10, 1, 6, 3),
(124, 0, 10, 1, 6, 4),
(125, 0, 10, 1, 6, 5),
(126, 0, 10, 1, 7, 1),
(127, 0, 10, 1, 7, 2),
(128, 0, 10, 1, 7, 3),
(129, 0, 10, 1, 7, 4),
(130, 0, 10, 1, 7, 5),
(131, 0, 10, 1, 8, 1),
(132, 0, 10, 1, 8, 2),
(133, 0, 10, 1, 8, 3),
(134, 0, 10, 1, 8, 4),
(135, 0, 10, 1, 8, 5),
(136, 0, 10, 4, 0, 1),
(137, 0, 10, 2, 0, 2),
(138, 0, 10, 1, 0, 3),
(139, 0, 10, 1, 0, 4),
(140, 0, 10, 1, 0, 5),
(141, 0, 10, 6, 1, 1),
(142, 0, 10, 1, 1, 2),
(143, 0, 10, 1, 1, 3),
(144, 0, 10, 1, 1, 4),
(145, 0, 10, 1, 1, 5),
(146, 0, 10, 3, 2, 1),
(147, 0, 10, 1, 2, 2),
(148, 0, 10, 1, 2, 3),
(149, 0, 10, 1, 2, 4),
(150, 0, 10, 1, 2, 5),
(151, 0, 10, 1, 3, 1),
(152, 0, 10, 1, 3, 2),
(153, 0, 10, 1, 3, 3),
(154, 0, 10, 1, 3, 4),
(155, 0, 10, 1, 3, 5),
(156, 0, 10, 1, 4, 1),
(157, 0, 10, 1, 4, 2),
(158, 0, 10, 1, 4, 3),
(159, 0, 10, 1, 4, 4),
(160, 0, 10, 1, 4, 5),
(161, 0, 10, 1, 5, 1),
(162, 0, 10, 1, 5, 2),
(163, 0, 10, 1, 5, 3),
(164, 0, 10, 1, 5, 4),
(165, 0, 10, 1, 5, 5),
(166, 0, 10, 1, 6, 1),
(167, 0, 10, 1, 6, 2),
(168, 0, 10, 1, 6, 3),
(169, 0, 10, 1, 6, 4),
(170, 0, 10, 1, 6, 5),
(171, 0, 10, 1, 7, 1),
(172, 0, 10, 1, 7, 2),
(173, 0, 10, 1, 7, 3),
(174, 0, 10, 1, 7, 4),
(175, 0, 10, 1, 7, 5),
(176, 0, 10, 1, 8, 1),
(177, 0, 10, 1, 8, 2),
(178, 0, 10, 1, 8, 3),
(179, 0, 10, 1, 8, 4),
(180, 0, 10, 1, 8, 5),
(181, 0, 10, 4, 0, 1),
(182, 0, 10, 2, 0, 2),
(183, 0, 10, 1, 0, 3),
(184, 0, 10, 1, 0, 4),
(185, 0, 10, 1, 0, 5),
(186, 0, 10, 6, 1, 1),
(187, 0, 10, 1, 1, 2),
(188, 0, 10, 1, 1, 3),
(189, 0, 10, 1, 1, 4),
(190, 0, 10, 1, 1, 5),
(191, 0, 10, 3, 2, 1),
(192, 0, 10, 1, 2, 2),
(193, 0, 10, 1, 2, 3),
(194, 0, 10, 1, 2, 4),
(195, 0, 10, 1, 2, 5),
(196, 0, 10, 1, 3, 1),
(197, 0, 10, 1, 3, 2),
(198, 0, 10, 1, 3, 3),
(199, 0, 10, 1, 3, 4),
(200, 0, 10, 1, 3, 5),
(201, 0, 10, 1, 4, 1),
(202, 0, 10, 1, 4, 2),
(203, 0, 10, 1, 4, 3),
(204, 0, 10, 1, 4, 4),
(205, 0, 10, 1, 4, 5),
(206, 0, 10, 1, 5, 1),
(207, 0, 10, 1, 5, 2),
(208, 0, 10, 1, 5, 3),
(209, 0, 10, 1, 5, 4),
(210, 0, 10, 1, 5, 5),
(211, 0, 10, 1, 6, 1),
(212, 0, 10, 1, 6, 2),
(213, 0, 10, 1, 6, 3),
(214, 0, 10, 1, 6, 4),
(215, 0, 10, 1, 6, 5),
(216, 0, 10, 1, 7, 1),
(217, 0, 10, 1, 7, 2),
(218, 0, 10, 1, 7, 3),
(219, 0, 10, 1, 7, 4),
(220, 0, 10, 1, 7, 5),
(221, 0, 10, 1, 8, 1),
(222, 0, 10, 1, 8, 2),
(223, 0, 10, 1, 8, 3),
(224, 0, 10, 1, 8, 4),
(225, 0, 10, 1, 8, 5),
(226, 0, 10, 4, 0, 1),
(227, 0, 10, 2, 0, 2),
(228, 0, 10, 1, 0, 3),
(229, 0, 10, 1, 0, 4),
(230, 0, 10, 1, 0, 5),
(231, 0, 10, 6, 1, 1),
(232, 0, 10, 1, 1, 2),
(233, 0, 10, 1, 1, 3),
(234, 0, 10, 1, 1, 4),
(235, 0, 10, 1, 1, 5),
(236, 0, 10, 3, 2, 1),
(237, 0, 10, 1, 2, 2),
(238, 0, 10, 1, 2, 3),
(239, 0, 10, 1, 2, 4),
(240, 0, 10, 1, 2, 5),
(241, 0, 10, 1, 3, 1),
(242, 0, 10, 1, 3, 2),
(243, 0, 10, 1, 3, 3),
(244, 0, 10, 1, 3, 4),
(245, 0, 10, 1, 3, 5),
(246, 0, 10, 1, 4, 1),
(247, 0, 10, 1, 4, 2),
(248, 0, 10, 1, 4, 3),
(249, 0, 10, 1, 4, 4),
(250, 0, 10, 1, 4, 5),
(251, 0, 10, 1, 5, 1),
(252, 0, 10, 1, 5, 2),
(253, 0, 10, 1, 5, 3),
(254, 0, 10, 1, 5, 4),
(255, 0, 10, 1, 5, 5),
(256, 0, 10, 1, 6, 1),
(257, 0, 10, 1, 6, 2),
(258, 0, 10, 1, 6, 3),
(259, 0, 10, 1, 6, 4),
(260, 0, 10, 1, 6, 5),
(261, 0, 10, 1, 7, 1),
(262, 0, 10, 1, 7, 2),
(263, 0, 10, 1, 7, 3),
(264, 0, 10, 1, 7, 4),
(265, 0, 10, 1, 7, 5),
(266, 0, 10, 1, 8, 1),
(267, 0, 10, 1, 8, 2),
(268, 0, 10, 1, 8, 3),
(269, 0, 10, 1, 8, 4),
(270, 0, 10, 1, 8, 5),
(271, 4, 10, 4, 0, 1),
(316, 4, 10, 2, 0, 1),
(321, 4, 13, 1, 1, 1),
(332, 4, 13, 1, 3, 2),
(360, 4, 13, 1, 8, 5),
(361, 4, 10, 2, 0, 1),
(366, 4, 13, 1, 1, 1),
(377, 4, 13, 1, 3, 2),
(405, 4, 13, 1, 8, 5),
(406, 4, 10, 2, 0, 1),
(411, 4, 13, 1, 1, 1),
(422, 4, 13, 1, 3, 2),
(450, 4, 13, 1, 8, 5),
(451, 4, 10, 2, 0, 1),
(456, 4, 13, 1, 1, 1),
(467, 4, 13, 1, 3, 2),
(495, 4, 13, 1, 8, 5),
(501, 4, 13, 1, 1, 1),
(541, 4, 10, 1, 0, 1),
(586, 4, 10, 1, 0, 1),
(631, 4, 10, 1, 0, 1),
(676, 4, 13, 2, 0, 1),
(677, 4, 10, 1, 0, 2),
(678, 4, 10, 1, 0, 3),
(679, 4, 10, 1, 0, 4),
(680, 4, 10, 1, 0, 5),
(681, 4, 10, 5, 1, 1),
(682, 4, 10, 1, 1, 2),
(683, 4, 10, 5, 1, 3),
(684, 4, 10, 1, 1, 4),
(685, 4, 10, 1, 1, 5),
(686, 4, 10, 1, 2, 1),
(687, 4, 10, 1, 2, 2),
(688, 4, 10, 1, 2, 3),
(689, 4, 10, 1, 2, 4),
(690, 4, 10, 1, 2, 5),
(691, 4, 10, 1, 3, 1),
(692, 4, 10, 1, 3, 2),
(693, 4, 10, 1, 3, 3),
(694, 4, 10, 1, 3, 4),
(695, 4, 10, 1, 3, 5),
(696, 4, 10, 1, 4, 1),
(697, 4, 10, 1, 4, 2),
(698, 4, 10, 1, 4, 3),
(699, 4, 10, 1, 4, 4),
(700, 4, 10, 1, 4, 5),
(701, 4, 10, 1, 5, 1),
(702, 4, 10, 1, 5, 2),
(703, 4, 10, 1, 5, 3),
(704, 4, 10, 1, 5, 4),
(705, 4, 10, 1, 5, 5),
(706, 4, 10, 2, 6, 1),
(707, 4, 10, 1, 6, 2),
(708, 4, 10, 1, 6, 3),
(709, 4, 10, 1, 6, 4),
(710, 4, 10, 1, 6, 5),
(711, 4, 10, 1, 7, 1),
(712, 4, 10, 1, 7, 2),
(713, 4, 10, 1, 7, 3),
(714, 4, 10, 1, 7, 4),
(715, 4, 10, 1, 7, 5),
(716, 4, 10, 2, 8, 1),
(717, 4, 10, 1, 8, 2),
(718, 4, 10, 1, 8, 3),
(719, 4, 10, 1, 8, 4),
(720, 4, 10, 1, 8, 5),
(778, 3, 13, 1, 2, 3),
(791, 3, 13, 1, 5, 1),
(876, 3, 10, 1, 4, 1),
(901, 3, 10, 2, 0, 1),
(902, 3, 10, 2, 0, 2),
(903, 3, 10, 1, 0, 3),
(904, 3, 10, 1, 0, 4),
(905, 3, 10, 1, 0, 5),
(906, 3, 10, 2, 1, 1),
(907, 3, 10, 3, 1, 2),
(908, 3, 10, 1, 1, 3),
(909, 3, 10, 1, 1, 4),
(910, 3, 10, 1, 1, 5),
(911, 3, 10, 3, 2, 1),
(912, 3, 10, 4, 2, 2),
(913, 3, 10, 1, 2, 3),
(914, 3, 10, 1, 2, 4),
(915, 3, 10, 1, 2, 5),
(916, 3, 10, 2, 3, 1),
(917, 3, 10, 1, 3, 2),
(918, 3, 10, 1, 3, 3),
(919, 3, 10, 1, 3, 4),
(920, 3, 10, 1, 3, 5),
(921, 3, 13, 6, 4, 1),
(922, 3, 10, 1, 4, 2),
(923, 3, 10, 1, 4, 3),
(924, 3, 10, 1, 4, 4),
(925, 3, 10, 1, 4, 5),
(926, 3, 10, 7, 5, 1),
(927, 3, 10, 1, 5, 2),
(928, 3, 10, 1, 5, 3),
(929, 3, 10, 1, 5, 4),
(930, 3, 10, 1, 5, 5),
(931, 3, 10, 2, 6, 1),
(932, 3, 10, 1, 6, 2),
(933, 3, 10, 1, 6, 3),
(934, 3, 10, 1, 6, 4),
(935, 3, 10, 1, 6, 5),
(936, 3, 10, 1, 7, 1),
(937, 3, 10, 1, 7, 2),
(938, 3, 10, 1, 7, 3),
(939, 3, 10, 1, 7, 4),
(940, 3, 10, 1, 7, 5),
(941, 3, 10, 1, 8, 1),
(942, 3, 10, 1, 8, 2),
(943, 3, 10, 1, 8, 3),
(944, 3, 10, 1, 8, 4),
(945, 3, 10, 1, 8, 5);

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

CREATE TABLE `subjects` (
  `ID` int(11) NOT NULL,
  `name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `subjects`
--

INSERT INTO `subjects` (`ID`, `name`) VALUES
(1, 'VVO'),
(2, 'MAT'),
(3, 'ANG'),
(4, 'UIP'),
(5, 'LMF'),
(6, 'WTF'),
(7, 'ČPŠ');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `username` varchar(50) NOT NULL,
  `password` varchar(256) NOT NULL,
  `permission` int(1) NOT NULL,
  `Claim` int(2) NOT NULL,
  `name` varchar(50) NOT NULL,
  `surname` varchar(50) NOT NULL,
  `ID` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`username`, `password`, `permission`, `Claim`, `name`, `surname`, `ID`) VALUES
('Admin', '$2y$10$nj5a6eRoqus4usRHiTHTFOG/PzjJ8DSu/HmITSv5NuM01GQeJAgJW', 3, 0, 'Admin', 'Admin', 2),
('123', '$2y$10$Js6u04Ivaui46dTSQZdcYett4whUkEeiNa1t7jKJi4bmA0ERU4ZGi', 0, 0, '', '', 4),
('lll', '$2y$10$tfyWFB90P/hVLq9vf3y4YehD5ZLjcEMaRsfB0xtc9ZRINy6edaq7S', 0, 0, '', '', 6),
('konj', '$2y$10$jpIWZE1qKBtij/OiGRG79eovS0anYSbCDP8suCVQX5JholcoGO4ja', 3, 2, 'Steve', 'jon', 8),
('gey', '$2y$10$Vp8Yd4lSowvv4kreLO1ZR.4WDJgqyfbF82p/sZf26t8B73.JWWolC', 2, 2, 'gey', 'gey', 10),
('111', '$2y$10$mKCjNfpA3nq24xYXhO0BO.dSm7lKLeee2tb3qhfndcdb/f2p4TMAW', 3, 2, '111', '111', 11),
('333', '$2y$10$ikrERwp7Ic5fe3bqnEQZye0PM5Qv7Cz2Z2iQp3sXY8aSMDX0k/q8K', 2, 2, '333', '333', 13),
('444', '$2y$10$xRbpDFpd8IgR9.4CgNPrL./dER/mpmYMZrDYdS8VuqO2ZCYkgDujq', 1, 1, '444', '444', 14),
('555', '$2y$10$tObka7mUxH5l0rpRx.NyP.czaoJbBhSt0tmjPX1cT1JU.QZQIdH5a', 1, 1, '555', '555', 20);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `assignment`
--
ALTER TABLE `assignment`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `atends`
--
ALTER TABLE `atends`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Atends_user` (`user`),
  ADD KEY `Atends_class` (`ID_class`);

--
-- Indexes for table `class`
--
ALTER TABLE `class`
  ADD PRIMARY KEY (`id`),
  ADD KEY `homeroom` (`homeroom`);

--
-- Indexes for table `extra_subjects`
--
ALTER TABLE `extra_subjects`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `schedule`
--
ALTER TABLE `schedule`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `subjects`
--
ALTER TABLE `subjects`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `assignment`
--
ALTER TABLE `assignment`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `atends`
--
ALTER TABLE `atends`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `class`
--
ALTER TABLE `class`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `extra_subjects`
--
ALTER TABLE `extra_subjects`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT for table `schedule`
--
ALTER TABLE `schedule`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=946;

--
-- AUTO_INCREMENT for table `subjects`
--
ALTER TABLE `subjects`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `ID` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `atends`
--
ALTER TABLE `atends`
  ADD CONSTRAINT `Atends_class` FOREIGN KEY (`ID_class`) REFERENCES `class` (`id`),
  ADD CONSTRAINT `Atends_user` FOREIGN KEY (`user`) REFERENCES `user` (`ID`);

--
-- Constraints for table `class`
--
ALTER TABLE `class`
  ADD CONSTRAINT `class_ibfk_1` FOREIGN KEY (`homeroom`) REFERENCES `user` (`ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
