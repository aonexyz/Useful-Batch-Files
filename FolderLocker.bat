@echo off
title Folder Locker
if EXIST Private goto UNLOCK
if NOT EXIST Private goto MDLOCKER
:CONFIRM
echo Are you sure to lock this folder? (Y/N)
set/p "cho=>"
if %cho%==Y goto LOCK
if %cho%==N goto END
:LOCK
ren Private "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}"
attrib +h +s "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}"
echo Folder locked!
goto End
:UNLOCK
echo Enter password to unlock:
set/p "pass=>"
if NOT %pass%==1234 goto FAIL
attrib -h -s "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}"
ren "Control Panel.{21EC2020-3AEA-1069-A2DD-08002B30309D}" Private
echo Folder unlocked!
goto End
:FAIL
echo Wrong password!
goto End
:MDLOCKER
md Private
echo Private folder created!
goto End
:End
pause
