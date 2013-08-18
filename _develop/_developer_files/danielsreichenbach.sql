-- danielsreichenbach

-- Research: the following spells require a target of either a game object or
-- a creature.
-- 5249,"Ice Lock"
-- 7082,"Barrel Explode"
-- 7277,"Harvest Swarm"
-- 9372,"Bear Enters Auberdine"
-- 9439,"Bear Captured in Trap"
-- 10451,"Implosion"
-- 10805,"Shackle Shatter"
-- 10834,"Shackle Shatter"
-- 10835,"Shackle Shatter"
-- 10836,"Shackle Shatter"
-- 16068,"Encage"
-- 16069,"Nefarius Attack 001"
-- 16070,"Nefarius Attack 000"
-- 16074,"Burning Felguard Spawn"
-- 16364,"Rend Calls For Buff"
-- 16365,"Rend Calls For Buff"
-- 16404,"Banishment of Scale"
-- 16426,"Alien kill Sire"
-- 16743,"Finkle Questgiver On"
-- 17272,"Summon"
-- 17372,"Egan's Blaster Effect"
-- 18969,"Taelan Death"
-- 18971,"Message to Grand Inquisitor"
-- 18973,"Tirion Message to Isillien"
-- 18997,"Tirion Message to Isillien 002"
-- 19033,"Blighthound Call"
-- 19515,"Enrage Trigger"
-- 19721,"Resurrect Trooper"
-- 19749,"Trooper Ping"
-- 20001,"Mercutio Horse Dummy DND"
-- 20482,"Firesworn Eruption Trigger"
-- 21090,"Champion"
-- 21391,"Syndicate Tracker (MURP) DND"
-- 21556,"Control Shredder"
-- 21566,"Control Shredder"
-- 21795,"Frostwolf Muzzle Effect DND"
-- 21867,"Alterac Ram Collar Effect DND"
-- 21934,"Gizlock's Dummy Despawn"
-- 22205,"Trigger Blue Beam"
-- 22987,"Warlock Doomguard Tap"
-- 23016,"Lash of Submission"
-- 23024,"Fireball"
-- 23031,"Cancel Bob Possession"
-- 23415,"Improved Blessing of Protection"
-- 23845,"Attract Jubjub"
-- 24217,"Quest - Heart of Hakkar, Ritual Cast Visual"
-- 24343,"Call Chained Spirit"
-- 25186,"Super Crystal"
-- 25473,"Attack Order"
-- 26075,"Set Ouro Health"
-- 26404,"Despawn Tent Port"
-- 26479,"Digestive Acid"
-- 26879,"Remove Amorous"
-- 27583,"Dirk's Rememberin' Poison Effect DND"
-- 27894,"Kill Summoner, who will Summon Boss"
-- 28032,"Zap Crystal"
-- 28054,"Buttress Trap"
-- 28056,"Zap Crystal Corpse"
-- 28078,"Buttress Channel"
-- 28083,"BRD Kill Credit Effect"
-- 28087,"Break Channel"
-- 28116,"Despawn Jarien's Corpse"
-- 28117,"Despawn Sothos's Corpse"
-- 28138,"Feugen Initialize"
-- 28238,"Zombie Chow Search"
-- 28250,"Kill Summoner, Summon Boss"
-- 28281,"Communique, Camp-to-Relay"
-- 28326,"Communique, Relay-to-Camp"
-- 28338,"Magnetic Pull"
-- 28339,"Magnetic Pull"
-- 28353,"Raise Dead"
-- 28365,"Communique, Relay-to-Proxy"
-- 28366,"Communique, Proxy-to-Relay"
-- 28367,"Communique, Proxy-to-Necropolis"
-- 28617,"Web Wrap"
-- 28781,"Spectral Side Assault"
-- 28961,"Summon Corpse Scarabs (10)"
-- 28992,"Summon Corpse Scarabs Delay"
-- 29108,"Kill Web Wrap"
-- 29172,"Ribbon Pole Channel"
-- 29280,"Web Wrap"
-- 29281,"Web Wrap"
-- 29282,"Web Wrap"
-- 29283,"Web Wrap"
-- 29285,"Web Wrap"
-- 29287,"Web Wrap"
-- 29336,"Despawn Buffet"
-- 29531,"Ribbon Pole Channel"
-- 29705,"Test Ribbon Pole Channel"
-- 29726,"Test Ribbon Pole Channel"
-- 29727,"Test Ribbon Pole Channel"
-- 29945,"Bleed Spice, Missile (DND)"
-- 30676,"Bleed Spice, Missile cluster (DND)"
-- 32061,"(TXT) ToWoW - Tower Kill Credit (DND)"

-- Provide variables for spell script targets
SET @SPELL_TARGET_GAME_OBJECT                   = 0;
SET @SPELL_TARGET_CREATURE_ALIVE                = 1;
SET @SPELL_TARGET_CREATURE_DEAD                 = 2;

