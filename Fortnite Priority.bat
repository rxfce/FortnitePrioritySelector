@echo off
Title Priority Selector
:menu
cls
echo Please select the priority level:
echo [1] Low Priority - Makes game unplayable for most
echo [2] Below Normal Priority - makes the game run shitier 
echo [3] Normal Priority - What fortnite is at by defualt
echo [4] Above Normal Priority - Recommended for Decent CPU's with Youtube or Music in the background
echo [5] High Priority - Recommended for good CPU's and no youtube or music in the background
echo [6] Realtime Priority - Realtime is not recommended, It can cause stability issues for the rest of your machine 
echo.
set /p choice=Enter your choice:

if %choice%==1 goto low
if %choice%==2 goto below_normal
if %choice%==3 goto normal
if %choice%==4 goto above_normal
if %choice%==5 goto high
if %choice%==6 goto realtime

goto menu

:low
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\FortniteClient-Win64-Shipping.exe\PerfOptions" /v CpuPriorityClass /t REG_DWORD /d 1 /f
taskkill /IM FortniteClient-Win64-Shipping.exe /F
taskkill /IM EpicGamesLauncher.exe /F
echo Priority set to Low.
pause
exit

:below_normal
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\FortniteClient-Win64-Shipping.exe\PerfOptions" /v CpuPriorityClass /t REG_DWORD /d 2 /f
taskkill /IM FortniteClient-Win64-Shipping.exe /F
taskkill /IM EpicGamesLauncher.exe /F
echo Priority set to Below Normal.
pause
exit

:normal
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\FortniteClient-Win64-Shipping.exe\PerfOptions" /v CpuPriorityClass /t REG_DWORD /d 3 /f
taskkill /IM FortniteClient-Win64-Shipping.exe /F
taskkill /IM EpicGamesLauncher.exe /F
echo Priority set to Normal.
pause
exit

:above_normal
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\FortniteClient-Win64-Shipping.exe\PerfOptions" /v CpuPriorityClass /t REG_DWORD /d 4 /f
taskkill /IM FortniteClient-Win64-Shipping.exe /F
taskkill /IM EpicGamesLauncher.exe /F
echo Priority set to Above Normal.
pause
exit

:high
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\FortniteClient-Win64-Shipping.exe\PerfOptions" /v CpuPriorityClass /t REG_DWORD /d 5 /f
taskkill /IM FortniteClient-Win64-Shipping.exe /F
taskkill /IM EpicGamesLauncher.exe /F
echo Priority set to High.
pause
exit

:realtime
reg add "HKLM\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\FortniteClient-Win64-Shipping.exe\PerfOptions" /v CpuPriorityClass /t REG_DWORD /d 6 /f
taskkill /IM FortniteClient-Win64-Shipping.exe /F
taskkill /IM EpicGamesLauncher.exe /F
echo Priority set to Realtime.
pause
exit
