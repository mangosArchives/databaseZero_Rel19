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

-- Correct Required Races for Quest 5156 Verifying the Corruption
UPDATE `quest_template` SET `RequiredRaces` = 0 WHERE `entry` = 5156;

-- Correcting to high XP on Quests 8460, 8464, 8485 (Timbermaw Hold)
UPDATE `quest_template` SET `RewMoneyMaxLevel` = 3780 WHERE `entry` = 8460;
UPDATE `quest_template` SET `RewMoneyMaxLevel` = 5400 WHERE `entry` = 8464;
UPDATE `quest_template` SET `RewMoneyMaxLevel` = 8580 WHERE `entry` = 8485;

-- fixing the "you learn spell" from quest windows, from 6 Quest of Dalar Dawnweaver, adding quest end scripts so dalar dawnweaver cast spell on Player, fixing the not enough mana bug.
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

-- fixing Quest 3567 this is removing the "You learn spell" from complete quest window and spell gets casted by Marli not by player
UPDATE `quest_template` SET `RewSpellCast` = 0 WHERE `entry` = 3567;
UPDATE `quest_template` SET `RewSpell` = 0 WHERE `entry` = 3567;
UPDATE `quest_template` SET `CompleteScript` = 3567 WHERE `entry` = 3567;
DELETE FROM `dbscripts_on_quest_end` WHERE `id` = 3567;
INSERT INTO `dbscripts_on_quest_end` VALUES (3567,0,15,12242,0,0,0,0,0,0,0,0,0,0,0,0,'Cast spell 12242 on Player');

-- Added Spellspcripts for Spells 11885, 11886, 1887, 11888, 11889 Despawning the corpse after use of the muisek vessel
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

-- Added spawn and attack script for Thenan when completing quest 562 Breaking the keystone
UPDATE `quest_template` SET `CompleteScript` = 652 WHERE `entry` = 652;
DELETE FROM `dbscripts_on_quest_end` WHERE `id` = 652;
INSERT INTO `dbscripts_on_quest_end` VALUES (652,1,10,2763,180000,0,0,0,0,0,0,0,-1539.12,-2172.93,17.29,0.56,'Summon Thenan');
INSERT INTO `dbscripts_on_quest_end` VALUES (652,3,26,0,0,2763,50,0,0,0,0,0,0,0,0,0,'Start Attack');

-- fixing Quest 1388 previous questid, because quest where available before completing the first two quest of this questline.
UPDATE `quest_template` SET `PrevQuestId` = 1383 WHERE `entry` = 1388;

-- fixing Quest 1383. Deleting deepstrider tumor from dreaming whelps. Adding deepstrider tumor questdrop to deepstrider sea giants. Correcting Questtext.
UPDATE quest_template SET Details="I have just the right serum in mind. It will deal with the truth in precisely the way the truth should be dealt with.$B$BFor this concoction I will need several Shadow Panther hearts from the Swamp. I also require the enchanted fungus off of the Mire Lord who resides there. I am sure one as able as you, $n, can persuade him to part with some.$B$BNow the hard part will be locating a Deepstrider tumor from far-off Desolace. Very rarely the giants there become ill and a tumor forms.$B$BNow, off you go!" WHERE entry=1383;
UPDATE quest_template SET Objectives="Apothecary Faustin at Beggar's Haunt needs 5 Shadow Panther Hearts, Mire Lord Fungus and a Deep Strider Tumor." WHERE entry=1383;
DELETE FROM `creature_loot_template` WHERE `item` = 6082;
INSERT INTO `creature_loot_template` VALUES (4686,6082,-100,0,1,1,0);
INSERT INTO `creature_loot_template` VALUES (4687,6082,-100,0,1,1,0);

-- fixing Quest 3741 allways has been a crossfaction quest
UPDATE `quest_template` SET `RequiredRaces` = 0 WHERE `entry` = 3741;

-- fixing Quest 197 Questtext (Hemet jr.)
UPDATE `quest_template` SET `Objectives` = 'Hemet Nesingwary wants you to kill Tethis, an elusive, dangerous raptor in Stranglethorn.' WHERE `entry` = 197;

-- fixing Quest 196 Questtext (Hemet jr.)
UPDATE `quest_template` SET `Objectives` = 'Hemet Nesingwary wants you to kill 10 Jungle Stalkers.' WHERE `entry` = 196;

-- fixing Quest 195 Questtext (Hemet jr.)
UPDATE `quest_template` SET `Objectives` = 'Hemet Nesingwary wants you to kill 10 Lashtail Raptors.' WHERE `entry` = 195;

-- fixing Quest 194 Questtext (Hemet jr.)
UPDATE `quest_template` SET `Objectives` = 'Hemet Nesingwary wants you to kill 10 Stranglethorn Raptors.' WHERE `entry` = 194;
UPDATE `quest_template` SET `RequestItemsText` = 'I never met a hunter who got any kills by standing around the campfire. Were you planning on killing those Stranglethorn Raptors or were you hoping they would die of old age?' WHERE `entry` = 194;

-- fixing Quest 5763 Questtext (Hemet jr.)
UPDATE `quest_template` SET `Details` = "Long ago, a dwarf came to this land.  His name was Hemet and he wished to hunt great beasts.  His skills with the rifle were uncanny, and we spent many days hunting together.  Even the enmity between our peoples was forgotten.$B$BWhen he left Desolace for Stranglethorn, I vowed to one day welcome him back so that we may hunt again.  Now is that time.$B$BTake this kodo horn as a gift to Hemet.  He will know it is from me.  You will find him in Stranglethorn, north of the Grom'gol Base camp." WHERE `entry` = 5763;
UPDATE `quest_template` SET `Objectives` = "Bring Roon's Kodo Horn to Hemet Nesingwary in Stranglethorn." WHERE `entry` =5763;

-- fixing Quest 5762 Questtext (Hemet jr.)
UPDATE `quest_template` SET `Details` = "I have a package for an old customer of mine, a dwarf named Hemet Nesingwary.  The package took weeks to arrive, and Hemet's long gone by now.  He said he was going to Stranglethorn to hunt the beasts there, but he left me some money to send his delivery when I could.  $B$BHemet's a rich dwarf and it's a good idea to keep up relations with the rich ones, yeah?  So... you want to deliver the package for me?$B$BI heard Hemet has a camp in Stranglethorn, north of Grom'gol." WHERE `entry` = 5762;
UPDATE `quest_template` SET `Objectives` = "Take Kravel's Crate to Hemet Nesingwary in Stranglethorn." WHERE `entry` = 5762;

-- fixing Quest 208 Questtext (Hemet jr.)
UPDATE `quest_template` SET `Objectives` = 'Hemet Nesingwary wants you to bring him the head of King Bangalash, the great white tiger.' WHERE `entry`=208;

-- Adding 30 minutes (real time) duration to Fresh Zhevra Carcass
UPDATE `item_template` SET `duration` = 1800 WHERE `entry` = 10338;
UPDATE `item_template` SET `ExtraFlags` = 2 WHERE `entry` = 10338;

-- Adding 30 minutes duration (real time) to Fresh Carcass
UPDATE `item_template` SET `duration` = 1800 WHERE `entry` = 5810;
UPDATE `item_template` SET `ExtraFlags` = 2 WHERE `entry` = 5810;

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
