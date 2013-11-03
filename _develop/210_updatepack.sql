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

-- Tendriss Warpwood spawns Equine Spirit on Death, from old DB
DELETE FROM `creature_ai_scripts` WHERE id = 1148906;
INSERT INTO `creature_ai_scripts` VALUES (1148906,11489,6,0,100,0,0,0,0,0,32,14566,0,16,0,0,0,0,0,0,0,0,'Tendris Warpwood - Summon Ancient Equine Spirit on Death');
DELETE FROM `creature_ai_summons` WHERE id = 16;
INSERT INTO `creature_ai_summons` VALUES (16,33.7585,491.548,-23.2803,3.15989,120000,14566);

-- Fixing areatrigger teleport for Quest 7848 Attunement to the core, to 1.12 version of the quest
UPDATE `areatrigger_teleport` SET `required_quest_done` = 7848 WHERE `id` = 3528;
UPDATE `areatrigger_teleport` SET `required_quest_done` = 7848 WHERE `id` = 3529;

-- DB Support for Quest 2987 Gordunni Cobalt
UPDATE `gameobject_template` SET `type` = 5 WHERE `entry` = 144050;
UPDATE `gameobject_template` SET `data4` = 0 WHERE `entry` = 144050;
UPDATE `gameobject_template` SET `data5` = 0 WHERE `entry` = 144050;

-- UPDATE Database Version
UPDATE `db_version` SET `version` = 'ZeroDatabase 2.0.10 for MaNGOSZero zXXXX+ and ScriptDevZero zXXXX+';
