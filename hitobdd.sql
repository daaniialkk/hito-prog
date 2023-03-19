-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 19-03-2023 a las 19:40:52
-- Versión del servidor: 10.4.21-MariaDB
-- Versión de PHP: 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `hitobdd`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `canalesventas`
--

CREATE TABLE `canalesventas` (
  `idcanalventa` int(11) NOT NULL,
  `nombre` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `apellidos` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `dni` varchar(9) COLLATE utf8_spanish_ci NOT NULL,
  `comision` float NOT NULL,
  `email` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `telefono` varchar(9) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `idcliente` int(11) NOT NULL,
  `nombre` int(11) NOT NULL,
  `apellidos` int(11) NOT NULL,
  `identificacionfiscal` int(11) NOT NULL,
  `direccion` int(11) NOT NULL,
  `poblacion` int(11) NOT NULL,
  `cp` int(11) NOT NULL,
  `provincia` int(11) NOT NULL,
  `email` int(11) NOT NULL,
  `telefono1` int(11) NOT NULL,
  `telefono2` int(11) NOT NULL,
  `iban` int(11) NOT NULL,
  `observaciones` text COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comercializadoras`
--

CREATE TABLE `comercializadoras` (
  `idcomercializadora` int(11) NOT NULL,
  `nombre` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `email` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `telefono` varchar(9) COLLATE utf8_spanish_ci NOT NULL,
  `logo` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `activa` varchar(1) COLLATE utf8_spanish_ci NOT NULL DEFAULT 's'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contratos`
--

CREATE TABLE `contratos` (
  `idcontrato` int(11) NOT NULL,
  `idcliente` int(11) NOT NULL,
  `idpuntosuministro` int(11) NOT NULL,
  `idcomercializadora` int(11) NOT NULL,
  `idtarifacomercial` int(11) NOT NULL,
  `domiciliofiscal` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `poblacionfiscal` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `cpfiscal` varchar(5) COLLATE utf8_spanish_ci NOT NULL,
  `provinciafiscal` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `directoriodocumentacion` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `fechainicio` date NOT NULL,
  `fechafin` date NOT NULL,
  `fechaavisorenovacion` date NOT NULL,
  `idcanalventas` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `post`
--

CREATE TABLE `post` (
  `id` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `titulo` varchar(100) NOT NULL,
  `contenido` varchar(500) NOT NULL,
  `fecha` date NOT NULL,
  `imagen` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `puntossuministro`
--

CREATE TABLE `puntossuministro` (
  `idpuntosuministro` int(11) NOT NULL,
  `idcliente` int(11) NOT NULL,
  `tarifaenergetica` float NOT NULL,
  `potencia1` float NOT NULL,
  `potencia2` float NOT NULL,
  `potencia3` float NOT NULL,
  `potencia4` float NOT NULL,
  `potencia5` float NOT NULL,
  `potencia6` float NOT NULL,
  `direccion` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `poblacion` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `cp` varchar(5) COLLATE utf8_spanish_ci NOT NULL,
  `provincia` text COLLATE utf8_spanish_ci NOT NULL,
  `cups` varchar(30) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tarifascomerciales`
--

CREATE TABLE `tarifascomerciales` (
  `idtarifacomercial` int(11) NOT NULL,
  `idcomercializadora` int(11) NOT NULL,
  `nombre` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `tipo` varchar(15) COLLATE utf8_spanish_ci NOT NULL,
  `potencia1` float NOT NULL,
  `potencia2` float NOT NULL,
  `potencia3` float NOT NULL,
  `potencia4` float NOT NULL,
  `potencia5` float NOT NULL,
  `potencia6` float NOT NULL,
  `energia1` float NOT NULL,
  `energia2` float NOT NULL,
  `energia3` float NOT NULL,
  `energia4` float NOT NULL,
  `energia5` float NOT NULL,
  `energia6` float NOT NULL,
  `co_indexado` float NOT NULL,
  `tarifaenergeticacliente` varchar(5) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `apellidos` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `password` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `email` varchar(100) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre`, `apellidos`, `password`, `email`) VALUES
(1, 'Daniel', 'perea', '1234', 'daniel.pereab@gmail.com'),
(2, 'sergio', 'rodriguez', '1234', 'pepebotella1414@gmail.com');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`idcliente`);

--
-- Indices de la tabla `comercializadoras`
--
ALTER TABLE `comercializadoras`
  ADD PRIMARY KEY (`idcomercializadora`);

--
-- Indices de la tabla `contratos`
--
ALTER TABLE `contratos`
  ADD PRIMARY KEY (`idcontrato`);

--
-- Indices de la tabla `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `puntossuministro`
--
ALTER TABLE `puntossuministro`
  ADD PRIMARY KEY (`idpuntosuministro`);

--
-- Indices de la tabla `tarifascomerciales`
--
ALTER TABLE `tarifascomerciales`
  ADD PRIMARY KEY (`idtarifacomercial`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `idcliente` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `comercializadoras`
--
ALTER TABLE `comercializadoras`
  MODIFY `idcomercializadora` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `contratos`
--
ALTER TABLE `contratos`
  MODIFY `idcontrato` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `post`
--
ALTER TABLE `post`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `puntossuministro`
--
ALTER TABLE `puntossuministro`
  MODIFY `idpuntosuministro` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tarifascomerciales`
--
ALTER TABLE `tarifascomerciales`
  MODIFY `idtarifacomercial` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
