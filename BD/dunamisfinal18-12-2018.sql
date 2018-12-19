-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 19-12-2018 a las 02:12:17
-- Versión del servidor: 5.7.17-log
-- Versión de PHP: 7.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `dunamis`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_archivo_css`
--

CREATE TABLE `tbl_archivo_css` (
  `codigo_archivo_css` int(11) NOT NULL,
  `nombre_archivo_css` longblob,
  `codigo_proyecto` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tbl_archivo_css`
--

INSERT INTO `tbl_archivo_css` (`codigo_archivo_css`, `nombre_archivo_css`, `codigo_proyecto`) VALUES
(1, NULL, 6),
(2, 0x756e646566696e6564, 7),
(3, NULL, 8),
(4, NULL, 9),
(5, NULL, 10),
(6, NULL, 11),
(7, 0x756e646566696e6564, 12),
(8, NULL, 13),
(9, 0x756e646566696e6564, 14),
(10, NULL, 15),
(11, 0x756e646566696e6564, 16),
(12, 0x756e646566696e6564, 17),
(13, 0x756e646566696e6564, 18),
(14, 0x756e646566696e6564, 19);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_archivo_html`
--

CREATE TABLE `tbl_archivo_html` (
  `codigo_archivo_html` int(11) NOT NULL,
  `nombre_archivo_html` longblob,
  `codigo_proyecto` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tbl_archivo_html`
--

INSERT INTO `tbl_archivo_html` (`codigo_archivo_html`, `nombre_archivo_html`, `codigo_proyecto`) VALUES
(1, NULL, 6),
(2, 0x756e646566696e6564, 7),
(3, NULL, 8),
(4, NULL, 9),
(5, NULL, 10),
(6, NULL, 11),
(7, 0x756e646566696e6564, 12),
(8, NULL, 13),
(9, 0x756e646566696e6564, 14),
(10, NULL, 15),
(11, 0x756e646566696e6564, 16),
(12, 0x756e646566696e6564, 17),
(13, 0x756e646566696e6564, 18),
(14, 0x756e646566696e6564, 19);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_archivo_js`
--

CREATE TABLE `tbl_archivo_js` (
  `codigo_archivo_js` int(11) NOT NULL,
  `nombre_archivo_js` longblob,
  `codigo_proyecto` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tbl_archivo_js`
--

INSERT INTO `tbl_archivo_js` (`codigo_archivo_js`, `nombre_archivo_js`, `codigo_proyecto`) VALUES
(1, NULL, 6),
(2, 0x756e646566696e6564, 7),
(3, NULL, 8),
(4, NULL, 9),
(5, NULL, 10),
(6, NULL, 11),
(7, 0x756e646566696e6564, 12),
(8, NULL, 13),
(9, 0x756e646566696e6564, 14),
(10, NULL, 15),
(11, 0x756e646566696e6564, 16),
(12, 0x756e646566696e6564, 17),
(13, 0x756e646566696e6564, 18),
(14, 0x756e646566696e6564, 19);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_creditos`
--

CREATE TABLE `tbl_creditos` (
  `codigo_credito` int(11) NOT NULL,
  `nombre_tarjeta` varchar(45) NOT NULL,
  `numero_tarjeta` varchar(100) NOT NULL,
  `vencimiento` varchar(45) NOT NULL,
  `codigo_seguridad` varchar(10) NOT NULL,
  `codigo_plan` int(11) NOT NULL,
  `tipo_pago` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tbl_creditos`
--

