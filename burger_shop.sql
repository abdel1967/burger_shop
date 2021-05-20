-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : mer. 19 mai 2021 à 21:51
-- Version du serveur :  10.4.14-MariaDB
-- Version de PHP : 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `burger_shop`
--

-- --------------------------------------------------------

--
-- Structure de la table `address`
--

CREATE TABLE IF NOT EXISTS `address` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `firstname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `postal` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `address`
--

INSERT INTO `address` (`id`, `user_id`, `name`, `firstname`, `lastname`, `company`, `address`, `postal`, `city`, `country`, `phone`) VALUES
(27, 28, 'Mon appt', 'John', 'Doe', 'AP formation', '140 rue de chaussas', '31200', 'Toulouse', 'FR', '0606060606'),
(29, 31, 'Ma maison', 'Abderrahmane', 'amziane', 'bordeaux', '18 rue des lilas', '45200', 'Toulouse', 'FR', '0753302928'),
(30, 28, 'Mon travail', 'Abderrahmane', 'amziane', 'Toulouse', '126 route d\'Espagne', '31100', 'Toulouse', 'FR', '0606060606');

-- --------------------------------------------------------

--
-- Structure de la table `carrier`
--

CREATE TABLE IF NOT EXISTS `carrier` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `carrier`
--

INSERT INTO `carrier` (`id`, `name`, `description`, `price`) VALUES
(1, 'Uber Eat', 'Profitez d\'une livraison rapide  chez vous.', 990),
(3, 'Eat à domicile', 'votre coursier a votre service a domicile le plus rapidement possible', 820);

-- --------------------------------------------------------

--
-- Structure de la table `category`
--

CREATE TABLE IF NOT EXISTS `category` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `category`
--

INSERT INTO `category` (`id`, `name`) VALUES
(1, 'MENUS'),
(2, 'BURGERS'),
(3, 'SALADES'),
(4, 'SNACKS'),
(5, 'DESSERTS'),
(6, 'BOISSONS');

-- --------------------------------------------------------

--
-- Structure de la table `doctrine_migration_versions`
--

CREATE TABLE IF NOT EXISTS `doctrine_migration_versions` (
  `version` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `doctrine_migration_versions`
--

INSERT INTO `doctrine_migration_versions` (`version`, `executed_at`, `execution_time`) VALUES
('DoctrineMigrations\\Version20210120165320', '2021-01-20 19:21:53', 73),
('DoctrineMigrations\\Version20210121152414', '2021-01-21 16:28:47', 393),
('DoctrineMigrations\\Version20210128192746', '2021-01-28 20:30:49', 50),
('DoctrineMigrations\\Version20210129101004', '2021-01-29 11:11:53', 917),
('DoctrineMigrations\\Version20210222145106', '2021-02-22 15:52:36', 433),
('DoctrineMigrations\\Version20210226125732', '2021-02-26 13:58:38', 326),
('DoctrineMigrations\\Version20210227182709', '2021-02-27 19:28:05', 651),
('DoctrineMigrations\\Version20210304130054', '2021-03-04 14:02:01', 299),
('DoctrineMigrations\\Version20210319130430', '2021-03-19 14:05:55', 990),
('DoctrineMigrations\\Version20210319153227', '2021-03-19 16:33:25', 40),
('DoctrineMigrations\\Version20210327115421', '2021-03-27 12:55:49', 936),
('DoctrineMigrations\\Version20210328064819', '2021-03-28 08:49:28', 580),
('DoctrineMigrations\\Version20210328080400', '2021-03-28 10:05:13', 303),
('DoctrineMigrations\\Version20210328144011', '2021-03-28 16:41:14', 350);

-- --------------------------------------------------------

--
-- Structure de la table `header`
--

CREATE TABLE IF NOT EXISTS `header` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `btn_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `btn_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `illustration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `header`
--

INSERT INTO `header` (`id`, `title`, `content`, `btn_title`, `btn_url`, `illustration`) VALUES
(1, 'Nos Produits', 'Découvrez nos succulent bergers, ainsi que salades composée, les snacks, les desserts pause tendresse et toutes nos boissons fraiche', 'Découvrir', '/nos-produits', '35093f04028510be88ebad6a27464896afa0c1aa.jpg'),
(2, 'Nos Produits', 'Découvrez nos succulent bergers, ainsi que salades composée, les snacks, les desserts pause tendresse et toutes nos boissons fraiche', 'Découvrir', '/nos-produits', '57d2e8d83f2a56d3711f1da5e5937cf0f2f181ad.jpg'),
(3, 'Nos Produits', 'Découvrez nos succulent bergers, ainsi que salades composée, les snacks, les desserts pause tendresse et toutes nos boissons fraiche', 'Découvrir', '/nos-produits', 'c6609c745a16ee0a00739c897a50cec6dc27b02a.jpg'),
(4, 'Nos Produits', 'Découvrez nos succulent bergers, ainsi que salades composée, les snacks, les desserts pause tendresse et toutes nos boissons fraiche', 'Découvrir', '/nos-produits', '5c6d357e709d600b37c785f48243af1b6888c8f9.jpg'),
(5, 'Nos Produits', 'Découvrez nos succulent bergers, ainsi que salades composée, les snacks, les desserts pause tendresse et toutes nos boissons fraiche', 'Découvrir', '/nos-produits', 'f69bf0ede91da60ed4e56ea29439f859b4692304.jpg'),
(6, 'Nos Produits', 'Découvrez nos succulent bergers, ainsi que salades composée, les snacks, les desserts pause tendresse et toutes nos boissons fraiche', 'Découvrir', '/nos-produits', '3fa203aaae2488164dffaf61b9440a9096f77229.jpg');

-- --------------------------------------------------------

--
-- Structure de la table `order`
--

