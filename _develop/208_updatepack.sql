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

-- fixed dropchance of item 11148 Manual Page and made them questdrop. Needed for quest 3924 Samophlange Manual
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -29 WHERE `entry` = 3283;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -27 WHERE `entry` = 3286;

-- Quest end script for quest 857 The Tear of the Moons and movement for feegly
UPDATE `creature_template` SET `MovementType` = 2 WHERE `entry` = 3421;
DELETE FROM `creature` WHERE `guid` = 14138;
INSERT INTO `creature` VALUES (14138,3421,1,1406,0,-4217.42,-2342.11,91.73,2.13,275,0,0,860,0,0,2);
DELETE FROM `creature_movement` WHERE `id` = 14138;
INSERT INTO `creature_movement` VALUES (14138,1,-4217.83,-2341.47,91.7458,10000,0,0,0,0,0,0,0,0,0,2.13698,0,0);
INSERT INTO `creature_movement` VALUES (14138,2,-4219.46,-2336.15,91.8028,10000,0,0,0,0,0,0,0,0,0,2.13698,0,0);
UPDATE `quest_template` SET `CompleteScript` = 857 WHERE `entry` = 857;
DELETE FROM `dbscripts_on_quest_end` WHERE `id` = 857;
INSERT INTO `dbscripts_on_quest_end` VALUES (857,0,20,0,0,0,0,0,0,0,0,0,0,0,0,0,'Stop movement');
INSERT INTO `dbscripts_on_quest_end` VALUES (857,1,0,0,0,0,0,0,2000000240,0,0,0,0,0,0,0,'Say 1');
INSERT INTO `dbscripts_on_quest_end` VALUES (857,3,0,0,0,0,0,0,2000000241,0,0,0,0,0,0,0,'Text emote 1');
INSERT INTO `dbscripts_on_quest_end` VALUES (857,6,0,0,0,0,0,0,2000000242,0,0,0,0,0,0,0,'Say 2');
INSERT INTO `dbscripts_on_quest_end` VALUES (857,9,0,0,0,0,0,0,2000000243,0,0,0,0,0,0,0,'Text emote 2');
INSERT INTO `dbscripts_on_quest_end` VALUES (857,10,15,5142,0,0,0,0,0,0,0,0,0,0,0,0,'cast Troggform');
INSERT INTO `dbscripts_on_quest_end` VALUES (857,16,15,5,0,0,0,4,0,0,0,0,0,0,0,0,'Kill feegly');
DELETE FROM `db_script_string` WHERE `entry` = 2000000240;
DELETE FROM `db_script_string` WHERE `entry` = 2000000241;
DELETE FROM `db_script_string` WHERE `entry` = 2000000242;
DELETE FROM `db_script_string` WHERE `entry` = 2000000243;
INSERT INTO `db_script_string` VALUES (2000000240,'The power of the Tear of the Moons is mine! Mine I say!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,NULL);
INSERT INTO `db_script_string` VALUES (2000000241,'Feegly the Exiled begins to rub the Tear of the Moons.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,2,0,0,NULL);
INSERT INTO `db_script_string` VALUES (2000000242,'Power! Glorious power!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,NULL);
INSERT INTO `db_script_string` VALUES (2000000243,'Feegly the Exiled begins to make strange grunting noises. The Tear of the Moons drops to the ground and shatters.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,2,0,0,NULL);

-- Verog the dervish gets now spawned with command 47 to prevent double spawns
UPDATE `creature_ai_scripts` SET `action2_type` = 47 WHERE `action2_param1` = 3395;

-- Fixed all Bubbly fissures
DELETE FROM `gameobject_template` WHERE `entry` = 177524;
INSERT INTO `gameobject_template` VALUES (177524,6,344,'Bubbly Fissure',0,0,0.1,0,0,8,17775,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');
UPDATE `gameobject` SET `id` = 177524 WHERE `guid` = 13380;
DELETE FROM `gameobject_template` WHERE `entry` = 180057;
INSERT INTO `gameobject_template` VALUES (180057,6,0,'Bubbly Fissure',0,0,0.1,0,0,8,17775,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'');

-- Fixed several problems with quest 877 The Stagnant Oasis
UPDATE `gameobject_template` SET `flags` = 0 WHERE `entry` = 3743;
UPDATE `quest_template` SET `ReqItemId2` = 5068 WHERE `entry` = 877;
UPDATE `quest_template` SET `ReqItemCount2` = 1 WHERE `entry` = 877;
DELETE FROM `gameobject` WHERE `id` = 3743;
INSERT INTO `gameobject` VALUES (55531,3743,1,-1280.23,-3015.37,72.0094,0.630807,0,0,0.3102,0.950671,-60,100,1);
INSERT INTO `gameobject` VALUES (55532,3743,1,-1276.09,-3017.25,72.9672,5.71077,0,0,0.282316,-0.959321,-60,100,1);
INSERT INTO `gameobject` VALUES (55533,3743,1,-1271.2,-3012.87,71.8351,4.22637,0,0,0.856478,-0.516183,-60,100,1);
INSERT INTO `gameobject` VALUES (55534,3743,1,-1273.34,-3007.69,71.6012,2.15527,0,0,0.880841,0.473411,-60,100,1);
INSERT INTO `gameobject` VALUES (55535,3743,1,-1281.12,-3010.96,71.4162,4.1227,0,0,0.882072,-0.471114,-60,100,1);
DELETE FROM `dbscripts_on_event` WHERE `id` = 525;
INSERT INTO `dbscripts_on_event` VALUES (525,2,9,55531,60,0,0,0,0,0,0,0,0,0,0,0,'Spawn Fissure Plant');
INSERT INTO `dbscripts_on_event` VALUES (525,2,9,55532,60,0,0,0,0,0,0,0,0,0,0,0,'Spawn Fissure Plant');
INSERT INTO `dbscripts_on_event` VALUES (525,2,9,55533,60,0,0,0,0,0,0,0,0,0,0,0,'Spawn Fissure Plant');
INSERT INTO `dbscripts_on_event` VALUES (525,2,9,55534,60,0,0,0,0,0,0,0,0,0,0,0,'Spawn Fissure Plant');
INSERT INTO `dbscripts_on_event` VALUES (525,2,9,55535,60,0,0,0,0,0,0,0,0,0,0,0,'Spawn Fissure Plant');
DELETE FROM `gameobject_loot_template` WHERE `entry` = 2603;
INSERT INTO `gameobject_loot_template` VALUES (2603,5066,100,0,1,1,0);
DELETE FROM `gameobject` WHERE `guid` = 55536;
DELETE FROM `gameobject` WHERE `guid` = 55537;
INSERT INTO `gameobject` VALUES (55536,180057,1,-1274.37,-3012.04,72.67,0,0,0,0,0,2,100,1);
INSERT INTO `gameobject` VALUES (55537,180057,1,89.75,-1943.77,80.02,0,0,0,0,0,2,100,1);
DELETE FROM `gameobject_template` WHERE `entry` = 211085;
DELETE FROM `gameobject_template` WHERE `entry` = 211086;

-- correct max Reputation value for quest 9267 Mending old wounds
UPDATE `quest_template` SET `RequiredMaxRepValue` = 42000 WHERE `entry` = 9267;

-- correct all reputation values Darkspear Trolls for The Barrens
UPDATE `quest_template` SET `RewRepValue2` = 50 WHERE `entry` = 6384;
UPDATE `quest_template` SET `RewRepValue2` = 150 WHERE `entry` = 6386;

-- correct Experience for The Barrens
UPDATE `quest_template` SET `RewMoneyMaxLevel` = 600 WHERE `entry` = 822;
UPDATE `quest_template` SET `RewMoneyMaxLevel` = 1980 WHERE `entry` = 1101;
UPDATE `quest_template` SET `RewMoneyMaxLevel` = 1980 WHERE `entry` = 1109;
UPDATE `quest_template` SET `RewMoneyMaxLevel` = 1800 WHERE `entry` = 1142;
UPDATE `quest_template` SET `RewMoneyMaxLevel` = 1800 WHERE `entry` = 1144;
UPDATE `quest_template` SET `RewMoneyMaxLevel` = 780 WHERE `entry` = 1145;
UPDATE `quest_template` SET `RewMoneyMaxLevel` = 1260 WHERE `entry` = 1221;

-- correct all reputation values for The Barrens
UPDATE `quest_template` SET `RewRepValue1` = 100 WHERE `entry` = 819;
UPDATE `quest_template` SET `RewRepValue1` = 150 WHERE `entry` = 821;
UPDATE `quest_template` SET `RewRepValue1` = 50 WHERE `entry` = 822;
UPDATE `quest_template` SET `RewRepValue1` = 100 WHERE `entry` = 843;
UPDATE `quest_template` SET `RewRepValue1` = 100 WHERE `entry` = 844;
UPDATE `quest_template` SET `RewRepValue1` = 100 WHERE `entry` = 845;
UPDATE `quest_template` SET `RewRepValue1` = 100 WHERE `entry` = 846;
UPDATE `quest_template` SET `RewRepValue1` = 100 WHERE `entry` = 848;
UPDATE `quest_template` SET `RewRepValue1` = 100 WHERE `entry` = 849;
UPDATE `quest_template` SET `RewRepValue1` = 75 WHERE `entry` = 850;
UPDATE `quest_template` SET `RewRepValue1` = 75 WHERE `entry` = 851;
UPDATE `quest_template` SET `RewRepValue1` = 75 WHERE `entry` = 852;
UPDATE `quest_template` SET `RewRepValue1` = 75 WHERE `entry` = 853;
UPDATE `quest_template` SET `RewRepValue1` = 150 WHERE `entry` = 855;
UPDATE `quest_template` SET `RewRepValue1` = 100 WHERE `entry` = 858;
UPDATE `quest_template` SET `RewRepValue1` = 140 WHERE `entry` = 863;
UPDATE `quest_template` SET `RewRepValue1` = 100 WHERE `entry` = 865;
UPDATE `quest_template` SET `RewRepValue1` = 100 WHERE `entry` = 867;
UPDATE `quest_template` SET `RewRepValue1` = 100 WHERE `entry` = 868;
UPDATE `quest_template` SET `RewRepValue1` = 100 WHERE `entry` = 869;
UPDATE `quest_template` SET `RewRepValue1` = 75 WHERE `entry` = 870;
UPDATE `quest_template` SET `RewRepValue1` = 100 WHERE `entry` = 871;
UPDATE `quest_template` SET `RewRepValue1` = 100 WHERE `entry` = 872;
UPDATE `quest_template` SET `RewRepValue1` = 150 WHERE `entry` = 873;
UPDATE `quest_template` SET `RewRepValue1` = 100 WHERE `entry` = 875;
UPDATE `quest_template` SET `RewRepValue1` = 150 WHERE `entry` = 876;
UPDATE `quest_template` SET `RewRepValue1` = 100 WHERE `entry` = 877;
UPDATE `quest_template` SET `RewRepValue1` = 100 WHERE `entry` = 878;
UPDATE `quest_template` SET `RewRepValue1` = 75 WHERE `entry` = 879;
UPDATE `quest_template` SET `RewRepValue1` = 100 WHERE `entry` = 880;
UPDATE `quest_template` SET `RewRepValue1` = 150 WHERE `entry` = 881;
UPDATE `quest_template` SET `RewRepValue1` = 150 WHERE `entry` = 882;
UPDATE `quest_template` SET `RewRepValue1` = 75 WHERE `entry` = 883;
UPDATE `quest_template` SET `RewRepValue1` = 75 WHERE `entry` = 884;
UPDATE `quest_template` SET `RewRepValue1` = 75 WHERE `entry` = 885;
UPDATE `quest_template` SET `RewRepValue1` = 75 WHERE `entry` = 887;
UPDATE `quest_template` SET `RewRepValue1` = 100 WHERE `entry` = 888;
UPDATE `quest_template` SET `RewRepFaction1` = 470 WHERE `entry` = 891;
UPDATE `quest_template` SET `RewRepFaction2` = 68 WHERE `entry` = 891;
UPDATE `quest_template` SET `RewRepFaction3` = 76 WHERE `entry` = 891;
UPDATE `quest_template` SET `RewRepFaction4` = 81 WHERE `entry` = 891;
UPDATE `quest_template` SET `RewRepFaction5` = 530 WHERE `entry` = 891;
UPDATE `quest_template` SET `RewRepValue1` = 100 WHERE `entry` = 891;
UPDATE `quest_template` SET `RewRepValue2` = 50 WHERE `entry` = 891;
UPDATE `quest_template` SET `RewRepValue3` = 50 WHERE `entry` = 891;
UPDATE `quest_template` SET `RewRepValue4` = 50 WHERE `entry` = 891;
UPDATE `quest_template` SET `RewRepValue5` = 50 WHERE `entry` = 891;
UPDATE `quest_template` SET `RewRepValue1` = 100 WHERE `entry` = 893;
UPDATE `quest_template` SET `RewRepValue1` = 75 WHERE `entry` = 894;
UPDATE `quest_template` SET `RewRepValue1` = 100 WHERE `entry` = 895;
UPDATE `quest_template` SET `RewRepValue1` = 150 WHERE `entry` = 896;
UPDATE `quest_template` SET `RewRepValue1` = 150 WHERE `entry` = 897;
UPDATE `quest_template` SET `RewRepValue1` = 150 WHERE `entry` = 898;
UPDATE `quest_template` SET `RewRepValue1` = 150 WHERE `entry` = 899;
UPDATE `quest_template` SET `RewRepValue1` = 50 WHERE `entry` = 900;
UPDATE `quest_template` SET `RewRepValue1` = 75 WHERE `entry` = 901;
UPDATE `quest_template` SET `RewRepValue1` = 100 WHERE `entry` = 902;
UPDATE `quest_template` SET `RewRepValue1` = 100 WHERE `entry` = 903;
UPDATE `quest_template` SET `RewRepValue1` = 100 WHERE `entry` = 905;
UPDATE `quest_template` SET `RewRepValue1` = 200 WHERE `entry` = 906;
UPDATE `quest_template` SET `RewRepValue1` = 150 WHERE `entry` = 907;
UPDATE `quest_template` SET `RewRepValue1` = 150 WHERE `entry` = 913;
UPDATE `quest_template` SET `RewRepValue1` = 100 WHERE `entry` = 1060;
UPDATE `quest_template` SET `RewRepValue1` = 150 WHERE `entry` = 1069;
UPDATE `quest_template` SET `RewRepValue1` = 200 WHERE `entry` = 1102;
UPDATE `quest_template` SET `RewRepValue1` = 150 WHERE `entry` = 1109;
UPDATE `quest_template` SET `RewRepValue1` = 150 WHERE `entry` = 1142;
UPDATE `quest_template` SET `RewRepValue1` = 150 WHERE `entry` = 1144;
UPDATE `quest_template` SET `RewRepValue1` = 50 WHERE `entry` = 1145;
UPDATE `quest_template` SET `RewRepValue1` = 100 WHERE `entry` = 1153;
UPDATE `quest_template` SET `RewRepValue1` = 100 WHERE `entry` = 1221;
UPDATE `quest_template` SET `RewRepValue1` = 50 WHERE `entry` = 1492;
UPDATE `quest_template` SET `RewRepValue1` = 100 WHERE `entry` = 3281;
UPDATE `quest_template` SET `RewRepValue1` = 100 WHERE `entry` = 3301;
UPDATE `quest_template` SET `RewRepValue1` = 100 WHERE `entry` = 3369;
UPDATE `quest_template` SET `RewRepValue1` = 100 WHERE `entry` = 3370;
UPDATE `quest_template` SET `RewRepValue1` = 150 WHERE `entry` = 3513;
UPDATE `quest_template` SET `RewRepValue1` = 150 WHERE `entry` = 3514;
UPDATE `quest_template` SET `RewRepFaction1` = 470 WHERE `entry` = 3921;
UPDATE `quest_template` SET `RewRepFaction2` = 68 WHERE `entry` = 3921;
UPDATE `quest_template` SET `RewRepFaction3` = 76 WHERE `entry` = 3921;
UPDATE `quest_template` SET `RewRepFaction4` = 81 WHERE `entry` = 3921;
UPDATE `quest_template` SET `RewRepFaction5` = 530 WHERE `entry` = 3921;
UPDATE `quest_template` SET `RewRepValue1` = 50 WHERE `entry` = 3921;
UPDATE `quest_template` SET `RewRepValue2` = 25 WHERE `entry` = 3921;
UPDATE `quest_template` SET `RewRepValue3` = 25 WHERE `entry` = 3921;
UPDATE `quest_template` SET `RewRepValue4` = 25 WHERE `entry` = 3921;
UPDATE `quest_template` SET `RewRepValue5` = 25 WHERE `entry` = 3921;
UPDATE `quest_template` SET `RewRepFaction1` = 470 WHERE `entry` = 3922;
UPDATE `quest_template` SET `RewRepFaction2` = 68 WHERE `entry` = 3922;
UPDATE `quest_template` SET `RewRepFaction3` = 76 WHERE `entry` = 3922;
UPDATE `quest_template` SET `RewRepFaction4` = 81 WHERE `entry` = 3922;
UPDATE `quest_template` SET `RewRepFaction5` = 530 WHERE `entry` = 3922;
UPDATE `quest_template` SET `RewRepValue1` = 100 WHERE `entry` = 3922;
UPDATE `quest_template` SET `RewRepValue2` = 50 WHERE `entry` = 3922;
UPDATE `quest_template` SET `RewRepValue3` = 50 WHERE `entry` = 3922;
UPDATE `quest_template` SET `RewRepValue4` = 50 WHERE `entry` = 3922;
UPDATE `quest_template` SET `RewRepValue5` = 50 WHERE `entry` = 3922;
UPDATE `quest_template` SET `RewRepFaction1` = 470 WHERE `entry` = 3923;
UPDATE `quest_template` SET `RewRepFaction2` = 68 WHERE `entry` = 3923;
UPDATE `quest_template` SET `RewRepFaction3` = 76 WHERE `entry` = 3923;
UPDATE `quest_template` SET `RewRepFaction4` = 81 WHERE `entry` = 3923;
UPDATE `quest_template` SET `RewRepFaction5` = 530 WHERE `entry` = 3923;
UPDATE `quest_template` SET `RewRepValue1` = 25 WHERE `entry` = 3923;
UPDATE `quest_template` SET `RewRepValue2` = 10 WHERE `entry` = 3923;
UPDATE `quest_template` SET `RewRepValue3` = 10 WHERE `entry` = 3923;
UPDATE `quest_template` SET `RewRepValue4` = 10 WHERE `entry` = 3923;
UPDATE `quest_template` SET `RewRepValue5` = 10 WHERE `entry` = 3923;
UPDATE `quest_template` SET `RewRepFaction1` = 470 WHERE `entry` = 3924;
UPDATE `quest_template` SET `RewRepFaction2` = 68 WHERE `entry` = 3924;
UPDATE `quest_template` SET `RewRepFaction3` = 76 WHERE `entry` = 3924;
UPDATE `quest_template` SET `RewRepFaction4` = 81 WHERE `entry` = 3924;
UPDATE `quest_template` SET `RewRepFaction5` = 530 WHERE `entry` = 3924;
UPDATE `quest_template` SET `RewRepValue1` = 150 WHERE `entry` = 3924;
UPDATE `quest_template` SET `RewRepValue2` = 75 WHERE `entry` = 3924;
UPDATE `quest_template` SET `RewRepValue3` = 75 WHERE `entry` = 3924;
UPDATE `quest_template` SET `RewRepValue4` = 75 WHERE `entry` = 3924;
UPDATE `quest_template` SET `RewRepValue5` = 75 WHERE `entry` = 3924;
UPDATE `quest_template` SET `RewRepValue1` = 150 WHERE `entry` = 4021;
UPDATE `quest_template` SET `RewRepValue1` = 75 WHERE `entry` = 4921;
UPDATE `quest_template` SET `RewRepValue1` = 100 WHERE `entry` = 5041;
UPDATE `quest_template` SET `RewRepValue1` = 75 WHERE `entry` = 5052;
UPDATE `quest_template` SET `RewRepValue1` = 50 WHERE `entry` = 6362;
UPDATE `quest_template` SET `RewRepValue1` = 150 WHERE `entry` = 6364;
UPDATE `quest_template` SET `RewRepValue1` = 50 WHERE `entry` = 6384;
UPDATE `quest_template` SET `RewRepValue1` = 150 WHERE `entry` = 6386;
UPDATE `quest_template` SET `RewRepValue1` = 150 WHERE `entry` = 6543;

-- correct minLevel and Questlevel for The Barrens
UPDATE `quest_template` SET `MinLevel` = 13 WHERE `entry` = 822;
UPDATE `quest_template` SET `MinLevel` = 10 WHERE `entry` = 844;
UPDATE `quest_template` SET `MinLevel` = 17 WHERE `entry` = 846;
UPDATE `quest_template` SET `MinLevel` = 17 WHERE `entry` = 849;
UPDATE `quest_template` SET `MinLevel` = 12 WHERE `entry` = 852;
UPDATE `quest_template` SET `MinLevel` = 10 WHERE `entry` = 853;
UPDATE `quest_template` SET `MinLevel` = 13 WHERE `entry` = 858;
UPDATE `quest_template` SET `MinLevel` = 15 WHERE `entry` = 863;
UPDATE `quest_template` SET `MinLevel` = 16 WHERE `entry` = 873;
UPDATE `quest_template` SET `MinLevel` = 15 WHERE `entry` = 874;
UPDATE `quest_template` SET `MinLevel` = 12 WHERE `entry` = 875;
UPDATE `quest_template` SET `MinLevel` = 13 WHERE `entry` = 876;
UPDATE `quest_template` SET `MinLevel` = 10 WHERE `entry` = 880;
UPDATE `quest_template` SET `MinLevel` = 11 WHERE `entry` = 881;
UPDATE `quest_template` SET `MinLevel` = 10 WHERE `entry` = 883;
UPDATE `quest_template` SET `MinLevel` = 10 WHERE `entry` = 884;
UPDATE `quest_template` SET `MinLevel` = 10 WHERE `entry` = 885;
UPDATE `quest_template` SET `MinLevel` = 10 WHERE `entry` = 888;
UPDATE `quest_template` SET `MinLevel` = 15 WHERE `entry` = 889;
UPDATE `quest_template` SET `MinLevel` = 10 WHERE `entry` = 890;
UPDATE `quest_template` SET `MinLevel` = 10 WHERE `entry` = 892;
UPDATE `quest_template` SET `MinLevel` = 13 WHERE `entry` = 898;
UPDATE `quest_template` SET `MinLevel` = 11 WHERE `entry` = 900;
UPDATE `quest_template` SET `MinLevel` = 11 WHERE `entry` = 901;
UPDATE `quest_template` SET `MinLevel` = 11 WHERE `entry` = 902;
UPDATE `quest_template` SET `MinLevel` = 10 WHERE `entry` = 903;
UPDATE `quest_template` SET `MinLevel` = 11 WHERE `entry` = 905;
UPDATE `quest_template` SET `MinLevel` = 15 WHERE `entry` = 913;
UPDATE `quest_template` SET `MinLevel` = 15 WHERE `entry` = 1060;
UPDATE `quest_template` SET `MinLevel` = 29 WHERE `entry` = 1102;
UPDATE `quest_template` SET `MinLevel` = 25 WHERE `entry` = 1142;
UPDATE `quest_template` SET `MinLevel` = 22 WHERE `entry` = 1144;
UPDATE `quest_template` SET `MinLevel` = 9 WHERE `entry` = 1492;
UPDATE `quest_template` SET `MinLevel` = 13 WHERE `entry` = 3261;
UPDATE `quest_template` SET `MinLevel` = 9 WHERE `entry` = 3281;
UPDATE `quest_template` SET `MinLevel` = 11 WHERE `entry` = 3301;
UPDATE `quest_template` SET `MinLevel` = 15 WHERE `entry` = 3369;
UPDATE `quest_template` SET `MinLevel` = 15 WHERE `entry` = 3370;
UPDATE `quest_template` SET `MinLevel` = 18 WHERE `entry` = 3514;
UPDATE `quest_template` SET `MinLevel` = 10 WHERE `entry` = 3921;
UPDATE `quest_template` SET `MinLevel` = 11 WHERE `entry` = 3922;
UPDATE `quest_template` SET `MinLevel` = 14 WHERE `entry` = 4021;
UPDATE `quest_template` SET `MinLevel` = 15 WHERE `entry` = 5042;
UPDATE `quest_template` SET `MinLevel` = 15 WHERE `entry` = 5043;
UPDATE `quest_template` SET `MinLevel` = 15 WHERE `entry` = 5044;
UPDATE `quest_template` SET `MinLevel` = 15 WHERE `entry` = 5045;
UPDATE `quest_template` SET `MinLevel` = 15 WHERE `entry` = 5046;
UPDATE `quest_template` SET `MinLevel` = 15 WHERE `entry` = 5052;
UPDATE `quest_template` SET `MinLevel` = 10 WHERE `entry` = 6361;
UPDATE `quest_template` SET `MinLevel` = 10 WHERE `entry` = 6385;
UPDATE `quest_template` SET `MinLevel` = 60 WHERE `entry` = 9267;
UPDATE `quest_template` SET `QuestLevel` = 60 WHERE `entry` = 9267;

-- correct Required Races for Quests in the Barrens
UPDATE `quest_template` SET `RequiredRaces` = 178 WHERE `entry` IN (860,1102);
UPDATE `quest_template` SET `RequiredRaces` = 77 WHERE `entry` = 1142;

-- fixing Quest 437 The Death Fields spawnscripts by ghurok
DELETE FROM `areatrigger_involvedrelation` WHERE `id` = 173;
INSERT INTO `areatrigger_involvedrelation` VALUES (173, 437);
UPDATE `quest_template` SET `SpecialFlags` = 2 WHERE `entry` = 437;
DELETE FROM `creature_ai_scripts` WHERE `id` = 177203;
DELETE FROM `creature_ai_scripts` WHERE `id` = 177303;
INSERT INTO `creature_ai_scripts` VALUES (177203, 1772, 6, 0, 10, 0, 0, 0, 0, 0, 47, 1983, 1, 17, 1, 0, 0, 0, 0, 0, 0, 0, 'Rot Hide Gladerunner - On Death Spawn Nightlash');
INSERT INTO `creature_ai_scripts` VALUES (177303, 1773, 6, 0, 10, 0, 0, 0, 0, 0, 47, 1983, 1, 17, 1, 0, 0, 0, 0, 0, 0, 0, 'Rot Hide Mystic - On Death Spawn Nightlash');
DELETE FROM `creature_ai_summons` WHERE `id` = 17;
INSERT INTO `creature_ai_summons` VALUES (17, 1073.84, 1543.37, 28.6752, 0.174533, 300000, '1983');
DELETE FROM `creature` WHERE `guid` = 28379;

-- Spell script for spell 7669 Bethors potion
DELETE FROM `dbscripts_on_spell` WHERE `id` = 7669;
INSERT INTO `dbscripts_on_spell` VALUES (7669,0,14,7656,1,0,0,0,0,0,0,0,0,0,0,0,'Remove Hex of Ravenclaw');
INSERT INTO `dbscripts_on_spell` VALUES (7669,0,14,7657,1,0,0,0,0,0,0,0,0,0,0,0,'Remove Hex of Ravenclaw');

-- fixing Quest 99, 421, 422, 423, 424, 1014 Dalar Dawnweaver now using correct spell
DELETE FROM `dbscripts_on_quest_end` WHERE `id` = 99;
DELETE FROM `dbscripts_on_quest_end` WHERE `id` = 421;
DELETE FROM `dbscripts_on_quest_end` WHERE `id` = 422;
DELETE FROM `dbscripts_on_quest_end` WHERE `id` = 423;
DELETE FROM `dbscripts_on_quest_end` WHERE `id` = 424;
DELETE FROM `dbscripts_on_quest_end` WHERE `id` = 1014;
INSERT INTO `dbscripts_on_quest_end` VALUES (99,0,15,1460,0,0,0,0,0,0,0,0,0,0,0,0,'Cast spell Arcane Intellect on Player');
INSERT INTO `dbscripts_on_quest_end` VALUES (421,0,15,1460,0,0,0,0,0,0,0,0,0,0,0,0,'Cast spell Arcane Intellect on Player');
INSERT INTO `dbscripts_on_quest_end` VALUES (422,0,15,1460,0,0,0,0,0,0,0,0,0,0,0,0,'Cast spell Arcane Intellect on Player');
INSERT INTO `dbscripts_on_quest_end` VALUES (423,0,15,1460,0,0,0,0,0,0,0,0,0,0,0,0,'Cast spell Arcane Intellect on Player');
INSERT INTO `dbscripts_on_quest_end` VALUES (424,0,15,1460,0,0,0,0,0,0,0,0,0,0,0,0,'Cast spell Arcane Intellect on Player');
INSERT INTO `dbscripts_on_quest_end` VALUES (1014,0,15,1460,0,0,0,0,0,0,0,0,0,0,0,0,'Cast spell Arcane Intellect on Player');

-- fixing Quest 452 Pyrewood Ambush , Rewarded Money pre TBC and Rewarded XP pre TBC
UPDATE `quest_template` SET `RewOrReqMoney` = 1400 WHERE `entry` = 452;
UPDATE `quest_template` SET `RewMoneyMaxLevel` = 780 WHERE `entry` = 452;

-- fixing Quest 450 A Recipe for Death, Rewarded Money pre tbc
UPDATE `quest_template` SET `RewOrReqMoney` = 1400 WHERE `entry` = 450;

-- correct all reputation values for Silverpine Forest to pre TBC
UPDATE `quest_template` SET `RewRepValue1` = 150 WHERE `entry` = 99;
UPDATE `quest_template` SET `RewRepValue1` = 100 WHERE `entry` = 421;
UPDATE `quest_template` SET `RewRepValue1` = 100 WHERE `entry` = 422;
UPDATE `quest_template` SET `RewRepValue1` = 100 WHERE `entry` = 423;
UPDATE `quest_template` SET `RewRepValue1` = 100 WHERE `entry` = 424;
UPDATE `quest_template` SET `RewRepValue1` = 75 WHERE `entry` = 425;
UPDATE `quest_template` SET `RewRepValue1` = 50 WHERE `entry` = 429;
UPDATE `quest_template` SET `RewRepValue1` = 75 WHERE `entry` = 430;
UPDATE `quest_template` SET `RewRepValue1` = 100 WHERE `entry` = 435;
UPDATE `quest_template` SET `RewRepValue1` = 100 WHERE `entry` = 437;
UPDATE `quest_template` SET `RewRepValue1` = 50 WHERE `entry` = 438;
UPDATE `quest_template` SET `RewRepValue1` = 50 WHERE `entry` = 440;
UPDATE `quest_template` SET `RewRepValue1` = 50 WHERE `entry` = 441;
UPDATE `quest_template` SET `RewRepValue1` = 100 WHERE `entry` = 442;
UPDATE `quest_template` SET `RewRepValue1` = 100 WHERE `entry` = 443;
UPDATE `quest_template` SET `RewRepValue1` = 100 WHERE `entry` = 447;
UPDATE `quest_template` SET `RewRepValue1` = 50 WHERE `entry` = 448;
UPDATE `quest_template` SET `RewRepValue1` = 50 WHERE `entry` = 449;
UPDATE `quest_template` SET `RewRepValue1` = 150 WHERE `entry` = 450;
UPDATE `quest_template` SET `RewRepValue1` = 200 WHERE `entry` = 451;
UPDATE `quest_template` SET `RewRepValue1` = 150 WHERE `entry` = 452;
UPDATE `quest_template` SET `RewRepValue1` = 50 WHERE `entry` = 460;
UPDATE `quest_template` SET `RewRepValue1` = 50 WHERE `entry` = 461;
UPDATE `quest_template` SET `RewRepValue1` = 100 WHERE `entry` = 477;
UPDATE `quest_template` SET `RewRepValue1` = 75 WHERE `entry` = 478;
UPDATE `quest_template` SET `RewRepValue1` = 100 WHERE `entry` = 479;
UPDATE `quest_template` SET `RewRepValue1` = 100 WHERE `entry` = 480;
UPDATE `quest_template` SET `RewRepValue1` = 150 WHERE `entry` = 491;
UPDATE `quest_template` SET `RewRepValue1` = 75 WHERE `entry` = 493;
UPDATE `quest_template` SET `RewRepValue1` = 75 WHERE `entry` = 516;
UPDATE `quest_template` SET `RewRepValue1` = 100 WHERE `entry` = 530;
UPDATE `quest_template` SET `RewRepValue1` = 50 WHERE `entry` = 6323;
UPDATE `quest_template` SET `RewRepValue1` = 150 WHERE `entry` = 6324;
UPDATE `quest_template` SET `RewRepValue1` = 100 WHERE `entry` = 1358;

-- correct minLevel for Silverpine Forest
UPDATE `quest_template` SET `MinLevel` = 12 WHERE `entry` = 99;
UPDATE `quest_template` SET `MinLevel` = 9 WHERE `entry` = 421;
UPDATE `quest_template` SET `MinLevel` = 9 WHERE `entry` = 422;
UPDATE `quest_template` SET `MinLevel` = 10 WHERE `entry` = 423;
UPDATE `quest_template` SET `MinLevel` = 12 WHERE `entry` = 424;
UPDATE `quest_template` SET `MinLevel` = 10 WHERE `entry` = 429;
UPDATE `quest_template` SET `MinLevel` = 10 WHERE `entry` = 435;
UPDATE `quest_template` SET `MinLevel` = 10 WHERE `entry` = 437;
UPDATE `quest_template` SET `MinLevel` = 10 WHERE `entry` = 438;
UPDATE `quest_template` SET `MinLevel` = 12 WHERE `entry` = 440;
UPDATE `quest_template` SET `MinLevel` = 12 WHERE `entry` = 441;
UPDATE `quest_template` SET `MinLevel` = 12 WHERE `entry` = 443;
UPDATE `quest_template` SET `MinLevel` = 13 WHERE `entry` = 444;
UPDATE `quest_template` SET `MinLevel` = 13 WHERE `entry` = 446;
UPDATE `quest_template` SET `MinLevel` = 9 WHERE `entry` = 447;
UPDATE `quest_template` SET `MinLevel` = 12 WHERE `entry` = 448;
UPDATE `quest_template` SET `MinLevel` = 10 WHERE `entry` = 449;
UPDATE `quest_template` SET `MinLevel` = 11 WHERE `entry` = 450;
UPDATE `quest_template` SET `MinLevel` = 14 WHERE `entry` = 451;
UPDATE `quest_template` SET `MinLevel` = 13 WHERE `entry` = 452;
UPDATE `quest_template` SET `MinLevel` = 13 WHERE `entry` = 461;
UPDATE `quest_template` SET `MinLevel` = 11 WHERE `entry` = 479;
UPDATE `quest_template` SET `MinLevel` = 12 WHERE `entry` = 480;
UPDATE `quest_template` SET `MinLevel` = 11 WHERE `entry` = 481;
UPDATE `quest_template` SET `MinLevel` = 11 WHERE `entry` = 482;
UPDATE `quest_template` SET `MinLevel` = 12 WHERE `entry` = 530;
UPDATE `quest_template` SET `MinLevel` = 10 WHERE `entry` = 3221;
UPDATE `quest_template` SET `MinLevel` = 10 WHERE `entry` = 1358;
UPDATE `quest_template` SET `MinLevel` = 10 WHERE `entry` = 1359;

-- correct Required Races for all Quests in Silverpine Forest and two in UC which are horde only. Quest 99, 421, 422, 423, 424, 425, 428, 429, 430, 435, 437, 438, 440,
-- 441, 442, 443, 444, 446, 447, 448, 449, 450, 451, 452, 460, 461, 477, 478, 479, 480, 481, 482, 491, 493, 516, 530, 3221, 1358, 1359
UPDATE `quest_template` SET `RequiredRaces` = 178 WHERE `entry` IN (99,421,422,423,424,425,428,429,430,435,437,438,440,441,442,443,444,446,447);
UPDATE `quest_template` SET `RequiredRaces` = 178 WHERE `entry` IN (448,449,450,451,452,460,461,477,478,479,480,481,482,491,493,516,530,3221,1358,1359);

-- scripted the quest end script for quest 771 Rite of vision
DELETE FROM `dbscripts_on_quest_end` WHERE `id` = 771;
INSERT INTO `dbscripts_on_quest_end` VALUES (771,0,15,5026,0,0,0,0,0,0,0,0,0,0,0,0,'Cast Water of seers');
INSERT INTO `dbscripts_on_quest_end` VALUES (771,0,0,2,0,0,0,0,2000000179,0,0,0,0,0,0,0,'Text emote');
INSERT INTO `dbscripts_on_quest_end` VALUES (771,8,0,0,3,0,0,0,2000000180,0,0,0,0,0,0,0,'Zarlman Say');
DELETE FROM `db_script_string` WHERE `entry` = 2000000179;
DELETE FROM `db_script_string` WHERE `entry` = 2000000180;
INSERT INTO `db_script_string` VALUES (2000000179,"Zarlman Two-Moons begins chanting as he mixes the well stones and ambercom before the Tribal Fire.",NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,2,0,0,NULL);
INSERT INTO `db_script_string` VALUES (2000000180,"The Water of the Seers is ready for your consumption, $N.",NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,3,0,NULL);

-- Fixing Quest 772 Rite of vision
UPDATE `quest_template` SET `RewSpellCast` = 0 WHERE `entry` = 772;
UPDATE `quest_template` SET `CompleteScript` = 772 WHERE `entry` = 772;
DELETE FROM `dbscripts_on_quest_end` WHERE `id` = 772;
INSERT INTO `dbscripts_on_quest_end` VALUES (772,0,15,1126,0,0,0,0,0,0,0,0,0,0,0,0,'Cast spell Motw on Player');
UPDATE `creature_template` SET `MovementType` = 2 WHERE `entry` = 2983;
DELETE FROM `dbscripts_on_creature_movement` WHERE `id` = 298301;
INSERT INTO `dbscripts_on_creature_movement` VALUES (298301,4,18,0,0,0,0,0,0,0,0,0,0,0,0,0,'despawn self, with delay');
DELETE FROM `creature_movement_template` WHERE `entry` = 2983;
INSERT INTO `creature_movement_template` VALUES
(2983,1,-2226.32,-408.095,-9.36235,0,0,0,0,0,0,0,0,0,0,0,0,0),
(2983,2,-2203.04,-437.212,-5.72498,0,0,0,0,0,0,0,0,0,0,0,0,0),
(2983,3,-2163.91,-457.851,-7.09049,0,0,0,0,0,0,0,0,0,0,0,0,0),
(2983,4,-2123.87,-448.137,-9.29591,0,0,0,0,0,0,0,0,0,0,0,0,0),
(2983,5,-2104.66,-427.166,-6.49513,0,0,0,0,0,0,0,0,0,0,0,0,0),
(2983,6,-2101.48,-422.826,-5.3567,0,0,0,0,0,0,0,0,0,0,0,0,0),
(2983,7,-2097.56,-417.083,-7.16716,0,0,0,0,0,0,0,0,0,0,0,0,0),
(2983,8,-2084.87,-398.626,-9.88973,0,0,0,0,0,0,0,0,0,0,0,0,0),
(2983,9,-2072.71,-382.324,-10.2488,0,0,0,0,0,0,0,0,0,0,0,0,0),
(2983,10,-2054.05,-356.728,-6.22468,0,0,0,0,0,0,0,0,0,0,0,0,0),
(2983,11,-2051.8,-353.645,-5.35791,0,0,0,0,0,0,0,0,0,0,0,0,0),
(2983,12,-2049.08,-349.912,-6.15723,0,0,0,0,0,0,0,0,0,0,0,0,0),
(2983,13,-2030.6,-310.724,-9.59302,0,0,0,0,0,0,0,0,0,0,0,0,0),
(2983,14,-2002.15,-249.308,-10.8124,0,0,0,0,0,0,0,0,0,0,0,0,0),
(2983,15,-1972.85,-195.811,-10.6316,0,0,0,0,0,0,0,0,0,0,0,0,0),
(2983,16,-1940.93,-147.652,-11.7055,0,0,0,0,0,0,0,0,0,0,0,0,0),
(2983,17,-1888.06,-81.943,-11.4404,0,0,0,0,0,0,0,0,0,0,0,0,0),
(2983,18,-1837.05,-34.0109,-12.258,0,0,0,0,0,0,0,0,0,0,0,0,0),
(2983,19,-1796.12,-14.6462,-10.3581,0,0,0,0,0,0,0,0,0,0,0,0,0),
(2983,20,-1732.61,-4.27746,-10.0213,0,0,0,0,0,0,0,0,0,0,0,0,0),
(2983,21,-1688.94,-0.829945,-11.7103,0,0,0,0,0,0,0,0,0,0,0,0,0),
(2983,22,-1681.32,13.0313,-9.48056,0,0,0,0,0,0,0,0,0,0,0,0,0),
(2983,23,-1677.04,36.8349,-7.10318,0,0,0,0,0,0,0,0,0,0,0,0,0),
(2983,24,-1675.2,68.559,-8.95384,0,0,0,0,0,0,0,0,0,0,0,0,0),
(2983,25,-1676.57,89.023,-9.65104,0,0,0,0,0,0,0,0,0,0,0,0,0),
(2983,26,-1678.16,110.939,-10.1782,0,0,0,0,0,0,0,0,0,0,0,0,0),
(2983,27,-1677.86,128.681,-5.73869,0,0,0,0,0,0,0,0,0,0,0,0,0),
(2983,28,-1675.27,144.324,-3.47916,0,0,0,0,0,0,0,0,0,0,0,0,0),
(2983,29,-1671.7,163.169,-1.23098,0,0,0,0,0,0,0,0,0,0,0,0,0),
(2983,30,-1666.61,181.584,5.26145,0,0,0,0,0,0,0,0,0,0,0,0,0),
(2983,31,-1661.51,196.154,8.95252,0,0,0,0,0,0,0,0,0,0,0,0,0),
(2983,32,-1655.47,210.811,8.38727,0,0,0,0,0,0,0,0,0,0,0,0,0),
(2983,33,-1647.07,226.947,5.27755,0,0,0,0,0,0,0,0,0,0,0,0,0),
(2983,34,-1621.65,232.91,2.69579,0,0,0,0,0,0,0,0,0,0,0,0,0),
(2983,35,-1600.23,237.641,2.98539,0,0,0,0,0,0,0,0,0,0,0,0,0),
(2983,36,-1576.07,242.546,4.66541,0,0,0,0,0,0,0,0,0,0,0,0,0),
(2983,37,-1554.57,248.494,6.60377,0,0,0,0,0,0,0,0,0,0,0,0,0),
(2983,38,-1547.53,259.302,10.6741,0,0,0,0,0,0,0,0,0,0,0,0,0),
(2983,39,-1541.7,269.847,16.4418,0,0,0,0,0,0,0,0,0,0,0,0,0),
(2983,40,-1539.83,278.989,21.0597,0,0,0,0,0,0,0,0,0,0,0,0,0),
(2983,41,-1540.16,290.219,27.8247,0,0,0,0,0,0,0,0,0,0,0,0,0),
(2983,42,-1538.99,298.983,34.0032,0,0,0,0,0,0,0,0,0,0,0,0,0),
(2983,43,-1540.38,307.337,41.3557,0,0,0,0,0,0,0,0,0,0,0,0,0),
(2983,44,-1536.61,314.884,48.0179,0,0,0,0,0,0,0,0,0,0,0,0,0),
(2983,45,-1532.42,323.277,55.6667,0,0,0,0,0,0,0,0,0,0,0,0,0),
(2983,46,-1528.77,329.774,61.1525,0,0,0,0,0,0,0,0,0,0,0,0,0),
(2983,47,-1525.65,333.18,63.2161,0,0,0,0,0,0,0,0,0,0,0,0,0),
(2983,48,-1517.01,350.713,62.4286,0,0,0,0,0,0,0,0,0,0,0,0,0),
(2983,49,-1511.39,362.537,62.4539,0,0,0,0,0,0,0,0,0,0,0,0,0),
(2983,50,-1511.23,362.934,62.452,5000,298301,0,0,0,0,0,0,0,0,1.058,0,0);

-- fixing the "you learn spell" from quest window, fixing the not enough mana bug, for quest 755 Rites of the Earthmother
UPDATE `quest_template` SET `RewSpellCast` = 0 WHERE `entry` = 755;
UPDATE `quest_template` SET `CompleteScript` = 755 WHERE `entry` = 755;
DELETE FROM `dbscripts_on_quest_end` WHERE `id` = 755;
INSERT INTO `dbscripts_on_quest_end` VALUES (755,0,15,1126,0,0,0,0,0,0,0,0,0,0,0,0,'Cast spell Motw on Player');

-- Fixing Quest 750 The Hunt continues Questtext
UPDATE `quest_template` SET `OfferRewardText` = "The tauren of Narache thank you for these provisions, $N. With your skill in the ways of the hunt you will surely be revered in Thunder Bluff someday." WHERE `entry` = 750;

-- Fixing Quest 747 The Hunt begins Questtext
UPDATE `quest_template` SET `OfferRewardText` = "The tauren of Narache thank you, $N. You show much promise." WHERE `entry` = 747;

-- correct all reputation values for Mulgore
UPDATE `quest_template` SET `RewRepValue1` = 100 WHERE `entry` = 743;
UPDATE `quest_template` SET `RewRepValue1` = 100 WHERE `entry` = 745;
UPDATE `quest_template` SET `RewRepValue1` = 100 WHERE `entry` = 746;
UPDATE `quest_template` SET `RewRepValue1` = 100 WHERE `entry` = 747;
UPDATE `quest_template` SET `RewRepValue1` = 100 WHERE `entry` = 748;
UPDATE `quest_template` SET `RewRepValue1` = 75 WHERE `entry` = 749;
UPDATE `quest_template` SET `RewRepValue1` = 100 WHERE `entry` = 750;
UPDATE `quest_template` SET `RewRepValue1` = 75 WHERE `entry` = 751;
UPDATE `quest_template` SET `RewRepValue1` = 50 WHERE `entry` = 752;
UPDATE `quest_template` SET `RewRepValue1` = 100 WHERE `entry` = 753;
UPDATE `quest_template` SET `RewRepValue1` = 100 WHERE `entry` = 754;
UPDATE `quest_template` SET `RewRepValue1` = 100 WHERE `entry` = 755;
UPDATE `quest_template` SET `RewRepValue1` = 100 WHERE `entry` = 756;
UPDATE `quest_template` SET `RewRepValue1` = 150 WHERE `entry` = 757;
UPDATE `quest_template` SET `RewRepValue1` = 100 WHERE `entry` = 758;
UPDATE `quest_template` SET `RewRepValue1` = 100 WHERE `entry` = 759;
UPDATE `quest_template` SET `RewRepValue1` = 150 WHERE `entry` = 760;
UPDATE `quest_template` SET `RewRepValue1` = 150 WHERE `entry` = 761;
UPDATE `quest_template` SET `RewRepValue1` = 75 WHERE `entry` = 763;
UPDATE `quest_template` SET `RewRepValue1` = 100 WHERE `entry` = 764;
UPDATE `quest_template` SET `RewRepValue1` = 100 WHERE `entry` = 765;
UPDATE `quest_template` SET `RewRepValue1` = 100 WHERE `entry` = 766;
UPDATE `quest_template` SET `RewRepValue1` = 100 WHERE `entry` = 770;
UPDATE `quest_template` SET `RewRepValue1` = 100 WHERE `entry` = 771;
UPDATE `quest_template` SET `RewRepValue1` = 75 WHERE `entry` = 772;
UPDATE `quest_template` SET `RewRepValue1` = 100 WHERE `entry` = 773;
UPDATE `quest_template` SET `RewRepValue1` = 50 WHERE `entry` = 775;
UPDATE `quest_template` SET `RewRepValue1` = 150 WHERE `entry` = 776;
UPDATE `quest_template` SET `RewRepValue1` = 150 WHERE `entry` = 780;
UPDATE `quest_template` SET `RewRepValue1` = 100 WHERE `entry` = 781;
UPDATE `quest_template` SET `RewRepValue1` = 75 WHERE `entry` = 833;
UPDATE `quest_template` SET `RewRepValue1` = 100 WHERE `entry` = 861;
UPDATE `quest_template` SET `RewRepValue1` = 200 WHERE `entry` = 3376;

-- correct minLevel for Mulgore
UPDATE `quest_template` SET `MinLevel` = 1 WHERE `entry` = 750;
UPDATE `quest_template` SET `MinLevel` = 5 WHERE `entry` = 751;
UPDATE `quest_template` SET `MinLevel` = 4 WHERE `entry` = 754;
UPDATE `quest_template` SET `MinLevel` = 1 WHERE `entry` = 755;
UPDATE `quest_template` SET `MinLevel` = 5 WHERE `entry` = 756;
UPDATE `quest_template` SET `MinLevel` = 5 WHERE `entry` = 758;
UPDATE `quest_template` SET `MinLevel` = 7 WHERE `entry` = 759;
UPDATE `quest_template` SET `MinLevel` = 7 WHERE `entry` = 760;
UPDATE `quest_template` SET `MinLevel` = 3 WHERE `entry` = 763;
UPDATE `quest_template` SET `MinLevel` = 5 WHERE `entry` = 765;
UPDATE `quest_template` SET `MinLevel` = 5 WHERE `entry` = 766;
UPDATE `quest_template` SET `MinLevel` = 4 WHERE `entry` = 772;
UPDATE `quest_template` SET `MinLevel` = 4 WHERE `entry` = 773;
UPDATE `quest_template` SET `MinLevel` = 6 WHERE `entry` = 775;
UPDATE `quest_template` SET `MinLevel` = 7 WHERE `entry` = 776;
UPDATE `quest_template` SET `MinLevel` = 3 WHERE `entry` = 781;

-- correct Required Races for Quests in Mulgore which are horde only. Quest 743, 745, 746, 749, 750, 751,
-- 752, 753, 755, 757, 761, 763, 764, 765, 766, 767, 770, 771, 772, 773, 775, 776, 780, 781, 833, 861, 1656, 3376
UPDATE `quest_template` SET `RequiredRaces` = 178 WHERE `entry` IN (743,745,746,749,750,751,752,753,755,757,761,763,764,765,766,767,770,771,772,773,775,776,780,781,833,861,1656,3376);

-- Added Quest start script for quest 804 Sarkoth and removed wrong start script from quest 790 sarkoth part 1
UPDATE `quest_template` SET `CompleteEmote` = 0 WHERE `entry` = 790;
UPDATE `quest_template` SET `StartScript` = 0 WHERE `entry` = 790;
UPDATE `quest_template` SET `StartScript` = 804 WHERE `entry` = 804;
DELETE FROM `dbscripts_on_quest_start` WHERE `id` = 790;
DELETE FROM `dbscripts_on_quest_start` WHERE `id` = 804;
INSERT INTO `dbscripts_on_quest_start` VALUES (804,2,28,8,0,0,0,0,0,0,0,0,0,0,0,0,'Hana zua Kneel');
INSERT INTO `dbscripts_on_quest_start` VALUES (804,3,0,0,0,0,0,0,2000005017,0,0,0,0,0,0,0,'Hana zua say');
INSERT INTO `dbscripts_on_quest_start` VALUES (804,7,28,7,0,0,0,0,0,0,0,0,0,0,0,0,'Hana zua death state');

-- scripted the quest end script for quest 808 Minshinas Skull
UPDATE `creature_template` SET `MovementType` = 0 WHERE `entry` = 3289;
UPDATE `quest_template` SET `CompleteScript` = 808 WHERE `entry` = 808;
DELETE FROM `dbscripts_on_quest_end` WHERE `id` = 808;
INSERT INTO `dbscripts_on_quest_end` VALUES (808,0,10,3289,20000,0,0,0,0,0,0,0,-823.88,-4924.51,19.71,1.89,'Summon Minshinas Ghost');
INSERT INTO `dbscripts_on_quest_end` VALUES (808,1,0,0,0,0,0,0,2000000808,0,0,0,0,0,0,0,'Gadrin Say');
INSERT INTO `dbscripts_on_quest_end` VALUES (808,3,1,2,0,3289,20,0,0,0,0,0,0,0,0,0,'Minshina Bow');
DELETE FROM `db_script_string` WHERE `entry` = 2000000808;
INSERT INTO `db_script_string` VALUES (2000000808,"I thank you. $n. And my brother thanks you.",NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,NULL);

-- Quest 842 Crossroads Conscription Offer Reward text fixed. removing $ sign
UPDATE `quest_template` SET `OfferRewardText` = "Alright, $n. You want to earn your keep with the Horde? Well there's plenty to do here, so listen close and do what you're told.$B$B$GI see that look in your eyes, do not think I will tolerate any insolence. Thrall himself has declared the Hordes females to be on equal footing with you men. Disrespect me in the slightest, and you will know true pain.:I'm happy to have met you. Thrall will be glad to know that more females like you and I are taking the initiative to push forward in the Barrens.;" WHERE `entry` = 842;

-- Quest 809 Ak Zeloth removing wrong objective text
UPDATE `quest_template` SET `EndText` = "" WHERE `entry` = 809;
UPDATE `quest_template` SET `ObjectiveText1` = "" WHERE `entry` = 809;

-- SILVERPINE FIXES START HERE

-- The Hunt Begins (747) correct OfferRewardText. Thanks Ghurok.
UPDATE `quest_template` SET `OfferRewardText`='The Tauren of Narache thank you, $N. You show much promise.' WHERE `entry`=747;

-- The Hunt Continues (750) correct OfferRewardText. Thanks Ghurok.
UPDATE `quest_template` SET `OfferRewardText`='The Tauren of Narache thank you for these provisions, $N. With your skill in the ways of the hunt you will surely be revered in Thunder Bluff someday.' WHERE `entry`=750;

-- Change npcflag for Ayanna Everstride (3596). Thanks Ghurok.
UPDATE `creature_template` SET `npcflag`=19 WHERE `entry`=3596;

-- Item Westfall Stew Recipe (2832) correct page_text. Thanks Ghurok.
UPDATE `page_text` SET `text`='Westfall Stew$B$B3 parts Stringy Vulture Meat$B3 Goretusk Snouts$B3 Murloc Eyes$B3 Okra$B$BMix together and bring to a boil.  Let simmer for at least two hours before serving.' WHERE `entry`=213;

-- Add gossip flag to Zargh (3489). Thanks Ghurok.
UPDATE `creature_template` SET `npcflag`=7 WHERE `entry`=3489;

-- Despawn object Blood Filled Orb from Ragefire Chasm. Didn't exist in 1.12.1. Thanks Therilith.
DELETE FROM `gameobject` WHERE `id`=182024;

-- Despawn object Mudsprocket (sign). Didn't exist in 1.12.1. Thanks Therilith.
DELETE FROM `gameobject` WHERE `id`=186241;

-- Despawn object Brackenwall Village (sign). Didn't exist in 1.12.1. Thanks Therilith.
DELETE FROM `gameobject` WHERE `id`=186241;

-- Add mount to a specific Warsong Outrider (12864). Thanks Ghurok.
UPDATE `creature_addon` SET `mount`=2326 WHERE `guid`=52348;

-- Remove RequestItemsText from quest Speak with Gramma (111). Thanks Therilith.
UPDATE `quest_template` SET `RequestItemsText`="" WHERE `entry`=111;

-- Tinkmaster Overspark (2923) correct OfferRewardText. Thanks Ghurok.
UPDATE `quest_template` SET `OfferRewardText`="Yes it's true. Techbot has gone rogue! Please, can you help me?" WHERE `entry`=2923;

-- Set RequiredRaces to Troll only for quest Simple Table (3065). Thanks Ghurok.
UPDATE `quest_template` SET `RequiredRaces`=128 WHERE `entry`=3065;

-- Remove quest Touch of Weakness (5659) from being available in-game. Thanks Ghurok.
DELETE FROM `creature_questrelation` WHERE `id`=2129 AND `quest`=5659;

-- Remove Urok Doomhowl from always being spawned in LBRS. Thanks Ghurok.
DELETE FROM `creature` WHERE `guid`=44457;

-- Rot Hide Mongrel (1675) and Maggot Eye (1753) will no longer cast Curse of Thule (3237) on themselves. Thanks Ghurok.
UPDATE `creature_ai_scripts` SET `action1_param2`=1 WHERE `id`=167502;
UPDATE `creature_ai_scripts` SET `action1_param2`=1 WHERE `id`=175302;

-- Add gossip to npc Itharius (5353) for quest chain. Thanks Ghurok.
SET @CONDITION_ENTRY                   = 719;

UPDATE `creature_template` SET `gossip_menu_id`=1341 WHERE `entry`=5353;

DELETE FROM `conditions` WHERE `condition_entry`=@CONDITION_ENTRY;
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`) VALUES
(@CONDITION_ENTRY, 2, 10455, 1);

DELETE FROM `gossip_menu` WHERE `entry` IN (1366, 1365, 1364, 1363, 1341);
INSERT INTO `gossip_menu` (`entry`, `text_id`) VALUES
(1366, 1997),
(1365, 1998),
(1364, 1999),
(1363, 1996),
(1341, 1995);

DELETE FROM `gossip_menu_option` WHERE `menu_id` IN (1366, 1365, 1364, 1341);
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_script_id`, `condition_id`) VALUES
(1366, 0, 'What happened to him in the first place?  When I... encountered him, he was rather malicious.', 1, 1, 1365, 0, 0),
(1365, 0, 'I possess part of Eranikus\' essence.  What do you want with it... or with me?', 1, 1, 1364, 0, 0),
(1364, 0, 'I will consider what you have told me.', 1, 1, -1, 1364, 0),
(1341, 1, 'Do you know someone... or something, rather, by the name of Eranikus?', 1, 1, 1366, 0, @CONDITION_ENTRY),
(1341, 0, 'What\'s an elf like you doing inside a cave like this?', 1, 1, 1363, 0, 0);

DELETE FROM `dbscripts_on_gossip` WHERE `id`=1364;
INSERT INTO `dbscripts_on_gossip` (`id`, `delay`, `command`, `datalong`, `comments`) VALUES
(1364, 0, 15, 12578, 'cast Create Oathstone of Ysera\'s Dragonflight');

-- Add gossip to object Altar of Suntara (148498). Script still missing however. Thanks Ghurok.
SET @CONDITION_ENTRY                   = 720;
SET @CONDITION_QUESTTAKEN              = 9;
SET @QUEST_RISE_OBSIDION               = 3566;

DELETE FROM `conditions` WHERE `condition_entry`=@CONDITION_ENTRY;
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`) VALUES
(@CONDITION_ENTRY, @CONDITION_QUESTTAKEN, @QUEST_RISE_OBSIDION);

DELETE FROM `gossip_menu` WHERE `entry`=1282;
INSERT INTO `gossip_menu` (`entry`, `text_id`) VALUES
(1282, 1918);

DELETE FROM `gossip_menu_option` WHERE `menu_id`=1282;
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`, `npc_option_npcflag`, `condition_id`) VALUES
(1282, 0, 0, 'Touch the Suntara stone and call forth Lathoric the Black and his guardian, Obsidion.', 1, 1, @CONDITION_ENTRY);

-- Set RequiredRaces to Horde for quest The Lost Report (1238). Thanks Ghurok.
UPDATE `quest_template` SET `RequiredRaces`=178 WHERE `entry`=1238;

-- Set RequiredRaces to 0 for quest In Eranikus' Own Words (3512). Thanks Ghurok.
UPDATE `quest_template` SET `RequiredRaces`=0 WHERE `entry`=3512;

-- Add gossip to npc Roberto Pupellyverbos (277). Thanks Ghurok.
UPDATE `creature_template` SET `gossip_menu_id`=685, `npcflag`=5 WHERE `entry`=277;

-- Add gossip to npc Elaine Trias (483). Thanks Ghurok.
UPDATE `creature_template` SET `gossip_menu_id`=685, `npcflag`=5 WHERE `entry`=483;

-- Add script to quest Freed from the Hive (4265). Thanks Ghurok.
SET @DB_SCRIPT_STRING1=2000005395;
SET @DB_SCRIPT_STRING2=2000005396;

DELETE FROM `dbscripts_on_quest_start` WHERE `id`=4265;
INSERT INTO `dbscripts_on_quest_start` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
(4265, 1, 10, 9546, 12000, 0, 0, 0, 0, 0, 0, 0, -5323.11, 431.63, 12.11, 3.6, 'Spawn/despawn Raschal the Courier'),
(4265, 2, 0, 0, 0, 9546, 30, 0, @DB_SCRIPT_STRING1, 0, 0, 0, 0, 0, 0, 0, 'Raschal the Courier Gossip 1'),
(4265, 2, 1, 64, 0, 9546, 30, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Emote Stun - Raschal the Courier'),
(4265, 6, 1, 0, 0, 9546, 30, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Emote None - Raschal the Courier'),
(4265, 7, 0, 0, 0, 9546, 30, 0, @DB_SCRIPT_STRING2, 0, 0, 0, 0, 0, 0, 0, 'Raschal the Courier Gossip 2'),
(4265, 7, 1, 1, 0, 9546, 30, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Emote Talk - Raschal the Courier'),
(4265, 12, 1, 2, 0, 9546, 30, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Emote Bow - Raschal the Courier'),
(4265, 14, 7, 4265, 80, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Complete quest objective');

DELETE FROM `db_script_string` WHERE `entry` IN (@DB_SCRIPT_STRING1, @DB_SCRIPT_STRING2);
INSERT INTO `db_script_string` (`entry`, `content_default`) VALUES
(@DB_SCRIPT_STRING1, 'Oh man, I thought I was dead for sure. Ugh... still dizzy...'),
(@DB_SCRIPT_STRING2, 'I can get back to the Stronghold on my own, I think. Now that you bought me some time, I should be able to stealth out of here. Who ever you are... thank you. May Elune bless you always!');

-- Improve the position of Andruin Wrynn, Highlord Bolvar Fordragon and Lady Katrana Prestor. Thanks Ghurok.
UPDATE `creature` SET `position_x`='-8439.71', `position_y`='331.023', `position_z`='122.579',`orientation`='2.34047' WHERE `id`=1747;
UPDATE `creature` SET `position_x`='-8439.98', `position_y`='329.392', `position_z`='122.579',`orientation`='2.293' WHERE `id`=1748;
UPDATE `creature` SET `position_x`='-8437.94', `position_y`='331.014', `position_z`='122.579',`orientation`='2.34047' WHERE `id`=1749;

-- Add gossip to npc Koma (3318). Thanks Ghurok.
UPDATE `creature_template` SET `gossip_menu_id`=1623, `npcflag`=257 WHERE `entry`=3318;

-- Despawn the Burning Felhound (10261) in Blackrock Spire. Should only be spawned when summoned. Thanks Ghurok.
DELETE FROM `creature` WHERE `id`=10261;

-- Add gossip to npc Salfa (11556). Thanks Ghurok.
UPDATE `creature_template` SET `gossip_menu_id`=3624 WHERE `entry`=11556;

-- Make npc Precious (14528) not fall through the ground. Temporary fix, should patrol instead. Thanks Ghurok.
UPDATE `creature` SET `position_z`='-265.614' WHERE `id`=14528;

-- Spawn two missing npc Horde Warbringer (15350). Thanks Ghurok.
SET @GUID1 = 151178;
SET @GUID2 = 151179;

DELETE FROM `creature` WHERE `guid` IN (@GUID1, @GUID2);
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(@GUID1, 15350, 0, 15387, 0, 382.39, -983.139, 109.899, 2.7861, 300, 0, 0, 2148, 0, 0, 0),
(@GUID2, 15350, 1, 15387, 0, 1026.63, -2110.69, 123.007, 5.84961, 300, 0, 0, 2148, 0, 0, 0);

-- Spawn one missing npc Alliance Brigadier General (15351). Thanks Ghurok.
SET @GUID = 151180;

DELETE FROM `creature` WHERE `guid` IN (@GUID);
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(@GUID, 15351, 0, 15389, 0, -1231.51, -2510.64, 23.053, 4.4196, 300, 0, 0, 3857, 0, 0, 0);

-- Add gossip_menu for object Tablet of Theka (142715). Thanks Ghurok.
DELETE FROM `gossip_menu` WHERE `entry`=1053;
INSERT INTO `gossip_menu` (`entry`, `text_id`) VALUES (1053, 1653);

-- Add gossip_menu for object Catalogue of the Wayward (176192). Thanks Ghurok.
DELETE FROM `gossip_menu` WHERE `entry`=3083;
INSERT INTO `gossip_menu` (`entry`, `text_id`) VALUES (3083, 3815);

-- Correct page_text for item The Collector's Schedule (2223). Thanks Ghurok.
UPDATE `page_text` SET `text`='Below is the process and schedule of Defias gold collection from the mines of Elwynn to our headquarters in Westfall.$B$BCollection Schedule:$B$BSunday: 12:30pm$BWednesday: 12:30pm$B$BBy each specified day, gold gained from the Elwynn mines will be gathered at the Brackwell pumpkin patch.  The agent in charge of these gatherings, \"The Collector,\" will be known by the engraved ring he possesses.  A ring I gave him. ' WHERE `entry`=79;
UPDATE `page_text` SET `text`='A party from Defias headquarters will contact the Collector, after which he will transfer the gathered gold.$B$BBe sure this process is performed without fail and with utmost discretion.  The Collector is responsible for the transfer of gold, but ultimately it is the responsibility of each member of the Defias Brotherhood to ensure that his role is acted out with attention and discipline. ' WHERE `entry`=250;
UPDATE `page_text` SET `text`='Remember, my brothers, we were once proud craftsmen.  We\'ll perform our current duties with the same precision we used in our past trade.$B$B-EVC ' WHERE `entry`=251;

-- Correct page_text for item Deathstalker Report (3252). Thanks Ghurok.
UPDATE `page_text` SET `text`='Deathstalker Mission Report$B$BAgents: Rane Yorick, Quinn Yorick, Erland McKree$B$BPrimary mission: perform reconnaissance through northern silverpine, and determine threat levels of wildlife and Scourge. ' WHERE `entry`=380;
UPDATE `page_text` SET `text`='Agents commenced sweep, finding significant worg presence.  Recommend hunting squads dispatched to reduce this threat.$B$BUndead gnolls were found at the farm steading dubbed The Dead Field.  Their purpose at the farm is not known, though their movements and level of readiness suggest imminent military action.  In the time they were observed, no notable leaders were found among the gnolls.  It is assumed they await the arrival of leadership or reinforcements. ' WHERE `entry`=381;
UPDATE `page_text` SET `text`='Continuing the sweep, our agents were detained at Ivar\'s farm.  Ivar, most of his family and his workers had succumbed to the Scourge and become its minions.$B$BOur agents were attacked and although successful in defeating their ambushers, they sustained serious injuries, particularly agent Quinn. ' WHERE `entry`=382;
UPDATE `page_text` SET `next_page`=386, `text`='A defensive position was taken in Ivar\'s old house, and while Rane kept watch for future attacks, Erland continued the reconnaissance mission.$B$BErland was then pinned by Worgs in a northern orchard, only escaping with the aid of another Forsaken agent.  That agent is the bearer of this report. ' WHERE `entry`=383;
UPDATE `page_text` SET `text`='It should be noted here that this report bearer was instrumental in not only the success of our mission, but also in the defeat of Ivar the Foul, the rescue of Erland, and the deliverance of this report.$B$BWe extend our gratitude, and recommend that command acknowledges this individual with awards befitting such meritorious conduct as was displayed in the field.$B$B-Deathstalker Rane Yorick,$BMission Leader ' WHERE `entry`=386;

-- Correct page_text for item Covert Ops Plans Alpha & Beta (5737). Thanks Ghurok.
UPDATE `page_text` SET `text`='Okay, you should have your NG-5 charges and detonators ready. I\'ve labeled them for you... Blue is for the lumber mill. Red is for Windshear Mine.$B$BI did some scouting, and there are enough explosives throughout Windshear Crag that it shouldn\'t be a problem at all for you to get in, plant the explosives, and then get out before detonating them.$B$BRemember, this is a distraction. Get far from the wagons before the goblins get there to check out what happened, then sneak in behind them. ' WHERE `entry`=417;
UPDATE `page_text` SET `text`='Be careful with them by the way. The Nitromirglyceronium alone could reduce you to dust. I\'ve encased some of the liquid in copper tubes which should keep it stable and safe.$B$BThe scroll you got from Collin I used on the detonator boxes. They will now send a silent message to the NG-5 charges after you\'ve set them. I used a simple Stalthwargon mechanism to make sure the wire conductivity is optimal and the flow of the Nitroglyceronium between the differential fluid is better than average. ' WHERE `entry`=418;
UPDATE `page_text` SET `text`='Before I get back into the details about my design, let me explain where you should place the explosives.$B$BPlan Alpha- the lumber mill:$BThere\'s a wagon out in front of the lumber mill (this is northeast of their deforestation and lumber collection construct). I suspect the engineering plans are inside of the lumber mill.$B$BTo plant the charge, head to the back of the wagon. Once it\'s set, make haste and get some distance. ' WHERE `entry`=419;
UPDATE `page_text` SET `text`='When you\'re ready, hit the detonator.$B$BI\'ve ensured a strong signal by routing copper and silver wires with a Melthusian antenae array within the casing of the box. That should give you good range. Just be careful of the goblins nearby. They won\'t appreciate my creation if they catch you in their site.$B$BOh, just in case it wasn\'t obvious, don\'t be near the wagon when it blows... it\'ll hurt. ' WHERE `entry`=420;
UPDATE `page_text` SET `text`='Plan Beta- Windshear Mine:$B$BI saw the goblins using another wagon of explosives north of the mine\'s entrance. I think that should be a good enough place to plant NG-5 Charge (Red). After you set the charge in the back of the wagon, get some distance and hit the button.$B$BIf the goblins don\'t come running to check out the commotion, it\'s probably because the mountain came down on top of their heads. ' WHERE `entry`=421;
UPDATE `page_text` SET `text`='The Venture Co. Letters are outside the mine... I think on some crates on the bottom level.$B$BGood luck, and remember...$B$BBlue Charge: lumber mill$BRed Charge: mine$B$BOh, and destroy this letter after you\'ve accomplished your mission. Hmm, maybe I should look into a way to make these things destroy themselves after they\'re read. That\'s not a bad idea...' WHERE `entry`=422;

-- Correct page_text for item Quel'Thalas Registry (15847). Thanks Ghurok.
UPDATE `page_text` SET `text`='Entry Date: Unknown$B$BName: Nathanos Marris, Human Ranger Lord of Lordaeron.$B$BEntry:$B$BKael\'thas Sunstrider\'s dissention in regards to my decision to allow Nathanos Marris into the order is noted. It should also be noted that Nathanos - although a human - is one of the most gifted rangers I have ever had the pleasure of training.$B$B(continued)' WHERE `entry`=2431;
UPDATE `page_text` SET `text`='For millennia we have isolated ourselves from outsiders. I will be the first among us to admit that mistakes were made in the past. Humans should have never been exposed to magic. I will not deny this but I will not condemn us to this guarded existance for the blunders of our predecessors. There is much that a coexistance between the Quel\'dorei and other races of this world can bring. We must practice tolerance.$B$B(continued)' WHERE `entry`=2471;
UPDATE `page_text` SET `text`='It is with these words, then, that I deny Kael\'s request in regards to Nathanos Marris. He will prove to be an invaluable ally. Mark my words.$B$BSigned,$B$BSylvanas Windrunner$BRanger General of Silvermoon' WHERE `entry`=2472;

-- Item Iron Pommel (5519) remove drop from creature, add drop to object. Thanks Ghurok.
DELETE FROM `creature_loot_template` WHERE `entry`=3928 AND `item`=5519;
UPDATE `gameobject_loot_template` SET `ChanceOrQuestChance`=-100 WHERE `entry`=2971 AND `item`=5519;

-- Remove RequestItemsText from quest Hamuul Runetotem (1489). Thanks Ghurok.
UPDATE `quest_template` SET `RequestItemsText`='' WHERE `entry`=1489;

-- Correct OfferRewardText for quest The Tome of Valor (1649). Thanks Ghurok.
UPDATE `quest_template` SET `OfferRewardText`='Ah, you wish to petition me for a test of valor. Splendid.$B$BThere are many tasks throughout the city and surrounding lands that hold much challenge, and they could use a $G man:woman; with your skills.$B$BThis test should not be taken lightly, $N. This, like many things along our path, could take our lives. The Church always wishes to bolster its ranks, but it understands the sacrifices needed to ensure the paladins serving it are worthy.$B$BAre you prepared?' WHERE `entry`=1649;

-- Correct RequestItemsText for quest Agamand Heirlooms (1821). Thanks Ghurok.
UPDATE `quest_template` SET `RequestItemsText`='Do you have the heirlooms, $N?' WHERE `entry`=1821;

-- Correct OfferRewardText for quest Nether-lace Garment (1946). Thanks Ghurok.
UPDATE `quest_template` SET `OfferRewardText`='Here is your nether-lace, $N.  It is both comfortable and durable, and holds the magic of the laughing sisters\' hair.$B$BEnjoy, and if you find it amenable, please mention so to Deino.  She is a mage on whose good side I wish to stay...' WHERE `entry`=1946;

-- Add gossip to npc Herbalist Pomeroy (1218). Thanks Ghurok.
UPDATE `creature_template` SET `gossip_menu_id`=7691 WHERE `entry`=1218;

-- Add gossip to npc Lisbeth Schneider (1299). Thanks Ghurok.
UPDATE `creature_template` SET `gossip_menu_id`=685, `npcflag`=16389 WHERE `entry`=1299;

-- Correct OfferRewardText for quest The Woodland Protector (458). Thanks Therilith.
UPDATE `quest_template` SET `OfferRewardText`='I see you found me, young $R. Melithar is a wise druid to have sent you.' WHERE `entry`=458;

-- Correct OfferRewardText for quest The Woodland Protector (459). Thanks Therilith.
UPDATE `quest_template` SET `OfferRewardText`='Your service to the creatures of Shadowglen is worthy of reward, $N.$B$BYou confirmed my fears, however. If the grells have become tainted by the Fel Moss, one can only imagine what has become of the Gnarlpine tribe of furbolgs who once lived here.$B$BShould you find yourself in Dolanaar, able $C, seek out the knowledgeable druid, Athridas Bearmantle. He shares our concern for the well being of the forest.' WHERE `entry`=459;

-- Correct OfferRewardText for quest Bartolo's Yeti Fur Cloak (565). Thanks Therilith.
UPDATE `quest_template` SET `OfferRewardText`='Now it is time for the great Bartolo to work his magic! I require no wizard\'s staff, no mage\'s rod. For I, the great Bartolo, work magic with a mere needle and thread!' WHERE `entry`=565;

-- Correct RequestItemsText for quest Foul Magics (673). Thanks Therilith.
UPDATE `quest_template` SET `RequestItemsText`='The burning in my blood... it grows by the day. The warlock must be stopped.' WHERE `entry`=673;

-- Correct RequestItemsText for quest Blood of Innocents (1066). Thanks Therilith.
UPDATE `quest_template` SET `RequestItemsText`='Did you find the Syndicate Shadow Mages, and collect from them the blood?' WHERE `entry`=1066;

-- Correct OfferRewardText for quest Alliance Relations (1431). Thanks Therilith.
UPDATE `quest_template` SET `OfferRewardText`='$N, noble $C. I am Keldran, student of magic... and other mystical arts.$B$BThe business Craven sent you here to speak to me about requires a touch more subtlety than you\'ve previously needed, but that does not mean you can not still aid our cause.$B$BPlease, make yourself comfortable, and I shall tell you why the Warchief has need of my aid... and yours.$B$BIt starts with appearances, $N. How the Horde sees itself. How our allies see us. And most importantly, how our enemies see us.' WHERE `entry`=1431;

-- Correct OfferRewardText for quest Beginnings (1599). Thanks Therilith.
UPDATE `quest_template` SET `OfferRewardText`='Very good, very good! You\'ve done well, $N. Perhaps the interest that is being shown in you is deserved, after all.$B$BThat\'ll be for the others to decide--assuming your imp doesn\'t overpower you and nip your career in the bud. For now, I\'m satisfied that you\'ll probably survive your first few months as a $C.$B$BA word about the imp, $N. As a $R knows, don\'t let its size fool you, its magic can be very dangerous.' WHERE `entry`=1599;

-- Correct RequestItemsText for quest Vejrek (1678). Thanks Therilith.
UPDATE `quest_template` SET `RequestItemsText`='Have you been to Vejrek\'s hut, $N? Is that troll stink I smell on you?' WHERE `entry`=1678;

-- Correct OfferRewardText for quest Elanaria (1684). Thanks Therilith.
UPDATE `quest_template` SET `OfferRewardText`='I bid you greetings, $N. Your name rings loudly in Darnassus, for you show promise. But we shall soon see if you possess the strength of will to follow the path of the warrior.' WHERE `entry`=1684;

-- Correct required objectives (and text) for quest Job Opening: Guard Captain of Revantusk Village (7862). Thanks Therilith.
UPDATE `quest_template` SET `ReqCreatureOrGOCount1`=20, `ReqCreatureOrGOCount2`=20, `ReqCreatureOrGOCount3`=20, `ReqCreatureOrGOCount4`=20, `Objectives`='You have been tasked with the decimation of 20 Vilebranch Berserkers, 20 Vilebranch Shadow Hunters, 20 Vilebranch Blood Drinkers, and 20 Vilebranch Soul Eaters.$B$BShould you complete this task, return to Primal Torntusk at Revantusk Village in the Hinterlands.' WHERE `entry`=7862;

-- Correct OfferRewardText for quest Da Voodoo (8413). Thanks Therilith.
UPDATE `quest_template` SET `OfferRewardText`='It\'s about time this troll got a full night\'s rest! The spirit totem will watch over me.$B$BI been a long time collectin\' things, maybe you want somethin\' for all your trouble?' WHERE `entry`=8413;

-- Correct RequestItemsText for quest The Alliance Needs More Rainbow Fin Albacore! (8525). Thanks Therilith.
UPDATE `quest_template` SET `RequestItemsText`='What! You again? Well I\'ll be a monkey\'s uncle... except that I\'m a gnome. Slicky Gastronome to be precise! So you\'re back to help out again, eh? Well, I can\'t say as I blame you. Don\'t you just love the smell of all of that food? <drool>$B$BEnough loitering! Get out there and bring me back more rainbow fin albacore!' WHERE `entry`=8525;

-- Horde will now spawn at Kharanos instead of Wetlands when dying in Dun Morogh or Ironforge
UPDATE `game_graveyard_zone` SET `faction`=0 WHERE `id`=101 AND `ghost_zone`=1;

-- Correct OfferRewardText for quest Thwarting Kolkar Aggression (786). Thanks Therilith.
UPDATE `quest_template` SET `OfferRewardText`='The Horde would surely prevail if the Kolkar centaurs were to attack. But by preventing such an attack. we have spared our mighty warriors unnecessary bloodshed.$B$BAnd as sure as there is sand in the Tanaris desert, we know that there will be blood spilled before these trying times are through.$B$BYou have served your people well, $C.' WHERE `entry`=786;

-- Correct OfferRewardText for quest The Hunter's Way (861). Thanks Therilith.
UPDATE `quest_template` SET `OfferRewardText`='Skorn Whitecloud is a wise tauren. He has hunted for years and years, and although his body is old, his spirit burns fiercely. We are honored to have him with us.$B$BIf Skorn sent you to me, then you too must have the hunter\'s spirit. And to have gathered these claws shows your burgeoning skills.$B$BPerhaps you are ready to walk the path.' WHERE `entry`=861;

-- Correct OfferRewardText for quest Crown of the Earth (933). Thanks Therilith.
UPDATE `quest_template` SET `OfferRewardText`='Shan\'do Stormrage never returned, and the druids were in disarray, and to this day we still do not know what became of him. With Malfurion missing, Arch Druid Fandral Staghelm took over the leadership of the druids, convincing the Circle of Ancients in Darkshore that it was time for our people to rebuild, and that it was time for our people to regain their immortality.$B$BWith the approval of the Circle, Staghelm and the most powerful druids grew Teldrassil, the new World Tree.' WHERE `entry`=933;

-- Correct RequestItemsText for quest Crown of the Earth (934). Thanks Therilith.
UPDATE `quest_template` SET `RequestItemsText`='Along with the druids, the Oracle Tree and the Arch Druid have been carefully monitoring the growth of Teldrassil. But though we have a new home, our immortal lives have not been restored.', `OfferRewardText`='To be in the presence of the Oracle Tree... it is almost to feel wisdom take form. Let me continue the telling...$B$BWith Teldrassil grown, the Arch Druid approached the dragons for their blessings, as the dragons had placed upon Nordrassil in ancient times. But Nozdormu, Lord of Time, refused to give his blessing, chiding the druid for his arrogance. In agreement with Nozdormu, Alexstrasza also refused Staghelm, and without her blessing, Teldrassil\'s growth has been flawed and unpredictable...' WHERE `entry`=934;

-- Correct RequestItemsText for quest Teldrassil (940). Thanks Therilith.
UPDATE `quest_template` SET `RequestItemsText`='Hmm... You come with the spirit of the forest strongly within you, $C. What business do you have with the Arch Druid of the Kaldorei?' WHERE `entry`=940;

-- Correct OfferRewardText for quest Grove of the Ancients (952). Thanks Therilith.
UPDATE `quest_template` SET `OfferRewardText`='Ah. Thank you, $N. It is strange, though. The Arch Druid always seems in such a hurry. The forest knows that all shall come to pass in the appointed time. Shan\'do Stormrage understood that.' WHERE `entry`=952;

-- Correct OfferRewardText for quest Frostmaw (1136). Thanks Therilith.
UPDATE `quest_template` SET `OfferRewardText`='Both strength and cunning were needed to find and defeat Frostmaw, $N. You have both.$B$BYour path has taken you to the valleys of Thousand Needles and to the high mountains of Alterac. It will one day lead you through all the Earthmother\'s lands, for such is the way of the hunter.' WHERE `entry`=1136;

-- Correct OfferRewardText for quest Report to Jennea (1919). Thanks Therilith.
UPDATE `quest_template` SET `OfferRewardText`='$N, I have a mission for you, here in the Mage district. Listen closely, for there is no time to waste.' WHERE `entry`=1919;

-- Correct OfferRewardText for quest Necklace Recovery (2284). Thanks Therilith.
UPDATE `quest_template` SET `OfferRewardText`='You seem to have found the remains of the paladin that Dran had mentioned from before. Searching the remains uncovers what would appear to be his journal. The book is in poor condition, as dried blood has stained most of the text in the book. What you can read, however, is gibberish; it is written in the native tongue of the humans, to the best of your knowledge.$B$BYou will need the book translated if you are to glean any knowledge from it.' WHERE `entry`=2284;

-- Correct OfferRewardText for quest Simple Parchment (2383). Thanks Therilith.
UPDATE `quest_template` SET `OfferRewardText`='Ah, that\'s my parchment. I heard you\'d be coming to the Valley, $N. I\'m glad to see you made it--let\'s hope you survive the trials ahead. Like I said, as you gain in power, come to me--I will do what I can to train you in the ways of the warrior.$B$BGood luck, $N, and return to me whenever you feel ready.' WHERE `entry`=2383;

-- Correct OfferRewardText for quest Simple Tablet (3065). Thanks Therilith.
UPDATE `quest_template` SET `OfferRewardText`='You\'ll find this place fitting as you continue to train in the warrior ways. If you have any questions, feel free to ask anyone around, and when you feel you\'re ready, come back to me for training. I\'ve mastered as much as any warrior here in the Valley and can pass that knowledge on to you... for a price.' WHERE `entry`=3065;

-- Correct RequestItemsText for quest Etched Tablet (3082). Thanks Therilith.
UPDATE `quest_template` SET `RequestItemsText`='Jen\'shan see a mighty $C before her and da spirits approve.$B$BDa path of da $C is one of our oldest walks of life. Da Horde turned to us when they be just strugglin\' to survive on Azeroth, and they ask us to teach them, to show them the secrets of many tings. They were strong already: strong in shaman ways; strong in warrior ways. But the hunter path not be their path... then.', `OfferRewardText`='Now we teach them those things, and they teach us others. We become one race... almost. We be allies for long time now. So you remember to help them. And Jen\'shan remember to help you.$B$BJen\'shan teach you da ways of the hunter--teach you good. You never forget, $C\'s be respected greatly by da tribe. You be havin\' a large role to play in da future... you never forget that.$B$BWhen you feel da need, come to Jen\'shan. She teach you as much as she can when she feel you ready.' WHERE `entry`=3082;

-- Correct RequestItemsText for quest Betrayed (3504). Thanks Therilith.
UPDATE `quest_template` SET `RequestItemsText`='Ah, Belgrom wizened up and finally sent someone not in his ranks to aid us, did he?$B$BThis camp used to be a dozen warriors strong, $N, but now they\'re all dead. That mage, Rimtori, has slain them all. She played Belgrom like a lute... seduced him even. It\'s none of my business, but between you and I, she is quite the temptress. That\'s probably why I\'m still out here helping Belgrom--I probably would have done the same thing.' WHERE `entry`=3504;

-- Correct OfferRewardText for quest Betrayed (3507). Thanks Therilith.
UPDATE `quest_template` SET `OfferRewardText`='HAHA! Look at you now, pathetic woman! I spit on your remains!$B$BThank you, $N. Thank you from the bottom of my heart! This is indeed a great day!$B$BI would give you a kingdom if it were in my power! But perhaps you will settle for this.$B$B<Belgrom looks down at the head of the mage who had betrayed him.>$B$BHaha! Stupid blood elf, look at you now... in a burlap sack and missing your body! You should never have betrayed Belgrom!' WHERE `entry`=3507;

-- Correct RequestItemsText for quest Morrowgrain Research (3785). Thanks Therilith.
UPDATE `quest_template` SET `RequestItemsText`='Yes $N, have you grown some morrowgrain for the Arch Druid\'s important research? The mysterious properties of Un\'Goro Crater become clearer with each passing day, thanks to the help you are giving us.', `OfferRewardText`='Well done $N, I will be sure to give these to the Arch Druid himself when he has need of them. Meanwhile, please accept this as a token of the Cenarion Circle\'s appreciation.$B$BOur need for morrowgrain, for now, is constant; if you wish to continue aiding us, then please return when you have cultivated more of it.' WHERE `entry`=3785;

-- Correct OfferRewardText for quest Arikara (5088). Thanks Therilith.
UPDATE `quest_template` SET `OfferRewardText`='This does not make sense. Why would Arikara be after Cairne Bloodhoof? Magatha could not be wrong, she is our most powerful shaman.$B$B<Motega shakes his head.>$B$BRegardless, your great deed to the Horde shall not go unnoticed - please, choose one of these as a reward for your aid.' WHERE `entry`=5088;

-- Correct OfferRewardText for quest Retribution of the Light (5204). Thanks Therilith.
UPDATE `quest_template` SET `OfferRewardText`='You gather the paladin\'s remains as carefully as you can, recalling that at least his spirit has been released from any pain or suffering that might have been forced upon him.' WHERE `entry`=5204;

-- Correct OfferRewardText for quest Body and Heart (6001). Thanks Therilith.
UPDATE `quest_template` SET `OfferRewardText`='You have finally taken your large step into a much larger world, $N. I sense the teaching of the Great Bear Spirit within you, and I sense that you have received the strength that Lunaclaw possessed.$B$BThere are no further obstacles in your way... let me now teach you what it means to be a Druid of the Claw!' WHERE `entry`=6001;

-- Correct OfferRewardText for quest Body and Heart (6002). Thanks Therilith.
UPDATE `quest_template` SET `OfferRewardText`='You have finally taken your large step into a much larger world, $N. I sense the teaching of the Great Bear Spirit within you, and I sense that you have received the strength that Lunaclaw possessed.$B$BThere are no further obstacles in your way... let me now teach you what it means to be a Druid of the Claw!' WHERE `entry`=6002;

-- Correct OfferRewardText for quest The Green Drake (8232). Thanks Therilith.
UPDATE `quest_template` SET `OfferRewardText`='You have learned the old ways, $N, and for that I offer you a gift from my days as a hunter.' WHERE `entry`=8232;

-- Correct OfferRewardText for quest Magecraft (8250). Thanks Therilith.
UPDATE `quest_template` SET `OfferRewardText`='<Sanath sneers at you.>$B$BArchmage Xylem awaits your arrival.' WHERE `entry`=8250;

-- Correct RequestItemsText for quest Winterfall Ritual Totem (8471). Thanks Therilith.
UPDATE `quest_template` SET `RequestItemsText`='$C - you approach us in a peaceful manner, but I sense that you are here on matters that are grave and severe... for both furbolg and $R alike. What have you come to tell us?' WHERE `entry`=8471;

-- Correct Objectives text for quest The Alliance Needs More Arthas' Tears! (8510). Thanks Therilith.
UPDATE `quest_template` SET `Objectives`='Bring 20 Arthas\' Tears to Sergeant Major Germaine at the airfield in Dun Morogh.' WHERE `entry`=8510;

-- Correct RequestItemsText for quest The Horde Needs Spotted Yellowtail! (8613). Thanks Therilith.
UPDATE `quest_template` SET `RequestItemsText`='Back so soon with the spotted yellowtail, $C? You rememba\' to cook it up nice? We not servin\' raw fish to the soldiers out in the hot desert sun, to be sure.', `OfferRewardText`='Oh ya, this be the good stuff. I pack it up real nice so it not go to waste. Thanks be to you for helpin\' me out like this. I\'m thinkin\' you an A-number-one fisherman for all this spotted yellowtail. An if you happen to fish up and cook even more, you bring it to me here; I make sure everyone know you did!' WHERE `entry`=8613;

-- Correct the equipment (remove incorrect weapons) of npc Thuros Lightfingers (61). Thanks Ghurok.
UPDATE `creature` SET `equipment_id`=0 WHERE `id`=61;

-- Add quest start script to Wrath of the Blue Flight (5162). Thanks Ghurok.
UPDATE `quest_template` SET `StartScript`=5162 WHERE `entry`=5162;

DELETE FROM `dbscripts_on_quest_start` WHERE `id`=5162;
INSERT INTO `dbscripts_on_quest_start` (`id`, `delay`, `command`, `datalong`, `datalong2`, `x`, `y`, `z`, `o`, `comments`) VALUES
(5162, 0, 15, 17168, 2, 0, 0, 0, 0, 'Cast Haleh\'s Will on Player'),
(5162, 11, 6, 0, 0, 1535, -2629, 380, 0, 'Teleport Player to Western Plaguelands');

-- Correct the model for npc Captain Fairmount (3393). Thanks Ghurok.
UPDATE `creature_model_info` SET `modelid_other_gender`=0 WHERE `modelid`=1855;

-- Remove ReqSpellCast1 from quest Kodo Roundup. Should be handled in a script. Thanks Ghurok.
UPDATE `quest_template` SET `ReqSpellCast1`=0 WHERE `entry`=5561;

-- Spawn Sergeant Ba'sha (12799) and add vendor items
SET @GUID                      = 160017;

DELETE FROM `creature` WHERE `guid`=@GUID;
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(@GUID, 12799, 1, 12681, 1632.38, -4262.25, 48.978973, 3.991370, 430, 0, 4108, 0, 0, 0);

DELETE FROM `npc_vendor` WHERE `entry`=12799;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES
(12799, 18675, 0, 0),
(12799, 16497, 0, 0),
(12799, 18435, 0, 0),
(12799, 16486, 0, 0),
(12799, 18437, 0, 0),
(12799, 16532, 0, 0),
(12799, 18432, 0, 0),
(12799, 18434, 0, 0),
(12799, 18436, 0, 0),
(12799, 18429, 0, 0),
(12799, 18430, 0, 0),
(12799, 16335, 0, 0),
(12799, 18428, 0, 0),
(12799, 15200, 0, 0),
(12799, 18461, 0, 0),
(12799, 16341, 0, 0),
(12799, 18427, 0, 0),
(12799, 29592, 0, 0),
(12799, 18853, 0, 0),
(12799, 18852, 0, 0),
(12799, 18851, 0, 0),
(12799, 18850, 0, 0),
(12799, 18849, 0, 0),
(12799, 18846, 0, 0),
(12799, 18845, 0, 0),
(12799, 18834, 0, 0),
(12799, 15197, 0, 0);

-- Spawn Officer Areyn (12805) and add vendor items
SET @GUID                      = 160018;

DELETE FROM `creature` WHERE `guid`=@GUID;
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(@GUID, 12805, 0, 12923, -8759.208008, 389.119598, 101.056503, 0.645159, 430, 0, 4108, 0, 0, 0);

DELETE FROM `npc_vendor` WHERE `entry`=12805;
INSERT INTO `npc_vendor` (`entry`, `item`, `maxcount`, `incrtime`) VALUES
(12805, 18664, 0, 0),
(12805, 18448, 0, 0),
(12805, 18449, 0, 0),
(12805, 18454, 0, 0),
(12805, 18455, 0, 0),
(12805, 18452, 0, 0),
(12805, 18453, 0, 0),
(12805, 18445, 0, 0),
(12805, 18447, 0, 0),
(12805, 18456, 0, 0),
(12805, 18457, 0, 0),
(12805, 18443, 0, 0),
(12805, 18444, 0, 0),
(12805, 18442, 0, 0),
(12805, 16342, 0, 0),
(12805, 18441, 0, 0),
(12805, 18440, 0, 0),
(12805, 18858, 0, 0),
(12805, 18857, 0, 0),
(12805, 18856, 0, 0),
(12805, 18859, 0, 0),
(12805, 18862, 0, 0),
(12805, 29593, 0, 0),
(12805, 18864, 0, 0),
(12805, 18863, 0, 0),
(12805, 18854, 0, 0),
(12805, 15196, 0, 0);

-- Add script for the warlock summoning event in the Magic Quarter, Undercity
SET @AI_SCRIPT_ID                   = 570202;
SET @AI_SUMMONS_ID                  = 22;
SET @ACTION_T_SUMMON_ID             = 32;

DELETE FROM `creature` WHERE `id` IN (5726, 5729, 5730);

DELETE FROM `creature_ai_texts` WHERE `entry` IN (-1311, -1312, -1313, -1314, -1315, -1316, -1317, -1318, -1319, -1320, -1321, -1322);
INSERT INTO `creature_ai_texts` (`entry`, `content_default`, `sound`, `type`, `language`, `emote`, `comment`) VALUES
(-1322, 'There you have it. Our lesson on summoning has come to an end. A new class will begin shortly, so if you wish to brush up, feel free to stay around.', 0, 0, 33, 0, '5702'),
(-1321, 'I doubt you have had much occasion to see such a creature. These demonic equines will make your travels much faster by acting as your mount as long as you control them. However, they are difficult to control, so be sure you are ready before attempting it.', 0, 0, 33, 0, '5702'),
(-1320, 'When facing a spellcaster of any kind, this feral beast will be your best friend. Now, let us take a look at something a bit different. This next creature will aid your travels and make your future journeys much easier. Let\'s take a look at a felsteed.', 0, 0, 33, 0, '5702'),
(-1319, 'What you see before you is a felhunter. This creature\'s natural talents include spell lock and other abilities which make it unequalled when facing a magically attuned opponent.', 0, 0, 33, 0, '5702'),
(-1318, 'Study hard and you might one day be able to summon one on your own, but for now it\'s time to move on to the felhunter.', 0, 0, 33, 0, '5702'),
(-1317, 'All right now. Aside from the obvious distractions a minion like this will provide against your more masculine foes, she is also capable of dealing out impressive amounts of damage. However, her fragile endurance makes her almost useless as a shield.', 0, 0, 33, 0, '5702'),
(-1316, 'If you\'ve never seen one, it is a sight to behold. A very impressive creature both on and off the field of battle. Next, let us take a look at what I am sure all you male students have been waiting for. The succubus.', 0, 0, 33, 0, '5702'),
(-1315, 'This demonic entity is known as the Voidwalker. Its strength and endurance are significant, making it ideal for defense. Send it to attack your enemy, then use it as a shield while you use your spells and abilities to drain away your opponent\'s life.', 0, 0, 33, 0, '5702'),
(-1314, 'Now that you have had a chance to study imp, let us move on the next minion you will be able to summon, the voidwalker.', 0, 0, 33, 0, '5702'),
(-1313, 'This foul little beast is the imp. It is small and weak, making it almost useless as a meatshield, and its damage output is mediocre at best. This creature is best used for support of a larger group.', 0, 0, 33, 0, '5702'),
(-1312, 'The easiest creature for you to summon is the imp. You should already be able to bring forth this minion but for completeness\' sake I will start with him.', 0, 0, 33, 0, '5702'),
(-1311, 'If you\'re here, then it means you are prepared to begin the study of summoning demonic cohorts to do your bidding. We will start with the lowliest creatures you will be able to call and continue from there. Let us begin.', 0, 0, 33, 0, '5702');

DELETE FROM `creature_ai_summons` WHERE `id`=@AI_SUMMONS_ID;
INSERT INTO `creature_ai_summons` (`id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `comment`) VALUES
(@AI_SUMMONS_ID, 1793.96, 128.84, -63.8432, 2.0714, 30000, '5702');

DELETE FROM `creature_ai_scripts` WHERE `id` IN (@AI_SCRIPT_ID, @AI_SCRIPT_ID+1, @AI_SCRIPT_ID+2, @AI_SCRIPT_ID+3, @AI_SCRIPT_ID+4, @AI_SCRIPT_ID+5, @AI_SCRIPT_ID+6, @AI_SCRIPT_ID+7, @AI_SCRIPT_ID+8, @AI_SCRIPT_ID+9, @AI_SCRIPT_ID+10, @AI_SCRIPT_ID+11, @AI_SCRIPT_ID+12, @AI_SCRIPT_ID+13, @AI_SCRIPT_ID+14, @AI_SCRIPT_ID+15, @AI_SCRIPT_ID+16);
INSERT INTO `creature_ai_scripts` (`id`, `creature_id`, `event_type`, `event_inverse_phase_mask`, `event_chance`, `event_flags`, `event_param1`, `event_param2`, `event_param3`, `event_param4`, `action1_type`, `action1_param1`, `action1_param2`, `action1_param3`, `action2_type`, `action2_param1`, `action2_param2`, `action2_param3`, `action3_type`, `action3_param1`, `action3_param2`, `action3_param3`, `comment`) VALUES
(@AI_SCRIPT_ID, 5702, 1, 0, 100, 1, 0, 0, 300000, 300000, 1, -1311, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Jezelle Pruitt - OOC - Event start Say Line'),
(@AI_SCRIPT_ID+1, 5702, 1, 0, 100, 1, 10000, 10000, 300000, 300000, 1, -1312, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Jezelle Pruitt - OOC - Imp Say Line 1'),
(@AI_SCRIPT_ID+2, 5702, 1, 0, 100, 1, 18000, 18000, 300000, 300000, @ACTION_T_SUMMON_ID, 5730, 0, @AI_SUMMONS_ID, 0, 0, 0, 0, 0, 0, 0, 0, 'Jezelle Pruitt - OOC - Summon Jezelle\'s Imp'),
(@AI_SCRIPT_ID+3, 5702, 1, 0, 100, 1, 20000, 20000, 300000, 300000, 1, -1313, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Jezelle Pruitt - OOC - Imp Say Line 2'),
(@AI_SCRIPT_ID+4, 5702, 1, 0, 100, 1, 50000, 50000, 300000, 300000, 1, -1314, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Jezelle Pruitt - OOC - Voidwalker Say Line 1'),
(@AI_SCRIPT_ID+5, 5702, 1, 0, 100, 1, 58000, 58000, 300000, 300000, @ACTION_T_SUMMON_ID, 5729, 0, @AI_SUMMONS_ID, 0, 0, 0, 0, 0, 0, 0, 0, 'Jezelle Pruitt - OOC - Summon Jezelle\'s Voidwalker'),
(@AI_SCRIPT_ID+6, 5702, 1, 0, 100, 1, 60000, 60000, 300000, 300000, 1, -1315, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Jezelle Pruitt - OOC - Voidwalker Say Line 2'),
(@AI_SCRIPT_ID+7, 5702, 1, 0, 100, 1, 90000, 90000, 300000, 300000, 1, -1316, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Jezelle Pruitt - OOC - Succubus Say Line 1'),
(@AI_SCRIPT_ID+8, 5702, 1, 0, 100, 1, 98000, 98000, 300000, 300000, @ACTION_T_SUMMON_ID, 5728, 0, @AI_SUMMONS_ID, 0, 0, 0, 0, 0, 0, 0, 0, 'Jezelle Pruitt - OOC - Summon Jezelle\'s Succubus'),
(@AI_SCRIPT_ID+9, 5702, 1, 0, 100, 1, 100000, 100000, 300000, 300000, 1, -1317, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Jezelle Pruitt - OOC - Succubus Say Line 2'),
(@AI_SCRIPT_ID+10, 5702, 1, 0, 100, 1, 130000, 130000, 300000, 300000, 1, -1318, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Jezelle Pruitt - OOC - Felhunter Say Line 1'),
(@AI_SCRIPT_ID+11, 5702, 1, 0, 100, 1, 138000, 138000, 300000, 300000, @ACTION_T_SUMMON_ID, 5726, 0, @AI_SUMMONS_ID, 0, 0, 0, 0, 0, 0, 0, 0, 'Jezelle Pruitt - OOC - Summon Jezelle\'s Felhunter'),
(@AI_SCRIPT_ID+12, 5702, 1, 0, 100, 1, 140000, 140000, 300000, 300000, 1, -1319, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Jezelle Pruitt - OOC - Felhunter Say Line 2'),
(@AI_SCRIPT_ID+13, 5702, 1, 0, 100, 1, 170000, 170000, 300000, 300000, 1, -1320, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Jezelle Pruitt - OOC - Felsteed Say Line 1'),
(@AI_SCRIPT_ID+14, 5702, 1, 0, 100, 1, 178000, 178000, 300000, 300000, @ACTION_T_SUMMON_ID, 5727, 0, @AI_SUMMONS_ID, 0, 0, 0, 0, 0, 0, 0, 0, 'Jezelle Pruitt - OOC - Summon Jezelle\'s Felsteed'),
(@AI_SCRIPT_ID+15, 5702, 1, 0, 100, 1, 180000, 180000, 300000, 300000, 1, -1321, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Jezelle Pruitt - OOC - Felsteed Say Line 2'),
(@AI_SCRIPT_ID+16, 5702, 1, 0, 100, 1, 210000, 210000, 300000, 300000, 1, -1322, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Jezelle Pruitt - OOC - Event end Say Line');

-- Add script for quest Fields of Grief (407)
SET @DB_SCRIPT_STRING1                     = 2000000082;
SET @DB_SCRIPT_STRING2                     = 2000000083;

DELETE FROM `db_script_string` WHERE `entry` IN (@DB_SCRIPT_STRING1, @DB_SCRIPT_STRING2);
INSERT INTO `db_script_string` (`entry`, `content_default`) VALUES
(@DB_SCRIPT_STRING1, 'I. . .I. . .don\'t. . .feel. . .right. . .'),
(@DB_SCRIPT_STRING2, 'My mind. . .my flesh. . .I\'m. . .rotting. . . .!');

DELETE FROM `dbscripts_on_quest_end` WHERE `id`=407;
INSERT INTO `dbscripts_on_quest_end` (`id`, `delay`, `command`, `datalong`, `datalong2`, `dataint`, `data_flags`, `x`, `y`, `z`, `o`, `comments`) VALUES
(407, 0, 0, 0, 0, @DB_SCRIPT_STRING1, 0, 0, 0, 0, 0, 'Captured Scarlet Zealot - Gossip 1'),
(407, 4, 15, 3287, 0, 0, 4, 0, 0, 0, 0, 'Captured Scarlet Zealot - Cast Ghoul Form'),
(407, 4, 3, 0, 0, 0, 0, 2290.15, 234.361, 27.0888, 2.56956, 'Captured Scarlet Zealot - Move 1'),
(407, 5, 3, 0, 0, 0, 0, 2288.9, 236.615, 27.0888, 1.83911, 'Captured Scarlet Zealot - Move 2'),
(407, 6, 0, 0, 0, @DB_SCRIPT_STRING2, 0, 0, 0, 0, 0, 'Captured Scarlet Zealot - Gossip 2'),
(407, 7, 3, 0, 0, 0, 0, 2289.83, 238.224, 27.0888, 0.862072, 'Captured Scarlet Zealot - Move 3'),
(407, 8, 3, 0, 0, 0, 0, 2291.01, 235.69, 27.0888, 2.16605, 'Captured Scarlet Zealot - Move 4'),
(407, 9, 3, 0, 0, 0, 0, 2293.6, 238.072, 27.0894, 0.949244, 'Captured Scarlet Zealot - Move 5'),
(407, 11, 3, 0, 0, 0, 0, 2289.32, 242.205, 27.0881, 2.45802, 'Captured Scarlet Zealot - Move 6'),
(407, 13, 3, 0, 0, 0, 0, 2287.07, 237.225, 27.0881, 4.12621, 'Captured Scarlet Zealot - Move 7'),
(407, 15, 3, 0, 0, 0, 0, 2289.47, 238.213, 27.0881, 0.485854, 'Captured Scarlet Zealot - Move 8'),
(407, 18, 15, 5, 0, 0, 4, 0, 0, 0, 0, 'Captured Scarlet Zealot - Cast Death Touch');

-- END OF SILVERPINE FIXES

-- Add gossip option for creature Caretaker Alen (11038)
SET @NPC_CARETAKER_ALEN_ENTRY                   = 11038;
SET @NPC_CARETAKER_ALEN_GUID                    = 54749;

SET @GOSSIP_MENU_ID                             = 3181;

UPDATE `creature_template` SET `gossip_menu_id`=@GOSSIP_MENU_ID, `npcflag`=7 WHERE `entry`=@NPC_CARETAKER_ALEN_ENTRY;

DELETE FROM `npc_gossip` WHERE `npc_guid`=@NPC_CARETAKER_ALEN_GUID;

DELETE FROM `gossip_menu_option` WHERE `menu_id`=@GOSSIP_MENU_ID;
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`, `npc_option_npcflag`) VALUES
(@GOSSIP_MENU_ID, 0, 1, 'I wish to make a purchase.', 3, 1);

-- Add gossip to Miranda Breechlock (11536) and Hasana (10856)
SET @GOSSIP_MENU_ID                                 = 3461;
SET @SCRIPT_COMMAND_CREATE_ITEM                     = 17;

SET @ITEM_ARGENT_DAWN_COMMISSION                    = 12846;

SET @NPC_MIRANDA_BREECHLOCK_ENTRY                   = 11536;
SET @NPC_MIRANDA_BREECHLOCK_GUID                    = 68499;

SET @CONDITION_ENTRY                                = 724;
SET @CONDITION_NOITEM_WITH_BANK                     = 24;

UPDATE `creature_template` SET `gossip_menu_id`=@GOSSIP_MENU_ID WHERE `entry`=@NPC_MIRANDA_BREECHLOCK_ENTRY;

DELETE FROM `npc_gossip` WHERE `npc_guid`=@NPC_MIRANDA_BREECHLOCK_GUID;

DELETE FROM `gossip_menu_option` WHERE `menu_id`=@GOSSIP_MENU_ID;
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `box_coded`, `box_money`, `box_text`, `condition_id`) VALUES
(@GOSSIP_MENU_ID, 0, 0, 'I need another Argent Dawn Commission.', 1, 1, -1, 0, 3421, 0, 0, NULL, @CONDITION_ENTRY),
(@GOSSIP_MENU_ID, 1, 1, 'I would like to buy from you.', 3, 1, 0, 0, 0, 0, 0, NULL, 0),
(@GOSSIP_MENU_ID, 2, 0, 'Miranda, could you please tell me the insignia cost of items that you are offering for adventurers with other reputations?', 1, 1, 0, 0, 0, 0, 0, NULL, 0);

DELETE FROM `dbscripts_on_gossip` WHERE `id`=3421;
INSERT INTO `dbscripts_on_gossip` (`id`, `delay`, `command`, `datalong`, `datalong2`, `comments`) VALUES
(3421, 0, 17, 12846, 1, 'Give item Argent Dawn Commission (12846)');

DELETE FROM `conditions` WHERE `condition_entry`=@CONDITION_ENTRY;
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`) VALUES
(@CONDITION_ENTRY, @CONDITION_NOITEM_WITH_BANK, @ITEM_ARGENT_DAWN_COMMISSION, 1);

SET @GOSSIP_MENU_ID_HASANA              = 3421;

SET @NPC_HASANA_ENTRY                   = 10856;
SET @NPC_HASANA_GUID                    = 28419;

DELETE FROM `npc_gossip` WHERE `npc_guid`=@NPC_HASANA_GUID;
UPDATE `creature_template` SET `gossip_menu_id`=@GOSSIP_MENU_ID_HASANA WHERE `entry`=@NPC_HASANA_ENTRY;
UPDATE `gossip_menu_option` SET `action_menu_id`=-1, `action_script_id`=@GOSSIP_MENU_ID_HASANA, `condition_id`=@CONDITION_ENTRY WHERE `menu_id`=@GOSSIP_MENU_ID_HASANA AND `id`=0;

-- Add Points of Interest to Undercity Guardian (5624) gossip options. Fixes #86.
UPDATE `gossip_menu_option` SET `action_poi_id`=283 WHERE `menu_id`=2849 AND `id`=0;
UPDATE `gossip_menu_option` SET `action_poi_id`=281 WHERE `menu_id`=2849 AND `id`=1;
UPDATE `gossip_menu_option` SET `action_poi_id`=279 WHERE `menu_id`=2849 AND `id`=2;
UPDATE `gossip_menu_option` SET `action_poi_id`=278 WHERE `menu_id`=2849 AND `id`=3;
UPDATE `gossip_menu_option` SET `action_poi_id`=276 WHERE `menu_id`=2849 AND `id`=4;
UPDATE `gossip_menu_option` SET `action_poi_id`=284 WHERE `menu_id`=2849 AND `id`=5;
UPDATE `gossip_menu_option` SET `action_poi_id`=273 WHERE `menu_id`=2849 AND `id`=6;
UPDATE `gossip_menu_option` SET `action_poi_id`=274 WHERE `menu_id`=2849 AND `id`=7;
UPDATE `gossip_menu_option` SET `action_poi_id`=275 WHERE `menu_id`=2849 AND `id`=8;
UPDATE `gossip_menu_option` SET `action_poi_id`=280 WHERE `menu_id`=2849 AND `id`=9;

UPDATE `gossip_menu_option` SET `action_poi_id`=272 WHERE `menu_id`=2848 AND `id`=0;
UPDATE `gossip_menu_option` SET `action_poi_id`=270 WHERE `menu_id`=2848 AND `id`=2;
UPDATE `gossip_menu_option` SET `action_poi_id`=269 WHERE `menu_id`=2848 AND `id`=3;
UPDATE `gossip_menu_option` SET `action_poi_id`=268 WHERE `menu_id`=2848 AND `id`=4;
UPDATE `gossip_menu_option` SET `action_poi_id`=267 WHERE `menu_id`=2848 AND `id`=5;

UPDATE `gossip_menu_option` SET `action_poi_id`=266 WHERE `menu_id`=2847 AND `id`=0;
UPDATE `gossip_menu_option` SET `action_poi_id`=265 WHERE `menu_id`=2847 AND `id`=1;
UPDATE `gossip_menu_option` SET `action_poi_id`=264 WHERE `menu_id`=2847 AND `id`=2;
UPDATE `gossip_menu_option` SET `action_poi_id`=263 WHERE `menu_id`=2847 AND `id`=3;
UPDATE `gossip_menu_option` SET `action_poi_id`=262 WHERE `menu_id`=2847 AND `id`=4;
UPDATE `gossip_menu_option` SET `action_poi_id`=261 WHERE `menu_id`=2847 AND `id`=5;
UPDATE `gossip_menu_option` SET `action_poi_id`=260 WHERE `menu_id`=2847 AND `id`=6;
UPDATE `gossip_menu_option` SET `action_poi_id`=259 WHERE `menu_id`=2847 AND `id`=7;
UPDATE `gossip_menu_option` SET `action_poi_id`=257 WHERE `menu_id`=2847 AND `id`=8;
UPDATE `gossip_menu_option` SET `action_poi_id`=256 WHERE `menu_id`=2847 AND `id`=9;
UPDATE `gossip_menu_option` SET `action_poi_id`=255 WHERE `menu_id`=2847 AND `id`=10;
UPDATE `gossip_menu_option` SET `action_poi_id`=254 WHERE `menu_id`=2847 AND `id`=11;

-- Add pathing to creature Seeker Thompson (14404) in Undercity. Fixes #94.
UPDATE `creature` SET `position_x`=1727, `position_y`=203.614, `position_z`=-61.62, `orientation`=1.30443, `MovementType`=2 WHERE `id`=14404;

DELETE FROM `creature_movement` WHERE `id`=32072;
INSERT INTO `creature_movement` (`id`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES
(32072, 1, 1732.3, 222.523, -62.1776, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.3006, 0, 0),
(32072, 2, 1731.57, 233.338, -62.1776, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.63832, 0, 0),
(32072, 3, 1723.39, 239.127, -62.1776, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.52582, 0, 0),
(32072, 4, 1677.05, 240.163, -62.1776, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.1188, 0, 0),
(32072, 5, 1665.3, 249.331, -62.1776, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.4787, 0, 0),
(32072, 6, 1663.02, 266.851, -62.1776, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.68937, 0, 0),
(32072, 7, 1657.06, 279.867, -62.1776, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.99961, 0, 0),
(32072, 8, 1651.19, 287.107, -62.1805, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.26271, 0, 0),
(32072, 9, 1643.75, 287.384, -62.1834, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.19341, 0, 0),
(32072, 10, 1625.17, 269.373, -60.6917, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.92383, 0, 0),
(32072, 11, 1619.45, 263.685, -58.8606, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.92383, 0, 0),
(32072, 12, 1612.25, 256.534, -61.9081, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.92383, 0, 0),
(32072, 13, 1610.43, 254.719, -62.0773, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.92383, 0, 0),
(32072, 14, 1605.25, 252.56, -62.0936, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.5272, 0, 0),
(32072, 15, 1586.61, 252.471, -62.0946, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.14629, 0, 0),
(32072, 16, 1582.39, 248.038, -62.079, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.95132, 0, 0),
(32072, 17, 1582.81, 227.101, -62.079, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.73671, 0, 0),
(32072, 18, 1584.94, 223.331, -62.1522, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.23544, 0, 0),
(32072, 19, 1591.79, 220.867, -57.1859, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.96193, 0, 0),
(32072, 20, 1599.01, 220.875, -57.1616, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.000752, 0, 0),
(32072, 21, 1607.25, 223.58, -62.1374, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.346328, 0, 0),
(32072, 22, 1611.69, 223.622, -61.9065, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.004679, 0, 0),
(32072, 23, 1617.71, 217.89, -59.0818, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.49069, 0, 0),
(32072, 24, 1624.78, 210.724, -60.6919, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.49069, 0, 0),
(32072, 25, 1642.25, 193.005, -62.1838, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.49069, 0, 0),
(32072, 26, 1650.23, 193.472, -62.1814, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.059658, 0, 0),
(32072, 27, 1662.77, 214.051, -62.1787, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.0257, 0, 0),
(32072, 28, 1663.87, 229.842, -62.1787, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.52443, 0, 0),
(32072, 29, 1671.56, 235.312, -62.1787, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.61729, 0, 0),
(32072, 30, 1681.28, 239.637, -62.1787, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.405233, 0, 0),
(32072, 31, 1723.1, 238.522, -62.1787, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6.25645, 0, 0),
(32072, 32, 1729.79, 228.355, -62.1787, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.29434, 0, 0),
(32072, 33, 1731.34, 217.821, -62.1787, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.85845, 0, 0),
(32072, 34, 1724.98, 195.701, -62.1671, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.43041, 0, 0),
(32072, 35, 1713.35, 179.375, -60.7483, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.09269, 0, 0),
(32072, 36, 1698.91, 182.183, -62.1728, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.94208, 0, 0),
(32072, 37, 1692.82, 179.199, -62.1728, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.59789, 0, 0),
(32072, 38, 1677.57, 161.509, -62.1572, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.01022, 0, 0),
(32072, 39, 1654.14, 142.97, -62.1517, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.80995, 0, 0),
(32072, 40, 1652.96, 135.5, -62.165, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.56, 0, 0),
(32072, 41, 1659.56, 124.273, -61.4918, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.25507, 0, 0),
(32072, 42, 1668.15, 122.337, -61.4785, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6.07581, 0, 0),
(32072, 43, 1679.69, 127.941, -60.399, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.452356, 0, 0),
(32072, 44, 1690.99, 138.584, -55.2144, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.758661, 0, 0),
(32072, 45, 1694.65, 138.741, -55.1205, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.036095, 0, 0),
(32072, 46, 1700.56, 132.965, -51.1889, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.51032, 0, 0),
(32072, 47, 1706.48, 127.192, -48.9843, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.51032, 0, 0),
(32072, 48, 1710.44, 123.259, -50.5277, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.48676, 0, 0),
(32072, 49, 1715.23, 118.353, -54.0606, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.48676, 0, 0),
(32072, 50, 1717.61, 115.928, -55.2149, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.48676, 0, 0),
(32072, 51, 1716.88, 112.975, -55.2149, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.46968, 0, 0),
(32072, 52, 1695.71, 91.8981, -62.2246, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.92776, 0, 0),
(32072, 53, 1693.73, 79.1823, -62.2891, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.56393, 0, 0),
(32072, 54, 1702.2, 70.9584, -62.2891, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.48284, 0, 0),
(32072, 55, 1738.34, 59.7895, -59.7713, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6.25645, 0, 0),
(32072, 56, 1750.16, 47.7324, -52.817, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.49069, 0, 0),
(32072, 57, 1754.99, 47.2671, -52.817, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6.19754, 0, 0),
(32072, 58, 1759.38, 51.5006, -50.2111, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.790076, 0, 0),
(32072, 59, 1763.55, 55.7116, -46.3169, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.790076, 0, 0),
(32072, 60, 1778.34, 70.5382, -46.3188, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.778295, 0, 0),
(32072, 61, 1781.78, 73.9327, -49.3515, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.778295, 0, 0),
(32072, 62, 1787.11, 79.1894, -52.8169, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.778295, 0, 0),
(32072, 63, 1786.87, 83.4353, -52.8169, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.62653, 0, 0),
(32072, 64, 1779.14, 91.4176, -56.1755, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.34124, 0, 0),
(32072, 65, 1775.15, 95.5312, -59.6657, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.34124, 0, 0),
(32072, 66, 1760.93, 133.892, -62.2949, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.94068, 0, 0),
(32072, 67, 1748.07, 140.085, -62.2585, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.70252, 0, 0),
(32072, 68, 1737.57, 133.233, -62.1182, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.72747, 0, 0),
(32072, 69, 1727.58, 123.542, -60.1819, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.89633, 0, 0),
(32072, 70, 1720.53, 116.855, -55.2148, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.90419, 0, 0),
(32072, 71, 1717.04, 116.903, -55.0754, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.06774, 0, 0),
(32072, 72, 1712.63, 121.317, -52.3247, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.35302, 0, 0),
(32072, 73, 1707.51, 126.463, -49.0926, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.35302, 0, 0),
(32072, 74, 1701.38, 132.564, -50.6214, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.35302, 0, 0),
(32072, 75, 1695.16, 138.816, -54.9837, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.35302, 0, 0),
(32072, 76, 1695.02, 142.361, -55.2144, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.61082, 0, 0),
(32072, 77, 1702.29, 149.973, -60.4682, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.805789, 0, 0),
(32072, 78, 1701.05, 158.937, -60.5802, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.71685, 0, 0),
(32072, 79, 1718.89, 186.261, -60.7598, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.04141, 0, 0),
(32072, 80, 1724.63, 195.081, -62.1654, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.982504, 0, 0);

-- Add class trainer Points of Interest to Bluffwatcher (3084) gossip options. Fixes #98.
UPDATE `gossip_menu_option` SET `action_poi_id`=316 WHERE `menu_id`=740 AND `id`=0;
UPDATE `gossip_menu_option` SET `action_poi_id`=313 WHERE `menu_id`=740 AND `id`=1;
UPDATE `gossip_menu_option` SET `action_poi_id`=315 WHERE `menu_id`=740 AND `id`=2;
UPDATE `gossip_menu_option` SET `action_poi_id`=315 WHERE `menu_id`=740 AND `id`=3;
UPDATE `gossip_menu_option` SET `action_poi_id`=314 WHERE `menu_id`=740 AND `id`=4;
UPDATE `gossip_menu_option` SET `action_poi_id`=313 WHERE `menu_id`=740 AND `id`=5;

-- Spawn all, except patrolling, Emissary NPCs and banners in Orgrimmar.
SET @GUID1_OBJ = 100000;
SET @GUID2_OBJ = 100001;
SET @GUID3_OBJ = 100002;
SET @GUID4_OBJ = 100003;
SET @GUID5_OBJ = 31675;
SET @GUID6_OBJ = 100004;
SET @GUID7_OBJ = 100005;
SET @GUID8_OBJ = 31676;
SET @GUID9_OBJ = 100006;
SET @GUID10_OBJ = 100007;
SET @GUID11_OBJ = 100008;
SET @GUID12_OBJ = 100009;

SET @GUID1_NPC = 100000;
SET @GUID2_NPC = 100001;
SET @GUID3_NPC = 100002;
SET @GUID4_NPC = 100003;
SET @GUID5_NPC = 100004;
SET @GUID6_NPC = 100005;
SET @GUID7_NPC = 100006;
SET @GUID8_NPC = 100007;
SET @GUID9_NPC = 100008;
SET @GUID10_NPC = 100009;
SET @GUID11_NPC = 100010;
SET @GUID12_NPC = 100011;
SET @GUID13_NPC = 100012;
SET @GUID14_NPC = 100013;
SET @GUID15_NPC = 100014;
SET @GUID16_NPC = 100015;
SET @GUID17_NPC = 100016;
SET @GUID18_NPC = 100017;
SET @GUID19_NPC = 100018;
SET @GUID20_NPC = 100019;
SET @GUID21_NPC = 100020;
SET @GUID22_NPC = 100021;
SET @GUID23_NPC = 100022;
SET @GUID24_NPC = 100023;

DELETE FROM `game_event_gameobject` WHERE `guid` IN (@GUID1_OBJ, @GUID2_OBJ, @GUID3_OBJ, @GUID4_OBJ, @GUID5_OBJ, @GUID6_OBJ, @GUID7_OBJ, @GUID8_OBJ, @GUID9_OBJ, @GUID10_OBJ, @GUID11_OBJ, @GUID12_OBJ);
DELETE FROM `gameobject` WHERE `guid` IN (@GUID1_OBJ, @GUID2_OBJ, @GUID3_OBJ, @GUID4_OBJ, @GUID5_OBJ, @GUID6_OBJ, @GUID7_OBJ, @GUID8_OBJ, @GUID9_OBJ, @GUID10_OBJ, @GUID11_OBJ, @GUID12_OBJ);
DELETE FROM `game_event_creature` WHERE `guid` IN (@GUID1_NPC, @GUID2_NPC, @GUID3_NPC, @GUID4_NPC, @GUID5_NPC, @GUID6_NPC, @GUID7_NPC, @GUID8_NPC, @GUID9_NPC, @GUID10_NPC, @GUID11_NPC, @GUID12_NPC, @GUID13_NPC, @GUID14_NPC, @GUID15_NPC, @GUID16_NPC, @GUID17_NPC, @GUID18_NPC, @GUID19_NPC, @GUID20_NPC, @GUID21_NPC, @GUID22_NPC, @GUID23_NPC, @GUID24_NPC);
DELETE FROM `creature` WHERE `guid` IN (@GUID1_NPC, @GUID2_NPC, @GUID3_NPC, @GUID4_NPC, @GUID5_NPC, @GUID6_NPC, @GUID7_NPC, @GUID8_NPC, @GUID9_NPC, @GUID10_NPC, @GUID11_NPC, @GUID12_NPC, @GUID13_NPC, @GUID14_NPC, @GUID15_NPC, @GUID16_NPC, @GUID17_NPC, @GUID18_NPC, @GUID19_NPC, @GUID20_NPC, @GUID21_NPC, @GUID22_NPC, @GUID23_NPC, @GUID24_NPC);

INSERT INTO `game_event_gameobject` (`guid`, `event`) VALUES
(@GUID1_OBJ, 20);
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES
(@GUID1_OBJ, 180396, 1, 1933.43, -4708.58, 36.4638, 1.3304, 0, 0, 0, 0, 180, 100, 1);
INSERT INTO `game_event_creature` (`guid`, `event`) VALUES
(@GUID1_NPC, 20),
(@GUID2_NPC, 20);
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(@GUID1_NPC, 14990, 1, 0, 0, 1936.4, -4710.2, 36.4882, 1.29584, 370, 0, 0, 2471, 0, 0, 0),
(@GUID2_NPC, 14990, 1, 0, 0, 1937.07, -4707.49, 35.4933, 4.4123, 370, 0, 0, 2471, 0, 0, 0);

INSERT INTO `game_event_gameobject` (`guid`, `event`) VALUES
(@GUID2_OBJ, 19);
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES
(@GUID2_OBJ, 180394, 1, 1933.43, -4708.58, 36.4638, 1.3304, 0, 0, 0, 0, 180, 100, 1);
INSERT INTO `game_event_creature` (`guid`, `event`) VALUES
(@GUID3_NPC, 19),
(@GUID4_NPC, 19);
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(@GUID3_NPC, 15105, 1, 0, 0, 1937.07, -4707.49, 35.4933, 4.4123, 370, 0, 0, 1605, 852, 0, 0),
(@GUID4_NPC, 15105, 1, 0, 0, 1936.4, -4710.2, 36.4882, 1.29584, 370, 0, 0, 1605, 852, 0, 0);

INSERT INTO `game_event_gameobject` (`guid`, `event`) VALUES
(@GUID3_OBJ, 18);
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES
(@GUID3_OBJ, 180395, 1, 1933.43, -4708.58, 36.4638, 1.3304, 0, 0, 0, 0, 180, 100, 1);
INSERT INTO `game_event_creature` (`guid`, `event`) VALUES
(@GUID5_NPC, 18),
(@GUID6_NPC, 18);
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(@GUID5_NPC, 15106, 1, 0, 0, 1937.07, -4707.49, 35.4933, 4.4123, 370, 0, 0, 4108, 0, 0, 0),
(@GUID6_NPC, 15106, 1, 0, 0, 1936.4, -4710.2, 36.4882, 1.29584, 370, 0, 0, 4108, 0, 0, 0);

INSERT INTO `game_event_gameobject` (`guid`, `event`) VALUES
(@GUID4_OBJ, 20);
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES
(@GUID4_OBJ, 180396, 1, 1657.46, -4385.4, 23.5797, 5.41287, 0, 0, 0, 0, 180, 100, 1);
INSERT INTO `game_event_creature` (`guid`, `event`) VALUES
(@GUID7_NPC, 20),
(@GUID8_NPC, 20);
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(@GUID7_NPC, 14990, 1, 0, 0, 1660.82, -4385.81, 23.9178, 4.17041, 370, 0, 0, 2471, 0, 0, 0),
(@GUID8_NPC, 14990, 1, 0, 0, 1658.83, -4388.91, 23.681, 1.01544, 370, 0, 0, 2471, 0, 0, 0);

INSERT INTO `game_event_gameobject` (`guid`, `event`) VALUES
(@GUID5_OBJ, 19);
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES
(@GUID5_OBJ, 180394, 1, 1657.46, -4385.4, 23.5797, 5.41287, 0, 0, 0, 0, 180, 100, 1);
INSERT INTO `game_event_creature` (`guid`, `event`) VALUES
(@GUID9_NPC, 19),
(@GUID10_NPC, 19);
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(@GUID9_NPC, 15105, 1, 0, 0, 1660.82, -4385.81, 23.9178, 4.17041, 370, 0, 0, 1605, 852, 0, 0),
(@GUID10_NPC, 15105, 1, 0, 0, 1658.83, -4388.91, 23.681, 1.01544, 370, 0, 0, 1605, 852, 0, 0);

INSERT INTO `game_event_gameobject` (`guid`, `event`) VALUES
(@GUID6_OBJ, 18);
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES
(@GUID6_OBJ, 180395, 1, 1657.46, -4385.4, 23.5797, 5.41287, 0, 0, 0, 0, 180, 100, 1);
INSERT INTO `game_event_creature` (`guid`, `event`) VALUES
(@GUID11_NPC, 18),
(@GUID12_NPC, 18);
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(@GUID11_NPC, 15106, 1, 0, 0, 1660.82, -4385.81, 23.9178, 4.17041, 370, 0, 0, 4108, 0, 0, 0),
(@GUID12_NPC, 15106, 1, 0, 0, 1658.83, -4388.91, 23.681, 1.01544, 370, 0, 0, 4108, 0, 0, 0);

INSERT INTO `game_event_gameobject` (`guid`, `event`) VALUES (@GUID7_OBJ, 20);
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES
(@GUID7_OBJ, 180396, 1, 1663.59, -4343.19, 61.2462, 0.750492, 0, 0, 0.366501, 0.930418, 180, 100, 1);
INSERT INTO `game_event_creature` (`guid`, `event`) VALUES
(@GUID13_NPC, 20),
(@GUID14_NPC, 20);
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(@GUID13_NPC, 14990, 1, 0, 0, 1665.79, -4344.94, 61.2469, 5.42626, 370, 0, 0, 2471, 0, 0, 0),
(@GUID14_NPC, 14990, 1, 0, 0, 1667.51, -4347, 61.2465, 2.33336, 370, 0, 0, 2471, 0, 0, 0);

INSERT INTO `game_event_gameobject` (`guid`, `event`) VALUES
(@GUID8_OBJ, 19);
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES
(@GUID8_OBJ, 180394, 1, 1663.59, -4343.19, 61.2462, 0.750492, 0, 0, 0.366501, 0.930418, 180, 100, 1);
INSERT INTO `game_event_creature` (`guid`, `event`) VALUES
(@GUID15_NPC, 19),
(@GUID16_NPC, 19);
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(@GUID15_NPC, 15105, 1, 0, 0, 1665.79, -4344.94, 61.2469, 5.42626, 370, 0, 0, 1605, 852, 0, 0),
(@GUID16_NPC, 15105, 1, 0, 0, 1667.51, -4347, 61.2465, 2.33336, 370, 0, 0, 1605, 852, 0, 0);

INSERT INTO `game_event_gameobject` (`guid`, `event`) VALUES
(@GUID9_OBJ, 18);
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES
(@GUID9_OBJ, 180395, 1, 1663.59, -4343.19, 61.2462, 0.750492, 0, 0, 0.366501, 0.930418, 180, 100, 1);
INSERT INTO `game_event_creature` (`guid`, `event`) VALUES
(@GUID17_NPC, 18),
(@GUID18_NPC, 18);
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(@GUID17_NPC, 15106, 1, 0, 0, 1665.79, -4344.94, 61.2469, 5.42626, 370, 0, 0, 4108, 0, 0, 0),
(@GUID18_NPC, 15106, 1, 0, 0, 1667.51, -4347, 61.2465, 2.33336, 370, 0, 0, 4108, 0, 0, 0);

INSERT INTO `game_event_gameobject` (`guid`, `event`) VALUES
(@GUID10_OBJ, 20);
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES
(@GUID10_OBJ, 180396, 1, 1749.75, -3963.67, 50.4844, 3.50363, 0, 0, 0, 0, 180, 100, 1);
INSERT INTO `game_event_creature` (`guid`, `event`) VALUES
(@GUID19_NPC, 20),
(@GUID20_NPC, 20);
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(@GUID19_NPC, 14990, 1, 0, 0, 1743.72, -3967.15, 49.1537, 0.42906, 370, 0, 0, 2471, 0, 0, 0),
(@GUID20_NPC, 14990, 1, 0, 0, 1747.21, -3965.75, 49.6639, 3.57536, 370, 0, 0, 2471, 0, 0, 0);

INSERT INTO `game_event_gameobject` (`guid`, `event`) VALUES
(@GUID11_OBJ, 19);
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`)
VALUES (@GUID11_OBJ, 180394, 1, 1749.75, -3963.67, 50.4844, 3.50363, 0, 0, 0, 0, 180, 100, 1);
INSERT INTO `game_event_creature` (`guid`, `event`) VALUES
(@GUID21_NPC, 19),
(@GUID22_NPC, 19);
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(@GUID21_NPC, 15105, 1, 0, 0, 1743.72, -3967.15, 49.1537, 0.42906, 370, 0, 0, 1605, 852, 0, 0),
(@GUID22_NPC, 15105, 1, 0, 0, 1747.21, -3965.75, 49.6639, 3.57536, 370, 0, 0, 1605, 852, 0, 0);

INSERT INTO `game_event_gameobject` (`guid`, `event`) VALUES
(@GUID12_OBJ, 18);
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES
(@GUID12_OBJ, 180395, 1, 1749.75, -3963.67, 50.4844, 3.50363, 0, 0, 0, 0, 180, 100, 1);
INSERT INTO `game_event_creature` (`guid`, `event`) VALUES
(@GUID23_NPC, 18),
(@GUID24_NPC, 18);
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(@GUID23_NPC, 15106, 1, 0, 0, 1743.72, -3967.15, 49.1537, 0.42906, 370, 0, 0, 4108, 0, 0, 0),
(@GUID24_NPC, 15106, 1, 0, 0, 1747.21, -3965.75, 49.6639, 3.57536, 370, 0, 0, 4108, 0, 0, 0);

-- Remove two non-classic items from the npc_vendor table
DELETE FROM `npc_vendor` WHERE `item` IN (29592, 29593);

-- Fixed warlock quest 1716 (Devourer of Souls)
-- The quest was only available to gnomes (64) and humans (1) back in
-- Classic
-- Quest 1717 (Gakin's Summons) is not a prerequisite of quest 1716
-- it is only an alternate startup quest for warlocks in Ironforge (mainly
-- gnomes warlocks)
UPDATE `quest_template` SET `RequiredRaces` = 65, `PrevQuestId` = 0 WHERE `entry` = 1716;

-- Switch quest givers for NE racial priest quests 5673 and 5675 (Elune's Grace)
-- As the dwarf version was wrongly given by human priest (376) and human version by dwarf priest (11406)
UPDATE `creature_questrelation` SET `id` = 376 WHERE `quest` = 5673;
UPDATE `creature_questrelation` SET `id` = 11406 WHERE `quest` = 5675;

-- Removes wrong loot chance for item 16746 (Warsong Report)
-- Wrongly looted from item 16882 (Battered Junkbox)
DELETE FROM `item_loot_template` WHERE `entry` = 16882 AND `item` = 16746;

-- Wrongly dropped by a lot of creatures as it is a quest item, found when opening another quest item
-- source: http://www.wowhead.com/item=16746
DELETE FROM `creature_loot_template` WHERE `item` = 16746;

-- Reverted faction for creatures 2578 (Young Mesa Buzzard), 2579 (Mesa Buzzard), 2580 (Elder Mesa Buzzard)
-- as they were hostile to players prio to patch 2.3.2. Correct faction value is taken from other buzzard creatures
-- Source: http://http://www.wowwiki.com/Mesa_Buzzard
-- http://www.wowwiki.com/Elder_Mesa_Buzzard
-- http://www.wowwiki.com/Young_Mesa_Buzzard
UPDATE `creature_template` SET `Faction_A` = 73, `Faction_H` = 73 WHERE `entry` IN (2578, 2579, 2580);

-- Adds equipement to creature 1853 (Darkmaster Gandling)
-- He now wields his infamous skull staff
-- (equipement was already in DB but not linked to NPC)
UPDATE `creature_template` SET `equipment_id` = 1205 WHERE `entry` = 1853;

-- Adds waypoint movement for creature 522 (Mor'Ladim)
UPDATE `creature` SET `MovementType` = 2 WHERE `id` = 522;
DELETE FROM `creature_movement_template` WHERE `entry` = 522;
INSERT INTO `creature_movement_template` VALUES
(522, 1, -10381.8, 385.819, 47.4858, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.18829, 0, 0),
(522, 2, -10378.4, 396.698, 48.6662, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.76791, 0, 0),
(522, 3, -10383.9, 406.43, 48.2008, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.21245, 0, 0),
(522, 4, -10392.8, 415.511, 48.5681, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.69861, 0, 0),
(522, 5, -10402.7, 424.936, 48.5981, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.59494, 0, 0),
(522, 6, -10422.1, 430.723, 47.0119, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.95858, 0, 0),
(522, 7, -10436.6, 429.382, 45.2662, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.12351, 0, 0),
(522, 8, -10453.3, 433.284, 40.6231, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.79364, 0, 0),
(522, 9, -10470.3, 439.704, 37.3075, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.97428, 0, 0),
(522, 10, -10475.1, 439.484, 36.9664, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.58297, 0, 0),
(522, 11, -10483.4, 433.097, 37.9773, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.10997, 0, 0),
(522, 12, -10487.7, 425.658, 37.6992, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.26234, 0, 0),
(522, 13, -10491.3, 416.08, 35.8946, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.4312, 0, 0),
(522, 14, -10497.2, 393.399, 36.0944, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.55684, 0, 0),
(522, 15, -10496.4, 366.334, 34.3317, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.82387, 0, 0),
(522, 16, -10488.2, 347.825, 34.1085, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.18909, 0, 0),
(522, 17, -10474.2, 327.59, 35.0722, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.31868, 0, 0),
(522, 18, -10466.7, 311.631, 36.7639, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.46397, 0, 0),
(522, 19, -10449.7, 301.976, 37.3267, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.83311, 0, 0),
(522, 20, -10436, 298.191, 37.4351, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.158601, 0, 0),
(522, 21, -10416.6, 304.413, 38.8815, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.563077, 0, 0),
(522, 22, -10408.8, 312.268, 39.3245, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.16626, 0, 0),
(522, 23, -10405.8, 321.295, 40.5022, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.46943, 0, 0),
(522, 24, -10405.1, 334.65, 42.6046, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.54404, 0, 0),
(522, 25, -10405, 345.921, 43.8031, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.35162, 0, 0),
(522, 26, -10399.3, 360.188, 45.1209, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.37125, 0, 0),
(522, 27, -10400, 366.515, 45.581, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.18257, 0, 0),
(522, 28, -10405.3, 372.353, 45.7753, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.43075, 0, 0),
(522, 29, -10410.4, 375.665, 45.6153, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.35614, 0, 0),
(522, 30, -10412.4, 379.826, 45.7007, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.23852, 0, 0),
(522, 31, -10411.1, 383.231, 46.2108, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.66675, 0, 0),
(522, 32, -10408.7, 384.592, 46.6007, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.97264, 0, 0),
(522, 33, -10399.6, 381.67, 46.8407, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6.21768, 0, 0),
(522, 34, -10391.9, 382.664, 46.8753, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.623291, 0, 0);

-- Adds completion text for quest 1653 (The Test of Righteousness)
-- source: http://www.wowwiki.com/Quest:The_Test_of_Righteousness_(1)
UPDATE `quest_template` SET `OfferRewardText` = 'Good day, $N. The Light is with you, I trust?$B$BWhat\'s that? You were sent by Duthorian!? My wife, how is she? I knew there was going to be trouble if I left.$B$BPlease tell me she\'s... oh, thank goodness. I\'m so glad that she\'s safe. The Defias were a threat long before these attacks, but now the King\'s advisors cannot deny it.$B$BWhat else did Duthorian have to say? You\'re the one that was sent to protect my wife? Then I thank you again, $N. I couldn\'t think of a better test of valor than that.' WHERE `entry` = 1653;

-- Fiora Longears (4456) moved back to Theramore from Auberdine. Moved in 2.3.0 --
UPDATE `creature` SET `position_x` = '-3613.427734', `position_y` = '-4463.895020', `position_z` = '13.622666', `orientation` = '2.975219' WHERE `guid` = '37087';

-- Adds teleport location for The Stockades ".tele TheStockades"
DELETE FROM `game_tele` WHERE `id`=418;
INSERT INTO `game_tele` (`id`, `position_x`, `position_y`, `position_z`, `orientation`, `map`, `name`) VALUES (418,-8787.390625,828.377075,97.648933,0.626312,0,'TheStockades');

-- Updates the position of Barkeep Hann because his title was flickering in the wall
UPDATE `creature` SET `position_x` = '-10509.634766', `position_y` = '-1155.536011', `position_z` = '28.099501', `orientation` = '3.218907' WHERE `guid` = '4191';

-- This fixes the text for quest 388 - QG refers to you incorrectly in completion text instead of "Mac" --
UPDATE `quest_template` SET `OfferRewardText`='So these bandanas -- filthy tokens of corruption -- are what my Mac had to die for? Such a waste. Such a tragic sacrifice. $b$bBut alas, I cannot return to the past. Just know, $N, that you have brought my family justice through your deeds.' WHERE `entry`='388';

-- Removed item 2203 (Brashclaw's Chopper) and item 2204 (Brashclaw's Skewer) from reference_loot_template
-- because they can only drop from creature 506 (Sergeant Brashclaw)
-- Thanks to Neotmiren for pointing
-- Source: http://www.wowhead.com/item=2203
-- Source: http://www.wowhead.com/item=2204
DELETE FROM `reference_loot_template` WHERE `item` IN (2203, 2204);

-- Added drop chance for item 2203 (Brashclaw's Chopper) and item 2204 (Brashclaw's Skewer) from creature 506 (Sergeant Brashclaw)
-- Thanks to Neotmiren for pointing
-- Source: http://www.wowhead.com/npc=506
DELETE FROM `creature_loot_template` WHERE `entry` = 506 AND `item` IN (2203, 2204);
INSERT INTO `creature_loot_template` VALUES
(506, 2203, 0.03, 0, 1, 1, 0),
(506, 2204, 0.9, 0, 1, 1, 0);

-- Prevent creature 647 (Captain Greenskin) from using wrong undead model instead of its goblin model
-- Thanks Neotmiren for pointing and fixing
-- Source: http://www.wowhead.com/npc=647
UPDATE `creature_model_info` SET `modelid_other_gender` = 0 WHERE `modelid` = 7113 AND `modelid_other_gender` = 3494;

-- Remove Random Obsidian Chunks --
DELETE FROM `gameobject` WHERE `guid` = '9306';
DELETE FROM `game_event_gameobject` WHERE `guid` = '9306';
DELETE FROM `gameobject_battleground` WHERE `guid` = '9306';
DELETE FROM `gameobject` WHERE `guid` = '11495';
DELETE FROM `game_event_gameobject` WHERE `guid` = '11495';
DELETE FROM `gameobject_battleground` WHERE `guid` = '11495';
DELETE FROM `gameobject` WHERE `guid` = '12443';
DELETE FROM `game_event_gameobject` WHERE `guid` = '12443';
DELETE FROM `gameobject_battleground` WHERE `guid` = '12443';
DELETE FROM `gameobject` WHERE `guid` = '9301';
DELETE FROM `game_event_gameobject` WHERE `guid` = '9301';
DELETE FROM `gameobject_battleground` WHERE `guid` = '9301';
DELETE FROM `gameobject` WHERE `guid` = '14106';
DELETE FROM `game_event_gameobject` WHERE `guid` = '14106';
DELETE FROM `gameobject_battleground` WHERE `guid` = '14106';
DELETE FROM `gameobject` WHERE `guid` = '14124';
DELETE FROM `game_event_gameobject` WHERE `guid` = '14124';
DELETE FROM `gameobject_battleground` WHERE `guid` = '14124';
DELETE FROM `gameobject` WHERE `guid` = '14127';
DELETE FROM `game_event_gameobject` WHERE `guid` = '14127';
DELETE FROM `gameobject_battleground` WHERE `guid` = '14127';
DELETE FROM `gameobject` WHERE `guid` = '14142';
DELETE FROM `game_event_gameobject` WHERE `guid` = '14142';
DELETE FROM `gameobject_battleground` WHERE `guid` = '14142';

-- Anubisath Sentinel Position Adjustment --
UPDATE `creature` SET `position_x` = '-8159.728027', `position_y` = '2145.341309', `position_z` = '129.582779', `orientation` = '3.473037' WHERE `guid` = '87570';
UPDATE `creature` SET `position_x` = '-8156.620605', `position_y` = '2119.613770', `position_z` = '129.114990', `orientation` = '3.174591' WHERE `guid` = '87571';

-- Adds missing Obsidian Eradicator --
DELETE FROM `creature` WHERE `guid`=590011;
INSERT INTO `creature` VALUES (590011, 15262, 531, 0, 0, -8277.51, 2117.84, 118.176, 0.261538, 25, 0, 0, 170805, 24340, 0, 0);
UPDATE `creature` SET `spawntimesecs`=3600 WHERE `guid`=590011;

-- Corrects 2 slanted Sentinels next to Skeram --
UPDATE `creature` SET `position_x` = '-8317.698242', `position_y` = '2134.262451', `position_z` = '118.550896', `orientation` = '0.410774' WHERE `guid` = '87564';
UPDATE `creature` SET `position_x` = '-8314.269531', `position_y` = '2114.679932', `position_z` = '118.272003', `orientation` = '0.204999' WHERE `guid` = '87565';

-- Removes drop chance for quest item 1309 (Oslow Toolbox) from item "Small Barned Clam" (5523)
-- as it should only be dropped by quest object Sunken Chest (GO 32)
-- Source: http://www.wowhead.com/item=1309#contained-in-object
DELETE FROM `item_loot_template` WHERE `item` = 1309;

-- Changed drop chance of item 12884 (Arnak's Hoof) to make it drop only when player
-- have related quest
-- Thanks to The_Great_Sephiroth for pointing
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -100 WHERE `item` = 12884 AND `entry` = 10896;

-- Replaces two mithril ore's found in Durotar with Copper Nodes
-- Fixes one of the Copper Ore nodes that's half way in the world
UPDATE `gameobject` SET `id` = 1731 WHERE `guid` = 7321;
UPDATE `gameobject` SET `id` = 1731 WHERE `guid` = 7304;
UPDATE `gameobject` SET `position_z` = -8.4 WHERE `guid` = 5455;

-- Fixes quest 2701 that is missing its completion text and is rewarded by quest giver
-- instead of specific gameobject which shows wrong gameobject behavior
-- Source: http://www.wowhead.com/quest=2701#comments
-- Adds the gameobject 141980 (Spectral Lockbox) as the quest completion GO
DELETE FROM `gameobject_involvedrelation` WHERE `quest` = 2701;
INSERT INTO `gameobject_involvedrelation` VALUES (141980, 2701);
-- Updates gameobject 141980 which had the wrong quest number reference
UPDATE `gameobject_template` SET `data1` = 2701 WHERE `entry` = 141980;
-- Updates quest to remove completion emote as gameobject does not do emote
UPDATE `quest_template` SET `CompleteEmote` = 0 WHERE `entry` = 2701;
-- Removes quest completion from creature 7750 (Corporal Thund Splithoof)
DELETE FROM `creature_involvedrelation` WHERE `quest` = 2701;

-- Remove the "mail" subclass from engineering trinkets which prevented cloth and leather class to use them
-- Thanks to Neotmiren for pointing and fixing
UPDATE `item_template` SET `subclass` = 0 WHERE `class` = 4 AND `subclass` = 3 AND `InventoryType` = 12;

-- Update InhabitType of creature 7046 (Searscale Drake): let it hover!
UPDATE `creature_template` SET `InhabitType` = 3 WHERE `entry` = 7046;

-- Adds condition for loot template of items "Shredder operating manual pages" (entries 16645 to 16656)
-- as these should only drop for Horde players
-- Source: http://www.wowwiki.com/Patch_1.8.0#Items
-- For items looted from creatures
UPDATE `creature_loot_template` SET `condition_id` = 4 WHERE `item` BETWEEN 16645 AND 16656;
-- For items looted from gameobjects
UPDATE `gameobject_loot_template` SET `condition_id` = 4 WHERE `item` BETWEEN 16645 AND 16656;

-- Change Weapon on Dark Touched Warrior from axe to bucket.
-- Source:http://www.wowhead.com/npc=16156#screenshots:id=46064
UPDATE `creature_template` SET `equipment_id` = 1139 WHERE `entry` = 16156;

-- Sewage slime placeholders near patchwerk are actually npc living poison. Level Updated.
-- http://www.wowhead.com/npc=16027#comments
-- http://www.wowwiki.com/Living_Poison
-- http://www.wowhead.com/spell=28433 - spell they use
UPDATE  `creature`  SET `id` = 16027 WHERE `guid` IN (88697, 88696, 88695, 88694, 88693, 88692, 88691, 88690, 88689, 88688, 88687, 88686, 88685, 88684, 88683, 88682);
Update `creature_template` SET `minlevel` = 61, `maxlevel` = 61 WHERE `entry` = 16027;

-- Minor change death touched warrior to doom touched warrior
-- http://www.youtube.com/watch?v=agWfYn0piY8&feature=related
-- http://www.youtube.com/watch?v=7VcozSUZc9Y
DELETE FROM `creature` WHERE `guid` = 88428;
DELETE FROM `creature` WHERE `guid` = 88443;
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES (88428, 16157, 533, 16528, 0, 2879.88, -3198.33, 298.33, 4.04, 3520, 0, 0, 95847, 0, 0, 0);
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES (88443, 16156, 533, 16534, 0, 2799.42, -3159.93, 298.33, 3.85, 3520, 0, 0, 24372, 12000, 0, 0);

-- Embalming slime random movement add and decrease npc scale
UPDATE `creature` SET `spawndist` = 8, `movementtype` = 1 WHERE `id` = 16024;
UPDATE `creature_template` SET `scale` = 1.0 WHERE `entry` = 16024;

-- Remove faerlinas surgical assistants and trash began again
-- Used some anub placeholders to fill in the extra missing npcs of faerlinas trash
-- Source http://imageshack.us/a/img10/126/u2zr.jpg
-- http://imageshack.us/a/img822/7834/qjbl.jpg
-- http://imageshack.us/a/img203/350/u1tu.jpg
-- http://imageshack.us/a/img802/5744/q6o7.jpg
-- http://imageshack.us/a/img153/3964/n2sw.jpg
-- http://imageshack.us/a/img834/5807/yr87.jpg
-- http://imageshack.us/a/img703/4140/q3t4.jpg
-- http://imageshack.us/a/img18/3176/c0t1.jpg
-- http://imageshack.us/a/img843/4158/vf0g.jpg
-- http://imageshack.us/a/img818/7010/iyeq.jpg
-- http://imageshack.us/a/img850/781/ve7x.jpg
-- http://imageshack.us/a/img844/2372/91fi.jpg
-- http://imageshack.us/a/img27/2779/ngzw.jpg
-- http://imageshack.us/a/img607/3883/z21x.jpg
-- http://imageshack.us/a/img41/459/o5w9.jpg

DELETE FROM `creature` WHERE `guid` IN (88515,88511,88514,88512,88513,88516,88540,88521,88539,88519,88520,88518,
88349,88350,88351,88352,88353,88354,88355,88356,88357,88358,88517,88530,88529,88528,88527,88526,88525,88524,88523,
 88522,88508,88507,88506,88505,88538,88537,88536,88535,88534,88533,88532,88531,88510,88509,88504,88503);

INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(88540, 15980, 533, 16594, 0, 3383.74, -3696.1, 259.079, 2.18733, 3520, 0, 0, 25824, 58750, 0, 0),
(88539, 15980, 533, 16594, 0, 3381.75, -3692.54, 259.081, 2.18888, 3520, 0, 0, 25824, 58750, 0, 0),
(88530, 15980, 533, 16594, 0, 3369.99, -3648.58, 259.083, 2.25985, 3520, 0, 0, 25824, 58750, 0, 0),
(88529, 15980, 533, 16594, 0, 3369.86, -3645.99, 259.084, 2.34441, 3520, 0, 0, 25824, 58750, 0, 0),
(88528, 15980, 533, 16594, 0, 3328.08, -3667.47, 259.083, 1.14667, 3520, 0, 0, 25824, 58750, 0, 0),
(88527, 15980, 533, 16594, 0, 3330.6, -3668.71, 259.083, 1.05558, 3520, 0, 0, 25824, 58750, 0, 0),
(88526, 15980, 533, 16594, 0, 3386.68, -3693.53, 259.078, 1.99099, 3520, 0, 0, 25824, 58750, 0, 0),
(88525, 15980, 533, 16594, 0, 3364.66, -3652.31, 259.083, 2.20226, 3520, 0, 0, 25824, 58750, 0, 0),
(88524, 15980, 533, 16594, 0, 3377.78, -3667.32, 259.082, 2.02632, 3520, 0, 0, 25824, 58750, 0, 0),
(88523, 15980, 533, 16594, 0, 3380.65, -3668.88, 259.082, 1.83783, 3520, 0, 0, 25824, 58750, 0, 0),
(88522, 15980, 533, 16594, 0, 3371.37, -3674.5, 259.081, 2.04125, 3520, 0, 0, 25824, 58750, 0, 0),
(88521, 15980, 533, 16594, 0, 3378.09, -3694.5, 259.081, 2.21561, 3520, 0, 0, 25824, 58750, 0, 0),
(88520, 15980, 533, 16594, 0, 3359.55, -3691.23, 259.079, 1.67604, 3520, 0, 0, 25824, 58750, 0, 0),
(88519, 15980, 533, 16594, 0, 3351.66, -3686.87, 259.077, 1.48675, 3520, 0, 0, 25824, 58750, 0, 0),
(88518, 15980, 533, 16594, 0, 3343.45, -3690.63, 259.081, 1.38309, 3520, 0, 0, 25824, 58750, 0, 0),
(88516, 15980, 533, 16594, 0, 3387.27, -3686.28, 259.078, 1.99491, 3520, 0, 0, 25824, 58750, 0, 0),
(88515, 15980, 533, 16594, 0, 3328.66, -3645.67, 259.083, 0.806731, 3520, 0, 0, 25824, 58750, 0, 0),
(88514, 15980, 533, 16594, 0, 3339.58, -3648.76, 259.084, 1.09422, 3520, 0, 0, 25824, 58750, 0, 0),
(88513, 15980, 533, 16594, 0, 3335.5, -3646.6, 259.083, 0.870372, 3520, 0, 0, 25824, 58750, 0, 0),
(88512, 15980, 533, 16594, 0, 3336.3, -3651.87, 259.083, 1.07928, 3520, 0, 0, 25824, 58750, 0, 0),
(88511, 15980, 533, 16594, 0, 3330.74, -3642.45, 259.083, 0.574275, 3520, 0, 0, 25824, 58750, 0, 0),
(88508, 15980, 533, 16594, 0, 3372.95, -3647.09, 259.084, 2.33053, 3520, 0, 0, 25824, 58750, 0, 0),
(88507, 15980, 533, 16594, 0, 3331.81, -3673.99, 259.083, 1.04451, 3520, 0, 0, 25824, 58750, 0, 0),
(88506, 15980, 533, 16594, 0, 3321.17, -3668, 259.083, 1.02287, 3520, 0, 0, 25824, 58750, 0, 0),
(88505, 15980, 533, 16594, 0, 3328.58, -3671.77, 259.082, 1.19209, 3520, 0, 0, 25824, 58750, 0, 0),
(88538, 15981, 533, 16598, 0, 3325.36, -3669.93, 259.083, 0.86144, 3520, 0, 0, 26274, 58750, 0, 0),
(88537, 15981, 533, 16598, 0, 3333.9, -3670.34, 259.083, 1.06684, 3520, 0, 0, 26274, 58750, 0, 0),
(88536, 15981, 533, 16598, 0, 3325.01, -3665.89, 259.083, 1.08134, 3520, 0, 0, 26274, 58750, 0, 0),
(88535, 15981, 533, 16598, 0, 3381.35, -3665.38, 259.082, 2.10801, 3520, 0, 0, 26274, 58750, 0, 0),
(88534, 15981, 533, 16598, 0, 3371.72, -3670.42, 259.082, 1.85668, 3520, 0, 0, 26274, 58750, 0, 0),
(88533, 15981, 533, 16598, 0, 3363.15, -3648.38, 259.084, 2.10817, 3520, 0, 0, 26274, 58750, 0, 0),
(88532, 15981, 533, 16598, 0, 3376.57, -3645.85, 259.083, 2.31337, 3520, 0, 0, 26274, 58750, 0, 0),
(88531, 15981, 533, 16598, 0, 3376.47, -3642.95, 259.084, 2.62281, 3520, 0, 0, 26274, 58750, 0, 0),
(88517, 15981, 533, 16598, 0, 3354.76, -3691.24, 259.075, 1.5166, 3520, 0, 0, 26274, 58750, 0, 0),
(88510, 15981, 533, 16598, 0, 3367.35, -3651.84, 259.084, 2.20932, 3520, 0, 0, 26274, 58750, 0, 0),
(88509, 15981, 533, 16598, 0, 3332.52, -3645.51, 259.083, 0.874526, 3520, 0, 0, 26274, 58750, 0, 0),
(88504, 15981, 533, 16598, 0, 3339.67, -3653.26, 259.083, 1.34752, 3520, 0, 0, 26274, 58750, 0, 0),
(88503, 15981, 533, 16598, 0, 3332.51, -3650.26, 259.083, 1.00466, 3520, 0, 0, 26274, 58750, 0, 0),
(88358, 15981, 533, 16598, 0, 3341.08, -3686.59, 259.087, 1.48889, 3520, 0, 0, 26274, 58750, 0, 0),
(88357, 15981, 533, 16598, 0, 3349.37, -3690.77, 259.078, 1.50796, 3520, 0, 0, 26274, 58750, 0, 0),
(88356, 15981, 533, 16598, 0, 3385.21, -3689.97, 259.08, 2.23446, 3520, 0, 0, 26274, 58750, 0, 0),
(88355, 15981, 533, 16598, 0, 3380.14, -3698.34, 259.082, 2.13314, 3520, 0, 0, 26274, 58750, 0, 0),
(88354, 15981, 533, 16598, 0, 3374.55, -3669.16, 259.083, 1.9792, 3520, 0, 0, 26274, 58750, 0, 0),
(88353, 15981, 533, 16598, 0, 3372.73, -3696.97, 259.082, 2.02146, 3520, 0, 0, 26274, 58750, 0, 0),
(88352, 15981, 533, 16598, 0, 3345.89, -3686.31, 259.082, 1.51205, 3520, 0, 0, 26274, 58750, 0, 0),
(88351, 15981, 533, 16598, 0, 3357.25, -3686.85, 259.079, 1.57865, 3520, 0, 0, 26274, 58750, 0, 0),
(88350, 15981, 533, 16598, 0, 3377.55, -3670.89, 259.082, 2.07345, 3520, 0, 0, 26274, 58750, 0, 0),
(88349, 15981, 533, 16598, 0, 3374.54, -3672.9, 259.082, 1.75929, 3520, 0, 0, 26274, 58750, 0, 0);

-- correcting game objects in ubrs
DELETE FROM `gameobject` WHERE `guid` IN (87895,87896,87897,87863,87898,87864,87899,87865,87900,87901,87902,87903,87904,87905,87951,87952,87953,87954,87955,87956,87957
,87958,87959,87960,87961,87962,87963,87964,87965,87966,87967,87968,87969,87970,87971,87972,87857,87858,87859,87860,87861,87862,87976,87867,87871,87872,87873,87874,87875,87876,
87906,87907,87908,87909,87855,87911,87977,87978,87914,87915,87921,87920,87923,87916,87917,87918,87919,87925,87924,87936,87934,87933,87932,87931,87930,87922,87935,87929,87928,87927,87926,87913);

-- missing most fire and bonfires Ie entry to beasts room
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES
(87871, 136922, 229, 88.2152, -415.1, 110.957, 2.72271, 0, 0, 0, 0, 120, 0, 1),
(87872, 136923, 229, 87.4498, -468.454, 116.887, 2.72271, 0, 0, 0, 0, 120, 0, 1),
(87873, 136925, 229, 40.7229, -586.71, 30.6817, 1.74533, 0, 0, 0, 0, 120, 0, 1),
(87874, 136926, 229, 43.3149, -572.476, 30.6817, 1.74533, 0, 0, 0, 0, 120, 0, 1),
(87875, 136927, 229, 4.75705, -567.073, 29.2222, 1.74533, 0, 0, 0, 0, 120, 0, 1),
(87876, 136928, 229, 8.39204, -583.677, 29.2222, 1.74533, 0, 0, 0, 0, 120, 0, 1),
(87895, 136947, 229, 16.9937, -253.821, 65.4498, 3.14159, 0, 0, 0, 0, 120, 0, 1),
(87896, 136948, 229, 8.17041, -268.98, 65.4498, 3.14159, 0, 0, 0, 0, 120, 0, 1),
(87897, 136949, 229, 51.2451, -274.133, 65.4498, 3.14159, 0, 0, 0, 0, 120, 0, 1),
(87863, 136950, 229, 72.8373, -265.63, 60.7365, 3.14159, 0, 0, 0, 0, 120, 0, 1),
(87898, 136951, 229, 68.8802, -283.794, 60.7365, 3.14159, 0, 0, 0, 0, 120, 0, 1),
(87864, 136952, 229, 69.9731, -329.868, 55.8721, 3.14159, 0, 0, 0, 0, 120, 0, 1),
(87899, 136954, 229, 16.1674, -280.865, 9.61726, 3.14159, 0, 0, 0, 0, 120, 0, 1),
(87865, 136955, 229, 56.3641, -306.158, 54.0157, 3.14159, 0, 0, 0, 0, 120, 0, 1),
(87900, 136957, 229, 117.454, -254.291, 91.5711, 2.72271, 0, 0, 0, 0, 120, 0, 1),
(87901, 136959, 229, 125.656, -280.808, 91.5711, 2.72271, 0, 0, 0, 0, 120, 0, 1),
(87902, 136961, 229, 46.4689, -309.649, 91.5711, 2.72271, 0, 0, 0, 0, 120, 0, 1),
(87903, 136962, 229, 106.177, -265.953, 91.5711, -1.46608, 0, 0, 0, 0, 120, 0, 1),
(87904, 136963, 229, 107.69, -253.095, 91.5711, 2.72271, 0, 0, 0, 0, 120, 0, 1),
(87905, 136964, 229, 82.5879, -364.586, 116.859, 2.72271, 0, 0, 0, 0, 120, 0, 1),
(87951, 176425, 229, 60.0724, -511.967, 29.2143, -3.13874, 0, 0, 0, 0, 120, 0, 1),
(87952, 176426, 229, 56.9335, -556.048, 30.6604, -3.13874, 0, 0, 0, 0, 120, 0, 1),
(87953, 176427, 229, 53.1921, -461.07, 24.3897, -3.1415, 0, 0, 0, 0, 120, 0, 1),
(87954, 176428, 229, -63.2568, -581.483, 29.2934, -3.1415, 0, 0, 0, 0, 120, 0, 1),
(87955, 176429, 229, -37.6863, -551.822, 16.2163, 3.14159, 0, 0, 0, 0, 120, 0, 1),
(87956, 176430, 229, -25.3349, -478.438, 17.2504, 3.14159, 0, 0, 0, 0, 120, 0, 1),
(87957, 176431, 229, -46.3865, -448.61, -18.5644, 3.14159, 0, 0, 0, 0, 120, 0, 1),
(87958, 176432, 229, -2.64242, -579.144, -18.7609, 3.14159, 0, 0, 0, 0, 120, 0, 1),
(87959, 176433, 229, 26.982, -583.365, -18.5153, 3.14159, 0, 0, 0, 0, 120, 0, 1),
(87960, 176434, 229, 35.6424, -550.73, -18.411, 3.14159, 0, 0, 0, 0, 120, 0, 1),
(87961, 176435, 229, 33.1643, -471.047, -18.5059, 3.14159, 0, 0, 0, 0, 120, 0, 1),
(87962, 176436, 229, 31.9839, -495.349, -18.8984, -3.13874, 0, 0, 0, 0, 120, 0, 1),
(87963, 176437, 229, -39.3852, -424.878, -18.8471, 3.14159, 0, 0, 0, 0, 120, 0, 1),
(87964, 176438, 229, -23.2051, -410.609, -18.8984, 3.14159, 0, 0, 0, 0, 120, 0, 1),
(87965, 176439, 229, -76.0975, -418.801, -18.9234, -1.83259, 0, 0, 0, 0, 120, 0, 1),
(87966, 176440, 229, -59.9712, -409.641, -18.8443, 3.14159, 0, 0, 0, 0, 120, 0, 1),
(87967, 176441, 229, -79.5309, -453.927, -18.8332, 3.14159, 0, 0, 0, 0, 120, 0, 1),
(87968, 176442, 229, -15.4378, -368.781, 49.4936, 3.14085, 0, 0, 0, 0, 120, 0, 1),
(87969, 176443, 229, -121.137, -296.445, 71.0397, 3.14159, 0, 0, 0, 0, 120, 0, 1),
(87970, 176444, 229, -137.264, -305.605, 70.9606, -1.83259, 0, 0, 0, 0, 120, 0, 1),
(87971, 176445, 229, -59.1198, -339.829, 70.9606, -1.83259, 0, 0, 0, 0, 120, 0, 1),
(87972, 176446, 229, -87.3357, -348.37, 71.0397, 3.14159, 0, 0, 0, 0, 120, 0, 1),
(87857, 176447, 229, 35.2499, -505.634, 110.914, -3.13874, 0, 0, 0, 0, 120, 0, 1),
(87858, 176448, 229, 31.283, -505.634, 110.914, 1.57142, 0, 0, 0, 0, 120, 0, 1),
(87859, 176449, 229, 27.4453, -505.634, 110.914, -0.261172, 0, 0, 0, 0, 120, 0, 1),
(87860, 176450, 229, 21.5668, -506.581, 110.914, -1.57017, 0, 0, 0, 0, 120, 0, 1),
(87861, 176451, 229, 18.0824, -505.634, 110.914, -3.13874, 0, 0, 0, 0, 120, 0, 1),
(87862, 176452, 229, 24.542, -504.736, 110.914, -2.35556, 0, 0, 0, 0, 120, 0, 1),
(87976, 176457, 229, -115.273, -428.518, -18.701, 3.14159, 0, 0, 0, 0, 120, 0, 1),
(87867, 176460, 229, 70.5435, -257.169, 60.7401, 3.12412, 0, 0, 0, 0, 120, 0, 1),

-- spider eggs
(87914, 175606, 229, -100.23, -529.537, -5.77381, -0.436332, 0, 0, 0, 0, 120, 0, 1),
(87915, 175606, 229, -100.325, -523.847, 10.7029, 2.11185, 0, 0, 0, 0, 120, 0, 1),
(87921, 175606, 229, -129.514, -441.7, 24.4328, 0.977383, 0, 0, 0, 0, 120, 0, 1),
(87920, 175606, 229, -126.746, -514.164, -12.147, 3.10665, 0, 0, 0, 0, 120, 0, 1),
(87923, 175606, 229, -131.805, -526.784, 6.55651, -2.28638, 0, 0, 0, 0, 120, 0, 1),
(87916, 175606, 229, -101.886, -521.985, -7.84199, -0.0349063, 0, 0, 0, 0, 120, 0, 1),
(87917, 175606, 229, -102.465, -575.651, 9.90089, 2.47837, 0, 0, 0, 0, 120, 0, 1),
(87918, 175606, 229, -112.21, -569.506, 10.1992, 2.18166, 0, 0, 0, 0, 120, 0, 1),
(87919, 175606, 229, -125.229, -576.664, 13.7726, -0.296705, 0, 0, 0, 0, 120, 0, 1),
(87925, 175606, 229, -132.404, -514.961, -15.9374, -1.79769, 0, 0, 0, 0, 120, 0, 1),
(87924, 175606, 229, -132.261, -474.848, 9.82244, -2.82743, 0, 0, 0, 0, 120, 0, 1),
(87936, 175606, 229, -154.889, -570.339, 10.0172, 2.47837, 0, 0, 0, 0, 120, 0, 1),
(87934, 175606, 229, -154.592, -525.219, 8.16182, 2.04204, 0, 0, 0, 0, 120, 0, 1),
(87933, 175606, 229, -154.378, -552.234, 9.91885, -2.05949, 0, 0, 0, 0, 120, 0, 1),
(87932, 175606, 229, -153.788, -515.227, -15.9504, -0.95993, 0, 0, 0, 0, 120, 0, 1),
(87931, 175606, 229, -150.104, -470.008, 16.2278, 1.76278, 0, 0, 0, 0, 120, 0, 1),
(87930, 175606, 229, -147.881, -448.549, 20.0911, 1.32645, 0, 0, 0, 0, 120, 0, 1),
(87922, 175606, 229, -131.57, -439.602, 22.8934, -1.13446, 0, 0, 0, 0, 120, 0, 1),
(87935, 175606, 229, -154.77, -541.317, 9.02217, -0.104719, 0, 0, 0, 0, 120, 0, 1),
(87929, 175606, 229, -146.907, -441.463, 22.4744, -0.802851, 0, 0, 0, 0, 120, 0, 1),
(87928, 175606, 229, -144.505, -441.603, 23.1016, 0.331611, 0, 0, 0, 0, 120, 0, 1),
(87927, 175606, 229, -139.153, -434.738, 23.1123, -2.74016, 0, 0, 0, 0, 120, 0, 1),
(87926, 175606, 229, -138.894, -439.497, 24.8088, 1.76278, 0, 0, 0, 0, 120, 0, 1),
(87913, 175588, 229, -139.523, -525.879, 6.36398, -2.426, 0, 0, 0, 0, 120, 0, 1),

-- chests
(87906, 153464, 229, -36.1176, -583.828, -18.8201, 1.97222, 0, 0, 0, 0, 120, 0, 1),
(87909, 153469, 229, 86.8551, -587.501, 30.6085, 2.63544, 0, 0, 0, 0, 120, 0, 1),
(87908, 153469, 229, -84.2677, -350.104, 70.9524, 1.91986, 0, 0, 0, 0, 120, 0, 1),
(87907, 153469, 229, -73.9985, -453.335, -18.935, -3.08918, 0, 0, 0, 0, 120, 0, 1),

-- Doodad_BOSSGATE02 draks second gate ubrs uses sd2 id
(87855, 175947, 229, 45.1933, -312.52, 106.533, 3.14159, 0, 0, 0, 0, 180, 100, 1),

-- bijous belongings
-- Source 1xtdb 2x http://www.wowdb.net/quest-4982.html
(87911, 175334, 229, 33.7166, -466.067, -18.4651, -1.53589, 0, 0, 0, 0, 120, 0, 1),
(87977, 175334, 229, -78.5492, -402.515, -18.935, 5.53805, 0, 0, 0.36401, -0.931395, 25, 100, 1),
(87978, 175334, 229, -9.06949, -462.313, -18.6442, 3.13474, 0, 0, 0.999994, 0.00342519, 25, 100, 1);

-- Pooling of bijous belongings
DELETE FROM `pool_template` WHERE `entry` = 1073;
INSERT INTO `pool_template` (`entry`, `max_limit`, `description`) VALUES (1073, 1, 'QUEST OBJECT - Bijous Belongings - 175334');
DELETE FROM `pool_gameobject_template` WHERE `id` = 175334;
INSERT INTO `pool_gameobject_template` (`id`, `pool_entry`, `chance`, `description`) VALUES (175334, 1073, 0, 'Bijous Belongings');

-- Adjust runes in ubrs pyroguard emberseer room and delete extra rune (theres a duplicate)
Update `gameobject` set `position_x` = 126.4257, `position_y` = -240.77, `position_z` = 91.4701 where `guid` = 82601;
Update `gameobject` set `position_x` = 162.310, `position_y` = -240.765, `position_z` = 91.4688 where `guid` = 82602;
Update `gameobject` set `position_x` = 162.395, `position_y` = -258.904, `position_z` = 91.4701 where `guid` = 82604;
Update `gameobject` set `position_x` = 126.337, `position_y` = -258.731, `position_z` = 91.4701 where `guid` = 82603;
Update `gameobject` set `position_x` = 126.314, `position_y` = -276.79, `position_z` = 91.4701 where `guid` = 82605;
delete from `gameobject` where `guid` = 232791;

-- fifth  mosharu tablet place correctly (move to wall at the moment just tossed strangely in room)
-- http://www.lurkerlounge.com/forums/thread-6826.html
update `gameobject` set `position_x` = -128.234, `position_y` = -482.381, `position_z` = 25.7435, `orientation` = 6.27245, `rotation2` = 0.00536574, `rotation3` = -0.999986 where `guid` = 30277;

-- sixth mosharu tablet place correctly (move to wall at the moment just tossed strangely in room)
-- http://www.lurkerlounge.com/forums/thread-6826.html
update `gameobject` set `position_x` = -11.1345, `position_y` = -465.705, `position_z` = -16.8553, `orientation` = 1.5577, `rotation2` = 0.69938, `rotation3` = 0.71475  where `guid` = 30278;

-- Lower blackrock spire fall out teleport. currently if you fall out of lbrs you do not get teleported, therefore you can fall through the world
DELETE FROM `areatrigger_teleport` where `id` = 2068;
INSERT INTO `areatrigger_teleport` (`id`, `name`, `required_level`, `required_item`, `required_item2`, `required_quest_done`, `target_map`, `target_position_x`, `target_position_y`, `target_position_z`, `target_orientation`) VALUES (2068, 'Blackrock Spire - Fall out', 0, 0, 0, 0, 0, -7524.19, -1230.13, 285.743, 2.09544);

-- Add Bijou source http://www.lurkerlounge.com/forums/thread-6826.html
DELETE FROM `creature` WHERE `guid` = 83030;
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES (83030, 10257, 229, 9553, 0, -5.93244, -553.565, 16.1868, 2.87606, 3520, 0, 0, 8774, 0, 0, 0);

-- Added npc Naxxramas Military Sub-Boss Trigger For gothic fight
-- Updated Naxxramas Military Sub-Boss Trigger level. 80 to 60, and unit flag from 130 to 2
-- 130 = 128 CREATURE_FLAG_EXTRA_INVISIBLE + 2 CREATURE_FLAG_EXTRA_CIVILIAN  otherwise spell visuals are also invisible upon spellhit (can see only with gm on
-- Source tdb
UPDATE `creature_template` SET `minlevel` = 60, `maxlevel` = 60, `flags_extra` = 2 WHERE `entry` = 16137;
UPDATE `creature` set `id` = 16137, `modelid` = 11686, `position_x` = 2714.03, `position_y` = -3430.7,  `position_z` = 268.563, `orientation` = 4.01511, `spawntimesecs` =  3600, `curhealth` = 17010 where `guid` = 88359;
UPDATE `creature` set `id` = 16137, `modelid` = 11686, `position_x` = 2669.94, `position_y` = -3429.76, `position_z` = 268.563, `orientation` = 5.74927, `spawntimesecs` =  3600, `curhealth` = 17010 where `guid` = 88360;
UPDATE `creature` set `id` = 16137, `modelid` = 11686, `position_x` = 2643.73, `position_y` = -3321.73, `position_z` = 284.233, `orientation` = 6.19592, `spawntimesecs` =  3600, `curhealth` = 17010 where `guid` = 88361;
UPDATE `creature` set `id` = 16137, `modelid` = 11686, `position_x` = 2725.82, `position_y` = -3309.57, `position_z` = 267.769, `orientation` = 2.82743, `spawntimesecs` =  3600, `curhealth` = 17010 where `guid` = 88362;
UPDATE `creature` set `id` = 16137, `modelid` = 11686, `position_x` = 2664.87, `position_y` = -3340.75, `position_z` = 267.767, `orientation` = 5.93412, `spawntimesecs` =  3600, `curhealth` = 17010 where `guid` = 88363;
UPDATE `creature` set `id` = 16137, `modelid` = 11686, `position_x` = 2643.73, `position_y` = -3399.68, `position_z` = 284.183, `orientation` = 6.0912,  `spawntimesecs` =  3600, `curhealth` = 17010 where `guid` = 88364;
UPDATE `creature` set `id` = 16137, `modelid` = 11686, `position_x` = 2700.27, `position_y` = -3322.35, `position_z` = 267.768, `orientation` = 3.52556, `spawntimesecs` =  3600, `curhealth` = 17010 where `guid` = 88365;
UPDATE `creature` set `id` = 16137, `modelid` = 11686, `position_x` = 2683.89, `position_y` = -3304.21, `position_z` = 267.768, `orientation` = 2.49582, `spawntimesecs` =  3600, `curhealth` = 17010 where `guid` = 88366;
UPDATE `creature` set `id` = 16137, `modelid` = 11686, `position_x` = 2739.99, `position_y` = -3399.78, `position_z` = 284.295, `orientation` = 6.10865, `spawntimesecs` =  3600, `curhealth` = 17010 where `guid` = 88367;
UPDATE `creature` set `id` = 16137, `modelid` = 11686, `position_x` = 2692.21, `position_y` = -3428.78, `position_z` = 268.646, `orientation` = 1.48353, `spawntimesecs` =  3600, `curhealth` = 17010 where `guid` = 88368;
UPDATE `creature` set `id` = 16137, `modelid` = 11686, `position_x` = 2739.99, `position_y` = -3321.73, `position_z` = 284.232, `orientation` = 2.82743, `spawntimesecs` =  3600, `curhealth` = 17010 where `guid` = 88369;
UPDATE `creature` set `id` = 16137, `modelid` = 11686, `position_x` = 2733.46, `position_y` = -3349.39, `position_z` = 267.768, `orientation` = 1.78024, `spawntimesecs` =  3600, `curhealth` = 17010 where `guid` = 88370;
UPDATE `creature` set `id` = 16137, `modelid` = 11686, `position_x` = 2692.16, `position_y` = -3430.75, `position_z` = 268.646, `orientation` = 1.6057,  `spawntimesecs` =  3600, `curhealth` = 17010 where `guid` = 88371;

-- Change Spectral death knight/Unrelenting Death Knight name also Unrelenting rider/unrelenting trainee/Spectral rider faction rank
UPDATE `creature_template` SET `faction_A` = 21, `faction_H` = 21, `rank` = 1 WHERE `entry` = 16126;
UPDATE `creature_template` SET `faction_A` = 21, `faction_H` = 21, `rank` = 1 WHERE `entry` = 16124;
UPDATE `creature_template` SET `name` = 'Unrelenting Deathknight', `faction_A` = 21, `faction_H` = 21, `rank` = 1 WHERE `entry` = 16125;
UPDATE `creature_template` SET `name` = 'Spectral Deathknight', `faction_A` = 21, `faction_H` = 21, `rank` = 1 WHERE `entry` = 16148;
UPDATE `creature_template` SET `faction_A` = 21, `faction_H` = 21, `rank` = 1 WHERE `entry` = 16150;

-- Add quest start script to Vyletongue Corruption (7029 & 7041)
UPDATE `quest_template` SET `StartScript`=7029 WHERE `StartScript`=7029;
UPDATE `quest_template` SET `StartScript`=7041 WHERE `StartScript`=7041;

DELETE FROM `dbscripts_on_quest_start` WHERE `id` IN (7029, 7041);
INSERT INTO `dbscripts_on_quest_start` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
(7029, 0, 0, 0, 0, 0, 0, 0, 2000005465, 0, 0, 0, 0, 0, 0, 0, 'Vark Battlescar - Talk'),
(7041, 0, 0, 0, 0, 0, 0, 0, 2000005465, 0, 0, 0, 0, 0, 0, 0, 'Talendria - Talk');

DELETE FROM `db_script_string` WHERE `entry`=2000005465;
INSERT INTO `db_script_string` (`entry`, `content_default`, `content_loc1`, `content_loc2`, `content_loc3`, `content_loc4`, `content_loc5`, `content_loc6`, `content_loc7`, `content_loc8`, `sound`, `type`, `language`, `emote`, `comment`) VALUES
(2000005465, '$N, please take a look at the sample of the Vylestem vine that I took from the caverns, so that you know what to look for...', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL);

-- UPDATE Database Version
UPDATE `db_version` SET `version` = 'ZeroDatabase 2.0.8 for MaNGOSZero zXXXX+ and ScriptDevZero zXXXX+';
