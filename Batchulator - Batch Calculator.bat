@echo off
title Batchulator
:calculator
cls
echo Lythixx's Batchulator
echo -----------------------
echo Enter first number:
set /p num1=
echo Enter operator (+, -, *, /):
set /p op=
echo Enter second number:
set /p num2=
set /a result=num1 %op% num2
echo -----------------------
echo Result: %result%
echo -----------------------
pause
goto calculator
