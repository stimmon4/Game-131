@echo off
set /P selection=Enter the corresponding number of the program you wish to use 1. Initializer 2. Updater 3. Committer 4. Reverter: 
if "%selection%"==1 (
	goto hi
	start /b "Initializer" Initializer.bat
	
)

:hi
echo hi