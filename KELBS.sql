-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 07, 2020 at 05:26 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `phase3`
--

-- --------------------------------------------------------

--
-- Table structure for table `addresses`
--

CREATE TABLE `addresses` (
  `Street_Name` varchar(40) NOT NULL,
  `ZipCode` int(5) NOT NULL,
  `City` varchar(30) NOT NULL,
  `University_Name` varchar(50) NOT NULL,
  `LongLat` int(4) NOT NULL,
  `Machine_Number` int(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `addresses`
--

INSERT INTO `addresses` (`Street_Name`, `ZipCode`, `City`, `University_Name`, `LongLat`, `Machine_Number`) VALUES
('1386 Bombardier Way', 76203, 'Denton', 'UNT', 1064, 7),
('1120 Fannin St', 76201, 'Denton', 'UNT', 1261, 23),
('2406 Windsprint Way ', 76014, 'Arlington', 'UTA', 1294, 2),
('416 Yates St ', 76014, 'Arlington', 'UTA', 1401, 5),
('1163 Oakland St', 76201, 'Denton', 'UNT', 1915, 19),
('224 Nicki Ln ', 76014, 'Arlington', 'UTA', 2111, 6),
('601 E College St', 76209, 'Denton', 'TWU', 2202, 14),
('622 N Austin St', 76201, 'Denton', 'TWU', 2653, 18),
('1017 W Prairie St', 76201, 'Denton', 'UNT', 3255, 20),
('1330 W Highland St ', 76201, 'Denton', 'UNT', 3366, 12),
('1847 Eagle Dr', 76201, 'Denton', 'UNT', 3780, 9),
('1387 Bombardier Way', 76203, 'Denton', 'UNT', 3866, 8),
('2700 Vine St', 76209, 'Denton', 'TWU', 4532, 13),
('701 Schmitz Ave', 76209, 'Denton', 'TWU', 5546, 17),
('1163 Oakland St', 76201, 'Denton', 'TWU', 6041, 15),
('2532 Sherry St ', 76014, 'Arlington', 'UTA', 6539, 3),
('1701 Maple St', 76201, 'Denton', 'UNT', 6665, 10),
('1898 Maple St', 76201, 'Denton', 'UNT', 7119, 24),
('598 Oakland St', 76201, 'Denton', 'TWU', 8107, 16),
('901 Eagle Dr', 76201, 'Denton', 'UNT', 8308, 22),
('900 Kendolph St', 76201, 'Denton', 'UNT', 8565, 11),
('1908 Coronado St ', 76014, 'Arlington', 'UTA', 9324, 4),
('2402 Cripple Creek Dr', 76014, 'Arlington', 'UTA', 9605, 1),
('1017 W Highland St', 76201, 'Denton', 'UNT', 9658, 21);

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `ID` char(8) NOT NULL,
  `Name` varchar(40) NOT NULL,
  `Machine_Number` int(40) NOT NULL,
  `Student_Staff` varchar(15) DEFAULT NULL,
  `Password` varchar(15) NOT NULL,
  `Phone_number` char(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`ID`, `Name`, `Machine_Number`, `Student_Staff`, `Password`, `Phone_number`) VALUES
('1001052A', 'Elvera_Sepulveda', 8, 'Student', 'Gms5>b&S', '202-555-0523'),
('10010HRM', 'Liane_Alderson', 8, 'Staff', '9s?RzjD]', '202-555-0098'),
('10010NP3', 'Cecille_Dreiling', 17, 'Staff', '8D&qBh3!', '202-555-0744'),
('10010SEL', 'Sharla_Navarrette', 10, 'Student', 'e)2=?LMw', '202-555-0587'),
('10011C57', 'Shella_Bjornstad', 23, 'Student', 'mQ8w7D?.', '202-555-0393'),
('10011J3O', 'Patsy_Purkey', 24, 'Staff', '}mzF2STw', '202-555-0591'),
('10011OS6', 'Tamara_Coble', 1, 'Student', '8{[SQzb$', '202-555-0110'),
('100120GV', 'Manual_Herdon', 23, 'Student', 'DWc!^U86', '202-555-0943'),
('10012C3T', 'Jean_Sutterfield', 1, 'Student', '4=(GKdzQ', '202-555-0099'),
('100138J2', 'Jackie_Veiga', 22, 'Student', '9XP3!+pL', '202-555-0446'),
('10013EHJ', 'Lois_Ekhoff', 15, 'Staff', 'k+J_s4(7', '202-555-0309'),
('10013JG0', 'Tierra_Morrisette', 24, 'Staff', ')4_Jye.8', '202-555-0606'),
('1001436N', 'Nathalie_Marini', 5, 'Student', 'gPf6tZ{k', '202-555-0639'),
('100147HO', 'Sybil_Discher', 24, 'Staff', 'j=H5JRbn', '202-555-0327'),
('100149UD', 'Tonya_Schroer', 14, 'Staff', 'Vx/Af8zy', '202-555-0708'),
('10014FUL', 'Sharita_Dorrell', 7, 'Student', 'bVD?@^=3', '202-555-0661'),
('10014MUP', 'Louetta_Arnott', 22, 'Staff', 'r$Ukd2Sn', '202-555-0179'),
('10015H7A', 'Ashely_Carleton', 5, 'Student', 'hrT=X8Be', '202-555-0581'),
('10015MXS', 'Easter_Hazelip', 22, 'Staff', 'QN2dT^A5', '202-555-0629'),
('1001658Y', 'Kathryne_Orick', 21, 'Staff', 'q{KP*Dn6', '202-555-0582'),
('10016YKH', 'Danelle_Vail', 12, 'Student', 'e7Ha!x.q', '202-555-0878'),
('10017DL5', 'Shery_Popp', 12, 'Student', 'gSn)4a]F', '202-555-0665'),
('10017IKM', 'Fredia_Kennison', 13, 'Staff', 'Zp6k%+MA', '202-555-0184'),
('10017KYB', 'Richard_Fee', 11, 'Staff', 'EDvG5=3t', '202-555-0280'),
('100180MS', 'Mollie_Misner', 12, 'Staff', 'F{2s^W$J', '202-555-0459'),
('100188ZZ', 'Marth_Shehan', 3, 'Staff', 'Ea!hT9@r', '202-555-0422'),
('10018DY7', 'Arlyne_Damm', 12, 'Student', '/Jmp34Zj', '202-555-0672'),
('10019GCW', 'Collen_Bodin', 10, 'Student', 'Wa4dv$/K', '202-555-0885'),
('10019WAD', 'Else_Fall', 3, 'Student', 'eZA^/@9W', '202-555-0066'),
('1001A3DK', 'Gretta_Kowalewski', 2, 'Student', 'uTE8J@Lk', '202-555-0684'),
('1001A9C2', 'Kelly_Zawislak', 19, 'Student', 'aRw2)MrG', '202-555-0399'),
('1001ABQR', 'Kimberely_Nickels', 9, 'Student', 'K*Xd9^ez', '202-555-0138'),
('1001B4QM', 'Darryl_Panganiban', 2, 'Student', '}5MU$T2v', '202-555-0578'),
('1001BRN8', 'Yaeko_Konieczny', 2, 'Student', 'S5>[KhgB', '202-555-0067'),
('1001BZ0F', 'Rachell_Dinger', 9, 'Staff', 'JH8Q.v{b', '202-555-0049'),
('1001C64C', 'Wesley_Troung', 24, 'Student', '56Fjr][%', '202-555-0393'),
('1001CM12', 'Adina_Carlberg', 9, 'Staff', 'Qx-LAb!5', '202-555-0296'),
('1001CSRA', 'Phil_Mees', 2, 'Student', 'JGcub=5]', '202-555-0762'),
('1001D2I6', 'Janella_Vargas', 15, 'Student', 'B}aut2{H', '202-555-0681'),
('1001DUEZ', 'Sylvia_Crooks', 16, 'Staff', '}T69.-+k', '202-555-0063'),
('1001EIFN', 'Lynda_Pilkenton', 16, 'Student', 'Le6%bsDM', '202-555-0986'),
('1001EN55', 'Josie_Stimpson', 17, 'Staff', 'Ga3?z+5E', '202-555-0663'),
('1001EPSU', 'Carmelia_Madsen', 15, 'Student', '$jA6Gq{p', '202-555-0166'),
('1001FDTI', 'Maisha_Uzzle', 7, 'Student', 'S*b[4$X?', '202-555-0286'),
('1001FISQ', 'Lorri_Shadley', 16, 'Student', 'wV8Z*{7Q', '202-555-0722'),
('1001FX51', 'Randy_Remo', 14, 'Staff', 'nt2qWvf(', '202-555-0201'),
('1001GL6F', 'Jennette_Haygood', 14, 'Staff', 'bWz2_=r&', '202-555-0386'),
('1001GQVW', 'Abdul_Ginter', 23, 'Staff', ']?%j4L5>', '202-555-0917'),
('1001GTJM', 'Jerrold_Prestridge', 21, 'Student', '$@Jk(!6t', '202-555-0520'),
('1001GY83', 'Yuk_Becerra', 14, 'Student', 'Dazu9!GZ', '202-555-0427'),
('1001H46K', 'Hilary_Coram', 23, 'Student', '8dT)YfsZ', '202-555-0412'),
('1001H973', 'Tashia_Hannon', 6, 'Student', '8Mwd^vg]', '202-555-0893'),
('1001HGK9', 'Bethel_Bowne', 13, 'Staff', '6.r@MD*R', '202-555-0614'),
('1001I4LX', 'Joycelyn_Hendershott', 13, 'Student', '6p>XTk$b', '202-555-0021'),
('1001IOXG', 'Ashley_Herron', 4, 'Student', 'JSm>Uf3X', '202-555-0491'),
('1001JCY4', 'Tianna_Mcmartin', 4, 'Staff', 'Z[^}7g%3', '202-555-0143'),
('1001JHXC', 'Hassan_Ditmore', 5, 'Student', 'A9E{k5T[', '202-555-0943'),
('1001K3A6', 'Renata_Dundon', 4, 'Staff', 'c8=9$6fB', '202-555-0929'),
('1001K7BP', 'Nakisha_Ree', 19, 'Student', '9@$e^]E4', '202-555-0786'),
('1001KJA1', 'Ardath_Gorley', 3, 'Staff', '3MLWwg%.', '202-555-0468'),
('1001KP0I', 'Naoma_Hilley', 4, 'Student', '_29b$TW&', '202-555-0350'),
('1001KZ8I', 'Fredericka_Goltz', 4, 'Student', 'qNv9/)-b', '202-555-0164'),
('1001LFOV', 'Ranee_Conner', 2, 'Student', 'tgfY-9my', '202-555-0451'),
('1001LKN3', 'Dessie_Colpitts', 11, 'Staff', 'c=3zX28m', '202-555-0458'),
('1001LVMC', 'Jolene_Schwanke', 19, 'Staff', '2FxZ.Q6e', '202-555-0986'),
('1001M2ZJ', 'Ashlie_Colson', 18, 'Staff', '{9M%RYfg', '202-555-0974'),
('1001NA2G', 'Mirian_Vachon', 1, 'Student', '.f6C(pFD', '202-555-0960'),
('1001NMPF', 'Deadra_Saxton', 3, 'Student', '*s8tT97q', '202-555-0961'),
('1001NQ07', 'Namor_Lohse', 18, 'Student', 'anyLW^4g', '202-555-0146'),
('1001NT2M', 'Elnora_Schram', 18, 'Student', '.k9)WNe_', '202-555-0272'),
('1001O1FS', 'Birgit_Brookins', 17, 'Staff', 'H_(zL?a9', '202-555-0778'),
('1001O5GB', 'Margot_Harm', 16, 'Staff', 'E9V.*A=e', '202-555-0613'),
('1001OH39', 'Diedre_Finkle', 18, 'Student', 's8*)=rC7', '202-555-0125'),
('1001OLES', 'Gisele_Shier', 1, 'Staff', 'Tg-%5nk_', '202-555-0404'),
('1001OYD4', 'Susanna_Speicher', 1, 'Staff', '[^T3qHrL', '202-555-0807'),
('1001PTQZ', 'Enid_Mcelhannon', 8, 'Staff', 'X8Y}Av7!', '202-555-0811'),
('1001Q135', 'Wendy_Mushrush', 7, 'Student', 'zAg)e^K8', '202-555-0357'),
('1001QCQU', 'Carmelita_Goodson', 9, 'Student', '3T%.wJ-C', '202-555-0498'),
('1001R84P', 'Thurman_Moore', 8, 'Staff', '.4b-=sFu', '202-555-0232'),
('1001RP4J', 'Latosha_Carmack', 7, 'Student', '*+@M/?f4', '202-555-0446'),
('1001RWHQ', 'Jerilyn_Friesen', 6, 'Staff', 'tD$S%*u3', '202-555-0662'),
('1001SGHV', 'Diedre_Schildgen', 15, 'Student', 'm%AchLs8', '202-555-0887'),
('1001SKIE', 'Azalee_Tilman', 6, 'Staff', '%t!6C{Ts', '202-555-0042'),
('1001TNLT', 'Sherell_Furguson', 6, 'Student', 'PMGq7+F{', '202-555-0615'),
('1001TSVL', 'Charline_Matheson', 13, 'Student', 'S/C.3y4]', '202-555-0412'),
('1001UFW8', 'Christiana_Lafferty', 5, 'Student', 's(MB!8[C', '202-555-0364'),
('1001UJYN', 'Jeannette_Feucht', 21, 'Staff', 'N9)d[{be', '202-555-0586'),
('1001UN96', 'Xenia_Durney', 20, 'Student', 'vWwx7->R', '202-555-0564'),
('1001V69B', 'Celinda_Klopfenstein', 21, 'Student', 'e8rE.+pK', '202-555-0905'),
('1001VBAT', 'Arianne_Reger', 20, 'Student', 'dWw3Kc^+', '202-555-0673'),
('1001VZW4', 'Sage_Whitty', 22, 'Staff', '!yC+z&p5', '202-555-0178'),
('1001WEMI', 'Jeffry_Bartkowski', 20, 'Staff', 'FEeSX.29', '202-555-0666'),
('1001WIN0', 'Shelia_Angelo', 11, 'Staff', '/?.a5(Ek', '202-555-0283'),
('1001X2NW', 'Marica_Guan', 20, 'Staff', 'RmBhN3k>', '202-555-0617'),
('1001X6OO', 'Hilda_Ference', 11, 'Staff', 'f5L7Nt@e', '202-555-0455'),
('1001X902', 'Lashunda_Hanway', 3, 'Student', '-6Zw=Q}s', '202-555-0604'),
('1001XE1L', 'Marvel_Traxler', 10, 'Staff', '7n}Lc4RF', '202-555-0150'),
('1001Y1B9', 'Carletta_Legge', 10, 'Student', 'Wmx*d8wj', '202-555-0317'),
('1001Z9EF', 'Vicky_Kahl', 17, 'Student', 'w3?{B&>5', '202-555-0193'),
('1001ZL1E', 'Celestina_Pilon', 19, 'Staff', '$P7VGz[x', '202-555-0822');

-- --------------------------------------------------------

--
-- Table structure for table `machine`
--

CREATE TABLE `machine` (
  `Number_of_logins` int(40) NOT NULL,
  `Machine_Number` int(40) NOT NULL,
  `University_Name` varchar(50) NOT NULL,
  `Total_storage` int(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `machine`
--

INSERT INTO `machine` (`Number_of_logins`, `Machine_Number`, `University_Name`, `Total_storage`) VALUES
(681, 1, 'UTA', 211),
(880, 2, 'UTA', 171),
(1458, 3, 'UTA', 226),
(1032, 4, 'UTA', 198),
(1566, 5, 'UTA', 109),
(1826, 6, 'UTA', 159),
(1054, 7, 'UNT', 132),
(503, 8, 'UNT', 172),
(1422, 9, 'UNT', 179),
(1816, 10, 'UNT', 218),
(930, 11, 'UNT', 248),
(1228, 12, 'UNT', 110),
(1228, 13, 'TWU', 190),
(1716, 14, 'TWU', 133),
(1692, 15, 'TWU', 285),
(1323, 16, 'TWU', 247),
(1103, 17, 'TWU', 191),
(1616, 18, 'TWU', 135),
(1406, 19, 'UNT', 114),
(983, 20, 'UNT', 145),
(510, 21, 'UNT', 270),
(1795, 22, 'UNT', 197),
(1300, 23, 'UNT', 258),
(1443, 24, 'UNT', 243);

-- --------------------------------------------------------

--
-- Table structure for table `partners`
--

CREATE TABLE `partners` (
  `Company_Name` varchar(20) NOT NULL,
  `Coupon_Number` varchar(20) NOT NULL,
  `StoreID` int(4) NOT NULL,
  `PartnerID` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `partners`
--

INSERT INTO `partners` (`Company_Name`, `Coupon_Number`, `StoreID`, `PartnerID`) VALUES
('Staples', '2ECSH', 1123, 77935),
('Aldi', 'CUA9S', 1145, 91177),
('Aldi', 'YX0QL', 1306, 64828),
('Kmart', 'B1W1M', 1412, 83976),
('Aldi', '19BM0', 1425, 22804),
('Costco', '18FBW', 1493, 56506),
('Staples', '0KVIM', 1643, 6935),
('Shoprite', '38DY7', 1676, 26042),
('Dollar_Tree', '27I10', 1710, 61189),
('Office_Max', '40D1H', 1888, 42259),
('Costco', 'NUYV4', 1931, 52454),
('Family_Dollar', 'RJHDQ', 1938, 18906),
('Aldi', 'O1FSO', 2141, 6626),
('Staples', '2NM91', 2174, 34058),
('Sam\'s_Club', 'S5B3P', 2201, 79307),
('Sam\'s_Club', 'UKFK5', 2243, 31143),
('Kmart', 'LTO1Z', 2348, 24643),
('Costco', 'QBTJU', 2448, 50636),
('Family_Dollar', 'EKLJN', 2533, 80372),
('Office_Max', 'VV68A', 2552, 68358),
('Family_Dollar', 'H1CZ3', 2624, 16391),
('Staples', 'H4G79', 2667, 30058),
('Staples', 'HFJ84', 2689, 67465),
('Kmart', 'HVFIR', 2766, 36505),
('Office_Max', 'JF01N', 2780, 54703),
('Staples', '3KWEW', 2816, 4985),
('Office_Max', '8W5NN', 3036, 53328),
('Dollar_Tree', '5L0HL', 3090, 96195),
('Staples', '9UC2D', 3343, 89807),
('Dollar_Tree', 'FUB63', 3487, 93060),
('Target', 'JOZIH', 3558, 71863),
('Office_Max', 'P034Z', 3706, 6049),
('Publix', 'XQKT0', 3716, 84695),
('Wal-Mart', '52U81', 3879, 16826),
('Staples', 'V8G86', 4046, 72065),
('Dollar_General', 'X9Z2K', 4150, 60949),
('Kmart', 'FQVW2', 4247, 27654),
('Shoprite', 'Y8EFL', 4261, 19885),
('Costco', 'JWU9Y', 4306, 31802),
('Family_Dollar', 'POFGY', 4354, 75238),
('Kmart', 'MQVGP', 4542, 77489),
('Dollar_General', 'RH0GO', 4637, 66966),
('Kroger', 'R74OP', 4854, 17087),
('Staples', '45K36', 4917, 74296),
('Shoprite', 'O3J04', 4929, 25896),
('Shoprite', 'Z6LUL', 4930, 58628),
('Staples', 'OSQY9', 5085, 65008),
('Family_Dollar', 'MO2MP', 5142, 94401),
('Staples', 'G92CJ', 5185, 84351),
('Shoprite', 'K1DVE', 5230, 74660),
('Aldi', 'CPXPN', 5278, 90536),
('Shoprite', '2YIK6', 5503, 95619),
('Family_Dollar', 'IQT3I', 5520, 36395),
('Aldi', '6HKMG', 5580, 64166),
('Dollar_Tree', 'R67EU', 5662, 2542),
('Shoprite', 'GMF1X', 5702, 38309),
('Kmart', 'OLDRK', 5858, 70321),
('Target', 'V5C00', 6038, 55374),
('Staples', 'MMLPE', 6064, 67743),
('Costco', 'X83SF', 6159, 9061),
('Shoprite', 'AQN78', 6318, 14632),
('Shoprite', '4DWAW', 6353, 32270),
('Sam\'s_Club', 'GRLAY', 6419, 6741),
('Costco', 'X3326', 6532, 36259),
('Costco', 'GSIL3', 6624, 46490),
('Dollar_General', 'S4ETK', 6674, 18644),
('Staples', 'Z5YJG', 6772, 15644),
('Staples', '77YYH', 6785, 18154),
('Office_Max', 'TCRQA', 6862, 27392),
('Staples', 'EDPRT', 6900, 98655),
('Office_Max', 'N5FAZ', 7055, 82208),
('Publix', 'CQUZS', 7156, 58352),
('Dollar_General', 'TMOIZ', 7371, 97442),
('Aldi', 'LHUIY', 7489, 11104),
('Shoprite', '5DHEM', 7530, 25858),
('Sam\'s_Club', '5MWRG', 7648, 51030),
('Target', 'WBSNK', 7882, 26568),
('Kmart', '5A7FR', 8104, 91057),
('Sam\'s_Club', '6CK4H', 8177, 68394),
('Sam\'s_Club', 'A0JY7', 8362, 1575),
('Office_Max', 'ENVJI', 8381, 55180),
('Dollar_Tree', 'PDM44', 8404, 12501),
('Staples', 'APQXD', 8670, 76819),
('Costco', 'H3998', 8777, 71010),
('Kroger', 'YLYOR', 8809, 67969),
('Kroger', 'J43QJ', 8858, 86446),
('Office_Max', 'ZLSSR', 8884, 17566),
('Sam\'s_Club', 'GN2B2', 8910, 3614),
('Aldi', 'V9CIB', 9003, 44276),
('Office_Max', '5547X', 9041, 65543),
('Wal-Mart', '2A6IG', 9134, 66151),
('Family_Dollar', 'BNXC3', 9158, 35466),
('Staples', 'NWFTE', 9510, 13540),
('Kmart', 'BOTM8', 9523, 27008),
('Staples', 'ZEX1A', 9591, 89791),
('Publix', '90ZU7', 9786, 31337),
('Kmart', 'B461I', 9841, 6008),
('Shoprite', 'JPWSD', 9869, 93238),
('Kmart', '6JXB7', 9890, 71638),
('Family_Dollar', 'NT2LZ', 9891, 95282);

-- --------------------------------------------------------

--
-- Table structure for table `rewards`
--

CREATE TABLE `rewards` (
  `Coupon_Number` varchar(20) NOT NULL,
  `ID` char(8) NOT NULL,
  `Amount_of_coupons` int(40) NOT NULL,
  `Expiration` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `rewards`
--

INSERT INTO `rewards` (`Coupon_Number`, `ID`, `Amount_of_coupons`, `Expiration`) VALUES
('0KVIM', '10011OS6', 4, '2025-07-15'),
('18FBW', '1001XE1L', 4, '2023-05-14'),
('19BM0', '1001ABQR', 7, '2022-11-19'),
('27I10', '1001SGHV', 4, '2022-12-29'),
('2A6IG', '1001NQ07', 4, '2024-10-01'),
('2ECSH', '1001VZW4', 6, '2024-01-29'),
('2NM91', '1001EN55', 60, '2023-04-01'),
('2YIK6', '10018DY7', 2, '2022-08-01'),
('38DY7', '1001C64C', 60, '2025-08-22'),
('3KWEW', '1001R84P', 4, '2021-06-14'),
('40D1H', '1001QCQU', 2, '2021-07-24'),
('45K36', '1001GL6F', 5, '2023-01-31'),
('4DWAW', '1001M2ZJ', 60, '2023-09-20'),
('52U81', '1001OLES', 1, '2021-01-13'),
('5547X', '1001GY83', 2, '2022-12-09'),
('5A7FR', '1001658Y', 2, '2024-04-10'),
('5DHEM', '10010SEL', 4, '2021-10-04'),
('5L0HL', '1001SKIE', 60, '2022-02-12'),
('5MWRG', '1001TSVL', 60, '2023-01-28'),
('6CK4H', '10014FUL', 3, '2021-04-18'),
('6HKMG', '1001OYD4', 3, '2025-10-24'),
('6JXB7', '1001WIN0', 7, '2023-07-17'),
('77YYH', '1001ZL1E', 6, '2023-10-28'),
('8W5NN', '1001TNLT', 4, '2021-03-23'),
('90ZU7', '10015H7A', 1, '2022-01-13'),
('9UC2D', '1001KP0I', 7, '2025-10-31'),
('A0JY7', '1001UFW8', 6, '2021-05-24'),
('APQXD', '10013JG0', 60, '2025-05-03'),
('AQN78', '1001H46K', 60, '2024-11-18'),
('B1W1M', '10017KYB', 5, '2022-11-06'),
('B461I', '1001FISQ', 5, '2023-03-12'),
('BNXC3', '10015MXS', 60, '2024-09-28'),
('BOTM8', '10017IKM', 4, '2022-08-19'),
('CPXPN', '1001K7BP', 2, '2024-02-01'),
('CQUZS', '10014MUP', 4, '2025-06-02'),
('CUA9S', '1001OH39', 4, '2024-04-29'),
('EDPRT', '100149UD', 2, '2023-10-20'),
('EKLJN', '100120GV', 60, '2025-07-26'),
('ENVJI', '1001IOXG', 4, '2021-02-24'),
('FQVW2', '1001BZ0F', 60, '2022-02-12'),
('FUB63', '1001V69B', 5, '2024-07-22'),
('G92CJ', '1001NT2M', 60, '2023-05-20'),
('GMF1X', '10011J3O', 60, '2025-07-01'),
('GN2B2', '1001EPSU', 60, '2023-09-16'),
('GRLAY', '1001K3A6', 6, '2021-01-02'),
('GSIL3', '1001A9C2', 2, '2024-05-22'),
('H1CZ3', '10011C57', 5, '2025-02-13'),
('H3998', '10019GCW', 60, '2022-08-31'),
('H4G79', '1001H973', 6, '2022-08-07'),
('HFJ84', '1001NMPF', 4, '2025-09-26'),
('HVFIR', '10019WAD', 6, '2021-09-03'),
('IQT3I', '1001RP4J', 60, '2022-03-05'),
('J43QJ', '1001D2I6', 4, '2023-04-14'),
('JF01N', '1001Y1B9', 4, '2022-04-05'),
('JOZIH', '1001I4LX', 6, '2023-01-12'),
('JPWSD', '1001052A', 60, '2022-06-01'),
('JWU9Y', '1001UN96', 4, '2024-02-22'),
('K1DVE', '1001RWHQ', 60, '2021-11-30'),
('LHUIY', '1001Q135', 2, '2022-01-08'),
('LTO1Z', '1001X2NW', 4, '2024-06-07'),
('MMLPE', '10017DL5', 2, '2022-07-30'),
('MO2MP', '1001DUEZ', 60, '2023-12-02'),
('MQVGP', '1001CSRA', 4, '2025-09-02'),
('N5FAZ', '10013EHJ', 4, '2023-11-06'),
('NT2LZ', '1001436N', 60, '2021-09-24'),
('NUYV4', '10010HRM', 60, '2022-01-13'),
('NWFTE', '1001WEMI', 7, '2023-11-30'),
('O1FSO', '1001CM12', 5, '2022-06-20'),
('O3J04', '1001PTQZ', 4, '2022-10-28'),
('OLDRK', '100188ZZ', 7, '2021-01-05'),
('OSQY9', '1001GQVW', 6, '2024-11-28'),
('P034Z', '1001X902', 6, '2025-12-09'),
('PDM44', '1001JCY4', 3, '2021-09-19'),
('POFGY', '1001Z9EF', 4, '2023-07-24'),
('QBTJU', '1001A3DK', 6, '2025-10-31'),
('R67EU', '100138J2', 4, '2025-01-28'),
('R74OP', '1001GTJM', 2, '2025-03-19'),
('RH0GO', '1001KJA1', 60, '2021-02-26'),
('RJHDQ', '1001FDTI', 60, '2022-08-27'),
('S4ETK', '1001VBAT', 2, '2025-02-20'),
('S5B3P', '1001X6OO', 60, '2022-04-30'),
('TCRQA', '1001O5GB', 7, '2023-12-28'),
('TMOIZ', '1001FX51', 3, '2023-01-21'),
('UKFK5', '1001HGK9', 4, '2023-07-21'),
('V5C00', '1001LFOV', 3, '2021-02-14'),
('V8G86', '1001UJYN', 4, '2023-12-05'),
('V9CIB', '100147HO', 6, '2024-12-17'),
('VV68A', '100180MS', 5, '2022-12-27'),
('WBSNK', '1001LVMC', 60, '2025-01-28'),
('X3326', '10012C3T', 7, '2025-01-04'),
('X83SF', '1001BRN8', 4, '2021-08-12'),
('X9Z2K', '10010NP3', 4, '2024-08-13'),
('XQKT0', '1001EIFN', 2, '2023-06-29'),
('Y8EFL', '1001LKN3', 60, '2022-02-27'),
('YLYOR', '1001KZ8I', 60, '2021-09-02'),
('YX0QL', '1001NA2G', 60, '2025-09-21'),
('Z5YJG', '1001B4QM', 7, '2025-09-15'),
('Z6LUL', '1001O1FS', 2, '2024-04-13'),
('ZEX1A', '1001JHXC', 60, '2021-03-19'),
('ZLSSR', '10016YKH', 3, '2023-07-19');

-- --------------------------------------------------------

--
-- Table structure for table `storage`
--

CREATE TABLE `storage` (
  `Can_Amount` int(40) NOT NULL,
  `Bottle_Amount` int(40) NOT NULL,
  `Total_Storage` int(10) NOT NULL,
  `Machine_Number` int(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `storage`
--

INSERT INTO `storage` (`Can_Amount`, `Bottle_Amount`, `Total_Storage`, `Machine_Number`) VALUES
(4, 5, 109, 5),
(11, 9, 110, 12),
(78, 23, 114, 19),
(12, 66, 132, 7),
(34, 10, 133, 14),
(90, 20, 135, 18),
(12, 66, 145, 20),
(34, 10, 159, 6),
(5, 2, 171, 2),
(8, 9, 172, 8),
(4, 5, 179, 9),
(4, 5, 190, 13),
(4, 5, 191, 17),
(4, 5, 197, 22),
(8, 9, 198, 4),
(0, 12, 211, 1),
(34, 10, 218, 10),
(1, 5, 226, 3),
(78, 23, 243, 24),
(8, 9, 247, 16),
(12, 66, 248, 11),
(90, 20, 258, 23),
(8, 9, 270, 21),
(12, 66, 285, 15);

-- --------------------------------------------------------

--
-- Stand-in structure for view `vipcustomers`
-- (See below for the actual view)
--
CREATE TABLE `vipcustomers` (
`Coupon_Amount` int(40)
,`NAME` varchar(40)
,`ID` char(8)
,`Machine_Number` int(40)
,`Student_Staff` varchar(15)
,`PASSWORD` varchar(15)
,`Phone_Number` char(12)
);

-- --------------------------------------------------------

--
-- Structure for view `vipcustomers`
--
DROP TABLE IF EXISTS `vipcustomers`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vipcustomers`  AS SELECT `r`.`Amount_of_coupons` AS `Coupon_Amount`, `c`.`Name` AS `NAME`, `c`.`ID` AS `ID`, `c`.`Machine_Number` AS `Machine_Number`, `c`.`Student_Staff` AS `Student_Staff`, `c`.`Password` AS `PASSWORD`, `c`.`Phone_number` AS `Phone_Number` FROM (`customers` `c` join `rewards` `r`) WHERE `r`.`Amount_of_coupons` > 10 AND `c`.`ID` = `r`.`ID` ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `addresses`
--
ALTER TABLE `addresses`
  ADD PRIMARY KEY (`LongLat`),
  ADD KEY `Machine_Number` (`Machine_Number`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `Machine_Number` (`Machine_Number`);

--
-- Indexes for table `machine`
--
ALTER TABLE `machine`
  ADD PRIMARY KEY (`Machine_Number`);

--
-- Indexes for table `partners`
--
ALTER TABLE `partners`
  ADD PRIMARY KEY (`StoreID`),
  ADD KEY `Coupon_Number` (`Coupon_Number`);

--
-- Indexes for table `rewards`
--
ALTER TABLE `rewards`
  ADD PRIMARY KEY (`Coupon_Number`),
  ADD KEY `ID` (`ID`);

--
-- Indexes for table `storage`
--
ALTER TABLE `storage`
  ADD PRIMARY KEY (`Total_Storage`),
  ADD KEY `Machine_Number` (`Machine_Number`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `addresses`
--
ALTER TABLE `addresses`
  ADD CONSTRAINT `addresses_ibfk_1` FOREIGN KEY (`Machine_Number`) REFERENCES `machine` (`Machine_Number`);

--
-- Constraints for table `customers`
--
ALTER TABLE `customers`
  ADD CONSTRAINT `customers_ibfk_1` FOREIGN KEY (`Machine_Number`) REFERENCES `machine` (`Machine_Number`);

--
-- Constraints for table `partners`
--
ALTER TABLE `partners`
  ADD CONSTRAINT `partners_ibfk_1` FOREIGN KEY (`Coupon_Number`) REFERENCES `rewards` (`Coupon_Number`);

--
-- Constraints for table `rewards`
--
ALTER TABLE `rewards`
  ADD CONSTRAINT `rewards_ibfk_1` FOREIGN KEY (`ID`) REFERENCES `customers` (`ID`);

--
-- Constraints for table `storage`
--
ALTER TABLE `storage`
  ADD CONSTRAINT `storage_ibfk_1` FOREIGN KEY (`Machine_Number`) REFERENCES `machine` (`Machine_Number`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
