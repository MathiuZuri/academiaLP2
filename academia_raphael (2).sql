-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 28, 2024 at 08:54 PM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `academia_raphael`
--

-- --------------------------------------------------------

--
-- Table structure for table `academia_apoderado`
--

CREATE TABLE `academia_apoderado` (
  `id_apoderado` bigint NOT NULL,
  `apellidomaterno` varchar(50) NOT NULL,
  `apellidopaterno` varchar(50) NOT NULL,
  `celular` varchar(9) NOT NULL,
  `celularrespaldo` varchar(9) NOT NULL,
  `correo` varchar(50) NOT NULL,
  `dni` varchar(8) NOT NULL,
  `nombrecompleto` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `academia_apoderado`
--

INSERT INTO `academia_apoderado` (`id_apoderado`, `apellidomaterno`, `apellidopaterno`, `celular`, `celularrespaldo`, `correo`, `dni`, `nombrecompleto`) VALUES
(1, 'García', 'Martínez', '912345678', '912345679', 'mgarcia@gmail.com', '12345678', 'María García'),
(2, 'López', 'Hernández', '922345678', '922345679', 'lopezhernandez@yahoo.com', '23456789', 'Luis López'),
(3, 'Pérez', 'González', '932345678', '932345679', 'perez.gonzalez@hotmail.com', '34567890', 'Ana Pérez'),
(4, 'Sánchez', 'Ramírez', '942345678', '942345679', 'sanchez.ramirez@gmail.com', '45678901', 'Carlos Sánchez'),
(5, 'Torres', 'Flores', '952345678', '952345679', 'torres.flores@outlook.com', '56789012', 'Lucía Torres'),
(6, 'Rivera', 'Mendoza', '962345678', '962345679', 'riveramendoza@gmail.com', '67890123', 'Diego Rivera'),
(7, 'Morales', 'Cruz', '972345678', '972345679', 'morales.cruz@gmail.com', '78901234', 'Elena Morales'),
(8, 'Jiménez', 'Ortega', '982345678', '982345679', 'jimenez.ortega@gmail.com', '89012345', 'Fernando Jiménez'),
(9, 'Rojas', 'Vargas', '992345678', '992345679', 'rojasvargas@hotmail.com', '90123456', 'Laura Rojas'),
(10, 'Castro', 'Silva', '911345678', '911345679', 'castro.silva@gmail.com', '01234567', 'Andrés Castro'),
(11, 'Chávez', 'Reyes', '921345678', '921345679', 'chavez.reyes@yahoo.com', '11234567', 'Rosa Chávez'),
(12, 'Ramos', 'Córdoba', '931345678', '931345679', 'ramos.cordoba@outlook.com', '21234567', 'Antonio Ramos'),
(13, 'Vega', 'Navarro', '941345678', '941345679', 'vega.navarro@gmail.com', '31234567', 'Isabel Vega'),
(14, 'Romero', 'Delgado', '951345678', '951345679', 'romero.delgado@gmail.com', '41234567', 'Mario Romero'),
(15, 'Hernández', 'Álvarez', '961345678', '961345679', 'hernandez.alvarez@gmail.com', '51234567', 'Juana Hernández'),
(16, 'Medina', 'Fernández', '971345678', '971345679', 'medina.fernandez@gmail.com', '61234567', 'Gabriel Medina'),
(17, 'Ortiz', 'Suárez', '981345678', '981345679', 'ortiz.suarez@gmail.com', '71234567', 'Sandra Ortiz'),
(18, 'Núñez', 'Ibarra', '991345678', '991345679', 'nunez.ibarra@gmail.com', '81234567', 'Pablo Núñez'),
(19, 'Cabrera', 'Luna', '910345678', '910345679', 'cabrera.luna@gmail.com', '91234567', 'Mónica Cabrera'),
(20, 'Guzmán', 'Peña', '920345678', '920345679', 'guzman.pena@gmail.com', '01324567', 'Esteban Guzmán');

-- --------------------------------------------------------

--
-- Table structure for table `academia_asistencia`
--

CREATE TABLE `academia_asistencia` (
  `id_asistencia` bigint NOT NULL,
  `fecharegistro` date NOT NULL,
  `id_curso` bigint NOT NULL,
  `id_estadotencia` bigint NOT NULL,
  `id_estudiante` bigint NOT NULL,
  `id_periodo` bigint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `academia_asistencia`
--

INSERT INTO `academia_asistencia` (`id_asistencia`, `fecharegistro`, `id_curso`, `id_estadotencia`, `id_estudiante`, `id_periodo`) VALUES
(1, '2024-01-10', 1, 1, 2, 1),
(2, '2024-01-11', 2, 1, 5, 1),
(3, '2024-01-12', 3, 1, 9, 1),
(4, '2024-01-13', 4, 2, 13, 1),
(5, '2024-01-14', 5, 1, 16, 1),
(6, '2024-01-15', 6, 2, 20, 1),
(7, '2024-01-16', 7, 1, 22, 1),
(8, '2024-01-17', 8, 2, 25, 1),
(9, '2024-01-18', 9, 1, 28, 1),
(10, '2024-01-19', 10, 2, 31, 1),
(11, '2024-01-20', 1, 1, 35, 1),
(12, '2024-01-21', 2, 1, 39, 1),
(13, '2024-01-22', 3, 2, 40, 1),
(14, '2024-01-23', 4, 2, 4, 1),
(15, '2024-01-24', 5, 1, 7, 1);

-- --------------------------------------------------------

--
-- Table structure for table `academia_carga`
--

CREATE TABLE `academia_carga` (
  `id_carga` bigint NOT NULL,
  `id_curso` bigint NOT NULL,
  `id_periodo` bigint NOT NULL,
  `id_seccion` bigint NOT NULL,
  `id_trabajador` bigint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `academia_carga`
--

INSERT INTO `academia_carga` (`id_carga`, `id_curso`, `id_periodo`, `id_seccion`, `id_trabajador`) VALUES
(1, 1, 1, 1, 1),
(2, 3, 2, 2, 2),
(3, 5, 1, 3, 3),
(4, 7, 2, 4, 4),
(5, 9, 1, 5, 5),
(6, 2, 1, 1, 6),
(7, 4, 2, 2, 7),
(8, 6, 1, 3, 8),
(9, 8, 2, 4, 9),
(10, 10, 1, 5, 10);

-- --------------------------------------------------------

--
-- Table structure for table `academia_competencia`
--

CREATE TABLE `academia_competencia` (
  `id_competencia` bigint NOT NULL,
  `nombre_competencia` varchar(50) NOT NULL,
  `subpromedio` double NOT NULL,
  `id_curso` bigint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `academia_competencia`
--

INSERT INTO `academia_competencia` (`id_competencia`, `nombre_competencia`, `subpromedio`, `id_curso`) VALUES
(1, 'Defensa Personal Avanzada', 16.2, 1),
(2, 'Simulacro de Arresto', 15.5, 2),
(3, 'RCP y Primeros Auxilios', 17, 3),
(4, 'Análisis de Derecho Penal', 14.8, 4),
(5, 'Tiro al Blanco y Seguridad', 16.8, 5),
(6, 'Resistencia Física', 18, 6),
(7, 'Técnicas de Investigación Criminal', 15.6, 7),
(8, 'Control de Multitudes en Situaciones Críticas', 17.2, 8),
(9, 'Ciberseguridad en el Ámbito Policial', 16.4, 9),
(10, 'Manejo de Situaciones de Crisis', 15.9, 10);

-- --------------------------------------------------------

--
-- Table structure for table `academia_comunicado`
--

CREATE TABLE `academia_comunicado` (
  `id_comunicado` bigint NOT NULL,
  `asunto` varchar(120) NOT NULL,
  `descripcion` varchar(120) NOT NULL,
  `fecha` date NOT NULL,
  `id_institucion` bigint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `academia_comunicado`
--

INSERT INTO `academia_comunicado` (`id_comunicado`, `asunto`, `descripcion`, `fecha`, `id_institucion`) VALUES
(1, 'Inicio de Clases 2024', 'Inicio de clases el 5 de enero de 2024.', '2024-01-05', 1),
(2, 'Cambios en el Horario de Tiro', 'Nuevo horario para el curso de Tiro.', '2024-02-15', 1),
(3, 'Prácticas de Primeros Auxilios', 'Prácticas para el curso de Primeros Auxilios.', '2024-03-02', 2),
(4, 'Charla sobre Ciberseguridad', 'Charla sobre protección en redes sociales.', '2024-04-10', 2),
(5, 'Examen Final de Criminología', 'Examen final de Criminología el 20 de junio.', '2024-05-25', 1),
(6, 'Actualización en Protocolos de Arresto', 'Nuevos protocolos en técnicas de arresto.', '2024-06-03', 1),
(7, 'Cierre de Inscripción para Cursos de Verano', 'Cierre de inscripciones el 15 de junio.', '2024-06-10', 2),
(8, 'Cambio de Lugar para Examen de Ética', 'Examen de Ética en el auditorio principal.', '2024-07-01', 2),
(9, 'Vacaciones de Invierno', 'Vacaciones de invierno del 1 al 15 de agosto.', '2024-07-15', 1),
(10, 'Reunión de Personal Docente', 'Reunión para discutir el plan académico.', '2024-08-01', 2);

-- --------------------------------------------------------

--
-- Table structure for table `academia_curso`
--

CREATE TABLE `academia_curso` (
  `id_curso` bigint NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `promedio_general` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `academia_curso`
--

INSERT INTO `academia_curso` (`id_curso`, `nombre`, `promedio_general`) VALUES
(1, 'Defensa Personal', 16.5),
(2, 'Técnicas de Arresto', 15.8),
(3, 'Primeros Auxilios', 17.2),
(4, 'Derecho Penal Básico', 14.9),
(5, 'Tiro y Manejo de Armas', 16),
(6, 'Educación Física Policial', 17.3),
(7, 'Ética y Deontología Policial', 15.5),
(8, 'Criminología Básica', 15.7),
(9, 'Control de Multitudes', 14.8),
(10, 'Ciberseguridad Básica', 16.1);

-- --------------------------------------------------------

--
-- Table structure for table `academia_estadotencia`
--

CREATE TABLE `academia_estadotencia` (
  `id_estadotencia` bigint NOT NULL,
  `nombre` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `academia_estadotencia`
--

INSERT INTO `academia_estadotencia` (`id_estadotencia`, `nombre`) VALUES
(1, 'Presente'),
(2, 'Tarde'),
(3, 'Falto'),
(4, 'Justificado');

-- --------------------------------------------------------

--
-- Table structure for table `academia_estudiante`
--

CREATE TABLE `academia_estudiante` (
  `id_estudiante` bigint NOT NULL,
  `apellido_materno` varchar(50) NOT NULL,
  `apellido_paterno` varchar(50) NOT NULL,
  `celular` varchar(9) NOT NULL,
  `correo` varchar(50) NOT NULL,
  `fechanacimineto` date NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `usuario` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `academia_estudiante`
--

INSERT INTO `academia_estudiante` (`id_estudiante`, `apellido_materno`, `apellido_paterno`, `celular`, `correo`, `fechanacimineto`, `nombre`, `usuario`) VALUES
(1, 'Pérez', 'González', '987654321', 'juan.perez@example.com', '2000-02-15', 'Juan', 'juan.perez'),
(2, 'Sánchez', 'López', '963852741', 'maria.sanchez@example.com', '1998-03-22', 'María', 'maria.sanchez'),
(3, 'Ramírez', 'Martínez', '912345678', 'luis.ramirez@example.com', '1997-07-10', 'Luis', 'luis.ramirez'),
(4, 'Torres', 'Vásquez', '932145678', 'ana.torres@example.com', '1996-12-30', 'Ana', 'ana.torres'),
(5, 'Gutiérrez', 'Reyes', '921234567', 'pedro.gutierrez@example.com', '2000-01-19', 'Pedro', 'pedro.gutierrez'),
(6, 'Fernández', 'Hernández', '980765432', 'lucía.fernandez@example.com', '1999-04-25', 'Lucía', 'lucia.fernandez'),
(7, 'Martínez', 'García', '933459876', 'jorge.martinez@example.com', '1998-05-12', 'Jorge', 'jorge.martinez'),
(8, 'López', 'Fernández', '987612345', 'laura.lopez@example.com', '1997-08-03', 'Laura', 'laura.lopez'),
(9, 'González', 'Serrano', '951234567', 'pedro.gonzalez@example.com', '2001-06-14', 'Pedro', 'pedro.gonzalez'),
(10, 'Jiménez', 'Mendoza', '961234579', 'raquel.jimenez@example.com', '1996-02-09', 'Raquel', 'raquel.jimenez'),
(11, 'Pérez', 'Martínez', '912345679', 'felipe.perez@example.com', '1998-01-30', 'Felipe', 'felipe.perez'),
(12, 'Córdoba', 'Ruiz', '954321765', 'sofia.cordoba@example.com', '2002-11-15', 'Sofía', 'sofia.cordoba'),
(13, 'Ramírez', 'López', '945678912', 'daniel.ramirez@example.com', '2000-02-05', 'Daniel', 'daniel.ramirez'),
(14, 'Hernández', 'González', '937654321', 'lucas.hernandez@example.com', '1999-09-10', 'Lucas', 'lucas.hernandez'),
(15, 'Vargas', 'Torres', '957896543', 'isabel.vargas@example.com', '2001-03-22', 'Isabel', 'isabel.vargas'),
(16, 'Rodríguez', 'Reyes', '948567891', 'javier.rodriguez@example.com', '1997-12-14', 'Javier', 'javier.rodriguez'),
(17, 'Paredes', 'Jiménez', '926453781', 'carmen.paredes@example.com', '2000-07-25', 'Carmen', 'carmen.paredes'),
(18, 'Suárez', 'Mora', '976543210', 'alberto.suarez@example.com', '1998-09-11', 'Alberto', 'alberto.suarez'),
(19, 'Alvarez', 'Méndez', '923456789', 'teresa.alvarez@example.com', '1996-10-03', 'Teresa', 'teresa.alvarez'),
(20, 'García', 'López', '911234567', 'antonio.garcia@example.com', '2002-04-21', 'Antonio', 'antonio.garcia'),
(21, 'Serrano', 'Pérez', '983456789', 'veronica.serrano@example.com', '2000-12-09', 'Verónica', 'veronica.serrano'),
(22, 'Martínez', 'Vega', '991234567', 'luis.martinez@example.com', '1998-03-25', 'Luis', 'luis.martinez'),
(23, 'González', 'Muñoz', '965478239', 'manuela.gonzalez@example.com', '1999-08-17', 'Manuela', 'manuela.gonzalez'),
(24, 'Fernández', 'Sánchez', '902345678', 'marcos.fernandez@example.com', '2000-06-11', 'Marcos', 'marcos.fernandez'),
(25, 'López', 'Ruiz', '913457892', 'adriana.lopez@example.com', '1997-05-13', 'Adriana', 'adriana.lopez'),
(26, 'Ramírez', 'Torres', '945236781', 'eduardo.ramirez@example.com', '1998-11-20', 'Eduardo', 'eduardo.ramirez'),
(27, 'Gutiérrez', 'Reyes', '938745612', 'jose.gutierrez@example.com', '1996-09-06', 'José', 'jose.gutierrez'),
(28, 'Martínez', 'Vázquez', '923876543', 'carlos.martinez@example.com', '2000-04-14', 'Carlos', 'carlos.martinez'),
(29, 'López', 'Paredes', '913765432', 'marta.lopez@example.com', '2001-08-10', 'Marta', 'marta.lopez'),
(30, 'Torres', 'Méndez', '939456789', 'victor.torres@example.com', '1999-01-22', 'Víctor', 'victor.torres'),
(31, 'González', 'Gómez', '965678124', 'luisa.gonzalez@example.com', '1997-07-28', 'Luisa', 'luisa.gonzalez'),
(32, 'Córdoba', 'Sánchez', '954867432', 'juan.cordoba@example.com', '2000-05-02', 'Juan', 'juan.cordoba'),
(33, 'Vargas', 'Ruiz', '978345671', 'rosa.vargas@example.com', '2001-12-05', 'Rosa', 'rosa.vargas'),
(34, 'Fernández', 'Martínez', '912345678', 'alvaro.fernandez@example.com', '1996-03-01', 'Álvaro', 'alvaro.fernandez'),
(35, 'Paredes', 'López', '973654218', 'elena.paredes@example.com', '1999-04-09', 'Elena', 'elena.paredes'),
(36, 'Suárez', 'García', '967543210', 'roberto.suarez@example.com', '2001-06-18', 'Roberto', 'roberto.suarez'),
(37, 'Alvarez', 'González', '948712356', 'patricia.alvarez@example.com', '1998-10-14', 'Patricia', 'patricia.alvarez'),
(38, 'Serrano', 'Ruiz', '926578934', 'jose.serrano@example.com', '1997-09-12', 'José', 'jose.serrano'),
(39, 'Rodríguez', 'Vargas', '944567891', 'manuel.rodriguez@example.com', '2000-02-11', 'Manuel', 'manuel.rodriguez'),
(40, 'Mora', 'Torres', '961234579', 'laura.mora@example.com', '1998-12-02', 'Laura', 'laura.mora');

-- --------------------------------------------------------

--
-- Table structure for table `academia_grupo`
--

CREATE TABLE `academia_grupo` (
  `id_grupo` bigint NOT NULL,
  `cupos` int NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `id_seccion` bigint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `academia_grupo`
--

INSERT INTO `academia_grupo` (`id_grupo`, `cupos`, `nombre`, `id_seccion`) VALUES
(1, 30, 'Grupo 1A', 1),
(2, 30, 'Grupo 1B', 1),
(3, 30, 'Grupo 2A', 2),
(4, 30, 'Grupo 2B', 2),
(5, 30, 'Grupo 3A', 3),
(6, 30, 'Grupo 3B', 3),
(7, 30, 'Grupo 4A', 4),
(8, 30, 'Grupo 4B', 4),
(9, 30, 'Grupo 5A', 5),
(10, 30, 'Grupo 5B', 5);

-- --------------------------------------------------------

--
-- Table structure for table `academia_insidencias`
--

CREATE TABLE `academia_insidencias` (
  `id_insidencia` bigint NOT NULL,
  `castigo` varchar(50) NOT NULL,
  `descripcion` varchar(200) NOT NULL,
  `fecha` date NOT NULL,
  `id_curso` bigint NOT NULL,
  `id_estudiante` bigint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `academia_insidencias`
--

INSERT INTO `academia_insidencias` (`id_insidencia`, `castigo`, `descripcion`, `fecha`, `id_curso`, `id_estudiante`) VALUES
(1, 'Suspensión temporal', 'Incumplimiento de reglas de conducta durante las clases de Derecho Penal.', '2024-02-05', 1, 2),
(2, 'Reprimenda', 'Uso indebido del celular durante la clase de Tiro y Manejo de Armas.', '2024-02-06', 2, 4),
(3, 'Suspensión temporal', 'Falta de asistencia sin justificación en el curso de Primeros Auxilios.', '2024-02-07', 3, 7),
(4, 'Amonestación verbal', 'Desorden durante las actividades físicas en Educación Física Policial.', '2024-02-08', 4, 9),
(5, 'Suspensión temporal', 'Actitud despectiva hacia un compañero en la clase de Criminología Básica.', '2024-02-09', 5, 10),
(6, 'Reprimenda', 'Falta de respeto hacia el instructor en Técnicas de Arresto.', '2024-02-10', 6, 12),
(7, 'Suspensión temporal', 'No cumplir con la normativa de seguridad en el curso de Defensa Personal.', '2024-02-11', 7, 15),
(8, 'Amonestación verbal', 'Llegada tarde al curso de Ética y Deontología Policial.', '2024-02-12', 8, 17),
(9, 'Reprimenda', 'Interrupciones constantes en la clase de Control de Multitudes.', '2024-02-13', 9, 20),
(10, 'Suspensión definitiva', 'Violación grave de las reglas durante las clases de Ciberseguridad Básica.', '2024-02-14', 10, 22);

-- --------------------------------------------------------

--
-- Table structure for table `academia_institucion`
--

CREATE TABLE `academia_institucion` (
  `id_institucion` bigint NOT NULL,
  `lugar` varchar(100) NOT NULL,
  `mision` varchar(500) NOT NULL,
  `nombre_institucion` varchar(45) NOT NULL,
  `url_imagen` varchar(255) DEFAULT NULL,
  `vicion` varchar(500) NOT NULL,
  `id_sede` bigint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `academia_institucion`
--

INSERT INTO `academia_institucion` (`id_institucion`, `lugar`, `mision`, `nombre_institucion`, `url_imagen`, `vicion`, `id_sede`) VALUES
(1, 'Juliaca', 'Formar profesionales con altos estándares de ética y conocimiento en el ámbito policial.', 'Institución Pedro Pauled - Juliaca', 'http://example.com/imagen1.jpg', 'Ser una institución líder en formación policial a nivel nacional, promoviendo la excelencia y el compromiso con la sociedad.', 1),
(2, 'Lima', 'Brindar una educación integral que prepare a los futuros agentes del orden para enfrentar los retos de la seguridad pública.', 'Institución Pedro Pauled - Lima', 'http://example.com/imagen2.jpg', 'Ser reconocidos como la mejor institución de formación policial en el país, con un enfoque en innovación y valores.', 2);

-- --------------------------------------------------------

--
-- Table structure for table `academia_logro`
--

CREATE TABLE `academia_logro` (
  `id_logro` bigint NOT NULL,
  `descripcion` varchar(500) NOT NULL,
  `fecha` date NOT NULL,
  `titulo` varchar(100) NOT NULL,
  `url_imagen` varchar(255) DEFAULT NULL,
  `id_institucion` bigint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `academia_logro`
--

INSERT INTO `academia_logro` (`id_logro`, `descripcion`, `fecha`, `titulo`, `url_imagen`, `id_institucion`) VALUES
(1, 'La institución ha logrado una destacada participación en el campeonato nacional de defensa personal, obteniendo el primer lugar.', '2024-05-15', 'Primer Lugar en Campeonato Nacional de Defensa Personal', 'http://example.com/logro1.jpg', 1),
(2, 'Graduación de la primera promoción de oficiales en la sede de Lima, con una ceremonia de reconocimiento y entrega de diplomas.', '2024-06-20', 'Graduación de la Primera Promoción', 'http://example.com/logro2.jpg', 2),
(3, 'Entrenamiento avanzado en manejo de armas y técnicas de tiro, con éxito en la capacitación de 50 nuevos oficiales.', '2024-07-10', 'Capacitación Avanzada en Técnicas de Tiro', 'http://example.com/logro3.jpg', 1),
(4, 'Consolidación del primer programa de bienestar físico-policial para la sede de Lima, mejorando el rendimiento físico de los oficiales.', '2024-08-05', 'Implementación del Programa de Bienestar Físico', 'http://example.com/logro4.jpg', 2),
(5, 'La sede de Juliaca obtuvo el reconocimiento a la mejor gestión académica en el país por sus resultados en formación policial.', '2024-09-18', 'Reconocimiento a la Mejor Gestión Académica', 'http://example.com/logro5.jpg', 1),
(6, 'Participación destacada en el seminario internacional sobre seguridad pública, con la intervención de expertos en criminalística.', '2024-09-25', 'Seminario Internacional de Seguridad Pública', 'http://example.com/logro6.jpg', 2),
(7, 'La sede de Lima celebró la apertura de nuevas instalaciones para mejorar la formación práctica de los oficiales.', '2024-10-02', 'Apertura de Nuevas Instalaciones de Formación', 'http://example.com/logro7.jpg', 2),
(8, 'Se logró la implementación de un sistema de simulación policial en la sede de Juliaca, mejorando la capacitación técnica.', '2024-10-15', 'Implementación del Sistema de Simulación Policial', 'http://example.com/logro8.jpg', 1),
(9, 'Obtención de fondos para el desarrollo de nuevas tecnologías en la investigación criminal a través de una convocatoria pública.', '2024-11-01', 'Obtención de Fondos para Investigación Criminal', 'http://example.com/logro9.jpg', 1),
(10, 'Reconocimiento por parte del gobierno regional de Lima por el compromiso en la formación de policías altamente capacitados.', '2024-11-10', 'Reconocimiento del Gobierno Regional', 'http://example.com/logro10.jpg', 2);

-- --------------------------------------------------------

--
-- Table structure for table `academia_matricula`
--

CREATE TABLE `academia_matricula` (
  `id_matricula` bigint NOT NULL,
  `ante_pato_psico` varchar(100) NOT NULL,
  `ante_poli_judi` varchar(100) NOT NULL,
  `declaracion_jurada` varchar(20) NOT NULL,
  `direccion` varchar(100) NOT NULL,
  `escuela_postula` varchar(100) NOT NULL,
  `familiar_militar_policial` varchar(50) NOT NULL,
  `fecha_incorporacion` date NOT NULL,
  `ie_estudio` varchar(100) NOT NULL,
  `lugar_natural` varchar(100) NOT NULL,
  `natacion` varchar(2) NOT NULL,
  `otros` varchar(50) NOT NULL,
  `peso` double NOT NULL,
  `talla` double NOT NULL,
  `id_apoderado` bigint NOT NULL,
  `id_estudiante` bigint NOT NULL,
  `id_grupo` bigint NOT NULL,
  `id_institucion` bigint NOT NULL,
  `id_medio` bigint NOT NULL,
  `id_plan` bigint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `academia_matricula`
--

INSERT INTO `academia_matricula` (`id_matricula`, `ante_pato_psico`, `ante_poli_judi`, `declaracion_jurada`, `direccion`, `escuela_postula`, `familiar_militar_policial`, `fecha_incorporacion`, `ie_estudio`, `lugar_natural`, `natacion`, `otros`, `peso`, `talla`, `id_apoderado`, `id_estudiante`, `id_grupo`, `id_institucion`, `id_medio`, `id_plan`) VALUES
(1, 'Sí', 'No', 'Acepto', 'Av. Libertador 123', 'Escuela 1', 'Padre Policía', '2024-01-10', 'IE 1', 'Lima', 'Sí', 'Ninguno', 70, 1.75, 1, 1, 1, 1, 1, 1),
(2, 'No', 'Sí', 'No Acepto', 'Av. Pardo 456', 'Escuela 2', 'Madre Militar', '2024-01-15', 'IE 2', 'Arequipa', 'No', 'Ninguno', 65, 1.7, 2, 2, 2, 2, 2, 2),
(3, 'Sí', 'Sí', 'Acepto', 'Av. Brasil 789', 'Escuela 3', 'Madre Militar', '2024-02-10', 'IE 3', 'Cusco', 'No', 'Ninguno', 72, 1.8, 3, 3, 1, 1, 1, 1),
(4, 'No', 'No', 'No Acepto', 'Av. Pescadores 101', 'Escuela 4', 'Padre Policía', '2024-02-12', 'IE 4', 'Arequipa', 'Sí', 'Ninguno', 68, 1.65, 4, 4, 2, 1, 1, 1),
(5, 'Sí', 'Sí', 'Acepto', 'Jr. San Martín 555', 'Escuela 5', 'Madre Militar', '2024-02-14', 'IE 5', 'Lima', 'No', 'Ninguno', 75, 1.78, 5, 5, 3, 1, 1, 1),
(6, 'Sí', 'No', 'Acepto', 'Av. Universitaria 222', 'Escuela 6', 'Padre Policía', '2024-02-18', 'IE 6', 'Tacna', 'Sí', 'Ninguno', 70, 1.7, 6, 6, 1, 1, 1, 1),
(7, 'No', 'Sí', 'No Acepto', 'Calle Libertad 123', 'Escuela 7', 'Madre Militar', '2024-02-20', 'IE 7', 'Piura', 'Sí', 'Ninguno', 80, 1.85, 7, 7, 2, 1, 1, 1),
(8, 'Sí', 'Sí', 'Acepto', 'Av. San Juan 555', 'Escuela 8', 'Padre Policía', '2024-02-22', 'IE 8', 'Chiclayo', 'No', 'Ninguno', 76, 1.72, 8, 8, 3, 1, 1, 1),
(9, 'Sí', 'Sí', 'Acepto', 'Jr. La Paz 123', 'Escuela 9', 'Madre Militar', '2024-02-24', 'IE 9', 'Cuzco', 'Sí', 'Ninguno', 74, 1.77, 9, 9, 1, 1, 1, 1),
(10, 'No', 'No', 'No Acepto', 'Av. Callao 500', 'Escuela 10', 'Padre Policía', '2024-02-26', 'IE 10', 'Junín', 'No', 'Ninguno', 69, 1.68, 10, 10, 2, 1, 1, 1),
(11, 'Sí', 'No', 'Acepto', 'Calle 20 789', 'Escuela 11', 'Madre Militar', '2024-02-28', 'IE 11', 'Ica', 'Sí', 'Ninguno', 71, 1.75, 11, 11, 3, 1, 1, 1),
(12, 'Sí', 'Sí', 'Acepto', 'Av. Los Olivos 312', 'Escuela 12', 'Padre Policía', '2024-03-02', 'IE 12', 'Tumbes', 'No', 'Ninguno', 73, 1.76, 12, 12, 1, 1, 1, 1),
(13, 'Sí', 'Sí', 'No Acepto', 'Calle Real 66', 'Escuela 13', 'Madre Militar', '2024-03-04', 'IE 13', 'Puno', 'Sí', 'Ninguno', 65, 1.69, 13, 13, 2, 1, 1, 1),
(14, 'No', 'No', 'No Acepto', 'Av. Perú 441', 'Escuela 14', 'Padre Policía', '2024-03-06', 'IE 14', 'Ayacucho', 'Sí', 'Ninguno', 78, 1.81, 14, 14, 3, 1, 1, 1),
(15, 'Sí', 'Sí', 'Acepto', 'Jr. Sol 321', 'Escuela 15', 'Madre Militar', '2024-03-08', 'IE 15', 'Lambayeque', 'No', 'Ninguno', 69, 1.74, 15, 15, 1, 1, 1, 1),
(16, 'Sí', 'No', 'Acepto', 'Av. Las Palmas 122', 'Escuela 16', 'Padre Policía', '2024-03-10', 'IE 16', 'Trujillo', 'Sí', 'Ninguno', 74, 1.76, 16, 16, 2, 1, 1, 1),
(17, 'No', 'Sí', 'No Acepto', 'Calle Las Flores 555', 'Escuela 17', 'Madre Militar', '2024-03-12', 'IE 17', 'Loreto', 'No', 'Ninguno', 80, 1.8, 17, 17, 3, 1, 1, 1),
(18, 'Sí', 'Sí', 'Acepto', 'Av. La Victoria 777', 'Escuela 18', 'Padre Policía', '2024-03-14', 'IE 18', 'Moquegua', 'Sí', 'Ninguno', 72, 1.79, 18, 18, 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `academia_medio`
--

CREATE TABLE `academia_medio` (
  `id_medio` bigint NOT NULL,
  `nombre_medio` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `academia_medio`
--

INSERT INTO `academia_medio` (`id_medio`, `nombre_medio`) VALUES
(1, 'Publicidad en Redes Sociales'),
(2, 'Recomendación Personal'),
(3, 'Anuncios en Radio'),
(4, 'Correo Electrónico'),
(5, 'Sitio Web Oficial');

-- --------------------------------------------------------

--
-- Table structure for table `academia_nivel`
--

CREATE TABLE `academia_nivel` (
  `id_nivel` bigint NOT NULL,
  `nombre` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `academia_nivel`
--

INSERT INTO `academia_nivel` (`id_nivel`, `nombre`) VALUES
(1, 'Nivel Academia');

-- --------------------------------------------------------

--
-- Table structure for table `academia_nota`
--

CREATE TABLE `academia_nota` (
  `id_nota` bigint NOT NULL,
  `nota` double NOT NULL,
  `id_competencia` bigint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `academia_nota`
--

INSERT INTO `academia_nota` (`id_nota`, `nota`, `id_competencia`) VALUES
(1, 16.5, 1),
(2, 14, 2),
(3, 17.2, 3),
(4, 15.5, 4),
(5, 18, 5),
(6, 16, 6),
(7, 14.5, 7),
(8, 17, 8),
(9, 15.8, 9),
(10, 16.2, 10),
(11, 18.5, 1),
(12, 14.3, 2),
(13, 16.7, 3),
(14, 15.9, 4),
(15, 17.8, 5),
(16, 16.5, 6);

-- --------------------------------------------------------

--
-- Table structure for table `academia_periodo`
--

CREATE TABLE `academia_periodo` (
  `id_periodo` bigint NOT NULL,
  `nombre_periodo` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `academia_periodo`
--

INSERT INTO `academia_periodo` (`id_periodo`, `nombre_periodo`) VALUES
(1, '2023-1'),
(2, '2024-Invierno'),
(3, '2025-Verano'),
(4, '2025-Invierno'),
(5, '2026-Verano');

-- --------------------------------------------------------

--
-- Table structure for table `academia_plan`
--

CREATE TABLE `academia_plan` (
  `id_plan` bigint NOT NULL,
  `nombre_plan` varchar(20) NOT NULL,
  `id_carga` bigint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `academia_plan`
--

INSERT INTO `academia_plan` (`id_plan`, `nombre_plan`, `id_carga`) VALUES
(1, 'Plan 2024 regular', 1),
(2, 'Plan 2024 intensivo', 2),
(3, 'Plan 2024 Intensivo', 3),
(4, 'Plan 2025 Regular', 4),
(5, 'Plan 2025 intensivo', 5);

-- --------------------------------------------------------

--
-- Table structure for table `academia_seccion`
--

CREATE TABLE `academia_seccion` (
  `id_seccion` bigint NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `id_nivel` bigint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `academia_seccion`
--

INSERT INTO `academia_seccion` (`id_seccion`, `nombre`, `id_nivel`) VALUES
(1, 'Sección A', 1),
(2, 'Sección B', 1),
(3, 'Sección C', 1),
(4, 'Sección D', 1),
(5, 'Sección E', 1),
(6, 'Sección F', 1),
(7, 'Sección G', 1),
(8, 'Sección H', 1);

-- --------------------------------------------------------

--
-- Table structure for table `academia_sede`
--

CREATE TABLE `academia_sede` (
  `id_sede` bigint NOT NULL,
  `nombre_sede` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `academia_sede`
--

INSERT INTO `academia_sede` (`id_sede`, `nombre_sede`) VALUES
(1, 'Sede Juliaca'),
(2, 'Sede Lima');

-- --------------------------------------------------------

--
-- Table structure for table `academia_trabajador`
--

CREATE TABLE `academia_trabajador` (
  `id_trabajador` bigint NOT NULL,
  `apellido_materno` varchar(50) NOT NULL,
  `apellido_paterno` varchar(50) NOT NULL,
  `celular` varchar(9) NOT NULL,
  `correo` varchar(120) NOT NULL,
  `nombre_completo` varchar(50) NOT NULL,
  `usuario` varchar(50) NOT NULL,
  `id_institucion` bigint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `academia_trabajador`
--

INSERT INTO `academia_trabajador` (`id_trabajador`, `apellido_materno`, `apellido_paterno`, `celular`, `correo`, `nombre_completo`, `usuario`, `id_institucion`) VALUES
(1, 'González', 'Pérez', '987654321', 'juan.gonzalez@example.com', 'Juan González Pérez', 'jgonzalez', 1),
(2, 'Martínez', 'López', '976543210', 'maria.martinez@example.com', 'María Martínez López', 'mmartinez', 1),
(3, 'Ramírez', 'Gómez', '965432109', 'pedro.ramirez@example.com', 'Pedro Ramírez Gómez', 'pramirez', 2),
(4, 'Hernández', 'Rodríguez', '954321098', 'luisa.hernandez@example.com', 'Luisa Hernández Rodríguez', 'lhernandez', 2),
(5, 'Fernández', 'Sánchez', '943210987', 'jose.fernandez@example.com', 'José Fernández Sánchez', 'jfernandez', 1),
(6, 'García', 'Martínez', '932109876', 'ana.garcia@example.com', 'Ana García Martínez', 'agarcia', 1),
(7, 'Torres', 'Ruiz', '921098765', 'luis.torres@example.com', 'Luis Torres Ruiz', 'ltorres', 2),
(8, 'Vázquez', 'González', '910987654', 'rosa.vazquez@example.com', 'Rosa Vázquez González', 'rvazquez', 2),
(9, 'Mendoza', 'Pérez', '909876543', 'juan.mendoza@example.com', 'Juan Mendoza Pérez', 'jmendoza', 1),
(10, 'Jiménez', 'Díaz', '898765432', 'pedro.jimenez@example.com', 'Pedro Jiménez Díaz', 'pjimenez', 1),
(11, 'Luna', 'Serrano', '887654321', 'maria.luna@example.com', 'María Luna Serrano', 'mluna', 2),
(12, 'Silva', 'Moreno', '876543210', 'carlos.silva@example.com', 'Carlos Silva Moreno', 'csilva', 2),
(13, 'Ramírez', 'Soto', '865432109', 'lina.ramirez@example.com', 'Lina Ramírez Soto', 'lramirez', 1),
(14, 'Álvarez', 'Núñez', '854321098', 'jorge.alvarez@example.com', 'Jorge Álvarez Núñez', 'jalvarez', 1),
(15, 'Guerrero', 'Serrano', '843210987', 'sandra.guerrero@example.com', 'Sandra Guerrero Serrano', 'sguerrero', 2),
(16, 'Bermúdez', 'Cordero', '832109876', 'martin.bermudez@example.com', 'Martín Bermúdez Cordero', 'mbermudez', 2),
(17, 'Paredes', 'Fernández', '821098765', 'lucia.paredes@example.com', 'Lucía Paredes Fernández', 'lparedes', 1),
(18, 'Ríos', 'González', '810987654', 'adriana.rios@example.com', 'Adriana Ríos González', 'arios', 1),
(19, 'Zapata', 'Vargas', '809876543', 'roberto.zapata@example.com', 'Roberto Zapata Vargas', 'rzapata', 2),
(20, 'Salazar', 'Hernández', '798765432', 'marta.salazar@example.com', 'Marta Salazar Hernández', 'msalazar', 2),
(21, 'Moreno', 'Jiménez', '787654321', 'luis.moreno@example.com', 'Luis Moreno Jiménez', 'lmoreno', 1),
(22, 'Bermúdez', 'Pérez', '776543210', 'isabel.bermudez@example.com', 'Isabel Bermúdez Pérez', 'ibermudez', 1),
(23, 'Castillo', 'Torres', '765432109', 'raul.castillo@example.com', 'Raúl Castillo Torres', 'rcastillo', 2),
(24, 'González', 'Ramírez', '754321098', 'sonia.gonzalez@example.com', 'Sonia González Ramírez', 'sgonzalez', 2),
(25, 'Martínez', 'Ríos', '743210987', 'daniel.martinez@example.com', 'Daniel Martínez Ríos', 'dmartinez', 1),
(26, 'Sánchez', 'Silva', '732109876', 'patricia.sanchez@example.com', 'Patricia Sánchez Silva', 'psanchez', 1),
(27, 'López', 'García', '721098765', 'alberto.lopez@example.com', 'Alberto López García', 'alopez', 2),
(28, 'González', 'Jiménez', '710987654', 'mario.gonzalez@example.com', 'Mario González Jiménez', 'mgonzalez', 2),
(29, 'Vásquez', 'Luna', '709876543', 'teresa.vasquez@example.com', 'Teresa Vásquez Luna', 'tvasquez', 1),
(30, 'Díaz', 'Torres', '698765432', 'pablo.diaz@example.com', 'Pablo Díaz Torres', 'pdiaz', 1);

-- --------------------------------------------------------

--
-- Table structure for table `upeu_accesos`
--

CREATE TABLE `upeu_accesos` (
  `id_acceso` bigint NOT NULL,
  `icono` varchar(60) NOT NULL,
  `nombre` varchar(60) NOT NULL,
  `url` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `upeu_accesos`
--

INSERT INTO `upeu_accesos` (`id_acceso`, `icono`, `nombre`, `url`) VALUES
(1, 'dashboard', 'Panel Principal', '/pages/dashboard'),
(2, 'school', 'Curso', '/pages/curso'),
(3, 'assessment', 'Competencia', '/pages/competencia'),
(4, 'location_city', 'Sede', '/pages/sede'),
(5, 'business', 'Institucion', '/pages/institucion'),
(6, 'announcement', 'Comunicado', '/pages/comunicado'),
(7, 'person', 'Estudiante', '/pages/estudiante'),
(8, 'account_balance', 'Apoderado', '/pages/apoderado'),
(9, 'communication', 'Medio', '/pages/medio'),
(10, 'date_range', 'Periodo', '/pages/periodo'),
(11, 'work', 'Trabajador', '/pages/trabajador'),
(12, 'trending_up', 'Nivel', '/pages/nivel'),
(13, 'group', 'Seccion', '/pages/seccion'),
(14, 'shopping_cart', 'Carga', '/pages/carga'),
(15, 'plan', 'Plan', '/pages/plan'),
(16, 'people', 'Grupo', '/pages/grupo'),
(17, 'school', 'Matricula', '/pages/matricula'),
(18, 'report_problem', 'Insidencia', '/pages/insidencia'),
(19, 'thumb_up', 'Logro', '/pages/logro'),
(20, 'grade', 'Nota', '/pages/nota'),
(21, 'schedule', 'Estadotencia', '/pages/estadotencia'),
(22, 'today', 'Asistencia', '/pages/asistencia');

-- --------------------------------------------------------

--
-- Table structure for table `upeu_acceso_rol`
--

CREATE TABLE `upeu_acceso_rol` (
  `rol_id` bigint NOT NULL,
  `acceso_id` bigint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `upeu_acceso_rol`
--

INSERT INTO `upeu_acceso_rol` (`rol_id`, `acceso_id`) VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(1, 5),
(1, 6),
(1, 7),
(1, 8),
(1, 9),
(1, 10),
(1, 11),
(1, 12),
(1, 13),
(1, 14),
(1, 15),
(1, 16),
(1, 17),
(1, 18),
(1, 19),
(1, 20),
(1, 21),
(1, 22),
(2, 1),
(2, 7),
(2, 8),
(2, 17),
(2, 19),
(2, 20),
(2, 21),
(2, 22),
(3, 1),
(3, 2),
(3, 7),
(3, 8),
(3, 17),
(3, 19),
(3, 20),
(3, 21),
(3, 22);

-- --------------------------------------------------------

--
-- Table structure for table `upeu_roles`
--

CREATE TABLE `upeu_roles` (
  `id_rol` bigint NOT NULL,
  `descripcion` varchar(120) NOT NULL,
  `nombre` enum('ADMIN','DBA','USER') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `upeu_roles`
--

INSERT INTO `upeu_roles` (`id_rol`, `descripcion`, `nombre`) VALUES
(1, 'Administrador', 'ADMIN'),
(2, 'Admin DBA', 'DBA'),
(3, 'Usuario', 'USER');

-- --------------------------------------------------------

--
-- Table structure for table `upeu_usuario`
--

CREATE TABLE `upeu_usuario` (
  `id_usuario` bigint NOT NULL,
  `clave` varchar(100) NOT NULL,
  `estado` varchar(10) NOT NULL,
  `user` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `upeu_usuario`
--

INSERT INTO `upeu_usuario` (`id_usuario`, `clave`, `estado`, `user`) VALUES
(1, '$2a$10$hO6Td/jRjqfKsGjKW8tz4eyR5S.pzXl5CKXlIbGyeOUImQBKuJ.1S', 'Activo', 'kevin'),
(2, '$2a$10$PXCj/kyAyn.Gcqo8htPDaehnjWaIZDAFkvYYhI3q4fofSUizPPy0i', 'Activo', 'grover'),
(3, '$2a$10$giLMR0IJeXpc7FVIgJ8p4OYq00YOMEe/6TNIUB59VPItAkKDern4m', 'Activo', 'bustamante'),
(4, '$2a$10$ZgfFGCB.AGlDRiUEbxpVte4uNGfqknTrrmDdWRVnRIjP2WT6yV036', 'Activo', 'benito'),
(5, '$2a$10$VKGSkE6TzbmGdqMBkbufAOxpgurFJ4utKv13998HmiGb5KML5242q', 'Activo', 'nahuel');

-- --------------------------------------------------------

--
-- Table structure for table `upeu_usuario_rol`
--

CREATE TABLE `upeu_usuario_rol` (
  `rol_id` bigint NOT NULL,
  `usuario_id` bigint NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `upeu_usuario_rol`
--

INSERT INTO `upeu_usuario_rol` (`rol_id`, `usuario_id`) VALUES
(1, 1),
(2, 2),
(3, 3),
(2, 4),
(1, 5);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `academia_apoderado`
--
ALTER TABLE `academia_apoderado`
  ADD PRIMARY KEY (`id_apoderado`);

--
-- Indexes for table `academia_asistencia`
--
ALTER TABLE `academia_asistencia`
  ADD PRIMARY KEY (`id_asistencia`),
  ADD KEY `FK_CURSO_ASISTENCIA` (`id_curso`),
  ADD KEY `FK_ESTADOTENCIA_ASISTENCIA` (`id_estadotencia`),
  ADD KEY `FK_ESTUDIANTE_ASISTENCIA` (`id_estudiante`),
  ADD KEY `FK_PERIODO_ASISTENCIA` (`id_periodo`);

--
-- Indexes for table `academia_carga`
--
ALTER TABLE `academia_carga`
  ADD PRIMARY KEY (`id_carga`),
  ADD KEY `FK_CURSO_CARGA` (`id_curso`),
  ADD KEY `FK_PERIODO_CARGA` (`id_periodo`),
  ADD KEY `FK_SECCION_CARGA` (`id_seccion`),
  ADD KEY `FK_TRABAJADOR_CARGA` (`id_trabajador`);

--
-- Indexes for table `academia_competencia`
--
ALTER TABLE `academia_competencia`
  ADD PRIMARY KEY (`id_competencia`),
  ADD KEY `FK_CURSO_COMPETENCIA` (`id_curso`);

--
-- Indexes for table `academia_comunicado`
--
ALTER TABLE `academia_comunicado`
  ADD PRIMARY KEY (`id_comunicado`),
  ADD KEY `FK_INSTITUCION_COMUNICADO` (`id_institucion`);

--
-- Indexes for table `academia_curso`
--
ALTER TABLE `academia_curso`
  ADD PRIMARY KEY (`id_curso`);

--
-- Indexes for table `academia_estadotencia`
--
ALTER TABLE `academia_estadotencia`
  ADD PRIMARY KEY (`id_estadotencia`);

--
-- Indexes for table `academia_estudiante`
--
ALTER TABLE `academia_estudiante`
  ADD PRIMARY KEY (`id_estudiante`);

--
-- Indexes for table `academia_grupo`
--
ALTER TABLE `academia_grupo`
  ADD PRIMARY KEY (`id_grupo`),
  ADD KEY `FK_SECCION_GRUPO` (`id_seccion`);

--
-- Indexes for table `academia_insidencias`
--
ALTER TABLE `academia_insidencias`
  ADD PRIMARY KEY (`id_insidencia`),
  ADD KEY `FK_CURSO_INSIDENCIA` (`id_curso`),
  ADD KEY `fk_ESTUDIANTE_INSIDENCIA` (`id_estudiante`);

--
-- Indexes for table `academia_institucion`
--
ALTER TABLE `academia_institucion`
  ADD PRIMARY KEY (`id_institucion`),
  ADD KEY `FK_SEDE_INSTITUCION` (`id_sede`);

--
-- Indexes for table `academia_logro`
--
ALTER TABLE `academia_logro`
  ADD PRIMARY KEY (`id_logro`),
  ADD KEY `FK_INSTITUCION_LOGRO` (`id_institucion`);

--
-- Indexes for table `academia_matricula`
--
ALTER TABLE `academia_matricula`
  ADD PRIMARY KEY (`id_matricula`),
  ADD KEY `FK_APODERADO_MATRICULA` (`id_apoderado`),
  ADD KEY `FK_ESTUDIANTE_MATRICULA` (`id_estudiante`),
  ADD KEY `FK_GRUPo_MATRICULA` (`id_grupo`),
  ADD KEY `FK_INSTITUCION_MATRICULA` (`id_institucion`),
  ADD KEY `FK_MEDIO_MATRICULA` (`id_medio`),
  ADD KEY `FK_PLANACADEMICO_MATRICULA` (`id_plan`);

--
-- Indexes for table `academia_medio`
--
ALTER TABLE `academia_medio`
  ADD PRIMARY KEY (`id_medio`);

--
-- Indexes for table `academia_nivel`
--
ALTER TABLE `academia_nivel`
  ADD PRIMARY KEY (`id_nivel`);

--
-- Indexes for table `academia_nota`
--
ALTER TABLE `academia_nota`
  ADD PRIMARY KEY (`id_nota`),
  ADD KEY `FK_COMPETENCIA_NOTA` (`id_competencia`);

--
-- Indexes for table `academia_periodo`
--
ALTER TABLE `academia_periodo`
  ADD PRIMARY KEY (`id_periodo`);

--
-- Indexes for table `academia_plan`
--
ALTER TABLE `academia_plan`
  ADD PRIMARY KEY (`id_plan`),
  ADD KEY `FK_CARGA_PLAN` (`id_carga`);

--
-- Indexes for table `academia_seccion`
--
ALTER TABLE `academia_seccion`
  ADD PRIMARY KEY (`id_seccion`),
  ADD KEY `FK_NIVEL_SECCION` (`id_nivel`);

--
-- Indexes for table `academia_sede`
--
ALTER TABLE `academia_sede`
  ADD PRIMARY KEY (`id_sede`);

--
-- Indexes for table `academia_trabajador`
--
ALTER TABLE `academia_trabajador`
  ADD PRIMARY KEY (`id_trabajador`),
  ADD KEY `FK_INSTITUCION_TRABAJADOR` (`id_institucion`);

--
-- Indexes for table `upeu_accesos`
--
ALTER TABLE `upeu_accesos`
  ADD PRIMARY KEY (`id_acceso`);

--
-- Indexes for table `upeu_acceso_rol`
--
ALTER TABLE `upeu_acceso_rol`
  ADD PRIMARY KEY (`acceso_id`,`rol_id`),
  ADD KEY `FK5olgwvkvi6gfmjp117cnq02cc` (`rol_id`);

--
-- Indexes for table `upeu_roles`
--
ALTER TABLE `upeu_roles`
  ADD PRIMARY KEY (`id_rol`);

--
-- Indexes for table `upeu_usuario`
--
ALTER TABLE `upeu_usuario`
  ADD PRIMARY KEY (`id_usuario`),
  ADD UNIQUE KEY `UKnglinedpa99qfym8jreg27mx8` (`user`);

--
-- Indexes for table `upeu_usuario_rol`
--
ALTER TABLE `upeu_usuario_rol`
  ADD PRIMARY KEY (`rol_id`,`usuario_id`),
  ADD KEY `FKehuc4c37b7soxfqfexqh3kg6s` (`usuario_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `academia_apoderado`
--
ALTER TABLE `academia_apoderado`
  MODIFY `id_apoderado` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `academia_asistencia`
--
ALTER TABLE `academia_asistencia`
  MODIFY `id_asistencia` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `academia_carga`
--
ALTER TABLE `academia_carga`
  MODIFY `id_carga` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `academia_competencia`
--
ALTER TABLE `academia_competencia`
  MODIFY `id_competencia` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `academia_comunicado`
--
ALTER TABLE `academia_comunicado`
  MODIFY `id_comunicado` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `academia_curso`
--
ALTER TABLE `academia_curso`
  MODIFY `id_curso` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `academia_estadotencia`
--
ALTER TABLE `academia_estadotencia`
  MODIFY `id_estadotencia` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `academia_estudiante`
--
ALTER TABLE `academia_estudiante`
  MODIFY `id_estudiante` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `academia_grupo`
--
ALTER TABLE `academia_grupo`
  MODIFY `id_grupo` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `academia_insidencias`
--
ALTER TABLE `academia_insidencias`
  MODIFY `id_insidencia` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `academia_institucion`
--
ALTER TABLE `academia_institucion`
  MODIFY `id_institucion` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `academia_logro`
--
ALTER TABLE `academia_logro`
  MODIFY `id_logro` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `academia_matricula`
--
ALTER TABLE `academia_matricula`
  MODIFY `id_matricula` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `academia_medio`
--
ALTER TABLE `academia_medio`
  MODIFY `id_medio` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `academia_nivel`
--
ALTER TABLE `academia_nivel`
  MODIFY `id_nivel` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `academia_nota`
--
ALTER TABLE `academia_nota`
  MODIFY `id_nota` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `academia_periodo`
--
ALTER TABLE `academia_periodo`
  MODIFY `id_periodo` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `academia_plan`
--
ALTER TABLE `academia_plan`
  MODIFY `id_plan` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `academia_seccion`
--
ALTER TABLE `academia_seccion`
  MODIFY `id_seccion` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `academia_sede`
--
ALTER TABLE `academia_sede`
  MODIFY `id_sede` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `academia_trabajador`
--
ALTER TABLE `academia_trabajador`
  MODIFY `id_trabajador` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `upeu_accesos`
--
ALTER TABLE `upeu_accesos`
  MODIFY `id_acceso` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `upeu_roles`
--
ALTER TABLE `upeu_roles`
  MODIFY `id_rol` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `upeu_usuario`
--
ALTER TABLE `upeu_usuario`
  MODIFY `id_usuario` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `academia_asistencia`
--
ALTER TABLE `academia_asistencia`
  ADD CONSTRAINT `FK_CURSO_ASISTENCIA` FOREIGN KEY (`id_curso`) REFERENCES `academia_curso` (`id_curso`),
  ADD CONSTRAINT `FK_ESTADOTENCIA_ASISTENCIA` FOREIGN KEY (`id_estadotencia`) REFERENCES `academia_estadotencia` (`id_estadotencia`),
  ADD CONSTRAINT `FK_ESTUDIANTE_ASISTENCIA` FOREIGN KEY (`id_estudiante`) REFERENCES `academia_estudiante` (`id_estudiante`),
  ADD CONSTRAINT `FK_PERIODO_ASISTENCIA` FOREIGN KEY (`id_periodo`) REFERENCES `academia_periodo` (`id_periodo`);

--
-- Constraints for table `academia_carga`
--
ALTER TABLE `academia_carga`
  ADD CONSTRAINT `FK_CURSO_CARGA` FOREIGN KEY (`id_curso`) REFERENCES `academia_curso` (`id_curso`),
  ADD CONSTRAINT `FK_PERIODO_CARGA` FOREIGN KEY (`id_periodo`) REFERENCES `academia_periodo` (`id_periodo`),
  ADD CONSTRAINT `FK_SECCION_CARGA` FOREIGN KEY (`id_seccion`) REFERENCES `academia_seccion` (`id_seccion`),
  ADD CONSTRAINT `FK_TRABAJADOR_CARGA` FOREIGN KEY (`id_trabajador`) REFERENCES `academia_trabajador` (`id_trabajador`);

--
-- Constraints for table `academia_competencia`
--
ALTER TABLE `academia_competencia`
  ADD CONSTRAINT `FK_CURSO_COMPETENCIA` FOREIGN KEY (`id_curso`) REFERENCES `academia_curso` (`id_curso`);

--
-- Constraints for table `academia_comunicado`
--
ALTER TABLE `academia_comunicado`
  ADD CONSTRAINT `FK_INSTITUCION_COMUNICADO` FOREIGN KEY (`id_institucion`) REFERENCES `academia_institucion` (`id_institucion`);

--
-- Constraints for table `academia_grupo`
--
ALTER TABLE `academia_grupo`
  ADD CONSTRAINT `FK_SECCION_GRUPO` FOREIGN KEY (`id_seccion`) REFERENCES `academia_seccion` (`id_seccion`);

--
-- Constraints for table `academia_insidencias`
--
ALTER TABLE `academia_insidencias`
  ADD CONSTRAINT `FK_CURSO_INSIDENCIA` FOREIGN KEY (`id_curso`) REFERENCES `academia_curso` (`id_curso`),
  ADD CONSTRAINT `fk_ESTUDIANTE_INSIDENCIA` FOREIGN KEY (`id_estudiante`) REFERENCES `academia_estudiante` (`id_estudiante`);

--
-- Constraints for table `academia_institucion`
--
ALTER TABLE `academia_institucion`
  ADD CONSTRAINT `FK_SEDE_INSTITUCION` FOREIGN KEY (`id_sede`) REFERENCES `academia_sede` (`id_sede`);

--
-- Constraints for table `academia_logro`
--
ALTER TABLE `academia_logro`
  ADD CONSTRAINT `FK_INSTITUCION_LOGRO` FOREIGN KEY (`id_institucion`) REFERENCES `academia_institucion` (`id_institucion`);

--
-- Constraints for table `academia_matricula`
--
ALTER TABLE `academia_matricula`
  ADD CONSTRAINT `FK_APODERADO_MATRICULA` FOREIGN KEY (`id_apoderado`) REFERENCES `academia_apoderado` (`id_apoderado`),
  ADD CONSTRAINT `FK_ESTUDIANTE_MATRICULA` FOREIGN KEY (`id_estudiante`) REFERENCES `academia_estudiante` (`id_estudiante`),
  ADD CONSTRAINT `FK_GRUPo_MATRICULA` FOREIGN KEY (`id_grupo`) REFERENCES `academia_grupo` (`id_grupo`),
  ADD CONSTRAINT `FK_INSTITUCION_MATRICULA` FOREIGN KEY (`id_institucion`) REFERENCES `academia_institucion` (`id_institucion`),
  ADD CONSTRAINT `FK_MEDIO_MATRICULA` FOREIGN KEY (`id_medio`) REFERENCES `academia_medio` (`id_medio`),
  ADD CONSTRAINT `FK_PLANACADEMICO_MATRICULA` FOREIGN KEY (`id_plan`) REFERENCES `academia_plan` (`id_plan`);

--
-- Constraints for table `academia_nota`
--
ALTER TABLE `academia_nota`
  ADD CONSTRAINT `FK_COMPETENCIA_NOTA` FOREIGN KEY (`id_competencia`) REFERENCES `academia_competencia` (`id_competencia`);

--
-- Constraints for table `academia_plan`
--
ALTER TABLE `academia_plan`
  ADD CONSTRAINT `FK_CARGA_PLAN` FOREIGN KEY (`id_carga`) REFERENCES `academia_carga` (`id_carga`);

--
-- Constraints for table `academia_seccion`
--
ALTER TABLE `academia_seccion`
  ADD CONSTRAINT `FK_NIVEL_SECCION` FOREIGN KEY (`id_nivel`) REFERENCES `academia_nivel` (`id_nivel`);

--
-- Constraints for table `academia_trabajador`
--
ALTER TABLE `academia_trabajador`
  ADD CONSTRAINT `FK_INSTITUCION_TRABAJADOR` FOREIGN KEY (`id_institucion`) REFERENCES `academia_institucion` (`id_institucion`);

--
-- Constraints for table `upeu_acceso_rol`
--
ALTER TABLE `upeu_acceso_rol`
  ADD CONSTRAINT `FK5olgwvkvi6gfmjp117cnq02cc` FOREIGN KEY (`rol_id`) REFERENCES `upeu_roles` (`id_rol`),
  ADD CONSTRAINT `FKpt947hoat26u0hbc4qmkrfwj2` FOREIGN KEY (`acceso_id`) REFERENCES `upeu_accesos` (`id_acceso`);

--
-- Constraints for table `upeu_usuario_rol`
--
ALTER TABLE `upeu_usuario_rol`
  ADD CONSTRAINT `FK5i9y5d4yvar0uhcf6q50qpw9h` FOREIGN KEY (`rol_id`) REFERENCES `upeu_roles` (`id_rol`),
  ADD CONSTRAINT `FKehuc4c37b7soxfqfexqh3kg6s` FOREIGN KEY (`usuario_id`) REFERENCES `upeu_usuario` (`id_usuario`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
