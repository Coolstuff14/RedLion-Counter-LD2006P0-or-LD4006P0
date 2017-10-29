@ECHO OFF

:Setup

setlocal enableDelayedExpansion

echo mode com3 baud=9600 parity=o data=7 
echo Port Opened on COM3
echo Set count down...

SET /p Days=Days:
SET /p Hours=Hours:
SET /p Minutes=Minutes:
SET /p Seconds=Seconds:

:Countdown

CLS


SET sec=%Seconds%
for %%i in (1,2,3,4,5,6,7,8,9,0) do if "%Seconds%" == "%%i" (SET sec=0%Seconds%)

SET min=%Minutes%
for %%i in (1,2,3,4,5,6,7,8,9,0) do if "%Minutes%" == "%%i" (SET min=0%Minutes%)

SET hr=%Hours%
for %%i in (1,2,3,4,5,6,7,8,9,0) do if "%Hours%" == "%%i" (SET hr=0%Hours%)

SET day=%Days%
for %%i in (1,2,3,4,5,6,7,8,9,0) do if "%Days%" == "%%i" (SET day=0%Days%)

echo N00VA%min%%sec%*>com3
echo N00VA%min%%sec%*>com3
echo N00VA%min%%sec%*>com3
echo N00VA%min%%sec%*>com3

ECHO   %day%  -  %hr%  -  %min%  -  %sec%


ECHO Days  Hours  Mins  Secs

TIMEOUT /t 1 >Nul

IF "%Seconds%"=="0" (
	IF "%Minutes%"=="0" (
		IF "%Hours%"=="0" (
			IF "%Days%"=="0" (
				GOTO Done
			)
			SET /a Days -=1
			SET Hours=24
		)
		SET /a Hours -=1
		SET Minutes=60
	)
	SET /a Minutes -=1
	SET Seconds=60
)

SET /a Seconds -=1
GOTO Countdown

:Done

CLS
ECHO Times Up!
ECHO.
PAUSE