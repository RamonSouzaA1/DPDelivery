-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 28-Abr-2018 às 03:23
-- Versão do servidor: 5.7.14
-- PHP Version: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `delivery`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `cliente`
--

CREATE TABLE `cliente` (
  `id` int(11) NOT NULL,
  `nome` text,
  `loradouro` text,
  `numero` int(11) DEFAULT NULL,
  `bairro` text,
  `cep` text,
  `celular` text,
  `telefone` text
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `cliente`
--

INSERT INTO `cliente` (`id`, `nome`, `loradouro`, `numero`, `bairro`, `cep`, `celular`, `telefone`) VALUES
(1, 'Marco', 'Avenida Rio Branco', 2001, 'Centro', '36050-110', '3298491997524', '3232379562'),
(2, 'Bill Gates', 'Avenida Getulio Vargas', 105, 'Centro', '36050-100', '32984568485', '3232129604'),
(3, 'Ada Lovelace', 'Rua Bernardo Mascarenhas', 1105, 'Mariano Procopio', '36110-001', '32988155474', '3232378545'),
(4, 'Amanda Macedo', 'Rua Diomar Monteiro', 221, 'Grama', '36048-310', '32987155548', '3232222273'),
(5, 'Victor Domingos Duque', 'Rua A', 24, 'Quintas', '36022-001', '32988514578', '3232219584');

-- --------------------------------------------------------

--
-- Estrutura da tabela `encomenda`
--

CREATE TABLE `encomenda` (
  `id` int(11) NOT NULL,
  `descricao` text,
  `peso` int(11) DEFAULT NULL,
  `id_cliente` int(11) DEFAULT NULL,
  `logradouro` text,
  `numero` int(11) DEFAULT NULL,
  `bairro` text,
  `cep` text,
  `id_entregador` int(11) DEFAULT NULL,
  `valor` double DEFAULT NULL,
  `situacao` text,
  `data_pedido` text,
  `data_entrega` text
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `encomenda`
--

INSERT INTO `encomenda` (`id`, `descricao`, `peso`, `id_cliente`, `logradouro`, `numero`, `bairro`, `cep`, `id_entregador`, `valor`, `situacao`, `data_pedido`, `data_entrega`) VALUES
(1, 'Malote de dinheiro e Cheques', 4, 1, 'Avenida Getulio Vargas', 1, 'Centro', '36050-100', 2, 100, 'Expedida', '28042018', '01052018');

-- --------------------------------------------------------

--
-- Estrutura da tabela `entregador`
--

CREATE TABLE `entregador` (
  `id` int(11) NOT NULL,
  `nome` text,
  `situacao` text,
  `id_veiculo` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `entregador`
--

INSERT INTO `entregador` (`id`, `nome`, `situacao`, `id_veiculo`) VALUES
(1, 'Jorginho', 'null', 1),
(2, 'Fernando', 'null', 2),
(3, 'Ramon', 'null', 3),
(4, 'Kaio Costa', 'Folga', 5);

-- --------------------------------------------------------

--
-- Estrutura da tabela `veiculo`
--

CREATE TABLE `veiculo` (
  `id` int(11) NOT NULL,
  `placa` text,
  `marca` text,
  `modelo` text,
  `situacao` text
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `veiculo`
--

INSERT INTO `veiculo` (`id`, `placa`, `marca`, `modelo`, `situacao`) VALUES
(1, 'PVV7584', 'Honda', 'CG Titan 150cc', 'null'),
(2, 'PYE5678', 'Yamaha', 'YBR 150cc', 'null'),
(3, 'PYI4587', 'Honda', 'Start 160cc', 'null'),
(4, 'GUM7119', 'Fiat', 'Palio 1.0', 'null'),
(5, 'PXR2199', 'Honda', 'XTZ 300cc', 'Disponível');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `encomenda`
--
ALTER TABLE `encomenda`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cliente_id_cliente_fk` (`id_cliente`),
  ADD KEY `entregador_id_entregador_fk` (`id_entregador`);

--
-- Indexes for table `entregador`
--
ALTER TABLE `entregador`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_veiculo` (`id_veiculo`);

--
-- Indexes for table `veiculo`
--
ALTER TABLE `veiculo`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cliente`
--
ALTER TABLE `cliente`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `encomenda`
--
ALTER TABLE `encomenda`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `entregador`
--
ALTER TABLE `entregador`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `veiculo`
--
ALTER TABLE `veiculo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