INSERT INTO `tbl_creditos` (`codigo_credito`, `nombre_tarjeta`, `numero_tarjeta`, `vencimiento`, `codigo_seguridad`, `codigo_plan`, `tipo_pago`) VALUES
(1, 'Loida Rebeca Estrada Aguirre', '52369874125478996', '10/22', '1018', 2, 'Tarjeta Credito'),
(2, 'Josias Misael Chacon', '8745693214503698', '4/21', '2021', 2, 'Tarjeta Credito'),
(3, 'Fares Jafet Estrada', '32104569870145899', '5/20', '2563', 2, 'Tarjeta Credito'),
(4, 'Febe Eunice Chacon', '78965483210456321', '6/20', '1478', 2, 'Tarjeta Credito'),
(5, 'Juan Orlando Hernandez', '2145369874563210', '5/22', '1256', 4, 'Tarjeta Credito'),
(6, 'Sonia Merari Lagos', '2536987412587412', '5/20', '4589', 3, 'Tarjeta Credito'),
(7, 'Maria Rosario Ventura', '12365478996587412', '6/19', '3698', 2, 'Tarjeta Credito'),
(8, 'Allan Adalberto Torres', '12365478996541230', '6/22', '7536', 3, 'Tarjeta Credito'),
(9, 'Caralampio Vallejo', '9874563210236541', '8/20', '1478', 4, 'Tarjeta Credito'),
(10, 'Sandra Karidad Dormes', '231456998745699321', '9/22', '2021', 2, 'Tarjeta de Credito'),
(11, 'Demi Rachell Chacon Canales', '7854123698547125', '6/20', '4587', 4, 'Tarjeta de Credito'),
(12, 'Jose luis martinez', '856994785699321456', '5/22', '1210', 3, 'Tarjeta de Credito');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_facebook`
--

CREATE TABLE `tbl_facebook` (
  `codigo_facebook` int(11) NOT NULL,
  `url_facebook` varchar(100) DEFAULT NULL,
  `codigo_usuario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tbl_facebook`
--

INSERT INTO `tbl_facebook` (`codigo_facebook`, `url_facebook`, `codigo_usuario`) VALUES
(1, 'rebeca.dechacom', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_github`
--

