-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Gostitelj: 127.0.0.1
-- Čas nastanka: 27. sep 2022 ob 10.54
-- Različica strežnika: 10.4.20-MariaDB
-- Različica PHP: 8.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Zbirka podatkov: `šola`
--

-- --------------------------------------------------------

--
-- Struktura tabele `atends`
--

CREATE TABLE `atends` (
  `id` int(11) NOT NULL,
  `user` int(11) NOT NULL,
  `ID_class` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktura tabele `class`
--

CREATE TABLE `class` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `schedule` varchar(100) DEFAULT NULL,
  `homeroom` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Odloži podatke za tabelo `class`
--

INSERT INTO `class` (`id`, `name`, `schedule`, `homeroom`) VALUES
(3, 'R2A', '0', 10),
(4, 'sdaesea', '0', 13);

-- --------------------------------------------------------

--
-- Struktura tabele `subjects`
--

CREATE TABLE `subjects` (
  `ID` int(11) NOT NULL,
  `name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktura tabele `user`
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
-- Odloži podatke za tabelo `user`
--

INSERT INTO `user` (`username`, `password`, `permission`, `Claim`, `name`, `surname`, `ID`) VALUES
('Admin', '$2y$10$nj5a6eRoqus4usRHiTHTFOG/PzjJ8DSu/HmITSv5NuM01GQeJAgJW', 3, 0, 'Admin', 'Admin', 2),
('123', '$2y$10$Js6u04Ivaui46dTSQZdcYett4whUkEeiNa1t7jKJi4bmA0ERU4ZGi', 0, 0, '', '', 4),
('lll', '$2y$10$tfyWFB90P/hVLq9vf3y4YehD5ZLjcEMaRsfB0xtc9ZRINy6edaq7S', 0, 0, '', '', 6),
('konj', '$2y$10$jpIWZE1qKBtij/OiGRG79eovS0anYSbCDP8suCVQX5JholcoGO4ja', 3, 2, 'Steve', 'jon', 8),
('gey', '$2y$10$Vp8Yd4lSowvv4kreLO1ZR.4WDJgqyfbF82p/sZf26t8B73.JWWolC', 2, 2, 'gey', 'gey', 10),
('111', '$2y$10$mKCjNfpA3nq24xYXhO0BO.dSm7lKLeee2tb3qhfndcdb/f2p4TMAW', 3, 2, '111', '111', 11),
('333', '$2y$10$ikrERwp7Ic5fe3bqnEQZye0PM5Qv7Cz2Z2iQp3sXY8aSMDX0k/q8K', 2, 2, '333', '333', 13),
('444', '$2y$10$xRbpDFpd8IgR9.4CgNPrL./dER/mpmYMZrDYdS8VuqO2ZCYkgDujq', 1, 1, '444', '444', 14);

--
-- Indeksi zavrženih tabel
--

--
-- Indeksi tabele `atends`
--
ALTER TABLE `atends`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Atends_user` (`user`),
  ADD KEY `Atends_class` (`ID_class`);

--
-- Indeksi tabele `class`
--
ALTER TABLE `class`
  ADD PRIMARY KEY (`id`),
  ADD KEY `homeroom` (`homeroom`);

--
-- Indeksi tabele `subjects`
--
ALTER TABLE `subjects`
  ADD PRIMARY KEY (`ID`);

--
-- Indeksi tabele `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT zavrženih tabel
--

--
-- AUTO_INCREMENT tabele `atends`
--
ALTER TABLE `atends`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT tabele `class`
--
ALTER TABLE `class`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT tabele `subjects`
--
ALTER TABLE `subjects`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT tabele `user`
--
ALTER TABLE `user`
  MODIFY `ID` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- Omejitve tabel za povzetek stanja
--

--
-- Omejitve za tabelo `atends`
--
ALTER TABLE `atends`
  ADD CONSTRAINT `Atends_class` FOREIGN KEY (`ID_class`) REFERENCES `class` (`id`),
  ADD CONSTRAINT `Atends_user` FOREIGN KEY (`user`) REFERENCES `user` (`ID`);

--
-- Omejitve za tabelo `class`
--
ALTER TABLE `class`
  ADD CONSTRAINT `class_ibfk_1` FOREIGN KEY (`homeroom`) REFERENCES `user` (`ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
