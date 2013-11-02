mangos-zero-database ![Project status](http://getmangos.com/assets/img/repository-status-maintained.png)
====================
A content database for [mangos-zero][10], and *World of Warcraft Client Patch
1.12* - [_Drums of War_][50]. It is compatible with client 1.12.1 (build 5875),
and 1.12.2 (build 6005).

License
-------
**mangos-zero-database** is released for free under the terms of the
Creative Commons Attribution-NonCommercial-ShareAlike license. The file
`LICENSE.md` **must** be a part of any redistributable packages made from
this software.  No licenses should be removed from this software if you are
making redistributable copies.

How to Install
---------------
Short instruction:

1. enter _tools directory

2. run: make_full_db.bat (if you are doing it under Windows) or run: /bin/sh make_full_db.sh (if you are running
   it under *nix/Linux)

3. apply created file to mangos database, eg.: mysql -u root -p mangos < full_db.sql

That's all!

[10]: https://github.com/mangoszero/server "mangos zero"
[12]: https://github.com/mangoszero/database "content database"

[50]: http://blizzard.com/games/wow/ "World of Warcraft"
[51]: http://www.wowpedia.org/Patch_1.12.0 "WoW 1.12.0 - Drums of War"
