Unofficial metamod version. 1.14.2.1 
------------------------------------
Fixed one 'bug' with SVC_DIRECTOR (what ever that is but it was sort of missing).

Supports: 

  Basic Half-life and PVK 2.1
  This is only windows version because i dont have linux installed and i'm
  quite frankly lacking the expirience :(.


Version history
---------------
1.14.1 . removed support for numerous mods (conflicting entities)
1.14.1.1 loads pvk dll!
1.14.1.2 knights,vikings are working...pirates not :(
1.14.1.3 crashes!..dont know why yet.
1.14.1.5 (skipped some versions). Ahha...found more entities!
1.14.1.6 cleared linkgame.cpp; started from scratch again..
1.14.1.7 cleared gamesupport.cpp; smaller dll, less hassle.
1.14.1.9 Booty maps are crashing within 5 seconds, why??..ARR
1.14.2   Found lost entities, added them to linkgame.cpp and its working! no more crashes!
1.14.2.1 Fixed a missing SVC_DIRECTOR .

-
Updated Tests: 
 
 Following plugins were tested and found working in LAN/Internet dedicated server:
 
 playername_mm.dll 
 sc-prot_mm.dll  
 clanmod_mm.dll

 Every other metamod plugins *should* work without any problems!. There is a minor bug though
 if you close your hlds by pressing the "X" in the corner, it crashes ;)). That is odd, i'm
 not sure if its metamod or clanmod that is crashing, or why is it crashing just type 'quit' 
 instead and it closes normally.