@echo off
cd /d "%~dp0"
if not exist utils mkdir utils
move /y pwainstaller.exe utils\ >nul
powershell -NoProfile -ExecutionPolicy Bypass -File install.ps1
