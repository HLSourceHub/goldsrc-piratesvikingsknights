BSP_tool - Version 1.0 (July 9th, 2002)

The BSP_tool is a utility for Half-Life BSP map files.  This utility allows
you to print out information about items contained in BSP files used in the
game Half-Life (and many of the MODs available for Half-Life).  The BSP_tool
utility also allows you to automatically generate HPB bot waypoint files
using the information in the BSP file to place the waypoints.

This utility is a MS-DOS command line application that will need to be run
from within an MS-DOS window (Start->Programs->MS-DOS Prompt).  This is NOT
a Windows application (so double clicking on it to run it won't do anything
for you).

The BSP_tool utility takes the following command line arguments:

   -s = print BSP item sizes
   -m = print models
   -v = print vertexes
   -p = print planes
   -l = print leaves
   -n = print nodes
   -t = print texinfo
   -mip = print miptex
   -f = print faces
   -e = print edges
   -ent = print entities
   -wN = run autowaypoint on BSP file
         (where N is the grid size: 64, 72, 80, 100, 120, 150, 200)

Running the BSP_tool utility without any arguments gives you the above list.

You will also need to provide the name of the BSP file that you wish to
use with the BSP_tool.  For example...

C:\BSP_tool> bsp_tool -s stalkyard.bsp

...would give the sizes of items stored in the stalkyard.bsp BSP file.

The BSP_tool utility uses a configuration file (called BSP_tool.cfg) that
tells the utility where various files and directories are located on your
machine.  If you have not installed Half-Life in the default directory of
"C:\SIERRA\Half-Life" then you will need to edit the BSP_tool.cfg file
using Notepad or any other text editor.

The BSP_tool.cfg file contains comments about what each line is used for
so editing the file should be fairly self-explanatory.  If you need to
edit the BSP_tool.cfg file to remove unwanted directories or files, you
can simply delete those lines or comment them out (by using 2 forward
slashes at the beginning of the line, as shown in the BSP_tool.cfg file).

Here's a more detailed description (with examples) of the command line
arguments...

--------------------------------------------------------------------------

-s  - Prints the sizes of items in the BSP file.  This can be used by
      people who are creating maps so that they know if they are about
      to reach a limit on the number of resources in the BSP file.

C:\BSP_tool> bsp_tool -s stalkyard.bsp

Object names  Objects/Maxobjs  Memory / Maxmem  Fullness
------------  ---------------  ---------------  --------
models             25/400         1600/25600    ( 6.3%)
planes           3276/32767      65520/655340   (10.0%)
vertexes         3579/65535      42948/786420   ( 5.5%)
nodes            1406/32767      33744/786408   ( 4.3%)
texinfos          762/8192       30480/327680   ( 9.3%)
faces            2551/65535      51020/1310700  ( 3.9%)
clipnodes        3979/32767      31832/262136   (12.1%)
leaves            923/8192       25844/229376   (11.3%)
marksurfaces     3502/65535       7004/131070   ( 5.3%)
surfedges       12199/512000     48796/2048000  ( 2.4%)
edges            6172/256000     24688/1024000  ( 2.4%)
texdata          [variable]       3612/2097152  ( 0.2%)
lightdata        [variable]     285885/2097152  (13.6%)
visdata          [variable]      26180/2097152  ( 1.2%)
entdata          [variable]      21126/131072   (16.1%)
=== Total BSP file data space used: 700279 bytes ===

--------------------------------------------------------------------------

-m  - Prints information about brush models contained in the BSP file.

C:\BSP_tool> bsp_tool -m crossfire.bsp

Printing 72 Models...

Model index           : 0
Model boundbox min (X): -2816.000000
                   (Y): -3664.000000
                   (Z): -2016.000000
Model boundbox max (X): 2832.000000
                   (Y): 3344.000000
                   (Z): 2064.000000
Model origin       (X): 0.000000
                   (Y): 0.000000
                   (Z): 0.000000
Model headnode[0]     : 0
      headnode[1]     : 0
      headnode[2]     : 2908
      headnode[3]     : 5563
Model Visleafs        : 1366
Model first poly ID   : 0
Model num faces/polys : 3738

