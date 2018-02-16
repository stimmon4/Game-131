@echo off

echo 1. Soft (Resets head to previous commit, changes and staged files will remain) 
echo 2. Mixed (Changes will stay, but staged files will be unstaged) 
echo 3. Hard (Resets everything to previous commit, removes all changes)
set /P reset=What type of reset would you like to perform 
if %reset%==1 (
	git reset --soft HEAD
) else if %reset%==2 (
	git reset --mixed HEAD
) else if %reset%==3 (
	set /P decision=Are you sure you want to hard reset (y/n)
	if %decision%==y (
		git reset --hard HEAD
	) else (
		goto 3
	)
)
