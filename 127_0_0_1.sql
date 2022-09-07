-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Gostitelj: 127.0.0.1
-- Čas nastanka: 07. sep 2022 ob 12.01
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
-- Zbirka podatkov: `colnaric`
--
CREATE DATABASE IF NOT EXISTS `colnaric` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `colnaric`;

-- --------------------------------------------------------

--
-- Struktura tabele `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `id_kupca` int(11) NOT NULL,
  `stevilka` int(2) NOT NULL,
  `izdelek` varchar(200) NOT NULL,
  `kolicina` int(11) NOT NULL,
  `cena` int(11) NOT NULL,
  `slika` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Odloži podatke za tabelo `cart`
--

INSERT INTO `cart` (`id`, `id_kupca`, `stevilka`, `izdelek`, `kolicina`, `cena`, `slika`) VALUES
(9, 0, 45, 'Air Jordan 1 low Dior', 1, 7000, 'slike/diorlow.jpg'),
(10, 10, 45, 'Air Jordan 1 Mid Chicago Black Toe', 1, 230, 'slike/jordan3.jpg'),
(12, 10, 45, 'Nike Dunk low Pandas', 3, 110, 'slike/dunk2.jpg');

-- --------------------------------------------------------

--
-- Struktura tabele `nakup`
--

CREATE TABLE `nakup` (
  `id` int(11) NOT NULL,
  `id_kupca` int(11) NOT NULL,
  `stevilka` int(2) NOT NULL,
  `izdelek` varchar(200) NOT NULL,
  `skupna_cena` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Odloži podatke za tabelo `nakup`
--

INSERT INTO `nakup` (`id`, `id_kupca`, `stevilka`, `izdelek`, `skupna_cena`) VALUES
(7, 11, 46, 'Air Jordan 1 low Dior', 7000);

-- --------------------------------------------------------

--
-- Struktura tabele `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Odloži podatke za tabelo `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`) VALUES
(10, 'mjordan', 'mjordan@gmail.com', 'nykes'),
(11, 'nik', 'nik@gmail.com', '12345678');

--
-- Indeksi zavrženih tabel
--

--
-- Indeksi tabele `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indeksi tabele `nakup`
--
ALTER TABLE `nakup`
  ADD PRIMARY KEY (`id`);

--
-- Indeksi tabele `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT zavrženih tabel
--

