@echo off
SETLOCAL ENABLEEXTENSIONS
set ATTR=%~a1
set DIRATTR=%ATTR:~0,1%
IF /I "%DIRATTR%"=="d" (
java -jar "%~dp0\..\tools\apktool.jar" b -c %1 %2 %3 %4 %5 %6 %7 %8 %9
) ELSE (
java -jar "%~dp0\..\tools\apktool.jar" d -b -f %1 %2 %3 %4 %5 %6 %7 %8 %9
)
