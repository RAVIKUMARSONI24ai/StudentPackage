@echo off
title Push StudentPackage to GitHub
echo ============================================================
echo   STUDENTPACKAGE - GITHUB REPOSITORY SYNC & PUSH TOOL
echo ============================================================
echo.
cd /d "%~dp0"

echo [1/4] Checking current Git remote...
git remote -v
echo.

echo [2/4] Current Git Status:
git status
echo.

echo [3/4] Staging and committing changes...
git add .
set /p commit_msg="Enter commit message [default: Update StudentPackage R package]: "
if "%commit_msg%"=="" set commit_msg=Update StudentPackage R package
git commit -m "%commit_msg%"

echo.
echo [4/4] Pushing to GitHub (main branch)...
git push -u origin main

if %ERRORLEVEL% EQU 0 (
    echo.
    echo ============================================================
    echo [SUCCESS] StudentPackage has been pushed to GitHub!
    echo URL: https://github.com/RAVIKUMARSONI24ai/StudentPackage
    echo ============================================================
) else (
    echo.
    echo ============================================================
    echo [ERROR] Push failed. Check your network or GitHub permissions.
    echo ============================================================
)
echo.
pause
