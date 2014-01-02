-- Final File to apply
-- This contains 95% Backports of classicdb everything has been checked
-- and lot of corrections and fixes have been made when necessary


-- new entry for condition
UPDATE conditions SET condition_entry = 357 WHERE condition_entry = 1677;
UPDATE gossip_menu_option SET condition_id = 357 WHERE condition_id = 1677;

-- updated quest end script for 970
DELETE FROM creature_ai_scripts WHERE creature_id = 4509;
DELETE FROM creature_ai_texts WHERE entry IN (-142, -143, -144, -145, -146, -147);

UPDATE db_script_string SET content_default = "Sargath fades into the mist..." WHERE entry = 2000000053;

DELETE FROM `dbscripts_on_quest_end` WHERE id = 970;
INSERT INTO `dbscripts_on_quest_end` VALUES
(970, 1, 0, 0, 0, 0, 0, 0, 2000000050, 0, 0, 0, 0, 0, 0, 0, ''),
(970, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(970, 2, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.80526, ''),
(970, 3, 9, 21191, 5, 0, 0, 0, 0, 0, 0, 0, 3184.06, 190.81, 4.61263, 5.55407, ''),
(970, 4, 1, 61, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(970, 6, 0, 2, 0, 0, 0, 0, 2000000051, 0, 0, 0, 0, 0, 0, 0, ''),
(970, 8, 10, 4509, 38000, 0, 0, 0, 0, 0, 0, 0, 3184.06, 190.81, 4.61263, 5.55407, 'Sargath ghosth appears'),
(970, 10, 0, 0, 0, 4509, 10, 0, 2000000054, 0, 0, 0, 0, 0, 0, 0, ''),
(970, 10, 1, 1, 0, 4509, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(970, 15, 0, 0, 0, 4509, 10, 0, 2000000202, 0, 0, 0, 0, 0, 0, 0, ''),
(970, 15, 1, 1, 0, 4509, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(970, 20, 0, 0, 0, 4509, 10, 0, 2000000203, 0, 0, 0, 0, 0, 0, 0, ''),
(970, 20, 1, 1, 0, 4509, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(970, 25, 0, 0, 0, 4509, 10, 0, 2000000204, 0, 0, 0, 0, 0, 0, 0, ''),
(970, 25, 1, 1, 0, 4509, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(970, 30, 0, 0, 0, 4509, 10, 0, 2000000205, 0, 0, 0, 0, 0, 0, 0, ''),
(970, 30, 1, 1, 0, 4509, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(970, 35, 0, 0, 0, 0, 0, 0, 2000000052, 0, 0, 0, 0, 0, 0, 0, ''),
(970, 35, 1, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(970, 40, 0, 0, 0, 4509, 10, 0, 2000000206, 0, 0, 0, 0, 0, 0, 0, ''),
(970, 40, 1, 1, 0, 4509, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(970, 46, 0, 2, 0, 0, 0, 0, 2000000053, 0, 0, 0, 0, 0, 0, 0, 'Sargath ghost disappears'),
(970, 47, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.471239, '');

--small corrections for quest 985
UPDATE creature_template SET MovementType = 0 WHERE entry = 3695;
UPDATE quest_template SET PrevQuestId = 985, StartScript = 0 WHERE entry = 986;

-- Creature fix for 'Mystlash Flayer': correct type: Beast (non tameable)
UPDATE `creature_template` SET `type` = 1 WHERE `entry` = 3722;
-- Creature fix for 'Cloned Ectoplasm': correct type: Uncategorized
UPDATE `creature_template` SET `type` = 10 WHERE `entry` = 5780;
-- Creature fix for 'Deviate Nightmare': correct type: Beast
UPDATE `creature_template` SET `type` = 1 WHERE `entry` = 5914;
-- Creature fix for 'Witherbark Bloodling': correct type: Beast
UPDATE `creature_template` SET `type` = 1 WHERE `entry` = 7768;
-- Creature fix for 'Sul'lithuz Broodling': correct type: Beast
UPDATE `creature_template` SET `type` = 1 WHERE `entry` = 8138;
-- Creature fix for 'Sul'lithuz Warder': correct type: Beast
UPDATE `creature_template` SET `type` = 1 WHERE `entry` = 8149;
-- Creature fix for 'Hakkari Minion': correct type: Beast
UPDATE `creature_template` SET `type` = 1 WHERE `entry` = 8437;
-- Creature fix for 'Hakkari Bloodkeeper': correct type: Beast
UPDATE `creature_template` SET `type` = 1 WHERE `entry` = 8438;
-- Creature fix for 'Shade of Hakkar': correct type: Uncategorized
UPDATE `creature_template` SET `type` = 10 WHERE `entry` = 8440;
-- Creature fix for 'Avatar of Hakkar': correct type: Uncategorized
UPDATE `creature_template` SET `type` = 10 WHERE `entry` = 8443;
-- Creature fix for 'Xil'xix': correct type: Uncategorized
UPDATE `creature_template` SET `type` = 10 WHERE `entry` = 15286;
-- Creature fix for 'Aluntir': correct type: Uncategorized
UPDATE `creature_template` SET `type` = 10 WHERE `entry` = 15288;
-- Creature fix for 'Arakis': correct type: Uncategorized
UPDATE `creature_template` SET `type` = 10 WHERE `entry` = 15290;
-- Creature fix for 'Qiraji Swarmguard': correct type: Uncategorized
UPDATE `creature_template` SET `type` = 10 WHERE `entry` = 15343;
-- Creature fix for 'Swarmguard Needler': correct type: Uncategorized
UPDATE `creature_template` SET `type` = 10 WHERE `entry` = 15344;
-- Creature fix for 'Colonel Zerran': correct type: Uncategorized
UPDATE `creature_template` SET `type` = 10 WHERE `entry` = 15385;
-- Creature fix for 'Major Yeggeth': correct type: Uncategorized
UPDATE `creature_template` SET `type` = 10 WHERE `entry` = 15386;
-- Creature fix for 'Qiraji Warrior': correct type: Uncategorized
UPDATE `creature_template` SET `type` = 10 WHERE `entry` = 15387;
-- Creature fix for 'Major Pakkon': correct type: Uncategorized
UPDATE `creature_template` SET `type` = 10 WHERE `entry` = 15388;
-- Creature fix for 'Captain Drenn': correct type: Uncategorized
UPDATE `creature_template` SET `type` = 10 WHERE `entry` = 15389;
-- Creature fix for 'Captain Xurrem': correct type: Uncategorized
UPDATE `creature_template` SET `type` = 10 WHERE `entry` = 15390;
-- Creature fix for 'Captain Qeez': correct type: Uncategorized
UPDATE `creature_template` SET `type` = 10 WHERE `entry` = 15391;
-- Creature fix for 'Captain Tuubid': correct type: Uncategorized
UPDATE `creature_template` SET `type` = 10 WHERE `entry` = 15392;
-- Creature fix for 'Imperial Qiraji Destroyer': correct type: Uncategorized
UPDATE `creature_template` SET `type` = 10 WHERE `entry` = 15744;
-- Creature fix for 'Lieutenant General Nokhor': correct type: Uncategorized
UPDATE `creature_template` SET `type` = 10 WHERE `entry` = 15818;

--new entry for conditions
UPDATE `conditions` SET condition_entry = 358 WHERE condition_entry = 1771;
UPDATE `conditions` SET condition_entry = 359 WHERE condition_entry = 1774;
DELETE FROM `conditions` WHERE condition_entry = 1777;
DELETE FROM `conditions` WHERE condition_entry = 360;
INSERT INTO `conditions` VALUES (360, -1, 358, 359);
UPDATE gossip_menu_option SET condition_id = 360 WHERE condition_id = 1777;

-- remove WoTLK object
DELETE FROM `gameobject_template` WHERE `entry` = 186482;

-- weapon masters gossip backport from classicdb

INSERT INTO gossip_menu VALUES (5272, 6292, 0, 0); -- Ilyania
INSERT INTO gossip_menu VALUES (5274, 6294, 0, 0); -- Buliwyf
INSERT INTO gossip_menu VALUES (5276, 6296, 0, 0); -- Bixi


INSERT INTO gossip_menu VALUES (8581, 10758, 0, 0); -- sword : anyone -> Woo Ping
INSERT INTO gossip_menu VALUES (8584, 10761, 0, 0); -- crossbow : Buliwyf -> Bixi
INSERT INTO gossip_menu VALUES (8576, 10753, 0, 0); -- crossbow : Ilyania -> Bixi
INSERT INTO gossip_menu VALUES (8583, 10760, 0, 0); -- bow : Buliwyf -> Ilyania
INSERT INTO gossip_menu VALUES (8573, 10749, 0, 0); -- dagger : Buliwyf -> Bixi, Woo Ping
INSERT INTO gossip_menu VALUES (8585, 10762, 0, 0); -- thrown : Buliwyf -> Bixi, Ilyania
-- INSERT INTO gossip_menu VALUES (8580, 10757, 0, 0); -- staff : anyone -> Woo Ping, Ilyania
INSERT INTO gossip_menu VALUES (8589, 10766, 0, 0); -- mace : Bixi -> Buliwylf
INSERT INTO gossip_menu VALUES (8586, 10763, 0, 0); -- axe : Bixi -> Buliwylf
INSERT INTO gossip_menu VALUES (8587, 10764, 0, 0); -- fist : Bixi -> Buliwylf
INSERT INTO gossip_menu VALUES (8588, 10765, 0, 0); -- gun : Bixi -> Buliwylf

-- Updates gossip menu options for the three previous Alliance
-- weapon masters in order to display gossip menu added above

UPDATE gossip_menu_option SET action_menu_id=5272 WHERE menu_id=5273 AND id=1; -- Ilyania
UPDATE gossip_menu_option SET action_menu_id=5274 WHERE menu_id=5275 AND id=1; -- Buliwyf
UPDATE gossip_menu_option SET action_menu_id=5276 WHERE menu_id=5277 AND id=1; -- Bixi

-- Adds specific submenu for each of the three weapon masters
-- Ilyania
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `box_coded`, `box_money`, `box_text`, `condition_id`) VALUES
 (5272, 0, 0, 'Axe', 1, 1, 8577, 0, 0, 0, 0, '', 0),
 (5272, 1, 0, 'Crossbow', 1, 1, 8576, 0, 0, 0, 0, '', 0),
 (5272, 2, 0, 'Gun', 1, 1, 8575, 0, 0, 0, 0, '', 0),
 (5272, 3, 0, 'Mace', 1, 1, 8578, 0, 0, 0, 0, '', 0),
 (5272, 4, 0, 'Polearm', 1, 1, 8579, 0, 0, 0, 0, '', 0),
 (5272, 5, 0, 'Sword', 1, 1, 8581, 0, 0, 0, 0, '', 0);
-- Bixi
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `box_coded`, `box_money`, `box_text`, `condition_id`) VALUES
 (5276, 0, 0, 'Axe', 1, 1, 8586, 0, 0, 0, 0, '', 0),
 (5276, 1, 0, 'Bow', 1, 1, 8572, 0, 0, 0, 0, '', 0),
 (5276, 2, 0, 'Fist Weapon', 1, 1, 8587, 0, 0, 0, 0, '', 0),
 (5276, 3, 0, 'Gun', 1, 1, 8588, 0, 0, 0, 0, '', 0),
 (5276, 4, 0, 'Mace', 1, 1, 8589, 0, 0, 0, 0, '', 0),
 (5276, 5, 0, 'Polearm', 1, 1, 8579, 0, 0, 0, 0, '', 0),
 (5276, 6, 0, 'Staff', 1, 1, 8580, 0, 0, 0, 0, '', 0),
 (5276, 7, 0, 'Sword', 1, 1, 8581, 0, 0, 0, 0, '', 0);
-- Buliwyf
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `box_coded`, `box_money`, `box_text`, `condition_id`) VALUES
 (5274, 0, 0, 'Bow', 1, 1, 8583, 0, 0, 0, 0, '', 0),
 (5274, 1, 0, 'Crossbow', 1, 1, 8584, 0, 0, 0, 0, '', 0),
 (5274, 2, 0, 'Dagger', 1, 1, 8573, 0, 0, 0, 0, '', 0),
 (5274, 3, 0, 'Polearm', 1, 1, 8579, 0, 0, 0, 0, '', 0),
 (5274, 4, 0, 'Thrown', 1, 1, 8585, 0, 0, 0, 0, '', 0),
 (5274, 5, 0, 'Staff', 1, 1, 8580, 0, 0, 0, 0, '', 0),
 (5274, 6, 0, 'Sword', 1, 1, 8581, 0, 0, 0, 0, '', 0);

-- Adds the correct gossip_menu id to each of the weapon masters

-- Horde Weapon Masters
UPDATE creature_template SET gossip_menu_id=5221 WHERE entry=11868; -- Sayoc
UPDATE creature_template SET gossip_menu_id=5263 WHERE entry=2704; -- Hanashi
UPDATE creature_template SET gossip_menu_id=5266 WHERE entry=11869; -- Ansekhwa
UPDATE creature_template SET gossip_menu_id=5269 WHERE entry=11870; -- Archibald

-- Alliance Weapon Masters
UPDATE creature_template SET gossip_menu_id=5271 WHERE entry=11867; -- Woo Ping
UPDATE creature_template SET gossip_menu_id=5273 WHERE entry=11866; -- Ilyenia
UPDATE creature_template SET gossip_menu_id=5275 WHERE entry=11865; -- Buliwyf
UPDATE creature_template SET gossip_menu_id=5277 WHERE entry=13084; -- Bixi

-- Updates NPC text to remove references to TBC weapon masters (Handiir for Alliance, Ileda for Horde)
-- Alliance
DELETE FROM npc_text WHERE ID = 10753;
DELETE FROM npc_text WHERE ID = 10763;
DELETE FROM npc_text WHERE ID = 10764;
DELETE FROM npc_text WHERE ID = 10765;
INSERT INTO npc_text VALUES (10753, 'The gnome weapon master Bixi can train you in crossbows. She\'s found in the Timberline Arms in Ironforge.', NULL, 7, 1, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO npc_text VALUES (10763, 'Buliwyf can teach you how to use axes! He\'s around this shop somewhere.', NULL, 7, 1, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO npc_text VALUES (10764, 'Buliwyf, in this very shop can train you in the use of fist weapons. If his training techniques aren\'t your style, I hear the night elf weapon master in Darnassus, Ilyenia Moonfire, knows her way around the weapon too! She\'s up on the Warrior\'s Terrace there.', NULL, 7, 1, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0);
INSERT INTO npc_text VALUES (10765, 'Guns are a specialty of Buliwyf\'s! He\'s around this shop somewhere.', NULL, 7, 1, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0);
UPDATE npc_text SET text0_0='Buliwyf, the dwarf weapon master within the Timberline Arms in Ironforge, can train you in the use of guns.' WHERE id=10751;
UPDATE npc_text SET text0_0='Bixi Wobblebonk in this very shop can train ye in daggers. If ye\'re still looking abroad, anyone else - Woo Ping in Stormwind and Ilyenia Moonfire in Darnassus - can show ye a thing or two. Me, I was never one fer knife fights.' WHERE id = 10749;
UPDATE npc_text SET text0_0='Buliwyf can show you how to swing a mace properly, no matter the size. You can find him within the Timberline Arms in Ironforge.' WHERE id=10755;
UPDATE npc_text SET text0_0='There is one master of the sword: Woo Ping. He can be found in Weller\'s Arsenal within Stormwind.' WHERE id=10758;
UPDATE npc_text SET text0_0='My plucky companion Bixi Wobblebonk here can train ye in crossbows. If ye\'re looking for other trainers, though, ye might want to try Woo Ping in Weller\'s Arsenal within Stormwind.' WHERE id=10761;
UPDATE npc_text SET text0_0='Maces are a specialty of Buliwyf\'s! He\'s around this shop somewhere, grousing.' WHERE id=10766;
-- Horde
UPDATE npc_text SET text0_0='The weapon masters in the Valley of Honor within Orgrimmar, Sayoc and Hanashi, can teach you how to shoot a bow.' WHERE id=10771;
UPDATE npc_text SET text0_0='Dagger instruction can be sought from two weapon masters: Archibald in the War Quarter of the Undercity and Sayoc within the Valley of Honor in Orgrimmar.' WHERE id=10773;
UPDATE npc_text SET text0_0='The Forsaken weapon master Archibald knows his way around the polearm. He trains others in the War Quarter of the Undercity.' WHERE id=10777;
UPDATE npc_text SET text0_0='Archibald, Undercity\'s weapon master, can train you in both one and two-handed swords. He is in the War Quarter.' WHERE id=10779;
UPDATE npc_text SET text0_0='Sayoc and Hanashi, Orgrimmar\'s weapon masters, are true artisans of the thrown weapon. They train willing students in the Valley of Honor.' WHERE id=10780;
UPDATE npc_text SET text0_0='Sayoc, da ugly orc here, teach you daggers. You want teaching in other places, you talk to Archibald in the War Quarter of Undercity, hokay?' WHERE id=10782;
UPDATE npc_text SET text0_0='Da Forsaken weapon master Archibald know his way \'round da polearm. He train others in da War Quarter of da Undercity, mon.' WHERE id=10786;
UPDATE npc_text SET text0_0='Archibald, da Undercity\'s weapon master train you in both one and two-handed swords, mon. He in da War Quarter.' WHERE id=10787;

UPDATE `creature_template` SET `InhabitType` = 5 WHERE `entry` = 7044;        -- Black Drake
UPDATE `creature_template` SET `InhabitType` = 5 WHERE `entry` = 7045;        -- Scalding Drake
UPDATE `creature_template` SET `InhabitType` = 5 WHERE `entry` = 7046;        -- Searscale Drake
UPDATE `creature_template` SET `InhabitType` = 5 WHERE `entry` = 14388;        -- Rogue Black Drake

-- update inhabit type and speed for Drakes in blackrock
UPDATE `creature_template` SET `speed_walk` = 1.7, `InhabitType` = 4 WHERE `entry` = 8964;

-- Updates spawn data for creature 15590 (Ossirian Crystal Trigger) from template
UPDATE `creature` SET `curhealth` = 4120 WHERE `id` = 15590;

-- more backporting

-- Updates size of gameobject 181356 (Sapphiron Birth) to match scale of creature 15989 (Sapphiron)
UPDATE `gameobject_template` SET `size` = 1.3 WHERE `entry` = 181356;
UPDATE `creature_template` SET `scale` = 0 WHERE `entry` = 15989;

-- Updates InhabitType of creature 16218 (Tesla Coil) to make it stands in the air
UPDATE `creature_template` SET `MovementType` = 0 WHERE `entry` = 16218;

UPDATE gameobject SET `state` = 1 WHERE guid = 65846;

-- Spawns gameobject 181356 (Sapphiron Birth) from UDB-v406
DELETE FROM `gameobject` WHERE `id` = 181356;
INSERT INTO `gameobject` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `rotation0`, `rotation1`, `rotation2`, `rotation3`, `spawntimesecs`, `animprogress`, `state`) VALUES
(10300, 181356, 533, 3522.57, -5236.76, 137.63, -1.8, 0, 0, -0.783327, 0.62161, 604800, 100, 1);

-- TODO: updates equipement for these creatures as it currently wrong, especially for Unholy Staff
DELETE FROM `creature_equip_template_raw` WHERE entry = 1003;
INSERT INTO `creature_equip_template_raw` (`entry`, `equipmodel1`, `equipmodel2`, `equipmodel3`, `equipinfo1`, `equipinfo2`, `equipinfo3`, `equipslot1`, `equipslot2`, `equipslot3`)
VALUES        (1003, 19835, 0, 0, 33490690, 0, 0, 781, 0, 0);

UPDATE `creature` SET `position_x` = 2795.2864, `position_y` = -3708.8464, `position_z` = 276.5626, `orientation` = 0.6102 WHERE `id` = 15936;

-- Adds spawns for three creatures in Naxxramas Military Quarter
-- 16194 (Unholy Axe), 16215 (Unholy Staff), 16216 (Unholy Swords)
-- Source: UDB v405
DELETE FROM `creature` WHERE `guid` IN (127794, 127795, 127796, 127797, 127798, 127799, 127815, 127816, 127817, 127818, 127819, 127820, 127821, 127822, 127823, 127824);
INSERT INTO `creature` (`guid`, `id`, `map`, `modelid`, `equipment_id`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `currentwaypoint`, `curhealth`, `curmana`, `DeathState`, `MovementType`) VALUES
(127794, 16194, 533, 0, 1725, 2707.62, -3244.26, 267.682, 1.37881, 3600, 0, 0, 182462, 0, 0, 0),
(127795, 16194, 533, 0, 1725, 2681.25, -3215.83, 267.611, 5.46288, 3600, 0, 0, 182462, 0, 0, 0),
(127796, 16194, 533, 0, 1725, 2712.35, -3127.26, 267.554, 2.65744, 3600, 5, 0, 182462, 0, 0, 1),
(127797, 16194, 533, 0, 1725, 2718.03, -3135.9, 267.522, 4.42918, 3600, 5, 0, 182462, 0, 0, 1),
(127798, 16194, 533, 0, 1725, 2712.7, -3180.11, 267.605, 1.69297, 3600, 0, 0, 182462, 0, 0, 0),
(127799, 16194, 533, 0, 1725, 2724.37, -3219.95, 267.605, 0.261799, 3600, 0, 0, 182462, 0, 0, 0),
(127815, 16215, 533, 0, 1003, 2703.69, -3240.64, 267.669, 1.78024, 3600, 0, 0, 156396, 0, 0, 0),
(127816, 16215, 533, 0, 1003, 2731.01, -3154.15, 267.589, 2.08039, 3600, 5, 0, 156396, 0, 0, 1),
(127817, 16215, 533, 0, 1003, 2742.73, -3164.88, 267.652, 5.22196, 3600, 5, 0, 156396, 0, 0, 1),
(127818, 16215, 533, 0, 1003, 2691.04, -3216.55, 267.605, 0.942478, 3600, 0, 0, 156396, 0, 0, 0),
(127819, 16215, 533, 0, 1003, 2667.47, -3173, 267.604, 4.13059, 3600, 5, 0, 156396, 0, 0, 1),
(127820, 16215, 533, 0, 1003, 2671.65, -3175.75, 267.577, 4.13054, 3600, 5, 0, 156396, 0, 0, 1),
(127821, 16215, 533, 0, 1003, 2734.57, -3221.58, 267.623, 2.00713, 3600, 0, 0, 156396, 0, 0, 0),
(127822, 16216, 533, 0, 1726, 2739.77, -3219.47, 267.539, 4.46863, 3600, 5, 0, 156396, 0, 0, 1),
(127823, 16216, 533, 0, 1726, 2731.77, -3230.92, 267.679, 4.46872, 3600, 5, 0, 156396, 0, 0, 1),
(127824, 16216, 533, 0, 1726, 2708.13, -3174.65, 267.605, 0.418879, 3600, 0, 0, 156396, 0, 0, 0);

UPDATE `gossip_menu_option` SET `condition_id` = 605 WHERE `condition_id` = 1716;
UPDATE `conditions` SET `condition_entry` = 601 WHERE `condition_entry` = 1712;
UPDATE `conditions` SET `condition_entry` = 602 WHERE `condition_entry` = 1713;
UPDATE `conditions` SET `condition_entry` = 603 WHERE `condition_entry` = 1714;

DELETE FROM `conditions` WHERE `condition_entry` = 604;
DELETE FROM `conditions` WHERE `condition_entry` = 605;
DELETE FROM `conditions` WHERE `condition_entry` = 1715;
DELETE FROM `conditions` WHERE `condition_entry` = 1716;
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`) VALUES
(604, -2, 602, 603),
(605, -1, 601, 604);

--backported from classicdb with small corrections

DELETE FROM `conditions` WHERE `condition_entry` BETWEEN 361 AND 365;
INSERT INTO `conditions` VALUES
(361, 7, 171, 50),        -- Alchemy Journeyman
(362, 7, 171, 125),                -- Alchemy Expert
(363, 7, 171, 200),         -- Alchemy Artisan
(364, -1, 362, 3), -- Alchemy Expert and Horde player
(365, -1, 362, 4); -- Alchemy Expert and Alliance player


-- ************************************************************
-- Alchemy
-- ************************************************************

-- This value was determined on the basis of gossip menus entries
-- already in database with text_id related to alchemy training (they were not linked to a creature)
-- All other gossips were added on this basis to keep compatibility with TBC-DB and UDB
DELETE FROM `gossip_menu` WHERE `entry` BETWEEN 4110 AND 4134;

-- -------------
-- Alliance
-- -------------

-- Various adjustements
UPDATE `creature_template` SET `subname` = 'Master Alchemist' WHERE `entry` = 7948; -- Kylanna was Master Alchemist in classic and the only one able to teach artisan

-- Journeyman (teaching Apprentice)
-- Alchemist Mallory (1215)
INSERT INTO `gossip_menu` VALUES (4110, 5013, 0, 0);                                                -- Player does not have the right skill
INSERT INTO `gossip_menu` VALUES (4110, 5014, 0, 209);                                                -- Player is right level
INSERT INTO `gossip_menu` VALUES (4110, 5015, 0, 361);                                -- Player too high level
UPDATE `creature_template` SET `gossip_menu_id` = 4110 WHERE `entry` = 1215; -- Adds gossip menu to Alchemist Mallory
-- Tel'Athir (5500)
INSERT INTO `gossip_menu` VALUES (4111, 5019, 0, 0);                                                -- Player does not have the right skill
INSERT INTO `gossip_menu` VALUES (4111, 5020, 0, 209);                                                -- Player is right level
INSERT INTO `gossip_menu` VALUES (4111, 5021, 0, 361);                                -- Player too high level
UPDATE `creature_template` SET `gossip_menu_id` = 4111 WHERE `entry` = 5500; -- Adds gossip menu to Tel'Athir
-- Cyndra Kindwhisper (3603)
INSERT INTO `gossip_menu` VALUES (4112, 5022, 0, 0);                                                -- Player does not have the right skill
INSERT INTO `gossip_menu` VALUES (4112, 5023, 0, 209);                                                -- Player is right level
INSERT INTO `gossip_menu` VALUES (4112, 5024, 0, 361);                                -- Player too high level
UPDATE `creature_template` SET `gossip_menu_id` = 4112 WHERE `entry` = 3603; -- Adds gossip menu to Cyndra Kindwhisper
-- Milla Fairancora (11041)
INSERT INTO `gossip_menu` VALUES (4113, 5025, 0, 0);                                                -- Player does not have the right skill
INSERT INTO `gossip_menu` VALUES (4113, 5026, 0, 209);                                                -- Player is right level
INSERT INTO `gossip_menu` VALUES (4113, 5027, 0, 361);                                -- Player too high level
UPDATE `creature_template` SET `gossip_menu_id` = 4113 WHERE `entry` = 11041; -- Adds gossip menu to Milla Fairancora
-- Ghak Healtouch (1470)
INSERT INTO `gossip_menu` VALUES (4115, 5028, 0, 0);                                                -- Player does not have the right skill
INSERT INTO `gossip_menu` VALUES (4115, 5029, 0, 209);                                                -- Player is right level
INSERT INTO `gossip_menu` VALUES (4115, 5030, 0, 361);                                -- Player too high level
UPDATE `creature_template` SET `gossip_menu_id` = 4115 WHERE `entry` = 1470; -- Adds gossip menu to Ghak Healtouch
-- Vosur Brakthel (1246)
INSERT INTO `gossip_menu` VALUES (4116, 5031, 0, 0);                                                -- Player does not have the right skill
INSERT INTO `gossip_menu` VALUES (4116, 5032, 0, 209);                                                -- Player is right level
INSERT INTO `gossip_menu` VALUES (4116, 5033, 0, 361);                                -- Player too high level
UPDATE `creature_template` SET `gossip_menu_id` = 4116 WHERE `entry` = 1246; -- Adds gossip menu to Vosur Brakthel
-- Removes entries in npc_gossip for these trainers if existing
DELETE FROM `npc_gossip` WHERE `npc_guid` IN (SELECT `guid` FROM `creature` WHERE `id` IN (1215, 5500, 3603, 11041, 1470, 1246));

-- Expert (teaching Journeyman)
-- Tally Berryfizz (5177)
INSERT INTO `gossip_menu` VALUES (4123, 5054, 0, 0);                                                -- Player does not have the right skill
INSERT INTO `gossip_menu` VALUES (4123, 5057, 0, 209);                                                -- Player too low level
INSERT INTO `gossip_menu` VALUES (4123, 5058, 0, 361);                                -- Player is right level
INSERT INTO `gossip_menu` VALUES (4123, 5055, 0, 362);                                -- Player too high level
UPDATE `creature_template` SET `gossip_menu_id` = 4123 WHERE `entry` = 5177; -- Adds gossip menu to Tally Berryfizz
-- Sylvanna Forestmoon (11042)
INSERT INTO `gossip_menu` VALUES (4114, 5064, 0, 0);                                                -- Player does not have the right skill
INSERT INTO `gossip_menu` VALUES (4114, 5067, 0, 209);                                                -- Player too low level
INSERT INTO `gossip_menu` VALUES (4114, 5068, 0, 361);                                -- Player is right level
INSERT INTO `gossip_menu` VALUES (4114, 5065, 0, 362);                                -- Player too high level
UPDATE `creature_template` SET `gossip_menu_id` = 4114 WHERE `entry` = 11042; -- Adds gossip menu to Sylvanna Forestmoon
-- Kylanna (3964)
INSERT INTO `gossip_menu` VALUES (4117, 5059, 0, 0);                                                -- Player does not have the right skill
INSERT INTO `gossip_menu` VALUES (4117, 5051, 0, 209);                                                -- Player too low level
INSERT INTO `gossip_menu` VALUES (4117, 5060, 0, 361);                                -- Player is right level
INSERT INTO `gossip_menu` VALUES (4117, 5063, 0, 362);                                -- Player too high level
UPDATE `creature_template` SET `gossip_menu_id` = 4117 WHERE `entry` = 3964; -- Adds gossip menu to Kylanna
-- Alchemist Narett (4900)
INSERT INTO `gossip_menu` VALUES (4119, 5049, 0, 0);                                                -- Player does not have the right skill
INSERT INTO `gossip_menu` VALUES (4119, 5051, 0, 209);                                                -- Player too low level
INSERT INTO `gossip_menu` VALUES (4119, 5053, 0, 361);                                -- Player is right level
INSERT INTO `gossip_menu` VALUES (4119, 5050, 0, 362);                                -- Player too high level
UPDATE `creature_template` SET `gossip_menu_id` = 4119 WHERE `entry` = 4900; -- Adds gossip menu to Alchemist Narett
-- Lilyssia Nightbreeze (5499)
INSERT INTO `gossip_menu` VALUES (4121, 5016, 0, 0);                                  -- Player does not have the right skill
INSERT INTO `gossip_menu` VALUES (4121, 5316, 0, 209);                                -- Player too low level
INSERT INTO `gossip_menu` VALUES (4121, 5317, 0, 361);                                -- Player is right level
INSERT INTO `gossip_menu` VALUES (4121, 5314, 0, 362);                                -- Player too high level
UPDATE `creature_template` SET `gossip_menu_id` = 4121 WHERE `entry` = 5499; -- Adds gossip menu to Lilyssia Nightbreeze
-- Jaxing Chong (2837)
INSERT INTO `gossip_menu` VALUES (4122, 5074, 0, 0);                                                -- Player too low level / does not have the right skill
INSERT INTO `gossip_menu` VALUES (4122, 5075, 0, 361);                                -- Player is right level
INSERT INTO `gossip_menu` VALUES (4122, 5078, 0, 365);                                -- Player too high level and Alliance player
UPDATE `creature_template` SET `gossip_menu_id` = 4122 WHERE `entry` = 2837; -- Adds gossip menu to Jaxing Chong
-- Removes entries in npc_gossip for these trainers if existing
DELETE FROM `npc_gossip` WHERE `npc_guid` IN (SELECT `guid` FROM `creature` WHERE `id` IN (8177, 11042, 3964, 4900, 5499, 2837));

-- Artisan (teaching Expert)
-- Ainethil (4160)
INSERT INTO `gossip_menu` VALUES (4124, 5094, 0, 0);                                                -- Player does not have the right skill
INSERT INTO `gossip_menu` VALUES (4124, 5097, 0, 209);                                                -- Player too low level
INSERT INTO `gossip_menu` VALUES (4124, 5098, 0, 362);                                -- Player is right level
INSERT INTO `gossip_menu` VALUES (4124, 5095, 0, 363);                                -- Player too high level
UPDATE `creature_template` SET `gossip_menu_id` = 4124 WHERE `entry` = 4160; -- Adds gossip menu to Ainethil (Artisan Alchemist)
-- Removes entries in npc_gossip for these trainers if existing
DELETE FROM `npc_gossip` WHERE `npc_guid` IN (SELECT `guid` FROM `creature` WHERE `id` = 4160);


-- Master (teaching Artisan)
-- Kylanna Windwhisper (7948)
INSERT INTO `gossip_menu` VALUES (4125, 5104, 0, 0);                                                -- Player does not have the right skill
INSERT INTO `gossip_menu` VALUES (4125, 5105, 0, 209);                                                -- Player too low level
INSERT INTO `gossip_menu` VALUES (4125, 5106, 0, 363);                                -- Player is right level (should start a quest?)
UPDATE `creature_template` SET `gossip_menu_id` = 4125 WHERE `entry` = 7948; -- Adds gossip menu to Kylanna (Master Alchemist)
-- Removes entries in npc_gossip for these trainers if existing
DELETE FROM `npc_gossip` WHERE `npc_guid` IN (SELECT `guid` FROM `creature` WHERE `id` = 7948);

-- -------------
-- Horde
-- -------------

-- Various adjustements
UPDATE `creature_template` SET `subname` = 'Master Alchemist' WHERE `entry` = 1386;        -- Rogvar was Master Alchemist in classic and the only one able to teach artisan

-- Journeyman (teaching Apprentice)
-- Carolai Anise (2132)
INSERT INTO `gossip_menu` VALUES (4127, 5043, 0, 0);                                                -- Player does not have the right skill
INSERT INTO `gossip_menu` VALUES (4127, 5044, 0, 209);                                                -- Player is right level
INSERT INTO `gossip_menu` VALUES (4127, 5045, 0, 361);                                -- Player too high level
UPDATE `creature_template` SET `gossip_menu_id` = 4127 WHERE `entry` = 2132; -- Adds gossip menu to Carolai Anise
-- Doctor Martin Felben (11044)
INSERT INTO `gossip_menu` VALUES (4120, 5046, 0, 0);                                                -- Player does not have the right skill
INSERT INTO `gossip_menu` VALUES (4120, 5047, 0, 209);                                                -- Player is right level
INSERT INTO `gossip_menu` VALUES (4120, 5048, 0, 361);                                -- Player too high level
UPDATE `creature_template` SET `gossip_menu_id` = 4120 WHERE `entry` = 11044; -- Adds gossip menu to Doctor Martin Felben
-- Kray (11047)
INSERT INTO `gossip_menu` VALUES (4128, 5040, 0, 0);                                                -- Player does not have the right skill
INSERT INTO `gossip_menu` VALUES (4128, 5041, 0, 209);                                                -- Player is right level
INSERT INTO `gossip_menu` VALUES (4128, 5042, 0, 361);                                -- Player too high level
UPDATE `creature_template` SET `gossip_menu_id` = 4128 WHERE `entry` = 11047; -- Adds gossip menu to Kray
-- Miao'zan (3184)
INSERT INTO `gossip_menu` VALUES (4129, 5034, 0, 0);                                                -- Player does not have the right skill
INSERT INTO `gossip_menu` VALUES (4129, 5035, 0, 209);                                                -- Player is right level
INSERT INTO `gossip_menu` VALUES (4129, 5036, 0, 361);                                -- Player too high level
UPDATE `creature_template` SET `gossip_menu_id` = 4129 WHERE `entry` = 3184; -- Adds gossip menu to Miao'zan
-- Whuut (11046)
INSERT INTO `gossip_menu` VALUES (4118, 5037, 0, 0);                                                -- Player does not have the right skill
INSERT INTO `gossip_menu` VALUES (4118, 5038, 0, 209);                                                -- Player is right level
INSERT INTO `gossip_menu` VALUES (4118, 5039, 0, 361);                                -- Player too high level
UPDATE `creature_template` SET `gossip_menu_id` = 4118 WHERE `entry` = 11046; -- Adds gossip menu to Whuut
-- Removes entries in npc_gossip for these trainers if existing
DELETE FROM `npc_gossip` WHERE `npc_guid` IN (SELECT `guid` FROM `creature` WHERE `id` IN (2132, 11044, 11047, 3184, 11046));

-- Expert (teaching Journeyman)
-- Bena Winterhoof (3009)
INSERT INTO `gossip_menu` VALUES (4131, 5079, 0, 0);                                                -- Player does not have the right skill
INSERT INTO `gossip_menu` VALUES (4131, 5081, 0, 209);                                                -- Player too low level
INSERT INTO `gossip_menu` VALUES (4131, 5080, 0, 361);                                -- Player is right level
INSERT INTO `gossip_menu` VALUES (4131, 5083, 0, 362);                                -- Player too high level
UPDATE `creature_template` SET `gossip_menu_id` = 4131 WHERE `entry` = 3009; -- Adds gossip menu to Bena Winterhoof
-- Doctor Marsh (4609)
INSERT INTO `gossip_menu` VALUES (4133, 5089, 0, 0);                                                -- Player does not have the right skill
INSERT INTO `gossip_menu` VALUES (4133, 5092, 0, 209);                                                -- Player too low level
INSERT INTO `gossip_menu` VALUES (4133, 5093, 0, 361);                                -- Player is right level
INSERT INTO `gossip_menu` VALUES (4133, 5090, 0, 362);                                -- Player too high level
UPDATE `creature_template` SET `gossip_menu_id` = 4133 WHERE `entry` = 4609; -- Adds gossip menu to Doctor Marsh
-- Serge Hinott (2391)
INSERT INTO `gossip_menu` VALUES (4130, 5084, 0, 0);                                                -- Player does not have the right skill
INSERT INTO `gossip_menu` VALUES (4130, 5087, 0, 209);                                                -- Player too low level
INSERT INTO `gossip_menu` VALUES (4130, 5088, 0, 361);                                -- Player is right level
INSERT INTO `gossip_menu` VALUES (4130, 5085, 0, 362);                                -- Player too high level
UPDATE `creature_template` SET `gossip_menu_id` = 4130 WHERE `entry` = 2391; -- Adds gossip menu to Serge Hinott
-- Yelmak (3347)
INSERT INTO `gossip_menu` VALUES (4126, 5069, 0, 0);                                                -- Player does not have the right skill
INSERT INTO `gossip_menu` VALUES (4126, 5072, 0, 209);                                                -- Player too low level
INSERT INTO `gossip_menu` VALUES (4126, 5073, 0, 361);                                -- Player is right level
INSERT INTO `gossip_menu` VALUES (4126, 5070, 0, 362);                                -- Player too high level
UPDATE `creature_template` SET `gossip_menu_id` = 4126 WHERE `entry` = 3347; -- Adds gossip menu to Yelmak
-- Jaxing Chong (2837)
INSERT INTO `gossip_menu` VALUES (4122, 5513, 0, 364);                                        -- Player too high level and Horde player
-- Removes entries in npc_gossip for these trainers if existing
DELETE FROM `npc_gossip` WHERE `npc_guid` IN (SELECT `guid` FROM `creature` WHERE `id` IN (3009, 4609, 2391, 3347));

-- Artisan (teaching Expert)
-- Doctor Herbert Halsey (4611)
INSERT INTO `gossip_menu` VALUES (4132, 5099, 0, 0);                                                -- Player does not have the right skill
INSERT INTO `gossip_menu` VALUES (4132, 5102, 0, 209);                                                -- Player too low level
INSERT INTO `gossip_menu` VALUES (4132, 5103, 0, 362);                                -- Player is right level
INSERT INTO `gossip_menu` VALUES (4132, 5100, 0, 363);                                -- Player too high level
UPDATE `creature_template` SET `gossip_menu_id` = 4132 WHERE `entry` = 4611; -- Adds gossip menu to Doctor Herbert Halsey (Artisan Alchemist)
-- Removes entries in npc_gossip for these trainers if existing
DELETE FROM `npc_gossip` WHERE `npc_guid` IN (SELECT `guid` FROM `creature` WHERE `id` = 4611);

-- Master (teaching Artisan)
-- Rogvar (1386)
INSERT INTO `gossip_menu` VALUES (4134, 5108, 0, 0);                                                -- Player does not have the right skill
INSERT INTO `gossip_menu` VALUES (4134, 5111, 0, 209);                                                -- Player too low level
INSERT INTO `gossip_menu` VALUES (4134, 5110, 0, 363);                                -- Player is right level (should start a quest?)
UPDATE `creature_template` SET `gossip_menu_id` = 4134 WHERE `entry` = 1386; -- Adds gossip menu to Rogvar (Master Alchemist)
-- Removes entries in npc_gossip for these trainers if existing
DELETE FROM `npc_gossip` WHERE `npc_guid` IN (SELECT `guid` FROM `creature` WHERE `id` = 1386);

UPDATE `creature_template` SET `rank` = 2 WHERE `entry` = 5928;

-- backported from classicdb with minimal corrections

-- ************************************************************
-- Conditions
-- ************************************************************

-- Creates conditions for each skill to allow trainers to know when to display gossip indicating players to move to a more skilled trainer

DELETE FROM `conditions` WHERE `condition_entry` BETWEEN 366 AND 368;
INSERT INTO `conditions` VALUES
 (366, 7, 164, 50), -- Blacksmithing Journeyman
 (367, 7, 164, 125), -- Blacksmithing Expert
 (368, 7, 164, 200); -- Blacksmithing Artisan


-- ************************************************************
-- Blacksmithing
-- ************************************************************

-- Source: http://www.wowwiki.com/Blacksmithing_trainers?diff=353463&oldid=326118

-- This value was determined on the basis of gossip menus entries
-- already in database with text_id related to blacksmith training (they were not linked to a creature)
-- All other gossips were added on this basis to keep compatibility with TBC-DB and UDB
DELETE FROM `gossip_menu` WHERE `entry` BETWEEN 2741 AND 2784;

-- -------------
-- Alliance
-- -------------

-- Various adjustements
UPDATE `creature_template` SET `subname` = 'Master Weaponsmith' WHERE `entry` = 11146; -- Ironus Coldsteel was Master Weaponsmith in classic and the only one able to teach artisan
UPDATE `creature_template` SET `subname` = 'Master Armorsmith' WHERE `entry` = 5164; -- Grumnus Steelshaper was Master Armorsmith in classic and the only one able to teach artisan
UPDATE `creature_template` SET `subname` = 'Master Blacksmith' WHERE `entry` = 2836; -- Brikk Keencraft was Master Blacksmith in classic and the only one able to teach artisan

-- Journeyman (teaching Apprentice)
-- Dane Lindgren (957)
INSERT INTO `gossip_menu` VALUES (2745, 3406, 0, 0); -- Player does not have the right skill
INSERT INTO `gossip_menu` VALUES (2745, 3407, 0, 198); -- Player is right level
INSERT INTO `gossip_menu` VALUES (2745, 3408, 0, 366); -- Player too high level
UPDATE `creature_template` SET `gossip_menu_id` = 2745 WHERE `entry` = 957; -- Adds gossip menu to Dane Lindgren
-- Delfrum Flintbeard (6299)
INSERT INTO `gossip_menu` VALUES (2743, 3398, 0, 0); -- Player does not have the right skill
INSERT INTO `gossip_menu` VALUES (2743, 3399, 0, 198); -- Player is right level
INSERT INTO `gossip_menu` VALUES (2743, 3401, 0, 366); -- Player too high level
UPDATE `creature_template` SET `gossip_menu_id` = 2743 WHERE `entry` = 6299; -- Adds gossip menu to Delfrum Flintbeard
-- Groum Stonebeard (10277)
INSERT INTO `gossip_menu` VALUES (2742, 3398, 0, 0); -- Player does not have the right skill
INSERT INTO `gossip_menu` VALUES (2742, 3399, 0, 198); -- Player is right level
INSERT INTO `gossip_menu` VALUES (2742, 3400, 0, 366); -- Player too high level
UPDATE `creature_template` SET `gossip_menu_id` = 2742 WHERE `entry` = 10277; -- Adds gossip menu to Groum Stonebeard
-- Smith Argus (514)
INSERT INTO `gossip_menu` VALUES (2744, 3405, 0, 0); -- Player does not have the right skill
INSERT INTO `gossip_menu` VALUES (2744, 3403, 0, 198); -- Player is right level
INSERT INTO `gossip_menu` VALUES (2744, 3404, 0, 366); -- Player too high level
UPDATE `creature_template` SET `gossip_menu_id` = 2744 WHERE `entry` = 514; -- Adds gossip menu to Smith Argus
-- Tognus Flintfire (1241)
INSERT INTO `gossip_menu` VALUES (2741, 3395, 0, 0); -- Player does not have the right skill
INSERT INTO `gossip_menu` VALUES (2741, 3396, 0, 198); -- Player is right level
INSERT INTO `gossip_menu` VALUES (2741, 3397, 0, 366); -- Player too high level
UPDATE `creature_template` SET `gossip_menu_id` = 2741 WHERE `entry` = 1241; -- Adds gossip menu to Tognus Flintfire
-- Removes entries in npc_gossip for these trainers if existing
DELETE FROM `npc_gossip` WHERE `npc_guid` IN (SELECT `guid` FROM `creature` WHERE `id` IN (957, 6299, 10277, 514, 1241));

-- Expert (teaching Journeyman)
-- Clarise Gnarltree (3136)
INSERT INTO `gossip_menu` VALUES (2781, 3461, 0, 0); -- Player does not have the right skill
INSERT INTO `gossip_menu` VALUES (2781, 3462, 0, 198); -- Player too low level
INSERT INTO `gossip_menu` VALUES (2781, 3464, 0, 366); -- Player is right level
INSERT INTO `gossip_menu` VALUES (2781, 3465, 0, 367); -- Player too high level
UPDATE `creature_template` SET `gossip_menu_id` = 2781 WHERE `entry` = 3136; -- Adds gossip menu to Clarise Gnarltree
-- Rotgath Stonebeard (10276)
INSERT INTO `gossip_menu` VALUES (2761, 3456, 0, 0); -- Player does not have the right skill
INSERT INTO `gossip_menu` VALUES (2761, 3457, 0, 198); -- Player too low level
INSERT INTO `gossip_menu` VALUES (2761, 3459, 0, 366); -- Player is right level
INSERT INTO `gossip_menu` VALUES (2761, 3460, 0, 367); -- Player too high level
UPDATE `creature_template` SET `gossip_menu_id` = 2761 WHERE `entry` = 10276; -- Adds gossip menu to Rotgath Stonebeard
-- Therum Deepforge (5511)
INSERT INTO `gossip_menu` VALUES (2760, 3456, 0, 0); -- Player does not have the right skill
INSERT INTO `gossip_menu` VALUES (2760, 3453, 0, 198); -- Player too low level
INSERT INTO `gossip_menu` VALUES (2760, 3459, 0, 366); -- Player is right level
INSERT INTO `gossip_menu` VALUES (2760, 3454, 0, 367); -- Player too high level
UPDATE `creature_template` SET `gossip_menu_id` = 2760 WHERE `entry` = 5511; -- Adds gossip menu to Therum Deepforge
-- Removes entries in npc_gossip for these trainers if existing
DELETE FROM `npc_gossip` WHERE `npc_guid` IN (SELECT `guid` FROM `creature` WHERE `id` IN (3136, 10276, 5511));

-- Artisan (teaching Expert)
-- Bengus Deepforge (4258)
INSERT INTO `gossip_menu` VALUES (2762, 1261, 0, 0); -- Player does not have the right skill
INSERT INTO `gossip_menu` VALUES (2762, 3482, 0, 198); -- Player is too low level
INSERT INTO `gossip_menu` VALUES (2762, 1262, 0, 367); -- Player is right level
INSERT INTO `gossip_menu` VALUES (2762, 3484, 0, 368); -- Player too high level
UPDATE `creature_template` SET `gossip_menu_id` = 2762 WHERE `entry` = 4258; -- Adds gossip menu to Bengus Deepforge
-- Removes entries in npc_gossip for these trainers if existing
DELETE FROM `npc_gossip` WHERE `npc_guid` IN (SELECT `guid` FROM `creature` WHERE `id` = 4258);

-- Master (teaching Artisan)
-- Grumnus Steelshaper (Ironforge) [Armorsmith]
-- Ironus Coldsteel (Ironforge) [Weaponsmith]
-- Brikk Keencraft (2836)
INSERT INTO `gossip_menu` VALUES (2784, 3488, 0, 0); -- Player does not have the right skill
INSERT INTO `gossip_menu` VALUES (2784, 3489, 0, 198); -- Player too low level
INSERT INTO `gossip_menu` VALUES (2784, 3490, 0, 368); -- Player is right level (should start a quest?)
UPDATE `creature_template` SET `gossip_menu_id` = 2784 WHERE `entry` = 2836; -- Adds gossip menu to Brikk Keencraft (Master Blacksmith)
-- Removes entries in npc_gossip for these trainers if existing
DELETE FROM `npc_gossip` WHERE `npc_guid` IN (SELECT `guid` FROM `creature` WHERE `id` = 2836);

-- -------------
-- Horde
-- -------------

-- Various adjustements
UPDATE `creature_template` SET `subname` = 'Master Weaponsmith' WHERE `entry` = 11178; -- Borgosh Corebender was Master Weaponsmith in classic and the only one able to teach artisan
UPDATE `creature_template` SET `subname` = 'Master Armorsmith' WHERE `entry` = 11177; -- Okothos Ironrager was Master Armorsmith in classic and the only one able to teach artisan

-- Journeyman (teaching Apprentice)
-- Basil Frye (4605)
INSERT INTO `gossip_menu` VALUES (2750, 3421, 0, 0); -- Player does not have the right skill
INSERT INTO `gossip_menu` VALUES (2750, 3422, 0, 198); -- Player is right level
INSERT INTO `gossip_menu` VALUES (2750, 3423, 0, 366); -- Player too high level
UPDATE `creature_template` SET `gossip_menu_id` = 2750 WHERE `entry` = 4605; -- Adds gossip menu to Basil Frye
-- Dwukk (3174)
INSERT INTO `gossip_menu` VALUES (2746, 3409, 0, 0); -- Player does not have the right skill
INSERT INTO `gossip_menu` VALUES (2746, 3410, 0, 198); -- Player is right level
INSERT INTO `gossip_menu` VALUES (2746, 3411, 0, 366); -- Player too high level
UPDATE `creature_template` SET `gossip_menu_id` = 2746 WHERE `entry` = 3174; -- Adds gossip menu to Dwukk
-- Guillaume Sorouy (3557)
INSERT INTO `gossip_menu` VALUES (2749, 3418, 0, 0); -- Player does not have the right skill
INSERT INTO `gossip_menu` VALUES (2749, 3419, 0, 198); -- Player is right level
INSERT INTO `gossip_menu` VALUES (2749, 3420, 0, 366); -- Player too high level
UPDATE `creature_template` SET `gossip_menu_id` = 2749 WHERE `entry` = 3557; -- Adds gossip menu to Guillaume Sorouy
-- Thrag Stonehoof (10278)
INSERT INTO `gossip_menu` VALUES (2748, 3415, 0, 0); -- Player does not have the right skill
INSERT INTO `gossip_menu` VALUES (2748, 3416, 0, 198); -- Player is right level
INSERT INTO `gossip_menu` VALUES (2748, 3417, 0, 366); -- Player too high level
UPDATE `creature_template` SET `gossip_menu_id` = 2748 WHERE `entry` = 10278; -- Adds gossip menu to Thrag Stonehoof
-- Ug'thok (10266)
INSERT INTO `gossip_menu` VALUES (2747, 3412, 0, 0); -- Player does not have the right skill
INSERT INTO `gossip_menu` VALUES (2747, 3413, 0, 198); -- Player is right level
INSERT INTO `gossip_menu` VALUES (2747, 3414, 0, 366); -- Player too high level
UPDATE `creature_template` SET `gossip_menu_id` = 2747 WHERE `entry` = 10266; -- Adds gossip menu to Ug'thok
-- Removes entries in npc_gossip for these trainers if existing
DELETE FROM `npc_gossip` WHERE `npc_guid` IN (SELECT `guid` FROM `creature` WHERE `id` IN (4605, 3174, 3557, 10278, 10266));

-- Expert (teaching Journeyman)
-- James Van Brunt (4596)
INSERT INTO `gossip_menu` VALUES (2763, 1619, 0, 0); -- Player does not have the right skill
INSERT INTO `gossip_menu` VALUES (2763, 3479, 0, 198); -- Player too low level
INSERT INTO `gossip_menu` VALUES (2763, 1618, 0, 366); -- Player is right level
INSERT INTO `gossip_menu` VALUES (2763, 3481, 0, 367); -- Player too high level
UPDATE `creature_template` SET `gossip_menu_id` = 2763 WHERE `entry` = 4596; -- Adds gossip menu to James Van Brunt
-- Karn Stonehoof (2998)
INSERT INTO `gossip_menu` VALUES (2764, 1615, 0, 0); -- Player does not have the right skill
INSERT INTO `gossip_menu` VALUES (2764, 3476, 0, 198); -- Player too low level
INSERT INTO `gossip_menu` VALUES (2764, 3473, 0, 366); -- Player is right level
INSERT INTO `gossip_menu` VALUES (2764, 3478, 0, 367); -- Player too high level
UPDATE `creature_template` SET `gossip_menu_id` = 2764 WHERE `entry` = 2998; -- Adds gossip menu to Karn Stonehoof
-- Snarl (1383)
INSERT INTO `gossip_menu` VALUES (2782, 3466, 0, 0); -- Player does not have the right skill
INSERT INTO `gossip_menu` VALUES (2782, 3467, 0, 198); -- Player too low level
INSERT INTO `gossip_menu` VALUES (2782, 3468, 0, 366); -- Player is right level
INSERT INTO `gossip_menu` VALUES (2782, 3470, 0, 367); -- Player too high level
UPDATE `creature_template` SET `gossip_menu_id` = 2782 WHERE `entry` = 1383; -- Adds gossip menu to Snarl
-- Traugh (3478)
INSERT INTO `gossip_menu` VALUES (2783, 3471, 0, 0); -- Player does not have the right skill
INSERT INTO `gossip_menu` VALUES (2783, 3472, 0, 198); -- Player too low level
INSERT INTO `gossip_menu` VALUES (2783, 3473, 0, 366); -- Player is right level
INSERT INTO `gossip_menu` VALUES (2783, 3475, 0, 367); -- Player too high level
UPDATE `creature_template` SET `gossip_menu_id` = 2783 WHERE `entry` = 3478; -- Adds gossip menu to Traugh
-- Removes entries in npc_gossip for these trainers if existing
DELETE FROM `npc_gossip` WHERE `npc_guid` IN (SELECT `guid` FROM `creature` WHERE `id` IN (4596, 2998, 1383, 3478));

-- Artisan (teaching Expert)
-- Saru Steelfury (3355)
INSERT INTO `gossip_menu` VALUES (2765, 1606, 0, 0); -- Player does not have the right skill
INSERT INTO `gossip_menu` VALUES (2765, 3485, 0, 198); -- Player is too low level
INSERT INTO `gossip_menu` VALUES (2765, 1605, 0, 367); -- Player is right level
INSERT INTO `gossip_menu` VALUES (2765, 3487, 0, 368); -- Player too high level
UPDATE `creature_template` SET `gossip_menu_id` = 2765 WHERE `entry` = 3355; -- Adds gossip menu to Saru Steelfury
-- Removes entries in npc_gossip for these trainers if existing
DELETE FROM `npc_gossip` WHERE `npc_guid` IN (SELECT `guid` FROM `creature` WHERE `id` = 3355);

-- Master (teaching Artisan)
-- Okothos Ironrager (Orgrimmar) [Armorsmith]
-- Borgosh Corebender (Orgrimmar) [Weaponsmith]
-- Brikk Keencraft


-- ************************************************************
-- Conditions
-- ************************************************************

-- Creates conditions for each skill to allow trainers to know when to display gossip indicating players to move to a more skilled trainer

DELETE FROM `conditions` WHERE `condition_entry` BETWEEN 380 AND 382;
INSERT INTO `conditions` VALUES
 (380, 7, 333, 50),        -- Enchanting Journeyman
 (381, 7, 333, 125),                -- Enchanting Expert
 (382, 7, 333, 200);                -- Enchanting Artisan


-- ************************************************************
-- Enchanting
-- ************************************************************

-- Source: http://www.wowwiki.com/Enchanting_trainers?diff=400297&oldid=336986

-- This value was determined on the basis of gossip menus entries
-- already in database with text_id related to enchanting training (they were not linked to a creature)
-- All other gossips were added on this basis to keep compatibility with TBC-DB and UDB
DELETE FROM `gossip_menu` WHERE `entry` BETWEEN 4153 AND 4171;

-- -------------
-- Alliance
-- -------------

-- Various adjustements

-- Journeyman (teaching Apprentice)
-- Alanna Raveneye        (3606)
INSERT INTO `gossip_menu` VALUES (4156, 5190, 0, 0);                                                -- Player does not have the right skill
INSERT INTO `gossip_menu` VALUES (4156, 5192, 0, 203);                                                -- Player is right level
INSERT INTO `gossip_menu` VALUES (4156, 5191, 0, 380);                                -- Player too high level
UPDATE `creature_template` SET `gossip_menu_id` = 4156 WHERE `entry` = 3606; -- Adds gossip menu to Alanna Raveneye
-- Betty Quin (11068)
INSERT INTO `gossip_menu` VALUES (4153, 5181, 0, 0);                                                -- Player does not have the right skill
INSERT INTO `gossip_menu` VALUES (4153, 5183, 0, 203);                                                -- Player is right level
INSERT INTO `gossip_menu` VALUES (4153, 5182, 0, 380);                                -- Player too high level
UPDATE `creature_template` SET `gossip_menu_id` = 4153 WHERE `entry` = 11068; -- Adds gossip menu to Betty Quin
-- Lalina Summermoon 11070
INSERT INTO `gossip_menu` VALUES (4155, 5187, 0, 0);                                                -- Player does not have the right skill
INSERT INTO `gossip_menu` VALUES (4155, 5189, 0, 203);                                                -- Player is right level
INSERT INTO `gossip_menu` VALUES (4155, 5188, 0, 380);                                -- Player too high level
UPDATE `creature_template` SET `gossip_menu_id` = 4155 WHERE `entry` = 11070; -- Adds gossip menu to Lalina Summermoon
-- Thonys Pillarstone 11065
INSERT INTO `gossip_menu` VALUES (4154, 5184, 0, 0);                                                -- Player does not have the right skill
INSERT INTO `gossip_menu` VALUES (4154, 5186, 0, 203);                                                -- Player is right level
INSERT INTO `gossip_menu` VALUES (4154, 5185, 0, 380);                                -- Player too high level
UPDATE `creature_template` SET `gossip_menu_id` = 4154 WHERE `entry` = 11065; -- Adds gossip menu to Thonys Pillarstone
-- Removes entries in npc_gossip for these trainers if existing
DELETE FROM `npc_gossip` WHERE `npc_guid` IN (SELECT `guid` FROM `creature` WHERE `id` IN (3606, 11068, 11070, 11065));

-- Expert (teaching Journeyman)
-- Gimble Thistlefuzz (5157)
INSERT INTO `gossip_menu` VALUES (4160, 5202, 0, 0);                                                -- Player does not have the right skill
INSERT INTO `gossip_menu` VALUES (4160, 5205, 0, 203);                                                -- Player too low level
INSERT INTO `gossip_menu` VALUES (4160, 5206, 0, 380);                                -- Player is right level
INSERT INTO `gossip_menu` VALUES (4160, 5203, 0, 381);                                -- Player too high level
UPDATE `creature_template` SET `gossip_menu_id` = 4160 WHERE `entry` = 5157; -- Adds gossip menu to Gimble Thistlefuzz
-- Lucan Cordell (1317)
INSERT INTO `gossip_menu` VALUES (4161, 5207, 0, 0);                                                -- Player does not have the right skill
INSERT INTO `gossip_menu` VALUES (4161, 5210, 0, 203);                                                -- Player too low level
INSERT INTO `gossip_menu` VALUES (4161, 5211, 0, 380);                                -- Player is right level
INSERT INTO `gossip_menu` VALUES (4161, 5208, 0, 381);                                -- Player too high level
UPDATE `creature_template` SET `gossip_menu_id` = 4161 WHERE `entry` = 1317; -- Adds gossip menu to Lucan Cordell
-- Taladan (4213)
INSERT INTO `gossip_menu` VALUES (4163, 5213, 0, 0);                                                -- Player does not have the right skill
INSERT INTO `gossip_menu` VALUES (4163, 5216, 0, 203);                                                -- Player too low level
INSERT INTO `gossip_menu` VALUES (4163, 5217, 0, 380);                                -- Player is right level
INSERT INTO `gossip_menu` VALUES (4163, 5214, 0, 381);                                -- Player too high level
UPDATE `creature_template` SET `gossip_menu_id` = 4163 WHERE `entry` = 4213; -- Adds gossip menu to Taladan
-- Xylinnia Starshine (7949)
INSERT INTO `gossip_menu` VALUES (4164, 5218, 0, 0);                                                -- Player too low level / does not have the right skill
INSERT INTO `gossip_menu` VALUES (4164, 5220, 0, 380);                                -- Player is right level
INSERT INTO `gossip_menu` VALUES (4164, 5219, 0, 381);                                -- Player too high level
UPDATE `creature_template` SET `gossip_menu_id` = 4164 WHERE `entry` = 7949; -- Adds gossip menu to Xylinnia Starshine
-- Removes entries in npc_gossip for these trainers if existing
DELETE FROM `npc_gossip` WHERE `npc_guid` IN (SELECT `guid` FROM `creature` WHERE `id` IN (5157, 1317, 4213, 7949));

-- Artisan (teaching Expert)
-- Kitta Firewind (11072)
INSERT INTO `gossip_menu` VALUES (4169, 5243, 0, 0);                                                -- Player does not have the right skill
INSERT INTO `gossip_menu` VALUES (4169, 5246, 0, 203);                                                -- Player too low level
INSERT INTO `gossip_menu` VALUES (4169, 5247, 0, 381);                                -- Player is right level
INSERT INTO `gossip_menu` VALUES (4169, 5244, 0, 382);                                -- Player too high level
UPDATE `creature_template` SET `gossip_menu_id` = 4169 WHERE `entry` = 11072; -- Adds gossip menu to Kitta Firewind
-- Removes entries in npc_gossip for these trainers if existing
DELETE FROM `npc_gossip` WHERE `npc_guid` IN (SELECT `guid` FROM `creature` WHERE `id` = 11072);

-- Master (teaching Artisan)
-- Annora (11073)
INSERT INTO `gossip_menu` VALUES (4171, 5253, 0, 0);                                                -- Player does not have the right skill
INSERT INTO `gossip_menu` VALUES (4171, 5256, 0, 203);                                                -- Player too low level
INSERT INTO `gossip_menu` VALUES (4171, 5255, 0, 382);                                -- Player is right level (should start a quest?)
UPDATE `creature_template` SET `gossip_menu_id` = 4171, `npcflag` = npcflag|1 WHERE `entry` = 11073; -- Adds gossip menu to Annora
-- Removes entries in npc_gossip for these trainers if existing
DELETE FROM `npc_gossip` WHERE `npc_guid` IN (SELECT `guid` FROM `creature` WHERE `id` = 11073);

-- -------------
-- Horde
-- -------------

-- Various adjustements

-- Journeyman (teaching Apprentice)
-- Jhag (11066)
INSERT INTO `gossip_menu` VALUES (4159, 5199, 0, 0);                                                -- Player does not have the right skill
INSERT INTO `gossip_menu` VALUES (4159, 5201, 0, 203);                                                -- Player is right level
INSERT INTO `gossip_menu` VALUES (4159, 5200, 0, 380);                                -- Player too high level
UPDATE `creature_template` SET `gossip_menu_id` = 4159 WHERE `entry` = 11066; -- Adds gossip menu to Jhag
-- Malcomb Wynn        (11067)
INSERT INTO `gossip_menu` VALUES (4157, 5193, 0, 0);                                                -- Player does not have the right skill
INSERT INTO `gossip_menu` VALUES (4157, 5195, 0, 203);                                                -- Player is right level
INSERT INTO `gossip_menu` VALUES (4157, 5194, 0, 380);                                -- Player too high level
UPDATE `creature_template` SET `gossip_menu_id` = 4157 WHERE `entry` = 11067; -- Adds gossip menu to Malcomb Wynn
-- Mot Dawnstrider (11071)
INSERT INTO `gossip_menu` VALUES (4158, 5196, 0, 0);                                                -- Player does not have the right skill
INSERT INTO `gossip_menu` VALUES (4158, 5198, 0, 203);                                                -- Player is right level
INSERT INTO `gossip_menu` VALUES (4158, 5197, 0, 380);                                -- Player too high level
UPDATE `creature_template` SET `gossip_menu_id` = 4158 WHERE `entry` = 11071; -- Adds gossip menu to Mot Dawnstrider
-- Vance Undergloom (5695)
INSERT INTO `gossip_menu` VALUES (4167, 5233, 0, 0);                                                -- Player does not have the right skill
INSERT INTO `gossip_menu` VALUES (4167, 5319, 0, 203);                                                -- Player is right level
INSERT INTO `gossip_menu` VALUES (4167, 5318, 0, 380);                                -- Player too high level
UPDATE `creature_template` SET `gossip_menu_id` = 4167 WHERE `entry` = 5695; -- Adds gossip menu to Vance Undergloom
-- Removes entries in npc_gossip for these trainers if existing
DELETE FROM `npc_gossip` WHERE `npc_guid` IN (SELECT `guid` FROM `creature` WHERE `id` IN (11066, 11067, 11071, 5695));

-- Expert (teaching Journeyman)
-- Godan (3345)
INSERT INTO `gossip_menu` VALUES (4168, 5238, 0, 0);                                                -- Player does not have the right skill
INSERT INTO `gossip_menu` VALUES (4168, 5241, 0, 203);                                                -- Player too low level
INSERT INTO `gossip_menu` VALUES (4168, 5242, 0, 380);                                -- Player is right level
INSERT INTO `gossip_menu` VALUES (4168, 5239, 0, 381);                                -- Player too high level
UPDATE `creature_template` SET `gossip_menu_id` = 4168 WHERE `entry` = 3345; -- Adds gossip menu to Godan
-- Lavinia Crowe (4616)
INSERT INTO `gossip_menu` VALUES (4166, 5228, 0, 0);                                                -- Player does not have the right skill
INSERT INTO `gossip_menu` VALUES (4166, 5231, 0, 203);                                                -- Player too low level
INSERT INTO `gossip_menu` VALUES (4166, 5232, 0, 380);                                -- Player is right level
INSERT INTO `gossip_menu` VALUES (4166, 5229, 0, 381);                                -- Player too high level
UPDATE `creature_template` SET `gossip_menu_id` = 4166 WHERE `entry` = 4616; -- Adds gossip menu to Teg Dawnstrider
-- Teg Dawnstrider (3011)
INSERT INTO `gossip_menu` VALUES (4165, 5223, 0, 0);                                                -- Player does not have the right skill
INSERT INTO `gossip_menu` VALUES (4165, 5226, 0, 203);                                                -- Player too low level
INSERT INTO `gossip_menu` VALUES (4165, 5227, 0, 380);                                -- Player is right level
INSERT INTO `gossip_menu` VALUES (4165, 5224, 0, 381);                                -- Player too high level
UPDATE `creature_template` SET `gossip_menu_id` = 4165 WHERE `entry` = 3011; -- Adds gossip menu to Teg Dawnstrider
-- Removes entries in npc_gossip for these trainers if existing
DELETE FROM `npc_gossip` WHERE `npc_guid` IN (SELECT `guid` FROM `creature` WHERE `id` IN (3345, 4616, 3011));

-- Artisan (teaching Expert)
-- Hgarth (11074)
INSERT INTO `gossip_menu` VALUES (4170, 5248, 0, 0);                                                -- Player does not have the right skill
INSERT INTO `gossip_menu` VALUES (4170, 5251, 0, 203);                                                -- Player too low level
INSERT INTO `gossip_menu` VALUES (4170, 5252, 0, 381);                                -- Player is right level
INSERT INTO `gossip_menu` VALUES (4170, 5249, 0, 382);                                -- Player too high level
UPDATE `creature_template` SET `gossip_menu_id` = 4170 WHERE `entry` = 11074; -- Adds gossip menu to Hgarth
-- Removes entries in npc_gossip for these trainers if existing
DELETE FROM `npc_gossip` WHERE `npc_guid` IN (SELECT `guid` FROM `creature` WHERE `id` = 11074);

-- Master (teaching Artisan)
-- Same as Alliance

-- Melris Malagan updated slanted position --
UPDATE creature SET position_x = '-8823.625000', position_y = '630.498901', position_z = '94.014442', orientation = '3.803255' WHERE guid = '79694';
-- High Sorcerer Andromath Position --
UPDATE creature SET position_x = '-9010.791992', position_y = '876.604919', position_z = '148.617188', orientation = '4.737573' WHERE guid = '90470';
-- Stormwind Royal Guard Position At Entrance of SW Keep GUID = 10508 --
UPDATE creature SET position_x = '-8530.925781', position_y = '439.034271', position_z = '105.048889', orientation = '0.652942' WHERE guid = '10508';
-- Angus Stern half-way into the bar --
UPDATE creature SET position_x = '-9080.482422', position_y = '823.150574', position_z = '108.419243', orientation = '0.492888' WHERE guid = '38225';
-- Officer Areyn slanted and out of place --
UPDATE creature SET position_x = '-8759.895508', position_y = '388.538177', position_z = '101.056473', orientation = '0.648394' WHERE guid = '160018';
-- Moved a Defias Blackguard that was way too far forward --
UPDATE creature SET position_x = '-71.294533', position_y = '-823.506714', position_z = '40.528717', orientation = '0.028470' WHERE guid = '79383';


-- Backport from classic db with some fixes

DELETE FROM `conditions` WHERE `condition_entry` BETWEEN 372 AND 376;
INSERT INTO `conditions` VALUES
 (372, 7, 197, 50), -- Tailoring Journeyman
 (373, 7, 197, 125), -- Tailoring Expert
 (374, 7, 197, 200), -- Tailoring Artisan
 (375, -1, 373, 3), -- Tailor Expert and Horde player
 (376, -1, 373, 4); -- Tailor Expert and Alliance player

-- ************************************************************
-- Tailoring
-- ************************************************************

-- Source: http://www.wowwiki.com/Tailoring_trainers?diff=400086&oldid=398010

-- These values was determined on the basis of gossip menus entries
-- already in database with text_id related to tailor training (they were not linked to a creature but one: 4261)
-- All other gossips were added on this basis to keep compatibility with TBC-DB and UDB
DELETE FROM `gossip_menu` WHERE `entry` BETWEEN 4261 AND 4270;
DELETE FROM `gossip_menu` WHERE `entry` BETWEEN 4344 AND 4356;

-- -------------
-- Alliance
-- -------------

-- Various adjustements
UPDATE `creature_template` SET `subname` = 'Master Tailor' WHERE `entry` = 11052; -- Timothy Worthington was Master Tailor in classic and the only one able to teach artisan

-- Journeyman (teaching Apprentice)
-- Eldrin (1103)
INSERT INTO `gossip_menu` VALUES (4261, 5413, 0, 0); -- Player does not have the right skill
INSERT INTO `gossip_menu` VALUES (4261, 5415, 0, 201); -- Player is right level
INSERT INTO `gossip_menu` VALUES (4261, 5414, 0, 372); -- Player too high level
UPDATE `creature_template` SET `gossip_menu_id` = 4261 WHERE `entry` = 1103; -- Adds gossip menu to Eldrin
-- Lawrence Schneider (1300)
INSERT INTO `gossip_menu` VALUES (4262, 5416, 0, 0); -- Player does not have the right skill
INSERT INTO `gossip_menu` VALUES (4262, 5418, 0, 201); -- Player is right level
INSERT INTO `gossip_menu` VALUES (4262, 5417, 0, 372); -- Player too high level
UPDATE `creature_template` SET `gossip_menu_id` = 4262 WHERE `entry` = 1300; -- Adds gossip menu to Lawrence Schneider
-- Uthrar Threx (1703)
INSERT INTO `gossip_menu` VALUES (4264, 5422, 0, 0); -- Player does not have the right skill
INSERT INTO `gossip_menu` VALUES (4264, 5424, 0, 201); -- Player is right level
INSERT INTO `gossip_menu` VALUES (4264, 5423, 0, 372); -- Player too high level
UPDATE `creature_template` SET `gossip_menu_id` = 4264 WHERE `entry` = 1703; -- Adds gossip menu to Uthrar Threx
-- Trianna (11050)
INSERT INTO `gossip_menu` VALUES (4269, 5437, 0, 0); -- Player does not have the right skill
INSERT INTO `gossip_menu` VALUES (4269, 5439, 0, 201); -- Player is right level
INSERT INTO `gossip_menu` VALUES (4269, 5438, 0, 372); -- Player too high level
UPDATE `creature_template` SET `gossip_menu_id` = 4269 WHERE `entry` = 11050; -- Adds gossip menu to Trianna
-- Grondal Moonbreeze (4193)
INSERT INTO `gossip_menu` VALUES (4263, 5419, 0, 0); -- Player does not have the right skill
INSERT INTO `gossip_menu` VALUES (4263, 5421, 0, 201); -- Player is right level
INSERT INTO `gossip_menu` VALUES (4263, 5420, 0, 372); -- Player too high level
UPDATE `creature_template` SET `gossip_menu_id` = 4263 WHERE `entry` = 4193; -- Adds gossip menu to Grondal Moonbreeze
-- Removes entries in npc_gossip for these trainers if existing
DELETE FROM `npc_gossip` WHERE `npc_guid` IN (SELECT `guid` FROM `creature` WHERE `id` IN (1103, 1300, 1703, 11050, 4193));

-- Expert (teaching Journeyman)
-- Sellandus (5567)
INSERT INTO `gossip_menu` VALUES (4344, 5519, 0, 0); -- Player does not have the right skill
INSERT INTO `gossip_menu` VALUES (4344, 5522, 0, 201); -- Player too low level
INSERT INTO `gossip_menu` VALUES (4344, 5523, 0, 372); -- Player is right level
INSERT INTO `gossip_menu` VALUES (4344, 5520, 0, 373); -- Player too high level
UPDATE `creature_template` SET `gossip_menu_id` = 4344 WHERE `entry` = 5567; -- Adds gossip menu to Sellandus
-- Jormund Stonebrow (5153)
INSERT INTO `gossip_menu` VALUES (4345, 5524, 0, 0); -- Player does not have the right skill
INSERT INTO `gossip_menu` VALUES (4345, 5527, 0, 201); -- Player too low level
INSERT INTO `gossip_menu` VALUES (4345, 5528, 0, 372); -- Player is right level
INSERT INTO `gossip_menu` VALUES (4345, 5525, 0, 373); -- Player too high level
UPDATE `creature_template` SET `gossip_menu_id` = 4345 WHERE `entry` = 5153; -- Adds gossip menu to Jormund Stonebrow
-- Me'lynn (4159)
INSERT INTO `gossip_menu` VALUES (4349, 5540, 0, 0); -- Player does not have the right skill
INSERT INTO `gossip_menu` VALUES (4349, 5543, 0, 201); -- Player too low level
INSERT INTO `gossip_menu` VALUES (4349, 5544, 0, 372); -- Player is right level
INSERT INTO `gossip_menu` VALUES (4349, 5541, 0, 373); -- Player too high level
UPDATE `creature_template` SET `gossip_menu_id` = 4349 WHERE `entry` = 4159; -- Adds gossip menu to Me'lynn
-- Grarnik Goodstich (2627)
INSERT INTO `gossip_menu` VALUES (4348, 5535, 0, 0); -- Player too low level / does not have the right skill
INSERT INTO `gossip_menu` VALUES (4348, 5539, 0, 372); -- Player is right level
INSERT INTO `gossip_menu` VALUES (4348, 5833, 0, 376); -- Player too high level and Alliance
UPDATE `creature_template` SET `gossip_menu_id` = 4348 WHERE `entry` = 2627; -- Adds gossip menu to Grarnik Goodstich
-- Removes entries in npc_gossip for these trainers if existing
DELETE FROM `npc_gossip` WHERE `npc_guid` IN (SELECT `guid` FROM `creature` WHERE `id` IN (5567, 5153, 4159, 2627));

-- Artisan (teaching Expert)
-- Georgio Bolero (1346)
INSERT INTO `gossip_menu` VALUES (4353, 5561, 0, 0); -- Player does not have the right skill
INSERT INTO `gossip_menu` VALUES (4353, 5564, 0, 201); -- Player too low level
INSERT INTO `gossip_menu` VALUES (4353, 5565, 0, 373); -- Player is right level
INSERT INTO `gossip_menu` VALUES (4353, 5562, 0, 374); -- Player too high level
UPDATE `creature_template` SET `gossip_menu_id` = 4353 WHERE `entry` = 1346; -- Adds gossip menu to Georgio Bolero
-- Removes entries in npc_gossip for these trainers if existing
DELETE FROM `npc_gossip` WHERE `npc_guid` IN (SELECT `guid` FROM `creature` WHERE `id` = 1346);

-- Master (teaching Artisan)
-- Timothy Worthington (11052)
INSERT INTO `gossip_menu` VALUES (4355, 5571, 0, 0); -- Player does not have the right skill
INSERT INTO `gossip_menu` VALUES (4355, 5574, 0, 201); -- Player too low level
INSERT INTO `gossip_menu` VALUES (4355, 5573, 0, 374); -- Player is right level (should start a quest?)
UPDATE `creature_template` SET `gossip_menu_id` = 4355 WHERE `entry` = 11052; -- Adds gossip menu to Timothy Worthington (Master Tailor)
-- Removes entries in npc_gossip for these trainers if existing
DELETE FROM `npc_gossip` WHERE `npc_guid` IN (SELECT `guid` FROM `creature` WHERE `id` = 11052);

-- -------------
-- Horde
-- -------------

-- Various adjustements
UPDATE `creature_template` SET `subname` = 'Master Tailor' WHERE `entry` = 2399; -- Daryl Stack was Master Tailor in classic and the only one able to teach artisan

-- Journeyman (teaching Apprentice)
-- Bowen Brisboise (3523)
INSERT INTO `gossip_menu` VALUES (4267, 5431, 0, 0); -- Player does not have the right skill
INSERT INTO `gossip_menu` VALUES (4267, 5433, 0, 201); -- Player is right level
INSERT INTO `gossip_menu` VALUES (4267, 5432, 0, 372); -- Player too high level
UPDATE `creature_template` SET `gossip_menu_id` = 4267 WHERE `entry` = 3523; -- Adds gossip menu to Bowen Brisboise
-- Victor Ward (11048)
INSERT INTO `gossip_menu` VALUES (4268, 5434, 0, 0); -- Player does not have the right skill
INSERT INTO `gossip_menu` VALUES (4268, 5436, 0, 201); -- Player is right level
INSERT INTO `gossip_menu` VALUES (4268, 5435, 0, 372); -- Player too high level
UPDATE `creature_template` SET `gossip_menu_id` = 4268 WHERE `entry` = 11048; -- Adds gossip menu to Victor Ward
-- Snarg (2855)
INSERT INTO `gossip_menu` VALUES (4265, 5425, 0, 0); -- Player does not have the right skill
INSERT INTO `gossip_menu` VALUES (4265, 5427, 0, 201); -- Player is right level
INSERT INTO `gossip_menu` VALUES (4265, 5426, 0, 372); -- Player too high level
UPDATE `creature_template` SET `gossip_menu_id` = 4265 WHERE `entry` = 2855; -- Adds gossip menu to Snarg
-- Vhan (11051)
INSERT INTO `gossip_menu` VALUES (4266, 5428, 0, 0); -- Player does not have the right skill
INSERT INTO `gossip_menu` VALUES (4266, 5430, 0, 201); -- Player is right level
INSERT INTO `gossip_menu` VALUES (4266, 5429, 0, 372); -- Player too high level
UPDATE `creature_template` SET `gossip_menu_id` = 4266 WHERE `entry` = 11051; -- Adds gossip menu to Vhan
-- Kil'hala (3484)
INSERT INTO `gossip_menu` VALUES (4270, 5440, 0, 0); -- Player does not have the right skill
INSERT INTO `gossip_menu` VALUES (4270, 5442, 0, 201); -- Player is right level
INSERT INTO `gossip_menu` VALUES (4270, 5441, 0, 372); -- Player too high level
UPDATE `creature_template` SET `gossip_menu_id` = 4270 WHERE `entry` = 3484; -- Adds gossip menu to Kil'hala
-- Removes entries in npc_gossip for these trainers if existing
DELETE FROM `npc_gossip` WHERE `npc_guid` IN (SELECT `guid` FROM `creature` WHERE `id` IN (3523, 11048, 2855, 11051, 3484));

-- Expert (teaching Journeyman)
-- Rhiannon Davis (11049)
INSERT INTO `gossip_menu` VALUES (4352, 5556, 0, 0); -- Player does not have the right skill
INSERT INTO `gossip_menu` VALUES (4352, 5559, 0, 201); -- Player too low level
INSERT INTO `gossip_menu` VALUES (4352, 5560, 0, 372); -- Player is right level
INSERT INTO `gossip_menu` VALUES (4352, 5557, 0, 373); -- Player too high level
UPDATE `creature_template` SET `gossip_menu_id` = 4352 WHERE `entry` = 11049; -- Adds gossip menu to Rhiannon Davis
-- Magar (3363)
INSERT INTO `gossip_menu` VALUES (4347, 5530, 0, 0); -- Player does not have the right skill
INSERT INTO `gossip_menu` VALUES (4347, 5533, 0, 201); -- Player too low level
INSERT INTO `gossip_menu` VALUES (4347, 5534, 0, 372); -- Player is right level
INSERT INTO `gossip_menu` VALUES (4347, 5531, 0, 373); -- Player too high level
UPDATE `creature_template` SET `gossip_menu_id` = 4347 WHERE `entry` = 3363; -- Adds gossip menu to Magar
-- Tepa (3004)
INSERT INTO `gossip_menu` VALUES (4351, 5551, 0, 0); -- Player does not have the right skill
INSERT INTO `gossip_menu` VALUES (4351, 5554, 0, 201); -- Player too low level
INSERT INTO `gossip_menu` VALUES (4351, 5555, 0, 372); -- Player is right level
INSERT INTO `gossip_menu` VALUES (4351, 5552, 0, 373); -- Player too high level
UPDATE `creature_template` SET `gossip_menu_id` = 4351 WHERE `entry` = 3004; -- Adds gossip menu to Tepa
-- Mahani (3704)
INSERT INTO `gossip_menu` VALUES (4350, 5545, 0, 0); -- Player too low level / does not have the right skill
INSERT INTO `gossip_menu` VALUES (4350, 5549, 0, 372); -- Player is right level
INSERT INTO `gossip_menu` VALUES (4350, 5546, 0, 373); -- Player too high level
UPDATE `creature_template` SET `gossip_menu_id` = 4350 WHERE `entry` = 3704; -- Adds gossip menu to Mahani
-- Grarnik Goodstich (2627)
INSERT INTO `gossip_menu` VALUES (4348, 5536, 0, 375); -- Player too high level and Horde
-- Removes entries in npc_gossip for these trainers if existing
DELETE FROM `npc_gossip` WHERE `npc_guid` IN (SELECT `guid` FROM `creature` WHERE `id` IN (11049, 3363, 3004, 3704));

-- Artisan (teaching Expert)
-- Josef Gregorian (4576)
INSERT INTO `gossip_menu` VALUES (4354, 5566, 0, 0); -- Player does not have the right skill
INSERT INTO `gossip_menu` VALUES (4354, 5569, 0, 201); -- Player too low level
INSERT INTO `gossip_menu` VALUES (4354, 5570, 0, 373); -- Player is right level
INSERT INTO `gossip_menu` VALUES (4354, 5567, 0, 374); -- Player too high level
UPDATE `creature_template` SET `gossip_menu_id` = 4354 WHERE `entry` = 4576; -- Adds gossip menu to Josef Gregorian
-- Removes entries in npc_gossip for these trainers if existing
DELETE FROM `npc_gossip` WHERE `npc_guid` IN (SELECT `guid` FROM `creature` WHERE `id` = 4576);

-- Master (teaching Artisan)
-- Daryl Stack (2399)
INSERT INTO `gossip_menu` VALUES (4356, 5575, 0, 0); -- Player does not have the right skill
INSERT INTO `gossip_menu` VALUES (4356, 5578, 0, 201); -- Player too low level
INSERT INTO `gossip_menu` VALUES (4356, 5577, 0, 374); -- Player is right level (should start a quest?)
UPDATE `creature_template` SET `gossip_menu_id` = 4356 WHERE `entry` = 2399; -- Adds gossip menu to Daryl Stack (Master Tailor)
-- Removes entries in npc_gossip for these trainers if existing
DELETE FROM `npc_gossip` WHERE `npc_guid` IN (SELECT `guid` FROM `creature` WHERE `id` = 2399);


DELETE FROM `conditions` WHERE `condition_entry` BETWEEN 377 AND 379;
INSERT INTO `conditions` VALUES
 (377, 7, 165, 50),        -- Leatherworking Journeyman
 (378, 7, 165, 125),                -- Leatherworking Expert
 (379, 7, 165, 200);        -- Leatherworking Artisan

-- ************************************************************
-- Leatherworking
-- ************************************************************

-- Source: http://www.wowwiki.com/Leatherworking_trainers?diff=399994&oldid=398004
-- These values was determined on the basis of gossip menus entries
-- already in database with text_id related to leatherwoking training
-- All other gossips were added on this basis to keep compatibility with TBC-DB and UDB
DELETE FROM `gossip_menu` WHERE `entry` BETWEEN 4172 AND 4244;

-- -------------
-- Alliance
-- -------------

-- Various adjustements
UPDATE `creature_template` SET `subname` = 'Master Leatherworker' WHERE `entry` = 11097;         -- Drakk Stonehand was Master Leatherworker in classic and the only one able to teach artisan

-- Journeyman (teaching Apprentice)
-- Adele Fielder (1632)
INSERT INTO `gossip_menu` VALUES (4172, 5257, 0, 0);                                                -- Player does not have the right skill
INSERT INTO `gossip_menu` VALUES (4172, 5259, 0, 199);                                                -- Player is right level
INSERT INTO `gossip_menu` VALUES (4172, 5258, 0, 377);                                -- Player too high level
UPDATE `creature_template` SET `gossip_menu_id` = 4172 WHERE `entry` = 1632; -- Adds gossip menu to Adele Fielder
-- Darianna (11083)
INSERT INTO `gossip_menu` VALUES (4175, 5275, 0, 0);                                                -- Player does not have the right skill
INSERT INTO `gossip_menu` VALUES (4175, 5273, 0, 199);                                                -- Player is right level
INSERT INTO `gossip_menu` VALUES (4175, 5274, 0, 377);                                -- Player too high level
UPDATE `creature_template` SET `gossip_menu_id` = 4175 WHERE `entry` = 11083; -- Adds gossip menu to Darianna
-- Gretta Finespindle (1466)
INSERT INTO `gossip_menu` VALUES (4176, 5276, 0, 0);                                                -- Player does not have the right skill
INSERT INTO `gossip_menu` VALUES (4176, 5278, 0, 199);                                                -- Player is right level
INSERT INTO `gossip_menu` VALUES (4176, 5277, 0, 377);                                -- Player too high level
UPDATE `creature_template` SET `gossip_menu_id` = 4176 WHERE `entry` = 1466; -- Adds gossip menu to Gretta Finespindle
-- Nadyia Maneweaver (3605)
INSERT INTO `gossip_menu` VALUES (4174, 5263, 0, 0);                                                -- Player does not have the right skill
INSERT INTO `gossip_menu` VALUES (4174, 5265, 0, 199);                                                -- Player is right level
INSERT INTO `gossip_menu` VALUES (4174, 5264, 0, 377);                                -- Player too high level
UPDATE `creature_template` SET `gossip_menu_id` = 4174 WHERE `entry` = 3605; -- Adds gossip menu to Nadyia Maneweaver
-- Randal Worth (11096)
INSERT INTO `gossip_menu` VALUES (4173, 5260, 0, 0);                                                -- Player does not have the right skill
INSERT INTO `gossip_menu` VALUES (4173, 5262, 0, 199);                                                -- Player is right level
INSERT INTO `gossip_menu` VALUES (4173, 5261, 0, 377);                                -- Player too high level
UPDATE `creature_template` SET `gossip_menu_id` = 4173 WHERE `entry` = 11096; -- Adds gossip menu to Randal Worth
-- Removes entries in npc_gossip for these trainers if existing
DELETE FROM `npc_gossip` WHERE `npc_guid` IN (SELECT `guid` FROM `creature` WHERE `id` IN (1632, 11083, 1466, 3605, 11096));

-- Expert (teaching Journeyman)
-- Aayndia Floralwind (3967)
INSERT INTO `gossip_menu` VALUES (4213, 5360, 0, 0);                                         -- Player does not have the right skill
INSERT INTO `gossip_menu` VALUES (4213, 5363, 0, 199);                                                -- Player too low level
INSERT INTO `gossip_menu` VALUES (4213, 5364, 0, 377);                         -- Player is right level
INSERT INTO `gossip_menu` VALUES (4213, 5361, 0, 378);                         -- Player too high level
UPDATE `creature_template` SET `gossip_menu_id` = 4213 WHERE `entry` = 3967; -- Adds gossip menu to Aayndia Floralwind
-- Faldron (11081)
INSERT INTO `gossip_menu` VALUES (4204, 5325, 0, 0);                                         -- Player does not have the right skill
INSERT INTO `gossip_menu` VALUES (4204, 5328, 0, 199);                                                -- Player too low level
INSERT INTO `gossip_menu` VALUES (4204, 5329, 0, 377);                         -- Player is right level
INSERT INTO `gossip_menu` VALUES (4204, 5326, 0, 378);                         -- Player too high level
UPDATE `creature_template` SET `gossip_menu_id` = 4204 WHERE `entry` = 11081; -- Adds gossip menu to Faldron
-- Fimble Finespindle (5127)
INSERT INTO `gossip_menu` VALUES (4205, 5330, 0, 0);                                         -- Player does not have the right skill
INSERT INTO `gossip_menu` VALUES (4205, 5333, 0, 199);                                                -- Player too low level
INSERT INTO `gossip_menu` VALUES (4205, 5334, 0, 377);                         -- Player is right level
INSERT INTO `gossip_menu` VALUES (4205, 5331, 0, 378);                         -- Player too high level
UPDATE `creature_template` SET `gossip_menu_id` = 4205 WHERE `entry` = 5127; -- Adds gossip menu to Fimble Finespindle
-- Simon Tanner (5564)
INSERT INTO `gossip_menu` VALUES (4203, 5320, 0, 0);                                         -- Player does not have the right skill
INSERT INTO `gossip_menu` VALUES (4203, 5323, 0, 199);                                                -- Player too low level
INSERT INTO `gossip_menu` VALUES (4203, 5324, 0, 377);                         -- Player is right level
INSERT INTO `gossip_menu` VALUES (4203, 5321, 0, 378);                         -- Player too high level
UPDATE `creature_template` SET `gossip_menu_id` = 4203 WHERE `entry` = 5564; -- Adds gossip menu to Simon Tanner
-- Removes entries in npc_gossip for these trainers if existing
DELETE FROM `npc_gossip` WHERE `npc_guid` IN (SELECT `guid` FROM `creature` WHERE `id` IN (3967, 11081, 5127, 5564));

-- Artisan (teaching Expert)
-- Telonis (4212)
INSERT INTO `gossip_menu` VALUES (4241, 5393, 0, 0);                                         -- Player does not have the right skill
INSERT INTO `gossip_menu` VALUES (4241, 5396, 0, 199);                                                -- Player too low level
INSERT INTO `gossip_menu` VALUES (4241, 5397, 0, 378);                                -- Player is right level
INSERT INTO `gossip_menu` VALUES (4241, 5394, 0, 379);                                -- Player too high level
UPDATE `creature_template` SET `gossip_menu_id` = 4241 WHERE `entry` = 4212; -- Adds gossip menu to Telonis
-- Removes entries in npc_gossip for these trainers if existing
DELETE FROM `npc_gossip` WHERE `npc_guid` IN (SELECT `guid` FROM `creature` WHERE `id` = 4212);

-- Master (teaching Artisan)
-- Drakk Stonehand (11097)
INSERT INTO `gossip_menu` VALUES (4243, 5403, 0, 0);                                                -- Player does not have the right skill
INSERT INTO `gossip_menu` VALUES (4243, 5406, 0, 199);                                                -- Player too low level
INSERT INTO `gossip_menu` VALUES (4243, 5405, 0, 379);                                -- Player is right level (should start a quest?)
UPDATE `creature_template` SET `gossip_menu_id` = 4243 WHERE `entry` = 11097; -- Adds gossip menu to Drakk Stonehand
-- Removes entries in npc_gossip for these trainers if existing
DELETE FROM `npc_gossip` WHERE `npc_guid` IN (SELECT `guid` FROM `creature` WHERE `id` = 11097);

-- -------------
-- Horde
-- -------------

-- Various adjustements
UPDATE `creature_template` SET `subname` = 'Master Leatherworker' WHERE `entry` = 11098;         -- Hahrana Ironhide was Master Leatherworker in classic and the only one able to teach artisan

-- Journeyman (teaching Apprentice)
-- Chaw Stronghide (3069)
INSERT INTO `gossip_menu` VALUES (4185, 5285, 0, 0);                                                -- Player does not have the right skill
INSERT INTO `gossip_menu` VALUES (4185, 5287, 0, 199);                                                -- Player is right level
INSERT INTO `gossip_menu` VALUES (4185, 5286, 0, 377);                                -- Player too high level
UPDATE `creature_template` SET `gossip_menu_id` = 4185 WHERE `entry` = 3069; -- Adds gossip menu to Chaw Stronghide
-- Waldor (5784)
INSERT INTO `gossip_menu` VALUES (4186, 5288, 0, 0);                                                -- Player does not have the right skill / is right level
INSERT INTO `gossip_menu` VALUES (4186, 5289, 0, 377);                                -- Player too high level
UPDATE `creature_template` SET `gossip_menu_id` = 4186 WHERE `entry` = 5784; -- Adds gossip menu to Waldor
-- Dan Golthas (223)
INSERT INTO `gossip_menu` VALUES (4188, 5294, 0, 0);                                                -- Player does not have the right skill
INSERT INTO `gossip_menu` VALUES (4188, 5296, 0, 199);                                                -- Player is right level
INSERT INTO `gossip_menu` VALUES (4188, 5295, 0, 377);                                -- Player too high level
UPDATE `creature_template` SET `gossip_menu_id` = 4188 WHERE `entry` = 223; -- Adds gossip menu to Dan Golthas
-- Kamari (5811)
INSERT INTO `gossip_menu` VALUES (4183, 5279, 0, 0);                                                -- Player does not have the right skill
INSERT INTO `gossip_menu` VALUES (4183, 5281, 0, 199);                                                -- Player is right level
INSERT INTO `gossip_menu` VALUES (4183, 5280, 0, 377);                                -- Player too high level
UPDATE `creature_template` SET `gossip_menu_id` = 4183 WHERE `entry` = 5811; -- Adds gossip menu to Kamari
-- Mak (3008)
INSERT INTO `gossip_menu` VALUES (4187, 5291, 0, 0);                                                -- Player does not have the right skill
INSERT INTO `gossip_menu` VALUES (4187, 5293, 0, 199);                                                -- Player is right level
INSERT INTO `gossip_menu` VALUES (4187, 5292, 0, 377);                                -- Player too high level
UPDATE `creature_template` SET `gossip_menu_id` = 4187 WHERE `entry` = 3008; -- Adds gossip menu to Mak
-- Shelene Rhobart (3549)
INSERT INTO `gossip_menu` VALUES (4184, 5282, 0, 0);                                                -- Player does not have the right skill
INSERT INTO `gossip_menu` VALUES (4184, 5284, 0, 199);                                                -- Player is right level
INSERT INTO `gossip_menu` VALUES (4184, 5283, 0, 377);                                -- Player too high level
UPDATE `creature_template` SET `gossip_menu_id` = 4184 WHERE `entry` = 3549; -- Adds gossip menu to Shelene Rhobart
-- Removes entries in npc_gossip for these trainers if existing
DELETE FROM `npc_gossip` WHERE `npc_guid` IN (SELECT `guid` FROM `creature` WHERE `id` IN (3069, 5784, 223, 5811, 3008, 3549));

-- Expert (teaching Journeyman)
-- Arthur Moore (4588)
INSERT INTO `gossip_menu` VALUES (4212, 5355, 0, 0);                                         -- Player does not have the right skill
INSERT INTO `gossip_menu` VALUES (4212, 5358, 0, 199);                                                -- Player too low level
INSERT INTO `gossip_menu` VALUES (4212, 5359, 0, 377);                         -- Player is right level
INSERT INTO `gossip_menu` VALUES (4212, 5356, 0, 378);                         -- Player too high level
UPDATE `creature_template` SET `gossip_menu_id` = 4212 WHERE `entry` = 4588; -- Adds gossip menu to Arthur Moore
-- Brawn (1385)
INSERT INTO `gossip_menu` VALUES (4208, 5348, 0, 0);                                         -- Player does not have the right skill / too low level
INSERT INTO `gossip_menu` VALUES (4208, 5345, 0, 377);                         -- Player is right level
INSERT INTO `gossip_menu` VALUES (4208, 5346, 0, 378);                         -- Player too high level
UPDATE `creature_template` SET `gossip_menu_id` = 4208 WHERE `entry` = 1385; -- Adds gossip menu to Brawn
-- Karolek (3365)
INSERT INTO `gossip_menu` VALUES (4209, 5350, 0, 0);                                         -- Player does not have the right skill
INSERT INTO `gossip_menu` VALUES (4209, 5353, 0, 199);                                                -- Player too low level
INSERT INTO `gossip_menu` VALUES (4209, 5354, 0, 377);                         -- Player is right level
INSERT INTO `gossip_menu` VALUES (4209, 5351, 0, 378);                         -- Player too high level
UPDATE `creature_template` SET `gossip_menu_id` = 4209 WHERE `entry` = 3365; -- Adds gossip menu to Karolek
-- Krulmoo Fullmoon (3703)
INSERT INTO `gossip_menu` VALUES (4206, 5335, 0, 0);                                         -- Player does not have the right skill
INSERT INTO `gossip_menu` VALUES (4206, 5338, 0, 199);                                                -- Player too low level
INSERT INTO `gossip_menu` VALUES (4206, 5339, 0, 377);                         -- Player is right level
INSERT INTO `gossip_menu` VALUES (4206, 5336, 0, 378);                         -- Player too high level
UPDATE `creature_template` SET `gossip_menu_id` = 4206 WHERE `entry` = 3703; -- Adds gossip menu to Krulmoo Fullmoon
-- Tarn (11084)
INSERT INTO `gossip_menu` VALUES (4207, 5340, 0, 0);                                         -- Player does not have the right skill
INSERT INTO `gossip_menu` VALUES (4207, 5343, 0, 199);                                                -- Player too low level
INSERT INTO `gossip_menu` VALUES (4207, 5344, 0, 377);                         -- Player is right level
INSERT INTO `gossip_menu` VALUES (4207, 5341, 0, 378);                         -- Player too high level
UPDATE `creature_template` SET `gossip_menu_id` = 4207 WHERE `entry` = 11084; -- Adds gossip menu to Tarn
-- Removes entries in npc_gossip for these trainers if existing
DELETE FROM `npc_gossip` WHERE `npc_guid` IN (SELECT `guid` FROM `creature` WHERE `id` IN (4588, 1385, 3365, 3703, 11084));

-- Artisan (teaching Expert)
-- Una (3007)
INSERT INTO `gossip_menu` VALUES (4242, 5398, 0, 0);                                         -- Player does not have the right skill
INSERT INTO `gossip_menu` VALUES (4242, 5401, 0, 199);                                                -- Player too low level
INSERT INTO `gossip_menu` VALUES (4242, 5402, 0, 378);                                -- Player is right level
INSERT INTO `gossip_menu` VALUES (4242, 5399, 0, 379);                                -- Player too high level
UPDATE `creature_template` SET `gossip_menu_id` = 4242 WHERE `entry` = 3007; -- Adds gossip menu to Una
-- Removes entries in npc_gossip for these trainers if existing
DELETE FROM `npc_gossip` WHERE `npc_guid` IN (SELECT `guid` FROM `creature` WHERE `id` = 3007);

-- Master (teaching Artisan)
-- Hahrana Ironhide (11098)
INSERT INTO `gossip_menu` VALUES (4244, 5407, 0, 0);                                                -- Player does not have the right skill
INSERT INTO `gossip_menu` VALUES (4244, 5410, 0, 199);                                                -- Player too low level
INSERT INTO `gossip_menu` VALUES (4244, 5408, 0, 379);                                -- Player is right level (should start a quest?)
UPDATE `creature_template` SET `gossip_menu_id` = 4244 WHERE `entry` = 11098; -- Adds gossip menu to Drakk Stonehand
-- Removes entries in npc_gossip for these trainers if existing
DELETE FROM `npc_gossip` WHERE `npc_guid` IN (SELECT `guid` FROM `creature` WHERE `id` = 11098);


-- ************************************************************
-- Conditions
-- ************************************************************

-- Creates conditions for each skill to allow trainers to know when to display gossip indicating players to move to a more skilled trainer

DELETE FROM `conditions` WHERE `condition_entry` BETWEEN 391 AND 395;
INSERT INTO `conditions` VALUES
 (391, 7, 202, 50), -- Engineering Journeyman
 (392, 7, 202, 125), -- Engineering Expert
 (393, 7, 202, 200), -- Engineering Artisan
 (394, -1, 391, 3), -- Engineer Expert and Horde player
 (395, -1, 391, 4); -- Engineer Expert and Alliance player

-- ************************************************************
-- Engineering
-- ************************************************************

-- Source: http://www.wowwiki.com/Engineering_trainers?diff=400429&oldid=397971

SET @ENTRY := 4135;
-- This value was determined on the basis of gossip menus entries
-- already in database with text_id related to engineering training (they were not linked to a creature)
-- All other gossips were added on this basis to keep compatibility with TBC-DB and UDB
DELETE FROM `gossip_menu` WHERE `entry` BETWEEN @ENTRY AND 4152;

-- -------------
-- Alliance
-- -------------

-- Various adjustements
UPDATE `creature_template` SET `subname` = 'Master Engineer' WHERE `entry` = 8736; -- Buzzek Bracketswing was Master Engineer in classic and the only one able to teach artisan

-- Journeyman (teaching Apprentice)
-- Bronk Guzzlegear (1702)
INSERT INTO `gossip_menu` VALUES (4135, 5112, 0, 0); -- Player does not have the right skill
INSERT INTO `gossip_menu` VALUES (4135, 5114, 0, 202); -- Player is right level
INSERT INTO `gossip_menu` VALUES (4135, 5113, 0, 391); -- Player too high level
UPDATE `creature_template` SET `gossip_menu_id` = 4135 WHERE `entry` = 1702; -- Adds gossip menu to Bronk Guzzlegear
-- Deek Fizzlebizz (3290)
INSERT INTO `gossip_menu` VALUES (4136, 5115, 0, 0); -- Player does not have the right skill
INSERT INTO `gossip_menu` VALUES (4136, 5117, 0, 202); -- Player is right level
INSERT INTO `gossip_menu` VALUES (4136, 5116, 0, 391); -- Player too high level
UPDATE `creature_template` SET `gossip_menu_id` = 4136 WHERE `entry` = 3290; -- Adds gossip menu to Deek Fizzlebizz
-- Jemma Quikswitch (11028)
INSERT INTO `gossip_menu` VALUES (4137, 5118, 0, 0); -- Player does not have the right skill
INSERT INTO `gossip_menu` VALUES (4137, 5120, 0, 202); -- Player is right level
INSERT INTO `gossip_menu` VALUES (4137, 5119, 0, 391); -- Player too high level
UPDATE `creature_template` SET `gossip_menu_id` = 4137 WHERE `entry` = 11028; -- Adds gossip menu to Jemma Quikswitch
-- Jenna Lemkenilli (11037)
INSERT INTO `gossip_menu` VALUES (4138, 5121, 0, 0); -- Player does not have the right skill
INSERT INTO `gossip_menu` VALUES (4138, 5123, 0, 202); -- Player is right level
INSERT INTO `gossip_menu` VALUES (4138, 5122, 0, 391); -- Player too high level
UPDATE `creature_template` SET `gossip_menu_id` = 4138 WHERE `entry` = 11037; -- Adds gossip menu to Jenna Lemkenilli
-- Sprite Jumpsprocket (11026)
INSERT INTO `gossip_menu` VALUES (4139, 5124, 0, 0); -- Player does not have the right skill
INSERT INTO `gossip_menu` VALUES (4139, 5126, 0, 202); -- Player is right level
INSERT INTO `gossip_menu` VALUES (4139, 5125, 0, 391); -- Player too high level
UPDATE `creature_template` SET `gossip_menu_id` = 4139 WHERE `entry` = 11026; -- Adds gossip menu to Sprite Jumpsprocket
-- Tinkerwiz (3494)
-- Same as Horde
-- Twizwick Sprocketgrind (11993)
-- Same as Horde
-- Removes entries in npc_gossip for these trainers if existing
DELETE FROM `npc_gossip` WHERE `npc_guid` IN (SELECT `guid` FROM `creature` WHERE `id` IN (1702, 3290, 11028, 11037, 11026));

 
-- Expert (teaching Journeyman)
-- Finbus Geargrind (1676)
INSERT INTO `gossip_menu` VALUES (4145, 5142, 0, 0); -- Player does not have the right skill
INSERT INTO `gossip_menu` VALUES (4145, 5145, 0, 202); -- Player too low level
INSERT INTO `gossip_menu` VALUES (4145, 5146, 0, 391); -- Player is right level
INSERT INTO `gossip_menu` VALUES (4145, 5143, 0, 392); -- Player too high level
UPDATE `creature_template` SET `gossip_menu_id` = 4145 WHERE `entry` = 1676; -- Adds gossip menu to Finbus Geargrind
-- Disambigues next tier trainer gender in npc text
UPDATE `npc_text` SET `text0_0` = 'You\'re working your way up??? higher than me, at this point! You should talk to Springspindle Fizzlegear in Ironforge! He\'ll show you more than I ever could!' WHERE `id` = 5143;
-- Lilliam Sparkspindle (5518)
INSERT INTO `gossip_menu` VALUES (4146, 5147, 0, 0); -- Player does not have the right skill
INSERT INTO `gossip_menu` VALUES (4146, 5150, 0, 202); -- Player too low level
INSERT INTO `gossip_menu` VALUES (4146, 5151, 0, 391); -- Player is right level
INSERT INTO `gossip_menu` VALUES (4146, 5148, 0, 392); -- Player too high level
UPDATE `creature_template` SET `gossip_menu_id` = 4146 WHERE `entry` = 5518; -- Adds gossip menu to Lilliam Sparkspindle
-- Trixie Quikswitch (11029)
INSERT INTO `gossip_menu` VALUES (4147, 5152, 0, 0); -- Player does not have the right skill
INSERT INTO `gossip_menu` VALUES (4147, 5155, 0, 202); -- Player too low level
INSERT INTO `gossip_menu` VALUES (4147, 5156, 0, 391); -- Player is right level
INSERT INTO `gossip_menu` VALUES (4147, 5153, 0, 392); -- Player too high level
UPDATE `creature_template` SET `gossip_menu_id` = 4147 WHERE `entry` = 11029; -- Adds gossip menu to Trixie Quikswitch
-- Removes entries in npc_gossip for these trainers if existing
DELETE FROM `npc_gossip` WHERE `npc_guid` IN (SELECT `guid` FROM `creature` WHERE `id` IN (1676, 5518, 11029));

-- Artisan (teaching Expert)
-- Springspindle Fizzlegear (5174)
INSERT INTO `gossip_menu` VALUES (4150, 5167, 0, 0); -- Player does not have the right skill
INSERT INTO `gossip_menu` VALUES (4150, 5170, 0, 202); -- Player too low level
INSERT INTO `gossip_menu` VALUES (4150, 5171, 0, 392); -- Player is right level
INSERT INTO `gossip_menu` VALUES (4150, 5168, 0, 393); -- Player too high level
UPDATE `creature_template` SET `gossip_menu_id` = 4150 WHERE `entry` = 5174; -- Adds gossip menu to Springspindle Fizzlegear
-- Removes entries in npc_gossip for these trainers if existing
DELETE FROM `npc_gossip` WHERE `npc_guid` IN (SELECT `guid` FROM `creature` WHERE `id` = 5174);

-- Master (teaching Artisan)
-- Tinkmaster Overspark <Master Gnome Engineer> Tinker Town, Ironforge
-- Oglethorpe Obnoticus <Master Gnome Engineer> Booty Bay, Stranglethorn Vale
-- Buzzek Bracketswing (8736)
INSERT INTO `gossip_menu` VALUES (4152, 5177, 0, 0); -- Player does not have the right skill
INSERT INTO `gossip_menu` VALUES (4152, 5180, 0, 202); -- Player too low level
INSERT INTO `gossip_menu` VALUES (4152, 5179, 0, 393); -- Player is right level (should start a quest?)
UPDATE `creature_template` SET `gossip_menu_id` = 4152 WHERE `entry` = 8736; -- Adds gossip menu to Buzzek Bracketswing
-- Removes entries in npc_gossip for these trainers if existing
DELETE FROM `npc_gossip` WHERE `npc_guid` IN (SELECT `guid` FROM `creature` WHERE `id` = 8736);

-- -------------
-- Horde
-- -------------

-- Various adjustements

-- Journeyman (teaching Apprentice)
-- Graham Van Talen (4586)
INSERT INTO `gossip_menu` VALUES (4144, 5139, 0, 0); -- Player does not have the right skill
INSERT INTO `gossip_menu` VALUES (4144, 5141, 0, 202); -- Player is right level
INSERT INTO `gossip_menu` VALUES (4144, 5140, 0, 391); -- Player too high level
UPDATE `creature_template` SET `gossip_menu_id` = 4144 WHERE `entry` = 4586; -- Adds gossip menu to Graham Van Talen
-- Mukdrak (11025)
INSERT INTO `gossip_menu` VALUES (4142, 5133, 0, 0); -- Player does not have the right skill
INSERT INTO `gossip_menu` VALUES (4142, 5135, 0, 202); -- Player is right level
INSERT INTO `gossip_menu` VALUES (4142, 5134, 0, 391); -- Player too high level
UPDATE `creature_template` SET `gossip_menu_id` = 4142 WHERE `entry` = 11025; -- Adds gossip menu to Mukdrak
-- Thund (2857)
INSERT INTO `gossip_menu` VALUES (4143, 5136, 0, 0); -- Player does not have the right skill
INSERT INTO `gossip_menu` VALUES (4143, 5138, 0, 202); -- Player is right level
INSERT INTO `gossip_menu` VALUES (4143, 5137, 0, 391); -- Player too high level
UPDATE `creature_template` SET `gossip_menu_id` = 4143 WHERE `entry` = 2857; -- Adds gossip menu to Thund
-- Tinkerwiz (3494)
INSERT INTO `gossip_menu` VALUES (4140, 5127, 0, 0); -- Player does not have the right skill
INSERT INTO `gossip_menu` VALUES (4140, 5129, 0, 202); -- Player is right level
INSERT INTO `gossip_menu` VALUES (4140, 5131, 0, 394); -- Player too high level and is Horde
INSERT INTO `gossip_menu` VALUES (4140, 5128, 0, 395); -- Player too high level and is Alliance
UPDATE `creature_template` SET `gossip_menu_id` = 4140 WHERE `entry` = 3494; -- Adds gossip menu to Tinkerwiz
-- Twizwick Sprocketgrind (10993)
INSERT INTO `gossip_menu` VALUES (4141, 5130, 0, 0); -- Player does not have the right skill
INSERT INTO `gossip_menu` VALUES (4141, 5129, 0, 202); -- Player is right level
INSERT INTO `gossip_menu` VALUES (4141, 5131, 0, 394); -- Player too high level and is Horde
INSERT INTO `gossip_menu` VALUES (4141, 5128, 0, 395); -- Player too high level and is Alliance
UPDATE `creature_template` SET `gossip_menu_id` = 4141 WHERE `entry` = 10993; -- Adds gossip menu to Twizwick Sprocketgrind
-- Removes entries in npc_gossip for these trainers if existing
DELETE FROM `npc_gossip` WHERE `npc_guid` IN (SELECT `guid` FROM `creature` WHERE `id` IN (4586, 11025, 2857, 3494, 11993));

-- Expert (teaching Journeyman)
-- Franklin Lloyd (11031)
INSERT INTO `gossip_menu` VALUES (4149, 5162, 0, 0); -- Player does not have the right skill
INSERT INTO `gossip_menu` VALUES (4149, 5165, 0, 202); -- Player too low level
INSERT INTO `gossip_menu` VALUES (4149, 5164, 0, 391); -- Player is right level
INSERT INTO `gossip_menu` VALUES (4149, 5163, 0, 392); -- Player too high level
UPDATE `creature_template` SET `gossip_menu_id` = 4149 WHERE `entry` = 11031; -- Adds gossip menu to Nogg
-- Nogg (3412)
INSERT INTO `gossip_menu` VALUES (4148, 5157, 0, 0); -- Player does not have the right skill
INSERT INTO `gossip_menu` VALUES (4148, 5160, 0, 202); -- Player too low level
INSERT INTO `gossip_menu` VALUES (4148, 5161, 0, 391); -- Player is right level
INSERT INTO `gossip_menu` VALUES (4148, 5158, 0, 392); -- Player too high level
UPDATE `creature_template` SET `gossip_menu_id` = 4148 WHERE `entry` = 3412; -- Adds gossip menu to Nogg
-- Removes entries in npc_gossip for these trainers if existing
DELETE FROM `npc_gossip` WHERE `npc_guid` IN (SELECT `guid` FROM `creature` WHERE `id` IN (11031, 3412));

-- Artisan (teaching Expert)
-- Roxxik (11017)
INSERT INTO `gossip_menu` VALUES (4151, 5172, 0, 0); -- Player does not have the right skill
INSERT INTO `gossip_menu` VALUES (4151, 5175, 0, 202); -- Player too low level
INSERT INTO `gossip_menu` VALUES (4151, 5176, 0, 392); -- Player is right level
INSERT INTO `gossip_menu` VALUES (4151, 5173, 0, 393); -- Player too high level
UPDATE `creature_template` SET `gossip_menu_id` = 4151 WHERE `entry` = 11017; -- Adds gossip menu to Roxxik
-- Removes entries in npc_gossip for these trainers if existing
DELETE FROM `npc_gossip` WHERE `npc_guid` IN (SELECT `guid` FROM `creature` WHERE `id` = 11017);

-- Master (teaching Artisan)
-- Oglethorpe Obnoticus <Master Gnome Engineer> Booty Bay, Stranglethorn Vale
-- Nixx Sprocketspring <Master Goblin Engineer> Gadgetzan, Tanaris
-- Vazario Linkgrease <Master Goblin Engineer> Ratchet, Barrens
-- Buzzek Bracketswing
-- Same as Alliance

UPDATE `conditions` SET `condition_entry` = 383 WHERE `condition_entry` = 1383;
UPDATE `creature_loot_template` SET `condition_id` = 383 WHERE `condition_id` = 1383;
UPDATE `gameobject_loot_template` SET `condition_id` = 383 WHERE `condition_id` = 1383;
UPDATE `skinning_loot_template` SET `condition_id` = 383 WHERE `condition_id` = 1383;
UPDATE `reference_loot_template` SET `condition_id` = 383 WHERE `condition_id` = 1383;
UPDATE `gossip_menu` SET `condition_id` = 383 WHERE `condition_id` = 1383;
UPDATE `gossip_menu_option` SET `condition_id` = 383 WHERE `condition_id` = 1383;
UPDATE `npc_vendor` SET `condition_id` = 383 WHERE `condition_id` = 1383;

UPDATE `conditions` SET `condition_entry` = 384 WHERE `condition_entry` = 1384;
UPDATE `creature_loot_template` SET `condition_id` = 384 WHERE `condition_id` = 1384;
UPDATE `gameobject_loot_template` SET `condition_id` = 384 WHERE `condition_id` = 1384;
UPDATE `skinning_loot_template` SET `condition_id` = 384 WHERE `condition_id` = 1384;
UPDATE `reference_loot_template` SET `condition_id` = 384 WHERE `condition_id` = 1384;
UPDATE `gossip_menu` SET `condition_id` = 384 WHERE `condition_id` = 1384;
UPDATE `gossip_menu_option` SET `condition_id` = 384 WHERE `condition_id` = 1384;
UPDATE `npc_vendor` SET `condition_id` = 384 WHERE `condition_id` = 1384;

UPDATE `conditions` SET `condition_entry` = 385 WHERE `condition_entry` = 1385;
UPDATE `creature_loot_template` SET `condition_id` = 385 WHERE `condition_id` = 1385;
UPDATE `gameobject_loot_template` SET `condition_id` = 385 WHERE `condition_id` = 1385;
UPDATE `skinning_loot_template` SET `condition_id` = 385 WHERE `condition_id` = 1385;
UPDATE `reference_loot_template` SET `condition_id` = 385 WHERE `condition_id` = 1385;
UPDATE `gossip_menu` SET `condition_id` = 385 WHERE `condition_id` = 1385;
UPDATE `gossip_menu_option` SET `condition_id` = 385 WHERE `condition_id` = 1385;
UPDATE `npc_vendor` SET `condition_id` = 385 WHERE `condition_id` = 1385;

UPDATE `conditions` SET `condition_entry` = 386 WHERE `condition_entry` = 1386;
UPDATE `creature_loot_template` SET `condition_id` = 386 WHERE `condition_id` = 1386;
UPDATE `gameobject_loot_template` SET `condition_id` = 386 WHERE `condition_id` = 1386;
UPDATE `skinning_loot_template` SET `condition_id` = 386 WHERE `condition_id` = 1386;
UPDATE `reference_loot_template` SET `condition_id` = 386 WHERE `condition_id` = 1386;
UPDATE `gossip_menu` SET `condition_id` = 386 WHERE `condition_id` = 1386;
UPDATE `gossip_menu_option` SET `condition_id` = 386 WHERE `condition_id` = 1386;
UPDATE `npc_vendor` SET `condition_id` = 386 WHERE `condition_id` = 1386;

UPDATE `conditions` SET `condition_entry` = 387 WHERE `condition_entry` = 1387;
UPDATE `creature_loot_template` SET `condition_id` = 387 WHERE `condition_id` = 1387;
UPDATE `gameobject_loot_template` SET `condition_id` = 387 WHERE `condition_id` = 1387;
UPDATE `skinning_loot_template` SET `condition_id` = 387 WHERE `condition_id` = 1387;
UPDATE `reference_loot_template` SET `condition_id` = 387 WHERE `condition_id` = 1387;
UPDATE `gossip_menu` SET `condition_id` = 387 WHERE `condition_id` = 1387;
UPDATE `gossip_menu_option` SET `condition_id` = 387 WHERE `condition_id` = 1387;
UPDATE `npc_vendor` SET `condition_id` = 387 WHERE `condition_id` = 1387;

UPDATE `conditions` SET `condition_entry` = 388 WHERE `condition_entry` = 1388;
UPDATE `creature_loot_template` SET `condition_id` = 388 WHERE `condition_id` = 1388;
UPDATE `gameobject_loot_template` SET `condition_id` = 388 WHERE `condition_id` = 1388;
UPDATE `skinning_loot_template` SET `condition_id` = 388 WHERE `condition_id` = 1388;
UPDATE `reference_loot_template` SET `condition_id` = 388 WHERE `condition_id` = 1388;
UPDATE `gossip_menu` SET `condition_id` = 388 WHERE `condition_id` = 1388;
UPDATE `gossip_menu_option` SET `condition_id` = 388 WHERE `condition_id` = 1388;
UPDATE `npc_vendor` SET `condition_id` = 388 WHERE `condition_id` = 1388;

UPDATE `conditions` SET `condition_entry` = 389 WHERE `condition_entry` = 1389;
UPDATE `creature_loot_template` SET `condition_id` = 389 WHERE `condition_id` = 1389;
UPDATE `gameobject_loot_template` SET `condition_id` = 389 WHERE `condition_id` = 1389;
UPDATE `skinning_loot_template` SET `condition_id` = 389 WHERE `condition_id` = 1389;
UPDATE `reference_loot_template` SET `condition_id` = 389 WHERE `condition_id` = 1389;
UPDATE `gossip_menu` SET `condition_id` = 389 WHERE `condition_id` = 1389;
UPDATE `gossip_menu_option` SET `condition_id` = 389 WHERE `condition_id` = 1389;
UPDATE `npc_vendor` SET `condition_id` = 389 WHERE `condition_id` = 1389;

UPDATE `conditions` SET `condition_entry` = 390 WHERE `condition_entry` = 1721;
UPDATE `creature_loot_template` SET `condition_id` = 390 WHERE `condition_id` = 1721;
UPDATE `gameobject_loot_template` SET `condition_id` = 390 WHERE `condition_id` = 1721;
UPDATE `skinning_loot_template` SET `condition_id` = 390 WHERE `condition_id` = 1721;
UPDATE `reference_loot_template` SET `condition_id` = 390 WHERE `condition_id` = 1721;
UPDATE `gossip_menu` SET `condition_id` = 390 WHERE `condition_id` = 1721;
UPDATE `gossip_menu_option` SET `condition_id` = 390 WHERE `condition_id` = 1721;
UPDATE `npc_vendor` SET `condition_id` = 390 WHERE `condition_id` = 1721;

UPDATE `conditions` SET `condition_entry` = 391 WHERE `condition_entry` = 1391;
UPDATE `creature_loot_template` SET `condition_id` = 391 WHERE `condition_id` = 1391;
UPDATE `gameobject_loot_template` SET `condition_id` = 391 WHERE `condition_id` = 1391;
UPDATE `skinning_loot_template` SET `condition_id` = 391 WHERE `condition_id` = 1391;
UPDATE `reference_loot_template` SET `condition_id` = 391 WHERE `condition_id` = 1391;
UPDATE `gossip_menu` SET `condition_id` = 391 WHERE `condition_id` = 1391;
UPDATE `gossip_menu_option` SET `condition_id` = 391 WHERE `condition_id` = 1391;
UPDATE `npc_vendor` SET `condition_id` = 391 WHERE `condition_id` = 1391;

UPDATE `conditions` SET `condition_entry` = 722 WHERE `condition_entry` = 1722;
UPDATE `creature_loot_template` SET `condition_id` = 722 WHERE `condition_id` = 1722;
UPDATE `gameobject_loot_template` SET `condition_id` = 722 WHERE `condition_id` = 1722;
UPDATE `skinning_loot_template` SET `condition_id` = 722 WHERE `condition_id` = 1722;
UPDATE `reference_loot_template` SET `condition_id` = 722 WHERE `condition_id` = 1722;
UPDATE `gossip_menu` SET `condition_id` = 722 WHERE `condition_id` = 1722;
UPDATE `gossip_menu_option` SET `condition_id` = 722 WHERE `condition_id` = 1722;
UPDATE `npc_vendor` SET `condition_id` = 722 WHERE `condition_id` = 1722;

UPDATE `conditions` SET `condition_entry` = 723 WHERE `condition_entry` = 1723;
UPDATE `creature_loot_template` SET `condition_id` = 723 WHERE `condition_id` = 1723;
UPDATE `gameobject_loot_template` SET `condition_id` = 723 WHERE `condition_id` = 1723;
UPDATE `skinning_loot_template` SET `condition_id` = 723 WHERE `condition_id` = 1723;
UPDATE `reference_loot_template` SET `condition_id` = 723 WHERE `condition_id` = 1723;
UPDATE `gossip_menu` SET `condition_id` = 723 WHERE `condition_id` = 1723;
UPDATE `gossip_menu_option` SET `condition_id` = 723 WHERE `condition_id` = 1723;
UPDATE `npc_vendor` SET `condition_id` = 723 WHERE `condition_id` = 1723;

UPDATE `conditions` SET `value1` = 383 WHERE `condition_entry` = 387;
UPDATE `conditions` SET `value2` = 386 WHERE `condition_entry` = 387;
UPDATE `conditions` SET `value1` = 383 WHERE `condition_entry` = 388;
UPDATE `conditions` SET `value2` = 385 WHERE `condition_entry` = 388;


-- sd2 fixes and backports

-- SD2-classic revision s2539
-- https://github.com/scriptdev2/scriptdev2/commit/65ec024fc3c5a2baa464b98128d3a7c212ae030e
-- Npc flag is set by script; Fix horse faction; Npc should be mounted when spawned
update creature_template set npcflag=npcflag&~2 where entry=12580;
UPDATE `creature_template` SET `faction_A` = 12, `faction_H` = 12 WHERE `entry` = 12581;

-- SD2-classic revision s2576
-- https://github.com/scriptdev2/scriptdev2/commit/c85fe6696968a2df36f77821c45520e614cb6e89
-- Cthun
UPDATE `creature_template` SET unit_flags=unit_flags|33554432 WHERE `entry` in (15910,15904,15800);


-- SD2-classic revision s2644
-- https://github.com/scriptdev2/scriptdev2/commit/3ef8f906b2124519cbf73def4c4ce728c690943c
-- Total guesswork! (Better movement for UBRS Rookery Event (see http://www.scriptdev2.com/project.php?issueid=1604 )
UPDATE creature_template SET MovementType=2 WHERE entry IN (10264, 10258, 10683);
-- Waypoints for some NPCs
DELETE FROM creature_movement_template WHERE entry IN (10264, 10258, 10683);
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id) VALUES
-- Solakar Flamewreath
(10264, 1, 62.9621, -270.921, 93.4347, 0, 0),
(10264, 2, 74.4821, -275.932, 92.602, 0, 0),
(10264, 3, 80.6596, -289.724, 91.4508, 0, 0),
(10264, 4, 78.1464, -317.642, 91.4405, 1, 1026404),
-- Rookery Guardian
(10258, 1, 62.9621, -270.921, 93.4347, 0, 0),
(10258, 2, 74.4821, -275.932, 92.602, 0, 0),
(10258, 3, 80.6596, -289.724, 91.4508, 0, 0),
(10258, 4, 78.1464, -317.642, 91.4405, 1, 1026404),
-- Rookery Hatcher
(10683, 1, 62.9621, -270.921, 93.4347, 0, 0),
(10683, 2, 74.4821, -275.932, 92.602, 0, 0),
(10683, 3, 80.6596, -289.724, 91.4508, 0, 0),
(10683, 4, 78.1464, -317.642, 91.4405, 1, 1026404);
DELETE FROM dbscripts_on_creature_movement WHERE id=1026404;
INSERT INTO dbscripts_on_creature_movement (id, command, datalong, datalong2, data_flags, comments) VALUES
(1026404, 20, 1, 20, 0x08, 'UBRS-Rookery event: Random movement around current position');

-- Pyramid event for Zul'Farrak - SD2 update z2673
-- https://github.com/scriptdev2/scriptdev2/commit/797d2126992288afa13e9a1b0c392d0ad714ae44

DELETE FROM gossip_menu_option WHERE menu_id IN (940, 941);
INSERT INTO gossip_menu_option (menu_id, id, option_icon, option_text, option_id, npc_option_npcflag, action_script_id, condition_id) VALUES
(940, 0, 0, 'Will you blow up that door now?', 1, 1, 94001, 390),
(941, 0, 0, 'Hey Bly! Bilgewizzle wants his divino-matic rod back!', 1, 1, 0, 384), -- Note: we are not sure what should be the action of this one - maybe similar to the one below
(941, 1, 0, 'That\'s it! I\'m tired of helping you out. It\'s time we settled things on the battlefield!', 1, 1, 94101, 384);


-- SD2-classic revision s2568
-- https://github.com/scriptdev2/scriptdev2/commit/8e51995ef86eed9768d5d09cdf6a3ef0cefb5afd
REPLACE INTO `dbscripts_on_go_template_use` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
(178145, 0, 10, 11920, 30000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
DELETE FROM `dbscripts_on_go_template_use` WHERE `id` in (176581);
REPLACE INTO `dbscripts_on_go_template_use` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
(176581, 0, 10, 11876, 30000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');
DELETE FROM `dbscripts_on_go_template_use` WHERE `id` in (175944);
REPLACE INTO `dbscripts_on_go_template_use` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
(175944, 0, 10, 10882, 30000, 0, 0, 0, 0, 0, 0, 0, -5008.338, -2118.894, 83.657, 0.874, '');

-- SD2-classic revision s2497
-- https://github.com/scriptdev2/scriptdev2/commit/3a6baa472c9c948c96926b85ba810d6ca921c65f
-- Script id: 179985
DELETE FROM dbscripts_on_go_template_use WHERE id=179985;
INSERT INTO dbscripts_on_go_template_use VALUES
(179985,1,10,15041,60000,0,0,2,0,0,0,0,0,0,0,0,'Spider Egg - Summon Spawn of Mar\'li');

-- fix startup error
DELETE FROM `gameobject_template` WHERE `entry` = 181956;


-- gameobject spawns
-- BG buff object pools (Arathi Basin) by Cyberium
-- Arathi bassin
-- -------------
DELETE FROM gameobject WHERE guid IN (93941, 93942, 93943, 93944, 93945, 93946, 93947, 93948,
93949, 93950, 93951, 93952, 93953, 93954, 93955);
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecs, animprogress, state) VALUES
-- Stable
(93941, 179871, 529, 1185.71, 1185.24, -56.36, 2.56, 0, 0, 0.022338351, 0.999750467, 180, 100, 1),
(93942, 179904, 529, 1185.71, 1185.24, -56.36, 2.56, 0, 0, 0.022338351, 0.999750467, 180, 100, 1),
(93943, 179905, 529, 1185.71, 1185.24, -56.36, 2.56, 0, 0, 0.022338351, 0.999750467, 180, 100, 1),
-- Blacksmith
(93944, 179871, 529, 990.75, 1008.18, -42.60, 2.43, 0, 0, 0.021204161, 0.999775166, 180, 100, 1),
(93945, 179904, 529, 990.75, 1008.18, -42.60, 2.43, 0, 0, 0.021204161, 0.999775166, 180, 100, 1),
(93946, 179905, 529, 990.75, 1008.18, -42.60, 2.43, 0, 0, 0.021204161, 0.999775166, 180, 100, 1),
-- Farm
(93947, 179871, 529, 817.66, 843.34, -56.54, 3.01, 0, 0, 0.026264184, 0.999655036, 180, 100, 1),
(93948, 179904, 529, 817.66, 843.34, -56.54, 3.01, 0, 0, 0.026264184, 0.999655036, 180, 100, 1),
(93949, 179905, 529, 817.66, 843.34, -56.54, 3.01, 0, 0, 0.026264184, 0.999655036, 180, 100, 1),
-- Lumber Mill
(93950, 179871, 529, 807.46, 1189.16, 11.92, 5.44, 0, 0, 0.047455126, 0.998873370, 180, 100, 1),
(93951, 179904, 529, 807.46, 1189.16, 11.92, 5.44, 0, 0, 0.047455126, 0.998873370, 180, 100, 1),
(93952, 179905, 529, 807.46, 1189.16, 11.92, 5.44, 0, 0, 0.047455126, 0.998873370, 180, 100, 1),
-- Gold Mine
(93953, 179871, 529, 1146.62, 816.94, -98.49, 6.0, 0, 0, 0.053555973, 0.998564849, 180, 100, 1),
(93954, 179904, 529, 1146.62, 816.94, -98.49, 6.0, 0, 0, 0.053555973, 0.998564849, 180, 100, 1),
(93955, 179905, 529, 1146.62, 816.94, -98.49, 6.0, 0, 0, 0.053555973, 0.998564849, 180, 100, 1);
-- Add pool id
DELETE FROM pool_template WHERE entry IN (15000, 15001, 15002, 15003, 15004);
INSERT INTO pool_template (entry, max_limit, description) VALUES
(15000, 1, "Arathi Basin: Stable power up buff"),
(15001, 1, "Arathi Basin: Blacksmith power up buff"),
(15002, 1, "Arathi Basin: Farm power up buff"),
(15003, 1, "Arathi Basin: Lumber Mill power up buff"),
(15004, 1, "Arathi Basin: Gold Mine power up buff");
DELETE FROM pool_gameobject WHERE guid IN (93941, 93942, 93943, 93944, 93945, 93946, 93947, 93948,
93949, 93950, 93951, 93952, 93953, 93954, 93955);
INSERT INTO pool_gameobject (guid, pool_entry, chance, description) VALUES
-- Add Stable pool
(93941, 15000, 0, "Arathi Basin: Stable: Speed buff"),
(93942, 15000, 0, "Arathi Basin: Stable: Regen buff"),
(93943, 15000, 0, "Arathi Basin: Stable: Berserker buff"),
-- Add Blacksmith pool
(93944, 15001, 0, "Arathi Basin: Blacksmith: Speed buff"),
(93945, 15001, 0, "Arathi Basin: Blacksmith: Regen buff"),
(93946, 15001, 0, "Arathi Basin: Blacksmith: Berserker buff"),
-- Add Farm pool
(93947, 15002, 0, "Arathi Basin: Farm: Speed buff"),
(93948, 15002, 0, "Arathi Basin: Farm: Regen buff"),
(93949, 15002, 0, "Arathi Basin: Farm: Berserker buff"),
-- Add Lumber Mill pool
(93950, 15003, 0, "Arathi Basin: Lumber Mill: Speed buff"),
(93951, 15003, 0, "Arathi Basin: Lumber Mill: Regen buff"),
(93952, 15003, 0, "Arathi Basin: Lumber Mill: Berserker buff"),
-- Add Gold Mine pool
(93953, 15004, 0, "Arathi Basin: Gold Mine: Speed buff"),
(93954, 15004, 0, "Arathi Basin: Gold Mine: Regen buff"),
(93955, 15004, 0, "Arathi Basin: Gold Mine: Berserker buff");


-- ### Ruins of AQ ###
-- Rajaxx army
DELETE FROM creature WHERE guid IN (
 140166, 140167, 140168, 140169, 140170, 140171, 140172, 140173, 140174,
 140175, 140176, 140177, 140178, 140179, 140180, 140181, 140182, 140183,
 140184, 140185, 140186, 140187, 140188, 140189, 140190, 140191, 140192,
 140193, 140194, 140195, 140196, 140197, 140198, 140199, 140200, 140201,
 140202, 140203, 140204, 140205, 140206, 140207, 140208, 140209, 140210,
 140211, 140212, 140213, 140214, 140215, 140216, 90871);
INSERT INTO creature (guid, id, map,modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES
(140166, 15344, 509, 0, 0, -8991.14551, 1553.998, 21.6539383, 2.77507353, 604800, 0, 0, 12576, 0, 0, 0),
(140167, 15344, 509, 0, 0, -9003.747, 1536.15833, 21.4696579, 2.63544726, 604800, 0, 0, 12576, 0, 0, 0),
(140168, 15344, 509, 0, 0, -9012.13, 1608.7738, 24.8693237, 3.14159274, 604800, 0, 0, 12576, 0, 0, 0),
(140169, 15344, 509, 0, 0, -9014.358, 1597.68347, 21.4696732, 3.03687286, 604800, 0, 0, 12576, 0, 0, 0),
(140170, 15344, 509, 0, 0, -9020.146, 1586.73157, 21.4696712, 2.94960642, 604800, 0, 0, 12576, 0, 0, 0),
(140171, 15344, 509, 0, 0, -9022.039, 1612.04553, 22.807291, 3.159046, 604800, 0, 0, 12576, 0, 0, 0),
(140172, 15344, 509, 0, 0, -9022.71, 1505.87793, 21.5596066, 2.40855432, 604800, 0, 0, 12576, 0, 0, 0),
(140173, 15344, 509, 0, 0, -9029.94, 1498.07739, 22.1401443, 2.338741, 604800, 0, 0, 12576, 0, 0, 0),
(140174, 15344, 509, 0, 0, -9031.986, 1592.26257, 21.469677, 2.984513, 604800, 0, 0, 12576, 0, 0, 0),
(140175, 15344, 509, 0, 0, -9038.44, 1491.03735, 23.2295685, 2.268928, 604800, 0, 0, 12576, 0, 0, 0),
(140176, 15344, 509, 0, 0, -9070.706, 1634.37122, 21.481163, 3.49065852, 604800, 0, 0, 12576, 0, 0, 0),
(140177, 15344, 509, 0, 0, -9071.044, 1622.144, 21.4696922, 3.33357882, 604800, 0, 0, 12576, 0, 0, 0),
(140178, 15344, 509, 0, 0, -9071.757, 1611.27734, 21.4721031, 3.17649913, 604800, 0, 0, 12576, 0, 0, 0),
(140179, 15344, 509, 0, 0, -9076.421, 1530.23022, 21.4696655, 2.23402143, 604800, 0, 0, 12576, 0, 0, 0),
(140180, 15344, 509, 0, 0, -9078.797, 1622.79907, 21.46967, 3.36848545, 604800, 0, 0, 12576, 0, 0, 0),
(140181, 15344, 509, 0, 0, -9083.137, 1524.75928, 21.4696636, 2.146755, 604800, 0, 0, 12576, 0, 0, 0),
(140182, 15344, 509, 0, 0, -9091.763, 1519.3667, 21.4696636, 2.05948853, 604800, 0, 0, 12576, 0, 0, 0),
(140183, 15344, 509, 0, 0, -9092.34, 1586.273, 21.4696388, 2.687807, 604800, 0, 0, 12576, 0, 0, 0),
(140184, 15344, 509, 0, 0, -9097.289, 1578.36, 21.4696426, 2.51327419, 604800, 0, 0, 12576, 0, 0, 0),
(140185, 15344, 509, 0, 0, -9102.547, 1569.41711, 21.4757042, 2.32128787, 604800, 0, 0, 12576, 0, 0, 0),
(140186, 15344, 509, 0, 0, -9113.942, 1546.056, 21.46964, 1.95476878, 604800, 0, 0, 12576, 0, 0, 0),
(140187, 15344, 509, 0, 0, -9132.825, 1539.0968, 21.46964, 1.65806282, 604800, 0, 0, 12576, 0, 0, 0),
(140188, 15341, 509, 0, 0, -9129.72949, 1602.50293, 26.5440731, 5.532694, 604800, 0, 0, 416375, 0, 0, 0),
(140189, 15385, 509, 0, 0, -9108.294, 1584.17126, 21.47101, 5.75958633, 604800, 0, 0, 56627, 0, 0, 0),
(140190, 15386, 509, 0, 0, -9085.032, 1622.4032, 21.4696522, 3.36848545, 604800, 0, 0, 56627, 0, 0, 0),
(140191, 15387, 509, 0, 0, -8994.835, 1542.26868, 21.648632, 2.70526028, 604800, 0, 0, 31440, 0, 0, 0),
(140192, 15387, 509, 0, 0, -8998.049, 1560.14709, 22.1308117, 2.80998015, 604800, 0, 0, 31440, 0, 0, 0),
(140193, 15387, 509, 0, 0, -9001.262, 1549.051, 22.0208645, 2.72271371, 604800, 0, 0, 31440, 0, 0, 0),
(140194, 15387, 509, 0, 0, -9010.698, 1542.4668, 21.4696655, 2.65290046, 604800, 0, 0, 31440, 0, 0, 0),
(140195, 15387, 509, 0, 0, -9023.852, 1601.583, 21.4696674, 3.07177949, 604800, 0, 0, 31440, 0, 0, 0),
(140196, 15387, 509, 0, 0, -9030.075, 1512.30933, 21.47057, 2.40855432, 604800, 0, 0, 31440, 0, 0, 0),
(140197, 15387, 509, 0, 0, -9038.825, 1505.31726, 21.5906277, 2.338741, 604800, 0, 0, 31440, 0, 0, 0),
(140198, 15387, 509, 0, 0, -9046.502, 1498.26416, 22.0108013, 2.268928, 604800, 0, 0, 31440, 0, 0, 0),
(140199, 15387, 509, 0, 0, -9066.888, 1521.481, 21.46966, 2.25147462, 604800, 0, 0, 31440, 0, 0, 0),
(140200, 15387, 509, 0, 0, -9074.003, 1515.23511, 21.469656, 2.16420817, 604800, 0, 0, 31440, 0, 0, 0),
(140201, 15387, 509, 0, 0, -9078.066, 1635.03418, 21.4696655, 3.54301834, 604800, 0, 0, 31440, 0, 0, 0),
(140202, 15387, 509, 0, 0, -9080.052, 1612.09338, 21.4696541, 3.19395256, 604800, 0, 0, 31440, 0, 0, 0),
(140203, 15387, 509, 0, 0, -9082.668, 1510.19409, 21.5131187, 2.07694173, 604800, 0, 0, 31440, 0, 0, 0),
(140204, 15387, 509, 0, 0, -9098.183, 1589.87793, 21.4699821, 2.70526028, 604800, 0, 0, 31440, 0, 0, 0),
(140205, 15387, 509, 0, 0, -9102.671, 1581.55652, 21.470974, 2.49582076, 604800, 0, 0, 31440, 0, 0, 0),
(140206, 15387, 509, 0, 0, -9107.887, 1574.311, 21.48627, 2.30383468, 604800, 0, 0, 31440, 0, 0, 0),
(140207, 15387, 509, 0, 0, -9117.37, 1553.28259, 21.469635, 1.93731546, 604800, 0, 0, 31440, 0, 0, 0),
(140208, 15387, 509, 0, 0, -9123.583, 1541.5531, 21.469635, 1.79768908, 604800, 0, 0, 31440, 0, 0, 0),
(140209, 15387, 509, 0, 0, -9125.76, 1549.29321, 21.4696388, 1.78023577, 604800, 0, 0, 31440, 0, 0, 0),
(140210, 15387, 509, 0, 0, -9134.138, 1546.722, 21.46964, 1.6406095, 604800, 0, 0, 31440, 0, 0, 0),
(140211, 15388, 509, 0, 0, -9127.978, 1558.54346, 21.6878548, 1.79768908, 604800, 0, 0, 56627, 0, 0, 0),
(140212, 15389, 509, 0, 0, -9033.166, 1604.65918, 21.4696712, 3.08923268, 604800, 0, 0, 56627, 0, 0, 0),
(140213, 15390, 509, 0, 0, -9087.008, 1530.26331, 21.4696674, 2.146755, 604800, 0, 0, 56627, 0, 0, 0),
(140214, 15391, 509, 0, 0, -9007.403, 1556.87366, 21.6038952, 5.51524, 604800, 0, 0, 56627, 0, 0, 0),
(140215, 15392, 509, 0, 0, -9041.356, 1512.57971, 21.4748135, 2.338741, 604800, 0, 0, 56627, 0, 0, 0),
(140216, 15426, 509, 0, 0, -8680.658, 1585.614, 33.19108, 2.54818058, 120, 0, 0, 4120, 0, 0, 0);

-- Other AQ entrance spawns
DELETE FROM creature WHERE guid IN (
 87512, 86996, 86999, 87000, 87001, 87002, 87004, 86995, 86997,
 86998, 87003, 87517, 87518, 87519, 87520, 87521, 87522, 87523,
 87524, 87525, 87526, 87516, 87513, 87514, 87515, 87006, 87007,
 87013, 87015, 140217, 140218, 140219, 140220, 140221, 140222,
 140223, 140224, 140225, 140226, 140227, 140228, 140229, 140230,
 140231, 140232, 140233, 140234, 140235, 140236, 140237, 140238,
 140239, 140240, 140241, 140242, 140243, 140244, 140245, 140246,
 140247, 140248, 140249, 140250, 140251, 140252, 140253, 140254,
 140255, 140256, 140257, 140258, 140259, 140260, 140261, 140262,
 140263, 140264, 140265, 140266, 140267, 140268, 140269, 140270,
 140271, 140272, 140273, 140274, 140275, 140276, 140277, 140278,
 140279, 140280, 140281, 140282, 140283, 140284, 140285);
INSERT INTO creature (guid, id, map, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecs, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) VALUES
(140217, 15168, 509, 0, 0, -8532.814, 1467.02734, 31.9923, 6.23082542, 687, 0, 0, 5228, 0, 0, 0),
(140218, 15168, 509, 0, 0, -8566.46, 1399.41907, 31.99033, 3.21140575, 687, 0, 0, 5228, 0, 0, 0),
(140219, 15168, 509, 0, 0, -8600.136, 1466.58667, 31.9903336, 2.18166161, 687, 0, 0, 5228, 0, 0, 0),
(140220, 15168, 509, 0, 0, -8600.325, 1600.61743, 31.99035, 2.024582, 687, 0, 0, 5228, 0, 0, 0),
(140221, 15168, 509, 0, 0, -8665.976, 1566.63147, 31.99035, 2.39110112, 687, 0, 0, 5228, 0, 0, 0),
(140222, 15168, 509, 0, 0, -8666.028, 1432.58862, 32.650856, 2.00712872, 687, 0, 0, 5228, 0, 0, 0),
(140223, 15168, 509, 0, 0, -8666.481, 1667.62451, 21.50361, 6.23082542, 687, 0, 0, 5228, 0, 0, 0),
(140224, 15168, 509, 0, 0, -8666.835, 1499.21179, 32.7247353, 5.253441, 687, 0, 0, 5228, 0, 0, 0),
(140225, 15168, 509, 0, 0, -8733.768, 1600.12366, 21.4697151, 3.24631238, 687, 0, 0, 5228, 0, 0, 0),
(140226, 15168, 509, 0, 0, -8848.906, 1845.95837, 21.4696789, 2.05948853, 687, 0, 0, 5228, 0, 0, 0),
(140227, 15168, 509, 0, 0, -8917.903, 1547.61389, 21.46967, 0.994837642, 687, 0, 0, 5228, 0, 0, 0),
(140228, 15168, 509, 0, 0, -9000.707, 1700.10071, 21.572155, 4.43313646, 687, 0, 0, 5228, 0, 0, 0),
(140229, 15168, 509, 0, 0, -9066.019, 1733.48792, 21.5308647, 3.24631238, 687, 0, 0, 5228, 0, 0, 0),
(140230, 15320, 509, 0, 0, -9193.527, 1459.77893, 21.5113316, 4.20948029, 3520, 0, 0, 31440, 0, 0, 0),
(140231, 15320, 509, 0, 0, -9224.242, 1384.02368, 21.4696732, 3.19395256, 3520, 0, 0, 31440, 0, 0, 0),
(140232, 15323, 509, 0, 0, -9187.016, 1463.76526, 21.46968, 1.18682384, 3520, 0, 0, 15720, 0, 0, 0),
(140233, 15323, 509, 0, 0, -9189.154, 1452.47681, 21.5291882, 2.05948853, 3520, 0, 0, 15720, 0, 0, 0),
(140234, 15323, 509, 0, 0, -9227.635, 1391.40747, 21.4067383, 4.16572, 3520, 0, 0, 15720, 0, 0, 0),
(140235, 15324, 509, 0, 0, -8517.444, 1505.66089, 33.3647461, 0.837758064, 450, 0, 0, 50304, 0, 0, 0),
(140236, 15324, 509, 0, 0, -8531.85449, 1515.68921, 33.2643661, 0.7679449, 450, 0, 0, 50304, 0, 0, 0),
(140237, 15324, 509, 0, 0, -8693.788, 1565.82275, 31.9903431, 5.358161, 450, 0, 0, 50304, 0, 0, 0),
(140238, 15324, 509, 0, 0, -8706.14551, 1552.28467, 31.9903431, 5.41052055, 450, 0, 0, 50304, 0, 0, 0),
(140239, 15324, 509, 0, 0, -9053.818, 1664.35608, 22.9385014, 3.996804, 450, 0, 0, 50304, 0, 0, 0),
(140240, 15324, 509, 0, 0, -9067.317, 1673.46362, 23.0714951, 4.310963, 450, 0, 0, 50304, 0, 0, 0),
(140241, 15324, 509, 0, 0, -9148.94, 1510.31958, 21.9923229, 0.942477763, 450, 0, 0, 50304, 0, 0, 0),
(140242, 15324, 509, 0, 0, -9162.49, 1518.79785, 22.7808952, 0.2268928, 450, 0, 0, 50304, 0, 0, 0),
(140243, 15325, 509, 0, 0, -8542.542, 1478.01135, 31.99035, 4.066617, 3520, 0, 0, 25152, 0, 0, 0),
(140244, 15325, 509, 0, 0, -8545.161, 1437.03333, 31.9903412, 4.485496, 3520, 0, 0, 25152, 0, 0, 0),
(140245, 15325, 509, 0, 0, -8547.503, 1476.40784, 31.99035, 1.76278257, 3520, 0, 0, 25152, 0, 0, 0),
(140246, 15325, 509, 0, 0, -8551.956, 1439.40491, 31.9903412, 0.436332315, 3520, 0, 0, 25152, 0, 0, 0),
(140247, 15325, 509, 0, 0, -8582.967, 1599.10559, 32.03201, 4.683506, 3520, 0, 0, 25152, 0, 0, 0),
(140248, 15325, 509, 0, 0, -8592.638, 1388.10535, 32.4094276, 1.5279367, 3520, 0, 0, 25152, 0, 0, 0),
(140249, 15325, 509, 0, 0, -8592.861, 1599.39282, 32.03201, 4.68348837, 3520, 0, 0, 25152, 0, 0, 0),
(140250, 15325, 509, 0, 0, -8602.438, 1388.502, 32.0320053, 1.54599476, 3520, 0, 0, 25152, 0, 0, 0),
(140251, 15325, 509, 0, 0, -8616.94, 1514.72449, 32.1833763, 0.5061455, 3520, 0, 0, 25152, 0, 0, 0),
(140252, 15325, 509, 0, 0, -8619.925, 1517.49768, 32.1942825, 4.276057, 3520, 0, 0, 25152, 0, 0, 0),
(140253, 15325, 509, 0, 0, -8652.172, 1472.902, 32.00608, 0.7066829, 3520, 0, 0, 25152, 0, 0, 0),
(140254, 15325, 509, 0, 0, -8665.912, 1446.73755, 32.0319366, 0.976359665, 3520, 0, 0, 25152, 0, 0, 0),
(140255, 15325, 509, 0, 0, -8686.131, 1631.23279, 21.4589176, 0.773305, 3520, 0, 0, 25152, 0, 0, 0),
(140256, 15325, 509, 0, 0, -8718.207, 1592.03784, 21.5113239, 1.21381986, 3520, 0, 0, 25152, 0, 0, 0),
(140257, 15325, 509, 0, 0, -8746.42, 1583.2489, 21.5113163, 1.26603, 3520, 0, 0, 25152, 0, 0, 0),
(140258, 15325, 509, 0, 0, -8764.292, 1584.62585, 21.93258, 5.240745, 3520, 0, 0, 25152, 0, 0, 0),
(140259, 15325, 509, 0, 0, -8767.65, 1610.10815, 21.6571617, 1.43209863, 3520, 0, 0, 25152, 0, 0, 0),
(140260, 15325, 509, 0, 0, -8773.97, 1616.39319, 21.4557762, 1.98607814, 3520, 0, 0, 25152, 0, 0, 0),
(140261, 15325, 509, 0, 0, -8803.79, 1659.90991, 21.43074, 5.53989029, 3520, 0, 0, 25152, 0, 0, 0),
(140262, 15325, 509, 0, 0, -8809.878, 1652.23083, 20.8364429, 5.54377127, 3520, 0, 0, 25152, 0, 0, 0),
(140263, 15327, 509, 0, 0, -8544.797, 1474.65723, 31.9903469, 1.51843643, 3520, 0, 0, 50304, 0, 0, 0),
(140264, 15327, 509, 0, 0, -8549.29, 1437.00586, 31.9903412, 3.33357882, 3520, 0, 0, 50304, 0, 0, 0),
(140265, 15327, 509, 0, 0, -8587.77051, 1604.1969, 31.9538364, 1.54177248, 3520, 0, 0, 50304, 0, 0, 0),
(140266, 15327, 509, 0, 0, -8597.936, 1369.12415, 32.0320053, 0.568619967, 3520, 0, 0, 50304, 0, 0, 0),
(140267, 15327, 509, 0, 0, -8619.192, 1514.308, 32.13796, 1.71042264, 3520, 0, 0, 50304, 0, 0, 0),
(140268, 15327, 509, 0, 0, -8667.241, 1453.61023, 32.0313339, 0.97637707, 3520, 0, 0, 50304, 0, 0, 0),
(140269, 15327, 509, 0, 0, -8704.984, 1614.31421, 21.52147, 0.449097872, 3520, 0, 0, 50304, 0, 0, 0),
(140270, 15327, 509, 0, 0, -8767.041, 1578.56738, 24.7868786, 5.62535858, 3520, 0, 0, 50304, 0, 0, 0),
(140271, 15327, 509, 0, 0, -8789.378, 1598.04419, 21.4997864, 0.05953437, 3520, 0, 0, 50304, 0, 0, 0),
(140272, 15327, 509, 0, 0, -8790.466, 1615.46118, 21.4557762, 4.862016, 3520, 0, 0, 50304, 0, 0, 0),
(140273, 15338, 509, 0, 0, -8790.353, 1982.14624, 21.50979, 1.51484191, 4224, 0, 0, 50300, 12430, 0, 0),
(140274, 15338, 509, 0, 0, -8857.879, 1833.7478, 21.5113354, 0.935567, 4224, 0, 0, 50300, 12430, 0, 0),
(140275, 15338, 509, 0, 0, -8861.802, 2021.67542, 21.7936668, 3.10613513, 4224, 0, 0, 50300, 12430, 0, 0),
(140276, 15338, 509, 0, 0, -8920.27, 1911.372, 21.7708836, 2.567447, 4224, 0, 0, 50300, 12430, 0, 0),
(140277, 15338, 509, 0, 0, -9003.377, 1700.74548, 21.7339611, 5.495585, 4224, 0, 0, 50300, 12430, 0, 0),
(140278, 15338, 509, 0, 0, -9040.843, 1707.05066, 21.5026283, 5.58163357, 4224, 0, 0, 50300, 12430, 0, 0),
(140279, 15338, 509, 0, 0, -9044.094, 1839.80176, 21.51129, 4.052498, 4224, 0, 0, 50300, 12430, 0, 0),
(140280, 15343, 509, 0, 0, -8600.617, 1483.54907, 32.8614044, 3.00196624, 3520, 0, 0, 25152, 0, 0, 0),
(140281, 15343, 509, 0, 0, -8612.686, 1446.0426, 31.9903412, 3.01941967, 3520, 0, 0, 25152, 0, 0, 0),
(140282, 15343, 509, 0, 0, -8620.62, 1484.90356, 31.9008865, 6.05629253, 3520, 0, 0, 25152, 0, 0, 0),
(140283, 15343, 509, 0, 0, -8622.461, 1385.46619, 32.0320053, 5.954897, 3520, 0, 0, 25152, 0, 0, 0),
(140284, 15343, 509, 0, 0, -8622.624, 1437.4552, 33.1570053, 0.041267205, 3520, 0, 0, 25152, 0, 0, 0),
(140285, 15343, 509, 0, 0, -8652.897, 1459.57263, 32.0319366, 5.51511765, 3520, 0, 0, 25152, 0, 0, 0);


DELETE FROM gossip_menu WHERE entry = 20024 AND text_id = 2013;
UPDATE gossip_menu_option SET option_text = "I have paid your price, Gloom'rel. Now teach me your secrets!" WHERE menu_id = 1945 AND id = 1; 

-- Kolkar Pack Runner falling under the map -- thx Axel
UPDATE creature SET position_X = -916.169, position_y = -2215.29, position_z = 93.7780 WHERE guid = 20567;
-- Kolkar Packhound moved for creature_linking -- thx Axel
UPDATE creature SET position_X = -914.714, position_y = -2213.8, position_z = 93.7742 WHERE guid = 20859;
-- Zevra Runner - falling under the map -- thx Axel
UPDATE creature SET position_x = -930.640, position_y = -2202.52, position_z = 91.9847, orientation = 1.314, spawndist = 10, MovementType = 1 WHERE guid = 17450;
UPDATE creature SET position_x = -996.647, position_y = -2236.51, position_z = 92.8457, orientation = 2.009, spawndist = 10, MovementType = 1 WHERE guid = 18552;
-- Kolkar Bloodcharger linked to Hezrul Bloodmark -- thx Axel
DELETE FROM creature_linking WHERE guid IN (13991, 13992);
INSERT INTO creature_linking (guid, master_guid, flag) VALUES
(13991, 13990, 515), -- guards
(13992, 13990, 515); -- guards

-- Pusillin (Dire Maul) - scripted

-- gossip
DELETE FROM gossip_menu WHERE entry = 5709;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(5709, 6877, 0, 389),
(5709, 6878, 0, 720),
(5709, 6879, 0, 390),
(5709, 6880, 0, 722),
(5709, 6881, 0, 723);
DELETE FROM gossip_menu_option WHERE menu_id = 5709;
INSERT INTO gossip_menu_option (menu_id, id, option_text, option_id, npc_option_npcflag, action_menu_id, action_script_id, condition_id) VALUES
(5709, 0, 'Game? Are you crazy?', 1, 1, -1, 570901, 389),
(5709, 1, 'Why you little...', 1, 1, -1, 570902, 720),
(5709, 2, 'Mark my words, I will catch you, imp. And when I do!', 1, 1, -1, 570903, 390),
(5709, 3, 'DIE!', 1, 1, -1, 570904, 722),
(5709, 4, 'Prepare to meet your maker.', 1, 1, -1, 570905, 723);
DELETE FROM conditions WHERE condition_entry IN (720, 722, 723);
INSERT INTO conditions (condition_entry, type, value1, value2) VALUES
(720, 33, 3, 0), -- on wp 3
(722, 33, 22, 0), -- on wp 22
(723, 33, 28, 0); -- on wp 28

-- ## -- Random updates -- ## --
-- Defias Messenger (Westfall) - update (rubish removed: after new script system was created)
UPDATE dbscripts_on_creature_movement SET datalong = 1, datalong2 = 0 WHERE id = 55001 AND delay = 5;
UPDATE dbscripts_on_creature_movement SET datalong = 0, datalong2 = 0 WHERE id = 55002;



-- Edrick Killian -- Undercity
UPDATE creature SET MovementType = 2, spawndist = 0 WHERE guid = 38430;
DELETE FROM creature_movement WHERE id = 38430;
UPDATE creature_template SET MovementType = 2 WHERE entry = 5670; -- now move him to template (unique npc)
DELETE FROM creature_movement_template WHERE entry = 5670;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES
(5670,1,1596.405029,363.119293,-62.177650,0,0,0,0,0,0,0,0,0,0,1.277002,0,0),
(5670,2,1600.587769,371.134369,-62.177650,0,0,0,0,0,0,0,0,0,0,0.804196,0,0),
(5670,3,1604.573242,375.022400,-62.177650,0,0,0,0,0,0,0,0,0,0,0.384794,0,0),
(5670,4,1612.855103,375.448364,-62.177650,0,0,0,0,0,0,0,0,0,0,6.163754,0,0),
(5670,5,1629.419556,373.422943,-61.619919,0,0,0,0,0,0,0,0,0,0,6.103280,0,0),
(5670,6,1636.503540,371.630280,-62.031597,0,0,0,0,0,0,0,0,0,0,5.950131,0,0),
(5670,7,1648.593140,366.277405,-62.147816,0,0,0,0,0,0,0,0,0,0,5.690954,0,0),
(5670,8,1650.512939,364.817749,-60.762695,0,0,0,0,0,0,0,0,0,0,5.632050,0,0),
(5670,9,1658.693970,356.650909,-60.746399,0,0,0,0,0,0,0,0,0,0,5.163956,0,0),
(5670,10,1660.307495,351.520935,-60.725143,0,0,0,0,0,0,0,0,0,0,4.732781,0,0),
(5670,11,1659.802246,344.907684,-62.171364,0,0,0,0,0,0,0,0,0,0,4.813679,0,0),
(5670,12,1660.424805,337.392883,-62.172363,0,0,0,0,0,0,0,0,0,0,5.537809,0,0),
(5670,13,1686.193359,312.154358,-62.158852,0,0,0,0,0,0,0,0,0,0,5.632049,0,0),
(5670,14,1693.320801,305.167542,-62.161331,0,0,0,0,0,0,0,0,0,0,5.794629,0,0),
(5670,15,1700.086304,302.831299,-62.170135,0,0,0,0,0,0,0,0,0,0,0.157036,0,0),
(5670,16,1714.190552,304.062317,-61.487946,0,0,0,0,0,0,0,0,0,0,6.012219,0,0),
(5670,17,1720.737305,299.714569,-61.492283,0,0,0,0,0,0,0,0,0,0,5.507210,0,0),
(5670,18,1722.402466,297.283234,-62.177639,0,0,0,0,0,0,0,0,0,0,5.114514,0,0),
(5670,19,1728.375977,279.715546,-62.177864,0,0,0,0,0,0,0,0,0,0,5.010843,0,0),
(5670,20,1729.156250,274.653625,-61.619877,0,0,0,0,0,0,0,0,0,0,4.771299,0,0),
(5670,21,1729.829712,270.673431,-62.055553,0,0,0,0,0,0,0,0,0,0,4.896961,0,0),
(5670,22,1733.395386,254.987732,-62.177433,0,0,0,0,0,0,0,0,0,0,4.790934,0,0),
(5670,23,1731.589600,247.396042,-62.177433,0,0,0,0,0,0,0,0,0,0,4.102143,0,0),
(5670,24,1722.094116,241.103333,-62.177433,0,0,0,0,0,0,0,0,0,0,3.269622,0,0),
(5670,25,1708.783691,237.127625,-62.177433,0,0,0,0,0,0,0,0,0,0,3.199721,0,0),
(5670,26,1667.436035,238.903625,-62.177433,0,0,0,0,0,0,0,0,0,0,2.791315,0,0),
(5670,27,1661.928345,245.750763,-62.177433,0,0,0,0,0,0,0,0,0,0,1.745308,0,0),
(5670,28,1659.920166,263.653625,-62.177433,0,0,0,0,0,0,0,0,0,0,1.928306,0,0),
(5670,29,1652.952759,278.418701,-62.177433,0,0,0,0,0,0,0,0,0,0,2.262100,0,0),
(5670,30,1645.442017,287.234406,-62.181824,0,0,0,0,0,0,0,0,0,0,2.478869,0,0),
(5670,31,1632.756470,298.534302,-62.178776,0,0,0,0,0,0,0,0,0,0,2.689356,0,0),
(5670,32,1621.633545,304.092194,-62.178776,0,0,0,0,0,0,0,0,0,0,3.026292,0,0),
(5670,33,1602.038208,308.263031,-62.178776,0,0,0,0,0,0,0,0,0,0,2.555839,0,0),
(5670,34,1597.119507,314.250580,-62.178776,0,0,0,0,0,0,0,0,0,0,1.932232,0,0),
(5670,35,1595.592285,321.994965,-62.178776,0,0,0,0,0,0,0,0,0,0,1.713891,0,0),
(5670,36,1596.298096,340.950775,-62.178776,0,0,0,0,0,0,0,0,0,0,1.556811,0,0);
DELETE FROM creature_linking_template WHERE entry = 5668; -- Mattie Alred linked to Edrick Killian
INSERT INTO creature_linking_template (entry, map, master_entry, flag, search_range) VALUES
(5668, 0, 5670, 518, 20);
-- Davitt Hickson -- Undercity
UPDATE creature SET MovementType = 2,spawndist = 0 WHERE guid = 41830;
DELETE FROM creature_movement WHERE id = 41830;
UPDATE creature_template SET MovementType = 2 WHERE entry = 5706; -- now move him to template (unique npc)
DELETE FROM creature_movement_template WHERE entry =5706;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES
(5706,1,1596.213379,161.705170,-62.177460,0,0,0,0,0,0,0,0,0,0,1.412201,0,0),
(5706,2,1599.041992,168.373367,-62.177460,0,0,0,0,0,0,0,0,0,0,0.969237,0,0),
(5706,3,1624.806885,177.136841,-62.177460,0,0,0,0,0,0,0,0,0,0,0.604677,0,0),
(5706,4,1635.193481,183.345413,-62.177460,0,0,0,0,0,0,0,0,0,0,0.753903,0,0),
(5706,5,1644.250000,190.512405,-62.181984,0,0,0,0,0,0,0,0,0,0,0.954179,0,0),
(5706,6,1653.079468,198.578018,-62.178810,0,0,0,0,0,0,0,0,0,0,1.236138,0,0),
(5706,7,1658.437866,208.939301,-62.178810,0,0,0,0,0,0,0,0,0,0,1.235352,0,0),
(5706,8,1664.887939,231.188461,-62.178810,0,0,0,0,0,0,0,0,0,0,1.006015,0,0),
(5706,9,1669.192627,236.103745,-62.178810,0,0,0,0,0,0,0,0,0,0,0.369843,0,0),
(5706,10,1683.702148,238.710999,-62.178810,0,0,0,0,0,0,0,0,0,0,6.264256,0,0),
(5706,11,1702.693726,239.171371,-62.178810,0,0,0,0,0,0,0,0,0,0,0.021911,0,0),
(5706,12,1721.727905,238.299728,-62.178810,0,0,0,0,0,0,0,0,0,0,6.009789,0,0),
(5706,13,1728.945801,232.596146,-62.178810,0,0,0,0,0,0,0,0,0,0,5.211829,0,0),
(5706,14,1729.274780,211.525177,-62.178810,0,0,0,0,0,0,0,0,0,0,4.450782,0,0),
(5706,15,1727.064209,203.416824,-61.619919,0,0,0,0,0,0,0,0,0,0,4.311769,0,0),
(5706,16,1720.510010,188.163895,-62.145714,0,0,0,0,0,0,0,0,0,0,4.150070,0,0),
(5706,17,1719.229736,185.943527,-60.760353,0,0,0,0,0,0,0,0,0,0,4.114728,0,0),
(5706,18,1701.347656,159.810822,-60.782578,0,0,0,0,0,0,0,0,0,0,3.857120,0,0),
(5706,19,1671.785645,130.367386,-60.390602,0,0,0,0,0,0,0,0,0,0,3.796644,0,0),
(5706,20,1669.355957,128.857864,-61.481884,0,0,0,0,0,0,0,0,0,0,3.701612,0,0),
(5706,21,1646.949951,113.663521,-62.183788,0,0,0,0,0,0,0,0,0,0,3.546888,0,0),
(5706,22,1630.369995,108.162102,-61.620037,0,0,0,0,0,0,0,0,0,0,3.205240,0,0),
(5706,23,1616.766479,106.218842,-62.177586,0,0,0,0,0,0,0,0,0,0,3.202884,0,0),
(5706,24,1605.792603,106.219116,-62.177586,0,0,0,0,0,0,0,0,0,0,2.770129,0,0),
(5706,25,1599.237915,109.457069,-62.177586,0,0,0,0,0,0,0,0,0,0,2.270616,0,0),
(5706,26,1595.918213,120.261322,-62.177586,0,0,0,0,0,0,0,0,0,0,1.636014,0,0),
(5706,27,1595.887329,130.826263,-62.177586,0,0,0,0,0,0,0,0,0,0,1.608525,0,0);
DELETE FROM creature_linking_template WHERE entry IN (5707, 5701); -- Reginald Grimsford and Selina Pickman linked to Davitt Hickson
INSERT INTO creature_linking_template (entry, map, master_entry, flag, search_range) VALUES
(5707, 0, 5706, 518, 20),
(5701, 0, 5706, 518, 20);

-- Let Gahz'rilla walk out of his basin)
UPDATE creature_template SET MovementType = 2 WHERE entry = 7273;
DELETE FROM creature_movement_template WHERE entry= 7273;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, waittime, script_id) VALUES
(7273, 1, 1703.787354, 1225.994019, 8.876802, 1000, 7273);
DELETE FROM dbscripts_on_creature_movement WHERE id = 7273;
INSERT INTO dbscripts_on_creature_movement (id, command, datalong, datalong2, data_flags, comments) VALUES
(7273, 20, 1, 15, 8, 'Let Gahzrilla move random');

-- Add some comments for dbscripts_on_event
UPDATE dbscripts_on_event SET comments='quest 656' WHERE id = 420 AND comments = '';
UPDATE dbscripts_on_event SET comments='quest 754' WHERE id = 466 AND comments = '';
UPDATE dbscripts_on_event SET comments='quest 758' WHERE id = 467 AND comments = '';
UPDATE dbscripts_on_event SET comments='quest 760' WHERE id = 468 AND comments = '';
UPDATE dbscripts_on_event SET comments='quest 1689' WHERE id = 1131 AND comments = '';
UPDATE dbscripts_on_event SET comments='quest 1739' WHERE id = 1134 AND comments = '';
UPDATE dbscripts_on_event SET comments='quest 1795' WHERE id = 1449 AND comments = '';
UPDATE dbscripts_on_event SET comments='quest 1471' WHERE id = 1785 AND comments = '';
UPDATE dbscripts_on_event SET comments='quest 1474' WHERE id = 1786 AND comments = '';
UPDATE dbscripts_on_event SET comments='quest 1504' WHERE id = 1787 AND comments = '';
UPDATE dbscripts_on_event SET comments='quest 1513' WHERE id = 1788 AND comments = '';
UPDATE dbscripts_on_event SET comments='quest 1535' WHERE id = 2048 AND comments = '';
UPDATE dbscripts_on_event SET comments='quest 2520' WHERE id = 2313 AND comments = '';
UPDATE dbscripts_on_event SET comments='quest 2937' WHERE id = 2648 AND comments = '';
UPDATE dbscripts_on_event SET comments='quest 881' WHERE id = 2980 AND comments = '';
UPDATE dbscripts_on_event SET comments='quest 4507' WHERE id = 4338 AND comments = '';
UPDATE dbscripts_on_event SET comments='quest 6127' WHERE id = 5246 AND comments = '';
UPDATE dbscripts_on_event SET comments='quest 6001' WHERE id = 5991 AND comments = '';
UPDATE dbscripts_on_event SET comments='quest 6002' WHERE id = 6028 AND comments = '';
UPDATE dbscripts_on_event SET comments='quest 6122' WHERE id = 6138 AND comments = '';
UPDATE dbscripts_on_event SET comments='quest 6621' WHERE id = 6721 AND comments = '';
UPDATE dbscripts_on_event SET comments='quest 7603' WHERE id = 8328 AND comments = '';
UPDATE dbscripts_on_event SET comments='quest 8258' WHERE id = 8436 AND comments = '';
UPDATE dbscripts_on_event SET comments='quest 7629' WHERE id = 8438 AND comments = '';
UPDATE dbscripts_on_event SET comments='quest 3528' WHERE id = 8502 AND comments = '';
UPDATE dbscripts_on_event SET comments='quest 8315' WHERE id = 9208 AND comments = '';
UPDATE dbscripts_on_event SET comments='quest 8729' WHERE id = 9542 AND comments = '';
UPDATE dbscripts_on_event SET comments='quest 8481' WHERE id = 9571 AND comments = '';
UPDATE dbscripts_on_event SET comments='quest 9257' WHERE id = 10015 AND comments = '';
UPDATE dbscripts_on_event SET comments='quest 9370' WHERE id = 10346 AND comments = '';
UPDATE dbscripts_on_event SET comments='quest 9427' WHERE id = 10362 AND comments = '';
UPDATE dbscripts_on_event SET comments='quest 9457' WHERE id = 10554 AND comments = '';
UPDATE dbscripts_on_event SET comments='quest 9619' WHERE id = 10608 AND comments = '';
UPDATE dbscripts_on_event SET comments='quest 9545' WHERE id = 10745 AND comments = '';
UPDATE dbscripts_on_event SET comments='quest 9737' WHERE id = 11206 AND comments = '';
UPDATE dbscripts_on_event SET comments='quest 9847' WHERE id = 11413 AND comments = '';
UPDATE dbscripts_on_event SET comments='quest 9816' WHERE id = 11424 AND comments = '';
UPDATE dbscripts_on_event SET comments='quest 9927' WHERE id = 11669 AND comments = '';
UPDATE dbscripts_on_event SET comments='quest 9931' WHERE id = 11674 AND comments = '';
UPDATE dbscripts_on_event SET comments='quest 9932' WHERE id = 11675 AND comments = '';


-- DireMaul Tribute Run loot
DELETE FROM `conditions` WHERE `condition_entry` IN (733, 734, 735, 736, 737, 738, 739);
INSERT INTO `conditions` (`condition_entry`, `type`, `value1`, `value2`)
VALUES
(733, 18, 0, 0),
(734, 18, 1, 0),
(735, 18, 2, 0),
(736, 18, 3, 0),
(737, 18, 4, 0),
(738, -2, 735, 736),
(739, -2, 738, 734);
DELETE FROM gameobject_loot_template WHERE entry = 16577;
INSERT INTO gameobject_loot_template (entry, item, ChanceOrQuestChance, groupid, mincountOrRef, maxcount, condition_id) VALUES
-- Always lootable
(16577, 8766, 100, 0, 15, 20, 0), -- Morning Glory Dew, 1, 55
(16577, 8952, 100, 0, 15, 20, 0), -- Roasted Quail, 1, 55
(16577, 13446, 0, 1, 2, 5, 0), -- Major Healing Potion, 1, 55
(16577, 13444, 0, 1, 2, 5, 0), -- Major Mana Potion, 1, 59
-- 1 boss alive, additional
(16577, 1200701, 100, 1, -12007, 1, 739), -- give in mode 1, 2 or 3
-- 2 bosses alive, additional
(16577, 1200702, 100, 2, -12007, 1, 738), -- give in mode 2 or 3
-- 3 bosses alive, additional
(16577, 1200703, 100, 3, -12007, 1, 736), -- give only in mode 3
-- 4 bosses alive give full loot
(16577, 1200704, 100, 0, -12007, 1, 737); -- give only in mode 4

DELETE FROM reference_loot_template WHERE entry = 12007;
INSERT INTO reference_loot_template (entry, item, ChanceOrQuestChance, groupid, mincountOrRef, maxcount, condition_id) VALUES
-- 1 boss alive, additional
(12007, 18475, 0, 1, 1, 1, 0), -- Oddly Magical Belt, 2, 60
(12007, 18476, 0, 1, 1, 1, 0), -- Mud Stained Boots, 2, 60
(12007, 18477, 0, 1, 1, 1, 0), -- Shaggy Leggings, 2, 60
(12007, 18478, 0, 1, 1, 1, 0), -- Hyena Hide Jerkin, 2, 60
(12007, 18479, 0, 1, 1, 1, 0), -- Carrion Scorpid Helm, 2, 60
(12007, 18480, 0, 1, 1, 1, 0), -- Scarab Plate Helm, 2, 60
(12007, 18481, 0, 1, 1, 1, 0), -- Skullcracking Mace, 2, 60
(12007, 18482, 0, 1, 1, 1, 0), -- Ogre Toothpick Shooter, 2, 60
-- 2 bosses alive, additional
(12007, 18500, 0, 2, 1, 1, 0), -- Tarnished Elven Ring, 3, 61
(12007, 18528, 0, 2, 1, 1, 0), -- Cyclone Spaulders, 3, 61
(12007, 18529, 0, 2, 1, 1, 0), -- Elemental Plate Girdle, 3, 61
-- 3 bosses alive, additional
(12007, 18499, 0, 3, 1, 1, 0), -- Barrier Shield, 3, 62
(12007, 18530, 0, 3, 1, 1, 0), -- Ogre Forged Hauberk, 3, 62
(12007, 18531, 0, 3, 1, 1, 0), -- Unyielding Maul, 3, 62
(12007, 18532, 0, 3, 1, 1, 0), -- Mindsurge Robe, 3, 62
-- 4 bosses alive, additional
(12007, 18655, 0, 4, 1, 1, 0), -- Schematic: Major Recombobulator, 2, 55
(12007, 18495, 0, 4, 1, 1, 0), -- Redoubt Cloak, 3, 63
(12007, 18533, 0, 4, 1, 1, 0), -- Gordok Bracers of Power, 3, 63
(12007, 18534, 0, 4, 1, 1, 0), -- Rod of the Ogre Magi, 3, 63
(12007, 18537, 0, 4, 1, 1, 0), -- Counterattack Lodestone, 3, 63
(12007, 18538, 0, 4, 1, 1, 0); -- Treant's Bane 4 63

-- quest 5581
DELETE FROM dbscripts_on_go_template_use WHERE id = 177398;
INSERT INTO dbscripts_on_go_template_use (id, delay, command, datalong, datalong2, comments) VALUES
(177398, 1, 10, 11937, 60000, 'Demon Portal - Summon Demon Portal Guardian');


-- npc_sayge
-- UPDATE creature_template SET ScriptName='' WHERE entry=14822;
DELETE FROM conditions WHERE condition_entry IN (855, 856, 857, 858, 859, 860, 861, 862, 863, 864, 865, 866, 867, 868, 869, 870);
INSERT INTO conditions (condition_entry, type, value1, value2) VALUES
(855, 1, 23768, 0),
(856, 1, 23769, 0),
(857, 1, 23767, 0),
(858, 1, 23738, 0),
(859, 1, 23766, 0),
(860, 1, 23737, 0),
(861, 1, 23736, 0),
(862, 1, 23735, 0),
(863, -2, 855, 856),
(864, -2, 857, 858),
(865, -2, 859, 860),
(866, -2, 861, 862),
(867, -2, 863, 864),
(868, -2, 865, 866),
(869, -2, 867, 868),
(870, -3, 869, 0);
UPDATE gossip_menu SET condition_id = 870 WHERE entry = 6186 AND text_id = 7339;
DELETE FROM gossip_menu WHERE entry = 6189 AND text_id = 7393;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(6189, 7393, 0, 869);
UPDATE gossip_menu_option SET condition_id = 870 WHERE menu_id = 6186 AND id = 0;
DELETE FROM dbscripts_on_gossip WHERE id IN (618701, 618702, 618703, 620801, 620802, 620901, 620902, 620903, 6211);
INSERT INTO dbscripts_on_gossip (id, command, datalong, comments) VALUES
(618701, 15, 23768, 'cast Sayge\'s Dark Fortune of Damage'),
(618702, 15, 23769, 'cast Sayge\'s Dark Fortune of Resistance'),
(618703, 15, 23767, 'cast Sayge\'s Dark Fortune of Armor'),
(620801, 15, 23738, 'cast Sayge\'s Dark Fortune of Spirit'),
(620802, 15, 23766, 'cast Sayge\'s Dark Fortune of Intelligence'),
(620901, 15, 23737, 'cast Sayge\'s Dark Fortune of Stamina'),
(620902, 15, 23735, 'cast Sayge\'s Dark Fortune of Strength'),
(620903, 15, 23736, 'cast Sayge\'s Dark Fortune of Agility'),
(6211, 15, 23765, 'cast Sayge\'s Darkmoon Faire Fortune');
UPDATE gossip_menu_option SET action_script_id = 618701 WHERE menu_id = 6187 AND id = 0;
UPDATE gossip_menu_option SET action_menu_id = 6211, action_script_id = 618702 WHERE menu_id = 6187 AND id = 1;
UPDATE gossip_menu_option SET action_menu_id = 6211, action_script_id = 618703 WHERE menu_id = 6187 AND id = 2;
UPDATE gossip_menu_option SET action_menu_id = 6211, action_script_id = 620801 WHERE menu_id = 6208 AND id = 0;
UPDATE gossip_menu_option SET action_menu_id = 6211, action_script_id = 620802 WHERE menu_id = 6208 AND id = 1;
UPDATE gossip_menu_option SET action_menu_id = 6211, action_script_id = 618702 WHERE menu_id = 6208 AND id = 2;
UPDATE gossip_menu_option SET action_menu_id = 6211, action_script_id = 620901 WHERE menu_id = 6209 AND id = 0;
UPDATE gossip_menu_option SET action_menu_id = 6211, action_script_id = 620902 WHERE menu_id = 6209 AND id = 1;
UPDATE gossip_menu_option SET action_menu_id = 6211, action_script_id = 620903 WHERE menu_id = 6209 AND id = 2;
UPDATE gossip_menu_option SET action_menu_id = 6211, action_script_id = 620802 WHERE menu_id = 6210 AND id = 0;
UPDATE gossip_menu_option SET action_menu_id = 6211, action_script_id = 620801 WHERE menu_id = 6210 AND id = 1;
UPDATE gossip_menu_option SET action_menu_id = 6211, action_script_id = 618703 WHERE menu_id = 6210 AND id = 2;
UPDATE gossip_menu_option SET action_script_id = 6211 WHERE menu_id = 6211 AND id = 0;

-- ### Naxx ###
UPDATE gameobject_template SET faction = 114, flags = 32 WHERE entry = 181356;

-- quest 1920
DELETE FROM creature_template_addon WHERE entry = 6492;
INSERT INTO creature_template_addon (entry, mount, bytes1, b2_0_sheath, b2_1_flags, emote, moveflags, auras) VALUES
(6492, 0, 0, 0, 0, 0, 0, '9093');

UPDATE creature_template SET npcflag=npcflag|2 WHERE entry = 12580;

-- startup fix

UPDATE `creature` SET `curhealth` = 15738 WHERE `id`= 15323;
UPDATE `creature` SET `curhealth` = 31456 WHERE `id`= 15320;
UPDATE `creature` SET `curhealth` = 438442 WHERE `id`= 15341;
UPDATE `creature` SET `curhealth` = 71720 WHERE `id`= 15385;
UPDATE `creature` SET `curhealth` = 57387 WHERE `id`= 15386;
UPDATE `creature` SET `curhealth` = 70457 WHERE `id`= 15388;
UPDATE `creature` SET `curhealth` = 69073 WHERE `id`= 15389;
UPDATE `creature` SET `curhealth` = 80342 WHERE `id`= 15390;
UPDATE `creature` SET `curhealth` = 82662 WHERE `id`= 15391;
UPDATE `creature` SET `curhealth` = 69952 WHERE `id`= 15392;



DELETE FROM `game_event_gameobject` WHERE `guid` = 84916;
DELETE FROM `game_event_gameobject` WHERE `guid` = 84917;
DELETE FROM `game_event_gameobject` WHERE `guid` = 84918;
DELETE FROM `game_event_gameobject` WHERE `guid` = 84919;
DELETE FROM `game_event_gameobject` WHERE `guid` = 84920;
DELETE FROM `game_event_gameobject` WHERE `guid` = 84921;
DELETE FROM `game_event_gameobject` WHERE `guid` = 84922;
DELETE FROM `game_event_gameobject` WHERE `guid` = 84923;
DELETE FROM `game_event_gameobject` WHERE `guid` = 84924;
DELETE FROM `game_event_gameobject` WHERE `guid` = 84925;
DELETE FROM `game_event_gameobject` WHERE `guid` = 84926;
DELETE FROM `game_event_gameobject` WHERE `guid` = 84927;
DELETE FROM `game_event_gameobject` WHERE `guid` = 84928;
DELETE FROM `game_event_gameobject` WHERE `guid` = 84929;
DELETE FROM `game_event_gameobject` WHERE `guid` = 84930;
DELETE FROM `game_event_gameobject` WHERE `guid` = 84931;
DELETE FROM `game_event_gameobject` WHERE `guid` = 84932;
DELETE FROM `game_event_gameobject` WHERE `guid` = 84933;
DELETE FROM `game_event_gameobject` WHERE `guid` = 84934;
DELETE FROM `game_event_gameobject` WHERE `guid` = 84935;
DELETE FROM `game_event_gameobject` WHERE `guid` = 84936;
DELETE FROM `game_event_gameobject` WHERE `guid` = 84937;
DELETE FROM `game_event_gameobject` WHERE `guid` = 84938;
DELETE FROM `game_event_gameobject` WHERE `guid` = 84939;
DELETE FROM `game_event_gameobject` WHERE `guid` = 84940;
DELETE FROM `game_event_gameobject` WHERE `guid` = 84941;
DELETE FROM `game_event_gameobject` WHERE `guid` = 84942;
DELETE FROM `game_event_gameobject` WHERE `guid` = 84943;
DELETE FROM `game_event_gameobject` WHERE `guid` = 84944;
DELETE FROM `game_event_gameobject` WHERE `guid` = 84945;
DELETE FROM `game_event_gameobject` WHERE `guid` = 84946;
DELETE FROM `game_event_gameobject` WHERE `guid` = 84947;
DELETE FROM `game_event_gameobject` WHERE `guid` = 84948;
DELETE FROM `game_event_gameobject` WHERE `guid` = 84949;
DELETE FROM `game_event_gameobject` WHERE `guid` = 84950;
DELETE FROM `game_event_gameobject` WHERE `guid` = 84951;
DELETE FROM `game_event_gameobject` WHERE `guid` = 84952;
DELETE FROM `game_event_gameobject` WHERE `guid` = 84953;
DELETE FROM `game_event_gameobject` WHERE `guid` = 84954;
DELETE FROM `game_event_gameobject` WHERE `guid` = 84955;
DELETE FROM `game_event_gameobject` WHERE `guid` = 84956;
DELETE FROM `game_event_gameobject` WHERE `guid` = 84957;
DELETE FROM `game_event_gameobject` WHERE `guid` = 84958;
DELETE FROM `game_event_gameobject` WHERE `guid` = 84959;
DELETE FROM `game_event_gameobject` WHERE `guid` = 84960;
DELETE FROM `game_event_gameobject` WHERE `guid` = 84961;
DELETE FROM `game_event_gameobject` WHERE `guid` = 84962;
DELETE FROM `game_event_gameobject` WHERE `guid` = 84963;
DELETE FROM `game_event_gameobject` WHERE `guid` = 84964;
DELETE FROM `game_event_gameobject` WHERE `guid` = 84965;
DELETE FROM `game_event_gameobject` WHERE `guid` = 84966;
DELETE FROM `game_event_gameobject` WHERE `guid` = 84967;
DELETE FROM `game_event_gameobject` WHERE `guid` = 84968;
DELETE FROM `game_event_gameobject` WHERE `guid` = 84969;
DELETE FROM `game_event_gameobject` WHERE `guid` = 84970;
DELETE FROM `game_event_gameobject` WHERE `guid` = 84971;
DELETE FROM `game_event_gameobject` WHERE `guid` = 84972;
DELETE FROM `game_event_gameobject` WHERE `guid` = 84973;
DELETE FROM `game_event_gameobject` WHERE `guid` = 84974;
DELETE FROM `game_event_gameobject` WHERE `guid` = 84975;
DELETE FROM `game_event_gameobject` WHERE `guid` = 84976;
DELETE FROM `game_event_gameobject` WHERE `guid` = 84977;
DELETE FROM `game_event_gameobject` WHERE `guid` = 84978;
DELETE FROM `game_event_gameobject` WHERE `guid` = 84979;
DELETE FROM `game_event_gameobject` WHERE `guid` = 84980;
DELETE FROM `game_event_gameobject` WHERE `guid` = 84981;
DELETE FROM `game_event_gameobject` WHERE `guid` = 84982;
DELETE FROM `game_event_gameobject` WHERE `guid` = 84983;
DELETE FROM `game_event_gameobject` WHERE `guid` = 84984;
DELETE FROM `game_event_gameobject` WHERE `guid` = 84985;
DELETE FROM `game_event_gameobject` WHERE `guid` = 84986;
DELETE FROM `game_event_gameobject` WHERE `guid` = 84987;
DELETE FROM `game_event_gameobject` WHERE `guid` = 84988;
DELETE FROM `game_event_gameobject` WHERE `guid` = 84989;
DELETE FROM `game_event_gameobject` WHERE `guid` = 84990;
DELETE FROM `game_event_gameobject` WHERE `guid` = 84991;
DELETE FROM `game_event_gameobject` WHERE `guid` = 84992;
DELETE FROM `game_event_gameobject` WHERE `guid` = 84993;
DELETE FROM `game_event_gameobject` WHERE `guid` = 84994;
DELETE FROM `game_event_gameobject` WHERE `guid` = 84995;
DELETE FROM `game_event_gameobject` WHERE `guid` = 84996;
DELETE FROM `game_event_gameobject` WHERE `guid` = 84997;
DELETE FROM `game_event_gameobject` WHERE `guid` = 84998;
DELETE FROM `game_event_gameobject` WHERE `guid` = 84999;
DELETE FROM `game_event_gameobject` WHERE `guid` = 85000;
DELETE FROM `game_event_gameobject` WHERE `guid` = 85001;
DELETE FROM `game_event_gameobject` WHERE `guid` = 85002;
DELETE FROM `game_event_gameobject` WHERE `guid` = 85003;
DELETE FROM `game_event_gameobject` WHERE `guid` = 85004;
DELETE FROM `game_event_gameobject` WHERE `guid` = 85005;
DELETE FROM `game_event_gameobject` WHERE `guid` = 85006;
DELETE FROM `game_event_gameobject` WHERE `guid` = 85007;
DELETE FROM `game_event_gameobject` WHERE `guid` = 85008;
DELETE FROM `game_event_gameobject` WHERE `guid` = 85009;
DELETE FROM `game_event_gameobject` WHERE `guid` = 85010;
DELETE FROM `game_event_gameobject` WHERE `guid` = 85011;
DELETE FROM `game_event_gameobject` WHERE `guid` = 85012;
DELETE FROM `game_event_gameobject` WHERE `guid` = 85013;
DELETE FROM `game_event_gameobject` WHERE `guid` = 85014;
DELETE FROM `game_event_gameobject` WHERE `guid` = 85015;
DELETE FROM `game_event_gameobject` WHERE `guid` = 85016;
DELETE FROM `game_event_gameobject` WHERE `guid` = 85017;
DELETE FROM `game_event_gameobject` WHERE `guid` = 85018;
DELETE FROM `game_event_gameobject` WHERE `guid` = 85019;
DELETE FROM `game_event_gameobject` WHERE `guid` = 85020;
DELETE FROM `game_event_gameobject` WHERE `guid` = 85021;
DELETE FROM `game_event_gameobject` WHERE `guid` = 85022;
DELETE FROM `game_event_gameobject` WHERE `guid` = 85023;
DELETE FROM `game_event_gameobject` WHERE `guid` = 85024;
DELETE FROM `game_event_gameobject` WHERE `guid` = 85025;
DELETE FROM `game_event_gameobject` WHERE `guid` = 85026;
DELETE FROM `game_event_gameobject` WHERE `guid` = 85027;
DELETE FROM `game_event_gameobject` WHERE `guid` = 85028;
DELETE FROM `game_event_gameobject` WHERE `guid` = 85029;
DELETE FROM `game_event_gameobject` WHERE `guid` = 85030;
DELETE FROM `game_event_gameobject` WHERE `guid` = 85031;
DELETE FROM `game_event_gameobject` WHERE `guid` = 85032;
DELETE FROM `game_event_gameobject` WHERE `guid` = 85033;
DELETE FROM `game_event_gameobject` WHERE `guid` = 85034;
DELETE FROM `game_event_gameobject` WHERE `guid` = 85035;
DELETE FROM `game_event_gameobject` WHERE `guid` = 85036;
DELETE FROM `game_event_gameobject` WHERE `guid` = 85037;
DELETE FROM `game_event_gameobject` WHERE `guid` = 85038;
DELETE FROM `game_event_gameobject` WHERE `guid` = 85039;
DELETE FROM `game_event_gameobject` WHERE `guid` = 85040;
DELETE FROM `game_event_gameobject` WHERE `guid` = 85041;
DELETE FROM `game_event_gameobject` WHERE `guid` = 85042;
DELETE FROM `game_event_gameobject` WHERE `guid` = 85043;
DELETE FROM `game_event_gameobject` WHERE `guid` = 85044;
DELETE FROM `game_event_gameobject` WHERE `guid` = 85045;
DELETE FROM `game_event_gameobject` WHERE `guid` = 85046;
DELETE FROM `game_event_gameobject` WHERE `guid` = 85047;
DELETE FROM `game_event_gameobject` WHERE `guid` = 85048;
DELETE FROM `game_event_gameobject` WHERE `guid` = 85049;
DELETE FROM `game_event_gameobject` WHERE `guid` = 85050;
DELETE FROM `game_event_gameobject` WHERE `guid` = 85051;
DELETE FROM `game_event_gameobject` WHERE `guid` = 85052;
DELETE FROM `game_event_gameobject` WHERE `guid` = 85053;
DELETE FROM `game_event_gameobject` WHERE `guid` = 85054;
DELETE FROM `game_event_gameobject` WHERE `guid` = 85055;
DELETE FROM `game_event_gameobject` WHERE `guid` = 85056;
DELETE FROM `game_event_gameobject` WHERE `guid` = 85057;
DELETE FROM `game_event_gameobject` WHERE `guid` = 85058;
DELETE FROM `game_event_gameobject` WHERE `guid` = 85059;
DELETE FROM `game_event_gameobject` WHERE `guid` = 85060;
DELETE FROM `game_event_gameobject` WHERE `guid` = 85061;
DELETE FROM `game_event_gameobject` WHERE `guid` = 85062;
DELETE FROM `game_event_gameobject` WHERE `guid` = 85063;
DELETE FROM `game_event_gameobject` WHERE `guid` = 85064;
DELETE FROM `game_event_gameobject` WHERE `guid` = 85065;
DELETE FROM `game_event_gameobject` WHERE `guid` = 85066;
DELETE FROM `game_event_gameobject` WHERE `guid` = 85067;
DELETE FROM `game_event_gameobject` WHERE `guid` = 85068;
DELETE FROM `game_event_gameobject` WHERE `guid` = 85069;
DELETE FROM `game_event_gameobject` WHERE `guid` = 85070;
DELETE FROM `game_event_gameobject` WHERE `guid` = 85071;
DELETE FROM `game_event_gameobject` WHERE `guid` = 85072;
DELETE FROM `game_event_gameobject` WHERE `guid` = 85073;
DELETE FROM `game_event_gameobject` WHERE `guid` = 85074;
DELETE FROM `game_event_gameobject` WHERE `guid` = 85075;
DELETE FROM `game_event_gameobject` WHERE `guid` = 85076;
DELETE FROM `game_event_gameobject` WHERE `guid` = 85077;
DELETE FROM `game_event_gameobject` WHERE `guid` = 85078;
DELETE FROM `game_event_gameobject` WHERE `guid` = 85079;
DELETE FROM `game_event_gameobject` WHERE `guid` = 85080;
DELETE FROM `game_event_gameobject` WHERE `guid` = 85081;
DELETE FROM `game_event_gameobject` WHERE `guid` = 85082;
DELETE FROM `game_event_gameobject` WHERE `guid` = 85083;
DELETE FROM `game_event_gameobject` WHERE `guid` = 85084;
DELETE FROM `game_event_gameobject` WHERE `guid` = 85085;
DELETE FROM `game_event_gameobject` WHERE `guid` = 85086;
DELETE FROM `game_event_gameobject` WHERE `guid` = 85087;
DELETE FROM `game_event_gameobject` WHERE `guid` = 85088;
DELETE FROM `game_event_gameobject` WHERE `guid` = 85089;
DELETE FROM `game_event_gameobject` WHERE `guid` = 85090;
DELETE FROM `game_event_gameobject` WHERE `guid` = 85091;
DELETE FROM `game_event_gameobject` WHERE `guid` = 85092;
DELETE FROM `game_event_gameobject` WHERE `guid` = 85093;
DELETE FROM `game_event_gameobject` WHERE `guid` = 85094;
DELETE FROM `game_event_gameobject` WHERE `guid` = 85095;
DELETE FROM `game_event_gameobject` WHERE `guid` = 85096;
DELETE FROM `game_event_gameobject` WHERE `guid` = 85097;
DELETE FROM `game_event_gameobject` WHERE `guid` = 85098;
DELETE FROM `game_event_gameobject` WHERE `guid` = 85099;
DELETE FROM `game_event_gameobject` WHERE `guid` = 85100;
DELETE FROM `game_event_gameobject` WHERE `guid` = 85101;
DELETE FROM `game_event_gameobject` WHERE `guid` = 85102;
DELETE FROM `game_event_gameobject` WHERE `guid` = 85103;
DELETE FROM `game_event_gameobject` WHERE `guid` = 85104;
DELETE FROM `game_event_gameobject` WHERE `guid` = 85105;
DELETE FROM `game_event_gameobject` WHERE `guid` = 85106;
DELETE FROM `game_event_gameobject` WHERE `guid` = 85107;
DELETE FROM `game_event_gameobject` WHERE `guid` = 85108;
DELETE FROM `game_event_gameobject` WHERE `guid` = 85109;
DELETE FROM `game_event_gameobject` WHERE `guid` = 85110;
DELETE FROM `game_event_gameobject` WHERE `guid` = 85111;
DELETE FROM `game_event_gameobject` WHERE `guid` = 180598;

UPDATE `quest_template` SET `MinLevel` = 1 WHERE `entry` IN (7881,7889,7894,7899);
-- Despite being currently marked as lvl 6 on wowhead/wowwiki, quests 7905 and 7926 were indeed lvl 10 quests back in classic
UPDATE `quest_template` SET `MinLevel` = 10 WHERE `entry` IN (7882,7890,7895,7900, 7905,7926);
UPDATE `quest_template` SET `MinLevel` = 20 WHERE `entry` IN (7883,7891,7896,7901);
UPDATE `quest_template` SET `MinLevel` = 30 WHERE `entry` IN (7884,7892,7897,7902);
UPDATE `quest_template` SET `MinLevel` = 40 WHERE `entry` IN (7885,7893,7898,7903,7939,7941,7942,7943,8222,8223);

UPDATE `quest_template` SET `SpecialFlags` = 0 WHERE `entry` = 2358;

UPDATE `gameobject` SET `id` = 1731 WHERE `guid` = 7321;
UPDATE `gameobject` SET `id` = 1731 WHERE `guid` = 7304;
UPDATE `gameobject` SET `position_z` = -8.4 WHERE `guid` = 5455;

-- Updates equipement for creatures 16194 (Unholy Axe), 16215 (Unholy Staff), 16216 (Unholy Swords)
-- as it currently wrong, especially for Unholy Staff
-- Adds missing equipement with correct model for creature 16215 (Unholy Staff)
UPDATE `creature_template` SET `unit_class` = 1 WHERE `entry` = 16216;
DELETE FROM `creature_equip_template_raw` WHERE `entry` = 1003;
INSERT INTO `creature_equip_template_raw` (`entry`, `equipmodel1`, `equipmodel2`, `equipmodel3`, `equipinfo1`, `equipinfo2`, `equipinfo3`, `equipslot1`, `equipslot2`, `equipslot3`)
VALUES (1003, 23539, 0, 0, 285346306, 0, 0, 2, 0, 0);
-- Fixes equipement with correct model for creature 16215 (Unholy Swords)
UPDATE `creature_equip_template_raw` SET `equipmodel1` = 20167, `equipmodel2` = 20167, `equipmodel3` = 0, `equipinfo2` = 33490690, `equipinfo3`= 0, `equipslot1` = 781, `equipslot2` = 781, `equipslot3` = 0 WHERE `entry` = 1726;
-- Fixes equipement with correct model for creature 16194 (Unholy Axe)
UPDATE `creature_equip_template_raw` SET `equipmodel1` = 22220, `equipmodel2` = 0,`equipmodel3` = 0 WHERE `entry` = 1725;

-- Adds the gameobject 141980 (Spectral Lockbox) as the quest completion GO
DELETE FROM `gameobject_involvedrelation` WHERE `quest` = 2701;
INSERT INTO `gameobject_involvedrelation` VALUES (141980, 2701);
-- Updates gameobject 141980 which had the wrong quest number reference
UPDATE `gameobject_template` SET `data1` = 2701 WHERE `entry` = 141980;
-- Updates quest to remove completion emote as gameobject does not do emote
UPDATE `quest_template` SET `CompleteEmote` = 0 WHERE `entry` = 2701;
-- Removes quest completion from creature 7750 (Corporal Thund Splithoof)
DELETE FROM `creature_involvedrelation` WHERE `quest` = 2701;
UPDATE `creature_template` SET `scale` = 1.35 WHERE `entry` = 7750;


-- ************************************************************
-- Conditions
-- ************************************************************

-- Creates conditions for each skill to allow trainers to know when to display gossip indicating players to move to a more skilled trainer


DELETE FROM `conditions` WHERE `condition_entry` BETWEEN 396 AND 399;
INSERT INTO `conditions` VALUES
 (396, 7, 129, 1),                 -- First Aid Has skill
 (397, 7, 129, 50), -- First Aid Journeyman
 (398, 7, 129, 125),                -- First Aid Expert
 (399, 7, 129, 200);         -- First Aid Artisan

 
-- ************************************************************
-- First Aid
-- ************************************************************

-- Source: http://www.wowwiki.com/First_Aid_trainers?diff=399516&oldid=399480

-- -------------
-- Alliance
-- -------------

-- These values was determined on the basis of gossip menus entries
-- already in database with text_id related to first aid training
-- All other gossips were added on this basis to keep compatibility with TBC-DB and UDB
DELETE FROM `gossip_menu` WHERE `entry` IN (4762, 5855, 657, 5382, 5383, 5856, 5384);

-- -------------
-- Alliance
-- -------------

-- Various adjustements

-- Journeyman/Expert (teaching Apprentice and Journeyman)
-- Nissa Firestone (5150)

INSERT INTO `gossip_menu` VALUES (4762, 7028, 0, 0);                                                -- Player does not have the right skill or is right level
INSERT INTO `gossip_menu` VALUES (4762, 7027, 0, 398);                                -- Player needs to learn expert level
INSERT INTO `gossip_menu` VALUES (4762, 7026, 0, 399);                                -- Player needs to learn artisan level
UPDATE `creature_template` SET `gossip_menu_id` = 4762 WHERE `entry` IN (5150); -- Adds gossip menu to NPCs
-- Dannelor (4211)
-- Fremal Doohickey (3181)
-- Byancie (6094)
-- Michelle Belle (2329)
-- Thamner Pol (2326)
INSERT INTO `gossip_menu` VALUES (5855, 7028, 0, 0);                                                -- Player does not have the right skill or is right level
INSERT INTO `gossip_menu` VALUES (5855, 7027, 0, 398);                                -- Player needs to learn expert level
INSERT INTO `gossip_menu` VALUES (5855, 7026, 0, 399);                                -- Player needs to learn artisan level
UPDATE `creature_template` SET `gossip_menu_id` = 5855 WHERE `entry` IN (6094, 4211, 2329, 2326, 3181); -- Adds gossip menu to NPCs
-- Shaina Fuller (2327)
INSERT INTO `gossip_menu` VALUES (657, 1221, 0, 0);                                                 -- Player does not have the right skill
INSERT INTO `gossip_menu` VALUES (657, 1220, 0, 396);                                 -- Player is right level
INSERT INTO `gossip_menu` VALUES (657, 7027, 0, 398);                                 -- Player needs to learn expert level
INSERT INTO `gossip_menu` VALUES (657, 7026, 0, 399);                                 -- Player needs to learn artisan level
UPDATE `creature_template` SET `gossip_menu_id` = 657 WHERE `entry` = 2327; -- Adds gossip menu to Shaina Fuller
-- Removes entries in npc_gossip for these trainers if existing
DELETE FROM `npc_gossip` WHERE `npc_guid` IN (SELECT `guid` FROM `creature` WHERE `id` IN (6094, 4211, 5150, 3181, 2329, 2326, 2327));

-- Artisan (teaching Expert)
-- Taught by book. No NPC.

-- Master (teaching Artisan)
-- Doctor Gustaf VanHouzen (12939)
INSERT INTO `gossip_menu` VALUES (5382, 6415, 0, 0);                                                -- Player does not have the right skill
INSERT INTO `gossip_menu` VALUES (5382, 6573, 0, 396);                                -- Player is too low level
INSERT INTO `gossip_menu` VALUES (5382, 6414, 0, 399);                                -- Player is right level
UPDATE `creature_template` SET `gossip_menu_id` = 5382 WHERE `entry` = 12939; -- Adds gossip menu to Doctor Gustaf VanHouzen
-- Removes entries in npc_gossip for these trainers if existing
DELETE FROM `npc_gossip` WHERE `npc_guid` IN (SELECT `guid` FROM `creature` WHERE `id` = 12939);

-- -------------
-- Horde
-- -------------

-- Various adjustements

-- Journeyman/Expert (teaching Apprentice and Journeyman)
-- Rawrck (5943)
INSERT INTO `gossip_menu` VALUES (5384, 5813, 0, 0);                                                -- Player does not have the right skill
INSERT INTO `gossip_menu` VALUES (5384, 5815, 0, 396);                                -- Player is right level
INSERT INTO `gossip_menu` VALUES (5384, 7025, 0, 398);                                -- Player needs to learn expert level
INSERT INTO `gossip_menu` VALUES (5384, 7024, 0, 399);                                -- Player needs to learn artisan level
UPDATE `creature_template` SET `gossip_menu_id` = 5384 WHERE `entry` = 5943; -- Adds gossip menu to NPCs
-- Nurse Neela (5759)
-- Mary Edras (4591)
-- Vira Younghoof (5939)
-- Pand Stonelider (2798)
-- Arnok (3373)
INSERT INTO `gossip_menu` VALUES (5856, 7028, 0, 0);                                                -- Player does not have the right skill or is right level
INSERT INTO `gossip_menu` VALUES (5856, 7025, 0, 398);                                -- Player needs to learn expert level
INSERT INTO `gossip_menu` VALUES (5856, 7024, 0, 399);                                -- Player needs to learn artisan level
UPDATE `creature_template` SET `gossip_menu_id` = 5856 WHERE `entry` IN (5759, 4591, 5939, 2798, 5943, 3373); -- Adds gossip menu to NPCs
-- Removes entries in npc_gossip for these trainers if existing
DELETE FROM `npc_gossip` WHERE `npc_guid` IN (SELECT `guid` FROM `creature` WHERE `id` IN (5759, 4591, 5939, 2798, 5943, 3373));

-- Artisan (teaching Expert)
-- Taught by book. No NPC.

-- Master (teaching Artisan)
-- Doctor Gregory Victor (12920)
INSERT INTO `gossip_menu` VALUES (5383, 6413, 0, 0);                                                -- Player does not have the right skill
INSERT INTO `gossip_menu` VALUES (5383, 6573, 0, 396);                                -- Player is too low level
INSERT INTO `gossip_menu` VALUES (5383, 6414, 0, 399);                                -- Player is right level
UPDATE `creature_template` SET `gossip_menu_id` = 5383 WHERE `entry` = 12920; -- Adds gossip menu to Doctor Gregory Victor
-- Removes entries in npc_gossip for these trainers if existing
DELETE FROM `npc_gossip` WHERE `npc_guid` IN (SELECT `guid` FROM `creature` WHERE `id` = 12920);


-- ************************************************************
-- Conditions
-- ************************************************************

-- Creates conditions for each skill to allow trainers to know when to display gossip indicating players to move to a more skilled trainer


DELETE FROM `conditions` WHERE `condition_entry` BETWEEN 400 AND 403;
INSERT INTO `conditions` VALUES
 (400, 7, 185, 1),                 -- Cooking Has skill
 (401, 7, 185, 50),        -- Cooking Journeyman
 (402, 7, 185, 125),                -- Cooking Expert
 (403, 7, 185, 200);         -- Cooking Artisan

 
-- ************************************************************
-- Cooking
-- ************************************************************

-- Source: http://www.wowwiki.com/Cooking_trainers?oldid=399399

-- -------------
-- Alliance
-- -------------

-- These values was determined on the basis of gossip menus entries
-- already in database with text_id related to cooking training
-- All other gossips were added on this basis to keep compatibility with TBC-DB and UDB
DELETE FROM `gossip_menu` WHERE `entry` IN (646, 4748, 5853, 4746, 4749,4747);

-- -------------
-- Alliance
-- -------------

-- Various adjustements

-- Journeyman/Expert (teaching Apprentice and Journeyman)
-- Stephen Ryback (5482)
INSERT INTO `gossip_menu` VALUES (646, 1208, 0, 0);                                                 -- Player does not have the right skill
INSERT INTO `gossip_menu` VALUES (646, 1207, 0, 400);                                 -- Player is right level
INSERT INTO `gossip_menu` VALUES (646, 7015, 0, 401);
INSERT INTO `gossip_menu` VALUES (646, 7016, 0, 402);                                 -- Player needs to learn expert level
INSERT INTO `gossip_menu` VALUES (646, 7017, 0, 403);                                 -- Player needs to learn artisan level
UPDATE `creature_template` SET `gossip_menu_id` = 646 WHERE `entry` = 5482; -- Adds gossip menu to trainers
-- Daryl Riknussun (5159)
INSERT INTO `gossip_menu` VALUES (4748, 5800, 0, 0);                                                -- Player does not have the right skill
INSERT INTO `gossip_menu` VALUES (4748, 7015, 0, 400);                                -- Player is right level
INSERT INTO `gossip_menu` VALUES (4748, 7016, 0, 402);                                -- Player needs to learn expert level
INSERT INTO `gossip_menu` VALUES (4748, 7017, 0, 403);                                -- Player needs to learn artisan level
UPDATE `creature_template` SET `gossip_menu_id` = 4748 WHERE `entry` = 5159; -- Adds gossip menu to trainers
-- Crystal Boughman (3087)
-- Gremlock Pilsnor (1699)
-- Cook Ghilm (1355)
-- Zarrin (6286)
-- Alegorn (4210)
-- Tomas (1430)
INSERT INTO `gossip_menu` VALUES (5853, 7021, 0, 0);                                                -- Player does not have the right skill
INSERT INTO `gossip_menu` VALUES (5853, 7015, 0, 400);                                -- Player is right level
INSERT INTO `gossip_menu` VALUES (5853, 7016, 0, 402);                                -- Player needs to learn expert level
INSERT INTO `gossip_menu` VALUES (5853, 7017, 0, 403);                                -- Player needs to learn artisan level
UPDATE `creature_template` SET `gossip_menu_id` = 5853 WHERE `entry` IN (6286, 4210, 1430, 1699, 1355, 3087); -- Adds gossip menu to trainers
-- Removes entries in npc_gossip for these trainers if existing
DELETE FROM `npc_gossip` WHERE `npc_guid` IN (SELECT `guid` FROM `creature` WHERE `id` IN (6286, 4210, 1430, 5482, 1699, 1355, 5159, 3087));

-- Artisan (teaching Expert)
-- Taught by book. No NPC.

-- Master (teaching Artisan)
-- Dirge Quikcleave (8125)
INSERT INTO `gossip_menu` VALUES (4746, 5798, 0, 0);                                                -- Player does not have the right skill
UPDATE `creature_template` SET `gossip_menu_id` = 4746, `npcflag` = `npcflag`|1 WHERE `entry` = 8125; -- Adds gossip menu to Dirge Quikcleave
-- Removes entries in npc_gossip for these trainers if existing
DELETE FROM `npc_gossip` WHERE `npc_guid` IN (SELECT `guid` FROM `creature` WHERE `id` = 8125);

-- -------------
-- Horde
-- -------------

-- Various adjustements

-- Journeyman/Expert (teaching Apprentice and Journeyman)
-- Zamja (3399)
INSERT INTO `gossip_menu` VALUES (4749, 5799, 0, 0);                                                -- Player does not have the right skill
INSERT INTO `gossip_menu` VALUES (4749, 7015, 0, 400);                                -- Player is right level
INSERT INTO `gossip_menu` VALUES (4749, 7019, 0, 402);                                -- Player needs to learn expert level
INSERT INTO `gossip_menu` VALUES (4749, 7017, 0, 403);                                -- Player needs to learn artisan level
UPDATE `creature_template` SET `gossip_menu_id` = 4749 WHERE `entry` = 3399; -- Adds gossip menu to trainers
-- Eunice Burch (4552)
-- Pyall Silentstride (3067)
-- Aska Mistrunner (3026)
-- Duhng (8306)
-- Slagg (2818)
UPDATE `creature_template` SET `npcflag` = `npcflag`|1 WHERE `entry` = 2818;
-- Mudduk (1382)
INSERT INTO `gossip_menu` VALUES (4747, 7021, 0, 0);                                                -- Player does not have the right skill
INSERT INTO `gossip_menu` VALUES (4747, 7015, 0, 400);                                -- Player is right level
INSERT INTO `gossip_menu` VALUES (4747, 7019, 0, 402);                                -- Player needs to learn expert level
INSERT INTO `gossip_menu` VALUES (4747, 7017, 0, 403);                                -- Player needs to learn artisan level
UPDATE `creature_template` SET `gossip_menu_id` = 4747 WHERE `entry` IN (4552, 3067, 3026, 8306, 2818, 1382); -- Adds gossip menu to NPCs
-- Removes entries in npc_gossip for these trainers if existing
DELETE FROM `npc_gossip` WHERE `npc_guid` IN (SELECT `guid` FROM `creature` WHERE `id` IN (4552, 3067, 3026, 3399, 8306, 2818, 1382));

-- Artisan (teaching Expert)
-- Taught by book. No NPC.

-- Master (teaching Artisan)
-- Same as alliance


-- ************************************************************
-- Conditions
-- ************************************************************

-- Creates conditions for each skill to allow trainers to know when to display gossip indicating players to move to a more skilled trainer


DELETE FROM `conditions` WHERE `condition_entry` BETWEEN 404 AND 407;
INSERT INTO `conditions` VALUES
 (404, 7, 356, 1),                 -- First Aid Has skill
 (405, 7, 356, 50),        -- First Aid Journeyman
 (406, 7, 356, 125),                -- First Aid Expert
 (407, 7, 356, 200);         -- First Aid Artisan

 
-- ************************************************************
-- Fishing
-- ************************************************************

-- Source: http://www.wowwiki.com/Fishing_trainer?oldid=399569

-- -------------
-- Alliance
-- -------------

-- These values was determined on the basis of gossip menus entries
-- already in database with text_id related to fishing training
-- All other gossips were added on this basis to keep compatibility with TBC-DB and UDB
DELETE FROM `gossip_menu` WHERE `entry` IN (4740, 4741, 4742, 4744);

-- -------------
-- Alliance
-- -------------

-- Various adjustements

-- Journeyman/Expert (teaching Apprentice and Journeyman)
-- Grimnur Stonebrand (5161)
INSERT INTO `gossip_menu` VALUES (4742, 6961, 0, 0);                                  -- Player is right level
INSERT INTO `gossip_menu` VALUES (4742, 6793, 0, 406);                                 -- Player needs to learn expert level
INSERT INTO `gossip_menu` VALUES (4742, 6960, 0, 407);                                 -- Player needs to learn artisan level
UPDATE `creature_template` SET `gossip_menu_id` = 4742 WHERE `entry` = 5161; -- Adds gossip menu to trainers
-- Androl Oakhand (3607)
-- Astaia (4156)
-- Lee Brown (1651)
-- Arnold Leland (5493)
-- Paxton Ganter (1700)
-- Warg Deepwater (1683)
-- Matthew Hooper (1680)
-- Harold Riggs (3179)
-- Donald Rabonne (2367)
-- Myizz Luckycatch (2834)
UPDATE `creature_template` SET `npcflag` = `npcflag` | 1 WHERE `entry` = 2834;
-- Brannock (7946)
INSERT INTO `gossip_menu` VALUES (4744, 6961, 0, 0);                                  -- Player is right level
INSERT INTO `gossip_menu` VALUES (4744, 6793, 0, 406);                                 -- Player needs to learn expert level
INSERT INTO `gossip_menu` VALUES (4744, 6960, 0, 407);                                 -- Player needs to learn artisan level
UPDATE `creature_template` SET `gossip_menu_id` = 4744 WHERE `entry` IN (3607, 4156, 1651, 5493, 1700, 5161, 1683, 1680, 3179, 2367, 2834, 7946); -- Adds gossip menu to trainers
-- Removes entries in npc_gossip for these trainers if existing
DELETE FROM `npc_gossip` WHERE `npc_guid` IN (SELECT `guid` FROM `creature` WHERE `id` IN (3607, 4156, 1651, 5493, 1700, 5161, 1683, 1680, 3179, 2367, 2834, 7946));

-- Artisan (teaching Expert)
-- Taught by book. No NPC.

-- Master (teaching Artisan)
-- Nat Pagle
-- Already has its gossip menu set

-- -------------
-- Horde
-- -------------

-- Various adjustements

-- Journeyman/Expert (teaching Apprentice and Journeyman)
-- Clyde Kellen (5690)
-- Armand Cromwell (4573)
-- Uthan Stillwater (5938)
-- Kah Mistrunner (3028)
-- Lau'Tiki (5941)
-- Lumak (3332)
INSERT INTO `gossip_menu` VALUES (4741, 5793, 0, 0);                                  -- Player does not have skill
INSERT INTO `gossip_menu` VALUES (4741, 5794, 0, 404);                  -- Player is right level
INSERT INTO `gossip_menu` VALUES (4741, 6793, 0, 406);                                 -- Player needs to learn expert level
INSERT INTO `gossip_menu` VALUES (4741, 6960, 0, 407);                                 -- Player needs to learn artisan level
UPDATE `creature_template` SET `gossip_menu_id` = 4741 WHERE `entry` = 3332; -- Adds gossip menu to trainers
-- Kil'Hiwana (12961)
-- Katoom the Angler (14740)
UPDATE `creature_template` SET `npcflag` = `npcflag` | 1 WHERE `entry` = 14740;
INSERT INTO `gossip_menu` VALUES (4740, 5793, 0, 0);                                  -- Player does not have skill
INSERT INTO `gossip_menu` VALUES (4740, 5794, 0, 404);                  -- Player is right level
INSERT INTO `gossip_menu` VALUES (4740, 6793, 0, 406);                                 -- Player needs to learn expert level
INSERT INTO `gossip_menu` VALUES (4740, 7241, 0, 407);                                 -- Player needs to learn artisan level
UPDATE `creature_template` SET `gossip_menu_id` = 4740 WHERE `entry` IN (14740); -- Adds gossip menu to NPCs
-- Lui'Mala (12032)
UPDATE `creature_template` SET `gossip_menu_id` = 4744 WHERE `entry` IN (5690, 4573, 5938, 3028, 5941, 12961, 12032); -- Adds gossip menu to NPCs
-- Removes entries in npc_gossip for these trainers if existing
DELETE FROM `npc_gossip` WHERE `npc_guid` IN (SELECT `guid` FROM `creature` WHERE `id` IN (5690, 4573, 5938, 3028, 5941, 3332, 12961, 14740, 12032));

-- Artisan (teaching Expert)
-- Taught by book. No NPC.

-- Master (teaching Artisan)
-- Same as Alliance

UPDATE `creature_template` SET `InhabitType` = 3 WHERE `entry` = 7046;
UPDATE `quest_template` SET `OfferRewardText` = 'Alright, $n. You want to earn your keep with the Horde? Well there\'s plenty to do here, so listen close and do what you\'re told.$B$B$GI see that look in your eyes, do not think I will tolerate any insolence. Thrall himself has declared the Hordes females to be on equal footing with you men. Disrespect me in the slightest, and you will know true pain.:I\'m happy to have met you. Thrall will be glad to know that more females like you and I are taking the initiative to push forward in the Barrens.' WHERE `entry` = 842;


-- Added waypoint movement to creature 16061 (Instructor Razuvious)
-- Script is currently missing (tbd)
-- Source: http://www.youtube.com/watch?v=PQ88MOZ-gGk
UPDATE `creature_template` SET `MovementType` = 2 WHERE `entry` = 16061;
UPDATE `creature` SET `MovementType` = 2 WHERE `guid` = 88460;
DELETE FROM `creature_movement` WHERE `id` = 88460;
INSERT INTO `creature_movement` VALUES (88460, 1, 2765.25, -3088.47, 267.685, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.38872, 0, 0);
INSERT INTO `creature_movement` VALUES (88460, 2, 2780, -3090.74, 267.685, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.78048, 0, 0);
INSERT INTO `creature_movement` VALUES (88460, 3, 2783.57, -3100.87, 267.685, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.04221, 0, 0);
INSERT INTO `creature_movement` VALUES (88460, 4, 2776.59, -3109.78, 267.685, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.98977, 0, 0);
INSERT INTO `creature_movement` VALUES (88460, 5, 2765.44, -3110.8, 267.685, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.15332, 0, 0);
INSERT INTO `creature_movement` VALUES (88460, 6, 2757.56, -3100.27, 267.685, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.06162, 0, 0);

-- Added addon for combat emote to Deathnight Understudies and Deathknight. They will no longer stand idle in front of their Combat Dummy
-- Source: http://www.youtube.com/watch?v=PQ88MOZ-gGk
DELETE FROM `creature_addon` WHERE `guid` IN (88461, 88462, 88463, 88464, 88436, 88437, 88438, 88439);
INSERT INTO `creature_addon` VALUES (88461, 0, 0, 0, 0, 36, 0, '18950'); -- attack
INSERT INTO `creature_addon` VALUES (88462, 0, 0, 0, 0, 36, 0, '18950'); -- attack
INSERT INTO `creature_addon` VALUES (88463, 0, 0, 0, 0, 36, 0, '18950'); -- attack
INSERT INTO `creature_addon` VALUES (88464, 0, 0, 0, 0, 36, 0, '18950'); -- attack

INSERT INTO `creature_addon` VALUES (88436, 0, 0, 0, 0, 36, 0, '18950'); -- attack
INSERT INTO `creature_addon` VALUES (88437, 0, 0, 0, 0, 36, 0, '18950'); -- attack
INSERT INTO `creature_addon` VALUES (88438, 0, 0, 0, 0, 36, 0, '18950'); -- attack
INSERT INTO `creature_addon` VALUES (88439, 0, 0, 0, 0, 36, 0, '18950'); -- attack

-- Shade of Naxxramas (before Razuvious)
-- Source http://www.youtube.com/watch?v=agWfYn0piY8
UPDATE `creature` SET `MovementType` = 2 WHERE `guid` = 88407;
DELETE FROM `creature_movement` WHERE `id` = 88407;
INSERT INTO `creature_movement` VALUES (88407, 1, 2903.97, -3293.77, 298.73, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.96, 0, 0);
INSERT INTO `creature_movement` VALUES (88407, 2, 2854.105, -3335.93, 298.15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.75, 0, 0);

-- Deathknight Cavaliers (before Razuvious)
-- Source http://www.youtube.com/watch?v=agWfYn0piY8
UPDATE `creature` SET `MovementType` = 2 WHERE `guid` = 154229;
DELETE FROM `creature_movement` WHERE `id` = 154229;
INSERT INTO `creature_movement` VALUES (154229, 1, 2931.33, -3190.24, 273.38, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.123, 0, 0);
INSERT INTO `creature_movement` VALUES (154229, 2, 2820.41, -3190.24, 273.79, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6.239, 0, 0);

UPDATE `creature` SET `MovementType` = 2 WHERE `guid` = 88466;
DELETE FROM `creature_movement` WHERE `id` = 88466;
INSERT INTO `creature_movement` VALUES (88466, 1, 2933.03, -3186.32, 273.55, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.123, 0, 0);
INSERT INTO `creature_movement` VALUES (88466, 2, 2822.11, -3186.32, 273.79, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6.239, 0, 0);

UPDATE `creature` SET `MovementType` = 2 WHERE `guid` = 88465;
DELETE FROM `creature_movement` WHERE `id` = 88465;
INSERT INTO `creature_movement` VALUES (88465, 1, 2932.46, -3194.52, 273.56, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.123, 0, 0);
INSERT INTO `creature_movement` VALUES (88465, 2, 2821.54, -3194.52, 273.79, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6.239, 0, 0);


-- Deathknight Cavaliers (Razuvious -> Gothikk corridor)
-- Source http://www.youtube.com/watch?v=agWfYn0piY8
UPDATE `creature` SET `MovementType` = 2 WHERE `guid` = 88473;
DELETE FROM `creature_movement` WHERE `id` = 88473;
INSERT INTO `creature_movement` VALUES (88473, 1, 2790.79, -3374.48, 267.86, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.56, 0, 0);
INSERT INTO `creature_movement` VALUES (88473, 2, 2790.79, -3283.31, 267.94, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.8, 0, 0);

UPDATE `creature` SET `MovementType` = 2 WHERE `guid` = 88474;
DELETE FROM `creature_movement` WHERE `id` = 88474;
INSERT INTO `creature_movement` VALUES (88474, 1, 2785.81, -3374.53, 267.86, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.56, 0, 0);
INSERT INTO `creature_movement` VALUES (88474, 2, 2785.81, -3283.36, 267.94, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.8, 0, 0);

-- Add missing epic items and Tier2 pants from Ragnaros loot table. Data backported from UDB rev 406
-- Thanks to deskicio for pointing
-- Missing condition_id (irrelevant in WotLK) were added to shaman and paladin tier2 to prevent them from dropping for other faction
-- Update drop chance of Draconic for Dummies: 100% drop chance but wowhead data (and such) are misleading because the item was added later
-- UDB have also correct data

-- Creating the reference group for the 2 tier 2 pants and the 2 other epics
DELETE FROM `reference_loot_template` WHERE `entry` = 34030;
INSERT INTO `reference_loot_template` VALUES
-- Tier2 pants
(34030, 16901, 0, 2, 1, 1, 0), -- druid
(34030, 16909, 0, 2, 1, 1, 0), -- rogue
(34030, 16915, 0, 2, 1, 1, 0), -- mage
(34030, 16922, 0, 2, 1, 1, 0), -- priest
(34030, 16930, 0, 2, 1, 1, 0), -- warlock
(34030, 16938, 0, 2, 1, 1, 0), -- hunter
(34030, 16946, 0, 2, 1, 1, 3), -- shaman => condition = horde
(34030, 16954, 0, 2, 1, 1, 4), -- paladin => condition = alliance
(34030, 16962, 0, 2, 1, 1, 0), -- warrior
-- Weapons
(34030, 17076, 0, 1, 1, 1, 0), -- Bonereaver's Edge
(34030, 17104, 0, 1, 1, 1, 0), -- Spinal Reaper
(34030, 18816, 0, 1, 1, 1, 0), -- Perdition's Blade
-- Other epics
(34030, 17063, 0, 1, 1, 1, 0), -- Band of Accuria
(34030, 17082, 0, 1, 1, 1, 0), -- Shard of the Flame
(34030, 17102, 0, 1, 1, 1, 0), -- Cloak of the Shrouded Mists
(34030, 17106, 0, 1, 1, 1, 0), -- Malistar's Defender
(34030, 17107, 0, 1, 1, 1, 0), -- Dragon's Blood Cape
(34030, 18814, 0, 1, 1, 1, 0), -- Choker of the Fire Lord
(34030, 18815, 0, 1, 1, 1, 0), -- Essence of the Pure Flame
(34030, 18817, 0, 1, 1, 1, 0), -- Crown of Destruction
(34030, 19137, 0, 1, 1, 1, 0), -- Onslaught Girdle
(34030, 19138, 0, 1, 1, 1, 0); -- Band of Sulfuras

-- Adding this referenced group to Ragnaros loot table (entry: 11502)
DELETE FROM `creature_loot_template` WHERE `entry` = 11502 AND `item` = 34030;
INSERT INTO `creature_loot_template` VALUES (11502, 34030, 100, 0, -34030, 2, 0);
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 100 WHERE `entry` = 11502 AND `item` = 21110;

-- Copies partial loot data from gameobject_loot_template 2032 used by gameobject 2560 (Half-buried Bottle)
-- because template 2032 was also filled with wrong loot entries and used a entry number (2032) not used by any other object
-- Creates a new loot template with same entry number as gameboject 2560 and paste loot data into it
-- Data were copied if: they were in class recipes, class scrolls, miscellaneous or quest items specific to this object according to:
-- http://www.wowhead.com/object=2560#contains and comments
-- No longer used template 2032 is kept "just in case"
UPDATE `gameobject_template` SET `data1` = 2560 WHERE `entry` = 2560;
DELETE FROM `gameobject_loot_template` WHERE `entry` = 2560;
INSERT INTO `gameobject_loot_template` VALUES
(2560, 1477, 2.5, 0, 1, 1, 0),
(2560, 1711, 4.2, 0, 1, 1, 0),
(2560, 2289, 2.7, 0, 1, 1, 0),
(2560, 2290, 4.4, 0, 1, 1, 0),
(2560, 3608, 0.02, 0, 1, 1, 0),
(2560, 3830, 0.02, 0, 1, 1, 0),
(2560, 3866, 0.02, 0, 1, 1, 0),
(2560, 3867, 0.02, 0, 1, 1, 0),
(2560, 3868, 0.02, 0, 1, 1, 0),
(2560, 3869, 0.02, 0, 1, 1, 0),
(2560, 3870, 0.02, 0, 1, 1, 0),
(2560, 3872, 0.02, 0, 1, 1, 0),
(2560, 3874, 0.02, 0, 1, 1, 0),
(2560, 4098, 25, 0, 1, 1, 0),
(2560, 4100, 15.5, 0, 1, 1, 0),
(2560, 4101, 16.3, 0, 1, 1, 0),
(2560, 4102, 17.2, 0, 1, 1, 0),
(2560, 4298, 0.02, 0, 1, 1, 0),
(2560, 4299, 0.02, 0, 1, 1, 0),
(2560, 4350, 0.02, 0, 1, 1, 0),
(2560, 4351, 0.02, 0, 1, 1, 0),
(2560, 4352, 0.02, 0, 1, 1, 0),
(2560, 4412, 0.02, 0, 1, 1, 0),
(2560, 4414, 0.02, 0, 1, 1, 0),
(2560, 4416, 0.02, 0, 1, 1, 0),
(2560, 4417, 0.02, 0, 1, 1, 0),
(2560, 5543, 0.02, 0, 1, 1, 0),
(2560, 5774, 0.02, 0, 1, 1, 0),
(2560, 6045, 0.02, 0, 1, 1, 0),
(2560, 6454, 0.02, 0, 1, 1, 0),
(2560, 7085, 0.02, 0, 1, 1, 0),
(2560, 7090, 0.02, 0, 1, 1, 0),
(2560, 7360, 0.02, 0, 1, 1, 0),
(2560, 7363, 0.02, 0, 1, 1, 0),
(2560, 7364, 0.02, 0, 1, 1, 0),
(2560, 7449, 0.02, 0, 1, 1, 0),
(2560, 7450, 0.02, 0, 1, 1, 0),
(2560, 7975, 0.1, 0, 1, 1, 0),
(2560, 7992, 0.0508056, 0, 1, 1, 0),
(2560, 8029, 0.0508056, 0, 1, 1, 0),
(2560, 8385, 0.0508056, 0, 1, 1, 0),
(2560, 8386, 0.0580636, 0, 1, 1, 0),
(2560, 8387, 0.0725795, 0, 1, 1, 0),
(2560, 9293, 0.0435477, 0, 1, 1, 0),
(2560, 10300, 0.1, 0, 1, 1, 0),
(2560, 10301, 0.1, 0, 1, 1, 0),
(2560, 10302, 0.0653215, 0, 1, 1, 0),
(2560, 10312, 0.0290318, 0, 1, 1, 0),
(2560, 10424, 0.02, 0, 1, 1, 0),
(2560, 10601, 0.02, 0, 1, 1, 0),
(2560, 10603, 0.0362897, 0, 1, 1, 0),
(2560, 10604, 0.0653215, 0, 1, 1, 0),
(2560, 10606, 0.1, 0, 1, 1, 0),
(2560, 11098, 0.02, 0, 1, 1, 0),
(2560, 11164, 0.02, 0, 1, 1, 0),
(2560, 11165, 0.02, 0, 1, 1, 0),
(2560, 11167, 0.02, 0, 1, 1, 0),
(2560, 11202, 0.0290318, 0, 1, 1, 0),
(2560, 11204, 0.1, 0, 1, 1, 0);


UPDATE `conditions` SET `condition_entry` = 9 WHERE `condition_entry` = 1718;
UPDATE `creature_loot_template` SET `condition_id` = 9 WHERE `condition_id` = 1718;
UPDATE `gameobject_loot_template` SET `condition_id` = 9 WHERE `condition_id` = 1718;
UPDATE `skinning_loot_template` SET `condition_id` = 9 WHERE `condition_id` = 1718;
UPDATE `reference_loot_template` SET `condition_id` = 9 WHERE `condition_id` = 1718;
UPDATE `gossip_menu` SET `condition_id` = 9 WHERE `condition_id` = 1718;
UPDATE `gossip_menu_option` SET `condition_id` = 9 WHERE `condition_id` = 1718;
UPDATE `npc_vendor` SET `condition_id` = 9 WHERE `condition_id` = 1718;


-- Adds script to complete quest after speaking with creature 3144
UPDATE gossip_menu_option SET action_script_id = 290801 WHERE menu_id = 2908 AND id = 0;
DELETE FROM `dbscripts_on_gossip` WHERE `id` = 290801;
INSERT INTO `dbscripts_on_gossip` VALUES
(290801, 0, 7, 4941, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');

UPDATE `conditions` SET `condition_entry` = 8 WHERE `condition_entry` = 1719;
UPDATE `creature_loot_template` SET `condition_id` = 8 WHERE `condition_id` = 1719;
UPDATE `gameobject_loot_template` SET `condition_id` = 8 WHERE `condition_id` = 1719;
UPDATE `skinning_loot_template` SET `condition_id` = 8 WHERE `condition_id` = 1719;
UPDATE `reference_loot_template` SET `condition_id` = 8 WHERE `condition_id` = 1719;
UPDATE `gossip_menu` SET `condition_id` = 8 WHERE `condition_id` = 1719;
UPDATE `gossip_menu_option` SET `condition_id` = 8 WHERE `condition_id` = 1719;
UPDATE `npc_vendor` SET `condition_id` = 8 WHERE `condition_id` = 1719;


-- Correct OfferRewardText for quest Nether-lace Garment (1946). Thanks Ghurok.
UPDATE `quest_template` SET `OfferRewardText`='Here is your nether-lace, $N. It is both comfortable and durable, and holds the magic of the laughing sisters\' hair.$B$BEnjoy, and if you find it amenable, please mention so to Deino. She is a mage on whose good side I wish to stay...' WHERE `entry`=1946;

-- Item Westfall Stew Recipe (2832) correct page_text. Thanks Ghurok.
UPDATE `page_text` SET `text`='Westfall Stew$B$B3 parts Stringy Vulture Meat$B3 Goretusk Snouts$B3 Murloc Eyes$B3 Okra$B$BMix together and bring to a boil. Let simmer for at least two hours before serving.' WHERE `entry`=213;

DELETE FROM `gossip_menu_option` WHERE `menu_id` IN (1366, 1365);
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_script_id`, `condition_id`) VALUES
(1366, 0, 'What happened to him in the first place? When I... encountered him, he was rather malicious.', 1, 1, 1365, 0, 0),
(1365, 0, 'I possess part of Eranikus\' essence. What do you want with it... or with me?', 1, 1, 1364, 0, 0);

-- Correct page_text for item The Collector's Schedule (2223). Thanks Ghurok.
UPDATE `page_text` SET `text`='Below is the process and schedule of Defias gold collection from the mines of Elwynn to our headquarters in Westfall.$B$BCollection Schedule:$B$BSunday: 12:30pm$BWednesday: 12:30pm$B$BBy each specified day, gold gained from the Elwynn mines will be gathered at the Brackwell pumpkin patch. The agent in charge of these gatherings, \"The Collector,\" will be known by the engraved ring he possesses. A ring I gave him. ' WHERE `entry`=79;
UPDATE `page_text` SET `text`='A party from Defias headquarters will contact the Collector, after which he will transfer the gathered gold.$B$BBe sure this process is performed without fail and with utmost discretion. The Collector is responsible for the transfer of gold, but ultimately it is the responsibility of each member of the Defias Brotherhood to ensure that his role is acted out with attention and discipline. ' WHERE `entry`=250;
UPDATE `page_text` SET `text`='Remember, my brothers, we were once proud craftsmen. We\'ll perform our current duties with the same precision we used in our past trade.$B$B-EVC ' WHERE `entry`=251;

-- Correct page_text for item Deathstalker Report (3252). Thanks Ghurok.

UPDATE `page_text` SET `text`='Agents commenced sweep, finding significant worg presence. Recommend hunting squads dispatched to reduce this threat.$B$BUndead gnolls were found at the farm steading dubbed The Dead Field. Their purpose at the farm is not known, though their movements and level of readiness suggest imminent military action. In the time they were observed, no notable leaders were found among the gnolls. It is assumed they await the arrival of leadership or reinforcements. ' WHERE `entry`=381;
UPDATE `page_text` SET `text`='Continuing the sweep, our agents were detained at Ivar\'s farm. Ivar, most of his family and his workers had succumbed to the Scourge and become its minions.$B$BOur agents were attacked and although successful in defeating their ambushers, they sustained serious injuries, particularly agent Quinn. ' WHERE `entry`=382;
UPDATE `page_text` SET `next_page`=386, `text`='A defensive position was taken in Ivar\'s old house, and while Rane kept watch for future attacks, Erland continued the reconnaissance mission.$B$BErland was then pinned by Worgs in a northern orchard, only escaping with the aid of another Forsaken agent. That agent is the bearer of this report. ' WHERE `entry`=383;

DELETE FROM `creature_addon` WHERE `guid` IN ( 88434, 88435);
INSERT INTO `creature_addon` VALUES (88435, 0, 0, 0, 0, 36, 0, '18950'); -- attack
INSERT INTO `creature_addon` VALUES (88434, 0, 0, 0, 0, 36, 0, '18950'); -- attack

-- Adds addon to Instructor Razuvious who should sheath his sword
-- Source: http://www.youtube.com/watch?v=PQ88MOZ-gGk
DELETE FROM `creature_addon` WHERE `guid` = 88460;
INSERT INTO `creature_addon` VALUES (88460, 0, 0, 0, 0, 0, 0, '18950'); -- weapon sheathed
-- Updated weapon slot to prevent NPC sword to point upward when sheathed
UPDATE `creature_equip_template_raw` SET `equipslot1` = 1 WHERE `entry` = 985;

UPDATE `creature_template` SET `mechanic_immune_mask` = `mechanic_immune_mask`|(64+1024) WHERE `entry` = 13021;
DELETE FROM `creature_template_addon` WHERE entry = 10740;
INSERT INTO `creature_template_addon` VALUES (10740, 0, 7, 0, 0, 0, 0, '');

UPDATE `quest_template` SET `Details` = 'Oh, to be at sea once again! To feel the kiss of the wind, and to have the waves rock me like my blessed mother, long ago!$B$BOh, I wish I had your fortune, good $c, for I see the sea in your future!$B$BIt\'s my job to tell eager souls of the land of Kalimdor, the land of opportunity! If you\'re willing to try your luck across the sea, then take a ship from here to the lovely port of Theramore. Speak there with my partner, the elf, Fiora Longears.$B$BShe\'ll start you on your Kalimdor adventure!', `Objectives` = 'Speak with Fiora Longears on the docks at Theramore in Dustwallow Marsh.' WHERE `entry` = 1132;


-- Added gossip menus to the following creatures based on UDB data, also fixed npcflag when needed
-- Gossips were checked to prevent linking to a TBC/WotLK gossip
-- Removed unneeded npc_gossips
-- This should greatly decrease the number of broken quests, events or scripts due to missing gossip menus
-- Source: UDB
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 64 WHERE `entry` = 5882; -- Pephredo
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 64 WHERE `entry` = 5883; -- Enyo
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 64 WHERE `entry` = 5884; -- Mai'ah
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 64 WHERE `entry` = 5885; -- Deino
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 64 WHERE `entry` = 7311; -- Uthel'nay
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 83 WHERE `entry` = 6491; -- Spirit Healer
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 141 WHERE `entry` = 3170; -- Kaplak
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 264 WHERE `entry` = 2238; -- Tog'thar
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 268 WHERE `entry` = 6119; -- Tog Rustsprocket
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 342 WHERE `entry` = 6272; -- Innkeeper Janene
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 342 WHERE `entry` = 6740; -- Innkeeper Allison
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 342 WHERE `entry` = 8931; -- Innkeeper Heather
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 344 WHERE `entry` = 6746; -- Innkeeper Pala
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 345 WHERE `entry` = 1464; -- Innkeeper Helbrek
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 345 WHERE `entry` = 5111; -- Innkeeper Firebrew
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 349 WHERE `entry` = 6791; -- Innkeeper Wiley
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 349 WHERE `entry` = 6807; -- Innkeeper Skindle
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 349 WHERE `entry` = 11118; -- Innkeeper Vizzie
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 381 WHERE `entry` = 917; -- Keryn Sylvius
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 410 WHERE `entry` = 1234; -- Hogral Bakkan
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 436 WHERE `entry` = 3599; -- Jannok Breezesong
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 523 WHERE `entry` = 3169; -- Tarshaw Jaggedscar
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 562 WHERE `entry` = 7172; -- Lore Keeper of Norgannon
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 597 WHERE `entry` = 5164; -- Grumnus Steelshaper
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 643 WHERE `entry` = 5566; -- Tannysa
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 648 WHERE `entry` = 1292; -- Maris Granger
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 655 WHERE `entry` = 3063; -- Krang Stonehoof
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 660 WHERE `entry` = 5513; -- Gelman Stonehand
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 681 WHERE `entry` = 1309; -- Wynne Larson
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 681 WHERE `entry` = 1310; -- Evan Larson
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 681 WHERE `entry` = 1314; -- Duncan Cullen
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 681 WHERE `entry` = 1318; -- Jessara Cordell
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 684 WHERE `entry` = 1347; -- Alexandra Bolero
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 685 WHERE `entry` = 1257; -- Keldric Boucher
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 685 WHERE `entry` = 1287; -- Marda Weller
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 685 WHERE `entry` = 1289; -- Gunther Weller
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 685 WHERE `entry` = 1294; -- Aldric Moore
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 685 WHERE `entry` = 1301; -- Julia Gallina
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 685 WHERE `entry` = 3518; -- Thomas Miller
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 685 WHERE `entry` = 4981; -- Ben Trias
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 686 WHERE `entry` = 1275; -- Kyra Boucher
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 686 WHERE `entry` = 1295; -- Lara Moore
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 686 WHERE `entry` = 1297; -- Lina Stover
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 687 WHERE `entry` = 1286; -- Edna Mullby
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 688 WHERE `entry` = 1320; -- Seoman Griffith
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 688 WHERE `entry` = 1321; -- Alyssa Griffith
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 688 WHERE `entry` = 1323; -- Osric Strang
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 688 WHERE `entry` = 1333; -- Gerik Koen
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 688 WHERE `entry` = 5483; -- Erika Tate
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 688 WHERE `entry` = 5565; -- Jillian Tanner
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 689 WHERE `entry` = 1341; -- Wilhelm Strang
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 692 WHERE `entry` = 1351; -- Brother Cassius
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 693 WHERE `entry` = 5512; -- Kaita Deepforge
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 693 WHERE `entry` = 5514; -- Brooke Stonebraid
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 698 WHERE `entry` = 5519; -- Billibub Cogspinner
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 699 WHERE `entry` = 2455; -- Olivia Burnside
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 699 WHERE `entry` = 2456; -- Newton Burnside
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 699 WHERE `entry` = 2457; -- John Burnside
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 701 WHERE `entry` = 1305; -- Jarel Moor
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 702 WHERE `entry` = 1327; -- Reese Langston
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 703 WHERE `entry` = 1303; -- Felicia Gump
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 840 WHERE `entry` = 7572; -- Fallen Hero of the Horde
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 900 WHERE `entry` = 5594; -- Alchemist Pestlezugg
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 940 WHERE `entry` = 7607; -- Weegli Blastfuse
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 941 WHERE `entry` = 7604; -- Sergeant Bly
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 942 WHERE `entry` = 7763; -- Curgle Cranklehop
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 980 WHERE `entry` = 3413; -- Sovik
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 1041 WHERE `entry` = 7232; -- Borgus Steelhand
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 1042 WHERE `entry` = 7231; -- Kelgruk Bloodaxe
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 1043 WHERE `entry` = 7230; -- Shayis Steelfury
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 1080 WHERE `entry` = 7998; -- Blastmaster Emi Shortfuse
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 1100 WHERE `entry` = 4963; -- Mikhail
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 1120 WHERE `entry` = 7683; -- Alessandro Luca
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 1142 WHERE `entry` = 7804; -- Trenton Lighthammer
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 1161 WHERE `entry` = 4944; -- Captain Garran Vimes
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 1201 WHERE `entry` = 3836; -- Mountaineer Pebblebitty
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 1262 WHERE `entry` = 836; -- Durnan Furcutter
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 1281 WHERE `entry` = 5901; -- Islen Waterseer
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 1290 WHERE `entry` = 5814; -- Innkeeper Thulbek
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 1290 WHERE `entry` = 6928; -- Innkeeper Grosk
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 1290 WHERE `entry` = 6929; -- Innkeeper Gryshka
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 1290 WHERE `entry` = 6930; -- Innkeeper Karakul
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 1290 WHERE `entry` = 7731; -- Innkeeper Jayka
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 1290 WHERE `entry` = 9356; -- Innkeeper Shul'kar
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 1290 WHERE `entry` = 12196; -- Innkeeper Kaylisk
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 1291 WHERE `entry` = 295; -- Innkeeper Farley
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 1291 WHERE `entry` = 2352; -- Innkeeper Anderson
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 1291 WHERE `entry` = 6727; -- Innkeeper Brianna
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 1291 WHERE `entry` = 6790; -- Innkeeper Trelayne
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 1293 WHERE `entry` = 6736; -- Innkeeper Keldamyr
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 1294 WHERE `entry` = 6747; -- Innkeeper Kauth
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 1296 WHERE `entry` = 2388; -- Innkeeper Shay
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 1296 WHERE `entry` = 5688; -- Innkeeper Renee
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 1296 WHERE `entry` = 6739; -- Innkeeper Bates
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 1296 WHERE `entry` = 6741; -- Innkeeper Norman
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 1297 WHERE `entry` = 1247; -- Innkeeper Belm
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 1297 WHERE `entry` = 6734; -- Innkeeper Hearthstove
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 1301 WHERE `entry` = 6568; -- Vizzklick
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 1362 WHERE `entry` = 8399; -- Nyrill
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 1403 WHERE `entry` = 4217; -- Mathrengyl Bearwalker
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 1404 WHERE `entry` = 7771; -- Marvon Rivetseeker
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 1421 WHERE `entry` = 7773; -- Marli Wishrunner
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 1422 WHERE `entry` = 7772; -- Kalin Windflight
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 1467 WHERE `entry` = 7406; -- Oglethorpe Obnoticus
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 1468 WHERE `entry` = 7944; -- Tinkmaster Overspark
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 1470 WHERE `entry` = 8579; -- Yeh'kinya
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 1482 WHERE `entry` = 7916; -- Erelas Ambersky
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 1503 WHERE `entry` = 459; -- Drusilla La Salle
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 1581 WHERE `entry` = 6735; -- Innkeeper Saelienne
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 1581 WHERE `entry` = 7736; -- Innkeeper Shyria
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 1581 WHERE `entry` = 16458; -- Innkeeper Faralia
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 1601 WHERE `entry` = 6826; -- Talvash del Kissel
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 1621 WHERE `entry` = 8962; -- Hilary
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 1622 WHERE `entry` = 8965; -- Shawn
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 1623 WHERE `entry` = 3309; -- Karus
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 1623 WHERE `entry` = 3320; -- Soran
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 1624 WHERE `entry` = 3314; -- Urtharo
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 1625 WHERE `entry` = 8509; -- Squire Maltrake
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 1628 WHERE `entry` = 7853; -- Scooty
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 1629 WHERE `entry` = 5769; -- Arch Druid Hamuul Runetotem
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 1630 WHERE `entry` = 3516; -- Arch Druid Fandral Staghelm
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 1631 WHERE `entry` = 963; -- Deputy Rainer
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 1632 WHERE `entry` = 1340; -- Mountaineer Kadrell
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 1641 WHERE `entry` = 8380; -- Captain Vanessa Beltis
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 1662 WHERE `entry` = 9047; -- Jenal
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 1663 WHERE `entry` = 8888; -- Franclorn Forgewright
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 1701 WHERE `entry` = 9087; -- Bashana Runetotem
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 1721 WHERE `entry` = 9099; -- Sraaz
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 1761 WHERE `entry` = 7766; -- Tyrion
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 1844 WHERE `entry` = 9467; -- Miblon Snarltooth
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 1946 WHERE `entry` = 9038; -- Seeth'rel
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 1947 WHERE `entry` = 9039; -- Doom'rel
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 1961 WHERE `entry` = 8737; -- Linken
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 1962 WHERE `entry` = 9545; -- Grim Patron
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 1963 WHERE `entry` = 9547; -- Guzzling Patron
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 1965 WHERE `entry` = 7852; -- Pratt McGrubben
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 1966 WHERE `entry` = 9554; -- Hammered Patron
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 1966 WHERE `entry` = 10043; -- Ribbly's Crony
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 1969 WHERE `entry` = 9564; -- Frezza
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 1969 WHERE `entry` = 12137; -- Squibby Overspeck
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 1970 WHERE `entry` = 9543; -- Ribbly Screwspigot
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 1971 WHERE `entry` = 3149; -- Nez'raz
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 1971 WHERE `entry` = 9566; -- Zapetta
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 2061 WHERE `entry` = 9563; -- Ragged John
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 2063 WHERE `entry` = 9598; -- Arei
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 2076 WHERE `entry` = 9500; -- Mistress Nagmara
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 2081 WHERE `entry` = 9618; -- Karna Remtravel
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 2101 WHERE `entry` = 3150; -- Hin Denburg
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 2184 WHERE `entry` = 9117; -- J.D. Collie
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 2188 WHERE `entry` = 9619; -- Torwa Pathfinder
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 2242 WHERE `entry` = 5411; -- Krinkle Goodsteel
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 2283 WHERE `entry` = 9502; -- Phalanx
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 2304 WHERE `entry` = 5149; -- Brandur Ironhammer
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 2381 WHERE `entry` = 5172; -- Briarthorn
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 2383 WHERE `entry` = 4563; -- Kaal Soulreaper
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 2404 WHERE `entry` = 4155; -- Idriana
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 2405 WHERE `entry` = 9616; -- Laris Geardawdle
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 2422 WHERE `entry` = 9272; -- Spark Nilminer
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 2423 WHERE `entry` = 9271; -- Hol'anyee Marshal
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 2424 WHERE `entry` = 9270; -- Williden Marshal
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 2464 WHERE `entry` = 9676; -- Tink Sprocketwhistle
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 2562 WHERE `entry` = 10216; -- Gubber Blump
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 2601 WHERE `entry` = 2788; -- Apprentice Kryten
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 2602 WHERE `entry` = 10267; -- Tinkee Steamboil
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 2603 WHERE `entry` = 6266; -- Menara Voidrender
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 2685 WHERE `entry` = 2670; -- Xizk Goodstitch
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 2801 WHERE `entry` = 1154; -- Marek Ironheart
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 2831 WHERE `entry` = 1156; -- Vyrin Swiftwind
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 2852 WHERE `entry` = 9997; -- Spraggle Frock
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 2883 WHERE `entry` = 3429; -- Thork
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 2890 WHERE `entry` = 7733; -- Innkeeper Fizzgrimble
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 2910 WHERE `entry` = 3143; -- Gornek
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 2911 WHERE `entry` = 10667; -- Chromie
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 2912 WHERE `entry` = 6252; -- Acolyte Magaz
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 2913 WHERE `entry` = 6254; -- Acolyte Wytula
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 2916 WHERE `entry` = 6546; -- Tabetha
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 2921 WHERE `entry` = 10739; -- Mulgris Deepriver
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 2943 WHERE `entry` = 10782; -- Royal Factor Bathrilor
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 2952 WHERE `entry` = 8403; -- Jeremiah Payson
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 2961 WHERE `entry` = 10778; -- Janice Felstone
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 2984 WHERE `entry` = 10637; -- Malyfous Darkhammer
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 3042 WHERE `entry` = 10838; -- Commander Ashlam Valorfist
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 3043 WHERE `entry` = 10917; -- Aurius
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 3063 WHERE `entry` = 10740; -- Awbee
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 3070 WHERE `entry` = 7868; -- Sarah Tanner
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 3072 WHERE `entry` = 7870; -- Caryssia Moonhunter
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 3074 WHERE `entry` = 10922; -- Greta Mosshoof
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 3128 WHERE `entry` = 11019; -- Jessir Moonbow
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 3129 WHERE `entry` = 11016; -- Captured Arko'narin
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 3131 WHERE `entry` = 10300; -- Ranshalla
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 3142 WHERE `entry` = 9116; -- Eridan Bluewind
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 3161 WHERE `entry` = 3362; -- Ogunaro Wolfrunner
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 3162 WHERE `entry` = 7952; -- Zjolnir
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 3181 WHERE `entry` = 11038; -- Caretaker Alen
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 3182 WHERE `entry` = 11145; -- Myolor Sunderfury
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 3184 WHERE `entry` = 11053; -- High Priestess MacDonnell
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 3185 WHERE `entry` = 4730; -- Lelanai
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 3186 WHERE `entry` = 7955; -- Milli Featherwhistle
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 3187 WHERE `entry` = 11176; -- Krathok Moltenfist
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 3201 WHERE `entry` = 11146; -- Ironus Coldsteel
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 3202 WHERE `entry` = 11178; -- Borgosh Corebender
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 3203 WHERE `entry` = 11177; -- Okothos Ironrager
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 3310 WHERE `entry` = 11216; -- Eva Sarkhoff
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 3362 WHERE `entry` = 11277; -- Caer Darrow Citizen
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 3363 WHERE `entry` = 11279; -- Caer Darrow Guardsman
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 3363 WHERE `entry` = 11281; -- Caer Darrow Horseman
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 3372 WHERE `entry` = 11286; -- Magistrate Marduke
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 3381 WHERE `entry` = 11316; -- Joseph Dirte
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 3382 WHERE `entry` = 10839; -- Argent Officer Garush
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 3383 WHERE `entry` = 10840; -- Argent Officer Pureheart
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 3421 WHERE `entry` = 10856; -- Argent Quartermaster Hasana
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 3441 WHERE `entry` = 10857; -- Argent Quartermaster Lightspark
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 3461 WHERE `entry` = 11536; -- Quartermaster Miranda Breechlock
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 3481 WHERE `entry` = 11548; -- Loh'atu
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 3602 WHERE `entry` = 11609; -- Alexia Ironknife
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 3603 WHERE `entry` = 11610; -- Kirsta Deepshadow
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 3622 WHERE `entry` = 11554; -- Grazle
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 3625 WHERE `entry` = 11555; -- Gorn One Eye
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 3626 WHERE `entry` = 11557; -- Meilosh
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 3643 WHERE `entry` = 11397; -- Nara Meideros
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 3644 WHERE `entry` = 3706; -- Tai'jin
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 3646 WHERE `entry` = 11407; -- Var'jun
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 3647 WHERE `entry` = 10475; -- Scholomance Student
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 3648 WHERE `entry` = 10432; -- Vectus
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 3649 WHERE `entry` = 10433; -- Marduk Blackpool
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 3651 WHERE `entry` = 11035; -- Betina Bigglezink
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 3661 WHERE `entry` = 11833; -- Rahauro
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 3664 WHERE `entry` = 4949; -- Thrall
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 3761 WHERE `entry` = 10301; -- Jaron Stoneshaper
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 3802 WHERE `entry` = 9298; -- Donova Snowden
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 3821 WHERE `entry` = 11616; -- Nathaniel Dumah
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 3841 WHERE `entry` = 12136; -- Snurk Bucksquick
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 3861 WHERE `entry` = 10936; -- Joseph Redpath
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 3864 WHERE `entry` = 11063; -- Carlin Redpath
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 3901 WHERE `entry` = 11802; -- Dendrite Starblaze
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 3921 WHERE `entry` = 3033; -- Turak Runetotem
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 3922 WHERE `entry` = 10945; -- Davil Crokford
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 3924 WHERE `entry` = 4218; -- Denatharion
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 3925 WHERE `entry` = 5505; -- Theridran
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 3926 WHERE `entry` = 3064; -- Gennia Runetotem
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 3962 WHERE `entry` = 11878; -- Nathanos Blightcaller
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 3985 WHERE `entry` = 10431; -- Gregor Greystone
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 4004 WHERE `entry` = 384; -- Katie Hunter
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 4004 WHERE `entry` = 1460; -- Unger Statforth
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 4004 WHERE `entry` = 2357; -- Merideth Carlson
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 4004 WHERE `entry` = 4885; -- Gregor MacVince
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 4005 WHERE `entry` = 4731; -- Zachariah Post
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 4006 WHERE `entry` = 3685; -- Harb Clawhoof
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 4009 WHERE `entry` = 3601; -- Dazalar
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 4010 WHERE `entry` = 3352; -- Ormak Grimshot
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 4011 WHERE `entry` = 3038; -- Kary Thunderhorn
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 4012 WHERE `entry` = 3065; -- Yaw Sharpmane
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 4017 WHERE `entry` = 3171; -- Thotar
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 4018 WHERE `entry` = 4732; -- Randal Hunter
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 4019 WHERE `entry` = 4753; -- Jartsam
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 4020 WHERE `entry` = 4752; -- Kildar
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 4021 WHERE `entry` = 3690; -- Kar Stormsinger
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 4022 WHERE `entry` = 7953; -- Xar'Ti
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 4023 WHERE `entry` = 3039; -- Holt Thunderhorn
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 4043 WHERE `entry` = 3448; -- Tonga Runetotem
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 4044 WHERE `entry` = 1569; -- Shadow Priest Sarvis
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 4046 WHERE `entry` = 2079; -- Conservator Ilthalaine
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 4086 WHERE `entry` = 738; -- Private Thorsen
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 4090 WHERE `entry` = 1243; -- Hegnar Rumbleshot
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 4103 WHERE `entry` = 3066; -- Narm Skychaser
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 4104 WHERE `entry` = 3173; -- Swart
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 4106 WHERE `entry` = 523; -- Thor
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 4107 WHERE `entry` = 491; -- Quartermaster Lewis
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 4281 WHERE `entry` = 2226; -- Karos Razok
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 4283 WHERE `entry` = 4556; -- Gordon Wendham
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 4301 WHERE `entry` = 3841; -- Caylais Moonfeather
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 4302 WHERE `entry` = 3838; -- Vesprystus
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 4303 WHERE `entry` = 10118; -- Nessa Shadowsong
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 4304 WHERE `entry` = 4200; -- Laird
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 4305 WHERE `entry` = 4241; -- Mydrannul
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 4306 WHERE `entry` = 2859; -- Gyll
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 4307 WHERE `entry` = 4551; -- Michael Garrett
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 4322 WHERE `entry` = 2057; -- Huldar
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 4323 WHERE `entry` = 3615; -- Devrak
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 4323 WHERE `entry` = 5637; -- Roetten Stonehammer
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 4324 WHERE `entry` = 3483; -- Jahan Hawkwing
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 4326 WHERE `entry` = 2995; -- Tal
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 4341 WHERE `entry` = 3489; -- Zargh
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 4342 WHERE `entry` = 3310; -- Doras
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 4343 WHERE `entry` = 12658; -- Adam Lind
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 4358 WHERE `entry` = 1572; -- Thorgrum Borrelson
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 4359 WHERE `entry` = 4256; -- Golnir Bouldertoe
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 4360 WHERE `entry` = 1573; -- Gryth Thurden
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 4361 WHERE `entry` = 1681; -- Brock Stoneseeker
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 4468 WHERE `entry` = 5484; -- Brother Benjamin
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 4469 WHERE `entry` = 5491; -- Arthur the Faithful
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 4470 WHERE `entry` = 5492; -- Katherine the Pure
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 4471 WHERE `entry` = 928; -- Lord Grayson Shadowbreaker
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 4474 WHERE `entry` = 5515; -- Einris Brightspear
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 4484 WHERE `entry` = 5498; -- Elsharin
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 4485 WHERE `entry` = 5497; -- Jennea Cannon
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 4486 WHERE `entry` = 331; -- Maginor Dumas
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 4502 WHERE `entry` = 918; -- Osborne the Night Man
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 4503 WHERE `entry` = 461; -- Demisette Cloyce
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 4504 WHERE `entry` = 5496; -- Sandahl
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 4505 WHERE `entry` = 5495; -- Ursula Deline
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 4506 WHERE `entry` = 3406; -- Xor'juul
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 4506 WHERE `entry` = 3407; -- Sian'dur
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 4507 WHERE `entry` = 5506; -- Maldryn
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 4508 WHERE `entry` = 5504; -- Sheldras Moontree
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 4516 WHERE `entry` = 3344; -- Kardris Dreamseeker
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 4524 WHERE `entry` = 3040; -- Urek Thunderhorn
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 4525 WHERE `entry` = 3042; -- Sark Ragetotem
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 4526 WHERE `entry` = 3041; -- Torm Ragetotem
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 4527 WHERE `entry` = 3043; -- Ker Ragetotem
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 4528 WHERE `entry` = 3030; -- Siln Skychaser
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 4529 WHERE `entry` = 3032; -- Beram Skychaser
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 4530 WHERE `entry` = 3031; -- Tigor Skychaser
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 4534 WHERE `entry` = 3047; -- Archmage Shymm
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 4537 WHERE `entry` = 4568; -- Anastasia Hartwell
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 4538 WHERE `entry` = 4567; -- Pierce Shackleton
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 4539 WHERE `entry` = 4566; -- Kaelystia Hatebringer
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 4549 WHERE `entry` = 5115; -- Daera Brightspear
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 4550 WHERE `entry` = 5116; -- Olmin Burningbeard
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 4551 WHERE `entry` = 5117; -- Regnus Thundergranite
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 4552 WHERE `entry` = 944; -- Marryk Nurribit
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 4552 WHERE `entry` = 5144; -- Bink
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 4552 WHERE `entry` = 5145; -- Juli Stormkettle
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 4552 WHERE `entry` = 5146; -- Nittlebur Sparkfizzle
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 4553 WHERE `entry` = 7312; -- Dink
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 4562 WHERE `entry` = 5166; -- Ormyr Flinteye
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 4568 WHERE `entry` = 5114; -- Bilban Tosslespanner
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 4569 WHERE `entry` = 1901; -- Kelstrum Stonebreaker
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 4570 WHERE `entry` = 5113; -- Kelv Sternhammer
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 4571 WHERE `entry` = 4219; -- Fylerian Nightwing
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 4576 WHERE `entry` = 4163; -- Syurna
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 4576 WHERE `entry` = 4214; -- Erion Shadewhisper
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 4576 WHERE `entry` = 4215; -- Anishar
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 4576 WHERE `entry` = 4794; -- Morgan Stern
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 4601 WHERE `entry` = 12866; -- Myriam Moonsinger
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 4606 WHERE `entry` = 3034; -- Sheal Runetotem
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 4607 WHERE `entry` = 3036; -- Kym Wildmane
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 4609 WHERE `entry` = 4564; -- Luther Pickman
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 4641 WHERE `entry` = 3172; -- Dhugru Gorelust
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 4645 WHERE `entry` = 3059; -- Harutt Thunderhorn
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 4647 WHERE `entry` = 3061; -- Lanka Farshot
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 4648 WHERE `entry` = 3154; -- Jen'shan
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 4649 WHERE `entry` = 914; -- Ander Germaine
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 4649 WHERE `entry` = 5479; -- Wu Shen
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 4649 WHERE `entry` = 5480; -- Ilsa Corbin
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 4650 WHERE `entry` = 911; -- Llane Beshere
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 4654 WHERE `entry` = 2124; -- Isabella
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 4657 WHERE `entry` = 1404; -- Kragg
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 4659 WHERE `entry` = 915; -- Jorik Kerridan
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 4660 WHERE `entry` = 198; -- Khelden Bremen
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 4661 WHERE `entry` = 328; -- Zaldimar Wefhellt
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 4662 WHERE `entry` = 8140; -- Brother Karman
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 4663 WHERE `entry` = 925; -- Brother Sammuel
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 4664 WHERE `entry` = 927; -- Brother Wilhelm
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 4666 WHERE `entry` = 376; -- High Priestess Laurena
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 4666 WHERE `entry` = 377; -- Priestess Josetta
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 4666 WHERE `entry` = 5489; -- Brother Joshua
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 4667 WHERE `entry` = 906; -- Maximillian Crowe
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 4667 WHERE `entry` = 5173; -- Alexander Calder
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 4675 WHERE `entry` = 895; -- Thorgas Grimson
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 4676 WHERE `entry` = 916; -- Solm Hargrin
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 4677 WHERE `entry` = 1232; -- Azar Stronghammer
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 4678 WHERE `entry` = 926; -- Bromos Grummner
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 4680 WHERE `entry` = 837; -- Branstock Khalder
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 4680 WHERE `entry` = 1226; -- Maxan Anvol
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 4680 WHERE `entry` = 5141; -- Theodrus Frostbeard
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 4680 WHERE `entry` = 5142; -- Braenna Flintcrag
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 4680 WHERE `entry` = 5143; -- Toldren Deepiron
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 4680 WHERE `entry` = 11406; -- High Priest Rohan
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 4681 WHERE `entry` = 460; -- Alamar Grimm
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 4682 WHERE `entry` = 5612; -- Gimrizz Shadowcog
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 4683 WHERE `entry` = 1229; -- Granis Swiftaxe
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 4684 WHERE `entry` = 912; -- Thran Khorman
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 4685 WHERE `entry` = 1228; -- Magis Sparkmantle
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 4687 WHERE `entry` = 12042; -- Loganaar
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 4688 WHERE `entry` = 3597; -- Mardant Strongoak
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 4690 WHERE `entry` = 3594; -- Frahun Shadewhisper
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 4691 WHERE `entry` = 3595; -- Shanda
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 4691 WHERE `entry` = 3600; -- Laurna Morninglight
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 4691 WHERE `entry` = 4090; -- Astarii Starseeker
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 4691 WHERE `entry` = 4091; -- Jandria
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 4691 WHERE `entry` = 4092; -- Lariia
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 4691 WHERE `entry` = 11401; -- Priestess Alathea
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 4695 WHERE `entry` = 3596; -- Ayanna Everstride
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 4697 WHERE `entry` = 3593; -- Alyissia
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 4697 WHERE `entry` = 3598; -- Kyra Windblade
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 4697 WHERE `entry` = 4087; -- Arias'ta Bladesinger
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 4697 WHERE `entry` = 7315; -- Darnath Bladesinger
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 4743 WHERE `entry` = 10304; -- Aurora Skycaller
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 4783 WHERE `entry` = 543; -- Nalesette Wildbringer
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 4783 WHERE `entry` = 2878; -- Peria Lamenur
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 4783 WHERE `entry` = 2879; -- Karrina Mekenda
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 4783 WHERE `entry` = 3306; -- Keldas
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 4783 WHERE `entry` = 3545; -- Claude Erksine
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 4783 WHERE `entry` = 3620; -- Harruk
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 4783 WHERE `entry` = 3622; -- Grokor
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 4783 WHERE `entry` = 3624; -- Zudd
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 4783 WHERE `entry` = 3688; -- Reban Freerunner
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 4783 WHERE `entry` = 3698; -- Bolyun
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 4783 WHERE `entry` = 4320; -- Caelyb
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 4783 WHERE `entry` = 10086; -- Hesuwa Thunderhorn
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 4783 WHERE `entry` = 10088; -- Xao'tsu
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 4783 WHERE `entry` = 10089; -- Silvaria
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 4783 WHERE `entry` = 10090; -- Belia Thundergranite
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 4821 WHERE `entry` = 4165; -- Elissa Dumas
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 4822 WHERE `entry` = 2485; -- Larimaine Purdue
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 4823 WHERE `entry` = 2489; -- Milstaff Stormeye
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 4826 WHERE `entry` = 5958; -- Thuul
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 4827 WHERE `entry` = 2492; -- Lexington Mortaim
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 4844 WHERE `entry` = 9584; -- Jalane Ayrole
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 4863 WHERE `entry` = 10219; -- Gwennyth Bly'Leggonde
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 4941 WHERE `entry` = 332; -- Master Mathias Shaw
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 5021 WHERE `entry` = 13257; -- Murgot Deepforge
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 5065 WHERE `entry` = 13278; -- Duke Hydraxis
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 5102 WHERE `entry` = 11801; -- Rabine Saturna
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 5103 WHERE `entry` = 13220; -- Layo Starstrike
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 5109 WHERE `entry` = 13322; -- Hydraxian Honor Guard
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 5123 WHERE `entry` = 13417; -- Sagorne Creststrider
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 5124 WHERE `entry` = 13176; -- Smith Regzar
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 5146 WHERE `entry` = 13437; -- Wing Commander Ichman
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 5147 WHERE `entry` = 13439; -- Wing Commander Vipore
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 5148 WHERE `entry` = 13438; -- Wing Commander Slidore
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 5241 WHERE `entry` = 12096; -- Stormpike Quartermaster
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 5281 WHERE `entry` = 13577; -- Stormpike Ram Rider Commander
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 5283 WHERE `entry` = 13617; -- Stormpike Stable Master
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 5301 WHERE `entry` = 4967; -- Archmage Tervosh
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 5321 WHERE `entry` = 13717; -- Centaur Pariah
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 5348 WHERE `entry` = 2916; -- Historian Karnik
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 5441 WHERE `entry` = 13840; -- Warmaster Laggrond
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 5442 WHERE `entry` = 13841; -- Lieutenant Haggerdin
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 5461 WHERE `entry` = 5054; -- Krumn
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 5482 WHERE `entry` = 10929; -- Haleh
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 5483 WHERE `entry` = 716; -- Barnil Stonepot
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 5503 WHERE `entry` = 8496; -- Liv Rizzlefix
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 5541 WHERE `entry` = 9544; -- Yuka Screwspigot
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 5602 WHERE `entry` = 11491; -- Old Ironbark
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 5602 WHERE `entry` = 14241; -- Ironbark the Redeemed
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 5641 WHERE `entry` = 6122; -- Gakin the Darkbinder
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 5667 WHERE `entry` = 14338; -- Knot Thimblejack
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 5708 WHERE `entry` = 14353; -- Mizzle the Crafty
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 5709 WHERE `entry` = 14354; -- Pusillin
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 5721 WHERE `entry` = 14322; -- Stomper Kreeg
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 5729 WHERE `entry` = 14358; -- Shen'dralar Ancient
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 5736 WHERE `entry` = 11486; -- Prince Tortheldrin
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 5737 WHERE `entry` = 14369; -- Shen'dralar Zealot
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 5739 WHERE `entry` = 14325; -- Captain Kromcrush
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 5742 WHERE `entry` = 14324; -- Cho'Rush the Observer
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 5746 WHERE `entry` = 11441; -- Gordok Brute
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 5746 WHERE `entry` = 11444; -- Gordok Mage-Lord
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 5746 WHERE `entry` = 11445; -- Gordok Captain
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 5746 WHERE `entry` = 11448; -- Gordok Warlock
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 5746 WHERE `entry` = 11450; -- Gordok Reaver
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 5746 WHERE `entry` = 14351; -- Gordok Bushwacker
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 5747 WHERE `entry` = 14368; -- Lorekeeper Lydros
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 5748 WHERE `entry` = 14383; -- Lorekeeper Kildrath
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 5750 WHERE `entry` = 14387; -- Lothos Riftwaker
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 5752 WHERE `entry` = 14392; -- Overlord Runthak
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 5753 WHERE `entry` = 14394; -- Major Mattingly
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 5755 WHERE `entry` = 14381; -- Lorekeeper Javon
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 5756 WHERE `entry` = 14382; -- Lorekeeper Mykos
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 5782 WHERE `entry` = 2198; -- Crier Goodman
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 5782 WHERE `entry` = 10877; -- Courier Hammerfall
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 5782 WHERE `entry` = 10878; -- Herald Moonstalker
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 5782 WHERE `entry` = 10879; -- Harbinger Balthazad
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 5782 WHERE `entry` = 10880; -- Warcaller Gorlach
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 5782 WHERE `entry` = 10881; -- Bluff Runner Windstrider
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 5819 WHERE `entry` = 14305; -- Human Orphan
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 5845 WHERE `entry` = 14469; -- Niby the Almighty
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 5848 WHERE `entry` = 14451; -- Orphan Matron Battlewail
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 5849 WHERE `entry` = 14450; -- Orphan Matron Nightingale
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 5868 WHERE `entry` = 14527; -- Simone the Inconspicuous
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 5869 WHERE `entry` = 14528; -- Precious
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 5902 WHERE `entry` = 1416; -- Grimand Elmore
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 5921 WHERE `entry` = 14508; -- Short John Mithril
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 5941 WHERE `entry` = 14634; -- Lookout Captain Lolo Longstriker
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 5942 WHERE `entry` = 14628; -- Evonice Sootsmoker
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 5963 WHERE `entry` = 14627; -- Hansel Heavyhands
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 5966 WHERE `entry` = 14626; -- Taskmaster Scrange
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 5967 WHERE `entry` = 2941; -- Lanie Reed
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 6023 WHERE `entry` = 4314; -- Gorkas
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 6028 WHERE `entry` = 14721; -- Field Marshal Afrasiabi
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 6037 WHERE `entry` = 14728; -- Rumstag Proudstrider
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 6041 WHERE `entry` = 14722; -- Clavicus Knavingham
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 6042 WHERE `entry` = 14724; -- Bubulo Acerbus
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 6043 WHERE `entry` = 14723; -- Mistina Steelshield
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 6044 WHERE `entry` = 14725; -- Raedon Duskstriker
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 6089 WHERE `entry` = 11192; -- Kilram
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 6090 WHERE `entry` = 11191; -- Lilith the Lithe
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 6091 WHERE `entry` = 11193; -- Seril Scourgebane
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 6092 WHERE `entry` = 14742; -- Zap Farflinger
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 6094 WHERE `entry` = 14743; -- Jhordy Lapforge
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 6161 WHERE `entry` = 14829; -- Yebb Neblegear
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 6162 WHERE `entry` = 10378; -- Omusa Thunderhorn
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 6182 WHERE `entry` = 14823; -- Silas Darkmoon
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 6183 WHERE `entry` = 14828; -- Gelvas Grimegate
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 6184 WHERE `entry` = 14827; -- Burth
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 6186 WHERE `entry` = 14822; -- Sayge
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 6201 WHERE `entry` = 14849; -- Darkmoon Faire Carnie
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 6202 WHERE `entry` = 14847; -- Professor Thaddeus Paleo
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 6223 WHERE `entry` = 14832; -- Kerri Hicks
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 6224 WHERE `entry` = 14833; -- Chronos
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 6225 WHERE `entry` = 14841; -- Rinling
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 6227 WHERE `entry` = 14871; -- Morja
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 6230 WHERE `entry` = 14844; -- Sylannia
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 6231 WHERE `entry` = 14860; -- Flik
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 6233 WHERE `entry` = 14846; -- Lhara
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 6234 WHERE `entry` = 14845; -- Stamp Thunderhorn
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 6235 WHERE `entry` = 14875; -- Molthor
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 6261 WHERE `entry` = 13776; -- Corporal Teeka Bloodsnarl
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 6262 WHERE `entry` = 13777; -- Sergeant Durgen Stormpike
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 6321 WHERE `entry` = 14902; -- Jin'rokh the Breaker
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 6322 WHERE `entry` = 14903; -- Al'tabim the All-Seeing
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 6323 WHERE `entry` = 14983; -- Field Marshal Oslight
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 6341 WHERE `entry` = 14904; -- Maywiki of Zuldazar
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 6343 WHERE `entry` = 15011; -- Wagner Hammerstrike
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 6361 WHERE `entry` = 15021; -- Deathmaster Dwire
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 6381 WHERE `entry` = 14921; -- Rin'wosho the Trader
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 6421 WHERE `entry` = 15077; -- Riggle Bassbait
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 6422 WHERE `entry` = 14910; -- Exzhal
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 6447 WHERE `entry` = 15079; -- Fishbot 5000
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 6463 WHERE `entry` = 14982; -- Lylandris
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 6465 WHERE `entry` = 12197; -- Glordrum Steelbeard
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 6471 WHERE `entry` = 857; -- Donal Osgood
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 6475 WHERE `entry` = 15007; -- Sir Malory Wheeler
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 6513 WHERE `entry` = 15119; -- Barrus
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 6514 WHERE `entry` = 15078; -- Jang
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 6519 WHERE `entry` = 15076; -- Zandalarian Emissary
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 6523 WHERE `entry` = 14733; -- Sentinel Farsong
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 6525 WHERE `entry` = 15174; -- Calandrath
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 6527 WHERE `entry` = 15176; -- Vargus
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 6541 WHERE `entry` = 15191; -- Windcaller Proudhorn
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 6564 WHERE `entry` = 15270; -- Huum Wildmane
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 6565 WHERE `entry` = 7951; -- Zas'Tysh
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 6575 WHERE `entry` = 15303; -- Maxima Blastenheimer
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 6582 WHERE `entry` = 10445; -- Selina Dourman
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 6583 WHERE `entry` = 15306; -- Bor Wildmane
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 6588 WHERE `entry` = 15169; -- Ralo'shan the Eternal Watcher
UPDATE `creature_template` SET `npcflag`= `npcflag`|(1+4), `gossip_menu_id` = 6597 WHERE `entry` = 15351; -- Alliance Brigadier General
UPDATE `creature_template` SET `npcflag`= `npcflag`|(1+4), `gossip_menu_id` = 6598 WHERE `entry` = 15350; -- Horde Warbringer
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 6629 WHERE `entry` = 15471; -- Lieutenant General Andorov
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 6646 WHERE `entry` = 11811; -- Narain Soothfancy
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 6658 WHERE `entry` = 15526; -- Meridith the Mermaiden
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 6685 WHERE `entry` = 2496; -- Baron Revilgaz
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 6763 WHERE `entry` = 15664; -- Metzen the Reindeer
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 6786 WHERE `entry` = 15708; -- Master Sergeant Maclure
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 6796 WHERE `entry` = 15540; -- Windcaller Kaldon
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 6800 WHERE `entry` = 15395; -- Nafien
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 6801 WHERE `entry` = 11558; -- Kernda
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 6803 WHERE `entry` = 15762; -- Officer Lunalight
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 6804 WHERE `entry` = 15763; -- Officer Porterhouse
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 6805 WHERE `entry` = 15764; -- Officer Ironbeard
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 6806 WHERE `entry` = 15766; -- Officer Maloof
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 6821 WHERE `entry` = 15565; -- Elder Stormbrow
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 6823 WHERE `entry` = 15569; -- Elder Goldwell
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 6825 WHERE `entry` = 15577; -- Elder Skychaser
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 6826 WHERE `entry` = 15601; -- Elder Starweave
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 6827 WHERE `entry` = 15605; -- Elder Riversong
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 6829 WHERE `entry` = 15576; -- Elder Winterhoof
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 6831 WHERE `entry` = 15586; -- Elder Dreamseer
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 6837 WHERE `entry` = 10305; -- Umi Rumplesnicker
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 6841 WHERE `entry` = 15871; -- Elder Bronzebeard
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 6866 WHERE `entry` = 15563; -- Elder Bellowrage
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 6880 WHERE `entry` = 15598; -- Elder Bladeswift
UPDATE `creature_template` SET `npcflag`= `npcflag`|(1+4), `gossip_menu_id` = 6917 WHERE `entry` = 15864; -- Valadar Starsong
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 6918 WHERE `entry` = 15895; -- Lunar Festival Harbinger
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 6925 WHERE `entry` = 15499; -- Warden Haro
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 6944 WHERE `entry` = 2299; -- Borgus Stoutarm
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 6944 WHERE `entry` = 10897; -- Sindrayl
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 6944 WHERE `entry` = 12617; -- Khaelyn Steelwing
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 6951 WHERE `entry` = 1432; -- Renato Gallina
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 6981 WHERE `entry` = 16002; -- Colara Dean
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 7034 WHERE `entry` = 16070; -- Garel Redrock
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 7034 WHERE `entry` = 16076; -- Tharl Stonebleeder
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 7045 WHERE `entry` = 16091; -- Dirk Thunderwood
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 7054 WHERE `entry` = 16075; -- Kwee Q. Peddlefeet
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 7070 WHERE `entry` = 16012; -- Mokvar
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 7071 WHERE `entry` = 16013; -- Deliana
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 7084 WHERE `entry` = 16032; -- Falrin Treeshaper
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 7091 WHERE `entry` = 16031; -- Ysida Harmon
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 7096 WHERE `entry` = 16116; -- Archmage Angela Dosantos
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 7098 WHERE `entry` = 16113; -- Father Inigo Montoy
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 7099 WHERE `entry` = 16112; -- Korfax WHERE `entry` = Champion of the Light
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 7100 WHERE `entry` = 16114; -- Scarlet Commander Marjhan
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 7101 WHERE `entry` = 16131; -- Rohan the Assassin
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 7102 WHERE `entry` = 16132; -- Huntsman Leopold
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 7103 WHERE `entry` = 16134; -- Rimblat Earthshatter
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 7104 WHERE `entry` = 16135; -- Rayne
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 7105 WHERE `entry` = 16133; -- Mataus the Wrathcaster
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 7109 WHERE `entry` = 11033; -- Smokey LaRue
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 7157 WHERE `entry` = 16212; -- Dispatch Commander Metz
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 7175 WHERE `entry` = 16284; -- Argent Medic
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 7219 WHERE `entry` = 16376; -- Craftsman Wilhelm
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 7238 WHERE `entry` = 16416; -- Bronn Fitzwrench
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 7339 WHERE `entry` = 10540; -- Vol'jin
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 7379 WHERE `entry` = 17209; -- William Kielar
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 7406 WHERE `entry` = 3848; -- Kayneth Stillwind
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 7418 WHERE `entry` = 16543; -- Garon Hutchins
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 7524 WHERE `entry` = 15165; -- Haughty Modiste
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 7690 WHERE `entry` = 1701; -- Dank Drizzlecut
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 7690 WHERE `entry` = 3001; -- Brek Stonehoof
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 7690 WHERE `entry` = 3137; -- Matt Johnson
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 7690 WHERE `entry` = 3357; -- Makaru
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 7690 WHERE `entry` = 4254; -- Geofram Bouldertoe
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 7690 WHERE `entry` = 4598; -- Brom Killian
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 7690 WHERE `entry` = 5392; -- Yarr Hammerstone
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 7691 WHERE `entry` = 812; -- Alma Jainrose
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 7691 WHERE `entry` = 1458; -- Telurinon Moonshadow
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 7691 WHERE `entry` = 3013; -- Komin Winterhoof
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 7691 WHERE `entry` = 3404; -- Jandi
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 7691 WHERE `entry` = 4614; -- Martha Alliestar
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 7691 WHERE `entry` = 5137; -- Reyna Stonebranch
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 7691 WHERE `entry` = 8146; -- Ruw
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 8217 WHERE `entry` = 10181; -- Lady Sylvanas Windrunner
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 8793 WHERE `entry` = 5086; -- Captain Wymor
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 8840 WHERE `entry` = 4921; -- Guard Byron
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 8846 WHERE `entry` = 2708; -- Archmage Malin
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 8851 WHERE `entry` = 4979; -- Theramore Guard
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 9821 WHERE `entry` = 6749; -- Erma
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 9821 WHERE `entry` = 9980; -- Shelby Stoneflint
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 9821 WHERE `entry` = 9982; -- Penny
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 9821 WHERE `entry` = 9984; -- Ulbrek Firehand
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 9821 WHERE `entry` = 9987; -- Shoja'my
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 9821 WHERE `entry` = 9989; -- Lina Hearthstove
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 9821 WHERE `entry` = 10045; -- Kirk Maxwell
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 9821 WHERE `entry` = 10046; -- Bethaine Flinthammer
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 9821 WHERE `entry` = 10050; -- Seikwa
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 9821 WHERE `entry` = 10051; -- Seriadne
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 9821 WHERE `entry` = 10053; -- Anya Maulray
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 9821 WHERE `entry` = 10054; -- Bulrug
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 9821 WHERE `entry` = 10055; -- Morganus
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 9821 WHERE `entry` = 11119; -- Azzleby
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 9821 WHERE `entry` = 16094; -- Durik
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 10215 WHERE `entry` = 11832; -- Keeper Remulos
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 11390 WHERE `entry` = 7937; -- High Tinker Mekkatorque
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 11393 WHERE `entry` = 11390; -- Skullsplitter Speaker
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 4783 WHERE `entry` IN (543, 3545, 3698, 4320); -- Nalesette Wildbringer, Claude Erksine, Bolyun, Caelyb
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 5304 WHERE `entry` = 12238; -- Zaetar
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 685 WHERE `entry` = 5494; -- Catherine Leland
UPDATE `creature_template` SET `npcflag`= `npcflag`|1, `gossip_menu_id` = 8085 WHERE `entry` = 3230; -- Nazgrel

-- This deletes all npc_gossips which are replaced by gossip_menu
-- this does not delete a gossip which has not been replaced by the same npc_text

DELETE FROM `npc_gossip` WHERE `npc_guid` = 2;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 29;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 36;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 37;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 38;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 44;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 45;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 46;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 47;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 57;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 58;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 59;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 88;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 89;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 90;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 96;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 97;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 101;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 105;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 106;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 107;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 114;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 115;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 121;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 125;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 128;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 129;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 131;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 132;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 133;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 134;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 135;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 136;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 138;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 139;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 140;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 141;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 142;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 144;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 145;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 189;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 190;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 192;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 199;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 206;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 223;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 265;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 288;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 309;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 311;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 312;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 361;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 364;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 366;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 368;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 369;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 388;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 391;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 403;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 421;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 436;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 531;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 537;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 565;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 573;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 636;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 667;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 690;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 1023;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 1024;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 1025;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 1026;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 1743;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 1745;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 1748;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 1750;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 1753;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 1757;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 1759;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 1760;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 1765;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 1766;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 1767;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 1770;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 1771;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 1772;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 1773;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 1777;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 1779;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 1780;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 1782;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 1783;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 1789;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 1799;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 1803;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 1807;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 1811;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 1812;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 1816;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 1817;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 1818;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 1819;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 1821;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 1888;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 1889;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 1893;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 1894;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 1895;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 2005;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 2007;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 2008;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 2009;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 2010;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 2016;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 2023;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 2024;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 2025;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 2026;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 2027;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 2028;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 2029;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 2030;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 2032;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 2065;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 2079;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 2081;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 2085;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 2086;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 2473;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 2702;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 2704;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 3328;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 3349;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 3382;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 3383;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 3384;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 3385;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 3386;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 3387;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 3388;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 3389;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 3390;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 3391;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 3394;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 3428;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 3429;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 3430;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 3443;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 3462;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 3463;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 3464;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 3465;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 3471;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 3474;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 3616;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 3646;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 3648;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 4093;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 4208;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 4209;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 4242;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 4491;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 4595;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 4661;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 4671;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 4675;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 4677;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 4798;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 5363;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 5584;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 5585;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 5587;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 5588;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 5598;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 5715;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 5717;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 5718;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 5719;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 5721;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 5723;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 5724;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 5725;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 5729;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 5749;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 5752;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 5921;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 6380;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 6382;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 6383;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 6385;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 6386;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 6387;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 6388;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 6389;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 6402;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 6403;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 6491;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 6492;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 6497;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 6500;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 6512;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 6558;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 6559;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 6560;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 6561;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 6562;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 6563;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 6564;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 6565;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 6566;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 6567;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 6598;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 6600;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 6603;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 6606;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 6613;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 6620;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 6625;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 6714;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 6849;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 6858;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 6875;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 6876;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 6889;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 7290;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 7291;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 7292;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 7293;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 7294;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 7296;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 7297;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 7298;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 7397;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 7398;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 7399;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 7415;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 7416;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 7417;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 7418;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 7419;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 7420;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 7421;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 7446;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 7447;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 7449;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 7463;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 7668;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 7669;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 7671;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 7673;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 7715;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 7716;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 7941;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 7942;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 7943;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 7945;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 7946;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 7948;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 7949;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 7950;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 7968;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 7972;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 8018;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 8019;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 8169;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 8219;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 8259;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 8415;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 8416;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 8417;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 8418;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 8420;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 8421;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 8423;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 8424;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 8461;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 8478;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 8521;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 8522;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 8523;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 8524;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 8525;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 8526;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 8527;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 8528;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 8529;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 8530;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 9386;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 9448;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 9457;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 10076;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 10271;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 10273;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 10274;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 10275;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 10276;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 10277;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 10278;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 10279;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 10297;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 10298;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 10299;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 10347;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 10348;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 10350;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 10351;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 10352;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 10353;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 10426;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 10427;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 10428;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 10429;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 10430;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 10450;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 10462;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 10463;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 10464;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 10465;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 10466;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 10467;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 10468;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 10469;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 10470;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 11206;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 11223;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 11263;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 11789;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 11790;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 11791;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 11792;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 11793;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 11794;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 11795;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 11796;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 12783;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 13172;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 13419;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 13637;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 14323;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 14344;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 14388;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 14411;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 14417;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 14740;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 14986;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 15033;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 15096;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 15104;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 15287;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 15324;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 15326;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 15582;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 16575;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 16579;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 17626;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 17649;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 17650;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 17669;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 17865;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 19272;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 19273;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 21822;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 21823;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 22681;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 23056;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 23117;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 23268;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 23272;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 23277;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 23281;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 23287;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 23443;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 23706;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 23717;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 23718;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 23719;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 23723;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 24252;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 24253;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 24351;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 24439;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 24440;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 24728;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 24772;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 24774;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 24775;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 24783;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 24796;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 24797;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 24867;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 24917;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 25541;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 25996;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 26053;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 26615;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 26620;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 26625;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 26632;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 26661;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 26662;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 26753;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 26755;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 26756;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 26758;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 26759;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 26768;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 26770;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 26774;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 26779;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 26833;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 26894;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 26895;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 26897;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 26899;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 26901;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 26902;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 26903;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 26905;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 28415;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 28419;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 28420;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 28463;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 28472;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 28474;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 28481;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 28485;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 28486;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 28487;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 28488;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 28489;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 28490;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 29069;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 29233;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 29370;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 29780;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 29796;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 29802;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 29804;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 30136;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 30229;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 31804;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 31845;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 31855;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 31857;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 31869;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 31871;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 31891;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 31902;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 31947;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 32028;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 32036;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 32037;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 32039;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 32068;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 32245;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 32720;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 33073;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 33823;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 33831;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 34102;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 34103;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 34104;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 34105;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 34106;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 34111;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 34113;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 34501;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 35194;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 35237;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 35867;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 35888;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 36021;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 36098;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 36537;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 37088;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 37606;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 37607;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 37608;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 37612;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 38057;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 38071;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 38072;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 38129;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 38296;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 38297;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 38298;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 38299;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 38301;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 38302;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 38305;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 38407;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 38416;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 38422;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 39019;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 39020;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 39022;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 39023;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 39024;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 39025;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 39026;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 39063;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 39077;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 39092;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 39098;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 39100;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 39106;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 39107;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 39108;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 40519;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 40520;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 40521;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 40522;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 40523;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 40524;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 40525;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 40528;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 40529;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 40530;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 40533;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 40535;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 40536;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 40537;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 40538;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 40539;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 40540;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 40541;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 40542;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 40543;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 40544;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 40545;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 40546;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 40547;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 40548;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 40549;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 40550;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 40551;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 40553;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 40554;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 40555;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 40556;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 40557;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 40559;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 40560;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 40561;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 40562;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 40565;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 40566;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 40567;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 40568;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 40569;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 40570;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 40571;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 40572;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 40573;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 40574;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 40575;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 40576;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 40577;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 40578;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 40579;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 40580;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 40581;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 40582;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 40583;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 40584;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 40585;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 40586;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 40587;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 40591;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 40593;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 41519;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 41642;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 41764;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 41765;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 41769;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 41834;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 41884;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 41887;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 41888;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 41889;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 41890;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 41891;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 41892;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 41956;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 41960;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 41961;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 41964;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 42181;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 42205;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 42207;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 42209;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 42264;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 42296;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 42297;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 42298;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 42300;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 42332;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 42334;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 42337;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 42338;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 42744;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 42751;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 42752;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 42753;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 42755;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 42757;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 42758;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 42759;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 43122;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 43173;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 43174;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 43175;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 43200;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 43236;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 44738;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 45225;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 45237;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 45238;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 45239;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 45241;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 45242;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 45245;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 45424;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 45435;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 45437;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 45440;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 45452;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 45453;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 45610;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 46178;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 46181;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 46182;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 46183;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 46184;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 46186;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 46205;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 46223;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 46312;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 46320;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 46341;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 46343;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 46349;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 46410;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 46469;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 46470;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 46472;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 46474;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 46475;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 46480;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 46559;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 46561;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 46567;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 46613;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 46615;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 46616;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 46617;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 46618;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 46619;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 46620;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 46621;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 46622;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 46624;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 46625;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 46626;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 46627;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 46628;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 46629;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 46630;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 46723;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 46803;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 46809;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 46820;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 46821;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 46822;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 46823;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 46824;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 46825;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 46826;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 46828;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 46829;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 46830;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 46831;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 46832;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 46833;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 46834;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 46835;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 46836;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 46837;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 46838;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 46839;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 46840;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 46841;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 46843;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 46844;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 46845;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 46846;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 46847;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 46848;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 46849;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 46852;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 46853;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 46854;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 46855;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 46880;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 46881;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 46882;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 46883;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 46884;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 46903;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 47779;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 48092;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 48093;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 48094;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 48152;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 48153;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 48168;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 48169;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 48170;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 48171;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 48172;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 48276;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 48459;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 48460;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 48461;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 48462;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 48463;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 48464;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 48465;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 48466;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 48467;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 48468;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 48805;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 48879;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 48948;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 48949;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 48950;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 48951;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 48952;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 48953;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 48954;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 48955;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 48956;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 48957;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 49539;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 49843;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 49844;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 49845;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 49846;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 49847;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 49848;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 49849;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 49851;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 49852;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 49859;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 49903;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 49934;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 49938;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 49939;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 50080;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 50145;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 51377;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 51780;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 52416;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 53171;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 53174;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 53177;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 53737;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 53739;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 53837;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 53897;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 53898;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 54120;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 54145;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 54163;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 54164;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 54186;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 54190;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 54192;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 54193;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 54338;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 54382;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 54384;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 54386;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 54388;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 54390;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 54393;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 54398;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 54400;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 54402;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 54404;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 54417;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 54432;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 54749;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 54765;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 54768;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 54807;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 56324;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 56342;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 56497;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 56498;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 56499;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 56600;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 56611;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 56613;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 56614;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 56615;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 56617;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 56621;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 56623;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 56625;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 56680;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 61987;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 68499;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 68930;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 69680;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 79628;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 79645;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 79656;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 79658;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 79664;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 79666;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 79669;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 79671;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 79672;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 79674;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 79678;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 79679;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 79682;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 79684;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 79686;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 79687;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 79688;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 79689;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 79695;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 79696;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 79697;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 79698;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 79704;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 79714;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 79723;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 79726;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 79728;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 79730;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 79731;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 79732;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 79733;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 79737;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 79751;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 79756;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 79767;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 79769;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 79778;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 79779;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 79780;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 79788;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 79799;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 79806;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 79819;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 79821;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 79823;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 79825;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 79840;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 79841;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 79853;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 79854;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 79857;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 79859;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 79861;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 79862;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 79863;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 79864;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 79865;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 79970;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 79986;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 80346;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 80471;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 81389;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 84656;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 84826;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 86263;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 86424;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 87044;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 87045;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 87046;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 87047;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 87048;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 87049;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 87050;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 88826;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 89432;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 89440;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 89522;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 90462;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 90471;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 90478;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 90737;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 90738;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 90739;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 90740;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 90741;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 90742;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 90743;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 90744;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 90745;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 90746;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 90881;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 90882;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 90883;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 90884;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 90885;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 90886;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 90887;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 90888;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 90889;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 90890;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 91010;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 91011;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 91012;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 91013;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 91014;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 91015;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 91016;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 91017;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 91018;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 91019;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 91022;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 91026;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 91043;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 91044;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 91045;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 91046;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 91047;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 91048;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 91049;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 91050;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 91051;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 91052;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 91064;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 91065;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 91066;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 91067;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 91068;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 91069;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 91070;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 91071;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 91312;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 91313;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 91314;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 91315;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 91316;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 91317;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 91318;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 91319;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 91320;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 91321;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 91370;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 91371;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 91572;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 91608;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 91613;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 91626;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 91631;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 91632;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 91679;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 92889;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 1079;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 37571;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 79785;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 80344;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 80347;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 81393;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 39091;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 407;
DELETE FROM `npc_text` WHERE `ID` = 10978;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 54340;
DELETE FROM `npc_text` WHERE `ID` = 11482;

UPDATE `creature` SET `MovementType` = 0 WHERE `id` = 2038;
UPDATE `creature` SET `spawndist` = 0 WHERE `id` = 2038;

-- Backport from UDB missing gossip_menu from previous update
DELETE FROM `gossip_menu` WHERE `entry` IN (643, 3161, 3162, 4004, 4006);
-- ,3161,3162,3861,3922,4004,4005,4006,4112,4821,4823,5304,6223,6525,7406,7577,8085,8453,8851,9821,10215,10775,50005,50006);
INSERT INTO `gossip_menu` VALUES
(643, 1202, 0, 0),
(643, 1203, 0, 38),
(3161, 5841, 0, 0),
(3161, 3893, 0, 931),
(3162, 5842, 0, 0),
(3162, 3896, 0, 932),
(3861, 4778, 3861, 39),
(3922, 4777, 0, 39),
(4004, 5855, 0, 0),
(4004, 4859, 0, 933),
(4005, 4869, 0, 851),
(4006, 5843, 0, 0),
(4006, 4862, 0, 934),
(4821, 5874, 0, 18),
(4823, 5878, 0, 18),
(5304, 6336, 0, 0),
(6223, 7394, 0, 939),
(6525, 7820, 0, 3),
(7406, 8875, 0, 0),
(8085, 9995, 0, 0),
(8453, 10560, 0, 0), -- TBC version, need to be reverted
(8851, 11492, 0, 0),
(9821, 13584, 0, 0),
(9821, 13557, 0, 15),
(10215, 14198, 0, 0); -- à tester

-- Backport from UDB missing gossip_menu_options from previous update
DELETE FROM `gossip_menu_option` WHERE `menu_id` IN (3161,3162,4004,4005,4006,9821);
INSERT INTO `gossip_menu_option` VALUES
(3161, 0, 1, 'I would like to buy from you.', 3, 4, 0, 0, 0, 0, 0, NULL, 845),
(3162, 0, 1, 'I would like to buy from you.', 3, 4, 0, 0, 0, 0, 0, '', 849),
(4004, 0, 1, 'I would like to buy from you.', 3, 4, 0, 0, 0, 0, 0, '', 846),
(4005, 0, 1, 'I would like to buy from you.', 3, 4, 0, 0, 0, 0, 0, NULL, 851),
(4006, 0, 1, 'I would like to buy from you.', 3, 4, 0, 0, 0, 0, 0, '', 847),
(4821, 0, 3, 'Please teach me.', 5, 16, 0, 0, 0, 0, 0, NULL, 18),
(4823, 0, 3, 'Please teach me.', 5, 16, 0, 0, 0, 0, 0, NULL, 18),
(8453, 0, 9, 'I wish to join the battle!', 12, 1048576, 0, 0, 0, 0, 0, '', 0), -- TBC version, need to be revert
(9821, 1, 0, 'I\'d like to stable my pet here', 14, 8192, 0, 0, 0, 0, 0, '', 0);

-- Backport from UDB npc_text from previous update
DELETE FROM `npc_text` WHERE `id` IN (11492, 13584, 13557, 14198);
INSERT INTO `npc_text` VALUES
(11492, 'Welcome to Theramore, $c.', 'Welcome to Theramore, $c.', 0, 1, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0),
(13557, 'Greetings, $c. I can help stable your pets or assist you in recovering lost companions.', 'Greetings, $c. I can help stable your pets or assist you in recovering lost companions.', 0, 1, 0, 1, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0),
(13584, 'Greetings, $c. I can assist you in recovering lost companions.', 'Greetings, $c. I can assist you in recovering lost companions.', 0, 1, 0, 1, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0),
(14198, 'The Emerald Dream has become a dangerous place. I grow increasingly concerned for those who have sacrificed their waking life in Azeroth in hopes of saving it.', '', 0, 1, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0);

-- Backport from UDB missing DB scrpit from previous update
DELETE FROM `dbscripts_on_gossip` WHERE `id` = 3861;
INSERT INTO `dbscripts_on_gossip` VALUES (3861, 0, 8, 10936, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'give quest credit - The Battle of Darrowshire');

-- Backport from UDB missing conditions used by gossip_menu and gossip_menu_options above
DELETE FROM `conditions` WHERE `condition_entry` IN (38, 39, 851, 831, 812, 821, 839, 845, 825, 806, 815, 836, 849, 829, 810, 819, 842, 846, 826, 807, 816, 835, 847, 827, 808, 817, 840);
INSERT INTO `conditions` VALUES
(38, 7, 182, 1),
(39, 9, 5721, 0),
(851, -2, 831, 839),
(831, -1, 812, 821),
(812, 5, 68, 7),
(821, 14, 674, 0),
(839, 14, 16, 0),
(845, -2, 825, 836),
(825, -1, 806, 815),
(806, 5, 76, 7),
(815, 14, 688, 0),
(836, 14, 2, 0),
(849, -2, 829, 842),
(829, -1, 810, 819),
(810, 5, 530, 7),
(819, 14, 562, 0),
(842, 14, 128, 0),
(846, -2, 826, 835),
(826, -1, 807, 816),
(807, 5, 72, 7),
(816, 14, 1100, 0),
(835, 14, 1, 0),
(847, -2, 827, 840),
(827, -1, 808, 817),
(808, 5, 81, 7),
(817, 14, 658, 0),
(840, 14, 32, 0),
(939, 5, 909, 5),
(934, -2, 808, 840),
(933, -2, 807, 835),
(932, -2, 810, 842),
(931, -2, 806, 836);

DELETE FROM `npc_gossip` WHERE `npc_guid` = 79825;

-- ***** Schmoozerd *****
-- Zum'Rah Zombies
DELETE FROM dbscripts_on_go_template_use WHERE id=128403;
INSERT INTO dbscripts_on_go_template_use (id, delay, command, datalong, data_flags, comments) VALUES
(128403, 2, 15, 10247, 0x02, 'cast Summon Zul\'Farrak Zombies');


-- ***** Xfurry *****
-- ***** Instance fixes *****
-- delete obsolete Love In the Air event from Shadowfang (available only in 3.x)
DELETE FROM gameobject WHERE guid IN (81732,81733,81734,81735,81736,81737,81738,81739,81740,81741,81742,81743,81744,81745,81746,81747,81748,81749,81750,81751,81752,81753);

-- ***** evil@wow *****
-- =================================================
-- Uldaman fixes
-- =================================================
-- Ironaya is summoned, so remove the static spawn.
DELETE FROM creature WHERE guid=54080;
-- Ironaya's waypoints.
DELETE FROM creature_movement_template WHERE entry=7228;
INSERT INTO creature_movement_template (entry, point, position_x, position_y, position_z, orientation, waittime, script_id) VALUES
(7228, 1, -234.8384, 304.7419, -47.59481, 0, 0, 0),
(7228, 2, -234.5273, 289.1205, -48.02008, 0, 0, 0),
(7228, 3, -233.9544, 270.4161, -50.40104, 0, 0, 0),
(7228, 4, -233.4224, 252.0556, -49.44788, 0, 0, 0),
(7228, 5, -231.1759, 245.8255, -49.14987, -1.2249, 1000, 722805); -- Stay here forever
-- Pause Ironaya movement
DELETE FROM dbscripts_on_creature_movement WHERE id=722805;
INSERT INTO dbscripts_on_creature_movement (id, command, datalong, comments) VALUES
(722805, 32, 1, 'pause Ironaya');
-- Ironaya event
DELETE FROM dbscripts_on_go_template_use WHERE id IN (124371);
INSERT INTO dbscripts_on_go_template_use (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, x, y, z, o, dataint, comments) VALUES
(124371, 1, 10, 7228, 9000000, 0, 0, 0, -235.673, 309.639, -47.5976, 4.74317, 0, 'Summon Ironaya'),
(124371, 27, 11, 14394, 9000000, 0, 0, 0, 0, 0, 0, 0, 0, 'Open the Seal of Khaz\'Mul'),
(124371, 28, 0, 1, 0, 7228, 100, 0, 0, 0, 0, 0, 2000005555, 'Ironaya yell'),
(124371, 28, 20, 2, 0, 7228, 100, 0, 0, 0, 0, 0, 0, 'Ironaya starts moving');
DELETE FROM db_script_string WHERE entry = 2000005555;
INSERT INTO db_script_string (entry, content_default,sound,type,language,emote,comment) VALUES
(2000005555, 'None may steal the secrets of the Makers!',5851,1,0,0,'Ironaya yell');
-- The 'Stoned' aura for several mobs in Uldaman is handled in EventAI, so
-- remove it from creature_addon. Otherwise it's applied twice, which actually
-- cancels the effect because the aura doesn't stack, so the core removes it!
UPDATE creature_addon SET auras='' WHERE guid IN (SELECT guid FROM creature WHERE id IN (7309,7077,7076,10120,4857));


-- fix Naxx factions
UPDATE creature_template SET faction_A=21, faction_H=21 WHERE entry IN (16981,16982,16983);
UPDATE creature_template SET faction_A=54, faction_H=54 WHERE entry IN (16056,16057);
UPDATE creature_template SET faction_A=14, faction_H=14 WHERE entry IN (16286,16486);
UPDATE creature_template SET faction_A=21, faction_H=21, unit_flags=unit_flags|33554432, MovementType=0 WHERE entry IN (16775,16776,16777,16778);
UPDATE creature_template SET faction_A=370, faction_H=370, unit_flags=unit_flags|33554432, MovementType=0 WHERE entry IN (15904,16697,15910);
UPDATE creature_template SET faction_A=16, faction_H=16 WHERE entry=17055;
UPDATE creature_template SET faction_A=14, faction_H=14, unit_flags=unit_flags|33554432 WHERE entry=16363;
UPDATE creature_template SET unit_flags=unit_flags|33554432 WHERE entry=15928;
-- Heigan exit door needs to be opened
UPDATE gameobject SET state=0 WHERE guid=65846;
-- The other Heigan exit door needs to be closed
UPDATE gameobject SET state=1 WHERE guid=65860;
-- Door flags
UPDATE gameobject_template SET faction=1375, flags=flags|32 WHERE entry IN (181240,181242,181243,181210,181211,181212,181213,181230,181231,181232,181233,181126);
UPDATE gameobject_template SET faction=114, flags=flags|32 WHERE entry IN (181241,181124,181125,181170,181235,181209,181197,181123,181120,181478,181477,181225,13965,181496);
UPDATE gameobject_template SET faction=1375, flags=flags|34 WHERE entry IN (181119,181195,181121,181228,181402,181403,181404,181405);
UPDATE gameobject_template SET flags=flags|16 WHERE entry IN (181575,181576,181577,181578);
-- Horsemen chest
UPDATE gameobject SET spawntimesecs=-604800 WHERE guid=21641;


-- AQ faction fixes
UPDATE creature_template SET faction_A=16, faction_H=16, scale=1 WHERE entry=15514;
UPDATE gameobject_template SET faction=35, size=3 WHERE entry=180619;
UPDATE gameobject_template SET faction=114 WHERE entry IN (180636,180634,180635);
UPDATE creature_template SET scale=1 WHERE entry IN (15910,15904);
UPDATE creature_template SET faction_A=370, faction_H=370, unit_flags=unit_flags|33554496 WHERE entry=15727;
UPDATE creature_template SET scale=1 WHERE entry IN (15726,15725,15728,15334,15802);
UPDATE creature_template SET faction_A=114, faction_H=114, unit_flags=unit_flags|33555200 WHERE entry=15964;
-- Fix extra spawns
DELETE FROM creature WHERE guid IN (86943,86944,86945,86946,86947,86948);


-- Dire Maul fixes
-- Ironbark
UPDATE creature_template SET gossip_menu_id=5602, npcflag=0 WHERE entry=11491;
UPDATE creature_template SET gossip_menu_id=5602, faction_A=35, faction_H=35, npcflag=1 WHERE entry=14241;
DELETE FROM dbscripts_on_gossip WHERE id=5602;
INSERT INTO dbscripts_on_gossip (id, delay, command, datalong, dataint, comments) VALUES
(5602, 7, 21, 1, 0, 'ironbark the redeemed - Set active'),
(5602, 7, 20, 2, 0, 'ironbark the redeemed - Start movement'),
(5602, 3, 0, 0, 2000000195, 'ironbark the redeemed - Say'),
(5602, 1, 29, 1, 0, 'ironbark the redeemed - Drop gossip flag');
-- mizzle
UPDATE creature_template SET gossip_menu_id=5708, npcflag=3 WHERE entry=14353;
-- ***ToDo: this script may be a workaround; there might be some movement involved here before the actual spawn
UPDATE gossip_menu_option SET action_script_id = 5740 WHERE menu_id = 5740 AND id = 0;
DELETE FROM dbscripts_on_gossip WHERE id=5740;
INSERT INTO dbscripts_on_gossip (id, delay, command, datalong, datalong2, comments) VALUES
(5740, 1, 9, 35834, 7200, 'Mizzle the Crafty - spawn tribute');
DELETE FROM spell_script_target WHERE entry=31770;
INSERT INTO spell_script_target VALUES
(31770, 1, 14323, 0);
-- doors
UPDATE gameobject_template SET faction=114, flags=32 WHERE entry IN (177220,176907,179503,179506);
UPDATE gameobject_template SET faction=114 WHERE entry=179502;
UPDATE gameobject_template SET faction=114, size=6.527 WHERE entry IN (177257,177258,179504,179505,177259);
-- tribute chest
UPDATE gameobject SET spawntimesecs=-7200 WHERE guid=35834;

-- Error fixes
UPDATE creature_template SET npcflag=npcflag|2 WHERE entry=12580;

DELETE FROM creature WHERE guid IN (139973,139974,139975,139976,139977,139978,139979,139980,90430,138195,138196,138197,138198,138199,138200,138201,138202,138203,138204,138206,138207
    ,138208,138209,138210,138211,138212,138213,138214,138217,138218,138219,138220,138221,138222,138224,138225,138226,138227,138228,138229,138230,138231,138232,138233);
INSERT INTO creature (guid,id,map,modelid,equipment_id,position_x,position_y,position_z,orientation,spawntimesecs,spawndist,currentwaypoint,curhealth,curmana,DeathState,MovementType) VALUES
-- shadowfang
(90430, 10000, 33, 0, 0, -219.345, 2154.02, 81.2098, 5.58505, 43200, 0, 0, 4640, 1530, 0, 0),

-- dire maul
(138195, 13036, 429, 0, 0, 725.086, 486.37, 28.2642, 4.36332, 7200, 0, 0, 3758, 0, 0, 0),
(138196, 13036, 429, 0, 0, 719.403, 477.228, 28.263, 5.86431, 7200, 0, 0, 3758, 0, 0, 0),
(138197, 13036, 429, 0, 0, 712.803, 468.677, 28.2616, 5.06145, 7200, 0, 0, 3758, 0, 0, 0),
(138198, 13036, 429, 0, 0, 724.21, 464.514, 28.2634, 0.925025, 7200, 0, 0, 3758, 0, 0, 0),
(138199, 13036, 429, 0, 0, 715.356, 492.574, 28.2628, 4.74729, 7200, 0, 0, 3758, 0, 0, 0),
(138200, 13036, 429, 0, 0, 729.782, 497.977, 28.1809, 1.0012, 7200, 0, 0, 3758, 0, 0, 0),
(138201, 13036, 429, 0, 0, 731.356, 440.905, 28.1809, 3.69297, 7200, 0, 0, 3758, 0, 0, 0),
(138202, 13036, 429, 0, 0, 730.857, 454.202, 28.1818, 4.64055, 7200, 0, 0, 3758, 0, 0, 0),
(138203, 13036, 429, 0, 0, 735.317, 444.417, 28.1823, 0.813315, 7200, 0, 0, 3758, 0, 0, 0),
(138204, 4076, 429, 0, 0, 910.052, 510.987, 40.398, 1.64991, 7200, 0, 0, 8, 0, 0, 0),
(138206, 13036, 429, 0, 0, 340.884, -22.1709, -25.0456, 5.84685, 7200, 0, 0, 3758, 0, 0, 0),
(138207, 13036, 429, 0, 0, 357.606, -31.0619, -25.3087, 1.57987, 7200, 0, 0, 3758, 0, 0, 0),
(138208, 13036, 429, 0, 0, 349.138, -36.2457, -25.3775, 0.750492, 7200, 0, 0, 3758, 0, 0, 0),
(138209, 13036, 429, 0, 0, 341.746, -30.117, -25.1938, 3.12414, 7200, 0, 0, 3758, 0, 0, 0),
(138210, 13036, 429, 0, 0, 382.306, -69.0369, -23.5575, 1.91986, 7200, 0, 0, 3758, 0, 0, 0),
(138211, 13036, 429, 0, 0, 377.483, -51.7621, -24.1065, 2.63545, 7200, 0, 0, 3758, 0, 0, 0),
(138212, 13036, 429, 0, 0, 382.778, -47.0005, -23.906, 4.95674, 7200, 0, 0, 3758, 0, 0, 0),
(138213, 13036, 429, 0, 0, 374.831, -59.13, -24.1519, 0.418879, 7200, 0, 0, 3758, 0, 0, 0),
(138214, 13036, 429, 0, 0, 399.18, 16.25, -25.5551, 4.4731, 7200, 0, 0, 3758, 0, 0, 0),
(138217, 4076, 429, 0, 0, 731.987, 529.097, 28.1789, 2.44048, 7200, 0, 0, 8, 0, 0, 0),
(138218, 4076, 429, 0, 0, 351.118, 51.9392, -23.8786, 0.266854, 7200, 0, 0, 8, 0, 0, 0),
(138219, 4076, 429, 0, 0, 337.744, 241.784, 11.2018, 1.52277, 7200, 0, 0, 8, 0, 0, 0),
(138220, 4076, 429, 0, 0, 410.405, 112.234, -3.88713, 3.61973, 7200, 0, 0, 8, 0, 0, 0),
(138221, 13036, 429, 0, 0, 407.789, -50.7201, -23.0973, 1.5708, 7200, 0, 0, 3758, 0, 0, 0),
(138222, 13036, 429, 0, 0, 428.65, -35.0334, -24.7101, 0.884373, 7200, 0, 0, 3758, 0, 0, 0),
(138224, 13036, 429, 0, 0, 415.32, -37.0531, -23.9358, 4.29386, 7200, 0, 0, 3758, 0, 0, 0),
(138225, 13036, 429, 0, 0, 428.125, 79.5227, -23.7273, 3.03687, 7200, 0, 0, 3758, 0, 0, 0),
(138226, 13036, 429, 0, 0, 426.051, 73.2831, -23.4526, 0.296706, 7200, 0, 0, 3758, 0, 0, 0),
(138227, 13036, 429, 0, 0, 434.372, 68.875, -23.2256, 5.39307, 7200, 0, 0, 3758, 0, 0, 0),
(138228, 4076, 429, 0, 0, 553.861, 565.871, -4.75477, 5.37734, 7200, 0, 0, 8, 0, 0, 0),
(138229, 4076, 429, 0, 0, 760.553, 414.626, 40.3968, 3.03623, 7200, 0, 0, 8, 0, 0, 0),
(138230, 4076, 429, 0, 0, 590.287, 561.059, -25.314, 2.77507, 7200, 0, 0, 8, 0, 0, 0),
(138231, 4076, 429, 0, 0, 385.337, 489.142, -8.76283, 3.47874, 7200, 0, 0, 8, 0, 0, 0),
(138232, 4076, 429, 0, 0, 326.671, 295.167, 11.203, 3.57201, 7200, 0, 0, 8, 0, 0, 0),
(138233, 13036, 429, 0, 0, 448.359, 304.18, 11.2033, 3.98352, 7200, 0, 0, 3758, 0, 0, 0);


DELETE FROM creature WHERE guid IN (138235,138236,138239,138240,138241,138242,138243,138244,138245,138248,138249,138250,138251,138255,138258,138259,138260,138261,138263,138264,138265,138266,138267,138268,
    138270,138272,138273,138275,138276,138277,138278,138279,138280,138281,138282,138283,138284,138285,138286,138287,138289,138290,138291,138292,138293,138294,138296);
INSERT INTO creature (guid,id,map,modelid,equipment_id,position_x,position_y,position_z,orientation,spawntimesecs,spawndist,currentwaypoint,curhealth,curmana,DeathState,MovementType) VALUES
(138235, 13036, 429, 0, 0, 441.873, 292.296, 11.2877, 1.20428, 7200, 0, 0, 3758, 0, 0, 0),
(138236, 13036, 429, 0, 0, 399.746, 102.826, -3.80367, 1.8326, 7200, 0, 0, 3758, 0, 0, 0),
(138239, 13036, 429, 0, 0, 402.409, 171.529, 2.93519, 3.28122, 7200, 0, 0, 3758, 0, 0, 0),
(138240, 13036, 429, 0, 0, 410.881, 174.518, 2.93516, 1.67552, 7200, 0, 0, 3758, 0, 0, 0),
(138241, 13036, 429, 0, 0, 412.8, 183.446, 2.93557, 0.645772, 7200, 0, 0, 3758, 0, 0, 0),
(138242, 13036, 429, 0, 0, 396.615, 171.46, 2.85139, 6.04776, 7200, 0, 0, 3758, 0, 0, 0),
(138243, 13036, 429, 0, 0, 392.998, 169.243, 2.85195, 6.04776, 7200, 0, 0, 3758, 0, 0, 0),
(138244, 13036, 429, 0, 0, 433.926, 168.443, 2.85223, 3.27681, 7200, 0, 0, 3758, 0, 0, 0),
(138245, 13036, 429, 0, 0, 436.521, 171.8, 2.85232, 3.38357, 7200, 0, 0, 3758, 0, 0, 0),
(138248, 4076, 429, 0, 0, 550.753, 563.712, -25.4033, 3.80613, 7200, 0, 0, 8, 0, 0, 0),
(138249, 4076, 429, 0, 0, 389.649, 501.404, -12.2177, 2.77494, 7200, 0, 0, 8, 0, 0, 0),
(138250, 4076, 429, 0, 0, 514.771, 592.729, -25.4022, 2.83512, 7200, 0, 0, 8, 0, 0, 0),
(138251, 13036, 429, 0, 0, 409.139, 327.11, 2.93415, 6.0912, 7200, 0, 0, 3758, 0, 0, 0),
(138255, 13036, 429, 0, 0, 408.077, 23.4038, -25.356, 5.84685, 7200, 0, 0, 3758, 0, 0, 0),
(138258, 13036, 429, 0, 0, 413.974, 15.749, -25.0879, 2.54818, 7200, 0, 0, 3758, 0, 0, 0),
(138259, 4076, 429, 0, 0, 428.132, 226.906, 11.2114, 0.619757, 7200, 0, 0, 8, 0, 0, 0),
(138260, 4076, 429, 0, 0, 494.868, 483.145, 29.4626, 0.287253, 7200, 0, 0, 8, 0, 0, 0),
(138261, 13036, 429, 0, 0, 341.223, -61.7868, -25.4697, 2.46091, 7200, 0, 0, 3758, 0, 0, 0),
(138263, 13036, 429, 0, 0, 352.286, -57.7756, -25.8241, 0.804581, 7200, 0, 0, 3758, 0, 0, 0),
(138264, 13036, 429, 0, 0, 335.31, -54.8641, -25.8178, 1.0472, 7200, 0, 0, 3758, 0, 0, 0),
(138265, 13036, 429, 0, 0, 356.844, -67.5697, -26.1843, 4.65561, 7200, 0, 0, 3758, 0, 0, 0),
(138266, 13036, 429, 0, 0, 439.126, 359.171, 3.86281, 0.384838, 7200, 0, 0, 3758, 0, 0, 0),
(138267, 13036, 429, 0, 0, 444.332, 342.271, 2.93627, 1.16937, 7200, 0, 0, 3758, 0, 0, 0),
(138268, 13036, 429, 0, 0, 451.231, 358.101, 3.8628, 3.69278, 7200, 0, 0, 3758, 0, 0, 0),
(138270, 13036, 429, 0, 0, 311.978, 173.334, 2.93627, 2.00713, 7200, 0, 0, 3758, 0, 0, 0),
(138272, 13036, 429, 0, 0, 318.378, 360.432, 2.85293, 5.02763, 7200, 0, 0, 3758, 0, 0, 0),
(138273, 13036, 429, 0, 0, 325.075, 351.874, 2.93626, 1.3439, 7200, 0, 0, 3758, 0, 0, 0),
(138275, 13036, 429, 0, 0, 780.872, 483.796, 36.0493, 4.05614, 7200, 0, 0, 3758, 0, 0, 0),
(138276, 13036, 429, 0, 0, 792.718, 495.528, 37.3182, 3.61377, 7200, 5, 0, 3758, 0, 0, 1),
(138277, 13036, 429, 0, 0, 778.848, 490.062, 35.1498, 3.45469, 7200, 5, 0, 3758, 0, 0, 1),
(138278, 4076, 429, 0, 0, 505.905, 589.207, -25.4021, 0.076012, 7200, 0, 0, 8, 0, 0, 0),
(138279, 4076, 429, 0, 0, 608.724, 491.327, 29.4641, 3.90074, 7200, 0, 0, 8, 0, 0, 0),
(138280, 4076, 429, 0, 0, 391.665, 500.186, -11.9681, 5.56081, 7200, 0, 0, 8, 0, 0, 0),
(138281, 4076, 429, 0, 0, 554.182, 566.257, -4.75477, 5.79771, 7200, 0, 0, 8, 0, 0, 0),
(138282, 4076, 429, 0, 0, 588.644, 553.845, -25.4007, 3.78609, 7200, 0, 0, 8, 0, 0, 0),
(138283, 13036, 429, 0, 0, 399.836, 220.873, 11.2113, 4.08073, 7200, 0, 0, 3758, 0, 0, 0),
(138284, 13036, 429, 0, 0, 387.138, 203.458, 11.2161, 4.61475, 7200, 5, 0, 3758, 0, 0, 1),
(138285, 13036, 429, 0, 0, 355.238, -18.4445, -25.1449, 2.0674, 7200, 0, 0, 3758, 0, 0, 0),
(138286, 13036, 429, 0, 0, 409.935, 335.965, 2.84705, 3.19855, 7200, 0, 0, 3758, 0, 0, 0),
(138287, 13036, 429, 0, 0, 404.258, 342.263, 2.84682, 0.80796, 7200, 0, 0, 3758, 0, 0, 0),
(138289, 4076, 429, 0, 0, 551.372, 564.265, -25.4033, 3.66371, 7200, 0, 0, 8, 0, 0, 0),
(138290, 4076, 429, 0, 0, 367.872, -30.821, -24.9467, 6.21707, 7200, 0, 0, 8, 0, 0, 0),
(138291, 4076, 429, 0, 0, 287.125, 324.632, 2.85303, 3.63081, 7200, 0, 0, 8, 0, 0, 0),
(138292, 4076, 429, 0, 0, 873.081, 553.125, 40.3964, 5.61242, 7200, 0, 0, 8, 0, 0, 0),
(138293, 4076, 429, 0, 0, 336.385, 235.212, 11.2022, 2.57234, 7200, 0, 0, 8, 0, 0, 0),
(138294, 13036, 429, 0, 0, 412.695, -61.5281, -25.3884, 6.03884, 7200, 0, 0, 3758, 0, 0, 0),
(138296, 13036, 429, 0, 0, 420.648, -49.2333, -23.81, 0.958851, 7200, 0, 0, 3758, 0, 0, 0);


DELETE FROM creature WHERE guid IN (138302,138303,138304,138305,138306,138308,138309,138312,138313,138314,138315,138316,138319,138320,138321,138322,138325,138328,138329,138330,138331,138334,138344,
    140166,140167,140168,140169,140170,140171,140172,140173,140174,140175,140176,140177,140178,140179,140180,140181,140182);
INSERT INTO creature (guid,id,map,modelid,equipment_id,position_x,position_y,position_z,orientation,spawntimesecs,spawndist,currentwaypoint,curhealth,curmana,DeathState,MovementType) VALUES
(138302, 13036, 429, 0, 0, 334.235, 357.029, 2.93627, 3.4383, 7200, 0, 0, 3758, 0, 0, 0),
(138303, 13036, 429, 0, 0, 464.224, 26.2598, -3.9254, 1.44948, 7200, 0, 0, 3758, 0, 0, 0),
(138304, 13036, 429, 0, 0, 466.826, 22.9091, -3.9267, 1.52329, 7200, 0, 0, 3758, 0, 0, 0),
(138305, 4076, 429, 0, 0, 820.461, 389.177, 40.398, 5.62519, 7200, 0, 0, 8, 0, 0, 0),
(138306, 4076, 429, 0, 0, 909.859, 511.353, 40.398, 1.78684, 7200, 0, 0, 8, 0, 0, 0),
(138308, 13036, 429, 0, 0, 434.5, 304.634, 11.2862, 1.8326, 7200, 0, 0, 3758, 0, 0, 0),
(138309, 13036, 429, 0, 0, 386.18, -59.6284, -23.0857, 3.68265, 7200, 0, 0, 3758, 0, 0, 0),
(138312, 4076, 429, 0, 0, 294.881, 179.89, 2.85534, 4.92168, 7200, 0, 0, 8, 0, 0, 0),
(138313, 4076, 429, 0, 0, 383.908, 500.697, -11.7202, 2.30837, 7200, 0, 0, 8, 0, 0, 0),
(138314, 4076, 429, 0, 0, 412.672, 112.84, -3.88714, 0.044031, 7200, 0, 0, 8, 0, 0, 0),
(138315, 4076, 429, 0, 0, 494.773, 483.368, 29.4626, 0.489612, 7200, 0, 0, 8, 0, 0, 0),
(138316, 13036, 429, 0, 0, 404.756, 9.16734, -24.9806, 5.37936, 7200, 5, 0, 3758, 0, 0, 1),
(138319, 13036, 429, 0, 0, 304.092, 183.315, 2.93627, 0.314159, 7200, 0, 0, 3758, 0, 0, 0),
(138320, 13036, 429, 0, 0, 319.061, 181.406, 2.93627, 3.36848, 7200, 0, 0, 3758, 0, 0, 0),
(138321, 13036, 429, 0, 0, 415.292, 32.0243, -25.0731, 2.00533, 7200, 0, 0, 3758, 0, 0, 0),
(138322, 13036, 429, 0, 0, 404.637, 33.3228, -25.3474, 1.09309, 7200, 0, 0, 3758, 0, 0, 0),
(138325, 4076, 429, 0, 0, 689.398, 428.018, 29.3285, 1.55449, 7200, 0, 0, 8, 0, 0, 0),
(138328, 13036, 429, 0, 0, 397.051, 108.892, -3.80362, 3.85718, 7200, 0, 0, 3758, 0, 0, 0),
(138329, 13036, 429, 0, 0, 391.716, 110.485, -3.80361, 5.81195, 7200, 0, 0, 3758, 0, 0, 0),
(138330, 13036, 429, 0, 0, 332.44, 167.415, 2.85462, 3.36825, 7200, 0, 0, 3758, 0, 0, 0),
(138331, 13036, 429, 0, 0, 334.873, 170.89, 2.85432, 3.07063, 7200, 0, 0, 3758, 0, 0, 0),
(138334, 13036, 429, 0, 0, 347.183, -67.9546, -25.8799, 0.77538, 7200, 0, 0, 3758, 0, 0, 0),
(138344, 14327, 429, 0, 0, 5.33627, -449.741, 16.4166, 5.38513, 7200, 0, 0, 17816, 8964, 0, 0),
-- ruins of AQ
(140166, 15344, 509, 0, 0, -8991.15, 1554, 21.6539, 2.77507, 604800, 0, 0, 12576, 0, 0, 0),
(139974, 15514, 509, 0, 0, -9312.73, 1281.51, -63.56, 6.03, 3520, 0, 0, 26140, 0, 0, 0),
(139975, 15514, 509, 0, 0, -9300.03, 1304.52, -63.25, 5.77, 3520, 0, 0, 26140, 0, 0, 0),
(139976, 15514, 509, 0, 0, -9263.38, 1293.48, -63.84, 5.24, 3520, 0, 0, 26140, 0, 0, 0),
(139977, 15514, 509, 0, 0, -9245.11, 1280.3, -63.33, 4.66, 3520, 0, 0, 26140, 0, 0, 0),
(139978, 15514, 509, 0, 0, -9234.96, 1244.95, -63.05, 3.2, 3520, 0, 0, 26140, 0, 0, 0),
(139979, 15514, 509, 0, 0, -9267.78, 1249.26, -63.58, 2.79, 3520, 0, 0, 26140, 0, 0, 0),
(140167, 15344, 509, 0, 0, -9003.75, 1536.16, 21.4697, 2.63545, 604800, 0, 0, 12576, 0, 0, 0),
(140168, 15344, 509, 0, 0, -9012.13, 1608.77, 24.8693, 3.14159, 604800, 0, 0, 12576, 0, 0, 0),
(140169, 15344, 509, 0, 0, -9014.36, 1597.68, 21.4697, 3.03687, 604800, 0, 0, 12576, 0, 0, 0),
(140170, 15344, 509, 0, 0, -9020.15, 1586.73, 21.4697, 2.94961, 604800, 0, 0, 12576, 0, 0, 0),
(140171, 15344, 509, 0, 0, -9022.04, 1612.05, 22.8073, 3.15905, 604800, 0, 0, 12576, 0, 0, 0),
(140172, 15344, 509, 0, 0, -9022.71, 1505.88, 21.5596, 2.40855, 604800, 0, 0, 12576, 0, 0, 0),
(140173, 15344, 509, 0, 0, -9029.94, 1498.08, 22.1401, 2.33874, 604800, 0, 0, 12576, 0, 0, 0),
(140174, 15344, 509, 0, 0, -9031.99, 1592.26, 21.4697, 2.98451, 604800, 0, 0, 12576, 0, 0, 0),
(140175, 15344, 509, 0, 0, -9038.44, 1491.04, 23.2296, 2.26893, 604800, 0, 0, 12576, 0, 0, 0),
(140176, 15344, 509, 0, 0, -9070.71, 1634.37, 21.4812, 3.49066, 604800, 0, 0, 12576, 0, 0, 0),
(140177, 15344, 509, 0, 0, -9071.04, 1622.14, 21.4697, 3.33358, 604800, 0, 0, 12576, 0, 0, 0),
(140178, 15344, 509, 0, 0, -9071.76, 1611.28, 21.4721, 3.1765, 604800, 0, 0, 12576, 0, 0, 0),
(140179, 15344, 509, 0, 0, -9076.42, 1530.23, 21.4697, 2.23402, 604800, 0, 0, 12576, 0, 0, 0),
(140180, 15344, 509, 0, 0, -9078.8, 1622.8, 21.4697, 3.36849, 604800, 0, 0, 12576, 0, 0, 0),
(140181, 15344, 509, 0, 0, -9083.14, 1524.76, 21.4697, 2.14675, 604800, 0, 0, 12576, 0, 0, 0),
(140182, 15344, 509, 0, 0, -9091.76, 1519.37, 21.4697, 2.05949, 604800, 0, 0, 12576, 0, 0, 0);


DELETE FROM creature WHERE guid IN (140183,140184,140185,140186,140187,140189,140190,140191,140192,140193,140194,140195,140196,140197,140198,140199,140200,140201,140202,140203,140204,140205
    ,140206,140207,140208,140209,140210,140211,140212,140213,140214,140215,140216,140280,140281,140282,140283,140284,140285,127618,127619,127620,127621,127622,127623);
INSERT INTO creature (guid,id,map,modelid,equipment_id,position_x,position_y,position_z,orientation,spawntimesecs,spawndist,currentwaypoint,curhealth,curmana,DeathState,MovementType) VALUES
(140183, 15344, 509, 0, 0, -9092.34, 1586.27, 21.4696, 2.68781, 604800, 0, 0, 12576, 0, 0, 0),
(140184, 15344, 509, 0, 0, -9097.29, 1578.36, 21.4696, 2.51327, 604800, 0, 0, 12576, 0, 0, 0),
(140185, 15344, 509, 0, 0, -9102.55, 1569.42, 21.4757, 2.32129, 604800, 0, 0, 12576, 0, 0, 0),
(140186, 15344, 509, 0, 0, -9113.94, 1546.06, 21.4696, 1.95477, 604800, 0, 0, 12576, 0, 0, 0),
(140187, 15344, 509, 0, 0, -9132.83, 1539.1, 21.4696, 1.65806, 604800, 0, 0, 12576, 0, 0, 0),
(140189, 15385, 509, 0, 0, -9108.29, 1584.17, 21.471, 5.75959, 604800, 0, 0, 56627, 0, 0, 0),
(140190, 15386, 509, 0, 0, -9085.03, 1622.4, 21.4697, 3.36849, 604800, 0, 0, 56627, 0, 0, 0),
(140191, 15387, 509, 0, 0, -8994.83, 1542.27, 21.6486, 2.70526, 604800, 0, 0, 31440, 0, 0, 0),
(140192, 15387, 509, 0, 0, -8998.05, 1560.15, 22.1308, 2.80998, 604800, 0, 0, 31440, 0, 0, 0),
(140193, 15387, 509, 0, 0, -9001.26, 1549.05, 22.0209, 2.72271, 604800, 0, 0, 31440, 0, 0, 0),
(140194, 15387, 509, 0, 0, -9010.7, 1542.47, 21.4697, 2.6529, 604800, 0, 0, 31440, 0, 0, 0),
(140195, 15387, 509, 0, 0, -9023.85, 1601.58, 21.4697, 3.07178, 604800, 0, 0, 31440, 0, 0, 0),
(140196, 15387, 509, 0, 0, -9030.08, 1512.31, 21.4706, 2.40855, 604800, 0, 0, 31440, 0, 0, 0),
(140197, 15387, 509, 0, 0, -9038.83, 1505.32, 21.5906, 2.33874, 604800, 0, 0, 31440, 0, 0, 0),
(140198, 15387, 509, 0, 0, -9046.5, 1498.26, 22.0108, 2.26893, 604800, 0, 0, 31440, 0, 0, 0),
(140199, 15387, 509, 0, 0, -9066.89, 1521.48, 21.4697, 2.25147, 604800, 0, 0, 31440, 0, 0, 0),
(140200, 15387, 509, 0, 0, -9074, 1515.24, 21.4697, 2.16421, 604800, 0, 0, 31440, 0, 0, 0),
(140201, 15387, 509, 0, 0, -9078.07, 1635.03, 21.4697, 3.54302, 604800, 0, 0, 31440, 0, 0, 0),
(140202, 15387, 509, 0, 0, -9080.05, 1612.09, 21.4697, 3.19395, 604800, 0, 0, 31440, 0, 0, 0),
(140203, 15387, 509, 0, 0, -9082.67, 1510.19, 21.5131, 2.07694, 604800, 0, 0, 31440, 0, 0, 0),
(140204, 15387, 509, 0, 0, -9098.18, 1589.88, 21.47, 2.70526, 604800, 0, 0, 31440, 0, 0, 0),
(140205, 15387, 509, 0, 0, -9102.67, 1581.56, 21.471, 2.49582, 604800, 0, 0, 31440, 0, 0, 0),
(140206, 15387, 509, 0, 0, -9107.89, 1574.31, 21.4863, 2.30383, 604800, 0, 0, 31440, 0, 0, 0),
(140207, 15387, 509, 0, 0, -9117.37, 1553.28, 21.4696, 1.93732, 604800, 0, 0, 31440, 0, 0, 0),
(140208, 15387, 509, 0, 0, -9123.58, 1541.55, 21.4696, 1.79769, 604800, 0, 0, 31440, 0, 0, 0),
(140209, 15387, 509, 0, 0, -9125.76, 1549.29, 21.4696, 1.78024, 604800, 0, 0, 31440, 0, 0, 0),
(140210, 15387, 509, 0, 0, -9134.14, 1546.72, 21.4696, 1.64061, 604800, 0, 0, 31440, 0, 0, 0),
(140211, 15388, 509, 0, 0, -9127.98, 1558.54, 21.6879, 1.79769, 604800, 0, 0, 56627, 0, 0, 0),
(140212, 15389, 509, 0, 0, -9033.17, 1604.66, 21.4697, 3.08923, 604800, 0, 0, 56627, 0, 0, 0),
(140213, 15390, 509, 0, 0, -9087.01, 1530.26, 21.4697, 2.14675, 604800, 0, 0, 56627, 0, 0, 0),
(140214, 15391, 509, 0, 0, -9007.4, 1556.87, 21.6039, 5.51524, 604800, 0, 0, 56627, 0, 0, 0),
(140215, 15392, 509, 0, 0, -9041.36, 1512.58, 21.4748, 2.33874, 604800, 0, 0, 56627, 0, 0, 0),
(140216, 15426, 509, 0, 0, -8680.66, 1585.61, 33.1911, 2.54818, 120, 0, 0, 4120, 0, 0, 0),
(140280, 15343, 509, 0, 0, -8600.62, 1483.55, 32.8614, 3.00197, 3520, 0, 0, 25152, 0, 0, 0),
(140281, 15343, 509, 0, 0, -8612.69, 1446.04, 31.9903, 3.01942, 3520, 0, 0, 25152, 0, 0, 0),
(140282, 15343, 509, 0, 0, -8620.62, 1484.9, 31.9009, 6.05629, 3520, 0, 0, 25152, 0, 0, 0),
(140283, 15343, 509, 0, 0, -8622.46, 1385.47, 32.032, 5.9549, 3520, 0, 0, 25152, 0, 0, 0),
(140284, 15343, 509, 0, 0, -8622.62, 1437.46, 33.157, 0.0412672, 3520, 0, 0, 25152, 0, 0, 0),
(140285, 15343, 509, 0, 0, -8652.9, 1459.57, 32.0319, 5.51512, 3520, 0, 0, 25152, 0, 0, 0),
-- naxx
(139980, 16980, 533, 0, 0, 3762.38, -5115.86, 143.938, 0.191986, 300, 0, 0, 4120, 0, 0, 0),
(127618, 16137, 533, 0, 0, 2692.16, -3430.75, 268.646, 1.6057, 3600, 0, 0, 17010, 0, 0, 0),
(127619, 16137, 533, 0, 0, 2733.46, -3349.39, 267.768, 1.78024, 3600, 0, 0, 17010, 0, 0, 0),
(127620, 16137, 533, 0, 0, 2739.99, -3321.73, 284.232, 2.82743, 3600, 0, 0, 17010, 0, 0, 0),
(127621, 16137, 533, 0, 0, 2692.21, -3428.78, 268.646, 1.48353, 3600, 0, 0, 17010, 0, 0, 0),
(127622, 16137, 533, 0, 0, 2739.99, -3399.78, 284.295, 6.10865, 3600, 0, 0, 17010, 0, 0, 0),
(127623, 16137, 533, 0, 0, 2714.56, -3430.61, 268.646, 1.41372, 3600, 0, 0, 17010, 0, 0, 0);

DELETE FROM creature WHERE guid IN (127624,127625,127626,127627,127628,127629,127630,127631,127632,127633,127634,127635,127636,127637,127676,127677,127678,127679,127680,127706,127707,127708
    ,127709,127710,127711,127712,127713,127714,127715,127716,127717,127718,127719,127720,127721,127722,127723,127724,127725,127726,127727,127728,127729,127730,127731,127732,127733);
INSERT INTO creature (guid,id,map,modelid,equipment_id,position_x,position_y,position_z,orientation,spawntimesecs,spawndist,currentwaypoint,curhealth,curmana,DeathState,MovementType) VALUES
(127624, 16137, 533, 0, 0, 2683.89, -3304.21, 267.768, 2.49582, 3600, 0, 0, 17010, 0, 0, 0),
(127625, 16137, 533, 0, 0, 2669.58, -3428.86, 268.646, 1.37881, 3600, 0, 0, 17010, 0, 0, 0),
(127626, 16137, 533, 0, 0, 2700.27, -3322.35, 267.768, 3.52556, 3600, 0, 0, 17010, 0, 0, 0),
(127627, 16137, 533, 0, 0, 2643.73, -3399.68, 284.183, 6.0912, 3600, 0, 0, 17010, 0, 0, 0),
(127628, 16137, 533, 0, 0, 2664.87, -3340.75, 267.767, 5.93412, 3600, 0, 0, 17010, 0, 0, 0),
(127629, 16137, 533, 0, 0, 2725.82, -3309.57, 267.769, 2.82743, 3600, 0, 0, 17010, 0, 0, 0),
(127630, 16137, 533, 0, 0, 2643.73, -3321.73, 284.233, 6.19592, 3600, 0, 0, 17010, 0, 0, 0),
(127631, 16400, 533, 0, 0, 3178.61, -3263.67, 316.428, 0.760995, 3600, 0, 0, 17010, 0, 0, 0),
(127632, 16400, 533, 0, 0, 3252.53, -3188.57, 318.109, 0.742117, 3600, 0, 0, 17010, 0, 0, 0),
(127633, 16400, 533, 0, 0, 3230.18, -3211.59, 316.593, 0.783571, 3600, 0, 0, 17010, 0, 0, 0),
(127634, 16400, 533, 0, 0, 3217.32, -3224.75, 316.058, 0.825181, 3600, 0, 0, 17010, 0, 0, 0),
(127635, 16400, 533, 0, 0, 3190.63, -3252.56, 315.568, 3.91208, 3600, 0, 0, 17010, 0, 0, 0),
(127636, 16400, 533, 0, 0, 3200.39, -3242.83, 315.141, 3.95566, 3600, 0, 0, 17010, 0, 0, 0),
(127637, 16400, 533, 0, 0, 3238.55, -3203.86, 316.919, 3.83134, 3600, 0, 0, 17010, 0, 0, 0),
(127676, 15384, 533, 0, 0, 3270.13, -3169.95, 297.506, 5.88176, 3600, 0, 0, 4120, 0, 0, 0),
(127677, 15384, 533, 0, 0, 3255.71, -3135.68, 297.506, 1.8675, 3600, 0, 0, 4120, 0, 0, 0),
(127678, 15384, 533, 0, 0, 3005.59, -3434.15, 304.278, 3.35103, 3600, 0, 0, 4120, 0, 0, 0),
(127679, 15384, 533, 0, 0, 3307.3, -3183.45, 297.506, 5.74213, 3600, 0, 0, 4120, 0, 0, 0),
(127680, 15384, 533, 0, 0, 2772.57, -3685.28, 273.749, 6.21337, 3600, 0, 0, 4120, 0, 0, 0),
(127706, 14881, 533, 0, 0, 3287.81, -3450.87, 287.077, 3.4216, 3600, 5, 0, 8, 0, 0, 1),
(127707, 14881, 533, 0, 0, 3337.11, -3490.32, 287.087, 3.53, 3600, 0, 0, 8, 0, 0, 0),
(127708, 14881, 533, 0, 0, 3127.2, -3552.16, 287.081, 1.56623, 3600, 5, 0, 8, 0, 0, 1),
(127709, 14881, 533, 0, 0, 3074.22, -3555.82, 287.076, 2.91462, 3600, 5, 0, 8, 0, 0, 1),
(127710, 14881, 533, 0, 0, 3158.75, -3486.43, 287.081, 3.8418, 3600, 5, 0, 8, 0, 0, 1),
(127711, 14881, 533, 0, 0, 3164.67, -3498.03, 300.916, 3.90346, 3600, 5, 0, 8, 0, 0, 1),
(127712, 14881, 533, 0, 0, 3362.31, -3684.58, 259.07, 5.91014, 3600, 5, 0, 8, 0, 0, 1),
(127713, 14881, 533, 0, 0, 3087.85, -3521.07, 287.079, 5.39293, 3600, 5, 0, 8, 0, 0, 1),
(127714, 14881, 533, 0, 0, 2956.81, -3173.99, 285.591, 1.60566, 3600, 5, 0, 8, 0, 0, 1),
(127715, 14881, 533, 0, 0, 3294.54, -3489.41, 287.077, 0.288907, 3600, 5, 0, 8, 0, 0, 1),
(127716, 14881, 533, 0, 0, 3368.19, -3635.1, 259.085, 3.66266, 3600, 5, 0, 8, 0, 0, 1),
(127717, 14881, 533, 0, 0, 3198.91, -3614.88, 280.305, 3.95935, 3600, 5, 0, 8, 0, 0, 1),
(127718, 14881, 533, 0, 0, 3179.61, -3629.73, 280.303, 4.14412, 3600, 5, 0, 8, 0, 0, 1),
(127719, 14881, 533, 0, 0, 2769.76, -3180.84, 300.031, 1.56921, 3600, 5, 0, 8, 0, 0, 1),
(127720, 14881, 533, 0, 0, 3200.08, -3463.78, 300.8, 0.017622, 3600, 5, 0, 8, 0, 0, 1),
(127721, 14881, 533, 0, 0, 3313.28, -3671.11, 281.972, 3.86845, 3600, 5, 0, 8, 0, 0, 1),
(127722, 14881, 533, 0, 0, 3219.68, -3789.26, 273.91, 5.23516, 3600, 5, 0, 8, 0, 0, 1),
(127723, 14881, 533, 0, 0, 3162.43, -3789.12, 273.95, 6.02155, 3600, 5, 0, 8, 0, 0, 1),
(127724, 14881, 533, 0, 0, 2941.87, -3346.26, 318.111, 4.76577, 3600, 5, 0, 8, 0, 0, 1),
(127725, 14881, 533, 0, 0, 3185.17, -3792.45, 273.951, 4.2457, 3600, 5, 0, 8, 0, 0, 1),
(127726, 14881, 533, 0, 0, 2911.67, -3570.2, 304.348, 1.57032, 3600, 5, 0, 8, 0, 0, 1),
(127727, 14881, 533, 0, 0, 3384.41, -3651.55, 282.512, 1.75656, 3600, 5, 0, 8, 0, 0, 1),
(127728, 14881, 533, 0, 0, 3034.9, -3470.6, 298.22, 5.62082, 3600, 5, 0, 8, 0, 0, 1),
(127729, 14881, 533, 0, 0, 3226.91, -3686.06, 300.899, 1.59974, 3600, 5, 0, 8, 0, 0, 1),
(127730, 14881, 533, 0, 0, 3158.45, -3607.72, 280.305, 5.48026, 3600, 5, 0, 8, 0, 0, 1),
(127731, 14881, 533, 0, 0, 3123.39, -3511.76, 287.312, 4.39118, 3600, 5, 0, 8, 0, 0, 1),
(127732, 14881, 533, 0, 0, 3255.24, -3452.69, 287.076, 0.363795, 3600, 5, 0, 8, 0, 0, 1),
(127733, 14881, 533, 0, 0, 3230.74, -3666.8, 287.057, 3.64395, 3600, 5, 0, 8, 0, 0, 1);
DELETE FROM creature WHERE guid IN (127734,127735,127736,127737,127738,127739,127740,127741,127802,127803,127804,127805,127806,127807,127808,127809,127810,127811,127812,127813,127840,127981,127982,
    127983,127984,127985,127986,128125,128126,128127,128128,128129,128130,128131,128132,128133,128134,128137,128138,128139,128140,128141,128142,128143,128144,128145,128146);
-- Removes Naxxramas combat dummies already in DB in order to add exactly the same but with guid compatible with TBC-DB and UDB
DELETE FROM `creature` WHERE `id` = 16211 OR guid BETWEEN 154200 AND 154211;
INSERT INTO creature (guid,id,map,modelid,equipment_id,position_x,position_y,position_z,orientation,spawntimesecs,spawndist,currentwaypoint,curhealth,curmana,DeathState,MovementType) VALUES
(127734, 14881, 533, 0, 0, 3091.63, -3537.93, 310.113, 3.92356, 3600, 5, 0, 8, 0, 0, 1),
(127735, 14881, 533, 0, 0, 3342.3, -3644.27, 259.085, 6.22306, 3600, 5, 0, 8, 0, 0, 1),
(127736, 14881, 533, 0, 0, 3254.85, -3502.14, 287.076, 4.78578, 3600, 5, 0, 8, 0, 0, 1),
(127737, 14881, 533, 0, 0, 3229.92, -3468.46, 287.076, 1.09541, 3600, 5, 0, 8, 0, 0, 1),
(127738, 14881, 533, 0, 0, 3137.56, -3795.61, 273.952, 4.24697, 3600, 5, 0, 8, 0, 0, 1),
(127739, 14881, 533, 0, 0, 3222.88, -3455.11, 287.077, 2.76664, 3600, 0, 0, 8, 0, 0, 0),
(127740, 14881, 533, 0, 0, 2841.98, -3346.14, 310.709, 5.51024, 3600, 5, 0, 8, 0, 0, 1),
(127741, 14881, 533, 0, 0, 3172.87, -3593.79, 280.306, 4.62716, 3600, 5, 0, 8, 0, 0, 1),
(127802, 16211, 533, 0, 0, 2784.04, -3086.38, 267.768, 3.92699, 3600, 0, 0, 42, 0, 0, 0),
(127803, 16211, 533, 0, 0, 2835.89, -3215.61, 298.344, 1.01229, 3600, 0, 0, 42, 0, 0, 0),
(127804, 16211, 533, 0, 0, 2756.07, -3113.2, 267.768, 0.890118, 3600, 0, 0, 42, 0, 0, 0),
(127805, 16211, 533, 0, 0, 2814.28, -3154.13, 298.229, 4.76475, 3600, 0, 0, 42, 0, 0, 0),
(127806, 16211, 533, 0, 0, 2779.97, -3115.92, 267.768, 2.16421, 3600, 0, 0, 42, 0, 0, 0),
(127807, 16211, 533, 0, 0, 2860.08, -3187.86, 298.234, 3.08923, 3600, 0, 0, 42, 0, 0, 0),
(127808, 16211, 533, 0, 0, 2760.84, -3082.67, 267.768, 5.25344, 3600, 0, 0, 42, 0, 0, 0),
(127809, 16211, 533, 0, 0, 2825.51, -3154.79, 298.229, 4.5204, 3600, 0, 0, 42, 0, 0, 0),
(127810, 16211, 533, 0, 0, 2844.48, -3157.53, 298.233, 4.2237, 3600, 0, 0, 42, 0, 0, 0),
(127811, 16211, 533, 0, 0, 2827.83, -3209.98, 298.344, 0.994838, 3600, 0, 0, 42, 0, 0, 0),
(127812, 16211, 533, 0, 0, 2851.85, -3162.62, 298.236, 4.08407, 3600, 0, 0, 42, 0, 0, 0),
(127813, 16211, 533, 0, 0, 2859.65, -3180.16, 298.237, 3.24631, 3600, 0, 0, 42, 0, 0, 0),
(127840, 16998, 533, 0, 0, 2960.72, -3433.41, 298.227, 2.94052, 3600, 5, 0, 26, 0, 0, 1),
(127981, 15979, 533, 0, 0, 3224.83, -3802.96, 274.032, 2.30383, 3600, 0, 0, 182462, 0, 0, 0),
(127982, 15979, 533, 0, 0, 3138.52, -3778.58, 274.032, 5.18363, 3600, 0, 0, 182462, 0, 0, 0),
(127983, 15979, 533, 0, 0, 3453.19, -3529.78, 267.676, 1.93731, 3600, 0, 0, 182462, 0, 0, 0),
(127984, 15979, 533, 0, 0, 3101.53, -3883.22, 267.676, 3.31613, 3600, 0, 0, 182462, 0, 0, 0),
(127985, 15979, 533, 0, 0, 3307.78, -3880.41, 294.661, 2.32314, 3600, 5, 0, 182462, 0, 0, 1),
(127986, 15979, 533, 0, 0, 3449.65, -3743, 294.661, 3.92271, 3600, 5, 0, 182462, 0, 0, 1),
(128125, 16027, 533, 0, 0, 3145.82, -3158.44, 293.352, 4.46539, 3600, 5, 0, 117297, 0, 0, 1),
(128126, 16027, 533, 0, 0, 3129.57, -3139.86, 294.063, 4.7584, 3600, 5, 0, 117297, 0, 0, 1),
(128127, 16027, 533, 0, 0, 3129.24, -3144.08, 294.063, 4.73114, 3600, 5, 0, 117297, 0, 0, 1),
(128128, 16027, 533, 0, 0, 3128.7, -3155.04, 293.715, 4.71795, 3600, 5, 0, 117297, 0, 0, 1),
(128129, 16027, 533, 0, 0, 3158.25, -3163.89, 293.303, 4.13747, 3600, 5, 0, 117297, 0, 0, 1),
(128130, 16027, 533, 0, 0, 3166.74, -3150.51, 294.063, 4.21928, 3600, 5, 0, 117297, 0, 0, 1),
(128131, 16027, 533, 0, 0, 3175.46, -3134.27, 293.366, 4.11898, 3600, 0, 0, 117297, 0, 0, 0),
(128132, 16027, 533, 0, 0, 3154.42, -3125.45, 293.435, 4.46804, 3600, 0, 0, 117297, 0, 0, 0),
(128133, 16027, 533, 0, 0, 3128.61, -3118.98, 293.429, 4.81711, 3600, 0, 0, 117297, 0, 0, 0),
(128134, 16027, 533, 0, 0, 3128.83, -3136.96, 294.064, 4.72483, 3600, 5, 0, 117297, 0, 0, 1),
(128137, 16030, 533, 0, 0, 3318, -3335.55, 292.678, 1.18682, 3600, 0, 0, 8, 0, 0, 0),
(128138, 16030, 533, 0, 0, 3320.82, -3342.62, 292.678, 1.0472, 3600, 0, 0, 8, 0, 0, 0),
(128139, 16030, 533, 0, 0, 3315.06, -3348.81, 292.678, 3.05433, 3600, 0, 0, 8, 0, 0, 0),
(128140, 16030, 533, 0, 0, 3306.47, -3347.18, 292.678, 0.698132, 3600, 0, 0, 8, 0, 0, 0),
(128141, 16030, 533, 0, 0, 3313.49, -3340.97, 292.678, 0.401426, 3600, 0, 0, 8, 0, 0, 0),
(128142, 16030, 533, 0, 0, 3038.89, -3474.74, 298.216, 4.69145, 3600, 5, 0, 8, 0, 0, 1),
(128143, 16030, 533, 0, 0, 2991.84, -3463.04, 298.219, 2.34906, 3600, 5, 0, 8, 0, 0, 1),
(128144, 16030, 533, 0, 0, 3008.69, -3402.87, 298.218, 3.6405, 3600, 5, 0, 8, 0, 0, 1),
(128145, 16030, 533, 0, 0, 3046.72, -3429.97, 298.222, 4.51829, 3600, 5, 0, 8, 0, 0, 1),
(128146, 16030, 533, 0, 0, 3103.34, -3292.8, 294.599, 2.9147, 3600, 0, 0, 8, 0, 0, 0);
DELETE FROM creature WHERE guid IN (128147,128148,128149,128150,128151,128152,128153,128154,128155,128156,128157,128158,128159,128160,128161,128162,128163,128164,128165,128166,128167,128168,128169
    ,128170,128186,128187,128188,128189,128190,128191,128192,128193,128194,128195,128196,128197,128198,128199,128200,128201,128202,128203,128204,128205,128206,128207,128208);
INSERT INTO creature (guid,id,map,modelid,equipment_id,position_x,position_y,position_z,orientation,spawntimesecs,spawndist,currentwaypoint,curhealth,curmana,DeathState,MovementType) VALUES
(128147, 16030, 533, 0, 0, 3126.26, -3365.8, 294.572, 0.191986, 3600, 0, 0, 8, 0, 0, 0),
(128148, 16030, 533, 0, 0, 3128.58, -3369.78, 294.568, 1.91986, 3600, 0, 0, 8, 0, 0, 0),
(128149, 16030, 533, 0, 0, 3129.73, -3364.55, 294.572, 5.65487, 3600, 0, 0, 8, 0, 0, 0),
(128150, 16030, 533, 0, 0, 3122.03, -3366.45, 294.581, 3.14159, 3600, 0, 0, 8, 0, 0, 0),
(128151, 16030, 533, 0, 0, 3124.71, -3362.47, 294.575, 0.820305, 3600, 0, 0, 8, 0, 0, 0),
(128152, 16030, 533, 0, 0, 3251.99, -3351.52, 292.678, 2.75762, 3600, 0, 0, 8, 0, 0, 0),
(128153, 16030, 533, 0, 0, 3246.14, -3356.44, 292.595, 3.5914, 3600, 5, 0, 8, 0, 0, 1),
(128154, 16030, 533, 0, 0, 3254.5, -3347.45, 292.678, 0.610865, 3600, 0, 0, 8, 0, 0, 0),
(128155, 16030, 533, 0, 0, 3254.41, -3356.07, 292.678, 0.994838, 3600, 0, 0, 8, 0, 0, 0),
(128156, 16030, 533, 0, 0, 3248.11, -3348.84, 292.678, 4.27606, 3600, 0, 0, 8, 0, 0, 0),
(128157, 16030, 533, 0, 0, 3076.54, -3314.61, 294.572, 2.44346, 3600, 0, 0, 8, 0, 0, 0),
(128158, 16030, 533, 0, 0, 3071.26, -3314, 294.571, 2.93215, 3600, 0, 0, 8, 0, 0, 0),
(128159, 16030, 533, 0, 0, 3078.04, -3310.57, 294.573, 4.20624, 3600, 0, 0, 8, 0, 0, 0),
(128160, 16030, 533, 0, 0, 3075.48, -3318.7, 294.58, 0.942478, 3600, 0, 0, 8, 0, 0, 0),
(128161, 16030, 533, 0, 0, 3080.41, -3315.86, 294.575, 0.174533, 3600, 0, 0, 8, 0, 0, 0),
(128162, 16030, 533, 0, 0, 3115.43, -3264.77, 294.531, 3.57792, 3600, 0, 0, 8, 0, 0, 0),
(128163, 16030, 533, 0, 0, 3060.06, -3239.59, 294.146, 5.84685, 3600, 0, 0, 8, 0, 0, 0),
(128164, 16030, 533, 0, 0, 3012.85, -3148.56, 294.159, 5.37561, 3600, 0, 0, 8, 0, 0, 0),
(128165, 16030, 533, 0, 0, 3269.68, -3270.23, 292.678, 0.383972, 3600, 0, 0, 8, 0, 0, 0),
(128166, 16030, 533, 0, 0, 3179.1, -3313.12, 294.618, 3.12414, 3600, 0, 0, 8, 0, 0, 0),
(128167, 16030, 533, 0, 0, 3125.16, -3066.66, 294.156, 1.20428, 3600, 0, 0, 8, 0, 0, 0),
(128168, 16030, 533, 0, 0, 3322.63, -3226.65, 294.146, 3.50811, 3600, 0, 0, 8, 0, 0, 0),
(128169, 16030, 533, 0, 0, 3175.82, -3326.75, 294.611, 3.54302, 3600, 0, 0, 8, 0, 0, 0),
(128170, 16030, 533, 0, 0, 3301.85, -3270.85, 292.678, 0.10472, 3600, 0, 0, 8, 0, 0, 0),
(128186, 16036, 533, 0, 0, 2851.08, -3693.53, 281.254, 4.01426, 3600, 0, 0, 18900, 0, 0, 0),
(128187, 16036, 533, 0, 0, 2851.45, -3717.97, 286.667, 2.80998, 3600, 0, 0, 18900, 0, 0, 0),
(128188, 16036, 533, 0, 0, 2860.91, -3585.21, 262.448, 1.18682, 3600, 0, 0, 18900, 0, 0, 0),
(128189, 16036, 533, 0, 0, 2849.72, -3598.39, 262.169, 5.81195, 3600, 0, 0, 18900, 0, 0, 0),
(128190, 16036, 533, 0, 0, 2838.08, -3585.05, 256.51, 1.6057, 3600, 0, 0, 18900, 0, 0, 0),
(128191, 16036, 533, 0, 0, 2887.21, -3633.74, 273.876, 0.750492, 3600, 0, 0, 18900, 0, 0, 0),
(128192, 16036, 533, 0, 0, 2893.05, -3652, 276.695, 1.94322, 3600, 5, 0, 18900, 0, 0, 1),
(128193, 16036, 533, 0, 0, 2899.61, -3693.08, 285.491, 2.54818, 3600, 0, 0, 18900, 0, 0, 0),
(128194, 16036, 533, 0, 0, 2914.51, -3690.77, 286.372, 2.77507, 3600, 0, 0, 18900, 0, 0, 0),
(128195, 16036, 533, 0, 0, 2893.91, -3706.73, 286.163, 4.76475, 3600, 0, 0, 18900, 0, 0, 0),
(128196, 16036, 533, 0, 0, 2696.64, -3599.3, 261.22, 5.35413, 3600, 5, 0, 18900, 0, 0, 1),
(128197, 16036, 533, 0, 0, 2719.04, -3576.17, 260.124, 3.97935, 3600, 0, 0, 18900, 0, 0, 0),
(128198, 16036, 533, 0, 0, 2698.5, -3585.11, 260.696, 2.62, 3600, 5, 0, 18900, 0, 0, 1),
(128199, 16036, 533, 0, 0, 2705.66, -3572.01, 261.494, 5.67232, 3600, 0, 0, 18900, 0, 0, 0),
(128200, 16036, 533, 0, 0, 2833.93, -3555.91, 253.269, 4.08407, 3600, 0, 0, 18900, 0, 0, 0),
(128201, 16036, 533, 0, 0, 2816.62, -3573.75, 253.326, 5.99961, 3600, 5, 0, 18900, 0, 0, 1),
(128202, 16036, 533, 0, 0, 2816.25, -3582.72, 254.552, 5.30591, 3600, 5, 0, 18900, 0, 0, 1),
(128203, 16036, 533, 0, 0, 2677.9, -3596.35, 261.582, 2.80998, 3600, 0, 0, 18900, 0, 0, 0),
(128204, 16036, 533, 0, 0, 2659.54, -3605.86, 262.47, 0.663225, 3600, 0, 0, 18900, 0, 0, 0),
(128205, 16036, 533, 0, 0, 2690.14, -3610.98, 262.288, 4.81711, 3600, 0, 0, 18900, 0, 0, 0),
(128206, 16036, 533, 0, 0, 2672.38, -3626.03, 266.216, 0.645772, 3600, 0, 0, 18900, 0, 0, 0),
(128207, 16036, 533, 0, 0, 2766.36, -3610.83, 255.69, 1.95477, 3600, 0, 0, 18900, 0, 0, 0),
(128208, 16036, 533, 0, 0, 2721.05, -3615.26, 260.121, 4.24115, 3600, 0, 0, 18900, 0, 0, 0);
DELETE FROM creature WHERE guid IN (128209,128210,128211,128212,128213,128214,128215,128216,128217,128218,128219,128272,128273,128274,128275,128276,128277,128278,128279,128280,128281,128282,128283
    ,128284,128285,128286,128287,128288,128319,128320,128321,128322,128323,128324,128325,128326,128327,128328,128329,128330,128331,128332,128333,128334,128335,128336,128337);
INSERT INTO creature (guid,id,map,modelid,equipment_id,position_x,position_y,position_z,orientation,spawntimesecs,spawndist,currentwaypoint,curhealth,curmana,DeathState,MovementType) VALUES
(128209, 16036, 533, 0, 0, 2750.46, -3613.72, 256.717, 3.26377, 3600, 0, 0, 18900, 0, 0, 0),
(128210, 16036, 533, 0, 0, 2826.9, -3625.57, 260.106, 5.7321, 3600, 5, 0, 18900, 0, 0, 1),
(128211, 16036, 533, 0, 0, 2799.82, -3622.71, 256.142, 5.51524, 3600, 0, 0, 18900, 0, 0, 0),
(128212, 16036, 533, 0, 0, 2799.55, -3610.14, 256.026, 1.0821, 3600, 0, 0, 18900, 0, 0, 0),
(128213, 16036, 533, 0, 0, 2764.99, -3540.81, 253.575, 5.0091, 3600, 0, 0, 18900, 0, 0, 0),
(128214, 16036, 533, 0, 0, 2749.98, -3572.63, 255.623, 0.942478, 3600, 0, 0, 18900, 0, 0, 0),
(128215, 16036, 533, 0, 0, 2910.16, -3581.52, 274.212, 2.82743, 3600, 0, 0, 18900, 0, 0, 0),
(128216, 16036, 533, 0, 0, 2908.21, -3598.82, 275.449, 0.20944, 3600, 0, 0, 18900, 0, 0, 0),
(128217, 16036, 533, 0, 0, 2895.22, -3581.66, 272.621, 2.93215, 3600, 0, 0, 18900, 0, 0, 0),
(128218, 16036, 533, 0, 0, 2868.29, -3643.7, 272.456, 6.0912, 3600, 0, 0, 18900, 0, 0, 0),
(128219, 16036, 533, 0, 0, 2846.37, -3629.32, 263.927, 0.663225, 3600, 0, 0, 18900, 0, 0, 0),
(128272, 16056, 533, 0, 0, 2900.43, -3756.91, 273.689, 1.72788, 3600, 0, 0, 18900, 0, 0, 0),
(128273, 16056, 533, 0, 0, 2806.49, -3787.34, 273.679, 3.15905, 3600, 0, 0, 18900, 0, 0, 0),
(128274, 16056, 533, 0, 0, 2805.8, -3777.39, 273.704, 2.09439, 3600, 0, 0, 18900, 0, 0, 0),
(128275, 16056, 533, 0, 0, 2789.35, -3756.75, 273.704, 2.75762, 3600, 0, 0, 18900, 0, 0, 0),
(128276, 16056, 533, 0, 0, 2784.84, -3761.65, 273.704, 1.01229, 3600, 0, 0, 18900, 0, 0, 0),
(128277, 16056, 533, 0, 0, 2783.87, -3748.3, 273.704, 5.98648, 3600, 0, 0, 18900, 0, 0, 0),
(128278, 16056, 533, 0, 0, 2844.88, -3775, 273.704, 4.08407, 3600, 0, 0, 18900, 0, 0, 0),
(128279, 16056, 533, 0, 0, 2853.38, -3782.95, 273.69, 1.8675, 3600, 0, 0, 18900, 0, 0, 0),
(128280, 16056, 533, 0, 0, 2896.02, -3787.39, 273.683, 2.82743, 3600, 0, 0, 18900, 0, 0, 0),
(128281, 16056, 533, 0, 0, 2876.47, -3789.07, 273.668, 4.95674, 3600, 0, 0, 18900, 0, 0, 0),
(128282, 16056, 533, 0, 0, 2887.12, -3776.81, 273.704, 0.645772, 3600, 0, 0, 18900, 0, 0, 0),
(128283, 16056, 533, 0, 0, 2857.69, -3748.92, 273.675, 1.3439, 3600, 0, 0, 18900, 0, 0, 0),
(128284, 16056, 533, 0, 0, 2872.54, -3754.76, 273.681, 1.25664, 3600, 0, 0, 18900, 0, 0, 0),
(128285, 16056, 533, 0, 0, 2838.36, -3754.8, 273.704, 4.59022, 3600, 0, 0, 18900, 0, 0, 0),
(128286, 16056, 533, 0, 0, 2821.22, -3751.85, 273.703, 5.98648, 3600, 0, 0, 18900, 0, 0, 0),
(128287, 16056, 533, 0, 0, 2762.27, -3774.95, 273.704, 1.88496, 3600, 0, 0, 18900, 0, 0, 0),
(128288, 16056, 533, 0, 0, 2750.7, -3760.29, 273.869, 3.10669, 3600, 0, 0, 18900, 0, 0, 0),
(128319, 16068, 533, 0, 0, 2847.36, -3688.1, 279.027, 4.76567, 3600, 5, 0, 8, 0, 0, 1),
(128320, 16068, 533, 0, 0, 2862.42, -3671.69, 276.904, 1.73453, 3600, 5, 0, 8, 0, 0, 1),
(128321, 16068, 533, 0, 0, 2755.28, -3590.7, 256.861, 6.0064, 3600, 5, 0, 8, 0, 0, 1),
(128322, 16068, 533, 0, 0, 2833.08, -3548.21, 254.238, 1.05746, 3600, 5, 0, 8, 0, 0, 1),
(128323, 16068, 533, 0, 0, 2765.66, -3581.11, 255.935, 3.78032, 3600, 5, 0, 8, 0, 0, 1),
(128324, 16068, 533, 0, 0, 2894.29, -3618.93, 273.603, 2.11469, 3600, 5, 0, 8, 0, 0, 1),
(128325, 16068, 533, 0, 0, 2775.15, -3559.07, 250.923, 5.44874, 3600, 5, 0, 8, 0, 0, 1),
(128326, 16068, 533, 0, 0, 2773.29, -3616.7, 254.731, 2.82547, 3600, 5, 0, 8, 0, 0, 1),
(128327, 16068, 533, 0, 0, 2889.84, -3678.42, 281.347, 4.25105, 3600, 5, 0, 8, 0, 0, 1),
(128328, 16068, 533, 0, 0, 2734.93, -3597.33, 258.319, 0.807797, 3600, 5, 0, 8, 0, 0, 1),
(128329, 16068, 533, 0, 0, 2801.9, -3589.27, 254.856, 2.63119, 3600, 5, 0, 8, 0, 0, 1),
(128330, 16068, 533, 0, 0, 2879.9, -3650.04, 274.982, 0.10067, 3600, 5, 0, 8, 0, 0, 1),
(128331, 16068, 533, 0, 0, 2881.9, -3620.86, 270.75, 0.244238, 3600, 5, 0, 8, 0, 0, 1),
(128332, 16068, 533, 0, 0, 2912.48, -3586.57, 274.36, 1.10071, 3600, 5, 0, 8, 0, 0, 1),
(128333, 16068, 533, 0, 0, 2899.39, -3700.27, 285.613, 0.090022, 3600, 5, 0, 8, 0, 0, 1),
(128334, 16068, 533, 0, 0, 2877.12, -3691.8, 282.437, 4.89036, 3600, 5, 0, 8, 0, 0, 1),
(128335, 16068, 533, 0, 0, 2673.3, -3624.03, 265.549, 2.16559, 3600, 5, 0, 8, 0, 0, 1),
(128336, 16068, 533, 0, 0, 2861.03, -3648.37, 272.216, 3.87341, 3600, 5, 0, 8, 0, 0, 1),
(128337, 16068, 533, 0, 0, 2860.04, -3706.87, 284.113, 4.24212, 3600, 5, 0, 8, 0, 0, 1);
DELETE FROM creature WHERE guid IN (128338,128339,128340,128341,128342,128343,128344,128345,128346,128347,128348,128349,128350,128351);
INSERT INTO creature (guid,id,map,modelid,equipment_id,position_x,position_y,position_z,orientation,spawntimesecs,spawndist,currentwaypoint,curhealth,curmana,DeathState,MovementType) VALUES
(128338, 16068, 533, 0, 0, 2811.54, -3576.31, 253.609, 4.81057, 3600, 5, 0, 8, 0, 0, 1),
(128339, 16068, 533, 0, 0, 2865.75, -3658.31, 274.641, 0.458959, 3600, 5, 0, 8, 0, 0, 1),
(128340, 16068, 533, 0, 0, 2896.11, -3656.78, 277.51, 0.313374, 3600, 5, 0, 8, 0, 0, 1),
(128341, 16068, 533, 0, 0, 2905.33, -3682.31, 283.876, 0.59482, 3600, 5, 0, 8, 0, 0, 1),
(128342, 16068, 533, 0, 0, 2895.52, -3572.9, 272.322, 2.09725, 3600, 5, 0, 8, 0, 0, 1),
(128343, 16068, 533, 0, 0, 2855.79, -3618.3, 263.904, 0.579871, 3600, 5, 0, 8, 0, 0, 1),
(128344, 16068, 533, 0, 0, 2790.42, -3585.39, 253.704, 1.4536, 3600, 5, 0, 8, 0, 0, 1),
(128345, 16068, 533, 0, 0, 2897.74, -3646.21, 276.007, 1.83488, 3600, 5, 0, 8, 0, 0, 1),
(128346, 16068, 533, 0, 0, 2704, -3600.04, 260.803, 1.0333, 3600, 5, 0, 8, 0, 0, 1),
(128347, 16068, 533, 0, 0, 2689.36, -3594.03, 261.013, 5.88405, 3600, 5, 0, 8, 0, 0, 1),
(128348, 16068, 533, 0, 0, 2875.86, -3705.54, 284.832, 3.04009, 3600, 5, 0, 8, 0, 0, 1),
(128349, 16068, 533, 0, 0, 2869.41, -3589.09, 266.096, 1.27594, 3600, 5, 0, 8, 0, 0, 1),
(128350, 16068, 533, 0, 0, 2884.94, -3598.44, 269.901, 1.45662, 3600, 5, 0, 8, 0, 0, 1),
(128351, 16082, 533, 0, 0, 3122.96, -3152.1, 342.371, 6.10865, 3600, 0, 0, 17010, 0, 0, 0);


-- qiraji gladiators fix
DELETE FROM creature WHERE guid IN (87517,87518,87519,87520,87521,87522,87523,87524,87525,87526,590008);
INSERT INTO creature (guid,id,map,modelid,equipment_id,position_x,position_y,position_z,orientation,spawntimesecs,spawndist,currentwaypoint,curhealth,curmana,DeathState,MovementType) VALUES
(87517, 15324, 509, 0, 0, -9162.49, 1518.8, 22.7809, 0.226893, 450, 0, 0, 50304, 0, 0, 0),
(87518, 15324, 509, 0, 0, -9148.94, 1510.32, 21.9923, 0.942478, 450, 0, 0, 50304, 0, 0, 0),
(87519, 15324, 509, 0, 0, -9067.32, 1673.46, 23.0715, 4.31096, 450, 0, 0, 50304, 0, 0, 0),
(87520, 15324, 509, 0, 0, -9053.82, 1664.36, 22.9385, 3.9968, 450, 0, 0, 50304, 0, 0, 0),
(87521, 15324, 509, 0, 0, -8706.15, 1552.28, 31.9903, 5.41052, 450, 0, 0, 50304, 0, 0, 0),
(87522, 15324, 509, 0, 0, -8693.79, 1565.82, 31.9903, 5.35816, 450, 0, 0, 50304, 0, 0, 0),
(87523, 15324, 509, 0, 0, -8531.85, 1515.69, 33.2644, 0.767945, 450, 0, 0, 50304, 0, 0, 0),
(87524, 15324, 509, 0, 0, -8517.44, 1505.66, 33.3647, 0.837758, 450, 0, 0, 50304, 0, 0, 0),
(87525, 15590, 509, 0, 0, -9407.72, 1960.2, 85.6391, 1.11701, 300, 0, 0, 1, 0, 0, 0);

-- fix errors
UPDATE creature SET curhealth=64 WHERE id=14881;
UPDATE creature SET curhealth=37000 WHERE id=16998;
UPDATE creature SET curhealth=27000 WHERE id=15514;
UPDATE creature SET curhealth=71720 WHERE id=15385;
UPDATE creature SET curhealth=57387 WHERE id=15386;
UPDATE creature SET curhealth=70457 WHERE id=15388;
UPDATE creature SET curhealth=69073 WHERE id=15389;
UPDATE creature SET curhealth=80342 WHERE id=15390;
UPDATE creature SET curhealth=82662 WHERE id=15391;
UPDATE creature SET curhealth=69952 WHERE id=15392;
UPDATE creature SET curhealth=160 WHERE id=4076;
UPDATE creature SET curhealth=8774 WHERE id=10257;
UPDATE creature SET curhealth=4120 WHERE id=15590;
UPDATE creature SET curhealth=10283, curmana=12000 WHERE id=16036;
UPDATE creature SET spawndist=0 WHERE id=2038;


-- ***** Missing classic GO spawns *****

DELETE FROM gameobject WHERE guid IN (87696,87697,94154,131,146,154,155,156,160,161,92228,92220,92224,92226);
INSERT INTO gameobject (guid,id,map,position_x,position_y,position_z,orientation,rotation0,rotation1,rotation2,rotation3,spawntimesecs,animprogress,state) VALUES
-- deadmines

(87696, 180024, 36, -29.8574, -375.084, 59.3619, 6.13763, 0, 0, 0.0727134, -0.997353, -300, 100, 1),
-- uldaman
(94154, 141979, 70, 153.39, 289.091, -52.2262, 2.68781, 0, 0, 0, 0, -14400, 255, 1),
-- gnomeregan
(131, 144065, 90, -541.866, -98.5281, -155.855, 0.733038, 0, 0, 0.358368, 0.93358, -86400, 0, 1),
(146, 144065, 90, -535.176, -105.624, -156.001, 0.331611, 0, 0, 0.165047, 0.986286, -86400, 0, 1),
(154, 144065, 90, -506.603, -88.8375, -151.09, -0.977383, 0, 0, -0.469471, 0.882948, -86400, 0, 1),
(155, 144065, 90, -503.869, -97.2345, -150.952, 1.72787, 0, 0, 0.760406, 0.649449, -86400, 0, 1),
(156, 103820, 90, -511.33, -139.962, -152.476, 0.750491, 0, 0, 0.366501, 0.930418, -86400, 0, 1),
(160, 103820, 90, -510.675, -139.437, -152.617, -2.94959, 0, 0, -0.995396, 0.0958512, -86400, 0, 1),
(161, 103820, 90, -511.898, -139.356, -152.479, -2.32129, 0, 0, -0.91706, 0.39875, -86400, 0, 1),
(92228, 74447, 90, -830.873, 278.731, -272.596, 1.36136, 0, 0, 0.629322, 0.777145, 86400, 255, 1),
-- scarlet monastery
(92220, 75297, 189, 1743.48, -407.254, 8.01026, 0.017452, 0, 0, 0.00872589, 0.999962, 86400, 255, 1),
-- blackrock spire
(92224, 153464, 229, 183.647, -369.15, 117.143, 2.44346, 0, 0, 0.939692, 0.342021, 86400, 255, 1),
(92226, 153469, 229, -20.2914, -361.811, 50.6356, -1.64061, 0, 0, -0.731354, 0.681998, 86400, 255, 1),
-- blackrock depths
(87697, 174503, 230, 873.428, -142.527, -49.7396, 0.375246, 0, 0, 0.186524, 0.98245, 600, 100, 1);
DELETE FROM gameobject WHERE guid IN (12654,12655,12657,12893,12927,12994,13006,13108,13203,13250,13278,13279,13280,13428,14813,14814,14815,14816,14819
    ,14820,14821,14822,14823,14824,14825,14826,14827,14828,14830,93893,94155,94156,94157,12443,11495,9306,9301,14106,14124,14127,14142);
INSERT INTO gameobject (guid,id,map,position_x,position_y,position_z,orientation,rotation0,rotation1,rotation2,rotation3,spawntimesecs,animprogress,state) VALUES
-- dire maul
(12654, 176905, 429, -21.1056, -392.466, -58.1027, -1.16064, 0, 0, -0.548292, 0.836287, 180, 255, 1),
(12655, 176906, 429, 4.30669, -441.621, -37.9976, -2.71398, 0, 0, -0.97723, 0.212183, 180, 255, 1),
(12657, 179485, 429, 558.806, 550.065, -25.4008, 3.14159, 0, 0, 1, 1.26759e-006, 180, 255, 1),
(12893, 179502, 429, 277.695, -423.25, -120.04, -2.92342, 0, 0, -0.994056, 0.108872, 180, 255, 1),
(12927, 179503, 429, -38.9654, 813.709, -27.3178, 0, 0, 0, 0, 1, 180, 255, 1),
(12994, 179504, 429, 78.1384, 737.402, -24.6216, 0, 0, 0, 0, 1, 180, 255, 1),
(13006, 179505, 429, -155.434, 734.166, -24.6216, 0, 0, 0, 0, 1, 180, 255, 1),
(13108, 179506, 429, -38.7567, 812.587, -3.8761, 0, 0, 0, 0, 1, 180, 255, 1),
(13203, 179511, 429, 581.241, 524.321, -25.4027, -2.79252, 0, 0, -0.984807, 0.173652, 180, 255, 1),
(13250, 177211, 429, -41.8255, 159.874, -3.44834, 0, 0, 0, 0, 1, 180, 255, 1),
(13278, 177212, 429, 10.7215, 159.459, -3.44834, 3.14159, 0, 0, -1, 0, 180, 255, 1),
(13279, 177213, 429, 10.5912, -154.998, -2.69379, 3.14159, 0, 0, -1, 0, 180, 255, 1),
(13280, 177215, 429, 255.408, 10.3792, -2.69381, 1.5708, 0, 0, 0.707107, 0.707107, 180, 255, 1),
(13428, 177217, 429, 491.204, 515.133, 29.4675, 1.5708, 0, 0, 0.707107, 0.707107, 180, 255, 1),
(14813, 177220, 429, 252.327, -404.921, -120.62, -1.5708, 0, 0, -0.707107, 0.707107, 180, 255, 1),
(14814, 177221, 429, 50.5861, 501.941, -23.1499, -1.5708, 0, 0, -0.707107, 0.707107, 180, 255, 1),
(14815, 179545, 429, 116.135, 638.836, -48.467, -0.785397, 0, 0, -0.382683, 0.92388, 7200, 255, 1),
(14816, 179549, 429, 351.568, 88.6736, -36.393, 1.5708, 0, 0, 0.707107, 0.707107, 180, 255, 1),
(14819, 179550, 429, 83.2549, 630.546, -24.6315, -0.637043, 0, 0, -0.313163, 0.949699, 180, 255, 1),
(14820, 177257, 429, -92.3458, 442.67, 28.547, 0.418879, 0, 0, 0.207912, 0.978148, 180, 255, 1),
(14821, 177258, 429, 121.222, 429.092, 28.4548, 0.418879, 0, 0, 0.207912, 0.978148, 180, 255, 1),
(14822, 177259, 429, 12.9412, 277.931, -8.93289, 0, 0, 0, 0, 1, 180, 255, 1),
(14823, 179563, 429, 116.105, 638.89, -48.467, -1.76278, 0, 0, -0.771624, 0.636079, 7200, 255, 1),
(14824, 153464, 429, 43.2012, -383.143, -58.6196, -1.72787, 0, 0, -0.760404, 0.64945, 180, 255, 1),
(14825, 153464, 429, 122.562, 392.1, 28.601, 3.07177, 0, 0, 0.999391, 0.0349043, 180, 255, 1),
(14826, 153464, 429, 582.929, 608.082, -25.4027, -2.56563, 0, 0, -0.958819, 0.284017, 180, 255, 1),
(14827, 153464, 429, -95.0448, 367.08, -3.48702, -1.32645, 0, 0, -0.615661, 0.788011, 180, 255, 1),
(14828, 153464, 429, 335.605, 366.155, 2.85293, -2.61799, 0, 0, -0.965925, 0.258821, 180, 255, 1),
(14830, 153469, 429, -16.1474, -383.786, -58.62, -1.32645, 0, 0, -0.615661, 0.788011, 180, 255, 1),
-- ruins of AQ
(93893, 180619, 509, -9407.72, 1960.21, 85.6391, 1.11701, 0, 0, 0.529919, 0.848048, -120, 255, 1),
(94155, 180691, 509, -8713.44, 1543.34, 32.2034, 0.767944, 0, 0, 0.374606, 0.927184, 7200, 100, 1),
(94156, 180691, 509, -8938.36, 1860.11, 3.23041, -2.53072, 0, 0, -0.953716, 0.300708, 7200, 100, 1),
(94157, 180691, 509, -9090.66, 1500.96, 24.4341, 0.977383, 0, 0, 0.469471, 0.882948, 7200, 100, 1),
-- temple of AQ
(12443, 181068, 531, -8173.66, 2090.37, 129.196, -1.978, 0, 0, -0.835477, 0.549526, -604800, 255, 1),
(11495, 181068, 531, -8175.84, 2085.63, 129.196, -0.360985, 0, 0, -0.179514, 0.983755, -604800, 255, 1),
(9306, 181068, 531, -8181.35, 2088.32, 129.196, -1.27903, 0, 0, -0.596806, 0.802385, -604800, 255, 1),
(9301, 181068, 531, -8174.7, 2093.79, 129.196, -2.24674, 0, 0, -0.901564, 0.432647, -604800, 255, 1),
(14106, 181068, 531, -8291.93, 2119.56, 118.3, 0.045136, 0, 0, 0.0225661, 0.999745, -604800, 255, 1),
(14124, 181068, 531, -8295.17, 2112.25, 118.3, 2.79713, 0, 0, 0.985205, 0.171381, -604800, 255, 1),
(14127, 181068, 531, -8303.25, 2117.6, 118.3, -0.102194, 0, 0, -0.0510748, 0.998695, -604800, 255, 1),
(14142, 181068, 531, -8295.91, 2129.5, 118.3, 3.04654, 0, 0, 0.998871, 0.0475084, -604800, 255, 1);

-- Thanks scotty0100 for pointing and fixing all of these
-- Removed duplicate gossip menu option for creature 4730 (Lelanai)
DELETE FROM `gossip_menu_option` WHERE `menu_id` = 3185 AND `id` = 0;
-- Fixed wrong direction given by Stormwind Guard when asking for cooking trainer
UPDATE `gossip_menu_option` SET `action_poi_id` = 42 WHERE `menu_id` = 421 AND `id` = 2;

-- Fixed creature 2818 (Slagg) who was visible only to GM
UPDATE `creature_template` SET `npcflag` = 19 WHERE `entry` = 2818;
-- Fixed creature 6251 (Strahad Farsan) who was visible only to GM, thanks scotty0100 for pointing and fixing
UPDATE `creature_template` SET `npcflag` = 3 WHERE `entry` = 6251;

-- Added gossip menus to the following gameobjects based on UDB data, also fixed type when needed
-- Gossips were checked to prevent linking to a TBC/WotLK gossip
-- This should greatly decrease the number of broken quests, events or scripts due to missing gossip menus
-- Source: UDB
UPDATE `gameobject_template` SET `type`= 2, `data3` = 1045 WHERE `entry` = 142345; -- Matrix Punchograph 3005-A
UPDATE `gameobject_template` SET `type`= 2, `data3` = 1047 WHERE `entry` = 142475; -- Matrix Punchograph 3005-B
UPDATE `gameobject_template` SET `type`= 2, `data3` = 1049 WHERE `entry` = 142476; -- Matrix Punchograph 3005-C
UPDATE `gameobject_template` SET `type`= 2, `data3` = 1050 WHERE `entry` = 142696; -- Matrix Punchograph 3005-D
UPDATE `gameobject_template` SET `type`= 2, `data3` = 2211 WHERE `entry` = 160445; -- Sha'ni Proudtusk's Remains
UPDATE `gameobject_template` SET `type`= 2, `data3` = 2187 WHERE `entry` = 169294; -- Tablet of the Seven
UPDATE `gameobject_template` SET `type`= 2, `data3` = 6669 WHERE `entry` = 180665; -- Draconic for Dummies
UPDATE `gameobject_template` SET `type`= 2, `data3` = 6670 WHERE `entry` = 180666; -- Draconic for Dummies
UPDATE `gameobject_template` SET `type`= 2, `data3` = 6668 WHERE `entry` = 180667; -- Draconic for Dummies

-- Added missing gossip menu option for Matrix Punchograph
DELETE FROM `gossip_menu_option` WHERE menu_id = 1047 AND id = 1;
INSERT INTO `gossip_menu_option` VALUES (1047, 1, 0, 'Use engineering to access hidden shematics!', 1, 1, -1, 0, 104702, 0, 0, '', 672);
-- Added missing script for Matrix Punchograph

DELETE FROM `dbscripts_on_gossip` WHERE id = 104702;
INSERT INTO `dbscripts_on_gossip` VALUES (104702, 0, 17, 14639, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Hidden schematic');

DELETE FROM `gameobject_loot_template` WHERE `entry` IN (2, 180665, 180666, 180667);
-- Removed no longer used gameobject_loot_template 2032. See Classic DB revision 0203
DELETE FROM `gameobject_loot_template` WHERE `entry` = 2032;
-- Added missing conditions for gossip menu option 1047 id 1. See Classic DB revision 0233
DELETE FROM `conditions` WHERE `condition_entry` IN (461, 462, 671, 672);
INSERT INTO `conditions` VALUES
(461, 24, 14639, 1),
(462, 7, 202, 140),
(671, -1, 462, 35),
(672, -1, 461, 671);

DELETE FROM `npc_vendor` WHERE `entry` = 7940 AND `item` IN (14472, 14469, 14488);
INSERT INTO `npc_vendor` VALUES
(7940, 14472, 1, 1200, 0), -- adds Pattern: Runecloth Cloak to Darnalls item list
(7940, 14469, 1, 1200, 0), -- Pattern: Runecloth Robe
(7940, 14488, 1, 1200, 0); -- Pattern: Runecloth Boots

-- Updated gossip_menu for hunter pets trainer since 1.7 they should use gossip 4783
-- and be able to untrain pets
-- for pet training (see http://www.wowwiki.com/Hunter_pet and http://www.wowwiki.com/Patch_1.7.0)
DELETE FROM `gossip_menu_option` WHERE `menu_id` = 4783; -- Fixes Pet Trainer Gossip Menu
INSERT INTO `gossip_menu_option` VALUES
(4783, 1, 3, 'How do I train my pet?', 5, 16, 0, 0, 0, 0, 0, NULL, 0),
(4783, 2, 0, 'I wish to untrain my pet.', 17, 16, 0, 0, 0, 0, 0, NULL, 0);

UPDATE `gameobject` SET `spawntimesecs` = 0 WHERE `id` = 13949;
UPDATE `creature_template` SET `equipment_id` = 0 WHERE `entry` = 4789;
UPDATE `creature_template` SET `scale` = 0 WHERE `entry` IN (4810, 4812, 4814);
UPDATE `creature_addon` SET `auras` = '6408' WHERE `guid` IN (33173, 33175, 33176, 33177, 33178, 33179);

-- Added missing gossip menu option and script to creature 6729 (Morridune)
-- He can now teleport Alliance players from Blackfathom Deeps to Darnassus
-- Source: UDB
DELETE FROM `gossip_menu_option` WHERE `menu_id` = 321 AND `id` = 0;
INSERT INTO `gossip_menu_option` VALUES
(321, 0, 0, 'Please port me to Darnassus.', 1, 1, 0, 0, 321, 0, 0, '', 0);

DELETE FROM `dbscripts_on_gossip` WHERE `id` = 321;
INSERT INTO `dbscripts_on_gossip` VALUES
(321, 0, 15, 9268, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Teleport to Darnassus');

-- Added waypoint movement and paths for 3 patrols in Naxxramas Military Quarter

-- Waypoints for the Deathknight Captains in first room of Military Quarter
-- Source: http://www.youtube.com/watch?v=PQ88MOZ-gGk

UPDATE `creature` SET `position_x` = 2867.81, `position_y` = -3275.33, `position_z` = 298.30, `orientation` = 4.75, `MovementType` = 2 WHERE `guid` = 88425;
UPDATE `creature` SET `position_x` = 2871.87, `position_y` = -3275.17, `position_z` = 298.31, `orientation` = 4.71, `MovementType` = 2 WHERE `guid` = 88424;

DELETE FROM `creature_movement` WHERE `id` = 88424;
INSERT INTO `creature_movement` VALUES (88424, 1, 2871.87, -3275.17, 298.31, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.71, 0, 0);
INSERT INTO `creature_movement` VALUES (88424, 2, 2876.79, -3323.75, 298.15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.51, 0, 0);

DELETE FROM `creature_linking` WHERE `guid` = 88425;
INSERT INTO `creature_linking` VALUES
(88425, 88424, 515);

-- Waypoints for Shade of Naxxramas and the two Necro Knights in the first room
-- Source: http://www.youtube.com/watch?v=PQ88MOZ-gGk


UPDATE `creature` SET `MovementType` = 2 WHERE `guid` IN (88397, 88398, 88399);

DELETE FROM `creature_movement` WHERE `id` = 88397;
INSERT INTO `creature_movement` VALUES (88397, 1, 2919.12, -3346.21, 298.32, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.34, 0, 0);
INSERT INTO `creature_movement` VALUES (88397, 2, 2869.00, -3296.10, 298.14, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.58, 0, 0);

DELETE FROM `creature_linking` WHERE `guid` IN (88398, 88399);
INSERT INTO `creature_linking` VALUES
(88398, 88397, 515),
(88399, 88397, 515);

-- Waypoints for Deathknight Captain and the two Death Touched Warriors in the second room
-- Source: http://www.youtube.com/watch?v=PQ88MOZ-gGk

UPDATE `creature` SET `MovementType` = 2 WHERE `guid` IN (88440, 88442, 88441);

DELETE FROM `creature_movement` WHERE `id` = 88440;
INSERT INTO `creature_movement` VALUES (88440, 1, 2812.05, -3177.41, 298.33, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6.01, 0, 0);
INSERT INTO `creature_movement` VALUES (88440, 2, 2877.82, -3214.98, 298.15, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.62, 0, 0);

DELETE FROM `creature_linking` WHERE `guid` IN (88442, 88441);
INSERT INTO `creature_linking` VALUES
(88442, 88440, 515),
(88441, 88440, 515);

-- Improves end script for quest 963 (For Love Eternal) to make creature 3466 (Cerellean Whiteclaw) stand and kneel
DELETE FROM `dbscripts_on_quest_end` WHERE `id` = 963 AND `command` = 28;
INSERT INTO `dbscripts_on_quest_end` (`id`, `delay`, `command`, `datalong`, `datalong2`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
(963, 2, 28, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'stands'),
(963, 55, 28, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'kneel');

-- Fixes text emote for buddy 3843 (Anaya)
UPDATE `db_script_string` SET `content_default` = '\'s soft voice trails away into the mists. "Know that I love you always..."' WHERE `entry` = 2000005344;

-- Added stealth auras for creatures that were missing it. Creature AI scripts were checked to ensure they do not
-- have stealth applied by EventAI as applying the aura twice would cancel it.
-- Source: TBC-DB
UPDATE `creature_addon` SET `auras` = '6408' WHERE `guid` IN (
    SELECT `guid` FROM `creature` WHERE `id` IN (
    1713, -- Elder Shadowmaw Panther
    2246, -- Syndicate Assassin
    2926, -- Silvermane Stalker
    3279, -- Witchwing Ambusher
    3634, -- Deviate Stalker
    3770, -- Bleakheart Shadowstalker
    7110, -- Jadefire Shadowstalker
    7432, -- Frostsaber Stalker
    11723, -- Hive'Ashi Sandstalker
    11730 -- Hive'Regal Ambusher
    )
);

UPDATE `creature_addon` SET `auras` = TRIM(CONCAT(`creature_addon`.`auras`, ' 6408')) WHERE `guid` IN (
    SELECT `guid` FROM `creature` WHERE `id` IN (
    8538, -- Unseen Servant
    8539 -- Eyeless Watcher
    )
);

-- Added event for Pyrewood Village: inhabitants of the village are human during day time (friendly to Alliance, hostile to Horde)
-- and they turn to worgens at time (hostile to both factions)
-- Source: http://www.wowwiki.com/Pyrewood_Village
-- http://www.wowhead.com/npc=1893#comments
-- http://www.wowhead.com/npc=1894#comments
-- http://www.wowhead.com/npc=1895#comments
-- http://www.wowhead.com/npc=1896#comments


-- Added events for Pyrewood day: inhabitants are human and Pyrwood night: inhabitants are worgen
-- We keep event id as low as possible to minimise RAM usage by core
DELETE FROM `game_event` WHERE `entry` IN (3, 11);
INSERT INTO `game_event` VALUES
(3, '2006-02-08 05:00:00', '2020-12-31 20:59:59', 1440, 960, 0, 'Pyrewood Village - Day'),
(11, '2006-02-08 21:00:00', '2020-12-31 04:59:59', 1440, 480, 0, 'Pyrewood Village - Worgen Curse');

-- Linked Pyrewood human inhabitants to day event (3) so they only spawn when it is active
DELETE FROM `game_event_creature` WHERE `event` IN (3, 11);
INSERT INTO `game_event_creature` VALUES
-- Pyrewood Watcher
(17908, 3),
(18404, 3),
(18408, 3),
(19002, 3),
(19005, 3),
(19084, 3),
(19219, 3),
(19222, 3),
(19223, 3),
(19224, 3),
(19227, 3),
(19229, 3),
(19316, 3),
(19343, 3),
-- Pyrewood Sentry
(17910, 3),
(17911, 3),
(18236, 3),
(18237, 3),
(18239, 3),
(18291, 3),
(18306, 3),
(18350, 3),
(18400, 3),
(18411, 3),
(18413, 3),
(18996, 3),
(19008, 3),
(19012, 3),
(19015, 3),
(19019, 3),
(19220, 3),
(19228, 3),
-- Pyrewood Elder
(17663, 3),
(17905, 3),
(18220, 3),
(18221, 3),
(18238, 3),
(18310, 3),
(18354, 3),
(18355, 3),
(18405, 3),
(18407, 3),
(18409, 3),
(19007, 3),
-- Pyrewood Armorer
(18307, 3),
-- Pyrewood Tailor
(18235, 3),
-- Pyrewood Leatherworker
(18309, 3);

-- Added all data regarding worgen spawns based on human spawns data

SET @OFFSET := 160000;

-- Updates moonrage worgen template to adjust scale and add missing equipment as NPCs keep the same equipment when transforming, see:
-- http://www.wowhead.com/npc=1896#screenshots:id=35797
-- http://www.wowhead.com/npc=3533#screenshots:id=35799
UPDATE `creature_template` SET `equipment_id` = 1941 WHERE `entry` = 1892;
UPDATE `creature_template` SET `equipment_id` = 642 WHERE `entry` = 1893;
UPDATE `creature_template` SET `scale` = 1.4, `equipment_id` = 119 WHERE `entry` = 1896;
UPDATE `creature_template` SET `scale` = 1.4, `equipment_id` = 429 WHERE `entry` = 3529;
UPDATE `creature_template` SET `scale` = 1.4, `equipment_id` = 1821 WHERE `entry` = 3531;
UPDATE `creature_template` SET `scale` = 1.4, `equipment_id` = 237 WHERE `entry` = 3533;

-- Adding spawn for worgens at the same location as their human equivalent
DELETE FROM `creature` WHERE `guid` IN (@OFFSET + 17908, @OFFSET + 18404, @OFFSET + 18408, @OFFSET + 19002, @OFFSET + 19005, @OFFSET + 19084, @OFFSET + 19219, @OFFSET + 19222, @OFFSET + 19223, @OFFSET + 19224, @OFFSET + 19227, @OFFSET + 19229, @OFFSET + 19316, @OFFSET + 19343, @OFFSET + 17910, @OFFSET + 17911, @OFFSET + 18236, @OFFSET + 18237, @OFFSET + 18239, @OFFSET + 18291, @OFFSET + 18306, @OFFSET + 18350, @OFFSET + 18400, @OFFSET + 18411, @OFFSET + 18413, @OFFSET + 18996, @OFFSET + 19008, @OFFSET + 19012, @OFFSET + 19015, @OFFSET + 19019, @OFFSET + 19220, @OFFSET + 19228, @OFFSET + 17663, @OFFSET + 17905, @OFFSET + 18220, @OFFSET + 18221, @OFFSET + 18238, @OFFSET + 18310, @OFFSET + 18354, @OFFSET + 18355, @OFFSET + 18405, @OFFSET + 18407, @OFFSET + 18409, @OFFSET + 19007, @OFFSET + 18307, @OFFSET + 18235, @OFFSET + 18309);
INSERT INTO `creature` VALUES
(@OFFSET + 17908, 1892, 0, 574, 0, -405.033, 1458.8, 27.0968, 0.15708, 600, 0, 0, 891, 0, 0, 0),
(@OFFSET + 18404, 1892, 0, 574, 0, -350.427, 1448.5, 24.3665, 4.72984, 600, 0, 0, 891, 0, 0, 0),
(@OFFSET + 18408, 1892, 0, 574, 0, -370.983, 1576.35, 16.981, 1.98656, 600, 5, 0, 891, 0, 0, 2),
(@OFFSET + 19002, 1892, 0, 574, 0, -377.63, 1491.95, 18.4887, 5.32325, 600, 0, 0, 891, 0, 0, 0),
(@OFFSET + 19005, 1892, 0, 574, 0, -381.301, 1653.14, 17.7911, 4.4855, 600, 0, 0, 891, 0, 0, 0),
(@OFFSET + 19084, 1892, 0, 574, 0, -354.378, 1421.62, 28.2597, 5.14872, 600, 0, 0, 891, 0, 0, 0),
(@OFFSET + 19219, 1892, 0, 574, 0, -432.435, 1531.27, 18.7313, 4.20121, 600, 5, 0, 891, 0, 0, 1),
(@OFFSET + 19222, 1892, 0, 574, 0, -350.822, 1606.93, 18.0028, 3.78911, 600, 0, 0, 891, 0, 0, 0),
(@OFFSET + 19223, 1892, 0, 574, 0, -416.268, 1576.92, 19.5441, 3.61468, 600, 0, 0, 891, 0, 0, 0),
(@OFFSET + 19224, 1892, 0, 574, 0, -439.617, 1517.84, 19.5619, 3.33314, 600, 5, 0, 891, 0, 0, 1),
(@OFFSET + 19227, 1892, 0, 574, 0, -358.11, 1528.2, 24.9468, 1.18862, 600, 0, 0, 891, 0, 0, 0),
(@OFFSET + 19229, 1892, 0, 574, 0, -433.404, 1564.13, 19.7291, 1.48262, 600, 5, 0, 891, 0, 0, 1),
(@OFFSET + 19316, 1892, 0, 574, 0, -363.818, 1545.45, 24.4813, 3.24746, 600, 0, 0, 891, 0, 0, 0),
(@OFFSET + 19343, 1892, 0, 574, 0, -345.242, 1601.84, 17.0845, 2.23485, 600, 0, 0, 891, 0, 0, 0),
(@OFFSET + 17910, 1893, 0, 564, 0, -410.983, 1453.18, 31.679, 5.59007, 600, 5, 0, 1019, 0, 0, 1),
(@OFFSET + 17911, 1893, 0, 564, 0, -404.028, 1460.9, 31.7653, 5.84685, 600, 0, 0, 1019, 0, 0, 0),
(@OFFSET + 18236, 1893, 0, 564, 0, -333.219, 1548.41, 25.2864, 4.7729, 600, 0, 0, 1019, 0, 0, 0),
(@OFFSET + 18237, 1893, 0, 564, 0, -339.031, 1547.76, 30.0369, 3.83411, 600, 3, 0, 1019, 0, 0, 1),
(@OFFSET + 18239, 1893, 0, 564, 0, -341.711, 1553.34, 24.5273, 3.26377, 600, 0, 0, 1019, 0, 0, 0),
(@OFFSET + 18291, 1893, 0, 564, 0, -380.605, 1435.24, 25.7369, 5.98648, 600, 0, 0, 1019, 0, 0, 0),
(@OFFSET + 18306, 1893, 0, 564, 0, -378.287, 1655.98, 10.346, 2.89725, 600, 3, 0, 1019, 0, 0, 1),
(@OFFSET + 18350, 1893, 0, 564, 0, -411.642, 1509.01, 19.8575, 1.55334, 600, 0, 0, 1019, 0, 0, 0),
(@OFFSET + 18400, 1893, 0, 564, 0, -390.535, 1466.63, 25.9869, 5.34071, 600, 0, 0, 1019, 0, 0, 0),
(@OFFSET + 18411, 1893, 0, 564, 0, -391.615, 1601.72, 17.1706, 4.86947, 600, 0, 0, 1019, 0, 0, 0),
(@OFFSET + 18413, 1893, 0, 564, 0, -355.263, 1580.06, 18.0622, 0.078739, 600, 0, 0, 1019, 0, 0, 0),
(@OFFSET + 18996, 1893, 0, 564, 0, -442.388, 1539.5, 19.6376, 4.53468, 600, 5, 0, 1019, 0, 0, 1),
(@OFFSET + 19008, 1893, 0, 564, 0, -389.73, 1634.41, 17.4309, 6.20095, 600, 0, 0, 1019, 0, 0, 0),
(@OFFSET + 19012, 1893, 0, 564, 0, -385.558, 1618.24, 24.2887, 4.07713, 600, 3, 0, 1019, 0, 0, 1),
(@OFFSET + 19015, 1893, 0, 564, 0, -385.776, 1632.95, 24.2887, 3.83402, 600, 0, 0, 1019, 0, 0, 0),
(@OFFSET + 19019, 1893, 0, 564, 0, -384.391, 1560.98, 17.1156, 2.65866, 600, 5, 0, 1019, 0, 0, 1),
(@OFFSET + 19220, 1893, 0, 564, 0, -420.551, 1544.65, 18.3187, 2.70724, 600, 5, 0, 1019, 0, 0, 2),
(@OFFSET + 19228, 1893, 0, 564, 0, -372.427, 1611.08, 24.3721, 1.32645, 600, 0, 0, 1019, 0, 0, 0),
(@OFFSET + 17663, 1896, 0, 729, 0, -327.462, 1555.21, 25.2491, 1.61376, 600, 0, 0, 950, 295, 0, 0),
(@OFFSET + 17905, 1896, 0, 729, 0, -407.955, 1451.33, 27.0859, 0.767945, 600, 0, 0, 950, 295, 0, 0),
(@OFFSET + 18220, 1896, 0, 729, 0, -391.907, 1432.23, 27.0313, 6.07375, 600, 0, 0, 950, 295, 0, 0),
(@OFFSET + 18221, 1896, 0, 729, 0, -344.082, 1504.01, 18.7918, 4.18879, 600, 0, 0, 950, 295, 0, 0),
(@OFFSET + 18238, 1896, 0, 729, 0, -329.456, 1545.74, 30.1367, 2.26893, 600, 0, 0, 950, 295, 0, 0),
(@OFFSET + 18310, 1896, 0, 729, 0, -414.124, 1581.03, 19.7275, 6.10865, 600, 0, 0, 950, 295, 0, 0),
(@OFFSET + 18354, 1896, 0, 729, 0, -413.706, 1579.64, 24.2994, 2.9861, 600, 0, 0, 950, 295, 0, 0),
(@OFFSET + 18355, 1896, 0, 729, 0, -423.094, 1578.33, 24.3098, 2.98749, 600, 0, 0, 950, 295, 0, 0),
(@OFFSET + 18405, 1896, 0, 729, 0, -411.947, 1517.76, 19.7711, 4.86947, 600, 0, 0, 950, 295, 0, 0),
(@OFFSET + 18407, 1896, 0, 729, 0, -424.202, 1543.84, 18.5687, 6.17846, 600, 0, 0, 950, 295, 0, 0),
(@OFFSET + 18409, 1896, 0, 729, 0, -397.475, 1543.61, 17.1712, 3.0459, 600, 5, 0, 950, 295, 0, 1),
(@OFFSET + 19007, 1896, 0, 729, 0, -378.435, 1625.51, 16.8077, 0.694863, 600, 3, 0, 950, 295, 0, 1),
(@OFFSET + 18307, 3529, 0, 729, 0, -345.967, 1501.4, 18.9875, 0.942478, 600, 0, 0, 668, 0, 0, 0),
(@OFFSET + 18235, 3531, 0, 729, 0, -360.278, 1495.03, 17.196, 0.830526, 600, 0, 0, 996, 0, 0, 0),
(@OFFSET + 18309, 3533, 0, 729, 0, -408.091, 1604.03, 18.2868, 5.5676, 600, 0, 0, 956, 0, 0, 0);

-- Duplicated addon from the humans spawns
DELETE FROM `creature_addon` WHERE `guid` IN (@OFFSET + 17908, @OFFSET + 18404, @OFFSET + 18408, @OFFSET + 19002, @OFFSET + 19005, @OFFSET + 19084, @OFFSET + 19219, @OFFSET + 19222, @OFFSET + 19223, @OFFSET + 19224, @OFFSET + 19227, @OFFSET + 19229, @OFFSET + 19316, @OFFSET + 19343, @OFFSET + 17910, @OFFSET + 17911, @OFFSET + 18236, @OFFSET + 18237, @OFFSET + 18239, @OFFSET + 18291, @OFFSET + 18306, @OFFSET + 18350, @OFFSET + 18400, @OFFSET + 18411, @OFFSET + 18413, @OFFSET + 18996, @OFFSET + 19008, @OFFSET + 19012, @OFFSET + 19015, @OFFSET + 19019, @OFFSET + 19220, @OFFSET + 19228, @OFFSET + 17663, @OFFSET + 17905, @OFFSET + 18220, @OFFSET + 18221, @OFFSET + 18238, @OFFSET + 18310, @OFFSET + 18354, @OFFSET + 18355, @OFFSET + 18405, @OFFSET + 18407, @OFFSET + 18409, @OFFSET + 19007, @OFFSET + 18307, @OFFSET + 18235, @OFFSET + 18309);
INSERT INTO `creature_addon` VALUES
(@OFFSET + 17663, 0, 0, 1, 16, 0, 0, NULL),
(@OFFSET + 17905, 0, 0, 1, 16, 0, 0, NULL),
(@OFFSET + 17908, 0, 0, 1, 16, 0, 0, NULL),
(@OFFSET + 17910, 0, 0, 1, 16, 0, 0, NULL),
(@OFFSET + 17911, 0, 0, 1, 16, 0, 0, NULL),
(@OFFSET + 18220, 0, 0, 1, 16, 0, 0, NULL),
(@OFFSET + 18221, 0, 0, 1, 16, 0, 0, NULL),
(@OFFSET + 18235, 0, 0, 1, 16, 0, 0, NULL),
(@OFFSET + 18236, 0, 0, 1, 16, 0, 0, NULL),
(@OFFSET + 18237, 0, 0, 1, 16, 0, 0, NULL),
(@OFFSET + 18238, 0, 0, 1, 16, 0, 0, NULL),
(@OFFSET + 18239, 0, 0, 1, 16, 0, 0, NULL),
(@OFFSET + 18291, 0, 0, 1, 16, 0, 0, NULL),
(@OFFSET + 18306, 0, 0, 1, 16, 0, 0, NULL),
(@OFFSET + 18307, 0, 0, 1, 16, 0, 0, NULL),
(@OFFSET + 18309, 0, 0, 1, 16, 0, 0, NULL),
(@OFFSET + 18310, 0, 0, 1, 16, 0, 0, NULL),
(@OFFSET + 18350, 0, 0, 1, 16, 0, 0, NULL),
(@OFFSET + 18354, 0, 0, 1, 16, 0, 0, NULL),
(@OFFSET + 18355, 0, 0, 1, 16, 0, 0, NULL),
(@OFFSET + 18400, 0, 0, 1, 16, 0, 0, NULL),
(@OFFSET + 18404, 0, 0, 1, 16, 0, 0, NULL),
(@OFFSET + 18405, 0, 0, 1, 16, 0, 0, NULL),
(@OFFSET + 18407, 0, 0, 1, 16, 0, 0, NULL),
(@OFFSET + 18408, 0, 0, 1, 16, 0, 0, NULL),
(@OFFSET + 18409, 0, 0, 1, 16, 0, 0, NULL),
(@OFFSET + 18411, 0, 0, 1, 16, 0, 0, NULL),
(@OFFSET + 18413, 0, 0, 1, 16, 0, 0, NULL),
(@OFFSET + 18996, 0, 0, 1, 16, 0, 0, NULL),
(@OFFSET + 19002, 0, 0, 1, 16, 0, 0, NULL),
(@OFFSET + 19005, 0, 0, 1, 16, 0, 0, NULL),
(@OFFSET + 19007, 0, 0, 1, 16, 0, 0, NULL),
(@OFFSET + 19008, 0, 0, 1, 16, 0, 0, NULL),
(@OFFSET + 19012, 0, 0, 1, 16, 0, 0, NULL),
(@OFFSET + 19015, 0, 0, 1, 16, 0, 0, NULL),
(@OFFSET + 19019, 0, 0, 1, 16, 0, 0, NULL),
(@OFFSET + 19084, 0, 0, 1, 16, 0, 0, NULL),
(@OFFSET + 19219, 0, 0, 1, 16, 0, 0, NULL),
(@OFFSET + 19220, 0, 0, 1, 16, 0, 0, NULL),
(@OFFSET + 19222, 0, 0, 1, 16, 0, 0, NULL),
(@OFFSET + 19223, 0, 0, 1, 16, 0, 0, NULL),
(@OFFSET + 19224, 0, 0, 1, 16, 0, 0, NULL),
(@OFFSET + 19227, 0, 0, 1, 16, 0, 0, NULL),
(@OFFSET + 19228, 0, 0, 1, 16, 0, 0, NULL),
(@OFFSET + 19229, 0, 0, 1, 16, 0, 0, NULL),
(@OFFSET + 19316, 0, 0, 1, 16, 0, 0, NULL),
(@OFFSET + 19343, 0, 0, 1, 16, 0, 0, NULL);

-- Duplicated waypoints path from the two humans having them and link them to respective worgens
DELETE FROM `creature_movement` WHERE `id` IN (@OFFSET + 18408, @OFFSET + 19220);
INSERT INTO `creature_movement` VALUES
(@OFFSET + 18408, 1, -369.528, 1579.13, 16.7635, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@OFFSET + 18408, 2, -373.283, 1583.28, 17.0719, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@OFFSET + 18408, 3, -379.125, 1589.27, 17.2074, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@OFFSET + 18408, 4, -386.196, 1593.8, 16.7519, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@OFFSET + 18408, 5, -393.498, 1588.07, 17.14, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@OFFSET + 18408, 6, -393.727, 1578.74, 17.8782, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@OFFSET + 18408, 7, -390.327, 1570.57, 16.9751, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@OFFSET + 18408, 8, -382.065, 1570.48, 16.9684, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@OFFSET + 18408, 9, -379.721, 1572.01, 16.8093, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@OFFSET + 19220, 1, -416.402, 1547.68, 17.6904, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@OFFSET + 19220, 2, -428.44, 1552.73, 18.3263, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@OFFSET + 19220, 3, -423.49, 1551.35, 18.3652, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@OFFSET + 19220, 4, -415.466, 1546.56, 17.5574, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@OFFSET + 19220, 5, -414.934, 1541, 17.3527, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@OFFSET + 19220, 6, -419.645, 1537.14, 17.5428, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@OFFSET + 19220, 7, -424.713, 1531.67, 18.2238, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@OFFSET + 19220, 8, -429.78, 1525.6, 18.5857, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@OFFSET + 19220, 9, -423.978, 1532.29, 18.1481, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@OFFSET + 19220, 10, -416.547, 1538.62, 17.1268, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@OFFSET + 19220, 11, -409.072, 1544.23, 17.0097, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@OFFSET + 19220, 12, -400.626, 1550.87, 16.8233, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@OFFSET + 19220, 13, -392.308, 1555.83, 17.1561, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@OFFSET + 19220, 14, -387.686, 1555.04, 16.758, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@OFFSET + 19220, 15, -390.041, 1544.13, 16.805, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@OFFSET + 19220, 16, -392.292, 1535.09, 16.8719, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@OFFSET + 19220, 17, -400.952, 1536.79, 17.1363, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@OFFSET + 19220, 18, -410.566, 1543.32, 17.177, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- Linked Moonrage worgen inhabitants to night event (11) so they only spawn when it is active
INSERT INTO `game_event_creature` VALUES
-- Moonrage Watcher
(@OFFSET + 17908, 11),
(@OFFSET + 18404, 11),
(@OFFSET + 18408, 11),
(@OFFSET + 19002, 11),
(@OFFSET + 19005, 11),
(@OFFSET + 19084, 11),
(@OFFSET + 19219, 11),
(@OFFSET + 19222, 11),
(@OFFSET + 19223, 11),
(@OFFSET + 19224, 11),
(@OFFSET + 19227, 11),
(@OFFSET + 19229, 11),
(@OFFSET + 19316, 11),
(@OFFSET + 19343, 11),
-- Moonrage Sentry
(@OFFSET + 17910, 11),
(@OFFSET + 17911, 11),
(@OFFSET + 18236, 11),
(@OFFSET + 18237, 11),
(@OFFSET + 18239, 11),
(@OFFSET + 18291, 11),
(@OFFSET + 18306, 11),
(@OFFSET + 18350, 11),
(@OFFSET + 18400, 11),
(@OFFSET + 18411, 11),
(@OFFSET + 18413, 11),
(@OFFSET + 18996, 11),
(@OFFSET + 19008, 11),
(@OFFSET + 19012, 11),
(@OFFSET + 19015, 11),
(@OFFSET + 19019, 11),
(@OFFSET + 19220, 11),
(@OFFSET + 19228, 11),
-- Moonrage Elder
(@OFFSET + 17663, 11),
(@OFFSET + 17905, 11),
(@OFFSET + 18220, 11),
(@OFFSET + 18221, 11),
(@OFFSET + 18238, 11),
(@OFFSET + 18310, 11),
(@OFFSET + 18354, 11),
(@OFFSET + 18355, 11),
(@OFFSET + 18405, 11),
(@OFFSET + 18407, 11),
(@OFFSET + 18409, 11),
(@OFFSET + 19007, 11),
-- Moonrage Armorer
(@OFFSET + 18307, 11),
-- Moonrage Tailor
(@OFFSET + 18235, 11),
-- Moonrage Leatherworker
(@OFFSET + 18309, 11);

-- Removed items 4100 (Crumpled Note), 4101 (Ripped Note), 4102 (Torn Note) and 4098 (Carefully Folded Note)
-- from creatures loot table (especially creature 2560) as they should only drop from gameobject 2560 (Half-Buried Bottle)
DELETE FROM `creature_loot_template` WHERE `item` IN (4102, 4100, 4101, 4098);

-- Removed items 5504 (Tangy Clam Meat) and 8364 (Mithril Head Trout) from loot table
-- of creature 2560 (Highland Thrasher)
-- Source: http://www.wowhead.com/npc=2560#drops
DELETE FROM `creature_loot_template` WHERE `entry` = 2560 AND `item` IN (5504, 8364);

-- ### Wind Stones (data from YTDB) ###
-- TEMPLARS
DELETE FROM spell_script_target WHERE entry IN (24734,24744,24756,24758,24760);
INSERT INTO spell_script_target VALUES
(24734, 0, 180456, 0),
(24734, 0, 180518, 0),
(24734, 0, 180529, 0),
(24734, 0, 180544, 0),
(24734, 0, 180549, 0),
(24734, 0, 180564, 0),
(24744, 0, 180456, 0),
(24744, 0, 180518, 0),
(24744, 0, 180529, 0),
(24744, 0, 180544, 0),
(24744, 0, 180549, 0),
(24744, 0, 180564, 0),
(24756, 0, 180456, 0),
(24756, 0, 180518, 0),
(24756, 0, 180529, 0),
(24756, 0, 180544, 0),
(24756, 0, 180549, 0),
(24756, 0, 180564, 0),
(24758, 0, 180456, 0),
(24758, 0, 180518, 0),
(24758, 0, 180529, 0),
(24758, 0, 180544, 0),
(24758, 0, 180549, 0),
(24758, 0, 180564, 0),
(24760, 0, 180456, 0),
(24760, 0, 180518, 0),
(24760, 0, 180529, 0),
(24760, 0, 180544, 0),
(24760, 0, 180549, 0),
(24760, 0, 180564, 0);
-- DUKES
DELETE FROM spell_script_target WHERE entry IN (24763,24765,24768,24770,24772);
INSERT INTO spell_script_target VALUES
(24763, 0, 180461, 0),
(24763, 0, 180534, 0),
(24763, 0, 180554, 0),
(24765, 0, 180461, 0),
(24765, 0, 180534, 0),
(24765, 0, 180554, 0),
(24768, 0, 180461, 0),
(24768, 0, 180534, 0),
(24768, 0, 180554, 0),
(24770, 0, 180461, 0),
(24770, 0, 180534, 0),
(24770, 0, 180554, 0),
(24772, 0, 180461, 0),
(24772, 0, 180534, 0),
(24772, 0, 180554, 0);
-- ROYALS
DELETE FROM spell_script_target WHERE entry IN (24784,24786,24788,24789,24790);
INSERT INTO spell_script_target VALUES
(24784, 0, 180466, 0),
(24784, 0, 180539, 0),
(24784, 0, 180559, 0),
(24786, 0, 180466, 0),
(24786, 0, 180539, 0),
(24786, 0, 180559, 0),
(24788, 0, 180466, 0),
(24788, 0, 180539, 0),
(24788, 0, 180559, 0),
(24789, 0, 180466, 0),
(24789, 0, 180539, 0),
(24789, 0, 180559, 0),
(24790, 0, 180466, 0),
(24790, 0, 180539, 0),
(24790, 0, 180559, 0);
-- conditions
DELETE FROM conditions WHERE condition_entry BETWEEN 887 AND 918;
INSERT INTO conditions VALUES
(887, 11, 24746, 0), -- no cultist disguse
(888, 1, 24746, 0), -- basic disguise
(889, 11, 24748, 0), -- no cultist medalion
(890, -1, 888, 889), -- basic disguise but no medalion
(891, 1, 24748, 0), -- cultist medalion
(892, -1, 888, 891), -- basic disguise & medalion
(893, 1, 24782, 0), -- cultist ring
(894, -1, 892, 893), -- disguise & medalion & ring
(895, 2, 20416, 1), -- Crest of Beckoning: Fire
(896, 2, 20419, 1), -- Crest of Beckoning: Earth
(897, 2, 20418, 1), -- Crest of Beckoning: Thunder
(898, 2, 20420, 1), -- Crest of Beckoning: Water
(899, -1, 888, 895), -- disguise and fire
(900, -1, 888, 896), -- disguise and earth
(901, -1, 888, 897), -- disguise and air
(902, -1, 888, 898), -- disguise and water
(903, 2, 20432, 1), -- Signet of Beckoning: Fire
(904, 2, 20435, 1), -- Signet of Beckoning: Stone
(905, 2, 20433, 1), -- Signet of Beckoning: Thunder
(906, 2, 20436, 1), -- Signet of Beckoning: Water
(907, -1, 892, 903), -- disguise & medalion and fire
(908, -1, 892, 904), -- disguise & medalion and earth
(909, -1, 892, 905), -- disguise & medalion and air
(910, -1, 892, 906), -- disguise & medalion and water
(911, 2, 20447, 1), -- Scepter of Beckoning: Fire
(912, 2, 20449, 1), -- Scepter of Beckoning: Stone
(913, 2, 20448, 1), -- Scepter of Beckoning: Thunder
(914, 2, 20450, 1), -- Scepter of Beckoning: Water
(915, -1, 894, 911), -- disguise & medalion & ring and fire
(916, -1, 894, 912), -- disguise & medalion & ring and earth
(917, -1, 894, 913), -- disguise & medalion & ring and air
(918, -1, 894, 914); -- disguise & medalion & ring and water
-- gossips
DELETE FROM gossip_menu where entry IN (6542,6543,6540);
INSERT INTO gossip_menu VALUES
(6540, 7744, 6540, 887), -- punishment, no disguise
(6542, 7749, 6540, 887), -- punishment, no disguise
(6543, 7754, 6540, 887), -- punishment, no disguise
(6540, 7771, 0, 888), -- basic disguise
(6542, 7772, 0, 890), -- basic disguise & no medalion
(6542, 7773, 0, 892), -- basic disguise & medalion
(6543, 7774, 0, 894), -- disguise, medalion, ring (text is confirmed, but id is guesswork)
(6543, 7775, 0, 892), -- basic disguise & medalion (text missing)
(6543, 7776, 0, 888); -- basic disguise
DELETE FROM npc_text WHERE id=7774;
INSERT INTO npc_text (id, text0_0, text0_1, prob0) VALUES
(7774,'A thunderous voice bellows from the stone...$B$BGreetings, commander. What news of Silithus do you bring the Lords of the Council?', 'A thunderous voice bellows from the stone...$B$BGreetings, commander. What news of Silithus do you bring the Lords of the Council?', 1);
DELETE FROM gossip_menu_option where menu_id IN (6542,6543,6540);
INSERT INTO gossip_menu_option VALUES
(6540, 0, 0, 'I am no cultist, you monster! Come to me and face your destruction!', 1, 1, -1, 0, 654001, 0, 0, NULL, 888),
(6540, 1, 0, 'Crimson Templar! I hold your signet! Heed my call!', 1, 1, -1, 0, 654002, 0, 0, NULL, 899),
(6540, 2, 0, 'Earthen Templar! I hold your signet! Heed my call!', 1, 1, -1, 0, 654003, 0, 0, NULL, 900),
(6540, 3, 0, 'Hoary Templar! I hold your signet! Heed my call!', 1, 1, -1, 0, 654004, 0, 0, NULL, 901),
(6540, 4, 0, 'Azure Templar! I hold your signet! Heed my call!', 1, 1, -1, 0, 654005, 0, 0, NULL, 902),
(6542, 0, 0, 'You will listen to this, vile duke! I am not your Twilight\'s Hammer lapdog! I am here to challenge you! Come! Come, and meet your death...', 1, 1, -1, 0, 654201, 0, 0, NULL, 892),
(6542, 1, 0, 'Duke of Cynders! I hold your signet! Heed my call', 1, 1, -1, 0, 654202, 0, 0, NULL, 907),
(6542, 2, 0, 'The Duke of Shards! I hold your signet! Heed my call!', 1, 1, -1, 0, 654203, 0, 0, NULL, 908),
(6542, 3, 0, 'The Duke of Zephyrs! I hold your signet! Heed my call!', 1, 1, -1, 0, 654204, 0, 0, NULL, 909),
(6542, 4, 0, 'The Duke of Fathoms! I hold your signet! Heed my call!', 1, 1, -1, 0, 654205, 0, 0, NULL, 910),
(6543, 0, 0, 'The day of the judgement has come, fiend! I challenge you to battle!', 1, 1, -1, 0, 654301, 0, 0, NULL, 894),
(6543, 1, 0, 'Prince Skaldrenox! I hold your signet! Heed my call!', 1, 1, -1, 0, 654302, 0, 0, NULL, 915),
(6543, 2, 0, 'Baron Kazum! I hold your signet! Heed my call!', 1, 1, -1, 0, 654303, 0, 0, NULL, 916),
(6543, 3, 0, 'High Marshal Whirlaxis! I hold your signet! Heed my call!', 1, 1, -1, 0, 654304, 0, 0, NULL, 917),
(6543, 4, 0, 'Lord Skwol! I hold your signet! Heed my call!', 1, 1, -1, 0, 654305, 0, 0, NULL, 918);
DELETE FROM dbscripts_on_gossip WHERE id IN (6540,654001,654002,654003,654004,654005,654201,654202,654203,654204,654205,654301,654302,654303,654304,654305);
INSERT INTO dbscripts_on_gossip (id, delay, command, datalong, buddy_entry, search_radius, data_flags, comments) VALUES
(6540, 1, 13, 0, 180502, 10, 1, 'use Wind Stone trap'),
(654001, 0, 15, 24745, 0, 0, 4, 'lesser wind stone - random'),
(654002, 0, 15, 24747, 0, 0, 4, 'lesser wind stone - fire'),
(654003, 0, 15, 24759, 0, 0, 4, 'lesser wind stone - earth'),
(654004, 0, 15, 24757, 0, 0, 4, 'lesser wind stone - air'),
(654005, 0, 15, 24761, 0, 0, 4, 'lesser wind stone - water'),
(654201, 0, 15, 24762, 0, 0, 4, 'wind stone - random'),
(654202, 0, 15, 24766, 0, 0, 4, 'wind stone - fire'),
(654203, 0, 15, 24771, 0, 0, 4, 'wind stone - earth'),
(654204, 0, 15, 24769, 0, 0, 4, 'wind stone - air'),
(654205, 0, 15, 24773, 0, 0, 4, 'wind stone - water'),
(654301, 0, 15, 24785, 0, 0, 4, 'greater wind stone - random'),
(654302, 0, 15, 24787, 0, 0, 4, 'greater wind stone - fire'),
(654303, 0, 15, 24792, 0, 0, 4, 'greater wind stone - earth'),
(654304, 0, 15, 24791, 0, 0, 4, 'greater wind stone - air'),
(654305, 0, 15, 24793, 0, 0, 4, 'greater wind stone - water');

-- startup fix
INSERT INTO `npc_text` VALUES (7775,"Missing US text.","Missing US text.",0,0,0,0,0,0,0,0,"","",0,0,0,0,0,0,0,0,"","",0,0,0,0,0,0,0,0,"","",0,0,0,0,0,0,0,0,"","",0,0,0,0,0,0,0,0,"","",0,0,0,0,0,0,0,0,"","",0,0,0,0,0,0,0,0,"","",0,0,0,0,0,0,0,0);
-- Updated health of creature 3529 (Moonrage Armorer) spawn to match template
UPDATE `creature` SET `curhealth` = 981 WHERE `id` = 3529;


-- Added waypoints for creature 8976 (Hematos)
-- Source: TBC-DB
DELETE FROM `creature_movement` WHERE `id` = 98616;
INSERT INTO `creature_movement` VALUES
(98616, 1, -8198.23, -917.961, 132.864, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(98616, 2, -8189.78, -894.28, 132.904, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(98616, 3, -8188.53, -850.906, 131.776, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(98616, 4, -8187.55, -816.536, 129.697, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(98616, 5, -8166.84, -790.365, 129.848, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(98616, 6, -8131.38, -768.808, 130.859, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(98616, 7, -8102.34, -775.695, 131.46, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(98616, 8, -8022.56, -800.541, 131.608, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(98616, 9, -7986.66, -829.885, 130.545, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(98616, 10, -7978.98, -852.116, 131.678, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(98616, 11, -7968.91, -881.28, 128.998, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(98616, 12, -7984.89, -904.946, 129.484, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(98616, 13, -7993.79, -934.841, 129.321, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(98616, 14, -8039.18, -1086.67, 131.087, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(98616, 15, -8053.88, -1148.67, 131.087, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(98616, 16, -8076.81, -1189.43, 131.642, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(98616, 17, -8094.72, -1230.07, 132.802, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(98616, 18, -8117.75, -1237.46, 133.074, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(98616, 19, -8143.38, -1219.68, 133.111, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(98616, 20, -8157.7, -1206.47, 134.896, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(98616, 21, -8159.24, -1193.96, 136.698, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(98616, 22, -8152.86, -1167.79, 135.585, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(98616, 23, -8150.15, -1140.2, 135.762, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(98616, 24, -8145.04, -1088.04, 132.858, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(98616, 25, -8142.54, -1062.51, 132.316, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(98616, 26, -8146.18, -1022.53, 133.425, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(98616, 27, -8169.36, -998.282, 135.425, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(98616, 28, -8194.4, -964.901, 133.777, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(98616, 29, -8197.23, -939.184, 133.549, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);


-- Added gossip menu for creature 240 (Marshal Dughan) and linked it to creature template
-- Adding this only to get this independent from guid, gossip was already linked with npc_gossip table
DELETE FROM `gossip_menu` WHERE entry = 11611;
INSERT INTO `gossip_menu` VALUES (11611, 16211,0, 0);
UPDATE `creature_template` SET `gossip_menu_id` = 11611, `npcflag` = `npcflag`|1 WHERE `entry` = 240;
DELETE FROM npc_gossip WHERE npc_guid = 80334;

DELETE FROM npc_text WHERE ID = 10927;
DELETE FROM npc_text WHERE ID = 14406;

-- Added gossip menu to creature 9460 (Gadgetzan Bruiser) and linked menu to creature template
-- Source: YTDB
DELETE FROM `gossip_menu` WHERE `entry` = 7956;
INSERT INTO `gossip_menu` VALUES
(7956, 9774, 0, 242), -- Gossip for the two bruisers in Un'Goro
(7956, 15532, 0, 0); -- Default gossip
UPDATE `creature_template` SET `gossip_menu_id` = 7956, `npcflag` = `npcflag`|1 WHERE `entry` = 9460;

-- Added gossip text associated with the two previous menu
DELETE FROM `npc_text` WHERE `id` = 15532;
DELETE FROM npc_gossip WHERE textid = 9774;
INSERT INTO `npc_text` VALUES
(15532, 'On behalf of the illustrious and still neutral Steamwheedle Cartel, I hope you enjoy your stay.$B$BRemember, everyone is welcome in Gadgetzan! Everyone except pirates.', '', 0, 1, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 0);

-- Added condition if player in zone = Un'Goro (242)
DELETE FROM `conditions` WHERE `condition_entry` = 242;
INSERT INTO `conditions` VALUES (242, 4, 490, 0);

UPDATE `conditions` SET `condition_entry` = 59 WHERE `condition_entry` = 1790;
UPDATE `creature_loot_template` SET `condition_id` = 59 WHERE `condition_id` = 1790;
UPDATE `gameobject_loot_template` SET `condition_id` = 59 WHERE `condition_id` = 1790;
UPDATE `skinning_loot_template` SET `condition_id` = 59 WHERE `condition_id` = 1790;
UPDATE `reference_loot_template` SET `condition_id` = 59 WHERE `condition_id` = 1790;
UPDATE `gossip_menu` SET `condition_id` = 59 WHERE `condition_id` = 1790;
UPDATE `gossip_menu_option` SET `condition_id` = 59 WHERE `condition_id` = 1790;
UPDATE `npc_vendor` SET `condition_id` = 59 WHERE `condition_id` = 1790;

-- Added waypoints for creature 6109 (Azuregos)
-- Source: http://old.wowhead.com/npc=6109#map
DELETE FROM `creature_movement_template` WHERE `entry` IN (6109, 15481);
INSERT INTO `creature_movement_template` VALUES
(6109, 1, 2623.38, -5977.86, 100.642, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.86238, 0, 0),
(6109, 2, 2652.61, -6023.3, 97.2364, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.28178, 0, 0),
(6109, 3, 2637.75, -6057.12, 100.789, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.96744, 0, 0),
(6109, 4, 2650.16, -6101.06, 99.105, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.99335, 0, 0),
(6109, 5, 2659.07, -6142.42, 100.017, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.61225, 0, 0),
(6109, 6, 2699.18, -6169.74, 97.2345, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.90834, 0, 0),
(6109, 7, 2748.81, -6216.27, 102.323, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.52506, 0, 0),
(6109, 8, 2728.22, -6259.92, 99.7664, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.50304, 0, 0),
(6109, 9, 2701.59, -6292.38, 98.4016, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.01845, 0, 0),
(6109, 10, 2665.81, -6316.73, 100.927, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.15866, 0, 0),
(6109, 11, 2639.08, -6319.14, 93.82, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.16179, 0, 0),
(6109, 12, 2609.81, -6316.4, 95.62, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.8822, 0, 0),
(6109, 13, 2593.02, -6298.9, 103.16, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.55862, 0, 0),
(6109, 14, 2502.05, -6238.91, 102.5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.55862, 0, 0),
(6109, 15, 2484.14, -6233.41, 101.99, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.24663, 0, 0),
(6109, 16, 2450.22, -6182.88, 101.45, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.20912, 0, 0),
(6109, 17, 2411.61, -6157.76, 101.92, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.54822, 0, 0),
(6109, 18, 2361.36, -6203.64, 104.65, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.13334, 0, 0),
(6109, 19, 2336.04, -6248.55, 106.4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.62264, 0, 0),
(6109, 20, 2361.63, -6203.64, 104.65, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.89043, 0, 0),
(6109, 21, 2406.65, -6164.8, 100.57, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.92734, 0, 0),
(6109, 22, 2407.32, -6147.17, 100.29, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.08345, 0, 0),
(6109, 23, 2352.5, -6106.48, 110.44, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.66543, 0, 0),
(6109, 24, 2294.35, -6064.86, 107.44, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.19419, 0, 0),
(6109, 25, 2352.5, -6106.48, 110.44, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.66543, 0, 0),
(6109, 26, 2406.58, -6133.3, 99.69, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.90284, 0, 0),
(6109, 27, 2439.64, -6126.91, 105.12, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.38778, 0, 0),
(6109, 28, 2501.26, -6091.94, 99.97, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.60926, 0, 0),
(6109, 29, 2535.65, -6010.9, 99.62, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.07893, 0, 0),
(6109, 30, 2578.13, -5963.59, 97.82, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.00136, 0, 0);

-- Added waypoints for creature 15481 (Spirit of Azuregos) but in reverse order of creature 6109 (Azuregos)
-- as they share the same path but in opposite direction as seen in picture below
-- Also relocated creature 15481 (Spirit of Azuregos) to first waypoint
-- Source: http://old.wowhead.com/npc=6109#map
-- http://old.wowhead.com/npc=15481#map
-- http://www.wowwiki.com/Azuregos?file=Azuregosandspirit.jpg
SET @REVERSE := 31;
INSERT INTO `creature_movement_template` VALUES
(15481, @REVERSE - 1, 2623.38, -5977.86, 100.642, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.86238, 0, 0),
(15481, @REVERSE - 2, 2652.61, -6023.3, 97.2364, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.28178, 0, 0),
(15481, @REVERSE - 3, 2637.75, -6057.12, 100.789, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.96744, 0, 0),
(15481, @REVERSE - 4, 2650.16, -6101.06, 99.105, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.99335, 0, 0),
(15481, @REVERSE - 5, 2659.07, -6142.42, 100.017, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.61225, 0, 0),
(15481, @REVERSE - 6, 2699.18, -6169.74, 97.2345, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.90834, 0, 0),
(15481, @REVERSE - 7, 2748.81, -6216.27, 102.323, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.52506, 0, 0),
(15481, @REVERSE - 8, 2728.22, -6259.92, 99.7664, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.50304, 0, 0),
(15481, @REVERSE - 9, 2701.59, -6292.38, 98.4016, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.01845, 0, 0),
(15481, @REVERSE - 10, 2665.81, -6316.73, 100.927, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.15866, 0, 0),
(15481, @REVERSE - 11, 2639.08, -6319.14, 93.82, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.16179, 0, 0),
(15481, @REVERSE - 12, 2609.81, -6316.4, 95.62, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.8822, 0, 0),
(15481, @REVERSE - 13, 2593.02, -6298.9, 103.16, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.55862, 0, 0),
(15481, @REVERSE - 14, 2502.05, -6238.91, 102.5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.55862, 0, 0),
(15481, @REVERSE - 15, 2484.14, -6233.41, 101.99, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.24663, 0, 0),
(15481, @REVERSE - 16, 2450.22, -6182.88, 101.45, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.20912, 0, 0),
(15481, @REVERSE - 17, 2411.61, -6157.76, 101.92, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.54822, 0, 0),
(15481, @REVERSE - 18, 2361.36, -6203.64, 104.65, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.13334, 0, 0),
(15481, @REVERSE - 19, 2336.04, -6248.55, 106.4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.62264, 0, 0),
(15481, @REVERSE - 20, 2361.63, -6203.64, 104.65, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.89043, 0, 0),
(15481, @REVERSE - 21, 2406.65, -6164.8, 100.57, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.92734, 0, 0),
(15481, @REVERSE - 22, 2407.32, -6147.17, 100.29, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.08345, 0, 0),
(15481, @REVERSE - 23, 2352.5, -6106.48, 110.44, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.66543, 0, 0),
(15481, @REVERSE - 24, 2294.35, -6064.86, 107.44, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.19419, 0, 0),
(15481, @REVERSE - 25, 2352.5, -6106.48, 110.44, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.66543, 0, 0),
(15481, @REVERSE - 26, 2406.58, -6133.3, 99.69, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.90284, 0, 0),
(15481, @REVERSE - 27, 2439.64, -6126.91, 105.12, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.38778, 0, 0),
(15481, @REVERSE - 28, 2501.26, -6091.94, 99.97, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.60926, 0, 0),
(15481, @REVERSE - 29, 2535.65, -6010.9, 99.62, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.07893, 0, 0),
(15481, @REVERSE - 30, 2578.13, -5963.59, 97.82, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.00136, 0, 0);
UPDATE `creature` SET `position_x` = 2578.13, `position_y` = -5963.59, `position_z` = 97.83, `orientation` = 0.00136 WHERE `id` = 15481;

-- Set movement behaviour to 'waypoint' for both creatures
UPDATE `creature_template` SET `MovementType` = 2 WHERE `entry` IN (6109, 15481);
UPDATE `creature` SET `MovementType` = 2 WHERE `id` IN (6109, 15481);

-- Added gossip menus for creatures 6109 (Azuregos) and 15481 (Spirit of Azuregos)
-- Including gossip menu options for quest 8575 (Azuregos's Magical Ledger)
-- Sources:
-- http://www.wowwiki.com/Spirit_of_Azuregos#Spirit_of_Azuregos
-- http://old.wowhead.com/npc=6109#comments
-- http://www.wowwiki.com/Quest:Azuregos%27s_Magical_Ledger#The_conversation_with_Azuregos

-- TODO: find the correct value for Azuregos/Spirit of Azuregos gossip menu.
SET @GOSSIP := 15000; -- Azuregos default gossip menu (player do not have (yet) the Scepter of the Shifting Sands quest)
SET @GOSSIP_SPIRIT := @GOSSIP + 13; -- Spirit of Azuregos default gossip menu (player do not have (yet) the Scepter of the Shifting Sands quest)
SET @SCRIPT_STRING := 2000000163; -- db script string entry, differs from UDB, TBC-DB and Classic DB
SET @HAS_COMPLETED_CHARGE_OF_DRAGONFLIGHTS := 59; -- condition entry for quest 8555 completion
SET @CAN_DISPLAY_QUEST_GOSSIP := 62; -- condition entry for Scepter quest line gossip display
SET @HAS_LEDGER := 60; -- condition entry for has item 20949 in inventory
SET @NOT_HAVE_LEDGER := 61; -- condition entry for has item 20949 not in inventory

-- Set gossip menu ids to creatures
UPDATE `creature_template` SET `gossip_menu_id` = @GOSSIP, `npcflag` = `npcflag`|1 WHERE `entry` = 6109;
UPDATE `creature_template` SET `gossip_menu_id` = @GOSSIP_SPIRIT, `npcflag` = 1, `rank` = 3, `unit_flags` = 768 WHERE `entry` = 15481;

-- Removed npc_gossip if existing
DELETE FROM `npc_gossip` WHERE `npc_guid` IN (SELECT `guid` FROM `creature` WHERE `id` IN (6109, 15481));

-- Added gossip menus
DELETE FROM `gossip_menu` WHERE `entry` BETWEEN @GOSSIP AND @GOSSIP + 13;
INSERT INTO `gossip_menu` VALUES
-- Azuregos gossips
(@GOSSIP, 7880, 0, 0),
(@GOSSIP, 7885, 0, @CAN_DISPLAY_QUEST_GOSSIP),
(@GOSSIP, 7901, 0, @HAS_LEDGER),
-- Spirit of Azuregos gossips
(@GOSSIP_SPIRIT, 7881, 0, 0),
(@GOSSIP_SPIRIT, 7885, 0, @CAN_DISPLAY_QUEST_GOSSIP),
(@GOSSIP_SPIRIT, 7901, 0, @HAS_LEDGER),
-- Quest related gossips (common to both creatures)
(@GOSSIP + 1, 7886, 0, 0),
(@GOSSIP + 2, 7887, 0, 0),
(@GOSSIP + 3, 7888, 0, 0),
(@GOSSIP + 4, 7889, 0, 0),
(@GOSSIP + 5, 7890, 0, 0),
(@GOSSIP + 6, 7891, 0, 0),
(@GOSSIP + 7, 7892, 0, 0),
(@GOSSIP + 8, 7893, 0, 0),
(@GOSSIP + 9, 7894, 0, 0),
(@GOSSIP + 10, 7895, 0, 0),
(@GOSSIP + 11, 7896, 0, 0),
(@GOSSIP + 12, 7897, @GOSSIP + 11, 0);

-- Added gossip menu options for above gossip menus
DELETE FROM `gossip_menu_option` WHERE `menu_id` BETWEEN @GOSSIP AND @GOSSIP + 13;
INSERT INTO `gossip_menu_option` VALUES
(@GOSSIP, 0, 0, 'I am a treasure hunter in search of powerful artifacts. Give them to me and you will not be harmed.', 1, 1, 0, 0, @GOSSIP, 0, 0, NULL, 0),
(@GOSSIP, 1, 0, 'How did you know? I mean, yes... Yes I am looking for that shard. Do you have it?', 1, 1, @GOSSIP + 1, 0, 0, 0, 0, NULL, @CAN_DISPLAY_QUEST_GOSSIP),
(@GOSSIP_SPIRIT, 1, 0, 'How did you know? I mean, yes... Yes I am looking for that shard. Do you have it?', 1, 1, @GOSSIP + 1, 0, 0, 0, 0, NULL, @CAN_DISPLAY_QUEST_GOSSIP),
(@GOSSIP + 1, 0, 0, 'Alright. Where?', 1, 1, @GOSSIP + 2, 0, 0, 0, 0, NULL, 0),
(@GOSSIP + 2, 0, 0, 'By Bronzebeard\'s... um, beard! What are you talking about?', 1, 1, @GOSSIP + 3, 0, 0, 0, 0, NULL, 0),
(@GOSSIP + 3, 0, 0, 'Fish? You gave a piece of what could be the key to saving all life on Kalimdor to a fish?', 1, 1, @GOSSIP + 4, 0, 0, 0, 0, NULL, 0),
(@GOSSIP + 4, 0, 0, 'A minnow? The oceans are filled with minnows! There could be a hundred million million minnows out there!', 1, 1, @GOSSIP + 5, 0, 0, 0, 0, NULL, 0),
(@GOSSIP + 5, 0, 0, '...', 1, 1, @GOSSIP + 6, 0, 0, 0, 0, NULL, 0),
(@GOSSIP + 6, 0, 0, 'You put the piece on a minnow and placed the minnow somewhere in the waters of the sea between here and the Eastern Kingdoms? And this minnow has special powers?', 1, 1, @GOSSIP + 7, 0, 0, 0, 0, NULL, 0),
(@GOSSIP + 7, 0, 0, 'You\'re insane.', 1, 1, @GOSSIP + 8, 0, 0, 0, 0, NULL, 0),
(@GOSSIP + 8, 0, 0, 'I\'m all ears.', 1, 1, @GOSSIP + 9, 0, 0, 0, 0, NULL, 0),
(@GOSSIP + 9, 0, 0, 'Come again.', 1, 1, @GOSSIP + 10, 0, 0, 0, 0, NULL, 0),
(@GOSSIP + 10, 0, 0, 'Ok, let me get this straight. You put the scepter entrusted to your Flight by Anachronos on a minnow of your own making and now you expect me to build an... an arcanite buoy or something... to force your minnow out of hiding? AND potentially incur the wrath of an Elemental Lord? Did I miss anything? Perhaps I am to do this without any clothes on, during a solar eclipse, on a leap year?', 1, 1, @GOSSIP + 11, 0, 0, 0, 0, NULL, 0),
(@GOSSIP + 11, 0, 0, 'FINE! And how, dare I ask, am I supposed to acquire an arcanite buoy?', 1, 1, @GOSSIP + 12, 0, 0, 0, 0, NULL, 0),
(@GOSSIP + 12, 0, 0, 'But...', 1, 1, -1, 0, @GOSSIP + 12, 0, 0, NULL, 0);

-- Added gossip menu scripts for The Scepter of the Shifting Sands quest chain
DELETE FROM `dbscripts_on_gossip` WHERE `id` IN (@GOSSIP, @GOSSIP + 11, @GOSSIP + 12);
INSERT INTO `dbscripts_on_gossip` VALUES
-- Makes Azuregos engage combat
(@GOSSIP, 0, 26, 0, 0, 0, 25, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Azuregos attacks player'),
-- Creates item 20949 (Magical Ledger) into player inventory
(@GOSSIP + 11, 0, 17, 20949, 1, 0, 25, 2, 0, 0, 0, 0, 0, 0, 0, 0, 'creates item Magical Ledger'),
-- Makes Azuregos speaks
(@GOSSIP + 12, 0, 0, 0, 0, 0, 0, 0, @SCRIPT_STRING, 0, 0, 0, 0, 0, 0, 0, 'Azuregos says Good Day');

-- Added missing script string for previous script
DELETE FROM `db_script_string` WHERE `entry` = @SCRIPT_STRING;
INSERT INTO `db_script_string` VALUES
(@SCRIPT_STRING, 'I said GOOD DAY!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, NULL);

-- Conditions for gossips above
DELETE FROM `conditions` WHERE `condition_entry` IN (@HAS_COMPLETED_CHARGE_OF_DRAGONFLIGHTS, @CAN_DISPLAY_QUEST_GOSSIP, @HAS_LEDGER, @NOT_HAVE_LEDGER);
INSERT INTO `conditions` VALUES
(@HAS_COMPLETED_CHARGE_OF_DRAGONFLIGHTS, 8, 8555, 0),
(@NOT_HAVE_LEDGER, 24, 20949, 1),
(@CAN_DISPLAY_QUEST_GOSSIP, -1, @NOT_HAVE_LEDGER, @HAS_COMPLETED_CHARGE_OF_DRAGONFLIGHTS),
(@HAS_LEDGER, 2, 20949, 1);

--Cleanup delete old menu and wrong text
DELETE FROM gossip_menu WHERE entry = 27052;
DELETE FROM gossip_menu_option WHERE menu_id = 27052;
DELETE FROM npc_text WHERE ID = 25004;

-- Added missing world drops from loot table of creature 12397 (Lord Kazzak)
-- Based on loot table of creature 6109 (Azuregos) and similar raid bosses
-- Source: http://wowd.org/creatures/12397.html
DELETE FROM `creature_loot_template` WHERE `entry` = 12397 AND `item` IN (34002, 34003, 190003);
INSERT INTO `creature_loot_template` VALUES
(12397, 34002, 100, 1, -34002, 3, 0),
(12397, 34003, 100, 0, -34003, 1, 0),
(12397, 190003, 100, 1, -34003, 2, 0);

-- Just for independence from guid
-- Moved waypoints for creature 12397 (Lord Kazzak) from creature_movement to
-- creature_movement_template as this creature is unique
DELETE FROM `creature_movement_template` WHERE `entry` = 12397;
INSERT INTO `creature_movement_template` VALUES
(12397, 1, -12241.3, -2432.1, 2.93936, 30000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12397, 2, -12271.6, -2453.36, 3.84158, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12397, 3, -12279.2, -2488.66, 4.38164, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12397, 4, -12275.1, -2520.88, 3.67985, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12397, 5, -12224.9, -2522.83, 1.56836, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12397, 6, -12191.6, -2502.13, -0.148134, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12397, 7, -12114.8, -2510.99, 3.11959, 40000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12397, 8, -12138.4, -2494.16, 3.89333, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12397, 9, -12166, -2478.6, 0.810272, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12397, 10, -12171.4, -2452.79, -0.15142, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(12397, 11, -12208, -2436.73, 0.09382, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- Deleted old path
DELETE FROM `creature_movement` WHERE `id` = 2723;

-- Seeker Thompson is unique creature so make him independend from guid
-- Add pathing to creature Seeker Thompson (14404) in Undercity.
UPDATE `creature` SET `position_x`=1727, `position_y`=203.614, `position_z`=-61.62, `orientation`=1.30443, `MovementType`=2 WHERE `id`=14404;
UPDATE `creature_template` SET `MovementType` = 2 WHERE `entry` = 14404;
DELETE FROM `creature_movement` WHERE id = 32072;

DELETE FROM `creature_movement_template` WHERE `entry` = 14404;
INSERT INTO `creature_movement_template` (`entry`, `point`, `position_x`, `position_y`, `position_z`, `waittime`, `script_id`, `textid1`, `textid2`, `textid3`, `textid4`, `textid5`, `emote`, `spell`, `wpguid`, `orientation`, `model1`, `model2`) VALUES
(14404, 1, 1732.3, 222.523, -62.1776, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.3006, 0, 0),
(14404, 2, 1731.57, 233.338, -62.1776, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.63832, 0, 0),
(14404, 3, 1723.39, 239.127, -62.1776, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.52582, 0, 0),
(14404, 4, 1677.05, 240.163, -62.1776, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.1188, 0, 0),
(14404, 5, 1665.3, 249.331, -62.1776, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.4787, 0, 0),
(14404, 6, 1663.02, 266.851, -62.1776, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.68937, 0, 0),
(14404, 7, 1657.06, 279.867, -62.1776, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.99961, 0, 0),
(14404, 8, 1651.19, 287.107, -62.1805, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.26271, 0, 0),
(14404, 9, 1643.75, 287.384, -62.1834, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.19341, 0, 0),
(14404, 10, 1625.17, 269.373, -60.6917, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.92383, 0, 0),
(14404, 11, 1619.45, 263.685, -58.8606, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.92383, 0, 0),
(14404, 12, 1612.25, 256.534, -61.9081, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.92383, 0, 0),
(14404, 13, 1610.43, 254.719, -62.0773, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.92383, 0, 0),
(14404, 14, 1605.25, 252.56, -62.0936, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.5272, 0, 0),
(14404, 15, 1586.61, 252.471, -62.0946, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.14629, 0, 0),
(14404, 16, 1582.39, 248.038, -62.079, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.95132, 0, 0),
(14404, 17, 1582.81, 227.101, -62.079, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.73671, 0, 0),
(14404, 18, 1584.94, 223.331, -62.1522, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.23544, 0, 0),
(14404, 19, 1591.79, 220.867, -57.1859, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.96193, 0, 0),
(14404, 20, 1599.01, 220.875, -57.1616, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.000752, 0, 0),
(14404, 21, 1607.25, 223.58, -62.1374, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.346328, 0, 0),
(14404, 22, 1611.69, 223.622, -61.9065, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.004679, 0, 0),
(14404, 23, 1617.71, 217.89, -59.0818, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.49069, 0, 0),
(14404, 24, 1624.78, 210.724, -60.6919, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.49069, 0, 0),
(14404, 25, 1642.25, 193.005, -62.1838, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.49069, 0, 0),
(14404, 26, 1650.23, 193.472, -62.1814, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.059658, 0, 0),
(14404, 27, 1662.77, 214.051, -62.1787, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.0257, 0, 0),
(14404, 28, 1663.87, 229.842, -62.1787, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.52443, 0, 0),
(14404, 29, 1671.56, 235.312, -62.1787, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.61729, 0, 0),
(14404, 30, 1681.28, 239.637, -62.1787, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.405233, 0, 0),
(14404, 31, 1723.1, 238.522, -62.1787, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6.25645, 0, 0),
(14404, 32, 1729.79, 228.355, -62.1787, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.29434, 0, 0),
(14404, 33, 1731.34, 217.821, -62.1787, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.85845, 0, 0),
(14404, 34, 1724.98, 195.701, -62.1671, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.43041, 0, 0),
(14404, 35, 1713.35, 179.375, -60.7483, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.09269, 0, 0),
(14404, 36, 1698.91, 182.183, -62.1728, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.94208, 0, 0),
(14404, 37, 1692.82, 179.199, -62.1728, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.59789, 0, 0),
(14404, 38, 1677.57, 161.509, -62.1572, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.01022, 0, 0),
(14404, 39, 1654.14, 142.97, -62.1517, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.80995, 0, 0),
(14404, 40, 1652.96, 135.5, -62.165, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.56, 0, 0),
(14404, 41, 1659.56, 124.273, -61.4918, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.25507, 0, 0),
(14404, 42, 1668.15, 122.337, -61.4785, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6.07581, 0, 0),
(14404, 43, 1679.69, 127.941, -60.399, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.452356, 0, 0),
(14404, 44, 1690.99, 138.584, -55.2144, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.758661, 0, 0),
(14404, 45, 1694.65, 138.741, -55.1205, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.036095, 0, 0),
(14404, 46, 1700.56, 132.965, -51.1889, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.51032, 0, 0),
(14404, 47, 1706.48, 127.192, -48.9843, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.51032, 0, 0),
(14404, 48, 1710.44, 123.259, -50.5277, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.48676, 0, 0),
(14404, 49, 1715.23, 118.353, -54.0606, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.48676, 0, 0),
(14404, 50, 1717.61, 115.928, -55.2149, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.48676, 0, 0),
(14404, 51, 1716.88, 112.975, -55.2149, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.46968, 0, 0),
(14404, 52, 1695.71, 91.8981, -62.2246, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.92776, 0, 0),
(14404, 53, 1693.73, 79.1823, -62.2891, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.56393, 0, 0),
(14404, 54, 1702.2, 70.9584, -62.2891, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.48284, 0, 0),
(14404, 55, 1738.34, 59.7895, -59.7713, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6.25645, 0, 0),
(14404, 56, 1750.16, 47.7324, -52.817, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.49069, 0, 0),
(14404, 57, 1754.99, 47.2671, -52.817, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6.19754, 0, 0),
(14404, 58, 1759.38, 51.5006, -50.2111, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.790076, 0, 0),
(14404, 59, 1763.55, 55.7116, -46.3169, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.790076, 0, 0),
(14404, 60, 1778.34, 70.5382, -46.3188, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.778295, 0, 0),
(14404, 61, 1781.78, 73.9327, -49.3515, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.778295, 0, 0),
(14404, 62, 1787.11, 79.1894, -52.8169, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.778295, 0, 0),
(14404, 63, 1786.87, 83.4353, -52.8169, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.62653, 0, 0),
(14404, 64, 1779.14, 91.4176, -56.1755, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.34124, 0, 0),
(14404, 65, 1775.15, 95.5312, -59.6657, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.34124, 0, 0),
(14404, 66, 1760.93, 133.892, -62.2949, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.94068, 0, 0),
(14404, 67, 1748.07, 140.085, -62.2585, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.70252, 0, 0),
(14404, 68, 1737.57, 133.233, -62.1182, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.72747, 0, 0),
(14404, 69, 1727.58, 123.542, -60.1819, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.89633, 0, 0),
(14404, 70, 1720.53, 116.855, -55.2148, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.90419, 0, 0),
(14404, 71, 1717.04, 116.903, -55.0754, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.06774, 0, 0),
(14404, 72, 1712.63, 121.317, -52.3247, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.35302, 0, 0),
(14404, 73, 1707.51, 126.463, -49.0926, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.35302, 0, 0),
(14404, 74, 1701.38, 132.564, -50.6214, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.35302, 0, 0),
(14404, 75, 1695.16, 138.816, -54.9837, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.35302, 0, 0),
(14404, 76, 1695.02, 142.361, -55.2144, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.61082, 0, 0),
(14404, 77, 1702.29, 149.973, -60.4682, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.805789, 0, 0),
(14404, 78, 1701.05, 158.937, -60.5802, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.71685, 0, 0),
(14404, 79, 1718.89, 186.261, -60.7598, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.04141, 0, 0),
(14404, 80, 1724.63, 195.081, -62.1654, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.982504, 0, 0);

DELETE FROM gossip_menu_option WHERE menu_id = 2848 AND id = 1;

-- Dramatically reduce the drop rate for Quest Item 5097: Cats Eye Emerald
-- Source: http://www.wowhead.com/item=5097#dropped-by
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -5 WHERE `item` = 5097 AND `entry` = 3286;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -6 WHERE `item` = 5097 AND `entry` = 3283;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -2 WHERE `item` = 5097 AND `entry` = 9336;

-- Add Mana Points to NPC 10506 (Kirtonos the Herald)
-- Source: http://wowd.org/creatures/10506.html
UPDATE `creature` SET `curmana` = 8343 WHERE `id` = 10506;
UPDATE `creature_template` SET `minmana` = 8343, `maxmana` = 8343 WHERE `entry` = 10506;

-- Update the following GameObject's respawn timer:
UPDATE `gameobject` SET `spawntimesecs` = 1800 WHERE `id` = 271;
UPDATE `gameobject` SET `spawntimesecs` = 5 WHERE `id` IN (104564, 104569, 104574);

-- Set Malgin Barleybrew <Bael'dun Morale Officer> faction as Ironforge
-- source: http://www.wowhead.com/npc=5848
UPDATE `creature_template` SET `faction_A` = 55, `faction_H` = 55 WHERE `entry` = 5848;

-- Reduced drop rate for quest item 4440 (Sigil of Strom)
-- Source: http://www.wowhead.com/item=4440#dropped-by
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -2 WHERE `item` = 4440 AND `entry` IN (2588, 2591);
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -3 WHERE `item` = 4440 AND `entry` = 2590;

-- Correct the Min. Level requirement for the Quest: Reassignment
-- Source: http://www.wowwiki.com/Quest:Reassignment?oldid=569818
UPDATE `quest_template` SET `minlevel` = 28 WHERE `entry` = 563;

-- Updated rank of creatures 947 (Rohh the Silent) & 10077 (Deathmaw): they are rare but not elite
-- Source: http://www.wowwiki.com/Grubthor?oldid=338577
-- http://www.wowwiki.com/Deathmaw?oldid=365745
-- http://www.wowwiki.com/Rohh_the_Silent?oldid=361358
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` IN (947, 10077);

-- Correct the Min. Level requirement for the Quest 3564 (Andron's Payment to Jediga)
-- Source: http://www.wowwiki.com/Quest:Andron%27s_Payment_to_Jediga?oldid=812949
UPDATE `quest_template` SET `MinLevel` = 45 WHERE `entry` = 3564;

-- Updated min level and quest level for Winter Veil quests
UPDATE `quest_template` SET `MinLevel` = 30, `QuestLevel` = 1 WHERE `entry` IN (6983, 7042);
UPDATE `quest_template` SET `MinLevel` = 1, `QuestLevel` = 1 WHERE `entry` = 8744;


-- Correct the drop rate of the following Quest Items:
-- Note: for most of the items, the value is guessed from comments, especially
-- those posted prior patch 2.3 were questing was make more easy by reducing many mobs stats
-- and increasing some drops rate
-- but still better than the way too high 80% drop chance previously in DB for every item
-- Source: http://www.wowhead.com/item=6080#comments
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -35 WHERE `entry` = 768 AND `item` = 6080;
-- Source: http://www.wowhead.com/item=3496#comments
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -15 WHERE `item` = 3496;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -30 WHERE `item` = 21928;
-- Source: http://www.wowhead.com/item=4029#comments
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -30 WHERE `item` = 4029;
-- Source: http://www.wowhead.com/item=3915#comments
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -17 WHERE `item` = 3915;
-- Source: http://www.wowhead.com/item=4106#dropped-by
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -52 WHERE `item` = 4106;
-- Source: http://www.wowhead.com/item=3901#dropped-by
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -37 WHERE `item` = 3901;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -15 WHERE `item` = 3839;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -10 WHERE `item` = 3862;
-- Source: http://www.wowhead.com/item=3901#dropped-by
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -25 WHERE `item` = 3863;
-- Source: http://www.wowhead.com/item=3919#dropped-by
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -30 WHERE `item` = 3919;
-- Source: http://www.wowhead.com/item=1524#comments
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -21 WHERE `item` = 1524;
-- Source: http://www.wowhead.com/item=4104#dropped-by
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -41 WHERE `item` = 4104;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -10 WHERE `item` = 3916;
-- Source: http://www.wowhead.com/item=4053#dropped-by
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -34 WHERE `item` = 4053;
-- Source: http://www.wowhead.com/item=5803#comments
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -20 WHERE `item` = 5803;
-- Source: http://www.wowhead.com/item=6184#comments
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -12 WHERE `item` = 6184;
-- Source: http://www.wowhead.com/item=6169
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -25 WHERE `item` = 6169;
-- Source: http://www.wowhead.com/item=9322
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -10 WHERE `item` = 9322;
-- Source: http://www.wowhead.com/item=5808#dropped-by
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -50 WHERE `item` = 5808;
-- Source: http://www.wowhead.com/item=5463#comments
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -10 WHERE `item` = 5463;
-- Source: http://www.wowhead.com/item=13815#comments
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -8 WHERE `item` = 13815;
-- Source: http://www.wowhead.com/item=5336#dropped-by
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -48 WHERE `item` = 5336;
-- Source: http://www.wowhead.com/item=5338#dropped-by
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -36 WHERE `item` = 5338;
-- Source: http://www.wowhead.com/item=5386#comments
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -30 WHERE `entry` = 2071 AND `item` = 5386;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -10 WHERE `entry` = 2237 AND `item` = 5386;
-- Source: http://www.wowhead.com/item=5412#dropped-by
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -50 WHERE `item` = 5412;
-- Source: http://www.wowhead.com/item=5360#dropped-by
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -45 WHERE `entry` IN (2176, 2177, 2178) AND `item` = 5360;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -37 WHERE `entry` = 2178 AND `item` = 5360;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -40 WHERE `item` = 12237;
-- Source: http://www.wowhead.com/item=5413#comments
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -20 WHERE `item` = 5413;
-- Source: http://www.wowhead.com/item=5348#dropped-by
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -50 WHERE `item` = 5348;
-- Source: http://www.wowhead.com/item=5414#dropped-by
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -40 WHERE `item` = 5414;
-- Source: http://www.wowhead.com/item=6079#dropped-by
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -30 WHERE `entry` IN (4633,4635) AND `item` = 6079;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -20 WHERE `entry` IN (4632, 4634, 4636, 4637, 12976, 12977) AND `item` = 6079;
-- Source: http://www.wowhead.com/item=4888#dropped-by
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -50 WHERE `item` = 4888;
-- Source: http://www.wowhead.com/item=4887#dropped-by
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -65 WHERE `item` = 4887;
-- Source: http://www.wowhead.com/item=4870#dropped-by
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -30 WHERE `item` = 4870;
-- Source: http://www.wowhead.com/item=11674#dropped-by
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -23 WHERE `item` = 11674;
-- Source: http://www.wowhead.com/item=9369#dropped-by
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -19 WHERE `item` = 9369;
-- Source: http://www.wowhead.com/item=9237
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -60 WHERE `item` = 9237;
-- Source: http://www.wowhead.com/item=4759
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -50 WHERE `item` = 4759;
-- Source: http://www.wowhead.com/item=4758#comments
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -40 WHERE `entry` = 2958 AND `item` = 4758;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -15 WHERE `entry` IN (2959, 2960) AND `item` = 4758;
-- Source: http://www.wowhead.com/item=4769#comments
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -70 WHERE `item` = 4769;
-- Source: http://www.wowhead.com/item=4769#dropped-by
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -41 WHERE `item` = 5203;
-- Source: http://www.wowhead.com/item=4802#dropped-by
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -44 WHERE `item` = 4802;
-- Source: http://www.wowhead.com/item=4801#dropped-by
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -44 WHERE `item` = 4801;
-- Source: http://www.wowhead.com/item=4803#dropped-by
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -36 WHERE `item` = 4803;
-- Source: http://www.wowhead.com/item=22381#comments
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -30 WHERE `item` = 22381;
-- Source: http://www.wowhead.com/item=11477"dropped-by
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -20 WHERE `item` = 11477;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -50 WHERE `item` = 6995;
-- Source: http://www.wowhead.com/item=5659#dropped-by
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -36 WHERE `item` = 5659;
-- Source: http://www.wowhead.com/item=5675#dropped-by
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -45 WHERE `item` = 5675;
-- Source: http://www.wowhead.com/item=11837#comments
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -8 WHERE `item` = 11837;
-- Source: http://www.wowhead.com/item=8587#comments
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -20 WHERE `entry` IN (5455, 5456, 5457) AND `item` = 8587;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -50 WHERE `entry` IN (5458, 5459, 5460) AND `item` = 8587;
-- Source: http://www.wowhead.com/item=20519#comments
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -10 WHERE `item` = 20519;
-- Source: http://www.wowhead.com/item=5204#dropped-by
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -33 WHERE `item` = 5204;
-- Source: http://www.wowhead.com/item=5168#dropped-by
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -37 WHERE `entry` = 2022 AND `item` = 5168;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -20 WHERE `entry` IN (2025, 2027, 2029, 2166) AND `item` = 5168;
-- Source: http://www.wowhead.com/item=5170#dropped-by
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -42 WHERE `entry` IN (2029, 2030) AND `item` = 5170;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -35 WHERE `entry` = 2027 AND `item` = 5170;
-- Source: http://www.wowhead.com/item=3412#dropped-by
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -27 WHERE `item` = 3412;
-- Source: http://www.wowhead.com/item=3409#dropped-by
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -21 WHERE `item` = 3409;
-- Source: http://www.wowhead.com/item=3411#dropped-by
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -35 WHERE `item` = 3411;
-- Source: http://www.wowhead.com/item=5842#comments
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -20 WHERE `item` = 5842;
-- Source: http://www.wowhead.com/item=4898#dropped-by
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -50 WHERE `item` = 4898;
-- Source: http://www.wowhead.com/item=5064#dropped-by
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -39 WHERE `item` = 5064;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -30 WHERE `item` = 5795;
-- Source: http://www.wowhead.com/item=5797#dropped-by
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -60 WHERE `item` = 5797;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -30 WHERE `item` = 5855;
-- Source: http://www.wowhead.com/item=5794#comments
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -10 WHERE `item` = 5794;
-- Source: http://www.wowhead.com/item=11114#dropped-by
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -28 WHERE `entry` IN (6503, 6501, 6502, 9164, 6504) AND `item` = 11114;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -5 WHERE `entry` IN (9162, 9163) AND `item` = 11114;
-- Source: http://www.wowhead.com/item=11831#dropped-by
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -54 WHERE `entry` = 9167 AND `item` = 11831;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -41 WHERE `entry` = 9165 AND `item` = 11831;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -35 WHERE `entry` = 9166 AND `item` = 11831;
-- Source: http://www.wowhead.com/item=11830#comments
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -10 WHERE`item` = 11830;
-- Source: http://www.wowhead.com/item=12444#comments
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -10 WHERE `item` = 12444;
-- Source: http://www.wowhead.com/item=12622#dropped-by
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -32 WHERE `entry` = 7443 AND `item` = 12622;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -42 WHERE `entry` = 7444 AND `item` = 12622;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -52 WHERE `entry` = 7445 AND `item` = 12622;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -62 WHERE `entry` = 7446 AND `item` = 12622;
-- Source: http://www.wowhead.com/item=12623#dropped-by
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -50 WHERE `item` = 12623;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -20 WHERE `entry` IN (7428, 7429) AND `item` = 12334;
-- Source: http://www.wowhead.com/item=3349#dropped-by
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -15 WHERE `item` = 3349;
-- Source: http://www.wowhead.com/item=8363#dropped-by
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -15 WHERE `item` = 8363;
-- Source: http://www.wowhead.com/item=20027#comments
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -33 WHERE `item` = 20027;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -10 WHERE `entry` = 3121 AND `item` = 4892;
-- Source: http://www.wowhead.com/item=8428#comments
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -10 WHERE `item` = 8428;
-- Source: http://www.wowhead.com/item=2671#dropped-by
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -60 WHERE `item` = 2671;
-- Source: http://www.wowhead.com/item=2607#dropped-by
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -5 WHERE `item` = 2607;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -10 WHERE `item` = 2939;
-- Source: http://www.wowhead.com/item=2606#comments
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -10 WHERE`item` = 2606;
-- Source: http://www.wowhead.com/item=2536#dropped-by
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -50 WHERE `item` = 2536;
-- Source: http://www.wowhead.com/item=3110#dropped-by
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -50 WHERE `item` = 3110;
-- Source: http://www.wowhead.com/item=4626#dropped-by
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -40 WHERE `item` = 4626;
-- Source: http://www.wowhead.com/item=12367#comments
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -10 WHERE `item` = 12367;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -40 WHERE `item` = 8009;
-- Source: http://www.wowhead.com/item=9247#dropped-by
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -55 WHERE `entry` IN (5331, 5335) AND `item` = 9247;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -40 WHERE `entry` IN (5332, 5333, 5334, 5336, 5337, 5343, 8136) AND `item` = 9247;
-- Source: http://www.wowhead.com/item=7847#dropped-by
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -20 WHERE `entry`= 2831 AND `item` = 7847;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -15 WHERE `entry` = 2829 AND `item` = 7847;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -5 WHERE `entry` = 2830 AND `item` = 7847;
-- Source: http://www.wowhead.com/item=7848#dropped-by
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -20 WHERE `entry` IN (2735, 2736, 2791) AND `item` = 7848;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -15 WHERE `entry` IN (92, 2745, 2752, 2919, 8278) AND `item` = 7848;
-- Source: http://www.wowhead.com/item=11266#comments
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -50 WHERE `item` = 11266;
-- Source: http://www.wowhead.com/item=4630#comments
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -50 WHERE `entry` IN (2715, 2906, 2907) AND `item` = 4630;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -38 WHERE `entry` IN (2701, 2719) AND `item` = 4630;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -29 WHERE `entry` IN (2716, 2718, 2720) AND `item` = 4630;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -25 WHERE `entry` = 2717 AND `item` = 4630;
-- Source: http://www.wowhead.com/item=4522#dropped-by
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -33 WHERE `item` = 4522;
-- Source: http://www.wowhead.com/item=4503#dropped-by
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -37 WHERE `entry` IN (2554, 2552) AND `item` = 4503;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -28 WHERE `entry` = 2556 AND `item` = 4503;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -25 WHERE `entry` = 2555 AND `item` = 4503;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -13 WHERE `entry` IN (2553, 2557, 2558, 2605) AND `item` = 4503;
-- Source: http://www.wowhead.com/item=4513#comments
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -33 WHERE `item` = 4513;
-- Source: http://www.wowhead.com/item=4435#dropped-by
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -60 WHERE `entry` = 2572 AND `item` = 4435;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -50 WHERE `entry` IN (2573, 2574) AND `item` = 4435;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -33 WHERE `entry` IN (2559, 2560) AND `item` = 4512;
-- Source: http://www.wowhead.com/item=11467#comments
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -45 WHERE `entry` IN (7055, 9690, 9694, 9697) AND `item` = 11467;
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -33 WHERE `entry` IN (7025, 7029, 7028, 7027, 7026, 10077) AND `item` = 11467;

-- Decreased the HP of creature 2337 (Darkstrand Voidcaller) as they were far to high
-- Source: TBC-DB
UPDATE `creature_template` SET `minhealth` = 702, `maxhealth` = 739 WHERE `entry` = 2337;
UPDATE `creature` SET `curhealth` = 702 WHERE `id` = 2337;

-- Fixes based on Project Silverpine reports (Titarion) and some of the fixes by Titari
/* Changes to NPC Argent Sentry, Argent Rider, Argent Defender and Cenarion Hold Infantry:
Minimum Level and Maximum Level changed to 60 (Argent Sentry, Argent Rider)
Rank changed to Elite (Argent Sentry, Argent Rider)
Health Points are increased to 8100 for the Argent Rider and 12150 for the Argent Sentry
unit_flags set to not be passive (for Argent Sentry, Argent Defender and Cenarion Hold Infantry. Argent Riders are only aggravated when hit by AoE spells(requires additional information) or unless you have the weapon: Corrupted Ashbringer equipped)
Changed MovementType of Argent Rider to Waypoint
Changed the affiliation of Argent Defender to <The Argent Dawn>
Removed the quest giver flag from Argent Defenders
Increased the damage output of Argent Sentries and Argent Riders by a fairly large margin
*/

-- Argent Sentry
UPDATE `creature_template` SET `minlevel` = 60, `rank` = 1, `dmg_multiplier` = 4.6, `unit_flags` = 32256 WHERE `entry` = 16378;
-- Argent Rider
UPDATE `creature_template` SET `minlevel` = 60, `maxlevel`= 60, `rank` = 1, `dmg_multiplier` = 4.6, `MovementType` = 2 WHERE `entry` = 11102;
-- Cenarion Hold Infantry
UPDATE `creature_template` SET `npcflag` = 0, `unit_flags` = 32256 WHERE `entry` = 15184;

/* The following Commanders and Lieutenants are now properly mounted:
Commander Mortimer
Lieutenant Spencer
Lieutenant Stouthandle
Lieutenant Mancuso
Lieutenant Stronghoof
Lieutenant Rugba
Lieutenant Greywand
Lieutenant Largent
Commander Malgor
Lieutenant Vol'talar
Lieutenant Lewis
*/
DELETE FROM `creature_template_addon` WHERE `entry` IN (13318, 13138, 13297, 13300, 13143, 13137, 13298, 13296, 13152, 13144, 13147);
INSERT INTO `creature_template_addon` VALUES
(13318, 14577, 0, 1, 16, 0, 0, NULL),
(13138, 14337, 0, 1, 16, 0, 0, NULL),
(13297, 14577, 0, 1, 16, 0, 0, NULL),
(13300, 14337, 0, 1, 16, 0, 0, NULL),
(13143, 14348, 0, 1, 16, 0, 0, NULL),
(13137, 14334, 0, 1, 16, 0, 0, NULL),
(13298, 14372, 0, 1, 16, 0, 0, NULL),
(13296, 14337, 0, 1, 16, 0, 0, NULL),
(13152, 14334, 0, 1, 16, 0, 0, NULL),
(13144, 14388, 0, 1, 16, 0, 0, NULL),
(13147, 10671, 0, 1, 16, 0, 0, NULL);

-- Mountaineer Boombellow is now passive towards players, unless attacked
-- Source: http://old.wowhead.com/npc=13797#comments:id=327892
UPDATE `creature_template` SET `unit_flags` = `unit_flags`|(512+8) WHERE `entry` = 13797;

/* Linked missing npc text to Decedra Willham
Source: http://www.wowpedia.org/Decedra_Willham
*/
DELETE FROM `gossip_menu` WHERE `entry` = 4357;
INSERT INTO `gossip_menu` VALUES
(4357, 5579, 0, 0);

UPDATE `creature_template` SET `gossip_menu_id` = 4357 WHERE `entry` = 12716;
DELETE FROM npc_gossip WHERE npc_guid = 8464;

-- Linked missing npc text to Mupsi Shacklefridd
DELETE FROM `gossip_menu` WHERE `entry` = 7237;
INSERT INTO `gossip_menu` VALUES
(7237, 8537, 0, 0);

UPDATE `creature_template` SET `gossip_menu_id` = 7237 WHERE `entry` = 16418;

DELETE FROM npc_gossip WHERE npc_guid = 13551;

-- Updated ChanceOrQuestChance of quest item 3720 (Yeti Fur) as it was dropping all the time
-- source: http://www.wowhead.com/item=3720#comments
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -30 WHERE `item` = 3720 AND `entry` IN (2249, 2251, 2248);
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -25 WHERE `item` = 3720 AND `entry` = 2250;

-- Updated ChanceOrQuestChance of quest item 3658 (Recovered Tome) as it was dropping all the time
-- source: http://www.wowhead.com/item=3658#comments
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -15 WHERE `item` = 3658;

-- Updated ChanceOrQuestChance of quest item 2843 (Dirty Knucklebones) as it was dropping all the time
-- source: http://www.wowhead.com/item=2843#comments
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -50 WHERE `item` = 2843;

-- Level of NPC Mor'Ladim (Duskwood) should be 35, not 38
-- source: http://www.wowwiki.com/Mor'Ladim?oldid=353029
UPDATE `creature_template` SET `minlevel` =35, `maxlevel` = 35 WHERE `entry` = 522;

UPDATE `quest_template` SET `PrevQuestId` = 0, `nextquestinchain` = 1687 WHERE `entry` = 1468; -- Children's Week -> Spooky Lighthouse
UPDATE `quest_template` SET `PrevQuestId` = 1468, `nextquestinchain` = 1558 WHERE `entry` = 1687; -- Spooky Lighthouse -> The Stonewrought Dam
UPDATE `quest_template` SET `PrevQuestId` = 1687, `nextquestinchain` = 1479 WHERE `entry` = 1558; -- The Stonewrought Dam -> The Bough of the Eternals
UPDATE `quest_template` SET `PrevQuestId` = 1558, `nextquestinchain` = 4822 WHERE `entry` = 1479; -- The Bough of the Eternals -> You Scream, I Scream...
UPDATE `quest_template` SET `PrevQuestId` = 1479, `nextquestinchain` = 558 WHERE `entry` = 4822; -- You Scream, I Scream... -> Jaina's Autograph
UPDATE `quest_template` SET `PrevQuestId` = 4822, `nextquestinchain` = 171 WHERE `entry` = 558; -- Jaina's Autograph --> A Warden of the Alliance
UPDATE `quest_template` SET `PrevQuestId` = 558 WHERE `entry` = 171;

UPDATE `creature_questrelation` SET `id` = 14305 WHERE `quest` = 171; -- Human Orphan as questgiver (instead of Watcher Callahan)

-- Added missing entries for items 4476 (Beastwalker Robe) & 4477 (Nefarious Buckler)
-- in loot table of creature 534 (Nefaru)
-- Source: http://www.wowwiki.com/Nefaru?oldid=458129
DELETE FROM `creature_loot_template` WHERE `entry` = 534 AND `item` IN (4476, 4477);
INSERT INTO `creature_loot_template` VALUES
(534, 4476, 0, 2, 1, 1, 0),
(534, 4477, 80, 2, 1, 1, 0);
-- Removed wrong entries for items 4476 & 4477 in reference_loot_template
DELETE FROM `reference_loot_template` WHERE `item` IN (4476, 4477);

-- Recipe for Mighty Troll's Blood Elixir should be removed from Sylvanna Forestmoon, ordinary Expert Alchemist in Darnassus
-- This recipe is intended to be reward from NPC Henry Stern, who resides in Razorfen Dawns instance.
-- Source: http://www.wowhead.com/spell=3451#taught-by-item
DELETE FROM `npc_trainer` WHERE `entry` = 11042 AND `spell` = 13030;

-- Added missing entries for items 5753 (Ruffled Chaplet) & 5754 (Wolfpack Medallion)
-- in loot table of creature 3792 (Terrowulf Packlord)
-- Source: http://www.wowwiki.com/Terrowulf_Packlord?oldid=458508
DELETE FROM `creature_loot_template` WHERE `entry` = 3792 AND `item` IN (5753, 5754);
INSERT INTO `creature_loot_template` VALUES
(3792, 5753, 0, 2, 1, 1, 0),
(3792, 5754, 54, 2, 1, 1, 0);
-- Removed wrong entries for items 5753 & 5754 in reference_loot_template
DELETE FROM `reference_loot_template` WHERE `item` IN (5754, 5753);

-- Modified faction of creature 11470 (Eldreth Sorcerer) and 11469 (Eldreth Seether) as it was wrongly set to Darnassus
-- instead of being hostile to players
-- source: http://www.wowwiki.com/Eldreth_Sorcerer
-- source: http://www.wowwiki.com/Eldreth_Seether
UPDATE `creature_template` SET `faction_A` = 14, `faction_H` = 14 WHERE `entry` IN (11469, 11470);

UPDATE `creature_template` SET `faction_A` = 14, `faction_H` = 14 WHERE  `entry` = 5934;

-- Malgin Barleybrew is important because he is the only vendor for Alliance located in proximity to Razorfen Kraul and Razorfen Downs instances.
-- Unfortunately, his shop is missing from DB, his faction is neutral and he is attackable for Alliance.
-- source: http://www.wowwiki.com/Malgin_Barleybrew?oldid=345778
-- source: http://www.wowhead.com/npc=5848#sells
UPDATE `creature_template` SET `faction_A` = 122, `faction_H` = 122, `npcflag` = `npcflag`|4 WHERE `entry` = 5848;
-- Added items to vendor list
DELETE FROM `npc_vendor` WHERE `entry` = 5848;
INSERT INTO `npc_vendor` VALUES
(5848, 2593, 0, 0, 0),
(5848, 2594, 0, 0, 0),
(5848, 2595, 0, 0, 0),
(5848, 2596, 0, 0, 0),
(5848, 2723, 0, 0, 0);

-- Added missing Dark Iron Ambassador (creature 6228), rare elite in Gnomeregan
DELETE FROM `creature` WHERE `guid` = 590004 OR `id` = 6228;
INSERT INTO `creature` VALUES (590004, 6228, 90, 0, 0, -731.496, 680.212, -330.755, 4.4235, 7200, 0, 0, 4924, 1926, 0, 2);

-- Added mana to creature 6228 (Dark Iron Ambassador)
-- Source: TBC-DB
-- Source: http://www.wowwiki.com/Dark_Iron_Ambassador?direction=next&oldid=1242539
UPDATE `creature_template` SET `minmana` = 1926, `maxmana` = 1926, `MovementType` = 2 WHERE `entry` = 6228;

-- Added waypoint movement to creature 6228 (Dark Iron Ambassador)
-- Source: YTDB
-- Source: http://www.wowhead.com/npc=6228#map
DELETE FROM `creature_movement_template` WHERE `entry` = 6228;
INSERT INTO `creature_movement_template` VALUES
(6228, 1, -670.959, 700.469, -331.599, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.79324, 0, 0),
(6228, 2, -681.021, 703.321, -331.087, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.86785, 0, 0),
(6228, 3, -699.948, 706.936, -330.782, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.93461, 0, 0),
(6228, 4, -711.55, 704.961, -330.782, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.35087, 0, 0),
(6228, 5, -726.669, 696.458, -330.782, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.7043, 0, 0),
(6228, 6, -732.787, 675.869, -330.748, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.419, 0, 0),
(6228, 7, -738.058, 656.47, -322.064, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.43472, 0, 0),
(6228, 8, -740.584, 647.778, -321.699, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.46613, 0, 0),
(6228, 9, -745.422, 627.984, -312.896, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.45044, 0, 0),
(6228, 10, -747.379, 619.931, -312.783, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.46222, 0, 0),
(6228, 11, -752.768, 600.302, -304.067, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.45042, 0, 0),
(6228, 12, -752.768, 600.302, -304.067, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.45042, 0, 0),
(6228, 13, -755.976, 578.582, -303.782, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.58003, 0, 0),
(6228, 14, -752.988, 600.057, -303.941, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.32845, 0, 0),
(6228, 15, -747.104, 619.802, -312.783, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.34415, 0, 0),
(6228, 16, -744.996, 627.542, -312.783, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.37163, 0, 0),
(6228, 17, -739.913, 647.863, -321.782, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.28523, 0, 0),
(6228, 18, -737.531, 656.281, -322.041, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.31272, 0, 0),
(6228, 19, -732.373, 676.094, -330.781, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.32843, 0, 0),
(6228, 20, -728.248, 692.276, -330.783, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.939658, 0, 0),
(6228, 21, -711.47, 705.714, -330.783, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.495909, 0, 0),
(6228, 22, -700.726, 705.705, -330.783, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6.19398, 0, 0),
(6228, 23, -687.432, 702.892, -330.788, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6.04476, 0, 0);


-- Spawned missing creature 4842 (Earthcaller Halmgar) in Razorfen Kraul
-- fixed faction, mana and armor
-- source: http://www.wowhead.com/npc=4842#comments
-- source: http://www.wowwiki.com/Earthcaller_Halmgar?oldid=348852
-- Source: TBC-DB
UPDATE `creature_template` SET `minmana` = 1067, `maxmana` = 1067, `faction_A` = 152, `faction_H` = 152, `armor` = 916, `MovementType`= 1 WHERE `entry` = 4842;

DELETE FROM `creature` WHERE `id` = 4842 OR `guid` = 590008;
INSERT INTO `creature` VALUES
(590008, 4842, 47, 0, 0, 2118.58, 1695.32, 80.3316, 1.46786, 7200, 5, 0, 3289, 1067, 0, 1);

UPDATE `creature_template` SET `minlevel` = 33, `maxlevel` = 33 WHERE `entry` = 4421;

-- Fixed faction and model of creature 13082 (Milton Beatings)
-- This NPC is spawned near the chest in the passageway to Ravenholdt.
-- He is neutral now and may appear female, but should be hostile male
-- source: http://www.wowwiki.com/Milton_Beats?oldid=1478132
UPDATE `creature_model_info` SET `modelid_other_gender` = 0 WHERE `modelid` = 4016;
UPDATE `creature_template` SET `faction_A` = 14, `faction_H` = 14 WHERE `entry` = 13082;

UPDATE `gossip_menu_option` SET `option_text` = "Use engineering to access hidden schematics!" WHERE `menu_id` = 1047 and `id` = 1;

-- Fix typo, replace "guage" with "gauge"
UPDATE `page_text` SET `text` = "Hi Felnok! My studies in the Burning Steppes are proceeding splendidly. And I owe $N a lot for all $ghis:her; help! Here's what I need to continue: A steelcoil bumber-bitzel A 17-gauge ice-spanner 12 pounds of duck feathers A jar of that glue you make Thanks a lot Felnok, and when we see each other again remind me not to put coal in your boots! -Tinkee" where `entry` = 1710;

UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 8 WHERE `item` = 9326;

-- Thanks to Neotmiren for pointing and fixing
-- Fixed faction of creature 2638 (Syndicate Spectre), 13149 (Syndicate Brigand), 13150 (Syndicate Agent), 13151 (Syndicate Master Ryson), 14281 (Jimmy The Bleeder)
-- Source: http://www.wowhead.com/npc=14281#comments
UPDATE `creature_template` SET `faction_A` = 87, `faction_H` = 87 WHERE `entry` IN (2638, 14281);
UPDATE `creature_template` SET `faction_A` = 108, `faction_H` = 108 WHERE `entry` IN (13149, 13150, 13151);

-- Fixed model for creature 14281 (Jimmy The Bleeder) as it should not spawn as female
UPDATE `creature_model_info` SET `modelid_other_gender` = 0 WHERE `modelid` = 3616;

-- Thanks Neotmiren for pointing and fixing
-- Rogue quest "Syndicate Emblems" - wrong maximum Reputation restriction, quest is unavailable
-- http://www.wowhead.com/quest=6701/syndicate-emblems
-- http://www.wowwiki.com/Syndicate?oldid=295307
UPDATE `quest_template` SET `RequiredMaxRepValue` = 2999 WHERE `entry` = 6701;

-- Added waypoints movement to creature 14327 (Lethtendris) in Dire Maul East
-- Source: http://www.youtube.com/watch?feature=player_detailpage&v=hdU-IWdLZ54#t=131
DELETE FROM `creature_movement_template` WHERE `entry` = 14327;
INSERT INTO `creature_movement_template` VALUES
(14327, 1, 5.38201, -449.751, 16.4069, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.56867, 0, 0),
(14327, 2, 1.84266, -457.824, 16.4027, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.1257, 0, 0),
(14327, 3, -5.94911, -461.589, 16.3998, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.05599, 0, 0),
(14327, 4, -14.187, -458.465, 16.4001, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.22347, 0, 0),
(14327, 5, -17.7826, -450.064, 16.4047, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.55195, 0, 0),
(14327, 6, -11.3306, -443.247, 16.4098, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.569417, 0, 0),
(14327, 7, -4.13976, -441.568, 16.4101, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.041629, 0, 0),
(14327, 8, 3.09104, -444.836, 16.4087, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.55198, 0, 0);
UPDATE `creature` SET `MovementType` = 2 WHERE `id` = 14327;
UPDATE `creature_template` SET `MovementType` = 2 WHERE `entry` = 14327;

-- Linked creature 14349 (Pimbig) to creature 14327 (Lethtendris) to follow her
-- and share aggro
DELETE FROM `creature_linking_template` WHERE entry = 14349;
INSERT INTO `creature_linking_template` (`entry`, `map`, `master_entry`, `flag`, `search_range`) VALUES
(14349, 429, 14327, 515, 50);

-- Added equipment to creature 14327 (Lethtendris)
-- Source: http://www.wowhead.com/npc=14327#comments
DELETE FROM `creature_equip_template_raw` WHERE `entry` = 1206;
INSERT INTO `creature_equip_template_raw` VALUES
(1206, 35563, 0, 0, 285346306, 0, 0, 2, 0, 0);
UPDATE `creature_template` SET `equipment_id` = 1206 WHERE `entry` = 14327;

-- Thanks Neotmiren for pointing
-- Priestess Josetta (Goldshire) offers invalid versions of Night Elf "Returning Home" quests.
-- Updates level, exclusivegroup, nextquestid and reward text of all "Returning Home" quests for raciel NE priest quest
UPDATE `quest_template` SET `MinLevel` = 10, `QuestLevel` = 10, `ExclusiveGroup` = 5631, `NextQuestId` = 5627, `NextQuestInChain` = 5627, `OfferRewardText` = 'Wonderful, you\'ve returned home, $N. It always pleases Tyrande and myself when those we\'ve trained go out into the world and return to us safely. How have things been with you? Does Elune still bless your travels? Perhaps after we speak more about the business at hand, you could tell me more of your travels.' WHERE `entry` BETWEEN 5628 AND 5633;
-- Assigned various "Returning Home" quests to corresponding low level NPCs priest trainers in Teldrassil
-- Elwynn Forest, Stormwind (Park and Cathedral) and Ironforge (Hall of Mysteries)
UPDATE `creature_questrelation` SET `id` = 3600 WHERE `quest` = 5629; -- Laurna Morninglight
UPDATE `creature_questrelation` SET `id` = 377 WHERE `quest` = 5628; -- Prietress Josetta
UPDATE `creature_questrelation` SET `id` = 1226 WHERE `quest` = 5630; -- Maxan Anvol
UPDATE `creature_questrelation` SET `id` = 5489 WHERE `quest` = 5631; -- Brother Joshua
UPDATE `creature_questrelation` SET `id` = 11397 WHERE `quest` = 5632; -- Nara Meideros
UPDATE `creature_questrelation` SET `id` = 5142 WHERE `quest` = 5633; -- Braenna Flintcrag

-- Removed equipment of creatures 1458 (Telurinon Moonshadow) and 1482 (Andrea Halloran)
-- as they should not wear equipment
-- source: http://old.wowhead.com/npc=1458
--                 http://old.wowhead.com/npc=1482
UPDATE `creature_template` SET `equipment_id` = 0 WHERE `entry` IN (1482, 1458);

UPDATE `gameobject_template` SET `data2` = 196608 WHERE `entry` IN (177188, 177189, 177192, 177198, 179507, 179508, 179510, 179513);


-- Fixed missing female version of Scarshield Legion creatures in Blackrock Spire
-- Thanks Stan84 for pointing and fixing
-- Correct model data taken from UDB

-- Marked as female the alternate modelid_1
UPDATE `creature_model_info` SET `gender` = 1 WHERE `modelid` IN (9596, 9599, 9606, 9620, 9630, 9638);
-- Fixed model of male Scarshield raider
UPDATE `creature_model_info` SET `bounding_radius` = 0.4464, `combat_reach` = 1.8 WHERE `modelid` = 9637;

-- Added missing modelid_2 for Scarshield Legion creatures
UPDATE `creature_template` SET `modelid_2` = 9855 WHERE `entry` = 9043;
UPDATE `creature_template` SET `modelid_2` = 9861 WHERE `entry` = 9044;
UPDATE `creature_template` SET `modelid_2` = 9853 WHERE `entry` = 9045;
UPDATE `creature_template` SET `modelid_2` = 9857 WHERE `entry` = 9097;
UPDATE `creature_template` SET `modelid_2` = 9863 WHERE `entry` = 9098;
UPDATE `creature_template` SET `modelid_2` = 9865 WHERE `entry` = 9257;
UPDATE `creature_template` SET `modelid_2` = 9859 WHERE `entry` = 9258;

-- Reset model for spawned creatures to prevent them for always using the same instead of their alternate (and female) version
UPDATE `creature` SET `modelid` = 0 WHERE `id` IN (9043, 9044, 9045, 9097, 9098, 9257, 9258);

-- Marked as male the modelid_2 and fixed boxing
UPDATE `creature_model_info` SET `bounding_radius` = 0.4464, `gender` = 1 WHERE `modelid` IN (9854, 9856, 9858, 9860, 9862, 9864, 9609);
-- Marked as female the alternate modelid_2 and fixed boxing
UPDATE `creature_model_info` SET `bounding_radius` = 0.4464, `gender` = 0 WHERE `modelid` IN (9855, 9861, 9853, 9857, 9863, 9865, 9859);

-- Linked boss creature 4428 (Death Speaker Jargba) to its two guards creatures
-- Source: http://www.wowwiki.com/Death_Speaker_Jargba#Strategies
DELETE FROM `creature_linking` WHERE `guid` IN (87401, 87405);
INSERT INTO `creature_linking` VALUES
(87401, 87400, 3),
(87405, 87400, 3);

-- Removed spawn of creatures 4528 (Stone Rumbler), 4526 (Wind Howler), 4535 (Tamed Battleboar), 4534 (Tamed Hyena)
-- Because those creatures are summoned and already handled by ACID
-- Source: http://www.wowwiki.com/Razorfen_Kraul#Mobs
-- Removed creature addons
DELETE FROM `creature_addon` WHERE `guid` IN (SELECT `guid` FROM `creature` WHERE `id` IN (4526, 4528, 4535, 4534));
-- Removed creatures spawns
DELETE FROM `creature` WHERE `id` IN (4526, 4528, 4535, 4534);

-- Removed waypoint path of one of the Stone Rumblers
DELETE FROM `creature_movement` WHERE `id` = 87300;

-- Switched waypoint movement patrol of one of the removed Stone Rumbler to its Quilboar summoner
-- as they should use the same (the Stone Rumbler is the one summoned by this NPC)
UPDATE `creature` SET `guid` = 87303, `position_x` = 2007.13, `position_y` = 1643.03, `position_z` = 80.3822, `spawndist` = 0, `currentwaypoint` = 1, `MovementType`= 2 WHERE `guid`= 87301;
-- Changed creature addon guid to make it match the change above
UPDATE `creature_addon` SET `guid` = 87303 WHERE `guid` = 87301;

-- Set to rare rank of creatures 4842 (Earthcaller Halmgar), 4425 (Blind Hunter) & 4438 (Razorfen Spearhide)
-- in Razorfen Kraul
-- Source: http://old.wowhead.com/npc=4842
-- http://old.wowhead.com/npc=4425
-- http://old.wowhead.com/npc=4438
UPDATE `creature_template` SET `rank` = 2 WHERE `entry` IN (4842, 4425, 4438);

SET @HALMGAR_GUID := 590008;
SET @HUNTER_GUID := 87485;
SET @ALTERNATE_GUID1 := 87327;
SET @ALTERNATE_GUID2 := 590010;


-- Put creatures 4842 (Earthcaller Halmgar), 4425 (Blind Hunter)
-- in pools as they are rare creatures and should not spawn all the time
-- Source: http://old.wowhead.com/npc=4842
-- http://old.wowhead.com/npc=4425

-- Added spawn of creature 4539 (Greater Kraul Bat) as an alternate spawn in pool for Blind Hunter
DELETE FROM `creature` WHERE `guid` = @ALTERNATE_GUID2;
INSERT INTO `creature` VALUES
(@ALTERNATE_GUID2, 4539, 47, 1954, 0, 2200.76, 1978.19, 56.7228, 2.77843, 7200, 3, 0, 3296, 0, 0, 1);


DELETE FROM `pool_creature` WHERE `guid` IN (@HALMGAR_GUID, @HUNTER_GUID, @ALTERNATE_GUID1, @ALTERNATE_GUID2);
INSERT INTO `pool_creature` VALUES
(@HALMGAR_GUID, 1176, 30, 'Earthcaller Halmgar (4842) Razorfen Kraul'),
(@ALTERNATE_GUID1, 1176, 70, 'Alternate creature to Halmgar (4842) Razorfen Kraul'),
(@HUNTER_GUID, 1177, 30, 'Blind Hunter (4425) Razorfen Kraul'),
(@ALTERNATE_GUID2, 1177, 70, 'Alternate creature to Blind Hunter (4425) Razorfen Kraul');

DELETE FROM `pool_template` WHERE `entry` IN (1176, 1177);
INSERT INTO `pool_template` VALUES
(1176, 1, 'Earthcaller Halmgar (4842) Razorfen Kraul'),
(1177, 1, 'Blind Hunter (4425) Razorfen Kraul');

-- Changed faction of creature 4625 (Death's Head Ward Keeper) to 154 (Quillboar Death's Head) as
-- they should be hostile to players in Razorfen Kraul
-- Source: http://old.wowhead.com/npc=4625
UPDATE `creature_template` SET `faction_A` = 154, `faction_H` = 154 WHERE `entry` = 4625;


-- Starting value for adding guid
SET @GUID := 160036;

-- Added missing spawns for creature 10799 (Warosh) in Blackrock Spire
DELETE FROM creature WHERE id = 10799;
DELETE FROM `creature` WHERE `guid` = @GUID + 71;
INSERT INTO `creature` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `MovementType`, `curhealth`) VALUES
(@GUID + 71, 10799, 229, 51.9856, -449.587, 27.2408, 3.36977, 10800, 0, 0, 3857);
-- Added patrol to creature 10799 (Warosh) in Blackrock Spire
-- Data from YTDB

-- Allowed template and spawn to use waypoints
UPDATE `creature_template` SET `MovementType` = 2 WHERE `entry` = 10799;
UPDATE `creature` SET `MovementType` = 2 WHERE `id` = 10799;
-- Added waypoints
DELETE FROM `creature_movement_template` WHERE `entry` = 10799;
INSERT INTO `creature_movement_template` VALUES
(10799, 1, 51.9856, -449.587, 27.2408, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.36977, 0, 0),
(10799, 2, 46.2249, -450.534, 27.1427, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.32403, 0, 0),
(10799, 3, 46.1722, -459.585, 24.7056, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.59361, 0, 0),
(10799, 4, 45.7504, -465.822, 24.2716, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.71673, 0, 0),
(10799, 5, 48.2984, -485.583, 28.508, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.09488, 0, 0),
(10799, 6, 48.9428, -488.318, 28.882, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.72851, 0, 0),
(10799, 7, 47.2631, -493.2, 29.3789, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.6107, 0, 0),
(10799, 8, 48.5878, -503.263, 29.1565, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.89737, 0, 0),
(10799, 9, 50.8342, -510.897, 29.1501, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.43006, 0, 0),
(10799, 10, 50.75, -515.957, 30.0029, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.72065, 0, 0),
(10799, 11, 50.5667, -532.446, 26.8272, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.73243, 0, 0),
(10799, 12, 50.8802, -552.057, 30.9888, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.48504, 0, 0),
(10799, 13, 51.8944, -563.851, 30.5693, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.70495, 0, 0),
(10799, 14, 50.2212, -579.994, 30.6028, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.08467, 0, 0),
(10799, 15, 40.5842, -579.112, 31.0674, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.13415, 0, 0),
(10799, 16, 24.6362, -578.082, 25.6611, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.02812, 0, 0),
(10799, 17, 7.82852, -577.085, 29.8409, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.02419, 0, 0),
(10799, 18, 7.51933, -577.162, 29.8409, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.08388, 0, 0),
(10799, 19, -26.7676, -574.566, 29.1909, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.07053, 0, 0),
(10799, 20, -60.4453, -573.924, 29.1909, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.098588, 0, 0),
(10799, 21, -48.9208, -573.654, 29.1909, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.227388, 0, 0),
(10799, 22, -35.5201, -568.186, 29.1909, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.83352, 0, 0),
(10799, 23, -37.9013, -557.797, 29.191, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.19933, 0, 0),
(10799, 24, -58.9306, -535.022, 29.1909, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.41728, 0, 0),
(10799, 25, -37.2945, -558.404, 29.1909, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.76148, 0, 0),
(10799, 26, -30.3019, -576.791, 29.1909, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.8987, 0, 0),
(10799, 27, 3.74755, -576.627, 29.1909, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.12392, 0, 0),
(10799, 28, 9.22193, -577.363, 29.841, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6.2341, 0, 0),
(10799, 29, 25.1876, -578.186, 25.6645, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.0493, 0, 0),
(10799, 30, 36.53, -578.65, 29.6103, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.16319, 0, 0),
(10799, 31, 42.9471, -578.437, 30.5713, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.20246, 0, 0),
(10799, 32, 49.5344, -580.461, 30.6014, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.48243, 0, 0),
(10799, 33, 51.1354, -552.235, 30.9831, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.6081, 0, 0),
(10799, 34, 51.1562, -542.912, 27.5254, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.57275, 0, 0),
(10799, 35, 51.147, -534.134, 26.7287, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.57275, 0, 0),
(10799, 36, 50.355, -518.421, 29.6003, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.58061, 0, 0),
(10799, 37, 50.3354, -513.757, 30.0029, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.57668, 0, 0),
(10799, 38, 49.4364, -495.867, 29.2521, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.61595, 0, 0),
(10799, 39, 49.2098, -492.183, 29.0709, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.63166, 0, 0),
(10799, 40, 48.2505, -475.789, 26.1814, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.63559, 0, 0),
(10799, 41, 47.1287, -462.596, 24.0218, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.59239, 0, 0),
(10799, 42, 45.2084, -452.207, 26.7197, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.41568, 0, 0);


-- Added missing spawns for creature 9583 (Bloodaxe Veteran) in Blackrock Spire
DELETE FROM `creature` WHERE `guid` BETWEEN @GUID + 65 AND @GUID + 66;
INSERT INTO `creature` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `MovementType`, `curhealth`) VALUES
(@GUID + 65, 9583, 229, -46.32569, -299.108, 71.02393, 4.764749, 10800, 0, 0, 8569),
(@GUID + 66, 9583, 229, -56.33363, -299.7574, 71.02393, 4.031711, 10800, 0, 0, 8569);

-- Added missing spawns for creature 9693 (Bloodaxe Evoker) in Blackrock Spire
DELETE FROM `creature` WHERE `guid` = @GUID + 68;
INSERT INTO `creature` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `MovementType`, `curhealth`, `curmana`) VALUES
(@GUID + 68, 9693, 229, -60.75972, -336.9793, 71.02393, 5.323254, 10800, 0, 0, 6893, 2289);

-- Added missing spawns for creature 9696 (Bloodaxe Worg) in Blackrock Spire
DELETE FROM `creature` WHERE `guid` BETWEEN @GUID + 69 AND @GUID + 70;
INSERT INTO `creature` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `MovementType`, `curhealth`) VALUES
(@GUID + 69, 9696, 229, -48.09798, -329.2088, 71.03232, 3.071779, 10800, 0, 0, 2660),
(@GUID + 70, 9696, 229, -48.49498, -335.4435, 71.03133, 2.234021, 10800, 0, 0, 2660);

-- Added missing spawns for creature 9692 (Bloodaxe Raider) in Blackrock Spire
DELETE FROM `creature` WHERE `guid` = @GUID + 67;
INSERT INTO `creature` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `MovementType`, `curhealth`) VALUES
(@GUID + 67, 9692, 229, -48.35127, -331.6649, 71.03225, 2.984513, 10800, 0, 0, 8227);

-- Added missing spawns for creature 9044 (Scarshield Sentry) in Blackrock Spire
DELETE FROM `creature` WHERE `guid` BETWEEN @GUID + 1 AND @GUID + 4;
INSERT INTO `creature` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `MovementType`, `curhealth`) VALUES
(@GUID + 4, 9044, 0, -7551.301, -1278.323, 250.5321, 6.164817, 120, 0, 0, 7311);

-- Added addons to make some of the Scarshield Legionnaire in Blackrock Spire entrance sit.
UPDATE `creature` SET `MovementType` = 0 WHERE `guid` IN (58022, 58015, 58041, 58000, 58035, 58009, 58021, 58033, 58034);
DELETE FROM `creature_addon` WHERE `guid` IN (58022, 58015, 58041, 58000, 58035, 58009, 58021, 58033, 58034);
INSERT INTO `creature_addon` (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES
(58022, 0, 1, 1, 16, 0, 0, NULL),
(58015, 0, 1, 1, 16, 0, 0, NULL),
(58041, 0, 1, 1, 16, 0, 0, NULL),
(58000, 0, 1, 1, 16, 0, 0, NULL),
(58035, 0, 1, 1, 16, 0, 0, NULL),
(58021, 0, 1, 1, 16, 0, 0, NULL),
(58009, 0, 1, 1, 16, 0, 0, NULL),
(58033, 0, 1, 1, 16, 0, 0, NULL),
(58034, 0, 1, 1, 16, 0, 0, NULL);

-- Added support for event in Blackrock Spire of Scarshield Infiltrator morphing into Vaelan
-- Source: http://www.youtube.com/watch?v=VVxOPiDVwNQ

-- Adjusted Scarshield Infiltrator position
UPDATE `creature` SET `position_x` = 56.797, `position_y` = -400.285, `position_z` = 64.348, `orientation` = 3.169 WHERE `guid` = 42798;

-- Made Scarshiel Infiltrator kneel at spawn
DELETE FROM `creature_template_addon` WHERE `entry` = 10299;
INSERT INTO `creature_template_addon` (`entry`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES
(10299, 0, 8, 1, 16, 0, 0, NULL);

SET @CONDITION := 63;

-- Added condition for player having item 12219 (Unadorned Seal of Ascension) in his/her inventory
DELETE FROM `conditions` WHERE `condition_entry` = @CONDITION;
INSERT INTO `conditions` VALUES
(@CONDITION, 2, 12219, 1);

-- Made Vaelan stand at spawn
DELETE FROM `creature_template_addon` WHERE `entry` = 10296;
INSERT INTO `creature_template_addon` (`entry`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES
(10296, 0, 0, 1, 16, 0, 0, NULL);

-- Added gossip menu to creature 10296 (Vaelan)
-- Note that:
-- gossip ID are placeholders as correct Vaelan gossip ID is unknown
-- option text are acceptable guess works though they fit into the dialogue with Vaelan
DELETE FROM `gossip_menu` WHERE `entry` BETWEEN 15014 AND 15023;
INSERT INTO `gossip_menu` VALUES
(15014, 3301, 0, 0),
(15014, 3311, 0, @CONDITION),
(15015, 3302, 0, 0),
(15016, 3303, 0, 0),
(15017, 3304, 0, 0),
(15018, 3305, 0, 0),
(15019, 3306, 0, 0),
(15020, 3307, 0, 0),
(15021, 3308, 0, 0),
(15022, 3309, 0, 0),
(15023, 3310, 0, 0);
DELETE FROM `gossip_menu_option` WHERE `menu_id` BETWEEN 15014 AND 15022;
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `box_coded`, `box_money`, `box_text`, `condition_id`) VALUES
(15014, 0, 0, 'Do you mean you are a dragon?', 1, 1, 15015, 0, 0, 0, 0, NULL, 0),
(15015, 0, 0, 'Yes, please.', 1, 1, 15016, 0, 0, 0, 0, NULL, 0),
(15016, 0, 0, 'Tell me.', 1, 1, 15017, 0, 0, 0, 0, NULL, 0),
(15017, 0, 0, 'But Deathwing is gone now.', 1, 1, 15018, 0, 0, 0, 0, NULL, 0),
(15018, 0, 0, 'Continue.', 1, 1, 15019, 0, 0, 0, 0, NULL, 0),
(15019, 0, 0, 'Why don\'t you do it?', 1, 1, 15020, 0, 0, 0, 0, NULL, 0),
(15020, 0, 0, 'Unless?', 1, 1, 15021, 0, 0, 0, 0, NULL, 0),
(15021, 0, 0, 'What must I do?', 1, 1, 15022, 0, 0, 0, 0, NULL, 0),
(15022, 0, 0, 'Continue.', 1, 1, 15023, 0, 0, 0, 0, NULL, 0);

-- Updated creature 10296 (Vaelan) to display gossip and stand idle (no random movement)
UPDATE `creature_template` SET `gossip_menu_id` = 15014, `npcflag` = 3, `MovementType` = 0 WHERE `entry` = 10296;

UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 10 WHERE `item` = 12219;

-- Fixed factions of creatures in Blackrock Spire
-- Many of them were wrong and obviously manually updated
-- Data backported from UDB
UPDATE `creature_template` SET `faction_A` = 40, `faction_H` = 40 WHERE `entry` = 9045;
UPDATE `creature_template` SET `faction_A` = 40, `faction_H` = 40 WHERE `entry` = 9096;
UPDATE `creature_template` SET `faction_A` = 40, `faction_H` = 40 WHERE `entry` = 9097;
UPDATE `creature_template` SET `faction_A` = 40, `faction_H` = 40 WHERE `entry` = 9098;
UPDATE `creature_template` SET `faction_A` = 40, `faction_H` = 40 WHERE `entry` = 9196;
UPDATE `creature_template` SET `faction_A` = 40, `faction_H` = 40 WHERE `entry` = 9197;
UPDATE `creature_template` SET `faction_A` = 40, `faction_H` = 40 WHERE `entry` = 9198;
UPDATE `creature_template` SET `faction_A` = 40, `faction_H` = 40 WHERE `entry` = 9199;
UPDATE `creature_template` SET `faction_A` = 40, `faction_H` = 40 WHERE `entry` = 9200;
UPDATE `creature_template` SET `faction_A` = 40, `faction_H` = 40 WHERE `entry` = 9201;
UPDATE `creature_template` SET `faction_A` = 40, `faction_H` = 40 WHERE `entry` = 9216;
UPDATE `creature_template` SET `faction_A` = 40, `faction_H` = 40 WHERE `entry` = 9217;
UPDATE `creature_template` SET `faction_A` = 14, `faction_H` = 14 WHERE `entry` = 9218;
UPDATE `creature_template` SET `faction_A` = 40, `faction_H` = 40 WHERE `entry` = 9219;
UPDATE `creature_template` SET `faction_A` = 40, `faction_H` = 40 WHERE `entry` = 9236;
UPDATE `creature_template` SET `faction_A` = 40, `faction_H` = 40 WHERE `entry` = 9237;
UPDATE `creature_template` SET `faction_A` = 40, `faction_H` = 40 WHERE `entry` = 9239;
UPDATE `creature_template` SET `faction_A` = 40, `faction_H` = 40 WHERE `entry` = 9240;
UPDATE `creature_template` SET `faction_A` = 40, `faction_H` = 40 WHERE `entry` = 9241;
UPDATE `creature_template` SET `faction_A` = 40, `faction_H` = 40 WHERE `entry` = 9257;
UPDATE `creature_template` SET `faction_A` = 40, `faction_H` = 40 WHERE `entry` = 9258;
UPDATE `creature_template` SET `faction_A` = 40, `faction_H` = 40 WHERE `entry` = 9259;
UPDATE `creature_template` SET `faction_A` = 40, `faction_H` = 40 WHERE `entry` = 9260;
UPDATE `creature_template` SET `faction_A` = 40, `faction_H` = 40 WHERE `entry` = 9261;
UPDATE `creature_template` SET `faction_A` = 40, `faction_H` = 40 WHERE `entry` = 9262;
UPDATE `creature_template` SET `faction_A` = 40, `faction_H` = 40 WHERE `entry` = 9263;
UPDATE `creature_template` SET `faction_A` = 40, `faction_H` = 40 WHERE `entry` = 9264;
UPDATE `creature_template` SET `faction_A` = 40, `faction_H` = 40 WHERE `entry` = 9265;
UPDATE `creature_template` SET `faction_A` = 40, `faction_H` = 40 WHERE `entry` = 9266;
UPDATE `creature_template` SET `faction_A` = 40, `faction_H` = 40 WHERE `entry` = 9267;
UPDATE `creature_template` SET `faction_A` = 40, `faction_H` = 40 WHERE `entry` = 9268;
UPDATE `creature_template` SET `faction_A` = 40, `faction_H` = 40 WHERE `entry` = 9269;
UPDATE `creature_template` SET `faction_A` = 40, `faction_H` = 40 WHERE `entry` = 9416;
UPDATE `creature_template` SET `faction_A` = 40, `faction_H` = 40 WHERE `entry` = 9568;
UPDATE `creature_template` SET `faction_A` = 40, `faction_H` = 40 WHERE `entry` = 9583;
UPDATE `creature_template` SET `faction_A` = 14, `faction_H` = 14 WHERE `entry` = 9596;
UPDATE `creature_template` SET `faction_A` = 40, `faction_H` = 40 WHERE `entry` = 9692;
UPDATE `creature_template` SET `faction_A` = 40, `faction_H` = 40 WHERE `entry` = 9693;
UPDATE `creature_template` SET `faction_A` = 40, `faction_H` = 40 WHERE `entry` = 9696;
UPDATE `creature_template` SET `faction_A` = 90, `faction_H` = 90 WHERE `entry` = 9708;
UPDATE `creature_template` SET `faction_A` = 40, `faction_H` = 40 WHERE `entry` = 9716;
UPDATE `creature_template` SET `faction_A` = 40, `faction_H` = 40 WHERE `entry` = 9717;
UPDATE `creature_template` SET `faction_A` = 40, `faction_H` = 40 WHERE `entry` = 9736;
UPDATE `creature_template` SET `faction_A` = 40, `faction_H` = 40 WHERE `entry` = 9816;
UPDATE `creature_template` SET `faction_A` = 40, `faction_H` = 40 WHERE `entry` = 9817;
UPDATE `creature_template` SET `faction_A` = 40, `faction_H` = 40 WHERE `entry` = 9818;
UPDATE `creature_template` SET `faction_A` = 40, `faction_H` = 40 WHERE `entry` = 9819;
UPDATE `creature_template` SET `faction_A` = 40, `faction_H` = 40 WHERE `entry` = 10083;
UPDATE `creature_template` SET `faction_A` = 40, `faction_H` = 40 WHERE `entry` = 10220;
UPDATE `creature_template` SET `faction_A` = 40, `faction_H` = 40 WHERE `entry` = 10221;
UPDATE `creature_template` SET `faction_A` = 35, `faction_H` = 35 WHERE `entry` = 10257;
UPDATE `creature_template` SET `faction_A` = 90, `faction_H` = 90 WHERE `entry` = 10261;
UPDATE `creature_template` SET `faction_A` = 14, `faction_H` = 14 WHERE `entry` = 10263;
UPDATE `creature_template` SET `faction_A` = 1080, `faction_H` = 1080 WHERE `entry` = 10296;
UPDATE `creature_template` SET `faction_A` = 40, `faction_H` = 40 WHERE `entry` = 10299;
UPDATE `creature_template` SET `faction_A` = 40, `faction_H` = 40 WHERE `entry` = 10316;
UPDATE `creature_template` SET `faction_A` = 40, `faction_H` = 40 WHERE `entry` = 10317;
UPDATE `creature_template` SET `faction_A` = 40, `faction_H` = 40 WHERE `entry` = 10318;
UPDATE `creature_template` SET `faction_A` = 40, `faction_H` = 40 WHERE `entry` = 10319;
UPDATE `creature_template` SET `faction_A` = 40, `faction_H` = 40 WHERE `entry` = 10363;
UPDATE `creature_template` SET `faction_A` = 40, `faction_H` = 40 WHERE `entry` = 10366;
UPDATE `creature_template` SET `faction_A` = 40, `faction_H` = 40 WHERE `entry` = 10371;
UPDATE `creature_template` SET `faction_A` = 40, `faction_H` = 40 WHERE `entry` = 10372;
UPDATE `creature_template` SET `faction_A` = 16, `faction_H` = 16 WHERE `entry` = 10374;
UPDATE `creature_template` SET `faction_A` = 16, `faction_H` = 16 WHERE `entry` = 10375;
UPDATE `creature_template` SET `faction_A` = 14, `faction_H` = 14 WHERE `entry` = 10376;
UPDATE `creature_template` SET `faction_A` = 14, `faction_H` = 14 WHERE `entry` = 10430;
UPDATE `creature_template` SET `faction_A` = 40, `faction_H` = 40 WHERE `entry` = 10442;
UPDATE `creature_template` SET `faction_A` = 40, `faction_H` = 40 WHERE `entry` = 10447;
UPDATE `creature_template` SET `faction_A` = 16, `faction_H` = 16 WHERE `entry` = 10596;
UPDATE `creature_template` SET `faction_A` = 45, `faction_H` = 45 WHERE `entry` = 10602;
UPDATE `creature_template` SET `faction_A` = 40, `faction_H` = 40 WHERE `entry` = 10680;
UPDATE `creature_template` SET `faction_A` = 40, `faction_H` = 40 WHERE `entry` = 10681;
UPDATE `creature_template` SET `faction_A` = 35, `faction_H` = 35 WHERE `entry` = 10740;
UPDATE `creature_template` SET `faction_A` = 40, `faction_H` = 40 WHERE `entry` = 10742;
UPDATE `creature_template` SET `faction_A` = 16, `faction_H` = 16 WHERE `entry` = 10762;
UPDATE `creature_template` SET `faction_A` = 40, `faction_H` = 40 WHERE `entry` = 10814;
UPDATE `creature_template` SET `faction_A` = 40, `faction_H` = 40 WHERE `entry` = 10899;
UPDATE `creature_template` SET `faction_A` = 35, `faction_H` = 35 WHERE `entry` = 15560;
UPDATE `creature_template` SET `faction_A` = 114, `faction_H` = 114 WHERE `entry` = 16044;
UPDATE `creature_template` SET `faction_A` = 114, `faction_H` = 114 WHERE `entry` = 16048;

-- Fixed missing female version of Bloodaxe Legion creatures in Blackrock Spire
-- Correct model data taken from UDB

-- Marked as female the alternate modelid_1 and fixed models boxing
UPDATE `creature_model_info` SET `gender` = 1, `bounding_radius` = 0.4464, `combat_reach` = 1.8 WHERE `modelid` IN (9634, 9603, 9626, 9619, 9614);
UPDATE `creature_model_info` SET `bounding_radius` = 0.4464, `combat_reach` = 1.8 WHERE `modelid` IN (9633, 9602, 9625, 9617, 9613);

-- Added missing modelid_2 for Bloodaxe Legion creatures
UPDATE `creature_template` SET `modelid_2` = 9881 WHERE `entry` = 9583;
UPDATE `creature_template` SET `modelid_2` = 9875 WHERE `entry` = 9692;
UPDATE `creature_template` SET `modelid_2` = 9873 WHERE `entry` = 9693;
UPDATE `creature_template` SET `modelid_2` = 0 WHERE `entry` = 9696;
UPDATE `creature_template` SET `modelid_2` = 9883 WHERE `entry` = 9716;
UPDATE `creature_template` SET `modelid_2` = 9879 WHERE `entry` = 9717;

-- Reset model for spawned creatures to prevent them for always using the same instead of their alternate (and female) version
UPDATE `creature` SET `modelid` = 0 WHERE `id` IN (9583, 9692, 9693, 9696, 9716, 9717);

-- Marked as male the modelid_2 and fixed boxing
UPDATE `creature_model_info` SET `bounding_radius` = 0.4464, `combat_reach` = 1.8, `gender` = 0 WHERE `modelid` IN (9881, 9875, 9873, 9883, 9879);
-- Marked as female the alternate modelid_2 and fixed boxing
UPDATE `creature_model_info` SET `bounding_radius` = 0.4464, `combat_reach` = 1.8, `gender` = 1 WHERE `modelid` IN (9882, 9876, 9874, 9886, 9880);

-- Fixed missing female version of Blackhand Legion creatures in Blackrock Spire
-- Correct model data taken from UDB

-- Marked the modelid_1 as male/female
UPDATE `creature_model_info` SET `gender` = 0 WHERE `modelid` IN (9670, 9849, 9686, 9690, 9734, 9691, 9696, 9670, 9686, 10176, 10172);
UPDATE `creature_model_info` SET `gender` = 1 WHERE `modelid` IN (9671, 9850, 9687, 9692, 9735, 9887, 9697, 9671, 9687, 10177, 10173);

-- Fixed boxing for creature 10742 (Blackhand Dragon Handler)
UPDATE `creature_model_info` SET `bounding_radius` = 0.4836, `combat_reach` = 1.95 WHERE `modelid` = 10176;
-- Fixed boxing for creature 9818 (Blackhand Summoner)
UPDATE `creature_model_info` SET `bounding_radius` = 0.4464, `combat_reach` = 1.8 WHERE `modelid` = 9849;

-- Fixed alternate modelid_1 boxing
UPDATE `creature_model_info` SET `bounding_radius` = 0.4836, `combat_reach` = 1.95 WHERE `modelid` IN (9887, 9697, 9735, 10173, 10177);
UPDATE `creature_model_info` SET `bounding_radius` = 0.4464, `combat_reach` = 1.8 WHERE `modelid` IN (9671, 9687, 9692, 9850);

-- Added missing modelid_2 for Blackhand Legion creatures
UPDATE `creature_template` SET `modelid_2` = 9672 WHERE `entry` = 9817;
UPDATE `creature_template` SET `modelid_2` = 9851 WHERE `entry` = 9818;
UPDATE `creature_template` SET `modelid_2` = 9896 WHERE `entry` = 9819;
UPDATE `creature_template` SET `modelid_2` = 9892 WHERE `entry` = 10316;
UPDATE `creature_template` SET `modelid_2` = 9890 WHERE `entry` = 10317;
UPDATE `creature_template` SET `modelid_2` = 0 WHERE `entry` = 10318;
UPDATE `creature_template` SET `modelid_2` = 9894 WHERE `entry` = 10319;
UPDATE `creature_template` SET `modelid_2` = 9672 WHERE `entry` = 10680;
UPDATE `creature_template` SET `modelid_2` = 9896 WHERE `entry` = 10681;
UPDATE `creature_template` SET `modelid_2` = 10178 WHERE `entry` = 10742;
UPDATE `creature_template` SET `modelid_2` = 10175 WHERE `entry` = 10172;

-- Reset model for spawned creatures to prevent them for always using the same instead of their alternate (and female) version
UPDATE `creature` SET `modelid` = 0 WHERE `id` IN (9817, 9818, 9819, 10316, 10317, 10318, 10319, 10680, 10681, 10742, 10762);

-- Marked the modelid_2 as male/female
UPDATE `creature_model_info` SET `gender` = 0 WHERE `modelid` IN (9672, 9851, 9896, 9892, 9890, 9894, 9672, 9896, 10178, 10174);
UPDATE `creature_model_info` SET `gender` = 1 WHERE `modelid` IN (9673, 9852, 9897, 9893, 9891, 9895, 9673, 9897, 10179, 10175);

-- Fixed modelid_2 boxing
UPDATE `creature_model_info` SET `bounding_radius` = 0.4836, `combat_reach` = 1.95 WHERE `modelid` IN (9894, 9890, 10174, 10178);
UPDATE `creature_model_info` SET `bounding_radius` = 0.4464, `combat_reach` = 1.8 WHERE `modelid` IN (9672, 9896, 9892, 9851);

-- Fixed alternate modelid_2 boxing
UPDATE `creature_model_info` SET `bounding_radius` = 0.4836, `combat_reach` = 1.95 WHERE `modelid` IN (9895, 9891, 10175, 10179);
UPDATE `creature_model_info` SET `bounding_radius` = 0.4464, `combat_reach` = 1.8 WHERE `modelid` IN (9673, 9897, 9893, 9852);

-- Fixed missing female version of Firebrand Legion creatures in Blackrock Spire
-- Correct model data taken from UDB

-- Marked the modelid_1 as male/female
UPDATE `creature_model_info` SET `gender` = 0 WHERE `modelid` IN (9664, 9660, 9644, 9648, 9652, 9656);
UPDATE `creature_model_info` SET `gender` = 1 WHERE `modelid` IN (9665, 9661, 9645, 9649, 9653, 9657);

-- Fixed alternate modelid_1 & normal modelid_1 boxing
UPDATE `creature_model_info` SET `bounding_radius` = 0.4464, `combat_reach` = 1.8 WHERE `modelid` IN (9664, 9660, 9644, 9648, 9652, 9656, 9665, 9661, 9645, 9649, 9653, 9657);

-- Added missing modelid_2 for Firebrand Legion creatures
UPDATE `creature_template` SET `modelid_2` = 9871 WHERE `entry` = 9259;
UPDATE `creature_template` SET `modelid_2` = 9884 WHERE `entry` = 9260;
UPDATE `creature_template` SET `modelid_2` = 9867 WHERE `entry` = 9261;
UPDATE `creature_template` SET `modelid_2` = 9877 WHERE `entry` = 9262;
UPDATE `creature_template` SET `modelid_2` = 9869 WHERE `entry` = 9263;
UPDATE `creature_template` SET `modelid_2` = 9888 WHERE `entry` = 9264;

-- Reset model for spawned creatures to prevent them for always using the same instead of their alternate (and female) version
UPDATE `creature` SET `modelid` = 0 WHERE `id` IN (9259, 9260, 9261, 9262, 9263, 9264);

-- Marked the modelid_2 as male/female
UPDATE `creature_model_info` SET `gender` = 0 WHERE `modelid` IN (9871, 9884, 9867, 9877, 9869, 9888);
UPDATE `creature_model_info` SET `gender` = 1 WHERE `modelid` IN (9872, 9885, 9868, 9878, 9870, 9889);

-- Fixed alternate modelid_2 & normal modelid_2 boxing
UPDATE `creature_model_info` SET `bounding_radius` = 0.4464, `combat_reach` = 1.8 WHERE `modelid` IN (9871, 9884, 9867, 9877, 9869, 9888, 9872, 9885, 9868, 9878, 9870, 9889);

-- startup fix
UPDATE `creature`SET `spawndist` = 0 WHERE `guid` = 58015;
UPDATE `creature`SET `spawndist` = 0 WHERE `guid` = 58034;


-- Added missing spawns for creatures in Blackrock Spire - upper part
-- Thanks to Schmoozerd and UDB team for providing the data
-- Small adjustements in Furnace done on the basis of the following sources:
-- http://www.youtube.com/watch?v=TBIW6H049O4
-- http://www.youtube.com/watch?v=asKYQoMPbks

-- Starting value for adding guid
SET @GUID := 160107;

-- Removed some creatures 9096 (Rage Talon Dragonspawn) used as placeholders in Blackrock Spire
DELETE FROM `creature` WHERE `guid` IN (40500, 40503); -- The Rookery
DELETE FROM `creature` WHERE `guid` IN (40495, 40496, 40497); -- Hall of Blackhand
-- Added missing creature 9096 (Rage Talon Dragonspawn) in Blackrock Spire
DELETE FROM `creature` WHERE `guid` BETWEEN @GUID + 1 AND @GUID + 21;
INSERT INTO `creature` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `MovementType`) VALUES
(@GUID + 1, 9096, 229, 102.492, -284.08, 106.436, 4.725485, 10800, 0, 0),
(@GUID + 2, 9096, 229, 100.7426, -246.0053, 106.5189, 2.6529, 10800, 0, 0), -- Movementtype = 2 GUID 137106
(@GUID + 3, 9096, 229, 94.51865, -256.7027, 91.53693, 6.265732, 10800, 5, 1),
(@GUID + 4, 9096, 229, 101.678, -237.6665, 106.5189, 3.543018, 10800, 0, 0),
(@GUID + 5, 9096, 229, 96.17891, -268.5404, 91.53113, 1.37881, 10800, 5, 1),
(@GUID + 6, 9096, 229, 137.036, -318.309, 70.9563, 5.080409, 10800, 5, 1),
(@GUID + 7, 9096, 229, 150.6437, -315.3913, 70.95632, 5.666023, 10800, 5, 1), -- Movementtype = 2 GUID 137105
(@GUID + 8, 9096, 229, 195.7419, -314.7504, 76.88738, 3.929739, 10800, 5, 1),
(@GUID + 9, 9096, 229, 197.9655, -292.8118, 76.93224, 0.638528, 10800, 5, 1),
(@GUID + 10, 9096, 229, 136.2818, -308.6823, 111.0732, 0.2792527, 10800, 0, 0), -- Movementtype = 2 GUID 137109
(@GUID + 11, 9096, 229, 165.5209, -394.9214, 122.0586, 4.677482, 10800, 0, 0),
(@GUID + 12, 9096, 229, 167.774, -338.6554, 111.0341, 2.792527, 10800, 0, 0),
(@GUID + 13, 9096, 229, 157.819, -330.4721, 70.95632, 3.125505, 10800, 5, 1),
(@GUID + 14, 9096, 229, 138.3156, -395.0861, 122.0586, 4.764749, 10800, 0, 0),
(@GUID + 15, 9096, 229, 128.0204, -315.29, 111.0291, 2.984513, 10800, 0, 0),
(@GUID + 16, 9096, 229, 136.0372, -338.2075, 111.0436, 0.6457718, 10800, 0, 0),
(@GUID + 17, 9096, 229, 151.483, -266.668, 110.941, 1.569194, 10800, 0, 0),
(@GUID + 18, 9096, 229, 96.49685, -428.0061, 110.9230, 3.170282, 10800, 0, 0),
(@GUID + 19, 9096, 229, 97.91753, -333.6807, 106.5189, 1.937315, 10800, 0, 0),
(@GUID + 20, 9096, 229, 164.673, -366.137, 116.844, 0.0181202, 10800, 0, 0), -- patrol stairs to stadium
(@GUID + 21, 9096, 229, 103.0981, -364.3394, 116.9257, 5.864306, 10800, 0, 0);
UPDATE `creature` SET `curhealth` = 14250 WHERE `id` = 9096 AND `curhealth` = 1;

-- Removed some creatures 9817 (Blackhand Dreadweaver) used as placeholders in Blackrock Spire
DELETE FROM `creature` WHERE `guid` IN (40461); -- Hall of Blackhand
-- Added missing creature 9817 (Blackhand Dreadweaver) in Blackrock Spire
DELETE FROM `creature` WHERE `guid` BETWEEN @GUID + 22 AND @GUID + 41;
INSERT INTO `creature` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `MovementType`) VALUES
(@GUID + 22, 9817, 229, 156.734, -340.574, 110.949, 5.090967, 10800, 0, 0),
(@GUID + 23, 9817, 229, 163.5033, -247.5138, 111.0259, 2.094395, 120, 0, 0),
(@GUID + 24, 9817, 229, 234.3241, -306.7642, 77.06055, 2.443461, 10800, 0, 0),
(@GUID + 25, 9817, 229, 232.8397, -297.4911, 77.05457, 4.08407, 10800, 0, 0),
(@GUID + 26, 9817, 229, 154.4286, -289.456, 71.02977, 6.178465, 10800, 0, 0),
(@GUID + 27, 9817, 229, 159.0432, -288.5959, 71.03185, 3.647738, 10800, 0, 0),
(@GUID + 28, 9817, 229, 125.0334, -346.3581, 71.04615, 1.605703, 10800, 0, 0),
(@GUID + 29, 9817, 229, 124.8717, -334.5226, 71.04309, 4.694936, 10800, 0, 0),
(@GUID + 30, 9817, 229, 159.0061, -347.0225, 71.01292, 0.8028514, 10800, 0, 0),
(@GUID + 31, 9817, 229, 190.6331, -263.9589, 77.03324, 0.9599311, 10800, 0, 0),
(@GUID + 32, 9817, 229, 128.3215, -295.0452, 71.06125, 3.874631, 10800, 0, 0),
(@GUID + 33, 9817, 229, 120.1661, -295.0486, 71.06183, 5.497787, 10800, 0, 0),
(@GUID + 34, 9817, 229, 215.5195, -337.7329, 76.95243, 3.106686, 10800, 0, 0),
(@GUID + 35, 9817, 229, 223.1600, -257.4265, 82.30175, 4.680404, 10800, 0, 0),
(@GUID + 36, 9817, 229, 228.4100, -257.5811, 82.12907, 4.680535, 10800, 0, 0),
(@GUID + 37, 9817, 229, 90.02657, -367.4056, 117.5185, 2.513274, 10800, 0, 0),
(@GUID + 38, 9817, 229, 172.8786, -365.4455, 116.9258, 2.844887, 10800, 0, 0),
(@GUID + 39, 9817, 229, 85.73412, -373.6244, 116.9257, 0.6806784, 10800, 0, 0),
(@GUID + 40, 9817, 229, 92.40339, -419.8844, 110.9227, 2.609511, 10800, 0, 0),
(@GUID + 41, 9817, 229, 178.1133, -364.0896, 116.9258, 4.956735, 10800, 0, 0);
UPDATE `creature` SET `curhealth` = 7018, `curmana` = 2369 WHERE `id` = 9817 AND `curhealth` = 1;

-- Removed some creatures 9818 (Blackhand Summoner) used as placeholders in Blackrock Spire
DELETE FROM `creature` WHERE `guid` IN (40253, 40260, 40261, 40262); -- Dragonspire Hall
DELETE FROM `creature` WHERE `guid` IN (40462); -- Hall of Blackhand
-- Added missing creature 9818 (Blackhand Summoner) in Blackrock Spire
DELETE FROM `creature` WHERE `guid` BETWEEN @GUID + 42 AND @GUID + 56;
INSERT INTO `creature` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `MovementType`) VALUES
(@GUID + 42, 9818, 229, 159.2686, -245.6127, 111.0261, 6.230825, 10800, 0, 0),
(@GUID + 43, 9818, 229, 223.7043, -297.4843, 77.05145, 5.462881, 10800, 0, 0),
(@GUID + 44, 9818, 229, 224.405, -307.493, 77.05062, 0.7853982, 10800, 0, 0),
(@GUID + 45, 9818, 229, 156.8146, -283.3402, 71.03544, 1.989675, 10800, 0, 0),
(@GUID + 46, 9818, 229, 119.0283, -340.4413, 71.04595, 0.03490658, 10800, 0, 0),
(@GUID + 47, 9818, 229, 130.4315, -340.0683, 71.04311, 3.176499, 10800, 0, 0),
(@GUID + 48, 9818, 229, 188.856, -258.8772, 77.03584, 6.073746, 10800, 0, 0),
(@GUID + 49, 9818, 229, 121.7191, -301.5765, 71.05598, 0.7504916, 10800, 0, 0),
(@GUID + 50, 9818, 229, 151.1029, -358.37, 71.02174, 1.204277, 10800, 0, 0),
(@GUID + 51, 9818, 229, 212.1373, -339.7923, 76.98627, 1.151917, 10800, 0, 0),
(@GUID + 52, 9818, 229, 225.9884, -257.4800, 82.11469, 4.679579, 10800, 0, 0),
(@GUID + 53, 9818, 229, 85.63914, -366.9501, 116.9257, 0.8028514, 10800, 0, 0),
(@GUID + 54, 9818, 229, 169.9159, -367.1415, 116.9258, 1.134464, 10800, 0, 0),
(@GUID + 55, 9818, 229, 89.04749, -420.6036, 110.9223, 0.948393, 10800, 0, 0),
(@GUID + 56, 9818, 229, 179.9948, -365.8944, 116.9258, 3.193953, 10800, 0, 0);
UPDATE `creature` SET `curhealth` = 7009, `curmana` = 2369 WHERE `id` = 9818 AND `curhealth` = 1;
-- Updated position of some creatures 9818 (Blackhand Summoner)
UPDATE `creature` SET `position_x` = 222.6662, `position_y` = -334.5855, `orientation` = 3.071779 WHERE `guid` = 40263; -- Dragonspire Hall

-- Removed some creatures 9819 (Blackhand Veteran) used as placeholders in Blackrock Spire
DELETE FROM `creature` WHERE `guid` IN (40251, 40252, 40259, 40258, 40256, 40257, 40255, 40254, 40264, 40265, 40267, 40266, 40268, 40269, 40270, 40271); -- Dragonspire Hall
DELETE FROM `creature` WHERE `guid` IN (40460, 40469, 40470, 40468, 40466, 40481, 40471, 40482, 40467, 40488, 40487, 40489, 40490, 40486, 40485, 40483, 40484, 40459); -- Hall of Blackhand
DELETE FROM `creature` WHERE `guid` IN (40514, 40603, 40602, 40601, 41814, 40509, 40508, 40510, 40506, 40505, 40507, 41674, 41775, 41779); -- Blackrock Stadium
-- Added missing creature 9819 (Blackhand Veteran) in Blackrock Spire
DELETE FROM `creature` WHERE `guid` BETWEEN @GUID + 57 AND @GUID + 86;
INSERT INTO `creature` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `MovementType`) VALUES
(@GUID + 57, 9819, 229, 168.4311, -288.5739, 111.0254, 2.9147, 10800, 0, 0),
(@GUID + 58, 9819, 229, 168.5296, -282.2072, 111.0254, 3.385939, 10800, 0, 0),
(@GUID + 59, 9819, 229, 168.4671, -285.3575, 111.0254, 3.159046, 10800, 0, 0),
(@GUID + 60, 9819, 229, 162.6301, -243.0735, 111.0344, 4.328416, 10800, 0, 0),
(@GUID + 61, 9819, 229, 142.8618, -272.0843, 111.0268, 6.213372, 10800, 0, 0),
(@GUID + 62, 9819, 229, 142.9729, -277.8913, 111.0271, 0.1396263, 10800, 0, 0),
(@GUID + 63, 9819, 229, 142.9025, -275.0304, 111.027, 0.03490658, 10800, 0, 0),
(@GUID + 64, 9819, 229, 156.7554, -271.7094, 110.9435, 4.770749, 10800, 0, 0),
-- (@GUID + 65, 9819, 229, 106.9291, -367.2758, 116.9257, 2.303835, 10800, 0, 0),
(@GUID + 66, 9819, 229, 157.2487, -291.7521, 71.0334, 1.692969, 10800, 0, 0),
(@GUID + 68, 9819, 229, 157.8796, -359.2906, 71.02557, 1.53589, 10800, 0, 0),
(@GUID + 69, 9819, 229, 194.6152, -255.9485, 77.01945, 4.310963, 10800, 0, 0),
(@GUID + 70, 9819, 229, 195.222, -271.9126, 77.03062, 3.787364, 10800, 0, 0),
(@GUID + 71, 9819, 229, 191.3293, -272.0098, 77.03062, 5.61996, 10800, 0, 0),
(@GUID + 72, 9819, 229, 122.0519, -293.1574, 71.06183, 5.497787, 10800, 0, 0),
(@GUID + 73, 9819, 229, 150.5144, -354.0578, 71.0197, 5.218534, 10800, 0, 0),
(@GUID + 75, 9819, 229, 141.7095, -299.4828, 111.0321, 0.03490658, 10800, 0, 0),
(@GUID + 76, 9819, 229, 141.7628, -302.2434, 111.0316, 0.122173, 10800, 0, 0),
(@GUID + 78, 9819, 229, 170.606, -362.3532, 116.9241, 4.869469, 10800, 0, 0),
(@GUID + 79, 9819, 229, 177.8305, -367.561, 116.9258, 1.151917, 10800, 0, 0),
(@GUID + 80, 9819, 229, 141.7921, -296.8099, 111.0314, 6.230825, 10800, 0, 0),
(@GUID + 81, 9819, 229, 161.5384, -320.8773, 111.0252, 3.124139, 10800, 0, 0),
(@GUID + 82, 9819, 229, 161.4713, -314.9981, 111.0225, 3.193953, 10800, 0, 0),
(@GUID + 83, 9819, 229, 161.4485, -317.8856, 111.0226, 3.176499, 10800, 0, 0),
(@GUID + 84, 9819, 229, 149.2005, -252.0454, 110.9076, 1.204277, 10800, 0, 0),
(@GUID + 85, 9819, 229, 91.74207, -416.0454 , 110.9227, 4.096267, 10800, 0, 0),
(@GUID + 86, 9819, 229, 149.2485, -249.0366, 110.9079, 4.869469, 10800, 0, 0);
UPDATE `creature` SET `curhealth` = 8807 WHERE `id` = 9819 AND `curhealth` = 1;

-- Added missing creature 10083 (Rage Talon Flamescale) in Blackrock Spire
DELETE FROM `creature` WHERE `guid` BETWEEN @GUID + 87 AND @GUID + 95;
INSERT INTO `creature` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `MovementType`) VALUES
(@GUID + 87, 10083, 229, 161.3142, -393.6487, 122.0585, 4.869469, 10800, 0, 0),
(@GUID + 88, 10083, 229, 161.3396, -343.4354, 111.0393, 1.850049, 10800, 0, 0),
(@GUID + 89, 10083, 229, 142.5931, -342.274, 111.0407, 1.396263, 10800, 0, 0),
(@GUID + 90, 10083, 229, 141.6982, -394.8291, 122.0586, 4.869469, 10800, 0, 0),
(@GUID + 91, 10083, 229, 136.424, -316.1892, 111.0637, 0.01745329, 10800, 0, 0),
(@GUID + 92, 10083, 229, 128.2937, -309.3793, 111.0322, 3.351032, 10800, 0, 0),
(@GUID + 93, 10083, 229, 82.90606, -282.6959, 91.90397, 0.9113182, 10800, 0, 0),
(@GUID + 94, 10083, 229, 77.61088, -316.8818, 91.4465, 5.772816, 10800, 0, 0),
(@GUID + 95, 10083, 229, 102.8018, -332.1205, 106.5189, 2.216568, 10800, 0, 0);
UPDATE `creature` SET `curhealth` = 6737, `curmana` = 7860 WHERE `id` = 10083 AND `curhealth` = 1;

-- Removed creature 10264 (Solakar Flamewreath) used as placeholder in Blackrock Spire
DELETE FROM `creature` WHERE `id` = 10264; -- The Rookery


-- Removed some creatures 10317 (Blackhand Elite) used as placeholders in Blackrock Spire
DELETE FROM `creature` WHERE `guid` IN (42639, 42638); -- Hordemar City
DELETE FROM `creature` WHERE `guid` IN (42187, 42567, 42568); -- The Furnace
-- Added missing creature 10317 (Blackhand Elite) in Blackrock Spire
DELETE FROM `creature` WHERE `guid` BETWEEN @GUID + 96 AND @GUID + 109;
INSERT INTO `creature` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `MovementType`) VALUES
(@GUID + 96, 10317, 229, 164.4339, -285.2661, 111.0259, 0, 10800, 0, 0),
(@GUID + 97, 10317, 229, -9.265498, -265.8029, 111.0268, 5.67232, 10800, 0, 0),
(@GUID + 98, 10317, 229, 30.4171, -332.9069, 111.0268, 4.764749, 10800, 0, 0),
(@GUID + 99, 10317, 229, 37.33317, -333.7789, 111.0268, 4.660029, 10800, 0, 0),
(@GUID + 100, 10317, 229, 24.43517, -268.222, 111.0268, 2.830616, 10800, 0, 0), -- patrol spire throne
(@GUID + 101, 10317, 229, 16.4384, -269.5063, 111.0268, 0.9215531, 10800, 0, 0), -- patrol spire throne
(@GUID + 102, 10317, 229, -13.77616, -274.9259, 111.0268, 5.899213, 10800, 0, 0),
(@GUID + 103, 10317, 229, 146.2753, -275.0636, 111.0268, 3.106686, 10800, 0, 0),
(@GUID + 104, 10317, 229, 158.3353, -317.9063, 110.7346, 0.03490658, 10800, 0, 0),
(@GUID + 105, 10317, 229, 144.6011, -299.4391, 110.7352, 3.089233, 10800, 0, 0),
(@GUID + 106, 10317, 229, 97.5200, -480.1342, 116.8424, 5.562609, 10800, 0, 0),
(@GUID + 107, 10317, 229, 38.3995, -449.6728, 110.948, 0.364839, 10800, 0, 0),
(@GUID + 108, 10317, 229, 34.6060, -492.8468, 110.9516, 4.411984, 10800, 0, 0),
(@GUID + 109, 10317, 229, 29.507, -385.5553, 110.7477, 5.427974, 10800, 0, 0);
UPDATE `creature` SET `curhealth` = 15217 WHERE `id` = 10317 AND `curhealth` = 1;

-- Removed some creatures 10742 (Blackhand Assassin) used as placeholders in Blackrock Spire
DELETE FROM `creature` WHERE `guid` IN (41819, 41820); -- Blackrock Stadium
DELETE FROM `creature` WHERE `guid` IN (42161, 42160, 42162); -- The Furnace
-- Added missing creature 10318 (Blackhand Assassin) in Blackrock Spire
DELETE FROM `creature` WHERE `guid` BETWEEN @GUID + 110 AND @GUID + 117 OR `guid` = @GUID + 149 ;
INSERT INTO `creature` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `MovementType`) VALUES
(@GUID + 110, 10318, 229, 38.16403, -385.4801, 110.7979, 4.18879, 10800, 0, 0),
(@GUID + 111, 10318, 229, -8.141677, -341.8935, 111.0268, 0.7679449, 10800, 0, 0),
(@GUID + 112, 10318, 229, 40.84847, -453.1529, 110.941, 0.95231, 10800, 0, 0),
(@GUID + 113, 10318, 229, 29.73360, -492.83734, 110.9517, 5.056011, 10800, 0, 0),
(@GUID + 114, 10318, 229, 26.20737, -471.86945, 110.9556, 3.101782, 10800, 0, 0), -- sits
(@GUID + 115, 10318, 229, 21.38501, -471.68692, 110.9556, 0.001029, 10800, 0, 0), -- sits
(@GUID + 116, 10318, 229, 41.0048, -479.188, 110.932, 5.056011, 10800, 0, 0), -- patrol furnace
(@GUID + 149, 10318, 229, 100.64773, -480.0204, 116.8428, 3.133371, 10800, 0, 0),
(@GUID + 117, 10318, 229, -5.026564, -352.5426, 111.0268, 0.9599311, 10800, 0, 0);
UPDATE `creature` SET `curhealth` = 15176 WHERE `id` = 10318 AND `curhealth` = 1;

-- Removed some creatures 10319 (Blackhand Iron Guard) used as placeholders in Blackrock Spire
DELETE FROM `creature` WHERE `guid` IN (42652, 42651); -- Hordemar City
DELETE FROM `creature` WHERE `guid` IN (42664, 42663, 42662); -- Spire Throne
-- Added missing creature 10319 (Blackhand Iron Guard) in Blackrock Spire
DELETE FROM `creature` WHERE `guid` BETWEEN @GUID + 118 AND @GUID + 133 OR `guid` = @GUID + 148;
INSERT INTO `creature` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `MovementType`) VALUES
(@GUID + 118, 10319, 229, 40.01204, -434.5385, 110.9586, 1.527626, 10800, 0, 0),
(@GUID + 119, 10319, 229, 27.93552, -434.2590, 110.9576, 1.553183, 10800, 0, 0),
(@GUID + 120, 10319, 229, -3.292078, -259.9108, 111.0268, 5.480334, 10800, 0, 0),
(@GUID + 121, 10319, 229, 40.66904, -330.5275, 111.0268, 4.625123, 10800, 0, 0),
(@GUID + 123, 10319, 229, 16.72593, -259.3386, 111.0275, 5.445958, 10800, 0, 0), -- patrol spire throne
(@GUID + 124, 10319, 229, -18.40473, -338.1862, 111.0268, 0.5934119, 10800, 0, 0),
(@GUID + 125, 10319, 229, 30.47825, -381.1838, 110.7657, 4.974188, 10800, 0, 0),
(@GUID + 126, 10319, 229, 122.0500, -471.5799, 117.0200, 4.68000, 10800, 0, 0),
(@GUID + 127, 10319, 229, 112.3700, -478.2800, 117.0200, 1.64000, 10800, 0, 0),
(@GUID + 128, 10319, 229, 11.56313, -465.0264, 110.9390, 2.76657, 10800, 0, 0),
(@GUID + 129, 10319, 229, 11.78699, -459.40210, 110.9390, 3.40745, 10800, 0, 0),
(@GUID + 130, 10319, 229, 23.24152, -470.1227, 110.9556, 4.591829, 10800, 0, 0), -- sits
(@GUID + 131, 10319, 229, 83.5422, -474.662, 116.842, 4.68000, 10800, 0, 0), -- patrol furnace
(@GUID + 132, 10319, 229, 33.2388, -451.331, 110.947, 1.64000, 10800, 0, 0), -- patrol furnace
(@GUID + 148, 10319, 229, 137.876, -449.432, 121.975, 1.64000, 10800, 0, 0), -- patrol stadium
(@GUID + 133, 10319, 229, 37.02849, -381.1516, 110.7679, 4.29351, 10800, 0, 0);
UPDATE `creature` SET `curhealth` = 12205 WHERE `id` = 10319 AND `curhealth` = 1;

-- Removed some creatures 10366 (Rage Talon Dragon Guard) used as placeholders in Blackrock Spire
DELETE FROM `creature` WHERE `guid` IN (40274, 40273, 40277, 40276, 40275); -- Dragonspire Hall
DELETE FROM `creature` WHERE `guid` IN (40498, 40499); -- The Rookery
DELETE FROM `creature` WHERE `guid` IN (40493, 40494, 40492, 40491); -- Blackhand Hall
DELETE FROM `creature` WHERE `guid` IN (40517, 40516, 40518, 41320, 41780); -- Blackrock Stadium
DELETE FROM `creature` WHERE `guid` IN (42161, 42155, 42156, 42157, 42153, 42154); -- The Furnace
-- Added missing creature 10366 (Rage Talon Dragon Guard) in Blackrock Spire
DELETE FROM `creature` WHERE `guid` BETWEEN @GUID + 134 AND @GUID + 135;
INSERT INTO `creature` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `MovementType`) VALUES
(@GUID + 134, 10366, 229, 30.76082, -498.28076, 110.951, 1.603402, 10800, 0, 0),
(@GUID + 135, 10366, 229, 44.86666, -448.33764, 110.937, 3.66744, 10800, 0, 0);
UPDATE `creature` SET `curhealth` = 18116 WHERE `id` = 10366 AND `curhealth` = 1;

-- Removed some creatures 10742 (Blackhand Dragon Handler) used as placeholders in Blackrock Spire
DELETE FROM `creature` WHERE `guid` IN (45830); -- Hall of Blackhand
DELETE FROM `creature` WHERE `guid` IN (45829, 45826, 45827, 45823, 45824); -- Blackrock Stadium
DELETE FROM `creature` WHERE `guid` IN (45825); -- The Furnace

-- Removed some creatures 10371 (Rage Talon Captain) used as placeholders in Blackrock Spire
DELETE FROM `creature` WHERE `guid` IN (42572); -- The Furnace
-- Added missing creature 10371 (Rage Talon Captain) in Blackrock Spire
DELETE FROM `creature` WHERE `guid` BETWEEN @GUID + 136 AND @GUID + 140;
INSERT INTO `creature` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `MovementType`) VALUES
(@GUID + 136, 10371, 229, 33.96815, -327.5372, 111.0268, 4.729842, 10800, 0, 0),
(@GUID + 137, 10371, 229, 20.24981, -263.2449, 111.0268, 3.651049, 10800, 0, 0), -- patrol spire throne
(@GUID + 138, 10371, 229, -16.02218, -263.3353, 111.0268, 5.707227, 10800, 0, 0),
(@GUID + 139, 10371, 229, 8.654872, -449.8909, 110.9367, 5.462850, 10800, 0, 0),
(@GUID + 140, 10371, 229, -10.69427, -350.008, 111.0268, 0.8552113, 10800, 0, 0);
UPDATE `creature` SET `curhealth` = 19323 WHERE `id` = 10371 AND `curhealth` = 1;

-- Removed some creatures 10372 (Rage Talon Fire Tongue) used as placeholders in Blackrock Spire
DELETE FROM `creature` WHERE `guid` IN (40504, 40456, 40455, 40457); -- The Rookery
DELETE FROM `creature` WHERE `guid` = 41811; -- Blackrock Stadium
DELETE FROM `creature` WHERE `guid` IN (42570, 42571, 42569); -- The Furnace
-- Added missing creature 10372 (Rage Talon Fire Tongue) in Blackrock Spire
DELETE FROM `creature` WHERE `guid` BETWEEN @GUID + 141 AND @GUID + 147;
INSERT INTO `creature` (`guid`, `id`, `map`, `position_x`, `position_y`, `position_z`, `orientation`, `spawntimesecs`, `spawndist`, `MovementType`) VALUES
(@GUID + 141, 10372, 229, -6.880112, -252.3705, 111.0268, 5.427974, 10800, 0, 0),
(@GUID + 142, 10372, 229, 26.41263, -327.4144, 111.0268, 4.799655, 10800, 0, 0),
(@GUID + 143, 10372, 229, -15.58145, -344.3149, 111.0268, 0.715585, 10800, 0, 0),
(@GUID + 144, 10372, 229, 16.28238, -449.7946, 110.9481, 4.058556, 10800, 0, 0),
(@GUID + 145, 10372, 229, 6.224937, -461.4758, 110.932, 0.005890, 10800, 0, 0),
(@GUID + 146, 10372, 229, 23.00492, -476.6295, 110.956, 1.521713, 10800, 0, 0),
(@GUID + 147, 10372, 229, 23.71802, -258.2444, 111.0308, 3.460374, 10800, 0, 0); -- patrol spire throne
UPDATE `creature` SET `curhealth` = 18247 WHERE `id` = 10372 AND `curhealth` = 1;

-- Link patrol in Blackrock Spire - upper part
-- Thanks Ela for fixing some of them
-- Source: http://www.youtube.com/watch?v=asKYQoMPbks
-- http://www.youtube.com/watch?v=TBIW6H049O4

SET @GUID := 160107;

-- ----------------
-- Dragonspire Hall
-- ----------------

-- Dragonspawn
UPDATE `creature` SET `spawndist` = 0, `MovementType` = 2 WHERE `guid` = @GUID + 6;
DELETE FROM `creature_movement` WHERE `id` = @GUID + 6;
INSERT INTO `creature_movement` VALUES
(@GUID + 6, 1, 137.036, -318.309, 70.9563, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@GUID + 6, 13, 206.769, -288.047, 76.9327, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@GUID + 6, 14, 206.049, -300.881, 76.9044, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@GUID + 6, 15, 203.805, -308.685, 76.8987, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@GUID + 6, 16, 200.091, -314.903, 76.892, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@GUID + 6, 17, 196.037, -321.532, 76.8849, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@GUID + 6, 18, 187.264, -325.25, 76.8738, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@GUID + 6, 19, 172.508, -330.708, 71.6636, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@GUID + 6, 20, 157.819, -330.472, 70.9563, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@GUID + 6, 21, 151.347, -332.406, 70.9563, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@GUID + 6, 12, 205.403, -280.035, 76.9363, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@GUID + 6, 11, 197.221, -281.635, 76.9372, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@GUID + 6, 2, 139.625, -311.595, 70.9563, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@GUID + 6, 3, 145.022, -306.612, 70.9563, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@GUID + 6, 4, 155.634, -307.226, 70.9563, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@GUID + 6, 5, 165.665, -309.29, 70.9563, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@GUID + 6, 6, 179.918, -308.349, 75.0044, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@GUID + 6, 7, 186.484, -307.375, 76.8804, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@GUID + 6, 8, 190.417, -303.615, 76.8863, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@GUID + 6, 9, 190, -295.833, 76.9324, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@GUID + 6, 10, 192.748, -284.944, 76.9366, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@GUID + 6, 22, 141.415, -328.32, 70.9563, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- ----------------
-- The Rookery
-- ----------------

-- Dragonspawn
UPDATE `creature` SET `spawndist` = 0, `MovementType` = 2 WHERE `guid` = @GUID + 1;
DELETE FROM `creature_movement` WHERE `id` = @GUID + 1;
INSERT INTO `creature_movement` VALUES
(@GUID + 1, 1, 102.492, -284.08, 106.436, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@GUID + 1, 2, 103.388, -312.501, 106.436, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@GUID + 1, 3, 102.492, -284.08, 106.436, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@GUID + 1, 4, 102.111, -255.036, 106.436, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- Blackhand Veteran patrol
UPDATE `creature` SET `spawndist` = 0, `MovementType` = 2 WHERE `guid` = 40501;
DELETE FROM `creature_movement` WHERE `id` = 40501;
INSERT INTO `creature_movement` VALUES
(40501, 1, 156.655, -261.057, 110.911, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(40501, 2, 156.697, -270.709, 110.945, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(40501, 3, 157.437, -283.381, 110.653, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(40501, 4, 156.721, -302.091, 110.655, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(40501, 5, 155.393, -316.954, 110.658, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(40501, 6, 145.795, -316.889, 110.658, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(40501, 7, 138.546, -312.556, 110.971, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(40501, 8, 128.11, -312.561, 110.948, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(40501, 9, 113.444, -312.323, 106.436, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(40501, 10, 107.291, -311.159, 106.436, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(40501, 11, 107.143, -305.034, 106.436, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(40501, 12, 107.968, -294.352, 106.436, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(40501, 13, 108.13, -273.961, 106.436, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(40501, 14, 108.325, -262.696, 106.436, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(40501, 15, 113.576, -260.461, 106.436, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(40501, 16, 119.512, -259.629, 108.912, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(40501, 17, 126.887, -258.807, 110.95, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(40501, 18, 134.264, -256.577, 110.872, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(40501, 19, 142.107, -253.858, 110.808, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(40501, 20, 149.232, -254.785, 110.835, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(40501, 21, 156.027, -256.98, 110.873, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- ----------------
-- Chamber of Binding
-- ----------------

-- Blackhand summoner and guards patrol
UPDATE `creature` SET `spawndist` = 0, `MovementType` = 2, `currentwaypoint` = 6 WHERE `guid` = 40272;
DELETE FROM `creature_movement` WHERE `id` = 40272;
INSERT INTO `creature_movement` VALUES
(40272, 1, 225.9900, -261.0899, 82.3100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(40272, 2, 226.5734, -285.9178, 76.9924, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(40272, 3, 219.8651, -285.8625, 76.9667, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(40272, 4, 226.5734, -285.9178, 76.9924, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(40272, 5, 225.9900, -261.0899, 82.3100, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(40272, 6, 224.1993, -258.9800, 82.1340, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(40272, 7, 184.1476, -258.8885, 91.5460, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(40272, 8, 224.1993, -258.9800, 82.1340, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- Linked Rage Talon Captain and other NPCs in the patrol
DELETE FROM `creature_linking` WHERE `guid` IN (@GUID + 35, @GUID + 36, @GUID + 52);
INSERT INTO `creature_linking` VALUES
(@GUID + 35, 40272, 515),
(@GUID + 36, 40272, 515),
(@GUID + 52, 40272, 515);

-- ----------------
-- Blackhand Hall
-- ----------------

-- Rage talon Dragonspawn path along Anvilcracks room
UPDATE `creature` SET `spawndist` = 0, `MovementType` = 2 WHERE `guid` = @GUID + 17;
DELETE FROM `creature_movement` WHERE `id` = @GUID + 17;
INSERT INTO `creature_movement` VALUES
(@GUID + 17, 1, 151.483, -266.668, 110.941, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@GUID + 17, 2, 151.43, -299.848, 110.655, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@GUID + 17, 3, 151.826, -337.478, 110.948, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@GUID + 17, 4, 151.43, -299.848, 110.655, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

 -- Veteran/Dreadweaver path into Blackhand Hall
 UPDATE `creature` SET `spawndist` = 0, `MovementType` = 2 WHERE `guid` = @GUID + 22;
DELETE FROM `creature_movement` WHERE `id` = @GUID + 22;
INSERT INTO `creature_movement` VALUES
(@GUID + 22, 1, 156.734, -340.574, 110.949, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@GUID + 22, 2, 161.285, -330.085, 110.941, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@GUID + 22, 3, 164.349, -321.437, 110.935, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@GUID + 22, 4, 164.066, -307.895, 110.926, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@GUID + 22, 5, 161.931, -295.254, 110.937, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@GUID + 22, 6, 161.54, -286.843, 110.94, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@GUID + 22, 7, 161.626, -276.16, 110.942, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@GUID + 22, 8, 162.619, -260.48, 110.922, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@GUID + 22, 9, 160.883, -251.074, 110.911, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@GUID + 22, 10, 153.333, -254.239, 110.841, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@GUID + 22, 11, 147.933, -256.874, 110.85, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@GUID + 22, 12, 144.41, -258.089, 110.852, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@GUID + 22, 13, 142.226, -262.721, 110.888, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@GUID + 22, 14, 139.325, -272.981, 110.928, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@GUID + 22, 15, 139.064, -292.411, 110.964, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@GUID + 22, 16, 138.366, -304.562, 110.976, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@GUID + 22, 17, 140.202, -318.19, 110.956, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@GUID + 22, 18, 141.56, -328.348, 110.948, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@GUID + 22, 19, 145.867, -339.175, 110.95, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@GUID + 22, 20, 151.986, -343.381, 110.952, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);


-- Goraluk Anvilcrack patrol and emotes
UPDATE `creature` SET `spawndist` = 0, `MovementType` = 2 WHERE `id` = 10899;
UPDATE `creature_template` SET `MovementType` = 2 WHERE `entry` = 10899;
DELETE FROM `creature_movement_template` WHERE `entry` = 10899;
INSERT INTO `creature_movement_template` VALUES
(10899, 1, 140.872, -243.59, 110.826, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10899, 2, 140.034, -244.993, 110.804, 7000, 0, 0, 0, 0, 0, 0, 69, 0, 0, 5.714, 0, 0),
(10899, 3, 140.031, -247.348, 110.773, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10899, 4, 142.018, -248.934, 110.779, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10899, 5, 144.882, -250.299, 110.788, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10899, 6, 148.933, -246.427, 110.862, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10899, 7, 152.118, -245.322, 110.9, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10899, 8, 159.539, -248.629, 110.923, 48000, 0, 0, 0, 0, 0, 0, 133, 0, 0, 0.648, 0, 0),
(10899, 9, 155.153, -243.632, 110.926, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10899, 10, 148.945, -243.166, 110.897, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10899, 11, 147.221, -242.018, 110.895, 70000, 0, 0, 0, 0, 0, 0, 28, 0, 0, 1.539, 0, 0),
(10899, 12, 144.955, -246.962, 110.824, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10899, 13, 147.965, -244.265, 110.877, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10899, 14, 149.641, -243.561, 110.899, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10899, 15, 147.806, -248.505, 110.831, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10899, 16, 148.333, -245.98, 110.862, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10899, 17, 152.27, -246.428, 110.89, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10899, 18, 147.781, -243.522, 110.884, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10899, 19, 148.172, -245.329, 110.868, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10899, 20, 149.042, -247.2, 110.855, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10899, 21, 150.123, -244.737, 110.89, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10899, 22, 145.179, -242.707, 110.871, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- ----------------
-- Blackrock Stadium
-- ----------------

-- Dragonspawn patrol
UPDATE `creature` SET `spawndist` = 0, `MovementType` = 2 WHERE `guid` = @GUID + 20;
DELETE FROM `creature_movement` WHERE `id` = @GUID + 20;
INSERT INTO `creature_movement` VALUES
(@GUID + 20, 1, 164.673, -366.137, 116.844, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@GUID + 20, 2, 159.69, -366.065, 116.844, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@GUID + 20, 3, 134.314, -365.853, 116.844, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@GUID + 20, 4, 113.681, -366.227, 116.844, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@GUID + 20, 5, 134.314, -365.853, 116.844, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@GUID + 20, 6, 159.69, -366.065, 116.844, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- Blackhand Iron Guard patrol
UPDATE `creature` SET `spawndist` = 0, `MovementType` = 2 WHERE `guid` = @GUID + 148;
DELETE FROM `creature_movement` WHERE `id` = @GUID + 148;
INSERT INTO `creature_movement` VALUES
(@GUID + 148, 1, 137.876, -449.432, 121.975, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@GUID + 148, 2, 142.882, -447.466, 121.975, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@GUID + 148, 3, 150.106, -447.552, 121.975, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@GUID + 148, 4, 158.939, -447.841, 121.975, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@GUID + 148, 5, 162.936, -450.315, 121.975, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@GUID + 148, 6, 164.986, -455.795, 121.975, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@GUID + 148, 7, 165.879, -465.25, 116.954, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@GUID + 148, 8, 165.223, -470.568, 116.829, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@GUID + 148, 9, 158.806, -470.375, 116.826, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@GUID + 148, 10, 148.989, -470.486, 116.816, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@GUID + 148, 11, 142.296, -471.539, 116.839, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@GUID + 148, 12, 127.625, -473.384, 116.845, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@GUID + 148, 13, 118.149, -473.105, 116.842, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@GUID + 148, 14, 109.252, -473.191, 116.842, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@GUID + 148, 15, 101.37, -473.117, 116.842, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@GUID + 148, 16, 97.2847, -470.1, 116.842, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@GUID + 148, 17, 93.7787, -464.77, 116.842, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@GUID + 148, 18, 93.1996, -456.881, 116.842, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@GUID + 148, 19, 93.0105, -447.581, 113.951, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@GUID + 148, 20, 92.7964, -437.883, 110.923, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@GUID + 148, 21, 92.9087, -447.432, 113.951, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@GUID + 148, 22, 93.261, -456.932, 116.842, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@GUID + 148, 23, 94.0509, -465.158, 116.842, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@GUID + 148, 24, 97.3934, -470.372, 116.842, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@GUID + 148, 25, 101.615, -473.2, 116.842, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@GUID + 148, 26, 109.96, -473.221, 116.842, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@GUID + 148, 27, 119.431, -472.966, 116.842, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@GUID + 148, 28, 129.714, -473.405, 116.844, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@GUID + 148, 29, 137.726, -471.057, 116.836, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@GUID + 148, 30, 137.759, -466.307, 116.807, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@GUID + 148, 31, 137.438, -458.164, 121.874, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- ----------------
-- The Furnace
-- ----------------

-- Blackhand Iron Guard patrol
UPDATE `creature` SET `spawndist` = 0, `MovementType` = 2 WHERE `guid` = @GUID + 131;
DELETE FROM `creature_movement` WHERE `id` = @GUID + 131;
INSERT INTO `creature_movement` VALUES
(@GUID + 131, 1, 83.5422, -474.662, 116.842, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@GUID + 131, 2, 93.117, -476.806, 116.842, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@GUID + 131, 3, 93.1617, -484.36, 116.842, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@GUID + 131, 4, 93.117, -476.806, 116.842, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@GUID + 131, 5, 83.6851, -474.694, 116.842, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@GUID + 131, 6, 70.9019, -474.603, 115.496, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@GUID + 131, 7, 60.6071, -474.358, 112.139, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@GUID + 131, 8, 45.0526, -476.175, 110.926, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@GUID + 131, 9, 36.505, -483.864, 110.939, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@GUID + 131, 10, 24.5104, -485.579, 110.947, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@GUID + 131, 11, 12.3218, -481.582, 110.936, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@GUID + 131, 12, 10.0676, -472.998, 110.935, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@GUID + 131, 13, 17.3661, -456.806, 110.947, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@GUID + 131, 14, 29.5697, -454.026, 110.96, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@GUID + 131, 15, 35.4522, -454.598, 110.943, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@GUID + 131, 16, 34.7464, -442.818, 110.945, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@GUID + 131, 17, 33.5042, -417.918, 110.712, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@GUID + 131, 18, 34.7464, -442.818, 110.945, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@GUID + 131, 19, 35.4522, -454.598, 110.943, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@GUID + 131, 20, 29.5697, -454.026, 110.96, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@GUID + 131, 21, 17.3661, -456.806, 110.947, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@GUID + 131, 22, 10.0676, -472.998, 110.935, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@GUID + 131, 23, 12.3218, -481.582, 110.936, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@GUID + 131, 24, 24.5104, -485.579, 110.947, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@GUID + 131, 25, 36.505, -483.864, 110.939, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@GUID + 131, 26, 45.0526, -476.175, 110.926, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@GUID + 131, 27, 60.6071, -474.358, 112.139, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@GUID + 131, 28, 70.9019, -474.603, 115.496, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

 -- Blackhand Iron Guard Patrol
UPDATE `creature` SET `spawndist` = 0, `MovementType` = 2 WHERE `guid` = @GUID + 132;
DELETE FROM `creature_movement` WHERE `id` = @GUID + 132;
INSERT INTO `creature_movement` VALUES
(@GUID + 132, 1, 33.2388, -451.331, 110.947, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@GUID + 132, 2, 27.8349, -467.173, 110.954, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@GUID + 132, 3, 22.5882, -486.309, 110.945, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@GUID + 132, 4, 21.3946, -495.946, 110.941, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@GUID + 132, 5, 22.5882, -486.309, 110.945, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@GUID + 132, 6, 27.8349, -467.173, 110.954, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@GUID + 132, 7, 33.2388, -451.331, 110.947, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@GUID + 132, 8, 32.9856, -441.198, 110.948, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@GUID + 132, 9, 33.2187, -432.523, 110.949, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@GUID + 132, 10, 32.9856, -441.198, 110.948, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

 -- Blackhand Assasin patrol
UPDATE `creature` SET `spawndist` = 0, `MovementType` = 2 WHERE `guid` = @GUID + 116;
DELETE FROM `creature_movement` WHERE `id` = @GUID + 116;
INSERT INTO `creature_movement` VALUES
(@GUID + 116, 1, 41.0048, -479.188, 110.932, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@GUID + 116, 2, 40.6946, -470.055, 110.934, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@GUID + 116, 3, 28.987, -457.701, 110.958, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@GUID + 116, 4, 19.4282, -458.143, 110.948, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@GUID + 116, 5, 10.9487, -465.839, 110.938, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@GUID + 116, 6, 12.0295, -481.36, 110.935, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@GUID + 116, 7, 27.209, -487.106, 110.949, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- ----------------
-- Spire Throne
-- ----------------

-- Rage Talon Captain and guards patrol
UPDATE `creature` SET `spawndist` = 0, `MovementType` = 2, `currentwaypoint` = 6 WHERE `guid` = @GUID + 137;
DELETE FROM `creature_movement` WHERE `id` = @GUID + 137;
INSERT INTO `creature_movement` VALUES
(@GUID + 137, 1, 0.073367, -274.516, 110.929, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@GUID + 137, 2, -0.197867, -320.715, 110.939, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@GUID + 137, 3, 32.9907, -344.613, 110.943, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@GUID + 137, 4, 2.70391, -335.468, 110.942, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@GUID + 137, 5, 21.5374, -315.253, 110.945, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@GUID + 137, 6, 20.24981, -263.2449, 111.0268, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@GUID + 137, 7, 21.5374, -315.253, 110.945, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@GUID + 137, 8, 2.70391, -335.468, 110.942, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@GUID + 137, 9, 32.9907, -344.613, 110.943, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@GUID + 137, 10, -0.199047, -320.916, 110.942, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@GUID + 137, 11, 0.073367, -274.516, 110.929, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(@GUID + 137, 12, 17.7263, -263.467, 110.943, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- Linked Rage Talon Captain and other NPCs in the patrol
DELETE FROM `creature_linking` WHERE `guid` IN (@GUID + 147, @GUID + 123, @GUID + 100, @GUID + 101);
INSERT INTO `creature_linking` VALUES
(@GUID + 147, @GUID +137, 515),
(@GUID + 123, @GUID +137, 515),
(@GUID + 100, @GUID +137, 515),
(@GUID + 101, @GUID +137, 515);

SET @GUID2 := 160107;

-- The following Blackhand Elite/Assassin now sit
DELETE FROM `creature_addon` WHERE `guid` IN (@GUID2 + 130, @GUID2 + 114, @GUID2 + 115);
INSERT INTO `creature_addon` (`guid`, `mount`, `bytes1`, `b2_0_sheath`, `b2_1_flags`, `emote`, `moveflags`, `auras`) VALUES
(@GUID2 + 130, 0, 1, 1, 16, 0, 0, NULL),
(@GUID2 + 114, 0, 1, 1, 16, 0, 0, NULL),
(@GUID2 + 115, 0, 1, 1, 16, 0, 0, NULL);

-- Set to rare rank of creature 10509 (Jed Runewatcher) in Blackrock Spire
-- Source: http://old.wowhead.com/npc=10509#comments
UPDATE `creature_template` SET `rank` = 2 WHERE `entry` = 10509;

SET @JED_GUID := 45831;
SET @ALTERNATE_GUID := 160129;

-- Put creatures 10509 (Jed Runewatcher) in pool as he is a rare creature and should not spawn all the time
DELETE FROM `pool_creature` WHERE `guid` IN (@JED_GUID, @ALTERNATE_GUID);
INSERT INTO `pool_creature` VALUES
(@JED_GUID, 1178, 30, 'Jed Runewatcher (10509) Blackrock Spire'),
(@ALTERNATE_GUID, 1178, 70, 'Alternate creature to Jed Runewatcher (10509) Blackrock Spire');

DELETE FROM `pool_template` WHERE `entry` = 1178;
INSERT INTO `pool_template` VALUES
(1178, 1, 'Jed Runewatcher (10509) Blackrock Spire');

UPDATE `creature` SET `spawndist` = 0, `MovementType` = 0 WHERE `guid` IN (160072, 160081, 160044);
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = 10 WHERE `item` = 9279;

-- delete placeholder paths
DELETE FROM `creature_movement` WHERE id = 40275;
DELETE FROM `creature_movement` WHERE id = 45829;
DELETE FROM `creature_movement` WHERE id = 45825;
DELETE FROM `creature_movement` WHERE id = 45826;
DELETE FROM `creature_movement` WHERE id = 40500;
DELETE FROM `creature_movement` WHERE id = 40497;

-- Added missing world drop to creature 7361 (Grubbis) in Gnomeregan
-- Correct reference tables numbers were found on the basis of the ones
-- having items 15284 (Long Battle Bow), 6590 (Battleforge Boots), 9830 (Scaled Shield)
-- and 1828 (Stone War Axe) as they are in Grubbis loot table. Drop chances based on drop chances
-- of other creatures using the same reference tables
-- Source: http://www.wowhead.com/npc=7361#drops
DELETE FROM `creature_loot_template` WHERE `entry` = 7361 AND `item` IN (24068, 24050, 24058, 4633, 1705);
INSERT INTO `creature_loot_template` VALUES
(7361, 4633, 0.3, 0, 1, 1, 0), -- Heavy Bronze Lockbox
(7361, 1705, 0.3, 0, 1, 1, 0), -- Lesser Moonstone
(7361, 24050, 1, 0, -24050, 1, 0),
(7361, 24058, 5, 0, -24058, 1, 0),
(7361, 24068, 1, 0, -24068, 1, 0);

-- Added missing world drop to creature 7800 (Mekgineer Thermaplugg) in Gnomeregan
-- Correct reference tables numbers were found on the basis of the ones
-- having items found in Mekgineer Thermaplugg loot table. Drop chances based on drop chances
-- of other creatures using the same reference tables
-- Source: http://www.wowhead.com/npc=7800#drops
DELETE FROM `creature_loot_template` WHERE `entry` = 7800 AND `item` IN (11828, 24048, 24068, 4633, 1705);
INSERT INTO `creature_loot_template` VALUES
(7800, 4633, 0.3, 0, 1, 1, 0), -- Heavy Bronze Lockbox
(7800, 1705, 0.3, 0, 1, 1, 0), -- Lesser Moonstone
(7800, 11828, 15, 0, 1, 1, 0), -- Schematic: Pet Bombling
(7800, 24048, 2, 0, -24048, 1, 0),
(7800, 24068, 5, 0, -24068, 1, 0);

-- Added missing world drop to creature 6228 (Dark Iron Ambassador) in Gnomeregan
-- Correct reference tables numbers were found on the basis of the ones
-- having items found in Dark Iron Ambassador loot table. Drop chances based on drop chances
-- of other creatures using the same reference tables
-- Source: http://www.wowhead.com/npc=6228#drops
DELETE FROM `creature_loot_template` WHERE `entry` = 6228 AND `item` IN (24058, 24068, 24050, 4633, 1705);
INSERT INTO `creature_loot_template` VALUES
(6228, 4633, 0.3, 0, 1, 1, 0), -- Heavy Bronze Lockbox
(6228, 1705, 0.3, 0, 1, 1, 0), -- Lesser Moonstone
(6228, 24058, 5, 0, -24058, 1, 0),
(6228, 24050, 1, 0, -24050, 1, 0),
(6228, 24068, 1, 0, -24068, 1, 0);

-- Added missing world drop to creature 6229 (Crowd Pummeler 9-60) in Gnomeregan
-- Correct reference tables numbers were found on the basis of the ones
-- having items found in Crowd Pummeler 9-60 loot table. Drop chances based on drop chances
-- of other creatures using the same reference tables
-- Source: http://www.wowhead.com/npc=6229#drops
DELETE FROM `creature_loot_template` WHERE `entry` = 6229 AND `item` IN (11827, 24058, 24048, 24068, 4633, 1705);
INSERT INTO `creature_loot_template` VALUES
(6229, 11827, 2, 0, 1, 1, 0), -- Schematic: Lil' Smoky
(6229, 4633, 0.3, 0, 1, 1, 0), -- Heavy Bronze Lockbox
(6229, 1705, 0.3, 0, 1, 1, 0), -- Lesser Moonstone
(6229, 24058, 5, 0, -24058, 1, 0),
(6229, 24048, 2, 0, -24048, 1, 0),
(6229, 24068, 1, 0, -24068, 1, 0);

-- Added missing world drop to creature 6235 (Electrocutioner 6000) in Gnomeregan
-- Correct reference tables numbers were found on the basis of the ones
-- having items found in Electrocutioner 6000 loot table. Drop chances based on drop chances
-- of other creatures using the same reference tables
-- Source: http://www.wowhead.com/npc=6235#drops
DELETE FROM `creature_loot_template` WHERE `entry` = 6235 AND `item` IN (24058, 4633, 1705);
INSERT INTO `creature_loot_template` VALUES
(6235, 4633, 0.3, 0, 1, 1, 0), -- Heavy Bronze Lockbox
(6235, 1705, 0.3, 0, 1, 1, 0), -- Lesser Moonstone
(6235, 24058, 5, 0, -24058, 1, 0);

-- Added missing world drop to creature 7079 (Viscous Fallout) in Gnomeregan
-- Correct reference tables numbers were found on the basis of the ones
-- having items found in Viscous Fallout loot table. Drop chances based on drop chances
-- of other creatures using the same reference tables
-- Source: http://www.wowhead.com/npc=7079#drops
DELETE FROM `creature_loot_template` WHERE `entry` = 7079 AND `item` IN (4633, 1705);
INSERT INTO `creature_loot_template` VALUES
(7079, 4633, 0.3, 0, 1, 1, 0), -- Heavy Bronze Lockbox
(7079, 1705, 0.3, 0, 1, 1, 0); -- Lesser Moonstone

-- Set to rare rank of creature 6228 (Dark Iron Ambassador) in Gnomeregan
-- Source: http://old.wowhead.com/npc=6228#comments
UPDATE `creature_template` SET `rank` = 2 WHERE `entry` = 6228;


SET @AMBASSADOR_GUID := 590004;
SET @ALTERNATE_GUID := 33458;

-- Put creature 6228 (Dark Iron Ambassador) in pool as he is a rare creature and should not spawn all the time
DELETE FROM `pool_creature` WHERE `guid` IN (@AMBASSADOR_GUID, @ALTERNATE_GUID);
INSERT INTO `pool_creature` VALUES
(@AMBASSADOR_GUID, 1179, 30, 'Dark Iron Ambassador (6228) Gnomeregan'),
(@ALTERNATE_GUID, 1179, 70, 'Alternate creature to Dark Iron Ambassador (6228) Gnomeregan');

DELETE FROM `pool_template` WHERE `entry` = 1179;
INSERT INTO `pool_template` VALUES
(1179, 1, 'Dark Iron Ambassador (6228) Gnomeregan');

-- Fixed various reputation requirements for faction vendor items
-- Thanks Neotmiren for pointing and fixing
UPDATE `item_template` SET `RequiredReputationFaction` = 890 WHERE `RequiredReputationRank` <> 0 AND `RequiredReputationFaction` = 0 AND 14753 IN (SELECT `entry` FROM `npc_vendor` WHERE `item` = `item_template`.`entry`); -- Silverwing Sentinels reputation for item sold by Illiyana Moonblaze
UPDATE `item_template` SET `RequiredReputationFaction` = 889 WHERE `RequiredReputationRank` <> 0 AND `RequiredReputationFaction` = 0 AND 14754 IN (SELECT `entry` FROM `npc_vendor` WHERE `item` = `item_template`.`entry`); -- Warsong Outriders reputation for item sold by Kelm Hargunth
UPDATE `item_template` SET `RequiredReputationFaction` = 730 WHERE `RequiredReputationRank` <> 0 AND `RequiredReputationFaction` = 0 AND 13216 IN (SELECT `entry` FROM `npc_vendor` WHERE `item` = `item_template`.`entry`); -- Stormpike Guard reputation for item sold by Gaelden Hammersmith
UPDATE `item_template` SET `RequiredReputationFaction` = 729 WHERE `RequiredReputationRank` <> 0 AND `RequiredReputationFaction` = 0 AND 13218 IN (SELECT `entry` FROM `npc_vendor` WHERE `item` = `item_template`.`entry`); -- Frostwolf Clan reputation for item sold by Grunnda Wolfheart
UPDATE `item_template` SET `RequiredReputationFaction` = 529 WHERE `RequiredReputationRank` <> 0 AND `RequiredReputationFaction` = 0 AND 10856 IN (SELECT `entry` FROM `npc_vendor` WHERE `item` = `item_template`.`entry`); -- Argent Dawn reputation for item sold by Argent Quartermaster Hasana
UPDATE `item_template` SET `RequiredReputationFaction` = 59 WHERE `RequiredReputationRank` <> 0 AND `RequiredReputationFaction` = 0 AND 12944 IN (SELECT `entry` FROM `npc_vendor` WHERE `item` = `item_template`.`entry`); -- Thorium Brotherhood reputation for item sold by Lokhtos Darkbargainer
UPDATE `item_template` SET `RequiredReputationFaction` = 576 WHERE `RequiredReputationRank` <> 0 AND `RequiredReputationFaction` = 0 AND 11555 IN (SELECT `entry` FROM `npc_vendor` WHERE `item` = `item_template`.`entry`); -- Timbermaw Hold reputation for item sold by Gorn One Eye
UPDATE `item_template` SET `RequiredReputationRank` = 0 WHERE `RequiredReputationRank` <> 0 AND `RequiredReputationFaction` = 0 AND `entry` IN (15742,15754); -- Timbermaw Hold reputation not required for Pattern: Warbear Harness, Pattern: Warbear Woolies (are dropped, not sold)

-- Thanks Neotmiren for researching and fixing

-- Updated loot table of Lady Vespira (rare naga, Darkshore)
-- Source: http://www.wowwiki.com/Lady_Vespira
-- Drop rate from UDB
DELETE FROM `creature_loot_template` WHERE `entry` = 7016 AND `item` = 6333;
INSERT INTO `creature_loot_template` VALUES (7016, 6333, 60, 2, 1, 1, 0);
UPDATE `creature_loot_template` SET `groupid` = 2, `ChanceOrQuestChance` = 0 WHERE `entry` = 7016 AND `item` = 6332; -- mutually exclusive group for rare Black Pearl Ring
-- Item 6333 (Spikelash Dagger) is not a world drop so removed it from reference_loot_template table
DELETE FROM `reference_loot_template` WHERE item IN (6333);
-- Updated rank of Lady Vespira (creature 7016) as she is rare but not elite
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` = 7016;

-- Updated loot table of Skhowl (rare yeti, Alterac Mountains)
-- Source: http://www.wowwiki.com/Skhowl
-- Drop rate from UDB
DELETE FROM `creature_loot_template` WHERE `entry` = 2452 AND `item` = 3011;
INSERT INTO `creature_loot_template` VALUES (2452, 3011, 75, 2, 1, 1, 0);
UPDATE `creature_loot_template` SET `groupid` = 2, `ChanceOrQuestChance` = 0 WHERE `entry` = 2452 AND `item` = 6331; -- mutually exclusive group for rare Howling Blade
-- Item 6331 (Feathered Headdress) is not a world drop so removed it from reference_loot_template table
DELETE FROM `reference_loot_template` WHERE item IN (6331);
-- Updated rank of Skhowk (creature 2452) as he is rare but not elite
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` = 2452;

-- Lo'Grosh (rare ogre, Alterac Mountains)
-- Source: http://www.wowwiki.com/Lo%27Grosh?oldid=538294
-- Drop rate from UDB
DELETE FROM `creature_loot_template` WHERE `entry` = 2453 AND `item` = 4810;
INSERT INTO `creature_loot_template` VALUES (2453, 4810, 50, 2, 1, 1, 0); -- uncommon Boulder Pads
UPDATE `creature_loot_template` SET `groupid` = 2, `ChanceOrQuestChance` = 35 WHERE `entry` = 2453 AND `item` = 1678; -- mutually exclusive group for rare Black Ogre Kickers
UPDATE `creature_loot_template` SET `groupid` = 2, `ChanceOrQuestChance` = 0 WHERE `entry` = 2453 AND `item` = 6327; -- mutually exclusive group for rare The Pacifier
-- Item 4810 (Boulder Pads) is not a world drop so removed it from reference_loot_template table
DELETE FROM `reference_loot_template` WHERE `item` IN (4810);
-- Updated rank of Lo'Grosh (creature 2453) as he is rare but not elite
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` = 2453;

-- Mosh'Ogg Butcher (rare elite ogre, Stranglethorn Vale)
-- Source: http://www.wowwiki.com/Mosh%27Ogg_Butcher
DELETE FROM `creature_loot_template` WHERE `entry` = 723 AND `item` = 1680;
INSERT INTO `creature_loot_template` VALUES (723, 1680, 40, 0, 1, 1, 0); -- uncommon Headchopper IL 44 [39] 2H-Axe
-- Item 1680 (Headchopper) is not a world drop so removed it from reference_loot_template table
DELETE FROM `reference_loot_template` WHERE `item` IN (1680);
-- Updated rank of Mosh'Ogg Butcher (creature 723) as he is rare and elite
UPDATE `creature_template` SET `rank` = 2 WHERE `entry` = 723;

UPDATE `creature_template` SET `faction_A` = 40, `faction_H` = 40 WHERE `entry` = 584;

UPDATE `creature_template` SET `gossip_menu_id` = 0, `npcflag` = 2 WHERE `entry` = 5637;

-- Fixed creature 3301 (Morgan Ladimore) for completion script of quest 231 (A Daughter's Love) as it had wrong faction
-- was attackable and was missing its equipment
-- Sources: http://www.wowhead.com/quest=26797#
-- http://www.wowhead.com/npc=3301#screenshots:id=60853
UPDATE `creature_template` SET `minhealth` = 1342, `maxhealth` = 1342, `faction_A` = 35, `faction_H` = 35, `flags_extra` = 2, `equipment_id` = 2217 WHERE `entry` = 3301;

-- Added missing equipment for creature 3301 (Morgan Ladimore)
DELETE FROM `creature_equip_template_raw` WHERE `entry` = 2217;
INSERT INTO `creature_equip_template_raw` VALUES (2217, 20251, 0, 0, 33490946, 0, 0, 273, 0, 0);

SET @STRING1 := 2000000164;
SET @STRING2 := 2000000165;
-- Updated quest end script
DELETE FROM `dbscripts_on_quest_end` WHERE `id` = 231 AND `delay` > 0;
INSERT INTO `dbscripts_on_quest_end` VALUES
(231, 5, 0, 0, 0, 3301, 10, 0, @STRING1, 0, 0, 0, 0, 0, 0, 0, 'Morgan Ladimore Speech 1'),
(231, 5, 1, 1, 0, 3301, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(231, 11, 0, 0, 0, 3301, 10, 0, @STRING2, 0, 0, 0, 0, 0, 0, 0, 'Morgan Ladimore Speech 2'),
(231, 11, 1, 1, 0, 3301, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(231, 17, 28, 8, 0, 3301, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Morgan Ladimore kneel');

-- Added missing strings for quest end script
DELETE FROM `db_script_string` WHERE `entry` IN (@STRING1, @STRING2);
INSERT INTO `db_script_string` VALUES
(@STRING1, 'My sword Archeus served me well in life, but as at last my spirit may pass from the unhappy existence, I need it no longer.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL),
(@STRING2, 'I shall cling to the love of my daughter and hope that I will find forgiveness under the Light for my sins.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL);

UPDATE `creature_template` SET `equipment_id` = 0 WHERE `entry` = 3345;
DELETE FROM `gameobject` WHERE `guid` = 10665;

-- Updated faction and flags of creatures involved in quest 8519 (A Pawn on the Eternal Board)
-- 370 (Armies of C’Thun) and 635 (Cenarion Circle)
UPDATE `creature_template` SET `faction_A` = 635, `faction_H` = 635, `InhabitType` = 3, `unit_flags` = 33024 WHERE `entry` IN (15378, 15379, 15380); -- Merithra of the Dream, Caelestrasz, Arygos
UPDATE `creature_template` SET `faction_A` = 635, `faction_H` = 635 WHERE `entry` = 15382; -- Fandral Staghelm
UPDATE `creature_template` SET `speed_walk` = 1 WHERE `entry` = 15381; -- Anachronos
UPDATE `creature_template` SET `faction_A` = 1608, `faction_H` = 1608, `unit_flags` = 32773, `equipment_id` = 814 WHERE `entry` = 15423; -- Kaldorei Infantry
UPDATE `creature_template` SET `faction_A` = 370, `faction_H` = 370, `unit_flags` = 32773 WHERE `entry` IN (15414, 15421, 15422, 15424); -- Qiraji Wasp, Qiraji Drone, Qiraji Tank, Anubisath Conqueror

-- Linked guards 2738 (Stromgarde Cavalryman) to creature 2612 (Lieutenant Valorcall)
DELETE FROM `creature_linking_template` WHERE `entry` = 2738;
INSERT INTO `creature_linking_template` VALUES
(2738, 0, 2612, 515, 0);

-- Allowed creature 2612 (Lieutenant Valorcall) to follow waypoints
UPDATE `creature_template` SET `MovementType` = 2 WHERE `entry` = 2612;
UPDATE `creature` SET `MovementType` = 2 WHERE `id` = 2612;

-- Added waypoints to creature 2612 (Lieutenant Valorcall)
-- Source UDB
DELETE FROM `creature_movement_template` WHERE `entry` = 2612;
INSERT INTO `creature_movement_template` VALUES
(2612, 1, -1384.19, -2070.8, 62.4805, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2612, 2, -1386.44, -2096.17, 63.7144, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2612, 3, -1387.59, -2113.09, 64.4154, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2612, 4, -1390.86, -2136.94, 64.2607, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2612, 5, -1394.5, -2156.81, 64.1276, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2612, 6, -1399.57, -2182.31, 63.9607, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2612, 7, -1406.66, -2210.71, 63.8452, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2612, 8, -1415.8, -2241.02, 63.7583, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2612, 9, -1431.53, -2263.22, 63.2934, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2612, 10, -1442.09, -2279.46, 62.5595, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2612, 11, -1449.83, -2296.07, 61.7451, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2612, 12, -1450.51, -2320.31, 61.763, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2612, 13, -1451.18, -2335.28, 61.6723, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2612, 14, -1450.99, -2349.2, 61.5954, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2612, 15, -1450.92, -2368.7, 61.4802, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2612, 16, -1451.44, -2384.32, 61.3652, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2612, 17, -1452.38, -2412.45, 60.01, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2612, 18, -1469.69, -2432.11, 57.0311, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2612, 19, -1455.27, -2437.83, 58.32, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2612, 20, -1435.31, -2446.8, 58.8518, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2612, 21, -1426.09, -2451.05, 58.9719, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2612, 22, -1413.94, -2462.02, 57.4064, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2612, 23, -1405.56, -2462.93, 56.6648, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2612, 24, -1396.27, -2461.46, 57.1161, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2612, 25, -1390.54, -2459.96, 56.7346, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2612, 26, -1380.95, -2457.43, 55.005, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2612, 27, -1372.35, -2451.78, 53.4552, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2612, 28, -1362.53, -2450.7, 51.7466, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2612, 29, -1351.53, -2449.03, 49.9309, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2612, 30, -1341.72, -2447.77, 47.5885, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2612, 31, -1324.63, -2454.8, 43.6367, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2612, 32, -1315.43, -2458.59, 42.1428, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2612, 33, -1305.22, -2462.72, 39.3348, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2612, 34, -1294.39, -2467.26, 35.5811, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2612, 35, -1287.53, -2475.44, 31.9306, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2612, 36, -1279.38, -2483.56, 27.4055, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2612, 37, -1271.87, -2490.9, 23.7054, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2612, 38, -1261.41, -2504.61, 20.9876, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2612, 39, -1253.34, -2518.74, 20.4396, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2612, 40, -1247.84, -2527.8, 20.5722, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2612, 41, -1241.35, -2540.11, 21.0293, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2612, 42, -1235.88, -2557.91, 23.0018, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2612, 43, -1232.78, -2564.99, 24.8855, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2612, 44, -1228.54, -2572.92, 27.3855, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2612, 45, -1220.53, -2586.44, 31.7423, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2612, 46, -1214.24, -2596.67, 34.762, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2612, 47, -1207.75, -2608.21, 38.3974, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2612, 48, -1196.12, -2620.89, 42.5247, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2612, 49, -1188.59, -2633.61, 45.0159, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2612, 50, -1192.2, -2644.21, 46.2925, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2612, 51, -1196.75, -2657.01, 45.3284, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2612, 52, -1204.47, -2676.43, 44.7487, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2612, 53, -1206.42, -2683.63, 45.3893, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2612, 54, -1202.83, -2694.48, 46.5629, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2612, 55, -1199.31, -2705.3, 47.0403, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2612, 56, -1197.74, -2715.86, 46.8948, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2612, 57, -1192.25, -2724.06, 45.9989, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2612, 58, -1177, -2731.36, 45.7483, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2612, 59, -1159.46, -2739.54, 45.7695, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2612, 60, -1148.66, -2745.27, 44.4954, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2612, 61, -1137.75, -2749.23, 42.2074, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2612, 62, -1128.77, -2753.03, 40.2319, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2612, 63, -1121.58, -2756.33, 38.8911, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2612, 64, -1115.96, -2760.1, 37.2754, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2612, 65, -1109.07, -2765.24, 35.8862, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2612, 66, -1107.7, -2774.31, 35.5988, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2612, 67, -1112.25, -2786.06, 37.8038, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2612, 68, -1114.49, -2800.37, 41.1377, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2612, 69, -1110.14, -2812.09, 41.6225, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2612, 70, -1115.49, -2801.97, 41.407, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2612, 71, -1113.03, -2792.28, 39.2494, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2612, 72, -1107.91, -2778.91, 35.8249, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2612, 73, -1107.13, -2767.5, 35.673, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2612, 74, -1115.65, -2758.86, 37.3008, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2612, 75, -1125.74, -2754.12, 39.6889, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2612, 76, -1138.39, -2749.26, 42.2839, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2612, 77, -1152.96, -2743.72, 45.2242, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2612, 78, -1164.5, -2735.92, 45.9638, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2612, 79, -1175.89, -2731.06, 45.8168, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2612, 80, -1192.4, -2722.15, 46.1228, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2612, 81, -1196.94, -2708.35, 46.8957, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2612, 82, -1201.13, -2695.4, 46.7925, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2612, 83, -1203.76, -2680.84, 45.0511, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2612, 84, -1197.63, -2664.45, 44.6361, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2612, 85, -1191.09, -2644.81, 46.2773, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2612, 86, -1188.89, -2628.21, 44.3742, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2612, 87, -1198.86, -2618.2, 41.8015, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2612, 88, -1206.6, -2607.68, 38.5384, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2612, 89, -1211.44, -2599.65, 35.7691, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2612, 90, -1217.73, -2589.17, 32.8308, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2612, 91, -1225.02, -2580.04, 29.5177, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2612, 92, -1230.7, -2568.73, 26.2113, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2612, 93, -1235.95, -2555.18, 22.4355, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2612, 94, -1241.54, -2541.8, 21.0347, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2612, 95, -1257.1, -2510.82, 20.6439, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2612, 96, -1265.45, -2498.02, 21.6001, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2612, 97, -1273.79, -2487.31, 25.0914, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2612, 98, -1288.08, -2473.79, 32.5421, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2612, 99, -1307.24, -2462.06, 39.8694, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2612, 100, -1319.66, -2455.84, 43.057, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2612, 101, -1335.87, -2448.58, 46.4236, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2612, 102, -1347.92, -2447.92, 49.1251, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2612, 103, -1365.9, -2451.02, 52.1921, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2612, 104, -1382.38, -2458.07, 55.1783, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2612, 105, -1394.38, -2461.74, 57.0031, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2612, 106, -1408.97, -2464.37, 56.7405, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2612, 107, -1423.37, -2453.11, 59.0055, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2612, 108, -1436.43, -2444.3, 58.9476, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2612, 109, -1456.63, -2437.7, 58.2656, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2612, 110, -1462.2, -2427.32, 57.98, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2612, 111, -1453.32, -2407.9, 60.2707, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2612, 112, -1450.91, -2386.82, 61.3356, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2612, 113, -1450.43, -2363.37, 61.5079, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2612, 114, -1450.05, -2334.72, 61.6732, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2612, 115, -1449.54, -2305.47, 61.7913, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2612, 116, -1441.65, -2279.27, 62.602, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2612, 117, -1426.6, -2258.16, 63.4466, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2612, 118, -1412.14, -2231.41, 63.7774, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2612, 119, -1405.94, -2211.46, 63.8415, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2612, 120, -1399.74, -2190.69, 63.9117, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2612, 121, -1393.9, -2159.74, 64.1125, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2612, 122, -1390.52, -2139.7, 64.2473, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2612, 123, -1387.51, -2120.92, 64.3688, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2612, 124, -1386.01, -2099.16, 63.8191, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2612, 125, -1383.93, -2074.87, 62.6483, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2612, 126, -1383, -2054.96, 61.8001, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2612, 127, -1381.77, -2036.06, 60.9844, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2612, 128, -1378.36, -2005.29, 59.4934, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2612, 129, -1377.48, -1983.73, 58.5761, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2612, 130, -1369.86, -1965.06, 58.4856, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2612, 131, -1358.28, -1937.37, 58.4398, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2612, 132, -1348.84, -1912.47, 58.4265, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2612, 133, -1335.51, -1876.41, 60.848, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2612, 134, -1330.62, -1845.31, 62.5779, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2612, 135, -1345.1, -1837.85, 61.5435, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2612, 136, -1364.26, -1829.25, 59.9931, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2612, 137, -1389.62, -1817.41, 59.0087, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2612, 138, -1415.1, -1808.02, 60.4161, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2612, 139, -1435.11, -1801.78, 61.5727, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2612, 140, -1447.44, -1800.37, 63.6958, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2612, 141, -1458.98, -1802.07, 67.0238, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2612, 142, -1472.66, -1805.06, 68.0195, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2612, 143, -1497.19, -1805.35, 68.0742, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2612, 144, -1514.69, -1804.92, 66.0349, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2612, 145, -1538.14, -1805.08, 66.2462, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2612, 146, -1552.13, -1805.62, 67.4992, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2612, 147, -1566.12, -1805.85, 67.202, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2612, 148, -1574.64, -1787.76, 67.1599, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2612, 149, -1580.64, -1761.6, 66.8366, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2612, 150, -1586.03, -1738.46, 67.2146, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2612, 151, -1586.83, -1720.87, 67.231, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2612, 152, -1584.9, -1692.94, 66.1641, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2612, 153, -1600.37, -1680.06, 65.8522, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2612, 154, -1619.82, -1668.12, 67.1022, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2612, 155, -1624.56, -1660.98, 67.1673, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2612, 156, -1628.35, -1622.34, 66.9965, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2612, 157, -1628.68, -1622.18, 67.0259, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2612, 158, -1626.34, -1659.11, 67.1212, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2612, 159, -1615.59, -1668.08, 66.8638, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2612, 160, -1584.52, -1688.04, 66.1293, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2612, 161, -1585.32, -1707.79, 66.8941, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2612, 162, -1585.92, -1729.18, 67.49, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2612, 163, -1585.92, -1729.18, 67.49, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2612, 164, -1584.81, -1745.2, 66.7806, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2612, 165, -1582.37, -1754.14, 66.5947, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2612, 166, -1579.72, -1771.43, 67.2722, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2612, 167, -1569.16, -1802.71, 67.21, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2612, 168, -1550.25, -1805.54, 67.496, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2612, 169, -1529.52, -1805.51, 65.9259, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2612, 170, -1515.09, -1805.42, 66.0125, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2612, 171, -1500.26, -1805.39, 68.0405, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2612, 172, -1467.51, -1804.3, 67.8037, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2612, 173, -1460.55, -1803.58, 67.2688, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2612, 174, -1443.32, -1800.51, 62.5683, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2612, 175, -1435.37, -1800.75, 61.6298, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2612, 176, -1408.92, -1809.84, 60.1395, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2612, 177, -1386.58, -1818.31, 58.8852, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2612, 178, -1364.26, -1828.37, 60.009, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2612, 179, -1341.59, -1837.64, 61.8847, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2612, 180, -1327.44, -1845.22, 62.8446, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2612, 181, -1330.71, -1858.83, 62.0556, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2612, 182, -1337.49, -1878.68, 60.5999, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2612, 183, -1344.6, -1898.44, 59.0569, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2612, 184, -1351.51, -1918.27, 58.3816, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2612, 185, -1359.34, -1937.75, 58.4232, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2612, 186, -1365.71, -1954.04, 58.4614, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2612, 187, -1375.31, -1980.28, 58.5432, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2612, 188, -1379.14, -2004.39, 59.4554, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2612, 189, -1381.14, -2021.78, 60.3645, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2612, 190, -1382.73, -2039.34, 61.1257, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2612, 191, -1383.31, -2049.82, 61.5961, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- Added missing waypoints and movement to creature 10617 (Galak Messenger)
-- Source: YTDB
UPDATE `creature` SET `MovementType` = 2, `position_x` = -4937.46, `position_y` = -2168.09, `position_z` = -56.1747 WHERE `id` = 10617;
UPDATE `creature_template` SET `MovementType` = 2 WHERE `entry` = 10617;
DELETE FROM `creature_movement_template` WHERE `entry` = 10617;
INSERT INTO `creature_movement_template` VALUES
(10617, 1, -4937.46, -2168.09, -56.1747, 0, 1061701, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10617, 2, -4897.68, -2138.37, -51.2684, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10617, 3, -4864.94, -2115.49, -37.5469, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10617, 4, -4841.87, -2081.95, -35.6608, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10617, 5, -4820.65, -2044.5, -43.1285, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10617, 6, -4783.9, -1996.76, -60.8301, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10617, 7, -4738.26, -1945.67, -51.5966, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10617, 8, -4711.8, -1913.05, -45.2368, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10617, 9, -4696.85, -1870.16, -46.2202, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10617, 10, -4694.42, -1850.55, -51.0317, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10617, 11, -4684.98, -1829.74, -56.9264, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10617, 12, -4682.22, -1806.59, -52.9434, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10617, 13, -4659.18, -1783.6, -43.4224, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10617, 14, -4634.61, -1745.77, -37.3899, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10617, 15, -4630.68, -1699.64, -26.1932, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10617, 16, -4643.76, -1655.55, -19.7118, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10617, 17, -4659.94, -1613.02, -26.8419, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10617, 18, -4668.28, -1591.11, -33.0654, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10617, 19, -4667.47, -1562.91, -32.5172, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10617, 20, -4658.12, -1539.22, -29.2827, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10617, 21, -4658.01, -1494.74, -48.8157, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10617, 22, -4642.29, -1440.79, -51.119, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10617, 23, -4616.18, -1407.04, -47.3698, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10617, 24, -4609.31, -1382.72, -45.1224, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10617, 25, -4612.36, -1343.67, -41.7372, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10617, 26, -4619.08, -1281.03, -51.6477, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10617, 27, -4614.92, -1220.36, -54.6163, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10617, 28, -4626.25, -1180.11, -48.9481, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10617, 29, -4641.06, -1137.09, -51.6806, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10617, 30, -4656.4, -1112.87, -54.4827, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10617, 31, -4700.93, -1102.83, -53.8923, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10617, 32, -4722.21, -1110.5, -52.2017, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10617, 33, -4734.43, -1141.43, -40.3514, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10617, 34, -4745.57, -1157.47, -40.3538, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10617, 35, -4758.43, -1204.15, -52.6604, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10617, 36, -4750.56, -1255.87, -53.5114, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10617, 37, -4759.41, -1293.25, -48.5635, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10617, 38, -4774.6, -1316.24, -49.59, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10617, 39, -4785.31, -1342.21, -53.0041, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10617, 40, -4835.24, -1378.92, -53.7673, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10617, 41, -4866.05, -1405.48, -53.238, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10617, 42, -4904.77, -1476.34, -49.3345, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10617, 43, -4975.39, -1540.77, -47.9538, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10617, 44, -4963.72, -1633.01, -45.1166, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10617, 45, -4943.81, -1684.32, -55.887, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10617, 46, -4966.14, -1720.32, -61.8483, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10617, 47, -4912.56, -1788.17, -37.2184, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10617, 48, -4888.88, -1801.39, -36.8142, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10617, 49, -4858.3, -1825.38, -51.548, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10617, 50, -4871.04, -1892.89, -52.5316, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10617, 51, -4827.46, -1941.57, -45.4197, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10617, 52, -4799.2, -1993.36, -59.8512, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10617, 53, -4827.15, -2050.11, -40.8494, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10617, 54, -4843.97, -2084.73, -35.5785, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10617, 55, -4867.74, -2115.84, -37.7841, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10617, 56, -4911.25, -2148.37, -55.0563, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10617, 57, -4985.07, -2201.57, -53.8056, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10617, 58, -5011.36, -2239.61, -52.75, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10617, 59, -5070.91, -2249.51, -54.1085, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10617, 60, -5096.7, -2310.91, -54.5476, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10617, 61, -5051.69, -2317.77, -52.6927, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10617, 62, -5023.34, -2301.39, -51.999, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10617, 63, -5007.85, -2272.99, -52.0654, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10617, 64, -4991, -2240.06, -52.5392, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10617, 65, -4983.95, -2204.57, -53.8293, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(10617, 66, -4966.41, -2183.86, -54.1021, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- Added script to make creature 10617 (Galak Messenger) run at start (1st waypoint)
DELETE FROM `dbscripts_on_creature_movement` WHERE `id` = 1061701;
INSERT INTO `dbscripts_on_creature_movement` VALUES
(1061701, 1, 25, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'RUN ON');

-- Removed duplicate spawn of creature 2714 (Forsaken Courier)
DELETE FROM `creature` WHERE `guid` = 16397;
-- Removed duplicate spawn of creature 2721 (Forsaken Bodyguard)
DELETE FROM `creature` WHERE `guid` IN (16398, 16399, 16400, 16402);
DELETE FROM `creature_addon` WHERE `guid` IN (16397, 16398, 16399, 16400, 16402);

-- Linked bodyguards 2721 (Forsaken Bodyguard) to creature 2714 (Forsaken Courier)
DELETE FROM `creature_linking_template` WHERE `entry` = 2721;
INSERT INTO `creature_linking_template` VALUES
(2721, 0, 2714, 515, 0);

-- Allowed creature 2714 (Forsaken Courier) to follow waypoints
UPDATE `creature` SET `MovementType` = 2 WHERE `id` = 2714;
UPDATE `creature_template` SET `MovementType` = 2 WHERE `entry` = 2714;

-- Added waypoints to creature 2714 (Forsaken Courier)
DELETE FROM `creature_movement_template` WHERE `entry` = 2714;
INSERT INTO `creature_movement_template` VALUES
(2714, 1, -1609.97, -2755.76, 37.3943, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2714, 2, -1603.6, -2739.05, 37.5333, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2714, 3, -1587.45, -2715.61, 36.162, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2714, 4, -1569.73, -2702.28, 34.6045, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2714, 5, -1566.12, -2687.94, 35.1213, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2714, 6, -1558.37, -2669.76, 36.6745, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2714, 7, -1555.94, -2655.67, 38.2919, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2714, 8, -1555.21, -2632.92, 42.8621, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2714, 9, -1557.71, -2608.51, 47.2414, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2714, 10, -1562.57, -2588.08, 48.5798, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2714, 11, -1567.35, -2567.63, 49.4929, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2714, 12, -1566.69, -2545.42, 50.9401, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2714, 13, -1563.04, -2535, 51.7195, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2714, 14, -1552.93, -2512.6, 53.6615, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2714, 15, -1543.99, -2493.64, 54.0544, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2714, 16, -1519.58, -2473.74, 53.278, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2714, 17, -1495.49, -2453.45, 53.1384, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2714, 18, -1468.35, -2429.73, 57.3076, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2714, 19, -1455.25, -2415.05, 59.528, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2714, 20, -1451.46, -2396.72, 61.0705, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2714, 21, -1450.23, -2354.75, 61.5571, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2714, 22, -1450.16, -2330.26, 61.6995, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2714, 23, -1448.87, -2302.3, 61.8556, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2714, 24, -1448, -2288.32, 61.822, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2714, 25, -1434.56, -2268.25, 63.22, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2714, 26, -1416.94, -2243.5, 63.75, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2714, 27, -1406.84, -2213.67, 63.8345, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2714, 28, -1396.47, -2171.9, 64.039, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2714, 29, -1392.2, -2147.78, 64.1909, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2714, 30, -1388.21, -2123.6, 64.347, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2714, 31, -1385.42, -2092.26, 63.5383, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2714, 32, -1383.12, -2060.85, 62.055, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2714, 33, -1381.74, -2029.39, 60.6848, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2714, 34, -1376.52, -1986.88, 58.6965, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2714, 35, -1371.65, -1970.13, 58.4978, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2714, 36, -1360.16, -1940.81, 58.4372, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2714, 37, -1350.11, -1916.01, 58.3875, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2714, 38, -1339.13, -1886.5, 60.0551, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2714, 39, -1329.53, -1861.46, 62.0138, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2714, 40, -1325.61, -1844.42, 63.0405, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2714, 41, -1311.92, -1820.97, 64.8927, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2714, 42, -1295.12, -1808.41, 66.262, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2714, 43, -1277.57, -1796.88, 67.1404, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2714, 44, -1244.34, -1777.49, 65.1985, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2714, 45, -1233.3, -1769.58, 63.5457, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2714, 46, -1207.17, -1746.29, 58.7408, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2714, 47, -1191.71, -1732.09, 56.5556, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2714, 48, -1164.95, -1716.83, 53.0717, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2714, 49, -1135.18, -1706.64, 47.9639, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2714, 50, -1114.18, -1699.55, 45.3461, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2714, 51, -1090.47, -1693.5, 41.0002, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2714, 52, -1064.73, -1687.93, 38.3902, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2714, 53, -1047.31, -1686.35, 37.3729, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2714, 54, -1022.11, -1685.52, 36.8282, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2714, 55, -997.612, -1684.85, 36.9688, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2714, 56, -965.025, -1681.52, 38.8965, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2714, 57, -940.198, -1677.13, 41.4524, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2714, 58, -928.706, -1669.13, 43.4338, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2714, 59, -1004.39, -1684.38, 37.0821, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2714, 60, -958.272, -1681.28, 39.4752, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2714, 61, -940.948, -1678.27, 41.3014, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2714, 62, -925.216, -1667.5, 43.9363, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2714, 63, -907.171, -1653.96, 46.2816, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2714, 64, -885.882, -1636.75, 49.7862, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2714, 65, -874.678, -1625.89, 51.3372, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2714, 66, -868.66, -1620.02, 52.336, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2714, 67, -842.682, -1592.57, 54.0779, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2714, 68, -828.952, -1576.2, 54.1685, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2714, 69, -817.389, -1560.93, 54.167, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2714, 70, -806.968, -1545.8, 54.2009, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2714, 71, -797.451, -1533.19, 54.8197, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2714, 72, -789.241, -1521.31, 55.7949, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2714, 73, -776.737, -1498.45, 58.5686, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2714, 74, -770.393, -1476.76, 61.6119, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2714, 75, -761.467, -1457.51, 64.2773, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2714, 76, -751.589, -1437.14, 66.0968, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2714, 77, -743.556, -1419.19, 67.3789, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2714, 78, -737.395, -1406.99, 67.9947, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2714, 79, -722.763, -1387.82, 68.366, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2714, 80, -714.923, -1378.25, 68.1637, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2714, 81, -706.586, -1368.09, 68.0256, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2714, 82, -687.658, -1343.6, 67.5301, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2714, 83, -669.901, -1320.4, 66.5834, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2714, 84, -647.929, -1287.28, 66.0955, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2714, 85, -627.874, -1252.22, 66.064, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2714, 86, -606.519, -1205.26, 66.0658, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2714, 87, -593.569, -1174.5, 66.1406, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2714, 88, -582.399, -1140.05, 66.0912, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2714, 89, -568.644, -1109.58, 63.2909, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2714, 90, -556.385, -1092.83, 59.8963, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2714, 91, -544.784, -1079.77, 57.3362, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2714, 92, -533.539, -1068.76, 55.377, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2714, 93, -528.303, -1062.48, 54.0466, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2714, 94, -516.638, -1048.8, 50.6007, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2714, 95, -503.263, -1029.3, 45.8335, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2714, 96, -497.63, -1001.72, 40.7873, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2714, 97, -494.625, -981.277, 37.6336, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2714, 98, -490.863, -957.963, 33.7666, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2714, 99, -486.941, -943.666, 34.657, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2714, 100, -483.047, -927.656, 34.0395, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2714, 101, -473.813, -907.247, 35.9201, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2714, 102, -463.655, -890.517, 39.1828, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2714, 103, -456.501, -881.757, 41.4407, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2714, 104, -447.081, -870.026, 44.5675, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2714, 105, -439.556, -860.609, 46.9198, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2714, 106, -427.118, -845.195, 51.0378, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2714, 107, -402.304, -811.967, 54.3169, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2714, 108, -380.986, -780.241, 54.5348, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2714, 109, -360.534, -770.555, 54.1482, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2714, 110, -349.803, -766.11, 54.1108, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2714, 111, -329.095, -757.198, 53.9338, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2714, 112, -306.397, -749.76, 55.0387, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2714, 113, -283.246, -742.144, 56.3862, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2714, 114, -261.079, -736.225, 57.3863, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2714, 115, -238.285, -728.679, 59.7081, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2714, 116, -217.396, -724.291, 61.1619, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2714, 117, -194.585, -720.292, 62.9509, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2714, 118, -168.563, -717.507, 63.8219, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2714, 119, -143.54, -716.926, 64.5743, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2714, 120, -121.262, -715.436, 65.0539, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2714, 121, -103.217, -714.433, 65.6849, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2714, 122, -83.7947, -716.256, 67.7521, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2714, 123, -55.7237, -717.824, 68.3858, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2714, 124, -37.7359, -717.177, 68.8162, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2714, 125, -20.8566, -715.646, 69.6487, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2714, 126, -19.3454, -737.185, 66.2499, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2714, 127, -23.3655, -754.497, 63.2959, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2714, 128, -20.4435, -774.219, 60.514, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2714, 129, -15.7118, -797.856, 59.1134, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2714, 130, -27.1062, -812.163, 57.6985, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2714, 131, -41.3255, -822.638, 57.2298, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2714, 132, -49.3104, -830.318, 56.7083, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2714, 133, -53.9139, -849.61, 56.2823, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2714, 134, -50.7795, -866.499, 55.5527, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2714, 135, -38.2028, -879.623, 55.9823, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2714, 136, -27.0322, -897.13, 56.0546, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2714, 137, -34.2067, -925.81, 54.4792, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2714, 138, -29.5594, -903.929, 55.8488, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2714, 139, -26.8398, -898.496, 56.0196, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2714, 140, -31.7251, -885.731, 56.1816, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2714, 141, -40.1649, -877.837, 55.869, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2714, 142, -49.5997, -867.836, 55.5481, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2714, 143, -53.4713, -854.701, 56.1316, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2714, 144, -51.7552, -841.862, 56.4625, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2714, 145, -48.6345, -831.804, 56.7925, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2714, 146, -41.0816, -822.981, 57.2493, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2714, 147, -30.2082, -815.517, 57.6478, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2714, 148, -22.6025, -806.694, 58.2226, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2714, 149, -16.4379, -794.379, 59.3003, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2714, 150, -19.5654, -777.697, 60.2803, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2714, 151, -21.5772, -766.513, 61.3444, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2714, 152, -22.1474, -757.894, 62.6949, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2714, 153, -22.6783, -749.868, 64.0552, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2714, 154, -17.9657, -735.652, 66.5774, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2714, 155, -18.1532, -725.26, 68.572, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2714, 156, -42.2745, -717.266, 68.6378, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2714, 157, -58.7396, -717.621, 68.3486, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2714, 158, -84.6225, -717.085, 67.7013, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2714, 159, -102.899, -713.896, 65.7144, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2714, 160, -131.294, -715.311, 64.6619, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2714, 161, -152.246, -715.757, 64.2004, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2714, 162, -180.717, -717.776, 63.433, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2714, 163, -197.684, -720.521, 62.8026, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2714, 164, -237.492, -727.512, 59.8306, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2714, 165, -250.763, -732.894, 58.1296, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2714, 166, -272.61, -738.87, 56.745, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2714, 167, -291.292, -743.742, 56.2312, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2714, 168, -314.511, -751.487, 54.4269, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2714, 169, -329.484, -757.703, 53.9044, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2714, 170, -342.01, -763.169, 53.7313, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2714, 171, -356.287, -768.761, 54.1709, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2714, 172, -370.384, -775.427, 54.3303, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2714, 173, -383.045, -781.402, 54.5855, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2714, 174, -391.295, -793.615, 54.5258, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2714, 175, -410.179, -822.363, 53.6656, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2714, 176, -419.268, -835.096, 52.6884, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2714, 177, -435.612, -854.063, 48.492, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2714, 178, -454.754, -877.825, 42.2999, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2714, 179, -463.724, -889.425, 39.273, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2714, 180, -471.807, -902.079, 36.6771, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2714, 181, -480.11, -919.018, 34.3985, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2714, 182, -484.223, -930.731, 33.8556, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2714, 183, -487.821, -944.686, 34.6344, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2714, 184, -491.223, -958.187, 33.7721, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2714, 185, -493.69, -971.071, 35.4031, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2714, 186, -497.879, -1004.78, 41.1823, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2714, 187, -508.814, -1037.42, 48.0167, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2714, 188, -527.541, -1062, 53.8628, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2714, 189, -537.491, -1070.68, 56.0368, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2714, 190, -551.392, -1085.64, 58.5456, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2714, 191, -565.147, -1103.15, 61.9713, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2714, 192, -579.849, -1135.63, 65.9431, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2714, 193, -590.132, -1166.04, 66.2493, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2714, 194, -596.236, -1182.78, 66.0964, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2714, 195, -614.397, -1221.2, 65.8731, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2714, 196, -626.914, -1250.82, 66.068, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2714, 197, -638.4, -1271.01, 66.0958, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2714, 198, -653.376, -1295.8, 66.0952, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2714, 199, -665.096, -1315.91, 66.1717, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2714, 200, -680.326, -1334.78, 67.1556, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2714, 201, -691.768, -1349.1, 67.52, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2714, 202, -702.438, -1363.34, 67.7172, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2714, 203, -712.434, -1377.65, 68.2276, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2714, 204, -728.854, -1396.59, 68.516, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2714, 205, -739.632, -1411.79, 67.7564, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2714, 206, -751.651, -1436.22, 66.1343, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2714, 207, -759.313, -1452.14, 64.9045, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2714, 208, -769.727, -1475.43, 61.8476, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2714, 209, -775.857, -1472.24, 61.6528, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2714, 210, -779.822, -1501.51, 58.0143, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2714, 211, -789.189, -1520.89, 55.8284, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2714, 212, -800.791, -1537.79, 54.5143, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2714, 213, -817.1, -1560.64, 54.1677, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2714, 214, -837.953, -1586.99, 54.2379, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2714, 215, -857.519, -1609.34, 52.9475, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2714, 216, -874.996, -1624.56, 51.38, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2714, 217, -894.31, -1643.68, 48.8353, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2714, 218, -919.455, -1662.01, 44.792, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2714, 219, -945.703, -1677.03, 40.7389, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2714, 220, -963.93, -1680.01, 39.0058, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2714, 221, -983.874, -1683.33, 37.5075, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2714, 222, -999.692, -1685.51, 36.9831, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2714, 223, -1036.24, -1684.37, 36.8375, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2714, 224, -1054.91, -1685.55, 37.7461, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2714, 225, -1078.69, -1689.26, 39.5563, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2714, 226, -1097.07, -1694.42, 42.3212, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2714, 227, -1120.54, -1700.96, 45.8411, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2714, 228, -1140.44, -1707.71, 49.2567, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2714, 229, -1159.31, -1713.56, 52.2294, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2714, 230, -1174.53, -1720.55, 54.5052, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2714, 231, -1188.02, -1728.56, 55.9451, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2714, 232, -1205.73, -1745.37, 58.6121, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2714, 233, -1218.55, -1757.25, 61.115, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2714, 234, -1231.55, -1768.4, 63.2526, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2714, 235, -1242.36, -1775.93, 64.9296, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2714, 236, -1252.86, -1783.36, 66.0756, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2714, 237, -1260.44, -1787.4, 66.5929, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2714, 238, -1275.6, -1795.42, 67.118, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2714, 239, -1290, -1804.24, 66.6755, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2714, 240, -1303.54, -1812.98, 65.6033, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2714, 241, -1315.11, -1822.59, 64.5961, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2714, 242, -1328.27, -1847.54, 62.6855, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2714, 243, -1333.05, -1868.49, 61.419, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2714, 244, -1343.09, -1895.95, 59.2767, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2714, 245, -1358.91, -1935.26, 58.4154, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2714, 246, -1375.68, -1976.29, 58.5213, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2714, 247, -1378.03, -1997.88, 59.1664, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2714, 248, -1380.58, -2016.68, 60.0877, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2714, 249, -1383.06, -2044.73, 61.3712, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2714, 250, -1385.59, -2088.69, 63.3174, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2714, 251, -1388.98, -2120.99, 64.3619, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2714, 252, -1397.34, -2173.94, 64.0248, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2714, 253, -1405.95, -2206.46, 63.8549, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2714, 254, -1414.15, -2230.97, 63.7498, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2714, 255, -1419.13, -2247.36, 63.7265, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2714, 256, -1436.13, -2269.96, 63.172, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2714, 257, -1446.46, -2285.34, 62.0004, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2714, 258, -1451.21, -2341.52, 61.6354, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2714, 259, -1452.09, -2381.52, 61.3955, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2714, 260, -1455.27, -2415.33, 59.501, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2714, 261, -1491.5, -2449.54, 53.7445, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2714, 262, -1527.64, -2481.11, 53.4464, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2714, 263, -1548.23, -2497.45, 54.3668, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2714, 264, -1554.14, -2515.48, 53.355, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2714, 265, -1569.79, -2546.47, 50.6577, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2714, 266, -1566.68, -2580.34, 48.8555, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2714, 267, -1556.57, -2610.53, 47.0171, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2714, 268, -1556.02, -2635.79, 42.3344, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2714, 269, -1556.44, -2652.58, 38.8827, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2714, 270, -1561.32, -2682.03, 35.8352, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2714, 271, -1578.73, -2700.68, 35.012, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2714, 272, -1590.13, -2713.96, 36.5028, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2714, 273, -1606.95, -2739.03, 37.6155, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2714, 274, -1611.22, -2767.07, 36.7336, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2714, 275, -1618.11, -2800.14, 34.9466, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2714, 276, -1623.74, -2829.92, 33.0364, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2714, 277, -1628.17, -2851.04, 31.8945, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2714, 278, -1632.48, -2864.36, 30.6142, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2714, 279, -1638.53, -2880.53, 28.1107, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2714, 280, -1645.49, -2900.98, 26.1461, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2714, 281, -1639.82, -2927.5, 27.7763, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2714, 282, -1640.81, -2941.86, 28.635, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2714, 283, -1643.95, -2959.08, 27.7981, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2714, 284, -1647.59, -2980.73, 25.4715, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2714, 285, -1645.33, -2994.99, 22.6038, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2714, 286, -1637.13, -3010.4, 19.9599, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2714, 287, -1620.94, -3027.39, 16.016, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2714, 288, -1601.97, -3047.96, 14.6215, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2714, 289, -1579.55, -3062.51, 12.8546, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2714, 290, -1569.38, -3064.85, 13.1662, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2714, 291, -1561.72, -3059.28, 13.8668, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2714, 292, -1562.85, -3059.83, 13.8148, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2714, 293, -1580.38, -3054.6, 13.1464, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2714, 294, -1594.05, -3051.63, 13.6523, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2714, 295, -1605.93, -3041.86, 15.0334, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2714, 296, -1610.77, -3037.09, 15.2668, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2714, 297, -1623.2, -3024.77, 16.2679, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2714, 298, -1630.35, -3017.34, 18.3289, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2714, 299, -1638.45, -3008.13, 20.3711, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2714, 300, -1643.04, -2998.71, 21.8709, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2714, 301, -1646.56, -2986.08, 24.4341, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2714, 302, -1646.41, -2979.09, 25.6155, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2714, 303, -1644.95, -2965.18, 27.2158, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2714, 304, -1641.24, -2951.71, 28.2171, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2714, 305, -1637.58, -2929.25, 27.9499, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2714, 306, -1645.36, -2902.78, 26.1698, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2714, 307, -1636.21, -2876.64, 28.5095, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2714, 308, -1627.86, -2852.92, 31.7405, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2714, 309, -1622.3, -2834.38, 32.6999, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2714, 310, -1618.27, -2811.77, 34.4159, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2714, 311, -1612.1, -2776.8, 36.1704, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- Updated spawns of creature 61 (Thuros Lightfingers) as it was wielding the wrong equipment
-- Source: http://www.wowhead.com/npc=61
UPDATE `creature` SET `modelid` = 0, `equipment_id` = 0 WHERE `id` = 61;
-- Made one of the spawn sit
-- Source: http://www.wowhead.com/npc=61
DELETE FROM `creature_addon` WHERE guid = 134011;
INSERT INTO `creature_addon` VALUES (134011, 0, 1, 1, 16, 0, 0, NULL);
-- Updated rank of creature 61 (Thuros Lightfingers) as it is rare but not elite
-- Source: http://www.wowhead.com/npc=61
UPDATE `creature_template` SET `rank` = 4 WHERE `entry` = 61;

DELETE FROM `gameobject_loot_template` WHERE `entry` = 3450 AND `item` IN (5897, 6684); -- Crate with Holes

UPDATE `creature_model_info` SET `modelid_other_gender` = 0 WHERE `modelid` = 3494;

-- Added gossip menu to creature 16381 (Archmage Tarsis) in Naxxramas
-- Source: http://www.wowwiki.com/Tarsis_Kir-Moldir
-- Text data already present in DB
-- Thanks to Ela for adding the gossip menus and option
UPDATE `creature_template` SET `gossip_menu_id`= 8400, `npcflag` = `npcflag` |1 WHERE `entry` = 16381;

-- Added addon to creature 16381 (Archmage Tarsis) to make him lie on the ground
DELETE FROM `creature_template_addon` WHERE `entry` = 16381;
INSERT INTO `creature_template_addon` VALUES (16381, 0, 7, 1, 16, 0, 0, NULL);

-- Added gossip script to make creature 16381 (Archmage Tarsis) sit when talk to
DELETE FROM `dbscripts_on_gossip` WHERE `id` = 8400;
INSERT INTO `dbscripts_on_gossip` VALUES
(8400, 1, 28, 1, 0, 16381, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Archmage Tarsis - sits');

-- Added gossip menus for creature 16381 (Archmage Tarsis)
-- Thanks Ela
DELETE FROM `gossip_menu` WHERE `entry` IN (8409, 8408, 8407, 8406, 8405, 8404, 8403, 8402, 8401, 8400);
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES
(8400, 8517, 8400, 0),
(8401, 8518, 0, 0),
(8402, 8519, 0, 0),
(8403, 8520, 0, 0),
(8404, 8521, 0, 0),
(8405, 8522, 0, 0),
(8406, 8523, 0, 0),
(8407, 8529, 0, 0),
(8408, 8530, 0, 0),
(8409, 8531, 0, 0);


-- Added gossip menu options for creature 16381 (Archmage Tarsis)
-- Thanks Ela
DELETE FROM `gossip_menu_option` WHERE `menu_id` IN (8408, 8407, 8406, 8405, 8404, 8403, 8402, 8401, 8400);
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `box_coded`, `box_money`, `box_text`, `condition_id`) VALUES
(8408, 0, 0, 'So Kel\'Thuzad holds all of the pieces?', 1, 1, 8409, 0, 0, 0, NULL, 0),
(8407, 0, 0, 'So what has led you to Naxxramas?', 1, 1, 8408, 0, 0, 0, NULL, 0),
(8406, 0, 0, 'What happened to the staff?', 1, 1, 8407, 0, 0, 0, NULL, 0),
(8405, 0, 0, 'You said you would have it back. What does that mean?', 1, 1, 8406, 0, 0, 0, NULL, 0),
(8404, 0, 0, 'What staff?', 1, 1, 8405, 0, 0, 0, NULL, 0),
(8403, 0, 0, 'You are talking nonsense, mage.', 1, 1, 8404, 0, 0, 0, NULL, 0),
(8402, 0, 0, 'I still do not understand.', 1, 1, 8403, 0, 0, 0, NULL, 0),
(8401, 0, 0, 'Why have you done such horrible things?', 1, 1, 8402, 0, 0, 0, NULL, 0),
(8400, 0, 0, 'What are you talking about, mage?', 1, 1, 8401, 0, 0, 0, NULL, 0);

-- Fixed level and health of creature 14984 (Sergeant Maclear) in Arathi Highlands because
-- she wrongly was level 1 with 64 hit points
-- Source: UDB for HP
UPDATE `creature_template` SET `minlevel` = 62, `maxlevel` = 62, `minhealth` = 3237, `maxhealth` = 3237 WHERE `entry` = 14984;
UPDATE `creature` SET `curhealth` = 3237 WHERE `id` = 14984;

UPDATE `creature_template` SET `InhabitType` = 2 WHERE `entry` = 8236;

UPDATE `creature_template` SET `faction_A` = 654, `faction_H` = 654, `rank` = 4 WHERE `entry` = 2606;

UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -40 WHERE `item` = 7273;

UPDATE `creature` SET `spawndist` = 8, `MovementType` = 1 WHERE `id` = 16024;

-- Quests available only after 9233 Omarions Handbook
-- Source: http://www.wowwiki.com/Omarion%27s_Handbook
-- Thanks Ela for pointing and fixing
UPDATE `quest_template` SET `PrevQuestId` = 9233 WHERE `entry` IN (9234, 9235, 9236, 9237, 9238, 9239, 9240, 9241, 9242, 9243, 9244, 9245, 9246);

-- Fixed texts for quest 9238 (Glacial Wrists) as they were wrong (different from the 13 others)
-- New texts copied from other similar quest in same quest chain
UPDATE `quest_template` SET `OfferRewardText` = 'Here is your order, $N. Delivered as promised!', `RequestItemsText` = 'Have you brought the materials?' WHERE `entry` = 9238;

-- Added cloud disease ability to creature 16029 (Sludge Belcher) in Naxxramas
-- Source: http://www.wowhead.com/npc=16029#abilities
-- Thanks Metalica for pointing
DELETE FROM `creature_template_addon` WHERE `entry` = 16029;
INSERT INTO `creature_template_addon` VALUES
(16029, 0, 0, 1, 16, 0, 0, '28362');
 
-- Added cloud disease ability to creature 16017 (Patchwork Golem) in Naxxramas
-- Source: http://www.wowhead.com/npc=16017#abilities
DELETE FROM `creature_template_addon` WHERE `entry` = 16017;
INSERT INTO `creature_template_addon` VALUES
(16017, 0, 0, 1, 16, 0, 0, '27793');

UPDATE `creature` SET `spawntimesecs` = 3520 WHERE `id` = 16861;
UPDATE `gameobject_template` SET `data0` = 0, `faction` = 0 WHERE `entry` = 181126;
UPDATE `gameobject` SET `state` = 1 WHERE `id` = 181126;

-- Improved waypoint movement of creature 15931 (Grobbulus) in Naxxramas to make it
-- spawn three creatures 16375 (Sewage Slime) instead of one
-- Also moved waypoint movement from creature_movement to creature_movement_template
-- as creature 15931 is unique
-- Source: http://www.youtube.com/watch?v=agWfYn0piY8
DELETE FROM `creature_movement` WHERE `id` = 88303;
DELETE FROM `creature_movement_template` WHERE `entry` = 15931;
INSERT INTO `creature_movement_template` VALUES
(15931, 1, 3205.45, -3341.86, 320.177, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.55799, 0, 0),
(15931, 2, 3205.57, -3306.46, 320.333, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.10619, 0, 0),
(15931, 3, 3180.08, -3306.33, 320.095, 60000, 1593101, 0, 0, 0, 0, 0, 0, 0, 0, 3.16902, 0, 0),
(15931, 4, 3205.57, -3306.46, 320.333, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.10619, 0, 0),
(15931, 5, 3205.45, -3341.86, 320.177, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.55799, 0, 0),
(15931, 6, 3205.06, -3377.29, 311.328, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.72411, 0, 0),
(15931, 7, 3218.09, -3387.23, 311.328, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.086909, 0, 0),
(15931, 8, 3227.38, -3377.29, 311.328, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.57074, 0, 0),
(15931, 9, 3228.32, -3341.07, 292.596, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.57466, 0, 0),
(15931, 10, 3228.81, -3309.42, 292.596, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6.24464, 0, 0),
(15931, 11, 3255.3, -3310.34, 292.596, 60000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6.27998, 0, 0),
(15931, 12, 3228.81, -3309.42, 292.596, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 6.24464, 0, 0),
(15931, 13, 3228.32, -3341.07, 292.596, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.57466, 0, 0),
(15931, 14, 3228.05, -3378.03, 311.326, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.57074, 0, 0),
(15931, 15, 3218.09, -3387.23, 311.328, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.086909, 0, 0),
(15931, 16, 3205.06, -3377.29, 311.328, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.55799, 0, 0);
-- Movement script for Grobbulus
DELETE FROM `dbscripts_on_creature_movement` WHERE `id` = 1593101;
INSERT INTO `dbscripts_on_creature_movement` VALUES
(1593101, 1, 15, 28280, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'cast summon sewage slime'),
(1593101, 3, 15, 28280, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'cast summon sewage slime'),
(1593101, 5, 15, 28280, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'cast summon sewage slime');

-- Make the creature 16375 (Sewage Slime) moves randomly and fixes its size
UPDATE `creature_template` SET `MovementType` = 1, `scale` = 2 WHERE `entry` = 16375;
-- Removed wrong spawns of creature 16375 (Sewage Slime): they are summoned by the script above
DELETE FROM `creature` WHERE `id` = 16375;

UPDATE `creature_equip_template_raw` SET `equipslot1` = 781, `equipinfo1` = 33490690 WHERE `entry` = 142;

-- Removed spawns of creature 16290 (Fallout Slime) as they are spawned during
-- the Grobbulus encounter
-- Source: http://www.wowhead.com/npc=16290#comments
DELETE FROM `creature` WHERE `id` = 16290;

-- Removed creatures of the left of the sewage room in Construct Quarter because
-- there were none in Classic version
-- Source: http://www.youtube.com/watch?v=iA_de7CcIrQ
DELETE FROM `creature` WHERE `guid` IN (88265, 88271, 88266);

-- Removed duplicate Sludge Belcher in embalming room in Construct Quarter
-- Added missing patrolling Bile Retcher along the slime in Patchwerk room
-- Source: http://www.youtube.com/watch?v=iA_de7CcIrQ
DELETE FROM `creature` WHERE `guid` = 88722;
INSERT INTO `creature` VALUES
(88722, 16018, 533, 0, 0, 3048.83, -3241.84, 293.346, 1.80722, 25, 0, 0, 106795, 0, 0, 2);

-- Changed first Bile Retcher patrolling in Patchwerk room to Sludge Belcher
-- Sources:
-- http://www.youtube.com/watch?v=IbRODBLeqk4
-- http://www.youtube.com/watch?v=agWfYn0piY8
-- http://www.youtube.com/watch?v=YtLkzm3eELs
-- http://www.youtube.com/watch?v=iA_de7CcIrQ
UPDATE `creature` SET `id` = 16029, `curhealth` = 81453 WHERE `guid` = 88723;

-- Linked the first group of Patchwork Golems
DELETE FROM `creature_linking` WHERE `guid` IN (88262, 88261, 88264);
INSERT INTO `creature_linking` VALUES
(88262, 88263, 3),
(88261, 88263, 3),
(88264, 88263, 3);

-- Linked the abominations in right side of sewage room
DELETE FROM `creature_linking` WHERE `guid` IN (88268, 88267);
INSERT INTO `creature_linking` VALUES
(88268, 88272, 3),
(88267, 88272, 3);

-- Linked the second group of Patchwork Golems (back of sewage room
DELETE FROM `creature_linking` WHERE `guid` IN (88278, 88279, 88280);
INSERT INTO `creature_linking` VALUES
(88278, 88281, 3),
(88279, 88281, 3),
(88280, 88281, 3);

-- Added waypoint movement and patrol to creatures in Naxxramas Construct Wing
-- Sources:
-- http://www.youtube.com/watch?v=IbRODBLeqk4
-- http://www.youtube.com/watch?v=agWfYn0piY8
-- http://www.youtube.com/watch?v=YtLkzm3eELs
-- http://www.youtube.com/watch?v=iA_de7CcIrQ

-- ---------------------------------------
-- Construct Wing entrance and Sewage Room
-- ---------------------------------------

-- Bile Retcher patrolling across the entrance and sewage room
UPDATE `creature` SET `MovementType` = 2 WHERE `guid` = 88269;
DELETE FROM `creature_movement` WHERE `id` = 88269;
INSERT INTO `creature_movement` VALUES
(88269, 1, 3098.54, -3342.14, 294.532, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.70159, 0, 0),
(88269, 2, 3108.96, -3318.47, 293.629, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.03595, 0, 0),
(88269, 3, 3122.68, -3287.7, 293.629, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.22602, 0, 0),
(88269, 4, 3133.19, -3259.06, 294.505, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.26394, 0, 0),
(88269, 5, 3120.88, -3288.93, 293.629, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.28593, 0, 0),
(88269, 6, 3108.98, -3324.68, 293.629, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.1045, 0, 0),
(88269, 7, 3098.54, -3342.14, 294.532, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.08251, 0, 0),
(88269, 8, 3076.13, -3365.25, 298.318, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.96942, 0, 0),
(88269, 9, 3064.48, -3375.94, 298.318, 10000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.938, 0, 0),
(88269, 10, 3075.35, -3365.5, 298.318, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.764993, 0, 0);

-- Bile Retcher patrolling only in sewage room
UPDATE `creature` SET `MovementType` = 2 WHERE `guid` = 88270;
DELETE FROM `creature_movement` WHERE `id` = 88270;
INSERT INTO `creature_movement` VALUES
(88270, 1, 3116.33, -3321.32, 293.629, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.42061, 0, 0),
(88270, 2, 3099.02, -3305.01, 293.629, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.42061, 0, 0),
(88270, 3, 3119.91, -3326.92, 293.629, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.58184, 0, 0),
(88270, 4, 3133.27, -3340.26, 293.629, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.46108, 0, 0),
(88270, 5, 3136.21, -3342.25, 293.629, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.40117, 0, 0),
(88270, 6, 3169.74, -3300.18, 294.607, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.30692, 0, 0),
(88270, 7, 3136.21, -3342.25, 293.629, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.40117, 0, 0),
(88270, 8, 3122.67, -3328.53, 293.629, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.28807, 0, 0);

-- Sludge Belcher patrolling in the back of the sewage room and in embalming room
UPDATE `creature` SET `MovementType` = 2 WHERE `guid` = 88720;
DELETE FROM `creature_movement` WHERE `id` = 88720;
INSERT INTO `creature_movement` VALUES
(88720, 1, 3169.74, -3300.18, 294.607, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.30692, 0, 0),
(88720, 2, 3146.05, -3274.03, 294.62, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.30692, 0, 0),
(88720, 3, 3131.16, -3265.35, 294.505, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.95566, 0, 0),
(88720, 4, 3133.01, -3244.84, 294.088, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.35162, 0, 0),
(88720, 5, 3111.14, -3232.83, 294.062, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.32215, 0, 0),
(88720, 6, 3100.13, -3217.02, 294.062, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.39422, 0, 0),
(88720, 7, 3089.23, -3218.59, 294.194, 10000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.36752, 0, 0),
(88720, 8, 3100.13, -3217.02, 294.062, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.39422, 0, 0),
(88720, 9, 3111.14, -3232.83, 294.062, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.32215, 0, 0),
(88720, 10, 3133.01, -3244.84, 294.088, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.35162, 0, 0),
-- (88720, 4, 3115.58, -3267.74, 294.402, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.2227, 0, 0),
(88720, 11, 3134.98, -3265.76, 294.504, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.89384, 0, 0),
(88720, 12, 3155.97, -3287.14, 294.895, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.56397, 0, 0),
(88720, 13, 3176.8, -3310.56, 294.535, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.44851, 0, 0);

-- ---------------------------------------
-- Embalming Room
-- ---------------------------------------

-- Sludge Belcher patrolling in the embalming room
UPDATE `creature` SET `MovementType` = 2 WHERE `guid` = 88721;
DELETE FROM `creature_movement` WHERE `id` = 88721;
INSERT INTO `creature_movement` VALUES
(88721, 12, 3126.77, -3180.29, 294.062, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.31439, 0, 0),
(88721, 11, 3116.83, -3183.31, 294.062, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.74322, 0, 0),
(88721, 10, 3107.8, -3189.61, 294.062, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.13592, 0, 0),
(88721, 9, 3101.08, -3208.57, 294.062, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.60716, 0, 0),
(88721, 8, 3105.41, -3226.72, 294.062, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.20563, 0, 0),
(88721, 7, 3116.79, -3239.36, 294.062, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.80882, 0, 0),
(88721, 6, 3137.12, -3244.54, 294.088, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.404492, 0, 0),
(88721, 5, 3153.32, -3235.47, 294.063, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.740643, 0, 0),
(88721, 4, 3163.48, -3220.17, 294.063, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.31712, 0, 0),
(88721, 3, 3164.48, -3204.92, 294.063, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.9745, 0, 0),
(88721, 2, 3155.1, -3188.16, 294.063, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.48815, 0, 0),
(88721, 1, 3141.54, -3181.26, 294.063, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.0183, 0, 0);

-- ---------------------------------------
-- Patchwerk Room
-- ---------------------------------------

-- Bile Retcher patrolling along the slime
UPDATE `creature` SET `MovementType` = 2 WHERE `guid` = 88722;
DELETE FROM `creature_movement` WHERE `id` = 88722;
INSERT INTO `creature_movement` VALUES
(88722, 1, 3048.88, -3242.07, 293.346, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.80722, 0, 0),
(88722, 2, 3043.97, -3211.98, 293.345, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.51034, 0, 0),
(88722, 3, 3050.71, -3176.3, 293.345, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.2111, 0, 0),
(88722, 4, 3065.25, -3148.93, 293.346, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.878878, 0, 0),
(88722, 5, 3083.83, -3128.89, 293.937, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.369154, 0, 0),
(88722, 6, 3123.61, -3119.76, 293.346, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.092694, 0, 0),
(88722, 7, 3083.83, -3128.89, 293.937, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.369154, 0, 0),
(88722, 8, 3065.25, -3148.93, 293.346, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.878878, 0, 0),
(88722, 9, 3050.71, -3176.3, 293.345, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.2111, 0, 0),
(88722, 10, 3043.97, -3211.98, 293.345, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.51034, 0, 0);

-- Sludge Belcher in first alcolve
UPDATE `creature` SET `MovementType` = 2 WHERE `guid` = 88723;
DELETE FROM `creature_movement` WHERE `id` = 88723;
INSERT INTO `creature_movement` VALUES
(88723, 1, 3028.88, -3235.05, 294.063, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.61164, 0, 0),
(88723, 2, 3027.91, -3204.52, 294.063, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.57316, 0, 0),
(88723, 3, 3025.13, -3176.58, 294.063, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.73319, 0, 0),
(88723, 4, 2993.15, -3175.62, 294.063, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.0285, 0, 0),
(88723, 5, 2999.2, -3223.27, 294.063, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.87419, 0, 0),
(88723, 6, 3003.41, -3243.44, 294.063, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.12866, 0, 0),
(88723, 7, 3021.94, -3238.09, 294.063, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0.383282, 0, 0);

-- Bile Retcher in middle alcolve
UPDATE `creature` SET `MovementType` = 2 WHERE `guid` = 88718;
DELETE FROM `creature_movement` WHERE `id` = 88718;
INSERT INTO `creature_movement` VALUES
(88718, 1, 3020.24, -3120.13, 294.075, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.62896, 0, 0),
(88718, 2, 3038.54, -3134.17, 294.075, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.62896, 0, 0),
(88718, 3, 3052.1, -3128.79, 294.064, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.06953, 0, 0),
(88718, 4, 3040.62, -3102.68, 294.075, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.2329, 0, 0),
(88718, 5, 3026.44, -3110.25, 294.065, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.10136, 0, 0);

-- Bile Retcher in last alcolve
UPDATE `creature` SET `MovementType` = 2 WHERE `guid` = 88719;
DELETE FROM `creature_movement` WHERE `id` = 88719;
INSERT INTO `creature_movement` VALUES
(88719, 1, 3065.85, -3080.8, 294.074, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.13416, 0, 0),
(88719, 2, 3075.07, -3104.07, 294.074, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5.19699, 0, 0),
(88719, 3, 3099.77, -3100.41, 294.071, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.04676, 0, 0),
(88719, 4, 3088, -3070.5, 294.073, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2.04676, 0, 0),
(88719, 5, 3073.47, -3071.07, 294.064, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3.4919, 0, 0);

-- Two fixes for creatures involved in Anub'Rekhan encounter in Naxxramas

-- Added AI scripts to creature 16573 (Crypt Guard) in Anub'Rehkan encounter in Naxxramas
-- Source: http://www.wowhead.com/npc=16573#abilities
-- Script adapted from ACID wotlk
UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = 16573;
DELETE FROM `creature_ai_scripts` WHERE `id` IN (1657301, 1657302, 1657303, 1657304);
INSERT INTO `creature_ai_scripts` VALUES
(1657301, 16573, 0, 0, 100, 2, 0, 0, 0, 0, 11, 28969, 4, 32, 0, 0, 0, 0, 0, 0, 0, 0, 'Crypt Guard - Cast Acid Spit on Aggro'),
(1657302, 16573, 0, 0, 100, 3, 4000, 6000, 4000, 7000, 11, 28969, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Crypt Guard - Cast Acid Spit'),
(1657303, 16573, 0, 0, 100, 7, 7000, 9000, 7000, 9000, 11, 20691, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Crypt Guard - Cast Cleave'),
(1657304, 16573, 2, 0, 100, 7, 30, 0, 120000, 120000, 11, 8269, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 'Crypt Guard - Cast Frenzy at 30% HP');

-- Reduced damage of creature 16698 (Corpse Scarab) because their damage level was for WotLK (about 2k)
-- instead of the 400 it should be in Classic
UPDATE `creature_template` SET `dmg_multiplier` = 0.25 WHERE `entry` = 16698;

-- Fixed creature 16027 (Living Poison) as they were level 61 in Classic
-- Assigned an AI script to the creature
-- Enable waypoint movement
-- http://www.wowhead.com/npc=16027#comments
-- http://www.wowwiki.com/Living_Poison
UPDATE `creature_template` SET `minlevel` = 61, `maxlevel` = 61, `AIName` = 'EventAI', `MovementType` = 2 WHERE `entry` = 16027;

-- Adjusted creature 16027 (Living Poison): the creatures are spread along three lines
-- marked from the falling green slime and they cross the walkway one after the other before teleporting
-- back to the beginning of the line. Related waypoint path are added below
UPDATE `creature` SET `MovementType` = 2, `spawndist` = 0, `spawntimesecs` = 10 WHERE `id` = 16027;
-- UPDATE `creature` SET `currentwaypoint` = 2 WHERE `guid` IN (128132, 128130);
-- DELETE FROM `creature` WHERE `guid` = 128127;
UPDATE `creature` SET `position_x` = 3151.98, `position_y` = -3133.71, `position_z` = 294.063 WHERE `guid` = 128134;
UPDATE `creature` SET `position_x` = 3128.88, `position_y` = -3129.69, `position_z` = 294.063 WHERE `guid` = 128126;
UPDATE `creature` SET `position_x` = 3128.88, `position_y` = -3129.69, `position_z` = 294.063 WHERE `guid` = 128130;

DELETE FROM `creature` WHERE `guid` IN (128123, 128124);
INSERT INTO `creature` VALUES
(128123, 16027, 533, 0, 0, 3148.33, -3147.28, 294.063, 4.50348, 10, 5, 0, 117297, 0, 0, 2),
(128124, 16027, 533, 0, 0, 3164.02, -3154.06, 294.063, 4.01967, 10, 5, 0, 117297, 0, 0, 2);

DELETE FROM `creature_movement` WHERE `id` IN (128125, 128126, 128127, 128128,128129,128130,128131, 128132, 128133, 128134, 128123, 128124);
INSERT INTO `creature_movement` VALUES
(128133, 1, 3128.62, -3118.06, 293.406, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.92026, 0, 0),
(128133, 2, 3128.96, -3156.31, 293.364, 0, 1602701, 0, 0, 0, 0, 0, 0, 0, 0, 4.76161, 0, 0),
(128126, 1, 3128.62, -3118.06, 293.406, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.92026, 0, 0),
(128126, 2, 3128.96, -3156.31, 293.364, 0, 1602701, 0, 0, 0, 0, 0, 0, 0, 0, 4.76161, 0, 0),
(128128, 1, 3128.62, -3118.06, 293.406, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.92026, 0, 0),
(128128, 2, 3128.96, -3156.31, 293.364, 0, 1602701, 0, 0, 0, 0, 0, 0, 0, 0, 4.76161, 0, 0),
(128127, 1, 3128.62, -3118.06, 293.406, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.92026, 0, 0),
(128127, 2, 3128.96, -3156.31, 293.364, 0, 1602701, 0, 0, 0, 0, 0, 0, 0, 0, 4.76161, 0, 0),
(128132, 1, 3154.11, -3125.35, 293.352, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.4875, 0, 0),
(128132, 2, 3145.81, -3158.1, 293.442, 0, 1602702, 0, 0, 0, 0, 0, 0, 0, 0, 4.50321, 0, 0),
(128134, 1, 3154.11, -3125.35, 293.352, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.4875, 0, 0),
(128134, 2, 3145.81, -3158.1, 293.442, 0, 1602702, 0, 0, 0, 0, 0, 0, 0, 0, 4.50321, 0, 0),
(128125, 1, 3154.11, -3125.35, 293.352, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.4875, 0, 0),
(128125, 2, 3145.81, -3158.1, 293.442, 0, 1602702, 0, 0, 0, 0, 0, 0, 0, 0, 4.50321, 0, 0),
(128123, 1, 3154.11, -3125.35, 293.352, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.4875, 0, 0),
(128123, 2, 3145.81, -3158.1, 293.442, 0, 1602702, 0, 0, 0, 0, 0, 0, 0, 0, 4.50321, 0, 0),
(128131, 1, 3175.19, -3134.8, 293.359, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.15371, 0, 0),
(128131, 2, 3158.03, -3164.36, 293.287, 0, 1602703, 0, 0, 0, 0, 0, 0, 0, 0, 4.15763, 0, 0),
(128130, 1, 3175.19, -3134.8, 293.359, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.15371, 0, 0),
(128130, 2, 3158.03, -3164.36, 293.287, 0, 1602703, 0, 0, 0, 0, 0, 0, 0, 0, 4.15763, 0, 0),
(128124, 1, 3175.19, -3134.8, 293.359, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.15371, 0, 0),
(128124, 2, 3158.03, -3164.36, 293.287, 0, 1602703, 0, 0, 0, 0, 0, 0, 0, 0, 4.15763, 0, 0),
(128129, 1, 3175.19, -3134.8, 293.359, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4.15371, 0, 0),
(128129, 2, 3158.03, -3164.36, 293.287, 0, 1602703, 0, 0, 0, 0, 0, 0, 0, 0, 4.15763, 0, 0);

-- Added 3 scripts (one by waypoint line of creatures) to make the creature 16027 (Living Poison)
-- teleports back to the beginning of waypoint path once it reach the end (path is not circular)
DELETE FROM `dbscripts_on_creature_movement` WHERE `id` IN (1602701, 1602702, 1602703);
INSERT INTO `dbscripts_on_creature_movement`VALUES
(1602701, 0, 3, 0, 0, 0, 0, 8, 0, 0, 0, 0, 3128.611, -3118.980, 293.429, 0, 'teleport Living Poison to start of the movement line 1'),
(1602702, 0, 3, 0, 0, 0, 0, 8, 0, 0, 0, 0, 3154.420, -3125.450, 293.435, 0, 'teleport Living Poison to start of the movement line 2'),
(1602703, 0, 3, 0, 0, 0, 0, 8, 0, 0, 0, 0, 3175.460, -3134.27, 293.366, 0, 'teleport Living Poison to start of the movement line 3');

-- Added spell 28433 (Explode) to creature 16027 (Living Poison)
-- This spell should trigger when player goes near the creature
-- Source: http://www.wowhead.com/npc=16027#abilities
DELETE FROM `creature_ai_scripts` WHERE `id` = 1602701;
INSERT INTO `creature_ai_scripts` VALUES
(1602701, 16027, 10, 0, 100, 0, 0, 5, 0, 0, 11, 28433, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Living Poison - Cast Explode on Hostile LOS');

-- Fixed gameobject 181126 (Anub'Rekhan Door): set data0 to 0 and state to 1 as
-- this object should be closed at spawn instead of open: players have to open it
-- in order to engage Anub'Rehkan
-- Thanks Metalica for pointing
-- Thanks Xfurry for fixing
UPDATE `gameobject_template` SET `data0` = 0, `faction` = 0 WHERE `entry` = 181126;
UPDATE `gameobject` SET `state` = 1 WHERE `id` = 181126;

-- Fixed scripts for quest 1022 (The Howling Vale) and quest 1043 (The Scythe of Elune)

-- Removed AI script for creature 3946 (Velinde Starsong)
-- because this NPC is spawned in two different quests and
-- and thus should not have the same script in both
-- The scripts are now handled by DB
DELETE FROM `creature_ai_scripts` WHERE `creature_id` = 3946;
DELETE FROM `creature_ai_texts` WHERE `entry` IN (-658, -659, -660);

UPDATE `creature_template` SET `AIName`= '', `equipment_id` = 25004 WHERE `entry` = 3946;

-- Defined DB string entries for easier backport
SET @STRING1 := 2000005240;
SET @STRING2 := 2000005241;
SET @STRING3 := 2000005242;
SET @STRING4 := 2000005243;
SET @STRING5 := 2000005244;

-- Added script for quest 1022 (The Howling Vale)
-- Source: http://www.wowwiki.com/Quest:The_Howling_Vale
-- http://www.wowhead.com/quest=1022
DELETE FROM `dbscripts_on_event` WHERE `id` = 663;
INSERT INTO `dbscripts_on_event` VALUES
(663, 0, 10, 3946, 22000, 0, 0, 0, 0, 0, 0, 0, 3161.682, -1211.122, 214.949, 4.669, 'spawn Velinde Starsong'),
(663, 2, 28, 8, 0, 3946, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'kneel'),
(663, 5, 0, 0, 0, 3946, 10, 0, @STRING1, 0, 0, 0, 0, 0, 0, 0, ''),
(663, 5, 1, 1, 0, 3946, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(663, 10, 0, 0, 0, 3946, 10, 0, @STRING2, 0, 0, 0, 0, 0, 0, 0, ''),
(663, 10, 1, 20, 0, 3946, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(663, 15, 0, 0, 0, 3946, 10, 0, @STRING3, 0, 0, 0, 0, 0, 0, 0, ''),
(663, 15, 1, 1, 0, 3946, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');

-- Added script for quest 1043 (The Scythe of Elune)
-- Source: http://www.wowwiki.com/Quest:The_Scythe_of_Elune
-- http://www.wowhead.com/quest=1043
DELETE FROM `dbscripts_on_event` WHERE `id` = 664;
INSERT INTO `dbscripts_on_event` VALUES
(664, 0, 10, 3946, 22000, 0, 0, 0, 0, 0, 0, 0, -11142.509, -1151.725, 43.598, 4.849, 'spawn Velinde Starsong'),
(664, 5, 0, 0, 0, 3946, 10, 0, @STRING4, 0, 0, 0, 0, 0, 0, 0, ''),
(664, 5, 1, 1, 0, 3946, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(664, 10, 0, 0, 0, 3946, 10, 0, @STRING5, 0, 0, 0, 0, 0, 0, 0, ''),
(664, 10, 1, 1, 0, 3946, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(664, 15, 1, 18, 0, 3946, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'cries');

-- Added DB strings for the scripts above
DELETE FROM `db_script_string` WHERE `entry` IN (@STRING1, @STRING2, @STRING3, @STRING4, @STRING5);
INSERT INTO `db_script_string` VALUES
(@STRING1, 'The numbers of my companions dwindles, goddess, and my own power shall soon be insufficient to hold back the demons of Felwood.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL),
(@STRING2, 'Goddess, grant me the power to overcome my enemies! Hear me, please, my need is desperate and my cause is just!', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL),
(@STRING3, 'What... what is this? Could this by the answer to my prayers? Elune has granted me a weapon -- this scythe -- to defeat the demons.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL),
(@STRING4, 'I have failed... I have failed in my duty... failed my people... The worgen run rampant, and the Scythe of my goddess is lost.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL),
(@STRING5, 'This evil I have unleashed... In whose hand does the power my goddess granted to me now lie... By whose hand is it directed?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 0, NULL);

UPDATE `creature_model_info` SET `modelid_other_gender` = 0 WHERE `modelid` = 5375;

-- Fixed quest 9422 (Scouring the Desert - Horde) which was autocompleting
-- Adapted from a fix by Ghurok

-- Added new creature (18199), data copied from Alliance equivalent creature
DELETE FROM `creature_template` WHERE `entry` = 18199;
INSERT INTO `creature_template` VALUES
(18199, 0, 0, 11686, 0, 'Silithus Dust Turnin Quest Doodad Horde', NULL, 0, 1, 1, 0, 0, 0, 0, 20, 35, 35, 0, 1.1, 1.14286, 0, 0, 2, 2, 0, 1, 1, 2000, 0, 1, 33555200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '', 0, 3, 0, 0, 1, 0, 0, 0, 0, 0, '');

-- Spawn the creature (18199)
-- Source: UDB
DELETE FROM `creature` WHERE `guid` = 42745;
INSERT INTO `creature` VALUES
(42745, 18199, 1, 0, 0, -7568.77, 763.379, -17.5984, 5.91667, 300, 0, 0, 42, 0, 0, 0);

-- Update the quest (9422)
UPDATE `quest_template` SET `ReqCreatureOrGOId1` = 18199, `ReqCreatureOrGOCount1` = 1 WHERE `entry` = 9422;

-- Adds spell script target for spell Trace of Silithyst (29534) for both Alliance and Horde counters
-- Backport from UDB and YTDB
DELETE FROM `spell_script_target` WHERE `entry` = 29534;
INSERT INTO `spell_script_target` (`entry`, `type`, `targetEntry`) VALUES
(29534, 0, 181618),        -- Alliance
(29534, 0, 181619);        -- Horde

