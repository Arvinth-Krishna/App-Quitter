@echo off
title App Quitter
:MainMenu
cls
echo.
echo.
echo *******************************************************
echo              Welcome to APP QUITTER - GAK
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
echo Enter Z for Zoom
echo Enter 1 To Choose The Application
echo Enter 0 for Main Menu

echo.
echo Enter Your Option:
set /p alpha=


if %alpha%== C goto Chrome
if %alpha%== c goto Chrome
if %alpha%== T goto Teams
if %alpha%== t goto Teams
if %alpha%== Z goto zoom
if %alpha%== z goto zoom
if %alpha%== 0 goto MainMenu  
if %alpha%== 1 goto chooseapp  
exit

:Chrome
timeout %appkiller%
TASKKILL /IM chrome.exe
exit
:Teams
timeout %appkiller%
taskkill /F /IM teams.exe
exit
:zoom
timeout %appkiller%
TASKKILL /IM Zoom.exe
exit
:chooseapp
cls
echo.
echo.
echo *******************************************************
echo              Welcome to APP QUITTER - GAK
echo *******************************************************
echo.
echo.
echo Enter 2 to Learn how to find the Application Name
echo.
echo OR
echo.
echo Enter the Name of the Application which You want to set the timer:
set /p app=

if %app%== 2 goto Learn 
if %app%== 0 goto MainMenu 

SET exe=.exe
timeout %appkiller%
taskkill /IM %app%%exe%
exit

:Learn
cls

echo *******************************************************
echo              Welcome to APP QUITTER - GAK
echo *******************************************************
echo.
echo.
echo Follow the steps to find the Name of the Application
echo.
echo Step-1 : Go to start
echo.
echo Step-2 : Type the Name of the application  (eg : Paint)
echo.
echo Step-3 : Right click on that Application and Choose "Open file location"
echo.
echo Step-4 : There you will find that Application (eg : paint)
echo          and Right click on that Application 
echo.
echo Step-5 : And choose "Properties" (eg : Now you will see the Paint Properties)
echo.
echo Step-6 : There you will find a "Target field" box. 
echo.
echo Step-7   In that field copy the name before ".exe"
echo          eg :This will be the target field for the Paint Application
echo               %windir%\system32\mspaint.exe 
echo.
echo          So "mspaint" will be the Application name for the Paint
echo.
echo.
echo Enter the Name of the App which You want to set the timer:
set /p app=

SET exe=.exe
timeout %appkiller%
taskkill /IM %app%%exe%
exit