-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : lun. 30 nov. 2020 à 10:06
-- Version du serveur :  10.4.14-MariaDB
-- Version de PHP : 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `omeka`
--

-- --------------------------------------------------------

--
-- Structure de la table `api_key`
--

CREATE TABLE `api_key` (
  `id` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner_id` int(11) NOT NULL,
  `label` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `credential_hash` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_ip` varbinary(16) DEFAULT NULL COMMENT '(DC2Type:ip_address)',
  `last_accessed` datetime DEFAULT NULL,
  `created` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `asset`
--

CREATE TABLE `asset` (
  `id` int(11) NOT NULL,
  `owner_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `media_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `storage_id` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `extension` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `fulltext_search`
--

CREATE TABLE `fulltext_search` (
  `id` int(11) NOT NULL,
  `resource` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner_id` int(11) DEFAULT NULL,
  `is_public` tinyint(1) NOT NULL,
  `title` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `fulltext_search`
--

INSERT INTO `fulltext_search` (`id`, `resource`, `owner_id`, `is_public`, `title`, `text`) VALUES
(1, 'items', 1, 1, 'Coupe du monde', 'Coupe du monde\nhttps://static.wikia.nocookie.net/the-football-database/images/7/7f/FIFA_Club_World_Cup.jpeg/revision/latest/scale-to-width-down/340?cb=20150226172258'),
(2, 'items', 1, 1, 'Ligue des champions', 'Ligue des champions\nhttps://m.media-amazon.com/images/I/513Iya32T3L._AC_SS350_.jpg'),
(2, 'site_pages', 1, 1, 'omekaApi', ''),
(3, 'items', 1, 1, 'UEFA', 'UEFA\nhttps://images-na.ssl-images-amazon.com/images/I/61bdv3ZpPxL._AC_SX522_.jpg'),
(4, 'items', 1, 1, 'Championnat', 'Championnat\nhttps://futboldesdefrancia.com/wp-content/uploads/2014/06/ligue-1-logo.jpg'),
(5, 'items', 1, 1, 'Coupe de la ligue', 'Coupe de la ligue\nhttps://lh3.googleusercontent.com/proxy/Myl-1vtzRj-rOoyVW9p4eFIpTqcSOmMYprB8MRaLcPlayGsq39l8kre063arTJpz6aYGA2inDtqXPjRcWKTJwUBB8Y7RQAH3kf2JWvPdgf9Nnw-IatuvvSgKlwhiOgqo9kkhv-p9iOIfsA'),
(7, 'items', 1, 1, 'Amical', 'Amical\nhttps://www.gf38.fr/wp-content/themes/HookipaTemplateGrenoble-child/assets/img/cdf.png'),
(8, 'items', 1, 1, 'Neymar', 'Neymar\nhttps://upload.wikimedia.org/wikipedia/commons/thumb/b/b5/20141118_AUTBRA_5089.jpg/300px-20141118_AUTBRA_5089.jpg\nPSG'),
(9, 'items', 1, 1, 'Mbappe', 'Mbappe\nhttps://upload.wikimedia.org/wikipedia/commons/thumb/8/80/2019-07-17_SG_Dynamo_Dresden_vs._Paris_Saint-Germain_by_Sandro_Halank%E2%80%93620.jpg/300px-2019-07-17_SG_Dynamo_Dresden_vs._Paris_Saint-Germain_by_Sandro_Halank%E2%80%93620.jpg\nPSG'),
(10, 'items', 1, 1, 'Benlameri', 'Benlameri\nhttps://www.olympique-et-lyonnais.com/wp-content/uploads/2020/10/Benlamri.jpg\nOL'),
(11, 'items', 1, 1, 'Depaye', 'Depaye\nhttps://m.footballdatabase.eu/images/photos/players/a_139/139065.jpg\nOL'),
(12, 'items', 1, 1, 'Payet', 'Payet\nhttps://imgresizer.eurosport.com/unsafe/1200x0/filters:format(jpeg):focal(1294x321:1296x319)/origin-imgresizer.eurosport.com/2020/10/21/2919735-59988668-2560-1440.jpg\nOM'),
(13, 'items', 1, 1, 'Mandanda', 'Mandanda\nhttps://upload.wikimedia.org/wikipedia/commons/thumb/4/4d/Steve_Mandanda_5312.jpg/400px-Steve_Mandanda_5312.jpg\nOM'),
(14, 'items', 1, 1, 'ClementTurpin', 'ClementTurpin\nhttps://img.aws.la-croix.com/2018/06/06/1300944844/L-arbitre-Clement-Turpinde-finale-Coupe-France-entre-Monaco-PSG-Bordeaux-31-2018_1_1399_2063.jpg'),
(15, 'items', 1, 1, 'AntonyGautier', 'AntonyGautier\nAmical\nhttps://www.fff.fr/common/img/45/57/3/621x423/00545573.jpg'),
(16, 'items', 1, 1, 'BenoitBastien', 'BenoitBastien\nCoupe de la ligue\nhttps://c8.alamy.com/compfr/je81d0/benoit-bastien-arbitre-le-21-juin-2017-football-joueurs-de-football-championnat-de-france-2017-des-moins-de-21-ans-match-du-groupe-c-entre-la-republique-tcheque-3-1-de-l-italie-a-l-stadion-miejski-a-tychy-pologne-photo-de-maurizio-borsari-aflo-je81d0.jpg'),
(17, 'items', 1, 1, 'JohanHamel', 'JohanHamel\nChampionnat\nhttps://cdn-1.sb29.bzh/scripts/files/5f76e73b55dd02.70355619/hamel_johan_j6.jpg'),
(18, 'items', 1, 1, 'TonyChapron', 'TonyChapron\nUEFA\nhttps://brandandcelebrities.com/wp-content/uploads/2019/06/188-Tony-Chapron.gif'),
(19, 'items', 1, 1, 'LaurentDuhamel', 'LaurentDuhamel\nLigue des champions\ndata:image/jpeg;base64,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'),
(21, 'items', 1, 1, 'PSG', 'PSG\nLigue des champions\nParcDesPrinces\nCF\nCMC\nCL\nL1\nUEFA\nUCL\nhttps://static1-fr.millenium.gg/article_old/images/contenu/actus/LOL/Rivac/Logo_Team/300px-Paris_Saint-Germain_eSportslogo_square.png'),
(22, 'items', 1, 1, 'OM', 'OM\nVelodrome\nCF\nCL\nL1\nUCL\nhttps://upload.wikimedia.org/wikipedia/commons/thumb/d/d8/Olympique_Marseille_logo.svg/300px-Olympique_Marseille_logo.svg.png'),
(23, 'items', 1, 1, 'OL', 'OL\nLigue des champions\nGroupama\nCF\nCL\nL1\nUCL\nhttps://data.pixiz.com/output/user/frame/preview/api/big/7/5/6/3/1493657_fa02b.jpg'),
(24, 'items', 1, 1, 'LOSC', 'LOSC\nL1\nPierreMauroy\nCF\nCL\nL1\nUEFA\nhttps://pbs.twimg.com/profile_images/1317113400791629824/UaVrXmu7_400x400.jpg'),
(25, 'items', 1, 1, 'ASSE', 'ASSE\nUEFA\nGeoffroyGuichard\nL1\nCF\nCL\nhttps://medias.lequipe.fr/logo-football/38/300-alt?(none)'),
(26, 'items', 1, 1, 'OGCN', 'OGCN\nUEFA\nCF\nL1\nCF\nhttps://i.pinimg.com/originals/e3/82/0a/e3820a5a50cf8f7dd2d2a7eecc851e56.png'),
(27, 'items', 1, 1, 'ParcDesPrinces', 'ParcDesPrinces\nhttps://upload.wikimedia.org/wikipedia/commons/thumb/7/73/Pdptifo.jpg/440px-Pdptifo.jpg'),
(28, 'items', 1, 1, 'Velodrome', 'Velodrome\n\n\nhttps://www.leberry.fr/photoSRC/VVNUJ1paUTgIBhVOCRAHHQ4zRSkXaldfVR5dW1sXVA49/3830323.jpeg'),
(29, 'items', 1, 1, 'Groupama', 'Groupama\nhttps://lh3.googleusercontent.com/proxy/dpwEhyJ6zBECG2T-_QVQLt2eh0Bcsf41kk6zhLD_3OEs-8ly_9kmKrpkEt7LgZsYEYNwECkbQQmO23bI6dyAW_cbS6rfpG9BntW5xDEt'),
(30, 'items', 1, 1, 'GeoffroyGuichard', 'GeoffroyGuichard\n\n\nhttps://lh3.googleusercontent.com/proxy/zKWPndOW_Qb8ZnJbbnFFb8OvpjcWZkfVVUbotqgLXVZjtc1GIjEEIzHTbQlQVUCM8lmbDWXmHm2k0hpt5JHm2edpQPc_Cr1nt-tFEL7rRyJ7r8S5jkbcwaEdw18ulltIixW3-LqGE-JD6fLEgg'),
(31, 'items', 1, 1, 'PierreMauroy', 'PierreMauroy\n\n\nhttps://upload.wikimedia.org/wikipedia/commons/thumb/1/1a/Le_Stade_Pierre_Mauroy_lors_de_l%27Euro_2016.jpg/440px-Le_Stade_Pierre_Mauroy_lors_de_l%27Euro_2016.jpg'),
(32, 'items', 1, 1, 'LouisDeux', 'LouisDeux\nhttps://img-4.linternaute.com/9gTKlKQqUdybYo3Qu5HmHcCenHw=/300x/smart/cc06f5425bd64b4d8ee4434734daaaf0/ccmcms-linternaute/464253.jpg'),
(33, 'items', 1, 1, 'GastonRichard', 'GastonRichard\nhttps://www.leballonrond.fr/img/estadios/795/697795_med_stade_gaston_gerard.jpg.jpg'),
(34, 'items', 1, 1, 'UCL', 'UCL\nLigue des champions\nhttps://m.media-amazon.com/images/I/513Iya32T3L._AC_SS350_.jpg'),
(35, 'items', 1, 1, 'UEFA', 'UEFA\nUEFA\nhttps://www.poteaux-carres.com/images/site/coupeUEFA.gif'),
(36, 'items', 1, 1, 'L1', 'L1\nChampionnat\nhttps://futboldesdefrancia.com/wp-content/uploads/2014/06/ligue-1-logo.jpg'),
(37, 'items', 1, 1, 'CL', 'CL\nCoupe de la ligue\nhttps://lh3.googleusercontent.com/proxy/Myl-1vtzRj-rOoyVW9p4eFIpTqcSOmMYprB8MRaLcPlayGsq39l8kre063arTJpz6aYGA2inDtqXPjRcWKTJwUBB8Y7RQAH3kf2JWvPdgf9Nnw-IatuvvSgKlwhiOgqo9kkhv-p9iOIfsA'),
(38, 'items', 1, 1, 'CMC', 'CMC\nCoupe du monde\nhttps://static.wikia.nocookie.net/the-football-database/images/7/7f/FIFA_Club_World_Cup.jpeg/revision/latest/scale-to-width-down/340?cb=20150226172258'),
(39, 'items', 1, 1, 'CF', 'CF\nAmical\nhttps://www.gf38.fr/wp-content/themes/HookipaTemplateGrenoble-child/assets/img/cdf.png'),
(40, 'item_sets', 1, 1, 'Joueurs', 'Joueurs'),
(41, 'item_sets', 1, 1, 'Competitions', 'Competitions'),
(42, 'item_sets', 1, 1, 'Equipes', 'Equipes'),
(43, 'item_sets', 1, 1, 'Matchs', 'Matchs'),
(44, 'item_sets', 1, 1, 'Arbitres', 'Arbitres'),
(45, 'item_sets', 1, 1, 'Stades', 'Stades');

-- --------------------------------------------------------

--
-- Structure de la table `item`
--

CREATE TABLE `item` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `item`
--

INSERT INTO `item` (`id`) VALUES
(1),
(2),
(3),
(4),
(5),
(7),
(8),
(9),
(10),
(11),
(12),
(13),
(14),
(15),
(16),
(17),
(18),
(19),
(21),
(22),
(23),
(24),
(25),
(26),
(27),
(28),
(29),
(30),
(31),
(32),
(33),
(34),
(35),
(36),
(37),
(38),
(39);

-- --------------------------------------------------------

--
-- Structure de la table `item_item_set`
--

CREATE TABLE `item_item_set` (
  `item_id` int(11) NOT NULL,
  `item_set_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `item_item_set`
--

INSERT INTO `item_item_set` (`item_id`, `item_set_id`) VALUES
(1, 43),
(2, 43),
(3, 43),
(4, 43),
(5, 43),
(7, 43),
(8, 40),
(9, 40),
(10, 40),
(11, 40),
(12, 40),
(13, 40),
(14, 44),
(15, 44),
(16, 44),
(17, 44),
(18, 44),
(19, 44),
(21, 42),
(22, 42),
(23, 42),
(24, 42),
(25, 42),
(26, 42),
(27, 45),
(28, 45),
(29, 45),
(30, 45),
(31, 45),
(33, 45),
(34, 41),
(35, 41),
(36, 41),
(37, 41),
(38, 41),
(39, 41);

-- --------------------------------------------------------

--
-- Structure de la table `item_set`
--

CREATE TABLE `item_set` (
  `id` int(11) NOT NULL,
  `is_open` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `item_set`
--

INSERT INTO `item_set` (`id`, `is_open`) VALUES
(40, 0),
(41, 0),
(42, 0),
(43, 0),
(44, 0),
(45, 0);

-- --------------------------------------------------------

--
-- Structure de la table `item_site`
--

CREATE TABLE `item_site` (
  `item_id` int(11) NOT NULL,
  `site_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `job`
--

CREATE TABLE `job` (
  `id` int(11) NOT NULL,
  `owner_id` int(11) DEFAULT NULL,
  `pid` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `class` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `args` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '(DC2Type:json_array)',
  `log` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `started` datetime NOT NULL,
  `ended` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `job`
--

INSERT INTO `job` (`id`, `owner_id`, `pid`, `status`, `class`, `args`, `log`, `started`, `ended`) VALUES
(1, 1, NULL, 'error', 'Omeka\\Job\\UpdateSiteItems', '{\"sites\":{\"1\":{\"fulltext_search\":\"\",\"property\":[{\"joiner\":\"and\",\"property\":\"\",\"type\":\"eq\",\"text\":\"\"}],\"resource_class_id\":[\"107\"],\"resource_template_id\":[\"4\"],\"item_set_id\":[\"\"],\"owner_id\":\"1\"}},\"action\":\"add\"}', '2020-11-15T23:17:17+00:00 ERR (3): Command \"command -v \"php\"\" failed with status code 1.\r\n2020-11-15T23:17:17+00:00 ERR (3): Omeka\\Job\\Exception\\RuntimeException: PHP-CLI error: cannot determine path to PHP. in C:\\xampp\\htdocs\\omeka\\application\\src\\Job\\DispatchStrategy\\PhpCli.php:62\nStack trace:\n#0 C:\\xampp\\htdocs\\omeka\\application\\src\\Job\\Dispatcher.php(105): Omeka\\Job\\DispatchStrategy\\PhpCli->send(Object(Omeka\\Entity\\Job))\n#1 C:\\xampp\\htdocs\\omeka\\application\\src\\Job\\Dispatcher.php(91): Omeka\\Job\\Dispatcher->send(Object(Omeka\\Entity\\Job), Object(Omeka\\Job\\DispatchStrategy\\PhpCli))\n#2 C:\\xampp\\htdocs\\omeka\\application\\src\\Controller\\SiteAdmin\\IndexController.php(254): Omeka\\Job\\Dispatcher->dispatch(\'Omeka\\\\Job\\\\Updat...\', Array)\n#3 C:\\xampp\\htdocs\\omeka\\vendor\\laminas\\laminas-mvc\\src\\Controller\\AbstractActionController.php(77): Omeka\\Controller\\SiteAdmin\\IndexController->resourcesAction()\n#4 C:\\xampp\\htdocs\\omeka\\vendor\\laminas\\laminas-eventmanager\\src\\EventManager.php(321): Laminas\\Mvc\\Controller\\AbstractActionController->onDispatch(Object(Laminas\\Mvc\\MvcEvent))\n#5 C:\\xampp\\htdocs\\omeka\\vendor\\laminas\\laminas-eventmanager\\src\\EventManager.php(178): Laminas\\EventManager\\EventManager->triggerListeners(Object(Laminas\\Mvc\\MvcEvent), Object(Closure))\n#6 C:\\xampp\\htdocs\\omeka\\vendor\\laminas\\laminas-mvc\\src\\Controller\\AbstractController.php(103): Laminas\\EventManager\\EventManager->triggerEventUntil(Object(Closure), Object(Laminas\\Mvc\\MvcEvent))\n#7 C:\\xampp\\htdocs\\omeka\\vendor\\laminas\\laminas-mvc\\src\\DispatchListener.php(139): Laminas\\Mvc\\Controller\\AbstractController->dispatch(Object(Laminas\\Http\\PhpEnvironment\\Request), Object(Laminas\\Http\\PhpEnvironment\\Response))\n#8 C:\\xampp\\htdocs\\omeka\\vendor\\laminas\\laminas-eventmanager\\src\\EventManager.php(321): Laminas\\Mvc\\DispatchListener->onDispatch(Object(Laminas\\Mvc\\MvcEvent))\n#9 C:\\xampp\\htdocs\\omeka\\vendor\\laminas\\laminas-eventmanager\\src\\EventManager.php(178): Laminas\\EventManager\\EventManager->triggerListeners(Object(Laminas\\Mvc\\MvcEvent), Object(Closure))\n#10 C:\\xampp\\htdocs\\omeka\\vendor\\laminas\\laminas-mvc\\src\\Application.php(331): Laminas\\EventManager\\EventManager->triggerEventUntil(Object(Closure), Object(Laminas\\Mvc\\MvcEvent))\n#11 C:\\xampp\\htdocs\\omeka\\index.php(21): Laminas\\Mvc\\Application->run()\n#12 {main}\r\n', '2020-11-15 23:17:17', '2020-11-15 23:17:17'),
(2, 1, NULL, 'error', 'Omeka\\Job\\BatchUpdate', '{\"resource\":\"items\",\"query\":{\"fulltext_search\":\"\",\"property\":[{\"joiner\":\"and\",\"property\":\"\",\"type\":\"eq\",\"text\":\"\"}],\"resource_class_id\":[\"111\"],\"resource_template_id\":[\"\"],\"item_set_id\":[\"\"],\"site_id\":\"\",\"owner_id\":\"\"},\"data\":[],\"data_remove\":{\"set_value_visibility\":\"\"},\"data_append\":{\"o:item_set\":[\"41\"]}}', '2020-11-22T16:26:09+00:00 ERR (3): Command \"command -v \"php\"\" failed with status code 1.\r\n2020-11-22T16:26:09+00:00 ERR (3): Omeka\\Job\\Exception\\RuntimeException: PHP-CLI error: cannot determine path to PHP. in C:\\xampp\\htdocs\\omeka\\application\\src\\Job\\DispatchStrategy\\PhpCli.php:62\nStack trace:\n#0 C:\\xampp\\htdocs\\omeka\\application\\src\\Job\\Dispatcher.php(105): Omeka\\Job\\DispatchStrategy\\PhpCli->send(Object(Omeka\\Entity\\Job))\n#1 C:\\xampp\\htdocs\\omeka\\application\\src\\Job\\Dispatcher.php(91): Omeka\\Job\\Dispatcher->send(Object(Omeka\\Entity\\Job), Object(Omeka\\Job\\DispatchStrategy\\PhpCli))\n#2 C:\\xampp\\htdocs\\omeka\\application\\src\\Controller\\Admin\\ItemController.php(339): Omeka\\Job\\Dispatcher->dispatch(\'Omeka\\\\Job\\\\Batch...\', Array)\n#3 C:\\xampp\\htdocs\\omeka\\vendor\\laminas\\laminas-mvc\\src\\Controller\\AbstractActionController.php(77): Omeka\\Controller\\Admin\\ItemController->batchEditAllAction()\n#4 C:\\xampp\\htdocs\\omeka\\vendor\\laminas\\laminas-eventmanager\\src\\EventManager.php(321): Laminas\\Mvc\\Controller\\AbstractActionController->onDispatch(Object(Laminas\\Mvc\\MvcEvent))\n#5 C:\\xampp\\htdocs\\omeka\\vendor\\laminas\\laminas-eventmanager\\src\\EventManager.php(178): Laminas\\EventManager\\EventManager->triggerListeners(Object(Laminas\\Mvc\\MvcEvent), Object(Closure))\n#6 C:\\xampp\\htdocs\\omeka\\vendor\\laminas\\laminas-mvc\\src\\Controller\\AbstractController.php(103): Laminas\\EventManager\\EventManager->triggerEventUntil(Object(Closure), Object(Laminas\\Mvc\\MvcEvent))\n#7 C:\\xampp\\htdocs\\omeka\\vendor\\laminas\\laminas-mvc\\src\\DispatchListener.php(139): Laminas\\Mvc\\Controller\\AbstractController->dispatch(Object(Laminas\\Http\\PhpEnvironment\\Request), Object(Laminas\\Http\\PhpEnvironment\\Response))\n#8 C:\\xampp\\htdocs\\omeka\\vendor\\laminas\\laminas-eventmanager\\src\\EventManager.php(321): Laminas\\Mvc\\DispatchListener->onDispatch(Object(Laminas\\Mvc\\MvcEvent))\n#9 C:\\xampp\\htdocs\\omeka\\vendor\\laminas\\laminas-eventmanager\\src\\EventManager.php(178): Laminas\\EventManager\\EventManager->triggerListeners(Object(Laminas\\Mvc\\MvcEvent), Object(Closure))\n#10 C:\\xampp\\htdocs\\omeka\\vendor\\laminas\\laminas-mvc\\src\\Application.php(331): Laminas\\EventManager\\EventManager->triggerEventUntil(Object(Closure), Object(Laminas\\Mvc\\MvcEvent))\n#11 C:\\xampp\\htdocs\\omeka\\index.php(21): Laminas\\Mvc\\Application->run()\n#12 {main}\r\n', '2020-11-22 16:26:08', '2020-11-22 16:26:09'),
(3, 1, NULL, 'error', 'Omeka\\Job\\BatchUpdate', '{\"resource\":\"items\",\"query\":{\"fulltext_search\":\"\",\"property\":[{\"joiner\":\"and\",\"property\":\"\",\"type\":\"eq\",\"text\":\"\"}],\"resource_class_id\":[\"110\"],\"resource_template_id\":[\"\"],\"item_set_id\":[\"\"],\"site_id\":\"\",\"owner_id\":\"\"},\"data\":[],\"data_remove\":{\"set_value_visibility\":\"\"},\"data_append\":{\"o:item_set\":[\"45\"]}}', '2020-11-22T16:28:50+00:00 ERR (3): Command \"command -v \"php\"\" failed with status code 1.\r\n2020-11-22T16:28:50+00:00 ERR (3): Omeka\\Job\\Exception\\RuntimeException: PHP-CLI error: cannot determine path to PHP. in C:\\xampp\\htdocs\\omeka\\application\\src\\Job\\DispatchStrategy\\PhpCli.php:62\nStack trace:\n#0 C:\\xampp\\htdocs\\omeka\\application\\src\\Job\\Dispatcher.php(105): Omeka\\Job\\DispatchStrategy\\PhpCli->send(Object(Omeka\\Entity\\Job))\n#1 C:\\xampp\\htdocs\\omeka\\application\\src\\Job\\Dispatcher.php(91): Omeka\\Job\\Dispatcher->send(Object(Omeka\\Entity\\Job), Object(Omeka\\Job\\DispatchStrategy\\PhpCli))\n#2 C:\\xampp\\htdocs\\omeka\\application\\src\\Controller\\Admin\\ItemController.php(339): Omeka\\Job\\Dispatcher->dispatch(\'Omeka\\\\Job\\\\Batch...\', Array)\n#3 C:\\xampp\\htdocs\\omeka\\vendor\\laminas\\laminas-mvc\\src\\Controller\\AbstractActionController.php(77): Omeka\\Controller\\Admin\\ItemController->batchEditAllAction()\n#4 C:\\xampp\\htdocs\\omeka\\vendor\\laminas\\laminas-eventmanager\\src\\EventManager.php(321): Laminas\\Mvc\\Controller\\AbstractActionController->onDispatch(Object(Laminas\\Mvc\\MvcEvent))\n#5 C:\\xampp\\htdocs\\omeka\\vendor\\laminas\\laminas-eventmanager\\src\\EventManager.php(178): Laminas\\EventManager\\EventManager->triggerListeners(Object(Laminas\\Mvc\\MvcEvent), Object(Closure))\n#6 C:\\xampp\\htdocs\\omeka\\vendor\\laminas\\laminas-mvc\\src\\Controller\\AbstractController.php(103): Laminas\\EventManager\\EventManager->triggerEventUntil(Object(Closure), Object(Laminas\\Mvc\\MvcEvent))\n#7 C:\\xampp\\htdocs\\omeka\\vendor\\laminas\\laminas-mvc\\src\\DispatchListener.php(139): Laminas\\Mvc\\Controller\\AbstractController->dispatch(Object(Laminas\\Http\\PhpEnvironment\\Request), Object(Laminas\\Http\\PhpEnvironment\\Response))\n#8 C:\\xampp\\htdocs\\omeka\\vendor\\laminas\\laminas-eventmanager\\src\\EventManager.php(321): Laminas\\Mvc\\DispatchListener->onDispatch(Object(Laminas\\Mvc\\MvcEvent))\n#9 C:\\xampp\\htdocs\\omeka\\vendor\\laminas\\laminas-eventmanager\\src\\EventManager.php(178): Laminas\\EventManager\\EventManager->triggerListeners(Object(Laminas\\Mvc\\MvcEvent), Object(Closure))\n#10 C:\\xampp\\htdocs\\omeka\\vendor\\laminas\\laminas-mvc\\src\\Application.php(331): Laminas\\EventManager\\EventManager->triggerEventUntil(Object(Closure), Object(Laminas\\Mvc\\MvcEvent))\n#11 C:\\xampp\\htdocs\\omeka\\index.php(21): Laminas\\Mvc\\Application->run()\n#12 {main}\r\n', '2020-11-22 16:28:50', '2020-11-22 16:28:50'),
(4, 1, NULL, 'error', 'Omeka\\Job\\BatchUpdate', '{\"resource\":\"items\",\"query\":{\"fulltext_search\":\"\",\"property\":[{\"joiner\":\"and\",\"property\":\"\",\"type\":\"eq\",\"text\":\"\"}],\"resource_class_id\":[\"109\"],\"resource_template_id\":[\"\"],\"item_set_id\":[\"\"],\"site_id\":\"\",\"owner_id\":\"\"},\"data\":[],\"data_remove\":{\"set_value_visibility\":\"\"},\"data_append\":{\"o:item_set\":[\"42\"]}}', '2020-11-22T16:29:52+00:00 ERR (3): Command \"command -v \"php\"\" failed with status code 1.\r\n2020-11-22T16:29:52+00:00 ERR (3): Omeka\\Job\\Exception\\RuntimeException: PHP-CLI error: cannot determine path to PHP. in C:\\xampp\\htdocs\\omeka\\application\\src\\Job\\DispatchStrategy\\PhpCli.php:62\nStack trace:\n#0 C:\\xampp\\htdocs\\omeka\\application\\src\\Job\\Dispatcher.php(105): Omeka\\Job\\DispatchStrategy\\PhpCli->send(Object(Omeka\\Entity\\Job))\n#1 C:\\xampp\\htdocs\\omeka\\application\\src\\Job\\Dispatcher.php(91): Omeka\\Job\\Dispatcher->send(Object(Omeka\\Entity\\Job), Object(Omeka\\Job\\DispatchStrategy\\PhpCli))\n#2 C:\\xampp\\htdocs\\omeka\\application\\src\\Controller\\Admin\\ItemController.php(339): Omeka\\Job\\Dispatcher->dispatch(\'Omeka\\\\Job\\\\Batch...\', Array)\n#3 C:\\xampp\\htdocs\\omeka\\vendor\\laminas\\laminas-mvc\\src\\Controller\\AbstractActionController.php(77): Omeka\\Controller\\Admin\\ItemController->batchEditAllAction()\n#4 C:\\xampp\\htdocs\\omeka\\vendor\\laminas\\laminas-eventmanager\\src\\EventManager.php(321): Laminas\\Mvc\\Controller\\AbstractActionController->onDispatch(Object(Laminas\\Mvc\\MvcEvent))\n#5 C:\\xampp\\htdocs\\omeka\\vendor\\laminas\\laminas-eventmanager\\src\\EventManager.php(178): Laminas\\EventManager\\EventManager->triggerListeners(Object(Laminas\\Mvc\\MvcEvent), Object(Closure))\n#6 C:\\xampp\\htdocs\\omeka\\vendor\\laminas\\laminas-mvc\\src\\Controller\\AbstractController.php(103): Laminas\\EventManager\\EventManager->triggerEventUntil(Object(Closure), Object(Laminas\\Mvc\\MvcEvent))\n#7 C:\\xampp\\htdocs\\omeka\\vendor\\laminas\\laminas-mvc\\src\\DispatchListener.php(139): Laminas\\Mvc\\Controller\\AbstractController->dispatch(Object(Laminas\\Http\\PhpEnvironment\\Request), Object(Laminas\\Http\\PhpEnvironment\\Response))\n#8 C:\\xampp\\htdocs\\omeka\\vendor\\laminas\\laminas-eventmanager\\src\\EventManager.php(321): Laminas\\Mvc\\DispatchListener->onDispatch(Object(Laminas\\Mvc\\MvcEvent))\n#9 C:\\xampp\\htdocs\\omeka\\vendor\\laminas\\laminas-eventmanager\\src\\EventManager.php(178): Laminas\\EventManager\\EventManager->triggerListeners(Object(Laminas\\Mvc\\MvcEvent), Object(Closure))\n#10 C:\\xampp\\htdocs\\omeka\\vendor\\laminas\\laminas-mvc\\src\\Application.php(331): Laminas\\EventManager\\EventManager->triggerEventUntil(Object(Closure), Object(Laminas\\Mvc\\MvcEvent))\n#11 C:\\xampp\\htdocs\\omeka\\index.php(21): Laminas\\Mvc\\Application->run()\n#12 {main}\r\n', '2020-11-22 16:29:52', '2020-11-22 16:29:52'),
(5, 1, NULL, 'error', 'Omeka\\Job\\BatchUpdate', '{\"resource\":\"items\",\"query\":{\"fulltext_search\":\"\",\"property\":[{\"joiner\":\"and\",\"property\":\"\",\"type\":\"eq\",\"text\":\"\"}],\"resource_class_id\":[\"106\"],\"resource_template_id\":[\"\"],\"item_set_id\":[\"\"],\"site_id\":\"\",\"owner_id\":\"\"},\"data\":[],\"data_remove\":{\"set_value_visibility\":\"\"},\"data_append\":{\"o:item_set\":[\"43\"]}}', '2020-11-22T16:30:30+00:00 ERR (3): Command \"command -v \"php\"\" failed with status code 1.\r\n2020-11-22T16:30:30+00:00 ERR (3): Omeka\\Job\\Exception\\RuntimeException: PHP-CLI error: cannot determine path to PHP. in C:\\xampp\\htdocs\\omeka\\application\\src\\Job\\DispatchStrategy\\PhpCli.php:62\nStack trace:\n#0 C:\\xampp\\htdocs\\omeka\\application\\src\\Job\\Dispatcher.php(105): Omeka\\Job\\DispatchStrategy\\PhpCli->send(Object(Omeka\\Entity\\Job))\n#1 C:\\xampp\\htdocs\\omeka\\application\\src\\Job\\Dispatcher.php(91): Omeka\\Job\\Dispatcher->send(Object(Omeka\\Entity\\Job), Object(Omeka\\Job\\DispatchStrategy\\PhpCli))\n#2 C:\\xampp\\htdocs\\omeka\\application\\src\\Controller\\Admin\\ItemController.php(339): Omeka\\Job\\Dispatcher->dispatch(\'Omeka\\\\Job\\\\Batch...\', Array)\n#3 C:\\xampp\\htdocs\\omeka\\vendor\\laminas\\laminas-mvc\\src\\Controller\\AbstractActionController.php(77): Omeka\\Controller\\Admin\\ItemController->batchEditAllAction()\n#4 C:\\xampp\\htdocs\\omeka\\vendor\\laminas\\laminas-eventmanager\\src\\EventManager.php(321): Laminas\\Mvc\\Controller\\AbstractActionController->onDispatch(Object(Laminas\\Mvc\\MvcEvent))\n#5 C:\\xampp\\htdocs\\omeka\\vendor\\laminas\\laminas-eventmanager\\src\\EventManager.php(178): Laminas\\EventManager\\EventManager->triggerListeners(Object(Laminas\\Mvc\\MvcEvent), Object(Closure))\n#6 C:\\xampp\\htdocs\\omeka\\vendor\\laminas\\laminas-mvc\\src\\Controller\\AbstractController.php(103): Laminas\\EventManager\\EventManager->triggerEventUntil(Object(Closure), Object(Laminas\\Mvc\\MvcEvent))\n#7 C:\\xampp\\htdocs\\omeka\\vendor\\laminas\\laminas-mvc\\src\\DispatchListener.php(139): Laminas\\Mvc\\Controller\\AbstractController->dispatch(Object(Laminas\\Http\\PhpEnvironment\\Request), Object(Laminas\\Http\\PhpEnvironment\\Response))\n#8 C:\\xampp\\htdocs\\omeka\\vendor\\laminas\\laminas-eventmanager\\src\\EventManager.php(321): Laminas\\Mvc\\DispatchListener->onDispatch(Object(Laminas\\Mvc\\MvcEvent))\n#9 C:\\xampp\\htdocs\\omeka\\vendor\\laminas\\laminas-eventmanager\\src\\EventManager.php(178): Laminas\\EventManager\\EventManager->triggerListeners(Object(Laminas\\Mvc\\MvcEvent), Object(Closure))\n#10 C:\\xampp\\htdocs\\omeka\\vendor\\laminas\\laminas-mvc\\src\\Application.php(331): Laminas\\EventManager\\EventManager->triggerEventUntil(Object(Closure), Object(Laminas\\Mvc\\MvcEvent))\n#11 C:\\xampp\\htdocs\\omeka\\index.php(21): Laminas\\Mvc\\Application->run()\n#12 {main}\r\n', '2020-11-22 16:30:29', '2020-11-22 16:30:30'),
(6, 1, NULL, 'error', 'Omeka\\Job\\BatchUpdate', '{\"resource\":\"items\",\"query\":{\"fulltext_search\":\"\",\"property\":[{\"joiner\":\"and\",\"property\":\"\",\"type\":\"eq\",\"text\":\"\"}],\"resource_class_id\":[\"108\"],\"resource_template_id\":[\"\"],\"item_set_id\":[\"\"],\"site_id\":\"\",\"owner_id\":\"\"},\"data\":[],\"data_remove\":{\"set_value_visibility\":\"\"},\"data_append\":{\"o:item_set\":[\"44\"]}}', '2020-11-22T16:31:05+00:00 ERR (3): Command \"command -v \"php\"\" failed with status code 1.\r\n2020-11-22T16:31:05+00:00 ERR (3): Omeka\\Job\\Exception\\RuntimeException: PHP-CLI error: cannot determine path to PHP. in C:\\xampp\\htdocs\\omeka\\application\\src\\Job\\DispatchStrategy\\PhpCli.php:62\nStack trace:\n#0 C:\\xampp\\htdocs\\omeka\\application\\src\\Job\\Dispatcher.php(105): Omeka\\Job\\DispatchStrategy\\PhpCli->send(Object(Omeka\\Entity\\Job))\n#1 C:\\xampp\\htdocs\\omeka\\application\\src\\Job\\Dispatcher.php(91): Omeka\\Job\\Dispatcher->send(Object(Omeka\\Entity\\Job), Object(Omeka\\Job\\DispatchStrategy\\PhpCli))\n#2 C:\\xampp\\htdocs\\omeka\\application\\src\\Controller\\Admin\\ItemController.php(339): Omeka\\Job\\Dispatcher->dispatch(\'Omeka\\\\Job\\\\Batch...\', Array)\n#3 C:\\xampp\\htdocs\\omeka\\vendor\\laminas\\laminas-mvc\\src\\Controller\\AbstractActionController.php(77): Omeka\\Controller\\Admin\\ItemController->batchEditAllAction()\n#4 C:\\xampp\\htdocs\\omeka\\vendor\\laminas\\laminas-eventmanager\\src\\EventManager.php(321): Laminas\\Mvc\\Controller\\AbstractActionController->onDispatch(Object(Laminas\\Mvc\\MvcEvent))\n#5 C:\\xampp\\htdocs\\omeka\\vendor\\laminas\\laminas-eventmanager\\src\\EventManager.php(178): Laminas\\EventManager\\EventManager->triggerListeners(Object(Laminas\\Mvc\\MvcEvent), Object(Closure))\n#6 C:\\xampp\\htdocs\\omeka\\vendor\\laminas\\laminas-mvc\\src\\Controller\\AbstractController.php(103): Laminas\\EventManager\\EventManager->triggerEventUntil(Object(Closure), Object(Laminas\\Mvc\\MvcEvent))\n#7 C:\\xampp\\htdocs\\omeka\\vendor\\laminas\\laminas-mvc\\src\\DispatchListener.php(139): Laminas\\Mvc\\Controller\\AbstractController->dispatch(Object(Laminas\\Http\\PhpEnvironment\\Request), Object(Laminas\\Http\\PhpEnvironment\\Response))\n#8 C:\\xampp\\htdocs\\omeka\\vendor\\laminas\\laminas-eventmanager\\src\\EventManager.php(321): Laminas\\Mvc\\DispatchListener->onDispatch(Object(Laminas\\Mvc\\MvcEvent))\n#9 C:\\xampp\\htdocs\\omeka\\vendor\\laminas\\laminas-eventmanager\\src\\EventManager.php(178): Laminas\\EventManager\\EventManager->triggerListeners(Object(Laminas\\Mvc\\MvcEvent), Object(Closure))\n#10 C:\\xampp\\htdocs\\omeka\\vendor\\laminas\\laminas-mvc\\src\\Application.php(331): Laminas\\EventManager\\EventManager->triggerEventUntil(Object(Closure), Object(Laminas\\Mvc\\MvcEvent))\n#11 C:\\xampp\\htdocs\\omeka\\index.php(21): Laminas\\Mvc\\Application->run()\n#12 {main}\r\n', '2020-11-22 16:31:05', '2020-11-22 16:31:05'),
(7, 1, NULL, 'error', 'Omeka\\Job\\BatchUpdate', '{\"resource\":\"items\",\"query\":{\"fulltext_search\":\"\",\"property\":[{\"joiner\":\"and\",\"property\":\"\",\"type\":\"eq\",\"text\":\"\"}],\"resource_class_id\":[\"108\"],\"resource_template_id\":[\"\"],\"item_set_id\":[\"\"],\"site_id\":\"\",\"owner_id\":\"\"},\"data\":[],\"data_remove\":{\"set_value_visibility\":\"\"},\"data_append\":{\"o:item_set\":[\"44\"]}}', '2020-11-22T16:36:44+00:00 ERR (3): Command \"command -v \"php\"\" failed with status code 1.\r\n2020-11-22T16:36:44+00:00 ERR (3): Omeka\\Job\\Exception\\RuntimeException: PHP-CLI error: cannot determine path to PHP. in C:\\xampp\\htdocs\\omeka\\application\\src\\Job\\DispatchStrategy\\PhpCli.php:62\nStack trace:\n#0 C:\\xampp\\htdocs\\omeka\\application\\src\\Job\\Dispatcher.php(105): Omeka\\Job\\DispatchStrategy\\PhpCli->send(Object(Omeka\\Entity\\Job))\n#1 C:\\xampp\\htdocs\\omeka\\application\\src\\Job\\Dispatcher.php(91): Omeka\\Job\\Dispatcher->send(Object(Omeka\\Entity\\Job), Object(Omeka\\Job\\DispatchStrategy\\PhpCli))\n#2 C:\\xampp\\htdocs\\omeka\\application\\src\\Controller\\Admin\\ItemController.php(339): Omeka\\Job\\Dispatcher->dispatch(\'Omeka\\\\Job\\\\Batch...\', Array)\n#3 C:\\xampp\\htdocs\\omeka\\vendor\\laminas\\laminas-mvc\\src\\Controller\\AbstractActionController.php(77): Omeka\\Controller\\Admin\\ItemController->batchEditAllAction()\n#4 C:\\xampp\\htdocs\\omeka\\vendor\\laminas\\laminas-eventmanager\\src\\EventManager.php(321): Laminas\\Mvc\\Controller\\AbstractActionController->onDispatch(Object(Laminas\\Mvc\\MvcEvent))\n#5 C:\\xampp\\htdocs\\omeka\\vendor\\laminas\\laminas-eventmanager\\src\\EventManager.php(178): Laminas\\EventManager\\EventManager->triggerListeners(Object(Laminas\\Mvc\\MvcEvent), Object(Closure))\n#6 C:\\xampp\\htdocs\\omeka\\vendor\\laminas\\laminas-mvc\\src\\Controller\\AbstractController.php(103): Laminas\\EventManager\\EventManager->triggerEventUntil(Object(Closure), Object(Laminas\\Mvc\\MvcEvent))\n#7 C:\\xampp\\htdocs\\omeka\\vendor\\laminas\\laminas-mvc\\src\\DispatchListener.php(139): Laminas\\Mvc\\Controller\\AbstractController->dispatch(Object(Laminas\\Http\\PhpEnvironment\\Request), Object(Laminas\\Http\\PhpEnvironment\\Response))\n#8 C:\\xampp\\htdocs\\omeka\\vendor\\laminas\\laminas-eventmanager\\src\\EventManager.php(321): Laminas\\Mvc\\DispatchListener->onDispatch(Object(Laminas\\Mvc\\MvcEvent))\n#9 C:\\xampp\\htdocs\\omeka\\vendor\\laminas\\laminas-eventmanager\\src\\EventManager.php(178): Laminas\\EventManager\\EventManager->triggerListeners(Object(Laminas\\Mvc\\MvcEvent), Object(Closure))\n#10 C:\\xampp\\htdocs\\omeka\\vendor\\laminas\\laminas-mvc\\src\\Application.php(331): Laminas\\EventManager\\EventManager->triggerEventUntil(Object(Closure), Object(Laminas\\Mvc\\MvcEvent))\n#11 C:\\xampp\\htdocs\\omeka\\index.php(21): Laminas\\Mvc\\Application->run()\n#12 {main}\r\n', '2020-11-22 16:36:44', '2020-11-22 16:36:44');

-- --------------------------------------------------------

--
-- Structure de la table `media`
--

CREATE TABLE `media` (
  `id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `ingester` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `renderer` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `data` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '(DC2Type:json_array)',
  `source` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `media_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `storage_id` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `extension` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sha256` char(64) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `size` bigint(20) DEFAULT NULL,
  `has_original` tinyint(1) NOT NULL,
  `has_thumbnails` tinyint(1) NOT NULL,
  `position` int(11) DEFAULT NULL,
  `lang` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `migration`
--

CREATE TABLE `migration` (
  `version` varchar(16) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `migration`
--

INSERT INTO `migration` (`version`) VALUES
('20171128053327'),
('20180412035023'),
('20180919072656'),
('20180924033501'),
('20181002015551'),
('20181004043735'),
('20181106060421'),
('20190307043537'),
('20190319020708'),
('20190412090532'),
('20190423040354'),
('20190423071228'),
('20190514061351'),
('20190515055359'),
('20190729023728'),
('20190809092609'),
('20190815062003'),
('20200224022356'),
('20200226064602'),
('20200325091157'),
('20200326091310'),
('20200803000000'),
('20200831000000');

-- --------------------------------------------------------

--
-- Structure de la table `module`
--

CREATE TABLE `module` (
  `id` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `version` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `password_creation`
--

CREATE TABLE `password_creation` (
  `id` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `user_id` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `activate` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `property`
--

CREATE TABLE `property` (
  `id` int(11) NOT NULL,
  `owner_id` int(11) DEFAULT NULL,
  `vocabulary_id` int(11) NOT NULL,
  `local_name` varchar(190) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `label` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `property`
--

INSERT INTO `property` (`id`, `owner_id`, `vocabulary_id`, `local_name`, `label`, `comment`) VALUES
(1, NULL, 1, 'title', 'Title', 'A name given to the resource.'),
(2, NULL, 1, 'creator', 'Creator', 'An entity primarily responsible for making the resource.'),
(3, NULL, 1, 'subject', 'Subject', 'The topic of the resource.'),
(4, NULL, 1, 'description', 'Description', 'An account of the resource.'),
(5, NULL, 1, 'publisher', 'Publisher', 'An entity responsible for making the resource available.'),
(6, NULL, 1, 'contributor', 'Contributor', 'An entity responsible for making contributions to the resource.'),
(7, NULL, 1, 'date', 'Date', 'A point or period of time associated with an event in the lifecycle of the resource.'),
(8, NULL, 1, 'type', 'Type', 'The nature or genre of the resource.'),
(9, NULL, 1, 'format', 'Format', 'The file format, physical medium, or dimensions of the resource.'),
(10, NULL, 1, 'identifier', 'Identifier', 'An unambiguous reference to the resource within a given context.'),
(11, NULL, 1, 'source', 'Source', 'A related resource from which the described resource is derived.'),
(12, NULL, 1, 'language', 'Language', 'A language of the resource.'),
(13, NULL, 1, 'relation', 'Relation', 'A related resource.'),
(14, NULL, 1, 'coverage', 'Coverage', 'The spatial or temporal topic of the resource, the spatial applicability of the resource, or the jurisdiction under which the resource is relevant.'),
(15, NULL, 1, 'rights', 'Rights', 'Information about rights held in and over the resource.'),
(16, NULL, 1, 'audience', 'Audience', 'A class of entity for whom the resource is intended or useful.'),
(17, NULL, 1, 'alternative', 'Alternative Title', 'An alternative name for the resource.'),
(18, NULL, 1, 'tableOfContents', 'Table Of Contents', 'A list of subunits of the resource.'),
(19, NULL, 1, 'abstract', 'Abstract', 'A summary of the resource.'),
(20, NULL, 1, 'created', 'Date Created', 'Date of creation of the resource.'),
(21, NULL, 1, 'valid', 'Date Valid', 'Date (often a range) of validity of a resource.'),
(22, NULL, 1, 'available', 'Date Available', 'Date (often a range) that the resource became or will become available.'),
(23, NULL, 1, 'issued', 'Date Issued', 'Date of formal issuance (e.g., publication) of the resource.'),
(24, NULL, 1, 'modified', 'Date Modified', 'Date on which the resource was changed.'),
(25, NULL, 1, 'extent', 'Extent', 'The size or duration of the resource.'),
(26, NULL, 1, 'medium', 'Medium', 'The material or physical carrier of the resource.'),
(27, NULL, 1, 'isVersionOf', 'Is Version Of', 'A related resource of which the described resource is a version, edition, or adaptation.'),
(28, NULL, 1, 'hasVersion', 'Has Version', 'A related resource that is a version, edition, or adaptation of the described resource.'),
(29, NULL, 1, 'isReplacedBy', 'Is Replaced By', 'A related resource that supplants, displaces, or supersedes the described resource.'),
(30, NULL, 1, 'replaces', 'Replaces', 'A related resource that is supplanted, displaced, or superseded by the described resource.'),
(31, NULL, 1, 'isRequiredBy', 'Is Required By', 'A related resource that requires the described resource to support its function, delivery, or coherence.'),
(32, NULL, 1, 'requires', 'Requires', 'A related resource that is required by the described resource to support its function, delivery, or coherence.'),
(33, NULL, 1, 'isPartOf', 'Is Part Of', 'A related resource in which the described resource is physically or logically included.'),
(34, NULL, 1, 'hasPart', 'Has Part', 'A related resource that is included either physically or logically in the described resource.'),
(35, NULL, 1, 'isReferencedBy', 'Is Referenced By', 'A related resource that references, cites, or otherwise points to the described resource.'),
(36, NULL, 1, 'references', 'References', 'A related resource that is referenced, cited, or otherwise pointed to by the described resource.'),
(37, NULL, 1, 'isFormatOf', 'Is Format Of', 'A related resource that is substantially the same as the described resource, but in another format.'),
(38, NULL, 1, 'hasFormat', 'Has Format', 'A related resource that is substantially the same as the pre-existing described resource, but in another format.'),
(39, NULL, 1, 'conformsTo', 'Conforms To', 'An established standard to which the described resource conforms.'),
(40, NULL, 1, 'spatial', 'Spatial Coverage', 'Spatial characteristics of the resource.'),
(41, NULL, 1, 'temporal', 'Temporal Coverage', 'Temporal characteristics of the resource.'),
(42, NULL, 1, 'mediator', 'Mediator', 'An entity that mediates access to the resource and for whom the resource is intended or useful.'),
(43, NULL, 1, 'dateAccepted', 'Date Accepted', 'Date of acceptance of the resource.'),
(44, NULL, 1, 'dateCopyrighted', 'Date Copyrighted', 'Date of copyright.'),
(45, NULL, 1, 'dateSubmitted', 'Date Submitted', 'Date of submission of the resource.'),
(46, NULL, 1, 'educationLevel', 'Audience Education Level', 'A class of entity, defined in terms of progression through an educational or training context, for which the described resource is intended.'),
(47, NULL, 1, 'accessRights', 'Access Rights', 'Information about who can access the resource or an indication of its security status.'),
(48, NULL, 1, 'bibliographicCitation', 'Bibliographic Citation', 'A bibliographic reference for the resource.'),
(49, NULL, 1, 'license', 'License', 'A legal document giving official permission to do something with the resource.'),
(50, NULL, 1, 'rightsHolder', 'Rights Holder', 'A person or organization owning or managing rights over the resource.'),
(51, NULL, 1, 'provenance', 'Provenance', 'A statement of any changes in ownership and custody of the resource since its creation that are significant for its authenticity, integrity, and interpretation.'),
(52, NULL, 1, 'instructionalMethod', 'Instructional Method', 'A process, used to engender knowledge, attitudes and skills, that the described resource is designed to support.'),
(53, NULL, 1, 'accrualMethod', 'Accrual Method', 'The method by which items are added to a collection.'),
(54, NULL, 1, 'accrualPeriodicity', 'Accrual Periodicity', 'The frequency with which items are added to a collection.'),
(55, NULL, 1, 'accrualPolicy', 'Accrual Policy', 'The policy governing the addition of items to a collection.'),
(56, NULL, 3, 'affirmedBy', 'affirmedBy', 'A legal decision that affirms a ruling.'),
(57, NULL, 3, 'annotates', 'annotates', 'Critical or explanatory note for a Document.'),
(58, NULL, 3, 'authorList', 'list of authors', 'An ordered list of authors. Normally, this list is seen as a priority list that order authors by importance.'),
(59, NULL, 3, 'citedBy', 'cited by', 'Relates a document to another document that cites the\nfirst document.'),
(60, NULL, 3, 'cites', 'cites', 'Relates a document to another document that is cited\nby the first document as reference, comment, review, quotation or for\nanother purpose.'),
(61, NULL, 3, 'contributorList', 'list of contributors', 'An ordered list of contributors. Normally, this list is seen as a priority list that order contributors by importance.'),
(62, NULL, 3, 'court', 'court', 'A court associated with a legal document; for example, that which issues a decision.'),
(63, NULL, 3, 'degree', 'degree', 'The thesis degree.'),
(64, NULL, 3, 'director', 'director', 'A Film director.'),
(65, NULL, 3, 'distributor', 'distributor', 'Distributor of a document or a collection of documents.'),
(66, NULL, 3, 'editor', 'editor', 'A person having managerial and sometimes policy-making responsibility for the editorial part of a publishing firm or of a newspaper, magazine, or other publication.'),
(67, NULL, 3, 'editorList', 'list of editors', 'An ordered list of editors. Normally, this list is seen as a priority list that order editors by importance.'),
(68, NULL, 3, 'interviewee', 'interviewee', 'An agent that is interviewed by another agent.'),
(69, NULL, 3, 'interviewer', 'interviewer', 'An agent that interview another agent.'),
(70, NULL, 3, 'issuer', 'issuer', 'An entity responsible for issuing often informally published documents such as press releases, reports, etc.'),
(71, NULL, 3, 'organizer', 'organizer', 'The organizer of an event; includes conference organizers, but also government agencies or other bodies that are responsible for conducting hearings.'),
(72, NULL, 3, 'owner', 'owner', 'Owner of a document or a collection of documents.'),
(73, NULL, 3, 'performer', 'performer', NULL),
(74, NULL, 3, 'presentedAt', 'presented at', 'Relates a document to an event; for example, a paper to a conference.'),
(75, NULL, 3, 'presents', 'presents', 'Relates an event to associated documents; for example, conference to a paper.'),
(76, NULL, 3, 'producer', 'producer', 'Producer of a document or a collection of documents.'),
(77, NULL, 3, 'recipient', 'recipient', 'An agent that receives a communication document.'),
(78, NULL, 3, 'reproducedIn', 'reproducedIn', 'The resource in which another resource is reproduced.'),
(79, NULL, 3, 'reversedBy', 'reversedBy', 'A legal decision that reverses a ruling.'),
(80, NULL, 3, 'reviewOf', 'review of', 'Relates a review document to a reviewed thing (resource, item, etc.).'),
(81, NULL, 3, 'status', 'status', 'The publication status of (typically academic) content.'),
(82, NULL, 3, 'subsequentLegalDecision', 'subsequentLegalDecision', 'A legal decision on appeal that takes action on a case (affirming it, reversing it, etc.).'),
(83, NULL, 3, 'transcriptOf', 'transcript of', 'Relates a document to some transcribed original.'),
(84, NULL, 3, 'translationOf', 'translation of', 'Relates a translated document to the original document.'),
(85, NULL, 3, 'translator', 'translator', 'A person who translates written document from one language to another.'),
(86, NULL, 3, 'abstract', 'abstract', 'A summary of the resource.'),
(87, NULL, 3, 'argued', 'date argued', 'The date on which a legal case is argued before a court. Date is of format xsd:date'),
(88, NULL, 3, 'asin', 'asin', NULL),
(89, NULL, 3, 'chapter', 'chapter', 'An chapter number'),
(90, NULL, 3, 'coden', 'coden', NULL),
(91, NULL, 3, 'content', 'content', 'This property is for a plain-text rendering of the content of a Document. While the plain-text content of an entire document could be described by this property.'),
(92, NULL, 3, 'doi', 'doi', NULL),
(93, NULL, 3, 'eanucc13', 'eanucc13', NULL),
(94, NULL, 3, 'edition', 'edition', 'The name defining a special edition of a document. Normally its a literal value composed of a version number and words.'),
(95, NULL, 3, 'eissn', 'eissn', NULL),
(96, NULL, 3, 'gtin14', 'gtin14', NULL),
(97, NULL, 3, 'handle', 'handle', NULL),
(98, NULL, 3, 'identifier', 'identifier', NULL),
(99, NULL, 3, 'isbn', 'isbn', NULL),
(100, NULL, 3, 'isbn10', 'isbn10', NULL),
(101, NULL, 3, 'isbn13', 'isbn13', NULL),
(102, NULL, 3, 'issn', 'issn', NULL),
(103, NULL, 3, 'issue', 'issue', 'An issue number'),
(104, NULL, 3, 'lccn', 'lccn', NULL),
(105, NULL, 3, 'locator', 'locator', 'A description (often numeric) that locates an item within a containing document or collection.'),
(106, NULL, 3, 'numPages', 'number of pages', 'The number of pages contained in a document'),
(107, NULL, 3, 'numVolumes', 'number of volumes', 'The number of volumes contained in a collection of documents (usually a series, periodical, etc.).'),
(108, NULL, 3, 'number', 'number', 'A generic item or document number. Not to be confused with issue number.'),
(109, NULL, 3, 'oclcnum', 'oclcnum', NULL),
(110, NULL, 3, 'pageEnd', 'page end', 'Ending page number within a continuous page range.'),
(111, NULL, 3, 'pageStart', 'page start', 'Starting page number within a continuous page range.'),
(112, NULL, 3, 'pages', 'pages', 'A string of non-contiguous page spans that locate a Document within a Collection. Example: 23-25, 34, 54-56. For continuous page ranges, use the pageStart and pageEnd properties.'),
(113, NULL, 3, 'pmid', 'pmid', NULL),
(114, NULL, 3, 'prefixName', 'prefix name', 'The prefix of a name'),
(115, NULL, 3, 'section', 'section', 'A section number'),
(116, NULL, 3, 'shortDescription', 'shortDescription', NULL),
(117, NULL, 3, 'shortTitle', 'short title', 'The abbreviation of a title.'),
(118, NULL, 3, 'sici', 'sici', NULL),
(119, NULL, 3, 'suffixName', 'suffix name', 'The suffix of a name'),
(120, NULL, 3, 'upc', 'upc', NULL),
(121, NULL, 3, 'uri', 'uri', 'Universal Resource Identifier of a document'),
(122, NULL, 3, 'volume', 'volume', 'A volume number'),
(123, NULL, 4, 'mbox', 'personal mailbox', 'A  personal mailbox, ie. an Internet mailbox associated with exactly one owner, the first owner of this mailbox. This is a \'static inverse functional property\', in that  there is (across time and change) at most one individual that ever has any particular value for foaf:mbox.'),
(124, NULL, 4, 'mbox_sha1sum', 'sha1sum of a personal mailbox URI name', 'The sha1sum of the URI of an Internet mailbox associated with exactly one owner, the  first owner of the mailbox.'),
(125, NULL, 4, 'gender', 'gender', 'The gender of this Agent (typically but not necessarily \'male\' or \'female\').'),
(126, NULL, 4, 'geekcode', 'geekcode', 'A textual geekcode for this person, see http://www.geekcode.com/geek.html'),
(127, NULL, 4, 'dnaChecksum', 'DNA checksum', 'A checksum for the DNA of some thing. Joke.'),
(128, NULL, 4, 'sha1', 'sha1sum (hex)', 'A sha1sum hash, in hex.'),
(129, NULL, 4, 'based_near', 'based near', 'A location that something is based near, for some broadly human notion of near.'),
(130, NULL, 4, 'title', 'title', 'Title (Mr, Mrs, Ms, Dr. etc)'),
(131, NULL, 4, 'nick', 'nickname', 'A short informal nickname characterising an agent (includes login identifiers, IRC and other chat nicknames).'),
(132, NULL, 4, 'jabberID', 'jabber ID', 'A jabber ID for something.'),
(133, NULL, 4, 'aimChatID', 'AIM chat ID', 'An AIM chat ID'),
(134, NULL, 4, 'skypeID', 'Skype ID', 'A Skype ID'),
(135, NULL, 4, 'icqChatID', 'ICQ chat ID', 'An ICQ chat ID'),
(136, NULL, 4, 'yahooChatID', 'Yahoo chat ID', 'A Yahoo chat ID'),
(137, NULL, 4, 'msnChatID', 'MSN chat ID', 'An MSN chat ID'),
(138, NULL, 4, 'name', 'name', 'A name for some thing.'),
(139, NULL, 4, 'firstName', 'firstName', 'The first name of a person.'),
(140, NULL, 4, 'lastName', 'lastName', 'The last name of a person.'),
(141, NULL, 4, 'givenName', 'Given name', 'The given name of some person.'),
(142, NULL, 4, 'givenname', 'Given name', 'The given name of some person.'),
(143, NULL, 4, 'surname', 'Surname', 'The surname of some person.'),
(144, NULL, 4, 'family_name', 'family_name', 'The family name of some person.'),
(145, NULL, 4, 'familyName', 'familyName', 'The family name of some person.'),
(146, NULL, 4, 'phone', 'phone', 'A phone,  specified using fully qualified tel: URI scheme (refs: http://www.w3.org/Addressing/schemes.html#tel).'),
(147, NULL, 4, 'homepage', 'homepage', 'A homepage for some thing.'),
(148, NULL, 4, 'weblog', 'weblog', 'A weblog of some thing (whether person, group, company etc.).'),
(149, NULL, 4, 'openid', 'openid', 'An OpenID for an Agent.'),
(150, NULL, 4, 'tipjar', 'tipjar', 'A tipjar document for this agent, describing means for payment and reward.'),
(151, NULL, 4, 'plan', 'plan', 'A .plan comment, in the tradition of finger and \'.plan\' files.'),
(152, NULL, 4, 'made', 'made', 'Something that was made by this agent.'),
(153, NULL, 4, 'maker', 'maker', 'An agent that  made this thing.'),
(154, NULL, 4, 'img', 'image', 'An image that can be used to represent some thing (ie. those depictions which are particularly representative of something, eg. one\'s photo on a homepage).'),
(155, NULL, 4, 'depiction', 'depiction', 'A depiction of some thing.'),
(156, NULL, 4, 'depicts', 'depicts', 'A thing depicted in this representation.'),
(157, NULL, 4, 'thumbnail', 'thumbnail', 'A derived thumbnail image.'),
(158, NULL, 4, 'myersBriggs', 'myersBriggs', 'A Myers Briggs (MBTI) personality classification.'),
(159, NULL, 4, 'workplaceHomepage', 'workplace homepage', 'A workplace homepage of some person; the homepage of an organization they work for.'),
(160, NULL, 4, 'workInfoHomepage', 'work info homepage', 'A work info homepage of some person; a page about their work for some organization.'),
(161, NULL, 4, 'schoolHomepage', 'schoolHomepage', 'A homepage of a school attended by the person.'),
(162, NULL, 4, 'knows', 'knows', 'A person known by this person (indicating some level of reciprocated interaction between the parties).'),
(163, NULL, 4, 'interest', 'interest', 'A page about a topic of interest to this person.'),
(164, NULL, 4, 'topic_interest', 'topic_interest', 'A thing of interest to this person.'),
(165, NULL, 4, 'publications', 'publications', 'A link to the publications of this person.'),
(166, NULL, 4, 'currentProject', 'current project', 'A current project this person works on.'),
(167, NULL, 4, 'pastProject', 'past project', 'A project this person has previously worked on.'),
(168, NULL, 4, 'fundedBy', 'funded by', 'An organization funding a project or person.'),
(169, NULL, 4, 'logo', 'logo', 'A logo representing some thing.'),
(170, NULL, 4, 'topic', 'topic', 'A topic of some page or document.'),
(171, NULL, 4, 'primaryTopic', 'primary topic', 'The primary topic of some page or document.'),
(172, NULL, 4, 'focus', 'focus', 'The underlying or \'focal\' entity associated with some SKOS-described concept.'),
(173, NULL, 4, 'isPrimaryTopicOf', 'is primary topic of', 'A document that this thing is the primary topic of.'),
(174, NULL, 4, 'page', 'page', 'A page or document about this thing.'),
(175, NULL, 4, 'theme', 'theme', 'A theme.'),
(176, NULL, 4, 'account', 'account', 'Indicates an account held by this agent.'),
(177, NULL, 4, 'holdsAccount', 'account', 'Indicates an account held by this agent.'),
(178, NULL, 4, 'accountServiceHomepage', 'account service homepage', 'Indicates a homepage of the service provide for this online account.'),
(179, NULL, 4, 'accountName', 'account name', 'Indicates the name (identifier) associated with this online account.'),
(180, NULL, 4, 'member', 'member', 'Indicates a member of a Group'),
(181, NULL, 4, 'membershipClass', 'membershipClass', 'Indicates the class of individuals that are a member of a Group'),
(182, NULL, 4, 'birthday', 'birthday', 'The birthday of this Agent, represented in mm-dd string form, eg. \'12-31\'.'),
(183, NULL, 4, 'age', 'age', 'The age in years of some agent.'),
(184, NULL, 4, 'status', 'status', 'A string expressing what the user is happy for the general public (normally) to know about their current activity.'),
(185, 1, 11, 'participatingIn', 'neemt deel aan', NULL),
(186, 1, 12, 'leaguefootbaltaille', ' taille ', NULL),
(187, 1, 12, 'leaguefootbalniveau', ' niveau ', NULL),
(188, 1, 12, 'leaguefootbalage', 'age', NULL),
(189, 1, 12, 'leaguefootbalcouleur', 'couleur', NULL),
(190, 1, 12, 'leaguefootbalnationalité', 'nationalité', NULL),
(191, 1, 12, 'leaguefootbalnombrecompetition', 'nombre competition', NULL),
(192, 1, 12, 'leaguefootbalnombreequipe', 'nombre equipe', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `resource`
--

CREATE TABLE `resource` (
  `id` int(11) NOT NULL,
  `owner_id` int(11) DEFAULT NULL,
  `resource_class_id` int(11) DEFAULT NULL,
  `resource_template_id` int(11) DEFAULT NULL,
  `thumbnail_id` int(11) DEFAULT NULL,
  `title` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_public` tinyint(1) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime DEFAULT NULL,
  `resource_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `resource`
--

INSERT INTO `resource` (`id`, `owner_id`, `resource_class_id`, `resource_template_id`, `thumbnail_id`, `title`, `is_public`, `created`, `modified`, `resource_type`) VALUES
(1, 1, 106, 3, NULL, 'Coupe du monde', 1, '2020-11-13 23:54:59', '2020-11-29 18:02:47', 'Omeka\\Entity\\Item'),
(2, 1, 106, 3, NULL, 'Ligue des champions', 1, '2020-11-13 23:56:13', '2020-11-29 18:03:40', 'Omeka\\Entity\\Item'),
(3, 1, 106, 3, NULL, 'UEFA', 1, '2020-11-13 23:57:08', '2020-11-29 18:05:20', 'Omeka\\Entity\\Item'),
(4, 1, 106, 3, NULL, 'Championnat', 1, '2020-11-13 23:57:36', '2020-11-29 18:05:55', 'Omeka\\Entity\\Item'),
(5, 1, 106, 3, NULL, 'Coupe de la ligue', 1, '2020-11-13 23:58:24', '2020-11-29 18:07:15', 'Omeka\\Entity\\Item'),
(7, 1, 106, 3, NULL, 'Amical', 1, '2020-11-13 23:59:54', '2020-11-29 18:01:45', 'Omeka\\Entity\\Item'),
(8, 1, 107, 4, NULL, 'Neymar', 1, '2020-11-14 00:25:35', '2020-11-29 17:06:42', 'Omeka\\Entity\\Item'),
(9, 1, 107, 4, NULL, 'Mbappe', 1, '2020-11-14 00:25:58', '2020-11-29 17:07:31', 'Omeka\\Entity\\Item'),
(10, 1, 107, 4, NULL, 'Benlameri', 1, '2020-11-14 00:27:00', '2020-11-22 16:01:49', 'Omeka\\Entity\\Item'),
(11, 1, 107, 4, NULL, 'Depaye', 1, '2020-11-14 00:27:23', '2020-11-29 17:13:12', 'Omeka\\Entity\\Item'),
(12, 1, 107, 4, NULL, 'Payet', 1, '2020-11-14 00:27:44', '2020-11-22 16:06:25', 'Omeka\\Entity\\Item'),
(13, 1, 107, 4, NULL, 'Mandanda', 1, '2020-11-14 00:28:03', '2020-11-29 17:19:34', 'Omeka\\Entity\\Item'),
(14, 1, 108, 2, NULL, 'ClementTurpin', 1, '2020-11-14 00:35:43', '2020-11-29 19:42:37', 'Omeka\\Entity\\Item'),
(15, 1, 108, 2, NULL, 'AntonyGautier', 1, '2020-11-14 00:36:04', '2020-11-29 17:25:31', 'Omeka\\Entity\\Item'),
(16, 1, 108, 2, NULL, 'BenoitBastien', 1, '2020-11-14 00:36:34', '2020-11-29 17:28:58', 'Omeka\\Entity\\Item'),
(17, 1, 108, 2, NULL, 'JohanHamel', 1, '2020-11-14 00:37:08', '2020-11-29 17:30:31', 'Omeka\\Entity\\Item'),
(18, 1, 108, 2, NULL, 'TonyChapron', 1, '2020-11-14 00:37:36', '2020-11-29 17:31:50', 'Omeka\\Entity\\Item'),
(19, 1, 108, 2, NULL, 'LaurentDuhamel', 1, '2020-11-14 00:38:16', '2020-11-29 17:35:43', 'Omeka\\Entity\\Item'),
(21, 1, 109, 5, NULL, 'PSG', 1, '2020-11-14 00:43:22', '2020-11-29 13:41:34', 'Omeka\\Entity\\Item'),
(22, 1, 109, 5, NULL, 'OM', 1, '2020-11-14 00:43:34', '2020-11-29 13:43:03', 'Omeka\\Entity\\Item'),
(23, 1, 109, 5, NULL, 'OL', 1, '2020-11-14 00:43:47', '2020-11-29 13:45:13', 'Omeka\\Entity\\Item'),
(24, 1, 109, 5, NULL, 'LOSC', 1, '2020-11-14 00:43:59', '2020-11-29 13:48:05', 'Omeka\\Entity\\Item'),
(25, 1, 109, 5, NULL, 'ASSE', 1, '2020-11-14 00:45:10', '2020-11-29 13:49:04', 'Omeka\\Entity\\Item'),
(26, 1, 109, 5, NULL, 'OGCN', 1, '2020-11-14 00:46:02', '2020-11-29 16:11:20', 'Omeka\\Entity\\Item'),
(27, 1, 110, 6, NULL, 'ParcDesPrinces', 1, '2020-11-14 00:51:01', '2020-11-29 17:02:16', 'Omeka\\Entity\\Item'),
(28, 1, 110, 6, NULL, 'Velodrome', 1, '2020-11-14 00:51:47', '2020-11-29 16:56:41', 'Omeka\\Entity\\Item'),
(29, 1, 110, 6, NULL, 'Groupama', 1, '2020-11-14 00:52:28', '2020-11-29 16:52:01', 'Omeka\\Entity\\Item'),
(30, 1, 110, 6, NULL, 'GeoffroyGuichard', 1, '2020-11-14 00:52:56', '2020-11-29 16:47:14', 'Omeka\\Entity\\Item'),
(31, 1, 110, 6, NULL, 'PierreMauroy', 1, '2020-11-14 00:53:42', '2020-11-29 16:43:59', 'Omeka\\Entity\\Item'),
(32, 1, NULL, NULL, NULL, 'LouisDeux', 1, '2020-11-14 00:54:18', '2020-11-29 16:39:32', 'Omeka\\Entity\\Item'),
(33, 1, 110, 6, NULL, 'GastonRichard', 1, '2020-11-14 00:54:46', '2020-11-29 16:37:12', 'Omeka\\Entity\\Item'),
(34, 1, 111, 7, NULL, 'UCL', 1, '2020-11-14 01:04:20', '2020-11-29 16:35:06', 'Omeka\\Entity\\Item'),
(35, 1, 111, 7, NULL, 'UEFA', 1, '2020-11-14 01:04:31', '2020-11-29 16:32:35', 'Omeka\\Entity\\Item'),
(36, 1, 111, 7, NULL, 'L1', 1, '2020-11-14 01:04:52', '2020-11-29 16:26:58', 'Omeka\\Entity\\Item'),
(37, 1, 111, 7, NULL, 'CL', 1, '2020-11-14 01:05:05', '2020-11-29 18:07:26', 'Omeka\\Entity\\Item'),
(38, 1, 111, 7, NULL, 'CMC', 1, '2020-11-14 01:05:25', '2020-11-29 16:20:52', 'Omeka\\Entity\\Item'),
(39, 1, 111, 7, NULL, 'CF', 1, '2020-11-14 01:06:05', '2020-11-29 16:14:15', 'Omeka\\Entity\\Item'),
(40, 1, 107, 4, NULL, 'Joueurs', 1, '2020-11-22 15:23:49', '2020-11-22 15:23:49', 'Omeka\\Entity\\ItemSet'),
(41, 1, 111, NULL, NULL, 'Competitions', 1, '2020-11-22 16:25:42', '2020-11-22 16:34:40', 'Omeka\\Entity\\ItemSet'),
(42, 1, 109, NULL, NULL, 'Equipes', 1, '2020-11-22 16:27:09', '2020-11-22 16:34:21', 'Omeka\\Entity\\ItemSet'),
(43, 1, 106, NULL, NULL, 'Matchs', 1, '2020-11-22 16:27:28', '2020-11-22 16:34:01', 'Omeka\\Entity\\ItemSet'),
(44, 1, 108, NULL, NULL, 'Arbitres', 1, '2020-11-22 16:27:46', '2020-11-22 16:33:41', 'Omeka\\Entity\\ItemSet'),
(45, 1, 110, NULL, NULL, 'Stades', 1, '2020-11-22 16:28:16', '2020-11-22 16:33:06', 'Omeka\\Entity\\ItemSet');

-- --------------------------------------------------------

--
-- Structure de la table `resource_class`
--

CREATE TABLE `resource_class` (
  `id` int(11) NOT NULL,
  `owner_id` int(11) DEFAULT NULL,
  `vocabulary_id` int(11) NOT NULL,
  `local_name` varchar(190) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `label` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `resource_class`
--

INSERT INTO `resource_class` (`id`, `owner_id`, `vocabulary_id`, `local_name`, `label`, `comment`) VALUES
(1, NULL, 1, 'Agent', 'Agent', 'A resource that acts or has the power to act.'),
(2, NULL, 1, 'AgentClass', 'Agent Class', 'A group of agents.'),
(3, NULL, 1, 'BibliographicResource', 'Bibliographic Resource', 'A book, article, or other documentary resource.'),
(4, NULL, 1, 'FileFormat', 'File Format', 'A digital resource format.'),
(5, NULL, 1, 'Frequency', 'Frequency', 'A rate at which something recurs.'),
(6, NULL, 1, 'Jurisdiction', 'Jurisdiction', 'The extent or range of judicial, law enforcement, or other authority.'),
(7, NULL, 1, 'LicenseDocument', 'License Document', 'A legal document giving official permission to do something with a Resource.'),
(8, NULL, 1, 'LinguisticSystem', 'Linguistic System', 'A system of signs, symbols, sounds, gestures, or rules used in communication.'),
(9, NULL, 1, 'Location', 'Location', 'A spatial region or named place.'),
(10, NULL, 1, 'LocationPeriodOrJurisdiction', 'Location, Period, or Jurisdiction', 'A location, period of time, or jurisdiction.'),
(11, NULL, 1, 'MediaType', 'Media Type', 'A file format or physical medium.'),
(12, NULL, 1, 'MediaTypeOrExtent', 'Media Type or Extent', 'A media type or extent.'),
(13, NULL, 1, 'MethodOfInstruction', 'Method of Instruction', 'A process that is used to engender knowledge, attitudes, and skills.'),
(14, NULL, 1, 'MethodOfAccrual', 'Method of Accrual', 'A method by which resources are added to a collection.'),
(15, NULL, 1, 'PeriodOfTime', 'Period of Time', 'An interval of time that is named or defined by its start and end dates.'),
(16, NULL, 1, 'PhysicalMedium', 'Physical Medium', 'A physical material or carrier.'),
(17, NULL, 1, 'PhysicalResource', 'Physical Resource', 'A material thing.'),
(18, NULL, 1, 'Policy', 'Policy', 'A plan or course of action by an authority, intended to influence and determine decisions, actions, and other matters.'),
(19, NULL, 1, 'ProvenanceStatement', 'Provenance Statement', 'A statement of any changes in ownership and custody of a resource since its creation that are significant for its authenticity, integrity, and interpretation.'),
(20, NULL, 1, 'RightsStatement', 'Rights Statement', 'A statement about the intellectual property rights (IPR) held in or over a Resource, a legal document giving official permission to do something with a resource, or a statement about access rights.'),
(21, NULL, 1, 'SizeOrDuration', 'Size or Duration', 'A dimension or extent, or a time taken to play or execute.'),
(22, NULL, 1, 'Standard', 'Standard', 'A basis for comparison; a reference point against which other things can be evaluated.'),
(23, NULL, 2, 'Collection', 'Collection', 'An aggregation of resources.'),
(24, NULL, 2, 'Dataset', 'Dataset', 'Data encoded in a defined structure.'),
(25, NULL, 2, 'Event', 'Event', 'A non-persistent, time-based occurrence.'),
(26, NULL, 2, 'Image', 'Image', 'A visual representation other than text.'),
(27, NULL, 2, 'InteractiveResource', 'Interactive Resource', 'A resource requiring interaction from the user to be understood, executed, or experienced.'),
(28, NULL, 2, 'Service', 'Service', 'A system that provides one or more functions.'),
(29, NULL, 2, 'Software', 'Software', 'A computer program in source or compiled form.'),
(30, NULL, 2, 'Sound', 'Sound', 'A resource primarily intended to be heard.'),
(31, NULL, 2, 'Text', 'Text', 'A resource consisting primarily of words for reading.'),
(32, NULL, 2, 'PhysicalObject', 'Physical Object', 'An inanimate, three-dimensional object or substance.'),
(33, NULL, 2, 'StillImage', 'Still Image', 'A static visual representation.'),
(34, NULL, 2, 'MovingImage', 'Moving Image', 'A series of visual representations imparting an impression of motion when shown in succession.'),
(35, NULL, 3, 'AcademicArticle', 'Academic Article', 'A scholarly academic article, typically published in a journal.'),
(36, NULL, 3, 'Article', 'Article', 'A written composition in prose, usually nonfiction, on a specific topic, forming an independent part of a book or other publication, as a newspaper or magazine.'),
(37, NULL, 3, 'AudioDocument', 'audio document', 'An audio document; aka record.'),
(38, NULL, 3, 'AudioVisualDocument', 'audio-visual document', 'An audio-visual document; film, video, and so forth.'),
(39, NULL, 3, 'Bill', 'Bill', 'Draft legislation presented for discussion to a legal body.'),
(40, NULL, 3, 'Book', 'Book', 'A written or printed work of fiction or nonfiction, usually on sheets of paper fastened or bound together within covers.'),
(41, NULL, 3, 'BookSection', 'Book Section', 'A section of a book.'),
(42, NULL, 3, 'Brief', 'Brief', 'A written argument submitted to a court.'),
(43, NULL, 3, 'Chapter', 'Chapter', 'A chapter of a book.'),
(44, NULL, 3, 'Code', 'Code', 'A collection of statutes.'),
(45, NULL, 3, 'CollectedDocument', 'Collected Document', 'A document that simultaneously contains other documents.'),
(46, NULL, 3, 'Collection', 'Collection', 'A collection of Documents or Collections'),
(47, NULL, 3, 'Conference', 'Conference', 'A meeting for consultation or discussion.'),
(48, NULL, 3, 'CourtReporter', 'Court Reporter', 'A collection of legal cases.'),
(49, NULL, 3, 'Document', 'Document', 'A document (noun) is a bounded physical representation of body of information designed with the capacity (and usually intent) to communicate. A document may manifest symbolic, diagrammatic or sensory-representational information.'),
(50, NULL, 3, 'DocumentPart', 'document part', 'a distinct part of a larger document or collected document.'),
(51, NULL, 3, 'DocumentStatus', 'Document Status', 'The status of the publication of a document.'),
(52, NULL, 3, 'EditedBook', 'Edited Book', 'An edited book.'),
(53, NULL, 3, 'Email', 'EMail', 'A written communication addressed to a person or organization and transmitted electronically.'),
(54, NULL, 3, 'Event', 'Event', NULL),
(55, NULL, 3, 'Excerpt', 'Excerpt', 'A passage selected from a larger work.'),
(56, NULL, 3, 'Film', 'Film', 'aka movie.'),
(57, NULL, 3, 'Hearing', 'Hearing', 'An instance or a session in which testimony and arguments are presented, esp. before an official, as a judge in a lawsuit.'),
(58, NULL, 3, 'Image', 'Image', 'A document that presents visual or diagrammatic information.'),
(59, NULL, 3, 'Interview', 'Interview', 'A formalized discussion between two or more people.'),
(60, NULL, 3, 'Issue', 'Issue', 'something that is printed or published and distributed, esp. a given number of a periodical'),
(61, NULL, 3, 'Journal', 'Journal', 'A periodical of scholarly journal Articles.'),
(62, NULL, 3, 'LegalCaseDocument', 'Legal Case Document', 'A document accompanying a legal case.'),
(63, NULL, 3, 'LegalDecision', 'Decision', 'A document containing an authoritative determination (as a decree or judgment) made after consideration of facts or law.'),
(64, NULL, 3, 'LegalDocument', 'Legal Document', 'A legal document; for example, a court decision, a brief, and so forth.'),
(65, NULL, 3, 'Legislation', 'Legislation', 'A legal document proposing or enacting a law or a group of laws.'),
(66, NULL, 3, 'Letter', 'Letter', 'A written or printed communication addressed to a person or organization and usually transmitted by mail.'),
(67, NULL, 3, 'Magazine', 'Magazine', 'A periodical of magazine Articles. A magazine is a publication that is issued periodically, usually bound in a paper cover, and typically contains essays, stories, poems, etc., by many writers, and often photographs and drawings, frequently specializing in a particular subject or area, as hobbies, news, or sports.'),
(68, NULL, 3, 'Manual', 'Manual', 'A small reference book, especially one giving instructions.'),
(69, NULL, 3, 'Manuscript', 'Manuscript', 'An unpublished Document, which may also be submitted to a publisher for publication.'),
(70, NULL, 3, 'Map', 'Map', 'A graphical depiction of geographic features.'),
(71, NULL, 3, 'MultiVolumeBook', 'Multivolume Book', 'A loose, thematic, collection of Documents, often Books.'),
(72, NULL, 3, 'Newspaper', 'Newspaper', 'A periodical of documents, usually issued daily or weekly, containing current news, editorials, feature articles, and usually advertising.'),
(73, NULL, 3, 'Note', 'Note', 'Notes or annotations about a resource.'),
(74, NULL, 3, 'Patent', 'Patent', 'A document describing the exclusive right granted by a government to an inventor to manufacture, use, or sell an invention for a certain number of years.'),
(75, NULL, 3, 'Performance', 'Performance', 'A public performance.'),
(76, NULL, 3, 'Periodical', 'Periodical', 'A group of related documents issued at regular intervals.'),
(77, NULL, 3, 'PersonalCommunication', 'Personal Communication', 'A communication between an agent and one or more specific recipients.'),
(78, NULL, 3, 'PersonalCommunicationDocument', 'Personal Communication Document', 'A personal communication manifested in some document.'),
(79, NULL, 3, 'Proceedings', 'Proceedings', 'A compilation of documents published from an event, such as a conference.'),
(80, NULL, 3, 'Quote', 'Quote', 'An excerpted collection of words.'),
(81, NULL, 3, 'ReferenceSource', 'Reference Source', 'A document that presents authoritative reference information, such as a dictionary or encylopedia .'),
(82, NULL, 3, 'Report', 'Report', 'A document describing an account or statement describing in detail an event, situation, or the like, usually as the result of observation, inquiry, etc..'),
(83, NULL, 3, 'Series', 'Series', 'A loose, thematic, collection of Documents, often Books.'),
(84, NULL, 3, 'Slide', 'Slide', 'A slide in a slideshow'),
(85, NULL, 3, 'Slideshow', 'Slideshow', 'A presentation of a series of slides, usually presented in front of an audience with written text and images.'),
(86, NULL, 3, 'Standard', 'Standard', 'A document describing a standard'),
(87, NULL, 3, 'Statute', 'Statute', 'A bill enacted into law.'),
(88, NULL, 3, 'Thesis', 'Thesis', 'A document created to summarize research findings associated with the completion of an academic degree.'),
(89, NULL, 3, 'ThesisDegree', 'Thesis degree', 'The academic degree of a Thesis'),
(90, NULL, 3, 'Webpage', 'Webpage', 'A web page is an online document available (at least initially) on the world wide web. A web page is written first and foremost to appear on the web, as distinct from other online resources such as books, manuscripts or audio documents which use the web primarily as a distribution mechanism alongside other more traditional methods such as print.'),
(91, NULL, 3, 'Website', 'Website', 'A group of Webpages accessible on the Web.'),
(92, NULL, 3, 'Workshop', 'Workshop', 'A seminar, discussion group, or the like, that emphasizes zxchange of ideas and the demonstration and application of techniques, skills, etc.'),
(93, NULL, 4, 'LabelProperty', 'Label Property', 'A foaf:LabelProperty is any RDF property with texual values that serve as labels.'),
(94, NULL, 4, 'Person', 'Person', 'A person.'),
(95, NULL, 4, 'Document', 'Document', 'A document.'),
(96, NULL, 4, 'Organization', 'Organization', 'An organization.'),
(97, NULL, 4, 'Group', 'Group', 'A class of Agents.'),
(98, NULL, 4, 'Agent', 'Agent', 'An agent (eg. person, group, software or physical artifact).'),
(99, NULL, 4, 'Project', 'Project', 'A project (a collective endeavour of some kind).'),
(100, NULL, 4, 'Image', 'Image', 'An image.'),
(101, NULL, 4, 'PersonalProfileDocument', 'PersonalProfileDocument', 'A personal profile RDF document.'),
(102, NULL, 4, 'OnlineAccount', 'Online Account', 'An online account.'),
(103, NULL, 4, 'OnlineGamingAccount', 'Online Gaming Account', 'An online gaming account.'),
(104, NULL, 4, 'OnlineEcommerceAccount', 'Online E-commerce Account', 'An online e-commerce account.'),
(105, NULL, 4, 'OnlineChatAccount', 'Online Chat Account', 'An online chat account.'),
(106, 1, 5, 'FootballMatch', 'partido de fútbol', 'a competition between two football teams'),
(107, 1, 6, 'Athlete', 'atleet', NULL),
(108, 1, 7, 'Referee', 'réiteoir', 'An official who watches a game or match closely to ensure that the rules are adhered to.'),
(109, 1, 8, 'SportsTeamSeason', 'περίοδος αθλητικής ομάδας', 'μία περίοδος για μία αθλητική ομάδα'),
(110, 1, 9, 'Stadium', 'στάδιο', NULL),
(111, 1, 10, 'Competition', 'Wettbewerb', NULL),
(112, 1, 12, 'leaguefootbalJoueur', 'Joueur', NULL),
(113, 1, 12, 'leaguefootbalArbitre', 'Arbitre', NULL),
(114, 1, 12, 'leaguefootbalStade', 'Stade', NULL),
(115, 1, 12, 'leaguefootbalOrganisateur', 'Organisateur', NULL),
(116, 1, 12, 'leaguefootbalVisiteur', 'Visiteur', NULL),
(117, 1, 12, 'leaguefootbalMatch', ' Match ', NULL),
(118, 1, 12, 'leaguefootbalCompetition', ' Competition ', NULL),
(119, 1, 12, 'leaguefootbalEquipe', 'Equipe', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `resource_template`
--

CREATE TABLE `resource_template` (
  `id` int(11) NOT NULL,
  `owner_id` int(11) DEFAULT NULL,
  `resource_class_id` int(11) DEFAULT NULL,
  `title_property_id` int(11) DEFAULT NULL,
  `description_property_id` int(11) DEFAULT NULL,
  `label` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `resource_template`
--

INSERT INTO `resource_template` (`id`, `owner_id`, `resource_class_id`, `title_property_id`, `description_property_id`, `label`) VALUES
(1, NULL, NULL, NULL, NULL, 'Base Resource'),
(2, 1, 108, NULL, NULL, 'Arbitre'),
(3, 1, 106, NULL, NULL, 'Match'),
(4, 1, 107, NULL, NULL, 'Athlete'),
(5, 1, 109, NULL, NULL, 'Equipe'),
(6, 1, 110, NULL, NULL, 'Stade'),
(7, 1, 111, NULL, NULL, 'Competition ');

-- --------------------------------------------------------

--
-- Structure de la table `resource_template_property`
--

CREATE TABLE `resource_template_property` (
  `id` int(11) NOT NULL,
  `resource_template_id` int(11) NOT NULL,
  `property_id` int(11) NOT NULL,
  `alternate_label` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alternate_comment` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `data_type` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT '(DC2Type:json_array)',
  `is_required` tinyint(1) NOT NULL,
  `is_private` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `resource_template_property`
--

INSERT INTO `resource_template_property` (`id`, `resource_template_id`, `property_id`, `alternate_label`, `alternate_comment`, `position`, `data_type`, `is_required`, `is_private`) VALUES
(1, 1, 1, NULL, NULL, 1, NULL, 0, 0),
(2, 1, 15, NULL, NULL, 2, NULL, 0, 0),
(3, 1, 8, NULL, NULL, 3, NULL, 0, 0),
(4, 1, 2, NULL, NULL, 4, NULL, 0, 0),
(5, 1, 7, NULL, NULL, 5, NULL, 0, 0),
(6, 1, 4, NULL, NULL, 6, NULL, 0, 0),
(7, 1, 9, NULL, NULL, 7, NULL, 0, 0),
(8, 1, 12, NULL, NULL, 8, NULL, 0, 0),
(9, 1, 40, 'Place', NULL, 9, NULL, 0, 0),
(10, 1, 5, NULL, NULL, 10, NULL, 0, 0),
(11, 1, 17, NULL, NULL, 11, NULL, 0, 0),
(12, 1, 6, NULL, NULL, 12, NULL, 0, 0),
(13, 1, 25, NULL, NULL, 13, NULL, 0, 0),
(14, 1, 10, NULL, NULL, 14, NULL, 0, 0),
(15, 1, 13, NULL, NULL, 15, NULL, 0, 0),
(16, 1, 29, NULL, NULL, 16, NULL, 0, 0),
(17, 1, 30, NULL, NULL, 17, NULL, 0, 0),
(18, 1, 50, NULL, NULL, 18, NULL, 0, 0),
(19, 1, 3, NULL, NULL, 19, NULL, 0, 0),
(20, 1, 41, NULL, NULL, 20, NULL, 0, 0),
(21, 2, 1, NULL, NULL, 1, NULL, 0, 0),
(22, 2, 4, NULL, NULL, 2, NULL, 0, 0),
(23, 3, 1, NULL, NULL, 1, NULL, 0, 0),
(24, 3, 4, NULL, NULL, 2, NULL, 0, 0),
(25, 4, 1, NULL, NULL, 1, NULL, 0, 0),
(26, 4, 4, NULL, NULL, 2, NULL, 0, 0),
(27, 5, 1, NULL, NULL, 1, NULL, 0, 0),
(28, 5, 4, NULL, NULL, 2, NULL, 0, 0),
(29, 6, 1, NULL, NULL, 1, NULL, 0, 0),
(30, 6, 4, NULL, NULL, 2, NULL, 0, 0),
(31, 7, 1, NULL, NULL, 1, NULL, 0, 0),
(32, 7, 4, NULL, NULL, 2, NULL, 0, 0),
(33, 5, 33, NULL, NULL, 3, NULL, 0, 0),
(34, 4, 10, NULL, NULL, 3, NULL, 0, 0),
(35, 4, 139, NULL, NULL, 4, NULL, 0, 0),
(36, 4, 143, NULL, NULL, 5, NULL, 0, 0),
(37, 4, 108, NULL, NULL, 6, NULL, 0, 0),
(38, 4, 182, NULL, NULL, 7, NULL, 0, 0),
(39, 4, 187, NULL, NULL, 8, NULL, 0, 0),
(40, 4, 186, NULL, NULL, 9, NULL, 0, 0),
(41, 5, 98, NULL, NULL, 4, NULL, 0, 0),
(42, 5, 138, NULL, NULL, 5, NULL, 0, 0),
(43, 6, 10, NULL, NULL, 3, NULL, 0, 0),
(44, 6, 138, NULL, NULL, 4, NULL, 0, 0),
(45, 2, 10, NULL, NULL, 3, NULL, 0, 0),
(46, 2, 138, NULL, NULL, 4, NULL, 0, 0),
(47, 2, 187, NULL, NULL, 5, NULL, 0, 0),
(48, 3, 10, NULL, NULL, 3, NULL, 0, 0),
(49, 7, 10, NULL, NULL, 3, NULL, 0, 0),
(50, 7, 138, NULL, NULL, 4, NULL, 0, 0),
(51, 4, 154, NULL, NULL, 10, NULL, 0, 0);

-- --------------------------------------------------------

--
-- Structure de la table `session`
--

CREATE TABLE `session` (
  `id` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `data` longblob NOT NULL,
  `modified` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `session`
--

INSERT INTO `session` (`id`, `data`, `modified`) VALUES
('4clq5mtni7l5fvsokccpq8dr5e', 0x5f5f4c616d696e61737c613a353a7b733a32303a225f524551554553545f4143434553535f54494d45223b643a313630363638333230362e39363238363b733a363a225f56414c4944223b613a313a7b733a32383a224c616d696e61735c53657373696f6e5c56616c696461746f725c4964223b733a32363a2235366c656a6b7335686233756466716e346b63616a6876396172223b7d733a34323a224c616d696e61735f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313630363638323337343b7d733a34343a224c616d696e61735f56616c696461746f725f437372665f73616c745f636f6e6669726d666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313630363638363830393b7d733a33323a224c616d696e61735f56616c696461746f725f437372665f73616c745f63737266223b613a313a7b733a363a22455850495245223b693a313630363638323430353b7d7d72656469726563745f75726c7c733a32383a22687474703a2f2f6c6f63616c686f73742f6f6d656b612f61646d696e223b4c616d696e61735f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f637372667c433a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a3339313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a313a7b733a33323a223036313662623836393833303730616166336261666336666438653061396263223b733a33323a223435636139663863323633613266346566663766353462653964363634333761223b7d733a343a2268617368223b733a36353a2234356361396638633236336132663465666637663534626539643636343337612d3036313662623836393833303730616166336261666336666438653061396263223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d4c616d696e61735f417574687c433a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a3232333a7b613a343a7b733a373a2273746f72616765223b613a313a7b733a373a2273746f72616765223b693a313b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d4f6d656b614d657373656e6765727c433a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a3230353a7b613a343a7b733a373a2273746f72616765223b613a303a7b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d4c616d696e61735f56616c696461746f725f437372665f73616c745f636f6e6669726d666f726d5f637372667c433a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a3437313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a323a7b733a33323a223464663831623066376363633634326461396135396132363661633863663139223b733a33323a223566386165663032343562346230313365613165623962663638666363303363223b733a33323a223062393532383930373435323566616161333037653235646335666565653936223b733a33323a223362623438383233316336363630356439633231643435313966313866313761223b7d733a343a2268617368223b733a36353a2233626234383832333163363636303564396332316434353139663138663137612d3062393532383930373435323566616161333037653235646335666565653936223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d4c616d696e61735f56616c696461746f725f437372665f73616c745f637372667c433a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a3339313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a313a7b733a33323a226666383564356664343135343963353336623462323035396339666366333864223b733a33323a223337306463313130353663376661626262353362626164383936313036303437223b7d733a343a2268617368223b733a36353a2233373064633131303536633766616262623533626261643839363130363034372d6666383564356664343135343963353336623462323035396339666366333864223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d, 1606683209),
('4kf74c2p42bf2rrp04h83iqaeg', 0x5f5f4c616d696e61737c613a333a7b733a32303a225f524551554553545f4143434553535f54494d45223b643a313630363732373130332e3732373235353b733a363a225f56414c4944223b613a313a7b733a32383a224c616d696e61735c53657373696f6e5c56616c696461746f725c4964223b733a32363a226e71366b6f6f6c31627564383876706d696b336c68366a666236223b7d733a34323a224c616d696e61735f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313630363732363232333b7d7d4c616d696e61735f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f637372667c433a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a3339313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a313a7b733a33323a223936346131336434653837393838313966616238356236353038373535656230223b733a33323a223634653331613462383665393965373961656431396431306531363936386531223b7d733a343a2268617368223b733a36353a2236346533316134623836653939653739616564313964313065313639363865312d3936346131336434653837393838313966616238356236353038373535656230223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d4c616d696e61735f417574687c433a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a3232333a7b613a343a7b733a373a2273746f72616765223b613a313a7b733a373a2273746f72616765223b693a313b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d4f6d656b614d657373656e6765727c433a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a3230353a7b613a343a7b733a373a2273746f72616765223b613a303a7b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d72656469726563745f75726c7c4e3b, 1606727109),
('5jbaoq8mfl7ut9rsbfd4h0rbgj', 0x5f5f4c616d696e61737c613a353a7b733a32303a225f524551554553545f4143434553535f54494d45223b643a313630363637333336392e3138383838373b733a363a225f56414c4944223b613a313a7b733a32383a224c616d696e61735c53657373696f6e5c56616c696461746f725c4964223b733a32363a22353732393362617135383063386c65656f71663639656e756271223b7d733a34323a224c616d696e61735f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313630363635373132313b7d733a34343a224c616d696e61735f56616c696461746f725f437372665f73616c745f636f6e6669726d666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313630363637363937303b7d733a33323a224c616d696e61735f56616c696461746f725f437372665f73616c745f63737266223b613a313a7b733a363a22455850495245223b693a313630363637363936393b7d7d72656469726563745f75726c7c733a32383a22687474703a2f2f6c6f63616c686f73742f6f6d656b612f61646d696e223b4c616d696e61735f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f637372667c433a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a3339313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a313a7b733a33323a226561333932313462333236353633613530663463653938313931313365303861223b733a33323a223937393262376530643461383564336166653465383939633834353233303565223b7d733a343a2268617368223b733a36353a2239373932623765306434613835643361666534653839396338343532333035652d6561333932313462333236353633613530663463653938313931313365303861223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d4c616d696e61735f417574687c433a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a3232333a7b613a343a7b733a373a2273746f72616765223b613a313a7b733a373a2273746f72616765223b693a313b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d4f6d656b614d657373656e6765727c433a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a3230353a7b613a343a7b733a373a2273746f72616765223b613a303a7b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d4c616d696e61735f56616c696461746f725f437372665f73616c745f636f6e6669726d666f726d5f637372667c433a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a333637323a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a34323a7b733a33323a226637336332643566366163326465343363623065626363633262346665633864223b733a33323a226466356132383931343561643638356439636463323265313331366565326236223b733a33323a223161326132306231303361613134666536666639623633373730326433653535223b733a33323a226565366662373238626134303361373931336537383631366565633630333731223b733a33323a223032303466363861306236346464613830666134663635316137666537383531223b733a33323a226434333737633061633833346438323432623930386262303061663530393734223b733a33323a223461313366313233356534316264366561353834393332386238663535636466223b733a33323a223732363764343861396231383335633561333736303161393865626461373731223b733a33323a226638373933323561613739636133346561303836383761383330313839666265223b733a33323a226537663132326265656633666339633733643333643331663435363866303233223b733a33323a223539616138386262376164623131623133613162373663303666383836303964223b733a33323a223961616238303564613738356530333932303035336565383839303166653739223b733a33323a223838383936666664303530366230393934386462363164356365376464383762223b733a33323a226435323431326537636362353734656164636132653736623234643334383538223b733a33323a223334396335373639363032376334646266613661383438343335353465656563223b733a33323a223162613630306337303061393139373464383663313734396133666530393830223b733a33323a226262646162643237323733356431353236653335396664316638663934306433223b733a33323a226166393531353236386639366261626366636266333230396434333239306232223b733a33323a226231303765643431643230633535666431613566356465316632613735333937223b733a33323a223333346433343338613833306432316462653938363661326432616233633236223b733a33323a223534343732366238346336636661326632313036326631386631376463396432223b733a33323a226437323966303263356233383664336135346131653464316231396131326235223b733a33323a223430613037376465333339623131653463356663626337633831363965313633223b733a33323a226632393963313462633137636339376662636361623737356437333161363066223b733a33323a223263643863643532363737633836653064626431383263666531316133326433223b733a33323a226563366531373062393333366233393865313365333732326661633732363731223b733a33323a226266333664653666666663313433616638366262373639393265353763303639223b733a33323a226439643434623431636462613666353936623338626637346630633130636138223b733a33323a223633303539336461663933323161346464663036613630396264386439346339223b733a33323a226235666135363261363439356333376161393162663630646233656465393361223b733a33323a223865643438303863363262386238363333353462663665616161646237353965223b733a33323a223336313861353632303233643531653061326439316139313261326538343135223b733a33323a226236623132613833633735326462343165313337646230353961643632323235223b733a33323a223530383635666537306366303565303765333765623063623833336632316532223b733a33323a226234643531633862633065303236316262346237353965326637396536636665223b733a33323a226462303565373035636539623937363032333936306531666439333537663834223b733a33323a226338306364613866653464396431656164643730663662386664373962396366223b733a33323a223239363236346262646466623130616462646365383635346530326638343437223b733a33323a226635386363333461656536373737636662613365363732356630396436393634223b733a33323a226365373830666239636134343933376331326532616331376365393663353361223b733a33323a223564306439333639393733366339373361386238316435343266643462373163223b733a33323a226437303937646164623562333538623339313564343763353837316561373139223b733a33323a226563613034356137316433643731306635623162373735343563316662396634223b733a33323a226135626665313731303063623934613262323330623636626135363038656430223b733a33323a223436313232313239363865336461323930376339316165353162653736336238223b733a33323a226362626161393062343532346361613134393633366131336638656465343539223b733a33323a223636386130303533653766323065353435306638373736316433363961643636223b733a33323a226662313264616338313430393131376462633338376530343432623038613838223b733a33323a223939373036623862393962386433353733383131663831353732663538303163223b733a33323a223137623130633039323531386135396163613035323861626631396566646234223b733a33323a223732313433393834383936646361306363383739306231326632373632303963223b733a33323a223664376135363663303131393664386163336430343762373034396333386631223b733a33323a223364323330666662333065396465306138363262613837653032326630393664223b733a33323a223361633439323733323739623239346538343061383063616162343939623532223b733a33323a226263306363303163356563646532633835653439636137363738333738336363223b733a33323a223030313662393535633933633939366336366230383764653034313834636430223b733a33323a223233373032353339323261393133386336366334623430393936316161373739223b733a33323a223534386661366135633064663764646362323965356664653834376237326531223b733a33323a223738653932306166303131363834343765313762383266346662343764373439223b733a33323a226362396665383137666634323263366564343532316663333330353131333762223b733a33323a226530613133633766623530646132653961666465333363663166643433623363223b733a33323a223838633966376137343131633239323836393962306639646134393038653939223b733a33323a223661616462386638303666653739323237666339616439363032323666303262223b733a33323a223634626238643037303032373533653566373966396233353466643237656564223b733a33323a223235333936666439353035616666363161613365326364656533353566356139223b733a33323a223339623363653839383536653231653137323630316437313434626561353734223b733a33323a226162623830633530373163643233643765386530376462643964313639636635223b733a33323a226638326461316138626637333765623638386331343339653639646666653630223b733a33323a223861343936306135393765396466373765666335353539646137636536323535223b733a33323a226332316434626133306339383135326461653761356634323130643365353863223b733a33323a226464383039623730313234393265306536653331376333643631326164343831223b733a33323a223639393339316537656163393030626331313666616535316336353839373461223b733a33323a226464393835623463623431616434373364633964653639336435633230333736223b733a33323a223862613136633165386666336366376164663862333261373963626439623461223b733a33323a223365363363616137306632333534326438666534303533633963653736623964223b733a33323a223835386139393638323030633534373637613565653365626661383865323139223b733a33323a226462643465646661653535306139326666386534383838306361356134653637223b733a33323a223733386565373331616530336663653839366634383435626531353633663939223b733a33323a223665653638643837646533313365626665636435623930366130356339393237223b733a33323a226363336435393630363366353936623931663135653833616565656539626137223b733a33323a226466653430373161316535646564323430393264623266376235626663626636223b733a33323a223436656566636565633534383231623163636264346463633535656239313063223b733a33323a226364333662623937613537326338303766326338393561343662653363393361223b733a33323a226438623235633635636666663661333666633831356237636565663438656564223b7d733a343a2268617368223b733a36353a2264386232356336356366666636613336666338313562376365656634386565642d6364333662623937613537326338303766326338393561343662653363393361223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d4c616d696e61735f56616c696461746f725f437372665f73616c745f637372667c433a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a333139323a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a33363a7b733a33323a226261363063386339633466346333303233663833346365613831366432393034223b733a33323a223937353165666630326133626430646231396665386537643034343639656361223b733a33323a226134653239313862626533396136383335613335343363306435653238613032223b733a33323a223738373464613166623565393865656338303561326631396430396461306233223b733a33323a223363306264636634363035343964383965383734353762393565353837623539223b733a33323a226434373731636231323133623831316533386531663832303432313036656161223b733a33323a226439373635663561626137336236656237656266366661393563383438393936223b733a33323a223163366335666630306661643765333864383939626465323633366136376136223b733a33323a223364343737613635356566363032643238313938646435663635666238363966223b733a33323a226261663436646664346534366230313133653234626233323236366139613564223b733a33323a223564656465303561373733613762323264356337323339383762626634353535223b733a33323a223539666231616461306164366163663565663538643130336366636430653739223b733a33323a226538376435313161643930366461646138356364343539383132323031653865223b733a33323a226333633964323831343130393833356334333665623736643161396561633736223b733a33323a223738656230363931366238303462333363666236303162663263323137363935223b733a33323a226637663736623737386463326638386464336465353431643761316364353566223b733a33323a223839656135323362633431353366353037656237303361643166356464353234223b733a33323a223832663431343063626537643464303462323230336335633561646261656133223b733a33323a223365306434633362643862376333666262373932356165656132366133326134223b733a33323a226563656263613064663338626232353164383634643134643934356536353737223b733a33323a223930636261353234623733353337316366386636353461326661666435386663223b733a33323a223063636439366531653137363162363038306663393737326164393165393965223b733a33323a223835323932353537656234303636373131643166653431623736383437656631223b733a33323a226464366539313337383164366434386332333231306565653563383538313961223b733a33323a226339366430386335383238393166333631353964613734343137366231313135223b733a33323a223633346536653366386639646235633430396634633438356538373035383062223b733a33323a226233333033303336356538376366353531313032306365366331653238313231223b733a33323a226466653266303738663765613932336264336134666266653033356266336236223b733a33323a226461306337376364303536656232666662383664636432666666613366653532223b733a33323a223739623833313139336630303663373537613764616434353166313032393766223b733a33323a226137663333633838316334386430356662343262313664316231316133613364223b733a33323a223861333866313664386337333630626661353762646537633130363132636338223b733a33323a226561356537343636396638323833653234616365646562643231346163353361223b733a33323a226366666139333732323730353761626266666335353733393664653532653334223b733a33323a223234643262626166656363303533383534663964356639663836633238646630223b733a33323a223638333439363562303264616532643537383162363430373538656161393565223b733a33323a223531343233303265366232636464653562643965616338623438393633336236223b733a33323a223666646435366239383730363035363037306161353239383461663038383237223b733a33323a226533656262653563636331346161376238333431633031356664623635386134223b733a33323a223133613237353264643263623936336235376538326331656433633938363732223b733a33323a226539346165303138613835373265613161666366633131373830663166393166223b733a33323a223464363566623438333664363435303334323035613763393663613732386666223b733a33323a223665653130336639373165346662643533343066656264633837343265393436223b733a33323a223937643766363061373031663634613731303637373565643936613262323139223b733a33323a223536366235633033653733336134363963323336383638383462636232373361223b733a33323a223230333039336161653038313930313834303661666433396633313563646461223b733a33323a226561313837303237363933306461353332373565663237393764663363353736223b733a33323a223630393433393839646531376263653961383731653237336638376562613539223b733a33323a223937376266646235646632393965386139343339616531656336363433386230223b733a33323a223234666633656138653835323038633466343066613561383333386264363937223b733a33323a226239653937396638653531373637623062383339636432313064343539643832223b733a33323a223036336434323763313936663935626632363537613037383861323131623438223b733a33323a226134653235386430396266363437373532353539323230356537363862333831223b733a33323a223530313533353764663632373163366662363638623630616333303234663539223b733a33323a223963356466363439646561376561613931313837383434616339306463633634223b733a33323a223834363738666361386534343761376234333232386464386263663737633236223b733a33323a226162383361336337373065666665623665393434333838306131316166636631223b733a33323a223831313266303336323732386332383535343539323130353736326564393564223b733a33323a226464373532353439373038303862666163363639623362326365616365656564223b733a33323a223365373738636361386437333165383432373866346562373262643434373364223b733a33323a223264653532663632353962663236336666663966363839623236393430663361223b733a33323a223831363038326139363565336434616563356661666662393763333666326231223b733a33323a223137656564316564636463343165623861303236636434383863353232373930223b733a33323a226166363633326463393334373733633765663637623362333039373561363264223b733a33323a226630386139653564363361373664323466336134396366303234316533633761223b733a33323a226638326231326439653566353263333132346166363362373463656461363132223b733a33323a226134613232663564396262343239346136346137653561393037326630386236223b733a33323a223835326233383163343138393031656265303765663663346339396635303738223b733a33323a226565626266316334383365626262396534636436313539646130643530353564223b733a33323a223634303865616334636562353164313333353061383334303239363833373565223b733a33323a223566383561396532353866653764376333386134643964663137636231653261223b733a33323a223364623633343962626639316237346163313363373765383437396161613130223b7d733a343a2268617368223b733a36353a2233646236333439626266393162373461633133633737653834373961616131302d3566383561396532353866653764376333386134643964663137636231653261223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d, 1606673370),
('7l128uqp44td9bvllpmvedn6nf', 0x5f5f4c616d696e61737c613a343a7b733a32303a225f524551554553545f4143434553535f54494d45223b643a313630353339383030362e38303237383b733a363a225f56414c4944223b613a313a7b733a32383a224c616d696e61735c53657373696f6e5c56616c696461746f725c4964223b733a32363a226b706a72646c6e357174726a6a306f666c66696c746b736c3070223b7d733a34323a224c616d696e61735f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313630353339363436383b7d733a34343a224c616d696e61735f56616c696461746f725f437372665f73616c745f636f6e6669726d666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313630353339363930323b7d7d72656469726563745f75726c7c733a32383a22687474703a2f2f6c6f63616c686f73742f6f6d656b612f61646d696e223b4c616d696e61735f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f637372667c433a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a3339313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a313a7b733a33323a226137613139363538643539616538336563383663383663653463343738633138223b733a33323a223434373038336564326239306430373066396331373936653865646363336161223b7d733a343a2268617368223b733a36353a2234343730383365643262393064303730663963313739366538656463633361612d6137613139363538643539616538336563383663383663653463343738633138223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d4c616d696e61735f417574687c433a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a3232333a7b613a343a7b733a373a2273746f72616765223b613a313a7b733a373a2273746f72616765223b693a313b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d4f6d656b614d657373656e6765727c433a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a3230353a7b613a343a7b733a373a2273746f72616765223b613a303a7b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d4c616d696e61735f56616c696461746f725f437372665f73616c745f636f6e6669726d666f726d5f637372667c433a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a3633313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a343a7b733a33323a223036363735653264653632633061306132643234653962633535393563653138223b733a33323a226635653531653831323964323136633261653564383364386131636632643064223b733a33323a223932616432613530333134666533373763333565316432383131353837363939223b733a33323a223730666438326131323737326431613464653637646438336530333861346435223b733a33323a226630316466313561336564613634613637623236383862376130313639396462223b733a33323a226439653264316239343538336133326361363336643931313065613765653831223b733a33323a226339383332313962323863323663633161666235353362636661613837356136223b733a33323a226535306230643232323131653330353461393733636234373436636332653930223b7d733a343a2268617368223b733a36353a2265353062306432323231316533303534613937336362343734366363326539302d6339383332313962323863323663633161666235353362636661613837356136223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d, 1605398008);
INSERT INTO `session` (`id`, `data`, `modified`) VALUES
('9ej77hbiao2p18h2jgtcdbp3hh', 0x5f5f4c616d696e61737c613a383a7b733a32303a225f524551554553545f4143434553535f54494d45223b643a313630353337363231312e3930363434343b733a363a225f56414c4944223b613a313a7b733a32383a224c616d696e61735c53657373696f6e5c56616c696461746f725c4964223b733a32363a22756c643473357631636138626c626a6972683871366175686a72223b7d733a34323a224c616d696e61735f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313630353239393534383b7d733a33323a224c616d696e61735f56616c696461746f725f437372665f73616c745f63737266223b613a313a7b733a363a22455850495245223b693a313630353337393132323b7d733a35333a224c616d696e61735f56616c696461746f725f437372665f73616c745f7265736f7572636574656d706c617465666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313630353337363136303b7d733a34343a224c616d696e61735f56616c696461746f725f437372665f73616c745f636f6e6669726d666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313630353337393831323b7d733a34373a224c616d696e61735f56616c696461746f725f437372665f73616c745f766f636162756c617279666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313630353331393232363b7d733a35393a224c616d696e61735f56616c696461746f725f437372665f73616c745f7265736f7572636574656d706c617465696d706f7274666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313630353331353138313b7d7d4c616d696e61735f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f637372667c433a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a3437313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a323a7b733a33323a226339313234633861313663396236313138383735643366383132373266626331223b733a33323a226631313164363132303336663966323531663032616665306262336364336533223b733a33323a223631373461313532636536366631623231373535653736646134316635656238223b733a33323a226536653862396134643937366235653365333661343562656463643135353730223b7d733a343a2268617368223b733a36353a2265366538623961346439373662356533653336613435626564636431353537302d3631373461313532636536366631623231373535653736646134316635656238223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d4f6d656b614d657373656e6765727c433a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a3230353a7b613a343a7b733a373a2273746f72616765223b613a303a7b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d4c616d696e61735f417574687c433a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a3232333a7b613a343a7b733a373a2273746f72616765223b613a313a7b733a373a2273746f72616765223b693a313b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d72656469726563745f75726c7c4e3b4c616d696e61735f56616c696461746f725f437372665f73616c745f637372667c433a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a333033323a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a33343a7b733a33323a223265323161393064333035636465386434333461323235636262303038393363223b733a33323a223939353434396532346238353565373962623930623232323563666136616663223b733a33323a226232663330613431623337616133616231666564336334306434353431356666223b733a33323a223138326166633036336164336133323838386232383733633932636265623639223b733a33323a226162363436383736633637613264643766366333353833646439616135366563223b733a33323a223264346362306365336264363332316338326165393531363730653665313034223b733a33323a223766366530643038383065353665313630313235316562373564313865333035223b733a33323a226335653933653932663638303831353931663166376432636532386337623563223b733a33323a226538306532363434646562336234306163656662373464623965363062663165223b733a33323a223231353830643364323862636563383461346231323834353436393535646530223b733a33323a223137643063623330386533636437306231666433303361633430396435363130223b733a33323a223533653431363762376538623335353231313339636536666263306364633539223b733a33323a226636623935336439353536316465326234336263376631373632663735303838223b733a33323a226664643664333765633066316161323934623434626334643831306564353163223b733a33323a223832616161633536613966383438663164653939366566633431396330353061223b733a33323a223364376530313463353666623865386331626339646465306565343733666437223b733a33323a223666656135323639643330383663653830303362653561643837623661666462223b733a33323a223738366334656431663730653362633165336537363736336131623161373637223b733a33323a226532353564613530303131346333323134363130393965346539343930323033223b733a33323a223161383962323861383739643937643232353463353765613331366238633032223b733a33323a223464626261356631333663323864653466313637353761363636663161303062223b733a33323a223865346133353338313966306364616133343933336265623238386639623332223b733a33323a223662663162393430643935643934356438396338333739333732343637373633223b733a33323a223564373731316366623937653534373764653239666131626162663831313864223b733a33323a223331383431663965626530303936313031663664353562353261363265333639223b733a33323a223033666632656338636465303765363331343837326333383833373163356263223b733a33323a223761316432326538666561666634626533376532373566666631326632616162223b733a33323a223662333534663735393761303437393464363666343837336563656661306162223b733a33323a226433636638343430346361376536633630623061356138613363623561623939223b733a33323a223065316234313564323635356163383134656133633133653938366263366531223b733a33323a226538306462346138333830396164663637373563333936623637623763306639223b733a33323a226534393031393531323437346363663633666633643131346234623235623333223b733a33323a226563386330313335383466353464653936316534643534663062646665326534223b733a33323a226231396332373463363666626537363033393137663739363738396461616562223b733a33323a223165373763636233326164653063663831316163656564663839643430653463223b733a33323a223565303032396237393631643532643265383232303438313838346537656163223b733a33323a223038363562616535343933326261313438333266363865646634623231656437223b733a33323a226131633265376331316130633133643564353433366561373935333733343866223b733a33323a223338613061386339336332616130303633666266306532303932326136343666223b733a33323a223266373931663131333832326633613033356263646531623736343564656638223b733a33323a223632376262643265393136646337363431623139303531363639383439386662223b733a33323a223437306432643062616437313564643233383431316632653234646631326430223b733a33323a223333316432663463316530356634396633323332393536346565376234616638223b733a33323a226630356232613532613162396262356337323038623030643536393361623136223b733a33323a226637333865306565623064633430373336353763626334386133633661653535223b733a33323a226336643766636339333534333762313835306264396335356365623831323438223b733a33323a223862613537666439333232323562386165666635363965386239336164393639223b733a33323a223834653139633739663366303066656136613133373031613561646638303639223b733a33323a226233356536356562333134356638353335623066356663653837623238313137223b733a33323a226238663465363630346362636462316265363132626132633237376134346136223b733a33323a226639663763353661303436373531613362386665303837373965346335663563223b733a33323a226462656561376664303362643564633536663064663538656132616364393065223b733a33323a223634396466323737646662323738643962353863306230353263663035656432223b733a33323a226134613261633162343264656230653637356431316262613638303563323733223b733a33323a226266633036316665393732376439346566346339396136383939376661326532223b733a33323a223761636234623365386539333831323237396433646463393337373134376465223b733a33323a226664333161356332643138373266643736353536376232356661353737646437223b733a33323a223266333533636164653361313534633839613963313663376131386234663835223b733a33323a223364633337393664353131323236363038356236393764653132393634633838223b733a33323a223838653035343434303935303234306238663463363231643530336633666632223b733a33323a226430346134353461316431656137356463646237646164666537356132323330223b733a33323a223435373764393634303632326561656236343563623261386335316333323832223b733a33323a223465373432393630363438656266303964393061323631356364356162313238223b733a33323a226662636230313530356237393261383861346537643237313636333961376233223b733a33323a223438386530666566613933363332386238356638643161623236303138646230223b733a33323a223566386332313838653162346562376330653562326261363938326264343134223b733a33323a226339346165663435643066343731303334366236316165373230353963396461223b733a33323a226432333464353337626135373139346533383238616335326437323362373631223b7d733a343a2268617368223b733a36353a2264323334643533376261353731393465333832386163353264373233623736312d6339346165663435643066343731303334366236316165373230353963396461223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d4c616d696e61735f56616c696461746f725f437372665f73616c745f7265736f7572636574656d706c617465666f726d5f637372667c433a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a3437313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a323a7b733a33323a223638656534353637646133666531616531353038663434323431323764646539223b733a33323a223736663037616231626663386261386531396539633531616464636563376537223b733a33323a226536396166616239653361636139346436306130653234366230396664623237223b733a33323a223434326634373735376638343963663066663463343966373031636139353334223b7d733a343a2268617368223b733a36353a2234343266343737353766383439636630666634633439663730316361393533342d6536396166616239653361636139346436306130653234366230396664623237223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d4c616d696e61735f56616c696461746f725f437372665f73616c745f636f6e6669726d666f726d5f637372667c433a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a31303535333a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a3132383a7b733a33323a226237666235336237363964346661663133303330653562303936376239323334223b733a33323a223934303035323666346366343233373638356637613264643132323262363361223b733a33323a223934346166383834366135636134663330303136633138386563333732323831223b733a33323a226236333933323261656233616662386131346465653066316361373466663439223b733a33323a223661313966366638646630306361656137326363366663643533363764336238223b733a33323a223265653661643761623465656136376337353234633063613765383861623334223b733a33323a223036623633363531386635663531376335333130356531353836646365656466223b733a33323a226239383164656366636266383637313064343362623436636133623664613930223b733a33323a223831643735343834376165366363656264306465623531373166386663313566223b733a33323a223735383864323838343138306539353737366338653731326630323934653534223b733a33323a223038666663393362333433386637363462666361373533663834383965656464223b733a33323a223635303433623565333932393333386464363332616436383362666261353438223b733a33323a223236316431393332663835646163316436626237393132643338313762346632223b733a33323a226362313737316165623064663338653461303331346433633432356462616533223b733a33323a226132666664333835353162326236353330373461643433613233623338363432223b733a33323a223766643066353531643266663534373766366131643464353930386233326362223b733a33323a223837336138346336396639316538633633343737623235636531373038306665223b733a33323a223865393933626235626133656633653063636535356232616462633834326665223b733a33323a223932636238363363393864323234653764393762643461343631316161383066223b733a33323a226566623037643132326430333333323462303135386636303434663434303330223b733a33323a223763336164663835386435666337396337343832373234356438306664383630223b733a33323a223931366634633762613865326532633536363436333135646562383637383762223b733a33323a223265333137343665653030343431356232343436383566653134636332373937223b733a33323a226232303761336539316162393461313934633366363239306363313034623261223b733a33323a223038383838353933316463393665326231346463663438313163336530383262223b733a33323a223561666337303534356461336136383331313630313866333735373831646337223b733a33323a226439316437636262376163393863323665366163376538646636653338663633223b733a33323a226530663335303637333135386663623133616635393031633633303165643062223b733a33323a223763303461663466643534636131383366633633643661656631623834303038223b733a33323a226339306434396139616239353439316264646361386566343661356137333362223b733a33323a223662636262323837623035316636623736363233656335323337346337316531223b733a33323a226661303030373265326466316365396536306564376466323766396636643765223b733a33323a226365393132663166343637353061643063323230303734313133646563653333223b733a33323a223238353466336662613764376561626235643835326465373363333239653733223b733a33323a223735333534356430346430326331323466346563646438663533363639623462223b733a33323a223566306632623865653838666166623364656234363739656335316634646334223b733a33323a226635616635376237303463316333626632316634386330626165333036336333223b733a33323a223332373461663235383365396261633833626665336565613534376335393233223b733a33323a226533383561333137366662316130646633376137353330303533303133636363223b733a33323a223361383436396639653632303833613164373033663231306663346233616239223b733a33323a223335643136306565353965306531366436633734303636643235326465626535223b733a33323a223863303666306130333436363866393033326432353437373266323035393966223b733a33323a223138333737363539383035333866323039383839363830663564346364383065223b733a33323a226639333761373535333262313136613637333062333730626132393362623338223b733a33323a223032616138306535346266373839306566363362623432396465303035313664223b733a33323a226137366265333433353066656565363262633362393334393630666562613631223b733a33323a223466623265626630653130643461323237623634623731643138303739393038223b733a33323a226138626365373034393636653137306439303931336630363033613863656563223b733a33323a223036343662363136333765626438636364353131343036363434323364343433223b733a33323a223035626636313764386231393730346566353137306133396339356632386637223b733a33323a223835363861323033326461656139663366663365343661323833386363326365223b733a33323a226664373335366361303731356464666138666337323962666163663930303162223b733a33323a226265623635383133646638643434383937663538303030363839636439666332223b733a33323a223933353261636465646539363136313236653562313939363662353631663430223b733a33323a223130656463303562346235633935383362313337383531646130373438306432223b733a33323a226266636438343034346665396565643035313836623538633461623530356531223b733a33323a226137393437396533326362623330663762356331376466643037363363666630223b733a33323a223830383034616235636365303037653739636239653335623835323333373931223b733a33323a226364646665303362643464656239393137396562353032343163336131666334223b733a33323a223037616364346565323765396538616136393763336163336132653134396238223b733a33323a223335383061616134366437643235376134623363356431343437363736616235223b733a33323a223762356163396239333862653532353237653864383961663933386462393663223b733a33323a226235386564363862333239353362333965616465323933303834366137393736223b733a33323a223564643432383539616362643230313162356636343066613661393737366237223b733a33323a226436363531323162346435353831366137393237333439333239356263393662223b733a33323a223839303334306435643236303838326262316165633166633533303736303964223b733a33323a223833626435373331336433643430333938363135363962613639623465363666223b733a33323a223237336332356537333536663963313532656433386364396630326161333233223b733a33323a223837366136353737383934373937663932313035356230343363616232333861223b733a33323a226331643963326131376137656361306135343865393364343265643235623635223b733a33323a223337326565373266653233386161623738303933383431613038386335313763223b733a33323a223535643038633063306234323430376135323563623034613835666336633738223b733a33323a223338626535386235666166636135313365376130396132333462643232613662223b733a33323a226132663839306663396433663130643738376337663165303066373062323134223b733a33323a223035616133656636376363396464653433346434393864383361643362323237223b733a33323a223132363761346231313039373737633064633361303032323563373065336334223b733a33323a226334656664373237336332323165623263326662313863336133666164383235223b733a33323a226262316536326531323833396264386531336231616465343339653162636536223b733a33323a223365636530623661613238663361376536656665646266376134313137646164223b733a33323a223230393833643065336232666161623338306231326433643965303233383431223b733a33323a223761653962353137333737653031653063363631353738383034396335363363223b733a33323a223932643339363032306432393661386561613034326636393765343638663533223b733a33323a223030666632633736646264653534303935303136343166333463396330326137223b733a33323a223939636533333139303465396638643331613836346537316338396635376638223b733a33323a226562653930326232656633656266643631666632323865636561356431343136223b733a33323a226431373837383365303562386234376232613965316431376265633063343034223b733a33323a226466343566313831396433363731383361666632343932613732376461626238223b733a33323a223964653738383139303830666131356131306239633961303066666365656536223b733a33323a226432333832626461333932346231316137623234303732643463336166373637223b733a33323a223338623564343838346138366363343462323164623832633238666430656630223b733a33323a223638346131373639353733316631313830396434343865336663343263313732223b733a33323a223366316433343965626132393238376562623163633632363636653034643763223b733a33323a223362326333616562373133356137396435313165376237393236333530326530223b733a33323a226333616263303637656332613530393136613633393138666165646561616430223b733a33323a223033646334646564363837616637303361313862323038356664616339313038223b733a33323a226337313963373932313638613136613035653430656130653865333232336262223b733a33323a223539363264373861333466306532646561383936306432306561353461396235223b733a33323a223433373364636135383966663037333333386166353661383865656539306164223b733a33323a223734393737626633636637323237373334386230643764323663386130376530223b733a33323a223130336439333631353731376266303763613063616263393230666432656135223b733a33323a223734316436656561363162306137323433613561343135363063346664393933223b733a33323a226631376130623436353761346163616135623439306262356438623835346331223b733a33323a226237393563623465363662656138656262623934313437353638323738356665223b733a33323a223938613430656263303637363963393132303366353962336237326339333131223b733a33323a223233396138666466363730316633613230663932373239343065643434636337223b733a33323a223037643366363464303464393831316565366635616137643830343731343837223b733a33323a223362316665646330643961353963656362376132353966396566343237636233223b733a33323a223331616362303939633835386463396661633537623262663635656232636235223b733a33323a223763633935663530646639373932303137306534313930613034333833303164223b733a33323a226534373635323331656633313131316666633238326239663235353665646531223b733a33323a223130633737666261303839643262313237346362633164396364383935323639223b733a33323a223330343139333465356561356335386264303166613361396263646566356536223b733a33323a226261343639303461316535393837303333633832396262613830396135653331223b733a33323a226539376261366533653538376130656461663939636262396661653363633162223b733a33323a226534393261366535613932336639346431323336366537623538616436383964223b733a33323a226238653537626137386334366363333730363031323162366363633530643835223b733a33323a223361343263663261623837633237613261306633326161346432303663343062223b733a33323a223965386531323431626637393961356337393861373066323564623163336438223b733a33323a223233643433623333353236613230643737663965323639313830383832313965223b733a33323a223833383862393131316135633332316137316161303333643436323666643036223b733a33323a223263333063313336326639623961303932653132383762383331313131356633223b733a33323a223539656432623461623733646336636233613030653765323165383364363463223b733a33323a223533626130383830613335393433333862613239616163326130616362393763223b733a33323a223165373036323865303265303162613365636331303131656431303130363530223b733a33323a226365363631643064386431333964633635393137383539373864336534643066223b733a33323a223630313037663865633135353131313164393536323635613033376165326630223b733a33323a226335633839393438353963313838393162626166356261353563626336656431223b733a33323a223735393065633862303935626331393763336434333333356266643339393063223b733a33323a226466623134343039306233333134633931633431313738363262656666383034223b733a33323a226633383134643833306637653066656665366362333365353033373239666466223b733a33323a226461336661616439653338316630656337616633303464333537383337643834223b733a33323a223031653263623062346463663163633138303832653637663862343739303735223b733a33323a223039666165623932656530346138306132366234663931363133353963376437223b733a33323a223966663334316133316638313931356430326166363831633438306438353338223b733a33323a226530396362303632313035306364343263376530373766643365306332326666223b733a33323a226334336132343335376461343138356637333963313365333231633532333662223b733a33323a223463383637383363666561386337656237373064303365323331353065363261223b733a33323a223963653132396530336163636165666162326265343536343362366630656466223b733a33323a226436313533643161326536303266306566646564316436366134383833326433223b733a33323a223539623237323333653737366362646433383365633961373035356237363031223b733a33323a226534633338383966626265653639613466306163353966373530323161393731223b733a33323a223439666133353931363537333763353763353732363865376631323765303030223b733a33323a223963333361636261383533653265356539626137323738316464373166383563223b733a33323a223964366531626462393563313465663534646435383961363935633861323036223b733a33323a226235353138303633656239656666366331623961373539303264633863386661223b733a33323a223531306437313232386431316131656665303765326138313062636564316164223b733a33323a223534333032626465626638353333666231353735356263313430386665323730223b733a33323a223738336231646464363235303537303733613635666236326665303533623466223b733a33323a226634323831666338353136366437303066663663613934376539353433353236223b733a33323a223665613162646435303562346462636133653562646336316539333432346632223b733a33323a223537656131393661353034343964353733363238396236376230636331393237223b733a33323a223239626263336135323231383561363037313463666436656438323063393334223b733a33323a226666626461373335663462363435653633383330376334373832653635363337223b733a33323a223761613632386437366237336334656431633362323136386364366334653465223b733a33323a223836626538656332356264303063373334613739643937356331363932353231223b733a33323a226632366563323363353530636636643638333965383434346431623235316534223b733a33323a223638376533316162353431303861373132376433626565313533316433663137223b733a33323a223630656239373066383063393639653563656436363536306163656535656233223b733a33323a223435326166653233653933376435643533396564393164633938323863363064223b733a33323a223066656531356563613936653064323936346361396231636338373831656336223b733a33323a226364653762376631623066306430626135346261336332366230643063616632223b733a33323a226431396666323665323137633936363633663938613965393031633835333037223b733a33323a223431313932383839376666666238306637666239326530323932383065363365223b733a33323a223764633531653263333937666138363531363136343565336665663161633934223b733a33323a223736393038663165663535316336616635653534383939633132373634333232223b733a33323a223235306134363735626337363938613038393137653430383231306365393966223b733a33323a223138313436323063343261356335323439666535653266613032663161323866223b733a33323a226138326665343035323961653134336634313731383934646134306239333935223b733a33323a223731383366346665653330626636383939643433316333313737353135313436223b733a33323a223030633538623833313664393231333163393833623433336635356137616430223b733a33323a226165326130383032363434316361303863663530633237393432633031323935223b733a33323a226532383932323934636234363662386533666564313737626539326565343332223b733a33323a223461373364633765656336353264636464333965386132643265336635356163223b733a33323a223239663738613862313030663035623165353163656533333035343237326266223b733a33323a223933343130663332303964626462616563353834613163626235613438303265223b733a33323a223534363330643039646237663733333134316334343739653562643461613634223b733a33323a223532353138663935623130653038343962396266373362323239386337336330223b733a33323a226331383138383239336134643438633032393536643435303562626431343234223b733a33323a223435613964313262393362633537363431306664313265346566316233363037223b733a33323a223230663361383663663736396361366334373930333839336233653031323365223b733a33323a226533656532323233313135333630623664626236353435633530353130343161223b733a33323a226366316635653738393665393164626166396535623363643933613535386562223b733a33323a226665653638343631653533353534373865383031396165353933353665363165223b733a33323a223035373531633335386630316363636133353163656166336266626435303835223b733a33323a223638383435616130653937306566306630663230663263373936646162613230223b733a33323a226132313531386264346664663130303931303466666438613837373465626366223b733a33323a223634306134336636353739613566646633326430336666333530396334363432223b733a33323a223935396536616331316539386539383638653461626538386435393435343433223b733a33323a223834366338396566643836663438386562333163393034386336653035336337223b733a33323a223637363831386134393463356364616635663035323736656566383631333765223b733a33323a223665336162633363623039303436313363316639353533633731616661383262223b733a33323a223739356265353938353165316634656561353535303734613461663164666233223b733a33323a226136343038376633666533306565396439616432396364393265316434656564223b733a33323a226165383365313864336630636562353535393039663864393735666338646433223b733a33323a223338646532383335346232666137353438326361353639363330303434343833223b733a33323a226465613136663766363162363534313133623236316266643434356335643238223b733a33323a223139646237373866353630636431376332383761303338346135336130643963223b733a33323a223432323638343431343462653334336434396534353236306464373638316532223b733a33323a223734343062333034383033623432393930346461643031613566643866333464223b733a33323a223931333332366435353862333839396531336532613532373564653037336431223b733a33323a223835343335333763626239303365643638636436353838336130386630353264223b733a33323a226432366337396362663431346435363764653138313761323364353630323833223b733a33323a226136613338343763643931393235326438393732333037386235613935323736223b733a33323a223962306232303763323566653339353830613165336530393134353936393231223b733a33323a223636313963396531613937316134353965383661383437363964346235656433223b733a33323a223133306132363832633662303664373432396266333037313265333964336237223b733a33323a226238653030393635343366303234386662366230636130386333653462313632223b733a33323a223037633337373635643537366662303931613662643662316465303535323931223b733a33323a223738373861623166353831313362666434643331323961386162383665373466223b733a33323a223837633232656233636431666133316165646535663164363361323161363835223b733a33323a223734313064376464363862616334316437666436313234343234366635626637223b733a33323a223163613433343833313832316362363361353638383363356565353465306137223b733a33323a223062356361396337666432643835363865313631393432306535613865613362223b733a33323a226666373330616430653561306233653862643863336163363765613230353031223b733a33323a223736313766616632626232376433383035623332383066363833396537343937223b733a33323a226264633038383763313566353662303439383134386434356333626337613561223b733a33323a226537376363383032643432626333333161633138366464643031333633636132223b733a33323a226164303865353930653837333436633565666639343833666339393632663935223b733a33323a223735346462363530633236376366366536613164336165636235656231386232223b733a33323a226164326166663431356364633737306365666633613561393734613732636661223b733a33323a223561383534316663646638613661323131336537363661303639346132636538223b733a33323a223037643032623765373933373065663866343331373033383032333563396361223b733a33323a223239356136323230666366356564633235333265353961633931656636363261223b733a33323a223235353131333137653938643034373033633833336564656566613836326561223b733a33323a226265643839373430386637643532656434663963353062653463343931346232223b733a33323a226464653830346430366461383262393930313833356263383163323762643131223b733a33323a223732383635306233633130346464333165663562616666613862333132373030223b733a33323a226561653762333032643237343865396635666236353664383034346136303035223b733a33323a226130643831396433363633376464636639373464656666616134326662363366223b733a33323a223739336634373830626365346464643931303031323966613638646332306536223b733a33323a223637643063646135366363323262323438383838333433383764643466613237223b733a33323a223964653165353234376239633136646233333966383461356665663238373637223b733a33323a223637643465343936666433623438653336353936336130353839663234396135223b733a33323a223064626238356436363438633631623531643532633666333134656662333766223b733a33323a223766336637343763666436333130323533323264313365646536303263323736223b733a33323a226135616239313036616466626134626635633964323936613662373262303034223b733a33323a223738656637316532343539613333346334363233336566623634316336366262223b733a33323a223363613339383536616264663263316230666238333239393132663336623132223b733a33323a223563366139613365643138643061653436383338343964373638633032343762223b733a33323a223832666639333631633565353362353331383861343837366662303161323736223b733a33323a223534373630373939343232623931633966343365326432323366613832393865223b733a33323a226638373462643365346333386163303235333361343066666166383233383961223b733a33323a226530373361346534656139626161356463383730393132643235633562656664223b733a33323a223237303337623566346265306134306439303266646233323863353666393135223b733a33323a223862343035636330326165313364373538363463623936346262653031643338223b733a33323a226166346162626132356632353937653866343731396237323232613736633832223b733a33323a223233613035643665613933303338633532633731653963396164633066666466223b733a33323a223764656566663264653833326238363265336337383664653733646663346563223b733a33323a223065376138306430343266373736393066373737623138366262643434333264223b733a33323a223066386264323432663135333366636233343535396431343339376333656130223b733a33323a226337643732326134373961633332616232376162386364623565376564613231223b733a33323a226435313831386264346539616430343066663334353063646531316266653163223b733a33323a226238346366623662363931323437626631306430396131383235653837653637223b733a33323a223763613062643332353634666661383961303866336236633863633236663862223b733a33323a223361613732373136346530643335663835316262643337336566653765653966223b733a33323a223566636332626665663839656232396464373663363130316232356465353162223b7d733a343a2268617368223b733a36353a2235666363326266656638396562323964643736633631303162323564653531622d3361613732373136346530643335663835316262643337336566653765653966223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d4c616d696e61735f56616c696461746f725f437372665f73616c745f766f636162756c617279666f726d5f637372667c433a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a323535323a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a32383a7b733a33323a226137323662376565623161336536656162373130633066323636343238336232223b733a33323a223434633038616531336131613936323434396337333435633136646665393530223b733a33323a223931643330623936623232323764346234313630383462633239666438393931223b733a33323a223266653839363932666563613661343037663763636438396531303664336636223b733a33323a223435343834393463373630626439663665383466386631653065306339336638223b733a33323a223961303039626163316530356133386163343438663536643235653633386461223b733a33323a226436386230383530376436393833643637653039346534336666343333633963223b733a33323a223333333165343433383639316464383631663061353265616530306231373363223b733a33323a223734646439646566663534633538353338333030316438303439343237613438223b733a33323a226436636633626239373263353539666461343134626264316365393561393835223b733a33323a223635373136336366626463633831643438616338663630633530313136366334223b733a33323a223333383863393861306339393538376236323434303366326366316236366337223b733a33323a223730306436363562396639316633616430313634363832623965313936393566223b733a33323a223130346539623863613034663839336537613565636332613835656331316462223b733a33323a223936633435656661386437356661343737353338336530393539656361343131223b733a33323a223562333563353836656433643034306133623934633965316137313464663735223b733a33323a223431396532653864643436376134303161323432373634623031363932646331223b733a33323a226235626363653164393661333132333133663035623331316233626134666364223b733a33323a223061353531373031396236646631363831666235663065343330636364306366223b733a33323a223464303132333161356333633831666335626435346461393763353963333633223b733a33323a226237326330656266383238373539343431363534343830636135343032396530223b733a33323a226332326464613538316663356535623237616334373165383065343739326663223b733a33323a223532613131626634313862353138303238643662303163663132343862313939223b733a33323a223337373166663333626132333733613736623561343033626634313332393861223b733a33323a223264316136386238326432346162666135353163303865313436383234363432223b733a33323a223061333139366332373065633164373537646132653131333633633062306337223b733a33323a223930373762646161343832653266613737316564623236316434313339306265223b733a33323a223737313236303563333739323336666133363532336134343332393531616435223b733a33323a223036376532323435316665343636326438623038336264323231343065316539223b733a33323a223565653831643239356133326635303136386637666639396161303030633065223b733a33323a223536326438616661306331363364623864393332323933333232623362313935223b733a33323a223761656362316432356162356664333134666537313431383364613936376263223b733a33323a223065323765393035633838663334626338303232636136336366643237656534223b733a33323a223738613431356166326264343261613237336433323634336338623930326562223b733a33323a223432633361383362366163626130353834353365363631316131303765396632223b733a33323a223437653236396139363131653966373630656436313439363235663439336364223b733a33323a223039313761323533653266613530383565346232653234663664353832373639223b733a33323a223632396238346338303662626237353662633563636466306435363432633962223b733a33323a223539626463386161353735373038623033656563626135393434363738366461223b733a33323a223130313136303035383863623330353037663864623730383136373365363566223b733a33323a226233366564373535633638653838383061326133393532333263393436336137223b733a33323a226336393531623962653036343338636333363134663364383365633836623663223b733a33323a223462633338306461666630646633396564363634316230663163346536323730223b733a33323a223031613866316231313631333838623063613862646438653432343035313066223b733a33323a226338633038383837353132393639303033613661653239646665393635323838223b733a33323a223461663465363337386464653633613861303431653938663837613162636462223b733a33323a223464633164333437656461386136613030633632313337383734373063623135223b733a33323a226263333761313735643363356535663830633132613231396438323837333833223b733a33323a226539343466376564356330633661393737383933343934333563633665323336223b733a33323a226531656632316533373930373764616464316465383362306631633731616662223b733a33323a223933396431313765643763323761646364373737643662366561393233363763223b733a33323a226138366439663066346538323431306263653030393662343636623466363130223b733a33323a223034393661353934663635363265636335393030353932663931633538313166223b733a33323a226433626561323837656231313761303162346330363365623263326630386138223b733a33323a226664663132613132653131613834346539343236333833386336326133653933223b733a33323a223433373432653866303732313565336435623265636435383733633661343038223b7d733a343a2268617368223b733a36353a2234333734326538663037323135653364356232656364353837336336613430382d6664663132613132653131613834346539343236333833386336326133653933223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d4c616d696e61735f56616c696461746f725f437372665f73616c745f7265736f7572636574656d706c617465696d706f7274666f726d5f637372667c433a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a3339313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a313a7b733a33323a223963323634343566383732353061613731623833663338376536633761666566223b733a33323a223962333464646331383638383931303330336639376436333634626638633132223b7d733a343a2268617368223b733a36353a2239623334646463313836383839313033303366393764363336346266386331322d3963323634343566383732353061613731623833663338376536633761666566223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d, 1605376212),
('b9kf4b025d2urg4ef796dp6fdo', 0x5f5f4c616d696e61737c613a333a7b733a32303a225f524551554553545f4143434553535f54494d45223b643a313630363036333837312e33373630323b733a363a225f56414c4944223b613a313a7b733a32383a224c616d696e61735c53657373696f6e5c56616c696461746f725c4964223b733a32363a2262396b663462303235643275726734656637393664703666646f223b7d733a34323a224c616d696e61735f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313630363036373437313b7d7d4c616d696e61735f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f637372667c433a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a3339313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a313a7b733a33323a223565613336313432666265366665636130653936633063343064356132356661223b733a33323a226436313761373237313334346166383232376331616137393631666139303661223b7d733a343a2268617368223b733a36353a2264363137613732373133343461663832323763316161373936316661393036612d3565613336313432666265366665636130653936633063343064356132356661223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d, 1606063871),
('brq1k9i2oos2259lgosu5o8ela', 0x5f5f4c616d696e61737c613a323a7b733a32303a225f524551554553545f4143434553535f54494d45223b643a313630363036333737372e3938353332373b733a363a225f56414c4944223b613a313a7b733a32383a224c616d696e61735c53657373696f6e5c56616c696461746f725c4964223b733a32363a22627271316b3969326f6f73323235396c676f7375356f38656c61223b7d7d72656469726563745f75726c7c733a34383a22687474703a2f2f6c6f63616c686f73742f6f6d656b612f61646d696e2f6974656d3f6974656d5f7365745f69643d3430223b, 1606063778),
('d2oc9ka4nj2i4sh0p8nbltgie2', 0x5f5f4c616d696e61737c613a343a7b733a32303a225f524551554553545f4143434553535f54494d45223b643a313630363132333038312e3737313637393b733a363a225f56414c4944223b613a313a7b733a32383a224c616d696e61735c53657373696f6e5c56616c696461746f725c4964223b733a32363a226c3072306c6f3065646e6b6771727131723230387269336e7268223b7d733a34323a224c616d696e61735f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313630363132323632333b7d733a34343a224c616d696e61735f56616c696461746f725f437372665f73616c745f636f6e6669726d666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313630363132363638353b7d7d4c616d696e61735f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f637372667c433a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a3339313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a313a7b733a33323a226266663865666264646336343365653331396139343431336535333561386236223b733a33323a223639373735353534396661313961383339623466333531303063633138333733223b7d733a343a2268617368223b733a36353a2236393737353535343966613139613833396234663335313030636331383337332d6266663865666264646336343365653331396139343431336535333561386236223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d4c616d696e61735f417574687c433a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a3232333a7b613a343a7b733a373a2273746f72616765223b613a313a7b733a373a2273746f72616765223b693a313b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d4f6d656b614d657373656e6765727c433a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a3230353a7b613a343a7b733a373a2273746f72616765223b613a303a7b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d72656469726563745f75726c7c4e3b4c616d696e61735f56616c696461746f725f437372665f73616c745f636f6e6669726d666f726d5f637372667c433a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a323233323a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a32343a7b733a33323a226534396165626437623430313665623331666665653230623339306339663536223b733a33323a226234363665356662643831643634643861366239616238386165623433646665223b733a33323a223232383138663737343435343661663432336639353362386439616666343165223b733a33323a226332383163393030633032326364353363626133393137653836323535393161223b733a33323a223666646663396535396238396663613434623738396363636238656132623433223b733a33323a223462646139376437326536383536303363333164663932356435303861373435223b733a33323a223663363935616363323933633432383536633131393664616631383661616463223b733a33323a226165363163613738363165346334323762663066613235326264643135323736223b733a33323a223831646633373365333438383664373765663663326534646439373430613738223b733a33323a226665373038363430626438653939626466643236656138636230613938303561223b733a33323a223832383565636433333463333637396463666164303964616461373066646532223b733a33323a226438343333346638383164643232383239323662303536663437363265313033223b733a33323a223238333333326364373638343532663161343164663532306161643731366139223b733a33323a223739383431356335393230616462386138386430626130306634623765323661223b733a33323a226166633863313466386635376363316138316564643732643039393862373338223b733a33323a223939653039393031306636363663323530613061656262396233386232623433223b733a33323a226530396231636561363635373731646464623632333566336135363961653966223b733a33323a223938373964653661353339616331336562653436323163393337666630313065223b733a33323a223837356234336335636334356433643462623538343637353661373133353230223b733a33323a226561633537366330353364383736623330306436663336353362393936313966223b733a33323a223533373235333062336135383235343238313738306338333337663332383963223b733a33323a223839323362663834356331313237316438386431366538323531313138363635223b733a33323a226563633734633564313261636331656632613331646131316333396339653532223b733a33323a223435333762343433656435653666383166663531623662373739376563343431223b733a33323a226133636466363361633964306139386465376466663933643761623962623162223b733a33323a226633646461353838623734376666366537343333636665393435326138313666223b733a33323a223664616236643837363164396463653331316263306235373961333164366666223b733a33323a226133386339626639646238336132633532356439336365636664366136383330223b733a33323a223663326234323136323935396264336263353063313931373062623034353131223b733a33323a223036643663623963323966356661633163363237633630623236383130346232223b733a33323a223664396538353964313930663539636431663063366233383239326336343862223b733a33323a226236363530653532393562633061633435356332333636323362353565383936223b733a33323a226361663135303138386134633838306362346334616231363937633163393465223b733a33323a226264663336616639653738383538316433633235386634316633346265626133223b733a33323a226134313766666562653330376432333761373731316663396438636430373338223b733a33323a226262383836313638303833383839643730353234666434386237316662376663223b733a33323a223832313762643535323461393234333138353361636266303362656363306433223b733a33323a226462393030343865383964356366323766323139633437646365626634653034223b733a33323a223036333938623133313036343739663464323066663638303065356464326633223b733a33323a223765346230366665396264326535643464656236393165323236626332643936223b733a33323a226633376265623664363162643933306561313138666531646230346564636231223b733a33323a223832393564393965343263383663373138323163386662323030343731383434223b733a33323a226536393337346232633863393062623164616662623231656534613834626336223b733a33323a223034396162653666646435646432633731656134306436623639623663393561223b733a33323a223862323837396566613736633463376530663935363739316632643235316638223b733a33323a226430366334386436333933623538653338323032636539306433343832643565223b733a33323a223632383331316332386338653634383230386432653537343335333163333131223b733a33323a223334316235306263333961623834323533646334623964333337383431646537223b7d733a343a2268617368223b733a36353a2233343162353062633339616238343235336463346239643333373834316465372d3632383331316332386338653634383230386432653537343335333163333131223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d, 1606123085),
('d3fbq36ps0lqfata0td9r91nci', 0x5f5f4c616d696e61737c613a323a7b733a32303a225f524551554553545f4143434553535f54494d45223b643a313630363036333837312e3030323433393b733a363a225f56414c4944223b613a313a7b733a32383a224c616d696e61735c53657373696f6e5c56616c696461746f725c4964223b733a32363a22643366627133367073306c7166617461307464397239316e6369223b7d7d72656469726563745f75726c7c733a34383a22687474703a2f2f6c6f63616c686f73742f6f6d656b612f61646d696e2f6974656d3f6974656d5f7365745f69643d3430223b, 1606063871),
('h3ouo8945m5f2irpeo9eol5ao7', 0x5f5f4c616d696e61737c613a323a7b733a32303a225f524551554553545f4143434553535f54494d45223b643a313630363036333737342e3431333133343b733a363a225f56414c4944223b613a313a7b733a32383a224c616d696e61735c53657373696f6e5c56616c696461746f725c4964223b733a32363a2268336f756f383934356d356632697270656f39656f6c35616f37223b7d7d72656469726563745f75726c7c733a34383a22687474703a2f2f6c6f63616c686f73742f6f6d656b612f61646d696e2f6974656d3f6974656d5f7365745f69643d3430223b, 1606063774),
('mo6nq9ngdl1stdfb6k2gngqmns', 0x5f5f4c616d696e61737c613a323a7b733a32303a225f524551554553545f4143434553535f54494d45223b643a313630363036333839342e3337343735323b733a363a225f56414c4944223b613a313a7b733a32383a224c616d696e61735c53657373696f6e5c56616c696461746f725c4964223b733a32363a226d6f366e71396e67646c317374646662366b32676e67716d6e73223b7d7d72656469726563745f75726c7c733a34383a22687474703a2f2f6c6f63616c686f73742f6f6d656b612f61646d696e2f6974656d3f6974656d5f7365745f69643d3430223b, 1606063894);
INSERT INTO `session` (`id`, `data`, `modified`) VALUES
('ogqjoqpifb5hafg5pm0sn7vc8b', 0x5f5f4c616d696e61737c613a333a7b733a32303a225f524551554553545f4143434553535f54494d45223b643a313630363036333839342e3732363235323b733a363a225f56414c4944223b613a313a7b733a32383a224c616d696e61735c53657373696f6e5c56616c696461746f725c4964223b733a32363a226f67716a6f7170696662356861666735706d30736e3776633862223b7d733a34323a224c616d696e61735f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313630363036373439343b7d7d4c616d696e61735f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f637372667c433a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a3339313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a313a7b733a33323a226232383663623836346137356166303265336530326664393562363832383736223b733a33323a223735313464313362313836393336646461643861353738346265353830646466223b7d733a343a2268617368223b733a36353a2237353134643133623138363933366464616438613537383462653538306464662d6232383663623836346137356166303265336530326664393562363832383736223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d, 1606063894),
('otl7v2r5pijd0so1aql7k1ku4a', 0x5f5f4c616d696e61737c613a333a7b733a32303a225f524551554553545f4143434553535f54494d45223b643a313630363732323635382e3837343139383b733a363a225f56414c4944223b613a313a7b733a32383a224c616d696e61735c53657373696f6e5c56616c696461746f725c4964223b733a32363a226837766e32686e76336f6339756d39366a6a68746a727530376a223b7d733a34323a224c616d696e61735f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313630363732363235393b7d7d72656469726563745f75726c7c733a32383a22687474703a2f2f6c6f63616c686f73742f6f6d656b612f61646d696e223b4c616d696e61735f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f637372667c433a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a3437313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a323a7b733a33323a226439646431323938613665346331643834316535343334313565356339303734223b733a33323a226364386461643834316331376433643337353964646566653061313465643637223b733a33323a226361343435363932313237313532666561303166646433613361303131323632223b733a33323a223030353764656537643434313233373235376638376335313361303735346337223b7d733a343a2268617368223b733a36353a2230303537646565376434343132333732353766383763353133613037353463372d6361343435363932313237313532666561303166646433613361303131323632223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d4f6d656b614d657373656e6765727c433a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a3230353a7b613a343a7b733a373a2273746f72616765223b613a303a7b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d, 1606722659),
('pse9gl0ekol2r37pfp15dq1nat', 0x5f5f4c616d696e61737c613a333a7b733a32303a225f524551554553545f4143434553535f54494d45223b643a313630353531323934392e3431383938373b733a363a225f56414c4944223b613a313a7b733a32383a224c616d696e61735c53657373696f6e5c56616c696461746f725c4964223b733a32363a2264736d6d6b61676836346c76716a64643568696e73656b36326c223b7d733a34323a224c616d696e61735f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313630353531363533393b7d7d72656469726563745f75726c7c733a32383a22687474703a2f2f6c6f63616c686f73742f6f6d656b612f61646d696e223b4c616d696e61735f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f637372667c433a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a3437313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a323a7b733a33323a223939396337666535353235386539363235353238653062333761336662333538223b733a33323a226164373339613633376164353134373165326139323133316639343839326137223b733a33323a226331343162303331396562303734636565623231356430303065306632623730223b733a33323a223962323565623866663836333831313135626632666262666637646362303433223b7d733a343a2268617368223b733a36353a2239623235656238666638363338313131356266326662626666376463623034332d6331343162303331396562303734636565623231356430303065306632623730223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d4f6d656b614d657373656e6765727c433a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a3230353a7b613a343a7b733a373a2273746f72616765223b613a303a7b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d4c616d696e61735f417574687c433a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a3232333a7b613a343a7b733a373a2273746f72616765223b613a313a7b733a373a2273746f72616765223b693a313b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d, 1605512950),
('r4pf6h35au06ehq0nmmman4qcu', 0x5f5f4c616d696e61737c613a363a7b733a32303a225f524551554553545f4143434553535f54494d45223b643a313630363038333134352e39383633363b733a363a225f56414c4944223b613a313a7b733a32383a224c616d696e61735c53657373696f6e5c56616c696461746f725c4964223b733a32363a22766b636b643870323338736d6e747475756e3971716f65637672223b7d733a34323a224c616d696e61735f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313630363035333032383b7d733a33323a224c616d696e61735f56616c696461746f725f437372665f73616c745f63737266223b613a313a7b733a363a22455850495245223b693a313630363038353931333b7d733a34343a224c616d696e61735f56616c696461746f725f437372665f73616c745f636f6e6669726d666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313630363038363734313b7d733a35333a224c616d696e61735f56616c696461746f725f437372665f73616c745f7265736f7572636574656d706c617465666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313630363036333830313b7d7d72656469726563745f75726c7c733a32383a22687474703a2f2f6c6f63616c686f73742f6f6d656b612f61646d696e223b4c616d696e61735f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f637372667c433a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a3339313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a313a7b733a33323a223363613036613632343833313138666566383332336331376339376334313966223b733a33323a226264393639613961376163666136636430316466643565303761356631643735223b7d733a343a2268617368223b733a36353a2262643936396139613761636661366364303164666435653037613566316437352d3363613036613632343833313138666566383332336331376339376334313966223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d4c616d696e61735f417574687c433a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a3232333a7b613a343a7b733a373a2273746f72616765223b613a313a7b733a373a2273746f72616765223b693a313b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d4f6d656b614d657373656e6765727c433a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a3230353a7b613a343a7b733a373a2273746f72616765223b613a303a7b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d4c616d696e61735f56616c696461746f725f437372665f73616c745f637372667c433a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a3339313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a313a7b733a33323a223836356637653337663734396265343465313639306666303962383435306135223b733a33323a223639316335663032353338363066393238643935633439353664313038666264223b7d733a343a2268617368223b733a36353a2236393163356630323533383630663932386439356334393536643130386662642d3836356637653337663734396265343465313639306666303962383435306135223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d4c616d696e61735f56616c696461746f725f437372665f73616c745f636f6e6669726d666f726d5f637372667c433a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a323037323a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a32323a7b733a33323a223662616462386133613639633435333134313232313634353337316634646634223b733a33323a226266363032333236363164393435623638313532613861376565623965316362223b733a33323a223865626530393432636633376330383238643334643365636333633164653338223b733a33323a223937643233373666633963313438653835633236323364613862623336383365223b733a33323a226635333530633738356263326631616536653339393264646137643934303461223b733a33323a226634363363353535343465316264623339303266376431643232643463366633223b733a33323a223665646233326564643366366534616565396662366664616662626565373834223b733a33323a223035326435363466633464633330313438636334643964316431633732613137223b733a33323a223665366131333737626136363165333936356136626538616533636564616238223b733a33323a223134613933373431396138623266643961613666393830656461623763653638223b733a33323a223961306431656135323365616461633939623864653363626465363364353231223b733a33323a223339663462623436666336633138393866326365626335633838383031643461223b733a33323a223965633264626432353331613665616264636664366430636135383035396632223b733a33323a223863613437643130376131313963376638333933643866373261613635616231223b733a33323a223763333333386663366239383637303361636164656162643734643631383161223b733a33323a223565373566386332346562343935303636613637643537356566383239656439223b733a33323a223263633932363830396363343832383066393032376331343431663065303165223b733a33323a223663633737383866396331626637376263636532623866373136373939336439223b733a33323a223736386165623334663964613564336635613336386232343632366439313165223b733a33323a226366633033336466383066666333323863623934333630333330666638623031223b733a33323a223561376632323866643330333238663237666233663963343832353131333632223b733a33323a223838396232396333396231316634366666363039646339396432356133383166223b733a33323a226530373537376435393261383231386130623338386262333038363139336236223b733a33323a226135303337366232346333393835656236323738333936653932376664383232223b733a33323a223961353264303361653533303038646262656366366537613262363766643032223b733a33323a223562303461643638303730393139346162646265343435323165623035633033223b733a33323a223631333138333433623432623063383861393464663733323730363833313062223b733a33323a226137343238363730646464373864613039396462323864646130303963393938223b733a33323a226564333631373736643164353835333438383037366464623739373763376639223b733a33323a226533346535393233323130303835613030346661636263636365613665306633223b733a33323a223336633664663334313935373537636231613761633635663964326232316331223b733a33323a226539396131373836636333343838333939376231393838643839643536643564223b733a33323a226239336563636233633737333235353730363632653364633735336361356537223b733a33323a223139336638343564623137326466313465306135326162303665306637346464223b733a33323a226164643439373765656536386536336338613965373637326133353130343265223b733a33323a226465346665333766396631333136363734383361363661343535396464396362223b733a33323a223865376135663961623162306633373066303134353961383332386439353135223b733a33323a223864633439626634356562313037386164623237653965643334393230656564223b733a33323a226165313635346633623137303032626361303335633237376537616331626265223b733a33323a226465356166343462303131313132366365633830326137646132383964663830223b733a33323a226134343764616466326330613863343366336666623032363265373736626162223b733a33323a223732353430663237316230663463356462303635353937656465376166383632223b733a33323a223932623730386331363537366331656534343463396638633738353832373031223b733a33323a223430653966653439376663626538323835626561373038323430363030613036223b7d733a343a2268617368223b733a36353a2234306539666534393766636265383238356265613730383234303630306130362d3932623730386331363537366331656534343463396638633738353832373031223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d4c616d696e61735f56616c696461746f725f437372665f73616c745f7265736f7572636574656d706c617465666f726d5f637372667c433a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a3437313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a323a7b733a33323a223035646364653433326636376330623335393432666663356662343631396230223b733a33323a223330353161313738353437313733383633323837663139376665323764393333223b733a33323a223137666235663662613338323262313630653430653133313431356536383135223b733a33323a223263393038643463323730636234373961626632343937336437386265623064223b7d733a343a2268617368223b733a36353a2232633930386434633237306362343739616266323439373364373862656230642d3137666235663662613338323262313630653430653133313431356536383135223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d, 1606083146),
('ri03fak57elvs8ihab6crvk97o', 0x5f5f4c616d696e61737c613a333a7b733a32303a225f524551554553545f4143434553535f54494d45223b643a313630363036333737342e3739383134373b733a363a225f56414c4944223b613a313a7b733a32383a224c616d696e61735c53657373696f6e5c56616c696461746f725c4964223b733a32363a227269303366616b3537656c76733869686162366372766b39376f223b7d733a34323a224c616d696e61735f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313630363036373337353b7d7d4c616d696e61735f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f637372667c433a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a3339313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a313a7b733a33323a223762623435313839663166363230313866646332666364386262616236323565223b733a33323a226438643838393562366336363636653238383834646238653831316438653466223b7d733a343a2268617368223b733a36353a2264386438383935623663363636366532383838346462386538313164386534662d3762623435313839663166363230313866646332666364386262616236323565223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d, 1606063775),
('tas9m1klodq080bo94o1r86i35', 0x5f5f4c616d696e61737c613a393a7b733a32303a225f524551554553545f4143434553535f54494d45223b643a313630353439323233342e3933323036333b733a363a225f56414c4944223b613a313a7b733a32383a224c616d696e61735c53657373696f6e5c56616c696461746f725c4964223b733a32363a2275676e6d397136686c6f7538677665703064756a37646d723830223b7d733a34323a224c616d696e61735f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313630353437353333313b7d733a34343a224c616d696e61735f56616c696461746f725f437372665f73616c745f636f6e6669726d666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313630353438353239313b7d733a35333a224c616d696e61735f56616c696461746f725f437372665f73616c745f7265736f7572636574656d706c617465666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313630353438353135313b7d733a34373a224c616d696e61735f56616c696461746f725f437372665f73616c745f766f636162756c617279666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313630353438343637393b7d733a33323a224c616d696e61735f56616c696461746f725f437372665f73616c745f63737266223b613a313a7b733a363a22455850495245223b693a313630353438353235313b7d733a34353a224c616d696e61735f56616c696461746f725f437372665f73616c745f7369746570616765666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313630353438353239313b7d733a35303a224c616d696e61735f56616c696461746f725f437372665f73616c745f736974657265736f7572636573666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313630353438353834353b7d7d72656469726563745f75726c7c733a32383a22687474703a2f2f6c6f63616c686f73742f6f6d656b612f61646d696e223b4c616d696e61735f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f637372667c433a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a3339313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a313a7b733a33323a223864303766373165636561653935376565396336343131633462333361646430223b733a33323a226437646661303334653962376465663439303164663836346165306439623962223b7d733a343a2268617368223b733a36353a2264376466613033346539623764656634393031646638363461653064396239622d3864303766373165636561653935376565396336343131633462333361646430223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d4c616d696e61735f417574687c433a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a3232333a7b613a343a7b733a373a2273746f72616765223b613a313a7b733a373a2273746f72616765223b693a313b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d4f6d656b614d657373656e6765727c433a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a3230353a7b613a343a7b733a373a2273746f72616765223b613a303a7b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d4c616d696e61735f56616c696461746f725f437372665f73616c745f636f6e6669726d666f726d5f637372667c433a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a333735323a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a34333a7b733a33323a223264336239323137393735386564313232623330383433353536616132616661223b733a33323a223134303961376134326438326562356565316165666232376133646664353230223b733a33323a226337646536313133303764363130396437316233666464333337316366316332223b733a33323a226433303064333930303431663036396163373632383630306666373163616634223b733a33323a226633336230663835613164326166343633613234326237343936373234623439223b733a33323a223162626239366633386234396665636231616134303236386336616534306632223b733a33323a226662306363306539626633356364356562396563396666663639333131613639223b733a33323a226366636233633233616230373934383031636236326537333431333361336165223b733a33323a226335646266343531656130656332336461663062366265316661636166326231223b733a33323a226663333165343264653162316431316132393737383162393165383061356234223b733a33323a226164663738626334333638373966633265623835616138616131303166633439223b733a33323a223062303362626563313265353438396233646233303931653839313930333464223b733a33323a226633623861313463653462356437643962376462303266383436343463353635223b733a33323a226263353633333636366231306234666362363935313065663435376339336661223b733a33323a223536383037643963656565666664306462373338303566306533346532316461223b733a33323a226666383234313636373538633536343665353732353532626139326332303664223b733a33323a226334376661646339326664316638643938656232303361393335396363623562223b733a33323a223365383866666466316537353037653336303539396634363163336532356134223b733a33323a223763643666643264323934646366343265373833366631376636396162346466223b733a33323a226666306135383131633634663966363066653361613233643930653536336466223b733a33323a223466613863613738316562393631393031656632376163383063653738326563223b733a33323a226461353330656636376262616264386561666362383030366365333262393139223b733a33323a226165623033303063613536643865616363303036393164633835386438383431223b733a33323a223964306566623966313936313632326365343833303330306638313135646130223b733a33323a223336633034376430366561656534636264633363613530653532326534306430223b733a33323a223630393362333964663362303531653564643265356439366665353837373666223b733a33323a223964396162336266666463393431376232353536656663333337363666326165223b733a33323a223565666565313537343866396430303633343763646564636337643339363066223b733a33323a226433373636663934646538333963383839323165663332626235326163623361223b733a33323a226438356262353534303632336537356365623562393264346530393465333035223b733a33323a226631666436643565343265663535303264633839613835326637323666303666223b733a33323a223561633233333566353539393566373262626366303834306132653639623265223b733a33323a223161373330663265386535306538373735636238663139363431653339636566223b733a33323a226361666164613730633766663961363531396539356661316564343936356432223b733a33323a223332386533353632373537356461616437643066653332323237386166663936223b733a33323a223737383561663934623335363837656536313930393130663565656130326665223b733a33323a226465626437356537656130646239633230396238643962643733356538366233223b733a33323a226530383837653232363332613336393435646431333331653738313936376236223b733a33323a223334626361393736303034643066363333393663626262666466623430383830223b733a33323a223632623965326234366638363661356130333365346137366436313638346535223b733a33323a226365376131383666356438306563383533666238666138623534316132643133223b733a33323a226432663035363566383962613731343832306631393532643630356361666365223b733a33323a223133396632616132363630663438303837373739363838303035313564323537223b733a33323a223165373133636162336633373565313130663633396665616634326637653861223b733a33323a226532346165656132636332643333336535636239636166636638663833633666223b733a33323a223136303733383131623366396365386635636362656566383337316239666234223b733a33323a226436306266663064353731303139343937666134353430303864333763383637223b733a33323a223735353561326533626133346363653939323864303634316239663666333161223b733a33323a223266313736353230666566333138333337626162313566653565346530373134223b733a33323a223738303834356536393262663631313161393638653838373263306536303966223b733a33323a226230343262643136663932313561626239626264646665633734373935396138223b733a33323a223436363838353166616233646564646461326631323638396261353366633866223b733a33323a223262333266633036373563346365613966356633356239633938383466316538223b733a33323a226466363432393161626163616566643366323934393663336464383261666338223b733a33323a223239393239636434636563653832316233383266373762393461653737393831223b733a33323a226432356363326564323661356166616664663964346135396239386462396132223b733a33323a223739313265316262343631386463666262346631663637636161393237613663223b733a33323a226364666635643165663962663962636433323366303463646261613764373436223b733a33323a223865306162663734333463393937653361366439313938643739303035333836223b733a33323a223530393037653530373331626366613362383436626465383030303931363563223b733a33323a223731626432613630653931343836346565643066303336336434316166313939223b733a33323a226236313235393263316466643130633164376566626634363932306662653133223b733a33323a223263363966313662323866623830346231376439386366393563353233656266223b733a33323a226337383038353365333161653364643664623935663262663635373563626232223b733a33323a223065663830303264343138396661333361393966353837363265626337663936223b733a33323a223335306435616466636561346561306331323434356133343530333630323037223b733a33323a226464363361383932383436316363373538373861336134313132323239363263223b733a33323a226438386331356338346364386665623335303432613237653738303631396362223b733a33323a226137623133313238653564663865386131613035343737303932626565666562223b733a33323a226538623263663134623630623632613737313633613865303833656566623465223b733a33323a223033303961613030626662393965633436346362343361353230323637656663223b733a33323a223664333063616666663966373834396636303836386138633934303330373839223b733a33323a223062326339363830633335383163636339646366343364383235646638343538223b733a33323a223038623237326462333736363534333534353766303862376532623531353539223b733a33323a226262343266383230396536643334356230336437303431343537623235366437223b733a33323a223032343634363463326263633465356331363732343730626436316532613532223b733a33323a226464376565373766646532616631306235323638366336626665663561623162223b733a33323a226231326135326239373533373361306437373539376462633333376331626139223b733a33323a226333346538383530616664663663343331396666316264323838386531336465223b733a33323a223531643262636130333364313837666330336232633863396631316632626264223b733a33323a223038663834373733663439313839336365333965333031313964306566383966223b733a33323a226337663834343965306636643636316134306539363739656436363962626363223b733a33323a223231666462636262376464626162393037646531346333646239363831366338223b733a33323a223562326431613138303564393266633032616463616532343739303530663561223b733a33323a226238643135313136343435613839356335393930363363323832323032366531223b733a33323a223162373131623064323238633664656136663230633763313166636165376230223b7d733a343a2268617368223b733a36353a2231623731316230643232386336646561366632306337633131666361653762302d6238643135313136343435613839356335393930363363323832323032366531223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d4c616d696e61735f56616c696461746f725f437372665f73616c745f7265736f7572636574656d706c617465666f726d5f637372667c433a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a313139323a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a31313a7b733a33323a223963616637613466396462373062663131623439396136643234333666623764223b733a33323a226131323836626163336533666364666139396339383962363262356238663461223b733a33323a223931616536316361316538373832613132373162383665383635316136393237223b733a33323a226633333263383933366238636130346238636531306364636362653466613531223b733a33323a223364333237616365313236663434343264313232323732633966343665323038223b733a33323a223731633361303665633133363164633132393065316463353563666662666665223b733a33323a226130303630386165643365366238386466353134383563363133396261653664223b733a33323a223261343863666161376438323639656632323766393263666566376661613564223b733a33323a226536343236623635613432386566613338303136396531323433303562663733223b733a33323a226134363638333836363537623733323437383765343635383338393637323963223b733a33323a226231316635333133653331623336323165363636663033323539393565343461223b733a33323a223965333336396364636465626663383330333036313338653034353331353331223b733a33323a226533383538313732363833373765303636363335623463303762306438363061223b733a33323a226463616131333339323261353164336238356635393836626165373738366233223b733a33323a223666623631366337616236643833303961306565663437643634393361663131223b733a33323a223336656261386336366361343965633061313066366232386233306131396465223b733a33323a226365633138336465326165386630373765633135633561613261386166303261223b733a33323a226361313966623534373264393832393966366436616632313737626534336337223b733a33323a223262343534353463653633366236616432336466376432306332653065336137223b733a33323a226463646539333966613232326436373737643034303161343062353032646139223b733a33323a223561393365653538346165333437333565333035613761313266643433303338223b733a33323a223731613936343764636664303030376562616461643132346632333231373533223b7d733a343a2268617368223b733a36353a2237316139363437646366643030303765626164616431323466323332313735332d3561393365653538346165333437333565333035613761313266643433303338223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d4c616d696e61735f56616c696461746f725f437372665f73616c745f766f636162756c617279666f726d5f637372667c433a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a3535313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a333a7b733a33323a226339633762613763663561396636643430323037313533336339326530646536223b733a33323a226132303937336663396261376235333665313833353631663935313661316366223b733a33323a226234623036646333376530353462323934333539326664663630346664316661223b733a33323a226461393632363231663761396636393133356330313331656532313934373630223b733a33323a223231633030633437646130343432366639373534386364396466323236386539223b733a33323a226466386639366232376634396136383337633462386232623033303934393538223b7d733a343a2268617368223b733a36353a2264663866393662323766343961363833376334623862326230333039343935382d3231633030633437646130343432366639373534386364396466323236386539223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d4c616d696e61735f56616c696461746f725f437372665f73616c745f637372667c433a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a3535313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a333a7b733a33323a226534353432373466666661376362303364333964663430656239313831306363223b733a33323a226231336535313739333261643338633538353932373366656238376231336135223b733a33323a223365363437613535306234306430366465393364323666353162353337386639223b733a33323a226461613338326665383033373862663563303865636164336135343638313038223b733a33323a223039643632643765663961366633653761393362303330306563306232633330223b733a33323a223331396131313232363034373266656137613139373866313235623737373132223b7d733a343a2268617368223b733a36353a2233313961313132323630343732666561376131393738663132356237373731322d3039643632643765663961366633653761393362303330306563306232633330223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d4c616d696e61735f56616c696461746f725f437372665f73616c745f7369746570616765666f726d5f637372667c433a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a3437313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a323a7b733a33323a226434363835313365373435633232313331663761376662396264373431323435223b733a33323a223234333865356361626163376162326262616261353965663066376363396338223b733a33323a223930383135653230313731306132393430393665303932643533623061363435223b733a33323a223539383830613937656664336262356134616535616137363130316238386561223b7d733a343a2268617368223b733a36353a2235393838306139376566643362623561346165356161373631303162383865612d3930383135653230313731306132393430393665303932643533623061363435223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d4c616d696e61735f56616c696461746f725f437372665f73616c745f736974657265736f7572636573666f726d5f637372667c433a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a3633313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a343a7b733a33323a223462326130616663656166623634336130386662653665626364333563373936223b733a33323a226364623462666233376339653135396166353730376233343332393137303337223b733a33323a226365343038656630333939643334623264313635306664373666666364383466223b733a33323a226134333136363331386633353261396665393533303132323739636532653764223b733a33323a223066653035343238633936636533363961383433333262353365323935633366223b733a33323a223930643730376336353134336465383931376365616638373633613530666230223b733a33323a226434343333326163343530643136386636386261376639643132323937613339223b733a33323a226632303032373961326238386230363539393231623337376534653765393336223b7d733a343a2268617368223b733a36353a2266323030323739613262383862303635393932316233373765346537653933362d6434343333326163343530643136386636386261376639643132323937613339223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d, 1605492241),
('u6li8dfs1675880v8ouar0uks6', 0x5f5f4c616d696e61737c613a323a7b733a32303a225f524551554553545f4143434553535f54494d45223b643a313630363036333736362e3537313937383b733a363a225f56414c4944223b613a313a7b733a32383a224c616d696e61735c53657373696f6e5c56616c696461746f725c4964223b733a32363a2275366c69386466733136373538383076386f75617230756b7336223b7d7d72656469726563745f75726c7c733a34383a22687474703a2f2f6c6f63616c686f73742f6f6d656b612f61646d696e2f6974656d3f6974656d5f7365745f69643d3430223b, 1606063766),
('vff0p7n5o5bodlher1f74bblk2', 0x5f5f4c616d696e61737c613a333a7b733a32303a225f524551554553545f4143434553535f54494d45223b643a313630363036333737382e3333313939353b733a363a225f56414c4944223b613a313a7b733a32383a224c616d696e61735c53657373696f6e5c56616c696461746f725c4964223b733a32363a227666663070376e356f35626f646c6865723166373462626c6b32223b7d733a34323a224c616d696e61735f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313630363036373337383b7d7d4c616d696e61735f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f637372667c433a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a3339313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a313a7b733a33323a223234383439366261393730663865373934653861363939626431656362323236223b733a33323a223865643861383538346465353362656633383862343933373264356665326361223b7d733a343a2268617368223b733a36353a2238656438613835383464653533626566333838623439333732643566653263612d3234383439366261393730663865373934653861363939626431656362323236223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d, 1606063778);

-- --------------------------------------------------------

--
-- Structure de la table `setting`
--

CREATE TABLE `setting` (
  `id` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` longtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:json_array)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `setting`
--

INSERT INTO `setting` (`id`, `value`) VALUES
('administrator_email', '\"hassounasalim842@gmail.com\"'),
('extension_whitelist', '[\"aac\",\"aif\",\"aiff\",\"asf\",\"asx\",\"avi\",\"bmp\",\"c\",\"cc\",\"class\",\"css\",\"divx\",\"doc\",\"docx\",\"exe\",\"gif\",\"gz\",\"gzip\",\"h\",\"ico\",\"j2k\",\"jp2\",\"jpe\",\"jpeg\",\"jpg\",\"m4a\",\"m4v\",\"mdb\",\"mid\",\"midi\",\"mov\",\"mp2\",\"mp3\",\"mp4\",\"mpa\",\"mpe\",\"mpeg\",\"mpg\",\"mpp\",\"odb\",\"odc\",\"odf\",\"odg\",\"odp\",\"ods\",\"odt\",\"ogg\",\"opus\",\"pdf\",\"png\",\"pot\",\"pps\",\"ppt\",\"pptx\",\"qt\",\"ra\",\"ram\",\"rtf\",\"rtx\",\"swf\",\"tar\",\"tif\",\"tiff\",\"txt\",\"wav\",\"wax\",\"webm\",\"wma\",\"wmv\",\"wmx\",\"wri\",\"xla\",\"xls\",\"xlsx\",\"xlt\",\"xlw\",\"zip\"]'),
('installation_title', '\"Omeka\"'),
('locale', '\"\"'),
('media_type_whitelist', '[\"application\\/msword\",\"application\\/ogg\",\"application\\/pdf\",\"application\\/rtf\",\"application\\/vnd.ms-access\",\"application\\/vnd.ms-excel\",\"application\\/vnd.ms-powerpoint\",\"application\\/vnd.ms-project\",\"application\\/vnd.ms-write\",\"application\\/vnd.oasis.opendocument.chart\",\"application\\/vnd.oasis.opendocument.database\",\"application\\/vnd.oasis.opendocument.formula\",\"application\\/vnd.oasis.opendocument.graphics\",\"application\\/vnd.oasis.opendocument.presentation\",\"application\\/vnd.oasis.opendocument.spreadsheet\",\"application\\/vnd.oasis.opendocument.text\",\"application\\/vnd.openxmlformats-officedocument.wordprocessingml.document\",\"application\\/vnd.openxmlformats-officedocument.presentationml.presentation\",\"application\\/vnd.openxmlformats-officedocument.spreadsheetml.sheet\",\"application\\/x-gzip\",\"application\\/x-ms-wmp\",\"application\\/x-msdownload\",\"application\\/x-shockwave-flash\",\"application\\/x-tar\",\"application\\/zip\",\"audio\\/midi\",\"audio\\/mp4\",\"audio\\/mpeg\",\"audio\\/ogg\",\"audio\\/x-aac\",\"audio\\/x-aiff\",\"audio\\/x-ms-wma\",\"audio\\/x-ms-wax\",\"audio\\/x-realaudio\",\"audio\\/x-wav\",\"image\\/bmp\",\"image\\/gif\",\"image\\/jp2\",\"image\\/jpeg\",\"image\\/pjpeg\",\"image\\/png\",\"image\\/tiff\",\"image\\/x-icon\",\"text\\/css\",\"text\\/plain\",\"text\\/richtext\",\"video\\/divx\",\"video\\/mp4\",\"video\\/mpeg\",\"video\\/ogg\",\"video\\/quicktime\",\"video\\/webm\",\"video\\/x-ms-asf,\",\"video\\/x-msvideo\",\"video\\/x-ms-wmv\"]'),
('pagination_per_page', '25'),
('time_zone', '\"Europe\\/Paris\"'),
('version', '\"3.0.1\"'),
('version_notifications', '\"1\"');

-- --------------------------------------------------------

--
-- Structure de la table `site`
--

CREATE TABLE `site` (
  `id` int(11) NOT NULL,
  `homepage_id` int(11) DEFAULT NULL,
  `owner_id` int(11) DEFAULT NULL,
  `slug` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `theme` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `summary` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `navigation` longtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:json_array)',
  `item_pool` longtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:json_array)',
  `created` datetime NOT NULL,
  `modified` datetime DEFAULT NULL,
  `is_public` tinyint(1) NOT NULL,
  `assign_new_items` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `site`
--

INSERT INTO `site` (`id`, `homepage_id`, `owner_id`, `slug`, `theme`, `title`, `summary`, `navigation`, `item_pool`, `created`, `modified`, `is_public`, `assign_new_items`) VALUES
(1, NULL, 1, 'MyFirstWebSite', 'default', 'MyFirstWebSite', NULL, '[{\"type\":\"browse\",\"data\":{\"label\":\"Browse\",\"query\":\"\"},\"links\":[]},{\"type\":\"page\",\"links\":[],\"data\":{\"id\":2,\"label\":null}}]', '{\"fulltext_search\":\"\",\"property\":[{\"joiner\":\"and\",\"property\":\"\",\"type\":\"eq\",\"text\":\"\"}],\"resource_class_id\":[\"107\"],\"resource_template_id\":[\"4\"],\"item_set_id\":[\"\"],\"owner_id\":\"1\"}', '2020-11-15 23:07:30', '2020-11-15 23:17:24', 1, 1);

-- --------------------------------------------------------

--
-- Structure de la table `site_block_attachment`
--

CREATE TABLE `site_block_attachment` (
  `id` int(11) NOT NULL,
  `block_id` int(11) NOT NULL,
  `item_id` int(11) DEFAULT NULL,
  `media_id` int(11) DEFAULT NULL,
  `caption` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `site_item_set`
--

CREATE TABLE `site_item_set` (
  `id` int(11) NOT NULL,
  `site_id` int(11) NOT NULL,
  `item_set_id` int(11) NOT NULL,
  `position` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `site_page`
--

CREATE TABLE `site_page` (
  `id` int(11) NOT NULL,
  `site_id` int(11) NOT NULL,
  `slug` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_public` tinyint(1) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `site_page`
--

INSERT INTO `site_page` (`id`, `site_id`, `slug`, `title`, `is_public`, `created`, `modified`) VALUES
(1, 1, 'welcome', 'Welcome', 1, '2020-11-15 23:07:30', '2020-11-15 23:07:30'),
(2, 1, 'omekaApi', 'omekaApi', 1, '2020-11-15 23:08:10', '2020-11-15 23:08:10');

-- --------------------------------------------------------

--
-- Structure de la table `site_page_block`
--

CREATE TABLE `site_page_block` (
  `id` int(11) NOT NULL,
  `page_id` int(11) NOT NULL,
  `layout` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL,
  `data` longtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:json_array)',
  `position` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `site_page_block`
--

INSERT INTO `site_page_block` (`id`, `page_id`, `layout`, `data`, `position`) VALUES
(1, 1, 'html', '{\"html\":\"Welcome to your new site. This is an example page.\"}', 1),
(2, 2, 'pageTitle', '[]', 1);

-- --------------------------------------------------------

--
-- Structure de la table `site_permission`
--

CREATE TABLE `site_permission` (
  `id` int(11) NOT NULL,
  `site_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `role` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `site_permission`
--

INSERT INTO `site_permission` (`id`, `site_id`, `user_id`, `role`) VALUES
(1, 1, 1, 'admin');

-- --------------------------------------------------------

--
-- Structure de la table `site_setting`
--

CREATE TABLE `site_setting` (
  `id` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `site_id` int(11) NOT NULL,
  `value` longtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:json_array)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `email` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime DEFAULT NULL,
  `password_hash` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id`, `email`, `name`, `created`, `modified`, `password_hash`, `role`, `is_active`) VALUES
(1, 'hassounasalim842@gmail.com', 'admin', '2020-11-13 19:32:22', '2020-11-13 19:32:22', '$2y$10$nGkyZCbRe9HJjPiucSrsP.oYebPIT90fmXjYfnW1zUBe.AKfrXB3O', 'global_admin', 1);

-- --------------------------------------------------------

--
-- Structure de la table `user_setting`
--

CREATE TABLE `user_setting` (
  `id` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `value` longtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:json_array)'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `value`
--

CREATE TABLE `value` (
  `id` int(11) NOT NULL,
  `resource_id` int(11) NOT NULL,
  `property_id` int(11) NOT NULL,
  `value_resource_id` int(11) DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `uri` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_public` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `value`
--

INSERT INTO `value` (`id`, `resource_id`, `property_id`, `value_resource_id`, `type`, `lang`, `value`, `uri`, `is_public`) VALUES
(1, 1, 1, NULL, 'literal', '', 'Coupe du monde', NULL, 1),
(2, 2, 1, NULL, 'literal', '', 'Ligue des champions', NULL, 1),
(3, 3, 1, NULL, 'literal', '', 'UEFA', NULL, 1),
(4, 4, 1, NULL, 'literal', '', 'Championnat', NULL, 1),
(5, 5, 1, NULL, 'literal', '', 'Coupe de la ligue', NULL, 1),
(7, 7, 1, NULL, 'literal', '', 'Amical', NULL, 1),
(8, 8, 1, NULL, 'literal', '', 'Neymar', NULL, 1),
(9, 9, 1, NULL, 'literal', '', 'Mbappe', NULL, 1),
(10, 10, 1, NULL, 'literal', '', 'Benlameri', NULL, 1),
(11, 11, 1, NULL, 'literal', '', 'Depaye', NULL, 1),
(12, 12, 1, NULL, 'literal', '', 'Payet', NULL, 1),
(13, 13, 1, NULL, 'literal', '', 'Mandanda', NULL, 1),
(14, 14, 1, NULL, 'literal', '', 'ClementTurpin', NULL, 1),
(15, 15, 1, NULL, 'literal', '', 'AntonyGautier', NULL, 1),
(16, 16, 1, NULL, 'literal', '', 'BenoitBastien', NULL, 1),
(17, 17, 1, NULL, 'literal', '', 'JohanHamel', NULL, 1),
(18, 18, 1, NULL, 'literal', '', 'TonyChapron', NULL, 1),
(19, 19, 1, NULL, 'literal', '', 'LaurentDuhamel', NULL, 1),
(21, 21, 1, NULL, 'literal', '', 'PSG', NULL, 1),
(22, 22, 1, NULL, 'literal', '', 'OM', NULL, 1),
(23, 23, 1, NULL, 'literal', '', 'OL', NULL, 1),
(24, 24, 1, NULL, 'literal', '', 'LOSC', NULL, 1),
(25, 25, 1, NULL, 'literal', '', 'ASSE', NULL, 1),
(26, 26, 1, NULL, 'literal', '', 'OGCN', NULL, 1),
(27, 27, 1, NULL, 'literal', '', 'ParcDesPrinces', NULL, 1),
(28, 28, 1, NULL, 'literal', '', 'Velodrome\n\n', NULL, 1),
(29, 29, 1, NULL, 'literal', '', 'Groupama', NULL, 1),
(30, 30, 1, NULL, 'literal', '', 'GeoffroyGuichard\n\n', NULL, 1),
(31, 31, 1, NULL, 'literal', '', 'PierreMauroy\n\n', NULL, 1),
(32, 32, 1, NULL, 'literal', '', 'LouisDeux', NULL, 1),
(33, 33, 1, NULL, 'literal', '', 'GastonRichard', NULL, 1),
(34, 34, 1, NULL, 'literal', '', 'UCL', NULL, 1),
(35, 35, 1, NULL, 'literal', '', 'UEFA', NULL, 1),
(36, 36, 1, NULL, 'literal', '', 'L1', NULL, 1),
(37, 37, 1, NULL, 'literal', '', 'CL', NULL, 1),
(38, 38, 1, NULL, 'literal', '', 'CMC', NULL, 1),
(39, 39, 1, NULL, 'literal', '', 'CF', NULL, 1),
(40, 9, 154, NULL, 'literal', '', 'https://upload.wikimedia.org/wikipedia/commons/thumb/8/80/2019-07-17_SG_Dynamo_Dresden_vs._Paris_Saint-Germain_by_Sandro_Halank%E2%80%93620.jpg/300px-2019-07-17_SG_Dynamo_Dresden_vs._Paris_Saint-Germain_by_Sandro_Halank%E2%80%93620.jpg', NULL, 1),
(41, 11, 154, NULL, 'literal', '', 'https://m.footballdatabase.eu/images/photos/players/a_139/139065.jpg', NULL, 1),
(42, 8, 154, NULL, 'literal', '', 'https://upload.wikimedia.org/wikipedia/commons/thumb/b/b5/20141118_AUTBRA_5089.jpg/300px-20141118_AUTBRA_5089.jpg', NULL, 1),
(43, 10, 154, NULL, 'literal', '', 'https://www.olympique-et-lyonnais.com/wp-content/uploads/2020/10/Benlamri.jpg', NULL, 1),
(44, 12, 154, NULL, 'literal', '', 'https://imgresizer.eurosport.com/unsafe/1200x0/filters:format(jpeg):focal(1294x321:1296x319)/origin-imgresizer.eurosport.com/2020/10/21/2919735-59988668-2560-1440.jpg', NULL, 1),
(45, 13, 154, NULL, 'literal', '', 'https://upload.wikimedia.org/wikipedia/commons/thumb/4/4d/Steve_Mandanda_5312.jpg/400px-Steve_Mandanda_5312.jpg', NULL, 1),
(46, 21, 33, 2, 'resource', NULL, NULL, NULL, 1),
(47, 23, 33, 2, 'resource', NULL, NULL, NULL, 1),
(48, 24, 33, 36, 'resource', NULL, NULL, NULL, 1),
(49, 25, 33, 35, 'resource', NULL, NULL, NULL, 1),
(50, 26, 33, 35, 'resource', NULL, NULL, NULL, 1),
(51, 15, 33, 7, 'resource', NULL, NULL, NULL, 1),
(52, 16, 33, 5, 'resource', NULL, NULL, NULL, 1),
(53, 17, 33, 4, 'resource', NULL, NULL, NULL, 1),
(54, 18, 33, 3, 'resource', NULL, NULL, NULL, 1),
(55, 19, 33, 2, 'resource', NULL, NULL, NULL, 1),
(57, 22, 34, 28, 'resource', NULL, NULL, NULL, 1),
(58, 21, 34, 27, 'resource', NULL, NULL, NULL, 1),
(59, 23, 34, 29, 'resource', NULL, NULL, NULL, 1),
(60, 24, 34, 31, 'resource', NULL, NULL, NULL, 1),
(61, 25, 34, 30, 'resource', NULL, NULL, NULL, 1),
(62, 26, 34, 39, 'resource', NULL, NULL, NULL, 1),
(63, 34, 34, 2, 'resource', NULL, NULL, NULL, 1),
(64, 35, 34, 3, 'resource', NULL, NULL, NULL, 1),
(65, 36, 34, 4, 'resource', NULL, NULL, NULL, 1),
(66, 37, 34, 5, 'resource', NULL, NULL, NULL, 1),
(67, 38, 34, 1, 'resource', NULL, NULL, NULL, 1),
(68, 39, 4, 7, 'resource', NULL, NULL, NULL, 1),
(69, 26, 185, 36, 'resource', NULL, NULL, NULL, 1),
(70, 26, 185, 39, 'resource', NULL, NULL, NULL, 1),
(71, 25, 185, 36, 'resource', NULL, NULL, NULL, 1),
(72, 25, 185, 39, 'resource', NULL, NULL, NULL, 1),
(73, 25, 185, 37, 'resource', NULL, NULL, NULL, 1),
(74, 24, 185, 39, 'resource', NULL, NULL, NULL, 1),
(75, 24, 185, 37, 'resource', NULL, NULL, NULL, 1),
(76, 24, 185, 36, 'resource', NULL, NULL, NULL, 1),
(77, 24, 185, 35, 'resource', NULL, NULL, NULL, 1),
(78, 23, 185, 39, 'resource', NULL, NULL, NULL, 1),
(79, 23, 185, 37, 'resource', NULL, NULL, NULL, 1),
(80, 23, 185, 36, 'resource', NULL, NULL, NULL, 1),
(81, 23, 185, 34, 'resource', NULL, NULL, NULL, 1),
(82, 22, 185, 39, 'resource', NULL, NULL, NULL, 1),
(83, 22, 185, 37, 'resource', NULL, NULL, NULL, 1),
(84, 22, 185, 36, 'resource', NULL, NULL, NULL, 1),
(85, 22, 185, 34, 'resource', NULL, NULL, NULL, 1),
(86, 21, 185, 39, 'resource', NULL, NULL, NULL, 1),
(87, 21, 185, 38, 'resource', NULL, NULL, NULL, 1),
(88, 21, 185, 37, 'resource', NULL, NULL, NULL, 1),
(89, 21, 185, 36, 'resource', NULL, NULL, NULL, 1),
(90, 21, 185, 35, 'resource', NULL, NULL, NULL, 1),
(91, 21, 185, 34, 'resource', NULL, NULL, NULL, 1),
(92, 40, 1, NULL, 'literal', '', 'Joueurs', NULL, 1),
(93, 9, 33, 21, 'resource', NULL, NULL, NULL, 1),
(94, 10, 33, 23, 'resource', NULL, NULL, NULL, 1),
(95, 11, 33, 23, 'resource', NULL, NULL, NULL, 1),
(96, 12, 33, 22, 'resource', NULL, NULL, NULL, 1),
(97, 13, 33, 22, 'resource', NULL, NULL, NULL, 1),
(98, 8, 33, 21, 'resource', NULL, NULL, NULL, 1),
(99, 41, 1, NULL, 'literal', '', 'Competitions', NULL, 1),
(100, 42, 1, NULL, 'literal', '', 'Equipes', NULL, 1),
(101, 43, 1, NULL, 'literal', '', 'Matchs', NULL, 1),
(102, 44, 1, NULL, 'literal', '', 'Arbitres', NULL, 1),
(103, 45, 1, NULL, 'literal', '', 'Stades', NULL, 1),
(104, 21, 154, NULL, 'literal', '', 'https://static1-fr.millenium.gg/article_old/images/contenu/actus/LOL/Rivac/Logo_Team/300px-Paris_Saint-Germain_eSportslogo_square.png', NULL, 1),
(105, 22, 154, NULL, 'literal', '', 'https://upload.wikimedia.org/wikipedia/commons/thumb/d/d8/Olympique_Marseille_logo.svg/300px-Olympique_Marseille_logo.svg.png', NULL, 1),
(106, 23, 154, NULL, 'literal', '', 'https://data.pixiz.com/output/user/frame/preview/api/big/7/5/6/3/1493657_fa02b.jpg', NULL, 1),
(107, 24, 154, NULL, 'literal', '', 'https://pbs.twimg.com/profile_images/1317113400791629824/UaVrXmu7_400x400.jpg', NULL, 1),
(108, 25, 154, NULL, 'literal', '', 'https://medias.lequipe.fr/logo-football/38/300-alt?(none)', NULL, 1),
(109, 26, 154, NULL, 'literal', '', 'https://i.pinimg.com/originals/e3/82/0a/e3820a5a50cf8f7dd2d2a7eecc851e56.png', NULL, 1),
(110, 39, 154, NULL, 'literal', '', 'https://www.gf38.fr/wp-content/themes/HookipaTemplateGrenoble-child/assets/img/cdf.png', NULL, 1),
(111, 38, 154, NULL, 'literal', '', 'https://static.wikia.nocookie.net/the-football-database/images/7/7f/FIFA_Club_World_Cup.jpeg/revision/latest/scale-to-width-down/340?cb=20150226172258', NULL, 1),
(112, 37, 154, NULL, 'literal', '', 'https://lh3.googleusercontent.com/proxy/Myl-1vtzRj-rOoyVW9p4eFIpTqcSOmMYprB8MRaLcPlayGsq39l8kre063arTJpz6aYGA2inDtqXPjRcWKTJwUBB8Y7RQAH3kf2JWvPdgf9Nnw-IatuvvSgKlwhiOgqo9kkhv-p9iOIfsA', NULL, 1),
(114, 36, 154, NULL, 'literal', '', 'https://futboldesdefrancia.com/wp-content/uploads/2014/06/ligue-1-logo.jpg', NULL, 1),
(115, 35, 154, NULL, 'literal', '', 'https://www.poteaux-carres.com/images/site/coupeUEFA.gif', NULL, 1),
(116, 34, 154, NULL, 'literal', '', 'https://m.media-amazon.com/images/I/513Iya32T3L._AC_SS350_.jpg', NULL, 1),
(117, 33, 154, NULL, 'literal', '', 'https://www.leballonrond.fr/img/estadios/795/697795_med_stade_gaston_gerard.jpg.jpg', NULL, 1),
(118, 32, 154, NULL, 'literal', '', 'https://img-4.linternaute.com/9gTKlKQqUdybYo3Qu5HmHcCenHw=/300x/smart/cc06f5425bd64b4d8ee4434734daaaf0/ccmcms-linternaute/464253.jpg', NULL, 1),
(119, 31, 154, NULL, 'literal', '', 'https://upload.wikimedia.org/wikipedia/commons/thumb/1/1a/Le_Stade_Pierre_Mauroy_lors_de_l%27Euro_2016.jpg/440px-Le_Stade_Pierre_Mauroy_lors_de_l%27Euro_2016.jpg', NULL, 1),
(120, 30, 154, NULL, 'literal', '', 'https://lh3.googleusercontent.com/proxy/zKWPndOW_Qb8ZnJbbnFFb8OvpjcWZkfVVUbotqgLXVZjtc1GIjEEIzHTbQlQVUCM8lmbDWXmHm2k0hpt5JHm2edpQPc_Cr1nt-tFEL7rRyJ7r8S5jkbcwaEdw18ulltIixW3-LqGE-JD6fLEgg', NULL, 1),
(121, 29, 154, NULL, 'literal', '', 'https://lh3.googleusercontent.com/proxy/dpwEhyJ6zBECG2T-_QVQLt2eh0Bcsf41kk6zhLD_3OEs-8ly_9kmKrpkEt7LgZsYEYNwECkbQQmO23bI6dyAW_cbS6rfpG9BntW5xDEt', NULL, 1),
(122, 28, 154, NULL, 'literal', '', 'https://www.leberry.fr/photoSRC/VVNUJ1paUTgIBhVOCRAHHQ4zRSkXaldfVR5dW1sXVA49/3830323.jpeg', NULL, 1),
(123, 27, 154, NULL, 'literal', '', 'https://upload.wikimedia.org/wikipedia/commons/thumb/7/73/Pdptifo.jpg/440px-Pdptifo.jpg', NULL, 1),
(124, 14, 154, NULL, 'literal', '', 'https://img.aws.la-croix.com/2018/06/06/1300944844/L-arbitre-Clement-Turpinde-finale-Coupe-France-entre-Monaco-PSG-Bordeaux-31-2018_1_1399_2063.jpg', NULL, 1),
(125, 15, 154, NULL, 'literal', '', 'https://www.fff.fr/common/img/45/57/3/621x423/00545573.jpg', NULL, 1),
(126, 16, 154, NULL, 'literal', '', 'https://c8.alamy.com/compfr/je81d0/benoit-bastien-arbitre-le-21-juin-2017-football-joueurs-de-football-championnat-de-france-2017-des-moins-de-21-ans-match-du-groupe-c-entre-la-republique-tcheque-3-1-de-l-italie-a-l-stadion-miejski-a-tychy-pologne-photo-de-maurizio-borsari-aflo-je81d0.jpg', NULL, 1),
(127, 17, 154, NULL, 'literal', '', 'https://cdn-1.sb29.bzh/scripts/files/5f76e73b55dd02.70355619/hamel_johan_j6.jpg', NULL, 1),
(128, 18, 154, NULL, 'literal', '', 'https://brandandcelebrities.com/wp-content/uploads/2019/06/188-Tony-Chapron.gif', NULL, 1),
(129, 19, 154, NULL, 'literal', '', 'data:image/jpeg;base64,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', NULL, 1),
(130, 7, 154, NULL, 'literal', '', 'https://www.gf38.fr/wp-content/themes/HookipaTemplateGrenoble-child/assets/img/cdf.png', NULL, 1),
(131, 1, 154, NULL, 'literal', '', 'https://static.wikia.nocookie.net/the-football-database/images/7/7f/FIFA_Club_World_Cup.jpeg/revision/latest/scale-to-width-down/340?cb=20150226172258', NULL, 1),
(132, 2, 154, NULL, 'literal', '', 'https://m.media-amazon.com/images/I/513Iya32T3L._AC_SS350_.jpg', NULL, 1),
(133, 3, 154, NULL, 'literal', '', 'https://images-na.ssl-images-amazon.com/images/I/61bdv3ZpPxL._AC_SX522_.jpg', NULL, 1),
(134, 4, 154, NULL, 'literal', '', 'https://futboldesdefrancia.com/wp-content/uploads/2014/06/ligue-1-logo.jpg', NULL, 1),
(135, 5, 154, NULL, 'literal', '', 'https://lh3.googleusercontent.com/proxy/Myl-1vtzRj-rOoyVW9p4eFIpTqcSOmMYprB8MRaLcPlayGsq39l8kre063arTJpz6aYGA2inDtqXPjRcWKTJwUBB8Y7RQAH3kf2JWvPdgf9Nnw-IatuvvSgKlwhiOgqo9kkhv-p9iOIfsA', NULL, 1);

-- --------------------------------------------------------

--
-- Structure de la table `vocabulary`
--

CREATE TABLE `vocabulary` (
  `id` int(11) NOT NULL,
  `owner_id` int(11) DEFAULT NULL,
  `namespace_uri` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prefix` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `label` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `vocabulary`
--

INSERT INTO `vocabulary` (`id`, `owner_id`, `namespace_uri`, `prefix`, `label`, `comment`) VALUES
(1, NULL, 'http://purl.org/dc/terms/', 'dcterms', 'Dublin Core', 'Basic resource metadata (DCMI Metadata Terms)'),
(2, NULL, 'http://purl.org/dc/dcmitype/', 'dctype', 'Dublin Core Type', 'Basic resource types (DCMI Type Vocabulary)'),
(3, NULL, 'http://purl.org/ontology/bibo/', 'bibo', 'Bibliographic Ontology', 'Bibliographic metadata (BIBO)'),
(4, NULL, 'http://xmlns.com/foaf/0.1/', 'foaf', 'Friend of a Friend', 'Relationships between people and organizations (FOAF)'),
(5, 1, 'http://dbpedia.org/', 'dbpedia-owl', 'Match', ''),
(6, 1, 'http://dbpedia.org', 'dbpedia-owl2', 'Athlete', ''),
(7, 1, 'http://dbpedia.org/ontology/', 'dbpedia-owl3', 'Arbitre', ''),
(8, 1, 'http://dbpedia.org/ontology/SportsTeamSeason', 'dbpedia-owl4', 'Equipe', ''),
(9, 1, 'http://dbpedia.org/ontology/Stadium', 'dbpedia-owl5', 'Stade', ''),
(10, 1, 'http://dbpedia.org/ontology/Competition', 'dbpedia-owl6', 'Competition', ''),
(11, 1, 'http://dbpedia', 'dbpedia', 'dbpedia', ''),
(12, 1, 'https://liguehandball.fr/leaguefootbal', 'leaguefootbal', 'leaguefootbal', '');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `api_key`
--
ALTER TABLE `api_key`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_C912ED9D7E3C61F9` (`owner_id`);

--
-- Index pour la table `asset`
--
ALTER TABLE `asset`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_2AF5A5C5CC5DB90` (`storage_id`),
  ADD KEY `IDX_2AF5A5C7E3C61F9` (`owner_id`);

--
-- Index pour la table `fulltext_search`
--
ALTER TABLE `fulltext_search`
  ADD PRIMARY KEY (`id`,`resource`),
  ADD KEY `IDX_AA31FE4A7E3C61F9` (`owner_id`);
ALTER TABLE `fulltext_search` ADD FULLTEXT KEY `IDX_AA31FE4A2B36786B3B8BA7C7` (`title`,`text`);

--
-- Index pour la table `item`
--
ALTER TABLE `item`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `item_item_set`
--
ALTER TABLE `item_item_set`
  ADD PRIMARY KEY (`item_id`,`item_set_id`),
  ADD KEY `IDX_6D0C9625126F525E` (`item_id`),
  ADD KEY `IDX_6D0C9625960278D7` (`item_set_id`);

--
-- Index pour la table `item_set`
--
ALTER TABLE `item_set`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `item_site`
--
ALTER TABLE `item_site`
  ADD PRIMARY KEY (`item_id`,`site_id`),
  ADD KEY `IDX_A1734D1F126F525E` (`item_id`),
  ADD KEY `IDX_A1734D1FF6BD1646` (`site_id`);

--
-- Index pour la table `job`
--
ALTER TABLE `job`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_FBD8E0F87E3C61F9` (`owner_id`);

--
-- Index pour la table `media`
--
ALTER TABLE `media`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_6A2CA10C5CC5DB90` (`storage_id`),
  ADD KEY `IDX_6A2CA10C126F525E` (`item_id`),
  ADD KEY `item_position` (`item_id`,`position`);

--
-- Index pour la table `migration`
--
ALTER TABLE `migration`
  ADD PRIMARY KEY (`version`);

--
-- Index pour la table `module`
--
ALTER TABLE `module`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `password_creation`
--
ALTER TABLE `password_creation`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_C77917B4A76ED395` (`user_id`);

--
-- Index pour la table `property`
--
ALTER TABLE `property`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_8BF21CDEAD0E05F6623C14D5` (`vocabulary_id`,`local_name`),
  ADD KEY `IDX_8BF21CDE7E3C61F9` (`owner_id`),
  ADD KEY `IDX_8BF21CDEAD0E05F6` (`vocabulary_id`);

--
-- Index pour la table `resource`
--
ALTER TABLE `resource`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_BC91F4167E3C61F9` (`owner_id`),
  ADD KEY `IDX_BC91F416448CC1BD` (`resource_class_id`),
  ADD KEY `IDX_BC91F41616131EA` (`resource_template_id`),
  ADD KEY `IDX_BC91F416FDFF2E92` (`thumbnail_id`);

--
-- Index pour la table `resource_class`
--
ALTER TABLE `resource_class`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_C6F063ADAD0E05F6623C14D5` (`vocabulary_id`,`local_name`),
  ADD KEY `IDX_C6F063AD7E3C61F9` (`owner_id`),
  ADD KEY `IDX_C6F063ADAD0E05F6` (`vocabulary_id`);

--
-- Index pour la table `resource_template`
--
ALTER TABLE `resource_template`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_39ECD52EEA750E8` (`label`),
  ADD KEY `IDX_39ECD52E7E3C61F9` (`owner_id`),
  ADD KEY `IDX_39ECD52E448CC1BD` (`resource_class_id`),
  ADD KEY `IDX_39ECD52E724734A3` (`title_property_id`),
  ADD KEY `IDX_39ECD52EB84E0D1D` (`description_property_id`);

--
-- Index pour la table `resource_template_property`
--
ALTER TABLE `resource_template_property`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_4689E2F116131EA549213EC` (`resource_template_id`,`property_id`),
  ADD KEY `IDX_4689E2F116131EA` (`resource_template_id`),
  ADD KEY `IDX_4689E2F1549213EC` (`property_id`);

--
-- Index pour la table `session`
--
ALTER TABLE `session`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `setting`
--
ALTER TABLE `setting`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `site`
--
ALTER TABLE `site`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_694309E4989D9B62` (`slug`),
  ADD UNIQUE KEY `UNIQ_694309E4571EDDA` (`homepage_id`),
  ADD KEY `IDX_694309E47E3C61F9` (`owner_id`);

--
-- Index pour la table `site_block_attachment`
--
ALTER TABLE `site_block_attachment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_236473FEE9ED820C` (`block_id`),
  ADD KEY `IDX_236473FE126F525E` (`item_id`),
  ADD KEY `IDX_236473FEEA9FDD75` (`media_id`),
  ADD KEY `block_position` (`block_id`,`position`);

--
-- Index pour la table `site_item_set`
--
ALTER TABLE `site_item_set`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_D4CE134F6BD1646960278D7` (`site_id`,`item_set_id`),
  ADD KEY `IDX_D4CE134F6BD1646` (`site_id`),
  ADD KEY `IDX_D4CE134960278D7` (`item_set_id`),
  ADD KEY `position` (`position`);

--
-- Index pour la table `site_page`
--
ALTER TABLE `site_page`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_2F900BD9F6BD1646989D9B62` (`site_id`,`slug`),
  ADD KEY `IDX_2F900BD9F6BD1646` (`site_id`);

--
-- Index pour la table `site_page_block`
--
ALTER TABLE `site_page_block`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_C593E731C4663E4` (`page_id`),
  ADD KEY `page_position` (`page_id`,`position`);

--
-- Index pour la table `site_permission`
--
ALTER TABLE `site_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_C0401D6FF6BD1646A76ED395` (`site_id`,`user_id`),
  ADD KEY `IDX_C0401D6FF6BD1646` (`site_id`),
  ADD KEY `IDX_C0401D6FA76ED395` (`user_id`);

--
-- Index pour la table `site_setting`
--
ALTER TABLE `site_setting`
  ADD PRIMARY KEY (`id`,`site_id`),
  ADD KEY `IDX_64D05A53F6BD1646` (`site_id`);

--
-- Index pour la table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_8D93D649E7927C74` (`email`);

--
-- Index pour la table `user_setting`
--
ALTER TABLE `user_setting`
  ADD PRIMARY KEY (`id`,`user_id`),
  ADD KEY `IDX_C779A692A76ED395` (`user_id`);

--
-- Index pour la table `value`
--
ALTER TABLE `value`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_1D77583489329D25` (`resource_id`),
  ADD KEY `IDX_1D775834549213EC` (`property_id`),
  ADD KEY `IDX_1D7758344BC72506` (`value_resource_id`),
  ADD KEY `value` (`value`(190)),
  ADD KEY `uri` (`uri`(190));

--
-- Index pour la table `vocabulary`
--
ALTER TABLE `vocabulary`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_9099C97B9B267FDF` (`namespace_uri`),
  ADD UNIQUE KEY `UNIQ_9099C97B93B1868E` (`prefix`),
  ADD KEY `IDX_9099C97B7E3C61F9` (`owner_id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `asset`
--
ALTER TABLE `asset`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `job`
--
ALTER TABLE `job`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT pour la table `property`
--
ALTER TABLE `property`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=193;

--
-- AUTO_INCREMENT pour la table `resource`
--
ALTER TABLE `resource`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT pour la table `resource_class`
--
ALTER TABLE `resource_class`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=120;

--
-- AUTO_INCREMENT pour la table `resource_template`
--
ALTER TABLE `resource_template`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT pour la table `resource_template_property`
--
ALTER TABLE `resource_template_property`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT pour la table `site`
--
ALTER TABLE `site`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `site_block_attachment`
--
ALTER TABLE `site_block_attachment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `site_item_set`
--
ALTER TABLE `site_item_set`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `site_page`
--
ALTER TABLE `site_page`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `site_page_block`
--
ALTER TABLE `site_page_block`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `site_permission`
--
ALTER TABLE `site_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `value`
--
ALTER TABLE `value`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=136;

--
-- AUTO_INCREMENT pour la table `vocabulary`
--
ALTER TABLE `vocabulary`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `api_key`
--
ALTER TABLE `api_key`
  ADD CONSTRAINT `FK_C912ED9D7E3C61F9` FOREIGN KEY (`owner_id`) REFERENCES `user` (`id`);

--
-- Contraintes pour la table `asset`
--
ALTER TABLE `asset`
  ADD CONSTRAINT `FK_2AF5A5C7E3C61F9` FOREIGN KEY (`owner_id`) REFERENCES `user` (`id`) ON DELETE SET NULL;

--
-- Contraintes pour la table `fulltext_search`
--
ALTER TABLE `fulltext_search`
  ADD CONSTRAINT `FK_AA31FE4A7E3C61F9` FOREIGN KEY (`owner_id`) REFERENCES `user` (`id`) ON DELETE SET NULL;

--
-- Contraintes pour la table `item`
--
ALTER TABLE `item`
  ADD CONSTRAINT `FK_1F1B251EBF396750` FOREIGN KEY (`id`) REFERENCES `resource` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `item_item_set`
--
ALTER TABLE `item_item_set`
  ADD CONSTRAINT `FK_6D0C9625126F525E` FOREIGN KEY (`item_id`) REFERENCES `item` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_6D0C9625960278D7` FOREIGN KEY (`item_set_id`) REFERENCES `item_set` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `item_set`
--
ALTER TABLE `item_set`
  ADD CONSTRAINT `FK_1015EEEBF396750` FOREIGN KEY (`id`) REFERENCES `resource` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `item_site`
--
ALTER TABLE `item_site`
  ADD CONSTRAINT `FK_A1734D1F126F525E` FOREIGN KEY (`item_id`) REFERENCES `item` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_A1734D1FF6BD1646` FOREIGN KEY (`site_id`) REFERENCES `site` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `job`
--
ALTER TABLE `job`
  ADD CONSTRAINT `FK_FBD8E0F87E3C61F9` FOREIGN KEY (`owner_id`) REFERENCES `user` (`id`) ON DELETE SET NULL;

--
-- Contraintes pour la table `media`
--
ALTER TABLE `media`
  ADD CONSTRAINT `FK_6A2CA10C126F525E` FOREIGN KEY (`item_id`) REFERENCES `item` (`id`),
  ADD CONSTRAINT `FK_6A2CA10CBF396750` FOREIGN KEY (`id`) REFERENCES `resource` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `password_creation`
--
ALTER TABLE `password_creation`
  ADD CONSTRAINT `FK_C77917B4A76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `property`
--
ALTER TABLE `property`
  ADD CONSTRAINT `FK_8BF21CDE7E3C61F9` FOREIGN KEY (`owner_id`) REFERENCES `user` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_8BF21CDEAD0E05F6` FOREIGN KEY (`vocabulary_id`) REFERENCES `vocabulary` (`id`);

--
-- Contraintes pour la table `resource`
--
ALTER TABLE `resource`
  ADD CONSTRAINT `FK_BC91F41616131EA` FOREIGN KEY (`resource_template_id`) REFERENCES `resource_template` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_BC91F416448CC1BD` FOREIGN KEY (`resource_class_id`) REFERENCES `resource_class` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_BC91F4167E3C61F9` FOREIGN KEY (`owner_id`) REFERENCES `user` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_BC91F416FDFF2E92` FOREIGN KEY (`thumbnail_id`) REFERENCES `asset` (`id`) ON DELETE SET NULL;

--
-- Contraintes pour la table `resource_class`
--
ALTER TABLE `resource_class`
  ADD CONSTRAINT `FK_C6F063AD7E3C61F9` FOREIGN KEY (`owner_id`) REFERENCES `user` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_C6F063ADAD0E05F6` FOREIGN KEY (`vocabulary_id`) REFERENCES `vocabulary` (`id`);

--
-- Contraintes pour la table `resource_template`
--
ALTER TABLE `resource_template`
  ADD CONSTRAINT `FK_39ECD52E448CC1BD` FOREIGN KEY (`resource_class_id`) REFERENCES `resource_class` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_39ECD52E724734A3` FOREIGN KEY (`title_property_id`) REFERENCES `property` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_39ECD52E7E3C61F9` FOREIGN KEY (`owner_id`) REFERENCES `user` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_39ECD52EB84E0D1D` FOREIGN KEY (`description_property_id`) REFERENCES `property` (`id`) ON DELETE SET NULL;

--
-- Contraintes pour la table `resource_template_property`
--
ALTER TABLE `resource_template_property`
  ADD CONSTRAINT `FK_4689E2F116131EA` FOREIGN KEY (`resource_template_id`) REFERENCES `resource_template` (`id`),
  ADD CONSTRAINT `FK_4689E2F1549213EC` FOREIGN KEY (`property_id`) REFERENCES `property` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `site`
--
ALTER TABLE `site`
  ADD CONSTRAINT `FK_694309E4571EDDA` FOREIGN KEY (`homepage_id`) REFERENCES `site_page` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_694309E47E3C61F9` FOREIGN KEY (`owner_id`) REFERENCES `user` (`id`) ON DELETE SET NULL;

--
-- Contraintes pour la table `site_block_attachment`
--
ALTER TABLE `site_block_attachment`
  ADD CONSTRAINT `FK_236473FE126F525E` FOREIGN KEY (`item_id`) REFERENCES `item` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `FK_236473FEE9ED820C` FOREIGN KEY (`block_id`) REFERENCES `site_page_block` (`id`),
  ADD CONSTRAINT `FK_236473FEEA9FDD75` FOREIGN KEY (`media_id`) REFERENCES `media` (`id`) ON DELETE SET NULL;

--
-- Contraintes pour la table `site_item_set`
--
ALTER TABLE `site_item_set`
  ADD CONSTRAINT `FK_D4CE134960278D7` FOREIGN KEY (`item_set_id`) REFERENCES `item_set` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_D4CE134F6BD1646` FOREIGN KEY (`site_id`) REFERENCES `site` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `site_page`
--
ALTER TABLE `site_page`
  ADD CONSTRAINT `FK_2F900BD9F6BD1646` FOREIGN KEY (`site_id`) REFERENCES `site` (`id`);

--
-- Contraintes pour la table `site_page_block`
--
ALTER TABLE `site_page_block`
  ADD CONSTRAINT `FK_C593E731C4663E4` FOREIGN KEY (`page_id`) REFERENCES `site_page` (`id`);

--
-- Contraintes pour la table `site_permission`
--
ALTER TABLE `site_permission`
  ADD CONSTRAINT `FK_C0401D6FA76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_C0401D6FF6BD1646` FOREIGN KEY (`site_id`) REFERENCES `site` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `site_setting`
--
ALTER TABLE `site_setting`
  ADD CONSTRAINT `FK_64D05A53F6BD1646` FOREIGN KEY (`site_id`) REFERENCES `site` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `user_setting`
--
ALTER TABLE `user_setting`
  ADD CONSTRAINT `FK_C779A692A76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE;

--
-- Contraintes pour la table `value`
--
ALTER TABLE `value`
  ADD CONSTRAINT `FK_1D7758344BC72506` FOREIGN KEY (`value_resource_id`) REFERENCES `resource` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_1D775834549213EC` FOREIGN KEY (`property_id`) REFERENCES `property` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_1D77583489329D25` FOREIGN KEY (`resource_id`) REFERENCES `resource` (`id`);

--
-- Contraintes pour la table `vocabulary`
--
ALTER TABLE `vocabulary`
  ADD CONSTRAINT `FK_9099C97B7E3C61F9` FOREIGN KEY (`owner_id`) REFERENCES `user` (`id`) ON DELETE SET NULL;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
