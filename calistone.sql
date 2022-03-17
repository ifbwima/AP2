-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Client :  localhost
-- Généré le :  Jeu 17 Mars 2022 à 08:50
-- Version du serveur :  5.6.20-log
-- Version de PHP :  5.4.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données :  `calistone`
--

-- --------------------------------------------------------

--
-- Structure de la table `actualite`
--

CREATE TABLE IF NOT EXISTS `actualite` (
  `numA` int(11) NOT NULL,
  `dateA` date DEFAULT NULL,
  `titreA` varchar(100) DEFAULT NULL,
  `noteA` varchar(3000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `actualite`
--

INSERT INTO `actualite` (`numA`, `dateA`, `titreA`, `noteA`) VALUES
(1, '2021-04-05', 'calistone vient d''etre creer!', 'bienvenue sur le site calistone, catalogue de carte du mode de jeu champ de bataille d''hearthstone'),
(2, '2021-04-20', 'aide', 'Hearthstone est un jeu de carte stratégique, ce site est un catalogue du mode champs de bataille dans lequel on achète des serviteurs pour fortifier sa défense et survivre face à 7 autres joueur.\r\n\r\nLorsque vous achetez 3 mêmes serviteurs, les fusionne pour en avoir un doré.\r\nUn serviteur coute 3 pièces d''or et se revend pour 1\r\nIl n''y a que 7 emplacement pour placer ces serviteurs mais vous pouvez en avoir 10 dans votre main (donc non actif).\r\n\r\ncri de guerre : effectue une action quand il est joué.\r\nrâle d''agonie : fait quelque chose à sa mort.\r\nprovocation : l''adversaire est obligé de frapper ce serviteur.\r\nréincarnation : le serviteur est ressuscité avec 1pv à sa première mort.\r\ntoxicité : les serviteurs touchés par celui ci meurt peu importe leur nombre de pv.\r\nbouclier divin : la première fois que ce serviteur subit des dégâts, il les ignore.\r\nfurie des vents : ce serviteur peut attaquer 2 fois.\r\nmagnétisme : jouez ce serviteur à gauche d''un Meca et ils fusionneront.\r\nfrénésie : si ce serviteur survit la première fois qu''il subit des dégâts, déclenche un effet.\r\nbrutalité : si vous infligés un surplus de dégâts, déclenche un effet.');

-- --------------------------------------------------------

--
-- Structure de la table `aimer`
--

CREATE TABLE IF NOT EXISTS `aimer` (
  `idU` int(11) NOT NULL,
  `nomP` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `aimer`
--

INSERT INTO `aimer` (`idU`, `nomP`) VALUES
(1, 'Acolyte de C’Thun'),
(1, 'kalecgos, aspect des arcanes'),
(1, 'massacreuse croc-radieux');

-- --------------------------------------------------------

--
-- Structure de la table `concerner`
--

CREATE TABLE IF NOT EXISTS `concerner` (
  `numM` int(11) NOT NULL,
  `nomP` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `concerner`
--

INSERT INTO `concerner` (`numM`, `nomP`) VALUES
(1, 'amalgadon');

-- --------------------------------------------------------

--
-- Structure de la table `espece`
--

CREATE TABLE IF NOT EXISTS `espece` (
  `nomE` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `espece`
--

INSERT INTO `espece` (`nomE`) VALUES
('autre'),
('bête'),
('démon'),
('dragon'),
('élémentaire'),
('méca'),
('murloc'),
('pirate'),
('tout');

-- --------------------------------------------------------

--
-- Structure de la table `maj`
--

CREATE TABLE IF NOT EXISTS `maj` (
  `numM` int(11) NOT NULL,
  `dateM` date DEFAULT NULL,
  `noteM` varchar(1000) DEFAULT NULL,
  `numA` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `maj`
--

INSERT INTO `maj` (`numM`, `dateM`, `noteM`, `numA`) VALUES
(1, '0000-00-00', 'amalgadon est instancier', 1);

-- --------------------------------------------------------

--
-- Structure de la table `personnage`
--

CREATE TABLE IF NOT EXISTS `personnage` (
  `nomP` varchar(50) NOT NULL,
  `chemin` varchar(100) DEFAULT NULL,
  `niveautaverneS` int(11) DEFAULT NULL,
  `pvS` int(11) DEFAULT NULL,
  `attaqueS` int(11) DEFAULT NULL,
  `pouvoirH` varchar(1000) DEFAULT NULL,
  `nomE` varchar(50) DEFAULT NULL,
  `nomT` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `personnage`
--

INSERT INTO `personnage` (`nomP`, `chemin`, `niveautaverneS`, `pvS`, `attaqueS`, `pouvoirH`, `nomE`, `nomT`) VALUES
('a. f. kah', 'afkah', NULL, NULL, NULL, 'Pouvoir héroïque passif Vous passez vos deux premiers tours mais débutez avec deux serviteurs de niveau de taverne 3.', NULL, 'normal'),
('Acolyte de C’Thun', 'acolyte', 1, 2, 2, NULL, 'autre', 'normal'),
('aile de mort', 'aile de mort', NULL, NULL, NULL, 'Pouvoir héroïque passif Tous les serviteurs ont +2 ATQ.', NULL, 'normal'),
('aileron-toxique', 'aileron', 4, 2, 1, NULL, 'murloc', 'normal'),
('al''akir', 'alakir', NULL, NULL, NULL, 'Pouvoir héroïque passif Début du combat : confère à votre serviteur le plus à gauche Furie des vents, Bouclier divin et Provocation.', NULL, 'chaman'),
('alexstrasza', 'alexstrasza', NULL, NULL, NULL, 'Pouvoir héroïque passif Une fois que vous avez amélioré la taverne de Bob au niveau 5, découvre deux Dragons.', NULL, 'normal'),
('amalgadon', 'amalgadon', 6, 6, 6, NULL, 'tout', 'normal'),
('amiral de l''effroi eliza', 'amiral', 6, 7, 6, NULL, 'pirate', 'normal'),
('anomalie actualisante', 'anomalie', 1, 3, 1, NULL, 'élémentaire', 'normal'),
('apprentie de kangor', 'kangor', 6, 8, 4, NULL, 'autre', 'normal'),
('ara monstrueux', 'ara', 3, 3, 4, NULL, 'bête', 'normal'),
('aranna cherchétoile', 'aranna', NULL, NULL, NULL, 'Pouvoir héroïque passif Une fois que vous avez actualisé 5 fois, Bob propose toujours 7 serviteurs.', NULL, 'normal'),
('assistant arcanique', 'assistant', 3, 3, 3, NULL, 'élémentaire', 'normal'),
('baron vaillefendre', 'vaillfendre', 5, 7, 1, NULL, 'autre', 'normal'),
('baz''hial la liche', 'bazhial', NULL, NULL, NULL, 'Pouvoir héroïque Subit 2 points de dégâts. Ajoute une pièce d’or dans votre main.', NULL, 'normal'),
('boagnarok', 'boa', 6, 7, 7, NULL, 'bête', 'prêtre'),
('bolvar sang-de-feu', 'bolvar', 4, 7, 1, NULL, 'autre', 'paladin'),
('bondisseur dent-de-métal', 'bondisseur', 2, 3, 3, NULL, 'méca', 'chasseur'),
('brann barbe-de-bronze', 'brann', 5, 4, 2, NULL, 'autre', 'normal'),
('bras de l''empire', 'bras', 3, 5, 4, NULL, 'autre', 'normal'),
('brik-à-bot', 'brikabot', 4, 5, 1, NULL, 'méca', 'normal'),
('brise-siège', 'brise-siege', 4, 8, 5, NULL, 'démon', 'démoniste'),
('c''thun', 'cthun', NULL, NULL, NULL, 'Pouvoir héroïque À la fin du tour, donne +1/+1 à un serviteur allié. Se répète x fois. (S’améliore après chaque utilisation.)', NULL, 'normal'),
('canonnier de la voile sanglante', 'canonnier', 3, 3, 4, NULL, 'pirate', 'normal'),
('cap''taine céleste kragg', 'kragg', NULL, NULL, NULL, 'Pouvoir héroïque Vous gagnez (pièce,pièces) d’or pendant ce tour. Augmente à chaque tour. (Une fois par partie.)', NULL, 'normal'),
('cap''taine larrrdeur', 'larrrdeur', 5, 6, 6, NULL, 'pirate', 'normal'),
('capitaine des mers du sud', 'capitaine', 2, 3, 3, NULL, 'pirate', 'normal'),
('capitaine eudora', 'eudora', NULL, NULL, NULL, 'Pouvoir héroïque Creusez pour obtenir un serviteur doré !(5 fouilles restantes)', NULL, 'normal'),
('capitaine grondéventre', 'capitaine-grondeventre', 4, 5, 4, NULL, 'pirate', 'normal'),
('carniflore', 'carniflore', NULL, NULL, NULL, 'Pouvoir héroïque Votre prochain Cri de guerre pendant ce tour se déclenche deux fois.', NULL, 'normal'),
('chambella, executus', 'chambellan', 4, 3, 6, NULL, 'autre', 'normal'),
('champion d''y''shaarj', 'champion', 4, 4, 4, NULL, 'autre', 'normal'),
('chasse-marée murloc', 'chasse-marree', 1, 1, 2, NULL, 'murloc', 'normal'),
('chasseur rochecave', 'chasseur', 1, 3, 2, NULL, 'murloc', 'normal'),
('chat de gouttière', 'chat', 1, 1, 1, NULL, 'bête', 'chasseur'),
('chef de guerre murloc', 'chef', 2, 3, 3, NULL, 'murloc', 'normal'),
('chef de meute', 'chef2', 2, 3, 2, NULL, 'autre', 'normal'),
('chef du gang des diablotins', 'chef du gang', 3, 4, 2, NULL, 'démon', 'démoniste'),
('chenvaa’la', 'chenvaala', NULL, NULL, NULL, 'Pouvoir héroïque Une fois que vous avez joué 3 Élémentaires, réduit de 3 pièces le coût de l’amélioration de la taverne de Bob.', NULL, 'mage'),
('cliquetteur perce-vrille', 'cliquetteur', 3, 5, 2, NULL, 'méca', 'guerrier'),
('cyclone crépitant', 'cyclone', 3, 1, 4, NULL, 'élémentaire', 'normal'),
('daryl le danseur', 'daryl', NULL, NULL, NULL, 'Pouvoir héroïque passif Une fois que vous avez vendu un serviteur, donne +1/+1 à un serviteur de la taverne de Bob deux fois.', NULL, 'normal'),
('déchiqueteur piloté', 'déchiqueteur', 3, 3, 4, NULL, 'méca', 'normal'),
('défenseur d''argus', 'argus', 4, 3, 2, NULL, 'autre', 'normal'),
('déflect-o-bot', 'deflecto', 3, 2, 3, NULL, 'méca', 'normal'),
('démon démesuré', 'demon', 4, 4, 4, NULL, 'démon', 'normal'),
('dévoreur d''âmes', 'devoreur', 3, 3, 3, NULL, 'démon', 'normal'),
('dinodompteur brann', 'brann', NULL, NULL, NULL, 'Pouvoir héroïque Actualise la taverne de Bob avec des serviteurs dotés de Cri de guerre.', NULL, 'chasseur'),
('dragon infâlémique', 'dragon maudit', 3, 4, 4, NULL, 'dragon', 'normal'),
('dragonnet rouge', 'dragonnet', 1, 2, 1, NULL, 'dragon', 'normal'),
('edwin vancleed', 'edwin', NULL, NULL, NULL, 'Pouvoir héroïque Donne +1/+1 à un serviteur pour chaque serviteur que vous avez acheté pendant ce tour.', NULL, 'voleur'),
('élémenplus', 'elemenplus', 1, 2, 2, NULL, 'élémentaire', 'normal'),
('élémentaire de fête', 'elem-de-fete', 2, 2, 3, NULL, 'élémentaire', 'normal'),
('élémentaire de stase', 'elem-de-stase', 3, 4, 4, NULL, 'élémentaire', 'normal'),
('éléméntaire du feu de brousse', 'elem-du-feu', 4, 3, 7, NULL, 'élémentaire', 'normal'),
('élise cherchétoile', 'elise', NULL, NULL, NULL, 'Pouvoir héroïque passif quand vous ameliorez la taverne de bob, vous obtenez une carte de recrutement', NULL, 'normal'),
('émissaire du crépuscule', 'emissaire', 3, 4, 4, NULL, 'dragon', 'normal'),
('emprisonneur', 'emprisonneur', 2, 3, 3, NULL, 'démon', 'normal'),
('ennuy-o-module', 'ennuy-o', 4, 4, 2, NULL, 'méca', 'paladin'),
('faucheur 4000', 'reaper', 6, 9, 6, NULL, 'méca', 'normal'),
('fongimancien flurgl', 'flurgl', NULL, NULL, NULL, 'Pouvoir héroïque passif Une fois que vous avez vendu un Murloc, ajoute un Murloc aléatoire dans la taverne de Bob.', NULL, 'normal'),
('forban', 'forban', 1, 1, 2, NULL, 'pirate', 'normal'),
('forgeronne des tarides', 'forgeronne', 3, 5, 3, NULL, 'autre', 'normal'),
('gaillarde des mers du sud', 'gaillarde', 3, 3, 4, NULL, 'pirate', 'normal'),
('gardien de bronze', 'gardien-bronze', 3, 1, 2, NULL, 'dragon', 'normal'),
('gardien des glyphes', 'gardien', 2, 4, 2, NULL, 'dragon', 'mage'),
('gardienne d''antan', 'gardienne', 3, 3, 3, NULL, 'autre', 'normal'),
('gardienne de la forêt omu', 'omu', NULL, NULL, NULL, 'Pouvoir héroïque passif Une fois que vous avez amélioré la taverne de Bob, vous gagnez 2 pièces d’or pendant ce tour uniquement.', NULL, 'druide'),
('gentil djinn', 'gentil-djinn', 6, 5, 4, NULL, 'élémentaire', 'normal'),
('gentille grand-mère', 'grand-mere', 2, 1, 1, NULL, 'bête', 'chasseur'),
('george le déchu', 'george', NULL, NULL, NULL, 'Pouvoir héroïque Confère Bouclier divin à un serviteur allié.', NULL, 'paladin'),
('goldrinn, le grand loup', 'goldrinn', 6, 4, 4, NULL, 'bête', 'normal'),
('golem des moissons', 'golem', 2, 3, 2, NULL, 'méca', 'normal'),
('goliath brisemer', 'goliath', 5, 7, 6, NULL, 'pirate', 'normal'),
('goule instable', 'goule', 2, 3, 1, NULL, 'autre', 'normal'),
('grande crinière des savanes', 'savanes', 4, 5, 6, NULL, 'bête', 'chasseur'),
('grisebranche', 'grisebranche', NULL, NULL, NULL, 'Pouvoir héroïque passif Donne +1/+2 et confère Provocation aux serviteurs que vous invoquez en combat.', NULL, 'druide'),
('gro''boum', 'bombe', 2, 2, 2, NULL, 'méca', 'normal'),
('guetteur primaileron', 'guetteur', 4, 2, 3, NULL, 'murloc', 'normal'),
('habitué sans-visage', 'habitue', 5, 4, 4, NULL, 'autre', 'normal'),
('héraut de la flamme', 'heraut', 4, 6, 5, NULL, 'dragon', 'guerrier'),
('héraut qiraji', 'qiraji', 4, 5, 5, NULL, 'autre', 'normal'),
('héroïne altruiste', 'heroine', 2, 1, 2, NULL, 'autre', 'paladin'),
('homoncule sans-gêne', 'homoncule', 1, 4, 2, NULL, 'démon', 'démoniste'),
('hydre des cavernes', 'hydre', 4, 4, 2, NULL, 'bête', 'chasseur'),
('hyène charognarde', 'hyene', 1, 2, 2, NULL, 'bête', 'chasseur'),
('illidan hurlorage', 'illidan', NULL, NULL, NULL, 'Pouvoir héroïque passif Début du combat : vos serviteurs les plus à gauche et à droite attaquent immédiatement.', NULL, 'chasseur de démons'),
('jandice barov', 'jandice', NULL, NULL, NULL, 'Échange un serviteur allié non doré contre un serviteur aléatoire de la taverne de Bob.', NULL, 'mage'),
('jongleur d''âmes', 'jongleur', 3, 3, 3, NULL, 'autre', 'démoniste'),
('kael''thas haut-soleil', 'kaelthas', NULL, NULL, NULL, 'Pouvoir héroïque passif Chaque fois que vous achetez trois serviteurs, le troisième gagne +2/+2.', NULL, 'normal'),
('kalecgos, aspect des arcanes', 'kalecgos', 6, 12, 4, NULL, 'dragon', 'normal'),
('khadgar', 'khadgar', 3, 2, 2, NULL, 'autre', 'normal'),
('le clan des rats', 'clan-des-rats', 3, 2, 2, NULL, 'bête', 'chasseur'),
('le conservateur', 'conservateur', NULL, NULL, NULL, 'Pouvoir héroïque passif Commence la partie avec un amalgame 1/2 qui est de tous les types.', NULL, 'normal'),
('le grand akazamzarak', 'akazamzarak', NULL, NULL, NULL, 'Pouvoir héroïque Découvre un Secret. Le place sur le champ de bataille.', NULL, 'mage'),
('le recousu', 'recousu', NULL, NULL, NULL, 'Pouvoir héroïque passif Commence la partie avec 55 PV au lieu de 40.', NULL, 'démoniste'),
('le roi des rats', 'roidesrats', NULL, NULL, NULL, 'Pouvoir héroïque passif Chaque fois que vous recrutez une Bête, lui donne +2/+2. Change de type à chaque tour.', NULL, 'normal'),
('le roi-liche', 'roiliche', NULL, NULL, NULL, 'Pouvoir héroïque Confère Réincarnation à un serviteur allié pour le prochain combat uniquement.', NULL, 'normal'),
('le tranche-les-vagues', 'bateau', 6, 4, 6, NULL, 'autre', 'normal'),
('lieutenant draconide', 'lieutenant', 1, 3, 2, NULL, 'dragon', 'normal'),
('lieutenant garr', 'garr', 6, 1, 5, NULL, 'élémentaire', 'normal'),
('loup contaminé', 'loup', 3, 3, 3, NULL, 'bête', 'chasseur'),
('m. bigglesworth', 'chat', NULL, NULL, NULL, 'Pouvoir héroïque passif Quand un joueur est vaincu, découvre un serviteur de sa troupe de guerre. Il garde tous ses enchantements.', NULL, 'normal'),
('maexxna', 'maexxna', 6, 8, 2, NULL, 'bête', 'normal'),
('maiev chantelombre', 'maiev', NULL, NULL, NULL, 'Pouvoir héroïque Fait entrer un serviteur de la taverne de Bob en sommeil. Après 2 tours, vous l’obtenez avec +1 ATQ.', NULL, 'voleur'),
('maître de guerre annihiléen', 'maitre', 5, 1, 3, NULL, 'démon', 'normal'),
('maître-chien', 'maitre-chien', 3, 3, 4, NULL, 'autre', 'chasseur'),
('mal''ganis', 'mal''ganis', 5, 7, 9, NULL, 'démon', 'démoniste'),
('malygos', 'malygos', NULL, NULL, NULL, 'Pouvoir héroïque Remplace un serviteur par un autre serviteur aléatoire ayant le même niveau de taverne.', NULL, 'normal'),
('maman des diablotins', 'mama', 6, 10, 6, NULL, 'démon', 'démoniste'),
('maman ourse', 'maman-ours', 5, 4, 4, NULL, 'bête', 'normal'),
('mande-flots murloc', 'mande-flots', 1, 2, 1, NULL, 'murloc', 'normal'),
('massacreur drakônide', 'massacreur', 4, 6, 3, NULL, 'dragon', 'normal'),
('massacreuse croc-radieux', 'massacreuse', 5, 2, 2, NULL, 'autre', 'normal'),
('matrone de la piste', 'matrone', 4, 4, 6, NULL, 'démon', 'démoniste'),
('mécanoeuf', 'mecaoeuf', 4, 5, 0, NULL, 'méca', 'paladin'),
('menace répliquante', 'menace', 3, 1, 3, NULL, 'méca', 'normal'),
('micro-machine', 'micro-machine', 1, 2, 1, NULL, 'méca', 'normal'),
('micromomie', 'micromomie', 1, 2, 1, NULL, 'méca', 'paladin'),
('millhouse tempête-de-mana', 'millhouse', NULL, NULL, NULL, 'Pouvoir héroïque passif Les serviteurs coûtent 2 d’or. Actualiser coûte 2 d’or. Les niveaux de taverne coûtent 1 d’or de plus.', NULL, 'normal'),
('millificent tempête-de-mana', 'millificent', NULL, NULL, NULL, 'Pouvoir héroïque passif Donne +1/+1 aux Méca dans la taverne de Bob.', NULL, 'normal'),
('mini rag', 'mini rag', 6, 4, 4, NULL, 'élémentaire', 'normal'),
('mousse du pont', 'mousse', 1, 2, 2, NULL, 'pirate', 'normal'),
('murozond', 'murozond', 5, 5, 5, NULL, 'dragon', 'normal'),
('mythrax le disloqueur', 'mythrax', 5, 4, 4, NULL, 'autre', 'normal'),
('n''zoth', 'nzoth', NULL, NULL, NULL, 'Pouvoir héroïque passif Commence la partie avec un poisson 1/1 qui gagne tous vos Râles d’agonie en combat.', NULL, 'normal'),
('nadina la rouge', 'nadina', 6, 4, 7, NULL, 'autre', 'normal'),
('nat pagle, pècheur de l''extrême', 'nat-pagle', 5, 5, 8, NULL, 'pirate', 'normal'),
('naviguateur gangraileron', 'naviguateur', 3, 4, 4, NULL, 'murloc', 'normal'),
('navrecorne cuiracier', 'navrecorne', 5, 7, 7, NULL, 'bête', 'druide'),
('neunoeil le pirate', 'neunoeil', NULL, NULL, NULL, 'Pouvoir héroïque Vous obtenez un Pirate. Une fois que vous en avez recruté un, votre prochain pouvoir héroïque coûte (1) (cristal,cristaux) de moins.', NULL, 'normal'),
('nomi, cauchemar culinaire', 'nomi', 5, 4, 4, NULL, 'autre', 'normal'),
('nozdormu', 'nozdormu', NULL, NULL, NULL, 'Pouvoir héroïque passif La première actualisation de chaque tour coûte (0) (pièce,pièces) d’or.', NULL, 'normal'),
('parieuse convaincante', 'parieuse', 2, 3, 3, NULL, 'pirate', 'normal'),
('pillard dure-écaille', 'pillard-dure', 5, 3, 2, NULL, 'autre', 'druide'),
('pillard pirate', 'pillard', 3, 4, 4, NULL, 'pirate', 'voleur'),
('plaiedécaille cobalt', 'plaiedecaille', 4, 5, 5, NULL, 'dragon', 'normal'),
('prince du mal rafaam', 'rafaam', NULL, NULL, NULL, 'pouvoir héroïque lors du prochain combat, ajoute une copie non dorée du premier serviteur que vous tuez dans votre main', NULL, 'normal'),
('pyraride', 'pyraride', NULL, NULL, NULL, 'Pouvoir héroïque Donne +4 PV à un serviteur allié aléatoire.', NULL, 'normal'),
('raflelor', 'raflelor', 4, 2, 2, NULL, 'pirate', 'normal'),
('ragnars, seigneur du feu', 'ragnaros', NULL, NULL, NULL, 'Pouvoir héroïque Une fois que vous avez tué 25 serviteurs adverses, vous obtenez Sulfuras.', NULL, 'normal'),
('rakanishu', 'rakanishu', NULL, NULL, NULL, 'Pouvoir héroïque Donne à un serviteur allié des caractéristiques équivalentes à votre niveau de taverne.', NULL, 'normal'),
('rano jackson', 'reno', NULL, NULL, NULL, 'Pouvoir héroïque Transforme un serviteur allié en carte dorée. (Une fois par partie.)', NULL, 'mage'),
('régisseur du temps', 'regisseur', 2, 4, 3, NULL, 'dragon', 'normal'),
('rejeton de n''zoth', 'rejeton', 2, 2, 2, NULL, 'autre', 'normal'),
('ritualiste tourmenté', 'ritualiste', 2, 3, 2, NULL, 'autre', 'normal'),
('roche en fusion', 'roche', 2, 4, 2, NULL, 'élémentaire', 'normal'),
('roi bagargouille', 'roi', 5, 3, 6, NULL, 'murloc', 'normal'),
('roi mukla', 'mukla', NULL, NULL, NULL, 'Pouvoir héroïque Vous obtenez 2 bananes. À la fin de votre tour, en donne une à tous les autres joueurs.', NULL, 'normal'),
('rover de sécurité', 'rover', 4, 6, 2, NULL, 'méca', 'guerrier'),
('saurolisque enragé', 'saurolisque', 2, 2, 3, NULL, 'bête', 'chasseur'),
('seigneur barov', 'barov', NULL, NULL, NULL, 'Pouvoir héroïque Devinez quel joueur gagnera son prochain combat. Si vous avez vu juste, vous recevez 3 pièces d’or.', NULL, 'guerrier'),
('seigneur du vide', 'seigneur', 5, 9, 3, NULL, 'démon', 'démoniste'),
('seigneur jaraxxus', 'jaraxxus', NULL, NULL, NULL, 'Pouvoir héroïque Donne +1/+1 à vos Démons.', NULL, 'démoniste'),
('seigneur saurcroc', 'saurcroc', NULL, NULL, NULL, 'Pouvoir héroïque Donne + ATQ au prochain serviteur que vous achetez pendant ce tour. (S’améliore à chaque tour !)', NULL, 'normal'),
('sensei de fer', 'sensei', 3, 2, 2, NULL, 'méca', 'voleur'),
('sensei virmen', 'sensei-virmen', 4, 5, 4, NULL, 'autre', 'druide'),
('serviteur diabolique', 'serviteur', 1, 1, 2, NULL, 'démon', 'démoniste'),
('silas sombrelune', 'silas', NULL, NULL, NULL, 'Pouvoir héroïque passif Les tickets de Sombrelune sont à la taverne ! Obtenez-en 3 pour découvrir un serviteur de votre niveau de taverne.', NULL, 'normal'),
('sindragosa', 'sindragosa', NULL, NULL, NULL, 'Pouvoir héroïque passif À la fin de votre tour, donne +2/+1 aux serviteurs gelés.', NULL, 'normal'),
('sir finley mrrgglton', 'finley', NULL, NULL, NULL, 'pouvoir héroïque passif debut de partie: choisissez entre 3 pouvoirs héroïque aléatoire.', NULL, 'normal'),
('spore mortelle', 'spore', 5, 1, 1, NULL, 'autre', 'normal'),
('surveillant nathrezim', 'surveillant', 2, 3, 2, NULL, 'démon', 'normal'),
('tasse de la ménagerie', 'tasse', 2, 2, 2, NULL, 'autre', 'normal'),
('tempête de la taverne', 'tempete', 5, 4, 4, NULL, 'élémentaire', 'normal'),
('tess grisetête', 'tess', NULL, NULL, NULL, 'Pouvoir héroïque Actualise la taverne de Bob avec la troupe de guerre de votre dernier adversaire.', NULL, 'voleur'),
('théière de la ménagerie', 'theiere', 4, 3, 3, NULL, 'autre', 'normal'),
('tickatus', 'tickatus', NULL, NULL, NULL, 'Pouvoir héroïque passif Tous les 4 tours, découvre un prix de Sombrelune. ( (tour restant,tours restants) !)', NULL, 'démoniste'),
('tisse-colère', 'tisse-colere', 1, 3, 1, NULL, 'autre', 'normal'),
('tisse-cristal', 'tisse-cristal', 3, 4, 5, NULL, 'autre', 'démoniste'),
('toki l''infinie', 'toki', NULL, NULL, NULL, 'Pouvoir héroïque Actualise la taverne de Bob. Comprend un serviteur de niveau de taverne supérieur.', NULL, 'normal'),
('tranchetripe l''indompté', 'tranchetripe', 5, 4, 2, NULL, 'dragon', 'normal'),
('trotte-bougie cire-pilleur', 'trotte-bougie', 2, 3, 1, NULL, 'autre', 'normal'),
('vieux déchiqueteur de sneed', 'sneed', 5, 7, 5, NULL, 'méca', 'normal'),
('vieux troubloeil', 'troubloeil', 2, 4, 2, NULL, 'murloc', 'normal'),
('voyant froide-lumiere', 'voyant', 3, 3, 2, NULL, 'murloc', 'normal'),
('y''shaarj', 'yshaarj', NULL, NULL, NULL, 'Pouvoir héroïque Début du combat : invoque un serviteur de votre niveau de taverne. En ajoute une copie dans votre main.', NULL, 'normal'),
('yo-oh-ogre', 'yo-oh', 2, 6, 2, NULL, 'pirate', 'normal'),
('yogg saron, la fin de l''espoir', 'yogg', NULL, NULL, NULL, 'Pouvoir héroïque Ajoute un serviteur aléatoire de la taverne de Bob dans votre main et lui donne +1/+1.', NULL, 'normal'),
('ysera', 'ysera', NULL, NULL, NULL, 'Pouvoir héroïque passif Bob propose toujours un Dragon supplémentaire chaque fois que la taverne est actualisée.', NULL, 'normal'),
('zapp mèche-sournoise', 'zapp', 6, 10, 7, NULL, 'autre', 'normal'),
('zéphrys le grand', 'zephrys', NULL, NULL, NULL, 'Pouvoir héroïque Si vous avez deux copies d’un serviteur, trouve la troisième. ( (souhait restant,souhaits restants) !)', NULL, 'mage');

-- --------------------------------------------------------

--
-- Structure de la table `type`
--

CREATE TABLE IF NOT EXISTS `type` (
  `nomT` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `type`
--

INSERT INTO `type` (`nomT`) VALUES
('chaman'),
('chasseur'),
('chasseur de démons'),
('démoniste'),
('druide'),
('guerrier'),
('mage'),
('normal'),
('paladin'),
('prêtre'),
('voleur');

-- --------------------------------------------------------

--
-- Structure de la table `utilisateur`
--

CREATE TABLE IF NOT EXISTS `utilisateur` (
  `idU` int(11) NOT NULL,
  `nomU` varchar(100) DEFAULT NULL,
  `prenomU` varchar(100) DEFAULT NULL,
  `mailU` varchar(100) DEFAULT NULL,
  `mdpU` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `utilisateur`
--

INSERT INTO `utilisateur` (`idU`, `nomU`, `prenomU`, `mailU`, `mdpU`) VALUES
(1, 'test', 'test', 'test@gmail.com', 'test'),
(2, 'greneche', 'enzo', 'ifbwima', 'ifbwima'),
(3, 'gomes', 'nicolas', 'nicolas.gomes@gmail.fr', 'nicolas'),
(4, 'jossant', 'jerome', 'jerome.jossant@gmail.fr', 'jerome');

--
-- Index pour les tables exportées
--

--
-- Index pour la table `actualite`
--
ALTER TABLE `actualite`
 ADD PRIMARY KEY (`numA`);

--
-- Index pour la table `aimer`
--
ALTER TABLE `aimer`
 ADD PRIMARY KEY (`idU`,`nomP`), ADD KEY `fk2_nomP` (`nomP`);

--
-- Index pour la table `concerner`
--
ALTER TABLE `concerner`
 ADD PRIMARY KEY (`numM`,`nomP`), ADD KEY `fk_nomP` (`nomP`);

--
-- Index pour la table `espece`
--
ALTER TABLE `espece`
 ADD PRIMARY KEY (`nomE`);

--
-- Index pour la table `maj`
--
ALTER TABLE `maj`
 ADD PRIMARY KEY (`numM`), ADD KEY `fk_numA` (`numA`);

--
-- Index pour la table `personnage`
--
ALTER TABLE `personnage`
 ADD PRIMARY KEY (`nomP`), ADD KEY `fk_nomE` (`nomE`), ADD KEY `fk_nomT` (`nomT`);

--
-- Index pour la table `type`
--
ALTER TABLE `type`
 ADD PRIMARY KEY (`nomT`);

--
-- Index pour la table `utilisateur`
--
ALTER TABLE `utilisateur`
 ADD PRIMARY KEY (`idU`);

--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `aimer`
--
ALTER TABLE `aimer`
ADD CONSTRAINT `fk2_nomP` FOREIGN KEY (`nomP`) REFERENCES `personnage` (`nomP`),
ADD CONSTRAINT `fk_idU` FOREIGN KEY (`idU`) REFERENCES `utilisateur` (`idU`);

--
-- Contraintes pour la table `concerner`
--
ALTER TABLE `concerner`
ADD CONSTRAINT `fk_nomP` FOREIGN KEY (`nomP`) REFERENCES `personnage` (`nomP`),
ADD CONSTRAINT `fk_numM` FOREIGN KEY (`numM`) REFERENCES `maj` (`numM`);

--
-- Contraintes pour la table `maj`
--
ALTER TABLE `maj`
ADD CONSTRAINT `fk_numA` FOREIGN KEY (`numA`) REFERENCES `actualite` (`numA`);

--
-- Contraintes pour la table `personnage`
--
ALTER TABLE `personnage`
ADD CONSTRAINT `fk_nomE` FOREIGN KEY (`nomE`) REFERENCES `espece` (`nomE`),
ADD CONSTRAINT `fk_nomT` FOREIGN KEY (`nomT`) REFERENCES `type` (`nomT`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
