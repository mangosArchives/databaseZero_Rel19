-- Add the Revision update into the revision column
INSERT IGNORE INTO db_version SET `Version` = 'MaNGOSZero Database 2.0.11 Rev 06';

-- Remove unused field
ALTER TABLE `gameobject_template` DROP COLUMN `castBarCaption`;