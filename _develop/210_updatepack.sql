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

-- Crag Coyote Fang stacks now 20
UPDATE `item_template` SET `stackable` = 20 WHERE `entry` = 7846;

-- Added Fissure Plant loot
UPDATE `gameobject_template` SET `data1` = 3743 WHERE `entry` = 3743;
DELETE FROM `gameobject_loot_template` WHERE `entry` = 3743;
INSERT INTO `gameobject_loot_template` VALUES (3743,5066,100,0,1,1,0);

-- reimport frozen Runes
DELETE FROM `gameobject` WHERE `id` = 181287;
INSERT INTO `gameobject` VALUES (21612,181287,533,2617.62,-2953.47,241.381,0.739406,0,0,0.361338,0.932435,6380,100,1);
INSERT INTO `gameobject` VALUES (21613,181287,533,2482.83,-2896.52,241.282,2.26701,0,0,0.905903,0.423486,6380,100,1);
INSERT INTO `gameobject` VALUES (21614,181287,533,2455.52,-2978.11,241.287,3.86137,0,0,0.935936,-0.352171,6380,100,1);
INSERT INTO `gameobject` VALUES (21620,181287,533,2745.64,-3116.69,267.685,3.69249,0,0,0.962303,-0.271981,6380,100,1);
INSERT INTO `gameobject` VALUES (21621,181287,533,3339.69,-3334.2,292.595,4.8431,0,0,0.659415,-0.751779,6380,100,1);
INSERT INTO `gameobject` VALUES (21622,181287,533,3192.31,-3293.11,292.595,4.74492,0,0,0.695511,-0.718515,6380,100,1);
INSERT INTO `gameobject` VALUES (21623,181287,533,3193.01,-3359.1,292.595,4.32474,0,0,0.830065,-0.557667,6380,100,1);
INSERT INTO `gameobject` VALUES (21624,181287,533,3233.92,-3173.09,297.946,3.88884,0,0,0.931011,-0.364992,6380,100,1);
INSERT INTO `gameobject` VALUES (21625,181287,533,3272.91,-3208.04,297.846,4.57605,0,0,0.75363,-0.657299,6380,100,1);
INSERT INTO `gameobject` VALUES (21626,181287,533,3332.81,-3202.3,297.811,5.80127,0,0,0.238634,-0.97111,6380,100,1);
INSERT INTO `gameobject` VALUES (21627,181287,533,3511.27,-2898.78,302.345,0.103201,0,0,0.0515777,0.998669,6380,100,1);
INSERT INTO `gameobject` VALUES (21628,181287,533,3551.96,-2961.45,302.736,0.217081,0,0,0.108327,0.994115,6380,100,1);
INSERT INTO `gameobject` VALUES (21629,181287,533,3479.38,-2888.36,302.702,1.71326,0,0,0.755641,0.654986,6380,100,1);
INSERT INTO `gameobject` VALUES (21630,181287,533,3524.32,-3946.9,310.05,4.98837,0,0,0.603119,-0.797651,6380,100,1);
INSERT INTO `gameobject` VALUES (21631,181287,533,3460.24,-3934.4,305.996,4.01841,0,0,0.905429,-0.424498,6380,100,1);
INSERT INTO `gameobject` VALUES (21632,181287,533,3549.72,-3925.55,305.4,6.02981,0,0,0.12635,-0.991986,6380,100,1);
INSERT INTO `gameobject` VALUES (21633,181287,533,3381.55,-3621.99,261.167,0.0458548,0,0,0.0229254,0.999737,6380,100,1);
INSERT INTO `gameobject` VALUES (21634,181287,533,3351.06,-3592.56,260.996,0.108686,0,0,0.0543163,0.998524,6380,100,1);
INSERT INTO `gameobject` VALUES (21635,181287,533,3322.47,-3635.3,259.084,2.99895,0,0,0.997458,0.0712598,6380,100,1);
INSERT INTO `gameobject` VALUES (23981,181287,533,2789.51,-3075.94,267.685,0.814009,0,0,0.39586,0.918311,6380,100,1);
INSERT INTO `gameobject` VALUES (23982,181287,533,2745.96,-3312.15,267.684,0.138569,0,0,0.0692289,0.997601,6380,100,1);
INSERT INTO `gameobject` VALUES (23983,181287,533,2678.9,-3432.53,267.689,4.74886,0,0,0.694097,-0.719881,6380,100,1);
INSERT INTO `gameobject` VALUES (23984,181287,533,2635.2,-3384.3,267.685,3.19377,0,0,0.99966,-0.0260857,6380,100,1);
INSERT INTO `gameobject` VALUES (27814,181287,533,2844.3,-3980.5,278.981,1.62973,0,0,0.727634,0.685966,6380,100,1);
INSERT INTO `gameobject` VALUES (27815,181287,533,2926.43,-4034.49,273.577,4.7941,0,0,0.677635,-0.735399,6380,100,1);
INSERT INTO `gameobject` VALUES (27816,181287,533,2925.78,-3959.76,273.57,0.855331,0,0,0.414748,0.909936,6380,100,1);
INSERT INTO `gameobject` VALUES (27817,181287,533,2793.38,-3650.78,273.64,0.378605,0,0,0.188174,0.982136,6380,100,1);
INSERT INTO `gameobject` VALUES (27818,181287,533,2748.44,-3651.65,273.622,2.83297,0,0,0.988118,0.153697,6380,100,1);
INSERT INTO `gameobject` VALUES (27819,181287,533,2811.74,-3703.96,273.616,5.56223,0,0,0.35272,-0.935729,6380,100,1);
INSERT INTO `gameobject` VALUES (27820,181287,533,2641.82,-3456.01,265.559,2.8772,0,0,0.991275,0.13181,6380,100,1);
INSERT INTO `gameobject` VALUES (27821,181287,533,2730.03,-3455.88,262.271,0.678089,0,0,0.332586,0.943073,6380,100,1);
INSERT INTO `gameobject` VALUES (27822,181287,533,2727.52,-3546.65,261.969,6.0188,0,0,0.13181,-0.991275,6380,100,1);
INSERT INTO `gameobject` VALUES (27823,181287,533,3214.19,-3465.14,287.071,2.60625,0,0,0.96439,0.264486,6380,100,1);
INSERT INTO `gameobject` VALUES (27824,181287,533,3336.09,-3469.08,287.069,0.301108,0,0,0.149986,0.988688,6380,100,1);

-- Added missing text from defias messenger, need to be added to waypoints.
DELETE FROM `db_script_string` WHERE `entry` = 2000005301;
DELETE FROM `db_script_string` WHERE `entry` = 2000005302;
INSERT INTO `db_script_string` VALUES (2000005301,"The boss wants all hands on high alert. The rusty anchor sinks tonight.",NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,NULL);
INSERT INTO `db_script_string` VALUES (2000005302,"Stonemasons. . .errr. . Defias be warned:  The rusty anchor sinks tonight.",NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,NULL);

-- Corrected creatures
UPDATE `creature_template` SET `rank` = 2 WHERE `entry` = 947;
UPDATE `creature_template` SET `type` = 3 WHERE `entry` = 3772;
UPDATE `creature_template` SET `speed_walk` = 0.01 WHERE `entry` = 3903;
UPDATE `creature_template` SET `type` = 10 WHERE `entry` = 5914;
UPDATE `creature_template` SET `rank` = 2 WHERE `entry` = 10077;
UPDATE `creature_template` SET `speed_walk` = 0.52 WHERE `entry` = 12222;
UPDATE `creature_template` SET `speed_run` = 0.64286 WHERE `entry` = 12222;
UPDATE `creature_template` SET `type` = 1 WHERE `entry` = 14306;
UPDATE `creature_template` SET `speed_walk` = 1.54 WHERE `entry` = 14461;
DELETE FROM `creature_template_addon` WHERE `entry` = 17209;
INSERT INTO `creature_template_addon` VALUES (17209,0,0,1,16,0,0,17327);

-- reimport missing creature movements
UPDATE `creature` SET `MovementType` = 2 WHERE `guid` = 56606;
DELETE FROM `creature_movement` WHERE `id` = 56606;
INSERT INTO `creature_movement` VALUES (56606,1,930.44,-922.059,-189.297,0,0,0,0,0,0,0,0,0,0,0,0,0);
INSERT INTO `creature_movement` VALUES (56606,2,940.374,-924.606,-186.525,0,0,0,0,0,0,0,0,0,0,0,0,0);
INSERT INTO `creature_movement` VALUES (56606,3,948.952,-926.801,-183.021,0,0,0,0,0,0,0,0,0,0,0,0,0);
INSERT INTO `creature_movement` VALUES (56606,4,962.651,-933.666,-180.491,0,0,0,0,0,0,0,0,0,0,0,0,0);
INSERT INTO `creature_movement` VALUES (56606,5,979.5,-943.673,-179.169,0,0,0,0,0,0,0,0,0,0,0,0,0);
INSERT INTO `creature_movement` VALUES (56606,6,995.485,-950.169,-178.509,0,0,0,0,0,0,0,0,0,0,0,0,0);
INSERT INTO `creature_movement` VALUES (56606,7,1013.39,-955.414,-179.703,0,0,0,0,0,0,0,0,0,0,0,0,0);
INSERT INTO `creature_movement` VALUES (56606,8,1022.81,-974.116,-181.451,0,0,0,0,0,0,0,0,0,0,0,0,0);
INSERT INTO `creature_movement` VALUES (56606,9,1015.94,-956.297,-179.991,0,0,0,0,0,0,0,0,0,0,0,0,0);
INSERT INTO `creature_movement` VALUES (56606,10,997.6,-950.831,-178.424,0,0,0,0,0,0,0,0,0,0,0,0,0);
INSERT INTO `creature_movement` VALUES (56606,11,981.844,-944.903,-179.069,0,0,0,0,0,0,0,0,0,0,0,0,0);
INSERT INTO `creature_movement` VALUES (56606,12,962.477,-933.72,-180.527,0,0,0,0,0,0,0,0,0,0,0,0,0);
INSERT INTO `creature_movement` VALUES (56606,13,948.992,-926.282,-182.836,0,0,0,0,0,0,0,0,0,0,0,0,0);
INSERT INTO `creature_movement` VALUES (56606,14,931.568,-918.977,-188.934,0,0,0,0,0,0,0,0,0,0,0,0,0);

UPDATE `creature` SET `MovementType` = 2 WHERE `guid` = 56607;
DELETE FROM `creature_movement` WHERE `id` = 56607;
INSERT INTO `creature_movement` VALUES (56607,1,925.922,-928.309,-190.095,0,0,0,0,0,0,0,0,0,0,0,0,0);
INSERT INTO `creature_movement` VALUES (56607,2,937.252,-931.878,-187.876,0,0,0,0,0,0,0,0,0,0,0,0,0);
INSERT INTO `creature_movement` VALUES (56607,3,949.931,-934.987,-185.321,0,0,0,0,0,0,0,0,0,0,0,0,0);
INSERT INTO `creature_movement` VALUES (56607,4,958.993,-939.782,-182.413,0,0,0,0,0,0,0,0,0,0,0,0,0);
INSERT INTO `creature_movement` VALUES (56607,5,968.142,-946.943,-181.344,0,0,0,0,0,0,0,0,0,0,0,0,0);
INSERT INTO `creature_movement` VALUES (56607,6,979.508,-955.867,-180.418,0,0,0,0,0,0,0,0,0,0,0,0,0);
INSERT INTO `creature_movement` VALUES (56607,7,988.364,-959.98,-180.535,0,0,0,0,0,0,0,0,0,0,0,0,0);
INSERT INTO `creature_movement` VALUES (56607,8,1005.03,-962.108,-181.055,0,0,0,0,0,0,0,0,0,0,0,0,0);
INSERT INTO `creature_movement` VALUES (56607,9,1011.05,-975.843,-181.28,0,0,0,0,0,0,0,0,0,0,0,0,0);
INSERT INTO `creature_movement` VALUES (56607,10,1010.42,-970.919,-181.44,0,0,0,0,0,0,0,0,0,0,0,0,0);
INSERT INTO `creature_movement` VALUES (56607,11,1002.91,-961.417,-180.922,0,0,0,0,0,0,0,0,0,0,0,0,0);
INSERT INTO `creature_movement` VALUES (56607,12,981.712,-958.135,-180.541,0,0,0,0,0,0,0,0,0,0,0,0,0);
INSERT INTO `creature_movement` VALUES (56607,13,967.291,-950.49,-181.666,0,0,0,0,0,0,0,0,0,0,0,0,0);
INSERT INTO `creature_movement` VALUES (56607,14,956.333,-941.777,-183.077,0,0,0,0,0,0,0,0,0,0,0,0,0);
INSERT INTO `creature_movement` VALUES (56607,15,946.106,-936.362,-186.471,0,0,0,0,0,0,0,0,0,0,0,0,0);
INSERT INTO `creature_movement` VALUES (56607,16,931.119,-933.48,-189.508,0,0,0,0,0,0,0,0,0,0,0,0,0);

DELETE FROM `creature_movement` WHERE `id` = 138550;
INSERT INTO `creature_movement` VALUES (138550,1,-8764.87,847.11,87.2577,0,504301,0,0,0,0,0,0,0,0,3.86765,0,0);
INSERT INTO `creature_movement` VALUES (138550,2,-8764.87,847.11,87.2577,500,504302,0,0,0,0,0,0,0,0,3.86765,0,0);
INSERT INTO `creature_movement` VALUES (138550,3,-8764.87,847.11,87.2577,0,504303,0,0,0,0,0,0,0,0,3.86765,0,0);
INSERT INTO `creature_movement` VALUES (138550,4,-8764.87,847.11,87.2577,0,0,0,0,0,0,0,0,0,0,3.86765,0,0);
INSERT INTO `creature_movement` VALUES (138550,5,-8767.81,845.135,88.5791,0,0,0,0,0,0,0,0,0,0,3.87672,0,0);
INSERT INTO `creature_movement` VALUES (138550,6,-8771.36,841.955,90.3736,0,0,0,0,0,0,0,0,0,0,3.80918,0,0);
INSERT INTO `creature_movement` VALUES (138550,7,-8775.25,838.443,92.3464,0,0,0,0,0,0,0,0,0,0,3.80997,0,0);
INSERT INTO `creature_movement` VALUES (138550,8,-8780.41,835.036,94.6678,0,0,0,0,0,0,0,0,0,0,3.97019,0,0);
INSERT INTO `creature_movement` VALUES (138550,9,-8789.37,827.108,97.6443,0,0,0,0,0,0,0,0,0,0,3.77777,0,0);
DELETE FROM `creature_movement` WHERE `id` = 138551;
INSERT INTO `creature_movement` VALUES (138551,1,-8764.18,846.946,87.0923,0,504301,0,0,0,0,0,0,0,0,3.91792,0,0);
INSERT INTO `creature_movement` VALUES (138551,2,-8764.18,846.946,87.0923,500,504302,0,0,0,0,0,0,0,0,3.91792,0,0);
INSERT INTO `creature_movement` VALUES (138551,3,-8764.18,846.946,87.0923,0,504303,0,0,0,0,0,0,0,0,3.91792,0,0);
INSERT INTO `creature_movement` VALUES (138551,4,-8764.18,846.946,87.0923,0,0,0,0,0,0,0,0,0,0,3.91792,0,0);
INSERT INTO `creature_movement` VALUES (138551,5,-8766.69,844.125,88.4861,0,0,0,0,0,0,0,0,0,0,3.79112,0,0);
INSERT INTO `creature_movement` VALUES (138551,6,-8770.97,840.874,90.511,0,0,0,0,0,0,0,0,0,0,3.79112,0,0);
INSERT INTO `creature_movement` VALUES (138551,7,-8775.98,836.386,93.0448,0,0,0,0,0,0,0,0,0,0,3.81233,0,0);
INSERT INTO `creature_movement` VALUES (138551,8,-8779.09,833.919,94.5413,0,0,0,0,0,0,0,0,0,0,3.81233,0,0);
INSERT INTO `creature_movement` VALUES (138551,9,-8788.55,825.631,97.6435,0,0,0,0,0,0,0,0,0,0,3.85238,0,0);
DELETE FROM `creature_movement` WHERE `id` = 138552;
INSERT INTO `creature_movement` VALUES (138552,1,-8764.17,846.22,87.2574,0,504301,0,0,0,0,0,0,0,0,3.7577,0,0);
INSERT INTO `creature_movement` VALUES (138552,2,-8764.17,846.22,87.2574,500,504302,0,0,0,0,0,0,0,0,3.7577,0,0);
INSERT INTO `creature_movement` VALUES (138552,3,-8764.17,846.22,87.2574,0,504303,0,0,0,0,0,0,0,0,3.7577,0,0);
INSERT INTO `creature_movement` VALUES (138552,4,-8764.17,846.22,87.2574,0,0,0,0,0,0,0,0,0,0,3.7577,0,0);
INSERT INTO `creature_movement` VALUES (138552,5,-8768.75,841.352,89.7436,0,0,0,0,0,0,0,0,0,0,3.90186,0,0);
INSERT INTO `creature_movement` VALUES (138552,6,-8773.94,837.223,92.2453,0,0,0,0,0,0,0,0,0,0,3.72672,0,0);
INSERT INTO `creature_movement` VALUES (138552,7,-8779.93,831.68,95.316,0,0,0,0,0,0,0,0,0,0,3.79426,0,0);
INSERT INTO `creature_movement` VALUES (138552,8,-8788.56,825.087,97.6439,0,0,0,0,0,0,0,0,0,0,3.79426,0,0);
DELETE FROM `creature_movement` WHERE `id` = 138553;
INSERT INTO `creature_movement` VALUES (138553,1,-8763.14,845.686,87.0814,0,504301,0,0,0,0,0,0,0,0,3.76991,0,0);
INSERT INTO `creature_movement` VALUES (138553,2,-8763.14,845.686,87.0814,500,504302,0,0,0,0,0,0,0,0,3.76991,0,0);
INSERT INTO `creature_movement` VALUES (138553,3,-8763.14,845.686,87.0814,0,504303,0,0,0,0,0,0,0,0,3.76991,0,0);
INSERT INTO `creature_movement` VALUES (138553,4,-8763.14,845.686,87.0814,0,0,0,0,0,0,0,0,0,0,3.76991,0,0);
INSERT INTO `creature_movement` VALUES (138553,5,-8770.88,840.53,90.5654,0,0,0,0,0,0,0,0,0,0,3.58927,0,0);
INSERT INTO `creature_movement` VALUES (138553,6,-8776.35,837.9,92.7992,0,0,0,0,0,0,0,0,0,0,3.58927,0,0);
INSERT INTO `creature_movement` VALUES (138553,7,-8781.09,834.758,94.9354,0,0,0,0,0,0,0,0,0,0,3.69609,0,0);
INSERT INTO `creature_movement` VALUES (138553,8,-8783.9,830.873,96.6753,0,0,0,0,0,0,0,0,0,0,3.34502,0,0);
INSERT INTO `creature_movement` VALUES (138553,9,-8790.4,827.703,97.6425,0,0,0,0,0,0,0,0,0,0,3.55629,0,0);

DELETE FROM `dbscripts_on_creature_movement` WHERE `id` = 504301;
DELETE FROM `dbscripts_on_creature_movement` WHERE `id` = 504302;
DELETE FROM `dbscripts_on_creature_movement` WHERE `id` = 504303;
INSERT INTO `dbscripts_on_creature_movement` VALUES (504301,0,25,1,0,0,0,0,0,0,0,0,0,0,0,0,'DefiasRioter-SetRunModeOn');
INSERT INTO `dbscripts_on_creature_movement` VALUES (504302,0,16,10836,0,0,0,0,0,0,0,0,0,0,0,0,'DefiasRioter-OpenCellDoorSound');
INSERT INTO `dbscripts_on_creature_movement` VALUES (504303,0,16,10837,0,0,0,0,0,0,0,0,0,0,0,0,'DefiasRioter-CloseCellDoorSound');

