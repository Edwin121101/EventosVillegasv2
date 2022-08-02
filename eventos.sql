-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 02-08-2022 a las 00:03:27
-- Versión del servidor: 8.0.27
-- Versión de PHP: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `eventos`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria`
--

DROP TABLE IF EXISTS `categoria`;
CREATE TABLE IF NOT EXISTS `categoria` (
  `idcategoria` bigint NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci NOT NULL,
  `descripcion` text CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci NOT NULL,
  `portada` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci NOT NULL,
  `datecreated` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ruta` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci NOT NULL,
  `status` int NOT NULL DEFAULT '1',
  PRIMARY KEY (`idcategoria`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

--
-- Volcado de datos para la tabla `categoria`
--

INSERT INTO `categoria` (`idcategoria`, `nombre`, `descripcion`, `portada`, `datecreated`, `ruta`, `status`) VALUES
(1, 'Eventos Pasados', '¿te perdiste algún evento?', 'img_a6175b47e03f1ed235ff869a2ebd78bc.jpg', '2020-10-23 03:14:08', 'eventos-pasados', 1),
(2, 'Próximos', 'Espera los mejores ventos, ¡reserva ahora!', 'img_0621931ad4f8a6d1198615eb411f99d4.jpg', '2020-10-23 03:17:26', 'proximos', 1),
(3, 'En oferta', 'Hay grandes descuentos para tí!', 'img_c1869c74132450066a10c35d3dbb8932.jpg', '2020-10-23 03:17:42', 'en-oferta', 1),
(4, 'Cabaret', 'Cabaret', 'img_c96977726b36c20b9af985b28aa76971.jpg', '2020-10-28 03:45:12', 'cabaret', 1),
(5, 'Infantil', 'Infantil', 'img_65bc5d882e7874014551787809317ff8.jpg', '2020-10-30 03:05:09', 'infantil', 1),
(6, 'Comedia', 'Comedia', 'img_081de87256c19d7ddd8c1b7088de7e6d.jpg', '2020-11-14 00:21:15', 'comedia', 1),
(7, 'Pop/Romántica', 'Pop/Romántica', 'img_70ec3910c29df9e147440ee9b967a533.jpg', '2020-12-05 22:38:27', 'pop/romantica', 1),
(8, 'Reggae', 'Reggae', 'img_54337ef4b4d72f6565799e2c2c01cb38.jpg', '2020-12-05 23:00:16', 'reggae', 1),
(10, 'Rock/Metal', 'Rock/Metal', 'img_8dee028b4021bcbbfab5861e10321444.jpg', '2022-05-27 23:14:24', 'rock/metal', 1),
(11, 'Belleza/Moda', 'Belleza/Moda', 'img_1f348b96c11e4daffdc9f0a0c57c363c.jpg', '2022-07-20 20:45:21', 'belleza/moda', 1),
(12, 'Drama', 'Drama', 'img_47efbbfa75d2a5cb75844558fcdd5ace.jpg', '2022-07-20 20:50:41', 'drama', 1),
(13, 'Ensamble/Música Clásica', 'Ensamble/Música Clásica', 'img_38fb71351ff5e651863282e23af9bcc4.jpg', '2022-07-20 20:51:41', 'ensamble/musica-clasica', 1),
(14, 'Automovilismo', 'Automovilismo', 'img_a5cf4c868ddf0d4f47c9a002c3d7535c.jpg', '2022-07-20 20:58:24', 'automovilismo', 1),
(15, 'Electrónica', 'Electrónica', 'img_e11611782dc04308ba7f159790c832f5.jpg', '2022-07-20 21:34:25', 'electronica', 1),
(16, 'Festivales', 'Festivales', 'img_e319e74156a7dda29d9df84d95af1bb2.jpg', '2022-07-20 21:40:58', 'festivales', 1),
(17, 'Flamenco/Tango', 'Flamenco/Tango', 'img_8d836fe24a7b9209e75f01e3c50e18e8.jpg', '2022-07-20 21:42:21', 'flamenco/tango', 1),
(18, 'Urbanos', 'Urbanos', 'img_2f6a3fa012f8663cb44ac94a9b5745a4.jpg', '2022-07-20 21:43:45', 'urbanos', 1),
(19, 'Internacional', 'Internacional', 'img_d467d481abe5689d094e1281aef7aeb4.jpg', '2022-07-20 21:45:49', 'internacional', 1),
(20, 'Ballet/Danza', 'Ballet/Danza', 'img_cb958cd3f1cc10b8b3a32deddf575d71.jpg', '2022-07-20 21:49:59', 'ballet/danza', 1),
(21, 'Espectáculo', 'Espectáculo', 'img_c4f9f4bf7a7a70fcc6baf6f2e8e933e5.jpg', '2022-07-20 21:52:54', 'espectaculo', 1),
(22, 'Exhibiciones', 'Exhibiciones', 'img_5f73ea86f1b672757b5a4ede0fe1c857.jpg', '2022-07-20 21:53:28', 'exhibiciones', 1),
(23, 'Festivales Culturales', 'Festivales Culturales', 'img_723ce864c0389e66bee1257041aa290c.jpg', '2022-07-20 21:59:39', 'festivales-culturales', 1),
(24, 'Futbol', 'Futbol', 'img_8fe1cf77a0a14fdb51d759cb16c54978.jpg', '2022-07-20 22:03:18', 'futbol', 1),
(25, 'Folclore/Popular', 'Folclore/Popular', 'img_7c6eeddd19eadd038ebb2d61752bad25.jpg', '2022-07-20 22:06:39', 'folclore/popular', 1),
(26, 'Jazz/Instrumental', 'Jazz/Instrumental', 'img_8fe1cf77a0a14fdb51d759cb16c54978.jpg', '2022-07-20 22:11:18', 'jazz/instrumental', 1),
(27, 'Oldies/Trova', 'Oldies/Trova', 'img_78b90b5153d8115f1fc758f0250ae6ad.jpg', '2022-07-20 22:12:35', 'oldies/trova', 1),
(28, 'Obras de Teatro', 'Obras de Teatro', 'img_321a013be883036ec8029ce38dcbecb8.jpg', '2022-07-20 22:14:33', 'obras-de-teatro', 1),
(29, 'Comedia Ofertas', 'Comedia', 'img_95abf46b08eaf06a47bca01b05ade6c4.jpg', '2022-07-20 22:20:58', 'comedia-ofertas', 1),
(30, 'Musicales', 'Musicales', 'img_7d43a313c925439e70482743ce2c0f93.jpg', '2022-07-20 22:22:45', 'musicales', 1),
(31, 'Orquesta/Opera', 'Orquesta/Opera', 'img_8a7bd0ac4dc367b5de13882a1d68c6f4.jpg', '2022-07-20 22:25:04', 'orquesta/opera', 1),
(32, 'Performance', 'Performance', 'img_d5066472ee657f6981275126490010b6.jpg', '2022-07-20 22:25:37', 'performance', 1),
(33, 'Voces/Coro', 'Voces/Coro', 'img_42c6ae702171a9711d5c3ec92b3d60b2.jpg', '2022-07-20 22:26:26', 'voces/coro', 1),
(34, 'Americano', 'Americano', 'img_48d069b6c8f4a036d23ba0d60d839dfb.jpg', '2022-07-20 22:27:02', 'americano', 1),
(35, 'NUEVA CATE', 'NUEVA', 'img_5671923adc5a7c1447bee87521aea1a8.jpg', '2022-07-27 16:11:52', 'nueva-cate', 1),
(37, 'Categoria37', 'laCategoria37', 'laimagen37', '2022-08-01 12:11:55', 'categoria37', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contacto`
--

DROP TABLE IF EXISTS `contacto`;
CREATE TABLE IF NOT EXISTS `contacto` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `nombre` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `mensaje` text NOT NULL,
  `ip` varchar(15) NOT NULL,
  `dispositivo` varchar(25) NOT NULL,
  `useragent` text NOT NULL,
  `datecreated` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `contacto`
--

INSERT INTO `contacto` (`id`, `nombre`, `email`, `mensaje`, `ip`, `dispositivo`, `useragent`, `datecreated`) VALUES
(1, 'Edwin', 'edwinvillegas9@gmail.com', 'Pruebas de TreaSell', '::1', 'PC', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.61 Safari/537.36', '2022-05-31 22:16:02'),
(3, 'Edwin', 'edwinvillegas9@gmail.com', 'Pruebas de TreaSell 2', '::1', 'PC', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.61 Safari/537.36', '2022-05-31 22:21:23'),
(4, 'Ary', 'ariadnarafael@gmail.com', 'Supervisora de pruebas.', '::1', 'PC', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.61 Safari/537.36', '2022-05-31 22:22:17'),
(5, 'Ary', 'ariadnarafael@gmail.com', 'Prueba 2', '::1', 'PC', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.5005.61 Safari/537.36', '2022-05-31 22:29:53'),
(6, 'Edwin', 'evillegasd1600@alumno.ipn.mx', '¿Nuevo usuario?', '::1', 'PC', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.0.0 Safari/537.36', '2022-06-05 14:52:56');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_pedido`
--

DROP TABLE IF EXISTS `detalle_pedido`;
CREATE TABLE IF NOT EXISTS `detalle_pedido` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `pedidoid` bigint NOT NULL,
  `productoid` bigint NOT NULL,
  `precio` decimal(11,2) NOT NULL,
  `cantidad` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `pedidoid` (`pedidoid`),
  KEY `productoid` (`productoid`)
) ENGINE=InnoDB AUTO_INCREMENT=137 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_temp`
--

DROP TABLE IF EXISTS `detalle_temp`;
CREATE TABLE IF NOT EXISTS `detalle_temp` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `personaid` bigint NOT NULL,
  `productoid` bigint NOT NULL,
  `precio` decimal(11,2) NOT NULL,
  `cantidad` int NOT NULL,
  `transaccionid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `productoid` (`productoid`),
  KEY `personaid` (`personaid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `imagen`
--

DROP TABLE IF EXISTS `imagen`;
CREATE TABLE IF NOT EXISTS `imagen` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `productoid` bigint NOT NULL,
  `img` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `productoid` (`productoid`)
) ENGINE=InnoDB AUTO_INCREMENT=72 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `modulo`
--

DROP TABLE IF EXISTS `modulo`;
CREATE TABLE IF NOT EXISTS `modulo` (
  `idmodulo` bigint NOT NULL AUTO_INCREMENT,
  `titulo` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci NOT NULL,
  `descripcion` text CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci NOT NULL,
  `status` int NOT NULL DEFAULT '1',
  PRIMARY KEY (`idmodulo`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

--
-- Volcado de datos para la tabla `modulo`
--

INSERT INTO `modulo` (`idmodulo`, `titulo`, `descripcion`, `status`) VALUES
(1, 'Dashboard', 'Dashboard', 1),
(2, 'Usuarios', 'Usuarios del sistema', 1),
(3, 'Clientes', 'Clientes de tienda', 1),
(4, 'Productos', 'Todos los productos', 1),
(5, 'Pedidos', 'Pedidos', 1),
(6, 'Caterogías', 'Caterogías Productos', 1),
(7, 'Suscriptores', 'Suscriptores del sitio web', 1),
(8, 'Contactos', 'Mensajes del formulario contacto', 1),
(9, 'Páginas', 'Páginas del sitio web', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedido`
--

DROP TABLE IF EXISTS `pedido`;
CREATE TABLE IF NOT EXISTS `pedido` (
  `idpedido` bigint NOT NULL AUTO_INCREMENT,
  `referenciacobro` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci DEFAULT NULL,
  `idtransaccionpaypal` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci DEFAULT NULL,
  `datospaypal` text CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci,
  `personaid` bigint NOT NULL,
  `fecha` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `costo_envio` decimal(10,2) NOT NULL DEFAULT '0.00',
  `monto` decimal(11,2) NOT NULL,
  `tipopagoid` bigint NOT NULL,
  `direccion_envio` text CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci NOT NULL,
  `status` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci DEFAULT NULL,
  PRIMARY KEY (`idpedido`),
  KEY `personaid` (`personaid`),
  KEY `tipopagoid` (`tipopagoid`)
) ENGINE=InnoDB AUTO_INCREMENT=70 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permisos`
--

DROP TABLE IF EXISTS `permisos`;
CREATE TABLE IF NOT EXISTS `permisos` (
  `idpermiso` bigint NOT NULL AUTO_INCREMENT,
  `rolid` bigint NOT NULL,
  `moduloid` bigint NOT NULL,
  `r` int NOT NULL DEFAULT '0',
  `w` int NOT NULL DEFAULT '0',
  `u` int NOT NULL DEFAULT '0',
  `d` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`idpermiso`),
  KEY `rolid` (`rolid`),
  KEY `moduloid` (`moduloid`)
) ENGINE=InnoDB AUTO_INCREMENT=812 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

--
-- Volcado de datos para la tabla `permisos`
--

INSERT INTO `permisos` (`idpermiso`, `rolid`, `moduloid`, `r`, `w`, `u`, `d`) VALUES
(716, 7, 1, 1, 0, 0, 0),
(717, 7, 2, 0, 0, 0, 0),
(718, 7, 3, 0, 0, 0, 0),
(719, 7, 4, 0, 0, 0, 0),
(720, 7, 5, 1, 0, 0, 0),
(721, 7, 6, 0, 0, 0, 0),
(729, 3, 1, 1, 0, 0, 0),
(730, 3, 2, 0, 0, 0, 0),
(731, 3, 3, 0, 0, 0, 0),
(732, 3, 4, 1, 1, 0, 0),
(733, 3, 5, 1, 0, 0, 0),
(734, 3, 6, 0, 0, 0, 0),
(735, 3, 7, 0, 0, 0, 0),
(794, 1, 1, 1, 0, 0, 0),
(795, 1, 2, 1, 1, 1, 1),
(796, 1, 3, 1, 1, 1, 1),
(797, 1, 4, 1, 1, 1, 1),
(798, 1, 5, 1, 1, 1, 1),
(799, 1, 6, 1, 1, 1, 1),
(800, 1, 7, 1, 0, 0, 0),
(801, 1, 8, 1, 0, 0, 0),
(802, 1, 9, 1, 1, 1, 1),
(803, 2, 1, 1, 0, 1, 0),
(804, 2, 2, 1, 0, 1, 0),
(805, 2, 3, 1, 0, 1, 0),
(806, 2, 4, 1, 1, 1, 1),
(807, 2, 5, 1, 0, 1, 0),
(808, 2, 6, 1, 0, 0, 0),
(809, 2, 7, 1, 0, 0, 0),
(810, 2, 8, 1, 0, 0, 0),
(811, 2, 9, 1, 1, 1, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `persona`
--

DROP TABLE IF EXISTS `persona`;
CREATE TABLE IF NOT EXISTS `persona` (
  `idpersona` bigint NOT NULL AUTO_INCREMENT,
  `identificacion` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci DEFAULT NULL,
  `nombres` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci NOT NULL,
  `apellidos` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci NOT NULL,
  `telefono` bigint NOT NULL,
  `email_user` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci NOT NULL,
  `password` varchar(75) CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci NOT NULL,
  `nit` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci DEFAULT NULL,
  `nombrefiscal` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci DEFAULT NULL,
  `direccionfiscal` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci DEFAULT NULL,
  `token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci DEFAULT NULL,
  `rolid` bigint NOT NULL,
  `datecreated` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` int NOT NULL DEFAULT '1',
  PRIMARY KEY (`idpersona`),
  KEY `rolid` (`rolid`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

--
-- Volcado de datos para la tabla `persona`
--

INSERT INTO `persona` (`idpersona`, `identificacion`, `nombres`, `apellidos`, `telefono`, `email_user`, `password`, `nit`, `nombrefiscal`, `direccionfiscal`, `token`, `rolid`, `datecreated`, `status`) VALUES
(1, '2409198920', 'Edwin', 'Villegas', 5532614632, 'edwinvillegas9@gmail.com', 'fb440056c6c28aa8ce423d2af61fbd290b7fabab5b1630245cc9cd12bed7e16f', '24252622', 'Edwin Villegas', 'Ciudad Azteca', '', 1, '2020-08-13 00:51:44', 1),
(22, '123456', 'Ariadna', 'Rafael', 5516789127, 'ariadnarafael@gmail.com', '7054d0451000f27e0673c136e684b10beee8f4d6d9d04f964a92345a92cb17ef', NULL, NULL, NULL, '2529fa4c5a17bc06420d-4f91eb854d410ada365f-9a97416c674b50453863-a6d71147bba117ef464a', 2, '2022-05-27 00:28:23', 0),
(23, '536878', 'Cacahuatito', 'Pepita', 5513141516, 'cacahuate@pelado.com', '6b51d431df5d7f141cbececcf79edf3dd861c3b4069f0b11661a3eefacbba918', '122323', 'Cacahuaton', 'Naucalpan', 'e2dd2fb1a3c7c6dead6f-bbb0f8960b893ccbb4e9-d669eedc8e04a793faa0-a679125193618ab86da0', 7, '2022-05-27 00:44:45', 0),
(24, '390832', 'Fredy', 'Hernandez', 5572734346, 'fhernandezd1601@alumno.ipn.mx', '7f0e5aabcb9e410fbd5fe9cfff2cdb911ba8bdc20ccd7fb987176e4bf12f3e07', NULL, NULL, NULL, NULL, 3, '2022-05-29 12:13:57', 0),
(25, '839202', 'Perla', 'Rivera', 5526839942, 'priveras1600@alumno.ipn.mx', '103f9732c86565481d7587abe03c52929053dc8ecb5b066dd575288a4337bac5', NULL, NULL, NULL, NULL, 7, '2022-05-29 12:21:51', 0),
(26, '240919891', 'Cliente', 'Nuevo', 122323232, 'cliente@gmail.com', '7a5df5ffa0dec2228d90b8d0a0f1b0767b748b0a41314c123075b8289e4e053f', NULL, NULL, NULL, NULL, 7, '2022-05-30 00:35:52', 0),
(27, '098761', 'Neftali', 'Valdovinos', 7444521325, 'kyzerark@gmail.com', '2a939ce5059afb411075b530b69e921993ee53232262b52180a99a6720242d37', '1223232', 'Neftali', 'Acapulquirri', NULL, 7, '2022-05-30 22:22:35', 0),
(28, '23422', 'Oaxaco', 'WAD', 222323, 'oaxacowad@gmail.com', '0401bf6fe6541e9e56e4f230ce08e5e09f4239224d23a331b19a68701b8456c6', NULL, NULL, NULL, 'c5b6b28b847e404c53ef-3b2b0e328ba4317a7e14-786574aae7b9d7714931-c78263dbb3dabf6b7ba0', 1, '2022-06-01 00:52:17', 0),
(30, '240919891q', 'Prueba', 'Prueba', 333333, 'prueba2@gmail.com', '655e786674d9d3e77bc05ed1de37b4b6bc89f788829f9f3c679e7687b410c89b', 'qq', 'qqq', 'qq', '27c5bb5c962c8c524500-29575be624db780ff4c1-3be34155eef986428f07-44dd40525b05d3842789', 7, '2022-06-01 20:59:16', 0),
(31, '09876', 'Lalito', 'Garza', 90090, 'josh@gmail.com', '3dfbf1fbdbf9d2eb39e14955dcfd073792ebed8c9b97995210e70c4059be13c9', NULL, NULL, NULL, NULL, 7, '2022-06-01 21:08:39', 0),
(32, 'wwwwww', 'PruebaBien', 'PruebaBien', 298939, 'prueba3@gmail.com', '183d17bfaf501732c201913ab684b2c5504b354d51cb8f99eebbf04df48a0e35', NULL, NULL, NULL, NULL, 7, '2022-06-01 21:13:38', 0),
(33, NULL, 'Nombre', 'Apellido', 6272727, 'nombreap@gmail.com', '797194efe22825f6acccf620d680db75f8a832a37a086ef147491ee6c27cfebf', NULL, NULL, NULL, NULL, 7, '2022-06-01 22:48:45', 0),
(34, '093820', 'Monica', 'Rivera', 123456789, 'maestra@gmail.com', 'ca0b642ed0c1c9902c3e9c8ac00865e0a9cf6449f66012e1c6948b66818f26ff', NULL, NULL, NULL, NULL, 7, '2022-06-05 14:43:46', 0),
(35, '123459', 'Monica', 'Rivera De La Rosa', 123456789, 'moni@gmail.com', 'ca0b642ed0c1c9902c3e9c8ac00865e0a9cf6449f66012e1c6948b66818f26ff', NULL, NULL, NULL, NULL, 7, '2022-06-05 15:26:53', 0),
(36, '1234933', 'Admin', 'Admin', 121223232, 'admin@gmail.com', '8c6976e5b5410415bde908bd4dee15dfb167a9c873fc4bb8a81f6f2ab448a918', NULL, NULL, NULL, NULL, 1, '2022-07-19 10:49:01', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `post`
--

DROP TABLE IF EXISTS `post`;
CREATE TABLE IF NOT EXISTS `post` (
  `idpost` bigint NOT NULL AUTO_INCREMENT,
  `titulo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci NOT NULL,
  `contenido` text CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci NOT NULL,
  `portada` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci DEFAULT NULL,
  `datecreate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ruta` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci NOT NULL,
  `status` int NOT NULL DEFAULT '1',
  PRIMARY KEY (`idpost`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

--
-- Volcado de datos para la tabla `post`
--

INSERT INTO `post` (`idpost`, `titulo`, `contenido`, `portada`, `datecreate`, `ruta`, `status`) VALUES
(1, 'Inicio', '<div class=\"p-t-80\"> <h3 class=\"ltext-103 cl5\">Nuestras marcas</h3> </div> <div> <p>Trabajamos con las mejores marcas del mundo ...</p> </div> <div class=\"row\"> <div class=\"col-md-3\"><img src=\"Assets/images/m1.png\" alt=\"Marca 1\" width=\"110\" height=\"110\" /></div> <div class=\"col-md-3\"><img src=\"Assets/images/m2.png\" alt=\"Marca 2\" /></div> <div class=\"col-md-3\"><img src=\"Assets/images/m3.png\" alt=\"Marca 3\" /></div> <div class=\"col-md-3\"><img src=\"Assets/images/m4.png\" alt=\"Marca 4\" /></div> </div>', '', '2021-07-20 02:40:15', 'inicio', 1),
(7, 'Términos y Condiciones', '<p>A continuaci&oacute;n se describen los t&eacute;rmino y condiciones de la TreaSell!</p> <ol> <li>Pol&iacute;tica uno</li> <li>Termino dos</li> <li>Condici&oacute;n tres</li> </ol> <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Nobis sunt, corrupti hic aspernatur cumque alias, ipsam omnis iure ipsum, nostrum labore obcaecati natus repellendus consequatur est nemo sapiente dolorem dicta. Lorem, ipsum dolor sit amet consectetur adipisicing elit. Commodi, voluptas, consectetur iusto delectus quaerat ullam nesciunt! Quae doloribus deserunt qui fugit illo nobis ipsum, accusamus eius perferendis beatae culpa molestias!</p>', '', '2021-08-11 01:51:06', 'terminos-y-condiciones', 1),
(9, 'Not Found', '<h1>Error 404: P&aacute;gina no encontrada</h1> <p>No se encuentra la p&aacute;gina que ha solicitado.</p>', '', '2021-08-12 02:30:49', 'not-found', 1),
(10, 'Nosotros', '<p>&iquest;Qui&eacute;nes somos?</p>', '', '2022-06-01 00:05:12', 'nosotros', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

DROP TABLE IF EXISTS `producto`;
CREATE TABLE IF NOT EXISTS `producto` (
  `idproducto` bigint NOT NULL AUTO_INCREMENT,
  `categoriaid` bigint NOT NULL,
  `codigo` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci NOT NULL,
  `nombre` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci NOT NULL,
  `descripcion` text CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci NOT NULL,
  `precio` decimal(11,2) NOT NULL,
  `stock` int NOT NULL,
  `imagen` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci NOT NULL,
  `datecreated` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ruta` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci NOT NULL,
  `status` int NOT NULL DEFAULT '1',
  PRIMARY KEY (`idproducto`),
  KEY `categoriaid` (`categoriaid`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reembolso`
--

DROP TABLE IF EXISTS `reembolso`;
CREATE TABLE IF NOT EXISTS `reembolso` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `pedidoid` bigint NOT NULL,
  `idtransaccion` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci NOT NULL,
  `datosreembolso` text CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci NOT NULL,
  `observacion` text CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci NOT NULL,
  `status` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `pedidoid` (`pedidoid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rol`
--

DROP TABLE IF EXISTS `rol`;
CREATE TABLE IF NOT EXISTS `rol` (
  `idrol` bigint NOT NULL AUTO_INCREMENT,
  `nombrerol` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci NOT NULL,
  `descripcion` text CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci NOT NULL,
  `status` int NOT NULL DEFAULT '1',
  PRIMARY KEY (`idrol`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

--
-- Volcado de datos para la tabla `rol`
--

INSERT INTO `rol` (`idrol`, `nombrerol`, `descripcion`, `status`) VALUES
(1, 'Administrador', 'Acceso a todo el sistema', 1),
(2, 'Supervisores', 'Supervisor de tienda', 1),
(3, 'Vendedores', 'Acceso a módulo ventas', 1),
(4, 'Servicio al cliente', 'Servicio al cliente sistema', 0),
(5, 'Bodega', 'Bodega', 0),
(6, 'Resporteria', 'Resporteria Sistema', 0),
(7, 'Cliente', 'Clientes tienda', 1),
(8, 'Ejemplo rol', 'Ejemplo rol sitema', 0),
(9, 'Coordinador', 'Coordinador', 0),
(10, 'Consulta Ventas', 'Consulta Ventas', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `suscripciones`
--

DROP TABLE IF EXISTS `suscripciones`;
CREATE TABLE IF NOT EXISTS `suscripciones` (
  `idsuscripcion` bigint NOT NULL AUTO_INCREMENT,
  `nombre` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci NOT NULL,
  `email` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci NOT NULL,
  `datecreated` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`idsuscripcion`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipopago`
--

DROP TABLE IF EXISTS `tipopago`;
CREATE TABLE IF NOT EXISTS `tipopago` (
  `idtipopago` bigint NOT NULL AUTO_INCREMENT,
  `tipopago` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_swedish_ci NOT NULL,
  `status` int NOT NULL DEFAULT '1',
  PRIMARY KEY (`idtipopago`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_swedish_ci;

--
-- Volcado de datos para la tabla `tipopago`
--

INSERT INTO `tipopago` (`idtipopago`, `tipopago`, `status`) VALUES
(1, 'PayPal', 1),
(2, 'Efectivo', 1),
(3, 'Tarjeta', 1),
(4, 'Cheque', 1),
(5, 'Despósito Bancario', 1);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `detalle_pedido`
--
ALTER TABLE `detalle_pedido`
  ADD CONSTRAINT `detalle_pedido_ibfk_1` FOREIGN KEY (`pedidoid`) REFERENCES `pedido` (`idpedido`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `detalle_pedido_ibfk_2` FOREIGN KEY (`productoid`) REFERENCES `producto` (`idproducto`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `detalle_temp`
--
ALTER TABLE `detalle_temp`
  ADD CONSTRAINT `detalle_temp_ibfk_1` FOREIGN KEY (`productoid`) REFERENCES `producto` (`idproducto`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `imagen`
--
ALTER TABLE `imagen`
  ADD CONSTRAINT `imagen_ibfk_1` FOREIGN KEY (`productoid`) REFERENCES `producto` (`idproducto`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `pedido`
--
ALTER TABLE `pedido`
  ADD CONSTRAINT `pedido_ibfk_1` FOREIGN KEY (`personaid`) REFERENCES `persona` (`idpersona`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `pedido_ibfk_2` FOREIGN KEY (`tipopagoid`) REFERENCES `tipopago` (`idtipopago`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `permisos`
--
ALTER TABLE `permisos`
  ADD CONSTRAINT `permisos_ibfk_1` FOREIGN KEY (`rolid`) REFERENCES `rol` (`idrol`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `permisos_ibfk_2` FOREIGN KEY (`moduloid`) REFERENCES `modulo` (`idmodulo`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `persona`
--
ALTER TABLE `persona`
  ADD CONSTRAINT `persona_ibfk_1` FOREIGN KEY (`rolid`) REFERENCES `rol` (`idrol`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `producto`
--
ALTER TABLE `producto`
  ADD CONSTRAINT `producto_ibfk_1` FOREIGN KEY (`categoriaid`) REFERENCES `categoria` (`idcategoria`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `reembolso`
--
ALTER TABLE `reembolso`
  ADD CONSTRAINT `reembolso_ibfk_1` FOREIGN KEY (`pedidoid`) REFERENCES `pedido` (`idpedido`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
