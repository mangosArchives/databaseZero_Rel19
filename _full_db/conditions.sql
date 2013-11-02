--
-- Copyright (C) 2005-2013 MaNGOS <http://getmangos.com/>
-- Copyright (C) 2009-2013 MaNGOSZero <https://github.com/mangoszero>
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
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `conditions`
--

DROP TABLE IF EXISTS `conditions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `conditions` (
  `condition_entry` mediumint(8) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Identifier',
  `type` tinyint(3) NOT NULL DEFAULT '0' COMMENT 'Type of the condition',
  `value1` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT 'data field one for the condition',
  `value2` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT 'data field two for the condition',
  PRIMARY KEY (`condition_entry`),
  UNIQUE KEY `unique_conditions` (`type`,`value1`,`value2`)
) ENGINE=MyISAM AUTO_INCREMENT=1791 DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='Condition System';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `conditions`
--

LOCK TABLES `conditions` WRITE;
/*!40000 ALTER TABLE `conditions` DISABLE KEYS */;
INSERT INTO `conditions` VALUES
(1,2,11511,1),
(2,12,35,0),
(3,12,36,0),
(4,6,67,0),
(5,6,469,0),
(7,9,1846,0),
(8,10,0,0),
(9,2,13370,1),
(11,8,2240,0),
(12,8,8460,0),
(14,2,12384,1),
(15,9,5056,0),
(17,8,8464,0),
(18,8,4242,0),
(19,8,5384,0),
(20,8,5529,0),
(21,8,5121,0),
(22,8,5251,0),
(23,8,6383,0),
(24,8,7786,0),
(25,2,19727,1),
(75,14,0,511),
(76,8,5238,0),
(81,5,59,4),
(90,9,5862,0),
(102,14,0,1024),
(107,9,5727,0),
(113,8,4101,0),
(114,8,975,0),
(122,9,3702,0),
(123,22,4321,0),
(124,8,4321,0),
(139,9,5742,0),
(141,8,6164,0),
(157,9,3909,0),
(158,9,30,0),
(159,9,272,0),
(160,9,6627,0),
(161,8,4102,0),
(163,8,1094,0),
(188,22,770,0),
(221,8,2662,0),
(222,9,3377,1),
(223,9,3441,1),
(224,24,10515,1),
(225,8,3454,0),
(226,17,13028,1),
(227,7,185,175),
(228,24,11511,1),
(229,24,12384,1),
(230,9,6001,1),
(231,9,5930,0),
(316,9,4285,0),
(317,9,4287,0),
(318,9,4288,0),
(322,16,18642,1),
(323,9,558,0),
(383,33,2,1),
(384,33,8,0),
(385,33,8,2),
(386,33,10,2),
(387,-1,383,386),
(388,-1,383,385),
(389,33,1,0),
(418,17,3451,1),
(419,7,171,180),
(455,9,6002,1),
(495,24,13370,1),
(500,24,18643,1),
(501,9,925,0),
(507,9,5929,0),
(512,9,8304,0),
(513,9,6981,0),
(519,-1,4,102),
(520,-1,5,102),
(538,-1,225,224),
(539,-1,227,226),
(540,-1,113,228),
(562,-1,323,322),
(597,-1,419,418),
(621,-1,76,495),
(623,-1,501,500),
(628,-1,161,228),
(676,-2,507,231),
(677,-2,158,159),
(678,2,17203,1),
(679,24,18628,1),
(680,-1,678,679),
(681,8,7604,0),
(682,-3,681,0),
(683,-1,680,682),
(712,2,15044,1),
(713,9,5902,0),
(714,9,5904,0),
(715,-2,713,714),
(716,-1,712,715),
(717,12,8,0),
(718,9,4941,0),
(719,2,10455,1),
(720,9,3566,0),
(721,33,10,0),
(722,33,22,0),
(723,33,28,0),
(724,24,12846,1),
(725,9,5147,0),
(726,8,7761,0),
(727,8,7848,0),
(1349,5,529,6),
(1352,7,165,300),
(1353,-1,1349,1352),
(1354,7,164,300),
(1355,-1,1349,1354),
(1356,7,197,300),
(1357,-1,1349,1356),
(1771,9,8738,0),
(1774,24,21160,1),
(1777,-1,1771,1774),
(1790,8,8555,0);
/*!40000 ALTER TABLE `conditions` ENABLE KEYS */;
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