Model index           : 1
Model boundbox min (X): -144.000000
                   (Y): -2112.000000
                   (Z): -1728.000000
Model boundbox max (X): -112.000000
                   (Y): -2104.000000
                   (Z): -1680.000000
Model origin       (X): 0.000000
                   (Y): 0.000000
                   (Z): 0.000000
Model headnode[0]     : 2467
      headnode[1]     : 8611
      headnode[2]     : 8617
      headnode[3]     : 8623
Model Visleafs        : 6
Model first poly ID   : 3738
Model num faces/polys : 6

...etc.

--------------------------------------------------------------------------

-v  - Prints information about vertexes of faces in the BSP file.

C:\BSP_tool> bsp_tool -v cs_assault.bsp

Printing 4171 Vertexes...

Vertex index : 0
Vertex   (X) : -1568.000000
         (Y) : 960.000000
         (Z) : 0.000000

Vertex index : 1
Vertex   (X) : -1408.000000
         (Y) : 960.000000
         (Z) : 0.000000

Vertex index : 2
Vertex   (X) : -1408.000000
         (Y) : 960.000000
         (Z) : 1.000000

Vertex index : 3
Vertex   (X) : -1568.000000
         (Y) : 960.000000
         (Z) : 1.000000

...etc.

--------------------------------------------------------------------------

-p  - Prints information about the planes contained in the BSP file.

C:\BSP_tool> bsp_tool -p boot_camp.bsp

Printing 10774 Planes...

Plane index            : 0
Plane normal  (X)      : 0.000000
Plane normal  (Y)      : 1.000000
Plane normal  (Z)      : 0.000000
Plane dist from (0,0,0): 1680.000000
Plane type             : 1

Plane index            : 1
Plane normal  (X)      : 0.000000
Plane normal  (Y)      : -1.000000
Plane normal  (Z)      : 0.000000
Plane dist from (0,0,0): -1680.000000
Plane type             : 1

Plane index            : 2
Plane normal  (X)      : 0.000000
Plane normal  (Y)      : 1.000000
Plane normal  (Z)      : 0.000000
Plane dist from (0,0,0): 1696.000000
Plane type             : 1

...etc.

--------------------------------------------------------------------------

-l  - Prints information about the leaf nodes contained in the BSP file.

C:\BSP_tool> bsp_tool -l bounce.bsp

Printing 1132 Leafs...

Leaf index            : 0
Leaf type             : -2
Leaf vislist          : 0
Leaf boundbox min (X) : 0
                  (Y) : 0
                  (Z) : 0
Leaf boundbox max (X) : 0
                  (Y) : 0
                  (Z) : 0
Leaf idx of facelist  : 0
Leaf number of faces  : 0
Ambient sounds: water : 0
                sky   : 0
                slime : 0
                lava  : 0

Leaf index            : 1
Leaf type             : -6
Leaf vislist          : 0
Leaf boundbox min (X) : 688
                  (Y) : 1808
                  (Z) : -640
Leaf boundbox max (X) : 1088
                  (Y) : 2080
                  (Z) : -608
Leaf idx of facelist  : 0
Leaf number of faces  : 4
Ambient sounds: water : 0
                sky   : 255
                slime : 0
                lava  : 0

...etc.

--------------------------------------------------------------------------

-n  - Prints information about the nodes contained in the BSP file.

C:\BSP_tool> bsp_tool -n .bsp

Printing 1286 Nodes...

Node index           : 0
Plane ID             : 26
Front child node     : 1
Back child node      : 640
Box minimum (X)      : -1512
            (Y)      : -1064
            (Z)      : -40
Box maximum (X)      : 968
            (Y)      : 1064
            (Z)      : 680
First polygon ID     : 0
Number of faces/polys: 32

Node index           : 1
Plane ID             : 3006
Front child node     : 2
Back child node      : 415
Box minimum (X)      : -272
            (Y)      : -1064
            (Z)      : -40
Box maximum (X)      : 968
            (Y)      : 1064
            (Z)      : 680
First polygon ID     : 32
Number of faces/polys: 1

...etc.

--------------------------------------------------------------------------

