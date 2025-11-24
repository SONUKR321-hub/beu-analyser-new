@echo off
echo ========================================
echo   BEU Result Analyser - Deployment
echo ========================================
echo.

echo [1/4] Adding files to git...
git add .

echo.
echo [2/4] Committing changes...
git commit -m "Prepare for Streamlit Cloud deployment - Added config files"

echo.
echo [3/4] Pushing to GitHub...
git push origin main

echo.
echo [4/4] Deployment preparation complete!
echo.
echo ========================================
echo   Next Steps:
echo ========================================
echo 1. Go to: https://share.streamlit.io/
echo 2. Sign in with your GitHub account
echo 3. Click "New app"
echo 4. Select repository: SONUKR321-hub/BEU-result-analyser1
echo 5. Branch: main
echo 6. Main file: app.py
echo 7. Click "Deploy!"
echo.
echo Your app will be live in 2-5 minutes!
echo ========================================
pause
