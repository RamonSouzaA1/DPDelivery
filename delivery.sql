-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 28-Abr-2018 às 02:17
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `encomenda`
--
ALTER TABLE `encomenda`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `entregador`
--
ALTER TABLE `entregador`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `veiculo`
--
ALTER TABLE `veiculo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
