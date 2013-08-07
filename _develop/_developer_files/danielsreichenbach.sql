-- danielsreichenbach

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