CREATE TABLE IF NOT EXISTS `order` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `carrier_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `carrier_price` double NOT NULL,
  `delivery` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stripe_session_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `order`
--

INSERT INTO `order` (`id`, `user_id`, `created_at`, `carrier_name`, `carrier_price`, `delivery`, `reference`, `stripe_session_id`, `state`) VALUES
(1, 28, '2021-03-05 16:51:13', 'Uber Eat', 9.9, 'JohnDoe<br>0606060606<br>140 rue de chaussas<br>31200 Toulouse<br>FR', '', NULL, 0),
(2, 28, '2021-03-08 14:33:00', 'Uber Eat', 9.9, 'JohnDoe<br>0606060606<br>140 rue de chaussas<br>31200 Toulouse<br>FR', '', NULL, 0),
(3, 28, '2021-03-08 14:33:17', 'Uber Eat', 9.9, 'JohnDoe<br>0606060606<br>140 rue de chaussas<br>31200 Toulouse<br>FR', '', NULL, 0),
(4, 28, '2021-03-08 14:34:16', 'Uber Eat', 9.9, 'JohnDoe<br>0606060606<br>140 rue de chaussas<br>31200 Toulouse<br>FR', '', NULL, 0),
(5, 28, '2021-03-08 14:53:11', 'Eat à domicile', 8.2, 'Abderrahmaneamziane<br>0606060606<br>126 route d\'espagne<br>31100 Toulouse<br>FR', '', NULL, 0),
(6, 28, '2021-03-13 06:29:53', 'Uber Eat', 9.9, 'JohnDoe<br>0606060606<br>140 rue de chaussas<br>31200 Toulouse<br>FR', '', NULL, 0),
(7, 28, '2021-03-13 06:31:08', 'Uber Eat', 9.9, 'Abderrahmaneamziane<br>0606060606<br>126 route d\'espagne<br>31100 Toulouse<br>FR', '', NULL, 0),
(8, 28, '2021-03-19 14:32:24', 'Uber Eat', 9.9, 'JohnDoe<br>0606060606<br>140 rue de chaussas<br>31200 Toulouse<br>FR', '19032021-6054a7e8ea73c', NULL, 0),
(9, 28, '2021-03-19 14:51:18', 'Uber Eat', 9.9, 'JohnDoe<br>0606060606<br>140 rue de chaussas<br>31200 Toulouse<br>FR', '19032021-6054ac5693116', NULL, 0),
(10, 28, '2021-03-19 15:08:54', 'Uber Eat', 9.9, 'JohnDoe<br>0606060606<br>140 rue de chaussas<br>31200 Toulouse<br>FR', '19032021-6054b07601c7b', NULL, 0),
(11, 28, '2021-03-19 16:15:41', 'Uber Eat', 9.9, 'JohnDoe<br>0606060606<br>140 rue de chaussas<br>31200 Toulouse<br>FR', '19032021-6054c01d69098', NULL, 0),
(12, 28, '2021-03-19 16:17:06', 'Uber Eat', 9.9, 'JohnDoe<br>0606060606<br>140 rue de chaussas<br>31200 Toulouse<br>FR', '19032021-6054c072d49c5', NULL, 0),
(13, 28, '2021-03-19 16:39:19', 'Uber Eat', 9.9, 'JohnDoe<br>0606060606<br>140 rue de chaussas<br>31200 Toulouse<br>FR', '19032021-6054c5a7a622a', NULL, 0),
(14, 28, '2021-03-19 16:51:57', 'Uber Eat', 9.9, 'JohnDoe<br>0606060606<br>140 rue de chaussas<br>31200 Toulouse<br>FR', '19032021-6054c89d2391d', NULL, 0),
(15, 28, '2021-03-22 10:33:58', 'Uber Eat', 9.9, 'Abderrahmaneamziane<br>0606060606<br>126 route d\'espagne<br>31100 Toulouse<br>FR', '22032021-60586486a944b', NULL, 0),
(16, 28, '2021-03-22 10:35:52', 'Uber Eat', 9.9, 'Abderrahmaneamziane<br>0606060606<br>126 route d\'espagne<br>31100 Toulouse<br>FR', '22032021-605864f846061', NULL, 0),
(17, 28, '2021-03-22 10:38:39', 'Eat à domicile', 8.2, 'JohnDoe<br>0606060606<br>140 rue de chaussas<br>31200 Toulouse<br>FR', '22032021-6058659f08c6d', NULL, 0),
(18, 28, '2021-03-22 10:50:25', 'Eat à domicile', 8.2, 'Abderrahmaneamziane<br>0606060606<br>126 route d\'espagne<br>31100 Toulouse<br>FR', '22032021-6058686166448', NULL, 0),
(19, 28, '2021-03-22 10:59:53', 'Eat à domicile', 8.2, 'Abderrahmaneamziane<br>0606060606<br>126 route d\'espagne<br>31100 Toulouse<br>FR', '22032021-60586a993b9ce', NULL, 0),
(20, 28, '2021-03-22 11:39:08', 'Eat à domicile', 8.2, 'Abderrahmaneamziane<br>0606060606<br>126 route d\'espagne<br>31100 Toulouse<br>FR', '22032021-605873cc46862', NULL, 0),
(21, 28, '2021-03-22 20:18:34', 'Uber Eat', 9.9, 'JohnDoe<br>0606060606<br>140 rue de chaussas<br>31200 Toulouse<br>FR', '22032021-6058ed8a9feee', NULL, 0),
(22, 28, '2021-03-22 20:51:26', 'Uber Eat', 9.9, 'JohnDoe<br>0606060606<br>140 rue de chaussas<br>31200 Toulouse<br>FR', '22032021-6058f53eb76f3', NULL, 0),
(23, 28, '2021-03-22 22:38:20', 'Uber Eat', 9.9, 'JohnDoe<br>0606060606<br>140 rue de chaussas<br>31200 Toulouse<br>FR', '22032021-60590e4c124e6', NULL, 0),
(24, 28, '2021-03-22 22:50:45', 'Uber Eat', 9.9, 'JohnDoe<br>0606060606<br>140 rue de chaussas<br>31200 Toulouse<br>FR', '22032021-605911350cec3', NULL, 0),
(25, 28, '2021-03-22 22:56:14', 'Uber Eat', 9.9, 'JohnDoe<br>0606060606<br>140 rue de chaussas<br>31200 Toulouse<br>FR', '22032021-6059127e6a838', NULL, 0),
(26, 28, '2021-03-22 23:28:14', 'Uber Eat', 9.9, 'JohnDoe<br>0606060606<br>140 rue de chaussas<br>31200 Toulouse<br>FR', '22032021-605919fe78179', NULL, 0),
(27, 28, '2021-03-22 23:34:57', 'Uber Eat', 9.9, 'JohnDoe<br>0606060606<br>140 rue de chaussas<br>31200 Toulouse<br>FR', '22032021-60591b91cfc7f', NULL, 0),
(28, 28, '2021-03-23 00:16:12', 'Uber Eat', 9.9, 'JohnDoe<br>0606060606<br>140 rue de chaussas<br>31200 Toulouse<br>FR', '23032021-6059253c88a1f', NULL, 0),
(29, 28, '2021-03-23 00:26:03', 'Uber Eat', 9.9, 'JohnDoe<br>0606060606<br>140 rue de chaussas<br>31200 Toulouse<br>FR', '23032021-6059278b9807e', NULL, 0),
(30, 28, '2021-03-23 00:43:43', 'Eat à domicile', 8.2, 'JohnDoe<br>0606060606<br>140 rue de chaussas<br>31200 Toulouse<br>FR', '23032021-60592baf69262', 'cs_test_b1zrA6SZUvTogjp9sPofxlnZDaV649sTahcUrE5rpmqFvo0WjjcrMpbgxJ', 0),
(31, 28, '2021-03-23 02:12:09', 'Uber Eat', 9.9, 'JohnDoe<br>0606060606<br>140 rue de chaussas<br>31200 Toulouse<br>FR', '23032021-60594069002d3', 'cs_test_b1FqDIdJSpf5m8yLfYrAotAObrrxqGicGZ4mrZI1x0vwOldHenMzh52N24', 0),
(32, 28, '2021-03-23 02:15:39', 'Uber Eat', 9.9, 'JohnDoe<br>0606060606<br>140 rue de chaussas<br>31200 Toulouse<br>FR', '23032021-6059413b0182b', 'cs_test_b1tb6NrZ5onPNVmhaitjNOIgZm7s18zeN1oHCRdJlImouGHt6EwH2m9W58', 0),
(33, 28, '2021-03-23 03:00:53', 'Uber Eat', 990, 'JohnDoe<br>0606060606<br>140 rue de chaussas<br>31200 Toulouse<br>FR', '23032021-60594bd5ea394', NULL, 0),
(34, 28, '2021-03-23 03:02:45', 'Uber Eat', 990, 'JohnDoe<br>0606060606<br>140 rue de chaussas<br>31200 Toulouse<br>FR', '23032021-60594c45afa60', NULL, 0),
(35, 28, '2021-03-23 03:04:06', 'Uber Eat', 990, 'JohnDoe<br>0606060606<br>140 rue de chaussas<br>31200 Toulouse<br>FR', '23032021-60594c96612ae', NULL, 0),
(36, 28, '2021-03-23 03:05:07', 'Uber Eat', 990, 'JohnDoe<br>0606060606<br>140 rue de chaussas<br>31200 Toulouse<br>FR', '23032021-60594cd32fd24', 'cs_test_b1Y6clleuZAfF4Sj1AV6x53Sz6bgoPtv7Luyrqh7eTmh4Yz47TpBugqlGw', 0),
(37, 28, '2021-03-23 03:29:45', 'Uber Eat', 990, 'Abderrahmaneamziane<br>0606060606<br>126 route d\'espagne<br>31100 Toulouse<br>FR', '23032021-60595299e75a7', NULL, 0),
(38, 28, '2021-03-23 03:32:21', 'Uber Eat', 990, 'Abderrahmaneamziane<br>0606060606<br>126 route d\'espagne<br>31100 Toulouse<br>FR', '23032021-60595335e68e5', NULL, 0),
(39, 28, '2021-03-24 13:08:59', 'Eat à domicile', 820, 'JohnDoe<br>0606060606<br>140 rue de chaussas<br>31200 Toulouse<br>FR', '24032021-605b2bdb0d969', 'cs_test_b1GeI3Xi6FAibx0ycE9oswchuX1VTWcqkVetX0QF5HzaWlygcWSAeVK48o', 0),
(40, 28, '2021-03-24 13:22:09', 'Eat à domicile', 820, 'JohnDoe<br>0606060606<br>140 rue de chaussas<br>31200 Toulouse<br>FR', '24032021-605b2ef1bed02', 'cs_test_b1aCBZsD9MMVsLmlflJWYhXTzV1tqSiMqGKZl93JtdiqVlSLaZvlXEdfwR', 0),
(41, 28, '2021-03-24 13:24:11', 'Eat à domicile', 820, 'JohnDoe<br>0606060606<br>140 rue de chaussas<br>31200 Toulouse<br>FR', '24032021-605b2f6ba5050', 'cs_test_b1CUqErguNnlopCIpbvo2IaQU7FKlaPnbPf0BeH5QP9YLksGxzIMnFQ74b', 0),
(42, 28, '2021-03-24 13:46:38', 'Eat à domicile', 820, 'JohnDoe<br>0606060606<br>140 rue de chaussas<br>31200 Toulouse<br>FR', '24032021-605b34aee36ca', 'cs_test_b1bN543HyHawgs3R2dXA7ETsQec6AnFMds4ZoJXF5z3DktwKG6LZusy2PH', 0),
(43, 28, '2021-03-24 13:49:28', 'Eat à domicile', 820, 'JohnDoe<br>0606060606<br>140 rue de chaussas<br>31200 Toulouse<br>FR', '24032021-605b35583badf', 'cs_test_b1OuhHNs37OE1GVjlgekIf0MqjANsJLt99x1LxMzyGLBUq9UpGftfpei5f', 0),
(44, 28, '2021-03-24 15:01:56', 'Eat à domicile', 820, 'JohnDoe<br>0606060606<br>140 rue de chaussas<br>31200 Toulouse<br>FR', '24032021-605b465455608', 'cs_test_b1rJmY2gGJQKv6IkEfFRpYxUlFyfG2KqPn1osOTgQrlRf5VbeYrTPSuDTg', 0),
(45, 31, '2021-03-25 12:28:09', 'Eat à domicile', 820, 'Abderrahmaneamziane<br>0753302928<br>18 rue des lilas<br>45200 Toulouse<br>FR', '25032021-605c73c9d9069', 'cs_test_b1SxCnQMu2Xe1jegqjR9lDYSm583LgKy6HJ1xrpUhIXhngum0T1wcPAi56', 0),
(46, 31, '2021-03-27 12:23:36', 'Eat à domicile', 820, 'Abderrahmaneamziane<br>0753302928<br>18 rue des lilas<br>45200 Toulouse<br>FR', '27032021-605f15b8ef835', 'cs_test_b1aoMaO7PhuaUG8Ubuy3KtKvD0j1ltIKn9029X3wz4pUfjiMrsaJNrKi7m', 0),
(47, 31, '2021-03-27 12:25:54', 'Eat à domicile', 820, 'Abderrahmaneamziane<br>0753302928<br>18 rue des lilas<br>45200 Toulouse<br>FR', '27032021-605f16420307a', 'cs_test_b1DRYO5Ihlho6OB5jy0B9j11Rv9Ipr5rVXJVQKHMI0gcddWdCzdNd3ppCl', 0),
(48, 31, '2021-03-27 13:15:42', 'Eat à domicile', 820, 'Abderrahmaneamziane<br>0753302928<br>18 rue des lilas<br>45200 Toulouse<br>FR', '27032021-605f21ee91664', 'cs_test_b1WJXm1VIzzP5L0fUtZJAf3kDVwy9o2fUO2n9tOyJZmsTaC9g78Qaigopm', 0),
(49, 31, '2021-03-27 13:20:58', 'Eat à domicile', 820, 'Abderrahmaneamziane<br>0753302928<br>18 rue des lilas<br>45200 Toulouse<br>FR', '27032021-605f232a4469e', 'cs_test_b1ZvazRFE974fOgJZ48QKqQpMh6fZd1a0mwzBj6klJzIFhb6kJXwsCEjnh', 0),
(50, 31, '2021-03-27 14:16:22', 'Eat à domicile', 820, 'Abderrahmaneamziane<br>0753302928<br>18 rue des lilas<br>45200 Toulouse<br>FR', '27032021-605f3026cb5e4', 'cs_test_b16PD2tb3hF3KzL2OsnXQwl4AvbqVaXOoDA3GmTLSf5a5Ch6gW2dWMc8JQ', 0),
(51, 31, '2021-03-27 14:22:32', 'Uber Eat', 990, 'Abderrahmaneamziane<br>0753302928<br>18 rue des lilas<br>45200 Toulouse<br>FR', '27032021-605f3198b8b60', 'cs_test_b1TwTgieesv4gCssu2IEc7VROz8gjTKZshmRiMSk1ZK3DZ9ZGiFTsaAuaI', 2),
(52, 31, '2021-03-27 17:39:14', 'Eat à domicile', 820, 'Abderrahmaneamziane<br>0753302928<br>18 rue des lilas<br>45200 Toulouse<br>FR', '27032021-605f5fb20a22c', 'cs_test_b1KcOSgCJtLVLSOpCYW9984Oi2MkHqVEj7ee0Ct0ogLI7dw0ePKmOrwGwY', 2),
(53, 28, '2021-03-29 19:44:18', 'Uber Eat', 990, 'JohnDoe<br>0606060606<br>140 rue de chaussas<br>31200 Toulouse<br>FR', '29032021-606211f2df323', 'cs_test_b1eloRKLc1KFMHDyuD4NMfeCoiQSJr7yalLjS6SJtPfgnTA4B1sfKYvfaH', 1),
(54, 28, '2021-03-29 19:46:44', 'Uber Eat', 990, 'JohnDoe<br>0606060606<br>140 rue de chaussas<br>31200 Toulouse<br>FR', '29032021-60621284f260d', NULL, 0),
(55, 28, '2021-03-29 19:46:45', 'Uber Eat', 990, 'JohnDoe<br>0606060606<br>140 rue de chaussas<br>31200 Toulouse<br>FR', '29032021-6062128586f01', NULL, 0),
(56, 28, '2021-04-05 18:31:04', 'Uber Eat', 990, 'JohnDoe<br>0606060606<br>140 rue de chaussas<br>31200 Toulouse<br>FR', '05042021-606b3b4894fe1', 'cs_test_b1Wc0tCMuCTeBcc50W1H7WvKyMpIJwX5WEqKko8o6emC6N49WJ4EleDYr3', 0),
(57, 28, '2021-04-05 21:27:32', 'Eat à domicile', 820, 'JohnDoe<br>0606060606<br>140 rue de chaussas<br>31200 Toulouse<br>FR', '05042021-606b64a440d62', NULL, 0),
(58, 28, '2021-04-06 20:06:11', 'Eat à domicile', 820, 'JohnDoe<br>0606060606<br>140 rue de chaussas<br>31200 Toulouse<br>FR', '06042021-606ca313592e2', 'cs_test_b1DxKKbIJFIm2euJl50ugQCunLZnMKaNPqko57oKE4ZAcJmdaHXFFDmVuc', 0),
(59, 28, '2021-04-07 09:28:37', 'Uber Eat', 990, 'JohnDoe<br>0606060606<br>140 rue de chaussas<br>31200 Toulouse<br>FR', '07042021-606d5f2575cda', 'cs_test_b1VFeR6xLqFpLBYvyVopvA1HyH4iWVDWaeT7Vcz5VBMJ5S39kAZ2qrMW3r', 0),
(60, 28, '2021-04-07 15:35:36', 'Uber Eat', 990, 'JohnDoe<br>0606060606<br>140 rue de chaussas<br>31200 Toulouse<br>FR', '07042021-606db5281a5ba', 'cs_test_b1nN2aGqKFvhUct2QmkTxFDKO1gUEgmoENpWi8bmbOQyDZTTfT6PkseqTN', 1),
(61, 28, '2021-04-08 15:10:11', 'Eat à domicile', 820, 'JohnDoe<br>0606060606<br>140 rue de chaussas<br>31200 Toulouse<br>FR', '08042021-606f00b3325dc', 'cs_test_b1CotPpM7QDzOYe1LTKK2451WqS73no4WvAPR7gt6cce6ZnK8PwI46BhLD', 1),
(62, 28, '2021-04-08 15:22:24', 'Uber Eat', 990, 'JohnDoe<br>0606060606<br>140 rue de chaussas<br>31200 Toulouse<br>FR', '08042021-606f03909b29c', 'cs_test_b14LM0iR45JhCqhPGIcIXTwdEIlJt969IY3OrOZoKP8nmyQbwxVCIBvOMU', 1),
(63, 28, '2021-04-08 15:29:50', 'Eat à domicile', 820, 'JohnDoe<br>0606060606<br>140 rue de chaussas<br>31200 Toulouse<br>FR', '08042021-606f054e74c4f', 'cs_test_b1If6uivZM48XxXywVIk3BGMbWjg9VqeAcSMN6lgh66bpI6xEulKghFvrh', 0),
(64, 28, '2021-04-09 19:13:20', 'Eat à domicile', 820, 'JohnDoe<br>0606060606<br>140 rue de chaussas<br>31200 Toulouse<br>FR', '09042021-60708b304fda5', 'cs_test_b1t5oPMf59h31YTPcAtjZYXnCkIhxRvC978NmN56xqzWIGxFtw4dXTle5R', 0),
(65, 28, '2021-04-09 23:48:18', 'Uber Eat', 990, 'JohnDoe<br>0606060606<br>140 rue de chaussas<br>31200 Toulouse<br>FR', '09042021-6070cba2ca3ff', 'cs_test_b1gN1D2UYYdr3RYJw5Mv3HOmJqrSchq14OySXEH52CSwwuEO8s1sdq1v7o', 0),
(66, 28, '2021-04-11 11:45:16', 'Uber Eat', 990, 'JohnDoe<br>0606060606<br>140 rue de chaussas<br>31200 Toulouse<br>FR', '11042021-6072c52cd4fdb', 'cs_test_b1lkBxMqMA15mFRAKOna4WTNuTQUa9usiKpLNNb1Slp3tMVy8mq410GRMe', 0),
(67, 28, '2021-04-13 15:48:15', 'Uber Eat', 990, 'JohnDoe<br>0606060606<br>140 rue de chaussas<br>31200 Toulouse<br>FR', '13042021-6075a11f7a078', 'cs_test_b10fqCcqAKd0mIsDA1UaOllElI3DijI14LxrIbjCpTHznul2Z5reDMM80b', 0),
(68, 28, '2021-04-26 10:43:54', 'Uber Eat', 990, 'JohnDoe<br>0606060606<br>140 rue de chaussas<br>31200 Toulouse<br>FR', '26042021-60867d4a9b550', 'cs_test_b1qhLlGAo8tqU3U9L8e1Bguw73L9ZNET5LRbMA2WRRyDDtQxv3qHjnCZYx', 0),
(69, 28, '2021-05-02 13:10:39', 'Uber Eat', 990, 'JohnDoe<br>0606060606<br>140 rue de chaussas<br>31200 Toulouse<br>FR', '02052021-608e88afbadf4', 'cs_test_b11lh22cZFWwXwGSNRedTMK7kpjULWa8QzrZMj9I4q2Zh8kqejuhKHMtuu', 0),
(70, 28, '2021-05-02 14:41:18', 'Uber Eat', 990, 'JohnDoe<br>0606060606<br>140 rue de chaussas<br>31200 Toulouse<br>FR', '02052021-608e9deecf83d', 'cs_test_b1ZMDL3OkuHFaFGes2AHBB675bk9L8VWWkIy9C12aIlhxCWFhnDVtdOE7R', 0),
(71, 28, '2021-05-04 13:28:35', 'Uber Eat', 990, 'JohnDoe<br>0606060606<br>140 rue de chaussas<br>31200 Toulouse<br>FR', '04052021-60912fe3070a6', 'cs_test_b1zuo6zU74Pugfs95Qg4McCwWoTjyw6aRQuATVL0Ctw67XgSygLCJBC18E', 0),
(72, 28, '2021-05-04 13:29:25', 'Uber Eat', 990, 'JohnDoe<br>0606060606<br>140 rue de chaussas<br>31200 Toulouse<br>FR', '04052021-60913015e9c99', 'cs_test_b10y7BuRIrA54qi42b0K2aLYz9tUKF7UEPFk2bQ3fub9U3l95PZGJgzC5N', 1),
(73, 28, '2021-05-05 18:01:45', 'Uber Eat', 990, 'JohnDoe<br>0606060606<br>140 rue de chaussas<br>31200 Toulouse<br>FR', '05052021-6092c1698d28e', 'cs_test_b15fPhsTSGFAK2HJklNQro67hwoWI4Q4BhA5JLSgv7BYinbbpy7vSB7pWo', 0),
(74, 28, '2021-05-05 18:09:35', 'Uber Eat', 990, 'JohnDoe<br>0606060606<br>140 rue de chaussas<br>31200 Toulouse<br>FR', '05052021-6092c33f8e175', 'cs_test_b1oD5vNeLJLJ2i7WTqdCf6fCcFQMhRHUL6CHQbmkF5rBDTeRkPC5VzSMjU', 0),
(76, 28, '2021-05-08 15:27:20', 'Eat à domicile', 820, 'JohnDoe<br>0606060606<br>140 rue de chaussas<br>31200 Toulouse<br>FR', '08052021-609691b884619', 'cs_test_a15F798TqrrsaRUNr1II1Nmbv2sW29HYfbkDRQK1adxlORVI6afLvqXZee', 1),
(77, 28, '2021-05-08 15:28:55', 'Eat à domicile', 820, 'JohnDoe<br>0606060606<br>140 rue de chaussas<br>31200 Toulouse<br>FR', '08052021-60969217c998b', 'cs_test_b1j98qRi4oAPuGje23VLdNOhmAh1yjUwby3PyVshOoUr1sPVCnQtlV9H98', 1),
(78, 28, '2021-05-16 16:51:31', 'Eat à domicile', 820, 'JohnDoe<br>0606060606<br>140 rue de chaussas<br>31200 Toulouse<br>FR', '16052021-60a13173d4af1', 'cs_test_b1qpgLX4EZsSGRaemkn7KaSwdUVxgPbdfl6r1UDvDd9QSOIqVrMB3Rnwej', 0),
(79, 28, '2021-05-16 17:06:25', 'Eat à domicile', 820, 'JohnDoe<br>0606060606<br>140 rue de chaussas<br>31200 Toulouse<br>FR', '16052021-60a134f1e54f4', 'cs_test_b1RYPxxTGBFmq6aZFZpWefippO0y5YOmArQD0XnI2WBlNbIyvMBx6CPCSb', 1),
(80, 28, '2021-05-18 14:03:36', 'Eat à domicile', 820, 'JohnDoe<br>0606060606<br>140 rue de chaussas<br>31200 Toulouse<br>FR', '18052021-60a3ad18ab93c', 'cs_test_b1mAM4TZeFqhZHRyuiMwsgMbe5IKdeeJXJvYHOkgwFRPYeP08P9T1pOrfg', 0);

-- --------------------------------------------------------

--
-- Structure de la table `order_details`
--

CREATE TABLE IF NOT EXISTS `order_details` (
  `id` int(11) NOT NULL,
  `my_order_id` int(11) NOT NULL,
  `product` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` double NOT NULL,
  `total` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `order_details`
