@echo off
echo Desactivando Windows Update...
sc stop wuauserv
sc config wuauserv start= disabled
echo Windows Update desactivado.
pause
