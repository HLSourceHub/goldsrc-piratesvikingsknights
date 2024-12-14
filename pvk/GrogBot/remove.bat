@echo off
cd..
if not exist liblist.gro goto error
del liblist.gam
rename liblist.gro liblist.gam
echo GrogBot successfully uninstalled, you can now delete the GrogBot folder.
pause
goto end
:error
echo ERROR! liblist.gro does not exist! Couldn't uninstall GrogBot.
pause
:end
