-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: 10-Ago-2018 às 16:20
-- Versão do servidor: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `simrede`
--

-- --------------------------------------------------------

--
-- Structure for view `cs_alunos`
--

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `cs_alunos`  AS  select `s`.`siem` AS `lastname`,replace(`a`.`nome`,'\r','') AS `firstname`,concat('.',`a`.`nivel`,'ano',`a`.`turma`) AS `department`,`s`.`nome` AS `institution`,concat(`s`.`siem`,`a`.`id`) AS `username`,concat(`s`.`siem`,`a`.`id`,'@gmail.com') AS `email`,`a`.`cidade` AS `city`,concat('simrede',`a`.`nivel`,'.') AS `course1`,`a`.`password` AS `password` from (`alunos` `a` join `siems` `s` on((`s`.`id` = `a`.`siem_id`))) where (`a`.`nome` <> '') order by concat('simrede',`a`.`nivel`,'.') ;

--
-- VIEW  `cs_alunos`
-- Data: Nenhum
--


/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
