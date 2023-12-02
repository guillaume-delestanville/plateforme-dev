@echo off
PATH %PLATEFORME_HOME%sbin

:: initialisation de variables de base
CALL set-path APPS_HOME %PLATEFORME_HOME%\vendor
CALL set-path TEMP %PLATEFORME_HOME%\var\temp
CALL set-path APPS_DATA %APPDATA%\PlateformDev
CALL set-path APPS_CACHE %APPDATA%\PlateformDev\cache

if not exist %APPS_DATA% MKDIR %APPS_DATA%
if not exist %APPS_CACHE% MKDIR %APPS_CACHE%
PATH %PATH%;%APPS_HOME%\bin

SET PF_ENV=default
IF NOT '%1'=='' (
  SET PF_ENV=%1
)
SET PF_FILE=%PLATEFORME_HOME%etc\env\%PF_ENV%.bat
if exist "%PF_FILE%" (
  Call %PF_FILE%
  echo environnement %PF_ENV% OK
) else (
  echo le fichier d'environnement demand� n'existe pas
)

PATH %PATH%;%PATH.OLD%
goto :eof 

:eof
