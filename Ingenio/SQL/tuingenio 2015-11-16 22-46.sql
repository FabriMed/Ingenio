-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 17-11-2015 a las 02:46:01
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
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE IF NOT EXISTS `productos` (
  `id_producto` int(11) NOT NULL AUTO_INCREMENT,
  `pr_detalle` varchar(150) NOT NULL,
  `pr_precio` int(11) NOT NULL,
  `pr_imgruta` varchar(100) NOT NULL,
  `pr_cantidad` int(11) NOT NULL,
  `pr_esvigente` bit(1) NOT NULL,
  `pr_fecha` date NOT NULL,
  `pr_usuario` int(11) NOT NULL,
  `pr_imgrutaoriginal` varchar(100) NOT NULL,
  `id_categoria` int(11) NOT NULL,
  PRIMARY KEY (`id_producto`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=35 ;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id_producto`, `pr_detalle`, `pr_precio`, `pr_imgruta`, `pr_cantidad`, `pr_esvigente`, `pr_fecha`, `pr_usuario`, `pr_imgrutaoriginal`, `id_categoria`) VALUES
(1, 'Peluches Minions adorables Tamano 22cm', 0, 'images/gallery/gallery01.jpg', 12, b'1', '2015-11-05', 1, 'images/galeria/galeria01.jpg', 1),
(2, 'Alcohol gel de mano con dise&ntilde;os', 1200, 'images/gallery/gallery02.jpg', 10, b'1', '2015-11-06', 1, 'images/galeria/galeria02.jpg', 3),
(3, 'Pendrive M&amp;M de 8GB.', 0, 'images/gallery/gallery03.jpg', 6, b'1', '2015-11-06', 1, 'images/galeria/galeria03.jpg', 2),
(4, 'Pendrive Mario de 8GB.', 0, 'images/gallery/gallery04.jpg', 2, b'1', '2015-11-06', 1, 'images/galeria/galeria04.jpg', 2),
(5, 'Pendrive Minions Morados de 8GB.', 5500, 'images/gallery/gallery05.jpg', 2, b'1', '2015-11-06', 1, 'images/galeria/galeria05.jpg', 2),
(6, 'Pendrive Minions Heroes de 8GB.', 5500, 'images/gallery/gallery06.jpg', 6, b'1', '2015-11-06', 1, 'images/galeria/galeria06.jpg', 2),
(7, 'Crema de tratamiento capilar con aromas.', 4000, 'images/gallery/gallery07.jpg', 6, b'1', '2015-11-06', 1, 'images/galeria/galeria07.jpg', 3),
(8, 'Dise&ntilde;o de u&ntilde;as.', 500, 'images/gallery/gallery08.jpg', 6, b'1', '2015-11-06', 1, 'images/galeria/galeria08.jpg', 3),
(9, 'Tratamiento capilar TRESemme.', 3000, 'images/gallery/gallery09.jpg', 6, b'1', '2015-11-06', 1, 'images/galeria/galeria09.jpg', 3),
(10, 'Peluches Adventure Time Finn', 0, 'images/gallery/gallery10.jpg', 2, b'1', '2015-11-06', 1, 'images/galeria/galeria10.jpg', 1),
(11, 'Peluches Adventure Time "Jake"', 0, 'images/gallery/gallery10.jpg', 2, b'1', '2015-11-06', 1, 'images/galeria/galeria10.jpg', 1),
(12, 'Peluches Minions Malvados 23cm de alto.', 0, 'images/gallery/gallery11.jpg', 2, b'1', '2015-11-06', 1, 'images/galeria/galeria11.jpg', 1),
(13, 'Figuras de Mario Bros.', 0, 'images/gallery/gallery12.jpg', 2, b'1', '2015-11-06', 1, 'images/galeria/galeria12.jpg', 1),
(14, 'Peluches Yoshi Tama&ntilde;o 15cm.', 0, 'images/gallery/gallery13.jpg', 6, b'1', '2015-11-06', 1, 'images/galeria/galeria13.jpg', 1),
(15, 'Peluches Mario Bros 24cm.', 0, 'images/gallery/gallery14.jpg', 6, b'1', '2015-11-06', 1, 'images/galeria/galeria14.jpg', 1),
(16, 'Juguetes Llaveros Minecraft.', 0, 'images/gallery/gallery15.jpg', 12, b'1', '2015-11-06', 1, 'images/galeria/galeria15.jpg', 1),
(17, 'Peluches My Little Ponny 19cm.', 0, 'images/gallery/gallery16.jpg', 4, b'1', '2015-11-05', 1, 'images/galeria/galeria16.jpg', 1),
(18, 'Pendrive Krilin y Goku de 8GB.', 0, 'images/gallery/gallery17.jpg', 3, b'1', '2015-11-05', 1, 'images/galeria/galeria17.jpg', 1),
(19, 'Pendirve Mickey y Minnie de 8GB.', 0, 'images/gallery/gallery18.jpg', 2, b'1', '2015-11-05', 1, 'images/galeria/galeria18.jpg', 2),
(20, 'Pendirve Darth Vader de 8GB.', 0, 'images/gallery/gallery20.jpg', 1, b'1', '2015-11-05', 1, 'images/galeria/galeria20.jpg', 2),
(21, 'Pendirve Garbield de 8GB.', 0, 'images/gallery/gallery21.jpg', 1, b'1', '2015-11-05', 1, 'images/galeria/galeria21.jpg', 2),
(22, 'Libro de notas kawaii', 0, 'images/gallery/gallery22.jpg', 12, b'1', '2015-11-05', 1, 'images/galeria/galeria22.jpg', 4),
(23, 'Aros de B&uacute;ho', 0, 'images/gallery/gallery23.jpg', 2, b'1', '2015-11-05', 1, 'images/galeria/galeria23.jpg', 5),
(24, 'Aros de Gatos', 0, 'images/gallery/gallery24.jpg', 2, b'1', '2015-11-05', 1, 'images/galeria/galeria24.jpg', 5),
(25, 'Nuevo y elegante pendiente de coraz&oacute;n vintage', 0, 'images/gallery/gallery25.jpg', 2, b'1', '2015-11-05', 1, 'images/galeria/galeria25.jpg', 5),
(26, 'Pendiente de plata esterlina de mariposa', 0, 'images/gallery/gallery26.jpg', 2, b'0', '2015-11-05', 1, 'images/galeria/galeria26.jpg', 5),
(27, 'Pendientes laterales cristalinos con pendiente de perlas brillantes grandes. Tendremos disponibles en: Negro, Rojo, Azul, Blanco y Multicolores', 0, 'images/gallery/gallery27.jpg', 2, b'0', '2015-11-05', 1, 'images/galeria/galeria27.jpg', 5),
(28, 'Collar de tr&eacute;bol de Cristal Austriaco  Tendremos disponibles en: Verde, Azul, Rosado y Morado', 0, 'images/gallery/gallery28.jpg', 2, b'0', '2015-11-05', 1, 'images/galeria/galeria28.jpg', 5),
(29, 'Aro de tr&eacute;bol, Tendremos disponibles en: Rosado, Verde, Celeste y Morado', 0, 'images/gallery/gallery29.jpg', 2, b'0', '2015-11-05', 1, 'images/galeria/galeria29.jpg', 5),
(30, 'Contenedores de lentes de contactos con forma de pasteles. Tendremos disponibles en: Rojo, Amarillo, Rosa, Rosado y Cafe', 0, 'images/gallery/gallery30.jpg', 4, b'0', '2015-11-05', 1, 'images/galeria/galeria30.jpg', 3),
(31, 'Pendrive Super Heroes de 8GB', 0, 'images/gallery/gallery31.jpg', 4, b'0', '2015-11-05', 1, 'images/galeria/galeria31.jpg', 2),
(32, 'Pendrive Bob Esponja y Patricio Estrella de 8GB', 0, 'images/gallery/gallery32.jpg', 2, b'0', '2015-11-05', 1, 'images/galeria/galeria32.jpg', 2),
(33, 'Pendrive Monsters University de 8GB', 0, 'images/gallery/gallery33.jpg', 2, b'0', '2015-11-05', 1, 'images/galeria/galeria33.jpg', 2),
(34, 'Pendrive Monsters University de 8GB. Tendremos disponibles: M3 Y M4', 0, 'images/gallery/gallery34.jpg', 2, b'0', '2015-11-05', 1, 'images/galeria/galeria34.jpg', 2);

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
