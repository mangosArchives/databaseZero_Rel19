-- salja

-- creature

-- gameobject

-- AQ20 entrance spawns UDB 406
DELETE FROM gameobject WHERE guid IN (94155, 94156, 94157) ;
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecs, animprogress, state) VALUES
(94155, 180691, 509, -8713.4375, 1543.3385, 32.20343, 0.767943859, 0, 0, 0.374606133, 0.927184045, 7200, 100, 1),
(94156, 180691, 509, -8938.357, 1860.11328, 3.230413, -2.530723, 0, 0, -0.9537163, 0.3007079, 7200, 100, 1),
(94157, 180691, 509, -9090.657, 1500.95874, 24.4341373, 0.9773831, 0, 0, 0.469470978, 0.8829479, 7200, 100, 1);

-- Uldaman missing chest UDB 406
DELETE FROM gameobject WHERE guid = 94154;
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecs, animprogress, state) VALUES
(94154, 141979, 70, 153.39, 289.091, -52.2262, 2.68781, 0, 0, 0, 0, -14400, 255, 1);

-- Naxxramas UDB 406
DELETE FROM gameobject WHERE id = 181356;
INSERT INTO gameobject (guid, id, map, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecs, animprogress, state) VALUES
(94144, 181356, 533, 3522.57, -5236.76, 137.63, -1.8, 0, 0, -0.783327, 0.62161, 604800, 100, 1);

-- items

-- quests
