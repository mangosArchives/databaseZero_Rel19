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

-- Fix Issues #15 NPC have missing gossip_menu_id and he is Vendor and Questgiver
UPDATE `creature_template` SET gossip_menu_id=1781, npcflag=7 WHERE entry=233;

-- Fix Onyxia hitbox
UPDATE `creature_model_info` SET bounding_radius=8.8, combat_reach=8.8 WHERE modelid=8570;

-- Fix Missing creature_movement for npc 8964 spawn 1
DELETE FROM `creature` WHERE guid IN (3343, 3344);
DELETE FROM `creature_movement` WHERE id IN (3343, 3344);
UPDATE creature SET MovementType=2 WHERE guid IN (3343, 3344);

INSERT INTO `creature_movement` VALUES
('3343','1','-7563.27','-1127.95','311.226','0','0','0','0','0','0','0','0','0','0','3.11491','0','0'),
('3343','2','-7593.5','-1135.78','306.466','0','0','0','0','0','0','0','0','0','0','2.67509','0','0'),
('3343','3','-7602.82','-1131.38','304.65','0','0','0','0','0','0','0','0','0','0','3.28063','0','0'),
('3343','4','-7613.59','-1134.62','303.177','0','0','0','0','0','0','0','0','0','0','3.42986','0','0'),
('3343','5','-7619.85','-1137.96','301.538','0','0','0','0','0','0','0','0','0','0','2.31381','0','0'),
('3343','6','-7628.6','-1133.89','299.233','0','0','0','0','0','0','0','0','0','0','2.0397','0','0'),
('3343','7','-7639.82','-1126.93','308.131','0','0','0','0','0','0','0','0','0','0','1.11293','0','0'),
('3343','8','-7638.56','-1115.17','308.69','0','0','0','0','0','0','0','0','0','0','0.622054','0','0'),
('3343','9','-7628.14','-1104.62','297.551','0','0','0','0','0','0','0','0','0','0','0.571731','0','0'),
('3343','10','-7614.63','-1086.77','294.469','0','0','0','0','0','0','0','0','0','0','0.096565','0','0'),
('3343','11','-7595.33','-1082.73','301.069','0','0','0','0','0','0','0','0','0','0','5.75457','0','0'),
('3343','12','-7562.57','-1093.5','309.159','0','0','0','0','0','0','0','0','0','0','4.15316','0','0'),
('3343','13','-7572.64','-1107.93','304.962','0','0','0','0','0','0','0','0','0','0','3.70784','0','0'),
('3343','14','-7580.03','-1111.9','311.15','0','0','0','0','0','0','0','0','0','0','3.6348','0','0'),
('3343','15','-7593.73','-1118.03','308.062','0','0','0','0','0','0','0','0','0','0','3.87513','0','0'),
('3343','16','-7606.64','-1133.21','302.427','0','0','0','0','0','0','0','0','0','0','3.67721','0','0'),
('3343','17','-7621.48','-1134.39','299.434','0','0','0','0','0','0','0','0','0','0','2.92323','0','0'),
('3343','18','-7628.45','-1127.85','318.811','0','0','0','0','0','0','0','0','0','0','2.02002','0','0'),
('3343','19','-7626.37','-1107.11','312.317','0','0','0','0','0','0','0','0','0','0','1.0312','0','0'),
('3343','20','-7611.95','-1089.72','316.947','0','0','0','0','0','0','0','0','0','0','0.589808','0','0'),
('3343','21','-7594.47','-1082.23','327.068','0','0','0','0','0','0','0','0','0','0','5.32733','0','0'),
-- Fix Missing creature_movement for npc 8964 spawn 2
('3344','1','-7682.42','-1139.72','290.121','0','0','0','0','0','0','0','0','0','0','5.54256','0','0'),
('3344','2','-7667.47','-1158.28','293.115','0','0','0','0','0','0','0','0','0','0','5.74126','0','0'),
('3344','3','-7620.15','-1202.64','294.141','0','0','0','0','0','0','0','0','0','0','0.065179','0','0'),
('3344','4','-7579.83','-1203.19','295.948','0','0','0','0','0','0','0','0','0','0','0.349493','0','0'),
('3344','5','-7548.39','-1191.72','291.224','0','0','0','0','0','0','0','0','0','0','0.578044','0','0'),
('3344','6','-7518.04','-1173.72','285.623','0','0','0','0','0','0','0','0','0','0','1.03122','0','0'),
('3344','7','-7502.42','-1148.82','283.536','0','0','0','0','0','0','0','0','0','0','1.32339','0','0'),
('3344','8','-7498.73','-1116.38','281.747','0','0','0','0','0','0','0','0','0','0','1.78285','0','0'),
('3344','9','-7506.53','-1085.59','290.476','0','0','0','0','0','0','0','0','0','0','2.01533','0','0'),
('3344','10','-7519.97','-1048.83','288.986','0','0','0','0','0','0','0','0','0','0','2.35148','0','0'),
('3344','11','-7554.22','-1021.56','294.024','0','0','0','0','0','0','0','0','0','0','2.78659','0','0'),
('3344','12','-7589.07','-1020.71','292.665','0','0','0','0','0','0','0','0','0','0','3.47145','0','0'),
('3344','13','-7612.99','-1028.65','285.319','0','0','0','0','0','0','0','0','0','0','3.80446','0','0'),
('3344','14','-7635.77','-1050.28','294.726','0','0','0','0','0','0','0','0','0','0','4.42336','0','0'),
('3344','15','-7673.55','-1074.89','291.274','0','0','0','0','0','0','0','0','0','0','4.76342','0','0'),
('3344','16','-7672.18','-1122.79','288.217','0','0','0','0','0','0','0','0','0','0','5.13177','0','0'),
('3344','17','-7656.22','-1159.52','321.283','0','0','0','0','0','0','0','0','0','0','5.73809','0','0');

-- Cleanup
UPDATE creature SET
curhealth = (SELECT FLOOR(RAND(1)*(maxhealth - minhealth) + minhealth) FROM creature_template WHERE creature.id = creature_template.entry)
WHERE curhealth < (SELECT minhealth FROM creature_template WHERE creature.id = creature_template.entry);

UPDATE creature SET
curmana = (SELECT FLOOR(RAND(1)*(maxmana - minmana) + minmana) FROM creature_template WHERE creature.id = creature_template.entry)
WHERE curmana < (SELECT minmana FROM creature_template WHERE creature.id = creature_template.entry);

UPDATE creature SET MovementType = 1 WHERE spawndist != 0 AND MovementType = 0;
UPDATE creature SET MovementType = 0 WHERE spawndist = 0 AND MovementType != 2;
UPDATE creature SET MovementType = 2 WHERE guid IN (SELECT DISTINCT id FROM creature_movement);
DELETE FROM creature_movement WHERE id NOT IN (SELECT guid FROM creature);

DELETE FROM creature_addon WHERE guid NOT IN (SELECT guid FROM creature);

-- Update Database Version
UPDATE db_version set version = 'ZeroDatabase 2.0.1 for MaNGOSZero zXXXX+ and ScriptDevZero zXXXX+';