-- added mana tide totem rank 2 and 3 to trainers
DELETE FROM `npc_trainer` WHERE `spell` = 17362;
DELETE FROM `npc_trainer` WHERE `spell` = 17363;
INSERT INTO `npc_trainer` VALUES (986,17362,55000,0,0,48);
INSERT INTO `npc_trainer` VALUES (986,17363,80000,0,0,58);
INSERT INTO `npc_trainer` VALUES (3030,17362,55000,0,0,48);
INSERT INTO `npc_trainer` VALUES (3030,17363,80000,0,0,58);
INSERT INTO `npc_trainer` VALUES (3031,17362,55000,0,0,48);
INSERT INTO `npc_trainer` VALUES (3031,17363,80000,0,0,58);
INSERT INTO `npc_trainer` VALUES (3032,17362,55000,0,0,48);
INSERT INTO `npc_trainer` VALUES (3032,17363,80000,0,0,58);
INSERT INTO `npc_trainer` VALUES (3066,17362,55000,0,0,48);
INSERT INTO `npc_trainer` VALUES (3066,17363,80000,0,0,58);
INSERT INTO `npc_trainer` VALUES (3173,17362,55000,0,0,48);
INSERT INTO `npc_trainer` VALUES (3173,17363,80000,0,0,58);
INSERT INTO `npc_trainer` VALUES (3344,17362,55000,0,0,48);
INSERT INTO `npc_trainer` VALUES (3344,17363,80000,0,0,58);
INSERT INTO `npc_trainer` VALUES (3403,17362,55000,0,0,48);
INSERT INTO `npc_trainer` VALUES (3403,17363,80000,0,0,58);
INSERT INTO `npc_trainer` VALUES (13417,17362,55000,0,0,48);
INSERT INTO `npc_trainer` VALUES (13417,17363,80000,0,0,58);
DELETE FROM `spell_chain` WHERE `first_spell` = 16190;
INSERT INTO `spell_chain` VALUES (16190,0,16190,1,0);
INSERT INTO `spell_chain` VALUES (17354,16190,16190,2,0);
INSERT INTO `spell_chain` VALUES (17359,17354,16190,3,0);

