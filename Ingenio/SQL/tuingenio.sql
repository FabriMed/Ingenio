-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 31-10-2015 a las 02:54:12
-- Versión del servidor: 5.6.17
-- Versión de PHP: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `tuingenio`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE IF NOT EXISTS `categorias` (
  `id_categoria` int(11) NOT NULL AUTO_INCREMENT,
  `ca_categoria` varchar(50) NOT NULL,
  `ca_esvigente` bit(1) NOT NULL,
  PRIMARY KEY (`id_categoria`),
  KEY `id_categoria` (`id_categoria`),
  KEY `id_categoria_2` (`id_categoria`),
  KEY `id_categoria_3` (`id_categoria`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`id_categoria`, `ca_categoria`, `ca_esvigente`) VALUES
(1, 'Peluches Y Juguetes', b'1'),
(2, 'Tecnologia', b'1'),
(3, 'Salud Y Belleza', b'1'),
(4, 'Escuela Y Oficina', b'1'),
(5, 'Joyeria', b'1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE IF NOT EXISTS `usuarios` (
  `id_usuario` int(11) NOT NULL AUTO_INCREMENT,
  `ca_nombre` varchar(100) NOT NULL,
  `ca_apellido` varchar(100) NOT NULL,
  `ca_username` varchar(100) NOT NULL,
  `ca_password` varchar(250) NOT NULL,
  `ca_esvigente` bit(1) NOT NULL,
  `ca_telefono` varchar(12) NOT NULL,
  `ca_email` varchar(150) NOT NULL,
  PRIMARY KEY (`id_usuario`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id_usuario`, `ca_nombre`, `ca_apellido`, `ca_username`, `ca_password`, `ca_esvigente`, `ca_telefono`, `ca_email`) VALUES
(1, 'Emanuel', 'Roco', 'eroco', '*4FBDBD2009EB7334BF122ECB3A18039664CADE79', b'1', '91758459', 'emanuelroco@gmail.com');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
