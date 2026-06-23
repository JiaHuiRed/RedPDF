@echo off
chcp 65001 >nul
title RedPDF Build

echo ==========================================
echo   RedPDF Build Script
echo ==========================================
echo.

setlocal enabledelayedexpansion

set "GRADLEW=.\gradlew.bat"
set "FRONTEND_DIR=frontend"
set "BUILD_MODE=editor"

:: Check Java
java -version >nul 2>&1
if errorlevel 1 (
    echo [ERROR] Java is not installed or not in PATH. Please install JDK 25.
    pause
    exit /b 1
)

:: Check Node.js
node -v >nul 2>&1
if errorlevel 1 (
    echo [ERROR] Node.js is not installed or not in PATH. Please install Node.js 18+.
    pause
    exit /b 1
)

:: Check npm
npm -v >nul 2>&1
if errorlevel 1 (
    echo [ERROR] npm is not installed or not in PATH.
    pause
    exit /b 1
)

echo [1/2] Building backend (Java / Gradle)...
call %GRADLEW% clean build
if errorlevel 1 (
    echo.
    echo [ERROR] Backend build failed. Please check the output above.
    pause
    exit /b 1
)
echo [1/2] Backend build complete.
echo.

echo [2/2] Building frontend (Vite / React)...
pushd %FRONTEND_DIR% >nul
call npx vite build editor
set "FRONTEND_EXIT=!ERRORLEVEL!"
popd >nul
if !FRONTEND_EXIT! neq 0 (
    echo.
    echo [ERROR] Frontend build failed. Please check the output above.
    pause
    exit /b 1
)
echo [2/2] Frontend build complete.
echo.

echo ==========================================
echo   Build completed successfully!
echo ==========================================
echo.
echo Backend JAR: build\libs\*.jar
echo Frontend dist: frontend\editor\dist\
echo.
echo To run the backend: .\gradlew.bat :stirling-pdf:bootRun
echo To run the frontend: cd frontend ^& npm run dev
echo.
pause
