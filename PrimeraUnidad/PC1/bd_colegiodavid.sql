-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 19, 2025 at 08:18 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bd_colegiodavid`
--

-- --------------------------------------------------------

--
-- Table structure for table `alumnos`
--

CREATE TABLE `alumnos` (
  `ID_Alumno` int(11) NOT NULL,
  `Nombre` varchar(20) NOT NULL,
  `Apellido` varchar(20) NOT NULL,
  `Fecha_Nacimiento` date NOT NULL,
  `Direccion` text NOT NULL,
  `Telefono` varchar(8) NOT NULL,
  `Correo` varchar(100) NOT NULL,
  `ID_Grado` int(11) NOT NULL,
  `ID_Usuario` int(11) NOT NULL,
  `ID_Padre` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `alumnos`
--

INSERT INTO `alumnos` (`ID_Alumno`, `Nombre`, `Apellido`, `Fecha_Nacimiento`, `Direccion`, `Telefono`, `Correo`, `ID_Grado`, `ID_Usuario`, `ID_Padre`) VALUES
(1, 'Gerson', 'Cordon', '2000-02-23', '8va. Calle 22-90, zona 4 mixco', '34567290', 'gersoncordon@davco.edu.gt', 2, 1, 1),
(12, 'Brandon', 'Batres', '2000-02-15', '8va. Calle 22-91, zona 6 mixco', '90267182', 'brandonbatres@davco.edu.gt', 6, 6, 2),
(13, 'Diego', 'Gomez', '2000-06-12', '3ra. Calle 22-90, zona 3 mixco', '34512345', 'diegogomez@davco.edu.gt', 3, 7, 3),
(14, 'Mario', 'Bravo', '2000-05-12', '9na. Calle 22-90, zona 6 mixco', '43567832', 'mariobravo@davco.edu.gt', 5, 8, 4),
(15, 'Carlos', 'Concoha', '2000-10-05', '6ta. av. Calle 22-80, zona 4 San Juan Sac', '90872678', 'carlosconcoha@davco.edu.gt', 9, 9, 5),
(16, 'Markus', 'Mogollon', '2000-12-08', '4ta. Calle, zona 21 mixco', '89076527', 'markusmogollon@davco.edu.gt', 10, 10, 6),
(17, 'Andri', 'Obed', '2000-01-20', '9na. Calle 267, zona 20 de mixco', '23456789', 'andriobed@davco.edu.gt', 4, 0, 7),
(18, 'Julio', 'Gomez', '2000-04-17', 'Calle 67, zona 1 de mixco', '20182934', 'juliogomez@davco.edu.gt', 8, 0, 8),
(19, 'Andres', 'Garcia', '2000-11-12', 'Calle 22, zona 1 de mixco', '20987123', 'andresgarcia@davco.edu.gt', 1, 0, 9),
(20, 'Maria', 'Sandoval', '2011-02-23', 'Calle 22-67, zona 8 de mixco', '21234321', 'mariasandoval@davco.edu.gt', 7, 0, 10);

-- --------------------------------------------------------

--
-- Table structure for table `asistencia`
--

CREATE TABLE `asistencia` (
  `ID_Asistencia` int(11) NOT NULL,
  `ID_Alumno` int(11) NOT NULL,
  `ID_Curso` int(11) NOT NULL,
  `Fecha` date NOT NULL,
  `Estado` enum('Presente','Ausente','Tarde','') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `asistencia`
--

INSERT INTO `asistencia` (`ID_Asistencia`, `ID_Alumno`, `ID_Curso`, `Fecha`, `Estado`) VALUES
(1, 1, 1, '2025-01-15', 'Presente'),
(2, 12, 1, '2025-01-15', 'Presente'),
(3, 13, 1, '2025-01-15', 'Ausente'),
(4, 14, 1, '2025-01-15', 'Ausente'),
(5, 15, 1, '2025-01-15', 'Tarde'),
(6, 16, 1, '2025-01-15', 'Tarde'),
(7, 17, 1, '2025-01-15', 'Tarde'),
(8, 18, 1, '2025-01-15', 'Tarde'),
(9, 19, 1, '2025-01-15', 'Presente'),
(10, 20, 1, '2025-01-15', 'Presente');

-- --------------------------------------------------------

--
-- Table structure for table `calificaciones`
--

CREATE TABLE `calificaciones` (
  `ID_Calificacion` int(11) NOT NULL,
  `ID_Alumno` int(11) NOT NULL,
  `ID_Curso` int(11) NOT NULL,
  `ID_Profesor` int(11) NOT NULL,
  `Nota` int(11) NOT NULL,
  `Observaciones` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `calificaciones`
--

INSERT INTO `calificaciones` (`ID_Calificacion`, `ID_Alumno`, `ID_Curso`, `ID_Profesor`, `Nota`, `Observaciones`) VALUES
(1, 1, 1, 8, 100, 'Excelente rendimiento en matematicas.'),
(2, 12, 1, 8, 90, 'Buen rendimiento en matematicas.'),
(3, 13, 1, 8, 88, 'Buen rendimiento en matematicas.'),
(4, 14, 1, 8, 85, 'Buen rendimiento en matematicas.'),
(5, 15, 1, 8, 95, 'Buen rendimiento en matematicas.'),
(6, 16, 1, 8, 60, 'Debe mejorar rendimiento en matematicas.'),
(7, 17, 1, 8, 40, 'Deficiente, debe mejorar rendimiento en matematicas.'),
(8, 18, 1, 8, 30, 'Deficiente, debe mejorar rendimiento en matematicas.'),
(9, 19, 1, 8, 90, 'Buen rendimiento en matematicas.'),
(10, 20, 1, 8, 100, 'Excelente rendimiento en matematicas.');

-- --------------------------------------------------------

--
-- Table structure for table `cursos`
--

CREATE TABLE `cursos` (
  `ID_Curso` int(11) NOT NULL,
  `Nombre_Curso` varchar(50) NOT NULL,
  `Descripcion` text NOT NULL,
  `ID_Profesor` int(11) NOT NULL,
  `ID_Horario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cursos`
--

INSERT INTO `cursos` (`ID_Curso`, `Nombre_Curso`, `Descripcion`, `ID_Profesor`, `ID_Horario`) VALUES
(1, 'Matematicas', 'Matematicas para todos los niveles', 8, 1),
(2, 'Computacion', 'Computacion carreras', 1, 2),
(3, 'Fisica', 'Fisica para todos los niveles', 2, 3),
(4, 'Kaqchikel', 'Kaqchikel para todos los niveles', 3, 4),
(5, 'Computacion', 'Computacion para todos los niveles', 4, 5),
(6, 'Etica', 'Etica para todos los niveles', 5, 6),
(7, 'Cristiana', 'Cristiana para todos los niveles', 6, 7),
(8, 'Cristiana', 'Cristiana para todos los niveles', 7, 8),
(9, 'Ciencias_Sociales', 'CienciasSociales para todos los niveles', 9, 9),
(10, 'Lenguaje', 'Lenguaje para todos los niveles', 10, 10);

-- --------------------------------------------------------

--
-- Table structure for table `documentos_alumnos`
--

CREATE TABLE `documentos_alumnos` (
  `ID_Documento` int(11) NOT NULL,
  `ID_Alumno` int(11) NOT NULL,
  `Tipo_Documento` varchar(100) NOT NULL,
  `URL_Archivo` varchar(2048) NOT NULL,
  `Fecha_Subida` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `documentos_alumnos`
--

INSERT INTO `documentos_alumnos` (`ID_Documento`, `ID_Alumno`, `Tipo_Documento`, `URL_Archivo`, `Fecha_Subida`) VALUES
(1, 1, 'Tarea', 'https://example.com?utm_source=boletininformativo4&utm_medium=correo&utm_campaign=tarea', '2025-01-19 06:00:00'),
(2, 2, 'Tarea', 'https://example.com?utm_source=boletininformativo4&utm_medium=correo&utm_campaign=tarea', '2025-01-19 06:00:00'),
(3, 3, 'Tarea', 'https://example.com?utm_source=boletininformativo4&utm_medium=correo&utm_campaign=tarea', '2025-01-19 06:00:00'),
(4, 4, 'Tarea', 'https://example.com?utm_source=boletininformativo4&utm_medium=correo&utm_campaign=tarea', '2025-01-19 06:00:00'),
(5, 5, 'Tarea', 'https://example.com?utm_source=boletininformativo4&utm_medium=correo&utm_campaign=tarea', '2025-01-19 06:00:00'),
(6, 6, 'Tarea', 'https://example.com?utm_source=boletininformativo4&utm_medium=correo&utm_campaign=tarea', '2025-01-19 06:00:00'),
(7, 7, 'Tarea', 'https://example.com?utm_source=boletininformativo4&utm_medium=correo&utm_campaign=tarea', '2025-01-19 06:00:00'),
(8, 8, 'Tarea', 'https://example.com?utm_source=boletininformativo4&utm_medium=correo&utm_campaign=tarea', '2025-01-19 06:00:00'),
(9, 9, 'Tarea', 'https://example.com?utm_source=boletininformativo4&utm_medium=correo&utm_campaign=tarea', '2025-01-19 06:00:00'),
(10, 10, 'Tarea', 'https://example.com?utm_source=boletininformativo4&utm_medium=correo&utm_campaign=tarea', '2025-01-19 06:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `grados`
--

CREATE TABLE `grados` (
  `ID_Grado` int(11) NOT NULL,
  `Grado` varchar(30) NOT NULL,
  `Tipo_Grado` varchar(30) NOT NULL,
  `Seccion` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `grados`
--

INSERT INTO `grados` (`ID_Grado`, `Grado`, `Tipo_Grado`, `Seccion`) VALUES
(1, 'Primero', 'Basicos', 'A'),
(2, 'Segundo', 'Basicos', 'A'),
(3, 'Tercero', 'Basicos', 'A'),
(4, 'Cuarto', 'Computacion', 'A'),
(5, 'Quinto', 'Computacion', 'A'),
(6, 'Sexto', 'Computacion', 'A'),
(7, 'Cuarto', 'Mecanica', 'A'),
(8, 'Quinto', 'Mecanica', 'A'),
(9, 'Sexto', 'Mecanica', 'A'),
(10, 'Cuarto', 'CCLL', 'A');

-- --------------------------------------------------------

--
-- Table structure for table `horarios`
--

CREATE TABLE `horarios` (
  `ID_Horario` int(11) NOT NULL,
  `dia_semana` enum('Lunes','Martes','Miercoles','Jueves','Viernes') NOT NULL,
  `hora_inicio` time NOT NULL,
  `hora_fin` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `horarios`
--

INSERT INTO `horarios` (`ID_Horario`, `dia_semana`, `hora_inicio`, `hora_fin`) VALUES
(1, 'Lunes', '12:25:00', '13:00:00'),
(2, 'Martes', '12:25:00', '13:00:00'),
(3, 'Miercoles', '12:25:00', '13:00:00'),
(4, 'Jueves', '12:25:00', '13:00:00'),
(5, 'Viernes', '12:25:00', '13:00:00'),
(6, 'Lunes', '13:00:00', '13:35:00'),
(7, 'Martes', '13:00:00', '13:35:00'),
(8, 'Miercoles', '13:00:00', '13:35:00'),
(9, 'Jueves', '13:00:00', '13:35:00'),
(10, 'Viernes', '13:00:00', '13:35:00');

-- --------------------------------------------------------

--
-- Table structure for table `padres_de_familia`
--

CREATE TABLE `padres_de_familia` (
  `ID_Padre` int(11) NOT NULL,
  `Nombre` varchar(30) NOT NULL,
  `Apellido` varchar(30) NOT NULL,
  `Telefono` varchar(8) NOT NULL,
  `Correo` varchar(100) NOT NULL,
  `Direccion` text NOT NULL,
  `ID_Usuario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `padres_de_familia`
