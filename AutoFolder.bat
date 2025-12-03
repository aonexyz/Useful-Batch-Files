@echo off
set folder=%date:~10,4%-%date:~4,2%-%date:~7,2%
md %folder%
echo Folder %folder% created!
pause
