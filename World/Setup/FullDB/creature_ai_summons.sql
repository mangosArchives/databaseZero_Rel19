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
-- Table structure for table `creature_ai_summons`
--

DROP TABLE IF EXISTS `creature_ai_summons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `creature_ai_summons` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Location Identifier',
  `position_x` float NOT NULL DEFAULT '0',
  `position_y` float NOT NULL DEFAULT '0',
  `position_z` float NOT NULL DEFAULT '0',
  `orientation` float NOT NULL DEFAULT '0',
  `spawntimesecs` int(11) unsigned NOT NULL DEFAULT '120',
  `comment` varchar(255) NOT NULL DEFAULT '' COMMENT 'Summon Comment',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='EventAI Summoning Locations';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `creature_ai_summons`
--

LOCK TABLES `creature_ai_summons` WRITE;
/*!40000 ALTER TABLE `creature_ai_summons` DISABLE KEYS */;
INSERT INTO `creature_ai_summons` (`id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `comment`) VALUES (1,8074.84,-3840,690.061,4.6,180000,'10727'),
(2,-472.02,105.823,-94.6299,0.0301925,300000,'5721'),
(3,-467.099,85.2944,-94.7318,3.95326,300000,'5720'),
(4,-9967.55,-135.956,24.5909,0.170326,180000,'6846'),
(5,-9958.49,-140.526,24.2409,4.0015,180000,'6846'),
(6,-9964.59,-140.567,24.5105,0.741307,180000,'6846'),
(7,-9232.11,342.473,74.4399,4.31658,180000,'5917'),
(8,-1209.65,-2738.38,102.646,4.99352,300000,'3395'),
(9,274.415,-416.159,-119.962,4.86179,18000000,'11460'),
(10,272.422,-418.679,-119.962,4.76048,18000000,'11460'),
(11,268.91,-417.027,-119.962,5.03693,18000000,'11460'),
(12,1809.49,750.594,18.0475,4.56791,18000000,'8138'),
(13,1824.58,747.281,21.1486,3.70162,18000000,'8138'),
(14,1796.56,758.122,14.7124,5.03836,18000000,'8138'),
(15,1783.9,745.005,16.111,6.03896,18000000,'8138'),
(17,1073.84,1543.37,28.6752,0.174533,300000,'1983'),
(20,-169.839,-324.961,64.4014,3.12472,300000,'10268'),
(21,28.067,61.875,-123.405,4.67,600000,'12238'),
(22,1793.96,128.84,-63.8432,2.0714,30000,'5702'),
(16,33.7585,491.548,-23.2803,3.15989,120000,'14566');
/*!40000 ALTER TABLE `creature_ai_summons` ENABLE KEYS */;
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
