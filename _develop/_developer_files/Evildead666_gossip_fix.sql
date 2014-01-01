
-- How to apply these updates see Evildead666_Big_Backport.sql

-- These fix the gossip menus after the backports deleting duplicates and sorting otion numbers

--Text changes
UPDATE `gossip_menu_option` SET `option_text` = "Guild Master" WHERE `option_text` = "The Guild Master.";
UPDATE `gossip_menu_option` SET `option_text` = "The Inn" WHERE `option_text` = "The inn";
UPDATE `gossip_menu_option` SET `option_text` = "Auction House" WHERE `option_text` = "The auction house";
UPDATE `gossip_menu_option` SET `option_text` = "Guild Master" WHERE `option_text` = "The guild master";
UPDATE `gossip_menu_option` SET `option_text` = "Battlemaster" WHERE `option_text` = "The battlemaster";
UPDATE `gossip_menu_option` SET `option_text` = "Wind Rider Master" WHERE `option_text` = "The wind rider master";
UPDATE `gossip_menu_option` SET `option_text` = "Stable Master" WHERE `option_text` = "The stable master";
UPDATE `gossip_menu_option` SET `option_text` = "Weapon Master" WHERE `option_text` = "The weapon master";
UPDATE `gossip_menu_option` SET `option_text` = "Class Trainer" WHERE `option_text` = "A class trainer";
UPDATE `gossip_menu_option` SET `option_text` = "Profession Trainer" WHERE `option_text` = "A profession trainer";
UPDATE `gossip_menu_option` SET `option_text` = "Mailbox" WHERE `option_text` = "The mailbox";
UPDATE `gossip_menu_option` SET `option_text` = "The Bank" WHERE `option_text` = "The bank";
UPDATE `gossip_menu_option` SET `option_text` = "Officers' Lounge" WHERE `option_text` = "The officers' lounge";
UPDATE `gossip_menu_option` SET `option_text` = "Bat Handler" WHERE `option_text` = "The bat handler";
UPDATE `gossip_menu_option` SET `option_text` = "Zeppelin Master" WHERE `option_text` = "The zeppelin master";
UPDATE `gossip_menu_option` SET `option_text` = "Skinning" WHERE `menu_id` = 3558 AND `action_menu_id` = 3556;

--Stormwind

--Main
DELETE FROM `gossip_menu_option` WHERE `menu_id` = 435 AND `id` = 3 AND `option_text` = "Deeprun Tram";
DELETE FROM `gossip_menu_option` WHERE `menu_id` = 435 AND `id` = 7 AND `option_text` = "Weapons Trainer";
UPDATE `gossip_menu_option` SET `id` = 3 WHERE `menu_id` = 435 AND `action_poi_id` = 22;
UPDATE `gossip_menu_option` SET `id` = 4 WHERE `menu_id` = 435 AND `action_poi_id` = 23;
UPDATE `gossip_menu_option` SET `id` = 5 WHERE `menu_id` = 435 AND `action_poi_id` = 24;
UPDATE `gossip_menu_option` SET `id` = 6 WHERE `menu_id` = 435 AND `action_poi_id` = 26;
UPDATE `gossip_menu_option` SET `id` = 7 WHERE `menu_id` = 435 AND `action_poi_id` = 27;
UPDATE `gossip_menu_option` SET `id` = 8 WHERE `menu_id` = 435 AND `action_poi_id` = 28;
UPDATE `gossip_menu_option` SET `id` = 9 WHERE `menu_id` = 435 AND `action_poi_id` = 29;
UPDATE `gossip_menu_option` SET `id` = 10 WHERE `menu_id` = 435 AND `action_menu_id` = 401;
UPDATE `gossip_menu_option` SET `id` = 11 WHERE `menu_id` = 435 AND `action_menu_id` = 421;


