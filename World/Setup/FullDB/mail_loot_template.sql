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
-- Table structure for table `mail_loot_template`
--

DROP TABLE IF EXISTS `mail_loot_template`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mail_loot_template` (
  `entry` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `item` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `ChanceOrQuestChance` float NOT NULL DEFAULT '100',
  `groupid` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `mincountOrRef` mediumint(9) NOT NULL DEFAULT '1',
  `maxcount` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `condition_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`entry`,`item`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='Loot System';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mail_loot_template`
--

LOCK TABLES `mail_loot_template` WRITE;
/*!40000 ALTER TABLE `mail_loot_template` DISABLE KEYS */;
INSERT INTO `mail_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES (84,21746,100,0,1,1,0),
(85,21746,100,0,1,1,0),
(86,21746,100,0,1,1,0),
(88,21746,100,0,1,1,0),
(89,21746,100,0,1,1,0),
(90,21746,100,0,1,1,0),
(91,21746,100,0,1,1,0),
(92,20469,100,0,1,1,0),
(93,20469,100,0,1,1,0),
(94,20469,100,0,1,1,0),
(95,21746,100,0,1,1,0),
(96,21746,100,0,1,1,0),
(97,21746,100,0,1,1,0),
(98,13158,100,0,1,1,0),
(99,11423,100,0,1,1,0),
(100,11423,100,0,1,1,0),
(103,11422,100,0,1,1,0),
(104,11422,100,0,1,1,0),
(109,19858,100,0,1,1,0),
(111,19697,100,0,1,1,0),
(113,19697,100,0,1,1,0),
(121,21746,100,0,1,1,0),
(124,21746,100,0,1,1,0),
(125,21746,100,0,1,1,0),
(126,21746,100,0,1,1,0),
(127,21746,100,0,1,1,0),
(128,21746,100,0,1,1,0),
(129,21746,100,0,1,1,0),
(130,21746,100,0,1,1,0),
(131,21746,100,0,1,1,0),
(132,21746,100,0,1,1,0),
(133,21746,100,0,1,1,0),
(134,21746,100,0,1,1,0),
(135,21746,100,0,1,1,0),
(136,21746,100,0,1,1,0),
(137,21746,100,0,1,1,0),
(138,21746,100,0,1,1,0),
(139,21746,100,0,1,1,0),
(140,21746,100,0,1,1,0),
(141,21746,100,0,1,1,0),
(142,21746,100,0,1,1,0),
(143,21746,100,0,1,1,0),
(144,21746,100,0,1,1,0),
(145,21746,100,0,1,1,0),
(146,21746,100,0,1,1,0),
(147,21746,100,0,1,1,0),
(148,21746,100,0,1,1,0),
(149,21746,100,0,1,1,0),
(150,21746,100,0,1,1,0),
(151,21746,100,0,1,1,0),
(152,21746,100,0,1,1,0),
(153,21746,100,0,1,1,0),
(154,21746,100,0,1,1,0),
(155,21746,100,0,1,1,0),
(156,21746,100,0,1,1,0),
(157,21746,100,0,1,1,0),
(158,21746,100,0,1,1,0),
(159,21746,100,0,1,1,0),
(160,21746,100,0,1,1,0),
(168,21746,100,0,1,1,0);
/*!40000 ALTER TABLE `mail_loot_template` ENABLE KEYS */;
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
