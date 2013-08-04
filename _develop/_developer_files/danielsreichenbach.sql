-- danielsreichenbach

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
-- instead of specific gameobject
-- which shows wrong gameobject behavior
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
