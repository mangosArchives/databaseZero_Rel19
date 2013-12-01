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

-- various fixes
UPDATE `creature_template` SET `gossip_menu_id` = 704 WHERE `entry` = 352;

DELETE FROM `gossip_menu` WHERE `entry` = 4261;
INSERT INTO `gossip_menu` VALUES (4261, 5413, 0, 0);
UPDATE `creature_template` SET `gossip_menu_id` = 4261 WHERE `entry` = 1103;

DELETE FROM `gossip_menu` WHERE `entry` = 6504;
INSERT INTO `gossip_menu` VALUES (6504, 7699, 0, 253);
DELETE FROM `conditions` WHERE `condition_entry` = 253;
INSERT INTO `conditions` VALUES (253, 15, 19, 2);
UPDATE `creature_template` SET `gossip_menu_id` = 6504, `npcflag` = 1048577 WHERE `entry` = 14991;

UPDATE `creature_template` SET `unit_flags` = 256 WHERE `entry` = 5391;

DELETE FROM `gameobject_loot_template` WHERE `entry` = 2117;
INSERT INTO `gameobject_loot_template` VALUES (2117,4433,100,0,1,1,10);

UPDATE `gameobject_template` SET `flags`= 0 WHERE `entry` = 19021;

DELETE FROM `npc_gossip` WHERE `npc_guid` = 11291;
INSERT INTO `npc_gossip` VALUES (11291, 50015);
DELETE FROM `npc_text` WHERE `ID` = 50015;
INSERT INTO `npc_text` VALUES (50015,'Thanks to the Warchief, even here in the remains of our former prison, some hope remains, and the Horde rises anew.',NULL,0,0,0,0,0,0,0,0,NULL,NULL,0,0,0,0,0,0,0,0,NULL,NULL,0,0,0,0,0,0,0,0,NULL,NULL,0,0,0,0,0,0,0,0,NULL,NULL,0,0,0,0,0,0,0,0,NULL,NULL,0,0,0,0,0,0,0,0,NULL,NULL,0,0,0,0,0,0,0,0,NULL,NULL,0,0,0,0,0,0,0,0);

DELETE FROM `npc_gossip` WHERE `npc_guid` = 15301;
INSERT INTO `npc_gossip` VALUES (15301,50014);
DELETE FROM `npc_text` WHERE `ID` = 50014;
INSERT INTO `npc_text` VALUES (50014,'We are but so close to developing the New Plague that our Dark Lady desires with such fervor.',NULL,0,0,0,0,0,0,0,0,NULL,NULL,0,0,0,0,0,0,0,0,NULL,NULL,0,0,0,0,0,0,0,0,NULL,NULL,0,0,0,0,0,0,0,0,NULL,NULL,0,0,0,0,0,0,0,0,NULL,NULL,0,0,0,0,0,0,0,0,NULL,NULL,0,0,0,0,0,0,0,0,NULL,NULL,0,0,0,0,0,0,0,0);

DELETE FROM `npc_gossip` WHERE `npc_guid` = 15542;
INSERT INTO `npc_gossip` VALUES (15542, 50013);
DELETE FROM `npc_text` WHERE `ID` = 50013;
INSERT INTO `npc_text` VALUES (50013,'In order to serve the Dark Lady and Varimathras we need to advance the front on the Human Infestation.',NULL,0,0,0,0,0,0,0,0,NULL,NULL,0,0,0,0,0,0,0,0,NULL,NULL,0,0,0,0,0,0,0,0,NULL,NULL,0,0,0,0,0,0,0,0,NULL,NULL,0,0,0,0,0,0,0,0,NULL,NULL,0,0,0,0,0,0,0,0,NULL,NULL,0,0,0,0,0,0,0,0,NULL,NULL,0,0,0,0,0,0,0,0);

UPDATE `gossip_menu_option` SET `npc_option_npcflag` = 257 WHERE `menu_id` = 1623;

DELETE FROM `npc_gossip` WHERE `npc_guid` = 6862;
INSERT INTO `npc_gossip` VALUES (6862, 50010);
DELETE FROM `npc_text` WHERE `ID` = 50010;
INSERT INTO `npc_text` VALUES (50010,'You must be hard up to be wandering these Badlands, $c. Hard up like me.$B$BOr maybe you\'re here because you\'re crazy. Crazy, like me.',NULL,0,0,0,0,0,0,0,0,NULL,NULL,0,0,0,0,0,0,0,0,NULL,NULL,0,0,0,0,0,0,0,0,NULL,NULL,0,0,0,0,0,0,0,0,NULL,NULL,0,0,0,0,0,0,0,0,NULL,NULL,0,0,0,0,0,0,0,0,NULL,NULL,0,0,0,0,0,0,0,0,NULL,NULL,0,0,0,0,0,0,0,0);

DELETE FROM `npc_gossip` WHERE `npc_guid` = 641;
INSERT INTO `npc_gossip` VALUES (641, 5454);

DELETE FROM `npc_gossip` WHERE `npc_guid` = 36098;
INSERT INTO `npc_gossip` VALUES (36098, 6108);

DELETE FROM `gossip_menu` WHERE `entry` = 50006;
INSERT INTO `gossip_menu` VALUES (50006, 6336, 0, 0);
UPDATE `creature_template` SET `gossip_menu_id` = 50006, `npcflag` = 3 WHERE `entry` = 12238;

UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 100 WHERE `item` = 4951;

--Startup fixes 2
UPDATE `creature_template` SET `flags_extra` = 2050, `civilian` = 1, `MovementType` = 2 WHERE `entry` = 550;
UPDATE `creature` SET `position_x` = -11017.7, `position_y` = 1438.34, `position_z` = 43.0221, `orientation` = 5.30596 WHERE `guid` = 45525;
DELETE FROM `creature_movement` WHERE `id` = 45525;
INSERT INTO `creature_movement` VALUES (45525, 1, -11017.7, 1438.34, 43.0221, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.30596, 0, 0);
INSERT INTO `creature_movement` VALUES (45525, 2, -11003.4, 1420.91, 43.1356, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.69944, 0, 0);
INSERT INTO `creature_movement` VALUES (45525, 3, -10990.4, 1412.81, 42.8886, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6.19817, 0, 0);
INSERT INTO `creature_movement` VALUES (45525, 4, -10979.3, 1411.62, 42.7829, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.295896, 0, 0);
INSERT INTO `creature_movement` VALUES (45525, 5, -10952.5, 1424.16, 43.3883, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.189868, 0, 0);
INSERT INTO `creature_movement` VALUES (45525, 6, -10936.8, 1424.86, 42.9711, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6.12748, 0, 0);
INSERT INTO `creature_movement` VALUES (45525, 7, -10916.3, 1420.7, 42.7578, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.11821, 0, 0);
INSERT INTO `creature_movement` VALUES (45525, 8, -10900.2, 1448.19, 41.5109, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.814257, 0, 0);
INSERT INTO `creature_movement` VALUES (45525, 9, -10881.7, 1461.46, 40.974, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.452974, 0, 0);
INSERT INTO `creature_movement` VALUES (45525, 10, -10842.8, 1475.88, 43.7835, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.358726, 0, 0);
INSERT INTO `creature_movement` VALUES (45525, 11, -10807.6, 1486.82, 46.1457, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.303748, 0, 0);
INSERT INTO `creature_movement` VALUES (45525, 12, -10780.1, 1495.14, 47.7022, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.276259, 0, 0);
INSERT INTO `creature_movement` VALUES (45525, 13, -10743.6, 1500.96, 47.7942, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.060276, 0, 0);
INSERT INTO `creature_movement` VALUES (45525, 14, -10714.9, 1503.6, 48.3277, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.072057, 0, 0);
INSERT INTO `creature_movement` VALUES (45525, 15, -10674.4, 1504.98, 46.0843, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.401924, 0, 0);
INSERT INTO `creature_movement` VALUES (45525, 16, -10660.5, 1511.9, 46.8138, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.739645, 0, 0);
INSERT INTO `creature_movement` VALUES (45525, 17, -10641.5, 1534.84, 47.3299, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.751426, 0, 0);
INSERT INTO `creature_movement` VALUES (45525, 18, -10627.6, 1544.31, 47.188, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.566857, 0, 0);
INSERT INTO `creature_movement` VALUES (45525, 19, -10610.8, 1552.22, 47.207, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.417632, 0, 0);
INSERT INTO `creature_movement` VALUES (45525, 20, -10596.3, 1556.62, 47.2963, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.072056, 0, 0);
INSERT INTO `creature_movement` VALUES (45525, 21, -10574.8, 1558.37, 47.2948, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.551149, 0, 0);
INSERT INTO `creature_movement` VALUES (45525, 22, -10550.3, 1577.95, 45.4818, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.704302, 0, 0);
INSERT INTO `creature_movement` VALUES (45525, 23, -10530.8, 1588.98, 44.1317, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.865309, 0, 0);
INSERT INTO `creature_movement` VALUES (45525, 24, -10509.8, 1614.42, 41.9217, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.920287, 0, 0);
INSERT INTO `creature_movement` VALUES (45525, 25, -10479.6, 1652.76, 37.0603, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.535441, 0, 0);
INSERT INTO `creature_movement` VALUES (45525, 26, -10465, 1661.93, 35.7415, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.884158, 0, 0);
INSERT INTO `creature_movement` VALUES (45525, 27, -10457.9, 1670.04, 35.2038, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.81564, 0, 0);
INSERT INTO `creature_movement` VALUES (45525, 28, -10463.7, 1692.86, 35.6856, 10000, 55001, 0, 0, 0, 0, 0, 0, 0, 0, 1.25094, 0, 0);
INSERT INTO `creature_movement` VALUES (45525, 29, -10445.2, 1711.55, 35.4532, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.30199, 0, 0);
INSERT INTO `creature_movement` VALUES (45525, 30, -10435.4, 1736.19, 34.1087, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.19203, 0, 0);
INSERT INTO `creature_movement` VALUES (45525, 31, -10427.7, 1767.18, 30.4523, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.2046, 0, 0);
INSERT INTO `creature_movement` VALUES (45525, 32, -10414.8, 1797.64, 25.9412, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.26351, 0, 0);
INSERT INTO `creature_movement` VALUES (45525, 33, -10406, 1827.53, 21.7518, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.4897, 0, 0);
INSERT INTO `creature_movement` VALUES (45525, 34, -10402.4, 1860.51, 16.9384, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.73632, 0, 0);
INSERT INTO `creature_movement` VALUES (45525, 35, -10411.2, 1893.59, 10.8154, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.10938, 0, 0);
INSERT INTO `creature_movement` VALUES (45525, 36, -10423.4, 1907.79, 7.2915, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.43139, 0, 0);
INSERT INTO `creature_movement` VALUES (45525, 37, -10446.9, 1923.18, 10.3408, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.37485, 0, 0);
INSERT INTO `creature_movement` VALUES (45525, 38, -10470.2, 1939.93, 8.46836, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.89968, 0, 0);
INSERT INTO `creature_movement` VALUES (45525, 39, -10468.8, 1950.05, 10.3309, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.828395, 0, 0);
INSERT INTO `creature_movement` VALUES (45525, 40, -10464.5, 1955.51, 9.02675, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.00806, 0, 0);
INSERT INTO `creature_movement` VALUES (45525, 41, -10477.6, 1977.87, 9.27179, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.68253, 0, 0);
INSERT INTO `creature_movement` VALUES (45525, 42, -10490.6, 1971.95, 11.2612, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.13511, 0, 0);
INSERT INTO `creature_movement` VALUES (45525, 43, -10503.7, 1971.08, 10.21, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.36268, 0, 0);
INSERT INTO `creature_movement` VALUES (45525, 44, -10511.9, 1962.33, 7.51666, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.66113, 0, 0);
INSERT INTO `creature_movement` VALUES (45525, 45, -10517.3, 1947.63, 4.5852, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.9095, 0, 0);
INSERT INTO `creature_movement` VALUES (45525, 46, -10527.6, 1942.45, 4.03682, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.90341, 0, 0);
INSERT INTO `creature_movement` VALUES (45525, 47, -10544.1, 1947.92, 1.2702, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.33792, 0, 0);
INSERT INTO `creature_movement` VALUES (45525, 48, -10559.2, 1961.01, -3.7468, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.06774, 0, 0);
INSERT INTO `creature_movement` VALUES (45525, 49, -10572.7, 1976.68, -5.0706, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.71039, 0, 0);
INSERT INTO `creature_movement` VALUES (45525, 50, -10568.6, 1978.86, -5.38337, 2000, 55002, 0, 0, 0, 0, 0, 0, 0, 0, 5.3037, 0, 0);
INSERT INTO `creature_movement` VALUES (45525, 51, -10555.8, 1958.8, -3.3736, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.7451, 0, 0);
INSERT INTO `creature_movement` VALUES (45525, 52, -10542.3, 1947.6, 1.62642, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.99643, 0, 0);
INSERT INTO `creature_movement` VALUES (45525, 53, -10524.9, 1942.46, 4.34905, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.542614, 0, 0);
INSERT INTO `creature_movement` VALUES (45525, 54, -10516.4, 1948.99, 4.69907, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.19685, 0, 0);
INSERT INTO `creature_movement` VALUES (45525, 55, -10503.2, 1973.02, 10.3947, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.149128, 0, 0);
INSERT INTO `creature_movement` VALUES (45525, 56, -10475.6, 1974.96, 9.28033, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.29427, 0, 0);
INSERT INTO `creature_movement` VALUES (45525, 57, -10464, 1957.86, 8.6916, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.29918, 0, 0);
INSERT INTO `creature_movement` VALUES (45525, 58, -10471.7, 1938.27, 7.97253, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.92308, 0, 0);
INSERT INTO `creature_movement` VALUES (45525, 59, -10457.9, 1932.24, 9.2374, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.53038, 0, 0);
INSERT INTO `creature_movement` VALUES (45525, 60, -10436.6, 1916.33, 9.53566, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.50289, 0, 0);
INSERT INTO `creature_movement` VALUES (45525, 61, -10418.4, 1904.54, 7.83281, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.12433, 0, 0);
INSERT INTO `creature_movement` VALUES (45525, 62, -10409.8, 1887.79, 11.506, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.85572, 0, 0);
INSERT INTO `creature_movement` VALUES (45525, 63, -10406.8, 1877.75, 14.0414, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.32932, 0, 0);
INSERT INTO `creature_movement` VALUES (45525, 64, -10400.5, 1863.82, 16.2073, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.70021, 0, 0);
INSERT INTO `creature_movement` VALUES (45525, 65, -10404.8, 1832.07, 21.0701, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.15829, 0, 0);
INSERT INTO `creature_movement` VALUES (45525, 66, -10413.2, 1806.55, 24.8249, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.37191, 0, 0);
INSERT INTO `creature_movement` VALUES (45525, 67, -10424, 1772.13, 29.7769, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.65858, 0, 0);
INSERT INTO `creature_movement` VALUES (45525, 68, -10425.3, 1747.43, 33.4757, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.5932, 0, 0);
INSERT INTO `creature_movement` VALUES (45525, 69, -10411.2, 1735.17, 37.0929, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.93092, 0, 0);
INSERT INTO `creature_movement` VALUES (45525, 70, -10387.9, 1725.82, 38.0202, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.303545, 0, 0);
INSERT INTO `creature_movement` VALUES (45525, 71, -10352.2, 1724.66, 36.0416, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6.21759, 0, 0);
INSERT INTO `creature_movement` VALUES (45525, 72, -10323.8, 1718.77, 34.8388, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.96626, 0, 0);
INSERT INTO `creature_movement` VALUES (45525, 73, -10299.7, 1706.26, 37.1308, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6.11549, 0, 0);
INSERT INTO `creature_movement` VALUES (45525, 74, -10266, 1692.6, 35.8463, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.75421, 0, 0);
INSERT INTO `creature_movement` VALUES (45525, 75, -10247, 1675.18, 34.4902, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.21778, 0, 0);
INSERT INTO `creature_movement` VALUES (45525, 76, -10223.5, 1642.29, 38.3598, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.33402, 0, 0);
INSERT INTO `creature_movement` VALUES (45525, 77, -10205.1, 1605.19, 46.0555, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.47147, 0, 0);
INSERT INTO `creature_movement` VALUES (45525, 78, -10185.6, 1586.09, 45.8647, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.88694, 0, 0);
INSERT INTO `creature_movement` VALUES (45525, 79, -10164.2, 1572.13, 44.8373, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6.03695, 0, 0);
INSERT INTO `creature_movement` VALUES (45525, 80, -10123.5, 1555.31, 42.3237, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.74636, 0, 0);
INSERT INTO `creature_movement` VALUES (45525, 81, -10108.4, 1541.78, 42.2112, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.24448, 0, 0);
INSERT INTO `creature_movement` VALUES (45525, 82, -10085.1, 1516.22, 42.4478, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.16359, 0, 0);
INSERT INTO `creature_movement` VALUES (45525, 83, -10067.8, 1486.12, 46.4501, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.11019, 0, 0);
INSERT INTO `creature_movement` VALUES (45525, 84, -10052.9, 1467.47, 45.4537, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.95842, 0, 0);
INSERT INTO `creature_movement` VALUES (45525, 85, -10014.5, 1459.66, 41.2095, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6.22309, 0, 0);
INSERT INTO `creature_movement` VALUES (45525, 86, -9991.49, 1458.64, 41.4995, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.014521, 0, 0);
INSERT INTO `creature_movement` VALUES (45525, 87, -9976.18, 1457.13, 45.0206, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6.18383, 0, 0);
INSERT INTO `creature_movement` VALUES (45525, 88, -9948.04, 1454.6, 40.4763, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.94899, 0, 0);
INSERT INTO `creature_movement` VALUES (45525, 89, -9933.26, 1441.73, 39.1431, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.060862, 0, 0);
INSERT INTO `creature_movement` VALUES (45525, 90, -9923.84, 1443.33, 39.3621, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.586467, 0, 0);
INSERT INTO `creature_movement` VALUES (45525, 91, -9900.19, 1457.97, 40.8349, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.95388, 0, 0);
INSERT INTO `creature_movement` VALUES (45525, 92, -9881.88, 1450.04, 43.709, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6.19657, 0, 0);
INSERT INTO `creature_movement` VALUES (45525, 93, -9875.23, 1450.28, 42.8109, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.509499, 0, 0);
INSERT INTO `creature_movement` VALUES (45525, 94, -9859.63, 1457.97, 41.3427, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6.26647, 0, 0);
INSERT INTO `creature_movement` VALUES (45525, 95, -9849.83, 1453.91, 40.5755, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.30514, 0, 0);
INSERT INTO `creature_movement` VALUES (45525, 96, -9843.56, 1445.74, 39.0059, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.5659, 0, 0);
INSERT INTO `creature_movement` VALUES (45525, 97, -9823.62, 1423.47, 36.7852, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.05461, 0, 0);
INSERT INTO `creature_movement` VALUES (45525, 98, -9821.87, 1412.5, 36.499, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.29277, 0, 0);
INSERT INTO `creature_movement` VALUES (45525, 99, -9826.46, 1406.79, 36.9153, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.58749, 0, 0);
INSERT INTO `creature_movement` VALUES (45525, 100, -9835.87, 1401.99, 38.0764, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.75243, 0, 0);
INSERT INTO `creature_movement` VALUES (45525, 101, -9842.13, 1396.29, 37.3674, 5000, 55003, 0, 0, 0, 0, 0, 0, 0, 0, 3.79641, 0, 0);
INSERT INTO `creature_movement` VALUES (45525, 102, -9823.06, 1411.54, 36.3635, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.28314, 0, 0);
INSERT INTO `creature_movement` VALUES (45525, 103, -9822.35, 1420.64, 36.5567, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.24996, 0, 0);
INSERT INTO `creature_movement` VALUES (45525, 104, -9834.79, 1435.69, 37.6628, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.26096, 0, 0);
INSERT INTO `creature_movement` VALUES (45525, 105, -9853.21, 1456.05, 40.9653, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.16181, 0, 0);
INSERT INTO `creature_movement` VALUES (45525, 106, -9870.27, 1455.45, 42.3767, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.96449, 0, 0);
INSERT INTO `creature_movement` VALUES (45525, 107, -9882.26, 1448.69, 43.7431, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.73769, 0, 0);
INSERT INTO `creature_movement` VALUES (45525, 108, -9898.55, 1456.87, 41.1526, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.34873, 0, 0);
INSERT INTO `creature_movement` VALUES (45525, 109, -9906.68, 1454.73, 40.4808, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.79876, 0, 0);
INSERT INTO `creature_movement` VALUES (45525, 110, -9932.6, 1441.31, 39.124, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.71532, 0, 0);
INSERT INTO `creature_movement` VALUES (45525, 111, -9950.89, 1456.18, 40.5866, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.40725, 0, 0);
INSERT INTO `creature_movement` VALUES (45525, 112, -9967.03, 1455.99, 44.5031, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.05618, 0, 0);
INSERT INTO `creature_movement` VALUES (45525, 113, -9991.21, 1458.52, 41.5305, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.02869, 0, 0);
INSERT INTO `creature_movement` VALUES (45525, 114, -10012.2, 1466.57, 40.9185, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.85826, 0, 0);
INSERT INTO `creature_movement` VALUES (45525, 115, -10050.7, 1470.6, 45.6082, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.63756, 0, 0);
INSERT INTO `creature_movement` VALUES (45525, 116, -10070, 1490.06, 46.4594, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.25743, 0, 0);
INSERT INTO `creature_movement` VALUES (45525, 117, -10089.4, 1518.78, 41.9798, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.45771, 0, 0);
INSERT INTO `creature_movement` VALUES (45525, 118, -10121.4, 1553.17, 42.3523, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.7004, 0, 0);
INSERT INTO `creature_movement` VALUES (45525, 119, -10158.6, 1569.76, 44.1323, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.7593, 0, 0);
INSERT INTO `creature_movement` VALUES (45525, 120, -10185.4, 1584.59, 45.8592, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.32027, 0, 0);
INSERT INTO `creature_movement` VALUES (45525, 121, -10204, 1605.52, 46.0855, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.20167, 0, 0);
INSERT INTO `creature_movement` VALUES (45525, 122, -10218.8, 1633.28, 40.5342, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.35875, 0, 0);
INSERT INTO `creature_movement` VALUES (45525, 123, -10242.3, 1669.62, 34.6274, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.50483, 0, 0);
INSERT INTO `creature_movement` VALUES (45525, 124, -10262.1, 1689.54, 35.5146, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.72396, 0, 0);
INSERT INTO `creature_movement` VALUES (45525, 125, -10282.5, 1700.46, 36.9913, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.95173, 0, 0);
INSERT INTO `creature_movement` VALUES (45525, 126, -10311.1, 1711.42, 36.4032, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.79465, 0, 0);
INSERT INTO `creature_movement` VALUES (45525, 127, -10335.8, 1721.85, 34.6113, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.86926, 0, 0);
INSERT INTO `creature_movement` VALUES (45525, 128, -10381.6, 1726.92, 38.463, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.17949, 0, 0);
INSERT INTO `creature_movement` VALUES (45525, 129, -10409, 1723.05, 35.455, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.32146, 0, 0);
INSERT INTO `creature_movement` VALUES (45525, 130, -10425.2, 1708.05, 34.4076, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.9963, 0, 0);
INSERT INTO `creature_movement` VALUES (45525, 131, -10440.8, 1688.63, 34.9281, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.03165, 0, 0);
INSERT INTO `creature_movement` VALUES (45525, 132, -10462.9, 1663.45, 35.5745, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.08663, 0, 0);
INSERT INTO `creature_movement` VALUES (45525, 133, -10482.5, 1648.56, 37.4599, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.045, 0, 0);
INSERT INTO `creature_movement` VALUES (45525, 134, -10506.4, 1618.82, 41.2972, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.03557, 0, 0);
INSERT INTO `creature_movement` VALUES (45525, 135, -10525.8, 1593.32, 43.8772, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.74891, 0, 0);
INSERT INTO `creature_movement` VALUES (45525, 136, -10543.4, 1581.86, 45.0814, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.65466, 0, 0);
INSERT INTO `creature_movement` VALUES (45525, 137, -10554.1, 1574.88, 45.7229, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.88242, 0, 0);
INSERT INTO `creature_movement` VALUES (45525, 138, -10576.7, 1557.12, 47.438, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.32872, 0, 0);
INSERT INTO `creature_movement` VALUES (45525, 139, -10601.5, 1555.4, 47.4711, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.37192, 0, 0);
INSERT INTO `creature_movement` VALUES (45525, 140, -10625.3, 1545.97, 47.1961, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.86593, 0, 0);
INSERT INTO `creature_movement` VALUES (45525, 141, -10642.9, 1533.3, 47.3155, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.94761, 0, 0);
INSERT INTO `creature_movement` VALUES (45525, 142, -10663.4, 1510.29, 46.5769, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.73948, 0, 0);
INSERT INTO `creature_movement` VALUES (45525, 143, -10676.3, 1504.88, 46.0457, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.25646, 0, 0);
INSERT INTO `creature_movement` VALUES (45525, 144, -10706.1, 1503.8, 47.5113, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.91481, 0, 0);
INSERT INTO `creature_movement` VALUES (45525, 145, -10715.6, 1517.15, 48.3469, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.76028, 0, 0);
INSERT INTO `creature_movement` VALUES (45525, 146, -10715, 1531.66, 47.4553, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.17044, 0, 0);
INSERT INTO `creature_movement` VALUES (45525, 147, -10703.6, 1543.15, 47.6398, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.338706, 0, 0);
INSERT INTO `creature_movement` VALUES (45525, 148, -10663.8, 1554.4, 46.5953, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6.26453, 0, 0);
INSERT INTO `creature_movement` VALUES (45525, 149, -10644.6, 1553.51, 47.0804, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.82471, 0, 0);
INSERT INTO `creature_movement` VALUES (45525, 150, -10636.3, 1548.61, 47.7324, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.00319, 0, 0);
INSERT INTO `creature_movement` VALUES (45525, 151, -10636.7, 1538.49, 47.3688, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.97275, 0, 0);
INSERT INTO `creature_movement` VALUES (45525, 152, -10655.7, 1516.93, 47.1394, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.95547, 0, 0);
INSERT INTO `creature_movement` VALUES (45525, 153, -10671.3, 1506.26, 46.2128, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.57848, 0, 0);
INSERT INTO `creature_movement` VALUES (45525, 154, -10690.6, 1502.98, 46.3119, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.04677, 0, 0);
INSERT INTO `creature_movement` VALUES (45525, 155, -10719.3, 1503.75, 48.4023, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.43318, 0, 0);
INSERT INTO `creature_movement` VALUES (45525, 156, -10741.6, 1501.3, 47.8971, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.28396, 0, 0);
INSERT INTO `creature_movement` VALUES (45525, 157, -10779, 1495.48, 47.7248, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.31144, 0, 0);
INSERT INTO `creature_movement` VALUES (45525, 158, -10814.5, 1484.85, 45.5877, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.45282, 0, 0);
INSERT INTO `creature_movement` VALUES (45525, 159, -10847.3, 1473.48, 43.427, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.44496, 0, 0);
INSERT INTO `creature_movement` VALUES (45525, 160, -10875.3, 1462.61, 41.51, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.55492, 0, 0);
INSERT INTO `creature_movement` VALUES (45525, 161, -10891.5, 1454.56, 41.0618, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.75127, 0, 0);
INSERT INTO `creature_movement` VALUES (45525, 162, -10904.6, 1442.63, 41.8719, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.04972, 0, 0);
INSERT INTO `creature_movement` VALUES (45525, 163, -10912.3, 1429.66, 42.6348, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.51624, 0, 0);
INSERT INTO `creature_movement` VALUES (45525, 164, -10916.2, 1420.05, 42.7921, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.95801, 0, 0);
INSERT INTO `creature_movement` VALUES (45525, 165, -10942.5, 1424.95, 43.1856, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.29652, 0, 0);
INSERT INTO `creature_movement` VALUES (45525, 166, -10957.7, 1422.2, 43.1459, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.63738, 0, 0);
INSERT INTO `creature_movement` VALUES (45525, 167, -10979.7, 1411.7, 42.7758, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.33108, 0, 0);
INSERT INTO `creature_movement` VALUES (45525, 168, -10992.3, 1412.79, 42.9071, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.58024, 0, 0);
INSERT INTO `creature_movement` VALUES (45525, 169, -11011.4, 1426.53, 43.0596, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.22681, 0, 0);
INSERT INTO `creature_movement` VALUES (45525, 170, -11021.4, 1442.32, 43.0378, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.75242, 0, 0);
INSERT INTO `creature_movement` VALUES (45525, 171, -11024.3, 1459.81, 42.9215, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.79091, 0, 0);

DELETE FROM `dbscripts_on_creature_movement` WHERE `id` = 55001;
DELETE FROM `dbscripts_on_creature_movement` WHERE `id` = 55002;
DELETE FROM `dbscripts_on_creature_movement` WHERE `id` = 55003;
INSERT INTO `dbscripts_on_creature_movement` VALUES (55001, 5, 25, 1, 550, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'RUN ON');
INSERT INTO `dbscripts_on_creature_movement` VALUES (55001, 8, 0, 0, 0, 0, 0, 0, 2000005301, 0, 0, 0, 0, 0, 0, 0, '');
INSERT INTO `dbscripts_on_creature_movement` VALUES (55002, 0, 25, 0, 550, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'RUN OFF');
INSERT INTO `dbscripts_on_creature_movement` VALUES (55003, 4, 0, 0, 0, 0, 0, 0, 2000005302, 0, 0, 0, 0, 0, 0, 0, '');

UPDATE `creature` SET `spawndist` = 5 WHERE `guid` = 12596;
UPDATE `creature` SET `MovementType` = 1 WHERE `guid` = 12596;