--

INSERT INTO `padres_de_familia` (`ID_Padre`, `Nombre`, `Apellido`, `Telefono`, `Correo`, `Direccion`, `ID_Usuario`) VALUES
(1, 'Lilian', 'Menchu', '90823912', 'lilianmenchu@padres.davco.edu.gt', '8va. Calle 22-90, zona 4 mixco', 3),
(2, 'Devany', 'Castillo', '43242123', 'devanycastillo@padres.davco.edu.gt', 'Sanjuan Sac', 0),
(3, 'Angie', 'Mazariegos', '09890890', 'angiemazariegos@padres.davco.edu.gt', 'San Juan Sac', 0),
(4, 'Lucia', 'Suy', '43234234', 'luciasuy@padres.davco.edu.gt', 'San Juan Sac', 0),
(5, 'Ernesto', 'Bran', '43243212', 'ernestobran@padres.davco.edu.gt', 'San Juan Sac', 0),
(6, 'Lidia', 'Meono', '3422332', 'lidiameono@padres.davco.edu.gt', 'San Juan Sac', 0),
(7, 'Julio', 'Sierra', '23412343', 'juliosierra@padres.davco.edu.gt', 'San Juan Sac', 0),
(8, 'Alejandra', 'Parada', '12341231', 'alejandraparada@padres.davco.edu.gt', 'San Juan Sac', 0),
(9, 'Jairo', 'Cux', '12345678', 'jairocux@padres.davco.edu.gt', 'San Juan Sac', 0),
(10, 'Rodrigo', 'Buch', '23123412', 'rodrigobuch@padres.davco.edu.gt', 'San Juan Sac', 0);

