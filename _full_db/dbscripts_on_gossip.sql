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
-- Table structure for table `dbscripts_on_gossip`
--

DROP TABLE IF EXISTS `dbscripts_on_gossip`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dbscripts_on_gossip` (
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
-- Dumping data for table `dbscripts_on_gossip`
--

LOCK TABLES `dbscripts_on_gossip` WRITE;
/*!40000 ALTER TABLE `dbscripts_on_gossip` DISABLE KEYS */;
INSERT INTO `dbscripts_on_gossip` VALUES
(21,0,7,6981,0,0,0,0,0,0,0,0,0,0,0,0,'quest complete 6981'),
(125,1,22,21,5,0,0,0,0,0,0,0,0,0,0,0,'astor change faction'),
(125,2,26,0,0,0,0,0,0,0,0,0,0,0,0,0,'astor attack start'),
(321,0,15,9268,0,0,0,0,0,0,0,0,0,0,0,0,'Teleport to Darnassus'),
(1286,0,7,3377,5,0,0,0,0,0,0,0,0,0,0,0,'Zamael Lunthistle - Questcredit (3377)'),
(1321,0,7,3441,0,0,0,0,0,0,0,0,0,0,0,0,'quest 3441 complete of npc 8479'),
(1364,0,15,12578,0,0,0,0,0,0,0,0,0,0,0,0,'cast Create Oathstone of Ysera\'s Dragonflight'),
(1405,0,8,8612,0,0,0,0,0,0,0,0,0,0,0,0,'give killcredit - Screecher Spirit'),
(1405,2,29,1,2,8612,5,0,0,0,0,0,0,0,0,0,''),
(1563,0,7,3702,0,0,0,0,0,0,0,0,0,0,0,0,'give questcredit - The Smoldering Ruins of Thaurissan'),
(2177,0,7,4285,0,0,0,0,0,0,0,0,0,0,0,0,'explore northern pylon'),
(2178,0,7,4287,0,0,0,0,0,0,0,0,0,0,0,0,'explore eastern pylon'),
(2179,0,7,4288,0,0,0,0,0,0,0,0,0,0,0,0,'explore western pylon'),
(2208,0,15,15120,0,0,0,0,0,0,0,0,0,0,0,0,'cast Cenarion Beacon'),
(2208,0,0,0,0,0,0,0,2000000318,0,0,0,0,0,0,0,''),
(2465,0,15,23122,0,0,0,0,0,0,0,0,0,0,0,0,'Create Jaina\'s Autograph'),
(2703,0,15,16351,0,0,0,0,0,0,0,0,0,0,0,0,'Create Cache of Mau\'ari'),
(2900,0,15,28260,0,0,0,0,0,0,0,0,0,0,0,0,'cast glacial vest'),
(2901,0,15,28287,0,0,0,0,0,0,0,0,0,0,0,0,'cast Conjure E.C.A.C'),
(2902,0,15,28263,0,0,0,0,0,0,0,0,0,0,0,0,'cast glacial cloak'),
(2903,0,15,28261,0,0,0,0,0,0,0,0,0,0,0,0,'cast glacial gloves'),
(2904,0,15,28262,0,0,0,0,0,0,0,0,0,0,0,0,'cast glacial wrists'),
(2905,0,15,28252,0,0,0,0,0,0,0,0,0,0,0,0,'cast icebane bracers'),
(2906,0,15,28253,0,0,0,0,0,0,0,0,0,0,0,0,'cast icebane gauntlets'),
(2907,0,15,28251,0,0,0,0,0,0,0,0,0,0,0,0,'cast icebane breastplate'),
(2908,0,15,28256,0,0,0,0,0,0,0,0,0,0,0,0,'polar bracers'),
(2909,0,15,28255,0,0,0,0,0,0,0,0,0,0,0,0,'polar gloves'),
(2910,0,15,28254,0,0,0,0,0,0,0,0,0,0,0,0,'polar tunic'),
(2911,0,15,28259,0,0,0,0,0,0,0,0,0,0,0,0,'ice scale bracers'),
(2912,0,15,28258,0,0,0,0,0,0,0,0,0,0,0,0,'icy scale gloves'),
(2913,0,15,28257,0,0,0,0,0,0,0,0,0,0,0,0,'icy scale tunic'),
(3141,0,8,11064,1,0,0,0,0,0,0,0,0,0,0,0,''),
(3141,2,29,1,2,11064,5,0,0,0,0,0,0,0,0,0,''),
(3223,0,15,17529,0,0,0,0,0,0,0,0,0,0,0,0,'cast Vitreous Focuser'),
(3421,0,17,12846,1,0,0,0,0,0,0,0,0,0,0,0,'Give item Argent Dawn Commission (12846)'),
(3681,0,7,5742,0,0,0,0,0,0,0,0,0,0,0,0,'complete quest'),
(3801,0,15,17961,0,0,0,0,0,0,0,0,0,0,0,0,'Cast Scarlet Illusion (17961)'),
(3884,1,7,5929,5,0,0,0,0,0,0,0,0,0,0,0,'Quest complete 5929'),
(3885,1,7,5930,5,0,0,0,0,0,0,0,0,0,0,0,'Quest complete 5930'),
(4041,0,30,315,0,0,0,0,0,0,0,0,0,0,0,0,'fly to Rut\'theran Village'),
(4042,0,30,316,0,0,0,0,0,0,0,0,0,0,0,0,'fly to Thunder Bluff'),
(4362,0,9,0,60,177491,5,0,0,0,0,0,0,0,0,0,'Respawn Termite Barrel'),
(4781,0,15,23059,0,0,0,0,0,0,0,0,0,0,0,0,'cast Create Thorium Brotherhood Contract'),
(5750,0,15,25139,0,0,0,6,0,0,0,0,0,0,0,0,'cast teleport molten core'),
(5851,0,15,23123,0,0,0,0,0,0,0,0,0,0,0,0,'get - Cairne\'s Hoofprint'),
(6001,0,15,23460,0,0,0,4,0,0,0,0,0,0,0,0,'Teleport player to Blackwing Lair.'),
(6545,0,8,15222,0,0,0,0,0,0,0,0,0,0,0,0,'cast killcredit 15222'),
(6552,0,8,15221,0,0,0,0,0,0,0,0,0,0,0,0,'cast killcredit 15221'),
(6692,0,15,25847,0,0,0,0,0,0,0,0,0,0,0,0,'Create Hive\'Regal Scout Report'),
(27066,0,17,20949,1,0,0,0,0,0,0,0,0,0,0,0,'Magical ledger add'),
(94001,0,0,0,0,0,0,0,2000005548,0,0,0,0,0,0,0,'Weegli Blastfuse - say start door bombing'),
(94001,0,29,1,2,0,0,0,0,0,0,0,0,0,0,0,'Weegli Blastfuse - remove gossip flag'),
(94001,0,22,0,0,0,0,0,0,0,0,0,0,0,0,0,'Weegli Blastfuse - update faction to default'),
(94001,0,25,1,0,0,0,0,0,0,0,0,0,0,0,0,'Weegli Blastfuse - set run on'),
(94001,0,32,0,0,0,0,0,0,0,0,0,0,0,0,0,'Weegli Blastfuse - start WP movement'),
(94101,0,29,1,2,0,0,0,0,0,0,0,0,0,0,0,'Sergeant Bly - remove gossip flag'),
(94101,0,0,0,0,0,0,0,2000005549,0,0,0,0,0,0,0,'Sergeant Bly - say start combat 1'),
(94101,0,25,1,0,7607,30,4,0,0,0,0,0,0,0,0,'Weegli Blastfuse - set run on'),
(94101,3,0,0,0,0,0,0,2000005550,0,0,0,0,0,0,0,'Sergeant Bly - say start combat 2'),
(94101,6,22,14,0,0,0,0,0,0,0,0,0,0,0,0,'Sergeant Bly - update faction to hostile'),
(94101,6,22,14,0,7608,30,4,0,0,0,0,0,0,0,0,'Murta Grimgut - update faction'),
(94101,6,22,14,0,7606,30,4,0,0,0,0,0,0,0,0,'Oro Eyegouge - update faction'),
(94101,6,22,14,0,7605,30,4,0,0,0,0,0,0,0,0,'Raven - update faction'),
(94101,6,0,0,0,7607,30,4,2000005551,0,0,0,0,0,0,0,'Weegli Blastfuse - say start door bombing'),
(94101,6,29,1,2,7607,30,4,0,0,0,0,0,0,0,0,'Weegli Blastfuse - remove gossip flag'),
(94101,6,22,0,0,7607,30,4,0,0,0,0,0,0,0,0,'Weegli Blastfuse - update faction to default'),
(94101,6,32,0,0,7607,30,4,0,0,0,0,0,0,0,0,'Weegli Blastfuse - start WP movement'),
(132302,0,15,19797,0,0,0,0,0,0,0,0,0,0,0,0,'cast Conjure Torch of Retribution'),
(144300,0,0,0,0,0,0,0,2000000237,0,0,0,0,0,0,0,'say 1'),
(144300,1,15,13029,0,0,0,0,0,0,0,0,0,0,0,0,'learn Goldthorn Tea'),
(144301,0,0,0,0,0,0,0,2000000237,0,0,0,0,0,0,0,'say 2'),
(144301,1,15,13030,0,0,0,0,0,0,0,0,0,0,0,0,'learn Major Troll\'s Blood Elixir'),
(370500,1,7,5727,5,0,0,0,0,0,0,0,0,0,0,0,'0'),
(386201,0,7,6001,6,0,0,0,0,0,0,0,0,0,0,0,'Spirit of Lunaclaw - Questcredit (Alliance)'),
(386202,0,7,6002,6,0,0,0,0,0,0,0,0,0,0,0,'Spirit of Lunaclaw - Questcredit (Horde)'),
(476301,0,15,6766,0,0,0,0,0,0,0,0,0,0,0,0,'cast Test of Lore'),
(476302,0,7,6627,5,0,0,0,0,0,0,0,0,0,0,0,'Quest complete 6627'),
(570901,0,32,0,0,0,0,0,0,0,0,0,0,0,0,0,'UNPAUSE'),
(570901,0,29,3,2,0,0,0,0,0,0,0,0,0,0,0,'npc_flag removed'),
(570901,1,0,0,0,0,0,0,2000005460,0,0,0,0,0,0,0,''),
(570902,0,32,0,0,0,0,0,0,0,0,0,0,0,0,0,'UNPAUSE'),
(570902,0,29,3,2,0,0,0,0,0,0,0,0,0,0,0,'npc_flag removed'),
(570902,1,0,0,0,0,0,0,2000005461,0,0,0,0,0,0,0,''),
(570903,0,32,0,0,0,0,0,0,0,0,0,0,0,0,0,'UNPAUSE'),
(570903,0,29,3,2,0,0,0,0,0,0,0,0,0,0,0,'npc_flag removed'),
(570903,1,0,0,0,0,0,0,2000005462,0,0,0,0,0,0,0,''),
(570904,0,32,0,0,0,0,0,0,0,0,0,0,0,0,0,'UNPAUSE'),
(570904,0,29,3,2,0,0,0,0,0,0,0,0,0,0,0,'npc_flag removed'),
(570904,1,0,0,0,0,0,0,2000005463,0,0,0,0,0,0,0,''),
(570905,0,29,3,2,0,0,0,0,0,0,0,0,0,0,0,'npc_flag removed'),
(570905,1,0,0,0,0,0,0,2000005464,0,0,0,0,0,0,0,''),
(570905,3,10,13276,120000,0,0,0,0,0,0,0,14.7965,-696.322,-12.6426,4.4823,'summon - Wildspawn Imp'),
(570905,3,10,13276,120000,0,0,0,0,0,0,0,18.8891,-697.389,-12.6426,4.35271,'summon - Wildspawn Imp'),
(570905,3,10,13276,120000,0,0,0,0,0,0,0,21.4274,-700.227,-12.6426,4.06997,'summon - Wildspawn Imp'),
(570905,3,10,13276,120000,0,0,0,0,0,0,0,22.2017,-705.459,-12.6426,3.48092,'summon - Wildspawn Imp'),
(570905,4,15,22735,0,0,0,0,0,0,0,0,0,0,0,0,'TRANSFORM'),
(570905,4,22,90,1,0,0,0,0,0,0,0,0,0,0,0,'set DemonFaction'),
(737901,0,30,494,0,0,0,0,0,0,0,0,0,0,0,0,'William Kielar - Send Northpass Tower taxi'),
(737902,0,30,495,0,0,0,0,0,0,0,0,0,0,0,0,'William Kielar - Send Eastwall Tower taxi'),
(737903,0,30,496,0,0,0,0,0,0,0,0,0,0,0,0,'William Kielar - Send Crown Guard Tower taxi');
/*!40000 ALTER TABLE `dbscripts_on_gossip` ENABLE KEYS */;
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
