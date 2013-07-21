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

-- correct minLevel and Level for Durotar
UPDATE `quest_template` SET `MinLevel` = 4 WHERE `entry` = 806;
UPDATE `quest_template` SET `MinLevel` = 8 WHERE `entry` = 809;
UPDATE `quest_template` SET `QuestLevel` = 13 WHERE `entry` = 809;
UPDATE `quest_template` SET `MinLevel` = 7 WHERE `entry` = 812;
UPDATE `quest_template` SET `MinLevel` = 7 WHERE `entry` = 813;
UPDATE `quest_template` SET `MinLevel` = 5 WHERE `entry` = 825;
UPDATE `quest_template` SET `MinLevel` = 7 WHERE `entry` = 827;
UPDATE `quest_template` SET `MinLevel` = 6 WHERE `entry` = 828;
UPDATE `quest_template` SET `QuestLevel` = 12 WHERE `entry` = 828;
UPDATE `quest_template` SET `MinLevel` = 3 WHERE `entry` = 831;
UPDATE `quest_template` SET `MinLevel` = 8 WHERE `entry` = 924;

-- correct Required Races for Quests in Durotar which are horde only. Quest 784, 786, 791, 794, 805, 806, 808,
-- 809, 812, 813, 815, 816, 825, 826, 827, 828, 829, 830, 831, 832, 837, 840, 842, 924, 926
UPDATE `quest_template` SET `RequiredRaces` = 178 WHERE `entry` IN (784,786,791,794,805,806,808,809,812,813,815,816,825,826,827,828,829,830,831,832,837,840,842,924,926);

-- adding Quest 787 The New Horde completion questtext
UPDATE `quest_template` SET `OfferRewardText` = "Another one of Eitrigg's recruits, hm?$B$BA sorry state of affairs we find ourselves in if this is the best the Horde can produce. No matter. By the time we think you're ready to leave the Valley, you'll be a proud warrior of the Horde." WHERE `entry` = 787;

-- Correct Questlevel for Quest Welcome! all factions
UPDATE `quest_template` SET `QuestLevel` = 1 WHERE `entry` = 5841;
UPDATE `quest_template` SET `QuestLevel` = 1 WHERE `entry` = 5842;
UPDATE `quest_template` SET `QuestLevel` = 1 WHERE `entry` = 5843;
UPDATE `quest_template` SET `QuestLevel` = 1 WHERE `entry` = 5844;
UPDATE `quest_template` SET `QuestLevel` = 1 WHERE `entry` = 5847;

-- Correct Required Races for Quest 1049 Compendium of the fallen. Not available to undead
UPDATE `quest_template` SET `RequiredRaces` = 162 WHERE `entry` = 1049;

-- Fixed item GUID 32686 fathom stone should not disspawn when looted
UPDATE `gameobject` SET `spawntimesecs` = 0 WHERE `guid` = 32686;

-- Correct Required Races for Quest 656 Summoning the Princess
UPDATE `quest_template` SET `RequiredRaces` = 0 WHERE `entry` = 656;

-- Quest end script for Quest 524 Elixir Of Agony
UPDATE `creature` SET `spawntimesecs` = 180 WHERE `id` = 2284;
UPDATE `gameobject` SET `spawntimesecs` = -10 WHERE `guid` = 30031;
DELETE FROM `gameobject` WHERE `guid` = 55530;
INSERT INTO `gameobject` VALUES (55530,1730,0,0.437117,-942.794,61.9384,-2.54818,0,0,0,0,-10,100,1);
UPDATE `quest_template` SET `CompleteScript` = 524 WHERE `entry` = 524;
DELETE FROM `dbscripts_on_quest_end` WHERE `id` = 524;
INSERT INTO `dbscripts_on_quest_end` VALUES (524,1,9,30031,30,0,0,0,0,0,0,0,0,0,0,0,'Spawn Keg');
INSERT INTO `dbscripts_on_quest_end` VALUES (524,2,9,55530,30,0,0,0,0,0,0,0,0,0,0,0,'Spawn Keg Smoke');
INSERT INTO `dbscripts_on_quest_end` VALUES (524,4,3,0,0,2284,15891,16,0,0,0,0,0.524,-944.41,61.93,1.66,'Move first');
INSERT INTO `dbscripts_on_quest_end` VALUES (524,4,3,0,0,2284,15893,16,0,0,0,0,0.439,-940.84,61.93,4.94,'Move second');
INSERT INTO `dbscripts_on_quest_end` VALUES (524,4,3,0,0,2284,15892,16,0,0,0,0,-1.632,-942.43,61.93,6.14,'Move third');
INSERT INTO `dbscripts_on_quest_end` VALUES (524,7,15,5,0,2284,15891,17,0,0,0,0,0,0,0,0,'Kill first');
INSERT INTO `dbscripts_on_quest_end` VALUES (524,8,15,5,0,2284,15893,17,0,0,0,0,0,0,0,0,'Kill second');
INSERT INTO `dbscripts_on_quest_end` VALUES (524,9,15,5,0,2284,15892,17,0,0,0,0,0,0,0,0,'Kill third');