-- --------------------------------------------------------

--
-- Table structure for table `profesores`
--

CREATE TABLE `profesores` (
  `ID_Profesor` int(11) NOT NULL,
  `Nombre` varchar(30) NOT NULL,
  `Apellido` varchar(30) NOT NULL,
  `Telefono` varchar(8) NOT NULL,
  `Correo` varchar(100) NOT NULL,
  `ID_Usuario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `profesores`
--

INSERT INTO `profesores` (`ID_Profesor`, `Nombre`, `Apellido`, `Telefono`, `Correo`, `ID_Usuario`) VALUES
(1, 'Oscar', 'Mendez', '80907652', 'oscarmendez@davco.edu.gt', 2),
(2, 'Alex', 'Acajabon', '90207652', 'alexacajabon@davco.edu.gt', 0),
(3, 'Rigoberto', 'Camey', '78212034', 'rigocamey@davco.edu.gt', 0),
(4, 'Ernesto', 'Cruz', '20907652', 'netocruz@davco.edu.gt', 0),
(5, 'Ashly', 'Monroy', '80907680', 'ashlymonroy@davco.edu.gt', 0),
(6, 'Allan', 'Paredez', '78347652', 'allanparedez@davco.edu.gt', 0),
(7, 'Julia', 'Diaz', '34907652', 'juliadiaz@davco.edu.gt', 0),
(8, 'Mirna', 'Catalan', '73207652', 'mirnacatalan@davco.edu.gt', 0),
(9, 'Nancy', 'Vargas', '53207652', 'nancyvargas@davco.edu.gt', 0),
(10, 'Norma', 'Perez', '53208052', 'normaperez@davco.edu.gt', 0);

-- --------------------------------------------------------

--
-- Table structure for table `usuarios`
--

CREATE TABLE `usuarios` (
  `ID_Usuario` int(11) NOT NULL,
  `Nombre_Usuario` varchar(50) NOT NULL,
  `Contra` varchar(50) NOT NULL,
  `Rol` enum('Alumno','Padre_Familia','Profesor','Coordinacion') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `usuarios`
--

INSERT INTO `usuarios` (`ID_Usuario`, `Nombre_Usuario`, `Contra`, `Rol`) VALUES
(1, 'GersonCordon', 'gerson.123', 'Alumno'),
(2, 'OscarMendez', 'menfra.123', 'Profesor'),
(3, 'LilianMenchu', 'lili.123', 'Padre_Familia'),
(4, 'CoordinacionAcademica', 'coordinaciona.123', 'Coordinacion'),
(5, 'CoordinacionTecnica', 'coordinaciont.123', 'Coordinacion'),
(6, 'BrandonBatres', 'brandon.123', 'Alumno'),
(7, 'DiegoGomez', 'diego.123', 'Alumno'),
(8, 'MarioBravo', 'mario.123', 'Alumno'),
(9, 'Carlos Concoha', 'carlos.123', 'Alumno'),
(10, 'Markus Mogollon', 'markus.123', 'Alumno');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `alumnos`
--
ALTER TABLE `alumnos`
  ADD PRIMARY KEY (`ID_Alumno`),
  ADD KEY `ID_Usuario` (`ID_Usuario`,`ID_Padre`),
  ADD KEY `ID_Grado` (`ID_Grado`);

--
-- Indexes for table `asistencia`
--
ALTER TABLE `asistencia`
  ADD PRIMARY KEY (`ID_Asistencia`),
  ADD KEY `ID_Alumno` (`ID_Alumno`),
  ADD KEY `ID_Curso` (`ID_Curso`);

--
-- Indexes for table `calificaciones`
--
ALTER TABLE `calificaciones`
  ADD PRIMARY KEY (`ID_Calificacion`),
  ADD KEY `ID_Alumno` (`ID_Alumno`,`ID_Curso`,`ID_Profesor`);

--
-- Indexes for table `cursos`
--
ALTER TABLE `cursos`
  ADD PRIMARY KEY (`ID_Curso`),
  ADD KEY `ID_Profesor` (`ID_Profesor`,`ID_Horario`);

--
-- Indexes for table `documentos_alumnos`
--
ALTER TABLE `documentos_alumnos`
  ADD PRIMARY KEY (`ID_Documento`),
  ADD KEY `ID_Alumno` (`ID_Alumno`);

--
-- Indexes for table `grados`
--
ALTER TABLE `grados`
  ADD PRIMARY KEY (`ID_Grado`);

--
-- Indexes for table `horarios`
--
ALTER TABLE `horarios`
  ADD PRIMARY KEY (`ID_Horario`);

--
-- Indexes for table `padres_de_familia`
--
ALTER TABLE `padres_de_familia`
  ADD PRIMARY KEY (`ID_Padre`),
  ADD KEY `ID_Usuario` (`ID_Usuario`);

--
-- Indexes for table `profesores`
--
ALTER TABLE `profesores`
  ADD PRIMARY KEY (`ID_Profesor`),
  ADD KEY `ID_Usuario` (`ID_Usuario`);

--
-- Indexes for table `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`ID_Usuario`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `alumnos`
--
ALTER TABLE `alumnos`
  MODIFY `ID_Alumno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `asistencia`
--
ALTER TABLE `asistencia`
  MODIFY `ID_Asistencia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `calificaciones`
--
ALTER TABLE `calificaciones`
  MODIFY `ID_Calificacion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `cursos`
--
ALTER TABLE `cursos`
  MODIFY `ID_Curso` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `documentos_alumnos`
--
ALTER TABLE `documentos_alumnos`
  MODIFY `ID_Documento` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `grados`
--
ALTER TABLE `grados`
  MODIFY `ID_Grado` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `horarios`
--
ALTER TABLE `horarios`
  MODIFY `ID_Horario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `padres_de_familia`
--
ALTER TABLE `padres_de_familia`
  MODIFY `ID_Padre` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `profesores`
--
ALTER TABLE `profesores`
  MODIFY `ID_Profesor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `ID_Usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
