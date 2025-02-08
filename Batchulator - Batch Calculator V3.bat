@echo off
title Batchulator V3 - By LythixxFR
color 0F
:menu
cls
echo ==========================================
echo              Batchulator V3
echo ==========================================
echo [1] Addition
echo [2] Subtraction
echo [3] Multiplication
echo [4] Division
echo [5] Exit
echo [6] Contact Support
echo ==========================================
set /p choice=Select an option: 

if "%choice%"=="1" goto add
if "%choice%"=="2" goto subtract
if "%choice%"=="3" goto multiply
if "%choice%"=="4" goto divide
if "%choice%"=="5" exit
if "%choice%"=="6" goto contact

color 0C
echo ERROR: Invalid input. Please try again.
timeout /t 2 >nul
color 0F
goto menu

:add
cls
echo Addition
set /p num1=Enter first number: 
set /p num2=Enter second number: 
set /a result=num1+num2
if errorlevel 1 goto error
echo Result: %result%
pause
goto menu

:subtract
cls
echo Subtraction
set /p num1=Enter first number: 
set /p num2=Enter second number: 
set /a result=num1-num2
if errorlevel 1 goto error
echo Result: %result%
pause
goto menu

:multiply
cls
echo Multiplication
set /p num1=Enter first number: 
set /p num2=Enter second number: 
set /a result=num1*num2
if errorlevel 1 goto error
echo Result: %result%
pause
goto menu

:divide
cls
echo Division
set /p num1=Enter first number: 
set /p num2=Enter second number (not zero): 
if "%num2%"=="0" goto error
set /a result=num1/num2
if errorlevel 1 goto error
echo Result: %result%
pause
goto menu

:contact
cls
echo =============================
echo       Contact Support
echo =============================
echo Email: LythixxFRGithub@outlook.com
pause
goto menu

:error
color 0C
echo ERROR: Invalid input or number too large. Try inputting again.
echo If the issue persists, contact LythixxFRGithub@outlook.com
timeout /t 3 >nul
color 0F
goto menu
