@echo off

set /P selection=Enter the corresponding number of the program you wish to use 1. Initializer 2. Updater 3. Committer 4. Resetter: 
if "selection"=="1" 
(
	START "Initializer" Initializer.bat
)