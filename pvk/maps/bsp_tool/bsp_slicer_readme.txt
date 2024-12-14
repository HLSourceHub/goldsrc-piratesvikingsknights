BSP_slicer - Version 1.0 (July 9th, 2002)

The BSP_slicer is a utility for Half-Life BSP map files.  This utility allows
you to generate bitmap files (.BMP) from horizontal "slices" of the BSP data.
You can create 2D "floor plan" layout maps to help you learn your way around
a level or to plan offensive or defensive strategies with friends or clan
members.

This utility is a MS-DOS command line application that will need to be run
from within an MS-DOS window (Start->Programs->MS-DOS Prompt).  This is NOT
a Windows application (so double clicking on it to run it won't do anything
for you).

Running the BSP_slicer utility without any arguments give you the list of
arguments and a brief description of what they do...

--------------------------------------------------------------------------
C:\BSP_tool> bsp_slicer

usage: BSP_slicer -bN -eN -tN -sN -c -m bspfile

where: -bN = begin slicing at Z coordinate N.
where: -eN = end slicing at Z coordinate N.
where: -tN = use slice thickness of N units.
where: -sN = use scale factor of N.
where: -c = create a single contour map.
where: -m = create multiple contour maps.

For example: BSP_slicer -b-756 -e1076 -t64 -s8 blastzone.bsp
would slice the map "blastzone.bsp" from -756 up to 1076 on the Z axis
moving by 64 units between slices and would create a 1/8th scale bitmap file.

The defaults for -b and -e is the lower limit and upper limit of the map.
The default for -t is 64 units.
The default for -s will depend on the size of the map.  The resultant bitmap
file will be no larger than 1024 by 768
--------------------------------------------------------------------------

The BSP_slicer utility uses a configuration file (called BSP_slicer.cfg) that
tells the utility where various files and directories are located on your
machine.  If you have not installed Half-Life in the default directory of
"C:\SIERRA\Half-Life" then you will need to edit the BSP_slicer.cfg file
using Notepad or any other text editor.

The BSP_slicer.cfg file contains comments about what each line is used for
so editing the file should be fairly self-explanatory.  If you need to
edit the BSP_slicer.cfg file to remove unwanted directories or files, you
can simply delete those lines or comment them out (by using 2 forward
slashes at the beginning of the line, as shown in the BSP_slicer.cfg file).

Here's a more detailed description (with examples) of the command line
arguments...

--------------------------------------------------------------------------

 -bN = begin slicing at Z coordinate N.

       This allows you to specify a specific starting location on the Z
       axis.  Slices will be taken from that point upwards, so you should
       always specify the smallest Z value in the -b option.  Note that for
       negative numbers you SHOULD NOT include a space between the -b and
       the number (i.e. -b-768) and you SHOULD NOT include a space between
       the -b and a positive number either (i.e. -b970).

 -eN = end slicing at Z coordinate N.

       This allows you to specify a specific ending location on the Z axis.
       Slices will be taken from the starting point up to the ending point.
       You should always specify the largest Z value in the -e option.  Note
       that for negative numbers you SHOULD NOT include a space between the
       -e and the number (i.e. -e-16) and you SHOULD NOT include a space
       between the -e and a positive number either (i.e. -e620).

 -tN = use slice thickness of N units.

       This allows you to specify the "thickness" of slices.  The default
       thickness is 64 units (a little smaller than the height of the player).
       By specifying a smaller thickness you will create more slices through
       the BSP data and will generate more detail (and possibly also generate
       more bitmap files).  By specifiying a larger thickness, you will move
       along the Z axis in larger chunks and will generate less data (and
       possibly create fewer bitmap files).  There is no space between the
       -t option and the slick thickness value (i.e. -t16).

 -sN = use scale factor of N.

       You can override the automatic scaling of the bitmap image by using
       the -s option and providing the scale that you wish to use.  By default
       the BSP slicer utility will force the bitmap image to a size less than
       1024x768.  If you want to create a larger bitmap image, you should
       specify a SMALLER scale factor (since the scale is really 1/N).  If you
       want to create a smaller bitmap image, you should specify a LARGER
       scale factor.  There is no space between the -s option and the scale
       factor value (i.e. -s4).

 -c = create a single contour map.

       This option will allow you to create a single bitmap image will all
       of the slices "merged" together into one image.  This is similar to
       the way that geographical contour maps are drawn (with lines indicating
       the relative height of something compared to other areas nearby).

 -m = create multiple contour maps.

       This option will create multiple contour maps.  Each image will have
       all of the data from the previous images including the new slice data.
       This option allows you to progressively add more data as the BSP slice
       moves higher up the Z axis.

