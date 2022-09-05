:: Fichier de démarrage de l'environnement
@echo off
:: chcp 1252
chcp 65001

if not defined PATH.OLD SET PATH.OLD=%PATH%
CALL %~dp0.\sbin\set-path PLATEFORME_HOME %~dp0
PATH %PLATEFORME_HOME%sbin

:: initialisation de variables de base
CALL set-path APPS_HOME %~dp0.\vendor
CALL set-path TEMP %~dp0.\var\temp

PATH %PATH%;%APPS_HOME%\bin

CALL setenv Default

goto :eof 
