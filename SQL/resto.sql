-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2.1
-- http://www.phpmyadmin.net
--
-- Client :  localhost
-- Généré le :  Ven 01 Février 2019 à 17:26
-- Version du serveur :  5.7.25-0ubuntu0.16.04.2
-- Version de PHP :  7.0.32-0ubuntu0.16.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `resto`
--

-- --------------------------------------------------------

--
-- Structure de la table `Meal`
--

CREATE TABLE `Meal` (
  `Id` int(11) NOT NULL,
  `Name` varchar(30) NOT NULL,
  `Photo` varchar(30) NOT NULL,
  `Description` text NOT NULL,
  `QuantityInStock` int(4) NOT NULL,
  `BuyPrice` double NOT NULL,
  `SalePrice` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `Meal`
--

INSERT INTO `Meal` (`Id`, `Name`, `Photo`, `Description`, `QuantityInStock`, `BuyPrice`, `SalePrice`) VALUES
(1, 'Coca-Cola', 'coca.jpg', 'Mmmm, le Coca-Cola avec 10 morceaux de sucres et tout plein de caféine !', 72, 0.6, 3),
(2, 'Bagel Thon', 'bagel_thon.jpg', 'Notre bagel est constitué d\'un pain moelleux avec des grains de sésame et du thon albacore, accompagné de feuilles de salade fraîche du jour  et d\'une sauce renversante :-)', 18, 2.75, 5.5),
(3, 'Bacon Cheeseburger', 'bacon_cheeseburger.jpg', 'Ce délicieux cheeseburger contient un steak haché viande française de 150g ainsi que d\'un buns grillé juste comme il faut, le tout accompagné de frites fraîches maison !', 14, 6, 12.5),
(4, 'Carrot Cake', 'carrot_cake.jpg', 'Le carrot cake maison ravira les plus gourmands et les puristes : tous les ingrédients sont naturels !\r\nÀ consommer sans modération', 9, 3, 6.75),
(5, 'Donut Chocolat', 'chocolate_donut.jpg', 'Les donuts sont fabriqués le matin même et sont recouvert d\'une délicieuse sauce au chocolat !', 16, 3, 6.2),
(6, 'Dr. Pepper', 'drpepper.jpg', 'Son goût sucré avec de l\'amande vous ravira !', 53, 0.5, 2.9),
(7, 'Milkshake', 'milkshake.jpg', 'Notre milkshake bien crémeux contient des morceaux d\'Oréos et est accompagné de crème chantilly et de smarties en guise de topping. Il éblouira vos papilles !', 12, 2, 5.35);

-- --------------------------------------------------------

--
-- Structure de la table `User`
--

CREATE TABLE `User` (
  `Id` int(11) NOT NULL,
  `FirstName` varchar(40) NOT NULL,
  `LastName` varchar(40) NOT NULL,
  `Email` varchar(60) NOT NULL,
  `Password` varchar(200) NOT NULL,
  `BirthDate` date NOT NULL,
  `Address` varchar(250) NOT NULL,
  `City` varchar(50) NOT NULL,
  `ZipCode` varchar(5) NOT NULL,
  `Country` varchar(40) DEFAULT NULL,
  `Phone` varchar(10) NOT NULL,
  `CreationTimestamp` datetime DEFAULT NULL,
  `LastLoginTimestamp` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `User`
--

INSERT INTO `User` (`Id`, `FirstName`, `LastName`, `Email`, `Password`, `BirthDate`, `Address`, `City`, `ZipCode`, `Country`, `Phone`, `CreationTimestamp`, `LastLoginTimestamp`) VALUES
(1, '1', 'u', 'j', 'n', '2010-02-02', 'f', 'd', 'd', NULL, 'd', '2019-01-29 16:07:39', NULL),
(2, 'xavier', 'dupond', 'xavierDupont@3wa.fr', 'azerty', '1940-01-05', '3 rue de la prophethie', 'laville', '52330', NULL, '650452321', '2019-01-29 16:11:54', NULL),
(3, 'xavier', 'dupond', 'xavierDupont@3wa.fr', 'azerty', '1940-01-05', '3 rue de la prophethie', 'laville', '52330', NULL, '650452321', '2019-01-29 16:12:27', NULL),
(4, 'ruk', 'mauv', 'rukmauv@3wa.com', '3wa', '1940-01-01', '1 allee des panurges', 'yvette sur raymond', '65322', NULL, '0125458545', '2019-01-29 16:26:44', NULL),
(5, 'ruk', 'mauv', 'rukmauv@3wa.com', '$2y$11$6e39f48e6efc13e28f848uQkvR1fUFM0s02ZFAIg47qQxACoZtu5W', '1940-01-01', '1 allee des panurges', 'yvette sur raymond', '65322', NULL, '125458545', '2019-01-29 16:27:35', NULL),
(6, 'estr', 'fab', 'f.estrabaud@gmail.com', '$2y$11$e6a0d83ccadd366f4bbc3us94f583jsaFCo6xMiIoIXIVM/L95ntW', '1985-08-11', '1 allée Louis janny', 'Clichy-sous-bois', '93390', NULL, '0664372943', '2019-01-29 17:18:25', NULL),
(7, 'estr', 'fab', 'f.estrabaud@gmail.com', '$2y$11$c709a4751294835f12707u3qfBGuHA1SN0YwBYOHwiMsSODElILfy', '1985-01-01', '1 allée Louis janny', 'Clichy-sous-bois', '93390', NULL, '664372943', '2019-01-29 17:22:04', NULL);

--
-- Index pour les tables exportées
--

--
-- Index pour la table `Meal`
--
ALTER TABLE `Meal`
  ADD PRIMARY KEY (`Id`);

--
-- Index pour la table `User`
--
ALTER TABLE `User`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `Meal`
--
ALTER TABLE `Meal`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT pour la table `User`
--
ALTER TABLE `User`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
