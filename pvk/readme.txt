Pirates, Vikings, and Knights Half-Life Modification (MOD)
beta 2.32
05/19/2018

************************************************************************
			    Table of Contents
************************************************************************

I. What's New
I. Introduction
II. Requirements
III. Installation
IIII. Basic Playing
IIIII. Console Commands
IIIIII. Server Variables
IIIIIII. Additional Information
IIIIIIII. Technical Support
IIIIIIIII. Credits
IIIIIIIIII. Contact Info
IIIIIIIIIII. Suggestions/Comments
IIIIIIIIIIII. License Agreement
IIIIIIIIIIIII. Closing Arguments


************************************************************************
			       What's New
************************************************************************

PVK Beta 2.32:
*Now latest version of AMX Mod X (AMXX) replace old AMX mod
*Updated Metamod to latest version
*Add Custom Map Pack
*GrogBot updated to version 1.1 (by Akz)
*Add archived version of grogbot.bots-united.com site with all pages and etc.
*Add Pete Beckius map strategy guides
*Add amxx noclip ang godmode plugin


PVK Beta 2.31:
*Akz's Bugfixer 1.3 (Fixes Chest dupe/crash bug, Skin hacking, Alt Walking, and more)
*Grogbot 1.0 (Bots for PVK)
*Metamod and AMX Pre-Installed
*Steam Compatable, control menu fixed
*14 Fan made custom maps
*PVK Strategy guide (Located in main pvk mod folder)
*New Background and custom steam gui colors

--You might have to add: "-dll addons\metamod\dlls\metamod.dll" to your dedicated server's game properties (for pvk) for metamod to get metamod working on your dedicated server!

--Akz's Bugfixer uses metamod, if metamod is removed the bug fixes will be ineffective, Grogbot also relies on metamod! 

--If you want to use bots, refer to the readme in the GrogBot folder and look to Step 2 on how to use bots! (Type addbot in the console for a random bot)

PVK Beta 2.1:
* really fixed the installer and patches this time
* shield is now a toggle and you can attack
* spear charge/big axe warnings fixed
* speeds tweaked
* cow launching added to pvk_tourney
* new textures and beautification in pvk_lighthouse
* increased lighting in connection areas and fixed hint brush texture
  bug in pvk_hellawaits
* new "brawling mode" added with mp_brawl
* some weapon damages tweaked for balancing
* territory mode is working now

PVK Beta 2.0a:
* fixed the shortcuts on the installer
* titles.txt included this time
* made the gameplay modes actually work this time (oops)

PVK Beta 2.0:
Whooo doggy, we've got a lot of new features!

Features:
Pillage game mode
Functional shields
Thrown javelins and throwing axes can be picked up
Full use of animations, including reloading, secondary attack, 
  and Berserk player animations
Full-body animations
Player weapon body groups
Player IDs
Team-specific map entities (designed for Pillage maps)
Hammer has 3 hit combo
Cutlass lunge attack
Bigaxe secondary attack
Spear charging
Peg leg footstep sounds
Reduced backwards speeds
Reduced jump height for Pirate Captain and Heavy Knight

Tweaks:
Chests now picked up with 'USE' key
Keg damage and radius reduced
Crossbow damage increased
Dual axes damage reduced
Running animations
Faster throwing axe use
Parrot behavior/animation/callback
Disabled jumping and/or crouching during reloads
Territory status notification

Bug fixes:
Parrot spamming
Booty scoreboard bug
Booty chests respawn in correct positions
Throwing axe kill sprite
Javelin weapon animations
Bigaxe view model
Viking sword player model
Man at arms weapon models




************************************************************************
			      Introduction
************************************************************************

PVK kicks ass.

Additionally, PVK is a modification to Valve Software's Half-Life,
featuring three-way action between very unique teams, each from wide-
ranging historical time periods, and composed of very unique classes.
Here in the PVK universe, fun is emphasized over realism: there's plenty
of fun to spread around!  Both team cooperation and individual merit may
play large roles at different times.  Similarly, calculated genocide and
reckless kamikaze attacks will coexist!  You'll find all the sadistic,
maniacal gore or absurdist existential humor anyone could want!  So no
matter who you are, you will be able to find your "bag" here, baby.