--Profession
DELETE FROM `gossip_menu_option` WHERE `menu_id` = 421 AND `id` = 8 AND `option_text` = "Leatherworking";
UPDATE `gossip_menu_option` SET `id` = 8 WHERE `menu_id` = 751 AND `action_menu_id` = 428;
UPDATE `gossip_menu_option` SET `id` = 9 WHERE `menu_id` = 751 AND `action_menu_id` = 430;
UPDATE `gossip_menu_option` SET `id` = 10 WHERE `menu_id` = 751 AND `action_menu_id` = 431;
UPDATE `gossip_menu_option` SET `id` = 11 WHERE `menu_id` = 751 AND `action_menu_id` = 432;

--Ironforge

--Main
DELETE FROM `gossip_menu_option` WHERE `menu_id` = 2121 AND `id` = 11 AND `option_text` = "Class Trainer";
UPDATE `gossip_menu_option` SET `id` = 11 WHERE `menu_id` = 2121 AND `action_menu_id` = 2168;

--Proffesion
DELETE FROM `gossip_menu_option` WHERE `menu_id` = 2168 AND `id` = 9 AND `option_text` = "Leatherworking";
UPDATE `gossip_menu_option` SET `id` = 9 WHERE `menu_id` = 2168 AND `action_menu_id` = 2172;
UPDATE `gossip_menu_option` SET `id` = 10 WHERE `menu_id` = 2168 AND `action_menu_id` = 2173;
UPDATE `gossip_menu_option` SET `id` = 11 WHERE `menu_id` = 2168 AND `action_menu_id` = 2175;


--Darnassus
--Class
DELETE FROM `gossip_menu_option` WHERE `menu_id` = 2343 AND `id` = 4 AND `option_text` = "Priest";
DELETE FROM `gossip_menu_option` WHERE `menu_id` = 2343 AND `id` = 5 AND `option_text` = "Rogue";
UPDATE `gossip_menu_option` SET `id` = 4 WHERE `menu_id` = 2343 AND `action_menu_id` = 2342;

--Proffesion
DELETE FROM `gossip_menu_option` WHERE `menu_id` = 2351 AND `id` = 7 AND `option_text` = "Leatherworking";
UPDATE `gossip_menu_option` SET `id` = 7 WHERE `menu_id` = 2351 AND `action_menu_id` = 2356;
UPDATE `gossip_menu_option` SET `id` = 8 WHERE `menu_id` = 2351 AND `action_menu_id` = 2358;

--Thunder Bluff
--Main
UPDATE `gossip_menu_option` SET `id` = 11 WHERE `menu_id` = 721 AND `action_menu_id` = 2463;
UPDATE `gossip_menu_option` SET `id` = 12 WHERE `menu_id` = 721 AND `action_menu_id` = 743;
UPDATE `gossip_menu_option` SET `id` = 13 WHERE `menu_id` = 721 AND `action_menu_id` = 2461;
UPDATE `gossip_menu_option` SET `id` = 14 WHERE `menu_id` = 721 AND `action_menu_id` = 742;
UPDATE `gossip_menu_option` SET `id` = 15 WHERE `menu_id` = 721 AND `action_menu_id` = 744;
UPDATE `gossip_menu_option` SET `id` = 16 WHERE `menu_id` = 721 AND `action_menu_id` = 4904;
UPDATE `gossip_menu_option` SET `id` = 17 WHERE `menu_id` = 721 AND `action_menu_id` = 3725;

UPDATE `gossip_menu_option` SET `id` = 0 WHERE `menu_id` = 721 AND `action_menu_id` = 2463;
UPDATE `gossip_menu_option` SET `id` = 1 WHERE `menu_id` = 721 AND `action_menu_id` = 743;
UPDATE `gossip_menu_option` SET `id` = 2 WHERE `menu_id` = 721 AND `action_menu_id` = 2461;
UPDATE `gossip_menu_option` SET `id` = 3 WHERE `menu_id` = 721 AND `action_menu_id` = 742;
UPDATE `gossip_menu_option` SET `id` = 5 WHERE `menu_id` = 721 AND `action_menu_id` = 4904;
UPDATE `gossip_menu_option` SET `id` = 6 WHERE `menu_id` = 721 AND `action_menu_id` = 3725;
UPDATE `gossip_menu_option` SET `id` = 7 WHERE `menu_id` = 721 AND `action_menu_id` = 744;

