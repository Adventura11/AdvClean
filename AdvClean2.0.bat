@echo off
chcp 65001 >nul
title AdvClean - Nettoyage Temp

choice /c 12 /n /m "1 for English, 2 pour Français : "
cls

if %errorlevel%==1 (
    echo English
    echo Launch of AdvClean
    echo Search of executables in temporary files...
    echo ======================================================

    dir /s /b "%TEMP%\*.exe" "%TEMP%\*.vbs" "%TEMP%\*.bat" "%TEMP%\*.scr" 2>nul

    echo ======================================================
    echo Warning: be careful if you don't recognize these files.
    pause
    del /s /f /q "%TEMP%\*.*" >nul 2>&1
    for /d %%p in ("%TEMP%\*.*") do rmdir "%%p" /s /q >nul 2>&1
    cls
    echo Temporary files and folders deleted.

) else if %errorlevel%==2 (
    echo Français
    echo Lancement de AdvClean
    echo Recherche d'exécutables dans les dossiers temporaires...
    echo ======================================================

    dir /s /b "%TEMP%\*.exe" "%TEMP%\*.vbs" "%TEMP%\*.bat" "%TEMP%\*.scr" 2>nul

    echo ======================================================
    echo Si des fichiers inconnus apparaissent ci-dessus, soyez vigilant.
    pause
    del /s /f /q "%TEMP%\*.*" >nul 2>&1
    for /d %%p in ("%TEMP%\*.*") do rmdir "%%p" /s /q >nul 2>&1
    cls
    echo Suppression des fichiers et dossiers temporaires terminée.
)

pause
exit
