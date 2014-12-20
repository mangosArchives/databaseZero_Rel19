-- Add the Revision update into the revision column
INSERT IGNORE INTO db_version SET `Version` = 'MaNGOSZero Database 2.0.11 Rev 14';

-- No record of Witherbark Axe Throwers ever saying anything, so remove it from the database

-- Deleted record
-- '255402', '2554', '4', '0', '15', '0', '0', '0', '0', '0', '1', '-5', '-6', '0', '0', '0', '0', '0', '0', '0', '0', '0', 'Witherbark Axe Thrower - Random Aggro Say'
DELETE FROM `mangosZero`.`creature_ai_scripts` WHERE `id`='255402';

-- renumber remaining records
UPDATE `mangosZero`.`creature_ai_scripts` SET `id`='255402' WHERE `id`='255403';
UPDATE `mangosZero`.`creature_ai_scripts` SET `id`='255403' WHERE `id`='255404';
UPDATE `mangosZero`.`creature_ai_scripts` SET `id`='255404' WHERE `id`='255405';
UPDATE `mangosZero`.`creature_ai_scripts` SET `id`='255405' WHERE `id`='255406';
UPDATE `mangosZero`.`creature_ai_scripts` SET `id`='255406' WHERE `id`='255407';
UPDATE `mangosZero`.`creature_ai_scripts` SET `id`='255407' WHERE `id`='255408';
UPDATE `mangosZero`.`creature_ai_scripts` SET `id`='255408' WHERE `id`='255409';
UPDATE `mangosZero`.`creature_ai_scripts` SET `id`='255409' WHERE `id`='255410';
