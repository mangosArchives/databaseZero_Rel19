###### Here developers can create an SQL file named after their GitHub account username. For example "Name.sql".

Why?
-------
We always strive towards being blizzlike when possible. Therefore before we apply the new fixes "_full_db" we want to check if the fixes the developers have made are blizzlike.

To ease the process for the admins you are required to include the sources for your fix in your SQL file. This way the admins don't have to waste time searching for the sources themselves. If you include a reliable source we will consider your fix blizzlike.

When we know that your fix is blizzlike, we will add it to the current updatepack.


How to format the file
-------
I'll show you an example:

`-- Add spells to all PvP Battle Standard creatures (14465, 14466, 14751, 14752)`<br />
`-- Sources: the spell names fit and the spells make the Standards function as they should`<br />
`DELETE FROM creature_template_spells WHERE entry IN (14465, 14466, 14751, 14752);`<br />
`INSERT INTO creature_template_spells (entry, spell1, spell2, spell3, spell4) VALUES`<br />
`(14465, 23033, 0, 0, 0),`<br />
`(14466, 23036, 0, 0, 0),`<br />
`(14751, 23576, 0, 0, 0),`<br />
`(14752, 23574, 0, 0, 0);`<br />

`-- Learning spell Journeyman Blacksmith (2021) from trainers now requires 50 minimum blacksmith skill`<br />
`-- Sources: http://www.wowpedia.org/index.php?title=Blacksmithing&oldid=343488`<br />
`UPDATE npc_trainer SET reqskill = 164 WHERE spell = 2021;`

The first comment is the name of the commit (excluding revision number, that is [zXXXX]).
