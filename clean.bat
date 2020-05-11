@echo off
echo *********************************
echo * MINECRAFT DECOMPILER BY TYLER *
echo *  USING OFFICIAL SOURCE MAPS   *
echo *********************************
echo  
echo ARE YOU SURE YOU WANT TO CLEAN ALL DECOMPILED FILES?
pause
echo Please wait...
echo Deleting minecraft.jar
del minecraft_src\files\minecraft.jar
echo Deleting map file...
del minecraft_src\files\map.txt
echo Deleting decompiled source...
del minecraft_src\source\*
echo Deleting minecraft_src folder...
rmdir /q /s minecraft_src
echo Done
echo CLEAN COMPLETE