--

INSERT INTO `order_details` (`id`, `my_order_id`, `product`, `quantity`, `price`, `total`) VALUES
(1, 1, 'ONION RINGS', 1, 350, 350),
(2, 2, 'MENU CLASSIC', 1, 890, 890),
(3, 3, 'MENU CLASSIC', 1, 890, 890),
(4, 4, 'MENU CLASSIC', 1, 890, 890),
(5, 5, 'MENU CLASSIC', 1, 890, 890),
(6, 5, 'MILKSHAK', 1, 360, 360),
(7, 7, 'MENU CLASSIC', 1, 890, 890),
(8, 8, 'MENU CLASSIC', 1, 890, 890),
(9, 8, 'CÉSAR POULET GRILLÉ', 1, 850, 850),
(10, 9, 'MENU CLASSIC', 1, 890, 890),
(11, 9, 'CÉSAR POULET GRILLÉ', 1, 850, 850),
(12, 10, 'MENU CLASSIC', 1, 890, 890),
(13, 10, 'CÉSAR POULET GRILLÉ', 1, 850, 850),
(14, 11, 'MENU CLASSIC', 1, 890, 890),
(15, 11, 'CÉSAR POULET GRILLÉ', 1, 850, 850),
(16, 12, 'MENU CLASSIC', 1, 890, 890),
(17, 12, 'CÉSAR POULET GRILLÉ', 1, 850, 850),
(18, 13, 'MENU CLASSIC', 1, 890, 890),
(19, 13, 'CÉSAR POULET GRILLÉ', 1, 850, 850),
(20, 14, 'MENU CLASSIC', 1, 890, 890),
(21, 15, 'MENU CLASSIC', 1, 890, 890),
(22, 16, 'MENU CLASSIC', 1, 890, 890),
(23, 17, 'MENU CLASSIC', 1, 890, 890),
(24, 18, 'MENU CLASSIC', 1, 890, 890),
(25, 19, 'MENU CLASSIC', 1, 890, 890),
(26, 20, 'MENU CLASSIC', 1, 890, 890),
(27, 21, 'MENU CLASSIC', 1, 890, 890),
(28, 22, 'MENU CLASSIC', 1, 890, 890),
(29, 23, 'MENU CLASSIC', 1, 890, 890),
(30, 24, 'MENU CLASSIC', 1, 890, 890),
(31, 24, 'CÉSAR POULET GRILLÉ', 1, 850, 850),
(32, 25, 'MENU CLASSIC', 1, 890, 890),
(33, 25, 'CÉSAR POULET GRILLÉ', 1, 850, 850),
(34, 26, 'MENU CLASSIC', 1, 890, 890),
(35, 26, 'CÉSAR POULET GRILLÉ', 1, 850, 850),
(36, 27, 'MENU CLASSIC', 1, 890, 890),
(37, 27, 'CÉSAR POULET GRILLÉ', 1, 850, 850),
(38, 28, 'MENU CLASSIC', 1, 890, 890),
(39, 29, 'MENU CLASSIC', 1, 890, 890),
(40, 30, 'MENU CLASSIC', 1, 890, 890),
(41, 31, 'MENU CLASSIC', 1, 890, 890),
(42, 32, 'MENU CLASSIC', 1, 890, 890),
(43, 33, 'MENU CLASSIC', 1, 890, 890),
(44, 34, 'MENU CLASSIC', 1, 890, 890),
(45, 35, 'MENU CLASSIC', 1, 890, 890),
(46, 36, 'MENU CLASSIC', 1, 890, 890),
(47, 37, 'MENU CLASSIC', 1, 890, 890),
(48, 38, 'MENU CLASSIC', 1, 890, 890),
(49, 39, 'MENU CLASSIC', 1, 890, 890),
(50, 39, 'CÉSAR POULET PANÉ', 1, 860, 860),
(51, 39, 'FONDANT  AU CHOCOLAT', 1, 460, 460),
(52, 40, 'MENU CLASSIC', 1, 890, 890),
(53, 41, 'MENU CLASSIC', 1, 890, 890),
(54, 42, 'MILKSHAK', 1, 360, 360),
(55, 43, 'MENU CLASSIC', 1, 890, 890),
(56, 44, 'CÉSAR POULET GRILLÉ', 1, 850, 850),
(57, 45, 'MENU CLASSIC', 1, 890, 890),
(58, 46, 'CHICKEN', 1, 600, 600),
(59, 47, 'CHICKEN', 4, 600, 2400),
(60, 47, 'MENU CLASSIC', 1, 890, 890),
(61, 48, 'MENU CLASSIC', 1, 890, 890),
(62, 49, 'MENU CLASSIC', 1, 890, 890),
(63, 49, 'POULET PANÉ', 1, 770, 770),
(64, 50, 'MENU CLASSIC', 1, 890, 890),
(65, 51, 'COCA-COLA', 1, 190, 190),
(66, 52, 'CÉSAR POULET PANÉ', 1, 860, 860),
(67, 53, 'MENU CLASSIC', 1, 890, 890),
(68, 54, 'MENU CLASSIC', 1, 890, 890),
(69, 55, 'MENU CLASSIC', 1, 890, 890),
(70, 56, 'MENU CLASSIC', 1, 890, 890),
(71, 57, 'MENU CLASSIC', 2, 890, 1780),
(72, 58, 'MENU CLASSIC', 2, 890, 1780),
(73, 59, 'MENU CLASSIC', 1, 890, 890),
(74, 60, 'MENU CLASSIC', 2, 890, 1780),
(75, 61, 'MENU CLASSIC', 1, 890, 890),
(76, 62, 'MENU CLASSIC', 1, 890, 890),
(77, 63, 'MENU CLASSIC', 1, 890, 890),
(78, 64, 'MENU CLASSIC', 1, 890, 890),
(79, 65, 'MENU CLASSIC', 1, 890, 890),
(80, 65, 'CÉSAR POULET GRILLÉ', 1, 850, 850),
(81, 66, 'MENU CLASSIC', 1, 890, 890),
(82, 67, 'MENU CLASSIC', 1, 890, 890),
(83, 68, 'MENU CLASSIC', 1, 890, 890),
(84, 69, 'MENU DOUBLE STEAK', 1, 1120, 1120),
(85, 70, 'MENU CLASSIC', 1, 890, 890),
(86, 71, 'MENU CLASSIC', 1, 890, 890),
(87, 72, 'MENU CLASSIC', 2, 890, 1780),
(88, 73, 'MENU CLASSIC', 1, 890, 890),
(89, 74, 'MENU CLASSIC', 2, 890, 1780),
(90, 77, 'MENU CLASSIC', 1, 890, 890),
(91, 78, 'MENU CLASSIC', 2, 890, 1780),
(92, 79, 'MENU CLASSIC', 2, 890, 1780),
(93, 80, 'MENU CLASSIC', 1, 890, 890);