-- Corrected and added creature_ai_texts
UPDATE `creature_ai_texts` SET `content_default` = 'VanCleef pay big for your heads!' WHERE `entry` = -22;
DELETE FROM `creature_ai_texts` WHERE `entry` = -1145;
INSERT INTO `creature_ai_texts` VALUES (-1145,'Curse you! One day, vengeance will be mine!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'Private Merle Text');
DELETE FROM `creature_ai_texts` WHERE `entry` = -142;
INSERT INTO `creature_ai_texts` VALUES (-142,"In the throes of the Sundering, Ameth'Aran was at the whim of the terror that gripped the land. There was little hope for survival.",NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,4509);
DELETE FROM `creature_ai_texts` WHERE `entry` = -143;
INSERT INTO `creature_ai_texts` VALUES (-143,'Athrikus came to us. He told us that he could save us from harm. He cast a spell upon us to protect us from harm.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,4509);
DELETE FROM `creature_ai_texts` WHERE `entry` = -144;
INSERT INTO `creature_ai_texts` VALUES (-144,'When the shaking stopped, his true motives were revealed. We were trapped, and he was slowly draining our powers.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,4509);
DELETE FROM `creature_ai_texts` WHERE `entry` = -145;
INSERT INTO `creature_ai_texts` VALUES (-145,'There were hundreds imprisoned by his spell. Now only a few remain in their prisons. He would speak to us sometimes.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,4509);
DELETE FROM `creature_ai_texts` WHERE `entry` = -146;
INSERT INTO `creature_ai_texts` VALUES (-146,'He worried that his power weakened, that soon even we last of his precious soulgems would fade and die.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,4509);
DELETE FROM `creature_ai_texts` WHERE `entry` = -147;
INSERT INTO `creature_ai_texts` VALUES (-147,'His lieutenant, Ilkurd Magthrull possesses a tome which might indicate the location of the remaining soulgems.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,4509);
DELETE FROM `creature_ai_texts` WHERE `entry` = -343;
INSERT INTO `creature_ai_texts` VALUES (-343,'Let me help you with those.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,5042);
DELETE FROM `creature_ai_texts` WHERE `entry` = -344;
INSERT INTO `creature_ai_texts` VALUES (-344,'Drink this, it will help.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,5042);
DELETE FROM `creature_ai_texts` WHERE `entry` = -345;
INSERT INTO `creature_ai_texts` VALUES (-345,"You're going to be just fine.",NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,5042);
DELETE FROM `creature_ai_texts` WHERE `entry` = -1137;
INSERT INTO `creature_ai_texts` VALUES (-1137,"WHO IS BOTHERING ME?",NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'Arch Druid Fandral');
DELETE FROM `creature_ai_texts` WHERE `entry` = -1136;
INSERT INTO `creature_ai_texts` VALUES (-1136,"I never thought that you could find me! Well, let's see what you can do...",NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'Tyrande Whisperwind');
DELETE FROM `creature_ai_texts` WHERE `entry` = -1138;
INSERT INTO `creature_ai_texts` VALUES (-1138,'Ahh, a new chew toy for my dogs!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,'Houndmaster Grebmar');
DELETE FROM `creature_ai_texts` WHERE `entry` = -1143;
INSERT INTO `creature_ai_texts` VALUES (-1143,'You will not harm Emperor Thaurissan!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,10076);
DELETE FROM `creature_ai_texts` WHERE `entry` = -1146;
INSERT INTO `creature_ai_texts` VALUES (-1146,"Ach! Thank you so much I'm free! Finally!",NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,'Locheed text when spawned');
DELETE FROM `creature_ai_texts` WHERE `entry` = -148;
INSERT INTO `creature_ai_texts` VALUES (-148,'Ma reth bromo zoln kilagrin dra ma zoern tu ko fraht ka tadrom Ma krin drinor zaln dirnor Ma krin kan aasrugel korsul',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,0,11256);
DELETE FROM `creature_ai_texts` WHERE `entry` = -1140;
INSERT INTO `creature_ai_texts` VALUES (-1140,"I'm going to kick yer ugly head in!",NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,16059);
DELETE FROM `creature_ai_texts` WHERE `entry` = -1141;
INSERT INTO `creature_ai_texts` VALUES (-1141,"You want a fight? A fight you'll get!",NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,16059);
DELETE FROM `creature_ai_texts` WHERE `entry` = -1142;
INSERT INTO `creature_ai_texts` VALUES (-1142,'I crush weaklings like you every day! Bring it on!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,0,0,16059);
DELETE FROM `creature_ai_texts` WHERE `entry` = -1147;
INSERT INTO `creature_ai_texts` VALUES (-1147,"%s 's death cry has stirred the nearby silithid hive",NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,2,0,12178);
DELETE FROM `creature_ai_texts` WHERE `entry` = -347;
INSERT INTO `creature_ai_texts` VALUES (-347,'%s growls in your direction before taking time to sniff you.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,2,0,0,3695);
DELETE FROM `creature_ai_texts` WHERE `entry` = -348;
INSERT INTO `creature_ai_texts` VALUES (-348,'%s faces southeast and whimpers before looking back at you.',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,2,0,0,3695);

-- Corrected and added creature_ai_scripts
UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = 575;
DELETE FROM `creature_ai_scripts` WHERE `creature_id` = 575;
INSERT INTO `creature_ai_scripts` VALUES (57501,575,11,0,100,2,0,0,0,0,11,25035,0,0,0,0,0,0,0,0,0,0,'Fire Elemental - Cast Elemental Spawn-in on Spawn');

DELETE FROM `creature_ai_scripts` WHERE `creature_id` = 639;
INSERT INTO `creature_ai_scripts` VALUES (63901,639,11,0,100,2,0,0,0,0,11,12787,0,0,0,0,0,0,0,0,0,0,'Edwin VanCleef - Cast Thrash on Spawn');
INSERT INTO `creature_ai_scripts` VALUES (63902,639,4,0,100,2,0,0,0,0,1,-169,0,0,11,674,0,0,0,0,0,0,'Edwin VanCleef - Yell and Cast Dual Wield on Aggro');
INSERT INTO `creature_ai_scripts` VALUES (63903,639,2,0,100,2,66,34,0,0,1,-171,0,0,0,0,0,0,0,0,0,0,'Edwin VanCleef - Yell at 66% HP');
INSERT INTO `creature_ai_scripts` VALUES (63904,639,2,0,100,2,50,26,0,0,11,5200,0,0,1,-342,0,0,0,0,0,0,"Edwin VanCleef - Summons VanCleef's Allies at 50% HP");
INSERT INTO `creature_ai_scripts` VALUES (63905,639,2,0,100,2,33,0,0,0,1,-172,0,0,0,0,0,0,0,0,0,0,'Edwin VanCleef - Yell at 33% HP');
INSERT INTO `creature_ai_scripts` VALUES (63906,639,2,0,100,2,25,0,0,0,11,5200,0,0,1,-342,0,0,0,0,0,0,"Edwin VanCleef - Summons VanCleef's Allies at 25% HP");
INSERT INTO `creature_ai_scripts` VALUES (63907,639,5,0,100,3,5000,5000,0,0,1,-170,0,0,0,0,0,0,0,0,0,0,'Edwin VanCleef - Yell on Player Kill');
INSERT INTO `creature_ai_scripts` VALUES (63908,639,6,0,100,2,0,0,0,0,1,-173,0,0,0,0,0,0,0,0,0,0,'Edwin VanCleef - Yell on Death');

UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = 879;
DELETE FROM `creature_ai_scripts` WHERE `creature_id` = 879;
INSERT INTO `creature_ai_scripts` VALUES (87901,879,9,0,100,1,5,20,0,0,21,0,0,0,0,0,0,0,0,0,0,0,'Saltscale Hunter - Stop Moving when in Throw Range');
INSERT INTO `creature_ai_scripts` VALUES (87902,879,9,0,100,1,0,5,0,0,21,1,0,0,0,0,0,0,0,0,0,0,'Saltscale Hunter - Start Moving when not in Throw Range I');
INSERT INTO `creature_ai_scripts` VALUES (87903,879,9,0,100,1,20,100,0,0,21,1,0,0,0,0,0,0,0,0,0,0,'Saltscale Hunterr - Start Moving when not in Throw Range II');
INSERT INTO `creature_ai_scripts` VALUES (87904,879,9,0,100,1,5,20,3500,4100,11,10277,1,0,0,0,0,0,0,0,0,0,'Saltscale Hunter - Cast Throw');
INSERT INTO `creature_ai_scripts` VALUES (87905,879,2,0,100,0,15,0,0,0,25,0,0,0,1,-47,0,0,21,1,0,0,'Saltscale Hunter - Flee at 15% HP');

UPDATE `creature_ai_scripts` SET `creature_id` = 1157 WHERE `id` = 115702;

DELETE FROM `creature_ai_scripts` WHERE `creature_id` = 1200;
INSERT INTO `creature_ai_scripts` VALUES (120001,1200,0,0,100,1,0,0,3700,13300,11,3108,1,0,0,0,0,0,0,0,0,0,'Morbent Fel - Cast Touch of Death');
INSERT INTO `creature_ai_scripts` VALUES (120002,1200,0,0,100,1,0,0,24000,24000,11,3109,1,0,0,0,0,0,0,0,0,0,'Morbent Fel - Cast Presence of Death');
INSERT INTO `creature_ai_scripts` VALUES (120003,1200,2,0,100,0,15,0,0,0,28,0,8909,0,0,0,0,0,0,0,0,0,'Morbent Fel - Remove Unholy Shield at 15% HP');
INSERT INTO `creature_ai_scripts` VALUES (120004,1200,1,0,100,1,1000,1000,1800000,1800000,11,8909,0,1,0,0,0,0,0,0,0,0,'Morbent Fel - Cast Unholy Shield on Spawn');

UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = 1421;
DELETE FROM `creature_ai_scripts` WHERE `creature_id` = 1421;
INSERT INTO `creature_ai_scripts` VALUES (142101,1421,11,0,100,0,0,0,0,0,1,-1145,0,0,2,32,0,0,0,0,0,0,'Private Merle - Says Text when Spawned and set Faction Neutral');

UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = 2350;
DELETE FROM `creature_ai_scripts` WHERE `creature_id` = 2350;
INSERT INTO `creature_ai_scripts` VALUES (235001,2350,0,0,100,7,3500,4000,8000,10000,11,3396,1,0,0,0,0,0,0,0,0,0,'Forest Moss Creeper - Cast Poison');

UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = 2784;
DELETE FROM `creature_ai_scripts` WHERE `creature_id` = 2784;
INSERT INTO `creature_ai_scripts` VALUES (278401,2784,0,0,100,1,5000,7000,25000,30000,11,19135,0,0,0,0,0,0,0,0,0,0,'King Magni Bronzebeard - Cast Avatar');
INSERT INTO `creature_ai_scripts` VALUES (278402,2784,0,0,100,1,8000,10000,20000,30000,11,20686,0,0,0,0,0,0,0,0,0,0,'King Magni Bronzebeard - Cast Knock Away');
INSERT INTO `creature_ai_scripts` VALUES (278403,2784,0,0,100,1,12000,15000,15000,20000,11,20685,1,0,0,0,0,0,0,0,0,0,'King Magni Bronzebeard - Cast Storm Bolt');

UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = 3281;
DELETE FROM `creature_ai_scripts` WHERE `creature_id` = 3281;
INSERT INTO `creature_ai_scripts` VALUES (328101,3281,0,0,60,1,1000,5000,1000,8000,11,11918,1,32,0,0,0,0,0,0,0,0,'Sarkoth - Cast Poison');

UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = 3516;
DELETE FROM `creature_ai_scripts` WHERE `creature_id` = 3516;
INSERT INTO `creature_ai_scripts` VALUES (351601,3516,0,0,100,1,5000,5000,19000,19000,11,20699,0,0,0,0,0,0,0,0,0,0,'Arch Druid Fandral Staghelm - Cast Entangling Roots');
INSERT INTO `creature_ai_scripts` VALUES (351602,3516,0,0,100,1,5000,5000,27000,27000,11,20701,0,0,0,0,0,0,0,0,0,0,'Arch Druid Fandral Staghelm - Cast Rejuvenation');
INSERT INTO `creature_ai_scripts` VALUES (351603,3516,0,0,100,1,1500,1500,25000,35000,11,20702,0,0,0,0,0,0,0,0,0,0,'Arch Druid Fandral Staghelm - Cast Summon Treant Allies');
INSERT INTO `creature_ai_scripts` VALUES (351604,3516,0,0,100,0,0,0,0,0,21,0,0,0,0,0,0,0,0,0,0,0,'Arch Druid Fandral Staghelm - Stop Movement on Aggro');
INSERT INTO `creature_ai_scripts` VALUES (351605,3516,4,0,100,0,0,0,0,0,11,20698,1,0,22,1,0,0,0,0,0,0,'Arch Druid Fandral Staghelm - Cast Wrath and Set Phase 1 on Aggro');
INSERT INTO `creature_ai_scripts` VALUES (351606,3516,0,13,100,1,3400,4700,3400,4700,0,0,0,0,11,20698,1,0,0,0,0,0,'Arch Druid Fandral Staghelm - Cast Wrath (Phase 1)');
INSERT INTO `creature_ai_scripts` VALUES (351607,3516,3,13,100,0,15,0,0,0,21,1,0,0,22,2,0,0,0,0,0,0,'Arch Druid Fandral Staghelm - Start Movement and Set Phase 2 when Mana is at 15%');
INSERT INTO `creature_ai_scripts` VALUES (351608,3516,9,13,100,1,25,80,0,0,21,1,0,0,0,0,0,0,0,0,0,0,'Arch Druid Fandral Staghelm - Start Movement Beyond 25 Yards');
INSERT INTO `creature_ai_scripts` VALUES (351609,3516,3,11,100,1,100,30,100,100,22,1,0,0,0,0,0,0,0,0,0,0,'Arch Druid Fandral Staghelm- Set Phase 1 when Mana is above 30% (Phase 2)');
INSERT INTO `creature_ai_scripts` VALUES (351610,3516,2,0,100,0,15,0,0,0,22,3,0,0,0,0,0,0,0,0,0,0,'Arch Druid Fandral Staghelm - Set Phase 3 at 15% HP');
INSERT INTO `creature_ai_scripts` VALUES (351611,3516,2,7,100,0,15,0,0,0,21,1,0,0,25,0,0,0,1,-47,0,0,'Arch Druid Fandral Staghelm - Start Movement and Flee at 15% HP (Phase 3)');
INSERT INTO `creature_ai_scripts` VALUES (351612,3516,7,0,100,0,0,0,0,0,22,0,0,0,0,0,0,0,0,0,0,0,'Arch Druid Fandral Staghelm- On Evade set Phase to 0');
INSERT INTO `creature_ai_scripts` VALUES (351613,3516,4,0,100,0,0,0,0,0,1,-1137,0,0,0,0,0,0,0,0,0,0,'Arch Druid Fandral Staghelm - Chance Say on Aggro');

UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = 4509;
DELETE FROM `creature_ai_scripts` WHERE `creature_id` = 4509;
INSERT INTO `creature_ai_scripts` VALUES (450901,4509,1,0,100,0,1000,1000,0,0,1,-142,0,0,5,1,0,0,0,0,0,0,'Sargath - Say on Spawn');
INSERT INTO `creature_ai_scripts` VALUES (450902,4509,1,0,100,0,5000,5000,0,0,1,-143,0,0,5,1,0,0,0,0,0,0,'Sargath - Say 2 on Spawn');
INSERT INTO `creature_ai_scripts` VALUES (450903,4509,1,0,100,0,10000,10000,0,0,1,-144,0,0,5,1,0,0,0,0,0,0,'Sargath - Say 3 on Spawn');
INSERT INTO `creature_ai_scripts` VALUES (450904,4509,1,0,100,0,15000,15000,0,0,1,-145,0,0,5,1,0,0,0,0,0,0,'Sargath - Say 4 on Spawn');
INSERT INTO `creature_ai_scripts` VALUES (450905,4509,1,0,100,0,20000,20000,0,0,1,-146,0,0,5,1,0,0,0,0,0,0,'Sargath - Say 5 on Spawn');
INSERT INTO `creature_ai_scripts` VALUES (450906,4509,1,0,100,0,28000,28000,0,0,1,-147,0,0,5,1,0,0,0,0,0,0,'Sargath - Say 6 on Spawn');

UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = 4863;
DELETE FROM `creature_ai_scripts` WHERE `creature_id` = 4863;
INSERT INTO `creature_ai_scripts` VALUES (486301,4863,0,0,100,3,2000,5500,15000,18000,11,3636,1,0,0,0,0,0,0,0,0,0,'Jadespine Basilisk - Cast Crystalline Slumber');
INSERT INTO `creature_ai_scripts` VALUES (486302,4863,0,0,100,3,5500,5500,16000,16000,11,9906,0,1,0,0,0,0,0,0,0,0,'Jadespine Basilisk - Cast Reflection');

UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = 5042;
DELETE FROM `creature_ai_scripts` WHERE `creature_id` = 5042;
INSERT INTO `creature_ai_scripts` VALUES (504201,5042,1,0,100,1,0,0,87000,89000,1,-343,-344,-345,0,0,0,0,0,0,0,0,'Nurse Lillian - Random Say OOC');

UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = 7167;
DELETE FROM `creature_ai_scripts` WHERE `creature_id` = 7167;
INSERT INTO `creature_ai_scripts` VALUES (716701,7167,1,0,100,1,73000,73000,60000,60000,11,8822,0,0,0,0,0,0,0,0,0,0,'Polly - Cast Stealth OOC');
INSERT INTO `creature_ai_scripts` VALUES (716702,7167,8,0,100,0,9976,-1,0,0,11,9998,0,6,41,10000,0,0,0,0,0,0,'Polly - Change Template to Polly Jr. on Polly Eats the E.C.A.C. Spellhit (Quest: 2381)');

UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = 7235;
DELETE FROM `creature_ai_scripts` WHERE `creature_id` = 7235;
INSERT INTO `creature_ai_scripts` VALUES (723501,7235,0,0,100,0,0,0,0,0,21,0,0,0,0,0,0,0,0,0,0,0,'Gnarlpine Mystic - Stop Movement on Aggro');
INSERT INTO `creature_ai_scripts` VALUES (723502,7235,4,0,100,0,0,0,0,0,11,9739,1,0,22,1,0,0,0,0,0,0,'Gnarlpine Mystic - Cast Wrath and Set Phase 1 on Aggro');
INSERT INTO `creature_ai_scripts` VALUES (723503,7235,0,13,100,1,3400,4700,3400,4700,0,0,0,0,11,9739,1,0,0,0,0,0,'Gnarlpine Mystic - Cast Wrath (Phase 1)');
INSERT INTO `creature_ai_scripts` VALUES (723504,7235,3,13,100,0,15,0,0,0,21,1,0,0,22,2,0,0,0,0,0,0,'Gnarlpine Mystic - Start Movement and Set Phase 2 when Mana is at 15%');
INSERT INTO `creature_ai_scripts` VALUES (723505,7235,9,13,100,1,25,80,0,0,21,1,0,0,0,0,0,0,0,0,0,0,'Gnarlpine Mystic - Start Movement Beyond 25 Yards');
INSERT INTO `creature_ai_scripts` VALUES (723506,7235,3,11,100,1,100,30,100,100,22,1,0,0,0,0,0,0,0,0,0,0,'Gnarlpine Mystic - Set Phase 1 when Mana is above 30% (Phase 2)');
INSERT INTO `creature_ai_scripts` VALUES (723507,7235,2,0,100,0,15,0,0,0,22,3,0,0,0,0,0,0,0,0,0,0,'Gnarlpine Mystic- Set Phase 3 at 15% HP');
INSERT INTO `creature_ai_scripts` VALUES (723508,7235,2,7,100,0,15,0,0,0,21,1,0,0,25,0,0,0,1,-47,0,0,'Gnarlpine Mystic- Start Movement and Flee at 15% HP (Phase 3)');
INSERT INTO `creature_ai_scripts` VALUES (723509,7235,7,0,100,0,0,0,0,0,22,0,0,0,0,0,0,0,0,0,0,0,'Gnarlpine Mystic - On Evade set Phase to 0');

UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = 7441;
DELETE FROM `creature_ai_scripts` WHERE `creature_id` = 7441;
INSERT INTO `creature_ai_scripts` VALUES (744101,7441,0,0,100,1,3000,3000,25000,45000,11,15786,0,0,0,0,0,0,0,0,0,0,'Winterfall Totemic - Cast Earthbind Totem');
INSERT INTO `creature_ai_scripts` VALUES (744102,7441,2,0,100,0,50,0,0,0,11,17205,0,0,0,0,0,0,0,0,0,0,'Winterfall Totemic - Cast Winterfall Firewater at 50% HP');
INSERT INTO `creature_ai_scripts` VALUES (744103,7441,0,0,100,1,3000,3000,40000,70000,11,15787,0,0,0,0,0,0,0,0,0,0,'Winterfall Totemic - Cast Moonflare Totem');

UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = 7447;
DELETE FROM `creature_ai_scripts` WHERE `creature_id` = 7447;
INSERT INTO `creature_ai_scripts` VALUES (744701,7447,0,0,100,1,4000,4000,10000,10000,11,16552,1,0,0,0,0,0,0,0,0,0,'Fledgling Chillwind - Cast Venom Spit');

UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = 7448;
DELETE FROM `creature_ai_scripts` WHERE `creature_id` = 7448;
INSERT INTO `creature_ai_scripts` VALUES (744801,7448,0,2,100,1,7500,7500,7500,8500,11,15797,1,1,0,0,0,0,0,0,0,0,'Chillwind Chimaerar - Cast Lightning Breath');

UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = 7449;
DELETE FROM `creature_ai_scripts` WHERE `creature_id` = 7449;
INSERT INTO `creature_ai_scripts` VALUES (744901,7449,2,0,100,0,25,0,0,0,11,8599,0,0,1,-46,0,0,0,0,0,0,'Chillwind Ravager - Cast Enrage at 25% HP');

UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = 7937;
DELETE FROM `creature_ai_scripts` WHERE `creature_id` = 7937;
INSERT INTO `creature_ai_scripts` VALUES (793701,7937,0,0,100,1,2000,5500,15000,18800,11,9143,1,0,0,0,0,0,0,0,0,0,'High Tinker Mekkatorque - Cast Bomb');
INSERT INTO `creature_ai_scripts` VALUES (793702,7937,0,0,100,1,5500,5500,12000,22800,11,22739,1,0,0,0,0,0,0,0,0,0,'High Tinker Mekkatorque - Cast Goblin Dragon Gun');
INSERT INTO `creature_ai_scripts` VALUES (793703,7937,0,0,100,1,5500,5500,19000,25800,11,22742,4,0,0,0,0,0,0,0,0,0,'High Tinker Mekkatorque - Cast Super Shrink Ray');

UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = 7999;
DELETE FROM `creature_ai_scripts` WHERE `creature_id` = 7999;
INSERT INTO `creature_ai_scripts` VALUES (799901,7999,0,0,100,1,5000,5000,9500,19000,11,20691,1,0,0,0,0,0,0,0,0,0,'Tyrande Whisperwind - Cast Cleave');
INSERT INTO `creature_ai_scripts` VALUES (799902,7999,0,0,100,1,5000,5000,17000,25000,11,20690,1,0,0,0,0,0,0,0,0,0,'Tyrande Whisperwind - Cast Moonfire');
INSERT INTO `creature_ai_scripts` VALUES (799903,7999,0,0,100,1,5000,5000,19000,30000,11,20688,4,0,0,0,0,0,0,0,0,0,'Tyrande Whisperwind - Cast Searing Arrow');
INSERT INTO `creature_ai_scripts` VALUES (799904,7999,0,0,100,1,5500,5500,22000,25000,11,20687,1,0,0,0,0,0,0,0,0,0,'Tyrande Whisperwind - Cast Starfall');
INSERT INTO `creature_ai_scripts` VALUES (799905,7999,4,0,100,0,0,0,0,0,1,-1136,0,0,0,0,0,0,0,0,0,0,'Tyrande Whisperwind - Chance Say on Aggro');

UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = 8889;
DELETE FROM `creature_ai_scripts` WHERE `creature_id` = 8889;
INSERT INTO `creature_ai_scripts` VALUES (888901,8889,0,0,100,3,5000,5000,14000,16000,11,15580,1,0,0,0,0,0,0,0,0,0,'Anvilrage Overseer - Cast Strike');
INSERT INTO `creature_ai_scripts` VALUES (888902,8889,4,0,100,2,0,0,0,0,11,13589,0,0,0,0,0,0,0,0,0,0,'Anvilrage Overseer - Cast Haste Aura');

UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = 8890;
DELETE FROM `creature_ai_scripts` WHERE `creature_id` = 8890;
INSERT INTO `creature_ai_scripts` VALUES (889001,8890,0,0,100,3,500,5000,12000,12000,11,14030,1,0,0,0,0,0,0,0,0,0,'Anvilrage Warden - Cast Hooked Net');
INSERT INTO `creature_ai_scripts` VALUES (889002,8890,0,0,100,3,5000,5000,15000,16000,11,11972,1,0,0,0,0,0,0,0,0,0,'Anvilrage Wardenr - Cast Shield Bash');

UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = 8891;
DELETE FROM `creature_ai_scripts` WHERE `creature_id` = 8891;
INSERT INTO `creature_ai_scripts` VALUES (889101,8891,0,0,100,3,8000,8000,13000,16000,11,12169,0,1,0,0,0,0,0,0,0,0,'Anvilrage Captain - Cast Shield Block');
INSERT INTO `creature_ai_scripts` VALUES (889102,8891,0,0,100,3,8000,8000,14000,15000,11,6713,1,0,0,0,0,0,0,0,0,0,'Anvilrage Footman - Cast Disarm');
INSERT INTO `creature_ai_scripts` VALUES (889103,8891,0,0,100,3,8000,8000,12000,12000,11,11971,1,0,0,0,0,0,0,0,0,0,'Anvilrage Footman - Cast Sunder Armor');

UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = 8892;
DELETE FROM `creature_ai_scripts` WHERE `creature_id` = 8892;
INSERT INTO `creature_ai_scripts` VALUES (889201,8892,0,0,100,3,8000,8000,12000,12000,11,15580,1,0,0,0,0,0,0,0,0,0,'Anvilrage Footman - Cast Strike');

UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = 8893;
DELETE FROM `creature_ai_scripts` WHERE `creature_id` = 8893;
INSERT INTO `creature_ai_scripts` VALUES (889301,8893,0,0,100,3,5000,5000,12000,12000,11,15284,1,0,0,0,0,0,0,0,0,0,'Anvilrage Soldier - Cast Cleave');
INSERT INTO `creature_ai_scripts` VALUES (889302,8893,0,0,100,3,5000,5000,15000,16000,11,9080,1,0,0,0,0,0,0,0,0,0,'Anvilrage Soldier - Cast Hamstring');
INSERT INTO `creature_ai_scripts` VALUES (889303,8893,0,0,100,3,5000,5000,18000,18000,11,13847,0,1,0,0,0,0,0,0,0,0,'Anvilrage Soldier - Cast Recklessness');

UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = 8894;
DELETE FROM `creature_ai_scripts` WHERE `creature_id` = 8894;
INSERT INTO `creature_ai_scripts` VALUES (889401,8894,2,0,100,3,25,0,15300,22900,11,15586,0,0,0,0,0,0,0,0,0,0,'Anvilrage Medic - Cast Heal When Below 25% HP');
INSERT INTO `creature_ai_scripts` VALUES (889402,8894,0,0,100,3,1500,5000,14000,15000,11,15587,1,0,0,0,0,0,0,0,0,0,'Anvilrage Medic - Cast Mind Blast');
INSERT INTO `creature_ai_scripts` VALUES (889403,8894,1,0,100,3,1000,1000,1800000,1800000,11,13864,0,0,0,0,0,0,0,0,0,0,'Anvilrage Medic - Cast Power Word: Fortitude on Spawn');
INSERT INTO `creature_ai_scripts` VALUES (889404,8894,0,0,100,3,3000,5000,16000,18000,11,15585,0,0,0,0,0,0,0,0,0,0,'Anvilrage Medic - Cast Prayer of Healing');

UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = 8895;
DELETE FROM `creature_ai_scripts` WHERE `creature_id` = 8895;
INSERT INTO `creature_ai_scripts` VALUES (889501,8895,0,0,100,3,5000,5000,16000,18000,11,6253,1,0,0,0,0,0,0,0,0,0,'Anvilrage Officer - Cast Backhand');
INSERT INTO `creature_ai_scripts` VALUES (889502,8895,0,0,100,3,5000,5000,18000,18000,11,9128,0,0,0,0,0,0,0,0,0,0,'Anvilrage Officer - Cast Battle Shout');
INSERT INTO `creature_ai_scripts` VALUES (889503,8895,0,0,100,3,5000,5000,25000,25000,11,13874,0,1,0,0,0,0,0,0,0,0,'Anvilrage Officer - Cast Divine Shield');
INSERT INTO `creature_ai_scripts` VALUES (889504,8895,2,0,100,3,25,0,15300,22900,11,13952,0,0,0,0,0,0,0,0,0,0,'Anvilrage Officer - Cast Holy Light When Below 25% HP');
INSERT INTO `creature_ai_scripts` VALUES (889505,8895,0,0,100,2,0,0,0,0,21,0,0,0,0,0,0,0,0,0,0,0,'Anvilrage Officer - Stop Movement on Aggro');
INSERT INTO `creature_ai_scripts` VALUES (889506,8895,4,0,100,2,0,0,0,0,11,15620,1,0,22,6,0,0,0,0,0,0,'Anvilrage Officer - Cast Shoot and Set Phase 1 on Aggro');
INSERT INTO `creature_ai_scripts` VALUES (889507,8895,0,6,100,3,2200,4700,2200,4700,11,15620,1,0,0,0,0,0,0,0,0,0,'Anvilrage Officer - Cast Shoot (Phase 1)');
INSERT INTO `creature_ai_scripts` VALUES (889508,8895,9,6,100,3,20,100,0,0,21,1,0,0,0,0,0,0,0,0,0,0,'Anvilrage Officer - Start Movement at 20 Yards (Phase 1)');
INSERT INTO `creature_ai_scripts` VALUES (889509,8895,9,6,100,3,6,10,0,0,21,0,0,0,0,0,0,0,0,0,0,0,'Anvilrage Officer - Stop Movement at 10 Yards (Phase 1)');
INSERT INTO `creature_ai_scripts` VALUES (889510,8895,9,6,100,3,0,5,0,0,21,1,0,0,0,0,0,0,0,0,0,0,'Anvilrage Officer - Start Movement at 5 Yards (Phase 1)');
INSERT INTO `creature_ai_scripts` VALUES (889511,8895,2,0,100,2,15,0,0,0,22,5,0,0,0,0,0,0,0,0,0,0,'Anvilrage Officer - Set Phase 2 at 15% HP');
INSERT INTO `creature_ai_scripts` VALUES (889512,8895,2,5,100,2,15,0,0,0,21,1,0,0,25,0,0,0,1,-47,0,0,'Anvilrage Officer - Start Movement and Flee at 15% HP (Phase 2)');
INSERT INTO `creature_ai_scripts` VALUES (889513,8895,7,0,100,2,0,0,0,0,22,0,0,0,0,0,0,0,0,0,0,0,'Anvilrage Officer - On Evade set Phase to 0');

UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = 8896;
DELETE FROM `creature_ai_scripts` WHERE `creature_id` = 8896;
INSERT INTO `creature_ai_scripts` VALUES (889601,8896,0,0,100,2,0,0,0,0,21,0,0,0,0,0,0,0,0,0,0,0,'Shadowforge Peasant - Stop Movement on Aggro');
INSERT INTO `creature_ai_scripts` VALUES (889602,8896,4,0,100,2,0,0,0,0,11,6660,1,0,22,6,0,0,0,0,0,0,'Shadowforge Peasant - Cast Shoot and Set Phase 1 on Aggro');
INSERT INTO `creature_ai_scripts` VALUES (889603,8896,0,6,100,3,2200,4700,2200,4700,11,6660,1,0,0,0,0,0,0,0,0,0,'Shadowforge Peasant - Cast Shoot (Phase 1)');
INSERT INTO `creature_ai_scripts` VALUES (889604,8896,9,6,100,3,20,100,0,0,21,1,0,0,0,0,0,0,0,0,0,0,'Shadowforge Peasant - Start Movement at 20 Yards (Phase 1)');
INSERT INTO `creature_ai_scripts` VALUES (889605,8896,9,6,100,3,6,10,0,0,21,0,0,0,0,0,0,0,0,0,0,0,'Shadowforge Peasant - Stop Movement at 10 Yards (Phase 1)');
INSERT INTO `creature_ai_scripts` VALUES (889606,8896,9,6,100,3,0,5,0,0,21,1,0,0,0,0,0,0,0,0,0,0,'Shadowforge Peasant - Start Movement at 5 Yards (Phase 1)');
INSERT INTO `creature_ai_scripts` VALUES (889607,8896,2,0,100,2,15,0,0,0,22,5,0,0,0,0,0,0,0,0,0,0,'Shadowforge Peasant - Set Phase 2 at 15% HP');
INSERT INTO `creature_ai_scripts` VALUES (889608,8896,2,5,100,2,15,0,0,0,21,1,0,0,25,0,0,0,1,-47,0,0,'Shadowforge Peasant - Start Movement and Flee at 15% HP (Phase 2)');
INSERT INTO `creature_ai_scripts` VALUES (889609,8896,7,0,100,2,0,0,0,0,22,0,0,0,0,0,0,0,0,0,0,0,'Shadowforge Peasant - On Evade set Phase to 0');
INSERT INTO `creature_ai_scripts` VALUES (889610,8896,2,0,100,3,25,0,15300,22900,11,11642,0,0,0,0,0,0,0,0,0,0,'Shadowforge Peasant - Cast Heal When Below 25% HP');
INSERT INTO `creature_ai_scripts` VALUES (889611,8896,0,0,70,3,5500,5500,14000,14000,11,6713,1,0,0,0,0,0,0,0,0,0,'Shadowforge Peasant - Disarm');
INSERT INTO `creature_ai_scripts` VALUES (889612,8896,0,0,70,3,5500,5500,8000,8000,11,9053,1,0,0,0,0,0,0,0,0,0,'Shadowforge Peasant - Fireball');
INSERT INTO `creature_ai_scripts` VALUES (889613,8896,0,0,70,3,5500,5500,12000,15000,11,3604,1,0,0,0,0,0,0,0,0,0,'Shadowforge Peasant - Tendon Rip');
INSERT INTO `creature_ai_scripts` VALUES (889614,8896,0,0,70,3,5500,5500,10000,11000,11,13584,1,0,0,0,0,0,0,0,0,0,'Shadowforge Peasant - Strike');
INSERT INTO `creature_ai_scripts` VALUES (889615,8896,0,0,70,3,1000,5500,14000,15000,11,7978,1,0,0,0,0,0,0,0,0,0,'Shadowforge Peasant - Throw Dynamite');

UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = 8897;
DELETE FROM `creature_ai_scripts` WHERE `creature_id` = 8897;
INSERT INTO `creature_ai_scripts` VALUES (889701,8897,0,0,100,3,2000,4000,14000,14000,11,9143,1,0,0,0,0,0,0,0,0,0,'Doomforge Craftsman - Cast Bomb');
INSERT INTO `creature_ai_scripts` VALUES (889702,8897,0,0,100,3,5500,5500,16000,16000,11,13951,0,0,0,0,0,0,0,0,0,0,'Doomforge Craftsman - Cast Rebuild');
INSERT INTO `creature_ai_scripts` VALUES (889703,8897,0,0,100,3,5500,5500,12000,12000,11,15619,1,0,0,0,0,0,0,0,0,0,'Doomforge Craftsman - Cast Throw Wrench');

UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = 8898;
DELETE FROM `creature_ai_scripts` WHERE `creature_id` = 8898;
INSERT INTO `creature_ai_scripts` VALUES (889801,8898,0,0,100,3,8000,8000,14000,15000,11,13953,1,0,0,0,0,0,0,0,0,0,'Anvilrage Marshal - Cast Holy Strike');
INSERT INTO `creature_ai_scripts` VALUES (889802,8898,4,0,100,2,0,0,0,0,11,8258,0,0,0,0,0,0,0,0,0,0,'Anvilrage Marshal - Cast Devotion Aura on Aggro');
INSERT INTO `creature_ai_scripts` VALUES (889803,8898,2,0,100,3,25,0,15300,22900,11,15493,0,0,0,0,0,0,0,0,0,0,'Anvilrage Marshal - Cast Holy Light When Below 25% HP');

UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = 8899;
DELETE FROM `creature_ai_scripts` WHERE `creature_id` = 8899;
INSERT INTO `creature_ai_scripts` VALUES (889901,8899,0,0,100,3,5500,5500,12000,12000,11,15496,1,0,0,0,0,0,0,0,0,0,'Doomforge Dragoon - Cast Cleave');
INSERT INTO `creature_ai_scripts` VALUES (889902,8899,0,0,100,2,0,0,0,0,21,0,0,0,0,0,0,0,0,0,0,0,'Doomforge Dragoon - Stop Movement on Aggro');
INSERT INTO `creature_ai_scripts` VALUES (889903,8899,4,0,100,2,0,0,0,0,11,15620,1,0,22,6,0,0,0,0,0,0,'Doomforge Dragoon - Cast Shoot and Set Phase 1 on Aggro');
INSERT INTO `creature_ai_scripts` VALUES (889904,8899,0,6,100,3,2200,4700,2200,4700,11,15620,1,0,0,0,0,0,0,0,0,0,'Doomforge Dragoon - Cast Shoot (Phase 1)');
INSERT INTO `creature_ai_scripts` VALUES (889905,8899,9,6,100,3,20,100,0,0,21,1,0,0,0,0,0,0,0,0,0,0,'Doomforge Dragoon - Start Movement at 20 Yards (Phase 1)');
INSERT INTO `creature_ai_scripts` VALUES (889906,8899,9,6,100,3,6,10,0,0,21,0,0,0,0,0,0,0,0,0,0,0,'Doomforge Dragoon - Stop Movement at 10 Yards (Phase 1)');
INSERT INTO `creature_ai_scripts` VALUES (889907,8899,9,6,100,3,0,5,0,0,21,1,0,0,0,0,0,0,0,0,0,0,'Doomforge Dragoon - Start Movement at 5 Yards (Phase 1)');
INSERT INTO `creature_ai_scripts` VALUES (889908,8899,2,0,100,2,15,0,0,0,22,5,0,0,0,0,0,0,0,0,0,0,'Doomforge Dragoon - Set Phase 2 at 15% HP');
INSERT INTO `creature_ai_scripts` VALUES (889909,8899,2,5,100,2,15,0,0,0,21,1,0,0,25,0,0,0,1,-47,0,0,'Doomforge Dragoon - Start Movement and Flee at 15% HP (Phase 2)');
INSERT INTO `creature_ai_scripts` VALUES (889910,8899,7,0,100,2,0,0,0,0,22,0,0,0,0,0,0,0,0,0,0,0,'Doomforge Dragoon - On Evade set Phase to 0');
INSERT INTO `creature_ai_scripts` VALUES (889911,8899,0,0,100,3,1000,5500,8000,8000,11,15495,1,0,0,0,0,0,0,0,0,0,'Doomforge Dragoon - Cast Explosive Shot');

UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = 8900;
DELETE FROM `creature_ai_scripts` WHERE `creature_id` = 8900;
INSERT INTO `creature_ai_scripts` VALUES (890001,8900,0,0,100,3,1500,3000,15000,15000,11,13745,0,0,0,0,0,0,0,0,0,0,'Doomforge Arcanasmith - Arcane Explosion');
INSERT INTO `creature_ai_scripts` VALUES (890002,8900,0,0,100,3,1000,4000,9000,12000,11,13748,1,0,0,0,0,0,0,0,0,0,'Doomforge Arcanasmith - Arcane Bolt');

UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = 8902;
DELETE FROM `creature_ai_scripts` WHERE `creature_id` = 8902;
INSERT INTO `creature_ai_scripts` VALUES (890201,8902,2,0,100,3,25,0,15300,22900,11,11642,0,0,0,0,0,0,0,0,0,0,'Shadowforge Citizen - Cast Heal When Below 25% HP');
INSERT INTO `creature_ai_scripts` VALUES (890202,8902,0,0,70,3,5500,5500,18000,18000,11,11831,0,0,0,0,0,0,0,0,0,0,'Shadowforge Citizen - Cast Frost Nova');
INSERT INTO `creature_ai_scripts` VALUES (890203,8902,0,0,70,3,5500,5500,12000,15000,11,13339,1,0,0,0,0,0,0,0,0,0,'Shadowforge Citizen - Cast Fire Blast');
INSERT INTO `creature_ai_scripts` VALUES (890204,8902,0,0,70,3,5500,5500,10000,11000,11,13446,1,0,0,0,0,0,0,0,0,0,'Shadowforge Citizen - Cast Strike');
INSERT INTO `creature_ai_scripts` VALUES (890205,8902,0,0,70,3,5500,5500,14000,15000,11,13444,1,0,0,0,0,0,0,0,0,0,'Shadowforge Citizen - Cast Sunder Armor');

UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = 8903;
DELETE FROM `creature_ai_scripts` WHERE `creature_id` = 8903;
INSERT INTO `creature_ai_scripts` VALUES (890301,8903,0,0,80,3,8000,8000,12000,12000,11,13730,0,0,0,0,0,0,0,0,0,0,'Anvilrage Captain - Cast Demoralizing Shout');
INSERT INTO `creature_ai_scripts` VALUES (890302,8903,0,0,100,3,8000,8000,15000,17000,11,13737,1,0,0,0,0,0,0,0,0,0,'Anvilrage Captain - Cast Mortal Strike');
INSERT INTO `creature_ai_scripts` VALUES (890303,8903,0,0,100,3,8000,8000,13000,16000,11,11972,1,0,0,0,0,0,0,0,0,0,'Anvilrage Captain - Cast Shield Bash');
INSERT INTO `creature_ai_scripts` VALUES (890304,8903,0,0,100,3,8000,8000,13000,16000,11,12169,0,1,0,0,0,0,0,0,0,0,'Anvilrage Captain - Cast Shield Block');

UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = 8904;
DELETE FROM `creature_ai_scripts` WHERE `creature_id` = 8904;
INSERT INTO `creature_ai_scripts` VALUES (890401,8904,0,0,100,2,0,0,0,0,21,0,0,0,0,0,0,0,0,0,0,0,'Shadowforge Senator - Stop Movement on Aggro');
INSERT INTO `creature_ai_scripts` VALUES (890402,8904,4,0,100,2,0,0,0,0,11,15547,1,0,22,6,0,0,0,0,0,0,'Shadowforge Senator - Cast Shoot and Set Phase 1 on Aggro');
INSERT INTO `creature_ai_scripts` VALUES (890403,8904,0,6,100,3,2200,4700,2200,4700,11,15547,1,0,0,0,0,0,0,0,0,0,'Shadowforge Senator - Cast Shoot (Phase 1)');
INSERT INTO `creature_ai_scripts` VALUES (890404,8904,9,6,100,3,20,100,0,0,21,1,0,0,0,0,0,0,0,0,0,0,'Shadowforge Senator - Start Movement at 20 Yards (Phase 1)');
INSERT INTO `creature_ai_scripts` VALUES (890405,8904,9,6,100,3,6,10,0,0,21,0,0,0,0,0,0,0,0,0,0,0,'Shadowforge Senator - Stop Movement at 10 Yards (Phase 1)');
INSERT INTO `creature_ai_scripts` VALUES (890406,8904,9,6,100,3,0,5,0,0,21,1,0,0,0,0,0,0,0,0,0,0,'Shadowforge Senator - Start Movement at 5 Yards (Phase 1)');
INSERT INTO `creature_ai_scripts` VALUES (890407,8904,2,0,100,2,15,0,0,0,22,5,0,0,0,0,0,0,0,0,0,0,'Shadowforge Senator - Set Phase 2 at 15% HP');
INSERT INTO `creature_ai_scripts` VALUES (890408,8904,2,5,100,2,15,0,0,0,21,1,0,0,25,0,0,0,1,-47,0,0,'Shadowforge Senator - Start Movement and Flee at 15% HP (Phase 2)');
INSERT INTO `creature_ai_scripts` VALUES (890409,8904,7,0,100,2,0,0,0,0,22,0,0,0,0,0,0,0,0,0,0,0,'Shadowforge Senator - On Evade set Phase to 0');
INSERT INTO `creature_ai_scripts` VALUES (890410,8904,0,0,100,3,5500,5500,12000,15000,11,14868,1,0,0,0,0,0,0,0,0,0,'Shadowforge Senator - Cast Curse of Agony');
INSERT INTO `creature_ai_scripts` VALUES (890411,8904,0,0,90,3,5500,5500,10000,11000,11,11831,0,0,0,0,0,0,0,0,0,0,'Shadowforge Senator - Cast Frost Nova');
INSERT INTO `creature_ai_scripts` VALUES (890412,8904,0,0,100,3,5500,5500,18000,18000,11,2601,0,1,0,0,0,0,0,0,0,0,'Shadowforge Senator - Cast Fire Shield');

UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = 8905;
DELETE FROM `creature_ai_scripts` WHERE `creature_id` = 8905;
INSERT INTO `creature_ai_scripts` VALUES (890501,8905,0,0,100,3,5500,5500,12000,12000,11,15621,1,0,0,0,0,0,0,0,0,0,'Warbringer Construct - Cast Skull Crack');

UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = 8906;
DELETE FROM `creature_ai_scripts` WHERE `creature_id` = 8906;
INSERT INTO `creature_ai_scripts` VALUES (890601,8906,2,0,100,2,30,0,0,0,11,12795,0,0,1,-106,0,0,0,0,0,0,'Ragereaver Golem - Cast Frenzy at 30% HP');

UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = 8907;
DELETE FROM `creature_ai_scripts` WHERE `creature_id` = 8907;
INSERT INTO `creature_ai_scripts` VALUES (890701,8907,0,0,100,3,5500,5500,12000,12000,11,10966,1,0,0,0,0,0,0,0,0,0,'Wrath Hammer Construct - Cast Uppercut');
INSERT INTO `creature_ai_scripts` VALUES (890702,8907,0,0,100,3,1500,5500,16000,18000,11,15575,1,0,0,0,0,0,0,0,0,0,'Wrath Hammer Construct - Cast Flame Cannon');

UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = 8909;
DELETE FROM `creature_ai_scripts` WHERE `creature_id` = 8909;
INSERT INTO `creature_ai_scripts` VALUES (890901,8909,0,0,100,2,0,0,0,0,21,0,0,0,0,0,0,0,0,0,0,0,'Fireguard - Stop Movement on Aggro');
INSERT INTO `creature_ai_scripts` VALUES (890902,8909,4,0,100,2,0,0,0,0,11,15242,1,0,22,6,0,0,0,0,0,0,'Fireguard - Cast Fireball and Set Phase 1 on Aggro');
INSERT INTO `creature_ai_scripts` VALUES (890903,8909,0,6,100,3,3400,4700,3400,4700,0,0,0,0,11,15242,1,0,0,0,0,0,'Fireguard - Cast Fireball (Phase 1)');
INSERT INTO `creature_ai_scripts` VALUES (890904,8909,3,6,100,2,15,0,0,0,21,1,0,0,22,5,0,0,0,0,0,0,'Fireguard - Start Movement and Set Phase 2 when Mana is at 15%');
INSERT INTO `creature_ai_scripts` VALUES (890905,8909,9,6,100,3,25,80,0,0,21,1,0,0,0,0,0,0,0,0,0,0,'Fireguard - Start Movement Beyond 25 Yards');
INSERT INTO `creature_ai_scripts` VALUES (890906,8909,3,5,100,3,100,30,100,100,22,6,0,0,0,0,0,0,0,0,0,0,'Fireguard- Set Phase 1 when Mana is above 30% (Phase 2)');
INSERT INTO `creature_ai_scripts` VALUES (890907,8909,2,0,100,2,15,0,0,0,22,3,0,0,0,0,0,0,0,0,0,0,'Fireguard - Set Phase 3 at 15% HP');
INSERT INTO `creature_ai_scripts` VALUES (890908,8909,2,3,100,2,15,0,0,0,21,1,0,0,25,0,0,0,1,-47,0,0,'Fireguard - Start Movement and Flee at 15% HP (Phase 3)');
INSERT INTO `creature_ai_scripts` VALUES (890909,8909,7,0,100,2,0,0,0,0,22,0,0,0,0,0,0,0,0,0,0,0,'Fireguard - On Evade set Phase to 0');

UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = 8910;
DELETE FROM `creature_ai_scripts` WHERE `creature_id` = 8910;
INSERT INTO `creature_ai_scripts` VALUES (891001,8910,0,0,100,3,5000,5000,12000,12000,11,13341,1,0,0,0,0,0,0,0,0,0,'Blazing Fireguard - Cast Fire Blast');
INSERT INTO `creature_ai_scripts` VALUES (891002,8910,0,0,100,3,2000,5000,14000,16000,11,12742,1,0,0,0,0,0,0,0,0,0,'Blazing Fireguard - Cast Immolate');
INSERT INTO `creature_ai_scripts` VALUES (891003,8910,0,0,100,3,1500,5000,18000,18000,11,15241,1,0,0,0,0,0,0,0,0,0,'Blazing Fireguard - Cast Scorch');

UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = 8911;
DELETE FROM `creature_ai_scripts` WHERE `creature_id` = 8911;
INSERT INTO `creature_ai_scripts` VALUES (891101,8911,0,0,100,3,5500,5500,12000,14000,11,15285,0,0,0,0,0,0,0,0,0,0,'Fireguard Destroyer - Cast Fireball Volley');

UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = 8912;
DELETE FROM `creature_ai_scripts` WHERE `creature_id` = 8912;
INSERT INTO `creature_ai_scripts` VALUES (891201,8912,0,0,80,3,5500,5500,10000,11000,11,14032,1,0,0,0,0,0,0,0,0,0,"Twilight's Hammer Torturer - Cast Shadow Word: Pain");

UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = 8913;
DELETE FROM `creature_ai_scripts` WHERE `creature_id` = 8913;
INSERT INTO `creature_ai_scripts` VALUES (891301,8913,0,0,70,3,1000,5500,14000,14000,11,13748,1,0,0,0,0,0,0,0,0,0,'Twilight Emissary - Cast Arcane Bolt');
INSERT INTO `creature_ai_scripts` VALUES (891302,8913,0,0,100,3,1500,5500,18000,18000,11,13745,0,0,0,0,0,0,0,0,0,0,'Twilight Emissary - Cast Arcane Explosion');
INSERT INTO `creature_ai_scripts` VALUES (891303,8913,0,0,70,3,5500,5500,15000,15000,11,15063,0,0,0,0,0,0,0,0,0,0,'Twilight Emissary - Cast Frost Nova');
INSERT INTO `creature_ai_scripts` VALUES (891304,8913,0,0,70,3,5500,5500,8000,8000,11,15043,1,0,0,0,0,0,0,0,0,0,'Twilight Emissary - Cast Frostbolt');
INSERT INTO `creature_ai_scripts` VALUES (891305,8913,0,0,70,3,1000,5500,14000,15000,11,15288,0,1,0,0,0,0,0,0,0,0,'Twilight Emissary - Cast Throw Dynamite');
INSERT INTO `creature_ai_scripts` VALUES (891306,8913,0,0,100,2,0,0,0,0,21,0,0,0,0,0,0,0,0,0,0,0,'Twilight Emissary - Stop Movement on Aggro');
INSERT INTO `creature_ai_scripts` VALUES (891307,8913,4,0,100,2,0,0,0,0,11,12466,1,0,22,6,0,0,0,0,0,0,'Twilight Emissary - Cast Fireball and Set Phase 1 on Aggro');
INSERT INTO `creature_ai_scripts` VALUES (891308,8913,0,6,100,3,3400,4700,3400,4700,0,0,0,0,11,12466,1,0,0,0,0,0,'Twilight Emissary - Cast Fireball (Phase 1)');
INSERT INTO `creature_ai_scripts` VALUES (891309,8913,3,6,100,2,15,0,0,0,21,1,0,0,22,5,0,0,0,0,0,0,'Twilight Emissary - Start Movement and Set Phase 2 when Mana is at 15%');
INSERT INTO `creature_ai_scripts` VALUES (891310,8913,9,6,100,3,25,80,0,0,21,1,0,0,0,0,0,0,0,0,0,0,'Twilight Emissary - Start Movement Beyond 25 Yards');
INSERT INTO `creature_ai_scripts` VALUES (891311,8913,3,5,100,3,100,30,100,100,22,6,0,0,0,0,0,0,0,0,0,0,'Twilight Emissary - Set Phase 1 when Mana is above 30% (Phase 2)');
INSERT INTO `creature_ai_scripts` VALUES (891312,8913,2,0,100,2,15,0,0,0,22,3,0,0,0,0,0,0,0,0,0,0,'Twilight Emissary - Set Phase 3 at 15% HP');
INSERT INTO `creature_ai_scripts` VALUES (891313,8913,2,3,100,2,15,0,0,0,21,1,0,0,25,0,0,0,1,-47,0,0,'Twilight Emissary - Start Movement and Flee at 15% HP (Phase 3)');
INSERT INTO `creature_ai_scripts` VALUES (891314,8913,7,0,100,2,0,0,0,0,22,0,0,0,0,0,0,0,0,0,0,0,'Twilight Emissary - On Evade set Phase to 0');
INSERT INTO `creature_ai_scripts` VALUES (891315,8913,1,0,100,3,1000,1000,1800000,1800000,11,12544,0,0,0,0,0,0,0,0,0,0,'Twilight Emissary - Cast Frost Armor on Spawn');

UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = 8914;
DELETE FROM `creature_ai_scripts` WHERE `creature_id` = 8914;
INSERT INTO `creature_ai_scripts` VALUES (891401,8914,0,0,100,3,5500,5500,15000,15000,11,13902,1,0,0,0,0,0,0,0,0,0,'Twilight Bodyguard - Cast Fist of Ragnaros');
INSERT INTO `creature_ai_scripts` VALUES (891402,8914,0,0,60,3,5500,5500,10000,11000,11,15615,1,0,0,0,0,0,0,0,0,0,'Twilight Bodyguard - Cast Pummel');
INSERT INTO `creature_ai_scripts` VALUES (891403,8914,0,0,100,3,5500,5500,18000,18000,11,13903,0,0,0,0,0,0,0,0,0,0,'Twilight Bodyguardr - Cast Seal of Sacrifice');

UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = 8915;
DELETE FROM `creature_ai_scripts` WHERE `creature_id` = 8915;
INSERT INTO `creature_ai_scripts` VALUES (891501,8915,0,0,70,3,1000,2000,14000,14000,11,12248,1,0,0,0,0,0,0,0,0,0,"Twilight's Hammer Ambassador - Cast Amplify Damage");
INSERT INTO `creature_ai_scripts` VALUES (891502,8915,0,0,100,3,1500,5500,18000,18000,11,11980,1,0,0,0,0,0,0,0,0,0,"Twilight's Hammer Ambassador - Cast Curse of Weakness");
INSERT INTO `creature_ai_scripts` VALUES (891503,8915,0,0,70,3,5500,5500,15000,15000,11,15501,1,0,0,0,0,0,0,0,0,0,"Twilight's Hammer Ambassador - Cast Earth Shock");
INSERT INTO `creature_ai_scripts` VALUES (891504,8915,0,0,70,3,5500,5500,22000,22000,11,15096,1,0,0,0,0,0,0,0,0,0,"Twilight's Hammer Ambassador - Cast Flame Shock");
INSERT INTO `creature_ai_scripts` VALUES (891505,8915,0,0,70,3,5500,5500,14000,15000,11,15499,1,0,0,0,0,0,0,0,0,0,"Twilight's Hammer Ambassador- Cast Frost Shock");
INSERT INTO `creature_ai_scripts` VALUES (891506,8915,0,0,70,3,5500,5500,20000,20000,11,15500,1,0,0,0,0,0,0,0,0,0,"Twilight's Hammer Ambassador- Cast Shock");
INSERT INTO `creature_ai_scripts` VALUES (891507,8915,0,0,100,3,5500,5500,20000,25000,11,6742,0,1,0,0,0,0,0,0,0,0,"Twilight's Hammer Ambassador- Cast Bloodlust");

UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = 8916;
DELETE FROM `creature_ai_scripts` WHERE `creature_id` = 8916;
INSERT INTO `creature_ai_scripts` VALUES (891601,8916,0,0,100,3,5000,5000,17000,18000,11,11976,1,0,0,0,0,0,0,0,0,0,'Anvilrage Overseer - Cast Strike');
INSERT INTO `creature_ai_scripts` VALUES (891602,8916,0,0,100,3,5000,5000,15000,17000,11,9080,1,0,0,0,0,0,0,0,0,0,'Anvilrage Overseer - Cast Hamstring');
INSERT INTO `creature_ai_scripts` VALUES (891603,8916,0,0,100,3,5000,5000,20000,20000,11,9128,0,0,0,0,0,0,0,0,0,0,'Anvilrage Overseer - Cast Battle Shout');
INSERT INTO `creature_ai_scripts` VALUES (891604,8916,0,0,100,3,5000,5000,12000,12000,11,15284,1,0,0,0,0,0,0,0,0,0,'Anvilrage Soldier - Cast Cleave');
INSERT INTO `creature_ai_scripts` VALUES (891605,8916,0,0,100,3,5000,5000,15000,16000,11,9080,1,0,0,0,0,0,0,0,0,0,'Anvilrage Soldier - Cast Hamstring');

UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = 8920;
DELETE FROM `creature_ai_scripts` WHERE `creature_id` = 8920;
INSERT INTO `creature_ai_scripts` VALUES (892001,8920,0,0,80,3,1000,5500,10000,11000,11,7896,1,0,0,0,0,0,0,0,0,0,'Weapon Technician - Cast Exploding Shot');
INSERT INTO `creature_ai_scripts` VALUES (892002,8920,0,0,100,3,5500,5500,13000,15000,11,12551,1,0,0,0,0,0,0,0,0,0,'Weapon Technician- Cast Frost Shot');
INSERT INTO `creature_ai_scripts` VALUES (892003,8920,0,0,100,3,5500,5500,12000,12000,11,14443,1,0,0,0,0,0,0,0,0,0,'Weapon Technician- Cast Multi-Shot');
INSERT INTO `creature_ai_scripts` VALUES (892004,8920,0,0,100,2,0,0,0,0,21,0,0,0,0,0,0,0,0,0,0,0,'Weapon Technician - Stop Movement on Aggro');
INSERT INTO `creature_ai_scripts` VALUES (892005,8920,4,0,100,2,0,0,0,0,11,15620,1,0,22,6,0,0,0,0,0,0,'Weapon Technician - Cast Shoot and Set Phase 1 on Aggro');
INSERT INTO `creature_ai_scripts` VALUES (892006,8920,0,6,100,3,2200,4700,2200,4700,11,15620,1,0,0,0,0,0,0,0,0,0,'Weapon Technician - Cast Shoot (Phase 1)');
INSERT INTO `creature_ai_scripts` VALUES (892007,8920,9,6,100,3,20,100,0,0,21,1,0,0,0,0,0,0,0,0,0,0,'Weapon Technician - Start Movement at 20 Yards (Phase 1)');
INSERT INTO `creature_ai_scripts` VALUES (892008,8920,9,6,100,3,6,10,0,0,21,0,0,0,0,0,0,0,0,0,0,0,'Weapon Technician - Stop Movement at 10 Yards (Phase 1)');
INSERT INTO `creature_ai_scripts` VALUES (892009,8920,9,6,100,3,0,5,0,0,21,1,0,0,0,0,0,0,0,0,0,0,'Weapon Technician - Start Movement at 5 Yards (Phase 1)');
INSERT INTO `creature_ai_scripts` VALUES (892010,8920,2,0,100,2,15,0,0,0,22,5,0,0,0,0,0,0,0,0,0,0,'Weapon Technician - Set Phase 2 at 15% HP');
INSERT INTO `creature_ai_scripts` VALUES (892011,8920,2,5,100,2,15,0,0,0,21,1,0,0,25,0,0,0,1,-47,0,0,'Weapon Technician - Start Movement and Flee at 15% HP (Phase 2)');
INSERT INTO `creature_ai_scripts` VALUES (892012,8920,7,0,100,2,0,0,0,0,22,0,0,0,0,0,0,0,0,0,0,0,'Weapon Technician - On Evade set Phase to 0');

UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = 8922;
DELETE FROM `creature_ai_scripts` WHERE `creature_id` = 8922;
INSERT INTO `creature_ai_scripts` VALUES (892201,8922,0,0,100,3,2000,2000,12000,12000,11,7140,1,0,0,0,0,0,0,0,0,0,'Bloodhound Mastiff - Cast Expose Weakness');
INSERT INTO `creature_ai_scripts` VALUES (892202,8922,0,0,100,3,2000,2000,16000,16000,11,15608,1,1,0,0,0,0,0,0,0,0,'Bloodhound Mastiff - Cast Ravenous Claw');

UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = 9029;
DELETE FROM `creature_ai_scripts` WHERE `creature_id` = 9029;
INSERT INTO `creature_ai_scripts` VALUES (902901,9029,0,0,80,3,5500,5500,10000,11000,11,14331,1,0,0,0,0,0,0,0,0,0,'Eviscerator - Cast Vicious Rend');
INSERT INTO `creature_ai_scripts` VALUES (902902,9029,0,0,100,3,3000,5500,13000,15000,11,15245,0,0,0,0,0,0,0,0,0,0,'Eviscerator - Cast Shadow Bolt Volley');
INSERT INTO `creature_ai_scripts` VALUES (902903,9029,0,0,100,3,2000,5500,18000,18000,11,7121,0,1,0,0,0,0,0,0,0,0,'Eviscerator - Cast Anti-Magic Shield');

UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = 9030;
DELETE FROM `creature_ai_scripts` WHERE `creature_id` = 9030;
INSERT INTO `creature_ai_scripts` VALUES (903001,9030,0,0,100,3,1000,2000,3000,3000,11,15254,1,0,0,0,0,0,0,0,0,0,"Ok'thor the Breaker - Cast Arcane Bolt");
INSERT INTO `creature_ai_scripts` VALUES (903002,9030,0,0,80,3,1500,5500,15000,15000,11,15453,0,0,0,0,0,0,0,0,0,0,"Ok'thor the Breaker - Cast Arcane Explosion");
INSERT INTO `creature_ai_scripts` VALUES (903003,9030,0,0,100,3,1500,5500,16000,16000,11,13323,1,0,0,0,0,0,0,0,0,0,"Ok'thor the Breaker - Cast Polymorph");
INSERT INTO `creature_ai_scripts` VALUES (903004,9030,0,0,100,3,2000,2000,12000,13000,11,13747,1,0,0,0,0,0,0,0,0,0,"Ok'thor the Breaker - Cast Slow");

UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = 9032;
DELETE FROM `creature_ai_scripts` WHERE `creature_id` = 9032;
INSERT INTO `creature_ai_scripts` VALUES (903201,9032,0,0,100,3,14000,16000,28000,32000,11,15475,0,0,0,0,0,0,0,0,0,0,'Hedrum the Creeper - Cast Baneful Poison');
INSERT INTO `creature_ai_scripts` VALUES (903202,9032,0,0,100,3,13000,14000,26000,28000,11,3609,1,0,0,0,0,0,0,0,0,0,'Hedrum the Creeper - Cast Paralyzing Poison');
INSERT INTO `creature_ai_scripts` VALUES (903203,9032,4,0,100,2,0,0,0,0,11,15474,1,4,0,0,0,0,0,0,0,0,'Hedrum the Creeper - Cast Web Explosion on Aggro');

UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = 9319;
DELETE FROM `creature_ai_scripts` WHERE `creature_id` = 9319;
INSERT INTO `creature_ai_scripts` VALUES (931901,9319,4,0,100,6,0,0,0,0,1,-1138,0,0,0,0,0,0,0,0,0,0,'Houndmaster Grebmar - Say on Aggro');
INSERT INTO `creature_ai_scripts` VALUES (931902,9319,0,0,100,3,5000,5000,18000,18000,11,21049,0,1,0,0,0,0,0,0,0,0,'Houndmaster Grebmar - Cast Bloodlust');
INSERT INTO `creature_ai_scripts` VALUES (931903,9319,0,0,100,3,8000,8000,15000,15000,11,13730,0,0,0,0,0,0,0,0,0,0,'Houndmaster Grebmar - Cast Demoralizing Shout');
INSERT INTO `creature_ai_scripts` VALUES (931904,9319,0,0,100,3,2000,3000,12000,14000,11,15615,1,0,0,0,0,0,0,0,0,0,'Houndmaster Grebmar - Cast Pummel');

UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = 9398;
DELETE FROM `creature_ai_scripts` WHERE `creature_id` = 9398;
INSERT INTO `creature_ai_scripts` VALUES (939801,9398,0,0,100,3,5500,5500,15000,15000,11,3631,0,0,0,0,0,0,0,0,0,0,"Twilight's Hammer Executioner - Battle Fury");
INSERT INTO `creature_ai_scripts` VALUES (939802,9398,0,0,100,3,5500,5500,17000,19000,11,13459,1,0,0,0,0,0,0,0,0,0,"Twilight's Hammer Executioner - Decimate");

UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = 9476;
DELETE FROM `creature_ai_scripts` WHERE `creature_id` = 9476;
INSERT INTO `creature_ai_scripts` VALUES (947601,9476,2,0,100,3,25,0,15300,22900,11,15504,0,0,0,0,0,0,0,0,0,0,'Watchman Doomgrip - Cast Drink Healing Potion When Below 25% HP');
INSERT INTO `creature_ai_scripts` VALUES (947602,9476,0,0,100,3,6000,6000,12000,12000,11,11971,1,0,0,0,0,0,0,0,0,0,'Watchman Doomgrip - Cast Sunder Armor');

UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = 9499;
DELETE FROM `creature_ai_scripts` WHERE `creature_id` = 9499;
INSERT INTO `creature_ai_scripts` VALUES (949901,9499,0,0,80,3,1000,5500,14000,15000,11,8994,1,0,0,0,0,0,0,0,0,0,'Plugger Spazzring - Cast Banish');
INSERT INTO `creature_ai_scripts` VALUES (949902,9499,0,0,100,3,5500,5500,12000,13000,11,13338,1,0,0,0,0,0,0,0,0,0,'Plugger Spazzring - Cast Curse of Tongues');
INSERT INTO `creature_ai_scripts` VALUES (949903,9499,0,0,100,3,2000,2000,10000,10000,11,12742,1,0,0,0,0,0,0,0,0,0,'Plugger Spazzring - Cast Immolate');
INSERT INTO `creature_ai_scripts` VALUES (949904,9499,1,0,100,3,1000,1000,1800000,1800000,11,13787,0,0,0,0,0,0,0,0,0,0,'Plugger Spazzring - Cast Demon Armor on Spawn');
INSERT INTO `creature_ai_scripts` VALUES (949905,9499,0,0,100,2,0,0,0,0,21,0,0,0,0,0,0,0,0,0,0,0,'Plugger Spazzring - Stop Movement on Aggro');
INSERT INTO `creature_ai_scripts` VALUES (949906,9499,4,0,100,2,0,0,0,0,11,12739,1,0,22,6,0,0,0,0,0,0,'Plugger Spazzring - Cast Fireball and Set Phase 1 on Aggro');
INSERT INTO `creature_ai_scripts` VALUES (949907,9499,0,6,100,3,3400,4700,3400,4700,0,0,0,0,11,12739,1,0,0,0,0,0,'Plugger Spazzring - Cast Shadow Bolt (Phase 1)');
INSERT INTO `creature_ai_scripts` VALUES (949908,9499,3,6,100,2,15,0,0,0,21,1,0,0,22,5,0,0,0,0,0,0,'Plugger Spazzring - Start Movement and Set Phase 2 when Mana is at 15%');
INSERT INTO `creature_ai_scripts` VALUES (949909,9499,9,6,100,3,25,80,0,0,21,1,0,0,0,0,0,0,0,0,0,0,'Plugger Spazzring - Start Movement Beyond 25 Yards');
INSERT INTO `creature_ai_scripts` VALUES (949910,9499,3,5,100,3,100,30,100,100,22,6,0,0,0,0,0,0,0,0,0,0,'Plugger Spazzring - Set Phase 1 when Mana is above 30% (Phase 2)');
INSERT INTO `creature_ai_scripts` VALUES (949911,9499,2,0,100,2,15,0,0,0,22,3,0,0,0,0,0,0,0,0,0,0,'Plugger Spazzring - Set Phase 3 at 15% HP');
INSERT INTO `creature_ai_scripts` VALUES (949912,9499,2,3,100,2,15,0,0,0,21,1,0,0,25,0,0,0,1,-47,0,0,'Plugger Spazzring - Start Movement and Flee at 15% HP (Phase 3)');
INSERT INTO `creature_ai_scripts` VALUES (949913,9499,7,0,100,2,0,0,0,0,22,0,0,0,0,0,0,0,0,0,0,0,'Plugger Spazzring - On Evade set Phase to 0');

UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = 9520;
DELETE FROM `creature_ai_scripts` WHERE `creature_id` = 9520;
INSERT INTO `creature_ai_scripts` VALUES (952001,9520,2,0,100,0,25,0,0,0,2,35,0,0,24,0,0,0,0,0,0,0,'Grark Lorkrub - Become Friendly and Evade at 25% HP');
INSERT INTO `creature_ai_scripts` VALUES (952002,9520,1,0,100,0,120000,120000,0,0,2,29,0,0,0,0,0,0,0,0,0,0,'Grark Lorkrub - Become Hostile After 2 Minutes');

UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = 9876;
DELETE FROM `creature_ai_scripts` WHERE `creature_id` = 9876;
INSERT INTO `creature_ai_scripts` VALUES (987601,9876,11,0,100,0,0,0,0,0,1,-1146,0,0,0,0,0,0,0,0,0,0,'Lochee - Says Text when Spawned');

UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = 10043;
DELETE FROM `creature_ai_scripts` WHERE `creature_id` = 10043;
INSERT INTO `creature_ai_scripts` VALUES (1004301,10043,0,0,100,3,5500,5500,12000,15000,11,15692,1,0,0,0,0,0,0,0,0,0,"Ribbly's Crony - Cast Eviscerate");
INSERT INTO `creature_ai_scripts` VALUES (1004302,10043,0,0,70,3,5500,5500,14000,19000,11,15581,1,0,0,0,0,0,0,0,0,0,"Ribbly's Crony - Cast Sinister Strike");

UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = 10076;
DELETE FROM `creature_ai_scripts` WHERE `creature_id` = 10076;
INSERT INTO `creature_ai_scripts` VALUES (1007601,10076,4,0,100,6,0,0,0,0,1,-1143,0,0,0,0,0,0,0,0,0,0,'High Priestess of Thaurissan - Say on Aggro');

UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = 10264;
DELETE FROM `creature_ai_scripts` WHERE `creature_id` = 10264;
INSERT INTO `creature_ai_scripts` VALUES (1026401,10264,0,0,100,3,5000,5000,12000,15000,11,16727,0,0,0,0,0,0,0,0,0,0,'Solakar Flamewreath - Cast War Stomp');

UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = 10299;
DELETE FROM `creature_ai_scripts` WHERE `creature_id` = 10299;
INSERT INTO `creature_ai_scripts` VALUES (1029901,10299,4,0,100,2,0,0,0,0,11,16037,1,0,0,0,0,0,0,0,0,0,'Scarshield Infiltrator - Cast Mind Probe on Aggro');

UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = 10316;
DELETE FROM `creature_ai_scripts` WHERE `creature_id` = 10316;
INSERT INTO `creature_ai_scripts` VALUES (1031601,10316,0,0,100,3,2000,12100,7900,21900,11,15580,1,0,0,0,0,0,0,0,0,0,'Blackhand Incarcerator - Strike');
INSERT INTO `creature_ai_scripts` VALUES (1031602,10316,0,0,100,3,10000,20000,30000,35000,11,16045,5,0,0,0,0,0,0,0,0,0,'Blackhand Incarcerator - Encage');
INSERT INTO `creature_ai_scripts` VALUES (1031603,10316,2,0,100,2,15,0,0,0,25,0,0,0,1,-47,0,0,0,0,0,0,'Blackhand Incarcerator - Flee at 15% HP');
INSERT INTO `creature_ai_scripts` VALUES (1031604,10316,1,0,100,2,0,0,0,0,11,15281,0,0,0,0,0,0,0,0,0,0,'Blackhand Incarcerator - Encage Emberseer');

UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = 10540;
DELETE FROM `creature_ai_scripts` WHERE `creature_id` = 10540;
INSERT INTO `creature_ai_scripts` VALUES (1054001,10540,0,0,100,1,5500,5500,18500,22500,11,16097,0,0,0,0,0,0,0,0,0,0,"Vol'jin - Cast Hex");
INSERT INTO `creature_ai_scripts` VALUES (1054002,10540,0,0,100,1,5500,5500,8500,12500,11,17289,1,0,0,0,0,0,0,0,0,0,"Vol'jin - Cast Shadow Shock");
INSERT INTO `creature_ai_scripts` VALUES (1054003,10540,0,0,100,1,5500,5500,15000,15000,11,17146,1,0,0,0,0,0,0,0,0,0,"Vol'jin - Cast Shadow Word: Pain");
INSERT INTO `creature_ai_scripts` VALUES (1054004,10540,0,0,100,1,1500,5500,22000,22500,11,17820,0,0,0,0,0,0,0,0,0,0,"Vol'jin - Cast Veil of Shadow");
INSERT INTO `creature_ai_scripts` VALUES (1054005,10540,0,0,100,0,0,0,0,0,21,0,0,0,0,0,0,0,0,0,0,0,"Vol'jin - Stop Movement on Aggro");
INSERT INTO `creature_ai_scripts` VALUES (1054006,10540,4,0,100,0,0,0,0,0,11,20463,1,0,22,1,0,0,0,0,0,0,"Vol'jin - Cast Shoot and Set Phase 1 on Aggro");
INSERT INTO `creature_ai_scripts` VALUES (1054007,10540,0,13,100,1,2200,4700,2200,4700,11,20463,1,0,0,0,0,0,0,0,0,0,"Vol jin - Cast Shoot (Phase 1)");
INSERT INTO `creature_ai_scripts` VALUES (1054008,10540,9,13,100,1,20,100,0,0,21,1,0,0,0,0,0,0,0,0,0,0,"Vol'jin - Start Movement at 20 Yards (Phase 1)");
INSERT INTO `creature_ai_scripts` VALUES (1054009,10540,9,13,100,1,6,10,0,0,21,0,0,0,0,0,0,0,0,0,0,0,"Vol'jin - Stop Movement at 10 Yards (Phase 1)");
INSERT INTO `creature_ai_scripts` VALUES (1054010,10540,9,13,100,1,0,5,0,0,21,1,0,0,0,0,0,0,0,0,0,0,"Vol'jin - Start Movement at 5 Yards (Phase 1)");
INSERT INTO `creature_ai_scripts` VALUES (1054011,10540,2,0,100,0,15,0,0,0,22,2,0,0,0,0,0,0,0,0,0,0,"Vol'jin - Set Phase 2 at 15% HP");
INSERT INTO `creature_ai_scripts` VALUES (1054012,10540,2,11,100,0,15,0,0,0,21,1,0,0,25,0,0,0,1,-47,0,0,"Vol'jin - Start Movement and Flee at 15% HP (Phase 2)");
INSERT INTO `creature_ai_scripts` VALUES (1054013,10540,7,0,100,0,0,0,0,0,22,0,0,0,0,0,0,0,0,0,0,0,"Vol'jin - On Evade set Phase to 0");

UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = 10660;
DELETE FROM `creature_ai_scripts` WHERE `creature_id` = 10660;
INSERT INTO `creature_ai_scripts` VALUES (1066001,10660,0,0,100,0,0,0,0,0,21,0,0,0,0,0,0,0,0,0,0,0,'Cobalt Broodling - Stop Movement on Aggro');
INSERT INTO `creature_ai_scripts` VALUES (1066002,10660,4,0,100,0,0,0,0,0,11,9672,1,0,22,1,0,0,0,0,0,0,'Cobalt Broodling - Cast Frostbolt and Set Phase 1 on Aggro');
INSERT INTO `creature_ai_scripts` VALUES (1066003,10660,0,13,100,1,3400,4700,3400,4700,0,0,0,0,11,9672,1,0,0,0,0,0,'Cobalt Broodlinge - Cast Frostbolt (Phase 1)');
INSERT INTO `creature_ai_scripts` VALUES (1066004,10660,3,13,100,0,15,0,0,0,21,1,0,0,22,2,0,0,0,0,0,0,'Cobalt Broodling - Start Movement and Set Phase 2 when Mana is at 15%');
INSERT INTO `creature_ai_scripts` VALUES (1066005,10660,9,13,100,1,25,80,0,0,21,1,0,0,0,0,0,0,0,0,0,0,'Cobalt Broodling - Start Movement Beyond 25 Yards');
INSERT INTO `creature_ai_scripts` VALUES (1066006,10660,3,11,100,1,100,30,100,100,22,1,0,0,0,0,0,0,0,0,0,0,'Cobalt Broodling - Set Phase 1 when Mana is above 30% (Phase 2)');
INSERT INTO `creature_ai_scripts` VALUES (1066007,10660,0,0,75,1,1000,1000,10000,10000,11,17008,1,0,0,0,0,0,0,0,0,0,'Cobalt Broodling - Cast Drain Mana');
INSERT INTO `creature_ai_scripts` VALUES (1066008,10660,2,0,100,0,15,0,0,0,22,3,0,0,0,0,0,0,0,0,0,0,'Cobalt Broodling - Set Phase 3 at 15% HP');
INSERT INTO `creature_ai_scripts` VALUES (1066009,10660,2,7,100,0,15,0,0,0,21,1,0,0,25,0,0,0,1,-47,0,0,'Cobalt Broodling - Start Movement and Flee at 15% HP (Phase 3)');
INSERT INTO `creature_ai_scripts` VALUES (1066010,10660,7,0,100,0,0,0,0,0,22,0,0,0,0,0,0,0,0,0,0,0,'Cobalt Broodling - On Evade set Phase to 0');

UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = 10742;
DELETE FROM `creature_ai_scripts` WHERE `creature_id` = 10742;
INSERT INTO `creature_ai_scripts` VALUES (1074201,10742,0,0,100,3,10000,10000,14000,14000,11,16637,0,0,0,0,0,0,0,0,0,0,'Blackhand Dragon Handler - Cast Mend Dragon');

UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = 10882;
DELETE FROM `creature_ai_scripts` WHERE `creature_id` = 10882;
INSERT INTO `creature_ai_scripts` VALUES (1088201,10882,0,0,100,1,10100,16500,12700,24800,11,17213,1,0,0,0,0,0,0,0,0,0,'Arikara - Cast Curse of Vengeance');
INSERT INTO `creature_ai_scripts` VALUES (1088202,10882,2,0,100,0,30,0,0,0,11,8599,0,0,1,-106,0,0,0,0,0,0,'Arikara - Cast Enrage at 30% HP');

UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = 10896;
DELETE FROM `creature_ai_scripts` WHERE `creature_id` = 10896;
INSERT INTO `creature_ai_scripts` VALUES (1089601,10896,0,0,100,1,4000,7000,9000,12000,11,10966,1,0,0,0,0,0,0,0,0,0,'Arnak Grimtotem - Cast Uppercut');
INSERT INTO `creature_ai_scripts` VALUES (1089602,10896,0,0,100,1,4000,4000,8300,26900,11,11977,1,0,0,0,0,0,0,0,0,0,'Arnak Grimtotem - Cast Rend');

UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = 11256;
DELETE FROM `creature_ai_scripts` WHERE `creature_id` = 11256;
INSERT INTO `creature_ai_scripts` VALUES (1125601,11256,1,0,100,0,0,0,10000,10000,1,-148,0,0,0,0,0,0,0,0,0,0,'Manifestation of Water - Say after Spawn');

UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = 11353;
DELETE FROM `creature_ai_scripts` WHERE `creature_id` = 11353;
INSERT INTO `creature_ai_scripts` VALUES (1135301,11353,0,0,100,3,5000,5000,12000,12000,11,24437,0,0,0,0,0,0,0,0,0,0,'Gurubashi Blood Drinker - Cast Blood');
INSERT INTO `creature_ai_scripts` VALUES (1135302,11353,0,0,100,3,5500,5500,14000,19000,11,24435,1,1,0,0,0,0,0,0,0,0,'Gurubashi Blood Drinker - Cast Drain Life');

UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = 11365;
DELETE FROM `creature_ai_scripts` WHERE `creature_id` = 11365;
INSERT INTO `creature_ai_scripts` VALUES (1136501,11365,0,0,100,3,5500,5500,12000,19000,11,8355,1,0,0,0,0,0,0,0,0,0,'Zulian Panther - Cast Exploit Weakness');
INSERT INTO `creature_ai_scripts` VALUES (1136502,11365,0,0,100,3,5500,5500,15000,19000,11,24332,1,0,0,0,0,0,0,0,0,0,'Zulian Panther - Cast Rake');
INSERT INTO `creature_ai_scripts` VALUES (1136503,11365,0,0,100,3,5500,5500,12000,19000,11,24333,1,0,0,0,0,0,0,0,0,0,'Zulian Panther - Cast Ravage');

UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = 11370;
DELETE FROM `creature_ai_scripts` WHERE `creature_id` = 11370;
INSERT INTO `creature_ai_scripts` VALUES (1137001,11370,0,0,100,3,5500,5500,8000,10000,11,24600,1,0,0,0,0,0,0,0,0,0,'Razzashi Broodwidow - Cast Web Spin');

UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = 11388;
DELETE FROM `creature_ai_scripts` WHERE `creature_id` = 11388;
INSERT INTO `creature_ai_scripts` VALUES (1138801,11388,0,0,80,3,5500,5500,8000,15000,11,22885,1,0,0,0,0,0,0,0,0,0,'Voodoo Slave - Cast Earth Shock');
INSERT INTO `creature_ai_scripts` VALUES (1138802,11388,0,0,50,3,5500,5500,8000,15000,11,21401,1,0,0,0,0,0,0,0,0,0,'Voodoo Slave - Cast Frost Shock');
INSERT INTO `creature_ai_scripts` VALUES (1138803,11388,0,0,100,3,2000,5500,15000,15000,11,15869,0,0,0,0,0,0,0,0,0,0,'Voodoo Slave  - Cast Superior Healing Ward');
INSERT INTO `creature_ai_scripts` VALUES (1138804,11388,2,0,100,1,25,0,15300,22900,11,15982,0,0,0,0,0,0,0,0,0,0,"Voodoo Slave - Cast Healing Wave When Below 25% H'P");

UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = 11480;
DELETE FROM `creature_ai_scripts` WHERE `creature_id` = 11480;
INSERT INTO `creature_ai_scripts` VALUES (1148001,11480,0,0,100,3,1000,1000,15000,15000,11,15979,0,0,0,0,0,0,0,0,0,0,'Arcane Aberration - Cast Arcane Bolt');
INSERT INTO `creature_ai_scripts` VALUES (1148002,11480,0,0,100,3,3000,3000,12000,16000,11,22936,1,0,0,0,0,0,0,0,0,0,'Arcane Aberration - Cast Mana Burn');

UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = 11483;
DELETE FROM `creature_ai_scripts` WHERE `creature_id` = 11483;
INSERT INTO `creature_ai_scripts` VALUES (1148301,11483,0,0,100,2,5500,5500,0,0,11,14514,0,0,0,0,0,0,0,0,0,0,'Mana Remnant - Cast Blink');
INSERT INTO `creature_ai_scripts` VALUES (1148302,11483,0,0,100,3,3000,5500,12000,13000,11,15659,1,0,0,0,0,0,0,0,0,0,'Mana Remnant - Cast Chain Lightning');

DELETE FROM `creature_ai_scripts` WHERE `creature_id` = 11669;
INSERT INTO `creature_ai_scripts` VALUES (1166901,11669,9,0,100,3,0,10,10000,15000,11,20602,0,0,0,0,0,0,0,0,0,0,'Flame Imp - Cast Fire Nova');

UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = 11735;
DELETE FROM `creature_ai_scripts` WHERE `creature_id` = 11735;
INSERT INTO `creature_ai_scripts` VALUES (1173501,11735,0,0,100,1,15000,15000,15000,30000,11,5416,1,0,0,0,0,0,0,0,0,0,'Stonelash Scorpid - Cast Venom Sting');

UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = 11736;
DELETE FROM `creature_ai_scripts` WHERE `creature_id` = 11736;
INSERT INTO `creature_ai_scripts` VALUES (1173601,11736,0,0,100,1,15000,15000,15000,30000,11,5416,1,0,0,0,0,0,0,0,0,0,'Stonelash Pincer - Cast Venom Sting');
INSERT INTO `creature_ai_scripts` VALUES (1173602,11736,0,0,100,1,2000,3000,15000,20000,11,3604,1,0,0,0,0,0,0,0,0,0,'Stonelash Pincer - Cast Tendon Rip');

UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = 11737;
DELETE FROM `creature_ai_scripts` WHERE `creature_id` = 11737;
INSERT INTO `creature_ai_scripts` VALUES (1173701,11737,0,0,100,1,3000,5000,5000,7000,11,3391,0,0,0,0,0,0,0,0,0,0,'Stonelash Flayer - Casts Thrash');
INSERT INTO `creature_ai_scripts` VALUES (1173702,11737,0,0,100,1,15000,15000,15000,30000,11,5416,1,0,0,0,0,0,0,0,0,0,'Stonelash Flayer - Cast Venom Sting');

UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = 11738;
DELETE FROM `creature_ai_scripts` WHERE `creature_id` = 11738;
INSERT INTO `creature_ai_scripts` VALUES (1173801,11738,0,0,100,1,3500,3500,9500,13700,11,744,4,0,0,0,0,0,0,0,0,0,'Sand Skitterer - Poison');

UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = 11739;
DELETE FROM `creature_ai_scripts` WHERE `creature_id` = 11739;
INSERT INTO `creature_ai_scripts` VALUES (1173901,11739,0,0,100,1,3500,3500,9500,13700,11,745,4,0,0,0,0,0,0,0,0,0,'Rock Stalker- Cast Web');
INSERT INTO `creature_ai_scripts` VALUES (1173902,11739,0,0,100,1,3500,3500,9500,13700,11,744,4,0,0,0,0,0,0,0,0,0,'Rock Stalker- Cast Poison');

UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = 11740;
DELETE FROM `creature_ai_scripts` WHERE `creature_id` = 11740;
INSERT INTO `creature_ai_scripts` VALUES (1174001,11740,0,0,100,0,500,500,0,0,11,22911,1,0,0,0,0,0,0,0,0,0,'Dredge Striker - Cast Charge');

UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = 11741;
DELETE FROM `creature_ai_scripts` WHERE `creature_id` = 11741;
INSERT INTO `creature_ai_scripts` VALUES (1174101,11741,0,0,100,1,3000,5000,6000,9000,11,6607,1,0,0,0,0,0,0,0,0,0,'Dredge Crusher - Cast Lash');

UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = 11744;
DELETE FROM `creature_ai_scripts` WHERE `creature_id` = 11744;
INSERT INTO `creature_ai_scripts` VALUES (1174401,11744,1,0,100,1,1000,1000,25000,25000,11,19514,0,1,0,0,0,0,0,0,0,0,'Dust Stormer - Cast Lightning Shield');
INSERT INTO `creature_ai_scripts` VALUES (1174402,11744,0,0,100,0,500,500,0,0,11,19513,0,0,0,0,0,0,0,0,0,0,'Dust Stormer - Cast Lightning Cloud');

UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = 11745;
DELETE FROM `creature_ai_scripts` WHERE `creature_id` = 11745;
INSERT INTO `creature_ai_scripts` VALUES (1174501,11745,0,0,100,1,7000,7000,9000,11000,11,15535,1,0,0,0,0,0,0,0,0,0,'Cyclone Warrior - Cast Enveloping Winds');
INSERT INTO `creature_ai_scripts` VALUES (1174502,11745,0,0,100,1,7000,7000,10000,21000,11,12553,1,0,0,0,0,0,0,0,0,0,'Cyclone Warrior - Cast Shock');


UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = 11803;
DELETE FROM `creature_ai_scripts` WHERE `creature_id` = 11803;
INSERT INTO `creature_ai_scripts` VALUES (1180301,11803,0,0,90,1,6000,6000,20000,20000,11,22427,1,0,0,0,0,0,0,0,0,0,'Twilight Keeper Exeter - Cast Concussion Blow');
INSERT INTO `creature_ai_scripts` VALUES (1180302,11803,0,0,100,1,500,500,6000,9000,11,16856,1,0,0,0,0,0,0,0,0,0,'Twilight Keeper Exeter - Cast Mortal strike');

UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = 11804;
DELETE FROM `creature_ai_scripts` WHERE `creature_id` = 11804;
INSERT INTO `creature_ai_scripts` VALUES (1180401,11804,0,0,80,1,7000,7000,7000,7000,11,13339,1,0,0,0,0,0,0,0,0,0,'Twilight Keeper Havunth - Cast Fire Blast');
INSERT INTO `creature_ai_scripts` VALUES (1180402,11804,0,0,100,1,15000,15000,10000,10000,11,17366,0,0,0,0,0,0,0,0,0,0,'Twilight Keeper Havunth - Cast Fire Nova');

UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = 11831;
DELETE FROM `creature_ai_scripts` WHERE `creature_id` = 11831;
INSERT INTO `creature_ai_scripts` VALUES (1183101,11831,0,0,100,3,5500,5500,12000,12000,11,24053,4,0,0,0,0,0,0,0,0,0,'Hakkari Witch Doctor - Cast Hex');
INSERT INTO `creature_ai_scripts` VALUES (1183102,11831,0,0,100,3,5500,5500,19000,19000,11,24058,0,0,0,0,0,0,0,0,0,0,'Hakkari Witch Doctor - Cast Release Toads');
INSERT INTO `creature_ai_scripts` VALUES (1183103,11831,0,0,100,3,5500,5500,15000,15000,11,17289,0,0,0,0,0,0,0,0,0,0,'Hakkari Witch Doctor - Cast Shadow Shock');
INSERT INTO `creature_ai_scripts` VALUES (1183104,11831,0,0,100,3,1500,5500,8000,17000,11,24054,0,0,0,0,0,0,0,0,0,0,'Hakkari Witch Doctor - Cast Shrink');

UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = 12143;
DELETE FROM `creature_ai_scripts` WHERE `creature_id` = 12143;
INSERT INTO `creature_ai_scripts` VALUES (1214301,12143,4,0,100,3,0,0,0,0,11,21857,0,0,0,0,0,0,0,0,0,0,'Son of Flame - Cast Lava Shield - Mana Burn Aura ');

UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = 12178;
DELETE FROM `creature_ai_scripts` WHERE `creature_id` = 12178;
INSERT INTO `creature_ai_scripts` VALUES (1217801,12178,2,0,100,1,30,0,30000,32000,11,23381,0,0,0,0,0,0,0,0,0,0,'Tortured Druid - Cast Healing Touch to 30%');
INSERT INTO `creature_ai_scripts` VALUES (1217802,12178,0,0,100,1,1000,2000,5000,9000,11,23380,4,0,0,0,0,0,0,0,0,0,'Tortured Druid - Cast Moonfire');
INSERT INTO `creature_ai_scripts` VALUES (1217803,12178,6,0,100,0,0,0,0,0,11,21327,4,0,1,-1147,0,0,0,0,0,0,"Tortured Druid - Summon Hive'Ashi Drones and Emote on Death");


UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = 14471;
DELETE FROM `creature_ai_scripts` WHERE `creature_id` = 14471;
INSERT INTO `creature_ai_scripts` VALUES (1447101,14471,0,0,100,1,40000,40000,15000,30000,11,10887,1,0,0,0,0,0,0,0,0,0,'Setis - Cast Crowd Pummel');
INSERT INTO `creature_ai_scripts` VALUES (1447102,14471,0,0,100,1,15800,21400,13100,26400,11,16727,0,0,0,0,0,0,0,0,0,0,'Setis - Cast War Stomp');

UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = 14473;
DELETE FROM `creature_ai_scripts` WHERE `creature_id` = 14473;
INSERT INTO `creature_ai_scripts` VALUES (1447301,14473,0,0,100,1,8000,8000,20000,20000,11,13445,1,0,0,0,0,0,0,0,0,0,'Lapress - Cast Rend');

UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = 14489;
DELETE FROM `creature_ai_scripts` WHERE `creature_id` = 14489;
INSERT INTO `creature_ai_scripts` VALUES (1448901,14489,1,0,100,0,0,0,0,0,21,0,0,0,20,0,0,0,0,0,0,0,'Scourge Archer - Prevent Combat Movement and Prevent Melee on Spawn');
INSERT INTO `creature_ai_scripts` VALUES (1448902,14489,4,0,100,0,0,0,0,0,11,6660,1,0,23,1,0,0,0,0,0,0,'Scourge Archer - Cast Shoot and Set Phase 1 on Aggro');
INSERT INTO `creature_ai_scripts` VALUES (1448903,14489,9,5,100,1,5,30,500,800,11,6660,1,0,40,2,0,0,0,0,0,0,'Scourge Archer - Cast Shoot and Set Ranged Weapon Model (Phase 1)');
INSERT INTO `creature_ai_scripts` VALUES (1448904,14489,9,5,100,1,5,15,0,0,21,0,1,0,20,0,0,0,0,0,0,0,'Scourge Archer - Prevent Combat Movement and Prevent Melee at 15 Yards (Phase 1)');

UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = 14511;
DELETE FROM `creature_ai_scripts` WHERE `creature_id` = 14511;
INSERT INTO `creature_ai_scripts` VALUES (1451101,14511,0,0,100,3,3000,5000,5000,7000,11,12739,1,0,0,0,0,0,0,0,0,0,'Shadowed Spirit - Cast Shadow Bolt');
INSERT INTO `creature_ai_scripts` VALUES (1451102,14511,0,0,100,3,5000,7000,7000,12000,11,15245,0,0,0,0,0,0,0,0,0,0,'Shadowed Spirit - Cast Shadow Bolt Volley');
INSERT INTO `creature_ai_scripts` VALUES (1451103,14511,0,0,100,3,1000,3000,25000,55000,11,22417,0,0,0,0,0,0,0,0,0,0,'Shadowed Spirit - Cast Shadow Shield');
INSERT INTO `creature_ai_scripts` VALUES (1451104,14511,0,0,100,3,2000,7000,2000,9000,11,22575,1,0,0,0,0,0,0,0,0,0,'Shadowed Spirit - Cast Shadow Shock');

UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = 14512;
DELETE FROM `creature_ai_scripts` WHERE `creature_id` = 14512;
INSERT INTO `creature_ai_scripts` VALUES (1451201,14512,0,0,100,3,1000,1000,20000,30000,11,18376,1,0,0,0,0,0,0,0,0,0,'Corrupted Spirit - Cast Corruption');

UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = 14513;
DELETE FROM `creature_ai_scripts` WHERE `creature_id` = 14513;
INSERT INTO `creature_ai_scripts` VALUES (1451301,14513,0,0,100,3,3000,5000,9000,20000,11,13738,1,0,0,0,0,0,0,0,0,0,'Malicious Spirit - Cast Rend');

UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = 14514;
DELETE FROM `creature_ai_scripts` WHERE `creature_id` = 14514;
INSERT INTO `creature_ai_scripts` VALUES (1451302,14514,4,0,100,2,0,0,0,0,11,23262,0,0,0,0,0,0,0,0,0,0,'Banal Spirit - Cast Demoralize on Aggro');
INSERT INTO `creature_ai_scripts` VALUES (1451401,14514,0,0,100,3,1000,3000,5000,9000,11,8140,4,0,0,0,0,0,0,0,0,0,'Banal Spirit - Cast Befuddlement');

UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = 14518;
DELETE FROM `creature_ai_scripts` WHERE `creature_id` = 14518;
INSERT INTO `creature_ai_scripts` VALUES (1451801,14518,0,0,100,3,1000,3000,5000,9000,11,8140,4,0,0,0,0,0,0,0,0,0,'Aspect of Banality - Cast Befuddlement');
INSERT INTO `creature_ai_scripts` VALUES (1451802,14518,0,0,100,3,3000,5000,30000,45000,11,16247,4,0,0,0,0,0,0,0,0,0,'Aspect of Banality - Cast Curse of Thorns');
INSERT INTO `creature_ai_scripts` VALUES (1451803,14518,4,0,100,2,0,0,0,0,11,23262,0,0,0,0,0,0,0,0,0,0,'Aspect of Banality - Cast Demoralize on Aggro');

UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = 14519;
DELETE FROM `creature_ai_scripts` WHERE `creature_id` = 14519;
INSERT INTO `creature_ai_scripts` VALUES (1451901,14519,0,0,100,3,1000,1000,20000,30000,11,18376,1,0,0,0,0,0,0,0,0,0,'Aspect of Corruption - Cast Corruption');
INSERT INTO `creature_ai_scripts` VALUES (1451902,14519,0,0,100,3,2000,2000,5000,12000,11,23268,4,0,0,0,0,0,0,0,0,0,'Aspect of Corruption - Cast Shadow Word: Pain');

UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = 14520;
DELETE FROM `creature_ai_scripts` WHERE `creature_id` = 14520;
INSERT INTO `creature_ai_scripts` VALUES (1452001,14520,0,0,100,3,3000,5000,3000,7000,11,13738,1,0,0,0,0,0,0,0,0,0,'Aspect of Malice - Cast Rend');
INSERT INTO `creature_ai_scripts` VALUES (1452002,14520,0,0,100,3,1000,3000,30000,70000,11,16098,0,0,0,0,0,0,0,0,0,0,'Aspect of Malice - Cast Curse of Blood');

UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = 14521;
DELETE FROM `creature_ai_scripts` WHERE `creature_id` = 14521;
INSERT INTO `creature_ai_scripts` VALUES (1452101,14521,0,0,100,3,3000,5000,5000,7000,11,15472,1,0,0,0,0,0,0,0,0,0,'Aspect of Shadow - Cast Shadow Bolt');
INSERT INTO `creature_ai_scripts` VALUES (1452102,14521,0,0,100,3,5000,7000,7000,12000,11,17228,0,0,0,0,0,0,0,0,0,0,'Aspect of Shadow - Cast Shadow Bolt Volley');
INSERT INTO `creature_ai_scripts` VALUES (1452103,14521,0,0,100,3,1000,3000,25000,55000,11,22417,0,0,0,0,0,0,0,0,0,0,'Aspect of Shadow - Cast Shadow Shield');
INSERT INTO `creature_ai_scripts` VALUES (1452104,14521,0,0,100,3,2000,7000,2000,9000,11,17289,1,0,0,0,0,0,0,0,0,0,'Aspect of Shadow - Cast Shadow Shock');

UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = 14532;
DELETE FROM `creature_ai_scripts` WHERE `creature_id` = 14532;
INSERT INTO `creature_ai_scripts` VALUES (1453201,14532,0,0,100,3,5500,5500,8000,10000,11,12097,1,0,0,0,0,0,0,0,0,0,'Razzashi Venombrood - Cast Pierce Armor');

UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = 14750;
DELETE FROM `creature_ai_scripts` WHERE `creature_id` = 14750;
INSERT INTO `creature_ai_scripts` VALUES (1475001,14750,11,0,100,2,0,0,0,0,11,8876,0,0,0,0,0,0,0,0,0,0,'Gurubashi Bat Rider - Cast Thrash on Spawn');
INSERT INTO `creature_ai_scripts` VALUES (1475002,14750,4,0,100,2,0,0,0,0,11,23511,1,0,0,0,0,0,0,0,0,0,'Gurubashi Bat Rider - Cast Demoralizing Shout on Aggro');
INSERT INTO `creature_ai_scripts` VALUES (1475003,14750,0,0,100,3,8000,8000,25000,25000,11,5115,0,0,0,0,0,0,0,0,0,0,'Gurubashi Bat Rider - Cast Battle Command');
INSERT INTO `creature_ai_scripts` VALUES (1475004,14750,0,0,100,2,6500,6500,0,0,11,16128,1,0,0,0,0,0,0,0,0,0,'Gurubashi Bat Rider - Cast Infected Bite');
INSERT INTO `creature_ai_scripts` VALUES (1475005,14750,2,0,100,2,50,0,0,0,11,24024,0,1,11,23968,0,0,0,0,0,0,'Gurubashi Bat Rider - Cast Unstable Concoction and Throw Liquid Fire at 50% HP');

UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = 14821;
DELETE FROM `creature_ai_scripts` WHERE `creature_id` = 14821;
INSERT INTO `creature_ai_scripts` VALUES (1482101,14821,2,0,100,2,30,0,0,0,11,8599,0,0,1,-106,0,0,0,0,0,0,'Razzashi Raptor - Cast Enrage at 30% HP');
INSERT INTO `creature_ai_scripts` VALUES (1482102,14821,0,0,100,3,5500,5500,8000,10000,11,24339,1,0,0,0,0,0,0,0,0,0,'Razzashi Raptor - Cast Infected Bite');
INSERT INTO `creature_ai_scripts` VALUES (1482103,14821,0,0,100,3,7000,7000,6000,6000,11,3391,0,0,0,0,0,0,0,0,0,0,'Razzashi Raptor- Cast Thrash');

UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = 14825;
DELETE FROM `creature_ai_scripts` WHERE `creature_id` = 14825;
INSERT INTO `creature_ai_scripts` VALUES (1482501,14825,0,0,100,3,2000,5000,20000,30000,11,24673,4,0,0,0,0,0,0,0,0,0,'Withered Mistress - Cast Curse of Blood');
INSERT INTO `creature_ai_scripts` VALUES (1482502,14825,0,0,100,3,5000,12000,5000,15000,11,17201,0,0,0,0,0,0,0,0,0,0,'Withered Mistress - Cast Dispel Magic');
INSERT INTO `creature_ai_scripts` VALUES (1482503,14825,0,0,100,3,5000,12000,9000,17000,11,24674,1,0,0,0,0,0,0,0,0,0,'Withered Mistress - Cast Veil of Shadow');
INSERT INTO `creature_ai_scripts` VALUES (1482504,14825,0,0,100,2,15000,22000,0,0,11,24672,0,0,0,0,0,0,0,0,0,0,'Withered Mistress - Cast Unholy Frenzy');

UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = 14882;
DELETE FROM `creature_ai_scripts` WHERE `creature_id` = 14882;
INSERT INTO `creature_ai_scripts` VALUES (1488201,14882,0,0,100,3,5000,5000,8000,8000,11,15615,1,0,0,0,0,0,0,0,0,0,"Atal'ai Mistress - Cast Pummel");
INSERT INTO `creature_ai_scripts` VALUES (1488202,14882,0,0,100,3,5000,5000,11000,11000,11,24671,1,0,0,0,0,0,0,0,0,0,"Atal'ai Mistress - Cast Snap Kick");
INSERT INTO `creature_ai_scripts` VALUES (1488203,14882,0,0,100,3,3000,5000,5000,7000,11,3391,0,0,0,0,0,0,0,0,0,0,"Atal'ai Mistress - Cast Thrash");

UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = 14989;
DELETE FROM `creature_ai_scripts` WHERE `creature_id` = 14989;
INSERT INTO `creature_ai_scripts` VALUES (1498901,14989,11,0,100,2,0,0,0,0,11,24320,0,0,0,0,0,0,0,0,0,0,'Poisonous Cloud - Cast Poisonous Blood on Spawn');

UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = 15043;
DELETE FROM `creature_ai_scripts` WHERE `creature_id` = 15043;
INSERT INTO `creature_ai_scripts` VALUES (1504301,15043,0,0,100,3,5500,5500,12000,19000,11,13445,1,0,0,0,0,0,0,0,0,0,'Zulian Crocolisk - Cast Rend');
INSERT INTO `creature_ai_scripts` VALUES (1504302,15043,0,0,100,3,5500,5500,15000,20000,11,3604,1,0,0,0,0,0,0,0,0,0,'Zulian Crocolisk - Cast Tendon Rip');

UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = 15068;
DELETE FROM `creature_ai_scripts` WHERE `creature_id` = 15068;
INSERT INTO `creature_ai_scripts` VALUES (1506801,15068,0,0,100,3,5500,5500,12000,19000,11,24187,1,0,0,0,0,0,0,0,0,0,'Zulian Guardian - Cast Claw');

UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = 15101;
DELETE FROM `creature_ai_scripts` WHERE `creature_id` = 15101;
INSERT INTO `creature_ai_scripts` VALUES (1510101,15101,0,0,100,3,3000,5000,5000,7000,11,3391,0,0,0,0,0,0,0,0,0,0,'Zulian Prowler - Cast Thrash');

UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = 15111;
DELETE FROM `creature_ai_scripts` WHERE `creature_id` = 15111;
INSERT INTO `creature_ai_scripts` VALUES (1511101,15111,0,0,100,3,2000,5000,12000,12000,11,24612,1,0,0,0,0,0,0,0,0,0,'Mad Servant - Cast Flamestrike');
INSERT INTO `creature_ai_scripts` VALUES (1511102,15111,0,0,100,2,20000,20000,0,0,11,24621,0,11,0,0,0,0,0,0,0,0,'Mad Servant - Portal of Madness');
INSERT INTO `creature_ai_scripts` VALUES (1511103,15111,0,0,100,2,0,0,0,0,21,0,0,0,0,0,0,0,0,0,0,0,'Mad Servant - Stop Movement on Aggro');
INSERT INTO `creature_ai_scripts` VALUES (1511104,15111,4,0,100,2,0,0,0,0,11,24611,1,0,22,6,0,0,0,0,0,0,'Mad Servant - Cast Fireball and Set Phase1 on Aggro');
INSERT INTO `creature_ai_scripts` VALUES (1511105,15111,0,6,100,3,3400,4700,3400,4700,0,0,0,0,11,24611,1,0,0,0,0,0,'Mad Servant - Cast Fireball (Phase 1)');
INSERT INTO `creature_ai_scripts` VALUES (1511106,15111,3,6,100,2,15,0,0,0,21,1,0,0,22,5,0,0,0,0,0,0,'Mad Servant - Start Movement and Set Phase 2 when Mana is at 15%');
INSERT INTO `creature_ai_scripts` VALUES (1511107,15111,9,6,100,3,25,80,0,0,21,1,0,0,0,0,0,0,0,0,0,0,'Mad Servant - Start Movement Beyond 25 Yards');
INSERT INTO `creature_ai_scripts` VALUES (1511108,15111,3,5,100,3,100,30,100,100,22,6,0,0,0,0,0,0,0,0,0,0,'Mad Servant - Set Phase 1 when Manais above 30% (Phase 2)');
INSERT INTO `creature_ai_scripts` VALUES (1511109,15111,2,0,100,2,15,0,0,0,22,3,0,0,0,0,0,0,0,0,0,0,'Mad Servant - Set Phase 3 at 15% HP');
INSERT INTO `creature_ai_scripts` VALUES (1511110,15111,2,3,100,2,15,0,0,0,21,1,0,0,25,0,0,0,1,-47,0,0,'Mad Servant - Start Movement and Flee at 15% HP (Phase 3)');
INSERT INTO `creature_ai_scripts` VALUES (1511111,15111,7,0,100,2,0,0,0,0,22,0,0,0,0,0,0,0,0,0,0,0,'Mad Servant - On Evade set Phase to 0');
INSERT INTO `creature_ai_scripts` VALUES (1511112,15111,6,0,100,2,0,0,0,0,11,24622,0,7,0,0,0,0,0,0,0,0,'Mad Servant - Cast Summon Mad Voidwalkers on Death');

UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = 15146;
DELETE FROM `creature_ai_scripts` WHERE `creature_id` = 15146;
INSERT INTO `creature_ai_scripts` VALUES (1514601,15146,0,0,100,3,5500,5500,15000,15000,11,24614,1,0,0,0,0,0,0,0,0,0,'Mad Voidwalker - Cast Consuming Shadows');
INSERT INTO `creature_ai_scripts` VALUES (1514602,15146,0,0,100,3,5500,5500,8000,10000,11,24616,1,0,0,0,0,0,0,0,0,0,'Mad Voidwalker - Cast Shadow Shock');

UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = 15203;
DELETE FROM `creature_ai_scripts` WHERE `creature_id` = 15203;
INSERT INTO `creature_ai_scripts` VALUES (1520301,15203,0,0,100,1,5000,5000,10000,20000,11,25049,0,0,0,0,0,0,0,0,0,0,'Prince Skaldrenox - Cast Blast Wave');
INSERT INTO `creature_ai_scripts` VALUES (1520302,15203,0,0,100,1,6000,18000,5800,16400,11,15284,1,0,0,0,0,0,0,0,0,0,'Prince Skaldrenox - Cast Cleave');
INSERT INTO `creature_ai_scripts` VALUES (1520303,15203,0,0,100,1,20000,20000,30000,30000,11,25050,1,0,0,0,0,0,0,0,0,0,'Prince Skaldrenox - Cast Mark of Flames');

UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = 15204;
DELETE FROM `creature_ai_scripts` WHERE `creature_id` = 15204;
INSERT INTO `creature_ai_scripts` VALUES (1520401,15204,1,0,100,1,1000,1000,25000,25000,11,13585,0,1,0,0,0,0,0,0,0,0,'High Marshal Whirlaxis - Cast Lightning Shield');
INSERT INTO `creature_ai_scripts` VALUES (1520402,15204,0,0,100,1,4500,4500,14300,23700,11,25060,1,0,0,0,0,0,0,0,0,0,'High Marshal Whirlaxis - Cast Wilt');

UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = 15215;
DELETE FROM `creature_ai_scripts` WHERE `creature_id` = 15215;
INSERT INTO `creature_ai_scripts` VALUES (1521501,15215,4,0,100,3,0,0,0,0,11,15326,0,0,0,0,0,0,0,0,0,0,'Mistress - Cast Blackout (rank5) on aggro');
INSERT INTO `creature_ai_scripts` VALUES (1521502,15215,0,0,100,3,5000,10000,18000,19000,11,11639,0,0,0,0,0,0,0,0,0,0,'Mistress - Cast Shadow Word: Pain');
INSERT INTO `creature_ai_scripts` VALUES (1521503,15215,0,0,100,3,8000,15000,10000,15000,11,13704,0,0,0,0,0,0,0,0,0,0,'Mistress - Cast Psychic Scream');
INSERT INTO `creature_ai_scripts` VALUES (1521504,15215,0,0,100,3,14000,15000,16000,17000,11,16568,0,0,0,0,0,0,0,0,0,0,'Mistress - Cast Mind Flay');
INSERT INTO `creature_ai_scripts` VALUES (1521505,15215,2,0,100,3,20,0,10000,15000,11,27527,0,0,0,0,0,0,0,0,0,0,'Mistress - Cast Healing Touch on less than 20% hp');

UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = 15261;
DELETE FROM `creature_ai_scripts` WHERE `creature_id` = 15261;
INSERT INTO `creature_ai_scripts` VALUES (1526101,15261,1,0,100,1,0,0,0,0,11,24809,0,0,0,0,0,0,0,0,0,0,'Spirit Shade - Cast Spirit Shade Visual on Spawn');
INSERT INTO `creature_ai_scripts` VALUES (1526102,15261,14,0,100,0,15000,40,0,0,11,24804,6,0,0,0,0,0,0,0,0,0,'Spirit Shade - Cast Dark Offering on Friendlies');

UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = 15305;
DELETE FROM `creature_ai_scripts` WHERE `creature_id` = 15305;
INSERT INTO `creature_ai_scripts` VALUES (1530501,15305,0,0,100,1,3000,5000,5000,7000,11,3391,0,0,0,0,0,0,0,0,0,0,'Lord Skwol - Cast Thrash');

UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = 16044;
DELETE FROM `creature_ai_scripts` WHERE `creature_id` = 16044;
INSERT INTO `creature_ai_scripts` VALUES (1604401,16044,8,0,100,2,27184,-1,0,0,12,16080,1,180000,41,0,0,0,0,0,0,0,'Mor Grayhoof Trigger - Spawn Mor Grayhoof and Despawn Trigger on Summon Mor Grayhoof DND Spellhit');
INSERT INTO `creature_ai_scripts` VALUES (1604402,16044,8,0,100,2,27203,-1,0,0,12,16080,1,180000,41,0,0,0,0,0,0,0,'Mor Grayhoof Trigger - Spawn Mor Grayhoof and Despawn Trigger on Summon Various DND Spellhit');

UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = 16049;
DELETE FROM `creature_ai_scripts` WHERE `creature_id` = 16049;
INSERT INTO `creature_ai_scripts` VALUES (1604901,16049,2,0,100,3,25,0,15300,22900,11,15503,0,0,0,0,0,0,0,0,0,0,'Lefty - Cast Drink Healing Potion When Below 25% HP');
INSERT INTO `creature_ai_scripts` VALUES (1604902,16049,0,0,70,3,5500,5500,11000,12000,11,11428,1,0,0,0,0,0,0,0,0,0,'Lefty - Cast Knockdown');
INSERT INTO `creature_ai_scripts` VALUES (1604903,16049,0,0,70,3,5500,5500,15000,15000,11,27620,1,0,0,0,0,0,0,0,0,0,'Lefty - Cast Snap Kick');

UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = 16050;
DELETE FROM `creature_ai_scripts` WHERE `creature_id` = 16050;
INSERT INTO `creature_ai_scripts` VALUES (1605001,16050,2,0,100,3,25,0,15300,22900,11,15503,0,0,0,0,0,0,0,0,0,0,'Rotfang - Cast Drink Healing Potion When Below 25% HP');
INSERT INTO `creature_ai_scripts` VALUES (1605002,16050,0,0,70,3,5500,5500,14000,19000,11,27611,1,0,0,0,0,0,0,0,0,0,'Rotfang - Cast Eviscerate');
INSERT INTO `creature_ai_scripts` VALUES (1605003,16050,0,0,70,3,5500,5500,18000,18000,11,12540,1,0,0,0,0,0,0,0,0,0,'Rotfang - Cast Gouge');
INSERT INTO `creature_ai_scripts` VALUES (1605004,16050,0,0,70,3,5500,5500,12000,15000,11,27613,1,0,0,0,0,0,0,0,0,0,'Rotfang - Cast Kick');
INSERT INTO `creature_ai_scripts` VALUES (1605005,16050,0,0,70,3,5500,5500,17000,21000,11,27615,1,0,0,0,0,0,0,0,0,0,'Rotfang - Cast Kidney Shot');
INSERT INTO `creature_ai_scripts` VALUES (1605006,16050,0,0,70,3,5500,5500,14000,15000,11,14873,1,0,0,0,0,0,0,0,0,0,'Rotfang - Cast Sinister Strike');

UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = 16051;
DELETE FROM `creature_ai_scripts` WHERE `creature_id` = 16051;
INSERT INTO `creature_ai_scripts` VALUES (1605101,16051,0,0,100,3,3000,5500,12000,15000,11,20827,1,0,0,0,0,0,0,0,0,0,'Snokh Blackspine - Cast Flamestrike');

UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = 16052;
DELETE FROM `creature_ai_scripts` WHERE `creature_id` = 16052;
INSERT INTO `creature_ai_scripts` VALUES (1605201,16052,2,0,100,3,25,0,15300,22900,11,15503,0,0,0,0,0,0,0,0,0,0,'Malgen Longspear - Cast Drink Healing Potion When Below 25% HP');
INSERT INTO `creature_ai_scripts` VALUES (1605202,16052,0,0,80,3,3000,5500,15000,15000,11,27632,1,0,0,0,0,0,0,0,0,0,'Malgen Longspear - Cast Aimed Shot');
INSERT INTO `creature_ai_scripts` VALUES (1605203,16052,0,0,80,3,5500,5500,11000,11000,11,27634,1,0,0,0,0,0,0,0,0,0,'Malgen Longspear - Cast Concussive Shot');
INSERT INTO `creature_ai_scripts` VALUES (1605204,16052,0,0,80,3,3000,5500,15000,15000,11,18651,1,0,0,0,0,0,0,0,0,0,'Malgen Longspear - Cast Multi-Shot');
INSERT INTO `creature_ai_scripts` VALUES (1605205,16052,0,0,80,3,3000,5500,13000,18000,11,27633,1,0,0,0,0,0,0,0,0,0,'Malgen Longspear - Cast Wing Clip');
INSERT INTO `creature_ai_scripts` VALUES (1605206,16052,0,0,100,2,0,0,0,0,21,0,0,0,0,0,0,0,0,0,0,0,'Malgen Longspear - Stop Movement on Aggro');
INSERT INTO `creature_ai_scripts` VALUES (1605207,16052,4,0,100,2,0,0,0,0,11,16100,1,0,22,6,0,0,0,0,0,0,'Malgen Longspear - Cast Shoot and Set Phase 1 on Aggro');
INSERT INTO `creature_ai_scripts` VALUES (1605208,16052,0,6,100,3,2200,4700,2200,4700,11,16100,1,0,0,0,0,0,0,0,0,0,'Malgen Longspear - Cast Shoot (Phase 1)');
INSERT INTO `creature_ai_scripts` VALUES (1605209,16052,9,6,100,3,20,100,0,0,21,1,0,0,0,0,0,0,0,0,0,0,'Malgen Longspear - Start Movement at 20 Yards (Phase 1)');
INSERT INTO `creature_ai_scripts` VALUES (1605210,16052,9,6,100,3,6,10,0,0,21,0,0,0,0,0,0,0,0,0,0,0,'Malgen Longspear - Stop Movement at 10 Yards (Phase 1)');
INSERT INTO `creature_ai_scripts` VALUES (1605211,16052,9,6,100,3,0,5,0,0,21,1,0,0,0,0,0,0,0,0,0,0,'Malgen Longspear - Start Movement at 5 Yards (Phase 1)');
INSERT INTO `creature_ai_scripts` VALUES (1605212,16052,2,0,100,2,15,0,0,0,22,5,0,0,0,0,0,0,0,0,0,0,'Malgen Longspear - Set Phase 2 at 15% HP');
INSERT INTO `creature_ai_scripts` VALUES (1605213,16052,2,5,100,2,15,0,0,0,21,1,0,0,25,0,0,0,1,-47,0,0,'Malgen Longspear - Start Movement and Flee at 15% HP (Phase 2)');

UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = 16053;
DELETE FROM `creature_ai_scripts` WHERE `creature_id` = 16053;
INSERT INTO `creature_ai_scripts` VALUES (1605301,16053,0,0,100,3,5500,5500,15000,16000,11,15786,0,0,0,0,0,0,0,0,0,0,'Korv - Cast Earthbind Totem');
INSERT INTO `creature_ai_scripts` VALUES (1605302,16053,2,0,100,3,25,0,15300,22900,11,15503,0,0,0,0,0,0,0,0,0,0,'Korv - Cast Drink Healing Potion When Below 25% HP');
INSERT INTO `creature_ai_scripts` VALUES (1605303,16053,0,0,70,3,5500,5500,11000,12000,11,21401,1,0,0,0,0,0,0,0,0,0,'Korv - Cast Frost Shock');
INSERT INTO `creature_ai_scripts` VALUES (1605304,16053,14,0,100,2,250,30,0,0,11,27624,6,1,0,0,0,0,0,0,0,0,'Korv - Cast Lesser Healing Wave on Friendlies');
INSERT INTO `creature_ai_scripts` VALUES (1605305,16053,0,0,100,3,5500,5500,15000,15000,11,27621,0,0,0,0,0,0,0,0,0,0,'Korv - Cast Windfury Totem');
INSERT INTO `creature_ai_scripts` VALUES (1605306,16053,0,0,100,3,5500,5500,18000,18000,11,27626,1,0,0,0,0,0,0,0,0,0,'Korv - Cast Purge');

UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = 16054;
DELETE FROM `creature_ai_scripts` WHERE `creature_id` = 16054;
INSERT INTO `creature_ai_scripts` VALUES (1605401,16054,0,0,100,3,1000,5500,18000,18000,11,19784,1,0,0,0,0,0,0,0,0,0,'Rezznik - Cast Dark Iron Bomb');
INSERT INTO `creature_ai_scripts` VALUES (1605402,16054,0,0,100,3,2000,5500,15000,15000,11,8209,0,0,0,0,0,0,0,0,0,0,'Rezznik - Cast Explosive Sheep');
INSERT INTO `creature_ai_scripts` VALUES (1605403,16054,0,0,70,3,5500,5500,14000,19000,11,27603,1,0,0,0,0,0,0,0,0,0,'Rezznik - Cast EGun');
INSERT INTO `creature_ai_scripts` VALUES (1605404,16054,0,0,100,3,2000,5500,17000,20000,11,27677,0,0,0,0,0,0,0,0,0,0,'Rezznik - Cast Recombobulate');

UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = 16055;
DELETE FROM `creature_ai_scripts` WHERE `creature_id` = 16055;
INSERT INTO `creature_ai_scripts` VALUES (1605501,16055,0,0,80,3,5500,5500,14000,15000,11,27609,1,0,0,0,0,0,0,0,0,0,"Va'jashni- Cast Dispel Magic");
INSERT INTO `creature_ai_scripts` VALUES (1605502,16055,0,0,100,3,5500,5500,15000,15000,11,27609,0,1,0,0,0,0,0,0,0,0,"Va'jashni- Cast Dispel Magic");
INSERT INTO `creature_ai_scripts` VALUES (1605503,16055,2,0,100,3,25,0,15300,22900,11,27608,0,0,0,0,0,0,0,0,0,0,"Va'jashni - Cast Healing Touch When Below 25% HP");
INSERT INTO `creature_ai_scripts` VALUES (1605504,16055,0,0,100,3,5500,5500,18000,18000,11,27607,0,1,0,0,0,0,0,0,0,0,"Va'jashni- Vast Power Word: Shield");
INSERT INTO `creature_ai_scripts` VALUES (1605505,16055,2,0,100,3,50,0,15300,22900,11,27606,0,0,0,0,0,0,0,0,0,0,"Va'jashni - Cast Renew at 50% HP");
INSERT INTO `creature_ai_scripts` VALUES (1605506,16055,0,0,80,3,5500,5500,10000,11000,11,27605,4,0,0,0,0,0,0,0,0,0,"Va'jashni - Cast Shadow Word: Pain");

UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = 16058;
DELETE FROM `creature_ai_scripts` WHERE `creature_id` = 16058;
INSERT INTO `creature_ai_scripts` VALUES (1605801,16058,0,0,100,3,5500,5500,13000,15000,11,15063,0,0,0,0,0,0,0,0,0,0,'Volida- Cast Frost Nova');
INSERT INTO `creature_ai_scripts` VALUES (1605802,16058,0,0,100,3,5500,5500,16000,19000,11,27619,0,1,0,0,0,0,0,0,0,0,'Volida- Cast Ice Block');
INSERT INTO `creature_ai_scripts` VALUES (1605803,16058,0,0,100,2,0,0,0,0,21,0,0,0,0,0,0,0,0,0,0,0,'Volida - Stop Movement on Aggro');
INSERT INTO `creature_ai_scripts` VALUES (1605804,16058,4,0,100,2,0,0,0,0,11,20822,1,0,22,6,0,0,0,0,0,0,'Volida - Cast Fireball and Set Phase 1 on Aggro');
INSERT INTO `creature_ai_scripts` VALUES (1605805,16058,0,6,100,3,3400,4700,3400,4700,0,0,0,0,11,20822,1,0,0,0,0,0,'Volida - Cast Fireball (Phase 1)');
INSERT INTO `creature_ai_scripts` VALUES (1605806,16058,3,6,100,2,15,0,0,0,21,1,0,0,22,5,0,0,0,0,0,0,'Volida - Start Movement and Set Phase 2 when Mana is at 15%');
INSERT INTO `creature_ai_scripts` VALUES (1605807,16058,9,6,100,3,25,80,0,0,21,1,0,0,0,0,0,0,0,0,0,0,'Volida - Start Movement Beyond 25 Yards');
INSERT INTO `creature_ai_scripts` VALUES (1605808,16058,3,5,100,3,100,30,100,100,22,6,0,0,0,0,0,0,0,0,0,0,'Volida - Set Phase 1 when Mana is above 30% (Phase 2)');
INSERT INTO `creature_ai_scripts` VALUES (1605809,16058,2,0,100,2,15,0,0,0,22,3,0,0,0,0,0,0,0,0,0,0,'Volida - Set Phase 3 at 15% HP');
INSERT INTO `creature_ai_scripts` VALUES (1605811,16058,2,3,100,2,15,0,0,0,21,1,0,0,25,0,0,0,1,-47,0,0,'Volida - Start Movement and Flee at 15% HP (Phase 3)');
INSERT INTO `creature_ai_scripts` VALUES (1605812,16058,7,0,100,2,0,0,0,0,22,0,0,0,0,0,0,0,0,0,0,0,'Volida - On Evade set Phase to 0');

UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = 16059;
DELETE FROM `creature_ai_scripts` WHERE `creature_id` = 16059;
INSERT INTO `creature_ai_scripts` VALUES (1605901,16059,0,0,70,3,6000,6000,15000,15000,11,27578,0,0,0,0,0,0,0,0,0,0,'Theldren - Cast Battle Shout');
INSERT INTO `creature_ai_scripts` VALUES (1605902,16059,0,0,85,3,6000,6000,16500,16500,11,27579,0,0,0,0,0,0,0,0,0,0,'Theldren - Cast Demoralizing Shout');
INSERT INTO `creature_ai_scripts` VALUES (1605903,16059,0,0,100,3,6000,6000,12000,25000,11,27581,1,0,0,0,0,0,0,0,0,0,'Theldren - Cast Disarm');
INSERT INTO `creature_ai_scripts` VALUES (1605904,16059,0,0,80,3,6000,6000,19000,20000,11,19134,0,0,0,0,0,0,0,0,0,0,'Theldren - Cast Frightening Shout');
INSERT INTO `creature_ai_scripts` VALUES (1605905,16059,0,0,75,3,6000,6000,15000,35000,11,27584,1,0,0,0,0,0,0,0,0,0,'Theldren - Cast Hamstring');
INSERT INTO `creature_ai_scripts` VALUES (1605906,16059,0,0,100,3,6000,6000,13500,21000,11,27580,1,0,0,0,0,0,0,0,0,0,'Theldren - Cast Mortal Strike');
INSERT INTO `creature_ai_scripts` VALUES (1605907,16059,4,0,100,2,0,0,0,0,11,27577,1,0,0,0,0,0,0,0,0,0,'Theldren - Cast Intercept on Aggro');
INSERT INTO `creature_ai_scripts` VALUES (1605908,16059,2,0,100,3,25,0,15300,22900,11,15503,0,0,0,0,0,0,0,0,0,0,'Theldren - Cast Healing Touch When Below 25% HP');
INSERT INTO `creature_ai_scripts` VALUES (1605909,16059,4,0,100,2,0,0,0,0,1,-1140,-1141,-1142,0,0,0,0,0,0,0,0,'Theldren - Random Say on Aggro');

UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = 16080;
DELETE FROM `creature_ai_scripts` WHERE `creature_id` = 16080;
INSERT INTO `creature_ai_scripts` VALUES (1608001,16080,2,0,100,3,15,0,15300,22900,11,27543,0,0,0,0,0,0,0,0,0,0,'Mor Grayhoof - Cast Bear Form When Below 15% HP');
INSERT INTO `creature_ai_scripts` VALUES (1608002,16080,2,0,100,3,80,0,15300,22900,11,27545,0,0,0,0,0,0,0,0,0,0,'Mor Grayhoof - Cast Cat Form When Below 80% HP');
INSERT INTO `creature_ai_scripts` VALUES (1608003,16080,0,0,100,3,2000,5000,10000,11000,11,27567,1,0,0,0,0,0,0,0,0,0,'Mor Grayhoof - Cast Chain Lightning');
INSERT INTO `creature_ai_scripts` VALUES (1608004,16080,0,0,100,3,2000,5000,7000,8000,11,27551,0,0,0,0,0,0,0,0,0,0,'Mor Grayhoof - Cast Demoralizing Roar');
INSERT INTO `creature_ai_scripts` VALUES (1608005,16080,2,0,100,3,55,0,15300,22900,11,27546,0,0,0,0,0,0,0,0,0,0,'Mor Grayhoof - Cast Faerie Dragon Form When Below 55% HP');
INSERT INTO `creature_ai_scripts` VALUES (1608006,16080,2,0,100,3,30,0,15300,22900,11,27527,0,0,0,0,0,0,0,0,0,0,'Mor Grayhoof - Cast Healing Touch When Below 30% HP');
INSERT INTO `creature_ai_scripts` VALUES (1608007,16080,2,0,100,3,10,0,15300,22900,11,27532,0,0,0,0,0,0,0,0,0,0,'Mor Grayhoof - Cast Rejuvenation 10% HP');
INSERT INTO `creature_ai_scripts` VALUES (1608008,16080,0,0,100,3,2000,5000,14000,14000,11,27737,1,0,0,0,0,0,0,0,0,0,'Mor Grayhoof - Cast Moonfire');
INSERT INTO `creature_ai_scripts` VALUES (1608009,16080,0,0,100,3,2000,5000,12000,12000,11,15605,1,0,0,0,0,0,0,0,0,0,'Mor Grayhoof - Cast Shock');

UPDATE `creature_template` SET `AIName` = 'EventAI' WHERE `entry` = 4334;
DELETE FROM `creature_ai_scripts` WHERE `creature_id` = 4334;
INSERT INTO `creature_ai_scripts` VALUES (433401,4334,1,0,100,0,0,0,0,0,21,0,0,0,0,0,0,0,0,0,0,0,'Firemane Flamecaller - Prevent Combat Movement on Spawn');
INSERT INTO `creature_ai_scripts` VALUES (433402,4334,1,0,100,1,1000,1000,600000,600000,11,18968,0,1,0,0,0,0,0,0,0,0,'Firemane Flamecaller - Cast Fire Shield on Spawn');
INSERT INTO `creature_ai_scripts` VALUES (433403,4334,4,0,100,0,0,0,0,0,11,9053,1,0,23,1,0,0,0,0,0,0,'Firemane Flamecaller - Cast Fireball and Set Phase 1 on Aggro');
INSERT INTO `creature_ai_scripts` VALUES (433404,4334,9,13,100,1,0,40,2400,3800,11,9053,1,0,0,0,0,0,0,0,0,0,'Firemane Flamecaller - Cast Fireball (Phase 1)');
INSERT INTO `creature_ai_scripts` VALUES (433405,4334,3,13,100,0,15,0,0,0,21,1,0,0,23,1,0,0,0,0,0,0,'Firemane Flamecaller - Start Combat Movement and Set Phase 2 when Mana is at 15% (Phase 1)');
INSERT INTO `creature_ai_scripts` VALUES (433406,4334,9,13,100,1,35,80,0,0,21,1,0,0,0,0,0,0,0,0,0,0,'Firemane Flamecaller - Start Combat Movement at 35 Yards (Phase 1)');
INSERT INTO `creature_ai_scripts` VALUES (433407,4334,9,13,100,1,5,15,0,0,21,0,0,0,0,0,0,0,0,0,0,0,'Firemane Flamecaller - Prevent Combat Movement at 15 Yards (Phase 1)');
INSERT INTO `creature_ai_scripts` VALUES (433408,4334,9,13,100,1,0,5,0,0,21,1,0,0,0,0,0,0,0,0,0,0,'Firemane Flamecaller - Start Combat Movement Below 5 Yards');
INSERT INTO `creature_ai_scripts` VALUES (433409,4334,3,11,100,1,100,30,100,100,23,-1,0,0,0,0,0,0,0,0,0,0,'Firemane Flamecaller - Set Phase 1 when Mana is above 30% (Phase 2)');
INSERT INTO `creature_ai_scripts` VALUES (433410,4334,27,0,100,1,18968,1,15000,30000,11,18968,0,1,0,0,0,0,0,0,0,0,'Firemane Flamecaller - Cast Fire Shield on Missing Buff');
INSERT INTO `creature_ai_scripts` VALUES (433411,4334,0,0,100,1,9000,16000,21000,30000,11,11990,4,1,0,0,0,0,0,0,0,0,'Firemane Flamecaller - Cast Rain of Fire');
INSERT INTO `creature_ai_scripts` VALUES (433412,4334,7,0,100,0,0,0,0,0,22,0,0,0,0,0,0,0,0,0,0,0,'Firemane Flamecaller - Set Phase to 0 on Evade');

DELETE FROM `creature_ai_scripts` WHERE `creature_id` = 3695;
INSERT INTO `creature_ai_scripts` VALUES (369501,3695,22,0,100,1,101,0,0,0,1,-347,0,0,1,-348,0,0,0,0,0,0,'Grimclaw - Text Emote on Recive Wave Emote');

-- Fixed quest 1846: item 7131 now is a 100% drop for characters on the quest.
UPDATE `creature_loot_template` SET `ChanceOrQuestChance` = -100 WHERE `item` = 7131;

-- Fixed creature 299: Young Wolf will ignore aggro now.
UPDATE `creature_template` SET `flags_extra` = 2 WHERE `entry` = 299;

-- Fixed quest 111: removed RequestItemsText.
UPDATE `quest_template` SET `RequestItemsText` = '' WHERE `entry` = 111;

-- Fixed quest 3065: restricted quest faction to Troll.
UPDATE `quest_template` SET `RequiredRaces` = 128 WHERE `entry` = 3065;

-- Fixed quest 5624: added punctuation to quest texts.
UPDATE `quest_template` SET `OfferRewardText` = 'Excellent, $N. With one more healthy guard out there to help the town, we\'ll be that much safer. I\'m glad to see you\'re already learning to use your abilities wisely. If you feel you are ready for more training at any time, please come back to me. But for now, take this robe. It will let others know that you are one of our order. If you don\'t want to wear it, that\'s fine. Later there will be more tests and this robe isn\'t necessary for those.' WHERE `entry` = 5624;

-- Fixed quest 5625: added punctuation to quest texts.
UPDATE `quest_template` SET `OfferRewardText` = 'Excellent, $N. With one more healthy guard out there to help the town, we\'ll be that much safer. I\'m glad to see you\'re already learning to use your abilities wisely. If you feel you are ready for more training at any time, please come back to me. But for now, take this robe. It will let others know that you are one of our order. If you don\'t want to wear it, that\'s fine. Later there will be more tests and this robe isn\'t necessary for those.' WHERE `entry` = 5625;

-- Fixed quest 6072: added OfferRewardText.
UPDATE `quest_template` SET `OfferRewardText` = 'Yes, it is time, $c.' WHERE `entry` = 6072;

-- Fixed quest 6126: removed PrevQuestId, thus the quest is now attainable.
UPDATE `quest_template` SET `PrevQuestId` = 0 WHERE `entry` = 6126;

-- Added on kill reputation for a few Ahn'Qiraj creatures. 
DELETE FROM `creature_onkill_reputation` WHERE `creature_id` = 15318;
DELETE FROM `creature_onkill_reputation` WHERE `creature_id` = 15319;
DELETE FROM `creature_onkill_reputation` WHERE `creature_id` = 15325;
DELETE FROM `creature_onkill_reputation` WHERE `creature_id` = 15327;
DELETE FROM `creature_onkill_reputation` WHERE `creature_id` = 15335;
DELETE FROM `creature_onkill_reputation` WHERE `creature_id` = 15336;
DELETE FROM `creature_onkill_reputation` WHERE `creature_id` = 15355;
DELETE FROM `creature_onkill_reputation` WHERE `creature_id` = 15505;
DELETE FROM `creature_onkill_reputation` WHERE `creature_id` = 15514;
DELETE FROM `creature_onkill_reputation` WHERE `creature_id` = 15538;
DELETE FROM `creature_onkill_reputation` WHERE `creature_id` = 15555;
DELETE FROM `creature_onkill_reputation` WHERE `creature_id` = 15934;
DELETE FROM `creature_onkill_reputation` WHERE `creature_id` = 15741;
INSERT INTO `creature_onkill_reputation` VALUES (15318,609,0,7,0,5,0,0,0,0);
INSERT INTO `creature_onkill_reputation` VALUES (15319,609,0,7,0,5,0,0,0,0);
INSERT INTO `creature_onkill_reputation` VALUES (15325,609,0,7,0,5,0,0,0,0);
INSERT INTO `creature_onkill_reputation` VALUES (15327,609,0,7,0,5,0,0,0,0);
INSERT INTO `creature_onkill_reputation` VALUES (15335,609,0,7,0,5,0,0,0,0);
INSERT INTO `creature_onkill_reputation` VALUES (15336,609,0,7,0,5,0,0,0,0);
INSERT INTO `creature_onkill_reputation` VALUES (15355,609,0,7,0,5,0,0,0,0);
INSERT INTO `creature_onkill_reputation` VALUES (15505,609,0,7,0,5,0,0,0,0);
INSERT INTO `creature_onkill_reputation` VALUES (15514,609,0,7,0,5,0,0,0,0);
INSERT INTO `creature_onkill_reputation` VALUES (15538,609,0,7,0,5,0,0,0,0);
INSERT INTO `creature_onkill_reputation` VALUES (15555,609,0,7,0,5,0,0,0,0);
INSERT INTO `creature_onkill_reputation` VALUES (15934,609,0,7,0,5,0,0,0,0);
INSERT INTO `creature_onkill_reputation` VALUES (15741,910,609,3,0,2000,7,0,25,0);

-- Fixed Required Races for quest 6283 Bloodfury Bloodline
UPDATE `quest_template` SET `RequiredRaces` = 178 WHERE `entry` = 6283;

-- Fixed Required Races for quest 2936 The Spider God
UPDATE `quest_template` SET `RequiredRaces` = 178 WHERE `entry` = 2936;

-- Fixed Required Races for quest 8913 An earnest proposition
UPDATE `quest_template` SET `RequiredRaces` = 178 WHERE `entry` = 8913;

-- Fixed Required Races for quest 8927 Just Compensation
UPDATE `quest_template` SET `RequiredRaces` = 178 WHERE `entry` = 8927;

-- Tendriss Warpwood spawns Equine Spirit on Death, from old DB
DELETE FROM `creature_ai_scripts` WHERE id = 1148906;
INSERT INTO `creature_ai_scripts` VALUES (1148906,11489,6,0,100,0,0,0,0,0,32,14566,0,16,0,0,0,0,0,0,0,0,'Tendris Warpwood - Summon Ancient Equine Spirit on Death');
DELETE FROM `creature_ai_summons` WHERE id = 16;
INSERT INTO `creature_ai_summons` VALUES (16,33.7585,491.548,-23.2803,3.15989,120000,14566);

-- Fixing areatrigger teleport for Quest 7848 Attunement to the core, to 1.12 version of the quest
UPDATE `areatrigger_teleport` SET `required_quest_done` = 7848 WHERE `id` = 3528;
UPDATE `areatrigger_teleport` SET `required_quest_done` = 7848 WHERE `id` = 3529;

-- DB Support for Quest 2987 Gordunni Cobalt
UPDATE `gameobject_template` SET `type` = 5 WHERE `entry` = 144050;
UPDATE `gameobject_template` SET `data4` = 0 WHERE `entry` = 144050;
UPDATE `gameobject_template` SET `data5` = 0 WHERE `entry` = 144050;

-- UPDATE Database Version
UPDATE `db_version` SET `version` = 'ZeroDatabase 2.0.10 for MaNGOSZero zXXXX+ and ScriptDevZero zXXXX+';
