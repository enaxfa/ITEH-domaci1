-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 13, 2022 at 09:15 AM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `knjigedb`
--

-- --------------------------------------------------------

--
-- Table structure for table `knjiga`
--

CREATE TABLE `knjiga` (
  `IdKnjige` int(11) NOT NULL,
  `NazivKnjige` varchar(50) NOT NULL,
  `Autor` varchar(50) NOT NULL,
  `Zanr` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `knjiga`
--

INSERT INTO `knjiga` (`IdKnjige`, `NazivKnjige`, `Autor`, `Zanr`) VALUES
(2, 'Misli i obogati se  ', 'Napoleon Hil  ', 4),
(3, 'Probudite diva u sebi', 'Toni Robins ', 4),
(4, 'Tajni vrt', 'Džohana Basford', 3),
(5, 'Najboljoj mami', 'Kreativna bojanka za odrasle', 3),
(6, 'Autobiografija', 'Sigmund Frojd', 1),
(7, 'Ples oko sunca', 'Vedrana Rudan', 1),
(8, 'Kralj Artur - Oslobođeni Eskalibur', 'Džef Limke', 2),
(10, 'Beovulf - Ubica čudovišta', 'Ron Rendal', 2),
(11, 'Mačak u čizmama', 'Goran Markovic', 2),
(68, 'Usamljeni putnik ', 'Džek Keruak ', 3),
(70, 'Autobiografija Branislava Nusica', 'Branislav Nusic', 1);

-- --------------------------------------------------------

--
-- Table structure for table `zanr`
--

CREATE TABLE `zanr` (
  `ZanrId` int(11) NOT NULL,
  `NazivZanra` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `zanr`
--

INSERT INTO `zanr` (`ZanrId`, `NazivZanra`) VALUES
(1, 'Autobiografija'),
(2, 'Avanturistički'),
(3, 'Bojanka'),
(4, 'Psihološki');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `knjiga`
--
ALTER TABLE `knjiga`
  ADD PRIMARY KEY (`IdKnjige`),
  ADD KEY `fk_knjiga_zanr` (`Zanr`);

--
-- Indexes for table `zanr`
--
ALTER TABLE `zanr`
  ADD PRIMARY KEY (`ZanrId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `knjiga`
--
ALTER TABLE `knjiga`
  MODIFY `IdKnjige` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT for table `zanr`
--
ALTER TABLE `zanr`
  MODIFY `ZanrId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `knjiga`
--
ALTER TABLE `knjiga`
  ADD CONSTRAINT `fk_knjiga_zanr` FOREIGN KEY (`Zanr`) REFERENCES `zanr` (`ZanrId`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
