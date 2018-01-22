-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 22-01-2018 a las 20:14:26
-- Versión del servidor: 10.1.28-MariaDB
-- Versión de PHP: 5.6.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `equiposchile`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `equipos`
--

CREATE TABLE `equipos` (
  `equi_id` int(11) NOT NULL,
  `equi_nombre` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `equi_apodo` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `equi_ciudad` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `equi_fundacion` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `equi_res` varchar(500) COLLATE utf8_spanish_ci DEFAULT NULL,
  `equi_urlinsignia` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `equi_urlplantel` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci COMMENT='	';

--
-- Volcado de datos para la tabla `equipos`
--

INSERT INTO `equipos` (`equi_id`, `equi_nombre`, `equi_apodo`, `equi_ciudad`, `equi_fundacion`, `equi_res`, `equi_urlinsignia`, `equi_urlplantel`) VALUES
(1, 'AUDAX ITALIANO', 'Italicos', 'Santiago', '30 de Noviembre 1910', 'Audax Italiano La Florida es un club profesional de futbol de Chile, radicado en la comuna de La Florida, en la ciudad de Santiago. Fue fundado el 30 de noviembre de 1910 por miembros de la colonia italiana residente en Chile como un club de ciclismo denominado Audax Club Ciclista Italiano. La palabra Audax proviene del latin y significa osado, que era un termino frecuente que se les daba a los ciclistas a principios del siglo XX.\r\n', 'audax_i.png', 'audax_p.jpg'),
(2, 'COLO COLO', 'Cacique', 'Santiago', '19 de abril de 1925', 'El Club Social y Deportivo Colo-Colo es una institucion dedicada al futbol profesional con base en la ciudad de Santiago, Chile. Fue fundado el 19 de abril de 1925 por un grupo de exfutbolistas del Club Social y Deportivo Magallanes, liderados por David Arellano. Desde 2005 es administrado por la sociedad anonima Blanco y Negro S.A. bajo un sistema de concesion.\r\n', 'colocolo_i.png', 'colocolo_p.jpg'),
(3, 'CURICO UNIDO', 'Torteros', 'Curico', '26 de Febrero 1973', 'El Club de Deportes Provincial Curico Unido es un club de futbol chileno de la ciudad de Curico, Region del Maule. Fue fundado el 26 de febrero de 1973. Actualmente juega en la Primera Division. Ademas, el club participa en los siguientes campeonatos de la ANFP: Campeonato Nacional Futbol Joven Sub 15, 16, 17 y 19; Campeonato Nacional Femenino Primera Division y Sub 17; Campeonato Futbol Infantil Sub 13 y 14; y Campeonato Nacional de Futsal .', 'curico_i.png', 'curico_p.jpg'),
(4, 'DEPORTES ANTOFAGASTA', 'Pumas', 'Antofagasta', '14 de Mayo 1966', 'El Club de Deportes Antofagasta es un club de futbol de Chile de la ciudad de Antofagasta, capital de la Region de Antofagasta. Fue fundado el 14 de mayo de 1966 bajo la denominacion de Club de Deportes Antofagasta Portuario, fruto de la fusion de dos clubes de la ciudad, Union Bellavista y Portuario Atacama. Actualmente juega en la Primera Division de Chile', 'antofagasta_i.png', 'antofagasta_p.jpg'),
(5, 'DEPORTES IQUIQUE', 'Dragones Celestes', 'Iquique', '21 de Mayo 1978', 'El Club de Deportes Iquique​ es un club de futbol de Chile, de la ciudad de Iquique, Region de Tarapaca. Fue fundado el 21 de mayo de 1978 y actualmente juega en la Primera Division de Chile. Su clasico rival es Club Deportivo San Marcos de Arica', 'iquique_i.png', 'iquique_p.jpg'),
(6, 'DEPORTES TEMUCO', 'Alviverdes', 'Temuco', '27 de Junio 1916', 'El Club de Deportes Temuco es un club de futbol de Chile de la ciudad de Temuco en la Provincia de Cautin, Region de la Araucania. Fue fundado el 27 de junio de 1916.​ Actualmente milita en la Primera Division de Chile. ', 'temuco_i.png', 'temuco_p.png'),
(7, 'EVERTON', 'Ruletros', 'Vina del Mar', '24 de Junio 1909', 'Everton de Vina del Mar es una institucion deportiva de Chile radicada en la ciudad de Vina del Mar. Actualmente milita en la Primera Division de Chile. \r\nFue fundado el 24 de junio de 1909 en la vecina ciudad de Valparaiso por un grupo de inmigrantes ingleses liderados por David Foxley. Aun cuando no hay datos concluyentes acerca del origen de su nombre, comunmente se acepta que este fue tomado en honor al Everton Football Club, con sede en Liverpool.', 'everton_i.png', 'everton_p.jpg'),
(8, 'HUACHIPATO', 'Acereros', 'Talcahuano', '7 de Junio 1947', 'El Club Deportivo Huachipato es un equipo profesional de futbol chileno, de la ciudad de Talcahuano, en la Provincia de Concepcion (Region del Biobio). Fue fundado el 7 de junio de 1947 y en la actualidad juega en la Primera Division de Chile.\r\nEl club es local en el Estadio Huachipato-CAP Acero, ubicado en el sector Las Higueras de la comuna de Talcahuano, que posee una capacidad para 10.022 espectadores. Es uno de los pocos equipos chilenos que poseen un estadio propio.', 'huachipato_i.png', 'huachipato_p.jpg'),
(9, 'O\'HIGGINS', 'Capo de Provincia', 'Rancagua', '7 de Abril 1955', 'El Club Deportivo O\'Higgins​, es un equipo profesional de futbol chileno, de la ciudad de Rancagua. Fue fundado el 7 de abril de 1955,​ producto de la fusion de los clubes America y O\'Higgins Braden (fusion de los clubes de la Braden y del Instituto O\'Higgins). A partir de 2005 pasa a ser una sociedad anonima deportiva, bajo el nombre de Club Deportivo O\'Higgins Sociedad Anonima Deportiva Profesional; desde entonces es administrado por el expresidente de la ANFP Ricardo Abumohor.', 'ohiggins_i.png', 'ohiggins_p.jpg'),
(10, 'PALESTINO', 'Tino Tino', 'Santiago', '20 de Agosto 1920', 'El Club Deportivo Palestino es un equipo de futbol profesional de Chile, radicado en la ciudad de Santiago, Region Metropolitana. Fue fundado por miembros de la colonia palestina residente en Chile el 20 de agosto de 1920 en la ciudad de Osorno. Actualmente juega en la Primera Division del futbol chileno.', 'palestino_i.png', 'palestino_p.jpg'),
(11, 'SAN LUIS', 'Canarios', 'Quillota', '8 de Diciembre 1919', 'San Luis de Quillota​ es una institucion deportiva de la ciudad de Quillota en la Region de Valparaiso. \r\nFue fundado el 8 de diciembre de 1919 por un grupo de estudiantes del Instituto Rafael Ariztia, comenzo llamandose Ex Alumnos del Instituto Quillota Football Club, poco tiempo despues paso a llamarse Deportivo San Luis de Quillota en homenaje al director del establecimiento. Su rama de futbol profesional fue convertida en Sociedad Anonima Deportiva Profesional (S.A.D.P.) el ano 2006.', 'sanluis_i.png', 'sanluis_p.jpg'),
(12, 'U. DE CONCEPCION', 'El Campanil', 'Concepcion', '08 de Agosto 1994', 'El Club Deportivo Universidad de Concepcion1​ es un club de futbol de Chile de la ciudad de Concepcion en la Region del Biobio. Es una rama de la Corporacion Club Deportivo Universidad de Concepcion, entidad polideportiva fundada el 8 de agosto de 1994 y dependiente de la Universidad de Concepcion, y juega en la Primera Division de Chile', 'udeconcepcion_i.png', 'udeconcepcion_p.jpg'),
(13, 'UNION LA CALERA', 'Cementeros', 'La Calera', '26 de Enero 1954', 'El Club de Deportes Union La Calera es un club de futbol de Chile, de la ciudad de La Calera. Desde la temporada 2018 jugara en la Primera Division de Chile.\r\nFue fundado como Club de Deportes La Calera el 26 de enero de 1954, luego de la fusion de tres equipos de la ciudad, Condor, Calera Comercio y Tifon. Al ano siguiente este equipo se unio con el Club de Deportes Melon, surgido a su vez de la fusion de los clubes Cemento Melon y Minas Navio, para asi formar Union La Calera.', 'unionlacalera_i.png', 'unionlacalera_p.jpg'),
(14, 'UNIVERSIDAD CATOLICA', 'Cruzados', 'Santiago', '21 de Abril 1937', 'El club de futbol de Universidad Catolica fue fundado el 21 de abril de 1937 y se trata de uno de los equipos mas exitosos y grandes del pais.​ A fines del 2009, Universidad Catolica se transformo en Sociedad Anonima y ahora funciona bajo la administracion de Cruzados SADP. Se desempena como local en el Estadio San Carlos de Apoquindo.', 'uc_i.png', 'uc_p.jpg'),
(15, 'UNIVERSIDAD DE CHILE', 'La U', 'Santiago', '24 de Mayo del 1927', 'Fue fundado el 24 de mayo de 1927​ y juega en la Primera Division de Chile.\r\nDesde inicios de la decada de 1930 paso a pertenecer al Club Deportivo de la Universidad de Chile, entidad polideportiva dependiente de la Universidad de Chile. Sin embargo, en 1980 se separo formalmente de aquel establecimiento educacional, pasando a denominarse legalmente como Corporacion de Futbol Profesional de la Universidad de Chile El club es administrado desde 2007 por la sociedad anonima Azul Azul S.A.', 'u_i.png', 'u_p.jpg'),
(16, 'UNION ESPANOLA', 'Hispanos', 'Santiago', '18 de Mayo 1897', 'Union Espanola es un club de futbol profesional con sede en la ciudad de Santiago. Fue fundado por un grupo de espanoles residentes en Chile y de descendientes de espanoles bajo el nombre de Centro Espanol de Instruccion y Recreacion el 18 de mayo de 1897. Fue refundado oficialmente el 12 de abril de 1934, tras la fusion del Centro Espanol de Instruccion y Recreacion con la Union Deportiva Espanola, pasando a denominarse oficialmente Union Espanola.', 'union_i.png', 'union_p.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `palmares`
--

CREATE TABLE `palmares` (
  `pal_equi_id` int(11) NOT NULL,
  `pal_primera` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `pal_primerab` int(11) NOT NULL,
  `pal_copachile` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `pal_supercopa` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `pal_sudamericana` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `pal_libertadores` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `palmares`
--

INSERT INTO `palmares` (`pal_equi_id`, `pal_primera`, `pal_primerab`, `pal_copachile`, `pal_supercopa`, `pal_sudamericana`, `pal_libertadores`) VALUES
(1, '4', 0, '0', '0', '0', '0'),
(2, '32', 0, '11', '1', '0', '1'),
(3, '0', 2, '0', '0', '0', '0'),
(4, '0', 2, '0', '0', '0', '0'),
(5, '0', 3, '3', '0', '0', '0'),
(6, '1', 5, '0', '0', '0', '0'),
(7, '4', 1, '1', '0', '0', '0'),
(8, '2', 1, '0', '0', '0', '0'),
(9, '1', 1, '0', '1', '0', '0'),
(10, '2', 2, '2', '0', '0', '0'),
(11, '0', 5, '0', '0', '0', '0'),
(12, '1', 0, '2', '0', '0', '0'),
(13, '0', 3, '0', '0', '0', '0'),
(14, '12', 2, '4', '1', '0', '0'),
(15, '18', 1, '5', '1', '1', '0'),
(16, '7', 1, '2', '1', '0', '0');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `equipos`
--
ALTER TABLE `equipos`
  ADD PRIMARY KEY (`equi_id`);

--
-- Indices de la tabla `palmares`
--
ALTER TABLE `palmares`
  ADD PRIMARY KEY (`pal_equi_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `equipos`
--
ALTER TABLE `equipos`
  MODIFY `equi_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