-- correct all reputation values for tirisfal
UPDATE `quest_template` SET `RewRepValue1` = 100 WHERE `entry` = 354;
UPDATE `quest_template` SET `RewRepValue1` = 50 WHERE `entry` = 356;
UPDATE `quest_template` SET `RewRepValue1` = 100 WHERE `entry` = 358;
UPDATE `quest_template` SET `RewRepValue1` = 50 WHERE `entry` = 360;
UPDATE `quest_template` SET `RewRepValue1` = 75 WHERE `entry` = 361;
UPDATE `quest_template` SET `RewRepValue1` = 50 WHERE `entry` = 362;
UPDATE `quest_template` SET `RewRepValue1` = 50 WHERE `entry` = 363;
UPDATE `quest_template` SET `RewRepValue1` = 100 WHERE `entry` = 364;
UPDATE `quest_template` SET `RewRepValue1` = 100 WHERE `entry` = 365;
UPDATE `quest_template` SET `RewRepValue1` = 50 WHERE `entry` = 366;
UPDATE `quest_template` SET `RewRepValue1` = 100 WHERE `entry` = 367;
UPDATE `quest_template` SET `RewRepValue1` = 100 WHERE `entry` = 368;
UPDATE `quest_template` SET `RewRepValue1` = 100 WHERE `entry` = 370;
UPDATE `quest_template` SET `RewRepValue1` = 100 WHERE `entry` = 371;
UPDATE `quest_template` SET `RewRepValue1` = 100 WHERE `entry` = 372;
UPDATE `quest_template` SET `RewRepValue1` = 100 WHERE `entry` = 374;
UPDATE `quest_template` SET `RewRepValue1` = 100 WHERE `entry` = 375;
UPDATE `quest_template` SET `RewRepValue1` = 100 WHERE `entry` = 376;
UPDATE `quest_template` SET `RewRepValue1` = 100 WHERE `entry` = 380;
UPDATE `quest_template` SET `RewRepValue1` = 100 WHERE `entry` = 381;
UPDATE `quest_template` SET `RewRepValue1` = 200 WHERE `entry` = 382;
UPDATE `quest_template` SET `RewRepValue1` = 75 WHERE `entry` = 383;
UPDATE `quest_template` SET `RewRepValue1` = 100 WHERE `entry` = 398;
UPDATE `quest_template` SET `RewRepValue1` = 75 WHERE `entry` = 404;
UPDATE `quest_template` SET `RewRepValue1` = 100 WHERE `entry` = 408;
UPDATE `quest_template` SET `RewRepValue1` = 75 WHERE `entry` = 409;
UPDATE `quest_template` SET `RewRepValue1` = 100 WHERE `entry` = 411;
UPDATE `quest_template` SET `RewRepValue1` = 150 WHERE `entry` = 426;
UPDATE `quest_template` SET `RewRepValue1` = 100 WHERE `entry` = 427;
UPDATE `quest_template` SET `RewRepValue1` = 75 WHERE `entry` = 445;
UPDATE `quest_template` SET `RewRepValue1` = 100 WHERE `entry` = 492;
UPDATE `quest_template` SET `RewRepValue1` = 50 WHERE `entry` = 590;
UPDATE `quest_template` SET `RewRepValue1` = 100 WHERE `entry` = 3901;
UPDATE `quest_template` SET `RewRepValue1` = 150 WHERE `entry` = 3902;
UPDATE `quest_template` SET `RewRepValue1` = 50 WHERE `entry` = 5481;
UPDATE `quest_template` SET `RewRepValue1` = 100 WHERE `entry` = 5482;
UPDATE `quest_template` SET `RewRepValue1` = 100 WHERE `entry` = 6395;

