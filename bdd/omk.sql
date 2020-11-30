-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : Dim 08 nov. 2020 à 10:43
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
(6, 'items', 1, 1, 'arbitre1', '1\nnom arbitre1\nprénom arbitre1\n1\narbitre1\narbitre1'),
(7, 'items', 1, 1, 'arbitre2', '2\nnom arbitre2\nprénom arbitre2\n2\narbitre2\narbitre2'),
(8, 'items', 1, 1, 'arbitre3', '3\nnom arbitre3\nprénom arbitre3\n3\narbitre3\narbitre3'),
(9, 'items', 1, 1, 'arbitre4', '4\nnom arbitre4\nprénom arbitre4\n4\narbitre4\narbitre4'),
(10, 'items', 1, 1, 'arbitre5', '5\nnom arbitre5\nprénom arbitre5\n5\narbitre5\narbitre5'),
(11, 'items', 1, 1, 'arbitre6', '6\nnom arbitre6\nprénom arbitre6\n6\narbitre6\narbitre6'),
(12, 'items', 1, 1, 'compétition 1', '1\nnom compt 1\ncompétition 1\ncompétition 1'),
(13, 'items', 1, 1, 'compétition 2', '2\nnom compt2\ncompétition 2\ncompétition 2'),
(14, 'items', 1, 1, 'compétition 3', '3\nnom compt3\ncompétition 3\ncompétition 3'),
(15, 'items', 1, 1, 'compétition 4', '4\nnom compt4\ncompétition 4\ncompétition 4'),
(16, 'items', 1, 1, 'compétition 5', '5\nnom compt5\ncompétition 5\ncompétition 5'),
(17, 'items', 1, 1, 'compétition 6', '6\nnom compt6\ncompétition 6\ncompétition 6'),
(18, 'items', 1, 1, 'création1', '1\ncréation1\ncréation1'),
(19, 'items', 1, 1, 'création2', '2\ncréation2\ncréation2'),
(20, 'items', 1, 1, 'création3', '3\ncréation3\ncréation3'),
(21, 'items', 1, 1, 'création4', '4\ncréation4\ncréation4'),
(22, 'items', 1, 1, 'création5', '5\ncréation5\ncréation5'),
(23, 'items', 1, 1, 'création6', '6\ncréation6\ncréation6'),
(24, 'items', 1, 1, 'equipe1', '1\nequipe1\nequipe1'),
(25, 'items', 1, 1, 'equipe2', '2\nequipe2\nequipe2'),
(26, 'items', 1, 1, 'equipe3', '3\nequipe3\nequipe3'),
(27, 'items', 1, 1, 'equipe4', '4\nequipe4\nequipe4'),
(28, 'items', 1, 1, 'equipe5', '5\nequipe5\nequipe5'),
(29, 'items', 1, 1, 'equipe6', '6\nequipe6\nequipe6'),
(30, 'items', 1, 1, 'joueur1', '1\njoueur1\njoueur1\nnom joueur1\nprénom joueur1\n1\n20\n1,80\n1'),
(31, 'items', 1, 1, 'joueur2', '2\njoueur2\njoueur2\nnom joueur2\nprénom joueur2\n2\n21\n1,85\n2'),
(32, 'items', 1, 1, 'joueur3', '3\njoueur3\njoueur3\nnom joueur3\nprénom joueur3\n3\n24\n1,80\n3'),
(33, 'items', 1, 1, 'joueur4', '4\njoueur4\njoueur4\nnom joueur4\nprénom joueur4\n4\n30\n1,85\n4'),
(34, 'items', 1, 1, 'joueur5', '5\njoueur5\njoueur5\nnom joueur5\nprénom joueur5\n5\n29\n1,75\n5'),
(35, 'items', 1, 1, 'joueur6', '6\njoueur6\njoueur6\nnom joueur6\nprénom joueur6\n6\n30\n1,75\n6'),
(36, 'items', 1, 1, 'match1', '1\nmatch1\nmatch1'),
(37, 'items', 1, 1, 'match2', '2\nmatch2\nmatch2'),
(38, 'items', 1, 1, 'match3', '3\nmatch3\nmatch3'),
(39, 'items', 1, 1, 'match4', '4\nmatch4\nmatch4'),
(40, 'items', 1, 1, 'match4', '4\nmatch4\nmatch4'),
(41, 'items', 1, 1, 'match5', '5\nmatch5\nmatch5'),
(42, 'items', 1, 1, 'match6', '6\nmatch6\nmatch6'),
(43, 'items', 1, 1, 'organisateur1', '1\norganisateur1\norganisateur1'),
(44, 'items', 1, 1, 'organisateur2', '2\norganisateur2\norganisateur2'),
(45, 'items', 1, 1, 'organisateur3', '3\norganisateur3\norganisateur3'),
(46, 'items', 1, 1, 'organisateur4', '4\norganisateur4\norganisateur4'),
(47, 'items', 1, 1, 'organisateur5', '5\norganisateur5\norganisateur5'),
(48, 'items', 1, 1, 'organisateur6', '6\norganisateur6\norganisateur6'),
(49, 'items', 1, 1, 'stade1', '1\nstade1\nstade1'),
(50, 'items', 1, 1, 'stade2', '2\nstade2\nstade2'),
(51, 'items', 1, 1, 'stade3', '3\nstade3\nstade3'),
(52, 'items', 1, 1, 'stade4', '4\nstade4\nstade4'),
(53, 'items', 1, 1, 'stade5', '5\nstade5\nstade5'),
(54, 'items', 1, 1, 'stade6', '6\nstade6\nstade6'),
(55, 'items', 1, 1, 'visiteur1', '1\nvisiteur1\nvisiteur1'),
(56, 'items', 1, 1, 'visiteur2', '2\nvisiteur2\nvisiteur2'),
(57, 'items', 1, 1, 'visiteur3', '3\nvisiteur3\nvisiteur3'),
(58, 'items', 1, 1, 'visiteur4', '4\nvisiteur4\nvisiteur4'),
(59, 'items', 1, 1, 'visiteur5', '5\nvisiteur5\nvisiteur5'),
(60, 'items', 1, 1, 'visiteur6', '6\nvisiteur6\nvisiteur6');

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
(6),
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
(20),
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
(39),
(40),
(41),
(42),
(43),
(44),
(45),
(46),
(47),
(48),
(49),
(50),
(51),
(52),
(53),
(54),
(55),
(56),
(57),
(58),
(59),
(60);

-- --------------------------------------------------------

--
-- Structure de la table `item_item_set`
--

