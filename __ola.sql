-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Gostitelj: 127.0.0.1
-- Čas nastanka: 13. sep 2022 ob 11.16
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
-- Struktura tabele `class`
--

CREATE TABLE `class` (
  `id` int(11) NOT NULL,
  `name` int(11) NOT NULL,
  `schedule` int(11) NOT NULL,
  `homeroom` int(11) NOT NULL
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
('123', '$2y$10$tt.N5NJPWIFJ8l4Hgm6NZew21FG0Mxdrz6zf5EepmqZyvunBmeXNS', 0, 0, '123', '123', 1),
('Admin', '$2y$10$nj5a6eRoqus4usRHiTHTFOG/PzjJ8DSu/HmITSv5NuM01GQeJAgJW', 3, 0, 'Admin', 'Admin', 2),
('123', '$2y$10$pHOADwPkyftuWOWf9giq2OmWZHQFIYuCgHZdn7tN/eZjPeBWmru7u', 0, 0, '', '', 3),
('123', '$2y$10$Js6u04Ivaui46dTSQZdcYett4whUkEeiNa1t7jKJi4bmA0ERU4ZGi', 0, 0, '', '', 4),
('lll', '$2y$10$IlvDOAsBMC6N6y2HOP1p0OdlBHS5NRveejo7nKguO6POBYPgfH7I2', 3, 0, '', '', 5),
('lll', '$2y$10$tfyWFB90P/hVLq9vf3y4YehD5ZLjcEMaRsfB0xtc9ZRINy6edaq7S', 0, 0, '', '', 6),
('asdaeasexewe', '$2y$10$xIE5e95rioTs31vrQmOTOuZF2ZSpuZxQf79ysbbh5bPPpKplDHrd6', 0, 3, 'sdadawee', 'asdaweae', 7),
('konj', '$2y$10$jpIWZE1qKBtij/OiGRG79eovS0anYSbCDP8suCVQX5JholcoGO4ja', 0, 2, 'Steve', 'jon', 8),
('yey', '$2y$10$gy6KrMQPhTpfGZfmUWGtB.FKfRzlHBc/iGeGN3J825zr8PnjGcGM6', 0, 1, 'gae', 'gey', 9),
('gey', '$2y$10$Vp8Yd4lSowvv4kreLO1ZR.4WDJgqyfbF82p/sZf26t8B73.JWWolC', 0, 2, 'gey', 'gey', 10);

--
-- Indeksi zavrženih tabel
--

--
-- Indeksi tabele `class`
--
ALTER TABLE `class`
  ADD PRIMARY KEY (`id`);

--
-- Indeksi tabele `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT zavrženih tabel
--

--
-- AUTO_INCREMENT tabele `class`
--
ALTER TABLE `class`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT tabele `user`
--
ALTER TABLE `user`
  MODIFY `ID` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
