@echo off

set /P repo=Enter a repository to clone: 
set /P directory=Enter the name of the repository: 
set /P user=Enter a user name: 
set /P email=Enter an email address: 

git clone %repo%
cd %directory%
git fetch --all
git checkout master
git config --global user.name %user%
git config --global user.email %email%

echo %repo%
echo %user%
echo %email%
