-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  ven. 20 déc. 2019 à 22:18
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
-- Base de données :  `annonceo`
--
CREATE DATABASE IF NOT EXISTS `annonceo` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `annonceo`;

-- --------------------------------------------------------

--
-- Structure de la table `annonce`
--

DROP TABLE IF EXISTS `annonce`;
CREATE TABLE IF NOT EXISTS `annonce` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `commentaire_id` int(11) DEFAULT NULL,
  `id_user_id` int(11) NOT NULL,
  `id_photo_id` int(11) DEFAULT NULL,
  `id_categorie_id` int(11) NOT NULL,
  `titre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description_courte` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description_longue` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `prix` double NOT NULL,
  `photo` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pays` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ville` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `adresse` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cp` int(11) NOT NULL,
  `date_enregistrement` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_F65593E52E45A019` (`id_photo_id`),
  KEY `IDX_F65593E5BA9CD190` (`commentaire_id`),
  KEY `IDX_F65593E579F37AE5` (`id_user_id`),
  KEY `IDX_F65593E59F34925F` (`id_categorie_id`)
) ENGINE=InnoDB AUTO_INCREMENT=104 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `annonce`
--

INSERT INTO `annonce` (`id`, `commentaire_id`, `id_user_id`, `id_photo_id`, `id_categorie_id`, `titre`, `description_courte`, `description_longue`, `prix`, `photo`, `pays`, `ville`, `adresse`, `cp`, `date_enregistrement`) VALUES
(52, NULL, 37, 52, 33, 'Sit minima quia. Halima', 'Binet, fatigué d\'attendre l\'Hirondelle, avait définitivement avancé son repas d\'une heure, et dit avec des gestes mignons de tête, des calculs compliqués, à effrayer Binet lui-même. Poli jusqu\'à.', 'Vero sit qui occaecati ex quas tempora quia. Et sunt quia ut aut a. Autem eaque corrupti animi mollitia totam consequatur consequatur qui.', 564.36679, 'https://lorempixel.com/600/600/?88265', 'Papouasie-Nouvelle-Guinée', 'Nauru', '783, chemin Geneviève Rossi00 737 Launay-sur-Mer', 1, '2019-12-17 02:30:02'),
(53, NULL, 45, 53, 36, 'Id voluptas eos.', 'Quelqu\'un, sans ouvrir, lui cria le colonel. Par file à gauche! Et, après, un nécessaire d\'ivoire, avec un escalier droit, à balustres de bois, qui conduisait au bord du chemin, devant la spirale.', 'Autem non eaque reiciendis labore est qui voluptate. Porro cum quia eius cupiditate.', 755.21058, 'https://lorempixel.com/600/600/?56925', 'Belgique', 'Belize', '82, boulevard Masson\n72 274 Guillon', 1, '2019-02-14 15:44:25'),
(54, NULL, 41, 54, 36, 'Tempora id et et ut.', 'Comment? -- Oh! ce n\'est beaucoup d\'humeurs froides, et qui plus épaisses dans le jardin en antipathie, et la serviette nouée dans le mur. Au petit jour, madame Bovary quatre mille francs.» Et même.', 'Facilis id harum sit repellendus totam. Aut esse voluptatibus nobis necessitatibus earum. Ut iure voluptatem ipsum dignissimos aliquid cupiditate aut odit.', 601.96854, 'https://lorempixel.com/600/600/?55105', 'Pakistan', 'Suriname', '88, avenue Charlotte Marie\n20 183 Barredan', 1, '2019-04-19 18:16:58'),
(55, NULL, 45, 55, 34, 'Aut et eos.', 'Cours, trotta doucement, au milieu un cadran solaire en ardoise, sur un pivot, et prit sur la commode, une bouteille de cidre tout exprès, avait retiré la clef et poussa le ressort. Toutes les.', 'Dolores eius quia possimus reprehenderit. Est fugiat voluptates laboriosam rem voluptates nobis est. Rerum necessitatibus est debitis eum quisquam qui.', 642.53313, 'https://lorempixel.com/600/600/?54756', 'Haïti', 'Hong Kong', '800, place Bouchet\n41305 Boulay', 3, '2019-05-23 10:55:08'),
(56, NULL, 43, 56, 40, 'Quas porro animi.', 'Madame dans sa chambre, était à la mare. De temps à autre; mais, au bruit de voix mélancolique: -- Ah! pas de loup le perron qui conduisait au corridor pavé de dalles poudreuses où s\'ouvraient.', 'Error officia ea quos explicabo reiciendis quia officia. Ex doloribus repudiandae esse eum veritatis explicabo architecto. Error alias et rerum dolores dolorum sapiente blanditiis et.', 56.16589, 'https://lorempixel.com/600/600/?28517', 'Nigeria', 'Corée, Sud', '57, boulevard de Roche\n62883 BernierVille', 5, '2019-10-12 00:15:59'),
(57, NULL, 38, 57, 37, 'Odit cum sapiente.', 'Emma débouclait ses socques, mettait d\'autres gants, rajustait son châle, et posait à l\'écart, sous le banc, de façon à frapper contre la vitre. Il sortit. -- La clef! celle d\'en haut, le paysage.', 'Rerum perspiciatis aliquid dolorum veniam minima ut autem. Nihil est soluta non id fugit quam. Sunt qui enim tempore.', 544.5613, 'https://lorempixel.com/600/600/?66121', 'Mozambique', 'Falkland (Île)', '795, impasse Lamy\n30 624 Vaillant', 2, '2019-02-25 21:08:17'),
(58, NULL, 38, 58, 39, 'Sunt possimus.', 'Emma d\'abord sentit un grand dîner; le curé s\'y trouvait; on s\'échauffa. M. Homais, pharmacien, avait envoyé à sa maîtresse. C\'était une de ces lamentations mélodieuses qui se confondit avec la.', 'Qui quam consequatur amet magni voluptas numquam. Qui omnis accusamus dolores odit voluptatem. Sit atque eveniet incidunt reiciendis quae aperiam sint.', 458.68325, 'https://lorempixel.com/600/600/?71322', 'Macau', 'Cap Vert', '871, impasse de Chretien\n47434 Paris-sur-Hamel', 1, '2019-03-05 14:26:48'),
(59, NULL, 42, 59, 34, 'Voluptatem voluptas.', 'Poli jusqu\'à l\'obséquiosité, il se pencha vers son cou et la Marquise. Emma se jeta dans le cabinet de toilette; et son cou, le col de la planche. À partir de loin sa démarche paresseuse et sa.', 'Delectus voluptate corporis iure numquam sit. Eum cupiditate iste magni amet ea. Quos facilis ratione non veniam molestiae alias aperiam molestias. Omnis numquam debitis aut doloremque eius.', 197.38481, 'https://lorempixel.com/600/600/?42625', 'Somalie', 'Nouvelle Calédonie', '547, impasse Gilles Cousin\n22213 Blanchard', 1, '2019-01-22 13:00:14'),
(60, NULL, 46, 60, 39, 'Ut inventore est.', 'Il était devant le péristyle de la Vierge, où, s\'agenouillant contre une falaise. Quelque chose d\'une rigidité monacale relevait l\'expression de sa femme d\'ailleurs étant absente. Madame Bovary, le.', 'Consequatur incidunt atque aut a nihil quia. Quidem aut ut voluptatum hic sit commodi voluptatem. Quaerat velit rerum aut praesentium.', 418.94782, 'https://lorempixel.com/600/600/?50586', 'Antilles néerlandaises', 'Mozambique', '93, chemin Maryse Pinto\n17677 Delannoy', 2, '2018-12-24 15:12:16'),
(61, NULL, 42, 61, 31, 'Optio quia enim.', 'Sa pensée, sans but d\'abord, vagabondait au hasard, prononçait les grands morceaux, il était brave homme, reprit Emma. -- Oh! ce n\'est pas la procuration? répondit-il. Ce mot lui arriva comme une.', 'Iusto tempora enim doloribus est velit. Est neque unde rerum fugit facilis qui. Eius sapiente provident quidem assumenda sit eveniet earum voluptates. Quia beatae eum aliquam.', 954.37703, 'https://lorempixel.com/600/600/?24080', 'Vietnam', 'Ethiopie', '70, boulevard Rodriguez\n67330 Hebertnec', 3, '2019-07-04 06:10:19'),
(62, NULL, 45, 62, 33, 'Maxime dicta.', 'Puis Charles, ayant fermé la porte, où seraient les orgues, se tient en arrière, Rodolphe aperçut en cet amour n\'étant pas ce qui est grand, de chérir ce qui s\'appelle dévoré de jalousie; -- et, au.', 'Assumenda aut corrupti repellendus dolorem modi. Velit quo et ut dolor eos eveniet. Enim eligendi aut rerum aut.', 500.86486, 'https://lorempixel.com/600/600/?89324', 'Guinée', 'Maurice', '935, avenue Lacombe\n10 802 Poulain', 4, '2019-08-11 12:58:51'),
(63, NULL, 42, 63, 37, 'Voluptatem neque.', 'J\'ai été malade. -- Gravement? s\'écria-t-elle. -- Eh non! c\'est exécrable! j\'ai les doigts entrelacés, -- comme si nous montions en ballon, comme si la santé d\'Emma ne s\'améliorait pas. Un soir.', 'Minima quisquam harum adipisci officiis qui ipsum. Deleniti a excepturi deserunt et. Error omnis dolorem molestias et nulla dignissimos. Autem amet ab nesciunt vel omnis eveniet enim.', 241.01175, 'https://lorempixel.com/600/600/?99294', 'Rép. Dém. du Congo', 'Arabie saoudite', '584, rue Chartier\n05913 Peron', 3, '2019-04-20 21:02:47'),
(64, NULL, 38, 64, 36, 'Aut voluptatem.', 'Te voilà! te voilà! répétait-il. Comment as-tu fait pour eux, sur la terre: -- Ils se couchaient sur l\'herbe; ils s\'embrassaient à l\'écart sous les tuiles du larmier. Au fond de son examen, dont il.', 'Numquam repellat odit error dolor illum quisquam itaque laborum. Id et sit quas voluptatum praesentium qui provident. Nihil sint consectetur eum quae. A nam in beatae officia voluptatem.', 848.89534, 'https://lorempixel.com/600/600/?82982', 'Tunisie', 'Hongrie', '62, avenue Joséphine Giraud\n63353 Weber-sur-Peron', 1, '2019-09-26 19:13:30'),
(65, NULL, 46, 65, 32, 'Necessitatibus.', 'Elle le regardait en face, passer des fantaisies. Elle s\'acheta des bottes molles, un chapeau bas de la plaque, bleuissait un peu plus calme, il reprenait espoir. Enfin, lorsque Canivet entra, il se.', 'Eveniet quos quia quae est architecto labore omnis. Repudiandae ipsam doloribus consectetur soluta et ipsum. Esse autem nihil voluptas necessitatibus nulla.', 778.18378, 'https://lorempixel.com/600/600/?76754', 'Zimbabwe', 'Albanie', '43, impasse Dufour\n02284 Bonneau-les-Bains', 3, '2019-01-28 07:37:32'),
(66, NULL, 39, 66, 31, 'Quia vel illo.', 'Au bruit de pas qui s\'approchaient. -- On m\'avait fait venir... -- Ah! tant pis! qu\'il me dise des messes. -- Quel fanatisme! exclama le pharmacien, qui venait tous les deux; c\'était comme cela chez.', 'Voluptatem ipsam a quo velit eaque corrupti voluptas eos. Consequatur amet placeat odit. Quaerat magnam libero officia neque eos ut.', 127.38569, 'https://lorempixel.com/600/600/?65526', 'Svalbard et Jan Mayen (Îles)', 'Macau', '960, rue Aimé Carpentier\n12589 Couturier-la-Forêt', 4, '2019-02-21 02:08:42'),
(67, NULL, 41, 67, 34, 'Suscipit unde autem.', 'C\'était la quatrième était celle-ci; et chacune s\'était trouvée faire dans sa chambre, se laissa donc glisser dans l\'ombre comme un automate à l\'impulsion des habitudes. Il faisait beau; on avait.', 'Molestiae totam possimus id totam placeat. Natus et sed pariatur fugiat. Quibusdam voluptas fugit deserunt repudiandae et enim rerum. Esse aut ut quia quas ab dolor veritatis.', 842.19594, 'https://lorempixel.com/600/600/?56208', 'Autriche', 'Soudan', '8, rue de Muller\n26081 Fabre', 5, '2019-01-06 02:31:01'),
(68, NULL, 45, 68, 33, 'Non vel corporis.', 'Oh! reste! reste! Mais, à la rose, et ayant bien peur de paraître ridicule, Emma voulut, avant d\'entrer, faire un procès. Il se mit à sourire, et aussitôt, pour réparer sa sottise, Léon raconta.', 'Non autem veniam doloribus iste esse quasi. Sunt atque incidunt sit saepe dolore omnis architecto. Aut distinctio eaque error sapiente deleniti qui nobis. Aut molestiae quia nemo quos consectetur.', 770.63518, 'https://lorempixel.com/600/600/?81182', 'Espagne', 'Ouzbékistan', '63, impasse Descamps\n39 543 Legrosnec', 5, '2019-05-16 16:53:33'),
(69, NULL, 39, 69, 33, 'Quae numquam.', 'C\'était un fil tendu, comme une maison basse, à toit plat, ombragée d\'un palmier, au fond de la Picardie auront remarqué sans doute, elle aura oublié mon nom? -- Mais c\'était surtout aux maladies, à.', 'Corporis dolorem illo officiis odio nam. Voluptate totam est iusto recusandae eligendi quos. Impedit neque est non unde voluptatibus aut.', 856.23002, 'https://lorempixel.com/600/600/?32244', 'République tchèque', 'Mexique', '76, rue de Lesage\n97624 Legendre', 3, '2019-06-06 07:36:02'),
(70, NULL, 44, 70, 34, 'Fugiat pariatur.', 'Vinçart (comme de juste) en avait une jolie taille et continuait à marcher à demi cachée dans une rêverie douloureuse. Elle l\'avait aimé, après tout. III Un matin, qu\'elle s\'en revenait vite.', 'Ex molestiae sed aspernatur quisquam nam quia perspiciatis vel. Reiciendis sit ab voluptatem quia ut tempora recusandae ut. Vitae ea doloribus repudiandae repellendus aperiam voluptates labore.', 218.3579, 'https://lorempixel.com/600/600/?82773', 'Zaïre', 'Jamaïque', '453, place Didier\n91408 Thomasdan', 3, '2019-06-19 04:18:13'),
(71, NULL, 40, 71, 31, 'Hic nisi quibusdam.', 'Les deux bêtes couraient. De longues fougères, au bord de l\'eau. Au bas de la pharmacie. Il avait eu, lors des grandes chaleurs, un abcès à travers son voile, étourdie, chancelante, près de la.', 'Error at consequatur eos et. Impedit ea nulla quisquam qui explicabo. Nostrum ut eos tempora voluptas facilis esse. Esse totam facere enim eos facere praesentium quia.', 129.1889, 'https://lorempixel.com/600/600/?16714', 'Italie', 'Yemen', '56, rue Normand\n18 185 Hoarau', 5, '2019-01-29 10:54:46'),
(72, NULL, 41, 72, 40, 'Et fuga ipsum in.', 'Une fascination l\'attirait. Il remontait continuellement l\'escalier. Il se torturait à découvrir par quel moyen? On aura continuellement le long du corps et son existence en sacrifices continuels?.', 'Sunt accusantium sapiente cupiditate qui porro et. Sed nesciunt et sit rerum reiciendis laborum facere. Maiores molestiae quia ut ratione.', 175.87255, 'https://lorempixel.com/600/600/?65095', 'Jordanie', 'Costa Rica', '30, avenue de Marchand\n02 299 Girard', 4, '2019-11-06 03:12:02'),
(73, NULL, 46, 73, 32, 'Sed veniam.', 'Non, je t\'en prie, j\'irai. -- Comme vous l\'avez congédié! dit-elle en se frottant les genoux et en un tel état. Secouant M. Homais ouvrit sa bourse. -- Tiens, voilà un sou, rends-moi deux liards; et.', 'Nostrum a earum excepturi quia delectus aut possimus. Expedita error voluptatem numquam ab reiciendis optio. Incidunt fuga ut fugit recusandae dolores autem deserunt beatae.', 913.02206, 'https://lorempixel.com/600/600/?12645', 'Dominique', 'Soudan', '81, impasse Lebon\n35398 Aubry', 5, '2019-10-28 23:31:53'),
(74, NULL, 37, 74, 40, 'Impedit et et ipsum.', 'Camus l\'épicier, qu\'il me laisse prendre un morceau avant de s\'en défendre; et, contemplant le jeune ménage. Un mercredi, à trois heures, M. et madame Bovary guettait sa mort, et le prêtre des yeux.', 'Sunt et qui soluta ut accusantium. Deserunt nihil et asperiores molestias. Omnis fugit officia odio molestias necessitatibus neque. Aut provident veniam eligendi blanditiis totam.', 968.95996, 'https://lorempixel.com/600/600/?99402', 'Luxembourg', 'Monaco', '70, chemin de Pichon\n02 022 LacroixBourg', 4, '2019-12-02 00:24:18'),
(75, NULL, 39, 75, 31, 'Quasi laboriosam.', 'Pourquoi? Qui t\'a retenue hier? -- J\'ai soif!... oh! j\'ai bien soif! soupira-t-elle. -- Qu\'as-tu donc? dit-elle. Et, sans écouter la mère Bovary fut obligée de les entretenir; et il ramassa un.', 'Odio rem qui perferendis deserunt et magni assumenda veritatis. Non ipsa molestiae velit eos qui in. Id et inventore minus laborum.', 528.18039, 'https://lorempixel.com/600/600/?46407', 'Oman', 'Grenade', '72, chemin Adrienne Poirier\n07433 Lefort', 1, '2019-04-11 06:04:43'),
(76, NULL, 40, 76, 36, 'Exercitationem sed.', 'Ah! qu\'elle est venue! Enfin il sortit. Alors Emma, débarrassée, poussa un cri. Hivert venait le chercher à son oreille pour ne déranger personne et toujours le souvenir de son collège, les phrases.', 'Debitis et est sed aperiam voluptatem. Voluptates id est aut quas. Alias eum est aut eius. Sint et rerum dolorem officia.', 220.6274, 'https://lorempixel.com/600/600/?15276', 'Afghanistan', 'France', '211, rue Dominique Maillard\n38 794 Morvan', 5, '2019-01-13 06:29:46'),
(77, NULL, 46, 77, 33, 'Debitis et quod.', 'Lagardy dans le jardin. Emma, tout exprès, goûta la boisson lui-même, et veilla dans la nouvelle de la domestique, lorsqu\'elle entrait pendant ces crises. -- Ce n\'est pas le battre. Elle lui apparut.', 'Iste officia aspernatur nulla ea ut animi consequuntur. Est et repellat animi praesentium harum. Vel quos qui reiciendis.', 10.37371, 'https://lorempixel.com/600/600/?26026', 'Samoa', 'Yemen', '277, impasse André Adam\n48294 Marion', 3, '2019-02-15 10:06:33'),
(78, NULL, 38, 78, 39, 'Blanditiis.', 'Elle disposa ses cheveux d\'après les recommandations du coiffeur, et elle y déposa de toute la nef pour quêter, et les rideaux de mousseline, on voyait se lever tout à coup; et comme le ciel, jaloux.', 'Error molestiae quos et aperiam sint voluptatum. Eum eum deleniti repellendus facilis. Quam et dolores velit corrupti quae.', 602.58459, 'https://lorempixel.com/600/600/?59347', 'Guam', 'Myanmar', 'boulevard Adam\n04 791 Berthelot', 4, '2018-12-26 11:57:39'),
(79, NULL, 38, 79, 35, 'Debitis ipsum.', 'Une valse aussitôt commençait, et, sur la cour, la neige sur les cartons, et le front contre la muraille une clef étiquetée capharnaüm. -- Justin! cria l\'apothicaire, qui lui emportaient l\'âme. Où.', 'Et voluptatum quo molestiae qui sed sit alias officiis. Occaecati distinctio nam id enim consequuntur. Est autem vero quia veniam.', 92.74438, 'https://lorempixel.com/600/600/?11264', 'Hong Kong', 'Laos', '6, impasse Marguerite Rousseau\n40106 Marchal', 1, '2019-02-08 08:20:58'),
(80, NULL, 37, 80, 32, 'Dolorem velit non.', 'Je vous trouve jolie comme un chaudron fêlé où nous eussions été, il nous aurait poursuivis. Il vous appelle. On vous cherche. Emma ne tarda pas à celui-là. Il aurait pu être beau, spirituel.', 'Explicabo quo molestias voluptatibus dignissimos rerum quam repellendus modi. Deleniti aut cupiditate cum velit ea.', 395.87575, 'https://lorempixel.com/600/600/?24172', 'Bosnie-Herzégovine', 'Géorgie du Sud et Sandwich du Sud (Îles)', '935, chemin Joséphine Grondin\n16881 Thomasboeuf', 5, '2019-06-20 15:14:29'),
(81, NULL, 37, 81, 40, 'Esse consequatur.', 'Léon se leva pour aller au bercement des mélodies à faire des excuses. Félicité portait maintenant les robes qu\'elle avait rêvé. VII Elle fut ingénieuse et caressante, se réjouissant intérieurement.', 'Ipsa eum aut repellat ut labore quasi suscipit. Commodi minus iste dolores. Numquam odit odio perferendis illo delectus. Dolorem ut repudiandae debitis sunt iusto ipsa.', 790.41317, 'https://lorempixel.com/600/600/?63593', 'Guadeloupe', 'Cambodge', '3, boulevard de Jacob\n65518 Michaud', 5, '2019-08-01 01:36:16'),
(82, NULL, 46, 82, 31, 'Adipisci sed.', 'Et, sur la place, où, leur montrant avec sa pommade, était retourné d\'une demi-lieue en arrière, les lèvres avancées, le cou comme quelqu\'un qui a des relations considérables, qu\'un jurisconsulte.', 'Voluptate nemo ipsum ex tempora aut expedita. Adipisci qui quis quis voluptatem dolorem et molestiae. Provident consequatur quam excepturi autem voluptas. Recusandae cum accusamus et culpa.', 479.40691, 'https://lorempixel.com/600/600/?78248', 'Égypte', 'Antigua et Barbuda', '87, chemin Buisson\n74168 Albert', 4, '2019-05-06 00:28:57'),
(83, NULL, 44, 83, 32, 'Eaque omnis.', 'Elle lui parla encore de si près, que la bonne femme ne s\'en occupe guère, dit Charles; elle aime mieux, quoiqu\'on lui recommande l\'exercice, toujours rester dans sa vie était froide comme un grand.', 'Et non ea expedita illum. Architecto soluta sed asperiores possimus enim quam. Harum natus quisquam porro voluptas non provident sint.', 246.33053, 'https://lorempixel.com/600/600/?25188', 'Jordanie', 'Bouvet (Îles)', '26, rue Marc Loiseau\n14028 PerretVille', 2, '2019-06-07 19:28:32'),
(84, NULL, 42, 84, 36, 'Excepturi eos autem.', 'Ils se promèneraient en gondole, ils se turent. Mais, à la bouche. Berthe, cependant, restait posée sur son front. Les bonnes religieuses, qui avaient adouci l\'amertume de sa cuisse. -- Il aurait.', 'Mollitia sunt sunt rerum nam totam illo facere eos. Et vel rerum facilis autem corporis hic. Et nulla nobis pariatur dolore et aspernatur. Quam quia libero est dolores.', 985.24698, 'https://lorempixel.com/600/600/?81288', 'Pakistan', 'Kirghizistan', '63, boulevard de Brun\n80168 Carre', 3, '2019-04-05 07:46:40'),
(85, NULL, 39, 85, 34, 'Possimus enim velit.', 'Ainsi, par précaution, qui donc fournit à la bataille de Montlhéry, le 16 juillet 1465. Léon, se mordant les lèvres, et un vieux volume d\'Anacharsis qui traînait dans la fraîcheur de la crème chez.', 'Sit consequatur iusto qui velit et quod mollitia. Rerum modi laborum quo et quia. Eum quia eos est molestias. Sed quos explicabo sed aperiam quidem.', 767.05879, 'https://lorempixel.com/600/600/?48791', 'Luxembourg', 'Guyane française', '75, avenue Descamps\n08 709 Simon-les-Bains', 5, '2019-04-11 22:55:14'),
(86, NULL, 38, 86, 34, 'Omnis eligendi.', 'Il ne sortait plus, ne recevait personne, refusait même d\'aller voir au théâtre les acteurs de Paris. Il ne répondit pas. Elle restait brisée, haletante, inerte, sanglotant à voix basse, d\'une voix.', 'Soluta velit voluptatem ipsum. Laudantium odio amet porro id. At rerum similique rerum dignissimos placeat et error. Tenetur dolorum quidem quod.', 484.73846, 'https://lorempixel.com/600/600/?61212', 'Pakistan', 'Guatemala', 'avenue Tristan Maillet\n59 857 Marques', 5, '2019-07-30 15:36:56'),
(87, NULL, 46, 87, 31, 'Amet et voluptatem.', 'XI Il avait des baraques de toile jaune et jeta des déchirures de papier, racornies, se balançant au rythme de l\'orchestre, elle glissait en avant, la figure vers Emma, il la regardait, c\'est sûr!.', 'Qui quidem consequuntur ut excepturi ut ducimus in. Impedit sunt ex sint quis sint nostrum sit. Sint rem animi dolorem sit. Repellendus maxime deleniti sed omnis enim quibusdam.', 866.08582, 'https://lorempixel.com/600/600/?67536', 'Ouganda', 'Vanuatu', '8, impasse de Neveu\n34 450 Legrandnec', 3, '2019-10-09 20:43:28'),
(88, NULL, 41, 88, 37, 'Similique labore ut.', 'Tellier, qui, enfin contraint de vendre, avait acheté à Quincampoix un maigre fonds d\'épicerie, où il y a... savez-vous..., plus d\'un détail... piquant, des choses... vraiment... gaillardes! Et, sur.', 'Aut quos aliquam minima provident aut hic. Iusto officiis deleniti eum ut fugiat iure nostrum. Ad est aut minus inventore vero eos. Aperiam et ab delectus nihil possimus incidunt cum.', 849.66058, 'https://lorempixel.com/600/600/?34644', 'Érythrée', 'Christmas (Île)', '43, rue Techer\n38281 Guichard', 2, '2019-09-13 18:27:25'),
(89, NULL, 43, 89, 38, 'Ut iste praesentium.', 'Il mangeait des mûres le long de son enfant. Rodolphe évitait d\'en parler; peut-être qu\'elle n\'y pensait plus. La gaieté de cette sensation pénétrait ainsi ses désirs d\'autrefois, et comme se.', 'Quis ipsa laborum accusantium ut. Omnis dolorem vitae eum qui numquam. Vero saepe sequi neque nulla quibusdam. Aut dolorem ut impedit veniam. Est beatae veritatis aut aut praesentium quos et.', 912.89251, 'https://lorempixel.com/600/600/?39969', 'Christmas (Île)', 'Nouvelle-Zélande', '77, rue Leclercq\n28 848 Moreau-la-Forêt', 1, '2019-08-18 05:50:16'),
(90, NULL, 38, 90, 36, 'Adipisci quia.', 'Soit, pour te mêler de ça, méchant mioche, que tu sois homme toi-même et que mademoiselle Rouault, élevée au couvent, chez les Ursulines, avait reçu, comme on ne vous révolte pas? Est- il un seul.', 'Provident dolores expedita sunt non eligendi ex. Porro sunt totam commodi praesentium ullam impedit laudantium. Molestias sed ipsam architecto sed quo asperiores accusamus.', 513.88818, 'https://lorempixel.com/600/600/?58772', 'Corée du Nord', 'Libye', '6, chemin de Deschamps\n87994 Fournier', 4, '2019-11-23 11:30:15'),
(91, NULL, 46, 91, 36, 'Provident atque quo.', 'On trouva même, au milieu de la haie, le curé voulut partir; les dames à la rivière. Elle coulait sans bruit, rapide et referma les yeux. Elle s\'épiait curieusement, pour discerner si elle ne.', 'Tempore cumque ducimus non consequatur quas laboriosam. Inventore doloremque ut aliquam esse. Quod modi praesentium nobis. Qui quaerat vitae rerum ut. Voluptate quaerat non ex.', 889.93234, 'https://lorempixel.com/600/600/?57718', 'Ethiopie', 'Turkménistan', '835, avenue Marcelle Moulin\n65197 Bouvierdan', 1, '2019-06-29 18:29:58'),
(92, NULL, 41, 92, 38, 'Eaque incidunt eos.', 'L\'amour, peu à peu près toutes les lois de la grosse corde qui, tombant de la journée; car Charles, en avant, se cambrait la taille. Un flot de pourpre monta vite au visage le jet tiède des saignées.', 'Voluptas distinctio eaque est in. Quod vel aut velit quibusdam et perferendis. Sed culpa totam cumque consectetur eaque corrupti corrupti nemo.', 665.52625, 'https://lorempixel.com/600/600/?42805', 'Finlande', 'Laos', '76, rue Valette\n46 871 Lemaire', 1, '2019-01-01 13:26:46'),
(93, NULL, 38, 93, 38, 'Tenetur et est aut.', 'Allons, adieu! soupira-t-il. Elle releva sa tête le plancher s\'inclinait par le menuisier, aidé du serrurier, une manière de permission qu\'elle se rétablissait. D\'abord, elle se hâta point. Chaque.', 'Cupiditate aliquam reiciendis rerum id quasi deleniti. Et perspiciatis iste similique quas. Iste non dignissimos porro dolorum qui consequuntur architecto.', 977.45017, 'https://lorempixel.com/600/600/?12717', 'Norfolk (Îles)', 'Kirghizistan', '11, place Alice Gauthier\n36 704 Regnier', 3, '2019-05-30 11:05:49'),
(94, NULL, 41, 94, 36, 'Porro rerum animi.', 'Rodolphe s\'installait là comme sur un tabouret avait devant elle les prenait, les quittait, passait à d\'autres. Elle avait pour décoration une vieille couverture de laine bleue, passait son orgue.', 'Quo dolor doloribus et velit. Sunt molestiae alias eos nemo. Adipisci quae saepe dolore consequatur rerum enim. Tenetur veritatis ipsam alias quisquam ducimus error.', 581.03268, 'https://lorempixel.com/600/600/?86572', 'Pitcairn (Îles)', 'Indonésie', '80, place Jacques Guibert\n88 327 Augerboeuf', 4, '2019-09-10 16:25:20'),
(95, NULL, 42, 95, 40, 'Ut sed voluptatem.', 'Elle les voulait splendides! et, lorsqu\'il survient une épidémie, il ne voulut consentir à laisser vendre le moindre des meubles souples, et une femme de chambre. -- De grâce, restez! je vous.', 'Alias ut omnis consequatur at nam id. Incidunt ut eos excepturi dignissimos. Molestiae facilis voluptates inventore ipsam. Cumque quia accusamus architecto a culpa autem commodi.', 786.7386, 'https://lorempixel.com/600/600/?51021', 'Qatar', 'Madagascar', '78, impasse Bodin\n12 513 Parent', 1, '2019-01-19 08:54:13'),
(96, NULL, 37, 96, 33, 'Delectus beatae.', 'Emma pourtant ne la retira pas. «Ensemble de bonnes cultures!» cria le renseignement demandé, tout en rose, depuis la mairie jusqu\'à l\'église, sombre, et attendant la clientèle. Lorsque madame.', 'Quae dignissimos ea sed incidunt qui consequatur. Nemo nesciunt cupiditate non maxime reprehenderit quae. At quis laudantium qui voluptatem non nihil voluptatibus.', 410.0756, 'https://lorempixel.com/600/600/?77891', 'Croatie', 'Azerbaïdjan', '62, boulevard Denis Rolland\n39 603 Vaillant', 1, '2019-05-11 22:04:13'),
(97, NULL, 45, 97, 38, 'Dolore beatae ut.', 'Elle voulut qu\'il se vêtît tout en continuant à balancer entre deux flambeaux d\'argent plaqué, sous des sourires. Venait ensuite la société des bonnes gens. M. Léon sortit d\'une porte cochère qui.', 'Eum at praesentium est velit sit. Harum similique vel sunt qui vitae. Incidunt praesentium iure aut cupiditate.', 302.55648, 'https://lorempixel.com/600/600/?14609', 'Tanzanie', 'Arabie saoudite', '893, place Denise Chretien\n01 337 Dijoux', 3, '2019-08-09 09:57:47'),
(98, NULL, 42, 98, 33, 'Eum facere vel.', 'Marjolaine, elle s\'éveillait, et écoutant le bruit des charrues; et elle appela Félicité. Il jeta vite autour de lui en avait prélevé deux cents, pour frais de la philosophie. Il se détachait isolée.', 'Magnam architecto corrupti assumenda sequi quam soluta. Est fugit minus est odio qui praesentium nihil. Soluta ut culpa aut omnis qui.', 475.92012, 'https://lorempixel.com/600/600/?14583', 'Belize', 'Croatie', '46, chemin Morin\n58885 Bazin-la-Forêt', 2, '2019-12-02 19:20:29'),
(99, NULL, 45, 99, 31, 'Repudiandae sint.', 'Il avait une jolie taille et continuait à marcher, les deux yeux qui vous êtes. Je dirai à mon oreille! Cependant, madame Lefrançois l\'entendit au Lion d\'or. Emma, de temps à autre, fermait.', 'Facilis labore ut nulla magni blanditiis nulla assumenda. Aperiam molestiae iste et dolores alias est veritatis alias.', 537.84606, 'https://lorempixel.com/600/600/?77486', 'Belize', 'Zambie', '132, avenue Launay\n16 182 Hardyboeuf', 5, '2019-07-06 02:57:56'),
(100, NULL, 42, 100, 40, 'Voluptatibus nam.', 'On se taisait autour de lui, car, dans son lit, et elle continuait à marcher d\'un pas lourd, examinant chaque animal, puis se consultaient à voix basse et avec un sanglot. -- Oh! oh! quant aux.', 'Modi neque voluptatibus excepturi similique libero officia et. Neque sequi deleniti unde unde error. Perspiciatis ut quaerat consequatur ipsa in. Voluptatum id occaecati hic eum sint.', 827.51785, 'https://lorempixel.com/600/600/?92052', 'Australie', 'Bosnie-Herzégovine', '35, rue Hamel\n47 777 Chauveau', 2, '2019-03-17 22:20:20');

-- --------------------------------------------------------

--
-- Structure de la table `categorie`
--

DROP TABLE IF EXISTS `categorie`;
CREATE TABLE IF NOT EXISTS `categorie` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `motscles` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `categorie`
--

INSERT INTO `categorie` (`id`, `titre`, `motscles`) VALUES
(31, 'Mais à.', ' Je sais.'),
(32, 'C\'est.', ''),
(33, 'Et, en.', ''),
(34, 'On.', ' gimenez'),
(35, 'Tostes.', ' Madame.'),
(36, '.', ' Mais le.'),
(37, 'Et moi.', ' costa'),
(38, '.', ''),
(39, 'Puis, se.', ''),
(40, 'Il était.', ' Il.');

-- --------------------------------------------------------

--
-- Structure de la table `commentaire`
--

DROP TABLE IF EXISTS `commentaire`;
CREATE TABLE IF NOT EXISTS `commentaire` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_user_id` int(11) NOT NULL,
  `id_annonce_id` int(11) NOT NULL,
  `date_enregistrement` datetime NOT NULL,
  `commentaire` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `IDX_67F068BC79F37AE5` (`id_user_id`),
  KEY `IDX_67F068BC2D8F2BF8` (`id_annonce_id`)
) ENGINE=InnoDB AUTO_INCREMENT=201 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `commentaire`
--

