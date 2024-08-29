-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 29-08-2024 a las 22:47:32
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
-- Base de datos: `db_revista`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `authenticacion_customuser`
--

CREATE TABLE `authenticacion_customuser` (
  `id` bigint(20) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  `username` varchar(45) NOT NULL,
  `email` varchar(254) NOT NULL,
  `password` varchar(100) NOT NULL,
  `resetToken` varchar(190) DEFAULT NULL,
  `avatar` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `authenticacion_customuser`
--

INSERT INTO `authenticacion_customuser` (`id`, `last_login`, `is_superuser`, `first_name`, `last_name`, `is_staff`, `is_active`, `date_joined`, `username`, `email`, `password`, `resetToken`, `avatar`) VALUES
(1, '2024-08-29 08:45:56.101077', 1, 'Robert', 'Quintero', 1, 1, '2023-09-15 15:39:52.000000', 'rdamianquintero', 'rdamianquintero@uniguajira.edu.co', 'bcrypt_sha256$$2b$12$5ZnLmTE4RuzVBMl5rPzUYeDIPua0/aTYplP9mo/9qKBZFa2J4ts7a', NULL, 'archivos/archivos_useravatar/IMG_20240314_201256.jpg'),
(8, '2023-10-03 17:29:54.906583', 0, 'ivan', 'Gamez Peralta', 0, 1, '2023-10-03 17:09:26.825789', 'ijgamez', 'ijgamez@uniguajira.edu.co', 'bcrypt_sha256$$2b$12$NOf1S9p524Ry6mMOW0JsqeYYC2WRztFdOHtdG4wvCd1fvLm8DIyqG', NULL, 'archivos/archivos_useravatar/logo_uniguajira_2.jpg'),
(40, '2023-10-11 10:20:48.619023', 0, 'Elifeleth', 'Soto Cortés', 0, 1, '2023-10-11 10:07:43.526520', 'elisoto', 'elisoto@uniguajira.edu.co', 'bcrypt_sha256$$2b$12$VFetQALbpd09bWDaiS5aJubVJ1ktWi2IhAqzGXQ4SteBL4gZrMt1u', NULL, 'archivos/archivos_useravatar/logo_uniguajira_2_wSh5wX2.jpg'),
(41, '2023-10-11 10:21:47.861403', 0, 'Jhon Carlos', 'Salon Barros', 0, 1, '2023-10-11 10:08:47.816069', 'jsalonb', 'jsalonb@uniguajira.edu.co', 'bcrypt_sha256$$2b$12$.xOHVDstEM6wRTbdQtI1De/Bh7NYsde6fDD7y2IuEWQvCwOJ70TSS', NULL, 'archivos/archivos_useravatar/logo_uniguajira_2_UgsK3br.jpg'),
(42, '2023-10-11 10:22:32.991801', 0, 'David', 'Fernández Pérez', 0, 1, '2023-10-11 10:09:35.275738', 'dfernandez', 'dfernandez@uniguajira.edu.co', 'bcrypt_sha256$$2b$12$nT/UAWONXVpGdowR9J6Y2.JCzhZHrgz4VqCpBXkZr5GLSd6rem2zW', NULL, 'archivos/archivos_useravatar/logo_uniguajira_2_FRXH2vo.jpg'),
(43, '2023-10-11 10:24:21.062985', 0, 'Orlis', 'Amaya Mejia', 0, 1, '2023-10-11 10:10:09.000000', 'orlisjamaya', 'orlisjamaya@uniguajira.edu.co', 'bcrypt_sha256$$2b$12$Jw.1sgrgJrHeoHovYbNtgul/YzSvcFv93U5B0rA/iS62cLTX9ydIW', NULL, 'archivos/archivos_useravatar/logo_uniguajira_2_oRkVNeN.jpg'),
(44, '2023-10-11 10:40:42.292765', 0, 'Marisol', 'Santos Acevedo', 0, 1, '2023-10-11 10:13:54.433138', 'msantosa', 'msantosa@uniguajira.edu.co', 'bcrypt_sha256$$2b$12$VFKPfcmMYI17mNoHXSWrae7X3y8ud1JKKdJjMpW5jWHHcTMEjfF6G', NULL, 'archivos/archivos_useravatar/logo_uniguajira_2_3ghbniw.jpg'),
(45, '2023-10-11 10:19:39.102035', 0, 'Leanis Mireya', 'Pitre Ruiz', 0, 1, '2023-10-11 10:18:14.000000', 'lpitre', 'lpitre@uniguajira.edu.co', 'bcrypt_sha256$$2b$12$tAvMM7h018sP.hmv0I9.4.5qnmAezmMEOLZE7zq87gZVkI0Pc6CHa', NULL, 'archivos/archivos_useravatar/logo_uniguajira_2_xVJ1K2l.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `authenticacion_customuser_groups`
--

CREATE TABLE `authenticacion_customuser_groups` (
  `id` bigint(20) NOT NULL,
  `customuser_id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `authenticacion_customuser_user_permissions`
--

CREATE TABLE `authenticacion_customuser_user_permissions` (
  `id` bigint(20) NOT NULL,
  `customuser_id` bigint(20) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `authenticacion_documenttype`
--

CREATE TABLE `authenticacion_documenttype` (
  `id` bigint(20) NOT NULL,
  `createdAt` date NOT NULL,
  `updateAt` date DEFAULT NULL,
  `name` varchar(100) NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `authenticacion_documenttype`
--

INSERT INTO `authenticacion_documenttype` (`id`, `createdAt`, `updateAt`, `name`, `status`) VALUES
(1, '2023-09-15', '2023-09-15', 'Cedula de ciudadanía', 1),
(2, '2023-09-15', '2023-09-15', 'Cedula de extranjería', 1),
(3, '2023-09-16', '2023-09-16', 'Pasaporte', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `authenticacion_formacion`
--

CREATE TABLE `authenticacion_formacion` (
  `id` int(11) NOT NULL,
  `nombre` varchar(190) NOT NULL,
  `fecha_grado` date DEFAULT NULL,
  `cert_grado` varchar(256) NOT NULL,
  `nombre_institucion` varchar(190) NOT NULL,
  `nivel_formacion_id` tinyint(4) NOT NULL,
  `autor_id` bigint(20) NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `authenticacion_formacion`
--

INSERT INTO `authenticacion_formacion` (`id`, `nombre`, `fecha_grado`, `cert_grado`, `nombre_institucion`, `nivel_formacion_id`, `autor_id`, `status`) VALUES
(1, 'Ingeniero de sistemas', NULL, 'archivos/archivos_user_formacion/NARRATIVAS_DE_LA_CONDUCTA_SUICIDA_rcEo2Bv.pdf', 'Universidad de La Guajiraa', 1, 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `authenticacion_gender`
--

CREATE TABLE `authenticacion_gender` (
  `id` bigint(20) NOT NULL,
  `createdAt` date NOT NULL,
  `updateAt` date DEFAULT NULL,
  `name` varchar(100) NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `authenticacion_gender`
--

INSERT INTO `authenticacion_gender` (`id`, `createdAt`, `updateAt`, `name`, `status`) VALUES
(1, '2023-09-15', '2023-09-15', 'Femenino', 1),
(2, '2023-09-15', '2023-09-15', 'Masculino', 1),
(3, '2023-09-15', '2023-09-15', 'Otro...', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `authenticacion_nivelformacion`
--

CREATE TABLE `authenticacion_nivelformacion` (
  `id` int(11) NOT NULL,
  `nombre` varchar(190) NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `authenticacion_nivelformacion`
--

INSERT INTO `authenticacion_nivelformacion` (`id`, `nombre`, `status`) VALUES
(1, 'Profesional', 1),
(2, 'Especialista', 1),
(3, 'Magister', 1),
(4, 'Doctor', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `authenticacion_person`
--

CREATE TABLE `authenticacion_person` (
  `id` bigint(20) NOT NULL,
  `createdAt` date NOT NULL,
  `updateAt` date DEFAULT NULL,
  `apellidos` varchar(150) DEFAULT NULL,
  `nombres` varchar(150) DEFAULT NULL,
  `identificacion` varchar(190) DEFAULT NULL,
  `pais` varchar(30) DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `orcid` varchar(190) DEFAULT NULL,
  `url_orcid` varchar(190) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `authenticacion_person`
--

INSERT INTO `authenticacion_person` (`id`, `createdAt`, `updateAt`, `apellidos`, `nombres`, `identificacion`, `pais`, `status`, `user_id`, `orcid`, `url_orcid`) VALUES
(9, '2023-10-05', '2024-07-04', 'Quintero Laverde', 'Robert Damián', '1006570460', 'Colombia', 1, 1, 'rastor', 'rastor.com'),
(14, '2023-10-11', '2023-10-11', 'Santos Acevedo', 'Marisol', '63479514', '', 1, 44, '', ''),
(15, '2023-10-11', '2023-10-11', 'Pitre Ruiz', 'Leanis Mireya', '40934523', '', 1, 45, '', ''),
(16, '2023-10-11', '2023-10-11', 'Soto Cortés', 'Elifelleth', '40927496', '', 1, 40, '', ''),
(17, '2023-10-11', '2023-10-11', 'Salon Barros', 'Jhon Carlos', '1123998440', '', 1, 41, '', ''),
(18, '2023-10-11', '2023-10-11', 'Fernández Pérez', 'David', '84033988', '', 1, 42, '', ''),
(19, '2023-10-11', '2023-10-11', 'Amaya Mejia', 'Orlis', '1118862560', '', 1, 43, '', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `authenticacion_resource`
--

CREATE TABLE `authenticacion_resource` (
  `id` bigint(20) NOT NULL,
  `createdAt` date NOT NULL,
  `updateAt` date DEFAULT NULL,
  `path` varchar(190) NOT NULL,
  `id_padre` int(11) NOT NULL,
  `method` varchar(190) NOT NULL,
  `icono` varchar(190) NOT NULL,
  `link` varchar(190) NOT NULL,
  `titulo` varchar(100) NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `authenticacion_resource`
--

INSERT INTO `authenticacion_resource` (`id`, `createdAt`, `updateAt`, `path`, `id_padre`, `method`, `icono`, `link`, `titulo`, `status`) VALUES
(1, '2023-07-22', '2023-07-22', 'Solicitudes', 0, 'post', 'pi pi-file', '/solicitudes', 'Solicitudes', 1),
(2, '2023-07-22', '2023-09-15', 'solicitudes/generar', 1, 'post', 'pi', 'solicitudes/generar/', 'Generar', 1),
(3, '2023-07-22', '2023-09-15', 'solicitudes/generar/ver', 2, 'post', 'pi', 'solicitudes/generar/ver', 'Ver', 1),
(4, '2023-07-22', '2023-09-15', 'solicitudes/generar/crear', 2, 'post', 'pi', 'solicitudes/generar/crear', 'Crear', 1),
(5, '2023-07-22', '2023-09-15', 'solicitudes/generar/editar', 2, 'post', 'pi', 'solicitudes/generar/editar', 'Editar', 1),
(6, '2023-07-22', '2023-09-15', 'solicitudes/generar/eliminar', 2, 'post', 'pi', 'solicitudes/generar/eliminar', 'Eliminar', 1),
(7, '2023-07-22', '2023-09-15', 'solicitudes/pasos', 1, 'post', 'pi', 'solicitudes/pasos/', 'Pasos', 1),
(8, '2023-07-22', '2023-09-15', 'solicitudes/pasos/ver', 7, 'post', 'pi', 'solicitudes/pasos/ver', 'Ver', 1),
(9, '2023-07-22', '2023-09-15', 'solicitudes/pasos/crear', 7, 'post', 'pi', 'solicitudes/pasos/crear', 'Crear', 1),
(10, '2023-07-22', '2023-09-15', 'solicitudes/pasos/editar', 7, 'post', 'pi', 'solicitudes/pasos/editar', 'Editar', 1),
(11, '2023-07-22', '2023-09-15', 'solicitudes/pasos/eliminar', 7, 'post', 'pi', 'solicitudes/pasos/eliminar', 'Eliminar', 1),
(12, '2023-07-22', '2023-09-15', 'solicitudes/seguimiento/', 1, 'post', 'pi', 'solicitudes/seguimiento/', 'Seguimiento', 1),
(13, '2023-07-22', '2024-08-10', 'solicitudes/seguimiento/ver', 12, 'post', 'pi', 'solicitudes/seguimiento/ver', 'Control de seguimientos', 1),
(14, '2023-07-22', '2023-09-15', 'solicitudes/seguimiento/crear', 12, 'post', 'pi', 'solicitudes/seguimiento/crear', 'Crear', 1),
(17, '2023-07-22', '2023-09-15', 'solicitudes/evaluar/', 1, 'post', 'pi', 'solicitudes/evaluar/ver/', 'Evaluar', 1),
(22, '2023-07-22', '2023-07-22', 'administrador/', 0, 'post', 'pi pi-star', 'administrador/', 'Administrador', 1),
(23, '2023-07-22', '2023-09-15', 'administrador/roles/ver', 22, 'post', 'pi', 'administrador/roles/ver', 'Roles', 1),
(24, '2023-07-22', '2023-09-15', 'administrador/recursos/crear', 22, 'post', 'pi', 'administrador/recursos/ver/', 'Recursos', 1),
(25, '2023-07-22', '2023-09-15', 'administrador/user_roles/ver', 22, 'post', 'pi', 'administrador/user_roles/ver', 'Asignar rol', 1),
(26, '2023-09-15', '2023-09-15', '/resourcesr/', 22, 'post', 'pi pi-star', '/administrador/recursos_roles/crear/', 'Asignar recursos', 1),
(27, '2023-09-15', '2023-09-21', '/solicitud/seguimiento/seguimientos/', 12, 'post', 'pi pi-file', '/solicitudes/seguimiento/mis_seguimientos', 'Mis seguimientos', 1),
(28, '2023-09-15', '2023-09-15', '/solicitud/seguimiento/seguimientos/', 12, 'post', 'pi pi-file', '/solicitudes/seguimiento/solicitudes_asignadas/', 'Solicitudes asignadas', 1),
(29, '2023-09-15', '2023-09-15', '/solicitud/solicitud/solicitudes/', 2, 'post', 'pi pi-file', '/solicitudes/generar/mis_solicitudes', 'Mis solicitudes', 1),
(30, '2023-09-15', '2023-09-15', '/solicitud/estado/estado_seguimiento/', 1, 'post', 'pi pi-file', '/solicitudes/estados/', 'Estados', 1),
(31, '2023-09-15', '2023-09-15', '/solicitud/estado/estado_seguimiento/', 30, 'post', 'pi pi-file', '/solicitudes/estados/ver', 'Ver', 1),
(32, '2023-09-15', '2023-09-15', '/solicitud/estado/estado_seguimiento/', 30, 'post', 'pi pi-file', '/solicitudes/estados/crear', 'Crear', 1),
(33, '2023-09-15', '2023-09-15', '/solicitud/estado/estado_seguimiento/', 30, 'post', 'pi pi-file', '/solicitudes/estados/editar/', 'Editar', 1),
(34, '2023-09-15', '2023-09-21', '/solicitud/estado/estado_seguimiento/', 30, 'post', 'pi pi-file', 'solicitudes/estados/eliminar', 'Eliminar', 1),
(35, '2023-09-16', '2023-09-16', 'ubnk', 4, 'ub', 'b', 'oj', 'u', 0),
(36, '2023-09-16', '2023-09-16', 'kjb', 2, 'b', 'bj', 'bbl', 'k b', 0),
(37, '2023-09-16', '2023-09-16', '/documents/', 22, 'post', 'pi pi-star', '/administrador/tipo_documento/', 'Tipos de documento', 1),
(38, '2023-09-16', '2023-09-16', '/documents/', 37, 'post', 'pi pi-star', '/administrador/tipo_documento/ver/', 'Ver', 1),
(39, '2023-09-16', '2023-09-16', '/documents/', 37, 'post', 'pi pi-star', '/administrador/tipo_documento/crear/', 'Crear', 1),
(40, '2023-09-16', '2023-09-16', '/documents/', 37, 'post', 'pi pi-star', '/administrador/tipo_documento/editar/', 'Editar', 1),
(41, '2023-09-16', '2023-09-16', '/documents/', 37, 'post', 'pi pi-star', '/administrador/tipo_documento/eliminar/', 'Eliminar', 1),
(42, '2023-09-16', '2023-09-16', '/genders/', 22, 'post', 'pi pi-star', '/administrador/generos/', 'Tipos de generos', 1),
(43, '2023-09-16', '2023-09-16', '/genders/', 42, 'post', 'pi pi-star', '/administrador/generos/ver/', 'Ver', 1),
(44, '2023-09-16', '2023-09-16', '/genders/', 42, 'post', 'pi pi-star', '/administrador/generos/crear/', 'Crear', 1),
(45, '2023-09-16', '2023-09-16', '/genders/', 42, 'post', 'pi pi-star', '/administrador/generos/editar/', 'Editar', 1),
(46, '2023-09-16', '2023-09-16', '/genders/', 42, 'post', 'pi pi-star', '/administrador/generos/eliminar/', 'Eliminar', 1),
(47, '2023-09-18', '2023-09-18', '/api/user/', 0, 'post', 'pi pi-user', '/usuarios/', 'Usuarios', 1),
(48, '2023-09-18', '2023-09-18', '/api/user/', 47, 'post', 'pi pi-user', '/usuarios/personas/ver', 'Personas', 1),
(49, '2023-09-18', '2023-09-18', '/solicitud/nivel/nivel_formacion/', 47, 'post', 'pi pi-user', '/usuarios/nivel_formacion/', 'Nivel de formacion', 1),
(50, '2023-09-18', '2023-09-18', '/solicitud/nivel/nivel_formacion/', 49, 'post', 'pi pi-user', '/usuarios/nivel_formacion/ver/', 'Ver', 1),
(51, '2023-09-18', '2023-09-18', '/solicitud/nivel/nivel_formacion/', 49, 'post', 'pi pi-user', '/usuarios/nivel_formacion/crear/', 'Crear', 1),
(52, '2023-09-18', '2023-09-18', '/solicitud/nivel/nivel_formacion/', 49, 'post', 'pi pi-user', '/usuarios/nivel_formacion/editar/', 'Editar', 1),
(53, '2023-09-18', '2023-09-18', '/solicitud/nivel/nivel_formacion/', 49, 'post', 'pi pi-user', '/usuarios/nivel_formacion/eliminar/', 'Eliminar', 1),
(54, '2023-10-06', '2023-10-06', '/solicitud/revista/revista/', 1, 'post', 'pi pi-book', '/solicitudes/revistas/', 'Revistas', 1),
(55, '2023-10-06', '2023-10-06', '/solicitud/revista/revista/', 54, 'post', 'pi pi-book', '/solicitudes/revistas/ver/', 'Ver', 1),
(56, '2023-10-06', '2023-10-06', '/solicitud/revista/revista/', 54, 'post', 'pi pi-book', '/solicitudes/revistas/crear/', 'Crear', 1),
(57, '2023-10-06', '2023-10-06', '/solicitud/revista/revista/', 54, 'post', 'pi pi-book', '/solicitudes/revistas/editar/', 'Editar', 1),
(58, '2023-10-06', '2023-10-06', '/solicitud/revista/revista/', 54, 'post', 'pi pi-book', '/solicitudes/revistas/eliminar/', 'Eliminar', 1),
(59, '2024-01-10', '2024-01-10', '/oscar', 0, 'post', 'pi pi-star', '/oscar', 'Oscar2', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `authenticacion_resourcerol`
--

CREATE TABLE `authenticacion_resourcerol` (
  `id` bigint(20) NOT NULL,
  `createdAt` date NOT NULL,
  `updateAt` date DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `resource_id` bigint(20) NOT NULL,
  `role_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `authenticacion_resourcerol`
--

INSERT INTO `authenticacion_resourcerol` (`id`, `createdAt`, `updateAt`, `status`, `resource_id`, `role_id`) VALUES
(1, '2023-09-15', '2023-09-15', 1, 1, 1),
(2, '2023-09-15', '2023-09-15', 1, 2, 1),
(3, '2023-09-15', '2023-09-15', 1, 3, 1),
(5, '2023-09-15', '2023-09-15', 1, 4, 1),
(6, '2023-09-15', '2023-09-15', 1, 5, 1),
(7, '2023-09-15', '2023-09-15', 1, 6, 1),
(8, '2023-09-15', '2023-09-15', 1, 7, 1),
(9, '2023-09-15', '2023-09-15', 1, 8, 1),
(10, '2023-09-15', '2023-09-15', 1, 9, 1),
(11, '2023-09-15', '2023-09-15', 1, 10, 1),
(12, '2023-09-15', '2023-09-15', 1, 11, 1),
(13, '2023-09-15', '2023-09-15', 1, 12, 1),
(14, '2023-09-15', '2023-09-15', 1, 13, 1),
(15, '2023-09-15', '2023-09-15', 1, 14, 1),
(18, '2023-09-15', '2023-09-15', 1, 17, 1),
(19, '2023-09-15', '2023-09-15', 1, 22, 1),
(20, '2023-09-15', '2023-09-15', 1, 23, 1),
(21, '2023-09-15', '2023-09-15', 1, 24, 1),
(22, '2023-09-15', '2023-09-15', 1, 25, 1),
(23, '2023-09-15', '2023-09-15', 1, 26, 1),
(24, '2023-09-15', '2023-09-15', 1, 27, 1),
(25, '2023-09-15', '2023-09-15', 1, 28, 1),
(26, '2023-09-15', '2023-09-15', 1, 29, 1),
(27, '2023-09-15', '2023-09-15', 1, 30, 1),
(28, '2023-09-15', '2023-09-15', 1, 31, 1),
(29, '2023-09-15', '2023-09-15', 1, 32, 1),
(30, '2023-09-15', '2023-09-15', 1, 33, 1),
(31, '2023-09-15', '2023-09-15', 1, 34, 1),
(32, '2023-09-16', '2023-09-16', 1, 37, 1),
(33, '2023-09-16', '2023-09-16', 1, 38, 1),
(34, '2023-09-16', '2023-09-16', 1, 39, 1),
(35, '2023-09-16', '2023-09-16', 1, 40, 1),
(36, '2023-09-16', '2023-09-16', 1, 41, 1),
(37, '2023-09-16', '2023-09-16', 1, 42, 1),
(38, '2023-09-16', '2023-09-16', 1, 43, 1),
(39, '2023-09-16', '2023-09-16', 1, 44, 1),
(40, '2023-09-16', '2023-09-16', 1, 45, 1),
(41, '2023-09-16', '2023-09-16', 1, 46, 1),
(42, '2023-09-18', '2023-09-18', 1, 1, 7),
(43, '2023-09-18', '2023-09-18', 1, 2, 7),
(44, '2023-09-18', '2023-09-18', 1, 4, 7),
(45, '2023-09-18', '2023-09-18', 1, 12, 7),
(46, '2023-09-18', '2023-09-18', 1, 29, 7),
(47, '2023-09-18', '2023-09-18', 1, 27, 7),
(48, '2023-09-18', '2023-09-18', 1, 1, 6),
(49, '2023-09-18', '2023-09-18', 1, 17, 6),
(50, '2023-09-18', '2023-09-18', 1, 47, 1),
(51, '2023-09-18', '2023-09-18', 1, 48, 1),
(52, '2023-09-18', '2023-09-18', 1, 49, 1),
(53, '2023-09-18', '2023-09-18', 1, 50, 1),
(54, '2023-09-18', '2023-09-18', 1, 51, 1),
(55, '2023-09-18', '2023-09-18', 1, 52, 1),
(56, '2023-09-18', '2023-09-18', 1, 53, 1),
(57, '2023-09-25', '2023-09-25', 1, 5, 1),
(58, '2023-09-25', '2023-09-25', 1, 5, 1),
(59, '2023-09-25', '2023-09-25', 1, 1, 5),
(60, '2023-09-25', '2023-09-25', 1, 1, 4),
(61, '2023-09-25', '2023-09-25', 1, 1, 3),
(62, '2023-09-25', '2023-09-25', 1, 1, 2),
(63, '2023-10-06', '2023-10-06', 1, 54, 1),
(64, '2023-10-06', '2023-10-06', 1, 55, 1),
(65, '2023-10-06', '2023-10-06', 1, 56, 1),
(66, '2023-10-06', '2023-10-06', 1, 57, 1),
(67, '2023-10-06', '2023-10-06', 1, 58, 1),
(68, '2023-10-11', '2023-10-11', 1, 2, 2),
(69, '2023-10-11', '2023-10-11', 1, 3, 2),
(70, '2023-10-11', '2023-10-11', 1, 6, 2),
(71, '2023-10-11', '2023-10-11', 1, 7, 2),
(72, '2023-10-11', '2023-10-11', 1, 8, 2),
(73, '2023-10-11', '2023-10-11', 1, 9, 2),
(74, '2023-10-11', '2023-10-11', 1, 10, 2),
(75, '2023-10-11', '2023-10-11', 1, 11, 2),
(76, '2023-10-11', '2023-10-11', 1, 12, 2),
(77, '2023-10-11', '2023-10-11', 1, 13, 2),
(78, '2023-10-11', '2023-10-11', 1, 14, 2),
(81, '2023-10-11', '2023-10-11', 1, 47, 2),
(82, '2023-10-11', '2023-10-11', 1, 48, 2),
(83, '2023-10-11', '2023-10-11', 1, 2, 3),
(84, '2023-10-11', '2023-10-11', 1, 3, 3),
(85, '2023-10-11', '2023-10-11', 1, 8, 3),
(86, '2023-10-11', '2023-10-11', 1, 7, 3),
(87, '2023-10-11', '2023-10-11', 1, 12, 3),
(88, '2023-10-11', '2023-10-11', 1, 13, 3),
(89, '2023-10-11', '2023-10-11', 1, 28, 3),
(90, '2023-10-11', '2023-10-11', 1, 47, 3),
(91, '2023-10-11', '2023-10-11', 1, 48, 3),
(92, '2023-10-11', '2023-10-11', 1, 12, 6),
(93, '2023-10-11', '2023-10-11', 1, 17, 6),
(94, '2023-10-11', '2023-10-11', 1, 12, 4),
(95, '2023-10-11', '2023-10-11', 1, 28, 4),
(96, '2023-10-11', '2023-10-11', 1, 17, 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `authenticacion_rol`
--

CREATE TABLE `authenticacion_rol` (
  `id` bigint(20) NOT NULL,
  `createdAt` date NOT NULL,
  `updateAt` date DEFAULT NULL,
  `name` varchar(190) NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `authenticacion_rol`
--

INSERT INTO `authenticacion_rol` (`id`, `createdAt`, `updateAt`, `name`, `status`) VALUES
(1, '2023-09-15', '2023-09-15', 'Administrador', 1),
(2, '2023-09-15', '2023-09-15', 'Editor jefe', 1),
(3, '2023-09-15', '2023-09-15', 'Editor', 1),
(4, '2023-09-15', '2023-09-15', 'Editor invitado', 1),
(5, '2023-09-15', '2023-10-11', 'Asistente editorial', 0),
(6, '2023-09-15', '2023-09-15', 'Evaluador', 1),
(7, '2023-09-15', '2023-09-15', 'Autor', 1),
(8, '2023-09-16', '2023-09-16', 'prueba', 0),
(9, '2023-09-19', '2023-09-19', 'Pruebaa', 0),
(10, '2024-01-10', '2024-08-11', 'Oscar', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `authenticacion_userrol`
--

CREATE TABLE `authenticacion_userrol` (
  `id` bigint(20) NOT NULL,
  `createdAt` date NOT NULL,
  `updateAt` date DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `rolesId_id` bigint(20) NOT NULL,
  `userId_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `authenticacion_userrol`
--

INSERT INTO `authenticacion_userrol` (`id`, `createdAt`, `updateAt`, `status`, `rolesId_id`, `userId_id`) VALUES
(1, '2023-09-15', '2023-09-19', 1, 1, 1),
(21, '2023-10-03', '2023-10-03', 1, 7, 8),
(22, '2023-10-03', '2023-10-03', 1, 6, 8),
(23, '2023-10-11', '2024-01-10', 0, 7, 1),
(26, '2023-10-11', '2023-10-11', 1, 7, 40),
(27, '2023-10-11', '2023-10-11', 1, 7, 41),
(28, '2023-10-11', '2023-10-11', 1, 7, 42),
(29, '2023-10-11', '2023-10-11', 1, 7, 43),
(30, '2023-10-11', '2023-10-11', 1, 7, 44),
(31, '2023-10-11', '2023-10-11', 1, 7, 45),
(32, '2023-10-11', '2023-10-11', 1, 3, 44),
(33, '2023-10-11', '2023-10-11', 1, 2, 45),
(34, '2023-10-11', '2023-10-11', 1, 3, 40),
(35, '2023-10-11', '2023-10-11', 1, 3, 41),
(36, '2023-10-11', '2023-10-11', 1, 1, 42),
(37, '2023-10-11', '2023-10-11', 1, 3, 42),
(38, '2023-10-11', '2023-10-11', 1, 6, 42),
(39, '2023-10-11', '2023-10-11', 1, 1, 43),
(40, '2023-10-11', '2023-10-11', 1, 3, 43),
(41, '2023-10-11', '2023-10-11', 1, 6, 43),
(42, '2023-10-11', '2023-10-11', 1, 6, 44),
(43, '2023-10-11', '2023-10-11', 1, 6, 45),
(44, '2023-10-11', '2023-10-11', 1, 6, 40),
(45, '2023-10-11', '2023-10-11', 1, 6, 41),
(46, '2023-10-11', '2023-10-11', 1, 3, 45),
(47, '2024-01-10', '2024-01-10', 1, 3, 1),
(48, '2024-01-10', '2024-01-10', 1, 4, 1),
(49, '2024-08-15', '2024-08-15', 0, 1, 40);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `authtoken_token`
--

CREATE TABLE `authtoken_token` (
  `key` varchar(40) NOT NULL,
  `created` datetime(6) NOT NULL,
  `user_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add content type', 4, 'add_contenttype'),
(14, 'Can change content type', 4, 'change_contenttype'),
(15, 'Can delete content type', 4, 'delete_contenttype'),
(16, 'Can view content type', 4, 'view_contenttype'),
(17, 'Can add session', 5, 'add_session'),
(18, 'Can change session', 5, 'change_session'),
(19, 'Can delete session', 5, 'delete_session'),
(20, 'Can view session', 5, 'view_session'),
(21, 'Can add Token', 6, 'add_token'),
(22, 'Can change Token', 6, 'change_token'),
(23, 'Can delete Token', 6, 'delete_token'),
(24, 'Can view Token', 6, 'view_token'),
(25, 'Can add token', 7, 'add_tokenproxy'),
(26, 'Can change token', 7, 'change_tokenproxy'),
(27, 'Can delete token', 7, 'delete_tokenproxy'),
(28, 'Can view token', 7, 'view_tokenproxy'),
(29, 'Can add Password Reset Token', 8, 'add_resetpasswordtoken'),
(30, 'Can change Password Reset Token', 8, 'change_resetpasswordtoken'),
(31, 'Can delete Password Reset Token', 8, 'delete_resetpasswordtoken'),
(32, 'Can view Password Reset Token', 8, 'view_resetpasswordtoken'),
(33, 'Can add user', 9, 'add_customuser'),
(34, 'Can change user', 9, 'change_customuser'),
(35, 'Can delete user', 9, 'delete_customuser'),
(36, 'Can view user', 9, 'view_customuser'),
(37, 'Can add Document_types', 10, 'add_document_type'),
(38, 'Can change Document_types', 10, 'change_document_type'),
(39, 'Can delete Document_types', 10, 'delete_document_type'),
(40, 'Can view Document_types', 10, 'view_document_type'),
(41, 'Can add Genders', 11, 'add_gender'),
(42, 'Can change Genders', 11, 'change_gender'),
(43, 'Can delete Genders', 11, 'delete_gender'),
(44, 'Can view Genders', 11, 'view_gender'),
(45, 'Can add Resources', 12, 'add_resource'),
(46, 'Can change Resources', 12, 'change_resource'),
(47, 'Can delete Resources', 12, 'delete_resource'),
(48, 'Can view Resources', 12, 'view_resource'),
(49, 'Can add Resources_rols', 13, 'add_resource_rol'),
(50, 'Can change Resources_rols', 13, 'change_resource_rol'),
(51, 'Can delete Resources_rols', 13, 'delete_resource_rol'),
(52, 'Can view Resources_rols', 13, 'view_resource_rol'),
(53, 'Can add Rols', 14, 'add_rol'),
(54, 'Can change Rols', 14, 'change_rol'),
(55, 'Can delete Rols', 14, 'delete_rol'),
(56, 'Can view Rols', 14, 'view_rol'),
(57, 'Can add User_rols', 15, 'add_user_rol'),
(58, 'Can change User_rols', 15, 'change_user_rol'),
(59, 'Can delete User_rols', 15, 'delete_user_rol'),
(60, 'Can view User_rols', 15, 'view_user_rol'),
(61, 'Can add Persons', 16, 'add_person'),
(62, 'Can change Persons', 16, 'change_person'),
(63, 'Can delete Persons', 16, 'delete_person'),
(64, 'Can view Persons', 16, 'view_person'),
(65, 'Can add Anexo', 17, 'add_anexo'),
(66, 'Can change Anexo', 17, 'change_anexo'),
(67, 'Can delete Anexo', 17, 'delete_anexo'),
(68, 'Can view Anexo', 17, 'view_anexo'),
(69, 'Can add Pqrs', 18, 'add_pqrs'),
(70, 'Can change Pqrs', 18, 'change_pqrs'),
(71, 'Can delete Pqrs', 18, 'delete_pqrs'),
(72, 'Can view Pqrs', 18, 'view_pqrs'),
(73, 'Can add tipo pqrs', 19, 'add_tipopqrs'),
(74, 'Can change tipo pqrs', 19, 'change_tipopqrs'),
(75, 'Can delete tipo pqrs', 19, 'delete_tipopqrs'),
(76, 'Can view tipo pqrs', 19, 'view_tipopqrs'),
(77, 'Can add Respuesta', 20, 'add_respuesta'),
(78, 'Can change Respuesta', 20, 'change_respuesta'),
(79, 'Can delete Respuesta', 20, 'delete_respuesta'),
(80, 'Can view Respuesta', 20, 'view_respuesta'),
(81, 'Can add Asignacion', 21, 'add_asignacion'),
(82, 'Can change Asignacion', 21, 'change_asignacion'),
(83, 'Can delete Asignacion', 21, 'delete_asignacion'),
(84, 'Can view Asignacion', 21, 'view_asignacion'),
(85, 'Can add contenido solicitud', 22, 'add_contenidosolicitud'),
(86, 'Can change contenido solicitud', 22, 'change_contenidosolicitud'),
(87, 'Can delete contenido solicitud', 22, 'delete_contenidosolicitud'),
(88, 'Can view contenido solicitud', 22, 'view_contenidosolicitud'),
(89, 'Can add estado seguimiento', 23, 'add_estadoseguimiento'),
(90, 'Can change estado seguimiento', 23, 'change_estadoseguimiento'),
(91, 'Can delete estado seguimiento', 23, 'delete_estadoseguimiento'),
(92, 'Can view estado seguimiento', 23, 'view_estadoseguimiento'),
(93, 'Can add nivel formacion', 24, 'add_nivelformacion'),
(94, 'Can change nivel formacion', 24, 'change_nivelformacion'),
(95, 'Can delete nivel formacion', 24, 'delete_nivelformacion'),
(96, 'Can view nivel formacion', 24, 'view_nivelformacion'),
(97, 'Can add PasosSeguimiento', 25, 'add_pasosseguimiento'),
(98, 'Can change PasosSeguimiento', 25, 'change_pasosseguimiento'),
(99, 'Can delete PasosSeguimiento', 25, 'delete_pasosseguimiento'),
(100, 'Can view PasosSeguimiento', 25, 'view_pasosseguimiento'),
(101, 'Can add rol autor', 26, 'add_rolautor'),
(102, 'Can change rol autor', 26, 'change_rolautor'),
(103, 'Can delete rol autor', 26, 'delete_rolautor'),
(104, 'Can view rol autor', 26, 'view_rolautor'),
(105, 'Can add usuario x formacion', 27, 'add_usuarioxformacion'),
(106, 'Can change usuario x formacion', 27, 'change_usuarioxformacion'),
(107, 'Can delete usuario x formacion', 27, 'delete_usuarioxformacion'),
(108, 'Can view usuario x formacion', 27, 'view_usuarioxformacion'),
(109, 'Can add Solicitud', 28, 'add_solicitud'),
(110, 'Can change Solicitud', 28, 'change_solicitud'),
(111, 'Can delete Solicitud', 28, 'delete_solicitud'),
(112, 'Can view Solicitud', 28, 'view_solicitud'),
(113, 'Can add seguimiento', 29, 'add_seguimiento'),
(114, 'Can change seguimiento', 29, 'change_seguimiento'),
(115, 'Can delete seguimiento', 29, 'delete_seguimiento'),
(116, 'Can view seguimiento', 29, 'view_seguimiento'),
(117, 'Can add autor x solicitud', 30, 'add_autorxsolicitud'),
(118, 'Can change autor x solicitud', 30, 'change_autorxsolicitud'),
(119, 'Can delete autor x solicitud', 30, 'delete_autorxsolicitud'),
(120, 'Can view autor x solicitud', 30, 'view_autorxsolicitud'),
(121, 'Can add anexos', 31, 'add_anexos'),
(122, 'Can change anexos', 31, 'change_anexos'),
(123, 'Can delete anexos', 31, 'delete_anexos'),
(124, 'Can view anexos', 31, 'view_anexos'),
(125, 'Can add Document Type', 10, 'add_documenttype'),
(126, 'Can change Document Type', 10, 'change_documenttype'),
(127, 'Can delete Document Type', 10, 'delete_documenttype'),
(128, 'Can view Document Type', 10, 'view_documenttype'),
(129, 'Can add Resources_rols', 13, 'add_resourcerol'),
(130, 'Can change Resources_rols', 13, 'change_resourcerol'),
(131, 'Can delete Resources_rols', 13, 'delete_resourcerol'),
(132, 'Can view Resources_rols', 13, 'view_resourcerol'),
(133, 'Can add User_rols', 15, 'add_userrol'),
(134, 'Can change User_rols', 15, 'change_userrol'),
(135, 'Can delete User_rols', 15, 'delete_userrol'),
(136, 'Can view User_rols', 15, 'view_userrol'),
(137, 'Can add nivel formacion', 32, 'add_nivelformacion'),
(138, 'Can change nivel formacion', 32, 'change_nivelformacion'),
(139, 'Can delete nivel formacion', 32, 'delete_nivelformacion'),
(140, 'Can view nivel formacion', 32, 'view_nivelformacion'),
(141, 'Can add formacion', 33, 'add_formacion'),
(142, 'Can change formacion', 33, 'change_formacion'),
(143, 'Can delete formacion', 33, 'delete_formacion'),
(144, 'Can view formacion', 33, 'view_formacion'),
(145, 'Can add revista', 34, 'add_revista'),
(146, 'Can change revista', 34, 'change_revista'),
(147, 'Can delete revista', 34, 'delete_revista'),
(148, 'Can view revista', 34, 'view_revista');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2023-09-15 15:56:34.354492', '1', 'Administrador', 1, '[{\"added\": {}}]', 14, 1),
(2, '2023-09-15 15:56:40.706263', '2', 'Editor', 1, '[{\"added\": {}}]', 14, 1),
(3, '2023-09-15 15:56:52.813300', '3', 'Editor invitado', 1, '[{\"added\": {}}]', 14, 1),
(4, '2023-09-15 15:57:11.874549', '2', 'Editor jefe', 2, '[{\"changed\": {\"fields\": [\"Name\"]}}]', 14, 1),
(5, '2023-09-15 15:57:18.842250', '3', 'Editor', 2, '[{\"changed\": {\"fields\": [\"Name\"]}}]', 14, 1),
(6, '2023-09-15 15:57:24.679356', '4', 'Editor invitado', 1, '[{\"added\": {}}]', 14, 1),
(7, '2023-09-15 15:57:33.750401', '5', 'Asistente editorial', 1, '[{\"added\": {}}]', 14, 1),
(8, '2023-09-15 15:57:38.195371', '6', 'Evaluador', 1, '[{\"added\": {}}]', 14, 1),
(9, '2023-09-15 15:57:41.787754', '7', 'Autor', 1, '[{\"added\": {}}]', 14, 1),
(10, '2023-09-15 15:58:13.508885', '1', 'rastor - Administrador', 1, '[{\"added\": {}}]', 15, 1),
(11, '2023-09-15 15:58:35.351948', '1', 'SolicitudesAdministrador', 1, '[{\"added\": {}}]', 13, 1),
(12, '2023-09-15 15:58:44.198705', '2', 'solicitudes/generarAdministrador', 1, '[{\"added\": {}}]', 13, 1),
(13, '2023-09-15 15:58:49.250264', '3', 'solicitudes/generar/verAdministrador', 1, '[{\"added\": {}}]', 13, 1),
(14, '2023-09-15 15:58:54.413577', '4', 'solicitudes/generar/crearAdministrador', 1, '[{\"added\": {}}]', 13, 1),
(15, '2023-09-15 15:59:00.795454', '5', 'solicitudes/generar/crearAdministrador', 1, '[{\"added\": {}}]', 13, 1),
(16, '2023-09-15 15:59:06.008676', '6', 'solicitudes/generar/editarAdministrador', 1, '[{\"added\": {}}]', 13, 1),
(17, '2023-09-15 15:59:11.592175', '7', 'solicitudes/generar/eliminarAdministrador', 1, '[{\"added\": {}}]', 13, 1),
(18, '2023-09-15 15:59:25.933232', '4', 'solicitudes/generar/crearAdministrador', 3, '', 13, 1),
(19, '2023-09-15 15:59:39.291709', '8', 'solicitudes/pasosAdministrador', 1, '[{\"added\": {}}]', 13, 1),
(20, '2023-09-15 15:59:45.580150', '9', 'solicitudes/pasos/verAdministrador', 1, '[{\"added\": {}}]', 13, 1),
(21, '2023-09-15 15:59:50.808985', '10', 'solicitudes/pasos/crearAdministrador', 1, '[{\"added\": {}}]', 13, 1),
(22, '2023-09-15 15:59:58.920786', '11', 'solicitudes/pasos/editarAdministrador', 1, '[{\"added\": {}}]', 13, 1),
(23, '2023-09-15 16:00:16.510157', '12', 'solicitudes/pasos/eliminarAdministrador', 1, '[{\"added\": {}}]', 13, 1),
(24, '2023-09-15 16:00:26.997804', '13', 'solicitudes/seguimiento/Administrador', 1, '[{\"added\": {}}]', 13, 1),
(25, '2023-09-15 16:00:33.948399', '14', 'solicitudes/seguimiento/verAdministrador', 1, '[{\"added\": {}}]', 13, 1),
(26, '2023-09-15 16:00:43.508117', '15', 'solicitudes/seguimiento/crearAdministrador', 1, '[{\"added\": {}}]', 13, 1),
(27, '2023-09-15 16:00:49.681783', '16', 'solicitudes/seguimiento/editarAdministrador', 1, '[{\"added\": {}}]', 13, 1),
(28, '2023-09-15 16:00:57.205057', '17', 'solicitudes/seguimiento/eliminarAdministrador', 1, '[{\"added\": {}}]', 13, 1),
(29, '2023-09-15 16:01:03.726164', '18', 'solicitudes/evaluar/Administrador', 1, '[{\"added\": {}}]', 13, 1),
(30, '2023-09-15 16:01:32.240499', '17', 'Evaluar - None', 2, '[{\"changed\": {\"fields\": [\"Link\"]}}]', 12, 1),
(31, '2023-09-15 16:01:44.480943', '21', 'Eliminar - None', 3, '', 12, 1),
(32, '2023-09-15 16:01:44.481856', '20', 'Editar - None', 3, '', 12, 1),
(33, '2023-09-15 16:01:44.481856', '19', 'Crear - None', 3, '', 12, 1),
(34, '2023-09-15 16:01:44.482855', '18', 'Ver - None', 3, '', 12, 1),
(35, '2023-09-15 16:01:58.552081', '19', 'administrador/Administrador', 1, '[{\"added\": {}}]', 13, 1),
(36, '2023-09-15 16:02:05.486613', '20', 'administrador/roles/verAdministrador', 1, '[{\"added\": {}}]', 13, 1),
(37, '2023-09-15 16:02:12.308281', '21', 'administrador/recursos/crearAdministrador', 1, '[{\"added\": {}}]', 13, 1),
(38, '2023-09-15 16:02:18.750379', '22', 'administrador/user_roles/verAdministrador', 1, '[{\"added\": {}}]', 13, 1),
(39, '2023-09-15 16:08:22.782862', '23', '/resourcesr/Administrador', 1, '[{\"added\": {}}]', 13, 1),
(40, '2023-09-15 16:19:22.227977', '2', 'hjlbknñolm', 2, '[{\"changed\": {\"fields\": [\"Status\"]}}]', 28, 1),
(41, '2023-09-15 16:20:56.726026', '2', 'Aprobación para revisión', 2, '[{\"changed\": {\"fields\": [\"Status\"]}}]', 25, 1),
(42, '2023-09-15 16:28:10.793236', '24', 'Recursos - None', 2, '[{\"changed\": {\"fields\": [\"Link\"]}}]', 12, 1),
(43, '2023-09-15 16:30:34.306589', '24', '/solicitud/seguimiento/seguimientos/Administrador', 1, '[{\"added\": {}}]', 13, 1),
(44, '2023-09-15 16:30:40.425200', '25', '/solicitud/seguimiento/seguimientos/Administrador', 1, '[{\"added\": {}}]', 13, 1),
(45, '2023-09-15 16:32:37.737966', '26', '/solicitud/solicitud/solicitudes/Administrador', 1, '[{\"added\": {}}]', 13, 1),
(46, '2023-09-15 16:36:59.506683', '1', 'Cedula de ciudadanía', 1, '[{\"added\": {}}]', 10, 1),
(47, '2023-09-15 16:37:12.840304', '2', 'Cedula de extranjería', 1, '[{\"added\": {}}]', 10, 1),
(48, '2023-09-15 16:37:21.167240', '1', 'Femenino', 1, '[{\"added\": {}}]', 11, 1),
(49, '2023-09-15 16:37:25.539491', '2', 'Masculino', 1, '[{\"added\": {}}]', 11, 1),
(50, '2023-09-15 16:37:30.609997', '3', 'Otro...', 1, '[{\"added\": {}}]', 11, 1),
(51, '2023-09-15 17:32:11.095803', '27', '/solicitud/estado/estado_seguimiento/Administrador', 1, '[{\"added\": {}}]', 13, 1),
(52, '2023-09-15 17:32:17.008440', '28', '/solicitud/estado/estado_seguimiento/Administrador', 1, '[{\"added\": {}}]', 13, 1),
(53, '2023-09-15 17:32:22.882742', '29', '/solicitud/estado/estado_seguimiento/Administrador', 1, '[{\"added\": {}}]', 13, 1),
(54, '2023-09-15 17:32:29.171008', '30', '/solicitud/estado/estado_seguimiento/Administrador', 1, '[{\"added\": {}}]', 13, 1),
(55, '2023-09-15 17:32:34.478690', '31', '/solicitud/estado/estado_seguimiento/Administrador', 1, '[{\"added\": {}}]', 13, 1),
(56, '2023-09-16 12:41:10.940472', '32', '/documents/Administrador', 1, '[{\"added\": {}}]', 13, 1),
(57, '2023-09-16 12:41:17.941150', '33', '/documents/Administrador', 1, '[{\"added\": {}}]', 13, 1),
(58, '2023-09-16 12:41:24.679871', '34', '/documents/Administrador', 1, '[{\"added\": {}}]', 13, 1),
(59, '2023-09-16 12:41:31.633688', '35', '/documents/Administrador', 1, '[{\"added\": {}}]', 13, 1),
(60, '2023-09-16 12:41:40.062565', '36', '/documents/Administrador', 1, '[{\"added\": {}}]', 13, 1),
(61, '2023-09-16 12:41:47.103900', '37', '/genders/Administrador', 1, '[{\"added\": {}}]', 13, 1),
(62, '2023-09-16 12:41:56.577007', '38', '/genders/Administrador', 1, '[{\"added\": {}}]', 13, 1),
(63, '2023-09-16 12:42:02.887148', '39', '/genders/Administrador', 1, '[{\"added\": {}}]', 13, 1),
(64, '2023-09-16 12:42:10.675288', '40', '/genders/Administrador', 1, '[{\"added\": {}}]', 13, 1),
(65, '2023-09-16 12:42:21.347674', '41', '/genders/Administrador', 1, '[{\"added\": {}}]', 13, 1),
(66, '2023-09-16 13:37:58.234484', '3', 'Seguimiento object (3)', 2, '[{\"changed\": {\"fields\": [\"Status\"]}}]', 29, 1),
(67, '2023-09-16 13:38:02.155864', '4', 'Seguimiento object (4)', 2, '[{\"changed\": {\"fields\": [\"Status\"]}}]', 29, 1),
(68, '2023-09-16 14:06:45.830577', '9', 'Seguimiento object (9)', 2, '[{\"changed\": {\"fields\": [\"Status\"]}}]', 29, 1),
(69, '2023-09-16 14:06:50.469102', '10', 'Seguimiento object (10)', 2, '[{\"changed\": {\"fields\": [\"Status\"]}}]', 29, 1),
(70, '2023-09-18 06:14:19.460880', '1', 'Seguimiento object (1)', 2, '[{\"changed\": {\"fields\": [\"Correciones\", \"Status\"]}}]', 29, 1),
(71, '2023-09-18 11:36:29.545288', '21', 'Seguimiento object (21)', 3, '', 29, 1),
(72, '2023-09-18 11:36:29.559825', '20', 'Seguimiento object (20)', 3, '', 29, 1),
(73, '2023-09-18 11:36:29.559825', '19', 'Seguimiento object (19)', 3, '', 29, 1),
(74, '2023-09-18 11:36:29.575332', '18', 'Seguimiento object (18)', 3, '', 29, 1),
(75, '2023-09-18 13:34:27.724365', '42', 'SolicitudesAutor', 1, '[{\"added\": {}}]', 13, 1),
(76, '2023-09-18 13:34:34.341247', '43', 'solicitudes/generarAutor', 1, '[{\"added\": {}}]', 13, 1),
(77, '2023-09-18 13:34:44.760382', '44', 'solicitudes/generar/crearAutor', 1, '[{\"added\": {}}]', 13, 1),
(78, '2023-09-18 13:34:57.727409', '45', 'solicitudes/seguimiento/Autor', 1, '[{\"added\": {}}]', 13, 1),
(79, '2023-09-18 13:35:09.102943', '46', '/solicitud/solicitud/solicitudes/Autor', 1, '[{\"added\": {}}]', 13, 1),
(80, '2023-09-18 13:35:20.314466', '47', '/solicitud/seguimiento/seguimientos/Autor', 1, '[{\"added\": {}}]', 13, 1),
(81, '2023-09-18 13:36:03.118292', '2', 'lolo - Autor', 1, '[{\"added\": {}}]', 15, 1),
(82, '2023-09-18 13:37:56.126949', '48', 'SolicitudesEvaluador', 1, '[{\"added\": {}}]', 13, 1),
(83, '2023-09-18 13:38:09.260962', '49', 'solicitudes/evaluar/Evaluador', 1, '[{\"added\": {}}]', 13, 1),
(84, '2023-09-18 13:39:23.887194', '3', 'mrosa - Evaluador', 1, '[{\"added\": {}}]', 15, 1),
(85, '2023-09-18 21:57:35.480491', '1', 'Profesional', 1, '[{\"added\": {}}]', 24, 1),
(86, '2023-09-18 22:00:46.648867', '47', 'Usuarios - None', 1, '[{\"added\": {}}]', 12, 1),
(87, '2023-09-18 22:05:17.968869', '50', '/api/user/Administrador', 1, '[{\"added\": {}}]', 13, 1),
(88, '2023-09-18 22:05:40.625752', '51', '/api/user/Administrador', 1, '[{\"added\": {}}]', 13, 1),
(89, '2023-09-18 22:05:47.095394', '52', '/solicitud/nivel/nivel_formacion/Administrador', 1, '[{\"added\": {}}]', 13, 1),
(90, '2023-09-18 22:05:53.718623', '53', '/solicitud/nivel/nivel_formacion/Administrador', 1, '[{\"added\": {}}]', 13, 1),
(91, '2023-09-18 22:06:00.319362', '54', '/solicitud/nivel/nivel_formacion/Administrador', 1, '[{\"added\": {}}]', 13, 1),
(92, '2023-09-18 22:06:10.285377', '55', '/solicitud/nivel/nivel_formacion/Administrador', 1, '[{\"added\": {}}]', 13, 1),
(93, '2023-09-18 22:06:18.974407', '54', '/solicitud/nivel/nivel_formacion/Administrador', 2, '[]', 13, 1),
(94, '2023-09-18 22:06:26.397346', '56', '/solicitud/nivel/nivel_formacion/Administrador', 1, '[{\"added\": {}}]', 13, 1),
(95, '2023-09-19 21:08:04.389964', '4', 'lolo - Evaluador', 2, '[]', 15, 1),
(96, '2023-09-19 21:17:14.031601', '4', 'lolo - Evaluador', 2, '[{\"changed\": {\"fields\": [\"Status\"]}}]', 15, 1),
(97, '2023-09-19 21:17:17.142312', '7', 'lolo - Editor invitado', 2, '[]', 15, 1),
(98, '2023-09-19 21:17:19.546223', '3', 'mrosa - Evaluador', 2, '[]', 15, 1),
(99, '2023-09-19 21:17:23.619951', '2', 'lolo - Autor', 2, '[{\"changed\": {\"fields\": [\"Status\"]}}]', 15, 1),
(100, '2023-09-19 21:17:25.935805', '1', 'rastor - Administrador', 2, '[]', 15, 1),
(101, '2023-09-20 07:12:39.782992', '48', 'Seguimiento object (48)', 2, '[{\"changed\": {\"fields\": [\"Fecha evaluacion\"]}}]', 29, 1),
(102, '2023-09-20 07:12:47.297437', '49', 'Seguimiento object (49)', 2, '[{\"changed\": {\"fields\": [\"Fecha evaluacion\"]}}]', 29, 1),
(103, '2023-09-20 07:35:51.538271', '1', 'rastor@gmail.com', 2, '[{\"changed\": {\"fields\": [\"First name\", \"Last name\"]}}]', 9, 1),
(104, '2023-09-20 08:54:01.036960', '18', 'jhb', 3, '', 28, 1),
(105, '2023-09-20 08:54:01.041976', '17', 'obbou', 3, '', 28, 1),
(106, '2023-09-20 08:54:01.046978', '16', 'b', 3, '', 28, 1),
(107, '2023-09-20 08:54:01.049976', '15', 'bou', 3, '', 28, 1),
(108, '2023-09-20 08:54:01.051523', '14', 'biuno', 3, '', 28, 1),
(109, '2023-09-20 08:54:01.053825', '13', 'www.orcid.prueba.com', 3, '', 28, 1),
(110, '2023-09-20 08:54:01.056854', '12', 'ñbui', 3, '', 28, 1),
(111, '2023-09-20 08:54:01.061256', '11', 'bulibuui', 3, '', 28, 1),
(112, '2023-09-20 08:54:01.063302', '10', 'kjv', 3, '', 28, 1),
(113, '2023-09-20 08:54:01.066253', '9', 'vy', 3, '', 28, 1),
(114, '2023-09-20 08:54:01.068254', '8', 'ku', 3, '', 28, 1),
(115, '2023-09-20 08:54:01.070253', '7', 'kj', 3, '', 28, 1),
(116, '2023-09-20 08:54:01.074259', '6', 'mñ', 3, '', 28, 1),
(117, '2023-09-20 08:54:01.077255', '5', 'www.orcid.prueba.com', 3, '', 28, 1),
(118, '2023-09-20 08:54:01.079767', '4', 'ugiu', 3, '', 28, 1),
(119, '2023-09-20 08:54:01.081924', '3', 'BIUNOM', 3, '', 28, 1),
(120, '2023-09-20 08:54:01.083895', '2', 'hjlbknñolm', 3, '', 28, 1),
(121, '2023-09-20 08:54:01.085912', '1', 'www.orcid.prueba.com', 3, '', 28, 1),
(122, '2023-09-22 00:23:41.562108', '19', 'www.orcid.jessi123.com', 3, '', 28, 1),
(123, '2023-09-22 05:53:32.806083', '21', 'ulbi', 3, '', 28, 1),
(124, '2023-09-22 05:53:32.812742', '20', 'www.orcid.jessi123.com', 3, '', 28, 1),
(125, '2023-09-24 03:39:58.507398', '23', 'fghbjnkhbnjk', 2, '[{\"changed\": {\"fields\": [\"Autor\"]}}]', 28, 1),
(126, '2023-09-24 04:19:49.605704', '25', 'hb', 1, '[{\"added\": {}}]', 22, 1),
(127, '2023-09-24 04:38:52.888034', '1', 'rdamianquintero@uniguajira.edu.co', 2, '[{\"changed\": {\"fields\": [\"Email address\"]}}]', 9, 1),
(128, '2023-09-24 04:39:48.284466', '24', 'binoim', 1, '[{\"added\": {}}]', 28, 1),
(129, '2023-09-24 05:16:24.358380', '72', 'Seguimiento object (72)', 2, '[{\"changed\": {\"fields\": [\"Fecha programacion\", \"Fecha evaluacion\"]}}]', 29, 1),
(130, '2023-09-24 18:35:02.110275', '29', 'tv', 1, '[{\"added\": {}}]', 22, 1),
(131, '2023-09-24 19:03:28.721616', '26', 'bu', 2, '[{\"changed\": {\"fields\": [\"Autores\"]}}]', 28, 1),
(132, '2023-09-24 19:42:50.197573', '30', 'nii', 1, '[{\"added\": {}}]', 22, 1),
(133, '2023-09-24 19:50:02.573508', '26', 'bu', 2, '[{\"changed\": {\"fields\": [\"Autor\"]}}]', 28, 1),
(134, '2023-09-24 20:15:26.485411', '26', 'bu', 3, '', 28, 1),
(135, '2023-09-24 20:15:26.492216', '25', 'bu', 3, '', 28, 1),
(136, '2023-09-24 20:15:26.496501', '24', 'binoim', 3, '', 28, 1),
(137, '2023-09-24 20:15:26.502509', '23', 'fghbjnkhbnjk', 3, '', 28, 1),
(138, '2023-09-24 20:15:26.506058', '22', 'jessi123.orcid.com', 3, '', 28, 1),
(139, '2023-09-24 20:15:37.895816', '30', 'nii', 3, '', 22, 1),
(140, '2023-09-24 20:15:37.900001', '29', 'tv', 3, '', 22, 1),
(141, '2023-09-24 20:15:37.906008', '28', 'jioio', 3, '', 22, 1),
(142, '2023-09-24 20:15:37.911057', '27', 'bbu', 3, '', 22, 1),
(143, '2023-09-24 20:15:37.917106', '26', 'uiugovy', 3, '', 22, 1),
(144, '2023-09-24 20:15:37.923103', '25', 'hb', 3, '', 22, 1),
(145, '2023-09-24 20:15:37.928103', '24', 'uibi', 3, '', 22, 1),
(146, '2023-09-24 20:15:37.936105', '23', 'buyybkhbjn', 3, '', 22, 1),
(147, '2023-09-24 20:15:37.939182', '22', 'ioni', 3, '', 22, 1),
(148, '2023-09-24 20:15:37.943635', '21', 'uhu', 3, '', 22, 1),
(149, '2023-09-24 20:15:37.946860', '20', 'jiub', 3, '', 22, 1),
(150, '2023-09-24 20:15:37.949959', '19', 'biunomp,', 3, '', 22, 1),
(151, '2023-09-24 20:15:37.955781', '18', 'hljvjlhv', 3, '', 22, 1),
(152, '2023-09-24 20:15:37.960155', '17', 'iono', 3, '', 22, 1),
(153, '2023-09-24 20:15:37.967167', '16', 'bbi', 3, '', 22, 1),
(154, '2023-09-24 20:15:37.970596', '15', 'bib', 3, '', 22, 1),
(155, '2023-09-24 20:15:37.974604', '14', 'ghbijno', 3, '', 22, 1),
(156, '2023-09-24 20:15:37.978710', '13', 'no', 3, '', 22, 1),
(157, '2023-09-24 20:15:37.980071', '12', 'jb', 3, '', 22, 1),
(158, '2023-09-24 20:15:37.986080', '11', 'ugb', 3, '', 22, 1),
(159, '2023-09-24 20:15:37.988601', '10', 'uihh', 3, '', 22, 1),
(160, '2023-09-24 20:15:37.991921', '9', 'ubii', 3, '', 22, 1),
(161, '2023-09-24 20:15:37.995249', '8', 'uigb', 3, '', 22, 1),
(162, '2023-09-24 20:15:38.001441', '7', 'ñjkb', 3, '', 22, 1),
(163, '2023-09-24 20:15:38.007447', '6', 'ljn', 3, '', 22, 1),
(164, '2023-09-24 20:15:38.010447', '5', 'ók', 3, '', 22, 1),
(165, '2023-09-24 20:15:38.012727', '4', 'ygiyv', 3, '', 22, 1),
(166, '2023-09-24 20:15:38.018424', '3', 'ubyino', 3, '', 22, 1),
(167, '2023-09-24 20:15:38.021486', '2', 'vuybiun', 3, '', 22, 1),
(168, '2023-09-24 20:15:38.026486', '1', 'yibun', 3, '', 22, 1),
(169, '2023-09-24 20:16:01.651366', '31', 'opop', 1, '[{\"added\": {}}]', 22, 1),
(170, '2023-09-24 21:07:57.755622', '30', 'momoo', 1, '[{\"added\": {}}]', 28, 1),
(171, '2023-09-24 21:08:16.711151', '32', 'nini', 1, '[{\"added\": {}}]', 22, 1),
(172, '2023-09-24 21:08:27.250522', '31', 'pninoni', 1, '[{\"added\": {}}]', 28, 1),
(173, '2023-09-25 05:08:00.476152', '59', 'SolicitudesAsistente editorial', 2, '[{\"changed\": {\"fields\": [\"ResourcesId\", \"RolesId\"]}}]', 13, 1),
(174, '2023-09-25 14:55:00.900012', '33', 'ni', 1, '[{\"added\": {}}]', 22, 1),
(175, '2023-09-25 15:02:21.957997', '36', 'ommñ', 1, '[{\"added\": {}}]', 28, 1),
(176, '2023-09-25 20:35:58.021895', '45', 'mopomp', 1, '[{\"added\": {}}]', 22, 1),
(177, '2023-09-25 20:36:24.371261', '44', 'op', 1, '[{\"added\": {}}]', 28, 1),
(178, '2023-09-26 22:47:33.728422', '2', 'Biologa', 1, '[{\"added\": {}}]', 27, 1),
(179, '2023-09-29 14:18:55.324179', '47', 'opn', 1, '[{\"added\": {}}]', 22, 1),
(180, '2023-09-29 14:30:01.885883', '52', 'Probando', 1, '[{\"added\": {}}]', 28, 1),
(181, '2023-09-29 15:49:17.458867', '4', 'Ingeniero', 2, '[{\"changed\": {\"fields\": [\"Status\"]}}]', 27, 1),
(182, '2023-10-02 15:18:22.401374', '67', 'prueba de editor jefe 3', 3, '', 28, 1),
(183, '2023-10-02 15:18:22.406088', '66', 'prueba de editor jefe 2', 3, '', 28, 1),
(184, '2023-10-02 15:18:22.407503', '65', 'prueba de editor jefe', 3, '', 28, 1),
(185, '2023-10-02 15:18:22.409024', '64', 'o´mopopmopmopmp', 3, '', 28, 1),
(186, '2023-10-02 15:18:22.413845', '63', 'momopompmop', 3, '', 28, 1),
(187, '2023-10-02 15:18:22.414859', '62', 'ciencias sociales', 3, '', 28, 1),
(188, '2023-10-02 15:18:22.415856', '61', 'la ingenieria', 3, '', 28, 1),
(189, '2023-10-02 15:18:22.417856', '60', 'la psicologia', 3, '', 28, 1),
(190, '2023-10-02 15:18:22.422172', '59', 'Como manejar motos', 3, '', 28, 1),
(191, '2023-10-02 15:18:22.430557', '58', 'asdfghjkl', 3, '', 28, 1),
(192, '2023-10-02 15:18:22.431568', '57', 'pruebaaas', 3, '', 28, 1),
(193, '2023-10-02 15:18:22.433898', '56', 'Influencia de la inteligencia artificial en los estudiantes universitarios', 3, '', 28, 1),
(194, '2023-10-02 15:18:22.437121', '55', 'administre su sueldo', 3, '', 28, 1),
(195, '2023-10-02 15:18:22.438474', '54', 'como hacer q nos rinda el dinero', 3, '', 28, 1),
(196, '2023-10-02 15:18:22.441486', '53', 'probandooooo', 3, '', 28, 1),
(197, '2023-10-02 15:18:22.444719', '52', 'Probando', 3, '', 28, 1),
(198, '2023-10-02 15:18:35.538210', '57', 'nkno', 3, '', 22, 1),
(199, '2023-10-02 15:18:35.543642', '56', 'pnppn', 3, '', 22, 1),
(200, '2023-10-02 15:18:35.545697', '55', 'ionnio', 3, '', 22, 1),
(201, '2023-10-02 15:18:35.548080', '54', 'niooiino', 3, '', 22, 1),
(202, '2023-10-02 15:18:35.550828', '53', 'kk komppo', 3, '', 22, 1),
(203, '2023-10-02 15:18:35.551854', '52', 'nio', 3, '', 22, 1),
(204, '2023-10-02 15:18:35.554289', '51', 'ompomp', 3, '', 22, 1),
(205, '2023-10-02 15:18:35.556283', '50', 'pni', 3, '', 22, 1),
(206, '2023-10-02 15:18:35.558794', '49', 'jpiin', 3, '', 22, 1),
(207, '2023-10-02 15:18:35.561251', '48', 'mioino', 3, '', 22, 1),
(208, '2023-10-02 15:18:35.564456', '47', 'opn', 3, '', 22, 1),
(209, '2023-10-02 15:18:35.566616', '46', 'resumen editado', 3, '', 22, 1),
(210, '2023-10-02 15:18:35.567635', '45', 'mopomp', 3, '', 22, 1),
(211, '2023-10-02 15:18:35.570149', '44', 'mopmop', 3, '', 22, 1),
(212, '2023-10-02 15:18:35.572344', '43', 'pnni', 3, '', 22, 1),
(213, '2023-10-02 15:18:35.573614', '42', 'opmmop', 3, '', 22, 1),
(214, '2023-10-02 15:18:35.577181', '41', 'inoni', 3, '', 22, 1),
(215, '2023-10-02 15:18:35.579715', '40', 'ojom', 3, '', 22, 1),
(216, '2023-10-02 15:18:35.582212', '39', 'pon', 3, '', 22, 1),
(217, '2023-10-02 15:18:35.583366', '38', 'mopmop', 3, '', 22, 1),
(218, '2023-10-02 15:18:35.584823', '37', 'mopcmsaop', 3, '', 22, 1),
(219, '2023-10-02 15:18:35.586317', '36', 'np', 3, '', 22, 1),
(220, '2023-10-02 15:18:35.588510', '35', 'opmmo', 3, '', 22, 1),
(221, '2023-10-02 15:18:35.589563', '34', 'momoi', 3, '', 22, 1),
(222, '2023-10-02 15:18:35.592334', '33', 'ni', 3, '', 22, 1),
(223, '2023-10-02 15:18:35.594354', '32', 'nini', 3, '', 22, 1),
(224, '2023-10-02 15:18:35.595687', '31', 'opop', 3, '', 22, 1),
(225, '2023-10-02 22:12:07.044078', '228', 'Seguimiento object (228)', 2, '[{\"changed\": {\"fields\": [\"Formato evaluacion\"]}}]', 29, 1),
(226, '2023-10-03 09:20:16.200471', '105', 'opkpoakpfcoakpsvokaspokpaos', 3, '', 28, 1),
(227, '2023-10-03 09:20:16.217010', '104', 'apocascpj', 3, '', 28, 1),
(228, '2023-10-03 09:20:16.219856', '103', 'pojpaosjoijasoid', 3, '', 28, 1),
(229, '2023-10-03 09:20:16.222904', '102', 'iojoijoijo', 3, '', 28, 1),
(230, '2023-10-03 09:20:16.226273', '101', 'pojpojpoj', 3, '', 28, 1),
(231, '2023-10-03 09:20:16.228821', '100', 'coafjspfjasoi', 3, '', 28, 1),
(232, '2023-10-03 09:20:16.231115', '99', 'pojpojp', 3, '', 28, 1),
(233, '2023-10-03 09:20:16.234440', '98', 'opojpojpo', 3, '', 28, 1),
(234, '2023-10-03 09:20:16.236023', '97', 'opopacspoaspdokapodk', 3, '', 28, 1),
(235, '2023-10-03 09:20:16.238227', '96', 'jpipojp', 3, '', 28, 1),
(236, '2023-10-03 09:20:16.240136', '95', 'npoinponp', 3, '', 28, 1),
(237, '2023-10-03 09:20:16.242386', '94', 'npnpinpionp', 3, '', 28, 1),
(238, '2023-10-03 09:20:16.246774', '93', 'pnnpinip', 3, '', 28, 1),
(239, '2023-10-03 09:20:16.248307', '92', 'opopsnoppo', 3, '', 28, 1),
(240, '2023-10-03 09:20:16.251202', '91', 'administre su sueldo', 3, '', 28, 1),
(241, '2023-10-03 09:20:16.253206', '90', 'administre su sueldo', 3, '', 28, 1),
(242, '2023-10-03 09:20:16.255199', '89', 'administre su sueldo', 3, '', 28, 1),
(243, '2023-10-03 09:20:16.257768', '88', 'administre su sueldo', 3, '', 28, 1),
(244, '2023-10-03 09:20:16.260830', '87', 'asdcas', 3, '', 28, 1),
(245, '2023-10-03 09:20:16.264849', '86', 'moonop', 3, '', 28, 1),
(246, '2023-10-03 09:20:16.266848', '85', 'non´n´´o', 3, '', 28, 1),
(247, '2023-10-03 09:20:16.269401', '84', 'joojpopopmpo', 3, '', 28, 1),
(248, '2023-10-03 09:20:16.271404', '83', 'pocanopans', 3, '', 28, 1),
(249, '2023-10-03 09:20:16.274400', '82', 'jopnoo', 3, '', 28, 1),
(250, '2023-10-03 09:20:16.276548', '81', 'innnopnop', 3, '', 28, 1),
(251, '2023-10-03 09:20:16.279609', '80', 'mmpmpolm', 3, '', 28, 1),
(252, '2023-10-03 09:20:16.283236', '79', 'oopoas', 3, '', 28, 1),
(253, '2023-10-03 09:20:16.285236', '78', 'jajcasoco', 3, '', 28, 1),
(254, '2023-10-03 09:20:16.289775', '77', 'mlñlñlñ', 3, '', 28, 1),
(255, '2023-10-03 09:20:16.299406', '76', 'prueba de bulk', 3, '', 28, 1),
(256, '2023-10-03 09:20:16.301825', '75', 'prueba de bulk', 3, '', 28, 1),
(257, '2023-10-03 09:20:16.303828', '74', 'ojpjopjojo', 3, '', 28, 1),
(258, '2023-10-03 09:20:16.306847', '73', 'ponnoponp', 3, '', 28, 1),
(259, '2023-10-03 09:20:16.312576', '72', 'pruebaaaa', 3, '', 28, 1),
(260, '2023-10-03 09:20:16.315571', '71', 'om`pm', 3, '', 28, 1),
(261, '2023-10-03 09:20:16.318084', '70', 'prueba 100', 3, '', 28, 1),
(262, '2023-10-03 09:20:16.321231', '69', 'prueba de editor jefe 2', 3, '', 28, 1),
(263, '2023-10-03 09:20:16.324250', '68', 'Prueba de editor jefe', 3, '', 28, 1),
(264, '2023-10-03 09:20:28.472076', '100', '´pokpokpok', 3, '', 22, 1),
(265, '2023-10-03 09:20:28.475159', '99', '}okpokp', 3, '', 22, 1),
(266, '2023-10-03 09:20:28.478491', '98', 'pojpojop', 3, '', 22, 1),
(267, '2023-10-03 09:20:28.480475', '97', 'pojpojoi', 3, '', 22, 1),
(268, '2023-10-03 09:20:28.482498', '96', 'pojpojp', 3, '', 22, 1),
(269, '2023-10-03 09:20:28.485495', '95', 'ijasoinoibo', 3, '', 22, 1),
(270, '2023-10-03 09:20:28.487494', '94', 'oihoijih', 3, '', 22, 1),
(271, '2023-10-03 09:20:28.488490', '93', 'omlkmpokmñlkmLKMlkmjijo', 3, '', 22, 1),
(272, '2023-10-03 09:20:28.491988', '92', 'opjpokjp', 3, '', 22, 1),
(273, '2023-10-03 09:20:28.494984', '91', 'jopjpojpo', 3, '', 22, 1),
(274, '2023-10-03 09:20:28.497012', '90', 'okpokpjpoj', 3, '', 22, 1),
(275, '2023-10-03 09:20:28.499190', '89', 'opnponpjpo', 3, '', 22, 1),
(276, '2023-10-03 09:20:28.500695', '88', 'ipiopijij', 3, '', 22, 1),
(277, '2023-10-03 09:20:28.502715', '87', 'nopnponponponpononpo', 3, '', 22, 1),
(278, '2023-10-03 09:20:28.505135', '86', 'mopponn', 3, '', 22, 1),
(279, '2023-10-03 09:20:28.508398', '85', 'npoonnonop', 3, '', 22, 1),
(280, '2023-10-03 09:20:28.510996', '84', 'iioni', 3, '', 22, 1),
(281, '2023-10-03 09:20:28.513025', '83', 'pnonoponopp', 3, '', 22, 1),
(282, '2023-10-03 09:20:28.515025', '82', 'pnp', 3, '', 22, 1),
(283, '2023-10-03 09:20:28.517469', '81', 'nopONPNOP', 3, '', 22, 1),
(284, '2023-10-03 09:20:28.518565', '80', 'npnoon', 3, '', 22, 1),
(285, '2023-10-03 09:20:28.521579', '79', 'opmmop', 3, '', 22, 1),
(286, '2023-10-03 09:20:28.523580', '78', 'innini', 3, '', 22, 1),
(287, '2023-10-03 09:20:28.526771', '77', 'pninopnoonp', 3, '', 22, 1),
(288, '2023-10-03 09:20:28.528791', '76', 'opnopnonop', 3, '', 22, 1),
(289, '2023-10-03 09:20:28.530922', '75', 'opnnopnopnop', 3, '', 22, 1),
(290, '2023-10-03 09:20:28.532835', '74', 'nopnopno', 3, '', 22, 1),
(291, '2023-10-03 09:20:28.535226', '73', 'onpno', 3, '', 22, 1),
(292, '2023-10-03 09:20:28.537225', '72', 'nipni', 3, '', 22, 1),
(293, '2023-10-03 09:20:28.539247', '71', 'oibbio', 3, '', 22, 1),
(294, '2023-10-03 09:20:28.543229', '70', 'poiobio', 3, '', 22, 1),
(295, '2023-10-03 09:20:28.545225', '69', 'pnpnono', 3, '', 22, 1),
(296, '2023-10-03 09:20:28.548238', '68', 'ioasnionivasohi', 3, '', 22, 1),
(297, '2023-10-03 09:20:28.550226', '67', 'ihiojpp', 3, '', 22, 1),
(298, '2023-10-03 09:20:28.551775', '66', 'oihioh', 3, '', 22, 1),
(299, '2023-10-03 09:20:28.554275', '65', 'ioinop', 3, '', 22, 1),
(300, '2023-10-03 09:20:28.555284', '64', 'ioin', 3, '', 22, 1),
(301, '2023-10-03 09:20:28.557275', '63', 'opoop', 3, '', 22, 1),
(302, '2023-10-03 09:20:28.559498', '62', 'popo', 3, '', 22, 1),
(303, '2023-10-03 09:20:28.562425', '61', 'mmppno', 3, '', 22, 1),
(304, '2023-10-03 09:20:28.564575', '60', 'ojjooj', 3, '', 22, 1),
(305, '2023-10-03 09:20:28.566592', '59', 'nknnopknl', 3, '', 22, 1),
(306, '2023-10-03 09:20:28.568493', '58', 'obio', 3, '', 22, 1),
(307, '2023-10-03 09:47:58.749639', '7', 'lpitre@uniguajira.edu.co', 2, '[{\"changed\": {\"fields\": [\"Email address\"]}}]', 9, 1),
(308, '2023-10-03 15:37:50.191559', '4', 'sjchore@uniguajira.edu.co', 2, '[{\"changed\": {\"fields\": [\"Email address\"]}}]', 9, 1),
(309, '2023-10-03 15:37:55.911125', '6', 'msantos@uniguajira.edu.co', 2, '[{\"changed\": {\"fields\": [\"Email address\"]}}]', 9, 1),
(310, '2023-10-03 16:21:59.936965', '17', 'mrosa - Autor', 2, '[{\"changed\": {\"fields\": [\"Status\"]}}]', 15, 1),
(311, '2023-10-03 21:34:52.607402', '7', 'lpitr@uniguajira.edu.co', 2, '[{\"changed\": {\"fields\": [\"Email address\"]}}]', 9, 1),
(312, '2023-10-05 08:39:27.442364', '120', 'articulo', 3, '', 28, 1),
(313, '2023-10-05 08:39:27.443231', '119', 'Pruebaaa', 3, '', 28, 1),
(314, '2023-10-05 08:39:27.444491', '118', 'prueba de bulkyug', 3, '', 28, 1),
(315, '2023-10-05 08:39:27.445498', '117', 'rxtcyvubinomp,', 3, '', 28, 1),
(316, '2023-10-05 08:39:27.445498', '116', '099j0ioj09j09', 3, '', 28, 1),
(317, '2023-10-05 08:39:27.446496', '115', 'como criar a emily', 3, '', 28, 1),
(318, '2023-10-05 08:39:27.447497', '114', 'cñasncasnpcasnponop', 3, '', 28, 1),
(319, '2023-10-05 08:39:27.448495', '113', 'oçmas´máosmcv', 3, '', 28, 1),
(320, '2023-10-05 08:39:27.450497', '112', 'ócmasoap', 3, '', 28, 1),
(321, '2023-10-05 08:39:27.451500', '111', 'vaosmasc', 3, '', 28, 1),
(322, '2023-10-05 08:39:27.452496', '110', 'pruebaaaaa', 3, '', 28, 1),
(323, '2023-10-05 08:39:27.453498', '109', 'prueba de bulk', 3, '', 28, 1),
(324, '2023-10-05 08:39:27.453498', '108', 'klklnkl', 3, '', 28, 1),
(325, '2023-10-05 08:39:27.454495', '107', 'administre su sueldo', 3, '', 28, 1),
(326, '2023-10-05 08:39:27.454495', '106', 'Influencia de la inteligencia artificial en los estudiantes universitarios', 3, '', 28, 1),
(327, '2023-10-05 08:39:39.689377', '116', 'uu', 3, '', 22, 1),
(328, '2023-10-05 08:39:39.690856', '115', 'resumen', 3, '', 22, 1),
(329, '2023-10-05 08:39:39.691862', '114', 'pjpojojp', 3, '', 22, 1),
(330, '2023-10-05 08:39:39.693861', '113', 'opijpojpoj', 3, '', 22, 1),
(331, '2023-10-05 08:39:39.693861', '112', 'ijoijio', 3, '', 22, 1),
(332, '2023-10-05 08:39:39.694862', '111', 'oioijioi', 3, '', 22, 1),
(333, '2023-10-05 08:39:39.695902', '110', 'ókopmpompo', 3, '', 22, 1),
(334, '2023-10-05 08:39:39.696867', '109', 'inonio', 3, '', 22, 1),
(335, '2023-10-05 08:39:39.697863', '108', 'pojpo', 3, '', 22, 1),
(336, '2023-10-05 08:39:39.698864', '107', 'pomvapompoasmop', 3, '', 22, 1),
(337, '2023-10-05 08:39:39.699928', '106', 'opkoopok', 3, '', 22, 1),
(338, '2023-10-05 08:39:39.700866', '105', 'inopjpopjo', 3, '', 22, 1),
(339, '2023-10-05 08:39:39.701887', '104', 'oppmnp', 3, '', 22, 1),
(340, '2023-10-05 08:39:39.701887', '103', 'knnklk', 3, '', 22, 1),
(341, '2023-10-05 08:39:39.702862', '102', 'ojppooppoj', 3, '', 22, 1),
(342, '2023-10-05 08:39:39.703863', '101', 'ioiohi', 3, '', 22, 1),
(343, '2023-10-05 08:39:59.138867', '12', 'a', 3, '', 25, 1),
(344, '2023-10-05 08:39:59.140789', '11', 'a', 3, '', 25, 1),
(345, '2023-10-05 08:39:59.141790', '10', 'a', 3, '', 25, 1),
(346, '2023-10-05 08:39:59.142787', '9', 'a', 3, '', 25, 1),
(389, '2023-10-11 08:20:27.923859', '5', 'anonimo@uniguajira.edu.co', 3, '', 9, 1),
(390, '2023-10-11 08:20:27.927693', '13', 'elaverde@gmail.com', 3, '', 9, 1),
(391, '2023-10-11 08:20:37.512323', '18', 'eperez@uniguajira.edu.co', 3, '', 9, 1),
(392, '2023-10-11 08:20:37.515379', '15', 'estherlaverde@gmail.com', 3, '', 9, 1),
(393, '2023-10-11 08:20:37.518394', '11', 'krincones@uniguajir.edu.co', 3, '', 9, 1),
(394, '2023-10-11 08:20:51.352877', '2', 'mrosa@uniguajira.edu.co', 3, '', 9, 1),
(395, '2023-10-11 08:20:51.356784', '10', 'pperez@uniguajiir.edu.co', 3, '', 9, 1),
(396, '2023-10-11 08:20:51.358790', '9', 'pperez@uniguajir.edu.co', 3, '', 9, 1),
(397, '2023-10-11 08:21:02.143372', '10', 'pperez@uniguajiir.edu.co', 3, '', 9, 1),
(398, '2023-10-11 08:21:02.147364', '9', 'pperez@uniguajir.edu.co', 3, '', 9, 1),
(399, '2023-10-11 08:21:12.175671', '12', 'rsanchez@gmail.com', 3, '', 9, 1),
(400, '2023-10-11 08:21:12.178653', '4', 'sjchore@uniguajira.edu.co', 3, '', 9, 1),
(401, '2023-10-11 08:22:19.506526', '12', 'rsanchez@gmail.com', 3, '', 9, 1),
(402, '2023-10-11 08:22:19.510510', '4', 'sjchore@uniguajira.edu.co', 3, '', 9, 1),
(403, '2023-10-11 08:22:30.624056', '3', 'lolo@uniguajira.edu.co', 3, '', 9, 1),
(404, '2023-10-11 08:22:30.626503', '2', 'mrosa@uniguajira.edu.co', 3, '', 9, 1),
(405, '2023-10-11 08:25:04.491645', '7', 'lpitre@uniguajira.edu.co', 2, '[{\"changed\": {\"fields\": [\"Email address\"]}}]', 9, 1),
(406, '2023-10-11 10:05:13.830760', '29', 'aocks@uniguajira.edu.co', 3, '', 9, 1),
(407, '2023-10-11 10:05:13.832766', '30', 'apskd@uniguajira.edu.co', 3, '', 9, 1),
(408, '2023-10-11 10:05:13.833767', '21', 'aria@uniguajira.edu.co', 3, '', 9, 1),
(409, '2023-10-11 10:05:13.834768', '32', 'capom@uniguajira.edu.co', 3, '', 9, 1),
(410, '2023-10-11 10:05:13.835777', '24', 'dando@uniguajira.edu.co', 3, '', 9, 1),
(411, '2023-10-11 10:05:13.835777', '39', 'hui@uniguajira.edu.co', 3, '', 9, 1),
(412, '2023-10-11 10:05:13.836766', '27', 'jaja@uniguajira.edu.co', 3, '', 9, 1),
(413, '2023-10-11 10:05:13.837766', '31', 'jij@uniguajira.edu.co', 3, '', 9, 1),
(414, '2023-10-11 10:05:13.838209', '38', 'jio@uniguajira.edu.co', 3, '', 9, 1),
(415, '2023-10-11 10:05:13.839216', '20', 'krincones@uniguajira.edu.co', 3, '', 9, 1),
(416, '2023-10-11 10:05:13.840218', '19', 'krincones@uniguajir.edu.co', 3, '', 9, 1),
(417, '2023-10-11 10:05:13.841216', '28', 'nu@uniguajira.edu.co', 3, '', 9, 1),
(418, '2023-10-11 10:05:13.842216', '33', 'oibn@uniguajira.edu.co', 3, '', 9, 1),
(419, '2023-10-11 10:05:13.843215', '35', 'oih@uniguajira.edu.co', 3, '', 9, 1),
(420, '2023-10-11 10:05:13.843215', '36', 'oij@uniguajira.edu.co', 3, '', 9, 1),
(421, '2023-10-11 10:05:13.845231', '37', 'op@uniguajira.edu.co', 3, '', 9, 1),
(422, '2023-10-11 10:05:13.846217', '34', 'pj@uniguajira.edu.co', 3, '', 9, 1),
(423, '2023-10-11 10:05:13.847218', '26', 'por@uniguajira.edu.co', 3, '', 9, 1),
(424, '2023-10-11 10:05:13.847218', '25', 'pro@uniguajira.edu.co', 3, '', 9, 1),
(425, '2023-10-11 10:05:13.848216', '22', 'prueba@uniguajira.edu.co', 3, '', 9, 1),
(426, '2023-10-11 10:05:13.849219', '23', 'rol@uniguajira.edu.co', 3, '', 9, 1),
(427, '2023-10-11 10:05:35.687281', '7', 'lpitre@uniguajira.edu.co', 2, '[{\"changed\": {\"fields\": [\"First name\"]}}]', 9, 1),
(428, '2023-10-11 10:06:53.177811', '6', 'msantosa@uniguajira.edu.co', 2, '[{\"changed\": {\"fields\": [\"Email address\"]}}]', 9, 1),
(429, '2023-10-11 10:13:18.754956', '6', 'msantosa@uniguajira.edu.co', 3, '', 9, 1),
(430, '2023-10-11 10:15:37.315952', '12', 'Marisol', 3, '', 16, 1),
(431, '2023-10-11 10:16:09.786261', '10', 'Leanis Mireya', 2, '[{\"changed\": {\"fields\": [\"Nombres\", \"Apellidos\", \"Identificacion\"]}}]', 16, 1),
(432, '2023-10-11 10:17:32.698558', '7', 'lpitre@uniguajira.edu.co', 3, '', 9, 1),
(433, '2023-10-11 10:18:58.952658', '45', 'lpitre@uniguajira.edu.co', 2, '[{\"changed\": {\"fields\": [\"Username\", \"Email address\"]}}]', 9, 1),
(434, '2023-10-11 10:19:24.111932', '45', 'lpitre@uniguajira.edu.co', 2, '[]', 9, 1),
(435, '2023-10-11 10:20:11.732831', '10', 'Leanis Mireya', 3, '', 16, 1),
(436, '2023-10-11 10:24:17.838494', '43', 'orlisjamaya@uniguajira.edu.co', 2, '[{\"changed\": {\"fields\": [\"Username\", \"Email address\"]}}]', 9, 1),
(437, '2023-10-12 11:03:55.962519', '134', 'iuuihiu', 3, '', 22, 1),
(438, '2023-10-12 11:03:55.966522', '133', 'oubob', 3, '', 22, 1),
(439, '2023-10-12 11:03:55.968520', '132', 'pijiojpojo', 3, '', 22, 1),
(440, '2023-10-12 11:03:55.970519', '131', 'ipjpjp', 3, '', 22, 1),
(441, '2023-10-12 11:03:55.971519', '130', 'oinoinoinoi', 3, '', 22, 1),
(442, '2023-10-12 11:03:55.972520', '129', 'jioopijjio', 3, '', 22, 1),
(443, '2023-10-12 11:03:55.973519', '128', 'pijpij', 3, '', 22, 1),
(444, '2024-01-10 15:03:59.949958', '1', 'rdamianquintero@uniguajira.edu.co', 2, '[{\"changed\": {\"fields\": [\"password\"]}}]', 9, 1),
(445, '2024-07-26 10:47:18.814860', '165', 'tyuvcyibuonipamsvni', 3, '', 28, 1),
(446, '2024-07-26 10:47:18.816717', '164', 'yctvubinokmol', 3, '', 28, 1),
(447, '2024-07-26 10:47:18.817701', '163', 'priafsv', 3, '', 28, 1),
(448, '2024-07-26 10:47:18.818741', '162', 'prufebasda', 3, '', 28, 1),
(449, '2024-07-26 10:47:18.819539', '161', 'pruebaaaa', 3, '', 28, 1),
(450, '2024-07-26 10:47:18.821980', '160', 'Esta es una prueba mas', 3, '', 28, 1),
(451, '2024-07-26 10:47:18.823304', '159', 'administre su sueldo', 3, '', 28, 1),
(452, '2024-07-26 10:47:18.823930', '158', 'como hacer q nos rinda el dinero', 3, '', 28, 1),
(453, '2024-07-26 10:47:18.824937', '157', 'Influencia de la inteligencia artificial en los estudiantes universitarios', 3, '', 28, 1),
(454, '2024-07-26 10:47:18.825937', '156', 'administre su sueldo', 3, '', 28, 1),
(455, '2024-07-26 10:47:18.826942', '155', 'prueba 8465', 3, '', 28, 1),
(456, '2024-07-26 10:47:18.827937', '154', 'Influencia de la inteligencia artificial en los estudiantes universitarios', 3, '', 28, 1),
(457, '2024-07-26 10:47:18.828939', '153', 'como hacer que nos rinda el dinero', 3, '', 28, 1),
(458, '2024-07-26 10:47:18.829939', '152', 'administre su sueldo', 3, '', 28, 1),
(459, '2024-07-26 10:47:18.829939', '151', 'prueba de correo 9', 3, '', 28, 1),
(460, '2024-07-26 10:47:18.830936', '150', 'prueba de correo 9', 3, '', 28, 1),
(461, '2024-07-26 10:47:18.831936', '149', 'prueba de correo 8', 3, '', 28, 1),
(462, '2024-07-26 10:47:18.833936', '148', 'prueba de correo 7', 3, '', 28, 1),
(463, '2024-07-26 10:47:18.834987', '147', 'prueba de correo 6', 3, '', 28, 1),
(464, '2024-07-26 10:47:18.835938', '146', 'prueba de correo 5', 3, '', 28, 1),
(465, '2024-07-26 10:47:18.838324', '145', 'prueba de correo 4', 3, '', 28, 1),
(466, '2024-07-26 10:47:18.839483', '144', 'prueba de correo 3', 3, '', 28, 1),
(467, '2024-07-26 10:47:18.840738', '143', 'prueba de correo 2', 3, '', 28, 1),
(468, '2024-07-26 10:47:18.841745', '142', 'prueba de correooo', 3, '', 28, 1),
(469, '2024-07-26 10:47:18.842747', '141', 'probandoo', 3, '', 28, 1),
(470, '2024-07-26 10:47:18.843575', '140', 'como hacer q nos rinda el dinero', 3, '', 28, 1),
(471, '2024-07-26 10:47:18.844288', '139', 'prueba', 3, '', 28, 1),
(472, '2024-07-26 10:47:18.845332', '138', 'prueba 2', 3, '', 28, 1),
(473, '2024-07-26 10:47:18.846297', '137', 'prueba', 3, '', 28, 1),
(474, '2024-08-10 15:07:59.977622', '15', 'Editar - None', 3, '', 12, 1),
(475, '2024-08-10 15:08:10.451793', '16', 'Eliminar - None', 3, '', 12, 1),
(476, '2024-08-10 15:58:07.749725', '24', 'rdamianquintero - Editor jefe', 3, '', 15, 1),
(477, '2024-08-10 16:53:43.469794', '171', 'prueba de bulki', 3, '', 28, 1),
(478, '2024-08-10 16:53:43.473787', '170', 'prueba de bulk', 3, '', 28, 1),
(479, '2024-08-10 16:53:43.475799', '169', 'hola mundo, esta es una prueba de como se veria una solicitud con un nombre bastante largo y extensohola mundo, esta es una prueba de como se veria una solicitud con un nombre bastante largo y extenso', 3, '', 28, 1),
(480, '2024-08-10 16:53:43.476787', '168', 'hola mundo, esta es una prueba de como se veria una solicitud con un nombre bastante largo y extenso', 3, '', 28, 1),
(481, '2024-08-10 16:53:43.478705', '167', 'prueba', 3, '', 28, 1),
(482, '2024-08-10 16:53:43.479534', '166', 'como hacer que nos rinda el dinerooo', 3, '', 28, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(9, 'authenticacion', 'customuser'),
(10, 'authenticacion', 'documenttype'),
(33, 'authenticacion', 'formacion'),
(11, 'authenticacion', 'gender'),
(32, 'authenticacion', 'nivelformacion'),
(16, 'authenticacion', 'person'),
(12, 'authenticacion', 'resource'),
(13, 'authenticacion', 'resourcerol'),
(14, 'authenticacion', 'rol'),
(15, 'authenticacion', 'userrol'),
(6, 'authtoken', 'token'),
(7, 'authtoken', 'tokenproxy'),
(4, 'contenttypes', 'contenttype'),
(8, 'django_rest_passwordreset', 'resetpasswordtoken'),
(17, 'pqrs', 'anexo'),
(21, 'pqrs', 'asignacion'),
(18, 'pqrs', 'pqrs'),
(20, 'pqrs', 'respuesta'),
(19, 'pqrs', 'tipopqrs'),
(5, 'sessions', 'session'),
(31, 'solicitudes', 'anexos'),
(30, 'solicitudes', 'autorxsolicitud'),
(22, 'solicitudes', 'contenidosolicitud'),
(23, 'solicitudes', 'estadoseguimiento'),
(24, 'solicitudes', 'nivelformacion'),
(25, 'solicitudes', 'pasosseguimiento'),
(34, 'solicitudes', 'revista'),
(26, 'solicitudes', 'rolautor'),
(29, 'solicitudes', 'seguimiento'),
(28, 'solicitudes', 'solicitud'),
(27, 'solicitudes', 'usuarioxformacion');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2023-09-15 15:38:03.370447'),
(2, 'contenttypes', '0002_remove_content_type_name', '2023-09-15 15:38:03.413703'),
(3, 'auth', '0001_initial', '2023-09-15 15:38:03.534716'),
(4, 'auth', '0002_alter_permission_name_max_length', '2023-09-15 15:38:03.556166'),
(5, 'auth', '0003_alter_user_email_max_length', '2023-09-15 15:38:03.562167'),
(6, 'auth', '0004_alter_user_username_opts', '2023-09-15 15:38:03.569167'),
(7, 'auth', '0005_alter_user_last_login_null', '2023-09-15 15:38:03.573168'),
(8, 'auth', '0006_require_contenttypes_0002', '2023-09-15 15:38:03.575166'),
(9, 'auth', '0007_alter_validators_add_error_messages', '2023-09-15 15:38:03.580165'),
(10, 'auth', '0008_alter_user_username_max_length', '2023-09-15 15:38:03.586166'),
(11, 'auth', '0009_alter_user_last_name_max_length', '2023-09-15 15:38:03.590164'),
(12, 'auth', '0010_alter_group_name_max_length', '2023-09-15 15:38:03.603164'),
(13, 'auth', '0011_update_proxy_permissions', '2023-09-15 15:38:03.607166'),
(14, 'auth', '0012_alter_user_first_name_max_length', '2023-09-15 15:38:03.612167'),
(15, 'authenticacion', '0001_initial', '2023-09-15 15:38:03.991637'),
(16, 'admin', '0001_initial', '2023-09-15 15:38:04.068942'),
(17, 'admin', '0002_logentry_remove_auto_add', '2023-09-15 15:38:04.118020'),
(18, 'admin', '0003_logentry_add_action_flag_choices', '2023-09-15 15:38:04.131047'),
(19, 'authtoken', '0001_initial', '2023-09-15 15:38:04.193865'),
(20, 'authtoken', '0002_auto_20160226_1747', '2023-09-15 15:38:04.235275'),
(21, 'authtoken', '0003_tokenproxy', '2023-09-15 15:38:04.238666'),
(22, 'django_rest_passwordreset', '0001_initial', '2023-09-15 15:38:04.288816'),
(23, 'django_rest_passwordreset', '0002_pk_migration', '2023-09-15 15:38:04.519103'),
(24, 'django_rest_passwordreset', '0003_allow_blank_and_null_fields', '2023-09-15 15:38:04.554397'),
(25, 'pqrs', '0001_initial', '2023-09-15 15:38:05.004709'),
(26, 'sessions', '0001_initial', '2023-09-15 15:38:05.030708'),
(27, 'solicitudes', '0001_initial', '2023-09-15 15:38:05.439000'),
(28, 'solicitudes', '0002_rename_autor_autorxsolicitud_usuario_and_more', '2023-09-24 05:31:17.548753'),
(29, 'solicitudes', '0002_rename_autores_solicitud_autoresxsolicitud', '2023-09-24 19:05:29.602579'),
(30, 'solicitudes', '0002_rename_autores_solicitud_autor', '2023-09-24 19:49:25.278250'),
(31, 'solicitudes', '0003_rename_autor_solicitud_autores', '2023-09-24 20:20:09.127552'),
(32, 'solicitudes', '0002_remove_usuarioxformacion_cert_resol_and_more', '2023-09-26 23:42:49.918254'),
(33, 'authenticacion', '0002_person_ciudad', '2023-09-29 14:10:49.726816'),
(34, 'authenticacion', '0003_person_orcid', '2023-09-29 14:10:49.775345'),
(35, 'authenticacion', '0004_person_url_orcid', '2023-09-29 14:18:15.868509'),
(36, 'solicitudes', '0002_remove_solicitud_urls', '2023-09-29 14:18:15.916402'),
(37, 'authenticacion', '0005_alter_person_date_of_birth_alter_person_name_and_more', '2023-09-29 14:54:10.902665'),
(38, 'solicitudes', '0002_alter_pasosseguimiento_nivel', '2023-10-02 13:59:35.222782'),
(39, 'authenticacion', '0002_rename_nationality_person_pais_and_more', '2023-10-03 20:11:28.851520'),
(40, 'authenticacion', '0003_remove_person_ciudad', '2023-10-03 20:12:21.757416'),
(41, 'authenticacion', '0004_remove_person_document_type', '2023-10-03 20:13:37.667589'),
(42, 'authenticacion', '0005_rename_apellido_person_apellidos_and_more', '2023-10-05 10:34:25.028332'),
(43, 'authenticacion', '0006_rename_pais_person_pais', '2023-10-05 10:35:43.973848'),
(44, 'authenticacion', '0002_alter_customuser_resettoken_alter_formacion_nombre_and_more', '2024-07-03 11:15:48.158777'),
(45, 'pqrs', '0002_alter_anexo_nombre_ane_alter_pqrs_description_and_more', '2024-07-03 11:15:48.363816'),
(46, 'solicitudes', '0002_alter_contenidosolicitud_palabras_claves_and_more', '2024-07-03 11:15:48.454041'),
(47, 'solicitudes', '0003_remove_contenidosolicitud_keywords_and_more', '2024-07-03 11:38:02.802861'),
(48, 'solicitudes', '0004_contenidosolicitud_declaracion_originalidad', '2024-07-04 17:42:49.023640');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_rest_passwordreset_resetpasswordtoken`
--

CREATE TABLE `django_rest_passwordreset_resetpasswordtoken` (
  `created_at` datetime(6) NOT NULL,
  `key` varchar(64) NOT NULL,
  `ip_address` char(39) DEFAULT NULL,
  `user_agent` varchar(256) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `django_rest_passwordreset_resetpasswordtoken`
--

INSERT INTO `django_rest_passwordreset_resetpasswordtoken` (`created_at`, `key`, `ip_address`, `user_agent`, `user_id`, `id`) VALUES
('2023-10-06 09:00:11.687088', '318693ebc6d21c75515ca35a5a01', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36 OPR/102.0.0.0', 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('013y1mfgwfeupgnaf845gfyjoxlpiege', '.eJxVjkFzgjAQhf8L59ZJABF6E6g2tJDRQQEvTkKCBIJa0VrS6X9vbC_1sIfd97739svYksu53l56ftoKZjwZ0Hj4f6OkbPn-JpDjsR91gjHJr-TE-9FzR4T0__S75T6hJn2tcWAxx6YmYZyZVkU8h5bQnpSwgsBxAQMWBRCa5sQElE9Kl8Jq4jjAJS4gDnHhLfTEK91bP54PukVH8iGq6bwUWERopRBMBOrRfjkuA-Sg9pivg8gbaROg5llS6QGe-xI1B1F2606PIoEGurV9A-K0GCdqqnCIrvFwFSSbAe39TJrWisPYwulUvQXRO5u3uhANcbisN2F8TVRSx-YK4NBvizTqiqYYcLrTHJM4Xaji96m12uRRRbKFwM3MG-URwa9K7GxbAlHMW2A3YCmbnG861wsS_6NqpcyWL1mGjO8fCgeMBA:1qqb55:lO2YjME5JJRjDgLo8B_PDRM231E71hCH0a4bMok8IMo', '2023-10-25 10:25:03.371187'),
('0giwtilho55usbzpitbhowbd283fjf3f', '.eJxVjctygjAUht-FdcuEcO9SUAwVmBYK4oYJIZQQQAs6Kp2-e8N0Uxdncf7b9y0V-HJuistEx4JV0oukSE__tRITTofFwKfTJPesqjp6xSOd5HWPWbf68x-ex4UGT42o16oJoUVqUEOjUiHEUMPApqZmAEKoTaxSNYhlQgUotmbrRCEEVCbRKSwNjZBldKS14DbP56OgiEl695vSIyxiPvqYkRIyNKHhXScOMhA_7VPHt2URAiU8d2VnA7pfdag9MtKnvbgZO6LQp9pSCJJcD5PPezDnMHCuDGcbILK3sOVK5KJZ6Ned439VHl-AXZCEPG8JCL0Nj5IABP17n2f5nCerJk-4HiVcC70DjxbGkM6HvV_j7I1F7caW_cJKwPUYG522y6AVU9WqgRvftzvmuttBfc3H2xCjdQi49PMLGKyK9w:1qlV7g:0hu_rRR6K6LmYF_feMFDcRpl7khWUwEtx5z09s3BLRU', '2023-10-11 14:02:40.373134'),
('0jlxeh6wn1xgo874cuy41qpqoy50dukh', '.eJxVTstygjAU_RfWrZOA4dGloDa0QFHAx8YJSSiBoBR0UDr998bppi7O4t7z_NYO5HIuD5eedwfBtBdN157-_3JCa368E6Rt-0kjGJN8IB3vJ_OGCDn74x-Ox4SS9KWyU14ggxpTB0GmM9MskGUD26CWTZBuO5AAG1Li5A4zTFsHgCMTMWpRTkjuQGaq0I4Xqrd8Pp9Ui4rkN7_Ml1REwsfpiGEocI-PK0RdbOK63Wau70yUCOT6WebSAXw7k7g6CdpkjcJIXGVosundECQ7FCZzBQoCMQiyWQClvYZVDYOkhqEX395d_4st63thHSW-DCp823uLOhh3YFd9wshLh2AZg30TD_tElioThuv7qGzcb_2CbGIRVWqUEbZziFZVu3nldoxllw4fz-sKEstMj9fIWN3eCgA9yNq59vMLw-6Klg:1qirly:ZI8Kdlx0TMlOXK3ceu9UVtKG4Q2lmOCU1-XPHDuHEVY', '2023-10-04 07:37:22.241574'),
('0m5gnnh7e8hgqkdwxa8nmnsre3uw7h20', '.eJxVjstygjAUht-FdetwMRG6q6BOaIHWIho2TkiChAAq6Kjp9N0bp5u6OItz_st3vo0tOZ-q7Xng_VYw48Wwjaf_t4JQybu7QA6HYdQKxhp-IT0fRrOWiGb6pz8sjw0VGSodp7wEDnXGHrCYzSAswcQ1XYdOXAJs17OI6VqUeIXHHOjapskBBIxOKCek8CwGdWnPS82tnk97TdGV_BZWxYKKRIRopZAVCzSgbgmojyCSh03mh95Im8zCPjVF45l8M21QvRe0zVo9ivg60GbjeyBKMYhTCZJ0d4m-LoKs56b2XuNaWom-x-nr9d0Pj2whNRApXM8FVtLKg7CKAmTGAb0mwbLBCtlxO5c4xQ5W0Ti_M7pM5ZuwJOtPkdT6KdENJO6Pq6iqZ-e8CD8Uqp2ZbN66bJlF3Mcwvz3DHWGXlfHzCxzIjGE:1qmEwf:HGieLoffXwwSuExauDXxfSJnbJD_PUMBGk8_2NiRLEY', '2023-10-13 14:58:21.913586'),
('118tbt4mc2h1yxqy21zw6apwrhzu52te', '.eJxVTstygjAU_RfW1UnCu7sqyoAmjvWBsHGSECA8FEWHSqf_3jjd1MVdnHue39qR3m_F8d6J61Gm2rtmaW__f4zySpyeBG3bbtzINK1FT6-iG88aKuvJH_8CXhMK2hXKrqdQQJ1nNhXQYJBlCOq24yBuuwiiLDWYbrkWQAI5QGcAMgZdR7cybtsgs4WpQq8iU73F6HZWLSpSPMKC-VyuZBjshgASGXTB6dPk08AKqvawn4buWIkAQ7ea1S4Qh0kdlGfJm32jbqBTZWj2xtOAt7FJthxgDxtY9pJGc6C0X6SsIBnWPfbyx3IaXlK_UoWBTspZHzdYT_wdwmgNSLQ2V_68wH5YJf5ng8scEj8GePMctR-SQ5jRaC1XZaJGeV7XdsuzV33cgUmufDEqCS_yHSWz0a0comZxMYs8Jpte-_kFLxyKqA:1ql9SU:lKCgDkEh05mdJ2q-bMmpDJLkg6JmWEljOgOPVlHUHUs', '2023-10-10 14:54:42.520468'),
('170kjdy1lwfgbr0ljg4qamcossuvl7ff', '.eJxVjc1ygjAUhd-FdcskgAG7q1gpWKAiFWHjJCFAAqgVHCydvnvDdFMXd3Hu-fm-lQO-9tXh2rHLgefKkwKVh_8_gmnNjpOBz-dObXmeN2zAF9apLy3mzeLPvxP3CxXuKlkHeo4MouGc5Zpe4DkiFBomhQUEyAI50AmAUNNMDRBmUovAwkQIWNgCGGELTqMXVkhu9difJEVOsi-vIg7lIffcj9GFAXc79xjNqO0itz7vd7Y3V2UIEK1vSDMHbL9oXHHitN218kZsy0K7M6aCH6ezQJSaP270YDtwnKyAzN4CUWvhMh39mMI32_vMnVoCXSMT6RA6Xp2KrM6WJQhaH6ZxCTLHH9MkE2GyqlJRG_7EOO7GbO8VONnwUKzmavdOr8Z6QWl0K1tggfdTv5zpKI6a4XUbPZ_KzEdnsQZDWCo_v77Fiyk:1qprct:vvElFTryPyquoq2mClgeo-NEOXlRS90aE9T1sW4bemw', '2023-10-23 09:52:55.331608'),
('1bv054l9qij62decknobu5tv87dfq52x', '.eJxVTstygjAU_RfWLRNeAt0hPiZUoFoFYeMkIWkSwBc6KJ3-e-N0Uxd3ce55fms7dL3w3bWj552otDfNNrSX_0-MSE33DwYdj53eiqpqaI_OtNOnLRLN-I9_As8JHHVc2c3KYIi4JiamixkgDsUjD_tgxDBwmUFd2yUjw7MsxzKYx4Dp48qgDjE8mxFkUxV6pkz18tfLQbWoSHqPOJ4TkYoIbgZoJAJ2cL9ySAhHsD5uszDydSUC2Lw0uPEB3Y4bKA-CtFmrbkChMrSZ_TDE68JJhmBIJ0Gf3HuB8hlQ2lsiayuexJbirEUYnap5rQohKOTUitdlXa5LWcgNSPIVL2QmYvl1L3LYF2pQmid18vkYlQ3lNmIoX4pULm9sqYNo7OF9Jess6O3XIeSZDBcV56duNg_cdGXa76dm5gPysdR-fgFTw40k:1qqb1v:mQnhXmmx-oO5OHd4MqzFWY5nbhTI699fvdqGwYp5bpA', '2023-10-25 10:21:47.866157'),
('2jwp5nhpwp0g9bqsuhwyv3ayu6yuxtna', '.eJxVTstygjAU_RfWlUnCuzulSkMbbB1QZOOEJJQIUSu2KJ3-e2O7qYuzuPc8v4wN_TjVm49OHDeSG_eGbdz9_5WUNWJ3Jejh0JlKct6Knh5FZ04Vle3kj785bhNq2tXa7nIXIF6WQqAKWgHyoG9D2_JQSRHjwAsCQH3H94ElKtvhtHIt6MEKBA7yfQRdHXoUle6tR6e9btGR4hLXZcTkXMY4GzBMJO7wbuGwELu4OeTLMA5MLQIlOrVlGwCRT1q83UumlkpjoKE2qKV9NZB07SQp6clA-kT2kq5mQGvPybaBZBgP5GGMnsP4nUeNLsQOGZhVRNMzuWLLAEl5s1aZVaS4T6KZmkcLlawwLH5HLYcijyu6epXz7SIwd4916I6KoWyS7DKuguq8u0A1Ool9HeftxcsYe2tenj4paYzvHyREi6w:1qjJks:WLGpEiyn3R75unE7myQNl7P0QB2yNcemkex9JzJWYBQ', '2023-10-05 13:30:06.416248'),
('2zzlfwnhe9bdxger8yzqci9kco40p9w5', '.eJxVjktzgjAUhf8L65ZJeATsTqE6MCWMirw2TkJCCQ9faFE6_e8N001d3MW955zv3G9lT27Xan_r-WUvmPKmQOXl_42SouGHSSCnU692grGWD-TCe_W9I6Jd_OlPyzOhIn0l40BnyKAaYZxpeklmiBbQsApYQoBswIBOAYSaZmmAcquwKSwthIBNbEAQseEEvfBS9lav16NskUj-8Cu6KkQofG83ehALr_cOG7NwPOQ1pzR2_JkqTYBq15a2M8DTRevVR1F0cSdnJI4MdLExBYIoM_E4H4NobmIxCJIsgfTecd3ogRsMeGy0D8c_s1UjC70hj1ibR2szd9sKuw0I3J2WRcsuGwMzSwIQumuAI7_G2-mpeMxTvyTJWoT1cqaa6Qaj-lMY992G6Ma1SdKuPVgAhQ-HW32ENl_99vXMyLhWfn4BpqiK7A:1qqZES:Ct82DX81QRBdafPUFcCPvaycNtJuc8lI_HkCZa7t6pM', '2023-10-25 08:26:36.255356'),
('3c5o1mysbci792wo8hrbuf22s9mw3tb3', '.eJxVTslygkAQ_RfOiTUI6JCb4pKhHDQGQb1YPQvFsLiABiWVf89QucRDd1W_tb-NA9yu6eFWy-qghPFmmMbLf4wBz-WxI-B8rnulEqKQDVSy7k1LUMX4j386nhNSqFNtlwDYcQBc4VhYL4YtNBSMI2G7_YQDt6yhBMeSYOM-wlyAySTmGCGGB9hkOrSSie5NX68n3dJFPvyUzblaKp9sWmIGitTkuHa4RwYkP28jz3d7WoRY_1qwwkVyOy5IdlK8jEo9LXjaUEZ2Z6Ahv9PJqKHhrg0ejYJ4hrT2HrTTRuN32lJr4fkXMc91oS7rb-z93M-COCqDLEc0I82u3DxoVhQ0JDYNhdrFU5t-dk9F7X7rJxB_qGU2c3vV6WKFs4_3xWQz_ppjW4KYVNZqtTBDcMzpxItElBykt2Yj4-cXKH6L9Q:1rizSj:pwm1tPuVzqqBmvNkqogbYQSNNPrqAEIj9ckvnJByUEo', '2024-03-23 11:22:17.429244'),
('3f79rzwo18g26p7jlmadg9592uojusgl', '.eJxVjctygjAUht-FdXWScNF0p6hMGAmjRRQ2TghhCBe1glXT6bs3TDd1cRbnv33fxpHd-vJ468T1KHPj3YDG238tY7wWp8Fgl0s3bmWeN-LOrqIbL1smm_mf__K8LpSsK3W9MCcITXkBCuTkJkIMWQxgMbEcwLnAfJqZDp9OEAQQW9jmkHOQT7gtUOZYnA-jV1Fobjnqz5qiJ8XTLzOPy1D6ZKcIpJJ05LS1uUscUl8OsevjsQ6BDPVN1mAgDvOGVGfJ27jVp5irC21sDYUgSmwazR6BqhX9uEu2XwGdfdCqhsFiqWgVwLXrf-ZePQAbipInjWhL222VVBtA1U6FXlpp3U6jtA1UgtJF3AQD4xSr9OAXbL-RYbXC4xRGrjfb9pGi_Qx2BH5VT3O0JuW6ECu8DQ91N1JX_Jytd8bPLzTji8E:1qi6Tb:bOZI8IOElF1U8oTAswdyDJaKDb6EAulmyLEkH6k2wDo', '2023-10-02 05:07:15.187412'),
('3x1w3q0hnx4hwuvu5w423v4s38nlnvei', '.eJxVjktzgkAQhP8L50iBuMjmFiWxlmQxUUThQg37kOWhRExhSOW_Z00u8TCHme7-er6MDD7ORfbRiVOmuHFvYOPu_y0HVonDVYC27cxGcV6LHk6iMx8bUPXsT79ZbgkFdIWOM9ueSsHARRhz4Ukx8cCdgoO5x2BqTxzMpIuYlzOOpYOk9oPlOSCnHLk2Ehp6ElL3FqPzUbdopPgMinzB1FIFZDMQO1SkI4cVYnPikqrdxfMAm9pk5eNzndfYErtZTcqjYk3c6BlgrgNNPLkGaJSgsNyMqU8RXfcKtk-W9l7CshqHUdJTv7q8zIN3vqiuhXUyBNUy2lupHzZpSS06JJMkioskKlQaaYa_t2n50Ke_T8VDugskbN_Usqyx6c4k4OcDOOg0woVYx7w9X-rXvcyjhdsSOibbFeCmybre-P4BKKiNAQ:1qoamR:_V9yeOE4hL1iIWWclfZNtKOPE2UqUe6T9X4Zf4aIqrA', '2023-10-19 21:41:31.998838'),
('47w0zbrxm1xxf4on3ap97onaw9rp1amp', '.eJxVjktvgzAQhP8L5wYZBwj0lreMYmhaEgIXZIwJBjsvEkGo-t9r1Etz2MPuzHyz31pKHvcyfTTslvJce9cM7e3_LSO0ZqdBIJdLo0ue54K15MYafSkJF7M__WV5JZSkKVW8GE8gdGgBCmjnYwgJNAlw2cS0AaXMpU42tqkzgQYwXNO1qEEpyCfUYjCzTUoH6I0Vqrcc3c-qRSHZ0yuzNeUB99CuR4bPUYNOnxadIxvVl8N-7rm6MoEM3kUmXMAOM4GqM6dyL9X0ZK4Ccm8OARzGlh9Ogb-IW_xsOYlWQHk7v6oNvNgC3E_7zdy75utaFaJnXB27IPyUyeLYJRKDuMcwCJMqCWnvy6UVh7iLI9z6X8NT-z45eAWJtjyoVq4ukBgtrCZNjE0bzcqo-EjFVfhjy_FqCWJmXnEwdXdmuTS1n188HYuk:1qiESF:9oPCZH66sz0mvDHFL16FgjJj6AiWN3_fau7vXm9HaJk', '2023-10-02 13:38:23.600448'),
('4h8jpjixdny8pu5njr4ban0cqsu7wytv', '.eJxVTktzgjAQ_i-cWyeI0dAbAtLQAhXxeXE2D4cgKIpWpdP_3jhe6mF3Zr_n_hhrOJ_y9bmRx7USxpthGi__MQZ8K3d3Auq66VRKiFJe4Cibjl-BKocP_ul4TsihybVdAhCMAWyBLaIXIxYaCMaR6NndDQduWQMJ2JLQI11EuACTScIJQoz0icl06FFudG_-etrrlnvkLcxZwFWiQjptqRkr2tBdirlL-3RbL2ZuaHe0CLHuqWSljeRiWNJir3g1q_S04GpDNevdDVHGb1HhXOJsfI3di4L5CGntNW7pLfIcM8p89OmGBxFsdSHFy8Jvl9kwTzKnG7UOWnn-NfHGKPYinATTNgnSMvamvcdTs3a1CDcwH6ukGNmd9Hsy3KTFYVKn73N8ll9JuljDxIm2Ps7Ezh0EtTvJq-L8MTZ-_wDCF4vK:1sXMC2:WQXU4sDpbqfj0rPABcD2rcbNDu1F_8TlIzBrp4utUBA', '2024-08-09 09:45:14.860749'),
('4m8bfuzg8hxc5garfus2xmonsadt488s', '.eJxVjs1ygjAUhd-FdeuEGEC6Q_xpmIJVUYGNE0KABBAqdizp9N0bppu6uIt7zznfud_amXzeyvNnz65nnmkvmq49_b-lhFbsMgqk6_pJw7OsZndyZf1k2RBez__0h-WRUJK-VPF8akE4oznIoZlNISQQEWAzC5mAUmbTWTo16cyCOtBtZBtUpxRkFjUYTE1E6Qi9slz1ls-3VrUoJBu8Ml1TvuEePkisBxz3-LIzqItNXHXR0fXsiTKBFN7qtLYBi-Y1Fi2nzbFRI4mrAs0RjQE_jI0gdGQgHRTs75ycVkB5vwJR6f7Ch4Es9DfX-8jWlSrEMlls70l4AH64ErHAwBfUiMV2SMK69sUBxtA3YunAeBifOsok8nJy2vKNWNkTINskeDe29w1quZ4GZfNqd0W92_h9xpeRKNr9EKPYWXaF9vML8WyL5A:1qiCV0:Hjri_5YGcf0yWCHP8_BaztXYUn6xp69ds2kAhqV1plI', '2023-10-02 11:33:06.034418'),
('4md9yh7jgt65fb3226auilpedrj9xusz', '.eJxVTktzgjAQ_i-cWyeCYOgNnxMsUK08L84mBAkPtaCD0ul_b5he6mF3Zr_nfisHuF3zw63lzUGkypsyVl7-YxRYyU8DAZdLO6pFmla8g4a3o2UNopr98U_Hc0IObS7tHADrOoCZ6hqWi2INTVPKUDox1YwB07QpB13jMMEqwiyFMeWYYYQoNvCYytCGZ7I3f72eZcsQ-bBzumbCEzbxezJ2BWnJaaezOTFIeYmCuW2OpAhR9VrRykQ8mlWkOAtWB7WcHubSUAeTweDs2d0tjqqzsDTn0QkIV0hq726_VL2Fr7s969_n9le6LofCwiksLSmYGoc-SsIYeYttF4dJ5dZkkuyJHtdOH4ek8z6Hp4I-iewMwq3wipU5ynadu8E2c6GxzvBx3FizMvL3gbU5x8ZVJWvDeb2UUdPWlvLzC_G6jD0:1sBleg:RnFYRW3SHNgmekUgf4G4pcsmxkFNwnLbXp-Bg18WAiE', '2024-06-10 20:29:34.063982'),
('4n2tqmxjng5oaoyt6j5irots91c7xx6d', '.eJxVjktzgjAUhf8L68qEEF7dKSATpsGxgyBumBDCEB6KoqPQ6X9vbDd1cRf3nnO-c7-UnN6udX4b-SUXpfKuaMrb_1tBWcuPT4EOw6j2oiw7fqcXPqp-T0W3-tNflldCTcdaxivdgtBmFaigWeoQUogocLiFTMAYd5hd6CazLagBzUGOwTTGQGkxg8PCRIw9oRdeyd56cT3JFonkU1gXARMbEeLdjLVI4BEfPw3mYhO3wz5xQ0eVJlDAa1d0DuD7VYebk2B90suZqSsDfYKeARJnRhQTsPGyiYi7oOkaSO8jalqNzFtEZjx9uOG5DFpZiA0SHPqoieosxlPWYBA1ZMripU5S_CCBD7PGn7I0aQ-_TyXzYR9WNN2KTbN2VLS9o1PIcjdf2Nkwb-4-Da0CnmfvSjw9Nr0KpeawW_rVVvn-AQe2iyc:1qjVXm:eK9XgeU20dmTVc6ER_oFeFOTwH1cjnO_xqO-N0stHjU', '2023-10-06 02:05:22.693363'),
('4xzxfe3sa8plmpid220cy00rrja5bcoc', '.eJxVjktzgjAUhf8L69ZJwru7IuKEFhgdBOLGCSFMwkMt6Kh0-t8bppu6uIt7zznfud_agV4v4nAd-XCQlfamQe3l_62krOXHWaDn87joZVV1_EYHPi5WPZWd96c_Lc8EQUeh4rVuI-SwGtTIqnSEKDIocLltWIAx7jKn1C3m2AgC6BquySBjoLKZyVFpGYzN0IHXqle8Xk6qRSH5IxTlmslEhng3YRhLPOLj1mRLbOH2XGTL0F0oEyjRpSs7F_DC63BzkqzPejUTXapAnxlzIEqJGaetGTcRih83SfMAKO89blqYpC2KfKJ_LsOvat2qQgyjfNuQHD9iPxYk3wGShoKkEYwmT5B-3-_z1T3xIzN-zE9l074Ia5pvZNIE7uIIhzInr2MR2InwofdhBU2XT6P9HuxBtjm0RRWk22vqTED7-QXIG4q5:1qmE3H:tz_iwk_tbzuXejhlj_36VgKZx8yHdk2ykj3GELpI3E4', '2023-10-13 14:01:07.063584'),
('5bec3cs8d8o9r7iqnzyninajnc3f6v6a', '.eJxVTktvgkAQ_i-cq1lEdOmtgppFZaOlKF7I7ANZHmpBY6Hpf--SXuphJpnvOd9GAvdbltwbWSdKGK-Gabz8xxjwQp57Aq7XZlgpIUr5gFo2w3kFqpz98U_Hc0IGTabtEgDbNoAjbAvrxbCFpoJxJMbOKOXALWsqwbYkjPEIYS7AZBJzjBDDE2wyHVrLVPdmg9tFt_SRrZ-xJVdU-eSjI2agSEPOO5u7ZEKK6yFyfWeoRYiNbiUrHSQPs5LkF8WrqNLTgasNVTTuDZuQt5v89Ahy0gbuQ8F-gbT2K-hIS703k4YErV3_UyyLvjCL89gKql0WeFFx9Aq0Cf0yrjZdnBdIcyjwFjn1soK-909F3fHgp7DfKpovnGE3OK1SZ8_WVNK6FvtbGKczOnFOM6_ehgmk80vbNe5qksTGzy9I_41V:1saiWL:Q9B-Pgm2n3EzW2fGguTCE2_dWWOdK2Hq8MHzPmvY04Q', '2024-08-18 16:12:05.082809'),
('5bvbzdginfyfe9gmhms97fb203fwahr9', '.eJxVjk9vgkAQxb8L55bsLv97U0SFFIgGULmYZVjCLqBUNIpNv3uX9FIPc5h57_fefCtHervWx9vALkdeKh8KVt7-3woKDTtNAu37Qe14WbbsTi9sUL2O8nb-p78srwk1HWqJV5pFiA0VqohZaoRQolPkMEs3EQBzwC40E2yLYIQd3TEAA6DSAoORwtQBptALq2Rv_X49yxYZycagLlbAYx746dPHEfcH_7Q1wPVNv-n3mRs4qjShglzbonUQ289bX5w5dFkn50ldCXSZPgFhcjCiZIaiZEOi8c7pbomk9xGJBoeLDZa69ukGX-WqmQrbeLfkYVKKvPMeufCR9NwPSYjzXYpDAWO8ykQsmXCcnsqe-T6o6G7DY7F0VFjb_cWzW8_MU3vtPdN5vXIW7mIhEiM381DkxtbytrfBnCk_v6IEieg:1qiEgB:gTwrvWitjgPQs59LxNoVbG9HysPrLBjAv9hhuPDlBso', '2023-10-02 13:52:47.356364'),
('5kp8tw8q68gpay00cfepdrnwtt3mpmsl', '.eJxVjktzgkAQhP8L52jt8pTcfJIlYalEFOFCDewCK6BGNCCp_PeslUs8zGGmu7-ebyWB66VMri0_J4Ipz4qmPP2_pZBV_HAX4HRqx41grOYdnHk7XjYg6tmf_rA8EkpoSxnnmWlBzlRQOcMApmFi0HKYIDZR0zxnTEcTVUsRAoRVsHPE1RwzQ8tMG1IDYwk981z2lqPLUbbckTe3TJ1M-MIlm4FgKkhLDh9GNicmqU677dy1x9KEUvVSp7WN-G5Wk_1RZM22kTPAXAaarX4PeEFk0GCKvEWhe6ITEK6Q9PZ0X2Fv8d7RoLi9zd1P5lSykHR0WBqxs0TRsBKxs0F04fVREGHfITpdxJUXFNgPPc1f35_aDvHOzSF8F_6e2mPtRsN1vxpZehTyxnpteL8244s10pKpd3hJWfHlr7VbfRwy5ecXoOSLcA:1qiDUE:jECwg8d0xE91eUH7r4V2-qiLrub-QpIo_MQi5FRdvgc', '2023-10-02 12:36:22.929552'),
('6bkg3y8wv1b4rw89i2gdif33lyk1huti', '.eJxVTstygjAU_RfWLRPCQ9OdYqWhBaSDIG6ccAkSAbWCRen03xvbTV3cxbnn-aVs2LkrN-eWnzYiV54UTXn4_8sYVHx_I9jx2KqNyPOa9-zEW_W5YaKe_vF34D6hZG0p7YU-wngMBSqwlesYM2wwRPjIsBAAJzDOdAvGI6whjRjEBA0A5SMwOc4sA-AWeuKF7C0fu4NskZH86paZAyIQLl0OVPMFben-3QSbWrQ6rmLbJaoUoQx3dVYTxFfTmu4OApq4kTcwWxqa2LgZvCg1_QiQN1si_9oLlsyR1F78XaX5Q9h7u1B_s92P3KlkIcXrxuu9KOzXidevHYp87Jdp5PVB5JbBbGukDTW8WYjS31HxsF65BUtCEezmRE1e5NhMOOPcDC91d1lYLSx4Mund6eS1Kg-fdegAie2MbJXvH-A2i2A:1ql9V9:V7H_4Oc-B9iJU-K1eyGbKJ0pJ_lX24KIgOvTGQ-OLf8', '2023-10-10 14:57:27.577454'),
('6eloemde5f5t4jj8q70nziyd68lvlrt6', '.eJxVjstygjAUht-FdcuEcJPuFBWDQsZW5bJhQggSAt7QUen03Rumm7o4i3P-y3e-lYzcrlV269gl44XyoWjK2_9bTqhgh0Egp1OntrwoGnYnF9aps5bwZvKnvyyvDRXpKhkvdRvCES1BCa1Ch5BAgwCH2YYFKGUOHeW6RUc21IDmGI5JNUpBYVOTwdwyKB1KL6yU3Or9epQUWcmefpV7lGPuo22PtJCjDh0-TeoiC4lTvHN9R5UmkMNrkzcOYPGkQfWR03bXyumJKwPtzhgCwSYxwzq4483-Gbp3TqI5kN5HWAsY9GMz3CCwcv1z4YkBKMJI-ttAx1O_CfsZCHqh4yiBqTfrsYfMdNo0SS-e4dfw1K5PY78k0Zrjeu6o92ixdg4LMYphWk6O--TsLrfLbAxuz9u5qh_78SoTmGEXG8rPL_uUi8A:1qnXb2:_DxmipUgz_4DQzeBaA1AbUfarP6n6IJM3C92nBeeGWw', '2023-10-17 00:05:24.360301'),
('6rklqe5bdomfwvfz6mg6cpz408taejli', '.eJxVTslygkAQ_RfOCTUMm-SmBgwYoFQW4UINzRAGwaBoQUjl3zNULvHQh9dv_RYycr9V2b2n14wVwosgCU__fzmBEz3PBOm6XmxZUTR0IFfai2ZLWLP64x_AY0JF-orbS1nHeAElKrFWyBgTrBBkUF3REAA1YJHLGix0LCHJUAwVJABU6KBSnGsKwBx6pSXvrZ5vn7yFR9Ivp8o3wHzm2OFkSx6ze_u8V2Fta_apO0ZrxxC5COX41uSNgehx1dj1J4M2avlNZM0NbaTMBjdIVC8IJzfYDe5hYCS2ENeOXn2SvMAd3WA5vq-dS7E5zYWtG5uDV4OaxInqvwJKN6bsBxxPuyGNQzmN7cGtkzE9zKOiKT06JYl3zK8tQxyLamntQ2Th3TUq9C3q3ozVvru72-y-tLz4w08u5iXM_M4Ufn4BGDSLmw:1qkH5p:GqTSQtmk499-l1p4szBvXEcwfRnlNpXy5dXnvAOpeUo', '2023-10-08 04:51:41.883545'),
('6t6uhaan3i5vfo2c9zc62je0qlvgmztv', '.eJxVTstygjAU_RfW1UnAIHRXGGvDlFArorhxQhIgAdQCDkqn_9443dTFXZx7nt_GgV768nDpRHuQ3Hg2TOPp_y-jrBLHO0HP527aSM5rMdBWdNNFQ2Xt_fEP4DGhpF2p7UzkyGLWzEWQm9y2czR3gGOxuUOR6biQAgcy6mYut2zHBEAgG3E2Z4LSzIXc1qGtyHVvOelPukVHiltQZksmIxngzYghkbjDx0_EfGzj6rxL_MCdahHIzL7OaheInVdjdZKsSRp9I_W1oUlmd0MYp4iohRWqAkbrQdLtK9DaK1GVGcbsRuINeveDL76sdCEeQlU3afwCSVwAogoQjgVM4xTs1Qal46eKtiEkYzGQ9X1UMu53QU63KxkpPar3HUYCa6JOH3Zz8ftr6bFt564idBtaz1PD25JVRzRLETZ-fgHsC4uL:1qmxxv:Ok192if4laJcKbnP3om6M4U4jIdH1XFj9p4WAZD8GAQ', '2023-10-15 15:02:39.434743'),
('7c58zshxqj5q6km44s2avz9xd1wmfe81', '.eJxVjktzgkAQhP8L54RaFkQ2N8VHLRUgWiiPC7UMS7G8VNAkkMp_z5pc4mEOM9399XwpKbtdy_Q28D4VufKiaMrT_1vGoObdXWDn86C2Is8b_sF6Pqjrlolm-ac_LI-Ekg2ljBf6HGMLClRgM9cxZthgiPC5YSIATsDKdBOsOdaQRgwyAw0A5XOYcZyZBsAd2vNC9pbP15NskUg-OmW2BeELhx4mqnmCDrTbz8CmJq3P0dF2iCpNKMPXJmsI4tGyodVJQHts5UzMloH2aNwDbhDPvGChe8F6cscPwcINkt5Pr6o1dwXIX7nTq-1c8m0tC6kRV4vRaw96EuzruHKRG9SaHyalh6mRhLHub3fInRZ6_PvUcUoip2DhTvjVhqidVQ_JLa_TrhoulPC3zl-372awP6UEVclwG60r7wMrwqB8_wDN84ux:1qiMOf:9jMhcsez3inWlAGS5O0iU8WqtWBM_VTN81pk3KwMx9Q', '2023-10-02 22:07:13.837529'),
('7hfc9fb72dbb1fyku0jfy6w1fdwjh4f0', '.eJxVjVFvgjAUhf8Lz5O0pQjsTZmaklGiQRFeSFvqqIIykeC67L-vZi8zuffhnnPP-b6tkg23uhx6eS1VZb1a0Hr5r3EmTvL8MFjX9XarqqqRI7vK3l60TDXzP__peG6oWV-bOJISB_5BBAfuVR50-dQJXA84HhIQO9BhoAJgykXFoON7vjADplhI5OMAu9gzpVd5MNx6crsYiqmUX1HNV0IlKiJbTSBVpCfnjStCMiWnbr8Lo8A2T4CjW8ObAMj9vCHHixLtrjWrWWgC7Q4_AnEqvmKdI5p-jEk4KpYtgfm9U000PeaQpjP8Hkaf1epkgATHb82paGOnSNf3YrUFFC1wsipamuUj1fPa6DDJclw8GOedLvbRgWVrlRyXgb1US2-yzyZIHJlMho5rVLtlNLSLWQ4LlPpoQxdRiLScWT-_HW2Jfg:1seK8a:QPBdiqK2n6ecjd5LO14uXnSmXq0kkrvoq9ifPXyMO0g', '2024-08-28 14:58:28.219684'),
('887an80z1rsvjva4l1ba48bx1xan65mg', '.eJxVjMEKwjAQRP8lZylJ09itR8HvCLPZlQRbKY3Fg_jvVrzYy8Cbx8zLRKyPHNeqSyxiTsaZw3_HSDe9fwXmuTZTERn1iUVrc5lQxvPP72D_kFHzNleAQgAGCZ62YPK2F05WuqG9JiTve0Xwio5aS0ngWCmRtUxHcmzeHzsTONY:1scsNA:C4tbyotm8dbkGOHXBkmm6kWg4M5LueNnQBCQI_rt7fU', '2024-08-24 15:07:32.097303'),
('89c14lmuszfwtlyg4p5u3ot0cvzfz44q', '.eJxVjk9zgjAQxb8L59YJIfzrrSA6UIGxFVQuTrKEIUDUilal0-_eML3Uwx5233u_t9_ajl7O9e7S89NOlNqLpmtP_2-MQsv3o0CPx34iRVl2_EpPvJ8EkorO-9MflkdCTftaxSvDxtiBClXYKg2MKSYUudwmFgLgLjjMsMCxsY50l7gm6ACotMHkmFkEYISeeKV66-fzQbUoJL9HNZuDSEUUZkOoJyLsw_27CX5ohe1xk_uRO1EmxPC5Y52L-MbrwuYgQOZSzUB9FZA5GQPxamsmTWAk0_aW-ldB1zOkvLekaXG8AqQ0svCjz3LejoXtVmYkGUpRyOU1nWaoWHVtugpIPBSN8huFYhXN0ozv41P5UGyiiq6XIm1m7iSSeMemNHSq93U1MO9ieBmpoZWvizMpKyPwZh9IZl9vc6L9_AL1tIsT:1qmyV9:r6MD-2wBEwJ3kCWcofjshFHJ0OxTb3zNNtsO9Ogb3nQ', '2023-10-15 15:36:59.123755'),
('8bwekw2auvcieauj4epk9qu60e0rb5jn', '.eJxVjktzgkAQhP8L54TaXR6R3BQfBSWrGETgQg3sUiwPNaC1kVT-e6ByiYc5zHT31_OtpHC_lem9510qmPKuaMrL_1sGec3PkwDXa6-2grGGS-h4r65aEM3iT39angkl9OUY57n5BgUjQDjDAKZhYtAKmCE2I1lRMKajGdEyhABhAlaBOCkwM7TctCAzMB6hHS_G3vL1dhlbJuTDLbNNLnbCdY6Dg6lweud8MHLbMZ36GoW2a6mjCWXk1mSNhXi0aJzqIvI2bMcZwB4DbahPAS-IDRrMEQ18w7OlgNMajd4vWtXYW_rYC2q5td1PtqmnwiZuqUiCuR4HNaYbH3ntWsSBW8ftoaaElkm1ksnJ1-nH9FQ4JJFbwMkXu4pa6n67rB6DXO014h7vHEnHNFiyG2QkjVTvvETLhr15kfFRV35-Abmki-M:1qiEgY:SqIR0X130DKtOMRijEoLfJUu4FN3TQdikCtSQyJ4JCw', '2023-10-02 13:53:10.168174'),
('8hm7eu96d64w2jebu5146c8rb17y5wag', '.eJxVTktzgjAQ_i-cWyeEl_QoVieMwFgVxQsTNkHCQxF8ptP_3jC91MPOzu73_NZSer0U6bXnXSqY9qHp2tv_X0ah4scBoG3bjxrBWM3vtOP96LOhop784S_Hq0NB-0LJc8PBeAw5yrHNDIwpNilyuWPaCIC7MM4MG8YO1pHumq4FOgBiDlgcZ7YJMJh2PFe5xfvlpFKUJX_6RTYHEQmfbCTRQ0F6cvyywCM2qdpd7PnuSJFQhi91VruI7yY1KU8CmrhRI6mnBE1sDoJgnVjheiODdWUGz7ug2xlS3EdYVnq4DtQ-yIXnn9m8GgLrUPpVIFkZzWdlUBKUSJDR9PAIygMKtokeDT7TpR6uhlKx3O_8nG6XIipnqlRc7M97FuU317Juy9WxTZx8xq7QLRKj6iLrSmiLGvRIe-3nF3qWjRI:1qkHFD:Es9uXlcBnH5_Ni-sWouiVH2EtNfd9cTRHh678Z6e0mA', '2023-10-08 05:01:23.013325'),
('8l5hhsgpbwmftuyc01jc51ynvyhh6uo6', '.eJxVjctygjAUht-FdXWSiCjdKd7CGFHrBdw44RCGBBAUHYVO371huqmLszj_7fs2zvxxT86PStzOMjI-DWx8_NdCDqm4tAYvy6qbyyjKxJPfRNWd5lxm4z__7XlfSHiV6HrcGxAyhBjFxIp6hHBicmSLgWkhAGHDMOxZMBwQjLBt2n3AACgaQF-Q0DIB2tGbiDU36dwLTdGTonaTcA7Sky7dNxSvJK3oZdsHh1o0Lf2D49pdHUIhuWdhZiPhjzOqCgn5IdfXcEcX8oPZFtgu6K8UxaxJMZNPyY8zpLOvlUoJU_tmpfb10nGv0Txtgak3SRQjQePt0prtAJ0mSRKoET6pDTrNmdaCF1MMey3jcmhOvhvz40Z6amZ3d7UXl8uAlcUloKOrMJXgW8oLvxD5bXF019M1xF-dAC_2xs8vWbCMlw:1qnJ3s:DGWCeyz58RixQyVpq_SfC_aCBxMVl60g6mDLhPiawlI', '2023-10-16 13:34:12.631859'),
('8rjkdcmlz8qrqvrulesp399hji7t7zu2', '.eJxVjktzgkAQhP8L54RaVh6SWwC1lnLX0iCCF2oZFlkevtBCSeW_ByqXeJjDTHd_Pd9Kwu-3Irm34prITPlQNOXt_y3lUInjKPDzuVUbmWW16PhVtOqs4bJ2_vSX5ZVQ8LYY4vnEwngKOcqxmU0w5ljnyBaWbiIAYcM0nZgwtbCGNFu3DdAAUGaBIXBq6gAj9Cryobd4v52GlgEpnn6RLkCupE-2PdGYJC05bgxwiUmqcxS6vq0OJpTiW53WNhKRU5PyJKEJm2F67g6BJtTHAA1ig5VbTANqULeTfDdHg_fBygqzIH5Qr-qWrn_JFtVYKBmeIbrYNNSDZ9zMEAsOXVx-Tliz7fblGtHeqZkHOP4anwr7feTnfLeWq3Juq1q27qN-_5hbOUk6kluVQ_sLcZcWORysmnv3VbdkXcsSovz8AueHi8k:1qob2Y:R8Qr96C6sly2j0E3n6sK9gBgwKHVdydEnU-Zi9EC_MA', '2023-10-19 21:58:10.153819'),
('8t39zmcg63perurol7o9oi6arodiqcph', '.eJxVjktTgzAQx78LZ-0kKY_izdKHYSRoi7T00glLkAApFVprcfzuhvFiD3vY_T9--23s-flU7M-daPcyMx4MbNz9v6UcKnEYBH48diMls6wWF96KbjRXXNbTP_1muW0oeFfoeD52CJlAjnJiZ2NCODE5coVj2ghAuDBJxzZMHIIRdk3XAgyAMgcsQVLbBBhKW5FrbnF_ajRFV4qrX6RLkKH06VtPMZO0o4eVBR61aXXcxp7vjrQJpeRUp7WLxHZa07KRoGKlp-eeDqjYHAJBlFhsBlZQAmHri-SbBdLeL1ZWiPXVlc0S_Oz5H9my0kA6ZlGFd-WqGvzhMkE7FfRhBGQX-YqpwEyiOU5UcAnXw1Nxv9v6Od-8yrBcuKPH5WyeHBGdtZPs3WOyb3ArYB03tH1azOsgal7w3umd6eer8fML1u-LFQ:1qhAwM:PyJPbGaceukuYGSUgIeAxmENY1Y8IytY6zd3nkiiWoA', '2023-09-29 15:41:06.132395'),
('8va43qcsiqsgfyj2hlrtbcvtwza56l6p', '.eJxVTktzgjAQ_i-cWye8NPQoVgcsYbQUlIuzCUFCQK1gKXT63xvaSz3szuz33C_tALe2ONwafj2ITHvSdO3hP0aBSX4aCbhcmkktsqziHVx5M3muQVTzP_7uuE8ooCmUnQNg2wZwMtvEalFsollGGcosx8gZMNOccbBNDhY2EGYZ6JRjhhGieIp1qkKvPFe9xWN7Vi1jZO8XdMVEKHzvbfB0IrzGO21t5npTT152ses7EyVC1GgrWjmI7-aVV54Fq-NazQCuMtSxNRqCiPXBYo_IsDHIaycgWSKl_SSD15FyYwbRXn9x_fdsJcdCmdZpRRbbQuEWSfYoKI9dGPnFPpI9WRwtUqcyXWzs4PepeEh3fg7JRoTl0pmsyXprD_oscCWsP0Rett3tIGe92-ZXmMblKtm5vuzbU3jWvn8AGm2NlQ:1sRevd:p2Bg6vNS9njxuPozKibILiTKkORiZb3EmYPjq-HpzRg', '2024-07-24 16:32:45.911430'),
('8y20ubf5shfvezmte0thfy8bbvpptmki', '.eJxVjklzgkAQhf8L50jNsJNbRKGGChg3BC_WbMiwqIAbpPLfA5VLPPSh-733vf6WDvh2zQ63ljcHwaR3CUpv_28E04KfRgFfLq1cCcZK_sANb-V5hUU5_dNflldChttsiAOVGRpRMONMUVNsG4RCzaQwhcCwAAMqARAqiqkAwk1qEZiahgEsbAFsYAuO0IanQ282uZ6HlgHJOz8jHhUL4aNtj2AoUItOK506yEDFJY4c35YHEyDKtSSlDXg8LVF-FrSKqmF67AyBKtLGQLBJ9DBP9GD20QXdQ-CdCwbvM8wLJcyPetij_tPxa-YVY2EWesEjyQst2PhivzmCfb7tFrNVlfTTPJjN1aQfNQqC9fhU1O9jP8W7pVjkri1DktWd47nr7uzY0VNHxjKy17FXT0rfW4KoKbr63n-V7n0r_fwC722L5A:1qp8VI:MHdbtBX53cb1EHX6H4t_tdGfT_FSD6h33ydUEunYbx0', '2023-10-21 09:42:04.067760'),
('90pa2ney762pm2p1yeatbc01wxpfmvmg', '.eJxVTstygjAU_RfWLRNCQOmuYnVgDEwdBWHjhEsYEogvsCqd_nvDdFMXZ3HveX4be3bt6_2145e9KI03wzJe_v8KBg0_jAQ7nTpTibJs-Y1deGd-KCba2R__dDwn1Kyrtb2yJxhPoUIVdksbY4YJQx6fEBcBcA-mhe3CdIItZHnEc8ACQOUEHI4LlwCMoRde6d76tT_qFh3JH2FdLEHEIgy2Q2BFIuiCw9oBP3CD5rRL_NAztQgVuG-L1kN8N2sDeRSgEqUxMF8bVEJGA91kTjQHjc9b7N8ESxdIa--RbFA0NIhu3snKD8_lshkLRbzMVT6ntwgnIsIU0TQg2SZRVK4llWGTDQtBJbWzxzgqGfJdWLH0U8Ry4Zlwl2F9niufgQ3RI7a3M2eI0mwqcFEQuey_1ne1yvN8dzR-fgHZZovG:1qhBMq:eF45ZVRPMqVFG0noW67Isbqku6cLZvbZETju5MATQsY', '2023-09-29 16:08:28.575956'),
('9501qn9zk8lt7m7dwug61k1vmpx5l0an', '.eJxVTstygjAU_RfWlYkEELqrUJmgQGmRhxsmJKGEh1LQUej03xunm7o4i3vP81vK8eVc5ZeRDTmn0rO0kp7-_wpMGna8E7jvR7njlLbsigc2yq8d5u36j384HhMqPFbCrkNCgK4ww9R0pilGSalRYI1RqkJdpWUJMGAmLCEBhlLoK1NRVHVpqmRJNKwqmggdWCl6q8X5JFpEJJvcqnAID7iL9jNa-hyN6PiuEQvpqOnT2HJNWYhAoZzbojUBS9ctqk-cdHEnMGNLGLpYvRu8KNP8-WX2ZzL705XjZAOE9ubXDfRsD_oCO8v9ok4jChH0EgQDO4O-43ZZ9Ak8m2iBE4KsC2-HGgEvChXP3k_-x31UPB9St8RJyIOamnK63SWzPeZvYXXYLIIuJ8bOSVOniBqU8CEstll2rRd9OTXSzy_FoIsh:1qqaxZ:qBkOMMr9EZzRocRTDH3XP5KOS9NKb0K75n0wsUkdDho', '2023-10-25 10:17:17.835365'),
('9g8869gvzxhn6iqpkliz8ogjz1l819p9', '.eJxVTktzgjAQ_i-cqxMe0dCbItpQ0akiiBdn87BEQK3ooOn0vzdOL_WwO7Pfc7-tLVwvxfbayPNWCevVsq2X_xgDXsrDg4DTqenWSohKtnCWTTesQVXDP_7peE4ooCmMXQIQjAF8gV1iFiMu6gvGkfB8Z8eBu25fAnYleMRBhAuwmSScIMRIj9jMhJ7lzvQWncvRtDwi71HBJlzNVURXmtozRRt6WGAe0B4tT-s0iPyuESHmXCpW-UiuhxXdHxWv09qMhsAY6tR7GOKE32Md3-MRx_OgVZCNkdHeZprqWNN2Niq9aRB9iUlpCimOnfyWJxRvktCO6xDl2QfO93kbJwN3M1qo-STHeVK2m-XjqVRv1tEOsg8134_9btSEg4P75vUW76tAF1MkMudThZd6mS6yejzVQ5Zokvm8c7R-fgHpIYvI:1scsNu:KlPV9OuotbIn2XoMSB7qG9XUrMXzOXOex2QLrtRreKg', '2024-08-24 15:08:18.547858'),
('9gj011ra2qhem4nowg7jqvqh47phewbk', '.eJxVjktzgjAUhf8L65YJ4d2dojKhBlpUXhsmhDCEh6joWOn0vzdMN3VxF_ee851zv6Wc3K51fhvZJeel9CYp0sv_W0Foy46zQE6nUe55WXbsTi5slNc94d3yT39anhNqMtYCr1QTQotWoIJGqUJIoEaAzUzNAJQym1qFalDLhApQbM3WqUIpKE2qM1gYGqVz6IVVord-vQ6iRUSyh1cXLuUB99BhQorP0YiOoU4dZKD2lESOZ8vCBAp47YrOBixZdqgZOO2jXsxEHAH0kTYDeJ_q_h5DPOFH4Nw5iTdAeL_8plXwlE54hbSt451Lt50Le-ymIGvWX8G-boP9GmQxegSu3-FYuJsDTHusBK7gdvNT0ZQlXkXiTx40G1ve5sPZYjSp7ofiHPnMitKPQW2mRXTfJdm7E7Zn1155YbgYpJ9fFiyL_Q:1qjZMy:VbNnTO9D02DLVZfdmYySc7PVvSczXPK_n0fZNQP6eFg', '2023-10-06 06:10:28.513791'),
('9nkrurugstn1fq2jw04jgngf7rzs7vjn', '.eJxVTstygjAU_RfWrRNAAnSHVJnQEkaHh7BxQhJKeKgVHWg6_ffG6aYu7uLc8_zWDuR2bQ63kV8OgmkvmqE9_f9VhHb8eCfI-TwuBsFYzydy4eNiPRDRr_74B_CY0JCxUXbKa8uk5tK1dGYwCGvLdoBjUtshluG4OgGOTolbucyEjgEAt6DFqE05IZWrM6hCL7xWvc3z9aRaVCT_CpsqoCIWIUol0rFAIzruLOojiLrzPvNDd6FEoDKufdW7gO9XPWpPgg7ZoE4SXxmGbHk3RElh4cSTWHpm5E-C5BugtDNuOz16jQws6fTuh58s6FQhMst8PUfBdlIeECdrgBMmijxVeDeUAe7ipJBljubo6z4qk-U-rEm-FXGrRrXTx5z3Nsy8FG5utdwFdSnbIQEeLEYz3bwdIUZBl_b6Sfv5Besxi6A:1qiCUl:NK_kzMGn7YRQL6aEzequ-CatC1Ji7D5trHFlV9KX1qQ', '2023-10-02 11:32:51.238532'),
('a6gcb8b5ce6gjums4m55z85mipg6gg7u', '.eJxVjUtvgzAQhP8L5wYZh_DoLW8ZBVBSQgiXyCym2EAekJRA1f9eo14arfawOzPffCsn-rjnp0fD6hNPlXdFU97-_xIKBTsPAr1eG7XiaVqyltasUZcV5eXsT385Xgk5bXIZz8YmxhZkKMNGOsaYYp0im5m6gQCYDVYyNsAysYY0W7cnoAGg1IQJw4mhAwzQmmWyNx_dL7JFIlnn5MkauM8dsu-J5nHSkPNuAnNikOIahXPHVqUJJfheJqWNWDQribhwqMJKbk_nMlCF-hBwg-PEE9vOCwrd_Wg5PayQ9D49UWBvIeHi87mZO7d0XchCovuHo37sSecHcRUflugopq2_9oS_3mNPTLHbFzgWcoaOc9jHkZPRw5b7YmWri9Xty_UiErRusulEVO_8dNT24r6DMt1bUPoW6agIR-5S-fkFE_6MLw:1qo1oY:17HNFe_33FQ25y32l3gWoqLs6gT8j6QjMpnDjkCceF8', '2023-10-18 08:21:22.197835'),
('aacaorzc8ze2z9aa3hzsz6wtsgsox3u1', '.eJxVTctugkAU_RfWrRlAdOiuUrBDitSqIGzInYdleFc0KE3_vWO6qYt7k_P-1jI4n_Ls3ItjJrn2pOnaw3-OAitFcxOg6_pJLTmvxABH0U_cGmS1-NPvwH1DDn2u4gIAWxaAzS0Tq0exieacMsSntnFgwExzLsAyBUyxgTDjoFOBGUaI4hnWqSo9ioPazR9PrVq5VV79nC6ZDKVPdiPRV5L0pPmwmENmpOz2kePbE2VC1DhVtLKR2C8qUrSS1VGtbgRHBepoegsEW3YNtom-UkXhZpAQe0h5LwpfVsXOCLc7683xv_iyVINkSLef0yBej4GRVsHoopWRmEm8HsI4qsLYvSRGVKZLxd82mmhM9_4B4rUMC8-eRC5pw0NajNZLm1HcZIl850UyPCeJ58y8rtgUnefuXhdeq_38Aur6jEs:1sVtcd:B9ZGXh2RT4RunTsCRV4vsy7ZJ0wHayYYbDXFFDCicC0', '2024-08-05 09:02:39.716499'),
('abl2n85n20yp1qtswbzt27fe7k6iutic', '.eJxVTslugzAQ_RfOLbLBbD2GJNSohlKxJFyQsU0xS5KGREmo-u911EsjzWg087b51ip6PrXVeRLHSnLtRYPa0_9bTVkvdneAHg6TPkrOB3GhRzHpq5HKYfGHPyyPDi2dWiU3hECe2zCvqR3uQKu2Tc9ygOkYDCITmhRwAOyacQpN13GZKmAjJgwXechCjjI9ikblts-nvUpRluIWtnXAZCxDnM0YRhJPePdhMR_buD9scj_0dEUCtXEa6sEDYrMYcLeXbMxH1TP1lWDM0V1AUnaLlv0cp4kyukharIHiXqMZgzglFkkz480Pv3jQq0AMSbBC5TLs4qDsSZcAYpRdXIRym5ZjnKpZhH2Uroft7f5UPpebsKFFIuNu7enRFvkQZ-f3yWm_LjT4zK9TAtqGiGyVVJwcslcjj9zqusu0n18LeYqZ:1sjfTI:yagefhDYXd1Oic7rF4vyXDfRYydOAU2zC1X-q5tXkeY', '2024-09-12 08:45:56.244076'),
('b71si144dprbfsrsg9nbr3hg3fl3cyax', '.eJxVjkFzgjAQhf8L59ZJglDprVJ1QgXGloJwcZYklCSgVHRUOv3vje2lHvaw-9773n5ZGzge6s2xF_uN5NajZVt3_28lMC22VwG6rh-1kvNGnGAv-tGsBdlM__Sb5ZZQQ1-buGDuA1ScABEcA7iOi8GuYIL4hJRVxfkYTYhdIgQIE_AqJEiFuWMz14PSwdhA96IyvfX9YWdarshLUJcLJmMZ0PeB4kjSnm5fHeZTl-punfqBNzImVJJDUzYeEutpQ9VOsjZtzQzgm0Cbjq-BMMmdKAlR_ExR6J8kZHNkvOdIaRwOKztOVqelH3zyhTaF9FKoQueKXkL1cS4SiopFiPIkUNFi3uRD2obJikRkhovfp9KhWAcVZCsZq8gbqejtSR6BaO1nmT_NX2LFlDxnrFxOlrpTnes3-nDSLKXW9w_t14z5:1qjVRc:5Cv1mKcbcC_UDJAE-qAySXjb4Ygb0ICMSiu6Zg2jMh4', '2023-10-06 01:59:00.835555'),
('cq1eykle3zjkhre57gbyo3logtbxfb6n', '.eJxVjctygjAUht-FdWWCCSDdVUQbRmLpIIobJjeGcFEUrUqn79443dTFWZz_9n0bOb2cy_zSy1OuhPFqWLbx8l9klNdy_3Bo1_Vmq4Ro5JWeZG8GLVXN9M9_ep4XStqXug4nohhLajEKoEAOEzaEjusABjgskKDSRcyDaMImnANUMFdK5DocSRdSiDjQoydZaG45Oh80RU_Ke1iyBVcrFeL1gC2icI_3nzb3sYPrbpv6oWfqEGDjc8MaD8jttMHVQfE2bfUN1NeFNkWPQpRkNqnW4yjBgPhXRTdzoLM3UtVjkmTXVRKDpR8exaLWQHzXuk2GNytLarCrYpANsZ21ASQzDqNF2JA2hrt2Xu8ejH067LZhQTexWlWBVcTmLF_2dgQ_ui5xv3wxHEn1jqauRfPNbQPgMomIx0cWPQe98fMLuhqLfw:1qob0C:bq44PJxYGwgvmWBEkVuVg9aQsEUsb3vHOd8HquOZjxw', '2023-10-19 21:55:44.422630'),
('csslaseivyfq16rnrmasr0lih3f8e2l5', '.eJxVjblygzAURf-FOjBCbCZdTDAjEuQdGxqPkIQRm4nxSib_HnnSxMUr7rvL-VZ25HwqdueeH3eCKa-Krrz8_2WEVrx9GKTreq0RjNX8So681_yGiHr85z-J54WC9IWs54YD4YjmIIc2MyAk0CTA5Y5pA0q5S0eZYdORA3Wgu6ZrUZ1SwBxqcZjZJqWP0SPPJbdQTwdJkZP8HhZZQMVUhGg9IB0L1KN2YVEP2ajqtrEXupoMgQye6qx2Ad-Oa1QeBG3iRt5APFloYvNRiFaJhVcI4nJ_w_erIJsJkNkbLis9KhOIV77x6YVfLKgkEA24ieA0mFu4wXUUJCANfCsp_St-pzqGizIp0wIPyZA-GG08pNswJ5u5mJYTVwvM8cwcOGDLS3q-2-O1R2a9yi6IbdSduuz2RRRCn3-s2zfl5xfVRYra:1qjAGL:wMYwtjUjuGOhBjrenD79GEAGuwVI9O21ONpng-5SpsY', '2023-10-05 03:21:57.362295'),
('cukz95uosrd340ia4ljon4tf9rx4di3a', '.eJxVjktzgkAQhP8L54RaVh6SWwSllhIwCaJwsZZhKZaHIo9SSeW_Z6lc4mEOM9399XxLJzoOxWnsWXfimfQmKdLL_1tKoWLnWaBt28sNz7Ka3WjHenndUF6v_vSn5ZlQ0L4Q8XxhYLyEHOVYzxYYU6xSZDJD1REAM2GZLnRYGlhBiqmaGigAKDNAYzjVVYAZ2rFc9Bavw0W0CCR7uEXqAA-4S_YTUXxOenL-1MAiOqnaY2S5pixMKMVDndYmYsdVTcoLhyZqxEzUEoEmUueAF8aab4Pmh_EtsG6cHjZIeO9-WSF_qhRvele3lnvNnEoUkkdSfvIYJzwJK-zbHvLDTRGHayUuyd1zoiax3TqwhfaYn4qm5Ojm9PDBg3Jjyvm4uJJyN1xbl44eV7qvjhMoLH3rpg5V1xnZh-ouL-4lSD-__e-L7g:1qhBgC:ka9xD0PNdNg85CQS6ChhJZx6RspKaeq7Ud9QY4BdXuM', '2023-09-29 16:28:28.252281'),
('cz7zgfmqtrog6cx3elxukc8qo0v4gab1', '.eJxVTstygjAU_RfWrRMiD9NdVUAyBopFEDZOCEHCwxd2EDr998bppi7O4t7z_Fb29OtW7r86ft2LXHlTVOXl_y-jrObHB0HP527SijxveE-vvJtYLRXN_I9_Op4TStqV0l5MTQhnrAAFNPIphBRqFCBuagZgjCM2y6YGm5lQBSrSkM5UxkBuMp3DzNAYe4ReeSF7y9fbSbbISD7gMnOY8AV2t6OresLt3ONGZwvXcOvzLlpgNJEikMFbkzUI8N28cauTYG3USox0IQ1tpD0MJEx0L7Qktj0RvaCxDaT27lW1SkKJ6n1YL_Ald2pZ6I5JbPVJeNCSkdz9ZQDSOBn8JdGTkPRkrAcS4yp1tkPy-RgVjekOFzQOhF_ZaNL4h7QJ1p6zJEEOI922Vs7K28zwBeH71u7LK9rMg_mZfByUn18mwouT:1qiri6:xsxyjx97yYzWEnujTONptoPoI9keOR-3lM2X5kaHvKs', '2023-10-04 07:33:22.993303'),
('d46zu8wt6gpkwpytxpwr8rxc4rxqmovm', '.eJxVjctygjAUht-FdcskEVC69DqkNd7wAhsnHIIEEkXRUen03Rumm7r4F-f8l-_b2vPbNd_fanHZy9T6sLD19v-XcCjFsTV4VdW2lmmqxJ1fRG2PNJeq_-e_HK8LOa9zU886XUJ6kKGMeGmHEE4cjnzRdTwEIHzoJR0Pel2CEfYd3wUMgNIuuIIkngPQjl5EZrj5-_VkKGZSPGmeTEDOJA3WTYCZDOrguHRhEHhBWe02A-rbJoQSclWJ8pHY9VVQnCTojTZq-MAU9MZpC9Mwclm4dqdDcNjqLvl2jEz2wYoSs7C8s-EBfw3oOZ2ULVAzsnYZGWumx4oVCxQVtJhNqI7C8sGapWZhbJSquGUcN028oxnfLuSsGPt2Fd3mPCiWLq8w21OhYrXCz9SFip5X_KCi8PG-KD7n5Wht_fwC962MLw:1qkWXe:UTSgtKQNi5Ah3tLM_yytgTM0276zzz3HeG9oU7OpnYk', '2023-10-08 21:21:26.135086'),
('d6yh8zxq7hiq24es2l2om4ax376c3yah', '.eJxVjslygzAQRP-Fc0JJArPkFghxREXgBWPgQkkgCrF4AVyOSeXfI1cu8WEOM939er6VnF6mOr-MfMhFqbwohvL0_8Zo0fLDXaCn06j2oiw7fqUDH1Wvp6Jz_vSH5ZFQ07GWca2EHGpFZVIOdQZZhaBmWhYqTBtBVJU60wzbAIgjC2gMQMagbWlGVZgmqEy-kNCBV7K3fp6OskUi-c2v2bIQofDxbsYwEHjEh82icLGB21MSu76tShNgaOpYZwOeOB1ujqLo417OTF0Z6GP9HiBRugiiAgXNeibiKuj-HUjvV9C0MJhTRCJy-3T9c7lsZSH-Io0HSeS3YeShrHkFWRO0aU_0dCZ6MOM5W64hefNu4fb-VDxniV_R_VqETWarXj66prNCtb5xtoOP44mekxGVTFs7bEjjlcvDsu3Bh7FTfn4BeLuKlg:1qlGEf:nFpk51n5vpMPG1j9WvfhB83gv1hniEMQDJRaOQzi0p8', '2023-10-10 22:08:53.003859'),
('dkfyh4k71cg1ot2maomwlxzs372rn9fu', '.eJxVjctygjAUht-FdWVCuHeHgDRUoLaIwMYJIUjkIoodK52-e8N0Uxdn8Z__8n0Le_x5rfefI73sWSk8C5Lw9P9XYNLQfjbwMIxix8qypTd8oaPodpi1yz__QTwu1Hiseb2SdQgNUoEKaqUMIYYKBibVFQ0QQk1iFLJGDB1KQDIVUyUSIaDUiUphoSmEzKMXWnFuvbieOIVP0rtfFx5hEfPRdkJSyNCI-neV2EhDzZAmtm-KPAQKeG2L1gQ0XbboeGKkSzp-E7Z5oUuUuRDEmRrGFgimA4w-bgzvVoBnv8JjIwXOZgq5v7b9c-k1M7AN4arN4rzJY0vN4gMInJBlXQBzZ6uGXiBlsd9FsSUHM6NPpjz1K7zbsOi4MsXzehE3rrajaOFSZzTvnvGa90mppG8HfdJdVR9aSz0z7eUk_PwCclKJbg:1qiEGP:tiPTCgl8NG1JeDGqw2Lvy4ZGMJzRBLglj2PcT1xM-BY', '2023-10-02 13:26:09.602281'),
('dolz0z88lc3u07kycv7jptnrsqssqtkv', '.eJxVjslygzAQRP-Fc0IJsefmlRIViTjGeLm4xCCCMPKGXbZJ5d8jKpf4MIeZ7n4938aWXy_V9tqK81YWxpthGS__bzmHndj3Aj8eW1PJomjEjZ9Fa04Ul83wT39angkVbysdL20f4wBKVGKvsDHm2OEoFL7jIQARQpDbHgQ-tpAVOqELFgAqfHAFzj0HoIeeRal7q9fLQbdopHjEVR6BTGRMFh2xmCQt2X-6MCIe2R1X2SgOTW1COb40eRMisRo2pD5IUJnS0_GRDqjM6QM0XbsspYimgzt73CRfTpH23lm9s2g3u7FuYr-P4lMR7XQhsZPxzKFR1qy7uGI1IKpYk6RgJ-nAZTV1qFo8WLdp1vP-qazbrOKSL2cyqaehGUXt6eoRBYMuzwI6Da-1HJ-ZneL5RwEbhVW1_hrHEfIGxs8v_imLPg:1qjTZ7:R7Ln2yrhFzRur_rM1hT-FmPfP82l8TBXZeAZBGyHXbs', '2023-10-05 23:58:37.123026'),
('dq27hl3glq04qdr9wc9ky82mr2zf2x95', '.eJxVTstygjAU_RfWLRPCu7sKSkMFRgcQ3DghBAkPpYJF6fTfG9pNXdzFPe8v4YCvQ3m49vRyYLnwIkjC038sw6Smp5nAXdeLLcvzho74Qntx2WLWLP74h-cxocR9ye2FrENokAIUUMtlCDFUMDCprmiAEGoSI5M1YuhQApKpmCqRCAG5TlQKM00hZA690IL3ls_DmbfwSHp3y8whLGAuiiYk-Qz16LRViYU0VHdJbLmmyEUgg0OTNSagyaJB1ZmRNm75TdjihjZWZoMXpqofbm6BfYQeGxnerQDX3vyqlnx7qfhhel9b7kfu1LwQqb4Tt54dSWmYyvuqBv50VIMdGr2qvnkz5kSq52xL73dUPO0Tt8C7DQuqlSnC_Xg1wNDpSbFeYui8DfF7uAGW8_laAUV3PKzIkWVriRUJ3z-2IomZ:1qjnog:9ZQhTUmVavOYkAbrXYbYw9Dnx3jjUqVpnr4e_iDpDgg', '2023-10-06 21:36:02.564531'),
('dt8f2tpfx22pblbk4u0i6hddxawuhg7u', '.eJxVjctygjAUht-FdcuEcFG6q4g2KKFaFXXDhEMYwsUbOmI6ffeG6aYu_sU5_-X71hJ2uxbJreWXRGTam2ZoL_9_KYOKH3qDnU6t3ogsq_mdXXir-w0T9ejPfzqeFwrWFqqemwOMh5CjHDuZiTHDFkMuH1gOAuAuDFPTgeEAG8hwLdcGAwBlA7A5Th0LoB-98Fxxi9frUVHUJH8ERToFEYmArCUxqCAtOSxt8IhDqtN24wWurkIoxdc6rV3Et6OalEcBzaZRksxThWZj9YVwtbPpGJTeEX3cBYsnSGU7WlaIykpSuTDnXnDOplUPFNHYt2m8rEPpd5HqhOWoiKahvW-IuYtpFZahvZOTmvaMw0but0HO4oWIyomrN_uJka2jDx-tP0erpbno8rEzX826xCFfr7N6f17JwBPJIxtqP7-2LIqA:1qhBH1:P_cYqvxpRJAlI4LPeZ5-agtjcq32B5tR2KpZl243NNA', '2023-09-29 16:02:27.870490'),
('dty2dcrf0xphg0wadtnb8c034c6y6bja', '.eJxVjstygjAUht-Fdcsk4d6dQqFhBKqDqGychAQJF7WCo9LpuzdMN3VxFuf8l-98K3tyHar9teeXvWDKmwKVl_83SoqGHyeBnM-92gnGWn4jF96r7x0R7fxPf1qeGyrSVzIONGbqFBHGGdJK4pi0gLpVwBIC0wYMaBRAiJCFAOVWYVNYWqYJbGIDYhIbTqUXXkpu9TqcJEVW8kdY0aAQiQjxesQwFrjHx5VRuNjEzXmbuaGjShOgaGhp6wC-nbe4Pomiyzo5I3FloMv0KRClOyMeZ2OUHh6xexNk4wPpvcd1o0VedI9TDBZu-MWCRgIlzJsZsVc84nqp5cESJN4aJDK769ZGvlmCXY31PI206DE9lY35NizJZimS2nfUw5itB38xzLOGWfHiQPIE8SFx_GahN-kr-kCfxxW63YPTQfn5BXuFij8:1qqZQC:jaZy-yZNl5Tctbf4H1V-rLV-TwQzRGHYFBHuMFufi_U', '2023-10-25 08:38:44.783226'),
('e0ywbbuwlv9zazalmpyis2yta5uq8mx6', '.eJxVjclugzAQht-Fc4uM2XsMWQSqQURASC7IGBObJaQQUuKq715oL81hNJr5l-9LyvB4Y9k40D7jhfQmKdLL_1-OSU0vi4Cv10FueVE09BP3dJA3LebN6k9_Op4bGB7YHC9VE0KLlKCERqFCiKGGgU1NzQCEUJtYuWoQy4QKUGzN1olCCChMolOYGxohS2lPy5nLXm_dTJkr6cNj-Y7wgHtuLFzF5-7gXvY6cVzDra9p4ni2PJtADm9N3tiApqvGrTpO2qSdR2BnDrSJtgRQdNT9CAFfxJrvfHJ82ILZO_lVrSARqqg6g3fH-yh29QJs0C7UEIwfqEKTfziC0zoUwbrWg2jFULuZkGC_-7QwLok4pV6JDyEPqq0t1zS5QxKPSJhsOp-jNAv2ztiXD9sPO7ZN_dBMjDjp7rolff8A9k2MAQ:1qjVH2:cno1nPu2HbLHhZ8YcaJ8-1pX2Ma8W6rMH_6nkQAP0Ug', '2023-10-06 01:48:04.277940'),
('ehkqzsz264xojkgwhmts6molohd0s0p3', '.eJxVjktzgjAUhf8L68qE8JLuKiiG0TAqgrBxQggSHkpFh0Kn_71huqmLu7j3nPOd-y2dyfNRnJ8du595Jr1LivT2_5YSWrHrJJC27eSGZ1nNenJnnbxsCK8Xf_rL8kooSFeIeK6aEM5pDnJoZCqEBGoEWMzUDEAps-g8VQ06N6ECFEuzdKpQCjKT6gymhkbpBL2zXPQWs8dNtAgkG7widSn3uYeOI1IwRx267nVqIwNV7Sm0PUsWJpDCR53WFmCnRY3KG6dN2IgZiS0CTahNgW0Q67g8gq1TqXjoOYlWQHi_cFlBHOx6XFJ1Y3ufmVuJQjT4bgzjYKn7LoJJtANxcAG-4xVJExZbJ2yS6Dj4ES7jw_RUOCYnLyfRjvvlypL3HOY3FGnt1VEXFc-eUYIv44fRlrNDV41hsFxv1nXJWF9JP7_bHovi:1qoVjJ:Tsh7fpT_MuC-ki6r6Jifn0eIWzIUkgv1Z5D35wMzyMw', '2023-10-19 16:17:57.215373'),
('es8mgknvduyhu76gacsi5wn0flo8gsga', '.eJxVjctygkAQRf-FdbRmBHTIUqJmMECMiI-N1fNQBhglglFJ5d8zVjZx0V3dffve821t4dxk23MtT1slrGcLW0__bwx4IQ93Aaqq7molRCkvcJJ1d6RBlcM__WF5TMigzoxdAhDXBfCEaxPTGLHRQDCOhOP1dhy4bQ8kuLYEh_QQ4QIwk4QThBjpE8xM6EnuDDfrNEdDuUfegoxNuIpVQBctxZGiNT18uNynfVpUq9QPvK55QqzXlKz0kFwNS5ofFdepNtWCbww6de6GMOG3MC96cVKgaH5RsBwj83uNWnqLk7Ub5TP85gefYlIYILUjHbprPcNRmxbhcoQ2yyhb6wU283WTCB22WRklaR7eGYe03ayCHSxnKs7HXjcO99gb7V-njQ_7r_BY6BXMq_KFd0YOm7ZbTmYaNe9YiNr6-QUT5Ize:1sbP6z:aVl6AV50xyRrvuEQj2aS0Udsa5mgCd2W7Vxch9DgiJk', '2024-08-20 13:40:45.327681'),
('exszvmi0vr5ly1kicukuqx5yofcasple', '.eJxVjUlzgkAQhf8L54QaQHDIEY3UkMBI3L1YPYsyLG5oqZPKf89QucRDd3X36_e-b2sD10uxubbyvFHCerMc6-X_jQGv5L4T4Hhs7UYJUcsbnGVrvzeg6uhPf1qeEwpoC2OXANj3AULhe9g0hj3UF4wj0QvdLQfueX0Jviehh12EuQCHScwxQgwH2GEm9Cy3hlu8Xg6G0kU-koLFXFGVkJkmTqZIS_ZfPh-QgFTH5XyQhLZ5Qsy91KwOkVxGNSkPijfzxpSGgTE0815nSKf8kerUyaarR6ZuChYjZH7vmSY61TMn1cT9HCQnEVcGSG40zlFa7u7rMlLZ0MzDrKHxSKVlUdNpVqyn5E6HFaIdYz_X62WyhUWuaDkKbR5d0WlxpNtdLPTYXTi3YDMJCJ7kRZCKsBlHH7SX5ChYVdbPLzl2jAg:1sd1Re:WvkcJDRUfMZQ2WJsN04zlxNp-b4Pba2BiXGLsbHweco', '2024-08-25 00:48:46.669868'),
('f2p52fjluvdsna4aq5j68q4erf219sbb', '.eJxVTstygjAU_RfWLRPCS7pTVAwjoXUUwY0TLqGEh6JorXT67w3tpi7O4t7z_FL27Hop9teOn_ciU14UTXn6_0sZVPwwEKxtO7URWVbzGzvzTp01TNSTP_7heEwoWFdIe67bGI8gRzm2Mh1jhg2GHG4bFgLgDoxS3YKRjTWkOYZjggaAMhtMjlPLABhCzzyXvcXz5ShbZCS_-0XqgQiFTzY90aggHTmsTHCJRao2jlzfUaUIpfhSp7WDeDypSXkU0ESNRM9caWgiYzAE68Sk67EuYVL3Jth2jqT2k5aVFkwB0b5CS9c_ZV41FIqgT26BN9PpdGzstgSFHhVJOS-CLRVBuSvp-r0PPaInv6Oifhf7Odu-ibCcO2oyalfutK5ePwha6GDzNz-P7Vl9E-h0ahfLbHOHZrZLj4dA-f4BjyuLFA:1qiMO2:KL00EUT2_rvr7tPhPXT9E2jHI7UEC9YUpkhSTymkLp8', '2023-10-02 22:06:34.834818'),
('fs4mmv87tq7jpru0kiwok4f1p455q0mq', '.eJxVjktzgkAQhP8L54RalnduipECw1IaAsKFWoZFlocY0TJuKv89ULnEwxxmuvvr-ZZyer3U-XVk55yX0oukSE__bwWFlh1ngZ5Oo9zzsuzYjZ7ZKL_2lHfLP_1heSTUdKyneKWaGFtQoQobpYoxxRpFNjM1AwEwG6xCNcAysYIUW7N1UABQaYLOcGFoADP0zKqpt36-DFPLhGR3vy5c4CH3vQ_hKYR7o3fc6eB4htee9rHj2_JkQgW-dEVnI7Zfdl4zcOjjfhpBnSnQx9ocCKJUJyvQSQRacL9xmqzR5P0iTYuIaBWyOog3x_8s3XYubNJoi7KI1IEIbkESoFQs9LRpRdbHNWnKNnQDJWsOavY-PxWLbO9XNNnysFnbcuqKTa3ENE-K3XV5446O89ykSFvwdN2xqjpa4WDoG7gP0s8vKYOMAA:1qhBj1:Q3r6aPWZDNAZw93N-OY1tVca2FxjBl3XzyZyBmq619o', '2023-09-29 16:31:23.456332'),
('fscrvyq5bspoq4s11fkh4exkkr1rkb7n', '.eJxVTsl2gjAU_RfWLSdExi7FoVCItioIG094CSUMDqBHpaf_3tBu6uIt7rvjl7Kjl3Oxu3S83QmmvCia8vT_l1Go-H4g6PHYqY1grOZX2vJOnTZU1OM__gE8JhS0K6Q9H1kY25CjHJtshDHFOkUOt3QTAXAH7Gxkgm1hDWmO7higASBmgcFxZuoAQ2jLc9lbPJ8PskVG8rtfZHMQC-F7m97TiPA6b_9hgOuZXnXcRq7vqFKEMnyus9pBfDuuvfIgoIkaeT11paGJ9MEQrhODTMAg6w0K71dB4xmS2hspK0T6SgvL9z5w_RObV7LQQ0m8uS3itE4nrCCTAU-NpEmkntVhHJWkLETSkCb9HRX16dbPafwuFuXMUXFxd1fLaQ3B_LZq3bd1INJXzbdOhrkM7P2pctEnvVx9s9eV7x8r0Yvy:1qhBf9:ge-CL1qlb-sTmvAfs-mbrtWmVGLbRItnzgayi5YTZTo', '2023-09-29 16:27:23.212494'),
('gc6fq929xpo5giu8jpexaueoknf8l68g', '.eJxVjctygjAUht-Fdesk3OlOoDowBqoCChsnCaGEmyhalU7fvWG6qYuz-M9_-b6lA75eysN1YOcDz6U3CUov_38E05p1k4H7fpi1PM8bdsNnNszeW8wb-89_Es8LJR5KUQdKrqtExjnLZaXAlk4oVA0KCwh0E-RAIQBCWTZkQJhBTQILQ9eBiU2AdWzCafTMCsEtXy9HQRGT7OGXZEl5yH0vHj0YcG_wuo1GHU_36n6fOL41EyFA5EtDGguwvd141ZHTNmnFjdgRhTZRpwKKUi0Y5zCoqIr4jePdAojsPahqBbmxHLifj5Xjn_JlLYCekkZZk1UpzNp0REsEUES1dOe3WbUGyEUaGjc8c_0KTYwuGbO9X-DdmofVwprNm9NH42Suy9MQbeOtGz3KMVLt-CT34Ws33KFldqu5bX_F0s8vkcyKjA:1qqfuk:p0e0KJ3H4vWdQaIAbO2gZ2oNZWzDzJRDJM0GcB9T_8w', '2023-10-25 15:34:42.634022'),
('glyq1uxn19c7jfh9mw06jsi3g6x8dpwn', '.eJxVTktvgkAQ_i-cq1leuvSmtJolBUqDD7iY2YdlgVUrGHWb_vcu6aUeZjIz32u-rR1c-mp36cR5J7n1bNnW0_8bBdaIwwDA6dSNleS8FVc4i278qkC28z_8YXl0qKCrjFwAYN8HCLjvYtModtGUU4a4Fzh7Bsx1pwJ8V4CHHYQZB5sKzDBCFE-wTY3pWexNbjXqjyZlsLxHFV0ymcqIrDSxE0k6cvjwWUgmpDlt12EUjA0JUadvaRsgsZ23pD5KptbKlIbQCNTaGwRxzu6xJn5Sz5w0vErYLJDh3hJNdFw3dqIL7y2MvviyMYFEpy8rv6iza5LP7Fg3qMiza5EXXlm3KnbKJlbDPLsl9-GptS630R42mUzrRTB28vLS2k7G00KP5L7vXH5Spcg-u35U-issU3U4uud3sltZP78z741o:1sclx2:C2e4u0ilw8dzJMImB8rmP_55ddZsPFX3t5AbLQ9JlDw', '2024-08-24 08:16:08.188067'),
('gomot6rq6zxp13mpub85vuzy7oow9pyo', '.eJxVTktzgjAQ_i-cqxMENPRWaXXCGCxWRbw4m4clPBRFi6bT_94wvdTD7sx-z_22dnC9ZLtrI887Jaxny7ae_mMMeCEPHQF13fQrJUQpWzjLpv9WgSrHf_zD8ZiQQZMZuwTAngfgC8_BZjHsoJFgHAnXH-w5cMcZSfAcCS4eIMwF2ExijhFieIhtZkLPcm96s97laFq6yHuYsSlXcxWSlSZ2pEhDDguPB2RIinqzDkK_b0SIDS4lK30kN-OS5EfFq3VlRkNgDNXa7Qx0ye9U0zt9je0oaBUkE2S0t0gTTTVp6XKFZkF4EtOiK8xoHimaL7JUF15aUZTmL7c02ZY0oXaUx942iXWqqZPeu6fWersJ95DEap5P_P4s6e3e641LVcXjZlKPovbz47Qq0lPoaXwg7qL9EvRCs9vK-vkFb4GOGw:1scsIM:MqMF73Aob5r9INhK-KN8V-bRLbojvoJig-qPsbE4byM', '2024-08-24 15:02:34.084177'),
('gudta13fcnvu1pag9583ywyc6xgirz6y', '.eJxVjs1ygjAUhd-FdctA-BG6U7AYpoRqVcQNE0JiEkCt6GjT6bs3Tjd1cRf3nnO-c7-NCl_OvLoM9FSJxngxXMt4-n-sMWnp_q7g43Ewe9E0Hb3iEx3MaY9FN_nTH5ZHAscD1_GG-NQeUUyI57HA9jGxCfN94oZ2SIDLLFAHgRN4IQWsqW3q1MBiTsMwrYEHnEBDT5TpXv58PugWjaRfKa8TInKRwpWCNhJwgPuFRyLow_a4WUdpaGqTVYNzV3ehRTeTDsqDIP2616NwpAP92r0HsmXpITVWSLVWHl0FLl4t7b0h2TpZnDlIzt23KP1skvZeKFGxckvV8UzuHLQcW3ky9fJlqbbJgpcAqqxAHMWTbvtxf2qttpuU4WIucjm_srkZR2y2j0Q-nT0fgLeXvaiO52rEw9t7DNswKe3ZVUq7aLc74-cXUq-NHQ:1qqb0y:oMvMcF2yLXsXKmgQla7N_KQEPuG27caew53ap6uIiV8', '2023-10-25 10:20:48.624005'),
('gw628cjj2tdghush3w2iekbpciva37px', '.eJxVTslygjAYfhfOLZOEvbeiQINCRituFyckoYTFDa1Kp-_e2F7q4T_83_6lbej5VG7OnThuJNdeNKg9_cdyymqxvRN0v-_0VnLeiAs9ik4PWiob_49_eB4TStqVyl4YDkIuK0CBbG4gRJFJgScc0waMCY-5uWEz10EQQM_0LAYZA9xhlkC5bTJ2Dz2KQvWWz6edalGR4haXecQkkTHOegxTiTu8nVpsgG1c75fzQezpSgRydGryxgNi6Te42knWzlt1PR0oQzs374ZktrLSagLTKoDJ-0XSRQiU9ppWNUqHGSTD7DoexAce1aoQm-ksMxRukAW-kWgFyBBDEoUlGaYViYILUfx6EfSr31Hzfr2MC7qYSFKFnh6fRunY_cD8rZgmxSv_tDPLzEJDkGKU895P4kPij2Y8jID2_QNUS4lf:1qo9f9:p88fop1kmx5xrvmSK0nCHbvRUUoCu3HoFYI8HhGw57c', '2023-10-18 16:44:11.806247'),
('gx6hhj7wigs5im8pc282o57rg0qd7p79', '.eJxVjctygjAUht-FdeskAbl0p051ghJGR0DcMEkIEm5ewKLp9N0L001dnMV__sv3rSX03uXJvRW3RKbahwa1t_8_RnkpmtGgl0s7qWWaVqKnN9FOPmsqq_mf_yJeF3La5kMd6KlpMERTkSI9o47JODQsDjMITBukQGcAQoQsBJiwuM1gZpkmsKkNqEltOI7eRDZw8_fuPFCGSfF0c7bi0pcuDhSGROIWN7spX2ATl5dDuHCdyRACDHUVqxwgDvMKF2fJ67AeTtHFUKhDYyx4-3hKFO79_an3nr2k0RIM2QcpSt0rZlOyn6nNwr2mq3IElnERQKKIPEa49woM_FWA_P28jBUHRAV6rHa1h2Lkj4wmVMeDm9FoK_1i6UzWzSOwO95354gE5jG5gO3hRHLWnNdfBWzyI94Wm6AjydXQfn4BE3iMfQ:1qrJip:s36KkuDPYdLLV5TuLWqMGgdletX-kAIme2waIoAizIA', '2023-10-27 10:05:03.167857'),
('h5oi6j94kz9dpidilningdclahumwkfs', '.eJxVjslygkAQht-Fc0INI6KTGyLikAAuiMvFGppBhsUNLJVU3j1D5RIPfej-l6-_lT27Ndn-VvPrXiTKh6Ipb_9vMYOCHzuBnc-1WokkKfmdXXmt2hUT5ehPf1leGzJWZzKe9gYYDyFFKTaSHsYM6wwRPtANBMAJDOOeAcMB1pBGdNIHDQAlA-hzHBs6QFd65ankZu_NSVJkJX-6WeyACIRLVy3VfEFrelz0waIGLc6byHKJKk0oxk0ZlwTxzaik-UlAFVVyWmbJQBXpXcALt31_fGiDEHR_eRdsPUHS-_DzAgVjr9O0L8u9JE4hgRRv8Rxvc0_fhZnYjU20y03pM5-eExV-az79ij58Z6UHy-6pqN1t3JSt5yLIJ0Q9Hki6Ko3c5umjsRcLq2YnmGqR8xg1qP6cl7PZNLw0tp0i5ecXoIyK3Q:1qhNAj:UVYSOgx8owPm_ayJqVfL5mJqFvFINLmXyM8ZOEaX9sQ', '2023-09-30 04:44:45.267032'),
('hd3hy8g9r7q5fgj9na5pcyyvx4xl0fdg', '.eJxVjs1ygjAUhd-FdXVC-BG6QxAGamJrFcWNE0IYggRUtGo6ffeG6aYu7uLec8537re2J9dLtb_27Lznhfaq6drL_1tO6IG1g0COx34seFE07EbOrB_PBOHN9E9_Wp4JFekrFS-NCYQOLUEJ7cKAkECTAJdNTBtQylzq5IZNnQnUge6arkV1SkExoRaDuW1SOkDPrFS91ejSqRaFZI-kyiPKFzyJ1zLWMY_7uF1a1I_t-HDcpn7ijpUJ5PDS5I0L2HbaxHXHqUiFGkl8FRCpOQTQKrPwypOLAEHEb5xsQqC8d1wfdBQgEwXZY-4npyI6qMJY4tqzMjmTaLMTWCKARCgWEZJIhgLBsMbB2sB1yPHn8FQqd9ukJJsPvqhDd3wb1aF0ZBLuGv0avEdt6i1rDxddu5xbXx_Z_e20qhrn0hlA-_kF8JSLpQ:1qiCpa:WlQKgGDtgPuKVINn2aB_i4lIt946V6MhFpGB6ezWCag', '2023-10-02 11:54:22.826168'),
('hnonc3ipt275h7la9hrl3vtdzcr4m1q8', '.eJxVjctygjAUht-FdcuEcDPdVfASKlgtRWDjhBAgQNSCitLpuxemm7o4i__8l-9b2pPLudhfWtbseSq9SIr09P-XEFqxw2iQ06mVBU_TmnWkYa08E4TX0z__QTwuFKQthnqmmhBOaAYyaKQqhARqBCBmagaglCE6SVSDTkyoAAVpSKcKpSA1qc5gYmiUjqMNywZu8Xw-DpRhkt2dIllQvuYO_uyx4nHc4sNWpxY2cHUKA8tB8hACCTzXSY0AC6c1Lo-cikAM1xNrKIhAGwuuH-menQPXzm8e7zjZzcGQvXllBdb2pvP8GVxZzle6qEZgFdtu5_aF8PxAxPYriMtKiXwMoz6HrgiKqI-6qMxhPDIOQR-HTkZ2G74u50i-12qPRPSRPl8T9JbXl9W1oey9rALh6stYLZaXbWkLNZwdpZ9fNZqMpQ:1qhNRM:ve4UZgLPVUPb59_1VO2sIRSKSXiSxLha-sWBmKqn3fg', '2023-09-30 05:01:56.331761'),
('i6wx78hsh7gc8rosf66ximw0m44ssc9q', '.eJxVjctygjAUht-FdeuEyEW6UxQNLVApIrhxQggmkggVOyidvnvjdFMXZ_Gf__J9a3v8dWH7r46e97zUXjRde_r_KzCp6elu4LbtRpKXpaA9PtNutJCYi9mf_yAeFxjumKpXYxvCCalABa1yDCGGBgYOtQ0LEEIdMinGFpnYUAe6Yzgm0QkBpU1MCgvLIOQ-eqaV4rLnS6MoapLefFYsCY-4jzYD0kOOOnSKTeIiC9Vtlrq-M1IhUMCLKIQDaDYT6NhwIlOpbsCuKsjUuBeCJDfDeW0ESTCEbs_x1gMqew2PNYiSwzWYB-DN9T_LZa2AqN8lUxgMmz5PmMiHBYjmM6FyeijXfTAveb5FRj7U-u7OOKXDLvMrvF3z6Og5oxWvYsGGfXN2PrJbExcH1rL6FmdR5q3Mcvpu5VK8Sk9WjfbzCyECjM0:1qhxzm:pVB1569U0reppNX7CCsSF9e8A-dChYUjZroDD4ZrpIY', '2023-10-01 20:03:54.820604'),
('ig36c7b392lgc5ptln1xewvu00tpbit3', '.eJxVjktzgjAQx78L55ZJwsv0VrFqaIHRiqIXJyyhhIeoYC10-t0bp5d62MPu__Hbb23PL12-v7TivJep9qRh7eH_LeFQisNN4Mdjq9cyTStx5WfR6i81l9X4T79b7hty3uYqnhkOISPIUEbs1CCEE5MjKhzTRgCCwigxbBg5BCNMTWoBBkCpA5YgiW0C3ErPIlPc_LFrFEVVit7LkxnIUHosGhgOJGvZYWmBy2xWHuO161FdmVBCuiqpKBLxuGJFI6Fe12oG7qpAvTZvAX-1tYIiwuEKer-_Sr6ZIuX9CoqSBKvICiZseHO9UzorFZAZu2LRb2uv8hU4nJQoGEpru0rzcPJs-JPICArAfuH3_vvtqfWwi72MbxYyLKZU38c0ScxX84SmYt4cWNjOcTfi1Qde1rzJaHP-PG1JXFkR0n5-AfrIi14:1qoabf:wnlxilRGQwQoT5GYe7SmY9gpaSQy3CU93Wcp6Qa0Fo8', '2023-10-19 21:30:23.384475'),
('im3d9rldwyi8fzp51ktno01thyd930fy', '.eJxVjktzgjAUhf8L6-qEyMN0V6g60AZaxxdunOQSJBDwgY4lnf73xummLu7i3nPOd-63tWPXS7m7duK8k7n1bNnW0_8bZ1CL9i6w47EbNjLPlbixs-iGk4ZJFfzpD8sjoWRdaeLFyMd4DAUqsJePMGbYYYgI3_EQgCAw5iMPxj62kU0c4oINgHIfXIG55wDcoWdRmN5ycDmYFoMUfVzyGchUxtFSR3Yioy5q5y6EkRfVx80qjMnQmBDHF8UVQWITqKg6SGhWjRnNQhNoVs49QBeZm1R0RKvMScObZOspMt6vpKox1dBTvXfew_iUz2pTGKH0FW6JznqK5_W2ekGZnrhZM63TWVJm60-9bai7rfaI9venVnq7iQu2_pRpNSXDpQ4OcFL85LcHqlgIvC25B2_zBVbjaUsGbK-CEH-QvrZ-fgE8fYxb:1qnnwy:C6j0m1dGU-PE8tWE9_mr6dkBjoIz7A-S8s8Mm09iiJw', '2023-10-17 17:33:08.918648'),
('im4uff7zn2gor63a43neevudz87hqjwl', '.eJxVTstygjAU_RfWrRNiAOlO8BVGQFuK4sZJLkHCSwu2Kp3-e-N0Uxd3ce55fmt79nnO95-daPcy1V40XXv6_-MMStHcCXY6dYNapmklLqwV3WBaM1k5f_wDeEzIWZcreza0MB5BhjJspkOMGSYM2cIiJgIQNoz40ISRhXWk28Q2QAdAqQWGwNwkAPfQVmSqN38-H1WLihQ3L-dzkKH06HtP9UDSjjavBrjUpOVpG7uePVAixPG54pWNxNapaHGUUMe1up65ylDH5G7wo8QIojEKJyXx5UWyzQwp7TUoSt2frElQHG5L1_tI56UqpEO_H992Eb3uJlUVRoAUJuGcXoNoVu8KHyV4ViSFj8O3-6i43229jG3WMixm9iBflwsynqJm2i-ipYdDY-Gs-PS0T0jsGLxrzq395QFPVwft5xezyIqu:1qiFas:5oVM2os1_IBH7p3m7dJeQbX-ReMaDGcGl3IYPTi4HY0', '2023-10-02 14:51:22.241755'),
('in5pp76yiy4xwwtcm1159bjzisxw2v9y', '.eJxVjstygjAUht-FdcuEcNF0VwGdMApFKQIbJiShhItaoKPS6bs3TDd1cRbnfP_lfCs5-Rqr_GvgfS6Y8qJoytP_W0Fow08zIJfLoHaCsZZfSc8H1e2IaFd__GF5TKjIUEl7qS8gXNISlNBiOoQEGgQgvjAsQClHdFnoFl0uoAY0ZCCTapQCtqAmh4VlUDqH9ryUvdXzeJYtMpLfvarYUBEID79PWPMFHvBpb1IbW7i5JLHtIVWKQAHHtmgR4MmqxfVZ0C7u5EzEloYuNmbDLkpN36FmEIVwd7gKclwDqb35dQP8qTElv21t75NtGlmIr0HUgCxK5XiN72CQ1W2V1nvhQ3dmetaFVz9i7e4-PxVPWeKV5BiKoF4jtchRwKGG2zSxLwfjw3kDpsFQuHUd-7Zl-9e-G2Es8swFys8v5H-KzA:1qhCgL:H31ApryE05uhg-r4K1KpfhsdR5hG1ikR_T-t8B225d8', '2023-09-29 17:32:41.458060'),
('isa4h6yrlvph8y91tzv1vdlrtuhb7qm5', '.eJxVjktzgjAUhf8L69ZJAvLoUlAnjMGxPlA2TBLCECC-wKLp9L83Tjd1cRf3nnO-c7-tnN76Kr914prLwvqwoPX2_8Yob8TxKdDzuRspWRStGOhVdKOporKd_Okvyyuhol1l4sAuXIchWogC2SUNXMah43FYQuD6oAA2AxAi5CHAhMd9BkvPdYFPfUBd6sMn9CpK01u99yfTYpDiEVdszuVSxnirMUwk7vDxc8xD7OLmvN-FcTAyJsBQ37I2AGI_aXF9klztlBlNQxNQO-cZIJvDONH4TjSxSThIms6A8d6TurFJPdUk4sMijC_FvDGFWGdqihLd3DN1sJNoC7JN0i6jqiLRCmQpfhwUGUjdQLJ-PrXT2T4uabqSy3oWjHRX9_nh7MQRv2xJv35MZvlXiZQXLOazbXu8eOkN5dJZD1Pr5xcdG4xb:1qrKeN:6bpOLDCuRT519dHZpD8ZebNbLHT1sc_ZIA4DDtXfZOg', '2023-10-27 11:04:31.008762'),
('j4p58dpftypeem5ft8lae8cjvchnoc2z', '.eJxVjctygjAUht-FdeskEVC6U0QNLVAdvMDGCYcgAYIXdKR0-u4N001dnMV__sv3rR3Y_ZYf7g2_HkSqvWlYe_n_SxiUvO4Ndj43AynStOIPduXNwJFMVNM__0k8L-SsyVU9G44IGUOGMmKmQ0IY0Rmy-Eg3EQC3YJwMTRiPCEbY0i0DMABKR2Bwkpg6QD965Zni5q-3k6KoSf7l5skCRCBcuuko9gVtaL02wKYmLc_7re1aAxVCCblVSWUhvp9WtDgJkFuprmO2Ksit3he8MDL8kLZBGOHAfgi2myOVbf2ixF7hGF630T9s95IuSgWkyC-ObRw6JA4nw6gAFBVTGYVO682OKJYrHMwAx8W68ntGve3ivZux3UoExdwanK9BK5v2ngpf-u1nHTulRycdWVoLffdeh1zM9vF0ebqsGu3nF9vKi8Y:1qixzj:hAflvq6QCQYw38mqojSsQ-RNJBGJ4Vwgr_MQ16yThqw', '2023-10-04 14:15:59.089477'),
('jwej57r2rh879vg8b531l3c8zf354kwt', '.eJxVTstygjAU_RfWLYMQELpTVAamgdrhIW6cSwiSAIqiRej03xumm7q4i_O-39IB7rfycO_o9cBy6U0ypZf_XAakoqdJgLbt5IbleU17uNJOXjfA6uWf_gSeG0roShEviJkhBVmZkoExB0J0guY6CGACAQUBMVBuAiXFHCAnqqkJViM5oEKfaYYhSq-0ELvl6-0sVkQlHbwycwgLmOdGozvzmdu5p0-d2K7hVu0utj1LFiYlU291VlsK3S1rl58ZaeJG3Ai2CDQxmgI4THWfYw2HLsJDzyDZKML78Hml4pH0QXgc323vkjvVNFgFYdykyVrDzrbHq4WCnahPE9zv-Wfl87jc86OGV0RNh-mpeNzvvAKSLQt4acnDmCRZ5w_0gyjGY2GVvL1EM8bbNtpQs7UL8btmtFX0VUk_vzEkjqo:1qnnaJ:D8i18a7IFom_92-mxFRkPbK0BrXE49xuF4ld-2rU_wg', '2023-10-17 17:09:43.764703'),
('k0386f4p0w1ndq8zvnl3sjxfxsker23q', '.eJxVjs1ygjAUhd-FdWVC5Ee6U0QmtIaxg4BunCQESQC1gqWm03cvTLuoi7u495zznfulHcitKw-3ll8PIteeNUN7-n-jhFX8NArkcmn1RuR5zXty5a3uN0TUi1_9YXkklKQth3gxdSCcsQIU0M6nEBJoEuByx7QBY9xlMzq12cyBBjBc07WYwRjIHWZxSG2TsRF65cXQW06689AyIPk9LGnARCRCtFXIwAK16PRmMQ_ZqLpkiRe6-mACFHY1rV3As0WN5FmwJmmGUcQbAk1ijoF1vLNwjCBeHvv1vRckXYHB-4llZazlDuB4rl698D0PqrFQRqmvcOObe7npo3QDogCpKE0kbpDCaiV3kvU4Pv49lah9FhYk3YhIrlw9jOaEZnTvR5ROmo84BW9zX8Wwb5cvVRd4arK1JeXd2dto3z8zG4xJ:1qj9jr:WsyH9BKKN_ZJRpVyI_DK2u-nCgZ45j_LZCQ0ukCbYA4', '2023-10-05 02:48:23.495414'),
('kdo1584e1wc0osg16t3626nax8u7evpj', '.eJxVTklzgjAU_i-cqxMii_SmuIUxMG6gXpzwEoYEcEMHpdP_3the6uE7vPetX8aB3W_54V6L60Fy49MwjY__v5RBIY4vgp3PdbeSnJeiYVdRd8cVk-Xwj3873hNyVufanvVcjPuQoQw7vIcxwxZDnnAtBwEID_ppz4G-i01kepZngwmAuAu2wKljAbxCryLTvXnndtItOlI8gzydgoxkQDYtMUNJanJc2uAThxTnbewHXleLUIpvZVp6SGyHJVEnCVVcabTM14Yqtl4Gut7Z4Qg0KKarRrJkgrT2EaoChW2B6Gj3mPvBhU-LV2EeqkFvpwbWXuUVXRMUVksVTTdPWlGbtotmnywVTYKC_o6K2_02yFiykJGaeN1AxQs2bSIfis44GmN3Xzc8iWEzu95yFKmar6jP54vZhRjfP-ati6o:1qhBM5:q1dF-jYsLa8BYJEfqf7vtkd90dds1LclI5oo31uMCcY', '2023-09-29 16:07:41.156930'),
('khjyvkjbiswqz7s3x61kmovg5g6g2o5m', '.eJxVjktzgjAUhf8L69YJ4SXdKSoNNTBWRWHjhBAkPBRBi6bT_94w3dTFXdx7zvnO_VYO5HbND7eOtQeeKm-Kqrz8vyWEluw0CKRpulHN07RiPWlZN5rXhFfTP_1peSbkpMtlPNMsCMc0Axk0Uw1CAnUCbGbpJqCU2XScaCYdW1AFqq3bBlUpBalFDQYTU6d0gLYsk7356_UsWySSPbw8cSkPuIe2Aqk-Rx06fRrUQSYqm33oePZImkACr1VS2YDtpxUqzpzWYS1HEEcG6lAfAngTGX6BVCy2d5_3nOwWQHrvflFCXGwFLuZw6XiX1C1lIRK4XmkRjHpfoD6eYYDd6BHs4iKeTR5RMTGw8PJIVLm_Hp4KRbz3MrJb8aBY2CM3Q85xyRtvvJ6TjXFqHFurL_UHnThf70HfWh7G2DodTeOo_PwCR02L8A:1qnIwr:cpHV2xSdF-trSvsGCa2LE9k2Wxuw6lrsKEW4cCENoKY', '2023-10-16 13:26:57.040512'),
('kime6m0983ovivebyfs46c11vnne2mcv', '.eJxVjklzgkAQhf8L54SaGVZzE1xqSMC4oOKFmg0ZBDWiEUjlv2coL_HQh-733vf6R0vJ7Zqnt1pcUsm1Nw1qL_9vlLCDOPYCOZ9rvZKcl-JOLqLWxxWRpffQn5ZnQk7qXMWBwW2TIsIFR0ZGBjZl0HQYzCCwXcCBQQGECDkIUOEwl8LMsW3gEhcQm7iwh15Epnrz1-tJtSikaIOcTpmcyQDHHYaRxDU-LizmYxsfztu1Hwx0ZQIUXUtaDoDYeiUuTpJV60pNR3wVqNZmHwhXiRUVCZiNhu1seZdkMwHK20TFAUXF3Ig6bH34wRefHlQhbhM0NnbVuE2KuRmOYhB1cZusJmW4WRThaGhFXdL0rMdT6263DTKymctZMRnoafjeJKzcmvKetV3MP1EGh843ir2NsW_29XKMvP0eX5um1n7_AK3Ri7U:1qoxZx:A7TzSyHfmtvKrQeQ0ktqbmyPMGHweZ6xFvMgh3l_lxc', '2023-10-20 22:02:09.686120'),
('kkyv5o9y40hay596t7eatooiqjil0u74', '.eJxVjktzgjAUhf8L6-okYBC6q6A2TAmtpTzcOCEJJUB8gFal0__eON3UxV3ce875zv02NvR0rDanXnQbyY1HwzQe_t8KyhqxvQl0v-_HSnLeijPtRD-eKyrb2Z9-t9wTKtpXOs5EiSxmTVwEucltu0RTBzgWmzoUmY4LKXAgo27hcst2TAAEshFnUyYoLVzIbQ3tRKl7q9Fxp1s0UlyDqlgyGckAfwwYEol7vF0h5mEbN_ss8QJ3rE2gMI9t0bpAZLMW1zvJVKL0DNTTAZVMboEwzhGJnwDx80koz5KmC6C9F1I3MPTfQDh8Xl-84MCXjS7EVuSvmnU8q9ZxJfMhB7kidZSGV-I3UHOuUdzWRC3q6P32VDKss6Ck6ZuMav1U8TwMzsjEZcRTcIkPynq1TxBhx-uy5VdGUkx7t4cht-fGzy_Llorf:1qiETW:RHFil29eYZqfhQeDkTab3b8n9h8ttPE6hFddAe4drv8', '2023-10-02 13:39:42.152564'),
('ksaavlyq7lfpo52i4p5079sz7ham1q61', '.eJxVjktzgjAUhf8L69ZJwru7CtaGKaG-UNw4IQQJEEXAUen0vze2m7q4i3vP-c65X9qOnvtid-54uxOZ9qIZ2tP_W0pZxQ93gTZNN5Iiy2p-oS3vRhNJRT3-0x-Wx4SCdoXCrcwCKEtTzlEOdRfZ0DGgodsopYhlwHZdQB3TcYDOc8PMaG7p0IY5cE3kOAhaKrTlueotnvujalGR_BYU6ZSJSAR4NWBIBO7wYW4yD1u4ajaxF7gjZQIp6uu0dgHfjGtcHgWTsVQzUE8BMjbuQLhMTLJkKPKZSbyLoOs3oLxXUlaQDIlB_Ap8eMEpm1aqEJtk2MpwOpfbclyE_gSE_lYm5SskayLCEituD5PlHoa_T8XDdhPkdD0TUTl3RwnppNnOrtRYk0lOrbg5offzqiWR4T_3OEf94hNOELstmPb9A6zLicY:1qlGqk:vfU3LRpan_siNcdUpjrxHGkpLAN7itohVMTU8OQGqDk', '2023-10-10 22:48:14.861986'),
('lugzpl0tbtdbph2ymnccwks9eezsuzqm', '.eJxVTstygjAU_RfWLUMSnt0pFAsjcdQKwoZJIJQAUSs4VDr994bppi7O4t7z_FZychvq_Naza85L5UUxlaf_P0qKlp1mglwuvSp4WXZsJFfWq6-C8G75xz8cjwk16WtpRyVgABWVRRjQKaAVBMiybVhYDgSwKnWKTMfUIIO2hqgGKAWOjcyqsCytspghQ6-skr3183CWLTKS3cOargq-4WFwmAKAedAHp51RuIEZtJdj7IaOKkUahUNHO0djx2UXNGdeiFhITMSVBhHrsyF6Tw08LSY8RQDvR04SX5PaL9y0KPIiiQNYu-FnuWrnwnqTbGGWxA1e7bo0CbRMHFAqIoQF7rAXjZnY3qOp1dP7PCqesmNYkWTLN03mqB30vLcP37eMfXl9ToYlHWCT43Ly6mztuSh1tiMh_ng5L5SfX13wis4:1qqarP:TtUqsKrvKTYi_U7ISqHcgt40D3M2CCSU2b7YFvVzslU', '2023-10-25 10:10:55.925783'),
('lwczm0sl4kfhyz4adss5lf1cynffuwm1', '.eJxVjktvgzAQhP8L5wYZ8-6t0AQZBRAtEOASGWOCweQBSfOo-t9r1Etz2MPuzHyz39IWX87t9jLRcctq6VVSpJf_twqTnu5nAR-Pkzywuub0ikc6ycsBM-786U_LM6HFUyvijWpCaJEGNNCoVQgx1DCwqakZgBBqE6tSDWKZUAGKrdk6UQgBtUl0CitDI2SGjrQRve3ifBAtAknvflt5hEXMR-kDKSFDE9p_6MRFBuqPeeb6tixMoIJnXnEb0NzhqDswMmSDmAd2RWDItDkQJIUeduk9eEcwdK8Mb1ZAeG9h18MwWepRUoC1659qr58L29JLr6WH9GITq2VCQJj0WtG1LIDxrUhiUHZvoEh2Wvg5P5U9ytxv8CZmUbey5Z2zNtPEMdzV5FpGjoOvXVbw8XCNlErj6gLxpYk-T91eTaWfX4V3ieY:1qoQLF:Je-PI6dA8z4QEZ9WnLWmKzn6FnnR3rBqgn4LiDbkroA', '2023-10-19 10:32:45.393608'),
('m8k8wcpbz2vkot6evdvr7jsf6n4vw75l', '.eJxVjctygjAUht-FdWWSgAG7KygWRnBqKSgbJjdKuCgVHYVO371huqmLszj_7fvWcnK9lPm1F-dccu1Zg9rTf40SVovjZJCu6_VWct6IGzmLXl-1RDbOn__wPC6UpC9VHRgcmxQRLjgyCrLAlEHTYrCAANuAA4MCCBGyEKDCYjaFhYUxsIkNCCY2nEbPolDccnY5KYqaFENQ0jWTWxn4H6MPI-n3_nE3Z66P_brbJ26w0FUIUHRpaLMAYu80fnWSrE1adSNxVaFNzKkQxod5NL6MUfV5D-VNktQDKnuPqtoIlyGK4tWwcYMvvq4nYJkto_qQ-mYYKx-tQLROqq3KRPGuzmKlj7t6u2RmODGOyZjtg4Kkb3JbeQt9EDLr3nFOz2xuOGbHPS93bzhg8vXghfR0TGcbROXgNKb28wu7PorW:1qqaie:Mh5t9Ku0pkgJcqcAhpQls_Ej0jmCA3OX8q2KpKXwFBo', '2023-10-25 10:01:52.612686'),
('mf3uu0qigbx1qeki59ul7szm67qwcr9i', '.eJxVjctygjAUht-FdWUilwjdKYoDraFaFGTDhFwkBJSKjkqn794w3dTFWfznv3zfWo6vlzK_duycC6q9apatvfx_FphIdhwc3Lad3ghKa3bDZ9bpiwaLevbnP4nnhRJ3paoTy3bI2AQ2oxBODGwbxgRy7kxcYHDDYiYEnGKHQIwhcCAEEFPA8cQtTEoth6vRM-OKW44uJ0VRk-wRlsWSiEiEwbYPxkgEXXDc2MQLYCDbdOeFrq5CoDAudVG7gKWzOqhOgjS7Rl2PPVVodtZQWMV7G_XTHvUHM_q8CZz4QGXvqJLmar4yUUzsdy_8oks5AEsUrwGaE2vfbHtUbcE-WTyieSay6mBE8UauYjnOYl-igXHc9VkacpysRVStx3yt33PXz04tLlI_kaMHaVLEE699k_326gTTpN1AX4w-4GzpaD-_Vt2MIg:1qqazr:2Jt4YUzbxl23h_2VYTkXs_QzlMhpqaSfPRR72VQrUlY', '2023-10-25 10:19:39.107045');
INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('mv7ve8cuuf6kwjfdhuoke7zc9kna60jp', '.eJxVjMEKwjAQRP8lZylJ09itR8HvCLPZlQRbKY3Fg_jvVrzYy8Cbx8zLRKyPHNeqSyxiTsaZw3_HSDe9fwXmuTZTERn1iUVrc5lQxvPP72D_kFHzNleAQgAGCZ62YPK2F05WuqG9JiTve0Xwio5aS0ngWCmRtUxHcmzeHzsTONY:1rNenv:roBsuupGkDCUa0zwmiV2_AvIC2fydS139TOstTt2g10', '2024-01-24 15:03:59.964919'),
('n106wpjh49vqmkamhfc8i7dpp935stt5', '.eJxVjstygjAUht-Fdcsk4SbdKSKCDU6rorhhQggl3KSiVdLpuzdMN3VxFuf8l-98Kwm5Xork2rNzwjPlRYHK0_9bSmjF2lEgXderDc-ymt3ImfWq2xBez_70h-WxoSB9IeO5ZiE0oTnIkZlpCBGkE2AzSzcBpcymk1Qz6cRCEEBbtw0KKQWZRQ2GUlOndCw9s1xyi-fLSVJkJRuCIvUoX_PA3wkfhtzv_fbdoI5v-lV3iJzAVqUJpOhSp7UN2GFW--WJ0yZq5AjiyEAT6WMAb2Mj3FYCi6ke8hsn-wWQ3ntYVnC9xUMoPtCrE3xmXiWB_hALF4ZzCZ1PUSxigPdBETdvAnt4wGXNj018xyW-HzfjU5E4HoKc7N_4ulzYavBFp26zWQ1e2xWtFsFuNVsn2nLITlCYOcElczfQXnrFTvn5BUp2jD4:1qlxac:qEPKeFYLNw03RwWs_Cw7NcdCtWAML70wtMG2zXumIK4', '2023-10-12 20:26:26.309741'),
('n3r1zrm0j9in3p5mntuqdgl7uxw5zeqv', '.eJxVT0tzgjAQ_i-cqxMeQdKbglqYEoaKCF6ckAQJEF_oYOn0vze2l3rYw-733C9tR27Xanfr-GUnmPaqGdrL_1tBaMMPD4CcTt1YCsZa3pML78ZzSUQ7-8OflmeHinSVklNeQpOaFoI6M5htl3DiAMekE4dAw0E6AY5OCSoQM23HAIBDGzI6oZyQAunMVqYXXqrcanQ9qhRlyT-DqlhSEYnAXw--joXf-YcPSF3f9ptTlroBGisSKIxrW7QI8GzW-vVRUJlKNQNxlUCm1kMQJjnEyRTgZG1Gq16QzQIo7h3XjR56sR7WFL67wZktm0egDOtARp7fYwOLrRcDPOR9vonvecKaKFlbuJ6bOMn78LdUOmyzoCSbWES1KhVbK7ZciC6bBrebNdKH8_7QzMlbjMNR7GR7ISVKPPU1b7TvH6BTisg:1qiEhz:PO11XXuy_PlAKGBqj6HLNKDuUMo4-CPpULWzlLgMatA', '2023-10-02 13:54:39.649385'),
('n54dfz7h6jzk8232uptrpb709vcx5avi', '.eJxVjslygkAQht-Fc2LNIALmFnEJlICmEMWL1bMgM4ASkSJOKu-eMbnEQx-6_-XrL-MA3bU4dC2_HAQzXgxsPP2_EaAlP90FaJp2UAvGKt7DhbeDWQ2imvzpD8tjQwFtoeNoyGyLmMA4M4c5jG1CseVQnGNku4ihIUEYm6ZjIsId6hKcO7aNXHAR2ODie-mF55pbPF_PmqIr-S0oyIKKWAT-Rvk4En7rn95H1PNtv2x2qReMB9qEiHmtSDVGfDepfHkWtE5rPQo8HahT6x4Ik2wUyQyH6vgZ3noB2znS3s9IlmYkNypKZmrpBR9sUd6BZSY1cDEbhZJaUR2ieOqb8bSQkUyrLJnLvQzqLMnU_vepVO13QQ7btYjlfDxYJaFoQ1ivdipRAnUOijcUXLZ-XS6h82SEvLcbbZtj3xvfPw0NjGQ:1qoz5F:SxvcvItmLUwkOlnM9glnctimb2fOf46fDFZyWGufpdw', '2023-10-20 23:38:33.099919'),
('nc3jx0r34izsrgu67r7r1uunycrl9ctv', '.eJxVTstygjAU_RfWLUMgQelO0dpQgfoCdMMkIUgQFIUWodN_b5hu6uIuzj3PbyUmn00Wf9b8FotEeVEMS3n6_6SEnfh5YEhV1WopkqTgLbnxWp2XRBTTP_4BPCZkpM6knTNGx8jUCbegYUKQMDZmyNSQmWpwTMAIUpSMRxQa3NIYQhBCYIIUAMq5rqFh1o2nsjd7bi6yZYjsnIwumPCFg3c9Bp7ANT6vEbOxiU9VFNiOpUqRRvWmoIWl8Wha4PwiWBmU8npiS0MZwMHgbvfI6ye9l59ab9MKEr5qUnuX2HBnru7lE7C0nWuyOMlCLHVJ4YZB5vXzu7_Ya-42y_elzCjd7pAfWy8_wsP22LmbYVTQHyInJeFK-LmL0pWKtyA26p33Zs_0KFnHXcXy9uPO_evi3PKvxros32mII_2KlZ9fggyNsA:1qqak9:WslUXvZHJdD0qvQ_myKFlky4YoXoViLQF9HUdDNzxvg', '2023-10-25 10:03:25.945935'),
('ng2do7z99repsi376e5exp7h4i6283jy', '.eJxVjs1ygjAUhd-FdcsEQhC6Q6w2jMHSKn8bJ5BkCIIi6FTo9N0bp5u6uIt7zznfud_anl4v1f468H4vmfaiWZb29P9Y0PLAj3eFdt2gt5Kxhn_Rng_6a0tlM__TH5ZHQkWHSsVNxymEYVGBXAdBVoACzSxkMeYa0LIBM2cCli5liBkOAFyg0jUotxHg0HK4gArac6F6q-fLSbUoJB-DqliVciMDvJuwEUo84OMHKn1s40OXxn7g6soECvPSFI0LeDpvcH2SZRu3aibqq0AbW_cA2WYonLwpnHYgHL8kTZZAeW9hfYBkQSCpI7j2gzNbHVQhvuUJGfNk2YYtQWGCAWl3t00Swc3CG7O7tsiMbLsbs_H-VDzlaSBoEslNHQER6e_128iGeenhbTofXc6OAzJ602brZfx5WeceleeIdFFqYu3nF36ojJg:1qqauV:KlbFdHkvZpIIw-7FjNzH3W2Y71_pINKIV0cWP_BTDAo', '2023-10-25 10:14:07.523875'),
('ng88mqobln1g6teraan2ph5d0tobyzs8', '.eJxVjctygjAUht-FdWUCJArdKVIapsDAUC5umECSIVwERcdKp-_eON3Uxb84579830pJrpemvM7sXAqqvCoQKi__nxWpO3Z8OGSaZnUQlPbsRs5sVp2BiH735z8dzwsNmRtZ102z4hokHFkmMmgFKrSBCFJqaQZcA6pvuFFbhCKqmQAwjmpLI2yNADOgybghR8-MS26zuoySIifZ3Wsqtxah8PDngrVA4BkfY1TbeI27KU9tz1JlCFT6pa96C7B81-N2FPWQDlILsWVhSOGj4CcFCpbtEiYO8MVNkOwNyOxX0HaGv_dhuI_uH7Z3om4ngfheJLE4JLST6oukAL4e6cXgI38fdIe2Q2EmO64nwgfjmC6H3OMki0TYRoBHKluN3nsbx128dZzyVGfNsrJdMpocxotm9RMOv4il5y6ZlZ9fOt-Lxw:1qqbKE:1ft9b8r6VIRPpwgMdn-I5mdXTO2sqgWhZP65PVE-eJ0', '2023-10-25 10:40:42.301771'),
('nvr882tx7b1hxv05s9z399ucvb4r4zt5', '.eJxVTstSgzAU_RfWyiS8cdcXGKYBbSsUN0wCYUiAFgudFhz_3TBu7OIs7j3PbyUj16HKrj27ZLxQXhSoPP3_UZLX7DQTpOt6teVF0bAbubBe3bSEN8s__uF4TKhIX0k70AvLoBopWKHpJXEtmkPDzmEJgeWAAugUQKhptgYos3OHwtK2LOAQBxCLOHAOvbBS9lbPw1m2yEg2BhX1cx7xAH1MCIYc9ei0M_MVslDdHeNV4KpSBKg2NLRxATsuGyTOPG_jVmIiK2loY2M24ENqhtNiCid8D_mNk8QDUnsPRa3jNZbYaNtV8FX49Vwo0gO-YbEwU4HHaI1B2KZmlCAzTdI7FshIE6_BYsej_Twqnj6PQUmSdx4Jz1VNAbfrLPb2sQg3nJ1LlPtdCQA1nW6MRjy--r23ewsGEyg_v7SNisQ:1qqaqm:u4yZRAVGVeVOYQm1qIYR2fQngcIeOL8b7BaiGlN9w7A', '2023-10-25 10:10:16.429253'),
('o2rnlvvfrmct04sq7baq6xb6l50dt9ie', '.eJxVjktzgkAQhP8L58TaXd45io-CkjUaQPFiLcMiu4AvUCOp_PesySUe5jDT_XXPl7Zll67cXlp-3opce9Ow9vL_ljGo-P4hsOOxHTQiz2t-Y2feDsYNE_XwT39anhNK1pYKL3SbEAcKVBAr1wlhxGDI5bZhIQDugpPpFjg2wQi7hmsCBkC5DSYnmWUAPELPvFC95Wt3UC0qkt-DMpuCmIvAj3sfU-G3_n5pgudbfnVcJ17gDpQJZaSrs9pFfD2sfXkQ0CSNmp55CmgS4wGEUWrSKMV0BDj8uAm2miDl_aSywlTGiI7iz5kXnPJp9SgsQzIR4XRSKcagvY9SOcZpBGYo1SPN4k77oKZRIMLfp5J-sw4KtlqIuZy4g_er7lw3l13gGcYsv9yrEeenRSSXs1jWUzKWjbtDiHXEPGjfP68xiuA:1qknBM:TXE7zwRbB6kmIGxnW0FV4EwFThVU6Ar_Cpu8lmxGmAE', '2023-10-09 15:07:32.128474'),
('o3pl175sc81nrktiz7rf03si47ytjg10', '.eJxVTstygjAU_RfWLQOYgOlOkWqowKiIxI0TIJHwUBQdlE7_vWG6qYu7uOf9rRzo_ZYf7i27HkSmfChQefuPJTQt2WkgaNO0ai2yrGIdvbJWdWoqqukf__K8JuS0zaU90yk3aTJiIwsBmjDdYhAww-SaBDlHnANk6UyzUsoZAlLNKGC6gUZjkJraWIZeGZe9-fvtLFtkJHu6eTJPRSBcvO2x7gvc4tMapjY2cdnEke0iVYq0xLhVSYU0Fk8rXJxFWke1vJ7a0lBHYDB4IYF-6EG_SKG_6QTdfWpS-_CLUvf60vBnpb603Us2L4fCkoROTwy39PoJ2IcTjfQrgxSrJzHWuWfgRxButWDmQLIZRkX9PnY53a1EUERIPUIQB8HX0qoownDnF9HSzwlMMWwv3YQ0xTtbnO-LTj86ys8v33SLZw:1qji4l:O9rXDlAaTjjr-uAwydNMxBWNASs6Oo3X7-OG6xrSkDA', '2023-10-06 15:28:15.885894'),
('olcnya2ozohy1fsn0opjoylbjssah9jz', '.eJxVTstygjAU_RfW1QkhIHQpBRtGoFrEx8YJSZAAUQQdkU7_vbHd1MVZ3HueX9qeXC_F_trxdi-Y9qpNtJf_v4zQih8fBGmabiwFYzW_kZZ3Y08SUU__-KfjOaEgXaHslkEpsCC3HdPiJrRzxuyMmJwxZFiI5TkggDtGblBgw8yaOBAipDuI6tQkCJoqtOW56i1Gl5NqUZH8HhTZjIpYBHg1YD0SuMPHpUldbOGq2aRu4IyVCGTwUme1A_hmWuPyJKhMpcJAXGWQKXoYwmRrRiXW47cFiMRNkLUPlLaPygqG5QqFyQLO3eDMZpUqxMNW-lWcePcwOSj-AEK5QnHii530y3i2rKNhJ0Oo8DsqHXabICfrhYhL5ozP80k68hK_PRMRGh_vzonf-j5BO9_rV4Z_tMtPvW9OxL142vcP43qLjA:1qnKEN:a2-TORoPQEkDMxkk_AwUmA9Y-yJTGD19KHi6O-TkVac', '2023-10-16 14:49:07.048973'),
('otqq5ostlya3uqske3dhlri7p0stmirr', '.eJxVTklvgkAU_i-cqxkEdOhNcMnQgksQlYt5s1iGzQUNS9P_3iG91MN7yfvW962d4PlITs9K3E-Sa--arr39xyiwTJQ9AddrNSwk57mo4S6q4bwAmTt__MvxmpBAlSi7AMCWBWBzy8BqUWygCacMcdMenRkww5gIsAwBJh4hzDjoVGCGEaJ4jHWqQu_irHqTweOiWvrI1kvoksmV9MiuI3ogSUXKrcVcMibZ9RC5nj1UIkRHj5zmNhIHJyfpRbIiKtR04CpDEZm9wQ9Z68_mlh_6hi9rCfsFUtom6Ejth1njz1j76Xo3vsz6wjxOv5o4TdI43VjHlKAgnTbHcGfE4dQIRossnsVFXMzroO2firr44J1hv5GrdGEP3aPjXA6Dc-Rk21uZHJett_vYR2Z0X_N6V63Xi9NtWeZo89xoP79SSo2V:1sPkHI:1NnOrkJDqzwCb8__aDszeTIQK23e-mJZjIcurcIjvdI', '2024-07-19 09:51:12.784261'),
('p2y7kr5jkmneb4doxsfvfj6gupc188f3', '.eJxVjktzgkAQhP8L54RalufmKKKCshYGQbhYy7AUy8MXWiqp_PdAcomHOcx099fzJe3Z7Vrubx2_7EUufUiK9Pb_ljGo-WEU2OnUya3I84bf2YV3stMy0Uz-9JfllVCyrhzihWpibEGBCmzkKsYMawwRbmoGAuAErEw1wDKxghSiER0UAJSboHOcGRrACL3wYugt36_HoWVA8qdXZnMQa-G5295VqHA797DRwXYNtz7tItsj8mBCGb42WUMQ300atzoKaKN2mJ7ZQ6CNtDHgh4lOp6DTEBAVd8HiGRq8D1rViPa1QqcBXtneOZ_XY2GbxrOG4kRPsKPQ3kfrOMBJmJe08u80dJUk3j6T3lGT36eiPt15BYsDsa5mRE7bpfEoV-fYd6x3wg58OgkzvrCf5zJ9fAYbHC_bZsFJlh-l7x-lcor9:1qhBiQ:EqNRtPwZVYZYDdU5FlmfK9qzsLqRoczPuZkQ8r9tP54', '2023-09-29 16:30:46.634451'),
('pbjfmh6ovnn8oukz4bvryojim6ocnrl2', '.eJxVTVtvgjAU_i88T1MoaNmj15QNmAYV-kJOS5UK9YZGYdl_X81eZk7OSb7z3b6tHG7XMr818pKrwnq3bOvt_4-DqOThScDp1PS1Kopa3uEim_5Ug6pHf_wLeE0ooSmNXQIQzwPwCw8TczjBaFhwgQrXd7YCBMZDCR6W4BIHEVGAzSURBCFOBsTmJvQit6a37F2PpuUZ2QYlnwsVq4CuOmpHijb0sPTEmA5odUrX48DvGxHizrXmtY9kOqrp_qiEXmuzHYyNQa_dpyFMRBvuq0fUZThq7wo2M2S0BtM2TqY47AT-HAfnYl6ZQopZMnVZknVm2nAiUKjZPk52NpuEduZkj0hHKpwzzZ4dh3XH0mALm4WK9zO_r-3b0F_2yPUDfeV57HbnsDl6E-5DzoDPOXO8VCxQ5a521s8vQg6MTw:1sbBVx:FduNjjBZZSjAErfGRgYM1U8PksJZN97AkDMPKgb77to', '2024-08-19 23:09:37.967221'),
('pdea89n8ybrlvffw98dwamarhcsuwozw', '.eJxVTsl2gjAU_RfWrScJY7rUKg0tWC2CccMJIZQwaUWL0NN_b2w3dXEX747vS0vY-VQk504cE5lpDxrU7v5zKeOVaK8COxy6SSOzrBY9O4puMm-YrKd_-s1x21CwrlDxXLcRcngOcmRlOkIMGQxgYRsW4Fxg7qS6xR0bQQCxgU0OOQeZzU2BUsvg_Fp6FLnaLe5Pe7WiKsXgFanL5VJ6ZDMSGEjSkXZt8hmxSHXYRjMPT5QJpOhUpzUGYjutSbmXvIkahZHNVKCJjGvAD6kZhD7wHykI3nrJ4gVQ3ktQVtAfV70CfJl5H5lbqUECaenVNN7ofrOuaEyBH74rri78cK4vQzLQkQwB2vT096lo3G29nMUruSwXeLK62Nht58Eef5bBKVumjpOE7n6A0TON2x1OujoYjq8mf6La9w_nSovB:1qjTT8:HHPyskznvWRSPHPNUzwSSWUAV_Y5DWRkj-gcDPOL-Ns', '2023-10-05 23:52:26.384241'),
('ppzx89geqnuy1fuycmh7jg8asqy1hp7k', '.eJxVTslygkAQ_RfOkRo2HXIDVGpIAKOIy8XqGUYZFje0FFL59wyVSzx0V_Vb-1vZwf2W7-4Nv-5EprwrmvL2H6PASn7sCTifG7UWWVbxB1x5o05qEJX7x78crwk5NLm0cwBsWQB2ZhlYLooNNMooQ5lp63sGzDBGHCyDg4l1hFkGGuWYYYQoHmKNytAr38vefHA7yZY-sg1y6jMRi4AsO6JFgjTkOLeYR4akPK9TL7BVKUJUv1W0shFfuxUpToLVaS2nA08a6tTsDWHCnlFRdnESPiLxELCaIql9Rt1El5gVjh390wsumV_KQqJHPjHisVtHiWOGyQFFiSviMWnDZF6FHUGbLhCxv9GjRf9U2m3XwR5WXyIuprY6YM6ymFmH1SLhA6dsLrP2Gn50Cw9vp8MmPW7bkWg3cz9GTPn5Bbcni5Y:1sC6Gd:PnTf8GMJeL10hpqKo_dW0fqtbkbgrRuxYD0fqG23Szo', '2024-06-11 18:30:07.093951'),
('pw5ai5d2i8fsx17yad2kyk2gq9soj3r7', '.eJxVjUlvgkAYhv8L52rYBrA3ccuQgpVStouZjTADg1Q0KE3_e8f0Ug_f4f3e5fnWjuh6qY_XgZ2PnGqvmqlrL_-fGJGGdQ8H9f0wl5zSlo3ozIb5RiLe-n_-k3heqNFQq7rleY5rY9vRbcc1AMW24WHddk1SkQWysOkSgDyEHYtViDoVJiYBxHQAIRZgrqFGz6xS3Hp2OSmKmmT3oMY7wvc8gJ8TNCIOB9jFgKygA5s-T1fBYq5COjYvLW4XOsv9FooTJzKV6ia0UgWZ2o9CmBQgmpZTOG3u4cfIUbbVVfYWicYK1-F9v4a3t1XwRXeNAsKxlGUTJdu2lHAqBNHDZGkWybYpRCCiKeZlQsV-d7DDB6NLpzIPKpQd-F7AsTrM6zyPOw9QjxZpK5ApnT4T4Tue-XEMGyNbxsSfnewMyFH7-QUQFI1M:1qqZl7:XdCxriLN7USzymLj5rP37Ar-hlJmggiNkU0qS7pR6ok', '2023-10-25 09:00:21.016101'),
('q2y7zz9fpco6rv1gltygvzl0gr7gsv6z', '.eJxVjUtvgzAQhP8L5xYZMA_3lpBHjYJRIgIkF2SMKeYVCkRpqPrf66iXRto57M7OfN9KSq9TmV5HPqQiV94UTXn5f8soq3n3MGjfj2or8rzhNzrwUV23VDTLP_9peW4o6VjKuM45RE7BUJHZua2ZmWUg0waGrTMNGppBQQ6AlbGcaoZjO0wOsCDjugMRNKEtSwdeSG75Ol0kRVbyu1dmWyYC4eHjjDUi8Ii7g8lcbOG6TyLXQ6p8Apk-NVmDAE-WDa4ugrVRKzVTVwbaCD4Cfsju_sw0f4XvgXsTNN4A-ftFZjyTeW8GIYY71_vMt7UEYhiEpCJtVPkrqWoBSEyaU7w2TtXHzY_PgqwWJql8PXgwumg-J15B470Iqg1SCz_UTqA3zFd8drfwOPHOfT_s4jy9QoRMb1frpE06MqS18vMLFfSJpw:1seg6C:9aOhqi2ZjcISiuQXBUPq_YEOl5PTOtp9kU-rQ7_FwD4', '2024-08-29 14:25:28.099318'),
('q5iedyu4huzn5qer0sokqa9nm7i9yqw6', '.eJxVTstygjAU_RfWLUPCS7pDWmmoiWNVUDdOIGEIL6noIOn03xumm7q4i3ve39qJ3q7F6dbzy0kw7UUD2tN_LKVZxduJoF3X641grOYDvfBef2uoqOd__MPzmFDQvlB2zlNGc2pBj7PUcQwAvNwwIHVdmDKHWQy6JrQyg7qm47LUoy6YQWBB22HAATNPhV54rnqL5-tZtUyRY1SkYSZWIkI7iQARqEftp50FyEFVt4-DyNOVyEjhtU5rz-D7eY3Ks8iauFEnaaAMTWxNBrzNRiwxINIf8GYQNFkYSnsnEkksd1Dh92UQfbGwUoVIkgSZJFnb-BUrDTZweBgPyXokZdTgshoIxOZxuwNknEbF8riPcpqsxapcePpqk_uLPGrarufFbTzGIXx3S3uQvn9dfhF4uHetMD8qQLH28ws-uYx1:1sd1nq:KwNwGCWhZiwvHXPBiOsNKQeWOWZXzPAXQLPlzJeb234', '2024-08-25 01:11:42.380405'),
('q67smthqftqbcsypnufslpft86sp202b', '.eJxVT81ygjAQfhfOrZMgIvSmVJkwTRgtWuXibEJoYkCt6FjT6bs3TC_tYQ_7_e5-eTu4XtTu2snzTlfek4e9h78YB2HkoSfgdOoGra6qRt7gLLvBrAXdTH_5f8v_BAWdcnY0rMKA-1DJyh_WEIdc4GAscI1RGKEKDTnC2PfHPuJyLCKO63EYoggiBCFEuA89y9r1qsfL0bW4SHnPFE-FznVGVpZgpklHDsuRSEhIzGmzTrJ44ESI-5eGNzGSm2lD9kct2nXrxkLiDO066A202I6YnX0yOxnR-03D2xw57SfbmyEtZj6zxr4k2UeVmr7Q0P0ElekqyFPqU_uOaKFUnpamdDgtCKLPSjFLRuy1P2pty01Ww9tC5_t5PChhIR4DOLzcJ6FOtsxMt_UlWCxyZFgwX7qvmIDnmMti633_AKaQimg:1qqvbV:Y6E35qwvVAkp4iunoBJ-wQyqkQ6XDddP9cFFaAe1KJk', '2023-10-26 08:19:53.313925'),
('qmonap80q0fcnvni1bnd5kunwkp77nq0', '.eJxVjktzgjAUhf8L69YJ4SXdVXw0jIGpFVQ2TrgESSBqBWtLp_-9Ybqpi7u495zznftt7Nm1q_bXll_2ojCeDNN4-H_LGdT8OAjsfG5HShRFw2_swtvRTDHRTP70u-WeULG20vHS8jAeQ4lK7BYWxgzbDPncs10EwH0Y55YLYw-byPRt3wETABUeOBznrg0wQC-81L3VY3fSLRrJv8IqX4CIRUiSnpiRIC05rhwIiEvq8zYNQn-kTSjHXZM3PuLbSUPkSYBKlZ6eBTqgUnsI0PXOiSQx4-nOosFNsM0cae9nJGtMZWLTHm7LIHwvFrUuJLdss6rpFOxsmtWZTFC0pma8pjjqEydb7LDmYNrPMH0bnkr7bBuWbPMqYjn3R0tBV7HPcmAHaxusujJWkrPqkL04lITWSU3kxzUO1GnybPz8Aqmoitw:1qnKHy:yubf3I9pIiYbfo4zJ86_vQfI0vtzpwEGpW5N9K0UKbo', '2023-10-16 14:52:50.657084'),
('qq5yu4xo1doezxx7yu4ihrrw54hp3ufo', '.eJxVjcluwjAURf8l6xY5ztwdpYU6qh1RQSBskPPiKE5spoAAV_33OuqmLN7ivjucb2fLL-dme-nFaSsr58Vxnaf_v5JDJ3aDwQ-HfqRlVSlx5SfRj941l-r1z38QjwsN7xtbr70I4xhqVOOw8jDm2OcoEZEfIgCRQFx6IcQRdpGb-EkALgCqIggELkMfYBg9idpym-fz3lLspLinTTkDmcmULA1xmSQ92X0FMCEh6Q7rfJImIxtCJT6rUiVIrF8VafcSdK7tGT6xBZ37Q4EuioAtwLBFh6i8Sr6aIpu9sbZzmaEua-f3z0l6rGadBZIrfVN606qWzYhHzRhRM22KVunCjE02KzBbpTpb0RsdGLvcbNZpzVdzmbXTZOR9lVccoE2z_Ujf0XGZvH2ohiLN1ssugpgc5jsVi-6S5YXz8wtERYvp:1ql8Is:UGUIW9PxxZVDmn_r8FzdVaf0-zTljQZA9ZfxIHldOnE', '2023-10-10 13:40:42.517406'),
('r3ob01xhf0wbyl6uzazhi817agj0ilkq', '.eJxVjstygjAUht-FdcskoFy6U6oUlDBaROKGSSAMCSBWtCKdvntDu6mLszjnv3znS0nJ9VKm146dU54rLwpUnv7fKMkqdhwFcjp1asPzvGY3cmadumgIr-d_-sPy2FCSrpRxoOfGhGokZ7mmF8Q2aAYnZgYLCAwL5ECnAEJNMzVAmZlZFBamYQCLWIAYxIJj6ZkVkls-X1pJkZXs7pfUzXjIfW83eBBxr_OO22nmeIZXnZLY8W1VmgDVLjWtbcCSee2JlmdN3MgZiCMDTTwZA0GEp0hgGLzO7uj9xsl-CaS3R6LSkNhMkQSsHf8jd6sRWAdiMeDBFyja6MjFAEXzGovdDQ81R1HMcbOAYVT1-PepeDgkfkH2Gx6Kpa0ah9WA27VrNvvVJyyTN4avPaW7FIXm9oPP-mhVblsRAydQvn8A55qMGg:1qoy69:wZfrlxWIheslVDO-7fOFP3q1fWGoSIaoSTstKGSmqrs', '2023-10-20 22:35:25.441908'),
('rf140477254m034bdtys71xccii2fkck', '.eJxVTstygjAU_RfWLZMgkNBdRXTACrUiIhsnIUHCQ1BoVTr994bppi7O4p7n_VYO5LPPD58dvxwEU14UqDz95yhJS34aBdK2nVoLxip-JRfeqU5NRDX90x-Ox4acdLmMgwkzdaoRxpk2yYhl0hTqKIUZBCYGDEwogFDTkAYoRymmMEOmCTDBgJgEw7H0wjO5mz_3jVyRlfzu5XSRikB47nZwoS_czj19GKntmm7ZxpHtWao0Aar1Fa0swONp5RaNSOuolhiILQN1pI-BVbg3_OJ4WxWO7ttXQXZzIL03vyi1YObcgtkRvNnemS3KcTDfh7nw66T2h_V91PxhZQSSC8JXIym2ui8h-WuyGZ-KhiT2MrJbi6CYW2ofGvVXvN4sLWeeoKbFGd5QjrVl1g3GOVxGOXrfI-SsWaP8_ALTrIsQ:1qpeHd:bE8_xfz6nrE-cZ-6JJlTu7Z9_fAftaazM5p39LCoFpE', '2023-10-22 19:38:05.084540'),
('rjqte9y3gq174g1o6rdiooiw3n66tr1f', '.eJxVjs1ygkAQhN-Fc7R2F0HITfEPSqAwiOLFGtjdsMCqERQllXcPVC7xMIeZ7v56vpUj3OrseKvY9Sio8q6oytv_WwJpwU69AJdLNZSC0pI1cGXVcC5BlNM__WV5JWRQZV2cpfoYOCVAGMUAuqZjUDkYiBok4ZzSETKImiAECBMwOWKEY6qpqW5ComHcQa-Md73ZoD53LT3y6WTJMhW-cOxta2NP2JV92mipZet2cdlHlmMOOxNKSF0mpYnYflra-VmkMpLdtGB1ARmN-oAbxpoXTpDbfiLfagTsFqjzPry8wO4saL0wGK0t54sui76w8MOAuGQh3V2MD_kcxTLQ4jxA3mwqXLko_NmmPMyC5vDRPxW1h73DYRcIP_fMofUYpyV-xqugOTlFWt-9dtBkSBj3xuBhe3-s4_K52srleKL8_AK3A4x-:1qiEG4:HuJ28dvfkyq8MPLSJ6BNQBBkarAfEn6npxRHmHLORHU', '2023-10-02 13:25:48.293236'),
('rnqfj6kc9a1h7umeu8dfnsxe8rm37it6', '.eJxVjktzgjAUhf8L65YJ4ZnuFB8FDdSKvDZOCEHCQ63ooHT63xumm7q4i3vPOd-539Ke3K7l_taxy57n0pukSC__bxmhNTuOAjmfO7nled6wnlxYJ89bwpvpn_60PBNK0pUiXqgmhBYtQAGNXIWQQI0AxEzNAJQyRK1MNahlQgUoSEM6VSgFuUl1BjNDo3SEXlghesvX60m0CCR7uGW2pNznrrMbHMXjTuccP3VqO4ZTn-PQdpEsTCCD1yZrEGDxtHGqE6dt2IoZiC0CbaiNARwkuhfMBy_AvWf3nEQLILx3r6oVHGAFzyZgbbtf-bIWhY6eDLs-jbDutUmfzijA1fzuB5tHAjH0grLxqs2QBE2Ft-NT4ZDGbkGiDferBZKtQxEVC9Na1Zo1Idvdx-rdyONYtdaonUL_AxxCEhj5LK016ecXzHOKEw:1qic3A:qX-rahO0b4xLuV41IpGfKpNkM8BoTCjHx8BoKKpZDO0', '2023-10-03 14:50:04.790182'),
('s63jfqr2fmdy88vh9i8mv2dpwjbed9fm', '.eJxVjktzgjAUhf8L68okQV7dKYoTKjBaBWTjJBCa8FAUHZRO_3vDdFMXZ3Hvud8591s5kvuNH-8dux5FrrwrUHn7v6Mkq9hpNEjbdmoj8rxmPbmyTl02RNTzP_9leE3gpOMSB1puTCkiOcuRVhDboBmcmhksIDAskAONAggRMhGgzMwsCgvTMIBFLEAMYsEx9MoK2csnt7NskZHs6XG6ykQoPLwfMAwE7vBpq2cONnDVJpHj2ao8AhTdalrbgCXzGpdnkTVRIzUQRwJNNB0Bf3fQg7ICUr3v9ILELpC3DzmjcLdBQTnr1453yVeVLMS6PwR1MHg8XewlMwP-4oDCBRdpeXimzVIyURWuojr4HJ-KhjTxChJvRFi6thqdL3EV-Xpyid3tR4Jr7lu2-fBtr30u98akcU2fe6G2tr-Un1_CQ4qL:1qqDKS:FCjtepe06baPL9MqJxH5k3eXaSVk9cMRm4AhJp_M-Rk', '2023-10-24 09:03:20.971097'),
('sv1mqimcq97fqa3lduj1dp3dj88da071', '.eJxVTktzgjAQ_i-cWycEw6M3RWVCGyhVUbwwIQklPJSClkqn_71xeqmHnZ3d7_mtpfRyLtJLL7pUcu1Jg9rD_19GWSWON4C2bT9pJOe1GGgn-smyobKe_-F3x71DQftCyZnIkcGMqYN0Drlp5siygW0wy6YI2o5Oga0z6mQON0wbAiCQiTizmKA0c3RuKtNO5Cq3eDyfVIqyFFe_yDwmQ-nj7Yj1QOIeH98Qc7GJq3Yfu74zUSSQwXOd1Q4Q-3mNy5NkTdyoGamrBE08vQnIJkHBZgbIgkDiDpLuVkBxv4Ky0skiGsgiGV5c_4N7lQrEY1JGY-itGgL9OhkJSJolDDdFSbyt2kGZlMk08Ag6rG-l4vGw93O6i2RYqlLPJhyL9SXCbZB9WtfcjUa26xyI8kzOXslcHGmQhjp_r5n28wubb4sM:1qiDLo:X_3fSkk97HhDVodwr2OsDfNscT6NlZ0yQb3WlJ1hQxs', '2023-10-02 12:27:40.892925'),
('t45udusl7y4zcm5or10aqrsy4n0e43mn', '.eJxVjktzgjAUhf8L69YJkWd3iuAEDYwVwbhhQgglPHyAjkKn_71xuqmLu7j3nPOd-62k9HYt01vPu1TkyoeiKm__bxllNT8-BXo-95NW5HnD77Tj_cRtqWjmf_rL8kooaV_KeDE1IbRYAQpo5FMIKdQosLmpGYAxbjMrmxrMMqEKVFuzdaYyBnKT6RxmhsbYE9rxQvaW79eTbJFIPvhltmQiFD7ajUgNBOrR8VNnDjJQfd7Hjm9PpAlk8NpkjQ34ft6g6iRYG7dyRurIQBtrzwCOiB5Erh5UGOLtXdDEA9L7CKpaxVEN8YI81o5_yZe1LET3w6JsSOKqwWKj48QFJPrSwmgGg4hoYUKmpCUjGWdquH0-FY-HvV_QZCPCyrMnQzro483JV96wwtgvohOrh87y3Ch_X18a67AzDRy66GhYys8vlpKKSw:1qirvx:viTPq_sRsNsPqD0u9uDWKg9_4HwhGX9s5s5t2WT2jwE', '2023-10-04 07:47:41.753114'),
('t5nttaiglp4nrvyiawa136cmpifgargc', '.eJxVjMsKwjAQRf8laynJJM3DpeB3hMlkQoKtlKbFhfjvKm7s8tzDPU8Rcd9q3DuvsWVxFkqc_reEdOP7V-Cy9GFuOU_8wJX7cJ2xTZefP8CxULHXz71oB-CpyAI2awAEgzKwM1YScSCftCXvQEkVTBhJEcnsaGRI1hBl8XoDC744FA:1qkTwA:pXbe77pdNXlY45QHGmPI4DCUOQkg1ge0jbGU9tfNwS8', '2023-10-08 18:34:34.694277'),
('tohohc1hujcibjfx5tbv5sda1zpdjlod', '.eJxVjcuOgjAUht-F9WhKuYizUxiwRCAYxcvGtKUNBaooXjuZd5-a2YyLf3HOf_m-jT2-Xqr9tWfnvSiNT8OGxsf_J8G0YYeXg7uuH0pRli274zPrh18Si3b6578d7wsV7itddzhzR5ZpO2REuYUZ9yCllgltij3qQG5jzwKY2Y7lltqAhHslhoAQxyamx5kePTOuudXgctQUPcmecUUiKjIRo5VCZipQjw4Lh_rIRU23Kfx4PNQhQOClJe0YsM20RfVRUFlILYV9XZCF_Soky62TqonKgomZiLvA6xDo7COtGysJEitVq-fcj09l1GgggtkyAbt6J5NoBTKtrQzrLEJOGhR1ttb5CD22MpXZi3Eo1G4Tc7zORVbnT54PFwFeToNUzuDpFvo5mydyxvDEfQCgSDi6dtZNDfq4QbQ3fn4BLDOMvQ:1qqb2e:J-Dvw-efyfPyZBcSE389Q31fsb-Nqix4vvTxSpUDhm4', '2023-10-25 10:22:32.991801'),
('tsl4mkt2ln6fazxhx81a5evcafpe2hdg', '.eJxVjk9zgjAQxb8L59YJEQL0CP4ZqMRpCyhenLCEEkPUAq1Kp9-9YXqph52d3X3v9_bb2LPPvt5_drzdi9J4Mkzj4f-uYCD5cTyw87mbKFGWDb-wlneTuWKi8f_ud8M9oWZdre3V1MHYhQpVmJRTjBm2GPK4YxEEwD1wiykB18EmMj3Ls8EEQKUDNscFsQBGaMsrnVs_9iedopH8FtXFEsRaRGE6hCYVYRceX20IQhLK8zYLIm-iRajAfVM0HuJbvwkPJwEqU7oGFmiDyqzRECe5TWdg0-Qd0-Ai2GaBtPZKDxLRQZo0ydEqiD7KpRwDZb5Jr_Hgy3g2H-IhRrvEV3miu0qnFEeHneasl5mkb-NT2bDbRhXbvIj1YeFNnpl72SY7cf1K-4D4vDUX3TUjJE-PoKRQBWmEteDFbZUaP7_YhIvB:1qhBkK:QDgJVcVtLlmM8Q9q5CFIFyuvIRuDPDxKYlMxJ1WIEkQ', '2023-09-29 16:32:44.224235'),
('ubh7hkelcqxgzen7sha64j1rpif93gam', '.eJxVjctygjAUht-Fdcsk4aJ0KVYNraEqorJxQggSAt7Agun03Runm3ZxFv_5L9-Xsae3ttjfGn7di8x4MaDx9PeXUib58WHQ87kxa5FlFe_olTfma01FNfr1_4n_CwVtCl3PrQFCQ5aDHLmZhRBFNgUeH9guYIx7bJhaLhsOEATQsz2HQcZANmAOR6lrM_YYvfJcc4vn9qQpepLfgyKdMhGKAK8VhkTgBh-XDvOxi-V5G_uBZ-oQSFFbpZUH-HZU4fIkWB3X-hT1daGO7UdhHu0cMmYOiQ4OWXWCbiZAZ3tSSkCUhCSS8N0PLtlUaiC2dmpS78pJEUZSJdMFICW-7yLZJyUp5mqt5tEaJaVE4YNxjFWyDXK6WYiwnHjmcr9pzyMLvC07e3Xw-uTe09mFz-y6_2zhqtym9OOUj4g_7ozvHydWjJ8:1qhBkp:cFjMCVkvcYvFqo0kAztqbsQ27dEZ2SAf06h11ajDYZ0', '2023-09-29 16:33:15.646122'),
('ukf2a3x6zvsbojtmchi0j4i7bt8ryib7', '.eJxVjktzgkAQhP8L58RaVp45ahQXwxItQPFiLcPiLg81oImQyn_PWrnEwxxmuvvr-db27HoR-2vH273MtRdN157-3zIGFT_eBXY-d6NG5nnNv1jLu9GsYbKe_OkPyyNBsE6oeDG2MXagQAW28jHGDBsMudw2LATAXXCysQWOjXWku4Zrgg6AchtMjjPLALhDW16oXvF8OakWheS9LzIPZCh9Eg9Ep5J05Lg2YUosUp23ydR3R8qEMnyps9pFfDupSXmS0CSNmoFNVaBJjHsgiFKTRjODlkFP-y_JNnOkvDdaVnoQHXDwSsZvU_8j9ypVSIYwSsTOm4tdJARtCAq81RB6wY3i1KBN3O-82AyjiUj7-1PJsNv6BdusZFjO3RFdHJf9YslzQuPlDGynaE84gCT47FO08ezKWfOiOOz194P28wvr6ItT:1qipK7:00K-YqamV7Y3XLt2wug7Dq0QvRA8mSH60UF6H6SR-k4', '2023-10-04 05:00:27.930785'),
('uuvk6k5pr939215vl1zfq8umzfw028k7', '.eJxVTslugzAQ_RfObWSM2XoLpEmNilFaAoQLMsYEs2QjC6Hqv9dpL400c5i3zpeS0fOpys49P2aiUF4UVXn6j-WUNXx7J-h-3086URQtv9Ij7yevHRWt88c_HI8JFe0raYecI9sqmV3mZmGqem5otm4CzYRMRZqqUVAAYOSsoKpmmRaTAwzEOLSQjXRkytAjL2Vv9XzayRYZyW9elS-YCISHVyNWicA93n7ozMUGbvZJ5Hr2RIpADk9t3tqAJ06L651gXdTJHakrDV2E7gY_ZDd_XGpBuESBexU0ngOpHciIRzJjuh9u0LvrHYpFIwsxILWv-7OVnoZTmMYrsO7WMAibgcQrjcCoChbzmswauP59KhrTxCtpvBRBPbcn5DM8W1euDs_0bZo6SVQ5B9hGOY6BK7TtIM5kc8kuVe1tlO8f1J-KMQ:1sdXfQ:6yUij172jV0O0JylrUw5FOswzTmDeJoNWYiZQOPFJQw', '2024-08-26 11:13:08.601126'),
('v1hvr2ve1oda82lspehig6ume5zewpbt', '.eJxVTktzgjAQ_i-cWyZAItJbBbUwBcYXihdmE6AEiFLQqun0vzdOL3Vn9rDfc7-1DM6nKjsPRZ_xXHvRsKU9_QcpsKY43BnoukEXPM_b4gJ9MehTAbyd_PEPx2NCBUOl7KZBbDUOszErwcIUIUzGBiaYUDrOgZYGIQQgp_YIcoQZMUrbRGMGDDuAQYX2Ral6q-fTUbWoyOIWVHTOeMwDfyN9I-L-4B-WhLn-yG-6XeIGjq5EiJqnlrYOKnaT1q-PnIlEqJXgKoNI8N0QrlMSyVcZe1MzXF04bGdIaa9R3VihF1qxl17f3eAznzeq0L_tRUpSkfBIRFUoG5SaoUzXCxzJqEprha-nJFxvLuHq_lQi97ughO2Cx_VClgu9M4Mtu2H76_RBWy9ZBnlWzd-ymImL5-D-dpRFEy1nhmkj7ecXjmuNEw:1qqb4P:DdjR4IIuCfS_VsAh2HVRywV_NuitANW_EOl7jxmAGqw', '2023-10-25 10:24:21.069093'),
('vq1dh3o88c4w12tj1xh7pcd9q6hlmxzt', '.eJxVTstygjAU_RfW1UmCIHRXaeuEllgVUNg4FxJKgPhCq9LpvzdMN3VxFvee57exgfOp3JxbcdxIbjwapvHw_5dBXottT8B-3w6V5LwRFziKdviiQDaTP_7uuE8ooS21XeT2GApOgAiOAWzLxmAW4CDukKwoOB8hh5gZQoAwAbdAghSYW2Zuu5BZGOvQoyh0bzk47XRLH3nzy2yay5n0adRRzCRt6XZh5R61ab1fx57vDrUIZeTUZI2LxHrS0GoncxUrjQ48bVDxqDcEYWKxkBIW5oh5FwmrV6S1V1bVOKgSzJ7n6N3zD3xa94UqrZJOgzC1UOk0QGkYWEmYkEQlt1lY1mmY34KKdmzZj4q7dO0XsJrLWcXc4VW9jSPxER_ilkzE52k2jXzTMYnLruwrigfLgHDz-kQtcIyfX9x1i3o:1qj9z2:N9VwZE64mRHfpWG_CzSBswPwIbcdyKD4dWee6R7bhII', '2023-10-05 03:04:04.615855'),
('w4jlma2epsazldbp2l4p21t5rvfbw7oi', '.eJxVjctygjAUht-FdeuECGi6FNEJIzCKIrhhkkMYwsUbKEqn79443dTFWZz_9n1rKbt1RXprxTWVmfal6drHf40zqMTxZbDzuR01Mstq0bOraEdOw2Q9-_PfnveFgrWFqufjCcZTyFGOrWyMMcMGQ0RMDAsBCAJTPrZgOsE60olBTNABUDYBU2BuGQCv0avIFbf47E6KoibF0y34EmQgXbobqO5L2tLjxgSbWrQ6x5HtkpEKIY67mtcEiXhW0_IkoYkadQOzVaGJjFfB2yamP6_0YLsbe3Yv2X6BVPbhlxVSmumV0K9s95ItKwWkOBl2z2SgxmFe1B5eI790-mDpPJLSb7zBGbz5ojnsN_LwYhyj4RC7OduvZVAuyOhyty7L0CHRnYcG7-JpUxZmgVJ6hDrJ8WdIwrBPVqsqrbSfX_cyi8k:1qhsKk:0Pg3J6QE9xSr4xLiUb-_1qleupR6cf-1WtOXUR41sdo', '2023-10-01 14:01:10.871552'),
('w702otjeelk7vqo28yqtwpb4qnjt55b9', '.eJxVTstygjAU_RfWLRPe0F2l1QljoDqIwMa5BJBAUAo6Ap3-e2O7qYu7OO_7JR3geqkO16HoDyyXXiRbevrPZUCb4nQXoOsGuWV5zosb9MUgv7fA-OJPfwCPDRUMlYiX1M50pDsZysC0gFKD6pYBAthAAelATT23oaClBZBT1dYEq9Ec9NJQNNMUpX1Rit3q-XIWK6KymLwqW1EWMA_vZqz4DA_4tDWoi03cdHHkeo4sTChTLzzjDiriBcf1mdE2asXN4IpAG-n3AAkTw6-JRuqN4bs3BvslEt7RrxuVzHQiYYPWrveZrxoxiGe_3ihkrpp0tROZIwr2OyN4IyNpyS1RsZaEFJF5yZPfp6I5jb0S9hsW1JUjs3R7DrcfIx-7lA7PV2WxjrvG6tf-ZDnTsmPH6nXmXDkdB-n7B_ykjnY:1qnntq:euqEi5yLGEgVnCiu5svl5bUVCFOGrUNMwbFNwCXuiio', '2023-10-17 17:29:54.914428'),
('wq1tb6wdth5d2leg90l3dsq29nhcjcbk', '.eJxVTstygjAU_RfWrRPCS7oUEWEkDA6iduMkl1ACRK2gtnT67w3tpi7u4tzz_NIO9NpXh2vHLwdRaC-arj39_zEKDT-OBD2fu4kURdHyO73wbuJLKtrZH_8AHhMq2lXKXhoOxlMoUYntwsCYYpMilzumjQC4C1Nm2DB1sI5013Qt0AFQ4YDFMbNNgDH0wkvVWz33J9WiIvlnVLEARCKicDOEOhFhFx7XFnihHTbnXe5F7kSJEMN9y1oX8d2sDeuTAJlLdQP1lEHm5miIs71FMh-TIUXEuwu6XSCl_SB1oyvOiLMUrbzovQiasbCOZd6Q4Q2R2jfjzEdJkMskSE0y7BUGnWzXMpn7evw7Kh9ed1FJt6lI6oUadQoK2zIYxJiReZjhdtn3sPLaeRCnS3YJ4tktLwJf3jba9w9pdYnz:1qikPZ:094NTAwIf0WOqDF6SWJuwUWVQY01_cn7a24Mb9F9ct8', '2023-10-03 23:45:45.027982'),
('x2a2xho5tz362aipayh3dqibnlykplel', '.eJxVTktvgkAQ_i-cK1leuvQIVbOkQLQIyIXMPizLQ61gVJr-9y7ppR5mkvme862VcB2q8tqLSym59qoZ2st_jAJrxHEi4Hzu9U5y3oobXESvLzuQrffHPx3PCRX0lbILAOw4AC53LKwWxRZacMoQt13zwIBZ1kKAYwmwsYkw42BQgRlGiOI5NqgKvYiD6q1mw0m1TJGPoKJrJmMZkN1IjEiSnhy3DvPJnDTnPPUDV1ciRM2hpa2LRO61pD5J1qWdmhF8ZehSezKECXuEY2hEyeYR-TcJ2Qop7T0ayRiOOyNMCHr3gy--blQhecTZ8l7U2ybqiFXUexTWaR0nS3OfhUax3lnx27YuuqKJPqan0rHIgwNkGxnXK1eHwStgniczgj-5k98Lo8tvt1kzv3isZKN7XoTeldl-5PXazy8SqIxe:1sd1OO:CKu-EE3c7qzTgv5nbog-08fHKLoLxLWTy6xGZwf0NZ0', '2024-08-25 00:45:24.189440'),
('x8yaygi8tcwt1ufa4bsih2uxnhoqqfnb', '.eJxVjctygjAUht-FdcskMdy6U1AbRoI6AsLGCSFIEJCKjkqn716YburiLP7zX75v5cBu1-Jw68TlIDPlQ4HK2_9fyvhJNKPB2rZTa5lllbizi-jUec1kNfvzX8TrQsG6YqjnEwMhk-cgR3o2QYghzIAlDKwDzoXFzXSic9NAEEALWxqHnIPM4JpAqY45H0cvIh-4xfv1PFCGSfF0i3TJpS9dEvQEUkk60mw1bhOdnNp9aLuWOoRAiq5VWllA7GcVKc-S12E9XM_soVCHeCx4u1iju_jhO97Tt--SRQswZB-0PEFazrHnELyy3a9seRqBMkYbLd4FE9rHT68_AuoccVxySJ0p8peBluy20qvd0h8ZTdgnezdn0Ub65cJSlyvWbMM0MBZmHazWK7r-nCbRgYQ3PMO35HyEc9AGD-RGpvLzC5o_idY:1qkdhs:WuUbVtRUMdd1TcBL4v92apkDYqZZcHUhYxE8eDwC98M', '2023-10-09 05:00:28.274185'),
('xialz0id281rgdauvjql0bddgsck2kom', '.eJxVjstygjAUht-FdWVC5CLdKYgTRmSoiMKGCSFIIKjlUpVO371huqmLszjnv3znW0rx0Jfp0NE2Zbn0LinS2_9bhklNL5OAb7dObliec3rHLe3kdYMZX_3pL8trQ4m7UsSLuQHhghSggHo-hxBDFQOTGqoOCKEmWWRznSwMqADFVE2NKISA3CAahZmuEjKVtrQQ3HLWXwVFVNKnW2YbwnzmosOIlB1DHbp8aMRCOqpvp8hyTVmYQAZ7nnET0NOKo-rKSBM1YkZsiUATqVPAC2NtZ5-hbwfA398ZPjpAeB-7qga-HateGGhby_3MN_UE5DGMat_mdWKjexLWIAmXShy6XPgVLzxAr3GrxK4f3n56KhqTk1vgY8D8yjFl2G8fYXW-f6UlDJzWsYLlbp1eQmcP0b7vLk_Ohm4WB-OgSj-_qeuLjw:1qhUd3:RzszJVCD43f6PkXnvFJ8jzwcz1xDpVu2E9RqPXBMO4M', '2023-09-30 12:42:29.978592'),
('xljwenq1dyhst09kepxmcdbxs3icdjqu', '.eJxVjMEKwjAQRP8lZylJ09itR8HvCLPZlQRbKY3Fg_jvVrzYy8Cbx8zLRKyPHNeqSyxiTsaZw3_HSDe9fwXmuTZTERn1iUVrc5lQxvPP72D_kFHzNleAQgAGCZ62YPK2F05WuqG9JiTve0Xwio5aS0ngWCmRtUxHcmzeHzsTONY:1sXN9c:LzqVTfpB96gyyU56lMFjimVAWbl4IAq4kxB0pZyGaV0', '2024-08-09 10:46:48.176359'),
('xy5gkfhxtfukjcrqc77fexvhgy4xbp7p', '.eJxVjctygjAUht-FdWUgJAhdCuoEBXoREDZMSMIQIN7Q0dLpuzdMN3VxFv_5L9-3VpLbtSlvA7-Ugmmv2lx7-f-rCO34YTLI6TToUjDW8zu58EFfSiL6xZ__JJ4XGjI0qm5blBo24I6LbI6AUzPmVARxxqBlQ1bXBjG4a9UWNRxQ2XMXAAhNF1KTIgIBUqMXXituM7seFUVN8q-gqdZUxCLAyYjNSOABHz4Q9bCNu9M-9QJXVyGjAte-6l2D7xc9bo-CylSqG4mnCjKFUyHc5ShqczMcqRV-3gXJVobKPqK2A1GbjJFPH1svOLN1NwFF4S9BDjAI_bQv_NwosgTFu1UX-9QsWjzGPkbhmNyLiXFIx2If1CR7F3HLXD3bLN4YlTNpd8LxbwlY1Wa7kOU2ZE0o0-TcwWpDv0jsUe3nF9VYix4:1qoz4Z:zBxi5p8tq2Ywt_G5o1XGbkccepUq9MjXagFfQoxB_C0', '2023-10-20 23:37:51.274108'),
('xzf4mbqk7164cci9pk37b9pw5ii9547k', '.eJxVjMsKwjAQRf8laynJJM3DpeB3hMlkQoKtlKbFhfjvKm7s8tzDPU8Rcd9q3DuvsWVxFkqc_reEdOP7V-Cy9GFuOU_8wJX7cJ2xTZefP8CxULHXz71oB-CpyAI2awAEgzKwM1YScSCftCXvQEkVTBhJEcnsaGRI1hBl8XoDC744FA:1qjTx7:CfDZmuFeUK3h_Xbr27fykAX1EZNqb0dWW4aJArJGSvk', '2023-10-06 00:23:25.187136'),
('y0euz0dunep7tj8nwenik75ijhh8what', '.eJxVjk1zgjAQhv8L59YJgQDprVJloBLGDgXh4oQkDAGiVrTadPrfG6eXetjD7vvx7Le1pedTtz1P4riV3HqyoPXw_9ZQNojdTaCHwzRTkvNRXOhRTLOFonKc_-l3y31DR6fOxJlokcMcFyObQ-55LfIDEDjMDyiCAbYpCGxGcYO54wUQAIE8xJnPBKUNtrlnSo-iNdzu8bQ3FFMpvpKuiZjMZBK_69gmMp7i3RtiYezFw2FThAmeGRNo4GlsRgzEZj7G_V4yVSgzmoYmoAr3FkjzCpH8WROd6jS8SFougfFeST_Y6UvqmLmswuSDR4MBxm6WM5CViar7xZXoChCV6kotuzpKYZUvbBItxypfw_rG2BW63iQtLdcy681TOkMNlKXrXc79iaTr6PWrj3zkwkGvjuRznTsA12iVdLiyfn4BwvWKUw:1qiCYw:H33bk2dy3dgjM5SX03Z4MxQt7usSlGt4LmIz3hcQTGs', '2023-10-02 11:37:10.613211'),
('y3kfojbf9aawo3r0ayj17byq0pvd6wix', '.eJxVjstygjAUht-FdcskyLU7xWrDFBgtgrBxEhJKgCiCDkKn797YburiLM75L9_5Ug74eikP1551B06VFwUqT_9vBOc1O94F3La9KjilDRtwx3r1VWDeLP70h-WxocR9KeNgRk2daJgyqs0K7Jgkh7qVwwIC0wYUzAiAUNMsDRBm5TaBhWWawMY2wCa24b20Y4Xkls-Xk6TISjZ6JVnnPOQe2k0IBhz16Lg1cheZqG73ses5qjQBol0a0jiA7RcNqk48F7GQM2FXBkSs3wN-lBrBhIYw-hxCd-A4WQHpvQVVPfOruRFEc_3d9c50XUsguoURmqQf-ksq0mkHwsif0iods2g--mIDwmU6ZGtPZL9PxVO29wqcbHhYrRw1i64Bf74yH50JShbZNt4vx6Rd5aJx3nadpjVG_XEOqsmyle8fA5SMDA:1qrJiv:3M0vFWheW0vkDVUXXuk7svaUo0eIokty52zqgscX_ho', '2023-10-27 10:05:09.004323'),
('ykc09n6ysimtnj7f0thwwl8b1nq85y9u', '.eJxVjktzgkAQhP8L50jtghDJTVEJJEBhDIoXa2B3ZZH1Bb42lf-epbzEwxxmuvvr-dHWcG7L9bmhpzUn2ptmai__bzkUW7rrBDgcGl1wQmp6hRNt9IkAXo8e-tPyTCihKVWcFvYrMGKAQQkGsC0bg8lggMjAyBkjpI8GhpkjBAgb4DBEDYaJZRa2A7mFsYKeKFO9Za_dq5YOeQ_K3Ct4zAP_W_o44n7j72ZW4fq2vz0sUzdwdGVCudHWee0guhzVfrXnhUiFGgmuCoi03wXCeWZF8yGKxokRf105LKZIeW9RtcXhOEGd_ukGR-JtVaGPYy-5hWLSD2VoraoMhTIQmUjkqiruodzcQzEro0UgHk-lcrUMGCwSHleRox_TdsrcYPYhh17vPZ5c8ksbX1hvn82GMULX_sqeHlJ2bLyN9vsH0XWMbg:1qiEQ5:WmS489KJbpP3G8SxAilCjm9UV3sYSWdb9ndo7kfZfbY', '2023-10-02 13:36:09.808655'),
('z24iwjv53bih3brb60biprk8znkdafih', '.eJxVTslygkAQ_RfOCTUK6JAbDi5DIpRmROVi9SwWI-CGiUoq_54hucRDd9Xrt_WXtYGPS775qNV5o6X1YnWsp_83DqJQ-5aA47G2Ky1lqa5wVrU9rECXgz_-ATwm5FDnxq4AsOcB-NJzsFkcO6gvuUDS9btbAcJx-go8R4GLuwgLCR2usMAIcdzDHW5Cz2prevPny8G0tJH3KOdjoRMd0UVDO7GmNd3PPUFojxbHVUoi3zYixLuXkpc-UqtBSXcHLaq0MtMAMYYqdVvDlIlrHBa3uJmihFw1LEfIaA0OUMKGzjScuW8kOslx0RaWcRg0aza8Z9V8F7MAZWFerdnsmrEoj9niFofRbspSvf59Km2yVbSF5Uwnu5FvDyds3CxHdHML2f61LD4pATKZHPRp1CddrYjMqnPyfrqrwPr-AQb7jPk:1rNeo4:KMxIBqbudWAWimMEd-Cb3kUBJAejo1JfK4jUTj4j-AA', '2024-01-24 15:04:08.459554'),
('zcb632g7hp50r7o0jvqq8iel36o41sgt', '.eJxVjktzgkAQhP8L58TaBeSRm-IjS8IS1IB4sfaF7AJqBEsllf-etXKJhznMdPfX821sybkrt-dWnLaSGy8GNJ7-3yhhldjfBXI8toNGcl6LCzmJdjBtiKzHf_rD8kgoSVvqOLC4Y1OTcMFNqyC-Qxm0XQYLCBwPcGBRAKFpuiagwmUehYXrOMAjHiAO8eAdehKF7i2fu4Nu0UhxC0s6ZzKWIfrsEcQStWi_GLIAOag6rtMg9AfaBKjZ1bT2gViPa6QOkjVpo6cngQ40qX0PRKt8iFV-iSYjC98ukmQzoL1XrCoTr6oh7pn1HoRffF7pQtTjyei6UYm1WSVWNE8AzqbDPFvISCEQz6cwV7M6V1xGy_tTab9ZhwXJEhmrmT8IdzSX6iOKMKbt62r8NrFzlZyV7fvLDsZvas-63QyhOjsYP7-PHIrC:1qol6X:0CeiHA35TkRr9ZTFBFJaMXAk1CRozcrBCkWGG_3Wkw4', '2023-10-20 08:42:57.983541'),
('zgakx881siuju9ll2b92z9wrmq0xov3q', '.eJxVTktvgkAQ_i-cW7IsD5cefZElRSJVFC5mdlnCAqtWtChN_3uX9FIzmUlmvtd8Gwe4XavDrROXgyyMN8MyXv7fGPBGHEcAzufOVLIoWtHDRXTmQoFsp3_40_LsUEFXabkAIK4L4BeuTfRgxEaTgnFUOD4uOXDbnghwbQEOwYjwAiwmCCcIMeIRi2nTiyh1bvV6PemU0fIRVizgMpYh3Q7UWkna0WPi8hn1aHPep7PQNzUJMXxtWesjsZ-2tD5JrlKle4CZFqjUGQXRhj-igeJoQ92V7CXslkhz76uBDlGd9fGmwe-z8LMIGh1I3ThYDHmwdiKsa2hQriKcqbDJaq1X0SMKEhXPF33-MT6VDvk-LGG3lnG99E2MlLKcHZvHzPNwkNhljiY8u1Wv2fXubrakz5LTl92cfcf4-QXYbIti:1sccuC:fXNmdnM89xc7T8lzqsV7D3vrpYr-zou0gqEQtSKr9pQ', '2024-08-23 22:36:36.630322');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pqrs_anexo`
--

CREATE TABLE `pqrs_anexo` (
  `id` bigint(20) NOT NULL,
  `createdAt` date DEFAULT NULL,
  `updateAt` date DEFAULT NULL,
  `nombre_ane` varchar(190) NOT NULL,
  `userCreate_id` bigint(20) DEFAULT NULL,
  `userUpdate_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pqrs_asignacion`
--

CREATE TABLE `pqrs_asignacion` (
  `id` bigint(20) NOT NULL,
  `createdAt` date DEFAULT NULL,
  `updateAt` date DEFAULT NULL,
  `fecha_asignacion` date NOT NULL,
  `asignadoId_id` bigint(20) NOT NULL,
  `pqrs_id` bigint(20) NOT NULL,
  `userCreate_id` bigint(20) DEFAULT NULL,
  `userUpdate_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pqrs_pqrs`
--

CREATE TABLE `pqrs_pqrs` (
  `id` bigint(20) NOT NULL,
  `createdAt` date DEFAULT NULL,
  `updateAt` date DEFAULT NULL,
  `titulo` varchar(190) NOT NULL,
  `description` varchar(190) NOT NULL,
  `persona_id` bigint(20) NOT NULL,
  `tipopqrs_id` bigint(20) NOT NULL,
  `userCreate_id` bigint(20) DEFAULT NULL,
  `userUpdate_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pqrs_respuesta`
--

CREATE TABLE `pqrs_respuesta` (
  `id` bigint(20) NOT NULL,
  `createdAt` date DEFAULT NULL,
  `updateAt` date DEFAULT NULL,
  `descripcion` varchar(190) DEFAULT NULL,
  `anexo_id` bigint(20) NOT NULL,
  `pqrs_id` bigint(20) NOT NULL,
  `userCreate_id` bigint(20) DEFAULT NULL,
  `userUpdate_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pqrs_tipopqrs`
--

CREATE TABLE `pqrs_tipopqrs` (
  `id` bigint(20) NOT NULL,
  `createdAt` date DEFAULT NULL,
  `updateAt` date DEFAULT NULL,
  `tipo` varchar(190) NOT NULL,
  `userCreate_id` bigint(20) DEFAULT NULL,
  `userUpdate_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `solicitudes_anexos`
--

CREATE TABLE `solicitudes_anexos` (
  `id` bigint(20) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `solicitudId_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `solicitudes_contenidosolicitud`
--

CREATE TABLE `solicitudes_contenidosolicitud` (
  `id` bigint(20) NOT NULL,
  `archivo_adjunto` varchar(100) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `declaracion_originalidad` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `solicitudes_contenidosolicitud`
--

INSERT INTO `solicitudes_contenidosolicitud` (`id`, `archivo_adjunto`, `status`, `declaracion_originalidad`) VALUES
(135, 'archivos/archivos_contenido_solicitud/PROYECTO_INVESTIGACION_1.docx', 1, '1'),
(136, 'archivos/archivos_contenido_solicitud/22551243.pdf', 1, '1'),
(137, 'archivos/archivos_contenido_solicitud/LECTURA_ETICA_Y_MORAL_EN_PERÚ.docx', 1, '1'),
(138, 'archivos/archivos_contenido_solicitud/Formato_de_Reclamación_7l1oMY9.pdf', 1, '1'),
(139, 'archivos/archivos_contenido_solicitud/FOLLETO.pdf', 1, '1'),
(140, 'archivos/archivos_contenido_solicitud/FOLLETO_Wk6TWWx.pdf', 1, '1'),
(141, 'archivos/archivos_contenido_solicitud/FOLLETO_CFyDFRq.pdf', 1, 'archivos/archivos_contenido_solicitud/originalidad_2023_1.docx'),
(142, 'archivos/archivos_contenido_solicitud/GD-G-01._GUÍA_PROPEDÉUTICA_-_DESARROLLO_WEB_5.docx', 1, 'archivos/archivos_contenido_solicitud/originalidad_2023_1_FIKi5VV.docx'),
(143, 'archivos/archivos_contenido_solicitud/originalidad_2023_1_5psXgGi.docx', 1, 'archivos/archivos_contenido_solicitud/originalidad_2023_1_gDzdurc.docx'),
(144, 'archivos/archivos_contenido_solicitud/iginalidad_2023_1_F7tz1fo.docx', 1, 'archivos/archivos_contenido_solicitud/iginalidad_2023_1.docx'),
(145, 'archivos/archivos_contenido_solicitud/iginalidad_2023_1_HPuih9Q.docx', 1, 'archivos/archivos_contenido_solicitud/iginalidad_2023_1_8befKTh.docx'),
(146, 'archivos/archivos_contenido_solicitud/originalidad_2023_1_ATbaje2.docx', 1, 'archivos/archivos_contenido_solicitud/originalidad_2023_1_NKoi2KC.docx'),
(147, 'archivos/archivos_contenido_solicitud/FOLLETO_9as8W1H.pdf', 1, 'archivos/archivos_contenido_solicitud/originalidad_2023_1_daHkr8d.docx'),
(148, 'archivos/archivos_contenido_solicitud/Red_Creative_Business_Trifold_Brochure_1_ElJUT0h.pdf', 1, 'archivos/archivos_contenido_solicitud/cedula_-_Robert_Quintero_3_1NMuwS0.pdf'),
(149, 'archivos/archivos_contenido_solicitud/originalidad_2023_1_sEjILYx.docx', 1, 'archivos/archivos_contenido_solicitud/originalidad_2023_1_gAqIlEE.docx'),
(150, 'archivos/archivos_contenido_solicitud/originalidad_2023_1_5TLkFlH.docx', 1, 'archivos/archivos_contenido_solicitud/originalidad_2023_1_lRz3fDz.docx'),
(151, 'archivos/archivos_contenido_solicitud/originalidad_2023_1_ALShbJI.docx', 1, 'archivos/archivos_contenido_solicitud/originalidad_2023_1_NygFvlL.docx'),
(152, 'archivos/archivos_contenido_solicitud/originalidad_2023_1_GawDNqu.docx', 1, 'archivos/archivos_contenido_solicitud/originalidad_2023_1_HfSgbBF.docx'),
(153, 'archivos/archivos_contenido_solicitud/originalidad_2023_1_yLkMGDs.docx', 1, 'archivos/archivos_contenido_solicitud/originalidad_2023_1_x1GpY2j.docx'),
(154, 'archivos/archivos_contenido_solicitud/IMG_20240618_124053_OeGZm4u.pdf', 1, 'archivos/archivos_contenido_solicitud/IMG_20240618_124053.pdf'),
(155, 'archivos/archivos_contenido_solicitud/originalidad_2023_1_BDsGyNc.docx', 1, 'archivos/archivos_contenido_solicitud/originalidad_2023_1_Eq1NBJY.docx'),
(156, 'archivos/archivos_contenido_solicitud/originalidad_2023_1_jVx6ZuD.docx', 1, 'archivos/archivos_contenido_solicitud/originalidad_2023_1_cTizEUf.docx'),
(157, 'archivos/archivos_contenido_solicitud/originalidad_2023_1_q5iBP4z.docx', 1, 'archivos/archivos_contenido_solicitud/originalidad_2023_1_PZRosaH.docx'),
(158, 'archivos/archivos_contenido_solicitud/originalidad_2023_1_NdjPLpS.docx', 1, 'archivos/archivos_contenido_solicitud/originalidad_2023_1_8Getfnf.docx'),
(159, 'archivos/archivos_contenido_solicitud/originalidad_2023_1_Obfzj4k.docx', 1, 'archivos/archivos_contenido_solicitud/originalidad_2023_1_Q6BzdhC.docx'),
(160, 'archivos/archivos_contenido_solicitud/originalidad_2023_1_gaqfJOk.docx', 1, 'archivos/archivos_contenido_solicitud/originalidad_2023_1_LKaxAF8.docx'),
(161, 'archivos/archivos_contenido_solicitud/originalidad_2023_1_pIAy5FU.docx', 1, 'archivos/archivos_contenido_solicitud/originalidad_2023_1_MZuEBAM.docx'),
(162, 'archivos/archivos_contenido_solicitud/originalidad_2023_1_39m7Gzv.docx', 1, 'archivos/archivos_contenido_solicitud/originalidad_2023_1_tXTaoaN.docx'),
(163, 'archivos/archivos_contenido_solicitud/originalidad_2023_1_gyUAVTk.docx', 1, 'archivos/archivos_contenido_solicitud/originalidad_2023_1_g0SqQCN.docx'),
(164, 'archivos/archivos_contenido_solicitud/originalidad_2023_1_dwzPymO.docx', 1, 'archivos/archivos_contenido_solicitud/originalidad_2023_1_dPe1LtQ.docx'),
(165, 'archivos/archivos_contenido_solicitud/originalidad_2023_1_mbfnTHC.docx', 1, 'archivos/archivos_contenido_solicitud/originalidad_2023_1_g8j1ipb.docx'),
(166, 'archivos/archivos_contenido_solicitud/originalidad_2023_1_sgnMIAp.docx', 1, 'archivos/archivos_contenido_solicitud/originalidad_2023_1_H3T1bzO.docx'),
(167, 'archivos/archivos_contenido_solicitud/Cuadro_comparativo_punto_8_886KGBk.docx', 1, 'archivos/archivos_contenido_solicitud/Cuadro_comparativo_punto_8.docx'),
(168, 'archivos/archivos_contenido_solicitud/Cuadro_comparativo_punto_8_886KGBk_yqLrV9l.docx', 0, 'archivos/archivos_contenido_solicitud/originalidad_167.docx'),
(169, 'archivos/archivos_contenido_solicitud/Cuadro_comparativo_punto_8_886KGBk_szAMQhC.docx', 0, 'archivos/archivos_contenido_solicitud/originalidad_167_fIqBZ31.docx'),
(170, 'archivos/archivos_contenido_solicitud/Cuadro_comparativo_punto_8_886KGBk_7W2tfhA.docx', 1, 'archivos/archivos_contenido_solicitud/originalidad_167_FTw7NOh.docx'),
(171, 'archivos/archivos_contenido_solicitud/originalidad_167_resujhF.docx', 1, 'archivos/archivos_contenido_solicitud/originalidad_167_xP0rdgu.docx'),
(172, 'archivos/archivos_contenido_solicitud/articulo.docx', 1, 'archivos/archivos_contenido_solicitud/originalidad_167_Y76Ca9C.docx'),
(173, 'archivos/archivos_contenido_solicitud/PROCEDIMIENTO.docx', 1, 'archivos/archivos_contenido_solicitud/PROPUESTA_DE_INVESTIGACION.docx'),
(174, 'archivos/archivos_contenido_solicitud/PROPUESTA_DE_INVESTIGACION_iDHGwSN.docx', 1, 'archivos/archivos_contenido_solicitud/PROCEDIMIENTO_J6BrpgT.docx'),
(175, 'archivos/archivos_contenido_solicitud/Documento1.pdf', 1, 'archivos/archivos_contenido_solicitud/IMG_20240618_124046.pdf'),
(176, 'archivos/archivos_contenido_solicitud/descargar.docx', 1, 'archivos/archivos_contenido_solicitud/originalidad_175_1.pdf'),
(177, 'archivos/archivos_contenido_solicitud/Modelos_Teorías_y_Esrategias_pedagógicas.pdf', 1, 'archivos/archivos_contenido_solicitud/SISTEMA_WEB_PARA_LA_GESTIÓN_DE_LA_REVISTA_CIENCIA__HFLAIFE.pdf'),
(178, 'archivos/archivos_contenido_solicitud/Modelos_Teorías_y_Esrategias_pedagógicas_UpVrgS0.pdf', 1, 'archivos/archivos_contenido_solicitud/SISTEMA_WEB_PARA_LA_GESTIÓN_DE_LA_REVISTA_CIENCIA__oarQPm5.pdf'),
(179, 'archivos/archivos_contenido_solicitud/archivo_adjunto_175_1.pdf', 1, 'archivos/archivos_contenido_solicitud/DOCUMENTOS_-_DOCENCIA_-_ROBERT_QUINTERO_-_COMPILADORES.pdf'),
(180, 'archivos/archivos_contenido_solicitud/Red_Creative_Business_Trifold_Brochure_1_qR9hOJT.pdf', 1, 'archivos/archivos_contenido_solicitud/archivo_adjunto_175_1_mYDtabl.pdf'),
(181, 'archivos/archivos_contenido_solicitud/transformación_digital.pdf', 1, 'archivos/archivos_contenido_solicitud/archivo_adjunto_175_1_MvoT8kg.pdf'),
(182, 'archivos/archivos_contenido_solicitud/originalidad_175_1_x3SSsYs.pdf', 1, 'archivos/archivos_contenido_solicitud/transformación_digital_50v0Dwx.pdf'),
(183, 'archivos/archivos_contenido_solicitud/archivo_adjunto_175_1_jLyCbOc.pdf', 1, 'archivos/archivos_contenido_solicitud/transformación_digital_gc6y469.pdf'),
(184, 'archivos/archivos_contenido_solicitud/Funciones_-_minciencias_uS2OvtN.pdf', 1, 'archivos/archivos_contenido_solicitud/Funciones_-_minciencias.pdf'),
(185, 'archivos/archivos_contenido_solicitud/Funciones_-_minciencias_RyqDppb.pdf', 1, 'archivos/archivos_contenido_solicitud/ACTIVIDAD01_MASHIEL_MARIAC.pdf'),
(186, 'archivos/archivos_contenido_solicitud/archivo_adjunto_186_1.pdf', 1, 'archivos/archivos_contenido_solicitud/originalidad_186_diRkPoV.pdf'),
(187, 'archivos/archivos_contenido_solicitud/PLAN_DE_AULA_MAESTRIA_.UNIGUAJIRA_1-ASIGANTURA_PRO_5SO7vjC.pdf', 1, 'archivos/archivos_contenido_solicitud/archivo_adjunto_186_1_p9demYT.pdf'),
(188, 'archivos/archivos_contenido_solicitud/originalidad_186_vgSsym4.pdf', 1, 'archivos/archivos_contenido_solicitud/archivo_adjunto_186_3Bx1YRV.pdf');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `solicitudes_estadoseguimiento`
--

CREATE TABLE `solicitudes_estadoseguimiento` (
  `id` bigint(20) NOT NULL,
  `nombre` varchar(256) NOT NULL,
  `descripcion` varchar(2000) NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `solicitudes_estadoseguimiento`
--

INSERT INTO `solicitudes_estadoseguimiento` (`id`, `nombre`, `descripcion`, `status`) VALUES
(1, 'Pendiente', 'Pendiente', 1),
(2, 'Aceptado sin cambios', 'aceptado sin cambios', 1),
(3, 'Aceptado con cambios menores', 'aceptado con cambios menores', 1),
(4, 'Aceptado con cambios mayores', 'aceptado con cambios mayores', 1),
(5, 'Resometimiento', 'resometimiento', 1),
(6, 'Cargado', 'Cargado', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `solicitudes_nivelformacion`
--

CREATE TABLE `solicitudes_nivelformacion` (
  `id` bigint(20) NOT NULL,
  `nombre` varchar(256) NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `solicitudes_nivelformacion`
--

INSERT INTO `solicitudes_nivelformacion` (`id`, `nombre`, `status`) VALUES
(1, 'Profesional', 1),
(2, 'Especialista', 1),
(3, 'Magister', 1),
(4, 'Doctor', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `solicitudes_pasosseguimiento`
--

CREATE TABLE `solicitudes_pasosseguimiento` (
  `id` bigint(20) NOT NULL,
  `nivel` int(11) NOT NULL,
  `nombre` varchar(256) NOT NULL,
  `dias_programacion` varchar(256) NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `solicitudes_pasosseguimiento`
--

INSERT INTO `solicitudes_pasosseguimiento` (`id`, `nivel`, `nombre`, `dias_programacion`, `status`) VALUES
(1, 1, 'Diligenciamiento', '0', 1),
(2, 2, 'Revisión de editor jefe', '2', 1),
(3, 3, 'Revision de evaluadores', '20', 0),
(4, 3, 'Revisión de editor asignado', '8', 1),
(5, 4, 'Revisión de evaluador #1', '20', 1),
(6, 4, 'Revisión de evaluador #2', '20', 1),
(7, 5, 'Aprobado para su pronta publicación', '10', 1),
(8, 5, 'Publicado', '5', 1),
(13, 3, 'Revisión de editor jefe', '2', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `solicitudes_revista`
--

CREATE TABLE `solicitudes_revista` (
  `id` int(11) NOT NULL,
  `nombre` varchar(250) NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `solicitudes_revista`
--

INSERT INTO `solicitudes_revista` (`id`, `nombre`, `status`) VALUES
(1, 'Ciencia e ingeniería', 1),
(2, 'Entretextos', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `solicitudes_seguimiento`
--

CREATE TABLE `solicitudes_seguimiento` (
  `id` bigint(20) NOT NULL,
  `fecha_asignacion` date DEFAULT NULL,
  `fecha_programacion` date DEFAULT NULL,
  `fecha_evaluacion` date DEFAULT NULL,
  `correciones` varchar(100) DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `estado_seguimiento_id` bigint(20) DEFAULT NULL,
  `pasos_seguimiento_id` bigint(20) NOT NULL,
  `responsableId_id` bigint(20) DEFAULT NULL,
  `solicitudId_id` bigint(20) NOT NULL,
  `cambio_relevante` tinyint(1) NOT NULL,
  `formato_evaluacion` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `solicitudes_seguimiento`
--

INSERT INTO `solicitudes_seguimiento` (`id`, `fecha_asignacion`, `fecha_programacion`, `fecha_evaluacion`, `correciones`, `status`, `estado_seguimiento_id`, `pasos_seguimiento_id`, `responsableId_id`, `solicitudId_id`, `cambio_relevante`, `formato_evaluacion`) VALUES
(853, '2024-08-10', '2024-08-10', '2024-08-10', '', 1, 1, 1, 1, 172, 0, ''),
(854, '2024-08-10', '2024-08-12', '2024-08-10', '', 1, 2, 2, 45, 172, 0, ''),
(855, '2024-08-10', '2024-08-18', '2024-08-10', 'archivos/archivos_seguimiento/originalidad_186.pdf', 1, 2, 4, 1, 172, 0, 'archivos/archivos_seguimiento/archivo_adjunto_186.pdf'),
(856, '2024-08-11', '2024-08-31', '2024-08-10', '', 1, 1, 5, 44, 172, 0, ''),
(857, '2024-08-10', '2024-08-30', '2024-08-10', '', 1, 1, 6, 1, 172, 0, ''),
(858, NULL, NULL, NULL, '', 1, NULL, 7, NULL, 172, 0, ''),
(859, NULL, NULL, NULL, '', 1, NULL, 8, NULL, 172, 0, ''),
(860, '2024-08-10', '2024-08-10', '2024-08-10', '', 1, 1, 1, 1, 173, 0, ''),
(861, '2024-08-10', '2024-08-12', '2024-08-10', '', 1, 2, 2, 45, 173, 0, ''),
(862, '2024-08-10', '2024-08-18', '2024-08-10', '', 1, 3, 4, 1, 173, 0, ''),
(863, '2024-08-10', '2024-08-30', NULL, '', 1, 1, 5, 1, 173, 0, ''),
(864, '2024-08-10', '2024-08-30', NULL, '', 1, 1, 6, 1, 173, 0, ''),
(865, NULL, NULL, NULL, '', 1, NULL, 7, NULL, 173, 0, ''),
(866, NULL, NULL, NULL, '', 1, NULL, 8, NULL, 173, 0, ''),
(867, '2024-08-11', '2024-08-11', '2024-08-11', '', 1, 1, 1, 1, 174, 0, ''),
(868, '2024-08-11', '2024-08-13', '2024-08-11', '', 1, 2, 2, 45, 174, 0, ''),
(869, '2024-08-11', '2024-08-19', '2024-08-11', '', 1, 2, 4, 1, 174, 0, ''),
(870, '2024-08-11', '2024-08-31', '2024-08-11', 'archivos/archivos_seguimiento/Funciones_-_minciencias_X1KeA2Y.pdf', 1, 3, 5, 1, 174, 0, 'archivos/archivos_seguimiento/ACTIVIDAD01_MASHIEL_MARIAC_U2NHHeZ.pdf'),
(871, '2024-08-11', '2024-08-31', '2024-08-11', 'archivos/archivos_seguimiento/originalidad_186_0tM0gwu.pdf', 1, 3, 6, 1, 174, 0, 'archivos/archivos_seguimiento/archivo_adjunto_186_uTeNPh0.pdf'),
(872, '2024-08-11', '2024-08-21', NULL, '', 1, 1, 7, 1, 174, 0, ''),
(873, NULL, NULL, NULL, '', 1, NULL, 8, NULL, 174, 0, '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `solicitudes_solicitud`
--

CREATE TABLE `solicitudes_solicitud` (
  `id` bigint(20) NOT NULL,
  `titulo_articulo` varchar(200) NOT NULL,
  `fecha_creacion` datetime NOT NULL,
  `afiliacion` varchar(256) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `contenidoSolicitud_id` bigint(20) DEFAULT NULL,
  `revista_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `solicitudes_solicitud`
--

INSERT INTO `solicitudes_solicitud` (`id`, `titulo_articulo`, `fecha_creacion`, `afiliacion`, `status`, `contenidoSolicitud_id`, `revista_id`) VALUES
(172, 'como hacer q nos rinda el dinero', '2024-08-10 16:54:04', 'Docente', 1, 186, 1),
(173, 'Influencia de la inteligencia artificial en los estudiantes universitarios', '2024-08-10 18:54:46', 'Estudiante', 1, 187, 1),
(174, 'prueba', '2024-08-10 19:07:45', 'Docente', 1, 188, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `solicitudes_solicitud_autores`
--

CREATE TABLE `solicitudes_solicitud_autores` (
  `customuser_id` bigint(20) NOT NULL,
  `solicitud_id` bigint(20) NOT NULL,
  `id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `solicitudes_solicitud_autores`
--

INSERT INTO `solicitudes_solicitud_autores` (`customuser_id`, `solicitud_id`, `id`) VALUES
(1, 36, 1),
(1, 37, 2),
(1, 37, 4),
(1, 38, 6),
(1, 38, 8),
(1, 39, 10),
(1, 39, 12),
(1, 40, 14),
(1, 40, 17),
(1, 41, 20),
(1, 41, 23),
(1, 42, 26),
(1, 42, 29),
(1, 43, 32),
(1, 43, 34),
(1, 48, 47),
(1, 48, 50),
(1, 48, 51),
(1, 172, 470),
(1, 172, 471),
(1, 173, 472),
(1, 173, 473),
(1, 174, 474),
(1, 174, 475);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `authenticacion_customuser`
--
ALTER TABLE `authenticacion_customuser`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indices de la tabla `authenticacion_customuser_groups`
--
ALTER TABLE `authenticacion_customuser_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `authenticacion_customuse_customuser_id_group_id_acbdc37a_uniq` (`customuser_id`,`group_id`),
  ADD KEY `authenticacion_custo_group_id_31774927_fk_auth_grou` (`group_id`);

--
-- Indices de la tabla `authenticacion_customuser_user_permissions`
--
ALTER TABLE `authenticacion_customuser_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `authenticacion_customuse_customuser_id_permission_e70b967a_uniq` (`customuser_id`,`permission_id`),
  ADD KEY `authenticacion_custo_permission_id_f38934e1_fk_auth_perm` (`permission_id`);

--
-- Indices de la tabla `authenticacion_documenttype`
--
ALTER TABLE `authenticacion_documenttype`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `authenticacion_formacion`
--
ALTER TABLE `authenticacion_formacion`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `authenticacion_gender`
--
ALTER TABLE `authenticacion_gender`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `authenticacion_nivelformacion`
--
ALTER TABLE `authenticacion_nivelformacion`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `authenticacion_person`
--
ALTER TABLE `authenticacion_person`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`apellidos`),
  ADD UNIQUE KEY `surname` (`nombres`),
  ADD UNIQUE KEY `identification` (`identificacion`),
  ADD UNIQUE KEY `authenticacion_person_nombre_identificacion_66a937e4_uniq` (`nombres`,`identificacion`),
  ADD KEY `authenticacion_perso_user_id_d4e3c51d_fk_authentic` (`user_id`);

--
-- Indices de la tabla `authenticacion_resource`
--
ALTER TABLE `authenticacion_resource`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `authenticacion_resourcerol`
--
ALTER TABLE `authenticacion_resourcerol`
  ADD PRIMARY KEY (`id`),
  ADD KEY `authenticacion_resou_resource_id_dcf90ece_fk_authentic` (`resource_id`),
  ADD KEY `authenticacion_resou_role_id_0c8f3df5_fk_authentic` (`role_id`);

--
-- Indices de la tabla `authenticacion_rol`
--
ALTER TABLE `authenticacion_rol`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indices de la tabla `authenticacion_userrol`
--
ALTER TABLE `authenticacion_userrol`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `authenticacion_user_rol_userId_id_rolesId_id_3f2dd52c_uniq` (`userId_id`,`rolesId_id`),
  ADD KEY `authenticacion_user__rolesId_id_39bc45f4_fk_authentic` (`rolesId_id`);

--
-- Indices de la tabla `authtoken_token`
--
ALTER TABLE `authtoken_token`
  ADD PRIMARY KEY (`key`),
  ADD UNIQUE KEY `user_id` (`user_id`);

--
-- Indices de la tabla `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indices de la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indices de la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indices de la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_authentic` (`user_id`);

--
-- Indices de la tabla `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indices de la tabla `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `django_rest_passwordreset_resetpasswordtoken`
--
ALTER TABLE `django_rest_passwordreset_resetpasswordtoken`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_rest_passwordreset_resetpasswordtoken_key_f1b65873_uniq` (`key`),
  ADD KEY `django_rest_password_user_id_e8015b11_fk_authentic` (`user_id`);

--
-- Indices de la tabla `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indices de la tabla `pqrs_anexo`
--
ALTER TABLE `pqrs_anexo`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pqrs_anexo_userCreate_id_40527a1a_fk_authentic` (`userCreate_id`),
  ADD KEY `pqrs_anexo_userUpdate_id_89e0b248_fk_authentic` (`userUpdate_id`);

--
-- Indices de la tabla `pqrs_asignacion`
--
ALTER TABLE `pqrs_asignacion`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pqrs_asignacion_asignadoId_id_a34a1e8d_fk_authentic` (`asignadoId_id`),
  ADD KEY `pqrs_asignacion_pqrs_id_77160a21_fk_pqrs_pqrs_id` (`pqrs_id`),
  ADD KEY `pqrs_asignacion_userCreate_id_f9e1b3f9_fk_authentic` (`userCreate_id`),
  ADD KEY `pqrs_asignacion_userUpdate_id_5e9bfd35_fk_authentic` (`userUpdate_id`);

--
-- Indices de la tabla `pqrs_pqrs`
--
ALTER TABLE `pqrs_pqrs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pqrs_pqrs_tipopqrs_id_93883a56_fk_pqrs_tipopqrs_id` (`tipopqrs_id`),
  ADD KEY `pqrs_pqrs_userCreate_id_e35a68ac_fk_authenticacion_customuser_id` (`userCreate_id`),
  ADD KEY `pqrs_pqrs_userUpdate_id_38742320_fk_authenticacion_customuser_id` (`userUpdate_id`),
  ADD KEY `pqrs_pqrs_persona_id_73f59a2c_fk_authenticacion_customuser_id` (`persona_id`);

--
-- Indices de la tabla `pqrs_respuesta`
--
ALTER TABLE `pqrs_respuesta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pqrs_respuesta_anexo_id_69e86075_fk_pqrs_anexo_id` (`anexo_id`),
  ADD KEY `pqrs_respuesta_pqrs_id_890c9414_fk_pqrs_pqrs_id` (`pqrs_id`),
  ADD KEY `pqrs_respuesta_userCreate_id_4e037754_fk_authentic` (`userCreate_id`),
  ADD KEY `pqrs_respuesta_userUpdate_id_2d68100c_fk_authentic` (`userUpdate_id`);

--
-- Indices de la tabla `pqrs_tipopqrs`
--
ALTER TABLE `pqrs_tipopqrs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pqrs_tipopqrs_userCreate_id_599e216c_fk_authentic` (`userCreate_id`),
  ADD KEY `pqrs_tipopqrs_userUpdate_id_288b0599_fk_authentic` (`userUpdate_id`);

--
-- Indices de la tabla `solicitudes_anexos`
--
ALTER TABLE `solicitudes_anexos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `solicitudes_anexos_solicitudId_id_69959b43_fk_solicitud` (`solicitudId_id`);

--
-- Indices de la tabla `solicitudes_contenidosolicitud`
--
ALTER TABLE `solicitudes_contenidosolicitud`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `solicitudes_estadoseguimiento`
--
ALTER TABLE `solicitudes_estadoseguimiento`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `solicitudes_nivelformacion`
--
ALTER TABLE `solicitudes_nivelformacion`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `solicitudes_pasosseguimiento`
--
ALTER TABLE `solicitudes_pasosseguimiento`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `solicitudes_revista`
--
ALTER TABLE `solicitudes_revista`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `solicitudes_seguimiento`
--
ALTER TABLE `solicitudes_seguimiento`
  ADD PRIMARY KEY (`id`),
  ADD KEY `solicitudes_seguimie_estado_seguimiento_i_fa288205_fk_solicitud` (`estado_seguimiento_id`),
  ADD KEY `solicitudes_seguimie_pasos_seguimiento_id_aa6f59ea_fk_solicitud` (`pasos_seguimiento_id`),
  ADD KEY `solicitudes_seguimie_responsableId_id_69cd91ad_fk_authentic` (`responsableId_id`),
  ADD KEY `solicitudes_seguimie_solicitudId_id_4e826602_fk_solicitud` (`solicitudId_id`);

--
-- Indices de la tabla `solicitudes_solicitud`
--
ALTER TABLE `solicitudes_solicitud`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `contenidoSolicitud_id` (`contenidoSolicitud_id`);

--
-- Indices de la tabla `solicitudes_solicitud_autores`
--
ALTER TABLE `solicitudes_solicitud_autores`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `authenticacion_customuser`
--
ALTER TABLE `authenticacion_customuser`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT de la tabla `authenticacion_customuser_groups`
--
ALTER TABLE `authenticacion_customuser_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `authenticacion_customuser_user_permissions`
--
ALTER TABLE `authenticacion_customuser_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `authenticacion_documenttype`
--
ALTER TABLE `authenticacion_documenttype`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `authenticacion_formacion`
--
ALTER TABLE `authenticacion_formacion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `authenticacion_gender`
--
ALTER TABLE `authenticacion_gender`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `authenticacion_nivelformacion`
--
ALTER TABLE `authenticacion_nivelformacion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `authenticacion_person`
--
ALTER TABLE `authenticacion_person`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT de la tabla `authenticacion_resource`
--
ALTER TABLE `authenticacion_resource`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT de la tabla `authenticacion_resourcerol`
--
ALTER TABLE `authenticacion_resourcerol`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;

--
-- AUTO_INCREMENT de la tabla `authenticacion_rol`
--
ALTER TABLE `authenticacion_rol`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `authenticacion_userrol`
--
ALTER TABLE `authenticacion_userrol`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT de la tabla `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=149;

--
-- AUTO_INCREMENT de la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=483;

--
-- AUTO_INCREMENT de la tabla `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT de la tabla `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT de la tabla `django_rest_passwordreset_resetpasswordtoken`
--
ALTER TABLE `django_rest_passwordreset_resetpasswordtoken`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `pqrs_anexo`
--
ALTER TABLE `pqrs_anexo`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pqrs_asignacion`
--
ALTER TABLE `pqrs_asignacion`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pqrs_pqrs`
--
ALTER TABLE `pqrs_pqrs`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pqrs_respuesta`
--
ALTER TABLE `pqrs_respuesta`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pqrs_tipopqrs`
--
ALTER TABLE `pqrs_tipopqrs`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `solicitudes_anexos`
--
ALTER TABLE `solicitudes_anexos`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `solicitudes_contenidosolicitud`
--
ALTER TABLE `solicitudes_contenidosolicitud`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=189;

--
-- AUTO_INCREMENT de la tabla `solicitudes_estadoseguimiento`
--
ALTER TABLE `solicitudes_estadoseguimiento`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `solicitudes_nivelformacion`
--
ALTER TABLE `solicitudes_nivelformacion`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `solicitudes_pasosseguimiento`
--
ALTER TABLE `solicitudes_pasosseguimiento`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `solicitudes_revista`
--
ALTER TABLE `solicitudes_revista`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `solicitudes_seguimiento`
--
ALTER TABLE `solicitudes_seguimiento`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=874;

--
-- AUTO_INCREMENT de la tabla `solicitudes_solicitud`
--
ALTER TABLE `solicitudes_solicitud`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=175;

--
-- AUTO_INCREMENT de la tabla `solicitudes_solicitud_autores`
--
ALTER TABLE `solicitudes_solicitud_autores`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=476;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `authenticacion_customuser_groups`
--
ALTER TABLE `authenticacion_customuser_groups`
  ADD CONSTRAINT `authenticacion_custo_customuser_id_c89cd774_fk_authentic` FOREIGN KEY (`customuser_id`) REFERENCES `authenticacion_customuser` (`id`),
  ADD CONSTRAINT `authenticacion_custo_group_id_31774927_fk_auth_grou` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Filtros para la tabla `authenticacion_customuser_user_permissions`
--
ALTER TABLE `authenticacion_customuser_user_permissions`
  ADD CONSTRAINT `authenticacion_custo_customuser_id_a88f482e_fk_authentic` FOREIGN KEY (`customuser_id`) REFERENCES `authenticacion_customuser` (`id`),
  ADD CONSTRAINT `authenticacion_custo_permission_id_f38934e1_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`);

--
-- Filtros para la tabla `authenticacion_person`
--
ALTER TABLE `authenticacion_person`
  ADD CONSTRAINT `authenticacion_perso_user_id_d4e3c51d_fk_authentic` FOREIGN KEY (`user_id`) REFERENCES `authenticacion_customuser` (`id`);

--
-- Filtros para la tabla `authenticacion_resourcerol`
--
ALTER TABLE `authenticacion_resourcerol`
  ADD CONSTRAINT `authenticacion_resou_resource_id_dcf90ece_fk_authentic` FOREIGN KEY (`resource_id`) REFERENCES `authenticacion_resource` (`id`),
  ADD CONSTRAINT `authenticacion_resou_role_id_0c8f3df5_fk_authentic` FOREIGN KEY (`role_id`) REFERENCES `authenticacion_rol` (`id`);

--
-- Filtros para la tabla `authenticacion_userrol`
--
ALTER TABLE `authenticacion_userrol`
  ADD CONSTRAINT `authenticacion_user__rolesId_id_39bc45f4_fk_authentic` FOREIGN KEY (`rolesId_id`) REFERENCES `authenticacion_rol` (`id`),
  ADD CONSTRAINT `authenticacion_user__userId_id_a204e20d_fk_authentic` FOREIGN KEY (`userId_id`) REFERENCES `authenticacion_customuser` (`id`);

--
-- Filtros para la tabla `authtoken_token`
--
ALTER TABLE `authtoken_token`
  ADD CONSTRAINT `authtoken_token_user_id_35299eff_fk_authenticacion_customuser_id` FOREIGN KEY (`user_id`) REFERENCES `authenticacion_customuser` (`id`);

--
-- Filtros para la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Filtros para la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Filtros para la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_authentic` FOREIGN KEY (`user_id`) REFERENCES `authenticacion_customuser` (`id`);

--
-- Filtros para la tabla `django_rest_passwordreset_resetpasswordtoken`
--
ALTER TABLE `django_rest_passwordreset_resetpasswordtoken`
  ADD CONSTRAINT `django_rest_password_user_id_e8015b11_fk_authentic` FOREIGN KEY (`user_id`) REFERENCES `authenticacion_customuser` (`id`);

--
-- Filtros para la tabla `pqrs_anexo`
--
ALTER TABLE `pqrs_anexo`
  ADD CONSTRAINT `pqrs_anexo_userCreate_id_40527a1a_fk_authentic` FOREIGN KEY (`userCreate_id`) REFERENCES `authenticacion_customuser` (`id`),
  ADD CONSTRAINT `pqrs_anexo_userUpdate_id_89e0b248_fk_authentic` FOREIGN KEY (`userUpdate_id`) REFERENCES `authenticacion_customuser` (`id`);

--
-- Filtros para la tabla `pqrs_asignacion`
--
ALTER TABLE `pqrs_asignacion`
  ADD CONSTRAINT `pqrs_asignacion_asignadoId_id_a34a1e8d_fk_authentic` FOREIGN KEY (`asignadoId_id`) REFERENCES `authenticacion_customuser` (`id`),
  ADD CONSTRAINT `pqrs_asignacion_pqrs_id_77160a21_fk_pqrs_pqrs_id` FOREIGN KEY (`pqrs_id`) REFERENCES `pqrs_pqrs` (`id`),
  ADD CONSTRAINT `pqrs_asignacion_userCreate_id_f9e1b3f9_fk_authentic` FOREIGN KEY (`userCreate_id`) REFERENCES `authenticacion_customuser` (`id`),
  ADD CONSTRAINT `pqrs_asignacion_userUpdate_id_5e9bfd35_fk_authentic` FOREIGN KEY (`userUpdate_id`) REFERENCES `authenticacion_customuser` (`id`);

--
-- Filtros para la tabla `pqrs_pqrs`
--
ALTER TABLE `pqrs_pqrs`
  ADD CONSTRAINT `pqrs_pqrs_persona_id_73f59a2c_fk_authenticacion_customuser_id` FOREIGN KEY (`persona_id`) REFERENCES `authenticacion_customuser` (`id`),
  ADD CONSTRAINT `pqrs_pqrs_tipopqrs_id_93883a56_fk_pqrs_tipopqrs_id` FOREIGN KEY (`tipopqrs_id`) REFERENCES `pqrs_tipopqrs` (`id`),
  ADD CONSTRAINT `pqrs_pqrs_userCreate_id_e35a68ac_fk_authenticacion_customuser_id` FOREIGN KEY (`userCreate_id`) REFERENCES `authenticacion_customuser` (`id`),
  ADD CONSTRAINT `pqrs_pqrs_userUpdate_id_38742320_fk_authenticacion_customuser_id` FOREIGN KEY (`userUpdate_id`) REFERENCES `authenticacion_customuser` (`id`);

--
-- Filtros para la tabla `pqrs_respuesta`
--
ALTER TABLE `pqrs_respuesta`
  ADD CONSTRAINT `pqrs_respuesta_anexo_id_69e86075_fk_pqrs_anexo_id` FOREIGN KEY (`anexo_id`) REFERENCES `pqrs_anexo` (`id`),
  ADD CONSTRAINT `pqrs_respuesta_pqrs_id_890c9414_fk_pqrs_pqrs_id` FOREIGN KEY (`pqrs_id`) REFERENCES `pqrs_pqrs` (`id`),
  ADD CONSTRAINT `pqrs_respuesta_userCreate_id_4e037754_fk_authentic` FOREIGN KEY (`userCreate_id`) REFERENCES `authenticacion_customuser` (`id`),
  ADD CONSTRAINT `pqrs_respuesta_userUpdate_id_2d68100c_fk_authentic` FOREIGN KEY (`userUpdate_id`) REFERENCES `authenticacion_customuser` (`id`);

--
-- Filtros para la tabla `pqrs_tipopqrs`
--
ALTER TABLE `pqrs_tipopqrs`
  ADD CONSTRAINT `pqrs_tipopqrs_userCreate_id_599e216c_fk_authentic` FOREIGN KEY (`userCreate_id`) REFERENCES `authenticacion_customuser` (`id`),
  ADD CONSTRAINT `pqrs_tipopqrs_userUpdate_id_288b0599_fk_authentic` FOREIGN KEY (`userUpdate_id`) REFERENCES `authenticacion_customuser` (`id`);

--
-- Filtros para la tabla `solicitudes_anexos`
--
ALTER TABLE `solicitudes_anexos`
  ADD CONSTRAINT `solicitudes_anexos_solicitudId_id_69959b43_fk_solicitud` FOREIGN KEY (`solicitudId_id`) REFERENCES `solicitudes_solicitud` (`id`);

--
-- Filtros para la tabla `solicitudes_seguimiento`
--
ALTER TABLE `solicitudes_seguimiento`
  ADD CONSTRAINT `solicitudes_seguimie_estado_seguimiento_i_fa288205_fk_solicitud` FOREIGN KEY (`estado_seguimiento_id`) REFERENCES `solicitudes_estadoseguimiento` (`id`),
  ADD CONSTRAINT `solicitudes_seguimie_pasos_seguimiento_id_aa6f59ea_fk_solicitud` FOREIGN KEY (`pasos_seguimiento_id`) REFERENCES `solicitudes_pasosseguimiento` (`id`),
  ADD CONSTRAINT `solicitudes_seguimie_responsableId_id_69cd91ad_fk_authentic` FOREIGN KEY (`responsableId_id`) REFERENCES `authenticacion_customuser` (`id`),
  ADD CONSTRAINT `solicitudes_seguimie_solicitudId_id_4e826602_fk_solicitud` FOREIGN KEY (`solicitudId_id`) REFERENCES `solicitudes_solicitud` (`id`);

--
-- Filtros para la tabla `solicitudes_solicitud`
--
ALTER TABLE `solicitudes_solicitud`
  ADD CONSTRAINT `solicitudes_solicitu_contenidoSolicitud_i_c5d7b09e_fk_solicitud` FOREIGN KEY (`contenidoSolicitud_id`) REFERENCES `solicitudes_contenidosolicitud` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
