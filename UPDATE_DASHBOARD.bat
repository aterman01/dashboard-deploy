@echo off
color 0B
echo ========================================
echo  🔄 UPDATING DASHBOARD
echo ========================================
echo.
echo Pushing the complete dashboard to GitHub...
echo.

cd C:\Users\Antho\Desktop\UNITY2025\dashboard-deploy

git add .
git commit -m "Complete dashboard with all content and styling"
git push origin main

if errorlevel 1 (
    echo.
    echo ❌ Push failed
    echo.
    echo Please use GitHub Desktop:
    echo 1. Open GitHub Desktop
    echo 2. Select dashboard-deploy repo
    echo 3. Commit changes
    echo 4. Push origin
    pause
    exit /b 1
)

echo.
echo ✅ Successfully pushed!
echo.
echo Railway will auto-deploy in ~2 minutes.
echo Refresh your dashboard URL to see the changes!
echo.
pause