We hope you find all the aspects of the game enjoyable.  We have devoted
a great deal of effort and free time to developing this project and
cramming into it all of the entertaining stuff we have to offer.  Have
fun, stay mirthful, and enjoy.  Share this joy with your family, friends,
and loved ones (oddly in this cliche, "loved ones" is separate from
"family" and "friends"...), and in no time, cries of "WTF!" will echo
from all corners of the globe (with our current understanding of the
world, a completely nonsensical cliche).

Let the games begin.


************************************************************************
				Requirements
************************************************************************

Half-Life v. 1.1.0.7.
An internet or LAN connection.
Thorough familiarity with Shakespeare's "Much Ado About Nothing"


************************************************************************
				Installation
************************************************************************

Run the Beta 2.1 setup file.

Install PVK into a folder named "pvk" inside your Half-Life directory,
e.g. if Half-Life's directory is "C:\Sierra\Half-Life\", install PVK
into "C:\Sierra\Half-Life\pvk\".


************************************************************************
				   Playing
************************************************************************

As with any addictive substance, caution and responsibility must be
observed while playing PVK.  Do not play PVK while operating heavy
machinery.  Pregnant mothers should not play PVK for risk of damaging
the unborn child.  Parental discretion is advised.

There are a several ways to get PVK started.

To join an internet game:
1) Launch Half-Life. (make sure you are connected to the internet)
2) Choose "Multiplayer"->"Internet Game".
3) Either try to find a game of PVK on the list that appears, or filter
   for games of PVK using the "Filter" menu.
4) Join a server running PVK.

Joining a LAN game is similar, substituting "Lan Game" for "Internet
Game".

To serve a game on a local-area network (LAN):
1) Launch Half-Life.
2) Click on "Custom Game" and select "Pirates, Vikings and Knights" from
   the list of games.  If PVK does not appear, make sure you have
   installed PVK correctly.  Press OK.  You should see the PVK splash
   screen.
3) Choose "Multiplayer"->"LAN Game"->"Create Game".
4) Choose the desired settings, and press OK.


Once you have started a game, you will be prompted to join a team.  The
three teams in Pirates, Vikings, and Knights are, surprisingly, "Pirates",
"Vikings", and "Knights".  Each team is further subdivided into classes.
Each team and each class has its own strengths and weaknesses.  Experiment
to find which ones are most suited for any given situation.

The default key to change teams is "N".  The default key to change classes
is "M".  In either case, if you are alive, a death will be added to your
score.  There is no other penalty for changing either teams or classes.

The weapons in PVK have different "physics" from any other game.
Experiment with button presses, and find out how they work.  If you're
dumbfounded by a particular weapon, either ask your fellow players, or
consult the on-line manual on the PVK website.

There are several types of game modes in PVK.  Each particular map will
be different, but there are a few basic types to look out for:
- Team deathmatch
- Booty
- Booty Tag
- Territory
- Pillage


************************************************************************
			    Console Commands
************************************************************************

PVK adds a couple new console commands.
teamchange - prompts you to change team.
classchange - prompts you to change class.
settitle - use to set a title such as settitle "Badass mofo" so that
 other players can see your title when you play.
migmadance - prompts Migma to dance.

************************************************************************
			    Server Variables
************************************************************************

These server variables can change the way you play PVK.
mp_friendlyfire - When anything other than 0, this allows you to do
 damage to your teammates, and if you kill them you get minus one frag
mp_teamplay - when this is 0, there is no longer teamplay in PVK and you
 can kill your teammates without a penalty.  This also has the effect of
 turning on friendly fire, since no one is your friend.  You loser...
mp_roundtime - the amount of time in a round in the round based maps.
 For best use modify this value in the mapname.cfg file, so you can set
 the time specific for that map.
mp_brawl - it is recommended that this be set BEFORE the map starts
 (place mp_brawl = 1 in [lan]server.cfg or a mapfile.cfg) otherwise some
 players might still have weapons when everyone else is stuck with their
 knuckles.  That being said, this enables brawling mode where players use
 their fists to beat the crap out of each other.  Try combos, and moving
 in different directions and speeds as you attack!

