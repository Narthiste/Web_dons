-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8081
-- Generation Time: Jan 20, 2022 at 02:47 PM
-- Server version: 5.7.24
-- PHP Version: 7.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `promesse_de_dons`
--

-- --------------------------------------------------------

--
-- Table structure for table `utilisateurs`
--

CREATE TABLE `utilisateurs` (
  `id_utilisateurs` int(11) NOT NULL,
  `Nom` varchar(55) NOT NULL,
  `Prenom` varchar(30) NOT NULL,
  `Genre` varchar(1) NOT NULL,
  `Montant` int(11) NOT NULL,
  `Numero_carte` varchar(50) NOT NULL,
  `Expiration_carte` varchar(11) NOT NULL,
  `Newsletter` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `utilisateurs`
--

INSERT INTO `utilisateurs` (`id_utilisateurs`, `Nom`, `Prenom`, `Genre`, `Montant`, `Numero_carte`, `Expiration_carte`, `Newsletter`) VALUES
(17, 'Faudeil', 'Nathan', 'h', 50, '24516426541', '3/12', 'Newsletter'),
(18, 'Le Roch', 'Gwenn ', 'h', 50, '265655215565', '3/12', 'Newsletter'),
(20, 'Faudeil', 'Nathan', 'h', 10, '24361787267981', '3/12', 'Newsletter'),
(21, 'hdhjjzd', 'zaszazd', 'h', 10, '156229992', '3/12', 'Newsletter'),
(22, 'hdhjjzd', 'zaszazd', 'h', 10, '156229992', '3/12', 'Newsletter');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `utilisateurs`
--
ALTER TABLE `utilisateurs`
  ADD PRIMARY KEY (`id_utilisateurs`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `utilisateurs`
--
ALTER TABLE `utilisateurs`
  MODIFY `id_utilisateurs` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
