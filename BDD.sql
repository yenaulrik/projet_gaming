-- phpMyAdmin SQL Dump
-- version OVH
-- https://www.phpmyadmin.net/
--
-- Hôte : vincentcipqzsxo0.mysql.db
-- Généré le :  sam. 28 mars 2020 à 14:34
-- Version du serveur :  5.6.46-log
-- Version de PHP :  7.2.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `vincentcipqzsxo0`
--

-- --------------------------------------------------------

--
-- Structure de la table `articles`
--

CREATE TABLE `articles` (
  `article_id` int(11) NOT NULL,
  `groupe_id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL,
  `article_title` text NOT NULL,
  `article_content` text NOT NULL,
  `article_creation_date` date NOT NULL,
  `jeux_id` int(11) UNSIGNED NOT NULL,
  `visible_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `articles`
--

INSERT INTO `articles` (`article_id`, `groupe_id`, `user_id`, `article_title`, `article_content`, `article_creation_date`, `jeux_id`, `visible_by`) VALUES
(9, 18, 6, 'Lorem ipsum dolor', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque viverra libero ut felis sagittis, non feugiat erat porttitor. Mauris mattis suscipit diam, a fermentum metus fermentum et. Vestibulum consequat, ligula vel luctus scelerisque, tellus dolor luctus ex, sit amet euismod urna ex in justo. Cras ac faucibus enim. Nam non diam vehicula, venenatis libero et, sagittis sapien. Donec eu lorem bibendum, bibendum ipsum sit amet, imperdiet risus. Fusce et iaculis ipsum. Morbi sit amet velit at risus consequat aliquet. Pellentesque vulputate, mi id convallis fermentum, felis sapien dictum nibh, ut sollicitudin magna leo non lectus. Praesent vitae hendrerit mauris. Morbi dapibus, ante et tristique malesuada, metus nunc elementum elit, vel rutrum mauris lacus ac lorem. ', '2020-03-26', 4, 2),
(10, 18, 6, 'Praesent cursus', 'Praesent cursus neque neque, ac aliquam dui consectetur maximus. Nullam aliquet velit nec massa varius sodales. Etiam ac justo eget elit scelerisque accumsan. Sed tincidunt, ipsum eu ornare hendrerit, libero nulla iaculis mi, eget accumsan tortor sapien non mauris. Cras auctor nibh sit amet eros pharetra, id facilisis orci molestie. Donec libero odio, ornare non arcu a, euismod egestas libero. Nulla facilisi. Integer eleifend finibus dapibus. Nulla interdum nibh pulvinar sem lobortis mattis. Cras id euismod magna. Mauris sed elementum ex. Vestibulum vitae risus quis magna fermentum suscipit non ac orci. ', '2020-03-26', 11, 2),
(11, 14, 6, 'Praesent cursus', 'Praesent cursus neque neque, ac aliquam dui consectetur maximus. Nullam aliquet velit nec massa varius sodales. Etiam ac justo eget elit scelerisque accumsan. Sed tincidunt, ipsum eu ornare hendrerit, libero nulla iaculis mi, eget accumsan tortor sapien non mauris. Cras auctor nibh sit amet eros pharetra, id facilisis orci molestie. Donec libero odio, ornare non arcu a, euismod egestas libero. Nulla facilisi. Integer eleifend finibus dapibus. Nulla interdum nibh pulvinar sem lobortis mattis. Cras id euismod magna. Mauris sed elementum ex. Vestibulum vitae risus quis magna fermentum suscipit non ac orci. ', '2020-03-26', 3, 2),
(12, 14, 6, 'Lorem ipsum dolor', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque viverra libero ut felis sagittis, non feugiat erat porttitor. Mauris mattis suscipit diam, a fermentum metus fermentum et. Vestibulum consequat, ligula vel luctus scelerisque, tellus dolor luctus ex, sit amet euismod urna ex in justo. Cras ac faucibus enim. Nam non diam vehicula, venenatis libero et, sagittis sapien. Donec eu lorem bibendum, bibendum ipsum sit amet, imperdiet risus. Fusce et iaculis ipsum. Morbi sit amet velit at risus consequat aliquet. Pellentesque vulputate, mi id convallis fermentum, felis sapien dictum nibh, ut sollicitudin magna leo non lectus. Praesent vitae hendrerit mauris. Morbi dapibus, ante et tristique malesuada, metus nunc elementum elit, vel rutrum mauris lacus ac lorem. ', '2020-03-26', 15, 2),
(13, 11, 6, 'Lorem ipsum dolor', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque viverra libero ut felis sagittis, non feugiat erat porttitor. Mauris mattis suscipit diam, a fermentum metus fermentum et. Vestibulum consequat, ligula vel luctus scelerisque, tellus dolor luctus ex, sit amet euismod urna ex in justo. Cras ac faucibus enim. Nam non diam vehicula, venenatis libero et, sagittis sapien. Donec eu lorem bibendum, bibendum ipsum sit amet, imperdiet risus. Fusce et iaculis ipsum. Morbi sit amet velit at risus consequat aliquet. Pellentesque vulputate, mi id convallis fermentum, felis sapien dictum nibh, ut sollicitudin magna leo non lectus. Praesent vitae hendrerit mauris. Morbi dapibus, ante et tristique malesuada, metus nunc elementum elit, vel rutrum mauris lacus ac lorem. ', '2020-03-26', 6, 2),
(14, 11, 6, 'Praesent cursus', 'Praesent cursus neque neque, ac aliquam dui consectetur maximus. Nullam aliquet velit nec massa varius sodales. Etiam ac justo eget elit scelerisque accumsan. Sed tincidunt, ipsum eu ornare hendrerit, libero nulla iaculis mi, eget accumsan tortor sapien non mauris. Cras auctor nibh sit amet eros pharetra, id facilisis orci molestie. Donec libero odio, ornare non arcu a, euismod egestas libero. Nulla facilisi. Integer eleifend finibus dapibus. Nulla interdum nibh pulvinar sem lobortis mattis. Cras id euismod magna. Mauris sed elementum ex. Vestibulum vitae risus quis magna fermentum suscipit non ac orci. ', '2020-03-26', 5, 2),
(15, 20, 6, 'Praesent cursus', 'Praesent cursus neque neque, ac aliquam dui consectetur maximus. Nullam aliquet velit nec massa varius sodales. Etiam ac justo eget elit scelerisque accumsan. Sed tincidunt, ipsum eu ornare hendrerit, libero nulla iaculis mi, eget accumsan tortor sapien non mauris. Cras auctor nibh sit amet eros pharetra, id facilisis orci molestie. Donec libero odio, ornare non arcu a, euismod egestas libero. Nulla facilisi. Integer eleifend finibus dapibus. Nulla interdum nibh pulvinar sem lobortis mattis. Cras id euismod magna. Mauris sed elementum ex. Vestibulum vitae risus quis magna fermentum suscipit non ac orci. ', '2020-03-26', 1, 2),
(16, 20, 6, 'Lorem ipsum dolor', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque viverra libero ut felis sagittis, non feugiat erat porttitor. Mauris mattis suscipit diam, a fermentum metus fermentum et. Vestibulum consequat, ligula vel luctus scelerisque, tellus dolor luctus ex, sit amet euismod urna ex in justo. Cras ac faucibus enim. Nam non diam vehicula, venenatis libero et, sagittis sapien. Donec eu lorem bibendum, bibendum ipsum sit amet, imperdiet risus. Fusce et iaculis ipsum. Morbi sit amet velit at risus consequat aliquet. Pellentesque vulputate, mi id convallis fermentum, felis sapien dictum nibh, ut sollicitudin magna leo non lectus. Praesent vitae hendrerit mauris. Morbi dapibus, ante et tristique malesuada, metus nunc elementum elit, vel rutrum mauris lacus ac lorem. ', '2020-03-26', 15, 2),
(17, 10, 6, 'Lorem ipsum dolor', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque viverra libero ut felis sagittis, non feugiat erat porttitor. Mauris mattis suscipit diam, a fermentum metus fermentum et. Vestibulum consequat, ligula vel luctus scelerisque, tellus dolor luctus ex, sit amet euismod urna ex in justo. Cras ac faucibus enim. Nam non diam vehicula, venenatis libero et, sagittis sapien. Donec eu lorem bibendum, bibendum ipsum sit amet, imperdiet risus. Fusce et iaculis ipsum. Morbi sit amet velit at risus consequat aliquet. Pellentesque vulputate, mi id convallis fermentum, felis sapien dictum nibh, ut sollicitudin magna leo non lectus. Praesent vitae hendrerit mauris. Morbi dapibus, ante et tristique malesuada, metus nunc elementum elit, vel rutrum mauris lacus ac lorem. ', '2020-03-26', 15, 2),
(18, 10, 6, 'Praesent cursus', 'Praesent cursus neque neque, ac aliquam dui consectetur maximus. Nullam aliquet velit nec massa varius sodales. Etiam ac justo eget elit scelerisque accumsan. Sed tincidunt, ipsum eu ornare hendrerit, libero nulla iaculis mi, eget accumsan tortor sapien non mauris. Cras auctor nibh sit amet eros pharetra, id facilisis orci molestie. Donec libero odio, ornare non arcu a, euismod egestas libero. Nulla facilisi. Integer eleifend finibus dapibus. Nulla interdum nibh pulvinar sem lobortis mattis. Cras id euismod magna. Mauris sed elementum ex. Vestibulum vitae risus quis magna fermentum suscipit non ac orci. ', '2020-03-26', 14, 2),
(19, 5, 6, 'Praesent cursus', 'Praesent cursus neque neque, ac aliquam dui consectetur maximus. Nullam aliquet velit nec massa varius sodales. Etiam ac justo eget elit scelerisque accumsan. Sed tincidunt, ipsum eu ornare hendrerit, libero nulla iaculis mi, eget accumsan tortor sapien non mauris. Cras auctor nibh sit amet eros pharetra, id facilisis orci molestie. Donec libero odio, ornare non arcu a, euismod egestas libero. Nulla facilisi. Integer eleifend finibus dapibus. Nulla interdum nibh pulvinar sem lobortis mattis. Cras id euismod magna. Mauris sed elementum ex. Vestibulum vitae risus quis magna fermentum suscipit non ac orci. ', '2020-03-26', 10, 2),
(20, 5, 6, 'Lorem ipsum dolor', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque viverra libero ut felis sagittis, non feugiat erat porttitor. Mauris mattis suscipit diam, a fermentum metus fermentum et. Vestibulum consequat, ligula vel luctus scelerisque, tellus dolor luctus ex, sit amet euismod urna ex in justo. Cras ac faucibus enim. Nam non diam vehicula, venenatis libero et, sagittis sapien. Donec eu lorem bibendum, bibendum ipsum sit amet, imperdiet risus. Fusce et iaculis ipsum. Morbi sit amet velit at risus consequat aliquet. Pellentesque vulputate, mi id convallis fermentum, felis sapien dictum nibh, ut sollicitudin magna leo non lectus. Praesent vitae hendrerit mauris. Morbi dapibus, ante et tristique malesuada, metus nunc elementum elit, vel rutrum mauris lacus ac lorem. ', '2020-03-26', 6, 2),
(21, 12, 6, 'Lorem ipsum dolor', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque viverra libero ut felis sagittis, non feugiat erat porttitor. Mauris mattis suscipit diam, a fermentum metus fermentum et. Vestibulum consequat, ligula vel luctus scelerisque, tellus dolor luctus ex, sit amet euismod urna ex in justo. Cras ac faucibus enim. Nam non diam vehicula, venenatis libero et, sagittis sapien. Donec eu lorem bibendum, bibendum ipsum sit amet, imperdiet risus. Fusce et iaculis ipsum. Morbi sit amet velit at risus consequat aliquet. Pellentesque vulputate, mi id convallis fermentum, felis sapien dictum nibh, ut sollicitudin magna leo non lectus. Praesent vitae hendrerit mauris. Morbi dapibus, ante et tristique malesuada, metus nunc elementum elit, vel rutrum mauris lacus ac lorem. ', '2020-03-26', 6, 2),
(22, 12, 6, 'Praesent cursus', 'Praesent cursus neque neque, ac aliquam dui consectetur maximus. Nullam aliquet velit nec massa varius sodales. Etiam ac justo eget elit scelerisque accumsan. Sed tincidunt, ipsum eu ornare hendrerit, libero nulla iaculis mi, eget accumsan tortor sapien non mauris. Cras auctor nibh sit amet eros pharetra, id facilisis orci molestie. Donec libero odio, ornare non arcu a, euismod egestas libero. Nulla facilisi. Integer eleifend finibus dapibus. Nulla interdum nibh pulvinar sem lobortis mattis. Cras id euismod magna. Mauris sed elementum ex. Vestibulum vitae risus quis magna fermentum suscipit non ac orci. ', '2020-03-26', 13, 2),
(23, 13, 6, 'Praesent cursus', 'Praesent cursus neque neque, ac aliquam dui consectetur maximus. Nullam aliquet velit nec massa varius sodales. Etiam ac justo eget elit scelerisque accumsan. Sed tincidunt, ipsum eu ornare hendrerit, libero nulla iaculis mi, eget accumsan tortor sapien non mauris. Cras auctor nibh sit amet eros pharetra, id facilisis orci molestie. Donec libero odio, ornare non arcu a, euismod egestas libero. Nulla facilisi. Integer eleifend finibus dapibus. Nulla interdum nibh pulvinar sem lobortis mattis. Cras id euismod magna. Mauris sed elementum ex. Vestibulum vitae risus quis magna fermentum suscipit non ac orci. ', '2020-03-26', 13, 2),
(24, 13, 6, 'Lorem ipsum dolor', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque viverra libero ut felis sagittis, non feugiat erat porttitor. Mauris mattis suscipit diam, a fermentum metus fermentum et. Vestibulum consequat, ligula vel luctus scelerisque, tellus dolor luctus ex, sit amet euismod urna ex in justo. Cras ac faucibus enim. Nam non diam vehicula, venenatis libero et, sagittis sapien. Donec eu lorem bibendum, bibendum ipsum sit amet, imperdiet risus. Fusce et iaculis ipsum. Morbi sit amet velit at risus consequat aliquet. Pellentesque vulputate, mi id convallis fermentum, felis sapien dictum nibh, ut sollicitudin magna leo non lectus. Praesent vitae hendrerit mauris. Morbi dapibus, ante et tristique malesuada, metus nunc elementum elit, vel rutrum mauris lacus ac lorem. ', '2020-03-26', 12, 2),
(25, 19, 6, 'Lorem ipsum dolor', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque viverra libero ut felis sagittis, non feugiat erat porttitor. Mauris mattis suscipit diam, a fermentum metus fermentum et. Vestibulum consequat, ligula vel luctus scelerisque, tellus dolor luctus ex, sit amet euismod urna ex in justo. Cras ac faucibus enim. Nam non diam vehicula, venenatis libero et, sagittis sapien. Donec eu lorem bibendum, bibendum ipsum sit amet, imperdiet risus. Fusce et iaculis ipsum. Morbi sit amet velit at risus consequat aliquet. Pellentesque vulputate, mi id convallis fermentum, felis sapien dictum nibh, ut sollicitudin magna leo non lectus. Praesent vitae hendrerit mauris. Morbi dapibus, ante et tristique malesuada, metus nunc elementum elit, vel rutrum mauris lacus ac lorem. ', '2020-03-26', 6, 2),
(26, 19, 6, 'Praesent cursus', 'Praesent cursus neque neque, ac aliquam dui consectetur maximus. Nullam aliquet velit nec massa varius sodales. Etiam ac justo eget elit scelerisque accumsan. Sed tincidunt, ipsum eu ornare hendrerit, libero nulla iaculis mi, eget accumsan tortor sapien non mauris. Cras auctor nibh sit amet eros pharetra, id facilisis orci molestie. Donec libero odio, ornare non arcu a, euismod egestas libero. Nulla facilisi. Integer eleifend finibus dapibus. Nulla interdum nibh pulvinar sem lobortis mattis. Cras id euismod magna. Mauris sed elementum ex. Vestibulum vitae risus quis magna fermentum suscipit non ac orci. ', '2020-03-26', 12, 2),
(27, 6, 6, 'Praesent cursus', 'Praesent cursus neque neque, ac aliquam dui consectetur maximus. Nullam aliquet velit nec massa varius sodales. Etiam ac justo eget elit scelerisque accumsan. Sed tincidunt, ipsum eu ornare hendrerit, libero nulla iaculis mi, eget accumsan tortor sapien non mauris. Cras auctor nibh sit amet eros pharetra, id facilisis orci molestie. Donec libero odio, ornare non arcu a, euismod egestas libero. Nulla facilisi. Integer eleifend finibus dapibus. Nulla interdum nibh pulvinar sem lobortis mattis. Cras id euismod magna. Mauris sed elementum ex. Vestibulum vitae risus quis magna fermentum suscipit non ac orci. ', '2020-03-26', 11, 2),
(28, 6, 6, 'Lorem ipsum dolor', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque viverra libero ut felis sagittis, non feugiat erat porttitor. Mauris mattis suscipit diam, a fermentum metus fermentum et. Vestibulum consequat, ligula vel luctus scelerisque, tellus dolor luctus ex, sit amet euismod urna ex in justo. Cras ac faucibus enim. Nam non diam vehicula, venenatis libero et, sagittis sapien. Donec eu lorem bibendum, bibendum ipsum sit amet, imperdiet risus. Fusce et iaculis ipsum. Morbi sit amet velit at risus consequat aliquet. Pellentesque vulputate, mi id convallis fermentum, felis sapien dictum nibh, ut sollicitudin magna leo non lectus. Praesent vitae hendrerit mauris. Morbi dapibus, ante et tristique malesuada, metus nunc elementum elit, vel rutrum mauris lacus ac lorem. ', '2020-03-26', 10, 2),
(29, 17, 6, 'Lorem ipsum dolor', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque viverra libero ut felis sagittis, non feugiat erat porttitor. Mauris mattis suscipit diam, a fermentum metus fermentum et. Vestibulum consequat, ligula vel luctus scelerisque, tellus dolor luctus ex, sit amet euismod urna ex in justo. Cras ac faucibus enim. Nam non diam vehicula, venenatis libero et, sagittis sapien. Donec eu lorem bibendum, bibendum ipsum sit amet, imperdiet risus. Fusce et iaculis ipsum. Morbi sit amet velit at risus consequat aliquet. Pellentesque vulputate, mi id convallis fermentum, felis sapien dictum nibh, ut sollicitudin magna leo non lectus. Praesent vitae hendrerit mauris. Morbi dapibus, ante et tristique malesuada, metus nunc elementum elit, vel rutrum mauris lacus ac lorem. ', '2020-03-26', 15, 2),
(30, 17, 6, 'Praesent cursus', 'Praesent cursus neque neque, ac aliquam dui consectetur maximus. Nullam aliquet velit nec massa varius sodales. Etiam ac justo eget elit scelerisque accumsan. Sed tincidunt, ipsum eu ornare hendrerit, libero nulla iaculis mi, eget accumsan tortor sapien non mauris. Cras auctor nibh sit amet eros pharetra, id facilisis orci molestie. Donec libero odio, ornare non arcu a, euismod egestas libero. Nulla facilisi. Integer eleifend finibus dapibus. Nulla interdum nibh pulvinar sem lobortis mattis. Cras id euismod magna. Mauris sed elementum ex. Vestibulum vitae risus quis magna fermentum suscipit non ac orci. ', '2020-03-26', 12, 2),
(31, 9, 6, 'Praesent cursus', 'Praesent cursus neque neque, ac aliquam dui consectetur maximus. Nullam aliquet velit nec massa varius sodales. Etiam ac justo eget elit scelerisque accumsan. Sed tincidunt, ipsum eu ornare hendrerit, libero nulla iaculis mi, eget accumsan tortor sapien non mauris. Cras auctor nibh sit amet eros pharetra, id facilisis orci molestie. Donec libero odio, ornare non arcu a, euismod egestas libero. Nulla facilisi. Integer eleifend finibus dapibus. Nulla interdum nibh pulvinar sem lobortis mattis. Cras id euismod magna. Mauris sed elementum ex. Vestibulum vitae risus quis magna fermentum suscipit non ac orci. ', '2020-03-26', 15, 2),
(32, 9, 6, 'Lorem ipsum dolor', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque viverra libero ut felis sagittis, non feugiat erat porttitor. Mauris mattis suscipit diam, a fermentum metus fermentum et. Vestibulum consequat, ligula vel luctus scelerisque, tellus dolor luctus ex, sit amet euismod urna ex in justo. Cras ac faucibus enim. Nam non diam vehicula, venenatis libero et, sagittis sapien. Donec eu lorem bibendum, bibendum ipsum sit amet, imperdiet risus. Fusce et iaculis ipsum. Morbi sit amet velit at risus consequat aliquet. Pellentesque vulputate, mi id convallis fermentum, felis sapien dictum nibh, ut sollicitudin magna leo non lectus. Praesent vitae hendrerit mauris. Morbi dapibus, ante et tristique malesuada, metus nunc elementum elit, vel rutrum mauris lacus ac lorem. ', '2020-03-26', 14, 2),
(33, 15, 6, 'Lorem ipsum dolor', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque viverra libero ut felis sagittis, non feugiat erat porttitor. Mauris mattis suscipit diam, a fermentum metus fermentum et. Vestibulum consequat, ligula vel luctus scelerisque, tellus dolor luctus ex, sit amet euismod urna ex in justo. Cras ac faucibus enim. Nam non diam vehicula, venenatis libero et, sagittis sapien. Donec eu lorem bibendum, bibendum ipsum sit amet, imperdiet risus. Fusce et iaculis ipsum. Morbi sit amet velit at risus consequat aliquet. Pellentesque vulputate, mi id convallis fermentum, felis sapien dictum nibh, ut sollicitudin magna leo non lectus. Praesent vitae hendrerit mauris. Morbi dapibus, ante et tristique malesuada, metus nunc elementum elit, vel rutrum mauris lacus ac lorem. ', '2020-03-26', 2, 2),
(34, 15, 6, 'Praesent cursus', 'Praesent cursus neque neque, ac aliquam dui consectetur maximus. Nullam aliquet velit nec massa varius sodales. Etiam ac justo eget elit scelerisque accumsan. Sed tincidunt, ipsum eu ornare hendrerit, libero nulla iaculis mi, eget accumsan tortor sapien non mauris. Cras auctor nibh sit amet eros pharetra, id facilisis orci molestie. Donec libero odio, ornare non arcu a, euismod egestas libero. Nulla facilisi. Integer eleifend finibus dapibus. Nulla interdum nibh pulvinar sem lobortis mattis. Cras id euismod magna. Mauris sed elementum ex. Vestibulum vitae risus quis magna fermentum suscipit non ac orci. ', '2020-03-26', 4, 2),
(35, 7, 6, 'Praesent cursus', 'Praesent cursus neque neque, ac aliquam dui consectetur maximus. Nullam aliquet velit nec massa varius sodales. Etiam ac justo eget elit scelerisque accumsan. Sed tincidunt, ipsum eu ornare hendrerit, libero nulla iaculis mi, eget accumsan tortor sapien non mauris. Cras auctor nibh sit amet eros pharetra, id facilisis orci molestie. Donec libero odio, ornare non arcu a, euismod egestas libero. Nulla facilisi. Integer eleifend finibus dapibus. Nulla interdum nibh pulvinar sem lobortis mattis. Cras id euismod magna. Mauris sed elementum ex. Vestibulum vitae risus quis magna fermentum suscipit non ac orci. ', '2020-03-26', 5, 2),
(36, 7, 6, 'Lorem ipsum dolor', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque viverra libero ut felis sagittis, non feugiat erat porttitor. Mauris mattis suscipit diam, a fermentum metus fermentum et. Vestibulum consequat, ligula vel luctus scelerisque, tellus dolor luctus ex, sit amet euismod urna ex in justo. Cras ac faucibus enim. Nam non diam vehicula, venenatis libero et, sagittis sapien. Donec eu lorem bibendum, bibendum ipsum sit amet, imperdiet risus. Fusce et iaculis ipsum. Morbi sit amet velit at risus consequat aliquet. Pellentesque vulputate, mi id convallis fermentum, felis sapien dictum nibh, ut sollicitudin magna leo non lectus. Praesent vitae hendrerit mauris. Morbi dapibus, ante et tristique malesuada, metus nunc elementum elit, vel rutrum mauris lacus ac lorem. ', '2020-03-26', 4, 2),
(37, 8, 6, 'Lorem ipsum dolor', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque viverra libero ut felis sagittis, non feugiat erat porttitor. Mauris mattis suscipit diam, a fermentum metus fermentum et. Vestibulum consequat, ligula vel luctus scelerisque, tellus dolor luctus ex, sit amet euismod urna ex in justo. Cras ac faucibus enim. Nam non diam vehicula, venenatis libero et, sagittis sapien. Donec eu lorem bibendum, bibendum ipsum sit amet, imperdiet risus. Fusce et iaculis ipsum. Morbi sit amet velit at risus consequat aliquet. Pellentesque vulputate, mi id convallis fermentum, felis sapien dictum nibh, ut sollicitudin magna leo non lectus. Praesent vitae hendrerit mauris. Morbi dapibus, ante et tristique malesuada, metus nunc elementum elit, vel rutrum mauris lacus ac lorem. ', '2020-03-26', 1, 2),
(38, 8, 6, 'Praesent cursus', 'Praesent cursus neque neque, ac aliquam dui consectetur maximus. Nullam aliquet velit nec massa varius sodales. Etiam ac justo eget elit scelerisque accumsan. Sed tincidunt, ipsum eu ornare hendrerit, libero nulla iaculis mi, eget accumsan tortor sapien non mauris. Cras auctor nibh sit amet eros pharetra, id facilisis orci molestie. Donec libero odio, ornare non arcu a, euismod egestas libero. Nulla facilisi. Integer eleifend finibus dapibus. Nulla interdum nibh pulvinar sem lobortis mattis. Cras id euismod magna. Mauris sed elementum ex. Vestibulum vitae risus quis magna fermentum suscipit non ac orci. ', '2020-03-26', 3, 2),
(39, 16, 6, 'Praesent cursus', 'Praesent cursus neque neque, ac aliquam dui consectetur maximus. Nullam aliquet velit nec massa varius sodales. Etiam ac justo eget elit scelerisque accumsan. Sed tincidunt, ipsum eu ornare hendrerit, libero nulla iaculis mi, eget accumsan tortor sapien non mauris. Cras auctor nibh sit amet eros pharetra, id facilisis orci molestie. Donec libero odio, ornare non arcu a, euismod egestas libero. Nulla facilisi. Integer eleifend finibus dapibus. Nulla interdum nibh pulvinar sem lobortis mattis. Cras id euismod magna. Mauris sed elementum ex. Vestibulum vitae risus quis magna fermentum suscipit non ac orci. ', '2020-03-26', 1, 2),
(40, 16, 6, 'Lorem ipsum dolor', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque viverra libero ut felis sagittis, non feugiat erat porttitor. Mauris mattis suscipit diam, a fermentum metus fermentum et. Vestibulum consequat, ligula vel luctus scelerisque, tellus dolor luctus ex, sit amet euismod urna ex in justo. Cras ac faucibus enim. Nam non diam vehicula, venenatis libero et, sagittis sapien. Donec eu lorem bibendum, bibendum ipsum sit amet, imperdiet risus. Fusce et iaculis ipsum. Morbi sit amet velit at risus consequat aliquet. Pellentesque vulputate, mi id convallis fermentum, felis sapien dictum nibh, ut sollicitudin magna leo non lectus. Praesent vitae hendrerit mauris. Morbi dapibus, ante et tristique malesuada, metus nunc elementum elit, vel rutrum mauris lacus ac lorem. ', '2020-03-26', 10, 2);

-- --------------------------------------------------------

--
-- Structure de la table `game_by_group`
--

CREATE TABLE `game_by_group` (
  `game_by_groupe_id` int(11) UNSIGNED NOT NULL,
  `group_id` int(11) UNSIGNED NOT NULL,
  `game_id` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `game_by_group`
--

INSERT INTO `game_by_group` (`game_by_groupe_id`, `group_id`, `game_id`) VALUES
(11, 8, 1),
(12, 8, 3),
(15, 15, 2),
(16, 15, 4),
(19, 17, 15),
(20, 17, 12),
(23, 12, 6),
(24, 12, 13),
(25, 10, 15),
(26, 10, 14),
(27, 13, 13),
(28, 13, 12),
(29, 6, 11),
(30, 6, 10),
(31, 5, 10),
(32, 5, 6),
(33, 11, 6),
(34, 11, 5),
(35, 7, 5),
(36, 7, 4),
(37, 14, 3),
(38, 14, 15),
(39, 16, 1),
(40, 16, 10),
(41, 9, 15),
(42, 9, 14),
(43, 18, 4),
(44, 18, 11),
(45, 19, 6),
(46, 19, 12),
(47, 20, 1),
(48, 20, 15);

-- --------------------------------------------------------

--
-- Structure de la table `groups`
--

CREATE TABLE `groups` (
  `group_id` int(11) UNSIGNED NOT NULL,
  `group_creator_id` int(11) UNSIGNED NOT NULL,
  `group_title` text NOT NULL,
  `group_description` text NOT NULL,
  `group_img` varchar(255) NOT NULL DEFAULT 'no-images.png',
  `group_rate` int(11) DEFAULT '0',
  `group_created_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
(20, 1, 'Zelda Legend', 'Lorem, ipsum dolor sit amet consectetur adipisicing elit. Facilis alias dolores incidunt aliquam nemo corporis. Temporibus provident voluptatem excepturi cum dolor fugiat sapiente, expedita natus adipisci, ipsum, possimus iure magni?', 'no-images.png', 99, '2020-02-11'),
(21, 2, 'aze', 'aze', '0418537001584639859grey_hat.png', 0, '2020-03-19');

-- --------------------------------------------------------

--
-- Structure de la table `jeux`
--

CREATE TABLE `jeux` (
  `jeu_id` int(11) UNSIGNED NOT NULL,
  `jeu_title` text NOT NULL,
  `jeu_img` varchar(255) NOT NULL DEFAULT 'no-images.png',
  `jeu_page_creator_id` int(11) UNSIGNED NOT NULL,
  `jeu_page_creation_date` date NOT NULL,
  `jeu_creator_name` text NOT NULL,
  `jeu_description` text NOT NULL,
  `jeu_creation_date` date NOT NULL,
  `jeu_rate` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `jeux`
--

INSERT INTO `jeux` (`jeu_id`, `jeu_title`, `jeu_img`, `jeu_page_creator_id`, `jeu_page_creation_date`, `jeu_creator_name`, `jeu_description`, `jeu_creation_date`, `jeu_rate`) VALUES
(1, 'Battle Fiels 5', 'battleField5.jpg', 1, '2020-02-11', 'Electronic Arts', 'Battlefield V (BFV) est un jeu vidéo de tir à la première personne développé par DICE et édité par Electronic Arts, sorti le 20 novembre 2018 sur PlayStation 4, Xbox One et Microsoft Windows. Ce douzième opus de la série se déroule dans le contexte de la Seconde Guerre Mondiale, revenant aux origines de la série1. ', '2018-11-20', 32),
(2, 'Borderlands 2', 'Borderlands-2.jpg', 1, '2020-02-11', 'Electronic Arts', 'Battlefield V (BFV) est un jeu vidéo de tir à la première personne développé par DICE et édité par Electronic Arts, sorti le 20 novembre 2018 sur PlayStation 4, Xbox One et Microsoft Windows. Ce douzième opus de la série se déroule dans le contexte de la Seconde Guerre Mondiale, revenant aux origines de la série1. ', '2018-11-20', 55),
(3, 'Borderlands', 'borderlands.jpg', 1, '2020-02-11', 'Electronic Arts', 'Battlefield V (BFV) est un jeu vidéo de tir à la première personne développé par DICE et édité par Electronic Arts, sorti le 20 novembre 2018 sur PlayStation 4, Xbox One et Microsoft Windows. Ce douzième opus de la série se déroule dans le contexte de la Seconde Guerre Mondiale, revenant aux origines de la série1. ', '2018-11-20', 21),
(4, 'Borderlands 3', 'Borderlands3.jpg', 1, '2020-02-11', 'Electronic Arts', 'Battlefield V (BFV) est un jeu vidéo de tir à la première personne développé par DICE et édité par Electronic Arts, sorti le 20 novembre 2018 sur PlayStation 4, Xbox One et Microsoft Windows. Ce douzième opus de la série se déroule dans le contexte de la Seconde Guerre Mondiale, revenant aux origines de la série1. ', '2018-11-20', 1),
(5, 'Fractured', 'fractured-mmorpg.jpg', 1, '2020-02-11', 'Electronic Arts', 'Battlefield V (BFV) est un jeu vidéo de tir à la première personne développé par DICE et édité par Electronic Arts, sorti le 20 novembre 2018 sur PlayStation 4, Xbox One et Microsoft Windows. Ce douzième opus de la série se déroule dans le contexte de la Seconde Guerre Mondiale, revenant aux origines de la série1. ', '2018-11-20', 531),
(6, 'Red Dead Redemption 2', 'RDR2.jpg', 1, '2020-02-11', 'Electronic Arts', 'Battlefield V (BFV) est un jeu vidéo de tir à la première personne développé par DICE et édité par Electronic Arts, sorti le 20 novembre 2018 sur PlayStation 4, Xbox One et Microsoft Windows. Ce douzième opus de la série se déroule dans le contexte de la Seconde Guerre Mondiale, revenant aux origines de la série1. ', '2018-11-20', 62),
(10, 'Songs of Horror', 'songOfHorror.jpg', 1, '2020-02-11', 'Electronic Arts', 'Battlefield V (BFV) est un jeu vidéo de tir à la première personne développé par DICE et édité par Electronic Arts, sorti le 20 novembre 2018 sur PlayStation 4, Xbox One et Microsoft Windows. Ce douzième opus de la série se déroule dans le contexte de la Seconde Guerre Mondiale, revenant aux origines de la série1. ', '2018-11-20', 454),
(11, 'Starbound', 'starbound.jpg', 1, '2020-02-11', 'Electronic Arts', 'Battlefield V (BFV) est un jeu vidéo de tir à la première personne développé par DICE et édité par Electronic Arts, sorti le 20 novembre 2018 sur PlayStation 4, Xbox One et Microsoft Windows. Ce douzième opus de la série se déroule dans le contexte de la Seconde Guerre Mondiale, revenant aux origines de la série1. ', '2018-11-20', 5),
(12, 'Terraria', 'terraria.jpg', 1, '2020-02-11', 'Electronic Arts', 'Battlefield V (BFV) est un jeu vidéo de tir à la première personne développé par DICE et édité par Electronic Arts, sorti le 20 novembre 2018 sur PlayStation 4, Xbox One et Microsoft Windows. Ce douzième opus de la série se déroule dans le contexte de la Seconde Guerre Mondiale, revenant aux origines de la série1. ', '2018-11-20', 62),
(13, 'Warcraft 3 Reforged', 'war3reforged.jpg', 1, '2020-02-11', 'Electronic Arts', 'Battlefield V (BFV) est un jeu vidéo de tir à la première personne développé par DICE et édité par Electronic Arts, sorti le 20 novembre 2018 sur PlayStation 4, Xbox One et Microsoft Windows. Ce douzième opus de la série se déroule dans le contexte de la Seconde Guerre Mondiale, revenant aux origines de la série1. ', '2018-11-20', 254),
(14, 'World of Warcraft', 'wow.jpg', 1, '2020-02-11', 'Electronic Arts', 'Battlefield V (BFV) est un jeu vidéo de tir à la première personne développé par DICE et édité par Electronic Arts, sorti le 20 novembre 2018 sur PlayStation 4, Xbox One et Microsoft Windows. Ce douzième opus de la série se déroule dans le contexte de la Seconde Guerre Mondiale, revenant aux origines de la série1. ', '2018-11-20', 12),
(15, 'World of Warcraft Classic', 'wow-classic.jpg', 1, '2020-02-11', 'Electronic Arts', 'Battlefield V (BFV) est un jeu vidéo de tir à la première personne développé par DICE et édité par Electronic Arts, sorti le 20 novembre 2018 sur PlayStation 4, Xbox One et Microsoft Windows. Ce douzième opus de la série se déroule dans le contexte de la Seconde Guerre Mondiale, revenant aux origines de la série1. ', '2018-11-20', 44);

-- --------------------------------------------------------

--
-- Structure de la table `tags`
--

CREATE TABLE `tags` (
  `tag_id` int(11) UNSIGNED NOT NULL,
  `name` text NOT NULL,
  `type` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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

CREATE TABLE `tag_by_game` (
  `tag_by_game_id` int(11) NOT NULL,
  `tag_id` int(11) UNSIGNED NOT NULL,
  `game_id` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) UNSIGNED NOT NULL,
  `group_id` int(11) DEFAULT NULL,
  `user_last_name` text NOT NULL,
  `user_first_name` text NOT NULL,
  `user_pseudo` varchar(55) NOT NULL,
  `user_mail` varchar(120) NOT NULL,
  `user_password` varchar(64) NOT NULL,
  `user_created_at` date NOT NULL,
  `user_avatar` varchar(255) NOT NULL DEFAULT 'no-images.png',
  `is_admin` int(5) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`user_id`, `group_id`, `user_last_name`, `user_first_name`, `user_pseudo`, `user_mail`, `user_password`, `user_created_at`, `user_avatar`, `is_admin`) VALUES
(1, NULL, 'Caraty', 'Vincent', 'yenaulrik', 'yenaulrik@hotmail.fr', '0000', '2020-02-13', 'no-images.png', 1),
(2, 18, 'aze', 'aze', 'aze', 'aze@aze.fr', '$2y$10$w34WVeJfx5IyyrFPyTXcsOz4EiXEpyieiN231z0IC45Ry3qqS955O', '2020-03-02', 'no-images.png', 1),
(4, NULL, 'didier', 'gramond', 'gram', 'gramonddiier@oh.fr', '$2y$10$7zszIOlHFfxPomqQagCF..diXPWPLUWtoLgJoJAoSqDSQt045gfdK', '2020-03-26', 'no-images.png', 0),
(6, 16, 'didier', 'gage', 'didi', 'didi@oh.fr', '$2y$10$ud2KOBT6TK2ow2vCSMdDdezSaOK.R6BfPpKA1TRRLhjTehng13dR6', '2020-03-26', 'no-images.png', 0);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`article_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `jeux_id` (`jeux_id`),
  ADD KEY `jeux_id_2` (`jeux_id`),
  ADD KEY `article_group_id` (`groupe_id`);

--
-- Index pour la table `game_by_group`
--
ALTER TABLE `game_by_group`
  ADD PRIMARY KEY (`game_by_groupe_id`),
  ADD KEY `groupe_id` (`group_id`),
  ADD KEY `game_id` (`game_id`);

--
-- Index pour la table `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`group_id`),
  ADD KEY `groupe_creator_id` (`group_creator_id`);

--
-- Index pour la table `jeux`
--
ALTER TABLE `jeux`
  ADD PRIMARY KEY (`jeu_id`),
  ADD KEY `jeu_page_creator_id` (`jeu_page_creator_id`);

--
-- Index pour la table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`tag_id`);

--
-- Index pour la table `tag_by_game`
--
ALTER TABLE `tag_by_game`
  ADD PRIMARY KEY (`tag_by_game_id`),
  ADD KEY `tag_id` (`tag_id`),
  ADD KEY `game_id` (`game_id`);

--
-- Index pour la table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `user_mail` (`user_mail`),
  ADD UNIQUE KEY `user_pseudo` (`user_pseudo`),
  ADD KEY `user_id` (`user_id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `articles`
--
ALTER TABLE `articles`
  MODIFY `article_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT pour la table `game_by_group`
--
ALTER TABLE `game_by_group`
  MODIFY `game_by_groupe_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT pour la table `groups`
--
ALTER TABLE `groups`
  MODIFY `group_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT pour la table `jeux`
--
ALTER TABLE `jeux`
  MODIFY `jeu_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT pour la table `tags`
--
ALTER TABLE `tags`
  MODIFY `tag_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT pour la table `tag_by_game`
--
ALTER TABLE `tag_by_game`
  MODIFY `tag_by_game_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT pour la table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

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
