@echo off
cd /d %~dp0

if not exist ".git" (
    echo No git repository found. Initializing...
    git init

    echo Adding remote...
    git remote add origin https://github.com/am-kenny/kayala-forms-masterok
    
    echo Fetching...
    git fetch

    echo Setting branch...
    git branch master origin/master

    echo Hard-resetting branch...
    git reset --hard origin/master
    echo Initialization complete!
) else (
    echo Pulling latest changes...
    git fetch
    git reset --hard origin/master
    echo Update complete!
)

pause