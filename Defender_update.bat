@echo off
echo.
echo =======================================
echo Starting Windows and Defender Updates
echo =======================================
echo.

:: Check for Windows updates
echo Checking for Windows updates...
wuauclt /detectnow
echo.

:: Install Windows updates
echo Installing Windows updates...
wuauclt /updatenow
echo.

:: Wait for a while to let updates proceed
echo Waiting for updates to install...
timeout /t 600
echo.

:: Update Microsoft Defender
echo Updating Microsoft Defender...
"%ProgramFiles%\Windows Defender\MpCmdRun.exe" -SignatureUpdate
echo.

echo =======================================
echo Updates complete
echo =======================================
pause
