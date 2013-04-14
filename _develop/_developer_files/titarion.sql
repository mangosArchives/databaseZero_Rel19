/* titarion
- Removed Mana Points from all Rogue Trainers.
- Significantly reduced the amount of Webwood Spiders in the Shadowthread Cave.
- Added randomized movement to a few Webwood Spiders and to Githyiss the Vile.
- Added the GameObject 'Naxxramas'. It can now be seen floating above Plaguewood.
- Removed Mana Points from all Auctioneers.
- Changed the gender of Crimson Courier to female.
- Repositioned Anduin Wrynn, Lady Katrana Prestor and Highlord Bolvar Fordragon.
- Removed Mana Points from Azuregos.
- Added proper gossip to Azuregos. Not 100% yet.
- Spirit of Azuregos is now flagged as a Boss.
- Changed the Min. Level of the quest 'The Scepter of Celebras' to 41, down from 43.
- Removed Mana Points from Cenarion Outrider.
*/

-- creature
/* Removed Mana Points from all Rogue Trainers.
   Sources: http://www.youtube.com/watch?v=ZFuaZVM_5Ik
            http://www.wowpedia.org/index.php?title=Rogue_trainers&oldid=410531
*/
UPDATE `creature` SET `curmana` = 0 WHERE `id` IN (915, 916, 917, 918, 1234, 1411, 2122, 2130, 3155, 3170, 3327, 3328, 3401, 3594, 3599, 4163, 4214, 4215, 4582, 4583, 4584, 5165, 5166, 5167, 13283);    
UPDATE `creature_template` SET `minmana` = 0, `maxmana` = 0 WHERE `subname` = 'Rogue Trainer';

/* Significantly reduced the amount of Webwood Spiders in the Shadowthread Cave.
   Added randomized movement to a few Webwood Spiders and to Githyiss the Vile.
   Source: http://www.youtube.com/watch?v=eqA2R8gsmPA&t=4m33s
*/
DELETE FROM `creature` WHERE `guid` IN (47013, 47061, 47015, 47016, 47017,  47262, 47263, 46996, 47004, 47005, 47007, 47030, 47031);
DELETE FROM `creature_addon` WHERE `guid` IN (47013, 47061, 47015, 47016, 47017,  47262, 47263, 46996, 47004, 47005, 47007, 47030, 47031);
UPDATE `creature` SET `MovementType` = 1, `spawndist` = 5 WHERE `guid` IN (47058, 47018, 47029, 47056, 47057, 47059, 47006, 47350);

/* Removed Mana Points from all Auctioneers.
   Source: http://www.youtube.com/watch?v=mHm-1tAsWuo
*/
UPDATE `creature` SET `curmana` = 0 WHERE `id` IN (8661, 8669, 8670, 8671, 8672, 8673, 8674, 8719, 8720, 8721, 8722, 8723, 8724, 9856, 9857, 9859, 15659, 15675, 15676, 15678, 15679, 15682, 15683, 15684, 15686);
UPDATE `creature_template` SET `minmana` = 0, `maxmana` = 0 WHERE `entry` IN (8661, 8669, 8670, 8671, 8672, 8673, 8674, 8719, 8720, 8721, 8722, 8723, 8724, 9856, 9857, 9859, 15659, 15675, 15676, 15678, 15679, 15682, 15683, 15684, 15686);

/* Changed the gender of Crimson Courier to female.
   Source: http://www.wowpedia.org/Crimson_Courier
*/
DELETE FROM `creature_model_info` WHERE `modelid` = 10502;
INSERT INTO `creature_model_info` VALUES
(10502, 0.208, 1.5, 1, 10500, 0);

UPDATE `creature_template` SET `MovementType` = 2 WHERE `entry` = 12337;

/* Repositioned Anduin Wrynn, Lady Katrana Prestor and Highlord Bolvar Fordragon.
   Source: http://www.youtube.com/watch?v=vAR71soxX5w
*/
UPDATE `creature` SET `position_x` = -8439.589844, `position_y` = 330.842 WHERE `id` = 1747;
UPDATE `creature` SET `position_x` = -8439.808594, `position_y` = 329.350 WHERE `id` = 1748;
UPDATE `creature` SET `position_x` = -8438.000000, `position_y` = 330.794 WHERE `id` = 1749;

/* Removed Mana Points from Azuregos.
   Added proper gossip to Azuregos. Not 100% yet.
   Spirit of Azuregos is now flagged as a Boss.
   TODO: Add proper gossip_menu_option and initiate combat once confirmed.
   Sources: http://project-zero.eu/images/gallery/WoWScrnShot_082106_152516.jpg
            http://project-zero.eu/images/gallery/WoWScrnShot_082106_153220.jpg
            MaNGOSZero Database
*/
UPDATE `creature` SET `curmana` = 0 WHERE `id` = 6109;
UPDATE `creature_template` SET `minmana` = 0, `maxmana` = 0, `npcflag` = 1 WHERE `entry` = 6109;
UPDATE `creature_template` SET `rank` = 3 WHERE `entry` = 15481;
DELETE FROM `npc_gossip` WHERE `npc_guid` = 52349 AND `textid` = 7880;
INSERT INTO `npc_gossip` VALUES
(52349, 7880);

/* Removed Mana Points from Cenarion Outrider
   Source: http://www.wowpedia.org/Cenarion_Outrider
*/
UPDATE `creature` SET `curmana` = 0 WHERE `id` = 15545;
UPDATE `creature_template` SET `minmana` = 0, `maxmana` = 0 WHERE `entry` = 15545;

-- gameobject
/* Added the GameObject 'Naxxramas'. It can now be seen floating above Plaguewood.
   Sources: http://www.wowwiki.com/File:Naxxramas-1.jpg
            Turtleswin
*/
DELETE FROM `gameobject` WHERE `id` = 181056;
INSERT INTO `gameobject` VALUES
(45843, 181056, 0, 3157.28, -3743.47, 236.951, 2.76712, 0, 0, 0.982523, 0.186143, 25, 100, 1);

-- items

-- quests
/* Changed the Min. Level of the quest 'The Scepter of Celebras' to 41, down from 43.
   Source: http://www.wowpedia.org/index.php?title=Quest:The_Scepter_of_Celebras&oldid=677982
*/
UPDATE `quest_template` SET `MinLevel` = 41 WHERE `entry` = 7046;
