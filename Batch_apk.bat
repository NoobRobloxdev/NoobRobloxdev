@echo off
title Simple Batch File Application
color 0A

:main_menu
cls
echo =======================================
echo        Simple Batch File Application
echo =======================================
echo.
echo 1. View Current Date and Time
echo 2. Display System Information
echo 3. Perform Basic Arithmetic
echo 4. Exit
echo.
set /p choice=Please select an option (1-4): 

if %choice%==1 goto date_time
if %choice%==2 goto system_info
if %choice%==3 goto arithmetic
if %choice%==4 goto exit
goto main_menu

:date_time
cls
echo =======================================
echo        Current Date and Time
echo =======================================
echo.
date /T
time /T
echo.
pause
goto main_menu

:system_info
cls
echo =======================================
echo        System Information
echo =======================================
echo.
systeminfo | findstr /C:"OS" /C:"System Type" /C:"Total Physical Memory"
echo.
pause
goto main_menu

:arithmetic
cls
echo =======================================
echo        Basic Arithmetic
echo =======================================
echo.
set /p num1=Enter the first number: 
set /p num2=Enter the second number: 

:arithmetic_menu
cls
echo =======================================
echo        Select an Operation
echo =======================================
echo.
echo 1. Addition
echo 2. Subtraction
echo 3. Multiplication
echo 4. Division
echo 5. Go Back to Main Menu
echo.
set /p op=Please select an option (1-5): 

if %op%==1 set /a result=%num1%+%num2%
if %op%==2 set /a result=%num1%-%num2%
if %op%==3 set /a result=%num1%*%num2%
if %op%==4 set /a result=%num1%/%num2%
if %op%==5 goto main_menu

echo.
echo Result: %result%
echo.
pause
goto arithmetic_menu

:exit
echo.
echo Thank you for using the Simple Batch File Application!
echo.
pause
exit
