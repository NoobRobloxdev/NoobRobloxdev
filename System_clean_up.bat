@echo off
echo.
echo =======================================
echo Starting System Cleanup
echo =======================================
echo.

:: Clean up temporary files
echo Cleaning up temporary files...
del /s /q %temp%\*
del /s /q C:\Windows\Temp\*
echo.
pause

:: Clear the recycle bin
echo Clearing the recycle bin...
rd /s /q %systemdrive%\$Recycle.Bin
echo.
pause

:: Clean up Windows update files
echo Cleaning up Windows update files...
del /s /f /q C:\Windows\SoftwareDistribution\Download\*
echo.
pause

:: Clean up Windows prefetch files
echo Cleaning up prefetch files...
del /s /q C:\Windows\Prefetch\*
echo.
pause

:: Clean up log files
echo Cleaning up log files...
for /r "C:\Windows\Logs" %%G in (*.log) do del /f /q "%%G"
echo.
pause

echo =======================================
echo System Cleanup Complete
echo =======================================
pause
