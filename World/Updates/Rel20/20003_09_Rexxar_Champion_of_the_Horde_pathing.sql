/*
	******* REQUIRES SQL SCRIPT FILE: 20005_01_Rexxar_Champion_of_the_Horde_pathing.sql *********
	
	This will get Misha (bear) to wander alongside Rexxar as he goes on his walk	
*/

-- place Misha at the correct start coordinates (next to Rexxar)
UPDATE `creature` SET `position_x`='447.226471',  `position_y`='1766.857422', `position_z`='22.992067', `orientation`='3.143952', `MovementType`='2' WHERE `guid`='590005';

-- link Misha to Rexxar, so that she will follow, fight alongside, despawn with, and spawn with Rexxar
-- for flag setting see: https://www.getmangos.eu/wiki/Reference%20Information/DB/mangos/MaNGOSZero/creature_linking.md
INSERT INTO `creature_linking` (`guid`, `master_guid`, `flag`) VALUES ('590005', '29113', '8835');

