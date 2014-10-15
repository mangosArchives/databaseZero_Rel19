/*
	The fixes the issue where Baron Revilgaz in Booty Bay, shows the greeting/text "Missing US Text"
*/
-- remove link between the NPC and the text
DELETE FROM `gossip_menu` WHERE `entry`='6685' and`text_id`='13062' and`script_id`='0';
-- remove the text entry
DELETE FROM `npc_text` WHERE `ID`='13062';
