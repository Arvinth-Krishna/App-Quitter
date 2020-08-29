@echo off
title App Quitter
:MainMenu
cls
echo.
echo.
echo *******************************************************
echo              Welcome to APP QUITER - GAK
echo *******************************************************
echo.

echo.
echo How many minutes after you want to close the App?
set /p time=
set s=60
set /a appkiller= s*time




cls
echo.
echo.
echo Enter C for Google Chrome
echo Enter T for Teams
echo Enter 1 To Choose The Application
echo Enter 0 for Main Menu

echo.
echo Enter Your Option:
set /p alpha=


if %alpha%== C goto Chrome
if %alpha%== c goto Chrome
if %alpha%== T goto Teams
if %alpha%== t goto Teams
if %alpha%== 0 goto MainMenu  
if %alpha%== 1 goto chooseapp  


:Chrome
timeout %appkiller%
TASKKILL /IM chrome.exe
exit
:Teams
timeout %appkiller%
taskkill /F /IM teams.exe
exit
:chooseapp
cls
echo.
echo.
echo *******************************************************
echo              Welcome to APP QUITER
echo *******************************************************
echo.
echo.
echo Enter the Name of the App which You want to set the timer:
set /p app=
SET exe=.exe
timeout %appkiller%
taskkill /IM %app%%exe%
exit
