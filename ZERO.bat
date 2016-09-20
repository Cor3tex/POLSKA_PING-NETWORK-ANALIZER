@echo off
title ZERO: A PING AND NETWORK TOOL
color 0A
:1
echo !!!CHECK FOR UPDATES TO SEE IF U HAVE THE NEWEST VERSION INSTALLED!!!
echo.
echo          @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
echo          @         ZERO BY C0R3         @
echo          @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
echo.
echo                WHAT DO U WANT TO DO?
echo.
echo - Start to Ping [P]
echo.
echo - Check network activity [C]
echo.
echo -Check for UPDATES [U]
echo.
echo -GO FULLSCREEN [F]
echo.
echo - Show Changelog [L]
echo.
echo - Help [H]

set /p x=

if "%x%"=="p" goto p
if "%x%"=="c" goto c
if "%x%"=="h" goto h
if "%x%"=="l" goto cl
if "%x%"=="u" goto update
if "%x%"=="f" goto fullscreen

:p
cls
goto ownip
pause


:c
netstat -a
echo [ENTER]
pause >NUL
goto 1

:h
cls
echo Start to Ping: Ping a online Service
echo.
echo Check network activity: Displays all connections and listening ports.
echo.
echo You Can interrupt the ping process by pressing cntrl+C
echo [ENTER]
pause >NUL
cls
goto 1

:cl
cls
echo VERSION 0.3.4:
echo - REMOVED THE PRE SETTED TARGEDS :(
echo.
echo [ENTER]
pause >NUL
cls
goto 1

:update
cls
Update.html
echo CHECKING FOR UPDATES...
echo [ENTER]
pause >NUL	
cls
goto 1

:fullscreen
cls
mode con cols=1000 lines=1000
echo THIS PROGRAMM RUNS IN FULLSCREEN NOW
echo [ENTER]
pause >NUL
cls
goto 1 

:ownip
cls
echo ENTER THE IP YOU WANT TO PING:

set /p i=

echo ENTER THE SIZE OF KB TO PING THE TARGET:

set /p t=

ping %i% -t -l %t%

pause
