-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Hôte : buildydb
-- Généré le :  Dim 25 août 2019 à 22:59
-- Version du serveur :  10.3.17-MariaDB-1:10.3.17+maria~bionic
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
-- Base de données :  `buildy`
--

-- --------------------------------------------------------

--
-- Structure de la table `Articles`
--

CREATE TABLE `Articles` (
  `id` int(11) NOT NULL,
  `title` varchar(45) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `content` longtext DEFAULT NULL,
  `image` varchar(45) NOT NULL DEFAULT 'default-article.jpg',
  `users_id` int(11) NOT NULL,
  `categories` varchar(50) DEFAULT 'GENERAL',
  `state` varchar(50) DEFAULT 'PENDING'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `Articles`
--
-- --------------------------------------------------------
--
-- Structure de la table `Cards`
--

CREATE TABLE `Cards` (
  `id` int(11) NOT NULL,
  `image_url` varchar(250) NOT NULL DEFAULT 'none',
  `name` varchar(45) DEFAULT NULL,
  `toughness` int(11) DEFAULT NULL,
  `power` int(11) DEFAULT NULL,
  `text` varchar(520) DEFAULT NULL,
  `lore` varchar(250) DEFAULT NULL,
  `ruling` varchar(520) DEFAULT NULL,
  `multiverse_id` int(11) NOT NULL DEFAULT -1,
  `releases_id` int(11) NOT NULL,
  `mana_id` int(11) NOT NULL,
  `type_id` int(11) NOT NULL,
  `legalities_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `Cards`
--

-- --------------------------------------------------------

--
-- Structure de la table `Comments`
--

CREATE TABLE `Comments` (
  `id` int(11) NOT NULL,
  `content` longtext DEFAULT NULL,
  `users_id` int(11) NOT NULL,
  `comments_id` int(11) DEFAULT NULL,
  `articles_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Déchargement des données de la table `Comments`
--

-- --------------------------------------------------------

--
-- Structure de la table `Decks`
--

CREATE TABLE `Decks` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `users_id` int(11) NOT NULL,
  `upvotes` int(11) NOT NULL,
  `downvotes` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `Decks`
--
-- --------------------------------------------------------

--
-- Structure de la table `Decks_cards`
--

CREATE TABLE `Decks_cards` (
  `decks_id` int(11) NOT NULL,
  `cards_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `Decks_cards`
--
-- --------------------------------------------------------

--
-- Structure de la table `Favoris`
--

CREATE TABLE `Favoris` (
  `users_id` int(11) NOT NULL,
  `cards_id` int(11) DEFAULT NULL,
  `articles_id` int(11) DEFAULT NULL,
  `decks_id` int(11) DEFAULT NULL,
  `tournaments_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `Legalities`
--

CREATE TABLE `Legalities` (
  `standard` tinyint(1) NOT NULL DEFAULT 0,
  `modern` tinyint(1) NOT NULL DEFAULT 0,
  `legacy` tinyint(1) NOT NULL DEFAULT 0,
  `vintage` tinyint(1) NOT NULL DEFAULT 0,
  `pauper` tinyint(1) NOT NULL DEFAULT 0,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `Legalities`
--
-- --------------------------------------------------------

--
-- Structure de la table `Mana`
--

CREATE TABLE `Mana` (
  `id` int(11) NOT NULL,
  `white` int(11) NOT NULL DEFAULT 0,
  `black` int(11) NOT NULL DEFAULT 0,
  `blue` int(11) NOT NULL DEFAULT 0,
  `green` int(11) NOT NULL DEFAULT 0,
  `red` int(11) NOT NULL DEFAULT 0,
  `colorless` int(11) NOT NULL DEFAULT 0,
  `x` int(11) NOT NULL DEFAULT 0,
  `void` int(11) NOT NULL DEFAULT 0,
  `cmc` int(11) NOT NULL DEFAULT 0,
  `mana_cost` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `Mana`
--

-- --------------------------------------------------------

--
-- Structure de la table `Pages`
--

CREATE TABLE `Pages` (
  `id` int(11) NOT NULL,
  `slug` varchar(50) NOT NULL,
  `content` mediumtext DEFAULT NULL,
  `title` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `Pages`
--
-- --------------------------------------------------------

--
-- Structure de la table `Photo`
--

CREATE TABLE `Photo` (
  `id` int(11) NOT NULL,
  `path` varchar(45) DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `Photo`
--

-- --------------------------------------------------------

--
-- Structure de la table `Tournaments`
--

CREATE TABLE `Tournaments` (
  `id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `ended_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `name` varchar(45) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `nb_contenders` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `Tournaments`
--
-- --------------------------------------------------------

--
-- Structure de la table `Tournaments_members`
--

CREATE TABLE `Tournaments_members` (
  `users_id` int(11) NOT NULL,
  `tournaments_id` int(11) NOT NULL,
  `status` varchar(45) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `Tournaments_members`
--

-- --------------------------------------------------------

--
-- Structure de la table `Type`
--

CREATE TABLE `Type` (
  `id` int(11) NOT NULL,
  `supertype` varchar(75) DEFAULT NULL,
  `type` varchar(75) DEFAULT NULL,
  `subtype` varchar(75) DEFAULT NULL,
  `layout` varchar(75) DEFAULT NULL,
  `rarity` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `Type`
--
-- --------------------------------------------------------

--
-- Structure de la table `Users`
--

CREATE TABLE `Users` (
  `id` int(11) NOT NULL,
  `lastname` varchar(45) DEFAULT NULL,
  `firstname` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `password` varchar(60) DEFAULT NULL,
  `status` varchar(25) NOT NULL DEFAULT 'ACCEPTED',
  `role` varchar(15) NOT NULL DEFAULT 'USER',
  `token` varchar(60) DEFAULT NULL,
  `photo_id` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `Users`
--
-- --------------------------------------------------------

--
-- Structure de la table `Users_cards`
--

CREATE TABLE `Users_cards` (
  `users_id` int(11) NOT NULL,
  `cards_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `Articles`
--
ALTER TABLE `Articles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_articles_categories1_idx` (`categories`);

--
-- Index pour la table `Cards`
--
ALTER TABLE `Cards`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_cards_release1_idx` (`releases_id`);

--
-- Index pour la table `Comments`
--
ALTER TABLE `Comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_commentaires_members1_idx` (`users_id`),
  ADD KEY `fk_commentaires_commentaires1_idx` (`comments_id`),
  ADD KEY `fk_commentaires_article1_idx` (`articles_id`);

--
-- Index pour la table `Decks`
--
ALTER TABLE `Decks`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `Favoris`
--
ALTER TABLE `Favoris`
  ADD KEY `fk_favoris_members1_idx` (`users_id`),
  ADD KEY `fk_favoris_cards1_idx` (`cards_id`),
  ADD KEY `fk_favoris_articles1_idx` (`articles_id`),
  ADD KEY `fk_favoris_decks1` (`decks_id`),
  ADD KEY `fk_favoris_tournaments1_idx` (`tournaments_id`);

--
-- Index pour la table `Legalities`
--
ALTER TABLE `Legalities`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `Mana`
--
ALTER TABLE `Mana`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `Pages`
--
ALTER TABLE `Pages`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `Photo`
--
ALTER TABLE `Photo`
  ADD PRIMARY KEY (`id`);

--
--
-- Index pour la table `Tournaments`
--
ALTER TABLE `Tournaments`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `Tournaments_members`
--
ALTER TABLE `Tournaments_members`
  ADD KEY `fk_tournament_member_members1_idx` (`users_id`),
  ADD KEY `fk_tournament_member_tournaments1_idx` (`tournaments_id`);

--
-- Index pour la table `Type`
--
ALTER TABLE `Type`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `Users`
--
ALTER TABLE `Users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--
--
-- Contraintes pour la table `Cards`

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
