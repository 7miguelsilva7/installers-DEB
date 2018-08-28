-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: 04-Ago-2018 às 07:32
-- Versão do servidor: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bitnami_moodle`
--

-- --------------------------------------------------------

--
-- Structure for view `perguntas`
--

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `perguntas`  AS  select `q`.`id` AS `id`,`q`.`name` AS `name`,`q`.`category` AS `category`,replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(replace(`q`.`questiontext`,concat('@@PLUGINFILE@@/',substring_index(substring_index(group_concat(`f`.`filename` separator ','),',',-(20)),',',1)),substring_index(substring_index(group_concat(concat('img/',`f`.`contenthash`,substr(`f`.`filename`,-(4))) separator ','),',',-(20)),',',1)),concat('@@PLUGINFILE@@/',substring_index(substring_index(group_concat(`f`.`filename` separator ','),',',-(19)),',',1)),substring_index(substring_index(group_concat(concat('img/',`f`.`contenthash`,substr(`f`.`filename`,-(4))) separator ','),',',-(19)),',',1)),concat('@@PLUGINFILE@@/',substring_index(substring_index(group_concat(`f`.`filename` separator ','),',',-(18)),',',1)),substring_index(substring_index(group_concat(concat('img/',`f`.`contenthash`,substr(`f`.`filename`,-(4))) separator ','),',',-(18)),',',1)),concat('@@PLUGINFILE@@/',substring_index(substring_index(group_concat(`f`.`filename` separator ','),',',-(17)),',',1)),substring_index(substring_index(group_concat(concat('img/',`f`.`contenthash`,substr(`f`.`filename`,-(4))) separator ','),',',-(17)),',',1)),concat('@@PLUGINFILE@@/',substring_index(substring_index(group_concat(`f`.`filename` separator ','),',',-(16)),',',1)),substring_index(substring_index(group_concat(concat('img/',`f`.`contenthash`,substr(`f`.`filename`,-(4))) separator ','),',',-(16)),',',1)),concat('@@PLUGINFILE@@/',substring_index(substring_index(group_concat(`f`.`filename` separator ','),',',-(15)),',',1)),substring_index(substring_index(group_concat(concat('img/',`f`.`contenthash`,substr(`f`.`filename`,-(4))) separator ','),',',-(15)),',',1)),concat('@@PLUGINFILE@@/',substring_index(substring_index(group_concat(`f`.`filename` separator ','),',',-(14)),',',1)),substring_index(substring_index(group_concat(concat('img/',`f`.`contenthash`,substr(`f`.`filename`,-(4))) separator ','),',',-(14)),',',1)),concat('@@PLUGINFILE@@/',substring_index(substring_index(group_concat(`f`.`filename` separator ','),',',-(13)),',',1)),substring_index(substring_index(group_concat(concat('img/',`f`.`contenthash`,substr(`f`.`filename`,-(4))) separator ','),',',-(13)),',',1)),concat('@@PLUGINFILE@@/',substring_index(substring_index(group_concat(`f`.`filename` separator ','),',',-(12)),',',1)),substring_index(substring_index(group_concat(concat('img/',`f`.`contenthash`,substr(`f`.`filename`,-(4))) separator ','),',',-(12)),',',1)),concat('@@PLUGINFILE@@/',substring_index(substring_index(group_concat(`f`.`filename` separator ','),',',-(11)),',',1)),substring_index(substring_index(group_concat(concat('img/',`f`.`contenthash`,substr(`f`.`filename`,-(4))) separator ','),',',-(11)),',',1)),concat('@@PLUGINFILE@@/',substring_index(substring_index(group_concat(`f`.`filename` separator ','),',',-(10)),',',1)),substring_index(substring_index(group_concat(concat('img/',`f`.`contenthash`,substr(`f`.`filename`,-(4))) separator ','),',',-(10)),',',1)),concat('@@PLUGINFILE@@/',substring_index(substring_index(group_concat(`f`.`filename` separator ','),',',-(9)),',',1)),substring_index(substring_index(group_concat(concat('img/',`f`.`contenthash`,substr(`f`.`filename`,-(4))) separator ','),',',-(9)),',',1)),concat('@@PLUGINFILE@@/',substring_index(substring_index(group_concat(`f`.`filename` separator ','),',',-(8)),',',1)),substring_index(substring_index(group_concat(concat('img/',`f`.`contenthash`,substr(`f`.`filename`,-(4))) separator ','),',',-(8)),',',1)),concat('@@PLUGINFILE@@/',substring_index(substring_index(group_concat(`f`.`filename` separator ','),',',-(7)),',',1)),substring_index(substring_index(group_concat(concat('img/',`f`.`contenthash`,substr(`f`.`filename`,-(4))) separator ','),',',-(7)),',',1)),concat('@@PLUGINFILE@@/',substring_index(substring_index(group_concat(`f`.`filename` separator ','),',',-(6)),',',1)),substring_index(substring_index(group_concat(concat('img/',`f`.`contenthash`,substr(`f`.`filename`,-(4))) separator ','),',',-(6)),',',1)),concat('@@PLUGINFILE@@/',substring_index(substring_index(group_concat(`f`.`filename` separator ','),',',-(5)),',',1)),substring_index(substring_index(group_concat(concat('img/',`f`.`contenthash`,substr(`f`.`filename`,-(4))) separator ','),',',-(5)),',',1)),concat('@@PLUGINFILE@@/',substring_index(substring_index(group_concat(`f`.`filename` separator ','),',',-(4)),',',1)),substring_index(substring_index(group_concat(concat('img/',`f`.`contenthash`,substr(`f`.`filename`,-(4))) separator ','),',',-(4)),',',1)),concat('@@PLUGINFILE@@/',substring_index(substring_index(group_concat(`f`.`filename` separator ','),',',-(3)),',',1)),substring_index(substring_index(group_concat(concat('img/',`f`.`contenthash`,substr(`f`.`filename`,-(4))) separator ','),',',-(3)),',',1)),concat('@@PLUGINFILE@@/',substring_index(substring_index(group_concat(`f`.`filename` separator ','),',',-(2)),',',1)),substring_index(substring_index(group_concat(concat('img/',`f`.`contenthash`,substr(`f`.`filename`,-(4))) separator ','),',',-(2)),',',1)),concat('@@PLUGINFILE@@/',substring_index(substring_index(group_concat(`f`.`filename` separator ','),',',-(1)),',',1)),substring_index(substring_index(group_concat(concat('img/',`f`.`contenthash`,substr(`f`.`filename`,-(4))) separator ','),',',-(1)),',',1)) AS `questiontext` from (`mdl_question` `q` join `mdl_files` `f` on((`f`.`itemid` = `q`.`id`))) where (((`f`.`filename` <> '.') and (`f`.`component` = 'question') and (`f`.`filearea` = 'questiontext')) or (`f`.`filearea` = 'answer')) group by `q`.`id` union select `q`.`id` AS `id`,`q`.`name` AS `name`,`q`.`category` AS `category`,`q`.`questiontext` AS `questiontext` from (`mdl_question` `q` join `mdl_question_answers` `qa` on((`qa`.`question` = `q`.`id`))) where (not(`q`.`id` in (select `f`.`itemid` from `mdl_files` `f`))) group by `qa`.`question` order by `category`,`name` ;

--
-- VIEW  `perguntas`
-- Data: Nenhum
--


/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