DELETE FROM `gossip_menu_option` WHERE `menu_id` = 751 AND `id` = 7 AND `action_poi_id` = 0;
UPDATE `gossip_menu_option` SET `id` = 7 WHERE `menu_id` = 751 AND `action_menu_id` = 787;
UPDATE `gossip_menu_option` SET `id` = 8 WHERE `menu_id` = 751 AND `action_menu_id` = 788;
UPDATE `gossip_menu_option` SET `id` = 9 WHERE `menu_id` = 751 AND `action_menu_id` = 791;
UPDATE `gossip_menu_option` SET `id` = 10 WHERE `menu_id` = 751 AND `action_menu_id` = 789;


--Orgrimmar
--Main
DELETE FROM `gossip_menu_option` WHERE `menu_id` = 1951 AND `id` = 13;
DELETE FROM `gossip_menu_option` WHERE `menu_id` = 1951 AND `id` = 7 AND `option_text` = "Weapon Master";

UPDATE `gossip_menu_option` SET `id` = 13 WHERE `menu_id` = 1951 AND `action_menu_id` = 1901;
UPDATE `gossip_menu_option` SET `id` = 14 WHERE `menu_id` = 1951 AND `action_menu_id` = 1902;
UPDATE `gossip_menu_option` SET `id` = 15 WHERE `menu_id` = 1951 AND `action_menu_id` = 1903;
UPDATE `gossip_menu_option` SET `id` = 16 WHERE `menu_id` = 1951 AND `action_menu_id` = 1904;
UPDATE `gossip_menu_option` SET `id` = 17 WHERE `menu_id` = 1951 AND `action_menu_id` = 5882;
UPDATE `gossip_menu_option` SET `id` = 18 WHERE `menu_id` = 1951 AND `action_menu_id` = 8224;


UPDATE `gossip_menu_option` SET `id` = 0 WHERE `menu_id` = 1951 AND `action_menu_id` = 2403;
UPDATE `gossip_menu_option` SET `id` = 1 WHERE `menu_id` = 1951 AND `action_menu_id` = 1901;
UPDATE `gossip_menu_option` SET `id` = 2 WHERE `menu_id` = 1951 AND `action_menu_id` = 1904;
UPDATE `gossip_menu_option` SET `id` = 3 WHERE `menu_id` = 1951 AND `action_menu_id` = 1903;
UPDATE `gossip_menu_option` SET `id` = 5 WHERE `menu_id` = 1951 AND `action_menu_id` = 4902;
UPDATE `gossip_menu_option` SET `id` = 6 WHERE `menu_id` = 1951 AND `action_menu_id` = 3724;
UPDATE `gossip_menu_option` SET `id` = 7 WHERE `menu_id` = 1951 AND `action_menu_id` = 1902;
UPDATE `gossip_menu_option` SET `id` = 8 WHERE `menu_id` = 1951 AND `action_menu_id` = 5882;
UPDATE `gossip_menu_option` SET `id` = 9 WHERE `menu_id` = 1951 AND `action_menu_id` = 8224;
UPDATE `gossip_menu_option` SET `id` = 10 WHERE `menu_id` = 1951 AND `action_menu_id` = 1949;

--Profession
DELETE FROM `gossip_menu_option` WHERE `menu_id` = 1942 AND `id` = 9 AND `option_text` = "Leatherworking";
UPDATE `gossip_menu_option` SET `id` = 9 WHERE `menu_id` = 1942 AND `option_text` = "Mining";
UPDATE `gossip_menu_option` SET `id` = 10 WHERE `menu_id` = 1942 AND `option_text` = "Skinning";
UPDATE `gossip_menu_option` SET `id` = 11 WHERE `menu_id` = 1942 AND `option_text` = "Tailoring";

