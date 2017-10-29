@echo off

cd "C:\Windows\Microsoft.NET\Framework64\v4.0.30319"

installutil %~dp0\clockToDisplay.exe

pause