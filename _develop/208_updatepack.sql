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
