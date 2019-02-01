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
-- Base de données :  `session`
--

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(60) NOT NULL,
  `psw` varchar(160) NOT NULL,
  `firstName` varchar(60) NOT NULL,
  `lastName` varchar(60) NOT NULL,
  `age` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `users`
--

INSERT INTO `users` (`id`, `email`, `psw`, `firstName`, `lastName`, `age`) VALUES
(1, 'test@mail.fr', 'azerty', 'fab', 'estr', 33),
(2, 'test@mail.fr', 'azerty', 'fab', 'estr', 33),
(3, 'test@mail.fr', 'azerty', 'jacob', 'sang', 27),
(4, 'test@mail.fr', 'azerty', 'jacob', 'sang', 27),
(5, 'rukmauv@3wa.com', '$2y$11$21a50944ac29b84b75163u6TFWdntAjXxN0TMarA8hGvssqS3ZsYO', 'ruk', 'mauv', 23),
(6, 'rukmauv@3wa.com', '$2y$11$0da81837c3241f0f6d25buFVytdSzNr9TIfup5RRPKoOwinxm1jGO', 'ruk', 'mauv', 23),
(7, 'fabestr@3wa.com', '$2y$11$f7ee3745b91b6461d517au2nSDXl.Na5R7XOmYm/iWS7M4rz.tuvu', 'fab', 'estr', 33),
(8, 'fabestr@3wa.com', '$2y$11$3744d289c120c87813fd7OTG/QZBDr1wlraiEsriTUUy1H0g99xo6', 'fab', 'estr', 33),
(9, 'fabestr@3wa.com', '$2y$11$564b4bcb898d5efb3fbb4enm6rt8wLSuL/kDbhrezMKP.5e1zbt3O', 'fab', 'estr', 33),
(10, 'barth@3wa.com', '$2y$11$918b70f26a9c885250a20u6VpzNDD8zgQSezkcPosZ0cT5XweOZmi', 'barth', 'elemy', 30);

--
-- Index pour les tables exportées
--

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