-- --------------------------------------------------------

--
-- Structure de la table `product`
--

CREATE TABLE IF NOT EXISTS `product` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `illustration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subtitle` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double NOT NULL,
  `is_best` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `product`
--

INSERT INTO `product` (`id`, `category_id`, `name`, `slug`, `illustration`, `subtitle`, `description`, `price`, `is_best`) VALUES
(37, 1, 'MENU CLASSIC', 'menu-classic', '2e6a1778608c930a3a5741b82cda977c331a4982.png', 'Un Succulent Burger', 'Sandwich: Burger, Tomate, Salade, Frittes + Boisson', 890, 0),
(38, 1, 'MENU BACON', 'menu-bacon', '419cc1e019c03b282a3446655cc7635f6fba317b.png', 'Un Succulent Burger', 'Sandwich: Burger, Fromage, Bacon, Salade, Tomate, Frittes + Boisson', 880, 0),
(39, 1, 'MENU BIG', 'menu-big', '875421ab66b50aef14b76646e7f99b2f2a44ecf9.png', 'Un Succulent Burger', 'Sandwich: Double Burger, Fromage, Bacon, Salade, Cornichon, Frittes + Boisson', 960, 0),
(40, 1, 'MENU CHICKEN', 'menu-chicken', '706b32aae84c981fb70458a67bcb4e271056f6d6.png', 'Un Succulent Burger', 'Sandwich: Poulet Frit, Salade, Tomate, Mayonnaise + Frittes + Boisson', 1050, 0),
(41, 1, 'MENU FISH', 'menu-fish', '79d86025deff1d66d112c2fa13ccfcb94b0cac31.png', 'Un Succulent Burger', 'Sandwich: Poisson , Salade, mayonnaise, Cornichon + Frittes + Boisson', 980, 0),
(42, 1, 'MENU DOUBLE STEAK', 'menu-double-steak', '9b4177d966d0258e4a1eab5693f4a1d7609e9bf6.png', 'Un Succulent Burger', 'Sandwich: Double Burger, Fromage, Bacon, Salade, Tomate + Frittes + Boisson', 1120, 1),
(43, 2, 'CLASSIC', 'classic', 'ccd9665276aa58de5337b3635c33cbaaf8aba138.png', 'Un Succulent Burger', 'Sandwich: Burger, Salade, Tomate, Cornichon', 570, 0),
(44, 2, 'BACON', 'bacon', 'd163987101f6e4c6c91fc1321b29a8db9e131a27.png', 'Un Succulent Burger', 'Sandwich: Burger, Fromage, Bacon, Salade, Tomate', 670, 0),
(45, 2, 'BIG', 'big', '8a1d43382e2accf4dab37f758bcea3fd55271598.png', 'Un Succulent Burger', 'Sandwich: Double Burger, Fromage, Cornichon, Salade', 680, 0),
(46, 2, 'CHICKEN', 'chicken', '2ecf2478bdeae15cc2f0bdba815c1e237ffde088.png', 'Un Succulent Burger', 'Sandwich: Poulet Frit, Salade, Tomate, Mayonnaise', 600, 0),
(47, 2, 'FISH', 'fish', 'ae196d5a2fa1e4cb9e7d24e4a35ea55ecd83f930.png', 'Un Succulent Burger', 'Sandwich: Poisson Pané, Salade, Mayonnaise, Cornichon', 660, 0),
(48, 2, 'DOUBLE STEAK', 'double-steak', '51e909f65f2c6c6a11955f9c15d379801ebe6009.png', 'Un Succulent Burger', 'Sandwich: Double Burger, Fromage, Bacon, Salade, Tomate', 780, 0),
(49, 3, 'CÉSAR POULET PANÉ', 'cesar-poulet-pane', '98aacf1f3fa0ba67a93b5284ba1586340affd57f.png', 'Une bonne Salade Composée', 'Poulet Pané, Salade, Tomate, Et La Fameuse Sauce César', 860, 0),
(50, 3, 'CÉSAR POULET GRILLÉ', 'cesar-poulet-grille', 'f5211bc5611c587d5f26b60e0b777daa7b7f8ed0.png', 'Un bonne  Salade Composée', 'Poulet Grillé, Salade, Tomate, Et La Fameuse Sauce César', 850, 1),
(51, 3, 'SALADE LIGHT', 'salade-light', '5b5f0ee9cd2304c4782d162cd6a48d91ea38a4d2.png', 'Une bonne Salade Composée', 'Salade, Tomate, Concombre, Maïs, Et Vinaigre Balsamique', 650, 0),
(52, 3, 'POULET PANÉ', 'poulet-pane', 'b47565662b3d702374b785c9dd91fae6b0508cf1.png', 'Une bonne Salade Composée', 'Poulet Pané, salade, Tomate, Maïs, Et La Sauce De Votre Choix', 770, 0),
(53, 3, 'POULET GRILLÉ', 'poulet-grille', '267be310217dda49c734c3f3fca9eee02b705a6c.png', 'Une bonne Salade Composée', 'Poulet Grillé, salade, Tomate, Maïs, Et La Sauce De Votre Choix', 740, 0),
(54, 4, 'FRITTES', 'frittes', '5b0238f9847e24e78ac7d8ab4c4426434e4b1375.png', 'Un Bon Snack', 'Pommes De Terre Frittes', 360, 0),
(55, 4, 'ONION RINGS', 'onion-rings', '64cabf6fc982612f14becc9c3ad6b07cb92198bb.png', 'Un Bon Snack', 'Rondelles D\'oignon Frits', 350, 0),
(56, 4, 'NUGGETS', 'nuggets', '3a04ae319369ef1c0fa3431c05473ab95767742c.png', 'Un Bon Snack', 'Nuggets De Poulet Frits', 650, 0),
(57, 4, 'NUGGETS FROMAGE', 'nuggets-fromage', '3cb45235ca70eff672868538d79c9c22c40b39c8.png', 'Un Bon Snack', 'Nuggets Fromage Frits', 450, 0),
(58, 4, 'AILES DE POULET', 'ailes-de-poulet', '76c7dcd16e5d8988453dbe4d37bbcaa6d0036e00.png', 'Un Bon Snack', 'Ailes De Poulet Barbecue', 590, 1),
(59, 5, 'FONDANT  AU CHOCOLAT', 'fondant-au-chocolat', '3210b9d0b93f963bd5e971cb1a6fb76634489f11.png', 'La Pause Tendresse', 'Au Choix: Chocolat Blanc Ou Au Lait', 460, 1),
(60, 5, 'MUFFIN', 'muffin', '90471c980af50f6575549f6024aa224f1a14e8c1.png', 'La Pause Tendresse', 'Au Choix: Au Fruits Ou Au Chocolat', 280, 0),
(61, 5, 'BEIGNET', 'beignet', '1f13bd0c1b1f6c9f82cd2a6dc3dd3dcc77efcda6.png', 'La Pause Tendresse', 'Au Choix: Au Chocolat Ou à La Vanille', 240, 0),
(62, 5, 'MILKSHAK', 'milkshak', 'e647fe8422fa78493da27b0c27e0a1df9bbd114c.png', 'La Pause Tendresse', 'Au Choix: Fraise, Vanille Ou Au Chocolat', 360, 0),
(63, 5, 'SUNDAE', 'sundae', '6c6eb8ae507b0890f4baa11559807a9b0bb17c87.png', 'La Pause Tendresse', 'Au Choix: Fraise, Caramel Ou Au Chocolat', 450, 0),
(64, 6, 'COCA-COLA', 'coca-cola', 'd2c65263b16527c4e9e933c039113c219a5029bb.png', 'Une Boisson Très Fraiche', 'Au Choix: Petit, Moyen Ou Grand', 190, 0),
(65, 6, 'COCA-COLA-LIGHT', 'coca-cola-light', '9512a93c6fb5c25c8b60dbf108dcdb337dbd593e.png', 'Une Boisson Très Fraiche', 'Au Choix: Petit, Moyen Ou Grand', 190, 0),
(66, 6, 'COCA-COLA-ZÉRO', 'coca-cola-zero', '02ec0b242db6fc5bcd64377f775813d796a3cb19.png', 'Une Boisson Très Fraiche', 'Au Choix: Petit, Moyen Ou Grand', 190, 0),
(67, 6, 'FONTA', 'fonta', 'fe79b11a1e08483b7df86f5244a198a464d73a11.png', 'Une Boisson Très Fraiche', 'Au Choix: Petit, Moyen Ou Grand', 190, 0),
(69, 6, 'SPRITE', 'sprite', '389db165d9de0598b9f77883623f5be2511cbbd2.png', 'Une Boisson Très Fraiche', 'Au Choix: Petit, Moyen Ou Grand', 190, 0),
(70, 6, 'NESTEA', 'nestea', '81e4babff5e9067095b26cf18ff1285f3375b7e0.png', 'Une Boisson Très Fraiche', 'Au Choix: Petit, Moyen Ou Grand', 190, 0);

