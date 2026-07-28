@echo off

echo ============================
echo Adding files...
git add .

echo ============================
echo Committing changes...
git commit -m "new file"

echo ============================
echo Pushing to GitHub...
git push origin main

echo.
echo ============================
echo Done!
pause