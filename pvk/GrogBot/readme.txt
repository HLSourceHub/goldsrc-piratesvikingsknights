-------------------------------------------------------
GrogBot - A bot for Pirates, Vikings and Knights HL Mod
Version 1.1
By Akz (akz@bots-united.com)
http://grogbot.bots-united.com
-------------------------------------------------------

1. Installation
2. Using
3. Commands
4. Waypointing
5. Credits


---------------
1. Installation
---------------

WITHOUT METAMOD

Extract the archive to your PVK folder. For example:
C:\Steam\SteamApps\blah@yadayada.com\half-life\pvk

Go to the newly created GrogBot folder (it's located in pvk\GrogBot)
and run install.bat

WITH METAMOD

I'm assuming you have already installed MetaMod, if you haven't, get it 
from: 
http://www.metamod.org/

Extract the archive to your PVK folder. For example:
C:\Steam\SteamApps\blah@yadayada.com\half-life\pvk

Go to your MetaMod folder (it's usually in pvk\addons\metamod), open the
file called plugins.ini and add a new line to the end of the file:
win32 GrogBot/grogbot_mm.dll

--------
2. Using
--------

There is a menu for adding/removing bots, which is bound to your H key
by default. The binding can be changed/removed in the grogbot.cfg file.

However, there's a console command too. The syntax is the following:

addbot [team] [class] [name] [skill]

All of the parameters are optional.

-----------
3. Commands
-----------

NOTE: A lot of commands are missing from this list, but the major
ones should be there.

melee_mode [on/off]
Melee weapons only.

grogbot_menu
Brings up the GrogBot menu.

grogbot_commandmenu
Brings up the menu used for commanding the bots.

addbot [team] [class] [name] [skill]
Adds a bot. Parameters are self-explanatory.

min_skill [1-100]
Changes the minimum bot skill.

max_skill [1-100]
Changes the maximum bot skill.

observer [on/off]
Makes all of the bots ignore you. May be useful when editing waypoints.

botdontshoot [on/off]
Disables combat completely. May also be useful when editing waypoints.

bot_forceteamplay [1/0]
If set to 1, bots will try to stick with their teammates.

--------------
4. Waypointing
--------------

These are the commands used for waypointing. Check out my site
for a complete waypointing tutorial.

waypoint on
waypoint off
waypoint add
waypoint delete

waypoint save
waypoint load

waypoint wait
waypoint wait [minimum time] [maximum time]


waypoint radius
waypoint radius [new radius]

waypoint addflag

autowaypoint on
autowaypoint off

pathwaypoint on
pathwaypoint off

pathwaypoint enable
pathwaypoint disable

pathwaypoint start
pathwaypoint end

pathwaypoint rem_start
pathwaypoint rem_end

----------
5. Credits
----------

Jeffrey "botman" Broome:
For the great HPB bot. Without him, many of the now existing bots
wouldn't exist, including GrogBot.

AzShadow:
For names, chat sentences and testing.

The PVK Team:
For making the one and only mod, which I've played for years without
getting bored.
           