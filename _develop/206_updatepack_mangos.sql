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

-- Correct Questlevel for Quest 670 Sunken Treasure
UPDATE `quest_template` SET `MinLevel` = 36 WHERE `entry`=670;

-- Add gossip_menu for gameobject (20923) Thanks Ghurok
DELETE FROM `gossip_menu` WHERE `entry` = 5004;
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES
('5004','6062','0','0');

UPDATE `npc_text` SET `text0_0` = "This monument is dedicated to all those who have fallen in the protection of Stormwind.$B$BOur people have weathered unbelievable hardships to retain their freedoms and to control their own destinies. It is here we remember every sacrifice our citizens have made during the first war that riddled our people." WHERE `ID` = 6062;

-- Add gossip_menu for gameobject (178526) Thanks Ghurok
DELETE FROM `gossip_menu` WHERE `entry` = 5062;
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES
('5062','6104','0','0');

-- Removes Unlit Poor Torch (6183) from vendors. It's not supposed to be available to players at all. Thanks Ghurok
DELETE FROM `npc_vendor` WHERE `entry` IN (791, 1250, 1448, 1452) AND `item` = 6183;

-- Removes Mood Ring (7338) from dropping. It is only supposed to be available through purchase. Thanks Ghurok
DELETE FROM `gameobject_loot_template` WHERE `entry` IN (2265, 2276, 2277, 2279, 2280, 2281) AND `item` = 7338;

-- The Dragonmaw Shinbones will now drop if you have the quest. Thanks Ghurok
UPDATE `quest_template` SET `ReqSourceId1` = 7131 WHERE `entry` = 1846;

-- Corrects the completion text for the quest (5441) Thanks Ghurok
UPDATE `quest_template` SET `OfferRewardText` = "Good, good. Maybe they'll think twice before slacking next time! Thanks for the help!" WHERE `entry` = 5441;

-- Corrects the completion text for the quest (5482) Thanks Ghurok
UPDATE `quest_template` SET `OfferRewardText` = "Ah, my doom weed. Excellent!$B$B<Junior Apothecary Holland rubs his hands together greedily.>$B$BThese will come in quite handy. You\'ve done me, uh, the Lady, a fine service today $N. As promised here is the reward that you deserve." WHERE `entry` = 5482;

-- Corrects the completion text for the quest (6064) Thanks Ghurok
UPDATE `quest_template` SET `RequestItemsText` = "Don\'t worry, $Glad:lass;! You\'ll get ta try a few before you\'ll need to decide on just one." WHERE `entry` = 6064;

-- Corrects the completion text for the quest (6662) Thanks Ghurok
UPDATE `quest_template` SET `RequestItemsText` = "<Nipsy puts his index finger through one of the air holes in the carton.>$B$BAlive and kicking... and just in time!" WHERE `entry` = 6662;

-- Corrects one of Marshal McBride texts (quote) Thanks Ghurok
UPDATE `db_script_string` SET `content_default` = "You are dismissed, $N." WHERE `entry` = 2000000059;

-- Wrong spells were specified for these causing Fire Nova Totem Rank 1-4 to explode instantly. Thanks ProjectSilverpine
UPDATE `creature_template_spells` SET `spell1` = 8443 WHERE `entry` = 5879;
UPDATE `creature_template_spells` SET `spell1` = 8504 WHERE `entry` = 6110;
UPDATE `creature_template_spells` SET `spell1` = 8505 WHERE `entry` = 6111;
UPDATE `creature_template_spells` SET `spell1` = 11310 WHERE `entry` = 7844;

-- Fix Eternal Flame (Gameobject 148418, 148419, 148420, 148421)
UPDATE `gameobject_template` SET `flags` = 16 WHERE `entry` IN  (148418, 148419, 148420, 148421);

-- Add fishing_loot_template 10
DELETE FROM `fishing_loot_template` WHERE `entry` = 10;
INSERT INTO `fishing_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES
('10','11004','100','1','-11004','1','0');

-- Corrects the completion text for the quest (667)
UPDATE `quest_template` SET `OfferRewardText` = "We survived the attack!$B$BWe could not have done it without you, $N.$B$BWe\'ll be heading out as soon as the tide rises. If you weren\'t such a promising hero I\'d offer you a place on my crew. But I can tell you have bigger fish to fry.$B$BEven if you are a puny $r...." WHERE `entry` = 667;

-- Corrects the spell used by creature (15304) which fixes item (20503)
UPDATE `creature_template_spells` SET `spell1` = 24853 WHERE `entry` = 15304;

-- Add spell (6276) to Healing Ward IV creature (3844). It will heal now.
DELETE FROM `creature_template_spells` WHERE `entry`=3844;
INSERT INTO `creature_template_spells` (`entry`, `spell1`, `spell2`, `spell3`, `spell4`) VALUES (3844, 6276, 0, 0, 0);

-- Learning spell Journeyman Blacksmith (2021) from trainers now requires 50 minimum blacksmith skill
UPDATE `npc_trainer` SET `reqskill` = 164 WHERE `spell` = 2021;

-- Move all Stormwind Battlemasters from the War Room to the same room as the King of Stormwind
UPDATE `creature` SET `position_x` = '-8424.55', `position_y` = '342.807', `position_z` = '120.886', `orientation` = '3.80942' WHERE `guid` = 42893 AND `id` = 7410;
UPDATE `creature` SET `position_x` = '-8454.6', `position_y` = '318.918', `position_z` = '120.886', `orientation` = '0.65759' WHERE `guid` = 54614 AND `id` = 14981;
UPDATE `creature` SET `position_x` = '-8420.48', `position_y` = '328.711', `position_z` = '120.886', `orientation` = '3.06638' WHERE `guid` = 54625 AND `id`= 15008;
UPDATE `creature` SET `position_x` = '-8441.82', `position_y` = '311.616', `position_z` = '120.886', `orientation` = '1.45789' WHERE `guid` = 14740 AND `id` = 15351;

-- Add spells to all PvP Battle Standard creatures (14465, 14466, 14751, 14752)
DELETE FROM `creature_template_spells` WHERE `entry` IN (14465, 14466, 14751, 14752);
INSERT INTO `creature_template_spells` (`entry`, `spell1`, `spell2`, `spell3`, `spell4`) VALUES (14465, 23033, 0, 0, 0);
INSERT INTO `creature_template_spells` (`entry`, `spell1`, `spell2`, `spell3`, `spell4`) VALUES (14466, 23036, 0, 0, 0);
INSERT INTO `creature_template_spells` (`entry`, `spell1`, `spell2`, `spell3`, `spell4`) VALUES (14751, 23576, 0, 0, 0);
INSERT INTO `creature_template_spells` (`entry`, `spell1`, `spell2`, `spell3`, `spell4`) VALUES (14752, 23574, 0, 0, 0);

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
UPDATE `db_version` SET `version` = 'ZeroDatabase 2.0.6 for MaNGOSZero zXXXX+ and ScriptDevZero zXXXX+';
