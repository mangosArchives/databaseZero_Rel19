-- salja

-- creature

-- Pusillin (Dire Maul) - scripted UDB 406
UPDATE creature SET MovementType = 2,spawndist = 0 WHERE guid = 125700;
UPDATE creature_template SET gossip_menu_id = 5709, npcflag= 3, MovementType = 2, speed_run = 1.3, faction_A = 35, faction_H = 35 WHERE entry = 14354;

DELETE FROM creature_movement WHERE id = 125700;
DELETE FROM creature_movement_template WHERE entry = 14354;

INSERT INTO creature_movement_template (entry, POINT, position_x, position_y, position_z, waittime, script_id, textid1, textid2, textid3, textid4, textid5, emote, spell, wpguid, orientation, model1, model2) VALUES
(14354,1,87.6813,-198.631,-4.13498,1000,1435401,0,0,0,0,0,0,0,0,5.82043,0,0),
(14354,2,-161.902,-199.74,-4.15296,0,0,0,0,0,0,0,0,0,0,0,0,0),
(14354,3,-150.171,-278.348,-4.14787,1000,1435402,0,0,0,0,0,0,0,0,0,0,0),
(14354,4,-153.059,-302.431,-4.14555,0,0,0,0,0,0,0,0,0,0,0,0,0),
(14354,5,-139.489,-315.995,-4.08367,0,0,0,0,0,0,0,0,0,0,0,0,0),
(14354,6,-153.976,-350.542,-4.15124,0,0,0,0,0,0,0,0,0,0,0,0,0),
(14354,7,-78.3584,-348.637,-4.06238,0,0,0,0,0,0,0,0,0,0,0,0,0),
(14354,8,-22.424,-353.666,-4.10318,0,0,0,0,0,0,0,0,0,0,0,0,0),
(14354,9,82.9147,-348.141,-4.0564,0,0,0,0,0,0,0,0,0,0,0,0,0),
(14354,10,110.87,-358.995,-4.14949,1000,1435402,0,0,0,0,0,0,0,0,0,0,0),
(14354,11,111.679,-468.421,-2.71884,0,0,0,0,0,0,0,0,0,0,0,0,0),
(14354,12,111.693,-485.157,-6.84356,0,0,0,0,0,0,0,0,0,0,0,0,0),
(14354,13,111.718,-515.394,-6.91479,0,0,0,0,0,0,0,0,0,0,0,0,0),
(14354,14,111.73,-529.729,-10.8699,0,0,0,0,0,0,0,0,0,0,0,0,0),
(14354,15,106.518,-539.857,-11.0802,0,0,0,0,0,0,0,0,0,0,0,0,0),
(14354,16,92.8557,-545.29,-11.0808,0,0,0,0,0,0,0,0,0,0,0,0,0),
(14354,17,79.3301,-544.812,-15.0739,0,0,0,0,0,0,0,0,0,0,0,0,0),
(14354,18,67.4017,-548.451,-15.2879,0,0,0,0,0,0,0,0,0,0,0,0,0),
(14354,19,55.4995,-557.068,-19.2782,0,0,0,0,0,0,0,0,0,0,0,0,0),
(14354,20,50.3342,-566.387,-19.4475,0,0,0,0,0,0,0,0,0,0,0,0,0),
(14354,21,50.0126,-585.944,-23.5729,0,0,0,0,0,0,0,0,0,0,0,0,0),
(14354,22,51.0541,-633.703,-25.1224,1000,1435402,0,0,0,0,0,0,0,0,0,0,0),
(14354,23,30.5916,-688.038,-25.1611,0,0,0,0,0,0,0,0,0,0,0,0,0),
(14354,24,3.28358,-700.483,-25.1611,0,0,0,0,0,0,0,0,0,0,0,0,0),
(14354,25,2.90135,-668.58,-12.6426,0,0,0,0,0,0,0,0,0,0,0,0,0),
(14354,26,16.8739,-671.39,-12.6426,0,0,0,0,0,0,0,0,0,0,0,0,0),
(14354,27,16.4463,-703.771,-12.6426,0,0,0,0,0,0,0,0,0,0,0,0,0),
(14354,28,8.53742,-704.414,-12.6426,1000,1435402,0,0,0,0,0,0,0,0,0,0,0);

DELETE FROM dbscripts_on_creature_movement WHERE id IN (1435401, 1435402);
INSERT INTO dbscripts_on_creature_movement (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, X, Y, z, o, comments) VALUES
(1435401,0,32,1,0,0,0,0,0,0,0,0,0,0,0,0,'PAUSE ON'),
(1435401,0,25,1,0,0,0,0,0,0,0,0,0,0,0,0,'RUN ON'),
(1435402,0,32,1,0,0,0,0,0,0,0,0,0,0,0,0,'PAUSE ON'),
(1435402,0,29,3,0x01,0,0,0,0,0,0,0,0,0,0,0,'npc_flag added');


