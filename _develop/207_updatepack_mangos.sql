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

-- rescripted the quest end script for quest 411 The prodigal lich returns. NEEDS COMMAND 35 TURN TO
DELETE FROM `dbscripts_on_quest_end` WHERE `id` = 411;
DELETE FROM `dbscripts_on_creature_movement` WHERE `id` = 566601;
DELETE FROM `creature_movement_template` WHERE `entry` = 5666;
INSERT INTO `dbscripts_on_quest_end` VALUES (411,2,15,7673,0,0,0,4,0,0,0,0,0,0,0,0,'Bethor - Cast 7673');
INSERT INTO `dbscripts_on_quest_end` VALUES (411,7,10,5666,23000,0,0,0,0,0,0,0,1768.58,55.4891,-46.3198,2.28248,'Summon Visage');
INSERT INTO `dbscripts_on_quest_end` VALUES (411,10,3,0,0,5666,20,0,0,0,0,0,1766.39,65.0166,-46.3214,1.51672,'Visage move to Bethor');
INSERT INTO `dbscripts_on_quest_end` VALUES (411,15,0,0,0,5666,20,0,2000000208,0,0,0,0,0,0,0,'Visage say 1');
INSERT INTO `dbscripts_on_quest_end` VALUES (411,15,1,2,0,5666,20,0,0,0,0,0,0,0,0,0,'Visage Bow');
INSERT INTO `dbscripts_on_quest_end` VALUES (411,18,0,0,0,5666,20,0,2000000209,0,0,0,0,0,0,0,'Visage say 2');
INSERT INTO `dbscripts_on_quest_end` VALUES (411,22,35,0,0,5666,20,0,0,0,0,0,0,0,0,0,'Visage turn to player');
INSERT INTO `dbscripts_on_quest_end` VALUES (411,23,0,0,0,5666,10,0,2000000210,0,0,0,0,0,0,0,'Visage Say 3');
INSERT INTO `dbscripts_on_quest_end` VALUES (411,23,1,2,0,5666,10,0,0,0,0,0,0,0,0,0,'Visage Bow');
INSERT INTO `dbscripts_on_quest_end` VALUES (411,30,0,0,0,0,0,0,2000000211,0,0,0,0,0,0,0,'Bethor Say');

-- fixing Quest 3567 this is removing the "You learn spell" from complete quest window and spell gets casted by Marli now, not by the player
UPDATE `quest_template` SET `RewSpellCast` = 0 WHERE `entry` = 3567;
UPDATE `quest_template` SET `RewSpell` = 0 WHERE `entry` = 3567;
UPDATE `quest_template` SET `CompleteScript` = 3567 WHERE `entry` = 3567;
DELETE FROM `dbscripts_on_quest_end` WHERE `id` = 3567;
INSERT INTO `dbscripts_on_quest_end` VALUES (3567,0,15,12242,0,0,0,0,0,0,0,0,0,0,0,0,'Cast spell 12242 on Player');

-- Added Spellspcripts for Spells 11885, 11886, 1887, 11888, 11889 Despawning the corpse after use of the vessel
DELETE FROM `dbscripts_on_spell` WHERE `id` = 11885;
INSERT INTO `dbscripts_on_spell` VALUES (11885,3,18,0,0,0,0,0,0,0,0,0,0,0,0,0,'Despawn treant corpse');
DELETE FROM `dbscripts_on_spell` WHERE `id` = 11886;
INSERT INTO `dbscripts_on_spell` VALUES (11886,3,18,0,0,0,0,0,0,0,0,0,0,0,0,0,'Despawn wildkin corpse');
DELETE FROM `dbscripts_on_spell` WHERE `id` = 11887;
INSERT INTO `dbscripts_on_spell` VALUES (11887,3,18,0,0,0,0,0,0,0,0,0,0,0,0,0,'Despawn hyppogryph corpse');
DELETE FROM `dbscripts_on_spell` WHERE `id` = 11888;
INSERT INTO `dbscripts_on_spell` VALUES (11888,3,18,0,0,0,0,0,0,0,0,0,0,0,0,0,'Despawn faerie dragon corpse');
DELETE FROM `dbscripts_on_spell` WHERE `id` = 11889;
INSERT INTO `dbscripts_on_spell` VALUES (11889,3,18,0,0,0,0,0,0,0,0,0,0,0,0,0,'Despawn mountain giant corpse');

-- Correct Required Races for Quest 5156 Verifying the Corruption
UPDATE `quest_template` SET `RequiredRaces` = 0 WHERE `entry` = 5156;

-- correct minLevel for quest 8 a rogues deal and made it horde quest
UPDATE `quest_template` SET `MinLevel` = 1 WHERE `entry` = 8;
UPDATE `quest_template` SET `RequiredRaces` = 178 WHERE `entry` = 8;

-- Added spawn and attack script for Thenan when completing quest 652 Breaking the keystone
UPDATE `quest_template` SET `CompleteScript` = 652 WHERE `entry` = 652;
DELETE FROM `dbscripts_on_quest_end` WHERE `id` = 652;
INSERT INTO `dbscripts_on_quest_end` VALUES (652,1,10,2763,180000,0,0,0,0,0,0,0,-1539.12,-2172.93,17.29,0.56,'Summon Thenan');
INSERT INTO `dbscripts_on_quest_end` VALUES (652,3,26,0,0,2763,50,0,0,0,0,0,0,0,0,0,'Start Attack');