-t  - Prints texinfo information contained in the BSP file.

C:\BSP_tool> bsp_tool -t datacore.bsp

Printing 1140 Texinfos...

Texinfo index : 0
   vecs[0][0] :  0.77
   vecs[0][1] :  0.00
   vecs[0][2] :  0.00
   vecs[0][3] :  0.00
   vecs[1][0] :  0.00
   vecs[1][1] : -0.71
   vecs[1][2] :  0.00
   vecs[1][3] : -19.00
       miptex : 57
        flags : 0

Texinfo index : 1
   vecs[0][0] :  0.00
   vecs[0][1] :  0.77
   vecs[0][2] :  0.00
   vecs[0][3] :  0.00
   vecs[1][0] :  0.00
   vecs[1][1] :  0.00
   vecs[1][2] : -0.71
   vecs[1][3] : -19.00
       miptex : 57
        flags : 0

...etc.

--------------------------------------------------------------------------

-mip  - Prints miptex (texture) information contained in the BSP file.

C:\BSP_tool> bsp_tool -mip snark_pit.bsp

Printing 59 Miptexes...

Mip index       : 0
Mip offset      : 240
Mip name        : !toxicgrn
Mip width       : 64
Mip height      : 64
Mip offset0     : 0
Mip offset1     : 0
Mip offset2     : 0
Mip offset3     : 0

Mip index       : 1
Mip offset      : 280
Mip name        : +0button4
Mip width       : 32
Mip height      : 48
Mip offset0     : 0
Mip offset1     : 0
Mip offset2     : 0
Mip offset3     : 0

Mip index       : 2
Mip offset      : 320
Mip name        : +0elev_down
Mip width       : 32
Mip height      : 64
Mip offset0     : 0
Mip offset1     : 0
Mip offset2     : 0
Mip offset3     : 0

...etc.

--------------------------------------------------------------------------

-f  - Prints the BSP faces information contained in the BSP file.

C:\BSP_tool> bsp_tool -f subtransit.bsp

Printing 5690 Faces...

Face index         : 0
Face plane Id      : 172
Face plane side    : 0
Face First edge    : 0
Face nr. of edges  : 4
Face Texinfo Id    : 72
Face type of light : 0
Face baselight     : 255
Face light [1]     : 255
Face light [2]     : 255
Face lightmap      : 0

Face index         : 1
Face plane Id      : 172
Face plane side    : 0
Face First edge    : 4
Face nr. of edges  : 4
Face Texinfo Id    : 265
Face type of light : 0
Face baselight     : 255
Face light [1]     : 255
Face light [2]     : 255
Face lightmap      : 243

...etc.

--------------------------------------------------------------------------

-e  - Prints the BSP edges information contained in the BSP file.

C:\BSP_tool> bsp_tool -e undertow.bsp

Printing 7218 Edges...

Edge index            : 0
Edge vertex index 0   : 0
Edge vertex index 1   : 0

Edge index            : 1
Edge vertex index 0   : 0
Edge vertex index 1   : 1

Edge index            : 2
Edge vertex index 0   : 1
Edge vertex index 1   : 2

Edge index            : 3
Edge vertex index 0   : 2
Edge vertex index 1   : 3

Edge index            : 4
Edge vertex index 0   : 3
Edge vertex index 1   : 0

...etc.

--------------------------------------------------------------------------

-ent  - Prints the spawnable entities contained in the BSP file.

C:\BSP_tool> bsp_tool -ent stalkyard.bsp

Printing 211 Entities...

Entity index      : 0
Entity origin (X) : 0.000000
              (Y) : 0.000000
              (Z) : 0.000000
First brush       : 0
Number of brushes : 0
Key/Value         : classname/worldspawn
Key/Value         : message/warez
Key/Value         : worldtype/0
Key/Value         : sounds/0
Key/Value         : light/0
Key/Value         : skyname/night
Key/Value         : MaxRange/4096
Key/Value         : startdark/0
Key/Value         : gametitle/0
Key/Value         : wad/\quiver\valve\decals.wad;\quiver\valve\halflife.wad

Entity index      : 1
Entity origin (X) : 0.000000
              (Y) : 0.000000
              (Z) : 0.000000
