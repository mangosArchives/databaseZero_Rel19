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
-- Table structure for table `playercreateinfo_action`
--

DROP TABLE IF EXISTS `playercreateinfo_action`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `playercreateinfo_action` (
  `race` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `class` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `button` smallint(5) unsigned NOT NULL DEFAULT '0',
  `action` int(11) unsigned NOT NULL DEFAULT '0',
  `type` smallint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`race`,`class`,`button`),
  KEY `playercreateinfo_race_class_index` (`race`,`class`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `playercreateinfo_action`
--

LOCK TABLES `playercreateinfo_action` WRITE;
/*!40000 ALTER TABLE `playercreateinfo_action` DISABLE KEYS */;
INSERT INTO `playercreateinfo_action` (`race`, `class`, `button`, `action`, `type`) VALUES (1,1,72,6603,0),
(1,1,73,78,0),
(1,1,83,117,128),
(1,2,0,6603,0),
(1,2,1,21084,0),
(1,2,2,635,0),
(1,2,10,159,128),
(1,2,11,2070,128),
(1,4,0,6603,0),
(1,4,1,1752,0),
(1,4,2,2098,0),
(1,4,3,2764,0),
(1,4,11,2070,128),
(1,5,0,6603,0),
(1,5,1,585,0),
(1,5,2,2050,0),
(1,5,10,159,128),
(1,5,11,2070,128),
(1,8,0,6603,0),
(1,8,1,133,0),
(1,8,2,168,0),
(1,8,10,159,128),
(1,8,11,2070,128),
(1,9,0,6603,0),
(1,9,1,686,0),
(1,9,2,687,0),
(1,9,10,159,128),
(1,9,11,4604,128),
(2,1,72,6603,0),
(2,1,73,78,0),
(2,1,74,20572,0),
(2,1,83,117,128),
(2,3,0,6603,0),
(2,3,1,2973,0),
(2,3,2,75,0),
(2,3,4,20572,0),
(2,3,10,159,128),
(2,3,11,117,128),
(2,4,0,6603,0),
(2,4,1,1752,0),
(2,4,2,2098,0),
(2,4,3,2764,0),
(2,4,4,20572,0),
(2,4,11,117,128),
(2,7,0,6603,0),
(2,7,1,403,0),
(2,7,2,331,0),
(2,7,3,20572,0),
(2,7,10,159,128),
(2,7,11,117,128),
(2,9,0,6603,0),
(2,9,1,686,0),
(2,9,2,687,0),
(2,9,3,20572,0),
(2,9,10,159,128),
(2,9,11,117,128),
(3,1,72,6603,0),
(3,1,73,78,0),
(3,1,74,20594,0),
(3,1,75,2481,0),
(3,1,83,117,128),
(3,2,0,6603,0),
(3,2,1,21084,0),
(3,2,2,635,0),
(3,2,3,20594,0),
(3,2,4,2481,0),
(3,2,10,159,128),
(3,2,11,4540,128),
(3,3,0,6603,0),
(3,3,1,2973,0),
(3,3,2,75,0),
(3,3,3,20594,0),
(3,3,4,2481,0),
(3,3,10,159,128),
(3,3,11,117,128),
(3,4,0,6603,0),
(3,4,1,1752,0),
(3,4,2,2098,0),
(3,4,3,2764,0),
(3,4,4,20594,0),
(3,4,5,2481,0),
(3,4,11,4540,128),
(3,5,0,6603,0),
(3,5,1,585,0),
(3,5,2,2050,0),
(3,5,3,20594,0),
(3,5,4,2481,0),
(3,5,10,159,128),
(3,5,11,4540,128),
(4,1,72,6603,0),
(4,1,73,78,0),
(4,1,74,20580,0),
(4,1,83,117,128),
(4,3,0,6603,0),
(4,3,1,2973,0),
(4,3,2,75,0),
(4,3,3,20580,0),
(4,3,10,159,128),
(4,3,11,117,128),
(4,4,0,6603,0),
(4,4,1,1752,0),
(4,4,2,2098,0),
(4,4,3,2764,0),
(4,4,11,4540,128),
(4,5,0,6603,0),
(4,5,1,585,0),
(4,5,2,2050,0),
(4,5,3,20580,0),
(4,5,10,159,128),
(4,5,11,2070,128),
(4,11,0,6603,0),
(4,11,1,5176,0),
(4,11,2,5185,0),
(4,11,3,20580,0),
(4,11,10,159,128),
(4,11,11,4536,128),
(5,1,72,6603,0),
(5,1,73,78,0),
(5,1,74,20577,0),
(5,1,83,4604,128),
(5,4,0,6603,0),
(5,4,1,1752,0),
(5,4,2,2098,0),
(5,4,3,2764,0),
(5,4,4,20577,0),
(5,4,11,4604,128),
(5,5,0,6603,0),
(5,5,1,585,0),
(5,5,2,2050,0),
(5,5,3,20577,0),
(5,5,10,159,128),
(5,5,11,4604,128),
(5,8,0,6603,0),
(5,8,1,133,0),
(5,8,2,168,0),
(5,8,3,20577,0),
(5,8,10,159,128),
(5,8,11,4604,128),
(5,9,0,6603,0),
(5,9,1,686,0),
(5,9,2,687,0),
(5,9,3,20577,0),
(5,9,10,159,128),
(5,9,11,4604,128),
(6,1,72,6603,0),
(6,1,73,78,0),
(6,1,74,20549,0),
(6,1,83,4540,128),
(6,3,0,6603,0),
(6,3,1,2973,0),
(6,3,2,75,0),
(6,3,3,20549,0),
(6,3,10,159,128),
(6,3,11,117,128),
(6,7,0,6603,0),
(6,7,1,403,0),
(6,7,2,331,0),
(6,7,3,20549,0),
(6,7,10,159,128),
(6,7,11,4604,128),
(6,11,0,6603,0),
(6,11,1,5176,0),
(6,11,2,5185,0),
(6,11,3,20549,0),
(6,11,10,159,128),
(6,11,11,4536,128),
(7,1,72,6603,0),
(7,1,73,78,0),
(7,1,83,117,128),
(7,4,0,6603,0),
(7,4,1,1752,0),
(7,4,2,2098,0),
(7,4,3,2764,0),
(7,4,11,117,128),
(7,8,0,6603,0),
(7,8,1,133,0),
(7,8,2,168,0),
(7,8,10,159,128),
(7,8,11,4536,128),
(7,9,0,6603,0),
(7,9,1,686,0),
(7,9,2,687,0),
(7,9,10,159,128),
(7,9,11,4604,128),
(8,1,72,6603,0),
(8,1,73,78,0),
(8,1,74,2764,0),
(8,1,75,26296,0),
(8,1,83,117,128),
(8,3,0,6603,0),
(8,3,1,2973,0),
(8,3,2,75,0),
(8,3,10,159,128),
(8,3,11,4604,128),
(8,4,0,6603,0),
(8,4,1,1752,0),
(8,4,2,2098,0),
(8,4,3,2764,0),
(8,4,4,26972,0),
(8,4,11,117,128),
(8,5,0,6603,0),
(8,5,1,585,0),
(8,5,2,2050,0),
(8,5,10,159,128),
(8,5,11,4540,128),
(8,7,0,6603,0),
(8,7,1,403,0),
(8,7,2,331,0),
(8,7,10,159,128),
(8,7,11,117,128),
(8,8,0,6603,0),
(8,8,1,133,0),
(8,8,2,168,0),
(8,8,10,159,128),
(8,8,11,117,128);
/*!40000 ALTER TABLE `playercreateinfo_action` ENABLE KEYS */;
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
