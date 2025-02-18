-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 18/02/2025 às 20:47
-- Versão do servidor: 10.4.32-MariaDB
-- Versão do PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `ruan_financeiro`
--
CREATE DATABASE IF NOT EXISTS `ruan_financeiro` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `ruan_financeiro`;

DELIMITER $$
--
-- Procedimentos
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `mySp_correntistaDelete` (`v_id` INT)   BEGIN
IF((v_id>0)&&(v_id!=''))THEN
DELETE FROM tbl_correntista WHERE correntista_id=v_id;
ELSE
SELECT'o identificador do registro nao foi informado!'
AS Msg;
END IF;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `mySp_correntistalnsert` (`v_nome` VARCHAR(60), `v_cpf` VARCHAR(20))   BEGIN
IF((v_nome!=")&&(v_cpf!=")) THEN
INSERT INTO tbl_correntista
    (correntista_nome, correntista_cpf)
VALUES
    (v_nome,v_cpf);
ELSE
SELECT 'nome e cpf devem ser fornecidos para o cadastro!'
AS Msg;
END IF;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `mySp_correntistaUpdate` (`v_id` INT, `v_nome` VARCHAR(60), `v_cpf` VARCHAR(20))   BEGIN
IF(((v_id>0)&&(v_id!=''))&&(v_nome!='')&&(v_cpf!=''))THEN
UPDATE tbl_correntista set correntista_nome=v_nome,correntista_cpf=v_cpf
   WHERE correntista_id=v_id;
   ELSE
   SELECT'o novos NOME e CPF devem ser informados!'
   AS Msg;
   END IF;
   END$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Estrutura para tabela `produtos`
--

CREATE TABLE `produtos` (
  `referencia` varchar(3) NOT NULL,
  `descricao` varchar(50) DEFAULT NULL,
  `estoque` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `tbl_correntista`
--

CREATE TABLE `tbl_correntista` (
  `correntista_id` int(11) NOT NULL,
  `correntista_nome` varchar(60) DEFAULT NULL,
  `correntista_cpf` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `tbl_correntista`
--

INSERT INTO `tbl_correntista` (`correntista_id`, `correntista_nome`, `correntista_cpf`) VALUES
(1, 'ruan figueiredo correa', '129.714.669-73'),
(2, 'wolverine stark', '123.456.789-10');

-- --------------------------------------------------------

--
-- Estrutura para tabela `vendas`
--

CREATE TABLE `vendas` (
  `QTDE` int(11) NOT NULL,
  `Preco` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `vendas`
--

INSERT INTO `vendas` (`QTDE`, `Preco`) VALUES
(3, 5.45),
(10, 45.00),
(20, 3.50),
(8, 9.87);

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `produtos`
--
ALTER TABLE `produtos`
  ADD PRIMARY KEY (`referencia`),
  ADD UNIQUE KEY `descricao` (`descricao`);

--
-- Índices de tabela `tbl_correntista`
--
ALTER TABLE `tbl_correntista`
  ADD PRIMARY KEY (`correntista_id`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `tbl_correntista`
--
ALTER TABLE `tbl_correntista`
  MODIFY `correntista_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
