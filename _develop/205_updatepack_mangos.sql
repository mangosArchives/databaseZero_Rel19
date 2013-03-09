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

-- Remove the mana from Orgrimmar Grunts. Thanks Ghurok
UPDATE `creature` SET `curmana` = 0 WHERE `id` = 3296;
UPDATE `creature_template` SET `minmana` = 0, `maxmana` = 0 WHERE `entry` = 3296;

-- Add gossip_menu for npc (10307)
UPDATE `creature_template` SET `gossip_menu_id` = 2703 WHERE `entry` = 10307;

DELETE FROM `gossip_menu_option` WHERE `menu_id` = 2703;
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `box_coded`, `box_money`, `box_text`, `condition_id`) VALUES
('2703','0','0','How do I use the Cache of Mau\'ari?','1','1','-1','0','2703','0','0','','229'),
('2703','1','0','What is E\'ko?','1','1','0','0','0','0','0','','0');

DELETE FROM `gossip_menu` WHERE `entry` = 2703;
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES
('2703','3375','0','0'),
('2703','3377','0','114');

DELETE FROM `conditions` WHERE `condition_entry` IN (114, 229);
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`) VALUES
('114','8','975','0'),
('229','24','12384','1');

DELETE FROM `dbscripts_on_gossip` WHERE `id` = 2703;
INSERT INTO `dbscripts_on_gossip` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
('2703','0','15','16351','0','0','0','0','0','0','0','0','0','0','0','0','Create Cache of Mau\'ari');

-- Add gossip_menu for npc (8436)
UPDATE `creature_template` SET `gossip_menu_id` = 1285 WHERE `entry` = 8436;

DELETE FROM `gossip_menu_option` WHERE `menu_id` IN (1285, 1287, 1286);
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `box_coded`, `box_money`, `box_text`, `condition_id`) VALUES
('1285','0','0','I wish to hear your tale.','1','1','1287','0','0','0','0','','222'),
('1286','0','0','Let me think about it, Zamael.','1','1','-1','0','1286','0','0','','0'),
('1287','0','0','Please continue, Zamael.','1','1','1286','0','0','0','0','','0');

DELETE FROM `gossip_menu` WHERE `entry` IN (1285, 1287, 1286);
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES
('1285','1920','0','0'),
('1286','1922','0','0'),
('1287','1921','0','0');

DELETE FROM `conditions` WHERE `condition_entry` = 222;
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`) VALUES
('222','9','3377','1');

DELETE FROM `dbscripts_on_gossip` WHERE `id` = 1286;
INSERT INTO `dbscripts_on_gossip` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
('1286','0','7','3377','5','0','0','0','0','0','0','0','0','0','0','0','Zamael Lunthistle - Questcredit (3377)');

-- Add gossip_menu for npc (12384)
UPDATE `creature_template` SET `gossip_menu_id` = 4085, `npcflag` = `npcflag` | 131 WHERE `entry` = 12384;

DELETE FROM `gossip_menu_option` WHERE `menu_id` = 4085;
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `box_coded`, `box_money`, `box_text`, `condition_id`) VALUES
('4085','0','1','Yes, Augustus.  I would like to do business.','3','128','0','0','0','0','0','','141');

DELETE FROM `gossip_menu` WHERE `entry` = 4085;
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES
('4085','4979','0','0'),
('4085','4980','0','141');

DELETE FROM `conditions` WHERE `condition_entry` = 141;
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`) VALUES
('141','8','6164','0');

-- Add gossip_menu for npc (8696)
UPDATE `creature_template` SET `gossip_menu_id` = 1443 WHERE `entry` = 8696;

DELETE FROM `gossip_menu_option` WHERE `menu_id` = 1443;
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `box_coded`, `box_money`, `box_text`, `condition_id`) VALUES
('1443','0','0','You can cook?  So can I!  Is there a recipe you can teach me?','1','1','1501','0','144300','0','0','','539'),
('1443','1','0','You\'re an alchemist?  So am I.  Perhaps you can teach me what you know...','1','1','1442','0','144301','0','0','','597');

DELETE FROM `gossip_menu` WHERE `entry` IN (1443, 1501, 1442);
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES
('1442','2115','0','0'),
('1443','2113','0','0'),
('1501','2173','0','0');

DELETE FROM `conditions` WHERE `condition_entry` IN (539, 597, 227, 226, 419, 418);
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`) VALUES
('226','17','13028','1'),
('227','7','185','175'),
('418','17','3451','1'),
('419','7','171','180'),
('539','-1','227','226'),
('597','-1','419','418');

