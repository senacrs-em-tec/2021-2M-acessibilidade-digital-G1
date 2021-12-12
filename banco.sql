-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 24-Nov-2021 às 03:14
-- Versão do servidor: 10.4.21-MariaDB
-- versão do PHP: 7.4.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `cartilha`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `artigos`
--

CREATE TABLE `artigos` (
  `ArtigoID` int(11) NOT NULL,
  `titulo` varchar(150) NOT NULL,
  `texto` longtext NOT NULL,
  `autor` varchar(150) NOT NULL,
  `referencia` longtext NOT NULL,
  `categoriaID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `artigos`
--

INSERT INTO `artigos` (`ArtigoID`, `titulo`, `texto`, `autor`, `referencia`, `categoriaID`) VALUES
(1, 'ohguahuidfg', 'wsfhuijghsifvgygfisbfhvbfgyihefbkdbiefyahbhefydbybef', 'andrey perroni', 'site do andrey', 2);

-- --------------------------------------------------------

--
-- Estrutura da tabela `categorias`
--

CREATE TABLE `categorias` (
  `CategoriaID` int(11) NOT NULL,
  `Nome` varchar(150) NOT NULL,
  `Descricao` varchar(300) NOT NULL,
  `Imagem` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `categorias`
--

INSERT INTO `categorias` (`CategoriaID`, `Nome`, `Descricao`, `Imagem`) VALUES
(1, 'acessibilidade na web', 'lorem ipsu asido rem', 'acessibilidade-web.jpg'),
(2, 'baixa visão', 'lorem ipsu asido remet', 'baixa visão.jpg'),
(3, 'daltonismo', 'lorem ipsu asido remet', 'daltonismo.jfif'),
(4, 'cegueira', 'lorem ipsu asido remet', 'cegueira.jpg'),
(5, 'surdez', 'lorem ipsu asido remet', 'download.jfif'),
(6, 'limitação motora nas mãos', 'lorem ipsu asido remet', 'coordenacao-motora-infantil.jpg'),
(7, 'dislexia', 'lorem ipsu asido remet', 'dislexia2.jpg'),
(8, 'TDAH', 'lorem ipsu asido remet', 'dislexia.png');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `artigos`
--
ALTER TABLE `artigos`
  ADD PRIMARY KEY (`ArtigoID`);

--
-- Índices para tabela `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`CategoriaID`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `artigos`
--
ALTER TABLE `artigos`
  MODIFY `ArtigoID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `categorias`
--
ALTER TABLE `categorias`
  MODIFY `CategoriaID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
