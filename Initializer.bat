@echo off


CHOICE /C yn /M "Is this a new repository?"
IF "%0"=="Y" (
	echo create new repository
) else if "%0"=="N" (
	echo enter existing repository to clone
)