@echo off
chcp 65001 >NUL
cd /d "%~dp0"
echo ===== Upload to GitHub =====
type NUL > .nojekyll
git init
git config user.name "polo123159-commits"
git config user.email "polo123159-commits@users.noreply.github.com"
git add -A
git commit -m "wolji garden web build"
git branch -M main
git remote remove origin 2>NUL
git remote add origin https://github.com/polo123159-commits/wolji-garden.git
echo.
echo If a browser window opens, sign in to GitHub and allow access.
git push -u origin main --force
echo.
echo ===== Finished. Press any key to close. =====
pause >NUL
