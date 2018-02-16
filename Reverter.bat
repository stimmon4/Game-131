@echo off

set /P reset=What type of reset would you like to perform 1. Soft (Resets head to previous commit, changes and staged files will remain)  2. Mixed (Changes will stay, but staged files will be unstaged) 3. Hard (Resets everything to previous commit, removes all changes)
if %reset%==1 (
	git reset --soft HEAD
) else if %reset%==2 (
	git reset --mixed HEAD
) else if %reset%==3 (
	CHOICE /N /M Are you sure you want to hard reset [Y] or [N]?
	if errorlevel 1 git reset --hard HEAD
)