--
-- AUTO_INCREMENT tabele `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT tabele `nakup`
--
ALTER TABLE `nakup`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT tabele `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- Zbirka podatkov: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Struktura tabele `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(10) UNSIGNED NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Struktura tabele `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_length` text COLLATE utf8_bin DEFAULT NULL,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Struktura tabele `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Struktura tabele `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

--
-- Odloži podatke za tabelo `pma__designer_settings`
--

INSERT INTO `pma__designer_settings` (`username`, `settings_data`) VALUES
('root', '{\"angular_direct\":\"direct\",\"snap_to_grid\":\"off\",\"relation_lines\":\"true\"}');

-- --------------------------------------------------------

--
-- Struktura tabele `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `template_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

--
-- Odloži podatke za tabelo `pma__export_templates`
--

INSERT INTO `pma__export_templates` (`id`, `username`, `export_type`, `template_name`, `template_data`) VALUES
(1, 'root', 'server', 'school', '{\"quick_or_custom\":\"quick\",\"what\":\"sql\",\"db_select[]\":[\"colnaric\",\"phpmyadmin\",\"project\",\"revije\",\"sola\",\"test\",\"šola\"],\"aliases_new\":\"\",\"output_format\":\"sendit\",\"filename_template\":\"@SERVER@\",\"remember_template\":\"on\",\"charset\":\"utf-8\",\"compression\":\"none\",\"maxsize\":\"\",\"codegen_structure_or_data\":\"data\",\"codegen_format\":\"0\",\"csv_separator\":\",\",\"csv_enclosed\":\"\\\"\",\"csv_escaped\":\"\\\"\",\"csv_terminated\":\"AUTO\",\"csv_null\":\"NULL\",\"csv_structure_or_data\":\"data\",\"excel_null\":\"NULL\",\"excel_columns\":\"something\",\"excel_edition\":\"win\",\"excel_structure_or_data\":\"data\",\"json_structure_or_data\":\"data\",\"json_unicode\":\"something\",\"latex_caption\":\"something\",\"latex_structure_or_data\":\"structure_and_data\",\"latex_structure_caption\":\"Struktura tabele @TABLE@\",\"latex_structure_continued_caption\":\"Struktura tabele @TABLE@ (nadaljevanje)\",\"latex_structure_label\":\"tab:@TABLE@-structure\",\"latex_relation\":\"something\",\"latex_comments\":\"something\",\"latex_mime\":\"something\",\"latex_columns\":\"something\",\"latex_data_caption\":\"Vsebina tabele @TABLE@\",\"latex_data_continued_caption\":\"Vsebina tabele @TABLE@ (nadaljevanje)\",\"latex_data_label\":\"tab:@TABLE@-data\",\"latex_null\":\"\\\\textit{NULL}\",\"mediawiki_structure_or_data\":\"data\",\"mediawiki_caption\":\"something\",\"mediawiki_headers\":\"something\",\"htmlword_structure_or_data\":\"structure_and_data\",\"htmlword_null\":\"NULL\",\"ods_null\":\"NULL\",\"ods_structure_or_data\":\"data\",\"odt_structure_or_data\":\"structure_and_data\",\"odt_relation\":\"something\",\"odt_comments\":\"something\",\"odt_mime\":\"something\",\"odt_columns\":\"something\",\"odt_null\":\"NULL\",\"pdf_report_title\":\"\",\"pdf_structure_or_data\":\"data\",\"phparray_structure_or_data\":\"data\",\"sql_include_comments\":\"something\",\"sql_header_comment\":\"\",\"sql_use_transaction\":\"something\",\"sql_compatibility\":\"NONE\",\"sql_structure_or_data\":\"structure_and_data\",\"sql_create_table\":\"something\",\"sql_auto_increment\":\"something\",\"sql_create_view\":\"something\",\"sql_create_trigger\":\"something\",\"sql_backquotes\":\"something\",\"sql_type\":\"INSERT\",\"sql_insert_syntax\":\"both\",\"sql_max_query_size\":\"50000\",\"sql_hex_for_binary\":\"something\",\"sql_utc_time\":\"something\",\"texytext_structure_or_data\":\"structure_and_data\",\"texytext_null\":\"NULL\",\"yaml_structure_or_data\":\"data\",\"\":null,\"as_separate_files\":null,\"csv_removeCRLF\":null,\"csv_columns\":null,\"excel_removeCRLF\":null,\"json_pretty_print\":null,\"htmlword_columns\":null,\"ods_columns\":null,\"sql_dates\":null,\"sql_relation\":null,\"sql_mime\":null,\"sql_disable_fk\":null,\"sql_views_as_tables\":null,\"sql_metadata\":null,\"sql_drop_database\":null,\"sql_drop_table\":null,\"sql_if_not_exists\":null,\"sql_simple_view_export\":null,\"sql_view_current_user\":null,\"sql_or_replace_view\":null,\"sql_procedure_function\":null,\"sql_truncate\":null,\"sql_delayed\":null,\"sql_ignore\":null,\"texytext_columns\":null}');

-- --------------------------------------------------------

--
-- Struktura tabele `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Struktura tabele `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Struktura tabele `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Struktura tabele `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Struktura tabele `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Odloži podatke za tabelo `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"\\u0161ola\",\"table\":\"user\"},{\"db\":\"colnaric\",\"table\":\"users\"},{\"db\":\"colnaric\",\"table\":\"nakup\"},{\"db\":\"colnaric\",\"table\":\"cart\"},{\"db\":\"project\",\"table\":\"users\"},{\"db\":\"colnaric\",\"table\":\"login\"},{\"db\":\"colnaric\",\"table\":\"kupi\"}]');

-- --------------------------------------------------------

--
-- Struktura tabele `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Struktura tabele `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Struktura tabele `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Struktura tabele `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

--
-- Odloži podatke za tabelo `pma__table_info`
--

INSERT INTO `pma__table_info` (`db_name`, `table_name`, `display_field`) VALUES
('colnaric', 'kupi', 'cena');

-- --------------------------------------------------------

--
-- Struktura tabele `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

-- --------------------------------------------------------

--
-- Struktura tabele `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin DEFAULT NULL,
  `data_sql` longtext COLLATE utf8_bin DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Struktura tabele `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Odloži podatke za tabelo `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2022-09-07 09:45:00', '{\"Console\\/Mode\":\"collapse\",\"lang\":\"sl\",\"NavigationWidth\":274}');

-- --------------------------------------------------------

--
-- Struktura tabele `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Struktura tabele `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indeksi zavrženih tabel
--

--
-- Indeksi tabele `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indeksi tabele `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indeksi tabele `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indeksi tabele `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indeksi tabele `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indeksi tabele `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indeksi tabele `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indeksi tabele `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indeksi tabele `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indeksi tabele `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indeksi tabele `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indeksi tabele `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indeksi tabele `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indeksi tabele `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indeksi tabele `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indeksi tabele `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indeksi tabele `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indeksi tabele `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indeksi tabele `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT zavrženih tabel
--

--
-- AUTO_INCREMENT tabele `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT tabele `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT tabele `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT tabele `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT tabele `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT tabele `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Zbirka podatkov: `project`
--
CREATE DATABASE IF NOT EXISTS `project` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `project`;

