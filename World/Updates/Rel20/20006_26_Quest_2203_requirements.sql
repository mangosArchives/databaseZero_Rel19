-- Add the Revision update into the revision column
INSERT IGNORE INTO `db_version` SET `Version` = 'MaNGOSZero Database 2.0.11 Rev 20006_26';

-- Quest 2203 (Badlands Reagent Run II)
UPDATE quest_template SET RequiredSkillValue = 1 WHERE entry = 2203;