INSERT INTO `commentaire` (`id`, `id_user_id`, `id_annonce_id`, `date_enregistrement`, `commentaire`) VALUES
(101, 40, 80, '2019-07-29 03:20:23', 'Non sint voluptatem libero omnis et voluptas. Ipsum velit eveniet non inventore occaecati sit et iste. Veniam consequatur asperiores voluptatum.'),
(102, 37, 86, '2019-05-22 16:17:16', 'Eos sit doloribus quis sit assumenda fugit. Ut non hic ducimus ut eos voluptatibus est. Pariatur minus omnis quia voluptatem.'),
(103, 38, 61, '2019-06-28 06:58:44', 'Voluptas quibusdam labore totam. Sed quam adipisci reiciendis expedita nostrum. Dolor omnis est quibusdam aliquid nemo et. Vel dignissimos deleniti ut similique aut.'),
(104, 37, 77, '2019-04-21 14:32:28', 'Qui vero qui at sit. Laborum quasi exercitationem accusamus ut nemo. Sit corporis culpa earum ratione quis.'),
(105, 42, 56, '2019-10-24 13:14:28', 'Et repudiandae recusandae omnis natus autem. Aperiam consectetur ut eum repellendus similique laborum. Labore animi accusamus facilis autem modi cupiditate laboriosam.'),
(106, 39, 61, '2019-09-27 09:21:56', 'Est voluptatem commodi quo sapiente asperiores voluptate. Natus ut itaque dignissimos beatae. Sit sunt est nulla animi eum.'),
(107, 46, 79, '2019-05-20 03:45:20', 'Aut excepturi odit sit nostrum voluptate vel modi aliquam. Similique sit enim id laborum minima est eos. Repudiandae aut harum facere maiores blanditiis inventore qui.'),
(108, 41, 61, '2019-01-04 15:55:21', 'Et quaerat omnis et. Eum perspiciatis voluptatem occaecati. Voluptate consequatur sed dignissimos.'),
(109, 41, 73, '2019-01-24 00:05:43', 'Qui facere recusandae est repellendus vel natus distinctio. Sit consequuntur aut sapiente. Iste et aperiam veniam rerum molestiae corrupti veritatis. Et id earum voluptas fugiat sint.'),
(110, 46, 91, '2019-11-07 02:28:08', 'Reprehenderit eum voluptates esse est adipisci quidem qui. Non quia dolor enim id molestiae qui amet qui. Consequatur qui at ex magni. Tenetur est veritatis adipisci quis ut.'),
(111, 43, 78, '2019-06-06 12:15:05', 'Aperiam exercitationem commodi eius officiis sed. Iure voluptas rem amet vel impedit. Qui debitis repellendus id sit qui.'),
(112, 40, 97, '2019-04-27 12:57:27', 'Tempore perferendis qui qui sint accusantium. Incidunt non minus quae doloremque vero eligendi. Quia voluptate et vel autem.'),
(113, 42, 87, '2019-01-26 11:07:56', 'Dignissimos harum ullam eveniet sunt ipsum. Culpa praesentium quaerat vel. Nisi voluptate quia cumque eius consequatur ut. Molestias est culpa odio fuga ex inventore qui.'),
(114, 37, 84, '2019-11-12 09:19:52', 'Qui est expedita sunt ea et dolorum. Consequuntur eum cum corrupti ipsam quasi dolorem aperiam. Esse praesentium expedita quae.'),
(115, 44, 100, '2019-06-10 01:34:01', 'Dignissimos et autem voluptatem. Autem consequatur repellendus consequatur voluptates deleniti. Repellat sed cupiditate velit dolores ut nobis ipsam.'),
(116, 39, 67, '2019-10-03 18:53:01', 'Vel asperiores sit repellat cum molestiae commodi dolores nihil. Eos consequatur in voluptas ut tempore est laudantium facere. Rem harum at quo. Ullam mollitia et voluptatem sit.'),
(117, 45, 69, '2019-06-17 12:29:57', 'Delectus velit necessitatibus enim. Vel eligendi ut ab dolores totam ab et rerum. Sit sed sed et ipsum doloremque. Voluptatum et totam et et.'),
(118, 43, 84, '2019-06-13 16:21:34', 'Qui unde ut quam ut est. Maxime occaecati et consequatur quia. Tempore deleniti error laborum aperiam non qui ullam. Error magni ipsum qui ea odio architecto.'),
(119, 43, 97, '2019-12-09 22:16:50', 'Exercitationem voluptatem ex qui iste dolores ullam. Quia quo repellat quam excepturi qui. Ducimus veniam vel quia nulla et.'),
(120, 44, 54, '2019-04-23 08:32:22', 'Error laudantium incidunt natus maiores. Sint sed magni est architecto cumque dicta. Molestiae quia sit nemo quae ratione dolor ullam. Quaerat neque sed odio veniam ut doloremque.'),
(121, 38, 80, '2019-09-07 05:47:38', 'Beatae voluptatem sequi et ex a aliquid. Dicta doloribus eos ea aut. Quia tempora quia dolorem. Qui et sint et quam quae.'),
(122, 39, 58, '2019-11-26 20:42:16', 'Perferendis consequatur iste libero ad. Repellat quo repudiandae sed ducimus repellat. Aperiam harum doloribus ipsum aut autem mollitia.'),
(123, 43, 54, '2019-04-15 07:34:29', 'Mollitia quo molestiae expedita tempore est at. Labore neque aut nisi quis aut iusto.'),
(124, 46, 53, '2018-12-26 06:46:56', 'Voluptatem iure ut non maxime nesciunt amet. Dolores doloribus harum eaque est blanditiis. Dolorem repellat ullam provident aut neque. Vero ullam dolorem quia eaque autem.'),
(125, 45, 84, '2019-03-19 05:45:39', 'Vel rerum aut incidunt sit deleniti. Ut iste veritatis dolor consequatur eum. Ut perferendis voluptas blanditiis fugiat aspernatur vel alias.'),
(126, 45, 95, '2019-11-27 08:31:27', 'Voluptas labore est quia ut. Vitae et ut quia non quae occaecati. Vel adipisci ratione exercitationem explicabo cupiditate.'),
(127, 38, 60, '2019-12-09 06:45:46', 'Blanditiis reiciendis ducimus earum est est corporis. Quod ut non eos non. In et facilis odio non non alias delectus. Deleniti non illo laborum facere sed fuga. Veritatis possimus et quod aperiam.'),
(128, 41, 98, '2019-03-14 04:55:02', 'Expedita recusandae et cumque reiciendis aut explicabo quae non. Ex consequatur quas ut nemo. Omnis et et quo aut suscipit impedit. Dolor ut molestiae sunt laudantium quaerat aut.'),
(129, 45, 74, '2019-01-24 21:43:15', 'Autem quia ipsa laudantium nulla reiciendis voluptatem. Sunt aliquid rem dolor maiores cupiditate ut ex. Magni architecto quo eum quo.'),
(130, 37, 65, '2019-11-09 23:52:30', 'Iure libero maxime vel fugit voluptatem iusto tempora. Et quaerat quos ab quisquam. Sit quis rem reiciendis. Consectetur reiciendis consectetur libero quas qui aut non.'),
(131, 44, 96, '2019-05-05 17:00:40', 'Ut ipsam eaque eum voluptas voluptatem laboriosam quidem. Doloremque consequatur iste et rerum officiis. Iusto nostrum quia facere velit. Eaque dolor accusantium reiciendis sint at.'),
(132, 46, 98, '2019-02-08 12:35:50', 'Et molestiae maiores voluptas ex sequi. Quod adipisci magnam earum eum velit.'),
(133, 46, 80, '2019-10-22 12:42:15', 'Molestiae blanditiis fugit molestiae. Beatae accusantium est id. Quia similique repellendus qui repellendus tenetur laboriosam dolorum.'),
(134, 39, 71, '2019-08-08 04:43:21', 'Maiores quaerat sunt perspiciatis velit. Nulla et error et natus animi atque. Reprehenderit voluptas veritatis est sunt est incidunt sit. Temporibus occaecati provident ipsa enim incidunt placeat.'),
(135, 43, 84, '2019-08-31 20:03:24', 'Expedita iusto ut est voluptatem ut sed. Minus qui molestiae sequi ut quia harum. Perspiciatis ipsam veritatis fugiat enim aut est blanditiis. Aliquid tenetur enim officiis voluptatem.'),
(136, 39, 97, '2019-09-25 16:21:08', 'Nihil nihil magnam earum consectetur distinctio delectus omnis. Molestiae vero quaerat molestiae ut sit. Excepturi tempore at quidem.'),
(138, 43, 99, '2019-01-13 08:39:52', 'Ut aut dolores veritatis aspernatur modi vel. Sed sed in itaque asperiores. Saepe omnis soluta voluptatem velit. Molestiae similique aut sint.'),
(139, 46, 60, '2019-07-20 16:38:22', 'Nam consequatur sunt qui consequatur perferendis. Harum illum officia velit sit asperiores rerum.'),
(140, 44, 73, '2019-02-22 20:29:24', 'Doloremque aliquid sunt non et laboriosam sunt explicabo repellendus. Velit aut sed rem blanditiis. Pariatur sunt ipsa eveniet aut.'),
(141, 39, 73, '2019-08-31 01:55:23', 'Velit deleniti autem ipsum a fugiat omnis quis. Incidunt sapiente similique porro aperiam sed quia. Rerum error voluptatem consequatur sit recusandae vel. Cumque perspiciatis et et velit et.'),
(142, 46, 79, '2019-01-11 07:06:44', 'Ullam reiciendis officia asperiores corrupti esse aliquam. Sunt vitae aperiam qui quod corrupti eum. Deserunt aliquid natus velit doloremque cumque. Repudiandae quibusdam reiciendis voluptatem nulla.'),
(143, 43, 79, '2019-06-22 12:27:54', 'Illo sint voluptas ut repudiandae. Dolorem eum accusantium quibusdam quia doloribus eum.'),
(144, 41, 72, '2019-03-23 16:52:52', 'Beatae et tempore quis. Vel qui tenetur necessitatibus pariatur voluptatem. Iure deserunt molestiae et omnis et quae.'),
(145, 46, 70, '2019-07-29 23:04:41', 'Repellat velit veritatis adipisci quia exercitationem consequatur. Rerum fuga dignissimos est et ducimus modi eos. Illum eius dolore nihil vel.'),
(146, 42, 95, '2019-06-16 21:08:06', 'Quae in et error deleniti quae nihil amet est. Et at ut facilis ipsam provident aut.'),
(148, 41, 65, '2019-12-09 07:38:54', 'Dignissimos veniam illum ad et nesciunt quo. Ut est aut quaerat. Modi sequi eos quam asperiores aut non in.'),
(149, 39, 71, '2019-07-28 14:44:30', 'Voluptates reiciendis minus qui placeat maxime. Incidunt similique quos expedita. Voluptas recusandae quia rerum laborum.'),
(150, 38, 60, '2019-05-27 01:17:15', 'Aut enim explicabo hic id velit. Minima saepe magni quasi ipsam a et.'),
(151, 41, 67, '2019-03-15 09:59:04', 'Quis doloribus non qui maiores accusantium minima. Rem incidunt similique possimus tempore dolor ut reprehenderit.'),
(152, 43, 54, '2019-03-28 12:34:09', 'Vel nemo labore accusantium dignissimos dolor temporibus ratione quae. Aliquid velit vitae voluptate molestiae voluptatum. Quisquam neque et voluptatibus sed eos eligendi quis at.'),
(153, 44, 52, '2018-12-19 07:01:43', 'Mollitia ipsum sapiente omnis veritatis et laudantium occaecati. Voluptatem perspiciatis pariatur earum quia beatae repudiandae. Corrupti et enim et soluta nihil accusantium.'),
(154, 46, 59, '2019-03-28 14:27:31', 'Et nam maxime quo et sed aspernatur nisi. Veritatis et ipsam quia voluptate consequatur. Minus reiciendis occaecati sunt a architecto veniam et.'),
(155, 43, 81, '2019-01-25 02:23:27', 'Natus quasi ut accusantium id iure. Repellat blanditiis aut dolor ut enim. Quibusdam illum maxime consequatur non similique at. Exercitationem magni similique ratione.'),
(156, 43, 76, '2018-12-19 15:05:32', 'Pariatur ducimus rerum facere est. Ea voluptatibus accusantium a molestiae optio placeat dolorum qui. Ut quis quia ducimus nihil velit qui. Quia voluptate voluptas sint occaecati deleniti nisi unde.'),
(157, 37, 67, '2019-03-21 05:44:07', 'Et rem ea velit eum ipsum. Distinctio et libero adipisci quis placeat vero voluptas.'),
(158, 43, 80, '2019-09-24 04:02:33', 'Nostrum corrupti est enim. Qui autem laboriosam laboriosam. Mollitia ducimus provident assumenda voluptas occaecati magnam minima. Dolorem labore facere maiores fugiat natus.'),
(159, 38, 53, '2019-09-10 06:51:05', 'Libero et similique adipisci quia pariatur. Atque qui architecto voluptatem sunt. Ut modi exercitationem soluta amet ab quia ut. Quia dolor quo rerum sapiente accusantium autem id omnis.'),
(160, 44, 95, '2019-08-07 14:33:56', 'Odit nostrum tempore rem aut voluptatem in. Est est repudiandae veniam impedit. Odit velit eum enim consequatur libero illum. In perspiciatis molestiae est.'),
(161, 39, 94, '2019-01-19 20:24:17', 'Quam id id aut ducimus accusantium officiis. Ipsa quisquam laudantium pariatur quia impedit. Et est dolore quia et voluptas tempore id voluptatem. At qui vel nihil doloremque.'),
(162, 41, 80, '2019-06-17 20:29:56', 'Nam dolores quaerat nam. Provident libero harum dignissimos debitis sit qui qui. Sequi rerum sunt ex veritatis voluptas. Quaerat deserunt alias minus doloribus a nulla sit et.'),
(163, 45, 55, '2019-11-29 02:19:39', 'Nam fugit est necessitatibus voluptatum. Et voluptas quisquam dolor reiciendis. Corrupti nisi voluptas natus.'),
(164, 41, 91, '2019-04-22 12:20:04', 'Magnam blanditiis neque quaerat ex tempore et. Est ex sed pariatur corrupti tempora odio sit. Sint laboriosam quis dolorem dolor non facere quos ea.'),
(165, 43, 53, '2018-12-29 17:53:16', 'Voluptas temporibus distinctio voluptas et in ipsam similique. Culpa est repellat quaerat cum repellat voluptas.'),
(166, 41, 84, '2019-07-17 06:19:00', 'Ut et possimus nemo ut delectus. Velit adipisci perspiciatis dignissimos deserunt. Possimus dicta nam in beatae iure.'),
(167, 38, 92, '2019-12-02 17:49:49', 'Fugiat nam est enim quia. Nihil cupiditate rem qui dignissimos. Provident in occaecati autem nemo minus veritatis consequatur laborum.'),
(168, 41, 77, '2019-01-24 20:01:41', 'Illo sunt occaecati neque non perferendis adipisci et eos. Nesciunt tempore voluptatem eos. Repellendus eius consequatur molestiae id assumenda.'),
(169, 39, 84, '2019-08-03 13:39:06', 'Libero porro qui impedit. Officiis quam inventore perspiciatis asperiores. Qui veritatis reiciendis qui quis. Eaque amet fuga fugiat. Eius et aut voluptas.'),
(170, 41, 73, '2019-06-26 03:15:45', 'Aliquid repellat perspiciatis qui. Eveniet minus debitis vero in. Mollitia sunt et excepturi culpa rerum.'),
(171, 46, 53, '2019-11-18 13:19:05', 'Dolore aut magnam ratione molestiae pariatur et similique. Blanditiis reprehenderit dolor aut cumque qui ut. Ut numquam enim qui labore. Quae quo velit esse debitis culpa exercitationem.'),
(172, 40, 79, '2019-11-05 17:44:43', 'Debitis est eligendi aspernatur occaecati animi voluptate. Ad ut non occaecati qui tenetur. Architecto sequi et quod at accusamus quaerat natus.'),
(173, 42, 72, '2019-09-12 13:16:32', 'Et et quisquam tempora praesentium. Repellat est nihil cumque reiciendis iure fuga et. Tenetur aut quis libero suscipit laudantium at ut.'),
(174, 38, 67, '2019-04-28 09:58:21', 'Voluptas est delectus praesentium. Aliquam sed soluta repellendus consequuntur porro sunt.'),
(175, 46, 70, '2019-02-16 20:34:58', 'Et reprehenderit doloribus saepe aliquam iusto. Sed molestias quasi eius et quam. Eum sequi reiciendis cupiditate ut quis. Quo omnis quis officia dolor maxime quae.'),
(176, 37, 60, '2019-04-01 06:27:18', 'Totam non incidunt est et deleniti repellat repellendus dolores. Iure rerum debitis et sunt laboriosam. Et rerum qui eos omnis. Est beatae voluptas explicabo recusandae eum.'),
(177, 37, 56, '2019-10-20 23:42:56', 'Dolorem nulla recusandae fuga. Quasi recusandae veniam perspiciatis quae a vel sed et. Velit explicabo fugit architecto consequatur.'),
(178, 39, 61, '2019-06-05 15:12:04', 'Nihil molestiae temporibus sunt quas tempora reprehenderit rerum. Ut minus quisquam iste culpa. Sed enim delectus ab.'),
(179, 38, 86, '2019-09-07 18:30:23', 'Aperiam expedita voluptatum fuga et. Voluptatem doloremque beatae illum quas ut occaecati. Beatae officia asperiores quod natus.'),
(180, 43, 96, '2019-08-19 21:47:38', 'Aut est est deserunt ratione atque ad. Qui non consectetur minus illum. Placeat totam provident vero aut.'),
(181, 46, 82, '2019-02-07 05:03:54', 'Distinctio aut et quia ratione. Cumque possimus maiores eveniet nisi et mollitia voluptas. Necessitatibus et voluptatum et totam magni quisquam quidem.'),
(182, 43, 77, '2018-12-29 16:20:47', 'Voluptate eos mollitia in pariatur nihil ad officiis. Et commodi rerum dolorem tempora eius ab. Debitis id aperiam cumque dolore sint qui officia. Ut occaecati cumque eveniet nemo et.'),
(183, 44, 96, '2019-07-07 19:04:54', 'Corporis labore mollitia ex. Voluptas quo ab qui maiores. Dolorem id et est ipsam esse vel expedita. Qui non quos beatae blanditiis velit ipsam sunt.'),
(184, 38, 70, '2019-03-01 07:29:09', 'Sit sed laudantium repellendus vel soluta ea esse. Et nihil saepe molestiae laudantium. Aperiam dolor ad quibusdam blanditiis nihil ex ab. Quaerat a consectetur aut qui consequatur unde.'),
(185, 42, 75, '2019-07-11 18:57:55', 'Quia eaque autem expedita aut et. Ut et dolor in hic et fuga.'),
(186, 41, 58, '2019-12-14 19:42:46', 'Minima veritatis modi sunt itaque laboriosam et. In dicta corrupti cum dicta aspernatur ipsum illum. Quo possimus veritatis minus non voluptate aut temporibus.'),
(187, 46, 78, '2019-03-09 17:30:46', 'Qui hic nam nihil omnis provident. Voluptas ut et ipsum occaecati. Voluptatem cum consectetur vero. Non itaque cumque est numquam odio quae occaecati repellendus.'),
(188, 44, 73, '2019-08-27 01:04:17', 'Explicabo eaque velit et quia cupiditate. Est soluta voluptatem exercitationem. Accusantium autem facere quia et doloribus vel.'),
(189, 38, 94, '2019-05-03 15:55:00', 'Molestiae explicabo enim at quos unde. Quis minima voluptas et numquam ut iste ad itaque. Et incidunt sunt aut velit quia. Officiis id qui odio nulla quia iste. Omnis vel esse qui quam qui iusto ut.'),
(190, 38, 97, '2019-11-10 09:50:22', 'Vel similique aliquid nam sit. Dolore vitae harum numquam ut enim exercitationem unde voluptatem.'),
(191, 46, 97, '2019-08-24 15:36:56', 'Aut ullam quia et molestiae quidem. Beatae cupiditate inventore aut. Nihil voluptatem voluptatem quis soluta. Vel repellat et porro praesentium corrupti similique ipsam.'),
(192, 45, 69, '2019-11-09 07:14:47', 'Dolorem natus aut minima cum ipsa perspiciatis. Quia asperiores occaecati necessitatibus dolores. Quo sit non quibusdam.'),
(193, 41, 82, '2019-11-07 19:44:03', 'Temporibus velit aliquam et ut non corporis eum. Impedit tempora aut veniam vitae. Quia similique velit sit eos voluptates sit et. Et eligendi porro minima enim expedita laboriosam at.'),
(194, 37, 99, '2019-11-27 17:12:23', 'Quidem atque ullam aut ea et iure. Illo quisquam explicabo repudiandae dicta sunt error sed. Modi quidem occaecati qui beatae est laudantium.'),
(195, 43, 61, '2019-11-30 22:17:23', 'Tenetur consequatur ea ut quisquam laboriosam harum quasi repellat. Et labore dolore voluptates. Tenetur quia autem rerum sint.'),
(196, 38, 73, '2019-06-11 08:25:55', 'Eligendi numquam alias beatae id molestias qui incidunt blanditiis. Beatae voluptatum eveniet maxime iure quis iure. Est nihil porro molestiae earum recusandae. Unde minus qui iste.'),
(197, 45, 95, '2019-03-01 00:51:58', 'Odio praesentium quis quae quidem harum eaque aut. Vero perspiciatis porro at voluptatem ipsum culpa. Non eligendi voluptate dolorem deleniti unde repellendus ratione quidem.'),
(198, 40, 64, '2019-09-28 16:53:53', 'Suscipit est iusto quae quam. In adipisci laborum beatae molestiae provident. Ducimus mollitia ipsa unde. Ducimus sit eaque dolorum.'),
(199, 40, 84, '2019-02-11 18:48:58', 'Temporibus et at sapiente optio nulla. Fugit et doloribus et nisi enim quis. Sit quas doloribus amet est sed ut. Unde qui et occaecati id.');

-- --------------------------------------------------------

--
-- Structure de la table `migration_versions`
--

DROP TABLE IF EXISTS `migration_versions`;
CREATE TABLE IF NOT EXISTS `migration_versions` (
  `version` varchar(14) COLLATE utf8mb4_unicode_ci NOT NULL,
  `executed_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `migration_versions`
--

INSERT INTO `migration_versions` (`version`, `executed_at`) VALUES
('20191218134221', '2019-12-18 13:42:27'),
('20191218212605', '2019-12-18 21:26:20');

-- --------------------------------------------------------

--
-- Structure de la table `note`
--

DROP TABLE IF EXISTS `note`;
CREATE TABLE IF NOT EXISTS `note` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_user1_id` int(11) NOT NULL,
  `id_user2_id` int(11) NOT NULL,
  `note` int(11) NOT NULL,
  `avis` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_enregistrement` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_CFBDFA14675C81E` (`id_user1_id`),
  KEY `IDX_CFBDFA1414C067F0` (`id_user2_id`)
) ENGINE=InnoDB AUTO_INCREMENT=201 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `note`
--

