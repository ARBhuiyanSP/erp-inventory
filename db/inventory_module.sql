-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 07, 2022 at 10:11 AM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.2.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `inventory_module`
--

-- --------------------------------------------------------

--
-- Table structure for table `branch`
--

CREATE TABLE `branch` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `branch`
--

INSERT INTO `branch` (`id`, `name`) VALUES
(1, 'E-Engineering'),
(2, 'PEAM'),
(3, 'Maxon Power'),
(4, 'Generator Sales'),
(5, 'Corporate'),
(6, 'Battery'),
(7, 'Renewable Energy'),
(8, 'Sub Station'),
(9, 'Equipment'),
(10, 'Spare Parts'),
(11, 'Service And Energy Business'),
(12, 'SPOT'),
(13, 'CTED-Dhaka'),
(14, 'CTED-CTG');

-- --------------------------------------------------------

--
-- Table structure for table `chart_data_column`
--

CREATE TABLE `chart_data_column` (
  `month` varchar(10) NOT NULL,
  `sale` int(3) NOT NULL,
  `profit` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `chart_data_column`
--

INSERT INTO `chart_data_column` (`month`, `sale`, `profit`) VALUES
('Jan', 300, 150),
('Feb', 200, 130),
('Mar', 300, 200),
('April', 400, 300),
('May', 300, 200),
('Jun', 200, 100),
('July', 200, 150);

-- --------------------------------------------------------

--
-- Table structure for table `complain_type`
--

CREATE TABLE `complain_type` (
  `id` int(11) NOT NULL,
  `complain_type` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `complain_type`
--

INSERT INTO `complain_type` (`id`, `complain_type`) VALUES
(2, 'Engine Filter'),
(3, 'General Service'),
(4, 'Rear Glass'),
(5, 'looking Glass'),
(6, 'Head Light'),
(7, 'Mirror'),
(8, 'Tier '),
(9, 'Door Glass'),
(10, 'Door Handle'),
(11, 'Cylinder Block'),
(12, 'Cylinder Head'),
(13, 'Crank Case'),
(14, 'Oil Pan'),
(15, 'Manifolds'),
(16, 'Gasket'),
(17, 'Cylinder Liner'),
(18, 'Piston'),
(19, 'Piston Clearance'),
(20, 'A Piston Ring'),
(21, 'Connecting Rod'),
(22, 'Piston Pin'),
(23, 'Crank Shaft'),
(24, 'CamShaft'),
(25, 'Flywheels');

-- --------------------------------------------------------

--
-- Table structure for table `country`
--

CREATE TABLE `country` (
  `id` int(11) NOT NULL,
  `iso` char(2) NOT NULL,
  `name` varchar(80) NOT NULL,
  `nicename` varchar(80) NOT NULL,
  `iso3` char(3) DEFAULT NULL,
  `numcode` smallint(6) DEFAULT NULL,
  `phonecode` int(5) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `country`
--

INSERT INTO `country` (`id`, `iso`, `name`, `nicename`, `iso3`, `numcode`, `phonecode`) VALUES
(1, 'AF', 'AFGHANISTAN', 'Afghanistan', 'AFG', 4, 93),
(2, 'AL', 'ALBANIA', 'Albania', 'ALB', 8, 355),
(3, 'DZ', 'ALGERIA', 'Algeria', 'DZA', 12, 213),
(4, 'AS', 'AMERICAN SAMOA', 'American Samoa', 'ASM', 16, 1684),
(5, 'AD', 'ANDORRA', 'Andorra', 'AND', 20, 376),
(6, 'AO', 'ANGOLA', 'Angola', 'AGO', 24, 244),
(7, 'AI', 'ANGUILLA', 'Anguilla', 'AIA', 660, 1264),
(8, 'AQ', 'ANTARCTICA', 'Antarctica', NULL, NULL, 0),
(9, 'AG', 'ANTIGUA AND BARBUDA', 'Antigua and Barbuda', 'ATG', 28, 1268),
(10, 'AR', 'ARGENTINA', 'Argentina', 'ARG', 32, 54),
(11, 'AM', 'ARMENIA', 'Armenia', 'ARM', 51, 374),
(12, 'AW', 'ARUBA', 'Aruba', 'ABW', 533, 297),
(13, 'AU', 'AUSTRALIA', 'Australia', 'AUS', 36, 61),
(14, 'AT', 'AUSTRIA', 'Austria', 'AUT', 40, 43),
(15, 'AZ', 'AZERBAIJAN', 'Azerbaijan', 'AZE', 31, 994),
(16, 'BS', 'BAHAMAS', 'Bahamas', 'BHS', 44, 1242),
(17, 'BH', 'BAHRAIN', 'Bahrain', 'BHR', 48, 973),
(18, 'BD', 'BANGLADESH', 'Bangladesh', 'BGD', 50, 880),
(19, 'BB', 'BARBADOS', 'Barbados', 'BRB', 52, 1246),
(20, 'BY', 'BELARUS', 'Belarus', 'BLR', 112, 375),
(21, 'BE', 'BELGIUM', 'Belgium', 'BEL', 56, 32),
(22, 'BZ', 'BELIZE', 'Belize', 'BLZ', 84, 501),
(23, 'BJ', 'BENIN', 'Benin', 'BEN', 204, 229),
(24, 'BM', 'BERMUDA', 'Bermuda', 'BMU', 60, 1441),
(25, 'BT', 'BHUTAN', 'Bhutan', 'BTN', 64, 975),
(26, 'BO', 'BOLIVIA', 'Bolivia', 'BOL', 68, 591),
(27, 'BA', 'BOSNIA AND HERZEGOVINA', 'Bosnia and Herzegovina', 'BIH', 70, 387),
(28, 'BW', 'BOTSWANA', 'Botswana', 'BWA', 72, 267),
(29, 'BV', 'BOUVET ISLAND', 'Bouvet Island', NULL, NULL, 0),
(30, 'BR', 'BRAZIL', 'Brazil', 'BRA', 76, 55),
(31, 'IO', 'BRITISH INDIAN OCEAN TERRITORY', 'British Indian Ocean Territory', NULL, NULL, 246),
(32, 'BN', 'BRUNEI DARUSSALAM', 'Brunei Darussalam', 'BRN', 96, 673),
(33, 'BG', 'BULGARIA', 'Bulgaria', 'BGR', 100, 359),
(34, 'BF', 'BURKINA FASO', 'Burkina Faso', 'BFA', 854, 226),
(35, 'BI', 'BURUNDI', 'Burundi', 'BDI', 108, 257),
(36, 'KH', 'CAMBODIA', 'Cambodia', 'KHM', 116, 855),
(37, 'CM', 'CAMEROON', 'Cameroon', 'CMR', 120, 237),
(38, 'CA', 'CANADA', 'Canada', 'CAN', 124, 1),
(39, 'CV', 'CAPE VERDE', 'Cape Verde', 'CPV', 132, 238),
(40, 'KY', 'CAYMAN ISLANDS', 'Cayman Islands', 'CYM', 136, 1345),
(41, 'CF', 'CENTRAL AFRICAN REPUBLIC', 'Central African Republic', 'CAF', 140, 236),
(42, 'TD', 'CHAD', 'Chad', 'TCD', 148, 235),
(43, 'CL', 'CHILE', 'Chile', 'CHL', 152, 56),
(44, 'CN', 'CHINA', 'China', 'CHN', 156, 86),
(45, 'CX', 'CHRISTMAS ISLAND', 'Christmas Island', NULL, NULL, 61),
(46, 'CC', 'COCOS (KEELING) ISLANDS', 'Cocos (Keeling) Islands', NULL, NULL, 672),
(47, 'CO', 'COLOMBIA', 'Colombia', 'COL', 170, 57),
(48, 'KM', 'COMOROS', 'Comoros', 'COM', 174, 269),
(49, 'CG', 'CONGO', 'Congo', 'COG', 178, 242),
(50, 'CD', 'CONGO, THE DEMOCRATIC REPUBLIC OF THE', 'Congo, the Democratic Republic of the', 'COD', 180, 242),
(51, 'CK', 'COOK ISLANDS', 'Cook Islands', 'COK', 184, 682),
(52, 'CR', 'COSTA RICA', 'Costa Rica', 'CRI', 188, 506),
(53, 'CI', 'COTE D\'IVOIRE', 'Cote D\'Ivoire', 'CIV', 384, 225),
(54, 'HR', 'CROATIA', 'Croatia', 'HRV', 191, 385),
(55, 'CU', 'CUBA', 'Cuba', 'CUB', 192, 53),
(56, 'CY', 'CYPRUS', 'Cyprus', 'CYP', 196, 357),
(57, 'CZ', 'CZECH REPUBLIC', 'Czech Republic', 'CZE', 203, 420),
(58, 'DK', 'DENMARK', 'Denmark', 'DNK', 208, 45),
(59, 'DJ', 'DJIBOUTI', 'Djibouti', 'DJI', 262, 253),
(60, 'DM', 'DOMINICA', 'Dominica', 'DMA', 212, 1767),
(61, 'DO', 'DOMINICAN REPUBLIC', 'Dominican Republic', 'DOM', 214, 1809),
(62, 'EC', 'ECUADOR', 'Ecuador', 'ECU', 218, 593),
(63, 'EG', 'EGYPT', 'Egypt', 'EGY', 818, 20),
(64, 'SV', 'EL SALVADOR', 'El Salvador', 'SLV', 222, 503),
(65, 'GQ', 'EQUATORIAL GUINEA', 'Equatorial Guinea', 'GNQ', 226, 240),
(66, 'ER', 'ERITREA', 'Eritrea', 'ERI', 232, 291),
(67, 'EE', 'ESTONIA', 'Estonia', 'EST', 233, 372),
(68, 'ET', 'ETHIOPIA', 'Ethiopia', 'ETH', 231, 251),
(69, 'FK', 'FALKLAND ISLANDS (MALVINAS)', 'Falkland Islands (Malvinas)', 'FLK', 238, 500),
(70, 'FO', 'FAROE ISLANDS', 'Faroe Islands', 'FRO', 234, 298),
(71, 'FJ', 'FIJI', 'Fiji', 'FJI', 242, 679),
(72, 'FI', 'FINLAND', 'Finland', 'FIN', 246, 358),
(73, 'FR', 'FRANCE', 'France', 'FRA', 250, 33),
(74, 'GF', 'FRENCH GUIANA', 'French Guiana', 'GUF', 254, 594),
(75, 'PF', 'FRENCH POLYNESIA', 'French Polynesia', 'PYF', 258, 689),
(76, 'TF', 'FRENCH SOUTHERN TERRITORIES', 'French Southern Territories', NULL, NULL, 0),
(77, 'GA', 'GABON', 'Gabon', 'GAB', 266, 241),
(78, 'GM', 'GAMBIA', 'Gambia', 'GMB', 270, 220),
(79, 'GE', 'GEORGIA', 'Georgia', 'GEO', 268, 995),
(80, 'DE', 'GERMANY', 'Germany', 'DEU', 276, 49),
(81, 'GH', 'GHANA', 'Ghana', 'GHA', 288, 233),
(82, 'GI', 'GIBRALTAR', 'Gibraltar', 'GIB', 292, 350),
(83, 'GR', 'GREECE', 'Greece', 'GRC', 300, 30),
(84, 'GL', 'GREENLAND', 'Greenland', 'GRL', 304, 299),
(85, 'GD', 'GRENADA', 'Grenada', 'GRD', 308, 1473),
(86, 'GP', 'GUADELOUPE', 'Guadeloupe', 'GLP', 312, 590),
(87, 'GU', 'GUAM', 'Guam', 'GUM', 316, 1671),
(88, 'GT', 'GUATEMALA', 'Guatemala', 'GTM', 320, 502),
(89, 'GN', 'GUINEA', 'Guinea', 'GIN', 324, 224),
(90, 'GW', 'GUINEA-BISSAU', 'Guinea-Bissau', 'GNB', 624, 245),
(91, 'GY', 'GUYANA', 'Guyana', 'GUY', 328, 592),
(92, 'HT', 'HAITI', 'Haiti', 'HTI', 332, 509),
(93, 'HM', 'HEARD ISLAND AND MCDONALD ISLANDS', 'Heard Island and Mcdonald Islands', NULL, NULL, 0),
(94, 'VA', 'HOLY SEE (VATICAN CITY STATE)', 'Holy See (Vatican City State)', 'VAT', 336, 39),
(95, 'HN', 'HONDURAS', 'Honduras', 'HND', 340, 504),
(96, 'HK', 'HONG KONG', 'Hong Kong', 'HKG', 344, 852),
(97, 'HU', 'HUNGARY', 'Hungary', 'HUN', 348, 36),
(98, 'IS', 'ICELAND', 'Iceland', 'ISL', 352, 354),
(99, 'IN', 'INDIA', 'India', 'IND', 356, 91),
(100, 'ID', 'INDONESIA', 'Indonesia', 'IDN', 360, 62),
(101, 'IR', 'IRAN, ISLAMIC REPUBLIC OF', 'Iran, Islamic Republic of', 'IRN', 364, 98),
(102, 'IQ', 'IRAQ', 'Iraq', 'IRQ', 368, 964),
(103, 'IE', 'IRELAND', 'Ireland', 'IRL', 372, 353),
(104, 'IL', 'ISRAEL', 'Israel', 'ISR', 376, 972),
(105, 'IT', 'ITALY', 'Italy', 'ITA', 380, 39),
(106, 'JM', 'JAMAICA', 'Jamaica', 'JAM', 388, 1876),
(107, 'JP', 'JAPAN', 'Japan', 'JPN', 392, 81),
(108, 'JO', 'JORDAN', 'Jordan', 'JOR', 400, 962),
(109, 'KZ', 'KAZAKHSTAN', 'Kazakhstan', 'KAZ', 398, 7),
(110, 'KE', 'KENYA', 'Kenya', 'KEN', 404, 254),
(111, 'KI', 'KIRIBATI', 'Kiribati', 'KIR', 296, 686),
(112, 'KP', 'KOREA, DEMOCRATIC PEOPLE\'S REPUBLIC OF', 'Korea, Democratic People\'s Republic of', 'PRK', 408, 850),
(113, 'KR', 'KOREA, REPUBLIC OF', 'Korea', 'KOR', 410, 82),
(114, 'KW', 'KUWAIT', 'Kuwait', 'KWT', 414, 965),
(115, 'KG', 'KYRGYZSTAN', 'Kyrgyzstan', 'KGZ', 417, 996),
(116, 'LA', 'LAO PEOPLE\'S DEMOCRATIC REPUBLIC', 'Lao People\'s Democratic Republic', 'LAO', 418, 856),
(117, 'LV', 'LATVIA', 'Latvia', 'LVA', 428, 371),
(118, 'LB', 'LEBANON', 'Lebanon', 'LBN', 422, 961),
(119, 'LS', 'LESOTHO', 'Lesotho', 'LSO', 426, 266),
(120, 'LR', 'LIBERIA', 'Liberia', 'LBR', 430, 231),
(121, 'LY', 'LIBYAN ARAB JAMAHIRIYA', 'Libyan Arab Jamahiriya', 'LBY', 434, 218),
(122, 'LI', 'LIECHTENSTEIN', 'Liechtenstein', 'LIE', 438, 423),
(123, 'LT', 'LITHUANIA', 'Lithuania', 'LTU', 440, 370),
(124, 'LU', 'LUXEMBOURG', 'Luxembourg', 'LUX', 442, 352),
(125, 'MO', 'MACAO', 'Macao', 'MAC', 446, 853),
(126, 'MK', 'MACEDONIA, THE FORMER YUGOSLAV REPUBLIC OF', 'Macedonia, the Former Yugoslav Republic of', 'MKD', 807, 389),
(127, 'MG', 'MADAGASCAR', 'Madagascar', 'MDG', 450, 261),
(128, 'MW', 'MALAWI', 'Malawi', 'MWI', 454, 265),
(129, 'MY', 'MALAYSIA', 'Malaysia', 'MYS', 458, 60),
(130, 'MV', 'MALDIVES', 'Maldives', 'MDV', 462, 960),
(131, 'ML', 'MALI', 'Mali', 'MLI', 466, 223),
(132, 'MT', 'MALTA', 'Malta', 'MLT', 470, 356),
(133, 'MH', 'MARSHALL ISLANDS', 'Marshall Islands', 'MHL', 584, 692),
(134, 'MQ', 'MARTINIQUE', 'Martinique', 'MTQ', 474, 596),
(135, 'MR', 'MAURITANIA', 'Mauritania', 'MRT', 478, 222),
(136, 'MU', 'MAURITIUS', 'Mauritius', 'MUS', 480, 230),
(137, 'YT', 'MAYOTTE', 'Mayotte', NULL, NULL, 269),
(138, 'MX', 'MEXICO', 'Mexico', 'MEX', 484, 52),
(139, 'FM', 'MICRONESIA, FEDERATED STATES OF', 'Micronesia, Federated States of', 'FSM', 583, 691),
(140, 'MD', 'MOLDOVA, REPUBLIC OF', 'Moldova, Republic of', 'MDA', 498, 373),
(141, 'MC', 'MONACO', 'Monaco', 'MCO', 492, 377),
(142, 'MN', 'MONGOLIA', 'Mongolia', 'MNG', 496, 976),
(143, 'MS', 'MONTSERRAT', 'Montserrat', 'MSR', 500, 1664),
(144, 'MA', 'MOROCCO', 'Morocco', 'MAR', 504, 212),
(145, 'MZ', 'MOZAMBIQUE', 'Mozambique', 'MOZ', 508, 258),
(146, 'MM', 'MYANMAR', 'Myanmar', 'MMR', 104, 95),
(147, 'NA', 'NAMIBIA', 'Namibia', 'NAM', 516, 264),
(148, 'NR', 'NAURU', 'Nauru', 'NRU', 520, 674),
(149, 'NP', 'NEPAL', 'Nepal', 'NPL', 524, 977),
(150, 'NL', 'NETHERLANDS', 'Netherlands', 'NLD', 528, 31),
(151, 'AN', 'NETHERLANDS ANTILLES', 'Netherlands Antilles', 'ANT', 530, 599),
(152, 'NC', 'NEW CALEDONIA', 'New Caledonia', 'NCL', 540, 687),
(153, 'NZ', 'NEW ZEALAND', 'New Zealand', 'NZL', 554, 64),
(154, 'NI', 'NICARAGUA', 'Nicaragua', 'NIC', 558, 505),
(155, 'NE', 'NIGER', 'Niger', 'NER', 562, 227),
(156, 'NG', 'NIGERIA', 'Nigeria', 'NGA', 566, 234),
(157, 'NU', 'NIUE', 'Niue', 'NIU', 570, 683),
(158, 'NF', 'NORFOLK ISLAND', 'Norfolk Island', 'NFK', 574, 672),
(159, 'MP', 'NORTHERN MARIANA ISLANDS', 'Northern Mariana Islands', 'MNP', 580, 1670),
(160, 'NO', 'NORWAY', 'Norway', 'NOR', 578, 47),
(161, 'OM', 'OMAN', 'Oman', 'OMN', 512, 968),
(162, 'PK', 'PAKISTAN', 'Pakistan', 'PAK', 586, 92),
(163, 'PW', 'PALAU', 'Palau', 'PLW', 585, 680),
(164, 'PS', 'PALESTINIAN TERRITORY, OCCUPIED', 'Palestinian Territory, Occupied', NULL, NULL, 970),
(165, 'PA', 'PANAMA', 'Panama', 'PAN', 591, 507),
(166, 'PG', 'PAPUA NEW GUINEA', 'Papua New Guinea', 'PNG', 598, 675),
(167, 'PY', 'PARAGUAY', 'Paraguay', 'PRY', 600, 595),
(168, 'PE', 'PERU', 'Peru', 'PER', 604, 51),
(169, 'PH', 'PHILIPPINES', 'Philippines', 'PHL', 608, 63),
(170, 'PN', 'PITCAIRN', 'Pitcairn', 'PCN', 612, 0),
(171, 'PL', 'POLAND', 'Poland', 'POL', 616, 48),
(172, 'PT', 'PORTUGAL', 'Portugal', 'PRT', 620, 351),
(173, 'PR', 'PUERTO RICO', 'Puerto Rico', 'PRI', 630, 1787),
(174, 'QA', 'QATAR', 'Qatar', 'QAT', 634, 974),
(175, 'RE', 'REUNION', 'Reunion', 'REU', 638, 262),
(176, 'RO', 'ROMANIA', 'Romania', 'ROM', 642, 40),
(177, 'RU', 'RUSSIAN FEDERATION', 'Russian Federation', 'RUS', 643, 70),
(178, 'RW', 'RWANDA', 'Rwanda', 'RWA', 646, 250),
(179, 'SH', 'SAINT HELENA', 'Saint Helena', 'SHN', 654, 290),
(180, 'KN', 'SAINT KITTS AND NEVIS', 'Saint Kitts and Nevis', 'KNA', 659, 1869),
(181, 'LC', 'SAINT LUCIA', 'Saint Lucia', 'LCA', 662, 1758),
(182, 'PM', 'SAINT PIERRE AND MIQUELON', 'Saint Pierre and Miquelon', 'SPM', 666, 508),
(183, 'VC', 'SAINT VINCENT AND THE GRENADINES', 'Saint Vincent and the Grenadines', 'VCT', 670, 1784),
(184, 'WS', 'SAMOA', 'Samoa', 'WSM', 882, 684),
(185, 'SM', 'SAN MARINO', 'San Marino', 'SMR', 674, 378),
(186, 'ST', 'SAO TOME AND PRINCIPE', 'Sao Tome and Principe', 'STP', 678, 239),
(187, 'SA', 'SAUDI ARABIA', 'Saudi Arabia', 'SAU', 682, 966),
(188, 'SN', 'SENEGAL', 'Senegal', 'SEN', 686, 221),
(189, 'CS', 'SERBIA AND MONTENEGRO', 'Serbia and Montenegro', NULL, NULL, 381),
(190, 'SC', 'SEYCHELLES', 'Seychelles', 'SYC', 690, 248),
(191, 'SL', 'SIERRA LEONE', 'Sierra Leone', 'SLE', 694, 232),
(192, 'SG', 'SINGAPORE', 'Singapore', 'SGP', 702, 65),
(193, 'SK', 'SLOVAKIA', 'Slovakia', 'SVK', 703, 421),
(194, 'SI', 'SLOVENIA', 'Slovenia', 'SVN', 705, 386),
(195, 'SB', 'SOLOMON ISLANDS', 'Solomon Islands', 'SLB', 90, 677),
(196, 'SO', 'SOMALIA', 'Somalia', 'SOM', 706, 252),
(197, 'ZA', 'SOUTH AFRICA', 'South Africa', 'ZAF', 710, 27),
(198, 'GS', 'SOUTH GEORGIA AND THE SOUTH SANDWICH ISLANDS', 'South Georgia and the South Sandwich Islands', NULL, NULL, 0),
(199, 'ES', 'SPAIN', 'Spain', 'ESP', 724, 34),
(200, 'LK', 'SRI LANKA', 'Sri Lanka', 'LKA', 144, 94),
(201, 'SD', 'SUDAN', 'Sudan', 'SDN', 736, 249),
(202, 'SR', 'SURINAME', 'Suriname', 'SUR', 740, 597),
(203, 'SJ', 'SVALBARD AND JAN MAYEN', 'Svalbard and Jan Mayen', 'SJM', 744, 47),
(204, 'SZ', 'SWAZILAND', 'Swaziland', 'SWZ', 748, 268),
(205, 'SE', 'SWEDEN', 'Sweden', 'SWE', 752, 46),
(206, 'CH', 'SWITZERLAND', 'Switzerland', 'CHE', 756, 41),
(207, 'SY', 'SYRIAN ARAB REPUBLIC', 'Syrian Arab Republic', 'SYR', 760, 963),
(208, 'TW', 'TAIWAN, PROVINCE OF CHINA', 'Taiwan, Province of China', 'TWN', 158, 886),
(209, 'TJ', 'TAJIKISTAN', 'Tajikistan', 'TJK', 762, 992),
(210, 'TZ', 'TANZANIA, UNITED REPUBLIC OF', 'Tanzania, United Republic of', 'TZA', 834, 255),
(211, 'TH', 'THAILAND', 'Thailand', 'THA', 764, 66),
(212, 'TL', 'TIMOR-LESTE', 'Timor-Leste', NULL, NULL, 670),
(213, 'TG', 'TOGO', 'Togo', 'TGO', 768, 228),
(214, 'TK', 'TOKELAU', 'Tokelau', 'TKL', 772, 690),
(215, 'TO', 'TONGA', 'Tonga', 'TON', 776, 676),
(216, 'TT', 'TRINIDAD AND TOBAGO', 'Trinidad and Tobago', 'TTO', 780, 1868),
(217, 'TN', 'TUNISIA', 'Tunisia', 'TUN', 788, 216),
(218, 'TR', 'TURKEY', 'Turkey', 'TUR', 792, 90),
(219, 'TM', 'TURKMENISTAN', 'Turkmenistan', 'TKM', 795, 7370),
(220, 'TC', 'TURKS AND CAICOS ISLANDS', 'Turks and Caicos Islands', 'TCA', 796, 1649),
(221, 'TV', 'TUVALU', 'Tuvalu', 'TUV', 798, 688),
(222, 'UG', 'UGANDA', 'Uganda', 'UGA', 800, 256),
(223, 'UA', 'UKRAINE', 'Ukraine', 'UKR', 804, 380),
(224, 'AE', 'UNITED ARAB EMIRATES', 'United Arab Emirates', 'ARE', 784, 971),
(225, 'GB', 'UNITED KINGDOM', 'United Kingdom', 'GBR', 826, 44),
(226, 'US', 'UNITED STATES', 'United States', 'USA', 840, 1),
(227, 'UM', 'UNITED STATES MINOR OUTLYING ISLANDS', 'United States Minor Outlying Islands', NULL, NULL, 1),
(228, 'UY', 'URUGUAY', 'Uruguay', 'URY', 858, 598),
(229, 'UZ', 'UZBEKISTAN', 'Uzbekistan', 'UZB', 860, 998),
(230, 'VU', 'VANUATU', 'Vanuatu', 'VUT', 548, 678),
(231, 'VE', 'VENEZUELA', 'Venezuela', 'VEN', 862, 58),
(232, 'VN', 'VIET NAM', 'Viet Nam', 'VNM', 704, 84),
(233, 'VG', 'VIRGIN ISLANDS, BRITISH', 'Virgin Islands, British', 'VGB', 92, 1284),
(234, 'VI', 'VIRGIN ISLANDS, U.S.', 'Virgin Islands, U.s.', 'VIR', 850, 1340),
(235, 'WF', 'WALLIS AND FUTUNA', 'Wallis and Futuna', 'WLF', 876, 681),
(236, 'EH', 'WESTERN SAHARA', 'Western Sahara', 'ESH', 732, 212),
(237, 'YE', 'YEMEN', 'Yemen', 'YEM', 887, 967),
(238, 'ZM', 'ZAMBIA', 'Zambia', 'ZMB', 894, 260),
(239, 'ZW', 'ZIMBABWE', 'Zimbabwe', 'ZWE', 716, 263);

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `id` int(11) NOT NULL,
  `branch_id` int(11) DEFAULT NULL,
  `branch_name` varchar(350) NOT NULL COMMENT 'temprary purpose',
  `name` varchar(650) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`id`, `branch_id`, `branch_name`, `name`) VALUES
(1, 1, 'E-Engineering', 'Management'),
(2, 1, 'E-Engineering', 'Market Development'),
(3, 1, 'E-Engineering', 'Finance And Accounts'),
(4, 1, 'E-Engineering', 'Administration'),
(5, 1, 'E-Engineering', 'Dredging'),
(6, 1, 'E-Engineering', 'Engineering'),
(7, 1, 'E-Engineering', 'Project ENG'),
(8, 1, 'E-Engineering', 'Operation'),
(9, 1, 'E-Engineering', 'Maintenance'),
(10, 1, 'E-Engineering', 'QMS'),
(11, 1, 'E-Engineering', 'Mechanical'),
(12, 1, 'E-Engineering', 'Civil'),
(13, 1, 'E-Engineering', 'Commercial'),
(14, 1, 'E-Engineering', 'Store'),
(15, 2, 'PEAM', 'Engineering'),
(16, 2, 'PEAM', 'Civil'),
(17, 3, 'Maxon Power', 'Management'),
(18, 3, 'Maxon Power', 'Administration'),
(19, 3, 'Maxon Power', 'Project'),
(20, 3, 'Maxon Power', 'Finance And Accounts'),
(21, 4, 'Generator Sales', 'Sales And Marketing'),
(22, 4, 'Generator Sales', 'Service'),
(23, 4, 'Generator Sales', 'Project'),
(24, 4, 'Generator Sales', 'Administration'),
(25, 4, 'Generator Sales', 'Finance And Accounts'),
(26, 5, 'Corporate', 'Management'),
(27, 5, 'Corporate', 'Finance And Accounts'),
(28, 5, 'Corporate', 'QMS'),
(29, 5, 'Corporate', 'Human Resource Management'),
(30, 5, 'Corporate', 'Purchase And Procurement'),
(31, 5, 'Corporate', 'Legal'),
(32, 5, 'Corporate', 'Administration'),
(33, 5, 'Corporate', 'IT'),
(34, 5, 'Corporate', 'Commercial'),
(35, 5, 'Corporate', 'Project'),
(36, 5, 'Corporate', 'Business Development'),
(37, 5, 'Corporate', 'Brand Communication'),
(38, 5, 'Corporate', 'Share Market'),
(39, 5, 'Corporate', 'Enterprise Resource Planning'),
(40, 5, 'Corporate', 'Operation'),
(41, 5, 'Corporate', 'Service And WSS'),
(42, 6, 'Battery', 'Management'),
(43, 6, 'Battery', 'Commercial'),
(44, 6, 'Battery', 'Project Development And Implemantaion'),
(45, 6, 'Battery', 'RAndD'),
(46, 6, 'Battery', 'Factory Operation'),
(47, 6, 'Battery', 'Administration'),
(48, 6, 'Battery', 'Finance And Accounts'),
(49, 6, 'Battery', 'Plate Preparation'),
(50, 6, 'Battery', 'Charging'),
(51, 6, 'Battery', 'Quality Assurance'),
(52, 6, 'Battery', 'Maintenance'),
(53, 6, 'Battery', 'Warehouse And Logistics'),
(54, 6, 'Battery', 'Assembly'),
(55, 6, 'Battery', 'CMP'),
(56, 6, 'Battery', 'Service And WSS'),
(57, 6, 'Battery', 'QMS'),
(58, 6, 'Battery', 'Sales And Marketing'),
(59, 6, 'Battery', 'IT'),
(60, 6, 'Battery', 'Marketing And Sales- Export And Corporate'),
(61, 6, 'Battery', 'MC'),
(62, 6, 'Battery', 'Sales Operation'),
(63, 6, 'Battery', 'Planning And Coordination'),
(64, 6, 'Battery', 'Store'),
(65, 6, 'Battery', 'Gel And VRLA'),
(66, 6, 'Battery', 'Purchase And Procurement'),
(67, 7, 'Renewable Energy', 'Management'),
(68, 7, 'Renewable Energy', 'Operation'),
(69, 7, 'Renewable Energy', 'Finance And Accounts'),
(70, 7, 'Renewable Energy', 'Administration'),
(71, 7, 'Renewable Energy', 'Service And Maintanance'),
(72, 7, 'Renewable Energy', 'Sales And Marketing'),
(73, 7, 'Renewable Energy', 'Store'),
(74, 8, 'Sub Station', 'Project'),
(75, 8, 'Sub Station', 'Switch Gear'),
(76, 8, 'Sub Station', 'Operation'),
(77, 8, 'Sub Station', 'Administration'),
(78, 9, 'Equipment', 'Sales And Marketing'),
(79, 10, 'Spare Parts', 'Service'),
(80, 11, 'Service And Energy Business', 'Finance And Accounts'),
(81, 11, 'Service And Energy Business', 'Service'),
(82, 11, 'Service And Energy Business', 'Operation'),
(83, 11, 'Service And Energy Business', 'Sales And Marketing'),
(84, 11, 'Service And Energy Business', 'Administration'),
(85, 11, 'Service And Energy Business', 'Pre Sales'),
(86, 11, 'Service And Energy Business', 'Maintenance'),
(87, 11, 'Service And Energy Business', 'Group Customer Care'),
(88, 11, 'Service And Energy Business', 'Marine'),
(89, 12, 'SPOT', 'Documentation'),
(90, 12, 'SPOT', 'Billing'),
(91, 12, 'SPOT', 'Operation'),
(92, 12, 'SPOT', 'Administration'),
(93, 12, 'SPOT', 'Store'),
(94, 12, 'SPOT', 'Finance And Accounts'),
(95, 12, 'SPOT', 'Purchase And Procurement'),
(96, 12, 'SPOT', 'CTMS'),
(97, 12, 'SPOT', 'SC'),
(98, 12, 'SPOT', 'Ship Planning'),
(99, 12, 'SPOT', 'Terminal Operation'),
(100, 12, 'SPOT', 'RMG'),
(101, 12, 'SPOT', 'RTG'),
(102, 12, 'SPOT', 'Winch'),
(103, 12, 'SPOT', 'CCT Yard'),
(104, 12, 'SPOT', 'Strategic Planning And Terminal Operation'),
(105, 12, 'SPOT', 'NCT Yard'),
(106, 12, 'SPOT', 'CFS'),
(107, 12, 'SPOT', 'FLT'),
(108, 12, 'SPOT', 'Yard Planning And Documentation'),
(109, 12, 'SPOT', 'CCT Lasher'),
(110, 12, 'SPOT', 'ITV'),
(111, 12, 'SPOT', 'QGC'),
(112, 12, 'SPOT', 'Quay Yard Supervisor'),
(113, 12, 'SPOT', 'Delivery'),
(114, 12, 'SPOT', 'NCT Lasher'),
(115, 13, 'CTED-Dhaka', 'Operation'),
(116, 13, 'CTED-Dhaka', 'Service'),
(117, 13, 'CTED-Dhaka', 'Maintenance'),
(118, 13, 'CTED-Dhaka', 'Administration'),
(119, 14, 'CTED-CTG', 'Maintenance'),
(120, 14, 'CTED-CTG', 'QGC and RTG'),
(121, 14, 'CTED-CTG', 'PM and FLT'),
(122, 14, 'CTED-CTG', 'Purchase And Procurement'),
(123, 14, 'CTED-CTG', 'Store'),
(124, 14, 'CTED-CTG', 'Administration'),
(125, 14, 'CTED-CTG', 'QGC Maintanence');

-- --------------------------------------------------------

--
-- Table structure for table `designations`
--

CREATE TABLE `designations` (
  `id` int(11) NOT NULL,
  `name` varchar(650) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `designations`
--

INSERT INTO `designations` (`id`, `name`) VALUES
(1, 'Executive'),
(2, 'Manager'),
(3, 'Senior Brand Promoter'),
(4, 'Video Editor'),
(5, 'Photographer'),
(6, 'Brand Promoter'),
(7, 'Graphic Designer'),
(8, 'Assistant Manager'),
(9, 'Driver'),
(10, 'Office Assistant'),
(11, '3D Modeler'),
(12, 'Senior Online Video Editor'),
(13, 'Senior Graphic Designer'),
(14, 'Officer'),
(15, 'Chief Executive Officer'),
(16, 'Deputy General Manager'),
(17, 'Senior Officer'),
(18, 'Project Manager'),
(19, 'Dredging Master'),
(20, 'Project Co-Ordinator'),
(21, 'General Manager'),
(22, 'Electrician'),
(23, 'Assistant Engine Driver'),
(24, 'Engine Driver'),
(25, 'Work Boat Master'),
(26, 'Crew'),
(27, 'Lever Man'),
(28, 'Head Cook'),
(29, 'Director'),
(30, 'Assistant General Manager'),
(31, 'Supervisor'),
(32, 'Senior Technician'),
(33, 'Peon'),
(34, 'Assistant Cook'),
(35, 'Assistant'),
(36, 'Engineer'),
(37, 'Surveyor'),
(38, 'Operator'),
(39, 'Site Engineer'),
(40, 'Site Supervisor'),
(41, 'Ship Supervisor'),
(42, 'Deputy Manager'),
(43, 'Mechanic'),
(44, 'Assistant Site Supervisor'),
(45, 'Technician'),
(46, 'Pipe Fitter'),
(47, 'Sukani'),
(48, 'WINCH Operator'),
(49, 'Excavator Operator'),
(50, 'Senior Electrician'),
(51, 'Loskor'),
(52, 'Welder'),
(53, 'Storeman'),
(54, 'Assistant Engine Mechanic'),
(55, 'Chief Operating Officer'),
(56, 'Assistant Site Engineer'),
(57, 'Lab Techinacian'),
(58, 'Assistant Hydraulic Mechanic'),
(59, 'Assistant Supervisor'),
(60, 'Assistant Engineer'),
(61, 'Site Assistant'),
(62, 'Admin Assistant'),
(63, 'Bulldozer Operator'),
(64, 'Work Boat Engine Driver'),
(65, 'Batching Plant Operator'),
(66, 'Project Engineer'),
(67, 'Deputy Project Manager'),
(68, 'Wheel Loader Operator'),
(69, 'Cook Helper'),
(70, 'Dump Truck Driver'),
(71, 'Mixer Truck Driver'),
(72, 'Prime Mover Driver'),
(73, 'Harbour Crane Operator'),
(74, 'Helper'),
(75, 'Batching Plant Helper'),
(76, 'Crane Operator'),
(77, 'Dozzer Operator'),
(78, 'Concrete Pump Operator'),
(79, 'Assistant Rigger'),
(80, 'Transit Mixer Helper'),
(81, 'Block Machine Operator'),
(82, 'Fork Lift Operator'),
(83, 'Plant Engineer'),
(84, 'Diesel Hammer Operator'),
(85, 'Concrete Pump Pipe Fitter'),
(86, 'Long Boom Excavator Operator'),
(87, 'Mixture Truck Helper'),
(88, 'Low Bed Helper'),
(89, 'Mechanical Helper'),
(90, 'Low Bed Operator'),
(91, 'Junior Fitter'),
(92, 'Site Mechanical Engineer'),
(93, 'Quantity Surveyor Engineer'),
(94, 'Roller Operator'),
(95, 'Backhoe Operator'),
(96, 'Tractor Driver'),
(97, 'Store Keeper'),
(98, 'Assistant Lab Technician'),
(99, 'Senior Project Manager'),
(100, 'Trainee Officer'),
(101, 'Rigger'),
(102, 'Plant Operator'),
(103, 'Junior Officer'),
(104, 'Independent Director'),
(105, 'Head of Project'),
(106, 'Senior Manager'),
(107, 'Foreman'),
(108, 'Logistic Support Officer'),
(109, 'Executive Director'),
(110, 'Service Technician'),
(111, 'Junior Technician'),
(112, 'Managing Director'),
(113, 'Chairman'),
(114, 'Additional Managing Director'),
(115, 'Chief Finance Officer'),
(116, 'Head of QMS'),
(117, 'Company Secretary'),
(118, 'Accounts Assistant'),
(119, 'Customer Care'),
(120, 'Body Guard'),
(121, 'Assistant Security Supervisor'),
(122, 'Security Guard'),
(123, 'Security Inspector'),
(124, 'Front Desk Officer'),
(125, 'Head of IT'),
(126, 'Canteen Boy'),
(127, 'Liason Officer'),
(128, 'Incharge Billing And Doc.'),
(129, 'Protocol Officer'),
(130, 'Junior Engineer'),
(131, 'Yard Checker'),
(132, 'Sales ADM And Application Engg.'),
(133, 'Head Technician'),
(134, 'Head of Finance And Accounts'),
(135, 'Terminal Superintendent'),
(136, 'Area Manager'),
(137, 'Share Officer'),
(138, 'Store Officer'),
(139, 'Security Supervisor'),
(140, 'Security Officer'),
(141, 'Painter'),
(142, 'RST Operator'),
(143, 'Assistant Yard Supervisor'),
(144, 'Trailer Operator'),
(145, 'Trainee Technician'),
(146, 'Welder Project'),
(147, 'Tyre Feeder'),
(148, 'Trainee Engineer'),
(149, 'Cleaner'),
(150, 'Caretaker'),
(151, 'Assistant Protocol Officer'),
(152, 'In-Charge'),
(153, 'Technical Helper'),
(154, 'Loader'),
(155, 'Advisor'),
(156, 'Consultant'),
(157, 'Estate Officer'),
(158, 'Assistant Officer'),
(159, 'Trainee Yard Checker'),
(160, 'Door Closer'),
(161, 'Yard Supervisor'),
(162, 'Lasher'),
(163, 'Additional Chief Engineer'),
(164, 'Senior Engineer'),
(165, 'Senior Mechanic'),
(166, 'Vulcanizer'),
(167, 'Semi Mechanic'),
(168, 'Lathe Man'),
(169, 'Head of CTMS'),
(170, 'Service Engineer'),
(171, 'SC Operator'),
(172, 'Senior Equipment Controller'),
(173, 'Co-Ordinator'),
(174, 'Assistant Equipment Co-Ordinator'),
(175, 'Documentation Staff Trainee'),
(176, 'Regional Manager'),
(177, 'Terminal Manager'),
(178, 'CFS Shed Incharge'),
(179, 'Photo copier'),
(180, 'Office Boy'),
(181, 'RTG SC Controller'),
(182, 'Assistant Welfare Officer'),
(183, 'Radio And HHT Keeper'),
(184, 'Documentation Staff'),
(185, 'RTG Checker'),
(186, 'Keep Down Checker'),
(187, 'Handover Clerk'),
(188, 'Tally Clerk'),
(189, 'ICD Checker'),
(190, 'Carpenter'),
(191, 'Jetty Sareng'),
(192, 'Mark Man'),
(193, 'Assistant Ship Planner'),
(194, 'Senior Assistant Ship Supervisor'),
(195, 'Tracer'),
(196, 'Assistant Ship Supervisor'),
(197, 'Deck And Crane Checker'),
(198, 'Checker'),
(199, 'Empty Area Checker'),
(200, 'RTG Operator'),
(201, 'Trainee Tracer'),
(202, 'FLT Operator'),
(203, 'Lasher Foreman'),
(204, 'ITV Operator'),
(205, 'ITV Supervisor'),
(206, 'QGC Operator'),
(207, 'Ship And Yard Planner'),
(208, 'Import And Export Permission Clerk'),
(209, 'Senior Yard Supervisor'),
(210, 'Assistant Yard Superintendent'),
(211, 'Senior Keep Down Checker'),
(212, 'Trainee RTG Operator'),
(213, 'Escort Officer'),
(214, 'Supervisor In-Charge'),
(215, 'Medical Assistant'),
(216, 'Labour In-Charge'),
(217, 'Delivery Supervisor'),
(218, 'Billing Assistant'),
(219, 'Labour Supervisor'),
(220, 'Assistant Terminal Suprintendent'),
(221, 'Assistant Billing Coordinator'),
(222, 'Application Engineer'),
(223, 'Marine Leader'),
(224, 'IT Assistant'),
(225, 'Head of Product and Service'),
(226, 'Web Designer'),
(227, 'Delivery Checker'),
(228, 'Chief Marketing Officer'),
(229, 'Assistant Mechanic'),
(230, 'Assistant Carpenter'),
(231, 'Operation Engineer'),
(232, 'Assistant Foreman'),
(233, 'Factory Manager'),
(234, 'Assistant Operator'),
(235, 'Store Assistant'),
(236, 'Junior Operator'),
(237, 'Quality Control Inspector');

-- --------------------------------------------------------

--
-- Table structure for table `history`
--

CREATE TABLE `history` (
  `id` int(10) UNSIGNED NOT NULL,
  `type_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `entity_id` int(10) UNSIGNED DEFAULT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `class` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `text` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `assets` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `history`
--

INSERT INTO `history` (`id`, `type_id`, `user_id`, `entity_id`, `icon`, `class`, `text`, `assets`, `created_at`, `updated_at`) VALUES
(1, 3, 1, 49, 'plus', 'bg-green', 'trans(\"history.backend.permissions.created\") <strong>create-plant-equipment</strong>', NULL, '2019-01-21 04:42:35', '2019-01-21 04:42:35'),
(2, 3, 1, 49, 'save', 'bg-aqua', 'trans(\"history.backend.permissions.updated\") <strong>create-plant-equipment</strong>', NULL, '2019-01-21 04:43:48', '2019-01-21 04:43:48'),
(3, 2, 1, 2, 'save', 'bg-aqua', 'trans(\"history.backend.roles.updated\") <strong>Executive</strong>', NULL, '2019-01-21 04:46:25', '2019-01-21 04:46:25'),
(4, 1, 1, 4, 'plus', 'bg-green', 'trans(\"history.backend.users.created\") <strong>{user}</strong>', '{\"user_link\":[\"admin.access.user.show\",\"Rashed Al Banna\",4]}', '2019-02-03 02:18:51', '2019-02-03 02:18:51'),
(5, 1, 1, 4, 'save', 'bg-aqua', 'trans(\"history.backend.users.updated\") <strong>{user}</strong>', '{\"user_link\":[\"admin.access.user.show\",\"Rashed Al Banna\",4]}', '2019-02-03 02:21:04', '2019-02-03 02:21:04'),
(6, 3, 1, 50, 'plus', 'bg-green', 'trans(\"history.backend.permissions.created\") <strong>edit-plant-equipment</strong>', NULL, '2019-02-08 21:20:08', '2019-02-08 21:20:08'),
(7, 3, 1, 51, 'plus', 'bg-green', 'trans(\"history.backend.permissions.created\") <strong>view-plant-equipment</strong>', NULL, '2019-02-08 21:21:08', '2019-02-08 21:21:08'),
(8, 3, 1, 52, 'plus', 'bg-green', 'trans(\"history.backend.permissions.created\") <strong>delete-plant-equipment</strong>', NULL, '2019-02-08 21:22:25', '2019-02-08 21:22:25'),
(9, 3, 1, 53, 'plus', 'bg-green', 'trans(\"history.backend.permissions.created\") <strong>view-reports</strong>', NULL, '2019-02-08 21:48:43', '2019-02-08 21:48:43'),
(10, 3, 1, 54, 'plus', 'bg-green', 'trans(\"history.backend.permissions.created\") <strong>create-projects</strong>', NULL, '2019-02-09 01:33:20', '2019-02-09 01:33:20'),
(11, 3, 1, 55, 'plus', 'bg-green', 'trans(\"history.backend.permissions.created\") <strong>edit-projects</strong>', NULL, '2019-02-09 01:46:59', '2019-02-09 01:46:59'),
(12, 3, 1, 56, 'plus', 'bg-green', 'trans(\"history.backend.permissions.created\") <strong>view-projects</strong>', NULL, '2019-02-09 02:12:35', '2019-02-09 02:12:35'),
(13, 3, 1, 57, 'plus', 'bg-green', 'trans(\"history.backend.permissions.created\") <strong>delete-projects</strong>', NULL, '2019-02-09 02:13:20', '2019-02-09 02:13:20'),
(14, 1, 1, 4, 'save', 'bg-aqua', 'trans(\"history.backend.users.updated\") <strong>{user}</strong>', '{\"user_link\":[\"admin.access.user.show\",\"Rashed Al Banna\",4]}', '2019-02-10 23:42:08', '2019-02-10 23:42:08'),
(15, 3, 1, 58, 'plus', 'bg-green', 'trans(\"history.backend.permissions.created\") <strong>create-items</strong>', NULL, '2019-02-22 11:14:05', '2019-02-22 11:14:05'),
(16, 3, 1, 59, 'plus', 'bg-green', 'trans(\"history.backend.permissions.created\") <strong>edit-items</strong>', NULL, '2019-02-22 11:15:10', '2019-02-22 11:15:10'),
(17, 3, 1, 60, 'plus', 'bg-green', 'trans(\"history.backend.permissions.created\") <strong>view-items</strong>', NULL, '2019-02-22 11:15:38', '2019-02-22 11:15:38'),
(18, 3, 1, 61, 'plus', 'bg-green', 'trans(\"history.backend.permissions.created\") <strong>delete-items</strong>', NULL, '2019-02-22 11:16:35', '2019-02-22 11:16:35'),
(19, 3, 1, 62, 'plus', 'bg-green', 'trans(\"history.backend.permissions.created\") <strong>view-products</strong>', NULL, '2019-02-22 12:09:38', '2019-02-22 12:09:38'),
(20, 3, 1, 63, 'plus', 'bg-green', 'trans(\"history.backend.permissions.created\") <strong>create-products</strong>', NULL, '2019-02-22 12:10:22', '2019-02-22 12:10:22'),
(21, 3, 1, 64, 'plus', 'bg-green', 'trans(\"history.backend.permissions.created\") <strong>edit-Products</strong>', NULL, '2019-02-22 12:10:55', '2019-02-22 12:10:55'),
(22, 3, 1, 65, 'plus', 'bg-green', 'trans(\"history.backend.permissions.created\") <strong>delete-products</strong>', NULL, '2019-02-22 12:11:18', '2019-02-22 12:11:18'),
(23, 3, 1, 65, 'save', 'bg-aqua', 'trans(\"history.backend.permissions.updated\") <strong>delete-products</strong>', NULL, '2019-02-22 12:11:35', '2019-02-22 12:11:35'),
(24, 3, 1, 64, 'save', 'bg-aqua', 'trans(\"history.backend.permissions.updated\") <strong>edit-products</strong>', NULL, '2019-02-22 12:11:59', '2019-02-22 12:11:59'),
(25, 3, 1, 66, 'plus', 'bg-green', 'trans(\"history.backend.permissions.created\") <strong>create-product-receive</strong>', NULL, '2019-02-22 13:51:48', '2019-02-22 13:51:48'),
(26, 3, 1, 67, 'plus', 'bg-green', 'trans(\"history.backend.permissions.created\") <strong>edit-product-receive</strong>', NULL, '2019-02-22 13:52:36', '2019-02-22 13:52:36'),
(27, 3, 1, 68, 'plus', 'bg-green', 'trans(\"history.backend.permissions.created\") <strong>view-product-receive</strong>', NULL, '2019-02-22 13:53:22', '2019-02-22 13:53:22'),
(28, 3, 1, 69, 'plus', 'bg-green', 'trans(\"history.backend.permissions.created\") <strong>delete-product-receive</strong>', NULL, '2019-02-22 13:54:06', '2019-02-22 13:54:06'),
(29, 3, 1, 70, 'plus', 'bg-green', 'trans(\"history.backend.permissions.created\") <strong>create-project-challan</strong>', NULL, '2019-02-22 15:14:49', '2019-02-22 15:14:49'),
(30, 3, 1, 71, 'plus', 'bg-green', 'trans(\"history.backend.permissions.created\") <strong>edit-project-challan</strong>', NULL, '2019-02-22 15:15:22', '2019-02-22 15:15:22'),
(31, 3, 1, 72, 'plus', 'bg-green', 'trans(\"history.backend.permissions.created\") <strong>view-project-challan</strong>', NULL, '2019-02-22 15:15:58', '2019-02-22 15:15:58'),
(32, 3, 1, 73, 'plus', 'bg-green', 'trans(\"history.backend.permissions.created\") <strong>delete-project-challan</strong>', NULL, '2019-02-22 15:16:33', '2019-02-22 15:16:33'),
(33, 3, 1, 33, 'trash', 'bg-maroon', 'trans(\"history.backend.permissions.deleted\") <strong>view-blog-category</strong>', NULL, '2019-02-23 22:34:13', '2019-02-23 22:34:13'),
(34, 3, 1, 34, 'trash', 'bg-maroon', 'trans(\"history.backend.permissions.deleted\") <strong>create-blog-category</strong>', NULL, '2019-02-23 22:34:24', '2019-02-23 22:34:24'),
(35, 3, 1, 35, 'trash', 'bg-maroon', 'trans(\"history.backend.permissions.deleted\") <strong>edit-blog-category</strong>', NULL, '2019-02-23 22:34:36', '2019-02-23 22:34:36'),
(36, 3, 1, 36, 'trash', 'bg-maroon', 'trans(\"history.backend.permissions.deleted\") <strong>delete-blog-category</strong>', NULL, '2019-02-23 22:34:47', '2019-02-23 22:34:47'),
(37, 3, 1, 37, 'trash', 'bg-maroon', 'trans(\"history.backend.permissions.deleted\") <strong>view-blog-tag</strong>', NULL, '2019-02-23 22:34:57', '2019-02-23 22:34:57'),
(38, 3, 1, 38, 'trash', 'bg-maroon', 'trans(\"history.backend.permissions.deleted\") <strong>create-blog-tag</strong>', NULL, '2019-02-23 22:35:08', '2019-02-23 22:35:08'),
(39, 3, 1, 39, 'trash', 'bg-maroon', 'trans(\"history.backend.permissions.deleted\") <strong>edit-blog-tag</strong>', NULL, '2019-02-23 22:35:19', '2019-02-23 22:35:19'),
(40, 3, 1, 40, 'trash', 'bg-maroon', 'trans(\"history.backend.permissions.deleted\") <strong>delete-blog-tag</strong>', NULL, '2019-02-23 22:35:29', '2019-02-23 22:35:29'),
(41, 3, 1, 41, 'trash', 'bg-maroon', 'trans(\"history.backend.permissions.deleted\") <strong>view-blog</strong>', NULL, '2019-02-23 22:35:52', '2019-02-23 22:35:52'),
(42, 3, 1, 43, 'trash', 'bg-maroon', 'trans(\"history.backend.permissions.deleted\") <strong>edit-blog</strong>', NULL, '2019-02-23 22:36:03', '2019-02-23 22:36:03'),
(43, 3, 1, 42, 'trash', 'bg-maroon', 'trans(\"history.backend.permissions.deleted\") <strong>create-blog</strong>', NULL, '2019-02-23 22:36:14', '2019-02-23 22:36:14'),
(44, 3, 1, 44, 'trash', 'bg-maroon', 'trans(\"history.backend.permissions.deleted\") <strong>delete-blog</strong>', NULL, '2019-02-23 22:37:55', '2019-02-23 22:37:55'),
(45, 3, 1, 45, 'trash', 'bg-maroon', 'trans(\"history.backend.permissions.deleted\") <strong>view-faq</strong>', NULL, '2019-02-23 22:38:04', '2019-02-23 22:38:04'),
(46, 3, 1, 46, 'trash', 'bg-maroon', 'trans(\"history.backend.permissions.deleted\") <strong>create-faq</strong>', NULL, '2019-02-23 22:38:12', '2019-02-23 22:38:12'),
(47, 3, 1, 47, 'trash', 'bg-maroon', 'trans(\"history.backend.permissions.deleted\") <strong>edit-faq</strong>', NULL, '2019-02-23 22:38:21', '2019-02-23 22:38:21'),
(48, 3, 1, 48, 'trash', 'bg-maroon', 'trans(\"history.backend.permissions.deleted\") <strong>delete-faq</strong>', NULL, '2019-02-23 22:38:54', '2019-02-23 22:38:54'),
(49, 3, 1, 74, 'plus', 'bg-green', 'trans(\"history.backend.permissions.created\") <strong>view-suppliers</strong>', NULL, '2019-02-23 22:40:07', '2019-02-23 22:40:07'),
(50, 3, 1, 75, 'plus', 'bg-green', 'trans(\"history.backend.permissions.created\") <strong>edit-suppliers</strong>', NULL, '2019-02-23 22:40:39', '2019-02-23 22:40:39'),
(51, 3, 1, 76, 'plus', 'bg-green', 'trans(\"history.backend.permissions.created\") <strong>create-suppliers</strong>', NULL, '2019-02-23 22:41:08', '2019-02-23 22:41:08'),
(52, 3, 1, 77, 'plus', 'bg-green', 'trans(\"history.backend.permissions.created\") <strong>delete-suppliers</strong>', NULL, '2019-02-23 22:41:39', '2019-02-23 22:41:39'),
(53, 1, 1, 5, 'plus', 'bg-green', 'trans(\"history.backend.users.created\") <strong>{user}</strong>', '{\"user_link\":[\"admin.access.user.show\",\"Jalil Nayan\",5]}', '2019-05-10 13:24:40', '2019-05-10 13:24:40'),
(54, 1, 1, 5, 'save', 'bg-aqua', 'trans(\"history.backend.users.updated\") <strong>{user}</strong>', '{\"user_link\":[\"admin.access.user.show\",\"Jalil Nayan\",5]}', '2019-05-11 11:07:42', '2019-05-11 11:07:42'),
(55, 3, 1, 78, 'plus', 'bg-green', 'trans(\"history.backend.permissions.created\") <strong>issue-management</strong>', NULL, '2019-05-12 10:32:51', '2019-05-12 10:32:51'),
(56, 1, 1, 5, 'save', 'bg-aqua', 'trans(\"history.backend.users.updated\") <strong>{user}</strong>', '{\"user_link\":[\"admin.access.user.show\",\"Jalil Nayan\",5]}', '2019-05-12 10:35:26', '2019-05-12 10:35:26'),
(57, 1, 1, 5, 'save', 'bg-aqua', 'trans(\"history.backend.users.updated\") <strong>{user}</strong>', '{\"user_link\":[\"admin.access.user.show\",\"Jalil Nayan\",5]}', '2019-05-12 10:36:57', '2019-05-12 10:36:57');

-- --------------------------------------------------------

--
-- Table structure for table `history_types`
--

CREATE TABLE `history_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `history_types`
--

INSERT INTO `history_types` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'User', '2019-01-14 00:17:13', '2019-01-14 00:17:13'),
(2, 'Role', '2019-01-14 00:17:13', '2019-01-14 00:17:13'),
(3, 'Permission', '2019-01-14 00:17:13', '2019-01-14 00:17:13'),
(4, 'Page', '2019-01-14 00:17:13', '2019-01-14 00:17:13'),
(5, 'BlogTag', '2019-01-14 00:17:13', '2019-01-14 00:17:13'),
(6, 'BlogCategory', '2019-01-14 00:17:13', '2019-01-14 00:17:13'),
(7, 'Blog', '2019-01-14 00:17:13', '2019-01-14 00:17:13');

-- --------------------------------------------------------

--
-- Table structure for table `inv_challan`
--

CREATE TABLE `inv_challan` (
  `id` int(11) NOT NULL,
  `challan_no` varchar(100) NOT NULL,
  `challan_date` varchar(100) NOT NULL,
  `csn` varchar(100) NOT NULL,
  `remarks` longtext NOT NULL,
  `status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `inv_complain`
--

CREATE TABLE `inv_complain` (
  `id` int(11) NOT NULL,
  `complain_id` varchar(100) NOT NULL,
  `date` varchar(100) NOT NULL,
  `vehicle_reg_no` varchar(100) NOT NULL,
  `client_name` varchar(100) NOT NULL,
  `address` varchar(1000) NOT NULL,
  `chasis_no` varchar(100) NOT NULL,
  `brand_model` varchar(100) NOT NULL,
  `engine_no` varchar(100) NOT NULL,
  `owner_phone` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `driver_phone` varchar(100) NOT NULL,
  `milege` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `inv_complain`
--

INSERT INTO `inv_complain` (`id`, `complain_id`, `date`, `vehicle_reg_no`, `client_name`, `address`, `chasis_no`, `brand_model`, `engine_no`, `owner_phone`, `email`, `driver_phone`, `milege`) VALUES
(9, 'CN001', '2019-12-30', 'DMT-GHA-13-6067', 'SAIF POWERTEC LIMITED', '954 Lexington Ave', 'WVGZZZ7PZCD012726', 'Volkswagen', 'CKD-004349', '3152364585', 'arbhuiyan.pits@gmail.com', '3152364585', '10000'),
(10, 'CN002', '2020-01-02', 'DMT-GA-21-3468', 'SAIFPOWERTEC LIMITED', 'SAIF POWERTEC LIMITED', 'NZE121-0229537', 'TOYOTA', '1NZ-2725928', '01755543180', '', '01724548970', '172557'),
(11, 'CN003', '2020-01-02', 'DMT-GA-21-3468', 'SAIFPOWERTEC LIMITED', 'SAIF POWERTEC LIMITED', 'NZE121-0229537', 'TOYOTA', '1NZ-2725928', '01755543180', '', '01724548970', '172557'),
(12, 'CN004', '2020-01-06', 'DMT-GA-28-4557', 'SAIF POWERTEC LTD.', 'SAIF POWERTEC LIMITED', 'NZE161-7024197', 'TOYOTA', '1NZ-E185713', '01755543180', '', '01724548970', '172557'),
(13, 'CN005', '2020-01-06', 'DMT-GA-28-4557', 'SAIF POWERTEC LTD.', 'SAIF POWERTEC LIMITED', 'NZE161-7024197', 'TOYOTA', '1NZ-E185713', '01755543180', '', '01724548970', '172557'),
(14, 'CN006', '2020-01-06', 'DMT-GA-28-4557', 'SAIF POWERTEC LTD.', 'SAIF POWERTEC LIMITED', 'NZE161-7024197', 'TOYOTA', '1NZ-E185713', '01755543180', '', '01724548970', '172557'),
(15, 'CN007', '2020-01-06', 'DMT-CHA-56-2802', 'SAIF POWERTEC LTD.', 'SGS', 'TRH200-5016305', 'TOYOTA', '1TR-1125815', '01674949462', '', '01797821336', '30500'),
(16, 'CN008', '2020-01-06', 'DMT-KHA-12-6497', 'DHAKA BANK LTD.', 'SAIF POWERTEC LIMITED', 'NCP50-0039169', 'TOYOTA', '2NZ-3518317', '01787684111', '', '01724548970', '30500'),
(17, 'CN009', '2020-01-06', 'DMT-KHA-12-6497', 'DHAKA BANK LTD.', 'SAIF POWERTEC LIMITED', 'NCP50-0039169', 'TOYOTA', '2NZ-3518317', '01787684111', '', '01724548970', '30500'),
(18, 'CN010', '2020-01-06', 'DMT-GA-42-2302', 'E-ENGINEERING LTD.', 'E-ENGINEERING LIMITED', 'NZT260-3124786', 'TOYOTA', '1NZ-E299011', '01787684111', '', '01724548970', '30500'),
(19, 'CN011', '2020-01-15', 'DMT-KHA-12-4614', 'SAIF POWERTEC LTD.', 'SAIF POWERTEC LIMITED', 'NCP50-0016502', 'TOYOTA', '2NZ-2770620', '01755543180', '', '01724548970', '30500');

-- --------------------------------------------------------

--
-- Table structure for table `inv_complaindetails`
--

CREATE TABLE `inv_complaindetails` (
  `id` int(11) NOT NULL,
  `complain_id` varchar(100) NOT NULL,
  `complain_details` varchar(5000) NOT NULL,
  `status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `inv_complaindetails`
--

INSERT INTO `inv_complaindetails` (`id`, `complain_id`, `complain_details`, `status`) VALUES
(18, 'CN001', 'Mirror Broken', 'Pending'),
(19, 'CN002', 'car wash', 'Pending'),
(20, 'CN003', 'bamper repair', 'Pending'),
(21, 'CN004', 'car wash', 'Pending'),
(22, 'CN005', 'car wash', 'Pending'),
(23, 'CN006', 'car wash', 'Pending'),
(24, 'CN007', 'car wash', 'Pending'),
(25, 'CN008', 'car wash', 'Pending'),
(26, 'CN009', 'car wash', 'Pending'),
(27, 'CN010', 'car wash', 'Pending'),
(28, 'CN011', 'bamper repair', 'Pending');

-- --------------------------------------------------------

--
-- Table structure for table `inv_designation`
--

CREATE TABLE `inv_designation` (
  `id` int(11) NOT NULL,
  `des_id` varchar(100) NOT NULL,
  `designation` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `inv_designation`
--

INSERT INTO `inv_designation` (`id`, `des_id`, `designation`) VALUES
(1, 'IWD-001', 'Manager'),
(3, 'IWD-002', 'Asst. manager'),
(4, 'IWD-003', 'Technician');

-- --------------------------------------------------------

--
-- Table structure for table `inv_employee`
--

CREATE TABLE `inv_employee` (
  `id` int(11) NOT NULL,
  `employee_id` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `designation` varchar(100) NOT NULL,
  `department` varchar(100) NOT NULL,
  `grade` varchar(100) NOT NULL,
  `category` varchar(100) NOT NULL,
  `company` varchar(100) NOT NULL,
  `division` varchar(100) NOT NULL,
  `branch` varchar(100) NOT NULL,
  `section` varchar(100) NOT NULL,
  `location` varchar(100) NOT NULL,
  `join_date` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL,
  `sex` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `inv_employee`
--

INSERT INTO `inv_employee` (`id`, `employee_id`, `name`, `designation`, `department`, `grade`, `category`, `company`, `division`, `branch`, `section`, `location`, `join_date`, `status`, `sex`) VALUES
(1, 'ENG-000111', 'Samim Hasan', 'Surveyor', 'Project ENG', 'Grade-07', 'Management', 'E-Engineering Ltd.', 'E-Engineering', 'Blank', 'Blank', 'Payra', '3/1/2018', 'Active', 'Male'),
(2, 'ENG-000139', 'Md. Zulfikar Ali', 'Site Supervisor', 'Project ENG', 'Grade-07', 'Management', 'E-Engineering Ltd.', 'E-Engineering', 'Blank', 'Blank', 'Payra', '4/1/2018', 'Active', 'Male'),
(3, 'ENG-000150', 'Md. Ibrahim Khalil', 'Site Engineer', 'Project ENG', 'Grade-08', 'Management', 'E-Engineering Ltd.', 'E-Engineering', 'Blank', 'Blank', 'Payra', '4/2/2018', 'Active', 'Male'),
(4, 'ENG-000156', 'Mohammad Rocnuzzaman', 'Surveyor', 'Project ENG', 'Grade-07', 'Management', 'E-Engineering Ltd.', 'E-Engineering', 'Blank', 'Blank', 'Payra', '4/7/2018', 'Active', 'Male'),
(5, 'ENG-000157', 'Md. Samsul Islam', 'Site Engineer', 'Project ENG', 'Grade-08', 'Management', 'E-Engineering Ltd.', 'E-Engineering', 'Blank', 'Blank', 'Payra', '4/7/2018', 'Active', 'Male'),
(6, 'ENG-000178', 'Md. Sakawat Hossan', 'Surveyor', 'Project ENG', 'Grade-07', 'Management', 'E-Engineering Ltd.', 'E-Engineering', 'Blank', 'Blank', 'Payra', '3/9/2018', 'Active', 'Male'),
(7, 'ENG-000209', 'Md. Zahurul Islam', 'Site Engineer', 'Engineering', 'Grade-08', 'Management', 'E-Engineering Ltd.', 'E-Engineering', 'Blank', 'Blank', 'Payra', '10/10/2018', 'Active', 'Male'),
(8, 'ENG-000211', 'Md Shafiqul Alam Meraj', 'Site Engineer', 'Engineering', 'Grade-08', 'Management', 'E-Engineering Ltd.', 'E-Engineering', 'Blank', 'Blank', 'Payra', '10/8/2018', 'Active', 'Male'),
(9, 'ENG-000215', 'Md Rashed Hasan', 'Site Engineer', 'Project ENG', 'Grade-08', 'Management', 'E-Engineering Ltd.', 'E-Engineering', 'Blank', 'Blank', 'Payra', '10/1/2018', 'Active', 'Male'),
(10, 'ENG-000218', 'Md. Al Amin Hossain Khoka', 'Site Engineer', 'Project ENG', 'Grade-08', 'Management', 'E-Engineering Ltd.', 'E-Engineering', 'Blank', 'Blank', 'Payra', '10/1/2018', 'Active', 'Male'),
(11, 'ENG-000220', 'Khalilur Rahman', 'Site Engineer', 'Project ENG', 'Grade-08', 'Management', 'E-Engineering Ltd.', 'E-Engineering', 'Blank', 'Blank', 'Payra', '10/1/2018', 'Active', 'Male'),
(12, 'ENG-000238', 'Meer Kamrul Hassan', 'Lab Techinacian', 'Project ENG', 'Grade-08', 'Management', 'E-Engineering Ltd.', 'E-Engineering', 'Blank', 'Blank', 'Payra', '10/21/2018', 'Active', 'Male'),
(13, 'ENG-000240', 'Biplob Devnath', 'Project Manager', 'Project ENG', 'Grade-10', 'Management', 'E-Engineering Ltd.', 'E-Engineering', 'Blank', 'Blank', 'Payra', '10/14/2018', 'Active', 'Male'),
(14, 'ENG-000266', 'Md Humayun Kabir', 'Project Engineer', 'Project ENG', 'Grade-10', 'Management', 'E-Engineering Ltd.', 'E-Engineering', 'Blank', 'Blank', 'Payra', '1/10/2019', 'Active', 'Male'),
(15, 'ENG-000270', 'Md Ferdous Rahman', 'Officer', 'QMS', 'Grade-05', 'Management', 'E-Engineering Ltd.', 'E-Engineering', 'Blank', 'Blank', 'Payra', '1/1/2019', 'Active', 'Male'),
(16, 'ENG-000272', 'Md Faruk Hossain', 'Site Engineer', 'Project ENG', 'Grade-08', 'Management', 'E-Engineering Ltd.', 'E-Engineering', 'Blank', 'Blank', 'Payra', '1/5/2019', 'Active', 'Male'),
(17, 'ENG-000275', 'Sujoy Das', 'Project Engineer', 'Project ENG', 'Grade-10', 'Management', 'E-Engineering Ltd.', 'E-Engineering', 'Blank', 'Blank', 'Payra', '1/8/2019', 'Active', 'Male'),
(18, 'ENG-000278', 'Md Abdur Rahman', 'Site Engineer', 'Project ENG', 'Grade-08', 'Management', 'E-Engineering Ltd.', 'E-Engineering', 'Blank', 'Blank', 'Payra', '1/17/2019', 'Active', 'Male'),
(19, 'ENG-000282', 'Md Kuddus Ali', 'Site Engineer', 'Project ENG', 'Grade-08', 'Management', 'E-Engineering Ltd.', 'E-Engineering', 'Blank', 'Blank', 'Payra', '1/15/2019', 'Active', 'Male'),
(20, 'ENG-000283', 'Md Lokman Ahmed', 'Site Engineer', 'Project ENG', 'Grade-08', 'Management', 'E-Engineering Ltd.', 'E-Engineering', 'Blank', 'Blank', 'Payra', '1/16/2019', 'Active', 'Male'),
(21, 'ENG-000286', 'Md Arifur Rahman', 'Supervisor', 'Project ENG', 'Grade-07', 'Management', 'E-Engineering Ltd.', 'E-Engineering', 'Blank', 'Blank', 'Payra', '1/15/2019', 'Active', 'Male'),
(22, 'ENG-000290', 'Md. Shariful Molla', 'Supervisor', 'Project ENG', 'Grade-07', 'Management', 'E-Engineering Ltd.', 'E-Engineering', 'Blank', 'Blank', 'Payra', '1/8/2019', 'Active', 'Male'),
(23, 'ENG-000291', 'Md Yousuf Hosain', 'Supervisor', 'Project ENG', 'Grade-07', 'Management', 'E-Engineering Ltd.', 'E-Engineering', 'Blank', 'Blank', 'Payra', '1/8/2019', 'Active', 'Male'),
(24, 'ENG-000292', 'Md Faisal Ahamed Arafat', 'Supervisor', 'Project ENG', 'Grade-07', 'Management', 'E-Engineering Ltd.', 'E-Engineering', 'Blank', 'Blank', 'Payra', '1/20/2019', 'Active', 'Male'),
(25, 'ENG-000300', 'Md Mohidul Islam', 'Surveyor', 'Project ENG', 'Grade-07', 'Management', 'E-Engineering Ltd.', 'E-Engineering', 'Blank', 'Blank', 'Payra', '12/18/2018', 'Active', 'Male'),
(26, 'ENG-000308', 'Bidduth Ray', 'Surveyor', 'Project ENG', 'Grade-07', 'Management', 'E-Engineering Ltd.', 'E-Engineering', 'Blank', 'Blank', 'Payra', '2/2/2019', 'Active', 'Male'),
(27, 'ENG-000309', 'Md. Saidur Rahaman', 'Site Engineer', 'Project ENG', 'Grade-08', 'Management', 'E-Engineering Ltd.', 'E-Engineering', 'Blank', 'Blank', 'Payra', '2/2/2019', 'Active', 'Male'),
(28, 'ENG-000311', 'Mukter Hossen', 'Supervisor', 'Project ENG', 'Grade-07', 'Management', 'E-Engineering Ltd.', 'E-Engineering', 'Blank', 'Blank', 'Payra', '2/2/2019', 'Active', 'Male'),
(29, 'ENG-000312', 'Md. Nazrul Islam', 'Site Engineer', 'Project ENG', 'Grade-08', 'Management', 'E-Engineering Ltd.', 'E-Engineering', 'Blank', 'Blank', 'Payra', '2/2/2019', 'Active', 'Male'),
(30, 'ENG-000313', 'Rubel Ahmed', 'Surveyor', 'Project ENG', 'Grade-07', 'Management', 'E-Engineering Ltd.', 'E-Engineering', 'Blank', 'Blank', 'Payra', '2/2/2019', 'Active', 'Male'),
(31, 'ENG-000326', 'Md. Waliullah', 'Officer', 'Administration', 'Grade-05', 'Management', 'E-Engineering Ltd.', 'E-Engineering', 'Blank', 'Admin', 'Payra', '1/1/2019', 'Active', 'Male'),
(32, 'ENG-000327', 'Md Nuruzzaman Shahed', 'Site Engineer', 'Engineering', 'Grade-08', 'Management', 'E-Engineering Ltd.', 'E-Engineering', 'Blank', 'Blank', 'Payra', '1/15/2019', 'Active', 'Male'),
(33, 'ENG-000328', 'Md Abdullah Al Mostain', 'Deputy Project Manager', 'Project ENG', 'Grade-12', 'Management', 'E-Engineering Ltd.', 'E-Engineering', 'Blank', 'Blank', 'Payra', '2/11/2019', 'Active', 'Male'),
(34, 'ENG-000337', 'Md Al-Amin', 'Site Engineer', 'Project ENG', 'Grade-08', 'Management', 'E-Engineering Ltd.', 'E-Engineering', 'Blank', 'Blank', 'Payra', '2/10/2019', 'Active', 'Male'),
(35, 'ENG-000397', 'Md. Wahiduzzaman', 'Senior Officer', 'Finance And Accounts', 'Grade-06', 'Management', 'E-Engineering Ltd.', 'E-Engineering', 'Blank', 'Accounts', 'Payra', '4/1/2019', 'Active', 'Male'),
(36, 'ENG-000418', 'Md. Imran Hossain', 'Officer', 'Store', 'Grade-05', 'Management', 'E-Engineering Ltd.', 'E-Engineering', 'Blank', '', 'Payra', '4/20/2019', 'Active', 'Male'),
(37, 'ENG-000427', 'Md. Tanvir Hossain', 'Executive', 'QMS', 'Grade-07', 'Management', 'E-Engineering Ltd.', 'E-Engineering', 'Blank', 'Blank', 'Payra', '5/2/2019', 'Active', 'Male'),
(38, 'ENG-000471', 'Kalyan Chandra Sharma', 'Senior Project Manager', 'Civil', 'Grade-13', 'Management', 'E-Engineering Ltd.', 'E-Engineering', 'Blank', 'Blank', 'Payra', '7/1/2019', 'Active', 'Male'),
(39, 'ENG-000472', 'Md Nabiruzzaman', 'Project Manager', 'Civil', 'Grade-13', 'Management', 'E-Engineering Ltd.', 'E-Engineering', 'Blank', 'Blank', 'Payra', '7/1/2019', 'Active', 'Male'),
(40, 'ENG-000474', 'Md Mokhlesur Rahman', 'Project Engineer', 'Civil', 'Grade-10', 'Management', 'E-Engineering Ltd.', 'E-Engineering', 'Blank', 'Blank', 'Payra', '7/1/2019', 'Active', 'Male'),
(41, 'ENG-000475', 'Md  Salahuddin Azad', 'Deputy Project Manager', 'Civil', 'Grade-12', 'Management', 'E-Engineering Ltd.', 'E-Engineering', 'Blank', 'Blank', 'Payra', '7/1/2019', 'Active', 'Male'),
(42, 'ENG-000529', 'Habibullah Bahar', 'Asst Site Engineer', 'Civil', '', '', 'E-Engineering Ltd.', 'E-Engineering', '', '', '', '', '', ''),
(43, 'ENG-000549', 'Mehedi Hasan', 'Asst Site Engineer', 'Civik', '', '', 'E-Engineering Ltd.', 'E-Engineering', '', '', '', '', '', ''),
(44, 'ENG-000808', 'Ahahuda', 'Site Superviser', 'Civil', '', '', 'E-Engineering Ltd.', 'E-Engineering', '', '', '', '', '', ''),
(45, 'ENG-000138', 'Abdullah Kafi', 'Site Engineer', 'Project ENG', '', '', 'E-Engineering Ltd.', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `inv_ga_listunit`
--

CREATE TABLE `inv_ga_listunit` (
  `id` int(11) NOT NULL,
  `lunit_id` varchar(10) CHARACTER SET utf8 NOT NULL,
  `lunit_name` varchar(25) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `inv_invoice`
--

CREATE TABLE `inv_invoice` (
  `id` int(11) NOT NULL,
  `invoice_no` varchar(100) NOT NULL,
  `invoice_date` varchar(100) NOT NULL,
  `job_card_no` varchar(100) NOT NULL,
  `total_qty` varchar(100) NOT NULL,
  `total_amount` varchar(100) NOT NULL,
  `total_service` varchar(100) NOT NULL,
  `grand_total` varchar(100) NOT NULL,
  `debit` varchar(100) NOT NULL,
  `credit` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `inv_invoice_details`
--

CREATE TABLE `inv_invoice_details` (
  `id` int(11) NOT NULL,
  `invoice_no` varchar(100) NOT NULL,
  `material_id` varchar(100) NOT NULL,
  `qty` varchar(100) NOT NULL,
  `unit_price` varchar(100) NOT NULL,
  `part_no` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `inv_issue`
--

CREATE TABLE `inv_issue` (
  `id` int(11) NOT NULL,
  `issue_id` varchar(25) NOT NULL,
  `issue_date` date NOT NULL,
  `party_id` varchar(21) NOT NULL,
  `received_by` varchar(100) NOT NULL,
  `totalamount` float NOT NULL,
  `paidamount` float NOT NULL,
  `Dueamount` float NOT NULL,
  `receiver_phone` varchar(100) NOT NULL,
  `remarks` varchar(100) CHARACTER SET utf8 NOT NULL,
  `project_id` varchar(25) CHARACTER SET utf8 NOT NULL,
  `warehouse_id` varchar(100) NOT NULL,
  `issued_by` varchar(100) NOT NULL,
  `approval_status` tinyint(1) NOT NULL DEFAULT 0,
  `approved_by` varchar(100) NOT NULL,
  `approved_at` datetime DEFAULT NULL,
  `approval_remarks` longtext NOT NULL,
  `issue_image` varchar(1000) NOT NULL,
  `created_at` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `inv_issue`
--

INSERT INTO `inv_issue` (`id`, `issue_id`, `issue_date`, `party_id`, `received_by`, `totalamount`, `paidamount`, `Dueamount`, `receiver_phone`, `remarks`, `project_id`, `warehouse_id`, `issued_by`, `approval_status`, `approved_by`, `approved_at`, `approval_remarks`, `issue_image`, `created_at`) VALUES
(7620, 'IS-CW001', '2022-02-06', 'PA1', '', 4500, 2000, 2500, '', 'hello', '2', '10', '', 0, '', NULL, '', '', '2022-02-06');

-- --------------------------------------------------------

--
-- Table structure for table `inv_issuedetail`
--

CREATE TABLE `inv_issuedetail` (
  `id` int(11) NOT NULL,
  `issue_id` varchar(15) CHARACTER SET utf8 NOT NULL,
  `issue_date` date NOT NULL,
  `material_id` varchar(9) CHARACTER SET utf8 NOT NULL,
  `material_name` varchar(100) NOT NULL,
  `unit` varchar(100) NOT NULL,
  `issue_qty` float NOT NULL,
  `issue_price` float NOT NULL,
  `amount` float NOT NULL,
  `part_no` varchar(200) NOT NULL,
  `project_id` varchar(100) NOT NULL,
  `warehouse_id` varchar(100) NOT NULL,
  `package_id` varchar(100) NOT NULL,
  `building_id` varchar(100) NOT NULL,
  `approval_status` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `inv_issuedetail`
--

INSERT INTO `inv_issuedetail` (`id`, `issue_id`, `issue_date`, `material_id`, `material_name`, `unit`, `issue_qty`, `issue_price`, `amount`, `part_no`, `project_id`, `warehouse_id`, `package_id`, `building_id`, `approval_status`) VALUES
(33995, 'IS-CW001', '2022-02-06', '01-01-002', '362', '3', 3, 1500, 4500, 'IGNITE', '2', '10', '', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `inv_item_unit`
--

CREATE TABLE `inv_item_unit` (
  `id` int(11) NOT NULL,
  `unit_name` varchar(400) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `inv_item_unit`
--

INSERT INTO `inv_item_unit` (`id`, `unit_name`) VALUES
(1, 'kg'),
(2, 'bag'),
(3, 'pcs'),
(4, 'Ton'),
(6, 'ltr'),
(7, 'Drum'),
(8, 'CFT'),
(9, 'Nos'),
(12, 'RFT'),
(13, 'Coil '),
(14, 'SFT'),
(15, 'Gallon'),
(16, 'Bundle'),
(17, 'Dozn'),
(18, 'Roll');

-- --------------------------------------------------------

--
-- Table structure for table `inv_job_card`
--

CREATE TABLE `inv_job_card` (
  `id` int(11) NOT NULL,
  `job_card_no` varchar(100) NOT NULL,
  `date` varchar(100) NOT NULL,
  `complain_id` varchar(100) NOT NULL,
  `milege` varchar(100) NOT NULL,
  `remarks` longtext NOT NULL,
  `inv_status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `inv_job_card`
--

INSERT INTO `inv_job_card` (`id`, `job_card_no`, `date`, `complain_id`, `milege`, `remarks`, `inv_status`) VALUES
(8, 'JC-001', '2019-12-30', 'CN001', '10000', 'remarks', ''),
(9, 'JC-002', '2020-01-06', 'CN006', '172557', 'REMARKS', ''),
(10, 'JC-003', '2020-01-06', 'CN009', '30500', 'REMARKS', ''),
(11, 'JC-004', '2020-01-06', 'CN010', '30500', 'REMARKS', '');

-- --------------------------------------------------------

--
-- Table structure for table `inv_job_card_details`
--

CREATE TABLE `inv_job_card_details` (
  `id` int(11) NOT NULL,
  `job_card_no` varchar(100) NOT NULL,
  `task_details` varchar(100) NOT NULL,
  `assign_to` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `inv_job_card_details`
--

INSERT INTO `inv_job_card_details` (`id`, `job_card_no`, `task_details`, `assign_to`) VALUES
(15, 'JC-001', 'Mirror Repair', 'SPL-007730'),
(16, 'JC-002', 'CAR WASH', 'SPL-007729'),
(17, 'JC-003', 'CAR WASH', 'SPL-007730'),
(18, 'JC-004', 'CAR WASH', 'SPL-007730');

-- --------------------------------------------------------

--
-- Table structure for table `inv_material`
--

CREATE TABLE `inv_material` (
  `id` int(11) NOT NULL,
  `material_id_code` varchar(10) DEFAULT NULL,
  `material_id` varchar(15) CHARACTER SET utf8 DEFAULT NULL,
  `material_sub_id` varchar(25) CHARACTER SET utf8 DEFAULT NULL,
  `material_description` varchar(75) CHARACTER SET utf8 DEFAULT NULL,
  `brand_name` varchar(100) NOT NULL,
  `type` varchar(100) NOT NULL,
  `material_min_stock` int(11) DEFAULT NULL,
  `avg_con_sump` int(11) DEFAULT NULL,
  `lead_time` int(11) DEFAULT NULL,
  `re_order_level` int(11) NOT NULL,
  `qty_unit` varchar(15) CHARACTER SET utf8 DEFAULT NULL,
  `op_balance_qty` int(11) NOT NULL,
  `op_balance_val` int(11) NOT NULL,
  `chk_print` int(11) DEFAULT NULL,
  `cur_qty` int(11) DEFAULT NULL,
  `cur_price` int(11) DEFAULT NULL,
  `cur_value` int(11) DEFAULT NULL,
  `last_issue` date DEFAULT NULL,
  `last_receive` date DEFAULT NULL,
  `part_no` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `inv_material`
--

INSERT INTO `inv_material` (`id`, `material_id_code`, `material_id`, `material_sub_id`, `material_description`, `brand_name`, `type`, `material_min_stock`, `avg_con_sump`, `lead_time`, `re_order_level`, `qty_unit`, `op_balance_qty`, `op_balance_val`, `chk_print`, `cur_qty`, `cur_price`, `cur_value`, `last_issue`, `last_receive`, `part_no`) VALUES
(361, '01-01-001', '40', '156', 'IGNITE SMF', 'IGNITE', '', 10, NULL, NULL, 0, '3', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(362, '01-01-002', '40', '156', 'IGNITE CAR', 'IGNITE', '', 20, NULL, NULL, 0, '3', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, '');

-- --------------------------------------------------------

--
-- Table structure for table `inv_materialbalance`
--

CREATE TABLE `inv_materialbalance` (
  `id` int(11) NOT NULL,
  `mb_ref_id` varchar(25) CHARACTER SET utf8 NOT NULL,
  `mb_materialid` varchar(25) CHARACTER SET utf8 NOT NULL,
  `mb_date` date NOT NULL,
  `mbin_qty` float NOT NULL,
  `mbin_val` float NOT NULL,
  `mbout_qty` float NOT NULL,
  `mbout_val` float NOT NULL,
  `mbprice` float NOT NULL,
  `mbtype` varchar(30) CHARACTER SET utf8 NOT NULL,
  `mbserial` float NOT NULL,
  `mbserial_id` varchar(10) CHARACTER SET utf8 NOT NULL,
  `mbunit_id` varchar(15) CHARACTER SET utf8 NOT NULL,
  `jvno` varchar(25) CHARACTER SET utf8 NOT NULL,
  `part_no` varchar(200) DEFAULT NULL,
  `project_id` varchar(100) NOT NULL,
  `warehouse_id` varchar(100) NOT NULL,
  `package_id` varchar(100) NOT NULL,
  `building_id` varchar(100) NOT NULL,
  `approval_status` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `inv_materialbalance`
--

INSERT INTO `inv_materialbalance` (`id`, `mb_ref_id`, `mb_materialid`, `mb_date`, `mbin_qty`, `mbin_val`, `mbout_qty`, `mbout_val`, `mbprice`, `mbtype`, `mbserial`, `mbserial_id`, `mbunit_id`, `jvno`, `part_no`, `project_id`, `warehouse_id`, `package_id`, `building_id`, `approval_status`, `created_at`) VALUES
(44698, 'MRR-CW001', '01-01-002', '2022-01-10', 3, 30, 0, 0, 10, 'Receive', 1.1, '2', '0', 'MRR-CW001', 'IGNITE', '2', '10', '', '', 0, '2022-01-10'),
(44699, 'MRR-CW001', '01-01-001', '2022-01-10', 2, 10, 0, 0, 5, 'Receive', 1.1, '2', '0', 'MRR-CW001', 'IGNITE', '2', '10', '', '', 0, '2022-01-10'),
(44702, 'MRR-CW002', '01-01-001', '2022-01-10', 300, 600, 0, 0, 2, 'Receive', 1.1, '2', '0', 'MRR-CW002', 'IGNITE', '2', '10', '', '', 0, '2022-01-10'),
(44714, 'MRR-CW003', '01-01-002', '2022-01-17', 50, 300, 0, 0, 6, 'Receive', 1.1, '2', '0', 'MRR-CW003', 'IGNITE', '2', '10', '', '', 0, '2022-01-17'),
(44716, 'MRR-CW004', '01-01-002', '2022-02-06', 100, 5000, 0, 0, 50, 'Receive', 1.1, '2', '0', 'MRR-CW004', 'IGNITE', '2', '10', '', '', 0, '2022-02-06'),
(44718, 'IS-CW001', '01-01-002', '2022-02-06', 0, 0, 3, 0, 0, 'Issue', 1.1, '2', '0', 'IS-CW001', 'IGNITE', '2', '10', '', '', 0, '2022-02-06');

-- --------------------------------------------------------

--
-- Table structure for table `inv_materialcategory`
--

CREATE TABLE `inv_materialcategory` (
  `id` int(11) NOT NULL,
  `material_sub_id` varchar(15) CHARACTER SET utf8 DEFAULT NULL,
  `category_id` varchar(15) CHARACTER SET utf8 NOT NULL,
  `material_sub_description` varchar(75) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `inv_materialcategory`
--

INSERT INTO `inv_materialcategory` (`id`, `material_sub_id`, `category_id`, `material_sub_description`) VALUES
(156, '01-01-000', '40', 'IGNITE');

-- --------------------------------------------------------

--
-- Table structure for table `inv_materialcategorysub`
--

CREATE TABLE `inv_materialcategorysub` (
  `id` int(11) NOT NULL,
  `category_id` varchar(15) CHARACTER SET utf8 DEFAULT NULL,
  `category_description` varchar(75) CHARACTER SET utf8 DEFAULT NULL,
  `stock_acct_id` varchar(15) CHARACTER SET utf8 DEFAULT NULL,
  `chk_sbalance` int(11) DEFAULT NULL,
  `consumption_ac` varchar(20) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `inv_materialcategorysub`
--

INSERT INTO `inv_materialcategorysub` (`id`, `category_id`, `category_description`, `stock_acct_id`, `chk_sbalance`, `consumption_ac`) VALUES
(40, '01-00-000', 'BATTERY', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `inv_particulars`
--

CREATE TABLE `inv_particulars` (
  `id` int(11) NOT NULL,
  `particulars_id` varchar(100) NOT NULL,
  `type_id` varchar(100) NOT NULL,
  `particulars` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `inv_particulars_type`
--

CREATE TABLE `inv_particulars_type` (
  `id` int(11) NOT NULL,
  `type_id` varchar(100) NOT NULL,
  `type` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `inv_partybalance`
--

CREATE TABLE `inv_partybalance` (
  `id` int(11) NOT NULL,
  `pb_ref_id` varchar(15) CHARACTER SET utf8 NOT NULL,
  `warehouse_id` varchar(100) NOT NULL,
  `pb_date` date NOT NULL,
  `pb_party_id` varchar(15) CHARACTER SET utf8 NOT NULL,
  `pb_dr_amount` float NOT NULL,
  `pb_cr_amount` float NOT NULL,
  `pb_remark` varchar(175) CHARACTER SET utf8 NOT NULL,
  `pb_partac_id` varchar(25) CHARACTER SET utf8 NOT NULL,
  `approval_status` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `inv_partybalance`
--

INSERT INTO `inv_partybalance` (`id`, `pb_ref_id`, `warehouse_id`, `pb_date`, `pb_party_id`, `pb_dr_amount`, `pb_cr_amount`, `pb_remark`, `pb_partac_id`, `approval_status`) VALUES
(5, 'IS-CW001', '10', '2022-02-06', 'PA1', 4500, 2000, 'hello', 'IS-CW001', 0),
(6, 'VID-001', '', '2022-02-06', 'PA1', 0, 1000, 'cn', 'VID-001', 0),
(7, 'VID-002', '', '2022-02-06', 'PA1', 0, 10, '2ND', 'VID-002', 0);

-- --------------------------------------------------------

--
-- Table structure for table `inv_purchase`
--

CREATE TABLE `inv_purchase` (
  `id` int(11) NOT NULL,
  `purchase_no` varchar(25) CHARACTER SET utf8 NOT NULL,
  `purchase_date` datetime DEFAULT NULL,
  `purchase_id` varchar(15) CHARACTER SET utf8 DEFAULT NULL,
  `receive_acct_id` varchar(15) CHARACTER SET utf8 DEFAULT NULL,
  `supplier_id` varchar(15) CHARACTER SET utf8 DEFAULT NULL,
  `postedtogl` int(11) DEFAULT NULL,
  `remarks` varchar(180) CHARACTER SET utf8 DEFAULT NULL,
  `purchase_type` varchar(25) CHARACTER SET utf8 DEFAULT NULL,
  `purchase_ware_hosue_id` int(11) DEFAULT NULL,
  `purchase_unit_id` varchar(15) CHARACTER SET utf8 DEFAULT NULL,
  `chk_year_end` int(11) DEFAULT NULL,
  `receive_total` float DEFAULT NULL,
  `no_of_material` float DEFAULT NULL,
  `challanno` varchar(500) DEFAULT NULL,
  `jv_no` varchar(25) CHARACTER SET utf8 DEFAULT NULL,
  `part_no` varchar(200) DEFAULT NULL,
  `requisitionno` varchar(500) DEFAULT NULL,
  `requisition_date` datetime DEFAULT NULL,
  `project_id` varchar(100) NOT NULL,
  `warehouse_id` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `inv_purchasedetail`
--

CREATE TABLE `inv_purchasedetail` (
  `id` int(11) NOT NULL,
  `purchase_no` varchar(25) CHARACTER SET utf8 NOT NULL,
  `material_id` varchar(25) CHARACTER SET utf8 NOT NULL,
  `unit_id` int(11) DEFAULT NULL,
  `purchase_qty` float NOT NULL,
  `unit_price` float NOT NULL,
  `sl_no` int(11) NOT NULL,
  `total_purchase` float NOT NULL,
  `rd_serial_id` varchar(20) CHARACTER SET utf8 NOT NULL,
  `part_no` varchar(200) DEFAULT NULL,
  `project_id` varchar(100) NOT NULL,
  `warehouse_id` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `inv_receive`
--

CREATE TABLE `inv_receive` (
  `id` int(11) NOT NULL,
  `mrr_no` varchar(25) CHARACTER SET utf8 NOT NULL,
  `mrr_date` date DEFAULT NULL,
  `purchase_id` varchar(15) CHARACTER SET utf8 DEFAULT NULL,
  `receive_acct_id` varchar(15) CHARACTER SET utf8 DEFAULT NULL,
  `supplier_id` varchar(15) CHARACTER SET utf8 DEFAULT NULL,
  `postedtogl` int(11) DEFAULT NULL,
  `vat_challan_no` varchar(100) NOT NULL,
  `remarks` varchar(180) CHARACTER SET utf8 DEFAULT NULL,
  `receive_type` varchar(25) CHARACTER SET utf8 DEFAULT NULL,
  `project_id` varchar(100) NOT NULL,
  `warehouse_id` varchar(100) DEFAULT NULL,
  `receive_unit_id` varchar(15) CHARACTER SET utf8 DEFAULT NULL,
  `chk_year_end` int(11) DEFAULT NULL,
  `receive_total` float DEFAULT NULL,
  `no_of_material` float DEFAULT NULL,
  `challanno` varchar(500) DEFAULT NULL,
  `challan_date` date NOT NULL,
  `jv_no` varchar(25) CHARACTER SET utf8 DEFAULT NULL,
  `part_no` varchar(200) DEFAULT NULL,
  `requisitionno` varchar(500) DEFAULT NULL,
  `requisition_date` datetime DEFAULT NULL,
  `received_by` varchar(100) NOT NULL,
  `approval_status` tinyint(1) NOT NULL DEFAULT 0,
  `approved_by` varchar(100) NOT NULL,
  `approved_at` datetime DEFAULT NULL,
  `approval_remarks` longtext NOT NULL,
  `mrr_image` varchar(10000) NOT NULL,
  `created_at` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `inv_receive`
--

INSERT INTO `inv_receive` (`id`, `mrr_no`, `mrr_date`, `purchase_id`, `receive_acct_id`, `supplier_id`, `postedtogl`, `vat_challan_no`, `remarks`, `receive_type`, `project_id`, `warehouse_id`, `receive_unit_id`, `chk_year_end`, `receive_total`, `no_of_material`, `challanno`, `challan_date`, `jv_no`, `part_no`, `requisitionno`, `requisition_date`, `received_by`, `approval_status`, `approved_by`, `approved_at`, `approval_remarks`, `mrr_image`, `created_at`) VALUES
(1751, 'MRR-CW001', '2022-01-10', 'P01', '6-14-010', 'SID-001', 0, 'V01', 'test', 'Credit', '2', '10', '1', NULL, 40, 5, '45', '2022-01-10', NULL, 'IGNITE', '0001', '2022-01-10 00:00:00', '1', 0, '', '0000-00-00 00:00:00', '', '', '2022-01-10'),
(1752, 'MRR-CW002', '2022-01-10', '323', '6-14-010', 'SID-001', 0, 'vbvb', 'vzxcvzx', 'Credit', '2', '10', '1', NULL, 600, 300, '297', '2022-01-10', NULL, 'IGNITE', '456', '2022-01-10 00:00:00', '1', 0, '', '0000-00-00 00:00:00', '', '', '2022-01-10'),
(1753, 'MRR-CW003', '2022-01-17', 'P01', '6-14-010', 'SID-001', 0, 'Y', 'B', 'Credit', '2', '10', '1', NULL, 300, 50, '297', '2022-01-17', NULL, 'IGNITE', '', '2022-01-17 00:00:00', '1', 0, '', '0000-00-00 00:00:00', '', '', '2022-01-17'),
(1754, 'MRR-CW004', '2022-02-06', 'P01', '6-14-010', 'SID-001', 0, 'v45', 'valo', 'Credit', '2', '10', '1', NULL, 5000, 100, '297', '2022-02-06', NULL, 'IGNITE', 'R01', '2022-02-06 00:00:00', '1', 0, '', '0000-00-00 00:00:00', '', '', '2022-02-06');

-- --------------------------------------------------------

--
-- Table structure for table `inv_receivedetail`
--

CREATE TABLE `inv_receivedetail` (
  `id` int(11) NOT NULL,
  `mrr_no` varchar(25) CHARACTER SET utf8 NOT NULL,
  `material_id` varchar(25) CHARACTER SET utf8 NOT NULL,
  `material_name` varchar(100) NOT NULL,
  `unit_id` int(11) DEFAULT NULL,
  `receive_qty` float NOT NULL,
  `unit_price` float NOT NULL,
  `sl_no` int(11) NOT NULL,
  `total_receive` float NOT NULL,
  `rd_serial_id` varchar(20) CHARACTER SET utf8 NOT NULL,
  `part_no` varchar(200) DEFAULT NULL,
  `project_id` varchar(100) NOT NULL,
  `warehouse_id` varchar(1000) NOT NULL,
  `approval_status` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `inv_receivedetail`
--

INSERT INTO `inv_receivedetail` (`id`, `mrr_no`, `material_id`, `material_name`, `unit_id`, `receive_qty`, `unit_price`, `sl_no`, `total_receive`, `rd_serial_id`, `part_no`, `project_id`, `warehouse_id`, `approval_status`) VALUES
(2434, 'MRR-CW001', '01-01-002', '362', 3, 3, 10, 1, 30, '', 'IGNITE', '2', '10', 0),
(2435, 'MRR-CW001', '01-01-001', '361', 3, 2, 5, 1, 10, '', 'IGNITE', '2', '10', 0),
(2436, 'MRR-CW002', '01-01-001', '361', 3, 300, 2, 1, 600, '', 'IGNITE', '2', '10', 0),
(2437, 'MRR-CW003', '01-01-002', '362', 3, 50, 6, 1, 300, '', 'IGNITE', '2', '10', 0),
(2438, 'MRR-CW004', '01-01-002', '362', 3, 100, 50, 1, 5000, '', 'IGNITE', '2', '10', 0);

-- --------------------------------------------------------

--
-- Table structure for table `inv_requisition`
--

CREATE TABLE `inv_requisition` (
  `id` int(11) NOT NULL,
  `requisition_id` varchar(25) NOT NULL,
  `project_id` int(11) DEFAULT NULL,
  `requisition_date` datetime NOT NULL,
  `remarks` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `no_of_material` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `inv_requisition_details`
--

CREATE TABLE `inv_requisition_details` (
  `id` int(11) NOT NULL,
  `requisition_id` varchar(15) CHARACTER SET utf8 NOT NULL,
  `material_id` varchar(9) CHARACTER SET utf8 NOT NULL,
  `requisition_qty` float NOT NULL,
  `sl_no` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `inv_return`
--

CREATE TABLE `inv_return` (
  `id` int(11) NOT NULL,
  `return_id` varchar(25) NOT NULL,
  `return_date` date NOT NULL,
  `remarks` varchar(100) CHARACTER SET utf8 NOT NULL,
  `project_id` varchar(25) CHARACTER SET utf8 NOT NULL,
  `warehouse_id` varchar(100) NOT NULL,
  `package_id` varchar(100) NOT NULL,
  `building_id` varchar(100) NOT NULL,
  `approval_status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `inv_returndetail`
--

CREATE TABLE `inv_returndetail` (
  `id` int(11) NOT NULL,
  `return_id` varchar(15) CHARACTER SET utf8 NOT NULL,
  `return_date` date NOT NULL,
  `material_id` varchar(9) CHARACTER SET utf8 NOT NULL,
  `material_name` varchar(100) NOT NULL,
  `unit` varchar(100) NOT NULL,
  `return_qty` float NOT NULL,
  `return_price` float NOT NULL,
  `part_no` varchar(200) NOT NULL,
  `project_id` varchar(100) NOT NULL,
  `warehouse_id` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `inv_serviceinvoice`
--

CREATE TABLE `inv_serviceinvoice` (
  `id` int(11) NOT NULL,
  `invoice_no` varchar(100) NOT NULL,
  `job_card_no` varchar(100) NOT NULL,
  `service_name` varchar(2000) NOT NULL,
  `amount` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `inv_supplier`
--

CREATE TABLE `inv_supplier` (
  `id` int(11) NOT NULL,
  `supplier_id` varchar(20) CHARACTER SET utf8 NOT NULL,
  `supplier_company` varchar(120) CHARACTER SET utf8 NOT NULL,
  `supplier_address` varchar(150) CHARACTER SET utf8 NOT NULL,
  `supplier_city` varchar(50) CHARACTER SET utf8 NOT NULL,
  `supplier_country` varchar(50) CHARACTER SET utf8 NOT NULL,
  `contact_person` varchar(75) CHARACTER SET utf8 NOT NULL,
  `sposition` varchar(75) CHARACTER SET utf8 NOT NULL,
  `supplier_phone` varchar(18) CHARACTER SET utf8 NOT NULL,
  `supplier_op_balance` float NOT NULL,
  `supplier_type` varchar(100) NOT NULL,
  `material_type` varchar(100) NOT NULL,
  `cc` varchar(20) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `inv_supplier`
--

INSERT INTO `inv_supplier` (`id`, `supplier_id`, `supplier_company`, `supplier_address`, `supplier_city`, `supplier_country`, `contact_person`, `sposition`, `supplier_phone`, `supplier_op_balance`, `supplier_type`, `material_type`, `cc`) VALUES
(1, 'SID-001', 'Bangla Track', '954 Lexington Ave', '---', '---', 'Abir Ahmed', '---', '3152364585', 0, '', '', 'IT'),
(2, 'SID-002', 'GSP', '7/20[1st Floor],Block-B,lalmatia', '', '', 'Atiqur Rahman Bhuiyan', '', '01515672889', 5000, 'cash', '9', ''),
(3, 'SID-003', 'AMP', 'banani', '', '', 'asad', '', '01787686742', 0, 'cash', '12', '');

-- --------------------------------------------------------

--
-- Table structure for table `inv_supplierbalance`
--

CREATE TABLE `inv_supplierbalance` (
  `id` int(11) NOT NULL,
  `sb_ref_id` varchar(15) CHARACTER SET utf8 NOT NULL,
  `warehouse_id` varchar(100) NOT NULL,
  `sb_date` date NOT NULL,
  `sb_supplier_id` varchar(15) CHARACTER SET utf8 NOT NULL,
  `sb_dr_amount` float NOT NULL,
  `sb_cr_amount` float NOT NULL,
  `sb_remark` varchar(175) CHARACTER SET utf8 NOT NULL,
  `sb_partac_id` varchar(25) CHARACTER SET utf8 NOT NULL,
  `approval_status` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `inv_supplierbalance`
--

INSERT INTO `inv_supplierbalance` (`id`, `sb_ref_id`, `warehouse_id`, `sb_date`, `sb_supplier_id`, `sb_dr_amount`, `sb_cr_amount`, `sb_remark`, `sb_partac_id`, `approval_status`) VALUES
(1571, 'MRR-CW004', '10', '2022-02-06', 'SID-001', 0, 5000, 'valo', 'MRR-CW004', 0),
(1572, 'VID-001', '', '2022-02-06', 'SID-001', 15000, 0, 'paid', 'VID-001', 0);

-- --------------------------------------------------------

--
-- Table structure for table `inv_technicianinfo`
--

CREATE TABLE `inv_technicianinfo` (
  `id` int(11) NOT NULL,
  `name` varchar(500) NOT NULL,
  `department` varchar(100) NOT NULL,
  `dob` varchar(100) NOT NULL,
  `gender` varchar(100) NOT NULL,
  `address` varchar(5000) NOT NULL,
  `district` varchar(100) NOT NULL,
  `postcode` varchar(100) NOT NULL,
  `telephone` varchar(100) NOT NULL,
  `mobile` varchar(100) NOT NULL,
  `emg_contact` varchar(100) NOT NULL,
  `emg_rel` varchar(100) NOT NULL,
  `emg_tel` varchar(100) NOT NULL,
  `emg_mob` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `inv_technicianinfo`
--

INSERT INTO `inv_technicianinfo` (`id`, `name`, `department`, `dob`, `gender`, `address`, `district`, `postcode`, `telephone`, `mobile`, `emg_contact`, `emg_rel`, `emg_tel`, `emg_mob`) VALUES
(2, 'Atiqur Rahman Bhuiyan', 'Engine', '2002', '0', '7/20[1st Floor],Block-B,lalmatia', 'Dhaka', '1207', '01729714503', '01515672889', 'Mazanur Rahman', 'Brother', '01932570096', '');

-- --------------------------------------------------------

--
-- Table structure for table `inv_tranferdetail`
--

CREATE TABLE `inv_tranferdetail` (
  `id` int(11) NOT NULL,
  `transfer_id` varchar(100) NOT NULL,
  `material_id` varchar(100) NOT NULL,
  `material_name` varchar(100) NOT NULL,
  `transfer_qty` varchar(100) NOT NULL,
  `unit` varchar(100) NOT NULL,
  `type` varchar(100) NOT NULL,
  `inwarehouse` varchar(100) NOT NULL,
  `outwarehouse` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `inv_transfermaster`
--

CREATE TABLE `inv_transfermaster` (
  `id` int(11) NOT NULL,
  `transfer_id` varchar(100) NOT NULL,
  `transfer_date` varchar(100) NOT NULL,
  `from_warehouse` varchar(100) NOT NULL,
  `to_warehouse` varchar(100) NOT NULL,
  `remarks` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `inv_voucher`
--

CREATE TABLE `inv_voucher` (
  `id` int(11) NOT NULL,
  `voucher_id` varchar(100) NOT NULL,
  `voucher_date` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `inv_voucherdetails`
--

CREATE TABLE `inv_voucherdetails` (
  `id` int(11) NOT NULL,
  `voucher_id` varchar(100) NOT NULL,
  `voucher_cat` varchar(100) NOT NULL,
  `voucher_type` varchar(100) NOT NULL,
  `voucher_details` varchar(5000) NOT NULL,
  `amount` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `inv_voucher_cat`
--

CREATE TABLE `inv_voucher_cat` (
  `id` int(11) NOT NULL,
  `voucher_id` varchar(100) NOT NULL,
  `voucher_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `inv_voucher_cat`
--

INSERT INTO `inv_voucher_cat` (`id`, `voucher_id`, `voucher_name`) VALUES
(2, 'VC-001', 'Snacks'),
(3, 'VC-002', 'Transport Allowance');

-- --------------------------------------------------------

--
-- Table structure for table `inv_warehosueinfo`
--

CREATE TABLE `inv_warehosueinfo` (
  `id` int(11) NOT NULL,
  `warehouse_id` varchar(100) NOT NULL,
  `name` varchar(75) CHARACTER SET utf8 NOT NULL,
  `short_name` varchar(100) NOT NULL,
  `project_id` varchar(100) NOT NULL,
  `address` varchar(1000) NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `inv_warehosueinfo`
--

INSERT INTO `inv_warehosueinfo` (`id`, `warehouse_id`, `name`, `short_name`, `project_id`, `address`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(10, 'WH-001', 'CENTRAL WAREHOUSE', 'CW', '2', '', NULL, 0, '2020-09-09 05:04:48', NULL, NULL),
(17, 'WH-002', 'MOHALHALIA', '', '2', 'MOH', NULL, 0, '2022-01-09 09:04:18', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `id` int(11) NOT NULL,
  `name` varchar(400) DEFAULT NULL,
  `code` varchar(4) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`id`, `name`, `code`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(19, 'Raw Materials', '01', 1, NULL, 2019, '2019-03-29 05:59:40', NULL),
(20, 'Equipment', '02', 1, NULL, 2019, '2019-03-29 05:59:59', NULL),
(21, 'Port Device', '03', 1, NULL, 2019, '2019-04-01 03:26:49', NULL),
(22, 'Wheel', '04', 1, NULL, 2019, '2019-05-08 02:47:36', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `item_details`
--

CREATE TABLE `item_details` (
  `id` int(11) NOT NULL,
  `parent_item_id` int(11) NOT NULL,
  `sub_item_id` int(11) NOT NULL,
  `name` varchar(500) NOT NULL,
  `item_code` varchar(400) NOT NULL,
  `description` text NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `item_details`
--

INSERT INTO `item_details` (`id`, `parent_item_id`, `sub_item_id`, `name`, `item_code`, `description`, `user_id`) VALUES
(1, 1, 3, 'Asus Core i 7', 'M0021', 'Test', 1),
(2, 1, 2, 'HP 4k', 'M0022', 'HP 4k details', 1),
(3, 1, 1, 'Lenovo core i 5', 'M0031', 'Details', 1);

-- --------------------------------------------------------

--
-- Table structure for table `materialbalance`
--

CREATE TABLE `materialbalance` (
  `id` int(11) NOT NULL,
  `mb_ref_id` varchar(25) CHARACTER SET utf8 NOT NULL,
  `mb_materialid` varchar(25) CHARACTER SET utf8 NOT NULL,
  `mb_date` date NOT NULL,
  `mbin_qty` float NOT NULL,
  `mbin_val` float NOT NULL,
  `mbout_qty` float NOT NULL,
  `mbout_val` float NOT NULL,
  `mbprice` float NOT NULL,
  `mbtype` varchar(30) CHARACTER SET utf8 NOT NULL,
  `mbserial` float NOT NULL,
  `mbserial_id` varchar(10) CHARACTER SET utf8 NOT NULL,
  `mbunit_id` varchar(15) CHARACTER SET utf8 NOT NULL,
  `jvno` varchar(25) CHARACTER SET utf8 NOT NULL,
  `part_no` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `type` enum('backend','frontend') COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `items` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` int(10) UNSIGNED NOT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `type`, `name`, `items`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'backend', 'Backend Sidebar Menu', '[{\"view_permission_id\":\"view-access-management\",\"icon\":\"fa-users\",\"open_in_new_tab\":0,\"url_type\":\"route\",\"url\":\"\",\"name\":\"Access Management\",\"id\":11,\"content\":\"Access Management\",\"children\":[{\"view_permission_id\":\"view-user-management\",\"open_in_new_tab\":0,\"url_type\":\"route\",\"url\":\"admin.access.user.index\",\"name\":\"User Management\",\"id\":12,\"content\":\"User Management\"},{\"view_permission_id\":\"view-role-management\",\"open_in_new_tab\":0,\"url_type\":\"route\",\"url\":\"admin.access.role.index\",\"name\":\"Role Management\",\"id\":13,\"content\":\"Role Management\"},{\"view_permission_id\":\"view-permission-management\",\"open_in_new_tab\":0,\"url_type\":\"route\",\"url\":\"admin.access.permission.index\",\"name\":\"Permission Management\",\"id\":14,\"content\":\"Permission Management\"}]},{\"view_permission_id\":\"view-module\",\"icon\":\"fa-wrench\",\"open_in_new_tab\":0,\"url_type\":\"route\",\"url\":\"admin.modules.index\",\"name\":\"Module\",\"id\":1,\"content\":\"Module\"},{\"view_permission_id\":\"view-menu\",\"icon\":\"fa-bars\",\"open_in_new_tab\":0,\"url_type\":\"route\",\"url\":\"admin.menus.index\",\"name\":\"Menus\",\"id\":3,\"content\":\"Menus\"},{\"view_permission_id\":\"edit-settings\",\"icon\":\"fa-gear\",\"open_in_new_tab\":0,\"url_type\":\"route\",\"url\":\"admin.settings.edit?id=1\",\"name\":\"Settings\",\"id\":9,\"content\":\"Settings\"},{\"view_permission_id\":\"view-projects\",\"icon\":\"fa fa-tasks\",\"open_in_new_tab\":0,\"url_type\":\"route\",\"url\":\"admin.projects.index\",\"name\":\"Projects\",\"id\":17,\"content\":\"Projects\"},{\"id\":18,\"name\":\"Items\",\"url\":\"admin.items.index\",\"url_type\":\"route\",\"open_in_new_tab\":0,\"icon\":\"fa fa-get-pocket\",\"view_permission_id\":\"view-items\",\"content\":\"Items\"},{\"view_permission_id\":\"view-suppliers\",\"icon\":\"fa fa-user-circle\",\"open_in_new_tab\":0,\"url_type\":\"route\",\"url\":\"admin.suppliers.index\",\"name\":\"Suppliers\",\"id\":22,\"content\":\"Suppliers\"},{\"id\":30,\"name\":\"Product Requisition\",\"url\":\"\",\"url_type\":\"static\",\"open_in_new_tab\":0,\"icon\":\"fa fa-coffee\",\"view_permission_id\":\"view-reports\",\"content\":\"Product Requisition\",\"children\":[{\"view_permission_id\":\"view-reports\",\"icon\":\"fa fa-truck\",\"open_in_new_tab\":0,\"url_type\":\"route\",\"url\":\"admin.product_requisition.index\",\"name\":\"Requisition Form\",\"id\":31,\"content\":\"Requisition Form\"}]},{\"id\":19,\"name\":\"Products Receive\",\"url\":\"admin.products.index\",\"url_type\":\"route\",\"open_in_new_tab\":0,\"icon\":\"fa fa-fighter-jet\",\"view_permission_id\":\"view-products\",\"content\":\"Products Receive\",\"children\":[{\"id\":20,\"name\":\"Receive Form\",\"url\":\"admin.product_receive.create\",\"url_type\":\"route\",\"open_in_new_tab\":0,\"icon\":\"fa fa-cube\",\"view_permission_id\":\"create-product-receive\",\"content\":\"Receive Form\"},{\"view_permission_id\":\"view-reports\",\"icon\":\"fa fa-truck\",\"open_in_new_tab\":0,\"url_type\":\"route\",\"url\":\"admin.product_receive.product_receive_list\",\"name\":\"Receive List\",\"id\":23,\"content\":\"Receive List\"}]},{\"view_permission_id\":\"issue-management\",\"icon\":\"fa fa-suitcase\",\"open_in_new_tab\":0,\"url_type\":\"static\",\"url\":\"\",\"name\":\"Product Issue\",\"id\":25,\"content\":\"Product Issue\",\"children\":[{\"view_permission_id\":\"issue-management\",\"icon\":\"fa fa-truck\",\"open_in_new_tab\":0,\"url_type\":\"route\",\"url\":\"admin.product_challan.create\",\"name\":\"Issue Form\",\"id\":21,\"content\":\"Issue Form\"},{\"view_permission_id\":\"issue-management\",\"icon\":\"fa fa-truck\",\"open_in_new_tab\":0,\"url_type\":\"route\",\"url\":\"admin.product_challan.product_issue_list\",\"name\":\"Issue List\",\"id\":26,\"content\":\"Issue List\"}]},{\"view_permission_id\":\"view-reports\",\"icon\":\"fa fa-truck\",\"open_in_new_tab\":0,\"url_type\":\"route\",\"url\":\"admin.product_return.index\",\"name\":\"Product Return\",\"id\":32,\"content\":\"Product Return\"},{\"view_permission_id\":\"view-reports\",\"icon\":\"fa fa-exchange\",\"open_in_new_tab\":0,\"url_type\":\"route\",\"url\":\"admin.product_movement.index\",\"name\":\"P2P Transfer\",\"id\":33,\"content\":\"P2P Transfer\"},{\"id\":15,\"name\":\"Plant Equipment\",\"url\":\"admin.plantEquipment.index\",\"url_type\":\"route\",\"open_in_new_tab\":0,\"icon\":\"fa fa-trello\",\"view_permission_id\":\"view-plant-equipment\",\"content\":\"Plant Equipment\"},{\"view_permission_id\":\"view-reports\",\"icon\":\"fa fa-bar-chart\",\"open_in_new_tab\":0,\"url_type\":\"static\",\"url\":\"\",\"name\":\"Reports\",\"id\":16,\"content\":\"Reports\",\"children\":[{\"id\":29,\"name\":\"Plant Equipment\",\"url\":\"admin.reports.get_plant_equipment_reports\",\"url_type\":\"route\",\"open_in_new_tab\":0,\"icon\":\"fa fa-truck\",\"view_permission_id\":\"view-reports\",\"content\":\"Plant Equipment\"},{\"id\":27,\"name\":\"Products\",\"url\":\"admin.reports.index\",\"url_type\":\"route\",\"open_in_new_tab\":0,\"icon\":\"fa fa-bar-chart\",\"view_permission_id\":\"view-reports\",\"content\":\"Products\"},{\"id\":28,\"name\":\"Stock Management\",\"url\":\"admin.reports.stock-management\",\"url_type\":\"route\",\"open_in_new_tab\":0,\"icon\":\"fa fa-bar-chart\",\"view_permission_id\":\"view-reports\",\"content\":\"Stock Management\"}]}]', 1, NULL, '2019-01-14 00:17:14', '2019-06-21 19:10:15', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2017_11_02_060149_create_blog_categories_table', 1),
(2, '2017_11_02_060149_create_blog_map_categories_table', 1),
(3, '2017_11_02_060149_create_blog_map_tags_table', 1),
(4, '2017_11_02_060149_create_blog_tags_table', 1),
(5, '2017_11_02_060149_create_blogs_table', 1),
(6, '2017_11_02_060149_create_faqs_table', 1),
(7, '2017_11_02_060149_create_history_table', 1),
(8, '2017_11_02_060149_create_history_types_table', 1),
(9, '2017_11_02_060149_create_modules_table', 1),
(10, '2017_11_02_060149_create_notifications_table', 1),
(11, '2017_11_02_060149_create_pages_table', 1),
(12, '2017_11_02_060149_create_password_resets_table', 1),
(13, '2017_11_02_060149_create_permission_role_table', 1),
(14, '2017_11_02_060149_create_permission_user_table', 1),
(15, '2017_11_02_060149_create_permissions_table', 1),
(16, '2017_11_02_060149_create_role_user_table', 1),
(17, '2017_11_02_060149_create_roles_table', 1),
(18, '2017_11_02_060149_create_sessions_table', 1),
(19, '2017_11_02_060149_create_settings_table', 1),
(20, '2017_11_02_060149_create_social_logins_table', 1),
(21, '2017_11_02_060149_create_users_table', 1),
(22, '2017_11_02_060152_add_foreign_keys_to_history_table', 1),
(23, '2017_11_02_060152_add_foreign_keys_to_notifications_table', 1),
(24, '2017_11_02_060152_add_foreign_keys_to_permission_role_table', 1),
(25, '2017_11_02_060152_add_foreign_keys_to_permission_user_table', 1),
(26, '2017_11_02_060152_add_foreign_keys_to_role_user_table', 1),
(27, '2017_11_02_060152_add_foreign_keys_to_social_logins_table', 1),
(28, '2017_12_10_122555_create_menus_table', 1),
(29, '2017_12_24_042039_add_null_constraint_on_created_by_on_user_table', 2),
(30, '2017_12_28_005822_add_null_constraint_on_created_by_on_role_table', 2),
(31, '2017_12_28_010952_add_null_constraint_on_created_by_on_permission_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `modules`
--

CREATE TABLE `modules` (
  `id` int(10) UNSIGNED NOT NULL,
  `view_permission_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'view_route',
  `created_by` int(10) UNSIGNED NOT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `modules`
--

INSERT INTO `modules` (`id`, `view_permission_id`, `name`, `url`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'view-access-management', 'Access Management', NULL, 1, NULL, '2019-01-14 00:17:14', NULL),
(2, 'view-user-management', 'User Management', 'admin.access.user.index', 1, NULL, '2019-01-14 00:17:14', NULL),
(3, 'view-role-management', 'Role Management', 'admin.access.role.index', 1, NULL, '2019-01-14 00:17:14', NULL),
(4, 'view-permission-management', 'Permission Management', 'admin.access.permission.index', 1, NULL, '2019-01-14 00:17:14', NULL),
(5, 'view-menu', 'Menus', 'admin.menus.index', 1, NULL, '2019-01-14 00:17:14', NULL),
(6, 'view-module', 'Module', 'admin.modules.index', 1, NULL, '2019-01-14 00:17:14', NULL),
(7, 'view-page', 'Pages', 'admin.pages.index', 1, NULL, '2019-01-14 00:17:14', NULL),
(8, 'edit-settings', 'Settings', 'admin.settings.edit', 1, NULL, '2019-01-14 00:17:14', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` int(10) UNSIGNED NOT NULL,
  `message` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `type` tinyint(1) NOT NULL DEFAULT 1 COMMENT '1 - Dashboard , 2 - Email , 3 - Both',
  `is_read` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `message`, `user_id`, `type`, `is_read`, `created_at`, `updated_at`) VALUES
(1, 'User Logged In: Viral', 1, 1, 1, '2019-01-14 21:50:38', '2019-01-21 04:49:53'),
(2, 'User Logged In: Viral', 1, 1, 1, '2019-01-14 21:53:34', '2019-01-21 04:49:51'),
(3, 'User Logged In: Viral', 1, 1, 1, '2019-01-14 22:05:32', '2019-01-21 04:49:51'),
(4, 'User Logged In: Viral', 1, 1, 1, '2019-01-14 23:28:46', '2019-01-21 04:49:51'),
(5, 'User Logged In: Viral', 1, 1, 1, '2019-01-14 23:28:54', '2019-01-21 04:49:51'),
(6, 'User Logged In: Viral', 1, 1, 1, '2019-01-15 00:03:57', '2019-01-21 04:49:51'),
(7, 'User Logged In: Viral', 1, 1, 1, '2019-01-15 00:24:51', '2019-01-21 04:49:47'),
(8, 'User Logged In: Viral', 1, 1, 1, '2019-01-15 00:30:11', '2019-01-21 04:49:47'),
(9, 'User Logged In: Viral', 1, 1, 1, '2019-01-15 02:01:53', '2019-01-21 04:49:47'),
(10, 'User Logged In: Viral', 1, 1, 1, '2019-01-15 02:28:19', '2019-01-21 04:49:47'),
(11, 'User Logged In: Viral', 1, 1, 1, '2019-01-15 02:57:31', '2019-01-21 04:49:47'),
(12, 'User Logged In: Viral', 1, 1, 1, '2019-01-15 04:34:56', '2019-01-21 04:49:41'),
(13, 'User Logged In: Viral', 1, 1, 1, '2019-01-16 19:26:27', '2019-01-21 04:49:41'),
(14, 'User Logged In: Viral', 1, 1, 1, '2019-01-16 19:49:14', '2019-01-21 04:49:41'),
(15, 'User Logged In: Viral', 1, 1, 1, '2019-01-18 22:35:26', '2019-01-21 04:49:41'),
(16, 'User Logged In: Viral', 1, 1, 1, '2019-01-20 20:34:52', '2019-01-21 04:49:41'),
(17, 'User Logged In: Admin', 1, 1, 1, '2019-01-20 20:54:14', '2019-01-21 04:49:29'),
(18, 'User Logged In: Admin', 1, 1, 1, '2019-01-20 22:42:13', '2019-01-21 04:49:29'),
(19, 'User Logged In: Admin', 1, 1, 1, '2019-01-20 22:54:34', '2019-01-21 04:49:29'),
(20, 'User Logged In: Admin', 1, 1, 1, '2019-01-21 00:08:42', '2019-01-21 04:49:29'),
(21, 'User Logged In: Admin', 1, 1, 1, '2019-01-21 00:21:36', '2019-01-21 04:49:29'),
(22, 'User Logged In: Admin', 1, 1, 1, '2019-01-21 03:11:22', '2019-01-21 04:49:56'),
(23, 'User Logged In: Admin', 1, 1, 1, '2019-01-21 04:01:33', '2019-01-21 04:49:56'),
(24, 'User Logged In: Admin', 1, 1, 1, '2019-01-21 04:12:42', '2019-01-21 04:49:56'),
(25, 'User Logged In: Admin', 1, 1, 1, '2019-01-21 04:31:13', '2019-01-21 04:49:56'),
(26, 'User Logged In: Admin', 1, 1, 1, '2019-01-21 04:44:46', '2019-01-21 04:49:56'),
(27, 'User Logged In: Admin', 1, 1, 1, '2019-01-21 19:55:00', '2019-01-31 20:50:54'),
(28, 'User Logged In: Admin', 1, 1, 1, '2019-01-21 20:42:42', '2019-01-31 20:50:54'),
(29, 'User Logged In: Admin', 1, 1, 1, '2019-01-21 21:02:34', '2019-01-31 20:50:54'),
(30, 'User Logged In: Admin', 1, 1, 1, '2019-01-21 21:48:50', '2019-01-31 20:50:54'),
(31, 'User Logged In: Admin', 1, 1, 1, '2019-01-22 00:05:46', '2019-01-31 20:50:52'),
(32, 'User Logged In: Admin', 1, 1, 1, '2019-01-22 01:29:09', '2019-01-31 20:50:52'),
(33, 'User Logged In: Admin', 1, 1, 1, '2019-01-22 01:56:33', '2019-01-31 20:50:52'),
(34, 'User Logged In: Admin', 1, 1, 1, '2019-01-22 03:15:00', '2019-01-31 20:50:52'),
(35, 'User Logged In: Admin', 1, 1, 1, '2019-01-22 03:40:39', '2019-01-31 20:50:52'),
(36, 'User Logged In: Admin', 1, 1, 1, '2019-01-22 20:15:31', '2019-01-31 20:50:50'),
(37, 'User Logged In: Admin', 1, 1, 1, '2019-01-22 20:56:35', '2019-01-31 20:50:50'),
(38, 'User Logged In: Admin', 1, 1, 1, '2019-01-22 21:21:32', '2019-01-31 20:50:50'),
(39, 'User Logged In: Admin', 1, 1, 1, '2019-01-22 21:51:10', '2019-01-31 20:50:50'),
(40, 'User Logged In: Admin', 1, 1, 1, '2019-01-31 20:50:13', '2019-01-31 20:50:54'),
(41, 'User Logged In: Admin', 1, 1, 0, '2019-02-02 20:06:56', NULL),
(42, 'User Logged In: Admin', 1, 1, 0, '2019-02-02 20:27:37', NULL),
(43, 'User Logged In: Admin', 1, 1, 0, '2019-02-02 20:41:48', NULL),
(44, 'User Logged In: Admin', 1, 1, 0, '2019-02-02 21:51:42', NULL),
(45, 'User Logged In: Admin', 1, 1, 1, '2019-02-02 22:26:55', '2019-02-08 20:33:04'),
(46, 'User Logged In: Admin', 1, 1, 1, '2019-02-02 22:31:30', '2019-02-08 20:33:04'),
(47, 'User Logged In: Admin', 1, 1, 1, '2019-02-02 22:56:12', '2019-02-08 20:33:04'),
(48, 'User Logged In: Admin', 1, 1, 1, '2019-02-02 23:32:44', '2019-02-08 20:33:04'),
(49, 'User Logged In: Admin', 1, 1, 1, '2019-02-02 23:43:13', '2019-02-08 20:33:04'),
(50, 'User Logged In: Admin', 1, 1, 1, '2019-02-03 00:03:36', '2019-02-08 20:33:01'),
(51, 'User Logged In: Admin', 1, 1, 1, '2019-02-03 02:13:37', '2019-02-08 20:33:01'),
(52, 'User Logged In: Rashed', 1, 1, 1, '2019-02-03 02:19:32', '2019-02-08 20:33:01'),
(53, 'User Logged In: Admin', 1, 1, 1, '2019-02-03 02:20:42', '2019-02-04 02:14:34'),
(54, 'User Logged In: Rashed', 1, 1, 1, '2019-02-03 02:21:20', '2019-02-04 02:14:34'),
(55, 'User Logged In: Admin', 1, 1, 1, '2019-02-03 02:37:59', '2019-02-04 02:14:34'),
(56, 'User Logged In: Admin', 1, 1, 1, '2019-02-04 01:28:16', '2019-02-04 02:14:34'),
(57, 'User Logged In: Admin', 1, 1, 1, '2019-02-04 02:14:19', '2019-02-04 02:14:34'),
(58, 'User Logged In: Admin', 1, 1, 1, '2019-02-04 02:27:24', '2019-02-08 20:33:01'),
(59, 'User Logged In: Admin', 1, 1, 1, '2019-02-08 20:09:56', '2019-02-08 20:33:01'),
(60, 'User Logged In: Admin', 1, 1, 0, '2019-02-08 21:15:22', NULL),
(61, 'User Logged In: Rashed', 1, 1, 0, '2019-02-08 21:26:39', NULL),
(62, 'User Logged In: Admin', 1, 1, 0, '2019-02-08 21:29:08', NULL),
(63, 'User Logged In: Admin', 1, 1, 0, '2019-02-08 22:14:20', NULL),
(64, 'User Logged In: Admin', 1, 1, 0, '2019-02-08 23:15:05', NULL),
(65, 'User Logged In: Admin', 1, 1, 0, '2019-02-08 23:34:48', NULL),
(66, 'User Logged In: Admin', 1, 1, 1, '2019-02-08 23:49:15', '2019-02-09 04:05:06'),
(67, 'User Logged In: Admin', 1, 1, 1, '2019-02-09 00:10:08', '2019-02-09 04:05:06'),
(68, 'User Logged In: Admin', 1, 1, 1, '2019-02-09 00:32:07', '2019-02-09 04:05:06'),
(69, 'User Logged In: Admin', 1, 1, 1, '2019-02-09 01:31:57', '2019-02-09 04:05:06'),
(70, 'User Logged In: Admin', 1, 1, 1, '2019-02-09 01:44:02', '2019-02-09 04:05:06'),
(71, 'User Logged In: Admin', 1, 1, 1, '2019-02-09 02:05:42', '2019-02-09 04:04:52'),
(72, 'User Logged In: Admin', 1, 1, 1, '2019-02-09 02:29:10', '2019-02-09 04:04:52'),
(73, 'User Logged In: Admin', 1, 1, 1, '2019-02-09 02:43:15', '2019-02-09 04:04:52'),
(74, 'User Logged In: Admin', 1, 1, 1, '2019-02-09 03:22:52', '2019-02-09 04:04:52'),
(75, 'User Logged In: Admin', 1, 1, 1, '2019-02-09 03:52:17', '2019-02-09 04:04:52'),
(76, 'User Logged In: Admin', 1, 1, 0, '2019-02-09 04:37:31', NULL),
(77, 'User Logged In: Admin', 1, 1, 0, '2019-02-09 04:50:24', NULL),
(78, 'User Logged In: Admin', 1, 1, 0, '2019-02-09 07:54:02', NULL),
(79, 'User Logged In: Admin', 1, 1, 0, '2019-02-09 08:25:38', NULL),
(80, 'User Logged In: Admin', 1, 1, 0, '2019-02-09 08:57:31', NULL),
(81, 'User Logged In: Admin', 1, 1, 0, '2019-02-09 09:27:53', NULL),
(82, 'User Logged In: Admin', 1, 1, 0, '2019-02-09 13:58:58', NULL),
(83, 'User Logged In: Admin', 1, 1, 0, '2019-02-09 13:59:05', NULL),
(84, 'User Logged In: Admin', 1, 1, 0, '2019-02-09 14:28:03', NULL),
(85, 'User Logged In: Admin', 1, 1, 0, '2019-02-09 15:17:01', NULL),
(86, 'User Logged In: Admin', 1, 1, 0, '2019-02-09 15:55:44', NULL),
(87, 'User Logged In: Admin', 1, 1, 0, '2019-02-09 16:33:59', NULL),
(88, 'User Logged In: Admin', 1, 1, 0, '2019-02-09 16:54:21', NULL),
(89, 'User Logged In: Admin', 1, 1, 0, '2019-02-09 17:11:04', NULL),
(90, 'User Logged In: Admin', 1, 1, 0, '2019-02-09 17:19:54', NULL),
(91, 'User Logged In: Admin', 1, 1, 0, '2019-02-09 17:23:07', NULL),
(92, 'User Logged In: Admin', 1, 1, 0, '2019-02-09 17:23:29', NULL),
(93, 'User Logged In: Admin', 1, 1, 0, '2019-02-09 20:37:49', NULL),
(94, 'User Logged In: Admin', 1, 1, 0, '2019-02-09 20:38:01', NULL),
(95, 'User Logged In: Admin', 1, 1, 0, '2019-02-09 21:06:30', NULL),
(96, 'User Logged In: Admin', 1, 1, 0, '2019-02-10 23:35:53', NULL),
(97, 'User Logged In: Admin', 1, 1, 0, '2019-02-10 23:36:29', NULL),
(98, 'User Logged In: Rashed', 1, 1, 0, '2019-02-10 23:40:08', NULL),
(99, 'User Logged In: Admin', 1, 1, 0, '2019-02-10 23:40:35', NULL),
(100, 'User Logged In: Rashed', 1, 1, 0, '2019-02-10 23:42:29', NULL),
(101, 'User Logged In: Rashed', 1, 1, 0, '2019-02-22 02:19:36', NULL),
(102, 'User Logged In: Admin', 1, 1, 0, '2019-02-22 02:29:38', NULL),
(103, 'User Logged In: Admin', 1, 1, 0, '2019-02-22 02:54:49', NULL),
(104, 'User Logged In: Admin', 1, 1, 0, '2019-02-22 10:47:39', NULL),
(105, 'User Logged In: Admin', 1, 1, 0, '2019-02-22 11:08:30', NULL),
(106, 'User Logged In: Admin', 1, 1, 0, '2019-02-22 12:08:39', NULL),
(107, 'User Logged In: Admin', 1, 1, 0, '2019-02-22 13:50:52', NULL),
(108, 'User Logged In: Admin', 1, 1, 0, '2019-02-22 14:17:13', NULL),
(109, 'User Logged In: Admin', 1, 1, 0, '2019-02-22 14:31:27', NULL),
(110, 'User Logged In: Admin', 1, 1, 0, '2019-02-22 22:54:42', NULL),
(111, 'User Logged In: Admin', 1, 1, 0, '2019-02-22 23:21:20', NULL),
(112, 'User Logged In: Admin', 1, 1, 0, '2019-02-23 22:02:34', NULL),
(113, 'User Logged In: Admin', 1, 1, 0, '2019-02-23 22:10:57', NULL),
(114, 'User Logged In: Admin', 1, 1, 0, '2019-02-23 22:16:09', NULL),
(115, 'User Logged In: Admin', 1, 1, 0, '2019-02-23 22:19:27', NULL),
(116, 'User Logged In: Admin', 1, 1, 0, '2019-02-23 22:19:42', NULL),
(117, 'User Logged In: Admin', 1, 1, 0, '2019-02-23 22:22:52', NULL),
(118, 'User Logged In: Admin', 1, 1, 0, '2019-02-23 23:17:26', NULL),
(119, 'User Logged In: Admin', 1, 1, 0, '2019-02-23 23:44:58', NULL),
(120, 'User Logged In: Admin', 1, 1, 0, '2019-02-24 00:16:34', NULL),
(121, 'User Logged In: Admin', 1, 1, 0, '2019-02-24 00:36:08', NULL),
(122, 'User Logged In: Admin', 1, 1, 0, '2019-02-24 01:38:19', NULL),
(123, 'User Logged In: Admin', 1, 1, 0, '2019-02-24 02:18:22', NULL),
(124, 'User Logged In: Admin', 1, 1, 0, '2019-02-24 03:51:32', NULL),
(125, 'User Logged In: Admin', 1, 1, 0, '2019-02-24 04:33:07', NULL),
(126, 'User Logged In: Admin', 1, 1, 0, '2019-02-24 07:59:45', NULL),
(127, 'User Logged In: Admin', 1, 1, 0, '2019-02-24 08:14:57', NULL),
(128, 'User Logged In: Admin', 1, 1, 0, '2019-02-24 18:45:32', NULL),
(129, 'User Logged In: Admin', 1, 1, 0, '2019-02-24 21:38:58', NULL),
(130, 'User Logged In: Admin', 1, 1, 0, '2019-02-24 22:13:14', NULL),
(131, 'User Logged In: Admin', 1, 1, 0, '2019-02-24 22:36:39', NULL),
(132, 'User Logged In: Admin', 1, 1, 0, '2019-02-24 23:03:46', NULL),
(133, 'User Logged In: Admin', 1, 1, 0, '2019-02-24 23:27:30', NULL),
(134, 'User Logged In: Admin', 1, 1, 0, '2019-02-24 23:50:56', NULL),
(135, 'User Logged In: Admin', 1, 1, 0, '2019-02-25 01:53:22', NULL),
(136, 'User Logged In: Admin', 1, 1, 0, '2019-02-25 03:28:29', NULL),
(137, 'User Logged In: Admin', 1, 1, 0, '2019-02-25 04:19:55', NULL),
(138, 'User Logged In: Admin', 1, 1, 0, '2019-02-25 04:35:35', NULL),
(139, 'User Logged In: Admin', 1, 1, 0, '2019-02-26 00:11:21', NULL),
(140, 'User Logged In: Admin', 1, 1, 0, '2019-02-26 01:54:46', NULL),
(141, 'User Logged In: Admin', 1, 1, 0, '2019-02-26 01:54:51', NULL),
(142, 'User Logged In: Admin', 1, 1, 0, '2019-03-03 07:55:08', NULL),
(143, 'User Logged In: Admin', 1, 1, 0, '2019-03-03 08:26:35', NULL),
(144, 'User Logged In: Admin', 1, 1, 0, '2019-03-03 11:37:06', NULL),
(145, 'User Logged In: Admin', 1, 1, 0, '2019-03-06 03:34:28', NULL),
(146, 'User Logged In: Admin', 1, 1, 0, '2019-03-08 07:36:57', NULL),
(147, 'User Logged In: Admin', 1, 1, 0, '2019-03-11 01:46:32', NULL),
(148, 'User Logged In: Admin', 1, 1, 0, '2019-03-17 06:07:40', NULL),
(149, 'User Logged In: Admin', 1, 1, 0, '2019-03-17 06:55:31', NULL),
(150, 'User Logged In: Admin', 1, 1, 0, '2019-03-18 01:34:29', NULL),
(151, 'User Logged In: Admin', 1, 1, 0, '2019-03-18 07:44:58', NULL),
(152, 'User Logged In: Admin', 1, 1, 0, '2019-03-19 00:48:25', NULL),
(153, 'User Logged In: Admin', 1, 1, 0, '2019-03-20 02:19:52', NULL),
(154, 'User Logged In: Admin', 1, 1, 0, '2019-03-22 04:12:27', NULL),
(155, 'User Logged In: Admin', 1, 1, 0, '2019-03-24 02:23:42', NULL),
(156, 'User Logged In: Admin', 1, 1, 0, '2019-03-26 03:28:44', NULL),
(157, 'User Logged In: Admin', 1, 1, 0, '2019-03-27 00:36:15', NULL),
(158, 'User Logged In: Admin', 1, 1, 0, '2019-03-27 05:42:10', NULL),
(159, 'User Logged In: Admin', 1, 1, 0, '2019-03-29 02:47:27', NULL),
(160, 'User Logged In: Admin', 1, 1, 0, '2019-03-31 01:18:42', NULL),
(161, 'User Logged In: Admin', 1, 1, 0, '2019-03-31 07:14:19', NULL),
(162, 'User Logged In: Admin', 1, 1, 0, '2019-04-01 02:59:31', NULL),
(163, 'User Logged In: Admin', 1, 1, 0, '2019-04-01 07:16:40', NULL),
(164, 'User Logged In: Admin', 1, 1, 0, '2019-04-02 01:52:00', NULL),
(165, 'User Logged In: Admin', 1, 1, 0, '2019-04-02 07:28:03', NULL),
(166, 'User Logged In: Admin', 1, 1, 0, '2019-04-02 13:35:50', NULL),
(167, 'User Logged In: Admin', 1, 1, 0, '2019-04-03 01:48:55', NULL),
(168, 'User Logged In: Admin', 1, 1, 0, '2019-04-04 01:19:25', NULL),
(169, 'User Logged In: Admin', 1, 1, 0, '2019-04-04 03:32:12', NULL),
(170, 'User Logged In: Admin', 1, 1, 0, '2019-04-04 05:36:28', NULL),
(171, 'User Logged In: Admin', 1, 1, 0, '2019-04-05 02:16:13', NULL),
(172, 'User Logged In: Admin', 1, 1, 0, '2019-04-06 01:43:12', NULL),
(173, 'User Logged In: Admin', 1, 1, 0, '2019-04-07 00:46:00', NULL),
(174, 'User Logged In: Admin', 1, 1, 0, '2019-04-07 07:44:37', NULL),
(175, 'User Logged In: Admin', 1, 1, 0, '2019-04-07 08:07:09', NULL),
(176, 'User Logged In: Admin', 1, 1, 0, '2019-04-08 03:15:59', NULL),
(177, 'User Logged In: Admin', 1, 1, 0, '2019-04-08 06:09:51', NULL),
(178, 'User Logged In: Admin', 1, 1, 0, '2019-04-09 02:37:47', NULL),
(179, 'User Logged In: Admin', 1, 1, 0, '2019-04-09 08:54:52', NULL),
(180, 'User Logged In: Admin', 1, 1, 0, '2019-04-12 04:19:24', NULL),
(181, 'User Logged In: Admin', 1, 1, 0, '2019-04-15 01:44:52', NULL),
(182, 'User Logged In: Admin', 1, 1, 0, '2019-04-15 06:23:59', NULL),
(183, 'User Logged In: Admin', 1, 1, 0, '2019-04-15 09:12:55', NULL),
(184, 'User Logged In: Admin', 1, 1, 0, '2019-04-20 02:13:16', NULL),
(185, 'User Logged In: Admin', 1, 1, 0, '2019-04-22 07:53:48', NULL),
(186, 'User Logged In: Admin', 1, 1, 0, '2019-04-23 03:22:26', NULL),
(187, 'User Logged In: Admin', 1, 1, 0, '2019-04-23 09:24:06', NULL),
(188, 'User Logged In: Admin', 1, 1, 0, '2019-04-24 05:36:08', NULL),
(189, 'User Logged In: Admin', 1, 1, 0, '2019-04-24 09:30:54', NULL),
(190, 'User Logged In: Admin', 1, 1, 0, '2019-04-25 23:06:07', NULL),
(191, 'User Logged In: Admin', 1, 1, 0, '2019-04-26 04:28:53', NULL),
(192, 'User Logged In: Admin', 1, 1, 0, '2019-04-26 06:21:19', NULL),
(193, 'User Logged In: Admin', 1, 1, 0, '2019-04-27 01:49:04', NULL),
(194, 'User Logged In: Admin', 1, 1, 0, '2019-04-27 04:42:50', NULL),
(195, 'User Logged In: Admin', 1, 1, 0, '2019-04-27 06:05:11', NULL),
(196, 'User Logged In: Admin', 1, 1, 0, '2019-05-05 02:03:49', NULL),
(197, 'User Logged In: Admin', 1, 1, 0, '2019-05-05 06:45:29', NULL),
(198, 'User Logged In: Admin', 1, 1, 0, '2019-05-06 02:09:31', NULL),
(199, 'User Logged In: Admin', 1, 1, 0, '2019-05-06 06:26:46', NULL),
(200, 'User Logged In: Admin', 1, 1, 0, '2019-05-07 02:02:50', NULL),
(201, 'User Logged In: Admin', 1, 1, 0, '2019-05-08 02:18:28', NULL),
(202, 'User Logged In: Admin', 1, 1, 0, '2019-05-08 02:40:26', NULL),
(203, 'User Logged In: Admin', 1, 1, 0, '2019-05-08 05:42:40', NULL),
(204, 'User Logged In: Admin', 1, 1, 0, '2019-05-10 03:26:52', NULL),
(205, 'User Logged In: Admin', 1, 1, 0, '2019-05-10 13:14:56', NULL),
(206, 'User Logged In: Jalil', 1, 1, 0, '2019-05-10 13:25:56', NULL),
(207, 'User Logged In: Admin', 1, 1, 0, '2019-05-10 13:26:45', NULL),
(208, 'User Logged In: Jalil', 1, 1, 0, '2019-05-10 13:28:03', NULL),
(209, 'User Logged In: Admin', 1, 1, 0, '2019-05-11 09:07:24', NULL),
(210, 'User Logged In: Admin', 1, 1, 0, '2019-05-11 11:03:49', NULL),
(211, 'User Logged In: Admin', 1, 1, 0, '2019-05-11 11:07:19', NULL),
(212, 'User Logged In: Jalil', 1, 1, 0, '2019-05-11 11:09:09', NULL),
(213, 'User Logged In: Admin', 1, 1, 0, '2019-05-11 12:00:37', NULL),
(214, 'User Logged In: Jalil', 1, 1, 0, '2019-05-11 13:02:13', NULL),
(215, 'User Logged In: Jalil', 1, 1, 0, '2019-05-11 13:07:37', NULL),
(216, 'User Logged In: Admin', 1, 1, 0, '2019-05-11 13:27:23', NULL),
(217, 'User Logged In: Admin', 1, 1, 0, '2019-05-12 08:27:45', NULL),
(218, 'User Logged In: Admin', 1, 1, 0, '2019-05-12 10:26:34', NULL),
(219, 'User Logged In: Jalil', 1, 1, 0, '2019-05-12 10:37:23', NULL),
(220, 'User Logged In: Jalil', 1, 1, 0, '2019-05-12 10:53:37', NULL),
(221, 'User Logged In: Jalil', 1, 1, 0, '2019-05-13 07:07:51', NULL),
(222, 'User Logged In: Jalil', 1, 1, 0, '2019-05-13 07:28:43', NULL),
(223, 'User Logged In: Jalil', 1, 1, 0, '2019-05-13 07:52:21', NULL),
(224, 'User Logged In: Jalil', 1, 1, 0, '2019-05-13 11:16:28', NULL),
(225, 'User Logged In: Admin', 1, 1, 0, '2019-05-13 11:26:22', NULL),
(226, 'User Logged In: Admin', 1, 1, 0, '2019-05-13 11:56:05', NULL),
(227, 'User Logged In: Jalil', 1, 1, 0, '2019-05-13 11:58:41', NULL),
(228, 'User Logged In: Jalil', 1, 1, 0, '2019-05-13 12:00:19', NULL),
(229, 'User Logged In: Jalil', 1, 1, 0, '2019-05-13 12:03:02', NULL),
(230, 'User Logged In: Admin', 1, 1, 0, '2019-05-13 12:15:40', NULL),
(231, 'User Logged In: Jalil', 1, 1, 0, '2019-05-13 18:34:21', NULL),
(232, 'User Logged In: Admin', 1, 1, 0, '2019-05-13 18:35:13', NULL),
(233, 'User Logged In: Jalil', 1, 1, 0, '2019-05-13 18:38:54', NULL),
(234, 'User Logged In: Admin', 1, 1, 0, '2019-05-13 19:02:11', NULL),
(235, 'User Logged In: Jalil Khan', 1, 1, 0, '2019-05-13 19:30:54', NULL),
(236, 'User Logged In: Jalil Khan', 1, 1, 0, '2019-05-15 17:14:18', NULL),
(237, 'User Logged In: Admin', 1, 1, 0, '2019-05-18 15:03:06', NULL),
(238, 'User Logged In: Jalil Khan', 1, 1, 0, '2019-05-18 17:16:15', NULL),
(239, 'User Logged In: Jalil Khan', 1, 1, 0, '2019-05-18 17:35:11', NULL),
(240, 'User Logged In: Jalil Khan', 1, 1, 0, '2019-05-19 18:21:13', NULL),
(241, 'User Logged In: Jalil Khan', 1, 1, 0, '2019-05-20 13:44:28', NULL),
(242, 'User Logged In: Jalil Khan', 1, 1, 0, '2019-05-20 14:57:04', NULL),
(243, 'User Logged In: Jalil Khan', 1, 1, 0, '2019-05-20 15:40:30', NULL),
(244, 'User Logged In: Jalil Khan', 1, 1, 0, '2019-05-20 16:40:16', NULL),
(245, 'User Logged In: Jalil Khan', 1, 1, 0, '2019-05-20 17:24:39', NULL),
(246, 'User Logged In: Rashed', 1, 1, 0, '2019-05-20 17:34:38', NULL),
(247, 'User Logged In: Jalil Khan', 1, 1, 0, '2019-05-20 17:36:55', NULL),
(248, 'User Logged In: Jalil Khan', 1, 1, 0, '2019-05-20 17:41:51', NULL),
(249, 'User Logged In: Jalil Khan', 1, 1, 0, '2019-05-20 17:46:49', NULL),
(250, 'User Logged In: Jalil Khan', 1, 1, 0, '2019-05-20 17:48:57', NULL),
(251, 'User Logged In: Jalil Khan', 1, 1, 0, '2019-05-20 18:40:30', NULL),
(252, 'User Logged In: Jalil Khan', 1, 1, 0, '2019-05-21 15:36:15', NULL),
(253, 'User Logged In: Admin', 1, 1, 0, '2019-05-21 18:16:05', NULL),
(254, 'User Logged In: Admin', 1, 1, 0, '2019-05-21 21:33:18', NULL),
(255, 'User Logged In: Admin', 1, 1, 0, '2019-05-22 14:43:51', NULL),
(256, 'User Logged In: Admin', 1, 1, 0, '2019-05-22 15:05:30', NULL),
(257, 'User Logged In: Admin', 1, 1, 0, '2019-05-22 15:16:03', NULL),
(258, 'User Logged In: Admin', 1, 1, 0, '2019-05-24 14:38:16', NULL),
(259, 'User Logged In: Admin', 1, 1, 0, '2019-05-24 15:09:51', NULL),
(260, 'User Logged In: Admin', 1, 1, 0, '2019-05-24 16:29:24', NULL),
(261, 'User Logged In: Admin', 1, 1, 0, '2019-05-24 17:20:12', NULL),
(262, 'User Logged In: Jalil Khan', 1, 1, 0, '2019-05-24 17:31:30', NULL),
(263, 'User Logged In: Admin', 1, 1, 0, '2019-05-25 14:21:19', NULL),
(264, 'User Logged In: Admin', 1, 1, 0, '2019-05-25 15:05:41', NULL),
(265, 'User Logged In: Jalil Khan', 1, 1, 0, '2019-05-25 16:33:43', NULL),
(266, 'User Logged In: Jalil Khan', 1, 1, 0, '2019-05-26 16:57:36', NULL),
(267, 'User Logged In: Admin', 1, 1, 0, '2019-05-27 15:57:41', NULL),
(268, 'User Logged In: Jalil Khan', 1, 1, 0, '2019-05-27 18:15:56', NULL),
(269, 'User Logged In: Jalil Khan', 1, 1, 0, '2019-05-27 19:16:30', NULL),
(270, 'User Logged In: Jalil Khan', 1, 1, 0, '2019-05-28 14:13:04', NULL),
(271, 'User Logged In: Jalil Khan', 1, 1, 0, '2019-05-29 15:53:11', NULL),
(272, 'User Logged In: Jalil Khan', 1, 1, 0, '2019-05-29 15:56:23', NULL),
(273, 'User Logged In: Jalil Khan', 1, 1, 0, '2019-05-29 15:57:56', NULL),
(274, 'User Logged In: Jalil Khan', 1, 1, 0, '2019-05-29 16:06:47', NULL),
(275, 'User Logged In: Jalil Khan', 1, 1, 0, '2019-05-29 16:34:44', NULL),
(276, 'User Logged In: Jalil Khan', 1, 1, 0, '2019-05-29 16:48:27', NULL),
(277, 'User Logged In: Admin', 1, 1, 0, '2019-05-29 16:54:40', NULL),
(278, 'User Logged In: Jalil Khan', 1, 1, 0, '2019-06-11 19:35:46', NULL),
(279, 'User Logged In: Jalil Khan', 1, 1, 0, '2019-06-14 15:38:04', NULL),
(280, 'User Logged In: Jalil Khan', 1, 1, 0, '2019-06-14 16:09:45', NULL),
(281, 'User Logged In: Admin', 1, 1, 0, '2019-06-15 20:40:57', NULL),
(282, 'User Logged In: Admin', 1, 1, 0, '2019-06-16 01:51:16', NULL),
(283, 'User Logged In: Admin', 1, 1, 0, '2019-06-16 04:32:25', NULL),
(284, 'User Logged In: Jalil Khan', 1, 1, 0, '2019-06-16 13:52:59', NULL),
(285, 'User Logged In: Admin', 1, 1, 0, '2019-06-16 14:07:50', NULL),
(286, 'User Logged In: Jalil Khan', 1, 1, 0, '2019-06-16 14:29:19', NULL),
(287, 'User Logged In: Jalil Khan', 1, 1, 0, '2019-06-16 16:57:48', NULL),
(288, 'User Logged In: Admin', 1, 1, 0, '2019-06-18 18:53:38', NULL),
(289, 'User Logged In: Admin', 1, 1, 0, '2019-06-18 19:14:06', NULL),
(290, 'User Logged In: Admin', 1, 1, 0, '2019-06-18 20:15:57', NULL),
(291, 'User Logged In: Admin', 1, 1, 0, '2019-06-18 20:21:33', NULL),
(292, 'User Logged In: Admin', 1, 1, 0, '2019-06-18 20:44:56', NULL),
(293, 'User Logged In: Admin', 1, 1, 0, '2019-06-19 17:31:20', NULL),
(294, 'User Logged In: Admin', 1, 1, 0, '2019-06-19 17:57:24', NULL),
(295, 'User Logged In: Admin', 1, 1, 0, '2019-06-19 18:09:53', NULL),
(296, 'User Logged In: Admin', 1, 1, 0, '2019-06-21 11:14:36', NULL),
(297, 'User Logged In: Admin', 1, 1, 0, '2019-06-21 17:02:59', NULL),
(298, 'User Logged In: Admin', 1, 1, 0, '2019-06-21 19:08:34', NULL),
(299, 'User Logged In: Admin', 1, 1, 0, '2019-06-23 13:32:31', NULL),
(300, 'User Logged In: Admin', 1, 1, 0, '2019-06-23 13:59:39', NULL),
(301, 'User Logged In: Admin', 1, 1, 0, '2019-06-23 14:00:09', NULL),
(302, 'User Logged In: Admin', 1, 1, 0, '2019-06-23 16:00:12', NULL),
(303, 'User Logged In: Admin', 1, 1, 0, '2019-06-24 13:31:11', NULL),
(304, 'User Logged In: Admin', 1, 1, 0, '2019-06-24 18:45:59', NULL),
(305, 'User Logged In: Admin', 1, 1, 0, '2019-06-25 10:11:00', NULL),
(306, 'User Logged In: Admin', 1, 1, 0, '2019-06-25 11:17:08', NULL),
(307, 'User Logged In: Admin', 1, 1, 0, '2019-06-25 05:33:11', NULL),
(308, 'User Logged In: Admin', 1, 1, 0, '2019-06-25 15:08:01', NULL),
(309, 'User Logged In: Admin', 1, 1, 0, '2019-06-28 11:00:01', NULL),
(310, 'User Logged In: Admin', 1, 1, 0, '2019-06-29 09:58:03', NULL),
(311, 'User Logged In: Admin', 1, 1, 0, '2019-06-30 14:40:58', NULL),
(312, 'User Logged In: Admin', 1, 1, 0, '2019-07-02 13:26:29', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `page_slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cannonical_link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_keyword` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_by` int(10) UNSIGNED NOT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `title`, `page_slug`, `description`, `cannonical_link`, `seo_title`, `seo_keyword`, `seo_description`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Terms and conditions', 'terms-and-conditions', 'terms and conditions', NULL, NULL, NULL, NULL, 1, 1, NULL, '2019-01-14 00:17:14', '2019-01-14 00:17:14', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `parent_category`
--

CREATE TABLE `parent_category` (
  `id` int(11) NOT NULL,
  `name` varchar(500) NOT NULL,
  `parent_code` varchar(400) NOT NULL,
  `description` text NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `parent_category`
--

INSERT INTO `parent_category` (`id`, `name`, `parent_code`, `description`, `user_id`) VALUES
(1, 'Laptop', 'P001', 'All Types Of Laptop', 1),
(2, 'Monitor', 'P002', 'All Types Of Monitor', 1),
(3, 'Printer', 'P002', 'All Types Of Printer', 1),
(4, 'RAM', 'P009', 'This is test', 1),
(6, 'Scanner', 'P0010', 'Test Scanner Details', 1),
(7, 'Power Supply', 'P0011', 'Details Of Power Supply', 1),
(8, 'testttttt', '', '', 1),
(9, 'testttttt', '', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `partner`
--

CREATE TABLE `partner` (
  `id` int(11) NOT NULL,
  `partner_id` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `short_name` varchar(100) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `partner`
--

INSERT INTO `partner` (`id`, `partner_id`, `name`, `short_name`, `created_at`, `updated_at`) VALUES
(14, 'PID-002', 'harun', '', '2022-01-05 11:24:02', NULL),
(15, 'PID-002', 'jamal', '', '2022-01-05 11:42:00', NULL),
(16, 'PID-003', 'BD PARTNER', '', '2022-01-05 12:49:41', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `party`
--

CREATE TABLE `party` (
  `id` int(11) NOT NULL,
  `party_id` varchar(100) NOT NULL,
  `partyname` varchar(100) NOT NULL,
  `partner_id` varchar(12) CHARACTER SET utf8 COLLATE utf8_swedish_ci NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `party`
--

INSERT INTO `party` (`id`, `party_id`, `partyname`, `partner_id`, `created_at`, `updated_at`) VALUES
(2036, 'PA1', 'HAAN SAARKER', 'PID-002', '2022-01-05 12:44:32', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `party_payment`
--

CREATE TABLE `party_payment` (
  `id` int(11) NOT NULL,
  `voucherid` varchar(15) CHARACTER SET latin1 NOT NULL,
  `voucherdate` date NOT NULL,
  `partyid` varchar(15) CHARACTER SET latin1 NOT NULL,
  `paymenttype` varchar(25) CHARACTER SET latin1 NOT NULL,
  `amount` double NOT NULL,
  `remarks` varchar(500) CHARACTER SET latin1 NOT NULL,
  `sp_photo` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `party_payment`
--

INSERT INTO `party_payment` (`id`, `voucherid`, `voucherdate`, `partyid`, `paymenttype`, `amount`, `remarks`, `sp_photo`) VALUES
(1, 'VID-001', '2022-02-06', '', 'cash', 1000, 'cn', ''),
(2, 'VID-002', '2022-02-06', 'PA1', 'cash', 10, '2ND', '');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sort` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `display_name`, `sort`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'view-backend', 'View Backend', 1, 1, 1, NULL, '2019-01-14 00:17:03', '2019-01-14 00:17:03', NULL),
(2, 'view-frontend', 'View Frontend', 2, 1, 1, NULL, '2019-01-14 00:17:03', '2019-01-14 00:17:03', NULL),
(3, 'view-access-management', 'View Access Management', 3, 1, 1, NULL, '2019-01-14 00:17:03', '2019-01-14 00:17:03', NULL),
(4, 'view-user-management', 'View User Management', 4, 1, 1, NULL, '2019-01-14 00:17:03', '2019-01-14 00:17:03', NULL),
(5, 'view-active-user', 'View Active User', 5, 1, 1, NULL, '2019-01-14 00:17:04', '2019-01-14 00:17:04', NULL),
(6, 'view-deactive-user', 'View Deactive User', 6, 1, 1, NULL, '2019-01-14 00:17:04', '2019-01-14 00:17:04', NULL),
(7, 'view-deleted-user', 'View Deleted User', 7, 1, 1, NULL, '2019-01-14 00:17:04', '2019-01-14 00:17:04', NULL),
(8, 'show-user', 'Show User Details', 8, 1, 1, NULL, '2019-01-14 00:17:05', '2019-01-14 00:17:05', NULL),
(9, 'create-user', 'Create User', 9, 1, 1, NULL, '2019-01-14 00:17:05', '2019-01-14 00:17:05', NULL),
(10, 'edit-user', 'Edit User', 9, 1, 1, NULL, '2019-01-14 00:17:05', '2019-01-14 00:17:05', NULL),
(11, 'delete-user', 'Delete User', 10, 1, 1, NULL, '2019-01-14 00:17:05', '2019-01-14 00:17:05', NULL),
(12, 'activate-user', 'Activate User', 11, 1, 1, NULL, '2019-01-14 00:17:05', '2019-01-14 00:17:05', NULL),
(13, 'deactivate-user', 'Deactivate User', 12, 1, 1, NULL, '2019-01-14 00:17:05', '2019-01-14 00:17:05', NULL),
(14, 'login-as-user', 'Login As User', 13, 1, 1, NULL, '2019-01-14 00:17:05', '2019-01-14 00:17:05', NULL),
(15, 'clear-user-session', 'Clear User Session', 14, 1, 1, NULL, '2019-01-14 00:17:05', '2019-01-14 00:17:05', NULL),
(16, 'view-role-management', 'View Role Management', 15, 1, 1, NULL, '2019-01-14 00:17:05', '2019-01-14 00:17:05', NULL),
(17, 'create-role', 'Create Role', 16, 1, 1, NULL, '2019-01-14 00:17:05', '2019-01-14 00:17:05', NULL),
(18, 'edit-role', 'Edit Role', 17, 1, 1, NULL, '2019-01-14 00:17:05', '2019-01-14 00:17:05', NULL),
(19, 'delete-role', 'Delete Role', 18, 1, 1, NULL, '2019-01-14 00:17:05', '2019-01-14 00:17:05', NULL),
(20, 'view-permission-management', 'View Permission Management', 19, 1, 1, NULL, '2019-01-14 00:17:05', '2019-01-14 00:17:05', NULL),
(21, 'create-permission', 'Create Permission', 20, 1, 1, NULL, '2019-01-14 00:17:05', '2019-01-14 00:17:05', NULL),
(22, 'edit-permission', 'Edit Permission', 21, 1, 1, NULL, '2019-01-14 00:17:05', '2019-01-14 00:17:05', NULL),
(23, 'delete-permission', 'Delete Permission', 22, 1, 1, NULL, '2019-01-14 00:17:05', '2019-01-14 00:17:05', NULL),
(24, 'view-page', 'View Page', 23, 1, 1, NULL, '2019-01-14 00:17:05', '2019-01-14 00:17:05', NULL),
(25, 'create-page', 'Create Page', 24, 1, 1, NULL, '2019-01-14 00:17:05', '2019-01-14 00:17:05', NULL),
(26, 'edit-page', 'Edit Page', 25, 1, 1, NULL, '2019-01-14 00:17:05', '2019-01-14 00:17:05', NULL),
(27, 'delete-page', 'Delete Page', 26, 1, 1, NULL, '2019-01-14 00:17:05', '2019-01-14 00:17:05', NULL),
(28, 'view-email-template', 'View Email Templates', 27, 1, 1, NULL, '2019-01-14 00:17:05', '2019-01-14 00:17:05', NULL),
(29, 'create-email-template', 'Create Email Templates', 28, 1, 1, NULL, '2019-01-14 00:17:06', '2019-01-14 00:17:06', NULL),
(30, 'edit-email-template', 'Edit Email Templates', 29, 1, 1, NULL, '2019-01-14 00:17:06', '2019-01-14 00:17:06', NULL),
(31, 'delete-email-template', 'Delete Email Templates', 30, 1, 1, NULL, '2019-01-14 00:17:06', '2019-01-14 00:17:06', NULL),
(32, 'edit-settings', 'Edit Settings', 31, 1, 1, NULL, '2019-01-14 00:17:06', '2019-01-14 00:17:06', NULL),
(33, 'view-blog-category', 'View Blog Categories Management', 32, 1, 1, NULL, '2019-01-14 00:17:06', '2019-02-23 22:34:13', '2019-02-23 22:34:13'),
(34, 'create-blog-category', 'Create Blog Category', 33, 1, 1, NULL, '2019-01-14 00:17:07', '2019-02-23 22:34:24', '2019-02-23 22:34:24'),
(35, 'edit-blog-category', 'Edit Blog Category', 34, 1, 1, NULL, '2019-01-14 00:17:07', '2019-02-23 22:34:36', '2019-02-23 22:34:36'),
(36, 'delete-blog-category', 'Delete Blog Category', 35, 1, 1, NULL, '2019-01-14 00:17:07', '2019-02-23 22:34:47', '2019-02-23 22:34:47'),
(37, 'view-blog-tag', 'View Blog Tags Management', 36, 1, 1, NULL, '2019-01-14 00:17:07', '2019-02-23 22:34:57', '2019-02-23 22:34:57'),
(38, 'create-blog-tag', 'Create Blog Tag', 37, 1, 1, NULL, '2019-01-14 00:17:07', '2019-02-23 22:35:08', '2019-02-23 22:35:08'),
(39, 'edit-blog-tag', 'Edit Blog Tag', 38, 1, 1, NULL, '2019-01-14 00:17:07', '2019-02-23 22:35:19', '2019-02-23 22:35:19'),
(40, 'delete-blog-tag', 'Delete Blog Tag', 39, 1, 1, NULL, '2019-01-14 00:17:07', '2019-02-23 22:35:29', '2019-02-23 22:35:29'),
(41, 'view-blog', 'View Blogs Management', 40, 1, 1, NULL, '2019-01-14 00:17:07', '2019-02-23 22:35:52', '2019-02-23 22:35:52'),
(42, 'create-blog', 'Create Blog', 41, 1, 1, NULL, '2019-01-14 00:17:07', '2019-02-23 22:36:14', '2019-02-23 22:36:14'),
(43, 'edit-blog', 'Edit Blog', 42, 1, 1, NULL, '2019-01-14 00:17:07', '2019-02-23 22:36:03', '2019-02-23 22:36:03'),
(44, 'delete-blog', 'Delete Blog', 43, 1, 1, NULL, '2019-01-14 00:17:07', '2019-02-23 22:37:55', '2019-02-23 22:37:55'),
(45, 'view-faq', 'View FAQ Management', 44, 1, 1, NULL, '2019-01-14 00:17:07', '2019-02-23 22:38:04', '2019-02-23 22:38:04'),
(46, 'create-faq', 'Create FAQ', 45, 1, 1, NULL, '2019-01-14 00:17:07', '2019-02-23 22:38:12', '2019-02-23 22:38:12'),
(47, 'edit-faq', 'Edit FAQ', 46, 1, 1, NULL, '2019-01-14 00:17:07', '2019-02-23 22:38:21', '2019-02-23 22:38:21'),
(48, 'delete-faq', 'Delete FAQ', 47, 1, 1, NULL, '2019-01-14 00:17:07', '2019-02-23 22:38:54', '2019-02-23 22:38:54'),
(49, 'create-plant-equipment', 'Create Plant Equipment', 31, 1, 1, 1, '2019-01-21 04:42:35', '2019-01-21 04:43:48', NULL),
(50, 'edit-plant-equipment', 'Edit Plant Equipment', 32, 1, 1, NULL, '2019-02-08 21:20:08', '2019-02-08 21:20:08', NULL),
(51, 'view-plant-equipment', 'View Plant Equipment', 33, 1, 1, NULL, '2019-02-08 21:21:08', '2019-02-08 21:21:08', NULL),
(52, 'delete-plant-equipment', 'Delete Plant Equipment', 34, 1, 1, NULL, '2019-02-08 21:22:25', '2019-02-08 21:22:25', NULL),
(53, 'view-reports', 'View Reports', 40, 1, 1, NULL, '2019-02-08 21:48:43', '2019-02-08 21:48:43', NULL),
(54, 'create-projects', 'Create Projects', 41, 1, 1, NULL, '2019-02-09 01:33:20', '2019-02-09 01:33:20', NULL),
(55, 'edit-projects', 'Edit Projects', 33, 1, 1, NULL, '2019-02-09 01:46:59', '2019-02-09 01:46:59', NULL),
(56, 'view-projects', 'View Projects', 34, 1, 1, NULL, '2019-02-09 02:12:35', '2019-02-09 02:12:35', NULL),
(57, 'delete-projects', 'Delete Projects', 38, 1, 1, NULL, '2019-02-09 02:13:20', '2019-02-09 02:13:20', NULL),
(58, 'create-items', 'Create Items', 45, 1, 1, NULL, '2019-02-22 11:14:05', '2019-02-22 11:14:05', NULL),
(59, 'edit-items', 'Edit Items', 46, 1, 1, NULL, '2019-02-22 11:15:10', '2019-02-22 11:15:10', NULL),
(60, 'view-items', 'View Items', 47, 1, 1, NULL, '2019-02-22 11:15:38', '2019-02-22 11:15:38', NULL),
(61, 'delete-items', 'Delete Items', 48, 1, 1, NULL, '2019-02-22 11:16:35', '2019-02-22 11:16:35', NULL),
(62, 'view-products', 'View Products', 48, 1, 1, NULL, '2019-02-22 12:09:38', '2019-02-22 12:09:38', NULL),
(63, 'create-products', 'Create Products', 49, 1, 1, NULL, '2019-02-22 12:10:22', '2019-02-22 12:10:22', NULL),
(64, 'edit-products', 'Edit Products', 49, 1, 1, 1, '2019-02-22 12:10:55', '2019-02-22 12:11:59', NULL),
(65, 'delete-products', 'Delete Products', 50, 1, 1, 1, '2019-02-22 12:11:18', '2019-02-22 12:11:35', NULL),
(66, 'create-product-receive', 'Create Product Receive', 51, 1, 1, NULL, '2019-02-22 13:51:48', '2019-02-22 13:51:48', NULL),
(67, 'edit-product-receive', 'Edit Product Receive', 52, 1, 1, NULL, '2019-02-22 13:52:36', '2019-02-22 13:52:36', NULL),
(68, 'view-product-receive', 'View Product Receive', 53, 1, 1, NULL, '2019-02-22 13:53:22', '2019-02-22 13:53:22', NULL),
(69, 'delete-product-receive', 'Delete Product Receive', 54, 1, 1, NULL, '2019-02-22 13:54:06', '2019-02-22 13:54:06', NULL),
(70, 'create-project-challan', 'Create Project Challan', 61, 1, 1, NULL, '2019-02-22 15:14:49', '2019-02-22 15:14:49', NULL),
(71, 'edit-project-challan', 'Ereate Project Challan', 60, 1, 1, NULL, '2019-02-22 15:15:22', '2019-02-22 15:15:22', NULL),
(72, 'view-project-challan', 'View Project Challan', 62, 1, 1, NULL, '2019-02-22 15:15:58', '2019-02-22 15:15:58', NULL),
(73, 'delete-project-challan', 'Delete Project Challan', 64, 1, 1, NULL, '2019-02-22 15:16:33', '2019-02-22 15:16:33', NULL),
(74, 'view-suppliers', 'View Suppliers', 50, 1, 1, NULL, '2019-02-23 22:40:07', '2019-02-23 22:40:07', NULL),
(75, 'edit-suppliers', 'Edit Suppliers', 51, 1, 1, NULL, '2019-02-23 22:40:39', '2019-02-23 22:40:39', NULL),
(76, 'create-suppliers', 'Create Suppliers', 52, 1, 1, NULL, '2019-02-23 22:41:08', '2019-02-23 22:41:08', NULL),
(77, 'delete-suppliers', 'Delete Suppliers', 54, 1, 1, NULL, '2019-02-23 22:41:39', '2019-02-23 22:41:39', NULL),
(78, 'issue-management', 'Issue Management', 6, 1, 1, NULL, '2019-05-12 10:32:51', '2019-05-12 10:32:51', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `id` int(10) UNSIGNED NOT NULL,
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`id`, `permission_id`, `role_id`) VALUES
(34, 2, 3),
(35, 1, 2),
(36, 3, 2),
(37, 4, 2),
(38, 5, 2),
(39, 6, 2),
(40, 7, 2),
(41, 8, 2),
(42, 16, 2),
(43, 20, 2),
(44, 24, 2),
(45, 25, 2),
(46, 26, 2),
(47, 27, 2),
(48, 28, 2),
(49, 29, 2),
(50, 30, 2),
(51, 31, 2),
(52, 33, 2),
(53, 34, 2),
(54, 35, 2),
(55, 36, 2),
(56, 37, 2),
(57, 38, 2),
(58, 39, 2),
(59, 40, 2),
(60, 41, 2),
(61, 42, 2),
(62, 43, 2),
(63, 44, 2),
(64, 45, 2),
(65, 46, 2),
(66, 47, 2),
(67, 48, 2),
(68, 49, 2);

-- --------------------------------------------------------

--
-- Table structure for table `permission_user`
--

CREATE TABLE `permission_user` (
  `id` int(10) UNSIGNED NOT NULL,
  `permission_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permission_user`
--

INSERT INTO `permission_user` (`id`, `permission_id`, `user_id`) VALUES
(1, 42, 2),
(2, 34, 2),
(3, 38, 2),
(4, 29, 2),
(5, 46, 2),
(6, 25, 2),
(7, 44, 2),
(8, 36, 2),
(9, 40, 2),
(10, 31, 2),
(11, 48, 2),
(12, 27, 2),
(13, 43, 2),
(14, 35, 2),
(15, 39, 2),
(16, 30, 2),
(17, 47, 2),
(18, 26, 2),
(19, 8, 2),
(20, 3, 2),
(21, 5, 2),
(22, 1, 2),
(23, 33, 2),
(24, 37, 2),
(25, 41, 2),
(26, 6, 2),
(27, 7, 2),
(28, 28, 2),
(29, 45, 2),
(30, 24, 2),
(31, 20, 2),
(32, 16, 2),
(33, 4, 2),
(34, 2, 3),
(38, 1, 4),
(39, 49, 4),
(40, 50, 4),
(41, 51, 4),
(42, 52, 4),
(170, 1, 5),
(171, 49, 5),
(172, 50, 5),
(173, 51, 5),
(174, 52, 5),
(175, 53, 5),
(176, 54, 5),
(177, 55, 5),
(178, 56, 5),
(179, 57, 5),
(180, 58, 5),
(181, 59, 5),
(182, 60, 5),
(183, 61, 5),
(184, 62, 5),
(185, 63, 5),
(186, 64, 5),
(187, 65, 5),
(188, 66, 5),
(189, 67, 5),
(190, 68, 5),
(191, 69, 5),
(192, 70, 5),
(193, 71, 5),
(194, 72, 5),
(195, 73, 5),
(196, 74, 5),
(197, 75, 5),
(198, 76, 5),
(199, 77, 5),
(200, 78, 5);

-- --------------------------------------------------------

--
-- Table structure for table `plant_and_equipment`
--

CREATE TABLE `plant_and_equipment` (
  `id` int(11) NOT NULL,
  `project_id` int(11) DEFAULT NULL,
  `equipment_type` int(11) DEFAULT NULL,
  `date_form` datetime DEFAULT NULL,
  `date_to` datetime DEFAULT NULL,
  `name` varchar(700) DEFAULT NULL,
  `eel_code` varchar(300) DEFAULT NULL,
  `country_of_origin` varchar(400) DEFAULT NULL,
  `capacity` varchar(300) DEFAULT NULL,
  `make_by` varchar(300) DEFAULT NULL,
  `model` varchar(300) DEFAULT NULL,
  `year_of_manufac` int(11) DEFAULT NULL,
  `present_location` varchar(300) DEFAULT NULL,
  `present_condition` varchar(400) DEFAULT NULL,
  `remarks` text NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `plant_and_equipment`
--

INSERT INTO `plant_and_equipment` (`id`, `project_id`, `equipment_type`, `date_form`, `date_to`, `name`, `eel_code`, `country_of_origin`, `capacity`, `make_by`, `model`, `year_of_manufac`, `present_location`, `present_condition`, `remarks`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(9, 3, 1, NULL, NULL, 'Dump Truck', 'DT-01', '44', '10m3', 'SINO', 'ZZ3168G3615', 2018, 'PCT Yard', NULL, 'No Comments', 5, NULL, '2019-05-13 11:18:42', '2019-05-24 17:34:47', NULL),
(10, 4, 1, NULL, NULL, 'Dump Truck', 'DT-02', '44', '10m3', 'SINO', 'ZZ3168G3615', 2018, 'NCT,Ctg', '2', 'No Comments', 5, NULL, '2019-05-13 11:22:15', '2019-05-24 17:35:02', NULL),
(11, 10, 1, NULL, NULL, 'Dump Truck', 'DT-03', '44', '10m3', 'SINO', 'ZZ3168G3615', 2018, 'Raozan Road Project', '2', 'No Comments', 5, NULL, '2019-05-13 11:24:44', '2019-05-24 17:35:20', NULL),
(12, 3, 1, NULL, NULL, 'Dump Truck', 'DT-04', '44', '10m3', 'SINO', 'ZZ3168G3615', 2018, 'PCT Yard', '2', 'No Comments', 5, NULL, '2019-05-13 12:05:17', '2019-05-24 17:35:38', NULL),
(13, 4, 1, NULL, NULL, 'Dump Truck', 'DT-05', '44', '10m3', 'SINO', 'ZZ3168G3615', 2018, 'NCT,Ctg', NULL, 'No Comments', 5, NULL, '2019-05-13 12:08:58', '2019-05-24 17:32:45', NULL),
(14, 10, 1, NULL, NULL, 'Dump Truck', 'DT-06', '44', '10m3', 'SINO', 'ZZ3168G3615', 2018, 'Raozan Road Project', '2', 'No Comments', 5, NULL, '2019-05-13 12:11:01', '2019-05-24 17:32:24', NULL),
(15, 3, 1, NULL, NULL, 'Dump Truck', 'DT-07', '44', '16m3', 'SINO', 'ZZ257N33647', 2018, 'PCT Yard', '2', 'No Comments', 5, NULL, '2019-05-13 12:15:28', '2019-05-24 17:32:07', NULL),
(16, 8, 1, NULL, NULL, 'Dump Truck', 'DT-08', '44', '16m3', 'SINO', 'ZZ257N33647', 2018, 'Water  logging', '2', 'No Comments', 5, NULL, '2019-05-13 12:18:17', '2019-05-24 17:31:47', NULL),
(17, 3, 1, NULL, NULL, 'Prime Mover (Low Bed)', 'LB-01', '44', '80 Ton', 'SINO', 'ZZ4257V3241W TAZ9950TDP', 2018, 'PCT Yard', '2', 'No Comments', 5, NULL, '2019-05-13 12:20:57', '2019-05-24 17:28:13', NULL),
(18, 3, 1, NULL, NULL, 'Prime Mover (Low Bed)', 'LB-02', '44', '80 Ton', 'SINO', 'ZZ4257V3241W TAZ9950TDP', 2018, 'PCT Yard', '2', 'No Comments', 5, NULL, '2019-05-13 18:36:45', '2019-05-24 17:28:33', NULL),
(19, 4, 1, NULL, NULL, 'Excavator (standard)', 'EX-01', '113', '0.70 m3', 'DOOSAN', 'DX225LCA', 2018, 'NCT,Ctg', '2', 'No Comments', 5, NULL, '2019-05-13 19:32:07', '2019-05-24 17:31:31', NULL),
(20, 4, 1, NULL, NULL, 'Excavator (standard)', 'EX-02', '113', '0.70 m3', 'DOOSAN', 'DX225LCA', 2018, 'NCT,Ctg', '2', 'No Comments', 5, NULL, '2019-05-13 19:33:26', '2019-05-24 17:31:14', NULL),
(21, 8, 1, NULL, NULL, 'Excavator(With Breaker)', 'EX-03', '44', '0.90m3', 'ZOOMLION', 'ZE210E', 2018, 'Water  logging', '2', 'No Comments', 5, NULL, '2019-05-13 19:35:25', '2019-05-24 17:26:25', NULL),
(22, 3, 1, NULL, NULL, 'Excavator(With Breaker)', 'EX-04', '44', '0.90m3', 'ZOOMLION', 'ZE210E', 2018, 'PCT Yard', '2', 'No Comments', 5, NULL, '2019-05-13 19:37:35', '2019-05-24 17:26:41', NULL),
(23, 3, 1, NULL, NULL, 'Excavator(Long Boom)', 'EX-05', '44', '0.5m3', 'ZOOMLION', 'ZE360E', 2018, 'PCT Yard', '2', 'No Comments', 5, NULL, '2019-05-13 19:40:49', '2019-05-24 17:30:53', NULL),
(24, 8, 1, NULL, NULL, 'Excavator(Long Boom)', 'Ex-06', '44', '0.5m3', 'ZOOMLION', 'ZE360E', 2018, 'Water  logging', '2', 'No comments', 5, NULL, '2019-05-18 17:19:13', '2019-05-24 17:30:32', NULL),
(25, 3, 1, NULL, NULL, 'Excavator(Pile Driver)', 'Ex-07', '44', '1.60m3', 'XCMG', 'XE370CA', 2018, 'PCT Yard', '2', 'Ready for work', 5, NULL, '2019-05-18 17:39:58', '2019-05-24 17:30:15', NULL),
(26, 3, 1, NULL, NULL, 'Excavator(Pile Driver)', 'Ex-08', '44', '1.60m3', 'XCMG', 'XE370CA', 2018, 'PCT Yard', '2', 'Ready for Work', 5, NULL, '2019-05-18 17:41:39', '2019-05-24 17:29:57', NULL),
(27, 3, 1, NULL, NULL, 'Amphibious Hydraulic Excavator', 'AEX-01', '129', '0.33m3', 'Ultratex', 'TB285CH', 2019, 'PCT Yard', '2', 'No Comments', 5, NULL, '2019-05-18 17:50:33', '2019-05-24 14:44:11', NULL),
(28, 3, 1, NULL, NULL, 'Amphibious Hydraulic Excavator', 'AEX-02', '129', '0.33m3', 'Ultratex', 'TB285CH', 2019, 'PCT Yard', '2', 'No Comments', 5, NULL, '2019-05-19 18:23:41', '2019-05-24 17:40:46', NULL),
(29, 4, 1, NULL, NULL, 'Wheel Loader', 'WL-01', '44', '3 Ton', 'POWER PLUS', 'PP-938-V', 2018, 'NCT,Ctg', '2', 'No Comments', 5, NULL, '2019-05-19 18:26:15', '2019-05-24 16:34:05', NULL),
(30, 8, 1, NULL, NULL, 'Wheel Loader', 'WL-02', '44', '3 Ton', 'POWER PLUS', 'PP-938-V', 2018, 'Water  logging', '2', 'No Comments', 5, NULL, '2019-05-19 18:29:33', '2019-05-19 18:29:33', NULL),
(31, 10, 1, NULL, NULL, 'Wheel Loader', 'WL-03', '44', '3 Ton', 'LONG KING', 'LG833N', 2018, 'Raozan Road Project', '2', 'No Comment', 5, NULL, '2019-05-19 18:32:12', '2019-05-24 16:32:01', NULL),
(32, 3, 1, NULL, NULL, 'Wheel Loader', 'WL-04', '44', '3 Ton', 'LONG KING', 'LG833N', 2018, 'PCT Yard', '2', 'No Comment', 5, NULL, '2019-05-19 18:34:22', '2019-05-24 16:31:17', NULL),
(33, 3, 1, NULL, NULL, 'Wheel Loader', 'WL-05', '44', '5 Ton', 'LONG KING', 'ZL50C', 2018, 'PCT Yard', '2', 'No Comment', 5, NULL, '2019-05-19 18:37:44', '2019-05-24 16:30:42', NULL),
(34, 4, 1, NULL, NULL, 'Wheel Loader', 'WL-06', '44', '5 Ton', 'LONG KING', 'ZL50C', 2018, 'NCT,Ctg', '2', 'No Comment', 5, NULL, '2019-05-19 18:39:09', '2019-05-24 16:30:00', NULL),
(35, 4, 1, NULL, NULL, 'Bull Dozer', 'BD-01', '44', '4.50 m3', 'POWER PLUS', 'D65EX-15', 2018, 'NCT,Ctg', '2', 'No Comment', 5, NULL, '2019-05-19 18:42:41', '2019-05-24 17:39:57', NULL),
(36, 3, 1, NULL, NULL, 'Bull Dozer', 'BD-02', '44', '4.50 m3', 'ZOOMLION', 'ZD160-3', 2018, 'PCT Yard', '2', 'N/A', 5, NULL, '2019-05-19 18:45:04', '2019-05-24 17:39:41', NULL),
(37, 4, 1, NULL, NULL, 'Motor Grader', 'M Gr-01', '99', 'n/a', 'ACE', 'AG-176', 2018, 'NCT,Ctg', '2', 'N/A', 5, NULL, '2019-05-19 18:48:02', '2019-05-24 17:27:52', NULL),
(38, 4, 1, NULL, NULL, 'Vibratory Roller', 'VR-01', '99', '12 Ton', 'ACE', 'ASD-115', 2018, 'NCT,Ctg', NULL, 'N/A', 5, NULL, '2019-05-19 18:50:55', '2019-05-24 16:42:59', NULL),
(39, 3, 1, NULL, NULL, 'Vibratory Roller', 'VR-02', '99', '12 Ton', 'ACE', 'ASD-115', 2018, 'PCT Yard', '2', 'N/A', 5, NULL, '2019-05-19 18:53:15', '2019-05-24 16:32:30', NULL),
(40, 3, 1, NULL, NULL, 'Vibratory Roller', 'VR-03', '44', '12 Ton', 'CHANGLING', '8108L', 2018, 'PCT Yard', '2', 'N/A', 5, NULL, '2019-05-19 18:57:08', '2019-05-24 16:33:04', NULL),
(41, 5, 1, NULL, NULL, 'Vibratory Roller', 'VR-034', '44', '12 Ton', 'CHANGLING', '8108L', 2018, 'Vashanchar', '2', 'N/A', 5, NULL, '2019-05-19 19:10:10', '2019-05-24 16:33:31', NULL),
(42, 10, 1, NULL, NULL, 'Backhoe Loader', 'BL-01', '99', '0.25m3', 'CASE', '770EXMAGNUM', 2018, 'Raozan Road Project', '2', 'N/A', 5, NULL, '2019-05-19 19:17:13', '2019-05-24 17:40:27', NULL),
(43, 10, 1, NULL, NULL, 'Backhoe Loader', 'BL-02', '99', '0.25m3', 'CASE', '770EXMAGNUM', 2018, 'Raozan Road Project', '2', 'N/A', 5, NULL, '2019-05-19 19:19:17', '2019-05-24 17:40:11', NULL),
(44, 3, 1, NULL, NULL, 'Crawler Crane', 'CC-01', '44', '380 Ton', 'ZOOMLION', 'ZCC3800', 2018, 'PCT Yard', '2', 'N/A', 5, NULL, '2019-05-19 19:30:26', '2019-05-24 17:38:42', NULL),
(45, 3, 1, NULL, NULL, 'Crawler Crane', 'CC-02', '44', '180 Ton', 'ZOOMLION', 'QUY180', 2018, 'PCT Yard', '2', 'N/A', 5, NULL, '2019-05-19 19:32:32', '2019-05-24 17:35:55', NULL),
(46, 3, 1, NULL, NULL, 'Crawler Crane', 'CC-03', '44', '85 Ton', 'XCMG', 'XCMG-85', 2018, 'PCT Yard', '2', 'N/A', 5, NULL, '2019-05-20 13:47:31', '2019-05-24 17:36:07', NULL),
(47, 3, 1, NULL, NULL, 'Crawler Crane', 'CC-04', '44', '85 Ton', 'XCMG', 'XCMG-85', 2018, 'PCT Yard', '2', 'N/A', 5, NULL, '2019-05-20 13:48:45', '2019-05-24 17:36:24', NULL),
(48, 3, 1, NULL, NULL, 'Rough Terran Crane', 'RT-01', '44', '300 Ton', 'ZOOMLION', 'ZRT-300', 2018, 'PCT Yard', '2', 'N/A', 5, NULL, '2019-05-20 13:52:35', '2019-05-24 17:28:54', NULL),
(49, 3, 1, NULL, NULL, 'Rough Terran Crane', 'RT-02', '44', '75 Ton', 'ZOOMLION', 'RT-75', 2018, 'PCT Yard', '2', 'N/A', 5, NULL, '2019-05-20 13:53:46', '2019-05-24 17:29:15', NULL),
(50, 3, 1, NULL, NULL, 'Rough Terran Crane', 'RT-03', '44', '35 Ton', 'ZOOMLION', 'RT-35', 2018, 'PCT Yard', '2', 'N/A', 5, NULL, '2019-05-20 13:55:11', '2019-05-24 17:29:34', NULL),
(51, 3, 1, NULL, NULL, 'Diesel Hammer', 'DH-01', '44', '6.2 Ton', 'Starke', 'D62', 2018, 'PCT Yard', '2', 'N/A', 5, NULL, '2019-05-20 14:01:09', '2019-05-24 17:34:15', NULL),
(52, 3, 1, NULL, NULL, 'Diesel Hammer', 'DH-02', '44', '6.2 Ton', 'STARKE', 'D62', 2018, 'PCT Yard', '2', 'N/A', 5, NULL, '2019-05-20 14:03:04', '2019-05-24 17:34:31', NULL),
(53, 3, 1, NULL, NULL, 'Transit Mixer Truck', 'MT-01', '44', '9m3', 'ZOOMLION', '9JBH-R', 2018, 'PCT Yard', '2', 'N/A', 5, NULL, '2019-05-20 14:07:01', '2019-05-24 17:21:43', NULL),
(54, 3, 1, NULL, NULL, 'Transit Mixer Truck', 'MT-02', '44', '9m3', 'ZOOMLION', '9JBH-R', 2018, 'PCT Yard', '2', 'N/A', 5, NULL, '2019-05-20 14:08:20', '2019-05-24 17:21:58', NULL),
(55, 3, 1, NULL, NULL, 'Transit Mixer Truck', 'MT-03', '44', '9m3', 'ZOOMLION', '9JBH-R', 2018, 'PCT Yard', '2', 'N/A', 5, NULL, '2019-05-20 14:09:18', '2019-05-24 16:45:44', NULL),
(56, 3, 1, NULL, NULL, 'Transit Mixer Truck', 'MT-04', '44', '9m3', 'ZOOMLION', '9JBH-R', 2018, 'PCT Yard', '2', 'N/A', 5, NULL, '2019-05-20 14:10:49', '2019-05-24 16:45:15', NULL),
(57, 3, 1, NULL, NULL, 'Stationary Concrete Pump', 'SCP-01', '44', '78/47 m3/Hr', 'ZOOMLION', 'HBT60.174RSU', 2018, 'PCT Yard', '2', 'N/A', 5, NULL, '2019-05-20 14:13:15', '2019-05-24 17:22:51', NULL),
(58, 3, 1, NULL, NULL, 'Stationary Concrete Pump', 'SCP-02', '44', '78/47 m3/Hr', 'ZOOMLION', 'HBT60.174RSU', 2018, 'PCT Yard', '2', 'N/A', 5, NULL, '2019-05-20 14:14:30', '2019-05-24 17:23:06', NULL),
(59, 3, 1, NULL, NULL, 'Truck Mounted Concrete Boom Pump', 'BP-01', '44', '120/170 m3/Hr', 'ZOOMLION', '49X-6RZ', 2018, 'NCT,Ctg', '2', 'N/A', 5, NULL, '2019-05-20 15:02:02', '2019-05-24 16:44:55', NULL),
(60, 9, 1, NULL, NULL, 'Concrete Block Making Machine', 'CBM-01', '44', 'N/A', 'ZENITH', 'QT10', 2019, 'Sirajgonj Project', '2', 'N/A', 5, NULL, '2019-05-20 15:04:44', '2019-05-24 17:38:56', NULL),
(61, 3, 1, NULL, NULL, 'Concrete Batching Plant', 'CBP-01', '44', '30m3/Hr', 'POWER PLUS', 'PBP350S', 2018, 'PCT Yard', '2', 'N/A', 5, NULL, '2019-05-20 15:09:15', '2019-05-24 17:39:27', NULL),
(62, 3, 1, NULL, NULL, 'Concrete Batching Plant', 'CBP-02', '44', '60 m3/Hr', 'ZOOMLION', 'HZX60', 2018, 'PCT Yard', '2', 'N/A', 5, NULL, '2019-05-20 15:11:06', '2019-05-24 17:39:14', NULL),
(63, 7, 1, NULL, NULL, 'Tractor', 'TT-01', '99', '100 Cft', 'SONALIKA', 'D150RX', 2018, 'Payra  Project', '2', 'N/A', 5, NULL, '2019-05-20 15:45:08', '2019-05-24 17:24:07', NULL),
(64, 7, 1, NULL, NULL, 'Tractor', 'TT-02', '99', '100 Cft', 'SONALIKA', 'D150RX', 2018, 'Payra  Project', '2', 'N/A', 5, NULL, '2019-05-20 15:46:59', '2019-05-24 17:24:26', NULL),
(65, 7, 1, NULL, NULL, 'Tractor', 'TT-03', '99', '100 Cft', 'SONALIKA', 'D150RX', 2018, 'Payra  Project', '2', 'N/A', 5, NULL, '2019-05-20 15:48:34', '2019-05-24 17:24:50', NULL),
(66, 7, 1, NULL, NULL, 'Tractor', 'TT-04', '99', '100 Cft', 'SONALIKA', 'D150RX', 2018, 'Payra  Project', '2', 'n/a', 5, NULL, '2019-05-20 15:49:41', '2019-05-24 17:25:11', NULL),
(67, 5, 1, NULL, NULL, 'Tractor', 'TT-05', '99', '100 Cft', 'SONALIKA', 'D150RX', 2018, 'Vashanchar', '2', 'n/a', 5, NULL, '2019-05-20 15:51:13', '2019-05-24 17:25:30', NULL),
(68, 10, 1, NULL, NULL, 'Tractor', 'TT-06', '99', '100 Cft', 'SONALIKA', 'D150RX', 2018, 'Raozan Road Project', '2', 'n/a', 5, NULL, '2019-05-20 15:54:56', '2019-05-24 17:25:51', NULL),
(69, 10, 1, NULL, NULL, 'Tractor', 'TT-07', '99', '100 Cft', 'SONALIKA', 'D150RX', 2018, 'Raozan Road Project', '2', 'n/a', 5, NULL, '2019-05-20 16:43:58', '2019-05-24 16:35:27', NULL),
(70, 10, 1, NULL, NULL, 'Tractor', 'TT-08', '99', '100 Cft', 'SONALIKA', 'D150RX', 2018, 'Raozan Road Project', '2', 'n/a', 5, NULL, '2019-05-20 16:45:25', '2019-05-24 16:35:52', NULL),
(71, 9, 1, NULL, NULL, 'Tractor', 'TT-09', '99', '100 Cft', 'TAFE', 'TAFE-45DI', 2018, 'Sirajgonj Project', '2', 'n/a', 5, NULL, '2019-05-20 16:47:33', '2019-05-24 17:21:05', NULL),
(72, 9, 1, NULL, NULL, 'Tractor', 'TT-10', '99', '10 Ton', 'TAFE', 'TAFE-45DI', 2018, 'Sirajgonj Project', '2', 'n/a', 5, NULL, '2019-05-20 16:49:37', '2019-05-24 17:21:24', NULL),
(73, 9, 1, NULL, NULL, 'Fork Lift', 'FL-01', '113', '2 Ton', 'DOOSAN', 'D20GP', 2019, 'Sirajgonj Project', '2', 'n/a', 5, NULL, '2019-05-20 16:54:51', '2019-05-24 17:27:20', NULL),
(74, 9, 1, NULL, NULL, 'Fork Lift', 'FL-02', '113', '2 Ton', 'DOOSAN', 'D20GP', 2019, 'Sirajgonj Project', '2', 'n/a', 5, NULL, '2019-05-20 16:59:36', '2019-05-24 17:27:39', NULL),
(75, 4, 1, NULL, NULL, 'Diesel Generator', 'D Gn-01', '113', '27 KVA', 'DAWEOO', 'DAWEOO-PJM22-27 KVA', 2018, 'NCT,Ctg', NULL, 'n/a', 5, NULL, '2019-05-20 17:08:38', '2019-05-24 17:36:44', NULL),
(76, 5, 1, NULL, NULL, 'Diesel Generator', 'D Gn-02', '44', '25 KVA', 'SIFANG', 'SIFANG-1125', 2018, 'Vashanchar', '2', 'n/a', 5, NULL, '2019-05-20 17:12:03', '2019-05-24 17:37:01', NULL),
(77, 5, 1, NULL, NULL, 'Diesel Generator', 'D Gn-03', '44', '25KVA', 'SIFANG', 'SIFANG-1125', 2018, 'Vashanchar', '2', 'n/a', 5, NULL, '2019-05-20 17:14:03', '2019-05-24 17:37:16', NULL),
(78, 5, 1, NULL, NULL, 'Diesel Generator', 'D Gn-04', '44', '15KVA', 'FUJIAN', 'FUJIAN-POWER-12KW', 2018, 'Vashanchar', '2', 'n/a', 5, NULL, '2019-05-20 17:32:04', '2019-05-24 17:37:31', NULL),
(79, 7, 1, NULL, NULL, 'Diesel Generator', 'D Gn-05', '44', '19KVA', 'MINDONG', 'JBT8982011', 2018, 'Payra  Project', '2', 'n/a', 5, NULL, '2019-05-20 17:35:58', '2019-05-24 17:37:49', NULL),
(80, 7, 1, NULL, NULL, 'Diesel Generator', 'D Gn-06', '44', '18 KVA', 'MINDONG', 'JBT8982011', 2018, 'Payra  Project', '2', 'n/a', 5, NULL, '2019-05-20 17:38:40', '2019-05-24 17:38:03', NULL),
(81, 3, 1, NULL, NULL, 'Diesel Generator', 'D Gn-07', '218', '329 KVA', 'TEKSAN', 'TJ329DW5L', 2018, 'PCT Yard', '2', 'n/a', 5, NULL, '2019-05-20 17:51:30', '2019-05-24 17:38:20', NULL),
(82, 3, 1, NULL, NULL, 'Diesel Generator', 'D Gn-08', '218', '329 KVA', 'TEKSAN', 'JBT8982011', 2018, 'PCT Yard', '2', 'n/a', 5, NULL, '2019-05-20 17:53:06', '2019-05-24 17:33:09', NULL),
(83, 3, 1, NULL, NULL, 'Diesel Generator', 'D Gn-09', '218', '180KVA', 'TEKSAN', 'TJ180DW5A', 2018, 'PCT Yard', '2', 'n/a', 5, NULL, '2019-05-20 17:55:28', '2019-05-24 17:33:24', NULL),
(84, 3, 1, NULL, NULL, 'Diesel Generator', 'D Gn-10', '44', '65KVA', 'PRAMAC', 'GSW65', 2017, 'PCT Yard', '2', 'n/a', 5, NULL, '2019-05-20 17:57:56', '2019-05-24 17:33:39', NULL),
(85, 3, 1, NULL, NULL, 'Diesel Generator', 'D Gn-11', '218', '21 KVA', 'TEKSAN', 'TJ21MS5A', 2018, 'PCT Yard', '2', 'n/a', 5, NULL, '2019-05-20 18:00:58', '2019-05-24 17:33:57', NULL),
(86, 8, 1, NULL, NULL, 'Tower Light', 'TL-01', '107', '3.5KVA', 'PRAMAC', 'LPW8T-KUBOTAZ482', 2017, 'Water  logging', '2', 'n/a', 5, NULL, '2019-05-20 18:04:49', '2019-05-24 17:23:23', NULL),
(87, 4, 1, NULL, NULL, 'Tower Light', 'TL-02', '107', '3.5KVA', 'PRAMAC', 'LPW8T-KUBOTAZ482', 2017, 'NCT,Ctg', '2', 'n/a', 5, NULL, '2019-05-20 18:16:23', '2019-05-24 17:23:47', NULL),
(88, 11, 1, NULL, NULL, 'Dump Truck', 'DT-09', '99', '10m3', 'EICHER', 'VE Terra-16XP', 2019, 'mongla', '2', 'no comments', 5, NULL, '2019-05-24 17:41:09', '2019-05-27 19:20:41', NULL),
(89, 11, 1, NULL, NULL, 'Dump Truck', 'DT-10', '99', '10m3', 'EICHER', 'VE Terra-16XP', 2019, 'Mongla Prpject', '2', 'no comments', 5, NULL, '2019-05-27 19:23:35', '2019-05-27 19:23:35', NULL),
(90, 11, 1, NULL, NULL, 'Dump Truck', 'DT-11', '99', '10m3', 'EICHER', 'VE Terra-16XP', 2019, 'Mongla Project', '2', 'no comments', 5, NULL, '2019-05-27 19:25:26', '2019-05-27 19:25:26', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `present_condition`
--

CREATE TABLE `present_condition` (
  `id` int(11) NOT NULL,
  `name` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `present_condition`
--

INSERT INTO `present_condition` (`id`, `name`) VALUES
(1, 'Breakdown'),
(2, 'Running');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `code` varchar(200) DEFAULT NULL,
  `name` varchar(400) DEFAULT NULL,
  `unit_name` varchar(100) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `product_movement`
--

CREATE TABLE `product_movement` (
  `id` int(11) NOT NULL,
  `movement_no` varchar(500) DEFAULT NULL,
  `entry_date` datetime NOT NULL,
  `from_date` datetime DEFAULT NULL,
  `to_date` datetime DEFAULT NULL,
  `project_form` int(11) DEFAULT NULL,
  `project_to` int(11) DEFAULT NULL,
  `total_quantity` int(11) NOT NULL,
  `remarks` text DEFAULT NULL,
  `movement_type` int(11) NOT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `product_movement_details`
--

CREATE TABLE `product_movement_details` (
  `id` int(11) NOT NULL,
  `movement_no` varchar(500) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `id` int(11) NOT NULL,
  `code` varchar(200) DEFAULT NULL,
  `name` varchar(500) NOT NULL,
  `incharge` varchar(100) NOT NULL,
  `address` text DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`id`, `code`, `name`, `incharge`, `address`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(2, 'PR-001', 'MA MOTORS', '', '', NULL, NULL, '2020-07-22 06:25:37', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `project_type`
--

CREATE TABLE `project_type` (
  `id` int(11) NOT NULL,
  `name` varchar(600) DEFAULT NULL,
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `project_type`
--

INSERT INTO `project_type` (`id`, `name`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Owned', 0, 0, '2019-02-09 15:18:18', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, 'Rented', 0, 0, '2019-02-09 15:18:18', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Stand-in structure for view `qry_inv_issue`
-- (See below for the actual view)
--
CREATE TABLE `qry_inv_issue` (
`issue_id` varchar(25)
,`issue_date` date
,`material_id` varchar(9)
,`issue_qty` float
,`warehouse_id` varchar(100)
,`project_id` varchar(25)
,`package_id` varchar(100)
,`building_id` varchar(100)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `qry_typewiseconsumption`
-- (See below for the actual view)
--
CREATE TABLE `qry_typewiseconsumption` (
`material_id` varchar(9)
,`issue_qty` float
,`type` varchar(100)
,`issue_date` date
,`warehouse_id` varchar(100)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `qry_typewisestock`
-- (See below for the actual view)
--
CREATE TABLE `qry_typewisestock` (
`mb_ref_id` varchar(25)
,`mb_materialid` varchar(25)
,`mb_date` date
,`mbin_qty` float
,`mbout_qty` float
,`mbtype` varchar(30)
,`project_id` varchar(100)
,`warehouse_id` varchar(100)
,`package_id` varchar(100)
,`type` varchar(100)
);

-- --------------------------------------------------------

--
-- Table structure for table `rlp_access_chain`
--

CREATE TABLE `rlp_access_chain` (
  `id` int(11) NOT NULL,
  `chain_type` varchar(150) NOT NULL DEFAULT 'default',
  `division_id` int(11) NOT NULL,
  `department_id` int(11) NOT NULL,
  `rlp_type` int(11) DEFAULT NULL,
  `users` longtext NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `rlp_access_chain`
--

INSERT INTO `rlp_access_chain` (`id`, `chain_type`, `division_id`, `department_id`, `rlp_type`, `users`, `created_by`, `created_at`, `updated_by`, `updated_at`) VALUES
(1, 'default', 1, 3, 0, '{\"4\":\"1\"}', 1, '2021-01-23 07:55:58', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `rlp_acknowledgement`
--

CREATE TABLE `rlp_acknowledgement` (
  `id` int(11) NOT NULL,
  `rlp_info_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `ack_order` int(11) NOT NULL COMMENT 'acknowledge order to show the RLP',
  `ack_status` tinyint(4) NOT NULL DEFAULT 0,
  `ack_request_date` datetime NOT NULL,
  `ack_updated_date` datetime DEFAULT NULL,
  `is_visible` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0=not visible; 1= visible',
  `created_by` int(11) NOT NULL,
  `updated_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `rlp_delete_history`
--

CREATE TABLE `rlp_delete_history` (
  `id` int(11) NOT NULL,
  `rlp_info_id` int(11) NOT NULL,
  `deleted_by` int(11) NOT NULL,
  `deleted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `rlp_details`
--

CREATE TABLE `rlp_details` (
  `id` int(11) NOT NULL,
  `rlp_info_id` int(11) NOT NULL,
  `item_des` longtext DEFAULT NULL,
  `purpose` longtext DEFAULT NULL,
  `quantity` varchar(100) DEFAULT NULL,
  `estimated_price` float DEFAULT NULL,
  `supplier` text DEFAULT NULL,
  `details_remarks` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `rlp_info`
--

CREATE TABLE `rlp_info` (
  `id` int(11) NOT NULL,
  `rlp_no` varchar(100) NOT NULL,
  `rlp_user_id` int(11) UNSIGNED NOT NULL,
  `rlp_user_office_id` varchar(500) NOT NULL,
  `priority` tinyint(4) NOT NULL,
  `request_date` datetime NOT NULL,
  `request_division` int(11) DEFAULT NULL,
  `request_department` int(11) NOT NULL,
  `request_person` varchar(650) DEFAULT NULL,
  `designation` varchar(500) DEFAULT NULL,
  `email` varchar(500) NOT NULL,
  `contact_number` varchar(100) DEFAULT NULL,
  `user_remarks` text DEFAULT NULL,
  `rlp_status` tinyint(1) NOT NULL DEFAULT 5,
  `is_viewd` tinyint(1) NOT NULL DEFAULT 0,
  `created_by` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_by` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `is_delete` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `rlp_remarks_history`
--

CREATE TABLE `rlp_remarks_history` (
  `id` int(11) NOT NULL,
  `rlp_info_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `remarks` longtext NOT NULL,
  `remarks_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `all` tinyint(1) NOT NULL DEFAULT 0,
  `sort` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `all`, `sort`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Super Admin', 1, 1, 1, 1, NULL, NULL, NULL, NULL),
(2, 'Administrator', 0, 2, 1, 1, NULL, '2019-01-14 00:17:02', '2019-01-14 00:17:02', NULL),
(3, 'Executive', 0, 3, 1, 1, 1, '2019-01-14 00:17:02', '2019-01-21 04:46:25', NULL),
(4, 'User', 0, 4, 1, 1, NULL, '2019-01-14 00:17:02', '2019-01-14 00:17:02', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `role_user`
--

CREATE TABLE `role_user` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_user`
--

INSERT INTO `role_user` (`id`, `user_id`, `role_id`) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 3),
(6, 4, 3),
(10, 5, 2);

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(600) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `favicon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_keyword` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_contact` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `from_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `from_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linkedin` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `google` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `copyright_text` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `footer_text` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `terms` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `disclaimer` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `google_analytics` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `home_video1` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `home_video2` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `home_video3` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `home_video4` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `explanation1` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `explanation2` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `explanation3` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `explanation4` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `values` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `data_type` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `post_type` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `name`, `logo`, `favicon`, `seo_title`, `seo_keyword`, `seo_description`, `company_contact`, `company_address`, `from_name`, `from_email`, `facebook`, `linkedin`, `twitter`, `google`, `copyright_text`, `footer_text`, `terms`, `disclaimer`, `google_analytics`, `home_video1`, `home_video2`, `home_video3`, `home_video4`, `explanation1`, `explanation2`, `explanation3`, `explanation4`, `values`, `data_type`, `post_type`, `created_at`, `updated_at`) VALUES
(1, NULL, '1547629427Saif--Power-tec-Logo-226x48.jpg', '1547632780Saif--Power-tec-Logo-favicon.jpg', 'Saif Inventory Management System', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2019-01-15 02:59:40');

-- --------------------------------------------------------

--
-- Table structure for table `social_logins`
--

CREATE TABLE `social_logins` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `provider` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `provider_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sttable`
--

CREATE TABLE `sttable` (
  `id` int(11) NOT NULL,
  `vehicleno` varchar(150) NOT NULL,
  `name` varchar(150) NOT NULL,
  `registrationno` varchar(150) NOT NULL,
  `tax_issdt` date NOT NULL,
  `tax_expdt` date NOT NULL,
  `fit_issdt` date NOT NULL,
  `fit_expdt` date NOT NULL,
  `ins_issdt` date NOT NULL,
  `ins_expdt` date NOT NULL,
  `rou_issdt` date NOT NULL,
  `rou_expdt` date NOT NULL,
  `engineno` varchar(55) NOT NULL,
  `chasisno` varchar(50) NOT NULL,
  `regdate` date NOT NULL,
  `serialno` varchar(50) NOT NULL,
  `modelno` varchar(50) NOT NULL,
  `ccno` varchar(50) NOT NULL,
  `netvalue` int(11) NOT NULL,
  `sno` int(11) NOT NULL,
  `myear` varchar(50) NOT NULL,
  `office` varchar(75) NOT NULL,
  `division` varchar(79) NOT NULL,
  `location` varchar(80) NOT NULL,
  `photo` varchar(1000) NOT NULL,
  `status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sttable`
--

INSERT INTO `sttable` (`id`, `vehicleno`, `name`, `registrationno`, `tax_issdt`, `tax_expdt`, `fit_issdt`, `fit_expdt`, `ins_issdt`, `ins_expdt`, `rou_issdt`, `rou_expdt`, `engineno`, `chasisno`, `regdate`, `serialno`, `modelno`, `ccno`, `netvalue`, `sno`, `myear`, `office`, `division`, `location`, `photo`, `status`) VALUES
(1, 'DMT-GHA-13-6067', 'Volkswagen', 'SAIF POWERTEC LIMITED', '2019-03-06', '2020-03-06', '2019-06-23', '2020-06-22', '2019-07-12', '2020-07-11', '0000-00-00', '0000-00-00', 'CKD-004349', 'WVGZZZ7PZCD012726', '2012-03-18', 'SPL-1', 'TOUAREG', '4134', 0, 1, '2011', 'SAIF POWERTEC LIMITED', 'CORPORATE', 'Bashundara House', '', 'Active'),
(2, 'DMT-GA-37-9671', 'TOYOTA', 'SAIFPOWERTEC LIMITED', '2018-12-28', '2019-12-28', '2018-12-26', '2019-12-31', '2019-01-06', '2020-01-05', '0000-00-00', '0000-00-00', 'DFA7659', 'MHKM1CB40BK001094', '2014-12-28', 'SPL-10', 'AVANZA', '1500', 0, 10, '2014', 'SAIF POWERTEC LIMITED', 'CORPORATE', 'Rupayan Center', '', ''),
(3, 'DMT-GA-28-4557', 'TOYOTA', 'SAIF POWERTEC LTD.', '2019-06-11', '2020-06-12', '2019-06-11', '2020-06-11', '2019-06-24', '2020-06-23', '0000-00-00', '0000-00-00', '1NZ-E185713', 'NZE161-7024197', '2018-06-12', 'SPL-100', 'CAR(SALOON)', '1500', 0, 100, '2012', 'SAIF POWERTEC LIMITED', 'CORPORATE', 'Rupayan Center', '', ''),
(4, 'DMT-GA-28-4558', 'TOYOTA', 'SAIF POWERTEC LTD.', '2019-06-11', '2020-06-12', '2019-06-11', '2020-06-11', '2019-06-24', '2020-06-23', '0000-00-00', '0000-00-00', '1NZ-E308558', 'NZE161-7042937', '2018-06-12', 'SPL-101', 'CAR(SALOON)', '1500', 0, 101, '2013', 'SAIF POWERTEC LIMITED', 'CORPORATE', 'Khawja Tower', '', ''),
(5, 'DMT-GA-28-4559', 'TOYOTA', 'SAIF POWERTEC LTD.', '2019-06-11', '2020-06-12', '2019-06-11', '2020-06-11', '2019-06-24', '2020-06-23', '0000-00-00', '0000-00-00', '1NZ-E186015', 'NZE161-7024568', '2018-06-12', 'SPL-102', 'CAR(SALOON)', '1500', 0, 102, '2012', 'SAIF POWERTEC LIMITED', 'BATTERY', 'Khawja Tower', '', 'Active'),
(6, 'DMT-GA-28-4593', 'TOYOTA', 'E-ENGINEERING LTD.', '2019-06-24', '2020-06-25', '2019-06-30', '2020-06-29', '2019-06-27', '2020-06-26', '0000-00-00', '0000-00-00', '1NZ-E499340', 'NZE161-7072001', '2018-06-25', 'SPL-103', 'CAR(SALOON)', '1500', 0, 103, '2013', 'E-ENGINEERING LIMITED', 'EEL', 'Khawja Tower', '', 'Active'),
(7, 'DMT-GHA-15-9916', 'TOYOTA', 'E-ENGINEERING LTD.', '2019-07-09', '2020-07-10', '2019-07-10', '2020-07-10', '2019-07-11', '2020-07-10', '0000-00-00', '0000-00-00', '2TR-1446184', 'TRJ150-0044769', '2018-07-10', 'SPL-104', 'HARD JEEP', '2700', 0, 104, '2014', 'E-ENGINEERING LIMITED', 'EEL', 'Khawja Tower', '', 'Active'),
(8, 'DMT-CHA-56-3321', 'TOYOTA', 'E-ENGINEERING LTD.', '2019-07-09', '2020-07-10', '2019-07-10', '2020-07-09', '2019-07-11', '2020-07-10', '0000-00-00', '0000-00-00', '1TR-1381017', 'TRH200-0191345', '2018-07-10', 'SPL-105', 'MICROBUS', '2000', 0, 105, '2013', 'E-ENGINEERING LIMITED', 'EEL', 'Khawja Tower', '', 'Active'),
(9, 'DMT-GA-31-9602', 'AUDI', 'SHAHID MUHITUZZAMAN', '2019-09-14', '2020-09-14', '2019-04-11', '2020-04-10', '2019-03-24', '2020-03-23', '0000-00-00', '0000-00-00', 'CCZ056481', 'TRUZZZ816A-1017627', '2011-09-14', 'SPL-106', 'CAR (SPORTS)', '2000', 0, 106, '2010', 'SAIF POWERTEC LIMITED', 'CORPORATE', 'Bashundara House', '', 'Active'),
(10, 'DMT-GA-28-4891', 'TOYOTA', 'E-ENGINEERING LTD.', '2019-08-07', '2020-08-08', '2019-08-08', '2020-08-07', '2019-08-12', '2020-08-11', '0000-00-00', '0000-00-00', '1NZ-E360459', 'NZE161-7051346', '2018-08-08', 'SPL-107', 'CAR(SALOON)', '1500', 0, 107, '2013', 'SAIF POWERTEC LIMITED', 'BATTERY', 'Khawja Tower', '', ''),
(11, 'DMT-GA-34-8116', 'TOYOTA', 'E-ENGINEERING LTD.', '2019-08-12', '2020-08-13', '2019-08-08', '2020-08-12', '2019-08-14', '2020-08-13', '0000-00-00', '0000-00-00', '1NZ-E339239', 'NZE161-7047946', '2018-08-13', 'SPL-108', 'CAR(SALOON)', '1500', 0, 108, '2013', 'E-ENGINEERING LIMITED', 'EEL', 'Khawja Tower', '', 'Active'),
(12, 'DMT-CHA-56-3479', 'TOYOTA', 'SAIF POWERTEC LIMITED .', '2019-09-07', '2020-09-08', '2019-09-08', '2020-09-07', '2019-09-09', '2020-09-08', '0000-00-00', '0000-00-00', '1TR-1258876', 'TRH200-0174036', '2018-09-08', 'SPL-109', 'MICROBUS (HIACE)', '2000', 0, 109, '2013', 'SAIF POWERTEC LIMITED', 'RENEWABLE ENERGY', 'Khawja Tower', '', ''),
(13, 'DMT-MA-54-2308', 'TATA ', 'SAIF POWERTEC LIMITED', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '275IDI05CYYS52911', 'MAT445051BZR25251', '2011-10-30', 'SPL-11', 'COVERED VAN (Ace HT)', '700', 0, 11, '2011', 'SAIF POWERTEC LIMITED', 'RENEWABLE ENERGY', 'Gazipur-Pubail', '', 'Sold'),
(14, 'DMT-THA-11-9034', 'TOYOTA', 'HELVETAS SWISS INTER CO.', '2019-02-22', '2020-02-22', '2019-10-21', '2020-10-20', '2019-10-29', '2020-10-28', '2016-02-22', '2019-10-30', '2KD-7911981', 'MROFR22G600555073', '2010-02-22', 'SPL-110', 'PICKUP DOUBLE CABIN', '2494', 0, 110, '2009', 'E-ENGINEERING LIMITED', 'SERVICE & SPARE', 'Khawja Tower', '', ''),
(15, 'DMT-GA-42-1346', 'TOYOTA', 'E-ENGINEERING LTD.', '2019-11-12', '2020-11-13', '2019-11-13', '2020-11-12', '2019-11-14', '2020-11-13', '0000-00-00', '0000-00-00', '1NZ-E429584', 'NZT260-3131802', '2018-11-13', 'SPL-111', 'CAR(SALOON) PREMIO', '1500', 0, 111, '2013', 'office', 'BATTERY', 'Khawja Tower', '', 'Active'),
(16, 'DMT-GA-42-1421', 'TOYOTA', 'E-ENGINEERING LTD.', '2019-11-13', '2020-11-14', '2019-11-13', '2020-11-13', '2019-11-15', '2020-11-14', '0000-00-00', '0000-00-00', '1NZ-E477455', 'NZT260-3135451', '2018-11-14', 'SPL-112', 'CAR(SALOON) PREMIO', '1500', 0, 112, '2013', 'office', 'EEL', 'Khawja Tower', '', 'Active'),
(17, 'DMT-GA-42-1583', 'TOYOTA', 'E-ENGINEERING LTD.', '2019-11-19', '2020-11-20', '2019-11-18', '2020-11-19', '2019-11-22', '2020-11-21', '0000-00-00', '0000-00-00', '1NZ-E431630', 'NZT260-3131919', '2018-11-20', 'SPL-113', 'CAR(SALOON) PREMIO', '1500', 0, 113, '2013', 'E-ENGINEERING LIMITED', 'CORPORATE', 'Khawja Tower', '', 'Active'),
(18, 'DMT-GA-42-2302', 'TOYOTA', 'E-ENGINEERING LTD.', '2018-12-17', '2019-12-16', '2018-12-17', '2019-12-16', '2018-12-19', '2019-12-18', '0000-00-00', '0000-00-00', '1NZ-E299011', 'NZT260-3124786', '2018-12-17', 'SPL-114', 'CAR(SALOON)PREMIO', '1500', 0, 114, '2013', 'E-ENGINEERING LIMITED', 'EEL', 'Khawja Tower', '', ''),
(19, 'DMT-GA-42-2303', 'TOYOTA', 'E-ENGINEERING LTD.', '2018-12-17', '2019-12-16', '2018-12-17', '2019-12-16', '2018-12-19', '2019-12-18', '0000-00-00', '0000-00-00', '1NZ-5933653', 'NCP51-0259016', '2018-12-17', 'SPL-115', 'CAR(SALOON) PROBOX', '1500', 0, 115, '2011', 'E-ENGINEERING LIMITED', 'CORPORATE', 'location', '', 'Active'),
(20, 'DMT-GA-42-2374', 'TOYOTA', 'E-ENGINEERING LTD.', '2018-12-19', '2019-12-18', '2018-12-19', '2019-12-18', '2018-12-20', '2019-12-19', '0000-00-00', '0000-00-00', '1NZ-E340006', 'NZT260-3126773', '2018-12-19', 'SPL-116', 'CAR(SALOON) PREMIO', '1500', 0, 116, '2013', 'E-ENGINEERING LIMITED', 'EEL', 'Khawja Tower', '', ''),
(21, 'DMT-MA-13-1082', 'EICHER', 'SAIF ELECTRICAL MANUFACTURING LTD.', '2019-03-06', '2020-03-05', '2019-03-06', '2020-03-05', '2019-03-12', '2020-03-11', '2019-03-07', '2019-10-30', 'E413CDJL250095', 'MC2D2CRC0JL423868', '2019-03-06', 'SPL-117', 'DELIVERY  VAN', '3298', 1550000, 117, '2018', 'SAIF ELE. & MAN. COMPANY LTD', 'RENEWABLE ENERGY', 'Gazipur-Pubail', '', 'Active'),
(22, 'DMT-GA-42-4893', 'TOYOTA', 'E-ENGINEERING LTD.', '2019-03-11', '2020-03-10', '2019-03-11', '2020-03-10', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '1NZ-5941618', 'NCP51-0260007', '2019-03-11', 'SPL-118', 'PROBOX', '1500', 1260000, 118, '2011', 'SAIF POWERTEC LIMITED', 'CORPORATE', 'Khawja Tower', '', 'Active'),
(23, 'DMT-THA-13-6490', 'Mahindra', 'SAIF PORT HOLDINGS  LTD.', '2019-10-06', '2020-10-05', '2019-10-06', '2020-10-05', '2019-05-15', '2020-05-14', '0000-00-00', '2020-07-30', 'GHJ4F63943', 'MA1RY2GHKJ3F99565', '2019-10-06', 'SPL-119', 'PICKUP DOUBLE CABIN MAHINDRA', '2523', 21, 119, '2018', 'office', 'division', 'location', '1558422113Mahindra.jpeg', 'Active'),
(24, 'DMT-CHA-53-8810', 'TOYOTA', 'SAIF POWERTEC LIMITED', '2019-06-30', '2020-06-30', '2019-07-15', '2020-07-18', '2019-07-10', '2020-07-09', '2017-06-30', '2020-06-30', 'TRH200-5010501', '1TR-0850419', '2014-06-30', 'SPL-12', 'MICROBUS ', '2000', 0, 12, '2009', 'SAIF POWERTEC LIMITED', 'BATTERY', 'Gazipur-Pubail', '', 'Active'),
(25, 'DMT-THA-13-6491', 'Mahindra', 'SAIF PORT HOLDINGS  LTD.', '2019-10-06', '2020-10-05', '2019-10-06', '2020-10-05', '2019-05-15', '2020-05-14', '0000-00-00', '2020-07-30', 'GHJ4F65104', 'MA1RY2GHKJ3F99683', '2019-10-06', 'SPL-120', 'PICKUP DOUBLE CABIN MAHINDRA', '2523', 21, 120, '2018', 'office', 'division', 'location', '', 'Active'),
(26, 'DMT-THA-13-6493', 'MAHINDRA', 'SAIF PORT HOLDING LTD.', '2019-10-06', '2020-10-05', '2019-10-06', '2020-10-05', '2019-05-15', '2020-05-14', '0000-00-00', '0000-00-00', 'GHJ4F65098', 'MA1RY2GHKJ3F99684', '2019-05-13', 'SPL-121', 'BOLERO, Double Cabin', '2523', 21, 121, '2018', 'E-ENGINEERING LIMITED', 'EEL', 'location', '', 'Active'),
(27, 'DMT-THA-13-6492', 'Mahindra', 'SAIF PORT HOLDING LTD.', '2019-10-06', '2020-10-05', '2019-10-06', '2020-10-05', '2019-05-15', '2020-05-14', '0000-00-00', '2020-07-30', 'GHJ4F63949', 'MA1RY2GHKJ3F99562', '2019-10-06', 'SPL-122', 'BOLERO, Double Cabin', '2523', 21, 122, '2018', 'Saif Port Holdings Ltd', 'division', 'location', '', 'Active'),
(28, 'DMT-GA-42-7690', 'TOYOTA', 'E-Engineering Ltd.', '2019-05-29', '2020-05-28', '2019-05-29', '2020-05-28', '2019-06-16', '2020-06-15', '0000-00-00', '0000-00-00', '1NZ-E451356', 'NZT260-3133374', '2019-05-29', 'SPL-123', 'Premio', '1500', 23, 123, '2013', 'E-ENGINEERING LIMITED', 'CORPORATE', 'Khawja Tower', '', 'Active'),
(29, 'DMT-TA-13-7155', 'EICHER', 'E-Engineering Ltd.', '2019-06-13', '2020-06-12', '2019-06-13', '2020-06-12', '2019-06-17', '2020-06-16', '0000-00-00', '0000-00-00', 'E613CDJM253067', 'MC2K8ERC0JM064110', '2019-06-13', 'SPL-124', 'Tipper, Drum truck', '4948', 27, 124, '2018', 'E-ENGINEERING LIMITED', 'EEL', 'Payra', '', 'Active'),
(30, 'DMT-TA-13-7156', 'EICHER', 'E-Engineering Ltd.', '2019-06-13', '2020-06-12', '2019-06-13', '2020-06-12', '2019-06-17', '2020-06-16', '0000-00-00', '0000-00-00', 'E613CDJM254774', 'MC2K8ERC0JM064219', '2019-06-13', 'SPL-125', 'Tipper, Drum truck', '4948', 27, 125, '2018', 'E-ENGINEERING LIMITED', 'EEL', 'Payra', '', 'Active'),
(31, 'DMT-TA-13-7157', 'EICHER', 'E-Engineering Ltd.', '2019-06-13', '2020-06-12', '2019-06-13', '2020-06-12', '2019-06-17', '2020-06-16', '0000-00-00', '0000-00-00', 'E613CDJM254762', 'MC2K8ERC0JM064217', '2019-06-13', 'SPL-126', 'Tipper, Drum truck', '4948', 27, 126, '2018', 'E-ENGINEERING LIMITED', 'EEL', 'Payra', '', 'Active'),
(32, 'DMT-GA-42-8619', 'TOYOTA', 'Maxon Power Ltd.', '2019-06-27', '2020-06-26', '2019-06-27', '2020-06-26', '2019-06-30', '2020-06-29', '0000-00-00', '0000-00-00', '1NZ-E642208', 'NZT260-3144404', '2019-06-27', 'SPL-127', 'Premio', '1500', 0, 127, '2014', 'MAXON POWER LIMITED', 'division', 'Rupayan Center', '', 'Active'),
(33, 'DMT-THA-13-6302', 'Mahindra', 'E-ENGINEERING LTD.', '2019-07-01', '2020-06-30', '2019-07-01', '2020-06-30', '2019-07-02', '2020-07-01', '0000-00-00', '0000-00-00', 'GHK4C55611', 'MA1RY2GHKK3C92619', '2019-07-01', 'SPL-128', 'Double cabin pickup', '2523', 2175000, 128, '2019', 'E-ENGINEERING LIMITED', 'EEL', 'chittagong', '', 'Active'),
(34, 'DMT-THA-13-6303', 'Mahindra', 'E-ENGINEERING LTD.', '2019-07-01', '2020-06-30', '2019-07-01', '2020-06-30', '2019-07-02', '2020-07-01', '0000-00-00', '0000-00-00', 'GHK4C55620', 'MA1RY2GHKK3C92444', '2019-07-01', 'SPL-129', 'Double cabin pickup', '2523', 2175000, 129, '2019', 'E-ENGINEERING LIMITED', 'EEL', 'chittagong', '', 'Active'),
(35, 'DMT-THA-13-6304', 'Mahindra', 'E-ENGINEERING LTD.', '2019-07-01', '2020-06-30', '2019-07-01', '2020-06-30', '2019-07-02', '2020-07-01', '0000-00-00', '0000-00-00', 'GHK4C55623', 'MA1RY2GHKK3C92443', '2019-07-01', 'SPL-130', 'Double cabin pickup', '2523', 2175000, 130, '2019', 'E-ENGINEERING LIMITED', 'EEL', 'chittagong', '', 'Active'),
(36, 'DMT-TA-13-7222', 'EICHER', 'E-Engineering Ltd.', '2019-07-23', '2020-07-22', '2019-07-23', '2020-07-22', '2019-07-28', '2020-07-27', '0000-00-00', '0000-00-00', 'E613CDKE286184', 'MC2K8ERC0KE065292', '2019-07-23', 'SPL-131', 'Tipper, Drum truck', '4948', 2760000, 131, '2019', 'E-ENGINEERING LIMITED', 'EEL', 'location', '', 'Active'),
(37, 'DMT-CHA-56-4265', 'TOYOTA', 'SAIF POWERTEC LTD.', '2019-07-24', '2020-07-23', '2019-07-24', '2020-07-23', '2019-07-28', '2020-07-27', '0000-00-00', '0000-00-00', '1TR-1421295', 'TRH200-0196485', '2019-07-24', 'SPL-132', 'HAICE ', '2000', 0, 132, '2014', 'SAIF POWERTEC LIMITED', 'CORPORATE', 'chittagong', '', 'Active'),
(38, 'DMT-CHA-56-4293', 'TOYOTA', 'SAIF PORT HOLDING LTD.', '2019-07-31', '2020-07-30', '2019-07-31', '2020-07-30', '2019-08-07', '2020-08-06', '0000-00-00', '0000-00-00', '1TR-1482026', 'TRH200-0204287', '2019-07-31', 'SPL-133', 'HAICE ', '2000', 22, 133, '2014', 'Saif Port Holdings Ltd', 'division', 'Khawja Tower', '', 'Active'),
(39, 'DMT-THA-13-6396', 'Mahindra', 'E-Engineering Ltd.', '2019-08-28', '2020-08-27', '2019-08-28', '2020-08-27', '2019-08-29', '2020-08-28', '0000-00-00', '0000-00-00', 'GHK4C55604', 'MA1RY2GHKK3C92610', '2019-08-28', 'SPL-134', 'BOLERO, Double Cabin', '2523', 2175000, 134, '2019', 'E-ENGINEERING LIMITED', 'EEL', 'location', '', 'Active'),
(40, 'DMT-THA-13-6397', 'Mahindra', 'SAIF PORT HOLDING LTD.', '2019-08-28', '2020-08-27', '2019-08-28', '2020-08-27', '2019-08-29', '2020-08-28', '0000-00-00', '0000-00-00', 'GHK4C55616', 'MA1RY2GHKK3C92617', '2019-08-28', 'SPL-135', 'BOLERO, Double Cabin', '2523', 21, 135, '2019', 'Saif Port Holdings Ltd', 'division', 'location', '', 'Active'),
(41, 'DMT-THA-13-6398', 'Mahindra', 'SAIF PORT HOLDING LTD.', '2019-08-28', '2020-08-27', '2019-08-28', '2020-08-27', '2019-08-29', '2020-08-28', '0000-00-00', '0000-00-00', 'GHK4C55605', 'MA1RY2GHKK3C92616', '2019-08-28', 'SPL-136', 'BOLERO, Double Cabin', '2523', 21, 136, '2019', 'Saif Port Holdings Ltd', 'division', 'location', '', 'Active'),
(42, 'DMT-GA-43-0642', 'TOYOTA', 'SAIF PORT HOLDING LTD.', '2019-09-02', '2020-09-01', '2019-09-02', '2020-09-01', '2019-09-03', '2020-09-02', '0000-00-00', '0000-00-00', '1NZ-E659704', 'NCP51-0326329', '2019-09-02', 'SPL-137', 'PROBOX', '1500', 1290000, 137, '2014', 'Saif Port Holdings Ltd', 'CORPORATE', 'Khawja Tower', '', 'Active'),
(43, 'DMT-GA-43-0643', 'TOYOTA', 'E-Engineering Ltd.', '2019-09-02', '2020-09-01', '2019-09-02', '2020-09-01', '2019-09-03', '2020-09-02', '0000-00-00', '0000-00-00', '1NZ-E675476', 'NCP51-0328044', '2019-09-02', 'SPL-138', 'PROBOX', '1500', 1290000, 138, '2014', 'E-ENGINEERING LIMITED', 'EEL', 'Khawja Tower', '', 'Active'),
(44, 'DMT-GA-43-1396', 'TOYOTA', 'SAIF MARITIME LTD.', '2019-09-19', '2020-09-18', '2019-09-19', '2020-09-18', '2019-09-23', '2020-09-22', '0000-00-00', '0000-00-00', '1NZ-E676232', 'NCP51-0328156', '2019-09-19', 'SPL-139', 'PROBOX', '1500', 129000, 139, '2014', 'SAIF MARITIME LTD', 'division', 'Khawja Tower', '', 'Active'),
(45, 'DMT-GA-37-8063', 'TOYOTA', 'SAIFPOWERTEC LIMITED', '2019-11-06', '2020-11-06', '2019-11-04', '2020-11-05', '2019-11-14', '2020-11-13', '0000-00-00', '0000-00-00', '1NZ-D654425', 'NZT260-3069111', '2014-11-06', 'SPL-14', 'Allion', '1500', 0, 14, '2010', 'SAIF POWERTEC LIMITED', 'CORPORATE', 'Rupayan Center', '', 'Active'),
(46, 'DM-THA-13-6470', 'TOYOTA', 'Saif Port Holdings Ltd.', '2019-09-30', '2020-09-29', '2019-09-30', '2020-09-29', '2019-10-09', '2020-10-08', '2019-09-30', '2020-03-30', '1TR-1491802', 'TRY220-0113079', '2019-09-30', 'SPL-140', 'PICKUP DOUBLE CABIN', '2000', 25, 140, '2014', 'Saif Port Holdings Ltd', 'division', 'Khulna', '', 'Active'),
(47, 'DMT-GA-43-2854', 'TOYOTA', 'SAIF POWERTEC LTD.', '2019-10-27', '2020-10-26', '2019-10-27', '2020-10-26', '2019-10-28', '2020-10-27', '0000-00-00', '0000-00-00', '1NZ-E715704', 'NZT260-3149305', '2019-10-27', 'SPL-141', 'Premio', '1496', 23, 141, '2014', 'SAIF POWERTEC LIMITED', 'CORPORATE', 'Khawja Tower', '', 'Active'),
(48, 'DMT-JHA-12-0114', 'TATA', 'SAIF ELECTRICAL MANUFACTURING LTD.', '2019-10-23', '2020-10-22', '2019-10-23', '2020-10-22', '2019-10-28', '2020-10-27', '2019-10-27', '2020-06-30', '497TC93FPY822663', 'MAT386518K8R13912', '2019-10-23', 'SPL-142', 'LP 709/42 MINI BUS', '3783', 18, 142, '2019', 'SAIF ELE. & MAN. COMPANY LTD', 'RENEWABLE ENERGY', 'Gazipur-Pubail', '', 'Active'),
(49, 'DMT-GA-43-3713', 'TOYOTA', 'Maxon Power Ltd.', '2019-11-18', '2020-11-17', '2019-11-18', '2020-11-17', '2019-11-19', '2020-11-18', '0000-00-00', '0000-00-00', '1NZ-E615440', 'NCP51-0323058', '2019-11-18', 'SPL-143', 'PROBOX', '1500', 1290000, 143, '2014', 'MAXON POWER LIMITED', 'CORPORATE', 'Khawja Tower', '', 'Active'),
(50, 'DMT-CHA-53-9167', 'TOYOTA', 'SAIF POWERTEC LIMITED', '2019-10-16', '2020-10-16', '2019-10-17', '2020-10-24', '2019-10-19', '2020-10-18', '2017-10-16', '2020-10-16', '2KD-1590737', 'NZT260-3069111', '2014-10-16', 'SPL-15', 'Hiace', '2500', 0, 15, '2007', 'SAIF POWERTEC LIMITED', 'division', 'Kamlapur', '', ''),
(51, 'DMT-MA-14-0559', 'TATA', 'NITOL MOTORS LTD.', '2018-12-21', '2019-12-21', '2019-05-21', '2020-05-20', '2019-07-14', '2020-07-13', '2017-12-21', '2020-12-21', '497SPTC35NYY656579', 'MAT357522B8R47077', '2011-12-21', 'SPL-16', 'COVERED VAN', '2956', 0, 16, '2011', 'SAIF PLASTIC & POLYMER LTD.', 'SPPL', 'Gazipur-Pubail', '', 'Active'),
(52, 'DMT-U-11-2809', 'EICHER MOTORS LTD.', 'UNITED LEASING LTD.', '2019-05-26', '2020-05-26', '2019-08-06', '2020-08-13', '2019-07-17', '2020-07-16', '2016-05-30', '2019-05-30', 'E483CDDC606489', 'MC226HRC0DC080839', '2013-05-26', 'SPL-17', 'COVERED VAN', '3298', 0, 17, '2013', 'SAIF PLASTIC & POLYMER LTD.', 'SPPL', 'Gazipur-Pubail', '', 'Active'),
(53, 'DMT-CHA-53-8067', 'TOYOTA', 'SAIF POWERTEC LIMITED', '2019-01-22', '2020-01-22', '2019-01-21', '2020-01-24', '2019-01-30', '2020-01-29', '2017-01-22', '2020-01-22', '1TR-0693087', 'TRH200-5007611', '2014-01-22', 'SPL-18', 'MICROBUS', '2000', 0, 18, '2008', 'SAIF POWERTEC LIMITED', 'RENEWABLE ENERGY', 'Khawja Tower', '', ''),
(54, 'DMT-CHA-54-1147', 'TOYOTA', 'PRIME BANK LIMITED', '2019-08-22', '2020-08-22', '2018-12-10', '2019-12-19', '2018-12-20', '2019-12-19', '2017-08-11', '2020-08-11', '1RZ-2614468', 'RZH102-6002533', '2005-08-22', 'SPL-19', 'HAICE ', '1998', 0, 19, '2001', 'SAIF POWERTEC LIMITED', 'division', 'Kamlapur', '', ''),
(55, 'DMT-GA-33-0990', 'BMW', 'SAIF POWERTEC LIMITED', '2019-11-22', '2020-11-22', '2018-12-06', '2019-12-13', '2019-02-12', '2020-02-11', '2011-11-22', '2028-11-22', '76777729', 'WBAFW12050C833672', '2011-11-22', 'SPL-2', '320D', '1995', 0, 2, '2011', 'SAIF POWERTEC LIMITED', 'CORPORATE', 'Bashundara House', '', 'Active'),
(56, 'DMT-THA-13-0278', 'TOYOTA', 'SAIF POWERTEC LIMITED .', '2019-05-31', '2020-05-31', '2019-08-21', '2020-08-21', '2019-07-11', '2020-07-10', '2017-05-31', '2020-05-31', '1TR-0172787', 'TRY230-0104139', '2011-05-31', 'SPL-20', 'PICUP (SINGLE CABIN)', '1998', 0, 20, '2005', 'SAIF PLASTIC & POLYMER LTD.', 'SPPL', 'Gazipur-Pubail', '', 'Active'),
(57, 'DMT-KHA-13-0862', 'TOYOTA', 'SAIF POWERTEC LIMITED .', '2019-02-28', '2020-02-28', '2019-05-08', '2020-05-07', '2019-07-17', '2020-07-16', '0000-00-00', '0000-00-00', '2NZ-2575720', 'NCP50-0018776', '0000-00-00', 'SPL-21', 'CAR PROBOX', '1298', 0, 21, '2003', 'SAIF POWERTEC LIMITED', 'CORPORATE', 'CTG', '', 'Active'),
(58, 'DMT-KHA-12-4614', 'TOYOTA', 'SAIF POWERTEC LTD.', '2019-11-21', '2020-11-21', '2019-03-03', '2020-03-02', '2019-01-24', '2020-01-23', '0000-00-00', '0000-00-00', '2NZ-2770620', 'NCP50-0016502', '2007-11-21', 'SPL-22', 'CAR(ESTATE)', '1290', 0, 22, '2003', 'SAIF POWERTEC LIMITED', 'CORPORATE', 'Bashundara House', '', 'Active'),
(59, 'DM-CHA-53-8176', 'TOYOTA', 'SAIF POWERTEC LTD.', '2019-02-17', '2020-02-17', '2019-03-20', '2020-03-20', '2019-03-10', '2020-03-09', '2017-02-17', '2020-02-17', '1TR0711592', 'TR8200-0090118', '2014-02-17', 'SPL-23', 'HAICE ', '2000', 0, 23, '2008', 'SAIF POWERTEC LIMITED', 'CORPORATE', 'chittagong', '', 'Active'),
(60, 'DMT-CHA-11-4662', 'TOYOTA', 'TARAFDER MD.RUHUL AMIN', '2019-03-23', '2020-03-23', '2019-05-08', '2020-05-07', '2019-05-08', '2020-05-07', '0000-00-00', '0000-00-00', '7K-0268668', 'KR42-0036532', '2004-03-23', 'SPL-24', 'MICROBUS', '1800', 0, 24, '1999', 'SAIF POWERTEC LIMITED', 'CORPORATE', 'Khawja Tower', '', 'Active'),
(61, 'DMT-CHA-53-8225', 'TOYOTA', 'SAIF POWERTEC LTD.', '2019-03-02', '2020-03-02', '2019-04-25', '2020-04-25', '2019-04-21', '2020-04-20', '2017-03-02', '2020-03-02', '1TR-0622145', 'TRH200-0080904', '2014-03-02', 'SPL-25', 'MICROBUS', '2000', 0, 25, '2008', 'SAIF POWERTEC LIMITED', 'CORPORATE', 'chittagong', '', 'Active'),
(62, 'DMT-CHA-51-7729', 'TOYOTA', 'SAIF POWERTEC LTD.', '2019-07-16', '2020-07-16', '2019-08-21', '2020-08-20', '2019-09-02', '2020-09-01', '0000-00-00', '0000-00-00', '7K-0654994', 'KR42-5027207', '2006-07-16', 'SPL-26', 'MICROBUS', '1781', 0, 26, '2003', 'SAIF POWERTEC LIMITED', 'ENERGY BUSINESS', 'Khawja Tower', '', ''),
(63, 'DMT-KHA-12-2286', 'TOYOTA', 'SAIF POWERTEC LTD.', '2019-08-10', '2020-08-10', '2018-12-18', '2019-12-17', '2019-09-05', '2020-09-04', '0000-00-00', '0000-00-00', '2NZ-2537856', 'NCP50-0007132', '2006-08-10', 'SPL-27', 'CAR(SALOON)', '1298', 0, 27, '2002', 'SAIF POWERTEC LIMITED', 'CORPORATE', 'chittagong', '', ''),
(64, 'DMT-CHA-51-7854', 'TOYOTA', 'SAIF POWERTEC LTD.', '2019-08-10', '2020-08-10', '2019-09-01', '2020-08-31', '2018-08-27', '2019-08-26', '0000-00-00', '0000-00-00', '7K-0568026', 'KR42-5015724', '0000-00-00', 'SPL-28', 'MICROBUS', '1781', 0, 28, '2003', 'SAIF POWERTEC LIMITED', 'CORPORATE', 'chittagong', '', ''),
(65, 'DMT-KHA-12-5875', 'TOYOTA', 'SAIF POWERTEC LTD.', '2019-05-27', '2020-05-27', '2018-07-11', '2019-07-10', '2018-06-14', '2019-06-13', '0000-00-00', '0000-00-00', '2NZ-3025638', 'NCP50-0023973', '2008-05-27', 'SPL-29', 'CAR(ESTATE)', '1298', 0, 29, '2004', 'SAIF POWERTEC LIMITED', 'CORPORATE', 'chittagong', '', 'Active'),
(66, 'DMT-GHA-13-0820', 'TOYOTA', 'SAIFPOWERTEC LIMITED', '2019-07-08', '2020-07-08', '2019-03-21', '2020-03-23', '2019-01-28', '2020-01-27', '2011-03-20', '2020-08-01', '2TR-0177257', 'TRN215-0006678', '2011-03-20', 'SPL-3', 'HILUX SURF', '2700', 4000000, 3, '2005', 'SAIF POWERTEC LIMITED', 'CORPORATE', 'Bashundara House', '', 'Active'),
(67, 'DMT-U-11-3629', 'EICHER ', 'SAIF POWERTEC LTD.', '2018-12-24', '2019-12-24', '2019-01-02', '2020-01-01', '2019-01-18', '2020-01-17', '2017-12-24', '2020-12-24', 'E413CDEH000938', 'MC2F1HRC2FH096797', '2014-12-24', 'SPL-30', 'COVERED VAN', '3298', 0, 30, 'myear', 'SAIF POWERTEC LIMITED', 'RENEWABLE ENERGY', 'Gazipur-Pubail', '', ''),
(68, 'CMT-GHA-11-1718', 'TOYOTA', 'E-ENGINEERING LTD.', '2019-02-13', '2020-02-13', '2019-02-26', '2020-02-25', '2019-03-13', '2020-03-12', '0000-00-00', '0000-00-00', '2TR-1068840', 'TRJ150-0019331', '2012-02-13', 'SPL-31', 'HARD JEEP', '2690', 0, 31, '2011', 'SAIF POWERTEC LIMITED', 'CORPORATE', 'chittagong', '', 'Active'),
(69, 'DMT-GA-32-4609', 'TOYOTA', 'SAIF POWERTEC LTD.', '2019-07-17', '2020-07-17', '2019-07-21', '2020-07-21', '2019-07-20', '2020-07-19', '0000-00-00', '0000-00-00', '1NZ-E009470', 'NCP51-0276649', '2017-07-17', 'SPL-32', 'CAR(SALOON)', '1500', 0, 32, '2012', 'SAIF POWERTEC LIMITED', 'RENEWABLE ENERGY', 'Khawja Tower', '', 'Active'),
(70, 'DMT-GA-37-8327', 'TOYOTA', 'SAIF POWERTEC LTD.', '2018-11-13', '2019-11-13', '2018-11-06', '2019-11-10', '2019-11-16', '2020-11-15', '0000-00-00', '0000-00-00', '1NZ-D614106', 'NZT260-3064160', '2014-11-13', 'SPL-33', 'CAR(SALOON)', '1500', 0, 33, '2010', 'SAIF POWERTEC LIMITED', 'RENEWABLE ENERGY', 'Khawja Tower', '', 'Active'),
(71, 'DMT-GA-17-8123', 'TOYOTA', 'ONE BANK LTD.', '2019-10-30', '2020-10-30', '2019-07-10', '2020-07-09', '2019-01-28', '2020-01-27', '0000-00-00', '0000-00-00', '1NZ-A831366', 'NZT240-0043839', '2005-10-30', 'SPL-34', 'CAR(SALOON)', '1500', 0, 34, '2005', 'SAIF POWERTEC LIMITED', 'SUB-STATION', 'Rupayan Center', '', 'Active'),
(72, 'DMT-GA-37-8302', 'TOYOTA', 'SAIF POWERTEC LTD.', '2019-11-12', '2020-11-12', '2019-11-13', '2020-11-13', '2019-11-14', '2020-11-13', '0000-00-00', '0000-00-00', '1NZ-D762405', 'NZT260-3084047', '2014-11-12', 'SPL-35', 'CAR(SALOON)', '1500', 0, 35, '2010', 'SAIF POWERTEC LIMITED', 'CORPORATE', 'chittagong', '', 'Active'),
(73, 'DMT-KHA-12-6497', 'TOYOTA', 'DHAKA BANK LTD.', '2019-09-22', '2020-09-22', '2019-01-22', '2020-01-23', '2019-09-25', '2020-09-24', '0000-00-00', '0000-00-00', '2NZ-3518317', 'NCP50-0039169', '2008-09-22', 'SPL-36', 'CAR(ESTATE)', '1298', 0, 36, '2005', 'SAIF POWERTEC LIMITED', 'CORPORATE', 'Rupayan Center', '', ''),
(74, 'DMT-GA-21-3016', 'TOYOTA', 'SAIF POWERTEC LTD.', '2019-11-27', '2020-11-27', '2018-12-18', '2019-12-18', '2019-01-23', '2020-01-22', '0000-00-00', '0000-00-00', '1NZ-B347342', 'NCP51-0074135', '2007-11-27', 'SPL-37', 'CAR(ESTATE)', '1490', 0, 37, '2003', 'SAIF POWERTEC LIMITED', 'CORPORATE', 'chittagong', '', 'Active'),
(75, 'DMT-MA-54-2307', 'TATA', 'SAIF POWERTEC LTD.', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '275IDI05CYYS52930', 'MAT445051BZR25344', '2011-05-19', 'SPL-39', 'COVERED VAN', '700', 0, 39, '2011', 'SAIF POWERTEC LIMITED', 'RENEWABLE ENERGY', 'Gazipur-Pubail', '', 'Sold'),
(76, 'DMT-GHA-13-1900', 'MAZDA', 'TARAFDER MD. RUHUL AMIN', '2019-04-08', '2020-04-08', '2019-06-13', '2020-06-12', '2019-02-12', '2020-02-11', '0000-00-00', '0000-00-00', 'L320-213637', 'ER3P-103087', '2009-04-04', 'SPL-4', 'CX-7', '2300', 0, 4, '2007', 'SAIF POWERTEC LIMITED', 'CORPORATE', 'Bashundara House', '', 'Active'),
(77, 'DMT-GA-33-7494', 'TOYOTA', 'SAIF POWERTEC LTD.', '2019-09-26', '2020-09-26', '2019-07-18', '2020-07-26', '2018-12-11', '2019-12-10', '0000-00-00', '0000-00-00', '1NZ-B878905', 'NZE124-0057531', '2012-09-26', 'SPL-40', 'CAR(SALOON)', '1496', 0, 40, '2005', 'E-ENGINEERING LIMITED', 'EEL', 'chittagong', '', 'Active'),
(78, 'DMT-GA-37-9894', 'TOYOTA', 'SAIF POWERTEC LTD.', '2019-01-08', '2020-01-08', '2019-01-09', '2020-01-10', '2019-01-16', '2020-01-15', '0000-00-00', '0000-00-00', '1NZ-D428422', 'NZT260-3045906', '2015-01-08', 'SPL-41', 'CAR(SALOON)', '1500', 0, 41, '2009', 'SAIF POWERTEC LIMITED', 'ENERGY BUSINESS', 'Khawja Tower', '', ''),
(79, 'DMT-CHA-53-9471', 'TOYOTA', 'SAIF POWERTEC LTD.', '2019-01-26', '2020-01-26', '2019-01-21', '2020-01-24', '2019-02-12', '2020-02-11', '0000-00-00', '0000-00-00', '2SZ-DAH7284', 'S402M-0001424', '2015-01-26', 'SPL-42', 'MICROBUS', '1500', 0, 42, '2008', 'SAIF POWERTEC LIMITED', 'CORPORATE', 'chittagong', '', 'Sold'),
(80, 'DMT-CHA-13-9798', 'TOYOTA', 'PRIME BANK LTD.', '2019-02-06', '2020-02-06', '2019-04-24', '2020-04-24', '2019-06-12', '2020-06-11', '0000-00-00', '0000-00-00', '7K-0773973', 'KR42-5046431', '2011-02-06', 'SPL-43', 'MICROBUS', '1800', 0, 43, '2005', 'SAIF POWERTEC LIMITED', 'SERVICE & SPARE', 'Khawja Tower', '', 'Active'),
(81, 'DMT-GA-39-1243', 'TOYOTA', 'SAIF POWERTEC LTD.', '2019-02-22', '2020-02-22', '2019-03-20', '2020-03-19', '2019-04-16', '2020-04-15', '0000-00-00', '0000-00-00', '3SZ-DAK0811', 'S402M-0003322', '2015-02-21', 'SPL-44', 'SMALL BUS', '1500', 0, 44, '2008', 'SAIF POWERTEC LIMITED', 'BATTERY', 'Khawja Tower', '', 'Active'),
(82, 'DMT-GA-39-1517', 'TOYOTA', 'SAIF POWERTEC LTD.', '2019-02-26', '2020-02-26', '2019-05-21', '2020-05-20', '2019-04-21', '2020-04-20', '0000-00-00', '0000-00-00', '3SZ-DAJ7174', 'S402M-0002923', '2015-02-26', 'SPL-45', 'SMALL BUS', '1500', 0, 45, '2008', 'SAIF POWERTEC LIMITED', 'CORPORATE', 'chittagong', '', 'Sold'),
(83, 'DMT-GA-39-0809', 'TOYOTA', 'SAIF POWERTEC LTD.', '2019-02-09', '2020-02-09', '2019-02-13', '2020-02-19', '2019-02-15', '2020-02-14', '0000-00-00', '0000-00-00', '1NZ-D461666', 'NZE141-9114593', '2015-02-09', 'SPL-46', 'CAR(SALOON)', '1500', 0, 46, '2009', 'SAIF POWERTEC LIMITED', 'BATTERY', 'Khawja Tower', '', ''),
(84, 'DMT-CHA-53-9829', 'TOYOTA', 'SAIF POWERTEC LTD.', '2019-05-24', '2020-05-24', '2019-06-11', '2020-06-10', '2019-06-12', '2020-06-11', '0000-00-00', '0000-00-00', '3ZR-A537061', 'ZRR70-0335145', '2015-05-24', 'SPL-47', 'MICROBUS', '2000', 0, 47, '2010', 'SAIF POWERTEC LIMITED', 'CORPORATE', 'Bashundara House', '', 'Active'),
(85, 'DMT-CHA-53-9874', 'TOYOTA', 'SAIF POWERTEC LTD.', '2019-06-01', '2020-06-01', '2019-07-07', '2020-07-06', '2019-07-19', '2020-07-18', '0000-00-00', '0000-00-00', '3ZR-A471840', 'ZRR70-0299922', '2015-06-01', 'SPL-48', 'MICROBUS', '2000', 0, 48, '2010', 'SAIF POWERTEC LIMITED', 'CORPORATE', 'Bashundara House', '', 'Active'),
(86, 'DMT-CHA-56-0030', 'TOYOTA', 'SAIF POWERTEC LTD.', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '3SZ-DBL2778', 'S402M-0016979', '2015-07-04', 'SPL-49', 'MICROBUS', '1500', 0, 49, '2010', 'SAIF POWERTEC LIMITED', 'RENEWABLE ENERGY', 'Khawja Tower', '', 'Sold'),
(87, 'DMT-GA-31-0928', 'HYUNDAI', 'SAIF POWERTEC LIMITED', '2018-12-13', '2019-12-13', '2019-03-03', '2020-03-02', '2019-02-12', '2020-02-11', '0000-00-00', '0000-00-00', 'G4KDA552922', 'KMHEC41BMBA-213586', '2007-07-05', 'SPL-5', 'SONATA', '2000', 0, 5, '2010', 'SAIF POWERTEC LIMITED', 'CORPORATE', 'chittagong', '', ''),
(88, 'DMT-GHA-15-2258', 'TOYOTA', 'DHAKA BANK LTD.', '2019-02-04', '2020-02-04', '2016-02-04', '2019-12-31', '2019-02-12', '2020-02-11', '0000-00-00', '0000-00-00', '2TR-1650816', 'TRJ150-0060632', '2016-02-04', 'SPL-50', 'HARD JEEP', '2693', 0, 50, '2015', 'SAIF POWERTEC LIMITED', 'CORPORATE', 'Bashundara House', '', ''),
(89, 'DMT-GA-20-5341', 'TOYOTA', 'SAIF POWERTEC LTD.', '2019-02-10', '2020-02-10', '2019-03-04', '2020-03-03', '2019-02-12', '2020-02-11', '0000-00-00', '0000-00-00', '1NZ-D797475', 'NZT260-3089877', '2016-02-10', 'SPL-51', 'CAR(SALOON)', '1500', 0, 51, '2010', 'SAIF POWERTEC LIMITED', 'CORPORATE', 'Khawja Tower', '', ''),
(90, 'DMT-GHA-15-2745', 'TOYOTA', 'DHAKA BANK LTD.', '2019-03-30', '2020-03-30', '2016-03-30', '2019-12-31', '2019-04-03', '2020-04-02', '0000-00-00', '0000-00-00', '2TR-1663532', 'TRJ150-0061523', '2016-03-30', 'SPL-52', 'HARD JEEP', '2700', 0, 52, '2015', 'SAIF POWERTEC LIMITED', 'CORPORATE', 'Bashundara House', '', 'Active'),
(91, 'DMT-BHA-11-0976', 'BMW', 'SAIF POWERTEC LTD.', '2018-12-08', '2019-12-08', '2019-07-15', '2020-07-14', '2019-08-14', '2020-08-13', '0000-00-00', '0000-00-00', '01675951', 'WBAEH32060B720806', '2005-12-08', 'SPL-53', 'CAR(SALOON)', '2996', 0, 53, '2005', 'SAIF POWERTEC LIMITED', 'CORPORATE', 'Bashundara House', '', 'Active'),
(92, 'DMT-CHA-56-0981', 'TOYOTA', 'SAIF POWERTEC LTD.', '2019-05-12', '2020-05-12', '2019-05-12', '2020-05-15', '2019-06-12', '2020-06-11', '2016-05-12', '2019-12-01', '1TR-1000749', 'TRH200-5013768', '2016-05-12', 'SPL-54', 'MICROBUS', '2000', 0, 54, '2011', 'SAIF POWERTEC LIMITED', 'BATTERY', 'Gazipur-Pubail', '', 'Active'),
(93, 'DMT-DA-12-0200', 'TATA', 'SAIF POWERTEC LTD.', '2019-06-26', '2020-06-26', '2019-07-14', '2020-07-14', '2019-07-18', '2020-07-17', '2016-06-26', '2020-01-06', '497TC93BTY805135', 'MAT386537G8R03523', '2016-06-26', 'SPL-55', 'COVERED VAN', '3783', 0, 55, '2016', 'SAIF POWERTEC LIMITED', 'BATTERY', 'Gazipur-Pubail', '', 'Active'),
(94, 'DMT-DA-12-0196', 'TATA', 'SAIF POWERTEC LTD.', '2019-06-16', '2020-06-16', '2019-07-14', '2020-07-14', '2019-07-18', '2020-07-17', '2016-06-16', '2020-01-06', '497TC93BTY804291', 'MAT386537G8R03024', '2016-06-16', 'SPL-56', 'COVERED VAN', '3783', 0, 56, '2016', 'SAIF POWERTEC LIMITED', 'BATTERY', 'Gazipur-Pubail', '', 'Active'),
(95, 'DMT-GHA-17-1442', 'TOYOTA', 'IPDC OF BANGLADESH LTD.', '2019-09-06', '2020-09-06', '2016-09-06', '2019-12-31', '2019-09-09', '2020-09-08', '0000-00-00', '0000-00-00', '2TR-1665128', 'TRJ150-0061606', '2016-09-06', 'SPL-57', 'HARD JEEP', '2700', 0, 57, 'myear', 'SAIF POWERTEC LIMITED', 'CORPORATE', 'Rupayan Center', '', 'Active'),
(96, 'CMT-NA-11-4556', 'TATA', 'SAIF POWERTEC LTD.', '2018-03-27', '2019-03-27', '2018-04-12', '2019-04-11', '2018-04-01', '2019-03-31', '2016-03-27', '2019-03-26', '275IDI05KUYS94597', 'MAT445235FZR40811', '2016-03-27', 'SPL-58(1)', 'PICKUP(SINGLE CABIN)', '700', 0, 58, '2015', 'SAIF POWERTEC LIMITED', 'CORPORATE', 'chittagong', '', ''),
(97, 'CMT-NA-11-4557', 'TATA', 'SAIF POWERTEC LTD.', '2018-03-27', '2019-03-27', '2018-04-12', '2019-04-11', '2018-04-01', '2019-03-31', '2016-03-27', '2019-03-26', '275IDI05NUYS97048', 'MAT445235FZR40971', '2016-03-27', 'SPL-58(2)', 'PICKUP(SINGLE CABIN)', '700', 0, 58, '2015', 'SAIF POWERTEC LIMITED', 'CORPORATE', 'chittagong', '', ''),
(98, 'DMT-GA-22-7311', 'Toyota/Probox', 'SAIF POWERTEC LTD.', '2019-11-27', '2020-11-27', '2019-11-18', '2020-11-23', '2019-11-28', '2020-11-27', '0000-00-00', '0000-00-00', '1NZ-D861457', 'NCP51-0260978', '0000-00-00', 'SPL-59', '', '1500', 0, 59, '2011', 'SAIF POWERTEC LIMITED', 'CORPORATE', 'Gazipur-Pubail', '', 'Active'),
(99, 'DMT-GA-14-8515', 'TOYOTA', 'THE PREMIER BANK LIMITED', '2019-11-22', '2020-11-22', '2018-12-09', '2019-12-09', '2019-10-13', '2020-10-12', '0000-00-00', '0000-00-00', '3RZ-2274250', 'RCH41-0040581', '2003-11-22', 'SPL-6', 'REGIUS', '2690', 0, 6, '2000', 'SAIF POWERTEC LIMITED', 'CORPORATE', 'Bashundara House', '', 'Active'),
(100, 'DMT-GA-22-7312', 'TOYOTA', 'IPDC OF BANGLADESH LTD.', '2019-11-27', '2020-11-27', '2019-11-24', '2020-11-23', '2019-11-28', '2020-11-27', '0000-00-00', '0000-00-00', '1NZ-D864474', 'NCP51-0261429', '2016-11-27', 'SPL-60', 'CAR(ESTATE)', '1500', 0, 60, '2011', 'SAIF POWERTEC LIMITED', 'RENEWABLE ENERGY', 'Khawja Tower', '', 'Active'),
(101, 'DMT-GA-22-7314', 'TOYOTA', 'IPDC OF BANGLADESH LTD.', '2019-11-27', '2020-11-27', '2019-11-14', '2020-11-26', '2019-11-28', '2020-11-27', '0000-00-00', '0000-00-00', '1NZ-D832541', 'NZE141-9181083', '2016-11-27', 'SPL-61', 'CAR(SALOON)', '1500', 0, 61, '2011', 'SAIF POWERTEC LIMITED', 'SERVICE & SPARE', 'Khawja Tower', '', 'Active'),
(102, 'DMT-GA-22-7310', 'TOYOTA', 'IPDC OF BANGLADESH LTD.', '2019-11-27', '2020-11-27', '2018-11-12', '2019-11-27', '2019-11-27', '2020-11-27', '0000-00-00', '0000-00-00', '1NZ-D822696', 'NCP51-0256755', '2016-11-27', 'SPL-62', 'CAR(SALOON)', '1500', 0, 62, '2011', 'SAIF POWERTEC LIMITED', 'CORPORATE', 'Khawja Tower', '', 'Active'),
(103, 'DMT-GA-22-7313', 'TOYOTA', 'IPDC OF BANGLADESH LTD.', '2019-11-27', '2020-11-27', '2019-11-24', '2020-11-26', '2019-11-28', '2020-11-27', '0000-00-00', '0000-00-00', '1NZ-5900305', 'NCP51-0255535', '2016-11-27', 'SPL-63', 'CAR(ESTATE)', '1500', 0, 63, '2011', 'SAIF POWERTEC LIMITED', 'CORPORATE', 'Rupayan Center', '', 'Active'),
(104, 'DMT-GA-22-7316', 'TOYOTA', 'IPDC OF BANGLADESH LTD.', '2019-11-27', '2020-11-27', '2019-11-24', '2020-11-26', '2019-11-28', '2020-11-27', '0000-00-00', '0000-00-00', '1NZ-D842445', 'NZE141-9182710', '2016-11-27', 'SPL-64', 'CAR(SALOON)', '1500', 0, 64, '2011', 'SAIF POWERTEC LIMITED', 'BATTERY', 'Gazipur-Pubail', '', 'Active'),
(105, 'DMT-GA-22-7317', 'TOYOTA', 'IPDC OF BANGLADESH LTD.', '2019-11-27', '2020-11-27', '2019-11-18', '2020-11-26', '2019-11-28', '2020-11-27', '0000-00-00', '0000-00-00', '1NZ-D876899', 'NZE141-9188138', '2016-11-27', 'SPL-65', 'CAR(SALOON)', '1500', 0, 65, '2011', 'SAIF POWERTEC LIMITED', 'CORPORATE', 'Bashundara House', '', 'Active'),
(106, 'DMT-GA-22-7318', 'TOYOTA', 'IPDC OF BANGLADESH LTD.', '2019-11-27', '2020-11-27', '2019-11-18', '2020-11-26', '2019-11-28', '2020-11-27', '0000-00-00', '0000-00-00', '1NZ-D853262', 'NZE141-9184768', '2016-11-27', 'SPL-66', 'CAR(SALOON)', '1500', 0, 66, '2011', 'SAIF POWERTEC LIMITED', 'CORPORATE', 'Rupayan Center', '', 'Active'),
(107, 'DMT-GA-22-0497', 'TOYOTA', 'SAIF POWERTEC LIMITED .', '2019-08-23', '2020-08-23', '2019-08-20', '2020-08-22', '2018-12-23', '2019-12-22', '0000-00-00', '0000-00-00', '1NZ-D777611', 'NZE141-6173795', '2015-08-23', 'SPL-67', 'Axio', '1500', 0, 67, '2010', 'SAIF POWERTEC LIMITED', 'RENEWABLE ENERGY', 'Khawja Tower', '', ''),
(108, 'DMT-GHA-15-5376', 'NISSAN', 'E-ENGINEERING LTD.', '2019-03-09', '2020-03-09', '2019-03-10', '2020-03-09', '2019-03-12', '2020-03-11', '0000-00-00', '0000-00-00', 'MR20-522729B', 'NT32-004460', '2017-03-09', 'SPL-68', 'HARD JEEP', '2000', 0, 68, '2013', 'E-ENGINEERING LIMITED', 'EEL', 'Khawja Tower', '', 'Active'),
(109, 'DMT-BHA-11-1088', 'BMW', 'DUTCH BANGLA BANKLTD.', '2019-05-23', '2020-05-23', '2019-08-21', '2020-08-20', '2019-04-05', '2020-04-04', '0000-00-00', '0000-00-00', '60493720', 'WBSNB92040CU17615', '2006-05-23', 'SPL-69', 'CAR(SALOON)', '4999', 0, 69, '2006', 'SAIF POWERTEC LIMITED', 'CORPORATE', 'Bashundara House', '', 'Active'),
(110, 'DMT-GA-37-9164', 'AUDI', 'SAIFPOWERTEC LIMITED', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', '0000-00-00', 'CHJ007487', 'WAUZZZ4H6DN028361', '2014-12-09', 'SPL-7', 'A8L', '2000', 0, 7, '2013', 'SAIF POWERTEC LIMITED', 'CORPORATE', 'Bashundara House', '', 'Sold'),
(111, 'DMT-GHA-15-5706', 'NISSAN', 'SAIF POWERTEC LTD.', '2019-04-13', '2020-04-13', '2018-12-10', '2019-12-25', '2018-04-16', '2019-04-15', '0000-00-00', '0000-00-00', 'MR20-536141B', 'NT32-008388', '2017-04-13', 'SPL-70', 'HARD JEEP', '2000', 0, 70, '2014', 'SAIF POWERTEC LIMITED', 'CORPORATE', 'Bashundara House', '', ''),
(112, 'DMT-GHA-17-2189', 'NISSAN', 'IPDC FINANCE LTD.', '2019-04-11', '2020-04-11', '2017-04-11', '2020-12-31', '2019-04-12', '2020-04-11', '0000-00-00', '0000-00-00', 'VK56202561A', 'JN1TANY62Z0035107', '2017-04-11', 'SPL-71', 'HARD JEEP', '5552', 0, 71, '2016', 'SAIF POWERTEC LIMITED', 'CORPORATE', 'Bashundara House', '', 'Active'),
(113, 'DMT-GHA-17-2422', 'NISSAN', 'LANKABANGLA FINANCE LTD.', '2019-06-04', '2020-06-04', '2017-06-04', '2021-01-05', '2019-06-12', '2020-06-11', '0000-00-00', '0000-00-00', 'VK56203811A', 'JN1TANY62Z0035112', '2017-06-04', 'SPL-72', 'HARD JEEP', '5552', 0, 72, 'myear', 'SAIF POWERTEC LIMITED', 'CORPORATE', 'Khawja Tower', '', 'Active'),
(114, 'DMT-CHA-56-2324', 'TOYOTA', 'E-ENGINEERING LTD.', '2019-07-18', '2020-07-18', '2019-07-21', '2020-07-20', '2019-07-20', '2020-07-19', '2017-07-18', '2020-07-18', '1TR-1273478', 'TRH200-0176429', '2017-07-18', 'SPL-73', 'MICROBUS', '2000', 0, 73, '2013', 'E-ENGINEERING LIMITED', 'EEL', 'Khawja Tower', '', 'Active'),
(115, 'DMT-CHA-56-2360', 'TOYOTA', 'SAIF POWERTEC LTD.', '2019-07-30', '2020-07-30', '2019-07-31', '2020-07-30', '2019-08-01', '2020-07-31', '2017-07-30', '2020-07-30', '1TR-1271527', 'TRH200-0176074', '2017-07-30', 'SPL-74', 'MICROBUS', '2000', 0, 74, '2013', 'SAIF POWERTEC LIMITED', 'BATTERY', 'Khawja Tower', '', ''),
(116, 'DMT-GA-32-6567', 'TOYOTA', 'SAIF POWERTEC LTD.', '2019-09-13', '2020-09-13', '2019-09-18', '2020-09-17', '2019-09-14', '2020-09-13', '0000-00-00', '0000-00-00', '1NZ-E011176', 'NCP51-0276841', '2017-09-13', 'SPL-75', 'CAR(SALOON)', '1500', 0, 75, '2012', 'SAIF POWERTEC LIMITED', 'CORPORATE', 'chittagong', '', 'Active'),
(117, 'DMT-GA-32-6704', 'TOYOTA', 'LANKABANGLA FINANCE LTD.', '2019-09-19', '2020-09-19', '2019-09-18', '2020-09-18', '2019-09-20', '2020-09-19', '0000-00-00', '0000-00-00', '1NZ-E051446', 'NZE141-9211118', '2017-09-19', 'SPL-76', 'CAR(SALOON)', '1500', 0, 76, '2012', 'E-ENGINEERING LIMITED', 'EEL', 'Khawja Tower', '', ''),
(118, 'DMT-CHA-56-2478', 'TOYOTA', 'LANKABANGLA FINANCE LTD.', '2019-09-19', '2020-09-19', '2019-10-09', '2020-10-08', '2019-09-20', '2020-09-19', '2017-09-19', '2020-09-19', '1TR-1131738', 'TRH200-0157196', '2017-09-19', 'SPL-77', 'MICROBUS', '2000', 0, 77, '2012', 'SAIF POWERTEC LIMITED', 'BATTERY', 'Gazipur-Pubail', '', 'Active'),
(119, 'DMT-GA-32-6702', 'TOYOTA', 'LANKABANGLA FINANCE LTD.', '2019-09-19', '2020-09-19', '2019-10-07', '2020-10-06', '2019-09-20', '2020-09-19', '0000-00-00', '0000-00-00', '1NZ-E057785', 'NCP51-0280600', '2017-09-19', 'SPL-78', 'CAR(SALOON)', '1500', 0, 78, '2012', 'SAIF MARITIME LTD', '', 'chittagong', '', 'Active'),
(120, 'DMT-GA-32-6703', 'TOYOTA', 'LANKABANGLA FINANCE LTD.', '2019-09-19', '2020-09-19', '2019-09-18', '2020-09-18', '2019-09-20', '2020-09-19', '0000-00-00', '0000-00-00', '1NZ-E023288', 'NCP51-0277983', '2017-09-19', 'SPL-79', 'CAR(ESTATE)', '1500', 0, 79, '2012', 'SAIF POWERTEC LIMITED', 'CORPORATE', 'Rupayan Center', '', ''),
(121, 'DMT-GA-21-3468', 'TOYOTA', 'SAIFPOWERTEC LIMITED', '2018-12-11', '2019-12-11', '2019-07-07', '2020-07-06', '2019-02-12', '2020-02-11', '0000-00-00', '0000-00-00', '1NZ-2725928', 'NZE121-0229537', '2007-12-11', 'SPL-8', 'FIELDER', '1500', 0, 8, '2003', 'SAIF POWERTEC LIMITED', 'CORPORATE', 'Khawja Tower', '', ''),
(122, 'DMT-GA-32-6745', 'TOYOTA', 'LANKABANGLA FINANCE LTD.', '2019-09-20', '2020-09-20', '2019-09-18', '2020-09-19', '2019-09-21', '2020-09-20', '0000-00-00', '0000-00-00', '1NZ-E038924', 'NCP51-0279101', '2017-09-20', 'SPL-80', 'CAR(SALOON)', '1500', 0, 80, '2012', 'SAIF POWERTEC LIMITED', 'CORPORATE', 'Khawja Tower', '', ''),
(123, 'DMT-GA-32-6754', 'TOYOTA', 'LANKABANGLA FINANCE LTD.', '2019-09-20', '2020-09-20', '2019-10-07', '2020-10-06', '2019-09-21', '2020-09-20', '0000-00-00', '0000-00-00', '1NZ-E064997', 'NZE141-9213418', '2017-09-20', 'SPL-81', 'CAR(SALOON)', '1500', 0, 81, '2012', 'SAIF POWERTEC LIMITED', 'CORPORATE', 'chittagong', '', 'Active'),
(124, 'DMT-MA-13-0602', 'TATA', 'LANKABANGLA FINANCE LTD.', '2019-09-26', '2020-09-26', '2019-09-24', '2020-09-26', '2019-09-27', '2020-09-26', '2017-09-26', '2020-09-26', '497SPTC36GSY621631', 'MAT357571H8R12800', '2017-09-26', 'SPL-82', 'DELIVERY VAN', '2956', 0, 82, '2017', 'SAIF POWERTEC LIMITED', 'BATTERY', 'Gazipur-Pubail', '', 'Active'),
(125, 'DMT-MA-13-0603', 'TATA', 'LANKABANGLA FINANCE LTD.', '2019-09-26', '2020-09-26', '2019-10-06', '2020-10-05', '2019-09-27', '2020-09-26', '2017-09-26', '2020-09-26', '497SPTC44NTY639126', 'MAT374473GSR11174', '2017-09-26', 'SPL-83', 'DELIVERY VAN', '2956', 0, 83, 'myear', 'SAIF POWERTEC LIMITED', 'BATTERY', 'Gazipur-Pubail', '', 'Active'),
(126, 'DMT-MA-13-0604', 'TATA', 'LANKABANGLA FINANCE LTD.', '2019-09-26', '2020-09-26', '2019-09-25', '2020-09-26', '2019-09-27', '2020-09-26', '2017-09-26', '2020-09-26', '497SPTC36FSY620939', 'MAT357571H8R12609', '2017-09-26', 'SPL-84', 'DELIVERY VAN', '2956', 0, 84, 'myear', 'SAIF POWERTEC LIMITED', 'BATTERY', 'Gazipur-Pubail', '', 'Active'),
(127, 'DMT-MA-13-0605', 'TATA', 'LANKABANGLA FINANCE LTD.', '2019-09-26', '2020-09-26', '2018-09-24', '2019-09-26', '2019-09-27', '2020-09-26', '2017-09-26', '2020-09-26', '497SPTC44PTY644142', 'MAT374473GSR12250', '2017-09-26', 'SPL-85', 'DELIVERY VAN', '2956', 0, 85, '2017', 'SAIF POWERTEC LIMITED', 'BATTERY', 'Gazipur-Pubail', '', 'Active'),
(128, 'DMT-MA-13-0606', 'TATA', 'LANKABANGLA FINANCE LTD.', '2019-09-26', '2020-09-26', '2019-10-06', '2020-10-05', '2019-09-27', '2020-09-26', '2017-09-26', '2020-09-26', '497SPTC36FSY621333', 'MAT357571H8R12695', '2017-09-26', 'SPL-86', 'DELIVERY VAN', '2956', 0, 86, '2017', 'SAIF POWERTEC LIMITED', 'BATTERY', 'Gazipur-Pubail', '', 'Active'),
(129, 'DMT-CHA-56-2605', 'TOYOTA', 'E-ENGINEERING LTD.', '2018-10-25', '2019-10-26', '2018-10-29', '2019-10-28', '2019-10-29', '2020-10-28', '0000-00-00', '0000-00-00', '1TR-1168761', 'TRH200-5016967', '2017-10-26', 'SPL-87', 'MICROBUS', '2000', 0, 87, '2012', 'E-ENGINEERING LIMITED', 'EEL', 'chittagong', '', ''),
(130, 'DMT-GA-32-8951', 'TOYOTA', 'SAIF POWERTEC LTD.', '2019-11-27', '2020-11-27', '2018-11-25', '2019-11-26', '2019-11-28', '2020-11-28', '0000-00-00', '0000-00-00', '1NZ-E084441', 'NCP51-0283236', '2017-11-27', 'SPL-88', 'CAR(ESTATE)', '1500', 0, 88, '2012', 'SAIF POWERTEC LIMITED', 'BATTERY', 'Khawja Tower', '', 'Active'),
(131, 'DMT-GHA-15-7909', 'NISSAN', 'LANKABANGLA FINANCE LTD.', '2019-12-03', '2020-12-03', '2018-12-03', '2019-12-02', '2018-12-04', '2019-12-03', '0000-00-00', '0000-00-00', 'MR20-323003B', 'NT31-300128', '2017-12-03', 'SPL-89', 'HARD JEEP', '2000', 0, 89, '2012', 'E-ENGINEERING LIMITED', 'EEL', 'Khawja Tower', '', 'Active'),
(132, 'DMT-GHA-13-9092', 'HONDA', 'MAXON POWER LIMITED.', '2019-09-17', '2020-09-17', '2018-12-19', '2019-12-31', '2018-10-18', '2019-10-17', '0000-00-00', '0000-00-00', 'R20A51900692', 'JHLRM2850EC200683', '2014-09-17', 'SPL-9', 'CRV', '1997', 0, 9, '2014', 'MAXON POWER LIMITED', 'CORPORATE', 'Rupayan Center', '', 'Active'),
(133, 'DMT-CHA-56-2723', 'TOYOTA', 'LANKABANGLA FINANCE LTD.', '2018-12-02', '2019-12-03', '2018-12-02', '2019-12-02', '2018-12-04', '2019-12-03', '2017-12-03', '2020-12-03', '1TR-1208892', 'TRH200-0166941', '2017-12-03', 'SPL-90', 'MICROBUS', '2000', 0, 90, '2012', 'SAIF POWERTEC LIMITED', 'BATTERY', 'Gazipur-Pubail', '', ''),
(134, 'DMT-GA-32-9614', 'TOYOTA', 'SAIF POWERTEC LTD.', '2018-12-17', '2019-12-18', '2018-12-19', '2019-12-18', '2018-12-23', '2019-12-22', '0000-00-00', '0000-00-00', '1NZ-E130398', 'NCP51-0286972', '2017-12-18', 'SPL-91', 'CAR(SALOON)', '1500', 0, 91, '2012', 'SAIF POWERTEC LIMITED', 'BATTERY', 'Khawja Tower', '', ''),
(135, 'DMT-CHA-56-2802', 'TOYOTA', 'SAIF POWERTEC LTD.', '2018-12-27', '2019-12-28', '2019-01-02', '2020-01-01', '2019-01-01', '2019-12-31', '2017-12-28', '2020-12-28', '1TR-1125815', 'TRH200-5016305', '2017-12-28', 'SPL-92', 'MICROBUS', '2000', 0, 92, '2012', 'SGS', 'division', 'Gulsha-1', '', ''),
(136, 'DMT-GA-34-0566', 'TOYOTA', 'SAIF POWERTEC LTD.', '2019-01-20', '2020-01-21', '2019-01-22', '2020-01-21', '2019-01-24', '2020-01-23', '0000-00-00', '0000-00-00', '1NZ-E059324', 'NZE141-9212351', '2018-01-21', 'SPL-93', 'CAR(SALOON)', '1500', 0, 93, '2012', 'SAIF POWERTEC LIMITED', 'EEL', 'Khawja Tower', '', 'Active'),
(137, 'DMT-GA-34-0787', 'TOYOTA', 'E-ENGINEERING LTD.', '2019-01-27', '2020-01-28', '2019-01-21', '2020-01-27', '2019-01-30', '2020-01-29', '0000-00-00', '0000-00-00', '1NZ-E062059', 'NZE141-9212796', '2018-01-28', 'SPL-94', 'CAR(SALOON)', '1500', 0, 94, '2012', 'E-ENGINEERING LIMITED', 'EEL', 'Khawja Tower', '', ''),
(138, 'DMT-GA-12-0485', 'NISSAN', 'SAIF POWERTEC LTD.', '2019-02-17', '2020-02-17', '2019-06-23', '2020-06-22', '2019-07-15', '2020-07-14', '0000-00-00', '0000-00-00', 'RB20-934126A', 'HR32-124261', '1997-02-17', 'SPL-95', 'CAR(SALOON)', '2000', 0, 95, 'myear', 'SAIF POWERTEC LIMITED', 'CORPORATE', 'Bashundara House', '', 'Active'),
(139, 'DMT-SHA-13-0725', 'DONGFENG', 'SAIF POWERTEC LTD.', '2019-04-18', '2020-04-19', '2019-04-18', '2020-04-18', '2019-04-22', '2020-04-21', '0000-00-00', '0000-00-00', 'CY4102-C3F17033516', 'LGDCMB1G3HL009975', '2018-04-19', 'SPL-96', 'MAINTENACE OF OVER HEAD CABLES', '5000', 0, 96, '2017', 'SAIF ELE. & MAN. COMPANY LTD', 'RENEWABLE ENERGY', 'Gazipur-Pubail', '', 'Active'),
(140, 'DMT-SHA-13-0724', 'DONGFENG', 'SAIF POWERTEC LTD.', '2019-04-18', '2020-04-19', '2019-04-18', '2020-04-18', '2019-04-22', '2020-04-21', '0000-00-00', '0000-00-00', 'CY4102-C3F17033596', 'LGDCMB1G5HL009976', '2018-04-19', 'SPL-97', 'MAINTENACE OF OVER HEAD CABLES', '5000', 0, 97, '2017', 'SAIF ELE. & MAN. COMPANY LTD', 'RENEWABLE ENERGY', 'Gazipur-Pubail', '', 'Active'),
(141, 'DMT-GA-28-4543', 'TOYOTA', 'E-ENGINEERING LTD.', '2019-06-11', '2020-06-12', '2019-06-11', '2020-06-11', '2019-06-24', '2020-06-23', '0000-00-00', '0000-00-00', '1NZ-E292299', 'NZE161-7039964', '2018-06-12', 'SPL-98', 'CAR(SALOON)', '1500', 0, 98, '2013', 'E-ENGINEERING LIMITED', 'EEL', 'Khawja Tower', '', 'Active'),
(142, 'DMT-GA-28-4544', 'TOYOTA', 'E-ENGINEERING LTD.', '2019-06-11', '2020-06-12', '2019-06-11', '2020-06-11', '2019-06-24', '2020-06-23', '0000-00-00', '0000-00-00', '1NZ-E324707', 'NZE161-7045520', '2018-06-12', 'SPL-99', 'CAR(SALOON)', '1500', 0, 99, '2013', 'E-ENGINEERING LIMITED', 'EEL', 'Khawja Tower', '', 'Active');

-- --------------------------------------------------------

--
-- Table structure for table `sub_category`
--

CREATE TABLE `sub_category` (
  `id` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `sub_code` varchar(400) NOT NULL,
  `name` varchar(600) NOT NULL,
  `description` text NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sub_category`
--

INSERT INTO `sub_category` (`id`, `parent_id`, `sub_code`, `name`, `description`, `user_id`) VALUES
(1, 1, 'SUB001', 'Lennovo', 'Lenevo Details', 1),
(2, 1, 'SUB002', 'HP', 'HP Details', 1),
(3, 1, 'SUB003', 'Assus', 'Assus Description', 1),
(4, 2, 'SUB0002', 'Samsung', 'Samsung details', 1);

-- --------------------------------------------------------

--
-- Table structure for table `suppliers`
--

CREATE TABLE `suppliers` (
  `id` int(11) NOT NULL,
  `code` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `address` varchar(5000) NOT NULL,
  `contact_person` varchar(100) NOT NULL,
  `supplier_phone` varchar(100) NOT NULL,
  `supplier_op_balance` varchar(100) NOT NULL,
  `supplier_type` varchar(100) NOT NULL,
  `material_type` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `suppliers`
--

INSERT INTO `suppliers` (`id`, `code`, `name`, `address`, `contact_person`, `supplier_phone`, `supplier_op_balance`, `supplier_type`, `material_type`) VALUES
(192, 'SID-001', 'PALASH', 'banani', '01911139249', '0191139249', '0', 'cash', '40');

-- --------------------------------------------------------

--
-- Table structure for table `supplier_payment`
--

CREATE TABLE `supplier_payment` (
  `id` int(11) NOT NULL,
  `voucherid` varchar(15) CHARACTER SET latin1 NOT NULL,
  `voucherdate` date NOT NULL,
  `supplierid` varchar(15) CHARACTER SET latin1 NOT NULL,
  `paymenttype` varchar(25) CHARACTER SET latin1 NOT NULL,
  `amount` double NOT NULL,
  `remarks` varchar(500) CHARACTER SET latin1 NOT NULL,
  `sp_photo` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `supplier_payment`
--

INSERT INTO `supplier_payment` (`id`, `voucherid`, `voucherdate`, `supplierid`, `paymenttype`, `amount`, `remarks`, `sp_photo`) VALUES
(15, 'VID-001', '2022-02-06', 'SID-001', 'cash', 15000, 'paid', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_customer`
--

CREATE TABLE `tbl_customer` (
  `CustomerID` int(11) NOT NULL,
  `CustomerName` varchar(250) NOT NULL,
  `Address` text NOT NULL,
  `City` varchar(250) NOT NULL,
  `PostalCode` varchar(30) NOT NULL,
  `Country` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_billpayment`
--

CREATE TABLE `tb_billpayment` (
  `id` int(11) NOT NULL,
  `mr_no` varchar(100) NOT NULL,
  `mr_date` varchar(100) NOT NULL,
  `invoice_no` varchar(100) NOT NULL,
  `customer_id` varchar(100) NOT NULL,
  `accheadname` varchar(100) NOT NULL,
  `debitamount` varchar(100) NOT NULL,
  `creditamount` varchar(100) NOT NULL,
  `mode` varchar(100) NOT NULL,
  `bank` varchar(100) NOT NULL,
  `branch` varchar(100) NOT NULL,
  `check_no` text NOT NULL,
  `check_date` varchar(100) NOT NULL,
  `job_card_no` varchar(100) NOT NULL,
  `remarks` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tb_ledger`
--

CREATE TABLE `tb_ledger` (
  `id` int(11) NOT NULL,
  `source` varchar(100) NOT NULL,
  `ref_no` varchar(100) NOT NULL,
  `customer_id` varchar(100) NOT NULL,
  `tran_date` varchar(100) NOT NULL,
  `remarks` longtext NOT NULL,
  `debit` varchar(100) NOT NULL,
  `credit` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tb_ledger`
--

INSERT INTO `tb_ledger` (`id`, `source`, `ref_no`, `customer_id`, `tran_date`, `remarks`, `debit`, `credit`) VALUES
(8, 'Invoice', 'INV-0001', 'CM-0001', '2019-12-30', '', '6500', '0'),
(9, 'Payment', 'MR-0002', 'CM-0001', '2019-12-30', '', '0', '4000'),
(10, 'Invoice', 'INV-0002', 'CM-0001', '2020-01-06', '', '500', '0'),
(11, 'Invoice', 'INV-0003', 'CM-0001', '2020-01-06', '', '500', '0'),
(12, 'Invoice', 'INV-0004', 'CM-0001', '2020-01-06', '', '500', '0'),
(13, 'Invoice', 'INV-0005', 'CM-0001', '2020-01-06', '', '500', '0');

-- --------------------------------------------------------

--
-- Table structure for table `temp_product_receive_data`
--

CREATE TABLE `temp_product_receive_data` (
  `id` int(11) NOT NULL,
  `receive_no` varchar(500) NOT NULL,
  `receive_date` datetime NOT NULL,
  `product_id` int(11) NOT NULL,
  `part_no` varchar(500) NOT NULL,
  `supplier_id` varchar(250) DEFAULT NULL,
  `quantity` int(11) NOT NULL,
  `unit_price` float NOT NULL DEFAULT 0,
  `project_id` int(11) NOT NULL,
  `project_to_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `role_id` int(11) DEFAULT NULL,
  `branch_id` int(11) DEFAULT NULL,
  `department_id` int(11) DEFAULT NULL,
  `id2` int(10) UNSIGNED NOT NULL,
  `name` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `first_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `designation` int(11) DEFAULT NULL,
  `project_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `warehouse_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `confirmation_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `confirmed` tinyint(1) NOT NULL DEFAULT 0,
  `is_term_accept` tinyint(1) NOT NULL DEFAULT 0 COMMENT ' 0 = not accepted,1 = accepted',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role_id`, `branch_id`, `department_id`, `id2`, `name`, `first_name`, `last_name`, `user_type`, `designation`, `project_id`, `warehouse_id`, `email`, `password`, `status`, `confirmation_code`, `confirmed`, `is_term_accept`, `remember_token`, `created_by`, `updated_by`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 2, NULL, NULL, 1, 'Admin Saif', 'Admin', 'Saif', 'admin', NULL, '2', '10', 'admin@admin.com', '946aa9a437dd522bf7ffd162d0824ba8', 1, 'b1970adb3f301c8440c81e45b526060c', 1, 0, 'PCgsDtfHhHDhADntGcj7D97A9e4U0gtx0hlLn2heuaMyQBq5Gaa2sP55BPGr', 1, 1, '2019-01-14 00:17:02', '2019-01-20 20:36:38', NULL),
(4, 1, 1, 3, 4, 'Super Admin', 'Super', 'Admin', 'superAdmin', 16, '2', '7', 'superadmin@admin.com', 'be05977add575832dc52655d4ad5c42e', 1, 'b1970adb3f301c8440c81e45b526060c', 1, 0, 'PCgsDtfHhHDhADntGcj7D97A9e4U0gtx0hlLn2heuaMyQBq5Gaa2sP55BPGr', 4, 4, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure for view `qry_inv_issue`
--
DROP TABLE IF EXISTS `qry_inv_issue`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `qry_inv_issue`  AS  select `inv_issue`.`issue_id` AS `issue_id`,`inv_issue`.`issue_date` AS `issue_date`,`inv_issuedetail`.`material_id` AS `material_id`,`inv_issuedetail`.`issue_qty` AS `issue_qty`,`inv_issue`.`warehouse_id` AS `warehouse_id`,`inv_issue`.`project_id` AS `project_id`,`inv_issuedetail`.`package_id` AS `package_id`,`inv_issuedetail`.`building_id` AS `building_id` from (`inv_issue` join `inv_issuedetail` on(`inv_issue`.`issue_id` = `inv_issuedetail`.`issue_id`)) ;

-- --------------------------------------------------------

--
-- Structure for view `qry_typewiseconsumption`
--
DROP TABLE IF EXISTS `qry_typewiseconsumption`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `qry_typewiseconsumption`  AS  select `qry_inv_issue`.`material_id` AS `material_id`,`qry_inv_issue`.`issue_qty` AS `issue_qty`,`inv_material`.`type` AS `type`,`qry_inv_issue`.`issue_date` AS `issue_date`,`qry_inv_issue`.`warehouse_id` AS `warehouse_id` from (`inv_material` join `qry_inv_issue` on(`inv_material`.`material_id_code` = `qry_inv_issue`.`material_id`)) ;

-- --------------------------------------------------------

--
-- Structure for view `qry_typewisestock`
--
DROP TABLE IF EXISTS `qry_typewisestock`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `qry_typewisestock`  AS  select `inv_materialbalance`.`mb_ref_id` AS `mb_ref_id`,`inv_materialbalance`.`mb_materialid` AS `mb_materialid`,`inv_materialbalance`.`mb_date` AS `mb_date`,`inv_materialbalance`.`mbin_qty` AS `mbin_qty`,`inv_materialbalance`.`mbout_qty` AS `mbout_qty`,`inv_materialbalance`.`mbtype` AS `mbtype`,`inv_materialbalance`.`project_id` AS `project_id`,`inv_materialbalance`.`warehouse_id` AS `warehouse_id`,`inv_materialbalance`.`package_id` AS `package_id`,`inv_material`.`type` AS `type` from (`inv_material` join `inv_materialbalance` on(`inv_material`.`material_id_code` = `inv_materialbalance`.`mb_materialid`)) ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `branch`
--
ALTER TABLE `branch`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `complain_type`
--
ALTER TABLE `complain_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`id`),
  ADD KEY `branch_id` (`branch_id`);

--
-- Indexes for table `designations`
--
ALTER TABLE `designations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inv_challan`
--
ALTER TABLE `inv_challan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inv_complain`
--
ALTER TABLE `inv_complain`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inv_complaindetails`
--
ALTER TABLE `inv_complaindetails`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inv_designation`
--
ALTER TABLE `inv_designation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inv_employee`
--
ALTER TABLE `inv_employee`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inv_invoice`
--
ALTER TABLE `inv_invoice`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inv_invoice_details`
--
ALTER TABLE `inv_invoice_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inv_issue`
--
ALTER TABLE `inv_issue`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inv_issuedetail`
--
ALTER TABLE `inv_issuedetail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inv_item_unit`
--
ALTER TABLE `inv_item_unit`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inv_job_card`
--
ALTER TABLE `inv_job_card`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inv_job_card_details`
--
ALTER TABLE `inv_job_card_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inv_material`
--
ALTER TABLE `inv_material`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inv_materialbalance`
--
ALTER TABLE `inv_materialbalance`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inv_materialcategory`
--
ALTER TABLE `inv_materialcategory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inv_materialcategorysub`
--
ALTER TABLE `inv_materialcategorysub`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inv_particulars`
--
ALTER TABLE `inv_particulars`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inv_particulars_type`
--
ALTER TABLE `inv_particulars_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inv_partybalance`
--
ALTER TABLE `inv_partybalance`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inv_purchase`
--
ALTER TABLE `inv_purchase`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inv_purchasedetail`
--
ALTER TABLE `inv_purchasedetail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inv_receive`
--
ALTER TABLE `inv_receive`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inv_receivedetail`
--
ALTER TABLE `inv_receivedetail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inv_return`
--
ALTER TABLE `inv_return`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inv_returndetail`
--
ALTER TABLE `inv_returndetail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inv_serviceinvoice`
--
ALTER TABLE `inv_serviceinvoice`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inv_supplier`
--
ALTER TABLE `inv_supplier`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inv_supplierbalance`
--
ALTER TABLE `inv_supplierbalance`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inv_technicianinfo`
--
ALTER TABLE `inv_technicianinfo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inv_tranferdetail`
--
ALTER TABLE `inv_tranferdetail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inv_transfermaster`
--
ALTER TABLE `inv_transfermaster`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inv_voucher`
--
ALTER TABLE `inv_voucher`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inv_voucherdetails`
--
ALTER TABLE `inv_voucherdetails`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inv_voucher_cat`
--
ALTER TABLE `inv_voucher_cat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inv_warehosueinfo`
--
ALTER TABLE `inv_warehosueinfo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `materialbalance`
--
ALTER TABLE `materialbalance`
  ADD KEY `id` (`id`);

--
-- Indexes for table `partner`
--
ALTER TABLE `partner`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `party`
--
ALTER TABLE `party`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `party_payment`
--
ALTER TABLE `party_payment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rlp_access_chain`
--
ALTER TABLE `rlp_access_chain`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rlp_acknowledgement`
--
ALTER TABLE `rlp_acknowledgement`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rlp_info_id` (`rlp_info_id`);

--
-- Indexes for table `rlp_delete_history`
--
ALTER TABLE `rlp_delete_history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rlp_info_id` (`rlp_info_id`);

--
-- Indexes for table `rlp_details`
--
ALTER TABLE `rlp_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rlp_info_id` (`rlp_info_id`);

--
-- Indexes for table `rlp_info`
--
ALTER TABLE `rlp_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rlp_remarks_history`
--
ALTER TABLE `rlp_remarks_history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rlp_info_id` (`rlp_info_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sttable`
--
ALTER TABLE `sttable`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `suppliers`
--
ALTER TABLE `suppliers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `supplier_payment`
--
ALTER TABLE `supplier_payment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_customer`
--
ALTER TABLE `tbl_customer`
  ADD PRIMARY KEY (`CustomerID`);

--
-- Indexes for table `tb_billpayment`
--
ALTER TABLE `tb_billpayment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_ledger`
--
ALTER TABLE `tb_ledger`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `branch`
--
ALTER TABLE `branch`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `complain_type`
--
ALTER TABLE `complain_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `department`
--
ALTER TABLE `department`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=126;

--
-- AUTO_INCREMENT for table `designations`
--
ALTER TABLE `designations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=238;

--
-- AUTO_INCREMENT for table `inv_challan`
--
ALTER TABLE `inv_challan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `inv_complain`
--
ALTER TABLE `inv_complain`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `inv_complaindetails`
--
ALTER TABLE `inv_complaindetails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `inv_designation`
--
ALTER TABLE `inv_designation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `inv_employee`
--
ALTER TABLE `inv_employee`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `inv_invoice`
--
ALTER TABLE `inv_invoice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `inv_invoice_details`
--
ALTER TABLE `inv_invoice_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `inv_issue`
--
ALTER TABLE `inv_issue`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7621;

--
-- AUTO_INCREMENT for table `inv_issuedetail`
--
ALTER TABLE `inv_issuedetail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33996;

--
-- AUTO_INCREMENT for table `inv_item_unit`
--
ALTER TABLE `inv_item_unit`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `inv_job_card`
--
ALTER TABLE `inv_job_card`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `inv_job_card_details`
--
ALTER TABLE `inv_job_card_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `inv_material`
--
ALTER TABLE `inv_material`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=363;

--
-- AUTO_INCREMENT for table `inv_materialbalance`
--
ALTER TABLE `inv_materialbalance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44719;

--
-- AUTO_INCREMENT for table `inv_materialcategory`
--
ALTER TABLE `inv_materialcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=157;

--
-- AUTO_INCREMENT for table `inv_materialcategorysub`
--
ALTER TABLE `inv_materialcategorysub`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `inv_particulars`
--
ALTER TABLE `inv_particulars`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `inv_particulars_type`
--
ALTER TABLE `inv_particulars_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `inv_partybalance`
--
ALTER TABLE `inv_partybalance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `inv_purchase`
--
ALTER TABLE `inv_purchase`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `inv_purchasedetail`
--
ALTER TABLE `inv_purchasedetail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `inv_receive`
--
ALTER TABLE `inv_receive`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1755;

--
-- AUTO_INCREMENT for table `inv_receivedetail`
--
ALTER TABLE `inv_receivedetail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2439;

--
-- AUTO_INCREMENT for table `inv_return`
--
ALTER TABLE `inv_return`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT for table `inv_returndetail`
--
ALTER TABLE `inv_returndetail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- AUTO_INCREMENT for table `inv_serviceinvoice`
--
ALTER TABLE `inv_serviceinvoice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `inv_supplier`
--
ALTER TABLE `inv_supplier`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `inv_supplierbalance`
--
ALTER TABLE `inv_supplierbalance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1573;

--
-- AUTO_INCREMENT for table `inv_technicianinfo`
--
ALTER TABLE `inv_technicianinfo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `inv_tranferdetail`
--
ALTER TABLE `inv_tranferdetail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=617;

--
-- AUTO_INCREMENT for table `inv_transfermaster`
--
ALTER TABLE `inv_transfermaster`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=330;

--
-- AUTO_INCREMENT for table `inv_voucher`
--
ALTER TABLE `inv_voucher`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `inv_voucherdetails`
--
ALTER TABLE `inv_voucherdetails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `inv_voucher_cat`
--
ALTER TABLE `inv_voucher_cat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `inv_warehosueinfo`
--
ALTER TABLE `inv_warehosueinfo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `materialbalance`
--
ALTER TABLE `materialbalance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `partner`
--
ALTER TABLE `partner`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `party`
--
ALTER TABLE `party`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2037;

--
-- AUTO_INCREMENT for table `party_payment`
--
ALTER TABLE `party_payment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `rlp_access_chain`
--
ALTER TABLE `rlp_access_chain`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `rlp_acknowledgement`
--
ALTER TABLE `rlp_acknowledgement`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rlp_delete_history`
--
ALTER TABLE `rlp_delete_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rlp_details`
--
ALTER TABLE `rlp_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rlp_info`
--
ALTER TABLE `rlp_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rlp_remarks_history`
--
ALTER TABLE `rlp_remarks_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `sttable`
--
ALTER TABLE `sttable`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=143;

--
-- AUTO_INCREMENT for table `suppliers`
--
ALTER TABLE `suppliers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=193;

--
-- AUTO_INCREMENT for table `supplier_payment`
--
ALTER TABLE `supplier_payment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `tbl_customer`
--
ALTER TABLE `tbl_customer`
  MODIFY `CustomerID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tb_billpayment`
--
ALTER TABLE `tb_billpayment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `tb_ledger`
--
ALTER TABLE `tb_ledger`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `department`
--
ALTER TABLE `department`
  ADD CONSTRAINT `department_ibfk_1` FOREIGN KEY (`branch_id`) REFERENCES `branch` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `rlp_acknowledgement`
--
ALTER TABLE `rlp_acknowledgement`
  ADD CONSTRAINT `rlp_acknowledgement_ibfk_1` FOREIGN KEY (`rlp_info_id`) REFERENCES `rlp_info` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `rlp_delete_history`
--
ALTER TABLE `rlp_delete_history`
  ADD CONSTRAINT `rlp_delete_history_ibfk_1` FOREIGN KEY (`rlp_info_id`) REFERENCES `rlp_info` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `rlp_details`
--
ALTER TABLE `rlp_details`
  ADD CONSTRAINT `rlp_details_ibfk_1` FOREIGN KEY (`rlp_info_id`) REFERENCES `rlp_info` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
