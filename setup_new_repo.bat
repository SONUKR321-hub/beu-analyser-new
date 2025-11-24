@echo off
echo ========================================
echo   Setup New GitHub Repository
echo ========================================
echo.
echo This script will help you push your code to a NEW GitHub repository.
echo.
echo INSTRUCTIONS:
echo 1. First, create a new repository on GitHub:
echo    - Go to: https://github.com/new
echo    - Repository name: BEU-Result-Analyser (or your choice)
echo    - Description: BEU Result Fetcher and Analyzer - Streamlit App
echo    - Set to Public
echo    - DO NOT initialize with README, .gitignore, or license
echo    - Click "Create repository"
echo.
echo 2. After creating the repo, GitHub will show you a URL like:
echo    https://github.com/YOUR-USERNAME/BEU-Result-Analyser.git
echo.
echo 3. Copy that URL and paste it when prompted below
echo.
echo ========================================
echo.

set /p REPO_URL="Enter your new repository URL: "

echo.
echo [1/6] Removing old remote...
git remote remove origin 2>nul
git remote remove new-origin 2>nul
git remote remove target 2>nul

echo.
echo [2/6] Adding new remote...
git remote add origin %REPO_URL%

echo.
echo [3/6] Checking current branch...
git branch -M main

echo.
echo [4/6] Adding all files...
git add .

echo.
echo [5/6] Creating commit...
git commit -m "Initial commit - BEU Result Analyser ready for Streamlit deployment"

echo.
echo [6/6] Pushing to new repository...
git push -u origin main

echo.
echo ========================================
echo   SUCCESS! Repository Setup Complete
echo ========================================
echo.
echo Your code is now in your new GitHub repository!
echo.
echo NEXT STEP: Deploy to Streamlit Cloud
echo 1. Go to: https://share.streamlit.io/
echo 2. Sign in with GitHub
echo 3. Click "New app"
echo 4. Select your new repository
echo 5. Branch: main
echo 6. Main file: app.py
echo 7. Click Deploy!
echo.
echo ========================================
pause
