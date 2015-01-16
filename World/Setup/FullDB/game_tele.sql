--
-- Copyright (C) 2005-2015 MaNGOS <http://getmangos.eu/>
--
-- This program is free software; you can redistribute it and/or modify
-- it under the terms of the GNU General Public License as published by
-- the Free Software Foundation; either version 2 of the License, or
-- (at your option) any later version.
--
-- This program is distributed in the hope that it will be useful,
-- but WITHOUT ANY WARRANTY; without even the implied warranty of
-- MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-- GNU General Public License for more details.
--
-- You should have received a copy of the GNU General Public License
-- along with this program; if not, write to the Free Software
-- Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
--

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@SESSION.TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `game_tele`
--

DROP TABLE IF EXISTS `game_tele`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `game_tele` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `position_x` float NOT NULL DEFAULT '0',
  `position_y` float NOT NULL DEFAULT '0',
  `position_z` float NOT NULL DEFAULT '0',
  `orientation` float NOT NULL DEFAULT '0',
  `map` smallint(5) unsigned NOT NULL DEFAULT '0',
  `name` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=419 DEFAULT CHARSET=utf8 COMMENT='Tele Command';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `game_tele`
--

LOCK TABLES `game_tele` WRITE;
/*!40000 ALTER TABLE `game_tele` DISABLE KEYS */;
INSERT INTO `game_tele` (`id`, `position_x`, `position_y`, `position_z`, `orientation`, `map`, `name`) VALUES (1,1400.61,-1493.87,54.7844,4.08661,0,'RuinsOfAndorhal'),
(2,1728.65,-1602.25,63.429,1.6558,0,'WesternPlaguelands'),
(3,659.762,-959.316,164.404,0.433716,0,'Strahnbrad'),
(4,1269.64,-2556.21,93.6088,0.620623,0,'Scholomance'),
(5,1869.13,-3213.89,124.624,1.9126,0,'TheMarrisStead'),
(6,-1256.99,-1189.47,38.9804,3.82979,0,'DunGarok'),
(7,-483.455,-1426.23,89.1916,1.93697,0,'DurnholdeKeep'),
(8,-34.1467,-923.366,54.5576,0.15019,0,'TarrenMill'),
(9,-436.657,-581.254,53.5944,1.25917,0,'HillsbradFoothills'),
(10,-853.221,-533.529,9.98556,0.242866,0,'Southshore'),
(11,629.684,-348.068,151.105,2.85588,0,'RuinsOfAlterac'),
(12,335.479,204.771,42.1124,3.42294,0,'Dalaran'),
(13,370.763,-491.355,175.361,5.37858,0,'AlteracMountains'),
(28,-1551.2,-1808.1,67.5219,3.119,0,'StromgardeKeep'),
(38,-4074.39,-3459.53,281.388,0.859539,0,'GrimBatol'),
(39,-4086.41,-2604.38,44.7943,1.58996,0,'DunAlgaz'),
(40,-2600.48,-2350.81,82.9572,0.914501,0,'DunModr'),
(41,-1508.51,-2732.06,32.4986,3.35708,0,'ArathiHighlands'),
(42,-941.007,-3526.66,70.935,3.48668,0,'Hammerfall'),
(43,-1246.61,-2529.32,20.6098,0.741709,0,'RefugePointe'),
(44,-3769.32,-744.26,8.01027,1.95752,0,'MenethilHarbor'),
(45,-3242.81,-2469.04,15.9226,6.03924,0,'Wetlands'),
(46,1811.78,-4410.5,-18.4704,5.20165,1,'RagefireChasm'),
(50,-1419.13,2908.14,137.464,1.57366,1,'Maraudon'),
(52,-4817.04,-2656.26,327.12,4.68835,0,'AlgazStation'),
(53,-5163.54,925.423,257.181,1.57423,0,'Gnomeregan'),
(61,-6071.37,-2955.16,209.782,0.015708,0,'Uldaman'),
(62,-5289.82,-3482.56,297.605,6.2238,0,'TheLoch'),
(63,-5202.94,-2855.18,336.822,0.37651,0,'LochModan'),
(64,-5352.54,-2948.53,323.78,5.34258,0,'Thelsamar'),
(65,-4750.07,-3328.02,310.257,4.61609,0,'StonewroughtDam'),
(66,-5451.55,-656.992,392.675,0.66789,0,'DunMorogh'),
(67,-4918.88,-940.406,501.564,5.42347,0,'Ironforge'),
(68,-5597.31,-483.398,396.981,3.17566,0,'Kharanos'),
(69,-5385.04,310.278,394.151,5.19649,0,'BrewnallVillage'),
(70,-6231.77,332.993,383.171,0.480178,0,'ColdridgeValley'),
(77,-6398.46,-3166.67,299.812,0.769213,0,'AngorFortress'),
(78,-6779.2,-3423.64,241.667,0.647481,0,'Badlands'),
(79,-6692.48,-2175.31,244.145,0.427571,0,'Kargath'),
(89,-4657.3,-2519.35,81.0529,4.54808,1,'RazorfenDowns'),
(109,-601.294,-4296.76,37.8115,1.65401,1,'ValleyOfTrials'),
(112,-8372.77,-2754.46,186.622,3.43486,0,'Morgan\'sVigil'),
(113,-6939.52,-1263.21,179.709,0.200595,0,'TheCauldron'),
(114,-6506.47,-1149.95,307.708,4.18256,0,'ThoriumPoint'),
(115,-813.097,-4880.08,18.995,4.42647,1,'Sen\'jinVillage'),
(116,-1041.59,-5346.67,0.218679,4.0102,1,'EchoIsles'),
(117,326.81,-4706.65,15.3665,4.16414,1,'RazorHill'),
(118,1629.36,-4373.39,31.2564,3.54839,1,'Orgrimmar'),
(120,1340.98,-4638.58,53.5445,5.0328,1,'DurotarZeppelin'),
(121,-452.84,-2650.76,95.5209,0.241081,1,'TheCrossroads'),
(125,48.9976,-2715.55,91.6677,0.158612,1,'Barrens'),
(126,-7012.47,-1065.13,241.786,5.63162,0,'SearingGorge'),
(127,1007.78,-4446.22,11.2022,0.20797,1,'Durotar'),
(130,-731.607,-2218.39,17.0281,2.78486,1,'WailingCaverns'),
(131,-2363.11,-1913.78,95.7829,0.165556,1,'CampTaurajo'),
(133,-818.155,-623.043,54.0884,2.15276,30,'AlteracValleyHorde'),
(135,-4470.28,-1677.77,81.3925,1.16302,1,'RazorfenKraul'),
(136,-215.738,-309.394,6.66761,3.07325,30,'AlteracValley'),
(137,-3707.79,-2530.37,68.2635,3.31945,1,'ShadyRestInn'),
(138,883.187,-489.375,96.7618,3.06932,30,'AlteracValleyAlliance'),
(139,-4043.65,-2991.32,36.3984,3.37443,1,'DustwallowMarsh'),
(140,-4573.79,-3173.15,34.0877,3.1231,1,'Mudsprocket'),
(141,1308.68,1306.03,-9.0107,3.91285,529,'ArathiBasinAlliance'),
(143,-4708.27,-3727.64,54.5589,3.72786,1,'Onyxia\'sLair'),
(144,-7390.69,-941.553,169.43,3.90454,0,'TheGrindingQuarry'),
(145,-3130.67,-2908.43,34.0976,1.42798,1,'BrackenwallVillage'),
(146,-3641.3,-4358.93,8.35467,3.81559,1,'Theramore'),
(147,-4969.02,-1726.89,-62.1269,3.7933,1,'ThousandNeedles'),
(148,686.053,683.165,-12.9149,0.816022,529,'ArathiBasinHorde'),
(149,-4525.63,-791.364,-42.3639,1.09938,1,'Thalanaar'),
(150,1017.16,1040.59,-44.9017,0.325149,529,'ArathiBasin'),
(151,-5431.78,-2449.38,89.2848,2.32854,1,'FreewindPost'),
(152,-7179.34,-921.212,165.821,5.09599,0,'BlackrockDepths'),
(153,-6221.35,-3927.64,-58.7495,0.757735,1,'MirageRaceway'),
(154,1525.95,1481.66,352.001,3.20756,489,'WarsongGulchAlliance'),
(155,-7177.15,-3785.34,8.36981,6.10237,1,'Gadgetzan'),
(157,-7931.2,-3414.28,80.7365,0.66522,1,'Tanaris'),
(158,-6908.08,-4801.39,8.15214,5.07916,1,'SteamwheedlePort'),
(159,1235.54,1427.1,309.715,0.557629,489,'WarsongGulch'),
(160,-6801.19,-2893.02,9.00388,0.158639,1,'Zul\'Farrak'),
(161,-7943.22,-2119.09,-218.343,6.0727,1,'Un\'GoroCrater'),
(163,-7538.51,-1063.45,180.981,0.03409,0,'TheMoltenSpan'),
(164,930.851,1431.57,345.537,0.015704,489,'WarsongGulchHorde'),
(165,-6152.25,-1087.6,-201.435,0.707637,1,'Marshal\'sRefuge'),
(168,-6382.67,-291.916,-3.07818,4.47432,1,'Valor\'sRest'),
(172,-6818.09,733.814,41.5661,2.3082,1,'CenarionHold'),
(175,-7663.74,-1217.4,287.789,5.33945,0,'OrbOfCommand'),
(176,-7527.05,-1226.77,285.732,5.29626,0,'BlackrockSpire'),
(177,-7426.87,1005.31,1.13359,2.96086,1,'Silithus'),
(179,164.789,-475.305,116.842,0.022714,229,'BlackwingLair'),
(181,-7494.94,-1123.49,265.547,3.3092,0,'BlackrockMountain'),
(182,-8098.67,1525.15,2.77194,3.01977,1,'TheScarabWall'),
(184,-7733.43,-1510.24,132.792,1.01584,0,'BlackrockStronghold'),
(185,-8216.06,1536.36,1.30797,3.0826,1,'GatesOfAhn\'Qiraj'),
(186,-8409.82,1499.06,27.7179,2.51868,1,'TheRuinsOfAhn\'Qiraj'),
(187,-8240.09,1991.32,129.072,0.941603,1,'TheTempleOfAhn\'Qiraj'),
(188,-8118.54,-1633.83,132.996,0.089067,0,'BurningSteppes'),
(189,1126.64,-459.94,-102.535,3.46095,230,'MoltenCore'),
(193,-8204.88,-4495.25,9.0091,4.72574,1,'CavernsOfTime'),
(207,-4396.7,224.841,25.4136,4.93684,1,'CampMojache'),
(208,-4841.19,1309.44,81.3937,1.48501,1,'Feralas'),
(211,-3980.8,789.005,161.007,4.71945,1,'DireMaulEast'),
(215,2872.6,-764.398,160.332,5.05735,0,'ScarletMonastery'),
(216,-3828.01,1250.22,160.226,3.20835,1,'DireMaulWest'),
(217,-7501.51,-2183.08,165.926,6.07144,0,'FlameCrest'),
(218,-3521.29,1085.2,161.097,4.7281,1,'DireMaulNorth'),
(219,-4347.46,2415.11,8.00515,1.52603,1,'TheForgottenCoast'),
(220,1711.99,-719.761,54.3351,4.66387,0,'TheBulwark'),
(221,1843.5,1590,93.2971,3.08757,0,'Deathknell'),
(222,2259.25,290.43,34.1137,0.987414,0,'Brill'),
(223,2036.02,161.331,33.8674,0.143896,0,'TirisfalGlades'),
(224,2063.35,273.607,94.1076,5.30632,0,'TirisfalGladesZeppelin'),
(225,1584.07,241.987,-52.1534,0.049647,0,'Undercity'),
(226,878.74,1359.33,50.355,5.89929,0,'SilverpineForest'),
(227,-4317.47,3287.35,18.2864,3.12825,1,'FeathermoonStronghold'),
(228,-129.094,835.621,63.598,4.83351,0,'Ambermill'),
(229,-606.395,2211.75,92.9818,0.809746,1,'Desolace'),
(230,-1464.14,2615.21,76.7172,3.21357,1,'MaraudonOrange'),
(231,-234.675,1561.63,76.8921,1.24031,0,'ShadowFangKeep'),
(232,-1188.37,2879.61,85.7888,5.07366,1,'MaraudonPurple'),
(233,-388.146,1543.67,18.1592,3.10171,0,'PyrewoodVillage'),
(234,-1664.79,3091.67,30.5552,6.07818,1,'ShadowpreyVillage'),
(235,504.534,1539.08,129.502,1.35812,0,'TheSepulcher'),
(236,-1224.46,1728.53,90.0592,0.831707,1,'GhostWalkerPost'),
(237,-7734.77,-2609.01,165.137,4.22183,0,'DreadmaulRock'),
(238,998.173,736.541,59.2738,6.16398,0,'FenrisIsle'),
(239,-9284.76,-3346.89,109.759,1.52871,0,'TowerOfIlgalar'),
(240,-9323.5,-3030.84,132.559,2.94713,0,'Stonewatch'),
(241,176.426,1309.76,190.18,0.556817,1,'Nijel\'sPoint'),
(242,-9266.59,-2188.77,64.0892,2.10205,0,'Lakeshire'),
(243,-9551.81,-2204.73,93.473,5.47141,0,'RedridgeMountains'),
(244,-8921.09,-119.135,82.195,5.82878,0,'NorthshireValley'),
(245,-9448.55,68.236,56.3225,2.1115,0,'Goldshire'),
(246,-8833.38,628.628,94.0066,1.06535,0,'Stormwind'),
(247,2678.38,1497.46,233.869,6.26038,1,'StonetalonPeak'),
(248,1570.92,1031.52,137.959,3.33006,1,'StonetalonMountains'),
(249,966.147,926.499,104.649,1.27231,1,'SunRockRetreat'),
(250,799.721,-3995.68,122.007,3.77399,0,'Seradane'),
(251,369.856,-3802.84,170.093,3.58942,0,'SkulkRock'),
(252,-44.6129,-505.122,-46.1274,1.84172,1,'CampAparaje'),
(253,1035.62,-2106,122.946,1.60767,1,'Mor\'shanBaseCamp'),
(254,1928.34,-2165.95,93.7896,0.205731,1,'Ashenvale'),
(255,-557.226,-4581.27,9.5884,1.01724,0,'RevantuskVillage'),
(256,-233.765,-4121.89,117.635,3.39306,0,'Jintha\'Alor'),
(257,-9617.06,-288.949,57.3053,4.72687,0,'ElwynnForest'),
(258,-271.689,-3438.52,187.18,3.93027,0,'TheAltarOfZul'),
(259,2270.94,-2538.19,93.9198,0.060429,1,'SplintertreePost'),
(260,226.318,-2777.59,123.356,0.59469,0,'Quel\'DanilLodge'),
(261,-11892.7,-2647.08,-4.68415,3.69096,0,'TheTaintedScar'),
(262,-10999.8,-3380.08,62.2525,4.63501,0,'NethergardeKeep'),
(263,-11840.1,-3196.63,-29.6059,3.3391,0,'TheDarkPortal'),
(264,260.366,-2125.21,119.565,3.18494,0,'AeriePeak'),
(265,119.387,-3190.37,117.331,2.34064,0,'TheHinterlands'),
(266,2676.19,-422.905,107.123,0.648691,1,'Astranaar'),
(267,2957.87,-2794.79,110.464,1.19003,0,'Terrordale'),
(268,3352.92,-3379.03,144.782,6.25978,0,'Stratholme'),
(269,4249.99,740.102,-25.671,1.34062,1,'BlackfathomDeeps'),
(270,3120.16,-3724.93,137.66,5.83567,0,'Naxxramas'),
(271,3986.71,-1293.58,250.144,5.74591,1,'EmeraldSanctuary'),
(272,3065.36,-3704,120.931,1.21752,0,'Plaguewood'),
(273,3194.88,-4038.96,107.991,6.27156,0,'EastwallGate'),
(274,4102.25,-1006.79,272.717,0.790048,1,'Felwood'),
(276,-10895,-2933.24,12.8408,6.26628,0,'DreadmaulHold'),
(277,2279.65,-5310.01,87.0759,5.07618,0,'Light\'sHopeChapel'),
(278,2300.97,-4613.36,73.6231,0.367722,0,'EasternPlaguelands'),
(279,6209.51,-1927.01,569.393,3.82137,1,'TalonbranchGlade'),
(280,6808.73,-2091.08,624.962,5.93802,1,'TimbermawHold'),
(281,-11182.5,-3016.67,7.42235,4.0004,0,'BlastedLands'),
(282,1684.77,-5320.44,73.6126,4.52641,0,'Tyr\'sHand'),
(283,2012.28,-4470.7,73.6229,5.15472,0,'Corin\'sCrossing'),
(284,2448.89,-3708.71,177.867,5.66288,0,'TheFungalVale'),
(285,1248.8,-2604.13,90.961,0.255412,0,'CaerDarrow'),
(286,2793.09,-1621.4,129.333,1.98722,0,'Hearthglen'),
(287,5128.91,-343.506,355.035,3.39176,1,'BloodvenomPost'),
(288,-11208.7,1673.52,24.6361,1.51067,0,'TheDeadmines'),
(290,7654.3,-2232.87,462.107,5.96786,1,'Moonglade'),
(291,7966.85,-2491.04,487.734,3.20562,1,'Nighthaven'),
(292,6759.18,-4419.63,763.214,4.43476,1,'Winterspring'),
(293,6725.69,-4619.44,720.909,4.66802,1,'Everlook'),
(294,3608.59,-4414.43,113.047,1.62303,1,'Valormok'),
(295,-12644.3,-377.411,10.1021,6.09978,0,'StranglethornVale'),
(296,3341.36,-4603.79,92.5027,5.28142,1,'Azshara'),
(297,-10898.3,-364.784,39.2681,3.04614,0,'Duskwood'),
(298,2735.06,-3867.44,98.6548,3.56139,1,'TalrendisPoint'),
(299,-2192.62,-736.317,-13.3274,0.487569,1,'Mulgore'),
(300,-10177.9,-3994.9,-111.239,6.01885,0,'TheSunkenTemple'),
(301,-2240.91,-399.174,-9.42446,2.53353,1,'BloodhoofVillage'),
(302,-10235.2,1222.47,43.6252,6.2427,0,'Westfall'),
(303,-2919.35,-264.535,53.6197,0.409027,1,'CampNarache'),
(304,-10624.5,1096.66,33.7641,1.31041,0,'SentinelHill'),
(305,-10986.7,1542.75,44.7858,2.62438,0,'Moonbrook'),
(306,-10742.2,330.574,38.2503,0.551712,0,'RavenHill'),
(307,-10361.1,-1529.87,91.4594,5.96075,0,'Beggar\'sHaunt'),
(308,-10573,-1182.51,28.0148,0.309022,0,'Darkshire'),
(309,-1277.37,124.804,131.287,5.22274,1,'ThunderBluff'),
(310,-10450.3,-3825.44,18.0679,6.03616,0,'TempleOfAtal\'Hakkar'),
(311,-10384.3,-421.588,63.6179,3.23856,0,'TwilightGrove'),
(312,5756.25,298.505,20.6049,5.96504,1,'Darkshore'),
(313,-10446.9,-3261.91,20.1795,5.02142,0,'Stonard'),
(314,6501.4,481.607,6.27062,1.70033,1,'Auberdine'),
(315,-11322.4,-202.492,75.6362,0.432339,0,'RebelCamp'),
(316,9848.37,966.953,1306.38,3.77457,1,'Dolanaar'),
(317,-11916.7,-1215.72,92.289,4.72454,0,'Zul\'Gurub'),
(318,-14297.2,530.993,8.77916,3.98863,0,'BootyBay'),
(319,10334,833.902,1326.11,3.62142,1,'Shadowglen'),
(320,-10126,-2834.73,22.2157,0.674244,0,'TheHarborage'),
(321,-13277.4,127.372,26.1418,1.11878,0,'GurubashiArena'),
(322,-12388.9,172.578,2.83358,1.91753,0,'Grom\'golBaseCamp'),
(337,10111.3,1557.73,1324.33,4.04239,1,'Teldrassil'),
(383,-10345.4,-2773.42,21.99,5.08426,0,'SwampOfSorrows'),
(389,-10879.6,-2206.99,122.514,3.74515,0,'TheVice'),
(391,3376.86,1013.05,3.34387,3.81699,1,'Zoram\'garOutpost'),
(403,-10438.8,-1932.75,104.617,4.77402,0,'DeadwindPass'),
(404,9949.56,2284.21,1341.4,1.59587,1,'Darnassus'),
(406,-8734.3,-4230.11,-209.5,2.16212,1,'TheBlackMorass'),
(412,16226.2,16257,13.2022,1.65007,1,'GMIsland'),
(415,128.205,135.136,236.11,4.59132,37,'AzsharaCrater'),
(416,-11052.9,-1568.93,27.233,4.64509,0,'Crypt'),
(417,-956.664,-3754.71,5.33239,0.996637,1,'Ratchet'),
(418,-8787.39,828.377,97.6489,0.626312,0,'TheStockades');
/*!40000 ALTER TABLE `game_tele` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed
