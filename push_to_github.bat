@echo off
chcp 65001 > nul
echo ========================================================
echo Pushing GitHub Profile & Web App to github.com/atalaghat/atalaghat...
echo ========================================================
cd /d "%~dp0"
git status
echo.
echo Executing: git push -u origin main
git push -u origin main
echo.
if %ERRORLEVEL% equ 0 (
    echo [SUCCESS] Successfully pushed to GitHub!
    echo Your profile is live at: https://github.com/atalaghat
    echo To activate GitHub Pages for your web app:
    echo 1. Go to: https://github.com/atalaghat/atalaghat/settings/pages
    echo 2. Under 'Build and deployment' -> Branch: select 'main' and folder '/docs'
    echo 3. Click Save!
) else (
    echo [ERROR] Push failed or requires GitHub login. Please complete browser authentication.
)
pause
