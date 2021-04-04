
  @setlocal enableextensions enabledelayedexpansion
@echo off

title  Dead's Colored Pinger

echo ______________¶¶¶
echo _____________¶¶_¶¶¶¶
echo ____________¶¶____¶¶¶
echo ___________¶¶¶______¶¶
echo ___________¶¶¶_______¶¶
echo __________¶¶¶¶________¶¶
echo __________¶_¶¶_________¶¶
echo __________¶__¶¶_________¶¶____¶¶
echo __________¶__¶¶__________¶¶¶¶¶¶¶
echo _________¶¶__¶¶¶______¶¶¶¶¶¶___¶
echo _________¶¶___¶¶__¶¶¶¶¶¶__¶¶
echo _______¶¶_¶____¶¶¶¶________¶¶
echo    _____¶¶____¶¶___¶¶__________¶¶
echo ___¶¶_______¶¶___¶¶_________¶¶
echo _¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶_¶¶________¶¶
echo ¶¶__¶¶¶¶¶¶____¶¶¶¶¶¶¶¶¶______¶¶
echo ¶¶¶¶¶___¶______¶___¶¶¶¶¶_____¶¶
echo ________¶¶¶¶¶¶¶¶______¶¶¶¶¶_¶¶
echo ______¶¶¶¶¶¶¶¶¶¶¶________¶¶¶¶
echo ______¶¶¶¶¶¶¶¶¶¶¶¶
echo ______¶__¶¶_¶¶¶¶¶¶
echo _____¶¶______¶___¶
echo _____¶¶_____¶¶___¶
echo _____¶______¶¶___¶
echo ____¶¶______¶¶___¶¶
echo ____¶¶______¶¶___¶¶
echo ___¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶
echo __¶¶¶¶¶¶¶¶¶_¶¶¶¶¶¶¶¶
echo __¶¶________¶¶¶____¶¶
echo ____¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶¶
Timeout /t 1 >nul
echo Dead's Colored Pinger
Timeout /t 1 >nul
echo Script Based off my pasted https://pastebin.com/3vhMLMs9
timeout /t 3
echo "Loading 35%"
Timeout /t 1 >nul
echo "Loading 65%"
Timeout /t 1 >nul
echo "Loading 95%"
Timeout /t 1 >nul
echo "Loaded 100%"
timeout /t 3
COLOR 4
set /p ipaddr="Enter ip or url: ex | localhost or google.com or 1.1.1.1 | "
set /p cutoff="enter minimum good reply ms: ex | 300 | "
set /a res = 0 - 1 
:loop
for /f "tokens=7,9" %%a in ('ping -n 1 !ipaddr!') do (
set /a res = 0 - 1 
  if "%%a"=="Average" (
  set a=%%b
  set /a res=!a:~0,-2!
  )
)

IF %res% == -1 (
  COLOR 2
  echo %ipaddr% failed to respond in time
)
IF %res% LEQ %cutoff% (
    IF %res% NEQ -1 (
        COLOR 2
        echo %ipaddr% responded in %res%ms
    )
)else (
    COLOR 4
    echo %ipaddr% responded in %res%ms
)
ping -n 3 127.0.0.1 >nul: 2>nul:
goto :loop

endlocal