-- fixing Quest 5151 Hypercapacitor Gizmo
UPDATE `creature_template` SET `unit_flags` = 832 WHERE `entry` = 10992;
UPDATE `creature_template` SET `flags_extra` = 0 WHERE `entry` = 10992;
DELETE FROM `dbscripts_on_go_use` WHERE `id` = 16775;
INSERT INTO `dbscripts_on_go_use` VALUES (16775,1,3,0,0,10992,20,0,0,0,0,0,-4680.1,-1439.24,-50.49,5.77704,'Panther Move');
INSERT INTO `dbscripts_on_go_use` VALUES (16775,2,22,16,49,10992,20,0,0,0,0,0,0,0,0,0,'Panther set faction');

-- Updatet values for deathstalker Faerleia from comments and db, mainly wowpedia she is lvl 18 instead of lvl 16, from comments she seems able to finish the quest nearly without any help.
-- DMG and ARMOR values are guessed by testing, no definite proof of this, but more correct than original values, HP is correct.
UPDATE `creature_template` SET `minlevel` = 18 WHERE `entry` = 2058;
UPDATE `creature_template` SET `maxlevel` = 18 WHERE `entry` = 2058;
UPDATE `creature_template` SET `minhealth` = 1251 WHERE `entry` = 2058;
UPDATE `creature_template` SET `maxhealth` = 1251 WHERE `entry` = 2058;
UPDATE `creature_template` SET `armor` = 1050 WHERE `entry` = 2058;
UPDATE `creature_template` SET `faction_A` = 71 WHERE `entry` = 2058;
UPDATE `creature_template` SET `faction_H` = 71 WHERE `entry` = 2058;
UPDATE `creature_template` SET `mindmg` = 90 WHERE `entry` = 2058;
UPDATE `creature_template` SET `maxdmg` = 99 WHERE `entry` = 2058;
UPDATE `creature_template` SET `attackpower` = 30 WHERE `entry` = 2058;
UPDATE `creature` SET `curhealth` = 1251 WHERE `guid` = 18352;

-- correct minLevel for quest 383 Vital Intelligence
UPDATE `quest_template` SET `MinLevel` = 4 WHERE `entry` = 383;

-- correct minLevel for quest 382 The Red Messenger
UPDATE `quest_template` SET `MinLevel` = 3 WHERE `entry` = 382;

-- Changed quest requirements for quest 590 a Rogues Deal, so that the quest can be completed also update minLevel
UPDATE `quest_template` SET `MinLevel` = 4 WHERE `entry` = 590;
UPDATE `quest_template` SET `ReqCreatureOrGOId1` = 0 WHERE `entry` = 590;
UPDATE `quest_template` SET `ReqCreatureOrGOCount1` = 0 WHERE `entry` = 590;

-- fix Rot Hide Gnoll cast Curse of thule as selfcast
UPDATE `creature_ai_scripts` SET `action1_param2` = 1 WHERE `id` = 167402;
UPDATE `creature_ai_scripts` SET `action1_param3` = 0 WHERE `id` = 167402;

-- correct minLevel for quest 5902 A Plague Upon Thee
UPDATE `quest_template` SET `MinLevel` = 49 WHERE `entry` = 5902;

-- Correcting to high XP for Quests 5901, 5902, A Plague Upon Thee
UPDATE `quest_template` SET `RewMoneyMaxLevel` = 3450 WHERE `entry` = 5901;
UPDATE `quest_template` SET `RewMoneyMaxLevel` = 1680 WHERE `entry` = 5902;

-- correct minLevel for quest 398 Wanted Maggot Eye
UPDATE `quest_template` SET `MinLevel` = 4 WHERE `entry` = 398;

-- correct minLevel for quest 374 Proof of Demise
UPDATE `quest_template` SET `MinLevel` = 5 WHERE `entry` = 374;

-- correct minLevel for quest 431 Candles Of Beckoning
UPDATE `quest_template` SET `MinLevel` = 8 WHERE `entry` = 431;

-- correct minLevel for quest 372 At War With The Scarlett Crusade
UPDATE `quest_template` SET `MinLevel` = 7 WHERE `entry` = 372;