--Undercity
--main
DELETE FROM `gossip_menu_option` WHERE `menu_id` = 2849 AND `id` = 12;
DELETE FROM `gossip_menu_option` WHERE `menu_id` = 2849 AND `id` = 13;


UPDATE `gossip_menu_option` SET `id` = 13 WHERE `menu_id` = 2849 AND `action_menu_id` = 2822;
UPDATE `gossip_menu_option` SET `id` = 14 WHERE `menu_id` = 2849 AND `action_menu_id` = 2823;
UPDATE `gossip_menu_option` SET `id` = 15 WHERE `menu_id` = 2849 AND `action_menu_id` = 2824;
UPDATE `gossip_menu_option` SET `id` = 16 WHERE `menu_id` = 2849 AND `action_menu_id` = 2825;
UPDATE `gossip_menu_option` SET `id` = 17 WHERE `menu_id` = 2849 AND `action_menu_id` = 2826;
UPDATE `gossip_menu_option` SET `id` = 18 WHERE `menu_id` = 2849 AND `action_menu_id` = 2827;
UPDATE `gossip_menu_option` SET `id` = 19 WHERE `menu_id` = 2849 AND `action_menu_id` = 2828;
UPDATE `gossip_menu_option` SET `id` = 20 WHERE `menu_id` = 2849 AND `action_menu_id` = 3726;
UPDATE `gossip_menu_option` SET `id` = 21 WHERE `menu_id` = 2849 AND `action_menu_id` = 4906;

UPDATE `gossip_menu_option` SET `id` = 1 WHERE `menu_id` = 2849 AND `action_menu_id` = 2822;
UPDATE `gossip_menu_option` SET `id` = 2 WHERE `menu_id` = 2849 AND `action_menu_id` = 2823;
UPDATE `gossip_menu_option` SET `id` = 4 WHERE `menu_id` = 2849 AND `action_menu_id` = 2824;
UPDATE `gossip_menu_option` SET `id` = 3 WHERE `menu_id` = 2849 AND `action_menu_id` = 2825;
UPDATE `gossip_menu_option` SET `id` = 5 WHERE `menu_id` = 2849 AND `action_menu_id` = 2826;
UPDATE `gossip_menu_option` SET `id` = 0 WHERE `menu_id` = 2849 AND `action_menu_id` = 2827;
UPDATE `gossip_menu_option` SET `id` = 8 WHERE `menu_id` = 2849 AND `action_menu_id` = 2828;
UPDATE `gossip_menu_option` SET `id` = 7 WHERE `menu_id` = 2849 AND `action_menu_id` = 3726;
UPDATE `gossip_menu_option` SET `id` = 6 WHERE `menu_id` = 2849 AND `action_menu_id` = 4906;

--professions
DELETE FROM `gossip_menu_option` WHERE `menu_id` = 2847 AND `id` = 9 AND `option_text` = "Leatherworking";
UPDATE `gossip_menu_option` SET `id` = 9 WHERE `menu_id` = 2847 AND `option_text` = "Mining";
UPDATE `gossip_menu_option` SET `id` = 10 WHERE `menu_id` = 2847 AND `option_text` = "Skinning";
UPDATE `gossip_menu_option` SET `id` = 11 WHERE `menu_id` = 2847 AND `option_text` = "Tailoring";


--Razor Hill
--professions
DELETE FROM `gossip_menu_option` WHERE `menu_id` = 3284 AND `id` = 9 AND `option_text` = "Leatherworking";
UPDATE `gossip_menu_option` SET `id` = 9 WHERE `menu_id` = 3284 AND `option_text` = "Mining";
UPDATE `gossip_menu_option` SET `id` = 10 WHERE `menu_id` = 3284 AND `option_text` = "Skinning";
UPDATE `gossip_menu_option` SET `id` = 11 WHERE `menu_id` = 3284 AND `option_text` = "Tailoring";

