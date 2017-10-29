@echo off


echo mode com3 baud=9600 parity=o data=7 
echo Port Opened on COM3
echo Sending Time..

:loop
ping localhost -n 20 >nul 
For /f "tokens=1-2 delims=/:" %%a in ('time /t') do (set mytime=%%a%%b)
set tm=%mytime:~0,4%
echo Time is %tm%
if %tm%==%oldtm% goto loop 


set oldtm=%tm%
echo N00VA%tm%*>com3
echo N00VA%tm%*>com3
echo N00VA%tm%*>com3
echo N00VA%tm%*>com3
cls
echo Time updated to %tm%
goto loop


