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

-- UPDATE Database Version
UPDATE `db_version` SET `version` = 'ZeroDatabase 2.0.8 for MaNGOSZero zXXXX+ and ScriptDevZero zXXXX+';