-- correct minLevel for quest 371 At War With The Scarlett Crusade
UPDATE `quest_template` SET `MinLevel` = 6 WHERE `entry` = 371;

-- correct minLevel for quest 370 At War With The Scarlett Crusade
UPDATE `quest_template` SET `MinLevel` = 5 WHERE `entry` = 370;

-- correct minLevel for quest 361 A Letter Undelivered
UPDATE `quest_template` SET `MinLevel` = 4 WHERE `entry` = 361;

-- correct minLevel for quest 355 Speak with Sevren
UPDATE `quest_template` SET `MinLevel` = 7 WHERE `entry` = 355;

-- correct Required Races for Quests all of them are horde Quests 354, 355, 356, 362, 364, 365, 366, 370, 371, 372,
-- 374, 376, 380, 381, 382, 383, 398, 404, 405, 407, 408, 409, 410, 411, 426, 427, 431, 445, 590, 3901, 3902, 5481, 5482
UPDATE `quest_template` SET `RequiredRaces` = 178 WHERE `entry` = 354;
UPDATE `quest_template` SET `RequiredRaces` = 178 WHERE `entry` = 355;
UPDATE `quest_template` SET `RequiredRaces` = 178 WHERE `entry` = 356;
UPDATE `quest_template` SET `RequiredRaces` = 178 WHERE `entry` = 362;
UPDATE `quest_template` SET `RequiredRaces` = 178 WHERE `entry` = 364;
UPDATE `quest_template` SET `RequiredRaces` = 178 WHERE `entry` = 365;
UPDATE `quest_template` SET `RequiredRaces` = 178 WHERE `entry` = 366;
UPDATE `quest_template` SET `RequiredRaces` = 178 WHERE `entry` = 370;
UPDATE `quest_template` SET `RequiredRaces` = 178 WHERE `entry` = 371;
UPDATE `quest_template` SET `RequiredRaces` = 178 WHERE `entry` = 372;
UPDATE `quest_template` SET `RequiredRaces` = 178 WHERE `entry` = 374;
UPDATE `quest_template` SET `RequiredRaces` = 178 WHERE `entry` = 376;
UPDATE `quest_template` SET `RequiredRaces` = 178 WHERE `entry` = 380;
UPDATE `quest_template` SET `RequiredRaces` = 178 WHERE `entry` = 381;
UPDATE `quest_template` SET `RequiredRaces` = 178 WHERE `entry` = 382;
UPDATE `quest_template` SET `RequiredRaces` = 178 WHERE `entry` = 383;
UPDATE `quest_template` SET `RequiredRaces` = 178 WHERE `entry` = 398;
UPDATE `quest_template` SET `RequiredRaces` = 178 WHERE `entry` = 404;
UPDATE `quest_template` SET `RequiredRaces` = 178 WHERE `entry` = 405;
UPDATE `quest_template` SET `RequiredRaces` = 178 WHERE `entry` = 407;
UPDATE `quest_template` SET `RequiredRaces` = 178 WHERE `entry` = 408;
UPDATE `quest_template` SET `RequiredRaces` = 178 WHERE `entry` = 409;
UPDATE `quest_template` SET `RequiredRaces` = 178 WHERE `entry` = 410;
UPDATE `quest_template` SET `RequiredRaces` = 178 WHERE `entry` = 411;
UPDATE `quest_template` SET `RequiredRaces` = 178 WHERE `entry` = 426;
UPDATE `quest_template` SET `RequiredRaces` = 178 WHERE `entry` = 427;
UPDATE `quest_template` SET `RequiredRaces` = 178 WHERE `entry` = 431;
UPDATE `quest_template` SET `RequiredRaces` = 178 WHERE `entry` = 445;
UPDATE `quest_template` SET `RequiredRaces` = 178 WHERE `entry` = 590;
UPDATE `quest_template` SET `RequiredRaces` = 178 WHERE `entry` = 3901;
UPDATE `quest_template` SET `RequiredRaces` = 178 WHERE `entry` = 3902;
UPDATE `quest_template` SET `RequiredRaces` = 178 WHERE `entry` = 5481;
UPDATE `quest_template` SET `RequiredRaces` = 178 WHERE `entry` = 5482;

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
