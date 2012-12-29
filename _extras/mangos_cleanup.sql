--
-- Copyright (C) 2005-2012 MaNGOS <http://getmangos.com/>
-- Copyright (C) 2009-2012 MaNGOSZero <https://github.com/mangos-zero>
--
-- This program is free software; you can redistribute it and/or modify
-- it under the terms of the GNU General Public License as published by
-- the Free Software Foundation; either version 2 of the License, or
-- (at your option) any later version.
--
-- This program is distributed in the hope that it will be useful,
-- but WITHOUT ANY WARRANTY; without even the implied warranty of
-- MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
-- GNU General Public License for more details.
--
-- You should have received a copy of the GNU General Public License
-- along with this program; if not, write to the Free Software
-- Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA 02111-1307 USA
--

UPDATE creature SET
curhealth = (SELECT FLOOR(RAND(1)*(maxhealth - minhealth) + minhealth) FROM creature_template WHERE creature.id = creature_template.entry)
WHERE curhealth < (SELECT minhealth FROM creature_template WHERE creature.id = creature_template.entry);

UPDATE creature SET
curmana = (SELECT FLOOR(RAND(1)*(maxmana - minmana) + minmana) FROM creature_template WHERE creature.id = creature_template.entry)
WHERE curmana < (SELECT minmana FROM creature_template WHERE creature.id = creature_template.entry);

UPDATE creature SET MovementType = 1 WHERE spawndist != 0 AND MovementType = 0;
UPDATE creature SET MovementType = 0 WHERE spawndist = 0 AND MovementType != 2;
UPDATE creature SET MovementType = 2 WHERE guid IN (SELECT DISTINCT id FROM creature_movement);
DELETE FROM creature_movement WHERE id NOT IN (SELECT guid FROM creature);

DELETE FROM creature_addon WHERE guid NOT IN (SELECT guid FROM creature);