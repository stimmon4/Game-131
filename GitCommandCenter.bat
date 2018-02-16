@echo off

echo 1. Initializer 
echo 2. Updater 
echo 3. Committer 
echo 4. Reverter:
set /P selection=Enter the corresponding number of the program you wish to use: 
if %selection%==1 (
	start "Initializer" Initializer.bat
	
) else if %selection%==2 (
	start "Updater" Updater.bat
	
) else if %selection%==3 (
	start "Committer" Committer.bat
	
) else if %selection%==4 (
	start "Reverter" Reverter.bat
	
)