The default output (if you don't specify -c or -m) is to create a bitmap image
for each slice.  For example, if you ran the BSP slicer utility on with the
default options on the BSP file cs_assault.bsp, here is what you would see...

--------------------------------------------------------------------------
C:\BSP_tool> bsp_slicer cs_assault.bsp
slicing the world from   -32 to  1184 using slices  64 units thick.
19 bitmap files will be created at 1/6 scale.
creating cs_assault1.bmp...
creating cs_assault2.bmp...
creating cs_assault3.bmp...
creating cs_assault4.bmp...
creating cs_assault5.bmp...
creating cs_assault6.bmp...
creating cs_assault7.bmp...
creating cs_assault8.bmp...
creating cs_assault9.bmp...
creating cs_assault10.bmp...
creating cs_assault11.bmp...
creating cs_assault12.bmp...
creating cs_assault13.bmp...
creating cs_assault14.bmp...
creating cs_assault15.bmp...
creating cs_assault16.bmp...
creating cs_assault17.bmp...
creating cs_assault18.bmp...
creating cs_assault19.bmp...
--------------------------------------------------------------------------

It tells you the starting and ending values of the Z axis (-32 and 1184
respectively).  It tells you the default slice thickness (64 units).
It tells you how many bitmap files will be generated (19 files) and it
tells you that it is rescaling the image to 1/6 of the real world size.
As each bitmap files is created, it is written to disk using the BSP
file name appended with the slice number (from 1 to 19).  Each of these
bitmap images will have the data for ONLY that slice.  If you wanted to
combine this data together into one file, you could specify the -c
option like so...

--------------------------------------------------------------------------
C:\BSP_tool> bsp_slicer -c cs_assault.bsp
slicing the world from   -32 to  1184 using slices  64 units thick.
1 bitmap file will be created at 1/6 scale.
creating cs_assault.bmp...
--------------------------------------------------------------------------

Notice this time only one bitmap file was created (called cs_assault.bmp).

Sometimes, when areas in the map overlaps each other, it is more useful
to specify the start and end of the Z axis for the slices.  For example,
de_vertigo has 2 levels (one on top of the other).  We can split these
two levels into 2 separate bitmap files by using the following command
line options...

First, we run the utility to see what the ranges of the map is and to
see what the combined image would look like...

--------------------------------------------------------------------------
C:\BSP_tool> bsp_slicer -c de_vertigo.bsp
slicing the world from  -768 to   672 using slices  64 units thick.
1 bitmap file will be created at 1/4 scale.
creating de_vertigo.bmp...
--------------------------------------------------------------------------

When we look at this image, it's hard to tell what areas belong to what
level.  With some trial and error (and using the BSP_view utility to
fly around the level to find out which Z axis coordinates will work best)
we can split the map into two separate bitmap images using the following
command line options...

--------------------------------------------------------------------------
C:BSP_tool> bsp_slicer -c -t8 -b-768 -e-60 de_vertigo.bsp
slicing the world from  -768 to   -60 using slices   8 units thick.
1 bitmap file will be created at 1/4 scale.
creating de_vertigo.bmp...

C:\BSP_tool> rename de_vertigo.bmp de_vertigo1.bmp

C:\BSP_tool> bsp_slicer -c -t8 -b-30 -e180 de_vertigo.bsp
slicing the world from   -30 to   180 using slices   8 units thick.
1 bitmap file will be created at 1/4 scale.
creating de_vertigo.bmp...

C:\BSP_tool> rename de_vertigo.bmp de_vertigo2.bmp
--------------------------------------------------------------------------

Notice that I changed the start and end Z coordinates on the first run to
-768 (the bottom of the level) and -60 (near the top of the bottom level).
I also changed the slice thickness to 8 to get a little more data on each
slice.

Then I renamed the .bmp file (so that I don't overwrite it in step 2)!!!

Next, I run the BSP slicer tool again using a start and end Z coordinate
of -30 and 180 (respectively).  I keep the same slice thickness as in the
first example (8 units) and I rename the bitmap file when it's done.
