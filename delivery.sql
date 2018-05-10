-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: 10-Maio-2018 às 03:50
-- Versão do servidor: 5.7.19
-- PHP Version: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
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

DROP TABLE IF EXISTS `cliente`;
CREATE TABLE IF NOT EXISTS `cliente` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` text,
  `logradouro` text,
  `numero` int(11) DEFAULT NULL,
  `bairro` text,
  `cep` text,
  `celular` text,
  `telefone` text,
  `cpf` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `cliente`
--

INSERT INTO `cliente` (`id`, `nome`, `logradouro`, `numero`, `bairro`, `cep`, `celular`, `telefone`, `cpf`) VALUES
(1, 'Marco', 'Avenida Rio Branco', 2001, 'Centro', '36050-110', '3298491997524', '3232379562', ''),
(2, 'Bill Gates', 'Avenida Getulio Vargas', 105, 'Centro', '36050-100', '32984568485', '3232129604', ''),
(4, 'Amanda', 'Diomar Monteiro', 221, 'Grama', '36048310', '987157886', '3232222273', '12557882694'),
(5, 'Victor Domingos Duque', 'Rua A', 24, 'Quintas', '36022-001', '32988514578', '3232219584', ''),
(6, 'Hugo', 'Augusto vicente vieira', 45, 'Sao Tarcisio', '36052110', '987157886', '3232379037', '12554587790'),
(7, 'Silvania', 'Rua Augusto Vicente Vieira', 45, 'São Tarcísio', '36052110', '3298460083', '3232379037', '09515478595'),
(8, 'Arielson', 'Rua Bernardo Mascarenhas', 251, 'Fábrica', '360', '', '', '');

-- --------------------------------------------------------

--
-- Estrutura da tabela `clientecnpj`
--

DROP TABLE IF EXISTS `clientecnpj`;
CREATE TABLE IF NOT EXISTS `clientecnpj` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` text NOT NULL,
  `logradouro` text NOT NULL,
  `numero` int(11) NOT NULL,
  `bairro` text NOT NULL,
  `cep` text NOT NULL,
  `celular` text NOT NULL,
  `telefone` text NOT NULL,
  `cnpj` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `clientecnpj`
--

INSERT INTO `clientecnpj` (`id`, `nome`, `logradouro`, `numero`, `bairro`, `cep`, `celular`, `telefone`, `cnpj`) VALUES
(1, 'Nossa Loja Ltda', 'Rua Diomar Monteiro', 223, 'Muçunge Grama', '36048310', '987155548', '3232222273', '01548545000190'),
(4, 'Bahamas', 'Avenida Rio Branco', 350, 'Manoel Honorio', '36048310', '987155548', '3232126985', '01548545000175'),
(3, 'Hiper Bretas', 'Rua Benjamn Constant', 225, 'Centro', '36030130', '32984845564', '3232378587', '01548545000190');

-- --------------------------------------------------------

--
-- Estrutura da tabela `encomenda`
--

DROP TABLE IF EXISTS `encomenda`;
CREATE TABLE IF NOT EXISTS `encomenda` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `data_entrega` text,
  `memento` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `cliente_id_cliente_fk` (`id_cliente`),
  KEY `entregador_id_entregador_fk` (`id_entregador`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `encomenda`
--

INSERT INTO `encomenda` (`id`, `descricao`, `peso`, `id_cliente`, `logradouro`, `numero`, `bairro`, `cep`, `id_entregador`, `valor`, `situacao`, `data_pedido`, `data_entrega`, `memento`) VALUES
(7, 'Mesa de Jantar', 45, 1, 'Avenida Juiz de Fora', 1150, 'Parque Guarani', '36048-001', 8, 77.5, 'Pendente', '10/05/2018', '10/05/2018', 'Expedida -> Em trânsito -> Pendente');

-- --------------------------------------------------------

--
-- Estrutura da tabela `entregador`
--

DROP TABLE IF EXISTS `entregador`;
CREATE TABLE IF NOT EXISTS `entregador` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` text,
  `situacao` text,
  `id_veiculo` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_veiculo` (`id_veiculo`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `entregador`
--

INSERT INTO `entregador` (`id`, `nome`, `situacao`, `id_veiculo`) VALUES
(1, 'Jorginho', 'Em serviço', 1),
(2, 'Fernando David', 'Disponível', 2),
(3, 'Ramon', 'Disponível', 7),
(4, 'Kaio', 'Em serviço', 4),
(5, 'Rafael', 'Em serviço', 1),
(6, 'Arielson', 'Em serviço', 9),
(8, 'Victor', 'Em serviço', 10);

-- --------------------------------------------------------

--
-- Estrutura da tabela `montador`
--

DROP TABLE IF EXISTS `montador`;
CREATE TABLE IF NOT EXISTS `montador` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` text NOT NULL,
  `situacao` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `montador`
--

INSERT INTO `montador` (`id`, `nome`, `situacao`) VALUES
(1, 'Jurandir', 'Disponível'),
(2, 'Luis Mauricio', 'Folga'),
(3, 'Carlos Viviano', 'Disponível');

-- --------------------------------------------------------

--
-- Estrutura da tabela `veiculo`
--

DROP TABLE IF EXISTS `veiculo`;
CREATE TABLE IF NOT EXISTS `veiculo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `placa` text,
  `marca` text,
  `modelo` text,
  `situacao` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `veiculo`
--

INSERT INTO `veiculo` (`id`, `placa`, `marca`, `modelo`, `situacao`) VALUES
(1, 'PVV9999', 'Honda', 'CG Titan 150', 'Em serviço'),
(2, 'xxx1234', 'BMW', 'BMW', 'Oficina'),
(3, 'PYI4587', 'Honda', 'Start 160cc', 'Disponível'),
(4, 'GUM7119', 'Fiat', 'Palio 1.0', 'Disponível'),
(5, 'PXR2199', 'Honda', 'XTZ 300cc', 'Disponível'),
(6, 'HLT7119', 'Fiat', 'Palio', 'Oficina'),
(7, 'HLT7119', 'FIAT', 'Siena', 'Disponível'),
(8, 'XYZ1234', 'Yamaha', 'YBR', 'Em serviço'),
(9, 'ZXC1234', 'Volkswagen', 'Fox', 'Disponível'),
(10, 'QWE7894', 'Baú', 'Caminhao', 'Disponível');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