INSERT INTO `note` (`id`, `id_user1_id`, `id_user2_id`, `note`, `avis`, `date_enregistrement`) VALUES
(101, 46, 41, 2, 'Ut rerum quasi voluptatem. Qui minima natus sunt nulla. Laboriosam atque omnis natus qui perspiciatis consectetur sed animi. Et nulla alias ut hic qui quaerat.', '2019-02-19 15:02:33'),
(102, 46, 40, 3, 'Facilis ea voluptatem ut ut in. Quis blanditiis qui error a sit iure ut perspiciatis.', '2019-07-13 10:32:18'),
(103, 45, 43, 1, 'Voluptate accusantium laboriosam ut quaerat dolore amet. Facere a est rerum consectetur similique eaque tempora. Sed repudiandae provident et vitae et. Delectus velit molestiae quia amet.', '2019-06-10 19:21:45'),
(104, 42, 40, 6, 'Est alias voluptatem vel exercitationem. Sint reiciendis magnam unde ut maxime exercitationem voluptatem. Minus commodi modi accusamus aut et.', '2019-01-15 04:21:28'),
(105, 37, 43, 2, 'Rerum ut omnis asperiores officia deleniti eos enim commodi. Reprehenderit aliquam iusto veritatis. Impedit recusandae illo est.', '2019-11-17 13:22:10'),
(106, 43, 46, 0, 'Voluptas quisquam et qui. Qui distinctio ducimus deserunt deserunt qui. Explicabo doloribus doloremque dolores eum.', '2019-01-17 06:55:21'),
(107, 43, 39, 2, 'Et possimus culpa dicta quae quis est suscipit. Et accusantium ab id fuga non totam eos. Sequi dolorum ad maxime sed totam. Rerum facere ut repudiandae nemo aut asperiores quaerat ducimus.', '2019-07-16 12:27:07'),
(108, 45, 37, 9, 'Cupiditate enim sit sequi voluptas consequatur fugit iste. Eos qui assumenda natus ea. Quas consequuntur blanditiis sit dolores.', '2019-08-17 18:22:45'),
(109, 38, 40, 0, 'Minus qui unde officiis impedit enim. Modi perspiciatis sint in in. Beatae nam error veritatis culpa. Totam facere rem maxime.', '2019-08-31 10:08:57'),
(110, 44, 46, 7, 'Unde eum cum ex omnis a. Dolor modi debitis eveniet. Quis et quo et ducimus dolore explicabo sint. Atque sequi eligendi ullam nam magni vel.', '2019-01-24 18:04:41'),
(111, 44, 46, 6, 'Omnis est ad voluptatem inventore est corporis consectetur. Neque enim inventore vel quae. Possimus provident et doloribus aut voluptatem. Et quibusdam nihil amet veniam tempore.', '2019-12-13 08:03:20'),
(112, 39, 38, 7, 'Qui id unde sit non enim in et dolorem. Rerum repellendus aliquam similique sit. In assumenda rerum et reprehenderit voluptas aut dicta.', '2019-09-22 18:51:25'),
(113, 37, 40, 1, 'Eaque adipisci consequatur modi provident quam natus velit. Enim dolores recusandae cum quis minima qui at. Aut aut dolores fugiat repellat sit. Molestiae quidem sit vel dignissimos aspernatur.', '2019-11-10 03:38:59'),
(114, 45, 45, 3, 'Molestias magnam eius officia voluptates dolor quia. Adipisci voluptate incidunt necessitatibus.', '2019-01-01 05:15:48'),
(115, 38, 44, 9, 'Hic numquam consequuntur id. Blanditiis aperiam nisi est nam. Quia minus quia sint sapiente a.', '2019-11-25 20:30:44'),
(116, 38, 42, 4, 'Facilis architecto consequatur voluptas dolorum ut. Tempora rem in in autem. Consectetur exercitationem et perferendis. Provident sed est veritatis et aut dignissimos dolores.', '2019-07-22 17:11:32'),
(117, 45, 38, 10, 'Sed at corrupti quia distinctio doloribus eaque. Porro cupiditate nobis ipsum porro ut. Voluptate culpa odit illum et aliquid et. Ipsa in perferendis eos dolore expedita est.', '2019-09-13 08:10:16'),
(118, 40, 43, 4, 'Distinctio sunt quas est. Quisquam deleniti saepe est qui.', '2019-12-02 09:13:16'),
(119, 42, 43, 6, 'Aliquid et illo voluptatum qui eum maxime architecto. Tenetur cumque rerum doloremque ex. Ut repellat et veniam. Commodi perspiciatis quasi impedit reprehenderit id.', '2019-05-06 17:42:37'),
(120, 37, 43, 2, 'Facilis eum eos totam libero exercitationem est beatae. Culpa est ut dolore similique illum rem. Ab laboriosam esse illo ipsa. Exercitationem sit eligendi nostrum perferendis tempore eaque.', '2019-11-09 06:49:03'),
(121, 46, 45, 6, 'Nesciunt vero totam omnis ea aut distinctio esse. Animi cumque qui officiis quo aperiam omnis. Et nihil labore voluptatem.', '2019-12-03 09:42:46'),
(122, 45, 46, 0, 'Sunt fuga quam doloribus fuga. Eaque quidem iste enim qui iure quod earum. Beatae quibusdam dolorum qui nemo error voluptatem. At commodi quia nemo fugiat minus.', '2019-09-04 02:33:58'),
(123, 37, 42, 4, 'Dolores autem aspernatur consequatur sit eos. Quia totam dolores atque tempora non consequuntur. Autem exercitationem ut est repellat. Ipsum omnis qui dolor dolore eos in recusandae.', '2019-06-08 18:05:27'),
(124, 44, 43, 0, 'Odio quisquam laborum eum. Quidem aut sed laudantium et tempore omnis. Dolorem quo atque in aliquid quam aut cupiditate.', '2019-05-12 20:27:01'),
(125, 45, 43, 4, 'Reprehenderit rerum quo et et. Ullam fugit facilis ea et. Hic nulla cumque qui et sed laudantium.', '2019-08-12 18:48:02'),
(126, 44, 37, 4, 'Sapiente omnis impedit quia voluptatem laborum quod et. Qui eum sit voluptatem cupiditate id expedita qui. Sed explicabo rerum illo.', '2019-05-04 13:55:14'),
(127, 41, 40, 1, 'Aut consequatur facilis est at accusantium debitis illum. Recusandae quo optio voluptatem ea voluptatem. Enim exercitationem illo earum natus hic.', '2019-01-30 20:12:52'),
(128, 45, 38, 5, 'Voluptatem occaecati rem facere enim voluptates eum. Itaque vitae fuga sit et. Inventore hic commodi rerum aut odio itaque.', '2019-02-01 08:50:25'),
(129, 42, 42, 8, 'Quia qui qui accusantium in accusamus mollitia in. Nostrum et quis nulla consequatur saepe eos voluptas. Id soluta reiciendis numquam.', '2019-03-01 11:10:23'),
(130, 37, 46, 7, 'Est veniam quis temporibus. In aut possimus minima quo sit odit qui sunt. Similique est autem pariatur voluptate eius enim.', '2019-02-04 21:34:40'),
(131, 42, 46, 6, 'Ut necessitatibus voluptatem vel atque. Aut id enim dignissimos assumenda. Iste itaque enim quis.', '2019-01-29 07:02:02'),
(132, 40, 44, 8, 'Ratione id aut tempore laudantium quae at quis. Nulla praesentium voluptatem ipsa nihil ab. Eveniet fugiat non delectus dolorum enim illo ea.', '2019-04-09 02:14:11'),
(133, 43, 42, 8, 'Sit illo reiciendis qui. Recusandae est adipisci maiores. Aspernatur ut accusamus non labore ut voluptatum. Quia nam esse eligendi qui distinctio aliquid ipsum.', '2019-03-11 01:10:29'),
(134, 44, 37, 4, 'Praesentium aut cupiditate deleniti totam. Itaque et omnis rerum magnam temporibus quos. Et ratione hic dolorem velit.', '2019-07-16 12:13:13'),
(135, 40, 43, 2, 'Consequatur sit sint ea. Rerum explicabo similique qui nihil accusamus quam. Ab necessitatibus est cupiditate illo aut dignissimos. Et nobis voluptatem et tempora aliquid corporis.', '2019-05-21 07:43:18'),
(136, 40, 41, 1, 'Suscipit voluptatum non deserunt perferendis. Sit corrupti eum fugit est. Eaque molestiae sit odio ut voluptas dolores nesciunt. Asperiores dolores reprehenderit quia.', '2019-08-26 10:22:51'),
(137, 39, 46, 9, 'Odit ut aut qui quia. Qui aut quia at necessitatibus animi autem.', '2019-02-14 10:23:13'),
(138, 45, 45, 8, 'Cupiditate autem blanditiis pariatur minima autem voluptates. Sit sit explicabo iusto minus perspiciatis corrupti. Qui impedit cumque nostrum harum iusto.', '2019-01-05 00:26:43'),
(139, 42, 44, 1, 'Numquam iste est est. Quia odio molestiae impedit. Ullam temporibus laudantium et aut facere.', '2019-08-26 19:19:20'),
(140, 41, 44, 7, 'Tempora laudantium repellendus id vero id. Qui eaque laborum ut nostrum. Aut omnis assumenda non modi minima sint et. Quisquam ad maiores architecto odit ut modi et iusto.', '2019-08-04 13:35:27'),
(141, 39, 42, 1, 'Quo ex illo cupiditate itaque est vel dignissimos. Itaque recusandae voluptate quod asperiores.', '2019-04-03 09:45:27'),
(142, 45, 45, 5, 'Sed suscipit nostrum ea ut ea amet. Labore sunt distinctio nisi optio qui dolorem. Rerum necessitatibus quo voluptas labore vitae in. Laborum voluptatum et eveniet dolor in.', '2019-03-05 23:22:56'),
(143, 37, 44, 8, 'Iste vero eveniet quia hic. Enim deleniti illum minima facilis. Reiciendis reiciendis illum exercitationem id eius quos eligendi dolor. Sequi cupiditate quam reiciendis non labore.', '2019-03-26 16:49:15'),
(144, 44, 46, 1, 'Tempore eum sed ad. Ratione voluptatem dolor quaerat quia mollitia aut magnam excepturi. Quam non odit iusto sunt quia omnis rem.', '2019-06-23 10:15:21'),
(145, 37, 44, 9, 'Quo atque aut autem iusto sed aut. Non et perferendis est laborum maxime sed quia. Molestiae aut beatae sint a minus. Et delectus voluptas nesciunt odit adipisci.', '2019-03-21 15:06:07'),
(146, 43, 45, 9, 'Doloribus maxime eum cum ut eius. Voluptas culpa iusto id. Maiores non perspiciatis eos fugit. Nam qui aut quo natus omnis ratione.', '2019-07-26 18:54:08'),
(147, 41, 41, 10, 'Perspiciatis itaque aut commodi animi repellendus molestiae. Consequatur doloribus aut ea sint tenetur minima repudiandae nulla. Rerum officiis eaque officiis sequi et corporis et.', '2019-07-26 01:07:11'),
(148, 39, 44, 9, 'Porro accusantium qui amet et voluptatibus excepturi non. Consequuntur unde est est ipsa.', '2019-08-06 21:14:56'),
(149, 46, 37, 0, 'Deleniti quidem est repudiandae officia quam incidunt. Mollitia velit officiis veniam soluta qui dolore. Numquam eaque ut est magnam non quas amet.', '2019-06-08 21:15:54'),
(150, 40, 43, 5, 'Rerum ipsum voluptatem dolor molestias et placeat. Itaque ut magnam harum eius ipsam. Incidunt consectetur eum magni aliquid voluptate mollitia vitae iure.', '2018-12-29 23:20:47'),
(151, 44, 42, 4, 'Nobis eius reiciendis dolorum consequatur qui. Ex iusto laborum non sint aliquam nam. Itaque unde enim sed eos.', '2019-11-13 23:04:36'),
(152, 40, 37, 7, 'Eos soluta suscipit itaque doloribus ut et. Id accusantium et molestiae corrupti aut dolorum repudiandae dignissimos. Doloribus asperiores expedita et dolorum. Est eveniet eaque soluta voluptatem ut.', '2019-08-11 00:59:20'),
(153, 39, 41, 7, 'Corporis aut ratione ut magnam. Aut sint et ut est. Fugiat laudantium eligendi tempora temporibus enim.', '2019-10-17 04:41:59'),
(154, 37, 46, 1, 'Minus laudantium aliquid sunt repudiandae totam hic. Adipisci rerum odit reprehenderit et. Omnis sit necessitatibus ipsa.', '2019-11-03 01:31:08'),
(155, 41, 44, 7, 'Fugit eveniet cum et cupiditate. Repudiandae voluptas nisi quis. At hic sint assumenda dolor.', '2019-10-21 08:18:25'),
(156, 43, 46, 8, 'Voluptates ipsum beatae quia excepturi impedit. Assumenda enim quo reiciendis repellat.', '2019-05-07 19:59:36'),
(157, 38, 43, 4, 'Dolores similique esse unde porro quia. Aut minus at porro architecto. Qui consequatur qui autem harum in vitae itaque. Et eos voluptatem eaque voluptas.', '2019-03-31 10:03:36'),
(158, 37, 38, 7, 'Magnam eligendi et dolore ea tempora nisi expedita. Voluptates quia a consequatur suscipit sed. Harum blanditiis magnam assumenda ut.', '2019-02-03 17:03:01'),
(159, 37, 39, 7, 'Vel nesciunt non nobis aliquid consequatur voluptate molestias nulla. Iusto sunt sed neque id rerum. Eaque at similique in perferendis.', '2019-07-10 08:19:38'),
(160, 43, 45, 2, 'Voluptatem est quos et voluptas. Rerum ut eos architecto nobis sint sed. Voluptas sapiente sit minus totam fugit. Consequuntur quia sed suscipit a consequatur enim dolorum nulla.', '2019-04-14 21:23:26'),
(161, 46, 38, 1, 'Voluptas temporibus saepe ut eos. Atque voluptas temporibus labore quia. Dicta rerum optio itaque aperiam. Consequuntur ad dolores iste vero.', '2019-02-25 02:43:00'),
(162, 39, 37, 6, 'Quas ex ipsa voluptas beatae. Non optio optio beatae consectetur temporibus. Non sed sit ut sapiente. Eligendi tenetur soluta voluptas. Asperiores quis qui culpa ut ad voluptate neque temporibus.', '2019-10-26 10:13:30'),
(163, 38, 44, 2, 'Et velit facere dolores sunt. Repudiandae rerum est possimus fugit. Tenetur rerum quidem iure excepturi est.', '2019-06-03 17:00:59'),
(164, 46, 42, 3, 'Est aut itaque repudiandae totam autem minima deleniti. Fuga aut non consequuntur illum eligendi. Natus temporibus molestiae veritatis qui.', '2019-12-13 16:39:17'),
(165, 40, 39, 4, 'Nihil et aspernatur commodi sed aut. Ut aut molestiae voluptatem voluptatem. Est expedita nam quidem libero deleniti rerum.', '2019-07-27 12:59:42'),
(166, 42, 41, 9, 'Qui delectus facere corrupti incidunt deserunt. Perspiciatis officia aut est et. Nulla atque nostrum placeat aspernatur. Omnis odit quo maxime harum eveniet tenetur. Beatae sed omnis ea sed.', '2019-03-19 07:07:05'),
(167, 41, 37, 8, 'Facilis itaque officiis odit labore recusandae. Placeat et qui veniam debitis mollitia. Et sit dicta nostrum rerum.', '2019-08-30 03:27:42'),
(168, 38, 37, 4, 'Facilis cupiditate qui quia nostrum perspiciatis fuga omnis. Tenetur eum maiores quia aperiam nam quisquam voluptas. Modi natus provident sed dolor exercitationem cumque.', '2019-02-12 15:48:51'),
(169, 44, 43, 8, 'Illum quia eligendi et unde quaerat nemo. Aut eligendi sed et ipsa. Iure facere et rerum maxime assumenda praesentium illo. Ut porro aperiam qui culpa debitis.', '2019-06-12 11:49:21'),
(170, 41, 42, 1, 'Officiis aut ea voluptatem ut. Ipsum fuga odio repellendus molestiae sit et iste. Molestiae repellat aliquid tempora quia consequatur repellendus vel.', '2019-04-29 16:42:17'),
(171, 45, 44, 9, 'Aliquid pariatur minima nihil quis. Suscipit doloribus perferendis omnis dolores. Voluptatem et suscipit dolorem enim. Non iste doloremque sed vero. Ab sed quis nisi nostrum reprehenderit.', '2019-06-14 02:40:08'),
(172, 41, 43, 10, 'Aut magni id doloremque laudantium placeat. Est quis aut modi magni velit. Ut ut delectus dolores similique. Quidem eum voluptates porro dolorem et.', '2019-05-24 12:38:03'),
(173, 44, 45, 9, 'Et numquam occaecati doloribus minus ut. Consequatur veniam rerum autem recusandae. Deserunt saepe porro laborum voluptatibus et possimus et et. Maiores consequatur recusandae repellat pariatur.', '2019-05-24 21:39:52'),
(174, 39, 37, 1, 'Repellendus distinctio aut sed dignissimos facilis vel iusto. Id voluptatem odit velit ut nisi. Et ut ipsum non praesentium est repudiandae. Nihil et et aperiam quia sint.', '2019-01-12 19:40:07'),
(175, 42, 44, 1, 'Et ut voluptatibus eligendi. Accusamus blanditiis ratione quis aut. Dignissimos quibusdam nobis animi accusantium veniam et.', '2019-09-28 04:52:13'),
(176, 43, 46, 7, 'Asperiores voluptatum suscipit aut aspernatur repudiandae veniam est. Perspiciatis quibusdam corporis quo sit eos. In voluptates aspernatur sint occaecati eligendi omnis.', '2019-10-03 14:09:26'),
(177, 40, 44, 9, 'Nulla perspiciatis ad optio tenetur. Eum aut dignissimos tempora distinctio eum in. Consectetur rem odit corrupti sunt quasi voluptatum voluptas. Quaerat dolorem maiores unde non ipsum.', '2019-05-13 12:39:24'),
(178, 46, 45, 2, 'Porro eveniet quidem animi libero ad soluta minus. Voluptas fugit similique quia minus eos qui. Praesentium et dignissimos asperiores et iure. Rem qui corporis sint enim sit animi eum doloremque.', '2019-08-25 01:25:49'),
(179, 38, 43, 1, 'Qui earum voluptas beatae voluptatem eaque sed similique. Id molestiae ut ipsum inventore possimus libero et.', '2019-10-11 04:49:36'),
(180, 44, 37, 2, 'Numquam iure quaerat est iste laboriosam et et. Quae aliquam repellendus non sed aut asperiores. Reprehenderit molestiae officiis animi autem. Quod blanditiis eius laboriosam corrupti praesentium.', '2019-10-18 02:13:20'),
(181, 43, 38, 10, 'Dicta vel non tempore quidem soluta. Quis nobis quae ea sequi quaerat id. Est nesciunt ad dolor qui placeat dolore. Et est ipsum animi.', '2019-12-11 01:10:34'),
(182, 43, 41, 0, 'Ut non aut omnis deserunt illo velit. Provident fugit et quaerat quae voluptas. Voluptatibus itaque corrupti aut fuga nihil quaerat.', '2019-06-10 15:36:56'),
(183, 42, 44, 6, 'Dolores velit labore non pariatur optio. Et ipsam incidunt officia animi dolorum. Fuga tempore facilis quia nesciunt repellat.', '2019-09-06 14:10:18'),
(184, 46, 39, 7, 'Voluptatibus quo eos soluta dolores consectetur. Et nobis quasi perspiciatis voluptatem nihil. Eum cupiditate et repellendus eos fugiat.', '2019-10-15 08:53:08'),
(185, 44, 46, 2, 'Voluptates labore iure recusandae. Aperiam quo saepe quos recusandae. Doloremque rem et ipsam voluptatum consequatur.', '2019-11-08 17:54:07'),
(186, 44, 45, 8, 'Quibusdam laudantium amet pariatur eum adipisci sit omnis. Quo illo qui voluptas quae quasi enim. Commodi atque labore corrupti vel est et omnis eum.', '2019-02-07 23:56:21'),
(187, 40, 46, 5, 'Doloremque impedit non impedit soluta nihil voluptatibus aliquid. Recusandae et minus non officia hic omnis doloremque.', '2019-06-20 20:42:32'),
(188, 37, 44, 0, 'Rerum voluptates voluptatum consequatur repellendus non nisi assumenda. Error qui officiis veniam neque.', '2019-12-17 22:16:15'),
(189, 42, 43, 5, 'Qui quia velit quia. Cumque molestias maiores perspiciatis officiis. Est id ratione et maiores consequatur. Voluptates aspernatur assumenda ad.', '2019-03-14 21:24:16'),
(190, 40, 38, 6, 'Numquam quod iure repellendus qui. Fugiat quia tempore doloremque officiis. Vel consequatur dignissimos exercitationem. Fuga minus enim magni qui pariatur aut voluptatem.', '2019-10-18 05:12:11'),
(191, 38, 45, 3, 'In eligendi sit iusto esse. Assumenda reiciendis velit nostrum. Vero iusto ab beatae ullam accusamus sed quam qui. Dolor sed nisi voluptas aliquam rem. Ratione earum omnis veritatis consequatur ea.', '2019-10-29 18:24:28'),
(192, 44, 38, 2, 'Iste vel libero eius. Sequi modi aut omnis sunt eligendi. Expedita debitis natus nesciunt accusamus tempore. Similique quod molestiae explicabo vel voluptas soluta a.', '2019-10-24 02:47:10'),
(193, 38, 45, 3, 'Aut sed quis est maiores sit. Omnis in quo recusandae excepturi. Quo quia est ad consequatur quibusdam. Autem aut labore quisquam voluptates est. Animi rerum ex consequatur.', '2019-08-03 06:35:34'),
(194, 37, 41, 10, 'Magni qui in voluptatem sed qui enim aut. Modi culpa eum qui voluptas. Laborum rem quia aut reprehenderit voluptatibus. Commodi perspiciatis vitae enim aut accusamus sunt. Ratione unde corporis aut.', '2019-03-22 23:33:39'),
(195, 39, 38, 4, 'Porro voluptatem sed aut enim. Quos voluptatum ut accusantium consequatur adipisci. Nostrum corporis aut et aliquam. Perferendis et rerum et. Assumenda unde voluptas expedita est et vitae.', '2019-02-18 20:04:55'),
(196, 39, 46, 0, 'Dolores dolor ad ut earum veritatis. Eos incidunt et aut ea est omnis et. Facilis repellat blanditiis nihil praesentium rerum.', '2019-05-03 03:48:21'),
(197, 45, 42, 10, 'Et vitae occaecati quasi. Libero doloribus ex voluptas.', '2019-07-11 07:16:56'),
(198, 43, 41, 9, 'Fuga recusandae nam placeat libero sint et fuga. Veritatis a quam vitae id natus quisquam. Aspernatur magni eius dolor maiores ea voluptatum quidem. Expedita enim culpa aut optio nihil officiis.', '2019-09-03 08:14:35'),
(199, 40, 37, 5, 'Tenetur atque ut a quo molestias voluptatibus. Corporis placeat ratione sed molestias. Delectus quia qui fuga quidem sed rerum et. Cum aut quisquam et aut.', '2019-05-03 17:39:58');

-- --------------------------------------------------------

--
-- Structure de la table `photo`
--

DROP TABLE IF EXISTS `photo`;
CREATE TABLE IF NOT EXISTS `photo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `photo_1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo_2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo_3` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo_4` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo_5` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `photo`
--

INSERT INTO `photo` (`id`, `photo_1`, `photo_2`, `photo_3`, `photo_4`, `photo_5`) VALUES
(52, 'https://lorempixel.com/600/600/?79754', 'https://lorempixel.com/600/600/?43021', 'https://lorempixel.com/600/600/?67898', 'https://lorempixel.com/200/200/?19370', 'https://lorempixel.com/200/200/?11084'),
(53, 'https://lorempixel.com/600/600/?57010', 'https://lorempixel.com/600/600/?39270', 'https://lorempixel.com/600/600/?25356', NULL, NULL),
(54, 'https://lorempixel.com/600/600/?11202', 'https://lorempixel.com/600/600/?16192', 'https://lorempixel.com/600/600/?17120', 'https://lorempixel.com/200/200/?11064', 'https://lorempixel.com/200/200/?39317'),
(55, 'https://lorempixel.com/600/600/?15320', 'https://lorempixel.com/600/600/?92160', 'https://lorempixel.com/600/600/?26310', 'https://lorempixel.com/200/200/?73819', NULL),
(56, 'https://lorempixel.com/600/600/?69236', 'https://lorempixel.com/600/600/?11253', 'https://lorempixel.com/600/600/?79221', 'https://lorempixel.com/200/200/?14237', 'https://lorempixel.com/200/200/?13352'),
(57, 'https://lorempixel.com/600/600/?31073', 'https://lorempixel.com/600/600/?11513', 'https://lorempixel.com/600/600/?16566', 'https://lorempixel.com/200/200/?31082', 'https://lorempixel.com/200/200/?11176'),
(58, 'https://lorempixel.com/600/600/?71767', 'https://lorempixel.com/600/600/?57427', 'https://lorempixel.com/600/600/?98221', NULL, NULL),
(59, 'https://lorempixel.com/600/600/?38123', 'https://lorempixel.com/600/600/?75763', 'https://lorempixel.com/600/600/?50378', 'https://lorempixel.com/200/200/?57348', 'https://lorempixel.com/200/200/?51287'),
(60, 'https://lorempixel.com/600/600/?88588', 'https://lorempixel.com/600/600/?90447', 'https://lorempixel.com/600/600/?67198', 'https://lorempixel.com/200/200/?86402', 'https://lorempixel.com/200/200/?47488'),
(61, 'https://lorempixel.com/600/600/?69660', 'https://lorempixel.com/600/600/?22636', 'https://lorempixel.com/600/600/?10159', 'https://lorempixel.com/200/200/?83315', 'https://lorempixel.com/200/200/?16781'),
(62, 'https://lorempixel.com/600/600/?91439', 'https://lorempixel.com/600/600/?20638', 'https://lorempixel.com/600/600/?24951', NULL, NULL),
(63, 'https://lorempixel.com/600/600/?40701', 'https://lorempixel.com/600/600/?25065', 'https://lorempixel.com/600/600/?90179', 'https://lorempixel.com/200/200/?34106', 'https://lorempixel.com/200/200/?46135'),
(64, 'https://lorempixel.com/600/600/?29102', 'https://lorempixel.com/600/600/?88645', 'https://lorempixel.com/600/600/?65152', 'https://lorempixel.com/200/200/?56100', 'https://lorempixel.com/200/200/?70282'),
(65, 'https://lorempixel.com/600/600/?86211', 'https://lorempixel.com/600/600/?51212', 'https://lorempixel.com/600/600/?11602', NULL, NULL),
(66, 'https://lorempixel.com/600/600/?85064', 'https://lorempixel.com/600/600/?52604', 'https://lorempixel.com/600/600/?20187', 'https://lorempixel.com/200/200/?20604', NULL),
(67, 'https://lorempixel.com/600/600/?71196', 'https://lorempixel.com/600/600/?90579', 'https://lorempixel.com/600/600/?19412', 'https://lorempixel.com/200/200/?54909', NULL),
(68, 'https://lorempixel.com/600/600/?16517', 'https://lorempixel.com/600/600/?76458', 'https://lorempixel.com/600/600/?58854', 'https://lorempixel.com/200/200/?99682', NULL),
(69, 'https://lorempixel.com/600/600/?59409', 'https://lorempixel.com/600/600/?20242', 'https://lorempixel.com/600/600/?84415', 'https://lorempixel.com/200/200/?58135', 'https://lorempixel.com/200/200/?71250'),
(70, 'https://lorempixel.com/600/600/?37548', 'https://lorempixel.com/600/600/?33201', 'https://lorempixel.com/600/600/?15920', 'https://lorempixel.com/200/200/?50505', 'https://lorempixel.com/200/200/?16406'),
(71, 'https://lorempixel.com/600/600/?75589', 'https://lorempixel.com/600/600/?67716', 'https://lorempixel.com/600/600/?32634', 'https://lorempixel.com/200/200/?96813', 'https://lorempixel.com/200/200/?78065'),
(72, 'https://lorempixel.com/600/600/?43034', 'https://lorempixel.com/600/600/?38492', 'https://lorempixel.com/600/600/?72468', NULL, NULL),
(73, 'https://lorempixel.com/600/600/?17035', 'https://lorempixel.com/600/600/?33006', 'https://lorempixel.com/600/600/?26327', 'https://lorempixel.com/200/200/?16931', 'https://lorempixel.com/200/200/?64784'),
(74, 'https://lorempixel.com/600/600/?79067', 'https://lorempixel.com/600/600/?63875', 'https://lorempixel.com/600/600/?29464', NULL, NULL),
(75, 'https://lorempixel.com/600/600/?20876', 'https://lorempixel.com/600/600/?63297', 'https://lorempixel.com/600/600/?26961', 'https://lorempixel.com/200/200/?16521', 'https://lorempixel.com/200/200/?78784'),
(76, 'https://lorempixel.com/600/600/?58485', 'https://lorempixel.com/600/600/?75876', 'https://lorempixel.com/600/600/?60820', 'https://lorempixel.com/200/200/?16527', NULL),
(77, 'https://lorempixel.com/600/600/?53159', 'https://lorempixel.com/600/600/?43567', 'https://lorempixel.com/600/600/?25811', 'https://lorempixel.com/200/200/?93226', 'https://lorempixel.com/200/200/?78359'),
(78, 'https://lorempixel.com/600/600/?16590', 'https://lorempixel.com/600/600/?82580', 'https://lorempixel.com/600/600/?52013', NULL, NULL),
(79, 'https://lorempixel.com/600/600/?38554', 'https://lorempixel.com/600/600/?67248', 'https://lorempixel.com/600/600/?93730', NULL, NULL),
(80, 'https://lorempixel.com/600/600/?39503', 'https://lorempixel.com/600/600/?79579', 'https://lorempixel.com/600/600/?42930', 'https://lorempixel.com/200/200/?55835', 'https://lorempixel.com/200/200/?49131'),
(81, 'https://lorempixel.com/600/600/?20418', 'https://lorempixel.com/600/600/?60608', 'https://lorempixel.com/600/600/?14724', 'https://lorempixel.com/200/200/?74809', NULL),
(82, 'https://lorempixel.com/600/600/?50984', 'https://lorempixel.com/600/600/?75087', 'https://lorempixel.com/600/600/?75670', 'https://lorempixel.com/200/200/?38805', 'https://lorempixel.com/200/200/?95392'),
(83, 'https://lorempixel.com/600/600/?66694', 'https://lorempixel.com/600/600/?55501', 'https://lorempixel.com/600/600/?91727', NULL, NULL),
(84, 'https://lorempixel.com/600/600/?76376', 'https://lorempixel.com/600/600/?20856', 'https://lorempixel.com/600/600/?67538', 'https://lorempixel.com/200/200/?74716', NULL),
(85, 'https://lorempixel.com/600/600/?94766', 'https://lorempixel.com/600/600/?78079', 'https://lorempixel.com/600/600/?95648', NULL, NULL),
(86, 'https://lorempixel.com/600/600/?81917', 'https://lorempixel.com/600/600/?66275', 'https://lorempixel.com/600/600/?76381', 'https://lorempixel.com/200/200/?10611', 'https://lorempixel.com/200/200/?50072'),
(87, 'https://lorempixel.com/600/600/?61008', 'https://lorempixel.com/600/600/?79933', 'https://lorempixel.com/600/600/?96934', 'https://lorempixel.com/200/200/?40604', 'https://lorempixel.com/200/200/?19162'),
(88, 'https://lorempixel.com/600/600/?49842', 'https://lorempixel.com/600/600/?94373', 'https://lorempixel.com/600/600/?87686', 'https://lorempixel.com/200/200/?20389', 'https://lorempixel.com/200/200/?77608'),
(89, 'https://lorempixel.com/600/600/?46630', 'https://lorempixel.com/600/600/?71524', 'https://lorempixel.com/600/600/?74178', 'https://lorempixel.com/200/200/?28031', 'https://lorempixel.com/200/200/?48259'),
(90, 'https://lorempixel.com/600/600/?59119', 'https://lorempixel.com/600/600/?21934', 'https://lorempixel.com/600/600/?45680', NULL, NULL),
(91, 'https://lorempixel.com/600/600/?53407', 'https://lorempixel.com/600/600/?66164', 'https://lorempixel.com/600/600/?36028', 'https://lorempixel.com/200/200/?55057', NULL),
(92, 'https://lorempixel.com/600/600/?72768', 'https://lorempixel.com/600/600/?30258', 'https://lorempixel.com/600/600/?57968', 'https://lorempixel.com/200/200/?36445', 'https://lorempixel.com/200/200/?60897'),
(93, 'https://lorempixel.com/600/600/?41995', 'https://lorempixel.com/600/600/?25422', 'https://lorempixel.com/600/600/?95320', 'https://lorempixel.com/200/200/?38620', 'https://lorempixel.com/200/200/?82648'),
(94, 'https://lorempixel.com/600/600/?47141', 'https://lorempixel.com/600/600/?91210', 'https://lorempixel.com/600/600/?13164', NULL, NULL),
(95, 'https://lorempixel.com/600/600/?90468', 'https://lorempixel.com/600/600/?21735', 'https://lorempixel.com/600/600/?40956', 'https://lorempixel.com/200/200/?29085', 'https://lorempixel.com/200/200/?35917'),
(96, 'https://lorempixel.com/600/600/?61850', 'https://lorempixel.com/600/600/?20387', 'https://lorempixel.com/600/600/?57032', 'https://lorempixel.com/200/200/?22706', 'https://lorempixel.com/200/200/?45656'),
(97, 'https://lorempixel.com/600/600/?37505', 'https://lorempixel.com/600/600/?57376', 'https://lorempixel.com/600/600/?85078', 'https://lorempixel.com/200/200/?96353', 'https://lorempixel.com/200/200/?47301'),
(98, 'https://lorempixel.com/600/600/?68411', 'https://lorempixel.com/600/600/?43364', 'https://lorempixel.com/600/600/?37241', NULL, NULL),
(99, 'https://lorempixel.com/600/600/?37377', 'https://lorempixel.com/600/600/?49784', 'https://lorempixel.com/600/600/?67050', 'https://lorempixel.com/200/200/?96553', NULL),
(100, 'https://lorempixel.com/600/600/?46315', 'https://lorempixel.com/600/600/?80955', 'https://lorempixel.com/600/600/?74076', 'https://lorempixel.com/200/200/?31317', 'https://lorempixel.com/200/200/?60591');

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pseudo` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nom` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prenom` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telephone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `civilite` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL,
  `roles` json NOT NULL,
  `date_enregistrement` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id`, `pseudo`, `password`, `nom`, `prenom`, `telephone`, `email`, `civilite`, `roles`, `date_enregistrement`) VALUES
(37, 'user0', '$argon2id$v=19$m=65536,t=4,p=1$S09SOVhSZWVjSVBYb1FmNw$0WZ0i9VlkF6YR49xVvMSiXBP1Wa19QZpSarX39wqFWQ', 'Georges', 'Roy', '0270389151', 'dschneider@pelletier.net', 'h', '[\"ROLE_USER\", \"ADMIN\"]', '2019-12-15 14:13:55'),
(38, 'user1', '$argon2id$v=19$m=65536,t=4,p=1$a2FaVUhqN1hUcUxPQjF2SQ$jd4aWFBys9UUyTSu5pqKJhbq/yFikpAa9FJ2Y3YU0ds', 'Susanne', 'Hoarau', '+33 6 05 66 82 75', 'gilbert02@noos.fr', 'f', '[\"ROLE_USER\"]', '2019-10-30 22:43:59'),
(39, 'user2', '$argon2id$v=19$m=65536,t=4,p=1$ZGkwY0twOUVGMTYzNUxDMQ$qKyLlYnPF7xJRvDjRJHT7fdWs2UwI4aJO2EducNuXO4', 'Michèle', 'Maury', '0897916807', 'lefevre.roger@bernard.com', 'h', '[\"ROLE_USER\", \"ADMIN\"]', '2019-10-13 21:30:47'),
(40, 'user3', '$argon2id$v=19$m=65536,t=4,p=1$ZjM4Q1FQNEtJQnhiRUw4aA$/kqlvXBJpXI2cl50fW9RVXADMkgqgtyHPng2PT69GRs', 'Martin', 'Dupuy', '0273267460', 'valerie.gillet@rodriguez.com', 'm', '[\"ROLE_USER\"]', '2019-06-16 07:58:14'),
(41, 'user4', '$argon2id$v=19$m=65536,t=4,p=1$VTNVaC9UWTUwZWJzMHZUTA$txRD7kTRl0cKohCtU/mke5UDTvtaU6mNVO7HvAJ9AWs', 'Philippe', 'Delahaye', '+33 2 08 38 93 47', 'zacharie00@weiss.net', 'm', '[\"ROLE_USER\"]', '2018-12-31 20:13:50'),
(42, 'user5', '$argon2id$v=19$m=65536,t=4,p=1$amRkLk1pMnFRZEFqaEY5dw$H9vPpUajv8EjFceW1jkmbZ3tYsMth8E5qmluceHF9Lk', 'Daniel', 'Morvan', '+33 (0)2 22 70 28 52', 'veronique.gosselin@boutin.com', 'f', '[\"ROLE_USER\"]', '2019-06-08 03:36:46'),
(43, 'user6', '$argon2id$v=19$m=65536,t=4,p=1$VzlnQUs4VVZNTlZYZzJ1QQ$b/SswhwD32K6S3/oyy0L7TylhiwqFc9kspEMPLmUD38', 'Isabelle', 'Simon', '+33 (0)6 63 16 78 52', 'ycoulon@bruneau.fr', 'm', '[\"ROLE_USER\"]', '2019-01-26 11:37:55'),
(44, 'user7', '$argon2id$v=19$m=65536,t=4,p=1$Z2JuQmJMMi9POUdLMGlFNQ$i5cgqZcc+9UEfTxPtzWYpgsHcHnmOx8F2Jiq/7xBfbE', 'Gilles', 'Lemaitre', '08 95 25 80 76', 'frederic.petitjean@dufour.fr', 'f', '[\"ROLE_USER\"]', '2019-04-03 04:42:00'),
(45, 'user8', '$argon2id$v=19$m=65536,t=4,p=1$QmlveFBsM0F2LmFHbzZPLg$aSgrRPNA4my6SmmNTvi3o4F4e2BdpExkeyTbc+1nRjM', 'Hortense', 'Lambert', '+33 (0)9 27 58 63 79', 'gros.margaux@boulay.fr', 'f', '[\"ROLE_USER\"]', '2019-10-18 09:54:23'),
(46, 'user9', '$argon2id$v=19$m=65536,t=4,p=1$bVNucGZXb0J3My5OVWl2MQ$Zxl8zkb+S/Y7u7tu47Wc9dLACUxipSLD32bOZDEvgas', 'Alexandria', 'Delahaye', '03 30 10 12 85', 'marine.didier@tele2.fr', 'f', '[\"ROLE_USER\"]', '2019-03-12 10:40:53'),
(47, 'admin0', '$argon2id$v=19$m=65536,t=4,p=1$aWp2dzZMcU1DSTZkVm9zdg$mKxizEszH4JJIKlD4zvL3GePLMOxxj8gqxJqNbjUtdQ', 'Adrienne', 'Rodriguez', '+33 (0)2 15 48 98 84', 'pascal.theodore@bouygtel.fr', 'm', '[\"ROLE_ADMIN\"]', '2019-05-01 10:50:55'),
(48, 'admin1', '$argon2id$v=19$m=65536,t=4,p=1$SEVsL3NQamlCVE9vZXF3SA$S+OOb9bW4CyGHT45DFzOtLW0tjumtwDuztCVBWVi2sQ', 'Andrée', 'Leveque', '+33 3 60 80 90 07', 'leclercq.josephine@bouygtel.fr', 'm', '[\"ROLE_ADMIN\"]', '2019-12-05 15:10:29'),
(49, 'halima', '$argon2id$v=19$m=65536,t=4,p=1$dFc1b0p3RkFQS2lTLlI0YQ$b3835Rv3c/sdR2pDJJC41ib9tw/FSjRDbGNeZwcocv8', 'halima', 'halima', '0122222222', 'halima@gmail.com', 'f', '[\"ADMIN\"]', '2019-12-20 12:02:38'),
(52, 'halima', '$argon2id$v=19$m=65536,t=4,p=1$SXhidWZFdnl1UnRBalVMVQ$Z0uXrL2i3cRK6K7eDip0ZjdAXIbb+La0AJdlJUfcmhM', 'halima', 'halima', '0633333333', 'halima1@gmail.com', 'f', '[]', '2019-12-20 20:49:18'),
(53, 'halima', '$argon2id$v=19$m=65536,t=4,p=1$b0NocVd3VnZnVS43S05aZQ$ScZzoQqEPJzThIngzmf64rA6zQMyVdzycz80C0jSyH0', 'halima', 'halima', '0633333333', 'halima2@gmail.com', 'f', '[]', '2019-12-20 20:53:43');

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `annonce`
--
ALTER TABLE `annonce`
  ADD CONSTRAINT `FK_F65593E52E45A019` FOREIGN KEY (`id_photo_id`) REFERENCES `photo` (`id`),
  ADD CONSTRAINT `FK_F65593E579F37AE5` FOREIGN KEY (`id_user_id`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `FK_F65593E59F34925F` FOREIGN KEY (`id_categorie_id`) REFERENCES `categorie` (`id`),
  ADD CONSTRAINT `FK_F65593E5BA9CD190` FOREIGN KEY (`commentaire_id`) REFERENCES `commentaire` (`id`);

--
-- Contraintes pour la table `commentaire`
--
ALTER TABLE `commentaire`
  ADD CONSTRAINT `FK_67F068BC2D8F2BF8` FOREIGN KEY (`id_annonce_id`) REFERENCES `annonce` (`id`),
  ADD CONSTRAINT `FK_67F068BC79F37AE5` FOREIGN KEY (`id_user_id`) REFERENCES `user` (`id`);

--
-- Contraintes pour la table `note`
--
ALTER TABLE `note`
  ADD CONSTRAINT `FK_CFBDFA1414C067F0` FOREIGN KEY (`id_user2_id`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `FK_CFBDFA14675C81E` FOREIGN KEY (`id_user1_id`) REFERENCES `user` (`id`);
--
-- Base de données :  `kitkat`
--
CREATE DATABASE IF NOT EXISTS `kitkat` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `kitkat`;
--
-- Base de données :  `kritik`
--
CREATE DATABASE IF NOT EXISTS `kritik` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `kritik`;

-- --------------------------------------------------------

--
-- Structure de la table `artist`
--

DROP TABLE IF EXISTS `artist`;
CREATE TABLE IF NOT EXISTS `artist` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=334 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `artist`
--

INSERT INTO `artist` (`id`, `name`, `description`) VALUES
(284, 'MC Denis', 'Il ne.'),
(285, 'DJ Jean .', '.'),
(286, 'DJ Jacques & The Pasquier', 'Léon.'),
(287, 'Lil Paulette', 'Je veux.'),
(288, 'DJ Frédéric aka sanchez', 'Bovary.'),
(289, 'Lil Constance De temps.', 'À côté!.'),
(290, 'MC Denis & The De Sousa', 'Rouen.'),
(291, 'DJ Grégoire Changer.', 'Mais.'),
(292, 'MC Timothée & The Ramos', '.'),
(293, 'Jeanne', 'VIII Le.'),
(294, 'Lil Gérard & The Joly', 'Elle se.'),
(295, 'DJ Marc & The Adam', 'Puis.'),
(296, 'Louis & The Legendre', 'Emma lui.'),
(297, 'Lil Guillaume', 'Puis.'),
(298, 'DJ Hortense aka texier', '.'),
(299, 'Arthur aka allain', 'Un jour.'),
(300, 'MC Gilles .', 'Qu\'il.'),
(301, 'Lil Guy & The Lacroix', 'À ce.'),
(302, 'MC Margot', 'Elle.'),
(303, 'Lil Camille', 'Barbe.'),
(304, 'DJ Nathalie aka couturier', 'Tout au.'),
(305, 'Lil Léon Bon.', 'Ils ne.'),
(306, 'DJ Véronique & The Regnier', 'Bovary.'),
(307, 'MC Claudine & The Bourdon', 'Elle.'),
(308, 'David', 'On.'),
(309, 'DJ Océane & The Buisson', 'Crois-tu.'),
(310, 'Lil Astrid Le grand.', 'Charles.'),
(311, 'MC Valentine', 'Mal.'),
(312, 'Susanne aka raymond', '.'),
(313, 'Lil Anouk .', 'Le.'),
(314, 'Josette Elle.', 'Une.'),
(315, 'Emmanuel & The Baron', 'Il le.'),
(316, 'Lil Simone & The Guyot', 'La salle.'),
(317, 'Inès', 'Bovary.'),
(318, 'MC Yves Bien.', '.'),
(319, 'Geneviève aka michaud', 'M.'),
(320, 'MC Benoît aka vaillant', 'La plate.'),
(321, 'Hélène aka klein', 'Quel bon.'),
(322, 'MC Suzanne La.', 'Homais.'),
(323, 'Lil Hugues Tout à.', 'Mais.'),
(324, 'Théodore', 'Charles.'),
(325, 'Lil Denis aka bourdon', 'France.'),
(326, 'Lil Dorothée', 'Je suis.'),
(327, 'MC Noël & The Labbe', 'Rouault.'),
(328, 'Claude', 'Mais.'),
(329, 'Léon L\'un.', '.'),
(330, 'Olivie & The Rossi', 'Charles.'),
(331, 'Lil Benjamin Vous.', 'Des.'),
(332, 'Lil Jérôme aka gilbert', 'Madame.'),
(333, 'Lil Timothée aka lucas', 'Ce fut.');

-- --------------------------------------------------------

--
-- Structure de la table `label`
--

DROP TABLE IF EXISTS `label`;
CREATE TABLE IF NOT EXISTS `label` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=151 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `label`
--

INSERT INTO `label` (`id`, `name`) VALUES
(126, 'asimon Records'),
(127, 'jacques.daniel Productions'),
(128, 'lorraine22 Records'),
(129, 'rbesson'),
(130, 'chevallier.margaret Productions'),
(131, 'tristan90'),
(132, 'lorraine.briand'),
(133, 'dasilva.hugues'),
(134, 'tleclercq Records'),
(135, 'wremy'),
(136, 'lejeune.emilie Productions'),
(137, 'rfaure Productions'),
(138, 'alfred40 Records'),
(139, 'kjacques Records'),
(140, 'astrid.royer'),
(141, 'tristan94 Productions'),
(142, 'marguerite.hoareau Productions'),
(143, 'dtanguy Records'),
(144, 'margaret76'),
(145, 'legrand.francoise Records'),
(146, 'berger.william Records'),
(147, 'cdidier Productions'),
(148, 'rolland.roger'),
(149, 'xdelmas Records'),
(150, 'bernard.tessier Productions');

-- --------------------------------------------------------

--
-- Structure de la table `migration_versions`
--

DROP TABLE IF EXISTS `migration_versions`;
CREATE TABLE IF NOT EXISTS `migration_versions` (
  `version` varchar(14) COLLATE utf8mb4_unicode_ci NOT NULL,
  `executed_at` datetime NOT NULL COMMENT '(DC2Type:datetime_immutable)',
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `migration_versions`
--

INSERT INTO `migration_versions` (`version`, `executed_at`) VALUES
('20191208002734', '2019-12-08 00:27:39'),
('20191211102835', '2019-12-12 15:35:33'),
('20191212142841', '2019-12-12 14:28:50'),
('20191212153443', '2019-12-12 15:38:12');

-- --------------------------------------------------------

--
-- Structure de la table `note`
--

DROP TABLE IF EXISTS `note`;
CREATE TABLE IF NOT EXISTS `note` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `record_id` int(11) NOT NULL,
  `value` int(11) NOT NULL,
  `comment` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_CFBDFA14A76ED395` (`user_id`),
  KEY `IDX_CFBDFA144DFD750C` (`record_id`)
) ENGINE=InnoDB AUTO_INCREMENT=430 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `note`
--

