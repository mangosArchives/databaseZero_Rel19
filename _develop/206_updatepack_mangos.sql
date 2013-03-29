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

-- Correct the OfferRewardText for the Quest: Everything Counts In Large Amounts
UPDATE `quest_template` SET `OfferRewardText` = 'You truly disgust me, $r. A grown man drooling over a pile of junk? Pitiful! Take your reward and get out of my sight.' WHERE `entry` = 3501;

-- Restrict Quest Item: Crag Coyote Fang to 10 per stack
UPDATE `item_template` SET `stackable` = 10 WHERE `entry` = 7846;

-- Update the following GameObject's respawn timer:
UPDATE `gameobject` SET `spawntimesecs` = 1800 WHERE `id` = 271;
UPDATE `gameobject` SET `spawntimesecs` = 0 WHERE `id` IN (104564, 104569, 104574);

-- Add roaming to the following NPCs:
UPDATE `creature_template` SET `MovementType` = 1 WHERE `entry` IN (2511, 2515, 2528, 2506, 2516, 2526, 2512, 2507);

-- The following creatures are now restricted to ground-only:
UPDATE `creature_template` SET `InhabitType` = 1 WHERE `entry` IN (1161, 1162, 1163, 1164, 1165, 1166, 1167, 1197, 1205, 1206, 1207, 1393, 1398, 1399);

-- The following NPCs are now restricted to ground-only:
UPDATE `creature_template` SET `InhabitType` = 1 WHERE `entry` IN (1092, 2527, 2525, 2511, 1276, 1089, 2509, 1338, 2105, 1280, 2515, 1279, 1277, 1091, 1337, 2528, 2524, 1334, 2506, 2513, 1340, 1283, 2516, 2511, 3317, 1331, 2514, 2526,
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

-- Improve a few command strings
UPDATE `mangos_string` SET `content_default` = 'You must select a character or a creature.' WHERE `entry` = 1;
UPDATE `mangos_string` SET `content_default` = 'You must select a creature.' WHERE `entry` = 2;
UPDATE `mangos_string` SET `content_default` = 'The old password is incorrect.' WHERE `entry` = 27;
UPDATE `mangos_string` SET `content_default` = 'Current Message of the Day: %s' WHERE `entry` = 56;
UPDATE `mangos_string` SET `content_default` = 'Not accepting whispers' WHERE `entry` = 64;
UPDATE `mangos_string` SET `content_default` = 'No Game Masters' WHERE `entry` = 599;
UPDATE `mangos_string` SET `content_default` = 'Current Game Masters:' WHERE `entry` = 597;
UPDATE `mangos_string` SET `content_default` = 'Player %s (GUID: %u) Account %s (ID: %u) deleted.' WHERE `entry` = 1009;
UPDATE `mangos_string` SET `content_default` = 'Invalid character GUID!' WHERE `entry` = 1116;
UPDATE `mangos_string` SET `content_default` = 'Character GUID %u in use!' WHERE `entry` = 1117;
UPDATE `mangos_string` SET `content_default` = '%d - Guild: %s (GUID: %u) %s' WHERE `entry` = 1118;
UPDATE `mangos_string` SET `content_default` = 'Accepting whispers' WHERE `entry` = 63;

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

-- Add bleed immunity to Elemental and Undead creatures
UPDATE `creature_template` SET `mechanic_immune_mask` = `mechanic_immune_mask` + 16384 WHERE `type` IN (4, 6);

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
INSERT INTO `creature_template_spells` (`entry`, `spell1`, `spell2`, `spell3`, `spell4`) VALUES (14465, 23033, 0, 0, 0);
INSERT INTO `creature_template_spells` (`entry`, `spell1`, `spell2`, `spell3`, `spell4`) VALUES (14466, 23036, 0, 0, 0);
INSERT INTO `creature_template_spells` (`entry`, `spell1`, `spell2`, `spell3`, `spell4`) VALUES (14751, 23576, 0, 0, 0);
INSERT INTO `creature_template_spells` (`entry`, `spell1`, `spell2`, `spell3`, `spell4`) VALUES (14752, 23574, 0, 0, 0);

-- Implement script for spell 21050 Thanks Xfurry
UPDATE `quest_template` SET `ReqSpellCast1` = 0 WHERE `entry` = 6661;

DELETE FROM `spell_script_target` WHERE `entry` = 21052;
INSERT INTO `spell_script_target` (`entry`, `type`, `targetEntry`) VALUES
('21052','1','13017');

UPDATE `quest_template` SET `CompleteScript` = 6661 WHERE `entry` = 6661;

DELETE FROM `dbscripts_on_quest_end` WHERE `id` = 6661;
INSERT INTO `dbscripts_on_quest_end` (`id`, `delay`, `command`, `datalong`, `comments`) VALUES
('6661','1','15','21052','Cast Monty Bashes Rats (DND)');

DELETE FROM `dbscripts_on_spell` WHERE `id` = 21052;
INSERT INTO `dbscripts_on_spell` (`id`, `command`, `datalong`, `data_flags`, `comments`) VALUES
('21052','15','8329','6','Enthralled Deeprun Rat - Cast Suicide');

-- Add gossip to creature 11872 for quest 5862
UPDATE `creature_template` SET `gossip_menu_id` = 3801 WHERE `entry` = 11872;

DELETE FROM `gossip_menu` WHERE `entry` = 3801;
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES (3801, 4633, 0, 0);
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES (3801, 4773, 0, 90);

DELETE FROM `dbscripts_on_gossip` WHERE `id` = 3801;
INSERT INTO `dbscripts_on_gossip` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES (3801, 0, 15, 17961, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Cast Scarlet Illusion (17961)');

DELETE FROM `gossip_menu_option` WHERE `menu_id` = 3801;
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `box_coded`, `box_money`, `box_text`, `condition_id`) VALUES (3801, 0, 0, 'I am ready for the illusion, Myranda.', 1, 1, 0, 0, 3801, 0, 0, '', 90);

INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`) VALUES (90, 9, 5862, 0);

-- ScriptDev2
UPDATE `creature_template` SET ScriptName='spell_dummy_npc' WHERE `entry` = 13016;

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
