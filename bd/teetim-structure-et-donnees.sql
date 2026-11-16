/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : teetim
--
CREATE DATABASE IF NOT EXISTS teetim DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE teetim;

-- --------------------------------------------------------

--
-- Structure de la table categorie
--

CREATE TABLE categorie (
  id tinyint(4) NOT NULL,
  nom varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Données de la table categorie
--

INSERT INTO categorie (id, nom) VALUES
(2, 'Casquettes'),
(3, 'Hoodies'),
(1, 'Teeshirts');

-- --------------------------------------------------------

--
-- Structure de la table panier
--

CREATE TABLE panier (
  id mediumint(9) NOT NULL,
  code char(29) NOT NULL,
  ddm timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table panier_article
--

CREATE TABLE panier_article (
  id int(11) NOT NULL,
  prd_id smallint(6) NOT NULL,
  qte tinyint(4) NOT NULL DEFAULT 1,
  pan_id mediumint(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table produit
--

CREATE TABLE produit (
  id smallint(6) NOT NULL,
  nom varchar(200) NOT NULL,
  ventes smallint(6) NOT NULL DEFAULT 0,
  dac date NOT NULL,
  prix decimal(5,2) NOT NULL,
  fichier_image char(50) NOT NULL DEFAULT '',
  thm_id tinyint(4) NOT NULL,
  cat_id tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Données de la table produit
--

INSERT INTO produit (id, nom, ventes, dac, prix, fichier_image, thm_id, cat_id) VALUES
(1, 'Cute comme un poisson tropical', 34, '2021-04-25', 25.95, '', 1, 1),
(2, 'Monstre douillet', 123, '2024-08-12', 25.95, '', 1, 1),
(3, 'Camarade basque', 20, '2024-02-27', 20.50, 'ts0002.webp', 1, 1),
(4, 'Chaton moteur', 12, '2025-10-01', 27.50, '', 1, 1),
(5, 'Panda philosophe', 87, '2024-05-15', 24.95, 'ts0003.webp', 1, 1),
(6, 'Loup lunaire', 156, '2023-11-30', 26.50, '', 1, 1),
(7, 'Renard rêveur', 45, '2025-03-08', 23.95, 'ts0004.webp', 1, 1),
(8, 'Ours polaire poétique', 198, '2022-12-15', 27.95, 'ts0005.webp', 1, 1),
(9, 'Éléphant élégant', 67, '2024-07-22', 25.50, 'ts0006.webp', 1, 1),
(10, 'Hibou sage', 234, '2023-09-10', 24.95, 'ts0007.webp', 1, 1),
(11, 'Koala câlin', 89, '2025-01-18', 22.95, 'ts0008.webp', 1, 1),
(12, 'Pingouin danseur', 112, '2024-04-05', 23.50, 'ts0001.webp', 1, 1),
(13, 'Tigre tranquille', 178, '2023-06-14', 28.95, 'ts0009.webp', 1, 1),
(14, 'Tortue temporelle', 34, '2025-05-20', 21.95, 'ts0010.webp', 1, 1),
(15, 'Papillon magique', 145, '2024-09-12', 23.94, 'ts0011.webp', 1, 1),
(16, 'Dauphin joyeux', 267, '2023-03-25', 25.95, 'ts0012.webp', 1, 1),
(17, 'Colibri cosmique', 56, '2025-07-08', 24.50, 'ts0013.webp', 1, 1),
(18, 'Flamant rose flottant', 93, '2024-11-19', 23.95, 'ts0014.webp', 1, 1),
(19, 'Caméléon coloré', 201, '2023-08-30', 26.95, '', 1, 1),
(20, 'Castor constructeur', 41, '2025-02-14', 22.50, 'ts0015.webp', 1, 1),
(21, 'Écureuil énergique', 118, '2024-06-07', 20.95, 'ts0016.webp', 1, 1),
(22, 'Lapin lunaire', 189, '2023-10-22', 24.95, '', 1, 1),
(23, 'Perroquet pirate', 72, '2025-04-11', 25.50, '', 1, 1),
(24, 'Hippopotame heureux', 134, '2024-01-28', 26.50, '', 1, 1),
(25, 'Girafe galactique', 167, '2023-05-16', 27.95, '', 1, 1),
(26, 'Zèbre zen', 58, '2025-08-03', 23.50, '', 1, 1),
(27, 'Phoque souriant', 102, '2024-10-09', 22.95, '', 1, 1),
(28, 'Loutre ludique', 223, '2023-12-04', 24.50, '', 1, 1),
(29, 'Serpent serein', 38, '2025-06-25', 21.50, '', 1, 1),
(30, 'Grenouille groove', 145, '2024-03-17', 20.50, '', 1, 1),
(31, 'Fauteuil illégal', 6, '2025-06-20', 20.50, '', 2, 1),
(32, 'Toaster philosophique', 78, '2024-08-14', 22.95, '', 2, 1),
(33, 'Chaussette spatiale', 156, '2023-11-07', 23.94, 'ts0017.webp', 2, 1),
(34, 'Parapluie paradoxal', 43, '2025-02-27', 23.50, '', 2, 1),
(35, 'Cuillère cosmique', 91, '2024-05-22', 21.95, '', 2, 1),
(36, 'Lampe lyrique', 187, '2023-09-18', 24.95, '', 2, 1),
(37, 'Brosse à dents temporelle', 29, '2025-07-12', 22.74, '', 2, 1),
(38, 'Fourchette féerique', 134, '2024-12-05', 20.50, '', 2, 1),
(39, 'Réveil rêveur', 245, '2023-04-28', 22.50, '', 2, 1),
(40, 'Crayon créatif 2', 67, '2025-10-15', 23.40, '', 2, 1),
(41, 'Clavier quantique', 103, '2024-07-30', 25.95, '', 2, 1),
(42, 'Bouteille bavarde', 178, '2023-06-11', 21.50, '', 2, 1),
(43, 'Tasse télépathique', 52, '2025-03-19', 23.95, '', 2, 1),
(44, 'Assiette astrale', 89, '2024-11-26', 24.50, '', 2, 1),
(45, 'Oreiller onirique', 212, '2023-08-09', 26.95, '', 2, 1),
(46, 'Téléphone transdimensionnel', 41, '2025-05-07', 27.50, '', 2, 1),
(47, 'Montre mystique', 126, '2024-02-13', 28.95, 'ts0018.webp', 2, 1),
(48, 'Lunettes lumineuses', 198, '2023-10-31', 22.95, '', 2, 1),
(49, 'Sac surnaturel', 73, '2025-09-04', 25.50, '', 2, 1),
(50, 'Ciseaux célestes', 117, '2024-04-20', 20.95, '', 2, 1),
(51, 'Un dunk dans l''univers', 21, '2025-01-02', 22.75, '', 3, 1),
(52, 'Football fantastique', 189, '2024-06-18', 24.95, '', 3, 1),
(53, 'Tennis temporel', 143, '2023-09-25', 23.50, '', 3, 1),
(54, 'Surf stellaire', 67, '2025-04-16', 26.95, '', 3, 1),
(55, 'Skate sidéral', 98, '2024-10-29', 25.50, '', 3, 1),
(56, 'Vélo véloce', 234, '2023-07-14', 22.95, '', 3, 1),
(57, 'Yoga yogique', 156, '2025-08-22', 21.50, '', 3, 1),
(58, 'Boxe brillante', 112, '2024-03-06', 27.95, 'ts0019.webp', 3, 1),
(59, 'Golf galactique', 187, '2023-12-19', 24.50, '', 3, 1),
(60, 'Natation nébuleuse', 89, '2025-05-28', 23.95, '', 3, 1),
(61, 'Escalade cosmique', 134, '2024-09-11', 28.50, '', 3, 1),
(62, 'Course céleste', 267, '2023-05-03', 22.50, '', 3, 1),
(63, 'Hockey héroïque', 45, '2025-11-07', 26.50, '', 3, 1),
(64, 'Volley-ball volant', 178, '2024-01-24', 23.50, '', 3, 1),
(65, 'Baseball brillant', 201, '2023-08-17', 25.95, '', 3, 1),
(66, 'Rugby rugissant', 92, '2025-02-09', 27.50, '', 3, 1),
(67, 'Ping-pong planétaire', 156, '2024-07-15', 23.94, '', 3, 1),
(68, 'Badminton astral', 123, '2023-11-28', 21.95, '', 3, 1),
(69, 'Karaté cosmique', 78, '2025-06-13', 26.95, '', 3, 1),
(70, 'Athlétisme atmosphérique', 145, '2024-12-01', 24.95, '', 3, 1),
(71, 'bleu comme une orange', 325, '2024-12-25', 25.95, '', 4, 1),
(73, 'Forêt enchantée', 198, '2024-05-09', 26.50, '', 4, 1),
(74, 'Montagne majestueuse', 234, '2023-10-14', 27.95, '', 4, 1),
(75, 'Rivière rêveuse', 87, '2025-03-27', 23.50, '', 4, 1),
(76, 'Désert doré', 156, '2024-08-19', 24.95, '', 4, 1),
(77, 'Cascade cristalline', 267, '2023-06-05', 25.50, '', 4, 1),
(78, 'Aurore boréale', 112, '2025-09-11', 28.95, '', 4, 1),
(79, 'Fleur cosmique', 178, '2024-02-23', 22.95, '', 4, 1),
(80, 'Arbre ancestral', 289, '2023-09-08', 26.95, '', 4, 1),
(81, 'Oasis onirique', 94, '2025-01-16', 24.50, '', 4, 1),
(82, 'Volcan vibrant', 134, '2024-11-04', 27.50, '', 4, 1),
(83, 'Mer mystique', 312, '2023-04-21', 25.95, '', 4, 1),
(84, 'Champ de lavande', 67, '2025-07-29', 23.95, '', 4, 1),
(85, 'Canyon céleste', 189, '2024-04-12', 26.50, '', 4, 1),
(86, 'Prairie printanière', 245, '2023-12-07', 22.50, '', 4, 1),
(87, 'Glacier glacé', 78, '2025-05-18', 28.50, '', 4, 1),
(88, 'Jungle joyeuse', 167, '2024-09-26', 24.95, '', 4, 1),
(89, 'Plage paradisiaque', 298, '2023-07-13', 25.50, '', 4, 1),
(90, 'Vallée verdoyante', 123, '2025-10-05', 23.50, '', 4, 1),
(91, 'Pixel parfait', 187, '2024-06-14', 24.95, '', 5, 1),
(92, 'Boss final', 256, '2023-11-22', 26.50, '', 5, 1),
(93, 'Power-up puissant', 134, '2025-02-08', 23.95, '', 5, 1),
(94, 'Manette magique', 189, '2024-08-30', 25.50, '', 5, 1),
(95, 'Level up!', 312, '2023-05-17', 22.95, '', 5, 1),
(96, 'Combo cosmique', 98, '2025-09-24', 27.50, '', 5, 1),
(97, 'Rage quit', 223, '2024-01-11', 21.95, '', 5, 1),
(98, 'Respawn rapide', 178, '2023-09-29', 24.50, '', 5, 1),
(99, 'GG bien joué', 156, '2025-04-06', 23.50, 'ts0020.webp', 5, 1),
(100, 'Achievement débloqué', 201, '2024-10-18', 25.95, '', 5, 1),
(101, 'Speedrun stellaire', 267, '2023-03-25', 26.95, '', 5, 1),
(102, 'Easter egg', 89, '2025-07-14', 22.50, '', 5, 1),
(103, 'Bug ou feature?', 145, '2024-05-02', 24.95, '', 5, 1),
(104, 'Noob friendly', 198, '2023-12-20', 20.95, '', 5, 1),
(105, 'Pro gamer', 67, '2025-11-08', 28.50, '', 5, 1),
(106, 'Loot légendaire', 234, '2024-03-16', 27.95, '', 5, 1),
(107, 'Glitch glorieux', 167, '2023-08-04', 23.95, '', 5, 1),
(108, 'NPC philosophe', 112, '2025-01-22', 25.50, '', 5, 1),
(109, 'Quest épique', 189, '2024-11-09', 26.50, '', 5, 1),
(110, 'Save point sacré', 245, '2023-06-27', 24.50, '', 5, 1),
(111, 'Guitare galactique', 178, '2024-07-21', 25.95, '', 6, 1),
(112, 'Piano planétaire', 234, '2023-10-09', 27.50, '', 6, 1),
(113, 'Batterie brillante', 98, '2025-03-15', 24.95, '', 6, 1),
(114, 'Violon vibrant', 156, '2024-09-03', 26.50, '', 6, 1),
(115, 'Saxophone sidéral', 289, '2023-04-18', 28.95, '', 6, 1),
(116, 'Trompette temporelle', 67, '2025-08-26', 23.50, '', 6, 1),
(117, 'Flûte féerique', 201, '2024-02-12', 22.95, '', 6, 1),
(118, 'Harpe harmonique', 167, '2023-11-30', 27.95, '', 6, 1),
(119, 'Basse cosmique', 134, '2025-05-09', 25.50, '', 6, 1),
(120, 'Synthé stellaire', 189, '2024-12-17', 26.95, '', 6, 1),
(121, 'DJ dimensionnel', 312, '2023-07-05', 24.50, '', 6, 1),
(122, 'Microphone magique', 78, '2025-10-23', 21.95, '', 6, 1),
(123, 'Casque céleste', 223, '2024-04-08', 28.50, '', 6, 1),
(124, 'Vinyle vintage', 267, '2023-09-16', 23.95, '', 6, 1),
(125, 'Note nébuleuse', 145, '2025-01-31', 22.50, '', 6, 1),
(126, 'Rythme radieux', 178, '2024-10-27', 25.95, '', 6, 1),
(127, 'Mélodie mystique', 298, '2023-05-14', 26.50, '', 6, 1),
(128, 'Accord astral', 89, '2025-06-02', 24.95, '', 6, 1),
(129, 'Tempo transcendant', 156, '2024-08-10', 27.50, '', 6, 1),
(130, 'Symphonie spatiale', 234, '2023-12-28', 29.95, '', 6, 1),
(131, 'Concert cosmique', 112, '2025-09-17', 25.50, '', 6, 1),
(132, 'Festival féerique', 198, '2024-03-26', 23.95, '', 6, 1),
(133, 'Rock stellaire', 245, '2023-08-13', 26.95, '', 6, 1),
(134, 'Jazz joyeux', 134, '2025-04-21', 24.50, '', 6, 1),
(135, 'Blues brillant', 167, '2024-11-29', 22.95, '', 6, 1),
(136, 'Atome aventurier', 189, '2024-05-16', 24.95, '', 7, 1),
(137, 'Molécule magique', 223, '2023-10-24', 25.50, '', 7, 1),
(138, 'Neurone nébuleux', 98, '2025-02-03', 26.95, '', 7, 1),
(139, 'Cellule céleste', 156, '2024-09-19', 23.95, '', 7, 1),
(140, 'ADN dimensionnel', 267, '2023-04-07', 27.50, '', 7, 1),
(141, 'Électron énergique', 78, '2025-07-15', 22.50, '', 7, 1),
(142, 'Proton puissant', 201, '2024-01-23', 24.50, '', 7, 1),
(143, 'Neutron nébulaire', 178, '2023-11-11', 25.95, '', 7, 1),
(144, 'Photon fantastique', 123, '2025-05-30', 26.50, '', 7, 1),
(145, 'Quark quantique', 189, '2024-12-08', 28.95, '', 7, 1),
(146, 'Microscope mystique', 234, '2023-06-16', 23.50, '', 7, 1),
(147, 'Télescope temporel', 67, '2025-10-04', 27.95, '', 7, 1),
(148, 'Éprouvette étoilée', 145, '2024-03-13', 21.95, '', 7, 1),
(149, 'Laboratoire lunaire', 198, '2023-09-21', 26.95, '', 7, 1),
(150, 'Équation éblouissante', 112, '2025-01-09', 24.95, '', 7, 1),
(151, 'Formule féerique', 167, '2024-10-17', 25.50, '', 7, 1),
(152, 'Théorème transcendant', 289, '2023-05-25', 28.50, '', 7, 1),
(153, 'Expérience extraordinaire', 89, '2025-08-13', 23.95, '', 7, 1),
(154, 'Chimie céleste', 178, '2024-02-01', 26.50, '', 7, 1),
(155, 'Physique fantastique', 245, '2023-12-09', 27.50, '', 7, 1),
(156, 'Biologie brillante', 98, '2025-06-27', 24.50, '', 7, 1),
(157, 'Astronomie astrale', 156, '2024-11-14', 29.95, '', 7, 1),
(158, 'Géologie galactique', 201, '2023-07-22', 25.95, '', 7, 1),
(159, 'Écologie cosmique', 134, '2025-03-30', 23.50, '', 7, 1),
(160, 'Mathématiques mystiques', 189, '2024-08-07', 26.95, '', 7, 1),
(161, 'Pinceau planétaire', 167, '2024-06-25', 24.95, '', 8, 1),
(162, 'Palette paradisiaque', 223, '2023-10-03', 26.50, '', 8, 1),
(163, 'Toile temporelle', 98, '2025-02-19', 25.95, '', 8, 1),
(164, 'Sculpture sidérale', 145, '2024-09-27', 27.50, '', 8, 1),
(165, 'Couleur cosmique', 289, '2023-04-15', 23.95, '', 8, 1),
(166, 'Dessin dimensionnel', 67, '2025-07-23', 22.50, '', 8, 1),
(167, 'Crayon créatif', 201, '2024-01-31', 20.95, '', 8, 1),
(168, 'Aquarelle astrale', 178, '2023-11-19', 25.50, '', 8, 1),
(169, 'Pastel planétaire', 112, '2025-05-07', 24.50, '', 8, 1),
(170, 'Spray stellaire', 156, '2024-12-16', 26.95, '', 8, 1),
(171, 'Graffiti galactique', 234, '2023-06-24', 28.50, '', 8, 1),
(172, 'Mosaïque mystique', 89, '2025-10-12', 27.95, '', 8, 1),
(173, 'Collage cosmique', 167, '2024-03-21', 23.50, '', 8, 1),
(174, 'Photographie féerique', 198, '2023-09-29', 29.95, '', 8, 1),
(175, 'Illustration illuminée', 123, '2025-01-17', 24.95, '', 8, 1),
(176, 'Calligraphie céleste', 145, '2024-10-25', 25.50, '', 8, 1),
(177, 'Origami onirique', 267, '2023-05-02', 21.95, '', 8, 1),
(178, 'Poterie planétaire', 78, '2025-08-20', 26.50, '', 8, 1),
(179, 'Vitrail vibrant', 189, '2024-02-09', 28.95, '', 8, 1),
(180, 'Tapisserie temporelle', 212, '2023-12-17', 27.50, '', 8, 1),
(181, 'Fresque fantastique', 98, '2025-06-05', 25.95, '', 8, 1),
(182, 'Portrait paradoxal', 134, '2024-11-22', 24.50, '', 8, 1),
(183, 'Paysage planétaire', 223, '2023-07-30', 26.95, '', 8, 1),
(184, 'Nature morte nébuleuse', 112, '2025-04-08', 23.95, '', 8, 1),
(185, 'Abstrait astral', 178, '2024-08-16', 27.95, '', 8, 1),
(186, 'Surréalisme stellaire', 289, '2023-03-24', 29.95, '', 8, 1),
(187, 'Impressionnisme intergalactique', 89, '2025-09-01', 28.50, '', 8, 1),
(188, 'Cubisme cosmique', 156, '2024-05-10', 26.50, '', 8, 1),
(189, 'Pop art planétaire', 234, '2023-10-18', 25.50, '', 8, 1),
(190, 'Minimalisme mystique', 123, '2025-02-25', 24.95, '', 8, 1);

-- --------------------------------------------------------

--
-- Structure de la table theme
--

CREATE TABLE theme (
  id tinyint(4) NOT NULL,
  nom varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Données de la table theme
--

INSERT INTO theme (id, nom) VALUES
(1, 'Animaux'),
(8, 'Art'),
(2, 'Inusité'),
(5, 'Jeux vidéo'),
(6, 'Musique'),
(4, 'Nature et environnement'),
(7, 'Science'),
(3, 'Sport et plein air');

--
-- Clés des tables
--

--
-- Clés pour la table categorie
--
ALTER TABLE categorie
  ADD PRIMARY KEY (id),
  ADD UNIQUE KEY nom (nom);

--
-- Clés pour la table panier
--
ALTER TABLE panier
  ADD PRIMARY KEY (id);

--
-- Clés pour la table panier_article
--
ALTER TABLE panier_article
  ADD PRIMARY KEY (id),
  ADD KEY prd_id (prd_id),
  ADD KEY pan_id (pan_id);

--
-- Clés pour la table produit
--
ALTER TABLE produit
  ADD PRIMARY KEY (id),
  ADD UNIQUE KEY nom (nom,cat_id),
  ADD KEY thm_id (thm_id),
  ADD KEY cat_id (cat_id);

--
-- Clés pour la table theme
--
ALTER TABLE theme
  ADD PRIMARY KEY (id),
  ADD UNIQUE KEY nom (nom);

--
-- AUTO_INCREMENT des clés primaires
--

--
-- AUTO_INCREMENT pour la table categorie
--
ALTER TABLE categorie
  MODIFY id tinyint(4) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table panier
--
ALTER TABLE panier
  MODIFY id mediumint(9) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table panier_article
--
ALTER TABLE panier_article
  MODIFY id int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table produit
--
ALTER TABLE produit
  MODIFY id smallint(6) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table theme
--
ALTER TABLE theme
  MODIFY id tinyint(4) NOT NULL AUTO_INCREMENT;

--
-- Contraintes (relations entre les tables)
--

--
-- Contraintes pour la table panier_article
--
ALTER TABLE panier_article
  ADD CONSTRAINT panier_article_ibfk_1 FOREIGN KEY (prd_id) REFERENCES produit (id),
  ADD CONSTRAINT panier_article_ibfk_2 FOREIGN KEY (pan_id) REFERENCES panier (id);

--
-- Contraintes pour la table produit
--
ALTER TABLE produit
  ADD CONSTRAINT produit_ibfk_1 FOREIGN KEY (thm_id) REFERENCES theme (id),
  ADD CONSTRAINT produit_ibfk_2 FOREIGN KEY (cat_id) REFERENCES categorie (id);