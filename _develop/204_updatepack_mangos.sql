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

-- Fix npc gossip (15609) this fix quest 8738 close #36
UPDATE `creature_template` SET `gossip_menu_id` = 6692 WHERE `entry`= 15609;

DELETE FROM `gossip_menu_option` WHERE `menu_id` = 6692;
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `box_coded`, `box_money`, `box_text`, `condition_id`) VALUES
('6692','0','0','May I have your report?','1','1','-1','0','6692','0','0',NULL,'1777');

DELETE FROM `gossip_menu` WHERE `entry` = 6692;
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES
('6692','8065','0','0');

DELETE FROM `conditions` WHERE `condition_entry` IN (1771, 1774, 1777);
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`) VALUES
('1771','9','8738','0'),
('1774','24','21160','1'),
('1777','-1','1771','1774');

DELETE FROM `dbscripts_on_gossip` WHERE `id` = 6692;
INSERT INTO `dbscripts_on_gossip` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
('6692','0','15','25847','0','0','0','0','0','0','0','0','0','0','0','0','Create Hive\'Regal Scout Report');

-- Small Update for Quest 5561 Thanks Ghurok
UPDATE `quest_template` SET `ReqSpellCast1` = 0 WHERE `entry` = 5561;

-- Fix Gossip of NPC (11800) and (11798) close #38
UPDATE `creature_template` SET `gossip_menu_id` = 4041 WHERE `entry` = 11800;
UPDATE `creature_template` SET `gossip_menu_id` = 4042 WHERE `entry` = 11798;

DELETE FROM `gossip_menu_option` WHERE `menu_id` IN (4041, 4042);
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `box_coded`, `box_money`, `box_text`, `condition_id`) VALUES
('4041','0','0','I\'d like to fly to Rut\'theran Village.','1','1','-1','0','4041','0','0',NULL,'520'),
('4041','1','0','Do you know where I can find Half Pendant of Aquatic Agility?','1','1','20009','0','0','0','0',NULL,'677'),
('4042','0','0','I\'d like to fly to Thunder Bluff.','1','1','-1','0','4042','0','0',NULL,'519'),
('4042','1','0','Do you know where I can find Half Pendant of Aquatic Endurance?','1','1','20010','0','0','0','0',NULL,'677');

DELETE FROM `gossip_menu` WHERE `entry` IN (4041 ,4042, 20009, 20010);
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES
('4041','4913','0','75'),
('4041','4914','0','520'),
('4041','4915','0','519'),
('4042','4916','0','75'),
('4042','4917','0','520'),
('4042','4918','0','519'),
('20009','5375','0','159'),
('20009','5376','0','158'),
('20010','5373','0','159'),
('20010','5374','0','158');

DELETE FROM `dbscripts_on_gossip` WHERE `id` IN (4041, 4042);
INSERT INTO `dbscripts_on_gossip` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
('4041','0','30','315','0','0','0','0','0','0','0','0','0','0','0','0','fly to Rut\'theran Village'),
('4042','0','30','316','0','0','0','0','0','0','0','0','0','0','0','0','fly to Thunder Bluff');

DELETE FROM `conditions` WHERE `condition_entry` IN (75, 102, 158, 159, 519, 520, 677);
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`) VALUES
('75','14','0','511'),
('102','14','0','1024'),
('158','9','30','0'),
('159','9','272','0'),
('519','-1','4','102'),
('520','-1','5','102'),
('677','-2','158','159');

-- Fix NPC Gossip (15171,15170) This fix Quest 8304 close #41
UPDATE `creature_template` SET `gossip_menu_id` = 6533 WHERE `entry` = 15171;
UPDATE `creature_template` SET `gossip_menu_id` = 6534 WHERE `entry` = 15170;

