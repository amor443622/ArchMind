@echo off
cd /d "%~dp0"
where node >nul 2>nul
if errorlevel 1 (
  echo Node.js is not installed.
  echo Install Node.js LTS, then run this file again.
  pause
  exit /b 1
)
echo.
echo ========================================
echo        ARCHMIND PRO - LOCAL SERVER
echo ========================================
echo.
echo Open your browser at: http://localhost:3001
 echo Press CTRL+C in this window to stop.
echo.
if not exist "node_modules\nodemailer\package.json" (
  echo Installing the required server package...
  call npm install
  if errorlevel 1 (
    echo Package installation failed. Check your internet connection and try npm install manually.
    pause
    exit /b 1
  )
)
set PORT=3001
node server.js
pause
