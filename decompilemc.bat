@echo off
echo *********************************
echo * MINECRAFT DECOMPILER BY TYLER *
echo *  USING OFFICIAL SOURCE MAPS   *
echo *********************************
echo  
echo TIHS ONLY WORKS WITH VANILLA JARS.
echo First argument: version jar
echo Second argument: Version client mappings
echo Jar: %1
echo Map file: %2
PAUSE
echo Creating directory...
mkdir minecraft_src
mkdir minecraft_src\files
echo Copying jar...
copy %1 minecraft_src\files\minecraft.jar
echo Downloading map file...
curl -o minecraft_src\files\map.txt %2
echo Generated enigma files. Starting enigma...
mkdir minecraft_src\source
cd minecraft_src
cd files
echo Preparing to decompile...
echo Starting remapper...
echo Remapping - this could take a while
MC-Remapper --mapping %2 --input minecraft_src\files\minecraft.jar --output deobf.jar --thread 8 --fixlocalvar=delete
echo Done - output created
echo Processing...
echo Starting decompiler
echo Decompiling - this could take a while...
jd-cli --outputDir minecraft_src\source deobf.jar
echo Done
echo Opening output folder
explorer.exe minecraft_src\source