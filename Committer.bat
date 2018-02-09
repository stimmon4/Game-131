@echo off

set /P message=Enter a commit message

git add *
git commit -m %message%