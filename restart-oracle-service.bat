@echo off
set SERVICE_NAME=OracleServiceORCL

echo Stopping %SERVICE_NAME%...
net stop "%SERVICE_NAME%" > nul 2>&1

:wait_for_stop
sc query "%SERVICE_NAME%" | find "STOPPED" > nul
if errorlevel 1 (
    timeout /t 5 /nobreak > nul
    goto wait_for_stop
)

echo Starting %SERVICE_NAME%...
net start "%SERVICE_NAME%"

echo Restart complete.
pause