First brush       : 0
Number of brushes : 0
Key/Value         : classname/func_door
Key/Value         : angle/90
Key/Value         : spawnflags/288
Key/Value         : speed/25
Key/Value         : sounds/0
Key/Value         : wait/0
Key/Value         : lip/50
Key/Value         : dmg/0
Key/Value         : health/0
Key/Value         : renderfx/0
Key/Value         : rendermode/0
Key/Value         : renderamt/0
Key/Value         : rendercolor/0
Key/Value         : model/*1

Entity index      : 2
Entity origin (X) : 0.000000
              (Y) : 0.000000
              (Z) : 0.000000
First brush       : 0
Number of brushes : 0
Key/Value         : classname/func_door
Key/Value         : angle/90
Key/Value         : spawnflags/256
Key/Value         : speed/300
Key/Value         : wait/1
Key/Value         : dmg/0
Key/Value         : sounds/0
Key/Value         : lip/10
Key/Value         : movesnd/0
Key/Value         : stopsnd/0
Key/Value         : renderfx/0
Key/Value         : rendermode/0
Key/Value         : renderamt/0
Key/Value         : rendercolor/0 0 0
Key/Value         : delay/0
Key/Value         : health/0
Key/Value         : locked_sound/0
Key/Value         : unlocked_sound/0
Key/Value         : locked_sentence/0
Key/Value         : unlocked_sentence/0
Key/Value         : model/*2

Entity index      : 3
Entity origin (X) : 0.000000
              (Y) : 0.000000
              (Z) : 0.000000
First brush       : 0
Number of brushes : 0
Key/Value         : classname/info_player_start
Key/Value         : angle/180
Key/Value         : origin/832 1104 56

...etc.

--------------------------------------------------------------------------

-wN  - Runs the autowaypoint generator on the BSP file to produce a
       waypoint file compatible with the HPB bot.  The optional value
       'N' specifies the grid spacing between waypoints.  The smallest
       allowed value for N is 32.  If N is not specified the default
       grid size is 100 units.

C:\BSP_tool> bsp_tool -w undertow.bsp

Generating waypoints...
Using waypoint grid size of 100 units
Locations visited: 2000
2467 locations were visited
716 waypoints were generated
Calculating waypoint paths...
Percent of paths calculated: 100%
Creating waypoint file undertow.HPB_wpt...
Done!

C:\BSP_tool> bsp_tool -w80 stalkyard.bsp

Generating waypoints...
Using waypoint grid size of 80 units
Locations visited: 2000
2281 locations were visited
710 waypoints were generated
Calculating waypoint paths...
Percent of paths calculated: 100%
Creating waypoint file stalkyard.HPB_wpt...
Done!

The waypoint file created by the automatic waypoint generator should be
copied to the "maps" folder of the MOD that uses that map.  For example,
if the .bsp file was for Half-Life deathmatch, the .HPB_wpt waypoint
file should be copied to the Half-Life\valve\maps folder.  If the .bsp
file was for Team Fortress 1.5 then the .HPB_wpt waypoint file should
be copied to the Half-Life\tfc\maps folder.

NOTE: The automatic waypoint generator can be used for any MOD, but
currently there is nothing in the waypoint generator that support any
MOD other than Half-Life deathmatch.  If you want to generate waypoint
files for other MODs, you will need to hand-edit the waypoint file by
loading the map up in Half-Life and following the instructions in the
HPB_bot_waypoint.txt file (to add support for team specific areas or
to add information about goals/flags/capture points, etc.).

The grid size used for the waypoint generator specifies how far apart
waypoints will be placed in the map.  In Half-Life deathmatch, the player
is 32 x 32 x 72 units, so use that as a judge for waypoint distance.
If you make the grid size larger, you will create fewer waypoints in the
map.  If you make the grid size smaller, you will create more waypoints
in the map.  Having more waypoints in the map is NOT necessarily a good
thing.  The HPB bot is limited to 1024 total waypoints in each map.  If
you make the grid size too small and too many waypoints are generated,
the waypoint generator code will "throw away" any waypoints beyond the
1024 waypoint limit.  Keep this in mind when selecting a waypoint grid
size.

If you make the waypoint grid size too large, some areas of the map
might not get waypointed at all.  The method used by the waypoint
generator code is as follows:

1) Start at a player spawn point inside the map.

2) Move forward, backward, left, right, up and down by "grid size" units.

3) Check if the point from step 2 is still inside the level, if so then
   store this new location as a point visited and, using this new point,
   go back to step 2 to continue flooding outward eventually filling the
   map with points that were visited (each being "grid size" away from
   each other).

For each of the points in step 3, the waypoint generator code will trace
a line straight down until it hits ground.  When it hits ground, it will
put a waypoint at that location unless one had already been put there
previously by a higher or lower "visited" location.

Because the new points in step 2 are "grid size" away from each other,
it is possible that certain narrow passages will not be found if the
grid size is too large (so large that it completely skips over this
area when going from one point to another.  If one of the new points
in step 2 winds up being inside a solid surface (like a wall), the
flood filling at that point will stop (the other points from step 2
will continue expanding).  If the new point from step 2 is not out
in open space inside the level, that point will be discarded and the
flood filling will not continue from there.  It's probably a little
easier to explain if I show you a picture.  Make sure you view this
text using "Courier" font...

Imagine we have this layout (looking from overhead down), where the
'P' represents a spawn point, the 'X' represents a waypoint location,
'Y' represents where the next waypoint would have been placed, and
the '-' and '|' represent walls...

|-------------------------|
|                         |         |----------|
|    P             X      |      Y  |          |
|                         |         |          |
|                         |         |          |
|                         |---------|          |
|                                              |
|                                              |
|                                              |
|                         |---------|          |
|                         |         |          |
|                         |         |          |
|    X             X      |      Y  |          |
|                         |         |----------|
|-------------------------|

You can see that the 'Y' locations are inside a solid surface (a wall)
and a waypoint will not be placed there.  Now let's change the grid
size to half of what it was in the first example...

|-------------------------|         
|                         |         |----------|
|    P      X      X      Y      Y  |   X      |
|                         |         |          |
|                         |         |          |
|                         |---------|          |
|                                              |
|    X      X      X      X      X      X      |
|                                              |
|                         |---------|          |
|                         |         |          |
|                         |         |          |
|    X      X      X      Y      Y  |   X      |
|                         |         |----------|
|-------------------------|

You can see that now the flood fill method is able to "find" it's way into
the smaller room and place waypoints in this room as well as in the larger
one.  The 'Y' locations that hit the walls are considered solid space and
waypoints will not be placed at these locations either.  The 'Y's that are
imbedded in the walls came from the 'X' in the middle of the narrow hallway
in this example (or they could have come from the expansion of the 'X's in
the little room also).

So, as this example shows, sometimes it's better to have waypoints that are
closer together so that narrow hallways or openings can be found.  But, as
I mentioned above, having a smaller grid size will mean more waypoints
which could cause more than 1024 waypoints to be generated.

The algorithms used in this automatic waypoint generator are by no means
complete.  I will be making improvements and changes to the automatic
waypoint generator code so that they will handle these types of situations
much better in the future.  For now, don't expect fantastic results from
the automatic waypoint generator code.  It might save you a little bit of
time, but the results might be worse than not having any waypoints at all
for a level.

ANOTHER IMPORTANT NOTE:  The HPB bot displays waypoints and paths between
waypoints using temporary entities on the client's display.  If you have
waypoints spaced fairly close together (less than 100 units) and if you
attempt to edit these waypoints in the game using the HPB bot waypoint
editing code, you should be aware that this can lead to problems.  Many
of the waypoints or waypoint paths might not get drawn at all.  This is
because these are all sent to the client's display at the same time.  If
too many of these temporary entities are sent to the client's display at
the same time, some of them can get "lost".  In fact, if too many of them
are sent at once, it can cause the game to crash.  Be aware of this fact
when creating and editing the waypoints for the HPB bot.  If you have a
larger grid size when generating the waypoint file, the waypoints will be
spaced further out and there won't be so many of them displayed at the
same time.  This will help to make sure they are all visible and will help
to prevent the client causing the game to crash.
