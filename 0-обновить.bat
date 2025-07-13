@echo off
cd /d %~dp0

REM Check if this folder is already a Git repository
if not exist ".git" (
    echo No git repository found. Initializing...
    git init

    REM Optional: Set remote if not set
    git remote add origin https://github.com/am-kenny/kayala-forms-masterok.git

    REM Optional: Checkout the main branch (adjust if needed)
    git checkout -b master
)

echo Pulling latest changes...
git pull
pause

