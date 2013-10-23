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

-- Fixes https://github.com/mangoszero/database/issues/102
-- http://www.wowwiki.com/Quest:A_Warning

UPDATE `creature_template` SET `gossip_menu_id`=14000, `npcflag`=3 WHERE `entry`=14494;
UPDATE `quest_template` SET `PrevQuestId`=7621 WHERE `entry`=7622;

DELETE FROM `npc_text` WHERE `id` IN (17200,17201,17202,17203,17204,17205);
INSERT INTO `npc_text` (`ID`, `text0_0`, `text0_1`, `lang0`, `prob0`, `em0_0`, `em0_1`, `em0_2`, `em0_3`, `em0_4`, `em0_5`, `text1_0`, `text1_1`, `lang1`, `prob1`, `em1_0`, `em1_1`, `em1_2`, `em1_3`, `em1_4`, `em1_5`, `text2_0`, `text2_1`, `lang2`, `prob2`, `em2_0`, `em2_1`, `em2_2`, `em2_3`, `em2_4`, `em2_5`, `text3_0`, `text3_1`, `lang3`, `prob3`, `em3_0`, `em3_1`, `em3_2`, `em3_3`, `em3_4`, `em3_5`, `text4_0`, `text4_1`, `lang4`, `prob4`, `em4_0`, `em4_1`, `em4_2`, `em4_3`, `em4_4`, `em4_5`, `text5_0`, `text5_1`, `lang5`, `prob5`, `em5_0`, `em5_1`, `em5_2`, `em5_3`, `em5_4`, `em5_5`, `text6_0`, `text6_1`, `lang6`, `prob6`, `em6_0`, `em6_1`, `em6_2`, `em6_3`, `em6_4`, `em6_5`, `text7_0`, `text7_1`, `lang7`, `prob7`, `em7_0`, `em7_1`, `em7_2`, `em7_3`, `em7_4`, `em7_5`) VALUES
(17200, 'Praise the Light, one has finally answered the calling.', NULL, 0, 1, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0),
(17201, '<Eris nods>$BThe Eye has seen so many horrors and wonders.$BIt displays what it feels the one looking into it is most suited to see.', NULL, 0, 1, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0),
(17202, 'You were. The Eye is never wrong.$BYou are a $G priest:priestess; after all. A powerful $G priest:priestess;, if the Eye showed you this horrible memory.$BYou have come for redemption, yet you yourself do not realize this... Do you?', NULL, 0, 1, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0),
(17203, 'I know you will, $N.$BI myself am a priestess, though, unlike you I am long since gone from this world. My spirit, however, remains here, as do the spirits of the thousands who were brutally slain by the mad Prince, Arthas Menethil and his legion of undeath.', NULL, 0, 1, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0),
(17204, 'I never stated that you were here to redeem yourself, $G priest:priestess;. You are here to redeem me and the innocents murdered while trying to escape Stratholme.$BMy spirit and the spirit of those lost are bound here, cursed to endlessly relive our own tragic deaths.', NULL, 0, 1, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0),
(17205, 'You must do what I could not: Save the peasants that were cut down while fleeing from Stratholme.$BThey will walk towards the light, you must ensure their survival. Should too many fall, our cursed existence shall continue - you will have failed.$BEvery ability, prayer and spell that you have learned will be tested. May the Light protect you, $N.', NULL, 0, 1, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, 0, 0, 0, 0);

DELETE FROM `gossip_menu` WHERE `entry` IN (14000,14001,14002,14003,14004,14005);
INSERT INTO `gossip_menu` (`entry`, `text_id`, `script_id`, `condition_id`) VALUES
(14000, 17200, 0, 0),
(14001, 17201, 0, 0),
(14002, 17202, 0, 0),
(14003, 17203, 0, 0),
(14004, 17204, 0, 0),
(14005, 17205, 0, 0);

DELETE FROM `gossip_menu_option` WHERE `menu_id` IN (14000,14001,14002,14003,14004);
INSERT INTO `gossip_menu_option` (`menu_id`, `id`, `option_icon`, `option_text`, `option_id`, `npc_option_npcflag`, `action_menu_id`, `action_poi_id`, `action_script_id`, `box_coded`, `box_money`, `box_text`, `condition_id`) VALUES
(14000, 1, 0, 'The Eye led me here, Eris.', 1, 1, 14001, 0, 0, 0, 0, ' ', 0),
(14001, 1, 0, 'And I was suited to see this?', 1, 1, 14002, 0, 0, 0, 0, ' ', 0),
(14002, 1, 0, 'I really did not know what to expect, Eris. I will use my powers to assist you if that is what is asked of me.', 1, 1, 14003, 0, 0, 0, 0, ' ', 0),
(14003, 1, 0, 'Those days are over, Eris.', 1, 1, 14004, 0, 0, 0, 0, ' ', 0),
(14004, 1, 0, 'So what can I do to help?', 1, 1, 14005, 0, 0, 0, 0, ' ', 0);

-- Update doors to close in 5 seconds and torch return state 5 seconds
-- GAMEOBJECT_TYPE_DOOR = 0
-- data0: startOpen (Boolean flag)
-- data1: open (LockId from Lock.dbc)
-- data2: autoClose (65536 * seconds) (e.g. open after 5min = 19660800)
UPDATE `gameobject_template` SET `data2` = 327680 WHERE `entry` IN (177188,177189,177192,177198,179507,179508,179510,179513);

-- Update faction leaders and provide sane health values.
--
-- Description: The faction leaders currently have health points being too low.
-- Creatures:
--              - Highlord Bolvar Fordragon                     http://www.wowhead.com/npc=1748
--              - King Magni Bronzebeard <Lord of Ironforge>    http://www.wowhead.com/npc=2784
--              - Cairne Bloodhoof <High Chieftain>             http://www.wowhead.com/npc=3057
--              - Thrall <Warchief>                             http://www.wowhead.com/npc=4949
UPDATE `creature_template` SET `minhealth` = 633420, `maxhealth` = 633420 WHERE `entry` = 4949;
--              - High Tinker Mekkatorque <King of Gnomes>      http://www.wowhead.com/npc=7937
--              - Tyrand Whisperwind <High Priestess of Elune>  http://www.wowhead.com/npc=7999
--              - Lady Sylvanas Windrunner <Banshee Queen>      http://www.wowhead.com/npc=10181
--              - Vol'jin                                       http://www.wowhead.com/npc=10540

DELETE FROM `creature_template` WHERE `entry` = 15118;
INSERT INTO `creature_template` (`entry`,`modelid_1`, `name`) VALUES (15118, 15234, 'Master Angler Form');
--              - Hook of the Master Angler    http://www.wowhead.com/item=19979
-- UPDATE Database Version
UPDATE `db_version` SET `version` = 'ZeroDatabase 2.0.8 for MaNGOSZero zXXXX+ and ScriptDevZero zXXXX+';
