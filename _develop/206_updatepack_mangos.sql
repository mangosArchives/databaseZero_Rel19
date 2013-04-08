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

-- Removed a duplicate 'The Park' sign in Stormwind
DELETE FROM `gameobject` WHERE `guid` = 42860;

/* Linked correct npc text to Nessa Shadowsong
   Added gossip flag
   Sources: http://www.youtube.com/watch?v=XPCmIWXUQmY&t=1m12s
            MaNGOSZero Database
*/
DELETE FROM `npc_gossip` WHERE `npc_guid` = 46561 AND `textid` = 5475;
INSERT INTO `npc_gossip` VALUES
(46561, 5475);

UPDATE `creature_template` SET `npcflag` = 7 WHERE `entry` = 10118;

/* Removed Mana Points from all Warrior Trainers
   Sources: Example: http://www.wowhead.com/npc=5114/bilban-tosslespanner
            http://www.youtube.com/watch?v=nUwedP9Uoz4&t=2m48s
*/
UPDATE `creature` SET `curmana` = 0 WHERE `id` IN (911, 912, 913, 914, 985, 1229, 1901, 2119, 2131, 3041, 3042, 3043, 3059, 3063, 3153, 3169, 3353, 3354, 3408, 3593, 3598, 4087, 4089, 4593, 4594, 4595, 5113, 5114, 5479, 5480, 7315, 8141);
UPDATE `creature_template` SET `minmana` = 0, `maxmana` = 0 WHERE `subname` = 'Warrior Trainer';

/* Linked correct npc text to Laird
   Added gossip flag
   Sources: http://www.youtube.com/watch?v=DYTHaE2XyJ4&t=9m31s
            MaNGOSZero Database

   Structure of `npc_gossip`:
   (`npc_guid`, `textid`)
*/
DELETE FROM `npc_gossip` WHERE `npc_guid` = 37088 AND `textid` = 5476;
INSERT INTO `npc_gossip` VALUES
(37088, 5476);

UPDATE `creature_template` SET `npcflag` = 7 WHERE `entry` = 4200;

/* Linked correct npc text to Doctor Gustaf VanHowzen
   Removed Mana Points
   Sources: http://www.youtube.com/watch?v=-JFEBqv8Rts&t=5m52s
            MaNGOSZero Database

   Structure of `npc_gossip`:
   (`npc_guid`, `textid`)
*/
DELETE FROM `npc_gossip` WHERE `npc_guid` = 33780 AND `textid` = 6415;
INSERT INTO `npc_gossip` VALUES
(33780, 6415);

UPDATE `creature` SET `curmana` = 0 WHERE `id` = 12939;
UPDATE `creature_template` SET `minmana` = 0, `maxmana` = 0 WHERE `entry` = 12939;

/* Changes to the Quest: Identifying the Brood (1169):
   Added this Quest to it's proper chain
   Dropped the Min. Level requirement for all Quests in this chain to 38, down from 39
   Players must now obtain 15 items of each instead of 7

   Sources: http://web.archive.org/web/20070216194659/http://www.wowwiki.com/Quest:Identifying_the_Brood
            http://www.wowhead.com/quest=1169/deprecated-identifying-the-brood#comments:id=183809
*/
UPDATE `quest_template` SET `Objectives` = 'Draz\'Zilb in Brackenwall Village would like you to bring him 15 Searing Tongues and 15 Searing Hearts.', `ReqItemCount1` = 15, `ReqItemCount2` = 15, `NextQuestInChain` = 1170 WHERE `entry` = 1169;
UPDATE `quest_template` SET `MinLevel` = 38 WHERE `entry` IN (1170, 1171, 1172);

/* Spawn Fizzles creature (1419)
   Source: The data is taken from UDB and http://www.wowpedia.org/File:Charys_Yserian.jpg?c=1 (you can see Fizzles, post date is 2006)
*/
DELETE FROM `creature` WHERE `guid` = 90184;
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(90184, 1419, 0, 0, 0, -8994.19, 947.069, 118.348, 4.29351, 180, 0, 0, 8, 0, 0, 0);

/* Set Booty Bay Bruiser's rank to Normal
   Source: http://www.youtube.com/watch?v=2zXG8WgEXjQ
*/
UPDATE `creature_template` SET `rank` = 0 WHERE `entry` = 4624;

/* Changes to NPC Spirit Healer:
   Change npcflag to allow intended interaction
   Change MovementType to idle

   Source: http://www.wowwiki.com/Spirit_Healer
*/
UPDATE `npc_text` SET `text0_0` = 'It is not yet your time. I shall aid your journey back to the realm of the living... for a price.', `text0_1` = '' WHERE `id` = 580;
UPDATE `creature_template` SET `npcflag` = 33, `MovementType` = 0 WHERE `entry` = 6491;

