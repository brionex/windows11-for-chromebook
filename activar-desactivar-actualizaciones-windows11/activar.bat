@echo off
echo Activando Windows Update...
sc config wuauserv start= auto
sc start wuauserv
echo Windows Update activado.
pause
