-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 13-Fev-2025 às 20:48
-- Versão do servidor: 10.4.28-MariaDB
-- versão do PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `ruanfigueiredo.join`
--
CREATE DATABASE IF NOT EXISTS `ruanfigueiredo.join` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `ruanfigueiredo.join`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `branca`
--

CREATE TABLE `branca` (
  `peca` varchar(15) DEFAULT NULL,
  `qtde` int(11) DEFAULT NULL,
  `material` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `branca`
--

INSERT INTO `branca` (`peca`, `qtde`, `material`) VALUES
('Rei', 502, 'Carvalho'),
('Rainha', 398, 'Carvalho'),
('Torre', 1020, 'Carvalho'),
('Bispo', 985, 'Carvalho'),
('Cavaleiro', 950, 'Carvalho'),
('Peão', 431, 'Carvalho');

-- --------------------------------------------------------

--
-- Estrutura da tabela `preta`
--

CREATE TABLE `preta` (
  `peca` varchar(15) DEFAULT NULL,
  `qtde` int(11) DEFAULT NULL,
  `material` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `preta`
--

INSERT INTO `preta` (`peca`, `qtde`, `material`) VALUES
('Rei', 502, 'ebano'),
('Rainha', 397, 'ebano'),
('Torre', 1020, 'ebano'),
('Bispo', 985, 'ebano'),
('Cavaleiro', 950, 'ebano'),
('Peão', 433, 'ebano');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tabela_a`
--

CREATE TABLE `tabela_a` (
  `tabela_a` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `tabela_a`
--

INSERT INTO `tabela_a` (`tabela_a`) VALUES
('0'),
('0'),
('0'),
('0');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tabela_b`
--

CREATE TABLE `tabela_b` (
  `tabela_b` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `tabela_b`
--

INSERT INTO `tabela_b` (`tabela_b`) VALUES
('0'),
('0'),
('0'),
('0');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