There are also some server variables that can limit the number of
  players on a given team:
mp_pirates - number of allowed pirates
mp_vikings - number of allowed vikings
mp_knights - number of allowed knights

IT IS VERY IMPORTANT THAT YOU SET UP THESE VARIABLES!!!  IT CAN TOTALLY
SCREW UP THE GAMEPLAY IF YOU DON'T!!!

************************************************************************
			 Additional Information
************************************************************************

So I'm not good enough for you, is that it?!

Additional information can be found in the PVK FAQ, the PVK on-line
manual, or the PVK Forum on the PVK website.

Apparently there is a problem with Half-life that if you try and enable
high quality models, you'll lose the ability to see submodels and body
groups (the sword won't show on the heavy knight's back).  To get around
this, just keep cl_himodels at 0 in config.cfg.


************************************************************************
			    Technical Support
************************************************************************

Technical support questions may be directed at biteme@gotohell.com.
That, or visit the Technical Support section on the PVK Forum.


************************************************************************
				  Credits
************************************************************************

Programmers
  Matt Bishop (lead)
  Kris Hauser

3D Artists
  Kris Hauser

2D Artists
  Garrett Moore (lead)
  Kris Hauser

Texture Artists
  Garrett Moore
  Pete Beckius

Sounds Effects
  Bearman

Mappers
  Garrett Moore (lead)
  Pete Beckius
  Gaz
  Theif

Installation
  Matt Bishop

Linux Server Port (eventually)
  tYpe11eRRoR

Public Relations
  StrangeBrew

Special Thanks To
  Stomped
  Planet Half-Life
  Timmy
  Corpo
  The loyal PVK fans
  Total-Reload
  The Forge

Acknowledgements
  Jaguar
  GOD
  Hangman of Xanadu

PvtSnafu would like to extend credit to these individuals,
for without there contributions his maps would not be the same:

  Mighty Pete - elemental environment map
  Eville Dick - numerous textures
  Capn' Booty - !lava2 tex
  [WTF?]Mr-Gibs - elemental textures
  Crista Forest, aka "CD Warrior" - wall2_burnt1 tex
  unDuLe - walloskul, boneground2 textures


************************************************************************
				Contact Info
************************************************************************
PVKII Team: 

CrazyTalk
crazytalk@comcast.net

HaVoK
havok-g2@comcast.net

jRocket
jr@jrporter.com

Akz
akz@bots-united.com


PVK Team:

Matt Bishop
monkeyboy@pvkmod.net

Kris Hauser
hauser@pvkmod.net

Garrett Moore
neck@pvkmod.net

Pete Beckius
pvtsnafu@hotmail.com

Gaz
gaz@razorblade.co.uk

Bearman
ajar4@worldnet.att.net

tYpe11eRRoR
tYpe11eRRor@delisoft.net

StrangeBrew
strangebrew@pvkmod.net


************************************************************************
			   Suggestions/Comments
************************************************************************

When cooking wild rice, add enough cooking oil to coat the bottom of the
pot before steaming.

I am sick and tired of Canadians.


************************************************************************
			     License Agreement
************************************************************************

By using this software, Pirates, Vikings, and Knights (PVK), you agree
be bound by the following terms:
-No portion of PVK may be distributed without consent of the PVK
 Team, unless it is distributed in its totality in original (unmodified)
 form.
-No extracted or modified media from PVK may be distributed without
 their respective owner's consent.  This includes images, models,
 textures, sounds, and maps.
-Neither the PVK Team nor any member of the PVK Team are responsible or 
 liable for any computer malfunction users may experience while operating
 this software.
-Neither the PVK Team nor any member of the PVK Team are responsible or 
 liable for any bodily disfunction (epileptic seizures, fits of insanity,
 dry mouth, oily discharge) users may experience while operating this
 software.
-Neither the PVK Team nor any member of the PVK Team are responsible or 
 liable for a sudden urge to renounce all material possessions and become
 a salty sea-dog, plundering the high seas in search of booty.
-Failure to comply with these terms may result in legal action.  We have
 big friends in big places (technically, fat guys in Greenland).


************************************************************************
			     Closing Statements
************************************************************************

Yo ho, yo ho, un grand pirato soy.
