-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Généré le : ven. 07 fév. 2025 à 01:53
-- Version du serveur : 8.0.39
-- Version de PHP : 8.2.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `musique`
--

-- --------------------------------------------------------

--
-- Structure de la table `chansons`
--

CREATE TABLE `chansons` (
  `id` int NOT NULL,
  `titre` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `artiste` varchar(25) COLLATE utf8mb4_general_ci NOT NULL,
  `paroles` text COLLATE utf8mb4_general_ci NOT NULL,
  `album` text COLLATE utf8mb4_general_ci NOT NULL,
  `datePublication` date NOT NULL,
  `duree` int NOT NULL,
  `lectures` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `chansons`
--

INSERT INTO `chansons` (`id`, `titre`, `artiste`, `paroles`, `album`, `datePublication`, `duree`, `lectures`) VALUES
(1, '...', '...', '...', '...', '2025-02-04', 10, 0);

-- --------------------------------------------------------

--
-- Structure de la table `listes`
--

CREATE TABLE `listes` (
  `id` int NOT NULL,
  `titre` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `soustitre` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `description` text COLLATE utf8mb4_general_ci NOT NULL,
  `type` varchar(25) COLLATE utf8mb4_general_ci NOT NULL,
  `verifie` tinyint(1) NOT NULL,
  `datePublication` date NOT NULL,
  `visibilite` varchar(10) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `listes`
--

INSERT INTO `listes` (`id`, `titre`, `soustitre`, `image`, `description`, `type`, `verifie`, `datePublication`, `visibilite`) VALUES
(1, 'titre de la liste', 'sous-titre de la liste', 'https://picsum.photos/200/300', 'lorem ipsum', 'Liste de lecture', 1, '2025-02-06', 'publique'),
(5, 'test', '', '', '', 'liste', 0, '2024-12-12', 'privée'),
(7, 'titre de la liste modifié', 'sous-titre de la liste modifié', 'https://picsum.photos/200/300', 'lorem ipsum modifié', 'Liste de lecture', 0, '2025-02-07', 'privee'),
(8, 'titre de la liste', 'sous-titre de la liste', 'https://picsum.photos/200/300', 'lorem ipsum', 'Liste de lecture', 1, '2025-02-06', 'publique'),
(9, 'titre de la liste', 'sous-titre de la liste', 'https://picsum.photos/200/300', 'lorem ipsum', 'Liste de lecture', 1, '2025-02-06', 'publique');

-- --------------------------------------------------------

--
-- Structure de la table `listes_chansons`
--

CREATE TABLE `listes_chansons` (
  `liste_id` int NOT NULL,
  `chanson_id` int NOT NULL,
  `ordre` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `listes_chansons`
--

INSERT INTO `listes_chansons` (`liste_id`, `chanson_id`, `ordre`) VALUES
(1, 1, 1);

-- --------------------------------------------------------

--
-- Structure de la table `listes_utilisateurs`
--

CREATE TABLE `listes_utilisateurs` (
  `id` int NOT NULL,
  `utilisateur_id` int NOT NULL,
  `liste_id` int NOT NULL,
  `ordre` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `listes_utilisateurs`
--

INSERT INTO `listes_utilisateurs` (`id`, `utilisateur_id`, `liste_id`, `ordre`) VALUES
(1, 1, 5, 1),
(2, 1, 1, 2),
(3, 3, 5, 1),
(4, 2, 1, 1);

-- --------------------------------------------------------

--
-- Structure de la table `utilisateurs`
--

CREATE TABLE `utilisateurs` (
  `id` int NOT NULL,
  `nom` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `prenom` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `courriel` varchar(100) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `utilisateurs`
--

INSERT INTO `utilisateurs` (`id`, `nom`, `prenom`, `courriel`) VALUES
(1, 'Carine', '', ''),
(2, 'Ardric', '', ''),
(3, 'Carmen', '', '');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `chansons`
--
ALTER TABLE `chansons`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `listes`
--
ALTER TABLE `listes`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `listes_chansons`
--
ALTER TABLE `listes_chansons`
  ADD KEY `listes_chansons_chansons` (`chanson_id`),
  ADD KEY `listes_chansons_liste` (`liste_id`);

--
-- Index pour la table `listes_utilisateurs`
--
ALTER TABLE `listes_utilisateurs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `listes_utilisateurs_utilisateur` (`utilisateur_id`),
  ADD KEY `listes_listes` (`liste_id`);

--
-- Index pour la table `utilisateurs`
--
ALTER TABLE `utilisateurs`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `chansons`
--
ALTER TABLE `chansons`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `listes`
--
ALTER TABLE `listes`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT pour la table `listes_utilisateurs`
--
ALTER TABLE `listes_utilisateurs`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `utilisateurs`
--
ALTER TABLE `utilisateurs`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `listes_chansons`
--
ALTER TABLE `listes_chansons`
  ADD CONSTRAINT `listes_chansons_chansons` FOREIGN KEY (`chanson_id`) REFERENCES `chansons` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `listes_chansons_liste` FOREIGN KEY (`liste_id`) REFERENCES `listes` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Contraintes pour la table `listes_utilisateurs`
--
ALTER TABLE `listes_utilisateurs`
  ADD CONSTRAINT `listes_listes` FOREIGN KEY (`liste_id`) REFERENCES `listes` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `listes_utilisateurs_utilisateur` FOREIGN KEY (`utilisateur_id`) REFERENCES `utilisateurs` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