-- --------------------------------------------------------

--
-- Structure de la table `reset_password`
--

CREATE TABLE IF NOT EXISTS `reset_password` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `reset_password`
--

INSERT INTO `reset_password` (`id`, `user_id`, `token`, `created_at`) VALUES
(1, 28, '6061a47baedce', '2021-03-29 11:57:15'),
(2, 28, '6061a4fb6b4b2', '2021-03-29 11:59:23'),
(3, 28, '6061a6d2a80b4', '2021-03-29 12:07:14'),
(4, 28, '6061aaab7037c', '2021-03-29 12:23:39'),
(5, 28, '6061b706311fb', '2021-03-29 13:16:22'),
(6, 28, '6061b7460f001', '2021-03-29 13:17:26'),
(7, 28, '609fbd30bbb85', '2021-05-15 14:23:12');

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL,
  `email` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL,
  `roles` longtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:json)',
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `firstname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id`, `email`, `roles`, `password`, `firstname`, `lastname`) VALUES
(6, 'pati@gmail.com', '[]', 'toulouse', 'pati', 'alcord'),
(9, 'billy@tite.com', '[]', '$argon2id$v=19$m=65536,t=4,p=1$a3JjRmJaY3EvTVFZZDdtRg$alTrnDuBU10X/jPi2cDa7D8B8lS+1YTx2ZAQaqVLTrs', 'abdel', 'amziane'),
(13, 'l@l.fr', '[]', '$argon2id$v=19$m=65536,t=4,p=1$UzY1VGtkcUZ1WWV6dGxGTg$b+1Kek/bdJt9gQyOi2cIwbWlmOwDLUV2cJ7ft5bTz24', 'lf', 'lf'),
(16, 'frt@live.fr', '[]', '$argon2id$v=19$m=65536,t=4,p=1$Z25aaW8uRVJzNGRwaGJ5VA$fhIw30Zt6OWllTgFYrYrRbRNFWk+TCbBXnR6mkHXu4k', 'pm', 'kaka'),
(17, 'lb@titi.fr', '[]', '$argon2id$v=19$m=65536,t=4,p=1$VDQ5cXNva1A1akc1dG5taQ$e+m8etU/FJrz1aMA3Z9nLBVsyrcQ9+T2pB4a6SRfV/g', 'lap', 'kidum'),
(18, 'l@fut.com', '[]', '$argon2id$v=19$m=65536,t=4,p=1$VDUyL3NmN2U5b3ovZjBkYQ$8OyMnDBbdbwt87sMGtsrp0SVFuKVa7omZM+P5qb07rU', 'Makoudi', 'Meriem'),
(21, 'john@doe.fr', '[]', '$argon2id$v=19$m=65536,t=4,p=1$ZGlFMlVjQjJrWDdBdDk4bQ$8mwIDjIEYZhacdmys6EmhQAwuPkVvjR8AQxWkTg3xMY', 'john', 'doe'),
(22, 'bat@live.com', '[]', '$argon2id$v=19$m=65536,t=4,p=1$TmRFSGtoMWYyaVNIdm9HaQ$xFHsf9buJz6yOtJ4G5R5+V1oVO+kY9Sz959gAUW5fw0', 'adim', 'dam'),
(25, 'matin@tilte.com', '[]', '$argon2id$v=19$m=65536,t=4,p=1$eUJ5UWJ5azQwTUQ0VnhLSQ$33AfEF/wl0VGVJ06Hf8ubBSZfHtnyopnnPjhObB4Kos', 'abderrahmane', 'belkacem'),
(26, 'toulouse@minimes.com', '[]', '$argon2id$v=19$m=65536,t=4,p=1$UzJ3QUR0UVRMcDJNU1VPMw$XW4g/hoLZbTaOASysF3OIN0NvmNDHvo6Ae+SHFBXrxM', 'rachid', 'aguini'),
(27, 'minimes@toulouse.com', '[]', '$argon2id$v=19$m=65536,t=4,p=1$TkI3ZHlTNy9ubzRRQllUcQ$pXwVioksTWM81Vc4B2msDVs4B58J0XcckpHy2IHHLXQ', 'fafa', 'fafa'),
(28, 'amzabde@gmail.com', '[\"ROLE_ADMIN\"]', '$argon2id$v=19$m=65536,t=4,p=1$V0c1NXR3ZW1nQkpSTk1ROA$bATacQxcdj0T4rWeYXvluXZpVTRNMU9tvRFBdb2sqwc', 'abderrahmane', 'amziane'),
(30, 'burgershop31@gmail.com', '[]', '$argon2id$v=19$m=65536,t=4,p=1$MU5XQTdwZ1AxV3FmYlpIMQ$qpf4rcqa9TPmd2KiYi88wpYuxsdTcu3m7zNG1AAOqD8', 'Abderrahmane', 'Amziane'),
(31, 'abpimmo31@gmail.com', '', '$argon2id$v=19$m=65536,t=4,p=1$UEF3N2dDSy4vVWxzMmtaSg$klqGCHVf0XuRwPMZwtvv2EY2GL/p8ehTQZv94q+6hz4', 'abderrahmane', 'amziane'),
(32, 'abde@yahoo.com', '[]', '$argon2id$v=19$m=65536,t=4,p=1$V2dqc28zbkYuajg2OHpGaw$25xMHWKrXBt72gOafruIVl2SIBY6YY2J1rF5LFjDGDc', 'Abderrahmane', 'amziane');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `address`
--
ALTER TABLE `address`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_D4E6F81A76ED395` (`user_id`);

--
-- Index pour la table `carrier`
--
ALTER TABLE `carrier`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `doctrine_migration_versions`
--
ALTER TABLE `doctrine_migration_versions`
  ADD PRIMARY KEY (`version`);

--
-- Index pour la table `header`
--
ALTER TABLE `header`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_F5299398A76ED395` (`user_id`);