-- Set Rohh the Silent's rank to Rare (947)
-- Set Deathmaw's rank to Rare (10077)
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` IN (947, 10077);

-- Set Grubthor's rank to Rare and modify Health Point values
UPDATE `creature` SET `curhealth` = 8097 WHERE `id` = 14477;
UPDATE `creature_template` SET `minhealth` = 8097, `maxhealth` = 8097, `rank` = 4 WHERE `entry` = 14477;

-- Correct drop rate of Quest Item: Blackrock Medallion
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -45 WHERE `entry` IN (7025, 7026, 7027, 7028, 7029, 7055, 9690, 9697, 10097) AND `item` = 11467;

-- Correct the Min. Level requirement and QuestLevel for Quest: A Carefully Wrapped Present
UPDATE `quest_template` SET `MinLevel` = 1, `QuestLevel` = 60 WHERE `entry` = 8744;

-- Correct a issues wth the Stolen Winter Veil Treats quest chain
UPDATE `quest_template` SET `QuestLevel` = 35 WHERE `entry` = 7042;
UPDATE `quest_template` SET `MinLevel` = 30 WHERE `entry` IN (6983, 7042);

-- More corrections to Quest drop rates
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -33 WHERE `entry` = 8761 AND `item` = 20027;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -33 WHERE `entry` = 3121 AND `item` = 4892;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -10 WHERE `entry` = 5481 AND `item` = 8428;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -60 WHERE `entry` IN (1134, 1135, 1137, 1271, 1388) AND `item` = 2671;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -5 WHERE `entry` IN (14267, 1181, 1179, 1183, 1180, 1178) AND `item` = 2607;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -10 WHERE `entry` IN (1693, 2476) AND `item` = 2939;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -10 WHERE `entry` IN (1184, 1185, 1195, 14266) AND `item` = 2606;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -50 WHERE `entry` IN (1161, 1162, 1163, 1164, 1165, 1166, 1167, 1197, 1393) AND `item` = 2536;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -50 WHERE `entry` IN (1172, 1173, 1174, 1175, 1176, 1177, 1202) AND `item` = 3110;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -40 WHERE `entry` = 2735 AND `item` = 4626;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -10 WHERE `entry` IN (7459, 7460) AND `item` = 12367;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -55 WHERE `entry` IN (4844, 4845, 4846, 4847, 4848, 4849, 7030, 7081, 7290) AND `item` = 8009;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -55 WHERE `entry` IN (5331, 5332, 5333, 5334, 5335, 5336, 5337, 5343, 8136) AND `item` = 9247;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -33 WHERE `entry` IN (2829, 2830, 2831) AND `item` = 7847;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -33 WHERE `entry` IN (92, 2735, 2736, 2745, 2752, 2791, 2919, 8278) AND `item` = 7848;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -33 WHERE `entry` IN (7032, 7039, 8981) AND `item` = 11266;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -40 WHERE `entry` IN (2701, 2715, 2716, 2717, 2718, 2719, 2720, 2906, 2907) AND `item` = 4630;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -33 WHERE `entry` = 2555 AND `item` = 4522;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -33 WHERE `entry` IN (2552, 2553, 2554, 2555, 2556, 2557, 2558, 2605) AND `item` = 4503;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -33 WHERE `entry` = 2561 AND `item` = 4513;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -50 WHERE `entry` IN (2572, 2573, 2574) AND `item` = 4435;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -5 WHERE `entry` IN (2588, 2590, 2591) AND `item` = 4440;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -33 WHERE `entry` IN (2586, 2587, 2589) AND `item` = 4495;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -33 WHERE `entry` IN (2559, 2560) AND `item` = 4512;

-- Correct faction for multiple quests
UPDATE `quest_template` SET `RequiredRaces` = 178 WHERE `entry` IN (817, 818, 823, 2161);

-- Correct the drop rate for Shaman Voodoo Charm
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -15 WHERE `entry` = 2009 AND `item` = 8363;

-- Correct the Min. Level requirement for the Quest: Andron's Payment to Jediga
UPDATE `quest_template` SET `MinLevel` = 45 WHERE entry = 3564;

-- Correct the drop rate for Sida's Bag
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -15 WHERE `entry` IN (1031, 1032, 1033) AND `item` = 3349;

-- Correct completion text for Blood Tinged Skies 5543
UPDATE `quest_template` SET `OfferRewardText` = 'You are a shining example of decency, $r! It has been long since I have felt the blood of heroes pump through my veins. Your acts of bravery are uplifting!' WHERE `entry` = 5543;

-- Correct the drop rate of the following Quest Items:
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -35 WHERE `entry` = 768 AND `item` = 6080;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -55 WHERE `entry` = 1081 AND `item` = 6081;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -15 WHERE `entry` IN (2384, 2385, 2406, 2407) AND `item` = 3496;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -30 WHERE `entry` IN (7430, 7431, 7432, 7433, 7434, 7443, 7444, 7445, 7446) AND `item` = 21928;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -30 WHERE `entry` = 1907 AND `item` = 4029;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -17 WHERE `entry` IN (587, 588, 595, 597, 660, 671, 694, 697, 699, 701, 702) AND `item` = 3915;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -32 WHERE `entry` = 2635 AND `item` = 4105;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -52 WHERE `entry` = 1096 AND `item` = 4106;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -37 WHERE `entry` IN (587, 588, 595, 597, 660, 671, 694, 697, 699, 701, 702) AND `item` = 3901;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -15 WHERE `entry` = 772 AND `item` = 3839;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -10 WHERE `entry` = 1557 AND `item` = 3862;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -25 WHERE `entry` = 687 AND `item` = 3863;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -30 WHERE `entry` = 1557 AND `item` = 3919;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -21 WHERE `entry`  IN (667, 669, 670, 672, 696, 780, 781, 782, 783, 784, 1059, 1061, 1062) AND `item` = 1524;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -41 WHERE `entry` = 1152 AND `item` = 4104;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -10 WHERE `entry` IN (667, 669, 670, 672, 696, 780, 781, 782, 783, 784, 1059) AND `item` = 3916;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -34 WHERE `entry` = 1150 AND `item` = 4053;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -15 WHERE `entry` IN (740, 741, 742, 743, 744, 745, 746, 14445) AND `item` = 5803;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -7 WHERE `entry` = 1088 AND `item` = 6184;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -30 WHERE `entry` IN (1082, 1087) AND `item` = 6169;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -10 WHERE `entry` = 2686 AND `item` = 9322;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -50 WHERE `entry` IN (4011, 4012, 4013, 4014, 4015, 6141) AND `item` = 5808;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -10 WHERE `entry` IN (3737, 3739, 3740, 3742) AND `item` = 5463;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -5 WHERE `entry` IN (6195, 6196, 7885, 7886) AND `item` = 13815;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -48 WHERE `entry` IN (2189, 2190) AND `item` = 5336;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -36 WHERE `entry` = 2212 AND `item` = 5338;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -45 WHERE `entry` IN (2071, 2237) AND `item` = 5386;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -50 WHERE `entry` IN (2185, 2187) AND `item` = 5412;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -45 WHERE `entry` IN (2176, 2177, 2178) AND `item` = 5360;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -40 WHERE `entry` IN (2233, 2235) AND `item` = 12237;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -20 WHERE `entry` IN (2069, 2070, 2071, 2175, 2237) AND `item` = 5413;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -50 WHERE `entry` = 2336 AND `item` = 5348;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -40 WHERE `entry` IN (2165, 6788) AND `item` = 5414;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -30 WHERE `entry` IN (4632, 4633, 4634, 4635, 4636, 4637, 12976, 12977) AND `item` = 6079;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -60 WHERE `entry` IN (3106, 3107, 3108, 3228) AND `item` = 4888;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -60 WHERE `entry` IN (3103, 3104, 3105, 3141, 6020) AND `item` = 4887;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -30 WHERE `entry` IN (3119, 3120, 3128, 3129, 3192, 5808, 5809) AND `item` = 4870;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -23 WHERE `entry` IN (7105, 7106, 7107, 7108, 7109, 7110, 7111) AND `item` = 11674;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -19 WHERE `entry` IN (5278, 7997) AND `item` = 9369;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -60 WHERE `entry` IN (5249, 5251, 5253, 5254, 5255, 5258) AND `item` = 9237;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -50 WHERE `entry` IN (2955, 2956, 2957, 3068, 3244, 3245, 3246) AND `item` = 4759;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -40 WHERE `entry` IN (2958, 2959, 2960) AND `item` = 4758;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -70 wHERE `entry` IN (2969, 2970, 2971) AND `item` = 4769;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -41 WHERE `entry` = 3566 AND `item` = 5203;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -44 WHERE `entry` = 3035 AND `item` = 4802;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -44 WHERE `entry` = 2959 AND `item` = 4801;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -36 WHERE `entry` = 2960 AND `item` = 4803;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -30 WHERE `entry` IN (11735, 11736, 11737, 11738, 11739) AND `item` = 22381;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -20 WHERE `entry` IN (6505, 6506, 6507, 6508, 6581, 9683, 9684) AND `item` = 11477;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -36 WHERE `entry` IN (4036, 4037, 4038) AND `item` = 5659;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -45 WHERE `entry` IN (4041, 4042, 4044, 4147) AND `item` = 5675;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -10 WHERE `entry` IN (6551, 6552, 6553, 6554, 6555, 10040) AND `item` = 11837;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -65 WHERE `entry` IN (5455, 5456, 5457, 5458, 5459, 5460) AND `item` = 8587;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -20 WHERE `entry` IN (7855, 7856, 7857, 7858, 7883, 8203, 15685) AND `item` = 20519;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -36 WHERE `entry` IN (2015, 2017, 2018, 2019, 2020, 2021, 14431) AND `item` = 5204;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -37 WHERE `entry` = 2030 AND `item` = 5168;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -25 WHERE `entry` IN (2022, 2025, 2027, 2029, 2166) AND `item` = 5168;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -41 WHERE `entry` IN (2027, 2029, 2030) AND `item` = 5170;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -27 WHERE `entry` IN (1998, 1999, 2000, 2001) AND `item` = 3412;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -21 WHERE `entry` IN (2033, 2034, 2042, 2043, 14430) AND `item` = 3409;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -35 WHERE `entry` IN (1995, 1996, 1997) AND `item` = 3411;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -20 WHERE `entry` IN (4113, 4116, 14427) AND `item` = 5842;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -50 WHERE `entry` = 3238 AND `item` = 4898;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -39 WHERE `entry` IN (3276, 3277, 3278, 3279, 3280, 3452) AND `item` = 5064;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -30 WHERE `entry` IN (4142, 4143, 4144) AND `item` = 5795;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -60 WHERE `entry` IN (2892, 2893, 2894, 4851, 4856, 6733) AND `item` = 5797;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -30 WHERE `entry` IN (4130, 4131, 4132, 4133) AND `item` = 5855;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -10 WHERE `entry` IN (4139, 4140, 5937) AND `item` = 5794;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -28 WHERE `entry` IN (6503, 6501, 6502, 9164, 6504) AND `item` = 11114;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -2 WHERE `entry` IN (9162, 9163) AND `item` = 11114;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -54 WHERE `entry` = 9167 AND `item` = 11831;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -41 WHERE `entry` = 9165 AND `item` = 11831;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -35 WHERE `entry` = 9166 AND `item` = 11831;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -30 WHERE `entry` IN (9162, 9163, 9164) AND `item` = 11830;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -10 WHERE `entry` IN (7447, 7448, 7449) AND `item` = 12444;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -40 WHERE `entry` IN (7443, 7444, 7445, 7446) AND `item` = 12622;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -40 WHERE `entry` IN (7447, 7448, 7449)  AND `item` = 12623;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -2 WHERE `entry` IN (7428, 7429) AND `item` = 12334;

-- Remove the Quest Item: Dinosaur Bone from Bloodpetal Trapper and Frenzied Pterrordax
DELETE FROM `creature_loot_template` WHERE `entry` IN (6512, 9167) AND `item` = 11114;

-- Remove the Quest Item: Broken Tears from Gelkis Windchaser, Gelkis Earthcaller and Gelkis Rumbler
DELETE FROM `creature_loot_template` WHERE `entry` IN (4649, 4651, 4661) AND `item` = 6083;

-- Add Quest Item: Tumbled Crystal to Venture Co. Shredder's loot table
DELETE FROM `creature_loot_template` WHERE `entry` = 4260 AND `item` = 4106;
INSERT INTO `creature_loot_template` VALUES
(4260, 4106, 32, 0, 1, 1, 0);

-- The Item: Immature Venom Sac will now rot (disappear) after 1 hour (real time)
UPDATE `item_template` SET `duration` = 3600 WHERE `entry` = 12586;

-- Correct Arch Druid Fandral Staghelm's Mana Points
UPDATE `creature` SET `curmana` = 170320 WHERE `id` = 3516;
UPDATE `creature_template` SET `minmana` = 170320, `maxmana` = 170320 WHERE `entry` = 3516;

-- Correct the Min. Level requirement for the Quest: Reassignment
UPDATE `quest_template` SET `minlevel` = 25 WHERE `entry` = 563;

-- Correct the Min. Level requirement for Quests: A Visit to Gregan and Haze of Evil
UPDATE `quest_template` SET `minlevel` = 47 WHERE `entry` IN (4142, 4143);

-- Change NPC Anvilrage Reservist's respawn timer to 20 seconds
UPDATE `creature`  SET `spawntimesecs` = 20 WHERE `id` = 8901;

-- Dramatically lower the drop rate of Item: Shimmering Amice, from Agam'ar
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -2 WHERE `entry` = 4511 AND `item` = 6566;

-- Allow Warlocks to accept the Quest: Armaments of War
UPDATE `quest_template` SET `RequiredClasses` = 384 WHERE `entry` = 8381;

-- Remove Elite status from NPCs Wailing Death and Hungering Wraith
UPDATE `creature_template` SET `rank` = 0 WHERE `entry` IN (1802, 1804);

-- Change one of Witch Doctor Zum'rah's AI Texts to universal language
UPDATE `creature_ai_texts` SET `language` = 0 WHERE `entry` = -320;

-- Reduce the drop rate of Quest Item: Vial of Hatefury Blood
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -40 WHERE `entry` IN (4670, 4671, 4672, 4673, 4674, 4675, 14225) AND `item` = 6989;

-- Reduce the drop rate of Quest Item: Bloodstone Amulet
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -38 WHERE `entry` IN (2589, 2587) AND `item` = 4495;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -28 WHERE `entry` = 2586 AND `item` = 4495;

-- Reduce the drop rate of Quest Item: Sigil of Strom
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -5 WHERE `entry` IN (2590, 2588, 2591) and `item` = 4440;

-- Correct the following Items:
UPDATE `item_template` SET `dmg_min1` = 91, `dmg_max1` = 137, `dmg_min2` = 13, `dmg_max2` = 19 WHERE `entry` = 13040;
UPDATE `item_template` SET `dmg_min2` = 18, `dmg_max2` = 26 WHERE `entry` = 16004;
UPDATE `item_template` SET `dmg_min1` = 58, `dmg_max1` = 109, `dmg_min2` = 18, `dmg_max2` = 26 WHERE `entry` = 2825;
UPDATE `item_template` SET `dmg_min2` = 12, `dmg_max2` = 18 WHERE `entry` = 9412;
UPDATE `item_template` SET `dmg_min1` = 49, `dmg_max1` = 93, `dmg_min2` = 66, `dmg_max2` = 98 WHERE `entry` = 10567;
UPDATE `item_template` SET `dmg_min1` = 61, `dmg_max1` = 114, `dmg_min2` = 18, `dmg_max2` = 26 WHERE `entry` = 13146;
UPDATE `item_template` SET `dmg_min2` = 31, `dmg_max2` = 45 WHERE `entry` = 6469;
UPDATE `item_template` SET `dmg_min1` = 68,  `dmg_max1` = 127, `dmg_min2` = 15, `dmg_min2` = 21 WHERE `entry` = 17753;
UPDATE `item_template` SET `dmg_min2` = 33, `dmg_max2` = 49 WHERE `entry` = 2099;

-- Rename Snake Bloom Firework to Snake Burst Firework
UPDATE `item_template` SET `name` = 'Snake Burst Firework' WHERE `entry` = 19026;

-- Corrected Sprok <Away Team>'s Faction
UPDATE `creature_template` SET `faction_A` = 120, `faction_H` = 120 WHERE `entry` = 8320;

-- Flag Malgin Barleybrew <Bael'dun Morale Officer> as friendly to Alliance players
UPDATE `creature_template` SET `faction_A` = 55 WHERE `entry` = 5848;

-- Flag Ghost Saber as tameable
UPDATE `creature_template` SET `type_flags` = 1 WHERE `entry` = 3619;

-- Correct the OfferRewardText for the Quest: Everything Counts In Large Amounts
UPDATE `quest_template` SET `OfferRewardText` = 'You truly disgust me, $r. A grown man drooling over a pile of junk? Pitiful! Take your reward and get out of my sight.' WHERE `entry` = 3501;

-- Restrict Quest Item: Crag Coyote Fang to 10 per stack
UPDATE `item_template` SET `stackable` = 10 WHERE `entry` = 7846;

-- Add roaming to the following NPCs:
UPDATE `creature_template` SET `MovementType` = 1 WHERE `entry` IN (2511, 2515, 2528, 2506, 2516, 2526, 2512, 2507);

-- The following NPCs are now restricted to ground-only:
UPDATE `creature_template` SET `InhabitType` = 1 WHERE `entry` IN (1161, 1162, 1163, 1164, 1165, 1166, 1167, 1197, 1205, 1206, 1207, 1393, 1398, 1399, 1092, 2527, 2525, 2511, 1276, 1089, 2509, 1338, 2105, 1280, 2515, 1279, 1277, 1091, 1337, 2528, 2524, 1334, 2506, 2513, 1340, 1283, 2516, 2511, 3317, 1331, 2514, 2526,
1332, 1329, 2510, 3836, 1342, 2512, 1278, 1343, 2518, 1330, 1282, 1090, 2508, 1335, 1281, 1336, 8055);

-- Correct the Min/Max Health Points of the following creatures:
UPDATE `creature` SET `curhealth` = 312 WHERE `id` IN (3155, 5887, 9796);
UPDATE `creature` SET `curhealth` = 396 WHERE `id` IN (3157, 3158, 3161);
UPDATE `creature` SET `curhealth` = 142 WHERE `id` IN (3101, 3102, 3124);
UPDATE `creature` SET `curhealth` = 172 WHERE `id` IN (10556, 11378);
UPDATE `creature` SET `curhealth` = 444 WHERE `id` IN (3153, 3160);
UPDATE `creature` SET `curhealth` = 204 WHERE `id` IN (385, 2098, 3143, 11943);
UPDATE `creature` SET `curhealth` = 110 WHERE `id` = 3287;
UPDATE `creature` SET `curhealth` = 352 WHERE `id` IN (3156, 3882, 12776);
UPDATE `creature` SET `curhealth` = 968 WHERE `id` IN (1139, 10176);
UPDATE `creature` SET `curhealth` = 2559 WHERE `id` = 3159;
UPDATE `creature` SET `curhealth` = 84 WHERE `id` = 3098;
UPDATE `creature` SET `curhealth` = 224 WHERE `id` = 3281;
UPDATE `creature` SET `curhealth` = 245 WHERE `id`= 3183;
UPDATE `creature` SET `curhealth` = 494 WHERE `id` = 3145;
UPDATE `creature` SET `curhealth` = 28 WHERE `id` IN (1933, 10685);
UPDATE `creature` SET `curhealth` = 680 WHERE `id` = 6966;
UPDATE `creature` SET `curhealth` = 2165150 WHERE `id` = 11583;
UPDATE `creature` SET `curhealth` = 5544 WHERE `id` = 7009;
UPDATE `creature` SET `curhealth` = 8 WHERE `id` IN (12297, 12299);
UPDATE `creature` SET `curhealth` = 7058 WHERE `id` = 7369;
UPDATE `creature` SET `curhealth` = 7517 WHERE `id` = 7371;
UPDATE `creature` SET `curhealth` = 5646 WHERE `id` = 7379;
UPDATE `creature` SET `curhealth` = 6013 WHERE `id` = 7372;
UPDATE `creature` SET `curhealth` = 1 WHERE `id` = 883;
UPDATE `creature` SET `curhealth` = 28 WHERE `id` = 4166;
UPDATE `creature` SET `curhealth` = 41 WHERE `id` = 10780;
UPDATE `creature` SET `curhealth` = 2005 WHERE `id` IN (6727, 6740);
UPDATE `creature` SET `curhealth` = 24420 WHERE `id` = 16097;
UPDATE `creature` SET `curhealth` = 968 WHERE `id` IN (789, 791, 3619);
UPDATE `creature` SET `curhealth` = 140 WHERE `id` = 12298;
UPDATE `creature` SET `curhealth` = 7287 WHERE `id` = 7376;
UPDATE `creature` SET `curhealth` = 30 WHERE `id` = 16377;
UPDATE `creature` SET `curhealth` = 3820800 WHERE `id` = 15192;
UPDATE `creature` SET `curhealth` = 74304 WHERE `id` = 8197;
UPDATE `creature` SET `curhealth` = 14226 WHERE `id` = 8198;

UPDATE `creature_template` SET `minhealth` = 312, `maxhealth` = 312 WHERE `entry` IN (3155, 5887, 9796);
UPDATE `creature_template` SET `minhealth` = 396, `maxhealth` = 396 WHERE `entry` IN (3157, 3158, 3161);
UPDATE `creature_template` SET `minhealth` = 142, `maxhealth` = 158 WHERE `entry` = 3101;
UPDATE `creature_template` SET `minhealth` = 142, `maxhealth` = 156 WHERE `entry` IN (3102, 3124);
UPDATE `creature_template` SET `minhealth` = 172, `maxhealth` = 172 WHERE `entry` IN (10556, 11378);
UPDATE `creature_template` SET `minhealth` = 444, `maxhealth` = 444 WHERE `entry` IN (3153, 3160);
UPDATE `creature_template` SET `minhealth` = 204, `maxhealth` = 204 WHERE `entry` IN (385, 2098, 3143, 11943);
UPDATE `creature_template` SET `minhealth` = 110, `maxhealth` = 110 WHERE `entry` = 3287;
UPDATE `creature_template` SET `minhealth` = 352, `maxhealth` = 352 WHERE `entry` In (3156, 3882, 12776);
UPDATE `creature_template` SET `minhealth` = 968, `maxhealth` = 968 WHERE `entry` IN (1139, 10176);
UPDATE `creature_template` SET `minhealth` = 2559, `maxhealth` = 2559 WHERE entry = 3159;
UPDATE `creature_template` SET `minhealth` = 84, `maxhealth` = 84 WHERE `entry` = 3098;
UPDATE `creature_template` SET `minhealth` = 224, `maxhealth` = 224 WHERE `entry` = 3281;
UPDATE `creature_template` SET `minhealth` = 245, maxhealth = 245 WHERE `entry` = 3183;
UPDATE `creature_template` SET `minhealth` = 494, maxhealth = 494 WHERE `entry` = 3145;
UPDATE `creature_template` SET `minhealth` = 28, `maxhealth` = 28 WHERE `entry` IN (1933, 10685);
UPDATE `creature_template` SET `maxhealth` = 826998 WHERE `entry` = 11988;
UPDATE `creature_template` SET `minhealth` = 680, `maxhealth` = 680 WHERE `entry` = 6966;
UPDATE `creature_template` SET `minhealth` = 2165150, `maxhealth` = 2165150 WHERE `entry` = 11583;
UPDATE `creature_template` SET `minhealth` = 5544, `maxhealth` = 5544 WHERE `entry` = 7009;
UPDATE `creature_template` SET `minhealth` = 8, `maxhealth` = 8 WHERE `entry` IN (12297, 12299);
UPDATE `creature_template` SET `minhealth` = 7058, `maxhealth` = 7372 WHERE `entry` = 7369;
UPDATE `creature_template` SET `minhealth` = 7517, `maxhealth` = 7857 WHERE `entry` = 7371;
UPDATE `creature_template` SET `minhealth` = 5646, `maxhealth` = 5906 WHERE `entry` = 7379;
UPDATE `creature_template` SET `minhealth` = 6013, `maxhealth` = 6111 WHERE `entry` = 7372;
UPDATE `creature_template` SET `minhealth` = 1, `maxhealth` = 1 WHERE `entry` = 883;
UPDATE `creature_template` SET `minhealth` = 28, `maxhealth` = 28 WHERE `entry` = 4166;
UPDATE `creature_template` SET `minhealth` = 41, `maxhealth` = 41 WHERE `entry` = 10780;
UPDATE `creature_template` SET `minhealth` = 2005, `maxhealth` = 2005 WHERE `entry` IN (6727, 6740);
UPDATE `creature_template` SET `minhealth` = 24420, `maxhealth` = 24420 WHERE `entry` = 16097;
UPDATE `creature_template` SET `minhealth` = 968, `maxhealth` = 968 WHERE `entry` IN (789, 791, 3619);
UPDATE `creature_template` SET `minhealth` = 140, `maxhealth` = 140 WHERE `entry` = 12298;
UPDATE `creature_template` SET `minhealth` = 7287, `maxhealth` = 7390 WHERE `entry` = 7376;
UPDATE `creature_template` SET `minhealth` = 30, `maxhealth` = 30 WHERE `entry` = 16377;
UPDATE `creature_template` SET `minhealth` = 3820800, `maxhealth` = 3820800 WHERE `entry` = 15192;
UPDATE `creature_template` SET `minhealth` = 74304, `maxhealth` = 74304 WHERE `entry` = 8197;
UPDATE `creature_template` SET `minhealth` = 14226, `maxhealth` = 14226 WHERE `entry` = 8198;

-- Remove Mana Points from the following creatures:
UPDATE `creature` SET `curmana` = 0 WHERE `id` IN (385, 6021);
UPDATE `creature_template` SET `minmana` = 0, `maxmana` = 0 WHERE `entry` IN (385, 6021);

-- Add Mana Points to NPC Kirtonos the Herald
UPDATE `creature` SET `curmana` = 7302 WHERE `id` = 10506;
UPDATE `creature_template` SET `minmana` = 7302, `maxmana` = 7302 WHERE `entry` = 10506;

-- Correct the Buy/Sell Price of the following Items:
UPDATE `item_template` SET `BuyPrice` = 36, `SellPrice` = 7 WHERE `entry` = 17183;
UPDATE `item_template` SET `BuyPrice` = 61 WHERE `entry` = 209;
UPDATE `item_template` SET `BuyPrice` = 63 WHERE `entry` = 85;
UPDATE `item_template` SET `BuyPrice` = 39 WHERE `entry` IN (2387, 2390, 2391);
UPDATE `item_template` SET `BuyPrice` = 78 WHERE `entry` IN (2386, 2388);
UPDATE `item_template` SET `BuyPrice` = 24 WHERE `entry` IN (3595, 3596);
UPDATE `item_template` SET `BuyPrice` = 37 WHERE `entry` = 195;
UPDATE `item_template` SET `BuyPrice` = 26 WHERE `entry` = 711;
UPDATE `item_template` SET `BuyPrice` = 49 WHERE `entry` = 193;
UPDATE `item_template` SET `BuyPrice` = 1327 WHERE `entry` = 849;
UPDATE `item_template` SET `BuyPrice` = 881 WHERE `entry` = 1846;
UPDATE `item_template` SET `BuyPrice` = 285, `SellPrice` = 57 WHERE `entry` = 2492;
UPDATE `item_template` SET `BuyPrice` = 2860 WHERE `entry` = 237;
UPDATE `item_template` SET `BuyPrice` = 2878 WHERE `entry` = 4765;
UPDATE `item_template` SET `BuyPrice` = 2667 WHERE `entry` = 1197;
UPDATE `item_template` SET `BuyPrice` = 7351 WHERE `entry` = 4778;
UPDATE `item_template` SET `BuyPrice` = 4159 WHERE `entry` = 4790;
UPDATE `item_template` SET `BuyPrice` = 3280, `SellPrice` = 656 WHERE `entry` = 4792;

-- Dramatically reduce the drop rate for Quest Item: Cats Eye Emerald
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 20 WHERE `entry` = 5097;

-- Correct the Min. Level requirement for the following Quests:
UPDATE `quest_template` SET `MinLevel` = 2 WHERE `entry` IN (380, 381, 382, 383, 3902);
UPDATE `quest_template` SET `MinLevel` = 1 WHERE `entry` = 3901;
UPDATE `quest_template` SET `MinLevel` = 14 WHERE `entry` = 120;

-- Correct the Min/Max Level of the following creatures:
UPDATE `creature_template` SET `minlevel` = 60 WHERE `entry` IN (10506, 16097);
UPDATE `creature_template` SET `minlevel` = 1, `maxlevel` = 1 WHERE `entry` = 2442;
UPDATE `creature_template` SET `minlevel` = 5, `maxlevel` = 5 WHERE `entry` = 385;
UPDATE `creature_template` SET `minlevel` = 19 WHERE entry = 3619;

-- Add Civilian flag to the following NPCs
UPDATE `creature_template` SET `Civilian` = 1 WHERE `entry` IN (1139, 2363, 2366, 2381, 2380, 3541);

-- Add snare resistance to Warpwood Crusher
UPDATE `creature_template` SET `mechanic_immune_mask` = 50176 WHERE `entry` = 13021;

-- Add fear resistance to Cultists in Durotar
UPDATE `creature_template` SET `mechanic_immune_mask` = 16 WHERE `entry` IN (3199, 11322);

-- fixing Quest 3741 always has been a crossfaction quest
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
UPDATE `quest_template` SET `Objectives` = 'Hemet Nesingwary wants you to bring him the head of King Bangalash, the great white tiger.' WHERE `entry` = 208;

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
INSERT INTO `creature_template_spells` (`entry`, `spell1`, `spell2`, `spell3`, `spell4`) VALUES
(3844, 6276, 0, 0, 0);

-- Learning spell Journeyman Blacksmith (2021) from trainers now requires 50 minimum blacksmith skill
UPDATE `npc_trainer` SET `reqskill` = 164 WHERE `spell` = 2021;

-- Move all Stormwind Battlemasters from the War Room to the same room as the King of Stormwind
UPDATE `creature` SET `position_x` = '-8424.55', `position_y` = '342.807', `position_z` = '120.886', `orientation` = '3.80942' WHERE `guid` = 42893 AND `id` = 7410;
UPDATE `creature` SET `position_x` = '-8454.6', `position_y` = '318.918', `position_z` = '120.886', `orientation` = '0.65759' WHERE `guid` = 54614 AND `id` = 14981;
UPDATE `creature` SET `position_x` = '-8420.48', `position_y` = '328.711', `position_z` = '120.886', `orientation` = '3.06638' WHERE `guid` = 54625 AND `id`= 15008;
UPDATE `creature` SET `position_x` = '-8441.82', `position_y` = '311.616', `position_z` = '120.886', `orientation` = '1.45789' WHERE `guid` = 14740 AND `id` = 15351;

-- Add spells to all PvP Battle Standard creatures (14465, 14466, 14751, 14752)
DELETE FROM `creature_template_spells` WHERE `entry` IN (14465, 14466, 14751, 14752);
INSERT INTO `creature_template_spells` (`entry`, `spell1`, `spell2`, `spell3`, `spell4`) VALUES
(14465, 23033, 0, 0, 0),
(14466, 23036, 0, 0, 0),
(14751, 23576, 0, 0, 0),
(14752, 23574, 0, 0, 0);

-- Implement script for spell 21050 Quest (6661) Thanks Xfurry
UPDATE `quest_template` SET `ReqSpellCast1` = 0, `ReqCreatureorGOId1` = 13017 WHERE `entry` = 6661;

DELETE FROM `spell_script_target` WHERE `entry` = 21052;
INSERT INTO `spell_script_target` (`entry`, `type`, `targetEntry`) VALUES
('21052','1','13017');

UPDATE `quest_template` SET `CompleteScript` = 6661 WHERE `entry` = 6661;

DELETE FROM `dbscripts_on_quest_end` WHERE `id` = 6661 AND `command` = 15;
INSERT INTO `dbscripts_on_quest_end` (`id`, `delay`, `command`, `datalong`, `comments`) VALUES
('6661','1','15','21052','Cast Monty Bashes Rats (DND)');

DELETE FROM `dbscripts_on_spell` WHERE `id` = 21052;
INSERT INTO `dbscripts_on_spell` (`id`, `command`, `datalong`, `data_flags`, `comments`) VALUES
('21052','15','8329','6','Enthralled Deeprun Rat - Cast Suicide');

-- Add gossip to creature 11872 for quest 5862
UPDATE `creature_template` SET `gossip_menu_id` = 3801 WHERE `entry` = 11872;

DELETE FROM `gossip_menu` WHERE `entry` = 3801;
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES
(3801, 4633, 0, 0),
(3801, 4773, 0, 90);

DELETE FROM `dbscripts_on_gossip` WHERE `id` = 3801;
INSERT INTO `dbscripts_on_gossip` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
(3801, 0, 15, 17961, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Cast Scarlet Illusion (17961)');

DELETE FROM `gossip_menu_option` WHERE `menu_id` = 3801;
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `box_coded`, `box_money`, `box_text`, `condition_id`) VALUES
(3801, 0, 0, 'I am ready for the illusion, Myranda.', 1, 1, 0, 0, 3801, 0, 0, '', 90);

DELETE FROM `conditions` WHERE `type` = 9 AND `value1` = 5862;
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`) VALUES
(90, 9, 5862, 0);

