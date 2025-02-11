-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 11-Fev-2025 às 20:57
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
-- Banco de dados: `ruanfigueiredoestoque`
--
CREATE DATABASE IF NOT EXISTS `ruanfigueiredoestoque` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `ruanfigueiredoestoque`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `cliente`
--

CREATE TABLE `cliente` (
  `CodCliente` int(11) NOT NULL,
  `NomeCliente` varchar(50) DEFAULT NULL,
  `TipoCliente` varchar(10) DEFAULT NULL,
  `LogradouroCliente` varchar(50) DEFAULT NULL,
  `Cidade` varchar(50) DEFAULT NULL,
  `CEP` varchar(10) DEFAULT NULL,
  `UF` char(2) DEFAULT NULL,
  `CNPJ` varchar(30) DEFAULT NULL,
  `InscEstadual` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `cliente`
--

INSERT INTO `cliente` (`CodCliente`, `NomeCliente`, `TipoCliente`, `LogradouroCliente`, `Cidade`, `CEP`, `UF`, `CNPJ`, `InscEstadual`) VALUES
(20, 'Beth', 'Av', 'Climério n.45', 'São Paulo', '25679-300', 'SP', '32485126/7326-8', 9280),
(110, 'Jorge', 'Rua', 'Caiapo 13', 'Curitiba', '30078-500', 'PR', '14512764/9834-9', NULL),
(130, 'Edmar', 'Rua', 'da Praia s/n', 'Salvador', '30079-300', 'BA', '2346284/234-9', 7121),
(157, 'Paulo', 'Tv', 'Moraes c/3', 'Londrina', 'NULL', 'PR', '32848223/324-2', 1923),
(180, 'Livio', 'Av', 'Beira Mar n.1256', 'Florianóplis', '30077-500', 'SC', '12736571/2347-4', NULL),
(222, 'Lúcia', 'Rua', 'Itabira 123 Loja 9', 'Belo Horizonte', '22124-391', 'MG', '28215213/9348-8', 2985),
(234, 'José', 'Quadra', '3 bl.3 sl.1003', 'Brasilia', '22841-650', 'DF', '21763576/1232-3', 2931),
(260, 'Susana', 'Rua', 'Lopes Mendes n.12', 'Niterói', '30046-500', 'RJ', '21763571/232-9', 2530),
(290, 'Renato', 'Rua', 'Meireles n.123 bl.2 sl.345', 'São Paulo', '30225-900', 'SP', '13276571/1231-4', 1820),
(390, 'Sebastião', 'Rua', 'da Igreja n.10', 'Uberaba', '30438-700', 'MG', '32176547/213-3', 9071),
(410, 'Rodolfo', 'Largo', 'da Lapa 27 sobrado', 'Rio de Janeiro', '30078-900', 'RJ', '12835128/2346-9', 7431),
(720, 'Ana', 'Rua', '17 n.19', 'Niterói', '24358-310', 'RJ', '12113231/0001-34', 2134),
(830, 'Mauricio', 'Av', 'Paulista 1236 sl/2345', 'São Paulo', '03012-683', 'SP', '32816985/7465-6', 9343),
(870, 'Flavio', 'Av', 'Pres. Vargas 10', 'São Paulo', '22763-931', 'SP', '22534126/9387-9', 4631);

-- --------------------------------------------------------

--
-- Estrutura da tabela `item_do_pedido`
--

CREATE TABLE `item_do_pedido` (
  `NumPedido` int(11) NOT NULL,
  `CodProduto` int(11) NOT NULL,
  `QtdeProduto` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `item_do_pedido`
--

INSERT INTO `item_do_pedido` (`NumPedido`, `CodProduto`, `QtdeProduto`) VALUES
(121, 25, 10),
(121, 31, 35),
(97, 77, 20),
(101, 31, 9),
(101, 78, 18),
(101, 13, 5),
(98, 77, 5),
(148, 45, 8),
(148, 31, 7),
(148, 77, 3),
(148, 25, 10),
(148, 78, 30),
(104, 53, 32),
(203, 31, 6),
(189, 78, 45),
(143, 31, 20),
(143, 78, 10),
(105, 78, 10),
(111, 25, 10),
(111, 78, 70),
(103, 53, 37),
(91, 77, 40),
(138, 22, 10),
(138, 77, 35),
(138, 53, 18),
(108, 13, 17),
(119, 77, 40),
(119, 13, 6),
(119, 22, 10),
(119, 53, 43),
(137, 13, 8);

-- --------------------------------------------------------

--
-- Estrutura da tabela `pedido`
--

CREATE TABLE `pedido` (
  `NumPedido` int(11) NOT NULL,
  `PrazoEntrega` int(10) DEFAULT NULL,
  `CodCliente` int(11) NOT NULL,
  `CodVendedor` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `pedido`
--

INSERT INTO `pedido` (`NumPedido`, `PrazoEntrega`, `CodCliente`, `CodVendedor`) VALUES
(91, 20, 260, 11),
(97, 20, 720, 101),
(98, 20, 410, 209),
(101, 15, 720, 101),
(103, 20, 260, 11),
(104, 30, 110, 101),
(105, 15, 180, 240),
(108, 15, 290, 310),
(111, 20, 260, 240),
(119, 30, 390, 250),
(121, 20, 410, 209),
(127, 10, 410, 11),
(137, 20, 720, 720),
(138, 20, 260, 11),
(143, 30, 20, 111),
(148, 20, 720, 101),
(189, 15, 870, 213),
(203, 30, 830, 250);

-- --------------------------------------------------------

--
-- Estrutura da tabela `produto`
--

CREATE TABLE `produto` (
  `CodProduto` int(11) NOT NULL,
  `UnidProduto` varchar(10) DEFAULT NULL,
  `DescProduto` varchar(50) DEFAULT NULL,
  `ValorUnitario` decimal(15,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `produto`
--

INSERT INTO `produto` (`CodProduto`, `UnidProduto`, `DescProduto`, `ValorUnitario`) VALUES
(13, 'G', 'Ouro', 6.18),
(22, 'M', 'Linho', 0.11),
(25, 'Kg', 'Queijo', 0.97),
(30, 'SAC', 'Açúcar', 0.30),
(31, 'Bar', 'Chocolate', 0.87),
(45, 'M', 'Madeira', 0.25),
(53, 'M', 'Linha', 1.80),
(77, 'M', 'Papel', 1.05),
(78, 'L', 'Vinho', 2.00),
(87, 'M', 'Cano', 1.97);

-- --------------------------------------------------------

--
-- Estrutura da tabela `vendedor`
--

CREATE TABLE `vendedor` (
  `CodVendedor` int(11) NOT NULL,
  `NomeVendedor` varchar(50) DEFAULT NULL,
  `SalarioFixo` decimal(15,2) DEFAULT NULL,
  `FaixaComissao` char(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Extraindo dados da tabela `vendedor`
--

INSERT INTO `vendedor` (`CodVendedor`, `NomeVendedor`, `SalarioFixo`, `FaixaComissao`) VALUES
(11, 'João', 2780.00, 'C'),
(101, 'João', 2650.00, 'C'),
(111, 'Carlos', 2490.00, 'A'),
(209, 'José', 1800.00, 'C'),
(213, 'Jonas', 2300.00, 'A'),
(240, 'Antonio', 9500.00, 'C'),
(250, 'Maurício', 2930.00, 'B'),
(310, 'Josias', 870.00, 'B'),
(720, 'Felipe', 4600.00, 'A');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`CodCliente`);

--
-- Índices para tabela `item_do_pedido`
--
ALTER TABLE `item_do_pedido`
  ADD KEY `Fk_NumPedido_pedido` (`NumPedido`),
  ADD KEY `Fk_CodProduto_produto` (`CodProduto`);

--
-- Índices para tabela `pedido`
--
ALTER TABLE `pedido`
  ADD PRIMARY KEY (`NumPedido`),
  ADD KEY `Fk_cliente_pedido` (`CodCliente`),
  ADD KEY `Fk_Vendedor_pedido` (`CodVendedor`);

--
-- Índices para tabela `produto`
--
ALTER TABLE `produto`
  ADD PRIMARY KEY (`CodProduto`);

--
-- Índices para tabela `vendedor`
--
ALTER TABLE `vendedor`
  ADD PRIMARY KEY (`CodVendedor`);

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `item_do_pedido`
--
ALTER TABLE `item_do_pedido`
  ADD CONSTRAINT `Fk_CodProduto_produto` FOREIGN KEY (`CodProduto`) REFERENCES `produto` (`CodProduto`),
  ADD CONSTRAINT `Fk_NumPedido_pedido` FOREIGN KEY (`NumPedido`) REFERENCES `pedido` (`NumPedido`);

--
-- Limitadores para a tabela `pedido`
--
ALTER TABLE `pedido`
  ADD CONSTRAINT `Fk_Vendedor_pedido` FOREIGN KEY (`CodVendedor`) REFERENCES `vendedor` (`CodVendedor`),
  ADD CONSTRAINT `Fk_cliente_pedido` FOREIGN KEY (`CodCliente`) REFERENCES `cliente` (`CodCliente`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
