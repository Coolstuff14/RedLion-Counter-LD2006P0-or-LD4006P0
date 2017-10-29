@echo off

echo mode com3 baud=9600 parity=o data=7 
echo Port Opened on COM3
echo Set Seconds...

SET /p sec=sec:

:Countdown
cls

echo N00VA%sec%*>com3
echo N00VA%sec%*>com3
echo N00VA%sec%*>com3
echo N00VA%sec%*>com3
echo N00VA%sec%*>com3

echo %sec%
echo Seconds left

TIMEOUT /t 1 >Nul

if "%sec"=="0" (goto Done)

SET /a sec -=1
GOTO Countdown

CLS
ECHO Times Up!
ECHO.
PAUSE