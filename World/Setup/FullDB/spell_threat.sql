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
-- Table structure for table `spell_threat`
--

DROP TABLE IF EXISTS `spell_threat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `spell_threat` (
  `entry` mediumint(8) unsigned NOT NULL,
  `Threat` smallint(6) NOT NULL,
  `multiplier` float NOT NULL DEFAULT '1' COMMENT 'threat multiplier for damage/healing',
  `ap_bonus` float NOT NULL DEFAULT '0' COMMENT 'additional threat bonus from attack power',
  PRIMARY KEY (`entry`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spell_threat`
--

LOCK TABLES `spell_threat` WRITE;
/*!40000 ALTER TABLE `spell_threat` DISABLE KEYS */;
INSERT INTO `spell_threat` (`entry`, `Threat`, `multiplier`, `ap_bonus`) VALUES (72,180,1,0),
(78,20,1,0),
(99,15,1,0),
(284,39,1,0),
(285,59,1,0),
(770,108,1,0),
(845,10,1,0),
(1160,43,1,0),
(1608,78,1,0),
(1715,61,1,0),
(1735,25,1,0),
(2139,300,1,0),
(2649,415,1,0),
(3716,395,1,0),
(6343,17,1,0),
(6572,155,1,0),
(6574,195,1,0),
(6673,60,1,0),
(6807,59,1,0),
(6809,89,1,0),
(7369,40,1,0),
(7372,101,1,0),
(7373,141,1,0),
(7379,235,1,0),
(7386,100,1,0),
(7405,140,1,0),
(8198,40,1,0),
(8204,64,1,0),
(8205,96,1,0),
(8380,180,1,0),
(8972,118,1,0),
(9490,29,1,0),
(9745,148,1,0),
(9747,36,1,0),
(9880,178,1,0),
(9881,207,1,0),
(9898,42,1,0),
(11564,98,1,0),
(11565,118,1,0),
(11566,137,1,0),
(11567,145,1,0),
(11580,143,1,0),
(11581,180,1,0),
(11596,220,1,0),
(11597,261,1,0),
(11600,275,1,0),
(11601,315,1,0),
(11608,60,1,0),
(11609,70,1,0),
(14274,200,1,0),
(15629,300,1,0),
(15630,400,1,0),
(15631,500,1,0),
(15632,600,1,0),
(16857,108,1,0),
(17735,200,1,0),
(17750,300,1,0),
(17751,450,1,0),
(17752,600,1,0),
(20243,101,1,0),
(20569,100,1,0),
(20736,100,1,0),
(20925,20,1,0),
(20927,30,1,0),
(20928,40,1,0),
(23922,160,1,0),
(23923,190,1,0),
(23924,220,1,0),
(23925,250,1,0),
(24394,580,1,0),
(24640,5,1,0),
(25286,175,1,0),
(25288,355,1,0);
/*!40000 ALTER TABLE `spell_threat` ENABLE KEYS */;
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
