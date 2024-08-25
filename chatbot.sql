-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 25-08-2024 a las 03:54:16
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `chatbot`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `faqs`
--

CREATE TABLE `faqs` (
  `id` int(11) NOT NULL,
  `question` varchar(255) NOT NULL,
  `answer` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `faqs`
--

INSERT INTO `faqs` (`id`, `question`, `answer`) VALUES
(1, '¿Cuál es el horario de atención?', 'Nuestro horario de atención es de 9:00 AM a 6:00 PM de lunes a viernes.'),
(2, '¿Dónde están ubicados?', 'Estamos ubicados en la calle Ejemplo 123, Ciudad, País.'),
(3, '¿Cómo puedo registrarme para el evento?', 'Para registrarte en el evento, por favor visita nuestra página de registro en el sitio web y completa el formulario de inscripción.'),
(4, '¿Cuál es la fecha del evento?', 'La fecha del evento es el 15 de septiembre de 2024.'),
(5, '¿Dónde se llevará a cabo el evento?', 'El evento se llevará a cabo en el Centro de Convenciones de la Ciudad, ubicado en la Calle Ejemplo 456.'),
(6, '¿Cuál es el horario del evento?', 'El evento comenzará a las 10:00 AM y finalizará a las 6:00 PM.'),
(7, '¿Cuánto cuesta la entrada al evento?', 'La entrada al evento es gratuita. Sin embargo, se requiere registro previo para asegurar tu lugar.'),
(8, '¿Hay estacionamiento disponible en el lugar del evento?', 'Sí, habrá estacionamiento disponible en el lugar del evento, con espacios suficientes para todos los asistentes.'),
(9, '¿Puedo llevar a un acompañante?', 'Sí, puedes llevar a un acompañante. Solo asegúrate de registrarlo también durante el proceso de inscripción.'),
(10, '¿Habrá catering o comida en el evento?', 'Sí, habrá servicios de catering disponibles durante el evento con una variedad de opciones de comida y bebida.'),
(11, '¿Qué debo llevar al evento?', 'Te recomendamos llevar una identificación con foto y tu confirmación de registro. También puedes llevar tarjetas de presentación si estás interesado en hacer networking.'),
(12, '¿Cómo puedo contactar con el organizador del evento?', 'Puedes contactar al organizador del evento a través de nuestro correo electrónico de soporte: soporte@eventos.com o llamando al +123 456 7890.');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `faqs`
--
ALTER TABLE `faqs`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `faqs`
--
ALTER TABLE `faqs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
