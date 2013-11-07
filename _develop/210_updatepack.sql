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
