@echo off
pause
echo Lancement de AdvClean 2.0
echo Recherche d'executables dans les dossiers temporaires... Cela peut prendre un certain temps
echo ======================================================

dir /s /b "%TEMP%\*.exe" "%TEMP%\*.vbs" "%TEMP%\*.bat" "%TEMP%\*.scr" 2>nul

echo ====================================================== é
echo Si des fichiers inconnus apparaissent ci-dessus, soyez vigilant.
pause
DEL /S /F /Q "%TEMP%\*.*"
cls
echo Supression de fichier temporaire reussi
pause
exit
