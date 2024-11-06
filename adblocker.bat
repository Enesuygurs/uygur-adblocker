@echo off

:: Request Administrator Permission
if "%~s0"=="%~s1" ( cd %~sp1 & shift ) else (
  echo CreateObject^("Shell.Application"^).ShellExecute "%~s0","%~0 %*","","runas",1 >"%tmp%%~n0.vbs" & "%tmp%%~n0.vbs" & del /q "%tmp%%~n0.vbs" & goto :eof
)

color 0e
title Ad Blocker by Enesuygurs
goto MENU

:MENU
echo.
echo.
echo                  __  __                          ______            __    
echo                 / / / __  ______ ___  _______   /_  ______  ____  / _____
echo                / / / / / / / __ `/ / / / ___/    / / / __ \/ __ \/ / ___/
echo               / /_/ / /_/ / /_/ / /_/ / /       / / / /_/ / /_/ / (__  ) 
echo               \____/\__, /\__, /\__,_/_/       /_/  \____/\____/_/____/  
echo                    /____//____/    
echo.
echo                             A d   B l o c k e r   T o o l
echo                                 Created by Enes Uygur
echo.
echo.
echo Enable Ad Blocker (1)
echo Disable Ad Blocker (2)
echo About the Developer (3)
set /p "choice=Enter choice: "
if %choice%==1 goto ENABLE
if %choice%==2 goto DISABLE
if %choice%==3 goto ABOUT
goto EXIT

:ABOUT
cls
echo.
echo ----------------------
echo.
echo Information:
echo GitHub: Enesuygurs
echo.
echo ----------------------
pause
cls
goto MENU

:ENABLE
if not exist "%~dp0hosts" (
    echo Error: hosts file not found in the current directory.
    pause
    goto MENU
)

del C:\Windows\System32\drivers\etc\hosts
copy "%~dp0hosts" C:\Windows\System32\drivers\etc\
cls
echo Ad Blocker is enabled.
goto CONTINUE

:DISABLE
IF EXIST C:\Windows\System32\drivers\etc\hosts (
    del C:\Windows\System32\drivers\etc\hosts
    cls
    echo Ad Blocker is disabled.
    goto CONTINUE
) ELSE (
    echo Error: Hosts file not found.
    pause
    goto MENU
)

:CONTINUE
echo Would you like to perform another action? (y/n)
set /p "repeat=Enter choice: "
if /I "%repeat%"=="y" goto MENU
if /I "%repeat%"=="n" goto EXIT

:EXIT
echo Goodbye :)
pause
exit