-- Correct Minimum Questlevel for Quest 670 Sunken Treasure
UPDATE `quest_template` SET `MinLevel` = 35 WHERE `entry`=670;

-- backport: fixing Quest 1383 Questtext. deleting deepstrider tumor from dreaming whelps. Adding deepstrider tumor questdrop to deepstrider sea giants. Correcting questtext.
UPDATE quest_template SET Details="I have just the right serum in mind. It will deal with the truth in precisely the way the truth should be dealt with.$B$BFor this concoction I will need several Shadow Panther hearts from the Swamp. I also require the enchanted fungus off of the Mire Lord who resides there. I am sure one as able as you, $n, can persuade him to part with some.$B$BNow the hard part will be locating a Deepstrider tumor from far-off Desolace. Very rarely the giants there become ill and a tumor forms.$B$BNow, off you go!" WHERE entry=1383;
UPDATE quest_template SET Objectives="Apothecary Faustin at Beggar's Haunt needs 5 Shadow Panther Hearts, Mire Lord Fungus and a Deep Strider Tumor." WHERE entry=1383;
DELETE FROM `creature_loot_template` WHERE `item` = 6082;
INSERT INTO `creature_loot_template` VALUES (4686,6082,-100,0,1,1,0);
INSERT INTO `creature_loot_template` VALUES (4687,6082,-100,0,1,1,0);

-- fixing Quest 1388 previous questid, because quest where available before completing the first two quest of this questline.
UPDATE `quest_template` SET `PrevQuestId` = 1383 WHERE `entry` = 1388;

-- fixing the "you learn spell" from quest windows, from 6 Quest of Dalar Dawnweaver (Quest 99, 421, 422, 423, 424 1014) adding quest end scripts so dalar dawnweaver cast spell on Player, fixing the not enough mana bug.
UPDATE `quest_template` SET `RewSpellCast` = 0 WHERE `entry` = 99;
UPDATE `quest_template` SET `RewSpellCast` = 0 WHERE `entry` = 421;
UPDATE `quest_template` SET `RewSpellCast` = 0 WHERE `entry` = 422;
UPDATE `quest_template` SET `RewSpellCast` = 0 WHERE `entry` = 423;
UPDATE `quest_template` SET `RewSpellCast` = 0 WHERE `entry` = 424;
UPDATE `quest_template` SET `RewSpellCast` = 0 WHERE `entry` = 1014;
UPDATE `quest_template` SET `CompleteScript` = 99 WHERE `entry` = 99;
UPDATE `quest_template` SET `CompleteScript` = 421 WHERE `entry` = 421;
UPDATE `quest_template` SET `CompleteScript` = 422 WHERE `entry` = 422;
UPDATE `quest_template` SET `CompleteScript` = 423 WHERE `entry` = 423;
UPDATE `quest_template` SET `CompleteScript` = 424 WHERE `entry` = 424;
UPDATE `quest_template` SET `CompleteScript` = 1014 WHERE `entry` = 1014;
DELETE FROM `dbscripts_on_quest_end` WHERE `id` = 99;
DELETE FROM `dbscripts_on_quest_end` WHERE `id` = 421;
DELETE FROM `dbscripts_on_quest_end` WHERE `id` = 422;
DELETE FROM `dbscripts_on_quest_end` WHERE `id` = 423;
DELETE FROM `dbscripts_on_quest_end` WHERE `id` = 424;
DELETE FROM `dbscripts_on_quest_end` WHERE `id` = 1014;
INSERT INTO `dbscripts_on_quest_end` VALUES (99,0,15,8097,0,0,0,0,0,0,0,0,0,0,0,0,'Cast spell Arcane Intellect on Player');
INSERT INTO `dbscripts_on_quest_end` VALUES (421,0,15,8097,0,0,0,0,0,0,0,0,0,0,0,0,'Cast spell Arcane Intellect on Player');
INSERT INTO `dbscripts_on_quest_end` VALUES (422,0,15,8097,0,0,0,0,0,0,0,0,0,0,0,0,'Cast spell Arcane Intellect on Player');
INSERT INTO `dbscripts_on_quest_end` VALUES (423,0,15,8097,0,0,0,0,0,0,0,0,0,0,0,0,'Cast spell Arcane Intellect on Player');
INSERT INTO `dbscripts_on_quest_end` VALUES (424,0,15,8097,0,0,0,0,0,0,0,0,0,0,0,0,'Cast spell Arcane Intellect on Player');
INSERT INTO `dbscripts_on_quest_end` VALUES (1014,0,15,8097,0,0,0,0,0,0,0,0,0,0,0,0,'Cast spell Arcane Intellect on Player');

-- ACID

-- ScriptDev2

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
UPDATE `db_version` SET `version` = 'ZeroDatabase 2.0.7 for MaNGOSZero zXXXX+ and ScriptDevZero zXXXX+';