DELETE FROM `dbscripts_on_gossip` WHERE `id` IN (144300, 144301);
INSERT INTO `dbscripts_on_gossip` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
('144301','1','15','13030','0','0','0','0','0','0','0','0','0','0','0','0','learn Major Troll\'s Blood Elixir'),
('144301','0','0','0','0','0','0','0','2000000237','0','0','0','0','0','0','0','say 2'),
('144300','1','15','13029','0','0','0','0','0','0','0','0','0','0','0','0','learn Goldthorn Tea'),
('144300','0','0','0','0','0','0','0','2000000237','0','0','0','0','0','0','0','say 1');

DELETE FROM `db_script_string` WHERE `entry` = 2000000237;
INSERT INTO `db_script_string` (`entry`, `content_default`, `content_loc1`, `content_loc2`, `content_loc3`, `content_loc4`, `content_loc5`, `content_loc6`, `content_loc7`, `content_loc8`) VALUES
('2000000237','Thank again, $n.  Now I\'ll just wait here until it\'s safe to leave.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);

-- Add gossip_menu for npc (4968)
UPDATE `creature_template` SET `gossip_menu_id` = 2465 WHERE `entry` = 4968;

DELETE FROM `gossip_menu_option` WHERE `menu_id` = 2465;
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `box_coded`, `box_money`, `box_text`, `condition_id`) VALUES
('2465','0','0','Lady Jaina, this may sound like an odd request... but I have a young ward who is quite shy. You are a hero to him, and he asked me to get your autograph.','1','1','5850','0','2465','0','0','','562');

DELETE FROM `gossip_menu` WHERE `entry` IN (2465, 5850);
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES
('2465','3158','0','0'),
('5850','7012','0','0');

DELETE FROM `conditions` WHERE `condition_entry` IN (562, 323, 322);
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`) VALUES
('322','16','18642','1'),
('323','9','558','0'),
('562','-1','323','322');

DELETE FROM `dbscripts_on_gossip` WHERE `id` = 2465;
INSERT INTO `dbscripts_on_gossip` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
('2465','0','15','23122','0','0','0','0','0','0','0','0','0','0','0','0','Create Jaina\'s Autograph');

-- Add gossip_menu for npc (11056)
UPDATE `creature_template` SET `gossip_menu_id` = 3228, `npcflag` = `npcflag` | 131 WHERE `entry` = 11056;

DELETE FROM `gossip_menu_option` WHERE `menu_id` = 3228;
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `box_coded`, `box_money`, `box_text`, `condition_id`) VALUES
('3228','0','0','I need a vitreous focuser.','1','1','-1','0','3223','0','0',NULL,'621'),
('3228','1','1','I wish to purchase arcane quickener from you.','3','128','0','0','0','0','0',NULL,'76'),
('3228','2','1','What does the Felstone Field Cauldron need?','1','1','3224','0','0','0','0',NULL,'76'),
('3228','3','1','What does the Dalson\'s Tears Cauldron need?','1','1','3225','0','0','0','0',NULL,'76'),
('3228','4','1','What does the Writhing Haunt Cauldron need?','1','1','3226','0','0','0','0',NULL,'76'),
('3228','5','1','What does the Gahrron\'s Withering Cauldron need?','1','1','3227','0','0','0','0',NULL,'76');

DELETE FROM `gossip_menu` WHERE `entry` IN (3228, 3224, 3225, 3226, 3227);
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES
('3224','3980','0','0'),
('3225','3981','0','0'),
('3226','3982','0','0'),
('3227','3983','0','0'),
('3228','3984','0','0'),
('3228','3985','0','76');

DELETE FROM `conditions` WHERE `condition_entry` IN (76, 621, 495);
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`) VALUES
('76','8','5238','0'),
('495','24','13370','1'),
('621','-1','76','495');

DELETE FROM `dbscripts_on_gossip` WHERE `id` = 3223;
INSERT INTO `dbscripts_on_gossip` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
('3223','0','15','17529','0','0','0','0','0','0','0','0','0','0','0','0','cast Vitreous Focuser');

-- Add gossip_menu for npc (8879)
UPDATE `creature_template` SET `gossip_menu_id` = 1561 WHERE `entry` = 8879;

