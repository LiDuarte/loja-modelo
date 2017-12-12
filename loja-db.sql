
-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tempo de Geração: 12/12/2017 às 16:37:38
-- Versão do Servidor: 10.1.24-MariaDB
-- Versão do PHP: 5.2.17

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Banco de Dados: `u146864205_loja`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `categoria_produtos`
--

CREATE TABLE IF NOT EXISTS `categoria_produtos` (
  `id_categoria` int(11) NOT NULL AUTO_INCREMENT,
  `categoria` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_categoria`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- Extraindo dados da tabela `categoria_produtos`
--

INSERT INTO `categoria_produtos` (`id_categoria`, `categoria`) VALUES
(1, 'Celulares'),
(2, 'Móveis'),
(3, 'Eletrónicos'),
(4, 'Cozinha'),
(5, 'Quarto'),
(6, 'teste'),
(7, 'teste 2'),
(8, 'teste 22');

-- --------------------------------------------------------

--
-- Estrutura da tabela `cliente`
--

CREATE TABLE IF NOT EXISTS `cliente` (
  `ClienteId` int(11) NOT NULL AUTO_INCREMENT,
  `login` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `senha` varchar(45) NOT NULL,
  `PrimNome` varchar(45) NOT NULL,
  `UltNome` varchar(45) NOT NULL,
  `Endereco` varchar(45) DEFAULT NULL,
  `Cidade` varchar(45) DEFAULT NULL,
  `Cep` varchar(45) DEFAULT NULL,
  `Telefone` int(11) DEFAULT NULL,
  PRIMARY KEY (`ClienteId`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Extraindo dados da tabela `cliente`
--

INSERT INTO `cliente` (`ClienteId`, `login`, `email`, `senha`, `PrimNome`, `UltNome`, `Endereco`, `Cidade`, `Cep`, `Telefone`) VALUES
(1, 'Jandira', 'Jandira@hotmail.com', '1234', 'Jandira', 'Silva', NULL, NULL, NULL, NULL),
(2, 'Ricardo', 'Ricardo@hotmail.com', '1234', 'Ricardo', 'Ribeiro', NULL, NULL, NULL, NULL),
(3, 'Lucas', 'Lucas@hotmail.com', '1234', 'Lucas', 'Carlos', NULL, NULL, NULL, NULL),
(4, 'luke', 'luke@hotmail.com', '1234', 'Luke', 'Ainsword', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `pedido`
--

CREATE TABLE IF NOT EXISTS `pedido` (
  `PedidoId` int(11) NOT NULL AUTO_INCREMENT,
  `DataCompra` date NOT NULL,
  `DataEntrega` date DEFAULT NULL,
  `Frete` varchar(45) DEFAULT NULL,
  `Status` varchar(45) DEFAULT NULL,
  `referencia` varchar(45) DEFAULT NULL,
  `cliente_ClienteId` int(11) NOT NULL,
  PRIMARY KEY (`PedidoId`,`cliente_ClienteId`),
  KEY `fk_pedido_cliente1_idx` (`cliente_ClienteId`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=76210482 ;

--
-- Extraindo dados da tabela `pedido`
--

INSERT INTO `pedido` (`PedidoId`, `DataCompra`, `DataEntrega`, `Frete`, `Status`, `referencia`, `cliente_ClienteId`) VALUES
(76210481, '2017-08-24', '2017-08-31', 'Grátis', '2', NULL, 1),
(12077142, '2017-08-25', '0000-00-00', 'Grátis', '3', NULL, 2),
(68330144, '2017-08-26', '0000-00-00', 'Grátis', '3', NULL, 4);

-- --------------------------------------------------------

--
-- Estrutura da tabela `pedido_has_produto`
--

CREATE TABLE IF NOT EXISTS `pedido_has_produto` (
  `pedido_PedidoId` int(11) NOT NULL,
  `produto_ProdutoId` int(11) NOT NULL,
  `Quantidade` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`pedido_PedidoId`,`produto_ProdutoId`),
  KEY `fk_pedido_has_produto_produto_idx` (`produto_ProdutoId`),
  KEY `fk_pedido_has_produto_pedido_idx` (`pedido_PedidoId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `pedido_has_produto`
--

INSERT INTO `pedido_has_produto` (`pedido_PedidoId`, `produto_ProdutoId`, `Quantidade`) VALUES
(76210481, 3, 1),
(76210481, 2, 1),
(76210481, 1, 1),
(12077142, 3, 2),
(68330144, 1, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `produto`
--

CREATE TABLE IF NOT EXISTS `produto` (
  `ProdutoId` int(11) NOT NULL AUTO_INCREMENT,
  `ProdNome` varchar(45) NOT NULL,
  `Descricao` varchar(45) NOT NULL,
  `PrecoVenda` varchar(45) NOT NULL,
  `PrecoCusto` varchar(45) NOT NULL,
  `categoria_produtos_id_categoria` int(11) NOT NULL,
  PRIMARY KEY (`ProdutoId`,`categoria_produtos_id_categoria`),
  KEY `fk_Produtos_categoria_produtos_idx` (`categoria_produtos_id_categoria`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Extraindo dados da tabela `produto`
--

INSERT INTO `produto` (`ProdutoId`, `ProdNome`, `Descricao`, `PrecoVenda`, `PrecoCusto`, `categoria_produtos_id_categoria`) VALUES
(1, 'Samsumg', 'Samsumg', '1.00.00', '450.00', 1),
(2, 'Guarda Roupa', 'Guarda Roupa', '320.00', '200.00', 2),
(3, 'Smart TV LG - 47000', 'Smart TV LG - 47000, 42 Polegadas', '980.00', '1500.00', 3),
(4, 'Pizza', 'Pizza', '27.00', '15.00', 4);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
