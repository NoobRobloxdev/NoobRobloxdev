@echo off
echo.
echo =======================================
echo Starting Network Diagnostics
echo =======================================
echo.

:: Display current IP configuration
echo Displaying IP configuration...
ipconfig /all
echo.
pause

:: Ping a common website to check internet connectivity
echo Pinging google.com to check internet connectivity...
ping google.com
echo.
pause

:: Trace the route to a common website to see the path packets take
echo Tracing route to google.com...
tracert google.com
echo.
pause

:: Check DNS resolution by resolving a domain name
echo Checking DNS resolution for google.com...
nslookup google.com
echo.
pause

echo =======================================
echo Network Diagnostics Complete
echo =======================================
pause