DELETE FROM `gossip_menu_option` WHERE `menu_id` IN (1561, 1565, 1564, 1562, 1563);
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `box_coded`, `box_money`, `box_text`, `condition_id`) VALUES
('1561','0','0','I am ready, Historian Archesonus.','1','1','1565','0','0','0','0','','122'),
('1562','0','0','Unbelievable! How dare they??','1','1','1563','0','0','0','0','','0'),
('1563','0','0','Of course I will help!','1','1','-1','0','1563','0','0','','0'),
('1564','0','0','Interesting, continue please.','1','1','1562','0','0','0','0','','0'),
('1565','0','0','That is tragic. How did this happen?','1','1','1564','0','0','0','0','','0');

DELETE FROM `gossip_menu` WHERE `entry` IN (1561, 1565, 1564, 1562, 1563);
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES
('1561','2234','0','0'),
('1561','2235','0','122'),
('1562','2238','0','0'),
('1563','2239','0','0'),
('1564','2237','0','0'),
('1565','2236','0','0');

DELETE FROM `conditions` WHERE `condition_entry` = 122;
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`) VALUES
('122','9','3702','0');

DELETE FROM `dbscripts_on_gossip` WHERE `id` = 1563;
INSERT INTO `dbscripts_on_gossip` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
('1563','0','7','3702','0','0','0','0','0','0','0','0','0','0','0','0','give questcredit - The Smoldering Ruins of Thaurissan');

-- Add gossip_menu for npc (7775)
UPDATE `creature_template` SET `gossip_menu_id` = 1802, `npcflag` = `npcflag` | 131 WHERE `entry` = 7775;

DELETE FROM `gossip_menu_option` WHERE `menu_id` = 1802;
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `box_coded`, `box_money`, `box_text`, `condition_id`) VALUES
('1802','0','1','Buy somethin\', will ya?','3','128','0','0','0','0','0',NULL,'157');

DELETE FROM `gossip_menu` WHERE `entry` = 1802;
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES
('1802','2433','0','0'),
('1802','2434','0','157');

DELETE FROM `conditions` WHERE `condition_entry` = 157;
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`) VALUES
('157','9','3909','0');

-- Add gossip_menu for npc (3052)
UPDATE `creature_template` SET `gossip_menu_id` = 24 WHERE `entry` = 3052;

DELETE FROM `gossip_menu_option` WHERE `menu_id` = 24;
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `box_coded`, `box_money`, `box_text`, `condition_id`) VALUES
('24','0','0','Tell me a story, Skorn.','1','1','23','0','0','0','0','','188');

DELETE FROM `gossip_menu` WHERE `entry` IN (23, 24);
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES
('23','523','0','0'),
('24','522','0','0');

DELETE FROM `conditions` WHERE `condition_entry` = 188;
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`) VALUES
('188','22','770','0');

-- Add gossip_menu for npc (3057)
UPDATE `creature_template` SET `gossip_menu_id` = 5851 WHERE `entry` = 3057;

DELETE FROM `gossip_menu_option` WHERE `menu_id` = 5851;
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `box_coded`, `box_money`, `box_text`, `condition_id`) VALUES
('5851','0','0','I know this is rather silly but a young ward who is a bit shy would like your hoofprint.','1','1','20021','0','5851','0','0',NULL,'623');

DELETE FROM `gossip_menu` WHERE `entry` IN (5851, 20021);
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES
('5851','7013','0','0'),
('20021','7014','0','0');

DELETE FROM `conditions` WHERE `condition_entry` IN (623, 500, 501);
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`) VALUES
('500','24','18643','1'),
('501','9','925','0'),
('623','-1','501','500');

DELETE FROM `dbscripts_on_gossip` WHERE `id` = 5851;
INSERT INTO `dbscripts_on_gossip` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
('5851','0','15','23123','0','0','0','0','0','0','0','0','0','0','0','0','get - Cairne\'s Hoofprint');

-- Add gossip_menu for npc (12944)
UPDATE `creature_template` SET `gossip_menu_id` = 4781, `npcflag` = `npcflag` | 131 WHERE `entry` = 12944;

DELETE FROM `gossip_menu_option` WHERE `menu_id` = 4781;
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `box_coded`, `box_money`, `box_text`, `condition_id`) VALUES
('4781','0','1','Show me what I have access to, Lokhtos.','3','128','0','0','0','0','0','','81'),
('4781','1','0','Hmm, I listen. Also that you offer?','1','1','-1','0','4781','0','0',NULL,'683');

DELETE FROM `gossip_menu` WHERE `entry` = 4781;
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES
('4781','3673','0','0'),
('4781','5834','0','81');