--
-- Index pour la table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_845CA2C1BFCDF877` (`my_order_id`);

--
-- Index pour la table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_D34A04AD12469DE2` (`category_id`);

--
-- Index pour la table `reset_password`
--
ALTER TABLE `reset_password`
  ADD PRIMARY KEY (`id`),
  ADD KEY `IDX_B9983CE5A76ED395` (`user_id`);

--
-- Index pour la table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_8D93D649E7927C74` (`email`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `address`
--
ALTER TABLE `address`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT pour la table `carrier`
--
ALTER TABLE `carrier`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `header`
--
ALTER TABLE `header`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT pour la table `order`
--
ALTER TABLE `order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT pour la table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=94;

--
-- AUTO_INCREMENT pour la table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT pour la table `reset_password`
--
ALTER TABLE `reset_password`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT pour la table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `address`
--
ALTER TABLE `address`
  ADD CONSTRAINT `FK_D4E6F81A76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Contraintes pour la table `order`
--
ALTER TABLE `order`
  ADD CONSTRAINT `FK_F5299398A76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Contraintes pour la table `order_details`
--
ALTER TABLE `order_details`
  ADD CONSTRAINT `FK_845CA2C1BFCDF877` FOREIGN KEY (`my_order_id`) REFERENCES `order` (`id`);

--
-- Contraintes pour la table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `FK_D34A04AD12469DE2` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`);

--
-- Contraintes pour la table `reset_password`
--
ALTER TABLE `reset_password`
  ADD CONSTRAINT `FK_B9983CE5A76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