CREATE TABLE `tbl_github` (
  `codigo_github` int(11) NOT NULL,
  `url_github` varchar(100) DEFAULT NULL,
  `codigo_usuario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_linkedin`
--

CREATE TABLE `tbl_linkedin` (
  `codigo_linkedin` int(11) NOT NULL,
  `url_linkedin` varchar(100) DEFAULT NULL,
  `codigo_usuario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_mensajes`
--

CREATE TABLE `tbl_mensajes` (
  `codigo_mensaje` int(11) NOT NULL,
  `titulo` varchar(50) NOT NULL,
  `descripcion` varchar(500) NOT NULL,
  `codigo_usuario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tbl_mensajes`
--

INSERT INTO `tbl_mensajes` (`codigo_mensaje`, `titulo`, `descripcion`, `codigo_usuario`) VALUES
(1, 'Me gusta Dunamis y la forma de hacer codigo', 'Saludos a todos y agradezco a Dunamis digitales por ayudarme a ser mejor programadora. lo recomiento al 1000.', 2),
(2, 'Recomiendo la Interfaz', 'Dunamis digitales es lo mejor que podamos ver en la Web, para trabajar de una manera facil, rapida y sencilla lo recomiendo muchisimo para principiantes.  ', 3),
(3, 'Experiencia Maravillosa', 'La forma en que la interfaz interactua y la rapidez de poder hacer las cosas sin anuncios ni que se te quede trabaja la maquina me gusta, y tambien recomiendo a Dunamis para todo desarrollador. ', 5),
(4, 'Porfesional y Mejorado', 'Veo que esta plataforma es la mejor y la mas profesional que hay en el mercado, he visto otras pero son muy complicadas, en cambio Dunamis es sencilla de usar y facilisima recomiendo a todos Dunamis Digitales. ', 9),
(5, 'Lo mejor de lo Mejor', 'No hay palabras como expresar la experincia de Dunamis Digitales que cada profesional tiene para trabajar en el desarrollo de aplicaciones Web, es facil y sencilla de usar y lo mejor es que es muy rapido.', 4),
(6, 'Me gusta la plataforma', 'Es una plataforma buenisisma', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_paises`
--

CREATE TABLE `tbl_paises` (
  `codigo_pais` int(11) NOT NULL,
  `nombre_pais` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tbl_paises`
--

INSERT INTO `tbl_paises` (`codigo_pais`, `nombre_pais`) VALUES
(1, 'Honduras'),
(2, 'Guatemala'),
(3, 'El Salvador'),
(4, 'Belice'),
(5, 'Nicaragua'),
(6, 'Costa Rica'),
(7, 'Panamá'),
(8, 'Mexico'),
(9, 'Estados Unidos'),
(10, 'Canada'),
(11, 'Argentina'),
(12, 'Brasil'),
(13, 'Uruguay'),
(14, 'Paraguay'),
(15, 'Venezuela'),
(16, 'Ecuador'),
(17, 'Peru'),
(18, 'Colombia'),
(19, 'Bolivia'),
(20, 'Chile'),
(21, 'España');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_planes`
--

CREATE TABLE `tbl_planes` (
  `codigo_plan` int(11) NOT NULL,
  `nombre_plan` varchar(45) NOT NULL,
  `precio_plan` decimal(10,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tbl_planes`
--

INSERT INTO `tbl_planes` (`codigo_plan`, `nombre_plan`, `precio_plan`) VALUES
(1, 'Gratis', '0'),
(2, 'Arranque', '74'),
(3, 'Desarrollador', '133'),
(4, 'Super Programador', '300');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_proyectos`
--

CREATE TABLE `tbl_proyectos` (
  `codigo_proyecto` int(11) NOT NULL,
  `nombre_proyecto` varchar(50) NOT NULL,
  `descripcion` varchar(300) NOT NULL,
  `codigo_usuario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tbl_proyectos`
--

INSERT INTO `tbl_proyectos` (`codigo_proyecto`, `nombre_proyecto`, `descripcion`, `codigo_usuario`) VALUES
(1, 'FORMULARIO', 'HACER UN FORMULARIO SENCILLO CON TODOS LOS BOTONES Y ENTRADAS ETC USANDO HTML, CSS Y JAVASCRIPT.', 26),
(2, 'Mi Login personalizado', 'Consiste en crear un Login bien hecho.', 28),
(3, 'Ejemplo de Ventanas', 'Consiste en crear un proyecto de direccionamiento a otras paginas web.', 9),
(4, 'Prueba de Login', 'El proyecto consiste en hacer un login y probar', 2),
(5, 'Peticiones Asincronas', 'Este proyecto consiste en hacer peticiones asincronas y ver como funcionan los datos al cargarse del servidor mas rapidamente.', 2),
(6, 'Como Robar Dinero Secretamente', 'Crear un formulario para anotar a todos los que son ladrones en el gobierno.', 7),
(7, 'Lista de Corruptos en mi gobierno', 'Crea un formulario de listado de funcionarios corrptos del gobierno.', 7),
(8, 'Listado de Proyectos de Gobierno', 'Se crea un formulario para mostrar el listado de los proyectos que hice en mi gobierno.', 7),
(9, 'Ejemplo de Movimientos', 'En hacer movimientos espaciales en pantalla.', 27),
(10, 'DESARROLLO WEB', 'PROYECTO DE DESARROLLO WEB', 7),
(11, 'Funcionario Web', 'Este Proyecto consiste en funciones Web', 7),
(12, 'Matematico', 'Resolver probelmas matematicos', 7),
(13, 'Poder Ejecutivo', 'Proyecto que consiste en llevar programacion web para el cuerpo ejecutivo', 7),
(14, 'Mi Hola Mundo', 'Mi proyecto de progrmacion Web', 12),
(15, 'Prueba Final', 'Este es un proyecto de prueba', 7),
(16, 'Prueba de examen', 'Esta es una prueba de examen', 26),
(17, 'Proyecto Rachell', 'Esta es una prueba del Proyecto Rachell', 29),
(18, 'Proyecto Web', 'Consiste en una pequeña aplicacion', 46),
(19, 'Examen', 'Este es la nota final', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_tipo_usuario`
--

CREATE TABLE `tbl_tipo_usuario` (
  `codigo_tipo_usuario` int(11) NOT NULL,
  `nombre_tipo_usuario` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tbl_tipo_usuario`
--

INSERT INTO `tbl_tipo_usuario` (`codigo_tipo_usuario`, `nombre_tipo_usuario`) VALUES
(1, 'Administrador'),
(2, 'Gratuito'),
(3, 'Arranque'),
(4, 'Desarrollador'),
(5, 'Super ');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_twitter`
--

CREATE TABLE `tbl_twitter` (
  `codigo_twitter` int(11) NOT NULL,
  `url_twitter` varchar(100) DEFAULT NULL,
  `codigo_usuario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_usuarios`
--

CREATE TABLE `tbl_usuarios` (
  `codigo_usuario` int(11) NOT NULL,
  `nombre_completo` varchar(45) NOT NULL,
  `correo` varchar(45) NOT NULL,
  `username` varchar(45) NOT NULL,
  `contrasenia` varchar(200) NOT NULL,
  `genero` varchar(45) NOT NULL,
  `telefono` varchar(20) DEFAULT NULL,
  `descripcion` varchar(200) DEFAULT NULL,
  `direccion` varchar(200) DEFAULT NULL,
  `foto` varchar(80) DEFAULT NULL,
  `fecha_nacimiento` date DEFAULT NULL,
  `codigo_plan` int(11) NOT NULL,
  `codigo_pais` int(11) NOT NULL,
  `codigo_tipo_usuario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tbl_usuarios`
--

INSERT INTO `tbl_usuarios` (`codigo_usuario`, `nombre_completo`, `correo`, `username`, `contrasenia`, `genero`, `telefono`, `descripcion`, `direccion`, `foto`, `fecha_nacimiento`, `codigo_plan`, `codigo_pais`, `codigo_tipo_usuario`) VALUES
(1, 'Leo Misael Chacon Canales', 'misaelchacon17@yahoo.es', 'misaelchacon', '08011981099176', 'Masculino', '999062425', 'Soy Ingeniero en sistemas', 'Colonia Villanueva Tegucigalpa', 'img/usuarios/Leo.jpg', NULL, 1, 1, 1),
(2, 'Loida Rebeca Estrada Aguirre', 'loidarebeca17@yahoo.com', 'loidaestrada', 'loidaestrada', 'Femenino', '98037070', 'Soy la mejor esposa del mundo, y ademas soy alegre, entusiasta y formal.', 'Colonia Villanueva sector 7a, frente a la terminal de Buses', 'img/usuarios/loida.jpeg', '2018-12-01', 2, 1, 2),
(3, 'Josias Misael Chacon', 'josiaschacon17@yahoo.es', 'josiaschacon', 'josiaschacon', 'Masculino', '324359899', NULL, NULL, 'img/usuarios/josias.jpg', NULL, 2, 2, 2),
(4, 'Rebeca Sarai Estrada', 'rebecaestrada@yahoo.es', 'rebecaestrada', 'rebecaestrada', 'Femenino', '22913233', 'Soy pequeña, inteligente, me llaman Nena y me gusta porque lo soy, soy apasionada por Dios soy danzarina y cantante.', 'Colonia Villanueva frente a la terminal de buses carretera a Danli Tegucigalpa Honduras', 'img/usuarios/sarai.jpg', '2010-11-28', 1, 3, 2),
(5, 'Fares Jafet Estrada', 'faresestrada@yahoo.es', 'faresestrada', 'faresestrada', 'Masculino', '83569852', ' Soy serio, Me enojo cuando me molestan y no me hacen caso cuando tenemos que hacer las cosas bien en el trabajo.', ' Colonia Villanueva Sector 7a frente a terminal de Buses carretera a Danli Tegucigalpa Honduras', 'img/usuarios/fares.jpg', '2018-12-31', 2, 4, 2),
(6, 'Febe Eunice Chacon ', 'febechacon@yahoo.es', 'febechacon', 'febechacon', 'Femenino', '99062425', NULL, NULL, 'img/usuarios/febe.jpg', NULL, 2, 5, 2),
(7, 'Juan Orlando Hernandez', 'juanhernandez@gmai.com', 'juanfogon', 'juanorlandohernandez', 'Masculino', '99999999', 'gane por fraude, me aprovecho del gobierno y mando con mano dura de corrupcion ni hablemos.', 'nose ni la quiero dar porque soy el presidente', 'img/usuarios/juanorlando.jpg', '1945-02-07', 4, 1, 2),
(8, 'Caralampio Vallejo', 'caralampiovallejo@gmail.com', 'caralampiovallejo', 'caralampiovallejo', '', '98745632', 'Soy empresario y Multimillonario', ' New York', NULL, '2018-12-02', 4, 2, 2),
(9, 'Isaura Trujillo', 'isauratrujillo@gmail.com', 'Chuya', 'isauratrujillo', 'Femenino', '98280316', 'Soy apasionada por Jesus', 'Colonia Altos de Miramamr', 'img/usuarios/isaura.jpg', NULL, 1, 3, 2),
(10, 'Mirna Murillo', 'mirnamurillo@gmail.com', 'mirnamurillo', 'mirnamurillo', '', NULL, NULL, NULL, NULL, NULL, 1, 4, 2),
(11, 'Mirian Vasquez', 'mirianvasquez@gmail.com', 'mirianvasquez', 'mirianvasquez', '', NULL, NULL, NULL, NULL, NULL, 1, 5, 2),
(12, 'Sonia Merari Lagos', 'sonialagos@gmail.com', 'sonialagos', 'sonialagos', 'Femenino', '2291-5689', 'Soy una mujer milagro de Dios', 'Colonia Las Mercedes', 'img/usuarios/sonia.jpg', '2012-10-04', 3, 6, 2),
(13, 'Allan Adalberto Torres', 'allantorres@gmail.com', 'allantorres', 'allantorres', '', '25987456', 'Soy negociante vendo lujos para carros', 'Colonia el Trapiche', NULL, '2018-12-01', 3, 7, 2),
(14, 'Jesus Adan Sanchez', 'jesusadansanchez@gmail.com', 'jesusadan', 'jesusadansanchez', '', '98989898', 'Soy Bolo Botado, albañil de media cuchara trabajo de ayudante del ayudante. ', 'Colonia de la muerte', NULL, '1975-05-14', 1, 8, 2),
(15, 'Sonia Pacheco', 'soniapacheco@gmail.com', 'soniapacheco', 'soniapacheco', '', NULL, NULL, NULL, NULL, NULL, 1, 9, 2),
(16, 'Dilenia Garcia', 'dileniagarcia@gamil.com', 'dileniagarcia', 'dileniagarcia', '', NULL, NULL, NULL, NULL, NULL, 1, 10, 2),
(17, 'Gladis Asucena Andrade', 'gladisandrade@gmail.com', 'gladisandrade', 'gladisandrade', '', NULL, NULL, NULL, NULL, NULL, 1, 10, 2),
(18, 'Alba Aurora Funez', 'albaaurorafunez@gamil.com', 'albaaurorafunez', 'albaaurorafunez', '', NULL, NULL, NULL, NULL, NULL, 1, 9, 2),
(19, 'Ariel Banegas', 'arielbanegas@gmail.com', 'arielbanegas', 'arielbanegas', '', NULL, NULL, NULL, NULL, NULL, 1, 8, 2),
(20, 'Ariel Lopez Lopes', 'ariellopez@yahoo.com', 'ariellopez', 'ariellopez', '', NULL, NULL, NULL, NULL, NULL, 1, 7, 2),
(21, 'Gerson David Fortin', 'gersondavidfortin@yahoo.com', 'gersondavidfortin', 'gersondavidfortin', '', NULL, NULL, NULL, NULL, NULL, 1, 6, 2),
(22, 'Marco Antonio Andino', 'marcoantonioandino@yahoo.com', 'marcoantonioandino', 'marcoantonioandino', '', NULL, NULL, NULL, NULL, NULL, 1, 5, 2),
(23, 'Karla Patricia Irias', 'karlapatriciairias@gmail.com', 'karlapatriciairias', 'karlapatriciairias', '', NULL, NULL, NULL, NULL, NULL, 1, 4, 2),
(24, 'Julieta Castellanos', 'julietacastellanos@gmail.com', 'julietacastellanos', 'julietacastellanos', '', NULL, NULL, NULL, NULL, NULL, 1, 3, 2),
(25, 'Moises Rene Velasquez', 'moisesvelasquez@gmail.com', 'moisesvelasquez', 'moisesvelasquez', '', NULL, NULL, NULL, NULL, NULL, 1, 8, 2),
(26, 'Sandra Karidad Dormes', 'sandradormes@gmail.com', 'sandradormes', 'sandradormes', 'on', '98653214', 'Soy la mujer mas feliz del mundo', 'Colonia Sagastume', NULL, '2011-02-09', 2, 2, 2),
(27, 'Ana Julia Canales', 'anajuliacanales@gmail.com', 'anajuliacanales', 'anajuliacanales', 'on', NULL, NULL, NULL, NULL, NULL, 1, 1, 2),
(28, 'Santos Pricilo Chacon', 'santoschacon@gmail.com', 'santoschacon', 'santoschacon', 'on', NULL, NULL, NULL, NULL, NULL, 1, 1, 2),
(29, 'Demi Rachell Chacon', 'rachellchacon@gmail.com', 'rachellchacon', 'rachellchacon', 'on', NULL, NULL, NULL, NULL, NULL, 4, 10, 2),
(30, 'Jonathan Chacon', 'jonathanchacon@yahoo.com', 'jonathanchacon', 'jonathanchacon', 'on', NULL, NULL, NULL, NULL, NULL, 1, 3, 2),
(31, 'Jonathan Chacon', 'jonathanchacon@yahoo.com', 'jonathanchacon', 'jonathanchacon', 'on', NULL, NULL, NULL, NULL, NULL, 1, 3, 2),
(32, 'samuel chacon', 'samuelchacon@yahoo.com', 'samuelchacon', 'samuelchacon', 'on', NULL, NULL, NULL, NULL, NULL, 1, 9, 2),
(33, 'Juan Frnacisco Meza', 'juanmeza@gmail.com', 'juanmeza', 'juanmeza', 'on', NULL, NULL, NULL, NULL, NULL, 1, 6, 2),
(34, 'Fresi Sulita', 'fresisulita@gmail.com', 'fresisulita', 'fresisulita', 'on', NULL, NULL, NULL, NULL, NULL, 1, 5, 2),
(35, 'Camela Sanchez', 'carmelasanchez@yahoo.es', 'carmelasanchez', 'carmelasanchez', 'on', NULL, NULL, NULL, NULL, NULL, 1, 4, 2),
(36, 'Vilma Palma', 'vilmapalma@gmail.com', 'vilmapalma', 'vilmapalma', 'on', NULL, NULL, NULL, NULL, NULL, 1, 8, 2),
(37, 'Frijoles Parados', 'frijolesparados@yahoo.es', 'frijolesparados', 'frijolesparados', 'on', NULL, NULL, NULL, NULL, NULL, 1, 7, 2),
(38, 'Juan Salmeron', 'juansalmeron@gmail.com', 'juansalmeron', 'juansalmeron', 'on', NULL, NULL, NULL, NULL, NULL, 1, 3, 2),
(39, 'Jesus Adan Sanchez', 'jesussanchez@gmail.com', 'jesussanchez', 'jesussanchez', 'Masculino', NULL, NULL, NULL, NULL, NULL, 1, 5, 2),
(40, 'Martha Estrada Aguirre', 'marthaestrada@gamil.com', 'marthaestrada', 'marthaestrada', 'Femenino', '22750923', 'Soy cristiana, ya estoy cansada', 'Colonia Nueva Suyapa sector 7 Tegucigalpa Honduras', NULL, '1955-02-23', 1, 1, 2),
(41, 'Maria Rosario Ventura', 'mariarosarioventura@gmail.com', 'Maria Ventura', 'mariaventura', 'Femenino', '92639874', 'Soy Negociante, cocinera y tengo mi propio restaurante de venta de comidas.', 'Colonia Villanueva sector 2', NULL, '1941-07-10', 2, 9, 2),
(42, 'Fabricio Perez Cadalso', 'fabricioperez@gmail.com', 'fabricioperez', 'fabricioperez', 'Masculino', NULL, NULL, NULL, NULL, NULL, 1, 13, 2),
(43, 'Antoni Castillo', 'antonicastillo@yahoo.es', 'antonicastillo', 'antonicastillo', 'Masculino', '88585858', 'Soy alto, y me gusta programar', 'Colonia Las Lomas', NULL, '2018-12-01', 1, 15, 2),
(44, 'Antonio Medina Castillo', 'antoniomedina@gmail.com', 'antoniomedina', 'antoniomedina', 'Masculino', '986547854', 'Soy el mejor programador', 'Colonia Suyapa', NULL, '2001-01-31', 1, 11, 2),
(46, 'Jose Luis Martinez', 'joseluismartinez@yahoo.es', 'joseluis', 'joseluismartinez', 'Masculino', '896547213', 'Soy muy buen programador', 'Colonia Suyapa', NULL, '2018-12-01', 3, 17, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_usuarios_x_tbl_proyectos`
--

CREATE TABLE `tbl_usuarios_x_tbl_proyectos` (
  `codigo_usuario` int(11) NOT NULL,
  `codigo_proyecto` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tbl_usuarios_x_tbl_proyectos`
--

INSERT INTO `tbl_usuarios_x_tbl_proyectos` (`codigo_usuario`, `codigo_proyecto`) VALUES
(26, 1),
(28, 2),
(9, 3),
(2, 4),
(2, 5),
(7, 6),
(7, 7),
(7, 8),
(27, 9),
(7, 10),
(7, 11),
(7, 12),
(7, 13),
(12, 14),
(7, 15),
(26, 16),
(29, 17),
(46, 18),
(2, 19);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `tbl_archivo_css`
--
ALTER TABLE `tbl_archivo_css`
  ADD PRIMARY KEY (`codigo_archivo_css`),
  ADD KEY `fk_tbl_archivo_css_tbl_proyectos1_idx` (`codigo_proyecto`);

--
-- Indices de la tabla `tbl_archivo_html`
--
ALTER TABLE `tbl_archivo_html`
  ADD PRIMARY KEY (`codigo_archivo_html`),
  ADD KEY `fk_tbl_archivo_html_tbl_proyectos1_idx` (`codigo_proyecto`);

--
-- Indices de la tabla `tbl_archivo_js`
--
ALTER TABLE `tbl_archivo_js`
  ADD PRIMARY KEY (`codigo_archivo_js`),
  ADD KEY `fk_tbl_archivo_js_tbl_proyectos1_idx` (`codigo_proyecto`);

--
-- Indices de la tabla `tbl_creditos`
--
ALTER TABLE `tbl_creditos`
  ADD PRIMARY KEY (`codigo_credito`),
  ADD KEY `fk_tbl_credito_tbl_plan1_idx` (`codigo_plan`);

--
-- Indices de la tabla `tbl_facebook`
--
ALTER TABLE `tbl_facebook`
  ADD PRIMARY KEY (`codigo_facebook`),
  ADD KEY `fk_tbl_facebook_tbl_usuarios1_idx` (`codigo_usuario`);

--
-- Indices de la tabla `tbl_github`
--
ALTER TABLE `tbl_github`
  ADD PRIMARY KEY (`codigo_github`),
  ADD KEY `fk_tbl_github_tbl_usuarios1_idx` (`codigo_usuario`);

--
-- Indices de la tabla `tbl_linkedin`
--
ALTER TABLE `tbl_linkedin`
  ADD PRIMARY KEY (`codigo_linkedin`),
  ADD KEY `fk_tbl_linkedin_tbl_usuarios1_idx` (`codigo_usuario`);

--
-- Indices de la tabla `tbl_mensajes`
--
ALTER TABLE `tbl_mensajes`
  ADD PRIMARY KEY (`codigo_mensaje`),
  ADD KEY `fk_tbl_mensajes_tbl_usuarios1_idx` (`codigo_usuario`);

--
-- Indices de la tabla `tbl_paises`
--
ALTER TABLE `tbl_paises`
  ADD PRIMARY KEY (`codigo_pais`);

--
-- Indices de la tabla `tbl_planes`
--
ALTER TABLE `tbl_planes`
  ADD PRIMARY KEY (`codigo_plan`);

--
-- Indices de la tabla `tbl_proyectos`
--
ALTER TABLE `tbl_proyectos`
  ADD PRIMARY KEY (`codigo_proyecto`),
  ADD KEY `fk_tbl_proyectos_tbl_usuarios1_idx` (`codigo_usuario`);

--
-- Indices de la tabla `tbl_tipo_usuario`
--
ALTER TABLE `tbl_tipo_usuario`
  ADD PRIMARY KEY (`codigo_tipo_usuario`);

--
-- Indices de la tabla `tbl_twitter`
--
ALTER TABLE `tbl_twitter`
  ADD PRIMARY KEY (`codigo_twitter`),
  ADD KEY `fk_tbl_twitter_tbl_usuarios1_idx` (`codigo_usuario`);

--
-- Indices de la tabla `tbl_usuarios`
--
ALTER TABLE `tbl_usuarios`
  ADD PRIMARY KEY (`codigo_usuario`),
  ADD KEY `fk_tbl_usuario_tbl_plan1_idx` (`codigo_plan`),
  ADD KEY `fk_tbl_usuarios_tbl_paises1_idx` (`codigo_pais`),
  ADD KEY `fk_tbl_usuarios_tbl_tipo_usuario1_idx` (`codigo_tipo_usuario`);

--
-- Indices de la tabla `tbl_usuarios_x_tbl_proyectos`
--
ALTER TABLE `tbl_usuarios_x_tbl_proyectos`
  ADD PRIMARY KEY (`codigo_usuario`,`codigo_proyecto`),
  ADD KEY `fk_tbl_usuarios_has_tbl_proyectos_tbl_proyectos1_idx` (`codigo_proyecto`),
  ADD KEY `fk_tbl_usuarios_has_tbl_proyectos_tbl_usuarios1_idx` (`codigo_usuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `tbl_archivo_css`
--
ALTER TABLE `tbl_archivo_css`
  MODIFY `codigo_archivo_css` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT de la tabla `tbl_archivo_html`
--
ALTER TABLE `tbl_archivo_html`
  MODIFY `codigo_archivo_html` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT de la tabla `tbl_archivo_js`
--
ALTER TABLE `tbl_archivo_js`
  MODIFY `codigo_archivo_js` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT de la tabla `tbl_creditos`
--
ALTER TABLE `tbl_creditos`
  MODIFY `codigo_credito` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT de la tabla `tbl_facebook`
--
ALTER TABLE `tbl_facebook`
  MODIFY `codigo_facebook` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `tbl_github`
--
ALTER TABLE `tbl_github`
  MODIFY `codigo_github` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `tbl_linkedin`
--
ALTER TABLE `tbl_linkedin`
  MODIFY `codigo_linkedin` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `tbl_mensajes`
--
ALTER TABLE `tbl_mensajes`
  MODIFY `codigo_mensaje` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT de la tabla `tbl_paises`
--
ALTER TABLE `tbl_paises`
  MODIFY `codigo_pais` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT de la tabla `tbl_planes`
--
ALTER TABLE `tbl_planes`
  MODIFY `codigo_plan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de la tabla `tbl_proyectos`
--
ALTER TABLE `tbl_proyectos`
  MODIFY `codigo_proyecto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT de la tabla `tbl_tipo_usuario`
--
ALTER TABLE `tbl_tipo_usuario`
  MODIFY `codigo_tipo_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT de la tabla `tbl_twitter`
--
ALTER TABLE `tbl_twitter`
  MODIFY `codigo_twitter` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `tbl_usuarios`
--
ALTER TABLE `tbl_usuarios`
  MODIFY `codigo_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `tbl_archivo_css`
--
ALTER TABLE `tbl_archivo_css`
  ADD CONSTRAINT `fk_tbl_archivo_css_tbl_proyectos1` FOREIGN KEY (`codigo_proyecto`) REFERENCES `tbl_proyectos` (`codigo_proyecto`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `tbl_archivo_html`
--
ALTER TABLE `tbl_archivo_html`
  ADD CONSTRAINT `fk_tbl_archivo_html_tbl_proyectos1` FOREIGN KEY (`codigo_proyecto`) REFERENCES `tbl_proyectos` (`codigo_proyecto`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `tbl_archivo_js`
--
ALTER TABLE `tbl_archivo_js`
  ADD CONSTRAINT `fk_tbl_archivo_js_tbl_proyectos1` FOREIGN KEY (`codigo_proyecto`) REFERENCES `tbl_proyectos` (`codigo_proyecto`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `tbl_creditos`
--
ALTER TABLE `tbl_creditos`
  ADD CONSTRAINT `fk_tbl_credito_tbl_plan1` FOREIGN KEY (`codigo_plan`) REFERENCES `tbl_planes` (`codigo_plan`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `tbl_facebook`
--
ALTER TABLE `tbl_facebook`
  ADD CONSTRAINT `fk_tbl_facebook_tbl_usuarios1` FOREIGN KEY (`codigo_usuario`) REFERENCES `tbl_usuarios` (`codigo_usuario`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `tbl_github`
--
ALTER TABLE `tbl_github`
  ADD CONSTRAINT `fk_tbl_github_tbl_usuarios1` FOREIGN KEY (`codigo_usuario`) REFERENCES `tbl_usuarios` (`codigo_usuario`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `tbl_linkedin`
--
ALTER TABLE `tbl_linkedin`
  ADD CONSTRAINT `fk_tbl_linkedin_tbl_usuarios1` FOREIGN KEY (`codigo_usuario`) REFERENCES `tbl_usuarios` (`codigo_usuario`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `tbl_mensajes`
--
ALTER TABLE `tbl_mensajes`
  ADD CONSTRAINT `fk_tbl_mensajes_tbl_usuarios1` FOREIGN KEY (`codigo_usuario`) REFERENCES `tbl_usuarios` (`codigo_usuario`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `tbl_proyectos`
--
ALTER TABLE `tbl_proyectos`
  ADD CONSTRAINT `fk_tbl_proyectos_tbl_usuarios1` FOREIGN KEY (`codigo_usuario`) REFERENCES `tbl_usuarios` (`codigo_usuario`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `tbl_twitter`
--
ALTER TABLE `tbl_twitter`
  ADD CONSTRAINT `fk_tbl_twitter_tbl_usuarios1` FOREIGN KEY (`codigo_usuario`) REFERENCES `tbl_usuarios` (`codigo_usuario`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `tbl_usuarios`
--
ALTER TABLE `tbl_usuarios`
  ADD CONSTRAINT `fk_tbl_usuario_tbl_plan1` FOREIGN KEY (`codigo_plan`) REFERENCES `tbl_planes` (`codigo_plan`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_tbl_usuarios_tbl_paises1` FOREIGN KEY (`codigo_pais`) REFERENCES `tbl_paises` (`codigo_pais`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_tbl_usuarios_tbl_tipo_usuario1` FOREIGN KEY (`codigo_tipo_usuario`) REFERENCES `tbl_tipo_usuario` (`codigo_tipo_usuario`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `tbl_usuarios_x_tbl_proyectos`
--
ALTER TABLE `tbl_usuarios_x_tbl_proyectos`
  ADD CONSTRAINT `fk_tbl_usuarios_has_tbl_proyectos_tbl_proyectos1` FOREIGN KEY (`codigo_proyecto`) REFERENCES `tbl_proyectos` (`codigo_proyecto`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_tbl_usuarios_has_tbl_proyectos_tbl_usuarios1` FOREIGN KEY (`codigo_usuario`) REFERENCES `tbl_usuarios` (`codigo_usuario`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
