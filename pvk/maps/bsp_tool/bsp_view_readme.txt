BSP_view - Version 1.0 (July 9th, 2002)

The BSP_view is a utility for Half-Life BSP map files.  This utility allows
you to view the map information contained in a BSP file in the same way as
you would see the level when running the game.  You can "fly" around in the
level and view all of the locations that you would see if you were playing
the game.  The BSP_view utility supports the BSP map file format used by the
game Half-Life (and many of the MODs available for Half-Life).

The BSP_view utility requires OpenGL to display the BSP file map information.
You will need a graphics card that supports OpenGL to use this utility.
If you don't have a 3D graphics card, you may find that you have a VERY
low frame rate when running the BSP_view utility.  A 3D graphics card with
hardware acceleration for OpenGL is highly recommended when running this
application.

Much of the source code used to create this BSP viewer utility came from
other BSP viewers/engines (mostly for Quake).  I would like to thank the
following people for releasing their source code so that I was able to
create this BSP viewer for Half-Life:

Bart Sekura (hlview) - http://strony.poland.com/bsekura/
Alexey Goloshubin (Poly Engine) - http://www.ii.uib.no/~alexey/poly/index.html
id Software (Quake) - http://www.idsoftware.com/archives/sourcearc.html
Alan Baylis (Q2VIEW) - http://members.net-tech.com.au/alaneb/opengl.html
Jeff Molofee (NeHe OpenGL tutorials) - http://nehe.gamedev.net/


The BSP_view utility uses a configuration file (called BSP_view.cfg) that
tells the utility where various files and directories are located on your
machine.  If you have not installed Half-Life in the default directory of
"C:\SIERRA\Half-Life" then you will need to edit the BSP_view.cfg file
using Notepad or any other text editor.

The BSP_view.cfg file contains comments about what each line is used for
so editing the file should be fairly self-explanatory.  If you need to
edit the BSP_view.cfg file to remove unwanted directories or files, you
can simply delete those lines or comment them out (by using 2 forward
slashes at the beginning of the line, as shown in the BSP_view.cfg file).

Here is a brief description of the options found in the BSP_view.cfg file...

$width - Sets the width of the BSP viewer display window.
$height - Sets the height of the BSP viewer display window.

$bpp - Sets the number of bits per pixel used to display color textures.

$hertz - Sets the refresh rate of the BSP viewer display window.

$enable_fullscreen - When set to 1, it will enable full screen mode.
                     When set to 0, it will run in a window.

$x_pos - Sets the X position of the upper left of the window.
$y_pos - Sets the Y position of the upper left of the window.
         (Setting both x_pos and y_pos to -1 will center the window).

$enable_lighting - When set to 1, lighting in the level will be displayed
          in the same way that it is when the game is being played.  When
          set to 0, lighting will be disabled.  Disabling the lighting can
          cause an increase in the frame rate.

$brightness - Allows you to adjust the brightness of the level when lighting
          has been enabled.  Valid values are from 0.0 to 1.0 (the default
          setting is 0.7).

$gamma_adjust - Allows you to adjust the gamma correction of colors.  The
          allowed values are from 0.5 to 2.0 (the default setting is 1.0,
          which means no adjustment).

$movement_speed - Sets the movement speed (values are from 1x to 5x).

$mouse_sensitivity - Sets the mouse sensitivity (values are from 0.0 to 1.0).

$enable_inverted_mouse - Setting this to 1 will invert the mouse Y axis.
                         Setting this to 0 will use non-inverted mouse Y axis.

$enable_noclip - Allows you to enable or disable "noclipping" while running
          the level viewer.  When noclip is enabled, you will be able to pass
          through walls, floors and ceilings.  When noclip is disabled, you
          will be blocked from passing through walls, floors and ceilings.

$render_special_textures - Setting this to 1 will enable displaying of
          "special" textures used when creating a map.

$special_texture_transparency - This sets the transparency value of the
          "special" textures in the level (if the $render_special_textures
          setting has been enabled.

$show_edges - This setting allows you to show the edges of textures as they
          are rendered.  There are 3 settings, 0 = off, 1 = fast (but less
          visible) and 2 = slow (but more visible).  This feature shows you
          how the BSP compile tools will split surfaces into many different
          faces.

$halflife_dir - Specifies the directory where Half-Life is installed on your
          machine (where hl.exe is located).  The default directory is
          C:\SIERRA\Half-Life.

$bspfile - This option can be used to specify a default BSP file.  This
          allows you to set up a BSP file that you want to view frequently
          without having to select the file everytime you run the viewer.
          If this option is commented out (as it is in the default .cfg
          file), you will be presented with a Windows dialog box to choose
          the BSP file that you wish to view.

$spawnpoint - This specifies what the MOD uses as the spawn point entity
          in a BSP map file.  Different MODs use different entity names
          for the player spawn point.  The .cfg file allows you to specify
          which type of spawn point you want to use when the camera position
          is selected in the viewer.  One of these spawn points will be
          chosen at random and the camera will start at that location.

$models - Allows you to display studio models at the locations where items
          would spawn into the world.  You specify the entity name (usually
          this is "ammo_XXX", "item_XXX", "weapon_XXX", etc. where XXX is
          the name of the item that will spawn.  You can specify the studio
          model that you wish to use when running the BSP view utility.
          The defaults are for standard Half-Life deathmatch (with a few
          miscellaneous ones thrown in from Team Fortess Classic and
          Counter-Strike.


The following keys are used for input when running the BSP_view utility...

ESC         - Used to exit the BSP viewer utility.

mouse       - Used to steer left or right and look up or down.

UP arrow    - Moves you forward (in the direction you are looking).
DOWN arrow  - Moves you backwards (opposite the direction you are looking).
LEFT arrow  - Strafes left.
RIGHT arrow - Strafes right.

'W'         - Allows you to move vertically straight up.
'S'         - Allows you to move vertically straight down.

'C'         - Turns on or off clipping within the level.

'O'         - Allows you to turn on or off switchable textures in the
              level.  Some textures have 2 states (on and off).  This
              allows you to toggle between the ON and OFF state.

'L'         - Turns on or off lighting in the level.  Turning off the
              lighting can increase your frame rate.

'E'         - Toggles the "show_edges" option from 0 to 1 to 2.  Turning
              this on will show the edges of textures as they are rendered.

'T'         - Prints out the texture name of the texture currently under
              the crosshair cursor.

'B'         - Runs the TraceLine function to determine which point in the
              map directly ahead would be hit by a traceline from the
              current position.  This is mostly used to test the TraceLine
              function in the code.  The TraceLine will be displayed as a
              small blue square at the starting point and the ending point
              of the trace with a red line displayed between them.

'N'         - Turns off the traceline (if it's currently displayed).


NOTE: The waypoint viewer is still in it's BETA stages.  It may crash.
It may not display some levels properly.  It doesn't handle transparent
textures properly (some aren't display transparently and sometimes things
that should be transparent are transparent in some cases and aren't in
other cases).  I will continue to improve this BSP viewer utility to try
to make everything display in exactly the same way they would in the game
but it may take a long time before the BSP viewer is able to do this.