DELETE FROM `conditions` WHERE `condition_entry` IN (81, 683, 680, 682, 681, 678, 679);
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`) VALUES
('81','5','59','4'),
('678','2','17203','1'),
('679','24','18628','1'),
('680','-1','678','679'),
('681','8','7604','0'),
('682','-3','681','0'),
('683','-1','680','682');

DELETE FROM `dbscripts_on_gossip` WHERE `id` = 4781;
INSERT INTO `dbscripts_on_gossip` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
('4781','0','15','23059','0','0','0','0','0','0','0','0','0','0','0','0','cast Create Thorium Brotherhood Contract');

-- Add gossip_menu for npc (11064)
UPDATE `creature_template` SET `gossip_menu_id` = 3141 WHERE `entry` = 11064;

DELETE FROM `gossip_menu` WHERE `entry` = 3141;
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES
('3141','3873','3141','0');

DELETE FROM `dbscripts_on_gossip` WHERE `id` = 3141;
INSERT INTO `dbscripts_on_gossip` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
('3141','0','8','11064','1','0','0','0','0','0','0','0','0','0','0','0',''),
('3141','2','29','1','2','11064','5','0','0','0','0','0','0','0','0','0','');

-- Cleanup
UPDATE `gameobject` SET `state` = 0 WHERE `id` IN (SELECT `entry` FROM `gameobject_template` WHERE `type` = 0 AND `data0` = 1);
UPDATE `creature_template` SET `unit_flags` = `unit_flags` &~ 2048 WHERE `unit_flags` & 2048 = 2048;
UPDATE `creature_template` SET `unit_flags` = `unit_flags` &~ 524288 WHERE `unit_flags` & 524288 = 524288;
UPDATE `creature_template` SET `unit_flags` = `unit_flags` &~ 67108864 WHERE `unit_flags` & 67108864 = 67108864;
UPDATE `creature_template` SET `unit_flags` = `unit_flags` &~ 8388608 WHERE `unit_flags` & 8388608 = 8388608;
UPDATE `creature`, `creature_template` SET `creature`.`curhealth` = `creature_template`.`minhealth`, `creature`.`curmana` = `creature_template`.`minmana` WHERE `creature`.`id` = `creature_template`.`entry` AND `creature_template`.`RegenHealth` = '1';
UPDATE `creature_template` SET `dynamicflags` = `dynamicflags` &~ 223;
UPDATE `creature_template` SET `npcflag` = `npcflag` &~ 16777216; -- UNIT_NPC_FLAG_SPELLCLICK
UPDATE `creature_template` SET `modelid_2` = 0 WHERE `modelid_1` = `modelid_2`;
-- UPDATE `creature_template` `c1`, `creature_template` `c2` SET `c2`.`unit_class` = `c1`.`unit_class`, `c2`.`npcflag` = `c1`.`npcflag`, `c2`.`faction_A` = `c1`.`faction_A`, `c2`.`faction_H` = `c1`.`faction_H`, `c2`.`speed_walk` = `c1`.`speed_walk`, `c2`.`speed_run` = `c1`.`speed_run`, `c2`.`scale` = `c1`.`scale`, `c2`.`InhabitType` = `c1`.`InhabitType`, `c2`.`MovementType` = `c1`.`MovementType`, `c2`.`unit_flags` = `c1`.`unit_flags` WHERE `c2`.`entry` = `c1`.`difficulty_entry_1`;
-- UPDATE `creature_template` `c1`, `creature_template` `c2` SET `c2`.`unit_class` = `c1`.`unit_class`, `c2`.`npcflag` = `c1`.`npcflag`, `c2`.`faction_A` = `c1`.`faction_A`, `c2`.`faction_H` = `c1`.`faction_H`, `c2`.`speed_walk` = `c1`.`speed_walk`, `c2`.`speed_run` = `c1`.`speed_run`, `c2`.`scale` = `c1`.`scale`, `c2`.`InhabitType` = `c1`.`InhabitType`, `c2`.`MovementType` = `c1`.`MovementType`, `c2`.`unit_flags` = `c1`.`unit_flags` WHERE `c2`.`entry` = `c1`.`difficulty_entry_2`;
-- UPDATE `creature_template` `c1`, `creature_template` `c2` SET `c2`.`unit_class` = `c1`.`unit_class`, `c2`.`npcflag` = `c1`.`npcflag`, `c2`.`faction_A` = `c1`.`faction_A`, `c2`.`faction_H` = `c1`.`faction_H`, `c2`.`speed_walk` = `c1`.`speed_walk`, `c2`.`speed_run` = `c1`.`speed_run`, `c2`.`scale` = `c1`.`scale`, `c2`.`InhabitType` = `c1`.`InhabitType`, `c2`.`MovementType` = `c1`.`MovementType`, `c2`.`unit_flags` = `c1`.`unit_flags` WHERE `c2`.`entry` = `c1`.`difficulty_entry_3`;
-- UPDATE `gameobject_template` SET `flags` = `flags` &~ 4 WHERE `type` IN (2, 19, 17);
UPDATE `creature` SET `MovementType` = 0 WHERE `spawndist` = 0 AND `MovementType` = 1;
UPDATE `creature` SET `spawndist` = 0 WHERE `MovementType` = 0;
UPDATE `quest_template` SET `SpecialFlags` = `SpecialFlags` | 1 WHERE `QuestFlags` = `QuestFlags` | 4096;
UPDATE `quest_template` SET `SpecialFlags` = `SpecialFlags` | 1 WHERE `QuestFlags` = `QuestFlags` | 32768;
DELETE FROM `go`,`gt` USING `gameobject` `go` LEFT JOIN `gameobject_template` `gt` ON `go`.`id` = `gt`.`entry` WHERE `gt`.`entry` IS NULL;
DELETE FROM `gi`,`gt` USING `gameobject_involvedrelation` `gi` LEFT JOIN `gameobject_template` `gt` ON `gi`.`id` = `gt`.`entry` WHERE `gt`.`entry` IS NULL;
DELETE FROM `gqr`,`gt` USING `gameobject_questrelation` `gqr` LEFT JOIN `gameobject_template` `gt` ON `gqr`.`id` = `gt`.`entry` WHERE `gt`.`entry` IS NULL;
DELETE FROM `ge`,`go` USING `game_event_gameobject` `ge` LEFT JOIN `gameobject` `go` ON `ge`.`guid` = `go`.`guid` WHERE `go`.`guid` IS NULL;
DELETE FROM `dbscripts_on_go_use` WHERE `id` NOT IN (SELECT `guid` FROM `gameobject`);
DELETE FROM `dbscripts_on_go_use` WHERE `command` IN (11, 12) AND `datalong` != 0 AND `datalong` NOT IN (SELECT `guid` FROM `gameobject`);
DELETE FROM `gameobject_battleground` WHERE `guid` NOT IN (SELECT `guid` FROM `gameobject`);
DELETE FROM `creature_battleground` WHERE `guid` NOT IN (SELECT `guid` FROM `creature`);
DELETE FROM `creature_addon` WHERE `guid` NOT IN (SELECT `guid` FROM `creature`);
UPDATE `creature_addon` SET `moveflags` = `moveflags` &~ 0x00000100; -- SPLINEFLAG_DONE
UPDATE `creature_addon` SET `moveflags` = `moveflags` &~ 0x00000200; -- SPLINEFLAG_FALLING
UPDATE `creature_addon` SET `moveflags` = `moveflags` &~ 0x00000800; -- SPLINEFLAG_TRAJECTORY (can crash client)
UPDATE `creature_addon` SET `moveflags` = `moveflags` &~ 0x00200000; -- SPLINEFLAG_UNKNOWN3 (can crash client)
UPDATE `creature_addon` SET `moveflags` = `moveflags` &~ 0x08000000;
UPDATE `creature_template_addon` SET `moveflags` = `moveflags` &~ 0x00000100;
UPDATE `creature_template_addon` SET `moveflags` = `moveflags` &~ 0x00000200;
UPDATE `creature_template_addon` SET `moveflags` = `moveflags` &~ 0x00000800;
UPDATE `creature_template_addon` SET `moveflags` = `moveflags` &~ 0x00200000;
UPDATE `creature_template_addon` SET `moveflags` = `moveflags` &~ 0x08000000;
DELETE FROM `npc_gossip` WHERE `npc_guid` NOT IN (SELECT `guid` FROM `creature`);
DELETE FROM `creature_movement` WHERE `id` NOT IN (SELECT `guid` FROM `creature`);
DELETE FROM `game_event_creature` WHERE `guid` NOT IN (SELECT `guid` FROM `creature`);
DELETE FROM `creature_questrelation` WHERE `id` NOT IN (SELECT `entry` FROM `creature_template`);
DELETE FROM `creature_onkill_reputation` WHERE `creature_id` NOT IN (SELECT `entry` FROM `creature_template`);
UPDATE `creature_template` SET `npcflag` = `npcflag` | 2 WHERE `entry` IN (SELECT `id` FROM `creature_questrelation` UNION SELECT `id` FROM `creature_involvedrelation`);

-- UPDATE Database Version
UPDATE `db_version` SET `version` = 'ZeroDatabase 2.0.5 for MaNGOSZero zXXXX+ and ScriptDevZero zXXXX+';