--Tauren Braves
--professions
DELETE FROM `gossip_menu_option` WHERE `menu_id` = 3330 AND `id` = 8 AND `option_text` = "Leatherworking";
UPDATE `gossip_menu_option` SET `id` = 8 WHERE `menu_id` = 3330 AND `option_text` = "Mining";
UPDATE `gossip_menu_option` SET `id` = 9 WHERE `menu_id` = 3330 AND `option_text` = "Skinning";
UPDATE `gossip_menu_option` SET `id` = 10 WHERE `menu_id` = 3330 AND `option_text` = "Tailoring";

--Deathguards
--Class
DELETE FROM `gossip_menu_option` WHERE `menu_id` = 3354 AND `id` = 1 AND `option_text` = "Paladin";
UPDATE `gossip_menu_option` SET `id` = 1 WHERE `menu_id` = 3354 AND `option_text` = "Priest";
UPDATE `gossip_menu_option` SET `id` = 2 WHERE `menu_id` = 3354 AND `option_text` = "Rogue";
UPDATE `gossip_menu_option` SET `id` = 3 WHERE `menu_id` = 3354 AND `option_text` = "Warlock";
UPDATE `gossip_menu_option` SET `id` = 4 WHERE `menu_id` = 3354 AND `option_text` = "Warrior";

--professions
DELETE FROM `gossip_menu_option` WHERE `menu_id` = 3355 AND `id` = 9 AND `option_text` = "Leatherworking";
UPDATE `gossip_menu_option` SET `id` = 9 WHERE `menu_id` = 3355 AND `option_text` = "Mining";
UPDATE `gossip_menu_option` SET `id` = 10 WHERE `menu_id` = 3355 AND `option_text` = "Skinning";
UPDATE `gossip_menu_option` SET `id` = 11 WHERE `menu_id` = 3355 AND `option_text` = "Tailoring";

--Mountaneers
--professions
DELETE FROM `gossip_menu_option` WHERE `menu_id` = 3558 AND `id` = 9 AND `option_text` = "Leatherworking";
UPDATE `gossip_menu_option` SET `id` = 9 WHERE `menu_id` = 3558 AND `option_text` = "Mining";
UPDATE `gossip_menu_option` SET `id` = 10 WHERE `menu_id` = 3558 AND `option_text` = "Skinning";
UPDATE `gossip_menu_option` SET `id` = 11 WHERE `menu_id` = 3558 AND `option_text` = "Tailoring";

--Darnassus
--main
UPDATE `gossip_menu_option` SET `id` = 11 WHERE `menu_id` = 3580 AND `action_menu_id` = 3562;
UPDATE `gossip_menu_option` SET `id` = 12 WHERE `menu_id` = 3580 AND `action_menu_id` = 3563;

UPDATE `gossip_menu_option` SET `id` = 3 WHERE `menu_id` = 3580 AND `action_menu_id` = 3562;
UPDATE `gossip_menu_option` SET `id` = 2 WHERE `menu_id` = 3580 AND `action_menu_id` = 3563;

--profession
DELETE FROM `gossip_menu_option` WHERE `menu_id` = 3572 AND `id` = 7 AND `option_text` = "Leatherworking";
UPDATE `gossip_menu_option` SET `id` = 7 WHERE `menu_id` = 3572 AND `option_text` = "Skinning";
UPDATE `gossip_menu_option` SET `id` = 8 WHERE `menu_id` = 3572 AND `option_text` = "Tailoring";


--Unused or Duplicates
DELETE FROM `gossip_menu_option` WHERE `menu_id` = 2352;
DELETE FROM `gossip_menu` WHERE `entry` = 2352;





