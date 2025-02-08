@echo off
title Batchulator V2
color 0A
:menu
cls
echo ==========================
echo    Lythixx's Batchulator
echo ==========================
echo 1. Addition (+)
echo 2. Subtraction (-)
echo 3. Multiplication (*)
echo 4. Division (/)
echo 5. Exponent (^)
echo 6. Modulo (%)
echo 7. Exit
echo ==========================
set /p choice="Choose an operation (1-7): "

if "%choice%"=="7" exit
if "%choice%" LSS "1" goto invalid
if "%choice%" GTR "6" goto invalid

set /p num1="Enter first number: "
set /p num2="Enter second number: "

:: Perform Calculation
if "%choice%"=="1" set /a result=%num1% + %num2%
if "%choice%"=="2" set /a result=%num1% - %num2%
if "%choice%"=="3" set /a result=%num1% * %num2%
if "%choice%"=="4" (
    if "%num2%"=="0" (
        echo Error: Division by zero is not allowed!
        pause
        goto menu
    ) else (
        set /a result=%num1% / %num2%
    )
)
if "%choice%"=="5" set /a result=%num1% ^ %num2%
if "%choice%"=="6" set /a result=%num1% %% %num2%

echo ==========================
echo Result: %result%
echo ==========================
pause
goto menu

:invalid
echo Invalid choice! Please enter a number between 1 and 7.
pause
goto menu
