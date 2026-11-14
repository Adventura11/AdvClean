echo Lancement de CleanUp
@echo off
echo Recherche d'executables dans les dossiers temporaires...
echo ======================================================

dir /s /b "%TEMP%\*.exe" "%TEMP%\*.vbs" "%TEMP%\*.bat" "%TEMP%\*.scr" 2>nul

echo ======================================================
echo Si des fichiers inconnus apparaissent ci-dessus, soyez vigilant.
DEL /S /F /Q "%TEMP%\*.*"
echo supression de fichier temporaire
pause

