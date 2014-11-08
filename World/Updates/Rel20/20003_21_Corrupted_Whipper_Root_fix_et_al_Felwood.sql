/*
    These scripts fix the looting issues with the corrupted plants in Felwood, where no loot is available.
	This also relates to the quest: 4117 "Corrupted Whipper Root"
 */


-- this allows the looting of Whipper Root Tuber from Corrupted Whipper Root
INSERT INTO `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES ('164888', '11951', '100', '0', '1', '3', '0'),('173284', '11951', '100', '0', '1', '3', '0'),('174605', '11951', '100', '0', '1', '3', '0'),('174606', '11951', '100', '0', '1', '3', '0'),('174607', '11951', '100', '0', '1', '3', '0'),('174686', '11951', '100', '0', '1', '3', '0');

-- this allows the looting of Night Dragon Breath from Corrupted Night Dragon
INSERT INTO `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES ('164885', '11952', '100', '0', '1', '3', '0'),('173324', '11952', '100', '0', '1', '3', '0'),('174608', '11952', '100', '0', '1', '3', '0'),('174684', '11952', '100', '0', '1', '3', '0'),('182114', '11952', '100', '0', '1', '3', '0');

-- this allows the looting of Windblossom Berries from Corrupted Windblossom
INSERT INTO `gameobject_loot_template` (`entry`, `item`, `ChanceOrQuestChance`, `groupid`, `mincountOrRef`, `maxcount`, `condition_id`) VALUES ('164887', '11950', '100', '0', '1', '3', '0'),('173327', '11950', '100', '0', '1', '3', '0'),('174599', '11950', '100', '0', '1', '3', '0'),('174600', '11950', '100', '0', '1', '3', '0'),('174601', '11950', '100', '0', '1', '3', '0'),('174602', '11950', '100', '0', '1', '3', '0'),('174603', '11950', '100', '0', '1', '3', '0'),('174604', '11950', '100', '0', '1', '3', '0'),('174708', '11950', '100', '0', '1', '3', '0'),('174709', '11950', '100', '0', '1', '3', '0');