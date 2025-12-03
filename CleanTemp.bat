@echo off
del /q/f/s %TEMP%\*
rd /s /q %TEMP%
echo Temporary files deleted!
pause
