--
-- Copyright (C) 2005-2014 MaNGOS <http://getmangos.eu/>
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

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `dbdocstable`
--

DROP TABLE IF EXISTS `dbdocstable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dbdocstable` (
  `tableName` varchar(80) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Name of the table to add additional notes to',
  `tableNotes` text COLLATE utf8_unicode_ci NOT NULL COMMENT 'The additional note to be added to the table',
  PRIMARY KEY (`tableName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dbdocstable`
--

LOCK TABLES `dbdocstable` WRITE;
/*!40000 ALTER TABLE `dbdocstable` DISABLE KEYS */;
INSERT INTO `dbdocstable` (`tableName`, `tableNotes`) VALUES ('areatrigger_involvedrelation','The areatrigger_involvedrelation table holds connections between triggers and quests.\r\n\r\nIf there is a record in the table for a quest, the quest will not be completed until the player activates the areatriger. The quest is not necessarily finished after that, but that one condition of the quest is satisfied. If the only condition of the quest is to explore an area, then the quest will be complete.'),
('areatrigger_tavern','Enable a trigger when player enters a city or tavern. This causes the player to enter a resting state.'),
('areatrigger_teleport','Contains all the teleport triggers definition. This table is used to complete .dbc file information.'),
('battleground_events','This table contains the description of battleground events.'),
('battleground_template','Contains information about the different battlegrounds, like how many players are needed to start, how many can be inside the same one, and the locations where each side starts.'),
('battlemaster_entry','Holds information on which NPC can start what battleground or arena.'),
('command','Holds help and security information for commands.'),
('conditions','With this table and the new conditions it is possible to create tree like and very complicated combined conditions (like HasAura && (HasItem || HasQuest))\r\n\r\nUsed in:\r\n\r\nDBScript\r\ngossip_menu\r\ngossip_menu_option\r\nnpc_spellclick_spells\r\nspell_area'),
('creature','Contains individual creature spawn data. Spawn of a creature is an instance of the creature object in the world.'),
('creature_addon','The creature_addon and creature_template_addon tables define different things that are applied on creatures when they are loaded. These \"different things\" can be for example to have the creature be mounted, to have it emote something, to have it display an aura effect, etc. Through the use of the fields in this table, many things can be changed about the outward visual appearance of the creature. The creature_template_addon table affects all creatures with that creature template ID while the creature_addon table affects individually spawned creatures (so that two creatures using the same template can look different).\r\n\r\nNOTES: \r\nA creature_addon record will override a creature_template_addon record should they overlap on the same creature.<br />\r\n<br />\r\nThe data for this table is largely incomplete and is mostly just a regurgitation of what the client receives from the server. This article is a WIP as to what all the possible values are.'),
('creature_ai_scripts','This table specifies the actions that a creature script will do. \r\nA basic eventAI script works with and requires only two pieces of information: What to do and When to do it.'),
('creature_ai_summons','This table is used to provide NPC support for an event using action 32 = ACTION_T_SUMMON as one of its Actions'),
('creature_ai_texts','This table holds all the texts used within the eventai (ACID) scripts. This table handles the actual text, display type (say/yell/emote) and corresponding sounds or emote (if any).'),
('creature_battleground','This table contains the description of creatures spawned on battlegrounds.'),
('creature_equip_template','This table contains all equipment mobs can wear.'),
('creature_equip_template_raw','The creature_equip_template_raw table holds information on items that creatures should wear.<br/ >\r\n<br/ >\r\n<b>Note:</b> This table is deprecated. Do not use it, as it will be removed in a future update and is just here to ease transition to the new creature_equip_template table.'),
('creature_involvedrelation','Holds NPC quest ender relations on which NPCs finishes which quests.'),
('creature_item_template','xxxx'),
('creature_linking','This table holds details of how creatures linked to a master creature should act in combat and non-combat situations.'),
('creature_linking_template','This table holds details on how creature templates linked to a master creature template should act in combat and non-combat situations.'),
('creature_loot_template','This table format is used to generate different loot items. Loot templates define only items in the loot.\r\nSee comments about money drop in corpse, pickpocketing and luggage loot in creature_template and item_template.'),
('creature_model_info','This table contains all models of mobs, their gender and other information that are model related. This means that when a creature uses another model, this information will change as well.'),
('creature_movement','This table holds all the information on each creature\'s waypoints. In essence, a waypoint just defines a path that the creature will follow by going from point to point. More specifically, once the creature arrives at a point, it can do different things like cast a spell, do an emote, etc. Usually this table is filled through the .wp command (and its various subcommands) in the world. \r\n\r\nPlease note that for a creature to use waypoints, its MovementType must be 2.'),
('creature_movement_template','This table holds informations on paths for creature_template entries and allows the behaviour to be defined along the movement path.<br />\r\n<br />\r\nTemplate movement is usually applied to creature templates spawned by scripts, or for templates which are unique and have only one spawn.<br />\r\n<br />\r\n<b>Note:</b> Movement attached to a creature template will be applied to all spawns of this template, unless there is a unique movement defined for the creature entry.'),
('creature_onkill_reputation','This table controls the reputation given by creatures when killed by other players.'),
('creature_questrelation','This table holds NPC quest giver relations on which NPCs start which quests.'),
('creature_template','This table contains the description of creatures. Each spawned creature is an instance of a template present in this table, this means every creature MUST be defined in this table.'),
('creature_template_addon','The creature_addon and creature_template_addon tables define different things that are applied on creatures when they are loaded. These \"different things\" can be for example to have the creature be mounted, to have it emote something, to have it display an aura effect, etc. Through the use of the fields in this table, many things can be changed about the outward visual appearance of the creature. The creature_template_addon table affects all creatures with that creature template ID while the creature_addon table affects individually spawned creatures (so that two creatures using the same template can look different).\r\n\r\nNOTES: \r\nA creature_addon record will override a creature_template_addon record should they overlap on the same creature.<br />\r\n<br />\r\nThe data for this table is largely incomplete and is mostly just a regurgitation of what the client receives from the server. This article is a WIP as to what all the possible values are.'),
('creature_template_classlevelstats','This table contains the base values for creatures\' health, mana and armor.'),
('creature_template_spells','This table holds information on the spells to which a Creature (See creature_template) has access.'),
('custom_texts','xxxx'),
('db_script_string','This table holds texts for scripts.'),
('db_version','This table holds the current version of the MaNGOS world database'),
('dbdocsfields','This table is part of the implementation of the \'Mangos Database Documentation\' (MDD) Project.\r\n\r\nAn entry in this table provides a link to the table and field to allow additional notes to describe the field in the Wiki.'),
('dbdocsprogressquests','This table is part of the dbdocs project and is not used by the mangos server. \r\nIt holds details on the completion status of each quest in MaNGOS, as well as any notes about the quest.<br />\r\n<br />\r\n<b>Note:</b> By default the progress value is set to 0% by dbdocs.'),
('dbdocstable','This table is part of the implementation of the \'Mangos Database Documentation\' (MDD) Project.\r\n\r\nAn entry in this table provides a additional notes field to describe the database in the Wiki.'),
('dbscripts_on_creature_death','This table holds scripts activated when a creature dies. (Source: creature)'),
('dbscripts_on_creature_movement','This table holds scripts activated while a npc is moving. (Source: creature)'),
('dbscripts_on_event','This table holds scripts activated whenever an event is activated, be it by an object or as the spell effect SPELL_EFFECT_SEND_EVENT (61)'),
('dbscripts_on_go_template_use','This table holds possible scripts activated by gameobjects of type GAMEOBJECT_TYPE_BUTTON (1). (Source: user)'),
('dbscripts_on_go_use','This table holds possible scripts activated by gameobjects of type GAMEOBJECT_TYPE_BUTTON (1). (Source: user)'),
('dbscripts_on_gossip','This table holds scripts activated on gossip_menu_option – use.'),
('dbscripts_on_quest_end','This table holds scripts activated when a player finishes a quest. (Source: quest taker)'),
('dbscripts_on_quest_start','This table holds scripts activated when a player accepts a quest. (Source: quest giver)'),
('dbscripts_on_spell','This table holds scripts that can be activated by spells with effect SPELL_EFFECT_SCRIPT_EFFECT (77). (Source: caster)'),
('disenchant_loot_template','This table format is used to generate different loot items. Loot templates define only items in the loot.\r\nSee comments about money drop in corpse, pickpocketing and luggage loot in creature_template and item_template.'),
('exploration_basexp','This table controls the XP gained by characters when they explore new zones.'),
('fishing_loot_template','This table format is used to generate different loot items. Loot templates define only items in the loot.\r\nSee comments about money drop in corpse, pickpocketing and luggage loot in creature_template and item_template.'),
('game_event','This table is contains definitions for all game events that are activated or deactivated automatically by the Game Event System in the core.'),
('game_event_creature','Contains all creature instances that have to be spawned/unspawned during defined game events.'),
('game_event_creature_data','Contains all creature instances that need to change display id and/or equipment during defined game events.'),
('game_event_gameobject','Contains all gameobjects instances that participate to any game event.'),
('game_event_mail','This table holds definitions for mails sent out during game events and conditions for when to send the mail.'),
('game_event_quest','This table contains the mapping of a quest in a world event to the condition that it will fulfill. It also contains how much a given quest will add to a condition once that quest is completed by a player.'),
('game_graveyard_zone','This table contains information about which zones are connected to the world’s graveyards.\r\n\r\nThis table set if character die in zone ghost_zone and graveyard with id accept his team (HORDE or ALIANCE or both) and this is nearest graveyard then character’s ghost will be teleported to graveyard id.\r\n\r\nFor a list of all existing graveyard zones and their respective IDs, check out WorldSafeLocs.dbc'),
('game_tele','This table contains a list of teleport locations that can be used with the .tele command in-game. Entries in this table can be added/deleted manually or with the .addtele/.deltele commands.'),
('game_weather','This table holds the percentages for weather changes in various zones. Not all zones can have their weather changed. For any given zone the percentage of all weather types for each season should total, and not exceed 100%.'),
('gameobject','This table holds the individual object data on each spawned game object in the world. This data along with the object’s template data is read and used to instantiate the objects in the world.'),
('gameobject_battleground','This table contains the events of gameobjects which are spawned on battlegrounds.'),
('gameobject_involvedrelation','This table holds game object quest taker relations. The game objects in this table should all be of type QUESTGIVER (2).'),
('gameobject_loot_template','This table format is used to generate different loot items. Loot templates define only items in the loot.\r\nSee comments about money drop in corpse, pickpocketing and luggage loot in creature_template and item_template.'),
('gameobject_questrelation','This table holds game object quest giver relations. The game objects in this table should all be of type QUESTGIVER (2).'),
('gameobject_template','This table contains templates of all the world’s objects'),
('gossip_menu','This table is used for displaying gossip when a player talks to an NPC.'),
('gossip_menu_option','This table holds infos about menu options a gossip NPC can have. \r\nExamples of options: \"Train me!\" or \"I want to unlearn my talents\".'),
('gossip_texts','xxxx'),
('instance_template','This table has all the templates for every instance. When a group enters an instance, a new copy of that instance is made from the values in these fields.'),
('item_enchantment_template','This table holds enchantment chance information for items that should have either a random property or a random suffix attached to them.'),
('item_loot_template','This table format is used to generate different loot items. Loot templates define only items in the loot.\r\nSee comments about money drop in corpse, pickpocketing and luggage loot in creature_template and item_template.'),
('item_required_target','These spell effects require a specific target in either alive or dead state (for creatures).'),
('item_template','Holds information on every item that exists in the game. All items are created from their template stored in this table.'),
('locales_creature','This table is used to provide to localized clients with localized string for creatures.'),
('locales_gameobject','This table is used to provide to localized clients with localized string for gameobjects.'),
('locales_gossip_menu_option','This table is used to provide localized clients with localized string for gossip_menu_option.'),
('locales_item','This table is used to provide to localized clients with localized string for items.'),
('locales_npc_text','This table is used to provide localized clients with localized string for npc_texts.'),
('locales_page_text','This table is used to provide localized clients with localized string for page_texts.'),
('locales_points_of_interest','This table is used to provide to localized clients with localized string for points_of_interest.'),
('locales_quest','This table is used to provide to localized clients with localized string for quest templates.'),
('mail_loot_template','This table format is used to generate different loot items. Loot templates define only items in the loot.\r\nSee comments about money drop in corpse, pickpocketing and luggage loot in creature_template and item_template.'),
('mangos_string','This table holds all of the strings used internally by the server. This table is provided with the main purpose of translation in mind.\r\n\r\nNOTE: The % arguments need to stay in the exact same order as they are provided by default in the English translation.'),
('npc_gossip','THIS TABLE IS OUTDATED. DO NOT USE\r\n<br/> \r\nIt should have been removed around 2009, but for some bad reasons it wasn’t..\r\n\r\nUse table gossip_menu instead.'),
('npc_text','This table contains the texts that are used for gossip. \r\n<br />\r\nMore research needs to be done on this table !\r\n<br />\r\nText is shown in the start of the talk window.'),
('npc_trainer','This table holds all the information on training NPCs. All spells listed in the table are learning spells. This means that the main effect of the spells listed here is to teach spells to the target (which is the player in this case). Any other spell that is not a learning spell will be ignored and an error message will be shown in the console window. Learning spells usually have the same name as their actual spell counterparts and are listed as Uncategorized in Wowhead.'),
('npc_trainer_template','This table holds all the information on training NPCs. All spells listed in the table are learning spells. This means that the main effect of the spells listed here is to teach spells to the target (which is the player in this case). Any other spell that is not a learning spell will be ignored and an error message will be shown in the console window. Learning spells usually have the same name as their actual spell counterparts and are listed as Uncategorized in Wowhead.'),
('npc_vendor','This table holds the vendor data for all NPCs that sell items. The gold price for each item is in its item template as BuyPrice.'),
('npc_vendor_template','This table holds the vendor data for all NPCs that sell items. The gold price for each item is in its item template as BuyPrice.'),
('page_text','This table holds the text for letter items or any items that when moused-over turn the cursor into a magnifying glass and on right-click will open up a window where you can read the contents of the letter.'),
('pet_levelstats','This table holds information on individual pet base stats based on level.'),
('pet_name_generation','This table holds pieces of names (first and last half) that are use for pet name generation.'),
('petcreateinfo_spell','This table holds spells which are assigned to tameable creatures.'),
('pickpocketing_loot_template','This table format is used to generate different loot items. Loot templates define only items in the loot.\r\nSee comments about money drop in corpse, pickpocketing and luggage loot in creature_template and item_template.'),
('player_classlevelstats','This table holds information on the base health and mana of characters when they level up. Each class has different level stats. All of the values in this table signify only the base health and mana of the class at a specific level.'),
('player_levelstats','This table holds information on what stats are gained by characters when they level up. Each race-class combination has different level stats. All of the values in this table signify only the base stats of the race-class combination at a specific level.'),
('player_xp_for_level','Includes information on how much experience needed for next level.'),
('playercreateinfo','This table holds the start positions of each class-race combinations for all newly created characters.'),
('playercreateinfo_action','This table holds information on what default actions a brand new character should start out with. Each race-class combination can have a different default starting setup.'),
('playercreateinfo_item','This table holds information on what items each race-class combination of a new character starts out with.'),
('playercreateinfo_spell','This table holds information on what spells newly created characters should start out with. A character in this table is defined by his/her race and class combination.'),
('points_of_interest','This table holds definitions for points of interests in various locations.'),
('pool_creature','Contains all pool instances that participate to any game event.'),
('pool_creature_template','Contains all pool instances that participate to any game event.'),
('pool_gameobject','Contains all pool instances that participate to any game event.'),
('pool_gameobject_template','Contains all pool instances that participate to any game event.'),
('pool_pool','This is the pool of pools table. You can create a pool with a chance of a range of pools in that pool being activated.'),
('pool_template','Contains all pool instances that participate to any game event.'),
('quest_template','Contains all basic definitions of quests available.'),
('reference_loot_template','This table format is used to generate different loot items. Loot templates define only items in the loot.\r\nSee comments about money drop in corpse, pickpocketing and luggage loot in creature_template and item_template.'),
('reputation_reward_rate','Holds reputation multipliers for specific factions.'),
('reputation_spillover_template','This table holds information for alternative factions which can be awarded reputation, if the faction originally rewarded to is already at the highest reachable level.'),
('reserved_name','This table serves as a simple list of names that players (gmlevel == 0) cannot use when naming their characters.'),
('script_texts','xxxx'),
('script_waypoint','xxxx'),
('scripted_areatrigger','This table links areatriggers to C++ scripts.'),
('scripted_event','This table links events to C++ scripts.'),
('sd2_db_version','This table holds the current version of the Scripts database'),
('skill_fishing_base_level','This table controls the minimum skill level required in fishing to fish in a certain area.'),
('skinning_loot_template','This table format is used to generate different loot items. Loot templates define only items in the loot.\r\nSee comments about money drop in corpse, pickpocketing and luggage loot in creature_template and item_template.'),
('spell_affect','This table holds information on what spells are affected by what spell mods. All spells in this table need to apply an aura that either adds a flat modifier to other spells or adds a percent modifier to other spells. Also, a single row in this table only holds information on a single spell effect that applies the aura. Therefore since a spell may have up to three effects, a maximum of 3 rows per spell is allowed. However, only the spell effects that apply the flat or percent auras will be used.'),
('spell_area','This table holds information on what spells are applied to npcs/players in some areas.'),
('spell_bonus_data','Table used for storing custom damage/healing bonus coefficients.'),
('spell_chain','This table defines spell chains. A spell chain is a series of spells which all share the same name and all do the same thing; however, each has a different rank and as the rank increases, so does the spell damage/heal/etc values. This table also controls what spells are replaced by their more powerful later ranks; however, that is also decided by other factors as well (if mana costs for both spells are the same, etc). All fields in this table except rank are spell IDs from Spell.dbc.'),
('spell_elixir','This table holds elixir information to be used to properly stack the elixirs.'),
('spell_facing','This table holds information indicating whether a caster needs to face the target when casting a spell.'),
('spell_learn_spell','This table holds information on spells that should be learned at the same time a player learns another spell. For example the few spells that are automatically learned when a player first learns a new profession. All fields in this table use spell IDs from Spell.dbc\r\n\r\nNOTE: Spells with spell effects SPELL_EFFECT_LEARN_SPELL should NOT be included in this table.'),
('spell_linked','This table provides data for spell linking system, telling it what spells trigger what, and under what conditions.'),
('spell_pet_auras','This table holds information for connecting pet creatures to spells and auras.'),
('spell_proc_event','This table holds information on what events (or procs) certain spells are activated. All spells in this table must have apply a SPELL_AURA_PROC_TRIGGER_SPELL (42) aura. Any entries in this table will overwrite the existing proc settings in the spell’s DBC entry.'),
('spell_proc_item_enchant','This table holds information for proc chances of spells which enchant weapons.<br/>\r\n<br/>\r\nThis also includes shaman weapon enchants.'),
('spell_script_target','Used to control SpellEffect with ImpliciteTargetA-B == 7|8|38|40|46|52.\r\n\r\nThese spell effects require a specific target in either alive or dead state (for creatures).'),
('spell_target_position','This table holds coordinate information on where the player should be teleported to when a spell with effect SPELL_EFFECT_TELEPORT_UNITS.'),
('spell_threat','This table holds threat values on all spells that should either give or take away threat.'),
('transports','This table contains all type 15 transports (Boats and Zeppelins). \r\n<br />\r\nAll other transport types have their frame time read from TransportAnimation.dbc.'),
('world_template','This table holds informations for connection world continents to scripts from the script library.');
/*!40000 ALTER TABLE `dbdocstable` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed
