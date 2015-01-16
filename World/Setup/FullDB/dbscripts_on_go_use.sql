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
-- Table structure for table `dbscripts_on_go_use`
--

DROP TABLE IF EXISTS `dbscripts_on_go_use`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dbscripts_on_go_use` (
  `id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `delay` int(10) unsigned NOT NULL DEFAULT '0',
  `command` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `datalong` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `datalong2` int(10) unsigned NOT NULL DEFAULT '0',
  `buddy_entry` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `search_radius` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `data_flags` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `dataint` int(11) NOT NULL DEFAULT '0',
  `dataint2` int(11) NOT NULL DEFAULT '0',
  `dataint3` int(11) NOT NULL DEFAULT '0',
  `dataint4` int(11) NOT NULL DEFAULT '0',
  `x` float NOT NULL DEFAULT '0',
  `y` float NOT NULL DEFAULT '0',
  `z` float NOT NULL DEFAULT '0',
  `o` float NOT NULL DEFAULT '0',
  `comments` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dbscripts_on_go_use`
--

LOCK TABLES `dbscripts_on_go_use` WRITE;
/*!40000 ALTER TABLE `dbscripts_on_go_use` DISABLE KEYS */;
INSERT INTO `dbscripts_on_go_use` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES (4523,2,10,9136,300000,0,0,0,0,0,0,0,-7916.54,-2613.33,221.13,1.89747,''),
(11881,0,11,11875,20,0,0,0,0,0,0,0,0,0,0,0,''),
(11894,0,11,11876,300,0,0,0,0,0,0,0,0,0,0,0,''),
(12609,2,10,12369,300000,0,0,0,0,0,0,0,251.381,2962.47,2.76527,0.860446,''),
(15351,0,11,15640,7200,0,0,0,0,0,0,0,0,0,0,0,''),
(15351,0,11,15639,10,0,0,0,0,0,0,0,0,0,0,0,''),
(15351,20,12,15576,7200,0,0,0,0,0,0,0,0,0,0,0,''),
(15351,20,11,15352,7200,0,0,0,0,0,0,0,0,0,0,0,''),
(16775,1,3,0,0,10992,20,0,0,0,0,0,-4680.1,-1439.24,-50.49,5.77704,'Panther Move'),
(21608,5,10,15083,900000,0,0,0,0,0,0,0,-11901.3,-1906.52,65.36,0.87,''),
(21609,5,10,15084,900000,0,0,0,0,0,0,0,-11901.3,-1906.52,65.36,0.87,''),
(21610,5,10,15085,900000,0,0,0,0,0,0,0,-11901.3,-1906.52,65.36,0.87,''),
(23610,0,9,23617,600000,0,0,0,0,0,0,0,0,0,0,0,'Festival Lane Parcel'),
(23609,0,9,23616,600000,0,0,0,0,0,0,0,0,0,0,0,'Crusaders Square Parcel'),
(23612,0,9,23619,600000,0,0,0,0,0,0,0,0,0,0,0,'Kings Square Parcel'),
(23607,0,9,23615,600000,0,0,0,0,0,0,0,0,0,0,0,'Market Row Parcel'),
(23613,0,9,23620,600000,0,0,0,0,0,0,0,0,0,0,0,'Fras Slabi Parcel'),
(26188,0,11,30533,15,0,0,0,0,0,0,0,0,0,0,0,''),
(26192,0,11,26182,15,0,0,0,0,0,0,0,0,0,0,0,''),
(26197,0,11,26185,15,0,0,0,0,0,0,0,0,0,0,0,''),
(26206,0,11,30534,300,0,0,0,0,0,0,0,0,0,0,0,''),
(28487,1,15,11525,0,0,0,4,0,0,0,0,0,0,0,0,''),
(28704,5,10,15082,900000,0,0,0,0,0,0,0,-11901.3,-1906.52,65.36,0.87,''),
(28934,1,15,11525,0,0,0,4,0,0,0,0,0,0,0,0,''),
(29116,1,15,11525,0,0,0,4,0,0,0,0,0,0,0,0,''),
(29196,1,15,11528,0,0,0,4,0,0,0,0,0,0,0,0,''),
(29513,1,15,11528,0,0,0,4,0,0,0,0,0,0,0,0,''),
(30560,1,15,11528,0,0,0,4,0,0,0,0,0,0,0,0,''),
(31904,1,15,11528,0,0,0,4,0,0,0,0,0,0,0,0,''),
(32260,0,11,32250,15,0,0,0,0,0,0,0,0,0,0,0,''),
(32374,1,15,11512,0,0,0,4,0,0,0,0,0,0,0,0,''),
(32375,1,15,11512,0,0,0,4,0,0,0,0,0,0,0,0,''),
(32376,1,15,11512,0,0,0,4,0,0,0,0,0,0,0,0,''),
(32377,1,15,11512,0,0,0,4,0,0,0,0,0,0,0,0,''),
(32378,0,11,32373,15,0,0,0,0,0,0,0,0,0,0,0,''),
(32379,1,15,11545,0,0,0,4,0,0,0,0,0,0,0,0,''),
(32380,1,15,11545,0,0,0,4,0,0,0,0,0,0,0,0,''),
(32381,1,15,11545,0,0,0,4,0,0,0,0,0,0,0,0,''),
(32442,0,11,32445,15,0,0,0,0,0,0,0,0,0,0,0,''),
(32443,0,11,20835,15,0,0,0,0,0,0,0,0,0,0,0,''),
(32444,0,11,32446,120,0,0,0,0,0,0,0,0,0,0,0,''),
(32480,0,11,33241,120,0,0,0,0,0,0,0,0,0,0,0,''),
(34006,0,11,33219,15,0,0,0,0,0,0,0,0,0,0,0,''),
(35843,2,10,11142,900000,0,0,0,0,0,0,0,3496.26,-3295.4,130.98,5.34,''),
(35843,2,10,11142,900000,0,0,0,0,0,0,0,3503.16,-3294.9,131.09,4.28,''),
(35843,2,10,11142,900000,0,0,0,0,0,0,0,34.93,-3300.28,130.47,0.07,''),
(35844,2,10,11142,900000,0,0,0,0,0,0,0,3568.5,-3356.91,131.06,2.07,''),
(35844,2,10,11142,900000,0,0,0,0,0,0,0,3570.91,-3351.01,130.57,2.71,''),
(35844,2,10,11142,900000,0,0,0,0,0,0,0,3562.79,-3353.38,130.78,0.81,''),
(35845,2,10,11142,900000,0,0,0,0,0,0,0,3659.46,-3634.96,138.33,1.28,''),
(35845,2,10,11142,900000,0,0,0,0,0,0,0,3656.25,-3635.08,138.36,1.02,''),
(35845,2,10,11142,900000,0,0,0,0,0,0,0,3661.24,-3621,138.4,3.58,''),
(35846,2,10,11142,900000,0,0,0,0,0,0,0,3657.14,-3475.36,138.7,4.91,''),
(35846,2,10,11142,900000,0,0,0,0,0,0,0,3669.61,-3478.49,137.49,3.39,''),
(35846,2,10,11142,900000,0,0,0,0,0,0,0,3651.67,-3477.88,138.05,5.59,''),
(35847,2,10,11142,900000,0,0,0,0,0,0,0,3675.35,-3395.92,132.86,5.83,''),
(35847,2,10,11142,900000,0,0,0,0,0,0,0,3679.93,-3408.58,133.18,1.04,''),
(35847,2,10,11142,900000,0,0,0,0,0,0,0,3687.89,-3410.59,133.04,1.64,''),
(35848,2,10,11142,900000,0,0,0,0,0,0,0,3644.62,-3168.25,128.52,5.93,''),
(35848,2,10,11142,900000,0,0,0,0,0,0,0,3656.82,-3160.63,129.03,4.84,''),
(35848,2,10,11142,900000,0,0,0,0,0,0,0,3664.55,-3176.47,126.42,2.2,''),
(43177,0,11,43178,7200,0,0,0,0,0,0,0,0,0,0,0,''),
(43208,0,12,18892,600,0,0,0,0,0,0,0,0,0,0,0,''),
(43208,5,10,10506,900000,0,0,0,0,0,0,0,309.65,93.47,101.66,0.03,''),
(44809,0,11,15012,15,0,0,0,0,0,0,0,0,0,0,0,''),
(44811,0,11,15013,15,0,0,0,0,0,0,0,0,0,0,0,''),
(45428,0,11,45427,5,0,0,0,0,0,0,0,0,0,0,0,''),
(45625,0,11,45626,15,0,0,0,0,0,0,0,0,0,0,0,''),
(49958,0,11,49943,5,0,0,0,0,0,0,0,0,0,0,0,''),
(49960,0,11,49945,5,0,0,0,0,0,0,0,0,0,0,0,''),
(49962,0,11,49948,5,0,0,0,0,0,0,0,0,0,0,0,''),
(49967,0,11,49956,5,0,0,0,0,0,0,0,0,0,0,0,''),
(66908,3,3,0,0,14020,70,0,0,0,0,0,-7484.91,-1072.98,476.55,2.18,'Move Chromaggus in the center of the room'),
(66908,2,25,1,0,14020,70,0,0,0,0,0,0,0,0,0,'Set Chromaggus run = true'),
(66908,1,11,66900,0,0,0,0,0,0,0,0,0,0,0,0,'Open Chromaggus side door'),
(16775,2,22,16,49,10992,20,0,0,0,0,0,0,0,0,0,'Panther set faction'),
(23611,0,9,23618,600000,0,0,0,0,0,0,0,0,0,0,0,'Elders Square Parcel');
/*!40000 ALTER TABLE `dbscripts_on_go_use` ENABLE KEYS */;
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
