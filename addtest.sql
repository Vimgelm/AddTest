-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Хост: localhost:3306
-- Время создания: Окт 13 2020 г., 13:06
-- Версия сервера: 5.7.31-0ubuntu0.18.04.1
-- Версия PHP: 7.2.24-0ubuntu0.18.04.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `addtest`
--

-- --------------------------------------------------------

--
-- Структура таблицы `answer`
--

CREATE TABLE `answer` (
  `id` int(100) NOT NULL,
  `test_id` int(100) NOT NULL,
  `user_id` int(100) DEFAULT NULL,
  `date` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6),
  `percent` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `answer`
--

INSERT INTO `answer` (`id`, `test_id`, `user_id`, `date`, `percent`) VALUES
(13, 61, NULL, '2020-03-12 19:06:12.260180', 100),
(14, 61, NULL, '2020-03-12 19:13:00.000000', 100),
(15, 61, NULL, '2020-10-13 09:49:23.000000', 66.6667);

-- --------------------------------------------------------

--
-- Структура таблицы `questions`
--

CREATE TABLE `questions` (
  `id` int(11) NOT NULL,
  `test_id` int(111) NOT NULL,
  `question` varchar(255) NOT NULL,
  `answer1` varchar(255) NOT NULL,
  `answer2` varchar(255) NOT NULL,
  `answer3` varchar(255) NOT NULL,
  `answer4` varchar(255) NOT NULL,
  `checkbox1` varchar(1) NOT NULL DEFAULT '0',
  `checkbox2` varchar(1) NOT NULL DEFAULT '0',
  `checkbox3` varchar(1) NOT NULL DEFAULT '0',
  `checkbox4` varchar(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `questions`
--

INSERT INTO `questions` (`id`, `test_id`, `question`, `answer1`, `answer2`, `answer3`, `answer4`, `checkbox1`, `checkbox2`, `checkbox3`, `checkbox4`) VALUES
(82, 61, ' magna aute nostrud in?', ' eiusmod culpa', '  cillum laboris', ' cillum ipsum velit dolor laboris', ' cillum lorem', '0', '1', '0', '0'),
(83, 61, ' irure amet non magna?', ' enim in proident dolore', ' sit amet', ' labore ipsum duis', ' incididunt cupidatat incididunt', '0', '0', '1', '0'),
(84, 61, ' lorem  ullamco?', ' sunt do', ' commodo magna', ' exercitation quis labore', ' dolor eu', '0', '1', '0', '0'),
(85, 62, ' dolor?', ' aute labore qui do', ' esse  et  culpa', ' mollit minim non lorem sit', ' duis magna mollit', '0', '0', '0', '0'),
(86, 62, ' veniam?', ' dolor elit', ' aliquip dolore eiusmod', ' amet  consectetur', ' sit cillum', '0', '0', '0', '0'),
(87, 62, ' velit nostrud?', ' veniam anim', ' dolore', ' dolor deserunt dolore', ' pariatur veniam voluptate nostrud tempor', '0', '0', '0', '0'),
(88, 63, ' et?', ' adipiscing ad magna  sed', ' culpa elit enim in in', ' adipiscing nisi', ' in labore do', '0', '0', '0', '0'),
(89, 63, ' ipsum aliqua ipsum?', ' sint sint esse quis', ' mollit', ' anim laboris aliquip irure nisi', ' qui ea', '0', '0', '0', '0'),
(90, 63, ' tempor minim enim irure lorem?', ' ipsum consectetur adipiscing dolore', ' deserunt', ' mollit duis sed labore adipiscing', ' tempor', '0', '0', '0', '0'),
(91, 64, ' tempor sit ullamco sunt?', ' sint nisi ut', ' sit cillum duis ad', ' deserunt irure consectetur', ' minim', '0', '0', '0', '0'),
(92, 64, ' lorem eu in do ?', ' consectetur ut', ' ipsum consequat sunt officia in', ' magna quis cupidatat sint consequat', ' irure duis sint', '0', '0', '0', '0'),
(93, 64, ' eiusmod labore tempor dolore in?', ' Ut consectetur in in', ' sed aliqua et aliqua', ' in proident esse ea pariatur', ' nisi culpa', '0', '0', '0', '0'),
(94, 65, ' elit labore voluptate eiusmod?', ' duis amet veniam minim nostrud', ' minim irure', ' velit magna labore', ' sed in', '0', '0', '0', '0'),
(95, 65, ' voluptate incididunt?', ' esse', ' deserunt nisi', ' cillum pariatur', ' non aliquip incididunt', '0', '0', '0', '0'),
(96, 65, ' reprehenderit mollit?', ' amet officia', ' minim in ', ' et aute', ' in voluptate', '0', '0', '0', '0'),
(97, 66, ' aliqua adipiscing in veniam adipiscing?', ' minim occaecat', ' sit veniam', ' officia minim dolore in et', ' culpa', '0', '0', '0', '0'),
(98, 66, ' qui eiusmod culpa dolor?', ' cupidatat dolor exercitation do sunt', ' exercitation mollit', ' sit ipsum magna aliquip', ' enim exercitation mollit', '0', '0', '0', '0'),
(99, 66, ' irure fugiat cillum ad?', ' sit sint consectetur deserunt fugiat', ' mollit non sunt', ' aliqua', ' nostrud', '0', '0', '0', '0'),
(100, 67, ' exercitation proident?', ' veniam duis officia dolore', ' occaecat', ' laboris in ipsum ullamco magna', ' occaecat mollit', '0', '0', '0', '0'),
(101, 67, ' sed?', ' dolore fugiat voluptate fugiat', ' lorem anim reprehenderit anim', ' dolore magna eu laboris', '  velit', '0', '0', '0', '0'),
(102, 67, ' commodo tempor consectetur tempor?', ' in occaecat voluptate incididunt Ut', ' labore', ' dolore eu cillum', ' eu', '0', '0', '0', '0'),
(103, 68, ' Ut labore?', ' commodo', ' do pariatur', ' nisi ipsum cupidatat reprehenderit sint', ' consectetur in deserunt qui', '0', '0', '0', '0'),
(104, 68, ' tempor?', ' exercitation', ' eiusmod Ut ea et', ' dolor', ' veniam', '0', '0', '0', '0'),
(105, 68, ' nostrud sunt eiusmod proident officia?', ' veniam', ' nisi Ut', '  ea quis', ' tempor', '0', '0', '0', '0'),
(106, 69, ' dolore culpa?', ' ullamco', ' quis ullamco reprehenderit aliquip', ' dolore in eu', ' minim ut officia veniam dolore', '0', '0', '0', '0'),
(107, 69, ' minim irure cupidatat labore?', ' proident et dolore labore', ' dolor nisi', ' veniam ullamco non', ' incididunt', '0', '0', '0', '0'),
(108, 69, ' amet dolore in dolor?', ' eu sint aliqua', ' veniam in', ' irure in  dolor', ' ullamco in do fugiat', '0', '0', '0', '0'),
(109, 70, ' cillum ut?', ' cillum consequat adipiscing', ' lorem nostrud et sed in', ' non nostrud labore in reprehenderit', ' tempor commodo sunt aliquip dolore', '0', '0', '0', '0'),
(110, 70, ' consectetur esse irure minim?', ' cupidatat dolor amet duis', ' incididunt et dolor eiusmod magna', ' incididunt amet', ' lorem culpa nostrud ', '0', '0', '0', '0'),
(111, 70, ' mollit laboris?', ' ut commodo dolore cillum', ' incididunt nostrud velit sit deserunt', ' ad aliqua nisi culpa', ' sint enim in dolore eu', '0', '0', '0', '0'),
(112, 71, ' aute occaecat commodo?', ' cillum ut non proident elit', ' dolore', ' ea anim ipsum incididunt', ' do in  ea', '0', '0', '0', '0'),
(113, 71, ' Excepteur dolor amet dolor?', ' exercitation Ut irure sunt', ' in', ' exercitation', ' sunt', '0', '0', '0', '0'),
(114, 71, '  culpa cillum ipsum?', '  ipsum qui aliquip', ' amet elit dolore velit consequat', ' ut elit', ' fugiat Ut cupidatat esse', '0', '0', '0', '0'),
(115, 72, ' veniam ?', ' aliquip non veniam cillum', ' nostrud et duis commodo consectetur', ' duis ipsum ullamco in', ' tempor proident sunt ut', '0', '0', '0', '0'),
(116, 72, ' officia dolore irure Excepteur?', ' commodo  officia', ' sint velit anim', ' cupidatat et', ' labore', '0', '0', '0', '0'),
(117, 72, ' anim sunt dolor?', '  ad sint', ' aliqua dolore ut dolore consectetur', ' enim tempor esse fugiat voluptate', ' in', '0', '0', '0', '0'),
(118, 73, ' Ut fugiat?', ' velit occaecat elit sit', ' ullamco minim', ' in magna dolor', ' commodo fugiat dolor eiusmod', '0', '0', '0', '0'),
(119, 73, ' nisi?', ' consequat', ' quis ad aute ea', ' amet aliqua', ' aute ad exercitation exercitation', '0', '0', '0', '0'),
(120, 73, ' consectetur qui?', ' occaecat officia aliquip sunt', ' qui eiusmod culpa sunt ', ' reprehenderit nostrud consectetur sed', ' mollit eu nisi', '0', '0', '0', '0'),
(121, 74, ' adipiscing incididunt mollit cillum?', ' enim', '  sed', ' voluptate labore minim', ' anim laboris lorem enim ad', '0', '0', '0', '0'),
(122, 74, ' sed cillum in commodo adipiscing?', ' fugiat dolor proident cupidatat', '  sed qui cillum non', ' ullamco', ' occaecat minim dolor qui ad', '0', '0', '0', '0'),
(123, 74, ' cupidatat cillum anim consequat do?', ' cupidatat veniam exercitation aute', ' in officia', ' labore  officia laboris mollit', ' sint aute culpa proident dolor', '0', '0', '0', '0'),
(124, 75, ' sed in elit?', ' consectetur cupidatat  velit', ' sunt sint', ' voluptate et', ' non', '0', '0', '0', '0'),
(125, 75, ' anim lorem?', ' sit Ut irure ', ' esse nostrud sed', ' in eu', ' irure officia quis minim ullamco', '0', '0', '0', '0'),
(126, 75, ' reprehenderit qui  velit?', ' sit', ' ', ' sint incididunt officia enim enim', ' veniam non minim exercitation', '0', '0', '0', '0'),
(127, 76, ' duis sed?', ' mollit minim', ' aute eu in Excepteur ea', ' deserunt eu tempor', ' mollit ad ea', '0', '0', '0', '0'),
(128, 76, ' cupidatat?', ' ad quis aliqua officia ut', ' incididunt occaecat', ' duis ipsum tempor cupidatat', ' voluptate', '0', '0', '0', '0'),
(129, 76, ' officia in ipsum officia?', ' Ut laboris magna ut non', ' consequat nostrud', ' ut Excepteur cupidatat nostrud', ' sed culpa', '0', '0', '0', '0'),
(130, 77, ' dolore adipiscing reprehenderit dolor?', ' quis sint veniam exercitation consequat', ' sunt dolor cupidatat labore', ' eiusmod fugiat voluptate', ' do consectetur Ut occaecat culpa', '0', '0', '0', '0'),
(131, 77, ' fugiat in anim consectetur sunt?', ' ea cillum', ' enim', ' enim velit Excepteur', ' mollit eu mollit', '0', '0', '0', '0'),
(132, 77, ' occaecat amet in et in?', ' do veniam duis reprehenderit adipiscing', ' dolor mollit duis', ' mollit', ' sed', '0', '0', '0', '0'),
(133, 78, '  tempor officia do?', ' minim qui amet', ' consectetur tempor sunt', ' officia officia exercitation Excepteur', ' nisi esse officia incididunt irure', '0', '0', '0', '0'),
(134, 78, ' exercitation exercitation aliquip?', ' do pariatur sed sit incididunt', ' dolor do', ' exercitation nisi deserunt', ' dolor', '0', '0', '0', '0'),
(135, 78, ' in anim elit occaecat eu?', ' deserunt quis Ut', ' do', ' in', ' esse', '0', '0', '0', '0'),
(136, 79, ' commodo do in deserunt lorem?', ' ipsum in eiusmod', ' eiusmod', ' fugiat nisi Excepteur amet fugiat', ' duis enim magna reprehenderit', '0', '0', '0', '0'),
(137, 79, ' officia?', ' ea reprehenderit esse ipsum', ' amet et Ut eu', ' nostrud', ' in', '0', '0', '0', '0'),
(138, 79, ' reprehenderit incididunt pariatur?', ' minim culpa sed', ' veniam sit aute consectetur', ' proident ad ea anim', ' proident', '0', '0', '0', '0'),
(139, 80, ' Excepteur in incididunt ullamco esse?', ' dolore mollit eiusmod enim duis', ' deserunt', ' exercitation', ' pariatur mollit', '0', '0', '0', '0'),
(140, 80, ' veniam Ut fugiat?', '  cillum', ' commodo', ' in in', ' exercitation', '0', '0', '0', '0'),
(141, 80, ' culpa laboris tempor?', ' ullamco qui', ' occaecat elit officia do culpa', ' consequat cillum in', ' velit ad pariatur', '0', '0', '0', '0'),
(142, 81, ' pariatur eiusmod?', ' ipsum quis duis do dolor', ' incididunt duis minim', ' reprehenderit dolor', ' ullamco pariatur consectetur', '0', '0', '0', '0'),
(143, 81, ' magna nostrud lorem ullamco reprehenderit?', ' qui et ullamco adipiscing', ' sunt mollit Ut qui', ' cillum', ' ipsum', '0', '0', '0', '0'),
(144, 81, ' culpa elit cillum elit ?', ' culpa nostrud aute nostrud', ' aute', ' proident ut veniam Excepteur in', ' consequat pariatur', '0', '0', '0', '0'),
(145, 82, ' ullamco irure aliquip magna eiusmod?', ' amet ullamco tempor sint', ' irure', ' reprehenderit', ' ullamco  ullamco', '0', '0', '0', '0'),
(146, 82, ' exercitation pariatur dolore do?', ' culpa occaecat in aute elit', ' voluptate minim aliqua aute', ' in enim ullamco fugiat', ' et', '0', '0', '0', '0'),
(147, 82, ' voluptate deserunt duis?', ' tempor commodo', ' lorem eu', ' do deserunt elit', ' officia veniam', '0', '0', '0', '0'),
(148, 83, ' minim tempor?', ' sed qui reprehenderit', ' Ut exercitation eiusmod eu magna', ' aliqua', ' amet occaecat eiusmod irure', '0', '0', '0', '0'),
(149, 83, ' nisi laboris dolore minim?', ' laboris non mollit ', ' Excepteur', ' cillum voluptate in minim', ' in dolor', '0', '0', '0', '0'),
(150, 83, ' eiusmod et fugiat commodo?', ' enim cillum nostrud elit', ' irure aliquip ad', ' reprehenderit proident do', ' veniam cillum ad quis', '0', '0', '0', '0'),
(151, 84, ' magna?', ' in nostrud sed quis', ' labore Ut non sint in', ' aliqua', ' anim consectetur in', '0', '0', '0', '0'),
(152, 84, ' aliqua sint reprehenderit?', ' aliqua quis', ' Ut exercitation', ' tempor exercitation laboris irure ', ' aute sit', '0', '0', '0', '0'),
(153, 84, ' Excepteur in deserunt dolore?', ' cupidatat qui incididunt', ' nostrud dolor fugiat anim esse', ' et', '  deserunt et aliqua', '0', '0', '0', '0'),
(154, 85, ' in ?', ' aliquip ad voluptate esse et', ' ullamco', ' aute lorem in et', ' non eu', '0', '0', '0', '0'),
(155, 85, ' nostrud?', ' tempor  anim velit', ' aliqua quis fugiat', ' ullamco dolor  exercitation ipsum', ' qui eu cupidatat ipsum', '0', '0', '0', '0'),
(156, 85, ' Excepteur?', ' culpa labore nisi lorem', ' eiusmod  sunt dolor sit', ' exercitation sed mollit in', ' et tempor labore', '0', '0', '0', '0'),
(157, 86, ' dolor?', ' ad dolor eiusmod', ' mollit exercitation', ' aliquip aute dolore veniam magna', ' fugiat consequat Ut magna', '0', '0', '0', '0'),
(158, 86, ' pariatur sit ad consequat quis?', ' dolor dolor mollit', ' consectetur', ' magna', ' ipsum cupidatat exercitation ea', '0', '0', '0', '0'),
(159, 86, ' exercitation dolore reprehenderit elit?', ' eu minim laboris', ' consequat irure ', ' aliqua', ' commodo cupidatat eu', '0', '0', '0', '0'),
(160, 87, ' in consectetur elit?', ' tempor aute eu in cupidatat', ' pariatur enim reprehenderit', ' officia consectetur incididunt', ' reprehenderit do anim in non', '0', '0', '0', '0'),
(161, 87, ' ipsum ad enim?', ' veniam sunt lorem amet', ' reprehenderit sit eu sit sed', ' deserunt proident eiusmod sed dolor', ' fugiat', '0', '0', '0', '0'),
(162, 87, ' cupidatat deserunt eiusmod ea?', ' ullamco', ' in enim amet reprehenderit', ' consectetur mollit', ' incididunt sit in occaecat', '0', '0', '0', '0'),
(163, 88, ' amet in tempor?', ' in', ' aute veniam qui', ' sit incididunt ipsum voluptate culpa', ' in', '0', '0', '0', '0'),
(164, 88, ' quis ut exercitation?', ' magna aliquip sunt', ' nisi incididunt', ' ea', ' dolore reprehenderit mollit velit', '0', '0', '0', '0'),
(165, 88, ' dolore?', ' Ut dolore in minim', ' consectetur non non in', ' commodo esse in', ' amet ut ', '0', '0', '0', '0'),
(166, 89, ' reprehenderit qui?', ' incididunt', ' ad aliqua pariatur', ' ipsum officia ut sed ', '  aliqua non', '0', '0', '0', '0'),
(167, 89, ' Ut nostrud officia?', ' velit aliqua ut culpa', ' voluptate ut non qui reprehenderit', ' anim fugiat cupidatat', ' voluptate qui', '0', '0', '0', '0'),
(168, 89, ' occaecat sed consequat enim?', ' irure elit pariatur consequat tempor', ' laboris', ' et quis commodo proident', ' in', '0', '0', '0', '0'),
(169, 90, ' Ut consectetur proident tempor ipsum?', ' minim voluptate nisi veniam', ' Excepteur consequat aute', ' enim eiusmod dolor mollit', ' esse duis velit voluptate', '0', '0', '0', '0'),
(170, 90, ' quis lorem pariatur sunt ad?', ' mollit qui ut aute ut', ' consequat', ' consectetur', ' eiusmod et sed', '0', '0', '0', '0'),
(171, 90, ' ipsum incididunt minim incididunt?', ' do amet pariatur fugiat dolor', ' aliquip consequat', ' nisi in', ' Excepteur irure ullamco', '0', '0', '0', '0'),
(172, 91, ' aliquip voluptate?', ' commodo ', ' commodo esse in sed nostrud', ' mollit quis consequat tempor proident', ' fugiat non', '0', '0', '0', '0'),
(173, 91, ' consectetur?', ' aliqua ut ', ' laboris in', ' eiusmod  ipsum', ' pariatur', '0', '0', '0', '0'),
(174, 91, ' fugiat reprehenderit eu in sint?', ' ad aute eiusmod duis quis', ' et', ' deserunt deserunt ullamco aliqua ea', ' commodo incididunt qui', '0', '0', '0', '0'),
(175, 92, ' culpa esse?', ' in pariatur dolore nisi', ' in Excepteur dolore aliqua', ' reprehenderit aute aute adipiscing officia', ' sunt aliqua consequat', '0', '0', '0', '0'),
(176, 92, ' dolor amet dolore voluptate?', ' tempor labore dolore pariatur laboris', ' laboris pariatur culpa cupidatat mollit', ' do anim Excepteur aute non', ' quis', '0', '0', '0', '0'),
(177, 92, ' eiusmod voluptate ipsum?', ' tempor amet culpa consectetur', ' lorem consequat eu eiusmod', ' in', ' Excepteur', '0', '0', '0', '0'),
(178, 93, ' cupidatat?', ' consequat', ' deserunt', ' dolore aliquip', ' eiusmod in quis duis', '0', '0', '0', '0'),
(179, 93, ' proident eiusmod?', ' Excepteur in consequat proident veniam', ' deserunt dolor', ' cupidatat mollit ea', ' nostrud ullamco occaecat reprehenderit', '0', '0', '0', '0'),
(180, 93, ' cupidatat aute?', ' commodo commodo quis', ' ullamco', ' cupidatat ipsum enim Excepteur dolore', ' consequat ut commodo', '0', '0', '0', '0'),
(181, 94, ' commodo?', ' proident pariatur', ' do sunt elit incididunt culpa', ' amet', ' nisi aute cillum', '0', '0', '0', '0'),
(182, 94, ' duis qui enim elit dolor?', ' aliquip ad', ' exercitation lorem', ' laboris non esse', ' esse fugiat velit eu fugiat', '0', '0', '0', '0'),
(183, 94, ' tempor do tempor aute?', ' mollit aliqua pariatur', ' deserunt anim quis incididunt', ' commodo culpa', ' do magna cupidatat aliqua', '0', '0', '0', '0'),
(184, 95, ' in deserunt in commodo?', ' tempor tempor ipsum labore pariatur', ' consequat elit nostrud', ' dolore exercitation', ' esse dolore eu sunt', '0', '0', '0', '0'),
(185, 95, ' qui ullamco?', ' adipiscing', ' occaecat dolore sit veniam sed', ' ut ullamco quis duis', ' ea aute', '0', '0', '0', '0'),
(186, 95, ' duis dolor non quis voluptate?', ' ad adipiscing deserunt', ' lorem', ' enim officia laboris', ' elit cupidatat ', '0', '0', '0', '0'),
(187, 96, ' magna nisi nisi?', ' enim nisi consequat', ' aliquip', ' aliquip mollit enim velit', ' laboris mollit in', '0', '0', '0', '0'),
(188, 96, ' irure?', ' eu qui', ' nisi culpa  sit', ' consectetur  commodo officia', '  commodo ea velit', '0', '0', '0', '0'),
(189, 96, ' anim quis?', ' labore amet laboris', ' elit esse', ' laboris', ' sunt ad', '0', '0', '0', '0'),
(190, 104, 'sadsa', 'dsad', 'sadsad', 'sad', 'sad', '0', '0', '0', '0'),
(191, 105, 'asd', 'sad', 'sad', 'sad', 'sad', '0', '0', '0', '0'),
(192, 106, ' aute?', ' in', ' in magna voluptate sit', ' ea eiusmod eu', ' voluptate', '0', '0', '0', '0'),
(193, 106, ' reprehenderit?', ' anim', ' labore ipsum elit in sit', ' commodo', ' labore in ut ad', '0', '0', '0', '0'),
(194, 106, ' duis dolore?', '  deserunt laboris', ' proident esse adipiscing', ' eu consectetur voluptate', ' Ut', '0', '0', '0', '0'),
(195, 107, ' cillum amet fugiat et sint?', ' aute dolore sint', ' nostrud minim qui in', ' ', ' reprehenderit', '0', '0', '0', '0'),
(196, 107, ' sint et enim irure?', ' quis', ' dolor veniam reprehenderit', ' dolore', ' enim laboris  ullamco consequat', '0', '0', '0', '0'),
(197, 107, ' sed in?', ' sint ut quis', ' sunt', ' lorem incididunt dolor nostrud consectetur', ' velit quis', '0', '0', '0', '0'),
(198, 108, ' veniam in ad?', ' et', ' veniam occaecat ut sunt', ' in', ' lorem', '0', '0', '0', '0'),
(199, 108, ' labore adipiscing veniam quis?', ' mollit in ullamco', ' sit ea adipiscing exercitation amet', ' proident consectetur mollit do pariatur', ' qui', '0', '0', '0', '0'),
(200, 108, ' cupidatat voluptate ad ad?', '  amet irure sit', ' pariatur lorem sint', ' tempor mollit dolor esse consequat', ' do', '0', '0', '0', '0'),
(201, 109, ' proident?', ' aliquip magna reprehenderit  duis', ' dolor reprehenderit culpa quis elit', ' reprehenderit consectetur Ut ullamco dolor', ' duis', '0', '0', '0', '0'),
(202, 109, ' deserunt ?', ' adipiscing amet exercitation occaecat dolore', ' ad enim labore elit', ' mollit laboris', ' quis Ut in', '0', '0', '0', '0'),
(203, 109, ' consequat commodo do?', ' ut mollit ullamco', ' ullamco consequat Ut', ' do', ' sint velit proident', '0', '0', '0', '0'),
(204, 110, ' irure ut?', ' non', ' dolore sed', ' exercitation', ' elit enim mollit dolor officia', '0', '0', '0', '0'),
(205, 110, ' consectetur amet incididunt culpa?', ' duis in amet occaecat', ' Ut', ' qui sunt', ' in in', '0', '0', '0', '0'),
(206, 110, ' culpa  incididunt quis ullamco?', ' dolor dolor esse anim', ' duis laboris', ' veniam nisi esse velit consequat', ' magna in', '0', '0', '0', '0'),
(207, 111, ' sint laboris commodo?', ' nisi commodo labore eiusmod commodo', ' velit esse magna minim ut', ' sed in amet commodo laboris', ' velit sed', '0', '0', '0', '0'),
(208, 111, ' in aute?', ' do cupidatat ea occaecat', ' anim lorem exercitation cillum', ' Excepteur officia minim', ' et aliquip', '0', '0', '0', '0'),
(209, 111, ' fugiat Excepteur eu eu?', ' amet', ' amet commodo eiusmod', ' culpa laboris nisi irure laboris', ' eu sint', '0', '0', '0', '0'),
(210, 112, ' eu ut sed?', ' ipsum occaecat ut', ' fugiat quis non in', ' labore qui consectetur in Ut', ' dolore non laboris', '0', '0', '0', '0'),
(211, 112, ' dolor velit sit?', ' duis', ' adipiscing', ' Ut non commodo qui', ' eu voluptate Ut', '0', '0', '0', '0'),
(212, 112, ' in velit lorem ut in?', ' commodo incididunt mollit', ' fugiat', ' elit ut nisi', ' proident deserunt dolore sed cillum', '0', '0', '0', '0'),
(213, 113, ' irure consequat labore?', ' officia nostrud reprehenderit', ' qui irure', ' aliqua in', ' in ut ut enim sunt', '0', '0', '0', '0'),
(214, 113, ' dolor aute et exercitation laboris?', ' sunt ea', ' duis anim ea minim', ' dolore', ' in in qui', '0', '0', '0', '0'),
(215, 113, ' esse sed in?', ' deserunt', ' enim aute cupidatat', ' consequat', ' dolore Ut', '0', '0', '0', '0'),
(216, 114, ' et labore in?', ' do magna aute', ' nostrud in ', ' pariatur in do cupidatat', ' commodo', '0', '0', '0', '0'),
(217, 114, ' cillum?', ' voluptate lorem', ' veniam', ' ipsum laboris', ' dolore voluptate', '0', '0', '0', '0'),
(218, 114, ' quis consequat veniam ut dolor?', ' proident ad amet lorem ea', ' consequat incididunt fugiat velit in', ' ea amet voluptate aliqua', ' minim minim', '0', '0', '0', '0');

-- --------------------------------------------------------

--
-- Структура таблицы `tests`
--

CREATE TABLE `tests` (
  `id` int(11) NOT NULL,
  `owner_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `tests`
--

INSERT INTO `tests` (`id`, `owner_id`, `name`, `description`) VALUES
(61, 108, ' sit ', ' reprehenderit sunt quis nostrud eiusmod labore laboris aute aliqua qui  pariatur in veniam Excepteur Ut occaecat velit'),
(62, 108, ' velit et ad amet', ' mollit aliqua deserunt ullamco nisi deserunt ut mollit eiusmod eiusmod in'),
(63, 108, ' sit', ' elit non minim eu esse veniam labore cupidatat do in fugiat in proident veniam eiusmod ullamco'),
(64, 108, ' in minim esse incididunt', ' commodo cillum lorem nostrud laboris pariatur voluptate irure mollit sunt commodo aliqua do do'),
(65, 108, ' qui dolor pariatur', ' enim et sint enim Excepteur dolore incididunt amet cupidatat  in et  pariatur proident'),
(66, 108, ' officia duis non dolore', ' ipsum incididunt incididunt incididunt consectetur in fugiat minim eiusmod ullamco duis sunt'),
(67, 108, ' proident veniam', ' cupidatat  velit ad consectetur exercitation labore in voluptate amet dolor officia minim'),
(68, 108, ' qui do fugiat Ut eu', ' aliqua do exercitation dolor do aliquip adipiscing ad  '),
(69, 108, ' incididunt dolore adipiscing sunt', ' exercitation aute voluptate labore sed occaecat ut in tempor incididunt proident proident commodo irure enim duis magna culpa velit'),
(70, 108, ' dolor ut ullamco', ' magna velit nisi cupidatat anim mollit culpa eiusmod ipsum enim quis anim  consequat culpa'),
(71, 108, ' in sunt nisi mollit consequat', ' fugiat mollit amet do aliquip exercitation incididunt et aute Ut sunt  fugiat consequat nostrud sunt duis'),
(72, 108, ' irure anim ea ad in', ' ut ut mollit qui laboris exercitation occaecat culpa Ut Ut mollit velit proident consectetur voluptate in'),
(73, 108, ' esse in ea', ' fugiat dolore culpa tempor reprehenderit ad nostrud cillum quis in consectetur voluptate nostrud pariatur nisi'),
(74, 108, ' esse et', ' cupidatat magna velit duis sint mollit sit in in proident minim velit proident eiusmod et in quis lorem'),
(75, 108, ' minim exercitation reprehenderit', ' aliquip velit dolor eiusmod ipsum adipiscing commodo do ullamco in  enim aliqua'),
(76, 108, ' aute', ' consequat  voluptate cillum anim sint reprehenderit in ullamco occaecat tempor esse'),
(77, 108, ' in nisi nostrud deserunt sit', ' magna amet et ad eiusmod labore sed aliquip irure proident sit qui Ut amet non exercitation consequat adipiscing consectetur do'),
(78, 108, ' lorem minim elit proident velit', ' adipiscing sunt deserunt laboris cillum sint  quis ut qui nostrud do laboris deserunt proident officia aute tempor consectetur pariatur'),
(79, 108, ' commodo qui eiusmod velit', ' labore sunt officia adipiscing occaecat labore eu ullamco  do qui in'),
(80, 108, ' cillum', ' laboris aliqua cupidatat incididunt sit amet in irure cillum sunt magna sit commodo esse cillum nisi  duis'),
(81, 108, ' veniam', ' labore dolor quis anim proident ea labore Excepteur deserunt minim reprehenderit minim do irure'),
(82, 108, ' elit non dolore proident', ' anim do dolor ut cillum ullamco enim ullamco eu veniam consectetur ut sed reprehenderit'),
(83, 108, ' pariatur', ' ea amet nisi velit irure consequat amet labore mollit do culpa anim   commodo incididunt'),
(84, 108, ' sunt commodo reprehenderit Ut sit', ' sunt dolore commodo enim irure sint pariatur dolor incididunt in irure  sunt velit quis pariatur in in'),
(85, 108, ' lorem irure sit aute dolor', ' aliqua commodo dolor consequat non anim dolore ea sit veniam dolore do'),
(86, 108, ' ut', ' duis dolor Excepteur anim lorem enim proident cupidatat elit esse proident'),
(87, 108, ' mollit sunt in commodo culpa', ' reprehenderit cillum in amet culpa aliquip quis quis nisi proident sed nisi qui incididunt tempor'),
(88, 108, ' enim', ' irure sit aute labore culpa ipsum dolor duis commodo dolore pariatur officia cupidatat enim fugiat do'),
(89, 108, ' consectetur eiusmod laboris', ' mollit fugiat sit ullamco proident Excepteur proident consequat veniam sed magna irure velit voluptate elit'),
(90, 108, ' amet', ' magna amet veniam laboris ipsum  elit dolor elit commodo Excepteur culpa lorem enim'),
(91, 108, ' aliquip do elit ', ' dolor velit Excepteur do  mollit do tempor ullamco et deserunt in magna velit amet'),
(92, 108, ' deserunt aliqua dolore enim aliqua', ' dolor eu cupidatat  amet irure duis amet in amet cupidatat in ipsum lorem'),
(93, 108, ' enim', ' minim do cupidatat exercitation officia consequat enim adipiscing commodo qui aliqua eiusmod non dolore veniam commodo magna consequat'),
(94, 108, ' sunt', ' ut  Excepteur tempor sint esse adipiscing velit reprehenderit occaecat exercitation'),
(95, 108, ' ipsum ', ' aliquip proident pariatur in duis sunt ad eiusmod sunt et proident minim adipiscing'),
(96, 108, ' incididunt adipiscing quis veniam irure', ' voluptate magna duis magna velit minim sit quis nisi consequat anim mollit labore in anim qui non tempor magna ullamco'),
(100, 108, 'asdfas1', 'dasds'),
(101, 108, 'asd', 'asd'),
(102, 108, 'asdsad', 'asdsad'),
(103, 108, 'asd', 'asda'),
(104, 108, 'asd', 'asdsad'),
(105, 108, 'asd', 'asdsad'),
(106, 108, ' veniam commodo velit tempor', ' ullamco occaecat consequat Excepteur consectetur labore pariatur proident magna eu aliquip eiusmod magna sunt fugiat'),
(107, 108, ' eu labore ullamco', ' quis in sed proident aute velit consectetur  sit exercitation cupidatat eiusmod qui non'),
(108, 108, ' anim reprehenderit commodo', ' officia ut et esse pariatur in irure eu mollit ullamco voluptate pariatur aliqua occaecat voluptate'),
(109, 108, ' irure incididunt qui', ' ea nostrud aliqua mollit voluptate in  ea voluptate minim eu sint ea ut reprehenderit'),
(110, 108, ' deserunt nisi ea ullamco', ' in dolore dolor dolor commodo proident incididunt mollit aliquip in non Excepteur occaecat'),
(111, 108, ' et sint dolore', ' occaecat veniam dolore in elit proident consectetur in pariatur  dolor dolore ullamco dolor irure pariatur exercitation culpa'),
(112, 108, ' occaecat officia', ' elit do esse nostrud nostrud eu ad sint sit deserunt aliqua'),
(113, 108, ' ut labore non', ' fugiat aute nisi eiusmod dolor laboris in minim  sunt proident commodo eu eiusmod'),
(114, 108, ' et duis aute reprehenderit', ' fugiat dolor ea magna ipsum in cillum cupidatat tempor sit duis Excepteur in occaecat Excepteur exercitation irure cillum');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `nick` varchar(41) NOT NULL,
  `email` varchar(255) NOT NULL,
  `hash` varchar(255) NOT NULL,
  `last_entry` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `nick`, `email`, `hash`, `last_entry`) VALUES
(108, 'Vimgelm', 'vimanonim@gmail.com', '$2y$10$l3UZTxfzbwsI7g9Xx5NpjeHcNA1gdovN0.BSO5F4C56nR6LHBZQmi', '2020-03-17 17:48:03.000000'),
(109, 'Nicj', 'asxz@jsdkjd.com', '$2y$10$KCjB7qQUiccxiwOVWGoI3eYoy8DxwS4/FHPYTnMy50kEnxcCp/pM.', '2020-01-22 12:54:02.000000');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `answer`
--
ALTER TABLE `answer`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `test_id` (`test_id`);

--
-- Индексы таблицы `tests`
--
ALTER TABLE `tests`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `answer`
--
ALTER TABLE `answer`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT для таблицы `questions`
--
ALTER TABLE `questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=219;
--
-- AUTO_INCREMENT для таблицы `tests`
--
ALTER TABLE `tests`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=115;
--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=110;
--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `questions`
--
ALTER TABLE `questions`
  ADD CONSTRAINT `questions_ibfk_1` FOREIGN KEY (`test_id`) REFERENCES `tests` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
