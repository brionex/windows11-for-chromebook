@echo off
set DRIVERFOLDER=C:\Drivers\BayTrail
set INF=%DRIVERFOLDER%\Graphics\igdlh64.inf

if not exist "%INF%" (
    echo ERROR: No se encontro el archivo .inf en %INF%
    pause
    exit /b 1
)

echo Instalando driver Intel HD Bay Trail desde INF...
pnputil /add-driver "%INF%" /install /subdirs /reboot

echo.
echo SE INSTALO (o se intento) el driver.
echo Reinicia tu sistema si no se reinicio automaticamente.
pause
