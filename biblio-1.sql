-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jun 29, 2022 at 11:22 AM
-- Server version: 5.7.36
-- PHP Version: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `biblio`
--

-- --------------------------------------------------------

--
-- Table structure for table `adherents`
--

DROP TABLE IF EXISTS `adherents`;
CREATE TABLE IF NOT EXISTS `adherents` (
  `NA` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(30) NOT NULL,
  `prenom` varchar(30) DEFAULT NULL,
  `adr` varchar(100) NOT NULL,
  `tel` char(10) DEFAULT NULL,
  PRIMARY KEY (`NA`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `adherents`
--

INSERT INTO `adherents` (`NA`, `nom`, `prenom`, `adr`, `tel`) VALUES
(1, 'Lecoeur', 'Jeanette', '16 rue de la République, 75010 Paris', '0145279274'),
(2, 'Lecoeur', 'Philippe', '16 rue de la République, 75010 Paris', '0145279274'),
(3, 'Dupont', 'Yvan', '73 rue Lamarck, 75018 Paris', '0163538294'),
(4, 'Mercier', 'Claude', '155 avenue Parmentier, 75011 Paris', '0136482736'),
(5, 'Léger', 'Marc', '90 avenue du Maine, 75014 Paris', '0164832947'),
(6, 'Martin', 'Laure', '51 boulevard Diderot, 75012 Paris', '0174693277'),
(7, 'Crozier', 'Martine', '88 rue des Portes Blanches, 75018 Paris', '0146829384'),
(8, 'Lebon', 'Clément', '196 boulevard de Sebastopol, 75001 Paris', '0132884739'),
(9, 'Dufour', 'Jacques', '32 rue des Alouettes, 75003 Paris', '0155382940'),
(10, 'Dufour', 'Antoine', '32 rue des Alouettes, 75003 Paris', '0155382940'),
(11, 'Dufour', 'Stéphanie', '32 rue des Alouettes, 75003 Paris', '0155382940'),
(12, 'Raymond', 'Carole', '35 rue Oberkampf, 75011 Paris', '0153829402'),
(13, 'Durand', 'Albert', '4 rue Mandar, 75002 Paris', '0642374021'),
(14, 'Wilson', 'Paul', '12 rue Paul Vaillant Couturier, 92400 Montrouge', '0642327407'),
(15, 'Grecault', 'Philippe', '15 rue de la Roquette, 75012 Paris', '0132762983'),
(16, 'Carre', 'Stéphane', '51 boulevard Diderot, 75012 Paris', '0174693277'),
(17, 'Johnson', 'Astrid', '3 rue Léon Blum, 75002 Paris', '0143762947'),
(18, 'Mirou', 'Caroline', '2 square Mirabeau, 75011 Paris', '0163827399'),
(19, 'Espelette', 'Jean-Jacques', '141 avenue de France, 75019 Paris', '0134887264'),
(20, 'Despentes', 'Anthony', '56 boulevard de la Villette, 75019 Paris', '0133889463'),
(21, 'Terlu', 'Véronique', '45 rue des Batignolles, 75020 Paris', '0165998372'),
(22, 'Rihour', 'Cécile', '7 rue Montorgueil, 75002 Paris', '0166894754'),
(23, 'Franchet', 'Pierre', '160 rue Montmartre, 75009 Paris', '0633628549'),
(24, 'Trochet', 'Ernest', '34 rue de l\'Esperance, 75008 Paris', '0638295563'),
(25, 'Gainard', 'Simon', '55 rue Desnouettes, 75015 Paris', '0174928934'),
(26, 'Touche', 'Johanna', '14 rue du Bac, 75006 Paris', '0619384065'),
(27, 'Cornu', 'Sylvain', '22 rue Mouffetard, 75005 Paris', '0184927489'),
(28, 'Frederic', 'Cyril', '15 rue du Simplon, 75018 Paris', '0173625492'),
(29, 'Crestard', 'Cedric', '5 rue Doudeauville, 75018 Paris', '0629485700'),
(30, 'Le Bihan', 'Karine', '170 bis rue Ordener, 75018 Paris', '0638995221'),
(31, 'Dupont', 'Olivier', '76 quai de la Loire\r\n75019 Paris', '102030405'),
(32, 'Dupont', 'Olivier', '76 quai de la Loire 75019 Paris', '102030405');

-- --------------------------------------------------------

--
-- Table structure for table `emprunter`
--

DROP TABLE IF EXISTS `emprunter`;
CREATE TABLE IF NOT EXISTS `emprunter` (
  `NL` int(11) NOT NULL,
  `dateEmp` date NOT NULL,
  `dureeMax` int(11) NOT NULL,
  `dateRet` date DEFAULT NULL,
  `NA` int(11) NOT NULL,
  PRIMARY KEY (`NL`,`dateEmp`),
  KEY `NA` (`NA`),
  KEY `dateEmp` (`dateEmp`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `emprunter`
--

INSERT INTO `emprunter` (`NL`, `dateEmp`, `dureeMax`, `dateRet`, `NA`) VALUES
(1, '2021-07-13', 21, '2022-06-29', 26),
(1, '2022-01-26', 14, '2022-02-06', 3),
(1, '2022-03-14', 14, '2022-03-19', 2),
(1, '2022-05-31', 14, '2022-06-05', 1),
(2, '2022-05-22', 14, '2022-05-31', 4),
(2, '2022-06-18', 14, '2022-06-29', 28),
(3, '2022-06-07', 14, '2022-06-11', 3),
(4, '2021-08-09', 21, '2021-08-22', 4),
(4, '2021-11-08', 14, '2021-11-12', 12),
(4, '2022-03-17', 14, '2022-03-27', 5),
(5, '2022-06-23', 14, NULL, 16),
(6, '2021-12-11', 14, '2021-12-16', 3),
(8, '2021-12-09', 14, '2021-12-27', 13),
(8, '2022-04-13', 14, '2022-04-19', 18),
(9, '2022-06-18', 14, '2022-06-29', 28),
(10, '2021-09-28', 21, '2021-10-21', 7),
(10, '2022-01-10', 14, '2022-01-22', 8),
(10, '2022-06-29', 14, '2022-07-13', 10),
(11, '2022-05-29', 14, NULL, 22),
(12, '2021-09-01', 21, '2018-12-16', 7),
(14, '2022-06-19', 14, NULL, 1),
(15, '2022-02-02', 14, '2022-02-10', 10),
(16, '2022-06-19', 14, NULL, 1),
(17, '2022-06-29', 14, '2022-07-13', 7),
(18, '2022-04-03', 14, '2022-04-10', 3),
(20, '2021-09-18', 21, '2021-09-19', 27),
(20, '2022-06-04', 14, '2022-06-20', 9),
(20, '2022-06-29', 14, '2022-07-13', 10),
(21, '2022-06-05', 14, '2022-06-17', 14),
(21, '2022-06-27', 14, NULL, 20),
(23, '2022-06-29', 14, '2022-07-13', 29),
(24, '2021-11-14', 14, '2022-06-29', 26),
(24, '2022-06-29', 14, '2022-07-13', 29),
(25, '2021-08-21', 21, '2021-09-08', 1),
(26, '2021-08-17', 21, '2021-08-14', 9),
(29, '2021-05-29', 14, NULL, 27),
(31, '2022-06-27', 14, NULL, 20),
(32, '2022-06-27', 14, NULL, 20);

-- --------------------------------------------------------

--
-- Table structure for table `livres`
--

DROP TABLE IF EXISTS `livres`;
CREATE TABLE IF NOT EXISTS `livres` (
  `NL` int(11) NOT NULL AUTO_INCREMENT,
  `editeur` varchar(50) DEFAULT NULL,
  `NO` int(11) NOT NULL,
  PRIMARY KEY (`NL`),
  KEY `NO` (`NO`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `livres`
--

INSERT INTO `livres` (`NL`, `editeur`, `NO`) VALUES
(1, 'GF', 1),
(2, 'FOLIO', 2),
(3, 'HACHETTE', 3),
(4, 'GF', 4),
(5, 'FOLIO', 5),
(6, 'FOLIO', 6),
(7, 'GF', 7),
(8, 'FOLIO', 8),
(9, 'HACHETTE', 9),
(10, 'GF', 10),
(11, 'HACHETTE', 11),
(12, 'FOLIO', 12),
(13, 'GF', 13),
(14, 'FOLIO', 14),
(15, 'HACHETTE', 15),
(16, 'HACHETTE', 16),
(17, 'GF', 1),
(18, 'FOLIO', 2),
(19, 'HACHETTE', 2),
(20, 'FOLIO', 4),
(21, 'GF', 5),
(22, 'HACHETTE', 4),
(23, 'HACHETTE', 7),
(24, 'FOLIO', 8),
(25, 'GF', 1),
(26, 'HACHETTE', 10),
(27, 'FOLIO', 11),
(28, 'FOLIO', 12),
(29, 'GF', 1),
(30, 'HACHETTE', 14),
(31, 'FOLIO', 17),
(32, 'GALLIMARD', 18),
(33, 'HACHETTE', 17);

-- --------------------------------------------------------

--
-- Table structure for table `oeuvres`
--

DROP TABLE IF EXISTS `oeuvres`;
CREATE TABLE IF NOT EXISTS `oeuvres` (
  `NO` int(11) NOT NULL AUTO_INCREMENT,
  `titre` varchar(150) NOT NULL,
  `auteur` varchar(100) DEFAULT NULL,
  `annee` int(11) DEFAULT NULL,
  `genre` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`NO`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `oeuvres`
--

INSERT INTO `oeuvres` (`NO`, `titre`, `auteur`, `annee`, `genre`) VALUES
(1, 'Narcisse et Goldmund', 'Hermann HESSE', 1930, 'Roman'),
(2, 'Bérénice', 'Jean RACINE', 1670, 'Théâtre'),
(3, 'Prolégomènes à  toute métaphysique future', 'Emmanuel KANT', 1783, 'Philosophie'),
(4, 'Mon coeur mis à nu', 'Charles BAUDELAIRE', 1887, 'Journal'),
(5, 'Voyage au bout de la nuit', 'Louis-Ferdinand CELINE', 1932, 'Roman'),
(6, 'Les possédés', 'Fedor DOSTOIEVSKI', 1872, 'Roman'),
(7, 'Le Rouge et le Noir', 'STENDHAL', 1830, 'Roman'),
(8, 'Alcibiade', 'Jacqueline de ROMILLY', 1995, 'Roman'),
(9, 'Monsieur Teste', 'Paul VALERY', 1926, 'Roman'),
(10, 'Lettres de Gourgounel', 'Kenneth WHITE', 1979, 'Récit'),
(11, 'Lettres à un jeune poète', 'Rainer Maria RILKE', 1929, 'Lettre'),
(12, 'Logique sans peine', 'Lewis CAROLL', 1887, 'Logique'),
(13, 'L\'éthique', 'Baruch SPINOZA', 1677, 'Philosophie'),
(14, 'Sur le rêve', 'Sigmund FREUD', 1900, 'Philosophie'),
(15, 'Sens et dénotation', 'Gottlob FREGE', 1892, 'Philosophie'),
(16, 'Penser la logique', 'Gilbert HOTTOIS', 1989, 'Philosophie'),
(17, 'Au coeur des ténèbres', 'Joseph CONRAD', 1899, 'Roman'),
(18, 'Jan Karski', 'Yannick HAENEL', 2009, 'Roman');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `emprunter`
--
ALTER TABLE `emprunter`
  ADD CONSTRAINT `emprunter_ibfk_1` FOREIGN KEY (`NL`) REFERENCES `livres` (`NL`),
  ADD CONSTRAINT `emprunter_ibfk_2` FOREIGN KEY (`NA`) REFERENCES `adherents` (`NA`);

--
-- Constraints for table `livres`
--
ALTER TABLE `livres`
  ADD CONSTRAINT `livres_ibfk_1` FOREIGN KEY (`NO`) REFERENCES `oeuvres` (`NO`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
