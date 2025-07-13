@echo off
cd /d %~dp0

REM Check if this folder is already a Git repository
if not exist ".git" (
    echo No git repository found. Initializing...
    git init

    echo Adding remote origin...
    git remote add origin https://github.com/am-kenny/kayala-forms-masterok

    echo Fetching remote master branch...
    git fetch origin master

    echo Checking out master branch from origin...
    git checkout -b master origin/master
)

echo Pulling latest changes...
git pull
pause