-- missing Temple of Ahn'Qiraj graveyard
INSERT INTO `game_graveyard_zone` (`id`, `ghost_zone`, `faction`) VALUES
('913','3428','0');

-- ACID
-- Drop script for Spirit Shade - handled in SD2 Thanks Xfurry
DELETE FROM `creature_ai_scripts` WHERE `creature_id` = 15261;
UPDATE `creature_template` SET AIName = '' WHERE `entry` = 15261;

-- Drop script for Willix the Importer - handled in SD2 Thanks Xfurry
DELETE FROM `creature_ai_scripts` WHERE `creature_id` = 4508;
UPDATE `creature_template` SET AIName = '' WHERE `entry` = 4508;

-- Drop script for Gurubashi Bat Rider - handled in SD2 Thanks Xfurry
DELETE FROM `creature_ai_scripts` WHERE `creature_id` = 14750;
UPDATE `creature_template` SET AIName = '' WHERE `entry` = 14750;

-- Allow Ossirian to use the Sand Vortex ScriptDev2 Commit z2654 Thanks Xfurry
DELETE FROM `creature_linking_template` WHERE `entry` = 15428;
INSERT INTO `creature_linking_template` (`entry`, `map`, `master_entry`, `flag`, `search_range`) VALUES
(15428, 509, 15339, 4112, 0);

-- ScriptDev2
-- z2647
UPDATE `creature_template` SET ScriptName='spell_dummy_npc' WHERE `entry` = 13016;
-- z2649
UPDATE gameobject_template SET ScriptName='go_father_flame' WHERE entry=175245;
-- z2652
UPDATE creature_template SET ScriptName='' WHERE entry=15302;
UPDATE creature_template SET ScriptName='' WHERE entry=15260;

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
