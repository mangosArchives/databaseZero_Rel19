-- Add the Revision update into the revision column
INSERT IGNORE INTO db_version SET `Version` = 'MaNGOSZero Database 2.0.11 Rev 20006_05';

--                         ******************        FIXES BY ARKADUS        ***************

-- Creature Skinnable Update - creatures that shouldnt be skinnable or lootable

UPDATE `creature_template`
SET `SkinningLootId` = 0
WHERE `Entry` = 1933 OR `Entry` = 15316 OR `Entry` = 7381 OR `Entry` = 7382 OR `Entry` = 7384 OR `Entry` = 7385 OR `Entry` = 7389 OR `Entry` = 7390 OR `Entry` = 2230 OR `Entry` = 7395 OR `Entry` = 7553 OR `Entry` = 7555 OR `Entry` = 7562 OR `Entry` = 7565 OR `Entry` = 7567 OR `Entry` = 8662 OR `Entry` = 12372 OR `Entry` = 12373 OR `Entry` = 12374 OR `Entry` = 14602 OR `Entry` = 14869 OR `Entry` = 15412 OR `Entry` = 1512 OR `Entry` = 1984 OR `Entry` = 2032 OR `Entry` = 2955 OR `Entry` = 3098 OR `Entry` = 708 OR `Entry` = 1985 OR `Entry` = 2961 OR `Entry` = 3124 OR `Entry` = 1513 OR `Entry` = 2966 OR `Entry` = 3281 OR `Entry` = 2098 OR `Entry` = 2954;

DELETE FROM `skinning_loot_template`
WHERE `entry` = 1933 OR `entry` = 2098;

-- NPC'S GUARDS AND CIVILIANS LOOT/GOLD UPDATE

UPDATE `creature_template` 
SET `MinLootGold` = 0, `MaxLootGold` = 0, `LootID` = 0
WHERE `Entry` = 5595 OR `Entry` = 15862 OR `Entry` = 14365 OR `Entry` = 14363 OR `Entry` = 14367 OR `Entry` = 2721 OR `Entry` = 3807 OR `Entry` = 15064 OR `Entry` = 2714 OR `Entry` = 3808 OR `Entry` = 3733 OR `Entry` = 15046 OR `Entry` = 3806 OR `Entry` = 3804 OR `Entry` = 15089 OR `Entry` = 15075 OR `Entry` = 3893 OR `Entry` = 3732 OR `Entry` = 15087 OR `Entry` = 3734 OR `Entry` = 15101 OR `Entry` = 11262 OR `UnitFlags` = 36864 OR `UnitFlags` = 4096 OR `Entry` = 15728 OR `Entry` = 15334 OR `Entry` = 15725 OR `Entry` = 15726 OR `Entry` = 15260 OR `Entry` = 15589;

-- Graveyard Updates for Alliance/Horde Cities

REPLACE INTO `game_graveyard_zone`
(`id`, `ghost_zone`, `faction`)
VALUES
(852, 1537, 469),
(853, 1497, 67);

UPDATE `game_graveyard_zone`
SET `id` = 469
WHERE `faction` = 67 AND `ghost_zone` = 1657;

UPDATE `game_graveyard_zone`
SET `id` = 429
WHERE `faction` = 469 AND `ghost_zone` = 85;

UPDATE `game_graveyard_zone`
SET `id` = 229
WHERE `faction` = 469 AND `ghost_zone` = 1638;

DELETE FROM game_graveyard_zone WHERE id = 101 AND ghost_zone = 1537 AND faction = 67;
DELETE FROM game_graveyard_zone WHERE id = 429 AND ghost_zone = 1497 AND faction = 469;

INSERT INTO `game_graveyard_zone` (`id`,`ghost_zone`,`faction`)
VALUES (101,1537,67),(429,1497,469);