DELETE FROM `gossip_menu_option` WHERE `menu_id` IN (6533, 6552, 6553, 6554, 6555, 6556, 6557, 6558);
INSERT `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `box_coded`, `box_money`, `box_text`, `condition_id`) VALUES
('6533','0','0','Hello, Frankal. I\'ve heard that you might have some information as to the whereabouts of Mistress Natalia Mar\'alith.','1','1','6558','0','0','0','0',NULL,'512'),
('6552','0','0','Thanks for the information, Frankal.','1','1','-1','0','6552','0','0',NULL,'0'),
('6553','0','0','What a story! So she went into Hive\'Regal and that was the last you saw of her?','1','1','6552','0','0','0','0',NULL,'0'),
('6554','0','0','Then what?','1','1','6553','0','0','0','0',NULL,'0'),
('6555','0','0','I\'ve been meaning to ask out about that monkey.','1','1','6554','0','0','0','0',NULL,'0'),
('6556','0','0','You couldn\'t handle a lone night elf priestess?','1','1','6555','0','0','0','0',NULL,'0'),
('6557','0','0','That\'s odd.','1','1','6556','0','0','0','0',NULL,'0'),
('6558','0','0','That\'s what I like to hear.','1','1','6557','0','0','0','0',NULL,'0');

DELETE FROM `gossip_menu_option` WHERE `menu_id` IN (6534, 6545, 6546, 6547, 6548, 6549, 6550, 6551);
INSERT `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `box_coded`, `box_money`, `box_text`, `condition_id`) VALUES
('6534','0','0','Hello, Rutgar. The Commander has sent me here to gather some information about his missing wife.','1','1','6551','0','0','0','0',NULL,'512'),
('6545','0','0','I\'ll be back once I straighten this mess out.','1','1','-1','0','6545','0','0',NULL,'0'),
('6546','0','0','Possessed by what?','1','1','6545','0','0','0','0',NULL,'0'),
('6547','0','0','Lost it? What do you mean?','1','1','6546','0','0','0','0',NULL,'0'),
('6548','0','0','What demands?','1','1','6547','0','0','0','0',NULL,'0'),
('6549','0','0','Natalia?','1','1','6548','0','0','0','0',NULL,'0'),
('6550','0','0','What happened to her after that?','1','1','6549','0','0','0','0',NULL,'0'),
('6551','0','0','That sounds dangerous.','1','1','6550','0','0','0','0',NULL,'0');

DELETE FROM `gossip_menu` WHERE `entry` IN (6533, 6552, 6553, 6554, 6555 ,6556, 6557, 6558);
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES
('6533','7735','0','0'),
('6552','7768','0','0'),
('6553','7767','0','0'),
('6554','7766','0','0'),
('6555','7765','0','0'),
('6556','7764','0','0'),
('6557','7763','0','0'),
('6558','7762','0','0');

DELETE FROM `gossip_menu` WHERE `entry` IN (6534, 6545, 6546, 6547, 6548, 6549, 6550, 6551);
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES
('6534','7736','0','0'),
('6545','7761','0','0'),
('6546','7760','0','0'),
('6547','7759','0','0'),
('6548','7758','0','0'),
('6549','7757','0','0'),
('6550','7756','0','0'),
('6551','7755','0','0');

