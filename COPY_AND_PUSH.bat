@echo off
echo Copying master dashboard to deployment folder...
copy "..\master-admin-dashboard.html" "index.html" /Y
echo Done!
echo.
echo Now pushing to GitHub...
git add index.html
git commit -m "Update: Use complete master dashboard"
git push origin main
echo.
echo Complete! Railway will redeploy in ~2 minutes.
pause
