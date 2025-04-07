@echo off
chcp 65001 >nul
title Custodev Administrator+ V1.2.6
color b

:: Ensure Logs Directory Exists
if not exist "D:\Logs" mkdir "D:\Logs"

:mainmenu
echo                         Administrator+     CUSTODEV DEVELOPMENT ROBLOX     (Version 1.3.2)
echo                    	 ██████╗██╗   ██╗███████╗████████╗ ██████╗ ██████╗ ███████╗██╗   ██╗
echo                    	██╔════╝██║   ██║██╔════╝╚══██╔══╝██╔═══██╗██╔══██╗██╔════╝██║   ██║
echo                    	██║     ██║   ██║███████╗   ██║   ██║   ██║██║  ██║█████╗  ██║   ██║
echo                    	██║     ██║   ██║╚════██║   ██║   ██║   ██║██║  ██║██╔══╝  ╚██╗ ██╔╝
echo                    	╚██████╗╚██████╔╝███████║   ██║   ╚██████╔╝██████╔╝███████╗ ╚████╔╝ 
echo                     	 ╚═════╝ ╚═════╝ ╚══════╝   ╚═╝    ╚═════╝ ╚═════╝ ╚══════╝  ╚═══╝  
echo.
echo.
echo.
echo.
echo.
echo                          ║================================================================ ║
echo                          ║                     Multi-Tool Options                          ║
echo                          ║================================================================ ║
echo                          ║           1) Run Command Prompt as Administrator                ║
echo                          ║           2) Open D:\ Directory in Explorer                     ║
echo                          ║           3) Open Task Manager                                  ║
echo                          ║           4) Whois Lookup (inside batch)                        ║
echo                          ║           5) List Windows Directory                             ║
echo                          ║           6) Exit Custodev Administrator+                       ║
echo                          ║           7) View System Information                            ║
echo                          ║           8) View IP Configuration                              ║
echo                          ║           9) Check Disk Usage                                   ║
echo                          ║           10) Perform Ping Test                                 ║
echo                          ║           11) Open Registry Editor                              ║
echo                          ║           12) Open Notepad                                      ║
echo                          ║           13) Open Calculator                                   ║
echo                          ║           14) Open Shutdown Dialog                              ║
echo                          ║           15) Unattended: Exit and Shutdown                     ║
echo                          ║           16) Unattended: Exit and Restart                      ║
echo                          ║           17) Unattended: Sleep Computer                        ║
echo                          ║           18) Unattended: Lock Computer                         ║
echo                          ║           19) Unattended: Open Multiple Websites                ║
echo                          ║           20) View Credits                                      ║
echo                          ║=================================================================║
set /p choice="Select an option (1-20): " 2>nul

:: Log the user's input
echo [%date% %time%] User selected option %choice% >> "D:\Logs\Logs_CUSTODEVADMIN.txt"

if "%choice%"=="1" (
    echo [%date% %time%] Action: Run Command Prompt as Administrator >> "D:\Logs\Logs_CUSTODEVADMIN.txt"
    goto cmd_admin
)
if "%choice%"=="2" (
    echo [%date% %time%] Action: Open D:\ Directory in Explorer >> "D:\Logs\Logs_CUSTODEVADMIN.txt"
    goto explorer
)
if "%choice%"=="3" (
    echo [%date% %time%] Action: Open Task Manager >> "D:\Logs\Logs_CUSTODEVADMIN.txt"
    goto taskmgr
)
if "%choice%"=="4" (
    echo [%date% %time%] Action: Perform Whois Lookup >> "D:\Logs\Logs_CUSTODEVADMIN.txt"
    goto whois
)
if "%choice%"=="5" (
    echo [%date% %time%] Action: List Windows Directory >> "D:\Logs\Logs_CUSTODEVADMIN.txt"
    goto windows_dir
)
if "%choice%"=="6" (
    echo [%date% %time%] Action: Exit Application >> "D:\Logs\Logs_CUSTODEVADMIN.txt"
    goto exit
)
if "%choice%"=="7" (
    echo [%date% %time%] Action: View System Information >> "D:\Logs\Logs_CUSTODEVADMIN.txt"
    goto systeminfo
)
if "%choice%"=="8" (
    echo [%date% %time%] Action: View IP Configuration >> "D:\Logs\Logs_CUSTODEVADMIN.txt"
    goto ipconfig
)
if "%choice%"=="9" (
    echo [%date% %time%] Action: Check Disk Usage >> "D:\Logs\Logs_CUSTODEVADMIN.txt"
    goto diskusage
)
if "%choice%"=="10" (
    echo [%date% %time%] Action: Perform Ping Test >> "D:\Logs\Logs_CUSTODEVADMIN.txt"
    goto ping_test
)
if "%choice%"=="11" (
    echo [%date% %time%] Action: Open Registry Editor >> "D:\Logs\Logs_CUSTODEVADMIN.txt"
    goto regedit
)
if "%choice%"=="12" (
    echo [%date% %time%] Action: Open Notepad >> "D:\Logs\Logs_CUSTODEVADMIN.txt"
    goto notepad
)
if "%choice%"=="13" (
    echo [%date% %time%] Action: Open Calculator >> "D:\Logs\Logs_CUSTODEVADMIN.txt"
    goto calculator
)
if "%choice%"=="14" (
    echo [%date% %time%] Action: Open Shutdown Dialog >> "D:\Logs\Logs_CUSTODEVADMIN.txt"
    goto shutdown_dialog
)
if "%choice%"=="15" (
    echo [%date% %time%] Action: Exit and Shutdown >> "D:\Logs\Logs_CUSTODEVADMIN.txt"
    goto unattended_shutdown
)
if "%choice%"=="16" (
    echo [%date% %time%] Action: Exit and Restart >> "D:\Logs\Logs_CUSTODEVADMIN.txt"
    goto unattended_restart
)
if "%choice%"=="17" (
    echo [%date% %time%] Action: Sleep Computer >> "D:\Logs\Logs_CUSTODEVADMIN.txt"
    goto unattended_sleep
)
if "%choice%"=="18" (
    echo [%date% %time%] Action: Lock Computer >> "D:\Logs\Logs_CUSTODEVADMIN.txt"
    goto unattended_lock
)
if "%choice%"=="19" (
    echo [%date% %time%] Action: Open Multiple Websites >> "D:\Logs\Logs_CUSTODEVADMIN.txt"
    goto unattended_websites
)
if "%choice%"=="20" (
    echo [%date% %time%] Action: View Credits >> "D:\Logs\Logs_CUSTODEVADMIN.txt"
    goto credits
)

