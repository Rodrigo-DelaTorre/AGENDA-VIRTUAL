-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 16-05-2025 a las 22:23:37
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `agenda`
--
CREATE DATABASE IF NOT EXISTS `agenda` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `agenda`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `contactos2`
--

DROP TABLE IF EXISTS `contactos2`;
CREATE TABLE `contactos2` (
  `id_contactos` int(8) NOT NULL,
  `id_usuario` int(8) NOT NULL,
  `nombre` varchar(40) NOT NULL,
  `direccion` varchar(30) NOT NULL,
  `telefono` varchar(40) NOT NULL,
  `email` varchar(40) NOT NULL,
  `contraseña` varchar(255) NOT NULL,
  `tipo_usuario` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `contactos2`
--

INSERT INTO `contactos2` (`id_contactos`, `id_usuario`, `nombre`, `direccion`, `telefono`, `email`, `contraseña`, `tipo_usuario`) VALUES
(3, 1, 'rodrigo delatorre', 'calle 14', '2711365654', 'rodrigo@gmail.com', '', 2),
(5, 2, 'isai ramirez', 'calle 23', '2711145446', 'isaidtr08@gmail.com', '', 3),
(7, 23, 'Jesus Aquino', 'Calle morelos', '271231212', 'JesAqui@gmail.com', '', 2),
(9, 7, 'Carlos Zamora', 'Los pinos, 23', '2715552234', 'Caloszam@gmail.com', '', 0),
(0, 1, 'pedro', 'calle 234', '2721234567', 'piter@gmail.com', '', 2),
(0, 3, 'benito', 'san frrancisco', '2711700545', 'paco@gmail.com', '', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

DROP TABLE IF EXISTS `usuario`;
CREATE TABLE `usuario` (
  `id_usuario` int(8) NOT NULL,
  `contraseña` varchar(40) NOT NULL,
  `nombre` varchar(40) NOT NULL,
  `telefono` varchar(40) NOT NULL,
  `tipo` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id_usuario`, `contraseña`, `nombre`, `telefono`, `tipo`) VALUES
(1, 'abc', 'Rodrigo DTR', '555-2700530', 1),
(2, 'abc', 'Antonio Ramirez', '555-1145555', 1),
(3, 'abc', 'Jesus Martínez', '555-1234', 2),
(4, 'abc', 'Pedro Jimenes', '555-35710', 2),
(5, 'abc', 'Miguel Angel lopez', '555-89372', 1);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