DELETE FROM gossip_menu WHERE entry = 5709;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(5709, 6877, 0, 719),
(5709, 6878, 0, 720),
(5709, 6879, 0, 721),
(5709, 6880, 0, 722),
(5709, 6881, 0, 723);

DELETE FROM gossip_menu_option WHERE menu_id = 5709;
INSERT INTO gossip_menu_option (menu_id, id, option_text, option_id, npc_option_npcflag, action_menu_id, action_script_id, condition_id) VALUES
(5709, 0, 'Game? Are you crazy?', 1, 1, -1, 570901, 719),
(5709, 1, 'Why you little...', 1, 1, -1, 570902, 720),
(5709, 2, 'Mark my words, I will catch you, imp. And when I do!', 1, 1, -1, 570903, 721),
(5709, 3, 'DIE!', 1, 1, -1, 570904, 722),
(5709, 4, 'Prepare to meet your maker.', 1, 1, -1, 570905, 723);

DELETE FROM conditions WHERE condition_entry IN (719, 720, 721, 722, 723);
INSERT INTO conditions (condition_entry, TYPE, value1, value2) VALUES
(719, 33, 1, 0),
(720, 33, 3, 0),
(721, 33, 10, 0),
(722, 33, 22, 0),
(723, 33, 28, 0);

DELETE FROM dbscripts_on_gossip WHERE id IN (570901, 570902, 570903, 570904, 570905);
INSERT INTO dbscripts_on_gossip (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, X, Y, z, o, comments) VALUES
(570901,0,32,0,0,0,0,0,0,0,0,0,0,0,0,0,'UNPAUSE'),
(570901,0,29,3,0x02,0,0,0,0,0,0,0,0,0,0,0,'npc_flag removed'),
(570901,1,0,0,0,0,0,0,2000005460,0,0,0,0,0,0,0,''),
(570902,0,32,0,0,0,0,0,0,0,0,0,0,0,0,0,'UNPAUSE'),
(570902,0,29,3,0x02,0,0,0,0,0,0,0,0,0,0,0,'npc_flag removed'),
(570902,1,0,0,0,0,0,0,2000005461,0,0,0,0,0,0,0,''),
(570903,0,32,0,0,0,0,0,0,0,0,0,0,0,0,0,'UNPAUSE'),
(570903,0,29,3,0x02,0,0,0,0,0,0,0,0,0,0,0,'npc_flag removed'),
(570903,1,0,0,0,0,0,0,2000005462,0,0,0,0,0,0,0,''),
(570904,0,32,0,0,0,0,0,0,0,0,0,0,0,0,0,'UNPAUSE'),
(570904,0,29,3,0x02,0,0,0,0,0,0,0,0,0,0,0,'npc_flag removed'),
(570904,1,0,0,0,0,0,0,2000005463,0,0,0,0,0,0,0,''),
(570905,0,29,3,0x02,0,0,0,0,0,0,0,0,0,0,0,'npc_flag removed'),
(570905,1,0,0,0,0,0,0,2000005464,0,0,0,0,0,0,0,''),
(570905,3,10,13276,120000,0,0,0,0,0,0,0,14.7965,-696.322,-12.6426,4.4823,'summon - Wildspawn Imp'),
(570905,3,10,13276,120000,0,0,0,0,0,0,0,18.8891,-697.389,-12.6426,4.35271,'summon - Wildspawn Imp'),
(570905,3,10,13276,120000,0,0,0,0,0,0,0,21.4274,-700.227,-12.6426,4.06997,'summon - Wildspawn Imp'),
(570905,3,10,13276,120000,0,0,0,0,0,0,0,22.2017,-705.459,-12.6426,3.48092,'summon - Wildspawn Imp'),
(570905,4,15,22735,0,0,0,0,0,0,0,0,0,0,0,0,'TRANSFORM'),
(570905,4,22,90,0x01,0,0,0,0,0,0,0,0,0,0,0,'set DemonFaction');

DELETE FROM db_script_string WHERE entry BETWEEN 2000005460 AND 2000005464;
INSERT INTO db_script_string (entry, content_default, content_loc1, content_loc2, content_loc3, content_loc4, content_loc5, content_loc6, content_loc7, content_loc8) VALUES
(2000005460,'If you want the key, you\'ll have to catch me!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(2000005461,'Chase me if you dare! I run without a care!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(2000005462,'Why would you ever want to harm me!? Come. Friends we can be!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(2000005463,'DIE?! You make Pusillin cry!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),
(2000005464,'Say hello to my little friends!',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);

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