:: Handle invalid input
echo [%date% %time%] Invalid input: %choice% >> "D:\Logs\Logs_CUSTODEVADMIN.txt"
echo Invalid input! Please try again.
pause
cls
goto mainmenu

:cmd_admin
echo Running Command Prompt as Administrator...
powershell -Command "Start-Process cmd -Verb RunAs" 2>nul
pause
cls
goto mainmenu

:explorer
echo Opening D:\ Directory in Explorer...
start explorer D:\ 2>nul
pause
cls
goto mainmenu

:taskmgr
echo Opening Task Manager...
start taskmgr 2>nul
pause
cls
goto mainmenu

:whois
echo Performing WHOIS lookup...
echo Enter the domain to lookup:
set /p domain= 2>nul
nslookup %domain% 2>nul
pause
cls
goto mainmenu

:windows_dir
echo Listing Windows Directory...
dir %windir% 2>nul
pause
cls
goto mainmenu

:systeminfo
echo Displaying System Information...
systeminfo 2>nul
pause
cls
goto mainmenu

:ipconfig
echo Displaying IP Configuration...
ipconfig /all 2>nul
pause
cls
goto mainmenu

:diskusage
echo Checking Disk Usage...
wmic logicaldisk get size,freespace,caption 2>nul
pause
cls
goto mainmenu

:ping_test
echo Enter the IP or domain to ping:
set /p domain= 2>nul
ping %domain% 2>nul
pause
cls
goto mainmenu

:regedit
echo Opening Registry Editor...
regedit 2>nul
pause
cls
goto mainmenu

:notepad
echo Opening Notepad...
notepad 2>nul
pause
cls
goto mainmenu

:calculator
echo Opening Calculator...
calc 2>nul
pause
cls
goto mainmenu

:shutdown_dialog
echo Opening Shutdown Dialog...
shutdown -i 2>nul
pause
cls
goto mainmenu

:unattended_shutdown
echo Exiting and Shutting Down...
shutdown -s -t 0 >nul 2>nul
cls
goto mainmenu

:unattended_restart
echo Exiting and Restarting...
shutdown -r -t 0 >nul 2>nul
cls
goto mainmenu

:unattended_sleep
echo Putting Computer to Sleep...
rundll32.exe powrprof.dll,SetSuspendState Sleep >nul 2>nul
cls
goto mainmenu

:unattended_lock
echo Locking Computer...
rundll32.exe user32.dll,LockWorkStation >nul 2>nul
cls
goto mainmenu

:unattended_websites
echo Enter websites separated by spaces (e.g., "https://example1.com https://example2.com"):
set /p websites= 2>nul
echo Opening websites in Edge...
start msedge.exe %websites% >nul 2>nul
pause
cls
goto mainmenu

:credits
cls
echo            ================================================================================
echo                                        Credits Section                       									 
echo            ================================================================================
echo                                Custodev Administrator+ V1.0.1                                                     
echo                        Developed by: Static - CustoDev Development Owner
echo                        Name of System: CustoDev Administrator V1.2.6
echo            Type of System: Version 1.2.6, Custodev Admin, Property of CustoDev Development.
echo            ================================================================================
pause
cls
goto mainmenu

:exit
echo Exiting... Goodbye!
exit