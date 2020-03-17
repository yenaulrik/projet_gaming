-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  mar. 17 mars 2020 à 10:32
-- Version du serveur :  5.7.26
-- Version de PHP :  7.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `gaming-site`
--

-- --------------------------------------------------------

--
-- Structure de la table `articles`
--

DROP TABLE IF EXISTS `articles`;
CREATE TABLE IF NOT EXISTS `articles` (
  `article_id` int(11) NOT NULL AUTO_INCREMENT,
  `groupe_id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `article_title` text NOT NULL,
  `article_content` text NOT NULL,
  `article_creation_date` date NOT NULL,
  `jeux_id` int(11) UNSIGNED NOT NULL,
  `visible_by` int(11) NOT NULL,
  PRIMARY KEY (`article_id`),
  KEY `user_id` (`user_id`),
  KEY `jeux_id` (`jeux_id`),
  KEY `jeux_id_2` (`jeux_id`),
  KEY `article_group_id` (`groupe_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `articles`
--

INSERT INTO `articles` (`article_id`, `groupe_id`, `user_id`, `article_title`, `article_content`, `article_creation_date`, `jeux_id`, `visible_by`) VALUES
(1, 8, 1, 'bonjour', 'Lorem, ipsum dolor sit amet consectetur adipisicing elit. Facilis alias dolores incidunt aliquam nemo corporis. Temporibus provident voluptatem excepturi cum dolor fugiat sapiente, expedita natus adipisci, ipsum, possimus iure magni?', '2020-02-13', 1, 1),
(2, 10, 1, 'azeazeaze', 'azeazeazeazeazeazeaze', '2020-03-09', 10, 1),
(3, 15, 1, 'azazza', 'azzaazza', '2020-03-09', 4, 1),
(6, 10, 2, 'qqqqqqqqqqqqqqqqq', 'qqqqqqqqqqqqqqqqqqqqqqqqqq', '2020-03-11', 5, 2);

-- --------------------------------------------------------

--
-- Structure de la table `game_by_group`
--

DROP TABLE IF EXISTS `game_by_group`;
CREATE TABLE IF NOT EXISTS `game_by_group` (
  `game_by_groupe_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `group_id` int(11) UNSIGNED NOT NULL,
  `game_id` int(11) UNSIGNED NOT NULL,
  PRIMARY KEY (`game_by_groupe_id`),
  KEY `groupe_id` (`group_id`),
  KEY `game_id` (`game_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `game_by_group`
--

INSERT INTO `game_by_group` (`game_by_groupe_id`, `group_id`, `game_id`) VALUES
(1, 8, 1),
(2, 15, 2),
(3, 17, 3),
(4, 10, 5),
(5, 5, 6),
(6, 18, 15),
(7, 6, 1),
(8, 18, 1),
(9, 10, 1),
(10, 16, 1);

-- --------------------------------------------------------

--
-- Structure de la table `groups`
--

DROP TABLE IF EXISTS `groups`;
CREATE TABLE IF NOT EXISTS `groups` (
  `group_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `group_creator_id` int(11) UNSIGNED NOT NULL,
  `group_title` text NOT NULL,
  `group_description` text NOT NULL,
  `group_img` varchar(255) NOT NULL DEFAULT 'no-images.png',
  `group_rate` int(11) DEFAULT '0',
  `group_created_at` date NOT NULL,
  PRIMARY KEY (`group_id`),
  KEY `groupe_creator_id` (`group_creator_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `groups`
--

INSERT INTO `groups` (`group_id`, `group_creator_id`, `group_title`, `group_description`, `group_img`, `group_rate`, `group_created_at`) VALUES
(5, 1, 'les chevaliers', 'Lorem, ipsum dolor sit amet consectetur adipisicing elit. Facilis alias dolores incidunt aliquam nemo corporis. Temporibus provident voluptatem excepturi cum dolor fugiat sapiente, expedita natus adipisci, ipsum, possimus iure magni?', 'no-images.png', 55, '2020-02-13'),
(6, 1, 'les boulets', 'Lorem, ipsum dolor sit amet consectetur adipisicing elit. Facilis alias dolores incidunt aliquam nemo corporis. Temporibus provident voluptatem excepturi cum dolor fugiat sapiente, expedita natus adipisci, ipsum, possimus iure magni?', 'no-images.png', 44, '2020-02-08'),
(7, 1, 'Mimilenium', 'Lorem, ipsum dolor sit amet consectetur adipisicing elit. Facilis alias dolores incidunt aliquam nemo corporis. Temporibus provident voluptatem excepturi cum dolor fugiat sapiente, expedita natus adipisci, ipsum, possimus iure magni?', 'no-images.png', 1, '2020-02-05'),
(8, 1, 'AaA', 'Lorem, ipsum dolor sit amet consectetur adipisicing elit. Facilis alias dolores incidunt aliquam nemo corporis. Temporibus provident voluptatem excepturi cum dolor fugiat sapiente, expedita natus adipisci, ipsum, possimus iure magni?', 'no-images.png', 5, '2020-01-13'),
(9, 1, 'Season of Mist', 'Lorem, ipsum dolor sit amet consectetur adipisicing elit. Facilis alias dolores incidunt aliquam nemo corporis. Temporibus provident voluptatem excepturi cum dolor fugiat sapiente, expedita natus adipisci, ipsum, possimus iure magni?', 'no-images.png', 24, '2020-02-09'),
(10, 1, 'Hades Showdas', 'Lorem, ipsum dolor sit amet consectetur adipisicing elit. Facilis alias dolores incidunt aliquam nemo corporis. Temporibus provident voluptatem excepturi cum dolor fugiat sapiente, expedita natus adipisci, ipsum, possimus iure magni?', 'no-images.png', 71, '2020-02-13'),
(11, 1, 'LoacTohs', 'Lorem, ipsum dolor sit amet consectetur adipisicing elit. Facilis alias dolores incidunt aliquam nemo corporis. Temporibus provident voluptatem excepturi cum dolor fugiat sapiente, expedita natus adipisci, ipsum, possimus iure magni?', 'no-images.png', 212, '2020-02-07'),
(12, 1, 'Gemmistters', 'Lorem, ipsum dolor sit amet consectetur adipisicing elit. Facilis alias dolores incidunt aliquam nemo corporis. Temporibus provident voluptatem excepturi cum dolor fugiat sapiente, expedita natus adipisci, ipsum, possimus iure magni?', 'no-images.png', 45, '2020-02-11'),
(13, 1, 'Jambon et Dragon', 'Lorem, ipsum dolor sit amet consectetur adipisicing elit. Facilis alias dolores incidunt aliquam nemo corporis. Temporibus provident voluptatem excepturi cum dolor fugiat sapiente, expedita natus adipisci, ipsum, possimus iure magni?', 'no-images.png', 45, '2020-02-13'),
(14, 1, 'Popiland Gang', 'Lorem, ipsum dolor sit amet consectetur adipisicing elit. Facilis alias dolores incidunt aliquam nemo corporis. Temporibus provident voluptatem excepturi cum dolor fugiat sapiente, expedita natus adipisci, ipsum, possimus iure magni?', 'no-images.png', 551, '2020-02-08'),
(15, 1, 'Angels Rivers', 'Lorem, ipsum dolor sit amet consectetur adipisicing elit. Facilis alias dolores incidunt aliquam nemo corporis. Temporibus provident voluptatem excepturi cum dolor fugiat sapiente, expedita natus adipisci, ipsum, possimus iure magni?', 'no-images.png', 21, '2020-02-05'),
(16, 1, 'Saint Seya', 'Lorem, ipsum dolor sit amet consectetur adipisicing elit. Facilis alias dolores incidunt aliquam nemo corporis. Temporibus provident voluptatem excepturi cum dolor fugiat sapiente, expedita natus adipisci, ipsum, possimus iure magni?', 'no-images.png', 35, '2020-01-13'),
(17, 1, 'Cublikers', 'Lorem, ipsum dolor sit amet consectetur adipisicing elit. Facilis alias dolores incidunt aliquam nemo corporis. Temporibus provident voluptatem excepturi cum dolor fugiat sapiente, expedita natus adipisci, ipsum, possimus iure magni?', 'no-images.png', 37, '2020-02-09'),
(18, 1, 'Winter Balls', 'Lorem, ipsum dolor sit amet consectetur adipisicing elit. Facilis alias dolores incidunt aliquam nemo corporis. Temporibus provident voluptatem excepturi cum dolor fugiat sapiente, expedita natus adipisci, ipsum, possimus iure magni?', 'no-images.png', 558, '2020-02-13'),
(19, 1, 'Wolfs', 'Lorem, ipsum dolor sit amet consectetur adipisicing elit. Facilis alias dolores incidunt aliquam nemo corporis. Temporibus provident voluptatem excepturi cum dolor fugiat sapiente, expedita natus adipisci, ipsum, possimus iure magni?', 'no-images.png', 45, '2020-02-07'),
(20, 1, 'Zelda Legend', 'Lorem, ipsum dolor sit amet consectetur adipisicing elit. Facilis alias dolores incidunt aliquam nemo corporis. Temporibus provident voluptatem excepturi cum dolor fugiat sapiente, expedita natus adipisci, ipsum, possimus iure magni?', 'no-images.png', 99, '2020-02-11');

-- --------------------------------------------------------

--
-- Structure de la table `jeux`
--

DROP TABLE IF EXISTS `jeux`;
CREATE TABLE IF NOT EXISTS `jeux` (
  `jeu_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `jeu_title` text NOT NULL,
  `jeu_img` varchar(255) NOT NULL DEFAULT 'no-images.png',
  `jeu_page_creator_id` int(11) UNSIGNED NOT NULL,
  `jeu_page_creation_date` date NOT NULL,
  `jeu_creator_name` text NOT NULL,
  `jeu_description` text NOT NULL,
  `jeu_creation_date` date NOT NULL,
  `jeu_rate` int(255) NOT NULL,
  PRIMARY KEY (`jeu_id`),
  KEY `jeu_page_creator_id` (`jeu_page_creator_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `jeux`
--

INSERT INTO `jeux` (`jeu_id`, `jeu_title`, `jeu_img`, `jeu_page_creator_id`, `jeu_page_creation_date`, `jeu_creator_name`, `jeu_description`, `jeu_creation_date`, `jeu_rate`) VALUES
(1, 'Battle Fiels 5', 'battleField5.jpg', 1, '2020-02-11', 'Electronic Arts', 'Battlefield V (BFV) est un jeu vidéo de tir à la première personne développé par DICE et édité par Electronic Arts, sorti le 20 novembre 2018 sur PlayStation 4, Xbox One et Microsoft Windows. Ce douzième opus de la série se déroule dans le contexte de la Seconde Guerre Mondiale, revenant aux origines de la série1. ', '2018-11-20', 32),
(2, 'Battle Fiels 5', 'Borderlands-2.jpg', 1, '2020-02-11', 'Electronic Arts', 'Battlefield V (BFV) est un jeu vidéo de tir à la première personne développé par DICE et édité par Electronic Arts, sorti le 20 novembre 2018 sur PlayStation 4, Xbox One et Microsoft Windows. Ce douzième opus de la série se déroule dans le contexte de la Seconde Guerre Mondiale, revenant aux origines de la série1. ', '2018-11-20', 55),
(3, 'Battle Fiels 5', 'fractured-mmorpg.jpg', 1, '2020-02-11', 'Electronic Arts', 'Battlefield V (BFV) est un jeu vidéo de tir à la première personne développé par DICE et édité par Electronic Arts, sorti le 20 novembre 2018 sur PlayStation 4, Xbox One et Microsoft Windows. Ce douzième opus de la série se déroule dans le contexte de la Seconde Guerre Mondiale, revenant aux origines de la série1. ', '2018-11-20', 21),
(4, 'Battle Fiels 5', 'RDR2.jpg', 1, '2020-02-11', 'Electronic Arts', 'Battlefield V (BFV) est un jeu vidéo de tir à la première personne développé par DICE et édité par Electronic Arts, sorti le 20 novembre 2018 sur PlayStation 4, Xbox One et Microsoft Windows. Ce douzième opus de la série se déroule dans le contexte de la Seconde Guerre Mondiale, revenant aux origines de la série1. ', '2018-11-20', 1),
(5, 'Battle Fiels 5', 'no-images.png', 1, '2020-02-11', 'Electronic Arts', 'Battlefield V (BFV) est un jeu vidéo de tir à la première personne développé par DICE et édité par Electronic Arts, sorti le 20 novembre 2018 sur PlayStation 4, Xbox One et Microsoft Windows. Ce douzième opus de la série se déroule dans le contexte de la Seconde Guerre Mondiale, revenant aux origines de la série1. ', '2018-11-20', 531),
(6, 'Battle Fiels 5', 'Borderlands-2.jpg', 1, '2020-02-11', 'Electronic Arts', 'Battlefield V (BFV) est un jeu vidéo de tir à la première personne développé par DICE et édité par Electronic Arts, sorti le 20 novembre 2018 sur PlayStation 4, Xbox One et Microsoft Windows. Ce douzième opus de la série se déroule dans le contexte de la Seconde Guerre Mondiale, revenant aux origines de la série1. ', '2018-11-20', 62),
(7, 'Battle Fiels 5', 'fractured-mmorpg.jpg', 1, '2020-02-11', 'Electronic Arts', 'Battlefield V (BFV) est un jeu vidéo de tir à la première personne développé par DICE et édité par Electronic Arts, sorti le 20 novembre 2018 sur PlayStation 4, Xbox One et Microsoft Windows. Ce douzième opus de la série se déroule dans le contexte de la Seconde Guerre Mondiale, revenant aux origines de la série1. ', '2018-11-20', 22),
(8, 'Battle Fiels 5', 'RDR2.jpg', 1, '2020-02-11', 'Electronic Arts', 'Battlefield V (BFV) est un jeu vidéo de tir à la première personne développé par DICE et édité par Electronic Arts, sorti le 20 novembre 2018 sur PlayStation 4, Xbox One et Microsoft Windows. Ce douzième opus de la série se déroule dans le contexte de la Seconde Guerre Mondiale, revenant aux origines de la série1. ', '2018-11-20', 78),
(9, 'Battle Fiels 5', 'battleField5.jpg', 1, '2020-02-11', 'Electronic Arts', 'Battlefield V (BFV) est un jeu vidéo de tir à la première personne développé par DICE et édité par Electronic Arts, sorti le 20 novembre 2018 sur PlayStation 4, Xbox One et Microsoft Windows. Ce douzième opus de la série se déroule dans le contexte de la Seconde Guerre Mondiale, revenant aux origines de la série1. ', '2018-11-20', 45),
(10, 'Battle Fiels 5', 'Borderlands-2.jpg', 1, '2020-02-11', 'Electronic Arts', 'Battlefield V (BFV) est un jeu vidéo de tir à la première personne développé par DICE et édité par Electronic Arts, sorti le 20 novembre 2018 sur PlayStation 4, Xbox One et Microsoft Windows. Ce douzième opus de la série se déroule dans le contexte de la Seconde Guerre Mondiale, revenant aux origines de la série1. ', '2018-11-20', 454),
(11, 'Battle Fiels 5', 'fractured-mmorpg.jpg', 1, '2020-02-11', 'Electronic Arts', 'Battlefield V (BFV) est un jeu vidéo de tir à la première personne développé par DICE et édité par Electronic Arts, sorti le 20 novembre 2018 sur PlayStation 4, Xbox One et Microsoft Windows. Ce douzième opus de la série se déroule dans le contexte de la Seconde Guerre Mondiale, revenant aux origines de la série1. ', '2018-11-20', 5),
(12, 'Battle Fiels 5', 'RDR2.jpg', 1, '2020-02-11', 'Electronic Arts', 'Battlefield V (BFV) est un jeu vidéo de tir à la première personne développé par DICE et édité par Electronic Arts, sorti le 20 novembre 2018 sur PlayStation 4, Xbox One et Microsoft Windows. Ce douzième opus de la série se déroule dans le contexte de la Seconde Guerre Mondiale, revenant aux origines de la série1. ', '2018-11-20', 62),
(13, 'Battle Fiels 5', 'no-images.png', 1, '2020-02-11', 'Electronic Arts', 'Battlefield V (BFV) est un jeu vidéo de tir à la première personne développé par DICE et édité par Electronic Arts, sorti le 20 novembre 2018 sur PlayStation 4, Xbox One et Microsoft Windows. Ce douzième opus de la série se déroule dans le contexte de la Seconde Guerre Mondiale, revenant aux origines de la série1. ', '2018-11-20', 254),
(14, 'Battle Fiels 5', 'Borderlands-2.jpg', 1, '2020-02-11', 'Electronic Arts', 'Battlefield V (BFV) est un jeu vidéo de tir à la première personne développé par DICE et édité par Electronic Arts, sorti le 20 novembre 2018 sur PlayStation 4, Xbox One et Microsoft Windows. Ce douzième opus de la série se déroule dans le contexte de la Seconde Guerre Mondiale, revenant aux origines de la série1. ', '2018-11-20', 12),
(15, 'Battle Fiels 5', 'fractured-mmorpg.jpg', 1, '2020-02-11', 'Electronic Arts', 'Battlefield V (BFV) est un jeu vidéo de tir à la première personne développé par DICE et édité par Electronic Arts, sorti le 20 novembre 2018 sur PlayStation 4, Xbox One et Microsoft Windows. Ce douzième opus de la série se déroule dans le contexte de la Seconde Guerre Mondiale, revenant aux origines de la série1. ', '2018-11-20', 44),
(16, 'Battle Fiels 5', 'RDR2.jpg', 1, '2020-02-11', 'Electronic Arts', 'Battlefield V (BFV) est un jeu vidéo de tir à la première personne développé par DICE et édité par Electronic Arts, sorti le 20 novembre 2018 sur PlayStation 4, Xbox One et Microsoft Windows. Ce douzième opus de la série se déroule dans le contexte de la Seconde Guerre Mondiale, revenant aux origines de la série1. ', '2018-11-20', 41);

-- --------------------------------------------------------

--
-- Structure de la table `tags`
--

DROP TABLE IF EXISTS `tags`;
CREATE TABLE IF NOT EXISTS `tags` (
  `tag_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `type` text NOT NULL,
  PRIMARY KEY (`tag_id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `tags`
--

INSERT INTO `tags` (`tag_id`, `name`, `type`) VALUES
(1, 'aventure', 'genre'),
(2, 'compilation', 'genre'),
(3, 'course', 'genre'),
(4, 'fps', 'genre'),
(5, 'gestion', 'genre'),
(6, 'mmorpg', 'genre'),
(7, 'plate-forme', 'genre'),
(8, 'rpg', 'genre'),
(9, 'simulation', 'genre'),
(10, 'sport', 'genre'),
(11, 'action', 'genre'),
(12, 'stratégie', 'genre'),
(13, '2d', 'graphismes'),
(14, '3d', 'graphismes'),
(15, 'vr', 'graphismes'),
(16, 'anime', 'type graphismes'),
(17, 'fantasy', 'type graphismes'),
(18, 'pixel', 'type graphismes'),
(19, 'réaliste', 'type graphismes'),
(20, 'médiéval', 'type de monde'),
(21, 'futuriste', 'type de monde'),
(22, 'contemporain', 'type de monde'),
(23, 'fantastique', 'type de monde'),
(24, 'chaotique', 'type de monde'),
(25, 'féérique', 'type de monde'),
(26, 'moba', 'genre'),
(27, 'solo', 'multijoueur'),
(28, 'coopération', 'multijoueur'),
(29, 'coopération en ligne', 'multijoueur'),
(30, 'équipe', 'multijoueur'),
(31, 'massivement multijoueur', 'multijoueur'),
(32, 'première personne', 'vue'),
(33, 'seconde personne', 'vue'),
(34, 'troisième personne', 'vue'),
(35, 'vue de dessus', 'vue');

-- --------------------------------------------------------

--
-- Structure de la table `tag_by_game`
--

DROP TABLE IF EXISTS `tag_by_game`;
CREATE TABLE IF NOT EXISTS `tag_by_game` (
  `tag_by_game_id` int(11) NOT NULL AUTO_INCREMENT,
  `tag_id` int(11) UNSIGNED NOT NULL,
  `game_id` int(11) UNSIGNED NOT NULL,
  PRIMARY KEY (`tag_by_game_id`),
  KEY `tag_id` (`tag_id`),
  KEY `game_id` (`game_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `tag_by_game`
--

INSERT INTO `tag_by_game` (`tag_by_game_id`, `tag_id`, `game_id`) VALUES
(1, 14, 1),
(2, 1, 1),
(3, 1, 8),
(4, 1, 2),
(5, 2, 7),
(6, 2, 15),
(7, 2, 11),
(8, 2, 16),
(9, 2, 2),
(10, 2, 10),
(11, 1, 1),
(12, 2, 1);

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `user_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `group_id` int(11) DEFAULT NULL,
  `user_last_name` text NOT NULL,
  `user_first_name` text NOT NULL,
  `user_pseudo` varchar(55) NOT NULL,
  `user_mail` varchar(120) NOT NULL,
  `user_password` varchar(64) NOT NULL,
  `user_created_at` date NOT NULL,
  `user_avatar` varchar(255) NOT NULL DEFAULT 'no-images.png',
  `is_admin` int(5) NOT NULL DEFAULT '0',
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `user_mail` (`user_mail`),
  UNIQUE KEY `user_pseudo` (`user_pseudo`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`user_id`, `group_id`, `user_last_name`, `user_first_name`, `user_pseudo`, `user_mail`, `user_password`, `user_created_at`, `user_avatar`, `is_admin`) VALUES
(1, NULL, 'Caraty', 'Vincent', 'yenaulrik', 'yenaulrik@hotmail.fr', '0000', '2020-02-13', 'no-images.png', 1),
(2, NULL, 'aze', 'aze', 'aze', 'aze@aze.fr', '$2y$10$w34WVeJfx5IyyrFPyTXcsOz4EiXEpyieiN231z0IC45Ry3qqS955O', '2020-03-02', 'no-images.png', 1);

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `articles`
--
ALTER TABLE `articles`
  ADD CONSTRAINT `article_group_id` FOREIGN KEY (`groupe_id`) REFERENCES `groups` (`group_id`) ON DELETE NO ACTION,
  ADD CONSTRAINT `article_jeu_id` FOREIGN KEY (`jeux_id`) REFERENCES `jeux` (`jeu_id`) ON DELETE NO ACTION,
  ADD CONSTRAINT `article_user_id` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE NO ACTION;

--
-- Contraintes pour la table `game_by_group`
--
ALTER TABLE `game_by_group`
  ADD CONSTRAINT `game_id_link` FOREIGN KEY (`game_id`) REFERENCES `jeux` (`jeu_id`) ON DELETE NO ACTION,
  ADD CONSTRAINT `groupe_id_link` FOREIGN KEY (`group_id`) REFERENCES `groups` (`group_id`) ON DELETE NO ACTION;

--
-- Contraintes pour la table `groups`
--
ALTER TABLE `groups`
  ADD CONSTRAINT `groupe_user_id` FOREIGN KEY (`group_creator_id`) REFERENCES `user` (`user_id`) ON DELETE NO ACTION;

--
-- Contraintes pour la table `jeux`
--
ALTER TABLE `jeux`
  ADD CONSTRAINT `jeu_user_id` FOREIGN KEY (`jeu_page_creator_id`) REFERENCES `user` (`user_id`) ON DELETE NO ACTION;

--
-- Contraintes pour la table `tag_by_game`
--
ALTER TABLE `tag_by_game`
  ADD CONSTRAINT `tag_game_id` FOREIGN KEY (`game_id`) REFERENCES `jeux` (`jeu_id`) ON DELETE NO ACTION,
  ADD CONSTRAINT `tag_tag_id` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`tag_id`) ON DELETE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