INSERT INTO `note` (`id`, `user_id`, `record_id`, `value`, `comment`, `created_at`) VALUES
(1, 277, 301, 2, NULL, '2019-11-10 01:19:33'),
(2, 268, 301, 5, 'Ils avisèrent donc, le père Rouault étant paralysé, ce fut comme le doigt, femmes en toilette fine, charmante et sentant vaguement circuler autour d\'elle un murmure de la chemise, un peu de.', '2019-11-22 16:16:42'),
(3, 265, 301, 7, 'Tuvache, avait encore d\'autres raisons pour s\'en détacher: il était partisan du progrès, il conçut cette idée patriotique que Yonville, pour se calmer. -- Quel fanatisme! exclama le pharmacien.', '2019-10-07 05:30:12'),
(4, 292, 301, 1, NULL, '2019-04-16 02:55:09'),
(5, 290, 301, 6, 'Ne sont-elles pas la peine de s\'ennuyer au couvent une vieille fille qui venait de vomir sur sa tête. Un matin, le père Rouault envoyait son dinde, en souvenir de Rodolphe, tombée à terre entre des.', '2019-03-06 00:51:52'),
(6, 300, 301, 6, 'C\'était une manière nouvelle de la richesse, il s\'était détourné sur le banc de velours contre la glace. -- Approche le vase! exclama Charles. -- Moi, à votre disposition; serviteur très humble! Et.', '2019-02-25 16:06:15'),
(7, 271, 301, 4, 'Elle demanda sa maman. On lui avait tout autour du cou, et, l\'ayant ainsi remontée jusqu\'aux chevilles, elle tendit à Charles, il prit un et mordit à même. -- Ah! faites! faites! sauvez-la... Puis.', '2019-06-10 11:37:43'),
(8, 267, 301, 1, 'On se rangea tout autour; et, tandis qu\'il s\'assoupissait à ses oreilles, attentif comme au dégoût d\'un autre monde. Mais une rafale de vent fit se courber les peupliers, se ralentissant de temps à.', '2019-05-03 03:03:37'),
(9, 290, 302, 1, 'Sa volonté, comme le strabisme, le chloroforme et la voix de M. Guillaumin, commençait à m\'amuser. -- Au reste, reprit le clerc, il donnera bientôt une autre représentation. Mais Charles ne céda.', '2019-09-29 04:51:10'),
(10, 273, 302, 2, 'Il attendait. Enfin elle répondit: -- Je suis pour la prévenir qu\'il se dérange, objecta Bovary. -- Ah! ma chère amie... Et il courut encore vers le village. Il suivait les laboureurs, et chassait.', '2019-06-17 20:54:31'),
(11, 284, 302, 8, 'Vous devez être, dit-il tout à l\'heure; mais, à l\'avenir, tranquillise-toi. Je ne veux pas faire le malheur de votre pensée. Soyez mon amie, ma soeur, mon ange! Et il la suivit. La clef qui enferme.', '2019-03-13 18:56:15'),
(12, 298, 302, 9, 'Des gouttes suintaient sur sa table. Mais le dénigrement de ceux que nous sommes! insensés!» Rodolphe s\'arrêta pour laisser passer un cheval noir, piaffant dans les ornières, le cri d\'une poule, au.', '2019-08-31 23:33:47'),
(13, 285, 302, 10, 'Il ne venait lui faire faire, à son clou dans mon laboratoire, la clef de sol, et s\'occupait volontiers de littérature après son mariage, la trouvait étendue à plat jusqu\'au haut de la montagne.', '2019-07-23 19:09:13'),
(14, 298, 303, 8, NULL, '2019-09-28 17:37:36'),
(15, 282, 303, 4, 'Mais les hommes, avec un mouvement ondé vers les tempes, lustrés par des rubans pâles ressemblant à sa place parmi les pauvres et pratiquant la vertu qui succombe. L\'église, comme un tourbillon sous.', '2019-09-28 23:44:29'),
(16, 291, 303, 10, 'Et aussitôt il ne revenait plus de patriotisme que dans le Bas-Diauville pour une affaire de son doigt, sur la couleur ambrée de l\'odalisque au bain; elle avait entendu la marquise appeler Berthe.', '2019-10-24 22:43:26'),
(17, 271, 303, 9, 'Qu\'aviez-vous donc? Pourquoi? Je n\'ai besoin de ménager M. Canivet, ayant retroussé ses manches, passa dans la maison du maréchal, au lieu d\'une, quantité d\'autres choses encore, et il se prit à son.', '2019-11-07 07:46:25'),
(18, 285, 303, 1, NULL, '2019-12-03 15:01:31'),
(19, 266, 303, 0, 'Sa chevelure rouge était entremêlée de brins de coton trempés d\'huile, et revint s\'asseoir près de la nourrice il fallait, dès le lendemain, tandis que le satin blanc de sa voix. Après un désespoir.', '2019-11-30 23:03:29'),
(20, 284, 303, 2, 'Du cidre, de sa gaieté. Enfin, ils songeraient à son service une jeune paysanne blonde. Elle saluait, rougissait, ne savait que répondre. -- D\'où vient que personne, jusqu\'à présent, ne laisse rien.', '2019-11-05 00:00:22'),
(21, 286, 303, 0, 'La pleine campagne remontait ensuite d\'un mouvement monotone, jusqu\'à toucher au loin dans le salon; il se tournait vers eux; ils se racontèrent les petits livres qu\'on lui voulait, et le corps du.', '2019-12-01 09:36:31'),
(22, 281, 304, 2, 'C\'est le quartier Latin, avec les manches, elle avait cette indéfinissable beauté qui résulte de la tête, ne tardait pas à l\'étourdir, et elle s\'habillait silencieusement pour ne pas payer.', '2019-01-30 08:58:13'),
(23, 297, 304, 9, 'Et il ne vous oublierai pas, croyez-le bien, et n\'y pensait plus. La maison était bien joyeux, lui aussi, le jour suivant. Il la subjuguait. Elle en avait payé qu\'un seul. Quant au manteau, -- elle.', '2019-06-11 03:25:36'),
(24, 295, 304, 2, 'L\'eau qui court pieds nus sur le tapis des tables; puis tout se confondit, des nuages passèrent; il lui parla, elle n\'entendit rien, et madame Bovary s\'était enfuie à travers ses doigts. Une saccade.', '2019-09-13 11:02:37'),
(25, 299, 304, 4, 'Il ajouta: -- Pensant même que M. Binet, malgré son respect pour les toilettes de Madame et pour éviter tout éclaircissement, il se mordait les lèvres, puis se retira de pension, on ne doit pas non.', '2019-04-04 06:45:34'),
(26, 265, 304, 2, 'Enfin Félicité soupira: -- Vous auriez dû parler de lui complaire. Il ne pouvait faire ce voyage, il offrir de se rafraîchir dans un appartement bien meublé, et, quant aux qualités corporelles, ne.', '2019-07-01 16:39:11'),
(27, 266, 305, 10, 'Emma lui écrivait tout à fait, et ne pouvait plus se passer de toi, reste à ravauder des chaussettes. Et on l\'estimait davantage pour cet homme qui ne tarderait pas, sans doute? car nous sommes.', '2019-11-29 05:25:14'),
(28, 300, 305, 8, 'Homais en savait quelque chose, à votre place, j\'aurais un tour! -- Mais pardon, dit-elle, j\'ai tort! je vous écrivais des lettres qu\'ensuite je déchirais. Elle ne savait pas au château outrepasser.', '2019-06-07 05:49:42'),
(29, 298, 305, 7, 'Puis l\'orgueil, la joie des lauréats en traits dithyrambiques. Le père Rouault les fit reconduire dans sa couleur bleue. Au-dessus de la vapeur des passions qu\'elle leur supposait. Son amour.', '2019-05-17 06:51:49'),
(30, 293, 306, 5, 'Moi, je trouve, dit M. Lheureux (s\'adressant au pharmacien, tout en poussant son aiguille. Elle contait des histoires, s\'entretenait avec lui pendant un quart d\'heure après: -- Sors-tu ce soir?.', '2019-06-19 15:12:47'),
(31, 281, 306, 8, NULL, '2019-06-18 14:18:08'),
(32, 295, 306, 2, 'Bertaux lui arriva. Elle et son cuisinier! Tous ces grands artistes brûlent la chandelle par les pluies, montre toujours aux passants sa frisure de caniche. Le soir de la scène, tout en large, dans.', '2019-06-26 18:49:16'),
(33, 294, 306, 2, 'Le souvenir du Vicomte revenait toujours dans sa même pose, la taille en s\'écriant: -- Au moins, si un de ses deux bras, dans une grande malle attachée par derrière les livres. Rodolphe s\'installait.', '2019-07-04 22:57:07'),
(34, 280, 306, 3, 'Il lui faut toujours sa place parmi les jarres brunes pleines de sable et de chatteries babillardes. Dans l\'isolement de sa robe encore accrochée au pied d\'un arbre, je pleurais, j\'appelais le bon.', '2019-01-28 13:36:54'),
(35, 268, 306, 2, 'Elle lut: «Jean-Antoine d\'Andervilliers d\'Yverbonville, comte de la noce; on se moquerait de toi, reste à ta place, moi, j\'en trouverais bien! -- Où est-ce donc, maman? Et comme le père Bovary.', '2019-06-20 06:48:28'),
(36, 280, 307, 5, NULL, '2019-11-24 07:50:44'),
(37, 279, 307, 4, 'Annette! n\'oublie pas mes recommandations, tu t\'en repentiras peut-être. -- Jamais! fit-elle impétueusement. Et, en effet, tant prodigué les offices, les retraites, les neuvaines et les personnages.', '2019-10-30 04:46:03'),
(38, 268, 307, 5, NULL, '2019-07-30 20:06:04'),
(39, 274, 307, 0, 'Madame, sans doute, revenu chez lui, Rodolphe s\'assit brusquement à son approche, se fussent avancées pour les oiseaux; la fontaine, au milieu, gargouillait, et, sous de larges parapluies, parmi des.', '2019-08-30 02:40:11'),
(40, 278, 307, 4, 'Rodolphe la gagnèrent. L\'amour l\'avait enivrée d\'abord, et elle s\'habillait silencieusement pour ne pas perdre une seule écharpe de couleur, qui ondulait dans la journée à se rafraîchir, et il la.', '2019-12-09 23:08:22'),
(41, 270, 307, 4, 'L\'idée de revoir les lieux où s\'était passée sa jeunesse l\'exaltait sans doute, c\'était la volonté du Seigneur, et profiter vite de sa beauté, avant les vacances, passer son examen. Lorsque le.', '2019-08-27 10:59:36'),
(42, 272, 307, 5, 'Souvent il se sentait de plus lamentable, n\'est-ce pas, demain, à six heures? Charles se réveillait en d\'autres jours, des phrases qu\'il avait fait dresser les quatre couverts. Homais demanda.', '2019-10-31 17:22:45'),
(43, 300, 307, 7, 'Il arriva un jour chassant l\'autre, un printemps sur un album. C\'était le carrefour d\'un bois, avec une dignité de marquise, en lui disant: -- Excusez-moi, madame. Puis, remontée chez elle, Emma se.', '2019-08-14 16:39:26'),
(44, 277, 308, 5, 'Puis on distinguait son visage pâlissait le lasting de sa femme. À mesure que le paroxysme est passé. -- Oui, elle repose un peu lasse? On est si doux, parmi les espaces d\'une mélancolie sans.', '2019-09-15 06:25:58'),
(45, 283, 308, 1, 'Cinq ans plus tard à son pot d\'empois. Va-t\'en plutôt piler des amandes; tu es folle! -- Pas encore; mais je n\'ai pu vous voir, ah! du moins j\'ai bien peur de paraître ridicule, Emma voulut, avant.', '2019-12-12 04:41:47'),
(46, 297, 308, 1, 'Un danseur passait. -- Que cherchez-vous? demanda le professeur. -- Ma cravache, s\'il vous plaît, avec les actrices! Du reste, il n\'en saurait pas moins sa besogne, aidé par une file de charrettes.', '2019-10-04 21:57:55'),
(47, 264, 308, 10, NULL, '2019-10-15 21:33:16'),
(48, 290, 308, 9, 'Science, puis s\'opposent à ce nom, qui la regardait de près, fixement. Elle distinguait dans ses prières.» La mèche le cinglait sur ses biens, mais en lui disant: -- Quel tas de farceurs, messieurs.', '2019-09-06 23:51:14'),
(49, 286, 308, 8, 'Quelque chose de blanc, plié en triangle. Une jeune personne blonde se tenait les bras dans des lettres bien tournées, qui ne rapportait pas grand-chose. Cela dépendait autrefois d\'une petite ferme.', '2019-08-31 09:11:53'),
(50, 287, 308, 7, 'Seltz... Homais leur donna des conseils; il embrassa sa fille qu\'il ne fût pas habile, et quelle satisfaction pour elle que la cause publique, plus d\'intelligence en un chignon abondant, avec un.', '2019-10-18 03:25:49'),
(51, 274, 308, 7, NULL, '2019-12-05 19:37:53'),
(52, 279, 309, 5, 'Yonvillais eurent tous entendu son histoire d\'arsenic qu\'elle avait pris garde; il fallut reconnaître qu\'il n\'avait pu guérir avec sa bouche lorsque parut un domestique, avertissant Monsieur qu\'on.', '2019-11-16 13:38:23'),
(53, 271, 309, 0, 'Ensuite elle alla dans l\'écurie deux animaux, d\'où je conclus que le Lion d\'or lui en faire tomber en cascades, de sa chaise, elle se revoyait là- bas, au milieu du jour, Emma courut chez Homais.', '2019-12-05 20:05:47'),
(54, 293, 309, 0, 'Mais, lorsqu\'elle passait auprès (si Bovary se chargeait même de fournir la machine pour l\'opération. Emma avait eu l\'idée de cette taille à la table des bonnes soeurs, et faisait sourire sa bouche.', '2019-12-13 02:20:18'),
(55, 266, 309, 2, NULL, '2019-11-08 15:51:45'),
(56, 278, 309, 8, 'Bovary. -- Ni moi! reprit vivement M. Homais, près des fenêtres laissaient passer doucement une lourde lumière blonde. Emma tâtonnait en clignant des yeux, tandis que le drap où s\'enfonçaient ses.', '2019-11-14 05:01:48'),
(57, 288, 309, 7, 'Il cria, pleura, s\'évanouit, mais elle eut l\'air de quelqu\'un qui se dressent du fond en cahotant. Quelques bourgeois d\'Yonville arrivèrent sur la table, l\'ayant d\'ailleurs torréfié lui-même.', '2019-11-21 00:51:40'),
(58, 263, 310, 7, 'Et, sans s\'arrêter, par la route d\'Abbeville et celle des hommes, celle qui porte à rêver. -- Connaissez-vous les Italiens? -- Pas un poil ne dépassait la ligne de son outil, comme une corde de.', '2019-09-14 23:53:14'),
(59, 298, 310, 4, NULL, '2019-08-05 04:20:46'),
(60, 281, 311, 8, 'Vierge parmi les tourbillons bleuâtres de l\'encens qui montait. Alors un attendrissement la saisit; elle se tournait, au contraire, afin de ne pas tomber. -- Quel imbécile je suis! fit-il en jurant.', '2019-10-17 02:35:43'),
(61, 270, 311, 8, 'Après la cour un cabriolet, et, pressant le palefrenier, l\'encourageant, s\'informant à toute félicité, la cause cesse... -- L\'effet doit cesser, dit Homais; c\'est évident. -- Mais les leçons.', '2019-11-12 21:34:30'),
(62, 291, 311, 5, 'Hippolyte, il fallait allumer la lampe. Mais il ne trouva rien. Quand tout fut fini au cimetière, Charles rentra chez lui. Il l\'avait plantée là pour la reprendre. Un voisin la fit haleter de.', '2019-10-25 18:41:08'),
(63, 299, 311, 6, 'Quand son ouvrage était fini, et ils se chauffèrent dans la campagne. Sa mère en fut indigné, se lança même dans son tonneau, il s\'applaudissait de son silence, comme il la rêvait; c\'était toujours.', '2019-11-05 09:55:17'),
(64, 278, 311, 8, NULL, '2019-09-19 18:45:19'),
(65, 266, 311, 5, 'Oh! finissez! murmura-t-elle, croyant entendre dans l\'allée un bruit d\'étincelles. C\'était la quatrième était celle-ci; et chacune s\'était trouvée faire dans sa chambre. Elle lui donna son bras. Il.', '2019-10-20 00:08:22'),
(66, 284, 311, 8, 'Je n\'ai besoin de dévouement qu\'il ne se doutait point que l\'on jouait ailleurs sur les lacs, tous les matins, en allant voir ses membres. Elle déclarait adorer les enfants; c\'était sa consolation.', '2019-10-05 21:17:57'),
(67, 295, 311, 9, 'Aujourd\'hui donc, il fallait connaître d\'abord quelle espèce de tuyau tronqué, de cage oblongue, de cheminée à jour, qui se perdait en conjectures. Enfin Charles, ayant bouclé son malade dans le.', '2019-10-26 13:22:45'),
(68, 286, 312, 8, 'Emma, le menton baissé, et lui énumérait les uns après les papillons jaunes, donnait la chasse aux musaraignes; ou mordillait les coquelicots sur le Cours, trotta doucement, au milieu de la pommade.', '2019-06-07 08:37:22'),
(69, 273, 312, 3, 'L\'Aveugle s\'écria-t-elle. Et Emma quotidiennement attendait, avec une douceur aussi profonde. Son âme, courbatue d\'orgueil, se reposait enfin dans la longue ligne des femmes qui tenaient des paniers.', '2019-10-15 13:00:21'),
(70, 269, 312, 7, 'Oh! n\'importe, tôt ou tard, cette ardeur (c\'est là le bruit des rues, il y avait la tête dans ses bras roidis tout ce que l\'on croit voir, et qu\'il ne les réveilla point. C\'était la première.', '2019-04-07 02:56:06'),
(71, 265, 312, 8, 'Une boîte en coquillages décorait la commode; et, sur le dos appuyé contre le marbre. -- Je l\'aime pourtant! se disait-elle. Et il la reforçait, elle se retira dans la montagne avec les professeurs.', '2019-11-19 13:16:40'),
(72, 279, 312, 8, 'Il se recula bien loin en s\'écriant: -- Madame! madame! s\'écria Félicité en entrant, ne les reprendrait pas; d\'ailleurs, ce serait contrarier Madame dans sa vie: elle fut longue à manger; tout lui.', '2019-04-12 15:32:36'),
(73, 271, 312, 2, 'Il ne se parlaient plus; mais ils n\'avaient sans doute calomnié. Mais le cidre, pendant sa convalescence, elle s\'occupa beaucoup à chercher un gargotier à Neufchâtel! Et pour qui? pour des vachers!.', '2019-05-04 00:04:01'),
(74, 272, 313, 8, 'Des garçons en gaieté qui dansaient sous les pommiers, et elle crut presque apercevoir son père s\'impatienta; elle ne répondait pas, la bonne femme serait rentrée par une nuit qu\'il ventait fort.', '2019-11-19 01:22:55'),
(75, 291, 314, 1, 'Hélas! ma pauvre femme aurait été heureuse!» Un jour qu\'errant sans but d\'abord, vagabondait au hasard, elle vagabonda. On la porta devant la maison du notaire, qui emmenait Léon à Rouen dans les.', '2019-11-06 07:05:15'),
(76, 297, 315, 4, 'Ce n\'est rien!... Ouvre la fenêtre..., j\'étouffe! Et elle se raccrochait de sa poitrine. Et puis, qui sait? En effet, la porte du laboratoire. Il y avait, dans une stalle du choeur, l\'un près de lui.', '2019-10-23 19:21:18'),
(77, 293, 315, 5, 'Et je ne me sens pas en mon assiette; il faudra pourtant garder son bonnet de coton, son foulard ne lui avaient paru si beaux dans les mains de dedans son bonnet de coton, lui apprit qu\'il y.', '2019-07-28 07:37:04'),
(78, 269, 315, 8, 'M. le Conseiller se leva. On savait maintenant qu\'il s\'appelait Lieuvain, et l\'on vit un spectacle affreux. Les formes du pied disparaissaient dans les beaux-arts des inquiétudes plus sérieuses. M.', '2019-08-19 12:37:11'),
(79, 288, 317, 2, 'Elle lui disait: -- Allons, mon pauvre enfant, et quelqu\'un qui a passé par des balustrades, en dérangea quelques-unes, et il en venait un autre, il partait une pauvre chandelle romaine; alors la.', '2019-04-22 23:40:35'),
(80, 293, 317, 1, NULL, '2019-08-02 11:21:25'),
(81, 290, 318, 0, 'Rodolphe réfléchit beaucoup à Yonville, par le bruit sec d\'un bâton ferré qui les égalisait. Prenant donc un parti pris de son coffre-fort le reçu de dix-huit cents francs, payable dans trois mois.', '2019-07-21 23:17:24'),
(82, 293, 318, 6, 'L\'hôtesse donc se mit à genoux; elle finit par faire la cour. -- Laisse-moi tranquille! disait-elle en déplaçant son pot d\'empois. Va-t\'en plutôt piler des amandes; tu es folle! -- Pas grand-chose.', '2019-11-14 17:33:47'),
(83, 294, 318, 10, NULL, '2019-12-04 09:52:31'),
(84, 280, 318, 7, 'Il se voyait déjà grand, beau, spirituel, distingué, attirant, tels qu\'ils étaient sans doute, bien qu\'il persistât cependant à travers la niaiserie du style et les immortels principes de 89! Aussi.', '2019-09-03 09:18:47'),
(85, 295, 319, 5, 'Et je ne sais quoi! Trouvez donc quelque chose, à votre disposition; serviteur très humble! Et il continuait à lui raconter cette histoire, qu\'elle savait par coeur de nouveau son ami jusqu\'à la.', '2019-11-09 13:16:04'),
(86, 266, 319, 10, 'La conviction où il s\'était assis. La rivière qui coulait, et, de temps à autre, on entendait toujours le crin-crin du ménétrier qui continuait cependant, mais d\'une manière vague. Pour s\'être.', '2019-10-10 18:39:36'),
(87, 287, 319, 2, NULL, '2019-11-13 04:27:11'),
(88, 282, 319, 8, 'Rodolphe, le soir, sur la campagne. -- Entrez, dit-elle; votre petite est là qui dort. La chambre, quand ils reviennent visiter leur village. Il s\'en débarrassa pourtant et courut avaler, à la.', '2019-11-22 09:02:10'),
(89, 288, 319, 1, 'M. Derozerays. Emma sauta dessus, l\'ouvrit. Il y rentra tout à fait; je regrette d\'être parti avant la prière, on faisait dans leur ménage, il voyait de loin un baiser; sa mère une longue corde.', '2019-12-02 16:21:43'),
(90, 267, 319, 2, 'On n\'entendait pas d\'oiseaux, tout semblait disparaître dans une pose langoureuse toute pleine de monde. On se laisse entraîner par ce qui l\'avait fait valser à la ferme, on s\'y obstine encore aux.', '2019-11-13 22:08:01'),
(91, 290, 319, 6, 'Il raccommodait ses joujoux, lui fabriquait des pantins avec du lait. Après avoir laissé à la Rouge-Mare, et place du village d\'où l\'on pouvait l\'apercevoir. Elle écoutait les pas, à cause de la.', '2019-11-22 12:00:08'),
(92, 286, 319, 10, NULL, '2019-11-20 02:13:47'),
(93, 296, 320, 3, 'Comme c\'était loin, tout au milieu de la côte Sainte-Catherine, comme des chevelures vertes abandonnées s\'étalaient dans sa maison de sa maladie, bien qu\'Emma n\'en eût jamais pris une seule écharpe.', '2019-11-12 05:06:47'),
(94, 278, 320, 8, 'Napoléon et Athalie, pour leur bonheur, se rencontrer. Mais, quand l\'Aveugle, comme d\'habitude, était silencieux, et Charles, bouleversé, attendit patiemment le retour de sa tête: c\'était la.', '2019-11-19 18:28:58'),
(95, 273, 320, 0, NULL, '2019-11-14 09:08:21'),
(96, 281, 321, 2, 'Mais, au contact de ses démarches, elle épiait son visage; les deux pieds sur les mains chaudes de tes yeux quelque chose était scabreuse et qu\'il lui reprochait, c\'était d\'écouter continuellement.', '2019-11-11 08:35:41'),
(97, 262, 321, 9, 'Puis ils avaient des robes à queue, de grands coups de bélier, s\'accéléraient l\'un après l\'autre, à intermittences inégales. Elle jetait les yeux écarquillés, la mâchoire ouverte. -- L\'amour.', '2019-07-03 11:28:38'),
(98, 289, 321, 3, 'Où allons-nous donc? Il ne faut pas toucher aux idoles: la dorure en reste aux mains. _Fabricando fil faber, age quod agis._ Il citait du latin, tant il se jeta dessus et s\'endormit. Bien que.', '2019-07-29 07:55:51'),
(99, 276, 321, 5, 'La vapeur du soir ou des Botocudos? Charles, cependant, avait essayé de la cuisine. Les enfants en chaussons couraient là comme des agneaux, vertueux comme on dit, une belle tête phrénologique, qui.', '2019-10-29 09:49:53'),
(100, 295, 321, 2, 'Et moi, donc! Oh! j\'ai bien souffert! Il répondit d\'un signe ceux qui, durant la semaine, voir son enfant, mais qu\'elle commençait à sentir cet accablement que vous êtes! Allons, soyons sage je le.', '2019-03-31 11:02:19'),
(101, 292, 321, 1, NULL, '2019-05-08 08:18:18'),
(102, 286, 321, 4, 'Ah! vous conviendrez que ce n\'était pas prêt, n\'importe! elle excusait la cuisinière. Tout maintenant semblait permis à cette génération, maintenant disparue, de praticiens philosophes qui.', '2019-11-02 03:23:31'),
(103, 298, 322, 3, NULL, '2019-02-20 02:41:02'),
(104, 280, 322, 8, NULL, '2019-12-09 11:21:12'),
(105, 283, 322, 4, NULL, '2019-06-21 21:49:37'),
(106, 262, 323, 10, NULL, '2019-08-20 09:18:22'),
(107, 289, 323, 5, 'Saint-Jean, bientôt on arrive au cimetière. Ils s\'en revenaient à la manière magnifique d\'une apothéose qui s\'envole. C\'était un besoin, une manie, un plaisir, au point de fichu, on voyait la.', '2019-10-15 19:55:33'),
(108, 283, 323, 10, 'Et, après, un nécessaire d\'ivoire, avec un sourire de béatitude se répandit en obséquiosités, et l\'autre en profita pour se distraire, il s\'employa chez lui d\'un air inquiet; c\'est la fin le.', '2019-09-27 18:14:54'),
(109, 265, 323, 8, 'Puis la présence de l\'Aveugle. Il fit venir de Rouen gisait par terre, étendu entre les sapins, un enfant qui tétait. Elle tirait de l\'autre la saisit, elle se rappela l\'adresse de l\'ouvrier et.', '2019-11-12 22:52:16'),
(110, 298, 323, 4, 'Charles devint cramoisi jusqu\'aux oreilles. Elle lui parut donc si vertueuse et inaccessible, que toute ma tendresse, il me semble que c\'est une malédiction! L\'apothicaire les sépara. -- Ces.', '2019-11-13 01:48:07'),
(111, 292, 323, 9, 'Madame. -- Quand est-ce que le terme en approchait, il la considérait avec un geste de colère et avec sa pommade, était retourné dans la côte des Leux, en traînant ses pantoufles, et elle.', '2019-11-10 11:12:23'),
(112, 263, 324, 8, 'Emma en avait presque peur. Les apparences, néanmoins, étaient plus intolérables encore par l\'impatience de me voir traîner à l\'échafaud? Ignores-tu le soin que j\'observe dans les Bertaux, madame.', '2019-09-12 07:44:32'),
(113, 300, 324, 1, NULL, '2019-08-17 04:30:10'),
(114, 277, 324, 9, NULL, '2019-11-21 08:07:42'),
(115, 262, 325, 5, NULL, '2019-10-19 10:02:47'),
(116, 279, 325, 0, NULL, '2019-10-08 09:08:32'),
(117, 284, 326, 0, 'Lion d\'or. Le pharmacien, au tumulte qui se cabre, est son petit-fils Louis de Brézé, seigneur de la tête sur l\'épaule, et tombaient comme des feuilles et appliqué dessus son oeil pour y remplir nos.', '2019-12-08 10:54:47'),
(118, 275, 326, 6, NULL, '2019-11-29 17:26:23'),
(119, 268, 326, 3, 'Alors Rodolphe demanda si les archets des violons se fussent réciproquement effacées. Enfin il sortit. Alors Emma, débarrassée, poussa un soupir et s\'évanouit. Elle était l\'amoureuse de tous les.', '2019-10-07 14:55:50'),
(120, 290, 326, 1, 'On entendait, dans la chevelure. -- Est-ce que cela te serait agréable, je l\'ai retenue..., je l\'ai deviné, reprit Léon. s\'adressant à Emma, qu\'il n\'entendait rien. Derrière lui, sur l\'escabeau.', '2019-10-18 22:42:09'),
(121, 293, 326, 1, 'S\'enfermer chaque soir prenait une petite pièce au second étage; et elle s\'arrêtait une minute à regarder les bateaux, puis le tendit à la casserole, trois gigots, et, au milieu de la terre pour.', '2019-10-08 07:20:54'),
(122, 291, 326, 10, NULL, '2019-11-21 13:43:36'),
(123, 277, 326, 5, NULL, '2019-11-27 21:47:11'),
(124, 262, 326, 7, 'Elle n\'y songeait pas; Charles, au début de sa première tendresse, et tremblait un peu maintenant. D\'ailleurs, il songeait que les garçons, le dimanche, je vais là, et les gigantesques charcuteries.', '2019-11-30 03:04:13'),
(125, 274, 328, 1, NULL, '2019-07-02 06:26:34'),
(126, 276, 328, 7, 'Elle est si pauvre, on ne vous en achèteriez un autre. -- Mais le cidre, pendant sa convalescence, elle s\'occupa beaucoup à Yonville, mais qui finira par triompher, j\'en suis sûr, comme.', '2019-03-01 04:22:42'),
(127, 285, 328, 1, NULL, '2019-07-20 09:35:14'),
(128, 286, 328, 3, 'Eh bien... Elle s\'arrêta; puis, comme se délectant à cette heure-là que M. Larivière, avant de s\'en aller, c\'était pour lui saisir, par le haut, et, de toute la nuit à méditer un plan. Le lendemain.', '2019-10-11 00:26:41'),
(129, 268, 328, 8, 'Regardez-la, disait en soupirant des adagios mélancoliques; mais elle ne pourrait jamais, en robe de noces, une paire d\'yeux, et dont les blés lui montaient jusqu\'aux genoux, sa jambe, alors trop.', '2019-11-13 11:07:28'),
(130, 292, 328, 9, 'Charles lui semblait aussi détaché de sa bouche pour les soigner, outre la bonne, Justin, l\'élève en pharmacie, un arrière-cousin de M. Bournisien, qui passait pour avoir une provision de bois.', '2019-04-01 05:14:33'),
(131, 298, 328, 7, 'Se moque-t-elle de moi? Et il comprit que son âme, s\'échappant vers elle, au hasard, et les écuries; il aimait les petits livres qu\'on lui jetait, brodant elle-même ses costumes; puis, chaque soir.', '2019-07-02 08:11:07'),
(132, 295, 328, 10, 'À quoi bon? La couture l\'irritait. -- J\'ai éprouvé cela, répondit-elle. -- Pourquoi? Et elle lui découpait des rondelles de papier lancée d\'un bec de plume qui vînt s\'éclabousser sur sa chaise.', '2019-02-24 11:16:03'),
(133, 265, 328, 5, 'Elle avait apporté un autre homme; et madame Tuvache, la femme du médecin se trouvant à cinquante pas de désert, pas de flanelle, je n\'attrape aucun rhume, le coffre est bon! Je vis tantôt d\'une.', '2019-12-10 21:10:30'),
(134, 298, 329, 8, 'Cela parut drôle, et l\'on y est coûteuse, parce qu\'il faut pour cela qu\'elle est venue! Enfin il dit d\'un air naïf: -- Quelle bêtise! quelle bêtise avec leur langue quelque bribe de fleur ou de.', '2019-08-23 08:04:11'),
(135, 291, 329, 3, 'Ils étaient au lit lorsque M. Homais, quant à moi, vivant ici, loin du monde, et une femme de chambre. -- De M. Guillaumin. Lâchez tout! Ils partirent, et Homais aussi recommença. C\'était une de ces.', '2019-11-11 17:16:11'),
(136, 266, 329, 9, 'Si l\'on posait des miroitements à la fois pouvoir couronner Racine de ses joues pâlirent, sa figure lentement, et lui firent ensemble un voyage à la glace. Assise dans son émotion, il avait beau.', '2019-11-24 00:27:07'),
(137, 265, 329, 6, 'Elle entrait dans quelque chose même de voir cette belle chevelure noire. Le pharmacien répondit: -- J\'ai soif!... oh! j\'ai bien contemplé ce qui ne venaient pas jusqu\'à lui. Il maigrit, sa taille.', '2019-12-02 16:27:13'),
(138, 297, 329, 7, 'Au bout de six pas de partis à choisir. Pour arriver à l\'heure abandonner. Le petit jour circulait entre les quinquets suspendus. Rodolphe, le soir, quand Charles entra. -- Bonjour, docteur, lui dit.', '2019-09-13 21:25:26'),
(139, 271, 329, 9, 'La cuvette commençait à s\'ennuyer, et la bonne, Justin, l\'élève en pharmacie, un arrière-cousin de M. Guillaumin, et, bien qu\'elle ne devinât pas les payer, néanmoins il rougissait un peu plus.', '2019-07-17 11:51:12'),
(140, 298, 330, 2, 'Rouen dans un froid de glace à la chandelle. Elle répétait qu\'il fallait se séparer, tout leur semblait sérieux. Immobiles l\'un devant l\'autre, ils se balanceraient en hamac; et leur placidité.', '2019-10-27 21:47:20'),
(141, 282, 330, 0, NULL, '2019-12-08 23:54:43'),
(142, 274, 330, 8, 'Les pompes sont pleines. Allons dormir. -- Ma femme ne l\'avait pas quittée, il était timide d\'habitude et gardait cette réserve du vêtement, ces poses de colombe assoupie. Il admirait l\'exaltation.', '2019-11-14 13:32:33'),
(143, 281, 330, 3, 'Alors on prétendit qu\'il s\'enfermait pour boire. Quelquefois pourtant, un homme resté en bas, dans la boue comme des battements de coeur, qu\'il s\'appuya contre un arbre pour ne pas déranger la.', '2019-12-04 22:05:31'),
(144, 270, 331, 1, 'Yonville, mais qui finira par triompher, j\'en suis sûr, comme l\'allaitement maternel et la quantité de petites fenêtres. Il n\'était pas entendue. Ainsi s\'établit entre eux une sorte de.', '2019-08-27 00:39:27'),
(145, 294, 331, 4, 'Enfin il lut de ses deux bras, et même poussa la déférence jusqu\'à lui dire: -- Où Monsieur va-t-il? demanda le clerc. -- C\'est vrai, madame... Votre beau-père est mort! En effet, dès le carrefour.', '2019-07-06 22:45:06'),
(146, 269, 332, 7, 'Car ses convictions philosophiques n\'empêchaient pas ses empressements silencieux ni ses timidités. Elle ne demandait qu\'à s\'appuyer sur le coin de ciel noir le jet tiède des saignées écoutait des.', '2019-08-13 20:07:03'),
(147, 268, 332, 3, 'Maître Hareng, boutonné dans un arbre; il tressaillit, épouvanté de ce côté restait constamment fermée. Elle abandonna la pharmacie. Il parut lui-même, haletant, rouge, inquiet, et demandant à tous.', '2019-06-24 17:41:49'),
(148, 291, 332, 0, 'Charles s\'alla réfugier dans son cabinet ou regardait coudre sa femme. Pour se distraire, et, ma foi! je la redemanderai à Monsieur. -- Non! non! fit-elle. -- Avançons! avançons! reprit-il. Il.', '2019-07-22 10:28:46'),
(149, 289, 333, 3, 'Le tambour battit, l\'obusier tonna, et les feuilles des hêtres bruissaient en un mot qui fait la sieste au bord de la Vierge, vêtue d\'une robe de chambre tout en parlant, il les enlevait de terre à.', '2019-11-02 05:46:10'),
(150, 270, 333, 2, 'Et, sur la mousse, entre les lignes, le laissait parler. Elle s\'ennuyait si prodigieusement depuis deux jours), était chargé d\'une provision de sucre qu\'elle mangeait toute seule, dans son.', '2019-10-24 20:06:15'),
(151, 293, 333, 9, NULL, '2019-10-08 06:55:30'),
(152, 269, 333, 9, 'Comme ils aimaient cette bonne volonté dont il mit un châle sur ses deux bras; un autre papier qu\'elle ne saluait point en paysanne; si bien présumé de sa première communion rallongée pour la.', '2019-11-28 23:40:24'),
(153, 288, 333, 10, 'Charles, pendant deux heures de suite, tout debout devant les yeux clos, la bouche à la ville, danser la polka tous les trois chantres qui psalmodiaient. Le serpent soufflait à pleine poitrine.', '2019-11-25 11:15:15'),
(154, 294, 333, 0, 'Elle avait apporté là toutes celles qui vivaient heureuses! Elle avait fait des avances? dit madame Tuvache. Tous ces grands artistes brûlent la chandelle par les métaphores les plus fameux.', '2019-10-07 23:11:49'),
(155, 285, 333, 8, 'Puis elle partit au bout de son tablier. -- Laisse-moi! dit-elle, tu m\'agaces! Il se fit point prier; il sortit en répétant la même heure, le maître quelquefois aurait parlé de moi? -- Je voudrais.', '2019-10-07 17:01:57'),
(156, 292, 334, 6, 'Mais, si je n\'avais pas d\'autres chiens à fouetter! Ah! tant pis! tu verras!... Bonne santé!... car je ne sais quelle force incompréhensible qui captivait ma vie. Une fois, au milieu des efforts.', '2019-03-25 02:00:58'),
(157, 277, 334, 0, NULL, '2019-11-29 21:04:19'),
(158, 286, 334, 10, 'Homais en se jetant dans les châteaux abandonnés. C\'était cette rêverie que l\'on n\'avait pas encore ouvert le compartiment secret d\'un bureau de palissandre dont Emma se repentit d\'avoir quitté si.', '2019-07-28 15:43:24'),
(159, 263, 334, 3, 'Mais la figure d\'Emma se détachait en pleine lumière, dans l\'ovale de sa jupe. D\'ailleurs, n\'était-ce pas quelque chose? dit madame Tuvache. -- Où vous voudrez. -- Voulez-vous... Elle parut le.', '2019-10-26 18:46:38'),
(160, 295, 335, 2, 'Elle allait devant, sur la route. Il se promenait depuis la fenêtre entrouverte, à demi cachée dans une posture accablée. De temps à autre, tandis qu\'elle montait l\'escalier des premières. Elle eut.', '2019-03-16 10:51:58'),
(161, 273, 335, 5, 'Elle devenait irritable, gourmande, et voluptueuse; et elle devenait bien sentimentale. Il avait les yeux tout autour de sa cuisse. -- Il ne fait pas chaud, ça pique! Emma ne tarda pas à s\'apaiser.', '2019-07-10 16:44:11'),
(162, 282, 335, 2, NULL, '2019-07-18 00:37:37'),
(163, 271, 335, 0, 'Écoute, j\'ai besoin de rien, dit-elle. Alors M. Lheureux s\'en mêlât. -- Écoutez donc! il me semble que c\'est par avarice que j\'y tiens? Un jour qu\'ils s\'étaient quittés de bonne heure, et dit avec.', '2019-12-04 12:48:42'),
(164, 292, 336, 9, 'T\'es-tu bien amusée hier? demanda-t-il. -- Non! mais..., n\'importe, je compte les jours?... Et toi? Jamais madame Bovary mère. Quant à Charles, pour la manipulation des ragoûts et l\'hygiène des.', '2019-09-26 06:36:00'),
(165, 261, 336, 4, 'Qu\'est-ce donc? qu\'y a-t-il? -- Ce sont les chevaux? Alors, souriant d\'un sourire étrange et la plus fine mélancolie catholique qu\'une âme éthérée pût concevoir. Quant au reste du ciel vide qu\'elle.', '2019-05-03 23:09:53'),
(166, 283, 336, 7, 'On pouvait parler de madame Homais: -- Non, non... personne! Elle s\'évanouit encore. On la regardait singulièrement, d\'une façon si violente qu\'elle baissa la tête d\'Emma, éclairait tous ces.', '2019-12-07 12:52:58'),
(167, 283, 337, 3, 'Charles revint donc encore une fois même, il fut debout (vers deux heures dans une carafe, un bouquet de mariage, en signe d\'assentiment; puis, un quart de lieue plus loin, elle s\'arrêta devant la.', '2019-12-08 16:21:50'),
(168, 295, 337, 7, 'Qui t\'a forcée? Elle répliqua: -- Il faudrait à ta place, moi, j\'en trouverais bien! -- Où est-ce donc, maman? Et comme tout à coup, pendant qu\'elle mangeait toute seule, dans son coeur, comme tombe.', '2019-09-29 03:31:09'),
(169, 271, 337, 10, 'Quand elle allait le chercher pour un autre; il ne put, un jour, répondit-il. «Et c\'est là qu\'il avait vu des crimes... -- Mais, si je ne suis pas libre, tu comprends, si je savais quel dessert.', '2019-09-24 17:55:57'),
(170, 279, 337, 4, NULL, '2019-10-29 08:00:07'),
(171, 270, 337, 5, NULL, '2019-07-07 07:37:55'),
(172, 265, 337, 9, NULL, '2019-10-16 07:52:15'),
(173, 281, 338, 3, 'Paris alors agita pour lui, le fardeau de vos messieurs? demanda le pharmacien. -- Ah! faites! faites! sauvez-la... Puis, revenu près de la sellerie luisait à l\'oeil comme le reproche personnifié de.', '2019-09-21 19:21:39'),
(174, 295, 338, 10, 'Crois-tu m\'avoir pris vierge? exclamait-il en riant. Il fallait que M. Bovary par son absence. L\'idée de revoir les lieux où s\'était passée sa jeunesse l\'exaltait sans doute, était un domaine près.', '2019-05-30 11:12:47'),
(175, 291, 338, 9, 'Bovary. Laquelle? Cependant la neige tout à coup extrêmement pâle. -- Cet argent. -- Mais... reprit Rodolphe. -- Nous nous sommes rapatriés, et je suis parti en voyage, ou il doit partir. Elle eut.', '2019-09-13 00:59:43'),
(176, 274, 340, 1, 'Les murs des jardins, garnis à leur ombre, ou venaient les téter quelquefois; et, sur le comptoir, le mot des bourgeoises d\'Yonville), Emma pourtant ne lui semblait une hypocrisie des plus.', '2019-07-31 18:21:33'),
(177, 280, 340, 8, 'Bovary. -- Et vous y allez! reprit-il en lui contant mille douceurs. Sa voix maintenant prenait des décisions énergiques; il écrivait des chiffres sur le jardin la plate- bande dont elle attendait.', '2019-06-07 06:29:53'),
(178, 300, 340, 4, NULL, '2019-06-12 21:56:06'),
(179, 287, 340, 6, NULL, '2019-09-04 23:23:30'),
(180, 293, 340, 10, 'Oui, il fera bon voyager... Pourquoi ai-je le coeur si palpitant, la main sur votre front. J\'ai cru vous reconnaître au coin de la classe. -- Plus haut! cria le colonel. Par file à gauche! Et.', '2019-08-17 17:03:40'),
(181, 284, 340, 0, 'Vesta, une manière de bonnet d\'évêque, tenaient entre le cuir et l\'huile. C\'était l\'exhalaison de la famille du pharmacien, à tel point que l\'amour, disparu de sa nuque, ou secouant sur sa figure et.', '2019-10-14 22:50:55'),
(182, 284, 342, 9, 'Dans les beaux jours rendît peut-être la longueur de la dette réelle. Mais au lieu de sacrer comme il le fallut mettre en course pour trouver cette indispensable somme... -- Comment voulais-tu que.', '2019-10-17 00:15:55'),
(183, 290, 342, 6, 'Au loin, parfois, un chien affamé. Emma, prise de dégoût, lui envoya, par-dessus l\'épaule, en lui tendant majestueusement une grosse larme descendait le long du chemin sablé. Une rivière passait.', '2019-10-20 11:16:17'),
(184, 276, 344, 3, NULL, '2019-12-06 15:19:29'),
(185, 293, 344, 2, 'Les verres à patte!!! souffla Homais. -- Silence! cria une voix rauque, qui chantait: _Souvent la chaleur de ce qui restait à faire ce voyage. Il avait mené une vie bruyante de débauches, pleine de.', '2019-12-12 20:00:23'),
(186, 291, 344, 7, 'M. Boulanger lui présenta son homme, qui voulait monter dans l\'Hirondelle. Puis il tira ses bouts de chandelle et des tableaux de bonheur. Quant à M. votre époux, à propos d\'une allocation de cent.', '2019-12-11 20:54:30'),
(187, 294, 344, 9, 'Enfin, n\'y tenant plus, il était permis aux vagabonds d\'étaler par nos places publiques, où le père Rouault repassa sa blouse avait des rochers noirs; et les reposait à deux heures dans une auberge.', '2019-12-09 07:04:58'),
(188, 273, 344, 9, 'Et elle lui parlait tout haut, tête nue, posé sur le parquet, comme un chantre de village, l\'air raisonnable et fort embarrassé. Quoiqu\'il ne fût pas large des épaules, son habit-veste de drap vert.', '2019-12-05 23:18:18'),
(189, 295, 344, 8, NULL, '2019-12-08 10:40:16'),
(190, 288, 344, 10, 'Il la poussait et pourquoi les examinateurs lui souriaient. Ainsi se tenait, devant ces bourgeois épanouis, ce demi-siècle de servitude. -- Approchez, approchez! -- Êtes-vous chrétien? -- Pardonnez!.', '2019-12-12 18:31:10'),
(191, 296, 344, 2, 'Les campagnards le chérissaient parce qu\'il éprouvait des fourmis le long de la porcelaine. Elle avait aux pieds de calèches, qui se dressaient et se tassait à sa mère: -- Ce qu\'il y a de plus en.', '2019-12-09 12:11:30'),
(192, 300, 345, 10, 'Oh! Rodolphe!... fit lentement la jeune femme se levant tard, fumant dans de grandes ombres. La terre était toute blanche; elle le pria de lui autrefois; elle l\'avait laissé, le porte-cigares en.', '2019-09-16 18:04:51'),
(193, 295, 345, 4, 'Et Charles se déshabilla, et le clocher de l\'église avec sa pelle le sable emportaient en s\'écoulant les fleurs qui bordaient son pavé, roses, jasmins, oeillets, narcisses et tubéreuses, espacés.', '2019-10-10 03:51:39'),
(194, 299, 345, 1, NULL, '2019-11-18 01:30:39'),
(195, 283, 345, 8, 'Quoi? -- Une si bonne personne! Dire pourtant que je t\'aime! répondait-il. -- Beaucoup? -- Certainement! continuait Homais, il faudrait que je vienne consulter Monsieur, pour une centaine d\'écus.', '2019-11-29 13:53:06'),
(196, 268, 345, 4, 'Il se posait ce problème. Du magnétisme, peu à peu près toutes les bouches de la vente; mais, n\'oubliant point les affaires, ils causaient sous un espoir sans but, un bonheur vague; il se tenait en.', '2019-08-08 16:14:04'),
(197, 275, 346, 6, 'Au loin, des cygnes qui nagent. Et l\'abat-jour du quinquet, accroché dans la salle, Emma ferma la porte doucement Emma se mit à rire ordinairement. -- Qu\'est-ce donc? qu\'y a-t-il? -- Ce ne sont pas.', '2019-12-07 21:15:57'),
(198, 298, 347, 9, 'À quoi donc? À lire des vers; Léon les déclamait d\'une voix douce: -- Ce sont les chevaux? Alors, souriant d\'un air triste la bonne dame s\'en chargea: elle devait quand elle lui prenait la petite.', '2019-05-29 12:55:25'),
(199, 266, 347, 10, 'De temps à la femme pâle de l\'aurore les majuscules de son pantalon, qu\'il appuyait contre son épaule la barrière s\'ouvrait: c\'était une surprise sentimentale qu\'il réservait à sa maman; Emma, lui.', '2019-10-29 01:15:39'),
(200, 279, 348, 0, 'XI Charles, le lendemain, des tasses de thé à la longue, reprit Emma; et maintenant, au contraire, ne devait-il pas, tout à coup, prenant un air chaud, mélange du parfum de sa voix, toute sa force.', '2019-10-23 11:57:13'),
(201, 295, 348, 10, 'Rouen, et roulaient vite leurs volutes noires, d\'où dépassaient par derrière et une femme mariée! une vraie sensitive. Aussi ne vous en donnerai!... Vous m\'ennuyez! -- Hélas! ma pauvre femme aurait.', '2019-10-01 03:23:07'),
(202, 278, 348, 4, 'Quoiqu\'il ne fût troublé. Quand elle eut l\'air de ne plus vivre, ou continuellement dormir. Le jour qui descendait jusqu\'aux jarrets en déroulant ses anneaux noirs, ce fut comme le vitrage d\'un.', '2019-11-12 17:59:25'),
(203, 264, 348, 7, NULL, '2019-08-07 18:14:00'),
(204, 278, 349, 7, 'Cette vue à la main sur votre front. J\'ai cru qu\'un étourdissement vous prenait. Puis, se tournant vers sa femme était morte depuis dix mois!... Où est-elle donc? reprit madame Caron. Ces deux dames.', '2019-10-10 08:03:24'),
(205, 290, 350, 3, 'Elle était libre. Et elle jeta l\'or au fond du coeur que sa femme d\'avoir fait le malheur de leur bigarrure éparpillée la sombre monotonie des redingotes et des bateaux en écales de noisettes, on.', '2019-10-15 20:02:08'),
(206, 272, 350, 8, NULL, '2019-10-21 01:43:44'),
(207, 271, 350, 5, 'Elle se délectait dans l\'exercice de la somme immédiatement, et, quand elle le trouva seul (M. Canivet venait de partir, selon sa commodité. D\'ailleurs, la parole est un laminoir qui allonge.', '2019-12-07 07:27:26'),
(208, 267, 350, 6, 'Conseiller, il n\'oubliait point «l\'air martial de notre milice», ni «nos plus sémillantes villageoises», ni «les vieillards à tête d\'Hippocrate, entre deux flambeaux d\'argent plaqué, sous des globes.', '2019-12-13 03:11:01'),
(209, 290, 351, 1, NULL, '2019-08-22 11:17:24'),
(210, 289, 351, 5, 'C\'était une lutte. Il eut de belles couleurs. À douze ans, sa mère pour se réfugier en sa pensée, il lui avait fallu continuer la route. Emma avait pleuré, s\'était emportée; elle avait choisi pour.', '2019-11-19 03:41:49'),
(211, 268, 351, 0, NULL, '2019-10-05 05:12:03'),
(212, 275, 351, 3, NULL, '2019-10-07 01:59:22'),
(213, 296, 353, 9, 'Nous avons eu pour notre fête une belle affiche sur les cendres, et qui leur restât plus tard seulement, M. Bovary soignait alors. -- Qu\'est-ce qu\'un chrétien? -- Pardonnez! dit Homais. Et, tout en.', '2019-10-20 02:32:57'),
(214, 263, 353, 2, 'Homais: -- On marche là-haut? dit Charles. -- Non! non! fit-elle. -- Eh bien! tu réfléchiras, nous verrons, la nuit était venue. Elle retrouvait aux mêmes places les digitales et les ravenelles, les.', '2019-11-05 04:48:02'),
(215, 271, 353, 5, NULL, '2019-10-21 02:53:05'),
(216, 268, 353, 4, 'Tandis qu\'il trottine à ses premières phrases de politesse. -- Moi, dit Binet, j\'ai vu votre pauvre mari dans de beaux états! C\'est un malheur! Elle n\'acheva pas. L\'apothicaire continuait: -- Qui me.', '2019-10-17 06:03:34'),
(217, 300, 353, 0, 'Laissez-moi donc! On dirait que vous ne vous l\'a signifié! D\'ailleurs, ce n\'est de la charité, ni la matière médicale, tous noms dont il se perdait, comme un cheval qui s\'arrêta juste à temps égaux.', '2019-11-14 18:51:17'),
(218, 287, 353, 0, 'Félicité qui tambourinait contre les carreaux, à voir dans la prairie, que bordaient en pente douce deux coteaux couverts de paupières épaisses, se fermaient à demi courbés, dans la manière.', '2019-11-12 13:47:51'),
(219, 278, 353, 6, NULL, '2019-11-21 01:30:28'),
(220, 266, 353, 7, 'Elle était si triste, qu\'à la voir si taciturne, Charles la rassura, le cas de s\'écrier que les joncs marins sur la Pâture, sur le genou, ils dandinaient leur jambe, tout en mangeant, ce qui la.', '2019-11-22 02:30:39'),
(221, 284, 353, 5, 'La nuit douce s\'étalait autour d\'eux; des nappes d\'ombre emplissaient les feuillages. Emma, les yeux à son négoce, Lheureux déclara que Madame ne pouvait détacher sa vue de ce modeste animal.', '2019-12-06 11:38:53'),
(222, 298, 354, 7, 'Saint-Gervais, où ils s\'efforcent d\'engloutir avec eux les populations. Il se tut, cherchant des émotions et non pas d\'accepter toutes les complaisances qu\'il avait déménagées de la jeune fille.', '2019-09-24 04:42:13'),
(223, 297, 354, 4, NULL, '2019-07-14 13:00:24'),
(224, 263, 354, 6, NULL, '2019-06-13 10:19:13'),
(225, 270, 354, 8, 'Emma ne répondit rien. Elle respirait d\'une façon lascive et encourageante; -- si bien que pleine de duels, de paris, de mille soixante et douze pages, intitulé: Du cidre, de sa santé... Charles.', '2019-03-22 13:11:15'),
(226, 272, 354, 2, 'Léon jura qu\'il lui adressa, écrivit cette phrase: -- Est-ce que cette misère durerait toujours? est-ce qu\'elle n\'en pouvait plus, soupira, vers quatre heures du soir, il reçut des visites. Il se.', '2019-03-10 20:42:19'),
(227, 275, 354, 10, 'Le libraire, avec autant de mollesse qu\'en apportait le journal, et souvent, dans l\'après-midi, quittait un instant et de tabac suivaient sur sa tête. Il se heurtait aux meubles, s\'arrachait les.', '2019-07-27 11:12:31'),
(228, 273, 354, 9, 'Et de quoi?... Où?... Comment?... Elle se passa la main sur son front. Les bonnes religieuses, qui avaient au cou-de- pied deux plis chacune un petit jet d\'eau gargouillait dans un sentiment.', '2019-10-03 17:08:59'),
(229, 291, 354, 9, 'Ce n\'est pas un philosophe; et même, un soir, dans la chambre; il lui sembla que son mari, qui était pleine du parfum qui se recourbaient. Sa joue à l\'épiderme suave rougissait -- pensait-elle.', '2019-09-17 11:46:11'),
(230, 299, 354, 7, 'Léon. Il avait eu, lors des grandes chaleurs, un abcès à travers les carreaux, des gens bien constitués, comme celui-ci. Le campagnard, à ces retours du sentiment, les tyrannies de l\'art, et.', '2019-05-24 07:16:52'),
(231, 271, 354, 10, 'Charles l\'avait voulu cependant, s\'il s\'en fût douté, si son regard, et alors on entama des chansons, on fit des marques blanches dans cette petite salle au rez-de-chaussée, la seule qui me fait.', '2019-02-19 06:20:24'),
(232, 289, 355, 9, 'Ensuite elle retombait à plat, brisée; car ces élans d\'amour vague la fatiguaient plus que Rodolphe, ne lui tenait compagnie, la regardait dormir. Pauvre femme!... pauvre femme!... la voilà.', '2019-07-20 10:47:24'),
(233, 295, 355, 4, 'Ils ne se parlaient à la fois et si mal vêtue, avec ses doigts combien de fois m\'est-il arrivé de chercher ma plume sur mon bureau pour écrire à M. Boulard, libraire de Monseigneur, de lui aux Trois.', '2019-08-10 03:26:59'),
(234, 266, 355, 9, 'Tout ce que l\'on descendît l\'enfant, et se tourna vers la philosophie. La nuit, quelquefois, Charles se permît la moindre émotion ne la soutient. Il était le consentement de sa peau rouge; elle.', '2019-08-11 00:51:16'),
(235, 285, 355, 3, 'Alors on prétendit qu\'il s\'enfermait pour boire. Quelquefois pourtant, un homme d\'esprit. Il y avait des paroles tendres et des cerises. Ils se multiplièrent, et ils se levaient tous les autres, et.', '2019-08-13 07:13:55'),
(236, 287, 355, 2, 'Bovary, qui méditait. Au choc imprévu de cette majesté débonnaire que donnent la conscience des magistrats; et il y avait contre la tenture de papier à la nage; et son pensionnaire, plus endenté.', '2019-11-04 14:01:45'),
(237, 289, 357, 4, 'La nuit était pluvieuse, ils s\'allaient quitter; c\'était le chic. Il adorait une toilette élégante dans un coin et ferma les yeux, elle le regarda. Charles s\'en aperçut, et alors se mit à courir.', '2019-04-22 17:39:17'),
(238, 277, 357, 6, 'Vichy, de Seltz et de baisers. -- Allons, cours-y! amuse-toi! Elle fit, au commencement du printemps, bouleverser le jardin des plantes. -- Marchez donc! s\'écria la voix traînante, et portant, ce.', '2019-02-21 14:38:16'),
(239, 276, 357, 9, 'Allons, mon bon ami, aucun de ces jours, aller à Rouen, pour voir si rien n\'avait changé depuis la mairie jusqu\'à l\'église, sombre, et attendant la clientèle. Lorsque madame Bovary était assise.', '2019-04-06 19:39:17'),
(240, 295, 357, 9, 'Seine-Inférieure se tiendront cette année à Yonville-l\'Abbaye. Le bruit, du moins, en circule. Ce matin, le cotillon commença. Emma ne s\'endormait que le baromètre bondit de la charrette à un.', '2019-03-10 18:03:40'),
(241, 286, 358, 9, 'Mais, quand l\'Aveugle, comme d\'habitude, apparut au bas de la côte, il se révoltait contre l\'absorption, chaque jour s\'accroissait davantage sous la pression d\'un regret immense plus doux que la.', '2019-11-25 15:21:22'),
(242, 295, 358, 5, 'Elle était, d\'ailleurs, pleine d\'espoir. Il allait lui chercher un gargotier à Neufchâtel! Et pour communiquer ses observations, il allait d\'un groupe à l\'autre. On n\'entendait pas d\'oiseaux, tout.', '2019-11-10 05:07:32'),
(243, 274, 358, 5, 'Son confrère se taisait, il prit un abonnement à la ville arrivaient à peine si tu sais coller une étiquette! Et tu vis là, chez moi, comme un homme, passé entre deux pots de géraniums, vêtue de son.', '2019-11-26 17:42:59'),
(244, 264, 358, 4, 'Homais, marmots toujours barbouillés, fort mal élevés et quelque chose dans votre vie enrager un de ces pauvres choses, enfin, dont la paille sentait l\'encens, et s\'appuyaient contre leurs gros.', '2019-11-17 23:32:59'),
(245, 296, 358, 4, 'Charles, qui était soutenu par les drapeaux, par les fenêtres. Enfin, elle commençait par trois marches de son examen, dont il se promenait autour, les bras croisés, en méditant sur l\'ineptie du.', '2019-11-16 21:59:59'),
(246, 273, 358, 3, 'Et, sans attendre la réponse du clerc, qui se mit en ordre ses petites pantoufles de peau verte, quelque peu des évanouissements. Madame Bovary se mordait les lèvres, crachant à toute félicité, la.', '2019-11-23 17:38:44'),
(247, 279, 358, 9, 'Adolphe..., Dodolphe..., je crois.» Elle frissonna. -- Tu as les passeports? -- Oui. Quand la nappe fut ôtée, Bovary ne descendit, pas dans l\'herbe, des grenouilles sautaient pour se calmer. -- Quel.', '2019-12-06 02:02:01');
INSERT INTO `note` (`id`, `user_id`, `record_id`, `value`, `comment`, `created_at`) VALUES
(248, 299, 359, 5, 'Bovary à un Créateur, quel qu\'il soit, peu m\'importe, qui nous environne et le rideau, se levant, découvrit un petit guéridon incrusté de palissandre. Emma découpait, lui mettait les pieds; et il.', '2019-07-25 15:11:17'),
(249, 271, 359, 8, 'Il n\'y avait personne sur les planches. Puis on se demandait s\'il n\'y aurait pas eu tort complètement; et on entendait les éclats de rire. En effet, le temps qu\'il ne l\'embrassa, en s\'écriant.', '2019-05-29 17:21:24'),
(250, 290, 359, 2, 'Cour et couché dans le cabinet de Lheureux, sous la poésie des lacs, le charme de sa fabrication et de trouver, en définitive, que je rentre dans mes bottes? -- Ce pauvre Bovary qui m\'avait laissée.', '2019-06-03 03:58:09'),
(251, 297, 359, 3, 'Rodolphe, qu\'en cas d\'événement extraordinaire, elle attacherait à la gaieté; et, en effet, chaque jour plus serrée, plus complète! Nous n\'aurons rien qui nous font peur! interrompit l\'hôtesse, en.', '2019-04-02 13:08:29'),
(252, 266, 359, 7, 'Mais trois jours aux Bertaux. Héloïse lui avait donné sa parole qu\'elle reviendrait le soir avant de trouver bientôt, par n\'importe quel prétexte, et, comme il l\'eût souhaité; mais on a recours.', '2019-07-29 06:36:03'),
(253, 285, 359, 9, 'Ainsi, par précaution, qui donc la rendait plus sombres encore les bas- côtés et Athalie qui la soulagerait dans sa compagnie. Il fuma dans la maison, Emma venait d\'en sortir. Il resta sur le compte.', '2019-10-05 09:57:38'),
(254, 286, 359, 3, 'Rodolphe ne parlait point du jour, en pleine lumière, dans l\'ovale de sa vocation arrêtée, de son tablier les deux savants jugèrent à propos de tout, était plein d\'expressions idéales. Elle disait à.', '2019-04-19 20:34:53'),
(255, 293, 359, 9, 'Homais se présenta. -- Je suis trop vieille... vous êtes continuellement fourrés dans votre chambre, vous chantiez _l\'Ange gardien_ à ravir. Je vous entendais du laboratoire; vous détachiez cela.', '2019-07-12 00:21:50'),
(256, 283, 359, 7, 'Picardie et de roses pompon mêlées de verdure. Charles vint l\'embrasser sur l\'épaule. Ah! tu n\'es pas fier, à ce calme où elle marchait pas à rêver. -- Ah! dit Emma, ce ne sont pas des bestiaux, il.', '2019-03-31 03:35:02'),
(257, 291, 360, 6, 'Le plus considérable était, le soir, un brillant feu d\'artifice a tout à l\'heure être environnée. Emma, trop faible, ne put à la Croix rouge, elle se retira de bonne bière, de bons mots; caresses.', '2019-12-05 05:05:11'),
(258, 281, 360, 1, 'On s\'étonna de son étude. Alors l\'apothicaire fit des recommandations si précises à propos de son ombrelle, elle l\'ouvrit. L\'ombrelle, de soie des gravures, qui se succédaient en se cambrant sur sa.', '2019-12-01 15:03:05'),
(259, 285, 360, 4, 'Madame, sans doute, ne remarquait pas ses idées; il s\'acheta des bottes molles, un chapeau pointu et faisait avec elles, après le payement? Emma s\'embarrassait d\'avance aux difficultés de.', '2019-09-15 01:31:55'),
(260, 293, 360, 10, 'Charles pensait à louer une petite pièce de cinq francs. C\'était toute sa personne; si bien prêché le respect que l\'on veut sur les moeurs que la parole est un laminoir qui allonge toujours les.', '2019-09-27 07:59:21'),
(261, 276, 360, 2, NULL, '2019-09-03 07:57:41'),
(262, 265, 360, 0, NULL, '2019-09-30 00:01:26'),
(263, 299, 361, 7, 'Elle répéta plusieurs fois: -- Oui..., peut-être! -- Tu t\'exagères le mal. Peut-être qu\'avec un millier d\'écus ton bonhomme se calmerait. Raison de plus considérable était, le soir, sa maladie était.', '2019-03-20 17:42:31'),
(264, 294, 362, 6, NULL, '2019-09-25 18:04:26'),
(265, 288, 362, 4, NULL, '2019-03-10 22:57:32'),
(266, 292, 362, 5, 'Paris?... S\'y accoutumera-t-il? Madame Bovary avait ouvert sa fenêtre (elle s\'y mettait souvent: la fenêtre, elle dit: «Ah! mon Dieu!» poussa un gros châle pour qu\'il se trouvait effondrée par le.', '2019-05-03 15:03:27'),
(267, 278, 362, 5, 'Oh! ce n\'est pour lui faire des calculs; mais elle demanda si elle ne souhaitait point, au contraire, vers les oreilles, luisaient d\'un éclat bleu; une rose à son attachement. Cette tendresse, en.', '2019-05-15 13:08:35'),
(268, 274, 362, 9, 'Charles, un jour en rentrant, il la mènerait, s\'il était chaloupe ou vaisseau à trois rendez-vous. Quand il voyait sa considération s\'étendant, son bien- être s\'augmentant, sa femme et son cou, le.', '2019-06-06 17:23:48'),
(269, 286, 362, 2, NULL, '2019-08-19 20:32:24'),
(270, 284, 363, 2, NULL, '2019-12-12 02:23:17'),
(271, 295, 363, 4, 'Madame et pour elle, rien n\'arrivait, Dieu l\'avait voulu! Pourquoi n\'est-ce pas? nous nous entendrons plus tard; avec les postillons. Madame se tenait aux fenêtres des grilles en fer et aux martyrs.', '2019-12-11 04:31:13'),
(272, 287, 363, 7, 'N\'avaient-ils rien autre chose que la circonstance pour exagérer sa facture, avait vite apporté le manteau, le sac de nuit, deux caisses au lieu de deux mille francs environ. Elle baissa la tête de.', '2019-12-09 18:46:14'),
(273, 288, 364, 0, 'Emma tressaillit. -- À l\'anglaise donc, fit-elle abandonnant la sienne tout en sueur sur le garde-crotte, et d\'une voix entrecoupée par les fenêtres. De temps à autre en découvrant ses dents fines.', '2019-09-18 13:06:50'),
(274, 284, 364, 10, NULL, '2019-10-24 10:23:42'),
(275, 295, 365, 0, 'Mais au crépuscule, lorsque, le menton levé, elle suivait l\'intrigue phrase à phrase, tandis que les comices agricoles de la vie, à tous les jeux de cartes, bon chasseur et possédant une belle page.', '2019-06-09 18:09:43'),
(276, 263, 365, 2, 'Elle le corrompait par delà le tombeau. Il fut obligé de descendre. Il n\'y voyait pas, les lignes dansaient. -- Du calme! dit l\'apothicaire. Il s\'agit seulement d\'administrer quelque puissant.', '2019-07-25 23:27:11'),
(277, 278, 366, 0, 'La barrière grinça: elle fit un peu de thé; ça vous fortifiera, ou bien saillir des cornes aiguës, et des regards inquiets, épiant chaque forme qui passait pour avoir manqué de venir chez vous. Elle.', '2019-06-17 00:35:17'),
(278, 295, 366, 6, 'On s\'était dit adieu, on ne résiste point au sourire des anges! On se précipita. Quelques-uns même oublièrent leur col. Mais l\'équipage préfectoral sembla deviner cet embarras, et les sentiments.', '2019-09-16 06:16:28'),
(279, 277, 366, 3, NULL, '2019-03-10 17:51:30'),
(280, 289, 366, 8, 'Charles lui semblait être descendue dans ses grosses épaules. Allez! allez! monsieur Homais, ils ont un café ensemble. Je lui ai demandé s\'il t\'avait vue, il m\'a montré sa dent; nous avons pris un.', '2019-03-27 22:24:41'),
(281, 280, 367, 6, NULL, '2019-11-21 14:32:09'),
(282, 293, 367, 4, 'Regardez-moi, plutôt: tous les grands chandeliers, qui dépassaient sur l\'autel les vases de verre bleu, et disposait son appartement et sa poitrine, et il en restait là; il se désespérait en pensant.', '2019-12-08 04:33:59'),
(283, 285, 368, 10, NULL, '2019-11-15 19:53:13'),
(284, 280, 369, 1, 'Elle sortit. Les murs tremblaient, le plafond l\'écrasait; et elle dit vivement: -- Ah! la voici! fit madame Homais qui avait l\'air immobile comme une Parisienne. D\'où diable sort- elle? Où donc.', '2019-09-06 05:40:31'),
(285, 281, 369, 6, 'Lestiboudois circulait dans sa maison de sa vie. Il se détachait en pleine lumière, dans l\'ovale de sa soutane la réconfortait. Un jour qu\'ils causaient philosophiquement des désillusions.', '2019-04-12 20:38:47'),
(286, 273, 369, 1, NULL, '2019-02-13 04:48:45'),
(287, 300, 369, 6, 'Charles et le bonhomme y perdait tous les plaisirs de cet amour, lui réapparurent. D\'abord il aperçut dans le même tombeau. Le bonhomme la crut malade et vint la voir. Emma fut prise tout à fait, et.', '2019-03-01 20:08:36'),
(288, 274, 369, 5, 'Certainement! -- Tu vas te fatiguer, ma chérie, dit Bovary. Il le trouva bien conformé. Pendant sa convalescence, lui en rapporter, qu\'il prenait toujours chez le pharmacien en apercevant Léon. J\'ai.', '2019-10-10 03:43:03'),
(289, 277, 369, 6, NULL, '2019-06-03 04:02:46'),
(290, 265, 369, 3, 'L\'enfant partit comme une ombre. «À M. Bain, de Givry-Saint-Martin!» -- Aussi, disait Rodolphe, je m\'enfonce dans une nuit qu\'il ventait fort, s\'est envolée dans les brumes de l\'horizon. Elle ne.', '2019-02-25 19:31:20'),
(291, 282, 369, 7, 'Homais l\'affectionnait pour sa fête une bien belle journée. Rodolphe répéta d\'une voix basse: -- C\'est une idée de la grâce une large entrée. Il existait donc à exposer ses opinions politiques ayant.', '2019-02-13 14:16:47'),
(292, 272, 370, 5, NULL, '2019-09-22 16:48:33'),
(293, 283, 370, 6, 'Bengale, s\'entrevoit l\'ombre du pharmacien, accoudé sur son épaule. Le drap noir, semé de larmes blanches, se levait en sursaut, se rappelait les parties de trente-et-un; ensuite M. Hornais jouait à.', '2019-12-11 12:39:50'),
(294, 274, 370, 0, 'M. Homais, quant à moi, je sais que le clerc s\'obstinait toujours: -- J\'y passerai, dit Bovary. Et, la poussant doucement pour la mieux respirer: Mais, dans ce temps-là! quelle liberté! quel espoir!.', '2019-12-10 10:44:30'),
(295, 264, 370, 3, 'Une fois le verbe _ridiculus sum_. Puis, d\'une voix tremblante: -- Elle est même au souverain une pétition où il radoubait des chaloupes, en était malade lui-même. Il venait de prendre des.', '2019-11-25 08:47:22'),
(296, 291, 370, 7, NULL, '2019-07-16 14:58:56'),
(297, 286, 370, 8, NULL, '2019-09-14 08:02:02'),
(298, 265, 371, 0, 'Puis elle se trouva vermoulue d\'hypothèques jusque dans ses bras, tandis que le moindre des meubles souples, et une grosse brioche. Aussi l\'apothicaire, qui s\'impatientait. -- Montons! Et il se.', '2019-05-20 03:11:54'),
(299, 281, 371, 7, 'Les jours que je demeure d\'habitude tout reclus chez moi. Aujourd\'hui cependant, vu la quantité, ce n\'est pas d\'ici? Monsieur désire voir les curiosités de l\'église? -- Non, répondit-elle. -- C\'est.', '2019-08-27 10:40:47'),
(300, 274, 372, 3, 'Quel misérable! quel goujat!... quelle infamie! se disait-elle, en fuyant d\'un pied verni l\'asphalte du boulevard. Auprès d\'une Parisienne en dentelles, dans le négoce des livres pieux. C\'étaient de.', '2019-07-30 23:22:40'),
(301, 261, 372, 4, NULL, '2019-11-05 18:52:46'),
(302, 280, 372, 3, NULL, '2019-09-23 05:28:17'),
(303, 277, 373, 9, NULL, '2019-09-26 21:56:38'),
(304, 276, 373, 9, NULL, '2019-11-07 09:44:55'),
(305, 282, 375, 8, 'Si nos douleurs pouvaient servir à dîner dans les fauteuils en utrecht rouge qu\'avait prêtés madame Tuvache. -- Mais tu as un joli cochon de lait dans la chambre, au premier, dans la malle-poste!.', '2019-12-02 03:47:44'),
(306, 263, 375, 8, 'Si Charles, timidement, hasardait une observation, elle répondait avec des marche- pieds de calèches, on lui mangeait la laine d\'un matelas. Enfin, quand les nuages vers la philosophie. La nuit.', '2019-11-19 06:30:05'),
(307, 297, 375, 1, 'Le soir de printemps qui entrait dans sa santé un régime discret de nourritures exquises. Leur cou tournait à l\'intolérance, au fanatisme, disait Homais; il fulminait contre l\'esprit du siècle, et.', '2019-10-15 08:38:27'),
(308, 264, 375, 2, NULL, '2019-08-23 00:35:07'),
(309, 273, 375, 7, 'Elle en témoigna davantage à mesure que l\'on avait abattu des baliveaux. Ils s\'assirent sur un trône d\'or, au milieu des camions et des filles. Souvent une terreur la prenait, elle appelait Djali.', '2019-11-25 00:34:54'),
(310, 262, 375, 3, 'Cependant, la perspective d\'une situation nouvelle l\'effrayait autant qu\'elle le séduisait. Cette appréhension se tourna vite en la fille d\'un marchand bonnetier, devenue amoureuse de sa.', '2019-12-09 19:27:41'),
(311, 268, 375, 4, 'Place, devant l\'église, une espèce d\'écureuil, tel que vous voulez me séduire! -- Vous étiez en bas, dans la manière magnifique d\'une apothéose qui s\'envole. C\'était un autre papier qu\'elle ne.', '2019-08-30 13:30:08'),
(312, 268, 376, 9, 'Alors, sans aucun rapport entre eux, subtilement, comme pour y mieux voir, et votre pensée, dans votre vie? «Race porcine, prix ex aequo: à MM. Lehérissé et Cullembourg; soixante francs!» Rodolphe.', '2019-08-11 20:04:37'),
(313, 283, 377, 5, 'Charles, et s\'il n\'eût pas été trop bête! XIII À peine fut-il à l\'auberge que Bournisien demanda où il commençait à sentir cet accablement que vous passiez la main sur la réponse de Charles, il ne.', '2019-09-06 20:48:49'),
(314, 282, 377, 4, 'Comment! vous ne pourriez...? -- Oh! non, se disait-il, et surtout Lheureux, qui n\'avait jamais été curieux, disait-il, pendant qu\'il faisait glisser entre ses doigts, et la statistique le poussa.', '2019-02-23 13:07:44'),
(315, 298, 378, 3, 'Il eut de belles pantoufles en paille, et, enfin, quatre coquetiers en coco, ciselés à jour s\'étageaient sur la toile cirée. Elle laissait maintenant sur son front. Les bonnes religieuses, qui.', '2019-09-17 16:57:41'),
(316, 286, 378, 3, 'Cependant..., cependant..., objectait madame Bovary. Elle se retirait avec un sourire discret. Mais permettez! car je dois m\'assurer si la figure posée contre un des volets ouverts. Sa robe noire.', '2019-10-20 22:51:58'),
(317, 272, 378, 5, 'C\'était une manière d\'hippodrome que formait une longue lettre anonyme, pour la donner à Rodolphe, une cigarette à la Croix rouge, de sorte que c\'était un équin mêlé d\'un peu sévère et de Béranger!.', '2019-07-17 01:10:29'),
(318, 271, 378, 8, 'Où se rencontrer? par quel moyen, l\'année prochaine, pouvoir rembourser tant d\'argent; et il s\'étonnait de sentir tant d\'affection pour cet inébranlable aplomb. L\'univers aurait pu mener cependant.', '2019-11-15 06:08:51'),
(319, 292, 378, 9, 'Les pattes rouges des homards dépassaient les plats; de gros drap, qui accompagnaient ordinairement quelque casquette cerclée de cuivre brillaient magistralement. Quand il revint, elle se.', '2019-07-02 22:35:00'),
(320, 295, 378, 5, 'Elle restait debout, s\'appuyant de l\'épaule contre la muraille faisait comme des grains de sable sous un parapluie à la guimauve, et, de temps à autre, par crainte, disait-elle, d\'ennuyer M. Léon.', '2019-06-29 19:03:14'),
(321, 273, 379, 4, 'Girard passa sa blouse avait des plaques de bronze florentin, qui flottaient. Ils descendaient au milieu des saints tenant des palmes vertes, Dieu le Père tout éclatant de majesté, et qui me ferait.', '2019-06-02 19:45:57'),
(322, 263, 379, 1, 'Capucins dont les bribes s\'éparpillaient autour d\'elle; et elle reprit: -- Mais, ma chère amie... Et il retira de bonne heure. Ensuite elle retombait à plat, brisée; car ces élans d\'amour vague la.', '2019-10-02 20:45:50'),
(323, 298, 379, 3, 'Tout à l\'heure! je sors. Nous irons au Fanal de Rouen, quotidiennement, ayant l\'avantage d\'en être le château. Elle y était accourue, poussée par une grâce du hasard, se rencontrant enfin dans.', '2019-05-24 06:18:54'),
(324, 266, 380, 2, 'Léon écoutait passer, comme des qualités charnelles dont il mit un angle entre les omoplates; sa taille dure était engainée dans des corbeilles à jour par des difficultés faciles, et l\'assouvissent.', '2019-11-07 15:24:07'),
(325, 261, 380, 6, 'Le notaire entra, serrant du bras gauche contre son ventre. Un battement de ses bottines, il se levait, et elle continuait à sourire. Ils allèrent ainsi jusqu\'au fond, à la chapelle de la barque.', '2019-06-13 05:29:35'),
(326, 276, 380, 3, 'Ah! il était continuellement à son enfant: -- Ta colique est-elle passée, mon ange? Madame Bovary mère ne cessait, dans chaque lettre, de le retenir davantage, espérant que le ciel l\'avait voulu!.', '2019-09-15 02:02:58'),
(327, 281, 380, 7, 'Le sol sous ses vêtements; et se plaignait fort de la rue Ganterie, qui le charmait par quantité d\'exemples de chiens perdus, reconnaissant leur maître au bout de la prudence! Et il manqua.', '2019-09-17 01:02:24'),
(328, 284, 381, 7, 'Vaubyessard qui avaient apporté, les meubles ayant tout laissé là, négligemment. C\'était la même, celle-là! Il fut sur la bâche, faisait comme un enfant, la sainte Vierge trois chasubles pour.', '2019-12-03 16:11:37'),
(329, 277, 381, 1, 'Yonville. La rue (la seule), longue d\'une portée de fusil et bordée de quelques minutes, Rodolphe s\'arrêta; et, quand Léon eut remonté sa garde-robe, fait rembourrer ses trois marches, et, lui.', '2019-12-11 13:46:21'),
(330, 269, 381, 6, 'Il y a deux ans, lorsqu\'elle était malade! -- Quand je pense que voilà une robe de soie noire, ouvrait les tiroirs des meubles, une table et deux chaises, fit venir de Rouen il y avait la manie de.', '2019-11-29 16:00:49'),
(331, 290, 381, 6, 'Il faut t\'en commander une! répondit-il. L\'amazone la décida. Quand le pharmacien alla lui dire: -- En effet, des deux brides cassée. Ils s\'en revenaient de la boîte dans l\'armoire en se penchant.', '2019-12-04 08:59:19'),
(332, 280, 381, 6, 'Rodolphe avec ce sourire de courtisan, ayant besoin de ménager leurs chapeaux, gardaient par-dessus des mouchoirs de poche, dont ils tenaient un angle entre ses ponts et ses prunelles enflammées, et.', '2019-11-18 07:33:53'),
(333, 273, 381, 8, 'Mais le maire lui en mouillait les tempes par la cire des cierges contre le mur du bout de son cheval. L\'air du bal était lourd; les lampes pâlissaient. On refluait dans la rue, et du toréador. Dès.', '2019-12-09 20:03:57'),
(334, 299, 381, 1, 'C\'est qu\'il y a dans tous les jours, je me traînais le long des bâtiments à toit de tuiles brunes, elle avait peur d\'être aperçu; il entra dans l\'église, et qu\'il surveillerait lui-même, tous les.', '2019-11-24 01:46:32'),
(335, 261, 382, 9, NULL, '2019-10-30 04:02:50'),
(336, 298, 382, 6, 'Aussi jugea-t-elle utile de descendre chaque fois maintenant que Charles n\'avait point de complexion facétieuse, il n\'avait pas le courage de porter à ses bandeaux lisses, où, dans la bouffée.', '2019-12-12 02:28:09'),
(337, 282, 382, 1, 'Rouen, un tilbury bleu, attelé d\'un cheval anglais, et conduit par un signe à Justin, qui se balançaient à votre fenêtre, et qui pleurent comme des femmes, comme le père Rouault embrassa son futur.', '2019-11-29 18:30:12'),
(338, 271, 383, 3, 'Mais Charles, donnant au harnais un dernier adieu, séparé en deux ans. Puis, que de bonne heure à la recherche d\'Emma. Le Suisse, alors, se pressaient autour du cou. Cette première audace lui ayant.', '2019-06-17 03:59:19'),
(339, 282, 383, 0, 'Au bas de leur médecin. La vieille bonne se présenta, lui fit un peu gringalet, et ce n\'était pas sa pareille dans toute leur rancune se fondit comme une sentinelle en faction, avec son fils.', '2019-09-21 11:25:13'),
(340, 267, 383, 0, 'Souvent, elle variait sa coiffure: elle se relevait, cela n\'en finissait pas. Elle était, d\'ailleurs, pleine d\'espoir. Il allait dans les hôpitaux, on voyait un petit bavardage câlin qui ne payaient.', '2019-07-30 21:07:02'),
(341, 297, 384, 7, 'Monsieur, j\'attends! -- Quoi de neuf? -- Tenez. Et elle restait à consommer serait meilleur. III Le lendemain, à organiser leurs rendez-vous; Emma voulait ne plus vivre, ou continuellement dormir.', '2019-11-01 14:56:32'),
(342, 273, 384, 3, 'Tellier, le maître de musique passait en faisant sa tournée, souvent la trouvait délicieuse et tout abandonnée, comme un saltimbanque? Ils appellent ces embarras-là, faire le procès- verbal de la.', '2019-06-02 05:51:21'),
(343, 286, 384, 10, NULL, '2019-11-13 13:49:47'),
(344, 295, 384, 0, 'Croisant les bras ouverts et lui toujours dans les brumes de l\'horizon. Elle ne pouvait payer seul la haine des prêtres. Il établissait des comparaisons entre les piliers des halles jetait dans son.', '2019-07-28 14:52:34'),
(345, 294, 384, 0, NULL, '2019-07-11 01:48:40'),
(346, 296, 384, 0, 'Rouen, afin d\'avoir la plume entre les fauteuils, en tirant avec leurs chandelles; voulez-vous prendre quelque chose? dit madame Tuvache. Tous ces grands carrés noirs bordés d\'or sortaient, çà et là.', '2019-10-24 19:02:22'),
(347, 265, 384, 6, 'Il lui semblait se conduire d\'une façon démesurée; c\'était pourtant son seul espoir, la dernière superfluité de cet amour d\'une façon tendre. -- Est-ce de t\'en aller? reprit-elle, de quitter le.', '2019-03-19 03:59:26'),
(348, 297, 386, 7, NULL, '2019-06-05 16:18:16'),
(349, 267, 386, 9, 'Homais s\'émerveillait d\'une telle dimension, qu\'il devait envoyer ses lettres; il les conduisit jusqu\'à l\'entrée près de la rendre heureuse lui semblait un outrage, et elle s\'endormit l\'âme remplie.', '2019-08-03 00:25:12'),
(350, 261, 387, 10, NULL, '2019-11-01 21:31:26'),
(351, 268, 387, 2, NULL, '2019-12-10 22:11:34'),
(352, 274, 387, 0, NULL, '2019-12-04 05:31:20'),
(353, 298, 387, 2, 'Charles, un jour ne buvait que du lait pur, et, le long de la chair au poignet. Elle s\'arrêta. Puis, l\'ayant considéré quelques minutes à remuer tout bas qui tombaient sur des parquets luisants.', '2019-10-26 18:43:13'),
(354, 280, 387, 3, NULL, '2019-11-25 02:09:55'),
(355, 276, 387, 4, 'Il obéit donc; mais la colère avait emporté la rhétorique. Emma, renonçant à avoir des explications. Si elle avait disparu durant ces mots; Rodolphe ajouta la pantomime à sa phrase. Alors il la.', '2019-11-04 21:24:24'),
(356, 263, 387, 8, NULL, '2019-11-20 19:58:19'),
(357, 284, 387, 7, NULL, '2019-11-04 02:47:59'),
(358, 272, 387, 8, 'C\'est vrai, madame... Votre beau-père est mort! En effet, ces femmes, courbé sur son prie-Dieu gothique, et elle vit Justin qui lui avait dit: -- Monsieur, dit-elle, je signerai... -- J\'en suis si.', '2019-10-28 04:53:26'),
(359, 298, 388, 2, 'Alors il écrivit au bas de son sexe autre chose que de n\'y pas continuellement réfléchir. L\'hiver fut froid. Les carreaux, chaque matin, étaient rabattus pêle-mêle sur sa robe, hermine à l\'épaule et.', '2019-09-22 19:31:47'),
(360, 293, 388, 6, 'N\'est-ce pas? dit-elle, en fixant sur lui seul la cathédrale. -- Imbécile! grommela Léon s\'élançant hors de la neige. Elle se recula tout effrayé. Puis elle partit au bout d\'un mois, qu\'elle avait.', '2019-10-21 17:44:41'),
(361, 271, 388, 3, 'Chine inaugurant l\'année par des séminaristes troubadours ou des Botocudos? Charles, cependant, avait essayé plusieurs fois dans la salle, il s\'en aperçut, il le faut! cours!... Oh! tâche! tâche! je.', '2019-11-02 00:10:30'),
(362, 283, 388, 2, 'Rodolphe ne parlait plus. Ils se connaissaient trop pour avoir un entretien particulier. Puis, d\'une voix mielleuse: -- Et tenez, dit madame Tuvache. Mais il était bien longue à revenir. Mais, comme.', '2019-11-12 19:27:26'),
(363, 274, 389, 4, 'Emma l\'épiait d\'un regard idiot les pavés en se tournant vers sa voisine: -- Madame, sans doute, dans la voiture. À chaque tournant, on apercevait de plus pour tenter quelque démarche; il n\'était.', '2019-08-19 06:08:29'),
(364, 287, 389, 6, 'Appliquez-vous surtout à l\'amélioration ou bien un peu Cujas et Bartole, que diable! Qui vous empêche? Soyez un brave! Allons chez Bridoux! c\'est à deux roues, vieux cabriolets sans capote.', '2019-09-30 13:31:47'),
(365, 277, 389, 6, 'Emma pour l\'aider à monter dans l\'Hirondelle. Puis il la chérissait davantage. C\'était un bouquet de mariée, le bouquet de fleurs et les nougats. Comme il y avait de la voir s\'évanouir, courut à sa.', '2019-08-03 12:55:12'),
(366, 262, 389, 7, 'Elle avait fait un trou noir au bas des pages. Souvent elle le poussa doucement. Il tomba par terre. Mais, à la fois mourir et qu\'il regardait la Place; car elle se considérait comme fort.', '2019-10-30 01:28:05'),
(367, 297, 389, 10, 'Cependant, la perspective d\'une situation nouvelle l\'effrayait autant qu\'elle le rendrait. Quelques-uns lui rirent au nez; tous la refusèrent. À deux heures, elle courut chez Homais, chez M. Homais.', '2019-10-25 08:59:27'),
(368, 286, 390, 0, NULL, '2019-11-28 07:23:03'),
(369, 298, 390, 3, NULL, '2019-11-28 22:08:31'),
(370, 270, 390, 4, 'La terre était toute grise, comme par miracle, en y réfléchissant, il trouva sa femme était un domaine près d\'Yonville, dont il était continuellement à son service une jeune paysanne blonde. Elle.', '2019-12-12 02:43:04'),
(371, 264, 390, 7, 'Yonville. Le drapeau tricolore de fer-blanc qui tournait au vent, le long des quais, m\'étourdissant au bruit de sabots elle tourna la tête: Charles était sorti dès avant l\'aube, n\'ayant pas assez.', '2019-12-10 09:37:02'),
(372, 290, 390, 0, 'Les guides molles battaient sur sa chevelure dénouée. Quelque chose de fameux pour une vache qui avait seulement envoyé sa carte, balbutia d\'abord quelques minutes d\'un oeil finaud, et ne valent.', '2019-11-26 15:00:58'),
(373, 287, 390, 5, NULL, '2019-12-13 07:19:11'),
(374, 279, 390, 5, NULL, '2019-11-29 00:43:01'),
(375, 299, 390, 1, 'Comices! Par un geste de dédain. -- Quoi! répliqua le clerc. Cela se répandrait jusqu\'à Forges! jusqu\'à Neufchâtel! jusqu\'à Rouen! partout! Qui sait si des araignées avaient filé dessus. Le drap de.', '2019-12-08 14:31:17'),
(376, 275, 390, 0, 'Charles appelait au secours; Berthe, effarée, criait; et Félicité, dont les draperies s\'élargissaient en éventail, l\'amincissait, la rendait si malheureuse? où était la marraine, une romance du.', '2019-11-27 09:58:54'),
(377, 278, 390, 6, 'Enfin, elle rassembla ses idées. Elle se mordit les lèvres, et l\'enfant vagabondait dans le journal. Homais, à l\'industrie et aux trois quarts d\'heure. Enfin elle courut à sa bouche lorsque parut un.', '2019-12-01 03:05:00'),
(378, 280, 391, 2, 'Elle devenait elle-même comme une Poussière d\'or qui se succédaient en se penchant vers le médecin nonchalamment, soit que, ayant les mêmes yeux, s\'abaissant devant vous, revenaient se fixer sur les.', '2019-08-31 17:49:49'),
(379, 268, 391, 6, NULL, '2019-11-14 16:57:10'),
(380, 271, 391, 5, NULL, '2019-07-14 10:23:41'),
(381, 285, 391, 6, 'Le serpent soufflait à pleine poitrine, pendant que Charles et lui laissent faire ses adieux. Les herbes aromatiques fumaient encore, et des nappes d\'ombre emplissaient les feuillages. Emma, les.', '2019-07-21 07:45:17'),
(382, 274, 391, 7, 'Le cabotin diplomate avait même des draperies de sa tête: c\'était la nourrice! -- Qu\'y a-t-il pour votre service, monsieur le curé? demanda madame Bovary quatre mille francs. Emma s\'épanouit à cette.', '2019-09-05 20:05:50'),
(383, 289, 391, 6, 'Rouen gisait par terre, entre les mains sans pouvoir bannir l\'obsession qui me disait qu\'on la dérange. L\'automne commençait et déjà elle se mettait par terre, devant elle; et, les deux bouts du.', '2019-09-11 03:21:30'),
(384, 285, 393, 0, 'M. Léon sortit d\'une porte vitrée qui, à d\'autres qu\'à des Yonvillais, eussent rappelé la Sachette de Notre-Dame de Paris. Il ne savait pas l\'adresse de l\'ouvrier et avertirez qu\'on le demandait.', '2019-11-29 01:16:07'),
(385, 300, 393, 0, 'Il le secoua gravement, puis le tendit à la sermonner, prédisant qu\'ils finiraient à l\'hôpital. D\'ailleurs, c\'était la nourrice! -- Qu\'y avait-il?... Pourquoi?... Explique-moi!... Elle s\'assit à son.', '2019-05-11 10:32:41'),
(386, 263, 393, 10, 'C\'est que j\'aime, reprit-il en riant. -- Je m\'imaginais quelquefois qu\'un hasard vous amènerait. J\'ai cru vous reconnaître au coin de la muraille, que tapisse çà et là, quelque portion plus claire.', '2019-05-21 17:36:41'),
(387, 294, 393, 4, 'D\'année en année, cependant, son petit papa. Celui-ci emplissait des entonnoirs et bouchait des flacons, il collait des étiquettes, il confectionnait des paquets. On se tenait au fond de la cire des.', '2019-06-16 14:03:32'),
(388, 274, 393, 6, 'Le cocher s\'essuya le front, poussa un cri déchirant traversa l\'air. Bovary devint pâle à s\'évanouir. Elle fronça les sourcils d\'un geste son auditoire endormi, alors ils restèrent assis l\'un en.', '2019-05-26 15:33:32'),
(389, 291, 394, 8, NULL, '2019-11-16 06:33:05'),
(390, 299, 394, 6, 'Rouen, dit le pharmacien, avec qui dernièrement il s\'était assis. La rivière qui coulait, avec autant d\'indifférence que s\'il allait mourir et habiter Paris. Charles, à la lueur des lanternes neuves.', '2019-11-01 19:48:21'),
(391, 286, 395, 7, 'Il faudrait peut-être frapper l\'imagination? -- En quoi? répliqua le bonhomme Rouault, debout maintenant, allait et venait, ce qui faisait des efforts pour se tenir au courant, il prit ses sabots à.', '2019-11-25 05:39:46'),
(392, 267, 395, 2, 'On les regardait. Ils passaient et revenaient, elle immobile du corps et le bout d\'un long ruban de soie ponceau. Le batelier l\'examina et finit par répondre: -- Soit! nous verrons! nous verrons!.', '2019-12-02 19:16:57'),
(393, 300, 395, 8, 'Elle abandonna la pharmacie. Alors M. Homais les a tout pris sous son voile noir baissé. Par peur d\'être aperçu; il entra majestueusement sans retirer son peigne, à ses côtés et Athalie qui la.', '2019-04-09 04:35:47'),
(394, 283, 395, 7, 'Binet entra. Il était la catastrophe extraordinaire qui l\'avait attendue cinquante- trois minutes, avait fini par s\'en aller. Elle partit pour Rouen, il alla se joindre les mains; puis, avec son.', '2019-10-10 13:22:07'),
(395, 265, 395, 7, 'On la vit entrer chez le boulanger, qui en a dans tous les hommes! Nous tiendrons nos lecteurs au courant des découvertes. Il suivait le bord de la terrasse, à pêcher à la même heure, le maître leur.', '2019-05-23 02:13:21'),
(396, 289, 395, 5, NULL, '2019-10-05 13:25:51'),
(397, 288, 395, 3, 'Mais ce lambin d\'Hivert qui n\'arrive pas! -- L\'attendez-vous pour le pauvre comme pour dire que le jeune homme se sentit soulagé par cette prétendue fascination exercée sur un autre.', '2019-08-31 18:50:31'),
(398, 262, 396, 1, 'Emma, dans sa longue douillette de mérinos et son chapeau d\'homme descendait obliquement sur la demande quand l\'occasion se présente. Il mit sa trouvaille dans sa velléité de sacrifice, lorsque.', '2019-08-29 23:39:47'),
(399, 294, 396, 3, 'Du cidre, de sa besogne. Ce n\'étaient qu\'amours, amants, amantes, dames persécutées s\'évanouissant dans des pavillons solitaires, postillons qu\'on tue à tous les verres, d\'avance, avaient été.', '2019-09-19 14:13:06'),
(400, 300, 396, 8, 'Son amour s\'agrandissait devant l\'espace, et s\'emplissait de tumulte aux bourdonnements vagues qui montaient. Elle le reconduisait toujours jusqu\'à la nuit, ils repartaient. La barque suivait le.', '2019-10-30 22:13:47'),
(401, 276, 396, 4, 'Léon les déclamait d\'une voix enfantine, malgré de grosses larmes lui découlèrent des yeux. Il se tordait, le stréphopode, dans des corbeilles à jour s\'étageaient sur la Seine, nous arrivent.', '2019-09-19 18:35:31'),
(402, 275, 396, 3, 'Outre la compagnie d\'un homme, un fait illustre ou une minute, elle s\'assit sur ses talons, tout d\'un coup de bâton, une motte de terre devant lui. Et aussitôt il s\'ouvrait dans son effervescence.', '2019-08-18 19:31:41'),
(403, 282, 396, 6, NULL, '2019-08-04 03:36:45'),
(404, 281, 396, 1, 'ROUAULT.» Elle resta seule, et alors il s\'écria: -- Et elle reprenait: -- Sans moi, savez-vous bien, il se sentirait ensuite plus gaillard et plus massif. Mais, la prochaine fois, par changement, je.', '2019-06-30 19:46:03'),
(405, 290, 396, 6, 'Léon. Elle marcha rapidement pendant quelque temps; mais, aujourd\'hui encore, il adopta ses prédilections, ses idées; il acceptait tous ses malades; il ne pouvait pas trouver un mensonge qui pût.', '2019-11-24 01:22:23'),
(406, 264, 396, 7, NULL, '2019-11-03 02:24:20'),
(407, 285, 397, 7, NULL, '2019-10-20 01:41:58'),
(408, 276, 397, 7, 'Il se plaça près de lui, sur le collet. M. Homais vous en souvenez pas, sans doute, car tout bourgeois, dans l\'échauffement de sa propre cause. -- Sortez! fit la proposition de l\'hôtesse de dîner en.', '2019-04-10 07:43:58'),
(409, 269, 397, 6, 'Lorsqu\'elle avait bien conté quelque chose; mais tant d\'agitations avaient passé dans sa mansarde, en train de fumer une pipe. -- Tiens! tu as peur de Charles; il savait qu\'il faut, dans tous les.', '2019-08-12 08:05:43'),
(410, 299, 397, 1, 'Elle se dégagea, pour lui, Dubocage! Léon enfin avait juré de ne point remarquer ses soupirs mélancoliques, ni le mouchoir qu\'elle tirait. C\'est alors qu\'Emma se repentit! Elle se précipitait à.', '2019-03-11 07:25:17'),
(411, 274, 397, 0, NULL, '2019-09-01 03:36:35'),
(412, 293, 397, 6, 'Je ne sais pas tout? dit le chirurgien, lui introduire vos doigts dans la douceur de cette extase. La nuit douce s\'étalait autour d\'eux; des nappes de violettes s\'alternaient avec le bout.', '2019-10-30 23:07:56'),
(413, 277, 397, 8, 'Mademoiselle Emma l\'aperçut; elle se levait à demi les paupières se rapprochaient d\'une façon si violente qu\'elle baissa la tête appuyée contre l\'embrasure de la côte des Leux, en traînant ses.', '2019-08-20 17:08:31'),
(414, 300, 398, 2, 'M. Bournisien dans le fond noir de la saisie, était rentré à la flamme, par-dessus le gigot qui tournait, et le front hâlé, de cette admonition s\'affaiblit, et il grinçait des dents, il levait au.', '2019-08-07 09:32:12'),
(415, 291, 398, 0, 'Le père Rouault qui s\'essayait à marcher près de défaillir. -- Gare! cria une voix qui se brisaient en silence contre une falaise. Quelque chose de lugubre comme s\'il eût marché sur quelqu\'un.', '2019-11-06 19:21:38'),
(416, 298, 398, 6, 'Au lit, le matin, autour du poêle. D\'ailleurs, il allait à la manière du cheval de Bovary, et aussitôt la bonne dame, comment vous dirai-je bien?... C\'est un truc, dit le pharmacien. -- L\'attendre?.', '2019-11-16 19:51:48'),
(417, 286, 398, 3, 'Ah! encore, dit Rodolphe. -- Vous avez tort! il ne se permettait que le pharmacien jugea convenable de causer un peu plus bas, contre le ciel, et la mignarde chaussure, qui n\'avait pas desserré les.', '2019-10-25 23:26:34'),
(418, 267, 398, 10, NULL, '2019-11-23 00:00:33'),
(419, 265, 398, 4, 'Il vous aurait fallu subir les questions par coeur. Il lui semblait une insulte imbécile, et sa petite fille, que son bon sens pratique. Il allait lui venir de Rouen gisait par terre, devant elle.', '2019-11-26 18:36:24'),
(420, 272, 399, 2, 'Non. -- Comment vous portez-vous? ajouta-t-il. -- Mal, répondit Emma; je souffre. -- Eh bien, là..., là!... dit-elle d\'une voix forte: -- Non, je ne ferai pas de la mairie, quatre manières de.', '2019-08-09 14:11:34'),
(421, 279, 399, 10, 'Charles, bouleversé, attendit patiemment le retour de sa barbe grisonnante. Il venait de s\'essuyer la bouche ouverte. Puis, tout à la guimauve, et, de temps à autre, sur la commode encombrée de.', '2019-06-19 16:02:13'),
(422, 262, 399, 5, 'J\'étais désespérée! j\'ai cru mourir! Je te conterai tout cela, jamais il ne vous fâchez pas, je ne suis pas libre, tu comprends, si je savais quel dessert offrir à la grande roue d\'une machine pour.', '2019-06-10 07:37:46'),
(423, 263, 399, 2, 'Cours, trotta doucement, au milieu un cadran solaire en ardoise, sur un portrait de Rodolphe à côté de l\'eau, sous la peau, comme pour pénétrer tout, emporter tout. Mais elle était si tassé, que.', '2019-11-03 11:31:27'),
(424, 264, 400, 2, 'Un grand frisson lui secouait les épaules, et un «Notre Père, qui êtes aux cieux»? Oui fais cela! pour moi, pour m\'obliger. Qu\'est-ce que cela te serait agréable, je l\'ai encore vue samedi dernier.', '2019-05-10 21:54:12'),
(425, 283, 400, 5, NULL, '2019-05-31 11:14:55'),
(426, 291, 400, 3, NULL, '2019-08-12 17:15:35'),
(427, 271, 400, 0, 'Léon, le lendemain, à la Vaubyessard le 23 janvier 1693.» Puis on se moquerait de toi, reste à ravauder des chaussettes. Et on s\'ennuie! on voudrait habiter la ville, danser la polka tous les jours.', '2019-11-23 02:22:15'),
(428, 269, 400, 2, 'Le percepteur avait l\'air de s\'éveiller, et, comme s\'il y avait contre la porcelaine. -- C\'est donc pour cela, se disait-elle, en fuyant d\'un pied verni l\'asphalte du boulevard. Auprès d\'une.', '2019-05-08 04:44:44'),
(429, 275, 400, 8, 'Bovary s\'était enfuie à travers son voile, étourdie, chancelante, près de comparaître devant Dieu (tu n\'en es point encore plié bagage, que Charles mangeait en lui tendant un papier... Oh non! Et.', '2019-11-23 23:35:43');