DELETE FROM `conditions` WHERE `condition_entry` = 512;
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`) VALUES
('512','9','8304','0');

DELETE FROM `dbscripts_on_gossip` WHERE `id` = 6552;
INSERT INTO `dbscripts_on_gossip` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
('6552','0','8','15221','0','0','0','0','0','0','0','0','0','0','0','0','cast killcredit 15221');

DELETE FROM `dbscripts_on_gossip` WHERE `id` = 6545;
INSERT INTO `dbscripts_on_gossip` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
('6545','0','8','15222','0','0','0','0','0','0','0','0','0','0','0','0','cast killcredit 15222');

-- Fix MinLevel of Quest (8725)
UPDATE `quest_template` SET `MinLevel` = 1 WHERE `entry` = 8725;

-- Delete duplicate mailbox in Ironforge - Military Ward
DELETE FROM `gameobject` WHERE `guid` = 7875 AND `id` = 171556;

-- Remove TBC and WotLK game objects
DELETE FROM `gameobject_template` WHERE `entry` IN(181626, 183342, 183343, 185317, 185318, 185319, 186622, 186623, 187080, 210068, 300029);
DELETE FROM `gameobject` WHERE `id` IN(181626, 183342, 183343, 185317, 185318, 185319, 186622, 186623, 187080, 210068, 300029);

-- Set Spawners/Triggers to use the infamous infernal model, and make them invisible
UPDATE `creature_template` SET `modelid_1` = 1126, `modelid_2` = 0, `type` = 10,`flags_extra` = `flags_extra` | 128 WHERE `entry` IN (7898,8611,11179,11494,12758,12999,13477,13876,14026,14027,14028,14029,14030,14031,14307,14309,14310,14311,14312,14422,14443,14449,14495,14606,14646,14758,15091,15164,15218,15221,15222,15384,15426,15454,15590,15695,15717,15800,15922,15957,15964,16006,16044,16045,16046,16047,16048,16079,16082,16100,16137,16306,16336,16338,16430,16606);

-- Insert missing creature templates
DELETE FROM `creature_template` WHERE `entry` IN (17719, 17720);
INSERT INTO `creature_template` (`entry`, `KillCredit1`, `KillCredit2`, `modelid_1`, `modelid_2`, `name`, `subname`, `gossip_menu_id`, `minlevel`, `maxlevel`, `minhealth`, `maxhealth`, `minmana`, `maxmana`, `armor`, `faction_A`, `faction_H`, `npcflag`, `speed_walk`, `speed_run`, `scale`, `rank`, `mindmg`, `maxdmg`, `dmgschool`, `attackpower`, `dmg_multiplier`, `baseattacktime`, `rangeattacktime`, `unit_class`, `unit_flags`, `dynamicflags`, `family`, `trainer_type`, `trainer_spell`, `trainer_class`, `trainer_race`, `minrangedmg`, `maxrangedmg`, `rangedattackpower`, `type`, `type_flags`, `lootid`, `pickpocketloot`, `skinloot`, `resistance1`, `resistance2`, `resistance3`, `resistance4`, `resistance5`, `resistance6`, `PetSpellDataId`, `mingold`, `maxgold`, `AIName`, `MovementType`, `InhabitType`, `Civilian`, `RacialLeader`, `RegenHealth`, `equipment_id`, `trainer_id`, `vendor_id`, `mechanic_immune_mask`, `flags_extra`, `ScriptName`) VALUES
('17719', '0', '0', '17202', '0', 'Ironforge Gryphon Rider', NULL, '0', '1', '1', '300', '300', '0', '0', '20', '35', '35', '0', '1', '1.14286', '1', '0', '1', '1.29', '0', '100', '1', '1400', '1900', '0', '0', '0', '0', '0', '0', '0', '0', '0.344828', '0.444828', '100', '7', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', NULL, '1', '3', '0', '0', '1', '0', '0', '0', '0', '0', NULL), ('17720', '0', '0', '17203', '0', 'Orgrimmar Wyvern Rider', NULL, '0', '1', '1', '300', '300', '0', '0', '20', '35', '35', '0', '1', '1.14286', '1', '0', '1', '1.29', '0', '100', '1', '1400', '1900', '0', '0', '0', '0', '0', '0', '0', '0', '0.344828', '0.444828', '100', '7', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', NULL, '1', '3', '0', '0', '1', '0', '0', '0', '0', '0', NULL);

-- Fix Quest (3520)
UPDATE `creature_template` SET `gossip_menu_id` = 1405, `flags_extra` = `flags_extra` | 2050 WHERE `entry` = 8612;
DELETE FROM `gossip_menu` WHERE `entry` = 1405;
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES
('1405','2039','1405','0');

DELETE FROM `dbscripts_on_gossip` WHERE `id` = 1405;
INSERT INTO `dbscripts_on_gossip` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
('1405','0','8','8612','0','0','0','0','0','0','0','0','0','0','0','0','give killcredit - Screecher Spirit'),
('1405','2','29','1','2','8612','5','0','0','0','0','0','0','0','0','0','');

-- Fix Quest (5742)
UPDATE `creature_template` SET `gossip_menu_id` = 3502  WHERE `entry` = 1855;

DELETE FROM `gossip_menu_option` WHERE `menu_id` IN (3502, 3681, 3682, 3683);
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `box_coded`, `box_money`, `box_text`, `condition_id`) VALUES
('3502','0','0','I am ready to hear your tale, Tirion.','1','1','3683','0','0','0','0',NULL,'139'),
('3681','0','0','I will, Tirion.','1','1','-1','0','3681','0','0',NULL,'0'),
('3682','0','0','That is terrible.','1','1','3681','0','0','0','0',NULL,'0'),
('3683','0','0','Thank you, Tirion. What of your identity?','1','1','3682','0','0','0','0',NULL,'0');

DELETE FROM `conditions` WHERE `condition_entry` = 139;
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`) VALUES
('139','9','5742','0');