DELETE FROM `dbscripts_on_quest_end` WHERE `id` = 963;
INSERT INTO `dbscripts_on_quest_end` VALUES (963, 1, 10, 3843, 41000, 0, 0, 0, 0, 0, 0, 0, 6426.84, 603.166, 9.46655, 4.14031, 'Anaya - appears');
INSERT INTO `dbscripts_on_quest_end` VALUES (963, 35, 1, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
INSERT INTO `dbscripts_on_quest_end` VALUES (963, 30, 1, 1, 0, 3843, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
INSERT INTO `dbscripts_on_quest_end` VALUES (963, 9, 1, 1, 0, 3843, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
INSERT INTO `dbscripts_on_quest_end` VALUES (963, 20, 1, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
INSERT INTO `dbscripts_on_quest_end` VALUES (963, 4, 1, 18, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
INSERT INTO `dbscripts_on_quest_end` VALUES (963, 51, 1, 18, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
INSERT INTO `dbscripts_on_quest_end` VALUES (963, 25, 1, 1, 0, 3843, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
INSERT INTO `dbscripts_on_quest_end` VALUES (963, 15, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
INSERT INTO `dbscripts_on_quest_end` VALUES (963, 4, 0, 0, 0, 0, 0, 0, 2000005336, 0, 0, 0, 0, 0, 0, 0, '');
INSERT INTO `dbscripts_on_quest_end` VALUES (963, 9, 0, 0, 0, 3843, 10, 0, 2000005337, 0, 0, 0, 0, 0, 0, 0, '');
INSERT INTO `dbscripts_on_quest_end` VALUES (963, 15, 0, 0, 0, 0, 0, 0, 2000005338, 0, 0, 0, 0, 0, 0, 0, '');
INSERT INTO `dbscripts_on_quest_end` VALUES (963, 20, 0, 0, 0, 0, 0, 0, 2000005339, 0, 0, 0, 0, 0, 0, 0, '');
INSERT INTO `dbscripts_on_quest_end` VALUES (963, 25, 0, 0, 0, 3843, 10, 0, 2000005340, 0, 0, 0, 0, 0, 0, 0, '');
INSERT INTO `dbscripts_on_quest_end` VALUES (963, 30, 0, 0, 0, 3843, 10, 0, 2000005341, 0, 0, 0, 0, 0, 0, 0, '');
INSERT INTO `dbscripts_on_quest_end` VALUES (963, 35, 0, 0, 0, 0, 0, 0, 2000005342, 0, 0, 0, 0, 0, 0, 0, '');
INSERT INTO `dbscripts_on_quest_end` VALUES (963, 39, 0, 0, 0, 3843, 10, 0, 2000005343, 0, 0, 0, 0, 0, 0, 0, '');
INSERT INTO `dbscripts_on_quest_end` VALUES (963, 42, 0, 2, 0, 3843, 10, 0, 2000005344, 0, 0, 0, 0, 0, 0, 0, 'Anaya - disappear');
INSERT INTO `dbscripts_on_quest_end` VALUES (963, 47, 0, 0, 0, 0, 0, 0, 2000005345, 0, 0, 0, 0, 0, 0, 0, '');
UPDATE `creature_template` SET `AIName` = '' WHERE `entry` = 3843;
UPDATE `creature_template` SET `AIName` = '' WHERE `entry` = 3644;
DELETE FROM `creature_ai_scripts` WHERE `creature_id` = 3843;
DELETE FROM `creature_ai_scripts` WHERE `creature_id` = 3644;
DELETE FROM `creature_ai_texts` WHERE `entry` = -661;
DELETE FROM `creature_ai_texts` WHERE `entry` = -662;
DELETE FROM `creature_ai_texts` WHERE `entry` = -663;
DELETE FROM `creature_ai_texts` WHERE `entry` = -664;
DELETE FROM `creature_ai_texts` WHERE `entry` = -665;
DELETE FROM `creature_ai_texts` WHERE `entry` = -666;
DELETE FROM `creature_ai_texts` WHERE `entry` = -667;
DELETE FROM `creature_ai_texts` WHERE `entry` = -668;
DELETE FROM `creature_ai_texts` WHERE `entry` = -669;
DELETE FROM `creature_ai_texts` WHERE `entry` = -670;

DELETE FROM `gameobject_loot_template` WHERE `entry` = 2603;

--Startup fixes
UPDATE `item_template` SET `class` = 7 WHERE `entry` = 765;
UPDATE `item_template` SET `subclass` = 0 WHERE `entry` = 765;
UPDATE `item_template` SET `class` = 7 WHERE `entry` = 785;
UPDATE `item_template` SET `subclass` = 0 WHERE `entry` = 785;
UPDATE `item_template` SET `class` = 7 WHERE `entry` = 2447;
UPDATE `item_template` SET `subclass` = 0 WHERE `entry` = 2447;
UPDATE `item_template` SET `class` = 7 WHERE `entry` = 2449;
UPDATE `item_template` SET `subclass` = 0 WHERE `entry` = 2449;
UPDATE `item_template` SET `class` = 7 WHERE `entry` = 2450;
UPDATE `item_template` SET `subclass` = 0 WHERE `entry` = 2450;
UPDATE `item_template` SET `class` = 7 WHERE `entry` = 2452;
UPDATE `item_template` SET `subclass` = 0 WHERE `entry` = 2452;
UPDATE `item_template` SET `class` = 7 WHERE `entry` = 2453;
UPDATE `item_template` SET `subclass` = 0 WHERE `entry` = 2453;
UPDATE `item_template` SET `class` = 7 WHERE `entry` = 2931;
UPDATE `item_template` SET `subclass` = 0 WHERE `entry` = 2931;
UPDATE `item_template` SET `class` = 7 WHERE `entry` = 3355;
UPDATE `item_template` SET `subclass` = 0 WHERE `entry` = 3355;
UPDATE `item_template` SET `class` = 7 WHERE `entry` = 3356;
UPDATE `item_template` SET `subclass` = 0 WHERE `entry` = 3356;
UPDATE `item_template` SET `class` = 7 WHERE `entry` = 3357;
UPDATE `item_template` SET `subclass` = 0 WHERE `entry` = 3357;
UPDATE `item_template` SET `class` = 7 WHERE `entry` = 3358;
UPDATE `item_template` SET `subclass` = 0 WHERE `entry` = 3358;
UPDATE `item_template` SET `class` = 7 WHERE `entry` = 3369;
UPDATE `item_template` SET `subclass` = 0 WHERE `entry` = 3369;
UPDATE `item_template` SET `class` = 7 WHERE `entry` = 3818;
UPDATE `item_template` SET `subclass` = 0 WHERE `entry` = 3818;
UPDATE `item_template` SET `class` = 7 WHERE `entry` = 3819;
UPDATE `item_template` SET `subclass` = 0 WHERE `entry` = 3819;
UPDATE `item_template` SET `class` = 7 WHERE `entry` = 3820;
UPDATE `item_template` SET `subclass` = 0 WHERE `entry` = 3820;
UPDATE `item_template` SET `class` = 7 WHERE `entry` = 3821;
UPDATE `item_template` SET `subclass` = 0 WHERE `entry` = 3821;
UPDATE `item_template` SET `class` = 7 WHERE `entry` = 4625;
UPDATE `item_template` SET `subclass` = 0 WHERE `entry` = 4625;
UPDATE `item_template` SET `class` = 7 WHERE `entry` = 8153;
UPDATE `item_template` SET `subclass` = 0 WHERE `entry` = 8153;
UPDATE `item_template` SET `class` = 7 WHERE `entry` = 8831;
UPDATE `item_template` SET `subclass` = 0 WHERE `entry` = 8831;
UPDATE `item_template` SET `class` = 7 WHERE `entry` = 8836;
UPDATE `item_template` SET `subclass` = 0 WHERE `entry` = 8836;
UPDATE `item_template` SET `class` = 7 WHERE `entry` = 8838;
UPDATE `item_template` SET `subclass` = 0 WHERE `entry` = 8838;
UPDATE `item_template` SET `class` = 7 WHERE `entry` = 8839;
UPDATE `item_template` SET `subclass` = 0 WHERE `entry` = 8839;
UPDATE `item_template` SET `class` = 7 WHERE `entry` = 8845;
UPDATE `item_template` SET `subclass` = 0 WHERE `entry` = 8845;
UPDATE `item_template` SET `class` = 7 WHERE `entry` = 8846;
UPDATE `item_template` SET `subclass` = 0 WHERE `entry` = 8846;
UPDATE `item_template` SET `class` = 7 WHERE `entry` = 13463;
UPDATE `item_template` SET `subclass` = 0 WHERE `entry` = 13463;
UPDATE `item_template` SET `class` = 7 WHERE `entry` = 13464;
UPDATE `item_template` SET `subclass` = 0 WHERE `entry` = 13464;
UPDATE `item_template` SET `class` = 7 WHERE `entry` = 13465;
UPDATE `item_template` SET `subclass` = 0 WHERE `entry` = 13465;
UPDATE `item_template` SET `class` = 7 WHERE `entry` = 13466;
UPDATE `item_template` SET `subclass` = 0 WHERE `entry` = 13466;
UPDATE `item_template` SET `class` = 7 WHERE `entry` = 13467;
UPDATE `item_template` SET `subclass` = 0 WHERE `entry` = 13467;
UPDATE `item_template` SET `class` = 7 WHERE `entry` = 13468;
UPDATE `item_template` SET `subclass` = 0 WHERE `entry` = 13468;
UPDATE `creature` SET `curhealth` = 633420 WHERE `guid` = 4770;

-- And even more old fixes

UPDATE `gameobject_template` SET `type` = 10 WHERE `entry` = 179544;
UPDATE `quest_template` SET `SpecialFlags` = 0 WHERE `entry` = 7481;
UPDATE `quest_template` SET `ReqCreatureOrGOId1` = -179544 WHERE `entry` = 7481;
UPDATE `quest_template` SET `ReqCreatureOrGOCount1` = 1 WHERE `entry` = 7481;
UPDATE `quest_template` SET `SpecialFlags` = 0 WHERE `entry` = 7482;
UPDATE `quest_template` SET `ReqCreatureOrGOId1` = -179544 WHERE `entry` = 7482;
UPDATE `quest_template` SET `ReqCreatureOrGOCount1` = 1 WHERE `entry` = 7482;

DELETE FROM `pool_template` WHERE `entry` = 1501;
INSERT INTO `pool_template` VALUES (1501,1,'Q3741 hilarys necklace');
DELETE FROM `pool_gameobject` WHERE `pool_entry` = 1501;
INSERT INTO `pool_gameobject` VALUES (31121,1501,25,'Q3741-hilarys necklace'),
(20836,1501,25,'Q3741-hilarys necklace'),
(110001,1501,25,'Q3741-hilarys necklace'),
(110002,1501,25,'Q3741-hilarys necklace');

DELETE FROM `gameobject` WHERE `guid` = 20836;
DELETE FROM `gameobject` WHERE `guid` = 31121;
DELETE FROM `gameobject` WHERE `guid` = 632442;
DELETE FROM `gameobject` WHERE `guid` = 632443;
DELETE FROM `gameobject` WHERE `guid` = 110001;
DELETE FROM `gameobject` WHERE `guid` = 110002;
INSERT INTO `gameobject` VALUES (20836,154357,0,-9363.99,-2396.56,36.8816,-2.00713,0,0,0.843391,-0.5373,10,100,1),
(31121,154357,0,-9324.1,-1986.69,43.5814,-0.331612,0,0,0.165048,-0.986286,10,100,1),
(632442,180832,1,1619.83,-4092.43,34.5107,-2.58309,0,0,0.961262,-0.275637,10,100,1),
(632443,180838,1,1683.11,-4134.35,39.5419,-2.56563,0,0,0.95882,-0.284015,10,100,1),
(110001,154357,0,-9347.77,-2311.8,45.5503,0.209232,0,0,0.104425,0.994533,5,100,1),
(110002,154357,0,-9352.8,-2211.7,45.9003,0.872893,0,0,0.422722,0.90626,5,100,1);

DELETE FROM `creature` WHERE `guid` = 49850;
INSERT INTO `creature` VALUES (49850,2038,1,1013,0,10129.1,1148.93,1314.48,2.35297,300,2,0,155,165,0,1);

DELETE FROM `gameobject_template` WHERE `entry` = 186242;
DELETE FROM `gameobject_template` WHERE `entry` = 186241;
DELETE FROM `gameobject_template` WHERE `entry` = 182024;

DELETE FROM `gameobject` WHERE `guid` = 7502;

DELETE FROM `creature` WHERE `guid` = 266;
DELETE FROM `creature` WHERE `guid` = 267;
DELETE FROM `creature` WHERE `guid` = 268;
DELETE FROM `creature` WHERE `guid` = 269;
DELETE FROM `creature` WHERE `guid` = 272;
INSERT INTO `creature` VALUES (266,10803,0,10111,0,-6009.32,-198.778,406.707,4.77316,180,0,0,372,0,0,0),
(267,10611,0,9947,0,-6007.49,-200.84,406.842,3.15053,900,0,0,413,0,0,0),
(268,10804,0,10110,0,-6011.38,-200.748,406.849,0.072544,180,0,0,372,0,0,0),
(269,10610,0,9946,0,-6009.39,-202.844,406.995,1.51297,180,0,0,456,0,0,0),
(272,10805,0,10109,0,-6063.66,-201.381,424.404,3.89743,180,0,0,196,0,0,0);

UPDATE `creature_template` SET `resistance3` = 0 WHERE `entry` = 11664;
UPDATE `creature_template` SET `resistance4` = 0 WHERE `entry` = 11664;
UPDATE `creature_template` SET `resistance5` = 0 WHERE `entry` = 11664;
UPDATE `creature_template` SET `resistance6` = 0 WHERE `entry` = 11664;
UPDATE `creature_template` SET `resistance4` = 0 WHERE `entry` = 11666;
UPDATE `creature_template` SET `resistance4` = 0 WHERE `entry` = 11667;
UPDATE `creature_template` SET `resistance4` = 0 WHERE `entry` = 11668;
UPDATE `creature_template` SET `resistance4` = 0 WHERE `entry` = 8909;

UPDATE `creature_template` SET `MovementType` = 1 WHERE `entry` = 3843;

DELETE FROM `dbscripts_on_event` WHERE `id` = 313;
INSERT INTO `dbscripts_on_event` VALUES (313,1,0,0,0,2238,10,4,2000005078,0,0,0,0,0,0,0,'force 2238 to: say text'),
(313,3,0,0,0,2238,10,4,2000005079,0,0,0,0,0,0,0,'force 2238 to: say text');

DELETE FROM `creature_movement_template` WHERE `entry` = 2983;
INSERT INTO `creature_movement_template` VALUES (2983,1,-2236.21,-410.89,-9.42601,2000,0,0,0,0,0,0,0,0,0,5.37218,0,0),
(2983,2,-2236.21,-410.89,-9.42601,4000,0,2000000168,0,0,0,0,0,0,0,5.37218,0,0),
(2983,3,-2214.34,-428.902,-7.86157,0,0,0,0,0,0,0,0,0,0,5.59602,0,0),
(2983,4,-2191.05,-440.163,-4.52789,0,0,0,0,0,0,0,0,0,0,5.85127,0,0),
(2983,5,-2163.19,-446.51,-5.92271,0,0,0,0,0,0,0,0,0,0,6.0751,0,0),
(2983,6,-2130.84,-454.067,-9.34155,0,0,0,0,0,0,0,0,0,0,0.377826,0,0),
(2983,7,-2102.93,-424.125,-5.38765,0,0,0,0,0,0,0,0,0,0,0.915038,0,0),
(2983,8,-2078.06,-390.171,-10.3244,0,0,0,0,0,0,0,0,0,0,0.938601,0,0),
(2983,9,-2051.67,-355.184,-5.34619,0,0,0,0,0,0,0,0,0,0,0.970017,0,0),
(2983,10,-2036.28,-321.563,-8.99381,0,0,0,0,0,0,0,0,0,0,1.15459,0,0),
(2983,11,-2019.59,-284.154,-10.7305,0,0,0,0,0,0,0,0,0,0,1.15066,0,0),
(2983,12,-2000.31,-241.171,-10.7863,0,0,0,0,0,0,0,0,0,0,1.09961,0,0),
(2983,13,-1974.52,-195.515,-10.6412,0,0,0,0,0,0,0,0,0,0,0.97787,0,0),
(2983,14,-1950.36,-159.017,-11.1501,0,0,0,0,0,0,0,0,0,0,1.03678,0,0),
(2983,15,-1921.89,-120.753,-11.7886,0,0,0,0,0,0,0,0,0,0,0.899332,0,0),
(2983,16,-1887.6,-82.903,-11.547,0,0,0,0,0,0,0,0,0,0,0.767385,0,0),
(2983,17,-1846.86,-42.2578,-12.0797,0,0,0,0,0,0,0,0,0,0,0.820791,0,0),
(2983,18,-1798.2,-15.0264,-10.3671,0,0,0,0,0,0,0,0,0,0,1.35957,0,0),
(2983,19,-1797.06,37.3591,-2.06555,0,0,0,0,0,0,0,0,0,0,1.07762,0,0),
(2983,20,-1770.11,67.7142,2.08745,0,0,0,0,0,0,0,0,0,0,1.03992,0,0),
(2983,21,-1752.72,114.745,-0.461769,0,0,0,0,0,0,0,0,0,0,0.821576,0,0),
(2983,22,-1717.69,151.336,3.97792,0,0,0,0,0,0,0,0,0,0,0.777593,0,0),
(2983,23,-1679.98,192.266,10.5913,0,0,0,0,0,0,0,0,0,0,0.860061,0,0),
(2983,24,-1655.82,207.278,8.61911,0,0,0,0,0,0,0,0,0,0,0.604806,0,0),
(2983,25,-1616.72,236.198,2.98487,0,0,0,0,0,0,0,0,0,0,0.428092,0,0),
(2983,26,-1557.23,258.012,9.58834,0,0,0,0,0,0,0,0,0,0,0.831001,0,0),
(2983,27,-1538.76,296.397,31.8461,0,0,0,0,0,0,0,0,0,0,1.21742,0,0),
(2983,28,-1533.94,324.278,56.2612,0,0,0,0,0,0,0,0,0,0,1.00143,0,0),
(2983,29,-1526.39,332.701,63.2045,0,0,0,0,0,0,0,0,0,0,1.08484,0,0),
(2983,30,-1521.71,338.879,63.6666,5000,0,2000000169,0,0,0,0,0,0,0,0.96546,0,0),
(2983,31,-1521.71,338.879,63.6666,0,1,0,0,0,0,0,0,0,0,0.96546,0,0);
DELETE FROM `dbscripts_on_creature_movement` WHERE `id` = 298301;
DELETE FROM `db_script_string` WHERE `entry` = 2000000168;
DELETE FROM `db_script_string` WHERE `entry` = 2000000169;
INSERT INTO `db_script_string` VALUES (2000000168,'%s stares to the northwest and lets out a long, drawn out howl.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,2,0,0,NULL),
(2000000169,'%s lets forth a mighty howl.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,2,0,0,NULL);

DELETE FROM `dbscripts_on_creature_movement` WHERE `id` = 14241;
INSERT INTO `dbscripts_on_creature_movement` VALUES (14241,1,1,35,0,0,0,0,0,0,0,0,0,0,0,0,'ironbark redeemed - emote'),
(14241,6,1,35,0,0,0,0,0,0,0,0,0,0,0,0,'ironbark redeemed - emote'),
(14241,9,11,632439,0,0,0,0,0,0,0,0,0,0,0,0,'ironbark redeemed - open door entry 176907'),
(14241,14,28,7,0,0,0,0,0,0,0,0,0,0,0,0,'ironbark redeemed - fake dead'),
(14241,25,18,0,0,0,0,0,0,0,0,0,0,0,0,0,'ironbark redeemed - despawn self'),
(14241,25,21,0,0,0,0,0,0,0,0,0,0,0,0,0,'ironbark redeemed - set not active');

DELETE FROM `dbscripts_on_creature_movement` WHERE `id` = 173701;
INSERT INTO `dbscripts_on_creature_movement` VALUES (173701,0,20,1,1737,5,0,0,0,0,0,0,0,0,0,0,'Oliver movement changed to 1:random'),
(173701,35,20,2,1737,5,0,0,0,0,0,0,0,0,0,0,'Oliver movement changed to 2:waypoint');

DELETE FROM `creature_movement` WHERE `id` = 28705;
INSERT INTO `creature_movement` VALUES (28705,1,1847.41,1562.06,94.9508,10000,0,0,0,0,0,0,0,0,0,4.77069,0,0),
(28705,2,1850.83,1561.74,94.6875,0,0,0,0,0,0,0,0,0,0,1.53563,0,0),
(28705,3,1853.08,1580.78,94.0011,0,0,0,0,0,0,0,0,0,0,0.87904,0,0),
(28705,4,1862.66,1588.71,92.2148,0,0,0,0,0,0,0,0,0,0,5.92836,0,0),
(28705,5,1879.29,1588.1,90.2351,15000,0,0,0,0,0,0,0,0,0,6.25509,0,0),
(28705,6,1874.32,1590.82,90.8876,0,0,0,0,0,0,0,0,0,0,3.01925,0,0),
(28705,7,1830.79,1592.76,94.3424,0,173901,0,0,0,0,0,0,0,0,3.98686,0,0),
(28705,8,1817.14,1583.13,95.8498,0,173902,0,0,0,0,0,0,0,0,0.086576,0,0),
(28705,9,1818.17,1582.8,95.7979,15000,0,0,0,0,0,0,0,0,0,0.084208,0,0),
(28705,10,1817.71,1571.91,95.6719,0,0,0,0,0,0,0,0,0,0,5.1783,0,0),
(28705,11,1820.69,1568.39,95.6401,0,0,0,0,0,0,0,0,0,0,5.6943,0,0),
(28705,12,1828.08,1564.87,95.6222,8000,0,0,0,0,0,0,0,0,0,5.68566,0,0),
(28705,13,1829.92,1577.48,95.6222,0,0,0,0,0,0,0,0,0,0,0.985835,0,0),
(28705,14,1835.97,1584.46,94.2479,0,0,0,0,0,0,0,0,0,0,0.185514,0,0),
(28705,15,1846.08,1583.83,93.7457,0,0,0,0,0,0,0,0,0,0,4.75496,0,0),
(28705,16,1847.03,1571.37,95.0757,0,0,0,0,0,0,0,0,0,0,4.73926,0,0);

DELETE FROM `dbscripts_on_creature_movement` WHERE `id` = 173901;
DELETE FROM `dbscripts_on_creature_movement` WHERE `id` = 173902;
INSERT INTO `dbscripts_on_creature_movement` VALUES (173901,0,25,1,1739,5,0,0,0,0,0,0,0,0,0,0,'Phillip RUN ON'),
(173902,0,25,0,1739,5,0,0,0,0,0,0,0,0,0,0,'Phillip RUN OFF');

UPDATE `creature_ai_scripts` SET `event_flags` = 2 WHERE `id` = 1214301;
UPDATE `creature_ai_scripts` SET `event_flags` = 2 WHERE `id` = 1521501;

UPDATE `creature` SET `modelid` = 3441 WHERE `guid` = 180;
UPDATE `creature_model_info` SET `modelid_other_gender` = 0 WHERE `modelid` = 3441;

DELETE FROM `gameobject` WHERE `guid` = 632440;
INSERT INTO `gameobject` VALUES (632440,180055,43,-97.6,173.8,-79,2.08,0,0,0,0,600,100,1);

DELETE FROM `gameobject_template` WHERE `entry` = 180055;
INSERT INTO `gameobject_template` VALUES (180055,2,318,'Mysterious Wailing Caverns Chest',0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

DELETE FROM `gameobject_involvedrelation` WHERE `quest` = 7944;
INSERT INTO `gameobject_involvedrelation` VALUES (180055,7944);

DELETE FROM `gameobject` WHERE `guid` = 632440;
DELETE FROM `gameobject` WHERE `guid` = 632441;
DELETE FROM `gameobject` WHERE `guid` = 632442;
DELETE FROM `gameobject` WHERE `guid` = 632443;
DELETE FROM `gameobject` WHERE `guid` = 632444;
DELETE FROM `gameobject` WHERE `guid` = 632445;
INSERT INTO `gameobject` VALUES (632440,180055,43,-97.6,173.8,-79,2.08,0,0,0,0,600,100,1),
(632441,180826,1,1579.35,-4109.25,34.5417,-2.53073,0,0,0.953717,-0.300706,180,100,1),
(632442,180832,1,1619.83,-4092.43,34.5107,-2.58309,0,0,0.961262,-0.275637,180,100,1),
(632443,180838,1,1683.11,-4134.35,39.5419,-2.56563,0,0,0.95882,-0.284015,180,100,1),
(632444,180818,1,1637.11,-4147.21,36.0414,-2.54818,0,0,0.956305,-0.292372,180,100,1),
(632445,180812,1,1590.82,-4155.33,36.2926,-2.58309,0,0,0.961262,-0.275637,180,100,1);
DELETE FROM `game_event_gameobject` WHERE `guid` = 180598;
DELETE FROM `game_event_gameobject` WHERE `guid` = 63240;
DELETE FROM `game_event_gameobject` WHERE `guid` = 63241;
DELETE FROM `game_event_gameobject` WHERE `guid` = 63242;
DELETE FROM `game_event_gameobject` WHERE `guid` = 63243;
DELETE FROM `game_event_gameobject` WHERE `guid` = 63244;
DELETE FROM `game_event_gameobject` WHERE `guid` = 63245;
INSERT INTO `game_event_gameobject` VALUES (180598,22),
(63240,22),
(63241,22),
(63242,22),
(63243,22),
(63244,22),
(63245,22);

DELETE FROM `player_xp_for_level` WHERE `lvl` = 60;
INSERT INTO `player_xp_for_level` VALUES (60,217400);

-- reimport more fixes
DELETE FROM `creature_battleground` WHERE `guid` = 150720;
DELETE FROM `creature_battleground` WHERE `guid` = 150722;
DELETE FROM `creature_battleground` WHERE `guid` = 150739;
DELETE FROM `creature_battleground` WHERE `guid` = 150741;
DELETE FROM `creature_battleground` WHERE `guid` = 150861;
DELETE FROM `creature_battleground` WHERE `guid` = 150866;
DELETE FROM `creature_battleground` WHERE `guid` = 150869;
DELETE FROM `creature_battleground` WHERE `guid` = 150870;
DELETE FROM `creature_battleground` WHERE `guid` = 150871;
DELETE FROM `creature_battleground` WHERE `guid` = 150872;
DELETE FROM `creature_battleground` WHERE `guid` = 150873;
DELETE FROM `creature_battleground` WHERE `guid` = 150874;
DELETE FROM `creature_battleground` WHERE `guid` = 150875;
DELETE FROM `creature_battleground` WHERE `guid` = 150877;
DELETE FROM `creature_battleground` WHERE `guid` = 150878;
DELETE FROM `creature_battleground` WHERE `guid` = 150884;
DELETE FROM `creature_battleground` WHERE `guid` = 150892;
DELETE FROM `creature_battleground` WHERE `guid` = 150896;
DELETE FROM `creature_battleground` WHERE `guid` = 150898;
DELETE FROM `creature_battleground` WHERE `guid` = 150900;
DELETE FROM `creature_battleground` WHERE `guid` = 150901;
DELETE FROM `creature_battleground` WHERE `guid` = 150903;
DELETE FROM `creature_battleground` WHERE `guid` = 150904;
DELETE FROM `creature_battleground` WHERE `guid` = 150905;
DELETE FROM `creature_battleground` WHERE `guid` = 150908;
DELETE FROM `creature_battleground` WHERE `guid` = 150909;

UPDATE `creature_template` SET `npcflag` = 2 WHERE `entry` = 15702;
UPDATE `creature_template` SET `npcflag` = 2 WHERE `entry` = 16241;
UPDATE `creature_template` SET `npcflag` = 2 WHERE `entry` = 16255;
UPDATE `creature_template` SET `npcflag` = 2 WHERE `entry` = 16484;
UPDATE `creature_template` SET `npcflag` = 2 WHERE `entry` = 16490;
UPDATE `creature_template` SET `npcflag` = 2 WHERE `entry` = 16493;
UPDATE `creature_template` SET `npcflag` = 2 WHERE `entry` = 16495;
UPDATE `creature_template` SET `npcflag` = 2 WHERE `entry` =16787;

DELETE FROM `quest_template` WHERE `entry` = 8228;
DELETE FROM `quest_template` WHERE `entry` = 8229;
INSERT INTO `quest_template` VALUES (8228,0,-101,55,60,0,0,178,356,0,0,0,0,0,0,0,0,0,8,1,0,0,0,0,0,0,0,'Could I get a Fishing Flier?','','','There be a Fishin Contest in Booty Bay this Sunday! Here are the rules for ya!','','','','','','',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,19978,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0);
INSERT INTO `quest_template` VALUES (8229,0,-101,55,60,0,0,77,356,0,0,0,0,0,0,0,0,0,8,1,0,0,0,0,0,0,0,'Could I get a Fishing Flier?','','','There is a Fishing Contest in Booty Bay this Sunday! Here are the rules for you!','','','','','','',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,19978,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0);

UPDATE `quest_template` SET `RequiredRaces` = 77 WHERE `entry` = 1271;
UPDATE `quest_template` SET `RequiredRaces` = 178 WHERE `entry` = 1273;
UPDATE `quest_template` SET `RequiredRaces` = 178 WHERE `entry` = 3517;
UPDATE `quest_template` SET `RequiredRaces` = 178 WHERE `entry` = 3518;
UPDATE `quest_template` SET `RequiredRaces` = 178 WHERE `entry` = 3541;
UPDATE `quest_template` SET `RequiredRaces` = 178 WHERE `entry` = 3542;
UPDATE `quest_template` SET `RequiredRaces` = 178 WHERE `entry` = 3561;
UPDATE `quest_template` SET `RequiredRaces` = 178 WHERE `entry` = 3563;
UPDATE `quest_template` SET `RequiredRaces` = 178 WHERE `entry` = 3564;
UPDATE `quest_template` SET `RequiredRaces` = 178 WHERE `entry` = 3565;
UPDATE `quest_template` SET `RequiredRaces` = 178 WHERE `entry` = 6570;
UPDATE `quest_template` SET `RequiredRaces` = 178 WHERE `entry` = 7541;
UPDATE `quest_template` SET `RequiredRaces` = 77 WHERE `entry` = 990;
UPDATE `quest_template` SET `ZoneOrSort` = 361 WHERE `entry` = 2878;
UPDATE `quest_template` SET `RequiredRaces` = 77 WHERE `entry` = 2939;
UPDATE `quest_template` SET `RequiredRaces` = 77 WHERE `entry` = 2941;
UPDATE `quest_template` SET `RequiredRaces` = 77 WHERE `entry` = 2942;
UPDATE `quest_template` SET `RequiredRaces` = 77 WHERE `entry` = 2943;
UPDATE `quest_template` SET `RequiredRaces` = 178 WHERE `entry` = 2975;
UPDATE `quest_template` SET `RequiredRaces` = 178 WHERE `entry` = 2980;
UPDATE `quest_template` SET `RequiredRaces` = 178 WHERE `entry` = 3122;
UPDATE `quest_template` SET `RequiredRaces` = 178 WHERE `entry` = 3123;
UPDATE `quest_template` SET `RequiredRaces` = 178 WHERE `entry` = 3124;
UPDATE `quest_template` SET `RequiredRaces` = 178 WHERE `entry` = 3125;
UPDATE `quest_template` SET `RequiredRaces` = 178 WHERE `entry` = 3126;
UPDATE `quest_template` SET `RequiredRaces` = 178 WHERE `entry` = 3127;
UPDATE `quest_template` SET `RequiredRaces` = 178 WHERE `entry` = 3129;
UPDATE `quest_template` SET `RequiredRaces` = 178 WHERE `entry` = 6383;
UPDATE `quest_template` SET `RequiredRaces` = 178 WHERE `entry` = 7731;
UPDATE `quest_template` SET `RequiredRaces` = 77 WHERE `entry` = 7733;
UPDATE `quest_template` SET `RequiredRaces` = 178 WHERE `entry` = 7734;

DELETE FROM `creature` WHERE `guid` = 975;
DELETE FROM `creature` WHERE `guid` = 1084;
INSERT INTO `creature` VALUES (975,706,0,5606,0,-6500.97,480.333,388.613,3.51687,180,5,0,74,0,0,1);
INSERT INTO `creature` VALUES (1084,706,0,5606,0,-6491,400.313,384.83,4.83242,180,5,0,74,0,0,1);

UPDATE `creature` SET `MovementType` = 2 WHERE `guid` = 28706;
DELETE FROM `creature_movement` WHERE `id` = 28706;
INSERT INTO `creature_movement` VALUES (28706,1,1819.56,1590.7,95.917,0,0,0,0,0,0,0,0,0,0,3.13374,0,0),
(28706,2,1798.88,1595.39,101.257,0,0,0,0,0,0,0,0,0,0,2.1421,0,0),
(28706,3,1797.66,1600.84,102.917,0,0,0,0,0,0,0,0,0,0,1.21376,0,0),
(28706,4,1804.48,1604.08,102.872,10000,0,0,0,0,0,0,0,0,0,0.49276,0,0),
(28706,5,1797.25,1601.4,102.968,0,0,0,0,0,0,0,0,0,0,4.71899,0,0),
(28706,6,1798.38,1595.07,101.349,0,0,0,0,0,0,0,0,0,0,0.099272,0,0),
(28706,7,1820.85,1590.95,95.6439,0,0,0,0,0,0,0,0,0,0,0.77,0,0),
(28706,8,1828.54,1611.1,95.7643,0,0,0,0,0,0,0,0,0,0,1.43916,0,0),
(28706,9,1826.47,1644.35,95.6223,30000,0,0,0,0,0,0,0,0,0,1.56295,0,0),
(28706,10,1827.58,1597.64,95.3776,0,0,0,0,0,0,0,0,0,0,4.66134,0,0),
(28706,11,1827.58,1597.64,95.3776,40000,173701,0,0,0,0,0,0,0,0,4.66134,0,0);

UPDATE `creature` SET `MovementType` = 2 WHERE `guid` = 8877;
DELETE FROM `creature_movement` WHERE `id` = 8877;
INSERT INTO `creature_movement` VALUES (8877,1,-5677.17,-3165.29,317.711,0,0,0,0,0,0,0,0,0,0,1.57789,0,0),
(8877,2,-5683.2,-3147.19,313.037,0,0,0,0,0,0,0,0,0,0,2.30046,0,0),
(8877,3,-5716.18,-3110.81,316.687,0,0,0,0,0,0,0,0,0,0,2.03425,0,0),
(8877,4,-5716.19,-3093.08,325.601,0,0,0,0,0,0,0,0,0,0,1.55254,0,0),
(8877,5,-5712.21,-3090.3,327.739,0,0,0,0,0,0,0,0,0,0,0.589117,0,0),
(8877,6,-5705.48,-3092.52,329.362,0,0,0,0,0,0,0,0,0,0,5.92394,0,0),
(8877,7,-5681.83,-3110.57,338.122,0,0,0,0,0,0,0,0,0,0,5.64294,0,0),
(8877,8,-5659.5,-3122.22,344.336,0,0,0,0,0,0,0,0,0,0,5.78846,0,0),
(8877,9,-5639.59,-3124.54,348.405,0,0,0,0,0,0,0,0,0,0,6.16981,0,0),
(8877,10,-5618.11,-3110.91,360.618,0,0,0,0,0,0,0,0,0,0,0.664387,0,0),
(8877,11,-5621.49,-3096.32,368.248,0,0,0,0,0,0,0,0,0,0,1.82939,0,0),
(8877,12,-5632.21,-3078.61,374.991,0,0,0,0,0,0,0,0,0,0,2.11541,0,0),
(8877,13,-5629.79,-3056.12,384.466,0,0,0,0,0,0,0,0,0,0,1.49821,0,0),
(8877,14,-5642.28,-3036.87,385.472,0,0,0,0,0,0,0,0,0,0,2.15053,0,0),
(8877,15,-5609.37,-3006.88,386.288,300000,0,0,0,0,0,0,0,0,0,3.90812,0,0),
(8877,16,-5643.63,-3036.39,385.532,0,0,0,0,0,0,0,0,0,0,3.87666,0,0),
(8877,17,-5630.17,-3057.02,384.386,0,0,0,0,0,0,0,0,0,0,5.2666,0,0),
(8877,18,-5629.84,-3065.5,381.13,0,0,0,0,0,0,0,0,0,0,4.72468,0,0),
(8877,19,-5634.87,-3078.45,374.489,0,0,0,0,0,0,0,0,0,0,4.41859,0,0),
(8877,20,-5620.42,-3101.08,364.82,0,0,0,0,0,0,0,0,0,0,5.31678,0,0),
(8877,21,-5624.63,-3117.04,354.494,0,0,0,0,0,0,0,0,0,0,4.12756,0,0),
(8877,22,-5644.95,-3125.08,347.271,0,0,0,0,0,0,0,0,0,0,2.95841,0,0),
(8877,23,-5660.74,-3121.58,343.976,0,0,0,0,0,0,0,0,0,0,2.90321,0,0),
(8877,24,-5676.21,-3111.59,340.021,0,0,0,0,0,0,0,0,0,0,2.58207,0,0),
(8877,25,-5691.9,-3102.99,333.647,0,0,0,0,0,0,0,0,0,0,2.61719,0,0),
(8877,26,-5711.66,-3088.43,328.762,0,0,0,0,0,0,0,0,0,0,2.75769,0,0),
(8877,27,-5717.66,-3099.03,321.687,0,0,0,0,0,0,0,0,0,0,4.14763,0,0),
(8877,28,-5705.21,-3132.32,315.838,0,0,0,0,0,0,0,0,0,0,5.09097,0,0),
(8877,29,-5683.2,-3147.19,313.037,0,0,0,0,0,0,0,0,0,0,2.30046,0,0),
(8877,30,-5677.17,-3165.29,317.711,0,0,0,0,0,0,0,0,0,0,1.57789,0,0),
(8877,31,-5679.01,-3185.05,319.508,0,0,0,0,0,0,0,0,0,0,5.1261,0,0);

DELETE FROM `creature_movement_template` WHERE `entry` = 14241;
INSERT INTO `creature_movement_template` VALUES (14241,1,-46.5029,-268.536,-57.4978,0,0,0,0,0,0,0,0,0,0,0,0,0),
(14241,2,-10.6115,-281.676,-53.7415,0,0,0,0,0,0,0,0,0,0,0,0,0),
(14241,3,17.2824,-286.947,-52.2818,0,0,0,0,0,0,0,0,0,0,0,0,0),
(14241,4,74.1724,-272.765,-54.8267,0,0,0,0,0,0,0,0,0,0,0,0,0),
(14241,5,117.401,-277.83,-55.8552,30000,14241,0,0,0,0,0,0,0,0,0,0,0);

UPDATE `quest_template` SET `RequiredRaces` = 178 WHERE `entry` = 4506;
UPDATE `quest_template` SET `RequiredRaces` = 77 WHERE `entry` = 5801;
UPDATE `quest_template` SET `RequiredRaces` = 0 WHERE `entry` = 5124;
UPDATE `quest_template` SET `RequiredRaces` = 77 WHERE `entry` = 5252;
UPDATE `quest_template` SET `RequiredRaces` = 0 WHERE `entry` = 6606;
UPDATE `quest_template` SET `RequiredRaces` = 178 WHERE `entry` = 9422;
UPDATE `quest_template` SET `RequiredRaces` = 178 WHERE `entry` = 8913;
UPDATE `quest_template` SET `RequiredRaces` = 178 WHERE `entry` = 8927;

DELETE FROM `gameobject` WHERE `guid` = 632439;
INSERT INTO `gameobject` VALUES (632439,176907,429,131.286,-278.89,-56.5211,3.14159,0,0,-1,0,180,255,1);

-- reimport fixes
DELETE FROM `creature` WHERE `guid` = 80057;

DELETE FROM `creature_ai_scripts` WHERE `creature_id` = 424;
INSERT INTO `creature_ai_scripts` VALUES (42401,424,4,0,10,0,0,0,0,0,1,-5,-6,0,0,0,0,0,0,0,0,0,'Redridge Poacher - Random Say on Aggro');
INSERT INTO `creature_ai_scripts` VALUES (42402,424,9,5,100,1,5,30,3400,3700,11,6660,1,0,40,2,0,0,0,0,0,0,'Redridge Poacher - Cast Shoot and Set Ranged Weapon Model (Phase 1)');
INSERT INTO `creature_ai_scripts` VALUES (42403,424,2,0,100,0,15,0,0,0,23,1,0,0,0,0,0,0,0,0,0,0,'Redridge Poacher - Set Phase 2 at 15% HP');
INSERT INTO `creature_ai_scripts` VALUES (42404,424,2,3,100,0,15,0,0,0,21,1,0,0,25,0,0,0,1,-47,0,0,'Redridge Poacher - Start Combat Movement and Flee at 15% HP (Phase 2)');

DELETE FROM `creature_ai_scripts` WHERE `id` = 1609602;
INSERT INTO `creature_ai_scripts` VALUES (1609602,16096,9,5,100,1,5,45,2200,3800,11,23337,1,0,40,2,0,0,0,0,0,0,'Steamwheedle Bruiser - Cast Shoot and Set Ranged Weapon Model (Phase 1)');

UPDATE `creature_template` SET `faction_A` = 31 WHERE `entry` = 10259;
UPDATE `creature_template` SET `faction_H` = 31 WHERE `entry` = 10259;
UPDATE `creature_template` SET `rank` = 1 WHERE `entry` = 16096;

UPDATE `gameobject` SET `spawntimesecs` = 2 WHERE `guid` = 10644;
UPDATE `gameobject` SET `spawntimesecs` = 2 WHERE `guid` = 10830;

-- missing questrelations
DELETE FROM `creature_involvedrelation` WHERE `quest` = 7221;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 7222;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 7364;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 7365;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 7660;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 7661;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 7662;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 7663;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 7664;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 7665;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 7671;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 7672;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 7673;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 7674;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 7675;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 7676;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 7677;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 7678;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 8266;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 8267;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 8268;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 8269;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 8289;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 8290;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 8295;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 8461;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 8579;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 8616;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 8795;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 8796;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 8797;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 8869;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 9085;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 9094;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 9153;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 9154;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 9165;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 9247;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 9261;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 9262;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 9263;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 9264;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 9292;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 9295;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 9299;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 9300;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 9301;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 9302;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 9304;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 9310;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 9319;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 9322;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 9323;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 9333;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 9339;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 9365;
DELETE FROM `creature_involvedrelation` WHERE `quest` = 9386;
INSERT INTO `creature_involvedrelation` VALUES (384, 7677);
INSERT INTO `creature_involvedrelation` VALUES (384, 7678);
INSERT INTO `creature_involvedrelation` VALUES (1261,7673);
INSERT INTO `creature_involvedrelation` VALUES (1261,7674);
INSERT INTO `creature_involvedrelation` VALUES (3362,7660);
INSERT INTO `creature_involvedrelation` VALUES (3362,7661);
INSERT INTO `creature_involvedrelation` VALUES (3685,7662);
INSERT INTO `creature_involvedrelation` VALUES (3685,7663);
INSERT INTO `creature_involvedrelation` VALUES (4730,7671);
INSERT INTO `creature_involvedrelation` VALUES (4730,7672);
INSERT INTO `creature_involvedrelation` VALUES (7952,7664);
INSERT INTO `creature_involvedrelation` VALUES (7952,7665);
INSERT INTO `creature_involvedrelation` VALUES (7955,7675);
INSERT INTO `creature_involvedrelation` VALUES (7955,7676);
INSERT INTO `creature_involvedrelation` VALUES (11191,8869);
INSERT INTO `creature_involvedrelation` VALUES (13816,7221);
INSERT INTO `creature_involvedrelation` VALUES (13817,7222);
INSERT INTO `creature_involvedrelation` VALUES (14187,7365);
INSERT INTO `creature_involvedrelation` VALUES (14188,7364);
INSERT INTO `creature_involvedrelation` VALUES (14733,8268);
INSERT INTO `creature_involvedrelation` VALUES (14733,8269);
INSERT INTO `creature_involvedrelation` VALUES (14733,8289);
INSERT INTO `creature_involvedrelation` VALUES (14733,8290);
INSERT INTO `creature_involvedrelation` VALUES (14781,8266);
INSERT INTO `creature_involvedrelation` VALUES (14781,8267);
INSERT INTO `creature_involvedrelation` VALUES (14781,8295);
INSERT INTO `creature_involvedrelation` VALUES (15395,8461);
INSERT INTO `creature_involvedrelation` VALUES (15503,8579);
INSERT INTO `creature_involvedrelation` VALUES (15535,8616);
INSERT INTO `creature_involvedrelation` VALUES (15701,8795);
INSERT INTO `creature_involvedrelation` VALUES (15701,8796);
INSERT INTO `creature_involvedrelation` VALUES (16281,9154);
INSERT INTO `creature_involvedrelation` VALUES (16281,9247);
INSERT INTO `creature_involvedrelation` VALUES (16281,9295);
INSERT INTO `creature_involvedrelation` VALUES (16281,9299);
INSERT INTO `creature_involvedrelation` VALUES (16281,9300);
INSERT INTO `creature_involvedrelation` VALUES (16281,9301);
INSERT INTO `creature_involvedrelation` VALUES (16281,9302);
INSERT INTO `creature_involvedrelation` VALUES (16281,9304);
INSERT INTO `creature_involvedrelation` VALUES (16361,9085);
INSERT INTO `creature_involvedrelation` VALUES (16361,9153);
INSERT INTO `creature_involvedrelation` VALUES (16478,9292);
INSERT INTO `creature_involvedrelation` VALUES (16484,9261);
INSERT INTO `creature_involvedrelation` VALUES (16490,9264);
INSERT INTO `creature_involvedrelation` VALUES (16493,9263);
INSERT INTO `creature_involvedrelation` VALUES (16494,9310);
INSERT INTO `creature_involvedrelation` VALUES (16495,9262);
INSERT INTO `creature_involvedrelation` VALUES (16787,9094);
INSERT INTO `creature_involvedrelation` VALUES (16787,9333);
INSERT INTO `creature_involvedrelation` VALUES (16788,9319);
INSERT INTO `creature_involvedrelation` VALUES (16788,9322);
INSERT INTO `creature_involvedrelation` VALUES (16788,9323);
INSERT INTO `creature_involvedrelation` VALUES (16788,9386);
INSERT INTO `creature_involvedrelation` VALUES (16817,9365);
INSERT INTO `creature_involvedrelation` VALUES (16818,9339);
INSERT INTO `creature_involvedrelation` VALUES (15701,8797);
INSERT INTO `creature_involvedrelation` VALUES (16212,9165);

DELETE FROM `creature_questrelation` WHERE `quest` = 7364;
DELETE FROM `creature_questrelation` WHERE `quest` = 7365;
DELETE FROM `creature_questrelation` WHERE `quest` = 7660;
DELETE FROM `creature_questrelation` WHERE `quest` = 7661;
DELETE FROM `creature_questrelation` WHERE `quest` = 7662;
DELETE FROM `creature_questrelation` WHERE `quest` = 7663;
DELETE FROM `creature_questrelation` WHERE `quest` = 7664;
DELETE FROM `creature_questrelation` WHERE `quest` = 7665;
DELETE FROM `creature_questrelation` WHERE `quest` = 7671;
DELETE FROM `creature_questrelation` WHERE `quest` = 7672;
DELETE FROM `creature_questrelation` WHERE `quest` = 7673;
DELETE FROM `creature_questrelation` WHERE `quest` = 7674;
DELETE FROM `creature_questrelation` WHERE `quest` = 7675;
DELETE FROM `creature_questrelation` WHERE `quest` = 7676;
DELETE FROM `creature_questrelation` WHERE `quest` = 7677;
DELETE FROM `creature_questrelation` WHERE `quest` = 7678;
DELETE FROM `creature_questrelation` WHERE `quest` = 8266;
DELETE FROM `creature_questrelation` WHERE `quest` = 8267;
DELETE FROM `creature_questrelation` WHERE `quest` = 8268;
DELETE FROM `creature_questrelation` WHERE `quest` = 8269;
DELETE FROM `creature_questrelation` WHERE `quest` = 8289;
DELETE FROM `creature_questrelation` WHERE `quest` = 8290;
DELETE FROM `creature_questrelation` WHERE `quest` = 8295;
DELETE FROM `creature_questrelation` WHERE `quest` = 8356;
DELETE FROM `creature_questrelation` WHERE `quest` = 8461;
DELETE FROM `creature_questrelation` WHERE `quest` = 8481;
DELETE FROM `creature_questrelation` WHERE `quest` = 8484;
DELETE FROM `creature_questrelation` WHERE `quest` = 8579;
DELETE FROM `creature_questrelation` WHERE `quest` = 8616;
DELETE FROM `creature_questrelation` WHERE `quest` = 8659;
DELETE FROM `creature_questrelation` WHERE `quest` = 8763;
DELETE FROM `creature_questrelation` WHERE `quest` = 8792;
DELETE FROM `creature_questrelation` WHERE `quest` = 8795;
DELETE FROM `creature_questrelation` WHERE `quest` = 8796;
DELETE FROM `creature_questrelation` WHERE `quest` = 8869;
DELETE FROM `creature_questrelation` WHERE `quest` = 8980;
DELETE FROM `creature_questrelation` WHERE `quest` = 8983;
DELETE FROM `creature_questrelation` WHERE `quest` = 9025;
DELETE FROM `creature_questrelation` WHERE `quest` = 9027;
DELETE FROM `creature_questrelation` WHERE `quest` = 9085;
DELETE FROM `creature_questrelation` WHERE `quest` = 9094;
DELETE FROM `creature_questrelation` WHERE `quest` = 9153;
DELETE FROM `creature_questrelation` WHERE `quest` = 9154;
DELETE FROM `creature_questrelation` WHERE `quest` = 9154;
DELETE FROM `creature_questrelation` WHERE `quest` = 9261;
DELETE FROM `creature_questrelation` WHERE `quest` = 9262;
DELETE FROM `creature_questrelation` WHERE `quest` = 9263;
DELETE FROM `creature_questrelation` WHERE `quest` = 9264;
DELETE FROM `creature_questrelation` WHERE `quest` = 9292;
DELETE FROM `creature_questrelation` WHERE `quest` = 9310;
DELETE FROM `creature_questrelation` WHERE `quest` = 9319;
DELETE FROM `creature_questrelation` WHERE `quest` = 9322;
DELETE FROM `creature_questrelation` WHERE `quest` = 9323;
DELETE FROM `creature_questrelation` WHERE `quest` = 9333;
DELETE FROM `creature_questrelation` WHERE `quest` = 9339;
DELETE FROM `creature_questrelation` WHERE `quest` = 9365;
DELETE FROM `creature_questrelation` WHERE `quest` = 9386;
INSERT INTO `creature_questrelation` VALUES (279,9025);
INSERT INTO `creature_questrelation` VALUES (384,7677);
INSERT INTO `creature_questrelation` VALUES (384,7678);
INSERT INTO `creature_questrelation` VALUES (1261,7673);
INSERT INTO `creature_questrelation` VALUES (1261,7674);
INSERT INTO `creature_questrelation` VALUES (3362,7660);
INSERT INTO `creature_questrelation` VALUES (3362,7661);
INSERT INTO `creature_questrelation` VALUES (3685,7662);
INSERT INTO `creature_questrelation` VALUES (3685,7663);
INSERT INTO `creature_questrelation` VALUES (4730,7671);
INSERT INTO `creature_questrelation` VALUES (4730,7672);
INSERT INTO `creature_questrelation` VALUES (5204,8980);
INSERT INTO `creature_questrelation` VALUES (6740,8356);
INSERT INTO `creature_questrelation` VALUES (6740,9027);
INSERT INTO `creature_questrelation` VALUES (6741,8983);
INSERT INTO `creature_questrelation` VALUES (7952,7664);
INSERT INTO `creature_questrelation` VALUES (7952,7665);
INSERT INTO `creature_questrelation` VALUES (7955,7675);
INSERT INTO `creature_questrelation` VALUES (7955,7676);
INSERT INTO `creature_questrelation` VALUES (11191,8869);
INSERT INTO `creature_questrelation` VALUES (11555,8481);
INSERT INTO `creature_questrelation` VALUES (11555,8484);
INSERT INTO `creature_questrelation` VALUES (13433,8763);
INSERT INTO `creature_questrelation` VALUES (14187,7365);
INSERT INTO `creature_questrelation` VALUES (14188,7364);
INSERT INTO `creature_questrelation` VALUES (14733,8268);
INSERT INTO `creature_questrelation` VALUES (14733,8269);
INSERT INTO `creature_questrelation` VALUES (14733,8289);
INSERT INTO `creature_questrelation` VALUES (14733,8290);
INSERT INTO `creature_questrelation` VALUES (14781,8266);
INSERT INTO `creature_questrelation` VALUES (14781,8267);
INSERT INTO `creature_questrelation` VALUES (14781,8295);
INSERT INTO `creature_questrelation` VALUES (15395,8461);
INSERT INTO `creature_questrelation` VALUES (15502,8659);
INSERT INTO `creature_questrelation` VALUES (15503,8579);
INSERT INTO `creature_questrelation` VALUES (15535,8616);
INSERT INTO `creature_questrelation` VALUES (15702,8792);
INSERT INTO `creature_questrelation` VALUES (15707,8795);
INSERT INTO `creature_questrelation` VALUES (15708,8796);
INSERT INTO `creature_questrelation` VALUES (16241,9154);
INSERT INTO `creature_questrelation` VALUES (16255,9154);
INSERT INTO `creature_questrelation` VALUES (16361,9085);
INSERT INTO `creature_questrelation` VALUES (16361,9153);
INSERT INTO `creature_questrelation` VALUES (16484,9261);
INSERT INTO `creature_questrelation` VALUES (16490,9264);
INSERT INTO `creature_questrelation` VALUES (16493,9263);
INSERT INTO `creature_questrelation` VALUES (16495,9262);
INSERT INTO `creature_questrelation` VALUES (16531,9292);
INSERT INTO `creature_questrelation` VALUES (16531,9310);
INSERT INTO `creature_questrelation` VALUES (16787,9094);
INSERT INTO `creature_questrelation` VALUES (16787,9333);
INSERT INTO `creature_questrelation` VALUES (16788,9319);
INSERT INTO `creature_questrelation` VALUES (16788,9322);
INSERT INTO `creature_questrelation` VALUES (16788,9323);
INSERT INTO `creature_questrelation` VALUES (16788,9386);
INSERT INTO `creature_questrelation` VALUES (16817,9365);
INSERT INTO `creature_questrelation` VALUES (16818,9339);

-- reimport last scripts and fixes
DELETE FROM `creature_ai_scripts` WHERE `creature_id` = 15471;
INSERT INTO `creature_ai_scripts` VALUES (1547101,15471,0,0,100,3,1000,3000,30000,45000,11,25516,0,1,0,0,0,0,0,0,0,0,'Lieutenant General Andorov - Cast Aura of Command');
INSERT INTO `creature_ai_scripts` VALUES (1547102,15471,9,0,100,3,0,5,4000,6000,11,22591,1,0,0,0,0,0,0,0,0,0,'Lieutenant General Andorov - Cast Strike');
INSERT INTO `creature_ai_scripts` VALUES (1547103,15471,0,0,100,3,8000,11000,12000,15000,11,25515,4,1,0,0,0,0,0,0,0,0,'Lieutenant General Andorov - Cast Bash');

UPDATE `creature_ai_scripts` SET `action1_param1` = 22678 WHERE `id` = 1050814;
UPDATE `creature_ai_scripts` SET `action1_param1` = 8281 WHERE `id` = 1189701;

-- corrected atal'alarion text on aggro
UPDATE `creature_ai_texts` SET `content_default` = "I'll feast on your bones!" WHERE `entry` = -817;

-- Crag Coyote Fang stacks now 20
UPDATE `item_template` SET `stackable` = 20 WHERE `entry` = 7846;

-- Added Fissure Plant loot
UPDATE `gameobject_template` SET `data1` = 3743 WHERE `entry` = 3743;
DELETE FROM `gameobject_loot_template` WHERE `entry` = 3743;
INSERT INTO `gameobject_loot_template` VALUES (3743,5066,100,0,1,1,0);

-- reimport frozen Runes
DELETE FROM `gameobject` WHERE `id` = 181287;
INSERT INTO `gameobject` VALUES (21612,181287,533,2617.62,-2953.47,241.381,0.739406,0,0,0.361338,0.932435,6380,100,1);
INSERT INTO `gameobject` VALUES (21613,181287,533,2482.83,-2896.52,241.282,2.26701,0,0,0.905903,0.423486,6380,100,1);
INSERT INTO `gameobject` VALUES (21614,181287,533,2455.52,-2978.11,241.287,3.86137,0,0,0.935936,-0.352171,6380,100,1);
INSERT INTO `gameobject` VALUES (21620,181287,533,2745.64,-3116.69,267.685,3.69249,0,0,0.962303,-0.271981,6380,100,1);
INSERT INTO `gameobject` VALUES (21621,181287,533,3339.69,-3334.2,292.595,4.8431,0,0,0.659415,-0.751779,6380,100,1);
INSERT INTO `gameobject` VALUES (21622,181287,533,3192.31,-3293.11,292.595,4.74492,0,0,0.695511,-0.718515,6380,100,1);
INSERT INTO `gameobject` VALUES (21623,181287,533,3193.01,-3359.1,292.595,4.32474,0,0,0.830065,-0.557667,6380,100,1);
INSERT INTO `gameobject` VALUES (21624,181287,533,3233.92,-3173.09,297.946,3.88884,0,0,0.931011,-0.364992,6380,100,1);
INSERT INTO `gameobject` VALUES (21625,181287,533,3272.91,-3208.04,297.846,4.57605,0,0,0.75363,-0.657299,6380,100,1);
INSERT INTO `gameobject` VALUES (21626,181287,533,3332.81,-3202.3,297.811,5.80127,0,0,0.238634,-0.97111,6380,100,1);
INSERT INTO `gameobject` VALUES (21627,181287,533,3511.27,-2898.78,302.345,0.103201,0,0,0.0515777,0.998669,6380,100,1);
INSERT INTO `gameobject` VALUES (21628,181287,533,3551.96,-2961.45,302.736,0.217081,0,0,0.108327,0.994115,6380,100,1);
INSERT INTO `gameobject` VALUES (21629,181287,533,3479.38,-2888.36,302.702,1.71326,0,0,0.755641,0.654986,6380,100,1);
INSERT INTO `gameobject` VALUES (21630,181287,533,3524.32,-3946.9,310.05,4.98837,0,0,0.603119,-0.797651,6380,100,1);
INSERT INTO `gameobject` VALUES (21631,181287,533,3460.24,-3934.4,305.996,4.01841,0,0,0.905429,-0.424498,6380,100,1);
INSERT INTO `gameobject` VALUES (21632,181287,533,3549.72,-3925.55,305.4,6.02981,0,0,0.12635,-0.991986,6380,100,1);
INSERT INTO `gameobject` VALUES (21633,181287,533,3381.55,-3621.99,261.167,0.0458548,0,0,0.0229254,0.999737,6380,100,1);
INSERT INTO `gameobject` VALUES (21634,181287,533,3351.06,-3592.56,260.996,0.108686,0,0,0.0543163,0.998524,6380,100,1);
INSERT INTO `gameobject` VALUES (21635,181287,533,3322.47,-3635.3,259.084,2.99895,0,0,0.997458,0.0712598,6380,100,1);
INSERT INTO `gameobject` VALUES (23981,181287,533,2789.51,-3075.94,267.685,0.814009,0,0,0.39586,0.918311,6380,100,1);
INSERT INTO `gameobject` VALUES (23982,181287,533,2745.96,-3312.15,267.684,0.138569,0,0,0.0692289,0.997601,6380,100,1);
INSERT INTO `gameobject` VALUES (23983,181287,533,2678.9,-3432.53,267.689,4.74886,0,0,0.694097,-0.719881,6380,100,1);
INSERT INTO `gameobject` VALUES (23984,181287,533,2635.2,-3384.3,267.685,3.19377,0,0,0.99966,-0.0260857,6380,100,1);
INSERT INTO `gameobject` VALUES (27814,181287,533,2844.3,-3980.5,278.981,1.62973,0,0,0.727634,0.685966,6380,100,1);
INSERT INTO `gameobject` VALUES (27815,181287,533,2926.43,-4034.49,273.577,4.7941,0,0,0.677635,-0.735399,6380,100,1);
INSERT INTO `gameobject` VALUES (27816,181287,533,2925.78,-3959.76,273.57,0.855331,0,0,0.414748,0.909936,6380,100,1);
INSERT INTO `gameobject` VALUES (27817,181287,533,2793.38,-3650.78,273.64,0.378605,0,0,0.188174,0.982136,6380,100,1);
INSERT INTO `gameobject` VALUES (27818,181287,533,2748.44,-3651.65,273.622,2.83297,0,0,0.988118,0.153697,6380,100,1);
INSERT INTO `gameobject` VALUES (27819,181287,533,2811.74,-3703.96,273.616,5.56223,0,0,0.35272,-0.935729,6380,100,1);
INSERT INTO `gameobject` VALUES (27820,181287,533,2641.82,-3456.01,265.559,2.8772,0,0,0.991275,0.13181,6380,100,1);
INSERT INTO `gameobject` VALUES (27821,181287,533,2730.03,-3455.88,262.271,0.678089,0,0,0.332586,0.943073,6380,100,1);
INSERT INTO `gameobject` VALUES (27822,181287,533,2727.52,-3546.65,261.969,6.0188,0,0,0.13181,-0.991275,6380,100,1);
INSERT INTO `gameobject` VALUES (27823,181287,533,3214.19,-3465.14,287.071,2.60625,0,0,0.96439,0.264486,6380,100,1);
INSERT INTO `gameobject` VALUES (27824,181287,533,3336.09,-3469.08,287.069,0.301108,0,0,0.149986,0.988688,6380,100,1);

-- Added missing text from defias messenger, need to be added to waypoints.
DELETE FROM `db_script_string` WHERE `entry` = 2000005301;
DELETE FROM `db_script_string` WHERE `entry` = 2000005302;
INSERT INTO `db_script_string` VALUES (2000005301,"The boss wants all hands on high alert. The rusty anchor sinks tonight.",NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,NULL);
INSERT INTO `db_script_string` VALUES (2000005302,"Stonemasons. . .errr. . Defias be warned:  The rusty anchor sinks tonight.",NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,NULL);

-- Corrected creatures
UPDATE `creature_template` SET `rank` = 2 WHERE `entry` = 947;
UPDATE `creature_template` SET `type` = 3 WHERE `entry` = 3772;
UPDATE `creature_template` SET `speed_walk` = 0.01 WHERE `entry` = 3903;
UPDATE `creature_template` SET `type` = 10 WHERE `entry` = 5914;
UPDATE `creature_template` SET `rank` = 2 WHERE `entry` = 10077;
UPDATE `creature_template` SET `speed_walk` = 0.52 WHERE `entry` = 12222;
UPDATE `creature_template` SET `speed_run` = 0.64286 WHERE `entry` = 12222;
UPDATE `creature_template` SET `type` = 1 WHERE `entry` = 14306;
UPDATE `creature_template` SET `speed_walk` = 1.54 WHERE `entry` = 14461;
DELETE FROM `creature_template_addon` WHERE `entry` = 17209;
INSERT INTO `creature_template_addon` VALUES (17209,0,0,1,16,0,0,17327);

-- reimport missing creature movements
UPDATE `creature` SET `MovementType` = 2 WHERE `guid` = 56606;
DELETE FROM `creature_movement` WHERE `id` = 56606;
INSERT INTO `creature_movement` VALUES (56606,1,930.44,-922.059,-189.297,0,0,0,0,0,0,0,0,0,0,0,0,0);
INSERT INTO `creature_movement` VALUES (56606,2,940.374,-924.606,-186.525,0,0,0,0,0,0,0,0,0,0,0,0,0);
INSERT INTO `creature_movement` VALUES (56606,3,948.952,-926.801,-183.021,0,0,0,0,0,0,0,0,0,0,0,0,0);
INSERT INTO `creature_movement` VALUES (56606,4,962.651,-933.666,-180.491,0,0,0,0,0,0,0,0,0,0,0,0,0);
INSERT INTO `creature_movement` VALUES (56606,5,979.5,-943.673,-179.169,0,0,0,0,0,0,0,0,0,0,0,0,0);
INSERT INTO `creature_movement` VALUES (56606,6,995.485,-950.169,-178.509,0,0,0,0,0,0,0,0,0,0,0,0,0);
INSERT INTO `creature_movement` VALUES (56606,7,1013.39,-955.414,-179.703,0,0,0,0,0,0,0,0,0,0,0,0,0);
INSERT INTO `creature_movement` VALUES (56606,8,1022.81,-974.116,-181.451,0,0,0,0,0,0,0,0,0,0,0,0,0);
INSERT INTO `creature_movement` VALUES (56606,9,1015.94,-956.297,-179.991,0,0,0,0,0,0,0,0,0,0,0,0,0);
INSERT INTO `creature_movement` VALUES (56606,10,997.6,-950.831,-178.424,0,0,0,0,0,0,0,0,0,0,0,0,0);
INSERT INTO `creature_movement` VALUES (56606,11,981.844,-944.903,-179.069,0,0,0,0,0,0,0,0,0,0,0,0,0);
INSERT INTO `creature_movement` VALUES (56606,12,962.477,-933.72,-180.527,0,0,0,0,0,0,0,0,0,0,0,0,0);
INSERT INTO `creature_movement` VALUES (56606,13,948.992,-926.282,-182.836,0,0,0,0,0,0,0,0,0,0,0,0,0);
INSERT INTO `creature_movement` VALUES (56606,14,931.568,-918.977,-188.934,0,0,0,0,0,0,0,0,0,0,0,0,0);

UPDATE `creature` SET `MovementType` = 2 WHERE `guid` = 56607;
DELETE FROM `creature_movement` WHERE `id` = 56607;
INSERT INTO `creature_movement` VALUES (56607,1,925.922,-928.309,-190.095,0,0,0,0,0,0,0,0,0,0,0,0,0);
INSERT INTO `creature_movement` VALUES (56607,2,937.252,-931.878,-187.876,0,0,0,0,0,0,0,0,0,0,0,0,0);
INSERT INTO `creature_movement` VALUES (56607,3,949.931,-934.987,-185.321,0,0,0,0,0,0,0,0,0,0,0,0,0);
INSERT INTO `creature_movement` VALUES (56607,4,958.993,-939.782,-182.413,0,0,0,0,0,0,0,0,0,0,0,0,0);
INSERT INTO `creature_movement` VALUES (56607,5,968.142,-946.943,-181.344,0,0,0,0,0,0,0,0,0,0,0,0,0);
INSERT INTO `creature_movement` VALUES (56607,6,979.508,-955.867,-180.418,0,0,0,0,0,0,0,0,0,0,0,0,0);
INSERT INTO `creature_movement` VALUES (56607,7,988.364,-959.98,-180.535,0,0,0,0,0,0,0,0,0,0,0,0,0);
INSERT INTO `creature_movement` VALUES (56607,8,1005.03,-962.108,-181.055,0,0,0,0,0,0,0,0,0,0,0,0,0);
INSERT INTO `creature_movement` VALUES (56607,9,1011.05,-975.843,-181.28,0,0,0,0,0,0,0,0,0,0,0,0,0);
INSERT INTO `creature_movement` VALUES (56607,10,1010.42,-970.919,-181.44,0,0,0,0,0,0,0,0,0,0,0,0,0);
INSERT INTO `creature_movement` VALUES (56607,11,1002.91,-961.417,-180.922,0,0,0,0,0,0,0,0,0,0,0,0,0);
INSERT INTO `creature_movement` VALUES (56607,12,981.712,-958.135,-180.541,0,0,0,0,0,0,0,0,0,0,0,0,0);
INSERT INTO `creature_movement` VALUES (56607,13,967.291,-950.49,-181.666,0,0,0,0,0,0,0,0,0,0,0,0,0);
INSERT INTO `creature_movement` VALUES (56607,14,956.333,-941.777,-183.077,0,0,0,0,0,0,0,0,0,0,0,0,0);
INSERT INTO `creature_movement` VALUES (56607,15,946.106,-936.362,-186.471,0,0,0,0,0,0,0,0,0,0,0,0,0);
INSERT INTO `creature_movement` VALUES (56607,16,931.119,-933.48,-189.508,0,0,0,0,0,0,0,0,0,0,0,0,0);

-- added mana tide totem rank 2 and 3 to trainers
DELETE FROM `npc_trainer` WHERE `spell` = 17362;
DELETE FROM `npc_trainer` WHERE `spell` = 17363;
INSERT INTO `npc_trainer` VALUES (986,17362,55000,0,0,48);
INSERT INTO `npc_trainer` VALUES (986,17363,80000,0,0,58);
INSERT INTO `npc_trainer` VALUES (3030,17362,55000,0,0,48);
INSERT INTO `npc_trainer` VALUES (3030,17363,80000,0,0,58);
INSERT INTO `npc_trainer` VALUES (3031,17362,55000,0,0,48);
INSERT INTO `npc_trainer` VALUES (3031,17363,80000,0,0,58);
INSERT INTO `npc_trainer` VALUES (3032,17362,55000,0,0,48);
INSERT INTO `npc_trainer` VALUES (3032,17363,80000,0,0,58);
INSERT INTO `npc_trainer` VALUES (3066,17362,55000,0,0,48);
INSERT INTO `npc_trainer` VALUES (3066,17363,80000,0,0,58);
INSERT INTO `npc_trainer` VALUES (3173,17362,55000,0,0,48);
INSERT INTO `npc_trainer` VALUES (3173,17363,80000,0,0,58);
INSERT INTO `npc_trainer` VALUES (3344,17362,55000,0,0,48);
INSERT INTO `npc_trainer` VALUES (3344,17363,80000,0,0,58);
INSERT INTO `npc_trainer` VALUES (3403,17362,55000,0,0,48);
INSERT INTO `npc_trainer` VALUES (3403,17363,80000,0,0,58);
INSERT INTO `npc_trainer` VALUES (13417,17362,55000,0,0,48);
INSERT INTO `npc_trainer` VALUES (13417,17363,80000,0,0,58);
DELETE FROM `spell_chain` WHERE `first_spell` = 16190;
INSERT INTO `spell_chain` VALUES (16190,0,16190,1,0);
INSERT INTO `spell_chain` VALUES (17354,16190,16190,2,0);
INSERT INTO `spell_chain` VALUES (17359,17354,16190,3,0);

-- Corrected and added creature_ai_texts
UPDATE `creature_ai_texts` SET `content_default` = 'VanCleef pay big for your heads!' WHERE `entry` = -22;
DELETE FROM `creature_ai_texts` WHERE `entry` = -1145;
INSERT INTO `creature_ai_texts` VALUES (-1145,'Curse you! One day, vengeance will be mine!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'Private Merle Text');
DELETE FROM `creature_ai_texts` WHERE `entry` = -142;
INSERT INTO `creature_ai_texts` VALUES (-142,"In the throes of the Sundering, Ameth'Aran was at the whim of the terror that gripped the land. There was little hope for survival.",NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,4509);
DELETE FROM `creature_ai_texts` WHERE `entry` = -143;
INSERT INTO `creature_ai_texts` VALUES (-143,'Athrikus came to us. He told us that he could save us from harm. He cast a spell upon us to protect us from harm.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,4509);
DELETE FROM `creature_ai_texts` WHERE `entry` = -144;
INSERT INTO `creature_ai_texts` VALUES (-144,'When the shaking stopped, his true motives were revealed. We were trapped, and he was slowly draining our powers.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,4509);
DELETE FROM `creature_ai_texts` WHERE `entry` = -145;
INSERT INTO `creature_ai_texts` VALUES (-145,'There were hundreds imprisoned by his spell. Now only a few remain in their prisons. He would speak to us sometimes.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,4509);
DELETE FROM `creature_ai_texts` WHERE `entry` = -146;
INSERT INTO `creature_ai_texts` VALUES (-146,'He worried that his power weakened, that soon even we last of his precious soulgems would fade and die.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,4509);
DELETE FROM `creature_ai_texts` WHERE `entry` = -147;
INSERT INTO `creature_ai_texts` VALUES (-147,'His lieutenant, Ilkurd Magthrull possesses a tome which might indicate the location of the remaining soulgems.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,4509);
DELETE FROM `creature_ai_texts` WHERE `entry` = -343;
INSERT INTO `creature_ai_texts` VALUES (-343,'Let me help you with those.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,5042);
DELETE FROM `creature_ai_texts` WHERE `entry` = -344;
INSERT INTO `creature_ai_texts` VALUES (-344,'Drink this, it will help.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,5042);
DELETE FROM `creature_ai_texts` WHERE `entry` = -345;
INSERT INTO `creature_ai_texts` VALUES (-345,"You're going to be just fine.",NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,5042);
DELETE FROM `creature_ai_texts` WHERE `entry` = -1137;
INSERT INTO `creature_ai_texts` VALUES (-1137,"WHO IS BOTHERING ME?",NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'Arch Druid Fandral');
DELETE FROM `creature_ai_texts` WHERE `entry` = -1136;
INSERT INTO `creature_ai_texts` VALUES (-1136,"I never thought that you could find me! Well, let's see what you can do...",NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'Tyrande Whisperwind');
DELETE FROM `creature_ai_texts` WHERE `entry` = -1138;
INSERT INTO `creature_ai_texts` VALUES (-1138,'Ahh, a new chew toy for my dogs!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,'Houndmaster Grebmar');
DELETE FROM `creature_ai_texts` WHERE `entry` = -1143;
INSERT INTO `creature_ai_texts` VALUES (-1143,'You will not harm Emperor Thaurissan!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,10076);
DELETE FROM `creature_ai_texts` WHERE `entry` = -1146;
INSERT INTO `creature_ai_texts` VALUES (-1146,"Ach! Thank you so much I'm free! Finally!",NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'Locheed text when spawned');
DELETE FROM `creature_ai_texts` WHERE `entry` = -148;
INSERT INTO `creature_ai_texts` VALUES (-148,'Ma reth bromo zoln kilagrin dra ma zoern tu ko fraht ka tadrom Ma krin drinor zaln dirnor Ma krin kan aasrugel korsul',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,11256);
DELETE FROM `creature_ai_texts` WHERE `entry` = -1140;
INSERT INTO `creature_ai_texts` VALUES (-1140,"I'm going to kick yer ugly head in!",NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,16059);
DELETE FROM `creature_ai_texts` WHERE `entry` = -1141;
INSERT INTO `creature_ai_texts` VALUES (-1141,"You want a fight? A fight you'll get!",NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,16059);
DELETE FROM `creature_ai_texts` WHERE `entry` = -1142;
INSERT INTO `creature_ai_texts` VALUES (-1142,'I crush weaklings like you every day! Bring it on!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,16059);
DELETE FROM `creature_ai_texts` WHERE `entry` = -1147;
INSERT INTO `creature_ai_texts` VALUES (-1147,"%s 's death cry has stirred the nearby silithid hive",NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,2,0,12178);
DELETE FROM `creature_ai_texts` WHERE `entry` = -347;
INSERT INTO `creature_ai_texts` VALUES (-347,'%s growls in your direction before taking time to sniff you.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,2,0,0,3695);
DELETE FROM `creature_ai_texts` WHERE `entry` = -348;
INSERT INTO `creature_ai_texts` VALUES (-348,'%s faces southeast and whimpers before looking back at you.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,2,0,0,3695);

-- Corrected and added creature_ai_scripts
UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = 575;
DELETE FROM `creature_ai_scripts` WHERE `creature_id` = 575;
INSERT INTO `creature_ai_scripts` VALUES (57501,575,11,0,100,2,0,0,0,0,11,25035,0,0,0,0,0,0,0,0,0,0,'Fire Elemental - Cast Elemental Spawn-in on Spawn');

DELETE FROM `creature_ai_scripts` WHERE `creature_id` = 639;
INSERT INTO `creature_ai_scripts` VALUES (63901,639,11,0,100,2,0,0,0,0,11,12787,0,0,0,0,0,0,0,0,0,0,'Edwin VanCleef - Cast Thrash on Spawn');
INSERT INTO `creature_ai_scripts` VALUES (63902,639,4,0,100,2,0,0,0,0,1,-169,0,0,11,674,0,0,0,0,0,0,'Edwin VanCleef - Yell and Cast Dual Wield on Aggro');
INSERT INTO `creature_ai_scripts` VALUES (63903,639,2,0,100,2,66,34,0,0,1,-171,0,0,0,0,0,0,0,0,0,0,'Edwin VanCleef - Yell at 66% HP');
INSERT INTO `creature_ai_scripts` VALUES (63904,639,2,0,100,2,50,26,0,0,11,5200,0,0,1,-342,0,0,0,0,0,0,"Edwin VanCleef - Summons VanCleef's Allies at 50% HP");
INSERT INTO `creature_ai_scripts` VALUES (63905,639,2,0,100,2,33,0,0,0,1,-172,0,0,0,0,0,0,0,0,0,0,'Edwin VanCleef - Yell at 33% HP');
INSERT INTO `creature_ai_scripts` VALUES (63906,639,2,0,100,2,25,0,0,0,11,5200,0,0,1,-342,0,0,0,0,0,0,"Edwin VanCleef - Summons VanCleef's Allies at 25% HP");
INSERT INTO `creature_ai_scripts` VALUES (63907,639,5,0,100,3,5000,5000,0,0,1,-170,0,0,0,0,0,0,0,0,0,0,'Edwin VanCleef - Yell on Player Kill');
INSERT INTO `creature_ai_scripts` VALUES (63908,639,6,0,100,2,0,0,0,0,1,-173,0,0,0,0,0,0,0,0,0,0,'Edwin VanCleef - Yell on Death');

UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = 879;
DELETE FROM `creature_ai_scripts` WHERE `creature_id` = 879;
INSERT INTO `creature_ai_scripts` VALUES (87901,879,9,0,100,1,5,20,0,0,21,0,0,0,0,0,0,0,0,0,0,0,'Saltscale Hunter - Stop Moving when in Throw Range');
INSERT INTO `creature_ai_scripts` VALUES (87902,879,9,0,100,1,0,5,0,0,21,1,0,0,0,0,0,0,0,0,0,0,'Saltscale Hunter - Start Moving when not in Throw Range I');
INSERT INTO `creature_ai_scripts` VALUES (87903,879,9,0,100,1,20,100,0,0,21,1,0,0,0,0,0,0,0,0,0,0,'Saltscale Hunterr - Start Moving when not in Throw Range II');
INSERT INTO `creature_ai_scripts` VALUES (87904,879,9,0,100,1,5,20,3500,4100,11,10277,1,0,0,0,0,0,0,0,0,0,'Saltscale Hunter - Cast Throw');
INSERT INTO `creature_ai_scripts` VALUES (87905,879,2,0,100,0,15,0,0,0,25,0,0,0,1,-47,0,0,21,1,0,0,'Saltscale Hunter - Flee at 15% HP');

UPDATE `creature_ai_scripts` SET `creature_id` = 1157 WHERE `id` = 115702;

DELETE FROM `creature_ai_scripts` WHERE `creature_id` = 1200;
INSERT INTO `creature_ai_scripts` VALUES (120001,1200,0,0,100,1,0,0,3700,13300,11,3108,1,0,0,0,0,0,0,0,0,0,'Morbent Fel - Cast Touch of Death');
INSERT INTO `creature_ai_scripts` VALUES (120002,1200,0,0,100,1,0,0,24000,24000,11,3109,1,0,0,0,0,0,0,0,0,0,'Morbent Fel - Cast Presence of Death');
INSERT INTO `creature_ai_scripts` VALUES (120003,1200,2,0,100,0,15,0,0,0,28,0,8909,0,0,0,0,0,0,0,0,0,'Morbent Fel - Remove Unholy Shield at 15% HP');
INSERT INTO `creature_ai_scripts` VALUES (120004,1200,1,0,100,1,1000,1000,1800000,1800000,11,8909,0,1,0,0,0,0,0,0,0,0,'Morbent Fel - Cast Unholy Shield on Spawn');

UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = 1421;
DELETE FROM `creature_ai_scripts` WHERE `creature_id` = 1421;
INSERT INTO `creature_ai_scripts` VALUES (142101,1421,11,0,100,0,0,0,0,0,1,-1145,0,0,2,32,0,0,0,0,0,0,'Private Merle - Says Text when Spawned and set Faction Neutral');

UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = 2350;
DELETE FROM `creature_ai_scripts` WHERE `creature_id` = 2350;
INSERT INTO `creature_ai_scripts` VALUES (235001,2350,0,0,100,7,3500,4000,8000,10000,11,3396,1,0,0,0,0,0,0,0,0,0,'Forest Moss Creeper - Cast Poison');

UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = 2784;
DELETE FROM `creature_ai_scripts` WHERE `creature_id` = 2784;
INSERT INTO `creature_ai_scripts` VALUES (278401,2784,0,0,100,1,5000,7000,25000,30000,11,19135,0,0,0,0,0,0,0,0,0,0,'King Magni Bronzebeard - Cast Avatar');
INSERT INTO `creature_ai_scripts` VALUES (278402,2784,0,0,100,1,8000,10000,20000,30000,11,20686,0,0,0,0,0,0,0,0,0,0,'King Magni Bronzebeard - Cast Knock Away');
INSERT INTO `creature_ai_scripts` VALUES (278403,2784,0,0,100,1,12000,15000,15000,20000,11,20685,1,0,0,0,0,0,0,0,0,0,'King Magni Bronzebeard - Cast Storm Bolt');

UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = 3281;
DELETE FROM `creature_ai_scripts` WHERE `creature_id` = 3281;
INSERT INTO `creature_ai_scripts` VALUES (328101,3281,0,0,60,1,1000,5000,1000,8000,11,11918,1,32,0,0,0,0,0,0,0,0,'Sarkoth - Cast Poison');

UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = 3516;
DELETE FROM `creature_ai_scripts` WHERE `creature_id` = 3516;
INSERT INTO `creature_ai_scripts` VALUES (351601,3516,0,0,100,1,5000,5000,19000,19000,11,20699,0,0,0,0,0,0,0,0,0,0,'Arch Druid Fandral Staghelm - Cast Entangling Roots');
INSERT INTO `creature_ai_scripts` VALUES (351602,3516,0,0,100,1,5000,5000,27000,27000,11,20701,0,0,0,0,0,0,0,0,0,0,'Arch Druid Fandral Staghelm - Cast Rejuvenation');
INSERT INTO `creature_ai_scripts` VALUES (351603,3516,0,0,100,1,1500,1500,25000,35000,11,20702,0,0,0,0,0,0,0,0,0,0,'Arch Druid Fandral Staghelm - Cast Summon Treant Allies');
INSERT INTO `creature_ai_scripts` VALUES (351604,3516,0,0,100,0,0,0,0,0,21,0,0,0,0,0,0,0,0,0,0,0,'Arch Druid Fandral Staghelm - Stop Movement on Aggro');
INSERT INTO `creature_ai_scripts` VALUES (351605,3516,4,0,100,0,0,0,0,0,11,20698,1,0,22,1,0,0,0,0,0,0,'Arch Druid Fandral Staghelm - Cast Wrath and Set Phase 1 on Aggro');
INSERT INTO `creature_ai_scripts` VALUES (351606,3516,0,13,100,1,3400,4700,3400,4700,0,0,0,0,11,20698,1,0,0,0,0,0,'Arch Druid Fandral Staghelm - Cast Wrath (Phase 1)');
INSERT INTO `creature_ai_scripts` VALUES (351607,3516,3,13,100,0,15,0,0,0,21,1,0,0,22,2,0,0,0,0,0,0,'Arch Druid Fandral Staghelm - Start Movement and Set Phase 2 when Mana is at 15%');
INSERT INTO `creature_ai_scripts` VALUES (351608,3516,9,13,100,1,25,80,0,0,21,1,0,0,0,0,0,0,0,0,0,0,'Arch Druid Fandral Staghelm - Start Movement Beyond 25 Yards');
INSERT INTO `creature_ai_scripts` VALUES (351609,3516,3,11,100,1,100,30,100,100,22,1,0,0,0,0,0,0,0,0,0,0,'Arch Druid Fandral Staghelm- Set Phase 1 when Mana is above 30% (Phase 2)');
INSERT INTO `creature_ai_scripts` VALUES (351610,3516,2,0,100,0,15,0,0,0,22,3,0,0,0,0,0,0,0,0,0,0,'Arch Druid Fandral Staghelm - Set Phase 3 at 15% HP');
INSERT INTO `creature_ai_scripts` VALUES (351611,3516,2,7,100,0,15,0,0,0,21,1,0,0,25,0,0,0,1,-47,0,0,'Arch Druid Fandral Staghelm - Start Movement and Flee at 15% HP (Phase 3)');
INSERT INTO `creature_ai_scripts` VALUES (351612,3516,7,0,100,0,0,0,0,0,22,0,0,0,0,0,0,0,0,0,0,0,'Arch Druid Fandral Staghelm- On Evade set Phase to 0');
INSERT INTO `creature_ai_scripts` VALUES (351613,3516,4,0,100,0,0,0,0,0,1,-1137,0,0,0,0,0,0,0,0,0,0,'Arch Druid Fandral Staghelm - Chance Say on Aggro');

UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = 4509;
DELETE FROM `creature_ai_scripts` WHERE `creature_id` = 4509;
INSERT INTO `creature_ai_scripts` VALUES (450901,4509,1,0,100,0,1000,1000,0,0,1,-142,0,0,5,1,0,0,0,0,0,0,'Sargath - Say on Spawn');
INSERT INTO `creature_ai_scripts` VALUES (450902,4509,1,0,100,0,5000,5000,0,0,1,-143,0,0,5,1,0,0,0,0,0,0,'Sargath - Say 2 on Spawn');
INSERT INTO `creature_ai_scripts` VALUES (450903,4509,1,0,100,0,10000,10000,0,0,1,-144,0,0,5,1,0,0,0,0,0,0,'Sargath - Say 3 on Spawn');
INSERT INTO `creature_ai_scripts` VALUES (450904,4509,1,0,100,0,15000,15000,0,0,1,-145,0,0,5,1,0,0,0,0,0,0,'Sargath - Say 4 on Spawn');
INSERT INTO `creature_ai_scripts` VALUES (450905,4509,1,0,100,0,20000,20000,0,0,1,-146,0,0,5,1,0,0,0,0,0,0,'Sargath - Say 5 on Spawn');
INSERT INTO `creature_ai_scripts` VALUES (450906,4509,1,0,100,0,28000,28000,0,0,1,-147,0,0,5,1,0,0,0,0,0,0,'Sargath - Say 6 on Spawn');

UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = 4863;
DELETE FROM `creature_ai_scripts` WHERE `creature_id` = 4863;
INSERT INTO `creature_ai_scripts` VALUES (486301,4863,0,0,100,3,2000,5500,15000,18000,11,3636,1,0,0,0,0,0,0,0,0,0,'Jadespine Basilisk - Cast Crystalline Slumber');
INSERT INTO `creature_ai_scripts` VALUES (486302,4863,0,0,100,3,5500,5500,16000,16000,11,9906,0,1,0,0,0,0,0,0,0,0,'Jadespine Basilisk - Cast Reflection');

UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = 5042;
DELETE FROM `creature_ai_scripts` WHERE `creature_id` = 5042;
INSERT INTO `creature_ai_scripts` VALUES (504201,5042,1,0,100,1,0,0,87000,89000,1,-343,-344,-345,0,0,0,0,0,0,0,0,'Nurse Lillian - Random Say OOC');

UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = 7167;
DELETE FROM `creature_ai_scripts` WHERE `creature_id` = 7167;
INSERT INTO `creature_ai_scripts` VALUES (716701,7167,1,0,100,1,73000,73000,60000,60000,11,8822,0,0,0,0,0,0,0,0,0,0,'Polly - Cast Stealth OOC');
INSERT INTO `creature_ai_scripts` VALUES (716702,7167,8,0,100,0,9976,-1,0,0,11,9998,0,6,41,10000,0,0,0,0,0,0,'Polly - Change Template to Polly Jr. on Polly Eats the E.C.A.C. Spellhit (Quest: 2381)');

UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = 7235;
DELETE FROM `creature_ai_scripts` WHERE `creature_id` = 7235;
INSERT INTO `creature_ai_scripts` VALUES (723501,7235,0,0,100,0,0,0,0,0,21,0,0,0,0,0,0,0,0,0,0,0,'Gnarlpine Mystic - Stop Movement on Aggro');
INSERT INTO `creature_ai_scripts` VALUES (723502,7235,4,0,100,0,0,0,0,0,11,9739,1,0,22,1,0,0,0,0,0,0,'Gnarlpine Mystic - Cast Wrath and Set Phase 1 on Aggro');
INSERT INTO `creature_ai_scripts` VALUES (723503,7235,0,13,100,1,3400,4700,3400,4700,0,0,0,0,11,9739,1,0,0,0,0,0,'Gnarlpine Mystic - Cast Wrath (Phase 1)');
INSERT INTO `creature_ai_scripts` VALUES (723504,7235,3,13,100,0,15,0,0,0,21,1,0,0,22,2,0,0,0,0,0,0,'Gnarlpine Mystic - Start Movement and Set Phase 2 when Mana is at 15%');
INSERT INTO `creature_ai_scripts` VALUES (723505,7235,9,13,100,1,25,80,0,0,21,1,0,0,0,0,0,0,0,0,0,0,'Gnarlpine Mystic - Start Movement Beyond 25 Yards');
INSERT INTO `creature_ai_scripts` VALUES (723506,7235,3,11,100,1,100,30,100,100,22,1,0,0,0,0,0,0,0,0,0,0,'Gnarlpine Mystic - Set Phase 1 when Mana is above 30% (Phase 2)');
INSERT INTO `creature_ai_scripts` VALUES (723507,7235,2,0,100,0,15,0,0,0,22,3,0,0,0,0,0,0,0,0,0,0,'Gnarlpine Mystic- Set Phase 3 at 15% HP');
INSERT INTO `creature_ai_scripts` VALUES (723508,7235,2,7,100,0,15,0,0,0,21,1,0,0,25,0,0,0,1,-47,0,0,'Gnarlpine Mystic- Start Movement and Flee at 15% HP (Phase 3)');
INSERT INTO `creature_ai_scripts` VALUES (723509,7235,7,0,100,0,0,0,0,0,22,0,0,0,0,0,0,0,0,0,0,0,'Gnarlpine Mystic - On Evade set Phase to 0');

UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = 7441;
DELETE FROM `creature_ai_scripts` WHERE `creature_id` = 7441;
INSERT INTO `creature_ai_scripts` VALUES (744101,7441,0,0,100,1,3000,3000,25000,45000,11,15786,0,0,0,0,0,0,0,0,0,0,'Winterfall Totemic - Cast Earthbind Totem');
INSERT INTO `creature_ai_scripts` VALUES (744102,7441,2,0,100,0,50,0,0,0,11,17205,0,0,0,0,0,0,0,0,0,0,'Winterfall Totemic - Cast Winterfall Firewater at 50% HP');
INSERT INTO `creature_ai_scripts` VALUES (744103,7441,0,0,100,1,3000,3000,40000,70000,11,15787,0,0,0,0,0,0,0,0,0,0,'Winterfall Totemic - Cast Moonflare Totem');

UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = 7447;
DELETE FROM `creature_ai_scripts` WHERE `creature_id` = 7447;
INSERT INTO `creature_ai_scripts` VALUES (744701,7447,0,0,100,1,4000,4000,10000,10000,11,16552,1,0,0,0,0,0,0,0,0,0,'Fledgling Chillwind - Cast Venom Spit');

UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = 7448;
DELETE FROM `creature_ai_scripts` WHERE `creature_id` = 7448;
INSERT INTO `creature_ai_scripts` VALUES (744801,7448,0,2,100,1,7500,7500,7500,8500,11,15797,1,1,0,0,0,0,0,0,0,0,'Chillwind Chimaerar - Cast Lightning Breath');

UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = 7449;
DELETE FROM `creature_ai_scripts` WHERE `creature_id` = 7449;
INSERT INTO `creature_ai_scripts` VALUES (744901,7449,2,0,100,0,25,0,0,0,11,8599,0,0,1,-46,0,0,0,0,0,0,'Chillwind Ravager - Cast Enrage at 25% HP');

UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = 7937;
DELETE FROM `creature_ai_scripts` WHERE `creature_id` = 7937;
INSERT INTO `creature_ai_scripts` VALUES (793701,7937,0,0,100,1,2000,5500,15000,18800,11,9143,1,0,0,0,0,0,0,0,0,0,'High Tinker Mekkatorque - Cast Bomb');
INSERT INTO `creature_ai_scripts` VALUES (793702,7937,0,0,100,1,5500,5500,12000,22800,11,22739,1,0,0,0,0,0,0,0,0,0,'High Tinker Mekkatorque - Cast Goblin Dragon Gun');
INSERT INTO `creature_ai_scripts` VALUES (793703,7937,0,0,100,1,5500,5500,19000,25800,11,22742,4,0,0,0,0,0,0,0,0,0,'High Tinker Mekkatorque - Cast Super Shrink Ray');

UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = 7999;
DELETE FROM `creature_ai_scripts` WHERE `creature_id` = 7999;
INSERT INTO `creature_ai_scripts` VALUES (799901,7999,0,0,100,1,5000,5000,9500,19000,11,20691,1,0,0,0,0,0,0,0,0,0,'Tyrande Whisperwind - Cast Cleave');
INSERT INTO `creature_ai_scripts` VALUES (799902,7999,0,0,100,1,5000,5000,17000,25000,11,20690,1,0,0,0,0,0,0,0,0,0,'Tyrande Whisperwind - Cast Moonfire');
INSERT INTO `creature_ai_scripts` VALUES (799903,7999,0,0,100,1,5000,5000,19000,30000,11,20688,4,0,0,0,0,0,0,0,0,0,'Tyrande Whisperwind - Cast Searing Arrow');
INSERT INTO `creature_ai_scripts` VALUES (799904,7999,0,0,100,1,5500,5500,22000,25000,11,20687,1,0,0,0,0,0,0,0,0,0,'Tyrande Whisperwind - Cast Starfall');
INSERT INTO `creature_ai_scripts` VALUES (799905,7999,4,0,100,0,0,0,0,0,1,-1136,0,0,0,0,0,0,0,0,0,0,'Tyrande Whisperwind - Chance Say on Aggro');

UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = 8889;
DELETE FROM `creature_ai_scripts` WHERE `creature_id` = 8889;
INSERT INTO `creature_ai_scripts` VALUES (888901,8889,0,0,100,3,5000,5000,14000,16000,11,15580,1,0,0,0,0,0,0,0,0,0,'Anvilrage Overseer - Cast Strike');
INSERT INTO `creature_ai_scripts` VALUES (888902,8889,4,0,100,2,0,0,0,0,11,13589,0,0,0,0,0,0,0,0,0,0,'Anvilrage Overseer - Cast Haste Aura');

UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = 8890;
DELETE FROM `creature_ai_scripts` WHERE `creature_id` = 8890;
INSERT INTO `creature_ai_scripts` VALUES (889001,8890,0,0,100,3,500,5000,12000,12000,11,14030,1,0,0,0,0,0,0,0,0,0,'Anvilrage Warden - Cast Hooked Net');
INSERT INTO `creature_ai_scripts` VALUES (889002,8890,0,0,100,3,5000,5000,15000,16000,11,11972,1,0,0,0,0,0,0,0,0,0,'Anvilrage Wardenr - Cast Shield Bash');

UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = 8891;
DELETE FROM `creature_ai_scripts` WHERE `creature_id` = 8891;
INSERT INTO `creature_ai_scripts` VALUES (889101,8891,0,0,100,3,8000,8000,13000,16000,11,12169,0,1,0,0,0,0,0,0,0,0,'Anvilrage Captain - Cast Shield Block');
INSERT INTO `creature_ai_scripts` VALUES (889102,8891,0,0,100,3,8000,8000,14000,15000,11,6713,1,0,0,0,0,0,0,0,0,0,'Anvilrage Footman - Cast Disarm');
INSERT INTO `creature_ai_scripts` VALUES (889103,8891,0,0,100,3,8000,8000,12000,12000,11,11971,1,0,0,0,0,0,0,0,0,0,'Anvilrage Footman - Cast Sunder Armor');

UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = 8892;
DELETE FROM `creature_ai_scripts` WHERE `creature_id` = 8892;
INSERT INTO `creature_ai_scripts` VALUES (889201,8892,0,0,100,3,8000,8000,12000,12000,11,15580,1,0,0,0,0,0,0,0,0,0,'Anvilrage Footman - Cast Strike');

UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = 8893;
DELETE FROM `creature_ai_scripts` WHERE `creature_id` = 8893;
INSERT INTO `creature_ai_scripts` VALUES (889301,8893,0,0,100,3,5000,5000,12000,12000,11,15284,1,0,0,0,0,0,0,0,0,0,'Anvilrage Soldier - Cast Cleave');
INSERT INTO `creature_ai_scripts` VALUES (889302,8893,0,0,100,3,5000,5000,15000,16000,11,9080,1,0,0,0,0,0,0,0,0,0,'Anvilrage Soldier - Cast Hamstring');
INSERT INTO `creature_ai_scripts` VALUES (889303,8893,0,0,100,3,5000,5000,18000,18000,11,13847,0,1,0,0,0,0,0,0,0,0,'Anvilrage Soldier - Cast Recklessness');

UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = 8894;
DELETE FROM `creature_ai_scripts` WHERE `creature_id` = 8894;
INSERT INTO `creature_ai_scripts` VALUES (889401,8894,2,0,100,3,25,0,15300,22900,11,15586,0,0,0,0,0,0,0,0,0,0,'Anvilrage Medic - Cast Heal When Below 25% HP');
INSERT INTO `creature_ai_scripts` VALUES (889402,8894,0,0,100,3,1500,5000,14000,15000,11,15587,1,0,0,0,0,0,0,0,0,0,'Anvilrage Medic - Cast Mind Blast');
INSERT INTO `creature_ai_scripts` VALUES (889403,8894,1,0,100,3,1000,1000,1800000,1800000,11,13864,0,0,0,0,0,0,0,0,0,0,'Anvilrage Medic - Cast Power Word: Fortitude on Spawn');
INSERT INTO `creature_ai_scripts` VALUES (889404,8894,0,0,100,3,3000,5000,16000,18000,11,15585,0,0,0,0,0,0,0,0,0,0,'Anvilrage Medic - Cast Prayer of Healing');

UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = 8895;
DELETE FROM `creature_ai_scripts` WHERE `creature_id` = 8895;
INSERT INTO `creature_ai_scripts` VALUES (889501,8895,0,0,100,3,5000,5000,16000,18000,11,6253,1,0,0,0,0,0,0,0,0,0,'Anvilrage Officer - Cast Backhand');
INSERT INTO `creature_ai_scripts` VALUES (889502,8895,0,0,100,3,5000,5000,18000,18000,11,9128,0,0,0,0,0,0,0,0,0,0,'Anvilrage Officer - Cast Battle Shout');
INSERT INTO `creature_ai_scripts` VALUES (889503,8895,0,0,100,3,5000,5000,25000,25000,11,13874,0,1,0,0,0,0,0,0,0,0,'Anvilrage Officer - Cast Divine Shield');
INSERT INTO `creature_ai_scripts` VALUES (889504,8895,2,0,100,3,25,0,15300,22900,11,13952,0,0,0,0,0,0,0,0,0,0,'Anvilrage Officer - Cast Holy Light When Below 25% HP');
INSERT INTO `creature_ai_scripts` VALUES (889505,8895,0,0,100,2,0,0,0,0,21,0,0,0,0,0,0,0,0,0,0,0,'Anvilrage Officer - Stop Movement on Aggro');
INSERT INTO `creature_ai_scripts` VALUES (889506,8895,4,0,100,2,0,0,0,0,11,15620,1,0,22,6,0,0,0,0,0,0,'Anvilrage Officer - Cast Shoot and Set Phase 1 on Aggro');
INSERT INTO `creature_ai_scripts` VALUES (889507,8895,0,6,100,3,2200,4700,2200,4700,11,15620,1,0,0,0,0,0,0,0,0,0,'Anvilrage Officer - Cast Shoot (Phase 1)');
INSERT INTO `creature_ai_scripts` VALUES (889508,8895,9,6,100,3,20,100,0,0,21,1,0,0,0,0,0,0,0,0,0,0,'Anvilrage Officer - Start Movement at 20 Yards (Phase 1)');
INSERT INTO `creature_ai_scripts` VALUES (889509,8895,9,6,100,3,6,10,0,0,21,0,0,0,0,0,0,0,0,0,0,0,'Anvilrage Officer - Stop Movement at 10 Yards (Phase 1)');
INSERT INTO `creature_ai_scripts` VALUES (889510,8895,9,6,100,3,0,5,0,0,21,1,0,0,0,0,0,0,0,0,0,0,'Anvilrage Officer - Start Movement at 5 Yards (Phase 1)');
INSERT INTO `creature_ai_scripts` VALUES (889511,8895,2,0,100,2,15,0,0,0,22,5,0,0,0,0,0,0,0,0,0,0,'Anvilrage Officer - Set Phase 2 at 15% HP');
INSERT INTO `creature_ai_scripts` VALUES (889512,8895,2,5,100,2,15,0,0,0,21,1,0,0,25,0,0,0,1,-47,0,0,'Anvilrage Officer - Start Movement and Flee at 15% HP (Phase 2)');
INSERT INTO `creature_ai_scripts` VALUES (889513,8895,7,0,100,2,0,0,0,0,22,0,0,0,0,0,0,0,0,0,0,0,'Anvilrage Officer - On Evade set Phase to 0');

UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = 8896;
DELETE FROM `creature_ai_scripts` WHERE `creature_id` = 8896;
INSERT INTO `creature_ai_scripts` VALUES (889601,8896,0,0,100,2,0,0,0,0,21,0,0,0,0,0,0,0,0,0,0,0,'Shadowforge Peasant - Stop Movement on Aggro');
INSERT INTO `creature_ai_scripts` VALUES (889602,8896,4,0,100,2,0,0,0,0,11,6660,1,0,22,6,0,0,0,0,0,0,'Shadowforge Peasant - Cast Shoot and Set Phase 1 on Aggro');
INSERT INTO `creature_ai_scripts` VALUES (889603,8896,0,6,100,3,2200,4700,2200,4700,11,6660,1,0,0,0,0,0,0,0,0,0,'Shadowforge Peasant - Cast Shoot (Phase 1)');
INSERT INTO `creature_ai_scripts` VALUES (889604,8896,9,6,100,3,20,100,0,0,21,1,0,0,0,0,0,0,0,0,0,0,'Shadowforge Peasant - Start Movement at 20 Yards (Phase 1)');
INSERT INTO `creature_ai_scripts` VALUES (889605,8896,9,6,100,3,6,10,0,0,21,0,0,0,0,0,0,0,0,0,0,0,'Shadowforge Peasant - Stop Movement at 10 Yards (Phase 1)');
INSERT INTO `creature_ai_scripts` VALUES (889606,8896,9,6,100,3,0,5,0,0,21,1,0,0,0,0,0,0,0,0,0,0,'Shadowforge Peasant - Start Movement at 5 Yards (Phase 1)');
INSERT INTO `creature_ai_scripts` VALUES (889607,8896,2,0,100,2,15,0,0,0,22,5,0,0,0,0,0,0,0,0,0,0,'Shadowforge Peasant - Set Phase 2 at 15% HP');
INSERT INTO `creature_ai_scripts` VALUES (889608,8896,2,5,100,2,15,0,0,0,21,1,0,0,25,0,0,0,1,-47,0,0,'Shadowforge Peasant - Start Movement and Flee at 15% HP (Phase 2)');
INSERT INTO `creature_ai_scripts` VALUES (889609,8896,7,0,100,2,0,0,0,0,22,0,0,0,0,0,0,0,0,0,0,0,'Shadowforge Peasant - On Evade set Phase to 0');
INSERT INTO `creature_ai_scripts` VALUES (889610,8896,2,0,100,3,25,0,15300,22900,11,11642,0,0,0,0,0,0,0,0,0,0,'Shadowforge Peasant - Cast Heal When Below 25% HP');
INSERT INTO `creature_ai_scripts` VALUES (889611,8896,0,0,70,3,5500,5500,14000,14000,11,6713,1,0,0,0,0,0,0,0,0,0,'Shadowforge Peasant - Disarm');
INSERT INTO `creature_ai_scripts` VALUES (889612,8896,0,0,70,3,5500,5500,8000,8000,11,9053,1,0,0,0,0,0,0,0,0,0,'Shadowforge Peasant - Fireball');
INSERT INTO `creature_ai_scripts` VALUES (889613,8896,0,0,70,3,5500,5500,12000,15000,11,3604,1,0,0,0,0,0,0,0,0,0,'Shadowforge Peasant - Tendon Rip');
INSERT INTO `creature_ai_scripts` VALUES (889614,8896,0,0,70,3,5500,5500,10000,11000,11,13584,1,0,0,0,0,0,0,0,0,0,'Shadowforge Peasant - Strike');
INSERT INTO `creature_ai_scripts` VALUES (889615,8896,0,0,70,3,1000,5500,14000,15000,11,7978,1,0,0,0,0,0,0,0,0,0,'Shadowforge Peasant - Throw Dynamite');

UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = 8897;
DELETE FROM `creature_ai_scripts` WHERE `creature_id` = 8897;
INSERT INTO `creature_ai_scripts` VALUES (889701,8897,0,0,100,3,2000,4000,14000,14000,11,9143,1,0,0,0,0,0,0,0,0,0,'Doomforge Craftsman - Cast Bomb');
INSERT INTO `creature_ai_scripts` VALUES (889702,8897,0,0,100,3,5500,5500,16000,16000,11,13951,0,0,0,0,0,0,0,0,0,0,'Doomforge Craftsman - Cast Rebuild');
INSERT INTO `creature_ai_scripts` VALUES (889703,8897,0,0,100,3,5500,5500,12000,12000,11,15619,1,0,0,0,0,0,0,0,0,0,'Doomforge Craftsman - Cast Throw Wrench');

UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = 8898;
DELETE FROM `creature_ai_scripts` WHERE `creature_id` = 8898;
INSERT INTO `creature_ai_scripts` VALUES (889801,8898,0,0,100,3,8000,8000,14000,15000,11,13953,1,0,0,0,0,0,0,0,0,0,'Anvilrage Marshal - Cast Holy Strike');
INSERT INTO `creature_ai_scripts` VALUES (889802,8898,4,0,100,2,0,0,0,0,11,8258,0,0,0,0,0,0,0,0,0,0,'Anvilrage Marshal - Cast Devotion Aura on Aggro');
INSERT INTO `creature_ai_scripts` VALUES (889803,8898,2,0,100,3,25,0,15300,22900,11,15493,0,0,0,0,0,0,0,0,0,0,'Anvilrage Marshal - Cast Holy Light When Below 25% HP');

UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = 8899;
DELETE FROM `creature_ai_scripts` WHERE `creature_id` = 8899;
INSERT INTO `creature_ai_scripts` VALUES (889901,8899,0,0,100,3,5500,5500,12000,12000,11,15496,1,0,0,0,0,0,0,0,0,0,'Doomforge Dragoon - Cast Cleave');
INSERT INTO `creature_ai_scripts` VALUES (889902,8899,0,0,100,2,0,0,0,0,21,0,0,0,0,0,0,0,0,0,0,0,'Doomforge Dragoon - Stop Movement on Aggro');
INSERT INTO `creature_ai_scripts` VALUES (889903,8899,4,0,100,2,0,0,0,0,11,15620,1,0,22,6,0,0,0,0,0,0,'Doomforge Dragoon - Cast Shoot and Set Phase 1 on Aggro');
INSERT INTO `creature_ai_scripts` VALUES (889904,8899,0,6,100,3,2200,4700,2200,4700,11,15620,1,0,0,0,0,0,0,0,0,0,'Doomforge Dragoon - Cast Shoot (Phase 1)');
INSERT INTO `creature_ai_scripts` VALUES (889905,8899,9,6,100,3,20,100,0,0,21,1,0,0,0,0,0,0,0,0,0,0,'Doomforge Dragoon - Start Movement at 20 Yards (Phase 1)');
INSERT INTO `creature_ai_scripts` VALUES (889906,8899,9,6,100,3,6,10,0,0,21,0,0,0,0,0,0,0,0,0,0,0,'Doomforge Dragoon - Stop Movement at 10 Yards (Phase 1)');
INSERT INTO `creature_ai_scripts` VALUES (889907,8899,9,6,100,3,0,5,0,0,21,1,0,0,0,0,0,0,0,0,0,0,'Doomforge Dragoon - Start Movement at 5 Yards (Phase 1)');
INSERT INTO `creature_ai_scripts` VALUES (889908,8899,2,0,100,2,15,0,0,0,22,5,0,0,0,0,0,0,0,0,0,0,'Doomforge Dragoon - Set Phase 2 at 15% HP');
INSERT INTO `creature_ai_scripts` VALUES (889909,8899,2,5,100,2,15,0,0,0,21,1,0,0,25,0,0,0,1,-47,0,0,'Doomforge Dragoon - Start Movement and Flee at 15% HP (Phase 2)');
INSERT INTO `creature_ai_scripts` VALUES (889910,8899,7,0,100,2,0,0,0,0,22,0,0,0,0,0,0,0,0,0,0,0,'Doomforge Dragoon - On Evade set Phase to 0');
INSERT INTO `creature_ai_scripts` VALUES (889911,8899,0,0,100,3,1000,5500,8000,8000,11,15495,1,0,0,0,0,0,0,0,0,0,'Doomforge Dragoon - Cast Explosive Shot');

UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = 8900;
DELETE FROM `creature_ai_scripts` WHERE `creature_id` = 8900;
INSERT INTO `creature_ai_scripts` VALUES (890001,8900,0,0,100,3,1500,3000,15000,15000,11,13745,0,0,0,0,0,0,0,0,0,0,'Doomforge Arcanasmith - Arcane Explosion');
INSERT INTO `creature_ai_scripts` VALUES (890002,8900,0,0,100,3,1000,4000,9000,12000,11,13748,1,0,0,0,0,0,0,0,0,0,'Doomforge Arcanasmith - Arcane Bolt');

UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = 8902;
DELETE FROM `creature_ai_scripts` WHERE `creature_id` = 8902;
INSERT INTO `creature_ai_scripts` VALUES (890201,8902,2,0,100,3,25,0,15300,22900,11,11642,0,0,0,0,0,0,0,0,0,0,'Shadowforge Citizen - Cast Heal When Below 25% HP');
INSERT INTO `creature_ai_scripts` VALUES (890202,8902,0,0,70,3,5500,5500,18000,18000,11,11831,0,0,0,0,0,0,0,0,0,0,'Shadowforge Citizen - Cast Frost Nova');
INSERT INTO `creature_ai_scripts` VALUES (890203,8902,0,0,70,3,5500,5500,12000,15000,11,13339,1,0,0,0,0,0,0,0,0,0,'Shadowforge Citizen - Cast Fire Blast');
INSERT INTO `creature_ai_scripts` VALUES (890204,8902,0,0,70,3,5500,5500,10000,11000,11,13446,1,0,0,0,0,0,0,0,0,0,'Shadowforge Citizen - Cast Strike');
INSERT INTO `creature_ai_scripts` VALUES (890205,8902,0,0,70,3,5500,5500,14000,15000,11,13444,1,0,0,0,0,0,0,0,0,0,'Shadowforge Citizen - Cast Sunder Armor');

UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = 8903;
DELETE FROM `creature_ai_scripts` WHERE `creature_id` = 8903;
INSERT INTO `creature_ai_scripts` VALUES (890301,8903,0,0,80,3,8000,8000,12000,12000,11,13730,0,0,0,0,0,0,0,0,0,0,'Anvilrage Captain - Cast Demoralizing Shout');
INSERT INTO `creature_ai_scripts` VALUES (890302,8903,0,0,100,3,8000,8000,15000,17000,11,13737,1,0,0,0,0,0,0,0,0,0,'Anvilrage Captain - Cast Mortal Strike');
INSERT INTO `creature_ai_scripts` VALUES (890303,8903,0,0,100,3,8000,8000,13000,16000,11,11972,1,0,0,0,0,0,0,0,0,0,'Anvilrage Captain - Cast Shield Bash');
INSERT INTO `creature_ai_scripts` VALUES (890304,8903,0,0,100,3,8000,8000,13000,16000,11,12169,0,1,0,0,0,0,0,0,0,0,'Anvilrage Captain - Cast Shield Block');

UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = 8904;
DELETE FROM `creature_ai_scripts` WHERE `creature_id` = 8904;
INSERT INTO `creature_ai_scripts` VALUES (890401,8904,0,0,100,2,0,0,0,0,21,0,0,0,0,0,0,0,0,0,0,0,'Shadowforge Senator - Stop Movement on Aggro');
INSERT INTO `creature_ai_scripts` VALUES (890402,8904,4,0,100,2,0,0,0,0,11,15547,1,0,22,6,0,0,0,0,0,0,'Shadowforge Senator - Cast Shoot and Set Phase 1 on Aggro');
INSERT INTO `creature_ai_scripts` VALUES (890403,8904,0,6,100,3,2200,4700,2200,4700,11,15547,1,0,0,0,0,0,0,0,0,0,'Shadowforge Senator - Cast Shoot (Phase 1)');
INSERT INTO `creature_ai_scripts` VALUES (890404,8904,9,6,100,3,20,100,0,0,21,1,0,0,0,0,0,0,0,0,0,0,'Shadowforge Senator - Start Movement at 20 Yards (Phase 1)');
INSERT INTO `creature_ai_scripts` VALUES (890405,8904,9,6,100,3,6,10,0,0,21,0,0,0,0,0,0,0,0,0,0,0,'Shadowforge Senator - Stop Movement at 10 Yards (Phase 1)');
INSERT INTO `creature_ai_scripts` VALUES (890406,8904,9,6,100,3,0,5,0,0,21,1,0,0,0,0,0,0,0,0,0,0,'Shadowforge Senator - Start Movement at 5 Yards (Phase 1)');
INSERT INTO `creature_ai_scripts` VALUES (890407,8904,2,0,100,2,15,0,0,0,22,5,0,0,0,0,0,0,0,0,0,0,'Shadowforge Senator - Set Phase 2 at 15% HP');
INSERT INTO `creature_ai_scripts` VALUES (890408,8904,2,5,100,2,15,0,0,0,21,1,0,0,25,0,0,0,1,-47,0,0,'Shadowforge Senator - Start Movement and Flee at 15% HP (Phase 2)');
INSERT INTO `creature_ai_scripts` VALUES (890409,8904,7,0,100,2,0,0,0,0,22,0,0,0,0,0,0,0,0,0,0,0,'Shadowforge Senator - On Evade set Phase to 0');
INSERT INTO `creature_ai_scripts` VALUES (890410,8904,0,0,100,3,5500,5500,12000,15000,11,14868,1,0,0,0,0,0,0,0,0,0,'Shadowforge Senator - Cast Curse of Agony');
INSERT INTO `creature_ai_scripts` VALUES (890411,8904,0,0,90,3,5500,5500,10000,11000,11,11831,0,0,0,0,0,0,0,0,0,0,'Shadowforge Senator - Cast Frost Nova');
INSERT INTO `creature_ai_scripts` VALUES (890412,8904,0,0,100,3,5500,5500,18000,18000,11,2601,0,1,0,0,0,0,0,0,0,0,'Shadowforge Senator - Cast Fire Shield');

UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = 8905;
DELETE FROM `creature_ai_scripts` WHERE `creature_id` = 8905;
INSERT INTO `creature_ai_scripts` VALUES (890501,8905,0,0,100,3,5500,5500,12000,12000,11,15621,1,0,0,0,0,0,0,0,0,0,'Warbringer Construct - Cast Skull Crack');

UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = 8906;
DELETE FROM `creature_ai_scripts` WHERE `creature_id` = 8906;
INSERT INTO `creature_ai_scripts` VALUES (890601,8906,2,0,100,2,30,0,0,0,11,12795,0,0,1,-106,0,0,0,0,0,0,'Ragereaver Golem - Cast Frenzy at 30% HP');

UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = 8907;
DELETE FROM `creature_ai_scripts` WHERE `creature_id` = 8907;
INSERT INTO `creature_ai_scripts` VALUES (890701,8907,0,0,100,3,5500,5500,12000,12000,11,10966,1,0,0,0,0,0,0,0,0,0,'Wrath Hammer Construct - Cast Uppercut');
INSERT INTO `creature_ai_scripts` VALUES (890702,8907,0,0,100,3,1500,5500,16000,18000,11,15575,1,0,0,0,0,0,0,0,0,0,'Wrath Hammer Construct - Cast Flame Cannon');

UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = 8909;
DELETE FROM `creature_ai_scripts` WHERE `creature_id` = 8909;
INSERT INTO `creature_ai_scripts` VALUES (890901,8909,0,0,100,2,0,0,0,0,21,0,0,0,0,0,0,0,0,0,0,0,'Fireguard - Stop Movement on Aggro');
INSERT INTO `creature_ai_scripts` VALUES (890902,8909,4,0,100,2,0,0,0,0,11,15242,1,0,22,6,0,0,0,0,0,0,'Fireguard - Cast Fireball and Set Phase 1 on Aggro');
INSERT INTO `creature_ai_scripts` VALUES (890903,8909,0,6,100,3,3400,4700,3400,4700,0,0,0,0,11,15242,1,0,0,0,0,0,'Fireguard - Cast Fireball (Phase 1)');
INSERT INTO `creature_ai_scripts` VALUES (890904,8909,3,6,100,2,15,0,0,0,21,1,0,0,22,5,0,0,0,0,0,0,'Fireguard - Start Movement and Set Phase 2 when Mana is at 15%');
INSERT INTO `creature_ai_scripts` VALUES (890905,8909,9,6,100,3,25,80,0,0,21,1,0,0,0,0,0,0,0,0,0,0,'Fireguard - Start Movement Beyond 25 Yards');
INSERT INTO `creature_ai_scripts` VALUES (890906,8909,3,5,100,3,100,30,100,100,22,6,0,0,0,0,0,0,0,0,0,0,'Fireguard- Set Phase 1 when Mana is above 30% (Phase 2)');
INSERT INTO `creature_ai_scripts` VALUES (890907,8909,2,0,100,2,15,0,0,0,22,3,0,0,0,0,0,0,0,0,0,0,'Fireguard - Set Phase 3 at 15% HP');
INSERT INTO `creature_ai_scripts` VALUES (890908,8909,2,3,100,2,15,0,0,0,21,1,0,0,25,0,0,0,1,-47,0,0,'Fireguard - Start Movement and Flee at 15% HP (Phase 3)');
INSERT INTO `creature_ai_scripts` VALUES (890909,8909,7,0,100,2,0,0,0,0,22,0,0,0,0,0,0,0,0,0,0,0,'Fireguard - On Evade set Phase to 0');

UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = 8910;
DELETE FROM `creature_ai_scripts` WHERE `creature_id` = 8910;
INSERT INTO `creature_ai_scripts` VALUES (891001,8910,0,0,100,3,5000,5000,12000,12000,11,13341,1,0,0,0,0,0,0,0,0,0,'Blazing Fireguard - Cast Fire Blast');
INSERT INTO `creature_ai_scripts` VALUES (891002,8910,0,0,100,3,2000,5000,14000,16000,11,12742,1,0,0,0,0,0,0,0,0,0,'Blazing Fireguard - Cast Immolate');
INSERT INTO `creature_ai_scripts` VALUES (891003,8910,0,0,100,3,1500,5000,18000,18000,11,15241,1,0,0,0,0,0,0,0,0,0,'Blazing Fireguard - Cast Scorch');

UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = 8911;
DELETE FROM `creature_ai_scripts` WHERE `creature_id` = 8911;
INSERT INTO `creature_ai_scripts` VALUES (891101,8911,0,0,100,3,5500,5500,12000,14000,11,15285,0,0,0,0,0,0,0,0,0,0,'Fireguard Destroyer - Cast Fireball Volley');

UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = 8912;
DELETE FROM `creature_ai_scripts` WHERE `creature_id` = 8912;
INSERT INTO `creature_ai_scripts` VALUES (891201,8912,0,0,80,3,5500,5500,10000,11000,11,14032,1,0,0,0,0,0,0,0,0,0,"Twilight's Hammer Torturer - Cast Shadow Word: Pain");

UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = 8913;
DELETE FROM `creature_ai_scripts` WHERE `creature_id` = 8913;
INSERT INTO `creature_ai_scripts` VALUES (891301,8913,0,0,70,3,1000,5500,14000,14000,11,13748,1,0,0,0,0,0,0,0,0,0,'Twilight Emissary - Cast Arcane Bolt');
INSERT INTO `creature_ai_scripts` VALUES (891302,8913,0,0,100,3,1500,5500,18000,18000,11,13745,0,0,0,0,0,0,0,0,0,0,'Twilight Emissary - Cast Arcane Explosion');
INSERT INTO `creature_ai_scripts` VALUES (891303,8913,0,0,70,3,5500,5500,15000,15000,11,15063,0,0,0,0,0,0,0,0,0,0,'Twilight Emissary - Cast Frost Nova');
INSERT INTO `creature_ai_scripts` VALUES (891304,8913,0,0,70,3,5500,5500,8000,8000,11,15043,1,0,0,0,0,0,0,0,0,0,'Twilight Emissary - Cast Frostbolt');
INSERT INTO `creature_ai_scripts` VALUES (891305,8913,0,0,70,3,1000,5500,14000,15000,11,15288,0,1,0,0,0,0,0,0,0,0,'Twilight Emissary - Cast Throw Dynamite');
INSERT INTO `creature_ai_scripts` VALUES (891306,8913,0,0,100,2,0,0,0,0,21,0,0,0,0,0,0,0,0,0,0,0,'Twilight Emissary - Stop Movement on Aggro');
INSERT INTO `creature_ai_scripts` VALUES (891307,8913,4,0,100,2,0,0,0,0,11,12466,1,0,22,6,0,0,0,0,0,0,'Twilight Emissary - Cast Fireball and Set Phase 1 on Aggro');
INSERT INTO `creature_ai_scripts` VALUES (891308,8913,0,6,100,3,3400,4700,3400,4700,0,0,0,0,11,12466,1,0,0,0,0,0,'Twilight Emissary - Cast Fireball (Phase 1)');
INSERT INTO `creature_ai_scripts` VALUES (891309,8913,3,6,100,2,15,0,0,0,21,1,0,0,22,5,0,0,0,0,0,0,'Twilight Emissary - Start Movement and Set Phase 2 when Mana is at 15%');
INSERT INTO `creature_ai_scripts` VALUES (891310,8913,9,6,100,3,25,80,0,0,21,1,0,0,0,0,0,0,0,0,0,0,'Twilight Emissary - Start Movement Beyond 25 Yards');
INSERT INTO `creature_ai_scripts` VALUES (891311,8913,3,5,100,3,100,30,100,100,22,6,0,0,0,0,0,0,0,0,0,0,'Twilight Emissary - Set Phase 1 when Mana is above 30% (Phase 2)');
INSERT INTO `creature_ai_scripts` VALUES (891312,8913,2,0,100,2,15,0,0,0,22,3,0,0,0,0,0,0,0,0,0,0,'Twilight Emissary - Set Phase 3 at 15% HP');
INSERT INTO `creature_ai_scripts` VALUES (891313,8913,2,3,100,2,15,0,0,0,21,1,0,0,25,0,0,0,1,-47,0,0,'Twilight Emissary - Start Movement and Flee at 15% HP (Phase 3)');
INSERT INTO `creature_ai_scripts` VALUES (891314,8913,7,0,100,2,0,0,0,0,22,0,0,0,0,0,0,0,0,0,0,0,'Twilight Emissary - On Evade set Phase to 0');
INSERT INTO `creature_ai_scripts` VALUES (891315,8913,1,0,100,3,1000,1000,1800000,1800000,11,12544,0,0,0,0,0,0,0,0,0,0,'Twilight Emissary - Cast Frost Armor on Spawn');

UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = 8914;
DELETE FROM `creature_ai_scripts` WHERE `creature_id` = 8914;
INSERT INTO `creature_ai_scripts` VALUES (891401,8914,0,0,100,3,5500,5500,15000,15000,11,13902,1,0,0,0,0,0,0,0,0,0,'Twilight Bodyguard - Cast Fist of Ragnaros');
INSERT INTO `creature_ai_scripts` VALUES (891402,8914,0,0,60,3,5500,5500,10000,11000,11,15615,1,0,0,0,0,0,0,0,0,0,'Twilight Bodyguard - Cast Pummel');
INSERT INTO `creature_ai_scripts` VALUES (891403,8914,0,0,100,3,5500,5500,18000,18000,11,13903,0,0,0,0,0,0,0,0,0,0,'Twilight Bodyguardr - Cast Seal of Sacrifice');

UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = 8915;
DELETE FROM `creature_ai_scripts` WHERE `creature_id` = 8915;
INSERT INTO `creature_ai_scripts` VALUES (891501,8915,0,0,70,3,1000,2000,14000,14000,11,12248,1,0,0,0,0,0,0,0,0,0,"Twilight's Hammer Ambassador - Cast Amplify Damage");
INSERT INTO `creature_ai_scripts` VALUES (891502,8915,0,0,100,3,1500,5500,18000,18000,11,11980,1,0,0,0,0,0,0,0,0,0,"Twilight's Hammer Ambassador - Cast Curse of Weakness");
INSERT INTO `creature_ai_scripts` VALUES (891503,8915,0,0,70,3,5500,5500,15000,15000,11,15501,1,0,0,0,0,0,0,0,0,0,"Twilight's Hammer Ambassador - Cast Earth Shock");
INSERT INTO `creature_ai_scripts` VALUES (891504,8915,0,0,70,3,5500,5500,22000,22000,11,15096,1,0,0,0,0,0,0,0,0,0,"Twilight's Hammer Ambassador - Cast Flame Shock");
INSERT INTO `creature_ai_scripts` VALUES (891505,8915,0,0,70,3,5500,5500,14000,15000,11,15499,1,0,0,0,0,0,0,0,0,0,"Twilight's Hammer Ambassador- Cast Frost Shock");
INSERT INTO `creature_ai_scripts` VALUES (891506,8915,0,0,70,3,5500,5500,20000,20000,11,15500,1,0,0,0,0,0,0,0,0,0,"Twilight's Hammer Ambassador- Cast Shock");
INSERT INTO `creature_ai_scripts` VALUES (891507,8915,0,0,100,3,5500,5500,20000,25000,11,6742,0,1,0,0,0,0,0,0,0,0,"Twilight's Hammer Ambassador- Cast Bloodlust");

UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = 8916;
DELETE FROM `creature_ai_scripts` WHERE `creature_id` = 8916;
INSERT INTO `creature_ai_scripts` VALUES (891601,8916,0,0,100,3,5000,5000,17000,18000,11,11976,1,0,0,0,0,0,0,0,0,0,'Anvilrage Overseer - Cast Strike');
INSERT INTO `creature_ai_scripts` VALUES (891602,8916,0,0,100,3,5000,5000,15000,17000,11,9080,1,0,0,0,0,0,0,0,0,0,'Anvilrage Overseer - Cast Hamstring');
INSERT INTO `creature_ai_scripts` VALUES (891603,8916,0,0,100,3,5000,5000,20000,20000,11,9128,0,0,0,0,0,0,0,0,0,0,'Anvilrage Overseer - Cast Battle Shout');
INSERT INTO `creature_ai_scripts` VALUES (891604,8916,0,0,100,3,5000,5000,12000,12000,11,15284,1,0,0,0,0,0,0,0,0,0,'Anvilrage Soldier - Cast Cleave');
INSERT INTO `creature_ai_scripts` VALUES (891605,8916,0,0,100,3,5000,5000,15000,16000,11,9080,1,0,0,0,0,0,0,0,0,0,'Anvilrage Soldier - Cast Hamstring');

UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = 8920;
DELETE FROM `creature_ai_scripts` WHERE `creature_id` = 8920;
INSERT INTO `creature_ai_scripts` VALUES (892001,8920,0,0,80,3,1000,5500,10000,11000,11,7896,1,0,0,0,0,0,0,0,0,0,'Weapon Technician - Cast Exploding Shot');
INSERT INTO `creature_ai_scripts` VALUES (892002,8920,0,0,100,3,5500,5500,13000,15000,11,12551,1,0,0,0,0,0,0,0,0,0,'Weapon Technician- Cast Frost Shot');
INSERT INTO `creature_ai_scripts` VALUES (892003,8920,0,0,100,3,5500,5500,12000,12000,11,14443,1,0,0,0,0,0,0,0,0,0,'Weapon Technician- Cast Multi-Shot');
INSERT INTO `creature_ai_scripts` VALUES (892004,8920,0,0,100,2,0,0,0,0,21,0,0,0,0,0,0,0,0,0,0,0,'Weapon Technician - Stop Movement on Aggro');
INSERT INTO `creature_ai_scripts` VALUES (892005,8920,4,0,100,2,0,0,0,0,11,15620,1,0,22,6,0,0,0,0,0,0,'Weapon Technician - Cast Shoot and Set Phase 1 on Aggro');
INSERT INTO `creature_ai_scripts` VALUES (892006,8920,0,6,100,3,2200,4700,2200,4700,11,15620,1,0,0,0,0,0,0,0,0,0,'Weapon Technician - Cast Shoot (Phase 1)');
INSERT INTO `creature_ai_scripts` VALUES (892007,8920,9,6,100,3,20,100,0,0,21,1,0,0,0,0,0,0,0,0,0,0,'Weapon Technician - Start Movement at 20 Yards (Phase 1)');
INSERT INTO `creature_ai_scripts` VALUES (892008,8920,9,6,100,3,6,10,0,0,21,0,0,0,0,0,0,0,0,0,0,0,'Weapon Technician - Stop Movement at 10 Yards (Phase 1)');
INSERT INTO `creature_ai_scripts` VALUES (892009,8920,9,6,100,3,0,5,0,0,21,1,0,0,0,0,0,0,0,0,0,0,'Weapon Technician - Start Movement at 5 Yards (Phase 1)');
INSERT INTO `creature_ai_scripts` VALUES (892010,8920,2,0,100,2,15,0,0,0,22,5,0,0,0,0,0,0,0,0,0,0,'Weapon Technician - Set Phase 2 at 15% HP');
INSERT INTO `creature_ai_scripts` VALUES (892011,8920,2,5,100,2,15,0,0,0,21,1,0,0,25,0,0,0,1,-47,0,0,'Weapon Technician - Start Movement and Flee at 15% HP (Phase 2)');
INSERT INTO `creature_ai_scripts` VALUES (892012,8920,7,0,100,2,0,0,0,0,22,0,0,0,0,0,0,0,0,0,0,0,'Weapon Technician - On Evade set Phase to 0');

UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = 8922;
DELETE FROM `creature_ai_scripts` WHERE `creature_id` = 8922;
INSERT INTO `creature_ai_scripts` VALUES (892201,8922,0,0,100,3,2000,2000,12000,12000,11,7140,1,0,0,0,0,0,0,0,0,0,'Bloodhound Mastiff - Cast Expose Weakness');
INSERT INTO `creature_ai_scripts` VALUES (892202,8922,0,0,100,3,2000,2000,16000,16000,11,15608,1,1,0,0,0,0,0,0,0,0,'Bloodhound Mastiff - Cast Ravenous Claw');

UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = 9029;
DELETE FROM `creature_ai_scripts` WHERE `creature_id` = 9029;
INSERT INTO `creature_ai_scripts` VALUES (902901,9029,0,0,80,3,5500,5500,10000,11000,11,14331,1,0,0,0,0,0,0,0,0,0,'Eviscerator - Cast Vicious Rend');
INSERT INTO `creature_ai_scripts` VALUES (902902,9029,0,0,100,3,3000,5500,13000,15000,11,15245,0,0,0,0,0,0,0,0,0,0,'Eviscerator - Cast Shadow Bolt Volley');
INSERT INTO `creature_ai_scripts` VALUES (902903,9029,0,0,100,3,2000,5500,18000,18000,11,7121,0,1,0,0,0,0,0,0,0,0,'Eviscerator - Cast Anti-Magic Shield');

UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = 9030;
DELETE FROM `creature_ai_scripts` WHERE `creature_id` = 9030;
INSERT INTO `creature_ai_scripts` VALUES (903001,9030,0,0,100,3,1000,2000,3000,3000,11,15254,1,0,0,0,0,0,0,0,0,0,"Ok'thor the Breaker - Cast Arcane Bolt");
INSERT INTO `creature_ai_scripts` VALUES (903002,9030,0,0,80,3,1500,5500,15000,15000,11,15453,0,0,0,0,0,0,0,0,0,0,"Ok'thor the Breaker - Cast Arcane Explosion");
INSERT INTO `creature_ai_scripts` VALUES (903003,9030,0,0,100,3,1500,5500,16000,16000,11,13323,1,0,0,0,0,0,0,0,0,0,"Ok'thor the Breaker - Cast Polymorph");
INSERT INTO `creature_ai_scripts` VALUES (903004,9030,0,0,100,3,2000,2000,12000,13000,11,13747,1,0,0,0,0,0,0,0,0,0,"Ok'thor the Breaker - Cast Slow");

UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = 9032;
DELETE FROM `creature_ai_scripts` WHERE `creature_id` = 9032;
INSERT INTO `creature_ai_scripts` VALUES (903201,9032,0,0,100,3,14000,16000,28000,32000,11,15475,0,0,0,0,0,0,0,0,0,0,'Hedrum the Creeper - Cast Baneful Poison');
INSERT INTO `creature_ai_scripts` VALUES (903202,9032,0,0,100,3,13000,14000,26000,28000,11,3609,1,0,0,0,0,0,0,0,0,0,'Hedrum the Creeper - Cast Paralyzing Poison');
INSERT INTO `creature_ai_scripts` VALUES (903203,9032,4,0,100,2,0,0,0,0,11,15474,1,4,0,0,0,0,0,0,0,0,'Hedrum the Creeper - Cast Web Explosion on Aggro');

UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = 9319;
DELETE FROM `creature_ai_scripts` WHERE `creature_id` = 9319;
INSERT INTO `creature_ai_scripts` VALUES (931901,9319,4,0,100,6,0,0,0,0,1,-1138,0,0,0,0,0,0,0,0,0,0,'Houndmaster Grebmar - Say on Aggro');
INSERT INTO `creature_ai_scripts` VALUES (931902,9319,0,0,100,3,5000,5000,18000,18000,11,21049,0,1,0,0,0,0,0,0,0,0,'Houndmaster Grebmar - Cast Bloodlust');
INSERT INTO `creature_ai_scripts` VALUES (931903,9319,0,0,100,3,8000,8000,15000,15000,11,13730,0,0,0,0,0,0,0,0,0,0,'Houndmaster Grebmar - Cast Demoralizing Shout');
INSERT INTO `creature_ai_scripts` VALUES (931904,9319,0,0,100,3,2000,3000,12000,14000,11,15615,1,0,0,0,0,0,0,0,0,0,'Houndmaster Grebmar - Cast Pummel');

UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = 9398;
DELETE FROM `creature_ai_scripts` WHERE `creature_id` = 9398;
INSERT INTO `creature_ai_scripts` VALUES (939801,9398,0,0,100,3,5500,5500,15000,15000,11,3631,0,0,0,0,0,0,0,0,0,0,"Twilight's Hammer Executioner - Battle Fury");
INSERT INTO `creature_ai_scripts` VALUES (939802,9398,0,0,100,3,5500,5500,17000,19000,11,13459,1,0,0,0,0,0,0,0,0,0,"Twilight's Hammer Executioner - Decimate");

UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = 9476;
DELETE FROM `creature_ai_scripts` WHERE `creature_id` = 9476;
INSERT INTO `creature_ai_scripts` VALUES (947601,9476,2,0,100,3,25,0,15300,22900,11,15504,0,0,0,0,0,0,0,0,0,0,'Watchman Doomgrip - Cast Drink Healing Potion When Below 25% HP');
INSERT INTO `creature_ai_scripts` VALUES (947602,9476,0,0,100,3,6000,6000,12000,12000,11,11971,1,0,0,0,0,0,0,0,0,0,'Watchman Doomgrip - Cast Sunder Armor');

UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = 9499;
DELETE FROM `creature_ai_scripts` WHERE `creature_id` = 9499;
INSERT INTO `creature_ai_scripts` VALUES (949901,9499,0,0,80,3,1000,5500,14000,15000,11,8994,1,0,0,0,0,0,0,0,0,0,'Plugger Spazzring - Cast Banish');
INSERT INTO `creature_ai_scripts` VALUES (949902,9499,0,0,100,3,5500,5500,12000,13000,11,13338,1,0,0,0,0,0,0,0,0,0,'Plugger Spazzring - Cast Curse of Tongues');
INSERT INTO `creature_ai_scripts` VALUES (949903,9499,0,0,100,3,2000,2000,10000,10000,11,12742,1,0,0,0,0,0,0,0,0,0,'Plugger Spazzring - Cast Immolate');
INSERT INTO `creature_ai_scripts` VALUES (949904,9499,1,0,100,3,1000,1000,1800000,1800000,11,13787,0,0,0,0,0,0,0,0,0,0,'Plugger Spazzring - Cast Demon Armor on Spawn');
INSERT INTO `creature_ai_scripts` VALUES (949905,9499,0,0,100,2,0,0,0,0,21,0,0,0,0,0,0,0,0,0,0,0,'Plugger Spazzring - Stop Movement on Aggro');
INSERT INTO `creature_ai_scripts` VALUES (949906,9499,4,0,100,2,0,0,0,0,11,12739,1,0,22,6,0,0,0,0,0,0,'Plugger Spazzring - Cast Fireball and Set Phase 1 on Aggro');
INSERT INTO `creature_ai_scripts` VALUES (949907,9499,0,6,100,3,3400,4700,3400,4700,0,0,0,0,11,12739,1,0,0,0,0,0,'Plugger Spazzring - Cast Shadow Bolt (Phase 1)');
INSERT INTO `creature_ai_scripts` VALUES (949908,9499,3,6,100,2,15,0,0,0,21,1,0,0,22,5,0,0,0,0,0,0,'Plugger Spazzring - Start Movement and Set Phase 2 when Mana is at 15%');
INSERT INTO `creature_ai_scripts` VALUES (949909,9499,9,6,100,3,25,80,0,0,21,1,0,0,0,0,0,0,0,0,0,0,'Plugger Spazzring - Start Movement Beyond 25 Yards');
INSERT INTO `creature_ai_scripts` VALUES (949910,9499,3,5,100,3,100,30,100,100,22,6,0,0,0,0,0,0,0,0,0,0,'Plugger Spazzring - Set Phase 1 when Mana is above 30% (Phase 2)');
INSERT INTO `creature_ai_scripts` VALUES (949911,9499,2,0,100,2,15,0,0,0,22,3,0,0,0,0,0,0,0,0,0,0,'Plugger Spazzring - Set Phase 3 at 15% HP');
INSERT INTO `creature_ai_scripts` VALUES (949912,9499,2,3,100,2,15,0,0,0,21,1,0,0,25,0,0,0,1,-47,0,0,'Plugger Spazzring - Start Movement and Flee at 15% HP (Phase 3)');
INSERT INTO `creature_ai_scripts` VALUES (949913,9499,7,0,100,2,0,0,0,0,22,0,0,0,0,0,0,0,0,0,0,0,'Plugger Spazzring - On Evade set Phase to 0');

UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = 9520;
DELETE FROM `creature_ai_scripts` WHERE `creature_id` = 9520;
INSERT INTO `creature_ai_scripts` VALUES (952001,9520,2,0,100,0,25,0,0,0,2,35,0,0,24,0,0,0,0,0,0,0,'Grark Lorkrub - Become Friendly and Evade at 25% HP');
INSERT INTO `creature_ai_scripts` VALUES (952002,9520,1,0,100,0,120000,120000,0,0,2,29,0,0,0,0,0,0,0,0,0,0,'Grark Lorkrub - Become Hostile After 2 Minutes');

UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = 9876;
DELETE FROM `creature_ai_scripts` WHERE `creature_id` = 9876;
INSERT INTO `creature_ai_scripts` VALUES (987601,9876,11,0,100,0,0,0,0,0,1,-1146,0,0,0,0,0,0,0,0,0,0,'Lochee - Says Text when Spawned');

UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = 10043;
DELETE FROM `creature_ai_scripts` WHERE `creature_id` = 10043;
INSERT INTO `creature_ai_scripts` VALUES (1004301,10043,0,0,100,3,5500,5500,12000,15000,11,15692,1,0,0,0,0,0,0,0,0,0,"Ribbly's Crony - Cast Eviscerate");
INSERT INTO `creature_ai_scripts` VALUES (1004302,10043,0,0,70,3,5500,5500,14000,19000,11,15581,1,0,0,0,0,0,0,0,0,0,"Ribbly's Crony - Cast Sinister Strike");

UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = 10076;
DELETE FROM `creature_ai_scripts` WHERE `creature_id` = 10076;
INSERT INTO `creature_ai_scripts` VALUES (1007601,10076,4,0,100,6,0,0,0,0,1,-1143,0,0,0,0,0,0,0,0,0,0,'High Priestess of Thaurissan - Say on Aggro');

UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = 10264;
DELETE FROM `creature_ai_scripts` WHERE `creature_id` = 10264;
INSERT INTO `creature_ai_scripts` VALUES (1026401,10264,0,0,100,3,5000,5000,12000,15000,11,16727,0,0,0,0,0,0,0,0,0,0,'Solakar Flamewreath - Cast War Stomp');

UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = 10299;
DELETE FROM `creature_ai_scripts` WHERE `creature_id` = 10299;
INSERT INTO `creature_ai_scripts` VALUES (1029901,10299,4,0,100,2,0,0,0,0,11,16037,1,0,0,0,0,0,0,0,0,0,'Scarshield Infiltrator - Cast Mind Probe on Aggro');

UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = 10316;
DELETE FROM `creature_ai_scripts` WHERE `creature_id` = 10316;
INSERT INTO `creature_ai_scripts` VALUES (1031601,10316,0,0,100,3,2000,12100,7900,21900,11,15580,1,0,0,0,0,0,0,0,0,0,'Blackhand Incarcerator - Strike');
INSERT INTO `creature_ai_scripts` VALUES (1031602,10316,0,0,100,3,10000,20000,30000,35000,11,16045,5,0,0,0,0,0,0,0,0,0,'Blackhand Incarcerator - Encage');
INSERT INTO `creature_ai_scripts` VALUES (1031603,10316,2,0,100,2,15,0,0,0,25,0,0,0,1,-47,0,0,0,0,0,0,'Blackhand Incarcerator - Flee at 15% HP');
INSERT INTO `creature_ai_scripts` VALUES (1031604,10316,1,0,100,2,0,0,0,0,11,15281,0,0,0,0,0,0,0,0,0,0,'Blackhand Incarcerator - Encage Emberseer');

UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = 10540;
DELETE FROM `creature_ai_scripts` WHERE `creature_id` = 10540;
INSERT INTO `creature_ai_scripts` VALUES (1054001,10540,0,0,100,1,5500,5500,18500,22500,11,16097,0,0,0,0,0,0,0,0,0,0,"Vol'jin - Cast Hex");
INSERT INTO `creature_ai_scripts` VALUES (1054002,10540,0,0,100,1,5500,5500,8500,12500,11,17289,1,0,0,0,0,0,0,0,0,0,"Vol'jin - Cast Shadow Shock");
INSERT INTO `creature_ai_scripts` VALUES (1054003,10540,0,0,100,1,5500,5500,15000,15000,11,17146,1,0,0,0,0,0,0,0,0,0,"Vol'jin - Cast Shadow Word: Pain");
INSERT INTO `creature_ai_scripts` VALUES (1054004,10540,0,0,100,1,1500,5500,22000,22500,11,17820,0,0,0,0,0,0,0,0,0,0,"Vol'jin - Cast Veil of Shadow");
INSERT INTO `creature_ai_scripts` VALUES (1054005,10540,0,0,100,0,0,0,0,0,21,0,0,0,0,0,0,0,0,0,0,0,"Vol'jin - Stop Movement on Aggro");
INSERT INTO `creature_ai_scripts` VALUES (1054006,10540,4,0,100,0,0,0,0,0,11,20463,1,0,22,1,0,0,0,0,0,0,"Vol'jin - Cast Shoot and Set Phase 1 on Aggro");
INSERT INTO `creature_ai_scripts` VALUES (1054007,10540,0,13,100,1,2200,4700,2200,4700,11,20463,1,0,0,0,0,0,0,0,0,0,"Vol jin - Cast Shoot (Phase 1)");
INSERT INTO `creature_ai_scripts` VALUES (1054008,10540,9,13,100,1,20,100,0,0,21,1,0,0,0,0,0,0,0,0,0,0,"Vol'jin - Start Movement at 20 Yards (Phase 1)");
INSERT INTO `creature_ai_scripts` VALUES (1054009,10540,9,13,100,1,6,10,0,0,21,0,0,0,0,0,0,0,0,0,0,0,"Vol'jin - Stop Movement at 10 Yards (Phase 1)");
INSERT INTO `creature_ai_scripts` VALUES (1054010,10540,9,13,100,1,0,5,0,0,21,1,0,0,0,0,0,0,0,0,0,0,"Vol'jin - Start Movement at 5 Yards (Phase 1)");
INSERT INTO `creature_ai_scripts` VALUES (1054011,10540,2,0,100,0,15,0,0,0,22,2,0,0,0,0,0,0,0,0,0,0,"Vol'jin - Set Phase 2 at 15% HP");
INSERT INTO `creature_ai_scripts` VALUES (1054012,10540,2,11,100,0,15,0,0,0,21,1,0,0,25,0,0,0,1,-47,0,0,"Vol'jin - Start Movement and Flee at 15% HP (Phase 2)");
INSERT INTO `creature_ai_scripts` VALUES (1054013,10540,7,0,100,0,0,0,0,0,22,0,0,0,0,0,0,0,0,0,0,0,"Vol'jin - On Evade set Phase to 0");

UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = 10660;
DELETE FROM `creature_ai_scripts` WHERE `creature_id` = 10660;
INSERT INTO `creature_ai_scripts` VALUES (1066001,10660,0,0,100,0,0,0,0,0,21,0,0,0,0,0,0,0,0,0,0,0,'Cobalt Broodling - Stop Movement on Aggro');
INSERT INTO `creature_ai_scripts` VALUES (1066002,10660,4,0,100,0,0,0,0,0,11,9672,1,0,22,1,0,0,0,0,0,0,'Cobalt Broodling - Cast Frostbolt and Set Phase 1 on Aggro');
INSERT INTO `creature_ai_scripts` VALUES (1066003,10660,0,13,100,1,3400,4700,3400,4700,0,0,0,0,11,9672,1,0,0,0,0,0,'Cobalt Broodlinge - Cast Frostbolt (Phase 1)');
INSERT INTO `creature_ai_scripts` VALUES (1066004,10660,3,13,100,0,15,0,0,0,21,1,0,0,22,2,0,0,0,0,0,0,'Cobalt Broodling - Start Movement and Set Phase 2 when Mana is at 15%');
INSERT INTO `creature_ai_scripts` VALUES (1066005,10660,9,13,100,1,25,80,0,0,21,1,0,0,0,0,0,0,0,0,0,0,'Cobalt Broodling - Start Movement Beyond 25 Yards');
INSERT INTO `creature_ai_scripts` VALUES (1066006,10660,3,11,100,1,100,30,100,100,22,1,0,0,0,0,0,0,0,0,0,0,'Cobalt Broodling - Set Phase 1 when Mana is above 30% (Phase 2)');
INSERT INTO `creature_ai_scripts` VALUES (1066007,10660,0,0,75,1,1000,1000,10000,10000,11,17008,1,0,0,0,0,0,0,0,0,0,'Cobalt Broodling - Cast Drain Mana');
INSERT INTO `creature_ai_scripts` VALUES (1066008,10660,2,0,100,0,15,0,0,0,22,3,0,0,0,0,0,0,0,0,0,0,'Cobalt Broodling - Set Phase 3 at 15% HP');
INSERT INTO `creature_ai_scripts` VALUES (1066009,10660,2,7,100,0,15,0,0,0,21,1,0,0,25,0,0,0,1,-47,0,0,'Cobalt Broodling - Start Movement and Flee at 15% HP (Phase 3)');
INSERT INTO `creature_ai_scripts` VALUES (1066010,10660,7,0,100,0,0,0,0,0,22,0,0,0,0,0,0,0,0,0,0,0,'Cobalt Broodling - On Evade set Phase to 0');

UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = 10742;
DELETE FROM `creature_ai_scripts` WHERE `creature_id` = 10742;
INSERT INTO `creature_ai_scripts` VALUES (1074201,10742,0,0,100,3,10000,10000,14000,14000,11,16637,0,0,0,0,0,0,0,0,0,0,'Blackhand Dragon Handler - Cast Mend Dragon');

UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = 10882;
DELETE FROM `creature_ai_scripts` WHERE `creature_id` = 10882;
INSERT INTO `creature_ai_scripts` VALUES (1088201,10882,0,0,100,1,10100,16500,12700,24800,11,17213,1,0,0,0,0,0,0,0,0,0,'Arikara - Cast Curse of Vengeance');
INSERT INTO `creature_ai_scripts` VALUES (1088202,10882,2,0,100,0,30,0,0,0,11,8599,0,0,1,-106,0,0,0,0,0,0,'Arikara - Cast Enrage at 30% HP');

UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = 10896;
DELETE FROM `creature_ai_scripts` WHERE `creature_id` = 10896;
INSERT INTO `creature_ai_scripts` VALUES (1089601,10896,0,0,100,1,4000,7000,9000,12000,11,10966,1,0,0,0,0,0,0,0,0,0,'Arnak Grimtotem - Cast Uppercut');
INSERT INTO `creature_ai_scripts` VALUES (1089602,10896,0,0,100,1,4000,4000,8300,26900,11,11977,1,0,0,0,0,0,0,0,0,0,'Arnak Grimtotem - Cast Rend');

UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = 11256;
DELETE FROM `creature_ai_scripts` WHERE `creature_id` = 11256;
INSERT INTO `creature_ai_scripts` VALUES (1125601,11256,1,0,100,0,0,0,10000,10000,1,-148,0,0,0,0,0,0,0,0,0,0,'Manifestation of Water - Say after Spawn');

UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = 11353;
DELETE FROM `creature_ai_scripts` WHERE `creature_id` = 11353;
INSERT INTO `creature_ai_scripts` VALUES (1135301,11353,0,0,100,3,5000,5000,12000,12000,11,24437,0,0,0,0,0,0,0,0,0,0,'Gurubashi Blood Drinker - Cast Blood');
INSERT INTO `creature_ai_scripts` VALUES (1135302,11353,0,0,100,3,5500,5500,14000,19000,11,24435,1,1,0,0,0,0,0,0,0,0,'Gurubashi Blood Drinker - Cast Drain Life');

UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = 11365;
DELETE FROM `creature_ai_scripts` WHERE `creature_id` = 11365;
INSERT INTO `creature_ai_scripts` VALUES (1136501,11365,0,0,100,3,5500,5500,12000,19000,11,8355,1,0,0,0,0,0,0,0,0,0,'Zulian Panther - Cast Exploit Weakness');
INSERT INTO `creature_ai_scripts` VALUES (1136502,11365,0,0,100,3,5500,5500,15000,19000,11,24332,1,0,0,0,0,0,0,0,0,0,'Zulian Panther - Cast Rake');
INSERT INTO `creature_ai_scripts` VALUES (1136503,11365,0,0,100,3,5500,5500,12000,19000,11,24333,1,0,0,0,0,0,0,0,0,0,'Zulian Panther - Cast Ravage');

UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = 11370;
DELETE FROM `creature_ai_scripts` WHERE `creature_id` = 11370;
INSERT INTO `creature_ai_scripts` VALUES (1137001,11370,0,0,100,3,5500,5500,8000,10000,11,24600,1,0,0,0,0,0,0,0,0,0,'Razzashi Broodwidow - Cast Web Spin');

UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = 11388;
DELETE FROM `creature_ai_scripts` WHERE `creature_id` = 11388;
INSERT INTO `creature_ai_scripts` VALUES (1138801,11388,0,0,80,3,5500,5500,8000,15000,11,22885,1,0,0,0,0,0,0,0,0,0,'Voodoo Slave - Cast Earth Shock');
INSERT INTO `creature_ai_scripts` VALUES (1138802,11388,0,0,50,3,5500,5500,8000,15000,11,21401,1,0,0,0,0,0,0,0,0,0,'Voodoo Slave - Cast Frost Shock');
INSERT INTO `creature_ai_scripts` VALUES (1138803,11388,0,0,100,3,2000,5500,15000,15000,11,15869,0,0,0,0,0,0,0,0,0,0,'Voodoo Slave  - Cast Superior Healing Ward');
INSERT INTO `creature_ai_scripts` VALUES (1138804,11388,2,0,100,1,25,0,15300,22900,11,15982,0,0,0,0,0,0,0,0,0,0,"Voodoo Slave - Cast Healing Wave When Below 25% H'P");

UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = 11480;
DELETE FROM `creature_ai_scripts` WHERE `creature_id` = 11480;
INSERT INTO `creature_ai_scripts` VALUES (1148001,11480,0,0,100,3,1000,1000,15000,15000,11,15979,0,0,0,0,0,0,0,0,0,0,'Arcane Aberration - Cast Arcane Bolt');
INSERT INTO `creature_ai_scripts` VALUES (1148002,11480,0,0,100,3,3000,3000,12000,16000,11,22936,1,0,0,0,0,0,0,0,0,0,'Arcane Aberration - Cast Mana Burn');

UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = 11483;
DELETE FROM `creature_ai_scripts` WHERE `creature_id` = 11483;
INSERT INTO `creature_ai_scripts` VALUES (1148301,11483,0,0,100,2,5500,5500,0,0,11,14514,0,0,0,0,0,0,0,0,0,0,'Mana Remnant - Cast Blink');
INSERT INTO `creature_ai_scripts` VALUES (1148302,11483,0,0,100,3,3000,5500,12000,13000,11,15659,1,0,0,0,0,0,0,0,0,0,'Mana Remnant - Cast Chain Lightning');

DELETE FROM `creature_ai_scripts` WHERE `creature_id` = 11669;
INSERT INTO `creature_ai_scripts` VALUES (1166901,11669,9,0,100,3,0,10,10000,15000,11,20602,0,0,0,0,0,0,0,0,0,0,'Flame Imp - Cast Fire Nova');

UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = 11735;
DELETE FROM `creature_ai_scripts` WHERE `creature_id` = 11735;
INSERT INTO `creature_ai_scripts` VALUES (1173501,11735,0,0,100,1,15000,15000,15000,30000,11,5416,1,0,0,0,0,0,0,0,0,0,'Stonelash Scorpid - Cast Venom Sting');

UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = 11736;
DELETE FROM `creature_ai_scripts` WHERE `creature_id` = 11736;
INSERT INTO `creature_ai_scripts` VALUES (1173601,11736,0,0,100,1,15000,15000,15000,30000,11,5416,1,0,0,0,0,0,0,0,0,0,'Stonelash Pincer - Cast Venom Sting');
INSERT INTO `creature_ai_scripts` VALUES (1173602,11736,0,0,100,1,2000,3000,15000,20000,11,3604,1,0,0,0,0,0,0,0,0,0,'Stonelash Pincer - Cast Tendon Rip');

UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = 11737;
DELETE FROM `creature_ai_scripts` WHERE `creature_id` = 11737;
INSERT INTO `creature_ai_scripts` VALUES (1173701,11737,0,0,100,1,3000,5000,5000,7000,11,3391,0,0,0,0,0,0,0,0,0,0,'Stonelash Flayer - Casts Thrash');
INSERT INTO `creature_ai_scripts` VALUES (1173702,11737,0,0,100,1,15000,15000,15000,30000,11,5416,1,0,0,0,0,0,0,0,0,0,'Stonelash Flayer - Cast Venom Sting');

UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = 11738;
DELETE FROM `creature_ai_scripts` WHERE `creature_id` = 11738;
INSERT INTO `creature_ai_scripts` VALUES (1173801,11738,0,0,100,1,3500,3500,9500,13700,11,744,4,0,0,0,0,0,0,0,0,0,'Sand Skitterer - Poison');

UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = 11739;
DELETE FROM `creature_ai_scripts` WHERE `creature_id` = 11739;
INSERT INTO `creature_ai_scripts` VALUES (1173901,11739,0,0,100,1,3500,3500,9500,13700,11,745,4,0,0,0,0,0,0,0,0,0,'Rock Stalker- Cast Web');
INSERT INTO `creature_ai_scripts` VALUES (1173902,11739,0,0,100,1,3500,3500,9500,13700,11,744,4,0,0,0,0,0,0,0,0,0,'Rock Stalker- Cast Poison');

UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = 11740;
DELETE FROM `creature_ai_scripts` WHERE `creature_id` = 11740;
INSERT INTO `creature_ai_scripts` VALUES (1174001,11740,0,0,100,0,500,500,0,0,11,22911,1,0,0,0,0,0,0,0,0,0,'Dredge Striker - Cast Charge');

UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = 11741;
DELETE FROM `creature_ai_scripts` WHERE `creature_id` = 11741;
INSERT INTO `creature_ai_scripts` VALUES (1174101,11741,0,0,100,1,3000,5000,6000,9000,11,6607,1,0,0,0,0,0,0,0,0,0,'Dredge Crusher - Cast Lash');

UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = 11744;
DELETE FROM `creature_ai_scripts` WHERE `creature_id` = 11744;
INSERT INTO `creature_ai_scripts` VALUES (1174401,11744,1,0,100,1,1000,1000,25000,25000,11,19514,0,1,0,0,0,0,0,0,0,0,'Dust Stormer - Cast Lightning Shield');
INSERT INTO `creature_ai_scripts` VALUES (1174402,11744,0,0,100,0,500,500,0,0,11,19513,0,0,0,0,0,0,0,0,0,0,'Dust Stormer - Cast Lightning Cloud');

UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = 11745;
DELETE FROM `creature_ai_scripts` WHERE `creature_id` = 11745;
INSERT INTO `creature_ai_scripts` VALUES (1174501,11745,0,0,100,1,7000,7000,9000,11000,11,15535,1,0,0,0,0,0,0,0,0,0,'Cyclone Warrior - Cast Enveloping Winds');
INSERT INTO `creature_ai_scripts` VALUES (1174502,11745,0,0,100,1,7000,7000,10000,21000,11,12553,1,0,0,0,0,0,0,0,0,0,'Cyclone Warrior - Cast Shock');


UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = 11803;
DELETE FROM `creature_ai_scripts` WHERE `creature_id` = 11803;
INSERT INTO `creature_ai_scripts` VALUES (1180301,11803,0,0,90,1,6000,6000,20000,20000,11,22427,1,0,0,0,0,0,0,0,0,0,'Twilight Keeper Exeter - Cast Concussion Blow');
INSERT INTO `creature_ai_scripts` VALUES (1180302,11803,0,0,100,1,500,500,6000,9000,11,16856,1,0,0,0,0,0,0,0,0,0,'Twilight Keeper Exeter - Cast Mortal strike');

UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = 11804;
DELETE FROM `creature_ai_scripts` WHERE `creature_id` = 11804;
INSERT INTO `creature_ai_scripts` VALUES (1180401,11804,0,0,80,1,7000,7000,7000,7000,11,13339,1,0,0,0,0,0,0,0,0,0,'Twilight Keeper Havunth - Cast Fire Blast');
INSERT INTO `creature_ai_scripts` VALUES (1180402,11804,0,0,100,1,15000,15000,10000,10000,11,17366,0,0,0,0,0,0,0,0,0,0,'Twilight Keeper Havunth - Cast Fire Nova');

UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = 11831;
DELETE FROM `creature_ai_scripts` WHERE `creature_id` = 11831;
INSERT INTO `creature_ai_scripts` VALUES (1183101,11831,0,0,100,3,5500,5500,12000,12000,11,24053,4,0,0,0,0,0,0,0,0,0,'Hakkari Witch Doctor - Cast Hex');
INSERT INTO `creature_ai_scripts` VALUES (1183102,11831,0,0,100,3,5500,5500,19000,19000,11,24058,0,0,0,0,0,0,0,0,0,0,'Hakkari Witch Doctor - Cast Release Toads');
INSERT INTO `creature_ai_scripts` VALUES (1183103,11831,0,0,100,3,5500,5500,15000,15000,11,17289,0,0,0,0,0,0,0,0,0,0,'Hakkari Witch Doctor - Cast Shadow Shock');
INSERT INTO `creature_ai_scripts` VALUES (1183104,11831,0,0,100,3,1500,5500,8000,17000,11,24054,0,0,0,0,0,0,0,0,0,0,'Hakkari Witch Doctor - Cast Shrink');

UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = 12143;
DELETE FROM `creature_ai_scripts` WHERE `creature_id` = 12143;
INSERT INTO `creature_ai_scripts` VALUES (1214301,12143,4,0,100,3,0,0,0,0,11,21857,0,0,0,0,0,0,0,0,0,0,'Son of Flame - Cast Lava Shield - Mana Burn Aura ');

UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = 12178;
DELETE FROM `creature_ai_scripts` WHERE `creature_id` = 12178;
INSERT INTO `creature_ai_scripts` VALUES (1217801,12178,2,0,100,1,30,0,30000,32000,11,23381,0,0,0,0,0,0,0,0,0,0,'Tortured Druid - Cast Healing Touch to 30%');
INSERT INTO `creature_ai_scripts` VALUES (1217802,12178,0,0,100,1,1000,2000,5000,9000,11,23380,4,0,0,0,0,0,0,0,0,0,'Tortured Druid - Cast Moonfire');
INSERT INTO `creature_ai_scripts` VALUES (1217803,12178,6,0,100,0,0,0,0,0,11,21327,4,0,1,-1147,0,0,0,0,0,0,"Tortured Druid - Summon Hive'Ashi Drones and Emote on Death");


UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = 14471;
DELETE FROM `creature_ai_scripts` WHERE `creature_id` = 14471;
INSERT INTO `creature_ai_scripts` VALUES (1447101,14471,0,0,100,1,40000,40000,15000,30000,11,10887,1,0,0,0,0,0,0,0,0,0,'Setis - Cast Crowd Pummel');
INSERT INTO `creature_ai_scripts` VALUES (1447102,14471,0,0,100,1,15800,21400,13100,26400,11,16727,0,0,0,0,0,0,0,0,0,0,'Setis - Cast War Stomp');

UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = 14473;
DELETE FROM `creature_ai_scripts` WHERE `creature_id` = 14473;
INSERT INTO `creature_ai_scripts` VALUES (1447301,14473,0,0,100,1,8000,8000,20000,20000,11,13445,1,0,0,0,0,0,0,0,0,0,'Lapress - Cast Rend');

UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = 14489;
DELETE FROM `creature_ai_scripts` WHERE `creature_id` = 14489;
INSERT INTO `creature_ai_scripts` VALUES (1448901,14489,1,0,100,0,0,0,0,0,21,0,0,0,20,0,0,0,0,0,0,0,'Scourge Archer - Prevent Combat Movement and Prevent Melee on Spawn');
INSERT INTO `creature_ai_scripts` VALUES (1448902,14489,4,0,100,0,0,0,0,0,11,6660,1,0,23,1,0,0,0,0,0,0,'Scourge Archer - Cast Shoot and Set Phase 1 on Aggro');
INSERT INTO `creature_ai_scripts` VALUES (1448903,14489,9,5,100,1,5,30,500,800,11,6660,1,0,40,2,0,0,0,0,0,0,'Scourge Archer - Cast Shoot and Set Ranged Weapon Model (Phase 1)');
INSERT INTO `creature_ai_scripts` VALUES (1448904,14489,9,5,100,1,5,15,0,0,21,0,1,0,20,0,0,0,0,0,0,0,'Scourge Archer - Prevent Combat Movement and Prevent Melee at 15 Yards (Phase 1)');

UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = 14511;
DELETE FROM `creature_ai_scripts` WHERE `creature_id` = 14511;
INSERT INTO `creature_ai_scripts` VALUES (1451101,14511,0,0,100,3,3000,5000,5000,7000,11,12739,1,0,0,0,0,0,0,0,0,0,'Shadowed Spirit - Cast Shadow Bolt');
INSERT INTO `creature_ai_scripts` VALUES (1451102,14511,0,0,100,3,5000,7000,7000,12000,11,15245,0,0,0,0,0,0,0,0,0,0,'Shadowed Spirit - Cast Shadow Bolt Volley');
INSERT INTO `creature_ai_scripts` VALUES (1451103,14511,0,0,100,3,1000,3000,25000,55000,11,22417,0,0,0,0,0,0,0,0,0,0,'Shadowed Spirit - Cast Shadow Shield');
INSERT INTO `creature_ai_scripts` VALUES (1451104,14511,0,0,100,3,2000,7000,2000,9000,11,22575,1,0,0,0,0,0,0,0,0,0,'Shadowed Spirit - Cast Shadow Shock');

UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = 14512;
DELETE FROM `creature_ai_scripts` WHERE `creature_id` = 14512;
INSERT INTO `creature_ai_scripts` VALUES (1451201,14512,0,0,100,3,1000,1000,20000,30000,11,18376,1,0,0,0,0,0,0,0,0,0,'Corrupted Spirit - Cast Corruption');

UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = 14513;
DELETE FROM `creature_ai_scripts` WHERE `creature_id` = 14513;
INSERT INTO `creature_ai_scripts` VALUES (1451301,14513,0,0,100,3,3000,5000,9000,20000,11,13738,1,0,0,0,0,0,0,0,0,0,'Malicious Spirit - Cast Rend');

UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = 14514;
DELETE FROM `creature_ai_scripts` WHERE `creature_id` = 14514;
INSERT INTO `creature_ai_scripts` VALUES (1451302,14514,4,0,100,2,0,0,0,0,11,23262,0,0,0,0,0,0,0,0,0,0,'Banal Spirit - Cast Demoralize on Aggro');
INSERT INTO `creature_ai_scripts` VALUES (1451401,14514,0,0,100,3,1000,3000,5000,9000,11,8140,4,0,0,0,0,0,0,0,0,0,'Banal Spirit - Cast Befuddlement');

UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = 14518;
DELETE FROM `creature_ai_scripts` WHERE `creature_id` = 14518;
INSERT INTO `creature_ai_scripts` VALUES (1451801,14518,0,0,100,3,1000,3000,5000,9000,11,8140,4,0,0,0,0,0,0,0,0,0,'Aspect of Banality - Cast Befuddlement');
INSERT INTO `creature_ai_scripts` VALUES (1451802,14518,0,0,100,3,3000,5000,30000,45000,11,16247,4,0,0,0,0,0,0,0,0,0,'Aspect of Banality - Cast Curse of Thorns');
INSERT INTO `creature_ai_scripts` VALUES (1451803,14518,4,0,100,2,0,0,0,0,11,23262,0,0,0,0,0,0,0,0,0,0,'Aspect of Banality - Cast Demoralize on Aggro');

UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = 14519;
DELETE FROM `creature_ai_scripts` WHERE `creature_id` = 14519;
INSERT INTO `creature_ai_scripts` VALUES (1451901,14519,0,0,100,3,1000,1000,20000,30000,11,18376,1,0,0,0,0,0,0,0,0,0,'Aspect of Corruption - Cast Corruption');
INSERT INTO `creature_ai_scripts` VALUES (1451902,14519,0,0,100,3,2000,2000,5000,12000,11,23268,4,0,0,0,0,0,0,0,0,0,'Aspect of Corruption - Cast Shadow Word: Pain');

UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = 14520;
DELETE FROM `creature_ai_scripts` WHERE `creature_id` = 14520;
INSERT INTO `creature_ai_scripts` VALUES (1452001,14520,0,0,100,3,3000,5000,3000,7000,11,13738,1,0,0,0,0,0,0,0,0,0,'Aspect of Malice - Cast Rend');
INSERT INTO `creature_ai_scripts` VALUES (1452002,14520,0,0,100,3,1000,3000,30000,70000,11,16098,0,0,0,0,0,0,0,0,0,0,'Aspect of Malice - Cast Curse of Blood');

UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = 14521;
DELETE FROM `creature_ai_scripts` WHERE `creature_id` = 14521;
INSERT INTO `creature_ai_scripts` VALUES (1452101,14521,0,0,100,3,3000,5000,5000,7000,11,15472,1,0,0,0,0,0,0,0,0,0,'Aspect of Shadow - Cast Shadow Bolt');
INSERT INTO `creature_ai_scripts` VALUES (1452102,14521,0,0,100,3,5000,7000,7000,12000,11,17228,0,0,0,0,0,0,0,0,0,0,'Aspect of Shadow - Cast Shadow Bolt Volley');
INSERT INTO `creature_ai_scripts` VALUES (1452103,14521,0,0,100,3,1000,3000,25000,55000,11,22417,0,0,0,0,0,0,0,0,0,0,'Aspect of Shadow - Cast Shadow Shield');
INSERT INTO `creature_ai_scripts` VALUES (1452104,14521,0,0,100,3,2000,7000,2000,9000,11,17289,1,0,0,0,0,0,0,0,0,0,'Aspect of Shadow - Cast Shadow Shock');

UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = 14532;
DELETE FROM `creature_ai_scripts` WHERE `creature_id` = 14532;
INSERT INTO `creature_ai_scripts` VALUES (1453201,14532,0,0,100,3,5500,5500,8000,10000,11,12097,1,0,0,0,0,0,0,0,0,0,'Razzashi Venombrood - Cast Pierce Armor');

UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = 14750;
DELETE FROM `creature_ai_scripts` WHERE `creature_id` = 14750;
INSERT INTO `creature_ai_scripts` VALUES (1475001,14750,11,0,100,2,0,0,0,0,11,8876,0,0,0,0,0,0,0,0,0,0,'Gurubashi Bat Rider - Cast Thrash on Spawn');
INSERT INTO `creature_ai_scripts` VALUES (1475002,14750,4,0,100,2,0,0,0,0,11,23511,1,0,0,0,0,0,0,0,0,0,'Gurubashi Bat Rider - Cast Demoralizing Shout on Aggro');
INSERT INTO `creature_ai_scripts` VALUES (1475003,14750,0,0,100,3,8000,8000,25000,25000,11,5115,0,0,0,0,0,0,0,0,0,0,'Gurubashi Bat Rider - Cast Battle Command');
INSERT INTO `creature_ai_scripts` VALUES (1475004,14750,0,0,100,2,6500,6500,0,0,11,16128,1,0,0,0,0,0,0,0,0,0,'Gurubashi Bat Rider - Cast Infected Bite');
INSERT INTO `creature_ai_scripts` VALUES (1475005,14750,2,0,100,2,50,0,0,0,11,24024,0,1,11,23968,0,0,0,0,0,0,'Gurubashi Bat Rider - Cast Unstable Concoction and Throw Liquid Fire at 50% HP');

UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = 14821;
DELETE FROM `creature_ai_scripts` WHERE `creature_id` = 14821;
INSERT INTO `creature_ai_scripts` VALUES (1482101,14821,2,0,100,2,30,0,0,0,11,8599,0,0,1,-106,0,0,0,0,0,0,'Razzashi Raptor - Cast Enrage at 30% HP');
INSERT INTO `creature_ai_scripts` VALUES (1482102,14821,0,0,100,3,5500,5500,8000,10000,11,24339,1,0,0,0,0,0,0,0,0,0,'Razzashi Raptor - Cast Infected Bite');
INSERT INTO `creature_ai_scripts` VALUES (1482103,14821,0,0,100,3,7000,7000,6000,6000,11,3391,0,0,0,0,0,0,0,0,0,0,'Razzashi Raptor- Cast Thrash');

UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = 14825;
DELETE FROM `creature_ai_scripts` WHERE `creature_id` = 14825;
INSERT INTO `creature_ai_scripts` VALUES (1482501,14825,0,0,100,3,2000,5000,20000,30000,11,24673,4,0,0,0,0,0,0,0,0,0,'Withered Mistress - Cast Curse of Blood');
INSERT INTO `creature_ai_scripts` VALUES (1482502,14825,0,0,100,3,5000,12000,5000,15000,11,17201,0,0,0,0,0,0,0,0,0,0,'Withered Mistress - Cast Dispel Magic');
INSERT INTO `creature_ai_scripts` VALUES (1482503,14825,0,0,100,3,5000,12000,9000,17000,11,24674,1,0,0,0,0,0,0,0,0,0,'Withered Mistress - Cast Veil of Shadow');
INSERT INTO `creature_ai_scripts` VALUES (1482504,14825,0,0,100,2,15000,22000,0,0,11,24672,0,0,0,0,0,0,0,0,0,0,'Withered Mistress - Cast Unholy Frenzy');

UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = 14882;
DELETE FROM `creature_ai_scripts` WHERE `creature_id` = 14882;
INSERT INTO `creature_ai_scripts` VALUES (1488201,14882,0,0,100,3,5000,5000,8000,8000,11,15615,1,0,0,0,0,0,0,0,0,0,"Atal'ai Mistress - Cast Pummel");
INSERT INTO `creature_ai_scripts` VALUES (1488202,14882,0,0,100,3,5000,5000,11000,11000,11,24671,1,0,0,0,0,0,0,0,0,0,"Atal'ai Mistress - Cast Snap Kick");
INSERT INTO `creature_ai_scripts` VALUES (1488203,14882,0,0,100,3,3000,5000,5000,7000,11,3391,0,0,0,0,0,0,0,0,0,0,"Atal'ai Mistress - Cast Thrash");

UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = 14989;
DELETE FROM `creature_ai_scripts` WHERE `creature_id` = 14989;
INSERT INTO `creature_ai_scripts` VALUES (1498901,14989,11,0,100,2,0,0,0,0,11,24320,0,0,0,0,0,0,0,0,0,0,'Poisonous Cloud - Cast Poisonous Blood on Spawn');

UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = 15043;
DELETE FROM `creature_ai_scripts` WHERE `creature_id` = 15043;
INSERT INTO `creature_ai_scripts` VALUES (1504301,15043,0,0,100,3,5500,5500,12000,19000,11,13445,1,0,0,0,0,0,0,0,0,0,'Zulian Crocolisk - Cast Rend');
INSERT INTO `creature_ai_scripts` VALUES (1504302,15043,0,0,100,3,5500,5500,15000,20000,11,3604,1,0,0,0,0,0,0,0,0,0,'Zulian Crocolisk - Cast Tendon Rip');

UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = 15068;
DELETE FROM `creature_ai_scripts` WHERE `creature_id` = 15068;
INSERT INTO `creature_ai_scripts` VALUES (1506801,15068,0,0,100,3,5500,5500,12000,19000,11,24187,1,0,0,0,0,0,0,0,0,0,'Zulian Guardian - Cast Claw');

UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = 15101;
DELETE FROM `creature_ai_scripts` WHERE `creature_id` = 15101;
INSERT INTO `creature_ai_scripts` VALUES (1510101,15101,0,0,100,3,3000,5000,5000,7000,11,3391,0,0,0,0,0,0,0,0,0,0,'Zulian Prowler - Cast Thrash');

UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = 15111;
DELETE FROM `creature_ai_scripts` WHERE `creature_id` = 15111;
INSERT INTO `creature_ai_scripts` VALUES (1511101,15111,0,0,100,3,2000,5000,12000,12000,11,24612,1,0,0,0,0,0,0,0,0,0,'Mad Servant - Cast Flamestrike');
INSERT INTO `creature_ai_scripts` VALUES (1511102,15111,0,0,100,2,20000,20000,0,0,11,24621,0,11,0,0,0,0,0,0,0,0,'Mad Servant - Portal of Madness');
INSERT INTO `creature_ai_scripts` VALUES (1511103,15111,0,0,100,2,0,0,0,0,21,0,0,0,0,0,0,0,0,0,0,0,'Mad Servant - Stop Movement on Aggro');
INSERT INTO `creature_ai_scripts` VALUES (1511104,15111,4,0,100,2,0,0,0,0,11,24611,1,0,22,6,0,0,0,0,0,0,'Mad Servant - Cast Fireball and Set Phase1 on Aggro');
INSERT INTO `creature_ai_scripts` VALUES (1511105,15111,0,6,100,3,3400,4700,3400,4700,0,0,0,0,11,24611,1,0,0,0,0,0,'Mad Servant - Cast Fireball (Phase 1)');
INSERT INTO `creature_ai_scripts` VALUES (1511106,15111,3,6,100,2,15,0,0,0,21,1,0,0,22,5,0,0,0,0,0,0,'Mad Servant - Start Movement and Set Phase 2 when Mana is at 15%');
INSERT INTO `creature_ai_scripts` VALUES (1511107,15111,9,6,100,3,25,80,0,0,21,1,0,0,0,0,0,0,0,0,0,0,'Mad Servant - Start Movement Beyond 25 Yards');
INSERT INTO `creature_ai_scripts` VALUES (1511108,15111,3,5,100,3,100,30,100,100,22,6,0,0,0,0,0,0,0,0,0,0,'Mad Servant - Set Phase 1 when Manais above 30% (Phase 2)');
INSERT INTO `creature_ai_scripts` VALUES (1511109,15111,2,0,100,2,15,0,0,0,22,3,0,0,0,0,0,0,0,0,0,0,'Mad Servant - Set Phase 3 at 15% HP');
INSERT INTO `creature_ai_scripts` VALUES (1511110,15111,2,3,100,2,15,0,0,0,21,1,0,0,25,0,0,0,1,-47,0,0,'Mad Servant - Start Movement and Flee at 15% HP (Phase 3)');
INSERT INTO `creature_ai_scripts` VALUES (1511111,15111,7,0,100,2,0,0,0,0,22,0,0,0,0,0,0,0,0,0,0,0,'Mad Servant - On Evade set Phase to 0');
INSERT INTO `creature_ai_scripts` VALUES (1511112,15111,6,0,100,2,0,0,0,0,11,24622,0,7,0,0,0,0,0,0,0,0,'Mad Servant - Cast Summon Mad Voidwalkers on Death');

UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = 15146;
DELETE FROM `creature_ai_scripts` WHERE `creature_id` = 15146;
INSERT INTO `creature_ai_scripts` VALUES (1514601,15146,0,0,100,3,5500,5500,15000,15000,11,24614,1,0,0,0,0,0,0,0,0,0,'Mad Voidwalker - Cast Consuming Shadows');
INSERT INTO `creature_ai_scripts` VALUES (1514602,15146,0,0,100,3,5500,5500,8000,10000,11,24616,1,0,0,0,0,0,0,0,0,0,'Mad Voidwalker - Cast Shadow Shock');

UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = 15203;
DELETE FROM `creature_ai_scripts` WHERE `creature_id` = 15203;
INSERT INTO `creature_ai_scripts` VALUES (1520301,15203,0,0,100,1,5000,5000,10000,20000,11,25049,0,0,0,0,0,0,0,0,0,0,'Prince Skaldrenox - Cast Blast Wave');
INSERT INTO `creature_ai_scripts` VALUES (1520302,15203,0,0,100,1,6000,18000,5800,16400,11,15284,1,0,0,0,0,0,0,0,0,0,'Prince Skaldrenox - Cast Cleave');
INSERT INTO `creature_ai_scripts` VALUES (1520303,15203,0,0,100,1,20000,20000,30000,30000,11,25050,1,0,0,0,0,0,0,0,0,0,'Prince Skaldrenox - Cast Mark of Flames');

UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = 15204;
DELETE FROM `creature_ai_scripts` WHERE `creature_id` = 15204;
INSERT INTO `creature_ai_scripts` VALUES (1520401,15204,1,0,100,1,1000,1000,25000,25000,11,13585,0,1,0,0,0,0,0,0,0,0,'High Marshal Whirlaxis - Cast Lightning Shield');
INSERT INTO `creature_ai_scripts` VALUES (1520402,15204,0,0,100,1,4500,4500,14300,23700,11,25060,1,0,0,0,0,0,0,0,0,0,'High Marshal Whirlaxis - Cast Wilt');

UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = 15215;
DELETE FROM `creature_ai_scripts` WHERE `creature_id` = 15215;
INSERT INTO `creature_ai_scripts` VALUES (1521501,15215,4,0,100,3,0,0,0,0,11,15326,0,0,0,0,0,0,0,0,0,0,'Mistress - Cast Blackout (rank5) on aggro');
INSERT INTO `creature_ai_scripts` VALUES (1521502,15215,0,0,100,3,5000,10000,18000,19000,11,11639,0,0,0,0,0,0,0,0,0,0,'Mistress - Cast Shadow Word: Pain');
INSERT INTO `creature_ai_scripts` VALUES (1521503,15215,0,0,100,3,8000,15000,10000,15000,11,13704,0,0,0,0,0,0,0,0,0,0,'Mistress - Cast Psychic Scream');
INSERT INTO `creature_ai_scripts` VALUES (1521504,15215,0,0,100,3,14000,15000,16000,17000,11,16568,0,0,0,0,0,0,0,0,0,0,'Mistress - Cast Mind Flay');
INSERT INTO `creature_ai_scripts` VALUES (1521505,15215,2,0,100,3,20,0,10000,15000,11,27527,0,0,0,0,0,0,0,0,0,0,'Mistress - Cast Healing Touch on less than 20% hp');

UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = 15261;
DELETE FROM `creature_ai_scripts` WHERE `creature_id` = 15261;
INSERT INTO `creature_ai_scripts` VALUES (1526101,15261,1,0,100,1,0,0,0,0,11,24809,0,0,0,0,0,0,0,0,0,0,'Spirit Shade - Cast Spirit Shade Visual on Spawn');
INSERT INTO `creature_ai_scripts` VALUES (1526102,15261,14,0,100,0,15000,40,0,0,11,24804,6,0,0,0,0,0,0,0,0,0,'Spirit Shade - Cast Dark Offering on Friendlies');

UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = 15305;
DELETE FROM `creature_ai_scripts` WHERE `creature_id` = 15305;
INSERT INTO `creature_ai_scripts` VALUES (1530501,15305,0,0,100,1,3000,5000,5000,7000,11,3391,0,0,0,0,0,0,0,0,0,0,'Lord Skwol - Cast Thrash');

UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = 16044;
DELETE FROM `creature_ai_scripts` WHERE `creature_id` = 16044;
INSERT INTO `creature_ai_scripts` VALUES (1604401,16044,8,0,100,2,27184,-1,0,0,12,16080,1,180000,41,0,0,0,0,0,0,0,'Mor Grayhoof Trigger - Spawn Mor Grayhoof and Despawn Trigger on Summon Mor Grayhoof DND Spellhit');
INSERT INTO `creature_ai_scripts` VALUES (1604402,16044,8,0,100,2,27203,-1,0,0,12,16080,1,180000,41,0,0,0,0,0,0,0,'Mor Grayhoof Trigger - Spawn Mor Grayhoof and Despawn Trigger on Summon Various DND Spellhit');

UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = 16049;
DELETE FROM `creature_ai_scripts` WHERE `creature_id` = 16049;
INSERT INTO `creature_ai_scripts` VALUES (1604901,16049,2,0,100,3,25,0,15300,22900,11,15503,0,0,0,0,0,0,0,0,0,0,'Lefty - Cast Drink Healing Potion When Below 25% HP');
INSERT INTO `creature_ai_scripts` VALUES (1604902,16049,0,0,70,3,5500,5500,11000,12000,11,11428,1,0,0,0,0,0,0,0,0,0,'Lefty - Cast Knockdown');
INSERT INTO `creature_ai_scripts` VALUES (1604903,16049,0,0,70,3,5500,5500,15000,15000,11,27620,1,0,0,0,0,0,0,0,0,0,'Lefty - Cast Snap Kick');

UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = 16050;
DELETE FROM `creature_ai_scripts` WHERE `creature_id` = 16050;
INSERT INTO `creature_ai_scripts` VALUES (1605001,16050,2,0,100,3,25,0,15300,22900,11,15503,0,0,0,0,0,0,0,0,0,0,'Rotfang - Cast Drink Healing Potion When Below 25% HP');
INSERT INTO `creature_ai_scripts` VALUES (1605002,16050,0,0,70,3,5500,5500,14000,19000,11,27611,1,0,0,0,0,0,0,0,0,0,'Rotfang - Cast Eviscerate');
INSERT INTO `creature_ai_scripts` VALUES (1605003,16050,0,0,70,3,5500,5500,18000,18000,11,12540,1,0,0,0,0,0,0,0,0,0,'Rotfang - Cast Gouge');
INSERT INTO `creature_ai_scripts` VALUES (1605004,16050,0,0,70,3,5500,5500,12000,15000,11,27613,1,0,0,0,0,0,0,0,0,0,'Rotfang - Cast Kick');
INSERT INTO `creature_ai_scripts` VALUES (1605005,16050,0,0,70,3,5500,5500,17000,21000,11,27615,1,0,0,0,0,0,0,0,0,0,'Rotfang - Cast Kidney Shot');
INSERT INTO `creature_ai_scripts` VALUES (1605006,16050,0,0,70,3,5500,5500,14000,15000,11,14873,1,0,0,0,0,0,0,0,0,0,'Rotfang - Cast Sinister Strike');

UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = 16051;
DELETE FROM `creature_ai_scripts` WHERE `creature_id` = 16051;
INSERT INTO `creature_ai_scripts` VALUES (1605101,16051,0,0,100,3,3000,5500,12000,15000,11,20827,1,0,0,0,0,0,0,0,0,0,'Snokh Blackspine - Cast Flamestrike');

UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = 16052;
DELETE FROM `creature_ai_scripts` WHERE `creature_id` = 16052;
INSERT INTO `creature_ai_scripts` VALUES (1605201,16052,2,0,100,3,25,0,15300,22900,11,15503,0,0,0,0,0,0,0,0,0,0,'Malgen Longspear - Cast Drink Healing Potion When Below 25% HP');
INSERT INTO `creature_ai_scripts` VALUES (1605202,16052,0,0,80,3,3000,5500,15000,15000,11,27632,1,0,0,0,0,0,0,0,0,0,'Malgen Longspear - Cast Aimed Shot');
INSERT INTO `creature_ai_scripts` VALUES (1605203,16052,0,0,80,3,5500,5500,11000,11000,11,27634,1,0,0,0,0,0,0,0,0,0,'Malgen Longspear - Cast Concussive Shot');
INSERT INTO `creature_ai_scripts` VALUES (1605204,16052,0,0,80,3,3000,5500,15000,15000,11,18651,1,0,0,0,0,0,0,0,0,0,'Malgen Longspear - Cast Multi-Shot');
INSERT INTO `creature_ai_scripts` VALUES (1605205,16052,0,0,80,3,3000,5500,13000,18000,11,27633,1,0,0,0,0,0,0,0,0,0,'Malgen Longspear - Cast Wing Clip');
INSERT INTO `creature_ai_scripts` VALUES (1605206,16052,0,0,100,2,0,0,0,0,21,0,0,0,0,0,0,0,0,0,0,0,'Malgen Longspear - Stop Movement on Aggro');
INSERT INTO `creature_ai_scripts` VALUES (1605207,16052,4,0,100,2,0,0,0,0,11,16100,1,0,22,6,0,0,0,0,0,0,'Malgen Longspear - Cast Shoot and Set Phase 1 on Aggro');
INSERT INTO `creature_ai_scripts` VALUES (1605208,16052,0,6,100,3,2200,4700,2200,4700,11,16100,1,0,0,0,0,0,0,0,0,0,'Malgen Longspear - Cast Shoot (Phase 1)');
INSERT INTO `creature_ai_scripts` VALUES (1605209,16052,9,6,100,3,20,100,0,0,21,1,0,0,0,0,0,0,0,0,0,0,'Malgen Longspear - Start Movement at 20 Yards (Phase 1)');
INSERT INTO `creature_ai_scripts` VALUES (1605210,16052,9,6,100,3,6,10,0,0,21,0,0,0,0,0,0,0,0,0,0,0,'Malgen Longspear - Stop Movement at 10 Yards (Phase 1)');
INSERT INTO `creature_ai_scripts` VALUES (1605211,16052,9,6,100,3,0,5,0,0,21,1,0,0,0,0,0,0,0,0,0,0,'Malgen Longspear - Start Movement at 5 Yards (Phase 1)');
INSERT INTO `creature_ai_scripts` VALUES (1605212,16052,2,0,100,2,15,0,0,0,22,5,0,0,0,0,0,0,0,0,0,0,'Malgen Longspear - Set Phase 2 at 15% HP');
INSERT INTO `creature_ai_scripts` VALUES (1605213,16052,2,5,100,2,15,0,0,0,21,1,0,0,25,0,0,0,1,-47,0,0,'Malgen Longspear - Start Movement and Flee at 15% HP (Phase 2)');

UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = 16053;
DELETE FROM `creature_ai_scripts` WHERE `creature_id` = 16053;
INSERT INTO `creature_ai_scripts` VALUES (1605301,16053,0,0,100,3,5500,5500,15000,16000,11,15786,0,0,0,0,0,0,0,0,0,0,'Korv - Cast Earthbind Totem');
INSERT INTO `creature_ai_scripts` VALUES (1605302,16053,2,0,100,3,25,0,15300,22900,11,15503,0,0,0,0,0,0,0,0,0,0,'Korv - Cast Drink Healing Potion When Below 25% HP');
INSERT INTO `creature_ai_scripts` VALUES (1605303,16053,0,0,70,3,5500,5500,11000,12000,11,21401,1,0,0,0,0,0,0,0,0,0,'Korv - Cast Frost Shock');
INSERT INTO `creature_ai_scripts` VALUES (1605304,16053,14,0,100,2,250,30,0,0,11,27624,6,1,0,0,0,0,0,0,0,0,'Korv - Cast Lesser Healing Wave on Friendlies');
INSERT INTO `creature_ai_scripts` VALUES (1605305,16053,0,0,100,3,5500,5500,15000,15000,11,27621,0,0,0,0,0,0,0,0,0,0,'Korv - Cast Windfury Totem');
INSERT INTO `creature_ai_scripts` VALUES (1605306,16053,0,0,100,3,5500,5500,18000,18000,11,27626,1,0,0,0,0,0,0,0,0,0,'Korv - Cast Purge');

UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = 16054;
DELETE FROM `creature_ai_scripts` WHERE `creature_id` = 16054;
INSERT INTO `creature_ai_scripts` VALUES (1605401,16054,0,0,100,3,1000,5500,18000,18000,11,19784,1,0,0,0,0,0,0,0,0,0,'Rezznik - Cast Dark Iron Bomb');
INSERT INTO `creature_ai_scripts` VALUES (1605402,16054,0,0,100,3,2000,5500,15000,15000,11,8209,0,0,0,0,0,0,0,0,0,0,'Rezznik - Cast Explosive Sheep');
INSERT INTO `creature_ai_scripts` VALUES (1605403,16054,0,0,70,3,5500,5500,14000,19000,11,27603,1,0,0,0,0,0,0,0,0,0,'Rezznik - Cast EGun');
INSERT INTO `creature_ai_scripts` VALUES (1605404,16054,0,0,100,3,2000,5500,17000,20000,11,27677,0,0,0,0,0,0,0,0,0,0,'Rezznik - Cast Recombobulate');

UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = 16055;
DELETE FROM `creature_ai_scripts` WHERE `creature_id` = 16055;
INSERT INTO `creature_ai_scripts` VALUES (1605501,16055,0,0,80,3,5500,5500,14000,15000,11,27609,1,0,0,0,0,0,0,0,0,0,"Va'jashni- Cast Dispel Magic");
INSERT INTO `creature_ai_scripts` VALUES (1605502,16055,0,0,100,3,5500,5500,15000,15000,11,27609,0,1,0,0,0,0,0,0,0,0,"Va'jashni- Cast Dispel Magic");
INSERT INTO `creature_ai_scripts` VALUES (1605503,16055,2,0,100,3,25,0,15300,22900,11,27608,0,0,0,0,0,0,0,0,0,0,"Va'jashni - Cast Healing Touch When Below 25% HP");
INSERT INTO `creature_ai_scripts` VALUES (1605504,16055,0,0,100,3,5500,5500,18000,18000,11,27607,0,1,0,0,0,0,0,0,0,0,"Va'jashni- Vast Power Word: Shield");
INSERT INTO `creature_ai_scripts` VALUES (1605505,16055,2,0,100,3,50,0,15300,22900,11,27606,0,0,0,0,0,0,0,0,0,0,"Va'jashni - Cast Renew at 50% HP");
INSERT INTO `creature_ai_scripts` VALUES (1605506,16055,0,0,80,3,5500,5500,10000,11000,11,27605,4,0,0,0,0,0,0,0,0,0,"Va'jashni - Cast Shadow Word: Pain");

UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = 16058;
DELETE FROM `creature_ai_scripts` WHERE `creature_id` = 16058;
INSERT INTO `creature_ai_scripts` VALUES (1605801,16058,0,0,100,3,5500,5500,13000,15000,11,15063,0,0,0,0,0,0,0,0,0,0,'Volida- Cast Frost Nova');
INSERT INTO `creature_ai_scripts` VALUES (1605802,16058,0,0,100,3,5500,5500,16000,19000,11,27619,0,1,0,0,0,0,0,0,0,0,'Volida- Cast Ice Block');
INSERT INTO `creature_ai_scripts` VALUES (1605803,16058,0,0,100,2,0,0,0,0,21,0,0,0,0,0,0,0,0,0,0,0,'Volida - Stop Movement on Aggro');
INSERT INTO `creature_ai_scripts` VALUES (1605804,16058,4,0,100,2,0,0,0,0,11,20822,1,0,22,6,0,0,0,0,0,0,'Volida - Cast Fireball and Set Phase 1 on Aggro');
INSERT INTO `creature_ai_scripts` VALUES (1605805,16058,0,6,100,3,3400,4700,3400,4700,0,0,0,0,11,20822,1,0,0,0,0,0,'Volida - Cast Fireball (Phase 1)');
INSERT INTO `creature_ai_scripts` VALUES (1605806,16058,3,6,100,2,15,0,0,0,21,1,0,0,22,5,0,0,0,0,0,0,'Volida - Start Movement and Set Phase 2 when Mana is at 15%');
INSERT INTO `creature_ai_scripts` VALUES (1605807,16058,9,6,100,3,25,80,0,0,21,1,0,0,0,0,0,0,0,0,0,0,'Volida - Start Movement Beyond 25 Yards');
INSERT INTO `creature_ai_scripts` VALUES (1605808,16058,3,5,100,3,100,30,100,100,22,6,0,0,0,0,0,0,0,0,0,0,'Volida - Set Phase 1 when Mana is above 30% (Phase 2)');
INSERT INTO `creature_ai_scripts` VALUES (1605809,16058,2,0,100,2,15,0,0,0,22,3,0,0,0,0,0,0,0,0,0,0,'Volida - Set Phase 3 at 15% HP');
INSERT INTO `creature_ai_scripts` VALUES (1605811,16058,2,3,100,2,15,0,0,0,21,1,0,0,25,0,0,0,1,-47,0,0,'Volida - Start Movement and Flee at 15% HP (Phase 3)');
INSERT INTO `creature_ai_scripts` VALUES (1605812,16058,7,0,100,2,0,0,0,0,22,0,0,0,0,0,0,0,0,0,0,0,'Volida - On Evade set Phase to 0');

UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = 16059;
DELETE FROM `creature_ai_scripts` WHERE `creature_id` = 16059;
INSERT INTO `creature_ai_scripts` VALUES (1605901,16059,0,0,70,3,6000,6000,15000,15000,11,27578,0,0,0,0,0,0,0,0,0,0,'Theldren - Cast Battle Shout');
INSERT INTO `creature_ai_scripts` VALUES (1605902,16059,0,0,85,3,6000,6000,16500,16500,11,27579,0,0,0,0,0,0,0,0,0,0,'Theldren - Cast Demoralizing Shout');
INSERT INTO `creature_ai_scripts` VALUES (1605903,16059,0,0,100,3,6000,6000,12000,25000,11,27581,1,0,0,0,0,0,0,0,0,0,'Theldren - Cast Disarm');
INSERT INTO `creature_ai_scripts` VALUES (1605904,16059,0,0,80,3,6000,6000,19000,20000,11,19134,0,0,0,0,0,0,0,0,0,0,'Theldren - Cast Frightening Shout');
INSERT INTO `creature_ai_scripts` VALUES (1605905,16059,0,0,75,3,6000,6000,15000,35000,11,27584,1,0,0,0,0,0,0,0,0,0,'Theldren - Cast Hamstring');
INSERT INTO `creature_ai_scripts` VALUES (1605906,16059,0,0,100,3,6000,6000,13500,21000,11,27580,1,0,0,0,0,0,0,0,0,0,'Theldren - Cast Mortal Strike');
INSERT INTO `creature_ai_scripts` VALUES (1605907,16059,4,0,100,2,0,0,0,0,11,27577,1,0,0,0,0,0,0,0,0,0,'Theldren - Cast Intercept on Aggro');
INSERT INTO `creature_ai_scripts` VALUES (1605908,16059,2,0,100,3,25,0,15300,22900,11,15503,0,0,0,0,0,0,0,0,0,0,'Theldren - Cast Healing Touch When Below 25% HP');
INSERT INTO `creature_ai_scripts` VALUES (1605909,16059,4,0,100,2,0,0,0,0,1,-1140,-1141,-1142,0,0,0,0,0,0,0,0,'Theldren - Random Say on Aggro');

UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = 16080;
DELETE FROM `creature_ai_scripts` WHERE `creature_id` = 16080;
INSERT INTO `creature_ai_scripts` VALUES (1608001,16080,2,0,100,3,15,0,15300,22900,11,27543,0,0,0,0,0,0,0,0,0,0,'Mor Grayhoof - Cast Bear Form When Below 15% HP');
INSERT INTO `creature_ai_scripts` VALUES (1608002,16080,2,0,100,3,80,0,15300,22900,11,27545,0,0,0,0,0,0,0,0,0,0,'Mor Grayhoof - Cast Cat Form When Below 80% HP');
INSERT INTO `creature_ai_scripts` VALUES (1608003,16080,0,0,100,3,2000,5000,10000,11000,11,27567,1,0,0,0,0,0,0,0,0,0,'Mor Grayhoof - Cast Chain Lightning');
INSERT INTO `creature_ai_scripts` VALUES (1608004,16080,0,0,100,3,2000,5000,7000,8000,11,27551,0,0,0,0,0,0,0,0,0,0,'Mor Grayhoof - Cast Demoralizing Roar');
INSERT INTO `creature_ai_scripts` VALUES (1608005,16080,2,0,100,3,55,0,15300,22900,11,27546,0,0,0,0,0,0,0,0,0,0,'Mor Grayhoof - Cast Faerie Dragon Form When Below 55% HP');
INSERT INTO `creature_ai_scripts` VALUES (1608006,16080,2,0,100,3,30,0,15300,22900,11,27527,0,0,0,0,0,0,0,0,0,0,'Mor Grayhoof - Cast Healing Touch When Below 30% HP');
INSERT INTO `creature_ai_scripts` VALUES (1608007,16080,2,0,100,3,10,0,15300,22900,11,27532,0,0,0,0,0,0,0,0,0,0,'Mor Grayhoof - Cast Rejuvenation 10% HP');
INSERT INTO `creature_ai_scripts` VALUES (1608008,16080,0,0,100,3,2000,5000,14000,14000,11,27737,1,0,0,0,0,0,0,0,0,0,'Mor Grayhoof - Cast Moonfire');
INSERT INTO `creature_ai_scripts` VALUES (1608009,16080,0,0,100,3,2000,5000,12000,12000,11,15605,1,0,0,0,0,0,0,0,0,0,'Mor Grayhoof - Cast Shock');

UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = 4334;
DELETE FROM `creature_ai_scripts` WHERE `creature_id` = 4334;
INSERT INTO `creature_ai_scripts` VALUES (433401,4334,1,0,100,0,0,0,0,0,21,0,0,0,0,0,0,0,0,0,0,0,'Firemane Flamecaller - Prevent Combat Movement on Spawn');
INSERT INTO `creature_ai_scripts` VALUES (433402,4334,1,0,100,1,1000,1000,600000,600000,11,18968,0,1,0,0,0,0,0,0,0,0,'Firemane Flamecaller - Cast Fire Shield on Spawn');
INSERT INTO `creature_ai_scripts` VALUES (433403,4334,4,0,100,0,0,0,0,0,11,9053,1,0,23,1,0,0,0,0,0,0,'Firemane Flamecaller - Cast Fireball and Set Phase 1 on Aggro');
INSERT INTO `creature_ai_scripts` VALUES (433404,4334,9,13,100,1,0,40,2400,3800,11,9053,1,0,0,0,0,0,0,0,0,0,'Firemane Flamecaller - Cast Fireball (Phase 1)');
INSERT INTO `creature_ai_scripts` VALUES (433405,4334,3,13,100,0,15,0,0,0,21,1,0,0,23,1,0,0,0,0,0,0,'Firemane Flamecaller - Start Combat Movement and Set Phase 2 when Mana is at 15% (Phase 1)');
INSERT INTO `creature_ai_scripts` VALUES (433406,4334,9,13,100,1,35,80,0,0,21,1,0,0,0,0,0,0,0,0,0,0,'Firemane Flamecaller - Start Combat Movement at 35 Yards (Phase 1)');
INSERT INTO `creature_ai_scripts` VALUES (433407,4334,9,13,100,1,5,15,0,0,21,0,0,0,0,0,0,0,0,0,0,0,'Firemane Flamecaller - Prevent Combat Movement at 15 Yards (Phase 1)');
INSERT INTO `creature_ai_scripts` VALUES (433408,4334,9,13,100,1,0,5,0,0,21,1,0,0,0,0,0,0,0,0,0,0,'Firemane Flamecaller - Start Combat Movement Below 5 Yards');
INSERT INTO `creature_ai_scripts` VALUES (433409,4334,3,11,100,1,100,30,100,100,23,-1,0,0,0,0,0,0,0,0,0,0,'Firemane Flamecaller - Set Phase 1 when Mana is above 30% (Phase 2)');
INSERT INTO `creature_ai_scripts` VALUES (433410,4334,27,0,100,1,18968,1,15000,30000,11,18968,0,1,0,0,0,0,0,0,0,0,'Firemane Flamecaller - Cast Fire Shield on Missing Buff');
INSERT INTO `creature_ai_scripts` VALUES (433411,4334,0,0,100,1,9000,16000,21000,30000,11,11990,4,1,0,0,0,0,0,0,0,0,'Firemane Flamecaller - Cast Rain of Fire');
INSERT INTO `creature_ai_scripts` VALUES (433412,4334,7,0,100,0,0,0,0,0,22,0,0,0,0,0,0,0,0,0,0,0,'Firemane Flamecaller - Set Phase to 0 on Evade');

DELETE FROM `creature_ai_scripts` WHERE `creature_id` = 3695;
INSERT INTO `creature_ai_scripts` VALUES (369501,3695,22,0,100,1,101,0,0,0,1,-347,0,0,1,-348,0,0,0,0,0,0,'Grimclaw - Text Emote on Recive Wave Emote');

-- Fixed quest 1846: item 7131 now is a 100% drop for characters on the quest.
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -100 WHERE `item` = 7131;

-- Fixed creature 299: Young Wolf will ignore aggro now.
UPDATE `creature_template` SET `flags_extra` = 2 WHERE `entry` = 299;

-- Fixed quest 111: removed RequestItemsText.
UPDATE `quest_template` SET `RequestItemsText` = '' WHERE `entry` = 111;

-- Fixed quest 3065: restricted quest faction to Troll.
UPDATE `quest_template` SET `RequiredRaces` = 128 WHERE `entry` = 3065;

-- Fixed quest 5624: added punctuation to quest texts.
UPDATE `quest_template` SET `OfferRewardText` = 'Excellent, $N. With one more healthy guard out there to help the town, we\'ll be that much safer. I\'m glad to see you\'re already learning to use your abilities wisely. If you feel you are ready for more training at any time, please come back to me. But for now, take this robe. It will let others know that you are one of our order. If you don\'t want to wear it, that\'s fine. Later there will be more tests and this robe isn\'t necessary for those.' WHERE `entry` = 5624;

-- Fixed quest 5625: added punctuation to quest texts.
UPDATE `quest_template` SET `OfferRewardText` = 'Excellent, $N. With one more healthy guard out there to help the town, we\'ll be that much safer. I\'m glad to see you\'re already learning to use your abilities wisely. If you feel you are ready for more training at any time, please come back to me. But for now, take this robe. It will let others know that you are one of our order. If you don\'t want to wear it, that\'s fine. Later there will be more tests and this robe isn\'t necessary for those.' WHERE `entry` = 5625;

-- Fixed quest 6072: added OfferRewardText.
UPDATE `quest_template` SET `OfferRewardText` = 'Yes, it is time, $c.' WHERE `entry` = 6072;

-- Fixed quest 6126: removed PrevQuestId, thus the quest is now attainable.
UPDATE `quest_template` SET `PrevQuestId` = 0 WHERE `entry` = 6126;

-- Added on kill reputation for a few Ahn'Qiraj creatures. 
DELETE FROM `creature_onkill_reputation` WHERE `creature_id` = 15318;
DELETE FROM `creature_onkill_reputation` WHERE `creature_id` = 15319;
DELETE FROM `creature_onkill_reputation` WHERE `creature_id` = 15325;
DELETE FROM `creature_onkill_reputation` WHERE `creature_id` = 15327;
DELETE FROM `creature_onkill_reputation` WHERE `creature_id` = 15335;
DELETE FROM `creature_onkill_reputation` WHERE `creature_id` = 15336;
DELETE FROM `creature_onkill_reputation` WHERE `creature_id` = 15355;
DELETE FROM `creature_onkill_reputation` WHERE `creature_id` = 15505;
DELETE FROM `creature_onkill_reputation` WHERE `creature_id` = 15514;
DELETE FROM `creature_onkill_reputation` WHERE `creature_id` = 15538;
DELETE FROM `creature_onkill_reputation` WHERE `creature_id` = 15555;
DELETE FROM `creature_onkill_reputation` WHERE `creature_id` = 15934;
DELETE FROM `creature_onkill_reputation` WHERE `creature_id` = 15741;
INSERT INTO `creature_onkill_reputation` VALUES (15318,609,0,7,0,5,0,0,0,0);
INSERT INTO `creature_onkill_reputation` VALUES (15319,609,0,7,0,5,0,0,0,0);
INSERT INTO `creature_onkill_reputation` VALUES (15325,609,0,7,0,5,0,0,0,0);
INSERT INTO `creature_onkill_reputation` VALUES (15327,609,0,7,0,5,0,0,0,0);
INSERT INTO `creature_onkill_reputation` VALUES (15335,609,0,7,0,5,0,0,0,0);
INSERT INTO `creature_onkill_reputation` VALUES (15336,609,0,7,0,5,0,0,0,0);
INSERT INTO `creature_onkill_reputation` VALUES (15355,609,0,7,0,5,0,0,0,0);
INSERT INTO `creature_onkill_reputation` VALUES (15505,609,0,7,0,5,0,0,0,0);
INSERT INTO `creature_onkill_reputation` VALUES (15514,609,0,7,0,5,0,0,0,0);
INSERT INTO `creature_onkill_reputation` VALUES (15538,609,0,7,0,5,0,0,0,0);
INSERT INTO `creature_onkill_reputation` VALUES (15555,609,0,7,0,5,0,0,0,0);
INSERT INTO `creature_onkill_reputation` VALUES (15934,609,0,7,0,5,0,0,0,0);
INSERT INTO `creature_onkill_reputation` VALUES (15741,910,609,3,0,2000,7,0,25,0);

-- Fixed Required Races for quest 6283 Bloodfury Bloodline
UPDATE `quest_template` SET `RequiredRaces` = 178 WHERE `entry` = 6283;

-- Fixed Required Races for quest 2936 The Spider God
UPDATE `quest_template` SET `RequiredRaces` = 178 WHERE `entry` = 2936;

-- Fixed Required Races for quest 8913 An earnest proposition
UPDATE `quest_template` SET `RequiredRaces` = 178 WHERE `entry` = 8913;

-- Fixed Required Races for quest 8927 Just Compensation
UPDATE `quest_template` SET `RequiredRaces` = 178 WHERE `entry` = 8927;

-- Tendriss Warpwood spawns Equine Spirit on Death, from old DB
DELETE FROM `creature_ai_scripts` WHERE id = 1148906;
INSERT INTO `creature_ai_scripts` VALUES (1148906,11489,6,0,100,0,0,0,0,0,32,14566,0,16,0,0,0,0,0,0,0,0,'Tendris Warpwood - Summon Ancient Equine Spirit on Death');
DELETE FROM `creature_ai_summons` WHERE id = 16;
INSERT INTO `creature_ai_summons` VALUES (16,33.7585,491.548,-23.2803,3.15989,120000,14566);

-- Fixing areatrigger teleport for Quest 7848 Attunement to the core, to 1.12 version of the quest
UPDATE `areatrigger_teleport` SET `required_quest_done` = 7848 WHERE `id` = 3528;
UPDATE `areatrigger_teleport` SET `required_quest_done` = 7848 WHERE `id` = 3529;

-- DB Support for Quest 2987 Gordunni Cobalt
UPDATE `gameobject_template` SET `type` = 5 WHERE `entry` = 144050;
UPDATE `gameobject_template` SET `data4` = 0 WHERE `entry` = 144050;
UPDATE `gameobject_template` SET `data5` = 0 WHERE `entry` = 144050;

-- UPDATE Database Version
UPDATE `db_version` SET `version` = 'ZeroDatabase 2.0.10 for MaNGOSZero zXXXX+ and ScriptDevZero zXXXX+';