CREATE TABLE `item_item_set` (
  `item_id` int(11) NOT NULL,
  `item_set_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `item_set`
--

CREATE TABLE `item_set` (
  `id` int(11) NOT NULL,
  `is_open` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(185, 1, 5, 'annotationForm', 'annotation form', 'A form which may be used to add more infromation to an\ninstance of this class which we know something about.  Anything from\nadding just add one more fact, to adding a whole lot of information about a specific\nfacet of the thing.\n'),
(186, 1, 5, 'backgroundColor', 'background color', 'Must be a valid CSS color string such as one could put in\n        an HTML style attribute.  This should be in the #xxxxxx form,\n        (with 6 digits of hex)  so that it\n        can work with Graphviz.'),
(187, 1, 5, 'backgroundImage', 'background image', 'URI or base64 representation of an image'),
(188, 1, 5, 'category', 'overall superclass', 'The superclass subclasses of which will be selected.'),
(189, 1, 5, 'color', 'color', 'Must be a valid CSS color string such as one could put in\n        an HTML style attribute.  This should be in the #xxxxxx form,\n        (with 6 digits of hex)  so that it\n        can work with Graphviz.'),
(190, 1, 5, 'creationForm', 'creation form', 'A form which may be used to collect information about a\n    hitherto locally undocumented instance instance of this class.'),
(191, 1, 5, 'dependingOn', 'depending on', 'Many fields prompt for information about a given property of the subject'),
(192, 1, 5, 'for', 'for', 'The value for which this case is selected.'),
(193, 1, 5, 'from', 'from', NULL),
(194, 1, 5, 'initialProperties', 'initial properties', 'A really simple way of enabling user interfaces to\n            create new information about a class of things is to make a define of properties\n            to be specified when a information about a new item\n            (\"New item\" here means an item which the system\n            does not have prvious information about yet,\n            not an items which has just been created,\n            like new friend as opposed to new baby)'),
(195, 1, 5, 'maxLength', 'max length of value', NULL),
(196, 1, 5, 'maxValue', 'max', NULL),
(197, 1, 5, 'minValue', 'min', NULL),
(198, 1, 5, 'part', 'part', NULL),
(199, 1, 5, 'parts', 'parts', NULL),
(200, 1, 5, 'prompt', 'user prompt', 'A string for the UI to use if the user needs a longer\n        prompts than just a field name, the rdfs:label. '),
(201, 1, 5, 'property', 'property to be stored', 'Many fields prompt for information about a given property of the subject.\n    When field is filled in, this gives which property is written into the data.'),
(202, 1, 5, 'seqeunce', 'sequence number', 'The sequence in which this item is arranged with repect to other parts.'),
(203, 1, 5, 'size', 'size of field', NULL),
(204, 1, 5, 'sortBy', 'sort by', 'A property which typically is used to sort\n        members of a given class.'),
(205, 1, 5, 'sortPriority', 'sort priority', 'When individuals or classes must be sorted, then\n        if they are given different values of sortPriority a user agent can\n        use this as a hint to how to present information.'),
(206, 1, 5, 'style', 'style', 'Must be a valid CSS style string such as one could put in\n        an HTML style attribute.  Depending on the user interface system, this can\n        by given to individuals, classes or properties. It is up to a user interface\n        which wants to draw on them to pick how it uses styles from which parts\n        of the data it has.  For example, the style of a class may be picked\n        to distinguish information about things in that class.'),
(207, 1, 5, 'tableProperties', 'table properties', 'This  is a crude way of specifying a table-based\n            view for objects of this class.'),
(208, 1, 5, 'use', 'use', NULL),
(209, 1, 6, 'aggregateFunction', 'aggregate function', 'An alternative to qb:componentProperty which makes explicit that the component is an aggregate function'),
(210, 1, 6, 'cardinality', 'cardinality', 'An alternative to qb:componentProperty which allows to specify a cardinality constraint in fact-level relationship'),
(211, 1, 6, 'childLevel', 'child level', 'Child level property in a HierarchyStep'),
(212, 1, 6, 'hasHierarchy', 'set of hierarchies in a dimensoin', 'Indicates the hierarchies that compose the dimension'),
(213, 1, 6, 'hasLevel', 'set of levels in hierarchy', 'Indicates the levels that compose the hierarchy'),
(214, 1, 6, 'hasAttribute', 'Level has attribute', 'Indicates the attributes in an level'),
(215, 1, 6, 'hasID', 'Level has ID attribute', 'Indicates the attribute that identifies level members. Necessary to automatize ROLAP to QB4OLAP'),
(216, 1, 6, 'inDimension', 'hierarchy belongs to dimension', 'Indicates to which dimension the hierarchy belongs'),
(217, 1, 6, 'inHierarchy', 'hierarchy step belongs to hierarchy', 'Indicates to which hierarchy a hierarchy step (pair of levels) belongs'),
(218, 1, 6, 'inLevel', 'level attribute in level', 'Indicates to which level the level attribute belongs'),
(219, 1, 6, 'isCuboidOf', 'is cuboid of', 'Indicates to which cube a cuboid corresponds'),
(220, 1, 6, 'level', 'level', 'An alternative to qb:componentProperty which makes explicit that the component is a level'),
(221, 1, 6, 'memberOf', 'level member is member of level', 'Indicates the level to which the level member belongs'),
(222, 1, 6, 'parentLevel', 'parent level', 'Parent level property in a HierarchyStep'),
(223, 1, 6, 'pcCardinality', 'cardinality', 'A property which allows to specify a cardinality constraint in a parent-child relationship'),
(224, 1, 6, 'rollup', 'rollup function', 'A property which allows to specify the predicate that implements the rollup relationship in a hierarchy step.');

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
(6, 1, NULL, 10, NULL, 'arbitre1', 1, '2020-11-07 08:54:28', '2020-11-07 08:54:37', 'Omeka\\Entity\\Item'),
(7, 1, NULL, 10, NULL, 'arbitre2', 1, '2020-11-07 08:55:38', '2020-11-07 08:55:38', 'Omeka\\Entity\\Item'),
(8, 1, NULL, 10, NULL, 'arbitre3', 1, '2020-11-07 08:56:23', '2020-11-07 08:56:23', 'Omeka\\Entity\\Item'),
(9, 1, NULL, 10, NULL, 'arbitre4', 1, '2020-11-07 08:57:01', '2020-11-07 08:57:01', 'Omeka\\Entity\\Item'),
(10, 1, NULL, 10, NULL, 'arbitre5', 1, '2020-11-07 08:57:37', '2020-11-07 08:57:37', 'Omeka\\Entity\\Item'),
(11, 1, NULL, 10, NULL, 'arbitre6', 1, '2020-11-07 08:58:15', '2020-11-07 08:58:15', 'Omeka\\Entity\\Item'),
(12, 1, NULL, 6, NULL, 'compétition 1', 1, '2020-11-07 08:59:21', '2020-11-07 09:00:26', 'Omeka\\Entity\\Item'),
(13, 1, NULL, 6, NULL, 'compétition 2', 1, '2020-11-07 09:00:57', '2020-11-07 09:00:57', 'Omeka\\Entity\\Item'),
(14, 1, NULL, 6, NULL, 'compétition 3', 1, '2020-11-07 09:01:26', '2020-11-07 09:01:26', 'Omeka\\Entity\\Item'),
(15, 1, NULL, 6, NULL, 'compétition 4', 1, '2020-11-07 09:01:52', '2020-11-07 09:01:52', 'Omeka\\Entity\\Item'),
(16, 1, NULL, 6, NULL, 'compétition 5', 1, '2020-11-07 09:02:26', '2020-11-07 09:02:26', 'Omeka\\Entity\\Item'),
(17, 1, NULL, 6, NULL, 'compétition 6', 1, '2020-11-07 09:04:20', '2020-11-07 09:04:20', 'Omeka\\Entity\\Item'),
(18, 1, NULL, 7, NULL, 'création1', 1, '2020-11-07 09:04:53', '2020-11-07 09:04:53', 'Omeka\\Entity\\Item'),
(19, 1, NULL, 7, NULL, 'création2', 1, '2020-11-07 09:05:17', '2020-11-07 09:05:17', 'Omeka\\Entity\\Item'),
(20, 1, NULL, 7, NULL, 'création3', 1, '2020-11-07 09:05:45', '2020-11-07 09:05:45', 'Omeka\\Entity\\Item'),
(21, 1, NULL, 7, NULL, 'création4', 1, '2020-11-07 09:06:39', '2020-11-07 09:06:39', 'Omeka\\Entity\\Item'),
(22, 1, NULL, 7, NULL, 'création5', 1, '2020-11-07 09:06:56', '2020-11-07 09:06:56', 'Omeka\\Entity\\Item'),
(23, 1, NULL, 7, NULL, 'création6', 1, '2020-11-07 09:07:19', '2020-11-07 09:07:19', 'Omeka\\Entity\\Item'),
(24, 1, NULL, 4, NULL, 'equipe1', 1, '2020-11-07 09:07:47', '2020-11-07 09:07:47', 'Omeka\\Entity\\Item'),
(25, 1, NULL, 4, NULL, 'equipe2', 1, '2020-11-07 09:08:05', '2020-11-07 09:08:05', 'Omeka\\Entity\\Item'),
(26, 1, NULL, 4, NULL, 'equipe3', 1, '2020-11-07 09:08:23', '2020-11-07 09:08:23', 'Omeka\\Entity\\Item'),
(27, 1, NULL, 4, NULL, 'equipe4', 1, '2020-11-07 09:08:39', '2020-11-07 09:08:39', 'Omeka\\Entity\\Item'),
(28, 1, NULL, 4, NULL, 'equipe5', 1, '2020-11-07 09:08:56', '2020-11-07 09:08:56', 'Omeka\\Entity\\Item'),
(29, 1, NULL, 4, NULL, 'equipe6', 1, '2020-11-07 09:09:12', '2020-11-07 09:09:12', 'Omeka\\Entity\\Item'),
(30, 1, NULL, 2, NULL, 'joueur1', 1, '2020-11-07 09:14:39', '2020-11-07 09:14:39', 'Omeka\\Entity\\Item'),
(31, 1, NULL, 2, NULL, 'joueur2', 1, '2020-11-07 09:15:34', '2020-11-07 09:15:34', 'Omeka\\Entity\\Item'),
(32, 1, NULL, 2, NULL, 'joueur3', 1, '2020-11-07 09:16:32', '2020-11-07 09:16:32', 'Omeka\\Entity\\Item'),
(33, 1, NULL, 2, NULL, 'joueur4', 1, '2020-11-07 09:17:35', '2020-11-07 09:17:35', 'Omeka\\Entity\\Item'),
(34, 1, NULL, 2, NULL, 'joueur5', 1, '2020-11-07 09:18:27', '2020-11-07 09:18:27', 'Omeka\\Entity\\Item'),
(35, 1, NULL, 2, NULL, 'joueur6', 1, '2020-11-07 09:19:18', '2020-11-07 09:19:18', 'Omeka\\Entity\\Item'),
(36, 1, NULL, 5, NULL, 'match1', 1, '2020-11-07 09:20:03', '2020-11-07 09:20:03', 'Omeka\\Entity\\Item'),
(37, 1, NULL, 5, NULL, 'match2', 1, '2020-11-07 09:20:22', '2020-11-07 09:20:22', 'Omeka\\Entity\\Item'),
(38, 1, NULL, 5, NULL, 'match3', 1, '2020-11-07 09:20:39', '2020-11-07 09:20:39', 'Omeka\\Entity\\Item'),
(39, 1, NULL, 5, NULL, 'match4', 1, '2020-11-07 09:20:55', '2020-11-07 09:20:55', 'Omeka\\Entity\\Item'),
(40, 1, NULL, 5, NULL, 'match4', 1, '2020-11-07 09:21:12', '2020-11-07 09:21:12', 'Omeka\\Entity\\Item'),
(41, 1, NULL, 5, NULL, 'match5', 1, '2020-11-07 09:21:29', '2020-11-07 09:21:29', 'Omeka\\Entity\\Item'),
(42, 1, NULL, 5, NULL, 'match6', 1, '2020-11-07 09:21:45', '2020-11-07 09:21:45', 'Omeka\\Entity\\Item'),
(43, 1, NULL, 3, NULL, 'organisateur1', 1, '2020-11-07 09:24:50', '2020-11-07 09:24:50', 'Omeka\\Entity\\Item'),
(44, 1, NULL, 3, NULL, 'organisateur2', 1, '2020-11-07 09:25:07', '2020-11-07 09:25:07', 'Omeka\\Entity\\Item'),
(45, 1, NULL, 3, NULL, 'organisateur3', 1, '2020-11-07 09:25:24', '2020-11-07 09:25:24', 'Omeka\\Entity\\Item'),
(46, 1, NULL, 3, NULL, 'organisateur4', 1, '2020-11-07 09:26:01', '2020-11-07 09:26:01', 'Omeka\\Entity\\Item'),
(47, 1, NULL, 3, NULL, 'organisateur5', 1, '2020-11-07 09:26:18', '2020-11-07 09:26:18', 'Omeka\\Entity\\Item'),
(48, 1, NULL, 3, NULL, 'organisateur6', 1, '2020-11-07 09:26:34', '2020-11-07 09:26:34', 'Omeka\\Entity\\Item'),
(49, 1, NULL, 9, NULL, 'stade1', 1, '2020-11-07 09:26:56', '2020-11-07 09:26:56', 'Omeka\\Entity\\Item'),
(50, 1, NULL, 9, NULL, 'stade2', 1, '2020-11-07 09:27:13', '2020-11-07 09:27:13', 'Omeka\\Entity\\Item'),
(51, 1, NULL, 9, NULL, 'stade3', 1, '2020-11-07 09:27:30', '2020-11-07 09:27:30', 'Omeka\\Entity\\Item'),
(52, 1, NULL, 9, NULL, 'stade4', 1, '2020-11-07 09:27:47', '2020-11-07 09:27:47', 'Omeka\\Entity\\Item'),
(53, 1, NULL, 9, NULL, 'stade5', 1, '2020-11-07 09:28:03', '2020-11-07 09:28:03', 'Omeka\\Entity\\Item'),
(54, 1, NULL, 9, NULL, 'stade6', 1, '2020-11-07 09:28:19', '2020-11-07 22:07:42', 'Omeka\\Entity\\Item'),
(55, 1, NULL, 8, NULL, 'visiteur1', 1, '2020-11-07 09:28:52', '2020-11-07 09:28:52', 'Omeka\\Entity\\Item'),
(56, 1, NULL, 8, NULL, 'visiteur2', 1, '2020-11-07 09:29:08', '2020-11-07 09:29:08', 'Omeka\\Entity\\Item'),
(57, 1, NULL, 8, NULL, 'visiteur3', 1, '2020-11-07 09:29:23', '2020-11-07 09:29:23', 'Omeka\\Entity\\Item'),
(58, 1, NULL, 8, NULL, 'visiteur4', 1, '2020-11-07 09:29:38', '2020-11-07 09:29:38', 'Omeka\\Entity\\Item'),
(59, 1, NULL, 8, NULL, 'visiteur5', 1, '2020-11-07 09:29:56', '2020-11-07 09:29:56', 'Omeka\\Entity\\Item'),
(60, 1, NULL, 8, NULL, 'visiteur6', 1, '2020-11-07 09:30:14', '2020-11-07 09:30:14', 'Omeka\\Entity\\Item');

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
(106, 1, 5, 'Classifier', 'classifier', 'A classifier allows the user to select the type of an object.\n    The possible types must be subclasses of some overall class, the \"category\".\n    (Ideally, the superclass is also set up as the disjoint union of the subclasses,\n    if they are disjoint.)\n\n    The form normally stores the resulting classes using an rdf:type triple,\n    but a different predicate can be used if required, so the classifier field\n    needs is \'property\' defined too.\n\n    If the subclass selected itself is has subclasses defined, the user can\n    recursively select from them in turn, as many levels as needed.'),
(107, 1, 5, 'Form', 'Form', 'A form can be any type of single field, or typically a Group of several fields,\n    including interspersed headings and comments.  '),
(108, 1, 5, 'NumericField', 'NumericField', NULL),
(109, 1, 5, 'Single', 'Single', NULL),
(110, 1, 5, 'TextField', 'TextField', NULL),
(111, 1, 5, 'ValueField', 'ValueField', NULL),
(112, 1, 6, 'AggregateFunction', 'Aggregate function', 'Class that represents aggregate functions that are applied to compute measure aggregate values'),
(113, 1, 6, 'Cardinality', 'Cardinality', 'Class that represents different cardinalities restrictions. These may be applied to  hierarchy steps or to the relationship between facts and dimension levels'),
(114, 1, 6, 'Hierarchy', 'Hierarchy', 'The class of components which represent the hierarchies of a dimension'),
(115, 1, 6, 'HierarchyStep', 'hierarchy step', 'Class that represents a pair of levels (childLevel, parentLevel) in a dimension hierarchy'),
(116, 1, 6, 'LevelAttribute', 'Level attribute', 'The class of properties that represent level attributes'),
(117, 1, 6, 'LevelMember', 'Level member', 'The class of components which represent the members of a level'),
(118, 1, 6, 'LevelProperty', 'Level property', 'The class of components which represent the levels of a hierarchy'),
(119, 1, 6, 'RollupProperty', 'Rollup property', 'The class of properties which represent the rollup relationships.');

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
(2, 1, NULL, NULL, NULL, 'joueur'),
(3, 1, NULL, NULL, NULL, 'organisateur'),
(4, 1, NULL, NULL, NULL, 'equipe'),
(5, 1, NULL, NULL, NULL, 'match'),
(6, 1, NULL, NULL, NULL, 'competition'),
(7, 1, NULL, NULL, NULL, 'creation'),
(8, 1, NULL, NULL, NULL, 'visiteur'),
(9, 1, NULL, NULL, NULL, 'stade'),
(10, 1, NULL, NULL, NULL, 'arbitre');

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
(21, 2, 1, NULL, NULL, 2, NULL, 0, 0),
(22, 2, 4, NULL, NULL, 3, NULL, 0, 0),
(24, 2, 145, NULL, NULL, 4, NULL, 0, 0),
(25, 2, 139, NULL, NULL, 5, NULL, 0, 0),
(27, 2, 108, NULL, NULL, 6, NULL, 0, 0),
(28, 2, 183, NULL, NULL, 7, NULL, 0, 0),
(29, 2, 10, NULL, NULL, 1, NULL, 0, 0),
(30, 3, 4, NULL, NULL, 2, NULL, 0, 0),
(31, 4, 1, NULL, NULL, 2, NULL, 0, 0),
(32, 4, 4, NULL, NULL, 3, NULL, 0, 0),
(33, 5, 1, NULL, NULL, 2, NULL, 0, 0),
(34, 5, 4, NULL, NULL, 3, NULL, 0, 0),
(37, 7, 1, NULL, NULL, 2, NULL, 0, 0),
(38, 7, 4, NULL, NULL, 3, NULL, 0, 0),
(39, 8, 1, NULL, NULL, 2, NULL, 0, 0),
(40, 8, 4, NULL, NULL, 3, NULL, 0, 0),
(41, 9, 1, NULL, NULL, 2, NULL, 0, 0),
(42, 9, 4, NULL, NULL, 3, NULL, 0, 0),
(45, 9, 10, NULL, NULL, 1, NULL, 0, 0),
(46, 6, 10, NULL, NULL, 1, NULL, 0, 0),
(47, 7, 10, NULL, NULL, 1, NULL, 0, 0),
(48, 4, 10, NULL, NULL, 1, NULL, 0, 0),
(49, 5, 10, NULL, NULL, 1, NULL, 0, 0),
(50, 3, 10, NULL, NULL, 1, NULL, 0, 0),
(51, 8, 10, NULL, NULL, 1, NULL, 0, 0),
(52, 10, 10, NULL, NULL, 1, NULL, 0, 0),
(53, 10, 144, NULL, NULL, 2, NULL, 0, 0),
(54, 10, 139, NULL, NULL, 3, NULL, 0, 0),
(55, 6, 138, NULL, NULL, 2, NULL, 0, 0),
(56, 2, 203, NULL, NULL, 8, NULL, 0, 0),
(57, 2, 220, NULL, NULL, 9, NULL, 0, 0),
(58, 10, 220, NULL, NULL, 4, NULL, 0, 0);

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
('8ph6ui8ieqbkndps1gpjmtvqtu', 0x5f5f4c616d696e61737c613a373a7b733a32303a225f524551554553545f4143434553535f54494d45223b643a313630343738363836362e3132333734313b733a363a225f56414c4944223b613a313a7b733a32383a224c616d696e61735c53657373696f6e5c56616c696461746f725c4964223b733a32363a22623636377667386233623568666c6f746c646e33683136766563223b7d733a34323a224c616d696e61735f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313630343738393430323b7d733a35333a224c616d696e61735f56616c696461746f725f437372665f73616c745f7265736f7572636574656d706c617465666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313630343739303330343b7d733a34343a224c616d696e61735f56616c696461746f725f437372665f73616c745f636f6e6669726d666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313630343739303436363b7d733a34373a224c616d696e61735f56616c696461746f725f437372665f73616c745f766f636162756c617279666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313630343739303333363b7d733a33323a224c616d696e61735f56616c696461746f725f437372665f73616c745f63737266223b613a313a7b733a363a22455850495245223b693a313630343739303434393b7d7d72656469726563745f75726c7c733a32383a22687474703a2f2f6c6f63616c686f73742f6f6d656b612f61646d696e223b4c616d696e61735f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f637372667c433a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a3339313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a313a7b733a33323a226639386534613635393961663039336264326338643664343134343737386532223b733a33323a223336653161666561396163623762356462613332353061386165633032383630223b7d733a343a2268617368223b733a36353a2233366531616665613961636237623564626133323530613861656330323836302d6639386534613635393961663039336264326338643664343134343737386532223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d4c616d696e61735f417574687c433a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a3232333a7b613a343a7b733a373a2273746f72616765223b613a313a7b733a373a2273746f72616765223b693a313b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d4f6d656b614d657373656e6765727c433a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a3230353a7b613a343a7b733a373a2273746f72616765223b613a303a7b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d4c616d696e61735f56616c696461746f725f437372665f73616c745f7265736f7572636574656d706c617465666f726d5f637372667c433a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a3339313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a313a7b733a33323a223963613261643938356332333130653937336566393962643665346334393562223b733a33323a226564636633373264383061393731333266613161636132396166393336323933223b7d733a343a2268617368223b733a36353a2265646366333732643830613937313332666131616361323961663933363239332d3963613261643938356332333130653937336566393962643665346334393562223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d4c616d696e61735f56616c696461746f725f437372665f73616c745f636f6e6669726d666f726d5f637372667c433a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a3837313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a373a7b733a33323a223836333433363733336230343935373930643064666136336430646438376631223b733a33323a226464613034336264386334353663613936346363363439386662653966343464223b733a33323a226234653233313464303464343938633739623433303164343337316538313834223b733a33323a223739616433343033313163376334626432616632636630663364613166663130223b733a33323a223536386663373931613235306665643963336636643936613161396634636362223b733a33323a223866656662396335653035373730663836326632646539643766383935306638223b733a33323a226135633130393639306166396434336236616137353535613433653937633966223b733a33323a226662656131643038626130323962316638613937363533653064623539623864223b733a33323a226333373936663964626438323664303038316436333662636537363862356430223b733a33323a226663346463343262396138336537656531366366366436626633643565303533223b733a33323a226165383235653133386537623238646665323130646638323734346265343138223b733a33323a223466336261613832383831656365653861353737353733653530356664356236223b733a33323a223162313135626632373961313263636464346333313737373961656565323439223b733a33323a226366336137626632613737613964343434313964373032623035353631376335223b7d733a343a2268617368223b733a36353a2263663361376266326137376139643434343139643730326230353536313763352d3162313135626632373961313263636464346333313737373961656565323439223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d4c616d696e61735f56616c696461746f725f437372665f73616c745f766f636162756c617279666f726d5f637372667c433a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a3339313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a313a7b733a33323a223438333565366135306265333339653937393832643161353138643339346330223b733a33323a226337343763353930653462643332316231313033623536303362356631653137223b7d733a343a2268617368223b733a36353a2263373437633539306534626433323162313130336235363033623566316531372d3438333565366135306265333339653937393832643161353138643339346330223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d4c616d696e61735f56616c696461746f725f437372665f73616c745f637372667c433a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a3339313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a313a7b733a33323a223238313532326665303932366364313666383132333932633238366537353362223b733a33323a226436303335346232396234323531663139386433303666613338323635353533223b7d733a343a2268617368223b733a36353a2264363033353462323962343235316631393864333036666133383236353535332d3238313532326665303932366364313666383132333932633238366537353362223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d, 1604786866),
('cb7jnltp5upir5kcv0hluteonj', 0x5f5f4c616d696e61737c613a373a7b733a32303a225f524551554553545f4143434553535f54494d45223b643a313630343635343338372e33313331373b733a363a225f56414c4944223b613a313a7b733a32383a224c616d696e61735c53657373696f6e5c56616c696461746f725c4964223b733a32363a22386169646a75356b686864647673646a6c6b756d7364666b6571223b7d733a34323a224c616d696e61735f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313630343635363436313b7d733a34343a224c616d696e61735f56616c696461746f725f437372665f73616c745f636f6e6669726d666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313630343635373938383b7d733a35333a224c616d696e61735f56616c696461746f725f437372665f73616c745f7265736f7572636574656d706c617465666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313630343635373938373b7d733a34373a224c616d696e61735f56616c696461746f725f437372665f73616c745f766f636162756c617279666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313630343635373330373b7d733a33323a224c616d696e61735f56616c696461746f725f437372665f73616c745f63737266223b613a313a7b733a363a22455850495245223b693a313630343635373630373b7d7d72656469726563745f75726c7c733a32383a22687474703a2f2f6c6f63616c686f73742f6f6d656b612f61646d696e223b4c616d696e61735f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f637372667c433a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a3339313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a313a7b733a33323a226265626137333234626464396330643337646436653661356537616531643939223b733a33323a226232646561313335393236303136396231323061643365333466336435323438223b7d733a343a2268617368223b733a36353a2262326465613133353932363031363962313230616433653334663364353234382d6265626137333234626464396330643337646436653661356537616531643939223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d4c616d696e61735f417574687c433a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a3232333a7b613a343a7b733a373a2273746f72616765223b613a313a7b733a373a2273746f72616765223b693a313b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d4f6d656b614d657373656e6765727c433a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a3230353a7b613a343a7b733a373a2273746f72616765223b613a303a7b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d4c616d696e61735f56616c696461746f725f437372665f73616c745f636f6e6669726d666f726d5f637372667c433a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a313433323a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a31343a7b733a33323a223533303635623937636661373136383366623664373734663233363130383432223b733a33323a223732353361663930633336343435616664643731333266346534623937323530223b733a33323a226135666136356363306565656630366436663464613439623363646432386435223b733a33323a223633653039316461653338623361323935393635313361303830333434653663223b733a33323a223663626164393265633936653066333731313539396664313932326530323236223b733a33323a226166336135653138666230363238626562386537613931376132646462376233223b733a33323a223730613063343635363732353366336631313134656435633933323736343132223b733a33323a223238366333393963643662626165613165396438323238313630333965613765223b733a33323a223631393662316562313630663263653831336631646163363339636666353133223b733a33323a223133346534636232313764326237303839323933353434626534636164393537223b733a33323a223837633235353863613137623339356430613437656265623630663365623765223b733a33323a226437613137313932373035343335633238333532396265393634383462363665223b733a33323a223536373038376663306139316665376666383363363037643734633564636463223b733a33323a226661653366666437663164363734323235373064653761393734333365633033223b733a33323a223464353637623434396262616562333966303033313561383538653635366361223b733a33323a226237656530653432356135343534666530336263353939316435623337373737223b733a33323a226231386239313562643566373262376366393135643639363333316234666161223b733a33323a223332396632333136343934343065333232346435653536323033393632636565223b733a33323a226637356338373337323238383639613035616130656336363436303661353136223b733a33323a226238323066323539366234383731313866633431303331646563383532303232223b733a33323a223532333230353335643037326133373138663136653432643736363032313532223b733a33323a223432636164613438666137373938373531623137363939643037376432633438223b733a33323a226436333834623035666561393734666239393262306264613661373138356364223b733a33323a223333636233323931613363653633616231653365393163626530343561343162223b733a33323a223664356535353964313061306664613638303337356434396265623665376531223b733a33323a223833356333343430303932613431333138343630636561356563326465396531223b733a33323a226665666162303636366465643934626465623734626537626235646162383631223b733a33323a226231386331393462313436633461656564333364366237383466316238666436223b7d733a343a2268617368223b733a36353a2262313863313934623134366334616565643333643662373834663162386664362d6665666162303636366465643934626465623734626537626235646162383631223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d4c616d696e61735f56616c696461746f725f437372665f73616c745f7265736f7572636574656d706c617465666f726d5f637372667c433a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a3731313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a353a7b733a33323a226563366362626639653235656535363861653364373636636631353766303631223b733a33323a226464316333336237366535383537396565323431313132346436376631343535223b733a33323a223737336263363934306434363734393134346231383037333131623136613063223b733a33323a223633643634356130353663346431306530636436313636326464366539636439223b733a33323a223665343531666563366162363632353039333363343133656663626165396431223b733a33323a226361373563616630363863363437376635643731663966643563636335313430223b733a33323a223431313862666162646233363337643039376139643936353835646335613262223b733a33323a223562613761643363356339376336393364363639383038663033346138366239223b733a33323a226233653130386232616561323564373461336534616266643937323439613663223b733a33323a226131633362623664666130383333626462376537633864643763383861396261223b7d733a343a2268617368223b733a36353a2261316333626236646661303833336264623765376338646437633838613962612d6233653130386232616561323564373461336534616266643937323439613663223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d4c616d696e61735f56616c696461746f725f437372665f73616c745f766f636162756c617279666f726d5f637372667c433a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a3339313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a313a7b733a33323a226236343865313865666137386139633533356365313233633333343239653534223b733a33323a223561306438366138386662653633656238326166333864653362666263393034223b7d733a343a2268617368223b733a36353a2235613064383661383866626536336562383261663338646533626662633930342d6236343865313865666137386139633533356365313233633333343239653534223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d4c616d696e61735f56616c696461746f725f437372665f73616c745f637372667c433a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a3437313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a323a7b733a33323a223931363630323738613235623964396461316565643032363237383235643139223b733a33323a223333363863363662663533656433346536306535346339323436316535663632223b733a33323a223133653333373366333030653735383334333631313536356564346232663062223b733a33323a223038366130313438333534663531386435643031363361366364306431363839223b7d733a343a2268617368223b733a36353a2230383661303134383335346635313864356430313633613663643064313638392d3133653333373366333030653735383334333631313536356564346232663062223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d, 1604654388),
('ibn6vl54gf2es0qs6q987d262b', 0x5f5f4c616d696e61737c613a333a7b733a32303a225f524551554553545f4143434553535f54494d45223b643a313630343832383533332e3131303532393b733a363a225f56414c4944223b613a313a7b733a32383a224c616d696e61735c53657373696f6e5c56616c696461746f725c4964223b733a32363a226b34766631306962766d6a396b3534396f3171746b6c33327362223b7d733a34323a224c616d696e61735f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313630343833323132363b7d7d72656469726563745f75726c7c733a32383a22687474703a2f2f6c6f63616c686f73742f6f6d656b612f61646d696e223b4c616d696e61735f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f637372667c433a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a3339313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a313a7b733a33323a223530636466653966343262376536643433343835306233636661303830383632223b733a33323a223737663338363564303862316238613761383561323337336434393963343962223b7d733a343a2268617368223b733a36353a2237376633383635643038623162386137613835613233373364343939633439622d3530636466653966343262376536643433343835306233636661303830383632223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d4c616d696e61735f417574687c433a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a3232333a7b613a343a7b733a373a2273746f72616765223b613a313a7b733a373a2273746f72616765223b693a313b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d4f6d656b614d657373656e6765727c433a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a3230353a7b613a343a7b733a373a2273746f72616765223b613a303a7b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d, 1604828535);
INSERT INTO `session` (`id`, `data`, `modified`) VALUES
('t5siusu7edqlb9voce2bj2cveh', 0x5f5f4c616d696e61737c613a373a7b733a32303a225f524551554553545f4143434553535f54494d45223b643a313630343734363338312e3330383239383b733a363a225f56414c4944223b613a313a7b733a32383a224c616d696e61735c53657373696f6e5c56616c696461746f725c4964223b733a32363a2268326971663930663870396d6c6f757564686a6e386776327637223b7d733a34323a224c616d696e61735f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313630343734313830343b7d733a34343a224c616d696e61735f56616c696461746f725f437372665f73616c745f636f6e6669726d666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313630343734393937353b7d733a33323a224c616d696e61735f56616c696461746f725f437372665f73616c745f63737266223b613a313a7b733a363a22455850495245223b693a313630343734363836383b7d733a35333a224c616d696e61735f56616c696461746f725f437372665f73616c745f7265736f7572636574656d706c617465666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313630343734333932353b7d733a34373a224c616d696e61735f56616c696461746f725f437372665f73616c745f766f636162756c617279666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313630343734393937353b7d7d72656469726563745f75726c7c733a32383a22687474703a2f2f6c6f63616c686f73742f6f6d656b612f61646d696e223b4c616d696e61735f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f637372667c433a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a3339313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a313a7b733a33323a223564326661386363653535643836623131313839316136633635383962613533223b733a33323a226264323630666366396434343931646361626138316334333966666337356162223b7d733a343a2268617368223b733a36353a2262643236306663663964343439316463616261383163343339666663373561622d3564326661386363653535643836623131313839316136633635383962613533223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d4c616d696e61735f417574687c433a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a3232333a7b613a343a7b733a373a2273746f72616765223b613a313a7b733a373a2273746f72616765223b693a313b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d4f6d656b614d657373656e6765727c433a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a3230353a7b613a343a7b733a373a2273746f72616765223b613a303a7b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d4c616d696e61735f56616c696461746f725f437372665f73616c745f636f6e6669726d666f726d5f637372667c433a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a31333131333a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a3136303a7b733a33323a223965376664663635303338363366303565303635346138313432663263656164223b733a33323a223435663465386639356562656565626538383266316337313731323565616333223b733a33323a226633353534616665633135623861323230356461316562633538643132663163223b733a33323a226639353939373332356362383436343432336566656330393965306562636531223b733a33323a226534303530356536366137333961666262343630646363306264313334363263223b733a33323a226336343362633038326563616438626231323932336537366637343136663532223b733a33323a223332326665303630363336383230653333316263383134633062663837333332223b733a33323a223738306334326231353138646566653733393837653332373165383433386137223b733a33323a223161623564653839626565373532363461323661343262626133633766643035223b733a33323a223539393664653434613939653361343763323865383864663233633230646436223b733a33323a223235343831653430643132303361623464346537396261633236343438616462223b733a33323a223361383366623965373330313835363362373433363630636265343133643838223b733a33323a223562323637656665643535303039306133373434623263303763666232346430223b733a33323a223337303565316666613732373934616564366432373237653431323437333030223b733a33323a226263326238393963316337353934346466316666663065323363663835653133223b733a33323a226164393633653964623533616235623132336565636532396537323365656138223b733a33323a223233393635653866653665613464323938303037393432386261633263626462223b733a33323a226330363531366131616132386637373531343436643330346536613537336132223b733a33323a223034623136333766336434343766636336313163316337386630323937353063223b733a33323a223065303465333330373166353738363865303830376166356461393633393339223b733a33323a226662613634653863353036393361643366303931653865303337303136653966223b733a33323a223530366235393932636564386532666538663833336139386431393930303230223b733a33323a223133356632663631383735323536666633353138373333343731356235353262223b733a33323a223662383736303831353839383365613962383033316635343233653433656463223b733a33323a226332633562626238323437343431363336663961303761396163636661663566223b733a33323a226535326530343833653132333933613462613434646338646234313134303565223b733a33323a223337383131393536636431343539323030666261306334633030636335616364223b733a33323a223462323536643439633033373462386532336339356563383066346161313161223b733a33323a223037333131643334373439633938313161336137653264323431623335316231223b733a33323a226664323963616537616331346233663030326364663432343532373836353862223b733a33323a226664646431383431666539633064333136636261393232346136316635323463223b733a33323a223839653766373035373362666338373637326136313262363230363834343062223b733a33323a223364653137623036613836373464633130363739326431393039633435643239223b733a33323a226565316661333366326133656238343965623936353564323333393931613132223b733a33323a223965383833646339333634303262363538646530663735383965393133363764223b733a33323a223935343965316464626330373231393931623862313965396432376136356666223b733a33323a223137316538633432633937326332343866323434363330626263333035363564223b733a33323a223034393836663463633662313064396637363031623538626232626331326436223b733a33323a226334666462336133653861383662373532376262386532326433363466653137223b733a33323a226132333664393361333937386135623836303031323064356665316232666434223b733a33323a223461633331366262373537333831646164353731306463313165336666383938223b733a33323a226563643438396265663966306438306363393332356463646430653631643032223b733a33323a223761336638653964333163643361616663346139396464346662366334636664223b733a33323a223462396533313230326135316234343965663965653935393861623330316261223b733a33323a226639663962356138363164393262313434666362363233656662613239353561223b733a33323a226132343236353465373534316131363666633232653934616533386361363164223b733a33323a223737653333333539633761663862396134343035623035363330363239666232223b733a33323a223832363465383539613938666631326433303732653630356333363536653865223b733a33323a226134646135346335333439633732333661363162393837333462626566396536223b733a33323a226532636134356433353164313635646531303661373166373836376364383164223b733a33323a226535373763666661333563643638363635356638663832636337383431383039223b733a33323a223836623733663865363830633637656165366231626532343831663366366465223b733a33323a223431653339653530633639663664643230653634636239346464663239653463223b733a33323a226538623032333361333638346264313735363434323239316630363536333234223b733a33323a223137323265363764353861393832356537343432313037623837313864653138223b733a33323a226132636137386561343165336461653032623433326363343462656462643035223b733a33323a223763666137373733306635383562303834633164616636316438623534356563223b733a33323a223431303065363434386263336364613764393039666637633962633331303233223b733a33323a226565663266663537323134343962326165316661646661363931326638306366223b733a33323a223964316433646365343535343065663064643563653637303532626262353036223b733a33323a223132663764306431636365373363386330343465613337313730633333306363223b733a33323a223862613431393539373938636233303461393132373664383466343934656632223b733a33323a223864653766376566303566613562373436363133323534353131646431306665223b733a33323a223630366533623939313339333562633263636463383366316361313430613332223b733a33323a223231636230376261363736346466363039336539396664326433613432663437223b733a33323a226435333431393262653163666136333635373036336162626430333233623164223b733a33323a223866303065333533353634333737613961653134633836663362613532626538223b733a33323a226364613536623232646665366639646536646137633034643532323639353562223b733a33323a223536313334313535356237626562643435623734646138623863313532373563223b733a33323a226431313462313364323364396433353230663062666462643332356530643062223b733a33323a226335383266636139353430323465313762636635363331353235633336623966223b733a33323a223736373535363462613838306232346634613036393266653535626637333563223b733a33323a226162653932343539653264383932613233656530653566623361313435346163223b733a33323a223531363663383861616330323439373237343732353164313437326139656565223b733a33323a223234313839653961333033643666316139316630616564353264363264383133223b733a33323a223539643234656231613536316139363530613362363436613538323037373066223b733a33323a223461343632613335613863353031313266386639613230633730343164636130223b733a33323a226531356365306231313839313162363830613533353836353465663830323439223b733a33323a226635326335636135633932356233306164313936383965626364373662303365223b733a33323a226635623439626166633338326662383335373734626566323736356438376438223b733a33323a223939306235303462346565313532356337336238653463633736313466646165223b733a33323a223133316632363136356466326363313134613261393864616261343439396562223b733a33323a223934623139333066323135323565313563643136346232343336653134643933223b733a33323a223436376437666639313431653631633165613036616664323239383730356562223b733a33323a223339656162643231613139313338376265336339316534633333376361643030223b733a33323a226430353766643265383732306538346663343732313663323832613231313638223b733a33323a226536623363363966653131393330303631323731623838336135343966316132223b733a33323a223765363861363738313735303635343266363635373164306531363136303964223b733a33323a226334666461383264633630313135653531306531356132346533306334623638223b733a33323a226137313564343030613965386634383065323565393361326234666338323935223b733a33323a226565343164643161396637343234373365616139623331363237636130363833223b733a33323a223237663436333063373062356637653365316362326266326465383862633437223b733a33323a223962353063303733646436363466616531663366623232633261343230356131223b733a33323a223838343533316366323333376163353638386134383566383939303531336533223b733a33323a223434366635643033356564326162333036623466313730633230353838653633223b733a33323a226534373536636266666439643231343731323035363030353733646230373565223b733a33323a226337636635393438643866303530313034633864343166346332666537633065223b733a33323a223133653436356165396537623139393663373062666539366136353837653166223b733a33323a226231343335326137656432303734363664646237646365313935323239663833223b733a33323a223663653338646539623961313830383064353539333965303162613633343966223b733a33323a223333333061626363396539663363653363663936376630393638643366373032223b733a33323a223631323864383138333737356337316532633766363631333235363632616631223b733a33323a223831663038303561323938666562616231323564346638353263353065653734223b733a33323a223332613061333631303230363162376331353730356661663033326665363463223b733a33323a226265656466316630346238333764383864656337343663636331323763663537223b733a33323a223263373361626334326136663365313564616161663738616362393261396161223b733a33323a226233333064646131383265613232666161663462336136353239376134663262223b733a33323a226532353861653231646436383366623238323532383430643334303239353966223b733a33323a226566353762656364366538653139646230623736323037353062316263666364223b733a33323a223465633133343063393633373864613763323763613831333665323562333563223b733a33323a226364353338653164376530343235363631626366666165366663616134333965223b733a33323a226562626539366562613139663664666161303932643664343439313764323236223b733a33323a226561653566663864333431366265346262386534333364353930393862376566223b733a33323a226135623362613137313462383232383866626465313236393830363432623366223b733a33323a226139316435363162373562313330383361643935613631356165373133663465223b733a33323a226261336533366533336334623464666564343566316634636639323931376262223b733a33323a223230343732663738336339333464313863396338653966646163643536613833223b733a33323a226235343462376663353231393637623037383266626565353135353530303035223b733a33323a226438613134653962353763653130363164626433326564636566386137613735223b733a33323a223436313964653237646433623535653735306563366563623965386130356435223b733a33323a223065393037616366303138636332653738373233333566663539373861346632223b733a33323a226463623164646163663834313839333237373830623863383035663961623735223b733a33323a223665303835326662663061373031333163353965663662383534333636343161223b733a33323a223931383136373635663131393465323633313639663762616265323137316266223b733a33323a223031323535616138373931613463323233666165313763393763363238656565223b733a33323a223738663435643765303437626562323935376665663663373066643466663733223b733a33323a223133366635323263306562613338323663613233646665356638356130356137223b733a33323a223731623136626564636431323634663564343261336330313934353966643438223b733a33323a223736336262633865376261313435363430623832313432373539383261363365223b733a33323a226137653266353135316236626335363836333465343430613436643237613963223b733a33323a223565656530306631363136313633663931396338303961656263343665353263223b733a33323a223562373961303235316636653462643439636663326437303733333937623036223b733a33323a223865316433646436373464643431306265666238393330356533373866363937223b733a33323a223238393361653666633731323437306263373666616432623231303031623439223b733a33323a223164656233393230393238633066363931396536306361626639376466333364223b733a33323a226339356136383362623839366563343632363135343139636237306361346135223b733a33323a226538383335346231613333363737393233386436383032626638353237626666223b733a33323a223264656366633231646235623930653564653664326666353930643536653037223b733a33323a226565646264376338343331353762346265376634366339346662636534393964223b733a33323a226438343137366664336534666236323638386133353961353864303335656566223b733a33323a223536623539356666366466336666663866346133303061366630363439396331223b733a33323a226464306435373635383633396335323666336432316266343238666338393637223b733a33323a226662336235353436653136636630326631663534333363323730656138323934223b733a33323a223161633539396135393039373765643335343738396265626635393237306231223b733a33323a226239363035333864303763653233656232366136616439316136316665353738223b733a33323a223536383830663837383137386561613664646638613332636433666665616330223b733a33323a223764623237303135616535393431313838346132626132656138373131363437223b733a33323a223934666232376163653936373263376431636436303136363539623631383436223b733a33323a223865636632306661343166616532323934386637656635383561373965353964223b733a33323a223861356664613431383934323535353930646439663930653633626133343538223b733a33323a223963373532643631646139663566653261613233353665623431396130346461223b733a33323a223063663665393936653936653364313062333531316264613730303761366239223b733a33323a226665633933626363646462626566356264363536653634346539386233303838223b733a33323a223736363462343239666639336335656562623466613337333762306534376531223b733a33323a223663633638363763343630313531366531303866396364323530646432326433223b733a33323a223830616534316362656538636435393633626536333534623038356530393637223b733a33323a223262303435303763656633636464636263343032356366323533613233663562223b733a33323a226264623364346530626665653530653661373766353232646439663231343437223b733a33323a223866313339316332653538613830393962656564303965353165386533626133223b733a33323a226562343335633436366165636632363734316235336162663134306362653139223b733a33323a226539346465336362643338353736303932303432373166613136626131643966223b733a33323a223030643337666336666133343434653462303832643535663965633137623833223b733a33323a223464656461623733636134623530653466623436636139363531393038393763223b733a33323a223032393532303561626637643662383762353465303065663138393732323330223b733a33323a226635643966363762326231306435383565343637316434353638633837666336223b733a33323a223039343065636437646561653637366630326465653566333464306539666166223b733a33323a223239386239396233633336613166323436633865663935366562666537636539223b733a33323a223731653764616263396665626431623234353731363035373365323361363563223b733a33323a226437636336353436383231323063323837663461313338363863623137376431223b733a33323a223236323962313331336133633536333434623436316337313263313831373363223b733a33323a223664393232643138303066663330643661353065653361343136343062643536223b733a33323a226165383836336630393966333433303763346131653232396464353530336230223b733a33323a223638303833333264616661646632633735336363353030316236333832633761223b733a33323a226239386161363239663065623631376434376437313333336435376535396564223b733a33323a226431616465636362323664393035383739363834376362346664353166366236223b733a33323a226534643164396133356164343537653833373965383933613934633363313339223b733a33323a223036313431396166666437343739363639623865653935303765303637306339223b733a33323a223635326463336166636563306164343034353137376634663563323832646261223b733a33323a223964353537323137643261376262393037656566666235646137383834643036223b733a33323a226663366163303937316436343834346162636331613337363761316635646233223b733a33323a226233343565373136386533663233356239383838633066366638346330616338223b733a33323a226538303864323461396363393534616161323662663033386431323063613335223b733a33323a223961653564393061393133633037303033393137663866353837353533393738223b733a33323a223464646165663534386134386133353933343839663035363735643330633736223b733a33323a226231373531653439326233653464333432343338363033636136326133636536223b733a33323a223032663035313632396333623230616433303733616530303166376331306566223b733a33323a223833393062313733336430633733323137363437313762313734613238613632223b733a33323a226438646232313936393635353561623037646134653064356362396335333135223b733a33323a226538623565333436383538343930623663333036623039396431346462373037223b733a33323a226237346531616132333233363034663932386539366532623737653535313437223b733a33323a223035303764303039636635356637333661303238613630393164376534323736223b733a33323a226563623734346330656166623966663039363833623537613134633531373430223b733a33323a223738623139353038353738373863353534376632653535393238366266326332223b733a33323a223361386464623939306561373235343735336531306361613435316131363332223b733a33323a223963633430316363373236316138366136323039333065616238316536613733223b733a33323a223139333336313831666237623162636661366166333532313430333034326261223b733a33323a223765336261393366633432623862656539653232613962323132303230663164223b733a33323a226163336566643062363733313334306163653764663036643739313032613266223b733a33323a223239386237336366626664326631393838643566656533306462333366623039223b733a33323a223632306237316630383436373764383931396637383765383564326266386439223b733a33323a226565616665643566323135643566633131653463333335313730393336356566223b733a33323a223434346563656136393534343062666233666232323637343063613231383766223b733a33323a223463643039353138313937363133663565336337376534393532626134656634223b733a33323a226438386461393230396235353461623363643033386432613963393537396235223b733a33323a223734363030353865336564353130643462336230626234626233643161323337223b733a33323a226666623939366230643764333535303563383935333565616566373633633434223b733a33323a226232336366646137353633616461626134616464366462343436633165636230223b733a33323a223035353630386362353535623864623832353839666136363738636561336536223b733a33323a223035303738346364323330613963326433336638616263663235303536326165223b733a33323a223063373734653261383531633233343238303935353437333761363363313639223b733a33323a226565303534363062396363393334316135306535373464666461323634626438223b733a33323a226165363935366437663137353031343661313733386337383131363963306362223b733a33323a226465613237626631336166313231613839636531343731376537363666396139223b733a33323a223733376139643365656463663434666164383661336365653461643565616436223b733a33323a223766303666376436663638366565613065383765643437643633333965663339223b733a33323a226532363964396265393132316633383131336337346362653339643962336263223b733a33323a223662333639663431333532666631383534306262393765633064353034626665223b733a33323a223133343330376330353263396231383265333736376439373163386336313962223b733a33323a226433373162653837303638373730393238643939323562623831626530313966223b733a33323a223839616465656530633930633262656336353461386537633562656265363233223b733a33323a223636646436346537303962643462663363383562646335613439386264623633223b733a33323a223737316434393535393464353832666236333130653230303963643534336334223b733a33323a223634366530653530326631666331383162326538626166366236616533633961223b733a33323a226337303731663962356261316531626637316464333332393534663330306463223b733a33323a226431623832383563626138396362386438306237666332316665383837636231223b733a33323a223632333135326635376639336536343432333737613636373361663739363735223b733a33323a226339346261663438363362343232313633643736643232663338646332643130223b733a33323a226261666537623164366435623537666563323436373266316639636433636461223b733a33323a226332313062393533316538336564343239353533363965393630646562663730223b733a33323a226665373231326431656531323431643461643031363562363264326338653363223b733a33323a223266663530646266313932393365626266366136393264353163366636316134223b733a33323a223130346566383766323436313934333764653664623735623832393266303235223b733a33323a226162383235616465373132346334323661306339386535663735613562643039223b733a33323a223331326565366661356433343138306262366536336431336536633431383461223b733a33323a223362306537313664613039616263333264376135646434343832373530373635223b733a33323a223036343938613339333562333136313232333236396464396635306639633337223b733a33323a226461323865333835323236373532316661633933316361363465326231363161223b733a33323a223934643438643962316235633464326136383066383632653436356238346365223b733a33323a223738663930303434383737356136353337653664636534623462623138613435223b733a33323a226461303966303336373238616131393938353331353738653065376131373132223b733a33323a223666653031323835373034653263653531333438653437363163353737323033223b733a33323a223530313462383030363163363563326665663962393234356462303661663636223b733a33323a223266356436376535633364616137393064353734343161613863363838356139223b733a33323a226639383830306663306533303636653935633039393665623138616166663230223b733a33323a223465353139306334336234666530306463633465613931623934613235653465223b733a33323a226263653465383739356165326332333433636337363530663564653661653565223b733a33323a223566636335353463356262383766316639336432643738313164393833396534223b733a33323a223337353130643239653362306631313161643032626435343031303130313632223b733a33323a223466353366376364616231366631663563313836373834303239373731643836223b733a33323a223362616332633630343863393264343735643366393231393734643265303565223b733a33323a223266643162336266636231613061303231643234356335366231653439383036223b733a33323a226266376664323038613430306461623064376634313031336230376630656362223b733a33323a223964323165366561316362353330386338323365333461613964643038386563223b733a33323a223536613066393661333331663132393837613131653139653637613538303664223b733a33323a226634343066396337376136323736646631326337613439653135303033653565223b733a33323a226361373434643834633964336636613430333232663532666239643461343663223b733a33323a223066656162393432373862636165653765653865323734343033373532363861223b733a33323a226562383735333037656364396632353262376562303764663731356433316337223b733a33323a226239653635653964323362333666383130656535616538313931336663373239223b733a33323a226163363366663536656461616531336164383261623966613062313336343066223b733a33323a223065333437303530333239323461623333613265636530393266303737393638223b733a33323a223734346137373263326432343861613366623263323361363839636233653339223b733a33323a223535633934656662646137353963383032656363393738656631663536646236223b733a33323a223133303435643334353366316266616538313364303933653534336166393939223b733a33323a223362323338623462356535343861666238363362386638343538333239333132223b733a33323a223639656639366363633936376339356634663538623130306138653337396632223b733a33323a226634623438386561613862656365616535623065316237623766653130303736223b733a33323a223536663130636238666562343037633338366337383162393063663365323364223b733a33323a223964356538306364316133376632316663383430393537383837313636626332223b733a33323a223233306238343063326165363239326264356235633437333533336234643030223b733a33323a226363376134633533613938373636353730393036316532393432333837383536223b733a33323a226263303465343433616437633437666530643366333930313562356165366565223b733a33323a223433323563393038396237323465386633366264326537366136303762343833223b733a33323a223230663237623731333435643339396262343866333930613535376363333864223b733a33323a223032663539336531326430353839623461336161376561396533616438393864223b733a33323a226337663239376463613832656332636331373232393465326434646461623664223b733a33323a226664326565626139353039346662313436316636663837386231366430363165223b733a33323a226535656364393665346262366630336366303536653335366235393037356635223b733a33323a223039343635396366643962306564303765386437626631623266663466656638223b733a33323a223039636533313533393131346335616634663430623337313236356439333038223b733a33323a226335643135633837653062663337616636333566343036336438313739386431223b733a33323a226534323864623030383230316137323232393265323239303734343732333835223b733a33323a226264373061363934653734323537633932613034316165393632636638663961223b733a33323a226365303937393535663334396138633730393162663537633334383466386365223b733a33323a226630353337643135353139346264323562326238356238623531623363313362223b733a33323a223461663137303432353431356136313235393961626535356238343435373663223b733a33323a223565643538643261343765663466363333643463656332306630326636373038223b733a33323a226530336366373438333061353438383631303033393561613639613864386131223b733a33323a226439656431323536646165653262616539313265643636383661633832383831223b733a33323a223130303936383463613133376235313163336264356464656463306335366262223b733a33323a226264303239613638306232366133373538396239373538623464663365363763223b733a33323a223565666161353230336234323137393731313731653035343238643263643035223b733a33323a223334666562313036633232323139613338326464353238656463353638343737223b733a33323a223665643831613338336231623236363061383538363638343561616465336566223b733a33323a223864336239333138323931623863656466316463383635393539653561643962223b733a33323a223961626439393735323030353032376630636235356631646166383464633730223b733a33323a223232333634663163343937633336376562326436656633323333663430366166223b733a33323a226435643563626636376661656532626333346165303636346363306364353265223b733a33323a223139303966323538303035373632386534363236643133353830633933653234223b733a33323a226235613034613638613631336562363139313461316361363239353839666138223b733a33323a226637373430623637663836633335393462313134313762636436323936643061223b733a33323a223538346566323239386631313539353438343237333661313232376465653565223b733a33323a223831356334626639636462363766666637393065623339373231343837363661223b733a33323a226632626364363666396163363135363933623764323262663865396231623661223b733a33323a226164653665616437316563653766633031323665393633323563336234353562223b733a33323a223666363334373162663935626162303766633136303065396461653930363266223b733a33323a226165626465346330383865366239356231323561663835323661353934666339223b733a33323a223237326430366463653361373863656432363739316436356534346431653237223b733a33323a223861613636313737313333353465386335623832356564313966346662366461223b733a33323a223931373236626236643165626666373862663936616232643532363863333863223b733a33323a226431393664316462336538306233393537616232653333393661303766353638223b733a33323a223133646236336338333965336365653165623936653139633535633164346337223b733a33323a223039326539323635323865623435303230326538386338326565343839626435223b733a33323a223137326635623062363863393138383738656232353432623665373865623463223b733a33323a226234376437653030373134626361636534386438626164303065313563356136223b733a33323a223966313365303366313864366235313339306535356131373862366461666663223b733a33323a223533616362363631343336326539373336646531613530623131353130353230223b733a33323a223136353434643733656534343037623534656630373264613238346337383865223b733a33323a226339656332643464356264356431623864633166363730343663383764323765223b733a33323a226666306137323565343762663764373961333336303238626636393239383964223b7d733a343a2268617368223b733a36353a2266663061373235653437626637643739613333363032386266363932393839642d6339656332643464356264356431623864633166363730343663383764323765223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d4c616d696e61735f56616c696461746f725f437372665f73616c745f637372667c433a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a353335323a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a36333a7b733a33323a226662303031356135386636656234336466616234323863616162616563666538223b733a33323a223866393037303936376135643933663033663064663366376136343564386538223b733a33323a223664626430326136323566346131306163303531383231623138303336636339223b733a33323a226162633664356435313064643537346331333063636333373030646639336166223b733a33323a223864666437656130633465366631653263323764313037356430393361663535223b733a33323a223263316166336232336632396163623761656261333939363565303563626431223b733a33323a223031333033653361363162383730363264303362616530626266393232376132223b733a33323a223062343064386563623939633138333435623336646539303737616639386261223b733a33323a223834353536653737353137666661656632323231666264333934653839326131223b733a33323a226533386133623736653865626366396461626237313130346134653837333636223b733a33323a223331373832386261383337333131306265623065633066393030373934396263223b733a33323a223033333939316566613734363535626131616564626236393263343261336465223b733a33323a223164376432386661363766376638663264393065356130613931666564663730223b733a33323a223762316330616434336661626563613661353037366262666639373635376665223b733a33323a223838343330646539373039613933663338303434383363653263653730336364223b733a33323a226139353365313439613839366162666263356165613130643433616136353161223b733a33323a226464376533623331393465333339323331623135343362616161313736633834223b733a33323a223665313432393335623137393333303734633136363832356463323763386461223b733a33323a223036636361326334373865333030316261373635386231616236383066666561223b733a33323a226637663536613933303361313863643266663039326536356436353139663066223b733a33323a226230636462393936373333336436313035623061316238356333323537373734223b733a33323a226239356236316536663932356666316539396630666136313439383432363631223b733a33323a223461383331613431646661306338653331306132313662663863336533623233223b733a33323a223138393134343138373536613134656465323633346531656136626630663832223b733a33323a226166353265323131346666316238626664666231343737333031633136383331223b733a33323a223130346533626536316461346537333439336333636561656265363638323665223b733a33323a226330616665346638393339396437343432333638663339653731636534323162223b733a33323a226336386537613534303131346665303432653637346533316631366137646631223b733a33323a223662356264383236343365633335663862343731636437376537323462346632223b733a33323a226165313232323339363532643639323035653737653663393534653731656232223b733a33323a226164623932373330393035346364353032613933613337653434666664383262223b733a33323a223465623130363730663166303766353362393131343237313164313261363238223b733a33323a223965333561313564356635643665633561316632343766336339303537373937223b733a33323a223634386663623230336565633539646164333636396661313261356361656534223b733a33323a223464326335326231386638393062386261336632663665613863653365336638223b733a33323a223462313363323063343138623035663664353138626233386664663631643032223b733a33323a226331666164353639626565393630653734353661353863396162383531336638223b733a33323a223565613162366462653363353662613765323932343637313661356663663735223b733a33323a223932383538343230343561653835323135393639646539386335373134386331223b733a33323a223762366533363334326334313732356262396563636633366534633939623930223b733a33323a223763386139333638356239323939303065303537326134663934323336343535223b733a33323a223465643237393862316461626433393437393233336564363966643838613864223b733a33323a223334393531616333396432623763353138376364643135346331613536396365223b733a33323a223462386239613166346663613263633664336663666333376332303837346531223b733a33323a223566643536343037353237383131663139303632393661393461333139303263223b733a33323a223264396630353236373838386264343136633631343839336137626364326432223b733a33323a226131326266633130396566313230626262343431363863336533663735383361223b733a33323a223333333566306465346437346130313866643838646637386362653965333766223b733a33323a223464303838303132353138343630333333316363393462663063313238323731223b733a33323a226531643166636438346435353334303361616437636538663733623533613666223b733a33323a223739326463353738656633346338306231323734393436306337306131336265223b733a33323a223433613033663330633732366633626331356235343164666431346366646530223b733a33323a223133613939613665633738666230626638616665633137386233656539363461223b733a33323a226231323636383331623263656566633137363165666565363730356461623962223b733a33323a223562373566323233303865666364343535346263363464633531393762393138223b733a33323a226632646330366235356265306232353538386334366434333966653730633630223b733a33323a223165356430383131363938376131613238336665646536333532636661386636223b733a33323a226165336135333161623537333931313433366230353265376233326539633861223b733a33323a223039383830333865353936373663623434393963326162303262333966303733223b733a33323a223065313536633136633563353235626335616363646238356435643363333766223b733a33323a226165353466663565646436373930663936386666653330313438643339323332223b733a33323a226564353766346631363638323536376236613031616539373361383865366361223b733a33323a223162353561303330643764636263353931366336653831623166353263393531223b733a33323a226334353836336230633535643963386237373962306365383338353531383266223b733a33323a226162366162333661313465333365373963633466393464663833666432306133223b733a33323a223037393861643665373762626237616530333230326536333161646261316430223b733a33323a226137386330356266343062363830633235636437616338336438326465313030223b733a33323a223764383230306538623138656665303537663834393932646233306664373436223b733a33323a226566363332386539633365633031613765356264326130346233306564343964223b733a33323a223863656465373538666262313031663938356439383638616461346164646333223b733a33323a223830336234623564383431393130396232383161333736373633636661313564223b733a33323a226431303562313339376139306137313239333464653939613764346531336365223b733a33323a226334666566623831633632653031303833623137666631373363373830616333223b733a33323a226664666136643436313165303730393731663363663761363362623934336461223b733a33323a226562363262393863633862663237623763376633393633646534323666386166223b733a33323a226138383265316362383131633663373739353631643766326330396333353763223b733a33323a226264323536393239653734353437316237303065663366373339363939353065223b733a33323a223633333463636464383936363632323438303861616539353538646561646530223b733a33323a226463336662316465383364336139323161663534666466313734323431656563223b733a33323a223962653131303933336431666338663065393839653062316232343936343330223b733a33323a226236666339663334373636653537393037316532363264303535306336613534223b733a33323a223031316535366163633636613065613761366534623739363636316462356464223b733a33323a226661343864613738396636623136643066366664666138323836316338353862223b733a33323a226263646438306631393630366366623430333439656462353064343337623361223b733a33323a223738313633356632306533306361316331333161333935623331313836363463223b733a33323a223663366437353931336335363366316131643735346134656132373534393138223b733a33323a226433353339353032366537663666313936393130366165633230653963393536223b733a33323a226233366634313531653561333631616463646132383036323561626335306432223b733a33323a226165366439633363336637323238373064643932643464366362343433666435223b733a33323a223865303663343961303431343662393437313231396535333330396332623333223b733a33323a223332383932643733666338386539616138363138353433623832373663613435223b733a33323a223261646137613835303263663564313931336638646261353263383436313566223b733a33323a223237386365613739643732363561616163343561653463343234643232306430223b733a33323a223566636663636263393634363265633831313438306439393562373563373331223b733a33323a223664663230613563306363386664333866326230663332666638326238633038223b733a33323a226237366265656362386130313534616261623537306230323463646636623231223b733a33323a223738666635343435363563336538353132303531326536366134396636623831223b733a33323a223731333736373330386161373836663332356265643932343938623733323762223b733a33323a226437643366623431366437313939366266653261613064316235623132643065223b733a33323a223637623165636434656566373462616566633065383066323738316336623135223b733a33323a226332633138306639353234356665383933346535393236396138326563343336223b733a33323a226538373865666134336433316162613731326561363839613537376132633234223b733a33323a226465396536613366393664653665623964633765633061643461373536343633223b733a33323a223837383838623638336537393633346266383030353234663663376339623437223b733a33323a223939623832376637633266393239353738616462663733363731313730313437223b733a33323a223863333739336362333566333338643565333134653863623136383332373664223b733a33323a223065663235333364336436363863373339343564306461626664623030393337223b733a33323a226137393038396436643530353563383563656562323739353666366161333864223b733a33323a223962363837353330333439643730643034363435383965346133383364396530223b733a33323a226532323431376439363463643836383965366437323066623939323565636563223b733a33323a223634373861346362303966663261326238656161343331363261303835396239223b733a33323a226234356137376537333766306362646533306261393338383963666466333764223b733a33323a226135316361333064343964623766376461663166653766316134393930626135223b733a33323a223537333738656530656530636363656632306663336163363235383239633831223b733a33323a223164336363303763656364383264383339313163363561633439373531376461223b733a33323a223238373331353664303162363066323638306362326138336338613163386631223b733a33323a226364623232663163626163636461306661373866373561623637363961383832223b733a33323a226161616264646165373363316634353563336632633965303835326465363063223b733a33323a226366613139386138393763333432326331383330326231323662343561653836223b733a33323a223331393162356366333832353662366364326136623338623363633930643838223b733a33323a223663326237376230646161623738663563666266376165316433613834306465223b733a33323a223061333365663464316264353031313634376431363564353766313366393439223b733a33323a223162336437373232376434336132313433613465636536336435356661613863223b733a33323a223739333566326632346463363837313163363234666535313966353933343963223b733a33323a223935313731326337393533393135363663623066623034313733383262666336223b733a33323a223635636331616563623435653864323235333962373334636539373734353365223b7d733a343a2268617368223b733a36353a2236356363316165636234356538643232353339623733346365393737343533652d3935313731326337393533393135363663623066623034313733383262666336223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d4c616d696e61735f56616c696461746f725f437372665f73616c745f7265736f7572636574656d706c617465666f726d5f637372667c433a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a3339313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a313a7b733a33323a226237653932643661393164316438366236643031666532313339383262643638223b733a33323a226334313133633061323532323136613937633535663434353732666638346132223b7d733a343a2268617368223b733a36353a2263343131336330613235323231366139376335356634343537326666383461322d6237653932643661393164316438366236643031666532313339383262643638223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d4c616d696e61735f56616c696461746f725f437372665f73616c745f766f636162756c617279666f726d5f637372667c433a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a3535313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a333a7b733a33323a223332346535393232356665333330613135316661636565373533373230376165223b733a33323a223131643330363066616531363537316639363636346666353365306532373832223b733a33323a223263653534623663373730626663336363366265323065356130326531383032223b733a33323a223863623366343434366165353236633235383932353534623539663631373761223b733a33323a223662363432643933306132616130353763666539633964373233326530353538223b733a33323a226661646562343662333239353862663531623230626136666333316464396633223b7d733a343a2268617368223b733a36353a2266616465623436623332393538626635316232306261366663333164643966332d3662363432643933306132616130353763666539633964373233326530353538223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d, 1604746381);
INSERT INTO `session` (`id`, `data`, `modified`) VALUES
('tva148fdbkbkjk4fkhu6s0udg6', 0x5f5f4c616d696e61737c613a373a7b733a32303a225f524551554553545f4143434553535f54494d45223b643a313630343539363130302e3838333035383b733a363a225f56414c4944223b613a313a7b733a32383a224c616d696e61735c53657373696f6e5c56616c696461746f725c4964223b733a32363a22386c7072666175316266627237393337696b6167766736386766223b7d733a34323a224c616d696e61735f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313630343539303931313b7d733a33323a224c616d696e61735f56616c696461746f725f437372665f73616c745f63737266223b613a313a7b733a363a22455850495245223b693a313630343539393636333b7d733a35333a224c616d696e61735f56616c696461746f725f437372665f73616c745f7265736f7572636574656d706c617465666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313630343539393435313b7d733a34373a224c616d696e61735f56616c696461746f725f437372665f73616c745f766f636162756c617279666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313630343539383437313b7d733a34343a224c616d696e61735f56616c696461746f725f437372665f73616c745f636f6e6669726d666f726d5f63737266223b613a313a7b733a363a22455850495245223b693a313630343539393638363b7d7d4c616d696e61735f56616c696461746f725f437372665f73616c745f6c6f67696e666f726d5f637372667c433a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a3339313a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a313a7b733a33323a223466653736303433666261623836393834393565623661376166626431613636223b733a33323a223138353439323936633132356663326666643739376538346333353363663966223b7d733a343a2268617368223b733a36353a2231383534393239366331323566633266666437393765383463333533636639662d3466653736303433666261623836393834393565623661376166626431613636223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d4c616d696e61735f417574687c433a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a3232333a7b613a343a7b733a373a2273746f72616765223b613a313a7b733a373a2273746f72616765223b693a313b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d4f6d656b614d657373656e6765727c433a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a3230353a7b613a343a7b733a373a2273746f72616765223b613a303a7b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d72656469726563745f75726c7c4e3b4c616d696e61735f56616c696461746f725f437372665f73616c745f637372667c433a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a313637323a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a31373a7b733a33323a226637336637653435306437666666343134333562636131663961333563643837223b733a33323a223237366238666230356130313937626439653431636632356539353032373461223b733a33323a226238636566613430366138623464346433646261386533623830633036353434223b733a33323a226334396433393435356633316161323036663565616130653162626462653538223b733a33323a223931633431643134306266613935336334376264626135633462316466616365223b733a33323a223234343338373765393635323563633138383965336135343166343831393062223b733a33323a223137353532666361613439666634643965656134663030623033383866306362223b733a33323a226437653936353564636438633239363833633939353963356165653565336431223b733a33323a226430306565383563636165353339363438333735663663306163316261633434223b733a33323a223164363834633334656431383632333230343034396161323939626235393832223b733a33323a226262373163373931353938363663666533653634636530636164396462656366223b733a33323a226164363661663863623936613735613933313934396363663632626139653261223b733a33323a223236333761356463633266306265633362303733656131353134643533316664223b733a33323a226561303861376638656663633531613936323834316132653833643530613936223b733a33323a223134383834646638633866383035356262383761623931323861643233393862223b733a33323a223934636133363164656663313861316663653736356261353564343863623432223b733a33323a226331646330373930363835633662373464373732653563333838313863323464223b733a33323a223736366438623231653530616639336264333930626230393733643262363062223b733a33323a226263656665666264383433646261313633663461613264396563623764393731223b733a33323a226462626364616135643233646265313561386266376630643536303136366439223b733a33323a223336656439636462663665383132383238613132303266323434623865633637223b733a33323a226637323564343332363065353639663437623764636234653462653437383165223b733a33323a223662623237633438613031666462393338633335633939316364336630316266223b733a33323a223235653238376239613964396163383966666665313734643262313134303932223b733a33323a223732376464336431643064616164353165363832643830623834613037313761223b733a33323a226265323139346631643933616561396266316331626139303236383264313430223b733a33323a223463663931646462613363323734363536363134303864386635353434393437223b733a33323a226661373938356565396461643133303730343536306232653964343532343930223b733a33323a223630636232316166613436363834636132313836666133623335343331306566223b733a33323a223964303965643661663564663739636163373764643834626161356237303462223b733a33323a223263366161616339376130333565386437663136393363643261366336383636223b733a33323a226139393061333330616463306162323033396533353365396433353261636333223b733a33323a223435326530346566303135303431343861613466626234343736336461323264223b733a33323a223061663635663963663134613132613139346435373232313566333030663438223b7d733a343a2268617368223b733a36353a2230616636356639636631346131326131393464353732323135663330306634382d3435326530346566303135303431343861613466626234343736336461323264223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d4c616d696e61735f56616c696461746f725f437372665f73616c745f7265736f7572636574656d706c617465666f726d5f637372667c433a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a333637323a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a34323a7b733a33323a223431633335623662663033316334663030643937356532303666633066613764223b733a33323a226631626133623962343537646233376262303735386162663838626632333334223b733a33323a223937636361613362316364646461666566316262343266653839396232363331223b733a33323a223431366535653637363036373531393536646562626635323361333163343234223b733a33323a223433366261343237393735306535623931653137666164303866616535333565223b733a33323a226635666663356134383332393535313962386664346630663139396631313830223b733a33323a223534623563343631356663383362386461333362386231393265323062316238223b733a33323a223231313064353336356530303932326461376231643739363835653933646466223b733a33323a223030316434656562633661313935666338326333363661326266313865323261223b733a33323a223765383633303235353333386166383236353239336437383533653830386435223b733a33323a226434656535646264643364343236636265643761353562306432326664313365223b733a33323a223535613632643035646339383134306235353465663237333361623239303466223b733a33323a223261363062613661633862306336623935376330303962303565363938633638223b733a33323a223333383434383835633133633035643834323363613638383335656239383438223b733a33323a223766313666396366383338396338616538613930656262663033613962386237223b733a33323a223265623538633666656163373132633539353664633131303230366661613337223b733a33323a223032306536336630616264356136346163646531663632393934356630363734223b733a33323a223366653834333031616436626238316137373238313663313039336165393964223b733a33323a223534353434616164623832306339643138303036343161306630656631373332223b733a33323a226232373533363861613737333334323934623563366134323730356430383866223b733a33323a226361366430383635313334613661383162303864623330356365653630646161223b733a33323a226436343837333661633134333036633662383636623638653262306161353036223b733a33323a226435313630653062643632383633316538653262643765303965386338303838223b733a33323a226565323263646262623533336361383238656161393731626134373330343231223b733a33323a223161646432613362313766346165343737376536333236323231366463386363223b733a33323a226536663862393362626664353331623162323139303036633931313536363538223b733a33323a226362623664383235626433363065626435346337343436633466633065353633223b733a33323a226664323766323037663365313966393862633938353762306634363961346165223b733a33323a226538666430366233616437303563303531643135636565353130643539366538223b733a33323a223737366234343431323362383965353830633137643561613530623563373438223b733a33323a223731363431656365316565316536396231336137353534643761363339333239223b733a33323a226632353234336330653636316530386566623961353164373234303133646335223b733a33323a223634353663326636633738383636356537346631396135636139346638363465223b733a33323a223237636261316238646633326363303531386130616334623732313636386536223b733a33323a226163353136373962373335356234616537616465386533616338666563616663223b733a33323a223566383962376135653633333430386534336665353239616266333465396636223b733a33323a223464653664633136333939333639386330656230396666643736616131666431223b733a33323a223564303239633734646431373434623735633935383463333632323232376664223b733a33323a226432636638313331353465613432653432303762653930333365666534306164223b733a33323a223739656466326266643834383936376237326531633132613861626230326565223b733a33323a223138626133373339623535326437363833396638393662613765373032373561223b733a33323a223062333236346633653231303662313065396263373438353536316235636463223b733a33323a223330333436633662383565663937653235653235613562613530393565316639223b733a33323a223538613163346166376239336465363336346435303536366137316134323830223b733a33323a223461646536653036366436303930363062663031366638666663653561373435223b733a33323a226265356362656363313131373639666130386162626163623835353837623334223b733a33323a223831343933353061646435613761653064326331653566373030653335656233223b733a33323a223234393738343765616461656430336462653764336132623337626662623961223b733a33323a226531656662383261316464633435366531356361626564653964666264313439223b733a33323a226261646635336539636435663335626631313039303537336430396434323062223b733a33323a223865336465613538366338363835383038663336366634636634313232383365223b733a33323a223866653666326337356236333864323764383232386433323732353037653737223b733a33323a223066316632373836613661333964646630343135353635653530313231616239223b733a33323a226538386130323837393063333038373464653636613137343530343764346161223b733a33323a223463333465313538623763623265303239346538396337623832316532666265223b733a33323a226237313336323632373363383666363939633766653466386134386330366262223b733a33323a223132373732366139626637666633323239363236346237373563386262353030223b733a33323a226632323864633666386564613138306362373431626434306463306137383633223b733a33323a226337633164383030396635623230383235383366636536646131633263343932223b733a33323a226262616232303165366532343934343164623138656366653265616539306366223b733a33323a226638393033613362646436623939333836376364666265616463396462343966223b733a33323a223432373532323334386366353964366130663134633639366665376439666362223b733a33323a223730316235623239633535353935383430653437613964313932343863303839223b733a33323a226262376333623430333535353663323366333063383662343036336233396636223b733a33323a223730343838303033326333363866303434636131396431636664383866623136223b733a33323a226461313861373630383661663963653365353162643032336333623734393531223b733a33323a226632353461383562356530666161333438663537646665626433333639383531223b733a33323a223861336638386563366530626662343862653234303131386537663235343031223b733a33323a226535386231336232353965393063643239346538326566353665323862393164223b733a33323a226130623238333436306537363435393665646363376330623664643433343734223b733a33323a223231363164663065353964306636393639343037346432303963306236393765223b733a33323a226137626433373861323535666237356233396462663833656637666339363936223b733a33323a223234343833383331663636306364613130643539653564336563343332333265223b733a33323a223365656666653633653563376136643737616163313033396335353733653463223b733a33323a226433383565323466316163623530313961626664333261626234666539396130223b733a33323a226466326466386362343232646564353335366666363861333934626262383534223b733a33323a223163626135636436353963396333346338663634353230393137633364333934223b733a33323a223265656364393766643136396432313137336162343731616433653865613239223b733a33323a226634353961323230356463626432663933316566363032613332366463633631223b733a33323a223262306639323433623733306365663531663761643235646437616534333432223b733a33323a226462386136363634666233663136643037623832393431356339356239653838223b733a33323a223837633661383764656636346239376166663635623339393136306565663063223b733a33323a223166316438353461333831616238663536623265306564333263353265376137223b733a33323a223636393133323030373065663639393066656362373566323331383934313966223b7d733a343a2268617368223b733a36353a2236363931333230303730656636393930666563623735663233313839343139662d3166316438353461333831616238663536623265306564333263353265376137223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d4c616d696e61735f56616c696461746f725f437372665f73616c745f766f636162756c617279666f726d5f637372667c433a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a343135323a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a34383a7b733a33323a223566383561363463666632613738643237303437336235386630656134373339223b733a33323a226338336538313039663861303531386430326533373062303837326139656362223b733a33323a223333316536633033343135386331653334336533323031653834613234323061223b733a33323a223936636365346265323036613339373132353863623566313863613564646365223b733a33323a226633383732373563393831663438366335376336616565646366353736646562223b733a33323a226133643838306235366231613435353038326361646563343338393434366235223b733a33323a226561666632656533353666663138363630306436303561643130333331633939223b733a33323a223066626531373431306562343136363061393865356661383362353636346237223b733a33323a226337613032343163373562646162653333316237376661366464316161663438223b733a33323a223634623731336664396565623630383031323635623135613433353863313936223b733a33323a223930393238626462366563363035383763353233326238396463653765316331223b733a33323a223436336534313464663236393036666336303334353130333334386135346439223b733a33323a226339636262613334316661323430653432323936376132303337373265653432223b733a33323a223464343134303336373830366331643532663131393962633832663462623766223b733a33323a223834333432386562646434346334303539396634323465623565346139376130223b733a33323a223333323336653234646231633836313337343235333962303634356662306564223b733a33323a223930316164363665383036326364633635333232616565396434613062346263223b733a33323a226335363134623337666663373733356565653662376566613638636461633562223b733a33323a223432323239316365366630666663353833323835326132396163313531626531223b733a33323a226137373038363034386135316361626462393939663865336637366132313864223b733a33323a223562326335656234633566353564663132623061386433393137363234303433223b733a33323a223637373731393562613961336533626231663837386636333137343538633962223b733a33323a226438366665336639653536363930363562363133643137663962316365346533223b733a33323a223936663134303030333064336537663762363038376565383237343036383663223b733a33323a226233646566373035666237616362366362346239636165613430323039313232223b733a33323a226464633464383139343830643665626666303533346166636534386439623566223b733a33323a226161396539343064613531653164663934326361356134323765366138303431223b733a33323a226535373235373538633535343339366530636437646431616231366462343436223b733a33323a223537313130373537306465363036663431633132396365353832613165323663223b733a33323a223664346232363762343462383230626461383563643839636361313736643066223b733a33323a226135306532396432636262363731653861313261313736306635643838643438223b733a33323a226566326535643239366330313261646563396663393430383034336232383533223b733a33323a226138383663393861663337336135656333323331336337613230396536313631223b733a33323a223436356161323165306264303132383964316565313964366666336366393661223b733a33323a226430383239633134643434386336323964376563653838626462363939363462223b733a33323a223836663662623030616133623864356638316264363339323539313834343938223b733a33323a226130363161656136336433306230366431353838393263663833343139643430223b733a33323a226461303336353864663064313533666637373636626335306138316463386131223b733a33323a226330633134383531316465633133386639303935666464653537656562323730223b733a33323a226530343564346133643962656161323866323631326566333132313064336533223b733a33323a223234666563653265623465396631353963613036623064336432323037373165223b733a33323a226135623563363237383664373532323766303864663763343962326465316639223b733a33323a223366303765356234383832386638623663383061646636306364333939653136223b733a33323a223235303234663535323361656261633137636635393964346437643361643936223b733a33323a223730623264383630643966616363346362376562636366376462653437623536223b733a33323a223137393162333662333636663332643966643936346663623330313363393235223b733a33323a223032353061663932363130303965386463313038353164623631643662383130223b733a33323a226332613062376438616434316534393833303636383064643161626233373463223b733a33323a226539633237613262613566346361616134663663626630343333383036653031223b733a33323a223362646138313866316537656535346633353466643930646438326133666261223b733a33323a226238633733393461376335653230636265613265333235303262353335626431223b733a33323a226133356431356365636462323631633561376230356332663036643637316331223b733a33323a223835313466353065643462653936653331343235396365616536343039303063223b733a33323a226463346339343130343165303535393238656234636132303062633339363636223b733a33323a226565653636653335336566376630633863343864663665333039333235383233223b733a33323a223033663036383961346134663631623365353065333934336337376662643732223b733a33323a223265373366643031313562366630383333386632613430636262653138393162223b733a33323a223936613633353739313461393235623762356639376130306639306435616130223b733a33323a226332303666313338626161356261396563396234373030306534386563343065223b733a33323a226363613766623661316666633936303639383761343166363331386630643064223b733a33323a223066386233633930313933306437633033633937333163333339373633303937223b733a33323a223531303331343936383032646637313439363730653730383230646337323835223b733a33323a223061636666613938323732313134323135346534306562393531363939396464223b733a33323a223161666338326665383631333763373636383662306362353065323763323233223b733a33323a226362336164363639636438356437633433363864326364323964313063373263223b733a33323a223561663334313838326363323439306537396262313832373939356661656563223b733a33323a226263346238373737383364633030306365316130646635393638343936343535223b733a33323a226566623031326634313465643366376165363164643562626465363935653431223b733a33323a226532356137666136353364376236353837343237633465633939626337386166223b733a33323a226438363364663663373063316462646538353763383136366531633134383936223b733a33323a223764636561343263663033323834343431303431306532663330616564343036223b733a33323a226233613430623236643037326530383032663733343863363663333032616633223b733a33323a223761363632383339616662316337333136353135336666613862646136396431223b733a33323a223738383265353361613434353837333339383034366238343361383361306332223b733a33323a223462306139663065316438633961343336636336643266363832346637356435223b733a33323a223865333466613432356131336166623031613634356139326338353733323235223b733a33323a226530353638373533346534363038366661343034666337303737366335653737223b733a33323a223161393330303861333065636565303263393361313365313763346131613235223b733a33323a223465613131346437393538646664643931653035383238346236633665303534223b733a33323a226134646330303735356431393166643238383936333135306562613238663138223b733a33323a223731663836643265386639633532396535623532346564306331306462386135223b733a33323a226232376235363031663165313565303763653264633164643230616639653332223b733a33323a226633633033333466323366363339386236323664353238316338313066386539223b733a33323a223334646337663530656534356432313364626135363365613936353566303036223b733a33323a223734663435303435616563366233386533626663633634613031386437396361223b733a33323a223634366235333332313933633830613066303261396135373266333733363935223b733a33323a226138636637663133333137306165343461663330306636636330353933336336223b733a33323a223234363838336132383233376335393236306333386638616336363435333361223b733a33323a226461623333393135636363666336633734386364393639313764343238346235223b733a33323a226563373961643630313562646562333362663433636537373736623364303563223b733a33323a226338346631386631303633363036336139326235666436316339646133636364223b733a33323a223363303466393433336538636639643330316533336437646665653466616131223b733a33323a226432393338326161326237623063353365353632336238313762386463353761223b733a33323a226138333037373364663235646335353364343765383237383131303662323065223b733a33323a223235633765343061663935653863656634326639393165306631353165666135223b733a33323a226566613833366366333562636232353838323138623034653063363537346163223b7d733a343a2268617368223b733a36353a2265666138333663663335626362323538383231386230346530633635373461632d3235633765343061663935653863656634326639393165306631353165666135223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d4c616d696e61735f56616c696461746f725f437372665f73616c745f636f6e6669726d666f726d5f637372667c433a32363a224c616d696e61735c5374646c69625c41727261794f626a656374223a373237323a7b613a343a7b733a373a2273746f72616765223b613a323a7b733a393a22746f6b656e4c697374223b613a38373a7b733a33323a226330393236613635333134636438623937636237366538363439633762666561223b733a33323a226362353765633939323734616662646131373837633435636565633331386230223b733a33323a223464666163666461313562366437633361353463323062326165313135346332223b733a33323a223639313264323262336233313562393539373031643537386464303637313066223b733a33323a223363373533313832353363636138366331363139326161336361643437613863223b733a33323a223765316166373030373330666565346561373061313765643038323161353331223b733a33323a223331643063303664353632336432326162616531646265353139343138303162223b733a33323a223364633137636262636366333239663730333037313631643363336338643765223b733a33323a223630363730653438316437366665376538656536623061643265326466356263223b733a33323a226136646530373333326337393130653536346430616331313635653466346131223b733a33323a226338393362303937363237313632366262363834303531366366663536633365223b733a33323a223335376130383661656633663331303863656531323863356332323034346465223b733a33323a223138393631393432343933373832303631386562343464356463343237356432223b733a33323a223761613130633331316137663830323961336236393935313038396262613839223b733a33323a226132303061616233336566303136656531626634646632633433376430653134223b733a33323a223665663864333739386339366232326636666132333235613066633334313131223b733a33323a226638363465353766323832353730346232306235383735323132363436396665223b733a33323a223037336366356364366633313235353131643530613038613539326435663432223b733a33323a223162333630636236323832626266313366316262353334656664613736656162223b733a33323a226266666462363166633264393765343338333335613437643130396164643334223b733a33323a226337323538336339393661326231326233383332373965656537333265636537223b733a33323a223330383862306161346533363365323866306231613564636230386533663064223b733a33323a223834623138376231393437353031323232366239393464303463376165623363223b733a33323a223335396463366564333062656330373837656635393730616635616462373430223b733a33323a223866353437313330363466396535646135393038393139643733626231393964223b733a33323a226163306164333566656266636438333131653035333063633766316464383036223b733a33323a223537363036376262343839636666626335666439363938363562346636343035223b733a33323a223133643437313266656336613037316637363533323238316232646337636630223b733a33323a226438366565356565636366363465616630626239333161306566366431303965223b733a33323a226330353036366433333236313666626166356431333532663636386335653431223b733a33323a223830353763373730373233396434393932616563623134656236633133376239223b733a33323a223365616161306235396432333463396634373361326563333665646134353830223b733a33323a226637346265333064333030336133303630323865646563373963633531656137223b733a33323a226332393761643861313335626534336437366231636135383239663362626433223b733a33323a223131653865386338356362396566623232313065333035323033383566353931223b733a33323a223338386236366164616234346139363038663064356363363236666139383838223b733a33323a226131343437646265336337333666333862633835653930633432336236343566223b733a33323a223634333536396136613735633236313637656262663030633835313332623735223b733a33323a223531643064383239373931323161663066306230313738386166346133343039223b733a33323a223336333336323464346566666438393035666437396237376164306232353461223b733a33323a226333643433623934643563623530316363633431323963376663363864316465223b733a33323a226565353761303137383531613535383832613332353466383736346366373835223b733a33323a226539333439633062373835636334346134643531323462363839643666363133223b733a33323a223666366563316437663762346235623836313661323866373733663930353831223b733a33323a223035323037643836333763343761343139393939343461383361636635663632223b733a33323a226331633538316664373333316637383764643435376530636462333465363833223b733a33323a223233636536363466343132333765336534303635326537326230363839326464223b733a33323a226462366337373931663237336266623265623134303961323664623664376265223b733a33323a223933373363623061353862343431396661323033633966333436616438343965223b733a33323a223166386534623463633732623539643964306262383636613837353735323731223b733a33323a223539386438343736313665313366326632626634366665323232333763323562223b733a33323a223561613533316466326237626336613434306237636231366464303038306537223b733a33323a223265373235613166343338623663616631356433383538633866313839613866223b733a33323a223835613639383439316664306262383565333633303330326366666161623034223b733a33323a226339366463646561356562393130343963333136313364393465356462643963223b733a33323a223435646232366635316433396363373435353338356239616261386233643362223b733a33323a223538643565643232396462303763643635363964306330633131333264653430223b733a33323a223330623032323565613561313164396339633530323533363165316664646365223b733a33323a223861623461656234626662373234323933633061323231353766303266383732223b733a33323a226161303636376439356235646162623938613166656533646663633261356361223b733a33323a223637646138393734656466366630366661336237326361303265386664316238223b733a33323a223634346232313034396238336332393030353666633430643065656433386166223b733a33323a226630356164363033393239333333623138343765666335636333306365646437223b733a33323a226165386165333961343961363031633863313564326665643532323432393666223b733a33323a223264653461343363333732333762353261616637316633626465356637363130223b733a33323a223532326663316565636335383563383663623330303031653733653832646438223b733a33323a223836653439366361643063313935366234643664393432613637366561353463223b733a33323a223638333462346533656330306165326134663063613166326666353235633865223b733a33323a223239643862636566666335366136376464303461336562666238326435326235223b733a33323a223265303933376665326135616130326239626237613734656634386438333561223b733a33323a226333343264616530626265633564613465356466353266316663323936353439223b733a33323a223364386433303739336463626236633839633334306539653538306266363937223b733a33323a223334666662333265396236636463346635303430323561383131356164303164223b733a33323a223537383639633266303232643262353362623933393461383537663033623839223b733a33323a223539336633326261333538616131613566646162303635643165326235393966223b733a33323a223363333563313139316438636637633435663363343365616537373639346666223b733a33323a226435323166333863336162613464613735613962643361623232633263383939223b733a33323a223461646239383036613264373538303234613163386563666533643832313534223b733a33323a223136353230313266656566313137393638396663316661353062346364656466223b733a33323a223036386438316238386131646237383134623562663865663830653638366434223b733a33323a223261326134376164633931636139346339306437386636373338393835613661223b733a33323a226437336637353161636165623138383065353163316435343837633739663534223b733a33323a226131616531326335303764616538356431333338353633376565643839343136223b733a33323a223732343535616261333637616262393764616234333464373939376434323632223b733a33323a223330386462653566363362613330636433346363393834313661626336313936223b733a33323a226263346266316564643838333835326239643437303861626432333836313933223b733a33323a223133323666326335643535356166366230393339623937326231633734653161223b733a33323a226332653165316665373935333530656337663164643334663762333138356532223b733a33323a226666653731326436353761363330383830383663653362666236386463313335223b733a33323a226136323636626262666165633361623831353030333033666366363531626166223b733a33323a226562666331666539393633373533623734373563613132626633613034333665223b733a33323a223838643236376231393566643761303762613966383739313161363363373863223b733a33323a223436356331626338646361663364353633303562303432346534653132633761223b733a33323a226161353832663634353362646539613137366561323862623934386539383866223b733a33323a226338616662616530386634383263303364316535333761353866616130333931223b733a33323a223838366239363161306338366237373034643435306430313264653235386233223b733a33323a226461386536636239306135666565316439663463373063613762613335356631223b733a33323a226234353961313864366561663264656130316536326633336561393439343161223b733a33323a223131643438396366656364373761616661333566356538646366343730393265223b733a33323a226238616233333138343133383265613163623866663833393139653034356333223b733a33323a223932656466666134306535653537373963636234326562353234316363363237223b733a33323a226561353631323234653535363937343231383563666565353838333130306265223b733a33323a223964333633343465363065333061636434363262323133633730313863633366223b733a33323a223737663131613539663834313938326639666535316361386435343964303737223b733a33323a223661656139636539396533326663333662373365653666633537303264326665223b733a33323a226565646236313234613436323263633635663538663932343930646233633234223b733a33323a226362323837336235393736393938353263313431393966393432663037363039223b733a33323a223431373634346235336562323031363436653035336535376131343964326230223b733a33323a226233326332643165336463663466353165323331353265366535613964623733223b733a33323a223539346363306166353461633035633261393135396564633839643866386566223b733a33323a223134623564366536616662353965306636623937366439636663346436353565223b733a33323a223636363034613264363066333038643939383839376564343732663331356537223b733a33323a223564666135353636636433393266623239643031366631613038663739356230223b733a33323a223938613766346234623938313263376631643639383164326434666235643561223b733a33323a226262323665323666616436636538303665356234643739623466346463633163223b733a33323a223034313933326132303436346333343935663438336537623864323433633739223b733a33323a223565626230616261306265333630326334383866643264383934643765346635223b733a33323a223435346165373064303938613432613835393836346230383163303731306564223b733a33323a223065636565383131363761303063366465323133353632383736663631376561223b733a33323a226437653331653033313034363062623563623334303165376561366561313835223b733a33323a223564653861303266303566393337633430663334616166633031376334336533223b733a33323a223638633837663835623365633732646431656265383064396563383834363537223b733a33323a226437646664343735333933653131363664636330346364393330313063386535223b733a33323a223439643931343362386266663039646464326438396566303333373962643838223b733a33323a226137616466396436616236393466333632333765303965646536393138613639223b733a33323a223632356265313862346561336264616163656235326230363830366235343261223b733a33323a226631343863396465333264623034646562326265306263306165326431326537223b733a33323a223738626237666337373762363464623663613136363734393633383937666637223b733a33323a226231616563353730636263383733613262326262653662616137663436316361223b733a33323a223366393738373866353062313330656633393430643532616638356134656232223b733a33323a226363343638646164323063323033663137393338373034663935646332313961223b733a33323a223837613061333837306133346663663738373635386561343334313436346164223b733a33323a226333386466303566313138643731313838366136303231343937646262336131223b733a33323a223365333738383666636237656661616665306130363539383666666237346465223b733a33323a223235643961343736343638626265613631393231313962613465346236636666223b733a33323a223734373863643838303435386237323738396664336437363664613134616466223b733a33323a226165396638376634353938383265626237666630396432333535346536643839223b733a33323a226234343063303230653664356462376366616533646333636133303337343132223b733a33323a223962623933376633373431376161383061386366306332346366656565656266223b733a33323a223238346534383539326338323465313465353364646332306639323235653936223b733a33323a223038373933346333393965383735393932316530363330376632623961346564223b733a33323a223161666561303061373566386432666432333737373665373231626337336135223b733a33323a223161623536363664393832343266653330653532373237393865373464313761223b733a33323a223761623162343138303135343962336330316636653762323163303932353539223b733a33323a223862633962333739623931336135373033373530323236353461316232373636223b733a33323a223738633138366230343330643136626666646365646436323738393765636432223b733a33323a223634643264376161393561333465313038613131346338626231383939636333223b733a33323a226338343235376134633362303262346265633632316365303662326561313933223b733a33323a226661383464343436383232373561643433336162323837383064663966633236223b733a33323a226534666434643838313764623062356333623965373030323537643239636439223b733a33323a223766346233343938363235643433383765666462636330643566643334626261223b733a33323a226262303361663838306166303763356338626335653863656538353135656462223b733a33323a223836646438303063333134366337326337313830353866383534383966636134223b733a33323a226163643836306438326236343962636265373263313963313062353864316231223b733a33323a226664623764343961363064323865323433383430353364653632373639366462223b733a33323a223331663634336138636137656335393132336137626262373730363135376665223b733a33323a223330316266633261663031396266656137636565316138326463383466616661223b733a33323a226431306530646466653964303836623362336430666230333038613837303265223b733a33323a223335643261323964643138613865356461376436633933653366306566383837223b733a33323a226664383865636664363863656366393737306662613536663338323161393263223b733a33323a223166396638396264623737333561363961303766386137633366326565313164223b733a33323a226462363537326666643232396233653530653034623762363136653639613330223b733a33323a223065633061396431343931323833393339343165613066643134313465303933223b733a33323a223433386263326339303135616465343262366137343135376330373639303431223b733a33323a226538663235656264326432323764343562353966303566613935313839616430223b733a33323a223638386234356538386332316665353431666331613030653034613161643934223b733a33323a226662376130383437346365303434656165393265346136333162646237313262223b733a33323a223730613334326436343439326435333164646566653038303361393930313338223b733a33323a226361343534333934316266313861313035653433643266656532393331666661223b733a33323a226532653332383834356636663234626634333133613637313331356430333834223b733a33323a226537346337346138656561393437376231326637623965616363643736646536223b733a33323a226531326232653965386464616266356166383733356162343837326362613438223b733a33323a223865326230613034393336363161626236633766376536653134653865643462223b733a33323a223361663538353263303338383837356338326637343562363037393531396564223b7d733a343a2268617368223b733a36353a2233616635383532633033383838373563383266373435623630373935313965642d3865326230613034393336363161626236633766376536653134653865643462223b7d733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b733a31333a2241727261794974657261746f72223b733a31393a2270726f74656374656450726f70657274696573223b613a343a7b693a303b733a373a2273746f72616765223b693a313b733a343a22666c6167223b693a323b733a31333a226974657261746f72436c617373223b693a333b733a31393a2270726f74656374656450726f70657274696573223b7d7d7d, 1604596101);

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
('administrator_email', '\"sabrinaboussad1982@gmail.com\"'),
('extension_whitelist', '[\"aac\",\"aif\",\"aiff\",\"asf\",\"asx\",\"avi\",\"bmp\",\"c\",\"cc\",\"class\",\"css\",\"divx\",\"doc\",\"docx\",\"exe\",\"gif\",\"gz\",\"gzip\",\"h\",\"ico\",\"j2k\",\"jp2\",\"jpe\",\"jpeg\",\"jpg\",\"m4a\",\"m4v\",\"mdb\",\"mid\",\"midi\",\"mov\",\"mp2\",\"mp3\",\"mp4\",\"mpa\",\"mpe\",\"mpeg\",\"mpg\",\"mpp\",\"odb\",\"odc\",\"odf\",\"odg\",\"odp\",\"ods\",\"odt\",\"ogg\",\"opus\",\"pdf\",\"png\",\"pot\",\"pps\",\"ppt\",\"pptx\",\"qt\",\"ra\",\"ram\",\"rtf\",\"rtx\",\"swf\",\"tar\",\"tif\",\"tiff\",\"txt\",\"wav\",\"wax\",\"webm\",\"wma\",\"wmv\",\"wmx\",\"wri\",\"xla\",\"xls\",\"xlsx\",\"xlt\",\"xlw\",\"zip\"]'),
('installation_title', '\"omekaS\"'),
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
(1, 'sabrinaboussad1982@gmail.com', 'Sabrina', '2020-11-05 14:41:47', '2020-11-05 14:41:48', '$2y$10$kqf3f2YnStBxz40M8e02TOU7icsQZZVFyJ/zRo/K.tbesIHweVq7G', 'global_admin', 1);

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
(29, 6, 10, NULL, 'literal', '', '1', NULL, 1),
(30, 6, 144, NULL, 'literal', '', 'nom arbitre1', NULL, 1),
(31, 6, 139, NULL, 'literal', '', 'prénom arbitre1', NULL, 1),
(32, 6, 220, NULL, 'literal', '', '1', NULL, 1),
(33, 6, 1, NULL, 'literal', '', 'arbitre1', NULL, 1),
(34, 6, 4, NULL, 'literal', '', 'arbitre1', NULL, 1),
(35, 7, 10, NULL, 'literal', '', '2', NULL, 1),
(36, 7, 144, NULL, 'literal', '', 'nom arbitre2', NULL, 1),
(37, 7, 139, NULL, 'literal', '', 'prénom arbitre2', NULL, 1),
(38, 7, 220, NULL, 'literal', '', '2', NULL, 1),
(39, 7, 1, NULL, 'literal', '', 'arbitre2', NULL, 1),
(40, 7, 4, NULL, 'literal', '', 'arbitre2', NULL, 1),
(41, 8, 10, NULL, 'literal', '', '3', NULL, 1),
(42, 8, 144, NULL, 'literal', '', 'nom arbitre3', NULL, 1),
(43, 8, 139, NULL, 'literal', '', 'prénom arbitre3', NULL, 1),
(44, 8, 220, NULL, 'literal', '', '3', NULL, 1),
(45, 8, 1, NULL, 'literal', '', 'arbitre3', NULL, 1),
(46, 8, 4, NULL, 'literal', '', 'arbitre3', NULL, 1),
(47, 9, 10, NULL, 'literal', '', '4', NULL, 1),
(48, 9, 144, NULL, 'literal', '', 'nom arbitre4', NULL, 1),
(49, 9, 139, NULL, 'literal', '', 'prénom arbitre4', NULL, 1),
(50, 9, 220, NULL, 'literal', '', '4', NULL, 1),
(51, 9, 1, NULL, 'literal', '', 'arbitre4', NULL, 1),
(52, 9, 4, NULL, 'literal', '', 'arbitre4', NULL, 1),
(53, 10, 10, NULL, 'literal', '', '5', NULL, 1),
(54, 10, 144, NULL, 'literal', '', 'nom arbitre5', NULL, 1),
(55, 10, 139, NULL, 'literal', '', 'prénom arbitre5', NULL, 1),
(56, 10, 220, NULL, 'literal', '', '5', NULL, 1),
(57, 10, 1, NULL, 'literal', '', 'arbitre5', NULL, 1),
(58, 10, 4, NULL, 'literal', '', 'arbitre5', NULL, 1),
(59, 11, 10, NULL, 'literal', '', '6', NULL, 1),
(60, 11, 144, NULL, 'literal', '', 'nom arbitre6', NULL, 1),
(61, 11, 139, NULL, 'literal', '', 'prénom arbitre6', NULL, 1),
(62, 11, 220, NULL, 'literal', '', '6', NULL, 1),
(63, 11, 1, NULL, 'literal', '', 'arbitre6', NULL, 1),
(64, 11, 4, NULL, 'literal', '', 'arbitre6', NULL, 1),
(65, 12, 10, NULL, 'literal', '', '1', NULL, 1),
(66, 12, 138, NULL, 'literal', '', 'nom compt 1', NULL, 1),
(67, 12, 1, NULL, 'literal', '', 'compétition 1', NULL, 1),
(68, 12, 4, NULL, 'literal', '', 'compétition 1', NULL, 1),
(69, 13, 10, NULL, 'literal', '', '2', NULL, 1),
(70, 13, 138, NULL, 'literal', '', 'nom compt2', NULL, 1),
(71, 13, 1, NULL, 'literal', '', 'compétition 2', NULL, 1),
(72, 13, 4, NULL, 'literal', '', 'compétition 2', NULL, 1),
(73, 14, 10, NULL, 'literal', '', '3', NULL, 1),
(74, 14, 138, NULL, 'literal', '', 'nom compt3', NULL, 1),
(75, 14, 1, NULL, 'literal', '', 'compétition 3', NULL, 1),
(76, 14, 4, NULL, 'literal', '', 'compétition 3', NULL, 1),
(77, 15, 10, NULL, 'literal', '', '4', NULL, 1),
(78, 15, 138, NULL, 'literal', '', 'nom compt4', NULL, 1),
(79, 15, 1, NULL, 'literal', '', 'compétition 4', NULL, 1),
(80, 15, 4, NULL, 'literal', '', 'compétition 4', NULL, 1),
(81, 16, 10, NULL, 'literal', '', '5', NULL, 1),
(82, 16, 138, NULL, 'literal', '', 'nom compt5', NULL, 1),
(83, 16, 1, NULL, 'literal', '', 'compétition 5', NULL, 1),
(84, 16, 4, NULL, 'literal', '', 'compétition 5', NULL, 1),
(85, 17, 10, NULL, 'literal', '', '6', NULL, 1),
(86, 17, 138, NULL, 'literal', '', 'nom compt6', NULL, 1),
(87, 17, 1, NULL, 'literal', '', 'compétition 6', NULL, 1),
(88, 17, 4, NULL, 'literal', '', 'compétition 6', NULL, 1),
(89, 18, 10, NULL, 'literal', '', '1', NULL, 1),
(90, 18, 1, NULL, 'literal', '', 'création1', NULL, 1),
(91, 18, 4, NULL, 'literal', '', 'création1', NULL, 1),
(92, 19, 10, NULL, 'literal', '', '2', NULL, 1),
(93, 19, 1, NULL, 'literal', '', 'création2', NULL, 1),
(94, 19, 4, NULL, 'literal', '', 'création2', NULL, 1),
(95, 20, 10, NULL, 'literal', '', '3', NULL, 1),
(96, 20, 1, NULL, 'literal', '', 'création3', NULL, 1),
(97, 20, 4, NULL, 'literal', '', 'création3', NULL, 1),
(98, 21, 10, NULL, 'literal', '', '4', NULL, 1),
(99, 21, 1, NULL, 'literal', '', 'création4', NULL, 1),
(100, 21, 4, NULL, 'literal', '', 'création4', NULL, 1),
(101, 22, 10, NULL, 'literal', '', '5', NULL, 1),
(102, 22, 1, NULL, 'literal', '', 'création5', NULL, 1),
(103, 22, 4, NULL, 'literal', '', 'création5', NULL, 1),
(104, 23, 10, NULL, 'literal', '', '6', NULL, 1),
(105, 23, 1, NULL, 'literal', '', 'création6', NULL, 1),
(106, 23, 4, NULL, 'literal', '', 'création6', NULL, 1),
(107, 24, 10, NULL, 'literal', '', '1', NULL, 1),
(108, 24, 1, NULL, 'literal', '', 'equipe1', NULL, 1),
(109, 24, 4, NULL, 'literal', '', 'equipe1', NULL, 1),
(110, 25, 10, NULL, 'literal', '', '2', NULL, 1),
(111, 25, 1, NULL, 'literal', '', 'equipe2', NULL, 1),
(112, 25, 4, NULL, 'literal', '', 'equipe2', NULL, 1),
(113, 26, 10, NULL, 'literal', '', '3', NULL, 1),
(114, 26, 1, NULL, 'literal', '', 'equipe3', NULL, 1),
(115, 26, 4, NULL, 'literal', '', 'equipe3', NULL, 1),
(116, 27, 10, NULL, 'literal', '', '4', NULL, 1),
(117, 27, 1, NULL, 'literal', '', 'equipe4', NULL, 1),
(118, 27, 4, NULL, 'literal', '', 'equipe4', NULL, 1),
(119, 28, 10, NULL, 'literal', '', '5', NULL, 1),
(120, 28, 1, NULL, 'literal', '', 'equipe5', NULL, 1),
(121, 28, 4, NULL, 'literal', '', 'equipe5', NULL, 1),
(122, 29, 10, NULL, 'literal', '', '6', NULL, 1),
(123, 29, 1, NULL, 'literal', '', 'equipe6', NULL, 1),
(124, 29, 4, NULL, 'literal', '', 'equipe6', NULL, 1),
(125, 30, 10, NULL, 'literal', '', '1', NULL, 1),
(126, 30, 1, NULL, 'literal', '', 'joueur1', NULL, 1),
(127, 30, 4, NULL, 'literal', '', 'joueur1', NULL, 1),
(128, 30, 145, NULL, 'literal', '', 'nom joueur1', NULL, 1),
(129, 30, 139, NULL, 'literal', '', 'prénom joueur1', NULL, 1),
(130, 30, 108, NULL, 'literal', '', '1', NULL, 1),
(131, 30, 183, NULL, 'literal', '', '20', NULL, 1),
(132, 30, 203, NULL, 'literal', '', '1,80', NULL, 1),
(133, 30, 220, NULL, 'literal', '', '1', NULL, 1),
(134, 31, 10, NULL, 'literal', '', '2', NULL, 1),
(135, 31, 1, NULL, 'literal', '', 'joueur2', NULL, 1),
(136, 31, 4, NULL, 'literal', '', 'joueur2', NULL, 1),
(137, 31, 145, NULL, 'literal', '', 'nom joueur2', NULL, 1),
(138, 31, 139, NULL, 'literal', '', 'prénom joueur2', NULL, 1),
(139, 31, 108, NULL, 'literal', '', '2', NULL, 1),
(140, 31, 183, NULL, 'literal', '', '21', NULL, 1),
(141, 31, 203, NULL, 'literal', '', '1,85', NULL, 1),
(142, 31, 220, NULL, 'literal', '', '2', NULL, 1),
(143, 32, 10, NULL, 'literal', '', '3', NULL, 1),
(144, 32, 1, NULL, 'literal', '', 'joueur3', NULL, 1),
(145, 32, 4, NULL, 'literal', '', 'joueur3', NULL, 1),
(146, 32, 145, NULL, 'literal', '', 'nom joueur3', NULL, 1),
(147, 32, 139, NULL, 'literal', '', 'prénom joueur3', NULL, 1),
(148, 32, 108, NULL, 'literal', '', '3', NULL, 1),
(149, 32, 183, NULL, 'literal', '', '24', NULL, 1),
(150, 32, 203, NULL, 'literal', '', '1,80', NULL, 1),
(151, 32, 220, NULL, 'literal', '', '3', NULL, 1),
(152, 33, 10, NULL, 'literal', '', '4', NULL, 1),
(153, 33, 1, NULL, 'literal', '', 'joueur4', NULL, 1),
(154, 33, 4, NULL, 'literal', '', 'joueur4', NULL, 1),
(155, 33, 145, NULL, 'literal', '', 'nom joueur4', NULL, 1),
(156, 33, 139, NULL, 'literal', '', 'prénom joueur4', NULL, 1),
(157, 33, 108, NULL, 'literal', '', '4', NULL, 1),
(158, 33, 183, NULL, 'literal', '', '30', NULL, 1),
(159, 33, 203, NULL, 'literal', '', '1,85', NULL, 1),
(160, 33, 220, NULL, 'literal', '', '4', NULL, 1),
(161, 34, 10, NULL, 'literal', '', '5', NULL, 1),
(162, 34, 1, NULL, 'literal', '', 'joueur5', NULL, 1),
(163, 34, 4, NULL, 'literal', '', 'joueur5', NULL, 1),
(164, 34, 145, NULL, 'literal', '', 'nom joueur5', NULL, 1),
(165, 34, 139, NULL, 'literal', '', 'prénom joueur5', NULL, 1),
(166, 34, 108, NULL, 'literal', '', '5', NULL, 1),
(167, 34, 183, NULL, 'literal', '', '29', NULL, 1),
(168, 34, 203, NULL, 'literal', '', '1,75', NULL, 1),
(169, 34, 220, NULL, 'literal', '', '5', NULL, 1),
(170, 35, 10, NULL, 'literal', '', '6', NULL, 1),
(171, 35, 1, NULL, 'literal', '', 'joueur6', NULL, 1),
(172, 35, 4, NULL, 'literal', '', 'joueur6', NULL, 1),
(173, 35, 145, NULL, 'literal', '', 'nom joueur6', NULL, 1),
(174, 35, 139, NULL, 'literal', '', 'prénom joueur6', NULL, 1),
(175, 35, 108, NULL, 'literal', '', '6', NULL, 1),
(176, 35, 183, NULL, 'literal', '', '30', NULL, 1),
(177, 35, 203, NULL, 'literal', '', '1,75', NULL, 1),
(178, 35, 220, NULL, 'literal', '', '6', NULL, 1),
(179, 36, 10, NULL, 'literal', '', '1', NULL, 1),
(180, 36, 1, NULL, 'literal', '', 'match1', NULL, 1),
(181, 36, 4, NULL, 'literal', '', 'match1', NULL, 1),
(182, 37, 10, NULL, 'literal', '', '2', NULL, 1),
(183, 37, 1, NULL, 'literal', '', 'match2', NULL, 1),
(184, 37, 4, NULL, 'literal', '', 'match2', NULL, 1),
(185, 38, 10, NULL, 'literal', '', '3', NULL, 1),
(186, 38, 1, NULL, 'literal', '', 'match3', NULL, 1),
(187, 38, 4, NULL, 'literal', '', 'match3', NULL, 1),
(188, 39, 10, NULL, 'literal', '', '4', NULL, 1),
(189, 39, 1, NULL, 'literal', '', 'match4', NULL, 1),
(190, 39, 4, NULL, 'literal', '', 'match4', NULL, 1),
(191, 40, 10, NULL, 'literal', '', '4', NULL, 1),
(192, 40, 1, NULL, 'literal', '', 'match4', NULL, 1),
(193, 40, 4, NULL, 'literal', '', 'match4', NULL, 1),
(194, 41, 10, NULL, 'literal', '', '5', NULL, 1),
(195, 41, 1, NULL, 'literal', '', 'match5', NULL, 1),
(196, 41, 4, NULL, 'literal', '', 'match5', NULL, 1),
(197, 42, 10, NULL, 'literal', '', '6', NULL, 1),
(198, 42, 1, NULL, 'literal', '', 'match6', NULL, 1),
(199, 42, 4, NULL, 'literal', '', 'match6', NULL, 1),
(200, 43, 10, NULL, 'literal', '', '1', NULL, 1),
(201, 43, 4, NULL, 'literal', '', 'organisateur1', NULL, 1),
(202, 43, 1, NULL, 'literal', '', 'organisateur1', NULL, 1),
(203, 44, 10, NULL, 'literal', '', '2', NULL, 1),
(204, 44, 4, NULL, 'literal', '', 'organisateur2', NULL, 1),
(205, 44, 1, NULL, 'literal', '', 'organisateur2', NULL, 1),
(206, 45, 10, NULL, 'literal', '', '3', NULL, 1),
(207, 45, 4, NULL, 'literal', '', 'organisateur3', NULL, 1),
(208, 45, 1, NULL, 'literal', '', 'organisateur3', NULL, 1),
(209, 46, 10, NULL, 'literal', '', '4', NULL, 1),
(210, 46, 4, NULL, 'literal', '', 'organisateur4', NULL, 1),
(211, 46, 1, NULL, 'literal', '', 'organisateur4', NULL, 1),
(212, 47, 10, NULL, 'literal', '', '5', NULL, 1),
(213, 47, 4, NULL, 'literal', '', 'organisateur5', NULL, 1),
(214, 47, 1, NULL, 'literal', '', 'organisateur5', NULL, 1),
(215, 48, 10, NULL, 'literal', '', '6', NULL, 1),
(216, 48, 4, NULL, 'literal', '', 'organisateur6', NULL, 1),
(217, 48, 1, NULL, 'literal', '', 'organisateur6', NULL, 1),
(218, 49, 10, NULL, 'literal', '', '1', NULL, 1),
(219, 49, 1, NULL, 'literal', '', 'stade1', NULL, 1),
(220, 49, 4, NULL, 'literal', '', 'stade1', NULL, 1),
(221, 50, 10, NULL, 'literal', '', '2', NULL, 1),
(222, 50, 1, NULL, 'literal', '', 'stade2', NULL, 1),
(223, 50, 4, NULL, 'literal', '', 'stade2', NULL, 1),
(224, 51, 10, NULL, 'literal', '', '3', NULL, 1),
(225, 51, 1, NULL, 'literal', '', 'stade3', NULL, 1),
(226, 51, 4, NULL, 'literal', '', 'stade3', NULL, 1),
(227, 52, 10, NULL, 'literal', '', '4', NULL, 1),
(228, 52, 1, NULL, 'literal', '', 'stade4', NULL, 1),
(229, 52, 4, NULL, 'literal', '', 'stade4', NULL, 1),
(230, 53, 10, NULL, 'literal', '', '5', NULL, 1),
(231, 53, 1, NULL, 'literal', '', 'stade5', NULL, 1),
(232, 53, 4, NULL, 'literal', '', 'stade5', NULL, 1),
(233, 54, 10, NULL, 'literal', '', '6', NULL, 1),
(234, 54, 1, NULL, 'literal', '', 'stade6', NULL, 1),
(235, 54, 4, NULL, 'literal', '', 'stade6', NULL, 1),
(236, 55, 10, NULL, 'literal', '', '1', NULL, 1),
(237, 55, 1, NULL, 'literal', '', 'visiteur1', NULL, 1),
(238, 55, 4, NULL, 'literal', '', 'visiteur1', NULL, 1),
(239, 56, 10, NULL, 'literal', '', '2', NULL, 1),
(240, 56, 1, NULL, 'literal', '', 'visiteur2', NULL, 1),
(241, 56, 4, NULL, 'literal', '', 'visiteur2', NULL, 1),
(242, 57, 10, NULL, 'literal', '', '3', NULL, 1),
(243, 57, 1, NULL, 'literal', '', 'visiteur3', NULL, 1),
(244, 57, 4, NULL, 'literal', '', 'visiteur3', NULL, 1),
(245, 58, 10, NULL, 'literal', '', '4', NULL, 1),
(246, 58, 1, NULL, 'literal', '', 'visiteur4', NULL, 1),
(247, 58, 4, NULL, 'literal', '', 'visiteur4', NULL, 1),
(248, 59, 10, NULL, 'literal', '', '5', NULL, 1),
(249, 59, 1, NULL, 'literal', '', 'visiteur5', NULL, 1),
(250, 59, 4, NULL, 'literal', '', 'visiteur5', NULL, 1),
(251, 60, 10, NULL, 'literal', '', '6', NULL, 1),
(252, 60, 1, NULL, 'literal', '', 'visiteur6', NULL, 1),
(253, 60, 4, NULL, 'literal', '', 'visiteur6', NULL, 1);

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
(5, 1, 'http://www.w3.org', '/ns/ui#size', 'size', ''),
(6, 1, 'http://', 'qb4olap.ttl#LevelAttribute', 'level', '');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `property`
--
ALTER TABLE `property`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=225;

--
-- AUTO_INCREMENT pour la table `resource`
--
ALTER TABLE `resource`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT pour la table `resource_class`
--
ALTER TABLE `resource_class`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=120;

--
-- AUTO_INCREMENT pour la table `resource_template`
--
ALTER TABLE `resource_template`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pour la table `resource_template_property`
--
ALTER TABLE `resource_template_property`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT pour la table `site`
--
ALTER TABLE `site`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `site_page_block`
--
ALTER TABLE `site_page_block`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `site_permission`
--
ALTER TABLE `site_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `value`
--
ALTER TABLE `value`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=254;

--
-- AUTO_INCREMENT pour la table `vocabulary`
--
ALTER TABLE `vocabulary`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

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