DELETE FROM `gossip_menu` WHERE `entry` IN (3502, 3681, 3682, 3683);
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES
('3502','4254','0','0'),
('3502','4673','0','139'),
('3681','4495','0','0'),
('3682','4494','0','0'),
('3683','4493','0','0');

DELETE FROM `dbscripts_on_gossip` WHERE `id` = 3681;
INSERT INTO `dbscripts_on_gossip` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
('3681','0','7','5742','0','0','0','0','0','0','0','0','0','0','0','0','complete quest');

-- Fix Quests (4285), (4287), (4288)
-- Quest (4285)
DELETE FROM `gossip_menu_option` WHERE `menu_id` = 2177;
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `box_coded`, `box_money`, `box_text`, `condition_id`) VALUES
('2177','0','0','I want to examine this pylon.','1','1','2181','0','2177','0','0','','316');

DELETE FROM `gossip_menu` WHERE `entry` = 2177;
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES
('2177','2810','0','123'),
('2177','2933','0','124'),
('2181','2812','0','0');

DELETE FROM `conditions` WHERE `condition_entry` IN (123, 124, 316);
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`) VALUES
('123','22','4321','0'),
('124','8','4321','0'),
('316','9','4285','0');

DELETE FROM `dbscripts_on_gossip` WHERE `id` = 2177;
INSERT INTO `dbscripts_on_gossip` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
('2177','0','7','4285','0','0','0','0','0','0','0','0','0','0','0','0','explore northern pylon');

-- Quest (4287)
DELETE FROM `gossip_menu_option` WHERE `menu_id` = 2178;
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `box_coded`, `box_money`, `box_text`, `condition_id`) VALUES
('2178','0','0','I want to examine this pylon.','1','1','2180','0','2178','0','0','','317');

DELETE FROM `gossip_menu` WHERE `entry` = 2178;
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES
('2178','2810','0','123'),
('2178','2933','0','124'),
('2180','2811','0','0');

DELETE FROM `conditions` WHERE `condition_entry` = 317;
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`) VALUES
('317','9','4287','0');

DELETE FROM `dbscripts_on_gossip` WHERE `id` = 2178;
INSERT INTO `dbscripts_on_gossip` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
('2178','0','7','4287','0','0','0','0','0','0','0','0','0','0','0','0','explore eastern pylon');

-- Quest (4288)
DELETE FROM `gossip_menu_option` WHERE `menu_id` = 2179;
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `box_coded`, `box_money`, `box_text`, `condition_id`) VALUES
('2179','0','0','I want to examine this pylon.','1','1','2182','0','2179','0','0','','318');

DELETE FROM `gossip_menu` WHERE `entry` = 2179;
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES
('2179','2810','0','123'),
('2179','2933','0','124'),
('2182','2813','0','0');

DELETE FROM `conditions` WHERE `condition_entry` = 318;
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`) VALUES
('318','9','4288','0');

DELETE FROM `dbscripts_on_gossip` WHERE `id` = 2179;
INSERT INTO `dbscripts_on_gossip` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
('2179','0','7','4288','0','0','0','0','0','0','0','0','0','0','0','0','explore western pylon');

-- Make Gameobject (176361) Untargetable
UPDATE `gameobject_template` SET `flags` = 4 WHERE `entry` = 176361;

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
UPDATE `db_version` SET `version` = 'ZeroDatabase 2.0.4 for MaNGOSZero zXXXX+ and ScriptDevZero zXXXX+';
