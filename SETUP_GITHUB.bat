@echo off
color 0B
echo ========================================
echo  🎨 DASHBOARD GITHUB SETUP
echo ========================================
echo.
echo Preparing dashboard for deployment...
echo.

cd C:\Users\Antho\Desktop\UNITY2025\dashboard-deploy

echo [1/3] Initializing Git repository...
git init
git add .
git commit -m "Initial dashboard deployment - Master Admin Dashboard"
git branch -M main

echo.
echo ✅ Repository initialized!
echo.
echo ========================================
echo  NEXT STEPS:
echo ========================================
echo.
echo 1. Create GitHub repository:
echo    • Go to: https://github.com/new
echo    • Name: netflixing-dashboard
echo    • Make it: PUBLIC (so it's accessible)
echo    • Do NOT check any boxes
echo    • Click "Create repository"
echo.
echo 2. Open GitHub Desktop:
echo    • File → Add Local Repository
echo    • Choose: C:\Users\Antho\Desktop\UNITY2025\dashboard-deploy
echo    • Click "Publish repository"
echo.
echo 3. Then deploy to Railway!
echo.
pause

echo.
echo Opening GitHub to create repository...
start https://github.com/new
echo.
echo Opening GitHub Desktop...
timeout /t 2 >nul
start "" "%LOCALAPPDATA%\GitHubDesktop\GitHubDesktop.exe"

echo.
echo ========================================
echo.
echo After publishing to GitHub:
echo • Go to: https://railway.app/new
echo • Click "Deploy from GitHub repo"
echo • Select: netflixing-dashboard
echo • Click "Deploy"
echo • Wait for deployment
echo • Your dashboard will be LIVE!
echo.
pause