-- --------------------------------------------------------

--
-- Struktura tabele `mnenja`
--

CREATE TABLE `mnenja` (
  `id` int(11) NOT NULL,
  `id_delavca` int(11) NOT NULL,
  `mnenje` int(11) NOT NULL,
  `id_mnenja` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktura tabele `ocena`
--

CREATE TABLE `ocena` (
  `id_delavca` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `ocena` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktura tabele `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Odloži podatke za tabelo `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `email`) VALUES
(0, 'domen', '$2y$10$TD7X.jThdD5GwSO92Tpd4Ou4u1gktz2oXn4qyFqFLNotnI3OIpVaO', '');

--
-- Indeksi zavrženih tabel
--

--
-- Indeksi tabele `mnenja`
--
ALTER TABLE `mnenja`
  ADD PRIMARY KEY (`id_mnenja`);

--
-- Indeksi tabele `ocena`
--
ALTER TABLE `ocena`
  ADD PRIMARY KEY (`id_delavca`);

--
-- Indeksi tabele `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);
--
-- Zbirka podatkov: `revije`
--
CREATE DATABASE IF NOT EXISTS `revije` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `revije`;

-- --------------------------------------------------------

--
-- Struktura tabele `avtor`
--

CREATE TABLE `avtor` (
  `šifra_avtorja` int(11) NOT NULL,
  `ime_avtorja` char(10) NOT NULL,
  `priimek_avtorja` char(10) NOT NULL,
  `naslov_avtorja` char(10) NOT NULL,
  `poštna_številka` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktura tabele `entity6`
--

CREATE TABLE `entity6` (
  `Številka_revije` int(11) NOT NULL,
  `šifra_avtorja` int(11) NOT NULL,
  `šifra_članka` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktura tabele `pošta`
--

CREATE TABLE `pošta` (
  `poštna_številka` int(11) NOT NULL,
  `ime_kraja` char(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktura tabele `revija`
--

CREATE TABLE `revija` (
  `Številka_revije` int(11) NOT NULL,
  `Ime_revije` varchar(50) NOT NULL,
  `naklada` char(10) NOT NULL,
  `ime_urednika` char(10) NOT NULL,
  `priimek_urednika` char(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktura tabele `članek`
--

CREATE TABLE `članek` (
  `šifra_članka` int(11) NOT NULL,
  `ime_članka` char(10) NOT NULL,
  `stran_članka` char(10) NOT NULL,
  `dolžina_članka` char(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indeksi zavrženih tabel
--

--
-- Indeksi tabele `avtor`
--
ALTER TABLE `avtor`
  ADD PRIMARY KEY (`šifra_avtorja`),
  ADD KEY `poštna_številka` (`poštna_številka`);

--
-- Indeksi tabele `entity6`
--
ALTER TABLE `entity6`
  ADD KEY `Številka_revije` (`Številka_revije`),
  ADD KEY `šifra_avtorja` (`šifra_avtorja`),
  ADD KEY `šifra_članka` (`šifra_članka`);

--
-- Indeksi tabele `pošta`
--
ALTER TABLE `pošta`
  ADD PRIMARY KEY (`poštna_številka`);

--
-- Indeksi tabele `revija`
--
ALTER TABLE `revija`
  ADD PRIMARY KEY (`Številka_revije`);

--
-- Indeksi tabele `članek`
--
ALTER TABLE `članek`
  ADD PRIMARY KEY (`šifra_članka`);

--
-- Omejitve tabel za povzetek stanja
--

--
-- Omejitve za tabelo `avtor`
--
ALTER TABLE `avtor`
  ADD CONSTRAINT `avtor_ibfk_1` FOREIGN KEY (`poštna_številka`) REFERENCES `pošta` (`poštna_številka`);

--
-- Omejitve za tabelo `entity6`
--
ALTER TABLE `entity6`
  ADD CONSTRAINT `entity6_ibfk_1` FOREIGN KEY (`Številka_revije`) REFERENCES `revija` (`Številka_revije`),
  ADD CONSTRAINT `entity6_ibfk_2` FOREIGN KEY (`šifra_avtorja`) REFERENCES `avtor` (`šifra_avtorja`),
  ADD CONSTRAINT `entity6_ibfk_3` FOREIGN KEY (`šifra_članka`) REFERENCES `članek` (`šifra_članka`);
--
-- Zbirka podatkov: `sola`
--
CREATE DATABASE IF NOT EXISTS `sola` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `sola`;

-- --------------------------------------------------------

--
-- Struktura tabele `entity6`
--

CREATE TABLE `entity6` (
  `šifra_študenta` int(11) NOT NULL,
  `šifra_predavatelja` int(11) NOT NULL,
  `šifra_predmeta` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktura tabele `pošta`
--

CREATE TABLE `pošta` (
  `poštna_številka` int(11) NOT NULL,
  `ime_kraja` char(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktura tabele `predavatelj`
--

CREATE TABLE `predavatelj` (
  `šifra_predavatelja` int(11) NOT NULL,
  `ime_predavatelja` char(10) NOT NULL,
  `priimek_predavatelja` char(10) NOT NULL,
  `naslov_predavatelja` char(10) NOT NULL,
  `poštna_številka` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktura tabele `predmet`
--

CREATE TABLE `predmet` (
  `šifra_predmeta` int(11) NOT NULL,
  `ime_predmeta` char(10) NOT NULL,
  `število_ur_predmeta` char(10) NOT NULL,
  `obveznosti` char(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktura tabele `študent`
--

CREATE TABLE `študent` (
  `šifra_študenta` int(11) NOT NULL,
  `ime_studenta` char(10) NOT NULL,
  `priimek_studenta` char(10) NOT NULL,
  `naslov_studenta` char(10) NOT NULL,
  `ime_smeri` char(10) NOT NULL,
  `poštna_številka` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indeksi zavrženih tabel
--

--
-- Indeksi tabele `entity6`
--
ALTER TABLE `entity6`
  ADD PRIMARY KEY (`šifra_študenta`),
  ADD KEY `šifra_predavatelja` (`šifra_predavatelja`),
  ADD KEY `šifra_predmeta` (`šifra_predmeta`);

--
-- Indeksi tabele `pošta`
--
ALTER TABLE `pošta`
  ADD PRIMARY KEY (`poštna_številka`);

--
-- Indeksi tabele `predavatelj`
--
ALTER TABLE `predavatelj`
  ADD PRIMARY KEY (`šifra_predavatelja`),
  ADD KEY `poštna_številka` (`poštna_številka`);

--
-- Indeksi tabele `predmet`
--
ALTER TABLE `predmet`
  ADD PRIMARY KEY (`šifra_predmeta`);

--
-- Indeksi tabele `študent`
--
ALTER TABLE `študent`
  ADD PRIMARY KEY (`šifra_študenta`),
  ADD KEY `poštna_številka` (`poštna_številka`);

--
-- Omejitve tabel za povzetek stanja
--

--
-- Omejitve za tabelo `entity6`
--
ALTER TABLE `entity6`
  ADD CONSTRAINT `entity6_ibfk_1` FOREIGN KEY (`šifra_študenta`) REFERENCES `študent` (`šifra_študenta`),
  ADD CONSTRAINT `entity6_ibfk_2` FOREIGN KEY (`šifra_predavatelja`) REFERENCES `predavatelj` (`šifra_predavatelja`),
  ADD CONSTRAINT `entity6_ibfk_3` FOREIGN KEY (`šifra_predmeta`) REFERENCES `predmet` (`šifra_predmeta`);

--
-- Omejitve za tabelo `predavatelj`
--
ALTER TABLE `predavatelj`
  ADD CONSTRAINT `predavatelj_ibfk_1` FOREIGN KEY (`poštna_številka`) REFERENCES `pošta` (`poštna_številka`);

--
-- Omejitve za tabelo `študent`
--
ALTER TABLE `študent`
  ADD CONSTRAINT `študent_ibfk_1` FOREIGN KEY (`poštna_številka`) REFERENCES `pošta` (`poštna_številka`);
--
-- Zbirka podatkov: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
--
-- Zbirka podatkov: `šola`
--
CREATE DATABASE IF NOT EXISTS `šola` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `šola`;

-- --------------------------------------------------------

--
-- Struktura tabele `user`
--

CREATE TABLE `user` (
  `username` varchar(50) NOT NULL,
  `password` varchar(256) NOT NULL,
  `permission` int(1) NOT NULL,
  `name` varchar(50) NOT NULL,
  `surname` varchar(50) NOT NULL,
  `ID` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Odloži podatke za tabelo `user`
--

INSERT INTO `user` (`username`, `password`, `permission`, `name`, `surname`, `ID`) VALUES
('123', '$2y$10$tt.N5NJPWIFJ8l4Hgm6NZew21FG0Mxdrz6zf5EepmqZyvunBmeXNS', 0, '123', '123', 1),
('Admin', '$2y$10$nj5a6eRoqus4usRHiTHTFOG/PzjJ8DSu/HmITSv5NuM01GQeJAgJW', 2, 'Admin', 'Admin', 2);

--
-- Indeksi zavrženih tabel
--

--
-- Indeksi tabele `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT zavrženih tabel
--

--
-- AUTO_INCREMENT tabele `user`
--
ALTER TABLE `user`
  MODIFY `ID` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