-- Source:      http://wowpedia.org/Demetria
-- Description: The Scarlet Oracle, Demetria, will ping her guarding creatures,
--              and revive any dead guard.
-- Creatures:   - Demetria <The Scarlet Oracle>:    http://www.wowhead.com/npc=12339
--              - Scarlet Trooper:                  http://www.wowhead.com/npc=12352
INSERT INTO `spell_script_target`
    (`entry`,   `type`,                         `targetEntry`, `inverseEffectMask`)
VALUES
    (19721,     @SPELL_TARGET_CREATURE_DEAD,    12352,          0),         -- "Resurrect Trooper"
    (19749,     @SPELL_TARGET_CREATURE_ALIVE,   12352,          0)          -- "Trooper Ping"
    ;

-- Correct script and AI names
UPDATE `creature_template` SET `AIName` = NULL, `ScriptName` = NULL WHERE `entry` IN (1, 2, 6491);
UPDATE `creature_template` SET `ScriptName` = 'npc_guardian' WHERE `entry` IN (5764);
UPDATE `creature_template` SET `subname` = NULL WHERE `subname` = '';
UPDATE `creature_template` SET `AIName` = NULL WHERE `AIName` = '';
UPDATE `creature_template` SET `ScriptName` = NULL WHERE `ScriptName` = '';

-- Remove loot from waypoints, spawnpoints
UPDATE `creature_template` SET `lootid` = 0 WHERE `entry` IN (1,2);
-- Set proper gossip_menu_id for spirit healer
UPDATE `creature_template` SET `gossip_menu_id` = 83 WHERE `entry` IN (6491);