-- --------------------------------------------------------

--
-- Structure de la table `record`
--

DROP TABLE IF EXISTS `record`;
CREATE TABLE IF NOT EXISTS `record` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `artist_id` int(11) NOT NULL,
  `label_id` int(11) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `release_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_9B349F91B7970CF8` (`artist_id`),
  KEY `IDX_9B349F9133B92F39` (`label_id`)
) ENGINE=InnoDB AUTO_INCREMENT=401 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `record`
--

INSERT INTO `record` (`id`, `artist_id`, `label_id`, `title`, `description`, `release_at`) VALUES
(301, 298, NULL, 'Cela se fait à un enfant qui poussait des éclats.', 'Dolorem impedit est aut neque. Neque a aut porro quam. Quo rerum ut ut mollitia similique. Voluptatem vitae accusantium magni et omnis.', '2019-02-02 10:32:05'),
(302, 295, NULL, 'Lion d\'or, partout; et, dans tout cela, jamais.', 'Aut eveniet necessitatibus tempore iste suscipit ut. Sed iusto recusandae aut. Minima ullam maxime nihil asperiores quo atque illo. Ad ipsum et totam. Quis vel sunt consequatur eum odit.', '2019-03-02 23:05:10'),
(303, 285, 150, 'Oui, je sais..., je sais... Il lui semblait.', 'Dignissimos officia et est praesentium quo voluptas eum architecto. Quo quaerat quia cupiditate dicta. Amet quos fuga placeat tempore.', '2019-09-24 18:51:26'),
(304, 306, NULL, 'Théodore, et en volant tout ce qui ne rapportait.', 'Debitis qui pariatur voluptatem voluptate aut alias nulla eaque. Ullam deserunt quis quos doloribus ullam. Adipisci et eveniet aut doloribus.', '2019-01-01 16:35:16'),
(305, 288, NULL, 'La nuit, il n\'osait pas la peine! Auraient-ils.', 'Inventore quia numquam dolorum voluptatem. Inventore laborum in qui dolore officiis quia. Dolor iusto numquam consequatur vel omnis ad. Qui est tempore consequatur inventore veniam exercitationem.', '2018-12-24 07:11:18'),
(306, 287, NULL, 'Il se voyait déjà revenant de faire de si.', 'Exercitationem nisi corrupti rerum libero sit porro tempora natus. Asperiores voluptas totam dolorem et tenetur ipsum aut. Pariatur adipisci voluptatum assumenda aut.', '2019-01-14 22:29:07'),
(307, 289, 137, 'La nuit douce s\'étalait autour d\'eux; des nappes.', 'Rerum quis rerum explicabo minima et. Et quos earum ut omnis dolorem veniam distinctio.', '2019-07-15 18:29:48'),
(308, 327, 136, 'Mais comment pouvoir s\'en débarrasser? Puis.', 'Beatae voluptate corporis voluptatem. Id porro consequuntur assumenda vitae provident rerum repellat. Eligendi dolor accusamus voluptatem voluptatem aut.', '2019-07-23 18:15:50'),
(309, 300, 144, 'Il faudrait que j\'avertisse monsieur. -- Non!.', 'Facilis ut necessitatibus vitae expedita sunt soluta et. Vitae ut repudiandae sit unde laboriosam. Non veritatis dolorum et.', '2019-08-17 15:11:14'),
(310, 285, NULL, 'Bertaux trois jours à Lestiboudois, deux.', 'Nesciunt possimus et exercitationem neque et. Nihil repellat quis libero atque. Voluptas incidunt quod excepturi et aut.', '2019-07-14 09:01:59'),
(311, 296, 145, 'Le notaire resta fort stupéfait, les yeux rouges.', 'Nihil nemo enim est ut ut omnis. Cumque quis ipsum maxime ut. Eaque totam aut impedit libero deserunt sit.', '2019-09-15 12:51:43'),
(312, 329, NULL, 'Société d\'agriculture. Quand il revint, elle se.', 'Ut dignissimos odit minima et placeat non et. Rerum est et eum sint. Sunt illo alias perferendis nihil ipsa accusantium. Velit beatae nemo fuga tempore totam et.', '2019-01-02 04:22:09'),
(313, 324, 131, 'FELICIE LEMPEREUR, professeur de musique.».', 'Ut qui voluptas nulla dignissimos non aut. Dolorem est aut aut eius asperiores sunt occaecati itaque. Quam aut veritatis omnis eum. Odit praesentium ad hic.', '2019-11-16 15:07:58'),
(314, 302, NULL, 'Il se rappelait rien. En effet, dès le matin.', 'Totam adipisci ex rerum possimus assumenda. Asperiores excepturi iusto adipisci perferendis ut. Iusto quibusdam dolorum expedita dolorum dolorem modi. Optio provident exercitationem magni.', '2019-07-01 12:07:25'),
(315, 314, NULL, 'On se rangea tout autour; et, tandis qu\'ils.', 'Illum sit error est ut culpa qui. Unde illo voluptatem aperiam consequatur animi vel vero. Vitae adipisci totam nisi ut voluptatum.', '2019-07-10 01:20:04'),
(316, 332, 136, 'Moyen Age, où il exposait les raisons d\'aller.', 'Et voluptatem ullam aspernatur. Sapiente expedita aliquid rem quasi repellat. Ex dicta qui doloribus facere aut.', '2019-01-30 18:38:35'),
(317, 285, 126, 'Dès le soir, sur la plaque d\'or de son autre.', 'Rem aliquam illo culpa voluptas asperiores. Ut molestiae cumque veniam optio saepe quae molestiae. Quibusdam eaque veritatis sit labore vel. Necessitatibus et qui nobis vero et cum odit aut.', '2019-03-21 10:06:44'),
(318, 323, 138, 'À chaque minute, tandis qu\'il poussait une sorte.', 'Esse aut enim alias. Ipsum fugiat sed quis saepe ut et laboriosam. In non magnam quisquam repellat dicta. Illo voluptate facere tempore voluptatum.', '2019-04-07 16:21:39'),
(319, 333, NULL, 'Flandres. Cependant, Yonville-l\'Abbaye est.', 'Qui vero exercitationem ad placeat sed quia. Eius quibusdam quasi sint sed. Iusto vel perspiciatis labore est quia.', '2019-09-11 09:29:36'),
(320, 308, NULL, 'Il caressait les enfants, la cuisinière, il en.', 'Ex ea ipsam ipsam ut. Exercitationem vitae qui vel sed illum quod eaque. Necessitatibus rerum nemo molestiae quia at. In vel animi dolorem corrupti.', '2019-11-10 18:58:46'),
(321, 311, 145, 'Rois, chez un marchand d\'estampes, une gravure.', 'Doloribus mollitia architecto necessitatibus qui. Ducimus voluptates vel cupiditate. Magni ex est voluptates. Nisi nesciunt eos quia dolores rerum voluptatem.', '2019-02-03 05:07:40'),
(322, 300, 128, 'Le clerc ne manquait pas de l\'auberge, la gorge.', 'Ipsum id rerum sunt qui vel consequatur. Distinctio placeat aut rerum officia placeat consequatur.', '2019-01-08 13:23:19'),
(323, 300, 150, 'Mais, la prochaine fois, par changement, je vous.', 'Libero in pariatur et est nisi vero earum. Sed ut nemo consequatur quod nulla. Quo ab voluptatum quos eveniet.', '2019-08-18 08:38:11'),
(324, 308, 136, 'Emma se mit à ronfler. Ils étaient au lit même.', 'Totam nam laudantium sit aut veritatis. Adipisci itaque magni vel maxime atque ut. Excepturi repellat eum omnis delectus voluptatibus voluptatem fuga laboriosam.', '2019-05-16 13:21:34'),
(325, 321, 139, 'Quel fanatisme! exclama le pharmacien, fixer.', 'Voluptas voluptatem qui sint maxime. Earum sit deleniti distinctio ad. Ut qui porro sit ut dolorum. Distinctio earum reprehenderit ipsam quasi et et laborum.', '2019-08-05 01:51:20'),
(326, 288, 131, 'Je vous en faut une autre se fût retourné vers.', 'Amet laudantium aut voluptatem quam laboriosam est saepe voluptas. Possimus autem quas consequatur maiores. Facilis velit quia occaecati quia.', '2019-10-06 09:44:53'),
(327, 322, 128, 'Charles y était, elle l\'aperçut; il lui sembla.', 'Enim dolor laudantium harum et architecto. Quae distinctio enim corporis optio. Nostrum sit ipsam inventore consequatur ut quas ut.', '2019-08-27 00:45:07'),
(328, 310, 149, 'Docteur en médecine, âgé de cinquante ans.', 'Cumque doloribus iste in placeat magnam neque et. Consequatur harum dicta quos iusto quaerat. Omnis dolor illum sit et.', '2019-01-30 04:19:15'),
(329, 284, 128, 'Charles, en face avec les saintes huiles.', 'Et nam non voluptatem. Rerum esse veniam similique molestiae officia eius excepturi. Et dignissimos dicta delectus et nihil.', '2019-07-03 13:21:46'),
(330, 307, 148, 'Mais, soit qu\'il n\'eût pas failli à la servante.', 'Porro sed rerum vel nemo. At doloribus tenetur quibusdam quis praesentium doloribus temporibus. Ea mollitia dolorem aliquid.', '2019-10-20 13:37:46'),
(331, 327, 135, 'Napoléon! Il est si fastidieuse avec ses deux.', 'Earum accusantium eveniet recusandae. Fuga voluptas unde ducimus neque ea. Quos velit voluptate explicabo rerum facere officiis non.', '2019-04-18 06:40:14'),
(332, 319, 136, 'Montchauvet, comte de Maulevrier, baron de la.', 'Magnam debitis qui vel ut velit fugiat. Placeat rem sunt dolores fugit. Aut optio eum voluptas voluptas recusandae. Esse voluptatem fugit distinctio quod.', '2019-06-05 21:39:43'),
(333, 322, NULL, 'Son mari, n\'était-ce pas quelque chose?.', 'Quas iure nihil nisi expedita repellat soluta tempora. Iure molestiae asperiores commodi magnam vero dolores. Tempora ut officiis in aliquid delectus.', '2019-08-29 08:47:39'),
(334, 317, 138, 'Elle entremêla son récit de récriminations.', 'Odio ipsum explicabo dolores laboriosam sit optio. Et dolores omnis est non dolorem dignissimos et. Ut voluptatem quasi tempore aut ut at sint.', '2019-03-20 07:50:56'),
(335, 311, NULL, 'Elle se repentait, comme d\'un bouclier les.', 'Ea sint incidunt recusandae ipsum non ut. Debitis enim in aliquid rerum sunt. Perspiciatis dolorem excepturi expedita et libero distinctio. Odio voluptatem est consequuntur aut et.', '2019-02-21 23:52:28'),
(336, 302, NULL, 'Place, devant l\'église, une lampe brûlait.', 'Maiores natus accusamus quibusdam ipsa voluptas. Perferendis voluptatem qui deserunt enim. Aut consequatur voluptas neque sit eius ipsam. Inventore illo incidunt qui exercitationem commodi.', '2019-01-17 07:44:22'),
(337, 315, 146, 'Quand elle s\'asseyait sur ses lèvres.', 'Ut similique saepe est delectus. Odio possimus nemo reprehenderit odit facilis beatae. Dolorem dignissimos mollitia quis et. Alias exercitationem laborum ut non alias.', '2019-07-02 19:39:44'),
(338, 317, NULL, 'Regardez-moi, plutôt: tous les comptes rendus de.', 'Mollitia non labore consectetur voluptatem. Officia iste blanditiis voluptas ut similique qui sit. Voluptatem sit voluptatem impedit iusto quam. Ut magnam qui et voluptatem iure maiores.', '2019-05-27 14:08:18'),
(339, 295, 147, 'Où pouvait-elle être? Il envoya Félicité chez.', 'Ipsam nostrum labore alias ut in dolores. Et omnis qui vel sed sit architecto qui. Nam esse dolorem et aut recusandae.', '2019-12-10 00:19:30'),
(340, 319, 143, 'Il tomba par terre. Félicité avait eu l\'idée de.', 'Magni et sint rerum tenetur in ut. Ab unde non ipsa quod corporis. A enim ullam fugit molestiae.', '2019-05-12 05:11:57'),
(341, 287, NULL, 'J\'en étais sûre! Elle se détournait pas. Elle.', 'Sit enim quis nostrum molestiae eos dignissimos ea. Est distinctio vitae consequuntur sunt et magnam quis.', '2019-02-02 11:28:40'),
(342, 297, 130, 'Madame Bovary se récria bien fort sur ce nom de.', 'Dignissimos quis placeat fugit nostrum mollitia. Officiis aut perferendis veritatis officiis nemo. Magnam ut voluptatum est hic ut sed corrupti.', '2019-07-02 18:59:14'),
(343, 329, NULL, 'Elle aurait voulu que Léon écoutait passer.', 'Aut nam fugiat fugiat velit reiciendis assumenda sapiente sint. Corporis commodi esse voluptatibus molestiae et dicta. Animi aliquam aut consectetur amet dolor recusandae id adipisci.', '2019-04-18 08:48:44'),
(344, 313, NULL, 'Rodolphe! Rodolphe!... Ah! Rodolphe, cher petit.', 'Sunt sed architecto inventore. Debitis ipsum omnis voluptates. Ut aut aut aut magnam rem voluptas.', '2019-12-05 08:44:33'),
(345, 286, NULL, 'Cincinnatus à sa mère. Emma disparut, puis.', 'Aut vitae nihil commodi numquam. Saepe quasi tenetur repellendus voluptate ut voluptatum tempora est. Impedit est praesentium minus blanditiis quo. Dicta consequuntur quia est voluptas ad.', '2019-07-29 09:09:27'),
(346, 300, NULL, 'Gaillard-bois; rue Maladrerie, rue Dinanderie.', 'Dolor numquam accusamus aut quo quia. Ea nobis quia inventore dicta deleniti recusandae. Earum architecto fugit quasi est.', '2019-10-19 21:20:32'),
(347, 332, 138, 'Elle était à remettre: -- S\'il me la demande, se.', 'Pariatur voluptatibus ab eaque ab cupiditate in. Id sint dolores est numquam distinctio neque temporibus. Provident ut voluptatem eum et excepturi doloribus.', '2018-12-26 23:24:11'),
(348, 309, NULL, 'Madame il faut bien, dit Emma, suivre un peu.', 'Quia libero est cupiditate libero ut accusantium nihil. Aliquid id numquam occaecati voluptatibus. Placeat qui eaque et sint ut.', '2019-01-05 06:31:32'),
(349, 308, NULL, 'On entendit sur les narines, ses yeux lui.', 'Minus aut veritatis aut ut praesentium ad. Voluptatem aut deserunt molestiae sapiente est. Quaerat aut voluptas quisquam voluptas repudiandae.', '2019-05-02 21:22:33'),
(350, 325, 146, 'Dubuc ne manquait pas de sitôt, ce serait.', 'Id qui id sed officiis cupiditate repellat. Velit rem tempora minima sit. Hic alias cumque voluptatem aut.', '2019-07-03 00:02:14'),
(351, 288, 136, 'Comment s\'est-elle donc empoisonnée? -- Je ne.', 'Quas odit sed error autem repellendus. Atque temporibus rerum et autem. Sed aut nobis ea dolorem.', '2019-08-16 03:20:11'),
(352, 305, 144, 'Nous serons seuls, tout à fait. Elle aurait.', 'Sit id aut fugit sit aspernatur ullam aut. Quo qui aut non eum dicta. Doloribus omnis rerum cumque ipsam doloremque cupiditate in non. Nobis tempora vel ipsam veniam est voluptatem soluta.', '2019-02-21 06:38:11'),
(353, 309, 129, 'Sur la ligne de son esprit, si bien qu\'il.', 'Et labore sit dignissimos quia dicta voluptatem. Tenetur quo optio et voluptatum aperiam. Fugiat harum rem culpa omnis quaerat magni repudiandae debitis.', '2019-10-03 01:40:15'),
(354, 290, 141, 'Au lieu de les ressemer par-là, de propager les.', 'Ipsa et quos ratione soluta necessitatibus expedita. Illum consequatur sit aut sunt molestiae quia dicta. Rerum et autem consequatur. Cum laborum consequatur consequuntur sint et sed.', '2018-12-30 07:50:09'),
(355, 323, NULL, 'La barque suivait le bord des halles.', 'Et in aut similique expedita laboriosam quam. Non ipsa alias corporis labore ea fugiat quam qui. Vitae officiis dignissimos ut blanditiis corrupti. Neque rerum qui mollitia cumque velit esse.', '2019-07-02 11:29:58'),
(356, 291, 133, 'Le nouveau, prenant alors une résolution.', 'Eum iure eveniet et debitis. Voluptas numquam fuga necessitatibus aut et optio. Cumque veniam distinctio omnis. Aut omnis odit molestiae autem. Ad molestiae quo magni ea. Vero sint ab voluptatum id.', '2019-07-21 18:32:35'),
(357, 294, 146, 'Rouen. Alors il écrivit à M. Lheureux. Donc, il.', 'Voluptas qui fugit at qui qui commodi. Et nisi et ea natus ea autem nesciunt nostrum. At ad error fugit eum sequi voluptas. Mollitia odio velit commodi ex.', '2018-12-22 13:42:09'),
(358, 309, 145, 'Saint-Victor et fuma jusqu\'au jour, tout à coup.', 'Omnis totam eaque asperiores vitae voluptatem ipsa facere ut. Non minus adipisci ipsam. Ab rem nobis soluta eum et laudantium.', '2019-11-02 10:50:41'),
(359, 289, 146, 'M. Derozerays de la cour, tout en répétant.', 'Qui temporibus rerum assumenda blanditiis. Nihil et suscipit blanditiis. Nam culpa eos praesentium consequatur ut aut quae quidem.', '2019-01-23 21:01:34'),
(360, 329, 128, 'Homais désirait la connaître; et, madame Bovary.', 'Atque est quia non incidunt nisi ipsam. At ducimus et earum veritatis. Assumenda quod accusantium voluptatem quo unde repudiandae. Aspernatur et debitis ex iste nesciunt rerum vel.', '2019-09-02 05:10:25'),
(361, 308, 141, 'Mais le coup était porté. Huit jours après.', 'Cumque voluptatibus commodi in. Nisi consequatur amet quisquam ullam. Quo doloribus error ea ut perferendis aut. Nostrum dolor voluptates aut sed illum quia ea suscipit.', '2018-12-27 07:03:29'),
(362, 316, 147, 'Ah! malheureux que nous vivrons ensemble, ce.', 'Neque quia non consequatur provident est. Accusamus dolor vel corporis expedita voluptatum doloribus dolorem. Assumenda accusamus veritatis quisquam qui veritatis adipisci.', '2019-02-25 06:26:05'),
(363, 312, 144, 'M. le préfet de grands cadres dorés portaient.', 'Sed eveniet libero aliquam voluptas error. Aliquam quibusdam ipsa itaque cumque necessitatibus. Eos et sequi architecto mollitia.', '2019-11-28 23:48:07'),
(364, 293, 140, 'Trafalgar et toutes sortes d\'appréhensions. À la.', 'Fugit facilis suscipit est cum eligendi deleniti. Quisquam esse occaecati qui similique vel officia. Voluptates eos et exercitationem.', '2019-06-16 13:42:44'),
(365, 284, NULL, 'Elle avait envie de la terrasse. Rodolphe venait.', 'Dolores id distinctio eos minus iste qui. Accusantium earum fuga sed modi odio cupiditate odio. Beatae facere fuga expedita. Voluptatem repellendus aut aliquam dolorum amet.', '2019-02-07 16:21:08'),
(366, 293, NULL, 'Elle étouffait. -- Donnez-moi encore.', 'Rem deleniti enim aut commodi est consequatur sed consequatur. Illo rerum quae consequatur neque. Nostrum blanditiis esse sed dolorem.', '2019-01-04 02:17:34'),
(367, 321, 149, 'Elle cousait des habits rouges, ou bien les.', 'Ea odit aut repudiandae eveniet et corporis. Consectetur et fugit consequuntur ut quo commodi ut. Totam totam ut et culpa reiciendis tenetur.', '2019-11-16 03:23:21'),
(368, 307, 146, 'C\'était un mouchoir à elle, était restée là, et.', 'Nihil esse quod aut atque. Nam autem reiciendis magnam facere. A numquam id ducimus quo. Sed velit rem non voluptatibus non ut qui.', '2019-10-13 18:11:17'),
(369, 310, 146, 'Léon jura qu\'il lui versait de temps à autre.', 'Provident suscipit ut voluptate at perspiciatis. Provident minus ut modi vel quod veniam. Adipisci eius mollitia tempora vel voluptates omnis.', '2019-02-03 02:39:16'),
(370, 316, 136, 'Continuez. -- Je voudrais que l\'on ne découvrît.', 'Dignissimos molestias vel doloribus quisquam. Quam dolor provident sit ratione molestiae tenetur est. Ad maxime et consequatur praesentium.', '2019-06-05 18:26:41'),
(371, 292, NULL, 'Où la retrouver? Mais elle était emportée depuis.', 'Enim eum aut et eos alias maxime maxime. Reiciendis voluptas ut porro et laborum voluptates iste. Dolor sequi earum consequatur et dolor porro nam. A in est totam suscipit doloremque nesciunt.', '2019-02-22 18:34:13'),
(372, 313, 146, 'Il se posait en face de l\'auberge du Lion d\'or.', 'Rerum enim et id provident atque tenetur. Rerum nulla fugiat deserunt dolor dolor provident tempora. Officiis repellendus omnis distinctio ipsum officiis. Qui consectetur est ut voluptas iusto et.', '2019-07-14 16:08:32'),
(373, 296, NULL, 'Tostes pour payer l\'opération, conta, le soir.', 'Sed deleniti architecto expedita molestiae. Dolorem quos illum et omnis placeat. At necessitatibus quis sit ducimus dolor.', '2019-06-15 21:45:36'),
(374, 331, NULL, 'Alors, tout en passant, faisait s\'égrener en.', 'Voluptates reprehenderit dolores est est omnis ipsum in. Amet voluptatem deserunt fugiat explicabo doloremque fuga. Excepturi fuga quia dignissimos.', '2019-10-01 14:59:38'),
(375, 295, 129, 'Rodolphe! Rodolphe!... Ah! Rodolphe, cher petit.', 'Quia itaque est qui ipsa. Ad qui soluta ullam perferendis quibusdam. Similique voluptas incidunt et vero nesciunt aut eius. At minus nihil vel.', '2019-08-13 22:48:48'),
(376, 292, 140, 'Puis, considérant la mine mélancolique du svelte.', 'Rerum fugiat vel amet ipsam harum voluptatem voluptate qui. Cum id assumenda doloribus pariatur incidunt adipisci voluptas qui. Culpa corporis est fugit aliquid tenetur quis.', '2019-08-01 23:06:20'),
(377, 287, 134, 'Thibourville, lorsque devant eux, un essaim de.', 'Eos voluptas ut voluptatem consequatur tempora. Culpa laborum dignissimos et qui. Doloremque et aut ipsa non assumenda vel voluptas voluptatem. Laborum voluptate enim dolores eum ut.', '2019-02-17 23:55:30'),
(378, 303, NULL, 'Ce succès l\'enhardit; et dès le potage. Le.', 'Delectus magnam amet repudiandae laboriosam ipsam distinctio. Laboriosam repellat quo et. Quam laboriosam nemo unde dolore. Cum autem sed ducimus praesentium architecto omnis perspiciatis quo.', '2019-06-27 23:47:20'),
(379, 288, 143, 'On se laisse entraîner par ce souvenir, comme.', 'Ipsam iure consequatur in eum. Rerum et et illo reprehenderit esse. Ut et laudantium quod ea aliquam. Voluptatem aut eveniet dolores qui eligendi reiciendis qui.', '2019-01-25 19:17:50'),
(380, 314, 150, 'Barneville, six cents livres de rente.', 'Dolor et voluptatem sit tenetur. Voluptas incidunt quia quia. Excepturi est nulla non iure consequatur. Fugiat suscipit earum quasi qui iure.', '2019-05-24 21:47:51'),
(381, 313, 126, 'On entendait le battement de coeur, qu\'il.', 'Repudiandae sapiente nostrum aspernatur dolores inventore non. Et et quis non est nobis. Sit non libero dicta consequuntur quidem illum maiores.', '2019-11-10 08:35:54'),
(382, 311, 135, 'Bovary, et aussitôt la bonne femme. Emma ouvrit.', 'Quod molestiae hic ex necessitatibus ipsa. Doloremque voluptas aut et culpa sequi. Odio aliquam iure ratione quidem doloremque fuga commodi. Laboriosam assumenda quis doloremque aliquid deserunt.', '2019-10-13 15:44:56'),
(383, 333, 140, 'On n\'achète pas une feuille de papier, qui lui.', 'Et nihil vel corporis. Voluptas nihil harum qui quisquam. Fugiat repudiandae aut aut aperiam assumenda. Dicta optio vero sit ut quod eaque.', '2019-04-25 18:27:00'),
(384, 309, 134, 'Cinq cents vers à toute la largeur de la.', 'Aut saepe et reiciendis voluptates. Quia est quaerat occaecati itaque culpa explicabo.', '2019-01-05 02:38:11'),
(385, 301, 130, 'Et même il rappelait, dans une lettre qu\'elle.', 'Commodi deserunt eos qui fugit dolorum. Ipsum soluta ullam voluptatem explicabo quia aspernatur iusto. Blanditiis ut et autem. Reiciendis et sed a enim quis quia inventore possimus.', '2019-06-25 12:57:26'),
(386, 290, NULL, 'Il faudrait à présent, il possédait pour la vie.', 'Aspernatur saepe nostrum ratione quis sint sequi. Sed enim labore omnis voluptatem aut consequatur voluptatem. Consequatur voluptatem totam harum sequi soluta tenetur ducimus quasi.', '2019-06-02 05:12:16'),
(387, 295, 138, 'Homais et M. Léon, dit-il, est remonté de bonne.', 'Ut molestiae velit voluptatem quidem. Ea quibusdam quisquam ipsam quam. Repellendus aut laudantium dignissimos quam libero est. Qui magnam totam pariatur. Sed at quia qui est et magni ut.', '2019-10-12 11:25:15'),
(388, 314, 135, 'Cela lui parut enveloppé par une sorte de logis.', 'Sunt ut officiis reprehenderit neque in. Sit perferendis tempore dignissimos minima qui voluptates in. Corporis totam iusto sit aut praesentium qui. Molestiae iste ut dignissimos deleniti.', '2019-09-08 13:31:35'),
(389, 312, 139, 'Charles, éveillé, pensait toujours à la cour des.', 'Quia molestiae modi veritatis consequatur ut et. Omnis sed pariatur odit culpa sequi quis cum. Corporis totam ducimus assumenda. Voluptas quasi dolor harum deserunt ut dolores repudiandae.', '2019-07-03 10:21:13'),
(390, 318, 130, 'III Le lendemain, à huit heures, Justin venait.', 'Non magni ea est repellendus dicta ad quas. Atque nesciunt temporibus consequatur eum et. Natus sed nulla iusto. Qui enim recusandae voluptatibus a.', '2019-11-25 12:44:21'),
(391, 314, 135, 'Mais le pharmacien lui-même fléchit un peu.', 'Repudiandae exercitationem cupiditate porro natus quis ullam. Saepe fugit nemo assumenda at in quas voluptatem.', '2019-06-08 13:41:23'),
(392, 330, NULL, 'Conseiller, elle demeurait tout immobile, ne.', 'Dolor perferendis impedit dolores provident quam. Maxime nemo ut et sed dolore qui eum.', '2019-08-09 15:36:51'),
(393, 306, 137, 'À propos d\'un mot, il se désespérait en pensant.', 'Facilis omnis ut quod fugit. Id provident aut quod accusamus. Quam aliquam quidem iure qui voluptatibus asperiores ab.', '2019-03-25 19:16:21'),
(394, 298, 141, 'C\'était un fil de fer passa, en jetant contre le.', 'Ea exercitationem vitae quos quis. Et praesentium laboriosam qui modi enim qui est. Illo distinctio ut explicabo molestiae adipisci consequatur et.', '2019-08-25 03:06:23'),
(395, 309, NULL, 'Je ne connais pas les payer, néanmoins il.', 'Repudiandae distinctio placeat impedit enim. Temporibus omnis totam vero ipsa ipsum hic ipsum et. Recusandae magnam fuga exercitationem. Rem culpa soluta repellendus quod fugit debitis.', '2019-01-31 12:24:15'),
(396, 300, NULL, 'Et suivait le grand air, dans la soirée. Les.', 'Aut ipsa dolorem consectetur qui ullam possimus. Voluptas voluptatum doloribus ratione et ut reprehenderit. Vitae consequatur sed voluptate laborum qui quam deserunt ea.', '2019-04-21 13:56:38'),
(397, 285, 140, 'Elle crut le voir étalé chez les avoués, chez le.', 'Eius consequuntur nisi quam vitae ipsa. Molestiae accusantium rerum in et ut aliquam. Laudantium in placeat omnis explicabo dolore officia velit sint.', '2019-02-16 03:36:53'),
(398, 300, NULL, 'Quant à la Société d\'agriculture. Quand il.', 'Fugit enim quibusdam autem minus mollitia voluptas ullam. Possimus similique dolores nisi.', '2019-07-27 17:19:19'),
(399, 304, NULL, 'Il prenait, avec l\'âge, des allures épaisses; il.', 'Incidunt corporis voluptas sunt dolore quia neque quo. Ut corrupti voluptas ab. Et omnis sapiente fugit laboriosam qui voluptatem sed.', '2019-04-07 16:04:47'),
(400, 290, 127, 'Madame Bovary mère arriva. Elle revit la ferme.', 'Esse voluptas et esse totam dolores est. Tempora ex labore corporis molestiae illum ut non. Est animi dolorum voluptas numquam sunt.', '2019-04-03 22:29:49');

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL,
  `roles` json NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pseudo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_confirmed` tinyint(1) NOT NULL,
  `security_token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_8D93D649E7927C74` (`email`),
  UNIQUE KEY `UNIQ_8D93D64986CC499D` (`pseudo`)
) ENGINE=InnoDB AUTO_INCREMENT=335 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id`, `email`, `roles`, `password`, `pseudo`, `is_confirmed`, `security_token`) VALUES
(251, 'admin0@kritik.fr', '[\"ROLE_ADMIN\"]', '$argon2id$v=19$m=65536,t=4,p=1$UWJSeFZpSjdPc3lYY2xmQw$l6/qWzriV1WHWkYaonHf/v7Uid6i92BGE6VR/KaFef0', 'admin0', 1, 'c3818b954706ad6ca9ca745b5ac0c9a2'),
(252, 'admin1@kritik.fr', '[\"ROLE_ADMIN\"]', '$argon2id$v=19$m=65536,t=4,p=1$OEEuLkN6bklPa0ZIVURiZA$tvpNc0CZ5JhCScKCWGnJFvbNPDpgs7FSJdXSeaw3CqE', 'admin1', 1, 'c35a42e9b41697729758fb0137cfcf15'),
(253, 'admin2@kritik.fr', '[\"ROLE_ADMIN\"]', '$argon2id$v=19$m=65536,t=4,p=1$ZnJhSkRON1VtLmM2TlhMMg$JpBq/Ct7zfkFmMxqIachwgyW+gGZ7ekl7zJAy+VPA6g', 'admin2', 1, 'fc73d29f78829329525e7edec831ae2f'),
(254, 'admin3@kritik.fr', '[\"ROLE_ADMIN\"]', '$argon2id$v=19$m=65536,t=4,p=1$QUJucGd5c3BxZ3BBVzEybA$Vr9UGAyGo7ATSzHIIv0i1r/Hyp3r+tGvFdjLSj6oIV0', 'admin3', 1, '8fb5f1350b5e802934836426470d99df'),
(255, 'admin4@kritik.fr', '[\"ROLE_ADMIN\"]', '$argon2id$v=19$m=65536,t=4,p=1$ZGsvR2EwbkVXUzBGV0FLNg$8hjiq9Dxt3ljBP5wzpaO5ui8VVN+nQvL4Htp3LKgPwk', 'admin4', 1, '29ffd8d5e0d58d5e4c5f187aa4d8c8aa'),
(256, 'admin5@kritik.fr', '[\"ROLE_ADMIN\"]', '$argon2id$v=19$m=65536,t=4,p=1$OGhBbmo0ZXd4TTU1VnZFUQ$PM9lUVdNlBVjtIt3IbbD2d5eljgmW034JQIEQStT6Ys', 'admin5', 1, 'aa05ec411e5c868eccaf7b5fda7d42fe'),
(257, 'admin6@kritik.fr', '[\"ROLE_ADMIN\"]', '$argon2id$v=19$m=65536,t=4,p=1$ci55cGZQa2R3aTdtdC5VZQ$XBvrhS5eo18KqL2siroqePKC3DxVKfm01ptalvN5JjA', 'admin6', 1, '37da7edb11c0d02476e35021de79d09c'),
(258, 'admin7@kritik.fr', '[\"ROLE_ADMIN\"]', '$argon2id$v=19$m=65536,t=4,p=1$L0IwSTEzLkdHL25mM0o3dw$QXZviTykg6FFe23Q09njQW6xH+q5B+mxPIdSbNgZnOw', 'admin7', 1, '6c1fb60d7a574c538ca37b9eda08e595'),
(259, 'admin8@kritik.fr', '[\"ROLE_ADMIN\"]', '$argon2id$v=19$m=65536,t=4,p=1$eHRRbUFiUEVKU08vYWREUw$4efaYgZ9PLB/jUKOffKvaY2QT+TnxoxffjSvSGIf2Mk', 'admin8', 1, '0d6a07fdaa830f7f53093e5e8bf4a1c1'),
(260, 'admin9@kritik.fr', '[\"ROLE_ADMIN\"]', '$argon2id$v=19$m=65536,t=4,p=1$UFlZVXlYM0dzdC40LmI5Tw$GT2XKCBqGt6YhEb+5tENcPpI1ji9Ni1poye6U681Mvw', 'admin9', 1, '676edfb82107796979a2f276d45cdda7'),
(261, 'user0@mail.org', '[]', '$argon2id$v=19$m=65536,t=4,p=1$UTBqS3ZOR3lsdU5PNUxrUg$x9kOZWrPyF83Tfcq3um36LRh6vxg6zcwFm1etrDe00o', 'user0', 0, '2c446c5f872bdff8d2c240e3b19d2eca'),
(262, 'user1@mail.org', '[]', '$argon2id$v=19$m=65536,t=4,p=1$QTlqZVJ0RjU4bG0zQWJQdg$II5sslc90e1vJRZS9hjKEBoiFK3/eF/OkswaqMVYOiA', 'user1', 1, '6280b46790f394a5c1476b8e5f2d322e'),
(263, 'user2@mail.org', '[]', '$argon2id$v=19$m=65536,t=4,p=1$Lk5GM1o5NlVxaE04emF5VA$YDs823g2PMFtHPwzRgGvTpckD+ur5t4mzvokcDEk7Fc', 'user2', 1, 'f598666ac79de0aa5910f88d6e63d0a0'),
(264, 'user3@mail.org', '[]', '$argon2id$v=19$m=65536,t=4,p=1$alRGL3RzOFUzL2s4SmhmZQ$yu84alYl21V2Y1hS1gaHfFeNPBEx7fLL5faTNqJfHkE', 'user3', 1, '433737f09dae881a45d0ec4d5e6c41f7'),
(265, 'user4@mail.org', '[]', '$argon2id$v=19$m=65536,t=4,p=1$SGIzZUFaNXhoUm4xTVhjSA$8p79sMqbnQw6vvCRx91pw6fxuyM6RFLggoWaurlYe4U', 'user4', 1, '3967759b35af57fc476aba0b44bd2003'),
(266, 'user5@mail.org', '[]', '$argon2id$v=19$m=65536,t=4,p=1$V1RKZHB3QzMzbHJtSjdwVQ$aEd8VNZ6HqKdvK66rWqA3kagvBW/yPf0yg0kQOLzUTs', 'user5', 1, '5b070a0c337e87e2c76e8e3497b584d2'),
(267, 'user6@mail.org', '[]', '$argon2id$v=19$m=65536,t=4,p=1$L1QvL3FIWDh6MU9OOFFadA$dNSD06e2XtfqvudcfhNKeuEwB1haIl1gBaIe6ajQDgw', 'user6', 1, 'b493fb6a58ebfbf5eb0777e45b54332e'),
(268, 'user7@mail.org', '[]', '$argon2id$v=19$m=65536,t=4,p=1$SFJCNmoxOElEUUV0VHZxRA$buyRQDjRZmzmoePrZ3iccRyakwJkXRsqvpGOytDObPU', 'user7', 1, '2ac7a866d7ffe0225c926b1a946525dc'),
(269, 'user8@mail.org', '[]', '$argon2id$v=19$m=65536,t=4,p=1$bU9ORjk3cFFsSDV5cWFUNw$aTvMp4rNbempk2sItjymtsAoeW1dzizmrwiLBf1wGrQ', 'user8', 1, 'b75e910438c966144fc30be175df30e7'),
(270, 'user9@mail.org', '[]', '$argon2id$v=19$m=65536,t=4,p=1$YnAwNkZkRGw1cFhmY0ovcA$wMYZt59LGlOQhi9dDpLPUOp9EqS9JOLb730VZBFA4Ag', 'user9', 1, '7cecd3f7d285b6950e2a117ebaa0b170'),
(271, 'user10@mail.org', '[]', '$argon2id$v=19$m=65536,t=4,p=1$ZmpDeUlvZnI3N0tHbjg2Mg$5SVzV7uF6sbnPU2hlR7rIYalQDfS+4VLgTeN29zyWLg', 'user10', 1, 'c3e9369e3e33dabd3b35deb0df84db4a'),
(272, 'user11@mail.org', '[]', '$argon2id$v=19$m=65536,t=4,p=1$WFUyajBuSDZINFl1dm85bA$KoG5NFmR0PFEJlcX0N4BtYtEeBeeHUZMlIZFsKgUQ+E', 'user11', 1, '162a26c39b962db6995cbc93f9057b48'),
(273, 'user12@mail.org', '[]', '$argon2id$v=19$m=65536,t=4,p=1$QjM4Qk5HVjdZakhlYkVneg$LEMn/Wh7MBgXVI4eEnpNDZc4RISzT2gIIQKp5HZHgaQ', 'user12', 1, 'c44de792ea04cd34aaebc95061b96268'),
(274, 'user13@mail.org', '[]', '$argon2id$v=19$m=65536,t=4,p=1$Y0ZyVGtwZmtVS3Fhak9YZQ$TeA4+Q/3Gv/AY/omAF3kr7neTyLAKADWHWHDORrvUbg', 'user13', 1, 'd376211c665f82a4d7967bf39f2f19dd'),
(275, 'user14@mail.org', '[]', '$argon2id$v=19$m=65536,t=4,p=1$NWlENlEzbllIb0suTnQ3MQ$MnMLsccQ5OP/RHuBrpSqT4tZdKtfESLFZOa7ZS7+awg', 'user14', 1, '0a25ca909fbaa00c08aeca495d73001a'),
(276, 'user15@mail.org', '[]', '$argon2id$v=19$m=65536,t=4,p=1$T0k3aXpLbDN3YjVwWDJKMg$VvkTCcIyKvuXE6hNB3OSaPYtu6rArj7PbX9XNaQUCq0', 'user15', 1, '78f2660b2cd264fc4bd34e143442a767'),
(277, 'user16@mail.org', '[]', '$argon2id$v=19$m=65536,t=4,p=1$UjZyVFgwQVZ4VllYaC9tOQ$e+fQ5duVmEgiANvXj+x849WEFnZjROugKj4pemlC8eY', 'user16', 1, 'b586df4b38419aee334022a1ad90caf7'),
(278, 'user17@mail.org', '[]', '$argon2id$v=19$m=65536,t=4,p=1$eVdweE9KanhkLmE0Qzc5Yg$IW92UX+AzbrRpDBhbfbLIqqkNX9qyVpY15tt5xADL28', 'user17', 1, '2c1e3bd70fd5dfe0670535a92a84933c'),
(279, 'user18@mail.org', '[]', '$argon2id$v=19$m=65536,t=4,p=1$aDZqUkhPWktycEwyWkl0Sg$QOh7mpqFtzITG9W0KBNwg5E/4EkMbEj6xBYktvXx7Hc', 'user18', 1, '86b46e47b2f32a8e4e531d568dab3286'),
(280, 'user19@mail.org', '[]', '$argon2id$v=19$m=65536,t=4,p=1$LmVhaUU4RHdUVi5aQVR5Mw$MtpECG/ViZ9IbmvKUB+duT4bI04Oen7boTQ/B0vDKvY', 'user19', 1, '50222175233225bde68cb9e579c5ecd0'),
(281, 'user20@mail.org', '[]', '$argon2id$v=19$m=65536,t=4,p=1$VDVLbExYQlhJU2w1OUFUeA$bw74ogeKIvIl3DFS3Q+yg0nw2G94Jj+19jowqdSi2Rk', 'user20', 1, '34dd7020f307e487c78686ddee419e51'),
(282, 'user21@mail.org', '[]', '$argon2id$v=19$m=65536,t=4,p=1$NWhyU0IzY0J3a3pjRzJUdA$0ToCUEtCzqcJmJrizymIXhDfbsUJ8YtAu0pbmdfhXuQ', 'user21', 1, '24c5c34742f42a79a7a02f6ad9eb6d18'),
(283, 'user22@mail.org', '[]', '$argon2id$v=19$m=65536,t=4,p=1$R1BnRW00REVkWm1EQkI0UA$iNZf268qVfTiZrHSwyfv890wokWnIHSdLU4vJf6P/KI', 'user22', 1, '076392078cec4da9df28325a71fecc2a'),
(284, 'user23@mail.org', '[]', '$argon2id$v=19$m=65536,t=4,p=1$TUE5dk9qLzVYYmxha29kYw$sCIVa055+lcSPElFwaFBTE7RcL5PxmLiW28/3UsF+e0', 'user23', 1, '28807567ccb9eb0aa14d42e388eb082f'),
(285, 'user24@mail.org', '[]', '$argon2id$v=19$m=65536,t=4,p=1$djVrSFUyMjAvSk9adFpZYQ$HkQBKiCN0+FAQTPkJqpHq7QZczE4nJMGhxNZ89bbGcQ', 'user24', 1, '746dcf7f3b005adf6f47e9bd8540cbe7'),
(286, 'user25@mail.org', '[]', '$argon2id$v=19$m=65536,t=4,p=1$TVJKOFFIMm9JRVk4NHRHYw$2mbR42gktuiDKI/VGQJ6egdAY4ImdoSXo9uIqzbsw+E', 'user25', 1, '08a10803467090abea29e9a52ccad502'),
(287, 'user26@mail.org', '[]', '$argon2id$v=19$m=65536,t=4,p=1$SGtvZlpiUnQvd01FUmRMVw$R5DCfHNBpenltvdckHqO5RWftIGO1BXTGJ8p1XTLy48', 'user26', 1, 'fd33bddba1f70fd65e7de9f9dc853206'),
(288, 'user27@mail.org', '[]', '$argon2id$v=19$m=65536,t=4,p=1$Z2VmNGpLSm53enh5MU8vbw$Q78GnlIv9xt3a7h88ZQgrPZX9liC4SQGpHSyC8Agzv0', 'user27', 1, '78889ef014e0f79a20643b52a73643b5'),
(289, 'user28@mail.org', '[]', '$argon2id$v=19$m=65536,t=4,p=1$R2pCVFBrWk5GMXZ4MFdxbw$RHYCq2YMCmLxIfLTQDNa4ROlFS0D9upOVfEKSeFkOYI', 'user28', 1, '6b59ce5c68870254b6f722e075e9766f'),
(290, 'user29@mail.org', '[]', '$argon2id$v=19$m=65536,t=4,p=1$NW5LdkQuQWZ0QlJOSWQ3RQ$6zSia5luXlNPG8a55v5VkyBZz1QqjrXcMpi5sG/a7jw', 'user29', 1, 'b3d3d5259c52f59727c7b1c6e64c75c1'),
(291, 'user30@mail.org', '[]', '$argon2id$v=19$m=65536,t=4,p=1$dFZkQ0Z5bXZ4cnBKRlMzbA$ZVF8AWqeeMl3Utc8krohvYnrQN/DXz6JyI7FUQmj684', 'user30', 1, 'acc9f7b962c20d7b531e5d01f7908423'),
(292, 'user31@mail.org', '[]', '$argon2id$v=19$m=65536,t=4,p=1$M3V3dGlYUmU1ZndqN3ZCaQ$Af1Z8vZwW/AetISht/g2I+J8bjyg8n+qGA4Nee95Hbs', 'user31', 1, '9cc7a52594c88b3132ca0dc0610bc3a8'),
(293, 'user32@mail.org', '[]', '$argon2id$v=19$m=65536,t=4,p=1$RWJRaFovWjFpUVVzZmh6eQ$7XwiSQQvf8aKGCHJ6L3Pve2SCJARKvXQduprXM1CqnA', 'user32', 1, '0c5d69a3bd2e8dc52289b3b6467bbb58'),
(294, 'user33@mail.org', '[]', '$argon2id$v=19$m=65536,t=4,p=1$aEdaN0R5R1hRWjdYRDN2Sw$w1zMznwPJ0SPyNYlwCyMzCcNXl2fEe0bhq2wX9k06qQ', 'user33', 1, 'd4bf5cb557e080bcbbf3e7e7f4d35b4b'),
(295, 'user34@mail.org', '[]', '$argon2id$v=19$m=65536,t=4,p=1$MVk1UHlOV0tLOG1ZT2d6Tw$LIKk0Y4aZTi+DeKbKZtddFeHaprj6VpnDod7h6I5FYM', 'user34', 1, '4f31f6493c360d1c49fb63c611349b58'),
(296, 'user35@mail.org', '[]', '$argon2id$v=19$m=65536,t=4,p=1$b2FCcU5mckNZWm9BTkxBNA$oqbApoUDkpROWF/HgzNDj7+Y54M2d/FypHIsdRmzJ3g', 'user35', 1, '467de70582a89342fc3ec939e9d63773'),
(297, 'user36@mail.org', '[]', '$argon2id$v=19$m=65536,t=4,p=1$THR4ZVh5MkhjWHp3VENyZg$cRICsqAeJoiB++CBwqSC9dzDh4UqeAixxZ80xgGbIfA', 'user36', 1, 'e0c9174d5290b885a552dbc58f8e6e23'),
(298, 'user37@mail.org', '[]', '$argon2id$v=19$m=65536,t=4,p=1$bURoVUdwOTN4Mi5vNVU0eQ$LpJ+vm8PP5S0/08z7LVTMfG4PdE99CcBThG64RefO2Y', 'user37', 1, '04f92261093060b074d7fec19b650c17'),
(299, 'user38@mail.org', '[]', '$argon2id$v=19$m=65536,t=4,p=1$aVduQkFVb1RYTUhZREFiYw$Bz7FzY2334gN12YG82eOCYBuGyY/wqks3Mu3KjJHs3o', 'user38', 1, '2adff495b9aa9a26d493d84edfbbe4d9'),
(300, 'user39@mail.org', '[]', '$argon2id$v=19$m=65536,t=4,p=1$MTVnNGNobzI1Q2RsN2hWNQ$g1qpxdMo07U/INuKWYE/uoSF7FtvhQleGu4+GWttxEk', 'user39', 1, '4a34ef1455efa3bcb083605676477713'),
(301, 'halima', '[\"ROLE_USER\"]', '$argon2id$v=19$m=65536,t=4,p=1$eWh4QVlBUGJmbFA2eE92SQ$ajYB/jnMBP+LuJm2gK/o3tmK/P38CAFQRpLp0HRSMOI', 'ghazaloran2@gmail.com', 0, '71f9e38a1e6774fceba1341717079aa2'),
(302, 'ghazaloran2@gmail.com', '[\"ROLE_USER\"]', '$argon2id$v=19$m=65536,t=4,p=1$SDVtN1ZERWt6OGZ0UmZxRA$4YeigqYW5M0QdE9iVzO0EYWn9FcNXDXUl8MaLRNwof4', 'halima', 0, '5c5754c1e83744342f028938348835ec'),
(303, 'ghazaloran@gmail.com', '[\"ROLE_USER\"]', '$argon2id$v=19$m=65536,t=4,p=1$RTZiZE8vN21udy9kMldBRg$prOEgdfu65T1JDlTWrctfKzv3h9ar9wGOypGUSHKJ5o', 'halima1', 0, '041a9de218e7e1a4e114d967cf474471'),
(304, 'ghazaloran555232@gmail.com', '[\"ROLE_USER\"]', '$argon2id$v=19$m=65536,t=4,p=1$Ui51YmdlU256em5zckVucQ$yUaLDOUOnikboM2yOKIii9EKP20KBBBU58A1Gm5ZZww', 'user555', 0, '71c672fa3d5384ce8db6ecb2d1393e24'),
(305, 'ghazaloran555232@gmail.comr', '[\"ROLE_USER\"]', '$argon2id$v=19$m=65536,t=4,p=1$LlRpYTdQbDlSSkVrc1dQZQ$dwIhkClfLbLjlgAjyVyJyrXZTDwFuSawIrufgzimpUE', 'user555r', 0, 'ef501d9670abc589c69d7b3cdc656659'),
(306, 'ghazaloran2@gmail.comddddddd', '[\"ROLE_USER\"]', '$argon2id$v=19$m=65536,t=4,p=1$SEoxOTJ2V2RzQ3F2d0IxRQ$V/oVHC4zDbwiwDozhv5uwd71B0CUMLOAl0p46jMMygs', 'halimaddddd', 0, '7c2525fa6d7eeb370e1a265e36a3a6f8'),
(307, 'ghazaloran2@gmail.comdddddddd', '[\"ROLE_USER\"]', '$argon2id$v=19$m=65536,t=4,p=1$TzVjeGxFMDhqLllIaENJYw$HYiMYupiHdAbxJhGeWcM20kYTW0y3dD5zWIK4DGwd1E', 'halimadddddd', 0, '547d0bfc2225f21eee1efba8a2081726'),
(308, 'ghazaloran2@gmail.comddddddddd', '[\"ROLE_USER\"]', '$argon2id$v=19$m=65536,t=4,p=1$V1NDbm5BMTYyUllsLmJLTA$JVShNrmCgOcCxp3c0DxsNpvHyL7vLtZyUS0ZOIyXVkw', 'halimaddddddd', 0, 'f0306d7df65c9807b915c22b28575aae'),
(309, 'ghazaloran2@gmail.comdddddddddg', '[\"ROLE_USER\"]', '$argon2id$v=19$m=65536,t=4,p=1$UTR6UElDM1pQN3RMeVRJMA$QBrKbom9Kf5YMqQPjIgm0TzSsNOvtr3Wd9HJvmdgup8', 'halimadddddddg', 0, '60917bcc39ed70ba153cb21fa9574374'),
(310, 'ghazalorantttt@gmail.com', '[\"ROLE_USER\"]', '$argon2id$v=19$m=65536,t=4,p=1$VEpEYnBweldNcWd0S0wvdA$TTU3SjMCXuDmG0hK0AtsoRuxsoxYqMejfZWfmeI3iqo', 'jane_admin', 0, 'bfc8cc4c12ffe03d5a41e1a06ed65601'),
(311, 'ghazalorantttt@gmail.comfffffffffffffffff', '[\"ROLE_USER\"]', '$argon2id$v=19$m=65536,t=4,p=1$RzBPR0s0cWFmSVJYekN2Rw$kQOgIsEsPW5+eaLvVlif23t+MCh+QfLb5W78sFbfApI', 'fffffffffffffffffff', 0, 'ab0b4bde27b2a81abd1bf3194c60c479'),
(312, 'ghazalorantttt@gmail.comffffffffffffffffff', '[\"ROLE_USER\"]', '$argon2id$v=19$m=65536,t=4,p=1$djhxekdrY1UxR3FHT1o5WA$hvcQK9EkMF6CLL4aEdqdtSO4kNk757SuG70DfiSMrmc', 'fffffffffffffffffffff', 0, '7f71bc415179ba7748a7a7a396015bc7'),
(313, 'ghazalorantttt@gmail.comfffffffffffffffffff', '[\"ROLE_USER\"]', '$argon2id$v=19$m=65536,t=4,p=1$WVEwbEpmR2xxakRyVmlvSQ$TRo5aIQSSSKBRWqVLV+DldMUsii/VMzkO2b2ZR0Tta4', 'ffffffffffffffffffffff', 0, '1ce205f9c4428ea57195643a0763bb0d'),
(314, 'ghazaloran2@gmail.comdddddd', '[\"ROLE_USER\"]', '$argon2id$v=19$m=65536,t=4,p=1$b3J5cTZBamxIQjlRbzU0Nw$VOt1QQI0bruzqu9jFRTtcfajDDyZfgmAPH55l554pUg', 'jane_admindddd', 0, 'fe169c77c0ed1907477e00325feadb43'),
(315, 'ghazaloran2@gmail.comddddddff', '[\"ROLE_USER\"]', '$argon2id$v=19$m=65536,t=4,p=1$QUVtWWE4d1J0L2RhOG00cQ$7SP/HZZsT8SdzJVGKlao1uAWSlYMsMdTPy2wviHyBXw', 'jane_adminddddff', 0, '3987ac3efbf705e74c7351eb993c6f45'),
(316, 'ghazaloran2@gmail.comddddddffhh', '[\"ROLE_USER\"]', '$argon2id$v=19$m=65536,t=4,p=1$SzQ5Q1B3Mnl1Q2Y2WmkySA$Ct5Z1rjZMZVDgrjBA7fAkerDVviNP5gW/a3fiWmflyQ', 'jane_adminddddffhh', 0, '06711e974b23021d8eca16f6512087bd'),
(317, 'ghazaloran2@gmail.comddddddffhhr', '[\"ROLE_USER\"]', '$argon2id$v=19$m=65536,t=4,p=1$ekk0c3hqZkZjcUxBQWlrQg$tMCiEtKjWTyg7kvIYWtZa1VMAB1aVajf67rpUNWxMtw', 'jane_adminddddffhhr', 0, 'db3fc884cce3052473f877a135b7971a'),
(318, 'ghazaloran2@gmail.comddddddffhhre', '[\"ROLE_USER\"]', '$argon2id$v=19$m=65536,t=4,p=1$WWR6eTM1RlNoaUk0NkNyLw$u4Y1n2b7/VeOXR+jhKWwLFjMomRYOpgGMZRZbsCTzRQ', 'jane_adminddddffhhre', 0, '840893fd06feb7d03f195948080f3a2b'),
(319, 'ghazaloran2@gmail.comddddddffhhreh', '[\"ROLE_USER\"]', '$argon2id$v=19$m=65536,t=4,p=1$TURscnE5YXVaZk8wZ0Q3Vg$8IrPDsr9sp3vmdFSU97uddrybZdCzMIXWU1MktXWloc', 'jane_adminddddffhhreh', 0, '6efd36b8b56d749f8a028d5c897fe3db'),
(320, 'ghazaloran2@gmail.comddddddffhhrehr', '[\"ROLE_USER\"]', '$argon2id$v=19$m=65536,t=4,p=1$VEdaTDd4Z0tJelRrZ0xnVQ$DUEwNX2e1jguHqZkQsV24rkixKxh82DqXontPzrOs2U', 'jane_adminddddffhhrehr', 0, 'd716dc30b4849c8c9c6d4b97d4f68322'),
(321, 'ghazaloran2@gmail.comddddddffhhrehrr', '[\"ROLE_USER\"]', '$argon2id$v=19$m=65536,t=4,p=1$ckhyOEs0VWEuN0l5bkVDUw$gPfib8WKfxdszOCvO41I4yv0HNkhWS8HQdnffQOAIMI', 'jane_adminddddffhhrehrr', 0, '61ff214297bbc2d7932f274e6f622ec1'),
(322, 'ghazaloran2@gmail.comddddddffhhrehrrz', '[\"ROLE_USER\"]', '$argon2id$v=19$m=65536,t=4,p=1$bHBVY0liVXZFWnZYY1l1Sw$FAUKkiIAmQCRukcVK4/6koW9ct2ktSsN2nTzKXdSa1Q', 'jane_adminddddffhhrehrrz', 0, 'd95908a0b89c0378844c36a3a1f069d3'),
(323, 'ghazaloran2@gmail.comddddddffhhrehrrza', '[\"ROLE_USER\"]', '$argon2id$v=19$m=65536,t=4,p=1$UXB2LkVvNndQVGQzRC5NVQ$V3ANOSPpjX8kStipcmOL5L9b8nqA1Su8aHZAlqDXqlM', 'jane_adminddddffhhrehrrza', 0, '527bbda93ca3d2423cd6f5ea3f9f568c'),
(324, 'ghazaloran2@gmail.comddddddffhhrehrrzaa', '[\"ROLE_USER\"]', '$argon2id$v=19$m=65536,t=4,p=1$T0lrVmNBZUFsWTd0NTh1Tg$7a8zp8LGGKGCWzDLsIceFx+e0DbOly3fxb848kb3lo8', 'jane_adminddddffhhrehrrzaa', 0, '9b2fae902a20f04854fe3d67ab9b674f'),
(325, 'ghazaloran2@gmail.comddddddffhhrehrrzaas', '[\"ROLE_USER\"]', '$argon2id$v=19$m=65536,t=4,p=1$LnpjNzFxWWpSVFZzRXlqYQ$3/qRqwXnuKA6XB3oAG3jS9i49kkO09JUk3bMHLDfgQI', 'jane_adminddddffhhrehrrzaas', 0, '7fb77977fa3f42323755ef7124a4b5b7'),
(326, 'ghazaloran2@gmail.comdfzefzef', '[\"ROLE_USER\"]', '$argon2id$v=19$m=65536,t=4,p=1$S0dzaGlqb25FUXVBU3g4NA$e67+j0hJn1L4epZcB77ajaoIuWyVbqX07DhIKaqGFGg', 'ssss', 0, 'c03888225f457feafe26c9ad407b28c7'),
(327, 'ghazaloran2@gmail.comeeeee', '[\"ROLE_USER\"]', '$argon2id$v=19$m=65536,t=4,p=1$bURla3Nwd0xOd0NTY1hmNg$xVtjNQwZ6Vh6wxdZSbxIMRReOQmZpum6SuI8UKFLXNQ', 'jane_adminssss', 0, '5d1cdd22daf6928f813405acda8bb95c'),
(328, 'ghazaloran2@gmail.comeeeeez', '[\"ROLE_USER\"]', '$argon2id$v=19$m=65536,t=4,p=1$S25ZV1pFTEJNWnRiNVNHRw$zsyuHEg3VMCtNiXWlZj7CkTWEzmeOorQ7D3NjOjXSrw', 'jane_adminssssz', 0, '96d81840024f21b6ba3c5a00dc9ebdb7'),
(329, 'ghazaloran2@gmail.comeeeeezs', '[\"ROLE_USER\"]', '$argon2id$v=19$m=65536,t=4,p=1$VWxmWXIuOFNMbm9HWVhXRw$2636shimpa6vTT9aR6Zy3CSEltzwybQQO1DzNVt6TNw', 'jane_adminsssszs', 1, 'c865c2a6689ed0b966b79d902d039d9e'),
(330, 'ghazaloran2@gmail.comeelllll', '[\"ROLE_USER\"]', '$argon2id$v=19$m=65536,t=4,p=1$OWt2OTJMVWZtOUE5S3RlNA$Kv/t3UoGbVRg4ZaxyCX4O68UrwQVr9fYzVJY9PwtNNw', 'jane_adminsssszsl', 0, 'c4d967da3a0a394f663f35a14a0db583'),
(331, 'ghazaloran2@gmail.comgggg', '[\"ROLE_USER\"]', '$argon2id$v=19$m=65536,t=4,p=1$SVkxajN6ZXdReERnUlJnUA$uVVDtTNbeySHc+QErThAkxhRrFsU44xiKKz6ttj0zwk', 'jane_admingggg', 0, '8bf9dfe8818853eea9eae2e6531d2e43'),
(332, 'ghazaloran2@gmail.comjjjjj', '[\"ROLE_USER\"]', '$argon2id$v=19$m=65536,t=4,p=1$L2gvY1FOZUo3VnBCcGdkWQ$YVtE4HjieHqTaMj34waQ8mB3/qe2qfShKw7zsPqs1eU', 'jane_adminjjjjjj', 0, '9f5ca2759e2a8ffa56c384ae558379be'),
(333, 'ghazaloran2@gmail.comjjjjjyy', '[\"ROLE_USER\"]', '$argon2id$v=19$m=65536,t=4,p=1$Lm1FWXBUNDFaQ1QxeW5maw$NPyHiSUYNu9cU+yGWkB48TxmDWqBGL+M3xsU7FXieXs', 'jane_adminjjjjjjyyy', 0, '0e225e125f52635d0668bd78ad81720c'),
(334, 'ghazaloran2@gmail.comdfzefzefee', '[\"ROLE_USER\"]', '$argon2id$v=19$m=65536,t=4,p=1$L3FOMUhRWlQ0Ukd1TnRtMg$p9oojyEgnCSVxQyGULDEzXoyQQEBH1/dIdqwEbpc+jU', 'ssssee', 1, '8786cc274854e3bc9d918f4e8261d3eb');

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `note`
--
ALTER TABLE `note`
  ADD CONSTRAINT `FK_CFBDFA144DFD750C` FOREIGN KEY (`record_id`) REFERENCES `record` (`id`),
  ADD CONSTRAINT `FK_CFBDFA14A76ED395` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`);

--
-- Contraintes pour la table `record`
--
ALTER TABLE `record`
  ADD CONSTRAINT `FK_9B349F9133B92F39` FOREIGN KEY (`label_id`) REFERENCES `label` (`id`),
  ADD CONSTRAINT `FK_9B349F91B7970CF8` FOREIGN KEY (`artist_id`) REFERENCES `artist` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
