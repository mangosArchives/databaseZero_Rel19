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

-- INSERT INTO `spell_script_target`
--     (`entry`,   `type`,                         `targetEntry`, `inverseEffectMask`)
-- VALUES

-- Source:      http://wowpedia.org/Demetria
-- Description: The Scarlet Oracle, Demetria, will ping her guarding creatures,
--              and revive any dead guard.
-- Creatures:   - Demetria <The Scarlet Oracle>:    http://www.wowhead.com/npc=12339
--              - Scarlet Trooper:                  http://www.wowhead.com/npc=12352
-- Example:
--     (19721,     @SPELL_TARGET_CREATURE_DEAD,    12352,          0),         -- "Resurrect Trooper"
--     (19749,     @SPELL_TARGET_CREATURE_ALIVE,   12352,          0)          -- "Trooper Ping"
--     ;

-- Research: the following spells require a target position.
INSERT INTO `spell_target_position`
    (`id`, `target_map`, `target_position_x`, `target_position_y`, `target_position_z`, `target_orientation`)
VALUES
-- Source:      http://www.wowwiki.com/Warosh_the_Redeemed
--              http://www.wowhead.com/npc=10800/warosh-the-redeemed#screenshots
-- Description: Warosh teleports when Urok is killed.
-- Creatures:   - Warosh                            http://www.wowhead.com/npc=10800
--              - Urok                              http://www.wowhead.com/npc=10584
    (16787, 229, -20.469, -379.330, 48.981, 6.058)  -- 16787: Warosh's Teleport
-- Description: Jaina Proumoore will teleport enemies out of town.
-- Creatures:   - Jaina Proudmoore                  http://www.wowhead.com/npc=4968
-- Spell:       - Teleport                          http://www.wowhead.com/spell=20682
-- Video:       - Youtube                           http://www.youtube.com/watch?v=frxX10Jxbh4              
   ,(20682, 1, -4015.323, -4517.579, 10.24, 5.485)  -- 20682: Teleport
    ;

-- Pyrewoord village, Curse of the Worgen
-- Description: During night's time, the human inhabitants of Pyrewood village will
--              turn into Worgen, hostile to everyone.
-- Source:      - http://wowpedia.org/Pyrewood_Village
-- Source:      - http://wowpedia.org/Moonrage
