/*tabla pacientes*/

-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 10, 2021 at 04:34 AM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laboratorio`
--

-- --------------------------------------------------------

--
-- Table structure for table `pacientes`
--

CREATE TABLE `pacientes` (
  `cedula` int(11) NOT NULL,
  `nombre` varchar(40) COLLATE utf8_spanish_ci DEFAULT NULL,
  `apellido` varchar(40) COLLATE utf8_spanish_ci DEFAULT NULL,
  `direccion` varchar(40) COLLATE utf8_spanish_ci DEFAULT NULL,
  `sexo` varchar(20) COLLATE utf8_spanish_ci DEFAULT NULL,
  `telefonoMovil` varchar(20) COLLATE utf8_spanish_ci DEFAULT NULL,
  `correo` varchar(150) COLLATE utf8_spanish_ci DEFAULT NULL,
  `edad` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Dumping data for table `pacientes`
--

INSERT INTO `pacientes` (`cedula`, `nombre`, `apellido`, `direccion`, `sexo`, `telefonoMovil`, `correo`, `edad`) VALUES
(1692101, 'Oda', 'Soto', 'Los Haticos', 'Femenino', '04146222658', 'oda@gmail.com', '82'),
(1699381, 'Ligia', 'Cristalino', 'Urb la Paz', 'Femenino', '04146542238', 'ligia@hotmail.com', '77'),
(7791327, 'Ovidio', 'Pirela', 'Calle 67\r\nentre Avenidas 15 y 16', 'Masculino', '04146200952', 'ovidiopirela@gmail.com', '55'),
(9707842, 'Maily', 'Bermudez', 'Doral Norte', 'Femenino', '04146458554', 'opirela@hotmail.com', '56'),
(132465789, 'gujtfg', 'dsgf', 'fdgdfg', 'Masculino', '132465779', 'gsdadggd', '22');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pacientes`
--
ALTER TABLE `pacientes`
  ADD PRIMARY KEY (`cedula`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;





/*tabla examenes de laboratorio*/

-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 10, 2021 at 04:36 AM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laboratorio`
--

-- --------------------------------------------------------

--
-- Table structure for table `examenes`
--

CREATE TABLE `examenes` (
  `ID` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `nombre` varchar(40) COLLATE utf8_spanish_ci DEFAULT NULL,
  `unidad` varchar(40) COLLATE utf8_spanish_ci DEFAULT NULL,
  `valordereferencia` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `tipo_id` varchar(20) COLLATE utf8_spanish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Dumping data for table `examenes`
--

INSERT INTO `examenes` (`ID`, `nombre`, `unidad`, `valordereferencia`, `tipo_id`) VALUES
('AAN', 'Antic. Antinucleares', NULL, NULL, 'I'),
('ADNA', 'Antic. DNA', NULL, NULL, 'I'),
('AFP', 'AFP (Alfabeto Prot)', NULL, NULL, 'I'),
('Amon', 'Amonio', NULL, NULL, 'E'),
('ARIGG', 'Antic. Rubeola IgG', NULL, NULL, 'I'),
('ARIGM', 'Antic. Rubeola IgM', NULL, NULL, 'I'),
('AT', 'Antic Toxoplasmosis', NULL, NULL, 'E'),
('AU', 'Acido Urico', 'mg/dL', '2,6-6', 'B'),
('Bili', 'Bilirrubina T y F', NULL, NULL, 'B'),
('C', 'Creatinina', 'mg/dL', '0,5-1,4', 'B'),
('Ca', 'Calcio', NULL, NULL, 'E'),
('CEA', 'CEA (Marc Tumoral)', NULL, NULL, 'I'),
('CIGG', 'Covid-19 IgG', NULL, NULL, 'I'),
('CIGM', 'Covid-19 IgM', NULL, NULL, 'I'),
('Cl', 'Cloro', NULL, NULL, 'E'),
('Cort', 'Cortisol', NULL, NULL, 'I'),
('CPKMB', 'C.P.K.-MB', NULL, NULL, 'B'),
('CR', 'Calculos Renales', NULL, NULL, 'U'),
('CSC3', 'Comp. Serico C3', NULL, NULL, 'I'),
('CSC4', 'Comp. Serico C4', NULL, NULL, 'I'),
('CT', 'Colesterol Total', 'mg/dL', '0-200', 'B'),
('DC', 'Depuracion de C', NULL, NULL, 'U'),
('E', 'Estradiol (Estrogeno)', NULL, NULL, 'I'),
('EL', 'Estriol Libre', NULL, NULL, 'I'),
('F', 'Fibrinogeno', NULL, NULL, 'Coag'),
('FAC', 'Fosfata Acida', NULL, NULL, 'B'),
('FAL', 'Fosfata Alcalina', NULL, NULL, 'B'),
('Fosf', 'Fosforo', NULL, NULL, 'E'),
('FR', 'Factor Reumatoide (Latex)', NULL, NULL, 'I'),
('FRH', 'Factor Rh', NULL, NULL, 'H'),
('FSH', 'FSH', NULL, NULL, 'I'),
('G', 'Glicemia Ayunas', 'mg/dL', '70-99', 'B'),
('GPP', 'Glicemia Post Pandrial 2 hrs', NULL, NULL, 'B'),
('GS', 'Grupo Sanguíneo', NULL, NULL, 'H'),
('Han', 'Hanger', NULL, NULL, 'B'),
('HC1', 'Hemoglobina', 'gr/dL', '11-15', 'H'),
('HC10', 'Linfocitos', '%', '25-45', 'H'),
('HC11', 'Monocitos', '%', '0-8', 'H'),
('HC12', 'Eosinofilos', '%', '0-5', 'H'),
('HC2', 'Hematocrito', '%', '35-53', 'H'),
('HC3', 'Hematíes', 'mm3', '3.850.000-5.200.000', 'H'),
('HC4', 'Cuenta Blanca', 'mm3', '5.000-10.000', 'H'),
('HC5', 'Plaquetas', 'mm3', '150.000-450.000', 'H'),
('HC6', 'VCM', 'fl', '80-96', 'H'),
('HC7', 'CHM', 'pg/dL', '27-31', 'H'),
('HC8', 'CHCM', 'gr/dL', '30-36', 'H'),
('HC9', 'Neutrofilos', '%', '45-65', 'H'),
('HD1', 'Método', NULL, NULL, 'Copro'),
('HD2', 'Aspecto', NULL, NULL, 'Copro'),
('HD3', 'Color', NULL, NULL, 'Copro'),
('HD4', 'Olor', NULL, NULL, 'Copro'),
('HD5', 'Consistencia', NULL, NULL, 'Copro'),
('HD6', 'Reacción', NULL, NULL, 'Copro'),
('HD7', 'Moco', NULL, NULL, 'Copro'),
('HD8', 'Sangre', NULL, NULL, 'Copro'),
('HD9', 'Examen Microscópico', NULL, NULL, 'Copro'),
('HDC', 'Heces Directo Concentrado', NULL, NULL, 'Copro'),
('HDLC', 'HDL Colesterol', 'mg/dL', '0-50', 'B'),
('HG', 'Hemoglobina Glicosilada', NULL, NULL, 'B'),
('HGCB', 'HGC-Beta (Prueba de Embarazo)', NULL, NULL, 'I'),
('HierroS', 'Hierro Sérico', NULL, NULL, 'Coag'),
('HS', 'Heces Seriado', NULL, NULL, 'Copro'),
('I2H', 'Insulina 2 horas', NULL, NULL, 'I'),
('IA', 'Insulina Ayunas', NULL, NULL, 'I'),
('IIGA', 'Inmunologia IGA', NULL, NULL, 'I'),
('IIGE', 'Inmunologia IGE', NULL, NULL, 'I'),
('IIGG', 'Inmunologia IGG', NULL, NULL, 'I'),
('IIGM', 'Inmunologia IGM', NULL, NULL, 'I'),
('ISO', 'Inv. Sangre Oculta', NULL, NULL, 'Copro'),
('K', 'Potasio', NULL, NULL, 'E'),
('LDH', 'LDH', NULL, NULL, 'B'),
('LDLC', 'LDL Colesterol', 'mg/dL', '0-100', 'B'),
('LH', 'LH', NULL, NULL, 'I'),
('MA', 'Microalbuminuria', NULL, NULL, 'U'),
('Na', 'Sodio', NULL, NULL, 'E'),
('OC1', 'Cantidad', 'cm3', NULL, 'U'),
('OC10', 'PH', NULL, NULL, 'U'),
('OC11', 'Proteinas', NULL, NULL, 'U'),
('OC12', 'Urobilinogeno', NULL, NULL, 'U'),
('OC13', 'Nitritos', NULL, NULL, 'U'),
('OC14', 'Esterasa Leucocitaria', NULL, NULL, 'U'),
('OC15', 'Pigmentos biliares', NULL, NULL, 'U'),
('OC16', 'Celulas Epit. Planas', NULL, NULL, 'U'),
('OC17', 'Bacterias', NULL, NULL, 'U'),
('OC18', 'Leucocitos', NULL, NULL, 'U'),
('OC19', 'Hematies', NULL, NULL, 'U'),
('OC2', 'Color', NULL, NULL, 'U'),
('OC20', 'Fil Muscina', NULL, NULL, 'U'),
('OC21', 'Acumulos Leucocitarios', NULL, NULL, 'U'),
('OC22', 'Crist. Sulfato de Calcio', NULL, NULL, 'U'),
('OC3', 'Aspecto', NULL, NULL, 'U'),
('OC4', 'Olor', NULL, NULL, 'U'),
('OC5', 'Glucosa', NULL, NULL, 'U'),
('OC6', 'Bilirrubina', NULL, NULL, 'U'),
('OC7', 'Cuerpos Cetonicos', NULL, NULL, 'U'),
('OC8', 'Densidad', NULL, NULL, 'U'),
('OC9', 'Hemoglobina', 'OC10', NULL, 'U'),
('P', 'Progesterona', '', NULL, 'B'),
('P24', 'Proteina 24 horas', NULL, NULL, 'U'),
('PC', 'Proteina C', NULL, NULL, 'I'),
('PCR', 'Proteina C Reactiva', NULL, NULL, 'E'),
('PE', 'Prueba de Emarazo', NULL, NULL, 'U'),
('PG', 'Progesterona', NULL, NULL, 'I'),
('PL', 'Prolactina', NULL, NULL, 'I'),
('PSAL', 'PSA Libre', 'ng/mL', 'Menor de 1,3', 'Horm'),
('PSAT', 'PSA Total', 'ng/mL', 'Menor de 4', 'Horm'),
('RC', 'Rest. Coágulos', NULL, NULL, 'Coag'),
('RCTHDLC', 'Relacion CT/LDLC', NULL, '0-130', 'B'),
('RLDLCHDLC', 'Relacion LDLC/HDLC', NULL, '0-3.25', 'B'),
('RPSALPSAT', 'Relacion PSAL/PSAT', NULL, 'Mayor de 0,15', 'Horm'),
('S', 'Sedimentación', NULL, NULL, 'Coag'),
('T', 'Trigliceridos', 'mg/dL', '0-150', 'B'),
('T3T', 'T3 Total', NULL, NULL, 'I'),
('T4T', 'T4 Total', NULL, NULL, 'I'),
('TC', 'Tiempo de Coagulación', NULL, NULL, 'Coag'),
('Testos', 'Testosterona', NULL, NULL, 'I'),
('TG', 'Tolerancia a la Glucosa', NULL, NULL, 'B'),
('TGO', 'Transaminasa TGO', NULL, NULL, 'B'),
('TGP', 'Transaminasa TGP', NULL, NULL, 'B'),
('TIGG', 'Toxoplasma IgG', NULL, NULL, 'I'),
('TIHA', 'Toxoplasma IHA', NULL, NULL, 'I'),
('TP', 'Tiempo de Protombina (T.P.)', NULL, NULL, 'Coag'),
('TPT', 'Tiempo Parcial Tromboplastina (T.P.T.)', NULL, NULL, 'Coag'),
('TS', 'Tiempo de Sangría', NULL, NULL, 'Coag'),
('TSH', 'TSH', NULL, NULL, 'I'),
('TT', 'Tiempo de Trombina', NULL, NULL, 'Coag'),
('U', 'Urea', 'mg/dL', '10-48', 'B'),
('VDRLCL', 'VDRL Cualitativo', NULL, NULL, 'I'),
('VDRLCN', 'VDRL Cuantitativo', NULL, NULL, 'I'),
('VIH', 'VIH 4G', NULL, NULL, 'I'),
('VLDLC', 'VLDL Colesterol', 'mg/dL', '5-40', 'B'),
('VSG', 'V.S.G.', NULL, NULL, 'Coag');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `examenes`
--
ALTER TABLE `examenes`
  ADD PRIMARY KEY (`ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;



/*tabla solicitud de examenes de laboratorio*/

-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 10, 2021 at 04:50 AM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laboratorio`
--

-- --------------------------------------------------------

--
-- Table structure for table `solicitud`
--

CREATE TABLE `solicitud` (
  `id` int(20) NOT NULL,
  `fecha` date NOT NULL,
  `paciente_cedula` int(11) NOT NULL,
  `examenes_id` int(11) NOT NULL,
  `resultado` varchar(40) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `solicitud`
--
ALTER TABLE `solicitud`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `solicitud`
--
ALTER TABLE `solicitud`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;





/*tabla tipo de examenes de laboratorio*/

-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 10, 2021 at 04:52 AM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laboratorio`
--

-- --------------------------------------------------------

--
-- Table structure for table `tipo_examen`
--

CREATE TABLE `tipo_examen` (
  `id` varchar(10) COLLATE utf8_spanish_ci NOT NULL,
  `nombre` varchar(40) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Dumping data for table `tipo_examen`
--

INSERT INTO `tipo_examen` (`id`, `nombre`) VALUES
('H', 'Hematologia'),
('I', 'Inmunologia y Serologia'),
('Coa', 'Coagulacion'),
('Horm', 'Hormonas'),
('B', 'Bioquimica'),
('E', 'Electroritos'),
('U', 'Uruanalisis'),
('Cop', 'Coprologia');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

