--
-- Copyright (C) 2005-2014 MaNGOS <http://getmangos.eu/>
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
-- Table structure for table `pool_creature`
--

DROP TABLE IF EXISTS `pool_creature`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pool_creature` (
  `guid` int(10) unsigned NOT NULL DEFAULT '0',
  `pool_entry` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `chance` float unsigned NOT NULL DEFAULT '0',
  `description` varchar(255) NOT NULL,
  PRIMARY KEY (`guid`),
  KEY `pool_idx` (`pool_entry`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pool_creature`
--

LOCK TABLES `pool_creature` WRITE;
/*!40000 ALTER TABLE `pool_creature` DISABLE KEYS */;
INSERT INTO `pool_creature` (`guid`, `pool_entry`, `chance`, `description`) VALUES (99291,1601,70,'Tormented Officer'),(134517,1601,30,'Deathsworn Captain'),(12596,1175,0,'Q002518_lady_sathrah'),(73001,1175,0,'Q002518_lady_sathrah'),(590008,1176,30,'Earthcaller Halmgar (4842) Razorfen Kraul'),(87327,1176,70,'Alternate creature to Halmgar (4842) Razorfen Kraul'),(87485,1177,30,'Blind Hunter (4425) Razorfen Kraul'),(590010,1177,70,'Alternate creature to Blind Hunter (4425) Razorfen Kraul'),(45831,1178,30,'Jed Runewatcher (10509) Blackrock Spire'),(160129,1178,70,'Alternate creature to Jed Runewatcher (10509) Blackrock Spire'),(590004,1179,30,'Dark Iron Ambassador (6228) Gnomeregan'),(33458,1179,70,'Alternate creature to Dark Iron Ambassador (6228) Gnomeregan'),(31774,1181,30,'Ragglesnout (7354) Razorfen Downs'),(87199,1181,70,'Alternate creature to Ragglesnout (7354) Razorfen Downs'),(84079,1182,20,'Miner Johnson (3586) Deadmines'),(79147,1182,80,'Alternate creature to Miner Johnson (3586) Deadmines'),(93762,25373,50,'AQ40 - Qiraji Mindslayer / Slayer'),(93763,25374,50,'AQ40 - Qiraji Mindslayer / Slayer'),(93764,25375,50,'AQ40 - Qiraji Mindslayer / Slayer'),(93765,25376,50,'AQ40 - Qiraji Mindslayer / Slayer'),(93766,25373,50,'AQ40 - Qiraji Mindslayer / Slayer'),(93767,25374,50,'AQ40 - Qiraji Mindslayer / Slayer'),(93768,25375,50,'AQ40 - Qiraji Mindslayer / Slayer'),(93769,25376,50,'AQ40 - Qiraji Mindslayer / Slayer'),(93770,25377,50,'AQ40 - Qiraji Mindslayer / Slayer'),(93771,25378,50,'AQ40 - Qiraji Mindslayer / Slayer'),(93772,25379,50,'AQ40 - Qiraji Mindslayer / Slayer'),(93773,25380,50,'AQ40 - Qiraji Mindslayer / Slayer'),(93774,25377,50,'AQ40 - Qiraji Mindslayer / Slayer'),(93775,25378,50,'AQ40 - Qiraji Mindslayer / Slayer'),(93776,25379,50,'AQ40 - Qiraji Mindslayer / Slayer'),(93777,25380,50,'AQ40 - Qiraji Mindslayer / Slayer'),(93778,25381,50,'AQ40 - Qiraji Mindslayer / Slayer'),(93779,25382,50,'AQ40 - Qiraji Mindslayer / Slayer'),(93780,25383,50,'AQ40 - Qiraji Mindslayer / Slayer'),(93781,25384,50,'AQ40 - Qiraji Mindslayer / Slayer'),(93782,25381,50,'AQ40 - Qiraji Mindslayer / Slayer'),(93783,25382,50,'AQ40 - Qiraji Mindslayer / Slayer'),(93784,25383,50,'AQ40 - Qiraji Mindslayer / Slayer'),(93785,25384,50,'AQ40 - Qiraji Mindslayer / Slayer'),(93786,25385,50,'AQ40 - Qiraji Mindslayer / Slayer'),(93787,25386,50,'AQ40 - Qiraji Mindslayer / Slayer'),(93788,25387,50,'AQ40 - Qiraji Mindslayer / Slayer'),(93789,25388,50,'AQ40 - Qiraji Mindslayer / Slayer'),(93790,25385,50,'AQ40 - Qiraji Mindslayer / Slayer'),(93791,25386,50,'AQ40 - Qiraji Mindslayer / Slayer'),(93792,25387,50,'AQ40 - Qiraji Mindslayer / Slayer'),(93793,25388,50,'AQ40 - Qiraji Mindslayer / Slayer'),(93794,25389,50,'AQ40 - Qiraji Mindslayer / Slayer'),(93795,25390,50,'AQ40 - Qiraji Mindslayer / Slayer'),(93796,25391,50,'AQ40 - Qiraji Mindslayer / Slayer'),(93797,25392,50,'AQ40 - Qiraji Mindslayer / Slayer'),(93798,25389,50,'AQ40 - Qiraji Mindslayer / Slayer'),(93799,25390,50,'AQ40 - Qiraji Mindslayer / Slayer'),(93800,25391,50,'AQ40 - Qiraji Mindslayer / Slayer'),(93801,25392,50,'AQ40 - Qiraji Mindslayer / Slayer'),(93802,25393,50,'AQ40 - Qiraji Mindslayer / Slayer'),(93803,25394,50,'AQ40 - Qiraji Mindslayer / Slayer'),(93804,25395,50,'AQ40 - Qiraji Mindslayer / Slayer'),(93805,25396,50,'AQ40 - Qiraji Mindslayer / Slayer'),(93806,25393,50,'AQ40 - Qiraji Mindslayer / Slayer'),(93807,25394,50,'AQ40 - Qiraji Mindslayer / Slayer'),(93808,25395,50,'AQ40 - Qiraji Mindslayer / Slayer'),(93809,25396,50,'AQ40 - Qiraji Mindslayer / Slayer'),(93810,25397,50,'AQ40 - Qiraji Mindslayer / Slayer'),(93811,25398,50,'AQ40 - Qiraji Mindslayer / Slayer'),(93812,25399,50,'AQ40 - Qiraji Mindslayer / Slayer'),(93813,25400,50,'AQ40 - Qiraji Mindslayer / Slayer'),(93814,25397,50,'AQ40 - Qiraji Mindslayer / Slayer'),(93815,25398,50,'AQ40 - Qiraji Mindslayer / Slayer'),(93816,25399,50,'AQ40 - Qiraji Mindslayer / Slayer'),(93817,25400,50,'AQ40 - Qiraji Mindslayer / Slayer'),(93818,25401,50,'AQ40 - Qiraji Mindslayer / Slayer'),(93819,25402,50,'AQ40 - Qiraji Mindslayer / Slayer'),(93820,25403,50,'AQ40 - Qiraji Mindslayer / Slayer'),(93821,25404,50,'AQ40 - Qiraji Mindslayer / Slayer'),(93822,25401,50,'AQ40 - Qiraji Mindslayer / Slayer'),(93823,25402,50,'AQ40 - Qiraji Mindslayer / Slayer'),(93824,25403,50,'AQ40 - Qiraji Mindslayer / Slayer'),(93825,25404,50,'AQ40 - Qiraji Mindslayer / Slayer');
/*!40000 ALTER TABLE `pool_creature` ENABLE KEYS */;
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