-- Fix a few template names
UPDATE `creature_template` SET `name` = 'Waypoint' WHERE `entry` IN (1);
UPDATE `creature_template` SET `name` = 'Spawnpoint' WHERE `entry` IN (2);
UPDATE `creature_template` SET `subname` = 'GM Visual' WHERE `entry` IN (1,2);
UPDATE `creature_template` SET `name` = 'Rend on Drake', `subname` = 'Transformation Visual' WHERE `entry` = 10459;
UPDATE `creature_template` SET `name` = 'Kirtonos the Herald', `subname` = 'Spell Visual' WHERE `entry` = 10579;
UPDATE `creature_template` SET `name` = 'Wisp', `subname` = 'Ghost Visual' WHERE `entry` = 12861;
UPDATE `creature_template` SET `name` = 'High Priest Venoxis', `subname` = 'Transformation Visual' WHERE `entry` = 14877;
UPDATE `creature_template` SET `name` = 'High Priestess Jeklik', `subname` = 'Transformation Visual' WHERE `entry` = 14941;
UPDATE `creature_template` SET `name` = 'High Priest Thekal', `subname` = 'Transformation Visual' WHERE `entry` = 14966;
UPDATE `creature_template` SET `name` = 'High Priestess Mar''li', `subname` = 'Transformation Visual' WHERE `entry` = 14967;
UPDATE `creature_template` SET `name` = 'High Priestess Arlokk', `subname` = 'Transformation Visual' WHERE `entry` = 14968;
UPDATE `creature_template` SET `name` = 'Primal Blessing', `subname` = 'Transformation Visual' WHERE `entry` = 15109;
UPDATE `creature_template` SET `name` = 'Buru the Gorger', `subname` = 'Transformation Visual' WHERE `entry` = 15507;
UPDATE `creature_template` SET `name` = 'Mouth Tentacle', `subname` = 'Mount Visual' WHERE `entry` = 15778;
UPDATE `creature_template` SET `name` = "C'Thun", `subname` = 'Transformation Visual' WHERE `entry` = 15809;
UPDATE `creature_template` SET `name` = 'Mor Grayhoof', `subname` = 'Transformation Visual' WHERE `entry` = 16083;
UPDATE `creature_template` SET `name` = 'Arei', `subname` = 'Transformation Visual' WHERE `entry` = 9599;
UPDATE `creature_template` SET `name` = 'Eranikus', `subname` = 'Transformation Visual' WHERE `entry` = 15660;
UPDATE `creature_template` SET `name` = 'High Inquisitor Fairbanks', `subname` = 'Transformation Visual' WHERE `entry` = 16439;
UPDATE `creature_template` SET `name` = 'Highlord Mograine', `subname` = 'Transformation Visual' WHERE `entry` = 16440;
UPDATE `creature_template` SET `name` = 'Scourge Invasion Minion', `subname` = 'Ghost/Ghoul spawner' WHERE `entry` = 16306;
UPDATE `creature_template` SET `name` = 'Scourge Invasion Minion', `subname` = 'Ghost/Skeleton spawner' WHERE `entry` = 16336;
UPDATE `creature_template` SET `name` = 'Scourge Invasion Minion', `subname` = 'Ghoul/Skeleton spawner' WHERE `entry` = 16338;
UPDATE `creature_template` SET `name` = 'Scourge Invasion Minion', `subname` = 'finder' WHERE `entry` = 16356;
UPDATE `creature_template` SET `name` = 'Skeletal Fiend', `subname` = 'Enraged Form' WHERE `entry` = 2454;
UPDATE `creature_template` SET `name` = 'Bear Form', `subname` = 'Night Elf Druid' WHERE `entry` = 4253;
UPDATE `creature_template` SET `name` = 'Bear Form', `subname` = 'Tauren Druid' WHERE `entry` = 4261;
UPDATE `creature_template` SET `name` = 'Aquatic Form', `subname` = 'Night Elf Druid' WHERE `entry` = 4408;
UPDATE `creature_template` SET `name` = 'Aquatic Form', `subname` = 'Tauren Druid' WHERE `entry` = 4410;
UPDATE `creature_template` SET `name` = 'Cat Form', `subname` = 'Night Elf Druid' WHERE `entry` = 6571;
UPDATE `creature_template` SET `name` = 'Cat Form', `subname` = 'Tauren Druid' WHERE `entry` = 6572;
UPDATE `creature_template` SET `name` = 'Travel Form', `subname` = 'Druid' WHERE `entry` = 6573;
UPDATE `creature_template` SET `name` = 'Curse of the Eye', `subname` = 'Male' WHERE `entry` = 7503;
UPDATE `creature_template` SET `name` = 'Curse of the Eye', `subname` = 'Female' WHERE `entry` = 7504;
UPDATE `creature_template` SET `name` = 'Orb of Deception', `subname` = 'Orc Male' WHERE `entry` = 10783;
UPDATE `creature_template` SET `name` = 'Orb of Deception', `subname` = 'Orc Female' WHERE `entry` = 10784;
UPDATE `creature_template` SET `name` = 'Orb of Deception', `subname` = 'Tauren Male' WHERE `entry` = 10785;
UPDATE `creature_template` SET `name` = 'Orb of Deception', `subname` = 'Tauren Female' WHERE `entry` = 10786;
UPDATE `creature_template` SET `name` = 'Orb of Deception', `subname` = 'Troll Male' WHERE `entry` = 10787;
UPDATE `creature_template` SET `name` = 'Orb of Deception', `subname` = 'Troll Female' WHERE `entry` = 10788;
UPDATE `creature_template` SET `name` = 'Orb of Deception', `subname` = 'Undead Male' WHERE `entry` = 10789;
UPDATE `creature_template` SET `name` = 'Orb of Deception', `subname` = 'Undead Female' WHERE `entry` = 10790;
UPDATE `creature_template` SET `name` = 'Orb of Deception', `subname` = 'Dwarf Male' WHERE `entry` = 10791;
UPDATE `creature_template` SET `name` = 'Orb of Deception', `subname` = 'Dwarf Female' WHERE `entry` = 10792;
UPDATE `creature_template` SET `name` = 'Orb of Deception', `subname` = 'Gnome Male' WHERE `entry` = 10793;
UPDATE `creature_template` SET `name` = 'Orb of Deception', `subname` = 'Gnome Female' WHERE `entry` = 10794;
UPDATE `creature_template` SET `name` = 'Orb of Deception', `subname` = 'Human Male' WHERE `entry` = 10795;
UPDATE `creature_template` SET `name` = 'Orb of Deception', `subname` = 'Human Female' WHERE `entry` = 10796;
UPDATE `creature_template` SET `name` = 'Orb of Deception', `subname` = 'Night Elf Male' WHERE `entry` = 10797;
UPDATE `creature_template` SET `name` = 'Orb of Deception', `subname` = '(Night Elf Female)' WHERE `entry` = 10798;
UPDATE `creature_template` SET `name` = 'Monster Generator (Blackwing)', `subname` = NULL WHERE `entry` = 12434;
UPDATE `creature_template` SET `name` = 'World Invisible Trigger', `subname` = 'DO NOT DELETE' WHERE `entry` = 12999;
UPDATE `creature_template` SET `name` = 'Warlock Mount Ritual Mob Type 3 (Infernal)', `subname` = 'DO NOT DELETE' WHERE `entry` = 14501;
UPDATE `creature_template` SET `name` = 'Moonkin', `subname` = 'Night Elf Druid' WHERE `entry` = 15313;
UPDATE `creature_template` SET `name` = 'Moonkin', `subname` = 'Tauren Druid' WHERE `entry` = 15314;
UPDATE `creature_template` SET `name` = 'OLDWorld Trigger', `subname` = 'DO NOT DELETE' WHERE `entry` = 15384;

-- Remove wrong model IDs
UPDATE `creature_template` SET `modelid_2` = 0 WHERE `entry` = 17794;
UPDATE `creature_template` SET `modelid_2` = 0 WHERE `entry` = 16995;
UPDATE `creature_template` SET `modelid_2` = 0 WHERE `entry` = 17795;
