-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 12, 2018 at 03:42 AM
-- Server version: 5.7.17-log
-- PHP Version: 7.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dunamis`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_archivo_css`
--

CREATE TABLE `tbl_archivo_css` (
  `codigo_archivo_css` int(11) NOT NULL,
  `nombre_archivo_css` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_archivo_html`
--

CREATE TABLE `tbl_archivo_html` (
  `codigo_archivo_html` int(11) NOT NULL,
  `nombre_archivo_html` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_archivo_js`
--

CREATE TABLE `tbl_archivo_js` (
  `codigo_archivo_js` int(11) NOT NULL,
  `nombre_archivo_js` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_continentes`
--

CREATE TABLE `tbl_continentes` (
  `codigo_continente` int(11) NOT NULL,
  `nombre_continente` varchar(45) NOT NULL,
  `codigo_pais` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_creditos`
--

CREATE TABLE `tbl_creditos` (
  `codigo_credito` int(11) NOT NULL,
  `numero_tarjeta` varchar(100) NOT NULL,
  `mes_vence` varchar(45) NOT NULL,
  `anio_vence` varchar(45) NOT NULL,
  `codigo_seguridad` varchar(10) NOT NULL,
  `codigo_plan` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_estados_deptos`
--

CREATE TABLE `tbl_estados_deptos` (
  `codigo_estado_depto` int(11) NOT NULL,
  `nombre_estado_depto` varchar(45) NOT NULL,
  `codigo_pais` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_facebook`
--

CREATE TABLE `tbl_facebook` (
  `codigo_facebook` int(11) NOT NULL,
  `url_facebook` varchar(100) DEFAULT NULL,
  `codigo_usuario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_facebook`
--

INSERT INTO `tbl_facebook` (`codigo_facebook`, `url_facebook`, `codigo_usuario`) VALUES
(1, 'rebeca.dechacom', 2);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_github`
--

CREATE TABLE `tbl_github` (
  `codigo_github` int(11) NOT NULL,
  `url_github` varchar(100) DEFAULT NULL,
  `codigo_usuario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_linkedin`
--

CREATE TABLE `tbl_linkedin` (
  `codigo_linkedin` int(11) NOT NULL,
  `url_linkedin` varchar(100) DEFAULT NULL,
  `codigo_usuario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_mensajes`
--

CREATE TABLE `tbl_mensajes` (
  `codigo_mensaje` int(11) NOT NULL,
  `titulo` varchar(50) NOT NULL,
  `descripcion` varchar(500) NOT NULL,
  `codigo_usuario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_paises`
--

CREATE TABLE `tbl_paises` (
  `codigo_pais` int(11) NOT NULL,
  `nombre_pais` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_paises`
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
(10, 'Canada');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_planes`
--

CREATE TABLE `tbl_planes` (
  `codigo_plan` int(11) NOT NULL,
  `nombre_plan` varchar(45) NOT NULL,
  `precio_plan` decimal(10,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_planes`
--

INSERT INTO `tbl_planes` (`codigo_plan`, `nombre_plan`, `precio_plan`) VALUES
(1, 'Gratis', '0'),
(2, 'Arranque', '74'),
(3, 'Desarrollador', '133'),
(4, 'Super', '300');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_proyectos`
--

CREATE TABLE `tbl_proyectos` (
  `codigo_proyecto` int(11) NOT NULL,
  `nombre_proyecto` varchar(50) NOT NULL,
  `descripcion` varchar(300) NOT NULL,
  `codigo_archivo_html` int(11) NOT NULL,
  `codigo_archivo_css` int(11) NOT NULL,
  `codigo_archivo_js` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_tipo_usuario`
--

CREATE TABLE `tbl_tipo_usuario` (
  `codigo_tipo_usuario` int(11) NOT NULL,
  `nombre_tipo_usuario` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_tipo_usuario`
--

INSERT INTO `tbl_tipo_usuario` (`codigo_tipo_usuario`, `nombre_tipo_usuario`) VALUES
(1, 'Administrador'),
(2, 'Gratuito'),
(3, 'Arranque'),
(4, 'Desarrollador'),
(5, 'Super ');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_twitter`
--

CREATE TABLE `tbl_twitter` (
  `codigo_twitter` int(11) NOT NULL,
  `url_twitter` varchar(100) DEFAULT NULL,
  `codigo_usuario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_usuarios`
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
-- Dumping data for table `tbl_usuarios`
--

INSERT INTO `tbl_usuarios` (`codigo_usuario`, `nombre_completo`, `correo`, `username`, `contrasenia`, `genero`, `telefono`, `descripcion`, `direccion`, `foto`, `fecha_nacimiento`, `codigo_plan`, `codigo_pais`, `codigo_tipo_usuario`) VALUES
(1, 'Leo Misael Chacon Canales', 'misaelchacon17@yahoo.es', 'misaelchacon', '08011981099176', 'Masculino', '999062425', 'Soy Ingeniero en sistemas', 'Colonia Villanueva Tegucigalpa', 'img/usuarios/Leo.jpg', NULL, 1, 1, 1),
(2, 'Loida Rebeca Estrada Aguirre', 'loidarebeca17@yahoo.com', 'loidaestrada', 'loidaestrada', 'Femenino', '98037070', ' Soy la mejor esposa del mundo, y ademas soy alegre, entusiasta y formal.', ' Colonia Villanueva sector 7a, frente a la terminal de Buses', 'img/usuarios/loida.jpeg', '1981-04-12', 1, 1, 2),
(3, 'Josias Misael Chacon', 'josiaschacon17@yahoo.es', 'josiaschacon', 'josiaschacon', 'Masculino', '324359899', NULL, NULL, 'img/usuarios/josias.jpg', NULL, 1, 2, 2),
(4, 'Rebeca Sarai Estrada', 'rebecaestrada@yahoo.es', 'rebecaestrada', 'rebecaestrada', 'Femenino', '22913233', NULL, NULL, 'img/usuarios/sarai.jpg', NULL, 1, 3, 2),
(5, 'Fares Jafet Estrada', 'faresestrada@yahoo.es', 'faresestrada', 'faresestrada', 'Masculino', '226364299', NULL, NULL, 'img/usuarios/fares.jpg', NULL, 1, 4, 2),
(6, 'Febe Eunice Chacon ', 'febechacon@yahoo.es', 'febechacon', 'febechacon', 'Femenino', '99062425', NULL, NULL, 'img/usuarios/febe.jpg', NULL, 1, 5, 2),
(7, 'Juan Orlando Hernandez', 'juanhernandez@gmai.com', 'juanfogon', 'juanorlandohernandez', '', NULL, NULL, NULL, NULL, NULL, 1, 1, 2),
(8, 'Caralampio Vallejo', 'caralampiovallejo@gmail.com', 'caralampiovallejo', 'caralampiovallejo', '', NULL, NULL, NULL, NULL, NULL, 1, 2, 2),
(9, 'Isaura Trujillo', 'isauratrujillo@gmail.com', 'Chuya', 'isauratrujillo', '', NULL, NULL, NULL, NULL, NULL, 1, 3, 2),
(10, 'Mirna Murillo', 'mirnamurillo@gmail.com', 'mirnamurillo', 'mirnamurillo', '', NULL, NULL, NULL, NULL, NULL, 1, 4, 2),
(11, 'Mirian Vasquez', 'mirianvasquez@gmail.com', 'mirianvasquez', 'mirianvasquez', '', NULL, NULL, NULL, NULL, NULL, 1, 5, 2),
(12, 'Sonia Merari Lagos', 'sonialagos@gmail.com', 'sonialagos', 'sonialagos', '', NULL, NULL, NULL, NULL, NULL, 1, 6, 2),
(13, 'Allan Adalberto Torres', 'allantorres@gmail.com', 'allantorres', 'allantorres', '', NULL, NULL, NULL, NULL, NULL, 1, 7, 2),
(14, 'Jesus Adan Sanchez', 'jesusadansanchez@gmail.com', 'jesusadan', 'jesusadansanchez', '', NULL, NULL, NULL, NULL, NULL, 1, 8, 2),
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
(26, 'Sandra Karidad Dormes', 'sandradormes@gmail.com', 'sandradormes', 'sandradormes', 'on', NULL, NULL, NULL, NULL, NULL, 1, 2, 2),
(27, 'Ana Julia Canales', 'anajuliacanales@gmail.com', 'anajuliacanales', 'anajuliacanales', 'on', NULL, NULL, NULL, NULL, NULL, 1, 1, 2),
(28, 'Santos Pricilo Chacon', 'santoschacon@gmail.com', 'santoschacon', 'santoschacon', 'on', NULL, NULL, NULL, NULL, NULL, 1, 1, 2),
(29, 'Demi Rachell Chacon', 'rachellchacon@gmail.com', 'rachellchacon', 'rachellchacon', 'on', NULL, NULL, NULL, NULL, NULL, 1, 10, 2),
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
(40, 'Martha Estrada Aguirre', 'marthaestrada@gamil.com', 'marthaestrada', 'marthaestrada', 'Femenino', '22750923', 'Soy cristiana, ya estoy cansada', 'Colonia Nueva Suyapa sector 7 Tegucigalpa Honduras', NULL, '1955-02-23', 1, 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_usuarios_x_tbl_proyectos`
--

CREATE TABLE `tbl_usuarios_x_tbl_proyectos` (
  `codigo_usuario` int(11) NOT NULL,
  `codigo_proyecto` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_archivo_css`
--
ALTER TABLE `tbl_archivo_css`
  ADD PRIMARY KEY (`codigo_archivo_css`);

--
-- Indexes for table `tbl_archivo_html`
--
ALTER TABLE `tbl_archivo_html`
  ADD PRIMARY KEY (`codigo_archivo_html`);

--
-- Indexes for table `tbl_archivo_js`
--
ALTER TABLE `tbl_archivo_js`
  ADD PRIMARY KEY (`codigo_archivo_js`);

--
-- Indexes for table `tbl_continentes`
--
ALTER TABLE `tbl_continentes`
  ADD PRIMARY KEY (`codigo_continente`),
  ADD KEY `fk_tbl_continentes_tbl_paises1_idx` (`codigo_pais`);

--
-- Indexes for table `tbl_creditos`
--
ALTER TABLE `tbl_creditos`
  ADD PRIMARY KEY (`codigo_credito`),
  ADD KEY `fk_tbl_credito_tbl_plan1_idx` (`codigo_plan`);

--
-- Indexes for table `tbl_estados_deptos`
--
ALTER TABLE `tbl_estados_deptos`
  ADD PRIMARY KEY (`codigo_estado_depto`),
  ADD KEY `fk_tbl_estados_deptos_tbl_paises1_idx` (`codigo_pais`);

--
-- Indexes for table `tbl_facebook`
--
ALTER TABLE `tbl_facebook`
  ADD PRIMARY KEY (`codigo_facebook`),
  ADD KEY `fk_tbl_facebook_tbl_usuarios1_idx` (`codigo_usuario`);

--
-- Indexes for table `tbl_github`
--
ALTER TABLE `tbl_github`
  ADD PRIMARY KEY (`codigo_github`),
  ADD KEY `fk_tbl_github_tbl_usuarios1_idx` (`codigo_usuario`);

--
-- Indexes for table `tbl_linkedin`
--
ALTER TABLE `tbl_linkedin`
  ADD PRIMARY KEY (`codigo_linkedin`),
  ADD KEY `fk_tbl_linkedin_tbl_usuarios1_idx` (`codigo_usuario`);

--
-- Indexes for table `tbl_mensajes`
--
ALTER TABLE `tbl_mensajes`
  ADD PRIMARY KEY (`codigo_mensaje`),
  ADD KEY `fk_tbl_mensajes_tbl_usuarios1_idx` (`codigo_usuario`);

--
-- Indexes for table `tbl_paises`
--
ALTER TABLE `tbl_paises`
  ADD PRIMARY KEY (`codigo_pais`);

--
-- Indexes for table `tbl_planes`
--
ALTER TABLE `tbl_planes`
  ADD PRIMARY KEY (`codigo_plan`);

--
-- Indexes for table `tbl_proyectos`
--
ALTER TABLE `tbl_proyectos`
  ADD PRIMARY KEY (`codigo_proyecto`),
  ADD KEY `fk_tbl_proyectos_tbl_archivo_html1_idx` (`codigo_archivo_html`),
  ADD KEY `fk_tbl_proyectos_tbl_archivo_css1_idx` (`codigo_archivo_css`),
  ADD KEY `fk_tbl_proyectos_tbl_archivo_js1_idx` (`codigo_archivo_js`);

--
-- Indexes for table `tbl_tipo_usuario`
--
ALTER TABLE `tbl_tipo_usuario`
  ADD PRIMARY KEY (`codigo_tipo_usuario`);

--
-- Indexes for table `tbl_twitter`
--
ALTER TABLE `tbl_twitter`
  ADD PRIMARY KEY (`codigo_twitter`),
  ADD KEY `fk_tbl_twitter_tbl_usuarios1_idx` (`codigo_usuario`);

--
-- Indexes for table `tbl_usuarios`
--
ALTER TABLE `tbl_usuarios`
  ADD PRIMARY KEY (`codigo_usuario`),
  ADD KEY `fk_tbl_usuario_tbl_plan1_idx` (`codigo_plan`),
  ADD KEY `fk_tbl_usuarios_tbl_paises1_idx` (`codigo_pais`),
  ADD KEY `fk_tbl_usuarios_tbl_tipo_usuario1_idx` (`codigo_tipo_usuario`);

--
-- Indexes for table `tbl_usuarios_x_tbl_proyectos`
--
ALTER TABLE `tbl_usuarios_x_tbl_proyectos`
  ADD PRIMARY KEY (`codigo_usuario`,`codigo_proyecto`),
  ADD KEY `fk_tbl_usuarios_has_tbl_proyecto_tbl_proyecto1_idx` (`codigo_proyecto`),
  ADD KEY `fk_tbl_usuarios_has_tbl_proyecto_tbl_usuarios1_idx` (`codigo_usuario`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_archivo_css`
--
ALTER TABLE `tbl_archivo_css`
  MODIFY `codigo_archivo_css` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_archivo_html`
--
ALTER TABLE `tbl_archivo_html`
  MODIFY `codigo_archivo_html` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_archivo_js`
--
ALTER TABLE `tbl_archivo_js`
  MODIFY `codigo_archivo_js` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_continentes`
--
ALTER TABLE `tbl_continentes`
  MODIFY `codigo_continente` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_creditos`
--
ALTER TABLE `tbl_creditos`
  MODIFY `codigo_credito` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_estados_deptos`
--
ALTER TABLE `tbl_estados_deptos`
  MODIFY `codigo_estado_depto` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_facebook`
--
ALTER TABLE `tbl_facebook`
  MODIFY `codigo_facebook` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tbl_github`
--
ALTER TABLE `tbl_github`
  MODIFY `codigo_github` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_linkedin`
--
ALTER TABLE `tbl_linkedin`
  MODIFY `codigo_linkedin` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_mensajes`
--
ALTER TABLE `tbl_mensajes`
  MODIFY `codigo_mensaje` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_paises`
--
ALTER TABLE `tbl_paises`
  MODIFY `codigo_pais` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `tbl_planes`
--
ALTER TABLE `tbl_planes`
  MODIFY `codigo_plan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `tbl_proyectos`
--
ALTER TABLE `tbl_proyectos`
  MODIFY `codigo_proyecto` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_tipo_usuario`
--
ALTER TABLE `tbl_tipo_usuario`
  MODIFY `codigo_tipo_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `tbl_twitter`
--
ALTER TABLE `tbl_twitter`
  MODIFY `codigo_twitter` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_usuarios`
--
ALTER TABLE `tbl_usuarios`
  MODIFY `codigo_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbl_continentes`
--
ALTER TABLE `tbl_continentes`
  ADD CONSTRAINT `fk_tbl_continentes_tbl_paises1` FOREIGN KEY (`codigo_pais`) REFERENCES `tbl_paises` (`codigo_pais`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `tbl_creditos`
--
ALTER TABLE `tbl_creditos`
  ADD CONSTRAINT `fk_tbl_credito_tbl_plan1` FOREIGN KEY (`codigo_plan`) REFERENCES `tbl_planes` (`codigo_plan`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `tbl_estados_deptos`
--
ALTER TABLE `tbl_estados_deptos`
  ADD CONSTRAINT `fk_tbl_estados_deptos_tbl_paises1` FOREIGN KEY (`codigo_pais`) REFERENCES `tbl_paises` (`codigo_pais`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `tbl_facebook`
--
ALTER TABLE `tbl_facebook`
  ADD CONSTRAINT `fk_tbl_facebook_tbl_usuarios1` FOREIGN KEY (`codigo_usuario`) REFERENCES `tbl_usuarios` (`codigo_usuario`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `tbl_github`
--
ALTER TABLE `tbl_github`
  ADD CONSTRAINT `fk_tbl_github_tbl_usuarios1` FOREIGN KEY (`codigo_usuario`) REFERENCES `tbl_usuarios` (`codigo_usuario`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `tbl_linkedin`
--
ALTER TABLE `tbl_linkedin`
  ADD CONSTRAINT `fk_tbl_linkedin_tbl_usuarios1` FOREIGN KEY (`codigo_usuario`) REFERENCES `tbl_usuarios` (`codigo_usuario`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `tbl_mensajes`
--
ALTER TABLE `tbl_mensajes`
  ADD CONSTRAINT `fk_tbl_mensajes_tbl_usuarios1` FOREIGN KEY (`codigo_usuario`) REFERENCES `tbl_usuarios` (`codigo_usuario`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `tbl_proyectos`
--
ALTER TABLE `tbl_proyectos`
  ADD CONSTRAINT `fk_tbl_proyectos_tbl_archivo_css1` FOREIGN KEY (`codigo_archivo_css`) REFERENCES `tbl_archivo_css` (`codigo_archivo_css`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_tbl_proyectos_tbl_archivo_html1` FOREIGN KEY (`codigo_archivo_html`) REFERENCES `tbl_archivo_html` (`codigo_archivo_html`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_tbl_proyectos_tbl_archivo_js1` FOREIGN KEY (`codigo_archivo_js`) REFERENCES `tbl_archivo_js` (`codigo_archivo_js`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `tbl_twitter`
--
ALTER TABLE `tbl_twitter`
  ADD CONSTRAINT `fk_tbl_twitter_tbl_usuarios1` FOREIGN KEY (`codigo_usuario`) REFERENCES `tbl_usuarios` (`codigo_usuario`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `tbl_usuarios`
--
ALTER TABLE `tbl_usuarios`
  ADD CONSTRAINT `fk_tbl_usuario_tbl_plan1` FOREIGN KEY (`codigo_plan`) REFERENCES `tbl_planes` (`codigo_plan`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_tbl_usuarios_tbl_paises1` FOREIGN KEY (`codigo_pais`) REFERENCES `tbl_paises` (`codigo_pais`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_tbl_usuarios_tbl_tipo_usuario1` FOREIGN KEY (`codigo_tipo_usuario`) REFERENCES `tbl_tipo_usuario` (`codigo_tipo_usuario`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `tbl_usuarios_x_tbl_proyectos`
--
ALTER TABLE `tbl_usuarios_x_tbl_proyectos`
  ADD CONSTRAINT `fk_tbl_usuarios_has_tbl_proyecto_tbl_proyecto1` FOREIGN KEY (`codigo_proyecto`) REFERENCES `tbl_proyectos` (`codigo_proyecto`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_tbl_usuarios_has_tbl_proyecto_tbl_usuarios1` FOREIGN KEY (`codigo_usuario`) REFERENCES `tbl_usuarios` (`codigo_usuario`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
