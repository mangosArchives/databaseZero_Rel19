/*

	This fixes the portal inside of Molten Core. Before you were ported to Blackrock Depths when you wanted to leave Molten Core through the portal.
	Now you will get ported to Blackrock Mountain (beside the Elv which ports you inside Molten Core).

*/

ALTER TABLE db_version CHANGE COLUMN required_20003_03_mangos_spell_bonus_data.sql required_20003_17_Molten_Core_Portal_Fix  bit;

UPDATE `areatrigger_teleport` SET 
`target_map` = '0',
`target_position_x` = '-7506.95',
`target_position_y` = '-1040.91',
`target_position_z` = '180.91',
`target_orientation` = '3.35' 
WHERE `areatrigger_teleport`.`id` =2890;
