@echo off
echo Starting Hyper-V Virtual Machines in parallel...

start "" powershell -Command "Start-VM -Name 'DevBox'"
start "" powershell -Command "Start-VM -Name 'JavaOnWin'"

echo Commands issued.
exit